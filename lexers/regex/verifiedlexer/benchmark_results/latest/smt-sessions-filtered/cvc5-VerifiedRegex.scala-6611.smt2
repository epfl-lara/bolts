; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!349160 () Bool)

(assert start!349160)

(declare-fun b!3704011 () Bool)

(declare-fun b_free!98877 () Bool)

(declare-fun b_next!99581 () Bool)

(assert (=> b!3704011 (= b_free!98877 (not b_next!99581))))

(declare-fun tp!1126242 () Bool)

(declare-fun b_and!277111 () Bool)

(assert (=> b!3704011 (= tp!1126242 b_and!277111)))

(declare-fun b_free!98879 () Bool)

(declare-fun b_next!99583 () Bool)

(assert (=> b!3704011 (= b_free!98879 (not b_next!99583))))

(declare-fun tp!1126240 () Bool)

(declare-fun b_and!277113 () Bool)

(assert (=> b!3704011 (= tp!1126240 b_and!277113)))

(declare-fun b!3704009 () Bool)

(declare-fun b_free!98881 () Bool)

(declare-fun b_next!99585 () Bool)

(assert (=> b!3704009 (= b_free!98881 (not b_next!99585))))

(declare-fun tp!1126243 () Bool)

(declare-fun b_and!277115 () Bool)

(assert (=> b!3704009 (= tp!1126243 b_and!277115)))

(declare-fun b_free!98883 () Bool)

(declare-fun b_next!99587 () Bool)

(assert (=> b!3704009 (= b_free!98883 (not b_next!99587))))

(declare-fun tp!1126239 () Bool)

(declare-fun b_and!277117 () Bool)

(assert (=> b!3704009 (= tp!1126239 b_and!277117)))

(declare-fun b!3704007 () Bool)

(declare-fun e!2294166 () Bool)

(declare-fun e!2294165 () Bool)

(assert (=> b!3704007 (= e!2294166 (not e!2294165))))

(declare-fun res!1506781 () Bool)

(assert (=> b!3704007 (=> res!1506781 e!2294165)))

(declare-datatypes ((List!39541 0))(
  ( (Nil!39417) (Cons!39417 (h!44837 (_ BitVec 16)) (t!302224 List!39541)) )
))
(declare-datatypes ((TokenValue!6231 0))(
  ( (FloatLiteralValue!12462 (text!44062 List!39541)) (TokenValueExt!6230 (__x!24679 Int)) (Broken!31155 (value!191442 List!39541)) (Object!6354) (End!6231) (Def!6231) (Underscore!6231) (Match!6231) (Else!6231) (Error!6231) (Case!6231) (If!6231) (Extends!6231) (Abstract!6231) (Class!6231) (Val!6231) (DelimiterValue!12462 (del!6291 List!39541)) (KeywordValue!6237 (value!191443 List!39541)) (CommentValue!12462 (value!191444 List!39541)) (WhitespaceValue!12462 (value!191445 List!39541)) (IndentationValue!6231 (value!191446 List!39541)) (String!44490) (Int32!6231) (Broken!31156 (value!191447 List!39541)) (Boolean!6232) (Unit!57370) (OperatorValue!6234 (op!6291 List!39541)) (IdentifierValue!12462 (value!191448 List!39541)) (IdentifierValue!12463 (value!191449 List!39541)) (WhitespaceValue!12463 (value!191450 List!39541)) (True!12462) (False!12462) (Broken!31157 (value!191451 List!39541)) (Broken!31158 (value!191452 List!39541)) (True!12463) (RightBrace!6231) (RightBracket!6231) (Colon!6231) (Null!6231) (Comma!6231) (LeftBracket!6231) (False!12463) (LeftBrace!6231) (ImaginaryLiteralValue!6231 (text!44063 List!39541)) (StringLiteralValue!18693 (value!191453 List!39541)) (EOFValue!6231 (value!191454 List!39541)) (IdentValue!6231 (value!191455 List!39541)) (DelimiterValue!12463 (value!191456 List!39541)) (DedentValue!6231 (value!191457 List!39541)) (NewLineValue!6231 (value!191458 List!39541)) (IntegerValue!18693 (value!191459 (_ BitVec 32)) (text!44064 List!39541)) (IntegerValue!18694 (value!191460 Int) (text!44065 List!39541)) (Times!6231) (Or!6231) (Equal!6231) (Minus!6231) (Broken!31159 (value!191461 List!39541)) (And!6231) (Div!6231) (LessEqual!6231) (Mod!6231) (Concat!16991) (Not!6231) (Plus!6231) (SpaceValue!6231 (value!191462 List!39541)) (IntegerValue!18695 (value!191463 Int) (text!44066 List!39541)) (StringLiteralValue!18694 (text!44067 List!39541)) (FloatLiteralValue!12463 (text!44068 List!39541)) (BytesLiteralValue!6231 (value!191464 List!39541)) (CommentValue!12463 (value!191465 List!39541)) (StringLiteralValue!18695 (value!191466 List!39541)) (ErrorTokenValue!6231 (msg!6292 List!39541)) )
))
(declare-datatypes ((C!21706 0))(
  ( (C!21707 (val!12901 Int)) )
))
(declare-datatypes ((List!39542 0))(
  ( (Nil!39418) (Cons!39418 (h!44838 C!21706) (t!302225 List!39542)) )
))
(declare-datatypes ((IArray!24201 0))(
  ( (IArray!24202 (innerList!12158 List!39542)) )
))
(declare-datatypes ((Conc!12098 0))(
  ( (Node!12098 (left!30657 Conc!12098) (right!30987 Conc!12098) (csize!24426 Int) (cheight!12309 Int)) (Leaf!18710 (xs!15300 IArray!24201) (csize!24427 Int)) (Empty!12098) )
))
(declare-datatypes ((BalanceConc!23810 0))(
  ( (BalanceConc!23811 (c!639894 Conc!12098)) )
))
(declare-datatypes ((TokenValueInjection!11890 0))(
  ( (TokenValueInjection!11891 (toValue!8345 Int) (toChars!8204 Int)) )
))
(declare-datatypes ((String!44491 0))(
  ( (String!44492 (value!191467 String)) )
))
(declare-datatypes ((Regex!10760 0))(
  ( (ElementMatch!10760 (c!639895 C!21706)) (Concat!16992 (regOne!22032 Regex!10760) (regTwo!22032 Regex!10760)) (EmptyExpr!10760) (Star!10760 (reg!11089 Regex!10760)) (EmptyLang!10760) (Union!10760 (regOne!22033 Regex!10760) (regTwo!22033 Regex!10760)) )
))
(declare-datatypes ((Rule!11802 0))(
  ( (Rule!11803 (regex!6001 Regex!10760) (tag!6849 String!44491) (isSeparator!6001 Bool) (transformation!6001 TokenValueInjection!11890)) )
))
(declare-datatypes ((Option!8543 0))(
  ( (None!8542) (Some!8542 (v!38514 Rule!11802)) )
))
(declare-fun lt!1296033 () Option!8543)

