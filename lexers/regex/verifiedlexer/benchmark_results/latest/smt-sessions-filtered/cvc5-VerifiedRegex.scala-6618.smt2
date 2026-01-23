; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!349348 () Bool)

(assert start!349348)

(declare-fun b!3704877 () Bool)

(declare-fun b_free!98989 () Bool)

(declare-fun b_next!99693 () Bool)

(assert (=> b!3704877 (= b_free!98989 (not b_next!99693))))

(declare-fun tp!1126726 () Bool)

(declare-fun b_and!277223 () Bool)

(assert (=> b!3704877 (= tp!1126726 b_and!277223)))

(declare-fun b_free!98991 () Bool)

(declare-fun b_next!99695 () Bool)

(assert (=> b!3704877 (= b_free!98991 (not b_next!99695))))

(declare-fun tp!1126725 () Bool)

(declare-fun b_and!277225 () Bool)

(assert (=> b!3704877 (= tp!1126725 b_and!277225)))

(declare-fun b!3704873 () Bool)

(declare-fun e!2294876 () Bool)

(declare-fun e!2294873 () Bool)

(declare-fun tp!1126728 () Bool)

(assert (=> b!3704873 (= e!2294876 (and e!2294873 tp!1126728))))

(declare-fun res!1507177 () Bool)

(declare-fun e!2294874 () Bool)

(assert (=> start!349348 (=> (not res!1507177) (not e!2294874))))

(declare-datatypes ((LexerInterface!5604 0))(
  ( (LexerInterfaceExt!5601 (__x!24707 Int)) (Lexer!5602) )
))
(declare-fun thiss!19663 () LexerInterface!5604)

(assert (=> start!349348 (= res!1507177 (is-Lexer!5602 thiss!19663))))

(assert (=> start!349348 e!2294874))

(assert (=> start!349348 true))

(assert (=> start!349348 e!2294876))

(declare-datatypes ((String!44560 0))(
  ( (String!44561 (value!191827 String)) )
))
(declare-fun tag!164 () String!44560)

(declare-fun inv!52976 (String!44560) Bool)

(assert (=> start!349348 (inv!52976 tag!164)))

(declare-fun b!3704874 () Bool)

(declare-fun e!2294878 () Bool)

(assert (=> b!3704874 (= e!2294874 (not e!2294878))))

(declare-fun res!1507179 () Bool)

(assert (=> b!3704874 (=> res!1507179 e!2294878)))

