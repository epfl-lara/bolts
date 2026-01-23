; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!349204 () Bool)

(assert start!349204)

(declare-fun b!3704225 () Bool)

(declare-fun b_free!98901 () Bool)

(declare-fun b_next!99605 () Bool)

(assert (=> b!3704225 (= b_free!98901 (not b_next!99605))))

(declare-fun tp!1126345 () Bool)

(declare-fun b_and!277135 () Bool)

(assert (=> b!3704225 (= tp!1126345 b_and!277135)))

(declare-fun b_free!98903 () Bool)

(declare-fun b_next!99607 () Bool)

(assert (=> b!3704225 (= b_free!98903 (not b_next!99607))))

(declare-fun tp!1126347 () Bool)

(declare-fun b_and!277137 () Bool)

(assert (=> b!3704225 (= tp!1126347 b_and!277137)))

(declare-fun b!3704215 () Bool)

(declare-fun b_free!98905 () Bool)

(declare-fun b_next!99609 () Bool)

(assert (=> b!3704215 (= b_free!98905 (not b_next!99609))))

(declare-fun tp!1126346 () Bool)

(declare-fun b_and!277139 () Bool)

(assert (=> b!3704215 (= tp!1126346 b_and!277139)))

(declare-fun b_free!98907 () Bool)

(declare-fun b_next!99611 () Bool)

(assert (=> b!3704215 (= b_free!98907 (not b_next!99611))))

(declare-fun tp!1126348 () Bool)

(declare-fun b_and!277141 () Bool)

(assert (=> b!3704215 (= tp!1126348 b_and!277141)))

(declare-fun e!2294333 () Bool)

(assert (=> b!3704215 (= e!2294333 (and tp!1126346 tp!1126348))))

(declare-fun b!3704216 () Bool)

(declare-fun res!1506881 () Bool)

(declare-fun e!2294344 () Bool)

(assert (=> b!3704216 (=> res!1506881 e!2294344)))

(declare-datatypes ((LexerInterface!5592 0))(
  ( (LexerInterfaceExt!5589 (__x!24683 Int)) (Lexer!5590) )
))
(declare-fun thiss!25522 () LexerInterface!5592)

(declare-datatypes ((List!39549 0))(
  ( (Nil!39425) (Cons!39425 (h!44845 (_ BitVec 16)) (t!302232 List!39549)) )
))
(declare-datatypes ((TokenValue!6233 0))(
  ( (FloatLiteralValue!12466 (text!44076 List!39549)) (TokenValueExt!6232 (__x!24684 Int)) (Broken!31165 (value!191497 List!39549)) (Object!6356) (End!6233) (Def!6233) (Underscore!6233) (Match!6233) (Else!6233) (Error!6233) (Case!6233) (If!6233) (Extends!6233) (Abstract!6233) (Class!6233) (Val!6233) (DelimiterValue!12466 (del!6293 List!39549)) (KeywordValue!6239 (value!191498 List!39549)) (CommentValue!12466 (value!191499 List!39549)) (WhitespaceValue!12466 (value!191500 List!39549)) (IndentationValue!6233 (value!191501 List!39549)) (String!44500) (Int32!6233) (Broken!31166 (value!191502 List!39549)) (Boolean!6234) (Unit!57376) (OperatorValue!6236 (op!6293 List!39549)) (IdentifierValue!12466 (value!191503 List!39549)) (IdentifierValue!12467 (value!191504 List!39549)) (WhitespaceValue!12467 (value!191505 List!39549)) (True!12466) (False!12466) (Broken!31167 (value!191506 List!39549)) (Broken!31168 (value!191507 List!39549)) (True!12467) (RightBrace!6233) (RightBracket!6233) (Colon!6233) (Null!6233) (Comma!6233) (LeftBracket!6233) (False!12467) (LeftBrace!6233) (ImaginaryLiteralValue!6233 (text!44077 List!39549)) (StringLiteralValue!18699 (value!191508 List!39549)) (EOFValue!6233 (value!191509 List!39549)) (IdentValue!6233 (value!191510 List!39549)) (DelimiterValue!12467 (value!191511 List!39549)) (DedentValue!6233 (value!191512 List!39549)) (NewLineValue!6233 (value!191513 List!39549)) (IntegerValue!18699 (value!191514 (_ BitVec 32)) (text!44078 List!39549)) (IntegerValue!18700 (value!191515 Int) (text!44079 List!39549)) (Times!6233) (Or!6233) (Equal!6233) (Minus!6233) (Broken!31169 (value!191516 List!39549)) (And!6233) (Div!6233) (LessEqual!6233) (Mod!6233) (Concat!16995) (Not!6233) (Plus!6233) (SpaceValue!6233 (value!191517 List!39549)) (IntegerValue!18701 (value!191518 Int) (text!44080 List!39549)) (StringLiteralValue!18700 (text!44081 List!39549)) (FloatLiteralValue!12467 (text!44082 List!39549)) (BytesLiteralValue!6233 (value!191519 List!39549)) (CommentValue!12467 (value!191520 List!39549)) (StringLiteralValue!18701 (value!191521 List!39549)) (ErrorTokenValue!6233 (msg!6294 List!39549)) )
))
(declare-datatypes ((C!21710 0))(
  ( (C!21711 (val!12903 Int)) )
))
(declare-datatypes ((List!39550 0))(
  ( (Nil!39426) (Cons!39426 (h!44846 C!21710) (t!302233 List!39550)) )
))
(declare-datatypes ((IArray!24205 0))(
  ( (IArray!24206 (innerList!12160 List!39550)) )
))
(declare-datatypes ((Conc!12100 0))(
  ( (Node!12100 (left!30660 Conc!12100) (right!30990 Conc!12100) (csize!24430 Int) (cheight!12311 Int)) (Leaf!18713 (xs!15302 IArray!24205) (csize!24431 Int)) (Empty!12100) )
))
(declare-datatypes ((BalanceConc!23814 0))(
  ( (BalanceConc!23815 (c!639910 Conc!12100)) )
))
(declare-datatypes ((TokenValueInjection!11894 0))(
  ( (TokenValueInjection!11895 (toValue!8347 Int) (toChars!8206 Int)) )
))
(declare-datatypes ((String!44501 0))(
  ( (String!44502 (value!191522 String)) )
))
(declare-datatypes ((Regex!10762 0))(
  ( (ElementMatch!10762 (c!639911 C!21710)) (Concat!16996 (regOne!22036 Regex!10762) (regTwo!22036 Regex!10762)) (EmptyExpr!10762) (Star!10762 (reg!11091 Regex!10762)) (EmptyLang!10762) (Union!10762 (regOne!22037 Regex!10762) (regTwo!22037 Regex!10762)) )
))
(declare-datatypes ((Rule!11806 0))(
  ( (Rule!11807 (regex!6003 Regex!10762) (tag!6853 String!44501) (isSeparator!6003 Bool) (transformation!6003 TokenValueInjection!11894)) )
))
(declare-datatypes ((List!39551 0))(
  ( (Nil!39427) (Cons!39427 (h!44847 Rule!11806) (t!302234 List!39551)) )
))
(declare-fun rules!3698 () List!39551)