(declare-fun isDefined!6730 (Option!8543) Bool)

(assert (=> b!3704007 (= res!1506781 (not (isDefined!6730 lt!1296033)))))

(declare-fun tag!250 () String!44491)

(declare-datatypes ((LexerInterface!5590 0))(
  ( (LexerInterfaceExt!5587 (__x!24680 Int)) (Lexer!5588) )
))
(declare-fun thiss!25522 () LexerInterface!5590)

(declare-datatypes ((List!39543 0))(
  ( (Nil!39419) (Cons!39419 (h!44839 Rule!11802) (t!302226 List!39543)) )
))
(declare-fun rules!3698 () List!39543)

(declare-fun getRuleFromTag!1535 (LexerInterface!5590 List!39543 String!44491) Option!8543)

(assert (=> b!3704007 (= lt!1296033 (getRuleFromTag!1535 thiss!25522 rules!3698 tag!250))))

(declare-fun rulesInvariant!4987 (LexerInterface!5590 List!39543) Bool)

(assert (=> b!3704007 (rulesInvariant!4987 thiss!25522 rules!3698)))

(declare-datatypes ((Unit!57371 0))(
  ( (Unit!57372) )
))
(declare-fun lt!1296035 () Unit!57371)

(declare-fun newHd!19 () Rule!11802)

(declare-fun lemmaInvariantOnRulesThenOnTail!693 (LexerInterface!5590 Rule!11802 List!39543) Unit!57371)

(assert (=> b!3704007 (= lt!1296035 (lemmaInvariantOnRulesThenOnTail!693 thiss!25522 newHd!19 rules!3698))))

(declare-fun e!2294160 () Bool)

(declare-fun b!3704008 () Bool)

(declare-fun tp!1126241 () Bool)

(declare-fun e!2294167 () Bool)

(declare-fun inv!52941 (String!44491) Bool)

(declare-fun inv!52944 (TokenValueInjection!11890) Bool)

(assert (=> b!3704008 (= e!2294160 (and tp!1126241 (inv!52941 (tag!6849 newHd!19)) (inv!52944 (transformation!6001 newHd!19)) e!2294167))))

(assert (=> b!3704009 (= e!2294167 (and tp!1126243 tp!1126239))))

(declare-fun b!3704010 () Bool)

(declare-fun e!2294161 () Bool)

(declare-fun e!2294159 () Bool)

