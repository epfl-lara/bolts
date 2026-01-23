; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!405820 () Bool)

(assert start!405820)

(declare-fun b!4240462 () Bool)

(declare-fun b_free!125515 () Bool)

(declare-fun b_next!126219 () Bool)

(assert (=> b!4240462 (= b_free!125515 (not b_next!126219))))

(declare-fun tp!1299605 () Bool)

(declare-fun b_and!335429 () Bool)

(assert (=> b!4240462 (= tp!1299605 b_and!335429)))

(declare-fun b_free!125517 () Bool)

(declare-fun b_next!126221 () Bool)

(assert (=> b!4240462 (= b_free!125517 (not b_next!126221))))

(declare-fun tp!1299606 () Bool)

(declare-fun b_and!335431 () Bool)

(assert (=> b!4240462 (= tp!1299606 b_and!335431)))

(declare-fun b!4240458 () Bool)

(declare-fun b_free!125519 () Bool)

(declare-fun b_next!126223 () Bool)

(assert (=> b!4240458 (= b_free!125519 (not b_next!126223))))

(declare-fun tp!1299604 () Bool)

(declare-fun b_and!335433 () Bool)

(assert (=> b!4240458 (= tp!1299604 b_and!335433)))

(declare-fun b_free!125521 () Bool)

(declare-fun b_next!126225 () Bool)

(assert (=> b!4240458 (= b_free!125521 (not b_next!126225))))

(declare-fun tp!1299598 () Bool)

(declare-fun b_and!335435 () Bool)

(assert (=> b!4240458 (= tp!1299598 b_and!335435)))

(declare-fun b!4240459 () Bool)

(declare-fun b_free!125523 () Bool)

(declare-fun b_next!126227 () Bool)

(assert (=> b!4240459 (= b_free!125523 (not b_next!126227))))

(declare-fun tp!1299607 () Bool)

(declare-fun b_and!335437 () Bool)

(assert (=> b!4240459 (= tp!1299607 b_and!335437)))

(declare-fun b_free!125525 () Bool)

(declare-fun b_next!126229 () Bool)

(assert (=> b!4240459 (= b_free!125525 (not b_next!126229))))

(declare-fun tp!1299610 () Bool)

(declare-fun b_and!335439 () Bool)

(assert (=> b!4240459 (= tp!1299610 b_and!335439)))

(declare-fun b!4240457 () Bool)

(declare-fun res!1743699 () Bool)

(declare-fun e!2633236 () Bool)

(assert (=> b!4240457 (=> (not res!1743699) (not e!2633236))))

(declare-datatypes ((LexerInterface!7520 0))(
  ( (LexerInterfaceExt!7517 (__x!28533 Int)) (Lexer!7518) )
))
(declare-fun thiss!21540 () LexerInterface!7520)

(declare-datatypes ((List!47002 0))(
  ( (Nil!46878) (Cons!46878 (h!52298 (_ BitVec 16)) (t!350777 List!47002)) )
))
(declare-datatypes ((TokenValue!8155 0))(
  ( (FloatLiteralValue!16310 (text!57530 List!47002)) (TokenValueExt!8154 (__x!28534 Int)) (Broken!40775 (value!246374 List!47002)) (Object!8278) (End!8155) (Def!8155) (Underscore!8155) (Match!8155) (Else!8155) (Error!8155) (Case!8155) (If!8155) (Extends!8155) (Abstract!8155) (Class!8155) (Val!8155) (DelimiterValue!16310 (del!8215 List!47002)) (KeywordValue!8161 (value!246375 List!47002)) (CommentValue!16310 (value!246376 List!47002)) (WhitespaceValue!16310 (value!246377 List!47002)) (IndentationValue!8155 (value!246378 List!47002)) (String!54706) (Int32!8155) (Broken!40776 (value!246379 List!47002)) (Boolean!8156) (Unit!65965) (OperatorValue!8158 (op!8215 List!47002)) (IdentifierValue!16310 (value!246380 List!47002)) (IdentifierValue!16311 (value!246381 List!47002)) (WhitespaceValue!16311 (value!246382 List!47002)) (True!16310) (False!16310) (Broken!40777 (value!246383 List!47002)) (Broken!40778 (value!246384 List!47002)) (True!16311) (RightBrace!8155) (RightBracket!8155) (Colon!8155) (Null!8155) (Comma!8155) (LeftBracket!8155) (False!16311) (LeftBrace!8155) (ImaginaryLiteralValue!8155 (text!57531 List!47002)) (StringLiteralValue!24465 (value!246385 List!47002)) (EOFValue!8155 (value!246386 List!47002)) (IdentValue!8155 (value!246387 List!47002)) (DelimiterValue!16311 (value!246388 List!47002)) (DedentValue!8155 (value!246389 List!47002)) (NewLineValue!8155 (value!246390 List!47002)) (IntegerValue!24465 (value!246391 (_ BitVec 32)) (text!57532 List!47002)) (IntegerValue!24466 (value!246392 Int) (text!57533 List!47002)) (Times!8155) (Or!8155) (Equal!8155) (Minus!8155) (Broken!40779 (value!246393 List!47002)) (And!8155) (Div!8155) (LessEqual!8155) (Mod!8155) (Concat!20985) (Not!8155) (Plus!8155) (SpaceValue!8155 (value!246394 List!47002)) (IntegerValue!24467 (value!246395 Int) (text!57534 List!47002)) (StringLiteralValue!24466 (text!57535 List!47002)) (FloatLiteralValue!16311 (text!57536 List!47002)) (BytesLiteralValue!8155 (value!246396 List!47002)) (CommentValue!16311 (value!246397 List!47002)) (StringLiteralValue!24467 (value!246398 List!47002)) (ErrorTokenValue!8155 (msg!8216 List!47002)) )
))
(declare-datatypes ((C!25858 0))(
  ( (C!25859 (val!15119 Int)) )
))
(declare-datatypes ((Regex!12830 0))(
  ( (ElementMatch!12830 (c!720513 C!25858)) (Concat!20986 (regOne!26172 Regex!12830) (regTwo!26172 Regex!12830)) (EmptyExpr!12830) (Star!12830 (reg!13159 Regex!12830)) (EmptyLang!12830) (Union!12830 (regOne!26173 Regex!12830) (regTwo!26173 Regex!12830)) )
))
(declare-datatypes ((String!54707 0))(
  ( (String!54708 (value!246399 String)) )
))
(declare-datatypes ((List!47003 0))(
  ( (Nil!46879) (Cons!46879 (h!52299 C!25858) (t!350778 List!47003)) )
))
(declare-datatypes ((IArray!28277 0))(
  ( (IArray!28278 (innerList!14196 List!47003)) )
))
(declare-datatypes ((Conc!14136 0))(
  ( (Node!14136 (left!34845 Conc!14136) (right!35175 Conc!14136) (csize!28502 Int) (cheight!14347 Int)) (Leaf!21858 (xs!17442 IArray!28277) (csize!28503 Int)) (Empty!14136) )
))
(declare-datatypes ((BalanceConc!27866 0))(
  ( (BalanceConc!27867 (c!720514 Conc!14136)) )
))
(declare-datatypes ((TokenValueInjection!15738 0))(
  ( (TokenValueInjection!15739 (toValue!10681 Int) (toChars!10540 Int)) )
))
(declare-datatypes ((Rule!15650 0))(
  ( (Rule!15651 (regex!7925 Regex!12830) (tag!8789 String!54707) (isSeparator!7925 Bool) (transformation!7925 TokenValueInjection!15738)) )
))
(declare-datatypes ((List!47004 0))(
  ( (Nil!46880) (Cons!46880 (h!52300 Rule!15650) (t!350779 List!47004)) )
))
(declare-fun rules!2932 () List!47004)

(declare-fun suffix!1262 () List!47003)

(declare-datatypes ((Token!14476 0))(
  ( (Token!14477 (value!246400 TokenValue!8155) (rule!11053 Rule!15650) (size!34342 Int) (originalCharacters!8269 List!47003)) )
))
(declare-datatypes ((List!47005 0))(
  ( (Nil!46881) (Cons!46881 (h!52301 Token!14476) (t!350780 List!47005)) )
))
(declare-fun tokens!581 () List!47005)

