; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!15460 () Bool)

(assert start!15460)

(declare-fun b!146020 () Bool)

(declare-fun b_free!5141 () Bool)

(declare-fun b_next!5141 () Bool)

(assert (=> b!146020 (= b_free!5141 (not b_next!5141))))

(declare-fun tp!76922 () Bool)

(declare-fun b_and!7949 () Bool)

(assert (=> b!146020 (= tp!76922 b_and!7949)))

(declare-fun b_free!5143 () Bool)

(declare-fun b_next!5143 () Bool)

(assert (=> b!146020 (= b_free!5143 (not b_next!5143))))

(declare-fun tp!76921 () Bool)

(declare-fun b_and!7951 () Bool)

(assert (=> b!146020 (= tp!76921 b_and!7951)))

(declare-fun b!146013 () Bool)

(declare-fun b_free!5145 () Bool)

(declare-fun b_next!5145 () Bool)

(assert (=> b!146013 (= b_free!5145 (not b_next!5145))))

(declare-fun tp!76919 () Bool)

(declare-fun b_and!7953 () Bool)

(assert (=> b!146013 (= tp!76919 b_and!7953)))

(declare-fun b_free!5147 () Bool)

(declare-fun b_next!5147 () Bool)

(assert (=> b!146013 (= b_free!5147 (not b_next!5147))))

(declare-fun tp!76917 () Bool)

(declare-fun b_and!7955 () Bool)

(assert (=> b!146013 (= tp!76917 b_and!7955)))

(declare-fun b!146012 () Bool)

(declare-fun b_free!5149 () Bool)

(declare-fun b_next!5149 () Bool)

(assert (=> b!146012 (= b_free!5149 (not b_next!5149))))

(declare-fun tp!76923 () Bool)

(declare-fun b_and!7957 () Bool)

(assert (=> b!146012 (= tp!76923 b_and!7957)))

(declare-fun b_free!5151 () Bool)

(declare-fun b_next!5151 () Bool)

(assert (=> b!146012 (= b_free!5151 (not b_next!5151))))

(declare-fun tp!76925 () Bool)

(declare-fun b_and!7959 () Bool)

(assert (=> b!146012 (= tp!76925 b_and!7959)))

(declare-fun b!146005 () Bool)

(declare-fun e!86714 () Bool)

(declare-datatypes ((List!2539 0))(
  ( (Nil!2529) (Cons!2529 (h!7926 (_ BitVec 16)) (t!24147 List!2539)) )
))
(declare-datatypes ((TokenValue!456 0))(
  ( (FloatLiteralValue!912 (text!3637 List!2539)) (TokenValueExt!455 (__x!2399 Int)) (Broken!2280 (value!16660 List!2539)) (Object!465) (End!456) (Def!456) (Underscore!456) (Match!456) (Else!456) (Error!456) (Case!456) (If!456) (Extends!456) (Abstract!456) (Class!456) (Val!456) (DelimiterValue!912 (del!516 List!2539)) (KeywordValue!462 (value!16661 List!2539)) (CommentValue!912 (value!16662 List!2539)) (WhitespaceValue!912 (value!16663 List!2539)) (IndentationValue!456 (value!16664 List!2539)) (String!3361) (Int32!456) (Broken!2281 (value!16665 List!2539)) (Boolean!457) (Unit!1876) (OperatorValue!459 (op!516 List!2539)) (IdentifierValue!912 (value!16666 List!2539)) (IdentifierValue!913 (value!16667 List!2539)) (WhitespaceValue!913 (value!16668 List!2539)) (True!912) (False!912) (Broken!2282 (value!16669 List!2539)) (Broken!2283 (value!16670 List!2539)) (True!913) (RightBrace!456) (RightBracket!456) (Colon!456) (Null!456) (Comma!456) (LeftBracket!456) (False!913) (LeftBrace!456) (ImaginaryLiteralValue!456 (text!3638 List!2539)) (StringLiteralValue!1368 (value!16671 List!2539)) (EOFValue!456 (value!16672 List!2539)) (IdentValue!456 (value!16673 List!2539)) (DelimiterValue!913 (value!16674 List!2539)) (DedentValue!456 (value!16675 List!2539)) (NewLineValue!456 (value!16676 List!2539)) (IntegerValue!1368 (value!16677 (_ BitVec 32)) (text!3639 List!2539)) (IntegerValue!1369 (value!16678 Int) (text!3640 List!2539)) (Times!456) (Or!456) (Equal!456) (Minus!456) (Broken!2284 (value!16679 List!2539)) (And!456) (Div!456) (LessEqual!456) (Mod!456) (Concat!1114) (Not!456) (Plus!456) (SpaceValue!456 (value!16680 List!2539)) (IntegerValue!1370 (value!16681 Int) (text!3641 List!2539)) (StringLiteralValue!1369 (text!3642 List!2539)) (FloatLiteralValue!913 (text!3643 List!2539)) (BytesLiteralValue!456 (value!16682 List!2539)) (CommentValue!913 (value!16683 List!2539)) (StringLiteralValue!1370 (value!16684 List!2539)) (ErrorTokenValue!456 (msg!517 List!2539)) )
))
(declare-datatypes ((C!2238 0))(
  ( (C!2239 (val!1005 Int)) )
))
(declare-datatypes ((List!2540 0))(
  ( (Nil!2530) (Cons!2530 (h!7927 C!2238) (t!24148 List!2540)) )
))
(declare-datatypes ((IArray!1381 0))(
  ( (IArray!1382 (innerList!748 List!2540)) )
))
(declare-datatypes ((Conc!690 0))(
  ( (Node!690 (left!1910 Conc!690) (right!2240 Conc!690) (csize!1610 Int) (cheight!901 Int)) (Leaf!1247 (xs!3285 IArray!1381) (csize!1611 Int)) (Empty!690) )
))
(declare-datatypes ((BalanceConc!1388 0))(
  ( (BalanceConc!1389 (c!29809 Conc!690)) )
))
(declare-datatypes ((Regex!658 0))(
  ( (ElementMatch!658 (c!29810 C!2238)) (Concat!1115 (regOne!1828 Regex!658) (regTwo!1828 Regex!658)) (EmptyExpr!658) (Star!658 (reg!987 Regex!658)) (EmptyLang!658) (Union!658 (regOne!1829 Regex!658) (regTwo!1829 Regex!658)) )
))
(declare-datatypes ((String!3362 0))(
  ( (String!3363 (value!16685 String)) )
))
(declare-datatypes ((TokenValueInjection!684 0))(
  ( (TokenValueInjection!685 (toValue!1061 Int) (toChars!920 Int)) )
))
(declare-datatypes ((Rule!668 0))(
  ( (Rule!669 (regex!434 Regex!658) (tag!612 String!3362) (isSeparator!434 Bool) (transformation!434 TokenValueInjection!684)) )
))
(declare-datatypes ((Token!612 0))(
  ( (Token!613 (value!16686 TokenValue!456) (rule!941 Rule!668) (size!2180 Int) (originalCharacters!477 List!2540)) )
))
(declare-datatypes ((List!2541 0))(
  ( (Nil!2531) (Cons!2531 (h!7928 Token!612) (t!24149 List!2541)) )
))
(declare-datatypes ((IArray!1383 0))(
  ( (IArray!1384 (innerList!749 List!2541)) )
))
(declare-datatypes ((Conc!691 0))(
  ( (Node!691 (left!1911 Conc!691) (right!2241 Conc!691) (csize!1612 Int) (cheight!902 Int)) (Leaf!1248 (xs!3286 IArray!1383) (csize!1613 Int)) (Empty!691) )
))
(declare-datatypes ((BalanceConc!1390 0))(
  ( (BalanceConc!1391 (c!29811 Conc!691)) )
))
(declare-fun lt!42145 () BalanceConc!1390)

(declare-fun size!2181 (BalanceConc!1390) Int)

(assert (=> b!146005 (= e!86714 (> 0 (size!2181 lt!42145)))))

(declare-fun b!146006 () Bool)

(declare-fun res!67289 () Bool)

(assert (=> b!146006 (=> (not res!67289) (not e!86714))))

(declare-fun separatorToken!170 () Token!612)

(assert (=> b!146006 (= res!67289 (isSeparator!434 (rule!941 separatorToken!170)))))

(declare-fun b!146007 () Bool)

(declare-fun tokens!465 () List!2541)

(declare-fun e!86710 () Bool)

(declare-fun tp!76927 () Bool)

(declare-fun e!86716 () Bool)

(declare-fun inv!3312 (String!3362) Bool)

(declare-fun inv!3315 (TokenValueInjection!684) Bool)

(assert (=> b!146007 (= e!86716 (and tp!76927 (inv!3312 (tag!612 (rule!941 (h!7928 tokens!465)))) (inv!3315 (transformation!434 (rule!941 (h!7928 tokens!465)))) e!86710))))

(declare-fun b!146008 () Bool)

(declare-fun res!67287 () Bool)

(assert (=> b!146008 (=> (not res!67287) (not e!86714))))

(declare-datatypes ((List!2542 0))(
  ( (Nil!2532) (Cons!2532 (h!7929 Rule!668) (t!24150 List!2542)) )
))
(declare-fun rules!1920 () List!2542)

(declare-datatypes ((LexerInterface!320 0))(
  ( (LexerInterfaceExt!317 (__x!2400 Int)) (Lexer!318) )
))
(declare-fun thiss!17480 () LexerInterface!320)

(declare-fun printWithSeparatorTokenWhenNeededList!13 (LexerInterface!320 List!2542 List!2541 Token!612) List!2540)

(declare-fun list!872 (BalanceConc!1388) List!2540)

(declare-fun printWithSeparatorTokenWhenNeededRec!3 (LexerInterface!320 List!2542 BalanceConc!1390 Token!612 Int) BalanceConc!1388)

(assert (=> b!146008 (= res!67287 (= (printWithSeparatorTokenWhenNeededList!13 thiss!17480 rules!1920 tokens!465 separatorToken!170) (list!872 (printWithSeparatorTokenWhenNeededRec!3 thiss!17480 rules!1920 lt!42145 separatorToken!170 0))))))

(declare-fun b!146009 () Bool)

(declare-fun e!86723 () Bool)

(declare-fun tp!76920 () Bool)

(declare-fun inv!21 (TokenValue!456) Bool)

(assert (=> b!146009 (= e!86723 (and (inv!21 (value!16686 (h!7928 tokens!465))) e!86716 tp!76920))))

(declare-fun tp!76924 () Bool)

(declare-fun b!146010 () Bool)

(declare-fun e!86711 () Bool)

(declare-fun e!86724 () Bool)

(assert (=> b!146010 (= e!86711 (and (inv!21 (value!16686 separatorToken!170)) e!86724 tp!76924))))

(declare-fun e!86720 () Bool)

(declare-fun b!146011 () Bool)

(declare-fun tp!76928 () Bool)

(declare-fun inv!3316 (Token!612) Bool)

(assert (=> b!146011 (= e!86720 (and (inv!3316 (h!7928 tokens!465)) e!86723 tp!76928))))

(assert (=> b!146012 (= e!86710 (and tp!76923 tp!76925))))

(declare-fun e!86718 () Bool)

