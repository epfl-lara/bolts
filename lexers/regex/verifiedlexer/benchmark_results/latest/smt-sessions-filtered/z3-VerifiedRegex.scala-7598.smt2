; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401282 () Bool)

(assert start!401282)

(declare-fun b!4200501 () Bool)

(declare-fun b_free!122543 () Bool)

(declare-fun b_next!123247 () Bool)

(assert (=> b!4200501 (= b_free!122543 (not b_next!123247))))

(declare-fun tp!1283343 () Bool)

(declare-fun b_and!329597 () Bool)

(assert (=> b!4200501 (= tp!1283343 b_and!329597)))

(declare-fun b_free!122545 () Bool)

(declare-fun b_next!123249 () Bool)

(assert (=> b!4200501 (= b_free!122545 (not b_next!123249))))

(declare-fun tp!1283331 () Bool)

(declare-fun b_and!329599 () Bool)

(assert (=> b!4200501 (= tp!1283331 b_and!329599)))

(declare-fun b!4200510 () Bool)

(declare-fun b_free!122547 () Bool)

(declare-fun b_next!123251 () Bool)

(assert (=> b!4200510 (= b_free!122547 (not b_next!123251))))

(declare-fun tp!1283334 () Bool)

(declare-fun b_and!329601 () Bool)

(assert (=> b!4200510 (= tp!1283334 b_and!329601)))

(declare-fun b_free!122549 () Bool)

(declare-fun b_next!123253 () Bool)

(assert (=> b!4200510 (= b_free!122549 (not b_next!123253))))

(declare-fun tp!1283341 () Bool)

(declare-fun b_and!329603 () Bool)

(assert (=> b!4200510 (= tp!1283341 b_and!329603)))

(declare-fun b!4200499 () Bool)

(declare-fun b_free!122551 () Bool)

(declare-fun b_next!123255 () Bool)

(assert (=> b!4200499 (= b_free!122551 (not b_next!123255))))

(declare-fun tp!1283344 () Bool)

(declare-fun b_and!329605 () Bool)

(assert (=> b!4200499 (= tp!1283344 b_and!329605)))

(declare-fun b_free!122553 () Bool)

(declare-fun b_next!123257 () Bool)

(assert (=> b!4200499 (= b_free!122553 (not b_next!123257))))

(declare-fun tp!1283330 () Bool)

(declare-fun b_and!329607 () Bool)

(assert (=> b!4200499 (= tp!1283330 b_and!329607)))

(declare-fun b!4200493 () Bool)

(declare-fun e!2607458 () Bool)

(declare-fun e!2607456 () Bool)

(declare-fun tp!1283336 () Bool)

(assert (=> b!4200493 (= e!2607458 (and e!2607456 tp!1283336))))

(declare-fun tp!1283342 () Bool)

(declare-fun e!2607470 () Bool)

(declare-fun e!2607463 () Bool)

(declare-fun b!4200494 () Bool)