(declare-fun longerInput!51 () List!47003)

(declare-datatypes ((tuple2!44458 0))(
  ( (tuple2!44459 (_1!25363 List!47005) (_2!25363 List!47003)) )
))
(declare-fun lexList!2026 (LexerInterface!7520 List!47004 List!47003) tuple2!44458)

(assert (=> b!4240457 (= res!1743699 (= (lexList!2026 thiss!21540 rules!2932 longerInput!51) (tuple2!44459 tokens!581 suffix!1262)))))

(declare-fun e!2633244 () Bool)

(assert (=> b!4240458 (= e!2633244 (and tp!1299604 tp!1299598))))

(declare-fun e!2633249 () Bool)

(assert (=> b!4240459 (= e!2633249 (and tp!1299607 tp!1299610))))

(declare-fun b!4240460 () Bool)

(declare-fun res!1743703 () Bool)

(assert (=> b!4240460 (=> (not res!1743703) (not e!2633236))))

(declare-fun shorterInput!51 () List!47003)

(declare-fun size!34343 (List!47003) Int)

(assert (=> b!4240460 (= res!1743703 (> (size!34343 longerInput!51) (size!34343 shorterInput!51)))))

(declare-fun b!4240461 () Bool)

(declare-fun e!2633242 () Bool)

(declare-fun e!2633238 () Bool)

(declare-fun tp!1299601 () Bool)

(declare-fun inv!21 (TokenValue!8155) Bool)

(assert (=> b!4240461 (= e!2633238 (and (inv!21 (value!246400 (h!52301 tokens!581))) e!2633242 tp!1299601))))

(declare-fun e!2633232 () Bool)

(assert (=> b!4240462 (= e!2633232 (and tp!1299605 tp!1299606))))

(declare-fun b!4240463 () Bool)

(declare-fun res!1743704 () Bool)

(assert (=> b!4240463 (=> (not res!1743704) (not e!2633236))))

(declare-fun isEmpty!27712 (List!47004) Bool)

(assert (=> b!4240463 (= res!1743704 (not (isEmpty!27712 rules!2932)))))

(declare-fun tp!1299600 () Bool)

(declare-fun e!2633247 () Bool)

(declare-fun e!2633245 () Bool)

(declare-fun addTokens!17 () List!47005)

(declare-fun b!4240464 () Bool)

(declare-fun inv!61628 (Token!14476) Bool)

(assert (=> b!4240464 (= e!2633245 (and (inv!61628 (h!52301 addTokens!17)) e!2633247 tp!1299600))))

(declare-fun b!4240465 () Bool)

(declare-fun e!2633234 () Bool)

(declare-fun tp_is_empty!22651 () Bool)

(declare-fun tp!1299608 () Bool)

(assert (=> b!4240465 (= e!2633234 (and tp_is_empty!22651 tp!1299608))))

(declare-fun b!4240467 () Bool)

(declare-fun res!1743700 () Bool)

(assert (=> b!4240467 (=> (not res!1743700) (not e!2633236))))

(declare-fun isEmpty!27713 (List!47003) Bool)

(assert (=> b!4240467 (= res!1743700 (not (isEmpty!27713 longerInput!51)))))

(declare-fun e!2633237 () Bool)

(declare-fun b!4240468 () Bool)

(declare-fun tp!1299603 () Bool)

(declare-fun inv!61625 (String!54707) Bool)

(declare-fun inv!61629 (TokenValueInjection!15738) Bool)

(assert (=> b!4240468 (= e!2633237 (and tp!1299603 (inv!61625 (tag!8789 (rule!11053 (h!52301 addTokens!17)))) (inv!61629 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))) e!2633249))))

(declare-fun b!4240469 () Bool)

(declare-fun tp!1299609 () Bool)

(assert (=> b!4240469 (= e!2633242 (and tp!1299609 (inv!61625 (tag!8789 (rule!11053 (h!52301 tokens!581)))) (inv!61629 (transformation!7925 (rule!11053 (h!52301 tokens!581)))) e!2633232))))

(declare-fun tp!1299611 () Bool)

(declare-fun e!2633241 () Bool)

(declare-fun b!4240470 () Bool)

(assert (=> b!4240470 (= e!2633241 (and (inv!61628 (h!52301 tokens!581)) e!2633238 tp!1299611))))

(declare-fun b!4240471 () Bool)

(declare-fun size!34344 (List!47005) Int)

(assert (=> b!4240471 (= e!2633236 (< (size!34344 addTokens!17) 0))))

(declare-fun b!4240472 () Bool)

(declare-fun e!2633243 () Bool)

(declare-fun e!2633239 () Bool)

(declare-fun tp!1299612 () Bool)

(assert (=> b!4240472 (= e!2633243 (and e!2633239 tp!1299612))))

(declare-fun b!4240473 () Bool)

(declare-fun tp!1299599 () Bool)

(assert (=> b!4240473 (= e!2633247 (and (inv!21 (value!246400 (h!52301 addTokens!17))) e!2633237 tp!1299599))))

(declare-fun b!4240474 () Bool)

(declare-fun e!2633240 () Bool)

(declare-fun tp!1299602 () Bool)

(assert (=> b!4240474 (= e!2633240 (and tp_is_empty!22651 tp!1299602))))

(declare-fun b!4240475 () Bool)

(declare-fun res!1743702 () Bool)

(assert (=> b!4240475 (=> (not res!1743702) (not e!2633236))))

(declare-fun rulesInvariant!6631 (LexerInterface!7520 List!47004) Bool)

(assert (=> b!4240475 (= res!1743702 (rulesInvariant!6631 thiss!21540 rules!2932))))

(declare-fun b!4240476 () Bool)

(declare-fun e!2633250 () Bool)

(declare-fun tp!1299597 () Bool)

(assert (=> b!4240476 (= e!2633250 (and tp_is_empty!22651 tp!1299597))))

(declare-fun res!1743701 () Bool)

(assert (=> start!405820 (=> (not res!1743701) (not e!2633236))))

(assert (=> start!405820 (= res!1743701 (is-Lexer!7518 thiss!21540))))

(assert (=> start!405820 e!2633236))

(assert (=> start!405820 true))

(assert (=> start!405820 e!2633243))

(assert (=> start!405820 e!2633245))

(assert (=> start!405820 e!2633250))

(assert (=> start!405820 e!2633234))

(assert (=> start!405820 e!2633241))

(assert (=> start!405820 e!2633240))

(declare-fun b!4240466 () Bool)

(declare-fun tp!1299613 () Bool)

(assert (=> b!4240466 (= e!2633239 (and tp!1299613 (inv!61625 (tag!8789 (h!52300 rules!2932))) (inv!61629 (transformation!7925 (h!52300 rules!2932))) e!2633244))))

(assert (= (and start!405820 res!1743701) b!4240463))

(assert (= (and b!4240463 res!1743704) b!4240475))

(assert (= (and b!4240475 res!1743702) b!4240467))

(assert (= (and b!4240467 res!1743700) b!4240460))

(assert (= (and b!4240460 res!1743703) b!4240457))

(assert (= (and b!4240457 res!1743699) b!4240471))

(assert (= b!4240466 b!4240458))

(assert (= b!4240472 b!4240466))

(assert (= (and start!405820 (is-Cons!46880 rules!2932)) b!4240472))

(assert (= b!4240468 b!4240459))

(assert (= b!4240473 b!4240468))

(assert (= b!4240464 b!4240473))

(assert (= (and start!405820 (is-Cons!46881 addTokens!17)) b!4240464))

(assert (= (and start!405820 (is-Cons!46879 shorterInput!51)) b!4240476))

(assert (= (and start!405820 (is-Cons!46879 suffix!1262)) b!4240465))

(assert (= b!4240469 b!4240462))

(assert (= b!4240461 b!4240469))

(assert (= b!4240470 b!4240461))

(assert (= (and start!405820 (is-Cons!46881 tokens!581)) b!4240470))

(assert (= (and start!405820 (is-Cons!46879 longerInput!51)) b!4240474))

(declare-fun m!4826055 () Bool)

(assert (=> b!4240466 m!4826055))

(declare-fun m!4826057 () Bool)

(assert (=> b!4240466 m!4826057))

(declare-fun m!4826059 () Bool)