(assert (=> b!146013 (= e!86718 (and tp!76919 tp!76917))))

(declare-fun b!146014 () Bool)

(declare-fun tp!76916 () Bool)

(assert (=> b!146014 (= e!86724 (and tp!76916 (inv!3312 (tag!612 (rule!941 separatorToken!170))) (inv!3315 (transformation!434 (rule!941 separatorToken!170))) e!86718))))

(declare-fun b!146015 () Bool)

(declare-fun res!67283 () Bool)

(assert (=> b!146015 (=> (not res!67283) (not e!86714))))

(assert (=> b!146015 (= res!67283 (is-Cons!2531 tokens!465))))

(declare-fun b!146016 () Bool)

(declare-fun res!67286 () Bool)

(assert (=> b!146016 (=> (not res!67286) (not e!86714))))

(declare-fun rulesProduceIndividualToken!69 (LexerInterface!320 List!2542 Token!612) Bool)

(assert (=> b!146016 (= res!67286 (rulesProduceIndividualToken!69 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun res!67288 () Bool)

(declare-fun e!86722 () Bool)

(assert (=> start!15460 (=> (not res!67288) (not e!86722))))

(assert (=> start!15460 (= res!67288 (is-Lexer!318 thiss!17480))))

(assert (=> start!15460 e!86722))

(assert (=> start!15460 true))

(declare-fun e!86708 () Bool)

(assert (=> start!15460 e!86708))

(assert (=> start!15460 (and (inv!3316 separatorToken!170) e!86711)))

(assert (=> start!15460 e!86720))

(declare-fun b!146017 () Bool)

(declare-fun res!67284 () Bool)

(assert (=> b!146017 (=> (not res!67284) (not e!86722))))

(declare-fun isEmpty!983 (List!2542) Bool)

(assert (=> b!146017 (= res!67284 (not (isEmpty!983 rules!1920)))))

(declare-fun b!146018 () Bool)

(declare-fun res!67290 () Bool)

(assert (=> b!146018 (=> (not res!67290) (not e!86714))))

(declare-fun lambda!3585 () Int)

(declare-fun forall!402 (List!2541 Int) Bool)

(assert (=> b!146018 (= res!67290 (forall!402 tokens!465 lambda!3585))))

(declare-fun b!146019 () Bool)

(assert (=> b!146019 (= e!86722 e!86714)))

(declare-fun res!67285 () Bool)

(assert (=> b!146019 (=> (not res!67285) (not e!86714))))

(declare-fun rulesProduceEachTokenIndividually!112 (LexerInterface!320 List!2542 BalanceConc!1390) Bool)

(assert (=> b!146019 (= res!67285 (rulesProduceEachTokenIndividually!112 thiss!17480 rules!1920 lt!42145))))

(declare-fun seqFromList!251 (List!2541) BalanceConc!1390)

(assert (=> b!146019 (= lt!42145 (seqFromList!251 tokens!465))))

(declare-fun e!86713 () Bool)

(assert (=> b!146020 (= e!86713 (and tp!76922 tp!76921))))

(declare-fun b!146021 () Bool)

(declare-fun e!86721 () Bool)

(declare-fun tp!76918 () Bool)

(assert (=> b!146021 (= e!86708 (and e!86721 tp!76918))))

(declare-fun b!146022 () Bool)

(declare-fun res!67291 () Bool)

(assert (=> b!146022 (=> (not res!67291) (not e!86722))))

(declare-fun rulesInvariant!286 (LexerInterface!320 List!2542) Bool)

(assert (=> b!146022 (= res!67291 (rulesInvariant!286 thiss!17480 rules!1920))))

(declare-fun b!146023 () Bool)

(declare-fun res!67292 () Bool)

(assert (=> b!146023 (=> (not res!67292) (not e!86714))))

(declare-fun sepAndNonSepRulesDisjointChars!23 (List!2542 List!2542) Bool)

(assert (=> b!146023 (= res!67292 (sepAndNonSepRulesDisjointChars!23 rules!1920 rules!1920))))

(declare-fun b!146024 () Bool)

(declare-fun tp!76926 () Bool)

(assert (=> b!146024 (= e!86721 (and tp!76926 (inv!3312 (tag!612 (h!7929 rules!1920))) (inv!3315 (transformation!434 (h!7929 rules!1920))) e!86713))))

(assert (= (and start!15460 res!67288) b!146017))

(assert (= (and b!146017 res!67284) b!146022))

(assert (= (and b!146022 res!67291) b!146019))

(assert (= (and b!146019 res!67285) b!146016))

(assert (= (and b!146016 res!67286) b!146006))

(assert (= (and b!146006 res!67289) b!146018))

(assert (= (and b!146018 res!67290) b!146023))

(assert (= (and b!146023 res!67292) b!146015))

(assert (= (and b!146015 res!67283) b!146008))

(assert (= (and b!146008 res!67287) b!146005))

(assert (= b!146024 b!146020))

(assert (= b!146021 b!146024))

(assert (= (and start!15460 (is-Cons!2532 rules!1920)) b!146021))

(assert (= b!146014 b!146013))

(assert (= b!146010 b!146014))

(assert (= start!15460 b!146010))

(assert (= b!146007 b!146012))

(assert (= b!146009 b!146007))

(assert (= b!146011 b!146009))

(assert (= (and start!15460 (is-Cons!2531 tokens!465)) b!146011))

(declare-fun m!128763 () Bool)

(assert (=> b!146022 m!128763))

(declare-fun m!128765 () Bool)

(assert (=> b!146016 m!128765))

(declare-fun m!128767 () Bool)

(assert (=> b!146010 m!128767))

(declare-fun m!128769 () Bool)

(assert (=> b!146009 m!128769))

(declare-fun m!128771 () Bool)

(assert (=> b!146007 m!128771))

(declare-fun m!128773 () Bool)

(assert (=> b!146007 m!128773))

(declare-fun m!128775 () Bool)

(assert (=> b!146011 m!128775))

(declare-fun m!128777 () Bool)

(assert (=> b!146023 m!128777))

(declare-fun m!128779 () Bool)

(assert (=> b!146014 m!128779))

(declare-fun m!128781 () Bool)

(assert (=> b!146014 m!128781))

(declare-fun m!128783 () Bool)

(assert (=> b!146017 m!128783))

(declare-fun m!128785 () Bool)

(assert (=> b!146005 m!128785))

(declare-fun m!128787 () Bool)

(assert (=> b!146019 m!128787))

(declare-fun m!128789 () Bool)

(assert (=> b!146019 m!128789))

(declare-fun m!128791 () Bool)

(assert (=> start!15460 m!128791))

(declare-fun m!128793 () Bool)

(assert (=> b!146008 m!128793))

(declare-fun m!128795 () Bool)

(assert (=> b!146008 m!128795))

(assert (=> b!146008 m!128795))

(declare-fun m!128797 () Bool)

(assert (=> b!146008 m!128797))

(declare-fun m!128799 () Bool)

(assert (=> b!146024 m!128799))

(declare-fun m!128801 () Bool)

(assert (=> b!146024 m!128801))

(declare-fun m!128803 () Bool)

(assert (=> b!146018 m!128803))

(push 1)

(assert b_and!7953)

(assert (not b!146010))

(assert b_and!7957)

(assert (not b_next!5145))

(assert (not b_next!5151))

(assert (not b!146023))

(assert b_and!7949)

(assert (not b!146021))

(assert (not b!146016))

(assert (not b_next!5147))

(assert (not b!146011))

(assert (not b_next!5143))

(assert (not b!146005))

(assert (not b!146017))

(assert (not b!146007))

(assert (not b!146024))

(assert (not b!146018))

(assert (not start!15460))

(assert (not b_next!5141))

(assert (not b!146009))

(assert (not b!146008))

(assert (not b!146014))

(assert (not b_next!5149))

(assert (not b!146022))

(assert b_and!7951)

(assert b_and!7959)

(assert (not b!146019))

(assert b_and!7955)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7953)

(assert b_and!7957)

(assert (not b_next!5147))

(assert (not b_next!5143))

(assert (not b_next!5145))

(assert (not b_next!5151))

(assert (not b_next!5141))

(assert b_and!7949)

(assert b_and!7955)

(assert (not b_next!5149))

(assert b_and!7951)

(assert b_and!7959)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!13212 () Bool)

(declare-fun d!34821 () Bool)

(assert (= bs!13212 (and d!34821 b!146018)))

(declare-fun lambda!3593 () Int)

(assert (=> bs!13212 (not (= lambda!3593 lambda!3585))))

(declare-fun b!146120 () Bool)

(declare-fun e!86801 () Bool)

(assert (=> b!146120 (= e!86801 true)))

(declare-fun b!146119 () Bool)

(declare-fun e!86800 () Bool)

(assert (=> b!146119 (= e!86800 e!86801)))

(declare-fun b!146118 () Bool)

(declare-fun e!86799 () Bool)

(assert (=> b!146118 (= e!86799 e!86800)))

(assert (=> d!34821 e!86799))

(assert (= b!146119 b!146120))

(assert (= b!146118 b!146119))

(assert (= (and d!34821 (is-Cons!2532 rules!1920)) b!146118))

(declare-fun order!1233 () Int)

(declare-fun order!1231 () Int)

(declare-fun dynLambda!858 (Int Int) Int)

(declare-fun dynLambda!859 (Int Int) Int)

(assert (=> b!146120 (< (dynLambda!858 order!1231 (toValue!1061 (transformation!434 (h!7929 rules!1920)))) (dynLambda!859 order!1233 lambda!3593))))

(declare-fun order!1235 () Int)

(declare-fun dynLambda!860 (Int Int) Int)

(assert (=> b!146120 (< (dynLambda!860 order!1235 (toChars!920 (transformation!434 (h!7929 rules!1920)))) (dynLambda!859 order!1233 lambda!3593))))

(assert (=> d!34821 true))

(declare-fun e!86792 () Bool)

(assert (=> d!34821 e!86792))

(declare-fun res!67345 () Bool)

(assert (=> d!34821 (=> (not res!67345) (not e!86792))))

(declare-fun lt!42156 () Bool)

(declare-fun list!874 (BalanceConc!1390) List!2541)

(assert (=> d!34821 (= res!67345 (= lt!42156 (forall!402 (list!874 lt!42145) lambda!3593)))))

(declare-fun forall!404 (BalanceConc!1390 Int) Bool)

(assert (=> d!34821 (= lt!42156 (forall!404 lt!42145 lambda!3593))))

(assert (=> d!34821 (not (isEmpty!983 rules!1920))))

(assert (=> d!34821 (= (rulesProduceEachTokenIndividually!112 thiss!17480 rules!1920 lt!42145) lt!42156)))

(declare-fun b!146109 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!68 (LexerInterface!320 List!2542 List!2541) Bool)

(assert (=> b!146109 (= e!86792 (= lt!42156 (rulesProduceEachTokenIndividuallyList!68 thiss!17480 rules!1920 (list!874 lt!42145))))))

(assert (= (and d!34821 res!67345) b!146109))

(declare-fun m!128885 () Bool)

(assert (=> d!34821 m!128885))

(assert (=> d!34821 m!128885))

(declare-fun m!128887 () Bool)

(assert (=> d!34821 m!128887))

(declare-fun m!128889 () Bool)

(assert (=> d!34821 m!128889))

(assert (=> d!34821 m!128783))

(assert (=> b!146109 m!128885))

(assert (=> b!146109 m!128885))

(declare-fun m!128891 () Bool)

(assert (=> b!146109 m!128891))

(assert (=> b!146019 d!34821))

(declare-fun d!34839 () Bool)

(declare-fun fromListB!106 (List!2541) BalanceConc!1390)

(assert (=> d!34839 (= (seqFromList!251 tokens!465) (fromListB!106 tokens!465))))

(declare-fun bs!13213 () Bool)

(assert (= bs!13213 d!34839))

(declare-fun m!128893 () Bool)

(assert (=> bs!13213 m!128893))

(assert (=> b!146019 d!34839))

(declare-fun bs!13214 () Bool)

(declare-fun b!146143 () Bool)

(assert (= bs!13214 (and b!146143 b!146018)))

(declare-fun lambda!3596 () Int)

(assert (=> bs!13214 (not (= lambda!3596 lambda!3585))))

(declare-fun bs!13215 () Bool)

(assert (= bs!13215 (and b!146143 d!34821)))

(assert (=> bs!13215 (= lambda!3596 lambda!3593)))

(declare-fun b!146149 () Bool)

(declare-fun e!86816 () Bool)

(assert (=> b!146149 (= e!86816 true)))

(declare-fun b!146148 () Bool)

(declare-fun e!86815 () Bool)

(assert (=> b!146148 (= e!86815 e!86816)))

(declare-fun b!146147 () Bool)

(declare-fun e!86814 () Bool)

(assert (=> b!146147 (= e!86814 e!86815)))

(assert (=> b!146143 e!86814))

(assert (= b!146148 b!146149))

(assert (= b!146147 b!146148))

(assert (= (and b!146143 (is-Cons!2532 rules!1920)) b!146147))

(assert (=> b!146149 (< (dynLambda!858 order!1231 (toValue!1061 (transformation!434 (h!7929 rules!1920)))) (dynLambda!859 order!1233 lambda!3596))))

(assert (=> b!146149 (< (dynLambda!860 order!1235 (toChars!920 (transformation!434 (h!7929 rules!1920)))) (dynLambda!859 order!1233 lambda!3596))))

(assert (=> b!146143 true))

(declare-fun b!146139 () Bool)

(declare-fun e!86813 () BalanceConc!1388)

(declare-fun charsOf!93 (Token!612) BalanceConc!1388)

(assert (=> b!146139 (= e!86813 (charsOf!93 separatorToken!170))))

(declare-fun bm!5696 () Bool)

(declare-fun call!5701 () BalanceConc!1388)

(declare-fun call!5702 () BalanceConc!1388)

(assert (=> bm!5696 (= call!5701 call!5702)))

(declare-fun b!146140 () Bool)

(declare-fun c!29826 () Bool)

(declare-datatypes ((tuple2!2504 0))(
  ( (tuple2!2505 (_1!1468 Token!612) (_2!1468 List!2540)) )
))
(declare-datatypes ((Option!216 0))(
  ( (None!215) (Some!215 (v!13576 tuple2!2504)) )
))
(declare-fun lt!42172 () Option!216)

(assert (=> b!146140 (= c!29826 (and (is-Some!215 lt!42172) (not (= (_1!1468 (v!13576 lt!42172)) (h!7928 tokens!465)))))))

(declare-fun e!86811 () List!2540)

(declare-fun e!86810 () List!2540)

(assert (=> b!146140 (= e!86811 e!86810)))

(declare-fun c!29827 () Bool)

(declare-fun call!5703 () List!2540)

(declare-fun call!5704 () List!2540)

(declare-fun lt!42174 () List!2540)

(declare-fun call!5705 () List!2540)

(declare-fun bm!5698 () Bool)

(declare-fun ++!537 (List!2540 List!2540) List!2540)

(assert (=> bm!5698 (= call!5703 (++!537 call!5704 (ite c!29827 lt!42174 call!5705)))))

(declare-fun b!146141 () Bool)

(assert (=> b!146141 (= e!86811 call!5703)))

(declare-fun bm!5699 () Bool)

(assert (=> bm!5699 (= call!5704 (list!872 (ite c!29827 call!5702 call!5701)))))

(declare-fun b!146142 () Bool)

(declare-fun e!86812 () List!2540)

(assert (=> b!146142 (= e!86812 Nil!2530)))

(assert (=> b!146143 (= e!86812 e!86811)))

(declare-datatypes ((Unit!1878 0))(
  ( (Unit!1879) )
))
(declare-fun lt!42170 () Unit!1878)

(declare-fun forallContained!41 (List!2541 Int Token!612) Unit!1878)

(assert (=> b!146143 (= lt!42170 (forallContained!41 tokens!465 lambda!3596 (h!7928 tokens!465)))))

(assert (=> b!146143 (= lt!42174 (printWithSeparatorTokenWhenNeededList!13 thiss!17480 rules!1920 (t!24149 tokens!465) separatorToken!170))))

(declare-fun maxPrefix!98 (LexerInterface!320 List!2542 List!2540) Option!216)

(assert (=> b!146143 (= lt!42172 (maxPrefix!98 thiss!17480 rules!1920 (++!537 (list!872 (charsOf!93 (h!7928 tokens!465))) lt!42174)))))

(assert (=> b!146143 (= c!29827 (and (is-Some!215 lt!42172) (= (_1!1468 (v!13576 lt!42172)) (h!7928 tokens!465))))))

(declare-fun d!34841 () Bool)

(declare-fun c!29828 () Bool)

(assert (=> d!34841 (= c!29828 (is-Cons!2531 tokens!465))))

(assert (=> d!34841 (= (printWithSeparatorTokenWhenNeededList!13 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!86812)))

(declare-fun bm!5697 () Bool)

(assert (=> bm!5697 (= call!5702 (charsOf!93 (h!7928 tokens!465)))))

(declare-fun b!146144 () Bool)

(assert (=> b!146144 (= e!86810 (++!537 call!5703 lt!42174))))

(declare-fun b!146145 () Bool)

(assert (=> b!146145 (= e!86810 Nil!2530)))

(declare-fun print!83 (LexerInterface!320 BalanceConc!1390) BalanceConc!1388)

(declare-fun singletonSeq!16 (Token!612) BalanceConc!1390)

(declare-fun printTailRec!46 (LexerInterface!320 BalanceConc!1390 Int BalanceConc!1388) BalanceConc!1388)

(assert (=> b!146145 (= (print!83 thiss!17480 (singletonSeq!16 (h!7928 tokens!465))) (printTailRec!46 thiss!17480 (singletonSeq!16 (h!7928 tokens!465)) 0 (BalanceConc!1389 Empty!690)))))

(declare-fun lt!42173 () Unit!1878)

(declare-fun Unit!1880 () Unit!1878)

(assert (=> b!146145 (= lt!42173 Unit!1880)))

(declare-fun lt!42169 () Unit!1878)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!5 (LexerInterface!320 List!2542 List!2540 List!2540) Unit!1878)

(assert (=> b!146145 (= lt!42169 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!5 thiss!17480 rules!1920 call!5705 lt!42174))))

