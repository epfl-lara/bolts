; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59548 () Bool)

(assert start!59548)

(declare-fun b!619901 () Bool)

(declare-fun b_free!18033 () Bool)

(declare-fun b_next!18049 () Bool)

(assert (=> b!619901 (= b_free!18033 (not b_next!18049))))

(declare-fun tp!192308 () Bool)

(declare-fun b_and!61571 () Bool)

(assert (=> b!619901 (= tp!192308 b_and!61571)))

(declare-fun b_free!18035 () Bool)

(declare-fun b_next!18051 () Bool)

(assert (=> b!619901 (= b_free!18035 (not b_next!18051))))

(declare-fun tp!192313 () Bool)

(declare-fun b_and!61573 () Bool)

(assert (=> b!619901 (= tp!192313 b_and!61573)))

(declare-fun b!619896 () Bool)

(declare-fun b_free!18037 () Bool)

(declare-fun b_next!18053 () Bool)

(assert (=> b!619896 (= b_free!18037 (not b_next!18053))))

(declare-fun tp!192309 () Bool)

(declare-fun b_and!61575 () Bool)

(assert (=> b!619896 (= tp!192309 b_and!61575)))

(declare-fun b_free!18039 () Bool)

(declare-fun b_next!18055 () Bool)

(assert (=> b!619896 (= b_free!18039 (not b_next!18055))))

(declare-fun tp!192314 () Bool)

(declare-fun b_and!61577 () Bool)

(assert (=> b!619896 (= tp!192314 b_and!61577)))

(declare-fun b!619889 () Bool)

(declare-fun res!269911 () Bool)

(declare-fun e!376209 () Bool)

(assert (=> b!619889 (=> (not res!269911) (not e!376209))))

(declare-datatypes ((LexerInterface!1173 0))(
  ( (LexerInterfaceExt!1170 (__x!4518 Int)) (Lexer!1171) )
))
(declare-fun thiss!25571 () LexerInterface!1173)

(declare-datatypes ((List!6339 0))(
  ( (Nil!6329) (Cons!6329 (h!11730 (_ BitVec 16)) (t!81630 List!6339)) )
))
(declare-datatypes ((TokenValue!1309 0))(
  ( (FloatLiteralValue!2618 (text!9608 List!6339)) (TokenValueExt!1308 (__x!4519 Int)) (Broken!6545 (value!41460 List!6339)) (Object!1318) (End!1309) (Def!1309) (Underscore!1309) (Match!1309) (Else!1309) (Error!1309) (Case!1309) (If!1309) (Extends!1309) (Abstract!1309) (Class!1309) (Val!1309) (DelimiterValue!2618 (del!1369 List!6339)) (KeywordValue!1315 (value!41461 List!6339)) (CommentValue!2618 (value!41462 List!6339)) (WhitespaceValue!2618 (value!41463 List!6339)) (IndentationValue!1309 (value!41464 List!6339)) (String!8292) (Int32!1309) (Broken!6546 (value!41465 List!6339)) (Boolean!1310) (Unit!11433) (OperatorValue!1312 (op!1369 List!6339)) (IdentifierValue!2618 (value!41466 List!6339)) (IdentifierValue!2619 (value!41467 List!6339)) (WhitespaceValue!2619 (value!41468 List!6339)) (True!2618) (False!2618) (Broken!6547 (value!41469 List!6339)) (Broken!6548 (value!41470 List!6339)) (True!2619) (RightBrace!1309) (RightBracket!1309) (Colon!1309) (Null!1309) (Comma!1309) (LeftBracket!1309) (False!2619) (LeftBrace!1309) (ImaginaryLiteralValue!1309 (text!9609 List!6339)) (StringLiteralValue!3927 (value!41471 List!6339)) (EOFValue!1309 (value!41472 List!6339)) (IdentValue!1309 (value!41473 List!6339)) (DelimiterValue!2619 (value!41474 List!6339)) (DedentValue!1309 (value!41475 List!6339)) (NewLineValue!1309 (value!41476 List!6339)) (IntegerValue!3927 (value!41477 (_ BitVec 32)) (text!9610 List!6339)) (IntegerValue!3928 (value!41478 Int) (text!9611 List!6339)) (Times!1309) (Or!1309) (Equal!1309) (Minus!1309) (Broken!6549 (value!41479 List!6339)) (And!1309) (Div!1309) (LessEqual!1309) (Mod!1309) (Concat!2928) (Not!1309) (Plus!1309) (SpaceValue!1309 (value!41480 List!6339)) (IntegerValue!3929 (value!41481 Int) (text!9612 List!6339)) (StringLiteralValue!3928 (text!9613 List!6339)) (FloatLiteralValue!2619 (text!9614 List!6339)) (BytesLiteralValue!1309 (value!41482 List!6339)) (CommentValue!2619 (value!41483 List!6339)) (StringLiteralValue!3929 (value!41484 List!6339)) (ErrorTokenValue!1309 (msg!1370 List!6339)) )
))
(declare-datatypes ((C!4164 0))(
  ( (C!4165 (val!2308 Int)) )
))
(declare-datatypes ((List!6340 0))(
  ( (Nil!6330) (Cons!6330 (h!11731 C!4164) (t!81631 List!6340)) )
))
(declare-datatypes ((IArray!4023 0))(
  ( (IArray!4024 (innerList!2069 List!6340)) )
))
(declare-datatypes ((Conc!2011 0))(
  ( (Node!2011 (left!5019 Conc!2011) (right!5349 Conc!2011) (csize!4252 Int) (cheight!2222 Int)) (Leaf!3162 (xs!4648 IArray!4023) (csize!4253 Int)) (Empty!2011) )
))
(declare-datatypes ((BalanceConc!4030 0))(
  ( (BalanceConc!4031 (c!114031 Conc!2011)) )
))
(declare-datatypes ((Regex!1619 0))(
  ( (ElementMatch!1619 (c!114032 C!4164)) (Concat!2929 (regOne!3750 Regex!1619) (regTwo!3750 Regex!1619)) (EmptyExpr!1619) (Star!1619 (reg!1948 Regex!1619)) (EmptyLang!1619) (Union!1619 (regOne!3751 Regex!1619) (regTwo!3751 Regex!1619)) )
))
(declare-datatypes ((String!8293 0))(
  ( (String!8294 (value!41485 String)) )
))
(declare-datatypes ((TokenValueInjection!2386 0))(
  ( (TokenValueInjection!2387 (toValue!2202 Int) (toChars!2061 Int)) )
))
(declare-datatypes ((Rule!2370 0))(
  ( (Rule!2371 (regex!1285 Regex!1619) (tag!1547 String!8293) (isSeparator!1285 Bool) (transformation!1285 TokenValueInjection!2386)) )
))
(declare-datatypes ((List!6341 0))(
  ( (Nil!6331) (Cons!6331 (h!11732 Rule!2370) (t!81632 List!6341)) )
))
(declare-fun rules!3735 () List!6341)

(declare-fun rulesInvariant!1134 (LexerInterface!1173 List!6341) Bool)

(assert (=> b!619889 (= res!269911 (rulesInvariant!1134 thiss!25571 rules!3735))))

(declare-fun b!619890 () Bool)

(declare-fun e!376207 () Bool)

(declare-fun e!376206 () Bool)

(declare-fun tp!192316 () Bool)

(assert (=> b!619890 (= e!376207 (and e!376206 tp!192316))))

(declare-fun tp!192311 () Bool)

(declare-fun e!376205 () Bool)

(declare-fun b!619891 () Bool)

(declare-fun inv!8001 (String!8293) Bool)

(declare-fun inv!8004 (TokenValueInjection!2386) Bool)

(assert (=> b!619891 (= e!376206 (and tp!192311 (inv!8001 (tag!1547 (h!11732 rules!3735))) (inv!8004 (transformation!1285 (h!11732 rules!3735))) e!376205))))

(declare-fun b!619892 () Bool)

(declare-fun e!376210 () Bool)

(declare-fun tp_is_empty!3597 () Bool)

(declare-fun tp!192310 () Bool)

(assert (=> b!619892 (= e!376210 (and tp_is_empty!3597 tp!192310))))

(declare-fun b!619893 () Bool)

(declare-fun tp!192315 () Bool)

(declare-datatypes ((Token!2294 0))(
  ( (Token!2295 (value!41486 TokenValue!1309) (rule!2077 Rule!2370) (size!4922 Int) (originalCharacters!1318 List!6340)) )
))
(declare-datatypes ((List!6342 0))(
  ( (Nil!6332) (Cons!6332 (h!11733 Token!2294) (t!81633 List!6342)) )
))
(declare-fun producedTokens!8 () List!6342)

(declare-fun e!376204 () Bool)

(declare-fun e!376212 () Bool)

(declare-fun inv!21 (TokenValue!1309) Bool)

(assert (=> b!619893 (= e!376212 (and (inv!21 (value!41486 (h!11733 producedTokens!8))) e!376204 tp!192315))))

(declare-fun b!619894 () Bool)

(declare-fun input!3206 () List!6340)

(declare-fun e!376214 () Bool)

(declare-datatypes ((tuple2!7116 0))(
  ( (tuple2!7117 (_1!3822 Token!2294) (_2!3822 List!6340)) )
))
(declare-datatypes ((Option!1623 0))(
  ( (None!1622) (Some!1622 (v!16549 tuple2!7116)) )
))
(declare-fun isDefined!1418 (Option!1623) Bool)

(declare-fun maxPrefix!855 (LexerInterface!1173 List!6341 List!6340) Option!1623)

(assert (=> b!619894 (= e!376214 (not (isDefined!1418 (maxPrefix!855 thiss!25571 rules!3735 input!3206))))))

(declare-fun tp!192312 () Bool)

(declare-fun b!619895 () Bool)

(declare-fun e!376208 () Bool)

(declare-fun inv!8005 (Token!2294) Bool)

(assert (=> b!619895 (= e!376208 (and (inv!8005 (h!11733 producedTokens!8)) e!376212 tp!192312))))

(declare-fun b!619897 () Bool)

(declare-fun e!376213 () Bool)

(declare-fun tp!192317 () Bool)

(assert (=> b!619897 (= e!376204 (and tp!192317 (inv!8001 (tag!1547 (rule!2077 (h!11733 producedTokens!8)))) (inv!8004 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) e!376213))))

(declare-fun b!619898 () Bool)

(declare-fun e!376203 () Bool)

(declare-fun tp!192307 () Bool)

(assert (=> b!619898 (= e!376203 (and tp_is_empty!3597 tp!192307))))

(declare-fun b!619899 () Bool)

(declare-fun res!269907 () Bool)

(assert (=> b!619899 (=> (not res!269907) (not e!376209))))

(declare-fun size!4923 (List!6342) Int)

(assert (=> b!619899 (= res!269907 (> (size!4923 producedTokens!8) 0))))

(declare-fun b!619900 () Bool)

(declare-fun res!269912 () Bool)

(assert (=> b!619900 (=> (not res!269912) (not e!376209))))

(declare-fun isEmpty!4538 (List!6341) Bool)

(assert (=> b!619900 (= res!269912 (not (isEmpty!4538 rules!3735)))))

(assert (=> b!619901 (= e!376205 (and tp!192308 tp!192313))))

(declare-fun b!619902 () Bool)

(assert (=> b!619902 (= e!376209 e!376214)))

(declare-fun res!269910 () Bool)

(assert (=> b!619902 (=> (not res!269910) (not e!376214))))

(declare-datatypes ((IArray!4025 0))(
  ( (IArray!4026 (innerList!2070 List!6342)) )
))
(declare-datatypes ((Conc!2012 0))(
  ( (Node!2012 (left!5020 Conc!2012) (right!5350 Conc!2012) (csize!4254 Int) (cheight!2223 Int)) (Leaf!3163 (xs!4649 IArray!4025) (csize!4255 Int)) (Empty!2012) )
))
(declare-datatypes ((BalanceConc!4032 0))(
  ( (BalanceConc!4033 (c!114033 Conc!2012)) )
))
(declare-datatypes ((tuple2!7118 0))(
  ( (tuple2!7119 (_1!3823 BalanceConc!4032) (_2!3823 BalanceConc!4030)) )
))
(declare-fun lt!265188 () tuple2!7118)

(declare-fun list!2640 (BalanceConc!4032) List!6342)

(assert (=> b!619902 (= res!269910 (= (list!2640 (_1!3823 lt!265188)) producedTokens!8))))

(declare-fun lex!568 (LexerInterface!1173 List!6341 BalanceConc!4030) tuple2!7118)

(declare-fun seqFromList!1440 (List!6340) BalanceConc!4030)

(assert (=> b!619902 (= lt!265188 (lex!568 thiss!25571 rules!3735 (seqFromList!1440 input!3206)))))

(declare-fun b!619903 () Bool)

(declare-fun res!269908 () Bool)

(assert (=> b!619903 (=> (not res!269908) (not e!376214))))

(declare-fun suffix!1461 () List!6340)

(declare-fun list!2641 (BalanceConc!4030) List!6340)

(assert (=> b!619903 (= res!269908 (= (list!2641 (_2!3823 lt!265188)) suffix!1461))))

(assert (=> b!619896 (= e!376213 (and tp!192309 tp!192314))))

(declare-fun res!269909 () Bool)

(assert (=> start!59548 (=> (not res!269909) (not e!376209))))

(get-info :version)

(assert (=> start!59548 (= res!269909 ((_ is Lexer!1171) thiss!25571))))

(assert (=> start!59548 e!376209))

(assert (=> start!59548 e!376208))

(assert (=> start!59548 true))

(assert (=> start!59548 e!376203))

(assert (=> start!59548 e!376210))

(assert (=> start!59548 e!376207))

(assert (= (and start!59548 res!269909) b!619889))

(assert (= (and b!619889 res!269911) b!619900))

(assert (= (and b!619900 res!269912) b!619899))

(assert (= (and b!619899 res!269907) b!619902))

(assert (= (and b!619902 res!269910) b!619903))

(assert (= (and b!619903 res!269908) b!619894))

(assert (= b!619897 b!619896))

(assert (= b!619893 b!619897))

(assert (= b!619895 b!619893))

(assert (= (and start!59548 ((_ is Cons!6332) producedTokens!8)) b!619895))

(assert (= (and start!59548 ((_ is Cons!6330) suffix!1461)) b!619898))

(assert (= (and start!59548 ((_ is Cons!6330) input!3206)) b!619892))

(assert (= b!619891 b!619901))

(assert (= b!619890 b!619891))

(assert (= (and start!59548 ((_ is Cons!6331) rules!3735)) b!619890))

(declare-fun m!887717 () Bool)

(assert (=> b!619899 m!887717))

(declare-fun m!887719 () Bool)

(assert (=> b!619894 m!887719))

(assert (=> b!619894 m!887719))

(declare-fun m!887721 () Bool)

(assert (=> b!619894 m!887721))

(declare-fun m!887723 () Bool)

(assert (=> b!619891 m!887723))

(declare-fun m!887725 () Bool)

(assert (=> b!619891 m!887725))

(declare-fun m!887727 () Bool)

(assert (=> b!619903 m!887727))

(declare-fun m!887729 () Bool)

(assert (=> b!619900 m!887729))

(declare-fun m!887731 () Bool)

(assert (=> b!619889 m!887731))

(declare-fun m!887733 () Bool)

(assert (=> b!619897 m!887733))

(declare-fun m!887735 () Bool)

(assert (=> b!619897 m!887735))

(declare-fun m!887737 () Bool)

(assert (=> b!619902 m!887737))

(declare-fun m!887739 () Bool)

(assert (=> b!619902 m!887739))

(assert (=> b!619902 m!887739))

(declare-fun m!887741 () Bool)

(assert (=> b!619902 m!887741))

(declare-fun m!887743 () Bool)

(assert (=> b!619893 m!887743))

(declare-fun m!887745 () Bool)

(assert (=> b!619895 m!887745))

(check-sat (not b!619897) (not b!619889) (not b!619898) b_and!61571 b_and!61577 (not b!619893) tp_is_empty!3597 b_and!61575 (not b_next!18051) (not b_next!18053) (not b!619902) (not b!619903) b_and!61573 (not b_next!18055) (not b!619900) (not b!619890) (not b!619899) (not b!619892) (not b_next!18049) (not b!619891) (not b!619895) (not b!619894))
(check-sat b_and!61571 b_and!61577 (not b_next!18049) b_and!61575 (not b_next!18051) (not b_next!18053) b_and!61573 (not b_next!18055))
(get-model)

(declare-fun d!217129 () Bool)

(assert (=> d!217129 (= (inv!8001 (tag!1547 (h!11732 rules!3735))) (= (mod (str.len (value!41485 (tag!1547 (h!11732 rules!3735)))) 2) 0))))

(assert (=> b!619891 d!217129))

(declare-fun d!217131 () Bool)

(declare-fun res!269915 () Bool)

(declare-fun e!376219 () Bool)

(assert (=> d!217131 (=> (not res!269915) (not e!376219))))

(declare-fun semiInverseModEq!517 (Int Int) Bool)

(assert (=> d!217131 (= res!269915 (semiInverseModEq!517 (toChars!2061 (transformation!1285 (h!11732 rules!3735))) (toValue!2202 (transformation!1285 (h!11732 rules!3735)))))))

(assert (=> d!217131 (= (inv!8004 (transformation!1285 (h!11732 rules!3735))) e!376219)))

(declare-fun b!619906 () Bool)

(declare-fun equivClasses!500 (Int Int) Bool)

(assert (=> b!619906 (= e!376219 (equivClasses!500 (toChars!2061 (transformation!1285 (h!11732 rules!3735))) (toValue!2202 (transformation!1285 (h!11732 rules!3735)))))))

(assert (= (and d!217131 res!269915) b!619906))

(declare-fun m!887747 () Bool)

(assert (=> d!217131 m!887747))

(declare-fun m!887749 () Bool)

(assert (=> b!619906 m!887749))

(assert (=> b!619891 d!217131))

(declare-fun d!217135 () Bool)

(declare-fun list!2644 (Conc!2012) List!6342)

(assert (=> d!217135 (= (list!2640 (_1!3823 lt!265188)) (list!2644 (c!114033 (_1!3823 lt!265188))))))

(declare-fun bs!71941 () Bool)

(assert (= bs!71941 d!217135))

(declare-fun m!887751 () Bool)

(assert (=> bs!71941 m!887751))

(assert (=> b!619902 d!217135))

(declare-fun b!620048 () Bool)

(declare-fun e!376308 () Bool)

(declare-fun lt!265212 () tuple2!7118)

(assert (=> b!620048 (= e!376308 (= (_2!3823 lt!265212) (seqFromList!1440 input!3206)))))

(declare-fun d!217139 () Bool)

(declare-fun e!376310 () Bool)

(assert (=> d!217139 e!376310))

(declare-fun res!269970 () Bool)

(assert (=> d!217139 (=> (not res!269970) (not e!376310))))

(assert (=> d!217139 (= res!269970 e!376308)))

(declare-fun c!114051 () Bool)

(declare-fun size!4927 (BalanceConc!4032) Int)

(assert (=> d!217139 (= c!114051 (> (size!4927 (_1!3823 lt!265212)) 0))))

(declare-fun lexTailRecV2!271 (LexerInterface!1173 List!6341 BalanceConc!4030 BalanceConc!4030 BalanceConc!4030 BalanceConc!4032) tuple2!7118)

(assert (=> d!217139 (= lt!265212 (lexTailRecV2!271 thiss!25571 rules!3735 (seqFromList!1440 input!3206) (BalanceConc!4031 Empty!2011) (seqFromList!1440 input!3206) (BalanceConc!4033 Empty!2012)))))

(assert (=> d!217139 (= (lex!568 thiss!25571 rules!3735 (seqFromList!1440 input!3206)) lt!265212)))

(declare-fun b!620049 () Bool)

(declare-fun e!376309 () Bool)

(assert (=> b!620049 (= e!376308 e!376309)))

(declare-fun res!269968 () Bool)

(declare-fun size!4928 (BalanceConc!4030) Int)

(assert (=> b!620049 (= res!269968 (< (size!4928 (_2!3823 lt!265212)) (size!4928 (seqFromList!1440 input!3206))))))

(assert (=> b!620049 (=> (not res!269968) (not e!376309))))

(declare-fun b!620050 () Bool)

(declare-datatypes ((tuple2!7122 0))(
  ( (tuple2!7123 (_1!3825 List!6342) (_2!3825 List!6340)) )
))
(declare-fun lexList!309 (LexerInterface!1173 List!6341 List!6340) tuple2!7122)

(assert (=> b!620050 (= e!376310 (= (list!2641 (_2!3823 lt!265212)) (_2!3825 (lexList!309 thiss!25571 rules!3735 (list!2641 (seqFromList!1440 input!3206))))))))

(declare-fun b!620051 () Bool)

(declare-fun isEmpty!4542 (BalanceConc!4032) Bool)

(assert (=> b!620051 (= e!376309 (not (isEmpty!4542 (_1!3823 lt!265212))))))

(declare-fun b!620052 () Bool)

(declare-fun res!269969 () Bool)

(assert (=> b!620052 (=> (not res!269969) (not e!376310))))

(assert (=> b!620052 (= res!269969 (= (list!2640 (_1!3823 lt!265212)) (_1!3825 (lexList!309 thiss!25571 rules!3735 (list!2641 (seqFromList!1440 input!3206))))))))

(assert (= (and d!217139 c!114051) b!620049))

(assert (= (and d!217139 (not c!114051)) b!620048))

(assert (= (and b!620049 res!269968) b!620051))

(assert (= (and d!217139 res!269970) b!620052))

(assert (= (and b!620052 res!269969) b!620050))

(declare-fun m!887857 () Bool)

(assert (=> b!620052 m!887857))

(assert (=> b!620052 m!887739))

(declare-fun m!887859 () Bool)

(assert (=> b!620052 m!887859))

(assert (=> b!620052 m!887859))

(declare-fun m!887861 () Bool)

(assert (=> b!620052 m!887861))

(declare-fun m!887863 () Bool)

(assert (=> b!620051 m!887863))

(declare-fun m!887865 () Bool)

(assert (=> d!217139 m!887865))

(assert (=> d!217139 m!887739))

(assert (=> d!217139 m!887739))

(declare-fun m!887867 () Bool)

(assert (=> d!217139 m!887867))

(declare-fun m!887869 () Bool)

(assert (=> b!620050 m!887869))

(assert (=> b!620050 m!887739))