(declare-fun tp!1126237 () Bool)

(assert (=> b!3704010 (= e!2294161 (and e!2294159 tp!1126237))))

(declare-fun e!2294164 () Bool)

(assert (=> b!3704011 (= e!2294164 (and tp!1126242 tp!1126240))))

(declare-fun b!3704012 () Bool)

(declare-fun res!1506779 () Bool)

(declare-fun e!2294157 () Bool)

(assert (=> b!3704012 (=> res!1506779 e!2294157)))

(declare-datatypes ((List!39544 0))(
  ( (Nil!39420) (Cons!39420 (h!44840 String!44491) (t!302227 List!39544)) )
))
(declare-fun lt!1296034 () List!39544)

(declare-fun noDuplicateTag!2321 (LexerInterface!5590 List!39543 List!39544) Bool)

(assert (=> b!3704012 (= res!1506779 (not (noDuplicateTag!2321 thiss!25522 rules!3698 lt!1296034)))))

(declare-fun b!3704014 () Bool)

(assert (=> b!3704014 (= e!2294165 e!2294157)))

(declare-fun res!1506783 () Bool)

(assert (=> b!3704014 (=> res!1506783 e!2294157)))

(declare-fun contains!7867 (List!39544 String!44491) Bool)

(assert (=> b!3704014 (= res!1506783 (not (contains!7867 lt!1296034 (tag!6849 newHd!19))))))

(assert (=> b!3704014 (= lt!1296034 (Cons!39420 (tag!6849 newHd!19) Nil!39420))))

(declare-fun b!3704015 () Bool)

(declare-fun contains!7868 (List!39543 Rule!11802) Bool)

(declare-fun get!13128 (Option!8543) Rule!11802)

(assert (=> b!3704015 (= e!2294157 (contains!7868 rules!3698 (get!13128 lt!1296033)))))

(declare-fun b!3704016 () Bool)

(declare-fun tp!1126238 () Bool)

(assert (=> b!3704016 (= e!2294159 (and tp!1126238 (inv!52941 (tag!6849 (h!44839 rules!3698))) (inv!52944 (transformation!6001 (h!44839 rules!3698))) e!2294164))))

(declare-fun b!3704013 () Bool)

(declare-fun res!1506782 () Bool)

(assert (=> b!3704013 (=> (not res!1506782) (not e!2294166))))

(assert (=> b!3704013 (= res!1506782 (rulesInvariant!4987 thiss!25522 (Cons!39419 newHd!19 rules!3698)))))

(declare-fun res!1506780 () Bool)

(assert (=> start!349160 (=> (not res!1506780) (not e!2294166))))

(assert (=> start!349160 (= res!1506780 (is-Lexer!5588 thiss!25522))))

(assert (=> start!349160 e!2294166))

(assert (=> start!349160 true))

(assert (=> start!349160 e!2294160))

(assert (=> start!349160 e!2294161))

(assert (=> start!349160 (inv!52941 tag!250)))

(assert (= (and start!349160 res!1506780) b!3704013))

(assert (= (and b!3704013 res!1506782) b!3704007))

(assert (= (and b!3704007 (not res!1506781)) b!3704014))

(assert (= (and b!3704014 (not res!1506783)) b!3704012))

(assert (= (and b!3704012 (not res!1506779)) b!3704015))

(assert (= b!3704008 b!3704009))

(assert (= start!349160 b!3704008))

(assert (= b!3704016 b!3704011))

(assert (= b!3704010 b!3704016))

(assert (= (and start!349160 (is-Cons!39419 rules!3698)) b!3704010))

(declare-fun m!4214805 () Bool)

(assert (=> b!3704012 m!4214805))

(declare-fun m!4214807 () Bool)

(assert (=> b!3704016 m!4214807))

(declare-fun m!4214809 () Bool)

(assert (=> b!3704016 m!4214809))

(declare-fun m!4214811 () Bool)

(assert (=> start!349160 m!4214811))

(declare-fun m!4214813 () Bool)

(assert (=> b!3704015 m!4214813))

(assert (=> b!3704015 m!4214813))

(declare-fun m!4214815 () Bool)

(assert (=> b!3704015 m!4214815))

(declare-fun m!4214817 () Bool)

(assert (=> b!3704007 m!4214817))

(declare-fun m!4214819 () Bool)

(assert (=> b!3704007 m!4214819))

(declare-fun m!4214821 () Bool)

(assert (=> b!3704007 m!4214821))

(declare-fun m!4214823 () Bool)

(assert (=> b!3704007 m!4214823))

(declare-fun m!4214825 () Bool)

(assert (=> b!3704013 m!4214825))

(declare-fun m!4214827 () Bool)

(assert (=> b!3704014 m!4214827))

