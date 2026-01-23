; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!745034 () Bool)

(assert start!745034)

(declare-fun b!7898538 () Bool)

(declare-fun b_free!134531 () Bool)

(declare-fun b_next!135321 () Bool)

(assert (=> b!7898538 (= b_free!134531 (not b_next!135321))))

(declare-fun tp!2353131 () Bool)

(declare-fun b_and!352431 () Bool)

(assert (=> b!7898538 (= tp!2353131 b_and!352431)))

(declare-fun b_free!134533 () Bool)

(declare-fun b_next!135323 () Bool)

(assert (=> b!7898538 (= b_free!134533 (not b_next!135323))))

(declare-fun tp!2353133 () Bool)

(declare-fun b_and!352433 () Bool)

(assert (=> b!7898538 (= tp!2353133 b_and!352433)))

(declare-fun b!7898533 () Bool)

(declare-fun e!4662103 () Bool)

(declare-fun e!4662101 () Bool)

(declare-fun tp!2353134 () Bool)

(assert (=> b!7898533 (= e!4662103 (and e!4662101 tp!2353134))))

(declare-fun b!7898534 () Bool)

(declare-fun res!3133260 () Bool)

(declare-fun e!4662099 () Bool)

(assert (=> b!7898534 (=> (not res!3133260) (not e!4662099))))

(declare-datatypes ((List!74161 0))(
  ( (Nil!74037) (Cons!74037 (h!80485 (_ BitVec 16)) (t!388970 List!74161)) )
))
(declare-datatypes ((TokenValue!8863 0))(
  ( (FloatLiteralValue!17726 (text!62486 List!74161)) (TokenValueExt!8862 (__x!35013 Int)) (Broken!44315 (value!285546 List!74161)) (Object!8986) (End!8863) (Def!8863) (Underscore!8863) (Match!8863) (Else!8863) (Error!8863) (Case!8863) (If!8863) (Extends!8863) (Abstract!8863) (Class!8863) (Val!8863) (DelimiterValue!17726 (del!8923 List!74161)) (KeywordValue!8869 (value!285547 List!74161)) (CommentValue!17726 (value!285548 List!74161)) (WhitespaceValue!17726 (value!285549 List!74161)) (IndentationValue!8863 (value!285550 List!74161)) (String!82738) (Int32!8863) (Broken!44316 (value!285551 List!74161)) (Boolean!8864) (Unit!169055) (OperatorValue!8866 (op!8923 List!74161)) (IdentifierValue!17726 (value!285552 List!74161)) (IdentifierValue!17727 (value!285553 List!74161)) (WhitespaceValue!17727 (value!285554 List!74161)) (True!17726) (False!17726) (Broken!44317 (value!285555 List!74161)) (Broken!44318 (value!285556 List!74161)) (True!17727) (RightBrace!8863) (RightBracket!8863) (Colon!8863) (Null!8863) (Comma!8863) (LeftBracket!8863) (False!17727) (LeftBrace!8863) (ImaginaryLiteralValue!8863 (text!62487 List!74161)) (StringLiteralValue!26589 (value!285557 List!74161)) (EOFValue!8863 (value!285558 List!74161)) (IdentValue!8863 (value!285559 List!74161)) (DelimiterValue!17727 (value!285560 List!74161)) (DedentValue!8863 (value!285561 List!74161)) (NewLineValue!8863 (value!285562 List!74161)) (IntegerValue!26589 (value!285563 (_ BitVec 32)) (text!62488 List!74161)) (IntegerValue!26590 (value!285564 Int) (text!62489 List!74161)) (Times!8863) (Or!8863) (Equal!8863) (Minus!8863) (Broken!44319 (value!285565 List!74161)) (And!8863) (Div!8863) (LessEqual!8863) (Mod!8863) (Concat!30113) (Not!8863) (Plus!8863) (SpaceValue!8863 (value!285566 List!74161)) (IntegerValue!26591 (value!285567 Int) (text!62490 List!74161)) (StringLiteralValue!26590 (text!62491 List!74161)) (FloatLiteralValue!17727 (text!62492 List!74161)) (BytesLiteralValue!8863 (value!285568 List!74161)) (CommentValue!17727 (value!285569 List!74161)) (StringLiteralValue!26591 (value!285570 List!74161)) (ErrorTokenValue!8863 (msg!8924 List!74161)) )
))
(declare-datatypes ((C!42830 0))(
  ( (C!42831 (val!31879 Int)) )
))
(declare-datatypes ((List!74162 0))(
  ( (Nil!74038) (Cons!74038 (h!80486 C!42830) (t!388971 List!74162)) )
))
(declare-datatypes ((IArray!31503 0))(
  ( (IArray!31504 (innerList!15809 List!74162)) )
))
(declare-datatypes ((Conc!15721 0))(
  ( (Node!15721 (left!56502 Conc!15721) (right!56832 Conc!15721) (csize!31672 Int) (cheight!15932 Int)) (Leaf!29963 (xs!19103 IArray!31503) (csize!31673 Int)) (Empty!15721) )
))
(declare-datatypes ((BalanceConc!30560 0))(
  ( (BalanceConc!30561 (c!1449705 Conc!15721)) )
))
(declare-datatypes ((String!82739 0))(
  ( (String!82740 (value!285571 String)) )
))
(declare-datatypes ((Regex!21250 0))(
  ( (ElementMatch!21250 (c!1449706 C!42830)) (Concat!30114 (regOne!43012 Regex!21250) (regTwo!43012 Regex!21250)) (EmptyExpr!21250) (Star!21250 (reg!21579 Regex!21250)) (EmptyLang!21250) (Union!21250 (regOne!43013 Regex!21250) (regTwo!43013 Regex!21250)) )
))
(declare-datatypes ((TokenValueInjection!17034 0))(
  ( (TokenValueInjection!17035 (toValue!11588 Int) (toChars!11447 Int)) )
))
(declare-datatypes ((Rule!16894 0))(
  ( (Rule!16895 (regex!8547 Regex!21250) (tag!9411 String!82739) (isSeparator!8547 Bool) (transformation!8547 TokenValueInjection!17034)) )
))
(declare-datatypes ((List!74163 0))(
  ( (Nil!74039) (Cons!74039 (h!80487 Rule!16894) (t!388972 List!74163)) )
))
(declare-fun rulesArg!141 () List!74163)

