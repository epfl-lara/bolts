; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!404328 () Bool)

(assert start!404328)

(declare-fun b!4227939 () Bool)

(declare-fun b_free!124787 () Bool)

(declare-fun b_next!125491 () Bool)

(assert (=> b!4227939 (= b_free!124787 (not b_next!125491))))

(declare-fun tp!1294953 () Bool)

(declare-fun b_and!334021 () Bool)

(assert (=> b!4227939 (= tp!1294953 b_and!334021)))

(declare-fun b_free!124789 () Bool)

(declare-fun b_next!125493 () Bool)

(assert (=> b!4227939 (= b_free!124789 (not b_next!125493))))

(declare-fun tp!1294951 () Bool)

(declare-fun b_and!334023 () Bool)

(assert (=> b!4227939 (= tp!1294951 b_and!334023)))

(declare-datatypes ((List!46780 0))(
  ( (Nil!46656) (Cons!46656 (h!52076 (_ BitVec 16)) (t!349397 List!46780)) )
))
(declare-datatypes ((TokenValue!8089 0))(
  ( (FloatLiteralValue!16178 (text!57068 List!46780)) (TokenValueExt!8088 (__x!28401 Int)) (Broken!40445 (value!244454 List!46780)) (Object!8212) (End!8089) (Def!8089) (Underscore!8089) (Match!8089) (Else!8089) (Error!8089) (Case!8089) (If!8089) (Extends!8089) (Abstract!8089) (Class!8089) (Val!8089) (DelimiterValue!16178 (del!8149 List!46780)) (KeywordValue!8095 (value!244455 List!46780)) (CommentValue!16178 (value!244456 List!46780)) (WhitespaceValue!16178 (value!244457 List!46780)) (IndentationValue!8089 (value!244458 List!46780)) (String!54316) (Int32!8089) (Broken!40446 (value!244459 List!46780)) (Boolean!8090) (Unit!65759) (OperatorValue!8092 (op!8149 List!46780)) (IdentifierValue!16178 (value!244460 List!46780)) (IdentifierValue!16179 (value!244461 List!46780)) (WhitespaceValue!16179 (value!244462 List!46780)) (True!16178) (False!16178) (Broken!40447 (value!244463 List!46780)) (Broken!40448 (value!244464 List!46780)) (True!16179) (RightBrace!8089) (RightBracket!8089) (Colon!8089) (Null!8089) (Comma!8089) (LeftBracket!8089) (False!16179) (LeftBrace!8089) (ImaginaryLiteralValue!8089 (text!57069 List!46780)) (StringLiteralValue!24267 (value!244465 List!46780)) (EOFValue!8089 (value!244466 List!46780)) (IdentValue!8089 (value!244467 List!46780)) (DelimiterValue!16179 (value!244468 List!46780)) (DedentValue!8089 (value!244469 List!46780)) (NewLineValue!8089 (value!244470 List!46780)) (IntegerValue!24267 (value!244471 (_ BitVec 32)) (text!57070 List!46780)) (IntegerValue!24268 (value!244472 Int) (text!57071 List!46780)) (Times!8089) (Or!8089) (Equal!8089) (Minus!8089) (Broken!40449 (value!244473 List!46780)) (And!8089) (Div!8089) (LessEqual!8089) (Mod!8089) (Concat!20853) (Not!8089) (Plus!8089) (SpaceValue!8089 (value!244474 List!46780)) (IntegerValue!24269 (value!244475 Int) (text!57072 List!46780)) (StringLiteralValue!24268 (text!57073 List!46780)) (FloatLiteralValue!16179 (text!57074 List!46780)) (BytesLiteralValue!8089 (value!244476 List!46780)) (CommentValue!16179 (value!244477 List!46780)) (StringLiteralValue!24269 (value!244478 List!46780)) (ErrorTokenValue!8089 (msg!8150 List!46780)) )
))
(declare-datatypes ((C!25722 0))(
  ( (C!25723 (val!15023 Int)) )
))
(declare-datatypes ((List!46781 0))(
  ( (Nil!46657) (Cons!46657 (h!52077 C!25722) (t!349398 List!46781)) )
))
(declare-datatypes ((IArray!28145 0))(
  ( (IArray!28146 (innerList!14130 List!46781)) )
))
(declare-datatypes ((Conc!14070 0))(
  ( (Node!14070 (left!34703 Conc!14070) (right!35033 Conc!14070) (csize!28370 Int) (cheight!14281 Int)) (Leaf!21744 (xs!17376 IArray!28145) (csize!28371 Int)) (Empty!14070) )
))
(declare-datatypes ((BalanceConc!27734 0))(
  ( (BalanceConc!27735 (c!718748 Conc!14070)) )
))
(declare-datatypes ((Regex!12764 0))(
  ( (ElementMatch!12764 (c!718749 C!25722)) (Concat!20854 (regOne!26040 Regex!12764) (regTwo!26040 Regex!12764)) (EmptyExpr!12764) (Star!12764 (reg!13093 Regex!12764)) (EmptyLang!12764) (Union!12764 (regOne!26041 Regex!12764) (regTwo!26041 Regex!12764)) )
))
(declare-datatypes ((String!54317 0))(
  ( (String!54318 (value!244479 String)) )
))
(declare-datatypes ((TokenValueInjection!15606 0))(
  ( (TokenValueInjection!15607 (toValue!10587 Int) (toChars!10446 Int)) )
))
(declare-datatypes ((Rule!15518 0))(
  ( (Rule!15519 (regex!7859 Regex!12764) (tag!8723 String!54317) (isSeparator!7859 Bool) (transformation!7859 TokenValueInjection!15606)) )
))
(declare-datatypes ((Token!14356 0))(
  ( (Token!14357 (value!244480 TokenValue!8089) (rule!10975 Rule!15518) (size!34176 Int) (originalCharacters!8209 List!46781)) )
))
(declare-fun thiss!6938 () Token!14356)