(assert (=> b!620050 m!887859))

(assert (=> b!620050 m!887859))

(assert (=> b!620050 m!887861))

(declare-fun m!887871 () Bool)

(assert (=> b!620049 m!887871))

(assert (=> b!620049 m!887739))

(declare-fun m!887873 () Bool)

(assert (=> b!620049 m!887873))

(assert (=> b!619902 d!217139))

(declare-fun d!217167 () Bool)

(declare-fun fromListB!626 (List!6340) BalanceConc!4030)

(assert (=> d!217167 (= (seqFromList!1440 input!3206) (fromListB!626 input!3206))))

(declare-fun bs!71946 () Bool)

(assert (= bs!71946 d!217167))

(declare-fun m!887875 () Bool)

(assert (=> bs!71946 m!887875))

(assert (=> b!619902 d!217167))

(declare-fun d!217169 () Bool)

(declare-fun res!269975 () Bool)

(declare-fun e!376313 () Bool)

(assert (=> d!217169 (=> (not res!269975) (not e!376313))))

(declare-fun isEmpty!4543 (List!6340) Bool)

(assert (=> d!217169 (= res!269975 (not (isEmpty!4543 (originalCharacters!1318 (h!11733 producedTokens!8)))))))

(assert (=> d!217169 (= (inv!8005 (h!11733 producedTokens!8)) e!376313)))

(declare-fun b!620057 () Bool)

(declare-fun res!269976 () Bool)

(assert (=> b!620057 (=> (not res!269976) (not e!376313))))

(declare-fun dynLambda!3597 (Int TokenValue!1309) BalanceConc!4030)

(assert (=> b!620057 (= res!269976 (= (originalCharacters!1318 (h!11733 producedTokens!8)) (list!2641 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8))))))))

(declare-fun b!620058 () Bool)

(declare-fun size!4929 (List!6340) Int)

(assert (=> b!620058 (= e!376313 (= (size!4922 (h!11733 producedTokens!8)) (size!4929 (originalCharacters!1318 (h!11733 producedTokens!8)))))))

(assert (= (and d!217169 res!269975) b!620057))

(assert (= (and b!620057 res!269976) b!620058))

(declare-fun b_lambda!24549 () Bool)

(assert (=> (not b_lambda!24549) (not b!620057)))

(declare-fun t!81643 () Bool)

(declare-fun tb!53823 () Bool)

(assert (=> (and b!619901 (= (toChars!2061 (transformation!1285 (h!11732 rules!3735))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8))))) t!81643) tb!53823))

(declare-fun b!620063 () Bool)

(declare-fun e!376316 () Bool)

(declare-fun tp!192375 () Bool)

(declare-fun inv!8008 (Conc!2011) Bool)

(assert (=> b!620063 (= e!376316 (and (inv!8008 (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8))))) tp!192375))))

(declare-fun result!60744 () Bool)

(declare-fun inv!8009 (BalanceConc!4030) Bool)

(assert (=> tb!53823 (= result!60744 (and (inv!8009 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8)))) e!376316))))

(assert (= tb!53823 b!620063))

(declare-fun m!887877 () Bool)

(assert (=> b!620063 m!887877))

(declare-fun m!887879 () Bool)

(assert (=> tb!53823 m!887879))

(assert (=> b!620057 t!81643))

(declare-fun b_and!61591 () Bool)

(assert (= b_and!61573 (and (=> t!81643 result!60744) b_and!61591)))

(declare-fun t!81645 () Bool)

(declare-fun tb!53825 () Bool)

(assert (=> (and b!619896 (= (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8))))) t!81645) tb!53825))

(declare-fun result!60748 () Bool)

(assert (= result!60748 result!60744))

(assert (=> b!620057 t!81645))

(declare-fun b_and!61593 () Bool)

(assert (= b_and!61577 (and (=> t!81645 result!60748) b_and!61593)))

(declare-fun m!887881 () Bool)

(assert (=> d!217169 m!887881))

(declare-fun m!887883 () Bool)

(assert (=> b!620057 m!887883))

(assert (=> b!620057 m!887883))

(declare-fun m!887885 () Bool)

(assert (=> b!620057 m!887885))

(declare-fun m!887887 () Bool)

(assert (=> b!620058 m!887887))

(assert (=> b!619895 d!217169))

(declare-fun d!217171 () Bool)

(declare-fun res!269979 () Bool)

(declare-fun e!376319 () Bool)

(assert (=> d!217171 (=> (not res!269979) (not e!376319))))

(declare-fun rulesValid!479 (LexerInterface!1173 List!6341) Bool)

(assert (=> d!217171 (= res!269979 (rulesValid!479 thiss!25571 rules!3735))))

(assert (=> d!217171 (= (rulesInvariant!1134 thiss!25571 rules!3735) e!376319)))

(declare-fun b!620066 () Bool)

(declare-datatypes ((List!6344 0))(
  ( (Nil!6334) (Cons!6334 (h!11735 String!8293) (t!81651 List!6344)) )
))
(declare-fun noDuplicateTag!479 (LexerInterface!1173 List!6341 List!6344) Bool)

(assert (=> b!620066 (= e!376319 (noDuplicateTag!479 thiss!25571 rules!3735 Nil!6334))))

(assert (= (and d!217171 res!269979) b!620066))

(declare-fun m!887889 () Bool)

(assert (=> d!217171 m!887889))

(declare-fun m!887891 () Bool)

(assert (=> b!620066 m!887891))

(assert (=> b!619889 d!217171))

(declare-fun d!217173 () Bool)

(assert (=> d!217173 (= (isEmpty!4538 rules!3735) ((_ is Nil!6331) rules!3735))))

(assert (=> b!619900 d!217173))

(declare-fun d!217175 () Bool)

(declare-fun lt!265215 () Int)

(assert (=> d!217175 (>= lt!265215 0)))

(declare-fun e!376322 () Int)

(assert (=> d!217175 (= lt!265215 e!376322)))

(declare-fun c!114054 () Bool)

(assert (=> d!217175 (= c!114054 ((_ is Nil!6332) producedTokens!8))))

(assert (=> d!217175 (= (size!4923 producedTokens!8) lt!265215)))

(declare-fun b!620071 () Bool)

(assert (=> b!620071 (= e!376322 0)))

(declare-fun b!620072 () Bool)

(assert (=> b!620072 (= e!376322 (+ 1 (size!4923 (t!81633 producedTokens!8))))))

(assert (= (and d!217175 c!114054) b!620071))

(assert (= (and d!217175 (not c!114054)) b!620072))

(declare-fun m!887893 () Bool)

(assert (=> b!620072 m!887893))

(assert (=> b!619899 d!217175))

(declare-fun d!217177 () Bool)

(declare-fun isEmpty!4544 (Option!1623) Bool)

(assert (=> d!217177 (= (isDefined!1418 (maxPrefix!855 thiss!25571 rules!3735 input!3206)) (not (isEmpty!4544 (maxPrefix!855 thiss!25571 rules!3735 input!3206))))))

(declare-fun bs!71947 () Bool)

(assert (= bs!71947 d!217177))

(assert (=> bs!71947 m!887719))

(declare-fun m!887895 () Bool)

(assert (=> bs!71947 m!887895))

(assert (=> b!619894 d!217177))

(declare-fun b!620092 () Bool)

(declare-fun e!376329 () Option!1623)

(declare-fun lt!265226 () Option!1623)

(declare-fun lt!265230 () Option!1623)

(assert (=> b!620092 (= e!376329 (ite (and ((_ is None!1622) lt!265226) ((_ is None!1622) lt!265230)) None!1622 (ite ((_ is None!1622) lt!265230) lt!265226 (ite ((_ is None!1622) lt!265226) lt!265230 (ite (>= (size!4922 (_1!3822 (v!16549 lt!265226))) (size!4922 (_1!3822 (v!16549 lt!265230)))) lt!265226 lt!265230)))))))

(declare-fun call!41105 () Option!1623)

(assert (=> b!620092 (= lt!265226 call!41105)))

(assert (=> b!620092 (= lt!265230 (maxPrefix!855 thiss!25571 (t!81632 rules!3735) input!3206))))

(declare-fun b!620093 () Bool)

(declare-fun e!376330 () Bool)

(declare-fun e!376331 () Bool)

(assert (=> b!620093 (= e!376330 e!376331)))

(declare-fun res!270000 () Bool)

(assert (=> b!620093 (=> (not res!270000) (not e!376331))))

(declare-fun lt!265229 () Option!1623)

(assert (=> b!620093 (= res!270000 (isDefined!1418 lt!265229))))

(declare-fun b!620094 () Bool)

(declare-fun res!269997 () Bool)

(assert (=> b!620094 (=> (not res!269997) (not e!376331))))

(declare-fun ++!1749 (List!6340 List!6340) List!6340)

(declare-fun charsOf!886 (Token!2294) BalanceConc!4030)

(declare-fun get!2414 (Option!1623) tuple2!7116)

(assert (=> b!620094 (= res!269997 (= (++!1749 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229)))) (_2!3822 (get!2414 lt!265229))) input!3206))))

(declare-fun b!620095 () Bool)

(declare-fun res!269999 () Bool)

(assert (=> b!620095 (=> (not res!269999) (not e!376331))))

(assert (=> b!620095 (= res!269999 (= (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229)))) (originalCharacters!1318 (_1!3822 (get!2414 lt!265229)))))))

(declare-fun b!620096 () Bool)

(declare-fun res!269996 () Bool)

(assert (=> b!620096 (=> (not res!269996) (not e!376331))))

(declare-fun matchR!693 (Regex!1619 List!6340) Bool)

(assert (=> b!620096 (= res!269996 (matchR!693 (regex!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))) (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229))))))))

(declare-fun bm!41100 () Bool)

(declare-fun maxPrefixOneRule!505 (LexerInterface!1173 Rule!2370 List!6340) Option!1623)

(assert (=> bm!41100 (= call!41105 (maxPrefixOneRule!505 thiss!25571 (h!11732 rules!3735) input!3206))))

(declare-fun b!620097 () Bool)

(declare-fun res!269994 () Bool)

(assert (=> b!620097 (=> (not res!269994) (not e!376331))))

(assert (=> b!620097 (= res!269994 (< (size!4929 (_2!3822 (get!2414 lt!265229))) (size!4929 input!3206)))))

(declare-fun b!620098 () Bool)

(declare-fun res!269995 () Bool)

(assert (=> b!620098 (=> (not res!269995) (not e!376331))))

(declare-fun apply!1507 (TokenValueInjection!2386 BalanceConc!4030) TokenValue!1309)

(assert (=> b!620098 (= res!269995 (= (value!41486 (_1!3822 (get!2414 lt!265229))) (apply!1507 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))) (seqFromList!1440 (originalCharacters!1318 (_1!3822 (get!2414 lt!265229)))))))))

(declare-fun b!620099 () Bool)

(assert (=> b!620099 (= e!376329 call!41105)))

(declare-fun b!620091 () Bool)

(declare-fun contains!1494 (List!6341 Rule!2370) Bool)

(assert (=> b!620091 (= e!376331 (contains!1494 rules!3735 (rule!2077 (_1!3822 (get!2414 lt!265229)))))))

(declare-fun d!217179 () Bool)

(assert (=> d!217179 e!376330))

(declare-fun res!269998 () Bool)

(assert (=> d!217179 (=> res!269998 e!376330)))

(assert (=> d!217179 (= res!269998 (isEmpty!4544 lt!265229))))

(assert (=> d!217179 (= lt!265229 e!376329)))

(declare-fun c!114057 () Bool)

(assert (=> d!217179 (= c!114057 (and ((_ is Cons!6331) rules!3735) ((_ is Nil!6331) (t!81632 rules!3735))))))

(declare-datatypes ((Unit!11436 0))(
  ( (Unit!11437) )
))
(declare-fun lt!265227 () Unit!11436)

(declare-fun lt!265228 () Unit!11436)

(assert (=> d!217179 (= lt!265227 lt!265228)))

(declare-fun isPrefix!905 (List!6340 List!6340) Bool)

(assert (=> d!217179 (isPrefix!905 input!3206 input!3206)))

(declare-fun lemmaIsPrefixRefl!618 (List!6340 List!6340) Unit!11436)

(assert (=> d!217179 (= lt!265228 (lemmaIsPrefixRefl!618 input!3206 input!3206))))

(declare-fun rulesValidInductive!494 (LexerInterface!1173 List!6341) Bool)

(assert (=> d!217179 (rulesValidInductive!494 thiss!25571 rules!3735)))

(assert (=> d!217179 (= (maxPrefix!855 thiss!25571 rules!3735 input!3206) lt!265229)))

(assert (= (and d!217179 c!114057) b!620099))

(assert (= (and d!217179 (not c!114057)) b!620092))

(assert (= (or b!620099 b!620092) bm!41100))

(assert (= (and d!217179 (not res!269998)) b!620093))

(assert (= (and b!620093 res!270000) b!620095))

(assert (= (and b!620095 res!269999) b!620097))

(assert (= (and b!620097 res!269994) b!620094))

(assert (= (and b!620094 res!269997) b!620098))

(assert (= (and b!620098 res!269995) b!620096))

(assert (= (and b!620096 res!269996) b!620091))

(declare-fun m!887897 () Bool)

(assert (=> b!620098 m!887897))

(declare-fun m!887899 () Bool)

(assert (=> b!620098 m!887899))

(assert (=> b!620098 m!887899))

(declare-fun m!887901 () Bool)

(assert (=> b!620098 m!887901))

(declare-fun m!887903 () Bool)

(assert (=> b!620093 m!887903))

(assert (=> b!620097 m!887897))

(declare-fun m!887905 () Bool)

(assert (=> b!620097 m!887905))

(declare-fun m!887907 () Bool)

(assert (=> b!620097 m!887907))

(declare-fun m!887909 () Bool)

(assert (=> b!620092 m!887909))

(declare-fun m!887911 () Bool)

(assert (=> d!217179 m!887911))

(declare-fun m!887913 () Bool)

(assert (=> d!217179 m!887913))

(declare-fun m!887915 () Bool)

(assert (=> d!217179 m!887915))

(declare-fun m!887917 () Bool)

(assert (=> d!217179 m!887917))

(assert (=> b!620096 m!887897))

(declare-fun m!887919 () Bool)

(assert (=> b!620096 m!887919))

(assert (=> b!620096 m!887919))

(declare-fun m!887921 () Bool)

(assert (=> b!620096 m!887921))

(assert (=> b!620096 m!887921))

(declare-fun m!887923 () Bool)

(assert (=> b!620096 m!887923))

(declare-fun m!887925 () Bool)

(assert (=> bm!41100 m!887925))

(assert (=> b!620094 m!887897))

(assert (=> b!620094 m!887919))

(assert (=> b!620094 m!887919))

(assert (=> b!620094 m!887921))

(assert (=> b!620094 m!887921))

(declare-fun m!887927 () Bool)

(assert (=> b!620094 m!887927))

(assert (=> b!620095 m!887897))

(assert (=> b!620095 m!887919))

(assert (=> b!620095 m!887919))

(assert (=> b!620095 m!887921))

(assert (=> b!620091 m!887897))

(declare-fun m!887929 () Bool)

(assert (=> b!620091 m!887929))

(assert (=> b!619894 d!217179))

(declare-fun b!620110 () Bool)

(declare-fun e!376339 () Bool)

(declare-fun inv!17 (TokenValue!1309) Bool)

(assert (=> b!620110 (= e!376339 (inv!17 (value!41486 (h!11733 producedTokens!8))))))

(declare-fun b!620111 () Bool)

(declare-fun res!270003 () Bool)

(declare-fun e!376340 () Bool)

(assert (=> b!620111 (=> res!270003 e!376340)))

(assert (=> b!620111 (= res!270003 (not ((_ is IntegerValue!3929) (value!41486 (h!11733 producedTokens!8)))))))

(assert (=> b!620111 (= e!376339 e!376340)))

(declare-fun b!620112 () Bool)

(declare-fun e!376338 () Bool)

(assert (=> b!620112 (= e!376338 e!376339)))

(declare-fun c!114062 () Bool)

(assert (=> b!620112 (= c!114062 ((_ is IntegerValue!3928) (value!41486 (h!11733 producedTokens!8))))))

(declare-fun d!217181 () Bool)

(declare-fun c!114063 () Bool)

(assert (=> d!217181 (= c!114063 ((_ is IntegerValue!3927) (value!41486 (h!11733 producedTokens!8))))))

(assert (=> d!217181 (= (inv!21 (value!41486 (h!11733 producedTokens!8))) e!376338)))

(declare-fun b!620113 () Bool)

(declare-fun inv!15 (TokenValue!1309) Bool)

(assert (=> b!620113 (= e!376340 (inv!15 (value!41486 (h!11733 producedTokens!8))))))

(declare-fun b!620114 () Bool)

(declare-fun inv!16 (TokenValue!1309) Bool)

(assert (=> b!620114 (= e!376338 (inv!16 (value!41486 (h!11733 producedTokens!8))))))

(assert (= (and d!217181 c!114063) b!620114))

(assert (= (and d!217181 (not c!114063)) b!620112))

(assert (= (and b!620112 c!114062) b!620110))

(assert (= (and b!620112 (not c!114062)) b!620111))

(assert (= (and b!620111 (not res!270003)) b!620113))

(declare-fun m!887931 () Bool)

(assert (=> b!620110 m!887931))

(declare-fun m!887933 () Bool)

(assert (=> b!620113 m!887933))

(declare-fun m!887935 () Bool)

(assert (=> b!620114 m!887935))

(assert (=> b!619893 d!217181))

(declare-fun d!217183 () Bool)

(declare-fun list!2645 (Conc!2011) List!6340)

(assert (=> d!217183 (= (list!2641 (_2!3823 lt!265188)) (list!2645 (c!114031 (_2!3823 lt!265188))))))

(declare-fun bs!71948 () Bool)

(assert (= bs!71948 d!217183))

(declare-fun m!887937 () Bool)

(assert (=> bs!71948 m!887937))

(assert (=> b!619903 d!217183))

(declare-fun d!217185 () Bool)

(assert (=> d!217185 (= (inv!8001 (tag!1547 (rule!2077 (h!11733 producedTokens!8)))) (= (mod (str.len (value!41485 (tag!1547 (rule!2077 (h!11733 producedTokens!8))))) 2) 0))))

(assert (=> b!619897 d!217185))

(declare-fun d!217187 () Bool)

(declare-fun res!270004 () Bool)

(declare-fun e!376341 () Bool)

(assert (=> d!217187 (=> (not res!270004) (not e!376341))))

(assert (=> d!217187 (= res!270004 (semiInverseModEq!517 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (toValue!2202 (transformation!1285 (rule!2077 (h!11733 producedTokens!8))))))))

(assert (=> d!217187 (= (inv!8004 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) e!376341)))

(declare-fun b!620115 () Bool)

(assert (=> b!620115 (= e!376341 (equivClasses!500 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (toValue!2202 (transformation!1285 (rule!2077 (h!11733 producedTokens!8))))))))

(assert (= (and d!217187 res!270004) b!620115))

(declare-fun m!887939 () Bool)

(assert (=> d!217187 m!887939))

(declare-fun m!887941 () Bool)

(assert (=> b!620115 m!887941))

(assert (=> b!619897 d!217187))

(declare-fun b!620129 () Bool)

(declare-fun e!376344 () Bool)

(declare-fun tp!192389 () Bool)

(declare-fun tp!192388 () Bool)

(assert (=> b!620129 (= e!376344 (and tp!192389 tp!192388))))

(declare-fun b!620127 () Bool)

(declare-fun tp!192390 () Bool)

(declare-fun tp!192386 () Bool)

(assert (=> b!620127 (= e!376344 (and tp!192390 tp!192386))))

(assert (=> b!619891 (= tp!192311 e!376344)))

(declare-fun b!620126 () Bool)

(assert (=> b!620126 (= e!376344 tp_is_empty!3597)))

(declare-fun b!620128 () Bool)

(declare-fun tp!192387 () Bool)

(assert (=> b!620128 (= e!376344 tp!192387)))

(assert (= (and b!619891 ((_ is ElementMatch!1619) (regex!1285 (h!11732 rules!3735)))) b!620126))

(assert (= (and b!619891 ((_ is Concat!2929) (regex!1285 (h!11732 rules!3735)))) b!620127))

(assert (= (and b!619891 ((_ is Star!1619) (regex!1285 (h!11732 rules!3735)))) b!620128))

(assert (= (and b!619891 ((_ is Union!1619) (regex!1285 (h!11732 rules!3735)))) b!620129))

(declare-fun b!620143 () Bool)

(declare-fun b_free!18049 () Bool)

(declare-fun b_next!18065 () Bool)

(assert (=> b!620143 (= b_free!18049 (not b_next!18065))))

(declare-fun tp!192403 () Bool)

(declare-fun b_and!61595 () Bool)

(assert (=> b!620143 (= tp!192403 b_and!61595)))

(declare-fun b_free!18051 () Bool)

(declare-fun b_next!18067 () Bool)

(assert (=> b!620143 (= b_free!18051 (not b_next!18067))))

(declare-fun t!81648 () Bool)

(declare-fun tb!53827 () Bool)

(assert (=> (and b!620143 (= (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8))))) t!81648) tb!53827))

(declare-fun result!60754 () Bool)

(assert (= result!60754 result!60744))

(assert (=> b!620057 t!81648))

(declare-fun tp!192405 () Bool)

(declare-fun b_and!61597 () Bool)

(assert (=> b!620143 (= tp!192405 (and (=> t!81648 result!60754) b_and!61597))))

(declare-fun e!376360 () Bool)

(declare-fun e!376359 () Bool)

(declare-fun tp!192401 () Bool)

(declare-fun b!620142 () Bool)

(assert (=> b!620142 (= e!376359 (and tp!192401 (inv!8001 (tag!1547 (rule!2077 (h!11733 (t!81633 producedTokens!8))))) (inv!8004 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))) e!376360))))

(declare-fun e!376362 () Bool)

(assert (=> b!619895 (= tp!192312 e!376362)))

(assert (=> b!620143 (= e!376360 (and tp!192403 tp!192405))))

(declare-fun tp!192404 () Bool)

(declare-fun e!376358 () Bool)

(declare-fun b!620141 () Bool)

(assert (=> b!620141 (= e!376358 (and (inv!21 (value!41486 (h!11733 (t!81633 producedTokens!8)))) e!376359 tp!192404))))

(declare-fun b!620140 () Bool)