(declare-datatypes ((List!39593 0))(
  ( (Nil!39469) (Cons!39469 (h!44889 (_ BitVec 16)) (t!302276 List!39593)) )
))
(declare-datatypes ((TokenValue!6245 0))(
  ( (FloatLiteralValue!12490 (text!44160 List!39593)) (TokenValueExt!6244 (__x!24708 Int)) (Broken!31225 (value!191828 List!39593)) (Object!6368) (End!6245) (Def!6245) (Underscore!6245) (Match!6245) (Else!6245) (Error!6245) (Case!6245) (If!6245) (Extends!6245) (Abstract!6245) (Class!6245) (Val!6245) (DelimiterValue!12490 (del!6305 List!39593)) (KeywordValue!6251 (value!191829 List!39593)) (CommentValue!12490 (value!191830 List!39593)) (WhitespaceValue!12490 (value!191831 List!39593)) (IndentationValue!6245 (value!191832 List!39593)) (String!44562) (Int32!6245) (Broken!31226 (value!191833 List!39593)) (Boolean!6246) (Unit!57400) (OperatorValue!6248 (op!6305 List!39593)) (IdentifierValue!12490 (value!191834 List!39593)) (IdentifierValue!12491 (value!191835 List!39593)) (WhitespaceValue!12491 (value!191836 List!39593)) (True!12490) (False!12490) (Broken!31227 (value!191837 List!39593)) (Broken!31228 (value!191838 List!39593)) (True!12491) (RightBrace!6245) (RightBracket!6245) (Colon!6245) (Null!6245) (Comma!6245) (LeftBracket!6245) (False!12491) (LeftBrace!6245) (ImaginaryLiteralValue!6245 (text!44161 List!39593)) (StringLiteralValue!18735 (value!191839 List!39593)) (EOFValue!6245 (value!191840 List!39593)) (IdentValue!6245 (value!191841 List!39593)) (DelimiterValue!12491 (value!191842 List!39593)) (DedentValue!6245 (value!191843 List!39593)) (NewLineValue!6245 (value!191844 List!39593)) (IntegerValue!18735 (value!191845 (_ BitVec 32)) (text!44162 List!39593)) (IntegerValue!18736 (value!191846 Int) (text!44163 List!39593)) (Times!6245) (Or!6245) (Equal!6245) (Minus!6245) (Broken!31229 (value!191847 List!39593)) (And!6245) (Div!6245) (LessEqual!6245) (Mod!6245) (Concat!17019) (Not!6245) (Plus!6245) (SpaceValue!6245 (value!191848 List!39593)) (IntegerValue!18737 (value!191849 Int) (text!44164 List!39593)) (StringLiteralValue!18736 (text!44165 List!39593)) (FloatLiteralValue!12491 (text!44166 List!39593)) (BytesLiteralValue!6245 (value!191850 List!39593)) (CommentValue!12491 (value!191851 List!39593)) (StringLiteralValue!18737 (value!191852 List!39593)) (ErrorTokenValue!6245 (msg!6306 List!39593)) )
))
(declare-datatypes ((C!21734 0))(
  ( (C!21735 (val!12915 Int)) )
))
(declare-datatypes ((List!39594 0))(
  ( (Nil!39470) (Cons!39470 (h!44890 C!21734) (t!302277 List!39594)) )
))
(declare-datatypes ((IArray!24229 0))(
  ( (IArray!24230 (innerList!12172 List!39594)) )
))
(declare-datatypes ((Conc!12112 0))(
  ( (Node!12112 (left!30678 Conc!12112) (right!31008 Conc!12112) (csize!24454 Int) (cheight!12323 Int)) (Leaf!18731 (xs!15314 IArray!24229) (csize!24455 Int)) (Empty!12112) )
))
(declare-datatypes ((BalanceConc!23838 0))(
  ( (BalanceConc!23839 (c!639962 Conc!12112)) )
))
(declare-datatypes ((Regex!10774 0))(
  ( (ElementMatch!10774 (c!639963 C!21734)) (Concat!17020 (regOne!22060 Regex!10774) (regTwo!22060 Regex!10774)) (EmptyExpr!10774) (Star!10774 (reg!11103 Regex!10774)) (EmptyLang!10774) (Union!10774 (regOne!22061 Regex!10774) (regTwo!22061 Regex!10774)) )
))
(declare-datatypes ((TokenValueInjection!11918 0))(
  ( (TokenValueInjection!11919 (toValue!8359 Int) (toChars!8218 Int)) )
))
(declare-datatypes ((Rule!11830 0))(
  ( (Rule!11831 (regex!6015 Regex!10774) (tag!6871 String!44560) (isSeparator!6015 Bool) (transformation!6015 TokenValueInjection!11918)) )
))
(declare-datatypes ((Option!8553 0))(
  ( (None!8552) (Some!8552 (v!38534 Rule!11830)) )
))
(declare-fun lt!1296236 () Option!8553)

(declare-fun isEmpty!23477 (Option!8553) Bool)

(assert (=> b!3704874 (= res!1507179 (isEmpty!23477 lt!1296236))))

(declare-datatypes ((List!39595 0))(
  ( (Nil!39471) (Cons!39471 (h!44891 Rule!11830) (t!302278 List!39595)) )
))
(declare-fun rules!2525 () List!39595)

(declare-fun getRuleFromTag!1541 (LexerInterface!5604 List!39595 String!44560) Option!8553)

(assert (=> b!3704874 (= lt!1296236 (getRuleFromTag!1541 thiss!19663 (t!302278 rules!2525) tag!164))))

(declare-fun rulesInvariant!5001 (LexerInterface!5604 List!39595) Bool)

(assert (=> b!3704874 (rulesInvariant!5001 thiss!19663 (t!302278 rules!2525))))

(declare-datatypes ((Unit!57401 0))(
  ( (Unit!57402) )
))
(declare-fun lt!1296235 () Unit!57401)

(declare-fun lemmaInvariantOnRulesThenOnTail!701 (LexerInterface!5604 Rule!11830 List!39595) Unit!57401)