(declare-datatypes ((List!39552 0))(
  ( (Nil!39428) (Cons!39428 (h!44848 String!44501) (t!302235 List!39552)) )
))
(declare-fun lt!1296098 () List!39552)

(declare-fun noDuplicateTag!2323 (LexerInterface!5592 List!39551 List!39552) Bool)

(assert (=> b!3704216 (= res!1506881 (not (noDuplicateTag!2323 thiss!25522 rules!3698 lt!1296098)))))

(declare-fun lt!1296097 () List!39551)

(declare-fun tag!250 () String!44501)

(declare-fun b!3704217 () Bool)

(declare-fun lt!1296094 () Rule!11806)

(declare-datatypes ((Option!8545 0))(
  ( (None!8544) (Some!8544 (v!38520 Rule!11806)) )
))
(declare-fun get!13131 (Option!8545) Rule!11806)

(declare-fun getRuleFromTag!1537 (LexerInterface!5592 List!39551 String!44501) Option!8545)

(assert (=> b!3704217 (= e!2294344 (= lt!1296094 (get!13131 (getRuleFromTag!1537 thiss!25522 lt!1296097 tag!250))))))

(declare-fun newHd!19 () Rule!11806)

(assert (=> b!3704217 (not (= (tag!6853 lt!1296094) (tag!6853 newHd!19)))))

(declare-datatypes ((Unit!57377 0))(
  ( (Unit!57378) )
))
(declare-fun lt!1296096 () Unit!57377)

(declare-fun lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!5 (LexerInterface!5592 List!39551 Rule!11806 String!44501 List!39552) Unit!57377)

(assert (=> b!3704217 (= lt!1296096 (lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!5 thiss!25522 rules!3698 lt!1296094 (tag!6853 newHd!19) lt!1296098))))

(declare-fun res!1506882 () Bool)

(declare-fun e!2294336 () Bool)

(assert (=> start!349204 (=> (not res!1506882) (not e!2294336))))

(assert (=> start!349204 (= res!1506882 (is-Lexer!5590 thiss!25522))))

(assert (=> start!349204 e!2294336))

(assert (=> start!349204 true))

(declare-fun e!2294342 () Bool)

(assert (=> start!349204 e!2294342))

(declare-fun e!2294341 () Bool)

(assert (=> start!349204 e!2294341))

(declare-fun inv!52946 (String!44501) Bool)

(assert (=> start!349204 (inv!52946 tag!250)))

(declare-fun b!3704218 () Bool)

(declare-fun tp!1126343 () Bool)

(declare-fun inv!52949 (TokenValueInjection!11894) Bool)

(assert (=> b!3704218 (= e!2294341 (and tp!1126343 (inv!52946 (tag!6853 newHd!19)) (inv!52949 (transformation!6003 newHd!19)) e!2294333))))

(declare-fun b!3704219 () Bool)

(declare-fun e!2294340 () Bool)

(assert (=> b!3704219 (= e!2294336 e!2294340)))

(declare-fun res!1506879 () Bool)

(assert (=> b!3704219 (=> (not res!1506879) (not e!2294340))))

(declare-fun rulesInvariant!4989 (LexerInterface!5592 List!39551) Bool)

(assert (=> b!3704219 (= res!1506879 (rulesInvariant!4989 thiss!25522 lt!1296097))))

(assert (=> b!3704219 (= lt!1296097 (Cons!39427 newHd!19 rules!3698))))

(declare-fun b!3704220 () Bool)

(declare-fun e!2294335 () Bool)

(declare-fun tp!1126344 () Bool)

(assert (=> b!3704220 (= e!2294342 (and e!2294335 tp!1126344))))

(declare-fun b!3704221 () Bool)

(declare-fun tp!1126349 () Bool)

(declare-fun e!2294343 () Bool)

(assert (=> b!3704221 (= e!2294335 (and tp!1126349 (inv!52946 (tag!6853 (h!44847 rules!3698))) (inv!52949 (transformation!6003 (h!44847 rules!3698))) e!2294343))))

