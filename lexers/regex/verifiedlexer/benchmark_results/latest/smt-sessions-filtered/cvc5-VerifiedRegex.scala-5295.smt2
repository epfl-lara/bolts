; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!271318 () Bool)

(assert start!271318)

(declare-fun b!2805323 () Bool)

(declare-fun b_free!79781 () Bool)

(declare-fun b_next!80485 () Bool)

(assert (=> b!2805323 (= b_free!79781 (not b_next!80485))))

(declare-fun tp!894959 () Bool)

(declare-fun b_and!204567 () Bool)

(assert (=> b!2805323 (= tp!894959 b_and!204567)))

(declare-fun b_free!79783 () Bool)

(declare-fun b_next!80487 () Bool)

(assert (=> b!2805323 (= b_free!79783 (not b_next!80487))))

(declare-fun tp!894955 () Bool)

(declare-fun b_and!204569 () Bool)

(assert (=> b!2805323 (= tp!894955 b_and!204569)))

(declare-fun b!2805312 () Bool)

(declare-fun b_free!79785 () Bool)

(declare-fun b_next!80489 () Bool)

(assert (=> b!2805312 (= b_free!79785 (not b_next!80489))))

(declare-fun tp!894954 () Bool)

(declare-fun b_and!204571 () Bool)

(assert (=> b!2805312 (= tp!894954 b_and!204571)))

(declare-fun b_free!79787 () Bool)

(declare-fun b_next!80491 () Bool)

(assert (=> b!2805312 (= b_free!79787 (not b_next!80491))))

(declare-fun tp!894953 () Bool)

(declare-fun b_and!204573 () Bool)

(assert (=> b!2805312 (= tp!894953 b_and!204573)))

(declare-fun b!2805313 () Bool)

(declare-fun b_free!79789 () Bool)

(declare-fun b_next!80493 () Bool)

(assert (=> b!2805313 (= b_free!79789 (not b_next!80493))))

(declare-fun tp!894948 () Bool)

(declare-fun b_and!204575 () Bool)

(assert (=> b!2805313 (= tp!894948 b_and!204575)))

(declare-fun b_free!79791 () Bool)

(declare-fun b_next!80495 () Bool)

(assert (=> b!2805313 (= b_free!79791 (not b_next!80495))))

(declare-fun tp!894957 () Bool)

(declare-fun b_and!204577 () Bool)

(assert (=> b!2805313 (= tp!894957 b_and!204577)))

(declare-fun b!2805309 () Bool)

(declare-fun res!1168713 () Bool)

(declare-fun e!1773395 () Bool)

(assert (=> b!2805309 (=> (not res!1168713) (not e!1773395))))

(declare-datatypes ((List!32788 0))(
  ( (Nil!32688) (Cons!32688 (h!38108 (_ BitVec 16)) (t!229070 List!32788)) )
))
(declare-datatypes ((TokenValue!5106 0))(
  ( (FloatLiteralValue!10212 (text!36187 List!32788)) (TokenValueExt!5105 (__x!21869 Int)) (Broken!25530 (value!157079 List!32788)) (Object!5205) (End!5106) (Def!5106) (Underscore!5106) (Match!5106) (Else!5106) (Error!5106) (Case!5106) (If!5106) (Extends!5106) (Abstract!5106) (Class!5106) (Val!5106) (DelimiterValue!10212 (del!5166 List!32788)) (KeywordValue!5112 (value!157080 List!32788)) (CommentValue!10212 (value!157081 List!32788)) (WhitespaceValue!10212 (value!157082 List!32788)) (IndentationValue!5106 (value!157083 List!32788)) (String!35867) (Int32!5106) (Broken!25531 (value!157084 List!32788)) (Boolean!5107) (Unit!46760) (OperatorValue!5109 (op!5166 List!32788)) (IdentifierValue!10212 (value!157085 List!32788)) (IdentifierValue!10213 (value!157086 List!32788)) (WhitespaceValue!10213 (value!157087 List!32788)) (True!10212) (False!10212) (Broken!25532 (value!157088 List!32788)) (Broken!25533 (value!157089 List!32788)) (True!10213) (RightBrace!5106) (RightBracket!5106) (Colon!5106) (Null!5106) (Comma!5106) (LeftBracket!5106) (False!10213) (LeftBrace!5106) (ImaginaryLiteralValue!5106 (text!36188 List!32788)) (StringLiteralValue!15318 (value!157090 List!32788)) (EOFValue!5106 (value!157091 List!32788)) (IdentValue!5106 (value!157092 List!32788)) (DelimiterValue!10213 (value!157093 List!32788)) (DedentValue!5106 (value!157094 List!32788)) (NewLineValue!5106 (value!157095 List!32788)) (IntegerValue!15318 (value!157096 (_ BitVec 32)) (text!36189 List!32788)) (IntegerValue!15319 (value!157097 Int) (text!36190 List!32788)) (Times!5106) (Or!5106) (Equal!5106) (Minus!5106) (Broken!25534 (value!157098 List!32788)) (And!5106) (Div!5106) (LessEqual!5106) (Mod!5106) (Concat!13360) (Not!5106) (Plus!5106) (SpaceValue!5106 (value!157099 List!32788)) (IntegerValue!15320 (value!157100 Int) (text!36191 List!32788)) (StringLiteralValue!15319 (text!36192 List!32788)) (FloatLiteralValue!10213 (text!36193 List!32788)) (BytesLiteralValue!5106 (value!157101 List!32788)) (CommentValue!10213 (value!157102 List!32788)) (StringLiteralValue!15320 (value!157103 List!32788)) (ErrorTokenValue!5106 (msg!5167 List!32788)) )
))
(declare-datatypes ((C!16666 0))(
  ( (C!16667 (val!10267 Int)) )
))
(declare-datatypes ((List!32789 0))(
  ( (Nil!32689) (Cons!32689 (h!38109 C!16666) (t!229071 List!32789)) )
))
(declare-datatypes ((IArray!20235 0))(
  ( (IArray!20236 (innerList!10175 List!32789)) )
))
(declare-datatypes ((Conc!10115 0))(
  ( (Node!10115 (left!24668 Conc!10115) (right!24998 Conc!10115) (csize!20460 Int) (cheight!10326 Int)) (Leaf!15411 (xs!13227 IArray!20235) (csize!20461 Int)) (Empty!10115) )
))
(declare-datatypes ((BalanceConc!19844 0))(
  ( (BalanceConc!19845 (c!454602 Conc!10115)) )
))
(declare-datatypes ((Regex!8254 0))(
  ( (ElementMatch!8254 (c!454603 C!16666)) (Concat!13361 (regOne!17020 Regex!8254) (regTwo!17020 Regex!8254)) (EmptyExpr!8254) (Star!8254 (reg!8583 Regex!8254)) (EmptyLang!8254) (Union!8254 (regOne!17021 Regex!8254) (regTwo!17021 Regex!8254)) )
))
(declare-datatypes ((String!35868 0))(
  ( (String!35869 (value!157104 String)) )
))
(declare-datatypes ((TokenValueInjection!9652 0))(
  ( (TokenValueInjection!9653 (toValue!6882 Int) (toChars!6741 Int)) )
))
(declare-datatypes ((Rule!9568 0))(
  ( (Rule!9569 (regex!4884 Regex!8254) (tag!5388 String!35868) (isSeparator!4884 Bool) (transformation!4884 TokenValueInjection!9652)) )
))
(declare-datatypes ((Token!9170 0))(
  ( (Token!9171 (value!157105 TokenValue!5106) (rule!7312 Rule!9568) (size!25504 Int) (originalCharacters!5616 List!32789)) )
))
(declare-datatypes ((List!32790 0))(
  ( (Nil!32690) (Cons!32690 (h!38110 Token!9170) (t!229072 List!32790)) )
))
(declare-fun l!5055 () List!32790)