(assert (=> b!3704874 (= lt!1296235 (lemmaInvariantOnRulesThenOnTail!701 thiss!19663 (h!44891 rules!2525) (t!302278 rules!2525)))))

(declare-fun b!3704875 () Bool)

(declare-fun isDefined!6740 (Option!8553) Bool)

(assert (=> b!3704875 (= e!2294878 (isDefined!6740 lt!1296236))))

(declare-fun b!3704876 () Bool)

(declare-fun res!1507178 () Bool)

(assert (=> b!3704876 (=> (not res!1507178) (not e!2294874))))

(assert (=> b!3704876 (= res!1507178 (rulesInvariant!5001 thiss!19663 rules!2525))))

(declare-fun e!2294875 () Bool)

(assert (=> b!3704877 (= e!2294875 (and tp!1126726 tp!1126725))))

(declare-fun b!3704878 () Bool)

(declare-fun res!1507181 () Bool)

(assert (=> b!3704878 (=> res!1507181 e!2294878)))

(declare-fun contains!7879 (List!39595 Rule!11830) Bool)

(declare-fun get!13143 (Option!8553) Rule!11830)

(assert (=> b!3704878 (= res!1507181 (not (contains!7879 rules!2525 (get!13143 lt!1296236))))))

(declare-fun b!3704879 () Bool)

(declare-fun tp!1126727 () Bool)

(declare-fun inv!52979 (TokenValueInjection!11918) Bool)

(assert (=> b!3704879 (= e!2294873 (and tp!1126727 (inv!52976 (tag!6871 (h!44891 rules!2525))) (inv!52979 (transformation!6015 (h!44891 rules!2525))) e!2294875))))

(declare-fun b!3704880 () Bool)

(declare-fun res!1507180 () Bool)

(assert (=> b!3704880 (=> (not res!1507180) (not e!2294874))))

(assert (=> b!3704880 (= res!1507180 (and (or (not (is-Cons!39471 rules!2525)) (not (= (tag!6871 (h!44891 rules!2525)) tag!164))) (is-Cons!39471 rules!2525) (not (= (tag!6871 (h!44891 rules!2525)) tag!164))))))

(assert (= (and start!349348 res!1507177) b!3704876))

(assert (= (and b!3704876 res!1507178) b!3704880))

(assert (= (and b!3704880 res!1507180) b!3704874))

(assert (= (and b!3704874 (not res!1507179)) b!3704878))

(assert (= (and b!3704878 (not res!1507181)) b!3704875))

(assert (= b!3704879 b!3704877))

(assert (= b!3704873 b!3704879))

(assert (= (and start!349348 (is-Cons!39471 rules!2525)) b!3704873))

(declare-fun m!4215425 () Bool)

(assert (=> b!3704876 m!4215425))

(declare-fun m!4215427 () Bool)

(assert (=> b!3704878 m!4215427))

(assert (=> b!3704878 m!4215427))

(declare-fun m!4215429 () Bool)

(assert (=> b!3704878 m!4215429))

(declare-fun m!4215431 () Bool)

(assert (=> b!3704874 m!4215431))

(declare-fun m!4215433 () Bool)

(assert (=> b!3704874 m!4215433))

(declare-fun m!4215435 () Bool)

(assert (=> b!3704874 m!4215435))

(declare-fun m!4215437 () Bool)

(assert (=> b!3704874 m!4215437))

(declare-fun m!4215439 () Bool)

(assert (=> b!3704879 m!4215439))

(declare-fun m!4215441 () Bool)

(assert (=> b!3704879 m!4215441))

(declare-fun m!4215443 () Bool)

(assert (=> start!349348 m!4215443))

(declare-fun m!4215445 () Bool)

(assert (=> b!3704875 m!4215445))

(push 1)

(assert (not b!3704873))

(assert (not b!3704878))

(assert (not b_next!99693))

(assert (not b_next!99695))

(assert (not b!3704874))

(assert b_and!277223)

(assert b_and!277225)

(assert (not b!3704875))

(assert (not start!349348))

(assert (not b!3704879))

(assert (not b!3704876))

(check-sat)

(pop 1)

(push 1)

(assert b_and!277225)