(assert (=> b!4240461 m!4826059))

(declare-fun m!4826061 () Bool)

(assert (=> b!4240469 m!4826061))

(declare-fun m!4826063 () Bool)

(assert (=> b!4240469 m!4826063))

(declare-fun m!4826065 () Bool)

(assert (=> b!4240464 m!4826065))

(declare-fun m!4826067 () Bool)

(assert (=> b!4240468 m!4826067))

(declare-fun m!4826069 () Bool)

(assert (=> b!4240468 m!4826069))

(declare-fun m!4826071 () Bool)

(assert (=> b!4240471 m!4826071))

(declare-fun m!4826073 () Bool)

(assert (=> b!4240470 m!4826073))

(declare-fun m!4826075 () Bool)

(assert (=> b!4240473 m!4826075))

(declare-fun m!4826077 () Bool)

(assert (=> b!4240457 m!4826077))

(declare-fun m!4826079 () Bool)

(assert (=> b!4240463 m!4826079))

(declare-fun m!4826081 () Bool)

(assert (=> b!4240475 m!4826081))

(declare-fun m!4826083 () Bool)

(assert (=> b!4240460 m!4826083))

(declare-fun m!4826085 () Bool)

(assert (=> b!4240460 m!4826085))

(declare-fun m!4826087 () Bool)

(assert (=> b!4240467 m!4826087))

(push 1)

(assert (not b!4240473))

(assert (not b!4240464))

(assert b_and!335433)

(assert (not b_next!126221))

(assert (not b!4240476))

(assert (not b!4240457))

(assert (not b_next!126223))

(assert (not b_next!126225))

(assert (not b!4240466))

(assert (not b!4240460))

(assert b_and!335429)

(assert (not b!4240475))

(assert (not b!4240471))

(assert (not b!4240469))

(assert (not b!4240461))

(assert (not b!4240465))

(assert tp_is_empty!22651)

(assert (not b_next!126227))

(assert (not b_next!126229))

(assert (not b!4240472))

(assert (not b!4240463))

(assert (not b!4240467))

(assert (not b!4240470))

(assert (not b!4240474))

(assert b_and!335437)

(assert b_and!335439)

(assert b_and!335431)

(assert b_and!335435)

(assert (not b_next!126219))

(assert (not b!4240468))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!126225))

(assert b_and!335429)

(assert b_and!335433)

(assert (not b_next!126221))

(assert (not b_next!126223))

(assert (not b_next!126227))

(assert (not b_next!126229))

(assert b_and!335437)

(assert b_and!335439)

(assert b_and!335431)

(assert b_and!335435)

(assert (not b_next!126219))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1247634 () Bool)

(declare-fun lt!1506555 () Int)

(assert (=> d!1247634 (>= lt!1506555 0)))

(declare-fun e!2633324 () Int)

(assert (=> d!1247634 (= lt!1506555 e!2633324)))

(declare-fun c!720520 () Bool)

(assert (=> d!1247634 (= c!720520 (is-Nil!46881 addTokens!17))))

(assert (=> d!1247634 (= (size!34344 addTokens!17) lt!1506555)))

(declare-fun b!4240558 () Bool)

(assert (=> b!4240558 (= e!2633324 0)))

(declare-fun b!4240559 () Bool)

(assert (=> b!4240559 (= e!2633324 (+ 1 (size!34344 (t!350780 addTokens!17))))))

(assert (= (and d!1247634 c!720520) b!4240558))

(assert (= (and d!1247634 (not c!720520)) b!4240559))

(declare-fun m!4826151 () Bool)

(assert (=> b!4240559 m!4826151))

(assert (=> b!4240471 d!1247634))

(declare-fun d!1247638 () Bool)

(declare-fun lt!1506562 () Int)

(assert (=> d!1247638 (>= lt!1506562 0)))

(declare-fun e!2633331 () Int)

(assert (=> d!1247638 (= lt!1506562 e!2633331)))

(declare-fun c!720527 () Bool)

(assert (=> d!1247638 (= c!720527 (is-Nil!46879 longerInput!51))))

(assert (=> d!1247638 (= (size!34343 longerInput!51) lt!1506562)))

(declare-fun b!4240572 () Bool)

(assert (=> b!4240572 (= e!2633331 0)))

(declare-fun b!4240573 () Bool)

(assert (=> b!4240573 (= e!2633331 (+ 1 (size!34343 (t!350778 longerInput!51))))))

(assert (= (and d!1247638 c!720527) b!4240572))

(assert (= (and d!1247638 (not c!720527)) b!4240573))

(declare-fun m!4826157 () Bool)

(assert (=> b!4240573 m!4826157))

(assert (=> b!4240460 d!1247638))

(declare-fun d!1247644 () Bool)

(declare-fun lt!1506563 () Int)

(assert (=> d!1247644 (>= lt!1506563 0)))

(declare-fun e!2633332 () Int)

(assert (=> d!1247644 (= lt!1506563 e!2633332)))

(declare-fun c!720528 () Bool)

(assert (=> d!1247644 (= c!720528 (is-Nil!46879 shorterInput!51))))

(assert (=> d!1247644 (= (size!34343 shorterInput!51) lt!1506563)))

(declare-fun b!4240574 () Bool)

(assert (=> b!4240574 (= e!2633332 0)))

(declare-fun b!4240575 () Bool)

(assert (=> b!4240575 (= e!2633332 (+ 1 (size!34343 (t!350778 shorterInput!51))))))

(assert (= (and d!1247644 c!720528) b!4240574))

(assert (= (and d!1247644 (not c!720528)) b!4240575))

(declare-fun m!4826159 () Bool)

(assert (=> b!4240575 m!4826159))

(assert (=> b!4240460 d!1247644))

(declare-fun b!4240592 () Bool)

(declare-fun e!2633343 () Bool)

(declare-fun inv!15 (TokenValue!8155) Bool)

(assert (=> b!4240592 (= e!2633343 (inv!15 (value!246400 (h!52301 tokens!581))))))

(declare-fun b!4240593 () Bool)

(declare-fun e!2633344 () Bool)

(declare-fun inv!16 (TokenValue!8155) Bool)

(assert (=> b!4240593 (= e!2633344 (inv!16 (value!246400 (h!52301 tokens!581))))))

(declare-fun b!4240594 () Bool)

(declare-fun e!2633342 () Bool)

(declare-fun inv!17 (TokenValue!8155) Bool)

(assert (=> b!4240594 (= e!2633342 (inv!17 (value!246400 (h!52301 tokens!581))))))

(declare-fun b!4240595 () Bool)

(declare-fun res!1743736 () Bool)

(assert (=> b!4240595 (=> res!1743736 e!2633343)))

(assert (=> b!4240595 (= res!1743736 (not (is-IntegerValue!24467 (value!246400 (h!52301 tokens!581)))))))

(assert (=> b!4240595 (= e!2633342 e!2633343)))

(declare-fun d!1247646 () Bool)

(declare-fun c!720537 () Bool)

(assert (=> d!1247646 (= c!720537 (is-IntegerValue!24465 (value!246400 (h!52301 tokens!581))))))

(assert (=> d!1247646 (= (inv!21 (value!246400 (h!52301 tokens!581))) e!2633344)))

(declare-fun b!4240596 () Bool)

(assert (=> b!4240596 (= e!2633344 e!2633342)))

(declare-fun c!720536 () Bool)

(assert (=> b!4240596 (= c!720536 (is-IntegerValue!24466 (value!246400 (h!52301 tokens!581))))))

(assert (= (and d!1247646 c!720537) b!4240593))

(assert (= (and d!1247646 (not c!720537)) b!4240596))

(assert (= (and b!4240596 c!720536) b!4240594))

(assert (= (and b!4240596 (not c!720536)) b!4240595))

(assert (= (and b!4240595 (not res!1743736)) b!4240592))

(declare-fun m!4826163 () Bool)

(assert (=> b!4240592 m!4826163))

(declare-fun m!4826165 () Bool)

(assert (=> b!4240593 m!4826165))

(declare-fun m!4826167 () Bool)

(assert (=> b!4240594 m!4826167))

(assert (=> b!4240461 d!1247646))

(declare-fun d!1247650 () Bool)

(declare-fun res!1743743 () Bool)

