; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757898 () Bool)

(assert start!757898)

(declare-fun b!8048046 () Bool)

(declare-fun b_free!136627 () Bool)

(declare-fun b_next!137417 () Bool)

(assert (=> b!8048046 (= b_free!136627 (not b_next!137417))))

(declare-fun tp!2413130 () Bool)

(declare-fun b_and!355063 () Bool)

(assert (=> b!8048046 (= tp!2413130 b_and!355063)))

(declare-fun b_free!136629 () Bool)

(declare-fun b_next!137419 () Bool)

(assert (=> b!8048046 (= b_free!136629 (not b_next!137419))))

(declare-fun tp!2413131 () Bool)

(declare-fun b_and!355065 () Bool)

(assert (=> b!8048046 (= tp!2413131 b_and!355065)))

(declare-fun b!8048043 () Bool)

(assert (=> b!8048043 true))

(declare-fun e!4741929 () Bool)

(assert (=> b!8048046 (= e!4741929 (and tp!2413130 tp!2413131))))

(declare-fun res!3181470 () Bool)

(declare-fun e!4741932 () Bool)

(assert (=> start!757898 (=> (not res!3181470) (not e!4741932))))

(declare-datatypes ((LexerInterface!8380 0))(
  ( (LexerInterfaceExt!8377 (__x!35503 Int)) (Lexer!8378) )
))
(declare-fun thiss!10883 () LexerInterface!8380)

(declare-datatypes ((C!44064 0))(
  ( (C!44065 (val!32808 Int)) )
))
(declare-datatypes ((List!75571 0))(
  ( (Nil!75445) (Cons!75445 (h!81893 C!44064) (t!391343 List!75571)) )
))
(declare-datatypes ((IArray!32181 0))(
  ( (IArray!32182 (innerList!16148 List!75571)) )
))
(declare-datatypes ((List!75572 0))(
  ( (Nil!75446) (Cons!75446 (h!81894 (_ BitVec 16)) (t!391344 List!75572)) )
))
(declare-datatypes ((Regex!21863 0))(
  ( (ElementMatch!21863 (c!1475525 C!44064)) (Concat!30975 (regOne!44238 Regex!21863) (regTwo!44238 Regex!21863)) (EmptyExpr!21863) (Star!21863 (reg!22192 Regex!21863)) (EmptyLang!21863) (Union!21863 (regOne!44239 Regex!21863) (regTwo!44239 Regex!21863)) )
))
(declare-datatypes ((String!85341 0))(
  ( (String!85342 (value!293551 String)) )
))
(declare-datatypes ((TokenValue!9112 0))(
  ( (FloatLiteralValue!18224 (text!64229 List!75572)) (TokenValueExt!9111 (__x!35504 Int)) (Broken!45560 (value!293552 List!75572)) (Object!9237) (End!9112) (Def!9112) (Underscore!9112) (Match!9112) (Else!9112) (Error!9112) (Case!9112) (If!9112) (Extends!9112) (Abstract!9112) (Class!9112) (Val!9112) (DelimiterValue!18224 (del!9172 List!75572)) (KeywordValue!9118 (value!293553 List!75572)) (CommentValue!18224 (value!293554 List!75572)) (WhitespaceValue!18224 (value!293555 List!75572)) (IndentationValue!9112 (value!293556 List!75572)) (String!85343) (Int32!9112) (Broken!45561 (value!293557 List!75572)) (Boolean!9113) (Unit!171175) (OperatorValue!9115 (op!9172 List!75572)) (IdentifierValue!18224 (value!293558 List!75572)) (IdentifierValue!18225 (value!293559 List!75572)) (WhitespaceValue!18225 (value!293560 List!75572)) (True!18224) (False!18224) (Broken!45562 (value!293561 List!75572)) (Broken!45563 (value!293562 List!75572)) (True!18225) (RightBrace!9112) (RightBracket!9112) (Colon!9112) (Null!9112) (Comma!9112) (LeftBracket!9112) (False!18225) (LeftBrace!9112) (ImaginaryLiteralValue!9112 (text!64230 List!75572)) (StringLiteralValue!27336 (value!293563 List!75572)) (EOFValue!9112 (value!293564 List!75572)) (IdentValue!9112 (value!293565 List!75572)) (DelimiterValue!18225 (value!293566 List!75572)) (DedentValue!9112 (value!293567 List!75572)) (NewLineValue!9112 (value!293568 List!75572)) (IntegerValue!27336 (value!293569 (_ BitVec 32)) (text!64231 List!75572)) (IntegerValue!27337 (value!293570 Int) (text!64232 List!75572)) (Times!9112) (Or!9112) (Equal!9112) (Minus!9112) (Broken!45564 (value!293571 List!75572)) (And!9112) (Div!9112) (LessEqual!9112) (Mod!9112) (Concat!30976) (Not!9112) (Plus!9112) (SpaceValue!9112 (value!293572 List!75572)) (IntegerValue!27338 (value!293573 Int) (text!64233 List!75572)) (StringLiteralValue!27337 (text!64234 List!75572)) (FloatLiteralValue!18225 (text!64235 List!75572)) (BytesLiteralValue!9112 (value!293574 List!75572)) (CommentValue!18225 (value!293575 List!75572)) (StringLiteralValue!27338 (value!293576 List!75572)) (ErrorTokenValue!9112 (msg!9173 List!75572)) )
))
(declare-datatypes ((Conc!16060 0))(
  ( (Node!16060 (left!57446 Conc!16060) (right!57776 Conc!16060) (csize!32350 Int) (cheight!16271 Int)) (Leaf!30767 (xs!19458 IArray!32181) (csize!32351 Int)) (Empty!16060) )
))
(declare-datatypes ((BalanceConc!31076 0))(
  ( (BalanceConc!31077 (c!1475526 Conc!16060)) )
))
(declare-datatypes ((TokenValueInjection!17532 0))(
  ( (TokenValueInjection!17533 (toValue!11875 Int) (toChars!11734 Int)) )
))
(declare-datatypes ((Rule!17384 0))(
  ( (Rule!17385 (regex!8792 Regex!21863) (tag!9656 String!85341) (isSeparator!8792 Bool) (transformation!8792 TokenValueInjection!17532)) )
))
(declare-datatypes ((List!75573 0))(
  ( (Nil!75447) (Cons!75447 (h!81895 Rule!17384) (t!391345 List!75573)) )
))
(declare-fun rs!157 () List!75573)

