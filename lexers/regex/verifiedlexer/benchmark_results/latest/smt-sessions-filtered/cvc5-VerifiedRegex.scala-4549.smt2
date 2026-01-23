; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!240996 () Bool)

(assert start!240996)

(declare-fun b!2470978 () Bool)

(declare-fun b_free!71301 () Bool)

(declare-fun b_next!72005 () Bool)

(assert (=> b!2470978 (= b_free!71301 (not b_next!72005))))

(declare-fun tp!789357 () Bool)

(declare-fun b_and!187141 () Bool)

(assert (=> b!2470978 (= tp!789357 b_and!187141)))

(declare-fun b_free!71303 () Bool)

(declare-fun b_next!72007 () Bool)

(assert (=> b!2470978 (= b_free!71303 (not b_next!72007))))

(declare-fun tp!789364 () Bool)

(declare-fun b_and!187143 () Bool)

(assert (=> b!2470978 (= tp!789364 b_and!187143)))

(declare-fun b!2470985 () Bool)

(declare-fun b_free!71305 () Bool)

(declare-fun b_next!72009 () Bool)

(assert (=> b!2470985 (= b_free!71305 (not b_next!72009))))

(declare-fun tp!789355 () Bool)

(declare-fun b_and!187145 () Bool)

(assert (=> b!2470985 (= tp!789355 b_and!187145)))

(declare-fun b_free!71307 () Bool)

(declare-fun b_next!72011 () Bool)

(assert (=> b!2470985 (= b_free!71307 (not b_next!72011))))

(declare-fun tp!789369 () Bool)

(declare-fun b_and!187147 () Bool)

(assert (=> b!2470985 (= tp!789369 b_and!187147)))

(declare-fun b!2470979 () Bool)

(declare-fun b_free!71309 () Bool)

(declare-fun b_next!72013 () Bool)

(assert (=> b!2470979 (= b_free!71309 (not b_next!72013))))

(declare-fun tp!789356 () Bool)

(declare-fun b_and!187149 () Bool)

(assert (=> b!2470979 (= tp!789356 b_and!187149)))

(declare-fun b_free!71311 () Bool)

(declare-fun b_next!72015 () Bool)

(assert (=> b!2470979 (= b_free!71311 (not b_next!72015))))

(declare-fun tp!789363 () Bool)

(declare-fun b_and!187151 () Bool)

(assert (=> b!2470979 (= tp!789363 b_and!187151)))

(declare-fun b!2470982 () Bool)

(declare-fun b_free!71313 () Bool)

(declare-fun b_next!72017 () Bool)

(assert (=> b!2470982 (= b_free!71313 (not b_next!72017))))

(declare-fun tp!789359 () Bool)

(declare-fun b_and!187153 () Bool)

(assert (=> b!2470982 (= tp!789359 b_and!187153)))

(declare-fun b_free!71315 () Bool)

(declare-fun b_next!72019 () Bool)

(assert (=> b!2470982 (= b_free!71315 (not b_next!72019))))

(declare-fun tp!789358 () Bool)

(declare-fun b_and!187155 () Bool)

(assert (=> b!2470982 (= tp!789358 b_and!187155)))

(declare-fun tp!789365 () Bool)

