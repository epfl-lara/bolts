; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757808 () Bool)

(assert start!757808)

(declare-fun b!8047538 () Bool)

(declare-fun b_free!136543 () Bool)

(declare-fun b_next!137333 () Bool)

(assert (=> b!8047538 (= b_free!136543 (not b_next!137333))))

(declare-fun tp!2412757 () Bool)

(declare-fun b_and!354979 () Bool)

(assert (=> b!8047538 (= tp!2412757 b_and!354979)))

(declare-fun b_free!136545 () Bool)

(declare-fun b_next!137335 () Bool)

(assert (=> b!8047538 (= b_free!136545 (not b_next!137335))))

(declare-fun tp!2412756 () Bool)

(declare-fun b_and!354981 () Bool)

(assert (=> b!8047538 (= tp!2412756 b_and!354981)))

(declare-fun b!8047535 () Bool)

(assert (=> b!8047535 true))

(declare-fun b!8047536 () Bool)

(declare-fun e!4741504 () Bool)

(declare-fun e!4741503 () Bool)

(declare-fun tp!2412759 () Bool)

(assert (=> b!8047536 (= e!4741504 (and e!4741503 tp!2412759))))

(declare-fun e!4741505 () Bool)

(declare-fun tp!2412758 () Bool)

(declare-datatypes ((List!75532 0))(
  ( (Nil!75406) (Cons!75406 (h!81854 (_ BitVec 16)) (t!391304 List!75532)) )
))
(declare-datatypes ((TokenValue!9099 0))(
  ( (FloatLiteralValue!18198 (text!64138 List!75532)) (TokenValueExt!9098 (__x!35477 Int)) (Broken!45495 (value!293195 List!75532)) (Object!9224) (End!9099) (Def!9099) (Underscore!9099) (Match!9099) (Else!9099) (Error!9099) (Case!9099) (If!9099) (Extends!9099) (Abstract!9099) (Class!9099) (Val!9099) (DelimiterValue!18198 (del!9159 List!75532)) (KeywordValue!9105 (value!293196 List!75532)) (CommentValue!18198 (value!293197 List!75532)) (WhitespaceValue!18198 (value!293198 List!75532)) (IndentationValue!9099 (value!293199 List!75532)) (String!85278) (Int32!9099) (Broken!45496 (value!293200 List!75532)) (Boolean!9100) (Unit!171162) (OperatorValue!9102 (op!9159 List!75532)) (IdentifierValue!18198 (value!293201 List!75532)) (IdentifierValue!18199 (value!293202 List!75532)) (WhitespaceValue!18199 (value!293203 List!75532)) (True!18198) (False!18198) (Broken!45497 (value!293204 List!75532)) (Broken!45498 (value!293205 List!75532)) (True!18199) (RightBrace!9099) (RightBracket!9099) (Colon!9099) (Null!9099) (Comma!9099) (LeftBracket!9099) (False!18199) (LeftBrace!9099) (ImaginaryLiteralValue!9099 (text!64139 List!75532)) (StringLiteralValue!27297 (value!293206 List!75532)) (EOFValue!9099 (value!293207 List!75532)) (IdentValue!9099 (value!293208 List!75532)) (DelimiterValue!18199 (value!293209 List!75532)) (DedentValue!9099 (value!293210 List!75532)) (NewLineValue!9099 (value!293211 List!75532)) (IntegerValue!27297 (value!293212 (_ BitVec 32)) (text!64140 List!75532)) (IntegerValue!27298 (value!293213 Int) (text!64141 List!75532)) (Times!9099) (Or!9099) (Equal!9099) (Minus!9099) (Broken!45499 (value!293214 List!75532)) (And!9099) (Div!9099) (LessEqual!9099) (Mod!9099) (Concat!30949) (Not!9099) (Plus!9099) (SpaceValue!9099 (value!293215 List!75532)) (IntegerValue!27299 (value!293216 Int) (text!64142 List!75532)) (StringLiteralValue!27298 (text!64143 List!75532)) (FloatLiteralValue!18199 (text!64144 List!75532)) (BytesLiteralValue!9099 (value!293217 List!75532)) (CommentValue!18199 (value!293218 List!75532)) (StringLiteralValue!27299 (value!293219 List!75532)) (ErrorTokenValue!9099 (msg!9160 List!75532)) )
))
(declare-datatypes ((C!44038 0))(
  ( (C!44039 (val!32795 Int)) )
))
(declare-datatypes ((Regex!21850 0))(
  ( (ElementMatch!21850 (c!1475485 C!44038)) (Concat!30950 (regOne!44212 Regex!21850) (regTwo!44212 Regex!21850)) (EmptyExpr!21850) (Star!21850 (reg!22179 Regex!21850)) (EmptyLang!21850) (Union!21850 (regOne!44213 Regex!21850) (regTwo!44213 Regex!21850)) )
))
(declare-datatypes ((List!75533 0))(
  ( (Nil!75407) (Cons!75407 (h!81855 C!44038) (t!391305 List!75533)) )
))
(declare-datatypes ((IArray!32155 0))(
  ( (IArray!32156 (innerList!16135 List!75533)) )
))
(declare-datatypes ((Conc!16047 0))(
  ( (Node!16047 (left!57417 Conc!16047) (right!57747 Conc!16047) (csize!32324 Int) (cheight!16258 Int)) (Leaf!30748 (xs!19445 IArray!32155) (csize!32325 Int)) (Empty!16047) )
))
(declare-datatypes ((BalanceConc!31050 0))(
  ( (BalanceConc!31051 (c!1475486 Conc!16047)) )
))
(declare-datatypes ((String!85279 0))(
  ( (String!85280 (value!293220 String)) )
))
(declare-datatypes ((TokenValueInjection!17506 0))(
  ( (TokenValueInjection!17507 (toValue!11862 Int) (toChars!11721 Int)) )
))
(declare-datatypes ((Rule!17358 0))(
  ( (Rule!17359 (regex!8779 Regex!21850) (tag!9643 String!85279) (isSeparator!8779 Bool) (transformation!8779 TokenValueInjection!17506)) )
))
(declare-datatypes ((List!75534 0))(
  ( (Nil!75408) (Cons!75408 (h!81856 Rule!17358) (t!391306 List!75534)) )
))
(declare-fun rs!161 () List!75534)

