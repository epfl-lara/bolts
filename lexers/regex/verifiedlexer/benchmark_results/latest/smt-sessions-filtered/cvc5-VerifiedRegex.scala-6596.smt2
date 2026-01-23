; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!348600 () Bool)

(assert start!348600)

(declare-fun b!3700175 () Bool)

(declare-fun b_free!98569 () Bool)

(declare-fun b_next!99273 () Bool)

(assert (=> b!3700175 (= b_free!98569 (not b_next!99273))))

(declare-fun tp!1124767 () Bool)

(declare-fun b_and!276671 () Bool)

(assert (=> b!3700175 (= tp!1124767 b_and!276671)))

(declare-fun b_free!98571 () Bool)

(declare-fun b_next!99275 () Bool)

(assert (=> b!3700175 (= b_free!98571 (not b_next!99275))))

(declare-fun tp!1124762 () Bool)

(declare-fun b_and!276673 () Bool)

(assert (=> b!3700175 (= tp!1124762 b_and!276673)))

(declare-fun b!3700177 () Bool)

(declare-fun b_free!98573 () Bool)

(declare-fun b_next!99277 () Bool)

(assert (=> b!3700177 (= b_free!98573 (not b_next!99277))))

(declare-fun tp!1124760 () Bool)

(declare-fun b_and!276675 () Bool)

(assert (=> b!3700177 (= tp!1124760 b_and!276675)))

(declare-fun b_free!98575 () Bool)

(declare-fun b_next!99279 () Bool)

(assert (=> b!3700177 (= b_free!98575 (not b_next!99279))))

(declare-fun tp!1124766 () Bool)

(declare-fun b_and!276677 () Bool)

(assert (=> b!3700177 (= tp!1124766 b_and!276677)))

(declare-fun b!3700163 () Bool)

(declare-fun res!1504983 () Bool)

(declare-fun e!2291491 () Bool)

(assert (=> b!3700163 (=> (not res!1504983) (not e!2291491))))

(declare-datatypes ((List!39433 0))(
  ( (Nil!39309) (Cons!39309 (h!44729 (_ BitVec 16)) (t!301966 List!39433)) )
))
(declare-datatypes ((TokenValue!6201 0))(
  ( (FloatLiteralValue!12402 (text!43852 List!39433)) (TokenValueExt!6200 (__x!24619 Int)) (Broken!31005 (value!190603 List!39433)) (Object!6324) (End!6201) (Def!6201) (Underscore!6201) (Match!6201) (Else!6201) (Error!6201) (Case!6201) (If!6201) (Extends!6201) (Abstract!6201) (Class!6201) (Val!6201) (DelimiterValue!12402 (del!6261 List!39433)) (KeywordValue!6207 (value!190604 List!39433)) (CommentValue!12402 (value!190605 List!39433)) (WhitespaceValue!12402 (value!190606 List!39433)) (IndentationValue!6201 (value!190607 List!39433)) (String!44340) (Int32!6201) (Broken!31006 (value!190608 List!39433)) (Boolean!6202) (Unit!57278) (OperatorValue!6204 (op!6261 List!39433)) (IdentifierValue!12402 (value!190609 List!39433)) (IdentifierValue!12403 (value!190610 List!39433)) (WhitespaceValue!12403 (value!190611 List!39433)) (True!12402) (False!12402) (Broken!31007 (value!190612 List!39433)) (Broken!31008 (value!190613 List!39433)) (True!12403) (RightBrace!6201) (RightBracket!6201) (Colon!6201) (Null!6201) (Comma!6201) (LeftBracket!6201) (False!12403) (LeftBrace!6201) (ImaginaryLiteralValue!6201 (text!43853 List!39433)) (StringLiteralValue!18603 (value!190614 List!39433)) (EOFValue!6201 (value!190615 List!39433)) (IdentValue!6201 (value!190616 List!39433)) (DelimiterValue!12403 (value!190617 List!39433)) (DedentValue!6201 (value!190618 List!39433)) (NewLineValue!6201 (value!190619 List!39433)) (IntegerValue!18603 (value!190620 (_ BitVec 32)) (text!43854 List!39433)) (IntegerValue!18604 (value!190621 Int) (text!43855 List!39433)) (Times!6201) (Or!6201) (Equal!6201) (Minus!6201) (Broken!31009 (value!190622 List!39433)) (And!6201) (Div!6201) (LessEqual!6201) (Mod!6201) (Concat!16931) (Not!6201) (Plus!6201) (SpaceValue!6201 (value!190623 List!39433)) (IntegerValue!18605 (value!190624 Int) (text!43856 List!39433)) (StringLiteralValue!18604 (text!43857 List!39433)) (FloatLiteralValue!12403 (text!43858 List!39433)) (BytesLiteralValue!6201 (value!190625 List!39433)) (CommentValue!12403 (value!190626 List!39433)) (StringLiteralValue!18605 (value!190627 List!39433)) (ErrorTokenValue!6201 (msg!6262 List!39433)) )
))
(declare-datatypes ((C!21646 0))(
  ( (C!21647 (val!12871 Int)) )
))
(declare-datatypes ((Regex!10730 0))(
  ( (ElementMatch!10730 (c!639411 C!21646)) (Concat!16932 (regOne!21972 Regex!10730) (regTwo!21972 Regex!10730)) (EmptyExpr!10730) (Star!10730 (reg!11059 Regex!10730)) (EmptyLang!10730) (Union!10730 (regOne!21973 Regex!10730) (regTwo!21973 Regex!10730)) )
))
(declare-datatypes ((String!44341 0))(
  ( (String!44342 (value!190628 String)) )
))
(declare-datatypes ((List!39434 0))(
  ( (Nil!39310) (Cons!39310 (h!44730 C!21646) (t!301967 List!39434)) )
))
(declare-datatypes ((IArray!24141 0))(
  ( (IArray!24142 (innerList!12128 List!39434)) )
))
(declare-datatypes ((Conc!12068 0))(
  ( (Node!12068 (left!30604 Conc!12068) (right!30934 Conc!12068) (csize!24366 Int) (cheight!12279 Int)) (Leaf!18665 (xs!15270 IArray!24141) (csize!24367 Int)) (Empty!12068) )
))
(declare-datatypes ((BalanceConc!23750 0))(
  ( (BalanceConc!23751 (c!639412 Conc!12068)) )
))
(declare-datatypes ((TokenValueInjection!11830 0))(
  ( (TokenValueInjection!11831 (toValue!8307 Int) (toChars!8166 Int)) )
))
(declare-datatypes ((Rule!11742 0))(
  ( (Rule!11743 (regex!5971 Regex!10730) (tag!6803 String!44341) (isSeparator!5971 Bool) (transformation!5971 TokenValueInjection!11830)) )
))
(declare-datatypes ((List!39435 0))(
  ( (Nil!39311) (Cons!39311 (h!44731 Rule!11742) (t!301968 List!39435)) )
))
(declare-fun rules!3598 () List!39435)

(declare-fun isEmpty!23429 (List!39435) Bool)

(assert (=> b!3700163 (= res!1504983 (not (isEmpty!23429 (t!301968 rules!3598))))))

(declare-fun b!3700164 () Bool)

(declare-fun res!1504985 () Bool)

(declare-fun e!2291499 () Bool)

(assert (=> b!3700164 (=> (not res!1504985) (not e!2291499))))

(declare-datatypes ((LexerInterface!5560 0))(
  ( (LexerInterfaceExt!5557 (__x!24620 Int)) (Lexer!5558) )
))
(declare-fun thiss!25322 () LexerInterface!5560)

(declare-fun rulesInvariant!4957 (LexerInterface!5560 List!39435) Bool)

(assert (=> b!3700164 (= res!1504985 (rulesInvariant!4957 thiss!25322 rules!3598))))

(declare-fun b!3700165 () Bool)

(declare-fun res!1504979 () Bool)

(assert (=> b!3700165 (=> (not res!1504979) (not e!2291499))))

(assert (=> b!3700165 (= res!1504979 (not (isEmpty!23429 rules!3598)))))

(declare-fun b!3700166 () Bool)

(declare-fun e!2291492 () Bool)

(assert (=> b!3700166 (= e!2291499 e!2291492)))

(declare-fun res!1504987 () Bool)

(assert (=> b!3700166 (=> (not res!1504987) (not e!2291492))))

(declare-datatypes ((Token!11296 0))(
  ( (Token!11297 (value!190629 TokenValue!6201) (rule!8837 Rule!11742) (size!29979 Int) (originalCharacters!6679 List!39434)) )
))
(declare-datatypes ((tuple2!39174 0))(
  ( (tuple2!39175 (_1!22721 Token!11296) (_2!22721 List!39434)) )
))
(declare-datatypes ((Option!8507 0))(
  ( (None!8506) (Some!8506 (v!38466 tuple2!39174)) )
))
(declare-fun lt!1294855 () Option!8507)

(declare-fun isDefined!6696 (Option!8507) Bool)

(assert (=> b!3700166 (= res!1504987 (isDefined!6696 lt!1294855))))

(declare-fun input!3172 () List!39434)