(declare-fun tp!192402 () Bool)

(assert (=> b!620140 (= e!376362 (and (inv!8005 (h!11733 (t!81633 producedTokens!8))) e!376358 tp!192402))))

(assert (= b!620142 b!620143))

(assert (= b!620141 b!620142))

(assert (= b!620140 b!620141))

(assert (= (and b!619895 ((_ is Cons!6332) (t!81633 producedTokens!8))) b!620140))

(declare-fun m!887943 () Bool)

(assert (=> b!620142 m!887943))

(declare-fun m!887945 () Bool)

(assert (=> b!620142 m!887945))

(declare-fun m!887947 () Bool)

(assert (=> b!620141 m!887947))

(declare-fun m!887949 () Bool)

(assert (=> b!620140 m!887949))

(declare-fun b!620154 () Bool)

(declare-fun b_free!18053 () Bool)

(declare-fun b_next!18069 () Bool)

(assert (=> b!620154 (= b_free!18053 (not b_next!18069))))

(declare-fun tp!192417 () Bool)

(declare-fun b_and!61599 () Bool)

(assert (=> b!620154 (= tp!192417 b_and!61599)))

(declare-fun b_free!18055 () Bool)

(declare-fun b_next!18071 () Bool)

(assert (=> b!620154 (= b_free!18055 (not b_next!18071))))

(declare-fun tb!53829 () Bool)

(declare-fun t!81650 () Bool)

(assert (=> (and b!620154 (= (toChars!2061 (transformation!1285 (h!11732 (t!81632 rules!3735)))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8))))) t!81650) tb!53829))

(declare-fun result!60758 () Bool)

(assert (= result!60758 result!60744))

(assert (=> b!620057 t!81650))

(declare-fun b_and!61601 () Bool)

(declare-fun tp!192415 () Bool)

(assert (=> b!620154 (= tp!192415 (and (=> t!81650 result!60758) b_and!61601))))

(declare-fun e!376374 () Bool)

(assert (=> b!620154 (= e!376374 (and tp!192417 tp!192415))))

(declare-fun e!376373 () Bool)

(declare-fun tp!192416 () Bool)

(declare-fun b!620153 () Bool)

(assert (=> b!620153 (= e!376373 (and tp!192416 (inv!8001 (tag!1547 (h!11732 (t!81632 rules!3735)))) (inv!8004 (transformation!1285 (h!11732 (t!81632 rules!3735)))) e!376374))))

(declare-fun b!620152 () Bool)

(declare-fun e!376372 () Bool)

(declare-fun tp!192414 () Bool)

(assert (=> b!620152 (= e!376372 (and e!376373 tp!192414))))

(assert (=> b!619890 (= tp!192316 e!376372)))

(assert (= b!620153 b!620154))

(assert (= b!620152 b!620153))

(assert (= (and b!619890 ((_ is Cons!6331) (t!81632 rules!3735))) b!620152))

(declare-fun m!887951 () Bool)

(assert (=> b!620153 m!887951))

(declare-fun m!887953 () Bool)

(assert (=> b!620153 m!887953))

(declare-fun b!620159 () Bool)

(declare-fun e!376377 () Bool)

(declare-fun tp!192420 () Bool)

(assert (=> b!620159 (= e!376377 (and tp_is_empty!3597 tp!192420))))

(assert (=> b!619893 (= tp!192315 e!376377)))

(assert (= (and b!619893 ((_ is Cons!6330) (originalCharacters!1318 (h!11733 producedTokens!8)))) b!620159))

(declare-fun b!620160 () Bool)

(declare-fun e!376378 () Bool)

(declare-fun tp!192421 () Bool)

(assert (=> b!620160 (= e!376378 (and tp_is_empty!3597 tp!192421))))

(assert (=> b!619898 (= tp!192307 e!376378)))

(assert (= (and b!619898 ((_ is Cons!6330) (t!81631 suffix!1461))) b!620160))

(declare-fun b!620164 () Bool)

(declare-fun e!376379 () Bool)

(declare-fun tp!192425 () Bool)

(declare-fun tp!192424 () Bool)

(assert (=> b!620164 (= e!376379 (and tp!192425 tp!192424))))

(declare-fun b!620162 () Bool)

(declare-fun tp!192426 () Bool)

(declare-fun tp!192422 () Bool)

(assert (=> b!620162 (= e!376379 (and tp!192426 tp!192422))))

(assert (=> b!619897 (= tp!192317 e!376379)))

(declare-fun b!620161 () Bool)

(assert (=> b!620161 (= e!376379 tp_is_empty!3597)))

(declare-fun b!620163 () Bool)

(declare-fun tp!192423 () Bool)

(assert (=> b!620163 (= e!376379 tp!192423)))

(assert (= (and b!619897 ((_ is ElementMatch!1619) (regex!1285 (rule!2077 (h!11733 producedTokens!8))))) b!620161))

(assert (= (and b!619897 ((_ is Concat!2929) (regex!1285 (rule!2077 (h!11733 producedTokens!8))))) b!620162))

(assert (= (and b!619897 ((_ is Star!1619) (regex!1285 (rule!2077 (h!11733 producedTokens!8))))) b!620163))

(assert (= (and b!619897 ((_ is Union!1619) (regex!1285 (rule!2077 (h!11733 producedTokens!8))))) b!620164))

(declare-fun b!620165 () Bool)

(declare-fun e!376380 () Bool)

(declare-fun tp!192427 () Bool)

(assert (=> b!620165 (= e!376380 (and tp_is_empty!3597 tp!192427))))

(assert (=> b!619892 (= tp!192310 e!376380)))

(assert (= (and b!619892 ((_ is Cons!6330) (t!81631 input!3206))) b!620165))

(declare-fun b_lambda!24551 () Bool)

(assert (= b_lambda!24549 (or (and b!619901 b_free!18035 (= (toChars!2061 (transformation!1285 (h!11732 rules!3735))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))))) (and b!619896 b_free!18039) (and b!620143 b_free!18051 (= (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))))) (and b!620154 b_free!18055 (= (toChars!2061 (transformation!1285 (h!11732 (t!81632 rules!3735)))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))))) b_lambda!24551)))

(check-sat (not b!620160) (not b!620141) (not b!620140) (not b!619906) (not b_next!18055) (not b!620127) (not b!620049) (not b!620164) (not b!620097) (not b!620162) (not bm!41100) (not b!620113) (not b!620153) (not b_next!18051) (not b!620110) (not b_next!18053) (not b!620052) (not d!217135) (not b!620152) b_and!61593 (not b_next!18071) b_and!61599 (not b!620163) (not b!620058) b_and!61571 b_and!61591 (not b!620129) (not b!620115) (not b!620092) (not b!620093) b_and!61601 (not d!217169) (not b!620051) (not b!620114) (not b!620063) (not d!217139) (not b!620066) (not b_next!18067) (not b_lambda!24551) (not b!620072) (not d!217177) (not b!620098) (not b!620128) (not b!620091) (not d!217167) (not b!620057) (not b!620095) (not b!620142) (not b_next!18049) b_and!61597 (not tb!53823) tp_is_empty!3597 (not d!217179) (not d!217131) (not b!620094) (not b!620096) (not b_next!18069) (not b!620050) b_and!61575 (not d!217183) (not d!217171) (not b_next!18065) (not b!620159) (not b!620165) b_and!61595 (not d!217187))
(check-sat b_and!61601 (not b_next!18055) (not b_next!18067) (not b_next!18049) b_and!61597 (not b_next!18069) b_and!61575 (not b_next!18051) (not b_next!18053) b_and!61593 (not b_next!18071) b_and!61599 b_and!61571 b_and!61591 (not b_next!18065) b_and!61595)
(get-model)

(declare-fun d!217193 () Bool)

(assert (=> d!217193 (= (list!2641 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8)))) (list!2645 (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8))))))))

(declare-fun bs!71950 () Bool)

(assert (= bs!71950 d!217193))

(declare-fun m!887957 () Bool)

(assert (=> bs!71950 m!887957))

(assert (=> b!620057 d!217193))

(declare-fun d!217195 () Bool)

(declare-fun lt!265233 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1144 (List!6341) (InoxSet Rule!2370))

(assert (=> d!217195 (= lt!265233 (select (content!1144 rules!3735) (rule!2077 (_1!3822 (get!2414 lt!265229)))))))

(declare-fun e!376385 () Bool)

(assert (=> d!217195 (= lt!265233 e!376385)))

(declare-fun res!270014 () Bool)

(assert (=> d!217195 (=> (not res!270014) (not e!376385))))

(assert (=> d!217195 (= res!270014 ((_ is Cons!6331) rules!3735))))

(assert (=> d!217195 (= (contains!1494 rules!3735 (rule!2077 (_1!3822 (get!2414 lt!265229)))) lt!265233)))

(declare-fun b!620170 () Bool)

(declare-fun e!376386 () Bool)

(assert (=> b!620170 (= e!376385 e!376386)))

(declare-fun res!270015 () Bool)

(assert (=> b!620170 (=> res!270015 e!376386)))

(assert (=> b!620170 (= res!270015 (= (h!11732 rules!3735) (rule!2077 (_1!3822 (get!2414 lt!265229)))))))

(declare-fun b!620171 () Bool)

(assert (=> b!620171 (= e!376386 (contains!1494 (t!81632 rules!3735) (rule!2077 (_1!3822 (get!2414 lt!265229)))))))

(assert (= (and d!217195 res!270014) b!620170))

(assert (= (and b!620170 (not res!270015)) b!620171))

(declare-fun m!887959 () Bool)

(assert (=> d!217195 m!887959))

(declare-fun m!887961 () Bool)

(assert (=> d!217195 m!887961))

(declare-fun m!887963 () Bool)

(assert (=> b!620171 m!887963))

(assert (=> b!620091 d!217195))

(declare-fun d!217197 () Bool)

(assert (=> d!217197 (= (get!2414 lt!265229) (v!16549 lt!265229))))

(assert (=> b!620091 d!217197))

(declare-fun d!217199 () Bool)

(declare-fun lt!265236 () Int)

(assert (=> d!217199 (= lt!265236 (size!4923 (list!2640 (_1!3823 lt!265212))))))

(declare-fun size!4931 (Conc!2012) Int)

(assert (=> d!217199 (= lt!265236 (size!4931 (c!114033 (_1!3823 lt!265212))))))

(assert (=> d!217199 (= (size!4927 (_1!3823 lt!265212)) lt!265236)))

(declare-fun bs!71951 () Bool)

(assert (= bs!71951 d!217199))

(assert (=> bs!71951 m!887857))

(assert (=> bs!71951 m!887857))

(declare-fun m!887965 () Bool)

(assert (=> bs!71951 m!887965))

(declare-fun m!887967 () Bool)

(assert (=> bs!71951 m!887967))

(assert (=> d!217139 d!217199))

(declare-fun b!620186 () Bool)

(declare-fun e!376398 () tuple2!7118)

(declare-fun lt!265312 () BalanceConc!4030)

(assert (=> b!620186 (= e!376398 (tuple2!7119 (BalanceConc!4033 Empty!2012) lt!265312))))

(declare-fun b!620187 () Bool)

(declare-fun e!376395 () tuple2!7118)

(assert (=> b!620187 (= e!376395 (tuple2!7119 (BalanceConc!4033 Empty!2012) (seqFromList!1440 input!3206)))))

(declare-datatypes ((tuple2!7126 0))(
  ( (tuple2!7127 (_1!3827 Token!2294) (_2!3827 BalanceConc!4030)) )
))
(declare-datatypes ((Option!1625 0))(
  ( (None!1624) (Some!1624 (v!16553 tuple2!7126)) )
))
(declare-fun lt!265310 () Option!1625)

(declare-fun b!620188 () Bool)

(declare-fun lt!265309 () tuple2!7118)

(declare-fun lexRec!146 (LexerInterface!1173 List!6341 BalanceConc!4030) tuple2!7118)

(assert (=> b!620188 (= lt!265309 (lexRec!146 thiss!25571 rules!3735 (_2!3827 (v!16553 lt!265310))))))

(declare-fun e!376397 () tuple2!7118)

(declare-fun prepend!245 (BalanceConc!4032 Token!2294) BalanceConc!4032)

(assert (=> b!620188 (= e!376397 (tuple2!7119 (prepend!245 (_1!3823 lt!265309) (_1!3827 (v!16553 lt!265310))) (_2!3823 lt!265309)))))

(declare-fun b!620189 () Bool)

(assert (=> b!620189 (= e!376397 (tuple2!7119 (BalanceConc!4033 Empty!2012) (seqFromList!1440 input!3206)))))

(declare-fun d!217201 () Bool)

(declare-fun e!376396 () Bool)

(assert (=> d!217201 e!376396))

(declare-fun res!270018 () Bool)

(assert (=> d!217201 (=> (not res!270018) (not e!376396))))

(declare-fun lt!265321 () tuple2!7118)

(assert (=> d!217201 (= res!270018 (= (list!2640 (_1!3823 lt!265321)) (list!2640 (_1!3823 (lexRec!146 thiss!25571 rules!3735 (seqFromList!1440 input!3206))))))))

(assert (=> d!217201 (= lt!265321 e!376395)))

(declare-fun c!114070 () Bool)

(declare-fun lt!265306 () Option!1625)

(assert (=> d!217201 (= c!114070 ((_ is Some!1624) lt!265306))))

(declare-fun maxPrefixZipperSequenceV2!122 (LexerInterface!1173 List!6341 BalanceConc!4030 BalanceConc!4030) Option!1625)

(assert (=> d!217201 (= lt!265306 (maxPrefixZipperSequenceV2!122 thiss!25571 rules!3735 (seqFromList!1440 input!3206) (seqFromList!1440 input!3206)))))

(declare-fun lt!265311 () Unit!11436)

(declare-fun lt!265307 () Unit!11436)

(assert (=> d!217201 (= lt!265311 lt!265307)))

(declare-fun lt!265333 () List!6340)

(declare-fun lt!265335 () List!6340)

(declare-fun isSuffix!123 (List!6340 List!6340) Bool)