(declare-fun isEmpty!42470 (List!74163) Bool)

(assert (=> b!7898534 (= res!3133260 (not (isEmpty!42470 rulesArg!141)))))

(declare-fun b!7898535 () Bool)

(declare-fun e!4662104 () Bool)

(declare-fun tp_is_empty!52875 () Bool)

(declare-fun tp!2353132 () Bool)

(assert (=> b!7898535 (= e!4662104 (and tp_is_empty!52875 tp!2353132))))

(declare-fun b!7898536 () Bool)

(declare-fun res!3133259 () Bool)

(assert (=> b!7898536 (=> (not res!3133259) (not e!4662099))))

(declare-datatypes ((LexerInterface!8139 0))(
  ( (LexerInterfaceExt!8136 (__x!35014 Int)) (Lexer!8137) )
))
(declare-fun thiss!14377 () LexerInterface!8139)

(declare-fun rulesValidInductive!3358 (LexerInterface!8139 List!74163) Bool)

(assert (=> b!7898536 (= res!3133259 (rulesValidInductive!3358 thiss!14377 rulesArg!141))))

(declare-fun b!7898537 () Bool)

(declare-fun e!4662102 () Bool)

(assert (=> b!7898537 (= e!4662099 (not e!4662102))))

(declare-fun res!3133261 () Bool)

(assert (=> b!7898537 (=> res!3133261 e!4662102)))

(assert (=> b!7898537 (= res!3133261 (or (and (is-Cons!74039 rulesArg!141) (is-Nil!74039 (t!388972 rulesArg!141))) (not (is-Cons!74039 rulesArg!141))))))

(declare-fun input!1184 () List!74162)

(declare-fun isPrefix!6380 (List!74162 List!74162) Bool)

(assert (=> b!7898537 (isPrefix!6380 input!1184 input!1184)))

(declare-datatypes ((Unit!169056 0))(
  ( (Unit!169057) )
))
(declare-fun lt!2682279 () Unit!169056)

(declare-fun lemmaIsPrefixRefl!3891 (List!74162 List!74162) Unit!169056)

(assert (=> b!7898537 (= lt!2682279 (lemmaIsPrefixRefl!3891 input!1184 input!1184))))

(declare-fun e!4662105 () Bool)

(assert (=> b!7898538 (= e!4662105 (and tp!2353131 tp!2353133))))

(declare-fun res!3133258 () Bool)

(assert (=> start!745034 (=> (not res!3133258) (not e!4662099))))

(assert (=> start!745034 (= res!3133258 (is-Lexer!8137 thiss!14377))))

(assert (=> start!745034 e!4662099))

(assert (=> start!745034 true))

(assert (=> start!745034 e!4662103))

(assert (=> start!745034 e!4662104))

(declare-fun b!7898539 () Bool)

(assert (=> b!7898539 (= e!4662102 (rulesValidInductive!3358 thiss!14377 (t!388972 rulesArg!141)))))

