; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!515374 () Bool)

(assert start!515374)

(declare-fun b!4911080 () Bool)

(declare-fun b_free!131983 () Bool)

(declare-fun b_next!132773 () Bool)

(assert (=> b!4911080 (= b_free!131983 (not b_next!132773))))

(declare-fun tp!1380960 () Bool)

(declare-fun b_and!346739 () Bool)

(assert (=> b!4911080 (= tp!1380960 b_and!346739)))

(declare-fun b_free!131985 () Bool)

(declare-fun b_next!132775 () Bool)

(assert (=> b!4911080 (= b_free!131985 (not b_next!132775))))

(declare-fun tp!1380962 () Bool)

(declare-fun b_and!346741 () Bool)

(assert (=> b!4911080 (= tp!1380962 b_and!346741)))

(declare-fun b!4911078 () Bool)

(declare-fun res!2097852 () Bool)

(declare-fun e!3069666 () Bool)

(assert (=> b!4911078 (=> (not res!2097852) (not e!3069666))))

(declare-datatypes ((C!26854 0))(
  ( (C!26855 (val!22761 Int)) )
))
(declare-datatypes ((Regex!13328 0))(
  ( (ElementMatch!13328 (c!834789 C!26854)) (Concat!21891 (regOne!27168 Regex!13328) (regTwo!27168 Regex!13328)) (EmptyExpr!13328) (Star!13328 (reg!13657 Regex!13328)) (EmptyLang!13328) (Union!13328 (regOne!27169 Regex!13328) (regTwo!27169 Regex!13328)) )
))
(declare-datatypes ((String!64258 0))(
  ( (String!64259 (value!264318 String)) )
))
(declare-datatypes ((List!56704 0))(
  ( (Nil!56580) (Cons!56580 (h!63028 (_ BitVec 16)) (t!367050 List!56704)) )
))
(declare-datatypes ((TokenValue!8563 0))(
  ( (FloatLiteralValue!17126 (text!60386 List!56704)) (TokenValueExt!8562 (__x!34419 Int)) (Broken!42815 (value!264319 List!56704)) (Object!8686) (End!8563) (Def!8563) (Underscore!8563) (Match!8563) (Else!8563) (Error!8563) (Case!8563) (If!8563) (Extends!8563) (Abstract!8563) (Class!8563) (Val!8563) (DelimiterValue!17126 (del!8623 List!56704)) (KeywordValue!8569 (value!264320 List!56704)) (CommentValue!17126 (value!264321 List!56704)) (WhitespaceValue!17126 (value!264322 List!56704)) (IndentationValue!8563 (value!264323 List!56704)) (String!64260) (Int32!8563) (Broken!42816 (value!264324 List!56704)) (Boolean!8564) (Unit!146846) (OperatorValue!8566 (op!8623 List!56704)) (IdentifierValue!17126 (value!264325 List!56704)) (IdentifierValue!17127 (value!264326 List!56704)) (WhitespaceValue!17127 (value!264327 List!56704)) (True!17126) (False!17126) (Broken!42817 (value!264328 List!56704)) (Broken!42818 (value!264329 List!56704)) (True!17127) (RightBrace!8563) (RightBracket!8563) (Colon!8563) (Null!8563) (Comma!8563) (LeftBracket!8563) (False!17127) (LeftBrace!8563) (ImaginaryLiteralValue!8563 (text!60387 List!56704)) (StringLiteralValue!25689 (value!264330 List!56704)) (EOFValue!8563 (value!264331 List!56704)) (IdentValue!8563 (value!264332 List!56704)) (DelimiterValue!17127 (value!264333 List!56704)) (DedentValue!8563 (value!264334 List!56704)) (NewLineValue!8563 (value!264335 List!56704)) (IntegerValue!25689 (value!264336 (_ BitVec 32)) (text!60388 List!56704)) (IntegerValue!25690 (value!264337 Int) (text!60389 List!56704)) (Times!8563) (Or!8563) (Equal!8563) (Minus!8563) (Broken!42819 (value!264338 List!56704)) (And!8563) (Div!8563) (LessEqual!8563) (Mod!8563) (Concat!21892) (Not!8563) (Plus!8563) (SpaceValue!8563 (value!264339 List!56704)) (IntegerValue!25691 (value!264340 Int) (text!60390 List!56704)) (StringLiteralValue!25690 (text!60391 List!56704)) (FloatLiteralValue!17127 (text!60392 List!56704)) (BytesLiteralValue!8563 (value!264341 List!56704)) (CommentValue!17127 (value!264342 List!56704)) (StringLiteralValue!25691 (value!264343 List!56704)) (ErrorTokenValue!8563 (msg!8624 List!56704)) )
))
(declare-datatypes ((List!56705 0))(
  ( (Nil!56581) (Cons!56581 (h!63029 C!26854) (t!367051 List!56705)) )
))
(declare-datatypes ((IArray!29703 0))(
  ( (IArray!29704 (innerList!14909 List!56705)) )
))
(declare-datatypes ((Conc!14821 0))(
  ( (Node!14821 (left!41230 Conc!14821) (right!41560 Conc!14821) (csize!29872 Int) (cheight!15032 Int)) (Leaf!24665 (xs!18137 IArray!29703) (csize!29873 Int)) (Empty!14821) )
))
(declare-datatypes ((BalanceConc!29072 0))(
  ( (BalanceConc!29073 (c!834790 Conc!14821)) )
))
(declare-datatypes ((TokenValueInjection!16434 0))(
  ( (TokenValueInjection!16435 (toValue!11198 Int) (toChars!11057 Int)) )
))
(declare-datatypes ((Rule!16306 0))(
  ( (Rule!16307 (regex!8253 Regex!13328) (tag!9117 String!64258) (isSeparator!8253 Bool) (transformation!8253 TokenValueInjection!16434)) )
))
(declare-fun rule!164 () Rule!16306)