(declare-fun b!8047537 () Bool)

(declare-fun inv!97118 (String!85279) Bool)

(declare-fun inv!97121 (TokenValueInjection!17506) Bool)

(assert (=> b!8047537 (= e!4741503 (and tp!2412758 (inv!97118 (tag!9643 (h!81856 rs!161))) (inv!97121 (transformation!8779 (h!81856 rs!161))) e!4741505))))

(declare-fun lambda!472776 () Int)

(declare-datatypes ((LexerInterface!8367 0))(
  ( (LexerInterfaceExt!8364 (__x!35478 Int)) (Lexer!8365) )
))
(declare-fun thiss!10901 () LexerInterface!8367)

(declare-fun e!4741507 () Bool)

(declare-fun forall!18474 (List!75534 Int) Bool)

(declare-fun rulesValidInductive!3476 (LexerInterface!8367 List!75534) Bool)

(assert (=> b!8047535 (= e!4741507 (not (= (forall!18474 rs!161 lambda!472776) (rulesValidInductive!3476 thiss!10901 rs!161))))))

(declare-fun res!3181309 () Bool)

(assert (=> start!757808 (=> (not res!3181309) (not e!4741507))))

(assert (=> start!757808 (= res!3181309 (is-Lexer!8365 thiss!10901))))

(assert (=> start!757808 e!4741507))

(assert (=> start!757808 true))

(assert (=> start!757808 e!4741504))

(assert (=> b!8047538 (= e!4741505 (and tp!2412757 tp!2412756))))

(assert (= (and start!757808 res!3181309) b!8047535))

(assert (= b!8047537 b!8047538))

(assert (= b!8047536 b!8047537))

(assert (= (and start!757808 (is-Cons!75408 rs!161)) b!8047536))

(declare-fun m!8399138 () Bool)

(assert (=> b!8047537 m!8399138))

(declare-fun m!8399140 () Bool)

(assert (=> b!8047537 m!8399140))

(declare-fun m!8399142 () Bool)

(assert (=> b!8047535 m!8399142))

(declare-fun m!8399144 () Bool)

(assert (=> b!8047535 m!8399144))

(push 1)

(assert (not b_next!137333))

(assert b_and!354979)

(assert (not b!8047537))

(assert (not b!8047535))

(assert b_and!354981)

(assert (not b!8047536))

(assert (not b_next!137335))

(check-sat)

(pop 1)

(push 1)

(assert b_and!354979)

(assert b_and!354981)

(assert (not b_next!137335))

(assert (not b_next!137333))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2396797 () Bool)

(declare-fun res!3181317 () Bool)

(declare-fun e!4741527 () Bool)

(assert (=> d!2396797 (=> res!3181317 e!4741527)))

(assert (=> d!2396797 (= res!3181317 (is-Nil!75408 rs!161))))

(assert (=> d!2396797 (= (forall!18474 rs!161 lambda!472776) e!4741527)))

(declare-fun b!8047559 () Bool)

(declare-fun e!4741528 () Bool)

(assert (=> b!8047559 (= e!4741527 e!4741528)))

(declare-fun res!3181318 () Bool)

(assert (=> b!8047559 (=> (not res!3181318) (not e!4741528))))

