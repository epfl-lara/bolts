; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77598 () Bool)

(assert start!77598)

(declare-fun b!860092 () Bool)

(declare-fun b_free!26201 () Bool)

(declare-fun b_next!26265 () Bool)

(assert (=> b!860092 (= b_free!26201 (not b_next!26265))))

(declare-fun tp!271484 () Bool)

(declare-fun b_and!76533 () Bool)

(assert (=> b!860092 (= tp!271484 b_and!76533)))

(declare-fun b_free!26203 () Bool)

(declare-fun b_next!26267 () Bool)

(assert (=> b!860092 (= b_free!26203 (not b_next!26267))))

(declare-fun tp!271486 () Bool)

(declare-fun b_and!76535 () Bool)

(assert (=> b!860092 (= tp!271486 b_and!76535)))

(declare-fun b!860097 () Bool)

(declare-fun b_free!26205 () Bool)

(declare-fun b_next!26269 () Bool)

(assert (=> b!860097 (= b_free!26205 (not b_next!26269))))

(declare-fun tp!271493 () Bool)

(declare-fun b_and!76537 () Bool)

(assert (=> b!860097 (= tp!271493 b_and!76537)))

(declare-fun b_free!26207 () Bool)

(declare-fun b_next!26271 () Bool)

(assert (=> b!860097 (= b_free!26207 (not b_next!26271))))

(declare-fun tp!271491 () Bool)

(declare-fun b_and!76539 () Bool)

(assert (=> b!860097 (= tp!271491 b_and!76539)))

(declare-fun b!860089 () Bool)

(declare-fun b_free!26209 () Bool)

(declare-fun b_next!26273 () Bool)

(assert (=> b!860089 (= b_free!26209 (not b_next!26273))))

(declare-fun tp!271488 () Bool)

(declare-fun b_and!76541 () Bool)

(assert (=> b!860089 (= tp!271488 b_and!76541)))

(declare-fun b_free!26211 () Bool)

(declare-fun b_next!26275 () Bool)

(assert (=> b!860089 (= b_free!26211 (not b_next!26275))))

(declare-fun tp!271483 () Bool)

(declare-fun b_and!76543 () Bool)

(assert (=> b!860089 (= tp!271483 b_and!76543)))

(declare-fun b!860087 () Bool)

(declare-fun e!566176 () Bool)

(declare-fun e!566182 () Bool)

(declare-fun tp!271494 () Bool)

(assert (=> b!860087 (= e!566176 (and e!566182 tp!271494))))

(declare-fun b!860088 () Bool)

(declare-fun res!392372 () Bool)

(declare-fun e!566181 () Bool)

(assert (=> b!860088 (=> (not res!392372) (not e!566181))))

(declare-datatypes ((LexerInterface!1544 0))(
  ( (LexerInterfaceExt!1541 (__x!7347 Int)) (Lexer!1542) )
))
(declare-fun thiss!20117 () LexerInterface!1544)

