; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!348084 () Bool)

(assert start!348084)

(declare-fun b!3696506 () Bool)

(declare-fun b_free!98345 () Bool)

(declare-fun b_next!99049 () Bool)

(assert (=> b!3696506 (= b_free!98345 (not b_next!99049))))

(declare-fun tp!1123532 () Bool)

(declare-fun b_and!276283 () Bool)

(assert (=> b!3696506 (= tp!1123532 b_and!276283)))

(declare-fun b_free!98347 () Bool)

(declare-fun b_next!99051 () Bool)

(assert (=> b!3696506 (= b_free!98347 (not b_next!99051))))

(declare-fun tp!1123529 () Bool)

(declare-fun b_and!276285 () Bool)

(assert (=> b!3696506 (= tp!1123529 b_and!276285)))

(declare-fun b!3696502 () Bool)

(declare-fun b_free!98349 () Bool)

(declare-fun b_next!99053 () Bool)

(assert (=> b!3696502 (= b_free!98349 (not b_next!99053))))

(declare-fun tp!1123531 () Bool)

(declare-fun b_and!276287 () Bool)

(assert (=> b!3696502 (= tp!1123531 b_and!276287)))

(declare-fun b_free!98351 () Bool)

(declare-fun b_next!99055 () Bool)

(assert (=> b!3696502 (= b_free!98351 (not b_next!99055))))

(declare-fun tp!1123535 () Bool)

(declare-fun b_and!276289 () Bool)

(assert (=> b!3696502 (= tp!1123535 b_and!276289)))

(declare-fun e!2289195 () Bool)

(declare-datatypes ((List!39359 0))(
  ( (Nil!39235) (Cons!39235 (h!44655 (_ BitVec 16)) (t!301706 List!39359)) )
))
(declare-datatypes ((TokenValue!6181 0))(
  ( (FloatLiteralValue!12362 (text!43712 List!39359)) (TokenValueExt!6180 (__x!24579 Int)) (Broken!30905 (value!190033 List!39359)) (Object!6304) (End!6181) (Def!6181) (Underscore!6181) (Match!6181) (Else!6181) (Error!6181) (Case!6181) (If!6181) (Extends!6181) (Abstract!6181) (Class!6181) (Val!6181) (DelimiterValue!12362 (del!6241 List!39359)) (KeywordValue!6187 (value!190034 List!39359)) (CommentValue!12362 (value!190035 List!39359)) (WhitespaceValue!12362 (value!190036 List!39359)) (IndentationValue!6181 (value!190037 List!39359)) (String!44240) (Int32!6181) (Broken!30906 (value!190038 List!39359)) (Boolean!6182) (Unit!57220) (OperatorValue!6184 (op!6241 List!39359)) (IdentifierValue!12362 (value!190039 List!39359)) (IdentifierValue!12363 (value!190040 List!39359)) (WhitespaceValue!12363 (value!190041 List!39359)) (True!12362) (False!12362) (Broken!30907 (value!190042 List!39359)) (Broken!30908 (value!190043 List!39359)) (True!12363) (RightBrace!6181) (RightBracket!6181) (Colon!6181) (Null!6181) (Comma!6181) (LeftBracket!6181) (False!12363) (LeftBrace!6181) (ImaginaryLiteralValue!6181 (text!43713 List!39359)) (StringLiteralValue!18543 (value!190044 List!39359)) (EOFValue!6181 (value!190045 List!39359)) (IdentValue!6181 (value!190046 List!39359)) (DelimiterValue!12363 (value!190047 List!39359)) (DedentValue!6181 (value!190048 List!39359)) (NewLineValue!6181 (value!190049 List!39359)) (IntegerValue!18543 (value!190050 (_ BitVec 32)) (text!43714 List!39359)) (IntegerValue!18544 (value!190051 Int) (text!43715 List!39359)) (Times!6181) (Or!6181) (Equal!6181) (Minus!6181) (Broken!30909 (value!190052 List!39359)) (And!6181) (Div!6181) (LessEqual!6181) (Mod!6181) (Concat!16891) (Not!6181) (Plus!6181) (SpaceValue!6181 (value!190053 List!39359)) (IntegerValue!18545 (value!190054 Int) (text!43716 List!39359)) (StringLiteralValue!18544 (text!43717 List!39359)) (FloatLiteralValue!12363 (text!43718 List!39359)) (BytesLiteralValue!6181 (value!190055 List!39359)) (CommentValue!12363 (value!190056 List!39359)) (StringLiteralValue!18545 (value!190057 List!39359)) (ErrorTokenValue!6181 (msg!6242 List!39359)) )
))
(declare-datatypes ((C!21606 0))(
  ( (C!21607 (val!12851 Int)) )
))
(declare-datatypes ((List!39360 0))(
  ( (Nil!39236) (Cons!39236 (h!44656 C!21606) (t!301707 List!39360)) )
))
(declare-datatypes ((IArray!24101 0))(
  ( (IArray!24102 (innerList!12108 List!39360)) )
))
(declare-datatypes ((Conc!12048 0))(
  ( (Node!12048 (left!30570 Conc!12048) (right!30900 Conc!12048) (csize!24326 Int) (cheight!12259 Int)) (Leaf!18635 (xs!15250 IArray!24101) (csize!24327 Int)) (Empty!12048) )
))
(declare-datatypes ((BalanceConc!23710 0))(
  ( (BalanceConc!23711 (c!638935 Conc!12048)) )
))
(declare-datatypes ((TokenValueInjection!11790 0))(
  ( (TokenValueInjection!11791 (toValue!8283 Int) (toChars!8142 Int)) )
))
(declare-datatypes ((Regex!10710 0))(
  ( (ElementMatch!10710 (c!638936 C!21606)) (Concat!16892 (regOne!21932 Regex!10710) (regTwo!21932 Regex!10710)) (EmptyExpr!10710) (Star!10710 (reg!11039 Regex!10710)) (EmptyLang!10710) (Union!10710 (regOne!21933 Regex!10710) (regTwo!21933 Regex!10710)) )
))
(declare-datatypes ((String!44241 0))(
  ( (String!44242 (value!190058 String)) )
))
(declare-datatypes ((Rule!11702 0))(
  ( (Rule!11703 (regex!5951 Regex!10710) (tag!6779 String!44241) (isSeparator!5951 Bool) (transformation!5951 TokenValueInjection!11790)) )
))
(declare-datatypes ((Token!11256 0))(
  ( (Token!11257 (value!190059 TokenValue!6181) (rule!8807 Rule!11702) (size!29933 Int) (originalCharacters!6659 List!39360)) )
))
(declare-fun token!544 () Token!11256)

(declare-fun e!2289192 () Bool)

(declare-fun b!3696493 () Bool)

(declare-fun tp!1123530 () Bool)

(declare-fun inv!52727 (String!44241) Bool)

(declare-fun inv!52730 (TokenValueInjection!11790) Bool)

(assert (=> b!3696493 (= e!2289192 (and tp!1123530 (inv!52727 (tag!6779 (rule!8807 token!544))) (inv!52730 (transformation!5951 (rule!8807 token!544))) e!2289195))))

(declare-fun e!2289193 () Bool)

(declare-fun b!3696494 () Bool)

(declare-fun tp!1123527 () Bool)

(declare-fun inv!21 (TokenValue!6181) Bool)

