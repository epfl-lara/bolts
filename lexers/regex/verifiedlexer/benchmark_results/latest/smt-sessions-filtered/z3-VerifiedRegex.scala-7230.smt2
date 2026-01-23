; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384956 () Bool)

(assert start!384956)

(declare-fun b!4076728 () Bool)

(declare-fun b_free!113657 () Bool)

(declare-fun b_next!114361 () Bool)

(assert (=> b!4076728 (= b_free!113657 (not b_next!114361))))

(declare-fun tp!1234118 () Bool)

(declare-fun b_and!313459 () Bool)

(assert (=> b!4076728 (= tp!1234118 b_and!313459)))

(declare-fun b_free!113659 () Bool)

(declare-fun b_next!114363 () Bool)

(assert (=> b!4076728 (= b_free!113659 (not b_next!114363))))

(declare-fun tp!1234125 () Bool)

(declare-fun b_and!313461 () Bool)

(assert (=> b!4076728 (= tp!1234125 b_and!313461)))

(declare-fun b!4076720 () Bool)

(declare-fun b_free!113661 () Bool)

(declare-fun b_next!114365 () Bool)

(assert (=> b!4076720 (= b_free!113661 (not b_next!114365))))

(declare-fun tp!1234120 () Bool)

(declare-fun b_and!313463 () Bool)

(assert (=> b!4076720 (= tp!1234120 b_and!313463)))

(declare-fun b_free!113663 () Bool)

(declare-fun b_next!114367 () Bool)

(assert (=> b!4076720 (= b_free!113663 (not b_next!114367))))

(declare-fun tp!1234122 () Bool)

(declare-fun b_and!313465 () Bool)

(assert (=> b!4076720 (= tp!1234122 b_and!313465)))

(declare-fun b!4076715 () Bool)

(declare-fun e!2530320 () Bool)

(declare-fun e!2530309 () Bool)

(assert (=> b!4076715 (= e!2530320 e!2530309)))

(declare-fun res!1665107 () Bool)

(assert (=> b!4076715 (=> res!1665107 e!2530309)))

(declare-datatypes ((List!43761 0))(
  ( (Nil!43637) (Cons!43637 (h!49057 (_ BitVec 16)) (t!337400 List!43761)) )
))
(declare-datatypes ((TokenValue!7262 0))(
  ( (FloatLiteralValue!14524 (text!51279 List!43761)) (TokenValueExt!7261 (__x!26741 Int)) (Broken!36310 (value!221038 List!43761)) (Object!7385) (End!7262) (Def!7262) (Underscore!7262) (Match!7262) (Else!7262) (Error!7262) (Case!7262) (If!7262) (Extends!7262) (Abstract!7262) (Class!7262) (Val!7262) (DelimiterValue!14524 (del!7322 List!43761)) (KeywordValue!7268 (value!221039 List!43761)) (CommentValue!14524 (value!221040 List!43761)) (WhitespaceValue!14524 (value!221041 List!43761)) (IndentationValue!7262 (value!221042 List!43761)) (String!50059) (Int32!7262) (Broken!36311 (value!221043 List!43761)) (Boolean!7263) (Unit!63180) (OperatorValue!7265 (op!7322 List!43761)) (IdentifierValue!14524 (value!221044 List!43761)) (IdentifierValue!14525 (value!221045 List!43761)) (WhitespaceValue!14525 (value!221046 List!43761)) (True!14524) (False!14524) (Broken!36312 (value!221047 List!43761)) (Broken!36313 (value!221048 List!43761)) (True!14525) (RightBrace!7262) (RightBracket!7262) (Colon!7262) (Null!7262) (Comma!7262) (LeftBracket!7262) (False!14525) (LeftBrace!7262) (ImaginaryLiteralValue!7262 (text!51280 List!43761)) (StringLiteralValue!21786 (value!221049 List!43761)) (EOFValue!7262 (value!221050 List!43761)) (IdentValue!7262 (value!221051 List!43761)) (DelimiterValue!14525 (value!221052 List!43761)) (DedentValue!7262 (value!221053 List!43761)) (NewLineValue!7262 (value!221054 List!43761)) (IntegerValue!21786 (value!221055 (_ BitVec 32)) (text!51281 List!43761)) (IntegerValue!21787 (value!221056 Int) (text!51282 List!43761)) (Times!7262) (Or!7262) (Equal!7262) (Minus!7262) (Broken!36314 (value!221057 List!43761)) (And!7262) (Div!7262) (LessEqual!7262) (Mod!7262) (Concat!19199) (Not!7262) (Plus!7262) (SpaceValue!7262 (value!221058 List!43761)) (IntegerValue!21788 (value!221059 Int) (text!51283 List!43761)) (StringLiteralValue!21787 (text!51284 List!43761)) (FloatLiteralValue!14525 (text!51285 List!43761)) (BytesLiteralValue!7262 (value!221060 List!43761)) (CommentValue!14525 (value!221061 List!43761)) (StringLiteralValue!21788 (value!221062 List!43761)) (ErrorTokenValue!7262 (msg!7323 List!43761)) )
))
(declare-datatypes ((C!24060 0))(
  ( (C!24061 (val!14140 Int)) )
))
(declare-datatypes ((Regex!11937 0))(
  ( (ElementMatch!11937 (c!703262 C!24060)) (Concat!19200 (regOne!24386 Regex!11937) (regTwo!24386 Regex!11937)) (EmptyExpr!11937) (Star!11937 (reg!12266 Regex!11937)) (EmptyLang!11937) (Union!11937 (regOne!24387 Regex!11937) (regTwo!24387 Regex!11937)) )
))
(declare-datatypes ((String!50060 0))(
  ( (String!50061 (value!221063 String)) )
))
(declare-datatypes ((List!43762 0))(
  ( (Nil!43638) (Cons!43638 (h!49058 C!24060) (t!337401 List!43762)) )
))
(declare-datatypes ((IArray!26491 0))(
  ( (IArray!26492 (innerList!13303 List!43762)) )
))
(declare-datatypes ((Conc!13243 0))(
  ( (Node!13243 (left!32797 Conc!13243) (right!33127 Conc!13243) (csize!26716 Int) (cheight!13454 Int)) (Leaf!20474 (xs!16549 IArray!26491) (csize!26717 Int)) (Empty!13243) )
))
(declare-datatypes ((BalanceConc!26080 0))(
  ( (BalanceConc!26081 (c!703263 Conc!13243)) )
))
(declare-datatypes ((TokenValueInjection!13952 0))(
  ( (TokenValueInjection!13953 (toValue!9600 Int) (toChars!9459 Int)) )
))
(declare-datatypes ((Rule!13864 0))(
  ( (Rule!13865 (regex!7032 Regex!11937) (tag!7892 String!50060) (isSeparator!7032 Bool) (transformation!7032 TokenValueInjection!13952)) )
))
(declare-datatypes ((Token!13190 0))(
  ( (Token!13191 (value!221064 TokenValue!7262) (rule!10138 Rule!13864) (size!32597 Int) (originalCharacters!7626 List!43762)) )
))
(declare-datatypes ((tuple2!42610 0))(
  ( (tuple2!42611 (_1!24439 Token!13190) (_2!24439 List!43762)) )
))
(declare-datatypes ((Option!9440 0))(
  ( (None!9439) (Some!9439 (v!39885 tuple2!42610)) )
))
(declare-fun lt!1458784 () Option!9440)

(declare-fun isEmpty!26063 (Option!9440) Bool)

(assert (=> b!4076715 (= res!1665107 (isEmpty!26063 lt!1458784))))

(declare-datatypes ((LexerInterface!6621 0))(
  ( (LexerInterfaceExt!6618 (__x!26742 Int)) (Lexer!6619) )
))
(declare-fun thiss!26199 () LexerInterface!6621)

(declare-datatypes ((List!43763 0))(
  ( (Nil!43639) (Cons!43639 (h!49059 Rule!13864) (t!337402 List!43763)) )
))
(declare-fun rules!3870 () List!43763)

(declare-fun input!3411 () List!43762)

(declare-fun maxPrefixOneRule!2907 (LexerInterface!6621 Rule!13864 List!43762) Option!9440)

(assert (=> b!4076715 (= lt!1458784 (maxPrefixOneRule!2907 thiss!26199 (h!49059 rules!3870) input!3411))))

(declare-fun rulesInvariant!5964 (LexerInterface!6621 List!43763) Bool)

(assert (=> b!4076715 (rulesInvariant!5964 thiss!26199 (t!337402 rules!3870))))

(declare-datatypes ((Unit!63181 0))(
  ( (Unit!63182) )
))
(declare-fun lt!1458785 () Unit!63181)

(declare-fun lemmaInvariantOnRulesThenOnTail!750 (LexerInterface!6621 Rule!13864 List!43763) Unit!63181)

(assert (=> b!4076715 (= lt!1458785 (lemmaInvariantOnRulesThenOnTail!750 thiss!26199 (h!49059 rules!3870) (t!337402 rules!3870)))))

(declare-fun b!4076716 () Bool)

(declare-fun res!1665112 () Bool)

(declare-fun e!2530315 () Bool)

(assert (=> b!4076716 (=> (not res!1665112) (not e!2530315))))

(declare-fun p!2988 () List!43762)

(declare-fun isEmpty!26064 (List!43762) Bool)

(assert (=> b!4076716 (= res!1665112 (not (isEmpty!26064 p!2988)))))

(declare-fun b!4076717 () Bool)

(declare-fun isDefined!7152 (Option!9440) Bool)

(assert (=> b!4076717 (= e!2530309 (isDefined!7152 lt!1458784))))

(declare-fun b!4076718 () Bool)

(declare-fun e!2530319 () Bool)

(declare-fun e!2530318 () Bool)

(declare-fun tp!1234123 () Bool)