(declare-fun size!34177 (List!46781) Int)

(assert (=> start!404328 (not (= (size!34176 thiss!6938) (size!34177 (originalCharacters!8209 thiss!6938))))))

(declare-fun e!2625215 () Bool)

(declare-fun inv!61307 (Token!14356) Bool)

(assert (=> start!404328 (and (inv!61307 thiss!6938) e!2625215)))

(declare-fun e!2625216 () Bool)

(assert (=> b!4227939 (= e!2625216 (and tp!1294953 tp!1294951))))

(declare-fun b!4227938 () Bool)

(declare-fun e!2625213 () Bool)

(declare-fun tp!1294954 () Bool)

(declare-fun inv!61304 (String!54317) Bool)

(declare-fun inv!61308 (TokenValueInjection!15606) Bool)

(assert (=> b!4227938 (= e!2625213 (and tp!1294954 (inv!61304 (tag!8723 (rule!10975 thiss!6938))) (inv!61308 (transformation!7859 (rule!10975 thiss!6938))) e!2625216))))

(declare-fun tp!1294952 () Bool)

(declare-fun b!4227937 () Bool)

(declare-fun inv!21 (TokenValue!8089) Bool)

(assert (=> b!4227937 (= e!2625215 (and (inv!21 (value!244480 thiss!6938)) e!2625213 tp!1294952))))

(assert (= b!4227938 b!4227939))

(assert (= b!4227937 b!4227938))

(assert (= start!404328 b!4227937))

(declare-fun m!4815171 () Bool)

(assert (=> start!404328 m!4815171))

(declare-fun m!4815173 () Bool)

(assert (=> start!404328 m!4815173))

(declare-fun m!4815175 () Bool)

(assert (=> b!4227938 m!4815175))

(declare-fun m!4815177 () Bool)

(assert (=> b!4227938 m!4815177))

(declare-fun m!4815179 () Bool)

(assert (=> b!4227937 m!4815179))

(push 1)

(assert (not b_next!125493))

(assert (not b!4227938))