(declare-datatypes ((List!9304 0))(
  ( (Nil!9288) (Cons!9288 (h!14689 (_ BitVec 16)) (t!97524 List!9304)) )
))
(declare-datatypes ((TokenValue!1808 0))(
  ( (FloatLiteralValue!3616 (text!13101 List!9304)) (TokenValueExt!1807 (__x!7348 Int)) (Broken!9040 (value!56320 List!9304)) (Object!1823) (End!1808) (Def!1808) (Underscore!1808) (Match!1808) (Else!1808) (Error!1808) (Case!1808) (If!1808) (Extends!1808) (Abstract!1808) (Class!1808) (Val!1808) (DelimiterValue!3616 (del!1868 List!9304)) (KeywordValue!1814 (value!56321 List!9304)) (CommentValue!3616 (value!56322 List!9304)) (WhitespaceValue!3616 (value!56323 List!9304)) (IndentationValue!1808 (value!56324 List!9304)) (String!10937) (Int32!1808) (Broken!9041 (value!56325 List!9304)) (Boolean!1809) (Unit!13822) (OperatorValue!1811 (op!1868 List!9304)) (IdentifierValue!3616 (value!56326 List!9304)) (IdentifierValue!3617 (value!56327 List!9304)) (WhitespaceValue!3617 (value!56328 List!9304)) (True!3616) (False!3616) (Broken!9042 (value!56329 List!9304)) (Broken!9043 (value!56330 List!9304)) (True!3617) (RightBrace!1808) (RightBracket!1808) (Colon!1808) (Null!1808) (Comma!1808) (LeftBracket!1808) (False!3617) (LeftBrace!1808) (ImaginaryLiteralValue!1808 (text!13102 List!9304)) (StringLiteralValue!5424 (value!56331 List!9304)) (EOFValue!1808 (value!56332 List!9304)) (IdentValue!1808 (value!56333 List!9304)) (DelimiterValue!3617 (value!56334 List!9304)) (DedentValue!1808 (value!56335 List!9304)) (NewLineValue!1808 (value!56336 List!9304)) (IntegerValue!5424 (value!56337 (_ BitVec 32)) (text!13103 List!9304)) (IntegerValue!5425 (value!56338 Int) (text!13104 List!9304)) (Times!1808) (Or!1808) (Equal!1808) (Minus!1808) (Broken!9044 (value!56339 List!9304)) (And!1808) (Div!1808) (LessEqual!1808) (Mod!1808) (Concat!3983) (Not!1808) (Plus!1808) (SpaceValue!1808 (value!56340 List!9304)) (IntegerValue!5426 (value!56341 Int) (text!13105 List!9304)) (StringLiteralValue!5425 (text!13106 List!9304)) (FloatLiteralValue!3617 (text!13107 List!9304)) (BytesLiteralValue!1808 (value!56342 List!9304)) (CommentValue!3617 (value!56343 List!9304)) (StringLiteralValue!5426 (value!56344 List!9304)) (ErrorTokenValue!1808 (msg!1869 List!9304)) )
))
(declare-datatypes ((C!4920 0))(
  ( (C!4921 (val!2708 Int)) )
))
(declare-datatypes ((Regex!2175 0))(
  ( (ElementMatch!2175 (c!139247 C!4920)) (Concat!3984 (regOne!4862 Regex!2175) (regTwo!4862 Regex!2175)) (EmptyExpr!2175) (Star!2175 (reg!2504 Regex!2175)) (EmptyLang!2175) (Union!2175 (regOne!4863 Regex!2175) (regTwo!4863 Regex!2175)) )
))
(declare-datatypes ((String!10938 0))(
  ( (String!10939 (value!56345 String)) )
))
(declare-datatypes ((List!9305 0))(
  ( (Nil!9289) (Cons!9289 (h!14690 C!4920) (t!97525 List!9305)) )
))
(declare-datatypes ((IArray!6163 0))(
  ( (IArray!6164 (innerList!3139 List!9305)) )
))
(declare-datatypes ((Conc!3079 0))(
  ( (Node!3079 (left!6875 Conc!3079) (right!7205 Conc!3079) (csize!6388 Int) (cheight!3290 Int)) (Leaf!4538 (xs!5768 IArray!6163) (csize!6389 Int)) (Empty!3079) )
))
(declare-datatypes ((BalanceConc!6172 0))(
  ( (BalanceConc!6173 (c!139248 Conc!3079)) )
))
(declare-datatypes ((TokenValueInjection!3316 0))(
  ( (TokenValueInjection!3317 (toValue!2807 Int) (toChars!2666 Int)) )
))
(declare-datatypes ((Rule!3284 0))(
  ( (Rule!3285 (regex!1742 Regex!2175) (tag!2004 String!10938) (isSeparator!1742 Bool) (transformation!1742 TokenValueInjection!3316)) )
))
(declare-datatypes ((List!9306 0))(
  ( (Nil!9290) (Cons!9290 (h!14691 Rule!3284) (t!97526 List!9306)) )
))
(declare-fun rules!2621 () List!9306)

(declare-fun rulesInvariant!1420 (LexerInterface!1544 List!9306) Bool)

(assert (=> b!860088 (= res!392372 (rulesInvariant!1420 thiss!20117 rules!2621))))

(declare-fun e!566175 () Bool)

(assert (=> b!860089 (= e!566175 (and tp!271488 tp!271483))))

(declare-fun tp!271492 () Bool)

(declare-datatypes ((Token!3150 0))(
  ( (Token!3151 (value!56346 TokenValue!1808) (rule!3165 Rule!3284) (size!7757 Int) (originalCharacters!2298 List!9305)) )
))
(declare-fun separatorToken!297 () Token!3150)

(declare-fun e!566189 () Bool)

(declare-fun b!860090 () Bool)

(declare-fun e!566187 () Bool)

(declare-fun inv!11812 (String!10938) Bool)

(declare-fun inv!11815 (TokenValueInjection!3316) Bool)

(assert (=> b!860090 (= e!566189 (and tp!271492 (inv!11812 (tag!2004 (rule!3165 separatorToken!297))) (inv!11815 (transformation!1742 (rule!3165 separatorToken!297))) e!566187))))

(declare-fun b!860091 () Bool)

(declare-fun e!566190 () Bool)

(assert (=> b!860091 (= e!566181 (not e!566190))))

(declare-fun res!392370 () Bool)

(assert (=> b!860091 (=> res!392370 e!566190)))

(declare-datatypes ((List!9307 0))(
  ( (Nil!9291) (Cons!9291 (h!14692 Token!3150) (t!97527 List!9307)) )
))
(declare-fun lt!325150 () List!9307)