(assert (=> b!146145 false))

(declare-fun lt!42171 () Unit!1878)

(declare-fun Unit!1881 () Unit!1878)

(assert (=> b!146145 (= lt!42171 Unit!1881)))

(declare-fun bm!5700 () Bool)

(assert (=> bm!5700 (= call!5705 (list!872 e!86813))))

(declare-fun c!29829 () Bool)

(assert (=> bm!5700 (= c!29829 c!29826)))

(declare-fun b!146146 () Bool)

(assert (=> b!146146 (= e!86813 call!5701)))

(assert (= (and d!34841 c!29828) b!146143))

(assert (= (and d!34841 (not c!29828)) b!146142))

(assert (= (and b!146143 c!29827) b!146141))

(assert (= (and b!146143 (not c!29827)) b!146140))

(assert (= (and b!146140 c!29826) b!146144))

(assert (= (and b!146140 (not c!29826)) b!146145))

(assert (= (or b!146144 b!146145) bm!5696))

(assert (= (or b!146144 b!146145) bm!5700))

(assert (= (and bm!5700 c!29829) b!146139))

(assert (= (and bm!5700 (not c!29829)) b!146146))

(assert (= (or b!146141 bm!5696) bm!5697))

(assert (= (or b!146141 b!146144) bm!5699))

(assert (= (or b!146141 b!146144) bm!5698))

(declare-fun m!128895 () Bool)

(assert (=> b!146145 m!128895))

(assert (=> b!146145 m!128895))

(declare-fun m!128897 () Bool)

(assert (=> b!146145 m!128897))

(assert (=> b!146145 m!128895))

(declare-fun m!128899 () Bool)

(assert (=> b!146145 m!128899))

(declare-fun m!128901 () Bool)

(assert (=> b!146145 m!128901))

(declare-fun m!128903 () Bool)

(assert (=> bm!5697 m!128903))

(declare-fun m!128905 () Bool)

(assert (=> bm!5699 m!128905))

(declare-fun m!128907 () Bool)

(assert (=> b!146139 m!128907))

(declare-fun m!128909 () Bool)

(assert (=> bm!5700 m!128909))

(declare-fun m!128911 () Bool)

(assert (=> bm!5698 m!128911))

(declare-fun m!128913 () Bool)

(assert (=> b!146144 m!128913))

(declare-fun m!128915 () Bool)

(assert (=> b!146143 m!128915))

(assert (=> b!146143 m!128903))

(declare-fun m!128917 () Bool)

(assert (=> b!146143 m!128917))

(assert (=> b!146143 m!128917))

(declare-fun m!128919 () Bool)

(assert (=> b!146143 m!128919))

(assert (=> b!146143 m!128903))

(declare-fun m!128921 () Bool)

(assert (=> b!146143 m!128921))

(assert (=> b!146143 m!128919))

(declare-fun m!128923 () Bool)

(assert (=> b!146143 m!128923))

(assert (=> b!146008 d!34841))

(declare-fun d!34843 () Bool)

(declare-fun list!875 (Conc!690) List!2540)

(assert (=> d!34843 (= (list!872 (printWithSeparatorTokenWhenNeededRec!3 thiss!17480 rules!1920 lt!42145 separatorToken!170 0)) (list!875 (c!29809 (printWithSeparatorTokenWhenNeededRec!3 thiss!17480 rules!1920 lt!42145 separatorToken!170 0))))))

(declare-fun bs!13216 () Bool)

(assert (= bs!13216 d!34843))

(declare-fun m!128925 () Bool)

(assert (=> bs!13216 m!128925))

(assert (=> b!146008 d!34843))

(declare-fun bs!13219 () Bool)

(declare-fun d!34845 () Bool)

(assert (= bs!13219 (and d!34845 b!146018)))

(declare-fun lambda!3604 () Int)

(assert (=> bs!13219 (= lambda!3604 lambda!3585)))

(declare-fun bs!13220 () Bool)

(assert (= bs!13220 (and d!34845 d!34821)))

