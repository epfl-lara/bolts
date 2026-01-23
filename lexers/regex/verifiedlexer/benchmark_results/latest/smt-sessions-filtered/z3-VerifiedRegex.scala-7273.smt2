; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388228 () Bool)

(assert start!388228)

(declare-fun b!4098323 () Bool)

(declare-fun b_free!114649 () Bool)

(declare-fun b_next!115353 () Bool)

(assert (=> b!4098323 (= b_free!114649 (not b_next!115353))))

(declare-fun tp!1240418 () Bool)

(declare-fun b_and!316327 () Bool)

(assert (=> b!4098323 (= tp!1240418 b_and!316327)))

(declare-fun b_free!114651 () Bool)

(declare-fun b_next!115355 () Bool)

(assert (=> b!4098323 (= b_free!114651 (not b_next!115355))))

(declare-fun tp!1240426 () Bool)

(declare-fun b_and!316329 () Bool)

(assert (=> b!4098323 (= tp!1240426 b_and!316329)))

(declare-fun b!4098325 () Bool)

(declare-fun b_free!114653 () Bool)

(declare-fun b_next!115357 () Bool)

(assert (=> b!4098325 (= b_free!114653 (not b_next!115357))))

(declare-fun tp!1240422 () Bool)

(declare-fun b_and!316331 () Bool)

(assert (=> b!4098325 (= tp!1240422 b_and!316331)))

(declare-fun b_free!114655 () Bool)

(declare-fun b_next!115359 () Bool)

(assert (=> b!4098325 (= b_free!114655 (not b_next!115359))))

(declare-fun tp!1240419 () Bool)

(declare-fun b_and!316333 () Bool)

(assert (=> b!4098325 (= tp!1240419 b_and!316333)))

(declare-fun b!4098311 () Bool)

(declare-fun e!2543206 () Bool)

(declare-fun tp_is_empty!21049 () Bool)

(declare-fun tp!1240425 () Bool)

(assert (=> b!4098311 (= e!2543206 (and tp_is_empty!21049 tp!1240425))))

(declare-fun b!4098312 () Bool)

(declare-fun res!1675440 () Bool)

(declare-fun e!2543201 () Bool)

(assert (=> b!4098312 (=> (not res!1675440) (not e!2543201))))