(declare-datatypes ((List!32791 0))(
  ( (Nil!32691) (Cons!32691 (h!38111 Rule!9568) (t!229073 List!32791)) )
))
(declare-fun rules!2540 () List!32791)

(declare-datatypes ((LexerInterface!4475 0))(
  ( (LexerInterfaceExt!4472 (__x!21870 Int)) (Lexer!4473) )
))
(declare-fun thiss!19710 () LexerInterface!4475)

(declare-fun rulesProduceEachTokenIndividuallyList!1549 (LexerInterface!4475 List!32791 List!32790) Bool)

(assert (=> b!2805309 (= res!1168713 (rulesProduceEachTokenIndividuallyList!1549 thiss!19710 rules!2540 l!5055))))

(declare-fun b!2805310 () Bool)

(declare-fun res!1168714 () Bool)

(assert (=> b!2805310 (=> (not res!1168714) (not e!1773395))))

(declare-fun rulesInvariant!3915 (LexerInterface!4475 List!32791) Bool)

(assert (=> b!2805310 (= res!1168714 (rulesInvariant!3915 thiss!19710 rules!2540))))

(declare-fun e!1773407 () Bool)

(declare-fun e!1773404 () Bool)

(declare-fun tp!894956 () Bool)

(declare-fun b!2805311 () Bool)

(declare-fun inv!21 (TokenValue!5106) Bool)

(assert (=> b!2805311 (= e!1773404 (and (inv!21 (value!157105 (h!38110 l!5055))) e!1773407 tp!894956))))

(declare-fun e!1773403 () Bool)

(assert (=> b!2805312 (= e!1773403 (and tp!894954 tp!894953))))

(declare-fun e!1773405 () Bool)

(assert (=> b!2805313 (= e!1773405 (and tp!894948 tp!894957))))

(declare-fun res!1168711 () Bool)

(assert (=> start!271318 (=> (not res!1168711) (not e!1773395))))

(assert (=> start!271318 (= res!1168711 (is-Lexer!4473 thiss!19710))))

(assert (=> start!271318 e!1773395))

(assert (=> start!271318 true))

(declare-fun e!1773406 () Bool)

(assert (=> start!271318 e!1773406))

(declare-fun e!1773399 () Bool)

(assert (=> start!271318 e!1773399))

(declare-fun separatorToken!283 () Token!9170)

(declare-fun e!1773394 () Bool)

(declare-fun inv!44365 (Token!9170) Bool)

(assert (=> start!271318 (and (inv!44365 separatorToken!283) e!1773394)))

(declare-fun b!2805314 () Bool)

(declare-fun tp!894950 () Bool)

(declare-fun inv!44362 (String!35868) Bool)

(declare-fun inv!44366 (TokenValueInjection!9652) Bool)

(assert (=> b!2805314 (= e!1773407 (and tp!894950 (inv!44362 (tag!5388 (rule!7312 (h!38110 l!5055)))) (inv!44366 (transformation!4884 (rule!7312 (h!38110 l!5055)))) e!1773403))))

(declare-fun b!2805315 () Bool)

(declare-fun res!1168712 () Bool)

(assert (=> b!2805315 (=> (not res!1168712) (not e!1773395))))

(declare-fun rulesProduceIndividualToken!2039 (LexerInterface!4475 List!32791 Token!9170) Bool)

(assert (=> b!2805315 (= res!1168712 (rulesProduceIndividualToken!2039 thiss!19710 rules!2540 separatorToken!283))))

(declare-fun b!2805316 () Bool)

(declare-fun e!1773397 () Bool)

(declare-fun tp!894952 () Bool)

(assert (=> b!2805316 (= e!1773406 (and e!1773397 tp!894952))))

(declare-fun tp!894949 () Bool)

(declare-fun b!2805317 () Bool)

(declare-fun e!1773393 () Bool)

(declare-fun e!1773398 () Bool)

(assert (=> b!2805317 (= e!1773398 (and tp!894949 (inv!44362 (tag!5388 (rule!7312 separatorToken!283))) (inv!44366 (transformation!4884 (rule!7312 separatorToken!283))) e!1773393))))

(declare-fun b!2805318 () Bool)

(declare-fun tp!894958 () Bool)

(assert (=> b!2805318 (= e!1773397 (and tp!894958 (inv!44362 (tag!5388 (h!38111 rules!2540))) (inv!44366 (transformation!4884 (h!38111 rules!2540))) e!1773405))))

(declare-fun b!2805319 () Bool)

(declare-fun ListPrimitiveSize!200 (List!32790) Int)

(assert (=> b!2805319 (= e!1773395 (< (ListPrimitiveSize!200 l!5055) 0))))

(declare-fun b!2805320 () Bool)

(declare-fun res!1168715 () Bool)

(assert (=> b!2805320 (=> (not res!1168715) (not e!1773395))))

(declare-fun isEmpty!18170 (List!32791) Bool)

(assert (=> b!2805320 (= res!1168715 (not (isEmpty!18170 rules!2540)))))

(declare-fun tp!894947 () Bool)

(declare-fun b!2805321 () Bool)

(assert (=> b!2805321 (= e!1773394 (and (inv!21 (value!157105 separatorToken!283)) e!1773398 tp!894947))))

(declare-fun b!2805322 () Bool)

(declare-fun tp!894951 () Bool)

(assert (=> b!2805322 (= e!1773399 (and (inv!44365 (h!38110 l!5055)) e!1773404 tp!894951))))

(assert (=> b!2805323 (= e!1773393 (and tp!894959 tp!894955))))

(declare-fun b!2805324 () Bool)

(declare-fun res!1168716 () Bool)

(assert (=> b!2805324 (=> (not res!1168716) (not e!1773395))))

(assert (=> b!2805324 (= res!1168716 (isSeparator!4884 (rule!7312 separatorToken!283)))))

(assert (= (and start!271318 res!1168711) b!2805320))

(assert (= (and b!2805320 res!1168715) b!2805310))

(assert (= (and b!2805310 res!1168714) b!2805309))

(assert (= (and b!2805309 res!1168713) b!2805315))

(assert (= (and b!2805315 res!1168712) b!2805324))

(assert (= (and b!2805324 res!1168716) b!2805319))

(assert (= b!2805318 b!2805313))

(assert (= b!2805316 b!2805318))

(assert (= (and start!271318 (is-Cons!32691 rules!2540)) b!2805316))

(assert (= b!2805314 b!2805312))

(assert (= b!2805311 b!2805314))

(assert (= b!2805322 b!2805311))

(assert (= (and start!271318 (is-Cons!32690 l!5055)) b!2805322))

(assert (= b!2805317 b!2805323))

(assert (= b!2805321 b!2805317))

(assert (= start!271318 b!2805321))

(declare-fun m!3234521 () Bool)

(assert (=> b!2805315 m!3234521))

(declare-fun m!3234523 () Bool)

(assert (=> b!2805311 m!3234523))

(declare-fun m!3234525 () Bool)

(assert (=> b!2805319 m!3234525))

(declare-fun m!3234527 () Bool)

(assert (=> b!2805310 m!3234527))

(declare-fun m!3234529 () Bool)

(assert (=> b!2805322 m!3234529))

(declare-fun m!3234531 () Bool)

(assert (=> b!2805314 m!3234531))

