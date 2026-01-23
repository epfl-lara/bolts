; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757872 () Bool)

(assert start!757872)

(declare-fun b!8047908 () Bool)

(declare-fun b_free!136607 () Bool)

(declare-fun b_next!137397 () Bool)

(assert (=> b!8047908 (= b_free!136607 (not b_next!137397))))

(declare-fun tp!2413040 () Bool)

(declare-fun b_and!355043 () Bool)

(assert (=> b!8047908 (= tp!2413040 b_and!355043)))

(declare-fun b_free!136609 () Bool)

(declare-fun b_next!137399 () Bool)

(assert (=> b!8047908 (= b_free!136609 (not b_next!137399))))

(declare-fun tp!2413041 () Bool)

(declare-fun b_and!355045 () Bool)

(assert (=> b!8047908 (= tp!2413041 b_and!355045)))

(declare-fun b!8047906 () Bool)

(assert (=> b!8047906 true))

(declare-fun b!8047905 () Bool)

(declare-fun e!4741813 () Bool)

(declare-fun e!4741816 () Bool)

(declare-fun tp!2413039 () Bool)

(declare-datatypes ((C!44058 0))(
  ( (C!44059 (val!32805 Int)) )
))
(declare-datatypes ((List!75562 0))(
  ( (Nil!75436) (Cons!75436 (h!81884 C!44058) (t!391334 List!75562)) )
))
(declare-datatypes ((IArray!32175 0))(
  ( (IArray!32176 (innerList!16145 List!75562)) )
))
(declare-datatypes ((List!75563 0))(
  ( (Nil!75437) (Cons!75437 (h!81885 (_ BitVec 16)) (t!391335 List!75563)) )
))
(declare-datatypes ((Regex!21860 0))(
  ( (ElementMatch!21860 (c!1475519 C!44058)) (Concat!30969 (regOne!44232 Regex!21860) (regTwo!44232 Regex!21860)) (EmptyExpr!21860) (Star!21860 (reg!22189 Regex!21860)) (EmptyLang!21860) (Union!21860 (regOne!44233 Regex!21860) (regTwo!44233 Regex!21860)) )
))
(declare-datatypes ((String!85328 0))(
  ( (String!85329 (value!293470 String)) )
))
(declare-datatypes ((TokenValue!9109 0))(
  ( (FloatLiteralValue!18218 (text!64208 List!75563)) (TokenValueExt!9108 (__x!35497 Int)) (Broken!45545 (value!293471 List!75563)) (Object!9234) (End!9109) (Def!9109) (Underscore!9109) (Match!9109) (Else!9109) (Error!9109) (Case!9109) (If!9109) (Extends!9109) (Abstract!9109) (Class!9109) (Val!9109) (DelimiterValue!18218 (del!9169 List!75563)) (KeywordValue!9115 (value!293472 List!75563)) (CommentValue!18218 (value!293473 List!75563)) (WhitespaceValue!18218 (value!293474 List!75563)) (IndentationValue!9109 (value!293475 List!75563)) (String!85330) (Int32!9109) (Broken!45546 (value!293476 List!75563)) (Boolean!9110) (Unit!171172) (OperatorValue!9112 (op!9169 List!75563)) (IdentifierValue!18218 (value!293477 List!75563)) (IdentifierValue!18219 (value!293478 List!75563)) (WhitespaceValue!18219 (value!293479 List!75563)) (True!18218) (False!18218) (Broken!45547 (value!293480 List!75563)) (Broken!45548 (value!293481 List!75563)) (True!18219) (RightBrace!9109) (RightBracket!9109) (Colon!9109) (Null!9109) (Comma!9109) (LeftBracket!9109) (False!18219) (LeftBrace!9109) (ImaginaryLiteralValue!9109 (text!64209 List!75563)) (StringLiteralValue!27327 (value!293482 List!75563)) (EOFValue!9109 (value!293483 List!75563)) (IdentValue!9109 (value!293484 List!75563)) (DelimiterValue!18219 (value!293485 List!75563)) (DedentValue!9109 (value!293486 List!75563)) (NewLineValue!9109 (value!293487 List!75563)) (IntegerValue!27327 (value!293488 (_ BitVec 32)) (text!64210 List!75563)) (IntegerValue!27328 (value!293489 Int) (text!64211 List!75563)) (Times!9109) (Or!9109) (Equal!9109) (Minus!9109) (Broken!45549 (value!293490 List!75563)) (And!9109) (Div!9109) (LessEqual!9109) (Mod!9109) (Concat!30970) (Not!9109) (Plus!9109) (SpaceValue!9109 (value!293491 List!75563)) (IntegerValue!27329 (value!293492 Int) (text!64212 List!75563)) (StringLiteralValue!27328 (text!64213 List!75563)) (FloatLiteralValue!18219 (text!64214 List!75563)) (BytesLiteralValue!9109 (value!293493 List!75563)) (CommentValue!18219 (value!293494 List!75563)) (StringLiteralValue!27329 (value!293495 List!75563)) (ErrorTokenValue!9109 (msg!9170 List!75563)) )
))
(declare-datatypes ((Conc!16057 0))(
  ( (Node!16057 (left!57436 Conc!16057) (right!57766 Conc!16057) (csize!32344 Int) (cheight!16268 Int)) (Leaf!30763 (xs!19455 IArray!32175) (csize!32345 Int)) (Empty!16057) )
))
(declare-datatypes ((BalanceConc!31070 0))(
  ( (BalanceConc!31071 (c!1475520 Conc!16057)) )
))
(declare-datatypes ((TokenValueInjection!17526 0))(
  ( (TokenValueInjection!17527 (toValue!11872 Int) (toChars!11731 Int)) )
))
(declare-datatypes ((Rule!17378 0))(
  ( (Rule!17379 (regex!8789 Regex!21860) (tag!9653 String!85328) (isSeparator!8789 Bool) (transformation!8789 TokenValueInjection!17526)) )
))
(declare-datatypes ((List!75564 0))(
  ( (Nil!75438) (Cons!75438 (h!81886 Rule!17378) (t!391336 List!75564)) )
))
(declare-fun rs!157 () List!75564)