(assert (=> bs!13220 (not (= lambda!3604 lambda!3593))))

(declare-fun bs!13221 () Bool)

(assert (= bs!13221 (and d!34845 b!146143)))

(assert (=> bs!13221 (not (= lambda!3604 lambda!3596))))

(declare-fun bs!13222 () Bool)

(declare-fun b!146211 () Bool)

(assert (= bs!13222 (and b!146211 b!146018)))

(declare-fun lambda!3605 () Int)

(assert (=> bs!13222 (not (= lambda!3605 lambda!3585))))

(declare-fun bs!13223 () Bool)

(assert (= bs!13223 (and b!146211 d!34821)))

(assert (=> bs!13223 (= lambda!3605 lambda!3593)))

(declare-fun bs!13224 () Bool)

(assert (= bs!13224 (and b!146211 b!146143)))

(assert (=> bs!13224 (= lambda!3605 lambda!3596)))

(declare-fun bs!13225 () Bool)

(assert (= bs!13225 (and b!146211 d!34845)))

(assert (=> bs!13225 (not (= lambda!3605 lambda!3604))))

(declare-fun b!146218 () Bool)

(declare-fun e!86859 () Bool)

(assert (=> b!146218 (= e!86859 true)))

(declare-fun b!146217 () Bool)

(declare-fun e!86858 () Bool)

(assert (=> b!146217 (= e!86858 e!86859)))

(declare-fun b!146216 () Bool)

(declare-fun e!86857 () Bool)

(assert (=> b!146216 (= e!86857 e!86858)))

(assert (=> b!146211 e!86857))

(assert (= b!146217 b!146218))

(assert (= b!146216 b!146217))

(assert (= (and b!146211 (is-Cons!2532 rules!1920)) b!146216))

(assert (=> b!146218 (< (dynLambda!858 order!1231 (toValue!1061 (transformation!434 (h!7929 rules!1920)))) (dynLambda!859 order!1233 lambda!3605))))

(assert (=> b!146218 (< (dynLambda!860 order!1235 (toChars!920 (transformation!434 (h!7929 rules!1920)))) (dynLambda!859 order!1233 lambda!3605))))

(assert (=> b!146211 true))

(declare-fun b!146207 () Bool)

(declare-fun e!86851 () Bool)

(declare-datatypes ((tuple2!2506 0))(
  ( (tuple2!2507 (_1!1469 Token!612) (_2!1469 BalanceConc!1388)) )
))
(declare-datatypes ((Option!217 0))(
  ( (None!216) (Some!216 (v!13577 tuple2!2506)) )
))
(declare-fun lt!42220 () Option!217)

(declare-fun apply!315 (BalanceConc!1390 Int) Token!612)

(assert (=> b!146207 (= e!86851 (= (_1!1469 (v!13577 lt!42220)) (apply!315 lt!42145 0)))))

(declare-fun bm!5726 () Bool)

(declare-fun call!5732 () Token!612)

(declare-fun call!5735 () Token!612)

(assert (=> bm!5726 (= call!5732 call!5735)))

(declare-fun call!5734 () BalanceConc!1388)

(declare-fun c!29851 () Bool)

(declare-fun bm!5727 () Bool)

(assert (=> bm!5727 (= call!5734 (charsOf!93 (ite c!29851 separatorToken!170 call!5732)))))

(declare-fun bm!5728 () Bool)

(declare-fun c!29850 () Bool)

(declare-fun call!5731 () BalanceConc!1388)

(assert (=> bm!5728 (= call!5731 (charsOf!93 (ite c!29850 call!5735 call!5732)))))

(declare-fun bm!5729 () Bool)

(declare-fun lt!42230 () BalanceConc!1388)

(declare-fun call!5733 () BalanceConc!1388)

(declare-fun ++!538 (BalanceConc!1388 BalanceConc!1388) BalanceConc!1388)

(assert (=> bm!5729 (= call!5733 (++!538 call!5731 (ite c!29850 lt!42230 call!5734)))))

(declare-fun b!146208 () Bool)

(declare-fun e!86854 () BalanceConc!1388)

(assert (=> b!146208 (= e!86854 (BalanceConc!1389 Empty!690))))

(assert (=> b!146208 (= (print!83 thiss!17480 (singletonSeq!16 call!5732)) (printTailRec!46 thiss!17480 (singletonSeq!16 call!5732) 0 (BalanceConc!1389 Empty!690)))))

(declare-fun lt!42225 () Unit!1878)

(declare-fun Unit!1882 () Unit!1878)

(assert (=> b!146208 (= lt!42225 Unit!1882)))

(declare-fun lt!42223 () Unit!1878)

(assert (=> b!146208 (= lt!42223 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!5 thiss!17480 rules!1920 (list!872 call!5734) (list!872 lt!42230)))))

(assert (=> b!146208 false))

(declare-fun lt!42219 () Unit!1878)

(declare-fun Unit!1883 () Unit!1878)

(assert (=> b!146208 (= lt!42219 Unit!1883)))

(declare-fun b!146209 () Bool)

(declare-fun e!86853 () Bool)

(assert (=> b!146209 (= e!86853 (<= 0 (size!2181 lt!42145)))))

(declare-fun bm!5730 () Bool)

(assert (=> bm!5730 (= call!5735 (apply!315 lt!42145 0))))

(declare-fun b!146210 () Bool)

(declare-fun e!86855 () BalanceConc!1388)

(assert (=> b!146210 (= e!86855 (BalanceConc!1389 Empty!690))))

(declare-fun e!86852 () BalanceConc!1388)

(assert (=> b!146211 (= e!86855 e!86852)))

(declare-fun lt!42221 () List!2541)

(assert (=> b!146211 (= lt!42221 (list!874 lt!42145))))

(declare-fun lt!42226 () Unit!1878)

(declare-fun lemmaDropApply!97 (List!2541 Int) Unit!1878)

(assert (=> b!146211 (= lt!42226 (lemmaDropApply!97 lt!42221 0))))

(declare-fun head!571 (List!2541) Token!612)

(declare-fun drop!110 (List!2541 Int) List!2541)

(declare-fun apply!316 (List!2541 Int) Token!612)

(assert (=> b!146211 (= (head!571 (drop!110 lt!42221 0)) (apply!316 lt!42221 0))))

(declare-fun lt!42227 () Unit!1878)

(assert (=> b!146211 (= lt!42227 lt!42226)))

(declare-fun lt!42224 () List!2541)

(assert (=> b!146211 (= lt!42224 (list!874 lt!42145))))

(declare-fun lt!42232 () Unit!1878)

(declare-fun lemmaDropTail!89 (List!2541 Int) Unit!1878)

(assert (=> b!146211 (= lt!42232 (lemmaDropTail!89 lt!42224 0))))

(declare-fun tail!311 (List!2541) List!2541)

(assert (=> b!146211 (= (tail!311 (drop!110 lt!42224 0)) (drop!110 lt!42224 (+ 0 1)))))

(declare-fun lt!42231 () Unit!1878)

(assert (=> b!146211 (= lt!42231 lt!42232)))

(declare-fun lt!42222 () Unit!1878)

(assert (=> b!146211 (= lt!42222 (forallContained!41 (list!874 lt!42145) lambda!3605 (apply!315 lt!42145 0)))))