(declare-fun m!3234533 () Bool)

(assert (=> b!2805314 m!3234533))

(declare-fun m!3234535 () Bool)

(assert (=> start!271318 m!3234535))

(declare-fun m!3234537 () Bool)

(assert (=> b!2805318 m!3234537))

(declare-fun m!3234539 () Bool)

(assert (=> b!2805318 m!3234539))

(declare-fun m!3234541 () Bool)

(assert (=> b!2805320 m!3234541))

(declare-fun m!3234543 () Bool)

(assert (=> b!2805321 m!3234543))

(declare-fun m!3234545 () Bool)

(assert (=> b!2805317 m!3234545))

(declare-fun m!3234547 () Bool)

(assert (=> b!2805317 m!3234547))

(declare-fun m!3234549 () Bool)

(assert (=> b!2805309 m!3234549))

(push 1)

(assert (not b!2805322))

(assert (not b!2805318))

(assert (not b_next!80491))

(assert (not b!2805314))

(assert b_and!204573)

(assert b_and!204577)

(assert b_and!204569)

(assert (not b!2805316))

(assert (not b!2805321))

(assert (not start!271318))

(assert (not b_next!80485))

(assert (not b!2805319))

(assert (not b_next!80493))

(assert (not b!2805317))

(assert (not b!2805320))

(assert b_and!204567)

(assert b_and!204575)

(assert (not b_next!80489))

(assert (not b!2805315))

(assert b_and!204571)

(assert (not b_next!80487))

(assert (not b_next!80495))

(assert (not b!2805311))

(assert (not b!2805310))

(assert (not b!2805309))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!80491))

(assert (not b_next!80489))

(assert b_and!204573)

(assert b_and!204577)

(assert b_and!204569)

(assert (not b_next!80495))

(assert (not b_next!80485))

(assert (not b_next!80493))

(assert b_and!204567)

(assert b_and!204575)

(assert b_and!204571)

(assert (not b_next!80487))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2805394 () Bool)

(declare-fun e!1773470 () Bool)

(declare-fun e!1773469 () Bool)

(assert (=> b!2805394 (= e!1773470 e!1773469)))

(declare-fun c!454611 () Bool)

(assert (=> b!2805394 (= c!454611 (is-IntegerValue!15319 (value!157105 (h!38110 l!5055))))))

(declare-fun b!2805395 () Bool)

(declare-fun inv!16 (TokenValue!5106) Bool)

(assert (=> b!2805395 (= e!1773470 (inv!16 (value!157105 (h!38110 l!5055))))))

(declare-fun b!2805396 () Bool)

(declare-fun res!1168747 () Bool)

(declare-fun e!1773471 () Bool)

(assert (=> b!2805396 (=> res!1168747 e!1773471)))

(assert (=> b!2805396 (= res!1168747 (not (is-IntegerValue!15320 (value!157105 (h!38110 l!5055)))))))

(assert (=> b!2805396 (= e!1773469 e!1773471)))

(declare-fun b!2805397 () Bool)

(declare-fun inv!17 (TokenValue!5106) Bool)

(assert (=> b!2805397 (= e!1773469 (inv!17 (value!157105 (h!38110 l!5055))))))

(declare-fun d!814412 () Bool)

(declare-fun c!454610 () Bool)

(assert (=> d!814412 (= c!454610 (is-IntegerValue!15318 (value!157105 (h!38110 l!5055))))))

(assert (=> d!814412 (= (inv!21 (value!157105 (h!38110 l!5055))) e!1773470)))

(declare-fun b!2805398 () Bool)

(declare-fun inv!15 (TokenValue!5106) Bool)

(assert (=> b!2805398 (= e!1773471 (inv!15 (value!157105 (h!38110 l!5055))))))

(assert (= (and d!814412 c!454610) b!2805395))

(assert (= (and d!814412 (not c!454610)) b!2805394))

(assert (= (and b!2805394 c!454611) b!2805397))

(assert (= (and b!2805394 (not c!454611)) b!2805396))

(assert (= (and b!2805396 (not res!1168747)) b!2805398))

(declare-fun m!3234593 () Bool)

(assert (=> b!2805395 m!3234593))

(declare-fun m!3234595 () Bool)

(assert (=> b!2805397 m!3234595))

(declare-fun m!3234597 () Bool)

(assert (=> b!2805398 m!3234597))

(assert (=> b!2805311 d!814412))

(declare-fun d!814416 () Bool)

(declare-fun res!1168750 () Bool)

(declare-fun e!1773474 () Bool)

(assert (=> d!814416 (=> (not res!1168750) (not e!1773474))))

(declare-fun rulesValid!1803 (LexerInterface!4475 List!32791) Bool)

(assert (=> d!814416 (= res!1168750 (rulesValid!1803 thiss!19710 rules!2540))))

(assert (=> d!814416 (= (rulesInvariant!3915 thiss!19710 rules!2540) e!1773474)))

(declare-fun b!2805401 () Bool)

(declare-datatypes ((List!32796 0))(
  ( (Nil!32696) (Cons!32696 (h!38116 String!35868) (t!229115 List!32796)) )
))
(declare-fun noDuplicateTag!1799 (LexerInterface!4475 List!32791 List!32796) Bool)

(assert (=> b!2805401 (= e!1773474 (noDuplicateTag!1799 thiss!19710 rules!2540 Nil!32696))))

(assert (= (and d!814416 res!1168750) b!2805401))

(declare-fun m!3234599 () Bool)

(assert (=> d!814416 m!3234599))

(declare-fun m!3234601 () Bool)

(assert (=> b!2805401 m!3234601))

(assert (=> b!2805310 d!814416))

(declare-fun b!2805402 () Bool)

(declare-fun e!1773476 () Bool)

(declare-fun e!1773475 () Bool)

(assert (=> b!2805402 (= e!1773476 e!1773475)))

(declare-fun c!454613 () Bool)

(assert (=> b!2805402 (= c!454613 (is-IntegerValue!15319 (value!157105 separatorToken!283)))))

(declare-fun b!2805403 () Bool)

(assert (=> b!2805403 (= e!1773476 (inv!16 (value!157105 separatorToken!283)))))

(declare-fun b!2805404 () Bool)

(declare-fun res!1168751 () Bool)

(declare-fun e!1773477 () Bool)

(assert (=> b!2805404 (=> res!1168751 e!1773477)))

(assert (=> b!2805404 (= res!1168751 (not (is-IntegerValue!15320 (value!157105 separatorToken!283))))))

(assert (=> b!2805404 (= e!1773475 e!1773477)))

(declare-fun b!2805405 () Bool)

(assert (=> b!2805405 (= e!1773475 (inv!17 (value!157105 separatorToken!283)))))

(declare-fun d!814420 () Bool)

(declare-fun c!454612 () Bool)

(assert (=> d!814420 (= c!454612 (is-IntegerValue!15318 (value!157105 separatorToken!283)))))

(assert (=> d!814420 (= (inv!21 (value!157105 separatorToken!283)) e!1773476)))

(declare-fun b!2805406 () Bool)

(assert (=> b!2805406 (= e!1773477 (inv!15 (value!157105 separatorToken!283)))))

(assert (= (and d!814420 c!454612) b!2805403))

(assert (= (and d!814420 (not c!454612)) b!2805402))

(assert (= (and b!2805402 c!454613) b!2805405))

(assert (= (and b!2805402 (not c!454613)) b!2805404))

(assert (= (and b!2805404 (not res!1168751)) b!2805406))

(declare-fun m!3234603 () Bool)

(assert (=> b!2805403 m!3234603))

