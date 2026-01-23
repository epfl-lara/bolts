; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!511822 () Bool)

(assert start!511822)

(declare-fun b!4889273 () Bool)

(declare-fun b_free!131483 () Bool)

(declare-fun b_next!132273 () Bool)

(assert (=> b!4889273 (= b_free!131483 (not b_next!132273))))

(declare-fun tp!1376247 () Bool)

(declare-fun b_and!344331 () Bool)

(assert (=> b!4889273 (= tp!1376247 b_and!344331)))

(declare-fun b_free!131485 () Bool)

(declare-fun b_next!132275 () Bool)

(assert (=> b!4889273 (= b_free!131485 (not b_next!132275))))

(declare-fun tp!1376246 () Bool)

(declare-fun b_and!344333 () Bool)

(assert (=> b!4889273 (= tp!1376246 b_and!344333)))

(declare-fun b!4889272 () Bool)

(declare-fun e!3056656 () Bool)

(declare-fun e!3056659 () Bool)

(declare-fun tp!1376249 () Bool)

(declare-datatypes ((C!26682 0))(
  ( (C!26683 (val!22675 Int)) )
))
(declare-datatypes ((List!56506 0))(
  ( (Nil!56382) (Cons!56382 (h!62830 C!26682) (t!365176 List!56506)) )
))
(declare-datatypes ((Regex!13242 0))(
  ( (ElementMatch!13242 (c!830985 C!26682)) (Concat!21719 (regOne!26996 Regex!13242) (regTwo!26996 Regex!13242)) (EmptyExpr!13242) (Star!13242 (reg!13571 Regex!13242)) (EmptyLang!13242) (Union!13242 (regOne!26997 Regex!13242) (regTwo!26997 Regex!13242)) )
))
(declare-datatypes ((String!63828 0))(
  ( (String!63829 (value!261887 String)) )
))
(declare-datatypes ((List!56507 0))(
  ( (Nil!56383) (Cons!56383 (h!62831 (_ BitVec 16)) (t!365177 List!56507)) )
))
(declare-datatypes ((TokenValue!8477 0))(
  ( (FloatLiteralValue!16954 (text!59784 List!56507)) (TokenValueExt!8476 (__x!34247 Int)) (Broken!42385 (value!261888 List!56507)) (Object!8600) (End!8477) (Def!8477) (Underscore!8477) (Match!8477) (Else!8477) (Error!8477) (Case!8477) (If!8477) (Extends!8477) (Abstract!8477) (Class!8477) (Val!8477) (DelimiterValue!16954 (del!8537 List!56507)) (KeywordValue!8483 (value!261889 List!56507)) (CommentValue!16954 (value!261890 List!56507)) (WhitespaceValue!16954 (value!261891 List!56507)) (IndentationValue!8477 (value!261892 List!56507)) (String!63830) (Int32!8477) (Broken!42386 (value!261893 List!56507)) (Boolean!8478) (Unit!146372) (OperatorValue!8480 (op!8537 List!56507)) (IdentifierValue!16954 (value!261894 List!56507)) (IdentifierValue!16955 (value!261895 List!56507)) (WhitespaceValue!16955 (value!261896 List!56507)) (True!16954) (False!16954) (Broken!42387 (value!261897 List!56507)) (Broken!42388 (value!261898 List!56507)) (True!16955) (RightBrace!8477) (RightBracket!8477) (Colon!8477) (Null!8477) (Comma!8477) (LeftBracket!8477) (False!16955) (LeftBrace!8477) (ImaginaryLiteralValue!8477 (text!59785 List!56507)) (StringLiteralValue!25431 (value!261899 List!56507)) (EOFValue!8477 (value!261900 List!56507)) (IdentValue!8477 (value!261901 List!56507)) (DelimiterValue!16955 (value!261902 List!56507)) (DedentValue!8477 (value!261903 List!56507)) (NewLineValue!8477 (value!261904 List!56507)) (IntegerValue!25431 (value!261905 (_ BitVec 32)) (text!59786 List!56507)) (IntegerValue!25432 (value!261906 Int) (text!59787 List!56507)) (Times!8477) (Or!8477) (Equal!8477) (Minus!8477) (Broken!42389 (value!261907 List!56507)) (And!8477) (Div!8477) (LessEqual!8477) (Mod!8477) (Concat!21720) (Not!8477) (Plus!8477) (SpaceValue!8477 (value!261908 List!56507)) (IntegerValue!25433 (value!261909 Int) (text!59788 List!56507)) (StringLiteralValue!25432 (text!59789 List!56507)) (FloatLiteralValue!16955 (text!59790 List!56507)) (BytesLiteralValue!8477 (value!261910 List!56507)) (CommentValue!16955 (value!261911 List!56507)) (StringLiteralValue!25433 (value!261912 List!56507)) (ErrorTokenValue!8477 (msg!8538 List!56507)) )
))
(declare-datatypes ((IArray!29531 0))(
  ( (IArray!29532 (innerList!14823 List!56506)) )
))
(declare-datatypes ((Conc!14735 0))(
  ( (Node!14735 (left!40953 Conc!14735) (right!41283 Conc!14735) (csize!29700 Int) (cheight!14946 Int)) (Leaf!24536 (xs!18051 IArray!29531) (csize!29701 Int)) (Empty!14735) )
))
(declare-datatypes ((BalanceConc!28900 0))(
  ( (BalanceConc!28901 (c!830986 Conc!14735)) )
))
(declare-datatypes ((TokenValueInjection!16262 0))(
  ( (TokenValueInjection!16263 (toValue!11054 Int) (toChars!10913 Int)) )
))
(declare-datatypes ((Rule!16134 0))(
  ( (Rule!16135 (regex!8167 Regex!13242) (tag!9031 String!63828) (isSeparator!8167 Bool) (transformation!8167 TokenValueInjection!16262)) )
))
(declare-datatypes ((List!56508 0))(
  ( (Nil!56384) (Cons!56384 (h!62832 Rule!16134) (t!365178 List!56508)) )
))
(declare-fun rulesArg!165 () List!56508)

