; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!360908 () Bool)

(assert start!360908)

(declare-fun b!3852003 () Bool)

(declare-fun b_free!103285 () Bool)

(declare-fun b_next!103989 () Bool)

(assert (=> b!3852003 (= b_free!103285 (not b_next!103989))))

(declare-fun tp!1167583 () Bool)

(declare-fun b_and!287739 () Bool)

(assert (=> b!3852003 (= tp!1167583 b_and!287739)))

(declare-fun b_free!103287 () Bool)

(declare-fun b_next!103991 () Bool)

(assert (=> b!3852003 (= b_free!103287 (not b_next!103991))))

(declare-fun tp!1167593 () Bool)

(declare-fun b_and!287741 () Bool)

(assert (=> b!3852003 (= tp!1167593 b_and!287741)))

(declare-fun b!3852014 () Bool)

(declare-fun b_free!103289 () Bool)

(declare-fun b_next!103993 () Bool)

(assert (=> b!3852014 (= b_free!103289 (not b_next!103993))))

(declare-fun tp!1167590 () Bool)

(declare-fun b_and!287743 () Bool)

(assert (=> b!3852014 (= tp!1167590 b_and!287743)))

(declare-fun b_free!103291 () Bool)

(declare-fun b_next!103995 () Bool)

(assert (=> b!3852014 (= b_free!103291 (not b_next!103995))))

(declare-fun tp!1167589 () Bool)

(declare-fun b_and!287745 () Bool)

(assert (=> b!3852014 (= tp!1167589 b_and!287745)))

(declare-fun b!3851994 () Bool)

(declare-fun b_free!103293 () Bool)

(declare-fun b_next!103997 () Bool)

(assert (=> b!3851994 (= b_free!103293 (not b_next!103997))))

(declare-fun tp!1167594 () Bool)

(declare-fun b_and!287747 () Bool)

(assert (=> b!3851994 (= tp!1167594 b_and!287747)))

(declare-fun b_free!103295 () Bool)

(declare-fun b_next!103999 () Bool)

(assert (=> b!3851994 (= b_free!103295 (not b_next!103999))))

(declare-fun tp!1167586 () Bool)

(declare-fun b_and!287749 () Bool)

(assert (=> b!3851994 (= tp!1167586 b_and!287749)))

(declare-fun b!3851988 () Bool)

(declare-fun res!1559438 () Bool)

(declare-fun e!2380978 () Bool)

(assert (=> b!3851988 (=> (not res!1559438) (not e!2380978))))

(declare-datatypes ((C!22616 0))(
  ( (C!22617 (val!13402 Int)) )
))
(declare-datatypes ((List!40942 0))(
  ( (Nil!40818) (Cons!40818 (h!46238 C!22616) (t!311989 List!40942)) )
))
(declare-fun suffixResult!91 () List!40942)

(declare-datatypes ((LexerInterface!5899 0))(
  ( (LexerInterfaceExt!5896 (__x!25297 Int)) (Lexer!5897) )
))
(declare-fun thiss!20629 () LexerInterface!5899)

(declare-fun suffix!1176 () List!40942)