(declare-fun m!3234605 () Bool)

(assert (=> b!2805405 m!3234605))

(declare-fun m!3234607 () Bool)

(assert (=> b!2805406 m!3234607))

(assert (=> b!2805321 d!814420))

(declare-fun d!814422 () Bool)

(assert (=> d!814422 (= (isEmpty!18170 rules!2540) (is-Nil!32691 rules!2540))))

(assert (=> b!2805320 d!814422))

(declare-fun d!814424 () Bool)

(declare-fun res!1168761 () Bool)

(declare-fun e!1773485 () Bool)

(assert (=> d!814424 (=> (not res!1168761) (not e!1773485))))

(declare-fun isEmpty!18172 (List!32789) Bool)

(assert (=> d!814424 (= res!1168761 (not (isEmpty!18172 (originalCharacters!5616 separatorToken!283))))))

(assert (=> d!814424 (= (inv!44365 separatorToken!283) e!1773485)))

(declare-fun b!2805417 () Bool)

(declare-fun res!1168762 () Bool)

(assert (=> b!2805417 (=> (not res!1168762) (not e!1773485))))

(declare-fun list!12241 (BalanceConc!19844) List!32789)

(declare-fun dynLambda!13669 (Int TokenValue!5106) BalanceConc!19844)

(assert (=> b!2805417 (= res!1168762 (= (originalCharacters!5616 separatorToken!283) (list!12241 (dynLambda!13669 (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283))) (value!157105 separatorToken!283)))))))

(declare-fun b!2805418 () Bool)

(declare-fun size!25506 (List!32789) Int)

(assert (=> b!2805418 (= e!1773485 (= (size!25504 separatorToken!283) (size!25506 (originalCharacters!5616 separatorToken!283))))))

(assert (= (and d!814424 res!1168761) b!2805417))

(assert (= (and b!2805417 res!1168762) b!2805418))

(declare-fun b_lambda!83799 () Bool)

(assert (=> (not b_lambda!83799) (not b!2805417)))

(declare-fun t!229091 () Bool)

(declare-fun tb!153073 () Bool)

(assert (=> (and b!2805323 (= (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283))) (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283)))) t!229091) tb!153073))

(declare-fun b!2805423 () Bool)

(declare-fun e!1773488 () Bool)

(declare-fun tp!895005 () Bool)

(declare-fun inv!44369 (Conc!10115) Bool)

(assert (=> b!2805423 (= e!1773488 (and (inv!44369 (c!454602 (dynLambda!13669 (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283))) (value!157105 separatorToken!283)))) tp!895005))))

(declare-fun result!190210 () Bool)

(declare-fun inv!44370 (BalanceConc!19844) Bool)

(assert (=> tb!153073 (= result!190210 (and (inv!44370 (dynLambda!13669 (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283))) (value!157105 separatorToken!283))) e!1773488))))

(assert (= tb!153073 b!2805423))

(declare-fun m!3234625 () Bool)

(assert (=> b!2805423 m!3234625))

(declare-fun m!3234627 () Bool)

(assert (=> tb!153073 m!3234627))

(assert (=> b!2805417 t!229091))

(declare-fun b_and!204603 () Bool)

(assert (= b_and!204569 (and (=> t!229091 result!190210) b_and!204603)))

(declare-fun t!229093 () Bool)

(declare-fun tb!153075 () Bool)

(assert (=> (and b!2805312 (= (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055)))) (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283)))) t!229093) tb!153075))

(declare-fun result!190214 () Bool)

(assert (= result!190214 result!190210))

(assert (=> b!2805417 t!229093))

(declare-fun b_and!204605 () Bool)

(assert (= b_and!204573 (and (=> t!229093 result!190214) b_and!204605)))

(declare-fun t!229095 () Bool)

(declare-fun tb!153077 () Bool)

(assert (=> (and b!2805313 (= (toChars!6741 (transformation!4884 (h!38111 rules!2540))) (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283)))) t!229095) tb!153077))

(declare-fun result!190216 () Bool)

(assert (= result!190216 result!190210))

(assert (=> b!2805417 t!229095))

(declare-fun b_and!204607 () Bool)

(assert (= b_and!204577 (and (=> t!229095 result!190216) b_and!204607)))

(declare-fun m!3234629 () Bool)

(assert (=> d!814424 m!3234629))

(declare-fun m!3234631 () Bool)

(assert (=> b!2805417 m!3234631))

(assert (=> b!2805417 m!3234631))

(declare-fun m!3234633 () Bool)

(assert (=> b!2805417 m!3234633))

(declare-fun m!3234635 () Bool)

(assert (=> b!2805418 m!3234635))

(assert (=> start!271318 d!814424))

(declare-fun b!2805464 () Bool)

(declare-fun e!1773519 () Bool)

(assert (=> b!2805464 (= e!1773519 true)))

(declare-fun b!2805463 () Bool)

(declare-fun e!1773518 () Bool)

(assert (=> b!2805463 (= e!1773518 e!1773519)))

(declare-fun b!2805462 () Bool)

(declare-fun e!1773517 () Bool)

(assert (=> b!2805462 (= e!1773517 e!1773518)))

(declare-fun d!814432 () Bool)

(assert (=> d!814432 e!1773517))

(assert (= b!2805463 b!2805464))

(assert (= b!2805462 b!2805463))

(assert (= (and d!814432 (is-Cons!32691 rules!2540)) b!2805462))

(declare-fun order!17325 () Int)

(declare-fun lambda!103054 () Int)

(declare-fun order!17327 () Int)

(declare-fun dynLambda!13670 (Int Int) Int)

(declare-fun dynLambda!13671 (Int Int) Int)

(assert (=> b!2805464 (< (dynLambda!13670 order!17325 (toValue!6882 (transformation!4884 (h!38111 rules!2540)))) (dynLambda!13671 order!17327 lambda!103054))))

(declare-fun order!17329 () Int)

(declare-fun dynLambda!13672 (Int Int) Int)

(assert (=> b!2805464 (< (dynLambda!13672 order!17329 (toChars!6741 (transformation!4884 (h!38111 rules!2540)))) (dynLambda!13671 order!17327 lambda!103054))))

(assert (=> d!814432 true))

(declare-fun lt!1002957 () Bool)

(declare-fun forall!6725 (List!32790 Int) Bool)

(assert (=> d!814432 (= lt!1002957 (forall!6725 l!5055 lambda!103054))))

(declare-fun e!1773510 () Bool)

(assert (=> d!814432 (= lt!1002957 e!1773510)))

(declare-fun res!1168776 () Bool)

(assert (=> d!814432 (=> res!1168776 e!1773510)))

(assert (=> d!814432 (= res!1168776 (not (is-Cons!32690 l!5055)))))

(assert (=> d!814432 (not (isEmpty!18170 rules!2540))))

(assert (=> d!814432 (= (rulesProduceEachTokenIndividuallyList!1549 thiss!19710 rules!2540 l!5055) lt!1002957)))

(declare-fun b!2805452 () Bool)

(declare-fun e!1773509 () Bool)

(assert (=> b!2805452 (= e!1773510 e!1773509)))

(declare-fun res!1168775 () Bool)

(assert (=> b!2805452 (=> (not res!1168775) (not e!1773509))))

(assert (=> b!2805452 (= res!1168775 (rulesProduceIndividualToken!2039 thiss!19710 rules!2540 (h!38110 l!5055)))))

(declare-fun b!2805453 () Bool)

(assert (=> b!2805453 (= e!1773509 (rulesProduceEachTokenIndividuallyList!1549 thiss!19710 rules!2540 (t!229072 l!5055)))))