(declare-fun inv!72637 (String!63828) Bool)

(declare-fun inv!72640 (TokenValueInjection!16262) Bool)

(assert (=> b!4889272 (= e!3056659 (and tp!1376249 (inv!72637 (tag!9031 (h!62832 rulesArg!165))) (inv!72640 (transformation!8167 (h!62832 rulesArg!165))) e!3056656))))

(declare-fun res!2088070 () Bool)

(declare-fun e!3056658 () Bool)

(assert (=> start!511822 (=> (not res!2088070) (not e!3056658))))

(declare-datatypes ((LexerInterface!7759 0))(
  ( (LexerInterfaceExt!7756 (__x!34248 Int)) (Lexer!7757) )
))
(declare-fun thiss!14805 () LexerInterface!7759)

(assert (=> start!511822 (= res!2088070 (is-Lexer!7757 thiss!14805))))

(assert (=> start!511822 e!3056658))

(assert (=> start!511822 true))

(declare-fun e!3056657 () Bool)

(assert (=> start!511822 e!3056657))

(assert (=> b!4889273 (= e!3056656 (and tp!1376247 tp!1376246))))

(declare-fun b!4889274 () Bool)

(declare-fun res!2088068 () Bool)

(assert (=> b!4889274 (=> (not res!2088068) (not e!3056658))))

(declare-fun isEmpty!30233 (List!56508) Bool)

(assert (=> b!4889274 (= res!2088068 (not (isEmpty!30233 rulesArg!165)))))

(declare-fun b!4889275 () Bool)

(declare-fun tp!1376248 () Bool)

(assert (=> b!4889275 (= e!3056657 (and e!3056659 tp!1376248))))

(declare-fun b!4889276 () Bool)

(declare-fun size!37117 (List!56508) Int)

(assert (=> b!4889276 (= e!3056658 (< (size!37117 rulesArg!165) 0))))

(declare-fun b!4889277 () Bool)

(declare-fun res!2088069 () Bool)

(assert (=> b!4889277 (=> (not res!2088069) (not e!3056658))))

(declare-fun rulesValidInductive!3146 (LexerInterface!7759 List!56508) Bool)

(assert (=> b!4889277 (= res!2088069 (rulesValidInductive!3146 thiss!14805 rulesArg!165))))

(assert (= (and start!511822 res!2088070) b!4889277))

(assert (= (and b!4889277 res!2088069) b!4889274))

(assert (= (and b!4889274 res!2088068) b!4889276))

(assert (= b!4889272 b!4889273))

(assert (= b!4889275 b!4889272))

(assert (= (and start!511822 (is-Cons!56384 rulesArg!165)) b!4889275))

(declare-fun m!5892740 () Bool)

(assert (=> b!4889272 m!5892740))

(declare-fun m!5892742 () Bool)

(assert (=> b!4889272 m!5892742))

(declare-fun m!5892744 () Bool)

(assert (=> b!4889274 m!5892744))

(declare-fun m!5892746 () Bool)

(assert (=> b!4889276 m!5892746))

(declare-fun m!5892748 () Bool)

(assert (=> b!4889277 m!5892748))

(push 1)

(assert (not b!4889274))

(assert (not b_next!132275))

(assert (not b!4889276))

(assert (not b!4889275))

(assert (not b!4889272))

(assert (not b_next!132273))

(assert b_and!344331)

(assert b_and!344333)

