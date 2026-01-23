; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757548 () Bool)

(assert start!757548)

(declare-fun b!8045604 () Bool)

(declare-fun b_free!136351 () Bool)

(declare-fun b_next!137141 () Bool)

(assert (=> b!8045604 (= b_free!136351 (not b_next!137141))))

(declare-fun tp!2411604 () Bool)

(declare-fun b_and!354787 () Bool)

(assert (=> b!8045604 (= tp!2411604 b_and!354787)))

(declare-fun b_free!136353 () Bool)

(declare-fun b_next!137143 () Bool)

(assert (=> b!8045604 (= b_free!136353 (not b_next!137143))))

(declare-fun tp!2411607 () Bool)

(declare-fun b_and!354789 () Bool)

(assert (=> b!8045604 (= tp!2411607 b_and!354789)))

(declare-fun b!8045598 () Bool)

(declare-fun b_free!136355 () Bool)

(declare-fun b_next!137145 () Bool)

(assert (=> b!8045598 (= b_free!136355 (not b_next!137145))))

(declare-fun tp!2411605 () Bool)

(declare-fun b_and!354791 () Bool)

(assert (=> b!8045598 (= tp!2411605 b_and!354791)))

(declare-fun b_free!136357 () Bool)

(declare-fun b_next!137147 () Bool)

(assert (=> b!8045598 (= b_free!136357 (not b_next!137147))))

(declare-fun tp!2411602 () Bool)

(declare-fun b_and!354793 () Bool)

(assert (=> b!8045598 (= tp!2411602 b_and!354793)))

(declare-fun b!8045597 () Bool)

(declare-fun res!3180420 () Bool)

(declare-fun e!4739817 () Bool)

(assert (=> b!8045597 (=> (not res!3180420) (not e!4739817))))

(declare-datatypes ((LexerInterface!8343 0))(
  ( (LexerInterfaceExt!8340 (__x!35427 Int)) (Lexer!8341) )
))
(declare-fun thiss!26855 () LexerInterface!8343)