(assert (= (and d!814432 (not res!1168776)) b!2805452))

(assert (= (and b!2805452 res!1168775) b!2805453))

(declare-fun m!3234649 () Bool)

(assert (=> d!814432 m!3234649))

(assert (=> d!814432 m!3234541))

(declare-fun m!3234651 () Bool)

(assert (=> b!2805452 m!3234651))

(declare-fun m!3234653 () Bool)

(assert (=> b!2805453 m!3234653))

(assert (=> b!2805309 d!814432))

(declare-fun d!814438 () Bool)

(declare-fun res!1168777 () Bool)

(declare-fun e!1773520 () Bool)

(assert (=> d!814438 (=> (not res!1168777) (not e!1773520))))

(assert (=> d!814438 (= res!1168777 (not (isEmpty!18172 (originalCharacters!5616 (h!38110 l!5055)))))))

(assert (=> d!814438 (= (inv!44365 (h!38110 l!5055)) e!1773520)))

(declare-fun b!2805467 () Bool)

(declare-fun res!1168778 () Bool)

(assert (=> b!2805467 (=> (not res!1168778) (not e!1773520))))

(assert (=> b!2805467 (= res!1168778 (= (originalCharacters!5616 (h!38110 l!5055)) (list!12241 (dynLambda!13669 (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055)))) (value!157105 (h!38110 l!5055))))))))

(declare-fun b!2805468 () Bool)

(assert (=> b!2805468 (= e!1773520 (= (size!25504 (h!38110 l!5055)) (size!25506 (originalCharacters!5616 (h!38110 l!5055)))))))

(assert (= (and d!814438 res!1168777) b!2805467))

(assert (= (and b!2805467 res!1168778) b!2805468))

(declare-fun b_lambda!83801 () Bool)

(assert (=> (not b_lambda!83801) (not b!2805467)))

(declare-fun tb!153079 () Bool)

(declare-fun t!229101 () Bool)

(assert (=> (and b!2805323 (= (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283))) (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055))))) t!229101) tb!153079))

(declare-fun b!2805469 () Bool)

(declare-fun e!1773521 () Bool)

(declare-fun tp!895006 () Bool)

(assert (=> b!2805469 (= e!1773521 (and (inv!44369 (c!454602 (dynLambda!13669 (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055)))) (value!157105 (h!38110 l!5055))))) tp!895006))))

(declare-fun result!190218 () Bool)

(assert (=> tb!153079 (= result!190218 (and (inv!44370 (dynLambda!13669 (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055)))) (value!157105 (h!38110 l!5055)))) e!1773521))))

(assert (= tb!153079 b!2805469))

(declare-fun m!3234655 () Bool)

(assert (=> b!2805469 m!3234655))

(declare-fun m!3234657 () Bool)

(assert (=> tb!153079 m!3234657))

(assert (=> b!2805467 t!229101))

(declare-fun b_and!204609 () Bool)

(assert (= b_and!204603 (and (=> t!229101 result!190218) b_and!204609)))

(declare-fun t!229103 () Bool)

(declare-fun tb!153081 () Bool)

(assert (=> (and b!2805312 (= (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055)))) (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055))))) t!229103) tb!153081))

(declare-fun result!190220 () Bool)

(assert (= result!190220 result!190218))

(assert (=> b!2805467 t!229103))

(declare-fun b_and!204611 () Bool)

(assert (= b_and!204605 (and (=> t!229103 result!190220) b_and!204611)))

(declare-fun tb!153083 () Bool)

(declare-fun t!229105 () Bool)

(assert (=> (and b!2805313 (= (toChars!6741 (transformation!4884 (h!38111 rules!2540))) (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055))))) t!229105) tb!153083))

(declare-fun result!190222 () Bool)

(assert (= result!190222 result!190218))

(assert (=> b!2805467 t!229105))

(declare-fun b_and!204613 () Bool)

(assert (= b_and!204607 (and (=> t!229105 result!190222) b_and!204613)))

(declare-fun m!3234659 () Bool)

(assert (=> d!814438 m!3234659))

(declare-fun m!3234661 () Bool)

(assert (=> b!2805467 m!3234661))

(assert (=> b!2805467 m!3234661))

(declare-fun m!3234663 () Bool)

(assert (=> b!2805467 m!3234663))

(declare-fun m!3234665 () Bool)

(assert (=> b!2805468 m!3234665))

(assert (=> b!2805322 d!814438))

(declare-fun d!814440 () Bool)

(declare-fun lt!1002963 () Bool)

(declare-fun e!1773526 () Bool)

(assert (=> d!814440 (= lt!1002963 e!1773526)))

(declare-fun res!1168787 () Bool)

(assert (=> d!814440 (=> (not res!1168787) (not e!1773526))))

(declare-datatypes ((IArray!20239 0))(
  ( (IArray!20240 (innerList!10177 List!32790)) )
))
(declare-datatypes ((Conc!10117 0))(
  ( (Node!10117 (left!24674 Conc!10117) (right!25004 Conc!10117) (csize!20464 Int) (cheight!10328 Int)) (Leaf!15413 (xs!13229 IArray!20239) (csize!20465 Int)) (Empty!10117) )
))
(declare-datatypes ((BalanceConc!19848 0))(
  ( (BalanceConc!19849 (c!454628 Conc!10117)) )
))
(declare-fun list!12242 (BalanceConc!19848) List!32790)

(declare-datatypes ((tuple2!33302 0))(
  ( (tuple2!33303 (_1!19744 BalanceConc!19848) (_2!19744 BalanceConc!19844)) )
))
(declare-fun lex!1971 (LexerInterface!4475 List!32791 BalanceConc!19844) tuple2!33302)

(declare-fun print!1690 (LexerInterface!4475 BalanceConc!19848) BalanceConc!19844)

(declare-fun singletonSeq!2111 (Token!9170) BalanceConc!19848)

(assert (=> d!814440 (= res!1168787 (= (list!12242 (_1!19744 (lex!1971 thiss!19710 rules!2540 (print!1690 thiss!19710 (singletonSeq!2111 separatorToken!283))))) (list!12242 (singletonSeq!2111 separatorToken!283))))))

(declare-fun e!1773527 () Bool)

(assert (=> d!814440 (= lt!1002963 e!1773527)))

(declare-fun res!1168786 () Bool)

(assert (=> d!814440 (=> (not res!1168786) (not e!1773527))))

(declare-fun lt!1002962 () tuple2!33302)

(declare-fun size!25507 (BalanceConc!19848) Int)

(assert (=> d!814440 (= res!1168786 (= (size!25507 (_1!19744 lt!1002962)) 1))))

(assert (=> d!814440 (= lt!1002962 (lex!1971 thiss!19710 rules!2540 (print!1690 thiss!19710 (singletonSeq!2111 separatorToken!283))))))

(assert (=> d!814440 (not (isEmpty!18170 rules!2540))))

(assert (=> d!814440 (= (rulesProduceIndividualToken!2039 thiss!19710 rules!2540 separatorToken!283) lt!1002963)))

(declare-fun b!2805476 () Bool)

(declare-fun res!1168785 () Bool)

(assert (=> b!2805476 (=> (not res!1168785) (not e!1773527))))

(declare-fun apply!7638 (BalanceConc!19848 Int) Token!9170)

(assert (=> b!2805476 (= res!1168785 (= (apply!7638 (_1!19744 lt!1002962) 0) separatorToken!283))))

(declare-fun b!2805477 () Bool)

(declare-fun isEmpty!18173 (BalanceConc!19844) Bool)