(declare-fun e!2633353 () Bool)

(assert (=> d!1247650 (=> (not res!1743743) (not e!2633353))))

(assert (=> d!1247650 (= res!1743743 (not (isEmpty!27713 (originalCharacters!8269 (h!52301 tokens!581)))))))

(assert (=> d!1247650 (= (inv!61628 (h!52301 tokens!581)) e!2633353)))

(declare-fun b!4240611 () Bool)

(declare-fun res!1743744 () Bool)

(assert (=> b!4240611 (=> (not res!1743744) (not e!2633353))))

(declare-fun list!16906 (BalanceConc!27866) List!47003)

(declare-fun dynLambda!20109 (Int TokenValue!8155) BalanceConc!27866)

(assert (=> b!4240611 (= res!1743744 (= (originalCharacters!8269 (h!52301 tokens!581)) (list!16906 (dynLambda!20109 (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581)))) (value!246400 (h!52301 tokens!581))))))))

(declare-fun b!4240612 () Bool)

(assert (=> b!4240612 (= e!2633353 (= (size!34342 (h!52301 tokens!581)) (size!34343 (originalCharacters!8269 (h!52301 tokens!581)))))))

(assert (= (and d!1247650 res!1743743) b!4240611))

(assert (= (and b!4240611 res!1743744) b!4240612))

(declare-fun b_lambda!124863 () Bool)

(assert (=> (not b_lambda!124863) (not b!4240611)))

(declare-fun t!350798 () Bool)

(declare-fun tb!254975 () Bool)

(assert (=> (and b!4240462 (= (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581)))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581))))) t!350798) tb!254975))

(declare-fun b!4240627 () Bool)

(declare-fun e!2633362 () Bool)

(declare-fun tp!1299671 () Bool)

(declare-fun inv!61632 (Conc!14136) Bool)

(assert (=> b!4240627 (= e!2633362 (and (inv!61632 (c!720514 (dynLambda!20109 (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581)))) (value!246400 (h!52301 tokens!581))))) tp!1299671))))

(declare-fun result!310930 () Bool)

(declare-fun inv!61633 (BalanceConc!27866) Bool)

(assert (=> tb!254975 (= result!310930 (and (inv!61633 (dynLambda!20109 (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581)))) (value!246400 (h!52301 tokens!581)))) e!2633362))))

(assert (= tb!254975 b!4240627))

(declare-fun m!4826181 () Bool)

(assert (=> b!4240627 m!4826181))

(declare-fun m!4826183 () Bool)

(assert (=> tb!254975 m!4826183))

(assert (=> b!4240611 t!350798))

(declare-fun b_and!335465 () Bool)

(assert (= b_and!335431 (and (=> t!350798 result!310930) b_and!335465)))

(declare-fun t!350800 () Bool)

(declare-fun tb!254977 () Bool)

(assert (=> (and b!4240458 (= (toChars!10540 (transformation!7925 (h!52300 rules!2932))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581))))) t!350800) tb!254977))

(declare-fun result!310934 () Bool)

(assert (= result!310934 result!310930))

(assert (=> b!4240611 t!350800))

(declare-fun b_and!335467 () Bool)

(assert (= b_and!335435 (and (=> t!350800 result!310934) b_and!335467)))

(declare-fun tb!254979 () Bool)

(declare-fun t!350802 () Bool)

(assert (=> (and b!4240459 (= (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581))))) t!350802) tb!254979))

(declare-fun result!310936 () Bool)

(assert (= result!310936 result!310930))

(assert (=> b!4240611 t!350802))

(declare-fun b_and!335469 () Bool)

(assert (= b_and!335439 (and (=> t!350802 result!310936) b_and!335469)))

(declare-fun m!4826185 () Bool)

(assert (=> d!1247650 m!4826185))

(declare-fun m!4826187 () Bool)

(assert (=> b!4240611 m!4826187))

(assert (=> b!4240611 m!4826187))

(declare-fun m!4826189 () Bool)

(assert (=> b!4240611 m!4826189))

(declare-fun m!4826191 () Bool)

(assert (=> b!4240612 m!4826191))

(assert (=> b!4240470 d!1247650))

(declare-fun d!1247656 () Bool)

(assert (=> d!1247656 (= (inv!61625 (tag!8789 (rule!11053 (h!52301 addTokens!17)))) (= (mod (str.len (value!246399 (tag!8789 (rule!11053 (h!52301 addTokens!17))))) 2) 0))))

(assert (=> b!4240468 d!1247656))

(declare-fun d!1247658 () Bool)

(declare-fun res!1743749 () Bool)

(declare-fun e!2633365 () Bool)

(assert (=> d!1247658 (=> (not res!1743749) (not e!2633365))))

(declare-fun semiInverseModEq!3448 (Int Int) Bool)

(assert (=> d!1247658 (= res!1743749 (semiInverseModEq!3448 (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))) (toValue!10681 (transformation!7925 (rule!11053 (h!52301 addTokens!17))))))))

(assert (=> d!1247658 (= (inv!61629 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))) e!2633365)))

(declare-fun b!4240630 () Bool)

(declare-fun equivClasses!3347 (Int Int) Bool)

(assert (=> b!4240630 (= e!2633365 (equivClasses!3347 (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))) (toValue!10681 (transformation!7925 (rule!11053 (h!52301 addTokens!17))))))))

(assert (= (and d!1247658 res!1743749) b!4240630))

(declare-fun m!4826193 () Bool)

(assert (=> d!1247658 m!4826193))

(declare-fun m!4826195 () Bool)

(assert (=> b!4240630 m!4826195))

(assert (=> b!4240468 d!1247658))

(declare-fun d!1247660 () Bool)

(assert (=> d!1247660 (= (inv!61625 (tag!8789 (rule!11053 (h!52301 tokens!581)))) (= (mod (str.len (value!246399 (tag!8789 (rule!11053 (h!52301 tokens!581))))) 2) 0))))

(assert (=> b!4240469 d!1247660))

(declare-fun d!1247662 () Bool)

(declare-fun res!1743750 () Bool)

(declare-fun e!2633366 () Bool)

(assert (=> d!1247662 (=> (not res!1743750) (not e!2633366))))

(assert (=> d!1247662 (= res!1743750 (semiInverseModEq!3448 (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581)))) (toValue!10681 (transformation!7925 (rule!11053 (h!52301 tokens!581))))))))

(assert (=> d!1247662 (= (inv!61629 (transformation!7925 (rule!11053 (h!52301 tokens!581)))) e!2633366)))

(declare-fun b!4240631 () Bool)

(assert (=> b!4240631 (= e!2633366 (equivClasses!3347 (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581)))) (toValue!10681 (transformation!7925 (rule!11053 (h!52301 tokens!581))))))))

(assert (= (and d!1247662 res!1743750) b!4240631))

(declare-fun m!4826197 () Bool)

(assert (=> d!1247662 m!4826197))

(declare-fun m!4826199 () Bool)

(assert (=> b!4240631 m!4826199))

(assert (=> b!4240469 d!1247662))

(declare-fun d!1247664 () Bool)

(assert (=> d!1247664 (= (isEmpty!27713 longerInput!51) (is-Nil!46879 longerInput!51))))

(assert (=> b!4240467 d!1247664))

(declare-fun b!4240652 () Bool)

(declare-fun e!2633380 () Bool)

(declare-fun lt!1506580 () tuple2!44458)

(assert (=> b!4240652 (= e!2633380 (= (_2!25363 lt!1506580) longerInput!51))))

(declare-fun b!4240653 () Bool)

(declare-fun e!2633379 () Bool)

(declare-fun isEmpty!27716 (List!47005) Bool)

(assert (=> b!4240653 (= e!2633379 (not (isEmpty!27716 (_1!25363 lt!1506580))))))

(declare-fun b!4240654 () Bool)

(assert (=> b!4240654 (= e!2633380 e!2633379)))

(declare-fun res!1743755 () Bool)

(assert (=> b!4240654 (= res!1743755 (< (size!34343 (_2!25363 lt!1506580)) (size!34343 longerInput!51)))))

(assert (=> b!4240654 (=> (not res!1743755) (not e!2633379))))

(declare-fun b!4240655 () Bool)

(declare-fun e!2633381 () tuple2!44458)