(declare-datatypes ((C!43986 0))(
  ( (C!43987 (val!32769 Int)) )
))
(declare-datatypes ((String!85140 0))(
  ( (String!85141 (value!292475 String)) )
))
(declare-datatypes ((List!75428 0))(
  ( (Nil!75302) (Cons!75302 (h!81750 C!43986) (t!391198 List!75428)) )
))
(declare-datatypes ((IArray!32103 0))(
  ( (IArray!32104 (innerList!16109 List!75428)) )
))
(declare-datatypes ((Conc!16021 0))(
  ( (Node!16021 (left!57367 Conc!16021) (right!57697 Conc!16021) (csize!32272 Int) (cheight!16232 Int)) (Leaf!30708 (xs!19419 IArray!32103) (csize!32273 Int)) (Empty!16021) )
))
(declare-datatypes ((List!75429 0))(
  ( (Nil!75303) (Cons!75303 (h!81751 (_ BitVec 16)) (t!391199 List!75429)) )
))
(declare-datatypes ((TokenValue!9073 0))(
  ( (FloatLiteralValue!18146 (text!63956 List!75429)) (TokenValueExt!9072 (__x!35428 Int)) (Broken!45365 (value!292476 List!75429)) (Object!9198) (End!9073) (Def!9073) (Underscore!9073) (Match!9073) (Else!9073) (Error!9073) (Case!9073) (If!9073) (Extends!9073) (Abstract!9073) (Class!9073) (Val!9073) (DelimiterValue!18146 (del!9133 List!75429)) (KeywordValue!9079 (value!292477 List!75429)) (CommentValue!18146 (value!292478 List!75429)) (WhitespaceValue!18146 (value!292479 List!75429)) (IndentationValue!9073 (value!292480 List!75429)) (String!85142) (Int32!9073) (Broken!45366 (value!292481 List!75429)) (Boolean!9074) (Unit!171120) (OperatorValue!9076 (op!9133 List!75429)) (IdentifierValue!18146 (value!292482 List!75429)) (IdentifierValue!18147 (value!292483 List!75429)) (WhitespaceValue!18147 (value!292484 List!75429)) (True!18146) (False!18146) (Broken!45367 (value!292485 List!75429)) (Broken!45368 (value!292486 List!75429)) (True!18147) (RightBrace!9073) (RightBracket!9073) (Colon!9073) (Null!9073) (Comma!9073) (LeftBracket!9073) (False!18147) (LeftBrace!9073) (ImaginaryLiteralValue!9073 (text!63957 List!75429)) (StringLiteralValue!27219 (value!292487 List!75429)) (EOFValue!9073 (value!292488 List!75429)) (IdentValue!9073 (value!292489 List!75429)) (DelimiterValue!18147 (value!292490 List!75429)) (DedentValue!9073 (value!292491 List!75429)) (NewLineValue!9073 (value!292492 List!75429)) (IntegerValue!27219 (value!292493 (_ BitVec 32)) (text!63958 List!75429)) (IntegerValue!27220 (value!292494 Int) (text!63959 List!75429)) (Times!9073) (Or!9073) (Equal!9073) (Minus!9073) (Broken!45369 (value!292495 List!75429)) (And!9073) (Div!9073) (LessEqual!9073) (Mod!9073) (Concat!30897) (Not!9073) (Plus!9073) (SpaceValue!9073 (value!292496 List!75429)) (IntegerValue!27221 (value!292497 Int) (text!63960 List!75429)) (StringLiteralValue!27220 (text!63961 List!75429)) (FloatLiteralValue!18147 (text!63962 List!75429)) (BytesLiteralValue!9073 (value!292498 List!75429)) (CommentValue!18147 (value!292499 List!75429)) (StringLiteralValue!27221 (value!292500 List!75429)) (ErrorTokenValue!9073 (msg!9134 List!75429)) )
))
(declare-datatypes ((BalanceConc!30998 0))(
  ( (BalanceConc!30999 (c!1475419 Conc!16021)) )
))
(declare-datatypes ((TokenValueInjection!17454 0))(
  ( (TokenValueInjection!17455 (toValue!11832 Int) (toChars!11691 Int)) )
))
(declare-datatypes ((Regex!21824 0))(
  ( (ElementMatch!21824 (c!1475420 C!43986)) (Concat!30898 (regOne!44160 Regex!21824) (regTwo!44160 Regex!21824)) (EmptyExpr!21824) (Star!21824 (reg!22153 Regex!21824)) (EmptyLang!21824) (Union!21824 (regOne!44161 Regex!21824) (regTwo!44161 Regex!21824)) )
))
(declare-datatypes ((Rule!17306 0))(
  ( (Rule!17307 (regex!8753 Regex!21824) (tag!9617 String!85140) (isSeparator!8753 Bool) (transformation!8753 TokenValueInjection!17454)) )
))
(declare-datatypes ((List!75430 0))(
  ( (Nil!75304) (Cons!75304 (h!81752 Rule!17306) (t!391200 List!75430)) )
))
(declare-fun lt!2722695 () List!75430)

(declare-fun rulesValidInductive!3472 (LexerInterface!8343 List!75430) Bool)

(assert (=> b!8045597 (= res!3180420 (rulesValidInductive!3472 thiss!26855 lt!2722695))))

(declare-fun tp!2411606 () Bool)

(declare-fun b!8045599 () Bool)

(declare-fun rules!4030 () List!75430)

(declare-fun e!4739815 () Bool)

(declare-fun e!4739822 () Bool)

(declare-fun inv!97050 (String!85140) Bool)

(declare-fun inv!97053 (TokenValueInjection!17454) Bool)

(assert (=> b!8045599 (= e!4739815 (and tp!2411606 (inv!97050 (tag!9617 (h!81752 rules!4030))) (inv!97053 (transformation!8753 (h!81752 rules!4030))) e!4739822))))

(declare-fun b!8045600 () Bool)

(declare-fun res!3180422 () Bool)

(assert (=> b!8045600 (=> (not res!3180422) (not e!4739817))))

(declare-datatypes ((List!75431 0))(
  ( (Nil!75305) (Cons!75305 (h!81753 String!85140) (t!391201 List!75431)) )
))
(declare-fun noDuplicateTag!3331 (LexerInterface!8343 List!75430 List!75431) Bool)