(declare-fun dynLambda!30263 (Int Rule!17358) Bool)

(assert (=> b!8047559 (= res!3181318 (dynLambda!30263 lambda!472776 (h!81856 rs!161)))))

(declare-fun b!8047560 () Bool)

(assert (=> b!8047560 (= e!4741528 (forall!18474 (t!391306 rs!161) lambda!472776))))

(assert (= (and d!2396797 (not res!3181317)) b!8047559))

(assert (= (and b!8047559 res!3181318) b!8047560))

(declare-fun b_lambda!290335 () Bool)

(assert (=> (not b_lambda!290335) (not b!8047559)))

(declare-fun m!8399154 () Bool)

(assert (=> b!8047559 m!8399154))

(declare-fun m!8399156 () Bool)

(assert (=> b!8047560 m!8399156))

(assert (=> b!8047535 d!2396797))

(declare-fun bs!1971773 () Bool)

(declare-fun d!2396799 () Bool)

(assert (= bs!1971773 (and d!2396799 b!8047535)))

(declare-fun lambda!472782 () Int)

(assert (=> bs!1971773 (= lambda!472782 lambda!472776)))

(assert (=> d!2396799 true))

(declare-fun lt!2722881 () Bool)

(assert (=> d!2396799 (= lt!2722881 (forall!18474 rs!161 lambda!472782))))

(declare-fun e!4741534 () Bool)

(assert (=> d!2396799 (= lt!2722881 e!4741534)))

(declare-fun res!3181324 () Bool)

(assert (=> d!2396799 (=> res!3181324 e!4741534)))

(assert (=> d!2396799 (= res!3181324 (not (is-Cons!75408 rs!161)))))

(assert (=> d!2396799 (= (rulesValidInductive!3476 thiss!10901 rs!161) lt!2722881)))

(declare-fun b!8047565 () Bool)

(declare-fun e!4741533 () Bool)

(assert (=> b!8047565 (= e!4741534 e!4741533)))

(declare-fun res!3181323 () Bool)

(assert (=> b!8047565 (=> (not res!3181323) (not e!4741533))))

(declare-fun ruleValid!3998 (LexerInterface!8367 Rule!17358) Bool)

(assert (=> b!8047565 (= res!3181323 (ruleValid!3998 thiss!10901 (h!81856 rs!161)))))

(declare-fun b!8047566 () Bool)

(assert (=> b!8047566 (= e!4741533 (rulesValidInductive!3476 thiss!10901 (t!391306 rs!161)))))

(assert (= (and d!2396799 (not res!3181324)) b!8047565))

(assert (= (and b!8047565 res!3181323) b!8047566))

(declare-fun m!8399158 () Bool)

(assert (=> d!2396799 m!8399158))

(declare-fun m!8399160 () Bool)

(assert (=> b!8047565 m!8399160))

(declare-fun m!8399162 () Bool)

(assert (=> b!8047566 m!8399162))

(assert (=> b!8047535 d!2396799))

(declare-fun d!2396801 () Bool)

(assert (=> d!2396801 (= (inv!97118 (tag!9643 (h!81856 rs!161))) (= (mod (str.len (value!293220 (tag!9643 (h!81856 rs!161)))) 2) 0))))

(assert (=> b!8047537 d!2396801))

(declare-fun d!2396805 () Bool)

(declare-fun res!3181327 () Bool)

(declare-fun e!4741537 () Bool)

(assert (=> d!2396805 (=> (not res!3181327) (not e!4741537))))

(declare-fun semiInverseModEq!3900 (Int Int) Bool)

(assert (=> d!2396805 (= res!3181327 (semiInverseModEq!3900 (toChars!11721 (transformation!8779 (h!81856 rs!161))) (toValue!11862 (transformation!8779 (h!81856 rs!161)))))))

(assert (=> d!2396805 (= (inv!97121 (transformation!8779 (h!81856 rs!161))) e!4741537)))

(declare-fun b!8047569 () Bool)

(declare-fun equivClasses!3714 (Int Int) Bool)

(assert (=> b!8047569 (= e!4741537 (equivClasses!3714 (toChars!11721 (transformation!8779 (h!81856 rs!161))) (toValue!11862 (transformation!8779 (h!81856 rs!161)))))))

(assert (= (and d!2396805 res!3181327) b!8047569))

(declare-fun m!8399164 () Bool)

(assert (=> d!2396805 m!8399164))

(declare-fun m!8399166 () Bool)

(assert (=> b!8047569 m!8399166))

(assert (=> b!8047537 d!2396805))

(declare-fun b!8047580 () Bool)

(declare-fun e!4741540 () Bool)

(declare-fun tp_is_empty!54655 () Bool)

(assert (=> b!8047580 (= e!4741540 tp_is_empty!54655)))