(declare-datatypes ((Token!15514 0))(
  ( (Token!15515 (value!285572 TokenValue!8863) (rule!11827 Rule!16894) (size!42888 Int) (originalCharacters!8788 List!74162)) )
))
(declare-datatypes ((tuple2!70106 0))(
  ( (tuple2!70107 (_1!38356 Token!15514) (_2!38356 List!74162)) )
))
(declare-datatypes ((Option!17829 0))(
  ( (None!17828) (Some!17828 (v!54965 tuple2!70106)) )
))
(declare-fun lt!2682280 () Option!17829)

(declare-fun maxPrefixOneRule!3727 (LexerInterface!8139 Rule!16894 List!74162) Option!17829)

(assert (=> b!7898539 (= lt!2682280 (maxPrefixOneRule!3727 thiss!14377 (h!80487 rulesArg!141) input!1184))))

(declare-fun tp!2353135 () Bool)

(declare-fun b!7898540 () Bool)

(declare-fun inv!95030 (String!82739) Bool)

(declare-fun inv!95033 (TokenValueInjection!17034) Bool)

(assert (=> b!7898540 (= e!4662101 (and tp!2353135 (inv!95030 (tag!9411 (h!80487 rulesArg!141))) (inv!95033 (transformation!8547 (h!80487 rulesArg!141))) e!4662105))))

(assert (= (and start!745034 res!3133258) b!7898536))

(assert (= (and b!7898536 res!3133259) b!7898534))

(assert (= (and b!7898534 res!3133260) b!7898537))

(assert (= (and b!7898537 (not res!3133261)) b!7898539))

(assert (= b!7898540 b!7898538))

(assert (= b!7898533 b!7898540))

(assert (= (and start!745034 (is-Cons!74039 rulesArg!141)) b!7898533))

(assert (= (and start!745034 (is-Cons!74038 input!1184)) b!7898535))

(declare-fun m!8273528 () Bool)

(assert (=> b!7898537 m!8273528))

(declare-fun m!8273530 () Bool)

(assert (=> b!7898537 m!8273530))

(declare-fun m!8273532 () Bool)

(assert (=> b!7898540 m!8273532))

(declare-fun m!8273534 () Bool)

(assert (=> b!7898540 m!8273534))

(declare-fun m!8273536 () Bool)

(assert (=> b!7898534 m!8273536))

(declare-fun m!8273538 () Bool)

(assert (=> b!7898539 m!8273538))

(declare-fun m!8273540 () Bool)

(assert (=> b!7898539 m!8273540))

(declare-fun m!8273542 () Bool)

(assert (=> b!7898536 m!8273542))

(push 1)

(assert (not b!7898533))

(assert (not b!7898540))

(assert (not b!7898535))

(assert (not b!7898539))

(assert (not b_next!135323))

(assert (not b!7898537))

(assert (not b_next!135321))

(assert b_and!352433)

(assert (not b!7898534))

(assert b_and!352431)

(assert tp_is_empty!52875)

(assert (not b!7898536))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352433)

(assert b_and!352431)

(assert (not b_next!135323))

(assert (not b_next!135321))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2357838 () Bool)

(assert (=> d!2357838 true))

(declare-fun lt!2682291 () Bool)

(declare-fun lambda!472374 () Int)

(declare-fun forall!18434 (List!74163 Int) Bool)

(assert (=> d!2357838 (= lt!2682291 (forall!18434 rulesArg!141 lambda!472374))))

(declare-fun e!4662135 () Bool)

(assert (=> d!2357838 (= lt!2682291 e!4662135)))

(declare-fun res!3133289 () Bool)

(assert (=> d!2357838 (=> res!3133289 e!4662135)))

(assert (=> d!2357838 (= res!3133289 (not (is-Cons!74039 rulesArg!141)))))

(assert (=> d!2357838 (= (rulesValidInductive!3358 thiss!14377 rulesArg!141) lt!2682291)))

(declare-fun b!7898573 () Bool)

(declare-fun e!4662136 () Bool)

(assert (=> b!7898573 (= e!4662135 e!4662136)))

(declare-fun res!3133288 () Bool)

(assert (=> b!7898573 (=> (not res!3133288) (not e!4662136))))

(declare-fun ruleValid!3925 (LexerInterface!8139 Rule!16894) Bool)

(assert (=> b!7898573 (= res!3133288 (ruleValid!3925 thiss!14377 (h!80487 rulesArg!141)))))

(declare-fun b!7898574 () Bool)

(assert (=> b!7898574 (= e!4662136 (rulesValidInductive!3358 thiss!14377 (t!388972 rulesArg!141)))))

(assert (= (and d!2357838 (not res!3133289)) b!7898573))

(assert (= (and b!7898573 res!3133288) b!7898574))

(declare-fun m!8273560 () Bool)

(assert (=> d!2357838 m!8273560))

(declare-fun m!8273562 () Bool)

(assert (=> b!7898573 m!8273562))

(assert (=> b!7898574 m!8273538))