(declare-fun m!4214829 () Bool)

(assert (=> b!3704008 m!4214829))

(declare-fun m!4214831 () Bool)

(assert (=> b!3704008 m!4214831))

(push 1)

(assert (not b_next!99581))

(assert (not b_next!99583))

(assert (not b!3704015))

(assert (not b_next!99587))

(assert (not b!3704008))

(assert (not start!349160))

(assert b_and!277113)

(assert (not b!3704014))

(assert (not b_next!99585))

(assert (not b!3704007))

(assert (not b!3704012))

(assert b_and!277111)

(assert (not b!3704010))

(assert (not b!3704013))

(assert (not b!3704016))

(assert b_and!277117)

(assert b_and!277115)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99581))

(assert (not b_next!99583))

(assert (not b_next!99587))

(assert b_and!277113)

(assert (not b_next!99585))

(assert b_and!277111)

(assert b_and!277117)

(assert b_and!277115)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1086054 () Bool)

(declare-fun isEmpty!23468 (Option!8543) Bool)

(assert (=> d!1086054 (= (isDefined!6730 lt!1296033) (not (isEmpty!23468 lt!1296033)))))

(declare-fun bs!574592 () Bool)

(assert (= bs!574592 d!1086054))

(declare-fun m!4214861 () Bool)

(assert (=> bs!574592 m!4214861))

(assert (=> b!3704007 d!1086054))

(declare-fun b!3704061 () Bool)

(declare-fun e!2294211 () Option!8543)

(assert (=> b!3704061 (= e!2294211 (Some!8542 (h!44839 rules!3698)))))

(declare-fun d!1086056 () Bool)

(declare-fun e!2294212 () Bool)

(assert (=> d!1086056 e!2294212))

(declare-fun res!1506810 () Bool)

(assert (=> d!1086056 (=> res!1506810 e!2294212)))

(declare-fun lt!1296051 () Option!8543)

(assert (=> d!1086056 (= res!1506810 (isEmpty!23468 lt!1296051))))

(assert (=> d!1086056 (= lt!1296051 e!2294211)))

(declare-fun c!639903 () Bool)

(assert (=> d!1086056 (= c!639903 (and (is-Cons!39419 rules!3698) (= (tag!6849 (h!44839 rules!3698)) tag!250)))))

(assert (=> d!1086056 (rulesInvariant!4987 thiss!25522 rules!3698)))

(assert (=> d!1086056 (= (getRuleFromTag!1535 thiss!25522 rules!3698 tag!250) lt!1296051)))

(declare-fun b!3704062 () Bool)

(declare-fun e!2294213 () Option!8543)

(assert (=> b!3704062 (= e!2294213 None!8542)))

(declare-fun b!3704063 () Bool)

(declare-fun e!2294214 () Bool)

(assert (=> b!3704063 (= e!2294214 (= (tag!6849 (get!13128 lt!1296051)) tag!250))))

(declare-fun b!3704064 () Bool)

(declare-fun lt!1296053 () Unit!57371)

(declare-fun lt!1296052 () Unit!57371)

(assert (=> b!3704064 (= lt!1296053 lt!1296052)))

(assert (=> b!3704064 (rulesInvariant!4987 thiss!25522 (t!302226 rules!3698))))

(assert (=> b!3704064 (= lt!1296052 (lemmaInvariantOnRulesThenOnTail!693 thiss!25522 (h!44839 rules!3698) (t!302226 rules!3698)))))

(assert (=> b!3704064 (= e!2294213 (getRuleFromTag!1535 thiss!25522 (t!302226 rules!3698) tag!250))))

(declare-fun b!3704065 () Bool)

(assert (=> b!3704065 (= e!2294211 e!2294213)))

(declare-fun c!639902 () Bool)

(assert (=> b!3704065 (= c!639902 (and (is-Cons!39419 rules!3698) (not (= (tag!6849 (h!44839 rules!3698)) tag!250))))))

(declare-fun b!3704066 () Bool)

(assert (=> b!3704066 (= e!2294212 e!2294214)))

(declare-fun res!1506809 () Bool)

(assert (=> b!3704066 (=> (not res!1506809) (not e!2294214))))

(assert (=> b!3704066 (= res!1506809 (contains!7868 rules!3698 (get!13128 lt!1296051)))))

(assert (= (and d!1086056 c!639903) b!3704061))

(assert (= (and d!1086056 (not c!639903)) b!3704065))

(assert (= (and b!3704065 c!639902) b!3704064))

(assert (= (and b!3704065 (not c!639902)) b!3704062))

(assert (= (and d!1086056 (not res!1506810)) b!3704066))

(assert (= (and b!3704066 res!1506809) b!3704063))

(declare-fun m!4214863 () Bool)