(declare-fun b!8047582 () Bool)

(declare-fun tp!2412783 () Bool)

(assert (=> b!8047582 (= e!4741540 tp!2412783)))

(assert (=> b!8047537 (= tp!2412758 e!4741540)))

(declare-fun b!8047581 () Bool)

(declare-fun tp!2412785 () Bool)

(declare-fun tp!2412784 () Bool)

(assert (=> b!8047581 (= e!4741540 (and tp!2412785 tp!2412784))))

(declare-fun b!8047583 () Bool)

(declare-fun tp!2412782 () Bool)

(declare-fun tp!2412786 () Bool)

(assert (=> b!8047583 (= e!4741540 (and tp!2412782 tp!2412786))))

(assert (= (and b!8047537 (is-ElementMatch!21850 (regex!8779 (h!81856 rs!161)))) b!8047580))

(assert (= (and b!8047537 (is-Concat!30950 (regex!8779 (h!81856 rs!161)))) b!8047581))

(assert (= (and b!8047537 (is-Star!21850 (regex!8779 (h!81856 rs!161)))) b!8047582))

(assert (= (and b!8047537 (is-Union!21850 (regex!8779 (h!81856 rs!161)))) b!8047583))

(declare-fun b!8047594 () Bool)

(declare-fun b_free!136551 () Bool)

(declare-fun b_next!137341 () Bool)

(assert (=> b!8047594 (= b_free!136551 (not b_next!137341))))

(declare-fun tp!2412795 () Bool)

(declare-fun b_and!354987 () Bool)

(assert (=> b!8047594 (= tp!2412795 b_and!354987)))

(declare-fun b_free!136553 () Bool)

(declare-fun b_next!137343 () Bool)

(assert (=> b!8047594 (= b_free!136553 (not b_next!137343))))

(declare-fun tp!2412797 () Bool)

(declare-fun b_and!354989 () Bool)

(assert (=> b!8047594 (= tp!2412797 b_and!354989)))

(declare-fun e!4741549 () Bool)

(assert (=> b!8047594 (= e!4741549 (and tp!2412795 tp!2412797))))

(declare-fun tp!2412796 () Bool)

(declare-fun e!4741550 () Bool)

(declare-fun b!8047593 () Bool)

(assert (=> b!8047593 (= e!4741550 (and tp!2412796 (inv!97118 (tag!9643 (h!81856 (t!391306 rs!161)))) (inv!97121 (transformation!8779 (h!81856 (t!391306 rs!161)))) e!4741549))))

(declare-fun b!8047592 () Bool)

(declare-fun e!4741552 () Bool)

(declare-fun tp!2412798 () Bool)

(assert (=> b!8047592 (= e!4741552 (and e!4741550 tp!2412798))))

(assert (=> b!8047536 (= tp!2412759 e!4741552)))

(assert (= b!8047593 b!8047594))

(assert (= b!8047592 b!8047593))

(assert (= (and b!8047536 (is-Cons!75408 (t!391306 rs!161))) b!8047592))

(declare-fun m!8399168 () Bool)

(assert (=> b!8047593 m!8399168))

(declare-fun m!8399170 () Bool)

(assert (=> b!8047593 m!8399170))

(declare-fun b_lambda!290337 () Bool)

(assert (= b_lambda!290335 (or b!8047535 b_lambda!290337)))

(declare-fun bs!1971774 () Bool)

(declare-fun d!2396809 () Bool)

(assert (= bs!1971774 (and d!2396809 b!8047535)))

(assert (=> bs!1971774 (= (dynLambda!30263 lambda!472776 (h!81856 rs!161)) (ruleValid!3998 thiss!10901 (h!81856 rs!161)))))

(assert (=> bs!1971774 m!8399160))

(assert (=> b!8047559 d!2396809))

(push 1)

(assert (not b_next!137333))

(assert b_and!354979)

(assert (not b!8047565))

(assert b_and!354987)

(assert (not b_next!137343))

(assert b_and!354989)

(assert (not b!8047592))

(assert (not d!2396799))

(assert (not b!8047560))

(assert b_and!354981)

(assert (not b!8047581))

(assert tp_is_empty!54655)

(assert (not b_next!137341))

(assert (not b!8047593))

(assert (not b!8047582))

(assert (not d!2396805))

(assert (not b!8047583))

(assert (not bs!1971774))

(assert (not b!8047566))

(assert (not b_next!137335))

(assert (not b!8047569))

(assert (not b_lambda!290337))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!137341))

(assert (not b_next!137333))

(assert b_and!354979)

(assert b_and!354987)

(assert (not b_next!137343))

(assert b_and!354989)

(assert b_and!354981)

(assert (not b_next!137335))

(check-sat)

(pop 1)