(assert b_and!334021)

(assert b_and!334023)

(assert (not b!4227937))

(assert (not b_next!125491))

(assert (not start!404328))

(check-sat)

(pop 1)

(push 1)

(assert b_and!334021)

(assert b_and!334023)

(assert (not b_next!125491))

(assert (not b_next!125493))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1244570 () Bool)

(declare-fun lt!1503307 () Int)

(assert (=> d!1244570 (>= lt!1503307 0)))

(declare-fun e!2625235 () Int)

(assert (=> d!1244570 (= lt!1503307 e!2625235)))

(declare-fun c!718754 () Bool)

(assert (=> d!1244570 (= c!718754 (is-Nil!46657 (originalCharacters!8209 thiss!6938)))))

(assert (=> d!1244570 (= (size!34177 (originalCharacters!8209 thiss!6938)) lt!1503307)))

(declare-fun b!4227953 () Bool)

(assert (=> b!4227953 (= e!2625235 0)))

(declare-fun b!4227954 () Bool)

(assert (=> b!4227954 (= e!2625235 (+ 1 (size!34177 (t!349398 (originalCharacters!8209 thiss!6938)))))))

(assert (= (and d!1244570 c!718754) b!4227953))

(assert (= (and d!1244570 (not c!718754)) b!4227954))

(declare-fun m!4815191 () Bool)

(assert (=> b!4227954 m!4815191))

(assert (=> start!404328 d!1244570))

(declare-fun d!1244574 () Bool)

(declare-fun res!1738533 () Bool)

(declare-fun e!2625244 () Bool)

(assert (=> d!1244574 (=> (not res!1738533) (not e!2625244))))

(declare-fun isEmpty!27600 (List!46781) Bool)

(assert (=> d!1244574 (= res!1738533 (not (isEmpty!27600 (originalCharacters!8209 thiss!6938))))))

(assert (=> d!1244574 (= (inv!61307 thiss!6938) e!2625244)))

(declare-fun b!4227969 () Bool)

(declare-fun res!1738534 () Bool)

(assert (=> b!4227969 (=> (not res!1738534) (not e!2625244))))

(declare-fun list!16839 (BalanceConc!27734) List!46781)

(declare-fun dynLambda!20021 (Int TokenValue!8089) BalanceConc!27734)

(assert (=> b!4227969 (= res!1738534 (= (originalCharacters!8209 thiss!6938) (list!16839 (dynLambda!20021 (toChars!10446 (transformation!7859 (rule!10975 thiss!6938))) (value!244480 thiss!6938)))))))

(declare-fun b!4227970 () Bool)

(assert (=> b!4227970 (= e!2625244 (= (size!34176 thiss!6938) (size!34177 (originalCharacters!8209 thiss!6938))))))

(assert (= (and d!1244574 res!1738533) b!4227969))

(assert (= (and b!4227969 res!1738534) b!4227970))

(declare-fun b_lambda!124507 () Bool)

(assert (=> (not b_lambda!124507) (not b!4227969)))

(declare-fun t!349402 () Bool)

(declare-fun tb!253811 () Bool)

(assert (=> (and b!4227939 (= (toChars!10446 (transformation!7859 (rule!10975 thiss!6938))) (toChars!10446 (transformation!7859 (rule!10975 thiss!6938)))) t!349402) tb!253811))

(declare-fun b!4227975 () Bool)

(declare-fun e!2625247 () Bool)

(declare-fun tp!1294969 () Bool)

(declare-fun inv!61311 (Conc!14070) Bool)

(assert (=> b!4227975 (= e!2625247 (and (inv!61311 (c!718748 (dynLambda!20021 (toChars!10446 (transformation!7859 (rule!10975 thiss!6938))) (value!244480 thiss!6938)))) tp!1294969))))

(declare-fun result!309500 () Bool)

(declare-fun inv!61312 (BalanceConc!27734) Bool)