(declare-datatypes ((tuple2!44462 0))(
  ( (tuple2!44463 (_1!25365 Token!14476) (_2!25365 List!47003)) )
))
(declare-datatypes ((Option!10061 0))(
  ( (None!10060) (Some!10060 (v!41012 tuple2!44462)) )
))
(declare-fun lt!1506581 () Option!10061)

(declare-fun lt!1506579 () tuple2!44458)

(assert (=> b!4240655 (= e!2633381 (tuple2!44459 (Cons!46881 (_1!25365 (v!41012 lt!1506581)) (_1!25363 lt!1506579)) (_2!25363 lt!1506579)))))

(assert (=> b!4240655 (= lt!1506579 (lexList!2026 thiss!21540 rules!2932 (_2!25365 (v!41012 lt!1506581))))))

(declare-fun d!1247666 () Bool)

(assert (=> d!1247666 e!2633380))

(declare-fun c!720554 () Bool)

(assert (=> d!1247666 (= c!720554 (> (size!34344 (_1!25363 lt!1506580)) 0))))

(assert (=> d!1247666 (= lt!1506580 e!2633381)))

(declare-fun c!720555 () Bool)

(assert (=> d!1247666 (= c!720555 (is-Some!10060 lt!1506581))))

(declare-fun maxPrefix!4478 (LexerInterface!7520 List!47004 List!47003) Option!10061)

(assert (=> d!1247666 (= lt!1506581 (maxPrefix!4478 thiss!21540 rules!2932 longerInput!51))))

(assert (=> d!1247666 (= (lexList!2026 thiss!21540 rules!2932 longerInput!51) lt!1506580)))

(declare-fun b!4240656 () Bool)

(assert (=> b!4240656 (= e!2633381 (tuple2!44459 Nil!46881 longerInput!51))))

(assert (= (and d!1247666 c!720555) b!4240655))

(assert (= (and d!1247666 (not c!720555)) b!4240656))

(assert (= (and d!1247666 c!720554) b!4240654))

(assert (= (and d!1247666 (not c!720554)) b!4240652))

(assert (= (and b!4240654 res!1743755) b!4240653))

(declare-fun m!4826201 () Bool)

(assert (=> b!4240653 m!4826201))

(declare-fun m!4826203 () Bool)

(assert (=> b!4240654 m!4826203))

(assert (=> b!4240654 m!4826083))

(declare-fun m!4826205 () Bool)

(assert (=> b!4240655 m!4826205))

(declare-fun m!4826207 () Bool)

(assert (=> d!1247666 m!4826207))

(declare-fun m!4826209 () Bool)

(assert (=> d!1247666 m!4826209))

(assert (=> b!4240457 d!1247666))

(declare-fun d!1247668 () Bool)

(assert (=> d!1247668 (= (inv!61625 (tag!8789 (h!52300 rules!2932))) (= (mod (str.len (value!246399 (tag!8789 (h!52300 rules!2932)))) 2) 0))))

(assert (=> b!4240466 d!1247668))

(declare-fun d!1247670 () Bool)

(declare-fun res!1743756 () Bool)

(declare-fun e!2633382 () Bool)

(assert (=> d!1247670 (=> (not res!1743756) (not e!2633382))))

(assert (=> d!1247670 (= res!1743756 (semiInverseModEq!3448 (toChars!10540 (transformation!7925 (h!52300 rules!2932))) (toValue!10681 (transformation!7925 (h!52300 rules!2932)))))))

(assert (=> d!1247670 (= (inv!61629 (transformation!7925 (h!52300 rules!2932))) e!2633382)))

(declare-fun b!4240657 () Bool)

(assert (=> b!4240657 (= e!2633382 (equivClasses!3347 (toChars!10540 (transformation!7925 (h!52300 rules!2932))) (toValue!10681 (transformation!7925 (h!52300 rules!2932)))))))

(assert (= (and d!1247670 res!1743756) b!4240657))

(declare-fun m!4826211 () Bool)

(assert (=> d!1247670 m!4826211))

(declare-fun m!4826213 () Bool)

(assert (=> b!4240657 m!4826213))

(assert (=> b!4240466 d!1247670))

(declare-fun d!1247672 () Bool)

(declare-fun res!1743760 () Bool)

(declare-fun e!2633388 () Bool)

(assert (=> d!1247672 (=> (not res!1743760) (not e!2633388))))

(declare-fun rulesValid!3071 (LexerInterface!7520 List!47004) Bool)

(assert (=> d!1247672 (= res!1743760 (rulesValid!3071 thiss!21540 rules!2932))))

(assert (=> d!1247672 (= (rulesInvariant!6631 thiss!21540 rules!2932) e!2633388)))

(declare-fun b!4240665 () Bool)

(declare-datatypes ((List!47010 0))(
  ( (Nil!46886) (Cons!46886 (h!52306 String!54707) (t!350833 List!47010)) )
))
(declare-fun noDuplicateTag!3232 (LexerInterface!7520 List!47004 List!47010) Bool)

(assert (=> b!4240665 (= e!2633388 (noDuplicateTag!3232 thiss!21540 rules!2932 Nil!46886))))

(assert (= (and d!1247672 res!1743760) b!4240665))

(declare-fun m!4826225 () Bool)

(assert (=> d!1247672 m!4826225))

(declare-fun m!4826227 () Bool)

(assert (=> b!4240665 m!4826227))

(assert (=> b!4240475 d!1247672))

(declare-fun d!1247676 () Bool)

(declare-fun res!1743761 () Bool)

(declare-fun e!2633389 () Bool)

(assert (=> d!1247676 (=> (not res!1743761) (not e!2633389))))

(assert (=> d!1247676 (= res!1743761 (not (isEmpty!27713 (originalCharacters!8269 (h!52301 addTokens!17)))))))

(assert (=> d!1247676 (= (inv!61628 (h!52301 addTokens!17)) e!2633389)))

(declare-fun b!4240666 () Bool)

(declare-fun res!1743762 () Bool)

(assert (=> b!4240666 (=> (not res!1743762) (not e!2633389))))

(assert (=> b!4240666 (= res!1743762 (= (originalCharacters!8269 (h!52301 addTokens!17)) (list!16906 (dynLambda!20109 (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))) (value!246400 (h!52301 addTokens!17))))))))

(declare-fun b!4240667 () Bool)

(assert (=> b!4240667 (= e!2633389 (= (size!34342 (h!52301 addTokens!17)) (size!34343 (originalCharacters!8269 (h!52301 addTokens!17)))))))

(assert (= (and d!1247676 res!1743761) b!4240666))

(assert (= (and b!4240666 res!1743762) b!4240667))

(declare-fun b_lambda!124865 () Bool)

(assert (=> (not b_lambda!124865) (not b!4240666)))

(declare-fun t!350804 () Bool)

(declare-fun tb!254981 () Bool)

(assert (=> (and b!4240462 (= (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581)))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17))))) t!350804) tb!254981))

(declare-fun b!4240668 () Bool)

(declare-fun e!2633390 () Bool)

(declare-fun tp!1299672 () Bool)

(assert (=> b!4240668 (= e!2633390 (and (inv!61632 (c!720514 (dynLambda!20109 (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))) (value!246400 (h!52301 addTokens!17))))) tp!1299672))))

(declare-fun result!310938 () Bool)

(assert (=> tb!254981 (= result!310938 (and (inv!61633 (dynLambda!20109 (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))) (value!246400 (h!52301 addTokens!17)))) e!2633390))))

(assert (= tb!254981 b!4240668))

(declare-fun m!4826229 () Bool)

(assert (=> b!4240668 m!4826229))

(declare-fun m!4826231 () Bool)

(assert (=> tb!254981 m!4826231))

(assert (=> b!4240666 t!350804))

(declare-fun b_and!335471 () Bool)

(assert (= b_and!335465 (and (=> t!350804 result!310938) b_and!335471)))

(declare-fun t!350806 () Bool)

(declare-fun tb!254983 () Bool)

(assert (=> (and b!4240458 (= (toChars!10540 (transformation!7925 (h!52300 rules!2932))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17))))) t!350806) tb!254983))

(declare-fun result!310940 () Bool)

(assert (= result!310940 result!310938))