(declare-datatypes ((IArray!25047 0))(
  ( (IArray!25048 (innerList!12581 List!40942)) )
))
(declare-datatypes ((Conc!12521 0))(
  ( (Node!12521 (left!31478 Conc!12521) (right!31808 Conc!12521) (csize!25272 Int) (cheight!12732 Int)) (Leaf!19383 (xs!15827 IArray!25047) (csize!25273 Int)) (Empty!12521) )
))
(declare-datatypes ((BalanceConc!24636 0))(
  ( (BalanceConc!24637 (c!670842 Conc!12521)) )
))
(declare-datatypes ((List!40943 0))(
  ( (Nil!40819) (Cons!40819 (h!46239 (_ BitVec 16)) (t!311990 List!40943)) )
))
(declare-datatypes ((TokenValue!6540 0))(
  ( (FloatLiteralValue!13080 (text!46225 List!40943)) (TokenValueExt!6539 (__x!25298 Int)) (Broken!32700 (value!200443 List!40943)) (Object!6663) (End!6540) (Def!6540) (Underscore!6540) (Match!6540) (Else!6540) (Error!6540) (Case!6540) (If!6540) (Extends!6540) (Abstract!6540) (Class!6540) (Val!6540) (DelimiterValue!13080 (del!6600 List!40943)) (KeywordValue!6546 (value!200444 List!40943)) (CommentValue!13080 (value!200445 List!40943)) (WhitespaceValue!13080 (value!200446 List!40943)) (IndentationValue!6540 (value!200447 List!40943)) (String!46417) (Int32!6540) (Broken!32701 (value!200448 List!40943)) (Boolean!6541) (Unit!58489) (OperatorValue!6543 (op!6600 List!40943)) (IdentifierValue!13080 (value!200449 List!40943)) (IdentifierValue!13081 (value!200450 List!40943)) (WhitespaceValue!13081 (value!200451 List!40943)) (True!13080) (False!13080) (Broken!32702 (value!200452 List!40943)) (Broken!32703 (value!200453 List!40943)) (True!13081) (RightBrace!6540) (RightBracket!6540) (Colon!6540) (Null!6540) (Comma!6540) (LeftBracket!6540) (False!13081) (LeftBrace!6540) (ImaginaryLiteralValue!6540 (text!46226 List!40943)) (StringLiteralValue!19620 (value!200454 List!40943)) (EOFValue!6540 (value!200455 List!40943)) (IdentValue!6540 (value!200456 List!40943)) (DelimiterValue!13081 (value!200457 List!40943)) (DedentValue!6540 (value!200458 List!40943)) (NewLineValue!6540 (value!200459 List!40943)) (IntegerValue!19620 (value!200460 (_ BitVec 32)) (text!46227 List!40943)) (IntegerValue!19621 (value!200461 Int) (text!46228 List!40943)) (Times!6540) (Or!6540) (Equal!6540) (Minus!6540) (Broken!32704 (value!200462 List!40943)) (And!6540) (Div!6540) (LessEqual!6540) (Mod!6540) (Concat!17755) (Not!6540) (Plus!6540) (SpaceValue!6540 (value!200463 List!40943)) (IntegerValue!19622 (value!200464 Int) (text!46229 List!40943)) (StringLiteralValue!19621 (text!46230 List!40943)) (FloatLiteralValue!13081 (text!46231 List!40943)) (BytesLiteralValue!6540 (value!200465 List!40943)) (CommentValue!13081 (value!200466 List!40943)) (StringLiteralValue!19622 (value!200467 List!40943)) (ErrorTokenValue!6540 (msg!6601 List!40943)) )
))
(declare-datatypes ((Regex!11215 0))(
  ( (ElementMatch!11215 (c!670843 C!22616)) (Concat!17756 (regOne!22942 Regex!11215) (regTwo!22942 Regex!11215)) (EmptyExpr!11215) (Star!11215 (reg!11544 Regex!11215)) (EmptyLang!11215) (Union!11215 (regOne!22943 Regex!11215) (regTwo!22943 Regex!11215)) )
))
(declare-datatypes ((String!46418 0))(
  ( (String!46419 (value!200468 String)) )
))
(declare-datatypes ((TokenValueInjection!12508 0))(
  ( (TokenValueInjection!12509 (toValue!8730 Int) (toChars!8589 Int)) )
))
(declare-datatypes ((Rule!12420 0))(
  ( (Rule!12421 (regex!6310 Regex!11215) (tag!7170 String!46418) (isSeparator!6310 Bool) (transformation!6310 TokenValueInjection!12508)) )
))
(declare-datatypes ((List!40944 0))(
  ( (Nil!40820) (Cons!40820 (h!46240 Rule!12420) (t!311991 List!40944)) )
))
(declare-fun rules!2768 () List!40944)

(declare-datatypes ((Token!11758 0))(
  ( (Token!11759 (value!200469 TokenValue!6540) (rule!9166 Rule!12420) (size!30705 Int) (originalCharacters!6910 List!40942)) )
))
(declare-datatypes ((List!40945 0))(
  ( (Nil!40821) (Cons!40821 (h!46241 Token!11758) (t!311992 List!40945)) )
))
(declare-fun suffixTokens!72 () List!40945)

(declare-datatypes ((tuple2!40010 0))(
  ( (tuple2!40011 (_1!23139 List!40945) (_2!23139 List!40942)) )
))
(declare-fun lexList!1667 (LexerInterface!5899 List!40944 List!40942) tuple2!40010)