(assert (=> d!217201 (isSuffix!123 lt!265333 (++!1749 lt!265335 lt!265333))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!123 (List!6340 List!6340) Unit!11436)

(assert (=> d!217201 (= lt!265307 (lemmaConcatTwoListThenFSndIsSuffix!123 lt!265335 lt!265333))))

(assert (=> d!217201 (= lt!265333 (list!2641 (seqFromList!1440 input!3206)))))

(assert (=> d!217201 (= lt!265335 (list!2641 (BalanceConc!4031 Empty!2011)))))

(assert (=> d!217201 (= (lexTailRecV2!271 thiss!25571 rules!3735 (seqFromList!1440 input!3206) (BalanceConc!4031 Empty!2011) (seqFromList!1440 input!3206) (BalanceConc!4033 Empty!2012)) lt!265321)))

(declare-fun lt!265332 () BalanceConc!4030)

(declare-fun b!620190 () Bool)

(declare-fun append!162 (BalanceConc!4032 Token!2294) BalanceConc!4032)

(assert (=> b!620190 (= e!376395 (lexTailRecV2!271 thiss!25571 rules!3735 (seqFromList!1440 input!3206) lt!265332 (_2!3827 (v!16553 lt!265306)) (append!162 (BalanceConc!4033 Empty!2012) (_1!3827 (v!16553 lt!265306)))))))

(declare-fun lt!265330 () tuple2!7118)

(assert (=> b!620190 (= lt!265330 (lexRec!146 thiss!25571 rules!3735 (_2!3827 (v!16553 lt!265306))))))

(declare-fun lt!265323 () List!6340)

(assert (=> b!620190 (= lt!265323 (list!2641 (BalanceConc!4031 Empty!2011)))))

(declare-fun lt!265305 () List!6340)

(assert (=> b!620190 (= lt!265305 (list!2641 (charsOf!886 (_1!3827 (v!16553 lt!265306)))))))

(declare-fun lt!265326 () List!6340)

(assert (=> b!620190 (= lt!265326 (list!2641 (_2!3827 (v!16553 lt!265306))))))

(declare-fun lt!265329 () Unit!11436)

(declare-fun lemmaConcatAssociativity!625 (List!6340 List!6340 List!6340) Unit!11436)

(assert (=> b!620190 (= lt!265329 (lemmaConcatAssociativity!625 lt!265323 lt!265305 lt!265326))))

(assert (=> b!620190 (= (++!1749 (++!1749 lt!265323 lt!265305) lt!265326) (++!1749 lt!265323 (++!1749 lt!265305 lt!265326)))))

(declare-fun lt!265334 () Unit!11436)

(assert (=> b!620190 (= lt!265334 lt!265329)))

(declare-fun maxPrefixZipperSequence!449 (LexerInterface!1173 List!6341 BalanceConc!4030) Option!1625)

(assert (=> b!620190 (= lt!265310 (maxPrefixZipperSequence!449 thiss!25571 rules!3735 (seqFromList!1440 input!3206)))))

(declare-fun c!114072 () Bool)

(assert (=> b!620190 (= c!114072 ((_ is Some!1624) lt!265310))))

(assert (=> b!620190 (= (lexRec!146 thiss!25571 rules!3735 (seqFromList!1440 input!3206)) e!376397)))

(declare-fun lt!265314 () Unit!11436)

(declare-fun Unit!11440 () Unit!11436)

(assert (=> b!620190 (= lt!265314 Unit!11440)))

(declare-fun lt!265318 () List!6342)

(assert (=> b!620190 (= lt!265318 (list!2640 (BalanceConc!4033 Empty!2012)))))

(declare-fun lt!265338 () List!6342)

(assert (=> b!620190 (= lt!265338 (Cons!6332 (_1!3827 (v!16553 lt!265306)) Nil!6332))))

(declare-fun lt!265328 () List!6342)

(assert (=> b!620190 (= lt!265328 (list!2640 (_1!3823 lt!265330)))))

(declare-fun lt!265322 () Unit!11436)

(declare-fun lemmaConcatAssociativity!626 (List!6342 List!6342 List!6342) Unit!11436)

(assert (=> b!620190 (= lt!265322 (lemmaConcatAssociativity!626 lt!265318 lt!265338 lt!265328))))

(declare-fun ++!1752 (List!6342 List!6342) List!6342)

(assert (=> b!620190 (= (++!1752 (++!1752 lt!265318 lt!265338) lt!265328) (++!1752 lt!265318 (++!1752 lt!265338 lt!265328)))))

(declare-fun lt!265331 () Unit!11436)

(assert (=> b!620190 (= lt!265331 lt!265322)))

(declare-fun lt!265336 () List!6340)

(assert (=> b!620190 (= lt!265336 (++!1749 (list!2641 (BalanceConc!4031 Empty!2011)) (list!2641 (charsOf!886 (_1!3827 (v!16553 lt!265306))))))))

(declare-fun lt!265337 () List!6340)

(assert (=> b!620190 (= lt!265337 (list!2641 (_2!3827 (v!16553 lt!265306))))))

(declare-fun lt!265327 () List!6342)

(assert (=> b!620190 (= lt!265327 (list!2640 (append!162 (BalanceConc!4033 Empty!2012) (_1!3827 (v!16553 lt!265306)))))))

(declare-fun lt!265313 () Unit!11436)

(declare-fun lemmaLexThenLexPrefix!125 (LexerInterface!1173 List!6341 List!6340 List!6340 List!6342 List!6342 List!6340) Unit!11436)

(assert (=> b!620190 (= lt!265313 (lemmaLexThenLexPrefix!125 thiss!25571 rules!3735 lt!265336 lt!265337 lt!265327 (list!2640 (_1!3823 lt!265330)) (list!2641 (_2!3823 lt!265330))))))

(assert (=> b!620190 (= (lexList!309 thiss!25571 rules!3735 lt!265336) (tuple2!7123 lt!265327 Nil!6330))))

(declare-fun lt!265317 () Unit!11436)

(assert (=> b!620190 (= lt!265317 lt!265313)))

(declare-fun ++!1753 (BalanceConc!4030 BalanceConc!4030) BalanceConc!4030)

(assert (=> b!620190 (= lt!265312 (++!1753 (BalanceConc!4031 Empty!2011) (charsOf!886 (_1!3827 (v!16553 lt!265306)))))))

(declare-fun lt!265320 () Option!1625)

(assert (=> b!620190 (= lt!265320 (maxPrefixZipperSequence!449 thiss!25571 rules!3735 lt!265312))))

(declare-fun c!114071 () Bool)

(assert (=> b!620190 (= c!114071 ((_ is Some!1624) lt!265320))))

(assert (=> b!620190 (= (lexRec!146 thiss!25571 rules!3735 (++!1753 (BalanceConc!4031 Empty!2011) (charsOf!886 (_1!3827 (v!16553 lt!265306))))) e!376398)))

(declare-fun lt!265325 () Unit!11436)

(declare-fun Unit!11441 () Unit!11436)

(assert (=> b!620190 (= lt!265325 Unit!11441)))

(assert (=> b!620190 (= lt!265332 (++!1753 (BalanceConc!4031 Empty!2011) (charsOf!886 (_1!3827 (v!16553 lt!265306)))))))

(declare-fun lt!265308 () List!6340)

(assert (=> b!620190 (= lt!265308 (list!2641 lt!265332))))

(declare-fun lt!265319 () List!6340)

(assert (=> b!620190 (= lt!265319 (list!2641 (_2!3827 (v!16553 lt!265306))))))

(declare-fun lt!265324 () Unit!11436)

(assert (=> b!620190 (= lt!265324 (lemmaConcatTwoListThenFSndIsSuffix!123 lt!265308 lt!265319))))

(assert (=> b!620190 (isSuffix!123 lt!265319 (++!1749 lt!265308 lt!265319))))

(declare-fun lt!265316 () Unit!11436)

(assert (=> b!620190 (= lt!265316 lt!265324)))

(declare-fun b!620191 () Bool)

(assert (=> b!620191 (= e!376396 (= (list!2641 (_2!3823 lt!265321)) (list!2641 (_2!3823 (lexRec!146 thiss!25571 rules!3735 (seqFromList!1440 input!3206))))))))

(declare-fun b!620192 () Bool)

(declare-fun lt!265315 () tuple2!7118)

(assert (=> b!620192 (= lt!265315 (lexRec!146 thiss!25571 rules!3735 (_2!3827 (v!16553 lt!265320))))))

(assert (=> b!620192 (= e!376398 (tuple2!7119 (prepend!245 (_1!3823 lt!265315) (_1!3827 (v!16553 lt!265320))) (_2!3823 lt!265315)))))

(assert (= (and d!217201 c!114070) b!620190))

(assert (= (and d!217201 (not c!114070)) b!620187))

(assert (= (and b!620190 c!114072) b!620188))

(assert (= (and b!620190 (not c!114072)) b!620189))

(assert (= (and b!620190 c!114071) b!620192))

(assert (= (and b!620190 (not c!114071)) b!620186))

(assert (= (and d!217201 res!270018) b!620191))

(assert (=> d!217201 m!887739))

(declare-fun m!887969 () Bool)

(assert (=> d!217201 m!887969))

(declare-fun m!887971 () Bool)

(assert (=> d!217201 m!887971))

(declare-fun m!887973 () Bool)

(assert (=> d!217201 m!887973))

(assert (=> d!217201 m!887739))

(assert (=> d!217201 m!887739))

(declare-fun m!887975 () Bool)

(assert (=> d!217201 m!887975))

(declare-fun m!887977 () Bool)

(assert (=> d!217201 m!887977))

(declare-fun m!887979 () Bool)

(assert (=> d!217201 m!887979))

(declare-fun m!887981 () Bool)

(assert (=> d!217201 m!887981))

(assert (=> d!217201 m!887971))

(declare-fun m!887983 () Bool)

(assert (=> d!217201 m!887983))

(assert (=> d!217201 m!887739))

(assert (=> d!217201 m!887859))

(declare-fun m!887985 () Bool)

(assert (=> b!620191 m!887985))

(assert (=> b!620191 m!887739))

(assert (=> b!620191 m!887969))

(declare-fun m!887987 () Bool)

(assert (=> b!620191 m!887987))

(declare-fun m!887989 () Bool)

(assert (=> b!620192 m!887989))

(declare-fun m!887991 () Bool)

(assert (=> b!620192 m!887991))

(declare-fun m!887993 () Bool)

(assert (=> b!620188 m!887993))

(declare-fun m!887995 () Bool)

(assert (=> b!620188 m!887995))

(declare-fun m!887997 () Bool)

(assert (=> b!620190 m!887997))

(declare-fun m!887999 () Bool)

(assert (=> b!620190 m!887999))

(declare-fun m!888001 () Bool)

(assert (=> b!620190 m!888001))

(declare-fun m!888003 () Bool)

(assert (=> b!620190 m!888003))

(declare-fun m!888005 () Bool)

(assert (=> b!620190 m!888005))

(declare-fun m!888007 () Bool)

(assert (=> b!620190 m!888007))

(declare-fun m!888009 () Bool)

(assert (=> b!620190 m!888009))

(assert (=> b!620190 m!887739))

(assert (=> b!620190 m!888007))

(declare-fun m!888011 () Bool)

(assert (=> b!620190 m!888011))

(declare-fun m!888013 () Bool)

(assert (=> b!620190 m!888013))

(declare-fun m!888015 () Bool)

(assert (=> b!620190 m!888015))

(declare-fun m!888017 () Bool)

(assert (=> b!620190 m!888017))

(declare-fun m!888019 () Bool)

(assert (=> b!620190 m!888019))

(declare-fun m!888021 () Bool)

(assert (=> b!620190 m!888021))

(declare-fun m!888023 () Bool)

(assert (=> b!620190 m!888023))

(declare-fun m!888025 () Bool)

(assert (=> b!620190 m!888025))

(declare-fun m!888027 () Bool)

(assert (=> b!620190 m!888027))

(declare-fun m!888029 () Bool)

(assert (=> b!620190 m!888029))

(assert (=> b!620190 m!888019))

(declare-fun m!888031 () Bool)

(assert (=> b!620190 m!888031))

(declare-fun m!888033 () Bool)

(assert (=> b!620190 m!888033))

(assert (=> b!620190 m!887739))

(assert (=> b!620190 m!887969))

(declare-fun m!888035 () Bool)

(assert (=> b!620190 m!888035))

(assert (=> b!620190 m!888015))

(assert (=> b!620190 m!888007))

(declare-fun m!888037 () Bool)

(assert (=> b!620190 m!888037))

(assert (=> b!620190 m!887997))

(declare-fun m!888039 () Bool)

(assert (=> b!620190 m!888039))

(declare-fun m!888041 () Bool)

(assert (=> b!620190 m!888041))

(assert (=> b!620190 m!887739))

(declare-fun m!888043 () Bool)

(assert (=> b!620190 m!888043))

(assert (=> b!620190 m!888021))

(declare-fun m!888045 () Bool)

(assert (=> b!620190 m!888045))

(assert (=> b!620190 m!888035))

(declare-fun m!888047 () Bool)

(assert (=> b!620190 m!888047))

(assert (=> b!620190 m!888039))

(declare-fun m!888049 () Bool)

(assert (=> b!620190 m!888049))

(assert (=> b!620190 m!888001))

(assert (=> b!620190 m!888031))

(declare-fun m!888051 () Bool)

(assert (=> b!620190 m!888051))

(assert (=> b!620190 m!888045))

(declare-fun m!888053 () Bool)

(assert (=> b!620190 m!888053))

(declare-fun m!888055 () Bool)

(assert (=> b!620190 m!888055))

(assert (=> b!620190 m!887997))

(assert (=> b!620190 m!887979))

(assert (=> b!620190 m!887999))

(declare-fun m!888057 () Bool)

(assert (=> b!620190 m!888057))

(assert (=> b!620190 m!887979))

(assert (=> d!217139 d!217201))

(declare-fun d!217203 () Bool)

(assert (=> d!217203 true))

(declare-fun lambda!16284 () Int)

(declare-fun order!4929 () Int)

(declare-fun order!4927 () Int)

(declare-fun dynLambda!3600 (Int Int) Int)

(declare-fun dynLambda!3601 (Int Int) Int)

(assert (=> d!217203 (< (dynLambda!3600 order!4927 (toValue!2202 (transformation!1285 (rule!2077 (h!11733 producedTokens!8))))) (dynLambda!3601 order!4929 lambda!16284))))

(declare-fun Forall2!239 (Int) Bool)

(assert (=> d!217203 (= (equivClasses!500 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (toValue!2202 (transformation!1285 (rule!2077 (h!11733 producedTokens!8))))) (Forall2!239 lambda!16284))))

(declare-fun bs!71956 () Bool)

(assert (= bs!71956 d!217203))

(declare-fun m!888165 () Bool)

(assert (=> bs!71956 m!888165))

(assert (=> b!620115 d!217203))

(declare-fun d!217219 () Bool)

(declare-fun charsToInt!0 (List!6339) (_ BitVec 32))

(assert (=> d!217219 (= (inv!16 (value!41486 (h!11733 producedTokens!8))) (= (charsToInt!0 (text!9610 (value!41486 (h!11733 producedTokens!8)))) (value!41477 (value!41486 (h!11733 producedTokens!8)))))))

(declare-fun bs!71957 () Bool)

(assert (= bs!71957 d!217219))

(declare-fun m!888167 () Bool)

(assert (=> bs!71957 m!888167))

(assert (=> b!620114 d!217219))

(declare-fun b!620230 () Bool)

(declare-fun e!376423 () Bool)

(assert (=> b!620230 (= e!376423 (inv!17 (value!41486 (h!11733 (t!81633 producedTokens!8)))))))

(declare-fun b!620231 () Bool)

(declare-fun res!270032 () Bool)

(declare-fun e!376424 () Bool)

(assert (=> b!620231 (=> res!270032 e!376424)))

(assert (=> b!620231 (= res!270032 (not ((_ is IntegerValue!3929) (value!41486 (h!11733 (t!81633 producedTokens!8))))))))

(assert (=> b!620231 (= e!376423 e!376424)))

(declare-fun b!620232 () Bool)

(declare-fun e!376422 () Bool)

(assert (=> b!620232 (= e!376422 e!376423)))

(declare-fun c!114083 () Bool)

(assert (=> b!620232 (= c!114083 ((_ is IntegerValue!3928) (value!41486 (h!11733 (t!81633 producedTokens!8)))))))

(declare-fun d!217221 () Bool)

(declare-fun c!114084 () Bool)

(assert (=> d!217221 (= c!114084 ((_ is IntegerValue!3927) (value!41486 (h!11733 (t!81633 producedTokens!8)))))))

(assert (=> d!217221 (= (inv!21 (value!41486 (h!11733 (t!81633 producedTokens!8)))) e!376422)))

(declare-fun b!620233 () Bool)

(assert (=> b!620233 (= e!376424 (inv!15 (value!41486 (h!11733 (t!81633 producedTokens!8)))))))

(declare-fun b!620234 () Bool)

(assert (=> b!620234 (= e!376422 (inv!16 (value!41486 (h!11733 (t!81633 producedTokens!8)))))))

(assert (= (and d!217221 c!114084) b!620234))

(assert (= (and d!217221 (not c!114084)) b!620232))

(assert (= (and b!620232 c!114083) b!620230))

(assert (= (and b!620232 (not c!114083)) b!620231))

(assert (= (and b!620231 (not res!270032)) b!620233))

(declare-fun m!888169 () Bool)

(assert (=> b!620230 m!888169))

(declare-fun m!888171 () Bool)

(assert (=> b!620233 m!888171))

(declare-fun m!888173 () Bool)

(assert (=> b!620234 m!888173))

(assert (=> b!620141 d!217221))

(declare-fun d!217223 () Bool)

(assert (=> d!217223 (= (isDefined!1418 lt!265229) (not (isEmpty!4544 lt!265229)))))

(declare-fun bs!71958 () Bool)

(assert (= bs!71958 d!217223))

(assert (=> bs!71958 m!887911))

(assert (=> b!620093 d!217223))

(declare-fun d!217225 () Bool)

(assert (=> d!217225 (= (inv!8001 (tag!1547 (rule!2077 (h!11733 (t!81633 producedTokens!8))))) (= (mod (str.len (value!41485 (tag!1547 (rule!2077 (h!11733 (t!81633 producedTokens!8)))))) 2) 0))))

(assert (=> b!620142 d!217225))

(declare-fun d!217227 () Bool)

(declare-fun res!270033 () Bool)

(declare-fun e!376425 () Bool)

(assert (=> d!217227 (=> (not res!270033) (not e!376425))))

(assert (=> d!217227 (= res!270033 (semiInverseModEq!517 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))) (toValue!2202 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8)))))))))

(assert (=> d!217227 (= (inv!8004 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))) e!376425)))

(declare-fun b!620235 () Bool)

(assert (=> b!620235 (= e!376425 (equivClasses!500 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))) (toValue!2202 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8)))))))))

(assert (= (and d!217227 res!270033) b!620235))

(declare-fun m!888175 () Bool)

(assert (=> d!217227 m!888175))

(declare-fun m!888177 () Bool)

(assert (=> b!620235 m!888177))

(assert (=> b!620142 d!217227))

(declare-fun b!620257 () Bool)

(declare-fun e!376436 () Bool)

(declare-fun lt!265453 () List!6340)

(assert (=> b!620257 (= e!376436 (or (not (= (_2!3822 (get!2414 lt!265229)) Nil!6330)) (= lt!265453 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229)))))))))

(declare-fun b!620254 () Bool)

(declare-fun e!376437 () List!6340)

(assert (=> b!620254 (= e!376437 (_2!3822 (get!2414 lt!265229)))))

(declare-fun b!620256 () Bool)

(declare-fun res!270040 () Bool)

(assert (=> b!620256 (=> (not res!270040) (not e!376436))))

(assert (=> b!620256 (= res!270040 (= (size!4929 lt!265453) (+ (size!4929 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229))))) (size!4929 (_2!3822 (get!2414 lt!265229))))))))

(declare-fun d!217229 () Bool)

(assert (=> d!217229 e!376436))

(declare-fun res!270041 () Bool)

(assert (=> d!217229 (=> (not res!270041) (not e!376436))))

(declare-fun content!1145 (List!6340) (InoxSet C!4164))

(assert (=> d!217229 (= res!270041 (= (content!1145 lt!265453) ((_ map or) (content!1145 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229))))) (content!1145 (_2!3822 (get!2414 lt!265229))))))))

(assert (=> d!217229 (= lt!265453 e!376437)))

(declare-fun c!114091 () Bool)

(assert (=> d!217229 (= c!114091 ((_ is Nil!6330) (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229))))))))

(assert (=> d!217229 (= (++!1749 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229)))) (_2!3822 (get!2414 lt!265229))) lt!265453)))

(declare-fun b!620255 () Bool)

(assert (=> b!620255 (= e!376437 (Cons!6330 (h!11731 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229))))) (++!1749 (t!81631 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229))))) (_2!3822 (get!2414 lt!265229)))))))

(assert (= (and d!217229 c!114091) b!620254))

(assert (= (and d!217229 (not c!114091)) b!620255))

(assert (= (and d!217229 res!270041) b!620256))

(assert (= (and b!620256 res!270040) b!620257))

(declare-fun m!888179 () Bool)

(assert (=> b!620256 m!888179))

(assert (=> b!620256 m!887921))

(declare-fun m!888181 () Bool)

(assert (=> b!620256 m!888181))

(assert (=> b!620256 m!887905))

(declare-fun m!888183 () Bool)

(assert (=> d!217229 m!888183))

(assert (=> d!217229 m!887921))

(declare-fun m!888185 () Bool)

(assert (=> d!217229 m!888185))

(declare-fun m!888187 () Bool)

(assert (=> d!217229 m!888187))

(declare-fun m!888189 () Bool)

(assert (=> b!620255 m!888189))

(assert (=> b!620094 d!217229))

(declare-fun d!217231 () Bool)

(assert (=> d!217231 (= (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229)))) (list!2645 (c!114031 (charsOf!886 (_1!3822 (get!2414 lt!265229))))))))

(declare-fun bs!71959 () Bool)

(assert (= bs!71959 d!217231))

(declare-fun m!888191 () Bool)

(assert (=> bs!71959 m!888191))

(assert (=> b!620094 d!217231))

(declare-fun d!217233 () Bool)

(declare-fun lt!265459 () BalanceConc!4030)

(assert (=> d!217233 (= (list!2641 lt!265459) (originalCharacters!1318 (_1!3822 (get!2414 lt!265229))))))

(assert (=> d!217233 (= lt!265459 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229))))) (value!41486 (_1!3822 (get!2414 lt!265229)))))))

(assert (=> d!217233 (= (charsOf!886 (_1!3822 (get!2414 lt!265229))) lt!265459)))

(declare-fun b_lambda!24553 () Bool)

(assert (=> (not b_lambda!24553) (not d!217233)))

(declare-fun tb!53831 () Bool)

(declare-fun t!81653 () Bool)

(assert (=> (and b!619901 (= (toChars!2061 (transformation!1285 (h!11732 rules!3735))) (toChars!2061 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))) t!81653) tb!53831))

(declare-fun b!620263 () Bool)

(declare-fun e!376441 () Bool)

(declare-fun tp!192428 () Bool)

(assert (=> b!620263 (= e!376441 (and (inv!8008 (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229))))) (value!41486 (_1!3822 (get!2414 lt!265229)))))) tp!192428))))

(declare-fun result!60762 () Bool)

(assert (=> tb!53831 (= result!60762 (and (inv!8009 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229))))) (value!41486 (_1!3822 (get!2414 lt!265229))))) e!376441))))

(assert (= tb!53831 b!620263))

(declare-fun m!888209 () Bool)

(assert (=> b!620263 m!888209))

(declare-fun m!888211 () Bool)

(assert (=> tb!53831 m!888211))

(assert (=> d!217233 t!81653))

(declare-fun b_and!61603 () Bool)

(assert (= b_and!61591 (and (=> t!81653 result!60762) b_and!61603)))

(declare-fun t!81655 () Bool)

(declare-fun tb!53833 () Bool)

(assert (=> (and b!619896 (= (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (toChars!2061 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))) t!81655) tb!53833))

(declare-fun result!60764 () Bool)

(assert (= result!60764 result!60762))

(assert (=> d!217233 t!81655))

(declare-fun b_and!61605 () Bool)

(assert (= b_and!61593 (and (=> t!81655 result!60764) b_and!61605)))

(declare-fun t!81657 () Bool)

(declare-fun tb!53835 () Bool)

(assert (=> (and b!620143 (= (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))) (toChars!2061 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))) t!81657) tb!53835))

(declare-fun result!60766 () Bool)

(assert (= result!60766 result!60762))

(assert (=> d!217233 t!81657))

(declare-fun b_and!61607 () Bool)

(assert (= b_and!61597 (and (=> t!81657 result!60766) b_and!61607)))

(declare-fun tb!53837 () Bool)

(declare-fun t!81659 () Bool)

(assert (=> (and b!620154 (= (toChars!2061 (transformation!1285 (h!11732 (t!81632 rules!3735)))) (toChars!2061 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))) t!81659) tb!53837))

(declare-fun result!60768 () Bool)

(assert (= result!60768 result!60762))

(assert (=> d!217233 t!81659))

(declare-fun b_and!61609 () Bool)

(assert (= b_and!61601 (and (=> t!81659 result!60768) b_and!61609)))

(declare-fun m!888213 () Bool)

(assert (=> d!217233 m!888213))

(declare-fun m!888215 () Bool)

(assert (=> d!217233 m!888215))

(assert (=> b!620094 d!217233))

(assert (=> b!620094 d!217197))

(declare-fun d!217243 () Bool)

(assert (=> d!217243 (= (isEmpty!4544 (maxPrefix!855 thiss!25571 rules!3735 input!3206)) (not ((_ is Some!1622) (maxPrefix!855 thiss!25571 rules!3735 input!3206))))))

(assert (=> d!217177 d!217243))

(declare-fun bs!71962 () Bool)

(declare-fun d!217247 () Bool)

(assert (= bs!71962 (and d!217247 d!217203)))

(declare-fun lambda!16285 () Int)

(assert (=> bs!71962 (= (= (toValue!2202 (transformation!1285 (h!11732 rules!3735))) (toValue!2202 (transformation!1285 (rule!2077 (h!11733 producedTokens!8))))) (= lambda!16285 lambda!16284))))

(assert (=> d!217247 true))

(assert (=> d!217247 (< (dynLambda!3600 order!4927 (toValue!2202 (transformation!1285 (h!11732 rules!3735)))) (dynLambda!3601 order!4929 lambda!16285))))

(assert (=> d!217247 (= (equivClasses!500 (toChars!2061 (transformation!1285 (h!11732 rules!3735))) (toValue!2202 (transformation!1285 (h!11732 rules!3735)))) (Forall2!239 lambda!16285))))

(declare-fun bs!71963 () Bool)

(assert (= bs!71963 d!217247))

(declare-fun m!888221 () Bool)

(assert (=> bs!71963 m!888221))

(assert (=> b!619906 d!217247))

(declare-fun d!217253 () Bool)

(declare-fun res!270043 () Bool)

(declare-fun e!376446 () Bool)

(assert (=> d!217253 (=> (not res!270043) (not e!376446))))

(assert (=> d!217253 (= res!270043 (not (isEmpty!4543 (originalCharacters!1318 (h!11733 (t!81633 producedTokens!8))))))))

(assert (=> d!217253 (= (inv!8005 (h!11733 (t!81633 producedTokens!8))) e!376446)))

(declare-fun b!620272 () Bool)

(declare-fun res!270044 () Bool)

(assert (=> b!620272 (=> (not res!270044) (not e!376446))))

(assert (=> b!620272 (= res!270044 (= (originalCharacters!1318 (h!11733 (t!81633 producedTokens!8))) (list!2641 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))) (value!41486 (h!11733 (t!81633 producedTokens!8)))))))))

(declare-fun b!620273 () Bool)

(assert (=> b!620273 (= e!376446 (= (size!4922 (h!11733 (t!81633 producedTokens!8))) (size!4929 (originalCharacters!1318 (h!11733 (t!81633 producedTokens!8))))))))

(assert (= (and d!217253 res!270043) b!620272))

(assert (= (and b!620272 res!270044) b!620273))

(declare-fun b_lambda!24555 () Bool)

(assert (=> (not b_lambda!24555) (not b!620272)))

(declare-fun t!81661 () Bool)

(declare-fun tb!53839 () Bool)

(assert (=> (and b!619901 (= (toChars!2061 (transformation!1285 (h!11732 rules!3735))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8)))))) t!81661) tb!53839))

(declare-fun b!620274 () Bool)

(declare-fun e!376447 () Bool)

(declare-fun tp!192429 () Bool)

(assert (=> b!620274 (= e!376447 (and (inv!8008 (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))) (value!41486 (h!11733 (t!81633 producedTokens!8)))))) tp!192429))))

(declare-fun result!60770 () Bool)

(assert (=> tb!53839 (= result!60770 (and (inv!8009 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))) (value!41486 (h!11733 (t!81633 producedTokens!8))))) e!376447))))

(assert (= tb!53839 b!620274))

(declare-fun m!888223 () Bool)

(assert (=> b!620274 m!888223))

(declare-fun m!888225 () Bool)

(assert (=> tb!53839 m!888225))

(assert (=> b!620272 t!81661))

(declare-fun b_and!61611 () Bool)

(assert (= b_and!61603 (and (=> t!81661 result!60770) b_and!61611)))

(declare-fun t!81663 () Bool)

(declare-fun tb!53841 () Bool)

(assert (=> (and b!619896 (= (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8)))))) t!81663) tb!53841))

(declare-fun result!60772 () Bool)

(assert (= result!60772 result!60770))

(assert (=> b!620272 t!81663))

(declare-fun b_and!61613 () Bool)

(assert (= b_and!61605 (and (=> t!81663 result!60772) b_and!61613)))

(declare-fun t!81665 () Bool)

(declare-fun tb!53843 () Bool)

(assert (=> (and b!620143 (= (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8)))))) t!81665) tb!53843))

(declare-fun result!60774 () Bool)

(assert (= result!60774 result!60770))

(assert (=> b!620272 t!81665))

(declare-fun b_and!61615 () Bool)

(assert (= b_and!61607 (and (=> t!81665 result!60774) b_and!61615)))

(declare-fun t!81667 () Bool)

(declare-fun tb!53845 () Bool)

(assert (=> (and b!620154 (= (toChars!2061 (transformation!1285 (h!11732 (t!81632 rules!3735)))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8)))))) t!81667) tb!53845))

(declare-fun result!60776 () Bool)

(assert (= result!60776 result!60770))

(assert (=> b!620272 t!81667))

(declare-fun b_and!61617 () Bool)