(assert (=> b!4240666 t!350806))

(declare-fun b_and!335473 () Bool)

(assert (= b_and!335467 (and (=> t!350806 result!310940) b_and!335473)))

(declare-fun t!350808 () Bool)

(declare-fun tb!254985 () Bool)

(assert (=> (and b!4240459 (= (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17))))) t!350808) tb!254985))

(declare-fun result!310942 () Bool)

(assert (= result!310942 result!310938))

(assert (=> b!4240666 t!350808))

(declare-fun b_and!335475 () Bool)

(assert (= b_and!335469 (and (=> t!350808 result!310942) b_and!335475)))

(declare-fun m!4826233 () Bool)

(assert (=> d!1247676 m!4826233))

(declare-fun m!4826235 () Bool)

(assert (=> b!4240666 m!4826235))

(assert (=> b!4240666 m!4826235))

(declare-fun m!4826239 () Bool)

(assert (=> b!4240666 m!4826239))

(declare-fun m!4826243 () Bool)

(assert (=> b!4240667 m!4826243))

(assert (=> b!4240464 d!1247676))

(declare-fun d!1247686 () Bool)

(assert (=> d!1247686 (= (isEmpty!27712 rules!2932) (is-Nil!46880 rules!2932))))

(assert (=> b!4240463 d!1247686))

(declare-fun b!4240671 () Bool)

(declare-fun e!2633394 () Bool)

(assert (=> b!4240671 (= e!2633394 (inv!15 (value!246400 (h!52301 addTokens!17))))))

(declare-fun b!4240672 () Bool)

(declare-fun e!2633395 () Bool)

(assert (=> b!4240672 (= e!2633395 (inv!16 (value!246400 (h!52301 addTokens!17))))))

(declare-fun b!4240673 () Bool)

(declare-fun e!2633393 () Bool)

(assert (=> b!4240673 (= e!2633393 (inv!17 (value!246400 (h!52301 addTokens!17))))))

(declare-fun b!4240674 () Bool)

(declare-fun res!1743765 () Bool)

(assert (=> b!4240674 (=> res!1743765 e!2633394)))

(assert (=> b!4240674 (= res!1743765 (not (is-IntegerValue!24467 (value!246400 (h!52301 addTokens!17)))))))

(assert (=> b!4240674 (= e!2633393 e!2633394)))

(declare-fun d!1247692 () Bool)

(declare-fun c!720559 () Bool)

(assert (=> d!1247692 (= c!720559 (is-IntegerValue!24465 (value!246400 (h!52301 addTokens!17))))))

(assert (=> d!1247692 (= (inv!21 (value!246400 (h!52301 addTokens!17))) e!2633395)))

(declare-fun b!4240675 () Bool)

(assert (=> b!4240675 (= e!2633395 e!2633393)))

(declare-fun c!720558 () Bool)

(assert (=> b!4240675 (= c!720558 (is-IntegerValue!24466 (value!246400 (h!52301 addTokens!17))))))

(assert (= (and d!1247692 c!720559) b!4240672))

(assert (= (and d!1247692 (not c!720559)) b!4240675))

(assert (= (and b!4240675 c!720558) b!4240673))

(assert (= (and b!4240675 (not c!720558)) b!4240674))

(assert (= (and b!4240674 (not res!1743765)) b!4240671))

(declare-fun m!4826249 () Bool)

(assert (=> b!4240671 m!4826249))

(declare-fun m!4826251 () Bool)

(assert (=> b!4240672 m!4826251))

(declare-fun m!4826253 () Bool)

(assert (=> b!4240673 m!4826253))

(assert (=> b!4240473 d!1247692))

(declare-fun b!4240680 () Bool)

(declare-fun e!2633398 () Bool)

(declare-fun tp!1299675 () Bool)

(assert (=> b!4240680 (= e!2633398 (and tp_is_empty!22651 tp!1299675))))

(assert (=> b!4240461 (= tp!1299601 e!2633398)))

(assert (= (and b!4240461 (is-Cons!46879 (originalCharacters!8269 (h!52301 tokens!581)))) b!4240680))

(declare-fun b!4240701 () Bool)

(declare-fun b_free!125539 () Bool)

(declare-fun b_next!126243 () Bool)

(assert (=> b!4240701 (= b_free!125539 (not b_next!126243))))

(declare-fun tp!1299686 () Bool)

(declare-fun b_and!335477 () Bool)

(assert (=> b!4240701 (= tp!1299686 b_and!335477)))

(declare-fun b_free!125541 () Bool)

(declare-fun b_next!126245 () Bool)

(assert (=> b!4240701 (= b_free!125541 (not b_next!126245))))

(declare-fun t!350810 () Bool)

(declare-fun tb!254987 () Bool)

(assert (=> (and b!4240701 (= (toChars!10540 (transformation!7925 (rule!11053 (h!52301 (t!350780 tokens!581))))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581))))) t!350810) tb!254987))

(declare-fun result!310950 () Bool)

(assert (= result!310950 result!310930))

(assert (=> b!4240611 t!350810))

(declare-fun t!350812 () Bool)

(declare-fun tb!254989 () Bool)

(assert (=> (and b!4240701 (= (toChars!10540 (transformation!7925 (rule!11053 (h!52301 (t!350780 tokens!581))))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17))))) t!350812) tb!254989))

(declare-fun result!310952 () Bool)

(assert (= result!310952 result!310938))

(assert (=> b!4240666 t!350812))

(declare-fun b_and!335479 () Bool)

(declare-fun tp!1299687 () Bool)

(assert (=> b!4240701 (= tp!1299687 (and (=> t!350810 result!310950) (=> t!350812 result!310952) b_and!335479))))

(declare-fun e!2633420 () Bool)

(assert (=> b!4240470 (= tp!1299611 e!2633420)))

(declare-fun e!2633419 () Bool)

(assert (=> b!4240701 (= e!2633419 (and tp!1299686 tp!1299687))))

(declare-fun b!4240700 () Bool)

(declare-fun e!2633418 () Bool)

(declare-fun tp!1299689 () Bool)

(assert (=> b!4240700 (= e!2633418 (and tp!1299689 (inv!61625 (tag!8789 (rule!11053 (h!52301 (t!350780 tokens!581))))) (inv!61629 (transformation!7925 (rule!11053 (h!52301 (t!350780 tokens!581))))) e!2633419))))

(declare-fun tp!1299690 () Bool)

(declare-fun b!4240699 () Bool)

(declare-fun e!2633416 () Bool)

(assert (=> b!4240699 (= e!2633416 (and (inv!21 (value!246400 (h!52301 (t!350780 tokens!581)))) e!2633418 tp!1299690))))

(declare-fun tp!1299688 () Bool)

(declare-fun b!4240698 () Bool)

(assert (=> b!4240698 (= e!2633420 (and (inv!61628 (h!52301 (t!350780 tokens!581))) e!2633416 tp!1299688))))

(assert (= b!4240700 b!4240701))

(assert (= b!4240699 b!4240700))

(assert (= b!4240698 b!4240699))

(assert (= (and b!4240470 (is-Cons!46881 (t!350780 tokens!581))) b!4240698))

(declare-fun m!4826259 () Bool)

(assert (=> b!4240700 m!4826259))

(declare-fun m!4826261 () Bool)

(assert (=> b!4240700 m!4826261))

(declare-fun m!4826263 () Bool)

(assert (=> b!4240699 m!4826263))

(declare-fun m!4826265 () Bool)

(assert (=> b!4240698 m!4826265))

(declare-fun b!4240720 () Bool)

(declare-fun e!2633434 () Bool)

(declare-fun tp!1299711 () Bool)

(assert (=> b!4240720 (= e!2633434 tp!1299711)))

(declare-fun b!4240719 () Bool)

(declare-fun tp!1299708 () Bool)

(declare-fun tp!1299709 () Bool)

(assert (=> b!4240719 (= e!2633434 (and tp!1299708 tp!1299709))))

(assert (=> b!4240468 (= tp!1299603 e!2633434)))

(declare-fun b!4240721 () Bool)

(declare-fun tp!1299707 () Bool)

(declare-fun tp!1299710 () Bool)

(assert (=> b!4240721 (= e!2633434 (and tp!1299707 tp!1299710))))