(assert (=> b!3696494 (= e!2289193 (and (inv!21 (value!190059 token!544)) e!2289192 tp!1123527))))

(declare-fun res!1503224 () Bool)

(declare-fun e!2289185 () Bool)

(assert (=> start!348084 (=> (not res!1503224) (not e!2289185))))

(declare-datatypes ((LexerInterface!5540 0))(
  ( (LexerInterfaceExt!5537 (__x!24580 Int)) (Lexer!5538) )
))
(declare-fun thiss!25322 () LexerInterface!5540)

(assert (=> start!348084 (= res!1503224 (is-Lexer!5538 thiss!25322))))

(assert (=> start!348084 e!2289185))

(assert (=> start!348084 true))

(declare-fun e!2289189 () Bool)

(assert (=> start!348084 e!2289189))

(declare-fun inv!52731 (Token!11256) Bool)

(assert (=> start!348084 (and (inv!52731 token!544) e!2289193)))

(declare-fun e!2289188 () Bool)

(assert (=> start!348084 e!2289188))

(declare-fun e!2289194 () Bool)

(declare-datatypes ((List!39361 0))(
  ( (Nil!39237) (Cons!39237 (h!44657 Rule!11702) (t!301708 List!39361)) )
))
(declare-fun rules!3598 () List!39361)

(declare-fun b!3696495 () Bool)

(declare-fun tp!1123534 () Bool)

(declare-fun e!2289186 () Bool)

(assert (=> b!3696495 (= e!2289194 (and tp!1123534 (inv!52727 (tag!6779 (h!44657 rules!3598))) (inv!52730 (transformation!5951 (h!44657 rules!3598))) e!2289186))))

(declare-fun b!3696496 () Bool)

(declare-fun e!2289191 () Bool)

(declare-datatypes ((Option!8481 0))(
  ( (None!8480) (Some!8480 (v!38438 Rule!11702)) )
))
(declare-fun lt!1293887 () Option!8481)

(declare-fun validRegex!4897 (Regex!10710) Bool)

(declare-fun get!13044 (Option!8481) Rule!11702)

(assert (=> b!3696496 (= e!2289191 (not (validRegex!4897 (regex!5951 (get!13044 lt!1293887)))))))

(declare-fun lt!1293886 () List!39360)

(declare-fun list!14659 (BalanceConc!23710) List!39360)

(declare-fun charsOf!3944 (Token!11256) BalanceConc!23710)

(assert (=> b!3696496 (= lt!1293886 (list!14659 (charsOf!3944 token!544)))))

(declare-fun b!3696497 () Bool)

(declare-fun res!1503220 () Bool)

(assert (=> b!3696497 (=> (not res!1503220) (not e!2289185))))

(declare-fun rulesInvariant!4937 (LexerInterface!5540 List!39361) Bool)

(assert (=> b!3696497 (= res!1503220 (rulesInvariant!4937 thiss!25322 rules!3598))))

(declare-fun b!3696498 () Bool)

(declare-fun res!1503226 () Bool)

(assert (=> b!3696498 (=> (not res!1503226) (not e!2289185))))

(declare-fun isEmpty!23377 (List!39361) Bool)

(assert (=> b!3696498 (= res!1503226 (not (isEmpty!23377 rules!3598)))))

(declare-fun b!3696499 () Bool)

(declare-fun res!1503223 () Bool)

(declare-fun e!2289190 () Bool)

(assert (=> b!3696499 (=> (not res!1503223) (not e!2289190))))

(assert (=> b!3696499 (= res!1503223 (not (is-Cons!39237 rules!3598)))))

(declare-fun b!3696500 () Bool)

(declare-fun res!1503225 () Bool)

(assert (=> b!3696500 (=> (not res!1503225) (not e!2289190))))

(declare-datatypes ((tuple2!39114 0))(
  ( (tuple2!39115 (_1!22691 Token!11256) (_2!22691 List!39360)) )
))
(declare-datatypes ((Option!8482 0))(
  ( (None!8481) (Some!8481 (v!38439 tuple2!39114)) )
))
(declare-fun lt!1293885 () Option!8482)

(declare-fun get!13045 (Option!8482) tuple2!39114)

(assert (=> b!3696500 (= res!1503225 (= (_1!22691 (get!13045 lt!1293885)) token!544))))

(declare-fun b!3696501 () Bool)

(assert (=> b!3696501 (= e!2289185 e!2289190)))

(declare-fun res!1503221 () Bool)

(assert (=> b!3696501 (=> (not res!1503221) (not e!2289190))))

(declare-fun isDefined!6670 (Option!8482) Bool)

(assert (=> b!3696501 (= res!1503221 (isDefined!6670 lt!1293885))))

(declare-fun input!3172 () List!39360)

(declare-fun maxPrefix!3062 (LexerInterface!5540 List!39361 List!39360) Option!8482)

(assert (=> b!3696501 (= lt!1293885 (maxPrefix!3062 thiss!25322 rules!3598 input!3172))))

(assert (=> b!3696502 (= e!2289195 (and tp!1123531 tp!1123535))))

(declare-fun b!3696503 () Bool)

(assert (=> b!3696503 (= e!2289190 e!2289191)))

(declare-fun res!1503222 () Bool)

(assert (=> b!3696503 (=> (not res!1503222) (not e!2289191))))

(declare-fun isDefined!6671 (Option!8481) Bool)

(assert (=> b!3696503 (= res!1503222 (isDefined!6671 lt!1293887))))

(declare-fun getRuleFromTag!1507 (LexerInterface!5540 List!39361 String!44241) Option!8481)

(assert (=> b!3696503 (= lt!1293887 (getRuleFromTag!1507 thiss!25322 rules!3598 (tag!6779 (rule!8807 token!544))))))

(declare-fun b!3696504 () Bool)

(declare-fun tp!1123528 () Bool)

(assert (=> b!3696504 (= e!2289189 (and e!2289194 tp!1123528))))

(declare-fun b!3696505 () Bool)

(declare-fun tp_is_empty!18495 () Bool)

(declare-fun tp!1123533 () Bool)

(assert (=> b!3696505 (= e!2289188 (and tp_is_empty!18495 tp!1123533))))

(assert (=> b!3696506 (= e!2289186 (and tp!1123532 tp!1123529))))

(assert (= (and start!348084 res!1503224) b!3696497))

(assert (= (and b!3696497 res!1503220) b!3696498))

(assert (= (and b!3696498 res!1503226) b!3696501))

(assert (= (and b!3696501 res!1503221) b!3696500))

(assert (= (and b!3696500 res!1503225) b!3696499))

(assert (= (and b!3696499 res!1503223) b!3696503))

(assert (= (and b!3696503 res!1503222) b!3696496))

(assert (= b!3696495 b!3696506))

(assert (= b!3696504 b!3696495))

(assert (= (and start!348084 (is-Cons!39237 rules!3598)) b!3696504))

(assert (= b!3696493 b!3696502))

(assert (= b!3696494 b!3696493))

(assert (= start!348084 b!3696494))

(assert (= (and start!348084 (is-Cons!39236 input!3172)) b!3696505))

(declare-fun m!4208173 () Bool)

(assert (=> b!3696495 m!4208173))

(declare-fun m!4208175 () Bool)

(assert (=> b!3696495 m!4208175))

(declare-fun m!4208177 () Bool)