(assert (not b!4889277))

(check-sat)

(pop 1)

(push 1)

(assert b_and!344333)

(assert b_and!344331)

(assert (not b_next!132273))

(assert (not b_next!132275))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1570037 () Bool)

(declare-fun lt!2003818 () Int)

(assert (=> d!1570037 (>= lt!2003818 0)))

(declare-fun e!3056677 () Int)

(assert (=> d!1570037 (= lt!2003818 e!3056677)))

(declare-fun c!830991 () Bool)

(assert (=> d!1570037 (= c!830991 (is-Nil!56384 rulesArg!165))))

(assert (=> d!1570037 (= (size!37117 rulesArg!165) lt!2003818)))

(declare-fun b!4889300 () Bool)

(assert (=> b!4889300 (= e!3056677 0)))

(declare-fun b!4889301 () Bool)

(assert (=> b!4889301 (= e!3056677 (+ 1 (size!37117 (t!365178 rulesArg!165))))))

(assert (= (and d!1570037 c!830991) b!4889300))

(assert (= (and d!1570037 (not c!830991)) b!4889301))

(declare-fun m!5892760 () Bool)

(assert (=> b!4889301 m!5892760))

(assert (=> b!4889276 d!1570037))

(declare-fun d!1570041 () Bool)

(assert (=> d!1570041 (= (isEmpty!30233 rulesArg!165) (is-Nil!56384 rulesArg!165))))

(assert (=> b!4889274 d!1570041))

(declare-fun d!1570045 () Bool)

(assert (=> d!1570045 true))

(declare-fun lt!2003826 () Bool)

(declare-fun lambda!243907 () Int)

(declare-fun forall!13084 (List!56508 Int) Bool)

(assert (=> d!1570045 (= lt!2003826 (forall!13084 rulesArg!165 lambda!243907))))

(declare-fun e!3056692 () Bool)

(assert (=> d!1570045 (= lt!2003826 e!3056692)))

(declare-fun res!2088092 () Bool)

(assert (=> d!1570045 (=> res!2088092 e!3056692)))

(assert (=> d!1570045 (= res!2088092 (not (is-Cons!56384 rulesArg!165)))))

(assert (=> d!1570045 (= (rulesValidInductive!3146 thiss!14805 rulesArg!165) lt!2003826)))

(declare-fun b!4889319 () Bool)

(declare-fun e!3056693 () Bool)

(assert (=> b!4889319 (= e!3056692 e!3056693)))

(declare-fun res!2088091 () Bool)

(assert (=> b!4889319 (=> (not res!2088091) (not e!3056693))))

(declare-fun ruleValid!3666 (LexerInterface!7759 Rule!16134) Bool)

(assert (=> b!4889319 (= res!2088091 (ruleValid!3666 thiss!14805 (h!62832 rulesArg!165)))))

(declare-fun b!4889320 () Bool)

(assert (=> b!4889320 (= e!3056693 (rulesValidInductive!3146 thiss!14805 (t!365178 rulesArg!165)))))

(assert (= (and d!1570045 (not res!2088092)) b!4889319))

(assert (= (and b!4889319 res!2088091) b!4889320))

(declare-fun m!5892768 () Bool)

(assert (=> d!1570045 m!5892768))

(declare-fun m!5892770 () Bool)

(assert (=> b!4889319 m!5892770))

(declare-fun m!5892772 () Bool)

(assert (=> b!4889320 m!5892772))

(assert (=> b!4889277 d!1570045))

(declare-fun d!1570053 () Bool)

(assert (=> d!1570053 (= (inv!72637 (tag!9031 (h!62832 rulesArg!165))) (= (mod (str.len (value!261887 (tag!9031 (h!62832 rulesArg!165)))) 2) 0))))

(assert (=> b!4889272 d!1570053))

(declare-fun d!1570055 () Bool)

(declare-fun res!2088095 () Bool)

(declare-fun e!3056696 () Bool)

(assert (=> d!1570055 (=> (not res!2088095) (not e!3056696))))

(declare-fun semiInverseModEq!3580 (Int Int) Bool)

(assert (=> d!1570055 (= res!2088095 (semiInverseModEq!3580 (toChars!10913 (transformation!8167 (h!62832 rulesArg!165))) (toValue!11054 (transformation!8167 (h!62832 rulesArg!165)))))))

(assert (=> d!1570055 (= (inv!72640 (transformation!8167 (h!62832 rulesArg!165))) e!3056696)))

(declare-fun b!4889325 () Bool)

(declare-fun equivClasses!3459 (Int Int) Bool)

(assert (=> b!4889325 (= e!3056696 (equivClasses!3459 (toChars!10913 (transformation!8167 (h!62832 rulesArg!165))) (toValue!11054 (transformation!8167 (h!62832 rulesArg!165)))))))