(declare-fun b!4240718 () Bool)

(assert (=> b!4240718 (= e!2633434 tp_is_empty!22651)))

(assert (= (and b!4240468 (is-ElementMatch!12830 (regex!7925 (rule!11053 (h!52301 addTokens!17))))) b!4240718))

(assert (= (and b!4240468 (is-Concat!20986 (regex!7925 (rule!11053 (h!52301 addTokens!17))))) b!4240719))

(assert (= (and b!4240468 (is-Star!12830 (regex!7925 (rule!11053 (h!52301 addTokens!17))))) b!4240720))

(assert (= (and b!4240468 (is-Union!12830 (regex!7925 (rule!11053 (h!52301 addTokens!17))))) b!4240721))

(declare-fun b!4240724 () Bool)

(declare-fun e!2633435 () Bool)

(declare-fun tp!1299718 () Bool)

(assert (=> b!4240724 (= e!2633435 tp!1299718)))

(declare-fun b!4240723 () Bool)

(declare-fun tp!1299715 () Bool)

(declare-fun tp!1299716 () Bool)

(assert (=> b!4240723 (= e!2633435 (and tp!1299715 tp!1299716))))

(assert (=> b!4240469 (= tp!1299609 e!2633435)))

(declare-fun b!4240725 () Bool)

(declare-fun tp!1299714 () Bool)

(declare-fun tp!1299717 () Bool)

(assert (=> b!4240725 (= e!2633435 (and tp!1299714 tp!1299717))))

(declare-fun b!4240722 () Bool)

(assert (=> b!4240722 (= e!2633435 tp_is_empty!22651)))

(assert (= (and b!4240469 (is-ElementMatch!12830 (regex!7925 (rule!11053 (h!52301 tokens!581))))) b!4240722))

(assert (= (and b!4240469 (is-Concat!20986 (regex!7925 (rule!11053 (h!52301 tokens!581))))) b!4240723))

(assert (= (and b!4240469 (is-Star!12830 (regex!7925 (rule!11053 (h!52301 tokens!581))))) b!4240724))

(assert (= (and b!4240469 (is-Union!12830 (regex!7925 (rule!11053 (h!52301 tokens!581))))) b!4240725))

(declare-fun b!4240726 () Bool)

(declare-fun e!2633436 () Bool)

(declare-fun tp!1299721 () Bool)

(assert (=> b!4240726 (= e!2633436 (and tp_is_empty!22651 tp!1299721))))

(assert (=> b!4240476 (= tp!1299597 e!2633436)))

(assert (= (and b!4240476 (is-Cons!46879 (t!350778 shorterInput!51))) b!4240726))

(declare-fun b!4240729 () Bool)

(declare-fun e!2633437 () Bool)

(declare-fun tp!1299726 () Bool)

(assert (=> b!4240729 (= e!2633437 tp!1299726)))

(declare-fun b!4240728 () Bool)

(declare-fun tp!1299723 () Bool)

(declare-fun tp!1299724 () Bool)

(assert (=> b!4240728 (= e!2633437 (and tp!1299723 tp!1299724))))

(assert (=> b!4240466 (= tp!1299613 e!2633437)))

(declare-fun b!4240730 () Bool)

(declare-fun tp!1299722 () Bool)

(declare-fun tp!1299725 () Bool)

(assert (=> b!4240730 (= e!2633437 (and tp!1299722 tp!1299725))))

(declare-fun b!4240727 () Bool)

(assert (=> b!4240727 (= e!2633437 tp_is_empty!22651)))

(assert (= (and b!4240466 (is-ElementMatch!12830 (regex!7925 (h!52300 rules!2932)))) b!4240727))

(assert (= (and b!4240466 (is-Concat!20986 (regex!7925 (h!52300 rules!2932)))) b!4240728))

(assert (= (and b!4240466 (is-Star!12830 (regex!7925 (h!52300 rules!2932)))) b!4240729))

(assert (= (and b!4240466 (is-Union!12830 (regex!7925 (h!52300 rules!2932)))) b!4240730))

(declare-fun b!4240734 () Bool)

(declare-fun b_free!125543 () Bool)

(declare-fun b_next!126247 () Bool)

(assert (=> b!4240734 (= b_free!125543 (not b_next!126247))))

(declare-fun tp!1299727 () Bool)

(declare-fun b_and!335481 () Bool)

(assert (=> b!4240734 (= tp!1299727 b_and!335481)))

(declare-fun b_free!125545 () Bool)

(declare-fun b_next!126249 () Bool)

(assert (=> b!4240734 (= b_free!125545 (not b_next!126249))))

(declare-fun tb!254991 () Bool)

(declare-fun t!350814 () Bool)

(assert (=> (and b!4240734 (= (toChars!10540 (transformation!7925 (rule!11053 (h!52301 (t!350780 addTokens!17))))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581))))) t!350814) tb!254991))

(declare-fun result!310956 () Bool)

(assert (= result!310956 result!310930))

(assert (=> b!4240611 t!350814))

(declare-fun t!350816 () Bool)

(declare-fun tb!254993 () Bool)

(assert (=> (and b!4240734 (= (toChars!10540 (transformation!7925 (rule!11053 (h!52301 (t!350780 addTokens!17))))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17))))) t!350816) tb!254993))

(declare-fun result!310958 () Bool)

(assert (= result!310958 result!310938))

(assert (=> b!4240666 t!350816))

(declare-fun tp!1299728 () Bool)

(declare-fun b_and!335483 () Bool)

(assert (=> b!4240734 (= tp!1299728 (and (=> t!350814 result!310956) (=> t!350816 result!310958) b_and!335483))))

(declare-fun e!2633442 () Bool)

(assert (=> b!4240464 (= tp!1299600 e!2633442)))

(declare-fun e!2633441 () Bool)

(assert (=> b!4240734 (= e!2633441 (and tp!1299727 tp!1299728))))

(declare-fun b!4240733 () Bool)

(declare-fun tp!1299730 () Bool)

(declare-fun e!2633440 () Bool)

(assert (=> b!4240733 (= e!2633440 (and tp!1299730 (inv!61625 (tag!8789 (rule!11053 (h!52301 (t!350780 addTokens!17))))) (inv!61629 (transformation!7925 (rule!11053 (h!52301 (t!350780 addTokens!17))))) e!2633441))))

(declare-fun b!4240732 () Bool)

(declare-fun e!2633438 () Bool)

(declare-fun tp!1299731 () Bool)

(assert (=> b!4240732 (= e!2633438 (and (inv!21 (value!246400 (h!52301 (t!350780 addTokens!17)))) e!2633440 tp!1299731))))

(declare-fun tp!1299729 () Bool)

(declare-fun b!4240731 () Bool)

(assert (=> b!4240731 (= e!2633442 (and (inv!61628 (h!52301 (t!350780 addTokens!17))) e!2633438 tp!1299729))))

(assert (= b!4240733 b!4240734))

(assert (= b!4240732 b!4240733))

(assert (= b!4240731 b!4240732))

(assert (= (and b!4240464 (is-Cons!46881 (t!350780 addTokens!17))) b!4240731))

(declare-fun m!4826267 () Bool)

(assert (=> b!4240733 m!4826267))

(declare-fun m!4826269 () Bool)

(assert (=> b!4240733 m!4826269))

(declare-fun m!4826271 () Bool)

(assert (=> b!4240732 m!4826271))

(declare-fun m!4826273 () Bool)

(assert (=> b!4240731 m!4826273))

(declare-fun b!4240735 () Bool)

(declare-fun e!2633444 () Bool)

(declare-fun tp!1299732 () Bool)

(assert (=> b!4240735 (= e!2633444 (and tp_is_empty!22651 tp!1299732))))

(assert (=> b!4240465 (= tp!1299608 e!2633444)))

(assert (= (and b!4240465 (is-Cons!46879 (t!350778 suffix!1262))) b!4240735))

(declare-fun b!4240736 () Bool)

(declare-fun e!2633445 () Bool)

(declare-fun tp!1299733 () Bool)

(assert (=> b!4240736 (= e!2633445 (and tp_is_empty!22651 tp!1299733))))

(assert (=> b!4240474 (= tp!1299602 e!2633445)))