(assert (=> b!7898536 d!2357838))

(declare-fun b!7898588 () Bool)

(declare-fun e!4662144 () Bool)

(declare-fun size!42890 (List!74162) Int)

(assert (=> b!7898588 (= e!4662144 (>= (size!42890 input!1184) (size!42890 input!1184)))))

(declare-fun d!2357842 () Bool)

(assert (=> d!2357842 e!4662144))

(declare-fun res!3133298 () Bool)

(assert (=> d!2357842 (=> res!3133298 e!4662144)))

(declare-fun lt!2682294 () Bool)

(assert (=> d!2357842 (= res!3133298 (not lt!2682294))))

(declare-fun e!4662145 () Bool)

(assert (=> d!2357842 (= lt!2682294 e!4662145)))

(declare-fun res!3133299 () Bool)

(assert (=> d!2357842 (=> res!3133299 e!4662145)))

(assert (=> d!2357842 (= res!3133299 (is-Nil!74038 input!1184))))

(assert (=> d!2357842 (= (isPrefix!6380 input!1184 input!1184) lt!2682294)))

(declare-fun b!7898585 () Bool)

(declare-fun e!4662143 () Bool)

(assert (=> b!7898585 (= e!4662145 e!4662143)))

(declare-fun res!3133300 () Bool)

(assert (=> b!7898585 (=> (not res!3133300) (not e!4662143))))

(assert (=> b!7898585 (= res!3133300 (not (is-Nil!74038 input!1184)))))

(declare-fun b!7898586 () Bool)

(declare-fun res!3133301 () Bool)

(assert (=> b!7898586 (=> (not res!3133301) (not e!4662143))))

(declare-fun head!16137 (List!74162) C!42830)

(assert (=> b!7898586 (= res!3133301 (= (head!16137 input!1184) (head!16137 input!1184)))))

(declare-fun b!7898587 () Bool)

(declare-fun tail!15680 (List!74162) List!74162)

(assert (=> b!7898587 (= e!4662143 (isPrefix!6380 (tail!15680 input!1184) (tail!15680 input!1184)))))

(assert (= (and d!2357842 (not res!3133299)) b!7898585))

(assert (= (and b!7898585 res!3133300) b!7898586))

(assert (= (and b!7898586 res!3133301) b!7898587))

(assert (= (and d!2357842 (not res!3133298)) b!7898588))

(declare-fun m!8273564 () Bool)

(assert (=> b!7898588 m!8273564))

(assert (=> b!7898588 m!8273564))

(declare-fun m!8273566 () Bool)

(assert (=> b!7898586 m!8273566))

(assert (=> b!7898586 m!8273566))

(declare-fun m!8273568 () Bool)

(assert (=> b!7898587 m!8273568))

(assert (=> b!7898587 m!8273568))

(assert (=> b!7898587 m!8273568))

(assert (=> b!7898587 m!8273568))

(declare-fun m!8273570 () Bool)

(assert (=> b!7898587 m!8273570))

(assert (=> b!7898537 d!2357842))

(declare-fun d!2357844 () Bool)

(assert (=> d!2357844 (isPrefix!6380 input!1184 input!1184)))

(declare-fun lt!2682297 () Unit!169056)

(declare-fun choose!59705 (List!74162 List!74162) Unit!169056)

(assert (=> d!2357844 (= lt!2682297 (choose!59705 input!1184 input!1184))))

(assert (=> d!2357844 (= (lemmaIsPrefixRefl!3891 input!1184 input!1184) lt!2682297)))

(declare-fun bs!1967864 () Bool)

(assert (= bs!1967864 d!2357844))

(assert (=> bs!1967864 m!8273528))

(declare-fun m!8273572 () Bool)

(assert (=> bs!1967864 m!8273572))

(assert (=> b!7898537 d!2357844))

(declare-fun bs!1967865 () Bool)

(declare-fun d!2357846 () Bool)

(assert (= bs!1967865 (and d!2357846 d!2357838)))

(declare-fun lambda!472375 () Int)

(assert (=> bs!1967865 (= lambda!472375 lambda!472374)))

(assert (=> d!2357846 true))

(declare-fun lt!2682298 () Bool)

(assert (=> d!2357846 (= lt!2682298 (forall!18434 (t!388972 rulesArg!141) lambda!472375))))

(declare-fun e!4662146 () Bool)

(assert (=> d!2357846 (= lt!2682298 e!4662146)))

(declare-fun res!3133303 () Bool)

(assert (=> d!2357846 (=> res!3133303 e!4662146)))

(assert (=> d!2357846 (= res!3133303 (not (is-Cons!74039 (t!388972 rulesArg!141))))))

(assert (=> d!2357846 (= (rulesValidInductive!3358 thiss!14377 (t!388972 rulesArg!141)) lt!2682298)))