(declare-fun input!1509 () BalanceConc!29072)

(declare-fun isEmpty!30507 (BalanceConc!29072) Bool)

(declare-datatypes ((tuple2!60956 0))(
  ( (tuple2!60957 (_1!33781 BalanceConc!29072) (_2!33781 BalanceConc!29072)) )
))
(declare-fun findLongestMatchWithZipperSequence!341 (Regex!13328 BalanceConc!29072) tuple2!60956)

(assert (=> b!4911078 (= res!2097852 (not (isEmpty!30507 (_1!33781 (findLongestMatchWithZipperSequence!341 (regex!8253 rule!164) input!1509)))))))

(declare-fun b!4911079 () Bool)

(declare-fun res!2097851 () Bool)

(assert (=> b!4911079 (=> (not res!2097851) (not e!3069666))))

(declare-datatypes ((LexerInterface!7845 0))(
  ( (LexerInterfaceExt!7842 (__x!34420 Int)) (Lexer!7843) )
))
(declare-fun thiss!15943 () LexerInterface!7845)

(declare-fun ruleValid!3750 (LexerInterface!7845 Rule!16306) Bool)

(assert (=> b!4911079 (= res!2097851 (ruleValid!3750 thiss!15943 rule!164))))

(declare-fun e!3069665 () Bool)

(assert (=> b!4911080 (= e!3069665 (and tp!1380960 tp!1380962))))

(declare-fun b!4911081 () Bool)

(declare-fun tp!1380963 () Bool)

(declare-fun e!3069667 () Bool)

(declare-fun inv!73143 (String!64258) Bool)

(declare-fun inv!73146 (TokenValueInjection!16434) Bool)

(assert (=> b!4911081 (= e!3069667 (and tp!1380963 (inv!73143 (tag!9117 rule!164)) (inv!73146 (transformation!8253 rule!164)) e!3069665))))

(declare-fun b!4911082 () Bool)

(declare-fun validRegex!5919 (Regex!13328) Bool)