(declare-fun inv!97143 (String!85328) Bool)

(declare-fun inv!97146 (TokenValueInjection!17526) Bool)

(assert (=> b!8047905 (= e!4741813 (and tp!2413039 (inv!97143 (tag!9653 (h!81886 rs!157))) (inv!97146 (transformation!8789 (h!81886 rs!157))) e!4741816))))

(declare-fun e!4741814 () Bool)

(declare-fun e!4741815 () Bool)

(declare-fun lambda!472788 () Int)

(declare-fun forall!18476 (List!75564 Int) Bool)

(assert (=> b!8047906 (= e!4741814 (not (= e!4741815 (forall!18476 rs!157 lambda!472788))))))

(declare-fun res!3181411 () Bool)

(assert (=> b!8047906 (=> (not res!3181411) (not e!4741815))))

(declare-datatypes ((LexerInterface!8377 0))(
  ( (LexerInterfaceExt!8374 (__x!35498 Int)) (Lexer!8375) )
))
(declare-fun thiss!10883 () LexerInterface!8377)

(declare-fun ruleValid!4005 (LexerInterface!8377 Rule!17378) Bool)

(assert (=> b!8047906 (= res!3181411 (ruleValid!4005 thiss!10883 (h!81886 rs!157)))))

(declare-fun b!8047907 () Bool)

(declare-fun e!4741817 () Bool)

(declare-fun tp!2413038 () Bool)

(assert (=> b!8047907 (= e!4741817 (and e!4741813 tp!2413038))))

(declare-fun b!8047909 () Bool)

(declare-fun rulesValidInductive!3480 (LexerInterface!8377 List!75564) Bool)

(assert (=> b!8047909 (= e!4741815 (rulesValidInductive!3480 thiss!10883 (t!391336 rs!157)))))

(assert (=> b!8047908 (= e!4741816 (and tp!2413040 tp!2413041))))

(declare-fun res!3181412 () Bool)

(assert (=> start!757872 (=> (not res!3181412) (not e!4741814))))

(assert (=> start!757872 (= res!3181412 (and (is-Lexer!8375 thiss!10883) (is-Cons!75438 rs!157)))))

(assert (=> start!757872 e!4741814))

(assert (=> start!757872 true))

(assert (=> start!757872 e!4741817))

(assert (= (and start!757872 res!3181412) b!8047906))

