; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349458 () Bool)

(assert start!349458)

(declare-fun b!3705512 () Bool)

(declare-fun b_free!99097 () Bool)

(declare-fun b_next!99801 () Bool)

(assert (=> b!3705512 (= b_free!99097 (not b_next!99801))))

(declare-fun tp!1127127 () Bool)

(declare-fun b_and!277331 () Bool)

(assert (=> b!3705512 (= tp!1127127 b_and!277331)))

(declare-fun b_free!99099 () Bool)

(declare-fun b_next!99803 () Bool)

(assert (=> b!3705512 (= b_free!99099 (not b_next!99803))))

(declare-fun tp!1127130 () Bool)

(declare-fun b_and!277333 () Bool)

(assert (=> b!3705512 (= tp!1127130 b_and!277333)))

(declare-fun b!3705507 () Bool)

(declare-fun res!1507447 () Bool)

(declare-fun e!2295432 () Bool)

(assert (=> b!3705507 (=> (not res!1507447) (not e!2295432))))

(declare-datatypes ((LexerInterface!5621 0))(
  ( (LexerInterfaceExt!5618 (__x!24741 Int)) (Lexer!5619) )
))
(declare-fun thiss!19663 () LexerInterface!5621)

(declare-datatypes ((List!39650 0))(
  ( (Nil!39526) (Cons!39526 (h!44946 (_ BitVec 16)) (t!302333 List!39650)) )
))
(declare-datatypes ((TokenValue!6262 0))(
  ( (FloatLiteralValue!12524 (text!44279 List!39650)) (TokenValueExt!6261 (__x!24742 Int)) (Broken!31310 (value!192293 List!39650)) (Object!6385) (End!6262) (Def!6262) (Underscore!6262) (Match!6262) (Else!6262) (Error!6262) (Case!6262) (If!6262) (Extends!6262) (Abstract!6262) (Class!6262) (Val!6262) (DelimiterValue!12524 (del!6322 List!39650)) (KeywordValue!6268 (value!192294 List!39650)) (CommentValue!12524 (value!192295 List!39650)) (WhitespaceValue!12524 (value!192296 List!39650)) (IndentationValue!6262 (value!192297 List!39650)) (String!44643) (Int32!6262) (Broken!31311 (value!192298 List!39650)) (Boolean!6263) (Unit!57423) (OperatorValue!6265 (op!6322 List!39650)) (IdentifierValue!12524 (value!192299 List!39650)) (IdentifierValue!12525 (value!192300 List!39650)) (WhitespaceValue!12525 (value!192301 List!39650)) (True!12524) (False!12524) (Broken!31312 (value!192302 List!39650)) (Broken!31313 (value!192303 List!39650)) (True!12525) (RightBrace!6262) (RightBracket!6262) (Colon!6262) (Null!6262) (Comma!6262) (LeftBracket!6262) (False!12525) (LeftBrace!6262) (ImaginaryLiteralValue!6262 (text!44280 List!39650)) (StringLiteralValue!18786 (value!192304 List!39650)) (EOFValue!6262 (value!192305 List!39650)) (IdentValue!6262 (value!192306 List!39650)) (DelimiterValue!12525 (value!192307 List!39650)) (DedentValue!6262 (value!192308 List!39650)) (NewLineValue!6262 (value!192309 List!39650)) (IntegerValue!18786 (value!192310 (_ BitVec 32)) (text!44281 List!39650)) (IntegerValue!18787 (value!192311 Int) (text!44282 List!39650)) (Times!6262) (Or!6262) (Equal!6262) (Minus!6262) (Broken!31314 (value!192312 List!39650)) (And!6262) (Div!6262) (LessEqual!6262) (Mod!6262) (Concat!17053) (Not!6262) (Plus!6262) (SpaceValue!6262 (value!192313 List!39650)) (IntegerValue!18788 (value!192314 Int) (text!44283 List!39650)) (StringLiteralValue!18787 (text!44284 List!39650)) (FloatLiteralValue!12525 (text!44285 List!39650)) (BytesLiteralValue!6262 (value!192315 List!39650)) (CommentValue!12525 (value!192316 List!39650)) (StringLiteralValue!18788 (value!192317 List!39650)) (ErrorTokenValue!6262 (msg!6323 List!39650)) )
))
(declare-datatypes ((String!44644 0))(
  ( (String!44645 (value!192318 String)) )
))
(declare-datatypes ((C!21768 0))(
  ( (C!21769 (val!12932 Int)) )
))
(declare-datatypes ((List!39651 0))(
  ( (Nil!39527) (Cons!39527 (h!44947 C!21768) (t!302334 List!39651)) )
))
(declare-datatypes ((IArray!24263 0))(
  ( (IArray!24264 (innerList!12189 List!39651)) )
))
(declare-datatypes ((Conc!12129 0))(
  ( (Node!12129 (left!30703 Conc!12129) (right!31033 Conc!12129) (csize!24488 Int) (cheight!12340 Int)) (Leaf!18756 (xs!15331 IArray!24263) (csize!24489 Int)) (Empty!12129) )
))
(declare-datatypes ((BalanceConc!23872 0))(
  ( (BalanceConc!23873 (c!640014 Conc!12129)) )
))
(declare-datatypes ((Regex!10791 0))(
  ( (ElementMatch!10791 (c!640015 C!21768)) (Concat!17054 (regOne!22094 Regex!10791) (regTwo!22094 Regex!10791)) (EmptyExpr!10791) (Star!10791 (reg!11120 Regex!10791)) (EmptyLang!10791) (Union!10791 (regOne!22095 Regex!10791) (regTwo!22095 Regex!10791)) )
))
(declare-datatypes ((TokenValueInjection!11952 0))(
  ( (TokenValueInjection!11953 (toValue!8376 Int) (toChars!8235 Int)) )
))
(declare-datatypes ((Rule!11864 0))(
  ( (Rule!11865 (regex!6032 Regex!10791) (tag!6890 String!44644) (isSeparator!6032 Bool) (transformation!6032 TokenValueInjection!11952)) )
))
(declare-datatypes ((List!39652 0))(
  ( (Nil!39528) (Cons!39528 (h!44948 Rule!11864) (t!302335 List!39652)) )
))
(declare-fun rules!2525 () List!39652)