(assert (=> b!4911082 (= e!3069666 (not (validRegex!5919 (regex!8253 rule!164))))))

(declare-fun lt!2015958 () List!56705)

(declare-fun list!17857 (BalanceConc!29072) List!56705)

(assert (=> b!4911082 (= lt!2015958 (list!17857 input!1509))))

(declare-fun b!4911083 () Bool)

(declare-fun e!3069669 () Bool)

(declare-fun tp!1380961 () Bool)

(declare-fun inv!73147 (Conc!14821) Bool)

(assert (=> b!4911083 (= e!3069669 (and (inv!73147 (c!834790 input!1509)) tp!1380961))))

(declare-fun res!2097853 () Bool)

(assert (=> start!515374 (=> (not res!2097853) (not e!3069666))))

(assert (=> start!515374 (= res!2097853 (is-Lexer!7843 thiss!15943))))

(assert (=> start!515374 e!3069666))

(assert (=> start!515374 true))

(assert (=> start!515374 e!3069667))

(declare-fun inv!73148 (BalanceConc!29072) Bool)

(assert (=> start!515374 (and (inv!73148 input!1509) e!3069669)))

(assert (= (and start!515374 res!2097853) b!4911079))

(assert (= (and b!4911079 res!2097851) b!4911078))

(assert (= (and b!4911078 res!2097852) b!4911082))

(assert (= b!4911081 b!4911080))

(assert (= start!515374 b!4911081))

(assert (= start!515374 b!4911083))

(declare-fun m!5920910 () Bool)

(assert (=> b!4911081 m!5920910))

(declare-fun m!5920912 () Bool)

(assert (=> b!4911081 m!5920912))

(declare-fun m!5920914 () Bool)

(assert (=> b!4911083 m!5920914))

(declare-fun m!5920916 () Bool)

(assert (=> b!4911078 m!5920916))

(declare-fun m!5920918 () Bool)

(assert (=> b!4911078 m!5920918))

(declare-fun m!5920920 () Bool)

(assert (=> start!515374 m!5920920))

(declare-fun m!5920922 () Bool)

(assert (=> b!4911082 m!5920922))

(declare-fun m!5920924 () Bool)

(assert (=> b!4911082 m!5920924))

(declare-fun m!5920926 () Bool)

(assert (=> b!4911079 m!5920926))

(push 1)

(assert b_and!346739)

(assert (not b!4911082))

(assert b_and!346741)

(assert (not b!4911079))

(assert (not b_next!132775))

(assert (not b!4911081))

(assert (not b_next!132773))

(assert (not b!4911078))

(assert (not b!4911083))

(assert (not start!515374))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346741)

(assert b_and!346739)

(assert (not b_next!132775))

(assert (not b_next!132773))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1578236 () Bool)

(declare-fun isBalanced!4050 (Conc!14821) Bool)

(assert (=> d!1578236 (= (inv!73148 input!1509) (isBalanced!4050 (c!834790 input!1509)))))

(declare-fun bs!1177471 () Bool)

(assert (= bs!1177471 d!1578236))

(declare-fun m!5920946 () Bool)

(assert (=> bs!1177471 m!5920946))

(assert (=> start!515374 d!1578236))

(declare-fun d!1578238 () Bool)

(declare-fun res!2097871 () Bool)

(declare-fun e!3069687 () Bool)

(assert (=> d!1578238 (=> (not res!2097871) (not e!3069687))))

(assert (=> d!1578238 (= res!2097871 (validRegex!5919 (regex!8253 rule!164)))))

(assert (=> d!1578238 (= (ruleValid!3750 thiss!15943 rule!164) e!3069687)))

(declare-fun b!4911106 () Bool)

(declare-fun res!2097872 () Bool)

(assert (=> b!4911106 (=> (not res!2097872) (not e!3069687))))

(declare-fun nullable!4592 (Regex!13328) Bool)

(assert (=> b!4911106 (= res!2097872 (not (nullable!4592 (regex!8253 rule!164))))))

