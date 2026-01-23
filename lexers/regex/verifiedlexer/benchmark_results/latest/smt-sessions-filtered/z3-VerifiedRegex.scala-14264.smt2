; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745504 () Bool)

(assert start!745504)

(declare-fun b!7902512 () Bool)

(declare-fun b_free!134767 () Bool)

(declare-fun b_next!135557 () Bool)

(assert (=> b!7902512 (= b_free!134767 (not b_next!135557))))

(declare-fun tp!2354276 () Bool)

(declare-fun b_and!352795 () Bool)

(assert (=> b!7902512 (= tp!2354276 b_and!352795)))

(declare-fun b_free!134769 () Bool)

(declare-fun b_next!135559 () Bool)

(assert (=> b!7902512 (= b_free!134769 (not b_next!135559))))

(declare-fun tp!2354280 () Bool)

(declare-fun b_and!352797 () Bool)

(assert (=> b!7902512 (= tp!2354280 b_and!352797)))

(declare-fun b!7902501 () Bool)

(declare-fun res!3135467 () Bool)

(declare-fun e!4664594 () Bool)

(assert (=> b!7902501 (=> res!3135467 e!4664594)))

(declare-datatypes ((List!74302 0))(
  ( (Nil!74178) (Cons!74178 (h!80626 (_ BitVec 16)) (t!389307 List!74302)) )
))
(declare-datatypes ((TokenValue!8910 0))(
  ( (FloatLiteralValue!17820 (text!62815 List!74302)) (TokenValueExt!8909 (__x!35107 Int)) (Broken!44550 (value!286884 List!74302)) (Object!9033) (End!8910) (Def!8910) (Underscore!8910) (Match!8910) (Else!8910) (Error!8910) (Case!8910) (If!8910) (Extends!8910) (Abstract!8910) (Class!8910) (Val!8910) (DelimiterValue!17820 (del!8970 List!74302)) (KeywordValue!8916 (value!286885 List!74302)) (CommentValue!17820 (value!286886 List!74302)) (WhitespaceValue!17820 (value!286887 List!74302)) (IndentationValue!8910 (value!286888 List!74302)) (String!82971) (Int32!8910) (Broken!44551 (value!286889 List!74302)) (Boolean!8911) (Unit!169208) (OperatorValue!8913 (op!8970 List!74302)) (IdentifierValue!17820 (value!286890 List!74302)) (IdentifierValue!17821 (value!286891 List!74302)) (WhitespaceValue!17821 (value!286892 List!74302)) (True!17820) (False!17820) (Broken!44552 (value!286893 List!74302)) (Broken!44553 (value!286894 List!74302)) (True!17821) (RightBrace!8910) (RightBracket!8910) (Colon!8910) (Null!8910) (Comma!8910) (LeftBracket!8910) (False!17821) (LeftBrace!8910) (ImaginaryLiteralValue!8910 (text!62816 List!74302)) (StringLiteralValue!26730 (value!286895 List!74302)) (EOFValue!8910 (value!286896 List!74302)) (IdentValue!8910 (value!286897 List!74302)) (DelimiterValue!17821 (value!286898 List!74302)) (DedentValue!8910 (value!286899 List!74302)) (NewLineValue!8910 (value!286900 List!74302)) (IntegerValue!26730 (value!286901 (_ BitVec 32)) (text!62817 List!74302)) (IntegerValue!26731 (value!286902 Int) (text!62818 List!74302)) (Times!8910) (Or!8910) (Equal!8910) (Minus!8910) (Broken!44554 (value!286903 List!74302)) (And!8910) (Div!8910) (LessEqual!8910) (Mod!8910) (Concat!30207) (Not!8910) (Plus!8910) (SpaceValue!8910 (value!286904 List!74302)) (IntegerValue!26732 (value!286905 Int) (text!62819 List!74302)) (StringLiteralValue!26731 (text!62820 List!74302)) (FloatLiteralValue!17821 (text!62821 List!74302)) (BytesLiteralValue!8910 (value!286906 List!74302)) (CommentValue!17821 (value!286907 List!74302)) (StringLiteralValue!26732 (value!286908 List!74302)) (ErrorTokenValue!8910 (msg!8971 List!74302)) )
))
(declare-datatypes ((C!42924 0))(
  ( (C!42925 (val!31926 Int)) )
))
(declare-datatypes ((List!74303 0))(
  ( (Nil!74179) (Cons!74179 (h!80627 C!42924) (t!389308 List!74303)) )
))
(declare-datatypes ((IArray!31597 0))(
  ( (IArray!31598 (innerList!15856 List!74303)) )
))
(declare-datatypes ((Conc!15768 0))(
  ( (Node!15768 (left!56588 Conc!15768) (right!56918 Conc!15768) (csize!31766 Int) (cheight!15979 Int)) (Leaf!30033 (xs!19150 IArray!31597) (csize!31767 Int)) (Empty!15768) )
))
(declare-datatypes ((BalanceConc!30654 0))(
  ( (BalanceConc!30655 (c!1450223 Conc!15768)) )
))
(declare-datatypes ((String!82972 0))(
  ( (String!82973 (value!286909 String)) )
))
(declare-datatypes ((Regex!21297 0))(
  ( (ElementMatch!21297 (c!1450224 C!42924)) (Concat!30208 (regOne!43106 Regex!21297) (regTwo!43106 Regex!21297)) (EmptyExpr!21297) (Star!21297 (reg!21626 Regex!21297)) (EmptyLang!21297) (Union!21297 (regOne!43107 Regex!21297) (regTwo!43107 Regex!21297)) )
))
(declare-datatypes ((TokenValueInjection!17128 0))(
  ( (TokenValueInjection!17129 (toValue!11643 Int) (toChars!11502 Int)) )
))
(declare-datatypes ((Rule!16988 0))(
  ( (Rule!16989 (regex!8594 Regex!21297) (tag!9458 String!82972) (isSeparator!8594 Bool) (transformation!8594 TokenValueInjection!17128)) )
))
(declare-datatypes ((Token!15608 0))(
  ( (Token!15609 (value!286910 TokenValue!8910) (rule!11882 Rule!16988) (size!42982 Int) (originalCharacters!8835 List!74303)) )
))
(declare-datatypes ((tuple2!70214 0))(
  ( (tuple2!70215 (_1!38410 Token!15608) (_2!38410 List!74303)) )
))
(declare-datatypes ((Option!17876 0))(
  ( (None!17875) (Some!17875 (v!55016 tuple2!70214)) )
))
(declare-fun lt!2683850 () Option!17876)