(declare-datatypes ((C!24232 0))(
  ( (C!24233 (val!14226 Int)) )
))
(declare-datatypes ((Regex!12023 0))(
  ( (ElementMatch!12023 (c!706196 C!24232)) (Concat!19371 (regOne!24558 Regex!12023) (regTwo!24558 Regex!12023)) (EmptyExpr!12023) (Star!12023 (reg!12352 Regex!12023)) (EmptyLang!12023) (Union!12023 (regOne!24559 Regex!12023) (regTwo!24559 Regex!12023)) )
))
(declare-datatypes ((String!50489 0))(
  ( (String!50490 (value!223489 String)) )
))
(declare-datatypes ((List!44077 0))(
  ( (Nil!43953) (Cons!43953 (h!49373 (_ BitVec 16)) (t!339572 List!44077)) )
))
(declare-datatypes ((TokenValue!7348 0))(
  ( (FloatLiteralValue!14696 (text!51881 List!44077)) (TokenValueExt!7347 (__x!26913 Int)) (Broken!36740 (value!223490 List!44077)) (Object!7471) (End!7348) (Def!7348) (Underscore!7348) (Match!7348) (Else!7348) (Error!7348) (Case!7348) (If!7348) (Extends!7348) (Abstract!7348) (Class!7348) (Val!7348) (DelimiterValue!14696 (del!7408 List!44077)) (KeywordValue!7354 (value!223491 List!44077)) (CommentValue!14696 (value!223492 List!44077)) (WhitespaceValue!14696 (value!223493 List!44077)) (IndentationValue!7348 (value!223494 List!44077)) (String!50491) (Int32!7348) (Broken!36741 (value!223495 List!44077)) (Boolean!7349) (Unit!63492) (OperatorValue!7351 (op!7408 List!44077)) (IdentifierValue!14696 (value!223496 List!44077)) (IdentifierValue!14697 (value!223497 List!44077)) (WhitespaceValue!14697 (value!223498 List!44077)) (True!14696) (False!14696) (Broken!36742 (value!223499 List!44077)) (Broken!36743 (value!223500 List!44077)) (True!14697) (RightBrace!7348) (RightBracket!7348) (Colon!7348) (Null!7348) (Comma!7348) (LeftBracket!7348) (False!14697) (LeftBrace!7348) (ImaginaryLiteralValue!7348 (text!51882 List!44077)) (StringLiteralValue!22044 (value!223501 List!44077)) (EOFValue!7348 (value!223502 List!44077)) (IdentValue!7348 (value!223503 List!44077)) (DelimiterValue!14697 (value!223504 List!44077)) (DedentValue!7348 (value!223505 List!44077)) (NewLineValue!7348 (value!223506 List!44077)) (IntegerValue!22044 (value!223507 (_ BitVec 32)) (text!51883 List!44077)) (IntegerValue!22045 (value!223508 Int) (text!51884 List!44077)) (Times!7348) (Or!7348) (Equal!7348) (Minus!7348) (Broken!36744 (value!223509 List!44077)) (And!7348) (Div!7348) (LessEqual!7348) (Mod!7348) (Concat!19372) (Not!7348) (Plus!7348) (SpaceValue!7348 (value!223510 List!44077)) (IntegerValue!22046 (value!223511 Int) (text!51885 List!44077)) (StringLiteralValue!22045 (text!51886 List!44077)) (FloatLiteralValue!14697 (text!51887 List!44077)) (BytesLiteralValue!7348 (value!223512 List!44077)) (CommentValue!14697 (value!223513 List!44077)) (StringLiteralValue!22046 (value!223514 List!44077)) (ErrorTokenValue!7348 (msg!7409 List!44077)) )
))
(declare-datatypes ((List!44078 0))(
  ( (Nil!43954) (Cons!43954 (h!49374 C!24232) (t!339573 List!44078)) )
))
(declare-datatypes ((IArray!26663 0))(
  ( (IArray!26664 (innerList!13389 List!44078)) )
))
(declare-datatypes ((Conc!13329 0))(
  ( (Node!13329 (left!33042 Conc!13329) (right!33372 Conc!13329) (csize!26888 Int) (cheight!13540 Int)) (Leaf!20603 (xs!16635 IArray!26663) (csize!26889 Int)) (Empty!13329) )
))
(declare-datatypes ((BalanceConc!26252 0))(
  ( (BalanceConc!26253 (c!706197 Conc!13329)) )
))
(declare-datatypes ((TokenValueInjection!14124 0))(
  ( (TokenValueInjection!14125 (toValue!9722 Int) (toChars!9581 Int)) )
))
(declare-datatypes ((Rule!14036 0))(
  ( (Rule!14037 (regex!7118 Regex!12023) (tag!7978 String!50489) (isSeparator!7118 Bool) (transformation!7118 TokenValueInjection!14124)) )
))
(declare-datatypes ((List!44079 0))(
  ( (Nil!43955) (Cons!43955 (h!49375 Rule!14036) (t!339574 List!44079)) )
))
(declare-fun rules!3870 () List!44079)

(declare-fun isEmpty!26304 (List!44079) Bool)

(assert (=> b!4098312 (= res!1675440 (not (isEmpty!26304 rules!3870)))))

(declare-fun b!4098313 () Bool)

(declare-fun res!1675442 () Bool)

(declare-fun e!2543194 () Bool)

(assert (=> b!4098313 (=> res!1675442 e!2543194)))

(declare-fun r!4213 () Rule!14036)

(get-info :version)

(assert (=> b!4098313 (= res!1675442 (or (and ((_ is Cons!43955) rules!3870) (= (h!49375 rules!3870) r!4213)) (and ((_ is Cons!43955) rules!3870) (not (= (h!49375 rules!3870) r!4213))) ((_ is Nil!43955) rules!3870)))))

(declare-fun b!4098314 () Bool)

(declare-datatypes ((Token!13362 0))(
  ( (Token!13363 (value!223515 TokenValue!7348) (rule!10274 Rule!14036) (size!32838 Int) (originalCharacters!7712 List!44078)) )
))
(declare-fun lt!1465902 () Token!13362)

(declare-fun inv!58689 (Token!13362) Bool)

(assert (=> b!4098314 (= e!2543194 (inv!58689 lt!1465902))))

(declare-fun b!4098315 () Bool)

(declare-fun e!2543198 () Bool)

(assert (=> b!4098315 (= e!2543198 (not e!2543194))))

(declare-fun res!1675441 () Bool)

(assert (=> b!4098315 (=> res!1675441 e!2543194)))

(declare-fun p!2988 () List!44078)

(declare-fun matchR!5964 (Regex!12023 List!44078) Bool)

(assert (=> b!4098315 (= res!1675441 (not (matchR!5964 (regex!7118 r!4213) p!2988)))))

(declare-datatypes ((LexerInterface!6707 0))(
  ( (LexerInterfaceExt!6704 (__x!26914 Int)) (Lexer!6705) )
))
(declare-fun thiss!26199 () LexerInterface!6707)

(declare-fun ruleValid!3038 (LexerInterface!6707 Rule!14036) Bool)