(get-info :version)

(assert (=> start!757898 (= res!3181470 (and ((_ is Lexer!8378) thiss!10883) (not ((_ is Cons!75447) rs!157))))))

(assert (=> start!757898 e!4741932))

(assert (=> start!757898 true))

(declare-fun e!4741928 () Bool)

(assert (=> start!757898 e!4741928))

(declare-fun b!8048045 () Bool)

(declare-fun e!4741931 () Bool)

(declare-fun tp!2413128 () Bool)

(declare-fun inv!97150 (String!85341) Bool)

(declare-fun inv!97152 (TokenValueInjection!17532) Bool)

(assert (=> b!8048045 (= e!4741931 (and tp!2413128 (inv!97150 (tag!9656 (h!81895 rs!157))) (inv!97152 (transformation!8792 (h!81895 rs!157))) e!4741929))))

(declare-fun b!8048044 () Bool)

(declare-fun tp!2413129 () Bool)

(assert (=> b!8048044 (= e!4741928 (and e!4741931 tp!2413129))))

(declare-fun lambda!472803 () Int)

(declare-fun forall!18479 (List!75573 Int) Bool)

(assert (=> b!8048043 (= e!4741932 (not (forall!18479 rs!157 lambda!472803)))))

(assert (= (and start!757898 res!3181470) b!8048043))

(assert (= b!8048045 b!8048046))

(assert (= b!8048044 b!8048045))

(assert (= (and start!757898 ((_ is Cons!75447) rs!157)) b!8048044))

(declare-fun m!8399368 () Bool)

(assert (=> b!8048045 m!8399368))

(declare-fun m!8399370 () Bool)

(assert (=> b!8048045 m!8399370))

(declare-fun m!8399372 () Bool)