(declare-fun isDefined!14452 (Option!17876) Bool)

(assert (=> b!7902501 (= res!3135467 (not (isDefined!14452 lt!2683850)))))

(declare-fun b!7902502 () Bool)

(declare-fun res!3135466 () Bool)

(declare-fun e!4664599 () Bool)

(assert (=> b!7902502 (=> (not res!3135466) (not e!4664599))))

(declare-datatypes ((List!74304 0))(
  ( (Nil!74180) (Cons!74180 (h!80628 Rule!16988) (t!389309 List!74304)) )
))
(declare-fun rulesArg!141 () List!74304)

(declare-fun isEmpty!42556 (List!74304) Bool)

(assert (=> b!7902502 (= res!3135466 (not (isEmpty!42556 rulesArg!141)))))

(declare-fun b!7902503 () Bool)

(declare-fun res!3135469 () Bool)

(declare-fun e!4664595 () Bool)

(assert (=> b!7902503 (=> res!3135469 e!4664595)))

(declare-fun lt!2683853 () List!74303)

(declare-fun input!1184 () List!74303)

(declare-fun lt!2683851 () tuple2!70214)

(declare-fun ++!18156 (List!74303 List!74303) List!74303)

(assert (=> b!7902503 (= res!3135469 (not (= (++!18156 lt!2683853 (_2!38410 lt!2683851)) input!1184)))))

(declare-fun e!4664598 () Bool)

(declare-fun b!7902504 () Bool)

(declare-fun e!4664602 () Bool)

(declare-fun tp!2354278 () Bool)

(declare-fun inv!95167 (String!82972) Bool)

(declare-fun inv!95169 (TokenValueInjection!17128) Bool)

(assert (=> b!7902504 (= e!4664598 (and tp!2354278 (inv!95167 (tag!9458 (h!80628 rulesArg!141))) (inv!95169 (transformation!8594 (h!80628 rulesArg!141))) e!4664602))))