(assert (=> b!146211 (= lt!42230 (printWithSeparatorTokenWhenNeededRec!3 thiss!17480 rules!1920 lt!42145 separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!57 (LexerInterface!320 List!2542 BalanceConc!1388) Option!217)

(assert (=> b!146211 (= lt!42220 (maxPrefixZipperSequence!57 thiss!17480 rules!1920 (++!538 (charsOf!93 (apply!315 lt!42145 0)) lt!42230)))))

(declare-fun res!67353 () Bool)

(assert (=> b!146211 (= res!67353 (is-Some!216 lt!42220))))

(assert (=> b!146211 (=> (not res!67353) (not e!86851))))

(assert (=> b!146211 (= c!29850 e!86851)))

(declare-fun b!146212 () Bool)

(declare-fun e!86856 () Bool)

(assert (=> b!146212 (= e!86856 (not (= (_1!1469 (v!13577 lt!42220)) call!5735)))))

(declare-fun b!146213 () Bool)

(assert (=> b!146213 (= e!86852 call!5733)))

(declare-fun lt!42228 () BalanceConc!1388)

(declare-fun dropList!57 (BalanceConc!1390 Int) List!2541)

(assert (=> d!34845 (= (list!872 lt!42228) (printWithSeparatorTokenWhenNeededList!13 thiss!17480 rules!1920 (dropList!57 lt!42145 0) separatorToken!170))))

(assert (=> d!34845 (= lt!42228 e!86855)))

(declare-fun c!29849 () Bool)

(assert (=> d!34845 (= c!29849 (>= 0 (size!2181 lt!42145)))))

(declare-fun lt!42229 () Unit!1878)

(declare-fun lemmaContentSubsetPreservesForall!1 (List!2541 List!2541 Int) Unit!1878)

(assert (=> d!34845 (= lt!42229 (lemmaContentSubsetPreservesForall!1 (list!874 lt!42145) (dropList!57 lt!42145 0) lambda!3604))))

(assert (=> d!34845 e!86853))

(declare-fun res!67354 () Bool)

(assert (=> d!34845 (=> (not res!67354) (not e!86853))))

(assert (=> d!34845 (= res!67354 (>= 0 0))))

(assert (=> d!34845 (= (printWithSeparatorTokenWhenNeededRec!3 thiss!17480 rules!1920 lt!42145 separatorToken!170 0) lt!42228)))

(declare-fun b!146214 () Bool)

(assert (=> b!146214 (= c!29851 e!86856)))

(declare-fun res!67352 () Bool)

(assert (=> b!146214 (=> (not res!67352) (not e!86856))))

(assert (=> b!146214 (= res!67352 (is-Some!216 lt!42220))))

(assert (=> b!146214 (= e!86852 e!86854)))

(declare-fun b!146215 () Bool)

(assert (=> b!146215 (= e!86854 (++!538 call!5733 lt!42230))))

(assert (= (and d!34845 res!67354) b!146209))

(assert (= (and d!34845 c!29849) b!146210))

(assert (= (and d!34845 (not c!29849)) b!146211))

(assert (= (and b!146211 res!67353) b!146207))

(assert (= (and b!146211 c!29850) b!146213))

(assert (= (and b!146211 (not c!29850)) b!146214))

(assert (= (and b!146214 res!67352) b!146212))

(assert (= (and b!146214 c!29851) b!146215))

(assert (= (and b!146214 (not c!29851)) b!146208))

(assert (= (or b!146215 b!146208) bm!5726))

(assert (= (or b!146215 b!146208) bm!5727))

(assert (= (or b!146213 bm!5726 b!146212) bm!5730))

(assert (= (or b!146213 b!146215) bm!5728))

(assert (= (or b!146213 b!146215) bm!5729))

(declare-fun m!128959 () Bool)

(assert (=> b!146207 m!128959))

(declare-fun m!128961 () Bool)

(assert (=> bm!5727 m!128961))

(declare-fun m!128963 () Bool)

(assert (=> bm!5729 m!128963))

(assert (=> d!34845 m!128885))

(declare-fun m!128965 () Bool)

(assert (=> d!34845 m!128965))

(declare-fun m!128967 () Bool)

(assert (=> d!34845 m!128967))

(assert (=> d!34845 m!128965))

(declare-fun m!128969 () Bool)

(assert (=> d!34845 m!128969))

(assert (=> d!34845 m!128965))

(declare-fun m!128971 () Bool)

(assert (=> d!34845 m!128971))

(assert (=> d!34845 m!128885))

(assert (=> d!34845 m!128785))

(declare-fun m!128973 () Bool)

(assert (=> b!146211 m!128973))

(declare-fun m!128975 () Bool)

(assert (=> b!146211 m!128975))

(declare-fun m!128977 () Bool)

(assert (=> b!146211 m!128977))

(declare-fun m!128979 () Bool)

(assert (=> b!146211 m!128979))

(assert (=> b!146211 m!128975))

(assert (=> b!146211 m!128885))

(assert (=> b!146211 m!128959))

(declare-fun m!128981 () Bool)

(assert (=> b!146211 m!128981))

(assert (=> b!146211 m!128959))

(assert (=> b!146211 m!128979))

(assert (=> b!146211 m!128959))

(assert (=> b!146211 m!128885))

(declare-fun m!128983 () Bool)

(assert (=> b!146211 m!128983))

(declare-fun m!128985 () Bool)

(assert (=> b!146211 m!128985))

(declare-fun m!128987 () Bool)

(assert (=> b!146211 m!128987))

(declare-fun m!128989 () Bool)

(assert (=> b!146211 m!128989))

(declare-fun m!128991 () Bool)

(assert (=> b!146211 m!128991))

(declare-fun m!128993 () Bool)

(assert (=> b!146211 m!128993))

(declare-fun m!128995 () Bool)

(assert (=> b!146211 m!128995))

(assert (=> b!146211 m!128983))

(assert (=> b!146211 m!128973))

(declare-fun m!128997 () Bool)

(assert (=> b!146211 m!128997))

(declare-fun m!128999 () Bool)

(assert (=> bm!5728 m!128999))

(assert (=> b!146209 m!128785))

(declare-fun m!129001 () Bool)

(assert (=> b!146208 m!129001))

(declare-fun m!129003 () Bool)

(assert (=> b!146208 m!129003))

(declare-fun m!129005 () Bool)

(assert (=> b!146208 m!129005))

(declare-fun m!129007 () Bool)

(assert (=> b!146208 m!129007))

(declare-fun m!129009 () Bool)

(assert (=> b!146208 m!129009))

(assert (=> b!146208 m!129007))

(assert (=> b!146208 m!129005))

(assert (=> b!146208 m!129001))

(declare-fun m!129011 () Bool)

(assert (=> b!146208 m!129011))

(assert (=> b!146208 m!129001))

(declare-fun m!129013 () Bool)

(assert (=> b!146215 m!129013))

(assert (=> bm!5730 m!128959))

(assert (=> b!146008 d!34845))

(declare-fun d!34851 () Bool)

(declare-fun res!67359 () Bool)

(declare-fun e!86864 () Bool)

(assert (=> d!34851 (=> res!67359 e!86864)))

(assert (=> d!34851 (= res!67359 (is-Nil!2531 tokens!465))))

(assert (=> d!34851 (= (forall!402 tokens!465 lambda!3585) e!86864)))

(declare-fun b!146223 () Bool)

(declare-fun e!86865 () Bool)

(assert (=> b!146223 (= e!86864 e!86865)))

(declare-fun res!67360 () Bool)

(assert (=> b!146223 (=> (not res!67360) (not e!86865))))

(declare-fun dynLambda!861 (Int Token!612) Bool)

(assert (=> b!146223 (= res!67360 (dynLambda!861 lambda!3585 (h!7928 tokens!465)))))

(declare-fun b!146224 () Bool)

(assert (=> b!146224 (= e!86865 (forall!402 (t!24149 tokens!465) lambda!3585))))

(assert (= (and d!34851 (not res!67359)) b!146223))

(assert (= (and b!146223 res!67360) b!146224))

(declare-fun b_lambda!2459 () Bool)

(assert (=> (not b_lambda!2459) (not b!146223)))

(declare-fun m!129015 () Bool)

(assert (=> b!146223 m!129015))

(declare-fun m!129017 () Bool)

(assert (=> b!146224 m!129017))

(assert (=> b!146018 d!34851))

(declare-fun d!34853 () Bool)

(assert (=> d!34853 (= (inv!3312 (tag!612 (rule!941 (h!7928 tokens!465)))) (= (mod (str.len (value!16685 (tag!612 (rule!941 (h!7928 tokens!465))))) 2) 0))))

(assert (=> b!146007 d!34853))

(declare-fun d!34855 () Bool)

(declare-fun res!67363 () Bool)

(declare-fun e!86868 () Bool)

(assert (=> d!34855 (=> (not res!67363) (not e!86868))))

(declare-fun semiInverseModEq!148 (Int Int) Bool)

(assert (=> d!34855 (= res!67363 (semiInverseModEq!148 (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465)))) (toValue!1061 (transformation!434 (rule!941 (h!7928 tokens!465))))))))

(assert (=> d!34855 (= (inv!3315 (transformation!434 (rule!941 (h!7928 tokens!465)))) e!86868)))

(declare-fun b!146227 () Bool)

(declare-fun equivClasses!131 (Int Int) Bool)

(assert (=> b!146227 (= e!86868 (equivClasses!131 (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465)))) (toValue!1061 (transformation!434 (rule!941 (h!7928 tokens!465))))))))

(assert (= (and d!34855 res!67363) b!146227))

(declare-fun m!129019 () Bool)

(assert (=> d!34855 m!129019))

(declare-fun m!129021 () Bool)

(assert (=> b!146227 m!129021))

(assert (=> b!146007 d!34855))

(declare-fun d!34857 () Bool)

(assert (=> d!34857 (= (isEmpty!983 rules!1920) (is-Nil!2532 rules!1920))))

(assert (=> b!146017 d!34857))

(declare-fun d!34859 () Bool)

(declare-fun lt!42279 () Bool)

(declare-fun e!86898 () Bool)

(assert (=> d!34859 (= lt!42279 e!86898)))

(declare-fun res!67380 () Bool)

(assert (=> d!34859 (=> (not res!67380) (not e!86898))))

(declare-datatypes ((tuple2!2508 0))(
  ( (tuple2!2509 (_1!1470 BalanceConc!1390) (_2!1470 BalanceConc!1388)) )
))
(declare-fun lex!158 (LexerInterface!320 List!2542 BalanceConc!1388) tuple2!2508)

(assert (=> d!34859 (= res!67380 (= (list!874 (_1!1470 (lex!158 thiss!17480 rules!1920 (print!83 thiss!17480 (singletonSeq!16 separatorToken!170))))) (list!874 (singletonSeq!16 separatorToken!170))))))

(declare-fun e!86899 () Bool)

(assert (=> d!34859 (= lt!42279 e!86899)))

(declare-fun res!67382 () Bool)

(assert (=> d!34859 (=> (not res!67382) (not e!86899))))

(declare-fun lt!42280 () tuple2!2508)

(assert (=> d!34859 (= res!67382 (= (size!2181 (_1!1470 lt!42280)) 1))))

(assert (=> d!34859 (= lt!42280 (lex!158 thiss!17480 rules!1920 (print!83 thiss!17480 (singletonSeq!16 separatorToken!170))))))

(assert (=> d!34859 (not (isEmpty!983 rules!1920))))

(assert (=> d!34859 (= (rulesProduceIndividualToken!69 thiss!17480 rules!1920 separatorToken!170) lt!42279)))

(declare-fun b!146271 () Bool)

(declare-fun res!67381 () Bool)

(assert (=> b!146271 (=> (not res!67381) (not e!86899))))

(assert (=> b!146271 (= res!67381 (= (apply!315 (_1!1470 lt!42280) 0) separatorToken!170))))

(declare-fun b!146272 () Bool)

(declare-fun isEmpty!985 (BalanceConc!1388) Bool)

(assert (=> b!146272 (= e!86899 (isEmpty!985 (_2!1470 lt!42280)))))

(declare-fun b!146273 () Bool)

(assert (=> b!146273 (= e!86898 (isEmpty!985 (_2!1470 (lex!158 thiss!17480 rules!1920 (print!83 thiss!17480 (singletonSeq!16 separatorToken!170))))))))

(assert (= (and d!34859 res!67382) b!146271))

(assert (= (and b!146271 res!67381) b!146272))

(assert (= (and d!34859 res!67380) b!146273))

(declare-fun m!129083 () Bool)

(assert (=> d!34859 m!129083))

(declare-fun m!129085 () Bool)

(assert (=> d!34859 m!129085))

(assert (=> d!34859 m!129083))

(declare-fun m!129087 () Bool)

(assert (=> d!34859 m!129087))

(assert (=> d!34859 m!128783))

(assert (=> d!34859 m!129083))

(declare-fun m!129089 () Bool)

(assert (=> d!34859 m!129089))

(assert (=> d!34859 m!129085))

(declare-fun m!129091 () Bool)

(assert (=> d!34859 m!129091))

(declare-fun m!129093 () Bool)

(assert (=> d!34859 m!129093))

(declare-fun m!129095 () Bool)

(assert (=> b!146271 m!129095))

(declare-fun m!129097 () Bool)

(assert (=> b!146272 m!129097))

(assert (=> b!146273 m!129083))

(assert (=> b!146273 m!129083))

(assert (=> b!146273 m!129085))

(assert (=> b!146273 m!129085))

(assert (=> b!146273 m!129091))

(declare-fun m!129099 () Bool)

(assert (=> b!146273 m!129099))

(assert (=> b!146016 d!34859))

(declare-fun d!34867 () Bool)

(declare-fun lt!42283 () Int)

(declare-fun size!2184 (List!2541) Int)

(assert (=> d!34867 (= lt!42283 (size!2184 (list!874 lt!42145)))))

(declare-fun size!2185 (Conc!691) Int)

(assert (=> d!34867 (= lt!42283 (size!2185 (c!29811 lt!42145)))))

(assert (=> d!34867 (= (size!2181 lt!42145) lt!42283)))

(declare-fun bs!13231 () Bool)

(assert (= bs!13231 d!34867))

(assert (=> bs!13231 m!128885))

(assert (=> bs!13231 m!128885))

(declare-fun m!129101 () Bool)

(assert (=> bs!13231 m!129101))

(declare-fun m!129103 () Bool)

(assert (=> bs!13231 m!129103))

(assert (=> b!146005 d!34867))

(declare-fun d!34869 () Bool)

(assert (=> d!34869 (= (inv!3312 (tag!612 (rule!941 separatorToken!170))) (= (mod (str.len (value!16685 (tag!612 (rule!941 separatorToken!170)))) 2) 0))))

(assert (=> b!146014 d!34869))

(declare-fun d!34871 () Bool)

(declare-fun res!67383 () Bool)

(declare-fun e!86900 () Bool)

(assert (=> d!34871 (=> (not res!67383) (not e!86900))))