(declare-datatypes ((List!46287 0))(
  ( (Nil!46163) (Cons!46163 (h!51583 (_ BitVec 16)) (t!346792 List!46287)) )
))
(declare-datatypes ((TokenValue!7940 0))(
  ( (FloatLiteralValue!15880 (text!56025 List!46287)) (TokenValueExt!7939 (__x!28103 Int)) (Broken!39700 (value!240238 List!46287)) (Object!8063) (End!7940) (Def!7940) (Underscore!7940) (Match!7940) (Else!7940) (Error!7940) (Case!7940) (If!7940) (Extends!7940) (Abstract!7940) (Class!7940) (Val!7940) (DelimiterValue!15880 (del!8000 List!46287)) (KeywordValue!7946 (value!240239 List!46287)) (CommentValue!15880 (value!240240 List!46287)) (WhitespaceValue!15880 (value!240241 List!46287)) (IndentationValue!7940 (value!240242 List!46287)) (String!53569) (Int32!7940) (Broken!39701 (value!240243 List!46287)) (Boolean!7941) (Unit!65254) (OperatorValue!7943 (op!8000 List!46287)) (IdentifierValue!15880 (value!240244 List!46287)) (IdentifierValue!15881 (value!240245 List!46287)) (WhitespaceValue!15881 (value!240246 List!46287)) (True!15880) (False!15880) (Broken!39702 (value!240247 List!46287)) (Broken!39703 (value!240248 List!46287)) (True!15881) (RightBrace!7940) (RightBracket!7940) (Colon!7940) (Null!7940) (Comma!7940) (LeftBracket!7940) (False!15881) (LeftBrace!7940) (ImaginaryLiteralValue!7940 (text!56026 List!46287)) (StringLiteralValue!23820 (value!240249 List!46287)) (EOFValue!7940 (value!240250 List!46287)) (IdentValue!7940 (value!240251 List!46287)) (DelimiterValue!15881 (value!240252 List!46287)) (DedentValue!7940 (value!240253 List!46287)) (NewLineValue!7940 (value!240254 List!46287)) (IntegerValue!23820 (value!240255 (_ BitVec 32)) (text!56027 List!46287)) (IntegerValue!23821 (value!240256 Int) (text!56028 List!46287)) (Times!7940) (Or!7940) (Equal!7940) (Minus!7940) (Broken!39704 (value!240257 List!46287)) (And!7940) (Div!7940) (LessEqual!7940) (Mod!7940) (Concat!20555) (Not!7940) (Plus!7940) (SpaceValue!7940 (value!240258 List!46287)) (IntegerValue!23822 (value!240259 Int) (text!56029 List!46287)) (StringLiteralValue!23821 (text!56030 List!46287)) (FloatLiteralValue!15881 (text!56031 List!46287)) (BytesLiteralValue!7940 (value!240260 List!46287)) (CommentValue!15881 (value!240261 List!46287)) (StringLiteralValue!23822 (value!240262 List!46287)) (ErrorTokenValue!7940 (msg!8001 List!46287)) )
))
(declare-datatypes ((C!25424 0))(
  ( (C!25425 (val!14874 Int)) )
))
(declare-datatypes ((List!46288 0))(
  ( (Nil!46164) (Cons!46164 (h!51584 C!25424) (t!346793 List!46288)) )
))
(declare-datatypes ((IArray!27847 0))(
  ( (IArray!27848 (innerList!13981 List!46288)) )
))
(declare-datatypes ((Regex!12615 0))(
  ( (ElementMatch!12615 (c!716210 C!25424)) (Concat!20556 (regOne!25742 Regex!12615) (regTwo!25742 Regex!12615)) (EmptyExpr!12615) (Star!12615 (reg!12944 Regex!12615)) (EmptyLang!12615) (Union!12615 (regOne!25743 Regex!12615) (regTwo!25743 Regex!12615)) )
))
(declare-datatypes ((Conc!13921 0))(
  ( (Node!13921 (left!34387 Conc!13921) (right!34717 Conc!13921) (csize!28072 Int) (cheight!14132 Int)) (Leaf!21520 (xs!17227 IArray!27847) (csize!28073 Int)) (Empty!13921) )
))
(declare-datatypes ((BalanceConc!27436 0))(
  ( (BalanceConc!27437 (c!716211 Conc!13921)) )
))
(declare-datatypes ((String!53570 0))(
  ( (String!53571 (value!240263 String)) )
))
(declare-datatypes ((TokenValueInjection!15308 0))(
  ( (TokenValueInjection!15309 (toValue!10414 Int) (toChars!10273 Int)) )
))
(declare-datatypes ((Rule!15220 0))(
  ( (Rule!15221 (regex!7710 Regex!12615) (tag!8574 String!53570) (isSeparator!7710 Bool) (transformation!7710 TokenValueInjection!15308)) )
))
(declare-datatypes ((Token!14122 0))(
  ( (Token!14123 (value!240264 TokenValue!7940) (rule!10806 Rule!15220) (size!33925 Int) (originalCharacters!8092 List!46288)) )
))
(declare-fun t!8364 () Token!14122)

(declare-fun inv!21 (TokenValue!7940) Bool)

(assert (=> b!4200494 (= e!2607470 (and (inv!21 (value!240264 t!8364)) e!2607463 tp!1283342))))

(declare-fun e!2607460 () Bool)

(declare-fun tp!1283337 () Bool)

(declare-fun b!4200496 () Bool)

(declare-fun inv!60716 (String!53570) Bool)

(declare-fun inv!60719 (TokenValueInjection!15308) Bool)

(assert (=> b!4200496 (= e!2607463 (and tp!1283337 (inv!60716 (tag!8574 (rule!10806 t!8364))) (inv!60719 (transformation!7710 (rule!10806 t!8364))) e!2607460))))

(declare-fun tp!1283340 () Bool)

(declare-fun b!4200497 () Bool)

(declare-datatypes ((List!46289 0))(
  ( (Nil!46165) (Cons!46165 (h!51585 Rule!15220) (t!346794 List!46289)) )
))
(declare-fun rules!3967 () List!46289)

(declare-fun e!2607462 () Bool)

(assert (=> b!4200497 (= e!2607456 (and tp!1283340 (inv!60716 (tag!8574 (h!51585 rules!3967))) (inv!60719 (transformation!7710 (h!51585 rules!3967))) e!2607462))))

(declare-fun b!4200498 () Bool)

(declare-fun e!2607465 () Bool)

(assert (=> b!4200498 (= e!2607465 false)))

(declare-fun lt!1496306 () Bool)