(declare-fun b!4911107 () Bool)

(assert (=> b!4911107 (= e!3069687 (not (= (tag!9117 rule!164) (String!64259 ""))))))

(assert (= (and d!1578238 res!2097871) b!4911106))

(assert (= (and b!4911106 res!2097872) b!4911107))

(assert (=> d!1578238 m!5920922))

(declare-fun m!5920948 () Bool)

(assert (=> b!4911106 m!5920948))

(assert (=> b!4911079 d!1578238))

(declare-fun d!1578244 () Bool)

(declare-fun lt!2015964 () Bool)

(declare-fun isEmpty!30509 (List!56705) Bool)

(assert (=> d!1578244 (= lt!2015964 (isEmpty!30509 (list!17857 (_1!33781 (findLongestMatchWithZipperSequence!341 (regex!8253 rule!164) input!1509)))))))

(declare-fun isEmpty!30510 (Conc!14821) Bool)

(assert (=> d!1578244 (= lt!2015964 (isEmpty!30510 (c!834790 (_1!33781 (findLongestMatchWithZipperSequence!341 (regex!8253 rule!164) input!1509)))))))

(assert (=> d!1578244 (= (isEmpty!30507 (_1!33781 (findLongestMatchWithZipperSequence!341 (regex!8253 rule!164) input!1509))) lt!2015964)))

(declare-fun bs!1177472 () Bool)

(assert (= bs!1177472 d!1578244))

(declare-fun m!5920950 () Bool)

(assert (=> bs!1177472 m!5920950))

(assert (=> bs!1177472 m!5920950))

(declare-fun m!5920952 () Bool)

(assert (=> bs!1177472 m!5920952))

(declare-fun m!5920954 () Bool)

(assert (=> bs!1177472 m!5920954))

(assert (=> b!4911078 d!1578244))

(declare-fun d!1578246 () Bool)

(declare-fun lt!2015970 () tuple2!60956)

(declare-datatypes ((tuple2!60960 0))(
  ( (tuple2!60961 (_1!33783 List!56705) (_2!33783 List!56705)) )
))
(declare-fun findLongestMatch!1682 (Regex!13328 List!56705) tuple2!60960)

(assert (=> d!1578246 (= (tuple2!60961 (list!17857 (_1!33781 lt!2015970)) (list!17857 (_2!33781 lt!2015970))) (findLongestMatch!1682 (regex!8253 rule!164) (list!17857 input!1509)))))

(declare-fun choose!35926 (Regex!13328 BalanceConc!29072) tuple2!60956)

(assert (=> d!1578246 (= lt!2015970 (choose!35926 (regex!8253 rule!164) input!1509))))

(assert (=> d!1578246 (validRegex!5919 (regex!8253 rule!164))))

(assert (=> d!1578246 (= (findLongestMatchWithZipperSequence!341 (regex!8253 rule!164) input!1509) lt!2015970)))

(declare-fun bs!1177475 () Bool)

(assert (= bs!1177475 d!1578246))

(assert (=> bs!1177475 m!5920924))

(assert (=> bs!1177475 m!5920924))

(declare-fun m!5920978 () Bool)

(assert (=> bs!1177475 m!5920978))

(assert (=> bs!1177475 m!5920922))

(declare-fun m!5920980 () Bool)

(assert (=> bs!1177475 m!5920980))

(declare-fun m!5920982 () Bool)

(assert (=> bs!1177475 m!5920982))

(declare-fun m!5920984 () Bool)

(assert (=> bs!1177475 m!5920984))

(assert (=> b!4911078 d!1578246))

(declare-fun d!1578258 () Bool)

(declare-fun c!834804 () Bool)

(assert (=> d!1578258 (= c!834804 (is-Node!14821 (c!834790 input!1509)))))

(declare-fun e!3069722 () Bool)

(assert (=> d!1578258 (= (inv!73147 (c!834790 input!1509)) e!3069722)))

(declare-fun b!4911153 () Bool)