(assert (=> d!34871 (= res!67383 (semiInverseModEq!148 (toChars!920 (transformation!434 (rule!941 separatorToken!170))) (toValue!1061 (transformation!434 (rule!941 separatorToken!170)))))))

(assert (=> d!34871 (= (inv!3315 (transformation!434 (rule!941 separatorToken!170))) e!86900)))

(declare-fun b!146274 () Bool)

(assert (=> b!146274 (= e!86900 (equivClasses!131 (toChars!920 (transformation!434 (rule!941 separatorToken!170))) (toValue!1061 (transformation!434 (rule!941 separatorToken!170)))))))

(assert (= (and d!34871 res!67383) b!146274))

(declare-fun m!129105 () Bool)

(assert (=> d!34871 m!129105))

(declare-fun m!129107 () Bool)

(assert (=> b!146274 m!129107))

(assert (=> b!146014 d!34871))

(declare-fun d!34873 () Bool)

(assert (=> d!34873 (= (inv!3312 (tag!612 (h!7929 rules!1920))) (= (mod (str.len (value!16685 (tag!612 (h!7929 rules!1920)))) 2) 0))))

(assert (=> b!146024 d!34873))

(declare-fun d!34875 () Bool)

(declare-fun res!67384 () Bool)

(declare-fun e!86901 () Bool)

(assert (=> d!34875 (=> (not res!67384) (not e!86901))))

(assert (=> d!34875 (= res!67384 (semiInverseModEq!148 (toChars!920 (transformation!434 (h!7929 rules!1920))) (toValue!1061 (transformation!434 (h!7929 rules!1920)))))))

(assert (=> d!34875 (= (inv!3315 (transformation!434 (h!7929 rules!1920))) e!86901)))

(declare-fun b!146275 () Bool)

(assert (=> b!146275 (= e!86901 (equivClasses!131 (toChars!920 (transformation!434 (h!7929 rules!1920))) (toValue!1061 (transformation!434 (h!7929 rules!1920)))))))

(assert (= (and d!34875 res!67384) b!146275))

(declare-fun m!129109 () Bool)

(assert (=> d!34875 m!129109))

(declare-fun m!129111 () Bool)

(assert (=> b!146275 m!129111))

(assert (=> b!146024 d!34875))

(declare-fun d!34877 () Bool)

(declare-fun res!67389 () Bool)

(declare-fun e!86904 () Bool)

(assert (=> d!34877 (=> (not res!67389) (not e!86904))))

(declare-fun isEmpty!986 (List!2540) Bool)

(assert (=> d!34877 (= res!67389 (not (isEmpty!986 (originalCharacters!477 separatorToken!170))))))

(assert (=> d!34877 (= (inv!3316 separatorToken!170) e!86904)))

(declare-fun b!146280 () Bool)

(declare-fun res!67390 () Bool)

(assert (=> b!146280 (=> (not res!67390) (not e!86904))))

(declare-fun dynLambda!862 (Int TokenValue!456) BalanceConc!1388)

(assert (=> b!146280 (= res!67390 (= (originalCharacters!477 separatorToken!170) (list!872 (dynLambda!862 (toChars!920 (transformation!434 (rule!941 separatorToken!170))) (value!16686 separatorToken!170)))))))

(declare-fun b!146281 () Bool)

(declare-fun size!2186 (List!2540) Int)

(assert (=> b!146281 (= e!86904 (= (size!2180 separatorToken!170) (size!2186 (originalCharacters!477 separatorToken!170))))))

(assert (= (and d!34877 res!67389) b!146280))

(assert (= (and b!146280 res!67390) b!146281))

(declare-fun b_lambda!2461 () Bool)

(assert (=> (not b_lambda!2461) (not b!146280)))

(declare-fun t!24185 () Bool)

(declare-fun tb!4641 () Bool)

(assert (=> (and b!146020 (= (toChars!920 (transformation!434 (h!7929 rules!1920))) (toChars!920 (transformation!434 (rule!941 separatorToken!170)))) t!24185) tb!4641))

(declare-fun b!146286 () Bool)

(declare-fun e!86907 () Bool)

(declare-fun tp!76974 () Bool)

(declare-fun inv!3319 (Conc!690) Bool)

(assert (=> b!146286 (= e!86907 (and (inv!3319 (c!29809 (dynLambda!862 (toChars!920 (transformation!434 (rule!941 separatorToken!170))) (value!16686 separatorToken!170)))) tp!76974))))

(declare-fun result!6990 () Bool)

(declare-fun inv!3320 (BalanceConc!1388) Bool)

(assert (=> tb!4641 (= result!6990 (and (inv!3320 (dynLambda!862 (toChars!920 (transformation!434 (rule!941 separatorToken!170))) (value!16686 separatorToken!170))) e!86907))))

(assert (= tb!4641 b!146286))

(declare-fun m!129113 () Bool)

(assert (=> b!146286 m!129113))

(declare-fun m!129115 () Bool)

(assert (=> tb!4641 m!129115))

(assert (=> b!146280 t!24185))

(declare-fun b_and!7985 () Bool)

(assert (= b_and!7951 (and (=> t!24185 result!6990) b_and!7985)))

(declare-fun t!24187 () Bool)

(declare-fun tb!4643 () Bool)

(assert (=> (and b!146013 (= (toChars!920 (transformation!434 (rule!941 separatorToken!170))) (toChars!920 (transformation!434 (rule!941 separatorToken!170)))) t!24187) tb!4643))

(declare-fun result!6994 () Bool)

(assert (= result!6994 result!6990))

(assert (=> b!146280 t!24187))

(declare-fun b_and!7987 () Bool)

(assert (= b_and!7955 (and (=> t!24187 result!6994) b_and!7987)))

(declare-fun tb!4645 () Bool)

(declare-fun t!24189 () Bool)

(assert (=> (and b!146012 (= (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465)))) (toChars!920 (transformation!434 (rule!941 separatorToken!170)))) t!24189) tb!4645))

(declare-fun result!6996 () Bool)

(assert (= result!6996 result!6990))

(assert (=> b!146280 t!24189))

(declare-fun b_and!7989 () Bool)

(assert (= b_and!7959 (and (=> t!24189 result!6996) b_and!7989)))

(declare-fun m!129117 () Bool)

(assert (=> d!34877 m!129117))

(declare-fun m!129119 () Bool)

(assert (=> b!146280 m!129119))

(assert (=> b!146280 m!129119))

(declare-fun m!129121 () Bool)

(assert (=> b!146280 m!129121))

(declare-fun m!129123 () Bool)

(assert (=> b!146281 m!129123))

(assert (=> start!15460 d!34877))

(declare-fun d!34879 () Bool)

(declare-fun res!67395 () Bool)

(declare-fun e!86912 () Bool)

(assert (=> d!34879 (=> res!67395 e!86912)))

(assert (=> d!34879 (= res!67395 (not (is-Cons!2532 rules!1920)))))

(assert (=> d!34879 (= (sepAndNonSepRulesDisjointChars!23 rules!1920 rules!1920) e!86912)))

(declare-fun b!146291 () Bool)

(declare-fun e!86913 () Bool)

(assert (=> b!146291 (= e!86912 e!86913)))

(declare-fun res!67396 () Bool)

(assert (=> b!146291 (=> (not res!67396) (not e!86913))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!7 (Rule!668 List!2542) Bool)

(assert (=> b!146291 (= res!67396 (ruleDisjointCharsFromAllFromOtherType!7 (h!7929 rules!1920) rules!1920))))

(declare-fun b!146292 () Bool)

(assert (=> b!146292 (= e!86913 (sepAndNonSepRulesDisjointChars!23 rules!1920 (t!24150 rules!1920)))))

(assert (= (and d!34879 (not res!67395)) b!146291))

(assert (= (and b!146291 res!67396) b!146292))

(declare-fun m!129125 () Bool)

(assert (=> b!146291 m!129125))

(declare-fun m!129127 () Bool)

(assert (=> b!146292 m!129127))

(assert (=> b!146023 d!34879))

(declare-fun d!34881 () Bool)

(declare-fun res!67399 () Bool)

(declare-fun e!86916 () Bool)

(assert (=> d!34881 (=> (not res!67399) (not e!86916))))

(declare-fun rulesValid!114 (LexerInterface!320 List!2542) Bool)

(assert (=> d!34881 (= res!67399 (rulesValid!114 thiss!17480 rules!1920))))

(assert (=> d!34881 (= (rulesInvariant!286 thiss!17480 rules!1920) e!86916)))

(declare-fun b!146295 () Bool)

(declare-datatypes ((List!2547 0))(
  ( (Nil!2537) (Cons!2537 (h!7934 String!3362) (t!24213 List!2547)) )
))
(declare-fun noDuplicateTag!114 (LexerInterface!320 List!2542 List!2547) Bool)

(assert (=> b!146295 (= e!86916 (noDuplicateTag!114 thiss!17480 rules!1920 Nil!2537))))

(assert (= (and d!34881 res!67399) b!146295))

(declare-fun m!129129 () Bool)

(assert (=> d!34881 m!129129))

(declare-fun m!129131 () Bool)

(assert (=> b!146295 m!129131))

(assert (=> b!146022 d!34881))

(declare-fun d!34883 () Bool)

(declare-fun res!67400 () Bool)

(declare-fun e!86917 () Bool)

(assert (=> d!34883 (=> (not res!67400) (not e!86917))))

(assert (=> d!34883 (= res!67400 (not (isEmpty!986 (originalCharacters!477 (h!7928 tokens!465)))))))

(assert (=> d!34883 (= (inv!3316 (h!7928 tokens!465)) e!86917)))

(declare-fun b!146296 () Bool)

(declare-fun res!67401 () Bool)

(assert (=> b!146296 (=> (not res!67401) (not e!86917))))

(assert (=> b!146296 (= res!67401 (= (originalCharacters!477 (h!7928 tokens!465)) (list!872 (dynLambda!862 (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465)))) (value!16686 (h!7928 tokens!465))))))))

(declare-fun b!146297 () Bool)

(assert (=> b!146297 (= e!86917 (= (size!2180 (h!7928 tokens!465)) (size!2186 (originalCharacters!477 (h!7928 tokens!465)))))))

(assert (= (and d!34883 res!67400) b!146296))

(assert (= (and b!146296 res!67401) b!146297))

(declare-fun b_lambda!2463 () Bool)

(assert (=> (not b_lambda!2463) (not b!146296)))

(declare-fun tb!4647 () Bool)

(declare-fun t!24191 () Bool)

(assert (=> (and b!146020 (= (toChars!920 (transformation!434 (h!7929 rules!1920))) (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465))))) t!24191) tb!4647))

(declare-fun b!146298 () Bool)

(declare-fun e!86918 () Bool)

(declare-fun tp!76975 () Bool)

(assert (=> b!146298 (= e!86918 (and (inv!3319 (c!29809 (dynLambda!862 (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465)))) (value!16686 (h!7928 tokens!465))))) tp!76975))))

(declare-fun result!6998 () Bool)

(assert (=> tb!4647 (= result!6998 (and (inv!3320 (dynLambda!862 (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465)))) (value!16686 (h!7928 tokens!465)))) e!86918))))

(assert (= tb!4647 b!146298))

(declare-fun m!129133 () Bool)