(assert (=> d!1086056 m!4214863))

(assert (=> d!1086056 m!4214821))

(declare-fun m!4214865 () Bool)

(assert (=> b!3704063 m!4214865))

(declare-fun m!4214867 () Bool)

(assert (=> b!3704064 m!4214867))

(declare-fun m!4214869 () Bool)

(assert (=> b!3704064 m!4214869))

(declare-fun m!4214871 () Bool)

(assert (=> b!3704064 m!4214871))

(assert (=> b!3704066 m!4214865))

(assert (=> b!3704066 m!4214865))

(declare-fun m!4214873 () Bool)

(assert (=> b!3704066 m!4214873))

(assert (=> b!3704007 d!1086056))

(declare-fun d!1086060 () Bool)

(declare-fun res!1506817 () Bool)

(declare-fun e!2294221 () Bool)

(assert (=> d!1086060 (=> (not res!1506817) (not e!2294221))))

(declare-fun rulesValid!2321 (LexerInterface!5590 List!39543) Bool)

(assert (=> d!1086060 (= res!1506817 (rulesValid!2321 thiss!25522 rules!3698))))

(assert (=> d!1086060 (= (rulesInvariant!4987 thiss!25522 rules!3698) e!2294221)))

(declare-fun b!3704073 () Bool)

(assert (=> b!3704073 (= e!2294221 (noDuplicateTag!2321 thiss!25522 rules!3698 Nil!39420))))

(assert (= (and d!1086060 res!1506817) b!3704073))

(declare-fun m!4214875 () Bool)

(assert (=> d!1086060 m!4214875))

(declare-fun m!4214877 () Bool)

(assert (=> b!3704073 m!4214877))

(assert (=> b!3704007 d!1086060))

(declare-fun d!1086062 () Bool)

(assert (=> d!1086062 (rulesInvariant!4987 thiss!25522 rules!3698)))

(declare-fun lt!1296056 () Unit!57371)

(declare-fun choose!22148 (LexerInterface!5590 Rule!11802 List!39543) Unit!57371)

(assert (=> d!1086062 (= lt!1296056 (choose!22148 thiss!25522 newHd!19 rules!3698))))

(assert (=> d!1086062 (rulesInvariant!4987 thiss!25522 (Cons!39419 newHd!19 rules!3698))))

(assert (=> d!1086062 (= (lemmaInvariantOnRulesThenOnTail!693 thiss!25522 newHd!19 rules!3698) lt!1296056)))

(declare-fun bs!574593 () Bool)

(assert (= bs!574593 d!1086062))

(assert (=> bs!574593 m!4214821))

(declare-fun m!4214883 () Bool)

(assert (=> bs!574593 m!4214883))

(assert (=> bs!574593 m!4214825))

(assert (=> b!3704007 d!1086062))

(declare-fun d!1086068 () Bool)

(declare-fun res!1506822 () Bool)

(declare-fun e!2294226 () Bool)

(assert (=> d!1086068 (=> res!1506822 e!2294226)))

(assert (=> d!1086068 (= res!1506822 (is-Nil!39419 rules!3698))))

(assert (=> d!1086068 (= (noDuplicateTag!2321 thiss!25522 rules!3698 lt!1296034) e!2294226)))

(declare-fun b!3704078 () Bool)

(declare-fun e!2294227 () Bool)

(assert (=> b!3704078 (= e!2294226 e!2294227)))

(declare-fun res!1506823 () Bool)

(assert (=> b!3704078 (=> (not res!1506823) (not e!2294227))))

(assert (=> b!3704078 (= res!1506823 (not (contains!7867 lt!1296034 (tag!6849 (h!44839 rules!3698)))))))

(declare-fun b!3704079 () Bool)

(assert (=> b!3704079 (= e!2294227 (noDuplicateTag!2321 thiss!25522 (t!302226 rules!3698) (Cons!39420 (tag!6849 (h!44839 rules!3698)) lt!1296034)))))

(assert (= (and d!1086068 (not res!1506822)) b!3704078))

(assert (= (and b!3704078 res!1506823) b!3704079))

(declare-fun m!4214885 () Bool)

(assert (=> b!3704078 m!4214885))

(declare-fun m!4214887 () Bool)

(assert (=> b!3704079 m!4214887))

(assert (=> b!3704012 d!1086068))

(declare-fun d!1086070 () Bool)

(declare-fun lt!1296059 () Bool)

(declare-fun content!5694 (List!39544) (Set String!44491))

(assert (=> d!1086070 (= lt!1296059 (set.member (tag!6849 newHd!19) (content!5694 lt!1296034)))))

(declare-fun e!2294235 () Bool)

(assert (=> d!1086070 (= lt!1296059 e!2294235)))