(assert (= (and b!8047906 res!3181411) b!8047909))

(assert (= b!8047905 b!8047908))

(assert (= b!8047907 b!8047905))

(assert (= (and start!757872 (is-Cons!75438 rs!157)) b!8047907))

(declare-fun m!8399298 () Bool)

(assert (=> b!8047905 m!8399298))

(declare-fun m!8399300 () Bool)

(assert (=> b!8047905 m!8399300))

(declare-fun m!8399302 () Bool)

(assert (=> b!8047906 m!8399302))

(declare-fun m!8399304 () Bool)

(assert (=> b!8047906 m!8399304))

(declare-fun m!8399306 () Bool)

(assert (=> b!8047909 m!8399306))

(push 1)

(assert b_and!355045)

(assert (not b!8047907))

(assert (not b_next!137397))

(assert (not b!8047905))

(assert (not b!8047909))

(assert b_and!355043)

(assert (not b_next!137399))

(assert (not b!8047906))

(check-sat)

(pop 1)

(push 1)

(assert b_and!355045)

(assert b_and!355043)

(assert (not b_next!137397))

(assert (not b_next!137399))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1971787 () Bool)

(declare-fun d!2396854 () Bool)

(assert (= bs!1971787 (and d!2396854 b!8047906)))

(declare-fun lambda!472794 () Int)

(assert (=> bs!1971787 (= lambda!472794 lambda!472788)))

(assert (=> d!2396854 true))

(declare-fun lt!2722913 () Bool)

(assert (=> d!2396854 (= lt!2722913 (forall!18476 (t!391336 rs!157) lambda!472794))))

(declare-fun e!4741842 () Bool)

(assert (=> d!2396854 (= lt!2722913 e!4741842)))

(declare-fun res!3181428 () Bool)

(assert (=> d!2396854 (=> res!3181428 e!4741842)))

(assert (=> d!2396854 (= res!3181428 (not (is-Cons!75438 (t!391336 rs!157))))))

(assert (=> d!2396854 (= (rulesValidInductive!3480 thiss!10883 (t!391336 rs!157)) lt!2722913)))

(declare-fun b!8047933 () Bool)

(declare-fun e!4741841 () Bool)

(assert (=> b!8047933 (= e!4741842 e!4741841)))

(declare-fun res!3181427 () Bool)

(assert (=> b!8047933 (=> (not res!3181427) (not e!4741841))))

(assert (=> b!8047933 (= res!3181427 (ruleValid!4005 thiss!10883 (h!81886 (t!391336 rs!157))))))

(declare-fun b!8047934 () Bool)

(assert (=> b!8047934 (= e!4741841 (rulesValidInductive!3480 thiss!10883 (t!391336 (t!391336 rs!157))))))

(assert (= (and d!2396854 (not res!3181428)) b!8047933))

(assert (= (and b!8047933 res!3181427) b!8047934))

(declare-fun m!8399318 () Bool)

(assert (=> d!2396854 m!8399318))

(declare-fun m!8399320 () Bool)

(assert (=> b!8047933 m!8399320))

(declare-fun m!8399322 () Bool)

(assert (=> b!8047934 m!8399322))

(assert (=> b!8047909 d!2396854))

(declare-fun d!2396856 () Bool)

(declare-fun res!3181433 () Bool)

(declare-fun e!4741847 () Bool)

(assert (=> d!2396856 (=> res!3181433 e!4741847)))

(assert (=> d!2396856 (= res!3181433 (is-Nil!75438 rs!157))))

(assert (=> d!2396856 (= (forall!18476 rs!157 lambda!472788) e!4741847)))

(declare-fun b!8047939 () Bool)

(declare-fun e!4741848 () Bool)

(assert (=> b!8047939 (= e!4741847 e!4741848)))

(declare-fun res!3181434 () Bool)

(assert (=> b!8047939 (=> (not res!3181434) (not e!4741848))))

(declare-fun dynLambda!30265 (Int Rule!17378) Bool)

(assert (=> b!8047939 (= res!3181434 (dynLambda!30265 lambda!472788 (h!81886 rs!157)))))

(declare-fun b!8047940 () Bool)

(assert (=> b!8047940 (= e!4741848 (forall!18476 (t!391336 rs!157) lambda!472788))))