(assert (=> b!8045600 (= res!3180422 (noDuplicateTag!3331 thiss!26855 lt!2722695 Nil!75305))))

(declare-fun tp!2411608 () Bool)

(declare-fun e!4739814 () Bool)

(declare-fun r!4387 () Rule!17306)

(declare-fun e!4739816 () Bool)

(declare-fun b!8045601 () Bool)

(assert (=> b!8045601 (= e!4739816 (and tp!2411608 (inv!97050 (tag!9617 r!4387)) (inv!97053 (transformation!8753 r!4387)) e!4739814))))

(declare-fun b!8045602 () Bool)

(declare-fun res!3180421 () Bool)

(assert (=> b!8045602 (=> (not res!3180421) (not e!4739817))))

(assert (=> b!8045602 (= res!3180421 (rulesValidInductive!3472 thiss!26855 rules!4030))))

(declare-fun b!8045603 () Bool)

(declare-fun e!4739813 () Bool)

(declare-fun tp!2411603 () Bool)

(assert (=> b!8045603 (= e!4739813 (and e!4739815 tp!2411603))))

(assert (=> b!8045598 (= e!4739814 (and tp!2411605 tp!2411602))))

(declare-fun res!3180418 () Bool)

(declare-fun e!4739820 () Bool)

(assert (=> start!757548 (=> (not res!3180418) (not e!4739820))))

(assert (=> start!757548 (= res!3180418 (is-Lexer!8341 thiss!26855))))

(assert (=> start!757548 e!4739820))

(assert (=> start!757548 true))

(assert (=> start!757548 e!4739816))

(assert (=> start!757548 e!4739813))

(assert (=> b!8045604 (= e!4739822 (and tp!2411604 tp!2411607))))

(declare-fun b!8045605 () Bool)

(declare-fun e!4739819 () Bool)

(assert (=> b!8045605 (= e!4739817 e!4739819)))

(declare-fun res!3180417 () Bool)

(assert (=> b!8045605 (=> (not res!3180417) (not e!4739819))))

(declare-fun lt!2722694 () List!75431)

(assert (=> b!8045605 (= res!3180417 (noDuplicateTag!3331 thiss!26855 rules!4030 lt!2722694))))

(assert (=> b!8045605 (= lt!2722694 (Cons!75305 (tag!9617 r!4387) Nil!75305))))

(declare-fun b!8045606 () Bool)

(declare-fun subseq!904 (List!75431 List!75431) Bool)

(assert (=> b!8045606 (= e!4739819 (not (subseq!904 Nil!75305 lt!2722694)))))

(declare-fun b!8045607 () Bool)

(assert (=> b!8045607 (= e!4739820 e!4739817)))

(declare-fun res!3180419 () Bool)

(assert (=> b!8045607 (=> (not res!3180419) (not e!4739817))))

(declare-fun rulesInvariant!6811 (LexerInterface!8343 List!75430) Bool)

(assert (=> b!8045607 (= res!3180419 (rulesInvariant!6811 thiss!26855 lt!2722695))))

(assert (=> b!8045607 (= lt!2722695 (Cons!75304 r!4387 rules!4030))))

(assert (= (and start!757548 res!3180418) b!8045607))

(assert (= (and b!8045607 res!3180419) b!8045597))

(assert (= (and b!8045597 res!3180420) b!8045600))

(assert (= (and b!8045600 res!3180422) b!8045602))

(assert (= (and b!8045602 res!3180421) b!8045605))

(assert (= (and b!8045605 res!3180417) b!8045606))

(assert (= b!8045601 b!8045598))

(assert (= start!757548 b!8045601))

(assert (= b!8045599 b!8045604))

(assert (= b!8045603 b!8045599))

(assert (= (and start!757548 (is-Cons!75304 rules!4030)) b!8045603))

(declare-fun m!8398048 () Bool)

(assert (=> b!8045599 m!8398048))

(declare-fun m!8398050 () Bool)

(assert (=> b!8045599 m!8398050))

(declare-fun m!8398052 () Bool)

(assert (=> b!8045600 m!8398052))

(declare-fun m!8398054 () Bool)

(assert (=> b!8045605 m!8398054))

(declare-fun m!8398056 () Bool)