(assert (=> b!146298 m!129133))

(declare-fun m!129135 () Bool)

(assert (=> tb!4647 m!129135))

(assert (=> b!146296 t!24191))

(declare-fun b_and!7991 () Bool)

(assert (= b_and!7985 (and (=> t!24191 result!6998) b_and!7991)))

(declare-fun t!24193 () Bool)

(declare-fun tb!4649 () Bool)

(assert (=> (and b!146013 (= (toChars!920 (transformation!434 (rule!941 separatorToken!170))) (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465))))) t!24193) tb!4649))

(declare-fun result!7000 () Bool)

(assert (= result!7000 result!6998))

(assert (=> b!146296 t!24193))

(declare-fun b_and!7993 () Bool)

(assert (= b_and!7987 (and (=> t!24193 result!7000) b_and!7993)))

(declare-fun t!24195 () Bool)

(declare-fun tb!4651 () Bool)

(assert (=> (and b!146012 (= (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465)))) (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465))))) t!24195) tb!4651))

(declare-fun result!7002 () Bool)

(assert (= result!7002 result!6998))

(assert (=> b!146296 t!24195))

(declare-fun b_and!7995 () Bool)

(assert (= b_and!7989 (and (=> t!24195 result!7002) b_and!7995)))

(declare-fun m!129137 () Bool)

(assert (=> d!34883 m!129137))

(declare-fun m!129139 () Bool)

(assert (=> b!146296 m!129139))

(assert (=> b!146296 m!129139))

(declare-fun m!129141 () Bool)

(assert (=> b!146296 m!129141))

(declare-fun m!129143 () Bool)

(assert (=> b!146297 m!129143))

(assert (=> b!146011 d!34883))

(declare-fun b!146309 () Bool)

(declare-fun res!67404 () Bool)

(declare-fun e!86925 () Bool)

(assert (=> b!146309 (=> res!67404 e!86925)))

(assert (=> b!146309 (= res!67404 (not (is-IntegerValue!1370 (value!16686 separatorToken!170))))))

(declare-fun e!86926 () Bool)

(assert (=> b!146309 (= e!86926 e!86925)))

(declare-fun d!34885 () Bool)

(declare-fun c!29868 () Bool)

(assert (=> d!34885 (= c!29868 (is-IntegerValue!1368 (value!16686 separatorToken!170)))))

(declare-fun e!86927 () Bool)

(assert (=> d!34885 (= (inv!21 (value!16686 separatorToken!170)) e!86927)))

(declare-fun b!146310 () Bool)

(declare-fun inv!17 (TokenValue!456) Bool)

(assert (=> b!146310 (= e!86926 (inv!17 (value!16686 separatorToken!170)))))

(declare-fun b!146311 () Bool)

(declare-fun inv!16 (TokenValue!456) Bool)

(assert (=> b!146311 (= e!86927 (inv!16 (value!16686 separatorToken!170)))))

(declare-fun b!146312 () Bool)

(assert (=> b!146312 (= e!86927 e!86926)))

(declare-fun c!29869 () Bool)

(assert (=> b!146312 (= c!29869 (is-IntegerValue!1369 (value!16686 separatorToken!170)))))

(declare-fun b!146313 () Bool)

(declare-fun inv!15 (TokenValue!456) Bool)

(assert (=> b!146313 (= e!86925 (inv!15 (value!16686 separatorToken!170)))))

(assert (= (and d!34885 c!29868) b!146311))

(assert (= (and d!34885 (not c!29868)) b!146312))

(assert (= (and b!146312 c!29869) b!146310))

(assert (= (and b!146312 (not c!29869)) b!146309))

(assert (= (and b!146309 (not res!67404)) b!146313))

(declare-fun m!129145 () Bool)

(assert (=> b!146310 m!129145))

(declare-fun m!129147 () Bool)

(assert (=> b!146311 m!129147))

(declare-fun m!129149 () Bool)

(assert (=> b!146313 m!129149))

(assert (=> b!146010 d!34885))

(declare-fun b!146314 () Bool)

(declare-fun res!67405 () Bool)

(declare-fun e!86928 () Bool)

(assert (=> b!146314 (=> res!67405 e!86928)))

(assert (=> b!146314 (= res!67405 (not (is-IntegerValue!1370 (value!16686 (h!7928 tokens!465)))))))

(declare-fun e!86929 () Bool)

(assert (=> b!146314 (= e!86929 e!86928)))

(declare-fun d!34887 () Bool)

(declare-fun c!29870 () Bool)

(assert (=> d!34887 (= c!29870 (is-IntegerValue!1368 (value!16686 (h!7928 tokens!465))))))

(declare-fun e!86930 () Bool)

(assert (=> d!34887 (= (inv!21 (value!16686 (h!7928 tokens!465))) e!86930)))

(declare-fun b!146315 () Bool)

(assert (=> b!146315 (= e!86929 (inv!17 (value!16686 (h!7928 tokens!465))))))

(declare-fun b!146316 () Bool)

(assert (=> b!146316 (= e!86930 (inv!16 (value!16686 (h!7928 tokens!465))))))

(declare-fun b!146317 () Bool)

(assert (=> b!146317 (= e!86930 e!86929)))

(declare-fun c!29871 () Bool)

(assert (=> b!146317 (= c!29871 (is-IntegerValue!1369 (value!16686 (h!7928 tokens!465))))))

(declare-fun b!146318 () Bool)

(assert (=> b!146318 (= e!86928 (inv!15 (value!16686 (h!7928 tokens!465))))))

(assert (= (and d!34887 c!29870) b!146316))

(assert (= (and d!34887 (not c!29870)) b!146317))

(assert (= (and b!146317 c!29871) b!146315))

(assert (= (and b!146317 (not c!29871)) b!146314))

(assert (= (and b!146314 (not res!67405)) b!146318))

(declare-fun m!129151 () Bool)

(assert (=> b!146315 m!129151))

(declare-fun m!129153 () Bool)

(assert (=> b!146316 m!129153))

(declare-fun m!129155 () Bool)

(assert (=> b!146318 m!129155))

(assert (=> b!146009 d!34887))

(declare-fun b!146329 () Bool)

(declare-fun e!86933 () Bool)

(declare-fun tp_is_empty!1593 () Bool)

(assert (=> b!146329 (= e!86933 tp_is_empty!1593)))

(declare-fun b!146332 () Bool)

(declare-fun tp!76987 () Bool)

(declare-fun tp!76989 () Bool)

(assert (=> b!146332 (= e!86933 (and tp!76987 tp!76989))))

(assert (=> b!146007 (= tp!76927 e!86933)))

(declare-fun b!146331 () Bool)

(declare-fun tp!76990 () Bool)

(assert (=> b!146331 (= e!86933 tp!76990)))

(declare-fun b!146330 () Bool)

(declare-fun tp!76988 () Bool)

(declare-fun tp!76986 () Bool)

(assert (=> b!146330 (= e!86933 (and tp!76988 tp!76986))))

(assert (= (and b!146007 (is-ElementMatch!658 (regex!434 (rule!941 (h!7928 tokens!465))))) b!146329))

(assert (= (and b!146007 (is-Concat!1115 (regex!434 (rule!941 (h!7928 tokens!465))))) b!146330))

(assert (= (and b!146007 (is-Star!658 (regex!434 (rule!941 (h!7928 tokens!465))))) b!146331))

(assert (= (and b!146007 (is-Union!658 (regex!434 (rule!941 (h!7928 tokens!465))))) b!146332))

(declare-fun b!146333 () Bool)

(declare-fun e!86934 () Bool)

(assert (=> b!146333 (= e!86934 tp_is_empty!1593)))

(declare-fun b!146336 () Bool)

(declare-fun tp!76992 () Bool)

(declare-fun tp!76994 () Bool)

(assert (=> b!146336 (= e!86934 (and tp!76992 tp!76994))))

(assert (=> b!146014 (= tp!76916 e!86934)))

(declare-fun b!146335 () Bool)

(declare-fun tp!76995 () Bool)

(assert (=> b!146335 (= e!86934 tp!76995)))

(declare-fun b!146334 () Bool)

(declare-fun tp!76993 () Bool)

(declare-fun tp!76991 () Bool)

(assert (=> b!146334 (= e!86934 (and tp!76993 tp!76991))))

(assert (= (and b!146014 (is-ElementMatch!658 (regex!434 (rule!941 separatorToken!170)))) b!146333))

(assert (= (and b!146014 (is-Concat!1115 (regex!434 (rule!941 separatorToken!170)))) b!146334))

(assert (= (and b!146014 (is-Star!658 (regex!434 (rule!941 separatorToken!170)))) b!146335))

(assert (= (and b!146014 (is-Union!658 (regex!434 (rule!941 separatorToken!170)))) b!146336))

(declare-fun b!146337 () Bool)

(declare-fun e!86935 () Bool)

(assert (=> b!146337 (= e!86935 tp_is_empty!1593)))

(declare-fun b!146340 () Bool)

(declare-fun tp!76997 () Bool)

(declare-fun tp!76999 () Bool)

(assert (=> b!146340 (= e!86935 (and tp!76997 tp!76999))))

(assert (=> b!146024 (= tp!76926 e!86935)))

(declare-fun b!146339 () Bool)

(declare-fun tp!77000 () Bool)

(assert (=> b!146339 (= e!86935 tp!77000)))

(declare-fun b!146338 () Bool)

(declare-fun tp!76998 () Bool)

(declare-fun tp!76996 () Bool)

(assert (=> b!146338 (= e!86935 (and tp!76998 tp!76996))))

(assert (= (and b!146024 (is-ElementMatch!658 (regex!434 (h!7929 rules!1920)))) b!146337))

(assert (= (and b!146024 (is-Concat!1115 (regex!434 (h!7929 rules!1920)))) b!146338))

(assert (= (and b!146024 (is-Star!658 (regex!434 (h!7929 rules!1920)))) b!146339))

(assert (= (and b!146024 (is-Union!658 (regex!434 (h!7929 rules!1920)))) b!146340))

(declare-fun b!146354 () Bool)

(declare-fun b_free!5165 () Bool)

(declare-fun b_next!5165 () Bool)

(assert (=> b!146354 (= b_free!5165 (not b_next!5165))))

(declare-fun tp!77014 () Bool)

(declare-fun b_and!7997 () Bool)

(assert (=> b!146354 (= tp!77014 b_and!7997)))

(declare-fun b_free!5167 () Bool)

(declare-fun b_next!5167 () Bool)

(assert (=> b!146354 (= b_free!5167 (not b_next!5167))))

(declare-fun tb!4653 () Bool)

(declare-fun t!24197 () Bool)

(assert (=> (and b!146354 (= (toChars!920 (transformation!434 (rule!941 (h!7928 (t!24149 tokens!465))))) (toChars!920 (transformation!434 (rule!941 separatorToken!170)))) t!24197) tb!4653))

(declare-fun result!7008 () Bool)

(assert (= result!7008 result!6990))

(assert (=> b!146280 t!24197))

(declare-fun t!24199 () Bool)

(declare-fun tb!4655 () Bool)

(assert (=> (and b!146354 (= (toChars!920 (transformation!434 (rule!941 (h!7928 (t!24149 tokens!465))))) (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465))))) t!24199) tb!4655))