(declare-fun b!7898589 () Bool)

(declare-fun e!4662147 () Bool)

(assert (=> b!7898589 (= e!4662146 e!4662147)))

(declare-fun res!3133302 () Bool)

(assert (=> b!7898589 (=> (not res!3133302) (not e!4662147))))

(assert (=> b!7898589 (= res!3133302 (ruleValid!3925 thiss!14377 (h!80487 (t!388972 rulesArg!141))))))

(declare-fun b!7898590 () Bool)

(assert (=> b!7898590 (= e!4662147 (rulesValidInductive!3358 thiss!14377 (t!388972 (t!388972 rulesArg!141))))))

(assert (= (and d!2357846 (not res!3133303)) b!7898589))

(assert (= (and b!7898589 res!3133302) b!7898590))

(declare-fun m!8273574 () Bool)

(assert (=> d!2357846 m!8273574))

(declare-fun m!8273576 () Bool)

(assert (=> b!7898589 m!8273576))

(declare-fun m!8273578 () Bool)

(assert (=> b!7898590 m!8273578))

(assert (=> b!7898539 d!2357846))

(declare-fun b!7898613 () Bool)

(declare-fun res!3133325 () Bool)

(declare-fun e!4662160 () Bool)

(assert (=> b!7898613 (=> (not res!3133325) (not e!4662160))))

(declare-fun lt!2682310 () Option!17829)

(declare-fun get!26578 (Option!17829) tuple2!70106)

(assert (=> b!7898613 (= res!3133325 (= (rule!11827 (_1!38356 (get!26578 lt!2682310))) (h!80487 rulesArg!141)))))

(declare-fun b!7898614 () Bool)

(declare-fun e!4662161 () Bool)

(assert (=> b!7898614 (= e!4662161 e!4662160)))

(declare-fun res!3133320 () Bool)

(assert (=> b!7898614 (=> (not res!3133320) (not e!4662160))))

(declare-fun matchR!10632 (Regex!21250 List!74162) Bool)

(declare-fun list!19169 (BalanceConc!30560) List!74162)

(declare-fun charsOf!5494 (Token!15514) BalanceConc!30560)

(assert (=> b!7898614 (= res!3133320 (matchR!10632 (regex!8547 (h!80487 rulesArg!141)) (list!19169 (charsOf!5494 (_1!38356 (get!26578 lt!2682310))))))))

(declare-fun b!7898615 () Bool)

(declare-fun res!3133324 () Bool)

(assert (=> b!7898615 (=> (not res!3133324) (not e!4662160))))

(declare-fun apply!14309 (TokenValueInjection!17034 BalanceConc!30560) TokenValue!8863)

(declare-fun seqFromList!6127 (List!74162) BalanceConc!30560)

(assert (=> b!7898615 (= res!3133324 (= (value!285572 (_1!38356 (get!26578 lt!2682310))) (apply!14309 (transformation!8547 (rule!11827 (_1!38356 (get!26578 lt!2682310)))) (seqFromList!6127 (originalCharacters!8788 (_1!38356 (get!26578 lt!2682310)))))))))

(declare-fun b!7898616 () Bool)

(assert (=> b!7898616 (= e!4662160 (= (size!42888 (_1!38356 (get!26578 lt!2682310))) (size!42890 (originalCharacters!8788 (_1!38356 (get!26578 lt!2682310))))))))

(declare-fun b!7898617 () Bool)

(declare-fun res!3133321 () Bool)

(assert (=> b!7898617 (=> (not res!3133321) (not e!4662160))))

(declare-fun ++!18128 (List!74162 List!74162) List!74162)

(assert (=> b!7898617 (= res!3133321 (= (++!18128 (list!19169 (charsOf!5494 (_1!38356 (get!26578 lt!2682310)))) (_2!38356 (get!26578 lt!2682310))) input!1184))))

(declare-fun b!7898618 () Bool)

(declare-fun res!3133326 () Bool)

(assert (=> b!7898618 (=> (not res!3133326) (not e!4662160))))

(assert (=> b!7898618 (= res!3133326 (< (size!42890 (_2!38356 (get!26578 lt!2682310))) (size!42890 input!1184)))))

(declare-fun b!7898620 () Bool)

(declare-fun e!4662159 () Bool)

(declare-datatypes ((tuple2!70110 0))(
  ( (tuple2!70111 (_1!38358 List!74162) (_2!38358 List!74162)) )
))
(declare-fun findLongestMatchInner!2145 (Regex!21250 List!74162 Int List!74162 List!74162 Int) tuple2!70110)

(assert (=> b!7898620 (= e!4662159 (matchR!10632 (regex!8547 (h!80487 rulesArg!141)) (_1!38358 (findLongestMatchInner!2145 (regex!8547 (h!80487 rulesArg!141)) Nil!74038 (size!42890 Nil!74038) input!1184 input!1184 (size!42890 input!1184)))))))