(declare-fun maxPrefix!3082 (LexerInterface!5560 List!39435 List!39434) Option!8507)

(assert (=> b!3700166 (= lt!1294855 (maxPrefix!3082 thiss!25322 rules!3598 input!3172))))

(declare-fun token!544 () Token!11296)

(declare-fun b!3700167 () Bool)

(declare-fun e!2291495 () Bool)

(declare-fun tp!1124763 () Bool)

(declare-fun e!2291487 () Bool)

(declare-fun inv!21 (TokenValue!6201) Bool)

(assert (=> b!3700167 (= e!2291495 (and (inv!21 (value!190629 token!544)) e!2291487 tp!1124763))))

(declare-fun b!3700168 () Bool)

(declare-fun res!1504981 () Bool)

(assert (=> b!3700168 (=> (not res!1504981) (not e!2291492))))

(declare-fun get!13080 (Option!8507) tuple2!39174)

(assert (=> b!3700168 (= res!1504981 (= (_1!22721 (get!13080 lt!1294855)) token!544))))

(declare-fun b!3700169 () Bool)

(declare-fun e!2291486 () Bool)

(declare-fun ListPrimitiveSize!244 (List!39435) Int)

(assert (=> b!3700169 (= e!2291486 (< (ListPrimitiveSize!244 (t!301968 rules!3598)) (ListPrimitiveSize!244 rules!3598)))))

(declare-fun b!3700170 () Bool)

(declare-fun e!2291498 () Bool)

(declare-fun e!2291488 () Bool)

(declare-fun tp!1124765 () Bool)

(assert (=> b!3700170 (= e!2291498 (and e!2291488 tp!1124765))))

(declare-fun b!3700171 () Bool)

(declare-fun res!1504984 () Bool)

(assert (=> b!3700171 (=> (not res!1504984) (not e!2291492))))

(assert (=> b!3700171 (= res!1504984 (is-Cons!39311 rules!3598))))

(declare-fun b!3700172 () Bool)

(declare-fun e!2291496 () Bool)

(declare-fun tp!1124759 () Bool)

(declare-fun inv!52830 (String!44341) Bool)

(declare-fun inv!52833 (TokenValueInjection!11830) Bool)

(assert (=> b!3700172 (= e!2291488 (and tp!1124759 (inv!52830 (tag!6803 (h!44731 rules!3598))) (inv!52833 (transformation!5971 (h!44731 rules!3598))) e!2291496))))

(declare-fun b!3700173 () Bool)

(declare-fun res!1504982 () Bool)

(assert (=> b!3700173 (=> res!1504982 e!2291486)))

(declare-fun lt!1294856 () Option!8507)

(assert (=> b!3700173 (= res!1504982 (not (= (_1!22721 (get!13080 lt!1294856)) token!544)))))

(declare-fun b!3700174 () Bool)

(assert (=> b!3700174 (= e!2291492 e!2291491)))

(declare-fun res!1504986 () Bool)

(assert (=> b!3700174 (=> (not res!1504986) (not e!2291491))))

(declare-fun e!2291494 () Bool)

(assert (=> b!3700174 (= res!1504986 e!2291494)))

(declare-fun res!1504978 () Bool)

(assert (=> b!3700174 (=> res!1504978 e!2291494)))

(declare-fun lt!1294858 () Option!8507)

(assert (=> b!3700174 (= res!1504978 (not (isDefined!6696 lt!1294858)))))

(declare-fun maxPrefixOneRule!2192 (LexerInterface!5560 Rule!11742 List!39434) Option!8507)

(assert (=> b!3700174 (= lt!1294858 (maxPrefixOneRule!2192 thiss!25322 (h!44731 rules!3598) input!3172))))

(assert (=> b!3700175 (= e!2291496 (and tp!1124767 tp!1124762))))

(declare-fun res!1504977 () Bool)

(assert (=> start!348600 (=> (not res!1504977) (not e!2291499))))

(assert (=> start!348600 (= res!1504977 (is-Lexer!5558 thiss!25322))))

(assert (=> start!348600 e!2291499))

(assert (=> start!348600 true))

(assert (=> start!348600 e!2291498))

(declare-fun inv!52834 (Token!11296) Bool)

(assert (=> start!348600 (and (inv!52834 token!544) e!2291495)))

(declare-fun e!2291497 () Bool)

(assert (=> start!348600 e!2291497))

(declare-fun b!3700176 () Bool)

(declare-fun tp_is_empty!18535 () Bool)

(declare-fun tp!1124764 () Bool)

(assert (=> b!3700176 (= e!2291497 (and tp_is_empty!18535 tp!1124764))))

(declare-fun e!2291485 () Bool)

(assert (=> b!3700177 (= e!2291485 (and tp!1124760 tp!1124766))))

(declare-fun b!3700178 () Bool)

(assert (=> b!3700178 (= e!2291494 (not (= (_1!22721 (get!13080 lt!1294858)) token!544)))))

(declare-fun b!3700179 () Bool)

(assert (=> b!3700179 (= e!2291491 (not e!2291486))))

(declare-fun res!1504980 () Bool)

(assert (=> b!3700179 (=> res!1504980 e!2291486)))

(assert (=> b!3700179 (= res!1504980 (not (isDefined!6696 lt!1294856)))))

(assert (=> b!3700179 (= lt!1294856 (maxPrefix!3082 thiss!25322 (t!301968 rules!3598) input!3172))))

(assert (=> b!3700179 (rulesInvariant!4957 thiss!25322 (t!301968 rules!3598))))

(declare-datatypes ((Unit!57279 0))(
  ( (Unit!57280) )
))
(declare-fun lt!1294857 () Unit!57279)

(declare-fun lemmaInvariantOnRulesThenOnTail!667 (LexerInterface!5560 Rule!11742 List!39435) Unit!57279)

(assert (=> b!3700179 (= lt!1294857 (lemmaInvariantOnRulesThenOnTail!667 thiss!25322 (h!44731 rules!3598) (t!301968 rules!3598)))))

(declare-fun b!3700180 () Bool)

(declare-fun tp!1124761 () Bool)

(assert (=> b!3700180 (= e!2291487 (and tp!1124761 (inv!52830 (tag!6803 (rule!8837 token!544))) (inv!52833 (transformation!5971 (rule!8837 token!544))) e!2291485))))

(assert (= (and start!348600 res!1504977) b!3700164))

(assert (= (and b!3700164 res!1504985) b!3700165))

(assert (= (and b!3700165 res!1504979) b!3700166))

(assert (= (and b!3700166 res!1504987) b!3700168))

(assert (= (and b!3700168 res!1504981) b!3700171))

(assert (= (and b!3700171 res!1504984) b!3700174))

(assert (= (and b!3700174 (not res!1504978)) b!3700178))

(assert (= (and b!3700174 res!1504986) b!3700163))

(assert (= (and b!3700163 res!1504983) b!3700179))

(assert (= (and b!3700179 (not res!1504980)) b!3700173))

(assert (= (and b!3700173 (not res!1504982)) b!3700169))

(assert (= b!3700172 b!3700175))

(assert (= b!3700170 b!3700172))

(assert (= (and start!348600 (is-Cons!39311 rules!3598)) b!3700170))

(assert (= b!3700180 b!3700177))

(assert (= b!3700167 b!3700180))

(assert (= start!348600 b!3700167))

(assert (= (and start!348600 (is-Cons!39310 input!3172)) b!3700176))

(declare-fun m!4211321 () Bool)

(assert (=> b!3700163 m!4211321))

(declare-fun m!4211323 () Bool)

(assert (=> b!3700165 m!4211323))

(declare-fun m!4211325 () Bool)

(assert (=> b!3700168 m!4211325))

(declare-fun m!4211327 () Bool)

(assert (=> b!3700173 m!4211327))

(declare-fun m!4211329 () Bool)

(assert (=> b!3700172 m!4211329))

(declare-fun m!4211331 () Bool)

(assert (=> b!3700172 m!4211331))

(declare-fun m!4211333 () Bool)

(assert (=> b!3700169 m!4211333))

(declare-fun m!4211335 () Bool)

(assert (=> b!3700169 m!4211335))

(declare-fun m!4211337 () Bool)

(assert (=> b!3700164 m!4211337))

(declare-fun m!4211339 () Bool)

(assert (=> b!3700178 m!4211339))

(declare-fun m!4211341 () Bool)

(assert (=> b!3700179 m!4211341))

(declare-fun m!4211343 () Bool)

(assert (=> b!3700179 m!4211343))

(declare-fun m!4211345 () Bool)

(assert (=> b!3700179 m!4211345))

(declare-fun m!4211347 () Bool)

(assert (=> b!3700179 m!4211347))

(declare-fun m!4211349 () Bool)

(assert (=> b!3700167 m!4211349))

(declare-fun m!4211351 () Bool)

(assert (=> b!3700180 m!4211351))

(declare-fun m!4211353 () Bool)

(assert (=> b!3700180 m!4211353))

(declare-fun m!4211355 () Bool)

(assert (=> b!3700174 m!4211355))

(declare-fun m!4211357 () Bool)

(assert (=> b!3700174 m!4211357))