(assert (= b_and!61609 (and (=> t!81667 result!60776) b_and!61617)))

(declare-fun m!888227 () Bool)

(assert (=> d!217253 m!888227))

(declare-fun m!888229 () Bool)

(assert (=> b!620272 m!888229))

(assert (=> b!620272 m!888229))

(declare-fun m!888231 () Bool)

(assert (=> b!620272 m!888231))

(declare-fun m!888233 () Bool)

(assert (=> b!620273 m!888233))

(assert (=> b!620140 d!217253))

(declare-fun b!620276 () Bool)

(declare-fun e!376448 () Option!1623)

(declare-fun lt!265466 () Option!1623)

(declare-fun lt!265470 () Option!1623)

(assert (=> b!620276 (= e!376448 (ite (and ((_ is None!1622) lt!265466) ((_ is None!1622) lt!265470)) None!1622 (ite ((_ is None!1622) lt!265470) lt!265466 (ite ((_ is None!1622) lt!265466) lt!265470 (ite (>= (size!4922 (_1!3822 (v!16549 lt!265466))) (size!4922 (_1!3822 (v!16549 lt!265470)))) lt!265466 lt!265470)))))))

(declare-fun call!41106 () Option!1623)

(assert (=> b!620276 (= lt!265466 call!41106)))

(assert (=> b!620276 (= lt!265470 (maxPrefix!855 thiss!25571 (t!81632 (t!81632 rules!3735)) input!3206))))

(declare-fun b!620277 () Bool)

(declare-fun e!376449 () Bool)

(declare-fun e!376450 () Bool)

(assert (=> b!620277 (= e!376449 e!376450)))

(declare-fun res!270051 () Bool)

(assert (=> b!620277 (=> (not res!270051) (not e!376450))))

(declare-fun lt!265469 () Option!1623)

(assert (=> b!620277 (= res!270051 (isDefined!1418 lt!265469))))

(declare-fun b!620278 () Bool)

(declare-fun res!270048 () Bool)

(assert (=> b!620278 (=> (not res!270048) (not e!376450))))

(assert (=> b!620278 (= res!270048 (= (++!1749 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265469)))) (_2!3822 (get!2414 lt!265469))) input!3206))))

(declare-fun b!620279 () Bool)

(declare-fun res!270050 () Bool)

(assert (=> b!620279 (=> (not res!270050) (not e!376450))))

(assert (=> b!620279 (= res!270050 (= (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265469)))) (originalCharacters!1318 (_1!3822 (get!2414 lt!265469)))))))

(declare-fun b!620280 () Bool)

(declare-fun res!270047 () Bool)

(assert (=> b!620280 (=> (not res!270047) (not e!376450))))

(assert (=> b!620280 (= res!270047 (matchR!693 (regex!1285 (rule!2077 (_1!3822 (get!2414 lt!265469)))) (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265469))))))))

(declare-fun bm!41101 () Bool)

(assert (=> bm!41101 (= call!41106 (maxPrefixOneRule!505 thiss!25571 (h!11732 (t!81632 rules!3735)) input!3206))))

(declare-fun b!620281 () Bool)

(declare-fun res!270045 () Bool)

(assert (=> b!620281 (=> (not res!270045) (not e!376450))))

(assert (=> b!620281 (= res!270045 (< (size!4929 (_2!3822 (get!2414 lt!265469))) (size!4929 input!3206)))))

(declare-fun b!620282 () Bool)

(declare-fun res!270046 () Bool)

(assert (=> b!620282 (=> (not res!270046) (not e!376450))))

(assert (=> b!620282 (= res!270046 (= (value!41486 (_1!3822 (get!2414 lt!265469))) (apply!1507 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265469)))) (seqFromList!1440 (originalCharacters!1318 (_1!3822 (get!2414 lt!265469)))))))))

(declare-fun b!620283 () Bool)

(assert (=> b!620283 (= e!376448 call!41106)))

(declare-fun b!620275 () Bool)

(assert (=> b!620275 (= e!376450 (contains!1494 (t!81632 rules!3735) (rule!2077 (_1!3822 (get!2414 lt!265469)))))))

(declare-fun d!217255 () Bool)

(assert (=> d!217255 e!376449))

(declare-fun res!270049 () Bool)

(assert (=> d!217255 (=> res!270049 e!376449)))

(assert (=> d!217255 (= res!270049 (isEmpty!4544 lt!265469))))

(assert (=> d!217255 (= lt!265469 e!376448)))

(declare-fun c!114098 () Bool)

(assert (=> d!217255 (= c!114098 (and ((_ is Cons!6331) (t!81632 rules!3735)) ((_ is Nil!6331) (t!81632 (t!81632 rules!3735)))))))

(declare-fun lt!265467 () Unit!11436)

(declare-fun lt!265468 () Unit!11436)

(assert (=> d!217255 (= lt!265467 lt!265468)))

(assert (=> d!217255 (isPrefix!905 input!3206 input!3206)))

(assert (=> d!217255 (= lt!265468 (lemmaIsPrefixRefl!618 input!3206 input!3206))))

(assert (=> d!217255 (rulesValidInductive!494 thiss!25571 (t!81632 rules!3735))))

(assert (=> d!217255 (= (maxPrefix!855 thiss!25571 (t!81632 rules!3735) input!3206) lt!265469)))

(assert (= (and d!217255 c!114098) b!620283))

(assert (= (and d!217255 (not c!114098)) b!620276))

(assert (= (or b!620283 b!620276) bm!41101))

(assert (= (and d!217255 (not res!270049)) b!620277))

(assert (= (and b!620277 res!270051) b!620279))

(assert (= (and b!620279 res!270050) b!620281))

(assert (= (and b!620281 res!270045) b!620278))

(assert (= (and b!620278 res!270048) b!620282))

(assert (= (and b!620282 res!270046) b!620280))

(assert (= (and b!620280 res!270047) b!620275))

(declare-fun m!888239 () Bool)

(assert (=> b!620282 m!888239))

(declare-fun m!888241 () Bool)

(assert (=> b!620282 m!888241))

(assert (=> b!620282 m!888241))

(declare-fun m!888243 () Bool)

(assert (=> b!620282 m!888243))

(declare-fun m!888245 () Bool)

(assert (=> b!620277 m!888245))

(assert (=> b!620281 m!888239))

(declare-fun m!888247 () Bool)

(assert (=> b!620281 m!888247))

(assert (=> b!620281 m!887907))

(declare-fun m!888249 () Bool)

(assert (=> b!620276 m!888249))

(declare-fun m!888251 () Bool)

(assert (=> d!217255 m!888251))

(assert (=> d!217255 m!887913))

(assert (=> d!217255 m!887915))

(declare-fun m!888253 () Bool)

(assert (=> d!217255 m!888253))

(assert (=> b!620280 m!888239))

(declare-fun m!888255 () Bool)

(assert (=> b!620280 m!888255))

(assert (=> b!620280 m!888255))

(declare-fun m!888257 () Bool)

(assert (=> b!620280 m!888257))

(assert (=> b!620280 m!888257))

(declare-fun m!888259 () Bool)

(assert (=> b!620280 m!888259))

(declare-fun m!888261 () Bool)

(assert (=> bm!41101 m!888261))

(assert (=> b!620278 m!888239))

(assert (=> b!620278 m!888255))

(assert (=> b!620278 m!888255))

(assert (=> b!620278 m!888257))

(assert (=> b!620278 m!888257))

(declare-fun m!888263 () Bool)

(assert (=> b!620278 m!888263))

(assert (=> b!620279 m!888239))

(assert (=> b!620279 m!888255))

(assert (=> b!620279 m!888255))

(assert (=> b!620279 m!888257))

(assert (=> b!620275 m!888239))

(declare-fun m!888265 () Bool)

(assert (=> b!620275 m!888265))

(assert (=> b!620092 d!217255))

(declare-fun d!217259 () Bool)

(declare-fun lt!265474 () Int)

(assert (=> d!217259 (>= lt!265474 0)))

(declare-fun e!376459 () Int)

(assert (=> d!217259 (= lt!265474 e!376459)))

(declare-fun c!114107 () Bool)

(assert (=> d!217259 (= c!114107 ((_ is Nil!6330) (originalCharacters!1318 (h!11733 producedTokens!8))))))

(assert (=> d!217259 (= (size!4929 (originalCharacters!1318 (h!11733 producedTokens!8))) lt!265474)))

(declare-fun b!620300 () Bool)

(assert (=> b!620300 (= e!376459 0)))

(declare-fun b!620301 () Bool)

(assert (=> b!620301 (= e!376459 (+ 1 (size!4929 (t!81631 (originalCharacters!1318 (h!11733 producedTokens!8))))))))

(assert (= (and d!217259 c!114107) b!620300))

(assert (= (and d!217259 (not c!114107)) b!620301))

(declare-fun m!888275 () Bool)

(assert (=> b!620301 m!888275))

(assert (=> b!620058 d!217259))

(declare-fun d!217263 () Bool)

(assert (=> d!217263 (= (isEmpty!4543 (originalCharacters!1318 (h!11733 producedTokens!8))) ((_ is Nil!6330) (originalCharacters!1318 (h!11733 producedTokens!8))))))

(assert (=> d!217169 d!217263))

(declare-fun b!620345 () Bool)

(declare-fun e!376482 () Bool)

(declare-fun derivativeStep!343 (Regex!1619 C!4164) Regex!1619)

(declare-fun head!1312 (List!6340) C!4164)

(declare-fun tail!841 (List!6340) List!6340)

(assert (=> b!620345 (= e!376482 (matchR!693 (derivativeStep!343 (regex!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))) (head!1312 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229)))))) (tail!841 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229)))))))))

(declare-fun d!217265 () Bool)

(declare-fun e!376483 () Bool)

(assert (=> d!217265 e!376483))

(declare-fun c!114117 () Bool)

(assert (=> d!217265 (= c!114117 ((_ is EmptyExpr!1619) (regex!1285 (rule!2077 (_1!3822 (get!2414 lt!265229))))))))

(declare-fun lt!265486 () Bool)

(assert (=> d!217265 (= lt!265486 e!376482)))

(declare-fun c!114118 () Bool)

(assert (=> d!217265 (= c!114118 (isEmpty!4543 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229))))))))

(declare-fun validRegex!560 (Regex!1619) Bool)

(assert (=> d!217265 (validRegex!560 (regex!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))))

(assert (=> d!217265 (= (matchR!693 (regex!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))) (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229))))) lt!265486)))

(declare-fun b!620346 () Bool)

(declare-fun res!270079 () Bool)

(declare-fun e!376484 () Bool)

(assert (=> b!620346 (=> (not res!270079) (not e!376484))))

(assert (=> b!620346 (= res!270079 (isEmpty!4543 (tail!841 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229)))))))))

(declare-fun bm!41104 () Bool)

(declare-fun call!41109 () Bool)

(assert (=> bm!41104 (= call!41109 (isEmpty!4543 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229))))))))

(declare-fun b!620347 () Bool)

(declare-fun res!270078 () Bool)

(declare-fun e!376485 () Bool)

(assert (=> b!620347 (=> res!270078 e!376485)))

(assert (=> b!620347 (= res!270078 (not (isEmpty!4543 (tail!841 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229))))))))))

(declare-fun b!620348 () Bool)

(assert (=> b!620348 (= e!376485 (not (= (head!1312 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229))))) (c!114032 (regex!1285 (rule!2077 (_1!3822 (get!2414 lt!265229))))))))))

(declare-fun b!620349 () Bool)

(declare-fun e!376486 () Bool)

(assert (=> b!620349 (= e!376483 e!376486)))

(declare-fun c!114119 () Bool)

(assert (=> b!620349 (= c!114119 ((_ is EmptyLang!1619) (regex!1285 (rule!2077 (_1!3822 (get!2414 lt!265229))))))))

(declare-fun b!620350 () Bool)

(assert (=> b!620350 (= e!376483 (= lt!265486 call!41109))))

(declare-fun b!620351 () Bool)

(declare-fun res!270081 () Bool)

(declare-fun e!376487 () Bool)

(assert (=> b!620351 (=> res!270081 e!376487)))

(assert (=> b!620351 (= res!270081 (not ((_ is ElementMatch!1619) (regex!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))))))

(assert (=> b!620351 (= e!376486 e!376487)))

(declare-fun b!620352 () Bool)

(declare-fun nullable!465 (Regex!1619) Bool)

(assert (=> b!620352 (= e!376482 (nullable!465 (regex!1285 (rule!2077 (_1!3822 (get!2414 lt!265229))))))))

(declare-fun b!620353 () Bool)

(declare-fun res!270080 () Bool)

(assert (=> b!620353 (=> res!270080 e!376487)))

(assert (=> b!620353 (= res!270080 e!376484)))

(declare-fun res!270076 () Bool)

(assert (=> b!620353 (=> (not res!270076) (not e!376484))))

(assert (=> b!620353 (= res!270076 lt!265486)))

(declare-fun b!620354 () Bool)

(declare-fun e!376481 () Bool)

(assert (=> b!620354 (= e!376487 e!376481)))

(declare-fun res!270074 () Bool)

(assert (=> b!620354 (=> (not res!270074) (not e!376481))))

(assert (=> b!620354 (= res!270074 (not lt!265486))))

(declare-fun b!620355 () Bool)

(assert (=> b!620355 (= e!376481 e!376485)))

(declare-fun res!270075 () Bool)

(assert (=> b!620355 (=> res!270075 e!376485)))

(assert (=> b!620355 (= res!270075 call!41109)))

(declare-fun b!620356 () Bool)

(declare-fun res!270077 () Bool)

(assert (=> b!620356 (=> (not res!270077) (not e!376484))))

(assert (=> b!620356 (= res!270077 (not call!41109))))

(declare-fun b!620357 () Bool)

(assert (=> b!620357 (= e!376484 (= (head!1312 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265229))))) (c!114032 (regex!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))))))

(declare-fun b!620358 () Bool)

(assert (=> b!620358 (= e!376486 (not lt!265486))))

(assert (= (and d!217265 c!114118) b!620352))

(assert (= (and d!217265 (not c!114118)) b!620345))

(assert (= (and d!217265 c!114117) b!620350))

(assert (= (and d!217265 (not c!114117)) b!620349))

(assert (= (and b!620349 c!114119) b!620358))

(assert (= (and b!620349 (not c!114119)) b!620351))

(assert (= (and b!620351 (not res!270081)) b!620353))

(assert (= (and b!620353 res!270076) b!620356))

(assert (= (and b!620356 res!270077) b!620346))

(assert (= (and b!620346 res!270079) b!620357))

(assert (= (and b!620353 (not res!270080)) b!620354))

(assert (= (and b!620354 res!270074) b!620355))

(assert (= (and b!620355 (not res!270075)) b!620347))

(assert (= (and b!620347 (not res!270078)) b!620348))

(assert (= (or b!620350 b!620355 b!620356) bm!41104))

(assert (=> b!620357 m!887921))

(declare-fun m!888301 () Bool)

(assert (=> b!620357 m!888301))

(assert (=> b!620346 m!887921))

(declare-fun m!888303 () Bool)

(assert (=> b!620346 m!888303))

(assert (=> b!620346 m!888303))

(declare-fun m!888305 () Bool)

(assert (=> b!620346 m!888305))

(assert (=> d!217265 m!887921))

(declare-fun m!888307 () Bool)

(assert (=> d!217265 m!888307))

(declare-fun m!888309 () Bool)

(assert (=> d!217265 m!888309))

(assert (=> bm!41104 m!887921))

(assert (=> bm!41104 m!888307))

(assert (=> b!620345 m!887921))

(assert (=> b!620345 m!888301))

(assert (=> b!620345 m!888301))

(declare-fun m!888311 () Bool)

(assert (=> b!620345 m!888311))

(assert (=> b!620345 m!887921))

(assert (=> b!620345 m!888303))

(assert (=> b!620345 m!888311))

(assert (=> b!620345 m!888303))

(declare-fun m!888313 () Bool)

(assert (=> b!620345 m!888313))

(assert (=> b!620347 m!887921))

(assert (=> b!620347 m!888303))

(assert (=> b!620347 m!888303))

(assert (=> b!620347 m!888305))

(assert (=> b!620348 m!887921))

(assert (=> b!620348 m!888301))

(declare-fun m!888319 () Bool)

(assert (=> b!620352 m!888319))

(assert (=> b!620096 d!217265))

(assert (=> b!620096 d!217197))

(assert (=> b!620096 d!217231))

(assert (=> b!620096 d!217233))

(declare-fun d!217277 () Bool)

(declare-fun res!270089 () Bool)

(declare-fun e!376498 () Bool)

(assert (=> d!217277 (=> res!270089 e!376498)))

(assert (=> d!217277 (= res!270089 ((_ is Nil!6331) rules!3735))))

(assert (=> d!217277 (= (noDuplicateTag!479 thiss!25571 rules!3735 Nil!6334) e!376498)))

(declare-fun b!620368 () Bool)

(declare-fun e!376499 () Bool)

(assert (=> b!620368 (= e!376498 e!376499)))

(declare-fun res!270090 () Bool)

(assert (=> b!620368 (=> (not res!270090) (not e!376499))))

(declare-fun contains!1496 (List!6344 String!8293) Bool)

(assert (=> b!620368 (= res!270090 (not (contains!1496 Nil!6334 (tag!1547 (h!11732 rules!3735)))))))

(declare-fun b!620369 () Bool)

(assert (=> b!620369 (= e!376499 (noDuplicateTag!479 thiss!25571 (t!81632 rules!3735) (Cons!6334 (tag!1547 (h!11732 rules!3735)) Nil!6334)))))

(assert (= (and d!217277 (not res!270089)) b!620368))

(assert (= (and b!620368 res!270090) b!620369))

(declare-fun m!888329 () Bool)

(assert (=> b!620368 m!888329))

(declare-fun m!888331 () Bool)

(assert (=> b!620369 m!888331))

(assert (=> b!620066 d!217277))

(declare-fun d!217283 () Bool)

(assert (=> d!217283 (= (inv!8001 (tag!1547 (h!11732 (t!81632 rules!3735)))) (= (mod (str.len (value!41485 (tag!1547 (h!11732 (t!81632 rules!3735))))) 2) 0))))

(assert (=> b!620153 d!217283))

(declare-fun d!217285 () Bool)

(declare-fun res!270091 () Bool)

(declare-fun e!376500 () Bool)

(assert (=> d!217285 (=> (not res!270091) (not e!376500))))

(assert (=> d!217285 (= res!270091 (semiInverseModEq!517 (toChars!2061 (transformation!1285 (h!11732 (t!81632 rules!3735)))) (toValue!2202 (transformation!1285 (h!11732 (t!81632 rules!3735))))))))

(assert (=> d!217285 (= (inv!8004 (transformation!1285 (h!11732 (t!81632 rules!3735)))) e!376500)))

(declare-fun b!620370 () Bool)

(assert (=> b!620370 (= e!376500 (equivClasses!500 (toChars!2061 (transformation!1285 (h!11732 (t!81632 rules!3735)))) (toValue!2202 (transformation!1285 (h!11732 (t!81632 rules!3735))))))))

(assert (= (and d!217285 res!270091) b!620370))

(declare-fun m!888333 () Bool)

(assert (=> d!217285 m!888333))

(declare-fun m!888335 () Bool)

(assert (=> b!620370 m!888335))

(assert (=> b!620153 d!217285))

(assert (=> b!620095 d!217231))

(assert (=> b!620095 d!217233))

(assert (=> b!620095 d!217197))

(declare-fun d!217287 () Bool)

(declare-fun c!114123 () Bool)

(assert (=> d!217287 (= c!114123 ((_ is Node!2011) (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8))))))))

(declare-fun e!376505 () Bool)

(assert (=> d!217287 (= (inv!8008 (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8))))) e!376505)))

(declare-fun b!620377 () Bool)

(declare-fun inv!8010 (Conc!2011) Bool)

(assert (=> b!620377 (= e!376505 (inv!8010 (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8))))))))

(declare-fun b!620378 () Bool)

(declare-fun e!376506 () Bool)

(assert (=> b!620378 (= e!376505 e!376506)))

(declare-fun res!270094 () Bool)

(assert (=> b!620378 (= res!270094 (not ((_ is Leaf!3162) (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8)))))))))

(assert (=> b!620378 (=> res!270094 e!376506)))

(declare-fun b!620379 () Bool)

(declare-fun inv!8012 (Conc!2011) Bool)

(assert (=> b!620379 (= e!376506 (inv!8012 (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8))))))))

(assert (= (and d!217287 c!114123) b!620377))

(assert (= (and d!217287 (not c!114123)) b!620378))

(assert (= (and b!620378 (not res!270094)) b!620379))

(declare-fun m!888343 () Bool)

(assert (=> b!620377 m!888343))

(declare-fun m!888345 () Bool)

(assert (=> b!620379 m!888345))

(assert (=> b!620063 d!217287))

(declare-fun d!217293 () Bool)

(declare-fun isBalanced!538 (Conc!2011) Bool)

(assert (=> d!217293 (= (inv!8009 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8)))) (isBalanced!538 (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8))))))))

(declare-fun bs!71970 () Bool)

(assert (= bs!71970 d!217293))

(declare-fun m!888347 () Bool)

(assert (=> bs!71970 m!888347))

(assert (=> tb!53823 d!217293))

(assert (=> b!620098 d!217197))

(declare-fun d!217295 () Bool)

(declare-fun dynLambda!3603 (Int BalanceConc!4030) TokenValue!1309)

(assert (=> d!217295 (= (apply!1507 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))) (seqFromList!1440 (originalCharacters!1318 (_1!3822 (get!2414 lt!265229))))) (dynLambda!3603 (toValue!2202 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229))))) (seqFromList!1440 (originalCharacters!1318 (_1!3822 (get!2414 lt!265229))))))))

(declare-fun b_lambda!24561 () Bool)

(assert (=> (not b_lambda!24561) (not d!217295)))

(declare-fun tb!53863 () Bool)

(declare-fun t!81686 () Bool)

(assert (=> (and b!619901 (= (toValue!2202 (transformation!1285 (h!11732 rules!3735))) (toValue!2202 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))) t!81686) tb!53863))

(declare-fun result!60796 () Bool)

(assert (=> tb!53863 (= result!60796 (inv!21 (dynLambda!3603 (toValue!2202 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229))))) (seqFromList!1440 (originalCharacters!1318 (_1!3822 (get!2414 lt!265229)))))))))