(get-info :version)

(assert (=> b!860091 (= res!392370 (or (not ((_ is Cons!9291) lt!325150)) (not ((_ is Cons!9291) (t!97527 lt!325150)))))))

(declare-fun rulesProduceEachTokenIndividuallyList!432 (LexerInterface!1544 List!9306 List!9307) Bool)

(assert (=> b!860091 (rulesProduceEachTokenIndividuallyList!432 thiss!20117 rules!2621 lt!325150)))

(declare-fun l!5107 () List!9307)

(declare-fun withSeparatorTokenList!72 (LexerInterface!1544 List!9307 Token!3150) List!9307)

(assert (=> b!860091 (= lt!325150 (withSeparatorTokenList!72 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13823 0))(
  ( (Unit!13824) )
))
(declare-fun lt!325149 () Unit!13823)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!72 (LexerInterface!1544 List!9306 List!9307 Token!3150) Unit!13823)

(assert (=> b!860091 (= lt!325149 (withSeparatorTokenListPreservesRulesProduceTokens!72 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun e!566179 () Bool)

(assert (=> b!860092 (= e!566179 (and tp!271484 tp!271486))))

(declare-fun b!860093 () Bool)

(declare-fun res!392375 () Bool)

(assert (=> b!860093 (=> (not res!392375) (not e!566181))))

(declare-fun sepAndNonSepRulesDisjointChars!542 (List!9306 List!9306) Bool)

(assert (=> b!860093 (= res!392375 (sepAndNonSepRulesDisjointChars!542 rules!2621 rules!2621))))

(declare-fun b!860094 () Bool)

(declare-fun e!566183 () Bool)

(declare-fun e!566185 () Bool)

(declare-fun tp!271487 () Bool)

(declare-fun inv!11816 (Token!3150) Bool)

(assert (=> b!860094 (= e!566185 (and (inv!11816 (h!14692 l!5107)) e!566183 tp!271487))))

(declare-fun b!860095 () Bool)

(declare-fun tp!271485 () Bool)

(assert (=> b!860095 (= e!566182 (and tp!271485 (inv!11812 (tag!2004 (h!14691 rules!2621))) (inv!11815 (transformation!1742 (h!14691 rules!2621))) e!566175))))

(declare-fun b!860096 () Bool)

(declare-fun res!392373 () Bool)

(assert (=> b!860096 (=> (not res!392373) (not e!566181))))

(declare-fun rulesProduceIndividualToken!608 (LexerInterface!1544 List!9306 Token!3150) Bool)

(assert (=> b!860096 (= res!392373 (rulesProduceIndividualToken!608 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!860098 () Bool)

(declare-fun res!392376 () Bool)

(assert (=> b!860098 (=> (not res!392376) (not e!566181))))

(assert (=> b!860098 (= res!392376 (rulesProduceEachTokenIndividuallyList!432 thiss!20117 rules!2621 l!5107))))

(declare-fun b!860099 () Bool)

(assert (=> b!860099 (= e!566190 true)))

(declare-fun lt!325151 () List!9307)

(declare-fun tail!1050 (List!9307) List!9307)

(assert (=> b!860099 (= lt!325151 (withSeparatorTokenList!72 thiss!20117 (tail!1050 l!5107) separatorToken!297))))

(declare-fun tp!271489 () Bool)

(declare-fun b!860100 () Bool)

(declare-fun e!566177 () Bool)

(declare-fun inv!21 (TokenValue!1808) Bool)

(assert (=> b!860100 (= e!566177 (and (inv!21 (value!56346 separatorToken!297)) e!566189 tp!271489))))

(declare-fun b!860101 () Bool)

(declare-fun res!392371 () Bool)

(assert (=> b!860101 (=> (not res!392371) (not e!566181))))

(declare-fun lambda!25836 () Int)

(declare-fun forall!2205 (List!9307 Int) Bool)

(assert (=> b!860101 (= res!392371 (forall!2205 l!5107 lambda!25836))))

(declare-fun e!566191 () Bool)

(declare-fun tp!271490 () Bool)

(declare-fun b!860102 () Bool)

(assert (=> b!860102 (= e!566183 (and (inv!21 (value!56346 (h!14692 l!5107))) e!566191 tp!271490))))

(declare-fun b!860103 () Bool)

(declare-fun res!392378 () Bool)

(assert (=> b!860103 (=> (not res!392378) (not e!566181))))

(assert (=> b!860103 (= res!392378 (isSeparator!1742 (rule!3165 separatorToken!297)))))

(declare-fun res!392374 () Bool)

(assert (=> start!77598 (=> (not res!392374) (not e!566181))))

(assert (=> start!77598 (= res!392374 ((_ is Lexer!1542) thiss!20117))))

(assert (=> start!77598 e!566181))

(assert (=> start!77598 true))

(assert (=> start!77598 e!566176))

(assert (=> start!77598 e!566185))

(assert (=> start!77598 (and (inv!11816 separatorToken!297) e!566177)))

(assert (=> b!860097 (= e!566187 (and tp!271493 tp!271491))))

(declare-fun tp!271482 () Bool)

(declare-fun b!860104 () Bool)

(assert (=> b!860104 (= e!566191 (and tp!271482 (inv!11812 (tag!2004 (rule!3165 (h!14692 l!5107)))) (inv!11815 (transformation!1742 (rule!3165 (h!14692 l!5107)))) e!566179))))

(declare-fun b!860105 () Bool)

(declare-fun res!392377 () Bool)

(assert (=> b!860105 (=> (not res!392377) (not e!566181))))

(declare-fun isEmpty!5515 (List!9306) Bool)

(assert (=> b!860105 (= res!392377 (not (isEmpty!5515 rules!2621)))))

(assert (= (and start!77598 res!392374) b!860105))

(assert (= (and b!860105 res!392377) b!860088))

(assert (= (and b!860088 res!392372) b!860098))

(assert (= (and b!860098 res!392376) b!860096))

(assert (= (and b!860096 res!392373) b!860103))

(assert (= (and b!860103 res!392378) b!860101))

(assert (= (and b!860101 res!392371) b!860093))

(assert (= (and b!860093 res!392375) b!860091))

(assert (= (and b!860091 (not res!392370)) b!860099))

(assert (= b!860095 b!860089))

(assert (= b!860087 b!860095))

(assert (= (and start!77598 ((_ is Cons!9290) rules!2621)) b!860087))

(assert (= b!860104 b!860092))

(assert (= b!860102 b!860104))

(assert (= b!860094 b!860102))

(assert (= (and start!77598 ((_ is Cons!9291) l!5107)) b!860094))

(assert (= b!860090 b!860097))

(assert (= b!860100 b!860090))

(assert (= start!77598 b!860100))

(declare-fun m!1103763 () Bool)

(assert (=> b!860093 m!1103763))

(declare-fun m!1103765 () Bool)

(assert (=> b!860091 m!1103765))

(declare-fun m!1103767 () Bool)

(assert (=> b!860091 m!1103767))

(declare-fun m!1103769 () Bool)

(assert (=> b!860091 m!1103769))

(declare-fun m!1103771 () Bool)

(assert (=> b!860095 m!1103771))

(declare-fun m!1103773 () Bool)

(assert (=> b!860095 m!1103773))

(declare-fun m!1103775 () Bool)

(assert (=> b!860101 m!1103775))

(declare-fun m!1103777 () Bool)

(assert (=> b!860090 m!1103777))

(declare-fun m!1103779 () Bool)

(assert (=> b!860090 m!1103779))

(declare-fun m!1103781 () Bool)

(assert (=> b!860099 m!1103781))

(assert (=> b!860099 m!1103781))

(declare-fun m!1103783 () Bool)

(assert (=> b!860099 m!1103783))

(declare-fun m!1103785 () Bool)

(assert (=> b!860088 m!1103785))

(declare-fun m!1103787 () Bool)

(assert (=> b!860096 m!1103787))

(declare-fun m!1103789 () Bool)

(assert (=> b!860105 m!1103789))

(declare-fun m!1103791 () Bool)

(assert (=> b!860102 m!1103791))

(declare-fun m!1103793 () Bool)

(assert (=> b!860104 m!1103793))

(declare-fun m!1103795 () Bool)

(assert (=> b!860104 m!1103795))

(declare-fun m!1103797 () Bool)

(assert (=> b!860100 m!1103797))

(declare-fun m!1103799 () Bool)

(assert (=> b!860098 m!1103799))

(declare-fun m!1103801 () Bool)

(assert (=> b!860094 m!1103801))

(declare-fun m!1103803 () Bool)

(assert (=> start!77598 m!1103803))

(check-sat (not b!860102) (not b_next!26271) (not b!860105) (not b!860098) b_and!76543 (not b!860101) b_and!76535 (not b_next!26265) (not b!860088) (not b!860087) (not b!860100) (not b_next!26275) b_and!76539 (not b_next!26273) (not b!860094) (not b!860090) (not b_next!26267) (not b!860091) (not b!860104) (not b!860096) b_and!76533 (not b!860093) b_and!76541 (not start!77598) (not b!860095) (not b!860099) b_and!76537 (not b_next!26269))
(check-sat (not b_next!26271) b_and!76543 b_and!76535 (not b_next!26265) (not b_next!26273) (not b_next!26267) b_and!76533 b_and!76541 (not b_next!26275) b_and!76539 b_and!76537 (not b_next!26269))