(declare-datatypes ((List!28890 0))(
  ( (Nil!28790) (Cons!28790 (h!34191 (_ BitVec 16)) (t!209901 List!28890)) )
))
(declare-datatypes ((TokenValue!4670 0))(
  ( (FloatLiteralValue!9340 (text!33135 List!28890)) (TokenValueExt!4669 (__x!18595 Int)) (Broken!23350 (value!143175 List!28890)) (Object!4769) (End!4670) (Def!4670) (Underscore!4670) (Match!4670) (Else!4670) (Error!4670) (Case!4670) (If!4670) (Extends!4670) (Abstract!4670) (Class!4670) (Val!4670) (DelimiterValue!9340 (del!4730 List!28890)) (KeywordValue!4676 (value!143176 List!28890)) (CommentValue!9340 (value!143177 List!28890)) (WhitespaceValue!9340 (value!143178 List!28890)) (IndentationValue!4670 (value!143179 List!28890)) (String!31647) (Int32!4670) (Broken!23351 (value!143180 List!28890)) (Boolean!4671) (Unit!42142) (OperatorValue!4673 (op!4730 List!28890)) (IdentifierValue!9340 (value!143181 List!28890)) (IdentifierValue!9341 (value!143182 List!28890)) (WhitespaceValue!9341 (value!143183 List!28890)) (True!9340) (False!9340) (Broken!23352 (value!143184 List!28890)) (Broken!23353 (value!143185 List!28890)) (True!9341) (RightBrace!4670) (RightBracket!4670) (Colon!4670) (Null!4670) (Comma!4670) (LeftBracket!4670) (False!9341) (LeftBrace!4670) (ImaginaryLiteralValue!4670 (text!33136 List!28890)) (StringLiteralValue!14010 (value!143186 List!28890)) (EOFValue!4670 (value!143187 List!28890)) (IdentValue!4670 (value!143188 List!28890)) (DelimiterValue!9341 (value!143189 List!28890)) (DedentValue!4670 (value!143190 List!28890)) (NewLineValue!4670 (value!143191 List!28890)) (IntegerValue!14010 (value!143192 (_ BitVec 32)) (text!33137 List!28890)) (IntegerValue!14011 (value!143193 Int) (text!33138 List!28890)) (Times!4670) (Or!4670) (Equal!4670) (Minus!4670) (Broken!23354 (value!143194 List!28890)) (And!4670) (Div!4670) (LessEqual!4670) (Mod!4670) (Concat!11942) (Not!4670) (Plus!4670) (SpaceValue!4670 (value!143195 List!28890)) (IntegerValue!14012 (value!143196 Int) (text!33139 List!28890)) (StringLiteralValue!14011 (text!33140 List!28890)) (FloatLiteralValue!9341 (text!33141 List!28890)) (BytesLiteralValue!4670 (value!143197 List!28890)) (CommentValue!9341 (value!143198 List!28890)) (StringLiteralValue!14012 (value!143199 List!28890)) (ErrorTokenValue!4670 (msg!4731 List!28890)) )
))
(declare-datatypes ((C!14702 0))(
  ( (C!14703 (val!8611 Int)) )
))
(declare-datatypes ((List!28891 0))(
  ( (Nil!28791) (Cons!28791 (h!34192 C!14702) (t!209902 List!28891)) )
))
(declare-datatypes ((IArray!18405 0))(
  ( (IArray!18406 (innerList!9260 List!28891)) )
))
(declare-datatypes ((Conc!9200 0))(
  ( (Node!9200 (left!22093 Conc!9200) (right!22423 Conc!9200) (csize!18630 Int) (cheight!9411 Int)) (Leaf!13750 (xs!12184 IArray!18405) (csize!18631 Int)) (Empty!9200) )
))
(declare-datatypes ((BalanceConc!18014 0))(
  ( (BalanceConc!18015 (c!393686 Conc!9200)) )
))
(declare-datatypes ((Regex!7272 0))(
  ( (ElementMatch!7272 (c!393687 C!14702)) (Concat!11943 (regOne!15056 Regex!7272) (regTwo!15056 Regex!7272)) (EmptyExpr!7272) (Star!7272 (reg!7601 Regex!7272)) (EmptyLang!7272) (Union!7272 (regOne!15057 Regex!7272) (regTwo!15057 Regex!7272)) )
))
(declare-datatypes ((String!31648 0))(
  ( (String!31649 (value!143200 String)) )
))
(declare-datatypes ((TokenValueInjection!8840 0))(
  ( (TokenValueInjection!8841 (toValue!6348 Int) (toChars!6207 Int)) )
))
(declare-datatypes ((Rule!8768 0))(
  ( (Rule!8769 (regex!4484 Regex!7272) (tag!4974 String!31648) (isSeparator!4484 Bool) (transformation!4484 TokenValueInjection!8840)) )
))
(declare-datatypes ((List!28892 0))(
  ( (Nil!28792) (Cons!28792 (h!34193 Rule!8768) (t!209903 List!28892)) )
))
(declare-fun rules!4472 () List!28892)

(declare-fun e!1567028 () Bool)

(declare-fun b!2470971 () Bool)

(declare-fun e!1567041 () Bool)

(declare-fun inv!38880 (String!31648) Bool)

(declare-fun inv!38883 (TokenValueInjection!8840) Bool)