(declare-fun m!888349 () Bool)

(assert (=> tb!53863 m!888349))

(assert (=> d!217295 t!81686))

(declare-fun b_and!61635 () Bool)

(assert (= b_and!61571 (and (=> t!81686 result!60796) b_and!61635)))

(declare-fun tb!53865 () Bool)

(declare-fun t!81688 () Bool)

(assert (=> (and b!619896 (= (toValue!2202 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (toValue!2202 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))) t!81688) tb!53865))

(declare-fun result!60800 () Bool)

(assert (= result!60800 result!60796))

(assert (=> d!217295 t!81688))

(declare-fun b_and!61637 () Bool)

(assert (= b_and!61575 (and (=> t!81688 result!60800) b_and!61637)))

(declare-fun t!81690 () Bool)

(declare-fun tb!53867 () Bool)

(assert (=> (and b!620143 (= (toValue!2202 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))) (toValue!2202 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))) t!81690) tb!53867))

(declare-fun result!60802 () Bool)

(assert (= result!60802 result!60796))

(assert (=> d!217295 t!81690))

(declare-fun b_and!61639 () Bool)

(assert (= b_and!61595 (and (=> t!81690 result!60802) b_and!61639)))

(declare-fun tb!53869 () Bool)

(declare-fun t!81692 () Bool)

(assert (=> (and b!620154 (= (toValue!2202 (transformation!1285 (h!11732 (t!81632 rules!3735)))) (toValue!2202 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))) t!81692) tb!53869))

(declare-fun result!60804 () Bool)

(assert (= result!60804 result!60796))

(assert (=> d!217295 t!81692))

(declare-fun b_and!61641 () Bool)

(assert (= b_and!61599 (and (=> t!81692 result!60804) b_and!61641)))

(assert (=> d!217295 m!887899))

(declare-fun m!888351 () Bool)

(assert (=> d!217295 m!888351))

(assert (=> b!620098 d!217295))

(declare-fun d!217297 () Bool)

(assert (=> d!217297 (= (seqFromList!1440 (originalCharacters!1318 (_1!3822 (get!2414 lt!265229)))) (fromListB!626 (originalCharacters!1318 (_1!3822 (get!2414 lt!265229)))))))

(declare-fun bs!71971 () Bool)

(assert (= bs!71971 d!217297))

(declare-fun m!888353 () Bool)

(assert (=> bs!71971 m!888353))

(assert (=> b!620098 d!217297))

(declare-fun d!217299 () Bool)

(assert (=> d!217299 true))

(declare-fun order!4931 () Int)

(declare-fun lambda!16291 () Int)

(declare-fun order!4933 () Int)

(declare-fun dynLambda!3604 (Int Int) Int)

(declare-fun dynLambda!3605 (Int Int) Int)

(assert (=> d!217299 (< (dynLambda!3604 order!4931 (toChars!2061 (transformation!1285 (h!11732 rules!3735)))) (dynLambda!3605 order!4933 lambda!16291))))

(assert (=> d!217299 true))

(assert (=> d!217299 (< (dynLambda!3600 order!4927 (toValue!2202 (transformation!1285 (h!11732 rules!3735)))) (dynLambda!3605 order!4933 lambda!16291))))

(declare-fun Forall!312 (Int) Bool)

(assert (=> d!217299 (= (semiInverseModEq!517 (toChars!2061 (transformation!1285 (h!11732 rules!3735))) (toValue!2202 (transformation!1285 (h!11732 rules!3735)))) (Forall!312 lambda!16291))))

(declare-fun bs!71972 () Bool)

(assert (= bs!71972 d!217299))

(declare-fun m!888355 () Bool)

(assert (=> bs!71972 m!888355))

(assert (=> d!217131 d!217299))

(declare-fun b!620442 () Bool)

(declare-fun res!270133 () Bool)

(declare-fun e!376538 () Bool)

(assert (=> b!620442 (=> (not res!270133) (not e!376538))))

(declare-fun lt!265523 () Option!1623)

(assert (=> b!620442 (= res!270133 (< (size!4929 (_2!3822 (get!2414 lt!265523))) (size!4929 input!3206)))))

(declare-fun b!620443 () Bool)

(declare-fun e!376539 () Option!1623)

(assert (=> b!620443 (= e!376539 None!1622)))

(declare-fun b!620444 () Bool)

(declare-fun res!270134 () Bool)

(assert (=> b!620444 (=> (not res!270134) (not e!376538))))

(assert (=> b!620444 (= res!270134 (= (rule!2077 (_1!3822 (get!2414 lt!265523))) (h!11732 rules!3735)))))

(declare-fun b!620445 () Bool)

(declare-fun res!270137 () Bool)

(assert (=> b!620445 (=> (not res!270137) (not e!376538))))

(assert (=> b!620445 (= res!270137 (= (value!41486 (_1!3822 (get!2414 lt!265523))) (apply!1507 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265523)))) (seqFromList!1440 (originalCharacters!1318 (_1!3822 (get!2414 lt!265523)))))))))

(declare-fun d!217301 () Bool)

(declare-fun e!376540 () Bool)

(assert (=> d!217301 e!376540))

(declare-fun res!270136 () Bool)

(assert (=> d!217301 (=> res!270136 e!376540)))

(assert (=> d!217301 (= res!270136 (isEmpty!4544 lt!265523))))

(assert (=> d!217301 (= lt!265523 e!376539)))

(declare-fun c!114133 () Bool)

(declare-datatypes ((tuple2!7130 0))(
  ( (tuple2!7131 (_1!3829 List!6340) (_2!3829 List!6340)) )
))
(declare-fun lt!265522 () tuple2!7130)

(assert (=> d!217301 (= c!114133 (isEmpty!4543 (_1!3829 lt!265522)))))

(declare-fun findLongestMatch!197 (Regex!1619 List!6340) tuple2!7130)

(assert (=> d!217301 (= lt!265522 (findLongestMatch!197 (regex!1285 (h!11732 rules!3735)) input!3206))))

(declare-fun ruleValid!456 (LexerInterface!1173 Rule!2370) Bool)

(assert (=> d!217301 (ruleValid!456 thiss!25571 (h!11732 rules!3735))))

(assert (=> d!217301 (= (maxPrefixOneRule!505 thiss!25571 (h!11732 rules!3735) input!3206) lt!265523)))

(declare-fun b!620446 () Bool)

(assert (=> b!620446 (= e!376539 (Some!1622 (tuple2!7117 (Token!2295 (apply!1507 (transformation!1285 (h!11732 rules!3735)) (seqFromList!1440 (_1!3829 lt!265522))) (h!11732 rules!3735) (size!4928 (seqFromList!1440 (_1!3829 lt!265522))) (_1!3829 lt!265522)) (_2!3829 lt!265522))))))

(declare-fun lt!265521 () Unit!11436)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!202 (Regex!1619 List!6340) Unit!11436)

(assert (=> b!620446 (= lt!265521 (longestMatchIsAcceptedByMatchOrIsEmpty!202 (regex!1285 (h!11732 rules!3735)) input!3206))))

(declare-fun res!270138 () Bool)

(declare-fun findLongestMatchInner!218 (Regex!1619 List!6340 Int List!6340 List!6340 Int) tuple2!7130)

(assert (=> b!620446 (= res!270138 (isEmpty!4543 (_1!3829 (findLongestMatchInner!218 (regex!1285 (h!11732 rules!3735)) Nil!6330 (size!4929 Nil!6330) input!3206 input!3206 (size!4929 input!3206)))))))

(declare-fun e!376537 () Bool)

(assert (=> b!620446 (=> res!270138 e!376537)))

(assert (=> b!620446 e!376537))

(declare-fun lt!265524 () Unit!11436)

(assert (=> b!620446 (= lt!265524 lt!265521)))

(declare-fun lt!265520 () Unit!11436)

(declare-fun lemmaSemiInverse!273 (TokenValueInjection!2386 BalanceConc!4030) Unit!11436)

(assert (=> b!620446 (= lt!265520 (lemmaSemiInverse!273 (transformation!1285 (h!11732 rules!3735)) (seqFromList!1440 (_1!3829 lt!265522))))))

(declare-fun b!620447 () Bool)

(assert (=> b!620447 (= e!376538 (= (size!4922 (_1!3822 (get!2414 lt!265523))) (size!4929 (originalCharacters!1318 (_1!3822 (get!2414 lt!265523))))))))

(declare-fun b!620448 () Bool)

(assert (=> b!620448 (= e!376537 (matchR!693 (regex!1285 (h!11732 rules!3735)) (_1!3829 (findLongestMatchInner!218 (regex!1285 (h!11732 rules!3735)) Nil!6330 (size!4929 Nil!6330) input!3206 input!3206 (size!4929 input!3206)))))))

(declare-fun b!620449 () Bool)

(declare-fun res!270139 () Bool)

(assert (=> b!620449 (=> (not res!270139) (not e!376538))))

(assert (=> b!620449 (= res!270139 (= (++!1749 (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265523)))) (_2!3822 (get!2414 lt!265523))) input!3206))))

(declare-fun b!620450 () Bool)

(assert (=> b!620450 (= e!376540 e!376538)))

(declare-fun res!270135 () Bool)

(assert (=> b!620450 (=> (not res!270135) (not e!376538))))

(assert (=> b!620450 (= res!270135 (matchR!693 (regex!1285 (h!11732 rules!3735)) (list!2641 (charsOf!886 (_1!3822 (get!2414 lt!265523))))))))

(assert (= (and d!217301 c!114133) b!620443))

(assert (= (and d!217301 (not c!114133)) b!620446))

(assert (= (and b!620446 (not res!270138)) b!620448))

(assert (= (and d!217301 (not res!270136)) b!620450))

(assert (= (and b!620450 res!270135) b!620449))

(assert (= (and b!620449 res!270139) b!620442))

(assert (= (and b!620442 res!270133) b!620444))

(assert (= (and b!620444 res!270134) b!620445))

(assert (= (and b!620445 res!270137) b!620447))

(declare-fun m!888411 () Bool)

(assert (=> b!620447 m!888411))

(declare-fun m!888413 () Bool)

(assert (=> b!620447 m!888413))

(assert (=> b!620442 m!888411))

(declare-fun m!888415 () Bool)

(assert (=> b!620442 m!888415))

(assert (=> b!620442 m!887907))

(assert (=> b!620445 m!888411))

(declare-fun m!888417 () Bool)

(assert (=> b!620445 m!888417))

(assert (=> b!620445 m!888417))

(declare-fun m!888419 () Bool)

(assert (=> b!620445 m!888419))

(assert (=> b!620449 m!888411))

(declare-fun m!888421 () Bool)

(assert (=> b!620449 m!888421))

(assert (=> b!620449 m!888421))

(declare-fun m!888423 () Bool)

(assert (=> b!620449 m!888423))

(assert (=> b!620449 m!888423))

(declare-fun m!888425 () Bool)

(assert (=> b!620449 m!888425))

(declare-fun m!888427 () Bool)

(assert (=> b!620446 m!888427))

(declare-fun m!888429 () Bool)

(assert (=> b!620446 m!888429))

(assert (=> b!620446 m!888429))

(declare-fun m!888431 () Bool)

(assert (=> b!620446 m!888431))

(declare-fun m!888433 () Bool)

(assert (=> b!620446 m!888433))

(assert (=> b!620446 m!887907))

(declare-fun m!888435 () Bool)

(assert (=> b!620446 m!888435))

(assert (=> b!620446 m!888433))

(declare-fun m!888437 () Bool)

(assert (=> b!620446 m!888437))

(assert (=> b!620446 m!888429))

(declare-fun m!888439 () Bool)

(assert (=> b!620446 m!888439))

(assert (=> b!620446 m!887907))

(assert (=> b!620446 m!888429))

(declare-fun m!888441 () Bool)

(assert (=> b!620446 m!888441))

(assert (=> b!620450 m!888411))

(assert (=> b!620450 m!888421))

(assert (=> b!620450 m!888421))

(assert (=> b!620450 m!888423))

(assert (=> b!620450 m!888423))

(declare-fun m!888443 () Bool)

(assert (=> b!620450 m!888443))

(assert (=> b!620444 m!888411))

(assert (=> b!620448 m!888433))

(assert (=> b!620448 m!887907))

(assert (=> b!620448 m!888433))

(assert (=> b!620448 m!887907))

(assert (=> b!620448 m!888435))

(declare-fun m!888445 () Bool)

(assert (=> b!620448 m!888445))

(declare-fun m!888447 () Bool)

(assert (=> d!217301 m!888447))

(declare-fun m!888449 () Bool)

(assert (=> d!217301 m!888449))

(declare-fun m!888451 () Bool)

(assert (=> d!217301 m!888451))

(declare-fun m!888453 () Bool)

(assert (=> d!217301 m!888453))

(assert (=> bm!41100 d!217301))

(declare-fun d!217317 () Bool)

(declare-fun c!114138 () Bool)

(assert (=> d!217317 (= c!114138 ((_ is Empty!2011) (c!114031 (_2!3823 lt!265188))))))

(declare-fun e!376554 () List!6340)

(assert (=> d!217317 (= (list!2645 (c!114031 (_2!3823 lt!265188))) e!376554)))

(declare-fun b!620472 () Bool)

(declare-fun e!376555 () List!6340)

(assert (=> b!620472 (= e!376554 e!376555)))

(declare-fun c!114139 () Bool)

(assert (=> b!620472 (= c!114139 ((_ is Leaf!3162) (c!114031 (_2!3823 lt!265188))))))

(declare-fun b!620471 () Bool)

(assert (=> b!620471 (= e!376554 Nil!6330)))

(declare-fun b!620473 () Bool)

(declare-fun list!2647 (IArray!4023) List!6340)

(assert (=> b!620473 (= e!376555 (list!2647 (xs!4648 (c!114031 (_2!3823 lt!265188)))))))

(declare-fun b!620474 () Bool)

(assert (=> b!620474 (= e!376555 (++!1749 (list!2645 (left!5019 (c!114031 (_2!3823 lt!265188)))) (list!2645 (right!5349 (c!114031 (_2!3823 lt!265188))))))))

(assert (= (and d!217317 c!114138) b!620471))

(assert (= (and d!217317 (not c!114138)) b!620472))

(assert (= (and b!620472 c!114139) b!620473))

(assert (= (and b!620472 (not c!114139)) b!620474))

(declare-fun m!888463 () Bool)

(assert (=> b!620473 m!888463))

(declare-fun m!888465 () Bool)

(assert (=> b!620474 m!888465))

(declare-fun m!888467 () Bool)

(assert (=> b!620474 m!888467))

(assert (=> b!620474 m!888465))

(assert (=> b!620474 m!888467))

(declare-fun m!888469 () Bool)

(assert (=> b!620474 m!888469))

(assert (=> d!217183 d!217317))

(declare-fun d!217323 () Bool)

(declare-fun lt!265533 () Int)

(assert (=> d!217323 (>= lt!265533 0)))

(declare-fun e!376560 () Int)

(assert (=> d!217323 (= lt!265533 e!376560)))

(declare-fun c!114140 () Bool)

(assert (=> d!217323 (= c!114140 ((_ is Nil!6330) (_2!3822 (get!2414 lt!265229))))))

(assert (=> d!217323 (= (size!4929 (_2!3822 (get!2414 lt!265229))) lt!265533)))

(declare-fun b!620479 () Bool)

(assert (=> b!620479 (= e!376560 0)))

(declare-fun b!620480 () Bool)

(assert (=> b!620480 (= e!376560 (+ 1 (size!4929 (t!81631 (_2!3822 (get!2414 lt!265229))))))))

(assert (= (and d!217323 c!114140) b!620479))

(assert (= (and d!217323 (not c!114140)) b!620480))

(declare-fun m!888471 () Bool)

(assert (=> b!620480 m!888471))

(assert (=> b!620097 d!217323))

(assert (=> b!620097 d!217197))

(declare-fun d!217325 () Bool)

(declare-fun lt!265534 () Int)

(assert (=> d!217325 (>= lt!265534 0)))

(declare-fun e!376561 () Int)

(assert (=> d!217325 (= lt!265534 e!376561)))

(declare-fun c!114141 () Bool)

(assert (=> d!217325 (= c!114141 ((_ is Nil!6330) input!3206))))

(assert (=> d!217325 (= (size!4929 input!3206) lt!265534)))

(declare-fun b!620481 () Bool)

(assert (=> b!620481 (= e!376561 0)))

(declare-fun b!620482 () Bool)

(assert (=> b!620482 (= e!376561 (+ 1 (size!4929 (t!81631 input!3206))))))

(assert (= (and d!217325 c!114141) b!620481))

(assert (= (and d!217325 (not c!114141)) b!620482))

(declare-fun m!888473 () Bool)

(assert (=> b!620482 m!888473))

(assert (=> b!620097 d!217325))

(declare-fun d!217327 () Bool)

(assert (=> d!217327 (= (isEmpty!4544 lt!265229) (not ((_ is Some!1622) lt!265229)))))

(assert (=> d!217179 d!217327))

(declare-fun d!217329 () Bool)

(declare-fun e!376575 () Bool)

(assert (=> d!217329 e!376575))

(declare-fun res!270171 () Bool)

(assert (=> d!217329 (=> res!270171 e!376575)))

(declare-fun lt!265540 () Bool)

(assert (=> d!217329 (= res!270171 (not lt!265540))))

(declare-fun e!376576 () Bool)

(assert (=> d!217329 (= lt!265540 e!376576)))

(declare-fun res!270172 () Bool)

(assert (=> d!217329 (=> res!270172 e!376576)))

(assert (=> d!217329 (= res!270172 ((_ is Nil!6330) input!3206))))

(assert (=> d!217329 (= (isPrefix!905 input!3206 input!3206) lt!265540)))

(declare-fun b!620500 () Bool)

(assert (=> b!620500 (= e!376575 (>= (size!4929 input!3206) (size!4929 input!3206)))))

(declare-fun b!620498 () Bool)

(declare-fun res!270173 () Bool)

(declare-fun e!376574 () Bool)

(assert (=> b!620498 (=> (not res!270173) (not e!376574))))

(assert (=> b!620498 (= res!270173 (= (head!1312 input!3206) (head!1312 input!3206)))))

(declare-fun b!620497 () Bool)

(assert (=> b!620497 (= e!376576 e!376574)))

(declare-fun res!270170 () Bool)

(assert (=> b!620497 (=> (not res!270170) (not e!376574))))

(assert (=> b!620497 (= res!270170 (not ((_ is Nil!6330) input!3206)))))

(declare-fun b!620499 () Bool)

(assert (=> b!620499 (= e!376574 (isPrefix!905 (tail!841 input!3206) (tail!841 input!3206)))))

(assert (= (and d!217329 (not res!270172)) b!620497))

(assert (= (and b!620497 res!270170) b!620498))

(assert (= (and b!620498 res!270173) b!620499))

(assert (= (and d!217329 (not res!270171)) b!620500))

(assert (=> b!620500 m!887907))

(assert (=> b!620500 m!887907))

(declare-fun m!888479 () Bool)

(assert (=> b!620498 m!888479))

(assert (=> b!620498 m!888479))

(declare-fun m!888481 () Bool)

(assert (=> b!620499 m!888481))

(assert (=> b!620499 m!888481))

(assert (=> b!620499 m!888481))

(assert (=> b!620499 m!888481))

(declare-fun m!888483 () Bool)

(assert (=> b!620499 m!888483))

(assert (=> d!217179 d!217329))

(declare-fun d!217333 () Bool)

(assert (=> d!217333 (isPrefix!905 input!3206 input!3206)))

(declare-fun lt!265544 () Unit!11436)

(declare-fun choose!4540 (List!6340 List!6340) Unit!11436)

(assert (=> d!217333 (= lt!265544 (choose!4540 input!3206 input!3206))))

(assert (=> d!217333 (= (lemmaIsPrefixRefl!618 input!3206 input!3206) lt!265544)))

(declare-fun bs!71979 () Bool)

(assert (= bs!71979 d!217333))

(assert (=> bs!71979 m!887913))

(declare-fun m!888491 () Bool)

(assert (=> bs!71979 m!888491))

(assert (=> d!217179 d!217333))

(declare-fun d!217337 () Bool)

(assert (=> d!217337 true))

(declare-fun lt!265547 () Bool)

(declare-fun lambda!16301 () Int)

(declare-fun forall!1573 (List!6341 Int) Bool)

(assert (=> d!217337 (= lt!265547 (forall!1573 rules!3735 lambda!16301))))

(declare-fun e!376583 () Bool)

(assert (=> d!217337 (= lt!265547 e!376583)))

(declare-fun res!270181 () Bool)

(assert (=> d!217337 (=> res!270181 e!376583)))

(assert (=> d!217337 (= res!270181 (not ((_ is Cons!6331) rules!3735)))))

(assert (=> d!217337 (= (rulesValidInductive!494 thiss!25571 rules!3735) lt!265547)))

(declare-fun b!620511 () Bool)

(declare-fun e!376584 () Bool)

(assert (=> b!620511 (= e!376583 e!376584)))

(declare-fun res!270180 () Bool)

(assert (=> b!620511 (=> (not res!270180) (not e!376584))))

(assert (=> b!620511 (= res!270180 (ruleValid!456 thiss!25571 (h!11732 rules!3735)))))

(declare-fun b!620512 () Bool)

(assert (=> b!620512 (= e!376584 (rulesValidInductive!494 thiss!25571 (t!81632 rules!3735)))))

(assert (= (and d!217337 (not res!270181)) b!620511))

(assert (= (and b!620511 res!270180) b!620512))

(declare-fun m!888495 () Bool)

(assert (=> d!217337 m!888495))

(assert (=> b!620511 m!888453))

(assert (=> b!620512 m!888253))

(assert (=> d!217179 d!217337))

(declare-fun b!620524 () Bool)

(declare-fun e!376589 () List!6342)

(declare-fun e!376590 () List!6342)

(assert (=> b!620524 (= e!376589 e!376590)))

(declare-fun c!114147 () Bool)

(assert (=> b!620524 (= c!114147 ((_ is Leaf!3163) (c!114033 (_1!3823 lt!265188))))))

(declare-fun b!620523 () Bool)

(assert (=> b!620523 (= e!376589 Nil!6332)))

(declare-fun b!620526 () Bool)

(assert (=> b!620526 (= e!376590 (++!1752 (list!2644 (left!5020 (c!114033 (_1!3823 lt!265188)))) (list!2644 (right!5350 (c!114033 (_1!3823 lt!265188))))))))