(assert b_and!277223)

(assert (not b_next!99695))

(assert (not b_next!99693))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1086277 () Bool)

(assert (=> d!1086277 (= (inv!52976 tag!164) (= (mod (str.len (value!191827 tag!164)) 2) 0))))

(assert (=> start!349348 d!1086277))

(declare-fun d!1086279 () Bool)

(declare-fun res!1507203 () Bool)

(declare-fun e!2294903 () Bool)

(assert (=> d!1086279 (=> (not res!1507203) (not e!2294903))))

(declare-fun rulesValid!2330 (LexerInterface!5604 List!39595) Bool)

(assert (=> d!1086279 (= res!1507203 (rulesValid!2330 thiss!19663 rules!2525))))

(assert (=> d!1086279 (= (rulesInvariant!5001 thiss!19663 rules!2525) e!2294903)))

(declare-fun b!3704907 () Bool)

(declare-datatypes ((List!39599 0))(
  ( (Nil!39475) (Cons!39475 (h!44895 String!44560) (t!302282 List!39599)) )
))
(declare-fun noDuplicateTag!2331 (LexerInterface!5604 List!39595 List!39599) Bool)

(assert (=> b!3704907 (= e!2294903 (noDuplicateTag!2331 thiss!19663 rules!2525 Nil!39475))))

(assert (= (and d!1086279 res!1507203) b!3704907))

(declare-fun m!4215469 () Bool)

(assert (=> d!1086279 m!4215469))

(declare-fun m!4215471 () Bool)

(assert (=> b!3704907 m!4215471))

(assert (=> b!3704876 d!1086279))

(declare-fun d!1086281 () Bool)

(declare-fun lt!1296247 () Bool)

(declare-fun content!5702 (List!39595) (Set Rule!11830))

(assert (=> d!1086281 (= lt!1296247 (set.member (get!13143 lt!1296236) (content!5702 rules!2525)))))

(declare-fun e!2294910 () Bool)

(assert (=> d!1086281 (= lt!1296247 e!2294910)))

(declare-fun res!1507210 () Bool)

(assert (=> d!1086281 (=> (not res!1507210) (not e!2294910))))

(assert (=> d!1086281 (= res!1507210 (is-Cons!39471 rules!2525))))

(assert (=> d!1086281 (= (contains!7879 rules!2525 (get!13143 lt!1296236)) lt!1296247)))

(declare-fun b!3704914 () Bool)

(declare-fun e!2294911 () Bool)

(assert (=> b!3704914 (= e!2294910 e!2294911)))

(declare-fun res!1507211 () Bool)

(assert (=> b!3704914 (=> res!1507211 e!2294911)))

(assert (=> b!3704914 (= res!1507211 (= (h!44891 rules!2525) (get!13143 lt!1296236)))))

(declare-fun b!3704915 () Bool)

(assert (=> b!3704915 (= e!2294911 (contains!7879 (t!302278 rules!2525) (get!13143 lt!1296236)))))

(assert (= (and d!1086281 res!1507210) b!3704914))

(assert (= (and b!3704914 (not res!1507211)) b!3704915))

(declare-fun m!4215473 () Bool)

(assert (=> d!1086281 m!4215473))

(assert (=> d!1086281 m!4215427))

(declare-fun m!4215475 () Bool)

(assert (=> d!1086281 m!4215475))

(assert (=> b!3704915 m!4215427))

(declare-fun m!4215477 () Bool)

(assert (=> b!3704915 m!4215477))

(assert (=> b!3704878 d!1086281))

(declare-fun d!1086285 () Bool)

(assert (=> d!1086285 (= (get!13143 lt!1296236) (v!38534 lt!1296236))))

(assert (=> b!3704878 d!1086285))

(declare-fun d!1086287 () Bool)

(assert (=> d!1086287 (= (isEmpty!23477 lt!1296236) (not (is-Some!8552 lt!1296236)))))

(assert (=> b!3704874 d!1086287))

(declare-fun b!3704932 () Bool)

(declare-fun e!2294924 () Option!8553)

(assert (=> b!3704932 (= e!2294924 (Some!8552 (h!44891 (t!302278 rules!2525))))))

(declare-fun b!3704933 () Bool)

(declare-fun e!2294926 () Option!8553)