(declare-datatypes ((LexerInterface!7305 0))(
  ( (LexerInterfaceExt!7302 (__x!28104 Int)) (Lexer!7303) )
))
(declare-fun thiss!26544 () LexerInterface!7305)

(declare-fun rBis!178 () Rule!15220)

(declare-fun ruleValid!3422 (LexerInterface!7305 Rule!15220) Bool)

(assert (=> b!4200498 (= lt!1496306 (ruleValid!3422 thiss!26544 rBis!178))))

(assert (=> b!4200499 (= e!2607460 (and tp!1283344 tp!1283330))))

(declare-fun b!4200500 () Bool)

(declare-fun res!1725034 () Bool)

(assert (=> b!4200500 (=> (not res!1725034) (not e!2607465))))

(declare-fun p!3001 () List!46288)

(declare-fun input!3517 () List!46288)

(declare-fun isPrefix!4569 (List!46288 List!46288) Bool)

(assert (=> b!4200500 (= res!1725034 (isPrefix!4569 p!3001 input!3517))))

(declare-fun e!2607467 () Bool)

(assert (=> b!4200501 (= e!2607467 (and tp!1283343 tp!1283331))))

(declare-fun b!4200502 () Bool)

(declare-fun e!2607457 () Bool)

(declare-fun tp_is_empty!22197 () Bool)

(declare-fun tp!1283338 () Bool)

(assert (=> b!4200502 (= e!2607457 (and tp_is_empty!22197 tp!1283338))))

(declare-fun b!4200503 () Bool)

(declare-fun res!1725033 () Bool)

(assert (=> b!4200503 (=> (not res!1725033) (not e!2607465))))

(declare-fun suffix!1557 () List!46288)

(declare-datatypes ((tuple2!43926 0))(
  ( (tuple2!43927 (_1!25097 Token!14122) (_2!25097 List!46288)) )
))
(declare-datatypes ((Option!9898 0))(
  ( (None!9897) (Some!9897 (v!40749 tuple2!43926)) )
))
(declare-fun maxPrefix!4345 (LexerInterface!7305 List!46289 List!46288) Option!9898)

(assert (=> b!4200503 (= res!1725033 (= (maxPrefix!4345 thiss!26544 rules!3967 input!3517) (Some!9897 (tuple2!43927 t!8364 suffix!1557))))))

(declare-fun b!4200504 () Bool)

(declare-fun e!2607464 () Bool)

(declare-fun tp!1283332 () Bool)

(assert (=> b!4200504 (= e!2607464 (and tp_is_empty!22197 tp!1283332))))

(declare-fun b!4200505 () Bool)

(declare-fun res!1725030 () Bool)

(assert (=> b!4200505 (=> (not res!1725030) (not e!2607465))))

(declare-fun pBis!121 () List!46288)

(assert (=> b!4200505 (= res!1725030 (isPrefix!4569 pBis!121 input!3517))))

(declare-fun b!4200506 () Bool)

(declare-fun e!2607468 () Bool)

(declare-fun tp!1283335 () Bool)

(assert (=> b!4200506 (= e!2607468 (and tp_is_empty!22197 tp!1283335))))

(declare-fun res!1725029 () Bool)

(assert (=> start!401282 (=> (not res!1725029) (not e!2607465))))

(get-info :version)

(assert (=> start!401282 (= res!1725029 ((_ is Lexer!7303) thiss!26544))))

(assert (=> start!401282 e!2607465))

(assert (=> start!401282 true))

(declare-fun e!2607459 () Bool)

(assert (=> start!401282 e!2607459))

(declare-fun e!2607455 () Bool)

(assert (=> start!401282 e!2607455))

(assert (=> start!401282 e!2607458))

(assert (=> start!401282 e!2607468))

(declare-fun inv!60720 (Token!14122) Bool)

(assert (=> start!401282 (and (inv!60720 t!8364) e!2607470)))

(assert (=> start!401282 e!2607464))

(assert (=> start!401282 e!2607457))

(declare-fun b!4200495 () Bool)

(declare-fun tp!1283339 () Bool)

(assert (=> b!4200495 (= e!2607459 (and tp!1283339 (inv!60716 (tag!8574 rBis!178)) (inv!60719 (transformation!7710 rBis!178)) e!2607467))))

(declare-fun b!4200507 () Bool)

(declare-fun res!1725032 () Bool)

(assert (=> b!4200507 (=> (not res!1725032) (not e!2607465))))

(declare-fun ++!11784 (List!46288 List!46288) List!46288)

(assert (=> b!4200507 (= res!1725032 (= (++!11784 p!3001 suffix!1557) input!3517))))

(declare-fun b!4200508 () Bool)

(declare-fun tp!1283333 () Bool)

(assert (=> b!4200508 (= e!2607455 (and tp_is_empty!22197 tp!1283333))))

(declare-fun b!4200509 () Bool)