(declare-fun d!217341 () Bool)

(declare-fun c!114146 () Bool)

(assert (=> d!217341 (= c!114146 ((_ is Empty!2012) (c!114033 (_1!3823 lt!265188))))))

(assert (=> d!217341 (= (list!2644 (c!114033 (_1!3823 lt!265188))) e!376589)))

(declare-fun b!620525 () Bool)

(declare-fun list!2649 (IArray!4025) List!6342)

(assert (=> b!620525 (= e!376590 (list!2649 (xs!4649 (c!114033 (_1!3823 lt!265188)))))))

(assert (= (and d!217341 c!114146) b!620523))

(assert (= (and d!217341 (not c!114146)) b!620524))

(assert (= (and b!620524 c!114147) b!620525))

(assert (= (and b!620524 (not c!114147)) b!620526))

(declare-fun m!888497 () Bool)

(assert (=> b!620526 m!888497))

(declare-fun m!888499 () Bool)

(assert (=> b!620526 m!888499))

(assert (=> b!620526 m!888497))

(assert (=> b!620526 m!888499))

(declare-fun m!888501 () Bool)

(assert (=> b!620526 m!888501))

(declare-fun m!888503 () Bool)

(assert (=> b!620525 m!888503))

(assert (=> d!217135 d!217341))

(declare-fun bs!71981 () Bool)

(declare-fun d!217343 () Bool)

(assert (= bs!71981 (and d!217343 d!217337)))

(declare-fun lambda!16304 () Int)

(assert (=> bs!71981 (= lambda!16304 lambda!16301)))

(assert (=> d!217343 true))

(declare-fun lt!265552 () Bool)

(assert (=> d!217343 (= lt!265552 (rulesValidInductive!494 thiss!25571 rules!3735))))

(assert (=> d!217343 (= lt!265552 (forall!1573 rules!3735 lambda!16304))))

(assert (=> d!217343 (= (rulesValid!479 thiss!25571 rules!3735) lt!265552)))

(declare-fun bs!71982 () Bool)

(assert (= bs!71982 d!217343))

(assert (=> bs!71982 m!887917))

(declare-fun m!888505 () Bool)

(assert (=> bs!71982 m!888505))

(assert (=> d!217171 d!217343))

(declare-fun d!217345 () Bool)

(assert (=> d!217345 (= (list!2641 (_2!3823 lt!265212)) (list!2645 (c!114031 (_2!3823 lt!265212))))))

(declare-fun bs!71983 () Bool)

(assert (= bs!71983 d!217345))

(declare-fun m!888507 () Bool)

(assert (=> bs!71983 m!888507))

(assert (=> b!620050 d!217345))

(declare-fun b!620610 () Bool)

(declare-fun e!376636 () Bool)

(declare-fun lt!265565 () tuple2!7122)

(assert (=> b!620610 (= e!376636 (= (_2!3825 lt!265565) (list!2641 (seqFromList!1440 input!3206))))))

(declare-fun d!217347 () Bool)

(assert (=> d!217347 e!376636))

(declare-fun c!114171 () Bool)

(assert (=> d!217347 (= c!114171 (> (size!4923 (_1!3825 lt!265565)) 0))))

(declare-fun e!376635 () tuple2!7122)

(assert (=> d!217347 (= lt!265565 e!376635)))

(declare-fun c!114170 () Bool)

(declare-fun lt!265566 () Option!1623)

(assert (=> d!217347 (= c!114170 ((_ is Some!1622) lt!265566))))

(assert (=> d!217347 (= lt!265566 (maxPrefix!855 thiss!25571 rules!3735 (list!2641 (seqFromList!1440 input!3206))))))

(assert (=> d!217347 (= (lexList!309 thiss!25571 rules!3735 (list!2641 (seqFromList!1440 input!3206))) lt!265565)))

(declare-fun b!620611 () Bool)

(assert (=> b!620611 (= e!376635 (tuple2!7123 Nil!6332 (list!2641 (seqFromList!1440 input!3206))))))

(declare-fun b!620612 () Bool)

(declare-fun lt!265567 () tuple2!7122)

(assert (=> b!620612 (= e!376635 (tuple2!7123 (Cons!6332 (_1!3822 (v!16549 lt!265566)) (_1!3825 lt!265567)) (_2!3825 lt!265567)))))

(assert (=> b!620612 (= lt!265567 (lexList!309 thiss!25571 rules!3735 (_2!3822 (v!16549 lt!265566))))))

(declare-fun b!620613 () Bool)

(declare-fun e!376634 () Bool)

(assert (=> b!620613 (= e!376636 e!376634)))

(declare-fun res!270220 () Bool)

(assert (=> b!620613 (= res!270220 (< (size!4929 (_2!3825 lt!265565)) (size!4929 (list!2641 (seqFromList!1440 input!3206)))))))

(assert (=> b!620613 (=> (not res!270220) (not e!376634))))

(declare-fun b!620614 () Bool)

(declare-fun isEmpty!4547 (List!6342) Bool)

(assert (=> b!620614 (= e!376634 (not (isEmpty!4547 (_1!3825 lt!265565))))))

(assert (= (and d!217347 c!114170) b!620612))

(assert (= (and d!217347 (not c!114170)) b!620611))

(assert (= (and d!217347 c!114171) b!620613))

(assert (= (and d!217347 (not c!114171)) b!620610))

(assert (= (and b!620613 res!270220) b!620614))

(declare-fun m!888591 () Bool)

(assert (=> d!217347 m!888591))

(assert (=> d!217347 m!887859))

(declare-fun m!888593 () Bool)

(assert (=> d!217347 m!888593))

(declare-fun m!888595 () Bool)

(assert (=> b!620612 m!888595))

(declare-fun m!888597 () Bool)

(assert (=> b!620613 m!888597))

(assert (=> b!620613 m!887859))

(declare-fun m!888599 () Bool)

(assert (=> b!620613 m!888599))

(declare-fun m!888601 () Bool)

(assert (=> b!620614 m!888601))

(assert (=> b!620050 d!217347))

(declare-fun d!217373 () Bool)

(assert (=> d!217373 (= (list!2641 (seqFromList!1440 input!3206)) (list!2645 (c!114031 (seqFromList!1440 input!3206))))))

(declare-fun bs!71988 () Bool)

(assert (= bs!71988 d!217373))

(declare-fun m!888603 () Bool)

(assert (=> bs!71988 m!888603))

(assert (=> b!620050 d!217373))

(declare-fun d!217375 () Bool)

(declare-fun lt!265570 () Bool)

(assert (=> d!217375 (= lt!265570 (isEmpty!4547 (list!2640 (_1!3823 lt!265212))))))

(declare-fun isEmpty!4548 (Conc!2012) Bool)

(assert (=> d!217375 (= lt!265570 (isEmpty!4548 (c!114033 (_1!3823 lt!265212))))))

(assert (=> d!217375 (= (isEmpty!4542 (_1!3823 lt!265212)) lt!265570)))

(declare-fun bs!71989 () Bool)

(assert (= bs!71989 d!217375))

(assert (=> bs!71989 m!887857))

(assert (=> bs!71989 m!887857))

(declare-fun m!888605 () Bool)

(assert (=> bs!71989 m!888605))

(declare-fun m!888607 () Bool)

(assert (=> bs!71989 m!888607))

(assert (=> b!620051 d!217375))

(declare-fun d!217377 () Bool)

(declare-fun charsToBigInt!1 (List!6339) Int)

(assert (=> d!217377 (= (inv!17 (value!41486 (h!11733 producedTokens!8))) (= (charsToBigInt!1 (text!9611 (value!41486 (h!11733 producedTokens!8)))) (value!41478 (value!41486 (h!11733 producedTokens!8)))))))

(declare-fun bs!71990 () Bool)

(assert (= bs!71990 d!217377))

(declare-fun m!888615 () Bool)

(assert (=> bs!71990 m!888615))

(assert (=> b!620110 d!217377))

(declare-fun d!217379 () Bool)

(declare-fun lt!265573 () Int)

(assert (=> d!217379 (= lt!265573 (size!4929 (list!2641 (_2!3823 lt!265212))))))

(declare-fun size!4933 (Conc!2011) Int)

(assert (=> d!217379 (= lt!265573 (size!4933 (c!114031 (_2!3823 lt!265212))))))

(assert (=> d!217379 (= (size!4928 (_2!3823 lt!265212)) lt!265573)))

(declare-fun bs!71991 () Bool)

(assert (= bs!71991 d!217379))

(assert (=> bs!71991 m!887869))

(assert (=> bs!71991 m!887869))

(declare-fun m!888621 () Bool)

(assert (=> bs!71991 m!888621))

(declare-fun m!888623 () Bool)

(assert (=> bs!71991 m!888623))

(assert (=> b!620049 d!217379))

(declare-fun d!217381 () Bool)

(declare-fun lt!265574 () Int)

(assert (=> d!217381 (= lt!265574 (size!4929 (list!2641 (seqFromList!1440 input!3206))))))

(assert (=> d!217381 (= lt!265574 (size!4933 (c!114031 (seqFromList!1440 input!3206))))))

(assert (=> d!217381 (= (size!4928 (seqFromList!1440 input!3206)) lt!265574)))

(declare-fun bs!71992 () Bool)

(assert (= bs!71992 d!217381))

(assert (=> bs!71992 m!887739))

(assert (=> bs!71992 m!887859))

(assert (=> bs!71992 m!887859))

(assert (=> bs!71992 m!888599))

(declare-fun m!888625 () Bool)

(assert (=> bs!71992 m!888625))

(assert (=> b!620049 d!217381))

(declare-fun d!217383 () Bool)

(declare-fun e!376671 () Bool)

(assert (=> d!217383 e!376671))

(declare-fun res!270223 () Bool)

(assert (=> d!217383 (=> (not res!270223) (not e!376671))))

(declare-fun lt!265577 () BalanceConc!4030)

(assert (=> d!217383 (= res!270223 (= (list!2641 lt!265577) input!3206))))

(declare-fun fromList!289 (List!6340) Conc!2011)

(assert (=> d!217383 (= lt!265577 (BalanceConc!4031 (fromList!289 input!3206)))))

(assert (=> d!217383 (= (fromListB!626 input!3206) lt!265577)))

(declare-fun b!620687 () Bool)

(assert (=> b!620687 (= e!376671 (isBalanced!538 (fromList!289 input!3206)))))

(assert (= (and d!217383 res!270223) b!620687))

(declare-fun m!888635 () Bool)

(assert (=> d!217383 m!888635))

(declare-fun m!888637 () Bool)

(assert (=> d!217383 m!888637))

(assert (=> b!620687 m!888637))

(assert (=> b!620687 m!888637))

(declare-fun m!888639 () Bool)

(assert (=> b!620687 m!888639))

(assert (=> d!217167 d!217383))

(declare-fun d!217385 () Bool)

(declare-fun charsToBigInt!0 (List!6339 Int) Int)

(assert (=> d!217385 (= (inv!15 (value!41486 (h!11733 producedTokens!8))) (= (charsToBigInt!0 (text!9612 (value!41486 (h!11733 producedTokens!8))) 0) (value!41481 (value!41486 (h!11733 producedTokens!8)))))))

(declare-fun bs!71993 () Bool)

(assert (= bs!71993 d!217385))

(declare-fun m!888641 () Bool)

(assert (=> bs!71993 m!888641))

(assert (=> b!620113 d!217385))

(declare-fun bs!71994 () Bool)

(declare-fun d!217387 () Bool)

(assert (= bs!71994 (and d!217387 d!217299)))

(declare-fun lambda!16306 () Int)

(assert (=> bs!71994 (= (and (= (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (toChars!2061 (transformation!1285 (h!11732 rules!3735)))) (= (toValue!2202 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (toValue!2202 (transformation!1285 (h!11732 rules!3735))))) (= lambda!16306 lambda!16291))))

(assert (=> d!217387 true))

(assert (=> d!217387 (< (dynLambda!3604 order!4931 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8))))) (dynLambda!3605 order!4933 lambda!16306))))

(assert (=> d!217387 true))

(assert (=> d!217387 (< (dynLambda!3600 order!4927 (toValue!2202 (transformation!1285 (rule!2077 (h!11733 producedTokens!8))))) (dynLambda!3605 order!4933 lambda!16306))))

(assert (=> d!217387 (= (semiInverseModEq!517 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (toValue!2202 (transformation!1285 (rule!2077 (h!11733 producedTokens!8))))) (Forall!312 lambda!16306))))

(declare-fun bs!71995 () Bool)

(assert (= bs!71995 d!217387))

(declare-fun m!888643 () Bool)

(assert (=> bs!71995 m!888643))

(assert (=> d!217187 d!217387))

(declare-fun d!217389 () Bool)

(declare-fun lt!265578 () Int)

(assert (=> d!217389 (>= lt!265578 0)))

(declare-fun e!376672 () Int)

(assert (=> d!217389 (= lt!265578 e!376672)))

(declare-fun c!114173 () Bool)

(assert (=> d!217389 (= c!114173 ((_ is Nil!6332) (t!81633 producedTokens!8)))))

(assert (=> d!217389 (= (size!4923 (t!81633 producedTokens!8)) lt!265578)))

(declare-fun b!620688 () Bool)

(assert (=> b!620688 (= e!376672 0)))

(declare-fun b!620689 () Bool)

(assert (=> b!620689 (= e!376672 (+ 1 (size!4923 (t!81633 (t!81633 producedTokens!8)))))))

(assert (= (and d!217389 c!114173) b!620688))

(assert (= (and d!217389 (not c!114173)) b!620689))

(declare-fun m!888645 () Bool)

(assert (=> b!620689 m!888645))

(assert (=> b!620072 d!217389))

(declare-fun d!217391 () Bool)

(assert (=> d!217391 (= (list!2640 (_1!3823 lt!265212)) (list!2644 (c!114033 (_1!3823 lt!265212))))))

(declare-fun bs!71996 () Bool)

(assert (= bs!71996 d!217391))

(declare-fun m!888647 () Bool)

(assert (=> bs!71996 m!888647))

(assert (=> b!620052 d!217391))

(assert (=> b!620052 d!217347))

(assert (=> b!620052 d!217373))

(declare-fun b!620690 () Bool)

(declare-fun e!376673 () Bool)

(declare-fun tp!192514 () Bool)

(assert (=> b!620690 (= e!376673 (and tp_is_empty!3597 tp!192514))))

(assert (=> b!620159 (= tp!192420 e!376673)))

(assert (= (and b!620159 ((_ is Cons!6330) (t!81631 (originalCharacters!1318 (h!11733 producedTokens!8))))) b!620690))

(declare-fun b!620694 () Bool)

(declare-fun e!376674 () Bool)

(declare-fun tp!192518 () Bool)

(declare-fun tp!192517 () Bool)

(assert (=> b!620694 (= e!376674 (and tp!192518 tp!192517))))

(declare-fun b!620692 () Bool)

(declare-fun tp!192519 () Bool)

(declare-fun tp!192515 () Bool)

(assert (=> b!620692 (= e!376674 (and tp!192519 tp!192515))))

(assert (=> b!620162 (= tp!192426 e!376674)))

(declare-fun b!620691 () Bool)

(assert (=> b!620691 (= e!376674 tp_is_empty!3597)))

(declare-fun b!620693 () Bool)

(declare-fun tp!192516 () Bool)

(assert (=> b!620693 (= e!376674 tp!192516)))

(assert (= (and b!620162 ((_ is ElementMatch!1619) (regOne!3750 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620691))

(assert (= (and b!620162 ((_ is Concat!2929) (regOne!3750 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620692))

(assert (= (and b!620162 ((_ is Star!1619) (regOne!3750 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620693))

(assert (= (and b!620162 ((_ is Union!1619) (regOne!3750 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620694))

(declare-fun b!620698 () Bool)

(declare-fun e!376675 () Bool)

(declare-fun tp!192523 () Bool)

(declare-fun tp!192522 () Bool)

(assert (=> b!620698 (= e!376675 (and tp!192523 tp!192522))))

(declare-fun b!620696 () Bool)

(declare-fun tp!192524 () Bool)

(declare-fun tp!192520 () Bool)

(assert (=> b!620696 (= e!376675 (and tp!192524 tp!192520))))

(assert (=> b!620162 (= tp!192422 e!376675)))

(declare-fun b!620695 () Bool)

(assert (=> b!620695 (= e!376675 tp_is_empty!3597)))

(declare-fun b!620697 () Bool)

(declare-fun tp!192521 () Bool)

(assert (=> b!620697 (= e!376675 tp!192521)))

(assert (= (and b!620162 ((_ is ElementMatch!1619) (regTwo!3750 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620695))

(assert (= (and b!620162 ((_ is Concat!2929) (regTwo!3750 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620696))

(assert (= (and b!620162 ((_ is Star!1619) (regTwo!3750 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620697))

(assert (= (and b!620162 ((_ is Union!1619) (regTwo!3750 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620698))

(declare-fun b!620699 () Bool)

(declare-fun e!376676 () Bool)

(declare-fun tp!192525 () Bool)

(assert (=> b!620699 (= e!376676 (and tp_is_empty!3597 tp!192525))))

(assert (=> b!620141 (= tp!192404 e!376676)))

(assert (= (and b!620141 ((_ is Cons!6330) (originalCharacters!1318 (h!11733 (t!81633 producedTokens!8))))) b!620699))

(declare-fun b!620700 () Bool)

(declare-fun e!376677 () Bool)

(declare-fun tp!192526 () Bool)

(assert (=> b!620700 (= e!376677 (and tp_is_empty!3597 tp!192526))))

(assert (=> b!620160 (= tp!192421 e!376677)))

(assert (= (and b!620160 ((_ is Cons!6330) (t!81631 (t!81631 suffix!1461)))) b!620700))

(declare-fun b!620703 () Bool)

(declare-fun b_free!18065 () Bool)

(declare-fun b_next!18081 () Bool)

(assert (=> b!620703 (= b_free!18065 (not b_next!18081))))

(declare-fun t!81721 () Bool)

(declare-fun tb!53895 () Bool)

(assert (=> (and b!620703 (= (toValue!2202 (transformation!1285 (h!11732 (t!81632 (t!81632 rules!3735))))) (toValue!2202 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))) t!81721) tb!53895))

(declare-fun result!60832 () Bool)

(assert (= result!60832 result!60796))

(assert (=> d!217295 t!81721))

(declare-fun tp!192530 () Bool)

(declare-fun b_and!61659 () Bool)

(assert (=> b!620703 (= tp!192530 (and (=> t!81721 result!60832) b_and!61659))))

(declare-fun b_free!18067 () Bool)

(declare-fun b_next!18083 () Bool)

(assert (=> b!620703 (= b_free!18067 (not b_next!18083))))

(declare-fun tb!53897 () Bool)

(declare-fun t!81723 () Bool)

(assert (=> (and b!620703 (= (toChars!2061 (transformation!1285 (h!11732 (t!81632 (t!81632 rules!3735))))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8))))) t!81723) tb!53897))

(declare-fun result!60834 () Bool)

(assert (= result!60834 result!60744))

(assert (=> b!620057 t!81723))

(declare-fun tb!53899 () Bool)

(declare-fun t!81725 () Bool)

(assert (=> (and b!620703 (= (toChars!2061 (transformation!1285 (h!11732 (t!81632 (t!81632 rules!3735))))) (toChars!2061 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))) t!81725) tb!53899))

(declare-fun result!60836 () Bool)

(assert (= result!60836 result!60762))

(assert (=> d!217233 t!81725))

(declare-fun t!81727 () Bool)

(declare-fun tb!53901 () Bool)

(assert (=> (and b!620703 (= (toChars!2061 (transformation!1285 (h!11732 (t!81632 (t!81632 rules!3735))))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8)))))) t!81727) tb!53901))

(declare-fun result!60838 () Bool)

(assert (= result!60838 result!60770))

(assert (=> b!620272 t!81727))

(declare-fun tp!192528 () Bool)

(declare-fun b_and!61661 () Bool)

(assert (=> b!620703 (= tp!192528 (and (=> t!81723 result!60834) (=> t!81725 result!60836) (=> t!81727 result!60838) b_and!61661))))

(declare-fun e!376681 () Bool)

(assert (=> b!620703 (= e!376681 (and tp!192530 tp!192528))))

(declare-fun b!620702 () Bool)

(declare-fun tp!192529 () Bool)

(declare-fun e!376680 () Bool)

(assert (=> b!620702 (= e!376680 (and tp!192529 (inv!8001 (tag!1547 (h!11732 (t!81632 (t!81632 rules!3735))))) (inv!8004 (transformation!1285 (h!11732 (t!81632 (t!81632 rules!3735))))) e!376681))))

(declare-fun b!620701 () Bool)

(declare-fun e!376679 () Bool)

(declare-fun tp!192527 () Bool)

(assert (=> b!620701 (= e!376679 (and e!376680 tp!192527))))

(assert (=> b!620152 (= tp!192414 e!376679)))

(assert (= b!620702 b!620703))

(assert (= b!620701 b!620702))

(assert (= (and b!620152 ((_ is Cons!6331) (t!81632 (t!81632 rules!3735)))) b!620701))

(declare-fun m!888649 () Bool)

(assert (=> b!620702 m!888649))

(declare-fun m!888651 () Bool)

(assert (=> b!620702 m!888651))

(declare-fun b!620707 () Bool)

(declare-fun e!376682 () Bool)

(declare-fun tp!192534 () Bool)

(declare-fun tp!192533 () Bool)

(assert (=> b!620707 (= e!376682 (and tp!192534 tp!192533))))

(declare-fun b!620705 () Bool)

(declare-fun tp!192535 () Bool)

(declare-fun tp!192531 () Bool)

(assert (=> b!620705 (= e!376682 (and tp!192535 tp!192531))))

(assert (=> b!620142 (= tp!192401 e!376682)))

(declare-fun b!620704 () Bool)

(assert (=> b!620704 (= e!376682 tp_is_empty!3597)))

(declare-fun b!620706 () Bool)

(declare-fun tp!192532 () Bool)

(assert (=> b!620706 (= e!376682 tp!192532)))

(assert (= (and b!620142 ((_ is ElementMatch!1619) (regex!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8)))))) b!620704))

(assert (= (and b!620142 ((_ is Concat!2929) (regex!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8)))))) b!620705))

(assert (= (and b!620142 ((_ is Star!1619) (regex!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8)))))) b!620706))

(assert (= (and b!620142 ((_ is Union!1619) (regex!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8)))))) b!620707))

(declare-fun b!620711 () Bool)

(declare-fun e!376683 () Bool)

(declare-fun tp!192539 () Bool)

(declare-fun tp!192538 () Bool)

(assert (=> b!620711 (= e!376683 (and tp!192539 tp!192538))))

(declare-fun b!620709 () Bool)

(declare-fun tp!192540 () Bool)

(declare-fun tp!192536 () Bool)

(assert (=> b!620709 (= e!376683 (and tp!192540 tp!192536))))

(assert (=> b!620163 (= tp!192423 e!376683)))

(declare-fun b!620708 () Bool)

(assert (=> b!620708 (= e!376683 tp_is_empty!3597)))

(declare-fun b!620710 () Bool)

(declare-fun tp!192537 () Bool)

(assert (=> b!620710 (= e!376683 tp!192537)))

(assert (= (and b!620163 ((_ is ElementMatch!1619) (reg!1948 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620708))

(assert (= (and b!620163 ((_ is Concat!2929) (reg!1948 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620709))

(assert (= (and b!620163 ((_ is Star!1619) (reg!1948 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620710))

(assert (= (and b!620163 ((_ is Union!1619) (reg!1948 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620711))

(declare-fun b!620715 () Bool)

(declare-fun b_free!18069 () Bool)

(declare-fun b_next!18085 () Bool)

(assert (=> b!620715 (= b_free!18069 (not b_next!18085))))

(declare-fun tb!53903 () Bool)

(declare-fun t!81729 () Bool)

(assert (=> (and b!620715 (= (toValue!2202 (transformation!1285 (rule!2077 (h!11733 (t!81633 (t!81633 producedTokens!8)))))) (toValue!2202 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))) t!81729) tb!53903))

(declare-fun result!60840 () Bool)

(assert (= result!60840 result!60796))

(assert (=> d!217295 t!81729))

(declare-fun tp!192543 () Bool)

(declare-fun b_and!61663 () Bool)

(assert (=> b!620715 (= tp!192543 (and (=> t!81729 result!60840) b_and!61663))))

(declare-fun b_free!18071 () Bool)

(declare-fun b_next!18087 () Bool)

(assert (=> b!620715 (= b_free!18071 (not b_next!18087))))

(declare-fun t!81731 () Bool)

(declare-fun tb!53905 () Bool)

(assert (=> (and b!620715 (= (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 (t!81633 producedTokens!8)))))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8))))) t!81731) tb!53905))

(declare-fun result!60842 () Bool)

(assert (= result!60842 result!60744))

(assert (=> b!620057 t!81731))

(declare-fun t!81733 () Bool)

(declare-fun tb!53907 () Bool)

(assert (=> (and b!620715 (= (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 (t!81633 producedTokens!8)))))) (toChars!2061 (transformation!1285 (rule!2077 (_1!3822 (get!2414 lt!265229)))))) t!81733) tb!53907))

(declare-fun result!60844 () Bool)

(assert (= result!60844 result!60762))

(assert (=> d!217233 t!81733))

(declare-fun t!81735 () Bool)

(declare-fun tb!53909 () Bool)

(assert (=> (and b!620715 (= (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 (t!81633 producedTokens!8)))))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8)))))) t!81735) tb!53909))