(declare-fun rulesInvariant!5018 (LexerInterface!5621 List!39652) Bool)

(assert (=> b!3705507 (= res!1507447 (rulesInvariant!5018 thiss!19663 rules!2525))))

(declare-fun res!1507449 () Bool)

(assert (=> start!349458 (=> (not res!1507449) (not e!2295432))))

(get-info :version)

(assert (=> start!349458 (= res!1507449 ((_ is Lexer!5619) thiss!19663))))

(assert (=> start!349458 e!2295432))

(assert (=> start!349458 true))

(declare-fun e!2295436 () Bool)

(assert (=> start!349458 e!2295436))

(declare-fun tag!164 () String!44644)

(declare-fun inv!53018 (String!44644) Bool)

(assert (=> start!349458 (inv!53018 tag!164)))

(declare-fun e!2295433 () Bool)

(declare-fun tp!1127129 () Bool)

(declare-fun b!3705508 () Bool)

(declare-fun e!2295434 () Bool)

(declare-fun inv!53020 (TokenValueInjection!11952) Bool)

(assert (=> b!3705508 (= e!2295433 (and tp!1127129 (inv!53018 (tag!6890 (h!44948 rules!2525))) (inv!53020 (transformation!6032 (h!44948 rules!2525))) e!2295434))))

(declare-fun b!3705509 () Bool)

(declare-fun ListPrimitiveSize!249 (List!39652) Int)

(assert (=> b!3705509 (= e!2295432 (not (< (ListPrimitiveSize!249 (t!302335 rules!2525)) (ListPrimitiveSize!249 rules!2525))))))

(assert (=> b!3705509 (rulesInvariant!5018 thiss!19663 (t!302335 rules!2525))))

(declare-datatypes ((Unit!57424 0))(
  ( (Unit!57425) )
))
(declare-fun lt!1296314 () Unit!57424)

(declare-fun lemmaInvariantOnRulesThenOnTail!704 (LexerInterface!5621 Rule!11864 List!39652) Unit!57424)

(assert (=> b!3705509 (= lt!1296314 (lemmaInvariantOnRulesThenOnTail!704 thiss!19663 (h!44948 rules!2525) (t!302335 rules!2525)))))

(declare-fun b!3705510 () Bool)

(declare-fun tp!1127128 () Bool)

(assert (=> b!3705510 (= e!2295436 (and e!2295433 tp!1127128))))

(declare-fun b!3705511 () Bool)

(declare-fun res!1507448 () Bool)

(assert (=> b!3705511 (=> (not res!1507448) (not e!2295432))))