(declare-fun b!3704222 () Bool)

(declare-fun e!2294339 () Bool)

(assert (=> b!3704222 (= e!2294340 (not e!2294339))))

(declare-fun res!1506884 () Bool)

(assert (=> b!3704222 (=> res!1506884 e!2294339)))

(declare-fun lt!1296095 () Option!8545)

(declare-fun isDefined!6732 (Option!8545) Bool)

(assert (=> b!3704222 (= res!1506884 (not (isDefined!6732 lt!1296095)))))

(assert (=> b!3704222 (= lt!1296095 (getRuleFromTag!1537 thiss!25522 rules!3698 tag!250))))

(assert (=> b!3704222 (rulesInvariant!4989 thiss!25522 rules!3698)))

(declare-fun lt!1296093 () Unit!57377)

(declare-fun lemmaInvariantOnRulesThenOnTail!695 (LexerInterface!5592 Rule!11806 List!39551) Unit!57377)

(assert (=> b!3704222 (= lt!1296093 (lemmaInvariantOnRulesThenOnTail!695 thiss!25522 newHd!19 rules!3698))))

(declare-fun b!3704223 () Bool)

(assert (=> b!3704223 (= e!2294339 e!2294344)))

(declare-fun res!1506883 () Bool)

(assert (=> b!3704223 (=> res!1506883 e!2294344)))

(declare-fun contains!7871 (List!39552 String!44501) Bool)

(assert (=> b!3704223 (= res!1506883 (not (contains!7871 lt!1296098 (tag!6853 newHd!19))))))

(assert (=> b!3704223 (= lt!1296098 (Cons!39428 (tag!6853 newHd!19) Nil!39428))))

(assert (=> b!3704223 (= lt!1296094 (get!13131 lt!1296095))))

(declare-fun b!3704224 () Bool)

(declare-fun res!1506880 () Bool)

(assert (=> b!3704224 (=> res!1506880 e!2294344)))

(declare-fun contains!7872 (List!39551 Rule!11806) Bool)

(assert (=> b!3704224 (= res!1506880 (not (contains!7872 rules!3698 lt!1296094)))))

(assert (=> b!3704225 (= e!2294343 (and tp!1126345 tp!1126347))))

(assert (= (and start!349204 res!1506882) b!3704219))

(assert (= (and b!3704219 res!1506879) b!3704222))

(assert (= (and b!3704222 (not res!1506884)) b!3704223))

(assert (= (and b!3704223 (not res!1506883)) b!3704216))

(assert (= (and b!3704216 (not res!1506881)) b!3704224))

(assert (= (and b!3704224 (not res!1506880)) b!3704217))

(assert (= b!3704221 b!3704225))

(assert (= b!3704220 b!3704221))

(assert (= (and start!349204 (is-Cons!39427 rules!3698)) b!3704220))

(assert (= b!3704218 b!3704215))

(assert (= start!349204 b!3704218))

(declare-fun m!4214965 () Bool)

(assert (=> b!3704222 m!4214965))

(declare-fun m!4214967 () Bool)

(assert (=> b!3704222 m!4214967))

(declare-fun m!4214969 () Bool)

(assert (=> b!3704222 m!4214969))

(declare-fun m!4214971 () Bool)

(assert (=> b!3704222 m!4214971))

(declare-fun m!4214973 () Bool)

(assert (=> start!349204 m!4214973))

(declare-fun m!4214975 () Bool)

(assert (=> b!3704216 m!4214975))

(declare-fun m!4214977 () Bool)

(assert (=> b!3704217 m!4214977))

(assert (=> b!3704217 m!4214977))

(declare-fun m!4214979 () Bool)

(assert (=> b!3704217 m!4214979))

(declare-fun m!4214981 () Bool)

(assert (=> b!3704217 m!4214981))

(declare-fun m!4214983 () Bool)

(assert (=> b!3704218 m!4214983))

(declare-fun m!4214985 () Bool)

(assert (=> b!3704218 m!4214985))

(declare-fun m!4214987 () Bool)

(assert (=> b!3704221 m!4214987))

(declare-fun m!4214989 () Bool)

(assert (=> b!3704221 m!4214989))

(declare-fun m!4214991 () Bool)

(assert (=> b!3704223 m!4214991))

(declare-fun m!4214993 () Bool)

(assert (=> b!3704223 m!4214993))

(declare-fun m!4214995 () Bool)

(assert (=> b!3704224 m!4214995))

(declare-fun m!4214997 () Bool)

(assert (=> b!3704219 m!4214997))

(push 1)

(assert (not b!3704222))

(assert b_and!277137)

(assert (not b!3704224))

(assert (not b_next!99609))

(assert (not b!3704218))

(assert (not b_next!99611))

(assert (not b!3704223))

(assert b_and!277135)

(assert (not b!3704217))

(assert b_and!277139)

(assert (not b!3704221))

(assert (not start!349204))

(assert (not b_next!99607))

(assert (not b!3704219))

(assert (not b!3704216))

(assert b_and!277141)

(assert (not b_next!99605))

(assert (not b!3704220))

(check-sat)

(pop 1)

(push 1)

(assert b_and!277137)

(assert (not b_next!99609))

(assert (not b_next!99611))

(assert b_and!277135)

(assert (not b_next!99607))

(assert b_and!277141)

(assert (not b_next!99605))

(assert b_and!277139)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1086111 () Bool)

(assert (=> d!1086111 (= (inv!52946 (tag!6853 (h!44847 rules!3698))) (= (mod (str.len (value!191522 (tag!6853 (h!44847 rules!3698)))) 2) 0))))