(declare-fun inv!73152 (Conc!14821) Bool)

(assert (=> b!4911153 (= e!3069722 (inv!73152 (c!834790 input!1509)))))

(declare-fun b!4911154 () Bool)

(declare-fun e!3069723 () Bool)

(assert (=> b!4911154 (= e!3069722 e!3069723)))

(declare-fun res!2097896 () Bool)

(assert (=> b!4911154 (= res!2097896 (not (is-Leaf!24665 (c!834790 input!1509))))))

(assert (=> b!4911154 (=> res!2097896 e!3069723)))

(declare-fun b!4911155 () Bool)

(declare-fun inv!73153 (Conc!14821) Bool)

(assert (=> b!4911155 (= e!3069723 (inv!73153 (c!834790 input!1509)))))

(assert (= (and d!1578258 c!834804) b!4911153))

(assert (= (and d!1578258 (not c!834804)) b!4911154))

(assert (= (and b!4911154 (not res!2097896)) b!4911155))

(declare-fun m!5920986 () Bool)

(assert (=> b!4911153 m!5920986))

(declare-fun m!5920988 () Bool)

(assert (=> b!4911155 m!5920988))

(assert (=> b!4911083 d!1578258))

(declare-fun d!1578260 () Bool)

(assert (=> d!1578260 (= (inv!73143 (tag!9117 rule!164)) (= (mod (str.len (value!264318 (tag!9117 rule!164))) 2) 0))))

(assert (=> b!4911081 d!1578260))

(declare-fun d!1578262 () Bool)

(declare-fun res!2097899 () Bool)

(declare-fun e!3069726 () Bool)

(assert (=> d!1578262 (=> (not res!2097899) (not e!3069726))))

(declare-fun semiInverseModEq!3654 (Int Int) Bool)

(assert (=> d!1578262 (= res!2097899 (semiInverseModEq!3654 (toChars!11057 (transformation!8253 rule!164)) (toValue!11198 (transformation!8253 rule!164))))))

(assert (=> d!1578262 (= (inv!73146 (transformation!8253 rule!164)) e!3069726)))

(declare-fun b!4911158 () Bool)

(declare-fun equivClasses!3504 (Int Int) Bool)

(assert (=> b!4911158 (= e!3069726 (equivClasses!3504 (toChars!11057 (transformation!8253 rule!164)) (toValue!11198 (transformation!8253 rule!164))))))

(assert (= (and d!1578262 res!2097899) b!4911158))

(declare-fun m!5920990 () Bool)

(assert (=> d!1578262 m!5920990))

(declare-fun m!5920992 () Bool)

(assert (=> b!4911158 m!5920992))

(assert (=> b!4911081 d!1578262))

(declare-fun b!4911177 () Bool)

(declare-fun e!3069747 () Bool)

(declare-fun e!3069746 () Bool)

(assert (=> b!4911177 (= e!3069747 e!3069746)))

(declare-fun c!834809 () Bool)

(assert (=> b!4911177 (= c!834809 (is-Star!13328 (regex!8253 rule!164)))))

(declare-fun b!4911178 () Bool)

(declare-fun e!3069743 () Bool)

(assert (=> b!4911178 (= e!3069746 e!3069743)))

(declare-fun res!2097914 () Bool)

(assert (=> b!4911178 (= res!2097914 (not (nullable!4592 (reg!13657 (regex!8253 rule!164)))))))

(assert (=> b!4911178 (=> (not res!2097914) (not e!3069743))))

(declare-fun b!4911179 () Bool)

(declare-fun e!3069745 () Bool)

(assert (=> b!4911179 (= e!3069746 e!3069745)))

(declare-fun c!834810 () Bool)

(assert (=> b!4911179 (= c!834810 (is-Union!13328 (regex!8253 rule!164)))))

(declare-fun b!4911180 () Bool)

(declare-fun call!341030 () Bool)

(assert (=> b!4911180 (= e!3069743 call!341030)))

(declare-fun bm!341025 () Bool)