(assert (=> b!3851988 (= res!1559438 (= (lexList!1667 thiss!20629 rules!2768 suffix!1176) (tuple2!40011 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3851989 () Bool)

(declare-fun res!1559425 () Bool)

(declare-fun e!2380970 () Bool)

(assert (=> b!3851989 (=> res!1559425 e!2380970)))

(declare-fun lt!1337890 () tuple2!40010)

(declare-datatypes ((tuple2!40012 0))(
  ( (tuple2!40013 (_1!23140 Token!11758) (_2!23140 List!40942)) )
))
(declare-datatypes ((Option!8728 0))(
  ( (None!8727) (Some!8727 (v!39021 tuple2!40012)) )
))
(declare-fun lt!1337880 () Option!8728)

(assert (=> b!3851989 (= res!1559425 (or (not (= lt!1337890 (tuple2!40011 (_1!23139 lt!1337890) (_2!23139 lt!1337890)))) (= (_2!23140 (v!39021 lt!1337880)) suffix!1176)))))

(declare-fun b!3851990 () Bool)

(declare-fun e!2380956 () Bool)

(declare-fun e!2380951 () Bool)

(assert (=> b!3851990 (= e!2380956 e!2380951)))

(declare-fun res!1559431 () Bool)

(assert (=> b!3851990 (=> res!1559431 e!2380951)))

(declare-fun lt!1337887 () Int)

(declare-fun lt!1337883 () Int)

(declare-fun lt!1337888 () Int)

(assert (=> b!3851990 (= res!1559431 (not (= (+ lt!1337888 lt!1337883) lt!1337887)))))

(declare-fun lt!1337889 () List!40942)

(declare-fun size!30706 (List!40942) Int)

(assert (=> b!3851990 (= lt!1337887 (size!30706 lt!1337889))))

(declare-fun e!2380969 () Bool)

(declare-fun b!3851991 () Bool)

(declare-fun tp!1167592 () Bool)

(declare-fun e!2380976 () Bool)

(declare-fun inv!54967 (String!46418) Bool)

(declare-fun inv!54970 (TokenValueInjection!12508) Bool)

(assert (=> b!3851991 (= e!2380976 (and tp!1167592 (inv!54967 (tag!7170 (rule!9166 (h!46241 suffixTokens!72)))) (inv!54970 (transformation!6310 (rule!9166 (h!46241 suffixTokens!72)))) e!2380969))))

(declare-fun b!3851992 () Bool)

(declare-fun e!2380958 () Bool)

(declare-fun e!2380968 () Bool)

(declare-fun prefixTokens!80 () List!40945)

(declare-fun tp!1167598 () Bool)

(declare-fun inv!21 (TokenValue!6540) Bool)

(assert (=> b!3851992 (= e!2380968 (and (inv!21 (value!200469 (h!46241 prefixTokens!80))) e!2380958 tp!1167598))))

(declare-fun b!3851993 () Bool)

(declare-fun e!2380955 () Bool)

(declare-fun tp!1167585 () Bool)

(declare-fun e!2380961 () Bool)

(declare-fun inv!54971 (Token!11758) Bool)

(assert (=> b!3851993 (= e!2380955 (and (inv!54971 (h!46241 suffixTokens!72)) e!2380961 tp!1167585))))

(declare-fun e!2380977 () Bool)

(assert (=> b!3851994 (= e!2380977 (and tp!1167594 tp!1167586))))

(declare-fun b!3851995 () Bool)

(declare-fun res!1559430 () Bool)

(declare-fun e!2380972 () Bool)

(assert (=> b!3851995 (=> (not res!1559430) (not e!2380972))))

(declare-fun prefix!426 () List!40942)

(declare-fun isEmpty!24160 (List!40942) Bool)

(assert (=> b!3851995 (= res!1559430 (not (isEmpty!24160 prefix!426)))))

(declare-fun b!3851996 () Bool)

(declare-fun e!2380962 () Bool)

(declare-fun tp!1167597 () Bool)

(assert (=> b!3851996 (= e!2380962 (and tp!1167597 (inv!54967 (tag!7170 (h!46240 rules!2768))) (inv!54970 (transformation!6310 (h!46240 rules!2768))) e!2380977))))

(declare-fun b!3851997 () Bool)

(declare-fun e!2380973 () Bool)

(assert (=> b!3851997 (= e!2380973 true)))

(declare-fun lt!1337884 () Bool)

(declare-fun rulesValidInductive!2244 (LexerInterface!5899 List!40944) Bool)

(assert (=> b!3851997 (= lt!1337884 (rulesValidInductive!2244 thiss!20629 rules!2768))))

(declare-fun b!3851998 () Bool)

(declare-fun e!2380964 () Bool)

(assert (=> b!3851998 (= e!2380964 e!2380973)))

(declare-fun res!1559426 () Bool)

(assert (=> b!3851998 (=> res!1559426 e!2380973)))

(declare-fun lt!1337893 () List!40942)

(declare-fun matchR!5362 (Regex!11215 List!40942) Bool)

(assert (=> b!3851998 (= res!1559426 (not (matchR!5362 (regex!6310 (rule!9166 (_1!23140 (v!39021 lt!1337880)))) lt!1337893)))))

(declare-fun lt!1337894 () TokenValue!6540)

(declare-fun maxPrefixOneRule!2285 (LexerInterface!5899 Rule!12420 List!40942) Option!8728)

(assert (=> b!3851998 (= (maxPrefixOneRule!2285 thiss!20629 (rule!9166 (_1!23140 (v!39021 lt!1337880))) lt!1337889) (Some!8727 (tuple2!40013 (Token!11759 lt!1337894 (rule!9166 (_1!23140 (v!39021 lt!1337880))) lt!1337888 lt!1337893) (_2!23140 (v!39021 lt!1337880)))))))

(declare-datatypes ((Unit!58490 0))(
  ( (Unit!58491) )
))
(declare-fun lt!1337891 () Unit!58490)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1183 (LexerInterface!5899 List!40944 List!40942 List!40942 List!40942 Rule!12420) Unit!58490)

(assert (=> b!3851998 (= lt!1337891 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1183 thiss!20629 rules!2768 lt!1337893 lt!1337889 (_2!23140 (v!39021 lt!1337880)) (rule!9166 (_1!23140 (v!39021 lt!1337880)))))))

(declare-fun b!3851999 () Bool)

(assert (=> b!3851999 (= e!2380970 e!2380956)))

(declare-fun res!1559433 () Bool)

(assert (=> b!3851999 (=> res!1559433 e!2380956)))

(declare-fun lt!1337892 () Int)

(assert (=> b!3851999 (= res!1559433 (>= lt!1337883 lt!1337892))))

(assert (=> b!3851999 (= lt!1337892 (size!30706 suffix!1176))))

(assert (=> b!3851999 (= lt!1337883 (size!30706 (_2!23140 (v!39021 lt!1337880))))))

(declare-fun b!3852000 () Bool)

(declare-fun e!2380963 () Bool)

(assert (=> b!3852000 (= e!2380978 e!2380963)))

(declare-fun res!1559437 () Bool)

(assert (=> b!3852000 (=> (not res!1559437) (not e!2380963))))

(get-info :version)

(assert (=> b!3852000 (= res!1559437 ((_ is Some!8727) lt!1337880))))

(declare-fun maxPrefix!3203 (LexerInterface!5899 List!40944 List!40942) Option!8728)

(assert (=> b!3852000 (= lt!1337880 (maxPrefix!3203 thiss!20629 rules!2768 lt!1337889))))

(declare-fun b!3852001 () Bool)

(declare-fun e!2380960 () Bool)

(declare-fun tp_is_empty!19401 () Bool)

(declare-fun tp!1167591 () Bool)

(assert (=> b!3852001 (= e!2380960 (and tp_is_empty!19401 tp!1167591))))

(declare-fun b!3852002 () Bool)

(declare-fun res!1559435 () Bool)

(assert (=> b!3852002 (=> (not res!1559435) (not e!2380972))))

(declare-fun isEmpty!24161 (List!40944) Bool)

(assert (=> b!3852002 (= res!1559435 (not (isEmpty!24161 rules!2768)))))

(assert (=> b!3852003 (= e!2380969 (and tp!1167583 tp!1167593))))

(declare-fun b!3852004 () Bool)

(declare-fun e!2380974 () Bool)

(declare-fun tp!1167596 () Bool)

(assert (=> b!3852004 (= e!2380974 (and tp_is_empty!19401 tp!1167596))))

(declare-fun b!3852005 () Bool)

(declare-fun res!1559428 () Bool)

(assert (=> b!3852005 (=> (not res!1559428) (not e!2380972))))

(declare-fun rulesInvariant!5242 (LexerInterface!5899 List!40944) Bool)

(assert (=> b!3852005 (= res!1559428 (rulesInvariant!5242 thiss!20629 rules!2768))))

(declare-fun b!3852006 () Bool)

(declare-fun e!2380953 () Bool)

(declare-fun tp!1167584 () Bool)

(assert (=> b!3852006 (= e!2380953 (and e!2380962 tp!1167584))))

(declare-fun b!3852007 () Bool)

(declare-fun res!1559432 () Bool)

(assert (=> b!3852007 (=> res!1559432 e!2380973)))

(declare-fun get!13505 (Option!8728) tuple2!40012)

(declare-fun head!8102 (List!40945) Token!11758)

(assert (=> b!3852007 (= res!1559432 (not (= (_1!23140 (get!13505 lt!1337880)) (head!8102 prefixTokens!80))))))

(declare-fun b!3852008 () Bool)

(declare-fun res!1559429 () Bool)

(assert (=> b!3852008 (=> (not res!1559429) (not e!2380972))))

(declare-fun isEmpty!24162 (List!40945) Bool)

(assert (=> b!3852008 (= res!1559429 (not (isEmpty!24162 prefixTokens!80)))))

(declare-fun tp!1167588 () Bool)

(declare-fun b!3852009 () Bool)

(declare-fun e!2380959 () Bool)

(assert (=> b!3852009 (= e!2380958 (and tp!1167588 (inv!54967 (tag!7170 (rule!9166 (h!46241 prefixTokens!80)))) (inv!54970 (transformation!6310 (rule!9166 (h!46241 prefixTokens!80)))) e!2380959))))

(declare-fun res!1559439 () Bool)

(assert (=> start!360908 (=> (not res!1559439) (not e!2380972))))

(assert (=> start!360908 (= res!1559439 ((_ is Lexer!5897) thiss!20629))))

(assert (=> start!360908 e!2380972))

(assert (=> start!360908 e!2380960))

(assert (=> start!360908 true))

(declare-fun e!2380954 () Bool)

(assert (=> start!360908 e!2380954))

(assert (=> start!360908 e!2380953))

(declare-fun e!2380967 () Bool)

(assert (=> start!360908 e!2380967))

(assert (=> start!360908 e!2380955))

(assert (=> start!360908 e!2380974))

(declare-fun b!3852010 () Bool)

(declare-fun res!1559423 () Bool)

(assert (=> b!3852010 (=> res!1559423 e!2380970)))

(declare-fun lt!1337885 () tuple2!40010)

(declare-fun ++!10377 (List!40945 List!40945) List!40945)

(assert (=> b!3852010 (= res!1559423 (not (= lt!1337885 (tuple2!40011 (++!10377 (Cons!40821 (_1!23140 (v!39021 lt!1337880)) Nil!40821) (_1!23139 lt!1337890)) (_2!23139 lt!1337890)))))))

(declare-fun b!3852011 () Bool)

(assert (=> b!3852011 (= e!2380963 (not e!2380970))))

(declare-fun res!1559427 () Bool)

(assert (=> b!3852011 (=> res!1559427 e!2380970)))

(declare-fun lt!1337876 () List!40942)

(assert (=> b!3852011 (= res!1559427 (not (= lt!1337876 lt!1337889)))))

(assert (=> b!3852011 (= lt!1337890 (lexList!1667 thiss!20629 rules!2768 (_2!23140 (v!39021 lt!1337880))))))

(declare-fun lt!1337895 () List!40942)

(assert (=> b!3852011 (and (= (size!30705 (_1!23140 (v!39021 lt!1337880))) lt!1337888) (= (originalCharacters!6910 (_1!23140 (v!39021 lt!1337880))) lt!1337893) (= (v!39021 lt!1337880) (tuple2!40013 (Token!11759 lt!1337894 (rule!9166 (_1!23140 (v!39021 lt!1337880))) lt!1337888 lt!1337893) lt!1337895)))))

(assert (=> b!3852011 (= lt!1337888 (size!30706 lt!1337893))))

(declare-fun e!2380957 () Bool)

(assert (=> b!3852011 e!2380957))

(declare-fun res!1559424 () Bool)

(assert (=> b!3852011 (=> (not res!1559424) (not e!2380957))))

(assert (=> b!3852011 (= res!1559424 (= (value!200469 (_1!23140 (v!39021 lt!1337880))) lt!1337894))))

(declare-fun apply!9553 (TokenValueInjection!12508 BalanceConc!24636) TokenValue!6540)

(declare-fun seqFromList!4581 (List!40942) BalanceConc!24636)

(assert (=> b!3852011 (= lt!1337894 (apply!9553 (transformation!6310 (rule!9166 (_1!23140 (v!39021 lt!1337880)))) (seqFromList!4581 lt!1337893)))))

(assert (=> b!3852011 (= (_2!23140 (v!39021 lt!1337880)) lt!1337895)))

(declare-fun lt!1337881 () Unit!58490)

(declare-fun lemmaSamePrefixThenSameSuffix!1630 (List!40942 List!40942 List!40942 List!40942 List!40942) Unit!58490)

(assert (=> b!3852011 (= lt!1337881 (lemmaSamePrefixThenSameSuffix!1630 lt!1337893 (_2!23140 (v!39021 lt!1337880)) lt!1337893 lt!1337895 lt!1337889))))

(declare-fun getSuffix!1864 (List!40942 List!40942) List!40942)

(assert (=> b!3852011 (= lt!1337895 (getSuffix!1864 lt!1337889 lt!1337893))))

(declare-fun isPrefix!3409 (List!40942 List!40942) Bool)

(assert (=> b!3852011 (isPrefix!3409 lt!1337893 lt!1337876)))

(declare-fun ++!10378 (List!40942 List!40942) List!40942)

(assert (=> b!3852011 (= lt!1337876 (++!10378 lt!1337893 (_2!23140 (v!39021 lt!1337880))))))

(declare-fun lt!1337879 () Unit!58490)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2272 (List!40942 List!40942) Unit!58490)

(assert (=> b!3852011 (= lt!1337879 (lemmaConcatTwoListThenFirstIsPrefix!2272 lt!1337893 (_2!23140 (v!39021 lt!1337880))))))

(declare-fun list!15194 (BalanceConc!24636) List!40942)

(declare-fun charsOf!4138 (Token!11758) BalanceConc!24636)

(assert (=> b!3852011 (= lt!1337893 (list!15194 (charsOf!4138 (_1!23140 (v!39021 lt!1337880)))))))

(declare-fun ruleValid!2262 (LexerInterface!5899 Rule!12420) Bool)

(assert (=> b!3852011 (ruleValid!2262 thiss!20629 (rule!9166 (_1!23140 (v!39021 lt!1337880))))))

(declare-fun lt!1337886 () Unit!58490)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1342 (LexerInterface!5899 Rule!12420 List!40944) Unit!58490)