(assert (=> tb!253811 (= result!309500 (and (inv!61312 (dynLambda!20021 (toChars!10446 (transformation!7859 (rule!10975 thiss!6938))) (value!244480 thiss!6938))) e!2625247))))

(assert (= tb!253811 b!4227975))

(declare-fun m!4815193 () Bool)

(assert (=> b!4227975 m!4815193))

(declare-fun m!4815195 () Bool)

(assert (=> tb!253811 m!4815195))

(assert (=> b!4227969 t!349402))

(declare-fun b_and!334029 () Bool)

(assert (= b_and!334023 (and (=> t!349402 result!309500) b_and!334029)))

(declare-fun m!4815197 () Bool)

(assert (=> d!1244574 m!4815197))

(declare-fun m!4815199 () Bool)

(assert (=> b!4227969 m!4815199))

(assert (=> b!4227969 m!4815199))

(declare-fun m!4815201 () Bool)

(assert (=> b!4227969 m!4815201))

(assert (=> b!4227970 m!4815171))

(assert (=> start!404328 d!1244574))

(declare-fun b!4227991 () Bool)

(declare-fun e!2625257 () Bool)

(declare-fun inv!16 (TokenValue!8089) Bool)

(assert (=> b!4227991 (= e!2625257 (inv!16 (value!244480 thiss!6938)))))

(declare-fun b!4227992 () Bool)

(declare-fun e!2625259 () Bool)

(assert (=> b!4227992 (= e!2625257 e!2625259)))

(declare-fun c!718766 () Bool)

(assert (=> b!4227992 (= c!718766 (is-IntegerValue!24268 (value!244480 thiss!6938)))))

(declare-fun b!4227993 () Bool)

(declare-fun res!1738538 () Bool)

(declare-fun e!2625258 () Bool)

(assert (=> b!4227993 (=> res!1738538 e!2625258)))

(assert (=> b!4227993 (= res!1738538 (not (is-IntegerValue!24269 (value!244480 thiss!6938))))))

(assert (=> b!4227993 (= e!2625259 e!2625258)))

(declare-fun b!4227994 () Bool)

(declare-fun inv!15 (TokenValue!8089) Bool)

(assert (=> b!4227994 (= e!2625258 (inv!15 (value!244480 thiss!6938)))))

(declare-fun d!1244576 () Bool)

(declare-fun c!718765 () Bool)

(assert (=> d!1244576 (= c!718765 (is-IntegerValue!24267 (value!244480 thiss!6938)))))

(assert (=> d!1244576 (= (inv!21 (value!244480 thiss!6938)) e!2625257)))

(declare-fun b!4227995 () Bool)

(declare-fun inv!17 (TokenValue!8089) Bool)

(assert (=> b!4227995 (= e!2625259 (inv!17 (value!244480 thiss!6938)))))

(assert (= (and d!1244576 c!718765) b!4227991))

(assert (= (and d!1244576 (not c!718765)) b!4227992))

(assert (= (and b!4227992 c!718766) b!4227995))

(assert (= (and b!4227992 (not c!718766)) b!4227993))

(assert (= (and b!4227993 (not res!1738538)) b!4227994))

(declare-fun m!4815209 () Bool)

(assert (=> b!4227991 m!4815209))

(declare-fun m!4815211 () Bool)

(assert (=> b!4227994 m!4815211))

(declare-fun m!4815213 () Bool)

(assert (=> b!4227995 m!4815213))

(assert (=> b!4227937 d!1244576))

(declare-fun d!1244582 () Bool)

(assert (=> d!1244582 (= (inv!61304 (tag!8723 (rule!10975 thiss!6938))) (= (mod (str.len (value!244479 (tag!8723 (rule!10975 thiss!6938)))) 2) 0))))

(assert (=> b!4227938 d!1244582))

(declare-fun d!1244584 () Bool)

(declare-fun res!1738541 () Bool)

(declare-fun e!2625262 () Bool)

(assert (=> d!1244584 (=> (not res!1738541) (not e!2625262))))

(declare-fun semiInverseModEq!3422 (Int Int) Bool)