(assert (=> b!3696496 m!4208177))

(declare-fun m!4208179 () Bool)

(assert (=> b!3696496 m!4208179))

(declare-fun m!4208181 () Bool)

(assert (=> b!3696496 m!4208181))

(assert (=> b!3696496 m!4208181))

(declare-fun m!4208183 () Bool)

(assert (=> b!3696496 m!4208183))

(declare-fun m!4208185 () Bool)

(assert (=> start!348084 m!4208185))

(declare-fun m!4208187 () Bool)

(assert (=> b!3696498 m!4208187))

(declare-fun m!4208189 () Bool)

(assert (=> b!3696501 m!4208189))

(declare-fun m!4208191 () Bool)

(assert (=> b!3696501 m!4208191))

(declare-fun m!4208193 () Bool)

(assert (=> b!3696494 m!4208193))

(declare-fun m!4208195 () Bool)

(assert (=> b!3696493 m!4208195))

(declare-fun m!4208197 () Bool)

(assert (=> b!3696493 m!4208197))

(declare-fun m!4208199 () Bool)

(assert (=> b!3696500 m!4208199))

(declare-fun m!4208201 () Bool)

(assert (=> b!3696497 m!4208201))

(declare-fun m!4208203 () Bool)

(assert (=> b!3696503 m!4208203))

(declare-fun m!4208205 () Bool)

(assert (=> b!3696503 m!4208205))

(push 1)

(assert (not b!3696495))

(assert (not b_next!99053))

(assert (not b!3696493))

(assert tp_is_empty!18495)

(assert (not b!3696498))

(assert b_and!276289)

(assert (not b!3696494))

(assert (not start!348084))

(assert (not b!3696500))

(assert (not b!3696496))

(assert (not b!3696505))

(assert (not b!3696497))

(assert (not b_next!99049))

(assert (not b_next!99055))

(assert b_and!276285)

(assert b_and!276287)

(assert (not b_next!99051))

(assert (not b!3696503))

(assert (not b!3696501))

(assert b_and!276283)

(assert (not b!3696504))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99049))

(assert (not b_next!99051))

(assert (not b_next!99053))

(assert b_and!276283)

(assert b_and!276289)

(assert (not b_next!99055))

(assert b_and!276285)

(assert b_and!276287)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1084249 () Bool)

(assert (=> d!1084249 (= (inv!52727 (tag!6779 (rule!8807 token!544))) (= (mod (str.len (value!190058 (tag!6779 (rule!8807 token!544)))) 2) 0))))

(assert (=> b!3696493 d!1084249))

(declare-fun d!1084251 () Bool)

(declare-fun res!1503254 () Bool)

(declare-fun e!2289239 () Bool)

(assert (=> d!1084251 (=> (not res!1503254) (not e!2289239))))

(declare-fun semiInverseModEq!2537 (Int Int) Bool)

(assert (=> d!1084251 (= res!1503254 (semiInverseModEq!2537 (toChars!8142 (transformation!5951 (rule!8807 token!544))) (toValue!8283 (transformation!5951 (rule!8807 token!544)))))))

(assert (=> d!1084251 (= (inv!52730 (transformation!5951 (rule!8807 token!544))) e!2289239)))

(declare-fun b!3696551 () Bool)

(declare-fun equivClasses!2436 (Int Int) Bool)

(assert (=> b!3696551 (= e!2289239 (equivClasses!2436 (toChars!8142 (transformation!5951 (rule!8807 token!544))) (toValue!8283 (transformation!5951 (rule!8807 token!544)))))))

(assert (= (and d!1084251 res!1503254) b!3696551))

(declare-fun m!4208241 () Bool)

(assert (=> d!1084251 m!4208241))

(declare-fun m!4208243 () Bool)

(assert (=> b!3696551 m!4208243))

(assert (=> b!3696493 d!1084251))

(declare-fun d!1084253 () Bool)

(declare-fun res!1503259 () Bool)

(declare-fun e!2289242 () Bool)

(assert (=> d!1084253 (=> (not res!1503259) (not e!2289242))))

(declare-fun isEmpty!23379 (List!39360) Bool)

(assert (=> d!1084253 (= res!1503259 (not (isEmpty!23379 (originalCharacters!6659 token!544))))))

(assert (=> d!1084253 (= (inv!52731 token!544) e!2289242)))

(declare-fun b!3696556 () Bool)

(declare-fun res!1503260 () Bool)

(assert (=> b!3696556 (=> (not res!1503260) (not e!2289242))))

(declare-fun dynLambda!17157 (Int TokenValue!6181) BalanceConc!23710)

(assert (=> b!3696556 (= res!1503260 (= (originalCharacters!6659 token!544) (list!14659 (dynLambda!17157 (toChars!8142 (transformation!5951 (rule!8807 token!544))) (value!190059 token!544)))))))

(declare-fun b!3696557 () Bool)

(declare-fun size!29935 (List!39360) Int)

(assert (=> b!3696557 (= e!2289242 (= (size!29933 token!544) (size!29935 (originalCharacters!6659 token!544))))))

(assert (= (and d!1084253 res!1503259) b!3696556))

(assert (= (and b!3696556 res!1503260) b!3696557))

(declare-fun b_lambda!109635 () Bool)

(assert (=> (not b_lambda!109635) (not b!3696556)))

(declare-fun t!301713 () Bool)

(declare-fun tb!214065 () Bool)

(assert (=> (and b!3696506 (= (toChars!8142 (transformation!5951 (h!44657 rules!3598))) (toChars!8142 (transformation!5951 (rule!8807 token!544)))) t!301713) tb!214065))

(declare-fun b!3696562 () Bool)

(declare-fun e!2289245 () Bool)

(declare-fun tp!1123565 () Bool)

(declare-fun inv!52734 (Conc!12048) Bool)

(assert (=> b!3696562 (= e!2289245 (and (inv!52734 (c!638935 (dynLambda!17157 (toChars!8142 (transformation!5951 (rule!8807 token!544))) (value!190059 token!544)))) tp!1123565))))

(declare-fun result!260722 () Bool)

(declare-fun inv!52735 (BalanceConc!23710) Bool)

(assert (=> tb!214065 (= result!260722 (and (inv!52735 (dynLambda!17157 (toChars!8142 (transformation!5951 (rule!8807 token!544))) (value!190059 token!544))) e!2289245))))

(assert (= tb!214065 b!3696562))

(declare-fun m!4208245 () Bool)

(assert (=> b!3696562 m!4208245))

(declare-fun m!4208247 () Bool)

(assert (=> tb!214065 m!4208247))

(assert (=> b!3696556 t!301713))

(declare-fun b_and!276299 () Bool)

(assert (= b_and!276285 (and (=> t!301713 result!260722) b_and!276299)))

(declare-fun t!301715 () Bool)

(declare-fun tb!214067 () Bool)

(assert (=> (and b!3696502 (= (toChars!8142 (transformation!5951 (rule!8807 token!544))) (toChars!8142 (transformation!5951 (rule!8807 token!544)))) t!301715) tb!214067))

(declare-fun result!260726 () Bool)

(assert (= result!260726 result!260722))

(assert (=> b!3696556 t!301715))

(declare-fun b_and!276301 () Bool)

(assert (= b_and!276289 (and (=> t!301715 result!260726) b_and!276301)))