(declare-fun b!7902505 () Bool)

(declare-fun e!4664601 () Bool)

(declare-fun tp_is_empty!52969 () Bool)

(declare-fun tp!2354277 () Bool)

(assert (=> b!7902505 (= e!4664601 (and tp_is_empty!52969 tp!2354277))))

(declare-fun b!7902506 () Bool)

(declare-fun res!3135468 () Bool)

(assert (=> b!7902506 (=> res!3135468 e!4664595)))

(declare-fun size!42983 (List!74303) Int)

(assert (=> b!7902506 (= res!3135468 (>= (size!42983 (_2!38410 lt!2683851)) (size!42983 input!1184)))))

(declare-fun b!7902507 () Bool)

(declare-fun e!4664596 () Bool)

(declare-fun tp!2354279 () Bool)

(assert (=> b!7902507 (= e!4664596 (and e!4664598 tp!2354279))))

(declare-fun res!3135470 () Bool)

(assert (=> start!745504 (=> (not res!3135470) (not e!4664599))))

(declare-datatypes ((LexerInterface!8186 0))(
  ( (LexerInterfaceExt!8183 (__x!35108 Int)) (Lexer!8184) )
))
(declare-fun thiss!14377 () LexerInterface!8186)

(get-info :version)

(assert (=> start!745504 (= res!3135470 ((_ is Lexer!8184) thiss!14377))))

(assert (=> start!745504 e!4664599))

(assert (=> start!745504 true))

(assert (=> start!745504 e!4664596))

(assert (=> start!745504 e!4664601))

(declare-fun b!7902508 () Bool)

(declare-fun e!4664597 () Bool)

(assert (=> b!7902508 (= e!4664597 e!4664594)))

(declare-fun res!3135473 () Bool)

(assert (=> b!7902508 (=> res!3135473 e!4664594)))

(declare-fun lt!2683854 () Option!17876)

(assert (=> b!7902508 (= res!3135473 (or (and ((_ is None!17875) lt!2683850) ((_ is None!17875) lt!2683854)) ((_ is None!17875) lt!2683854) ((_ is None!17875) lt!2683850) (< (size!42982 (_1!38410 (v!55016 lt!2683850))) (size!42982 (_1!38410 (v!55016 lt!2683854))))))))

(declare-fun maxPrefix!4727 (LexerInterface!8186 List!74304 List!74303) Option!17876)