(assert (=> d!1244584 (= res!1738541 (semiInverseModEq!3422 (toChars!10446 (transformation!7859 (rule!10975 thiss!6938))) (toValue!10587 (transformation!7859 (rule!10975 thiss!6938)))))))

(assert (=> d!1244584 (= (inv!61308 (transformation!7859 (rule!10975 thiss!6938))) e!2625262)))

(declare-fun b!4227998 () Bool)

(declare-fun equivClasses!3321 (Int Int) Bool)

(assert (=> b!4227998 (= e!2625262 (equivClasses!3321 (toChars!10446 (transformation!7859 (rule!10975 thiss!6938))) (toValue!10587 (transformation!7859 (rule!10975 thiss!6938)))))))

(assert (= (and d!1244584 res!1738541) b!4227998))

(declare-fun m!4815215 () Bool)

(assert (=> d!1244584 m!4815215))

(declare-fun m!4815217 () Bool)

(assert (=> b!4227998 m!4815217))

(assert (=> b!4227938 d!1244584))

(declare-fun b!4228003 () Bool)

(declare-fun e!2625265 () Bool)

(declare-fun tp_is_empty!22459 () Bool)

(declare-fun tp!1294972 () Bool)

(assert (=> b!4228003 (= e!2625265 (and tp_is_empty!22459 tp!1294972))))

(assert (=> b!4227937 (= tp!1294952 e!2625265)))

(assert (= (and b!4227937 (is-Cons!46657 (originalCharacters!8209 thiss!6938))) b!4228003))

(declare-fun b!4228018 () Bool)

(declare-fun e!2625270 () Bool)

(declare-fun tp!1294987 () Bool)

(assert (=> b!4228018 (= e!2625270 tp!1294987)))

(declare-fun b!4228016 () Bool)

(assert (=> b!4228016 (= e!2625270 tp_is_empty!22459)))

(declare-fun b!4228019 () Bool)

(declare-fun tp!1294983 () Bool)

(declare-fun tp!1294984 () Bool)

(assert (=> b!4228019 (= e!2625270 (and tp!1294983 tp!1294984))))

(assert (=> b!4227938 (= tp!1294954 e!2625270)))

(declare-fun b!4228017 () Bool)

(declare-fun tp!1294986 () Bool)

(declare-fun tp!1294985 () Bool)

(assert (=> b!4228017 (= e!2625270 (and tp!1294986 tp!1294985))))

(assert (= (and b!4227938 (is-ElementMatch!12764 (regex!7859 (rule!10975 thiss!6938)))) b!4228016))

(assert (= (and b!4227938 (is-Concat!20854 (regex!7859 (rule!10975 thiss!6938)))) b!4228017))

(assert (= (and b!4227938 (is-Star!12764 (regex!7859 (rule!10975 thiss!6938)))) b!4228018))

(assert (= (and b!4227938 (is-Union!12764 (regex!7859 (rule!10975 thiss!6938)))) b!4228019))

(declare-fun b_lambda!124509 () Bool)

(assert (= b_lambda!124507 (or (and b!4227939 b_free!124789) b_lambda!124509)))

(push 1)

(assert tp_is_empty!22459)

(assert (not b!4228019))

(assert (not b!4227998))

(assert (not b_next!125493))

(assert (not b!4227995))

(assert b_and!334021)

(assert (not b!4227969))

(assert (not b!4227954))

(assert (not b!4227994))

(assert b_and!334029)

(assert (not b!4227991))

(assert (not d!1244584))

(assert (not b!4228003))

(assert (not b!4228018))

(assert (not b!4227970))

(assert (not b_next!125491))

(assert (not b!4227975))

(assert (not d!1244574))

(assert (not b_lambda!124509))

(assert (not tb!253811))

(assert (not b!4228017))

(check-sat)

(pop 1)

(push 1)

(assert b_and!334021)

(assert b_and!334029)

(assert (not b_next!125491))

(assert (not b_next!125493))

(check-sat)

(pop 1)