(assert (=> b!3704221 d!1086111))

(declare-fun d!1086113 () Bool)

(declare-fun res!1506913 () Bool)

(declare-fun e!2294383 () Bool)

(assert (=> d!1086113 (=> (not res!1506913) (not e!2294383))))

(declare-fun semiInverseModEq!2566 (Int Int) Bool)

(assert (=> d!1086113 (= res!1506913 (semiInverseModEq!2566 (toChars!8206 (transformation!6003 (h!44847 rules!3698))) (toValue!8347 (transformation!6003 (h!44847 rules!3698)))))))

(assert (=> d!1086113 (= (inv!52949 (transformation!6003 (h!44847 rules!3698))) e!2294383)))

(declare-fun b!3704261 () Bool)

(declare-fun equivClasses!2465 (Int Int) Bool)

(assert (=> b!3704261 (= e!2294383 (equivClasses!2465 (toChars!8206 (transformation!6003 (h!44847 rules!3698))) (toValue!8347 (transformation!6003 (h!44847 rules!3698)))))))

(assert (= (and d!1086113 res!1506913) b!3704261))

(declare-fun m!4215033 () Bool)

(assert (=> d!1086113 m!4215033))

(declare-fun m!4215035 () Bool)

(assert (=> b!3704261 m!4215035))

(assert (=> b!3704221 d!1086113))

(declare-fun d!1086115 () Bool)

(declare-fun res!1506918 () Bool)

(declare-fun e!2294388 () Bool)

(assert (=> d!1086115 (=> res!1506918 e!2294388)))

(assert (=> d!1086115 (= res!1506918 (is-Nil!39427 rules!3698))))

(assert (=> d!1086115 (= (noDuplicateTag!2323 thiss!25522 rules!3698 lt!1296098) e!2294388)))

(declare-fun b!3704266 () Bool)

(declare-fun e!2294389 () Bool)

(assert (=> b!3704266 (= e!2294388 e!2294389)))

(declare-fun res!1506919 () Bool)

(assert (=> b!3704266 (=> (not res!1506919) (not e!2294389))))

(assert (=> b!3704266 (= res!1506919 (not (contains!7871 lt!1296098 (tag!6853 (h!44847 rules!3698)))))))

(declare-fun b!3704267 () Bool)

(assert (=> b!3704267 (= e!2294389 (noDuplicateTag!2323 thiss!25522 (t!302234 rules!3698) (Cons!39428 (tag!6853 (h!44847 rules!3698)) lt!1296098)))))

(assert (= (and d!1086115 (not res!1506918)) b!3704266))

(assert (= (and b!3704266 res!1506919) b!3704267))

(declare-fun m!4215037 () Bool)

(assert (=> b!3704266 m!4215037))

(declare-fun m!4215039 () Bool)

(assert (=> b!3704267 m!4215039))

(assert (=> b!3704216 d!1086115))

(declare-fun d!1086117 () Bool)

(assert (=> d!1086117 (= (inv!52946 tag!250) (= (mod (str.len (value!191522 tag!250)) 2) 0))))

(assert (=> start!349204 d!1086117))

(declare-fun d!1086119 () Bool)

(declare-fun isEmpty!23470 (Option!8545) Bool)

(assert (=> d!1086119 (= (isDefined!6732 lt!1296095) (not (isEmpty!23470 lt!1296095)))))

(declare-fun bs!574598 () Bool)

(assert (= bs!574598 d!1086119))

(declare-fun m!4215041 () Bool)

(assert (=> bs!574598 m!4215041))

(assert (=> b!3704222 d!1086119))

(declare-fun b!3704280 () Bool)

(declare-fun lt!1296124 () Unit!57377)

(declare-fun lt!1296123 () Unit!57377)

(assert (=> b!3704280 (= lt!1296124 lt!1296123)))

(assert (=> b!3704280 (rulesInvariant!4989 thiss!25522 (t!302234 rules!3698))))

(assert (=> b!3704280 (= lt!1296123 (lemmaInvariantOnRulesThenOnTail!695 thiss!25522 (h!44847 rules!3698) (t!302234 rules!3698)))))

(declare-fun e!2294399 () Option!8545)

(assert (=> b!3704280 (= e!2294399 (getRuleFromTag!1537 thiss!25522 (t!302234 rules!3698) tag!250))))

(declare-fun b!3704281 () Bool)

(declare-fun e!2294398 () Option!8545)

(assert (=> b!3704281 (= e!2294398 (Some!8544 (h!44847 rules!3698)))))

(declare-fun b!3704282 () Bool)

(declare-fun e!2294400 () Bool)

(declare-fun lt!1296125 () Option!8545)

(assert (=> b!3704282 (= e!2294400 (= (tag!6853 (get!13131 lt!1296125)) tag!250))))

(declare-fun d!1086121 () Bool)

(declare-fun e!2294401 () Bool)

(assert (=> d!1086121 e!2294401))

(declare-fun res!1506924 () Bool)

(assert (=> d!1086121 (=> res!1506924 e!2294401)))

(assert (=> d!1086121 (= res!1506924 (isEmpty!23470 lt!1296125))))

(assert (=> d!1086121 (= lt!1296125 e!2294398)))

(declare-fun c!639919 () Bool)

(assert (=> d!1086121 (= c!639919 (and (is-Cons!39427 rules!3698) (= (tag!6853 (h!44847 rules!3698)) tag!250)))))

(assert (=> d!1086121 (rulesInvariant!4989 thiss!25522 rules!3698)))