(assert (=> b!8045607 m!8398056))

(declare-fun m!8398058 () Bool)

(assert (=> b!8045602 m!8398058))

(declare-fun m!8398060 () Bool)

(assert (=> b!8045601 m!8398060))

(declare-fun m!8398062 () Bool)

(assert (=> b!8045601 m!8398062))

(declare-fun m!8398064 () Bool)

(assert (=> b!8045597 m!8398064))

(declare-fun m!8398066 () Bool)

(assert (=> b!8045606 m!8398066))

(push 1)

(assert (not b_next!137141))

(assert b_and!354787)

(assert b_and!354791)

(assert (not b!8045601))

(assert (not b_next!137143))

(assert (not b!8045603))

(assert (not b!8045599))

(assert (not b!8045607))

(assert (not b!8045606))

(assert b_and!354789)

(assert b_and!354793)

(assert (not b_next!137147))

(assert (not b_next!137145))

(assert (not b!8045597))

(assert (not b!8045602))

(assert (not b!8045600))

(assert (not b!8045605))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!137141))

(assert b_and!354787)

(assert b_and!354791)

(assert (not b_next!137143))

(assert b_and!354789)

(assert b_and!354793)

(assert (not b_next!137147))

(assert (not b_next!137145))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2396387 () Bool)

(assert (=> d!2396387 true))

(declare-fun lt!2722706 () Bool)

(declare-fun lambda!472733 () Int)

(declare-fun forall!18471 (List!75430 Int) Bool)

(assert (=> d!2396387 (= lt!2722706 (forall!18471 rules!4030 lambda!472733))))

(declare-fun e!4739861 () Bool)

(assert (=> d!2396387 (= lt!2722706 e!4739861)))

(declare-fun res!3180453 () Bool)

(assert (=> d!2396387 (=> res!3180453 e!4739861)))

(assert (=> d!2396387 (= res!3180453 (not (is-Cons!75304 rules!4030)))))

(assert (=> d!2396387 (= (rulesValidInductive!3472 thiss!26855 rules!4030) lt!2722706)))

(declare-fun b!8045649 () Bool)

(declare-fun e!4739862 () Bool)

(assert (=> b!8045649 (= e!4739861 e!4739862)))

(declare-fun res!3180454 () Bool)

(assert (=> b!8045649 (=> (not res!3180454) (not e!4739862))))

(declare-fun ruleValid!3995 (LexerInterface!8343 Rule!17306) Bool)

(assert (=> b!8045649 (= res!3180454 (ruleValid!3995 thiss!26855 (h!81752 rules!4030)))))

(declare-fun b!8045650 () Bool)

(assert (=> b!8045650 (= e!4739862 (rulesValidInductive!3472 thiss!26855 (t!391200 rules!4030)))))

(assert (= (and d!2396387 (not res!3180453)) b!8045649))

(assert (= (and b!8045649 res!3180454) b!8045650))

(declare-fun m!8398088 () Bool)

(assert (=> d!2396387 m!8398088))

(declare-fun m!8398090 () Bool)

(assert (=> b!8045649 m!8398090))

(declare-fun m!8398092 () Bool)

(assert (=> b!8045650 m!8398092))

(assert (=> b!8045602 d!2396387))

(declare-fun bs!1971686 () Bool)

(declare-fun d!2396391 () Bool)

(assert (= bs!1971686 (and d!2396391 d!2396387)))

(declare-fun lambda!472734 () Int)

(assert (=> bs!1971686 (= lambda!472734 lambda!472733)))

(assert (=> d!2396391 true))

(declare-fun lt!2722707 () Bool)

(assert (=> d!2396391 (= lt!2722707 (forall!18471 lt!2722695 lambda!472734))))

(declare-fun e!4739863 () Bool)

(assert (=> d!2396391 (= lt!2722707 e!4739863)))

(declare-fun res!3180455 () Bool)

(assert (=> d!2396391 (=> res!3180455 e!4739863)))

(assert (=> d!2396391 (= res!3180455 (not (is-Cons!75304 lt!2722695)))))

(assert (=> d!2396391 (= (rulesValidInductive!3472 thiss!26855 lt!2722695) lt!2722707)))

(declare-fun b!8045653 () Bool)