(declare-fun m!4211359 () Bool)

(assert (=> b!3700166 m!4211359))

(declare-fun m!4211361 () Bool)

(assert (=> b!3700166 m!4211361))

(declare-fun m!4211363 () Bool)

(assert (=> start!348600 m!4211363))

(push 1)

(assert b_and!276675)

(assert (not start!348600))

(assert (not b_next!99273))

(assert (not b_next!99275))

(assert (not b!3700169))

(assert (not b!3700165))

(assert (not b!3700180))

(assert (not b!3700178))

(assert (not b!3700168))

(assert b_and!276677)

(assert (not b_next!99279))

(assert (not b!3700167))

(assert tp_is_empty!18535)

(assert (not b!3700163))

(assert b_and!276673)

(assert (not b!3700164))

(assert (not b_next!99277))

(assert b_and!276671)

(assert (not b!3700179))

(assert (not b!3700173))

(assert (not b!3700172))

(assert (not b!3700174))

(assert (not b!3700170))

(assert (not b!3700166))

(assert (not b!3700176))

(check-sat)

(pop 1)

(push 1)

(assert b_and!276675)

(assert (not b_next!99273))

(assert b_and!276673)

(assert (not b_next!99277))

(assert (not b_next!99275))

(assert b_and!276671)

(assert b_and!276677)

(assert (not b_next!99279))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1085047 () Bool)

(assert (=> d!1085047 (= (isEmpty!23429 rules!3598) (is-Nil!39311 rules!3598))))

(assert (=> b!3700165 d!1085047))

(declare-fun d!1085049 () Bool)

(declare-fun isEmpty!23431 (Option!8507) Bool)

(assert (=> d!1085049 (= (isDefined!6696 lt!1294855) (not (isEmpty!23431 lt!1294855)))))

(declare-fun bs!574414 () Bool)

(assert (= bs!574414 d!1085049))

(declare-fun m!4211409 () Bool)

(assert (=> bs!574414 m!4211409))

(assert (=> b!3700166 d!1085049))

(declare-fun b!3700259 () Bool)

(declare-fun res!1505056 () Bool)

(declare-fun e!2291559 () Bool)

(assert (=> b!3700259 (=> (not res!1505056) (not e!2291559))))

(declare-fun lt!1294883 () Option!8507)

(declare-fun apply!9403 (TokenValueInjection!11830 BalanceConc!23750) TokenValue!6201)

(declare-fun seqFromList!4482 (List!39434) BalanceConc!23750)

(assert (=> b!3700259 (= res!1505056 (= (value!190629 (_1!22721 (get!13080 lt!1294883))) (apply!9403 (transformation!5971 (rule!8837 (_1!22721 (get!13080 lt!1294883)))) (seqFromList!4482 (originalCharacters!6679 (_1!22721 (get!13080 lt!1294883)))))))))

(declare-fun b!3700260 () Bool)

(declare-fun res!1505050 () Bool)

(assert (=> b!3700260 (=> (not res!1505050) (not e!2291559))))

(declare-fun matchR!5263 (Regex!10730 List!39434) Bool)

(declare-fun list!14682 (BalanceConc!23750) List!39434)

(declare-fun charsOf!3960 (Token!11296) BalanceConc!23750)

(assert (=> b!3700260 (= res!1505050 (matchR!5263 (regex!5971 (rule!8837 (_1!22721 (get!13080 lt!1294883)))) (list!14682 (charsOf!3960 (_1!22721 (get!13080 lt!1294883))))))))

(declare-fun b!3700261 () Bool)

(declare-fun e!2291558 () Option!8507)

(declare-fun lt!1294881 () Option!8507)

(declare-fun lt!1294885 () Option!8507)

(assert (=> b!3700261 (= e!2291558 (ite (and (is-None!8506 lt!1294881) (is-None!8506 lt!1294885)) None!8506 (ite (is-None!8506 lt!1294885) lt!1294881 (ite (is-None!8506 lt!1294881) lt!1294885 (ite (>= (size!29979 (_1!22721 (v!38466 lt!1294881))) (size!29979 (_1!22721 (v!38466 lt!1294885)))) lt!1294881 lt!1294885)))))))

(declare-fun call!267361 () Option!8507)

(assert (=> b!3700261 (= lt!1294881 call!267361)))

(assert (=> b!3700261 (= lt!1294885 (maxPrefix!3082 thiss!25322 (t!301968 rules!3598) input!3172))))

(declare-fun b!3700262 () Bool)

(declare-fun res!1505054 () Bool)

(assert (=> b!3700262 (=> (not res!1505054) (not e!2291559))))

(assert (=> b!3700262 (= res!1505054 (= (list!14682 (charsOf!3960 (_1!22721 (get!13080 lt!1294883)))) (originalCharacters!6679 (_1!22721 (get!13080 lt!1294883)))))))

(declare-fun d!1085051 () Bool)

(declare-fun e!2291557 () Bool)

(assert (=> d!1085051 e!2291557))

(declare-fun res!1505051 () Bool)

(assert (=> d!1085051 (=> res!1505051 e!2291557)))

(assert (=> d!1085051 (= res!1505051 (isEmpty!23431 lt!1294883))))

(assert (=> d!1085051 (= lt!1294883 e!2291558)))

(declare-fun c!639418 () Bool)

(assert (=> d!1085051 (= c!639418 (and (is-Cons!39311 rules!3598) (is-Nil!39311 (t!301968 rules!3598))))))

(declare-fun lt!1294884 () Unit!57279)

(declare-fun lt!1294882 () Unit!57279)

(assert (=> d!1085051 (= lt!1294884 lt!1294882)))

(declare-fun isPrefix!3284 (List!39434 List!39434) Bool)