(declare-fun m!4208249 () Bool)

(assert (=> d!1084253 m!4208249))

(declare-fun m!4208251 () Bool)

(assert (=> b!3696556 m!4208251))

(assert (=> b!3696556 m!4208251))

(declare-fun m!4208253 () Bool)

(assert (=> b!3696556 m!4208253))

(declare-fun m!4208255 () Bool)

(assert (=> b!3696557 m!4208255))

(assert (=> start!348084 d!1084253))

(declare-fun d!1084257 () Bool)

(assert (=> d!1084257 (= (isEmpty!23377 rules!3598) (is-Nil!39237 rules!3598))))

(assert (=> b!3696498 d!1084257))

(declare-fun b!3696583 () Bool)

(declare-fun e!2289258 () Bool)

(declare-fun inv!17 (TokenValue!6181) Bool)

(assert (=> b!3696583 (= e!2289258 (inv!17 (value!190059 token!544)))))

(declare-fun b!3696584 () Bool)

(declare-fun res!1503269 () Bool)

(declare-fun e!2289259 () Bool)

(assert (=> b!3696584 (=> res!1503269 e!2289259)))

(assert (=> b!3696584 (= res!1503269 (not (is-IntegerValue!18545 (value!190059 token!544))))))

(assert (=> b!3696584 (= e!2289258 e!2289259)))

(declare-fun b!3696585 () Bool)

(declare-fun e!2289257 () Bool)

(assert (=> b!3696585 (= e!2289257 e!2289258)))

(declare-fun c!638944 () Bool)

(assert (=> b!3696585 (= c!638944 (is-IntegerValue!18544 (value!190059 token!544)))))

(declare-fun b!3696586 () Bool)

(declare-fun inv!15 (TokenValue!6181) Bool)

(assert (=> b!3696586 (= e!2289259 (inv!15 (value!190059 token!544)))))

(declare-fun d!1084259 () Bool)

(declare-fun c!638945 () Bool)

(assert (=> d!1084259 (= c!638945 (is-IntegerValue!18543 (value!190059 token!544)))))

(assert (=> d!1084259 (= (inv!21 (value!190059 token!544)) e!2289257)))

(declare-fun b!3696587 () Bool)

(declare-fun inv!16 (TokenValue!6181) Bool)

(assert (=> b!3696587 (= e!2289257 (inv!16 (value!190059 token!544)))))

(assert (= (and d!1084259 c!638945) b!3696587))

(assert (= (and d!1084259 (not c!638945)) b!3696585))

(assert (= (and b!3696585 c!638944) b!3696583))

(assert (= (and b!3696585 (not c!638944)) b!3696584))

(assert (= (and b!3696584 (not res!1503269)) b!3696586))

(declare-fun m!4208257 () Bool)

(assert (=> b!3696583 m!4208257))

(declare-fun m!4208259 () Bool)

(assert (=> b!3696586 m!4208259))

(declare-fun m!4208261 () Bool)

(assert (=> b!3696587 m!4208261))

(assert (=> b!3696494 d!1084259))

(declare-fun d!1084261 () Bool)

(assert (=> d!1084261 (= (inv!52727 (tag!6779 (h!44657 rules!3598))) (= (mod (str.len (value!190058 (tag!6779 (h!44657 rules!3598)))) 2) 0))))

(assert (=> b!3696495 d!1084261))

(declare-fun d!1084263 () Bool)

(declare-fun res!1503270 () Bool)

(declare-fun e!2289260 () Bool)

(assert (=> d!1084263 (=> (not res!1503270) (not e!2289260))))

(assert (=> d!1084263 (= res!1503270 (semiInverseModEq!2537 (toChars!8142 (transformation!5951 (h!44657 rules!3598))) (toValue!8283 (transformation!5951 (h!44657 rules!3598)))))))

(assert (=> d!1084263 (= (inv!52730 (transformation!5951 (h!44657 rules!3598))) e!2289260)))

(declare-fun b!3696588 () Bool)

(assert (=> b!3696588 (= e!2289260 (equivClasses!2436 (toChars!8142 (transformation!5951 (h!44657 rules!3598))) (toValue!8283 (transformation!5951 (h!44657 rules!3598)))))))

(assert (= (and d!1084263 res!1503270) b!3696588))

(declare-fun m!4208263 () Bool)

(assert (=> d!1084263 m!4208263))

(declare-fun m!4208265 () Bool)

(assert (=> b!3696588 m!4208265))

(assert (=> b!3696495 d!1084263))

(declare-fun d!1084265 () Bool)

(assert (=> d!1084265 (= (get!13045 lt!1293885) (v!38439 lt!1293885))))

(assert (=> b!3696500 d!1084265))

(declare-fun d!1084267 () Bool)

(declare-fun isEmpty!23380 (Option!8482) Bool)

(assert (=> d!1084267 (= (isDefined!6670 lt!1293885) (not (isEmpty!23380 lt!1293885)))))

(declare-fun bs!574296 () Bool)

(assert (= bs!574296 d!1084267))

(declare-fun m!4208269 () Bool)

(assert (=> bs!574296 m!4208269))

(assert (=> b!3696501 d!1084267))

(declare-fun b!3696626 () Bool)

(declare-fun e!2289282 () Option!8482)

(declare-fun lt!1293916 () Option!8482)

(declare-fun lt!1293920 () Option!8482)

(assert (=> b!3696626 (= e!2289282 (ite (and (is-None!8481 lt!1293916) (is-None!8481 lt!1293920)) None!8481 (ite (is-None!8481 lt!1293920) lt!1293916 (ite (is-None!8481 lt!1293916) lt!1293920 (ite (>= (size!29933 (_1!22691 (v!38439 lt!1293916))) (size!29933 (_1!22691 (v!38439 lt!1293920)))) lt!1293916 lt!1293920)))))))

(declare-fun call!267167 () Option!8482)

(assert (=> b!3696626 (= lt!1293916 call!267167)))

(assert (=> b!3696626 (= lt!1293920 (maxPrefix!3062 thiss!25322 (t!301708 rules!3598) input!3172))))

(declare-fun b!3696627 () Bool)

(assert (=> b!3696627 (= e!2289282 call!267167)))

(declare-fun b!3696628 () Bool)

(declare-fun res!1503293 () Bool)

(declare-fun e!2289281 () Bool)

(assert (=> b!3696628 (=> (not res!1503293) (not e!2289281))))

(declare-fun lt!1293917 () Option!8482)

(declare-fun ++!9749 (List!39360 List!39360) List!39360)

(assert (=> b!3696628 (= res!1503293 (= (++!9749 (list!14659 (charsOf!3944 (_1!22691 (get!13045 lt!1293917)))) (_2!22691 (get!13045 lt!1293917))) input!3172))))

(declare-fun b!3696629 () Bool)

(declare-fun res!1503296 () Bool)

(assert (=> b!3696629 (=> (not res!1503296) (not e!2289281))))

(assert (=> b!3696629 (= res!1503296 (< (size!29935 (_2!22691 (get!13045 lt!1293917))) (size!29935 input!3172)))))

(declare-fun b!3696630 () Bool)

(declare-fun e!2289280 () Bool)

(assert (=> b!3696630 (= e!2289280 e!2289281)))

(declare-fun res!1503295 () Bool)

(assert (=> b!3696630 (=> (not res!1503295) (not e!2289281))))