(assert (=> b!3705511 (= res!1507448 (and (or (not ((_ is Cons!39528) rules!2525)) (not (= (tag!6890 (h!44948 rules!2525)) tag!164))) ((_ is Cons!39528) rules!2525) (not (= (tag!6890 (h!44948 rules!2525)) tag!164))))))

(assert (=> b!3705512 (= e!2295434 (and tp!1127127 tp!1127130))))

(assert (= (and start!349458 res!1507449) b!3705507))

(assert (= (and b!3705507 res!1507447) b!3705511))

(assert (= (and b!3705511 res!1507448) b!3705509))

(assert (= b!3705508 b!3705512))

(assert (= b!3705510 b!3705508))

(assert (= (and start!349458 ((_ is Cons!39528) rules!2525)) b!3705510))

(declare-fun m!4215797 () Bool)

(assert (=> b!3705507 m!4215797))

(declare-fun m!4215799 () Bool)

(assert (=> start!349458 m!4215799))

(declare-fun m!4215801 () Bool)

(assert (=> b!3705508 m!4215801))

(declare-fun m!4215803 () Bool)

(assert (=> b!3705508 m!4215803))

(declare-fun m!4215805 () Bool)

(assert (=> b!3705509 m!4215805))

(declare-fun m!4215807 () Bool)

(assert (=> b!3705509 m!4215807))

(declare-fun m!4215809 () Bool)

(assert (=> b!3705509 m!4215809))

(declare-fun m!4215811 () Bool)

(assert (=> b!3705509 m!4215811))

(check-sat (not b!3705508) (not b!3705507) b_and!277333 (not b_next!99803) (not start!349458) (not b!3705510) (not b_next!99801) b_and!277331 (not b!3705509))
(check-sat b_and!277333 b_and!277331 (not b_next!99803) (not b_next!99801))
(get-model)

(declare-fun d!1086375 () Bool)

(declare-fun res!1507456 () Bool)

(declare-fun e!2295443 () Bool)

(assert (=> d!1086375 (=> (not res!1507456) (not e!2295443))))

(declare-fun rulesValid!2336 (LexerInterface!5621 List!39652) Bool)

(assert (=> d!1086375 (= res!1507456 (rulesValid!2336 thiss!19663 rules!2525))))

(assert (=> d!1086375 (= (rulesInvariant!5018 thiss!19663 rules!2525) e!2295443)))

(declare-fun b!3705523 () Bool)

(declare-datatypes ((List!39653 0))(
  ( (Nil!39529) (Cons!39529 (h!44949 String!44644) (t!302336 List!39653)) )
))
(declare-fun noDuplicateTag!2337 (LexerInterface!5621 List!39652 List!39653) Bool)

(assert (=> b!3705523 (= e!2295443 (noDuplicateTag!2337 thiss!19663 rules!2525 Nil!39529))))

(assert (= (and d!1086375 res!1507456) b!3705523))

(declare-fun m!4215815 () Bool)

(assert (=> d!1086375 m!4215815))

(declare-fun m!4215817 () Bool)

(assert (=> b!3705523 m!4215817))

(assert (=> b!3705507 d!1086375))

(declare-fun d!1086381 () Bool)

(assert (=> d!1086381 (= (inv!53018 (tag!6890 (h!44948 rules!2525))) (= (mod (str.len (value!192318 (tag!6890 (h!44948 rules!2525)))) 2) 0))))

(assert (=> b!3705508 d!1086381))

(declare-fun d!1086383 () Bool)

(declare-fun res!1507462 () Bool)

(declare-fun e!2295449 () Bool)

(assert (=> d!1086383 (=> (not res!1507462) (not e!2295449))))

(declare-fun semiInverseModEq!2580 (Int Int) Bool)

(assert (=> d!1086383 (= res!1507462 (semiInverseModEq!2580 (toChars!8235 (transformation!6032 (h!44948 rules!2525))) (toValue!8376 (transformation!6032 (h!44948 rules!2525)))))))

(assert (=> d!1086383 (= (inv!53020 (transformation!6032 (h!44948 rules!2525))) e!2295449)))

(declare-fun b!3705529 () Bool)

(declare-fun equivClasses!2479 (Int Int) Bool)

(assert (=> b!3705529 (= e!2295449 (equivClasses!2479 (toChars!8235 (transformation!6032 (h!44948 rules!2525))) (toValue!8376 (transformation!6032 (h!44948 rules!2525)))))))

(assert (= (and d!1086383 res!1507462) b!3705529))

(declare-fun m!4215823 () Bool)