(assert (=> b!4076718 (= e!2530319 (and e!2530318 tp!1234123))))

(declare-fun b!4076719 () Bool)

(declare-fun res!1665104 () Bool)

(assert (=> b!4076719 (=> (not res!1665104) (not e!2530315))))

(declare-fun suffix!1518 () List!43762)

(declare-fun ++!11438 (List!43762 List!43762) List!43762)

(assert (=> b!4076719 (= res!1665104 (= input!3411 (++!11438 p!2988 suffix!1518)))))

(declare-fun e!2530322 () Bool)

(assert (=> b!4076720 (= e!2530322 (and tp!1234120 tp!1234122))))

(declare-fun b!4076721 () Bool)

(declare-fun res!1665109 () Bool)

(assert (=> b!4076721 (=> (not res!1665109) (not e!2530315))))

(declare-fun r!4213 () Rule!13864)

(declare-fun contains!8701 (List!43763 Rule!13864) Bool)

(assert (=> b!4076721 (= res!1665109 (contains!8701 rules!3870 r!4213))))

(declare-fun res!1665110 () Bool)

(assert (=> start!384956 (=> (not res!1665110) (not e!2530315))))

(get-info :version)

(assert (=> start!384956 (= res!1665110 ((_ is Lexer!6619) thiss!26199))))

(assert (=> start!384956 e!2530315))

(assert (=> start!384956 true))

(declare-fun e!2530313 () Bool)

(assert (=> start!384956 e!2530313))

(assert (=> start!384956 e!2530319))

(declare-fun e!2530321 () Bool)

(assert (=> start!384956 e!2530321))

(declare-fun e!2530312 () Bool)

(assert (=> start!384956 e!2530312))

(declare-fun e!2530314 () Bool)

(assert (=> start!384956 e!2530314))

(declare-fun b!4076722 () Bool)

(declare-fun e!2530311 () Bool)

(assert (=> b!4076722 (= e!2530315 e!2530311)))

(declare-fun res!1665106 () Bool)

(assert (=> b!4076722 (=> (not res!1665106) (not e!2530311))))

(declare-fun lt!1458781 () BalanceConc!26080)

(declare-fun maxPrefix!3913 (LexerInterface!6621 List!43763 List!43762) Option!9440)

(declare-fun apply!10215 (TokenValueInjection!13952 BalanceConc!26080) TokenValue!7262)

(declare-fun size!32598 (List!43762) Int)