(declare-fun call!341032 () Bool)

(assert (=> bm!341025 (= call!341032 call!341030)))

(declare-fun b!4911181 () Bool)

(declare-fun res!2097912 () Bool)

(declare-fun e!3069744 () Bool)

(assert (=> b!4911181 (=> res!2097912 e!3069744)))

(assert (=> b!4911181 (= res!2097912 (not (is-Concat!21891 (regex!8253 rule!164))))))

(assert (=> b!4911181 (= e!3069745 e!3069744)))

(declare-fun b!4911182 () Bool)

(declare-fun res!2097911 () Bool)

(declare-fun e!3069741 () Bool)

(assert (=> b!4911182 (=> (not res!2097911) (not e!3069741))))

(assert (=> b!4911182 (= res!2097911 call!341032)))

(assert (=> b!4911182 (= e!3069745 e!3069741)))

(declare-fun bm!341026 () Bool)

(declare-fun call!341031 () Bool)

(assert (=> bm!341026 (= call!341031 (validRegex!5919 (ite c!834810 (regTwo!27169 (regex!8253 rule!164)) (regOne!27168 (regex!8253 rule!164)))))))

(declare-fun d!1578264 () Bool)

(declare-fun res!2097910 () Bool)

(assert (=> d!1578264 (=> res!2097910 e!3069747)))

(assert (=> d!1578264 (= res!2097910 (is-ElementMatch!13328 (regex!8253 rule!164)))))

(assert (=> d!1578264 (= (validRegex!5919 (regex!8253 rule!164)) e!3069747)))

(declare-fun bm!341027 () Bool)

(assert (=> bm!341027 (= call!341030 (validRegex!5919 (ite c!834809 (reg!13657 (regex!8253 rule!164)) (ite c!834810 (regOne!27169 (regex!8253 rule!164)) (regTwo!27168 (regex!8253 rule!164))))))))

(declare-fun b!4911183 () Bool)

(assert (=> b!4911183 (= e!3069741 call!341031)))

(declare-fun b!4911184 () Bool)

(declare-fun e!3069742 () Bool)

(assert (=> b!4911184 (= e!3069742 call!341032)))

(declare-fun b!4911185 () Bool)

(assert (=> b!4911185 (= e!3069744 e!3069742)))

(declare-fun res!2097913 () Bool)

(assert (=> b!4911185 (=> (not res!2097913) (not e!3069742))))

(assert (=> b!4911185 (= res!2097913 call!341031)))

(assert (= (and d!1578264 (not res!2097910)) b!4911177))

(assert (= (and b!4911177 c!834809) b!4911178))

(assert (= (and b!4911177 (not c!834809)) b!4911179))

(assert (= (and b!4911178 res!2097914) b!4911180))

(assert (= (and b!4911179 c!834810) b!4911182))

(assert (= (and b!4911179 (not c!834810)) b!4911181))

(assert (= (and b!4911182 res!2097911) b!4911183))

(assert (= (and b!4911181 (not res!2097912)) b!4911185))

(assert (= (and b!4911185 res!2097913) b!4911184))

(assert (= (or b!4911183 b!4911185) bm!341026))

(assert (= (or b!4911182 b!4911184) bm!341025))

(assert (= (or b!4911180 bm!341025) bm!341027))

(declare-fun m!5920994 () Bool)

(assert (=> b!4911178 m!5920994))

(declare-fun m!5920996 () Bool)

(assert (=> bm!341026 m!5920996))

(declare-fun m!5920998 () Bool)

(assert (=> bm!341027 m!5920998))

(assert (=> b!4911082 d!1578264))

(declare-fun d!1578266 () Bool)

(declare-fun list!17859 (Conc!14821) List!56705)

(assert (=> d!1578266 (= (list!17857 input!1509) (list!17859 (c!834790 input!1509)))))

(declare-fun bs!1177476 () Bool)

(assert (= bs!1177476 d!1578266))

(declare-fun m!5921000 () Bool)