(assert (= (and b!4240474 (is-Cons!46879 (t!350778 longerInput!51))) b!4240736))

(declare-fun b!4240755 () Bool)

(declare-fun b_free!125551 () Bool)

(declare-fun b_next!126255 () Bool)

(assert (=> b!4240755 (= b_free!125551 (not b_next!126255))))

(declare-fun tp!1299750 () Bool)

(declare-fun b_and!335489 () Bool)

(assert (=> b!4240755 (= tp!1299750 b_and!335489)))

(declare-fun b_free!125553 () Bool)

(declare-fun b_next!126257 () Bool)

(assert (=> b!4240755 (= b_free!125553 (not b_next!126257))))

(declare-fun tb!254999 () Bool)

(declare-fun t!350822 () Bool)

(assert (=> (and b!4240755 (= (toChars!10540 (transformation!7925 (h!52300 (t!350779 rules!2932)))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581))))) t!350822) tb!254999))

(declare-fun result!310968 () Bool)

(assert (= result!310968 result!310930))

(assert (=> b!4240611 t!350822))

(declare-fun tb!255001 () Bool)

(declare-fun t!350824 () Bool)

(assert (=> (and b!4240755 (= (toChars!10540 (transformation!7925 (h!52300 (t!350779 rules!2932)))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17))))) t!350824) tb!255001))

(declare-fun result!310970 () Bool)

(assert (= result!310970 result!310938))

(assert (=> b!4240666 t!350824))

(declare-fun tp!1299752 () Bool)

(declare-fun b_and!335491 () Bool)

(assert (=> b!4240755 (= tp!1299752 (and (=> t!350822 result!310968) (=> t!350824 result!310970) b_and!335491))))

(declare-fun e!2633465 () Bool)

(assert (=> b!4240755 (= e!2633465 (and tp!1299750 tp!1299752))))

(declare-fun b!4240754 () Bool)

(declare-fun e!2633463 () Bool)

(declare-fun tp!1299751 () Bool)

(assert (=> b!4240754 (= e!2633463 (and tp!1299751 (inv!61625 (tag!8789 (h!52300 (t!350779 rules!2932)))) (inv!61629 (transformation!7925 (h!52300 (t!350779 rules!2932)))) e!2633465))))

(declare-fun b!4240753 () Bool)

(declare-fun e!2633464 () Bool)

(declare-fun tp!1299749 () Bool)

(assert (=> b!4240753 (= e!2633464 (and e!2633463 tp!1299749))))

(assert (=> b!4240472 (= tp!1299612 e!2633464)))

(assert (= b!4240754 b!4240755))

(assert (= b!4240753 b!4240754))

(assert (= (and b!4240472 (is-Cons!46880 (t!350779 rules!2932))) b!4240753))

(declare-fun m!4826283 () Bool)

(assert (=> b!4240754 m!4826283))

(declare-fun m!4826285 () Bool)

(assert (=> b!4240754 m!4826285))

(declare-fun b!4240756 () Bool)

(declare-fun e!2633466 () Bool)

(declare-fun tp!1299753 () Bool)

(assert (=> b!4240756 (= e!2633466 (and tp_is_empty!22651 tp!1299753))))

(assert (=> b!4240473 (= tp!1299599 e!2633466)))

(assert (= (and b!4240473 (is-Cons!46879 (originalCharacters!8269 (h!52301 addTokens!17)))) b!4240756))

(declare-fun b_lambda!124867 () Bool)

(assert (= b_lambda!124865 (or (and b!4240462 b_free!125517 (= (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581)))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))))) (and b!4240734 b_free!125545 (= (toChars!10540 (transformation!7925 (rule!11053 (h!52301 (t!350780 addTokens!17))))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))))) (and b!4240458 b_free!125521 (= (toChars!10540 (transformation!7925 (h!52300 rules!2932))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))))) (and b!4240701 b_free!125541 (= (toChars!10540 (transformation!7925 (rule!11053 (h!52301 (t!350780 tokens!581))))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))))) (and b!4240459 b_free!125525) (and b!4240755 b_free!125553 (= (toChars!10540 (transformation!7925 (h!52300 (t!350779 rules!2932)))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))))) b_lambda!124867)))

(declare-fun b_lambda!124869 () Bool)

(assert (= b_lambda!124863 (or (and b!4240734 b_free!125545 (= (toChars!10540 (transformation!7925 (rule!11053 (h!52301 (t!350780 addTokens!17))))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581)))))) (and b!4240755 b_free!125553 (= (toChars!10540 (transformation!7925 (h!52300 (t!350779 rules!2932)))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581)))))) (and b!4240458 b_free!125521 (= (toChars!10540 (transformation!7925 (h!52300 rules!2932))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581)))))) (and b!4240701 b_free!125541 (= (toChars!10540 (transformation!7925 (rule!11053 (h!52301 (t!350780 tokens!581))))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581)))))) (and b!4240459 b_free!125525 (= (toChars!10540 (transformation!7925 (rule!11053 (h!52301 addTokens!17)))) (toChars!10540 (transformation!7925 (rule!11053 (h!52301 tokens!581)))))) (and b!4240462 b_free!125517) b_lambda!124869)))

(push 1)

(assert (not b!4240735))

(assert (not b!4240754))

(assert (not b!4240672))

(assert (not b!4240668))

(assert (not b!4240671))

(assert b_and!335473)

(assert b_and!335433)

(assert (not b!4240756))

(assert (not d!1247658))

(assert (not b!4240559))

(assert (not tb!254981))

(assert (not b!4240657))

(assert (not d!1247666))

(assert (not b!4240666))

(assert (not b!4240725))

(assert (not b!4240573))

(assert (not b_next!126225))

(assert (not b!4240719))

(assert (not b!4240592))

(assert b_and!335475)

(assert b_and!335481)

(assert (not b_next!126247))

(assert (not b!4240653))

(assert (not b!4240665))

(assert (not b!4240593))

(assert (not b!4240726))

(assert (not b_next!126255))

(assert (not b!4240667))

(assert (not b!4240611))

(assert (not b!4240729))

(assert (not b!4240654))

(assert (not b!4240721))

(assert b_and!335429)

(assert (not b!4240630))

(assert (not b!4240673))

(assert (not b!4240733))

(assert b_and!335477)

(assert (not b!4240724))

(assert (not tb!254975))

(assert (not b!4240753))

(assert (not b!4240728))

(assert (not b!4240731))

(assert (not d!1247672))

(assert (not d!1247650))

(assert (not d!1247662))

(assert (not b!4240732))

(assert (not d!1247676))

(assert b_and!335479)

(assert tp_is_empty!22651)

(assert (not b!4240594))

(assert (not b_lambda!124869))

(assert (not b_next!126227))

(assert (not b!4240631))

(assert (not b_next!126229))

(assert (not b_next!126249))

(assert (not b_next!126221))

(assert (not d!1247670))

(assert b_and!335489)

(assert (not b_lambda!124867))

(assert b_and!335491)

(assert (not b!4240699))

(assert (not b!4240730))

(assert (not b!4240723))

(assert b_and!335471)

(assert (not b_next!126243))

(assert (not b!4240612))

(assert (not b!4240720))

(assert b_and!335437)

(assert (not b!4240575))

(assert (not b!4240655))

(assert (not b_next!126245))

(assert (not b!4240736))

(assert b_and!335483)

(assert (not b!4240680))

(assert (not b!4240700))

(assert (not b_next!126223))

(assert (not b_next!126257))

(assert (not b!4240627))

(assert (not b_next!126219))

(assert (not b!4240698))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!126225))

(assert (not b_next!126255))

(assert b_and!335429)

(assert b_and!335477)

(assert b_and!335473)

(assert b_and!335479)

(assert b_and!335433)

(assert b_and!335491)

(assert b_and!335437)

(assert (not b_next!126245))

(assert b_and!335483)

(assert (not b_next!126219))

(assert b_and!335475)

(assert b_and!335481)

(assert (not b_next!126247))

(assert (not b_next!126227))

(assert (not b_next!126229))

(assert (not b_next!126249))

(assert (not b_next!126221))

(assert b_and!335489)

(assert b_and!335471)

(assert (not b_next!126243))

(assert (not b_next!126223))

(assert (not b_next!126257))

(check-sat)

(pop 1)