(assert (=> b!3696630 (= res!1503295 (isDefined!6670 lt!1293917))))

(declare-fun d!1084269 () Bool)

(assert (=> d!1084269 e!2289280))

(declare-fun res!1503291 () Bool)

(assert (=> d!1084269 (=> res!1503291 e!2289280)))

(assert (=> d!1084269 (= res!1503291 (isEmpty!23380 lt!1293917))))

(assert (=> d!1084269 (= lt!1293917 e!2289282)))

(declare-fun c!638954 () Bool)

(assert (=> d!1084269 (= c!638954 (and (is-Cons!39237 rules!3598) (is-Nil!39237 (t!301708 rules!3598))))))

(declare-datatypes ((Unit!57222 0))(
  ( (Unit!57223) )
))
(declare-fun lt!1293918 () Unit!57222)

(declare-fun lt!1293919 () Unit!57222)

(assert (=> d!1084269 (= lt!1293918 lt!1293919)))

(declare-fun isPrefix!3271 (List!39360 List!39360) Bool)

(assert (=> d!1084269 (isPrefix!3271 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2056 (List!39360 List!39360) Unit!57222)

(assert (=> d!1084269 (= lt!1293919 (lemmaIsPrefixRefl!2056 input!3172 input!3172))))

(declare-fun rulesValidInductive!2137 (LexerInterface!5540 List!39361) Bool)

(assert (=> d!1084269 (rulesValidInductive!2137 thiss!25322 rules!3598)))

(assert (=> d!1084269 (= (maxPrefix!3062 thiss!25322 rules!3598 input!3172) lt!1293917)))

(declare-fun b!3696631 () Bool)

(declare-fun res!1503294 () Bool)

(assert (=> b!3696631 (=> (not res!1503294) (not e!2289281))))

(declare-fun apply!9389 (TokenValueInjection!11790 BalanceConc!23710) TokenValue!6181)

(declare-fun seqFromList!4468 (List!39360) BalanceConc!23710)

(assert (=> b!3696631 (= res!1503294 (= (value!190059 (_1!22691 (get!13045 lt!1293917))) (apply!9389 (transformation!5951 (rule!8807 (_1!22691 (get!13045 lt!1293917)))) (seqFromList!4468 (originalCharacters!6659 (_1!22691 (get!13045 lt!1293917)))))))))

(declare-fun bm!267162 () Bool)

(declare-fun maxPrefixOneRule!2174 (LexerInterface!5540 Rule!11702 List!39360) Option!8482)

(assert (=> bm!267162 (= call!267167 (maxPrefixOneRule!2174 thiss!25322 (h!44657 rules!3598) input!3172))))

(declare-fun b!3696632 () Bool)

(declare-fun res!1503297 () Bool)

(assert (=> b!3696632 (=> (not res!1503297) (not e!2289281))))

(assert (=> b!3696632 (= res!1503297 (= (list!14659 (charsOf!3944 (_1!22691 (get!13045 lt!1293917)))) (originalCharacters!6659 (_1!22691 (get!13045 lt!1293917)))))))

(declare-fun b!3696633 () Bool)

(declare-fun res!1503292 () Bool)

(assert (=> b!3696633 (=> (not res!1503292) (not e!2289281))))

(declare-fun matchR!5247 (Regex!10710 List!39360) Bool)

(assert (=> b!3696633 (= res!1503292 (matchR!5247 (regex!5951 (rule!8807 (_1!22691 (get!13045 lt!1293917)))) (list!14659 (charsOf!3944 (_1!22691 (get!13045 lt!1293917))))))))

(declare-fun b!3696634 () Bool)

(declare-fun contains!7823 (List!39361 Rule!11702) Bool)

(assert (=> b!3696634 (= e!2289281 (contains!7823 rules!3598 (rule!8807 (_1!22691 (get!13045 lt!1293917)))))))

(assert (= (and d!1084269 c!638954) b!3696627))

(assert (= (and d!1084269 (not c!638954)) b!3696626))

(assert (= (or b!3696627 b!3696626) bm!267162))

(assert (= (and d!1084269 (not res!1503291)) b!3696630))

(assert (= (and b!3696630 res!1503295) b!3696632))

(assert (= (and b!3696632 res!1503297) b!3696629))

(assert (= (and b!3696629 res!1503296) b!3696628))

(assert (= (and b!3696628 res!1503293) b!3696631))

(assert (= (and b!3696631 res!1503294) b!3696633))

(assert (= (and b!3696633 res!1503292) b!3696634))

(declare-fun m!4208295 () Bool)

(assert (=> b!3696633 m!4208295))

(declare-fun m!4208297 () Bool)

(assert (=> b!3696633 m!4208297))

(assert (=> b!3696633 m!4208297))

(declare-fun m!4208299 () Bool)

(assert (=> b!3696633 m!4208299))

(assert (=> b!3696633 m!4208299))

(declare-fun m!4208301 () Bool)

(assert (=> b!3696633 m!4208301))

(declare-fun m!4208303 () Bool)

(assert (=> bm!267162 m!4208303))

(declare-fun m!4208305 () Bool)

(assert (=> b!3696626 m!4208305))

(assert (=> b!3696634 m!4208295))

(declare-fun m!4208307 () Bool)

(assert (=> b!3696634 m!4208307))

(assert (=> b!3696632 m!4208295))

(assert (=> b!3696632 m!4208297))

(assert (=> b!3696632 m!4208297))

(assert (=> b!3696632 m!4208299))

(assert (=> b!3696631 m!4208295))

(declare-fun m!4208309 () Bool)

(assert (=> b!3696631 m!4208309))

(assert (=> b!3696631 m!4208309))

(declare-fun m!4208311 () Bool)

(assert (=> b!3696631 m!4208311))

(assert (=> b!3696629 m!4208295))

(declare-fun m!4208313 () Bool)

(assert (=> b!3696629 m!4208313))

(declare-fun m!4208315 () Bool)

(assert (=> b!3696629 m!4208315))

(declare-fun m!4208317 () Bool)

(assert (=> b!3696630 m!4208317))

(assert (=> b!3696628 m!4208295))

(assert (=> b!3696628 m!4208297))

(assert (=> b!3696628 m!4208297))

(assert (=> b!3696628 m!4208299))

(assert (=> b!3696628 m!4208299))

(declare-fun m!4208319 () Bool)

(assert (=> b!3696628 m!4208319))

(declare-fun m!4208321 () Bool)

(assert (=> d!1084269 m!4208321))

(declare-fun m!4208323 () Bool)

(assert (=> d!1084269 m!4208323))

(declare-fun m!4208325 () Bool)

(assert (=> d!1084269 m!4208325))

(declare-fun m!4208327 () Bool)

(assert (=> d!1084269 m!4208327))

(assert (=> b!3696501 d!1084269))

(declare-fun b!3696668 () Bool)

(declare-fun e!2289306 () Bool)

(declare-fun call!267175 () Bool)

(assert (=> b!3696668 (= e!2289306 call!267175)))

(declare-fun bm!267169 () Bool)

(declare-fun call!267176 () Bool)

(declare-fun c!638965 () Bool)

(assert (=> bm!267169 (= call!267176 (validRegex!4897 (ite c!638965 (regOne!21933 (regex!5951 (get!13044 lt!1293887))) (regOne!21932 (regex!5951 (get!13044 lt!1293887))))))))

(declare-fun bm!267170 () Bool)

(declare-fun call!267174 () Bool)

(assert (=> bm!267170 (= call!267175 call!267174)))

(declare-fun b!3696669 () Bool)

(declare-fun e!2289311 () Bool)

(declare-fun e!2289308 () Bool)

(assert (=> b!3696669 (= e!2289311 e!2289308)))

(declare-fun res!1503312 () Bool)

(assert (=> b!3696669 (=> (not res!1503312) (not e!2289308))))

(assert (=> b!3696669 (= res!1503312 call!267176)))

(declare-fun b!3696670 () Bool)

(declare-fun e!2289312 () Bool)

(declare-fun e!2289309 () Bool)

(assert (=> b!3696670 (= e!2289312 e!2289309)))

(declare-fun c!638966 () Bool)

(assert (=> b!3696670 (= c!638966 (is-Star!10710 (regex!5951 (get!13044 lt!1293887))))))

(declare-fun b!3696671 () Bool)

(declare-fun e!2289307 () Bool)

(assert (=> b!3696671 (= e!2289309 e!2289307)))

(declare-fun res!1503314 () Bool)

(declare-fun nullable!3734 (Regex!10710) Bool)

(assert (=> b!3696671 (= res!1503314 (not (nullable!3734 (reg!11039 (regex!5951 (get!13044 lt!1293887))))))))

(assert (=> b!3696671 (=> (not res!1503314) (not e!2289307))))

(declare-fun b!3696672 () Bool)

(assert (=> b!3696672 (= e!2289307 call!267174)))

(declare-fun b!3696674 () Bool)

(declare-fun res!1503315 () Bool)

(assert (=> b!3696674 (=> (not res!1503315) (not e!2289306))))

(assert (=> b!3696674 (= res!1503315 call!267176)))

(declare-fun e!2289310 () Bool)

(assert (=> b!3696674 (= e!2289310 e!2289306)))

(declare-fun bm!267171 () Bool)

(assert (=> bm!267171 (= call!267174 (validRegex!4897 (ite c!638966 (reg!11039 (regex!5951 (get!13044 lt!1293887))) (ite c!638965 (regTwo!21933 (regex!5951 (get!13044 lt!1293887))) (regTwo!21932 (regex!5951 (get!13044 lt!1293887)))))))))

(declare-fun b!3696673 () Bool)

(assert (=> b!3696673 (= e!2289308 call!267175)))

(declare-fun d!1084279 () Bool)

(declare-fun res!1503313 () Bool)

(assert (=> d!1084279 (=> res!1503313 e!2289312)))

(assert (=> d!1084279 (= res!1503313 (is-ElementMatch!10710 (regex!5951 (get!13044 lt!1293887))))))

(assert (=> d!1084279 (= (validRegex!4897 (regex!5951 (get!13044 lt!1293887))) e!2289312)))

(declare-fun b!3696675 () Bool)

(declare-fun res!1503311 () Bool)

(assert (=> b!3696675 (=> res!1503311 e!2289311)))

(assert (=> b!3696675 (= res!1503311 (not (is-Concat!16892 (regex!5951 (get!13044 lt!1293887)))))))

(assert (=> b!3696675 (= e!2289310 e!2289311)))

(declare-fun b!3696676 () Bool)

(assert (=> b!3696676 (= e!2289309 e!2289310)))

(assert (=> b!3696676 (= c!638965 (is-Union!10710 (regex!5951 (get!13044 lt!1293887))))))

(assert (= (and d!1084279 (not res!1503313)) b!3696670))

(assert (= (and b!3696670 c!638966) b!3696671))

(assert (= (and b!3696670 (not c!638966)) b!3696676))

(assert (= (and b!3696671 res!1503314) b!3696672))

(assert (= (and b!3696676 c!638965) b!3696674))

(assert (= (and b!3696676 (not c!638965)) b!3696675))

(assert (= (and b!3696674 res!1503315) b!3696668))

(assert (= (and b!3696675 (not res!1503311)) b!3696669))

(assert (= (and b!3696669 res!1503312) b!3696673))

(assert (= (or b!3696668 b!3696673) bm!267170))

(assert (= (or b!3696674 b!3696669) bm!267169))

(assert (= (or b!3696672 bm!267170) bm!267171))

(declare-fun m!4208335 () Bool)

(assert (=> bm!267169 m!4208335))

(declare-fun m!4208337 () Bool)

(assert (=> b!3696671 m!4208337))

(declare-fun m!4208339 () Bool)

(assert (=> bm!267171 m!4208339))

(assert (=> b!3696496 d!1084279))

(declare-fun d!1084283 () Bool)

(assert (=> d!1084283 (= (get!13044 lt!1293887) (v!38438 lt!1293887))))

(assert (=> b!3696496 d!1084283))

(declare-fun d!1084285 () Bool)

(declare-fun list!14661 (Conc!12048) List!39360)

(assert (=> d!1084285 (= (list!14659 (charsOf!3944 token!544)) (list!14661 (c!638935 (charsOf!3944 token!544))))))

(declare-fun bs!574298 () Bool)

(assert (= bs!574298 d!1084285))

(declare-fun m!4208341 () Bool)

(assert (=> bs!574298 m!4208341))

(assert (=> b!3696496 d!1084285))

(declare-fun d!1084287 () Bool)

(declare-fun lt!1293923 () BalanceConc!23710)

(assert (=> d!1084287 (= (list!14659 lt!1293923) (originalCharacters!6659 token!544))))

(assert (=> d!1084287 (= lt!1293923 (dynLambda!17157 (toChars!8142 (transformation!5951 (rule!8807 token!544))) (value!190059 token!544)))))

(assert (=> d!1084287 (= (charsOf!3944 token!544) lt!1293923)))

(declare-fun b_lambda!109639 () Bool)

(assert (=> (not b_lambda!109639) (not d!1084287)))

(assert (=> d!1084287 t!301713))

(declare-fun b_and!276307 () Bool)

(assert (= b_and!276299 (and (=> t!301713 result!260722) b_and!276307)))

(assert (=> d!1084287 t!301715))

(declare-fun b_and!276309 () Bool)

(assert (= b_and!276301 (and (=> t!301715 result!260726) b_and!276309)))

(declare-fun m!4208343 () Bool)

(assert (=> d!1084287 m!4208343))

(assert (=> d!1084287 m!4208251))

(assert (=> b!3696496 d!1084287))

(declare-fun d!1084289 () Bool)

(declare-fun res!1503321 () Bool)

(declare-fun e!2289318 () Bool)

(assert (=> d!1084289 (=> (not res!1503321) (not e!2289318))))

(declare-fun rulesValid!2294 (LexerInterface!5540 List!39361) Bool)

(assert (=> d!1084289 (= res!1503321 (rulesValid!2294 thiss!25322 rules!3598))))

(assert (=> d!1084289 (= (rulesInvariant!4937 thiss!25322 rules!3598) e!2289318)))

(declare-fun b!3696682 () Bool)

(declare-datatypes ((List!39365 0))(
  ( (Nil!39241) (Cons!39241 (h!44661 String!44241) (t!301722 List!39365)) )
))
(declare-fun noDuplicateTag!2290 (LexerInterface!5540 List!39361 List!39365) Bool)

(assert (=> b!3696682 (= e!2289318 (noDuplicateTag!2290 thiss!25322 rules!3598 Nil!39241))))

(assert (= (and d!1084289 res!1503321) b!3696682))

(declare-fun m!4208349 () Bool)

(assert (=> d!1084289 m!4208349))

(declare-fun m!4208351 () Bool)

(assert (=> b!3696682 m!4208351))

(assert (=> b!3696497 d!1084289))

(declare-fun d!1084295 () Bool)

(declare-fun isEmpty!23381 (Option!8481) Bool)

(assert (=> d!1084295 (= (isDefined!6671 lt!1293887) (not (isEmpty!23381 lt!1293887)))))

(declare-fun bs!574300 () Bool)

(assert (= bs!574300 d!1084295))

(declare-fun m!4208355 () Bool)

(assert (=> bs!574300 m!4208355))

(assert (=> b!3696503 d!1084295))

(declare-fun b!3696695 () Bool)

(declare-fun e!2289327 () Bool)

(declare-fun e!2289330 () Bool)

(assert (=> b!3696695 (= e!2289327 e!2289330)))

(declare-fun res!1503326 () Bool)

(assert (=> b!3696695 (=> (not res!1503326) (not e!2289330))))

(declare-fun lt!1293932 () Option!8481)

(assert (=> b!3696695 (= res!1503326 (contains!7823 rules!3598 (get!13044 lt!1293932)))))

(declare-fun b!3696696 () Bool)

(declare-fun e!2289329 () Option!8481)

(assert (=> b!3696696 (= e!2289329 None!8480)))

(declare-fun b!3696697 () Bool)

(declare-fun e!2289328 () Option!8481)

(assert (=> b!3696697 (= e!2289328 e!2289329)))

(declare-fun c!638972 () Bool)

(assert (=> b!3696697 (= c!638972 (and (is-Cons!39237 rules!3598) (not (= (tag!6779 (h!44657 rules!3598)) (tag!6779 (rule!8807 token!544))))))))

(declare-fun b!3696698 () Bool)

(declare-fun lt!1293931 () Unit!57222)

(declare-fun lt!1293930 () Unit!57222)

(assert (=> b!3696698 (= lt!1293931 lt!1293930)))

(assert (=> b!3696698 (rulesInvariant!4937 thiss!25322 (t!301708 rules!3598))))

(declare-fun lemmaInvariantOnRulesThenOnTail!657 (LexerInterface!5540 Rule!11702 List!39361) Unit!57222)

(assert (=> b!3696698 (= lt!1293930 (lemmaInvariantOnRulesThenOnTail!657 thiss!25322 (h!44657 rules!3598) (t!301708 rules!3598)))))

(assert (=> b!3696698 (= e!2289329 (getRuleFromTag!1507 thiss!25322 (t!301708 rules!3598) (tag!6779 (rule!8807 token!544))))))

(declare-fun d!1084299 () Bool)

(assert (=> d!1084299 e!2289327))

(declare-fun res!1503327 () Bool)

(assert (=> d!1084299 (=> res!1503327 e!2289327)))

(assert (=> d!1084299 (= res!1503327 (isEmpty!23381 lt!1293932))))

(assert (=> d!1084299 (= lt!1293932 e!2289328)))

(declare-fun c!638971 () Bool)

(assert (=> d!1084299 (= c!638971 (and (is-Cons!39237 rules!3598) (= (tag!6779 (h!44657 rules!3598)) (tag!6779 (rule!8807 token!544)))))))

(assert (=> d!1084299 (rulesInvariant!4937 thiss!25322 rules!3598)))

(assert (=> d!1084299 (= (getRuleFromTag!1507 thiss!25322 rules!3598 (tag!6779 (rule!8807 token!544))) lt!1293932)))

(declare-fun b!3696699 () Bool)

(assert (=> b!3696699 (= e!2289328 (Some!8480 (h!44657 rules!3598)))))

(declare-fun b!3696700 () Bool)

(assert (=> b!3696700 (= e!2289330 (= (tag!6779 (get!13044 lt!1293932)) (tag!6779 (rule!8807 token!544))))))

(assert (= (and d!1084299 c!638971) b!3696699))

(assert (= (and d!1084299 (not c!638971)) b!3696697))

(assert (= (and b!3696697 c!638972) b!3696698))

(assert (= (and b!3696697 (not c!638972)) b!3696696))

(assert (= (and d!1084299 (not res!1503327)) b!3696695))

(assert (= (and b!3696695 res!1503326) b!3696700))

(declare-fun m!4208357 () Bool)

(assert (=> b!3696695 m!4208357))

(assert (=> b!3696695 m!4208357))

(declare-fun m!4208359 () Bool)

(assert (=> b!3696695 m!4208359))

(declare-fun m!4208361 () Bool)

(assert (=> b!3696698 m!4208361))

(declare-fun m!4208363 () Bool)

(assert (=> b!3696698 m!4208363))

(declare-fun m!4208365 () Bool)

(assert (=> b!3696698 m!4208365))

(declare-fun m!4208367 () Bool)

(assert (=> d!1084299 m!4208367))

(assert (=> d!1084299 m!4208201))

(assert (=> b!3696700 m!4208357))

(assert (=> b!3696503 d!1084299))

(declare-fun b!3696712 () Bool)

(declare-fun e!2289333 () Bool)

(declare-fun tp!1123583 () Bool)

(declare-fun tp!1123582 () Bool)

(assert (=> b!3696712 (= e!2289333 (and tp!1123583 tp!1123582))))

(assert (=> b!3696493 (= tp!1123530 e!2289333)))

(declare-fun b!3696711 () Bool)

(assert (=> b!3696711 (= e!2289333 tp_is_empty!18495)))

(declare-fun b!3696713 () Bool)

(declare-fun tp!1123581 () Bool)

(assert (=> b!3696713 (= e!2289333 tp!1123581)))

(declare-fun b!3696714 () Bool)

(declare-fun tp!1123580 () Bool)

(declare-fun tp!1123579 () Bool)

(assert (=> b!3696714 (= e!2289333 (and tp!1123580 tp!1123579))))

(assert (= (and b!3696493 (is-ElementMatch!10710 (regex!5951 (rule!8807 token!544)))) b!3696711))

(assert (= (and b!3696493 (is-Concat!16892 (regex!5951 (rule!8807 token!544)))) b!3696712))

(assert (= (and b!3696493 (is-Star!10710 (regex!5951 (rule!8807 token!544)))) b!3696713))

(assert (= (and b!3696493 (is-Union!10710 (regex!5951 (rule!8807 token!544)))) b!3696714))

(declare-fun b!3696725 () Bool)

(declare-fun b_free!98361 () Bool)

(declare-fun b_next!99065 () Bool)

(assert (=> b!3696725 (= b_free!98361 (not b_next!99065))))

(declare-fun tp!1123593 () Bool)

(declare-fun b_and!276311 () Bool)

(assert (=> b!3696725 (= tp!1123593 b_and!276311)))

(declare-fun b_free!98363 () Bool)

(declare-fun b_next!99067 () Bool)

(assert (=> b!3696725 (= b_free!98363 (not b_next!99067))))

(declare-fun t!301721 () Bool)

(declare-fun tb!214073 () Bool)

(assert (=> (and b!3696725 (= (toChars!8142 (transformation!5951 (h!44657 (t!301708 rules!3598)))) (toChars!8142 (transformation!5951 (rule!8807 token!544)))) t!301721) tb!214073))

(declare-fun result!260738 () Bool)

(assert (= result!260738 result!260722))

(assert (=> b!3696556 t!301721))

(assert (=> d!1084287 t!301721))

(declare-fun tp!1123592 () Bool)

(declare-fun b_and!276313 () Bool)

(assert (=> b!3696725 (= tp!1123592 (and (=> t!301721 result!260738) b_and!276313))))

(declare-fun e!2289342 () Bool)

(assert (=> b!3696725 (= e!2289342 (and tp!1123593 tp!1123592))))

(declare-fun e!2289345 () Bool)

(declare-fun tp!1123594 () Bool)

(declare-fun b!3696724 () Bool)

(assert (=> b!3696724 (= e!2289345 (and tp!1123594 (inv!52727 (tag!6779 (h!44657 (t!301708 rules!3598)))) (inv!52730 (transformation!5951 (h!44657 (t!301708 rules!3598)))) e!2289342))))

(declare-fun b!3696723 () Bool)

(declare-fun e!2289344 () Bool)

(declare-fun tp!1123595 () Bool)

(assert (=> b!3696723 (= e!2289344 (and e!2289345 tp!1123595))))

(assert (=> b!3696504 (= tp!1123528 e!2289344)))

(assert (= b!3696724 b!3696725))

(assert (= b!3696723 b!3696724))

(assert (= (and b!3696504 (is-Cons!39237 (t!301708 rules!3598))) b!3696723))

(declare-fun m!4208369 () Bool)

(assert (=> b!3696724 m!4208369))

(declare-fun m!4208371 () Bool)

(assert (=> b!3696724 m!4208371))

(declare-fun b!3696730 () Bool)

(declare-fun e!2289348 () Bool)

(declare-fun tp!1123598 () Bool)

(assert (=> b!3696730 (= e!2289348 (and tp_is_empty!18495 tp!1123598))))

(assert (=> b!3696505 (= tp!1123533 e!2289348)))

(assert (= (and b!3696505 (is-Cons!39236 (t!301707 input!3172))) b!3696730))

(declare-fun b!3696731 () Bool)

(declare-fun e!2289349 () Bool)

(declare-fun tp!1123599 () Bool)

(assert (=> b!3696731 (= e!2289349 (and tp_is_empty!18495 tp!1123599))))

(assert (=> b!3696494 (= tp!1123527 e!2289349)))

(assert (= (and b!3696494 (is-Cons!39236 (originalCharacters!6659 token!544))) b!3696731))

(declare-fun b!3696733 () Bool)

(declare-fun e!2289350 () Bool)

(declare-fun tp!1123604 () Bool)

(declare-fun tp!1123603 () Bool)

(assert (=> b!3696733 (= e!2289350 (and tp!1123604 tp!1123603))))

(assert (=> b!3696495 (= tp!1123534 e!2289350)))

(declare-fun b!3696732 () Bool)

(assert (=> b!3696732 (= e!2289350 tp_is_empty!18495)))

(declare-fun b!3696734 () Bool)

(declare-fun tp!1123602 () Bool)

(assert (=> b!3696734 (= e!2289350 tp!1123602)))

(declare-fun b!3696735 () Bool)

(declare-fun tp!1123601 () Bool)

(declare-fun tp!1123600 () Bool)

(assert (=> b!3696735 (= e!2289350 (and tp!1123601 tp!1123600))))

(assert (= (and b!3696495 (is-ElementMatch!10710 (regex!5951 (h!44657 rules!3598)))) b!3696732))

(assert (= (and b!3696495 (is-Concat!16892 (regex!5951 (h!44657 rules!3598)))) b!3696733))

(assert (= (and b!3696495 (is-Star!10710 (regex!5951 (h!44657 rules!3598)))) b!3696734))

(assert (= (and b!3696495 (is-Union!10710 (regex!5951 (h!44657 rules!3598)))) b!3696735))

(declare-fun b_lambda!109641 () Bool)

(assert (= b_lambda!109635 (or (and b!3696506 b_free!98347 (= (toChars!8142 (transformation!5951 (h!44657 rules!3598))) (toChars!8142 (transformation!5951 (rule!8807 token!544))))) (and b!3696502 b_free!98351) (and b!3696725 b_free!98363 (= (toChars!8142 (transformation!5951 (h!44657 (t!301708 rules!3598)))) (toChars!8142 (transformation!5951 (rule!8807 token!544))))) b_lambda!109641)))

(declare-fun b_lambda!109643 () Bool)

(assert (= b_lambda!109639 (or (and b!3696506 b_free!98347 (= (toChars!8142 (transformation!5951 (h!44657 rules!3598))) (toChars!8142 (transformation!5951 (rule!8807 token!544))))) (and b!3696502 b_free!98351) (and b!3696725 b_free!98363 (= (toChars!8142 (transformation!5951 (h!44657 (t!301708 rules!3598)))) (toChars!8142 (transformation!5951 (rule!8807 token!544))))) b_lambda!109643)))

(push 1)

(assert (not b_next!99049))

(assert (not b_next!99051))

(assert (not d!1084269))

(assert (not b!3696724))

(assert (not d!1084289))

(assert (not b!3696632))

(assert (not b!3696583))

(assert (not b!3696626))

(assert (not b!3696551))

(assert (not b!3696723))

(assert (not b!3696698))

(assert (not b!3696733))

(assert (not d!1084287))

(assert (not d!1084295))

(assert (not b!3696587))

(assert (not d!1084251))

(assert (not b!3696557))

(assert (not b!3696586))

(assert (not b!3696682))

(assert (not b!3696730))

(assert (not b!3696634))

(assert (not b!3696734))

(assert (not b!3696628))

(assert (not d!1084267))

(assert (not b_lambda!109641))

(assert b_and!276309)

(assert (not bm!267162))

(assert (not b!3696735))

(assert (not b_next!99055))

(assert (not b!3696630))

(assert b_and!276287)

(assert (not b!3696731))

(assert (not b_next!99067))

(assert (not b!3696671))

(assert (not b!3696714))

(assert (not d!1084285))

(assert (not b_next!99053))

(assert (not d!1084263))

(assert (not d!1084253))

(assert (not bm!267171))

(assert (not tb!214065))

(assert (not b!3696588))

(assert b_and!276311)

(assert (not b!3696633))

(assert b_and!276313)

(assert (not b!3696562))

(assert tp_is_empty!18495)

(assert (not b_next!99065))

(assert b_and!276307)

(assert (not b!3696712))

(assert (not b!3696631))

(assert b_and!276283)

(assert (not b_lambda!109643))

(assert (not d!1084299))

(assert (not b!3696700))

(assert (not b!3696713))

(assert (not b!3696695))

(assert (not bm!267169))

(assert (not b!3696556))

(assert (not b!3696629))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99049))

(assert b_and!276309)

(assert (not b_next!99051))

(assert (not b_next!99067))

(assert (not b_next!99053))

(assert b_and!276311)

(assert b_and!276283)

(assert (not b_next!99055))

(assert b_and!276287)

(assert b_and!276313)

(assert (not b_next!99065))

(assert b_and!276307)

(check-sat)

(pop 1)