(assert (=> bs!1177476 m!5921000))

(assert (=> b!4911082 d!1578266))

(declare-fun e!3069752 () Bool)

(declare-fun b!4911194 () Bool)

(declare-fun tp!1380984 () Bool)

(declare-fun tp!1380983 () Bool)

(assert (=> b!4911194 (= e!3069752 (and (inv!73147 (left!41230 (c!834790 input!1509))) tp!1380984 (inv!73147 (right!41560 (c!834790 input!1509))) tp!1380983))))

(declare-fun b!4911196 () Bool)

(declare-fun e!3069753 () Bool)

(declare-fun tp!1380982 () Bool)

(assert (=> b!4911196 (= e!3069753 tp!1380982)))

(declare-fun b!4911195 () Bool)

(declare-fun inv!73154 (IArray!29703) Bool)

(assert (=> b!4911195 (= e!3069752 (and (inv!73154 (xs!18137 (c!834790 input!1509))) e!3069753))))

(assert (=> b!4911083 (= tp!1380961 (and (inv!73147 (c!834790 input!1509)) e!3069752))))

(assert (= (and b!4911083 (is-Node!14821 (c!834790 input!1509))) b!4911194))

(assert (= b!4911195 b!4911196))

(assert (= (and b!4911083 (is-Leaf!24665 (c!834790 input!1509))) b!4911195))

(declare-fun m!5921002 () Bool)

(assert (=> b!4911194 m!5921002))

(declare-fun m!5921004 () Bool)

(assert (=> b!4911194 m!5921004))

(declare-fun m!5921006 () Bool)

(assert (=> b!4911195 m!5921006))

(assert (=> b!4911083 m!5920914))

(declare-fun e!3069756 () Bool)

(assert (=> b!4911081 (= tp!1380963 e!3069756)))

(declare-fun b!4911208 () Bool)

(declare-fun tp!1380997 () Bool)

(declare-fun tp!1380998 () Bool)

(assert (=> b!4911208 (= e!3069756 (and tp!1380997 tp!1380998))))

(declare-fun b!4911209 () Bool)

(declare-fun tp!1380996 () Bool)

(assert (=> b!4911209 (= e!3069756 tp!1380996)))

(declare-fun b!4911210 () Bool)

(declare-fun tp!1380999 () Bool)

(declare-fun tp!1380995 () Bool)

(assert (=> b!4911210 (= e!3069756 (and tp!1380999 tp!1380995))))

(declare-fun b!4911207 () Bool)

(declare-fun tp_is_empty!35861 () Bool)

(assert (=> b!4911207 (= e!3069756 tp_is_empty!35861)))

(assert (= (and b!4911081 (is-ElementMatch!13328 (regex!8253 rule!164))) b!4911207))

(assert (= (and b!4911081 (is-Concat!21891 (regex!8253 rule!164))) b!4911208))

(assert (= (and b!4911081 (is-Star!13328 (regex!8253 rule!164))) b!4911209))

(assert (= (and b!4911081 (is-Union!13328 (regex!8253 rule!164))) b!4911210))

(push 1)

(assert (not bm!341027))

(assert (not d!1578238))

(assert (not d!1578236))

(assert (not b!4911178))

(assert b_and!346741)

(assert (not b!4911106))

(assert (not b!4911155))

(assert (not bm!341026))

(assert tp_is_empty!35861)

(assert (not b_next!132773))

(assert (not d!1578244))

(assert (not d!1578262))

(assert (not b!4911195))

(assert (not b!4911153))

(assert (not b!4911083))

(assert (not b!4911194))

(assert (not b!4911196))

(assert (not b!4911209))

(assert b_and!346739)

(assert (not d!1578266))

(assert (not b_next!132775))

(assert (not b!4911208))

(assert (not d!1578246))

(assert (not b!4911210))

(assert (not b!4911158))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346741)

(assert b_and!346739)

(assert (not b_next!132775))

(assert (not b_next!132773))

(check-sat)

(pop 1)