(declare-fun res!1725027 () Bool)

(assert (=> b!4200509 (=> (not res!1725027) (not e!2607465))))

(declare-fun rulesInvariant!6516 (LexerInterface!7305 List!46289) Bool)

(assert (=> b!4200509 (= res!1725027 (rulesInvariant!6516 thiss!26544 rules!3967))))

(assert (=> b!4200510 (= e!2607462 (and tp!1283334 tp!1283341))))

(declare-fun b!4200511 () Bool)

(declare-fun res!1725028 () Bool)

(assert (=> b!4200511 (=> (not res!1725028) (not e!2607465))))

(declare-fun isEmpty!27335 (List!46289) Bool)

(assert (=> b!4200511 (= res!1725028 (not (isEmpty!27335 rules!3967)))))

(declare-fun b!4200512 () Bool)

(declare-fun res!1725031 () Bool)

(assert (=> b!4200512 (=> (not res!1725031) (not e!2607465))))

(declare-fun contains!9523 (List!46289 Rule!15220) Bool)

(assert (=> b!4200512 (= res!1725031 (contains!9523 rules!3967 rBis!178))))

(assert (= (and start!401282 res!1725029) b!4200507))

(assert (= (and b!4200507 res!1725032) b!4200500))

(assert (= (and b!4200500 res!1725034) b!4200505))

(assert (= (and b!4200505 res!1725030) b!4200511))

(assert (= (and b!4200511 res!1725028) b!4200509))

(assert (= (and b!4200509 res!1725027) b!4200512))

(assert (= (and b!4200512 res!1725031) b!4200503))

(assert (= (and b!4200503 res!1725033) b!4200498))

(assert (= b!4200495 b!4200501))

(assert (= start!401282 b!4200495))

(assert (= (and start!401282 ((_ is Cons!46164) p!3001)) b!4200508))

(assert (= b!4200497 b!4200510))

(assert (= b!4200493 b!4200497))

(assert (= (and start!401282 ((_ is Cons!46165) rules!3967)) b!4200493))

(assert (= (and start!401282 ((_ is Cons!46164) input!3517)) b!4200506))

(assert (= b!4200496 b!4200499))

(assert (= b!4200494 b!4200496))

(assert (= start!401282 b!4200494))

(assert (= (and start!401282 ((_ is Cons!46164) pBis!121)) b!4200504))

(assert (= (and start!401282 ((_ is Cons!46164) suffix!1557)) b!4200502))

(declare-fun m!4788871 () Bool)

(assert (=> b!4200511 m!4788871))

(declare-fun m!4788873 () Bool)

(assert (=> b!4200509 m!4788873))

(declare-fun m!4788875 () Bool)

(assert (=> b!4200494 m!4788875))

(declare-fun m!4788877 () Bool)

(assert (=> b!4200507 m!4788877))

(declare-fun m!4788879 () Bool)

(assert (=> b!4200505 m!4788879))

(declare-fun m!4788881 () Bool)

(assert (=> b!4200512 m!4788881))

(declare-fun m!4788883 () Bool)

(assert (=> start!401282 m!4788883))

(declare-fun m!4788885 () Bool)

(assert (=> b!4200497 m!4788885))

(declare-fun m!4788887 () Bool)

(assert (=> b!4200497 m!4788887))

(declare-fun m!4788889 () Bool)

(assert (=> b!4200498 m!4788889))

(declare-fun m!4788891 () Bool)

(assert (=> b!4200495 m!4788891))

(declare-fun m!4788893 () Bool)

(assert (=> b!4200495 m!4788893))

(declare-fun m!4788895 () Bool)

(assert (=> b!4200500 m!4788895))

(declare-fun m!4788897 () Bool)

(assert (=> b!4200503 m!4788897))

(declare-fun m!4788899 () Bool)

(assert (=> b!4200496 m!4788899))

(declare-fun m!4788901 () Bool)

(assert (=> b!4200496 m!4788901))

(check-sat (not b!4200509) (not b!4200493) (not b_next!123247) (not b!4200512) (not b!4200507) (not b_next!123255) (not b_next!123251) b_and!329603 (not b!4200500) b_and!329599 (not b!4200496) (not start!401282) (not b!4200498) (not b!4200508) (not b!4200505) (not b!4200503) b_and!329607 (not b_next!123249) (not b!4200504) (not b!4200497) tp_is_empty!22197 (not b_next!123253) b_and!329597 b_and!329601 (not b!4200502) b_and!329605 (not b_next!123257) (not b!4200495) (not b!4200506) (not b!4200494) (not b!4200511))
(check-sat b_and!329607 (not b_next!123249) (not b_next!123247) (not b_next!123255) (not b_next!123251) b_and!329603 b_and!329599 (not b_next!123253) b_and!329597 b_and!329601 b_and!329605 (not b_next!123257))