(assert (= (and d!1570055 res!2088095) b!4889325))

(declare-fun m!5892774 () Bool)

(assert (=> d!1570055 m!5892774))

(declare-fun m!5892776 () Bool)

(assert (=> b!4889325 m!5892776))

(assert (=> b!4889272 d!1570055))

(declare-fun b!4889336 () Bool)

(declare-fun b_free!131491 () Bool)

(declare-fun b_next!132281 () Bool)

(assert (=> b!4889336 (= b_free!131491 (not b_next!132281))))

(declare-fun tp!1376270 () Bool)

(declare-fun b_and!344339 () Bool)

(assert (=> b!4889336 (= tp!1376270 b_and!344339)))

(declare-fun b_free!131493 () Bool)

(declare-fun b_next!132283 () Bool)

(assert (=> b!4889336 (= b_free!131493 (not b_next!132283))))

(declare-fun tp!1376273 () Bool)

(declare-fun b_and!344341 () Bool)

(assert (=> b!4889336 (= tp!1376273 b_and!344341)))

(declare-fun e!3056706 () Bool)

(assert (=> b!4889336 (= e!3056706 (and tp!1376270 tp!1376273))))

(declare-fun b!4889335 () Bool)

(declare-fun e!3056708 () Bool)

(declare-fun tp!1376271 () Bool)

(assert (=> b!4889335 (= e!3056708 (and tp!1376271 (inv!72637 (tag!9031 (h!62832 (t!365178 rulesArg!165)))) (inv!72640 (transformation!8167 (h!62832 (t!365178 rulesArg!165)))) e!3056706))))

(declare-fun b!4889334 () Bool)

(declare-fun e!3056705 () Bool)

(declare-fun tp!1376272 () Bool)

(assert (=> b!4889334 (= e!3056705 (and e!3056708 tp!1376272))))

(assert (=> b!4889275 (= tp!1376248 e!3056705)))

(assert (= b!4889335 b!4889336))

(assert (= b!4889334 b!4889335))

(assert (= (and b!4889275 (is-Cons!56384 (t!365178 rulesArg!165))) b!4889334))

(declare-fun m!5892778 () Bool)

(assert (=> b!4889335 m!5892778))

(declare-fun m!5892780 () Bool)

(assert (=> b!4889335 m!5892780))

(declare-fun b!4889350 () Bool)

(declare-fun e!3056711 () Bool)

(declare-fun tp!1376287 () Bool)

(declare-fun tp!1376285 () Bool)

(assert (=> b!4889350 (= e!3056711 (and tp!1376287 tp!1376285))))

(declare-fun b!4889349 () Bool)

(declare-fun tp!1376286 () Bool)

(assert (=> b!4889349 (= e!3056711 tp!1376286)))

(declare-fun b!4889347 () Bool)

(declare-fun tp_is_empty!35765 () Bool)

(assert (=> b!4889347 (= e!3056711 tp_is_empty!35765)))

(declare-fun b!4889348 () Bool)

(declare-fun tp!1376284 () Bool)

(declare-fun tp!1376288 () Bool)

(assert (=> b!4889348 (= e!3056711 (and tp!1376284 tp!1376288))))

(assert (=> b!4889272 (= tp!1376249 e!3056711)))

(assert (= (and b!4889272 (is-ElementMatch!13242 (regex!8167 (h!62832 rulesArg!165)))) b!4889347))

(assert (= (and b!4889272 (is-Concat!21719 (regex!8167 (h!62832 rulesArg!165)))) b!4889348))

(assert (= (and b!4889272 (is-Star!13242 (regex!8167 (h!62832 rulesArg!165)))) b!4889349))

(assert (= (and b!4889272 (is-Union!13242 (regex!8167 (h!62832 rulesArg!165)))) b!4889350))

(push 1)

(assert (not b!4889349))

(assert (not b_next!132275))

(assert (not d!1570045))

(assert tp_is_empty!35765)

(assert (not b_next!132281))

(assert (not d!1570055))

(assert (not b!4889325))

(assert b_and!344333)

(assert (not b!4889334))

(assert (not b!4889319))

(assert (not b_next!132283))

(assert (not b!4889348))

(assert (not b!4889335))

(assert (not b!4889320))

(assert b_and!344341)

(assert (not b_next!132273))

(assert (not b!4889301))

(assert b_and!344331)

(assert b_and!344339)

(assert (not b!4889350))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!132283))

(assert (not b_next!132275))

(assert (not b_next!132281))

(assert b_and!344333)

(assert b_and!344331)

(assert b_and!344339)

(assert b_and!344341)

(assert (not b_next!132273))

(check-sat)

(pop 1)