(assert (=> d!1086121 (= (getRuleFromTag!1537 thiss!25522 rules!3698 tag!250) lt!1296125)))

(declare-fun b!3704283 () Bool)

(assert (=> b!3704283 (= e!2294401 e!2294400)))

(declare-fun res!1506925 () Bool)

(assert (=> b!3704283 (=> (not res!1506925) (not e!2294400))))

(assert (=> b!3704283 (= res!1506925 (contains!7872 rules!3698 (get!13131 lt!1296125)))))

(declare-fun b!3704284 () Bool)

(assert (=> b!3704284 (= e!2294398 e!2294399)))

(declare-fun c!639918 () Bool)

(assert (=> b!3704284 (= c!639918 (and (is-Cons!39427 rules!3698) (not (= (tag!6853 (h!44847 rules!3698)) tag!250))))))

(declare-fun b!3704285 () Bool)

(assert (=> b!3704285 (= e!2294399 None!8544)))

(assert (= (and d!1086121 c!639919) b!3704281))

(assert (= (and d!1086121 (not c!639919)) b!3704284))

(assert (= (and b!3704284 c!639918) b!3704280))

(assert (= (and b!3704284 (not c!639918)) b!3704285))

(assert (= (and d!1086121 (not res!1506924)) b!3704283))

(assert (= (and b!3704283 res!1506925) b!3704282))

(declare-fun m!4215043 () Bool)

(assert (=> b!3704280 m!4215043))

(declare-fun m!4215045 () Bool)

(assert (=> b!3704280 m!4215045))

(declare-fun m!4215047 () Bool)

(assert (=> b!3704280 m!4215047))

(declare-fun m!4215049 () Bool)

(assert (=> b!3704282 m!4215049))

(declare-fun m!4215051 () Bool)

(assert (=> d!1086121 m!4215051))

(assert (=> d!1086121 m!4214969))

(assert (=> b!3704283 m!4215049))

(assert (=> b!3704283 m!4215049))

(declare-fun m!4215053 () Bool)

(assert (=> b!3704283 m!4215053))

(assert (=> b!3704222 d!1086121))

(declare-fun d!1086123 () Bool)

(declare-fun res!1506928 () Bool)

(declare-fun e!2294404 () Bool)

(assert (=> d!1086123 (=> (not res!1506928) (not e!2294404))))

(declare-fun rulesValid!2322 (LexerInterface!5592 List!39551) Bool)

(assert (=> d!1086123 (= res!1506928 (rulesValid!2322 thiss!25522 rules!3698))))

(assert (=> d!1086123 (= (rulesInvariant!4989 thiss!25522 rules!3698) e!2294404)))

(declare-fun b!3704288 () Bool)

(assert (=> b!3704288 (= e!2294404 (noDuplicateTag!2323 thiss!25522 rules!3698 Nil!39428))))

(assert (= (and d!1086123 res!1506928) b!3704288))

(declare-fun m!4215055 () Bool)

(assert (=> d!1086123 m!4215055))

(declare-fun m!4215057 () Bool)

(assert (=> b!3704288 m!4215057))

(assert (=> b!3704222 d!1086123))

(declare-fun d!1086125 () Bool)

(assert (=> d!1086125 (rulesInvariant!4989 thiss!25522 rules!3698)))

(declare-fun lt!1296128 () Unit!57377)

(declare-fun choose!22149 (LexerInterface!5592 Rule!11806 List!39551) Unit!57377)

(assert (=> d!1086125 (= lt!1296128 (choose!22149 thiss!25522 newHd!19 rules!3698))))

(assert (=> d!1086125 (rulesInvariant!4989 thiss!25522 (Cons!39427 newHd!19 rules!3698))))

(assert (=> d!1086125 (= (lemmaInvariantOnRulesThenOnTail!695 thiss!25522 newHd!19 rules!3698) lt!1296128)))

(declare-fun bs!574599 () Bool)

(assert (= bs!574599 d!1086125))

(assert (=> bs!574599 m!4214969))

(declare-fun m!4215059 () Bool)

(assert (=> bs!574599 m!4215059))

(declare-fun m!4215061 () Bool)

(assert (=> bs!574599 m!4215061))

(assert (=> b!3704222 d!1086125))

(declare-fun d!1086129 () Bool)

(assert (=> d!1086129 (= (get!13131 (getRuleFromTag!1537 thiss!25522 lt!1296097 tag!250)) (v!38520 (getRuleFromTag!1537 thiss!25522 lt!1296097 tag!250)))))

(assert (=> b!3704217 d!1086129))

(declare-fun b!3704289 () Bool)

(declare-fun lt!1296130 () Unit!57377)

(declare-fun lt!1296129 () Unit!57377)

(assert (=> b!3704289 (= lt!1296130 lt!1296129)))

(assert (=> b!3704289 (rulesInvariant!4989 thiss!25522 (t!302234 lt!1296097))))

(assert (=> b!3704289 (= lt!1296129 (lemmaInvariantOnRulesThenOnTail!695 thiss!25522 (h!44847 lt!1296097) (t!302234 lt!1296097)))))

(declare-fun e!2294406 () Option!8545)

(assert (=> b!3704289 (= e!2294406 (getRuleFromTag!1537 thiss!25522 (t!302234 lt!1296097) tag!250))))

(declare-fun b!3704290 () Bool)

(declare-fun e!2294405 () Option!8545)

(assert (=> b!3704290 (= e!2294405 (Some!8544 (h!44847 lt!1296097)))))

(declare-fun b!3704291 () Bool)

(declare-fun e!2294407 () Bool)