(declare-fun b!7898621 () Bool)

(declare-fun e!4662158 () Option!17829)

(assert (=> b!7898621 (= e!4662158 None!17828)))

(declare-fun b!7898619 () Bool)

(declare-fun lt!2682314 () tuple2!70110)

(declare-fun size!42891 (BalanceConc!30560) Int)

(assert (=> b!7898619 (= e!4662158 (Some!17828 (tuple2!70107 (Token!15515 (apply!14309 (transformation!8547 (h!80487 rulesArg!141)) (seqFromList!6127 (_1!38358 lt!2682314))) (h!80487 rulesArg!141) (size!42891 (seqFromList!6127 (_1!38358 lt!2682314))) (_1!38358 lt!2682314)) (_2!38358 lt!2682314))))))

(declare-fun lt!2682313 () Unit!169056)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2108 (Regex!21250 List!74162) Unit!169056)

(assert (=> b!7898619 (= lt!2682313 (longestMatchIsAcceptedByMatchOrIsEmpty!2108 (regex!8547 (h!80487 rulesArg!141)) input!1184))))

(declare-fun res!3133322 () Bool)

(declare-fun isEmpty!42472 (List!74162) Bool)

(assert (=> b!7898619 (= res!3133322 (isEmpty!42472 (_1!38358 (findLongestMatchInner!2145 (regex!8547 (h!80487 rulesArg!141)) Nil!74038 (size!42890 Nil!74038) input!1184 input!1184 (size!42890 input!1184)))))))

(assert (=> b!7898619 (=> res!3133322 e!4662159)))

(assert (=> b!7898619 e!4662159))

(declare-fun lt!2682312 () Unit!169056)

(assert (=> b!7898619 (= lt!2682312 lt!2682313)))

(declare-fun lt!2682311 () Unit!169056)

(declare-fun lemmaSemiInverse!2655 (TokenValueInjection!17034 BalanceConc!30560) Unit!169056)

(assert (=> b!7898619 (= lt!2682311 (lemmaSemiInverse!2655 (transformation!8547 (h!80487 rulesArg!141)) (seqFromList!6127 (_1!38358 lt!2682314))))))

(declare-fun d!2357848 () Bool)

(assert (=> d!2357848 e!4662161))

(declare-fun res!3133323 () Bool)

(assert (=> d!2357848 (=> res!3133323 e!4662161)))

(declare-fun isEmpty!42473 (Option!17829) Bool)

(assert (=> d!2357848 (= res!3133323 (isEmpty!42473 lt!2682310))))

(assert (=> d!2357848 (= lt!2682310 e!4662158)))

(declare-fun c!1449712 () Bool)

(assert (=> d!2357848 (= c!1449712 (isEmpty!42472 (_1!38358 lt!2682314)))))

(declare-fun findLongestMatch!1912 (Regex!21250 List!74162) tuple2!70110)

(assert (=> d!2357848 (= lt!2682314 (findLongestMatch!1912 (regex!8547 (h!80487 rulesArg!141)) input!1184))))

(assert (=> d!2357848 (ruleValid!3925 thiss!14377 (h!80487 rulesArg!141))))

(assert (=> d!2357848 (= (maxPrefixOneRule!3727 thiss!14377 (h!80487 rulesArg!141) input!1184) lt!2682310)))

(assert (= (and d!2357848 c!1449712) b!7898621))

(assert (= (and d!2357848 (not c!1449712)) b!7898619))

(assert (= (and b!7898619 (not res!3133322)) b!7898620))

(assert (= (and d!2357848 (not res!3133323)) b!7898614))

(assert (= (and b!7898614 res!3133320) b!7898617))

(assert (= (and b!7898617 res!3133321) b!7898618))

(assert (= (and b!7898618 res!3133326) b!7898613))

(assert (= (and b!7898613 res!3133325) b!7898615))

(assert (= (and b!7898615 res!3133324) b!7898616))

(declare-fun m!8273586 () Bool)

(assert (=> b!7898617 m!8273586))

(declare-fun m!8273588 () Bool)

(assert (=> b!7898617 m!8273588))

(assert (=> b!7898617 m!8273588))

(declare-fun m!8273590 () Bool)

(assert (=> b!7898617 m!8273590))

(assert (=> b!7898617 m!8273590))

(declare-fun m!8273592 () Bool)

(assert (=> b!7898617 m!8273592))

(declare-fun m!8273594 () Bool)

(assert (=> b!7898620 m!8273594))

(assert (=> b!7898620 m!8273564))

(assert (=> b!7898620 m!8273594))

(assert (=> b!7898620 m!8273564))