(assert (=> b!8048043 m!8399372))

(check-sat (not b!8048045) b_and!355063 (not b_next!137417) (not b_next!137419) b_and!355065 (not b!8048044) (not b!8048043))
(check-sat b_and!355065 b_and!355063 (not b_next!137417) (not b_next!137419))
(get-model)

(declare-fun d!2396881 () Bool)

(assert (=> d!2396881 (= (inv!97150 (tag!9656 (h!81895 rs!157))) (= (mod (str.len (value!293551 (tag!9656 (h!81895 rs!157)))) 2) 0))))

(assert (=> b!8048045 d!2396881))

(declare-fun d!2396885 () Bool)

(declare-fun res!3181476 () Bool)

(declare-fun e!4741938 () Bool)

(assert (=> d!2396885 (=> (not res!3181476) (not e!4741938))))

(declare-fun semiInverseModEq!3909 (Int Int) Bool)

(assert (=> d!2396885 (= res!3181476 (semiInverseModEq!3909 (toChars!11734 (transformation!8792 (h!81895 rs!157))) (toValue!11875 (transformation!8792 (h!81895 rs!157)))))))

(assert (=> d!2396885 (= (inv!97152 (transformation!8792 (h!81895 rs!157))) e!4741938)))

(declare-fun b!8048054 () Bool)

(declare-fun equivClasses!3722 (Int Int) Bool)

(assert (=> b!8048054 (= e!4741938 (equivClasses!3722 (toChars!11734 (transformation!8792 (h!81895 rs!157))) (toValue!11875 (transformation!8792 (h!81895 rs!157)))))))

(assert (= (and d!2396885 res!3181476) b!8048054))

(declare-fun m!8399378 () Bool)

(assert (=> d!2396885 m!8399378))

(declare-fun m!8399380 () Bool)

(assert (=> b!8048054 m!8399380))

(assert (=> b!8048045 d!2396885))

(declare-fun d!2396889 () Bool)

(declare-fun res!3181486 () Bool)

(declare-fun e!4741948 () Bool)

(assert (=> d!2396889 (=> res!3181486 e!4741948)))

(assert (=> d!2396889 (= res!3181486 ((_ is Nil!75447) rs!157))))

(assert (=> d!2396889 (= (forall!18479 rs!157 lambda!472803) e!4741948)))

(declare-fun b!8048064 () Bool)

(declare-fun e!4741950 () Bool)

(assert (=> b!8048064 (= e!4741948 e!4741950)))

(declare-fun res!3181488 () Bool)

(assert (=> b!8048064 (=> (not res!3181488) (not e!4741950))))

(declare-fun dynLambda!30268 (Int Rule!17384) Bool)

(assert (=> b!8048064 (= res!3181488 (dynLambda!30268 lambda!472803 (h!81895 rs!157)))))

(declare-fun b!8048066 () Bool)

(assert (=> b!8048066 (= e!4741950 (forall!18479 (t!391345 rs!157) lambda!472803))))

(assert (= (and d!2396889 (not res!3181486)) b!8048064))

(assert (= (and b!8048064 res!3181488) b!8048066))

(declare-fun b_lambda!290353 () Bool)

(assert (=> (not b_lambda!290353) (not b!8048064)))

(declare-fun m!8399384 () Bool)

(assert (=> b!8048064 m!8399384))

(declare-fun m!8399388 () Bool)

(assert (=> b!8048066 m!8399388))

(assert (=> b!8048043 d!2396889))

(declare-fun b!8048092 () Bool)

(declare-fun e!4741956 () Bool)

(declare-fun tp!2413159 () Bool)

(declare-fun tp!2413157 () Bool)

(assert (=> b!8048092 (= e!4741956 (and tp!2413159 tp!2413157))))

(assert (=> b!8048045 (= tp!2413128 e!4741956)))

(declare-fun b!8048094 () Bool)

(declare-fun tp!2413158 () Bool)

(declare-fun tp!2413161 () Bool)

(assert (=> b!8048094 (= e!4741956 (and tp!2413158 tp!2413161))))

(declare-fun b!8048091 () Bool)