(declare-fun res!1506830 () Bool)

(assert (=> d!1086070 (=> (not res!1506830) (not e!2294235))))

(assert (=> d!1086070 (= res!1506830 (is-Cons!39420 lt!1296034))))

(assert (=> d!1086070 (= (contains!7867 lt!1296034 (tag!6849 newHd!19)) lt!1296059)))

(declare-fun b!3704086 () Bool)

(declare-fun e!2294234 () Bool)

(assert (=> b!3704086 (= e!2294235 e!2294234)))

(declare-fun res!1506831 () Bool)

(assert (=> b!3704086 (=> res!1506831 e!2294234)))

(assert (=> b!3704086 (= res!1506831 (= (h!44840 lt!1296034) (tag!6849 newHd!19)))))

(declare-fun b!3704087 () Bool)

(assert (=> b!3704087 (= e!2294234 (contains!7867 (t!302227 lt!1296034) (tag!6849 newHd!19)))))

(assert (= (and d!1086070 res!1506830) b!3704086))

(assert (= (and b!3704086 (not res!1506831)) b!3704087))

(declare-fun m!4214889 () Bool)

(assert (=> d!1086070 m!4214889))

(declare-fun m!4214891 () Bool)

(assert (=> d!1086070 m!4214891))

(declare-fun m!4214893 () Bool)

(assert (=> b!3704087 m!4214893))

(assert (=> b!3704014 d!1086070))

(declare-fun d!1086072 () Bool)

(declare-fun res!1506832 () Bool)

(declare-fun e!2294236 () Bool)

(assert (=> d!1086072 (=> (not res!1506832) (not e!2294236))))

(assert (=> d!1086072 (= res!1506832 (rulesValid!2321 thiss!25522 (Cons!39419 newHd!19 rules!3698)))))

(assert (=> d!1086072 (= (rulesInvariant!4987 thiss!25522 (Cons!39419 newHd!19 rules!3698)) e!2294236)))

(declare-fun b!3704088 () Bool)

(assert (=> b!3704088 (= e!2294236 (noDuplicateTag!2321 thiss!25522 (Cons!39419 newHd!19 rules!3698) Nil!39420))))

(assert (= (and d!1086072 res!1506832) b!3704088))

(declare-fun m!4214895 () Bool)

(assert (=> d!1086072 m!4214895))

(declare-fun m!4214897 () Bool)

(assert (=> b!3704088 m!4214897))

(assert (=> b!3704013 d!1086072))

(declare-fun d!1086074 () Bool)

(assert (=> d!1086074 (= (inv!52941 (tag!6849 newHd!19)) (= (mod (str.len (value!191467 (tag!6849 newHd!19))) 2) 0))))

(assert (=> b!3704008 d!1086074))

(declare-fun d!1086082 () Bool)

(declare-fun res!1506837 () Bool)

(declare-fun e!2294241 () Bool)

(assert (=> d!1086082 (=> (not res!1506837) (not e!2294241))))

(declare-fun semiInverseModEq!2564 (Int Int) Bool)

(assert (=> d!1086082 (= res!1506837 (semiInverseModEq!2564 (toChars!8204 (transformation!6001 newHd!19)) (toValue!8345 (transformation!6001 newHd!19))))))

(assert (=> d!1086082 (= (inv!52944 (transformation!6001 newHd!19)) e!2294241)))

(declare-fun b!3704093 () Bool)

(declare-fun equivClasses!2463 (Int Int) Bool)

(assert (=> b!3704093 (= e!2294241 (equivClasses!2463 (toChars!8204 (transformation!6001 newHd!19)) (toValue!8345 (transformation!6001 newHd!19))))))

(assert (= (and d!1086082 res!1506837) b!3704093))

(declare-fun m!4214909 () Bool)

(assert (=> d!1086082 m!4214909))

(declare-fun m!4214911 () Bool)

(assert (=> b!3704093 m!4214911))

(assert (=> b!3704008 d!1086082))

(declare-fun d!1086088 () Bool)

(declare-fun lt!1296062 () Bool)

(declare-fun content!5695 (List!39543) (Set Rule!11802))

(assert (=> d!1086088 (= lt!1296062 (set.member (get!13128 lt!1296033) (content!5695 rules!3698)))))

(declare-fun e!2294247 () Bool)

(assert (=> d!1086088 (= lt!1296062 e!2294247)))

(declare-fun res!1506843 () Bool)

(assert (=> d!1086088 (=> (not res!1506843) (not e!2294247))))

(assert (=> d!1086088 (= res!1506843 (is-Cons!39419 rules!3698))))

(assert (=> d!1086088 (= (contains!7868 rules!3698 (get!13128 lt!1296033)) lt!1296062)))