(assert (=> b!3704933 (= e!2294926 None!8552)))

(declare-fun d!1086289 () Bool)

(declare-fun e!2294925 () Bool)

(assert (=> d!1086289 e!2294925))

(declare-fun res!1507221 () Bool)

(assert (=> d!1086289 (=> res!1507221 e!2294925)))

(declare-fun lt!1296257 () Option!8553)

(assert (=> d!1086289 (= res!1507221 (isEmpty!23477 lt!1296257))))

(assert (=> d!1086289 (= lt!1296257 e!2294924)))

(declare-fun c!639970 () Bool)

(assert (=> d!1086289 (= c!639970 (and (is-Cons!39471 (t!302278 rules!2525)) (= (tag!6871 (h!44891 (t!302278 rules!2525))) tag!164)))))

(assert (=> d!1086289 (rulesInvariant!5001 thiss!19663 (t!302278 rules!2525))))

(assert (=> d!1086289 (= (getRuleFromTag!1541 thiss!19663 (t!302278 rules!2525) tag!164) lt!1296257)))

(declare-fun b!3704934 () Bool)

(declare-fun e!2294927 () Bool)

(assert (=> b!3704934 (= e!2294927 (= (tag!6871 (get!13143 lt!1296257)) tag!164))))

(declare-fun b!3704935 () Bool)

(assert (=> b!3704935 (= e!2294925 e!2294927)))

(declare-fun res!1507220 () Bool)

(assert (=> b!3704935 (=> (not res!1507220) (not e!2294927))))

(assert (=> b!3704935 (= res!1507220 (contains!7879 (t!302278 rules!2525) (get!13143 lt!1296257)))))

(declare-fun b!3704936 () Bool)

(assert (=> b!3704936 (= e!2294924 e!2294926)))

(declare-fun c!639971 () Bool)

(assert (=> b!3704936 (= c!639971 (and (is-Cons!39471 (t!302278 rules!2525)) (not (= (tag!6871 (h!44891 (t!302278 rules!2525))) tag!164))))))

(declare-fun b!3704937 () Bool)

(declare-fun lt!1296255 () Unit!57401)

(declare-fun lt!1296256 () Unit!57401)

(assert (=> b!3704937 (= lt!1296255 lt!1296256)))

(assert (=> b!3704937 (rulesInvariant!5001 thiss!19663 (t!302278 (t!302278 rules!2525)))))

(assert (=> b!3704937 (= lt!1296256 (lemmaInvariantOnRulesThenOnTail!701 thiss!19663 (h!44891 (t!302278 rules!2525)) (t!302278 (t!302278 rules!2525))))))

(assert (=> b!3704937 (= e!2294926 (getRuleFromTag!1541 thiss!19663 (t!302278 (t!302278 rules!2525)) tag!164))))

(assert (= (and d!1086289 c!639970) b!3704932))

(assert (= (and d!1086289 (not c!639970)) b!3704936))

(assert (= (and b!3704936 c!639971) b!3704937))

(assert (= (and b!3704936 (not c!639971)) b!3704933))

(assert (= (and d!1086289 (not res!1507221)) b!3704935))

(assert (= (and b!3704935 res!1507220) b!3704934))

(declare-fun m!4215485 () Bool)

(assert (=> d!1086289 m!4215485))

(assert (=> d!1086289 m!4215435))

(declare-fun m!4215487 () Bool)

(assert (=> b!3704934 m!4215487))

(assert (=> b!3704935 m!4215487))

(assert (=> b!3704935 m!4215487))

(declare-fun m!4215489 () Bool)

(assert (=> b!3704935 m!4215489))

(declare-fun m!4215491 () Bool)

(assert (=> b!3704937 m!4215491))

(declare-fun m!4215493 () Bool)

(assert (=> b!3704937 m!4215493))

(declare-fun m!4215495 () Bool)

(assert (=> b!3704937 m!4215495))

(assert (=> b!3704874 d!1086289))

(declare-fun d!1086297 () Bool)

(declare-fun res!1507222 () Bool)

(declare-fun e!2294932 () Bool)

(assert (=> d!1086297 (=> (not res!1507222) (not e!2294932))))