(assert (=> d!1086383 m!4215823))

(declare-fun m!4215827 () Bool)

(assert (=> b!3705529 m!4215827))

(assert (=> b!3705508 d!1086383))

(declare-fun d!1086387 () Bool)

(assert (=> d!1086387 (= (inv!53018 tag!164) (= (mod (str.len (value!192318 tag!164)) 2) 0))))

(assert (=> start!349458 d!1086387))

(declare-fun d!1086391 () Bool)

(declare-fun lt!1296324 () Int)

(assert (=> d!1086391 (>= lt!1296324 0)))

(declare-fun e!2295453 () Int)

(assert (=> d!1086391 (= lt!1296324 e!2295453)))

(declare-fun c!640022 () Bool)

(assert (=> d!1086391 (= c!640022 ((_ is Nil!39528) (t!302335 rules!2525)))))

(assert (=> d!1086391 (= (ListPrimitiveSize!249 (t!302335 rules!2525)) lt!1296324)))

(declare-fun b!3705535 () Bool)

(assert (=> b!3705535 (= e!2295453 0)))

(declare-fun b!3705536 () Bool)

(assert (=> b!3705536 (= e!2295453 (+ 1 (ListPrimitiveSize!249 (t!302335 (t!302335 rules!2525)))))))

(assert (= (and d!1086391 c!640022) b!3705535))

(assert (= (and d!1086391 (not c!640022)) b!3705536))

(declare-fun m!4215835 () Bool)

(assert (=> b!3705536 m!4215835))

(assert (=> b!3705509 d!1086391))

(declare-fun d!1086397 () Bool)

(declare-fun lt!1296325 () Int)

(assert (=> d!1086397 (>= lt!1296325 0)))

(declare-fun e!2295454 () Int)

(assert (=> d!1086397 (= lt!1296325 e!2295454)))

(declare-fun c!640023 () Bool)

(assert (=> d!1086397 (= c!640023 ((_ is Nil!39528) rules!2525))))

(assert (=> d!1086397 (= (ListPrimitiveSize!249 rules!2525) lt!1296325)))

(declare-fun b!3705537 () Bool)

(assert (=> b!3705537 (= e!2295454 0)))

(declare-fun b!3705538 () Bool)

(assert (=> b!3705538 (= e!2295454 (+ 1 (ListPrimitiveSize!249 (t!302335 rules!2525))))))

(assert (= (and d!1086397 c!640023) b!3705537))

(assert (= (and d!1086397 (not c!640023)) b!3705538))

(assert (=> b!3705538 m!4215805))

(assert (=> b!3705509 d!1086397))

(declare-fun d!1086399 () Bool)

(declare-fun res!1507464 () Bool)

(declare-fun e!2295455 () Bool)

(assert (=> d!1086399 (=> (not res!1507464) (not e!2295455))))

(assert (=> d!1086399 (= res!1507464 (rulesValid!2336 thiss!19663 (t!302335 rules!2525)))))

(assert (=> d!1086399 (= (rulesInvariant!5018 thiss!19663 (t!302335 rules!2525)) e!2295455)))

(declare-fun b!3705539 () Bool)

(assert (=> b!3705539 (= e!2295455 (noDuplicateTag!2337 thiss!19663 (t!302335 rules!2525) Nil!39529))))

(assert (= (and d!1086399 res!1507464) b!3705539))

(declare-fun m!4215837 () Bool)

(assert (=> d!1086399 m!4215837))

(declare-fun m!4215839 () Bool)

(assert (=> b!3705539 m!4215839))

(assert (=> b!3705509 d!1086399))

(declare-fun d!1086401 () Bool)

(assert (=> d!1086401 (rulesInvariant!5018 thiss!19663 (t!302335 rules!2525))))

(declare-fun lt!1296328 () Unit!57424)

(declare-fun choose!22156 (LexerInterface!5621 Rule!11864 List!39652) Unit!57424)

(assert (=> d!1086401 (= lt!1296328 (choose!22156 thiss!19663 (h!44948 rules!2525) (t!302335 rules!2525)))))

(assert (=> d!1086401 (rulesInvariant!5018 thiss!19663 (Cons!39528 (h!44948 rules!2525) (t!302335 rules!2525)))))

(assert (=> d!1086401 (= (lemmaInvariantOnRulesThenOnTail!704 thiss!19663 (h!44948 rules!2525) (t!302335 rules!2525)) lt!1296328)))

(declare-fun bs!574645 () Bool)