(assert (=> b!4098315 (ruleValid!3038 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63493 0))(
  ( (Unit!63494) )
))
(declare-fun lt!1465901 () Unit!63493)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2104 (LexerInterface!6707 Rule!14036 List!44079) Unit!63493)

(assert (=> b!4098315 (= lt!1465901 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2104 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4098316 () Bool)

(declare-fun res!1675438 () Bool)

(assert (=> b!4098316 (=> (not res!1675438) (not e!2543201))))

(declare-fun suffix!1518 () List!44078)

(declare-fun input!3411 () List!44078)

(declare-fun ++!11524 (List!44078 List!44078) List!44078)

(assert (=> b!4098316 (= res!1675438 (= input!3411 (++!11524 p!2988 suffix!1518)))))

(declare-fun b!4098317 () Bool)

(declare-fun e!2543195 () Bool)

(declare-fun tp!1240420 () Bool)

(assert (=> b!4098317 (= e!2543195 (and tp_is_empty!21049 tp!1240420))))

(declare-fun b!4098318 () Bool)

(declare-fun tp!1240424 () Bool)

(declare-fun e!2543203 () Bool)

(declare-fun e!2543204 () Bool)

(declare-fun inv!58686 (String!50489) Bool)

(declare-fun inv!58690 (TokenValueInjection!14124) Bool)

(assert (=> b!4098318 (= e!2543203 (and tp!1240424 (inv!58686 (tag!7978 (h!49375 rules!3870))) (inv!58690 (transformation!7118 (h!49375 rules!3870))) e!2543204))))

(declare-fun b!4098319 () Bool)

(assert (=> b!4098319 (= e!2543201 e!2543198)))

(declare-fun res!1675443 () Bool)

(assert (=> b!4098319 (=> (not res!1675443) (not e!2543198))))

(declare-datatypes ((tuple2!42876 0))(
  ( (tuple2!42877 (_1!24572 Token!13362) (_2!24572 List!44078)) )
))
(declare-datatypes ((Option!9524 0))(
  ( (None!9523) (Some!9523 (v!40027 tuple2!42876)) )
))
(declare-fun maxPrefix!3997 (LexerInterface!6707 List!44079 List!44078) Option!9524)

(assert (=> b!4098319 (= res!1675443 (= (maxPrefix!3997 thiss!26199 rules!3870 input!3411) (Some!9523 (tuple2!42877 lt!1465902 suffix!1518))))))

(declare-fun lt!1465900 () BalanceConc!26252)

(declare-fun apply!10301 (TokenValueInjection!14124 BalanceConc!26252) TokenValue!7348)

(declare-fun size!32839 (List!44078) Int)

(assert (=> b!4098319 (= lt!1465902 (Token!13363 (apply!10301 (transformation!7118 r!4213) lt!1465900) r!4213 (size!32839 p!2988) p!2988))))

(declare-fun lt!1465903 () Unit!63493)

(declare-fun lemmaSemiInverse!2085 (TokenValueInjection!14124 BalanceConc!26252) Unit!63493)

(assert (=> b!4098319 (= lt!1465903 (lemmaSemiInverse!2085 (transformation!7118 r!4213) lt!1465900))))

(declare-fun seqFromList!5335 (List!44078) BalanceConc!26252)

(assert (=> b!4098319 (= lt!1465900 (seqFromList!5335 p!2988))))

(declare-fun b!4098320 () Bool)

(declare-fun e!2543205 () Bool)

(declare-fun tp!1240421 () Bool)

(assert (=> b!4098320 (= e!2543205 (and e!2543203 tp!1240421))))

(declare-fun b!4098321 () Bool)

(declare-fun res!1675445 () Bool)

(assert (=> b!4098321 (=> (not res!1675445) (not e!2543201))))

(declare-fun isEmpty!26305 (List!44078) Bool)

(assert (=> b!4098321 (= res!1675445 (not (isEmpty!26305 p!2988)))))

(declare-fun b!4098322 () Bool)

(declare-fun e!2543199 () Bool)

(declare-fun tp!1240417 () Bool)

(assert (=> b!4098322 (= e!2543199 (and tp_is_empty!21049 tp!1240417))))

(assert (=> b!4098323 (= e!2543204 (and tp!1240418 tp!1240426))))

(declare-fun b!4098324 () Bool)

(declare-fun res!1675444 () Bool)

(assert (=> b!4098324 (=> (not res!1675444) (not e!2543201))))

(declare-fun contains!8805 (List!44079 Rule!14036) Bool)

(assert (=> b!4098324 (= res!1675444 (contains!8805 rules!3870 r!4213))))

(declare-fun res!1675439 () Bool)

(assert (=> start!388228 (=> (not res!1675439) (not e!2543201))))

(assert (=> start!388228 (= res!1675439 ((_ is Lexer!6705) thiss!26199))))

(assert (=> start!388228 e!2543201))

(assert (=> start!388228 true))

(assert (=> start!388228 e!2543206))

(assert (=> start!388228 e!2543205))

(assert (=> start!388228 e!2543195))

(assert (=> start!388228 e!2543199))

(declare-fun e!2543200 () Bool)

(assert (=> start!388228 e!2543200))

(declare-fun e!2543202 () Bool)

(declare-fun tp!1240423 () Bool)

(declare-fun b!4098310 () Bool)

(assert (=> b!4098310 (= e!2543200 (and tp!1240423 (inv!58686 (tag!7978 r!4213)) (inv!58690 (transformation!7118 r!4213)) e!2543202))))

(assert (=> b!4098325 (= e!2543202 (and tp!1240422 tp!1240419))))

(declare-fun b!4098326 () Bool)

(declare-fun res!1675437 () Bool)

(assert (=> b!4098326 (=> (not res!1675437) (not e!2543201))))

(declare-fun rulesInvariant!6050 (LexerInterface!6707 List!44079) Bool)

(assert (=> b!4098326 (= res!1675437 (rulesInvariant!6050 thiss!26199 rules!3870))))

(assert (= (and start!388228 res!1675439) b!4098312))

(assert (= (and b!4098312 res!1675440) b!4098326))

(assert (= (and b!4098326 res!1675437) b!4098324))

(assert (= (and b!4098324 res!1675444) b!4098316))

(assert (= (and b!4098316 res!1675438) b!4098321))

(assert (= (and b!4098321 res!1675445) b!4098319))

(assert (= (and b!4098319 res!1675443) b!4098315))

(assert (= (and b!4098315 (not res!1675441)) b!4098313))

(assert (= (and b!4098313 (not res!1675442)) b!4098314))

(assert (= (and start!388228 ((_ is Cons!43954) suffix!1518)) b!4098311))

(assert (= b!4098318 b!4098323))

(assert (= b!4098320 b!4098318))

(assert (= (and start!388228 ((_ is Cons!43955) rules!3870)) b!4098320))

(assert (= (and start!388228 ((_ is Cons!43954) p!2988)) b!4098317))

(assert (= (and start!388228 ((_ is Cons!43954) input!3411)) b!4098322))

(assert (= b!4098310 b!4098325))

(assert (= start!388228 b!4098310))

(declare-fun m!4705317 () Bool)

(assert (=> b!4098319 m!4705317))

(declare-fun m!4705319 () Bool)

(assert (=> b!4098319 m!4705319))

(declare-fun m!4705321 () Bool)

(assert (=> b!4098319 m!4705321))

(declare-fun m!4705323 () Bool)

(assert (=> b!4098319 m!4705323))

(declare-fun m!4705325 () Bool)

(assert (=> b!4098319 m!4705325))

(declare-fun m!4705327 () Bool)

(assert (=> b!4098316 m!4705327))

(declare-fun m!4705329 () Bool)

(assert (=> b!4098324 m!4705329))

(declare-fun m!4705331 () Bool)

(assert (=> b!4098310 m!4705331))

(declare-fun m!4705333 () Bool)

(assert (=> b!4098310 m!4705333))

(declare-fun m!4705335 () Bool)

(assert (=> b!4098321 m!4705335))

(declare-fun m!4705337 () Bool)

(assert (=> b!4098326 m!4705337))

(declare-fun m!4705339 () Bool)

(assert (=> b!4098315 m!4705339))

(declare-fun m!4705341 () Bool)

(assert (=> b!4098315 m!4705341))

(declare-fun m!4705343 () Bool)

(assert (=> b!4098315 m!4705343))

(declare-fun m!4705345 () Bool)

(assert (=> b!4098312 m!4705345))

(declare-fun m!4705347 () Bool)

(assert (=> b!4098318 m!4705347))

(declare-fun m!4705349 () Bool)

(assert (=> b!4098318 m!4705349))

(declare-fun m!4705351 () Bool)

(assert (=> b!4098314 m!4705351))

(check-sat (not b!4098317) b_and!316327 (not b!4098314) (not b_next!115355) (not b_next!115359) (not b!4098311) (not b!4098321) tp_is_empty!21049 (not b!4098312) (not b!4098310) (not b_next!115357) (not b!4098316) (not b!4098322) (not b!4098315) (not b!4098324) (not b!4098326) (not b!4098318) b_and!316331 b_and!316333 b_and!316329 (not b!4098320) (not b!4098319) (not b_next!115353))
(check-sat (not b_next!115357) b_and!316327 (not b_next!115355) (not b_next!115359) b_and!316329 (not b_next!115353) b_and!316331 b_and!316333)