(assert (=> b!3852011 (= lt!1337886 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1342 thiss!20629 (rule!9166 (_1!23140 (v!39021 lt!1337880))) rules!2768))))

(declare-fun lt!1337878 () Unit!58490)

(declare-fun lemmaCharactersSize!971 (Token!11758) Unit!58490)

(assert (=> b!3852011 (= lt!1337878 (lemmaCharactersSize!971 (_1!23140 (v!39021 lt!1337880))))))

(declare-fun b!3852012 () Bool)

(declare-fun tp!1167595 () Bool)

(assert (=> b!3852012 (= e!2380954 (and tp_is_empty!19401 tp!1167595))))

(declare-fun b!3852013 () Bool)

(assert (=> b!3852013 (= e!2380951 e!2380964)))

(declare-fun res!1559434 () Bool)

(assert (=> b!3852013 (=> res!1559434 e!2380964)))

(declare-fun lt!1337877 () Int)

(assert (=> b!3852013 (= res!1559434 (or (not (= (+ lt!1337877 lt!1337892) lt!1337887)) (<= lt!1337888 lt!1337877)))))

(assert (=> b!3852013 (= lt!1337877 (size!30706 prefix!426))))

(assert (=> b!3852014 (= e!2380959 (and tp!1167590 tp!1167589))))