(assert (=> d!1085051 (isPrefix!3284 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2069 (List!39434 List!39434) Unit!57279)

(assert (=> d!1085051 (= lt!1294882 (lemmaIsPrefixRefl!2069 input!3172 input!3172))))

(declare-fun rulesValidInductive!2150 (LexerInterface!5560 List!39435) Bool)

(assert (=> d!1085051 (rulesValidInductive!2150 thiss!25322 rules!3598)))

(assert (=> d!1085051 (= (maxPrefix!3082 thiss!25322 rules!3598 input!3172) lt!1294883)))

(declare-fun b!3700263 () Bool)

(assert (=> b!3700263 (= e!2291558 call!267361)))

(declare-fun b!3700264 () Bool)

(declare-fun res!1505055 () Bool)

(assert (=> b!3700264 (=> (not res!1505055) (not e!2291559))))

(declare-fun ++!9763 (List!39434 List!39434) List!39434)

(assert (=> b!3700264 (= res!1505055 (= (++!9763 (list!14682 (charsOf!3960 (_1!22721 (get!13080 lt!1294883)))) (_2!22721 (get!13080 lt!1294883))) input!3172))))

(declare-fun bm!267356 () Bool)

(assert (=> bm!267356 (= call!267361 (maxPrefixOneRule!2192 thiss!25322 (h!44731 rules!3598) input!3172))))

(declare-fun b!3700265 () Bool)

(declare-fun contains!7838 (List!39435 Rule!11742) Bool)

(assert (=> b!3700265 (= e!2291559 (contains!7838 rules!3598 (rule!8837 (_1!22721 (get!13080 lt!1294883)))))))

(declare-fun b!3700266 () Bool)

(declare-fun res!1505052 () Bool)

(assert (=> b!3700266 (=> (not res!1505052) (not e!2291559))))

(declare-fun size!29981 (List!39434) Int)

(assert (=> b!3700266 (= res!1505052 (< (size!29981 (_2!22721 (get!13080 lt!1294883))) (size!29981 input!3172)))))

(declare-fun b!3700267 () Bool)

(assert (=> b!3700267 (= e!2291557 e!2291559)))

(declare-fun res!1505053 () Bool)

(assert (=> b!3700267 (=> (not res!1505053) (not e!2291559))))

(assert (=> b!3700267 (= res!1505053 (isDefined!6696 lt!1294883))))

(assert (= (and d!1085051 c!639418) b!3700263))

(assert (= (and d!1085051 (not c!639418)) b!3700261))

(assert (= (or b!3700263 b!3700261) bm!267356))

(assert (= (and d!1085051 (not res!1505051)) b!3700267))

(assert (= (and b!3700267 res!1505053) b!3700262))

(assert (= (and b!3700262 res!1505054) b!3700266))

(assert (= (and b!3700266 res!1505052) b!3700264))

(assert (= (and b!3700264 res!1505055) b!3700259))

(assert (= (and b!3700259 res!1505056) b!3700260))

(assert (= (and b!3700260 res!1505050) b!3700265))

(declare-fun m!4211421 () Bool)

(assert (=> b!3700259 m!4211421))

(declare-fun m!4211423 () Bool)

(assert (=> b!3700259 m!4211423))

(assert (=> b!3700259 m!4211423))

(declare-fun m!4211425 () Bool)

(assert (=> b!3700259 m!4211425))

(assert (=> b!3700261 m!4211343))

(declare-fun m!4211427 () Bool)

(assert (=> b!3700267 m!4211427))

(assert (=> b!3700260 m!4211421))

(declare-fun m!4211429 () Bool)

(assert (=> b!3700260 m!4211429))

(assert (=> b!3700260 m!4211429))

(declare-fun m!4211431 () Bool)

(assert (=> b!3700260 m!4211431))

(assert (=> b!3700260 m!4211431))

(declare-fun m!4211433 () Bool)

(assert (=> b!3700260 m!4211433))

(assert (=> b!3700264 m!4211421))

(assert (=> b!3700264 m!4211429))

(assert (=> b!3700264 m!4211429))

(assert (=> b!3700264 m!4211431))

(assert (=> b!3700264 m!4211431))

(declare-fun m!4211435 () Bool)

(assert (=> b!3700264 m!4211435))

(assert (=> bm!267356 m!4211357))

(assert (=> b!3700266 m!4211421))

(declare-fun m!4211437 () Bool)

(assert (=> b!3700266 m!4211437))

(declare-fun m!4211439 () Bool)

(assert (=> b!3700266 m!4211439))

(assert (=> b!3700265 m!4211421))

(declare-fun m!4211441 () Bool)

(assert (=> b!3700265 m!4211441))

(assert (=> b!3700262 m!4211421))

(assert (=> b!3700262 m!4211429))

(assert (=> b!3700262 m!4211429))

(assert (=> b!3700262 m!4211431))

(declare-fun m!4211443 () Bool)

(assert (=> d!1085051 m!4211443))

(declare-fun m!4211445 () Bool)

(assert (=> d!1085051 m!4211445))

(declare-fun m!4211447 () Bool)

(assert (=> d!1085051 m!4211447))

(declare-fun m!4211449 () Bool)

(assert (=> d!1085051 m!4211449))

(assert (=> b!3700166 d!1085051))

(declare-fun d!1085067 () Bool)

(declare-fun res!1505061 () Bool)

(declare-fun e!2291562 () Bool)

(assert (=> d!1085067 (=> (not res!1505061) (not e!2291562))))

(declare-fun isEmpty!23432 (List!39434) Bool)

(assert (=> d!1085067 (= res!1505061 (not (isEmpty!23432 (originalCharacters!6679 token!544))))))

(assert (=> d!1085067 (= (inv!52834 token!544) e!2291562)))

(declare-fun b!3700272 () Bool)

(declare-fun res!1505062 () Bool)

(assert (=> b!3700272 (=> (not res!1505062) (not e!2291562))))

(declare-fun dynLambda!17181 (Int TokenValue!6201) BalanceConc!23750)

(assert (=> b!3700272 (= res!1505062 (= (originalCharacters!6679 token!544) (list!14682 (dynLambda!17181 (toChars!8166 (transformation!5971 (rule!8837 token!544))) (value!190629 token!544)))))))

(declare-fun b!3700273 () Bool)

(assert (=> b!3700273 (= e!2291562 (= (size!29979 token!544) (size!29981 (originalCharacters!6679 token!544))))))

(assert (= (and d!1085067 res!1505061) b!3700272))

(assert (= (and b!3700272 res!1505062) b!3700273))

(declare-fun b_lambda!109755 () Bool)

(assert (=> (not b_lambda!109755) (not b!3700272)))

(declare-fun t!301973 () Bool)

(declare-fun tb!214249 () Bool)

(assert (=> (and b!3700175 (= (toChars!8166 (transformation!5971 (h!44731 rules!3598))) (toChars!8166 (transformation!5971 (rule!8837 token!544)))) t!301973) tb!214249))

(declare-fun b!3700278 () Bool)

(declare-fun e!2291565 () Bool)

(declare-fun tp!1124797 () Bool)

(declare-fun inv!52837 (Conc!12068) Bool)

(assert (=> b!3700278 (= e!2291565 (and (inv!52837 (c!639412 (dynLambda!17181 (toChars!8166 (transformation!5971 (rule!8837 token!544))) (value!190629 token!544)))) tp!1124797))))

(declare-fun result!261026 () Bool)

(declare-fun inv!52838 (BalanceConc!23750) Bool)

(assert (=> tb!214249 (= result!261026 (and (inv!52838 (dynLambda!17181 (toChars!8166 (transformation!5971 (rule!8837 token!544))) (value!190629 token!544))) e!2291565))))

(assert (= tb!214249 b!3700278))

(declare-fun m!4211451 () Bool)

(assert (=> b!3700278 m!4211451))

(declare-fun m!4211453 () Bool)

(assert (=> tb!214249 m!4211453))

(assert (=> b!3700272 t!301973))

(declare-fun b_and!276687 () Bool)

(assert (= b_and!276673 (and (=> t!301973 result!261026) b_and!276687)))

(declare-fun t!301975 () Bool)

(declare-fun tb!214251 () Bool)

(assert (=> (and b!3700177 (= (toChars!8166 (transformation!5971 (rule!8837 token!544))) (toChars!8166 (transformation!5971 (rule!8837 token!544)))) t!301975) tb!214251))

(declare-fun result!261030 () Bool)

(assert (= result!261030 result!261026))

(assert (=> b!3700272 t!301975))

(declare-fun b_and!276689 () Bool)

(assert (= b_and!276677 (and (=> t!301975 result!261030) b_and!276689)))

(declare-fun m!4211455 () Bool)

(assert (=> d!1085067 m!4211455))

(declare-fun m!4211457 () Bool)

(assert (=> b!3700272 m!4211457))

(assert (=> b!3700272 m!4211457))

(declare-fun m!4211459 () Bool)

(assert (=> b!3700272 m!4211459))

(declare-fun m!4211461 () Bool)

(assert (=> b!3700273 m!4211461))

(assert (=> start!348600 d!1085067))

(declare-fun d!1085069 () Bool)

(declare-fun res!1505065 () Bool)

(declare-fun e!2291568 () Bool)

(assert (=> d!1085069 (=> (not res!1505065) (not e!2291568))))

(declare-fun rulesValid!2308 (LexerInterface!5560 List!39435) Bool)

(assert (=> d!1085069 (= res!1505065 (rulesValid!2308 thiss!25322 rules!3598))))

(assert (=> d!1085069 (= (rulesInvariant!4957 thiss!25322 rules!3598) e!2291568)))

(declare-fun b!3700281 () Bool)

(declare-datatypes ((List!39439 0))(
  ( (Nil!39315) (Cons!39315 (h!44735 String!44341) (t!301978 List!39439)) )
))
(declare-fun noDuplicateTag!2304 (LexerInterface!5560 List!39435 List!39439) Bool)

(assert (=> b!3700281 (= e!2291568 (noDuplicateTag!2304 thiss!25322 rules!3598 Nil!39315))))

(assert (= (and d!1085069 res!1505065) b!3700281))

(declare-fun m!4211463 () Bool)

(assert (=> d!1085069 m!4211463))

(declare-fun m!4211465 () Bool)

(assert (=> b!3700281 m!4211465))

(assert (=> b!3700164 d!1085069))

(declare-fun d!1085071 () Bool)

(assert (=> d!1085071 (= (get!13080 lt!1294858) (v!38466 lt!1294858))))

(assert (=> b!3700178 d!1085071))

(declare-fun d!1085073 () Bool)

(assert (=> d!1085073 (= (get!13080 lt!1294855) (v!38466 lt!1294855))))

(assert (=> b!3700168 d!1085073))

(declare-fun d!1085075 () Bool)

(assert (=> d!1085075 (= (isDefined!6696 lt!1294856) (not (isEmpty!23431 lt!1294856)))))

(declare-fun bs!574416 () Bool)

(assert (= bs!574416 d!1085075))

(declare-fun m!4211467 () Bool)

(assert (=> bs!574416 m!4211467))

(assert (=> b!3700179 d!1085075))

(declare-fun b!3700282 () Bool)

(declare-fun res!1505072 () Bool)

(declare-fun e!2291571 () Bool)

(assert (=> b!3700282 (=> (not res!1505072) (not e!2291571))))

(declare-fun lt!1294888 () Option!8507)

(assert (=> b!3700282 (= res!1505072 (= (value!190629 (_1!22721 (get!13080 lt!1294888))) (apply!9403 (transformation!5971 (rule!8837 (_1!22721 (get!13080 lt!1294888)))) (seqFromList!4482 (originalCharacters!6679 (_1!22721 (get!13080 lt!1294888)))))))))

(declare-fun b!3700283 () Bool)

(declare-fun res!1505066 () Bool)

(assert (=> b!3700283 (=> (not res!1505066) (not e!2291571))))

(assert (=> b!3700283 (= res!1505066 (matchR!5263 (regex!5971 (rule!8837 (_1!22721 (get!13080 lt!1294888)))) (list!14682 (charsOf!3960 (_1!22721 (get!13080 lt!1294888))))))))

(declare-fun b!3700284 () Bool)

(declare-fun e!2291570 () Option!8507)

(declare-fun lt!1294886 () Option!8507)

(declare-fun lt!1294890 () Option!8507)

(assert (=> b!3700284 (= e!2291570 (ite (and (is-None!8506 lt!1294886) (is-None!8506 lt!1294890)) None!8506 (ite (is-None!8506 lt!1294890) lt!1294886 (ite (is-None!8506 lt!1294886) lt!1294890 (ite (>= (size!29979 (_1!22721 (v!38466 lt!1294886))) (size!29979 (_1!22721 (v!38466 lt!1294890)))) lt!1294886 lt!1294890)))))))

(declare-fun call!267362 () Option!8507)

(assert (=> b!3700284 (= lt!1294886 call!267362)))

(assert (=> b!3700284 (= lt!1294890 (maxPrefix!3082 thiss!25322 (t!301968 (t!301968 rules!3598)) input!3172))))

(declare-fun b!3700285 () Bool)

(declare-fun res!1505070 () Bool)

(assert (=> b!3700285 (=> (not res!1505070) (not e!2291571))))

(assert (=> b!3700285 (= res!1505070 (= (list!14682 (charsOf!3960 (_1!22721 (get!13080 lt!1294888)))) (originalCharacters!6679 (_1!22721 (get!13080 lt!1294888)))))))

(declare-fun d!1085077 () Bool)

(declare-fun e!2291569 () Bool)

(assert (=> d!1085077 e!2291569))

(declare-fun res!1505067 () Bool)

(assert (=> d!1085077 (=> res!1505067 e!2291569)))

(assert (=> d!1085077 (= res!1505067 (isEmpty!23431 lt!1294888))))

(assert (=> d!1085077 (= lt!1294888 e!2291570)))

(declare-fun c!639419 () Bool)

(assert (=> d!1085077 (= c!639419 (and (is-Cons!39311 (t!301968 rules!3598)) (is-Nil!39311 (t!301968 (t!301968 rules!3598)))))))

(declare-fun lt!1294889 () Unit!57279)

(declare-fun lt!1294887 () Unit!57279)

(assert (=> d!1085077 (= lt!1294889 lt!1294887)))

(assert (=> d!1085077 (isPrefix!3284 input!3172 input!3172)))

(assert (=> d!1085077 (= lt!1294887 (lemmaIsPrefixRefl!2069 input!3172 input!3172))))

(assert (=> d!1085077 (rulesValidInductive!2150 thiss!25322 (t!301968 rules!3598))))

(assert (=> d!1085077 (= (maxPrefix!3082 thiss!25322 (t!301968 rules!3598) input!3172) lt!1294888)))

(declare-fun b!3700286 () Bool)

(assert (=> b!3700286 (= e!2291570 call!267362)))

(declare-fun b!3700287 () Bool)

(declare-fun res!1505071 () Bool)

(assert (=> b!3700287 (=> (not res!1505071) (not e!2291571))))

(assert (=> b!3700287 (= res!1505071 (= (++!9763 (list!14682 (charsOf!3960 (_1!22721 (get!13080 lt!1294888)))) (_2!22721 (get!13080 lt!1294888))) input!3172))))

(declare-fun bm!267357 () Bool)

(assert (=> bm!267357 (= call!267362 (maxPrefixOneRule!2192 thiss!25322 (h!44731 (t!301968 rules!3598)) input!3172))))

(declare-fun b!3700288 () Bool)

(assert (=> b!3700288 (= e!2291571 (contains!7838 (t!301968 rules!3598) (rule!8837 (_1!22721 (get!13080 lt!1294888)))))))

(declare-fun b!3700289 () Bool)

(declare-fun res!1505068 () Bool)

(assert (=> b!3700289 (=> (not res!1505068) (not e!2291571))))

(assert (=> b!3700289 (= res!1505068 (< (size!29981 (_2!22721 (get!13080 lt!1294888))) (size!29981 input!3172)))))

(declare-fun b!3700290 () Bool)

(assert (=> b!3700290 (= e!2291569 e!2291571)))

(declare-fun res!1505069 () Bool)

(assert (=> b!3700290 (=> (not res!1505069) (not e!2291571))))

(assert (=> b!3700290 (= res!1505069 (isDefined!6696 lt!1294888))))

(assert (= (and d!1085077 c!639419) b!3700286))

(assert (= (and d!1085077 (not c!639419)) b!3700284))

(assert (= (or b!3700286 b!3700284) bm!267357))

(assert (= (and d!1085077 (not res!1505067)) b!3700290))

(assert (= (and b!3700290 res!1505069) b!3700285))

(assert (= (and b!3700285 res!1505070) b!3700289))

(assert (= (and b!3700289 res!1505068) b!3700287))

(assert (= (and b!3700287 res!1505071) b!3700282))

(assert (= (and b!3700282 res!1505072) b!3700283))

(assert (= (and b!3700283 res!1505066) b!3700288))

(declare-fun m!4211469 () Bool)

(assert (=> b!3700282 m!4211469))

(declare-fun m!4211471 () Bool)

(assert (=> b!3700282 m!4211471))

(assert (=> b!3700282 m!4211471))

(declare-fun m!4211473 () Bool)

(assert (=> b!3700282 m!4211473))

(declare-fun m!4211475 () Bool)

(assert (=> b!3700284 m!4211475))

(declare-fun m!4211477 () Bool)

(assert (=> b!3700290 m!4211477))

(assert (=> b!3700283 m!4211469))

(declare-fun m!4211479 () Bool)

(assert (=> b!3700283 m!4211479))

(assert (=> b!3700283 m!4211479))

(declare-fun m!4211481 () Bool)

(assert (=> b!3700283 m!4211481))

(assert (=> b!3700283 m!4211481))

(declare-fun m!4211483 () Bool)

(assert (=> b!3700283 m!4211483))

(assert (=> b!3700287 m!4211469))

(assert (=> b!3700287 m!4211479))

(assert (=> b!3700287 m!4211479))

(assert (=> b!3700287 m!4211481))

(assert (=> b!3700287 m!4211481))

(declare-fun m!4211485 () Bool)

(assert (=> b!3700287 m!4211485))

(declare-fun m!4211487 () Bool)

(assert (=> bm!267357 m!4211487))

(assert (=> b!3700289 m!4211469))

(declare-fun m!4211489 () Bool)

(assert (=> b!3700289 m!4211489))

(assert (=> b!3700289 m!4211439))

(assert (=> b!3700288 m!4211469))

(declare-fun m!4211491 () Bool)

(assert (=> b!3700288 m!4211491))

(assert (=> b!3700285 m!4211469))

(assert (=> b!3700285 m!4211479))

(assert (=> b!3700285 m!4211479))

(assert (=> b!3700285 m!4211481))

(declare-fun m!4211493 () Bool)

(assert (=> d!1085077 m!4211493))

(assert (=> d!1085077 m!4211445))

(assert (=> d!1085077 m!4211447))

(declare-fun m!4211495 () Bool)

(assert (=> d!1085077 m!4211495))

(assert (=> b!3700179 d!1085077))

(declare-fun d!1085079 () Bool)

(declare-fun res!1505073 () Bool)

(declare-fun e!2291572 () Bool)

(assert (=> d!1085079 (=> (not res!1505073) (not e!2291572))))

(assert (=> d!1085079 (= res!1505073 (rulesValid!2308 thiss!25322 (t!301968 rules!3598)))))

(assert (=> d!1085079 (= (rulesInvariant!4957 thiss!25322 (t!301968 rules!3598)) e!2291572)))

(declare-fun b!3700291 () Bool)

(assert (=> b!3700291 (= e!2291572 (noDuplicateTag!2304 thiss!25322 (t!301968 rules!3598) Nil!39315))))

(assert (= (and d!1085079 res!1505073) b!3700291))

(declare-fun m!4211497 () Bool)

(assert (=> d!1085079 m!4211497))

(declare-fun m!4211499 () Bool)

(assert (=> b!3700291 m!4211499))

(assert (=> b!3700179 d!1085079))

(declare-fun d!1085081 () Bool)

(assert (=> d!1085081 (rulesInvariant!4957 thiss!25322 (t!301968 rules!3598))))

(declare-fun lt!1294893 () Unit!57279)

(declare-fun choose!22129 (LexerInterface!5560 Rule!11742 List!39435) Unit!57279)

(assert (=> d!1085081 (= lt!1294893 (choose!22129 thiss!25322 (h!44731 rules!3598) (t!301968 rules!3598)))))

(assert (=> d!1085081 (rulesInvariant!4957 thiss!25322 (Cons!39311 (h!44731 rules!3598) (t!301968 rules!3598)))))

(assert (=> d!1085081 (= (lemmaInvariantOnRulesThenOnTail!667 thiss!25322 (h!44731 rules!3598) (t!301968 rules!3598)) lt!1294893)))

(declare-fun bs!574417 () Bool)

(assert (= bs!574417 d!1085081))

(assert (=> bs!574417 m!4211345))

(declare-fun m!4211501 () Bool)

(assert (=> bs!574417 m!4211501))

(declare-fun m!4211503 () Bool)

(assert (=> bs!574417 m!4211503))

(assert (=> b!3700179 d!1085081))

(declare-fun b!3700308 () Bool)

(declare-fun e!2291583 () Bool)

(declare-fun e!2291585 () Bool)

(assert (=> b!3700308 (= e!2291583 e!2291585)))

(declare-fun c!639427 () Bool)

(assert (=> b!3700308 (= c!639427 (is-IntegerValue!18604 (value!190629 token!544)))))

(declare-fun b!3700309 () Bool)

(declare-fun inv!16 (TokenValue!6201) Bool)

(assert (=> b!3700309 (= e!2291583 (inv!16 (value!190629 token!544)))))

(declare-fun b!3700310 () Bool)

(declare-fun inv!17 (TokenValue!6201) Bool)

(assert (=> b!3700310 (= e!2291585 (inv!17 (value!190629 token!544)))))

(declare-fun b!3700311 () Bool)

(declare-fun res!1505078 () Bool)

(declare-fun e!2291584 () Bool)

(assert (=> b!3700311 (=> res!1505078 e!2291584)))

(assert (=> b!3700311 (= res!1505078 (not (is-IntegerValue!18605 (value!190629 token!544))))))

(assert (=> b!3700311 (= e!2291585 e!2291584)))

(declare-fun b!3700312 () Bool)

(declare-fun inv!15 (TokenValue!6201) Bool)

(assert (=> b!3700312 (= e!2291584 (inv!15 (value!190629 token!544)))))

(declare-fun d!1085083 () Bool)

(declare-fun c!639426 () Bool)

(assert (=> d!1085083 (= c!639426 (is-IntegerValue!18603 (value!190629 token!544)))))

(assert (=> d!1085083 (= (inv!21 (value!190629 token!544)) e!2291583)))

(assert (= (and d!1085083 c!639426) b!3700309))

(assert (= (and d!1085083 (not c!639426)) b!3700308))

(assert (= (and b!3700308 c!639427) b!3700310))

(assert (= (and b!3700308 (not c!639427)) b!3700311))

(assert (= (and b!3700311 (not res!1505078)) b!3700312))

(declare-fun m!4211505 () Bool)

(assert (=> b!3700309 m!4211505))

(declare-fun m!4211507 () Bool)

(assert (=> b!3700310 m!4211507))

(declare-fun m!4211509 () Bool)

(assert (=> b!3700312 m!4211509))

(assert (=> b!3700167 d!1085083))

(declare-fun d!1085085 () Bool)

(assert (=> d!1085085 (= (inv!52830 (tag!6803 (rule!8837 token!544))) (= (mod (str.len (value!190628 (tag!6803 (rule!8837 token!544)))) 2) 0))))

(assert (=> b!3700180 d!1085085))

(declare-fun d!1085087 () Bool)

(declare-fun res!1505093 () Bool)

(declare-fun e!2291590 () Bool)

(assert (=> d!1085087 (=> (not res!1505093) (not e!2291590))))

(declare-fun semiInverseModEq!2551 (Int Int) Bool)

(assert (=> d!1085087 (= res!1505093 (semiInverseModEq!2551 (toChars!8166 (transformation!5971 (rule!8837 token!544))) (toValue!8307 (transformation!5971 (rule!8837 token!544)))))))

(assert (=> d!1085087 (= (inv!52833 (transformation!5971 (rule!8837 token!544))) e!2291590)))

(declare-fun b!3700327 () Bool)

(declare-fun equivClasses!2450 (Int Int) Bool)

(assert (=> b!3700327 (= e!2291590 (equivClasses!2450 (toChars!8166 (transformation!5971 (rule!8837 token!544))) (toValue!8307 (transformation!5971 (rule!8837 token!544)))))))

(assert (= (and d!1085087 res!1505093) b!3700327))

(declare-fun m!4211511 () Bool)

(assert (=> d!1085087 m!4211511))

(declare-fun m!4211513 () Bool)

(assert (=> b!3700327 m!4211513))

(assert (=> b!3700180 d!1085087))

(declare-fun d!1085089 () Bool)

(declare-fun lt!1294906 () Int)

(assert (=> d!1085089 (>= lt!1294906 0)))

(declare-fun e!2291593 () Int)

(assert (=> d!1085089 (= lt!1294906 e!2291593)))

(declare-fun c!639430 () Bool)

(assert (=> d!1085089 (= c!639430 (is-Nil!39311 (t!301968 rules!3598)))))

(assert (=> d!1085089 (= (ListPrimitiveSize!244 (t!301968 rules!3598)) lt!1294906)))

(declare-fun b!3700332 () Bool)

(assert (=> b!3700332 (= e!2291593 0)))

(declare-fun b!3700333 () Bool)

(assert (=> b!3700333 (= e!2291593 (+ 1 (ListPrimitiveSize!244 (t!301968 (t!301968 rules!3598)))))))

(assert (= (and d!1085089 c!639430) b!3700332))

(assert (= (and d!1085089 (not c!639430)) b!3700333))

(declare-fun m!4211515 () Bool)

(assert (=> b!3700333 m!4211515))

(assert (=> b!3700169 d!1085089))

(declare-fun d!1085091 () Bool)

(declare-fun lt!1294907 () Int)

(assert (=> d!1085091 (>= lt!1294907 0)))

(declare-fun e!2291594 () Int)

(assert (=> d!1085091 (= lt!1294907 e!2291594)))

(declare-fun c!639431 () Bool)

(assert (=> d!1085091 (= c!639431 (is-Nil!39311 rules!3598))))

(assert (=> d!1085091 (= (ListPrimitiveSize!244 rules!3598) lt!1294907)))

(declare-fun b!3700334 () Bool)

(assert (=> b!3700334 (= e!2291594 0)))

(declare-fun b!3700335 () Bool)

(assert (=> b!3700335 (= e!2291594 (+ 1 (ListPrimitiveSize!244 (t!301968 rules!3598))))))

(assert (= (and d!1085091 c!639431) b!3700334))

(assert (= (and d!1085091 (not c!639431)) b!3700335))

(assert (=> b!3700335 m!4211333))

(assert (=> b!3700169 d!1085091))

(declare-fun d!1085093 () Bool)

(assert (=> d!1085093 (= (get!13080 lt!1294856) (v!38466 lt!1294856))))

(assert (=> b!3700173 d!1085093))

(declare-fun d!1085095 () Bool)

(assert (=> d!1085095 (= (isEmpty!23429 (t!301968 rules!3598)) (is-Nil!39311 (t!301968 rules!3598)))))

(assert (=> b!3700163 d!1085095))

(declare-fun d!1085097 () Bool)

(assert (=> d!1085097 (= (isDefined!6696 lt!1294858) (not (isEmpty!23431 lt!1294858)))))

(declare-fun bs!574418 () Bool)

(assert (= bs!574418 d!1085097))

(declare-fun m!4211517 () Bool)

(assert (=> bs!574418 m!4211517))

(assert (=> b!3700174 d!1085097))

(declare-fun b!3700363 () Bool)

(declare-fun res!1505121 () Bool)

(declare-fun e!2291609 () Bool)

(assert (=> b!3700363 (=> (not res!1505121) (not e!2291609))))

(declare-fun lt!1294927 () Option!8507)

(assert (=> b!3700363 (= res!1505121 (= (rule!8837 (_1!22721 (get!13080 lt!1294927))) (h!44731 rules!3598)))))

(declare-fun b!3700364 () Bool)

(declare-fun e!2291608 () Bool)

(assert (=> b!3700364 (= e!2291608 e!2291609)))

(declare-fun res!1505120 () Bool)

(assert (=> b!3700364 (=> (not res!1505120) (not e!2291609))))

(assert (=> b!3700364 (= res!1505120 (matchR!5263 (regex!5971 (h!44731 rules!3598)) (list!14682 (charsOf!3960 (_1!22721 (get!13080 lt!1294927))))))))

(declare-fun b!3700365 () Bool)

(declare-fun e!2291607 () Bool)

(declare-datatypes ((tuple2!39178 0))(
  ( (tuple2!39179 (_1!22723 List!39434) (_2!22723 List!39434)) )
))
(declare-fun findLongestMatchInner!1123 (Regex!10730 List!39434 Int List!39434 List!39434 Int) tuple2!39178)

(assert (=> b!3700365 (= e!2291607 (matchR!5263 (regex!5971 (h!44731 rules!3598)) (_1!22723 (findLongestMatchInner!1123 (regex!5971 (h!44731 rules!3598)) Nil!39310 (size!29981 Nil!39310) input!3172 input!3172 (size!29981 input!3172)))))))

(declare-fun b!3700366 () Bool)

(assert (=> b!3700366 (= e!2291609 (= (size!29979 (_1!22721 (get!13080 lt!1294927))) (size!29981 (originalCharacters!6679 (_1!22721 (get!13080 lt!1294927))))))))

(declare-fun d!1085099 () Bool)

(assert (=> d!1085099 e!2291608))

(declare-fun res!1505117 () Bool)

(assert (=> d!1085099 (=> res!1505117 e!2291608)))

(assert (=> d!1085099 (= res!1505117 (isEmpty!23431 lt!1294927))))

(declare-fun e!2291606 () Option!8507)

(assert (=> d!1085099 (= lt!1294927 e!2291606)))

(declare-fun c!639435 () Bool)

(declare-fun lt!1294924 () tuple2!39178)

(assert (=> d!1085099 (= c!639435 (isEmpty!23432 (_1!22723 lt!1294924)))))

(declare-fun findLongestMatch!1038 (Regex!10730 List!39434) tuple2!39178)

(assert (=> d!1085099 (= lt!1294924 (findLongestMatch!1038 (regex!5971 (h!44731 rules!3598)) input!3172))))

(declare-fun ruleValid!2161 (LexerInterface!5560 Rule!11742) Bool)

(assert (=> d!1085099 (ruleValid!2161 thiss!25322 (h!44731 rules!3598))))

(assert (=> d!1085099 (= (maxPrefixOneRule!2192 thiss!25322 (h!44731 rules!3598) input!3172) lt!1294927)))

(declare-fun b!3700367 () Bool)

(assert (=> b!3700367 (= e!2291606 None!8506)))

(declare-fun b!3700368 () Bool)

(declare-fun res!1505118 () Bool)

(assert (=> b!3700368 (=> (not res!1505118) (not e!2291609))))

(assert (=> b!3700368 (= res!1505118 (= (++!9763 (list!14682 (charsOf!3960 (_1!22721 (get!13080 lt!1294927)))) (_2!22721 (get!13080 lt!1294927))) input!3172))))

(declare-fun b!3700369 () Bool)

(declare-fun size!29982 (BalanceConc!23750) Int)

(assert (=> b!3700369 (= e!2291606 (Some!8506 (tuple2!39175 (Token!11297 (apply!9403 (transformation!5971 (h!44731 rules!3598)) (seqFromList!4482 (_1!22723 lt!1294924))) (h!44731 rules!3598) (size!29982 (seqFromList!4482 (_1!22723 lt!1294924))) (_1!22723 lt!1294924)) (_2!22723 lt!1294924))))))

(declare-fun lt!1294926 () Unit!57279)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1096 (Regex!10730 List!39434) Unit!57279)

(assert (=> b!3700369 (= lt!1294926 (longestMatchIsAcceptedByMatchOrIsEmpty!1096 (regex!5971 (h!44731 rules!3598)) input!3172))))

(declare-fun res!1505115 () Bool)

(assert (=> b!3700369 (= res!1505115 (isEmpty!23432 (_1!22723 (findLongestMatchInner!1123 (regex!5971 (h!44731 rules!3598)) Nil!39310 (size!29981 Nil!39310) input!3172 input!3172 (size!29981 input!3172)))))))

(assert (=> b!3700369 (=> res!1505115 e!2291607)))

(assert (=> b!3700369 e!2291607))

(declare-fun lt!1294923 () Unit!57279)

(assert (=> b!3700369 (= lt!1294923 lt!1294926)))

(declare-fun lt!1294925 () Unit!57279)

(declare-fun lemmaSemiInverse!1629 (TokenValueInjection!11830 BalanceConc!23750) Unit!57279)

(assert (=> b!3700369 (= lt!1294925 (lemmaSemiInverse!1629 (transformation!5971 (h!44731 rules!3598)) (seqFromList!4482 (_1!22723 lt!1294924))))))

(declare-fun b!3700370 () Bool)

(declare-fun res!1505119 () Bool)

(assert (=> b!3700370 (=> (not res!1505119) (not e!2291609))))

(assert (=> b!3700370 (= res!1505119 (< (size!29981 (_2!22721 (get!13080 lt!1294927))) (size!29981 input!3172)))))

(declare-fun b!3700371 () Bool)

(declare-fun res!1505116 () Bool)

(assert (=> b!3700371 (=> (not res!1505116) (not e!2291609))))

(assert (=> b!3700371 (= res!1505116 (= (value!190629 (_1!22721 (get!13080 lt!1294927))) (apply!9403 (transformation!5971 (rule!8837 (_1!22721 (get!13080 lt!1294927)))) (seqFromList!4482 (originalCharacters!6679 (_1!22721 (get!13080 lt!1294927)))))))))

(assert (= (and d!1085099 c!639435) b!3700367))

(assert (= (and d!1085099 (not c!639435)) b!3700369))

(assert (= (and b!3700369 (not res!1505115)) b!3700365))

(assert (= (and d!1085099 (not res!1505117)) b!3700364))

(assert (= (and b!3700364 res!1505120) b!3700368))

(assert (= (and b!3700368 res!1505118) b!3700370))

(assert (= (and b!3700370 res!1505119) b!3700363))

(assert (= (and b!3700363 res!1505121) b!3700371))

(assert (= (and b!3700371 res!1505116) b!3700366))

(declare-fun m!4211551 () Bool)

(assert (=> b!3700369 m!4211551))

(declare-fun m!4211553 () Bool)

(assert (=> b!3700369 m!4211553))

(declare-fun m!4211555 () Bool)

(assert (=> b!3700369 m!4211555))

(assert (=> b!3700369 m!4211439))

(declare-fun m!4211557 () Bool)

(assert (=> b!3700369 m!4211557))

(assert (=> b!3700369 m!4211439))

(declare-fun m!4211559 () Bool)

(assert (=> b!3700369 m!4211559))

(assert (=> b!3700369 m!4211551))

(declare-fun m!4211561 () Bool)

(assert (=> b!3700369 m!4211561))

(declare-fun m!4211563 () Bool)

(assert (=> b!3700369 m!4211563))

(assert (=> b!3700369 m!4211557))

(assert (=> b!3700369 m!4211551))

(declare-fun m!4211565 () Bool)

(assert (=> b!3700369 m!4211565))

(assert (=> b!3700369 m!4211551))

(declare-fun m!4211567 () Bool)

(assert (=> b!3700368 m!4211567))

(declare-fun m!4211569 () Bool)

(assert (=> b!3700368 m!4211569))

(assert (=> b!3700368 m!4211569))

(declare-fun m!4211571 () Bool)

(assert (=> b!3700368 m!4211571))

(assert (=> b!3700368 m!4211571))

(declare-fun m!4211573 () Bool)

(assert (=> b!3700368 m!4211573))

(assert (=> b!3700364 m!4211567))

(assert (=> b!3700364 m!4211569))

(assert (=> b!3700364 m!4211569))

(assert (=> b!3700364 m!4211571))

(assert (=> b!3700364 m!4211571))

(declare-fun m!4211575 () Bool)

(assert (=> b!3700364 m!4211575))

(assert (=> b!3700371 m!4211567))

(declare-fun m!4211577 () Bool)

(assert (=> b!3700371 m!4211577))

(assert (=> b!3700371 m!4211577))

(declare-fun m!4211579 () Bool)

(assert (=> b!3700371 m!4211579))

(assert (=> b!3700370 m!4211567))

(declare-fun m!4211581 () Bool)

(assert (=> b!3700370 m!4211581))

(assert (=> b!3700370 m!4211439))

(assert (=> b!3700366 m!4211567))

(declare-fun m!4211583 () Bool)

(assert (=> b!3700366 m!4211583))

(declare-fun m!4211585 () Bool)

(assert (=> d!1085099 m!4211585))

(declare-fun m!4211587 () Bool)

(assert (=> d!1085099 m!4211587))

(declare-fun m!4211589 () Bool)

(assert (=> d!1085099 m!4211589))

(declare-fun m!4211591 () Bool)

(assert (=> d!1085099 m!4211591))

(assert (=> b!3700363 m!4211567))

(assert (=> b!3700365 m!4211557))

(assert (=> b!3700365 m!4211439))

(assert (=> b!3700365 m!4211557))

(assert (=> b!3700365 m!4211439))

(assert (=> b!3700365 m!4211559))

(declare-fun m!4211593 () Bool)

(assert (=> b!3700365 m!4211593))

(assert (=> b!3700174 d!1085099))

(declare-fun d!1085105 () Bool)

(assert (=> d!1085105 (= (inv!52830 (tag!6803 (h!44731 rules!3598))) (= (mod (str.len (value!190628 (tag!6803 (h!44731 rules!3598)))) 2) 0))))

(assert (=> b!3700172 d!1085105))

(declare-fun d!1085107 () Bool)

(declare-fun res!1505122 () Bool)

(declare-fun e!2291610 () Bool)

(assert (=> d!1085107 (=> (not res!1505122) (not e!2291610))))

(assert (=> d!1085107 (= res!1505122 (semiInverseModEq!2551 (toChars!8166 (transformation!5971 (h!44731 rules!3598))) (toValue!8307 (transformation!5971 (h!44731 rules!3598)))))))

(assert (=> d!1085107 (= (inv!52833 (transformation!5971 (h!44731 rules!3598))) e!2291610)))

(declare-fun b!3700372 () Bool)

(assert (=> b!3700372 (= e!2291610 (equivClasses!2450 (toChars!8166 (transformation!5971 (h!44731 rules!3598))) (toValue!8307 (transformation!5971 (h!44731 rules!3598)))))))

(assert (= (and d!1085107 res!1505122) b!3700372))

(declare-fun m!4211595 () Bool)

(assert (=> d!1085107 m!4211595))

(declare-fun m!4211597 () Bool)

(assert (=> b!3700372 m!4211597))

(assert (=> b!3700172 d!1085107))

(declare-fun b!3700383 () Bool)

(declare-fun e!2291613 () Bool)

(assert (=> b!3700383 (= e!2291613 tp_is_empty!18535)))

(declare-fun b!3700384 () Bool)

(declare-fun tp!1124809 () Bool)

(declare-fun tp!1124811 () Bool)

(assert (=> b!3700384 (= e!2291613 (and tp!1124809 tp!1124811))))

(declare-fun b!3700386 () Bool)

(declare-fun tp!1124808 () Bool)

(declare-fun tp!1124812 () Bool)

(assert (=> b!3700386 (= e!2291613 (and tp!1124808 tp!1124812))))

(declare-fun b!3700385 () Bool)

(declare-fun tp!1124810 () Bool)

(assert (=> b!3700385 (= e!2291613 tp!1124810)))

(assert (=> b!3700180 (= tp!1124761 e!2291613)))

(assert (= (and b!3700180 (is-ElementMatch!10730 (regex!5971 (rule!8837 token!544)))) b!3700383))

(assert (= (and b!3700180 (is-Concat!16932 (regex!5971 (rule!8837 token!544)))) b!3700384))

(assert (= (and b!3700180 (is-Star!10730 (regex!5971 (rule!8837 token!544)))) b!3700385))

(assert (= (and b!3700180 (is-Union!10730 (regex!5971 (rule!8837 token!544)))) b!3700386))

(declare-fun b!3700391 () Bool)

(declare-fun e!2291616 () Bool)

(declare-fun tp!1124815 () Bool)

(assert (=> b!3700391 (= e!2291616 (and tp_is_empty!18535 tp!1124815))))

(assert (=> b!3700176 (= tp!1124764 e!2291616)))

(assert (= (and b!3700176 (is-Cons!39310 (t!301967 input!3172))) b!3700391))

(declare-fun b!3700402 () Bool)

(declare-fun b_free!98585 () Bool)

(declare-fun b_next!99289 () Bool)

(assert (=> b!3700402 (= b_free!98585 (not b_next!99289))))

(declare-fun tp!1124826 () Bool)

(declare-fun b_and!276691 () Bool)

(assert (=> b!3700402 (= tp!1124826 b_and!276691)))

(declare-fun b_free!98587 () Bool)

(declare-fun b_next!99291 () Bool)

(assert (=> b!3700402 (= b_free!98587 (not b_next!99291))))

(declare-fun t!301977 () Bool)

(declare-fun tb!214253 () Bool)

(assert (=> (and b!3700402 (= (toChars!8166 (transformation!5971 (h!44731 (t!301968 rules!3598)))) (toChars!8166 (transformation!5971 (rule!8837 token!544)))) t!301977) tb!214253))

(declare-fun result!261038 () Bool)

(assert (= result!261038 result!261026))

(assert (=> b!3700272 t!301977))

(declare-fun b_and!276693 () Bool)

(declare-fun tp!1124827 () Bool)

(assert (=> b!3700402 (= tp!1124827 (and (=> t!301977 result!261038) b_and!276693))))

(declare-fun e!2291625 () Bool)

(assert (=> b!3700402 (= e!2291625 (and tp!1124826 tp!1124827))))

(declare-fun b!3700401 () Bool)

(declare-fun e!2291628 () Bool)

(declare-fun tp!1124824 () Bool)

(assert (=> b!3700401 (= e!2291628 (and tp!1124824 (inv!52830 (tag!6803 (h!44731 (t!301968 rules!3598)))) (inv!52833 (transformation!5971 (h!44731 (t!301968 rules!3598)))) e!2291625))))

(declare-fun b!3700400 () Bool)

(declare-fun e!2291627 () Bool)

(declare-fun tp!1124825 () Bool)

(assert (=> b!3700400 (= e!2291627 (and e!2291628 tp!1124825))))

(assert (=> b!3700170 (= tp!1124765 e!2291627)))

(assert (= b!3700401 b!3700402))

(assert (= b!3700400 b!3700401))

(assert (= (and b!3700170 (is-Cons!39311 (t!301968 rules!3598))) b!3700400))

(declare-fun m!4211599 () Bool)

(assert (=> b!3700401 m!4211599))

(declare-fun m!4211601 () Bool)

(assert (=> b!3700401 m!4211601))

(declare-fun b!3700403 () Bool)

(declare-fun e!2291629 () Bool)

(assert (=> b!3700403 (= e!2291629 tp_is_empty!18535)))

(declare-fun b!3700404 () Bool)

(declare-fun tp!1124829 () Bool)

(declare-fun tp!1124831 () Bool)

(assert (=> b!3700404 (= e!2291629 (and tp!1124829 tp!1124831))))

(declare-fun b!3700406 () Bool)

(declare-fun tp!1124828 () Bool)

(declare-fun tp!1124832 () Bool)

(assert (=> b!3700406 (= e!2291629 (and tp!1124828 tp!1124832))))

(declare-fun b!3700405 () Bool)

(declare-fun tp!1124830 () Bool)

(assert (=> b!3700405 (= e!2291629 tp!1124830)))

(assert (=> b!3700172 (= tp!1124759 e!2291629)))

(assert (= (and b!3700172 (is-ElementMatch!10730 (regex!5971 (h!44731 rules!3598)))) b!3700403))

(assert (= (and b!3700172 (is-Concat!16932 (regex!5971 (h!44731 rules!3598)))) b!3700404))

(assert (= (and b!3700172 (is-Star!10730 (regex!5971 (h!44731 rules!3598)))) b!3700405))

(assert (= (and b!3700172 (is-Union!10730 (regex!5971 (h!44731 rules!3598)))) b!3700406))

(declare-fun b!3700407 () Bool)

(declare-fun e!2291630 () Bool)

(declare-fun tp!1124833 () Bool)

(assert (=> b!3700407 (= e!2291630 (and tp_is_empty!18535 tp!1124833))))

(assert (=> b!3700167 (= tp!1124763 e!2291630)))

(assert (= (and b!3700167 (is-Cons!39310 (originalCharacters!6679 token!544))) b!3700407))

(declare-fun b_lambda!109757 () Bool)

(assert (= b_lambda!109755 (or (and b!3700175 b_free!98571 (= (toChars!8166 (transformation!5971 (h!44731 rules!3598))) (toChars!8166 (transformation!5971 (rule!8837 token!544))))) (and b!3700177 b_free!98575) (and b!3700402 b_free!98587 (= (toChars!8166 (transformation!5971 (h!44731 (t!301968 rules!3598)))) (toChars!8166 (transformation!5971 (rule!8837 token!544))))) b_lambda!109757)))

(push 1)

(assert (not b!3700265))

(assert (not tb!214249))

(assert (not b!3700261))

(assert (not b!3700283))

(assert (not d!1085081))

(assert (not b!3700333))

(assert (not b!3700404))

(assert (not b!3700371))

(assert (not b!3700406))

(assert b_and!276691)

(assert (not b!3700370))

(assert (not bm!267357))

(assert (not b!3700309))

(assert (not b_next!99279))

(assert (not d!1085067))

(assert (not b!3700273))

(assert (not b_next!99291))

(assert (not b!3700384))

(assert (not b!3700327))

(assert (not d!1085107))

(assert b_and!276675)

(assert (not d!1085087))

(assert b_and!276693)

(assert (not b!3700391))

(assert (not d!1085051))

(assert (not d!1085099))

(assert (not d!1085077))

(assert (not b!3700287))

(assert tp_is_empty!18535)

(assert (not b!3700260))

(assert (not b!3700262))

(assert (not b_next!99273))

(assert (not bm!267356))

(assert (not b!3700312))

(assert (not b!3700372))

(assert (not b!3700290))

(assert (not b!3700282))

(assert (not b!3700264))

(assert (not b!3700401))

(assert (not b!3700335))

(assert (not b_lambda!109757))

(assert (not b!3700272))

(assert (not b!3700366))

(assert (not d!1085079))

(assert (not d!1085097))

(assert (not b!3700310))

(assert (not b!3700363))

(assert b_and!276687)

(assert (not b_next!99277))

(assert (not d!1085049))

(assert (not b!3700385))

(assert (not b_next!99275))

(assert (not b_next!99289))

(assert (not b!3700407))

(assert b_and!276671)

(assert (not b!3700284))

(assert (not b!3700278))

(assert (not b!3700267))

(assert (not b!3700400))

(assert (not b!3700365))

(assert (not b!3700281))

(assert (not b!3700386))

(assert (not b!3700289))

(assert (not b!3700285))

(assert (not d!1085075))

(assert (not b!3700405))

(assert (not b!3700288))

(assert (not b!3700259))

(assert (not b!3700369))

(assert (not d!1085069))

(assert (not b!3700364))

(assert (not b!3700291))

(assert (not b!3700368))

(assert b_and!276689)

(assert (not b!3700266))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99279))

(assert b_and!276693)

(assert (not b_next!99273))

(assert b_and!276671)

(assert b_and!276691)

(assert b_and!276689)

(assert (not b_next!99291))

(assert b_and!276675)

(assert b_and!276687)

(assert (not b_next!99277))

(assert (not b_next!99275))

(assert (not b_next!99289))

(check-sat)

(pop 1)