(declare-fun result!7010 () Bool)

(assert (= result!7010 result!6998))

(assert (=> b!146296 t!24199))

(declare-fun b_and!7999 () Bool)

(declare-fun tp!77011 () Bool)

(assert (=> b!146354 (= tp!77011 (and (=> t!24197 result!7008) (=> t!24199 result!7010) b_and!7999))))

(declare-fun e!86953 () Bool)

(assert (=> b!146354 (= e!86953 (and tp!77014 tp!77011))))

(declare-fun tp!77015 () Bool)

(declare-fun e!86952 () Bool)

(declare-fun b!146353 () Bool)

(assert (=> b!146353 (= e!86952 (and tp!77015 (inv!3312 (tag!612 (rule!941 (h!7928 (t!24149 tokens!465))))) (inv!3315 (transformation!434 (rule!941 (h!7928 (t!24149 tokens!465))))) e!86953))))

(declare-fun e!86950 () Bool)

(declare-fun b!146352 () Bool)

(declare-fun tp!77012 () Bool)

(assert (=> b!146352 (= e!86950 (and (inv!21 (value!16686 (h!7928 (t!24149 tokens!465)))) e!86952 tp!77012))))

(declare-fun e!86951 () Bool)

(assert (=> b!146011 (= tp!76928 e!86951)))

(declare-fun tp!77013 () Bool)

(declare-fun b!146351 () Bool)

(assert (=> b!146351 (= e!86951 (and (inv!3316 (h!7928 (t!24149 tokens!465))) e!86950 tp!77013))))

(assert (= b!146353 b!146354))

(assert (= b!146352 b!146353))

(assert (= b!146351 b!146352))

(assert (= (and b!146011 (is-Cons!2531 (t!24149 tokens!465))) b!146351))

(declare-fun m!129157 () Bool)

(assert (=> b!146353 m!129157))

(declare-fun m!129159 () Bool)

(assert (=> b!146353 m!129159))

(declare-fun m!129161 () Bool)

(assert (=> b!146352 m!129161))

(declare-fun m!129163 () Bool)

(assert (=> b!146351 m!129163))

(declare-fun b!146365 () Bool)

(declare-fun b_free!5169 () Bool)

(declare-fun b_next!5169 () Bool)

(assert (=> b!146365 (= b_free!5169 (not b_next!5169))))

(declare-fun tp!77027 () Bool)

(declare-fun b_and!8001 () Bool)

(assert (=> b!146365 (= tp!77027 b_and!8001)))

(declare-fun b_free!5171 () Bool)

(declare-fun b_next!5171 () Bool)

(assert (=> b!146365 (= b_free!5171 (not b_next!5171))))

(declare-fun t!24201 () Bool)

(declare-fun tb!4657 () Bool)

(assert (=> (and b!146365 (= (toChars!920 (transformation!434 (h!7929 (t!24150 rules!1920)))) (toChars!920 (transformation!434 (rule!941 separatorToken!170)))) t!24201) tb!4657))

(declare-fun result!7014 () Bool)

(assert (= result!7014 result!6990))

(assert (=> b!146280 t!24201))

(declare-fun t!24203 () Bool)

(declare-fun tb!4659 () Bool)

(assert (=> (and b!146365 (= (toChars!920 (transformation!434 (h!7929 (t!24150 rules!1920)))) (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465))))) t!24203) tb!4659))

(declare-fun result!7016 () Bool)

(assert (= result!7016 result!6998))

(assert (=> b!146296 t!24203))

(declare-fun tp!77024 () Bool)

(declare-fun b_and!8003 () Bool)

(assert (=> b!146365 (= tp!77024 (and (=> t!24201 result!7014) (=> t!24203 result!7016) b_and!8003))))

(declare-fun e!86965 () Bool)

(assert (=> b!146365 (= e!86965 (and tp!77027 tp!77024))))

(declare-fun b!146364 () Bool)

(declare-fun tp!77026 () Bool)

(declare-fun e!86964 () Bool)

(assert (=> b!146364 (= e!86964 (and tp!77026 (inv!3312 (tag!612 (h!7929 (t!24150 rules!1920)))) (inv!3315 (transformation!434 (h!7929 (t!24150 rules!1920)))) e!86965))))

(declare-fun b!146363 () Bool)

(declare-fun e!86962 () Bool)

(declare-fun tp!77025 () Bool)

(assert (=> b!146363 (= e!86962 (and e!86964 tp!77025))))

(assert (=> b!146021 (= tp!76918 e!86962)))

(assert (= b!146364 b!146365))

(assert (= b!146363 b!146364))

(assert (= (and b!146021 (is-Cons!2532 (t!24150 rules!1920))) b!146363))

(declare-fun m!129165 () Bool)

(assert (=> b!146364 m!129165))

(declare-fun m!129167 () Bool)

(assert (=> b!146364 m!129167))

(declare-fun b!146370 () Bool)

(declare-fun e!86968 () Bool)

(declare-fun tp!77030 () Bool)

(assert (=> b!146370 (= e!86968 (and tp_is_empty!1593 tp!77030))))

(assert (=> b!146010 (= tp!76924 e!86968)))

(assert (= (and b!146010 (is-Cons!2530 (originalCharacters!477 separatorToken!170))) b!146370))

(declare-fun b!146371 () Bool)

(declare-fun e!86969 () Bool)

(declare-fun tp!77031 () Bool)

(assert (=> b!146371 (= e!86969 (and tp_is_empty!1593 tp!77031))))

(assert (=> b!146009 (= tp!76920 e!86969)))

(assert (= (and b!146009 (is-Cons!2530 (originalCharacters!477 (h!7928 tokens!465)))) b!146371))

(declare-fun b_lambda!2465 () Bool)

(assert (= b_lambda!2461 (or (and b!146012 b_free!5151 (= (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465)))) (toChars!920 (transformation!434 (rule!941 separatorToken!170))))) (and b!146020 b_free!5143 (= (toChars!920 (transformation!434 (h!7929 rules!1920))) (toChars!920 (transformation!434 (rule!941 separatorToken!170))))) (and b!146013 b_free!5147) (and b!146354 b_free!5167 (= (toChars!920 (transformation!434 (rule!941 (h!7928 (t!24149 tokens!465))))) (toChars!920 (transformation!434 (rule!941 separatorToken!170))))) (and b!146365 b_free!5171 (= (toChars!920 (transformation!434 (h!7929 (t!24150 rules!1920)))) (toChars!920 (transformation!434 (rule!941 separatorToken!170))))) b_lambda!2465)))

(declare-fun b_lambda!2467 () Bool)

(assert (= b_lambda!2459 (or b!146018 b_lambda!2467)))

(declare-fun bs!13232 () Bool)

(declare-fun d!34889 () Bool)

(assert (= bs!13232 (and d!34889 b!146018)))

(assert (=> bs!13232 (= (dynLambda!861 lambda!3585 (h!7928 tokens!465)) (not (isSeparator!434 (rule!941 (h!7928 tokens!465)))))))

(assert (=> b!146223 d!34889))

(declare-fun b_lambda!2469 () Bool)

(assert (= b_lambda!2463 (or (and b!146020 b_free!5143 (= (toChars!920 (transformation!434 (h!7929 rules!1920))) (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465)))))) (and b!146365 b_free!5171 (= (toChars!920 (transformation!434 (h!7929 (t!24150 rules!1920)))) (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465)))))) (and b!146012 b_free!5151) (and b!146013 b_free!5147 (= (toChars!920 (transformation!434 (rule!941 separatorToken!170))) (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465)))))) (and b!146354 b_free!5167 (= (toChars!920 (transformation!434 (rule!941 (h!7928 (t!24149 tokens!465))))) (toChars!920 (transformation!434 (rule!941 (h!7928 tokens!465)))))) b_lambda!2469)))

(push 1)

(assert (not b!146311))

(assert (not b_lambda!2467))

(assert b_and!7995)

(assert (not b!146207))

(assert b_and!7997)

(assert (not bm!5699))

(assert b_and!8001)

(assert (not b_next!5171))

(assert b_and!7953)

(assert (not tb!4647))

(assert (not b!146280))

(assert b_and!7957)

(assert (not b_next!5147))

(assert (not d!34877))

(assert (not b!146334))

(assert b_and!7999)

(assert (not b!146296))

(assert (not b!146295))

(assert (not bm!5700))

(assert (not b_next!5143))

(assert (not b!146316))

(assert (not d!34867))

(assert (not bm!5698))

(assert (not b_next!5145))

(assert (not b!146211))

(assert (not b!146109))

(assert (not d!34883))

(assert (not bm!5727))

(assert (not b!146315))

(assert (not b_next!5151))

(assert (not b!146298))

(assert (not b!146340))

(assert (not b!146143))

(assert (not b!146208))

(assert (not b!146335))

(assert (not b!146371))

(assert (not b!146118))

(assert (not b!146216))

(assert (not b_next!5141))

(assert (not b!146370))

(assert (not b!146351))

(assert (not bm!5728))

(assert (not b!146313))

(assert (not d!34843))

(assert (not b!146332))

(assert (not b!146297))

(assert (not d!34839))

(assert (not b!146331))

(assert tp_is_empty!1593)

(assert (not b!146353))

(assert (not b!146352))

(assert (not b!146271))

(assert b_and!7991)

(assert (not d!34821))

(assert (not bm!5730))

(assert (not b!146318))

(assert (not b!146339))

(assert b_and!7993)

(assert (not b_lambda!2469))

(assert (not d!34855))

(assert (not b!146330))

(assert (not b!146139))

(assert (not b!146310))

(assert (not b!146275))

(assert (not d!34859))

(assert (not b_next!5167))

(assert b_and!7949)

(assert (not b!146281))

(assert (not bm!5697))

(assert (not b_lambda!2465))

(assert (not b!146147))

(assert (not b_next!5149))

(assert (not b!146291))

(assert (not b!146274))

(assert (not b!146336))

(assert (not b!146363))

(assert (not d!34845))

(assert (not d!34881))

(assert (not b!146292))

(assert (not tb!4641))

(assert (not bm!5729))

(assert (not b!146286))

(assert (not b_next!5169))

(assert (not b!146224))

(assert (not d!34871))

(assert (not b!146338))

(assert (not b!146227))

(assert (not b!146364))

(assert (not d!34875))

(assert (not b_next!5165))

(assert b_and!8003)

(assert (not b!146215))

(assert (not b!146144))

(assert (not b!146145))

(assert (not b!146272))

(assert (not b!146209))

(assert (not b!146273))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7957)

(assert (not b_next!5147))

(assert b_and!7999)

(assert (not b_next!5143))

(assert (not b_next!5145))

(assert (not b_next!5151))

(assert b_and!7995)

(assert (not b_next!5141))

(assert b_and!7991)

(assert b_and!7997)

(assert b_and!7993)

(assert (not b_next!5149))

(assert (not b_next!5169))

(assert b_and!8001)

(assert (not b_next!5171))

(assert b_and!7953)

(assert (not b_next!5167))

(assert b_and!7949)

(assert b_and!8003)

(assert (not b_next!5165))

(check-sat)

(pop 1)