(declare-fun b!3852015 () Bool)

(assert (=> b!3852015 (= e!2380957 (= (size!30705 (_1!23140 (v!39021 lt!1337880))) (size!30706 (originalCharacters!6910 (_1!23140 (v!39021 lt!1337880))))))))

(declare-fun b!3852016 () Bool)

(declare-fun tp!1167582 () Bool)

(assert (=> b!3852016 (= e!2380961 (and (inv!21 (value!200469 (h!46241 suffixTokens!72))) e!2380976 tp!1167582))))

(declare-fun b!3852017 () Bool)

(assert (=> b!3852017 (= e!2380972 e!2380978)))

(declare-fun res!1559436 () Bool)

(assert (=> b!3852017 (=> (not res!1559436) (not e!2380978))))

(declare-fun lt!1337882 () List!40945)

(assert (=> b!3852017 (= res!1559436 (= lt!1337885 (tuple2!40011 lt!1337882 suffixResult!91)))))

(assert (=> b!3852017 (= lt!1337885 (lexList!1667 thiss!20629 rules!2768 lt!1337889))))

(assert (=> b!3852017 (= lt!1337882 (++!10377 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3852017 (= lt!1337889 (++!10378 prefix!426 suffix!1176))))

(declare-fun b!3852018 () Bool)

(declare-fun tp!1167587 () Bool)

(assert (=> b!3852018 (= e!2380967 (and (inv!54971 (h!46241 prefixTokens!80)) e!2380968 tp!1167587))))

(assert (= (and start!360908 res!1559439) b!3852002))

(assert (= (and b!3852002 res!1559435) b!3852005))

(assert (= (and b!3852005 res!1559428) b!3852008))

(assert (= (and b!3852008 res!1559429) b!3851995))

(assert (= (and b!3851995 res!1559430) b!3852017))

(assert (= (and b!3852017 res!1559436) b!3851988))

(assert (= (and b!3851988 res!1559438) b!3852000))

(assert (= (and b!3852000 res!1559437) b!3852011))

(assert (= (and b!3852011 res!1559424) b!3852015))

(assert (= (and b!3852011 (not res!1559427)) b!3852010))

(assert (= (and b!3852010 (not res!1559423)) b!3851989))

(assert (= (and b!3851989 (not res!1559425)) b!3851999))

(assert (= (and b!3851999 (not res!1559433)) b!3851990))

(assert (= (and b!3851990 (not res!1559431)) b!3852013))

(assert (= (and b!3852013 (not res!1559434)) b!3851998))

(assert (= (and b!3851998 (not res!1559426)) b!3852007))

(assert (= (and b!3852007 (not res!1559432)) b!3851997))

(assert (= (and start!360908 ((_ is Cons!40818) suffixResult!91)) b!3852001))

(assert (= (and start!360908 ((_ is Cons!40818) suffix!1176)) b!3852012))

(assert (= b!3851996 b!3851994))

(assert (= b!3852006 b!3851996))

(assert (= (and start!360908 ((_ is Cons!40820) rules!2768)) b!3852006))

(assert (= b!3852009 b!3852014))

(assert (= b!3851992 b!3852009))

(assert (= b!3852018 b!3851992))

(assert (= (and start!360908 ((_ is Cons!40821) prefixTokens!80)) b!3852018))

(assert (= b!3851991 b!3852003))

(assert (= b!3852016 b!3851991))

(assert (= b!3851993 b!3852016))

(assert (= (and start!360908 ((_ is Cons!40821) suffixTokens!72)) b!3851993))

(assert (= (and start!360908 ((_ is Cons!40818) prefix!426)) b!3852004))

(declare-fun m!4406951 () Bool)

(assert (=> b!3852016 m!4406951))

(declare-fun m!4406953 () Bool)

(assert (=> b!3852013 m!4406953))

(declare-fun m!4406955 () Bool)

(assert (=> b!3852002 m!4406955))

(declare-fun m!4406957 () Bool)

(assert (=> b!3852007 m!4406957))

(declare-fun m!4406959 () Bool)

(assert (=> b!3852007 m!4406959))

(declare-fun m!4406961 () Bool)

(assert (=> b!3852005 m!4406961))

(declare-fun m!4406963 () Bool)

(assert (=> b!3851988 m!4406963))

(declare-fun m!4406965 () Bool)

(assert (=> b!3851997 m!4406965))

(declare-fun m!4406967 () Bool)

(assert (=> b!3851990 m!4406967))

(declare-fun m!4406969 () Bool)

(assert (=> b!3851996 m!4406969))

(declare-fun m!4406971 () Bool)

(assert (=> b!3851996 m!4406971))

(declare-fun m!4406973 () Bool)

(assert (=> b!3851995 m!4406973))

(declare-fun m!4406975 () Bool)

(assert (=> b!3852008 m!4406975))

(declare-fun m!4406977 () Bool)

(assert (=> b!3852010 m!4406977))

(declare-fun m!4406979 () Bool)

(assert (=> b!3852017 m!4406979))

(declare-fun m!4406981 () Bool)

(assert (=> b!3852017 m!4406981))

(declare-fun m!4406983 () Bool)

(assert (=> b!3852017 m!4406983))

(declare-fun m!4406985 () Bool)

(assert (=> b!3851998 m!4406985))

(declare-fun m!4406987 () Bool)

(assert (=> b!3851998 m!4406987))

(declare-fun m!4406989 () Bool)

(assert (=> b!3851998 m!4406989))

(declare-fun m!4406991 () Bool)

(assert (=> b!3852015 m!4406991))

(declare-fun m!4406993 () Bool)

(assert (=> b!3851992 m!4406993))

(declare-fun m!4406995 () Bool)

(assert (=> b!3852011 m!4406995))

(declare-fun m!4406997 () Bool)

(assert (=> b!3852011 m!4406997))

(declare-fun m!4406999 () Bool)

(assert (=> b!3852011 m!4406999))

(declare-fun m!4407001 () Bool)

(assert (=> b!3852011 m!4407001))

(declare-fun m!4407003 () Bool)

(assert (=> b!3852011 m!4407003))

(declare-fun m!4407005 () Bool)

(assert (=> b!3852011 m!4407005))

(declare-fun m!4407007 () Bool)

(assert (=> b!3852011 m!4407007))

(declare-fun m!4407009 () Bool)

(assert (=> b!3852011 m!4407009))

(declare-fun m!4407011 () Bool)

(assert (=> b!3852011 m!4407011))

(assert (=> b!3852011 m!4407005))

(declare-fun m!4407013 () Bool)

(assert (=> b!3852011 m!4407013))

(declare-fun m!4407015 () Bool)

(assert (=> b!3852011 m!4407015))

(declare-fun m!4407017 () Bool)

(assert (=> b!3852011 m!4407017))

(declare-fun m!4407019 () Bool)

(assert (=> b!3852011 m!4407019))

(declare-fun m!4407021 () Bool)

(assert (=> b!3852011 m!4407021))

(assert (=> b!3852011 m!4406995))

(declare-fun m!4407023 () Bool)

(assert (=> b!3851999 m!4407023))

(declare-fun m!4407025 () Bool)

(assert (=> b!3851999 m!4407025))

(declare-fun m!4407027 () Bool)

(assert (=> b!3851993 m!4407027))

(declare-fun m!4407029 () Bool)

(assert (=> b!3851991 m!4407029))

(declare-fun m!4407031 () Bool)

(assert (=> b!3851991 m!4407031))

(declare-fun m!4407033 () Bool)

(assert (=> b!3852018 m!4407033))

(declare-fun m!4407035 () Bool)

(assert (=> b!3852009 m!4407035))

(declare-fun m!4407037 () Bool)

(assert (=> b!3852009 m!4407037))

(declare-fun m!4407039 () Bool)

(assert (=> b!3852000 m!4407039))

(check-sat (not b!3852008) (not b!3852005) (not b_next!103991) (not b!3851996) (not b_next!103989) (not b!3851999) (not b!3852006) (not b!3851997) tp_is_empty!19401 (not b!3851988) (not b!3852012) (not b!3851990) (not b!3852013) b_and!287743 (not b!3852001) (not b!3852016) (not b_next!103995) (not b_next!103999) (not b!3852000) b_and!287741 (not b!3852015) (not b!3851992) b_and!287747 (not b_next!103997) b_and!287745 (not b!3851993) (not b!3852017) (not b!3852009) (not b!3851998) (not b!3852011) (not b!3852018) b_and!287749 (not b_next!103993) (not b!3851991) (not b!3852007) (not b!3852002) (not b!3852004) (not b!3852010) (not b!3851995) b_and!287739)
(check-sat b_and!287743 (not b_next!103991) b_and!287741 (not b_next!103989) b_and!287749 (not b_next!103993) b_and!287739 (not b_next!103995) (not b_next!103999) b_and!287747 (not b_next!103997) b_and!287745)