(assert (=> b!2805477 (= e!1773527 (isEmpty!18173 (_2!19744 lt!1002962)))))

(declare-fun b!2805478 () Bool)

(assert (=> b!2805478 (= e!1773526 (isEmpty!18173 (_2!19744 (lex!1971 thiss!19710 rules!2540 (print!1690 thiss!19710 (singletonSeq!2111 separatorToken!283))))))))

(assert (= (and d!814440 res!1168786) b!2805476))

(assert (= (and b!2805476 res!1168785) b!2805477))

(assert (= (and d!814440 res!1168787) b!2805478))

(declare-fun m!3234667 () Bool)

(assert (=> d!814440 m!3234667))

(declare-fun m!3234669 () Bool)

(assert (=> d!814440 m!3234669))

(assert (=> d!814440 m!3234667))

(declare-fun m!3234671 () Bool)

(assert (=> d!814440 m!3234671))

(declare-fun m!3234673 () Bool)

(assert (=> d!814440 m!3234673))

(assert (=> d!814440 m!3234541))

(declare-fun m!3234675 () Bool)

(assert (=> d!814440 m!3234675))

(assert (=> d!814440 m!3234667))

(assert (=> d!814440 m!3234671))

(declare-fun m!3234677 () Bool)

(assert (=> d!814440 m!3234677))

(declare-fun m!3234679 () Bool)

(assert (=> b!2805476 m!3234679))

(declare-fun m!3234681 () Bool)

(assert (=> b!2805477 m!3234681))

(assert (=> b!2805478 m!3234667))

(assert (=> b!2805478 m!3234667))

(assert (=> b!2805478 m!3234671))

(assert (=> b!2805478 m!3234671))

(assert (=> b!2805478 m!3234673))

(declare-fun m!3234683 () Bool)

(assert (=> b!2805478 m!3234683))

(assert (=> b!2805315 d!814440))

(declare-fun d!814442 () Bool)

(assert (=> d!814442 (= (inv!44362 (tag!5388 (rule!7312 (h!38110 l!5055)))) (= (mod (str.len (value!157104 (tag!5388 (rule!7312 (h!38110 l!5055))))) 2) 0))))

(assert (=> b!2805314 d!814442))

(declare-fun d!814444 () Bool)

(declare-fun res!1168792 () Bool)

(declare-fun e!1773541 () Bool)

(assert (=> d!814444 (=> (not res!1168792) (not e!1773541))))

(declare-fun semiInverseModEq!2014 (Int Int) Bool)

(assert (=> d!814444 (= res!1168792 (semiInverseModEq!2014 (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055)))) (toValue!6882 (transformation!4884 (rule!7312 (h!38110 l!5055))))))))

(assert (=> d!814444 (= (inv!44366 (transformation!4884 (rule!7312 (h!38110 l!5055)))) e!1773541)))

(declare-fun b!2805496 () Bool)

(declare-fun equivClasses!1915 (Int Int) Bool)

(assert (=> b!2805496 (= e!1773541 (equivClasses!1915 (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055)))) (toValue!6882 (transformation!4884 (rule!7312 (h!38110 l!5055))))))))

(assert (= (and d!814444 res!1168792) b!2805496))

(declare-fun m!3234691 () Bool)

(assert (=> d!814444 m!3234691))

(declare-fun m!3234695 () Bool)

(assert (=> b!2805496 m!3234695))

(assert (=> b!2805314 d!814444))

(declare-fun d!814452 () Bool)

(declare-fun lt!1002969 () Int)

(assert (=> d!814452 (>= lt!1002969 0)))

(declare-fun e!1773548 () Int)

(assert (=> d!814452 (= lt!1002969 e!1773548)))

(declare-fun c!454626 () Bool)

(assert (=> d!814452 (= c!454626 (is-Nil!32690 l!5055))))

(assert (=> d!814452 (= (ListPrimitiveSize!200 l!5055) lt!1002969)))

(declare-fun b!2805507 () Bool)

(assert (=> b!2805507 (= e!1773548 0)))

(declare-fun b!2805508 () Bool)

(assert (=> b!2805508 (= e!1773548 (+ 1 (ListPrimitiveSize!200 (t!229072 l!5055))))))

(assert (= (and d!814452 c!454626) b!2805507))

(assert (= (and d!814452 (not c!454626)) b!2805508))

(declare-fun m!3234703 () Bool)

(assert (=> b!2805508 m!3234703))

(assert (=> b!2805319 d!814452))

(declare-fun d!814458 () Bool)

(assert (=> d!814458 (= (inv!44362 (tag!5388 (h!38111 rules!2540))) (= (mod (str.len (value!157104 (tag!5388 (h!38111 rules!2540)))) 2) 0))))

(assert (=> b!2805318 d!814458))

(declare-fun d!814460 () Bool)

(declare-fun res!1168795 () Bool)

(declare-fun e!1773550 () Bool)

(assert (=> d!814460 (=> (not res!1168795) (not e!1773550))))

(assert (=> d!814460 (= res!1168795 (semiInverseModEq!2014 (toChars!6741 (transformation!4884 (h!38111 rules!2540))) (toValue!6882 (transformation!4884 (h!38111 rules!2540)))))))

(assert (=> d!814460 (= (inv!44366 (transformation!4884 (h!38111 rules!2540))) e!1773550)))

(declare-fun b!2805511 () Bool)

(assert (=> b!2805511 (= e!1773550 (equivClasses!1915 (toChars!6741 (transformation!4884 (h!38111 rules!2540))) (toValue!6882 (transformation!4884 (h!38111 rules!2540)))))))

(assert (= (and d!814460 res!1168795) b!2805511))

(declare-fun m!3234707 () Bool)

(assert (=> d!814460 m!3234707))

(declare-fun m!3234709 () Bool)

(assert (=> b!2805511 m!3234709))

(assert (=> b!2805318 d!814460))

(declare-fun d!814464 () Bool)

(assert (=> d!814464 (= (inv!44362 (tag!5388 (rule!7312 separatorToken!283))) (= (mod (str.len (value!157104 (tag!5388 (rule!7312 separatorToken!283)))) 2) 0))))

(assert (=> b!2805317 d!814464))

(declare-fun d!814466 () Bool)

(declare-fun res!1168796 () Bool)

(declare-fun e!1773551 () Bool)

(assert (=> d!814466 (=> (not res!1168796) (not e!1773551))))

(assert (=> d!814466 (= res!1168796 (semiInverseModEq!2014 (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283))) (toValue!6882 (transformation!4884 (rule!7312 separatorToken!283)))))))

(assert (=> d!814466 (= (inv!44366 (transformation!4884 (rule!7312 separatorToken!283))) e!1773551)))

(declare-fun b!2805512 () Bool)

(assert (=> b!2805512 (= e!1773551 (equivClasses!1915 (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283))) (toValue!6882 (transformation!4884 (rule!7312 separatorToken!283)))))))

(assert (= (and d!814466 res!1168796) b!2805512))

(declare-fun m!3234711 () Bool)

(assert (=> d!814466 m!3234711))

(declare-fun m!3234713 () Bool)

(assert (=> b!2805512 m!3234713))

(assert (=> b!2805317 d!814466))

(declare-fun b!2805523 () Bool)

(declare-fun b_free!79805 () Bool)

(declare-fun b_next!80509 () Bool)

(assert (=> b!2805523 (= b_free!79805 (not b_next!80509))))

(declare-fun tp!895015 () Bool)

(declare-fun b_and!204615 () Bool)

(assert (=> b!2805523 (= tp!895015 b_and!204615)))

(declare-fun b_free!79807 () Bool)