(declare-fun lt!1296131 () Option!8545)

(assert (=> b!3704291 (= e!2294407 (= (tag!6853 (get!13131 lt!1296131)) tag!250))))

(declare-fun d!1086131 () Bool)

(declare-fun e!2294408 () Bool)

(assert (=> d!1086131 e!2294408))

(declare-fun res!1506929 () Bool)

(assert (=> d!1086131 (=> res!1506929 e!2294408)))

(assert (=> d!1086131 (= res!1506929 (isEmpty!23470 lt!1296131))))

(assert (=> d!1086131 (= lt!1296131 e!2294405)))

(declare-fun c!639921 () Bool)

(assert (=> d!1086131 (= c!639921 (and (is-Cons!39427 lt!1296097) (= (tag!6853 (h!44847 lt!1296097)) tag!250)))))

(assert (=> d!1086131 (rulesInvariant!4989 thiss!25522 lt!1296097)))

(assert (=> d!1086131 (= (getRuleFromTag!1537 thiss!25522 lt!1296097 tag!250) lt!1296131)))

(declare-fun b!3704292 () Bool)

(assert (=> b!3704292 (= e!2294408 e!2294407)))

(declare-fun res!1506930 () Bool)

(assert (=> b!3704292 (=> (not res!1506930) (not e!2294407))))

(assert (=> b!3704292 (= res!1506930 (contains!7872 lt!1296097 (get!13131 lt!1296131)))))

(declare-fun b!3704293 () Bool)

(assert (=> b!3704293 (= e!2294405 e!2294406)))

(declare-fun c!639920 () Bool)

(assert (=> b!3704293 (= c!639920 (and (is-Cons!39427 lt!1296097) (not (= (tag!6853 (h!44847 lt!1296097)) tag!250))))))

(declare-fun b!3704294 () Bool)

(assert (=> b!3704294 (= e!2294406 None!8544)))

(assert (= (and d!1086131 c!639921) b!3704290))

(assert (= (and d!1086131 (not c!639921)) b!3704293))

(assert (= (and b!3704293 c!639920) b!3704289))

(assert (= (and b!3704293 (not c!639920)) b!3704294))

(assert (= (and d!1086131 (not res!1506929)) b!3704292))

(assert (= (and b!3704292 res!1506930) b!3704291))

(declare-fun m!4215063 () Bool)

(assert (=> b!3704289 m!4215063))

(declare-fun m!4215065 () Bool)

(assert (=> b!3704289 m!4215065))

(declare-fun m!4215067 () Bool)

(assert (=> b!3704289 m!4215067))

(declare-fun m!4215069 () Bool)

(assert (=> b!3704291 m!4215069))

(declare-fun m!4215071 () Bool)

(assert (=> d!1086131 m!4215071))

(assert (=> d!1086131 m!4214997))

(assert (=> b!3704292 m!4215069))

(assert (=> b!3704292 m!4215069))

(declare-fun m!4215073 () Bool)

(assert (=> b!3704292 m!4215073))

(assert (=> b!3704217 d!1086131))

(declare-fun d!1086135 () Bool)

(assert (=> d!1086135 (not (= (tag!6853 lt!1296094) (tag!6853 newHd!19)))))

(declare-fun lt!1296134 () Unit!57377)

(declare-fun choose!22150 (LexerInterface!5592 List!39551 Rule!11806 String!44501 List!39552) Unit!57377)

(assert (=> d!1086135 (= lt!1296134 (choose!22150 thiss!25522 rules!3698 lt!1296094 (tag!6853 newHd!19) lt!1296098))))

(assert (=> d!1086135 (contains!7871 lt!1296098 (tag!6853 newHd!19))))

(assert (=> d!1086135 (= (lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!5 thiss!25522 rules!3698 lt!1296094 (tag!6853 newHd!19) lt!1296098) lt!1296134)))

(declare-fun bs!574600 () Bool)

(assert (= bs!574600 d!1086135))

(declare-fun m!4215075 () Bool)

(assert (=> bs!574600 m!4215075))

(assert (=> bs!574600 m!4214991))

(assert (=> b!3704217 d!1086135))

(declare-fun d!1086137 () Bool)

(declare-fun lt!1296137 () Bool)

(declare-fun content!5696 (List!39552) (Set String!44501))

(assert (=> d!1086137 (= lt!1296137 (set.member (tag!6853 newHd!19) (content!5696 lt!1296098)))))

(declare-fun e!2294413 () Bool)

(assert (=> d!1086137 (= lt!1296137 e!2294413)))

(declare-fun res!1506935 () Bool)

(assert (=> d!1086137 (=> (not res!1506935) (not e!2294413))))

(assert (=> d!1086137 (= res!1506935 (is-Cons!39428 lt!1296098))))

(assert (=> d!1086137 (= (contains!7871 lt!1296098 (tag!6853 newHd!19)) lt!1296137)))

(declare-fun b!3704299 () Bool)

(declare-fun e!2294414 () Bool)

(assert (=> b!3704299 (= e!2294413 e!2294414)))

(declare-fun res!1506936 () Bool)

(assert (=> b!3704299 (=> res!1506936 e!2294414)))

(assert (=> b!3704299 (= res!1506936 (= (h!44848 lt!1296098) (tag!6853 newHd!19)))))

(declare-fun b!3704300 () Bool)

(assert (=> b!3704300 (= e!2294414 (contains!7871 (t!302235 lt!1296098) (tag!6853 newHd!19)))))

(assert (= (and d!1086137 res!1506935) b!3704299))

(assert (= (and b!3704299 (not res!1506936)) b!3704300))