(assert (= (and d!2396856 (not res!3181433)) b!8047939))

(assert (= (and b!8047939 res!3181434) b!8047940))

(declare-fun b_lambda!290343 () Bool)

(assert (=> (not b_lambda!290343) (not b!8047939)))

(declare-fun m!8399324 () Bool)

(assert (=> b!8047939 m!8399324))

(declare-fun m!8399326 () Bool)

(assert (=> b!8047940 m!8399326))

(assert (=> b!8047906 d!2396856))

(declare-fun d!2396860 () Bool)

(declare-fun res!3181445 () Bool)

(declare-fun e!4741857 () Bool)

(assert (=> d!2396860 (=> (not res!3181445) (not e!4741857))))

(declare-fun validRegex!12056 (Regex!21860) Bool)

(assert (=> d!2396860 (= res!3181445 (validRegex!12056 (regex!8789 (h!81886 rs!157))))))

(assert (=> d!2396860 (= (ruleValid!4005 thiss!10883 (h!81886 rs!157)) e!4741857)))

(declare-fun b!8047951 () Bool)

(declare-fun res!3181446 () Bool)

(assert (=> b!8047951 (=> (not res!3181446) (not e!4741857))))

(declare-fun nullable!9785 (Regex!21860) Bool)

(assert (=> b!8047951 (= res!3181446 (not (nullable!9785 (regex!8789 (h!81886 rs!157)))))))

(declare-fun b!8047952 () Bool)

(assert (=> b!8047952 (= e!4741857 (not (= (tag!9653 (h!81886 rs!157)) (String!85329 ""))))))

(assert (= (and d!2396860 res!3181445) b!8047951))

(assert (= (and b!8047951 res!3181446) b!8047952))

(declare-fun m!8399328 () Bool)

(assert (=> d!2396860 m!8399328))

(declare-fun m!8399330 () Bool)

(assert (=> b!8047951 m!8399330))

(assert (=> b!8047906 d!2396860))

(declare-fun d!2396862 () Bool)

(assert (=> d!2396862 (= (inv!97143 (tag!9653 (h!81886 rs!157))) (= (mod (str.len (value!293470 (tag!9653 (h!81886 rs!157)))) 2) 0))))

(assert (=> b!8047905 d!2396862))

(declare-fun d!2396866 () Bool)

(declare-fun res!3181451 () Bool)

(declare-fun e!4741862 () Bool)

(assert (=> d!2396866 (=> (not res!3181451) (not e!4741862))))

(declare-fun semiInverseModEq!3906 (Int Int) Bool)

(assert (=> d!2396866 (= res!3181451 (semiInverseModEq!3906 (toChars!11731 (transformation!8789 (h!81886 rs!157))) (toValue!11872 (transformation!8789 (h!81886 rs!157)))))))

(assert (=> d!2396866 (= (inv!97146 (transformation!8789 (h!81886 rs!157))) e!4741862)))

(declare-fun b!8047957 () Bool)

(declare-fun equivClasses!3719 (Int Int) Bool)

(assert (=> b!8047957 (= e!4741862 (equivClasses!3719 (toChars!11731 (transformation!8789 (h!81886 rs!157))) (toValue!11872 (transformation!8789 (h!81886 rs!157)))))))

(assert (= (and d!2396866 res!3181451) b!8047957))

(declare-fun m!8399338 () Bool)

(assert (=> d!2396866 m!8399338))

(declare-fun m!8399340 () Bool)

(assert (=> b!8047957 m!8399340))

(assert (=> b!8047905 d!2396866))

(declare-fun b!8047973 () Bool)

(declare-fun b_free!136615 () Bool)

(declare-fun b_next!137405 () Bool)

(assert (=> b!8047973 (= b_free!136615 (not b_next!137405))))

(declare-fun tp!2413062 () Bool)

(declare-fun b_and!355051 () Bool)

(assert (=> b!8047973 (= tp!2413062 b_and!355051)))

(declare-fun b_free!136617 () Bool)

(declare-fun b_next!137407 () Bool)

(assert (=> b!8047973 (= b_free!136617 (not b_next!137407))))

(declare-fun tp!2413063 () Bool)

(declare-fun b_and!355053 () Bool)

(assert (=> b!8047973 (= tp!2413063 b_and!355053)))