(declare-fun e!4739864 () Bool)

(assert (=> b!8045653 (= e!4739863 e!4739864)))

(declare-fun res!3180456 () Bool)

(assert (=> b!8045653 (=> (not res!3180456) (not e!4739864))))

(assert (=> b!8045653 (= res!3180456 (ruleValid!3995 thiss!26855 (h!81752 lt!2722695)))))

(declare-fun b!8045654 () Bool)

(assert (=> b!8045654 (= e!4739864 (rulesValidInductive!3472 thiss!26855 (t!391200 lt!2722695)))))

(assert (= (and d!2396391 (not res!3180455)) b!8045653))

(assert (= (and b!8045653 res!3180456) b!8045654))

(declare-fun m!8398094 () Bool)

(assert (=> d!2396391 m!8398094))

(declare-fun m!8398096 () Bool)

(assert (=> b!8045653 m!8398096))

(declare-fun m!8398098 () Bool)

(assert (=> b!8045654 m!8398098))

(assert (=> b!8045597 d!2396391))

(declare-fun d!2396393 () Bool)

(assert (=> d!2396393 (= (inv!97050 (tag!9617 (h!81752 rules!4030))) (= (mod (str.len (value!292475 (tag!9617 (h!81752 rules!4030)))) 2) 0))))

(assert (=> b!8045599 d!2396393))

(declare-fun d!2396395 () Bool)

(declare-fun res!3180459 () Bool)

(declare-fun e!4739867 () Bool)

(assert (=> d!2396395 (=> (not res!3180459) (not e!4739867))))

(declare-fun semiInverseModEq!3885 (Int Int) Bool)

(assert (=> d!2396395 (= res!3180459 (semiInverseModEq!3885 (toChars!11691 (transformation!8753 (h!81752 rules!4030))) (toValue!11832 (transformation!8753 (h!81752 rules!4030)))))))

(assert (=> d!2396395 (= (inv!97053 (transformation!8753 (h!81752 rules!4030))) e!4739867)))

(declare-fun b!8045657 () Bool)

(declare-fun equivClasses!3700 (Int Int) Bool)

(assert (=> b!8045657 (= e!4739867 (equivClasses!3700 (toChars!11691 (transformation!8753 (h!81752 rules!4030))) (toValue!11832 (transformation!8753 (h!81752 rules!4030)))))))

(assert (= (and d!2396395 res!3180459) b!8045657))

(declare-fun m!8398100 () Bool)

(assert (=> d!2396395 m!8398100))

(declare-fun m!8398102 () Bool)

(assert (=> b!8045657 m!8398102))

(assert (=> b!8045599 d!2396395))

(declare-fun d!2396397 () Bool)

(declare-fun res!3180464 () Bool)

(declare-fun e!4739872 () Bool)

(assert (=> d!2396397 (=> res!3180464 e!4739872)))

(assert (=> d!2396397 (= res!3180464 (is-Nil!75304 rules!4030))))

(assert (=> d!2396397 (= (noDuplicateTag!3331 thiss!26855 rules!4030 lt!2722694) e!4739872)))

(declare-fun b!8045662 () Bool)

(declare-fun e!4739873 () Bool)

(assert (=> b!8045662 (= e!4739872 e!4739873)))

(declare-fun res!3180465 () Bool)

(assert (=> b!8045662 (=> (not res!3180465) (not e!4739873))))

(declare-fun contains!21060 (List!75431 String!85140) Bool)

(assert (=> b!8045662 (= res!3180465 (not (contains!21060 lt!2722694 (tag!9617 (h!81752 rules!4030)))))))

(declare-fun b!8045663 () Bool)

(assert (=> b!8045663 (= e!4739873 (noDuplicateTag!3331 thiss!26855 (t!391200 rules!4030) (Cons!75305 (tag!9617 (h!81752 rules!4030)) lt!2722694)))))

(assert (= (and d!2396397 (not res!3180464)) b!8045662))

(assert (= (and b!8045662 res!3180465) b!8045663))

(declare-fun m!8398104 () Bool)

(assert (=> b!8045662 m!8398104))

(declare-fun m!8398106 () Bool)

(assert (=> b!8045663 m!8398106))