(declare-fun result!60846 () Bool)

(assert (= result!60846 result!60770))

(assert (=> b!620272 t!81735))

(declare-fun b_and!61665 () Bool)

(declare-fun tp!192545 () Bool)

(assert (=> b!620715 (= tp!192545 (and (=> t!81731 result!60842) (=> t!81733 result!60844) (=> t!81735 result!60846) b_and!61665))))

(declare-fun tp!192541 () Bool)

(declare-fun e!376686 () Bool)

(declare-fun b!620714 () Bool)

(declare-fun e!376687 () Bool)

(assert (=> b!620714 (= e!376686 (and tp!192541 (inv!8001 (tag!1547 (rule!2077 (h!11733 (t!81633 (t!81633 producedTokens!8)))))) (inv!8004 (transformation!1285 (rule!2077 (h!11733 (t!81633 (t!81633 producedTokens!8)))))) e!376687))))

(declare-fun e!376689 () Bool)

(assert (=> b!620140 (= tp!192402 e!376689)))

(assert (=> b!620715 (= e!376687 (and tp!192543 tp!192545))))

(declare-fun tp!192544 () Bool)

(declare-fun e!376685 () Bool)

(declare-fun b!620713 () Bool)

(assert (=> b!620713 (= e!376685 (and (inv!21 (value!41486 (h!11733 (t!81633 (t!81633 producedTokens!8))))) e!376686 tp!192544))))

(declare-fun b!620712 () Bool)

(declare-fun tp!192542 () Bool)

(assert (=> b!620712 (= e!376689 (and (inv!8005 (h!11733 (t!81633 (t!81633 producedTokens!8)))) e!376685 tp!192542))))

(assert (= b!620714 b!620715))

(assert (= b!620713 b!620714))

(assert (= b!620712 b!620713))

(assert (= (and b!620140 ((_ is Cons!6332) (t!81633 (t!81633 producedTokens!8)))) b!620712))

(declare-fun m!888653 () Bool)

(assert (=> b!620714 m!888653))

(declare-fun m!888655 () Bool)

(assert (=> b!620714 m!888655))

(declare-fun m!888657 () Bool)

(assert (=> b!620713 m!888657))

(declare-fun m!888659 () Bool)

(assert (=> b!620712 m!888659))

(declare-fun b!620719 () Bool)

(declare-fun e!376690 () Bool)

(declare-fun tp!192549 () Bool)

(declare-fun tp!192548 () Bool)

(assert (=> b!620719 (= e!376690 (and tp!192549 tp!192548))))

(declare-fun b!620717 () Bool)

(declare-fun tp!192550 () Bool)

(declare-fun tp!192546 () Bool)

(assert (=> b!620717 (= e!376690 (and tp!192550 tp!192546))))

(assert (=> b!620164 (= tp!192425 e!376690)))

(declare-fun b!620716 () Bool)

(assert (=> b!620716 (= e!376690 tp_is_empty!3597)))

(declare-fun b!620718 () Bool)

(declare-fun tp!192547 () Bool)

(assert (=> b!620718 (= e!376690 tp!192547)))

(assert (= (and b!620164 ((_ is ElementMatch!1619) (regOne!3751 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620716))

(assert (= (and b!620164 ((_ is Concat!2929) (regOne!3751 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620717))

(assert (= (and b!620164 ((_ is Star!1619) (regOne!3751 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620718))

(assert (= (and b!620164 ((_ is Union!1619) (regOne!3751 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620719))

(declare-fun b!620723 () Bool)

(declare-fun e!376691 () Bool)

(declare-fun tp!192554 () Bool)

(declare-fun tp!192553 () Bool)

(assert (=> b!620723 (= e!376691 (and tp!192554 tp!192553))))

(declare-fun b!620721 () Bool)

(declare-fun tp!192555 () Bool)

(declare-fun tp!192551 () Bool)

(assert (=> b!620721 (= e!376691 (and tp!192555 tp!192551))))

(assert (=> b!620164 (= tp!192424 e!376691)))

(declare-fun b!620720 () Bool)

(assert (=> b!620720 (= e!376691 tp_is_empty!3597)))

(declare-fun b!620722 () Bool)

(declare-fun tp!192552 () Bool)

(assert (=> b!620722 (= e!376691 tp!192552)))

(assert (= (and b!620164 ((_ is ElementMatch!1619) (regTwo!3751 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620720))

(assert (= (and b!620164 ((_ is Concat!2929) (regTwo!3751 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620721))

(assert (= (and b!620164 ((_ is Star!1619) (regTwo!3751 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620722))

(assert (= (and b!620164 ((_ is Union!1619) (regTwo!3751 (regex!1285 (rule!2077 (h!11733 producedTokens!8)))))) b!620723))

(declare-fun b!620724 () Bool)

(declare-fun e!376692 () Bool)

(declare-fun tp!192556 () Bool)

(assert (=> b!620724 (= e!376692 (and tp_is_empty!3597 tp!192556))))

(assert (=> b!620165 (= tp!192427 e!376692)))

(assert (= (and b!620165 ((_ is Cons!6330) (t!81631 (t!81631 input!3206)))) b!620724))

(declare-fun b!620728 () Bool)

(declare-fun e!376693 () Bool)

(declare-fun tp!192560 () Bool)

(declare-fun tp!192559 () Bool)

(assert (=> b!620728 (= e!376693 (and tp!192560 tp!192559))))

(declare-fun b!620726 () Bool)

(declare-fun tp!192561 () Bool)

(declare-fun tp!192557 () Bool)

(assert (=> b!620726 (= e!376693 (and tp!192561 tp!192557))))

(assert (=> b!620128 (= tp!192387 e!376693)))

(declare-fun b!620725 () Bool)

(assert (=> b!620725 (= e!376693 tp_is_empty!3597)))

(declare-fun b!620727 () Bool)

(declare-fun tp!192558 () Bool)

(assert (=> b!620727 (= e!376693 tp!192558)))

(assert (= (and b!620128 ((_ is ElementMatch!1619) (reg!1948 (regex!1285 (h!11732 rules!3735))))) b!620725))

(assert (= (and b!620128 ((_ is Concat!2929) (reg!1948 (regex!1285 (h!11732 rules!3735))))) b!620726))

(assert (= (and b!620128 ((_ is Star!1619) (reg!1948 (regex!1285 (h!11732 rules!3735))))) b!620727))

(assert (= (and b!620128 ((_ is Union!1619) (reg!1948 (regex!1285 (h!11732 rules!3735))))) b!620728))

(declare-fun b!620732 () Bool)

(declare-fun e!376694 () Bool)

(declare-fun tp!192565 () Bool)

(declare-fun tp!192564 () Bool)

(assert (=> b!620732 (= e!376694 (and tp!192565 tp!192564))))

(declare-fun b!620730 () Bool)

(declare-fun tp!192566 () Bool)

(declare-fun tp!192562 () Bool)

(assert (=> b!620730 (= e!376694 (and tp!192566 tp!192562))))

(assert (=> b!620153 (= tp!192416 e!376694)))

(declare-fun b!620729 () Bool)

(assert (=> b!620729 (= e!376694 tp_is_empty!3597)))

(declare-fun b!620731 () Bool)

(declare-fun tp!192563 () Bool)

(assert (=> b!620731 (= e!376694 tp!192563)))

(assert (= (and b!620153 ((_ is ElementMatch!1619) (regex!1285 (h!11732 (t!81632 rules!3735))))) b!620729))

(assert (= (and b!620153 ((_ is Concat!2929) (regex!1285 (h!11732 (t!81632 rules!3735))))) b!620730))

(assert (= (and b!620153 ((_ is Star!1619) (regex!1285 (h!11732 (t!81632 rules!3735))))) b!620731))

(assert (= (and b!620153 ((_ is Union!1619) (regex!1285 (h!11732 (t!81632 rules!3735))))) b!620732))

(declare-fun b!620741 () Bool)

(declare-fun tp!192574 () Bool)

(declare-fun e!376699 () Bool)

(declare-fun tp!192575 () Bool)

(assert (=> b!620741 (= e!376699 (and (inv!8008 (left!5019 (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8)))))) tp!192575 (inv!8008 (right!5349 (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8)))))) tp!192574))))

(declare-fun b!620743 () Bool)

(declare-fun e!376700 () Bool)

(declare-fun tp!192573 () Bool)

(assert (=> b!620743 (= e!376700 tp!192573)))

(declare-fun b!620742 () Bool)

(declare-fun inv!8015 (IArray!4023) Bool)

(assert (=> b!620742 (= e!376699 (and (inv!8015 (xs!4648 (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8)))))) e!376700))))

(assert (=> b!620063 (= tp!192375 (and (inv!8008 (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8))))) e!376699))))

(assert (= (and b!620063 ((_ is Node!2011) (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8)))))) b!620741))

(assert (= b!620742 b!620743))

(assert (= (and b!620063 ((_ is Leaf!3162) (c!114031 (dynLambda!3597 (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (value!41486 (h!11733 producedTokens!8)))))) b!620742))

(declare-fun m!888661 () Bool)

(assert (=> b!620741 m!888661))

(declare-fun m!888663 () Bool)

(assert (=> b!620741 m!888663))

(declare-fun m!888665 () Bool)

(assert (=> b!620742 m!888665))

(assert (=> b!620063 m!887877))

(declare-fun b!620747 () Bool)

(declare-fun e!376701 () Bool)

(declare-fun tp!192579 () Bool)

(declare-fun tp!192578 () Bool)

(assert (=> b!620747 (= e!376701 (and tp!192579 tp!192578))))

(declare-fun b!620745 () Bool)

(declare-fun tp!192580 () Bool)

(declare-fun tp!192576 () Bool)

(assert (=> b!620745 (= e!376701 (and tp!192580 tp!192576))))

(assert (=> b!620127 (= tp!192390 e!376701)))

(declare-fun b!620744 () Bool)

(assert (=> b!620744 (= e!376701 tp_is_empty!3597)))

(declare-fun b!620746 () Bool)

(declare-fun tp!192577 () Bool)

(assert (=> b!620746 (= e!376701 tp!192577)))

(assert (= (and b!620127 ((_ is ElementMatch!1619) (regOne!3750 (regex!1285 (h!11732 rules!3735))))) b!620744))

(assert (= (and b!620127 ((_ is Concat!2929) (regOne!3750 (regex!1285 (h!11732 rules!3735))))) b!620745))

(assert (= (and b!620127 ((_ is Star!1619) (regOne!3750 (regex!1285 (h!11732 rules!3735))))) b!620746))

(assert (= (and b!620127 ((_ is Union!1619) (regOne!3750 (regex!1285 (h!11732 rules!3735))))) b!620747))

(declare-fun b!620751 () Bool)

(declare-fun e!376702 () Bool)

(declare-fun tp!192584 () Bool)

(declare-fun tp!192583 () Bool)

(assert (=> b!620751 (= e!376702 (and tp!192584 tp!192583))))

(declare-fun b!620749 () Bool)

(declare-fun tp!192585 () Bool)

(declare-fun tp!192581 () Bool)

(assert (=> b!620749 (= e!376702 (and tp!192585 tp!192581))))

(assert (=> b!620127 (= tp!192386 e!376702)))

(declare-fun b!620748 () Bool)

(assert (=> b!620748 (= e!376702 tp_is_empty!3597)))

(declare-fun b!620750 () Bool)

(declare-fun tp!192582 () Bool)

(assert (=> b!620750 (= e!376702 tp!192582)))

(assert (= (and b!620127 ((_ is ElementMatch!1619) (regTwo!3750 (regex!1285 (h!11732 rules!3735))))) b!620748))

(assert (= (and b!620127 ((_ is Concat!2929) (regTwo!3750 (regex!1285 (h!11732 rules!3735))))) b!620749))

(assert (= (and b!620127 ((_ is Star!1619) (regTwo!3750 (regex!1285 (h!11732 rules!3735))))) b!620750))

(assert (= (and b!620127 ((_ is Union!1619) (regTwo!3750 (regex!1285 (h!11732 rules!3735))))) b!620751))

(declare-fun b!620755 () Bool)

(declare-fun e!376703 () Bool)

(declare-fun tp!192589 () Bool)

(declare-fun tp!192588 () Bool)

(assert (=> b!620755 (= e!376703 (and tp!192589 tp!192588))))

(declare-fun b!620753 () Bool)

(declare-fun tp!192590 () Bool)

(declare-fun tp!192586 () Bool)

(assert (=> b!620753 (= e!376703 (and tp!192590 tp!192586))))

(assert (=> b!620129 (= tp!192389 e!376703)))

(declare-fun b!620752 () Bool)

(assert (=> b!620752 (= e!376703 tp_is_empty!3597)))

(declare-fun b!620754 () Bool)

(declare-fun tp!192587 () Bool)

(assert (=> b!620754 (= e!376703 tp!192587)))

(assert (= (and b!620129 ((_ is ElementMatch!1619) (regOne!3751 (regex!1285 (h!11732 rules!3735))))) b!620752))

(assert (= (and b!620129 ((_ is Concat!2929) (regOne!3751 (regex!1285 (h!11732 rules!3735))))) b!620753))

(assert (= (and b!620129 ((_ is Star!1619) (regOne!3751 (regex!1285 (h!11732 rules!3735))))) b!620754))

(assert (= (and b!620129 ((_ is Union!1619) (regOne!3751 (regex!1285 (h!11732 rules!3735))))) b!620755))

(declare-fun b!620759 () Bool)

(declare-fun e!376704 () Bool)

(declare-fun tp!192594 () Bool)

(declare-fun tp!192593 () Bool)

(assert (=> b!620759 (= e!376704 (and tp!192594 tp!192593))))

(declare-fun b!620757 () Bool)

(declare-fun tp!192595 () Bool)

(declare-fun tp!192591 () Bool)

(assert (=> b!620757 (= e!376704 (and tp!192595 tp!192591))))

(assert (=> b!620129 (= tp!192388 e!376704)))

(declare-fun b!620756 () Bool)

(assert (=> b!620756 (= e!376704 tp_is_empty!3597)))

(declare-fun b!620758 () Bool)

(declare-fun tp!192592 () Bool)

(assert (=> b!620758 (= e!376704 tp!192592)))

(assert (= (and b!620129 ((_ is ElementMatch!1619) (regTwo!3751 (regex!1285 (h!11732 rules!3735))))) b!620756))

(assert (= (and b!620129 ((_ is Concat!2929) (regTwo!3751 (regex!1285 (h!11732 rules!3735))))) b!620757))

(assert (= (and b!620129 ((_ is Star!1619) (regTwo!3751 (regex!1285 (h!11732 rules!3735))))) b!620758))

(assert (= (and b!620129 ((_ is Union!1619) (regTwo!3751 (regex!1285 (h!11732 rules!3735))))) b!620759))

(declare-fun b_lambda!24567 () Bool)

(assert (= b_lambda!24555 (or (and b!619896 b_free!18039 (= (toChars!2061 (transformation!1285 (rule!2077 (h!11733 producedTokens!8)))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))))) (and b!620143 b_free!18051) (and b!620703 b_free!18067 (= (toChars!2061 (transformation!1285 (h!11732 (t!81632 (t!81632 rules!3735))))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))))) (and b!619901 b_free!18035 (= (toChars!2061 (transformation!1285 (h!11732 rules!3735))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))))) (and b!620154 b_free!18055 (= (toChars!2061 (transformation!1285 (h!11732 (t!81632 rules!3735)))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))))) (and b!620715 b_free!18071 (= (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 (t!81633 producedTokens!8)))))) (toChars!2061 (transformation!1285 (rule!2077 (h!11733 (t!81633 producedTokens!8))))))) b_lambda!24567)))

(check-sat (not b!620273) (not b!620188) (not d!217201) (not d!217193) (not d!217227) (not b!620730) (not d!217373) (not b!620274) (not b!620724) (not d!217377) (not tb!53831) (not b!620687) (not d!217285) b_and!61637 (not b!620498) (not b!620368) (not b!620743) (not b!620192) (not b!620717) (not b!620474) (not b!620726) (not b!620707) (not b!620741) (not b_next!18051) b_and!61665 (not b_next!18053) (not b!620255) (not b!620706) (not b!620754) (not b!620171) (not b!620700) (not b!620613) (not b!620755) (not b!620701) (not b!620233) (not d!217255) (not b!620377) (not b!620712) b_and!61611 (not b!620346) (not b!620702) (not b_next!18071) (not b!620442) (not b!620746) (not d!217247) (not b!620757) b_and!61639 (not b!620301) (not b_lambda!24561) (not b!620753) (not d!217383) (not b!620694) (not d!217223) (not b!620718) b_and!61613 (not b!620731) (not d!217347) (not b!620446) (not b!620447) (not b!620230) (not b!620525) (not b!620690) (not b!620281) (not tb!53863) (not b!620710) (not b!620191) (not d!217379) (not b_lambda!24567) (not b!620449) (not b!620280) (not d!217219) (not b!620480) (not b!620526) (not b_next!18085) (not d!217195) (not b!620727) (not b!620282) (not b!620732) (not d!217299) b_and!61615 (not b!620512) (not b!620612) b_and!61661 (not b!620722) (not d!217199) (not d!217385) (not d!217375) (not b!620614) (not b!620699) (not b!620751) (not b!620693) (not b!620345) (not b!620750) (not d!217265) (not b!620448) (not b_lambda!24553) (not d!217229) (not b!620278) (not b!620063) (not b!620256) (not b_next!18055) (not b!620728) (not b!620275) (not b!620745) (not b!620272) (not b_next!18087) (not b!620473) (not b!620352) (not d!217253) (not b!620742) (not b!620450) (not b!620263) (not b!620482) (not b!620445) (not b!620348) (not d!217297) (not b_next!18067) (not b_lambda!24551) (not b!620511) (not tb!53839) (not b!620500) (not b!620714) (not d!217231) b_and!61635 (not d!217387) (not b!620277) (not b!620234) (not b!620758) (not b!620379) (not b!620444) (not b!620709) (not b!620370) (not d!217337) (not b!620689) (not b!620713) (not d!217203) (not b!620357) (not b_next!18049) (not b!620369) (not b!620692) (not b!620723) tp_is_empty!3597 (not b!620747) b_and!61659 (not bm!41104) (not b!620235) (not b!620499) (not d!217233) (not b_next!18081) (not b!620276) (not d!217381) (not b!620705) (not b!620697) b_and!61641 (not b!620721) (not b!620190) (not b!620698) (not b!620719) (not b!620711) (not b_next!18069) b_and!61617 (not b!620279) (not b!620749) (not d!217345) (not d!217301) b_and!61663 (not d!217293) (not d!217391) (not b_next!18065) (not b!620759) (not d!217333) (not d!217343) (not bm!41101) (not b_next!18083) (not b!620696) (not b!620347))
(check-sat b_and!61637 b_and!61639 b_and!61613 (not b_next!18085) b_and!61615 b_and!61661 (not b_next!18067) b_and!61635 (not b_next!18049) b_and!61663 (not b_next!18051) b_and!61665 (not b_next!18053) (not b_next!18071) b_and!61611 (not b_next!18055) (not b_next!18087) b_and!61659 (not b_next!18081) b_and!61641 (not b_next!18069) b_and!61617 (not b_next!18065) (not b_next!18083))