(declare-fun e!4741876 () Bool)

(assert (=> b!8047973 (= e!4741876 (and tp!2413062 tp!2413063))))

(declare-fun b!8047972 () Bool)

(declare-fun tp!2413065 () Bool)

(declare-fun e!4741877 () Bool)

(assert (=> b!8047972 (= e!4741877 (and tp!2413065 (inv!97143 (tag!9653 (h!81886 (t!391336 rs!157)))) (inv!97146 (transformation!8789 (h!81886 (t!391336 rs!157)))) e!4741876))))

(declare-fun b!8047971 () Bool)

(declare-fun e!4741878 () Bool)

(declare-fun tp!2413064 () Bool)

(assert (=> b!8047971 (= e!4741878 (and e!4741877 tp!2413064))))

(assert (=> b!8047907 (= tp!2413038 e!4741878)))

(assert (= b!8047972 b!8047973))

(assert (= b!8047971 b!8047972))

(assert (= (and b!8047907 (is-Cons!75438 (t!391336 rs!157))) b!8047971))

(declare-fun m!8399346 () Bool)

(assert (=> b!8047972 m!8399346))

(declare-fun m!8399348 () Bool)

(assert (=> b!8047972 m!8399348))

(declare-fun b!8047989 () Bool)

(declare-fun e!4741884 () Bool)

(declare-fun tp!2413079 () Bool)

(declare-fun tp!2413077 () Bool)

(assert (=> b!8047989 (= e!4741884 (and tp!2413079 tp!2413077))))

(declare-fun b!8047986 () Bool)

(declare-fun tp_is_empty!54667 () Bool)

(assert (=> b!8047986 (= e!4741884 tp_is_empty!54667)))

(declare-fun b!8047988 () Bool)

(declare-fun tp!2413078 () Bool)

(assert (=> b!8047988 (= e!4741884 tp!2413078)))

(assert (=> b!8047905 (= tp!2413039 e!4741884)))

(declare-fun b!8047987 () Bool)

(declare-fun tp!2413076 () Bool)

(declare-fun tp!2413080 () Bool)

(assert (=> b!8047987 (= e!4741884 (and tp!2413076 tp!2413080))))

(assert (= (and b!8047905 (is-ElementMatch!21860 (regex!8789 (h!81886 rs!157)))) b!8047986))

(assert (= (and b!8047905 (is-Concat!30969 (regex!8789 (h!81886 rs!157)))) b!8047987))

(assert (= (and b!8047905 (is-Star!21860 (regex!8789 (h!81886 rs!157)))) b!8047988))

(assert (= (and b!8047905 (is-Union!21860 (regex!8789 (h!81886 rs!157)))) b!8047989))

(declare-fun b_lambda!290347 () Bool)

(assert (= b_lambda!290343 (or b!8047906 b_lambda!290347)))

(declare-fun bs!1971789 () Bool)

(declare-fun d!2396874 () Bool)

(assert (= bs!1971789 (and d!2396874 b!8047906)))

(assert (=> bs!1971789 (= (dynLambda!30265 lambda!472788 (h!81886 rs!157)) (ruleValid!4005 thiss!10883 (h!81886 rs!157)))))

(assert (=> bs!1971789 m!8399304))

(assert (=> b!8047939 d!2396874))

(push 1)

(assert (not b!8047971))

(assert (not b!8047933))

(assert tp_is_empty!54667)

(assert (not d!2396854))

(assert (not bs!1971789))

(assert (not b_next!137397))

(assert (not b!8047988))

(assert (not d!2396860))

(assert b_and!355043)

(assert (not b_next!137399))

(assert (not b_lambda!290347))

(assert (not d!2396866))

(assert (not b!8047940))

(assert b_and!355051)

(assert (not b!8047972))

(assert (not b!8047987))

(assert b_and!355053)

(assert b_and!355045)

(assert (not b!8047989))

(assert (not b!8047951))

(assert (not b_next!137405))

(assert (not b_next!137407))

(assert (not b!8047934))

(assert (not b!8047957))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!137397))

(assert b_and!355043)

(assert (not b_next!137399))

(assert b_and!355051)

(assert b_and!355053)

(assert b_and!355045)

(assert (not b_next!137405))

(assert (not b_next!137407))

(check-sat)

(pop 1)