(declare-fun m!4215077 () Bool)

(assert (=> d!1086137 m!4215077))

(declare-fun m!4215079 () Bool)

(assert (=> d!1086137 m!4215079))

(declare-fun m!4215081 () Bool)

(assert (=> b!3704300 m!4215081))

(assert (=> b!3704223 d!1086137))

(declare-fun d!1086139 () Bool)

(assert (=> d!1086139 (= (get!13131 lt!1296095) (v!38520 lt!1296095))))

(assert (=> b!3704223 d!1086139))

(declare-fun d!1086141 () Bool)

(assert (=> d!1086141 (= (inv!52946 (tag!6853 newHd!19)) (= (mod (str.len (value!191522 (tag!6853 newHd!19))) 2) 0))))

(assert (=> b!3704218 d!1086141))

(declare-fun d!1086143 () Bool)

(declare-fun res!1506939 () Bool)

(declare-fun e!2294417 () Bool)

(assert (=> d!1086143 (=> (not res!1506939) (not e!2294417))))

(assert (=> d!1086143 (= res!1506939 (semiInverseModEq!2566 (toChars!8206 (transformation!6003 newHd!19)) (toValue!8347 (transformation!6003 newHd!19))))))

(assert (=> d!1086143 (= (inv!52949 (transformation!6003 newHd!19)) e!2294417)))

(declare-fun b!3704303 () Bool)

(assert (=> b!3704303 (= e!2294417 (equivClasses!2465 (toChars!8206 (transformation!6003 newHd!19)) (toValue!8347 (transformation!6003 newHd!19))))))

(assert (= (and d!1086143 res!1506939) b!3704303))

(declare-fun m!4215083 () Bool)

(assert (=> d!1086143 m!4215083))

(declare-fun m!4215085 () Bool)

(assert (=> b!3704303 m!4215085))

(assert (=> b!3704218 d!1086143))

(declare-fun d!1086145 () Bool)

(declare-fun lt!1296140 () Bool)

(declare-fun content!5697 (List!39551) (Set Rule!11806))

(assert (=> d!1086145 (= lt!1296140 (set.member lt!1296094 (content!5697 rules!3698)))))

(declare-fun e!2294423 () Bool)

(assert (=> d!1086145 (= lt!1296140 e!2294423)))

(declare-fun res!1506945 () Bool)

(assert (=> d!1086145 (=> (not res!1506945) (not e!2294423))))

(assert (=> d!1086145 (= res!1506945 (is-Cons!39427 rules!3698))))

(assert (=> d!1086145 (= (contains!7872 rules!3698 lt!1296094) lt!1296140)))

(declare-fun b!3704309 () Bool)

(declare-fun e!2294424 () Bool)

(assert (=> b!3704309 (= e!2294423 e!2294424)))

(declare-fun res!1506946 () Bool)

(assert (=> b!3704309 (=> res!1506946 e!2294424)))

(assert (=> b!3704309 (= res!1506946 (= (h!44847 rules!3698) lt!1296094))))

(declare-fun b!3704310 () Bool)

(assert (=> b!3704310 (= e!2294424 (contains!7872 (t!302234 rules!3698) lt!1296094))))

(assert (= (and d!1086145 res!1506945) b!3704309))

(assert (= (and b!3704309 (not res!1506946)) b!3704310))

(declare-fun m!4215091 () Bool)

(assert (=> d!1086145 m!4215091))

(declare-fun m!4215093 () Bool)

(assert (=> d!1086145 m!4215093))

(declare-fun m!4215095 () Bool)

(assert (=> b!3704310 m!4215095))

(assert (=> b!3704224 d!1086145))

(declare-fun d!1086149 () Bool)

(declare-fun res!1506947 () Bool)

(declare-fun e!2294425 () Bool)

(assert (=> d!1086149 (=> (not res!1506947) (not e!2294425))))

(assert (=> d!1086149 (= res!1506947 (rulesValid!2322 thiss!25522 lt!1296097))))

(assert (=> d!1086149 (= (rulesInvariant!4989 thiss!25522 lt!1296097) e!2294425)))

(declare-fun b!3704311 () Bool)

(assert (=> b!3704311 (= e!2294425 (noDuplicateTag!2323 thiss!25522 lt!1296097 Nil!39428))))

(assert (= (and d!1086149 res!1506947) b!3704311))

(declare-fun m!4215097 () Bool)

(assert (=> d!1086149 m!4215097))

(declare-fun m!4215099 () Bool)

(assert (=> b!3704311 m!4215099))

(assert (=> b!3704219 d!1086149))

(declare-fun b!3704322 () Bool)

(declare-fun b_free!98917 () Bool)

(declare-fun b_next!99621 () Bool)

(assert (=> b!3704322 (= b_free!98917 (not b_next!99621))))

(declare-fun tp!1126380 () Bool)

(declare-fun b_and!277151 () Bool)

(assert (=> b!3704322 (= tp!1126380 b_and!277151)))

(declare-fun b_free!98919 () Bool)

(declare-fun b_next!99623 () Bool)

(assert (=> b!3704322 (= b_free!98919 (not b_next!99623))))

(declare-fun tp!1126381 () Bool)

(declare-fun b_and!277153 () Bool)

(assert (=> b!3704322 (= tp!1126381 b_and!277153)))

(declare-fun e!2294435 () Bool)

(assert (=> b!3704322 (= e!2294435 (and tp!1126380 tp!1126381))))

(declare-fun b!3704321 () Bool)

(declare-fun tp!1126382 () Bool)

(declare-fun e!2294437 () Bool)