(assert (=> b!2470971 (= e!1567028 (and tp!789365 (inv!38880 (tag!4974 (h!34193 rules!4472))) (inv!38883 (transformation!4484 (h!34193 rules!4472))) e!1567041))))

(declare-fun b!2470972 () Bool)

(declare-fun res!1046241 () Bool)

(declare-fun e!1567034 () Bool)

(assert (=> b!2470972 (=> (not res!1046241) (not e!1567034))))

(declare-datatypes ((LexerInterface!4081 0))(
  ( (LexerInterfaceExt!4078 (__x!18596 Int)) (Lexer!4079) )
))
(declare-fun thiss!27932 () LexerInterface!4081)

(declare-fun rulesInvariant!3581 (LexerInterface!4081 List!28892) Bool)

(assert (=> b!2470972 (= res!1046241 (rulesInvariant!3581 thiss!27932 rules!4472))))

(declare-fun b!2470973 () Bool)

(declare-fun res!1046236 () Bool)

(assert (=> b!2470973 (=> (not res!1046236) (not e!1567034))))

(declare-datatypes ((Token!8438 0))(
  ( (Token!8439 (value!143201 TokenValue!4670) (rule!6842 Rule!8768) (size!22409 Int) (originalCharacters!5250 List!28891)) )
))
(declare-datatypes ((List!28893 0))(
  ( (Nil!28793) (Cons!28793 (h!34194 Token!8438) (t!209904 List!28893)) )
))
(declare-fun l!6611 () List!28893)

(declare-fun i!1803 () Int)

(declare-fun t1!67 () Token!8438)

(declare-fun apply!6787 (List!28893 Int) Token!8438)

(assert (=> b!2470973 (= res!1046236 (= (apply!6787 l!6611 i!1803) t1!67))))

(declare-fun e!1567023 () Bool)

(declare-fun tp!789370 () Bool)

(declare-fun b!2470974 () Bool)

(declare-fun e!1567031 () Bool)

(assert (=> b!2470974 (= e!1567023 (and tp!789370 (inv!38880 (tag!4974 (rule!6842 t1!67))) (inv!38883 (transformation!4484 (rule!6842 t1!67))) e!1567031))))

(declare-fun b!2470975 () Bool)

(declare-fun res!1046233 () Bool)

(assert (=> b!2470975 (=> (not res!1046233) (not e!1567034))))

(assert (=> b!2470975 (= res!1046233 (= i!1803 0))))

(declare-fun b!2470976 () Bool)

(declare-fun res!1046238 () Bool)

(assert (=> b!2470976 (=> (not res!1046238) (not e!1567034))))

(declare-fun isEmpty!16729 (List!28892) Bool)

(assert (=> b!2470976 (= res!1046238 (not (isEmpty!16729 rules!4472)))))

(declare-fun b!2470977 () Bool)

(declare-fun e!1567038 () Bool)

(declare-fun tp!789354 () Bool)

(declare-fun e!1567029 () Bool)

(assert (=> b!2470977 (= e!1567038 (and tp!789354 (inv!38880 (tag!4974 (rule!6842 (h!34194 l!6611)))) (inv!38883 (transformation!4484 (rule!6842 (h!34194 l!6611)))) e!1567029))))

(assert (=> b!2470979 (= e!1567031 (and tp!789356 tp!789363))))

(declare-fun b!2470980 () Bool)

(declare-fun res!1046232 () Bool)