(assert (=> d!1086297 (= res!1507222 (rulesValid!2330 thiss!19663 (t!302278 rules!2525)))))

(assert (=> d!1086297 (= (rulesInvariant!5001 thiss!19663 (t!302278 rules!2525)) e!2294932)))

(declare-fun b!3704946 () Bool)

(assert (=> b!3704946 (= e!2294932 (noDuplicateTag!2331 thiss!19663 (t!302278 rules!2525) Nil!39475))))

(assert (= (and d!1086297 res!1507222) b!3704946))

(declare-fun m!4215497 () Bool)

(assert (=> d!1086297 m!4215497))

(declare-fun m!4215499 () Bool)

(assert (=> b!3704946 m!4215499))

(assert (=> b!3704874 d!1086297))

(declare-fun d!1086299 () Bool)

(assert (=> d!1086299 (rulesInvariant!5001 thiss!19663 (t!302278 rules!2525))))

(declare-fun lt!1296266 () Unit!57401)

(declare-fun choose!22153 (LexerInterface!5604 Rule!11830 List!39595) Unit!57401)

(assert (=> d!1086299 (= lt!1296266 (choose!22153 thiss!19663 (h!44891 rules!2525) (t!302278 rules!2525)))))

(assert (=> d!1086299 (rulesInvariant!5001 thiss!19663 (Cons!39471 (h!44891 rules!2525) (t!302278 rules!2525)))))

(assert (=> d!1086299 (= (lemmaInvariantOnRulesThenOnTail!701 thiss!19663 (h!44891 rules!2525) (t!302278 rules!2525)) lt!1296266)))

(declare-fun bs!574624 () Bool)

(assert (= bs!574624 d!1086299))

(assert (=> bs!574624 m!4215435))

(declare-fun m!4215501 () Bool)

(assert (=> bs!574624 m!4215501))

(declare-fun m!4215503 () Bool)

(assert (=> bs!574624 m!4215503))

(assert (=> b!3704874 d!1086299))

(declare-fun d!1086301 () Bool)

(assert (=> d!1086301 (= (inv!52976 (tag!6871 (h!44891 rules!2525))) (= (mod (str.len (value!191827 (tag!6871 (h!44891 rules!2525)))) 2) 0))))

(assert (=> b!3704879 d!1086301))

(declare-fun d!1086303 () Bool)

(declare-fun res!1507233 () Bool)

(declare-fun e!2294945 () Bool)

(assert (=> d!1086303 (=> (not res!1507233) (not e!2294945))))

(declare-fun semiInverseModEq!2574 (Int Int) Bool)

(assert (=> d!1086303 (= res!1507233 (semiInverseModEq!2574 (toChars!8218 (transformation!6015 (h!44891 rules!2525))) (toValue!8359 (transformation!6015 (h!44891 rules!2525)))))))

(assert (=> d!1086303 (= (inv!52979 (transformation!6015 (h!44891 rules!2525))) e!2294945)))

(declare-fun b!3704961 () Bool)

(declare-fun equivClasses!2473 (Int Int) Bool)

(assert (=> b!3704961 (= e!2294945 (equivClasses!2473 (toChars!8218 (transformation!6015 (h!44891 rules!2525))) (toValue!8359 (transformation!6015 (h!44891 rules!2525)))))))

(assert (= (and d!1086303 res!1507233) b!3704961))

(declare-fun m!4215517 () Bool)

(assert (=> d!1086303 m!4215517))

(declare-fun m!4215519 () Bool)

(assert (=> b!3704961 m!4215519))

(assert (=> b!3704879 d!1086303))

(declare-fun d!1086307 () Bool)

(assert (=> d!1086307 (= (isDefined!6740 lt!1296236) (not (isEmpty!23477 lt!1296236)))))

(declare-fun bs!574625 () Bool)

(assert (= bs!574625 d!1086307))

(assert (=> bs!574625 m!4215431))

(assert (=> b!3704875 d!1086307))

(declare-fun b!3704973 () Bool)

(declare-fun b_free!98997 () Bool)

(declare-fun b_next!99701 () Bool)

(assert (=> b!3704973 (= b_free!98997 (not b_next!99701))))

(declare-fun tp!1126749 () Bool)

(declare-fun b_and!277231 () Bool)