(declare-fun b!3704098 () Bool)

(declare-fun e!2294246 () Bool)

(assert (=> b!3704098 (= e!2294247 e!2294246)))

(declare-fun res!1506842 () Bool)

(assert (=> b!3704098 (=> res!1506842 e!2294246)))

(assert (=> b!3704098 (= res!1506842 (= (h!44839 rules!3698) (get!13128 lt!1296033)))))

(declare-fun b!3704099 () Bool)

(assert (=> b!3704099 (= e!2294246 (contains!7868 (t!302226 rules!3698) (get!13128 lt!1296033)))))

(assert (= (and d!1086088 res!1506843) b!3704098))

(assert (= (and b!3704098 (not res!1506842)) b!3704099))

(declare-fun m!4214913 () Bool)

(assert (=> d!1086088 m!4214913))

(assert (=> d!1086088 m!4214813))

(declare-fun m!4214915 () Bool)

(assert (=> d!1086088 m!4214915))

(assert (=> b!3704099 m!4214813))

(declare-fun m!4214917 () Bool)

(assert (=> b!3704099 m!4214917))

(assert (=> b!3704015 d!1086088))

(declare-fun d!1086090 () Bool)

(assert (=> d!1086090 (= (get!13128 lt!1296033) (v!38514 lt!1296033))))

(assert (=> b!3704015 d!1086090))

(declare-fun d!1086092 () Bool)

(assert (=> d!1086092 (= (inv!52941 tag!250) (= (mod (str.len (value!191467 tag!250)) 2) 0))))

(assert (=> start!349160 d!1086092))

(declare-fun d!1086094 () Bool)

(assert (=> d!1086094 (= (inv!52941 (tag!6849 (h!44839 rules!3698))) (= (mod (str.len (value!191467 (tag!6849 (h!44839 rules!3698)))) 2) 0))))

(assert (=> b!3704016 d!1086094))

(declare-fun d!1086096 () Bool)

(declare-fun res!1506844 () Bool)

(declare-fun e!2294248 () Bool)

(assert (=> d!1086096 (=> (not res!1506844) (not e!2294248))))

(assert (=> d!1086096 (= res!1506844 (semiInverseModEq!2564 (toChars!8204 (transformation!6001 (h!44839 rules!3698))) (toValue!8345 (transformation!6001 (h!44839 rules!3698)))))))

(assert (=> d!1086096 (= (inv!52944 (transformation!6001 (h!44839 rules!3698))) e!2294248)))

(declare-fun b!3704100 () Bool)

(assert (=> b!3704100 (= e!2294248 (equivClasses!2463 (toChars!8204 (transformation!6001 (h!44839 rules!3698))) (toValue!8345 (transformation!6001 (h!44839 rules!3698)))))))

(assert (= (and d!1086096 res!1506844) b!3704100))

(declare-fun m!4214919 () Bool)

(assert (=> d!1086096 m!4214919))

(declare-fun m!4214921 () Bool)

(assert (=> b!3704100 m!4214921))

(assert (=> b!3704016 d!1086096))

(declare-fun b!3704112 () Bool)

(declare-fun e!2294251 () Bool)

(declare-fun tp!1126276 () Bool)

(declare-fun tp!1126278 () Bool)

(assert (=> b!3704112 (= e!2294251 (and tp!1126276 tp!1126278))))

(declare-fun b!3704111 () Bool)

(declare-fun tp_is_empty!18575 () Bool)

(assert (=> b!3704111 (= e!2294251 tp_is_empty!18575)))

(declare-fun b!3704113 () Bool)

(declare-fun tp!1126277 () Bool)

(assert (=> b!3704113 (= e!2294251 tp!1126277)))

(assert (=> b!3704008 (= tp!1126241 e!2294251)))

(declare-fun b!3704114 () Bool)

(declare-fun tp!1126275 () Bool)

(declare-fun tp!1126279 () Bool)

(assert (=> b!3704114 (= e!2294251 (and tp!1126275 tp!1126279))))

(assert (= (and b!3704008 (is-ElementMatch!10760 (regex!6001 newHd!19))) b!3704111))

(assert (= (and b!3704008 (is-Concat!16992 (regex!6001 newHd!19))) b!3704112))

(assert (= (and b!3704008 (is-Star!10760 (regex!6001 newHd!19))) b!3704113))

(assert (= (and b!3704008 (is-Union!10760 (regex!6001 newHd!19))) b!3704114))

(declare-fun b!3704125 () Bool)

(declare-fun b_free!98893 () Bool)

(declare-fun b_next!99597 () Bool)

(assert (=> b!3704125 (= b_free!98893 (not b_next!99597))))

(declare-fun tp!1126288 () Bool)