(declare-fun tp_is_empty!54672 () Bool)

(assert (=> b!8048091 (= e!4741956 tp_is_empty!54672)))

(declare-fun b!8048093 () Bool)

(declare-fun tp!2413160 () Bool)

(assert (=> b!8048093 (= e!4741956 tp!2413160)))

(assert (= (and b!8048045 ((_ is ElementMatch!21863) (regex!8792 (h!81895 rs!157)))) b!8048091))

(assert (= (and b!8048045 ((_ is Concat!30975) (regex!8792 (h!81895 rs!157)))) b!8048092))

(assert (= (and b!8048045 ((_ is Star!21863) (regex!8792 (h!81895 rs!157)))) b!8048093))

(assert (= (and b!8048045 ((_ is Union!21863) (regex!8792 (h!81895 rs!157)))) b!8048094))

(declare-fun b!8048116 () Bool)

(declare-fun b_free!136633 () Bool)

(declare-fun b_next!137423 () Bool)

(assert (=> b!8048116 (= b_free!136633 (not b_next!137423))))

(declare-fun tp!2413183 () Bool)

(declare-fun b_and!355069 () Bool)

(assert (=> b!8048116 (= tp!2413183 b_and!355069)))

(declare-fun b_free!136637 () Bool)

(declare-fun b_next!137427 () Bool)

(assert (=> b!8048116 (= b_free!136637 (not b_next!137427))))

(declare-fun tp!2413182 () Bool)

(declare-fun b_and!355073 () Bool)

(assert (=> b!8048116 (= tp!2413182 b_and!355073)))

(declare-fun e!4741978 () Bool)

(assert (=> b!8048116 (= e!4741978 (and tp!2413183 tp!2413182))))

(declare-fun tp!2413185 () Bool)

(declare-fun e!4741977 () Bool)

(declare-fun b!8048115 () Bool)

(assert (=> b!8048115 (= e!4741977 (and tp!2413185 (inv!97150 (tag!9656 (h!81895 (t!391345 rs!157)))) (inv!97152 (transformation!8792 (h!81895 (t!391345 rs!157)))) e!4741978))))

(declare-fun b!8048114 () Bool)

(declare-fun e!4741980 () Bool)

(declare-fun tp!2413184 () Bool)

(assert (=> b!8048114 (= e!4741980 (and e!4741977 tp!2413184))))

(assert (=> b!8048044 (= tp!2413129 e!4741980)))

(assert (= b!8048115 b!8048116))

(assert (= b!8048114 b!8048115))

(assert (= (and b!8048044 ((_ is Cons!75447) (t!391345 rs!157))) b!8048114))

(declare-fun m!8399394 () Bool)

(assert (=> b!8048115 m!8399394))

(declare-fun m!8399396 () Bool)

(assert (=> b!8048115 m!8399396))

(declare-fun b_lambda!290357 () Bool)

(assert (= b_lambda!290353 (or b!8048043 b_lambda!290357)))

(declare-fun bs!1971794 () Bool)

(declare-fun d!2396893 () Bool)

(assert (= bs!1971794 (and d!2396893 b!8048043)))

(declare-fun ruleValid!4008 (LexerInterface!8380 Rule!17384) Bool)

(assert (=> bs!1971794 (= (dynLambda!30268 lambda!472803 (h!81895 rs!157)) (ruleValid!4008 thiss!10883 (h!81895 rs!157)))))

(declare-fun m!8399398 () Bool)

(assert (=> bs!1971794 m!8399398))

(assert (=> b!8048064 d!2396893))

(check-sat (not b!8048093) b_and!355063 (not b_next!137417) (not b_lambda!290357) (not bs!1971794) (not b_next!137419) (not b!8048115) (not b!8048092) b_and!355065 (not b!8048094) (not b_next!137423) (not b!8048054) (not b_next!137427) (not b!8048066) (not b!8048114) b_and!355073 (not d!2396885) b_and!355069 tp_is_empty!54672)
(check-sat b_and!355073 b_and!355069 b_and!355063 (not b_next!137417) (not b_next!137419) b_and!355065 (not b_next!137423) (not b_next!137427))