(declare-fun m!8273596 () Bool)

(assert (=> b!7898620 m!8273596))

(declare-fun m!8273598 () Bool)

(assert (=> b!7898620 m!8273598))

(assert (=> b!7898619 m!8273564))

(assert (=> b!7898619 m!8273594))

(declare-fun m!8273600 () Bool)

(assert (=> b!7898619 m!8273600))

(declare-fun m!8273602 () Bool)

(assert (=> b!7898619 m!8273602))

(declare-fun m!8273604 () Bool)

(assert (=> b!7898619 m!8273604))

(assert (=> b!7898619 m!8273600))

(declare-fun m!8273606 () Bool)

(assert (=> b!7898619 m!8273606))

(assert (=> b!7898619 m!8273600))

(declare-fun m!8273608 () Bool)

(assert (=> b!7898619 m!8273608))

(assert (=> b!7898619 m!8273594))

(assert (=> b!7898619 m!8273564))

(assert (=> b!7898619 m!8273596))

(declare-fun m!8273610 () Bool)

(assert (=> b!7898619 m!8273610))

(assert (=> b!7898619 m!8273600))

(assert (=> b!7898613 m!8273586))

(declare-fun m!8273612 () Bool)

(assert (=> d!2357848 m!8273612))

(declare-fun m!8273614 () Bool)

(assert (=> d!2357848 m!8273614))

(declare-fun m!8273616 () Bool)

(assert (=> d!2357848 m!8273616))

(assert (=> d!2357848 m!8273562))

(assert (=> b!7898614 m!8273586))

(assert (=> b!7898614 m!8273588))

(assert (=> b!7898614 m!8273588))

(assert (=> b!7898614 m!8273590))

(assert (=> b!7898614 m!8273590))

(declare-fun m!8273618 () Bool)

(assert (=> b!7898614 m!8273618))

(assert (=> b!7898618 m!8273586))

(declare-fun m!8273620 () Bool)

(assert (=> b!7898618 m!8273620))

(assert (=> b!7898618 m!8273564))

(assert (=> b!7898615 m!8273586))

(declare-fun m!8273622 () Bool)

(assert (=> b!7898615 m!8273622))

(assert (=> b!7898615 m!8273622))

(declare-fun m!8273624 () Bool)

(assert (=> b!7898615 m!8273624))

(assert (=> b!7898616 m!8273586))

(declare-fun m!8273626 () Bool)

(assert (=> b!7898616 m!8273626))

(assert (=> b!7898539 d!2357848))

(declare-fun d!2357852 () Bool)

(assert (=> d!2357852 (= (isEmpty!42470 rulesArg!141) (is-Nil!74039 rulesArg!141))))

(assert (=> b!7898534 d!2357852))

(declare-fun d!2357854 () Bool)

(assert (=> d!2357854 (= (inv!95030 (tag!9411 (h!80487 rulesArg!141))) (= (mod (str.len (value!285571 (tag!9411 (h!80487 rulesArg!141)))) 2) 0))))

(assert (=> b!7898540 d!2357854))

(declare-fun d!2357856 () Bool)

(declare-fun res!3133329 () Bool)

(declare-fun e!4662164 () Bool)

(assert (=> d!2357856 (=> (not res!3133329) (not e!4662164))))

(declare-fun semiInverseModEq!3805 (Int Int) Bool)

(assert (=> d!2357856 (= res!3133329 (semiInverseModEq!3805 (toChars!11447 (transformation!8547 (h!80487 rulesArg!141))) (toValue!11588 (transformation!8547 (h!80487 rulesArg!141)))))))

(assert (=> d!2357856 (= (inv!95033 (transformation!8547 (h!80487 rulesArg!141))) e!4662164)))

(declare-fun b!7898624 () Bool)

(declare-fun equivClasses!3620 (Int Int) Bool)

(assert (=> b!7898624 (= e!4662164 (equivClasses!3620 (toChars!11447 (transformation!8547 (h!80487 rulesArg!141))) (toValue!11588 (transformation!8547 (h!80487 rulesArg!141)))))))

(assert (= (and d!2357856 res!3133329) b!7898624))

(declare-fun m!8273628 () Bool)

(assert (=> d!2357856 m!8273628))

(declare-fun m!8273630 () Bool)

(assert (=> b!7898624 m!8273630))

(assert (=> b!7898540 d!2357856))

(declare-fun b!7898635 () Bool)

(declare-fun b_free!134539 () Bool)

(declare-fun b_next!135329 () Bool)

(assert (=> b!7898635 (= b_free!134539 (not b_next!135329))))

(declare-fun tp!2353161 () Bool)

(declare-fun b_and!352439 () Bool)

(assert (=> b!7898635 (= tp!2353161 b_and!352439)))

(declare-fun b_free!134541 () Bool)