(assert (=> b!2470980 (=> (not res!1046232) (not e!1567034))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!620 (LexerInterface!4081 List!28893 List!28892) Bool)

(assert (=> b!2470980 (= res!1046232 (tokensListTwoByTwoPredicateSeparableList!620 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2470981 () Bool)

(declare-fun e!1567035 () Bool)

(declare-fun tp!789360 () Bool)

(assert (=> b!2470981 (= e!1567035 (and e!1567028 tp!789360))))

(assert (=> b!2470982 (= e!1567041 (and tp!789359 tp!789358))))

(declare-fun b!2470983 () Bool)

(declare-fun res!1046237 () Bool)

(assert (=> b!2470983 (=> (not res!1046237) (not e!1567034))))

(declare-fun t2!67 () Token!8438)

(assert (=> b!2470983 (= res!1046237 (= (apply!6787 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun b!2470984 () Bool)

(declare-fun res!1046234 () Bool)

(assert (=> b!2470984 (=> (not res!1046234) (not e!1567034))))

(assert (=> b!2470984 (= res!1046234 (>= i!1803 0))))

(declare-fun e!1567040 () Bool)

(assert (=> b!2470985 (= e!1567040 (and tp!789355 tp!789369))))

(declare-fun b!2470986 () Bool)

(assert (=> b!2470986 (= e!1567034 false)))

(declare-fun lt!883197 () Bool)

(declare-fun separableTokensPredicate!858 (LexerInterface!4081 Token!8438 Token!8438 List!28892) Bool)

(assert (=> b!2470986 (= lt!883197 (separableTokensPredicate!858 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun b!2470987 () Bool)

(declare-fun tp!789366 () Bool)

(declare-fun e!1567024 () Bool)

(declare-fun e!1567025 () Bool)

(declare-fun inv!38884 (Token!8438) Bool)

(assert (=> b!2470987 (= e!1567024 (and (inv!38884 (h!34194 l!6611)) e!1567025 tp!789366))))

(declare-fun tp!789362 () Bool)

(declare-fun b!2470988 () Bool)

(declare-fun inv!21 (TokenValue!4670) Bool)

(assert (=> b!2470988 (= e!1567025 (and (inv!21 (value!143201 (h!34194 l!6611))) e!1567038 tp!789362))))

(declare-fun b!2470989 () Bool)

(declare-fun e!1567033 () Bool)

(declare-fun e!1567027 () Bool)

(declare-fun tp!789368 () Bool)

(assert (=> b!2470989 (= e!1567027 (and (inv!21 (value!143201 t2!67)) e!1567033 tp!789368))))

(declare-fun tp!789361 () Bool)

(declare-fun e!1567043 () Bool)

(declare-fun b!2470990 () Bool)

(assert (=> b!2470990 (= e!1567043 (and (inv!21 (value!143201 t1!67)) e!1567023 tp!789361))))

(declare-fun b!2470991 () Bool)

(declare-fun tp!789367 () Bool)

(assert (=> b!2470991 (= e!1567033 (and tp!789367 (inv!38880 (tag!4974 (rule!6842 t2!67))) (inv!38883 (transformation!4484 (rule!6842 t2!67))) e!1567040))))

(declare-fun res!1046235 () Bool)

(assert (=> start!240996 (=> (not res!1046235) (not e!1567034))))

(assert (=> start!240996 (= res!1046235 (is-Lexer!4079 thiss!27932))))

(assert (=> start!240996 e!1567034))

(assert (=> start!240996 true))

(assert (=> start!240996 e!1567035))

(assert (=> start!240996 (and (inv!38884 t2!67) e!1567027)))

(assert (=> start!240996 e!1567024))

(assert (=> start!240996 (and (inv!38884 t1!67) e!1567043)))

(assert (=> b!2470978 (= e!1567029 (and tp!789357 tp!789364))))

(declare-fun b!2470992 () Bool)

(declare-fun res!1046239 () Bool)

(assert (=> b!2470992 (=> (not res!1046239) (not e!1567034))))

(declare-fun size!22410 (List!28893) Int)

(assert (=> b!2470992 (= res!1046239 (< (+ 1 i!1803) (size!22410 l!6611)))))

(declare-fun b!2470993 () Bool)

(declare-fun res!1046240 () Bool)

(assert (=> b!2470993 (=> (not res!1046240) (not e!1567034))))

(declare-fun rulesProduceEachTokenIndividuallyList!1397 (LexerInterface!4081 List!28892 List!28893) Bool)

(assert (=> b!2470993 (= res!1046240 (rulesProduceEachTokenIndividuallyList!1397 thiss!27932 rules!4472 l!6611))))

(assert (= (and start!240996 res!1046235) b!2470976))

(assert (= (and b!2470976 res!1046238) b!2470972))

(assert (= (and b!2470972 res!1046241) b!2470993))

(assert (= (and b!2470993 res!1046240) b!2470980))

(assert (= (and b!2470980 res!1046232) b!2470984))

(assert (= (and b!2470984 res!1046234) b!2470992))

(assert (= (and b!2470992 res!1046239) b!2470973))

(assert (= (and b!2470973 res!1046236) b!2470983))

(assert (= (and b!2470983 res!1046237) b!2470975))

(assert (= (and b!2470975 res!1046233) b!2470986))

(assert (= b!2470971 b!2470982))

(assert (= b!2470981 b!2470971))

(assert (= (and start!240996 (is-Cons!28792 rules!4472)) b!2470981))

(assert (= b!2470991 b!2470985))

(assert (= b!2470989 b!2470991))

(assert (= start!240996 b!2470989))

(assert (= b!2470977 b!2470978))

(assert (= b!2470988 b!2470977))

(assert (= b!2470987 b!2470988))

(assert (= (and start!240996 (is-Cons!28793 l!6611)) b!2470987))

(assert (= b!2470974 b!2470979))

(assert (= b!2470990 b!2470974))

(assert (= start!240996 b!2470990))

(declare-fun m!2839983 () Bool)

(assert (=> b!2470973 m!2839983))

(declare-fun m!2839985 () Bool)

(assert (=> b!2470992 m!2839985))

(declare-fun m!2839987 () Bool)

(assert (=> b!2470971 m!2839987))

(declare-fun m!2839989 () Bool)

(assert (=> b!2470971 m!2839989))

(declare-fun m!2839991 () Bool)

(assert (=> b!2470983 m!2839991))

(declare-fun m!2839993 () Bool)

(assert (=> b!2470972 m!2839993))

(declare-fun m!2839995 () Bool)

(assert (=> b!2470989 m!2839995))

(declare-fun m!2839997 () Bool)

(assert (=> b!2470974 m!2839997))

(declare-fun m!2839999 () Bool)

(assert (=> b!2470974 m!2839999))

(declare-fun m!2840001 () Bool)

(assert (=> b!2470991 m!2840001))

(declare-fun m!2840003 () Bool)

(assert (=> b!2470991 m!2840003))

(declare-fun m!2840005 () Bool)

(assert (=> b!2470988 m!2840005))

(declare-fun m!2840007 () Bool)

(assert (=> b!2470986 m!2840007))

(declare-fun m!2840009 () Bool)

(assert (=> b!2470977 m!2840009))

(declare-fun m!2840011 () Bool)

(assert (=> b!2470977 m!2840011))

(declare-fun m!2840013 () Bool)

(assert (=> b!2470980 m!2840013))

(declare-fun m!2840015 () Bool)

(assert (=> b!2470976 m!2840015))

(declare-fun m!2840017 () Bool)

(assert (=> b!2470990 m!2840017))

(declare-fun m!2840019 () Bool)

(assert (=> b!2470993 m!2840019))

(declare-fun m!2840021 () Bool)

(assert (=> start!240996 m!2840021))

(declare-fun m!2840023 () Bool)

(assert (=> start!240996 m!2840023))

(declare-fun m!2840025 () Bool)

(assert (=> b!2470987 m!2840025))

(push 1)

(assert (not b!2470989))

(assert (not b!2470986))

(assert (not start!240996))

(assert b_and!187151)

(assert (not b_next!72011))

(assert (not b_next!72015))

(assert (not b!2470993))

(assert (not b!2470981))

(assert (not b_next!72005))

(assert b_and!187141)

(assert (not b!2470988))

(assert (not b!2470983))

(assert (not b!2470992))

(assert (not b_next!72017))

(assert (not b!2470971))

(assert (not b!2470980))

(assert (not b!2470974))

(assert (not b_next!72009))

(assert (not b!2470973))

(assert b_and!187143)

(assert b_and!187155)

(assert (not b_next!72019))

(assert (not b_next!72013))

(assert (not b!2470991))

(assert (not b!2470972))

(assert (not b!2470987))

(assert b_and!187149)

(assert (not b!2470990))

(assert b_and!187145)

(assert b_and!187153)

(assert (not b!2470976))

(assert (not b_next!72007))

(assert b_and!187147)

(assert (not b!2470977))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!72017))

(assert (not b_next!72009))

(assert b_and!187149)

(assert b_and!187151)

(assert (not b_next!72011))

(assert (not b_next!72015))

(assert (not b_next!72007))

(assert (not b_next!72005))

(assert b_and!187147)

(assert b_and!187141)

(assert b_and!187143)

(assert b_and!187155)

(assert (not b_next!72019))

(assert (not b_next!72013))

(assert b_and!187145)

(assert b_and!187153)

(check-sat)

(pop 1)