(declare-fun b_next!80511 () Bool)

(assert (=> b!2805523 (= b_free!79807 (not b_next!80511))))

(declare-fun tb!153085 () Bool)

(declare-fun t!229108 () Bool)

(assert (=> (and b!2805523 (= (toChars!6741 (transformation!4884 (h!38111 (t!229073 rules!2540)))) (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283)))) t!229108) tb!153085))

(declare-fun result!190226 () Bool)

(assert (= result!190226 result!190210))

(assert (=> b!2805417 t!229108))

(declare-fun tb!153087 () Bool)

(declare-fun t!229110 () Bool)

(assert (=> (and b!2805523 (= (toChars!6741 (transformation!4884 (h!38111 (t!229073 rules!2540)))) (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055))))) t!229110) tb!153087))

(declare-fun result!190228 () Bool)

(assert (= result!190228 result!190218))

(assert (=> b!2805467 t!229110))

(declare-fun b_and!204617 () Bool)

(declare-fun tp!895018 () Bool)

(assert (=> b!2805523 (= tp!895018 (and (=> t!229108 result!190226) (=> t!229110 result!190228) b_and!204617))))

(declare-fun e!1773560 () Bool)

(assert (=> b!2805523 (= e!1773560 (and tp!895015 tp!895018))))

(declare-fun b!2805522 () Bool)

(declare-fun e!1773561 () Bool)

(declare-fun tp!895016 () Bool)

(assert (=> b!2805522 (= e!1773561 (and tp!895016 (inv!44362 (tag!5388 (h!38111 (t!229073 rules!2540)))) (inv!44366 (transformation!4884 (h!38111 (t!229073 rules!2540)))) e!1773560))))

(declare-fun b!2805521 () Bool)

(declare-fun e!1773563 () Bool)

(declare-fun tp!895017 () Bool)

(assert (=> b!2805521 (= e!1773563 (and e!1773561 tp!895017))))

(assert (=> b!2805316 (= tp!894952 e!1773563)))

(assert (= b!2805522 b!2805523))

(assert (= b!2805521 b!2805522))

(assert (= (and b!2805316 (is-Cons!32691 (t!229073 rules!2540))) b!2805521))

(declare-fun m!3234715 () Bool)

(assert (=> b!2805522 m!3234715))

(declare-fun m!3234717 () Bool)

(assert (=> b!2805522 m!3234717))

(declare-fun b!2805528 () Bool)

(declare-fun e!1773566 () Bool)

(declare-fun tp_is_empty!14293 () Bool)

(declare-fun tp!895021 () Bool)

(assert (=> b!2805528 (= e!1773566 (and tp_is_empty!14293 tp!895021))))

(assert (=> b!2805311 (= tp!894956 e!1773566)))

(assert (= (and b!2805311 (is-Cons!32689 (originalCharacters!5616 (h!38110 l!5055)))) b!2805528))

(declare-fun b!2805529 () Bool)

(declare-fun e!1773567 () Bool)

(declare-fun tp!895022 () Bool)

(assert (=> b!2805529 (= e!1773567 (and tp_is_empty!14293 tp!895022))))

(assert (=> b!2805321 (= tp!894947 e!1773567)))

(assert (= (and b!2805321 (is-Cons!32689 (originalCharacters!5616 separatorToken!283))) b!2805529))

(declare-fun b!2805542 () Bool)

(declare-fun e!1773570 () Bool)

(declare-fun tp!895033 () Bool)

(assert (=> b!2805542 (= e!1773570 tp!895033)))

(declare-fun b!2805543 () Bool)

(declare-fun tp!895037 () Bool)

(declare-fun tp!895036 () Bool)

(assert (=> b!2805543 (= e!1773570 (and tp!895037 tp!895036))))

(declare-fun b!2805540 () Bool)

(assert (=> b!2805540 (= e!1773570 tp_is_empty!14293)))

(assert (=> b!2805314 (= tp!894950 e!1773570)))

(declare-fun b!2805541 () Bool)

(declare-fun tp!895035 () Bool)

(declare-fun tp!895034 () Bool)

(assert (=> b!2805541 (= e!1773570 (and tp!895035 tp!895034))))

(assert (= (and b!2805314 (is-ElementMatch!8254 (regex!4884 (rule!7312 (h!38110 l!5055))))) b!2805540))

(assert (= (and b!2805314 (is-Concat!13361 (regex!4884 (rule!7312 (h!38110 l!5055))))) b!2805541))

(assert (= (and b!2805314 (is-Star!8254 (regex!4884 (rule!7312 (h!38110 l!5055))))) b!2805542))

(assert (= (and b!2805314 (is-Union!8254 (regex!4884 (rule!7312 (h!38110 l!5055))))) b!2805543))

(declare-fun b!2805546 () Bool)

(declare-fun e!1773571 () Bool)

(declare-fun tp!895038 () Bool)

(assert (=> b!2805546 (= e!1773571 tp!895038)))

(declare-fun b!2805547 () Bool)

(declare-fun tp!895042 () Bool)

(declare-fun tp!895041 () Bool)

(assert (=> b!2805547 (= e!1773571 (and tp!895042 tp!895041))))

(declare-fun b!2805544 () Bool)

(assert (=> b!2805544 (= e!1773571 tp_is_empty!14293)))

(assert (=> b!2805318 (= tp!894958 e!1773571)))

(declare-fun b!2805545 () Bool)

(declare-fun tp!895040 () Bool)

(declare-fun tp!895039 () Bool)

(assert (=> b!2805545 (= e!1773571 (and tp!895040 tp!895039))))

(assert (= (and b!2805318 (is-ElementMatch!8254 (regex!4884 (h!38111 rules!2540)))) b!2805544))

(assert (= (and b!2805318 (is-Concat!13361 (regex!4884 (h!38111 rules!2540)))) b!2805545))

(assert (= (and b!2805318 (is-Star!8254 (regex!4884 (h!38111 rules!2540)))) b!2805546))

(assert (= (and b!2805318 (is-Union!8254 (regex!4884 (h!38111 rules!2540)))) b!2805547))

(declare-fun b!2805561 () Bool)

(declare-fun b_free!79809 () Bool)

(declare-fun b_next!80513 () Bool)

(assert (=> b!2805561 (= b_free!79809 (not b_next!80513))))

(declare-fun tp!895053 () Bool)

(declare-fun b_and!204619 () Bool)

(assert (=> b!2805561 (= tp!895053 b_and!204619)))

(declare-fun b_free!79811 () Bool)

(declare-fun b_next!80515 () Bool)

(assert (=> b!2805561 (= b_free!79811 (not b_next!80515))))

(declare-fun tb!153089 () Bool)

(declare-fun t!229112 () Bool)

(assert (=> (and b!2805561 (= (toChars!6741 (transformation!4884 (rule!7312 (h!38110 (t!229072 l!5055))))) (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283)))) t!229112) tb!153089))

(declare-fun result!190236 () Bool)

(assert (= result!190236 result!190210))

(assert (=> b!2805417 t!229112))

(declare-fun t!229114 () Bool)

(declare-fun tb!153091 () Bool)

(assert (=> (and b!2805561 (= (toChars!6741 (transformation!4884 (rule!7312 (h!38110 (t!229072 l!5055))))) (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055))))) t!229114) tb!153091))

(declare-fun result!190238 () Bool)

(assert (= result!190238 result!190218))

(assert (=> b!2805467 t!229114))

(declare-fun tp!895057 () Bool)

(declare-fun b_and!204621 () Bool)