(assert (=> b!3704321 (= e!2294437 (and tp!1126382 (inv!52946 (tag!6853 (h!44847 (t!302234 rules!3698)))) (inv!52949 (transformation!6003 (h!44847 (t!302234 rules!3698)))) e!2294435))))

(declare-fun b!3704320 () Bool)

(declare-fun e!2294436 () Bool)

(declare-fun tp!1126379 () Bool)

(assert (=> b!3704320 (= e!2294436 (and e!2294437 tp!1126379))))

(assert (=> b!3704220 (= tp!1126344 e!2294436)))

(assert (= b!3704321 b!3704322))

(assert (= b!3704320 b!3704321))

(assert (= (and b!3704220 (is-Cons!39427 (t!302234 rules!3698))) b!3704320))

(declare-fun m!4215101 () Bool)

(assert (=> b!3704321 m!4215101))

(declare-fun m!4215103 () Bool)

(assert (=> b!3704321 m!4215103))

(declare-fun b!3704338 () Bool)

(declare-fun e!2294444 () Bool)

(declare-fun tp!1126394 () Bool)

(declare-fun tp!1126393 () Bool)

(assert (=> b!3704338 (= e!2294444 (and tp!1126394 tp!1126393))))

(declare-fun b!3704339 () Bool)

(declare-fun tp!1126396 () Bool)

(assert (=> b!3704339 (= e!2294444 tp!1126396)))

(declare-fun b!3704340 () Bool)

(declare-fun tp!1126397 () Bool)

(declare-fun tp!1126395 () Bool)

(assert (=> b!3704340 (= e!2294444 (and tp!1126397 tp!1126395))))

(assert (=> b!3704221 (= tp!1126349 e!2294444)))

(declare-fun b!3704337 () Bool)

(declare-fun tp_is_empty!18579 () Bool)

(assert (=> b!3704337 (= e!2294444 tp_is_empty!18579)))

(assert (= (and b!3704221 (is-ElementMatch!10762 (regex!6003 (h!44847 rules!3698)))) b!3704337))

(assert (= (and b!3704221 (is-Concat!16996 (regex!6003 (h!44847 rules!3698)))) b!3704338))

(assert (= (and b!3704221 (is-Star!10762 (regex!6003 (h!44847 rules!3698)))) b!3704339))

(assert (= (and b!3704221 (is-Union!10762 (regex!6003 (h!44847 rules!3698)))) b!3704340))

(declare-fun b!3704342 () Bool)

(declare-fun e!2294445 () Bool)

(declare-fun tp!1126399 () Bool)

(declare-fun tp!1126398 () Bool)

(assert (=> b!3704342 (= e!2294445 (and tp!1126399 tp!1126398))))

(declare-fun b!3704343 () Bool)

(declare-fun tp!1126401 () Bool)

(assert (=> b!3704343 (= e!2294445 tp!1126401)))

(declare-fun b!3704344 () Bool)

(declare-fun tp!1126402 () Bool)

(declare-fun tp!1126400 () Bool)

(assert (=> b!3704344 (= e!2294445 (and tp!1126402 tp!1126400))))

(assert (=> b!3704218 (= tp!1126343 e!2294445)))

(declare-fun b!3704341 () Bool)

(assert (=> b!3704341 (= e!2294445 tp_is_empty!18579)))

(assert (= (and b!3704218 (is-ElementMatch!10762 (regex!6003 newHd!19))) b!3704341))

(assert (= (and b!3704218 (is-Concat!16996 (regex!6003 newHd!19))) b!3704342))

(assert (= (and b!3704218 (is-Star!10762 (regex!6003 newHd!19))) b!3704343))

(assert (= (and b!3704218 (is-Union!10762 (regex!6003 newHd!19))) b!3704344))

(push 1)

(assert (not b!3704321))

(assert (not d!1086119))

(assert b_and!277137)

(assert b_and!277153)

(assert (not b!3704280))

(assert (not b!3704340))

(assert (not b!3704266))

(assert (not b!3704344))

(assert tp_is_empty!18579)

(assert (not b!3704283))

(assert (not b!3704338))

(assert (not b!3704292))

(assert b_and!277135)

(assert (not b!3704343))

(assert (not b!3704288))

(assert b_and!277141)

(assert (not b_next!99605))

(assert (not b!3704291))

(assert (not b!3704303))

(assert (not d!1086131))

(assert b_and!277151)

(assert (not b_next!99609))

(assert (not d!1086113))

(assert (not b_next!99621))

(assert (not d!1086149))

(assert (not b_next!99611))

(assert (not d!1086135))

(assert (not b!3704267))

(assert (not d!1086121))

(assert (not d!1086123))

(assert (not b!3704311))

(assert (not b_next!99607))

(assert (not b!3704289))

(assert (not b_next!99623))

(assert (not b!3704300))

(assert (not d!1086125))

(assert (not b!3704320))

(assert (not d!1086145))

(assert (not b!3704310))

(assert (not b!3704342))

(assert (not b!3704339))

(assert b_and!277139)

(assert (not d!1086143))

(assert (not b!3704261))

(assert (not b!3704282))

(assert (not d!1086137))

(check-sat)

(pop 1)

(push 1)

(assert b_and!277137)

(assert b_and!277153)

(assert (not b_next!99621))

(assert (not b_next!99611))

(assert b_and!277135)

(assert b_and!277141)

(assert (not b_next!99605))

(assert b_and!277139)

(assert b_and!277151)

(assert (not b_next!99609))

(assert (not b_next!99607))

(assert (not b_next!99623))

(check-sat)

(pop 1)