(assert (=> b!4076722 (= res!1665106 (= (maxPrefix!3913 thiss!26199 rules!3870 input!3411) (Some!9439 (tuple2!42611 (Token!13191 (apply!10215 (transformation!7032 r!4213) lt!1458781) r!4213 (size!32598 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1458782 () Unit!63181)

(declare-fun lemmaSemiInverse!1999 (TokenValueInjection!13952 BalanceConc!26080) Unit!63181)

(assert (=> b!4076722 (= lt!1458782 (lemmaSemiInverse!1999 (transformation!7032 r!4213) lt!1458781))))

(declare-fun seqFromList!5249 (List!43762) BalanceConc!26080)

(assert (=> b!4076722 (= lt!1458781 (seqFromList!5249 p!2988))))

(declare-fun b!4076723 () Bool)

(declare-fun res!1665108 () Bool)

(assert (=> b!4076723 (=> res!1665108 e!2530320)))

(assert (=> b!4076723 (= res!1665108 (or (and ((_ is Cons!43639) rules!3870) (= (h!49059 rules!3870) r!4213)) (not ((_ is Cons!43639) rules!3870)) (= (h!49059 rules!3870) r!4213)))))

(declare-fun b!4076724 () Bool)

(assert (=> b!4076724 (= e!2530311 (not e!2530320))))

(declare-fun res!1665113 () Bool)

(assert (=> b!4076724 (=> res!1665113 e!2530320)))

(declare-fun matchR!5882 (Regex!11937 List!43762) Bool)

(assert (=> b!4076724 (= res!1665113 (not (matchR!5882 (regex!7032 r!4213) p!2988)))))

(declare-fun ruleValid!2956 (LexerInterface!6621 Rule!13864) Bool)

(assert (=> b!4076724 (ruleValid!2956 thiss!26199 r!4213)))

(declare-fun lt!1458783 () Unit!63181)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2024 (LexerInterface!6621 Rule!13864 List!43763) Unit!63181)

(assert (=> b!4076724 (= lt!1458783 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2024 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4076725 () Bool)

(declare-fun tp_is_empty!20877 () Bool)

(declare-fun tp!1234121 () Bool)

(assert (=> b!4076725 (= e!2530313 (and tp_is_empty!20877 tp!1234121))))

(declare-fun tp!1234117 () Bool)

(declare-fun e!2530310 () Bool)

(declare-fun b!4076726 () Bool)

(declare-fun inv!58290 (String!50060) Bool)

(declare-fun inv!58292 (TokenValueInjection!13952) Bool)

(assert (=> b!4076726 (= e!2530318 (and tp!1234117 (inv!58290 (tag!7892 (h!49059 rules!3870))) (inv!58292 (transformation!7032 (h!49059 rules!3870))) e!2530310))))

(declare-fun b!4076727 () Bool)

(declare-fun res!1665111 () Bool)

(assert (=> b!4076727 (=> (not res!1665111) (not e!2530315))))

(assert (=> b!4076727 (= res!1665111 (rulesInvariant!5964 thiss!26199 rules!3870))))

(assert (=> b!4076728 (= e!2530310 (and tp!1234118 tp!1234125))))

(declare-fun b!4076729 () Bool)

(declare-fun tp!1234124 () Bool)

(assert (=> b!4076729 (= e!2530321 (and tp_is_empty!20877 tp!1234124))))

(declare-fun b!4076730 () Bool)

(declare-fun tp!1234126 () Bool)

(assert (=> b!4076730 (= e!2530312 (and tp_is_empty!20877 tp!1234126))))

(declare-fun tp!1234119 () Bool)

(declare-fun b!4076731 () Bool)

(assert (=> b!4076731 (= e!2530314 (and tp!1234119 (inv!58290 (tag!7892 r!4213)) (inv!58292 (transformation!7032 r!4213)) e!2530322))))

(declare-fun b!4076732 () Bool)

(declare-fun res!1665105 () Bool)

(assert (=> b!4076732 (=> (not res!1665105) (not e!2530315))))

(declare-fun isEmpty!26065 (List!43763) Bool)

(assert (=> b!4076732 (= res!1665105 (not (isEmpty!26065 rules!3870)))))

(assert (= (and start!384956 res!1665110) b!4076732))

(assert (= (and b!4076732 res!1665105) b!4076727))

(assert (= (and b!4076727 res!1665111) b!4076721))

(assert (= (and b!4076721 res!1665109) b!4076719))

(assert (= (and b!4076719 res!1665104) b!4076716))

(assert (= (and b!4076716 res!1665112) b!4076722))

(assert (= (and b!4076722 res!1665106) b!4076724))

(assert (= (and b!4076724 (not res!1665113)) b!4076723))

(assert (= (and b!4076723 (not res!1665108)) b!4076715))

(assert (= (and b!4076715 (not res!1665107)) b!4076717))

(assert (= (and start!384956 ((_ is Cons!43638) suffix!1518)) b!4076725))

(assert (= b!4076726 b!4076728))

(assert (= b!4076718 b!4076726))

(assert (= (and start!384956 ((_ is Cons!43639) rules!3870)) b!4076718))

(assert (= (and start!384956 ((_ is Cons!43638) p!2988)) b!4076729))

(assert (= (and start!384956 ((_ is Cons!43638) input!3411)) b!4076730))

(assert (= b!4076731 b!4076720))

(assert (= start!384956 b!4076731))

(declare-fun m!4684953 () Bool)

(assert (=> b!4076726 m!4684953))

(declare-fun m!4684955 () Bool)

(assert (=> b!4076726 m!4684955))

(declare-fun m!4684957 () Bool)

(assert (=> b!4076722 m!4684957))

(declare-fun m!4684959 () Bool)

(assert (=> b!4076722 m!4684959))

(declare-fun m!4684961 () Bool)

(assert (=> b!4076722 m!4684961))

(declare-fun m!4684963 () Bool)

(assert (=> b!4076722 m!4684963))

(declare-fun m!4684965 () Bool)

(assert (=> b!4076722 m!4684965))

(declare-fun m!4684967 () Bool)

(assert (=> b!4076727 m!4684967))

(declare-fun m!4684969 () Bool)

(assert (=> b!4076717 m!4684969))

(declare-fun m!4684971 () Bool)

(assert (=> b!4076715 m!4684971))

(declare-fun m!4684973 () Bool)

(assert (=> b!4076715 m!4684973))

(declare-fun m!4684975 () Bool)

(assert (=> b!4076715 m!4684975))

(declare-fun m!4684977 () Bool)

(assert (=> b!4076715 m!4684977))

(declare-fun m!4684979 () Bool)

(assert (=> b!4076732 m!4684979))

(declare-fun m!4684981 () Bool)

(assert (=> b!4076731 m!4684981))

(declare-fun m!4684983 () Bool)

(assert (=> b!4076731 m!4684983))

(declare-fun m!4684985 () Bool)

(assert (=> b!4076721 m!4684985))

(declare-fun m!4684987 () Bool)

(assert (=> b!4076719 m!4684987))

(declare-fun m!4684989 () Bool)

(assert (=> b!4076716 m!4684989))

(declare-fun m!4684991 () Bool)

(assert (=> b!4076724 m!4684991))

(declare-fun m!4684993 () Bool)

(assert (=> b!4076724 m!4684993))

(declare-fun m!4684995 () Bool)

(assert (=> b!4076724 m!4684995))

(check-sat (not b!4076724) (not b_next!114367) (not b_next!114363) (not b!4076717) (not b!4076732) (not b!4076731) b_and!313461 (not b!4076719) tp_is_empty!20877 (not b!4076721) (not b!4076715) b_and!313459 (not b!4076718) b_and!313463 (not b_next!114361) (not b!4076716) (not b!4076727) (not b!4076729) (not b!4076722) (not b!4076726) (not b!4076725) (not b_next!114365) b_and!313465 (not b!4076730))
(check-sat (not b_next!114361) (not b_next!114367) (not b_next!114363) b_and!313461 (not b_next!114365) b_and!313465 b_and!313459 b_and!313463)
(get-model)

(declare-fun d!1211227 () Bool)

(assert (=> d!1211227 (= (isDefined!7152 lt!1458784) (not (isEmpty!26063 lt!1458784)))))

(declare-fun bs!592765 () Bool)

(assert (= bs!592765 d!1211227))

(assert (=> bs!592765 m!4684971))

(assert (=> b!4076717 d!1211227))

(declare-fun b!4076741 () Bool)

(declare-fun e!2530328 () List!43762)

(assert (=> b!4076741 (= e!2530328 suffix!1518)))

(declare-fun b!4076744 () Bool)

(declare-fun lt!1458788 () List!43762)

(declare-fun e!2530327 () Bool)

(assert (=> b!4076744 (= e!2530327 (or (not (= suffix!1518 Nil!43638)) (= lt!1458788 p!2988)))))

(declare-fun b!4076743 () Bool)

(declare-fun res!1665125 () Bool)

(assert (=> b!4076743 (=> (not res!1665125) (not e!2530327))))

(assert (=> b!4076743 (= res!1665125 (= (size!32598 lt!1458788) (+ (size!32598 p!2988) (size!32598 suffix!1518))))))

(declare-fun b!4076742 () Bool)

(assert (=> b!4076742 (= e!2530328 (Cons!43638 (h!49058 p!2988) (++!11438 (t!337401 p!2988) suffix!1518)))))

(declare-fun d!1211229 () Bool)

(assert (=> d!1211229 e!2530327))

(declare-fun res!1665126 () Bool)

(assert (=> d!1211229 (=> (not res!1665126) (not e!2530327))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6678 (List!43762) (InoxSet C!24060))

(assert (=> d!1211229 (= res!1665126 (= (content!6678 lt!1458788) ((_ map or) (content!6678 p!2988) (content!6678 suffix!1518))))))

(assert (=> d!1211229 (= lt!1458788 e!2530328)))

(declare-fun c!703266 () Bool)

(assert (=> d!1211229 (= c!703266 ((_ is Nil!43638) p!2988))))

(assert (=> d!1211229 (= (++!11438 p!2988 suffix!1518) lt!1458788)))

(assert (= (and d!1211229 c!703266) b!4076741))

(assert (= (and d!1211229 (not c!703266)) b!4076742))

(assert (= (and d!1211229 res!1665126) b!4076743))

(assert (= (and b!4076743 res!1665125) b!4076744))

(declare-fun m!4684997 () Bool)

(assert (=> b!4076743 m!4684997))

(assert (=> b!4076743 m!4684965))

(declare-fun m!4684999 () Bool)

(assert (=> b!4076743 m!4684999))

(declare-fun m!4685001 () Bool)

(assert (=> b!4076742 m!4685001))

(declare-fun m!4685003 () Bool)

(assert (=> d!1211229 m!4685003))

(declare-fun m!4685005 () Bool)

(assert (=> d!1211229 m!4685005))

(declare-fun m!4685007 () Bool)

(assert (=> d!1211229 m!4685007))

(assert (=> b!4076719 d!1211229))

(declare-fun b!4076794 () Bool)

(declare-fun e!2530361 () Bool)

(declare-fun e!2530363 () Bool)

(assert (=> b!4076794 (= e!2530361 e!2530363)))

(declare-fun c!703278 () Bool)

(assert (=> b!4076794 (= c!703278 ((_ is EmptyLang!11937) (regex!7032 r!4213)))))

(declare-fun b!4076795 () Bool)

(declare-fun res!1665164 () Bool)

(declare-fun e!2530360 () Bool)

(assert (=> b!4076795 (=> (not res!1665164) (not e!2530360))))

(declare-fun call!288503 () Bool)

(assert (=> b!4076795 (= res!1665164 (not call!288503))))

(declare-fun b!4076796 () Bool)

(declare-fun head!8610 (List!43762) C!24060)

(assert (=> b!4076796 (= e!2530360 (= (head!8610 p!2988) (c!703262 (regex!7032 r!4213))))))

(declare-fun bm!288498 () Bool)

(assert (=> bm!288498 (= call!288503 (isEmpty!26064 p!2988))))

(declare-fun b!4076797 () Bool)

(declare-fun res!1665163 () Bool)

(declare-fun e!2530362 () Bool)

(assert (=> b!4076797 (=> res!1665163 e!2530362)))

(assert (=> b!4076797 (= res!1665163 (not ((_ is ElementMatch!11937) (regex!7032 r!4213))))))

(assert (=> b!4076797 (= e!2530363 e!2530362)))

(declare-fun b!4076798 () Bool)

(declare-fun e!2530359 () Bool)

(assert (=> b!4076798 (= e!2530359 (not (= (head!8610 p!2988) (c!703262 (regex!7032 r!4213)))))))

(declare-fun b!4076800 () Bool)

(declare-fun lt!1458797 () Bool)

(assert (=> b!4076800 (= e!2530363 (not lt!1458797))))

(declare-fun b!4076801 () Bool)

(declare-fun e!2530364 () Bool)

(assert (=> b!4076801 (= e!2530364 e!2530359)))

(declare-fun res!1665158 () Bool)

(assert (=> b!4076801 (=> res!1665158 e!2530359)))

(assert (=> b!4076801 (= res!1665158 call!288503)))

(declare-fun b!4076802 () Bool)

(declare-fun res!1665161 () Bool)

(assert (=> b!4076802 (=> (not res!1665161) (not e!2530360))))

(declare-fun tail!6344 (List!43762) List!43762)

(assert (=> b!4076802 (= res!1665161 (isEmpty!26064 (tail!6344 p!2988)))))

(declare-fun b!4076803 () Bool)

(declare-fun res!1665165 () Bool)

(assert (=> b!4076803 (=> res!1665165 e!2530362)))

(assert (=> b!4076803 (= res!1665165 e!2530360)))

(declare-fun res!1665159 () Bool)

(assert (=> b!4076803 (=> (not res!1665159) (not e!2530360))))

(assert (=> b!4076803 (= res!1665159 lt!1458797)))

(declare-fun b!4076804 () Bool)

(declare-fun e!2530358 () Bool)

(declare-fun nullable!4199 (Regex!11937) Bool)

(assert (=> b!4076804 (= e!2530358 (nullable!4199 (regex!7032 r!4213)))))

(declare-fun b!4076805 () Bool)

(assert (=> b!4076805 (= e!2530362 e!2530364)))

(declare-fun res!1665162 () Bool)

(assert (=> b!4076805 (=> (not res!1665162) (not e!2530364))))

(assert (=> b!4076805 (= res!1665162 (not lt!1458797))))

(declare-fun b!4076806 () Bool)

(assert (=> b!4076806 (= e!2530361 (= lt!1458797 call!288503))))

(declare-fun b!4076807 () Bool)

(declare-fun res!1665160 () Bool)

(assert (=> b!4076807 (=> res!1665160 e!2530359)))

(assert (=> b!4076807 (= res!1665160 (not (isEmpty!26064 (tail!6344 p!2988))))))

(declare-fun b!4076799 () Bool)

(declare-fun derivativeStep!3600 (Regex!11937 C!24060) Regex!11937)

(assert (=> b!4076799 (= e!2530358 (matchR!5882 (derivativeStep!3600 (regex!7032 r!4213) (head!8610 p!2988)) (tail!6344 p!2988)))))

(declare-fun d!1211233 () Bool)

(assert (=> d!1211233 e!2530361))

(declare-fun c!703277 () Bool)

(assert (=> d!1211233 (= c!703277 ((_ is EmptyExpr!11937) (regex!7032 r!4213)))))

(assert (=> d!1211233 (= lt!1458797 e!2530358)))

(declare-fun c!703276 () Bool)

(assert (=> d!1211233 (= c!703276 (isEmpty!26064 p!2988))))

(declare-fun validRegex!5399 (Regex!11937) Bool)

(assert (=> d!1211233 (validRegex!5399 (regex!7032 r!4213))))

(assert (=> d!1211233 (= (matchR!5882 (regex!7032 r!4213) p!2988) lt!1458797)))

(assert (= (and d!1211233 c!703276) b!4076804))

(assert (= (and d!1211233 (not c!703276)) b!4076799))

(assert (= (and d!1211233 c!703277) b!4076806))

(assert (= (and d!1211233 (not c!703277)) b!4076794))

(assert (= (and b!4076794 c!703278) b!4076800))

(assert (= (and b!4076794 (not c!703278)) b!4076797))

(assert (= (and b!4076797 (not res!1665163)) b!4076803))

(assert (= (and b!4076803 res!1665159) b!4076795))

(assert (= (and b!4076795 res!1665164) b!4076802))

(assert (= (and b!4076802 res!1665161) b!4076796))

(assert (= (and b!4076803 (not res!1665165)) b!4076805))

(assert (= (and b!4076805 res!1665162) b!4076801))

(assert (= (and b!4076801 (not res!1665158)) b!4076807))

(assert (= (and b!4076807 (not res!1665160)) b!4076798))

(assert (= (or b!4076806 b!4076795 b!4076801) bm!288498))

(declare-fun m!4685031 () Bool)

(assert (=> b!4076798 m!4685031))

(assert (=> b!4076796 m!4685031))

(assert (=> bm!288498 m!4684989))

(assert (=> d!1211233 m!4684989))

(declare-fun m!4685037 () Bool)

(assert (=> d!1211233 m!4685037))

(declare-fun m!4685039 () Bool)

(assert (=> b!4076804 m!4685039))

(declare-fun m!4685041 () Bool)

(assert (=> b!4076802 m!4685041))

(assert (=> b!4076802 m!4685041))

(declare-fun m!4685043 () Bool)

(assert (=> b!4076802 m!4685043))

(assert (=> b!4076799 m!4685031))

(assert (=> b!4076799 m!4685031))

(declare-fun m!4685045 () Bool)

(assert (=> b!4076799 m!4685045))

(assert (=> b!4076799 m!4685041))

(assert (=> b!4076799 m!4685045))

(assert (=> b!4076799 m!4685041))

(declare-fun m!4685047 () Bool)

(assert (=> b!4076799 m!4685047))

(assert (=> b!4076807 m!4685041))

(assert (=> b!4076807 m!4685041))

(assert (=> b!4076807 m!4685043))

(assert (=> b!4076724 d!1211233))

(declare-fun d!1211245 () Bool)

(declare-fun res!1665173 () Bool)

(declare-fun e!2530370 () Bool)

(assert (=> d!1211245 (=> (not res!1665173) (not e!2530370))))

(assert (=> d!1211245 (= res!1665173 (validRegex!5399 (regex!7032 r!4213)))))

(assert (=> d!1211245 (= (ruleValid!2956 thiss!26199 r!4213) e!2530370)))

(declare-fun b!4076815 () Bool)

(declare-fun res!1665174 () Bool)

(assert (=> b!4076815 (=> (not res!1665174) (not e!2530370))))

(assert (=> b!4076815 (= res!1665174 (not (nullable!4199 (regex!7032 r!4213))))))

(declare-fun b!4076816 () Bool)

(assert (=> b!4076816 (= e!2530370 (not (= (tag!7892 r!4213) (String!50061 ""))))))

(assert (= (and d!1211245 res!1665173) b!4076815))

(assert (= (and b!4076815 res!1665174) b!4076816))

(assert (=> d!1211245 m!4685037))

(assert (=> b!4076815 m!4685039))

(assert (=> b!4076724 d!1211245))

(declare-fun d!1211247 () Bool)

(assert (=> d!1211247 (ruleValid!2956 thiss!26199 r!4213)))

(declare-fun lt!1458802 () Unit!63181)

(declare-fun choose!24886 (LexerInterface!6621 Rule!13864 List!43763) Unit!63181)

(assert (=> d!1211247 (= lt!1458802 (choose!24886 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1211247 (contains!8701 rules!3870 r!4213)))

(assert (=> d!1211247 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2024 thiss!26199 r!4213 rules!3870) lt!1458802)))

(declare-fun bs!592766 () Bool)

(assert (= bs!592766 d!1211247))

(assert (=> bs!592766 m!4684993))

(declare-fun m!4685049 () Bool)

(assert (=> bs!592766 m!4685049))

(assert (=> bs!592766 m!4684985))

(assert (=> b!4076724 d!1211247))

(declare-fun d!1211249 () Bool)

(assert (=> d!1211249 (= (inv!58290 (tag!7892 r!4213)) (= (mod (str.len (value!221063 (tag!7892 r!4213))) 2) 0))))

(assert (=> b!4076731 d!1211249))

(declare-fun d!1211251 () Bool)

(declare-fun res!1665177 () Bool)

(declare-fun e!2530373 () Bool)

(assert (=> d!1211251 (=> (not res!1665177) (not e!2530373))))

(declare-fun semiInverseModEq!3008 (Int Int) Bool)

(assert (=> d!1211251 (= res!1665177 (semiInverseModEq!3008 (toChars!9459 (transformation!7032 r!4213)) (toValue!9600 (transformation!7032 r!4213))))))

(assert (=> d!1211251 (= (inv!58292 (transformation!7032 r!4213)) e!2530373)))

(declare-fun b!4076819 () Bool)

(declare-fun equivClasses!2907 (Int Int) Bool)

(assert (=> b!4076819 (= e!2530373 (equivClasses!2907 (toChars!9459 (transformation!7032 r!4213)) (toValue!9600 (transformation!7032 r!4213))))))

(assert (= (and d!1211251 res!1665177) b!4076819))

(declare-fun m!4685051 () Bool)

(assert (=> d!1211251 m!4685051))

(declare-fun m!4685053 () Bool)

(assert (=> b!4076819 m!4685053))

(assert (=> b!4076731 d!1211251))

(declare-fun d!1211253 () Bool)

(assert (=> d!1211253 (= (isEmpty!26063 lt!1458784) (not ((_ is Some!9439) lt!1458784)))))

(assert (=> b!4076715 d!1211253))

(declare-fun b!4076838 () Bool)

(declare-fun res!1665197 () Bool)

(declare-fun e!2530384 () Bool)

(assert (=> b!4076838 (=> (not res!1665197) (not e!2530384))))

(declare-fun lt!1458813 () Option!9440)

(declare-fun get!14308 (Option!9440) tuple2!42610)

(assert (=> b!4076838 (= res!1665197 (= (rule!10138 (_1!24439 (get!14308 lt!1458813))) (h!49059 rules!3870)))))

(declare-fun b!4076839 () Bool)

(declare-fun e!2530383 () Bool)

(declare-datatypes ((tuple2!42614 0))(
  ( (tuple2!42615 (_1!24441 List!43762) (_2!24441 List!43762)) )
))
(declare-fun findLongestMatchInner!1427 (Regex!11937 List!43762 Int List!43762 List!43762 Int) tuple2!42614)

(assert (=> b!4076839 (= e!2530383 (matchR!5882 (regex!7032 (h!49059 rules!3870)) (_1!24441 (findLongestMatchInner!1427 (regex!7032 (h!49059 rules!3870)) Nil!43638 (size!32598 Nil!43638) input!3411 input!3411 (size!32598 input!3411)))))))

(declare-fun b!4076840 () Bool)

(declare-fun res!1665192 () Bool)

(assert (=> b!4076840 (=> (not res!1665192) (not e!2530384))))

(assert (=> b!4076840 (= res!1665192 (= (value!221064 (_1!24439 (get!14308 lt!1458813))) (apply!10215 (transformation!7032 (rule!10138 (_1!24439 (get!14308 lt!1458813)))) (seqFromList!5249 (originalCharacters!7626 (_1!24439 (get!14308 lt!1458813)))))))))

(declare-fun b!4076841 () Bool)

(declare-fun e!2530385 () Bool)

(assert (=> b!4076841 (= e!2530385 e!2530384)))

(declare-fun res!1665193 () Bool)

(assert (=> b!4076841 (=> (not res!1665193) (not e!2530384))))

(declare-fun list!16232 (BalanceConc!26080) List!43762)

(declare-fun charsOf!4816 (Token!13190) BalanceConc!26080)

(assert (=> b!4076841 (= res!1665193 (matchR!5882 (regex!7032 (h!49059 rules!3870)) (list!16232 (charsOf!4816 (_1!24439 (get!14308 lt!1458813))))))))

(declare-fun d!1211255 () Bool)

(assert (=> d!1211255 e!2530385))

(declare-fun res!1665194 () Bool)

(assert (=> d!1211255 (=> res!1665194 e!2530385)))

(assert (=> d!1211255 (= res!1665194 (isEmpty!26063 lt!1458813))))

(declare-fun e!2530382 () Option!9440)

(assert (=> d!1211255 (= lt!1458813 e!2530382)))

(declare-fun c!703282 () Bool)

(declare-fun lt!1458816 () tuple2!42614)

(assert (=> d!1211255 (= c!703282 (isEmpty!26064 (_1!24441 lt!1458816)))))

(declare-fun findLongestMatch!1340 (Regex!11937 List!43762) tuple2!42614)

(assert (=> d!1211255 (= lt!1458816 (findLongestMatch!1340 (regex!7032 (h!49059 rules!3870)) input!3411))))

(assert (=> d!1211255 (ruleValid!2956 thiss!26199 (h!49059 rules!3870))))

(assert (=> d!1211255 (= (maxPrefixOneRule!2907 thiss!26199 (h!49059 rules!3870) input!3411) lt!1458813)))

(declare-fun b!4076842 () Bool)

(assert (=> b!4076842 (= e!2530384 (= (size!32597 (_1!24439 (get!14308 lt!1458813))) (size!32598 (originalCharacters!7626 (_1!24439 (get!14308 lt!1458813))))))))

(declare-fun b!4076843 () Bool)

(declare-fun res!1665198 () Bool)

(assert (=> b!4076843 (=> (not res!1665198) (not e!2530384))))

(assert (=> b!4076843 (= res!1665198 (= (++!11438 (list!16232 (charsOf!4816 (_1!24439 (get!14308 lt!1458813)))) (_2!24439 (get!14308 lt!1458813))) input!3411))))

(declare-fun b!4076844 () Bool)

(declare-fun size!32600 (BalanceConc!26080) Int)

(assert (=> b!4076844 (= e!2530382 (Some!9439 (tuple2!42611 (Token!13191 (apply!10215 (transformation!7032 (h!49059 rules!3870)) (seqFromList!5249 (_1!24441 lt!1458816))) (h!49059 rules!3870) (size!32600 (seqFromList!5249 (_1!24441 lt!1458816))) (_1!24441 lt!1458816)) (_2!24441 lt!1458816))))))

(declare-fun lt!1458815 () Unit!63181)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1400 (Regex!11937 List!43762) Unit!63181)

(assert (=> b!4076844 (= lt!1458815 (longestMatchIsAcceptedByMatchOrIsEmpty!1400 (regex!7032 (h!49059 rules!3870)) input!3411))))

(declare-fun res!1665196 () Bool)

(assert (=> b!4076844 (= res!1665196 (isEmpty!26064 (_1!24441 (findLongestMatchInner!1427 (regex!7032 (h!49059 rules!3870)) Nil!43638 (size!32598 Nil!43638) input!3411 input!3411 (size!32598 input!3411)))))))

(assert (=> b!4076844 (=> res!1665196 e!2530383)))

(assert (=> b!4076844 e!2530383))

(declare-fun lt!1458817 () Unit!63181)

(assert (=> b!4076844 (= lt!1458817 lt!1458815)))

(declare-fun lt!1458814 () Unit!63181)

(assert (=> b!4076844 (= lt!1458814 (lemmaSemiInverse!1999 (transformation!7032 (h!49059 rules!3870)) (seqFromList!5249 (_1!24441 lt!1458816))))))

(declare-fun b!4076845 () Bool)

(declare-fun res!1665195 () Bool)

(assert (=> b!4076845 (=> (not res!1665195) (not e!2530384))))

(assert (=> b!4076845 (= res!1665195 (< (size!32598 (_2!24439 (get!14308 lt!1458813))) (size!32598 input!3411)))))

(declare-fun b!4076846 () Bool)

(assert (=> b!4076846 (= e!2530382 None!9439)))

(assert (= (and d!1211255 c!703282) b!4076846))

(assert (= (and d!1211255 (not c!703282)) b!4076844))

(assert (= (and b!4076844 (not res!1665196)) b!4076839))

(assert (= (and d!1211255 (not res!1665194)) b!4076841))

(assert (= (and b!4076841 res!1665193) b!4076843))

(assert (= (and b!4076843 res!1665198) b!4076845))

(assert (= (and b!4076845 res!1665195) b!4076838))

(assert (= (and b!4076838 res!1665197) b!4076840))

(assert (= (and b!4076840 res!1665192) b!4076842))

(declare-fun m!4685055 () Bool)

(assert (=> b!4076845 m!4685055))

(declare-fun m!4685057 () Bool)

(assert (=> b!4076845 m!4685057))

(declare-fun m!4685059 () Bool)

(assert (=> b!4076845 m!4685059))

(declare-fun m!4685061 () Bool)

(assert (=> d!1211255 m!4685061))

(declare-fun m!4685063 () Bool)

(assert (=> d!1211255 m!4685063))

(declare-fun m!4685065 () Bool)

(assert (=> d!1211255 m!4685065))

(declare-fun m!4685067 () Bool)

(assert (=> d!1211255 m!4685067))

(assert (=> b!4076840 m!4685055))

(declare-fun m!4685069 () Bool)

(assert (=> b!4076840 m!4685069))

(assert (=> b!4076840 m!4685069))

(declare-fun m!4685071 () Bool)

(assert (=> b!4076840 m!4685071))

(declare-fun m!4685073 () Bool)

(assert (=> b!4076839 m!4685073))

(assert (=> b!4076839 m!4685059))

(assert (=> b!4076839 m!4685073))

(assert (=> b!4076839 m!4685059))

(declare-fun m!4685075 () Bool)

(assert (=> b!4076839 m!4685075))

(declare-fun m!4685077 () Bool)

(assert (=> b!4076839 m!4685077))

(assert (=> b!4076841 m!4685055))

(declare-fun m!4685079 () Bool)

(assert (=> b!4076841 m!4685079))

(assert (=> b!4076841 m!4685079))

(declare-fun m!4685081 () Bool)

(assert (=> b!4076841 m!4685081))

(assert (=> b!4076841 m!4685081))

(declare-fun m!4685083 () Bool)

(assert (=> b!4076841 m!4685083))

(assert (=> b!4076843 m!4685055))

(assert (=> b!4076843 m!4685079))

(assert (=> b!4076843 m!4685079))

(assert (=> b!4076843 m!4685081))

(assert (=> b!4076843 m!4685081))

(declare-fun m!4685085 () Bool)

(assert (=> b!4076843 m!4685085))

(assert (=> b!4076838 m!4685055))

(declare-fun m!4685087 () Bool)

(assert (=> b!4076844 m!4685087))

(declare-fun m!4685089 () Bool)

(assert (=> b!4076844 m!4685089))

(assert (=> b!4076844 m!4685073))

(assert (=> b!4076844 m!4685059))

(assert (=> b!4076844 m!4685075))

(declare-fun m!4685091 () Bool)

(assert (=> b!4076844 m!4685091))

(assert (=> b!4076844 m!4685087))

(declare-fun m!4685093 () Bool)

(assert (=> b!4076844 m!4685093))

(assert (=> b!4076844 m!4685073))

(declare-fun m!4685095 () Bool)

(assert (=> b!4076844 m!4685095))

(assert (=> b!4076844 m!4685087))

(declare-fun m!4685097 () Bool)

(assert (=> b!4076844 m!4685097))

(assert (=> b!4076844 m!4685087))

(assert (=> b!4076844 m!4685059))

(assert (=> b!4076842 m!4685055))

(declare-fun m!4685099 () Bool)

(assert (=> b!4076842 m!4685099))

(assert (=> b!4076715 d!1211255))

(declare-fun d!1211257 () Bool)

(declare-fun res!1665201 () Bool)

(declare-fun e!2530388 () Bool)

(assert (=> d!1211257 (=> (not res!1665201) (not e!2530388))))

(declare-fun rulesValid!2742 (LexerInterface!6621 List!43763) Bool)

(assert (=> d!1211257 (= res!1665201 (rulesValid!2742 thiss!26199 (t!337402 rules!3870)))))

(assert (=> d!1211257 (= (rulesInvariant!5964 thiss!26199 (t!337402 rules!3870)) e!2530388)))

(declare-fun b!4076849 () Bool)

(declare-datatypes ((List!43765 0))(
  ( (Nil!43641) (Cons!43641 (h!49061 String!50060) (t!337428 List!43765)) )
))
(declare-fun noDuplicateTag!2743 (LexerInterface!6621 List!43763 List!43765) Bool)

(assert (=> b!4076849 (= e!2530388 (noDuplicateTag!2743 thiss!26199 (t!337402 rules!3870) Nil!43641))))

(assert (= (and d!1211257 res!1665201) b!4076849))

(declare-fun m!4685101 () Bool)

(assert (=> d!1211257 m!4685101))

(declare-fun m!4685103 () Bool)

(assert (=> b!4076849 m!4685103))

(assert (=> b!4076715 d!1211257))

(declare-fun d!1211259 () Bool)

(assert (=> d!1211259 (rulesInvariant!5964 thiss!26199 (t!337402 rules!3870))))

(declare-fun lt!1458820 () Unit!63181)

(declare-fun choose!24888 (LexerInterface!6621 Rule!13864 List!43763) Unit!63181)

(assert (=> d!1211259 (= lt!1458820 (choose!24888 thiss!26199 (h!49059 rules!3870) (t!337402 rules!3870)))))

(assert (=> d!1211259 (rulesInvariant!5964 thiss!26199 (Cons!43639 (h!49059 rules!3870) (t!337402 rules!3870)))))

(assert (=> d!1211259 (= (lemmaInvariantOnRulesThenOnTail!750 thiss!26199 (h!49059 rules!3870) (t!337402 rules!3870)) lt!1458820)))

(declare-fun bs!592767 () Bool)

(assert (= bs!592767 d!1211259))

(assert (=> bs!592767 m!4684975))

(declare-fun m!4685105 () Bool)

(assert (=> bs!592767 m!4685105))

(declare-fun m!4685107 () Bool)

(assert (=> bs!592767 m!4685107))

(assert (=> b!4076715 d!1211259))

(declare-fun d!1211261 () Bool)

(assert (=> d!1211261 (= (inv!58290 (tag!7892 (h!49059 rules!3870))) (= (mod (str.len (value!221063 (tag!7892 (h!49059 rules!3870)))) 2) 0))))

(assert (=> b!4076726 d!1211261))

(declare-fun d!1211263 () Bool)

(declare-fun res!1665202 () Bool)

(declare-fun e!2530389 () Bool)

(assert (=> d!1211263 (=> (not res!1665202) (not e!2530389))))

(assert (=> d!1211263 (= res!1665202 (semiInverseModEq!3008 (toChars!9459 (transformation!7032 (h!49059 rules!3870))) (toValue!9600 (transformation!7032 (h!49059 rules!3870)))))))

(assert (=> d!1211263 (= (inv!58292 (transformation!7032 (h!49059 rules!3870))) e!2530389)))

(declare-fun b!4076850 () Bool)

(assert (=> b!4076850 (= e!2530389 (equivClasses!2907 (toChars!9459 (transformation!7032 (h!49059 rules!3870))) (toValue!9600 (transformation!7032 (h!49059 rules!3870)))))))

(assert (= (and d!1211263 res!1665202) b!4076850))

(declare-fun m!4685109 () Bool)

(assert (=> d!1211263 m!4685109))

(declare-fun m!4685111 () Bool)

(assert (=> b!4076850 m!4685111))

(assert (=> b!4076726 d!1211263))

(declare-fun d!1211265 () Bool)

(declare-fun res!1665203 () Bool)

(declare-fun e!2530390 () Bool)

(assert (=> d!1211265 (=> (not res!1665203) (not e!2530390))))

(assert (=> d!1211265 (= res!1665203 (rulesValid!2742 thiss!26199 rules!3870))))

(assert (=> d!1211265 (= (rulesInvariant!5964 thiss!26199 rules!3870) e!2530390)))

(declare-fun b!4076851 () Bool)

(assert (=> b!4076851 (= e!2530390 (noDuplicateTag!2743 thiss!26199 rules!3870 Nil!43641))))

(assert (= (and d!1211265 res!1665203) b!4076851))

(declare-fun m!4685113 () Bool)

(assert (=> d!1211265 m!4685113))

(declare-fun m!4685115 () Bool)

(assert (=> b!4076851 m!4685115))

(assert (=> b!4076727 d!1211265))

(declare-fun d!1211267 () Bool)

(declare-fun dynLambda!18546 (Int BalanceConc!26080) TokenValue!7262)

(assert (=> d!1211267 (= (apply!10215 (transformation!7032 r!4213) lt!1458781) (dynLambda!18546 (toValue!9600 (transformation!7032 r!4213)) lt!1458781))))

(declare-fun b_lambda!119119 () Bool)

(assert (=> (not b_lambda!119119) (not d!1211267)))

(declare-fun tb!244865 () Bool)

(declare-fun t!337404 () Bool)

(assert (=> (and b!4076728 (= (toValue!9600 (transformation!7032 (h!49059 rules!3870))) (toValue!9600 (transformation!7032 r!4213))) t!337404) tb!244865))

(declare-fun result!296914 () Bool)

(declare-fun inv!21 (TokenValue!7262) Bool)

(assert (=> tb!244865 (= result!296914 (inv!21 (dynLambda!18546 (toValue!9600 (transformation!7032 r!4213)) lt!1458781)))))

(declare-fun m!4685117 () Bool)

(assert (=> tb!244865 m!4685117))

(assert (=> d!1211267 t!337404))

(declare-fun b_and!313467 () Bool)

(assert (= b_and!313459 (and (=> t!337404 result!296914) b_and!313467)))

(declare-fun t!337406 () Bool)

(declare-fun tb!244867 () Bool)

(assert (=> (and b!4076720 (= (toValue!9600 (transformation!7032 r!4213)) (toValue!9600 (transformation!7032 r!4213))) t!337406) tb!244867))

(declare-fun result!296918 () Bool)

(assert (= result!296918 result!296914))

(assert (=> d!1211267 t!337406))

(declare-fun b_and!313469 () Bool)

(assert (= b_and!313463 (and (=> t!337406 result!296918) b_and!313469)))

(declare-fun m!4685119 () Bool)

(assert (=> d!1211267 m!4685119))

(assert (=> b!4076722 d!1211267))

(declare-fun b!4076872 () Bool)

(declare-fun res!1665219 () Bool)

(declare-fun e!2530401 () Bool)

(assert (=> b!4076872 (=> (not res!1665219) (not e!2530401))))

(declare-fun lt!1458834 () Option!9440)

(assert (=> b!4076872 (= res!1665219 (< (size!32598 (_2!24439 (get!14308 lt!1458834))) (size!32598 input!3411)))))

(declare-fun b!4076873 () Bool)

(declare-fun e!2530400 () Bool)

(assert (=> b!4076873 (= e!2530400 e!2530401)))

(declare-fun res!1665218 () Bool)

(assert (=> b!4076873 (=> (not res!1665218) (not e!2530401))))

(assert (=> b!4076873 (= res!1665218 (isDefined!7152 lt!1458834))))

(declare-fun b!4076874 () Bool)

(declare-fun res!1665220 () Bool)

(assert (=> b!4076874 (=> (not res!1665220) (not e!2530401))))

(assert (=> b!4076874 (= res!1665220 (= (value!221064 (_1!24439 (get!14308 lt!1458834))) (apply!10215 (transformation!7032 (rule!10138 (_1!24439 (get!14308 lt!1458834)))) (seqFromList!5249 (originalCharacters!7626 (_1!24439 (get!14308 lt!1458834)))))))))

(declare-fun b!4076875 () Bool)

(declare-fun res!1665224 () Bool)

(assert (=> b!4076875 (=> (not res!1665224) (not e!2530401))))

(assert (=> b!4076875 (= res!1665224 (= (list!16232 (charsOf!4816 (_1!24439 (get!14308 lt!1458834)))) (originalCharacters!7626 (_1!24439 (get!14308 lt!1458834)))))))

(declare-fun b!4076876 () Bool)

(declare-fun e!2530402 () Option!9440)

(declare-fun lt!1458835 () Option!9440)

(declare-fun lt!1458833 () Option!9440)

(assert (=> b!4076876 (= e!2530402 (ite (and ((_ is None!9439) lt!1458835) ((_ is None!9439) lt!1458833)) None!9439 (ite ((_ is None!9439) lt!1458833) lt!1458835 (ite ((_ is None!9439) lt!1458835) lt!1458833 (ite (>= (size!32597 (_1!24439 (v!39885 lt!1458835))) (size!32597 (_1!24439 (v!39885 lt!1458833)))) lt!1458835 lt!1458833)))))))

(declare-fun call!288506 () Option!9440)

(assert (=> b!4076876 (= lt!1458835 call!288506)))

(assert (=> b!4076876 (= lt!1458833 (maxPrefix!3913 thiss!26199 (t!337402 rules!3870) input!3411))))

(declare-fun b!4076877 () Bool)

(assert (=> b!4076877 (= e!2530402 call!288506)))

(declare-fun b!4076878 () Bool)

(declare-fun res!1665221 () Bool)

(assert (=> b!4076878 (=> (not res!1665221) (not e!2530401))))

(assert (=> b!4076878 (= res!1665221 (= (++!11438 (list!16232 (charsOf!4816 (_1!24439 (get!14308 lt!1458834)))) (_2!24439 (get!14308 lt!1458834))) input!3411))))

(declare-fun bm!288501 () Bool)

(assert (=> bm!288501 (= call!288506 (maxPrefixOneRule!2907 thiss!26199 (h!49059 rules!3870) input!3411))))

(declare-fun d!1211269 () Bool)

(assert (=> d!1211269 e!2530400))

(declare-fun res!1665223 () Bool)

(assert (=> d!1211269 (=> res!1665223 e!2530400)))

(assert (=> d!1211269 (= res!1665223 (isEmpty!26063 lt!1458834))))

(assert (=> d!1211269 (= lt!1458834 e!2530402)))

(declare-fun c!703285 () Bool)

(assert (=> d!1211269 (= c!703285 (and ((_ is Cons!43639) rules!3870) ((_ is Nil!43639) (t!337402 rules!3870))))))

(declare-fun lt!1458832 () Unit!63181)

(declare-fun lt!1458831 () Unit!63181)

(assert (=> d!1211269 (= lt!1458832 lt!1458831)))

(declare-fun isPrefix!4103 (List!43762 List!43762) Bool)

(assert (=> d!1211269 (isPrefix!4103 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2654 (List!43762 List!43762) Unit!63181)

(assert (=> d!1211269 (= lt!1458831 (lemmaIsPrefixRefl!2654 input!3411 input!3411))))

(declare-fun rulesValidInductive!2583 (LexerInterface!6621 List!43763) Bool)

(assert (=> d!1211269 (rulesValidInductive!2583 thiss!26199 rules!3870)))

(assert (=> d!1211269 (= (maxPrefix!3913 thiss!26199 rules!3870 input!3411) lt!1458834)))

(declare-fun b!4076879 () Bool)

(declare-fun res!1665222 () Bool)

(assert (=> b!4076879 (=> (not res!1665222) (not e!2530401))))

(assert (=> b!4076879 (= res!1665222 (matchR!5882 (regex!7032 (rule!10138 (_1!24439 (get!14308 lt!1458834)))) (list!16232 (charsOf!4816 (_1!24439 (get!14308 lt!1458834))))))))

(declare-fun b!4076880 () Bool)

(assert (=> b!4076880 (= e!2530401 (contains!8701 rules!3870 (rule!10138 (_1!24439 (get!14308 lt!1458834)))))))

(assert (= (and d!1211269 c!703285) b!4076877))

(assert (= (and d!1211269 (not c!703285)) b!4076876))

(assert (= (or b!4076877 b!4076876) bm!288501))

(assert (= (and d!1211269 (not res!1665223)) b!4076873))

(assert (= (and b!4076873 res!1665218) b!4076875))

(assert (= (and b!4076875 res!1665224) b!4076872))

(assert (= (and b!4076872 res!1665219) b!4076878))

(assert (= (and b!4076878 res!1665221) b!4076874))

(assert (= (and b!4076874 res!1665220) b!4076879))

(assert (= (and b!4076879 res!1665222) b!4076880))

(declare-fun m!4685121 () Bool)

(assert (=> b!4076875 m!4685121))

(declare-fun m!4685123 () Bool)

(assert (=> b!4076875 m!4685123))

(assert (=> b!4076875 m!4685123))

(declare-fun m!4685125 () Bool)

(assert (=> b!4076875 m!4685125))

(assert (=> bm!288501 m!4684973))

(assert (=> b!4076878 m!4685121))

(assert (=> b!4076878 m!4685123))

(assert (=> b!4076878 m!4685123))

(assert (=> b!4076878 m!4685125))

(assert (=> b!4076878 m!4685125))

(declare-fun m!4685127 () Bool)

(assert (=> b!4076878 m!4685127))

(declare-fun m!4685129 () Bool)

(assert (=> b!4076873 m!4685129))

(assert (=> b!4076872 m!4685121))

(declare-fun m!4685131 () Bool)

(assert (=> b!4076872 m!4685131))

(assert (=> b!4076872 m!4685059))

(declare-fun m!4685133 () Bool)

(assert (=> d!1211269 m!4685133))

(declare-fun m!4685135 () Bool)

(assert (=> d!1211269 m!4685135))

(declare-fun m!4685137 () Bool)

(assert (=> d!1211269 m!4685137))

(declare-fun m!4685139 () Bool)

(assert (=> d!1211269 m!4685139))

(declare-fun m!4685141 () Bool)

(assert (=> b!4076876 m!4685141))

(assert (=> b!4076874 m!4685121))

(declare-fun m!4685143 () Bool)

(assert (=> b!4076874 m!4685143))

(assert (=> b!4076874 m!4685143))

(declare-fun m!4685145 () Bool)

(assert (=> b!4076874 m!4685145))

(assert (=> b!4076879 m!4685121))

(assert (=> b!4076879 m!4685123))

(assert (=> b!4076879 m!4685123))

(assert (=> b!4076879 m!4685125))

(assert (=> b!4076879 m!4685125))

(declare-fun m!4685147 () Bool)

(assert (=> b!4076879 m!4685147))

(assert (=> b!4076880 m!4685121))

(declare-fun m!4685149 () Bool)

(assert (=> b!4076880 m!4685149))

(assert (=> b!4076722 d!1211269))

(declare-fun b!4077043 () Bool)

(declare-fun e!2530485 () Bool)

(assert (=> b!4077043 (= e!2530485 true)))

(declare-fun d!1211271 () Bool)

(assert (=> d!1211271 e!2530485))

(assert (= d!1211271 b!4077043))

(declare-fun order!22805 () Int)

(declare-fun lambda!127711 () Int)

(declare-fun order!22807 () Int)

(declare-fun dynLambda!18547 (Int Int) Int)

(declare-fun dynLambda!18548 (Int Int) Int)

(assert (=> b!4077043 (< (dynLambda!18547 order!22805 (toValue!9600 (transformation!7032 r!4213))) (dynLambda!18548 order!22807 lambda!127711))))

(declare-fun order!22809 () Int)

(declare-fun dynLambda!18549 (Int Int) Int)

(assert (=> b!4077043 (< (dynLambda!18549 order!22809 (toChars!9459 (transformation!7032 r!4213))) (dynLambda!18548 order!22807 lambda!127711))))

(declare-fun dynLambda!18550 (Int TokenValue!7262) BalanceConc!26080)

(assert (=> d!1211271 (= (list!16232 (dynLambda!18550 (toChars!9459 (transformation!7032 r!4213)) (dynLambda!18546 (toValue!9600 (transformation!7032 r!4213)) lt!1458781))) (list!16232 lt!1458781))))

(declare-fun lt!1458881 () Unit!63181)

(declare-fun ForallOf!847 (Int BalanceConc!26080) Unit!63181)

(assert (=> d!1211271 (= lt!1458881 (ForallOf!847 lambda!127711 lt!1458781))))

(assert (=> d!1211271 (= (lemmaSemiInverse!1999 (transformation!7032 r!4213) lt!1458781) lt!1458881)))

(declare-fun b_lambda!119133 () Bool)

(assert (=> (not b_lambda!119133) (not d!1211271)))

(declare-fun t!337421 () Bool)

(declare-fun tb!244881 () Bool)

(assert (=> (and b!4076728 (= (toChars!9459 (transformation!7032 (h!49059 rules!3870))) (toChars!9459 (transformation!7032 r!4213))) t!337421) tb!244881))

(declare-fun e!2530488 () Bool)

(declare-fun tp!1234169 () Bool)

(declare-fun b!4077048 () Bool)

(declare-fun inv!58295 (Conc!13243) Bool)

(assert (=> b!4077048 (= e!2530488 (and (inv!58295 (c!703263 (dynLambda!18550 (toChars!9459 (transformation!7032 r!4213)) (dynLambda!18546 (toValue!9600 (transformation!7032 r!4213)) lt!1458781)))) tp!1234169))))

(declare-fun result!296942 () Bool)

(declare-fun inv!58296 (BalanceConc!26080) Bool)

(assert (=> tb!244881 (= result!296942 (and (inv!58296 (dynLambda!18550 (toChars!9459 (transformation!7032 r!4213)) (dynLambda!18546 (toValue!9600 (transformation!7032 r!4213)) lt!1458781))) e!2530488))))

(assert (= tb!244881 b!4077048))

(declare-fun m!4685279 () Bool)

(assert (=> b!4077048 m!4685279))

(declare-fun m!4685281 () Bool)

(assert (=> tb!244881 m!4685281))

(assert (=> d!1211271 t!337421))

(declare-fun b_and!313487 () Bool)

(assert (= b_and!313461 (and (=> t!337421 result!296942) b_and!313487)))

(declare-fun t!337423 () Bool)

(declare-fun tb!244883 () Bool)

(assert (=> (and b!4076720 (= (toChars!9459 (transformation!7032 r!4213)) (toChars!9459 (transformation!7032 r!4213))) t!337423) tb!244883))

(declare-fun result!296946 () Bool)

(assert (= result!296946 result!296942))

(assert (=> d!1211271 t!337423))

(declare-fun b_and!313489 () Bool)

(assert (= b_and!313465 (and (=> t!337423 result!296946) b_and!313489)))

(declare-fun b_lambda!119135 () Bool)

(assert (=> (not b_lambda!119135) (not d!1211271)))

(assert (=> d!1211271 t!337404))

(declare-fun b_and!313491 () Bool)

(assert (= b_and!313467 (and (=> t!337404 result!296914) b_and!313491)))

(assert (=> d!1211271 t!337406))

(declare-fun b_and!313493 () Bool)

(assert (= b_and!313469 (and (=> t!337406 result!296918) b_and!313493)))

(declare-fun m!4685283 () Bool)

(assert (=> d!1211271 m!4685283))

(assert (=> d!1211271 m!4685119))

(declare-fun m!4685285 () Bool)

(assert (=> d!1211271 m!4685285))

(declare-fun m!4685287 () Bool)

(assert (=> d!1211271 m!4685287))

(assert (=> d!1211271 m!4685119))

(assert (=> d!1211271 m!4685285))

(declare-fun m!4685289 () Bool)

(assert (=> d!1211271 m!4685289))

(assert (=> b!4076722 d!1211271))

(declare-fun d!1211305 () Bool)

(declare-fun lt!1458884 () Int)

(assert (=> d!1211305 (>= lt!1458884 0)))

(declare-fun e!2530491 () Int)

(assert (=> d!1211305 (= lt!1458884 e!2530491)))

(declare-fun c!703307 () Bool)

(assert (=> d!1211305 (= c!703307 ((_ is Nil!43638) p!2988))))

(assert (=> d!1211305 (= (size!32598 p!2988) lt!1458884)))

(declare-fun b!4077053 () Bool)

(assert (=> b!4077053 (= e!2530491 0)))

(declare-fun b!4077054 () Bool)

(assert (=> b!4077054 (= e!2530491 (+ 1 (size!32598 (t!337401 p!2988))))))

(assert (= (and d!1211305 c!703307) b!4077053))

(assert (= (and d!1211305 (not c!703307)) b!4077054))

(declare-fun m!4685291 () Bool)

(assert (=> b!4077054 m!4685291))

(assert (=> b!4076722 d!1211305))

(declare-fun d!1211307 () Bool)

(declare-fun fromListB!2394 (List!43762) BalanceConc!26080)

(assert (=> d!1211307 (= (seqFromList!5249 p!2988) (fromListB!2394 p!2988))))

(declare-fun bs!592772 () Bool)

(assert (= bs!592772 d!1211307))

(declare-fun m!4685293 () Bool)

(assert (=> bs!592772 m!4685293))

(assert (=> b!4076722 d!1211307))

(declare-fun d!1211309 () Bool)

(declare-fun lt!1458887 () Bool)

(declare-fun content!6679 (List!43763) (InoxSet Rule!13864))

(assert (=> d!1211309 (= lt!1458887 (select (content!6679 rules!3870) r!4213))))

(declare-fun e!2530497 () Bool)

(assert (=> d!1211309 (= lt!1458887 e!2530497)))

(declare-fun res!1665304 () Bool)

(assert (=> d!1211309 (=> (not res!1665304) (not e!2530497))))

(assert (=> d!1211309 (= res!1665304 ((_ is Cons!43639) rules!3870))))

(assert (=> d!1211309 (= (contains!8701 rules!3870 r!4213) lt!1458887)))

(declare-fun b!4077059 () Bool)

(declare-fun e!2530496 () Bool)

(assert (=> b!4077059 (= e!2530497 e!2530496)))

(declare-fun res!1665303 () Bool)

(assert (=> b!4077059 (=> res!1665303 e!2530496)))

(assert (=> b!4077059 (= res!1665303 (= (h!49059 rules!3870) r!4213))))

(declare-fun b!4077060 () Bool)

(assert (=> b!4077060 (= e!2530496 (contains!8701 (t!337402 rules!3870) r!4213))))

(assert (= (and d!1211309 res!1665304) b!4077059))

(assert (= (and b!4077059 (not res!1665303)) b!4077060))

(declare-fun m!4685295 () Bool)

(assert (=> d!1211309 m!4685295))

(declare-fun m!4685297 () Bool)

(assert (=> d!1211309 m!4685297))

(declare-fun m!4685299 () Bool)

(assert (=> b!4077060 m!4685299))

(assert (=> b!4076721 d!1211309))

(declare-fun d!1211311 () Bool)

(assert (=> d!1211311 (= (isEmpty!26065 rules!3870) ((_ is Nil!43639) rules!3870))))

(assert (=> b!4076732 d!1211311))

(declare-fun d!1211313 () Bool)

(assert (=> d!1211313 (= (isEmpty!26064 p!2988) ((_ is Nil!43638) p!2988))))

(assert (=> b!4076716 d!1211313))

(declare-fun b!4077071 () Bool)

(declare-fun b_free!113669 () Bool)

(declare-fun b_next!114373 () Bool)

(assert (=> b!4077071 (= b_free!113669 (not b_next!114373))))

(declare-fun tb!244885 () Bool)

(declare-fun t!337425 () Bool)

(assert (=> (and b!4077071 (= (toValue!9600 (transformation!7032 (h!49059 (t!337402 rules!3870)))) (toValue!9600 (transformation!7032 r!4213))) t!337425) tb!244885))

(declare-fun result!296950 () Bool)

(assert (= result!296950 result!296914))

(assert (=> d!1211267 t!337425))

(assert (=> d!1211271 t!337425))

(declare-fun b_and!313495 () Bool)

(declare-fun tp!1234180 () Bool)

(assert (=> b!4077071 (= tp!1234180 (and (=> t!337425 result!296950) b_and!313495))))

(declare-fun b_free!113671 () Bool)

(declare-fun b_next!114375 () Bool)

(assert (=> b!4077071 (= b_free!113671 (not b_next!114375))))

(declare-fun t!337427 () Bool)

(declare-fun tb!244887 () Bool)

(assert (=> (and b!4077071 (= (toChars!9459 (transformation!7032 (h!49059 (t!337402 rules!3870)))) (toChars!9459 (transformation!7032 r!4213))) t!337427) tb!244887))

(declare-fun result!296952 () Bool)

(assert (= result!296952 result!296942))

(assert (=> d!1211271 t!337427))

(declare-fun b_and!313497 () Bool)

(declare-fun tp!1234179 () Bool)

(assert (=> b!4077071 (= tp!1234179 (and (=> t!337427 result!296952) b_and!313497))))

(declare-fun e!2530507 () Bool)

(assert (=> b!4077071 (= e!2530507 (and tp!1234180 tp!1234179))))

(declare-fun tp!1234181 () Bool)

(declare-fun e!2530508 () Bool)

(declare-fun b!4077070 () Bool)

(assert (=> b!4077070 (= e!2530508 (and tp!1234181 (inv!58290 (tag!7892 (h!49059 (t!337402 rules!3870)))) (inv!58292 (transformation!7032 (h!49059 (t!337402 rules!3870)))) e!2530507))))

(declare-fun b!4077069 () Bool)

(declare-fun e!2530509 () Bool)

(declare-fun tp!1234178 () Bool)

(assert (=> b!4077069 (= e!2530509 (and e!2530508 tp!1234178))))

(assert (=> b!4076718 (= tp!1234123 e!2530509)))

(assert (= b!4077070 b!4077071))

(assert (= b!4077069 b!4077070))

(assert (= (and b!4076718 ((_ is Cons!43639) (t!337402 rules!3870))) b!4077069))

(declare-fun m!4685301 () Bool)

(assert (=> b!4077070 m!4685301))

(declare-fun m!4685303 () Bool)

(assert (=> b!4077070 m!4685303))

(declare-fun b!4077076 () Bool)

(declare-fun e!2530512 () Bool)

(declare-fun tp!1234184 () Bool)

(assert (=> b!4077076 (= e!2530512 (and tp_is_empty!20877 tp!1234184))))

(assert (=> b!4076730 (= tp!1234126 e!2530512)))

(assert (= (and b!4076730 ((_ is Cons!43638) (t!337401 input!3411))) b!4077076))

(declare-fun b!4077077 () Bool)

(declare-fun e!2530513 () Bool)

(declare-fun tp!1234185 () Bool)

(assert (=> b!4077077 (= e!2530513 (and tp_is_empty!20877 tp!1234185))))

(assert (=> b!4076729 (= tp!1234124 e!2530513)))

(assert (= (and b!4076729 ((_ is Cons!43638) (t!337401 p!2988))) b!4077077))

(declare-fun b!4077091 () Bool)

(declare-fun e!2530516 () Bool)

(declare-fun tp!1234197 () Bool)

(declare-fun tp!1234199 () Bool)

(assert (=> b!4077091 (= e!2530516 (and tp!1234197 tp!1234199))))

(declare-fun b!4077088 () Bool)

(assert (=> b!4077088 (= e!2530516 tp_is_empty!20877)))

(declare-fun b!4077089 () Bool)

(declare-fun tp!1234198 () Bool)

(declare-fun tp!1234200 () Bool)

(assert (=> b!4077089 (= e!2530516 (and tp!1234198 tp!1234200))))

(declare-fun b!4077090 () Bool)

(declare-fun tp!1234196 () Bool)

(assert (=> b!4077090 (= e!2530516 tp!1234196)))

(assert (=> b!4076731 (= tp!1234119 e!2530516)))

(assert (= (and b!4076731 ((_ is ElementMatch!11937) (regex!7032 r!4213))) b!4077088))

(assert (= (and b!4076731 ((_ is Concat!19200) (regex!7032 r!4213))) b!4077089))

(assert (= (and b!4076731 ((_ is Star!11937) (regex!7032 r!4213))) b!4077090))

(assert (= (and b!4076731 ((_ is Union!11937) (regex!7032 r!4213))) b!4077091))

(declare-fun b!4077095 () Bool)

(declare-fun e!2530517 () Bool)

(declare-fun tp!1234202 () Bool)

(declare-fun tp!1234204 () Bool)

(assert (=> b!4077095 (= e!2530517 (and tp!1234202 tp!1234204))))

(declare-fun b!4077092 () Bool)

(assert (=> b!4077092 (= e!2530517 tp_is_empty!20877)))

(declare-fun b!4077093 () Bool)

(declare-fun tp!1234203 () Bool)

(declare-fun tp!1234205 () Bool)

(assert (=> b!4077093 (= e!2530517 (and tp!1234203 tp!1234205))))

(declare-fun b!4077094 () Bool)

(declare-fun tp!1234201 () Bool)

(assert (=> b!4077094 (= e!2530517 tp!1234201)))

(assert (=> b!4076726 (= tp!1234117 e!2530517)))

(assert (= (and b!4076726 ((_ is ElementMatch!11937) (regex!7032 (h!49059 rules!3870)))) b!4077092))

(assert (= (and b!4076726 ((_ is Concat!19200) (regex!7032 (h!49059 rules!3870)))) b!4077093))

(assert (= (and b!4076726 ((_ is Star!11937) (regex!7032 (h!49059 rules!3870)))) b!4077094))

(assert (= (and b!4076726 ((_ is Union!11937) (regex!7032 (h!49059 rules!3870)))) b!4077095))

(declare-fun b!4077096 () Bool)

(declare-fun e!2530518 () Bool)

(declare-fun tp!1234206 () Bool)

(assert (=> b!4077096 (= e!2530518 (and tp_is_empty!20877 tp!1234206))))

(assert (=> b!4076725 (= tp!1234121 e!2530518)))

(assert (= (and b!4076725 ((_ is Cons!43638) (t!337401 suffix!1518))) b!4077096))

(declare-fun b_lambda!119137 () Bool)

(assert (= b_lambda!119119 (or (and b!4076728 b_free!113657 (= (toValue!9600 (transformation!7032 (h!49059 rules!3870))) (toValue!9600 (transformation!7032 r!4213)))) (and b!4076720 b_free!113661) (and b!4077071 b_free!113669 (= (toValue!9600 (transformation!7032 (h!49059 (t!337402 rules!3870)))) (toValue!9600 (transformation!7032 r!4213)))) b_lambda!119137)))

(declare-fun b_lambda!119139 () Bool)

(assert (= b_lambda!119135 (or (and b!4076728 b_free!113657 (= (toValue!9600 (transformation!7032 (h!49059 rules!3870))) (toValue!9600 (transformation!7032 r!4213)))) (and b!4076720 b_free!113661) (and b!4077071 b_free!113669 (= (toValue!9600 (transformation!7032 (h!49059 (t!337402 rules!3870)))) (toValue!9600 (transformation!7032 r!4213)))) b_lambda!119139)))

(declare-fun b_lambda!119141 () Bool)

(assert (= b_lambda!119133 (or (and b!4076728 b_free!113659 (= (toChars!9459 (transformation!7032 (h!49059 rules!3870))) (toChars!9459 (transformation!7032 r!4213)))) (and b!4076720 b_free!113663) (and b!4077071 b_free!113671 (= (toChars!9459 (transformation!7032 (h!49059 (t!337402 rules!3870)))) (toChars!9459 (transformation!7032 r!4213)))) b_lambda!119141)))

(check-sat (not d!1211233) (not b!4077096) (not b!4077070) (not b!4076842) b_and!313491 (not d!1211307) (not b!4076874) (not b!4077089) (not b!4076839) (not b_lambda!119137) (not b!4076872) (not b!4076804) (not d!1211269) (not b_next!114361) (not b!4076798) (not b!4076878) (not b!4076799) (not b_next!114375) (not b_next!114367) (not b!4076876) (not b!4076879) (not b_next!114363) (not d!1211229) (not bm!288501) (not b!4077060) (not bm!288498) (not b!4076851) (not b!4077090) (not d!1211245) (not b!4076838) (not b!4076807) (not b_next!114373) (not b!4077048) (not d!1211265) (not b!4076742) (not b_lambda!119139) (not tb!244865) (not d!1211263) (not b!4076815) (not b!4076743) (not b!4077094) (not d!1211259) b_and!313493 (not b!4077077) (not d!1211247) (not b!4076802) (not b!4076849) (not b_next!114365) (not b!4076840) (not d!1211309) (not b!4076843) (not b!4076845) (not b!4076796) b_and!313489 tp_is_empty!20877 (not d!1211251) (not b!4076875) (not d!1211271) b_and!313495 (not d!1211255) b_and!313497 (not b!4077095) (not b!4076819) (not b!4076880) (not b!4077054) (not b!4076844) (not b!4077069) (not tb!244881) (not b!4076873) (not b!4077076) (not d!1211257) (not b!4076841) (not b!4077091) (not b!4076850) (not b_lambda!119141) (not d!1211227) (not b!4077093) b_and!313487)
(check-sat (not b_next!114361) (not b_next!114363) (not b_next!114373) b_and!313493 (not b_next!114365) b_and!313489 b_and!313495 b_and!313497 b_and!313491 b_and!313487 (not b_next!114375) (not b_next!114367))