(assert (=> b!8045605 d!2396397))

(declare-fun d!2396399 () Bool)

(declare-fun res!3180466 () Bool)

(declare-fun e!4739874 () Bool)

(assert (=> d!2396399 (=> res!3180466 e!4739874)))

(assert (=> d!2396399 (= res!3180466 (is-Nil!75304 lt!2722695))))

(assert (=> d!2396399 (= (noDuplicateTag!3331 thiss!26855 lt!2722695 Nil!75305) e!4739874)))

(declare-fun b!8045664 () Bool)

(declare-fun e!4739875 () Bool)

(assert (=> b!8045664 (= e!4739874 e!4739875)))

(declare-fun res!3180467 () Bool)

(assert (=> b!8045664 (=> (not res!3180467) (not e!4739875))))

(assert (=> b!8045664 (= res!3180467 (not (contains!21060 Nil!75305 (tag!9617 (h!81752 lt!2722695)))))))

(declare-fun b!8045665 () Bool)

(assert (=> b!8045665 (= e!4739875 (noDuplicateTag!3331 thiss!26855 (t!391200 lt!2722695) (Cons!75305 (tag!9617 (h!81752 lt!2722695)) Nil!75305)))))

(assert (= (and d!2396399 (not res!3180466)) b!8045664))

(assert (= (and b!8045664 res!3180467) b!8045665))

(declare-fun m!8398108 () Bool)

(assert (=> b!8045664 m!8398108))

(declare-fun m!8398110 () Bool)

(assert (=> b!8045665 m!8398110))

(assert (=> b!8045600 d!2396399))

(declare-fun b!8045675 () Bool)

(declare-fun e!4739884 () Bool)

(declare-fun e!4739885 () Bool)

(assert (=> b!8045675 (= e!4739884 e!4739885)))

(declare-fun res!3180478 () Bool)

(assert (=> b!8045675 (=> res!3180478 e!4739885)))

(declare-fun e!4739887 () Bool)

(assert (=> b!8045675 (= res!3180478 e!4739887)))

(declare-fun res!3180479 () Bool)

(assert (=> b!8045675 (=> (not res!3180479) (not e!4739887))))

(assert (=> b!8045675 (= res!3180479 (= (h!81753 Nil!75305) (h!81753 lt!2722694)))))

(declare-fun b!8045676 () Bool)

(assert (=> b!8045676 (= e!4739887 (subseq!904 (t!391201 Nil!75305) (t!391201 lt!2722694)))))

(declare-fun b!8045677 () Bool)

(assert (=> b!8045677 (= e!4739885 (subseq!904 Nil!75305 (t!391201 lt!2722694)))))

(declare-fun d!2396401 () Bool)

(declare-fun res!3180477 () Bool)

(declare-fun e!4739886 () Bool)

(assert (=> d!2396401 (=> res!3180477 e!4739886)))

(assert (=> d!2396401 (= res!3180477 (is-Nil!75305 Nil!75305))))

(assert (=> d!2396401 (= (subseq!904 Nil!75305 lt!2722694) e!4739886)))

(declare-fun b!8045674 () Bool)

(assert (=> b!8045674 (= e!4739886 e!4739884)))

(declare-fun res!3180476 () Bool)

(assert (=> b!8045674 (=> (not res!3180476) (not e!4739884))))

(assert (=> b!8045674 (= res!3180476 (is-Cons!75305 lt!2722694))))

(assert (= (and d!2396401 (not res!3180477)) b!8045674))

(assert (= (and b!8045674 res!3180476) b!8045675))

(assert (= (and b!8045675 res!3180479) b!8045676))

(assert (= (and b!8045675 (not res!3180478)) b!8045677))

(declare-fun m!8398112 () Bool)

(assert (=> b!8045676 m!8398112))

(declare-fun m!8398114 () Bool)

(assert (=> b!8045677 m!8398114))

(assert (=> b!8045606 d!2396401))

(declare-fun d!2396403 () Bool)

(assert (=> d!2396403 (= (inv!97050 (tag!9617 r!4387)) (= (mod (str.len (value!292475 (tag!9617 r!4387))) 2) 0))))

(assert (=> b!8045601 d!2396403))