(assert (=> b!2805561 (= tp!895057 (and (=> t!229112 result!190236) (=> t!229114 result!190238) b_and!204621))))

(declare-fun e!1773586 () Bool)

(declare-fun tp!895055 () Bool)

(declare-fun b!2805560 () Bool)

(declare-fun e!1773588 () Bool)

(assert (=> b!2805560 (= e!1773586 (and tp!895055 (inv!44362 (tag!5388 (rule!7312 (h!38110 (t!229072 l!5055))))) (inv!44366 (transformation!4884 (rule!7312 (h!38110 (t!229072 l!5055))))) e!1773588))))

(assert (=> b!2805561 (= e!1773588 (and tp!895053 tp!895057))))

(declare-fun tp!895056 () Bool)

(declare-fun e!1773584 () Bool)

(declare-fun b!2805559 () Bool)

(assert (=> b!2805559 (= e!1773584 (and (inv!21 (value!157105 (h!38110 (t!229072 l!5055)))) e!1773586 tp!895056))))

(declare-fun e!1773585 () Bool)

(assert (=> b!2805322 (= tp!894951 e!1773585)))

(declare-fun b!2805558 () Bool)

(declare-fun tp!895054 () Bool)

(assert (=> b!2805558 (= e!1773585 (and (inv!44365 (h!38110 (t!229072 l!5055))) e!1773584 tp!895054))))

(assert (= b!2805560 b!2805561))

(assert (= b!2805559 b!2805560))

(assert (= b!2805558 b!2805559))

(assert (= (and b!2805322 (is-Cons!32690 (t!229072 l!5055))) b!2805558))

(declare-fun m!3234719 () Bool)

(assert (=> b!2805560 m!3234719))

(declare-fun m!3234721 () Bool)

(assert (=> b!2805560 m!3234721))

(declare-fun m!3234723 () Bool)

(assert (=> b!2805559 m!3234723))

(declare-fun m!3234725 () Bool)

(assert (=> b!2805558 m!3234725))

(declare-fun b!2805564 () Bool)

(declare-fun e!1773590 () Bool)

(declare-fun tp!895058 () Bool)

(assert (=> b!2805564 (= e!1773590 tp!895058)))

(declare-fun b!2805565 () Bool)

(declare-fun tp!895062 () Bool)

(declare-fun tp!895061 () Bool)

(assert (=> b!2805565 (= e!1773590 (and tp!895062 tp!895061))))

(declare-fun b!2805562 () Bool)

(assert (=> b!2805562 (= e!1773590 tp_is_empty!14293)))

(assert (=> b!2805317 (= tp!894949 e!1773590)))

(declare-fun b!2805563 () Bool)

(declare-fun tp!895060 () Bool)

(declare-fun tp!895059 () Bool)

(assert (=> b!2805563 (= e!1773590 (and tp!895060 tp!895059))))

(assert (= (and b!2805317 (is-ElementMatch!8254 (regex!4884 (rule!7312 separatorToken!283)))) b!2805562))

(assert (= (and b!2805317 (is-Concat!13361 (regex!4884 (rule!7312 separatorToken!283)))) b!2805563))

(assert (= (and b!2805317 (is-Star!8254 (regex!4884 (rule!7312 separatorToken!283)))) b!2805564))

(assert (= (and b!2805317 (is-Union!8254 (regex!4884 (rule!7312 separatorToken!283)))) b!2805565))

(declare-fun b_lambda!83803 () Bool)

(assert (= b_lambda!83801 (or (and b!2805561 b_free!79811 (= (toChars!6741 (transformation!4884 (rule!7312 (h!38110 (t!229072 l!5055))))) (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055)))))) (and b!2805312 b_free!79787) (and b!2805313 b_free!79791 (= (toChars!6741 (transformation!4884 (h!38111 rules!2540))) (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055)))))) (and b!2805323 b_free!79783 (= (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283))) (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055)))))) (and b!2805523 b_free!79807 (= (toChars!6741 (transformation!4884 (h!38111 (t!229073 rules!2540)))) (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055)))))) b_lambda!83803)))

(declare-fun b_lambda!83805 () Bool)

(assert (= b_lambda!83799 (or (and b!2805313 b_free!79791 (= (toChars!6741 (transformation!4884 (h!38111 rules!2540))) (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283))))) (and b!2805561 b_free!79811 (= (toChars!6741 (transformation!4884 (rule!7312 (h!38110 (t!229072 l!5055))))) (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283))))) (and b!2805312 b_free!79787 (= (toChars!6741 (transformation!4884 (rule!7312 (h!38110 l!5055)))) (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283))))) (and b!2805523 b_free!79807 (= (toChars!6741 (transformation!4884 (h!38111 (t!229073 rules!2540)))) (toChars!6741 (transformation!4884 (rule!7312 separatorToken!283))))) (and b!2805323 b_free!79783) b_lambda!83805)))

(push 1)

(assert (not b!2805560))

(assert (not b_lambda!83805))

(assert (not b!2805528))

(assert (not b_next!80495))

(assert (not b!2805469))

(assert (not b!2805565))

(assert (not d!814440))

(assert (not b!2805418))

(assert b_and!204609)

(assert (not b_next!80515))

(assert (not b!2805529))

(assert (not b_next!80491))

(assert (not b!2805417))

(assert (not b!2805453))

(assert (not b!2805467))

(assert (not b!2805395))

(assert (not b!2805545))

(assert (not b_next!80511))

(assert (not b_next!80489))

(assert b_and!204571)

(assert b_and!204613)

(assert (not b_next!80487))

(assert (not b!2805564))

(assert b_and!204617)

(assert (not tb!153073))

(assert (not b!2805462))

(assert (not b!2805423))

(assert (not b!2805541))

(assert (not b!2805401))

(assert (not b!2805452))

(assert b_and!204611)

(assert (not d!814432))

(assert (not b!2805542))

(assert (not b!2805403))

(assert (not b!2805476))

(assert tp_is_empty!14293)

(assert (not b!2805521))

(assert (not d!814424))

(assert (not b!2805563))

(assert (not d!814460))

(assert (not b!2805477))

(assert b_and!204621)

(assert (not b!2805478))

(assert (not b!2805496))

(assert (not b!2805468))

(assert (not b!2805511))

(assert (not tb!153079))

(assert (not b!2805397))

(assert (not b!2805543))

(assert b_and!204615)

(assert (not d!814444))

(assert (not b!2805559))

(assert (not b!2805398))

(assert (not b!2805522))

(assert (not b_next!80485))

(assert (not b!2805512))

(assert (not d!814416))

(assert (not d!814438))

(assert b_and!204619)

(assert (not b!2805405))

(assert (not b_next!80493))

(assert (not b!2805547))

(assert (not b_lambda!83803))

(assert (not b_next!80509))

(assert (not d!814466))

(assert (not b_next!80513))

(assert b_and!204567)

(assert (not b!2805558))

(assert (not b!2805406))

(assert (not b!2805546))

(assert b_and!204575)

(assert (not b!2805508))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!80491))

(assert b_and!204617)

(assert b_and!204611)

(assert b_and!204621)

(assert b_and!204615)

(assert (not b_next!80495))

(assert (not b_next!80485))

(assert (not b_next!80509))

(assert b_and!204575)

(assert b_and!204609)

(assert (not b_next!80515))

(assert (not b_next!80511))

(assert (not b_next!80489))

(assert b_and!204571)

(assert (not b_next!80487))

(assert b_and!204613)

(assert b_and!204619)

(assert (not b_next!80493))

(assert (not b_next!80513))

(assert b_and!204567)

(check-sat)

(pop 1)