(declare-fun b_and!277127 () Bool)

(assert (=> b!3704125 (= tp!1126288 b_and!277127)))

(declare-fun b_free!98895 () Bool)

(declare-fun b_next!99599 () Bool)

(assert (=> b!3704125 (= b_free!98895 (not b_next!99599))))

(declare-fun tp!1126290 () Bool)

(declare-fun b_and!277129 () Bool)

(assert (=> b!3704125 (= tp!1126290 b_and!277129)))

(declare-fun e!2294261 () Bool)

(assert (=> b!3704125 (= e!2294261 (and tp!1126288 tp!1126290))))

(declare-fun e!2294260 () Bool)

(declare-fun tp!1126291 () Bool)

(declare-fun b!3704124 () Bool)

(assert (=> b!3704124 (= e!2294260 (and tp!1126291 (inv!52941 (tag!6849 (h!44839 (t!302226 rules!3698)))) (inv!52944 (transformation!6001 (h!44839 (t!302226 rules!3698)))) e!2294261))))

(declare-fun b!3704123 () Bool)

(declare-fun e!2294262 () Bool)

(declare-fun tp!1126289 () Bool)

(assert (=> b!3704123 (= e!2294262 (and e!2294260 tp!1126289))))

(assert (=> b!3704010 (= tp!1126237 e!2294262)))

(assert (= b!3704124 b!3704125))

(assert (= b!3704123 b!3704124))

(assert (= (and b!3704010 (is-Cons!39419 (t!302226 rules!3698))) b!3704123))

(declare-fun m!4214923 () Bool)

(assert (=> b!3704124 m!4214923))

(declare-fun m!4214925 () Bool)

(assert (=> b!3704124 m!4214925))

(declare-fun b!3704127 () Bool)

(declare-fun e!2294264 () Bool)

(declare-fun tp!1126293 () Bool)

(declare-fun tp!1126295 () Bool)

(assert (=> b!3704127 (= e!2294264 (and tp!1126293 tp!1126295))))

(declare-fun b!3704126 () Bool)

(assert (=> b!3704126 (= e!2294264 tp_is_empty!18575)))

(declare-fun b!3704128 () Bool)

(declare-fun tp!1126294 () Bool)

(assert (=> b!3704128 (= e!2294264 tp!1126294)))

(assert (=> b!3704016 (= tp!1126238 e!2294264)))

(declare-fun b!3704129 () Bool)

(declare-fun tp!1126292 () Bool)

(declare-fun tp!1126296 () Bool)

(assert (=> b!3704129 (= e!2294264 (and tp!1126292 tp!1126296))))

(assert (= (and b!3704016 (is-ElementMatch!10760 (regex!6001 (h!44839 rules!3698)))) b!3704126))

(assert (= (and b!3704016 (is-Concat!16992 (regex!6001 (h!44839 rules!3698)))) b!3704127))

(assert (= (and b!3704016 (is-Star!10760 (regex!6001 (h!44839 rules!3698)))) b!3704128))

(assert (= (and b!3704016 (is-Union!10760 (regex!6001 (h!44839 rules!3698)))) b!3704129))

(push 1)

(assert (not d!1086082))

(assert tp_is_empty!18575)

(assert (not b_next!99583))

(assert (not b_next!99587))

(assert (not b!3704124))

(assert b_and!277113)

(assert (not b!3704087))

(assert (not b!3704079))

(assert (not d!1086062))

(assert (not d!1086072))

(assert (not b!3704112))

(assert (not b!3704064))

(assert (not b_next!99581))

(assert (not b!3704127))

(assert (not b!3704078))

(assert (not d!1086056))

(assert (not b_next!99599))

(assert (not b!3704093))

(assert (not b!3704066))

(assert (not b!3704129))

(assert b_and!277129)

(assert b_and!277117)

(assert b_and!277115)

(assert (not b!3704113))

(assert (not d!1086054))

(assert (not d!1086096))

(assert (not b!3704123))

(assert (not b!3704063))

(assert (not b!3704128))

(assert (not d!1086060))

(assert (not b!3704100))

(assert (not b_next!99597))

(assert b_and!277127)

(assert (not d!1086088))

(assert (not b_next!99585))

(assert (not b!3704099))

(assert (not b!3704114))

(assert b_and!277111)

(assert (not b!3704088))

(assert (not b!3704073))

(assert (not d!1086070))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99581))

(assert (not b_next!99599))

(assert (not b_next!99583))

(assert (not b_next!99587))

(assert b_and!277113)

(assert (not b_next!99585))

(assert b_and!277111)

(assert b_and!277129)

(assert b_and!277117)

(assert b_and!277115)

(assert (not b_next!99597))

(assert b_and!277127)

(check-sat)

(pop 1)