(assert (=> b!7902508 (= lt!2683854 (maxPrefix!4727 thiss!14377 (t!389309 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3774 (LexerInterface!8186 Rule!16988 List!74303) Option!17876)

(assert (=> b!7902508 (= lt!2683850 (maxPrefixOneRule!3774 thiss!14377 (h!80628 rulesArg!141) input!1184))))

(declare-fun b!7902509 () Bool)

(declare-fun res!3135471 () Bool)

(assert (=> b!7902509 (=> res!3135471 e!4664594)))

(declare-fun isEmpty!42557 (Option!17876) Bool)

(assert (=> b!7902509 (= res!3135471 (isEmpty!42557 lt!2683850))))

(declare-fun b!7902510 () Bool)

(declare-fun res!3135465 () Bool)

(assert (=> b!7902510 (=> (not res!3135465) (not e!4664599))))

(declare-fun rulesValidInductive!3405 (LexerInterface!8186 List!74304) Bool)

(assert (=> b!7902510 (= res!3135465 (rulesValidInductive!3405 thiss!14377 rulesArg!141))))

(declare-fun b!7902511 () Bool)

(assert (=> b!7902511 (= e!4664595 true)))

(assert (=> b!7902512 (= e!4664602 (and tp!2354276 tp!2354280))))

(declare-fun b!7902513 () Bool)

(assert (=> b!7902513 (= e!4664599 (not e!4664597))))

(declare-fun res!3135472 () Bool)

(assert (=> b!7902513 (=> res!3135472 e!4664597)))

(assert (=> b!7902513 (= res!3135472 (or (and ((_ is Cons!74180) rulesArg!141) ((_ is Nil!74180) (t!389309 rulesArg!141))) (not ((_ is Cons!74180) rulesArg!141))))))

(declare-fun isPrefix!6427 (List!74303 List!74303) Bool)

(assert (=> b!7902513 (isPrefix!6427 input!1184 input!1184)))

(declare-datatypes ((Unit!169209 0))(
  ( (Unit!169210) )
))
(declare-fun lt!2683852 () Unit!169209)

(declare-fun lemmaIsPrefixRefl!3938 (List!74303 List!74303) Unit!169209)

(assert (=> b!7902513 (= lt!2683852 (lemmaIsPrefixRefl!3938 input!1184 input!1184))))

(declare-fun b!7902514 () Bool)

(assert (=> b!7902514 (= e!4664594 e!4664595)))

(declare-fun res!3135464 () Bool)

(assert (=> b!7902514 (=> res!3135464 e!4664595)))

(assert (=> b!7902514 (= res!3135464 (not (= lt!2683853 (originalCharacters!8835 (_1!38410 lt!2683851)))))))

(declare-fun list!19221 (BalanceConc!30654) List!74303)

(declare-fun charsOf!5538 (Token!15608) BalanceConc!30654)

(assert (=> b!7902514 (= lt!2683853 (list!19221 (charsOf!5538 (_1!38410 lt!2683851))))))

(declare-fun get!26645 (Option!17876) tuple2!70214)

(assert (=> b!7902514 (= lt!2683851 (get!26645 lt!2683850))))

(assert (= (and start!745504 res!3135470) b!7902510))

(assert (= (and b!7902510 res!3135465) b!7902502))

(assert (= (and b!7902502 res!3135466) b!7902513))

(assert (= (and b!7902513 (not res!3135472)) b!7902508))

(assert (= (and b!7902508 (not res!3135473)) b!7902509))

(assert (= (and b!7902509 (not res!3135471)) b!7902501))

(assert (= (and b!7902501 (not res!3135467)) b!7902514))

(assert (= (and b!7902514 (not res!3135464)) b!7902506))

(assert (= (and b!7902506 (not res!3135468)) b!7902503))

(assert (= (and b!7902503 (not res!3135469)) b!7902511))

(assert (= b!7902504 b!7902512))

(assert (= b!7902507 b!7902504))

(assert (= (and start!745504 ((_ is Cons!74180) rulesArg!141)) b!7902507))

(assert (= (and start!745504 ((_ is Cons!74179) input!1184)) b!7902505))

(declare-fun m!8277180 () Bool)

(assert (=> b!7902514 m!8277180))

(assert (=> b!7902514 m!8277180))

(declare-fun m!8277182 () Bool)

(assert (=> b!7902514 m!8277182))

(declare-fun m!8277184 () Bool)

(assert (=> b!7902514 m!8277184))

(declare-fun m!8277186 () Bool)

(assert (=> b!7902503 m!8277186))

(declare-fun m!8277188 () Bool)

(assert (=> b!7902513 m!8277188))

(declare-fun m!8277190 () Bool)

(assert (=> b!7902513 m!8277190))

(declare-fun m!8277192 () Bool)

(assert (=> b!7902509 m!8277192))

(declare-fun m!8277194 () Bool)

(assert (=> b!7902502 m!8277194))

(declare-fun m!8277196 () Bool)

(assert (=> b!7902501 m!8277196))

(declare-fun m!8277198 () Bool)

(assert (=> b!7902510 m!8277198))

(declare-fun m!8277200 () Bool)

(assert (=> b!7902504 m!8277200))

(declare-fun m!8277202 () Bool)

(assert (=> b!7902504 m!8277202))

(declare-fun m!8277204 () Bool)

(assert (=> b!7902506 m!8277204))

(declare-fun m!8277206 () Bool)

(assert (=> b!7902506 m!8277206))

(declare-fun m!8277208 () Bool)

(assert (=> b!7902508 m!8277208))

(declare-fun m!8277210 () Bool)

(assert (=> b!7902508 m!8277210))

(check-sat (not b_next!135559) (not b!7902513) (not b_next!135557) (not b!7902509) (not b!7902506) (not b!7902514) tp_is_empty!52969 (not b!7902505) (not b!7902503) (not b!7902504) (not b!7902510) (not b!7902501) (not b!7902507) (not b!7902508) (not b!7902502) b_and!352797 b_and!352795)
(check-sat b_and!352797 b_and!352795 (not b_next!135559) (not b_next!135557))