(declare-fun d!2396405 () Bool)

(declare-fun res!3180480 () Bool)

(declare-fun e!4739888 () Bool)

(assert (=> d!2396405 (=> (not res!3180480) (not e!4739888))))

(assert (=> d!2396405 (= res!3180480 (semiInverseModEq!3885 (toChars!11691 (transformation!8753 r!4387)) (toValue!11832 (transformation!8753 r!4387))))))

(assert (=> d!2396405 (= (inv!97053 (transformation!8753 r!4387)) e!4739888)))

(declare-fun b!8045678 () Bool)

(assert (=> b!8045678 (= e!4739888 (equivClasses!3700 (toChars!11691 (transformation!8753 r!4387)) (toValue!11832 (transformation!8753 r!4387))))))

(assert (= (and d!2396405 res!3180480) b!8045678))

(declare-fun m!8398116 () Bool)

(assert (=> d!2396405 m!8398116))

(declare-fun m!8398118 () Bool)

(assert (=> b!8045678 m!8398118))

(assert (=> b!8045601 d!2396405))

(declare-fun d!2396407 () Bool)

(declare-fun res!3180483 () Bool)

(declare-fun e!4739891 () Bool)

(assert (=> d!2396407 (=> (not res!3180483) (not e!4739891))))

(declare-fun rulesValid!3159 (LexerInterface!8343 List!75430) Bool)

(assert (=> d!2396407 (= res!3180483 (rulesValid!3159 thiss!26855 lt!2722695))))

(assert (=> d!2396407 (= (rulesInvariant!6811 thiss!26855 lt!2722695) e!4739891)))

(declare-fun b!8045681 () Bool)

(assert (=> b!8045681 (= e!4739891 (noDuplicateTag!3331 thiss!26855 lt!2722695 Nil!75305))))

(assert (= (and d!2396407 res!3180483) b!8045681))

(declare-fun m!8398120 () Bool)

(assert (=> d!2396407 m!8398120))

(assert (=> b!8045681 m!8398052))

(assert (=> b!8045607 d!2396407))

(declare-fun b!8045692 () Bool)

(declare-fun b_free!136367 () Bool)

(declare-fun b_next!137157 () Bool)

(assert (=> b!8045692 (= b_free!136367 (not b_next!137157))))

(declare-fun tp!2411640 () Bool)

(declare-fun b_and!354803 () Bool)

(assert (=> b!8045692 (= tp!2411640 b_and!354803)))

(declare-fun b_free!136369 () Bool)

(declare-fun b_next!137159 () Bool)

(assert (=> b!8045692 (= b_free!136369 (not b_next!137159))))

(declare-fun tp!2411638 () Bool)

(declare-fun b_and!354805 () Bool)

(assert (=> b!8045692 (= tp!2411638 b_and!354805)))

(declare-fun e!4739902 () Bool)

(assert (=> b!8045692 (= e!4739902 (and tp!2411640 tp!2411638))))

(declare-fun b!8045691 () Bool)

(declare-fun tp!2411641 () Bool)

(declare-fun e!4739901 () Bool)

(assert (=> b!8045691 (= e!4739901 (and tp!2411641 (inv!97050 (tag!9617 (h!81752 (t!391200 rules!4030)))) (inv!97053 (transformation!8753 (h!81752 (t!391200 rules!4030)))) e!4739902))))

(declare-fun b!8045690 () Bool)

(declare-fun e!4739903 () Bool)

(declare-fun tp!2411639 () Bool)

(assert (=> b!8045690 (= e!4739903 (and e!4739901 tp!2411639))))

(assert (=> b!8045603 (= tp!2411603 e!4739903)))

(assert (= b!8045691 b!8045692))

(assert (= b!8045690 b!8045691))

(assert (= (and b!8045603 (is-Cons!75304 (t!391200 rules!4030))) b!8045690))

(declare-fun m!8398122 () Bool)

(assert (=> b!8045691 m!8398122))

(declare-fun m!8398124 () Bool)

(assert (=> b!8045691 m!8398124))

(declare-fun b!8045705 () Bool)

(declare-fun e!4739906 () Bool)

(declare-fun tp!2411656 () Bool)