(assert (= bs!574645 d!1086401))

(assert (=> bs!574645 m!4215809))

(declare-fun m!4215845 () Bool)

(assert (=> bs!574645 m!4215845))

(declare-fun m!4215847 () Bool)

(assert (=> bs!574645 m!4215847))

(assert (=> b!3705509 d!1086401))

(declare-fun e!2295472 () Bool)

(assert (=> b!3705508 (= tp!1127129 e!2295472)))

(declare-fun b!3705575 () Bool)

(declare-fun tp_is_empty!18609 () Bool)

(assert (=> b!3705575 (= e!2295472 tp_is_empty!18609)))

(declare-fun b!3705576 () Bool)

(declare-fun tp!1127167 () Bool)

(declare-fun tp!1127165 () Bool)

(assert (=> b!3705576 (= e!2295472 (and tp!1127167 tp!1127165))))

(declare-fun b!3705578 () Bool)

(declare-fun tp!1127164 () Bool)

(declare-fun tp!1127168 () Bool)

(assert (=> b!3705578 (= e!2295472 (and tp!1127164 tp!1127168))))

(declare-fun b!3705577 () Bool)

(declare-fun tp!1127166 () Bool)

(assert (=> b!3705577 (= e!2295472 tp!1127166)))

(assert (= (and b!3705508 ((_ is ElementMatch!10791) (regex!6032 (h!44948 rules!2525)))) b!3705575))

(assert (= (and b!3705508 ((_ is Concat!17054) (regex!6032 (h!44948 rules!2525)))) b!3705576))

(assert (= (and b!3705508 ((_ is Star!10791) (regex!6032 (h!44948 rules!2525)))) b!3705577))

(assert (= (and b!3705508 ((_ is Union!10791) (regex!6032 (h!44948 rules!2525)))) b!3705578))

(declare-fun b!3705592 () Bool)

(declare-fun b_free!99105 () Bool)

(declare-fun b_next!99809 () Bool)

(assert (=> b!3705592 (= b_free!99105 (not b_next!99809))))

(declare-fun tp!1127183 () Bool)

(declare-fun b_and!277339 () Bool)

(assert (=> b!3705592 (= tp!1127183 b_and!277339)))

(declare-fun b_free!99107 () Bool)

(declare-fun b_next!99811 () Bool)

(assert (=> b!3705592 (= b_free!99107 (not b_next!99811))))

(declare-fun tp!1127184 () Bool)

(declare-fun b_and!277341 () Bool)

(assert (=> b!3705592 (= tp!1127184 b_and!277341)))

(declare-fun e!2295485 () Bool)

(assert (=> b!3705592 (= e!2295485 (and tp!1127183 tp!1127184))))

(declare-fun e!2295488 () Bool)

(declare-fun b!3705591 () Bool)

(declare-fun tp!1127182 () Bool)

(assert (=> b!3705591 (= e!2295488 (and tp!1127182 (inv!53018 (tag!6890 (h!44948 (t!302335 rules!2525)))) (inv!53020 (transformation!6032 (h!44948 (t!302335 rules!2525)))) e!2295485))))

(declare-fun b!3705590 () Bool)

(declare-fun e!2295487 () Bool)

(declare-fun tp!1127181 () Bool)

(assert (=> b!3705590 (= e!2295487 (and e!2295488 tp!1127181))))

(assert (=> b!3705510 (= tp!1127128 e!2295487)))

(assert (= b!3705591 b!3705592))

(assert (= b!3705590 b!3705591))

(assert (= (and b!3705510 ((_ is Cons!39528) (t!302335 rules!2525))) b!3705590))

(declare-fun m!4215853 () Bool)

(assert (=> b!3705591 m!4215853))

(declare-fun m!4215855 () Bool)

(assert (=> b!3705591 m!4215855))

(check-sat (not d!1086399) (not b!3705523) b_and!277341 (not b_next!99801) (not d!1086383) b_and!277333 (not b!3705577) (not b_next!99803) (not b!3705590) (not b!3705536) (not b_next!99809) (not d!1086401) (not b!3705538) (not b_next!99811) (not b!3705576) (not b!3705529) (not b!3705578) (not b!3705539) b_and!277331 (not b!3705591) (not d!1086375) b_and!277339 tp_is_empty!18609)
(check-sat b_and!277341 (not b_next!99811) (not b_next!99801) b_and!277333 b_and!277331 b_and!277339 (not b_next!99803) (not b_next!99809))