(declare-fun b_next!135331 () Bool)

(assert (=> b!7898635 (= b_free!134541 (not b_next!135331))))

(declare-fun tp!2353160 () Bool)

(declare-fun b_and!352441 () Bool)

(assert (=> b!7898635 (= tp!2353160 b_and!352441)))

(declare-fun e!4662174 () Bool)

(assert (=> b!7898635 (= e!4662174 (and tp!2353161 tp!2353160))))

(declare-fun b!7898634 () Bool)

(declare-fun e!4662175 () Bool)

(declare-fun tp!2353162 () Bool)

(assert (=> b!7898634 (= e!4662175 (and tp!2353162 (inv!95030 (tag!9411 (h!80487 (t!388972 rulesArg!141)))) (inv!95033 (transformation!8547 (h!80487 (t!388972 rulesArg!141)))) e!4662174))))

(declare-fun b!7898633 () Bool)

(declare-fun e!4662176 () Bool)

(declare-fun tp!2353159 () Bool)

(assert (=> b!7898633 (= e!4662176 (and e!4662175 tp!2353159))))

(assert (=> b!7898533 (= tp!2353134 e!4662176)))

(assert (= b!7898634 b!7898635))

(assert (= b!7898633 b!7898634))

(assert (= (and b!7898533 (is-Cons!74039 (t!388972 rulesArg!141))) b!7898633))

(declare-fun m!8273632 () Bool)

(assert (=> b!7898634 m!8273632))

(declare-fun m!8273634 () Bool)

(assert (=> b!7898634 m!8273634))

(declare-fun b!7898640 () Bool)

(declare-fun e!4662179 () Bool)

(declare-fun tp!2353165 () Bool)

(assert (=> b!7898640 (= e!4662179 (and tp_is_empty!52875 tp!2353165))))

(assert (=> b!7898535 (= tp!2353132 e!4662179)))

(assert (= (and b!7898535 (is-Cons!74038 (t!388971 input!1184))) b!7898640))

(declare-fun e!4662182 () Bool)

(assert (=> b!7898540 (= tp!2353135 e!4662182)))

(declare-fun b!7898653 () Bool)

(declare-fun tp!2353177 () Bool)

(assert (=> b!7898653 (= e!4662182 tp!2353177)))

(declare-fun b!7898654 () Bool)

(declare-fun tp!2353179 () Bool)

(declare-fun tp!2353180 () Bool)

(assert (=> b!7898654 (= e!4662182 (and tp!2353179 tp!2353180))))

(declare-fun b!7898651 () Bool)

(assert (=> b!7898651 (= e!4662182 tp_is_empty!52875)))

(declare-fun b!7898652 () Bool)

(declare-fun tp!2353178 () Bool)

(declare-fun tp!2353176 () Bool)

(assert (=> b!7898652 (= e!4662182 (and tp!2353178 tp!2353176))))

(assert (= (and b!7898540 (is-ElementMatch!21250 (regex!8547 (h!80487 rulesArg!141)))) b!7898651))

(assert (= (and b!7898540 (is-Concat!30114 (regex!8547 (h!80487 rulesArg!141)))) b!7898652))

(assert (= (and b!7898540 (is-Star!21250 (regex!8547 (h!80487 rulesArg!141)))) b!7898653))

(assert (= (and b!7898540 (is-Union!21250 (regex!8547 (h!80487 rulesArg!141)))) b!7898654))

(push 1)

(assert (not d!2357838))

(assert (not b_next!135329))

(assert b_and!352441)

(assert (not b!7898619))

(assert (not b_next!135331))

(assert b_and!352439)

(assert (not b!7898618))

(assert (not b!7898640))

(assert (not b!7898615))

(assert b_and!352433)

(assert (not b!7898613))

(assert (not b!7898654))

(assert tp_is_empty!52875)

(assert (not d!2357844))

(assert (not b!7898653))

(assert (not b!7898588))

(assert b_and!352431)

(assert (not b!7898652))

(assert (not d!2357846))

(assert (not b!7898614))

(assert (not b!7898586))

(assert (not b_next!135323))

(assert (not b!7898620))

(assert (not b!7898616))

(assert (not d!2357856))

(assert (not b!7898589))

(assert (not b!7898574))

(assert (not b!7898624))

(assert (not b!7898617))

(assert (not b!7898590))

(assert (not b!7898587))

(assert (not b_next!135321))

(assert (not b!7898634))

(assert (not d!2357848))

(assert (not b!7898573))

(assert (not b!7898633))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!135329))

(assert b_and!352441)

(assert (not b_next!135323))

(assert (not b_next!135331))

(assert b_and!352439)

(assert (not b_next!135321))

(assert b_and!352433)

(assert b_and!352431)

(check-sat)

(pop 1)