(assert (=> b!3704973 (= tp!1126749 b_and!277231)))

(declare-fun b_free!98999 () Bool)

(declare-fun b_next!99703 () Bool)

(assert (=> b!3704973 (= b_free!98999 (not b_next!99703))))

(declare-fun tp!1126750 () Bool)

(declare-fun b_and!277233 () Bool)

(assert (=> b!3704973 (= tp!1126750 b_and!277233)))

(declare-fun e!2294958 () Bool)

(assert (=> b!3704973 (= e!2294958 (and tp!1126749 tp!1126750))))

(declare-fun tp!1126752 () Bool)

(declare-fun e!2294957 () Bool)

(declare-fun b!3704972 () Bool)

(assert (=> b!3704972 (= e!2294957 (and tp!1126752 (inv!52976 (tag!6871 (h!44891 (t!302278 rules!2525)))) (inv!52979 (transformation!6015 (h!44891 (t!302278 rules!2525)))) e!2294958))))

(declare-fun b!3704971 () Bool)

(declare-fun e!2294956 () Bool)

(declare-fun tp!1126751 () Bool)

(assert (=> b!3704971 (= e!2294956 (and e!2294957 tp!1126751))))

(assert (=> b!3704873 (= tp!1126728 e!2294956)))

(assert (= b!3704972 b!3704973))

(assert (= b!3704971 b!3704972))

(assert (= (and b!3704873 (is-Cons!39471 (t!302278 rules!2525))) b!3704971))

(declare-fun m!4215525 () Bool)

(assert (=> b!3704972 m!4215525))

(declare-fun m!4215527 () Bool)

(assert (=> b!3704972 m!4215527))

(declare-fun b!3704985 () Bool)

(declare-fun e!2294961 () Bool)

(declare-fun tp!1126767 () Bool)

(declare-fun tp!1126763 () Bool)

(assert (=> b!3704985 (= e!2294961 (and tp!1126767 tp!1126763))))

(declare-fun b!3704987 () Bool)

(declare-fun tp!1126765 () Bool)

(declare-fun tp!1126764 () Bool)

(assert (=> b!3704987 (= e!2294961 (and tp!1126765 tp!1126764))))

(declare-fun b!3704986 () Bool)

(declare-fun tp!1126766 () Bool)

(assert (=> b!3704986 (= e!2294961 tp!1126766)))

(assert (=> b!3704879 (= tp!1126727 e!2294961)))

(declare-fun b!3704984 () Bool)

(declare-fun tp_is_empty!18595 () Bool)

(assert (=> b!3704984 (= e!2294961 tp_is_empty!18595)))

(assert (= (and b!3704879 (is-ElementMatch!10774 (regex!6015 (h!44891 rules!2525)))) b!3704984))

(assert (= (and b!3704879 (is-Concat!17020 (regex!6015 (h!44891 rules!2525)))) b!3704985))

(assert (= (and b!3704879 (is-Star!10774 (regex!6015 (h!44891 rules!2525)))) b!3704986))

(assert (= (and b!3704879 (is-Union!10774 (regex!6015 (h!44891 rules!2525)))) b!3704987))

(push 1)

(assert (not d!1086307))

(assert (not b!3704987))

(assert (not d!1086297))

(assert (not b!3704934))

(assert (not b!3704985))

(assert (not b!3704935))

(assert tp_is_empty!18595)

(assert b_and!277233)

(assert b_and!277225)

(assert b_and!277231)

(assert (not b!3704972))

(assert (not b!3704961))

(assert (not d!1086289))

(assert (not b!3704971))

(assert (not b!3704986))

(assert (not b_next!99693))

(assert (not b_next!99695))

(assert (not b!3704946))

(assert (not b!3704915))

(assert (not b!3704907))

(assert (not b_next!99703))

(assert (not b!3704937))

(assert (not b_next!99701))

(assert (not d!1086281))

(assert b_and!277223)

(assert (not d!1086279))

(assert (not d!1086299))

(assert (not d!1086303))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99693))

(assert (not b_next!99695))

(assert b_and!277223)

(assert b_and!277233)

(assert b_and!277225)

(assert b_and!277231)

(assert (not b_next!99703))

(assert (not b_next!99701))

(check-sat)

(pop 1)