(assert (=> b!8045705 (= e!4739906 tp!2411656)))

(declare-fun b!8045704 () Bool)

(declare-fun tp!2411655 () Bool)

(declare-fun tp!2411653 () Bool)

(assert (=> b!8045704 (= e!4739906 (and tp!2411655 tp!2411653))))

(declare-fun b!8045703 () Bool)

(declare-fun tp_is_empty!54619 () Bool)

(assert (=> b!8045703 (= e!4739906 tp_is_empty!54619)))

(declare-fun b!8045706 () Bool)

(declare-fun tp!2411654 () Bool)

(declare-fun tp!2411652 () Bool)

(assert (=> b!8045706 (= e!4739906 (and tp!2411654 tp!2411652))))

(assert (=> b!8045599 (= tp!2411606 e!4739906)))

(assert (= (and b!8045599 (is-ElementMatch!21824 (regex!8753 (h!81752 rules!4030)))) b!8045703))

(assert (= (and b!8045599 (is-Concat!30898 (regex!8753 (h!81752 rules!4030)))) b!8045704))

(assert (= (and b!8045599 (is-Star!21824 (regex!8753 (h!81752 rules!4030)))) b!8045705))

(assert (= (and b!8045599 (is-Union!21824 (regex!8753 (h!81752 rules!4030)))) b!8045706))

(declare-fun b!8045709 () Bool)

(declare-fun e!4739907 () Bool)

(declare-fun tp!2411661 () Bool)

(assert (=> b!8045709 (= e!4739907 tp!2411661)))

(declare-fun b!8045708 () Bool)

(declare-fun tp!2411660 () Bool)

(declare-fun tp!2411658 () Bool)

(assert (=> b!8045708 (= e!4739907 (and tp!2411660 tp!2411658))))

(declare-fun b!8045707 () Bool)

(assert (=> b!8045707 (= e!4739907 tp_is_empty!54619)))

(declare-fun b!8045710 () Bool)

(declare-fun tp!2411659 () Bool)

(declare-fun tp!2411657 () Bool)

(assert (=> b!8045710 (= e!4739907 (and tp!2411659 tp!2411657))))

(assert (=> b!8045601 (= tp!2411608 e!4739907)))

(assert (= (and b!8045601 (is-ElementMatch!21824 (regex!8753 r!4387))) b!8045707))

(assert (= (and b!8045601 (is-Concat!30898 (regex!8753 r!4387))) b!8045708))

(assert (= (and b!8045601 (is-Star!21824 (regex!8753 r!4387))) b!8045709))

(assert (= (and b!8045601 (is-Union!21824 (regex!8753 r!4387))) b!8045710))

(push 1)

(assert (not b!8045691))

(assert (not b!8045708))

(assert (not b_next!137143))

(assert (not d!2396407))

(assert (not b!8045709))

(assert (not b!8045662))

(assert (not b!8045657))

(assert (not b!8045704))

(assert b_and!354789)

(assert (not d!2396391))

(assert b_and!354793)

(assert (not b_next!137147))

(assert (not b_next!137145))

(assert (not b!8045650))

(assert (not b_next!137141))

(assert b_and!354787)

(assert (not b!8045710))

(assert b_and!354791)

(assert (not b!8045681))

(assert (not d!2396395))

(assert b_and!354805)

(assert b_and!354803)

(assert (not b!8045678))

(assert (not b!8045663))

(assert (not b!8045653))

(assert (not b!8045706))

(assert (not b!8045705))

(assert (not b!8045677))

(assert (not b!8045676))

(assert (not b!8045690))

(assert (not b!8045665))

(assert tp_is_empty!54619)

(assert (not d!2396387))

(assert (not b!8045649))

(assert (not b!8045654))

(assert (not b!8045664))

(assert (not b_next!137159))

(assert (not d!2396405))

(assert (not b_next!137157))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!137141))

(assert b_and!354787)

(assert b_and!354791)

(assert (not b_next!137143))

(assert (not b_next!137159))

(assert (not b_next!137157))

(assert b_and!354789)

(assert b_and!354793)

(assert (not b_next!137147))

(assert (not b_next!137145))

(assert b_and!354805)

(assert b_and!354803)

(check-sat)

(pop 1)

