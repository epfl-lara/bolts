; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!402606 () Bool)

(assert start!402606)

(declare-fun b!4212600 () Bool)

(declare-fun b_free!123355 () Bool)

(declare-fun b_next!124059 () Bool)

(assert (=> b!4212600 (= b_free!123355 (not b_next!124059))))

(declare-fun tp!1288202 () Bool)

(declare-fun b_and!331613 () Bool)

(assert (=> b!4212600 (= tp!1288202 b_and!331613)))

(declare-fun b_free!123357 () Bool)

(declare-fun b_next!124061 () Bool)

(assert (=> b!4212600 (= b_free!123357 (not b_next!124061))))

(declare-fun tp!1288210 () Bool)

(declare-fun b_and!331615 () Bool)

(assert (=> b!4212600 (= tp!1288210 b_and!331615)))

(declare-fun b!4212601 () Bool)

(declare-fun b_free!123359 () Bool)

(declare-fun b_next!124063 () Bool)

(assert (=> b!4212601 (= b_free!123359 (not b_next!124063))))

(declare-fun tp!1288212 () Bool)

(declare-fun b_and!331617 () Bool)

(assert (=> b!4212601 (= tp!1288212 b_and!331617)))

(declare-fun b_free!123361 () Bool)

(declare-fun b_next!124065 () Bool)

(assert (=> b!4212601 (= b_free!123361 (not b_next!124065))))

(declare-fun tp!1288213 () Bool)

(declare-fun b_and!331619 () Bool)

(assert (=> b!4212601 (= tp!1288213 b_and!331619)))

(declare-fun b!4212607 () Bool)

(declare-fun b_free!123363 () Bool)

(declare-fun b_next!124067 () Bool)

(assert (=> b!4212607 (= b_free!123363 (not b_next!124067))))

(declare-fun tp!1288201 () Bool)

(declare-fun b_and!331621 () Bool)

(assert (=> b!4212607 (= tp!1288201 b_and!331621)))

(declare-fun b_free!123365 () Bool)

(declare-fun b_next!124069 () Bool)

(assert (=> b!4212607 (= b_free!123365 (not b_next!124069))))

(declare-fun tp!1288218 () Bool)

(declare-fun b_and!331623 () Bool)

(assert (=> b!4212607 (= tp!1288218 b_and!331623)))

(declare-fun b!4212606 () Bool)

(declare-fun b_free!123367 () Bool)

(declare-fun b_next!124071 () Bool)

(assert (=> b!4212606 (= b_free!123367 (not b_next!124071))))

(declare-fun tp!1288200 () Bool)

(declare-fun b_and!331625 () Bool)

(assert (=> b!4212606 (= tp!1288200 b_and!331625)))

(declare-fun b_free!123369 () Bool)

(declare-fun b_next!124073 () Bool)

(assert (=> b!4212606 (= b_free!123369 (not b_next!124073))))

(declare-fun tp!1288207 () Bool)

(declare-fun b_and!331627 () Bool)

(assert (=> b!4212606 (= tp!1288207 b_and!331627)))

(declare-fun b!4212582 () Bool)

(declare-fun res!1730680 () Bool)

(declare-fun e!2615089 () Bool)

(assert (=> b!4212582 (=> (not res!1730680) (not e!2615089))))

(declare-datatypes ((C!25512 0))(
  ( (C!25513 (val!14918 Int)) )
))
(declare-datatypes ((List!46441 0))(
  ( (Nil!46317) (Cons!46317 (h!51737 C!25512) (t!348120 List!46441)) )
))
(declare-fun pBis!121 () List!46441)

(declare-fun input!3517 () List!46441)

(declare-fun isPrefix!4613 (List!46441 List!46441) Bool)

(assert (=> b!4212582 (= res!1730680 (isPrefix!4613 pBis!121 input!3517))))

(declare-fun b!4212583 () Bool)

(declare-fun e!2615106 () Bool)

(assert (=> b!4212583 (= e!2615089 e!2615106)))

(declare-fun res!1730675 () Bool)

(assert (=> b!4212583 (=> (not res!1730675) (not e!2615106))))

(declare-datatypes ((LexerInterface!7349 0))(
  ( (LexerInterfaceExt!7346 (__x!28191 Int)) (Lexer!7347) )
))
(declare-fun thiss!26544 () LexerInterface!7349)

(declare-datatypes ((List!46442 0))(
  ( (Nil!46318) (Cons!46318 (h!51738 (_ BitVec 16)) (t!348121 List!46442)) )
))
(declare-datatypes ((TokenValue!7984 0))(
  ( (FloatLiteralValue!15968 (text!56333 List!46442)) (TokenValueExt!7983 (__x!28192 Int)) (Broken!39920 (value!241492 List!46442)) (Object!8107) (End!7984) (Def!7984) (Underscore!7984) (Match!7984) (Else!7984) (Error!7984) (Case!7984) (If!7984) (Extends!7984) (Abstract!7984) (Class!7984) (Val!7984) (DelimiterValue!15968 (del!8044 List!46442)) (KeywordValue!7990 (value!241493 List!46442)) (CommentValue!15968 (value!241494 List!46442)) (WhitespaceValue!15968 (value!241495 List!46442)) (IndentationValue!7984 (value!241496 List!46442)) (String!53789) (Int32!7984) (Broken!39921 (value!241497 List!46442)) (Boolean!7985) (Unit!65434) (OperatorValue!7987 (op!8044 List!46442)) (IdentifierValue!15968 (value!241498 List!46442)) (IdentifierValue!15969 (value!241499 List!46442)) (WhitespaceValue!15969 (value!241500 List!46442)) (True!15968) (False!15968) (Broken!39922 (value!241501 List!46442)) (Broken!39923 (value!241502 List!46442)) (True!15969) (RightBrace!7984) (RightBracket!7984) (Colon!7984) (Null!7984) (Comma!7984) (LeftBracket!7984) (False!15969) (LeftBrace!7984) (ImaginaryLiteralValue!7984 (text!56334 List!46442)) (StringLiteralValue!23952 (value!241503 List!46442)) (EOFValue!7984 (value!241504 List!46442)) (IdentValue!7984 (value!241505 List!46442)) (DelimiterValue!15969 (value!241506 List!46442)) (DedentValue!7984 (value!241507 List!46442)) (NewLineValue!7984 (value!241508 List!46442)) (IntegerValue!23952 (value!241509 (_ BitVec 32)) (text!56335 List!46442)) (IntegerValue!23953 (value!241510 Int) (text!56336 List!46442)) (Times!7984) (Or!7984) (Equal!7984) (Minus!7984) (Broken!39924 (value!241511 List!46442)) (And!7984) (Div!7984) (LessEqual!7984) (Mod!7984) (Concat!20643) (Not!7984) (Plus!7984) (SpaceValue!7984 (value!241512 List!46442)) (IntegerValue!23954 (value!241513 Int) (text!56337 List!46442)) (StringLiteralValue!23953 (text!56338 List!46442)) (FloatLiteralValue!15969 (text!56339 List!46442)) (BytesLiteralValue!7984 (value!241514 List!46442)) (CommentValue!15969 (value!241515 List!46442)) (StringLiteralValue!23954 (value!241516 List!46442)) (ErrorTokenValue!7984 (msg!8045 List!46442)) )
))
(declare-datatypes ((IArray!27935 0))(
  ( (IArray!27936 (innerList!14025 List!46441)) )
))
(declare-datatypes ((Regex!12659 0))(
  ( (ElementMatch!12659 (c!717498 C!25512)) (Concat!20644 (regOne!25830 Regex!12659) (regTwo!25830 Regex!12659)) (EmptyExpr!12659) (Star!12659 (reg!12988 Regex!12659)) (EmptyLang!12659) (Union!12659 (regOne!25831 Regex!12659) (regTwo!25831 Regex!12659)) )
))
(declare-datatypes ((String!53790 0))(
  ( (String!53791 (value!241517 String)) )
))
(declare-datatypes ((Conc!13965 0))(
  ( (Node!13965 (left!34481 Conc!13965) (right!34811 Conc!13965) (csize!28160 Int) (cheight!14176 Int)) (Leaf!21586 (xs!17271 IArray!27935) (csize!28161 Int)) (Empty!13965) )
))
(declare-datatypes ((BalanceConc!27524 0))(
  ( (BalanceConc!27525 (c!717499 Conc!13965)) )
))
(declare-datatypes ((TokenValueInjection!15396 0))(
  ( (TokenValueInjection!15397 (toValue!10474 Int) (toChars!10333 Int)) )
))
(declare-datatypes ((Rule!15308 0))(
  ( (Rule!15309 (regex!7754 Regex!12659) (tag!8618 String!53790) (isSeparator!7754 Bool) (transformation!7754 TokenValueInjection!15396)) )
))
(declare-datatypes ((List!46443 0))(
  ( (Nil!46319) (Cons!46319 (h!51739 Rule!15308) (t!348122 List!46443)) )
))
(declare-fun rules!3967 () List!46443)

(declare-datatypes ((Token!14210 0))(
  ( (Token!14211 (value!241518 TokenValue!7984) (rule!10872 Rule!15308) (size!34023 Int) (originalCharacters!8136 List!46441)) )
))
(declare-datatypes ((tuple2!44058 0))(
  ( (tuple2!44059 (_1!25163 Token!14210) (_2!25163 List!46441)) )
))
(declare-datatypes ((Option!9942 0))(
  ( (None!9941) (Some!9941 (v!40815 tuple2!44058)) )
))
(declare-fun lt!1499410 () Option!9942)

(declare-fun maxPrefix!4389 (LexerInterface!7349 List!46443 List!46441) Option!9942)

(assert (=> b!4212583 (= res!1730675 (= (maxPrefix!4389 thiss!26544 rules!3967 input!3517) lt!1499410))))

(declare-fun t!8364 () Token!14210)

(declare-fun suffix!1557 () List!46441)

(assert (=> b!4212583 (= lt!1499410 (Some!9941 (tuple2!44059 t!8364 suffix!1557)))))

(declare-fun b!4212584 () Bool)

(declare-fun res!1730677 () Bool)

(declare-fun e!2615086 () Bool)

(assert (=> b!4212584 (=> res!1730677 e!2615086)))

(declare-fun isEmpty!27430 (Option!9942) Bool)

(assert (=> b!4212584 (= res!1730677 (not (isEmpty!27430 (maxPrefix!4389 thiss!26544 (t!348122 rules!3967) input!3517))))))

(declare-fun b!4212585 () Bool)

(declare-fun res!1730681 () Bool)

(assert (=> b!4212585 (=> (not res!1730681) (not e!2615089))))

(declare-fun p!3001 () List!46441)

(assert (=> b!4212585 (= res!1730681 (isPrefix!4613 p!3001 input!3517))))

(declare-fun b!4212586 () Bool)

(declare-fun res!1730674 () Bool)

(assert (=> b!4212586 (=> res!1730674 e!2615086)))

(declare-fun rBis!178 () Rule!15308)

(get-info :version)

(assert (=> b!4212586 (= res!1730674 (or (and ((_ is Cons!46319) rules!3967) ((_ is Nil!46319) (t!348122 rules!3967))) (not ((_ is Cons!46319) rules!3967)) (= (h!51739 rules!3967) rBis!178)))))

(declare-fun b!4212587 () Bool)

(declare-fun e!2615095 () Bool)

(declare-fun tp!1288211 () Bool)

(declare-fun e!2615091 () Bool)

(declare-fun inv!60938 (String!53790) Bool)

(declare-fun inv!60941 (TokenValueInjection!15396) Bool)

(assert (=> b!4212587 (= e!2615095 (and tp!1288211 (inv!60938 (tag!8618 (rule!10872 t!8364))) (inv!60941 (transformation!7754 (rule!10872 t!8364))) e!2615091))))

(declare-fun b!4212588 () Bool)

(assert (=> b!4212588 (= e!2615106 (not e!2615086))))

(declare-fun res!1730682 () Bool)

(assert (=> b!4212588 (=> res!1730682 e!2615086)))

(declare-fun tBis!41 () Token!14210)

(declare-fun lt!1499409 () Option!9942)

(declare-fun suffixBis!41 () List!46441)

(assert (=> b!4212588 (= res!1730682 (or (not (= lt!1499409 (Some!9941 (tuple2!44059 tBis!41 suffixBis!41)))) (not (= (rule!10872 tBis!41) rBis!178))))))

(declare-fun maxPrefixOneRule!3344 (LexerInterface!7349 Rule!15308 List!46441) Option!9942)

(assert (=> b!4212588 (= lt!1499409 (maxPrefixOneRule!3344 thiss!26544 rBis!178 input!3517))))

(assert (=> b!4212588 (isPrefix!4613 input!3517 input!3517)))

(declare-datatypes ((Unit!65435 0))(
  ( (Unit!65436) )
))
(declare-fun lt!1499412 () Unit!65435)

(declare-fun lemmaIsPrefixRefl!3030 (List!46441 List!46441) Unit!65435)

(assert (=> b!4212588 (= lt!1499412 (lemmaIsPrefixRefl!3030 input!3517 input!3517))))

(declare-fun e!2615084 () Bool)

(declare-fun b!4212589 () Bool)

(declare-fun e!2615107 () Bool)

(declare-fun tp!1288214 () Bool)

(assert (=> b!4212589 (= e!2615107 (and tp!1288214 (inv!60938 (tag!8618 (rule!10872 tBis!41))) (inv!60941 (transformation!7754 (rule!10872 tBis!41))) e!2615084))))

(declare-fun e!2615088 () Bool)

(declare-fun tp!1288204 () Bool)

(declare-fun e!2615108 () Bool)

(declare-fun b!4212590 () Bool)

(assert (=> b!4212590 (= e!2615088 (and tp!1288204 (inv!60938 (tag!8618 rBis!178)) (inv!60941 (transformation!7754 rBis!178)) e!2615108))))

(declare-fun b!4212591 () Bool)

(declare-fun e!2615101 () Bool)

(declare-fun tp_is_empty!22285 () Bool)

(declare-fun tp!1288203 () Bool)

(assert (=> b!4212591 (= e!2615101 (and tp_is_empty!22285 tp!1288203))))

(declare-fun b!4212592 () Bool)

(declare-fun res!1730669 () Bool)

(assert (=> b!4212592 (=> (not res!1730669) (not e!2615089))))

(declare-fun rulesInvariant!6560 (LexerInterface!7349 List!46443) Bool)

(assert (=> b!4212592 (= res!1730669 (rulesInvariant!6560 thiss!26544 rules!3967))))

(declare-fun b!4212593 () Bool)

(declare-fun res!1730676 () Bool)

(assert (=> b!4212593 (=> (not res!1730676) (not e!2615106))))

(declare-fun ruleValid!3466 (LexerInterface!7349 Rule!15308) Bool)

(assert (=> b!4212593 (= res!1730676 (ruleValid!3466 thiss!26544 rBis!178))))

(declare-fun b!4212594 () Bool)

(declare-fun e!2615105 () Bool)

(declare-fun tp!1288216 () Bool)

(declare-fun inv!21 (TokenValue!7984) Bool)

(assert (=> b!4212594 (= e!2615105 (and (inv!21 (value!241518 tBis!41)) e!2615107 tp!1288216))))

(declare-fun b!4212595 () Bool)

(declare-fun res!1730679 () Bool)

(assert (=> b!4212595 (=> (not res!1730679) (not e!2615089))))

(declare-fun isEmpty!27431 (List!46443) Bool)

(assert (=> b!4212595 (= res!1730679 (not (isEmpty!27431 rules!3967)))))

(declare-fun res!1730672 () Bool)

(assert (=> start!402606 (=> (not res!1730672) (not e!2615089))))

(assert (=> start!402606 (= res!1730672 ((_ is Lexer!7347) thiss!26544))))

(assert (=> start!402606 e!2615089))

(declare-fun inv!60942 (Token!14210) Bool)

(assert (=> start!402606 (and (inv!60942 tBis!41) e!2615105)))

(assert (=> start!402606 true))

(assert (=> start!402606 e!2615088))

(declare-fun e!2615094 () Bool)

(assert (=> start!402606 e!2615094))

(declare-fun e!2615085 () Bool)

(assert (=> start!402606 e!2615085))

(declare-fun e!2615096 () Bool)

(assert (=> start!402606 e!2615096))

(declare-fun e!2615092 () Bool)

(assert (=> start!402606 (and (inv!60942 t!8364) e!2615092)))

(declare-fun e!2615098 () Bool)

(assert (=> start!402606 e!2615098))

(assert (=> start!402606 e!2615101))

(declare-fun e!2615099 () Bool)

(assert (=> start!402606 e!2615099))

(declare-fun b!4212596 () Bool)

(declare-fun res!1730678 () Bool)

(assert (=> b!4212596 (=> res!1730678 e!2615086)))

(declare-fun list!16751 (BalanceConc!27524) List!46441)

(declare-fun charsOf!5177 (Token!14210) BalanceConc!27524)

(assert (=> b!4212596 (= res!1730678 (not (= (list!16751 (charsOf!5177 tBis!41)) pBis!121)))))

(declare-fun b!4212597 () Bool)

(declare-fun e!2615100 () Bool)

(declare-fun tp!1288205 () Bool)

(assert (=> b!4212597 (= e!2615085 (and e!2615100 tp!1288205))))

(declare-fun b!4212598 () Bool)

(declare-fun tp!1288217 () Bool)

(assert (=> b!4212598 (= e!2615099 (and tp_is_empty!22285 tp!1288217))))

(declare-fun tp!1288209 () Bool)

(declare-fun b!4212599 () Bool)

(assert (=> b!4212599 (= e!2615092 (and (inv!21 (value!241518 t!8364)) e!2615095 tp!1288209))))

(assert (=> b!4212600 (= e!2615084 (and tp!1288202 tp!1288210))))

(assert (=> b!4212601 (= e!2615108 (and tp!1288212 tp!1288213))))

(declare-fun b!4212602 () Bool)

(declare-fun res!1730683 () Bool)

(assert (=> b!4212602 (=> res!1730683 e!2615086)))

(declare-fun ++!11828 (List!46441 List!46441) List!46441)

(assert (=> b!4212602 (= res!1730683 (not (= (++!11828 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4212603 () Bool)

(declare-fun tp!1288199 () Bool)

(assert (=> b!4212603 (= e!2615094 (and tp_is_empty!22285 tp!1288199))))

(declare-fun b!4212604 () Bool)

(declare-fun tp!1288206 () Bool)

(assert (=> b!4212604 (= e!2615098 (and tp_is_empty!22285 tp!1288206))))

(declare-fun b!4212605 () Bool)

(declare-fun res!1730673 () Bool)

(assert (=> b!4212605 (=> (not res!1730673) (not e!2615089))))

(declare-fun contains!9575 (List!46443 Rule!15308) Bool)

(assert (=> b!4212605 (= res!1730673 (contains!9575 rules!3967 rBis!178))))

(assert (=> b!4212606 (= e!2615091 (and tp!1288200 tp!1288207))))

(declare-fun e!2615104 () Bool)

(assert (=> b!4212607 (= e!2615104 (and tp!1288201 tp!1288218))))

(declare-fun b!4212608 () Bool)

(assert (=> b!4212608 (= e!2615086 false)))

(assert (=> b!4212608 (isEmpty!27430 lt!1499409)))

(declare-fun lt!1499411 () Unit!65435)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!612 (LexerInterface!7349 Rule!15308 List!46443 List!46441) Unit!65435)

(assert (=> b!4212608 (= lt!1499411 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!612 thiss!26544 rBis!178 (t!348122 rules!3967) input!3517))))

(declare-fun b!4212609 () Bool)

(declare-fun res!1730670 () Bool)

(assert (=> b!4212609 (=> res!1730670 e!2615086)))

(assert (=> b!4212609 (= res!1730670 (not (= (maxPrefixOneRule!3344 thiss!26544 (h!51739 rules!3967) input!3517) lt!1499410)))))

(declare-fun b!4212610 () Bool)

(declare-fun res!1730671 () Bool)

(assert (=> b!4212610 (=> (not res!1730671) (not e!2615089))))

(assert (=> b!4212610 (= res!1730671 (= (++!11828 p!3001 suffix!1557) input!3517))))

(declare-fun tp!1288208 () Bool)

(declare-fun b!4212611 () Bool)

(assert (=> b!4212611 (= e!2615100 (and tp!1288208 (inv!60938 (tag!8618 (h!51739 rules!3967))) (inv!60941 (transformation!7754 (h!51739 rules!3967))) e!2615104))))

(declare-fun b!4212612 () Bool)

(declare-fun tp!1288215 () Bool)

(assert (=> b!4212612 (= e!2615096 (and tp_is_empty!22285 tp!1288215))))

(assert (= (and start!402606 res!1730672) b!4212610))

(assert (= (and b!4212610 res!1730671) b!4212585))

(assert (= (and b!4212585 res!1730681) b!4212582))

(assert (= (and b!4212582 res!1730680) b!4212595))

(assert (= (and b!4212595 res!1730679) b!4212592))

(assert (= (and b!4212592 res!1730669) b!4212605))

(assert (= (and b!4212605 res!1730673) b!4212583))

(assert (= (and b!4212583 res!1730675) b!4212593))

(assert (= (and b!4212593 res!1730676) b!4212588))

(assert (= (and b!4212588 (not res!1730682)) b!4212596))

(assert (= (and b!4212596 (not res!1730678)) b!4212602))

(assert (= (and b!4212602 (not res!1730683)) b!4212586))

(assert (= (and b!4212586 (not res!1730674)) b!4212609))

(assert (= (and b!4212609 (not res!1730670)) b!4212584))

(assert (= (and b!4212584 (not res!1730677)) b!4212608))

(assert (= b!4212589 b!4212600))

(assert (= b!4212594 b!4212589))

(assert (= start!402606 b!4212594))

(assert (= b!4212590 b!4212601))

(assert (= start!402606 b!4212590))

(assert (= (and start!402606 ((_ is Cons!46317) p!3001)) b!4212603))

(assert (= b!4212611 b!4212607))

(assert (= b!4212597 b!4212611))

(assert (= (and start!402606 ((_ is Cons!46319) rules!3967)) b!4212597))

(assert (= (and start!402606 ((_ is Cons!46317) input!3517)) b!4212612))

(assert (= b!4212587 b!4212606))

(assert (= b!4212599 b!4212587))

(assert (= start!402606 b!4212599))

(assert (= (and start!402606 ((_ is Cons!46317) pBis!121)) b!4212604))

(assert (= (and start!402606 ((_ is Cons!46317) suffix!1557)) b!4212591))

(assert (= (and start!402606 ((_ is Cons!46317) suffixBis!41)) b!4212598))

(declare-fun m!4800437 () Bool)

(assert (=> b!4212587 m!4800437))

(declare-fun m!4800439 () Bool)

(assert (=> b!4212587 m!4800439))

(declare-fun m!4800441 () Bool)

(assert (=> b!4212588 m!4800441))

(declare-fun m!4800443 () Bool)

(assert (=> b!4212588 m!4800443))

(declare-fun m!4800445 () Bool)

(assert (=> b!4212588 m!4800445))

(declare-fun m!4800447 () Bool)

(assert (=> b!4212596 m!4800447))

(assert (=> b!4212596 m!4800447))

(declare-fun m!4800449 () Bool)

(assert (=> b!4212596 m!4800449))

(declare-fun m!4800451 () Bool)

(assert (=> b!4212582 m!4800451))

(declare-fun m!4800453 () Bool)

(assert (=> start!402606 m!4800453))

(declare-fun m!4800455 () Bool)

(assert (=> start!402606 m!4800455))

(declare-fun m!4800457 () Bool)

(assert (=> b!4212593 m!4800457))

(declare-fun m!4800459 () Bool)

(assert (=> b!4212585 m!4800459))

(declare-fun m!4800461 () Bool)

(assert (=> b!4212589 m!4800461))

(declare-fun m!4800463 () Bool)

(assert (=> b!4212589 m!4800463))

(declare-fun m!4800465 () Bool)

(assert (=> b!4212594 m!4800465))

(declare-fun m!4800467 () Bool)

(assert (=> b!4212592 m!4800467))

(declare-fun m!4800469 () Bool)

(assert (=> b!4212583 m!4800469))

(declare-fun m!4800471 () Bool)

(assert (=> b!4212602 m!4800471))

(declare-fun m!4800473 () Bool)

(assert (=> b!4212599 m!4800473))

(declare-fun m!4800475 () Bool)

(assert (=> b!4212609 m!4800475))

(declare-fun m!4800477 () Bool)

(assert (=> b!4212611 m!4800477))

(declare-fun m!4800479 () Bool)

(assert (=> b!4212611 m!4800479))

(declare-fun m!4800481 () Bool)

(assert (=> b!4212590 m!4800481))

(declare-fun m!4800483 () Bool)

(assert (=> b!4212590 m!4800483))

(declare-fun m!4800485 () Bool)

(assert (=> b!4212605 m!4800485))

(declare-fun m!4800487 () Bool)

(assert (=> b!4212610 m!4800487))

(declare-fun m!4800489 () Bool)

(assert (=> b!4212584 m!4800489))

(assert (=> b!4212584 m!4800489))

(declare-fun m!4800491 () Bool)

(assert (=> b!4212584 m!4800491))

(declare-fun m!4800493 () Bool)

(assert (=> b!4212595 m!4800493))

(declare-fun m!4800495 () Bool)

(assert (=> b!4212608 m!4800495))

(declare-fun m!4800497 () Bool)

(assert (=> b!4212608 m!4800497))

(check-sat (not b!4212605) b_and!331627 (not b_next!124067) (not b!4212585) (not b_next!124073) (not b!4212612) b_and!331617 (not b!4212592) (not b!4212596) (not b!4212582) (not b_next!124059) (not b!4212594) (not b!4212604) (not b_next!124061) (not b!4212588) (not b!4212584) (not start!402606) (not b!4212597) (not b!4212595) (not b!4212590) (not b_next!124065) (not b!4212610) (not b!4212593) b_and!331623 (not b!4212598) (not b!4212609) (not b!4212611) b_and!331619 (not b!4212591) tp_is_empty!22285 b_and!331613 (not b!4212599) (not b!4212608) (not b!4212603) (not b!4212583) b_and!331615 b_and!331621 (not b_next!124063) b_and!331625 (not b!4212602) (not b_next!124071) (not b!4212589) (not b!4212587) (not b_next!124069))
(check-sat b_and!331617 (not b_next!124059) (not b_next!124061) (not b_next!124065) b_and!331623 b_and!331627 b_and!331615 (not b_next!124069) (not b_next!124067) (not b_next!124073) b_and!331619 b_and!331613 b_and!331621 (not b_next!124063) b_and!331625 (not b_next!124071))
(get-model)

(declare-fun d!1241409 () Bool)

(assert (=> d!1241409 (= (isEmpty!27431 rules!3967) ((_ is Nil!46319) rules!3967))))

(assert (=> b!4212595 d!1241409))

(declare-fun d!1241411 () Bool)

(assert (=> d!1241411 (= (isEmpty!27430 (maxPrefix!4389 thiss!26544 (t!348122 rules!3967) input!3517)) (not ((_ is Some!9941) (maxPrefix!4389 thiss!26544 (t!348122 rules!3967) input!3517))))))

(assert (=> b!4212584 d!1241411))

(declare-fun bm!292984 () Bool)

(declare-fun call!292989 () Option!9942)

(assert (=> bm!292984 (= call!292989 (maxPrefixOneRule!3344 thiss!26544 (h!51739 (t!348122 rules!3967)) input!3517))))

(declare-fun b!4212711 () Bool)

(declare-fun e!2615154 () Bool)

(declare-fun lt!1499450 () Option!9942)

(declare-fun get!15065 (Option!9942) tuple2!44058)

(assert (=> b!4212711 (= e!2615154 (contains!9575 (t!348122 rules!3967) (rule!10872 (_1!25163 (get!15065 lt!1499450)))))))

(declare-fun b!4212712 () Bool)

(declare-fun res!1730763 () Bool)

(assert (=> b!4212712 (=> (not res!1730763) (not e!2615154))))

(assert (=> b!4212712 (= res!1730763 (= (list!16751 (charsOf!5177 (_1!25163 (get!15065 lt!1499450)))) (originalCharacters!8136 (_1!25163 (get!15065 lt!1499450)))))))

(declare-fun b!4212713 () Bool)

(declare-fun res!1730761 () Bool)

(assert (=> b!4212713 (=> (not res!1730761) (not e!2615154))))

(declare-fun size!34025 (List!46441) Int)

(assert (=> b!4212713 (= res!1730761 (< (size!34025 (_2!25163 (get!15065 lt!1499450))) (size!34025 input!3517)))))

(declare-fun b!4212714 () Bool)

(declare-fun res!1730764 () Bool)

(assert (=> b!4212714 (=> (not res!1730764) (not e!2615154))))

(declare-fun matchR!6368 (Regex!12659 List!46441) Bool)

(assert (=> b!4212714 (= res!1730764 (matchR!6368 (regex!7754 (rule!10872 (_1!25163 (get!15065 lt!1499450)))) (list!16751 (charsOf!5177 (_1!25163 (get!15065 lt!1499450))))))))

(declare-fun b!4212715 () Bool)

(declare-fun e!2615155 () Option!9942)

(declare-fun lt!1499448 () Option!9942)

(declare-fun lt!1499446 () Option!9942)

(assert (=> b!4212715 (= e!2615155 (ite (and ((_ is None!9941) lt!1499448) ((_ is None!9941) lt!1499446)) None!9941 (ite ((_ is None!9941) lt!1499446) lt!1499448 (ite ((_ is None!9941) lt!1499448) lt!1499446 (ite (>= (size!34023 (_1!25163 (v!40815 lt!1499448))) (size!34023 (_1!25163 (v!40815 lt!1499446)))) lt!1499448 lt!1499446)))))))

(assert (=> b!4212715 (= lt!1499448 call!292989)))

(assert (=> b!4212715 (= lt!1499446 (maxPrefix!4389 thiss!26544 (t!348122 (t!348122 rules!3967)) input!3517))))

(declare-fun b!4212716 () Bool)

(assert (=> b!4212716 (= e!2615155 call!292989)))

(declare-fun d!1241413 () Bool)

(declare-fun e!2615153 () Bool)

(assert (=> d!1241413 e!2615153))

(declare-fun res!1730758 () Bool)

(assert (=> d!1241413 (=> res!1730758 e!2615153)))

(assert (=> d!1241413 (= res!1730758 (isEmpty!27430 lt!1499450))))

(assert (=> d!1241413 (= lt!1499450 e!2615155)))

(declare-fun c!717515 () Bool)

(assert (=> d!1241413 (= c!717515 (and ((_ is Cons!46319) (t!348122 rules!3967)) ((_ is Nil!46319) (t!348122 (t!348122 rules!3967)))))))

(declare-fun lt!1499449 () Unit!65435)

(declare-fun lt!1499447 () Unit!65435)

(assert (=> d!1241413 (= lt!1499449 lt!1499447)))

(assert (=> d!1241413 (isPrefix!4613 input!3517 input!3517)))

(assert (=> d!1241413 (= lt!1499447 (lemmaIsPrefixRefl!3030 input!3517 input!3517))))

(declare-fun rulesValidInductive!2880 (LexerInterface!7349 List!46443) Bool)

(assert (=> d!1241413 (rulesValidInductive!2880 thiss!26544 (t!348122 rules!3967))))

(assert (=> d!1241413 (= (maxPrefix!4389 thiss!26544 (t!348122 rules!3967) input!3517) lt!1499450)))

(declare-fun b!4212717 () Bool)

(declare-fun res!1730760 () Bool)

(assert (=> b!4212717 (=> (not res!1730760) (not e!2615154))))

(declare-fun apply!10689 (TokenValueInjection!15396 BalanceConc!27524) TokenValue!7984)

(declare-fun seqFromList!5749 (List!46441) BalanceConc!27524)

(assert (=> b!4212717 (= res!1730760 (= (value!241518 (_1!25163 (get!15065 lt!1499450))) (apply!10689 (transformation!7754 (rule!10872 (_1!25163 (get!15065 lt!1499450)))) (seqFromList!5749 (originalCharacters!8136 (_1!25163 (get!15065 lt!1499450)))))))))

(declare-fun b!4212718 () Bool)

(declare-fun res!1730759 () Bool)

(assert (=> b!4212718 (=> (not res!1730759) (not e!2615154))))

(assert (=> b!4212718 (= res!1730759 (= (++!11828 (list!16751 (charsOf!5177 (_1!25163 (get!15065 lt!1499450)))) (_2!25163 (get!15065 lt!1499450))) input!3517))))

(declare-fun b!4212719 () Bool)

(assert (=> b!4212719 (= e!2615153 e!2615154)))

(declare-fun res!1730762 () Bool)

(assert (=> b!4212719 (=> (not res!1730762) (not e!2615154))))

(declare-fun isDefined!7390 (Option!9942) Bool)

(assert (=> b!4212719 (= res!1730762 (isDefined!7390 lt!1499450))))

(assert (= (and d!1241413 c!717515) b!4212716))

(assert (= (and d!1241413 (not c!717515)) b!4212715))

(assert (= (or b!4212716 b!4212715) bm!292984))

(assert (= (and d!1241413 (not res!1730758)) b!4212719))

(assert (= (and b!4212719 res!1730762) b!4212712))

(assert (= (and b!4212712 res!1730763) b!4212713))

(assert (= (and b!4212713 res!1730761) b!4212718))

(assert (= (and b!4212718 res!1730759) b!4212717))

(assert (= (and b!4212717 res!1730760) b!4212714))

(assert (= (and b!4212714 res!1730764) b!4212711))

(declare-fun m!4800601 () Bool)

(assert (=> b!4212718 m!4800601))

(declare-fun m!4800603 () Bool)

(assert (=> b!4212718 m!4800603))

(assert (=> b!4212718 m!4800603))

(declare-fun m!4800605 () Bool)

(assert (=> b!4212718 m!4800605))

(assert (=> b!4212718 m!4800605))

(declare-fun m!4800607 () Bool)

(assert (=> b!4212718 m!4800607))

(assert (=> b!4212714 m!4800601))

(assert (=> b!4212714 m!4800603))

(assert (=> b!4212714 m!4800603))

(assert (=> b!4212714 m!4800605))

(assert (=> b!4212714 m!4800605))

(declare-fun m!4800609 () Bool)

(assert (=> b!4212714 m!4800609))

(assert (=> b!4212711 m!4800601))

(declare-fun m!4800611 () Bool)

(assert (=> b!4212711 m!4800611))

(declare-fun m!4800613 () Bool)

(assert (=> bm!292984 m!4800613))

(declare-fun m!4800615 () Bool)

(assert (=> b!4212715 m!4800615))

(declare-fun m!4800617 () Bool)

(assert (=> b!4212719 m!4800617))

(assert (=> b!4212712 m!4800601))

(assert (=> b!4212712 m!4800603))

(assert (=> b!4212712 m!4800603))

(assert (=> b!4212712 m!4800605))

(assert (=> b!4212713 m!4800601))

(declare-fun m!4800619 () Bool)

(assert (=> b!4212713 m!4800619))

(declare-fun m!4800621 () Bool)

(assert (=> b!4212713 m!4800621))

(declare-fun m!4800623 () Bool)

(assert (=> d!1241413 m!4800623))

(assert (=> d!1241413 m!4800443))

(assert (=> d!1241413 m!4800445))

(declare-fun m!4800625 () Bool)

(assert (=> d!1241413 m!4800625))

(assert (=> b!4212717 m!4800601))

(declare-fun m!4800627 () Bool)

(assert (=> b!4212717 m!4800627))

(assert (=> b!4212717 m!4800627))

(declare-fun m!4800629 () Bool)

(assert (=> b!4212717 m!4800629))

(assert (=> b!4212584 d!1241413))

(declare-fun d!1241431 () Bool)

(declare-fun lt!1499453 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7255 (List!46443) (InoxSet Rule!15308))

(assert (=> d!1241431 (= lt!1499453 (select (content!7255 rules!3967) rBis!178))))

(declare-fun e!2615160 () Bool)

(assert (=> d!1241431 (= lt!1499453 e!2615160)))

(declare-fun res!1730769 () Bool)

(assert (=> d!1241431 (=> (not res!1730769) (not e!2615160))))

(assert (=> d!1241431 (= res!1730769 ((_ is Cons!46319) rules!3967))))

(assert (=> d!1241431 (= (contains!9575 rules!3967 rBis!178) lt!1499453)))

(declare-fun b!4212724 () Bool)

(declare-fun e!2615161 () Bool)

(assert (=> b!4212724 (= e!2615160 e!2615161)))

(declare-fun res!1730770 () Bool)

(assert (=> b!4212724 (=> res!1730770 e!2615161)))

(assert (=> b!4212724 (= res!1730770 (= (h!51739 rules!3967) rBis!178))))

(declare-fun b!4212725 () Bool)

(assert (=> b!4212725 (= e!2615161 (contains!9575 (t!348122 rules!3967) rBis!178))))

(assert (= (and d!1241431 res!1730769) b!4212724))

(assert (= (and b!4212724 (not res!1730770)) b!4212725))

(declare-fun m!4800631 () Bool)

(assert (=> d!1241431 m!4800631))

(declare-fun m!4800633 () Bool)

(assert (=> d!1241431 m!4800633))

(declare-fun m!4800635 () Bool)

(assert (=> b!4212725 m!4800635))

(assert (=> b!4212605 d!1241431))

(declare-fun d!1241433 () Bool)

(declare-fun list!16752 (Conc!13965) List!46441)

(assert (=> d!1241433 (= (list!16751 (charsOf!5177 tBis!41)) (list!16752 (c!717499 (charsOf!5177 tBis!41))))))

(declare-fun bs!597462 () Bool)

(assert (= bs!597462 d!1241433))

(declare-fun m!4800637 () Bool)

(assert (=> bs!597462 m!4800637))

(assert (=> b!4212596 d!1241433))

(declare-fun d!1241435 () Bool)

(declare-fun lt!1499456 () BalanceConc!27524)

(assert (=> d!1241435 (= (list!16751 lt!1499456) (originalCharacters!8136 tBis!41))))

(declare-fun dynLambda!19974 (Int TokenValue!7984) BalanceConc!27524)

(assert (=> d!1241435 (= lt!1499456 (dynLambda!19974 (toChars!10333 (transformation!7754 (rule!10872 tBis!41))) (value!241518 tBis!41)))))

(assert (=> d!1241435 (= (charsOf!5177 tBis!41) lt!1499456)))

(declare-fun b_lambda!124099 () Bool)

(assert (=> (not b_lambda!124099) (not d!1241435)))

(declare-fun t!348140 () Bool)

(declare-fun tb!252895 () Bool)

(assert (=> (and b!4212600 (= (toChars!10333 (transformation!7754 (rule!10872 tBis!41))) (toChars!10333 (transformation!7754 (rule!10872 tBis!41)))) t!348140) tb!252895))

(declare-fun b!4212730 () Bool)

(declare-fun e!2615164 () Bool)

(declare-fun tp!1288225 () Bool)

(declare-fun inv!60945 (Conc!13965) Bool)

(assert (=> b!4212730 (= e!2615164 (and (inv!60945 (c!717499 (dynLambda!19974 (toChars!10333 (transformation!7754 (rule!10872 tBis!41))) (value!241518 tBis!41)))) tp!1288225))))

(declare-fun result!308226 () Bool)

(declare-fun inv!60946 (BalanceConc!27524) Bool)

(assert (=> tb!252895 (= result!308226 (and (inv!60946 (dynLambda!19974 (toChars!10333 (transformation!7754 (rule!10872 tBis!41))) (value!241518 tBis!41))) e!2615164))))

(assert (= tb!252895 b!4212730))

(declare-fun m!4800639 () Bool)

(assert (=> b!4212730 m!4800639))

(declare-fun m!4800641 () Bool)

(assert (=> tb!252895 m!4800641))

(assert (=> d!1241435 t!348140))

(declare-fun b_and!331645 () Bool)

(assert (= b_and!331615 (and (=> t!348140 result!308226) b_and!331645)))

(declare-fun t!348142 () Bool)

(declare-fun tb!252897 () Bool)

(assert (=> (and b!4212601 (= (toChars!10333 (transformation!7754 rBis!178)) (toChars!10333 (transformation!7754 (rule!10872 tBis!41)))) t!348142) tb!252897))

(declare-fun result!308230 () Bool)

(assert (= result!308230 result!308226))

(assert (=> d!1241435 t!348142))

(declare-fun b_and!331647 () Bool)

(assert (= b_and!331619 (and (=> t!348142 result!308230) b_and!331647)))

(declare-fun tb!252899 () Bool)

(declare-fun t!348144 () Bool)

(assert (=> (and b!4212607 (= (toChars!10333 (transformation!7754 (h!51739 rules!3967))) (toChars!10333 (transformation!7754 (rule!10872 tBis!41)))) t!348144) tb!252899))

(declare-fun result!308232 () Bool)

(assert (= result!308232 result!308226))

(assert (=> d!1241435 t!348144))

(declare-fun b_and!331649 () Bool)

(assert (= b_and!331623 (and (=> t!348144 result!308232) b_and!331649)))

(declare-fun tb!252901 () Bool)

(declare-fun t!348146 () Bool)

(assert (=> (and b!4212606 (= (toChars!10333 (transformation!7754 (rule!10872 t!8364))) (toChars!10333 (transformation!7754 (rule!10872 tBis!41)))) t!348146) tb!252901))

(declare-fun result!308234 () Bool)

(assert (= result!308234 result!308226))

(assert (=> d!1241435 t!348146))

(declare-fun b_and!331651 () Bool)

(assert (= b_and!331627 (and (=> t!348146 result!308234) b_and!331651)))

(declare-fun m!4800643 () Bool)

(assert (=> d!1241435 m!4800643))

(declare-fun m!4800645 () Bool)

(assert (=> d!1241435 m!4800645))

(assert (=> b!4212596 d!1241435))

(declare-fun d!1241437 () Bool)

(declare-fun e!2615171 () Bool)

(assert (=> d!1241437 e!2615171))

(declare-fun res!1730780 () Bool)

(assert (=> d!1241437 (=> res!1730780 e!2615171)))

(declare-fun lt!1499459 () Bool)

(assert (=> d!1241437 (= res!1730780 (not lt!1499459))))

(declare-fun e!2615173 () Bool)

(assert (=> d!1241437 (= lt!1499459 e!2615173)))

(declare-fun res!1730779 () Bool)

(assert (=> d!1241437 (=> res!1730779 e!2615173)))

(assert (=> d!1241437 (= res!1730779 ((_ is Nil!46317) p!3001))))

(assert (=> d!1241437 (= (isPrefix!4613 p!3001 input!3517) lt!1499459)))

(declare-fun b!4212740 () Bool)

(declare-fun res!1730781 () Bool)

(declare-fun e!2615172 () Bool)

(assert (=> b!4212740 (=> (not res!1730781) (not e!2615172))))

(declare-fun head!8937 (List!46441) C!25512)

(assert (=> b!4212740 (= res!1730781 (= (head!8937 p!3001) (head!8937 input!3517)))))

(declare-fun b!4212741 () Bool)

(declare-fun tail!6784 (List!46441) List!46441)

(assert (=> b!4212741 (= e!2615172 (isPrefix!4613 (tail!6784 p!3001) (tail!6784 input!3517)))))

(declare-fun b!4212739 () Bool)

(assert (=> b!4212739 (= e!2615173 e!2615172)))

(declare-fun res!1730782 () Bool)

(assert (=> b!4212739 (=> (not res!1730782) (not e!2615172))))

(assert (=> b!4212739 (= res!1730782 (not ((_ is Nil!46317) input!3517)))))

(declare-fun b!4212742 () Bool)

(assert (=> b!4212742 (= e!2615171 (>= (size!34025 input!3517) (size!34025 p!3001)))))

(assert (= (and d!1241437 (not res!1730779)) b!4212739))

(assert (= (and b!4212739 res!1730782) b!4212740))

(assert (= (and b!4212740 res!1730781) b!4212741))

(assert (= (and d!1241437 (not res!1730780)) b!4212742))

(declare-fun m!4800647 () Bool)

(assert (=> b!4212740 m!4800647))

(declare-fun m!4800649 () Bool)

(assert (=> b!4212740 m!4800649))

(declare-fun m!4800651 () Bool)

(assert (=> b!4212741 m!4800651))

(declare-fun m!4800653 () Bool)

(assert (=> b!4212741 m!4800653))

(assert (=> b!4212741 m!4800651))

(assert (=> b!4212741 m!4800653))

(declare-fun m!4800655 () Bool)

(assert (=> b!4212741 m!4800655))

(assert (=> b!4212742 m!4800621))

(declare-fun m!4800657 () Bool)

(assert (=> b!4212742 m!4800657))

(assert (=> b!4212585 d!1241437))

(declare-fun d!1241439 () Bool)

(declare-fun e!2615174 () Bool)

(assert (=> d!1241439 e!2615174))

(declare-fun res!1730784 () Bool)

(assert (=> d!1241439 (=> res!1730784 e!2615174)))

(declare-fun lt!1499460 () Bool)

(assert (=> d!1241439 (= res!1730784 (not lt!1499460))))

(declare-fun e!2615176 () Bool)

(assert (=> d!1241439 (= lt!1499460 e!2615176)))

(declare-fun res!1730783 () Bool)

(assert (=> d!1241439 (=> res!1730783 e!2615176)))

(assert (=> d!1241439 (= res!1730783 ((_ is Nil!46317) pBis!121))))

(assert (=> d!1241439 (= (isPrefix!4613 pBis!121 input!3517) lt!1499460)))

(declare-fun b!4212744 () Bool)

(declare-fun res!1730785 () Bool)

(declare-fun e!2615175 () Bool)

(assert (=> b!4212744 (=> (not res!1730785) (not e!2615175))))

(assert (=> b!4212744 (= res!1730785 (= (head!8937 pBis!121) (head!8937 input!3517)))))

(declare-fun b!4212745 () Bool)

(assert (=> b!4212745 (= e!2615175 (isPrefix!4613 (tail!6784 pBis!121) (tail!6784 input!3517)))))

(declare-fun b!4212743 () Bool)

(assert (=> b!4212743 (= e!2615176 e!2615175)))

(declare-fun res!1730786 () Bool)

(assert (=> b!4212743 (=> (not res!1730786) (not e!2615175))))

(assert (=> b!4212743 (= res!1730786 (not ((_ is Nil!46317) input!3517)))))

(declare-fun b!4212746 () Bool)

(assert (=> b!4212746 (= e!2615174 (>= (size!34025 input!3517) (size!34025 pBis!121)))))

(assert (= (and d!1241439 (not res!1730783)) b!4212743))

(assert (= (and b!4212743 res!1730786) b!4212744))

(assert (= (and b!4212744 res!1730785) b!4212745))

(assert (= (and d!1241439 (not res!1730784)) b!4212746))

(declare-fun m!4800659 () Bool)

(assert (=> b!4212744 m!4800659))

(assert (=> b!4212744 m!4800649))

(declare-fun m!4800661 () Bool)

(assert (=> b!4212745 m!4800661))

(assert (=> b!4212745 m!4800653))

(assert (=> b!4212745 m!4800661))

(assert (=> b!4212745 m!4800653))

(declare-fun m!4800663 () Bool)

(assert (=> b!4212745 m!4800663))

(assert (=> b!4212746 m!4800621))

(declare-fun m!4800665 () Bool)

(assert (=> b!4212746 m!4800665))

(assert (=> b!4212582 d!1241439))

(declare-fun d!1241441 () Bool)

(declare-fun res!1730803 () Bool)

(declare-fun e!2615187 () Bool)

(assert (=> d!1241441 (=> (not res!1730803) (not e!2615187))))

(declare-fun rulesValid!3037 (LexerInterface!7349 List!46443) Bool)

(assert (=> d!1241441 (= res!1730803 (rulesValid!3037 thiss!26544 rules!3967))))

(assert (=> d!1241441 (= (rulesInvariant!6560 thiss!26544 rules!3967) e!2615187)))

(declare-fun b!4212767 () Bool)

(declare-datatypes ((List!46444 0))(
  ( (Nil!46320) (Cons!46320 (h!51740 String!53790) (t!348163 List!46444)) )
))
(declare-fun noDuplicateTag!3198 (LexerInterface!7349 List!46443 List!46444) Bool)

(assert (=> b!4212767 (= e!2615187 (noDuplicateTag!3198 thiss!26544 rules!3967 Nil!46320))))

(assert (= (and d!1241441 res!1730803) b!4212767))

(declare-fun m!4800667 () Bool)

(assert (=> d!1241441 m!4800667))

(declare-fun m!4800669 () Bool)

(assert (=> b!4212767 m!4800669))

(assert (=> b!4212592 d!1241441))

(declare-fun b!4212787 () Bool)

(declare-fun res!1730813 () Bool)

(declare-fun e!2615198 () Bool)

(assert (=> b!4212787 (=> res!1730813 e!2615198)))

(assert (=> b!4212787 (= res!1730813 (not ((_ is IntegerValue!23954) (value!241518 tBis!41))))))

(declare-fun e!2615199 () Bool)

(assert (=> b!4212787 (= e!2615199 e!2615198)))

(declare-fun b!4212788 () Bool)

(declare-fun inv!17 (TokenValue!7984) Bool)

(assert (=> b!4212788 (= e!2615199 (inv!17 (value!241518 tBis!41)))))

(declare-fun b!4212789 () Bool)

(declare-fun e!2615200 () Bool)

(assert (=> b!4212789 (= e!2615200 e!2615199)))

(declare-fun c!717524 () Bool)

(assert (=> b!4212789 (= c!717524 ((_ is IntegerValue!23953) (value!241518 tBis!41)))))

(declare-fun d!1241443 () Bool)

(declare-fun c!717523 () Bool)

(assert (=> d!1241443 (= c!717523 ((_ is IntegerValue!23952) (value!241518 tBis!41)))))

(assert (=> d!1241443 (= (inv!21 (value!241518 tBis!41)) e!2615200)))

(declare-fun b!4212790 () Bool)

(declare-fun inv!16 (TokenValue!7984) Bool)

(assert (=> b!4212790 (= e!2615200 (inv!16 (value!241518 tBis!41)))))

(declare-fun b!4212791 () Bool)

(declare-fun inv!15 (TokenValue!7984) Bool)

(assert (=> b!4212791 (= e!2615198 (inv!15 (value!241518 tBis!41)))))

(assert (= (and d!1241443 c!717523) b!4212790))

(assert (= (and d!1241443 (not c!717523)) b!4212789))

(assert (= (and b!4212789 c!717524) b!4212788))

(assert (= (and b!4212789 (not c!717524)) b!4212787))

(assert (= (and b!4212787 (not res!1730813)) b!4212791))

(declare-fun m!4800671 () Bool)

(assert (=> b!4212788 m!4800671))

(declare-fun m!4800673 () Bool)

(assert (=> b!4212790 m!4800673))

(declare-fun m!4800675 () Bool)

(assert (=> b!4212791 m!4800675))

(assert (=> b!4212594 d!1241443))

(declare-fun call!292990 () Option!9942)

(declare-fun bm!292985 () Bool)

(assert (=> bm!292985 (= call!292990 (maxPrefixOneRule!3344 thiss!26544 (h!51739 rules!3967) input!3517))))

(declare-fun b!4212792 () Bool)

(declare-fun e!2615202 () Bool)

(declare-fun lt!1499480 () Option!9942)

(assert (=> b!4212792 (= e!2615202 (contains!9575 rules!3967 (rule!10872 (_1!25163 (get!15065 lt!1499480)))))))

(declare-fun b!4212793 () Bool)

(declare-fun res!1730819 () Bool)

(assert (=> b!4212793 (=> (not res!1730819) (not e!2615202))))

(assert (=> b!4212793 (= res!1730819 (= (list!16751 (charsOf!5177 (_1!25163 (get!15065 lt!1499480)))) (originalCharacters!8136 (_1!25163 (get!15065 lt!1499480)))))))

(declare-fun b!4212794 () Bool)

(declare-fun res!1730817 () Bool)

(assert (=> b!4212794 (=> (not res!1730817) (not e!2615202))))

(assert (=> b!4212794 (= res!1730817 (< (size!34025 (_2!25163 (get!15065 lt!1499480))) (size!34025 input!3517)))))

(declare-fun b!4212795 () Bool)

(declare-fun res!1730820 () Bool)

(assert (=> b!4212795 (=> (not res!1730820) (not e!2615202))))

(assert (=> b!4212795 (= res!1730820 (matchR!6368 (regex!7754 (rule!10872 (_1!25163 (get!15065 lt!1499480)))) (list!16751 (charsOf!5177 (_1!25163 (get!15065 lt!1499480))))))))

(declare-fun b!4212796 () Bool)

(declare-fun e!2615203 () Option!9942)

(declare-fun lt!1499478 () Option!9942)

(declare-fun lt!1499476 () Option!9942)

(assert (=> b!4212796 (= e!2615203 (ite (and ((_ is None!9941) lt!1499478) ((_ is None!9941) lt!1499476)) None!9941 (ite ((_ is None!9941) lt!1499476) lt!1499478 (ite ((_ is None!9941) lt!1499478) lt!1499476 (ite (>= (size!34023 (_1!25163 (v!40815 lt!1499478))) (size!34023 (_1!25163 (v!40815 lt!1499476)))) lt!1499478 lt!1499476)))))))

(assert (=> b!4212796 (= lt!1499478 call!292990)))

(assert (=> b!4212796 (= lt!1499476 (maxPrefix!4389 thiss!26544 (t!348122 rules!3967) input!3517))))

(declare-fun b!4212797 () Bool)

(assert (=> b!4212797 (= e!2615203 call!292990)))

(declare-fun d!1241445 () Bool)

(declare-fun e!2615201 () Bool)

(assert (=> d!1241445 e!2615201))

(declare-fun res!1730814 () Bool)

(assert (=> d!1241445 (=> res!1730814 e!2615201)))

(assert (=> d!1241445 (= res!1730814 (isEmpty!27430 lt!1499480))))

(assert (=> d!1241445 (= lt!1499480 e!2615203)))

(declare-fun c!717525 () Bool)

(assert (=> d!1241445 (= c!717525 (and ((_ is Cons!46319) rules!3967) ((_ is Nil!46319) (t!348122 rules!3967))))))

(declare-fun lt!1499479 () Unit!65435)

(declare-fun lt!1499477 () Unit!65435)

(assert (=> d!1241445 (= lt!1499479 lt!1499477)))

(assert (=> d!1241445 (isPrefix!4613 input!3517 input!3517)))

(assert (=> d!1241445 (= lt!1499477 (lemmaIsPrefixRefl!3030 input!3517 input!3517))))

(assert (=> d!1241445 (rulesValidInductive!2880 thiss!26544 rules!3967)))

(assert (=> d!1241445 (= (maxPrefix!4389 thiss!26544 rules!3967 input!3517) lt!1499480)))

(declare-fun b!4212798 () Bool)

(declare-fun res!1730816 () Bool)

(assert (=> b!4212798 (=> (not res!1730816) (not e!2615202))))

(assert (=> b!4212798 (= res!1730816 (= (value!241518 (_1!25163 (get!15065 lt!1499480))) (apply!10689 (transformation!7754 (rule!10872 (_1!25163 (get!15065 lt!1499480)))) (seqFromList!5749 (originalCharacters!8136 (_1!25163 (get!15065 lt!1499480)))))))))

(declare-fun b!4212799 () Bool)

(declare-fun res!1730815 () Bool)

(assert (=> b!4212799 (=> (not res!1730815) (not e!2615202))))

(assert (=> b!4212799 (= res!1730815 (= (++!11828 (list!16751 (charsOf!5177 (_1!25163 (get!15065 lt!1499480)))) (_2!25163 (get!15065 lt!1499480))) input!3517))))

(declare-fun b!4212800 () Bool)

(assert (=> b!4212800 (= e!2615201 e!2615202)))

(declare-fun res!1730818 () Bool)

(assert (=> b!4212800 (=> (not res!1730818) (not e!2615202))))

(assert (=> b!4212800 (= res!1730818 (isDefined!7390 lt!1499480))))

(assert (= (and d!1241445 c!717525) b!4212797))

(assert (= (and d!1241445 (not c!717525)) b!4212796))

(assert (= (or b!4212797 b!4212796) bm!292985))

(assert (= (and d!1241445 (not res!1730814)) b!4212800))

(assert (= (and b!4212800 res!1730818) b!4212793))

(assert (= (and b!4212793 res!1730819) b!4212794))

(assert (= (and b!4212794 res!1730817) b!4212799))

(assert (= (and b!4212799 res!1730815) b!4212798))

(assert (= (and b!4212798 res!1730816) b!4212795))

(assert (= (and b!4212795 res!1730820) b!4212792))

(declare-fun m!4800721 () Bool)

(assert (=> b!4212799 m!4800721))

(declare-fun m!4800723 () Bool)

(assert (=> b!4212799 m!4800723))

(assert (=> b!4212799 m!4800723))

(declare-fun m!4800727 () Bool)

(assert (=> b!4212799 m!4800727))

(assert (=> b!4212799 m!4800727))

(declare-fun m!4800729 () Bool)

(assert (=> b!4212799 m!4800729))

(assert (=> b!4212795 m!4800721))

(assert (=> b!4212795 m!4800723))

(assert (=> b!4212795 m!4800723))

(assert (=> b!4212795 m!4800727))

(assert (=> b!4212795 m!4800727))

(declare-fun m!4800731 () Bool)

(assert (=> b!4212795 m!4800731))

(assert (=> b!4212792 m!4800721))

(declare-fun m!4800733 () Bool)

(assert (=> b!4212792 m!4800733))

(assert (=> bm!292985 m!4800475))

(assert (=> b!4212796 m!4800489))

(declare-fun m!4800735 () Bool)

(assert (=> b!4212800 m!4800735))

(assert (=> b!4212793 m!4800721))

(assert (=> b!4212793 m!4800723))

(assert (=> b!4212793 m!4800723))

(assert (=> b!4212793 m!4800727))

(assert (=> b!4212794 m!4800721))

(declare-fun m!4800737 () Bool)

(assert (=> b!4212794 m!4800737))

(assert (=> b!4212794 m!4800621))

(declare-fun m!4800739 () Bool)

(assert (=> d!1241445 m!4800739))

(assert (=> d!1241445 m!4800443))

(assert (=> d!1241445 m!4800445))

(declare-fun m!4800741 () Bool)

(assert (=> d!1241445 m!4800741))

(assert (=> b!4212798 m!4800721))

(declare-fun m!4800743 () Bool)

(assert (=> b!4212798 m!4800743))

(assert (=> b!4212798 m!4800743))

(declare-fun m!4800745 () Bool)

(assert (=> b!4212798 m!4800745))

(assert (=> b!4212583 d!1241445))

(declare-fun d!1241451 () Bool)

(declare-fun res!1730831 () Bool)

(declare-fun e!2615209 () Bool)

(assert (=> d!1241451 (=> (not res!1730831) (not e!2615209))))

(declare-fun validRegex!5747 (Regex!12659) Bool)

(assert (=> d!1241451 (= res!1730831 (validRegex!5747 (regex!7754 rBis!178)))))

(assert (=> d!1241451 (= (ruleValid!3466 thiss!26544 rBis!178) e!2615209)))

(declare-fun b!4212811 () Bool)

(declare-fun res!1730832 () Bool)

(assert (=> b!4212811 (=> (not res!1730832) (not e!2615209))))

(declare-fun nullable!4460 (Regex!12659) Bool)

(assert (=> b!4212811 (= res!1730832 (not (nullable!4460 (regex!7754 rBis!178))))))

(declare-fun b!4212812 () Bool)

(assert (=> b!4212812 (= e!2615209 (not (= (tag!8618 rBis!178) (String!53791 ""))))))

(assert (= (and d!1241451 res!1730831) b!4212811))

(assert (= (and b!4212811 res!1730832) b!4212812))

(declare-fun m!4800753 () Bool)

(assert (=> d!1241451 m!4800753))

(declare-fun m!4800755 () Bool)

(assert (=> b!4212811 m!4800755))

(assert (=> b!4212593 d!1241451))

(declare-fun d!1241459 () Bool)

(assert (=> d!1241459 (= (inv!60938 (tag!8618 rBis!178)) (= (mod (str.len (value!241517 (tag!8618 rBis!178))) 2) 0))))

(assert (=> b!4212590 d!1241459))

(declare-fun d!1241461 () Bool)

(declare-fun res!1730835 () Bool)

(declare-fun e!2615212 () Bool)

(assert (=> d!1241461 (=> (not res!1730835) (not e!2615212))))

(declare-fun semiInverseModEq!3370 (Int Int) Bool)

(assert (=> d!1241461 (= res!1730835 (semiInverseModEq!3370 (toChars!10333 (transformation!7754 rBis!178)) (toValue!10474 (transformation!7754 rBis!178))))))

(assert (=> d!1241461 (= (inv!60941 (transformation!7754 rBis!178)) e!2615212)))

(declare-fun b!4212815 () Bool)

(declare-fun equivClasses!3269 (Int Int) Bool)

(assert (=> b!4212815 (= e!2615212 (equivClasses!3269 (toChars!10333 (transformation!7754 rBis!178)) (toValue!10474 (transformation!7754 rBis!178))))))

(assert (= (and d!1241461 res!1730835) b!4212815))

(declare-fun m!4800757 () Bool)

(assert (=> d!1241461 m!4800757))

(declare-fun m!4800759 () Bool)

(assert (=> b!4212815 m!4800759))

(assert (=> b!4212590 d!1241461))

(declare-fun d!1241463 () Bool)

(assert (=> d!1241463 (= (inv!60938 (tag!8618 (h!51739 rules!3967))) (= (mod (str.len (value!241517 (tag!8618 (h!51739 rules!3967)))) 2) 0))))

(assert (=> b!4212611 d!1241463))

(declare-fun d!1241465 () Bool)

(declare-fun res!1730836 () Bool)

(declare-fun e!2615213 () Bool)

(assert (=> d!1241465 (=> (not res!1730836) (not e!2615213))))

(assert (=> d!1241465 (= res!1730836 (semiInverseModEq!3370 (toChars!10333 (transformation!7754 (h!51739 rules!3967))) (toValue!10474 (transformation!7754 (h!51739 rules!3967)))))))

(assert (=> d!1241465 (= (inv!60941 (transformation!7754 (h!51739 rules!3967))) e!2615213)))

(declare-fun b!4212816 () Bool)

(assert (=> b!4212816 (= e!2615213 (equivClasses!3269 (toChars!10333 (transformation!7754 (h!51739 rules!3967))) (toValue!10474 (transformation!7754 (h!51739 rules!3967)))))))

(assert (= (and d!1241465 res!1730836) b!4212816))

(declare-fun m!4800761 () Bool)

(assert (=> d!1241465 m!4800761))

(declare-fun m!4800763 () Bool)

(assert (=> b!4212816 m!4800763))

(assert (=> b!4212611 d!1241465))

(declare-fun d!1241467 () Bool)

(assert (=> d!1241467 (= (inv!60938 (tag!8618 (rule!10872 tBis!41))) (= (mod (str.len (value!241517 (tag!8618 (rule!10872 tBis!41)))) 2) 0))))

(assert (=> b!4212589 d!1241467))

(declare-fun d!1241469 () Bool)

(declare-fun res!1730837 () Bool)

(declare-fun e!2615214 () Bool)

(assert (=> d!1241469 (=> (not res!1730837) (not e!2615214))))

(assert (=> d!1241469 (= res!1730837 (semiInverseModEq!3370 (toChars!10333 (transformation!7754 (rule!10872 tBis!41))) (toValue!10474 (transformation!7754 (rule!10872 tBis!41)))))))

(assert (=> d!1241469 (= (inv!60941 (transformation!7754 (rule!10872 tBis!41))) e!2615214)))

(declare-fun b!4212817 () Bool)

(assert (=> b!4212817 (= e!2615214 (equivClasses!3269 (toChars!10333 (transformation!7754 (rule!10872 tBis!41))) (toValue!10474 (transformation!7754 (rule!10872 tBis!41)))))))

(assert (= (and d!1241469 res!1730837) b!4212817))

(declare-fun m!4800765 () Bool)

(assert (=> d!1241469 m!4800765))

(declare-fun m!4800767 () Bool)

(assert (=> b!4212817 m!4800767))

(assert (=> b!4212589 d!1241469))

(declare-fun d!1241471 () Bool)

(declare-fun e!2615231 () Bool)

(assert (=> d!1241471 e!2615231))

(declare-fun res!1730856 () Bool)

(assert (=> d!1241471 (=> (not res!1730856) (not e!2615231))))

(declare-fun lt!1499497 () List!46441)

(declare-fun content!7257 (List!46441) (InoxSet C!25512))

(assert (=> d!1241471 (= res!1730856 (= (content!7257 lt!1499497) ((_ map or) (content!7257 pBis!121) (content!7257 suffixBis!41))))))

(declare-fun e!2615230 () List!46441)

(assert (=> d!1241471 (= lt!1499497 e!2615230)))

(declare-fun c!717529 () Bool)

(assert (=> d!1241471 (= c!717529 ((_ is Nil!46317) pBis!121))))

(assert (=> d!1241471 (= (++!11828 pBis!121 suffixBis!41) lt!1499497)))

(declare-fun b!4212844 () Bool)

(declare-fun res!1730857 () Bool)

(assert (=> b!4212844 (=> (not res!1730857) (not e!2615231))))

(assert (=> b!4212844 (= res!1730857 (= (size!34025 lt!1499497) (+ (size!34025 pBis!121) (size!34025 suffixBis!41))))))

(declare-fun b!4212843 () Bool)

(assert (=> b!4212843 (= e!2615230 (Cons!46317 (h!51737 pBis!121) (++!11828 (t!348120 pBis!121) suffixBis!41)))))

(declare-fun b!4212845 () Bool)

(assert (=> b!4212845 (= e!2615231 (or (not (= suffixBis!41 Nil!46317)) (= lt!1499497 pBis!121)))))

(declare-fun b!4212842 () Bool)

(assert (=> b!4212842 (= e!2615230 suffixBis!41)))

(assert (= (and d!1241471 c!717529) b!4212842))

(assert (= (and d!1241471 (not c!717529)) b!4212843))

(assert (= (and d!1241471 res!1730856) b!4212844))

(assert (= (and b!4212844 res!1730857) b!4212845))

(declare-fun m!4800805 () Bool)

(assert (=> d!1241471 m!4800805))

(declare-fun m!4800809 () Bool)

(assert (=> d!1241471 m!4800809))

(declare-fun m!4800813 () Bool)

(assert (=> d!1241471 m!4800813))

(declare-fun m!4800815 () Bool)

(assert (=> b!4212844 m!4800815))

(assert (=> b!4212844 m!4800665))

(declare-fun m!4800819 () Bool)

(assert (=> b!4212844 m!4800819))

(declare-fun m!4800821 () Bool)

(assert (=> b!4212843 m!4800821))

(assert (=> b!4212602 d!1241471))

(declare-fun d!1241483 () Bool)

(declare-fun res!1730870 () Bool)

(declare-fun e!2615240 () Bool)

(assert (=> d!1241483 (=> (not res!1730870) (not e!2615240))))

(declare-fun isEmpty!27433 (List!46441) Bool)

(assert (=> d!1241483 (= res!1730870 (not (isEmpty!27433 (originalCharacters!8136 tBis!41))))))

(assert (=> d!1241483 (= (inv!60942 tBis!41) e!2615240)))

(declare-fun b!4212858 () Bool)

(declare-fun res!1730871 () Bool)

(assert (=> b!4212858 (=> (not res!1730871) (not e!2615240))))

(assert (=> b!4212858 (= res!1730871 (= (originalCharacters!8136 tBis!41) (list!16751 (dynLambda!19974 (toChars!10333 (transformation!7754 (rule!10872 tBis!41))) (value!241518 tBis!41)))))))

(declare-fun b!4212859 () Bool)

(assert (=> b!4212859 (= e!2615240 (= (size!34023 tBis!41) (size!34025 (originalCharacters!8136 tBis!41))))))

(assert (= (and d!1241483 res!1730870) b!4212858))

(assert (= (and b!4212858 res!1730871) b!4212859))

(declare-fun b_lambda!124103 () Bool)

(assert (=> (not b_lambda!124103) (not b!4212858)))

(assert (=> b!4212858 t!348140))

(declare-fun b_and!331661 () Bool)

(assert (= b_and!331645 (and (=> t!348140 result!308226) b_and!331661)))

(assert (=> b!4212858 t!348142))

(declare-fun b_and!331663 () Bool)

(assert (= b_and!331647 (and (=> t!348142 result!308230) b_and!331663)))

(assert (=> b!4212858 t!348144))

(declare-fun b_and!331665 () Bool)

(assert (= b_and!331649 (and (=> t!348144 result!308232) b_and!331665)))

(assert (=> b!4212858 t!348146))

(declare-fun b_and!331667 () Bool)

(assert (= b_and!331651 (and (=> t!348146 result!308234) b_and!331667)))

(declare-fun m!4800843 () Bool)

(assert (=> d!1241483 m!4800843))

(assert (=> b!4212858 m!4800645))

(assert (=> b!4212858 m!4800645))

(declare-fun m!4800845 () Bool)

(assert (=> b!4212858 m!4800845))

(declare-fun m!4800847 () Bool)

(assert (=> b!4212859 m!4800847))

(assert (=> start!402606 d!1241483))

(declare-fun d!1241489 () Bool)

(declare-fun res!1730876 () Bool)

(declare-fun e!2615244 () Bool)

(assert (=> d!1241489 (=> (not res!1730876) (not e!2615244))))

(assert (=> d!1241489 (= res!1730876 (not (isEmpty!27433 (originalCharacters!8136 t!8364))))))

(assert (=> d!1241489 (= (inv!60942 t!8364) e!2615244)))

(declare-fun b!4212864 () Bool)

(declare-fun res!1730877 () Bool)

(assert (=> b!4212864 (=> (not res!1730877) (not e!2615244))))

(assert (=> b!4212864 (= res!1730877 (= (originalCharacters!8136 t!8364) (list!16751 (dynLambda!19974 (toChars!10333 (transformation!7754 (rule!10872 t!8364))) (value!241518 t!8364)))))))

(declare-fun b!4212865 () Bool)

(assert (=> b!4212865 (= e!2615244 (= (size!34023 t!8364) (size!34025 (originalCharacters!8136 t!8364))))))

(assert (= (and d!1241489 res!1730876) b!4212864))

(assert (= (and b!4212864 res!1730877) b!4212865))

(declare-fun b_lambda!124105 () Bool)

(assert (=> (not b_lambda!124105) (not b!4212864)))

(declare-fun t!348148 () Bool)

(declare-fun tb!252903 () Bool)

(assert (=> (and b!4212600 (= (toChars!10333 (transformation!7754 (rule!10872 tBis!41))) (toChars!10333 (transformation!7754 (rule!10872 t!8364)))) t!348148) tb!252903))

(declare-fun b!4212866 () Bool)

(declare-fun e!2615245 () Bool)

(declare-fun tp!1288226 () Bool)

(assert (=> b!4212866 (= e!2615245 (and (inv!60945 (c!717499 (dynLambda!19974 (toChars!10333 (transformation!7754 (rule!10872 t!8364))) (value!241518 t!8364)))) tp!1288226))))

(declare-fun result!308236 () Bool)

(assert (=> tb!252903 (= result!308236 (and (inv!60946 (dynLambda!19974 (toChars!10333 (transformation!7754 (rule!10872 t!8364))) (value!241518 t!8364))) e!2615245))))

(assert (= tb!252903 b!4212866))

(declare-fun m!4800851 () Bool)

(assert (=> b!4212866 m!4800851))

(declare-fun m!4800853 () Bool)

(assert (=> tb!252903 m!4800853))

(assert (=> b!4212864 t!348148))

(declare-fun b_and!331669 () Bool)

(assert (= b_and!331661 (and (=> t!348148 result!308236) b_and!331669)))

(declare-fun t!348150 () Bool)

(declare-fun tb!252905 () Bool)

(assert (=> (and b!4212601 (= (toChars!10333 (transformation!7754 rBis!178)) (toChars!10333 (transformation!7754 (rule!10872 t!8364)))) t!348150) tb!252905))

(declare-fun result!308238 () Bool)

(assert (= result!308238 result!308236))

(assert (=> b!4212864 t!348150))

(declare-fun b_and!331671 () Bool)

(assert (= b_and!331663 (and (=> t!348150 result!308238) b_and!331671)))

(declare-fun tb!252907 () Bool)

(declare-fun t!348152 () Bool)

(assert (=> (and b!4212607 (= (toChars!10333 (transformation!7754 (h!51739 rules!3967))) (toChars!10333 (transformation!7754 (rule!10872 t!8364)))) t!348152) tb!252907))

(declare-fun result!308240 () Bool)

(assert (= result!308240 result!308236))

(assert (=> b!4212864 t!348152))

(declare-fun b_and!331673 () Bool)

(assert (= b_and!331665 (and (=> t!348152 result!308240) b_and!331673)))

(declare-fun t!348154 () Bool)

(declare-fun tb!252909 () Bool)

(assert (=> (and b!4212606 (= (toChars!10333 (transformation!7754 (rule!10872 t!8364))) (toChars!10333 (transformation!7754 (rule!10872 t!8364)))) t!348154) tb!252909))

(declare-fun result!308242 () Bool)

(assert (= result!308242 result!308236))

(assert (=> b!4212864 t!348154))

(declare-fun b_and!331675 () Bool)

(assert (= b_and!331667 (and (=> t!348154 result!308242) b_and!331675)))

(declare-fun m!4800859 () Bool)

(assert (=> d!1241489 m!4800859))

(declare-fun m!4800861 () Bool)

(assert (=> b!4212864 m!4800861))

(assert (=> b!4212864 m!4800861))

(declare-fun m!4800867 () Bool)

(assert (=> b!4212864 m!4800867))

(declare-fun m!4800869 () Bool)

(assert (=> b!4212865 m!4800869))

(assert (=> start!402606 d!1241489))

(declare-fun d!1241497 () Bool)

(assert (=> d!1241497 (= (inv!60938 (tag!8618 (rule!10872 t!8364))) (= (mod (str.len (value!241517 (tag!8618 (rule!10872 t!8364)))) 2) 0))))

(assert (=> b!4212587 d!1241497))

(declare-fun d!1241501 () Bool)

(declare-fun res!1730884 () Bool)

(declare-fun e!2615253 () Bool)

(assert (=> d!1241501 (=> (not res!1730884) (not e!2615253))))

(assert (=> d!1241501 (= res!1730884 (semiInverseModEq!3370 (toChars!10333 (transformation!7754 (rule!10872 t!8364))) (toValue!10474 (transformation!7754 (rule!10872 t!8364)))))))

(assert (=> d!1241501 (= (inv!60941 (transformation!7754 (rule!10872 t!8364))) e!2615253)))

(declare-fun b!4212877 () Bool)

(assert (=> b!4212877 (= e!2615253 (equivClasses!3269 (toChars!10333 (transformation!7754 (rule!10872 t!8364))) (toValue!10474 (transformation!7754 (rule!10872 t!8364)))))))

(assert (= (and d!1241501 res!1730884) b!4212877))

(declare-fun m!4800881 () Bool)

(assert (=> d!1241501 m!4800881))

(declare-fun m!4800883 () Bool)

(assert (=> b!4212877 m!4800883))

(assert (=> b!4212587 d!1241501))

(declare-fun d!1241507 () Bool)

(assert (=> d!1241507 (= (isEmpty!27430 lt!1499409) (not ((_ is Some!9941) lt!1499409)))))

(assert (=> b!4212608 d!1241507))

(declare-fun d!1241509 () Bool)

(assert (=> d!1241509 (isEmpty!27430 (maxPrefixOneRule!3344 thiss!26544 rBis!178 input!3517))))

(declare-fun lt!1499509 () Unit!65435)

(declare-fun choose!25807 (LexerInterface!7349 Rule!15308 List!46443 List!46441) Unit!65435)

(assert (=> d!1241509 (= lt!1499509 (choose!25807 thiss!26544 rBis!178 (t!348122 rules!3967) input!3517))))

(assert (=> d!1241509 (not (isEmpty!27431 (t!348122 rules!3967)))))

(assert (=> d!1241509 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!612 thiss!26544 rBis!178 (t!348122 rules!3967) input!3517) lt!1499509)))

(declare-fun bs!597466 () Bool)

(assert (= bs!597466 d!1241509))

(assert (=> bs!597466 m!4800441))

(assert (=> bs!597466 m!4800441))

(declare-fun m!4800915 () Bool)

(assert (=> bs!597466 m!4800915))

(declare-fun m!4800917 () Bool)

(assert (=> bs!597466 m!4800917))

(declare-fun m!4800919 () Bool)

(assert (=> bs!597466 m!4800919))

(assert (=> b!4212608 d!1241509))

(declare-fun d!1241517 () Bool)

(declare-fun e!2615291 () Bool)

(assert (=> d!1241517 e!2615291))

(declare-fun res!1730895 () Bool)

(assert (=> d!1241517 (=> (not res!1730895) (not e!2615291))))

(declare-fun lt!1499510 () List!46441)

(assert (=> d!1241517 (= res!1730895 (= (content!7257 lt!1499510) ((_ map or) (content!7257 p!3001) (content!7257 suffix!1557))))))

(declare-fun e!2615290 () List!46441)

(assert (=> d!1241517 (= lt!1499510 e!2615290)))

(declare-fun c!717533 () Bool)

(assert (=> d!1241517 (= c!717533 ((_ is Nil!46317) p!3001))))

(assert (=> d!1241517 (= (++!11828 p!3001 suffix!1557) lt!1499510)))

(declare-fun b!4212940 () Bool)

(declare-fun res!1730896 () Bool)

(assert (=> b!4212940 (=> (not res!1730896) (not e!2615291))))

(assert (=> b!4212940 (= res!1730896 (= (size!34025 lt!1499510) (+ (size!34025 p!3001) (size!34025 suffix!1557))))))

(declare-fun b!4212939 () Bool)

(assert (=> b!4212939 (= e!2615290 (Cons!46317 (h!51737 p!3001) (++!11828 (t!348120 p!3001) suffix!1557)))))

(declare-fun b!4212941 () Bool)

(assert (=> b!4212941 (= e!2615291 (or (not (= suffix!1557 Nil!46317)) (= lt!1499510 p!3001)))))

(declare-fun b!4212938 () Bool)

(assert (=> b!4212938 (= e!2615290 suffix!1557)))

(assert (= (and d!1241517 c!717533) b!4212938))

(assert (= (and d!1241517 (not c!717533)) b!4212939))

(assert (= (and d!1241517 res!1730895) b!4212940))

(assert (= (and b!4212940 res!1730896) b!4212941))

(declare-fun m!4800921 () Bool)

(assert (=> d!1241517 m!4800921))

(declare-fun m!4800923 () Bool)

(assert (=> d!1241517 m!4800923))

(declare-fun m!4800925 () Bool)

(assert (=> d!1241517 m!4800925))

(declare-fun m!4800927 () Bool)

(assert (=> b!4212940 m!4800927))

(assert (=> b!4212940 m!4800657))

(declare-fun m!4800929 () Bool)

(assert (=> b!4212940 m!4800929))

(declare-fun m!4800931 () Bool)

(assert (=> b!4212939 m!4800931))

(assert (=> b!4212610 d!1241517))

(declare-fun b!4212942 () Bool)

(declare-fun res!1730897 () Bool)

(declare-fun e!2615292 () Bool)

(assert (=> b!4212942 (=> res!1730897 e!2615292)))

(assert (=> b!4212942 (= res!1730897 (not ((_ is IntegerValue!23954) (value!241518 t!8364))))))

(declare-fun e!2615293 () Bool)

(assert (=> b!4212942 (= e!2615293 e!2615292)))

(declare-fun b!4212943 () Bool)

(assert (=> b!4212943 (= e!2615293 (inv!17 (value!241518 t!8364)))))

(declare-fun b!4212944 () Bool)

(declare-fun e!2615294 () Bool)

(assert (=> b!4212944 (= e!2615294 e!2615293)))

(declare-fun c!717535 () Bool)

(assert (=> b!4212944 (= c!717535 ((_ is IntegerValue!23953) (value!241518 t!8364)))))

(declare-fun d!1241519 () Bool)

(declare-fun c!717534 () Bool)

(assert (=> d!1241519 (= c!717534 ((_ is IntegerValue!23952) (value!241518 t!8364)))))

(assert (=> d!1241519 (= (inv!21 (value!241518 t!8364)) e!2615294)))

(declare-fun b!4212945 () Bool)

(assert (=> b!4212945 (= e!2615294 (inv!16 (value!241518 t!8364)))))

(declare-fun b!4212946 () Bool)

(assert (=> b!4212946 (= e!2615292 (inv!15 (value!241518 t!8364)))))

(assert (= (and d!1241519 c!717534) b!4212945))

(assert (= (and d!1241519 (not c!717534)) b!4212944))

(assert (= (and b!4212944 c!717535) b!4212943))

(assert (= (and b!4212944 (not c!717535)) b!4212942))

(assert (= (and b!4212942 (not res!1730897)) b!4212946))

(declare-fun m!4800933 () Bool)

(assert (=> b!4212943 m!4800933))

(declare-fun m!4800935 () Bool)

(assert (=> b!4212945 m!4800935))

(declare-fun m!4800937 () Bool)

(assert (=> b!4212946 m!4800937))

(assert (=> b!4212599 d!1241519))

(declare-fun b!4212965 () Bool)

(declare-fun res!1730913 () Bool)

(declare-fun e!2615306 () Bool)

(assert (=> b!4212965 (=> (not res!1730913) (not e!2615306))))

(declare-fun lt!1499522 () Option!9942)

(assert (=> b!4212965 (= res!1730913 (= (++!11828 (list!16751 (charsOf!5177 (_1!25163 (get!15065 lt!1499522)))) (_2!25163 (get!15065 lt!1499522))) input!3517))))

(declare-fun b!4212966 () Bool)

(declare-fun e!2615304 () Option!9942)

(declare-datatypes ((tuple2!44062 0))(
  ( (tuple2!44063 (_1!25165 List!46441) (_2!25165 List!46441)) )
))
(declare-fun lt!1499524 () tuple2!44062)

(declare-fun size!34027 (BalanceConc!27524) Int)

(assert (=> b!4212966 (= e!2615304 (Some!9941 (tuple2!44059 (Token!14211 (apply!10689 (transformation!7754 rBis!178) (seqFromList!5749 (_1!25165 lt!1499524))) rBis!178 (size!34027 (seqFromList!5749 (_1!25165 lt!1499524))) (_1!25165 lt!1499524)) (_2!25165 lt!1499524))))))

(declare-fun lt!1499523 () Unit!65435)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1622 (Regex!12659 List!46441) Unit!65435)

(assert (=> b!4212966 (= lt!1499523 (longestMatchIsAcceptedByMatchOrIsEmpty!1622 (regex!7754 rBis!178) input!3517))))

(declare-fun res!1730914 () Bool)

(declare-fun findLongestMatchInner!1649 (Regex!12659 List!46441 Int List!46441 List!46441 Int) tuple2!44062)

(assert (=> b!4212966 (= res!1730914 (isEmpty!27433 (_1!25165 (findLongestMatchInner!1649 (regex!7754 rBis!178) Nil!46317 (size!34025 Nil!46317) input!3517 input!3517 (size!34025 input!3517)))))))

(declare-fun e!2615305 () Bool)

(assert (=> b!4212966 (=> res!1730914 e!2615305)))

(assert (=> b!4212966 e!2615305))

(declare-fun lt!1499521 () Unit!65435)

(assert (=> b!4212966 (= lt!1499521 lt!1499523)))

(declare-fun lt!1499525 () Unit!65435)

(declare-fun lemmaSemiInverse!2490 (TokenValueInjection!15396 BalanceConc!27524) Unit!65435)

(assert (=> b!4212966 (= lt!1499525 (lemmaSemiInverse!2490 (transformation!7754 rBis!178) (seqFromList!5749 (_1!25165 lt!1499524))))))

(declare-fun b!4212967 () Bool)

(declare-fun res!1730912 () Bool)

(assert (=> b!4212967 (=> (not res!1730912) (not e!2615306))))

(assert (=> b!4212967 (= res!1730912 (< (size!34025 (_2!25163 (get!15065 lt!1499522))) (size!34025 input!3517)))))

(declare-fun b!4212968 () Bool)

(declare-fun res!1730915 () Bool)

(assert (=> b!4212968 (=> (not res!1730915) (not e!2615306))))

(assert (=> b!4212968 (= res!1730915 (= (rule!10872 (_1!25163 (get!15065 lt!1499522))) rBis!178))))

(declare-fun d!1241521 () Bool)

(declare-fun e!2615303 () Bool)

(assert (=> d!1241521 e!2615303))

(declare-fun res!1730916 () Bool)

(assert (=> d!1241521 (=> res!1730916 e!2615303)))

(assert (=> d!1241521 (= res!1730916 (isEmpty!27430 lt!1499522))))

(assert (=> d!1241521 (= lt!1499522 e!2615304)))

(declare-fun c!717538 () Bool)

(assert (=> d!1241521 (= c!717538 (isEmpty!27433 (_1!25165 lt!1499524)))))

(declare-fun findLongestMatch!1562 (Regex!12659 List!46441) tuple2!44062)

(assert (=> d!1241521 (= lt!1499524 (findLongestMatch!1562 (regex!7754 rBis!178) input!3517))))

(assert (=> d!1241521 (ruleValid!3466 thiss!26544 rBis!178)))

(assert (=> d!1241521 (= (maxPrefixOneRule!3344 thiss!26544 rBis!178 input!3517) lt!1499522)))

(declare-fun b!4212969 () Bool)

(assert (=> b!4212969 (= e!2615306 (= (size!34023 (_1!25163 (get!15065 lt!1499522))) (size!34025 (originalCharacters!8136 (_1!25163 (get!15065 lt!1499522))))))))

(declare-fun b!4212970 () Bool)

(assert (=> b!4212970 (= e!2615304 None!9941)))

(declare-fun b!4212971 () Bool)

(assert (=> b!4212971 (= e!2615305 (matchR!6368 (regex!7754 rBis!178) (_1!25165 (findLongestMatchInner!1649 (regex!7754 rBis!178) Nil!46317 (size!34025 Nil!46317) input!3517 input!3517 (size!34025 input!3517)))))))

(declare-fun b!4212972 () Bool)

(assert (=> b!4212972 (= e!2615303 e!2615306)))

(declare-fun res!1730918 () Bool)

(assert (=> b!4212972 (=> (not res!1730918) (not e!2615306))))

(assert (=> b!4212972 (= res!1730918 (matchR!6368 (regex!7754 rBis!178) (list!16751 (charsOf!5177 (_1!25163 (get!15065 lt!1499522))))))))

(declare-fun b!4212973 () Bool)

(declare-fun res!1730917 () Bool)

(assert (=> b!4212973 (=> (not res!1730917) (not e!2615306))))

(assert (=> b!4212973 (= res!1730917 (= (value!241518 (_1!25163 (get!15065 lt!1499522))) (apply!10689 (transformation!7754 (rule!10872 (_1!25163 (get!15065 lt!1499522)))) (seqFromList!5749 (originalCharacters!8136 (_1!25163 (get!15065 lt!1499522)))))))))

(assert (= (and d!1241521 c!717538) b!4212970))

(assert (= (and d!1241521 (not c!717538)) b!4212966))

(assert (= (and b!4212966 (not res!1730914)) b!4212971))

(assert (= (and d!1241521 (not res!1730916)) b!4212972))

(assert (= (and b!4212972 res!1730918) b!4212965))

(assert (= (and b!4212965 res!1730913) b!4212967))

(assert (= (and b!4212967 res!1730912) b!4212968))

(assert (= (and b!4212968 res!1730915) b!4212973))

(assert (= (and b!4212973 res!1730917) b!4212969))

(declare-fun m!4800939 () Bool)

(assert (=> b!4212967 m!4800939))

(declare-fun m!4800941 () Bool)

(assert (=> b!4212967 m!4800941))

(assert (=> b!4212967 m!4800621))

(declare-fun m!4800943 () Bool)

(assert (=> b!4212966 m!4800943))

(assert (=> b!4212966 m!4800943))

(declare-fun m!4800945 () Bool)

(assert (=> b!4212966 m!4800945))

(declare-fun m!4800947 () Bool)

(assert (=> b!4212966 m!4800947))

(declare-fun m!4800949 () Bool)

(assert (=> b!4212966 m!4800949))

(assert (=> b!4212966 m!4800621))

(declare-fun m!4800951 () Bool)

(assert (=> b!4212966 m!4800951))

(assert (=> b!4212966 m!4800949))

(assert (=> b!4212966 m!4800943))

(declare-fun m!4800953 () Bool)

(assert (=> b!4212966 m!4800953))

(assert (=> b!4212966 m!4800621))

(assert (=> b!4212966 m!4800943))

(declare-fun m!4800955 () Bool)

(assert (=> b!4212966 m!4800955))

(declare-fun m!4800957 () Bool)

(assert (=> b!4212966 m!4800957))

(assert (=> b!4212971 m!4800949))

(assert (=> b!4212971 m!4800621))

(assert (=> b!4212971 m!4800949))

(assert (=> b!4212971 m!4800621))

(assert (=> b!4212971 m!4800951))

(declare-fun m!4800959 () Bool)

(assert (=> b!4212971 m!4800959))

(assert (=> b!4212972 m!4800939))

(declare-fun m!4800961 () Bool)

(assert (=> b!4212972 m!4800961))

(assert (=> b!4212972 m!4800961))

(declare-fun m!4800963 () Bool)

(assert (=> b!4212972 m!4800963))

(assert (=> b!4212972 m!4800963))

(declare-fun m!4800965 () Bool)

(assert (=> b!4212972 m!4800965))

(assert (=> b!4212973 m!4800939))

(declare-fun m!4800967 () Bool)

(assert (=> b!4212973 m!4800967))

(assert (=> b!4212973 m!4800967))

(declare-fun m!4800969 () Bool)

(assert (=> b!4212973 m!4800969))

(assert (=> b!4212968 m!4800939))

(assert (=> b!4212969 m!4800939))

(declare-fun m!4800971 () Bool)

(assert (=> b!4212969 m!4800971))

(declare-fun m!4800973 () Bool)

(assert (=> d!1241521 m!4800973))

(declare-fun m!4800975 () Bool)

(assert (=> d!1241521 m!4800975))

(declare-fun m!4800977 () Bool)

(assert (=> d!1241521 m!4800977))

(assert (=> d!1241521 m!4800457))

(assert (=> b!4212965 m!4800939))

(assert (=> b!4212965 m!4800961))

(assert (=> b!4212965 m!4800961))

(assert (=> b!4212965 m!4800963))

(assert (=> b!4212965 m!4800963))

(declare-fun m!4800979 () Bool)

(assert (=> b!4212965 m!4800979))

(assert (=> b!4212588 d!1241521))

(declare-fun d!1241523 () Bool)

(declare-fun e!2615307 () Bool)

(assert (=> d!1241523 e!2615307))

(declare-fun res!1730920 () Bool)

(assert (=> d!1241523 (=> res!1730920 e!2615307)))

(declare-fun lt!1499526 () Bool)

(assert (=> d!1241523 (= res!1730920 (not lt!1499526))))

(declare-fun e!2615309 () Bool)

(assert (=> d!1241523 (= lt!1499526 e!2615309)))

(declare-fun res!1730919 () Bool)

(assert (=> d!1241523 (=> res!1730919 e!2615309)))

(assert (=> d!1241523 (= res!1730919 ((_ is Nil!46317) input!3517))))

(assert (=> d!1241523 (= (isPrefix!4613 input!3517 input!3517) lt!1499526)))

(declare-fun b!4212975 () Bool)

(declare-fun res!1730921 () Bool)

(declare-fun e!2615308 () Bool)

(assert (=> b!4212975 (=> (not res!1730921) (not e!2615308))))

(assert (=> b!4212975 (= res!1730921 (= (head!8937 input!3517) (head!8937 input!3517)))))

(declare-fun b!4212976 () Bool)

(assert (=> b!4212976 (= e!2615308 (isPrefix!4613 (tail!6784 input!3517) (tail!6784 input!3517)))))

(declare-fun b!4212974 () Bool)

(assert (=> b!4212974 (= e!2615309 e!2615308)))

(declare-fun res!1730922 () Bool)

(assert (=> b!4212974 (=> (not res!1730922) (not e!2615308))))

(assert (=> b!4212974 (= res!1730922 (not ((_ is Nil!46317) input!3517)))))

(declare-fun b!4212977 () Bool)

(assert (=> b!4212977 (= e!2615307 (>= (size!34025 input!3517) (size!34025 input!3517)))))

(assert (= (and d!1241523 (not res!1730919)) b!4212974))

(assert (= (and b!4212974 res!1730922) b!4212975))

(assert (= (and b!4212975 res!1730921) b!4212976))

(assert (= (and d!1241523 (not res!1730920)) b!4212977))

(assert (=> b!4212975 m!4800649))

(assert (=> b!4212975 m!4800649))

(assert (=> b!4212976 m!4800653))

(assert (=> b!4212976 m!4800653))

(assert (=> b!4212976 m!4800653))

(assert (=> b!4212976 m!4800653))

(declare-fun m!4800981 () Bool)

(assert (=> b!4212976 m!4800981))

(assert (=> b!4212977 m!4800621))

(assert (=> b!4212977 m!4800621))

(assert (=> b!4212588 d!1241523))

(declare-fun d!1241525 () Bool)

(assert (=> d!1241525 (isPrefix!4613 input!3517 input!3517)))

(declare-fun lt!1499529 () Unit!65435)

(declare-fun choose!25808 (List!46441 List!46441) Unit!65435)

(assert (=> d!1241525 (= lt!1499529 (choose!25808 input!3517 input!3517))))

(assert (=> d!1241525 (= (lemmaIsPrefixRefl!3030 input!3517 input!3517) lt!1499529)))

(declare-fun bs!597467 () Bool)

(assert (= bs!597467 d!1241525))

(assert (=> bs!597467 m!4800443))

(declare-fun m!4800983 () Bool)

(assert (=> bs!597467 m!4800983))

(assert (=> b!4212588 d!1241525))

(declare-fun b!4212978 () Bool)

(declare-fun res!1730924 () Bool)

(declare-fun e!2615313 () Bool)

(assert (=> b!4212978 (=> (not res!1730924) (not e!2615313))))

(declare-fun lt!1499531 () Option!9942)

(assert (=> b!4212978 (= res!1730924 (= (++!11828 (list!16751 (charsOf!5177 (_1!25163 (get!15065 lt!1499531)))) (_2!25163 (get!15065 lt!1499531))) input!3517))))

(declare-fun b!4212979 () Bool)

(declare-fun e!2615311 () Option!9942)

(declare-fun lt!1499533 () tuple2!44062)

(assert (=> b!4212979 (= e!2615311 (Some!9941 (tuple2!44059 (Token!14211 (apply!10689 (transformation!7754 (h!51739 rules!3967)) (seqFromList!5749 (_1!25165 lt!1499533))) (h!51739 rules!3967) (size!34027 (seqFromList!5749 (_1!25165 lt!1499533))) (_1!25165 lt!1499533)) (_2!25165 lt!1499533))))))

(declare-fun lt!1499532 () Unit!65435)

(assert (=> b!4212979 (= lt!1499532 (longestMatchIsAcceptedByMatchOrIsEmpty!1622 (regex!7754 (h!51739 rules!3967)) input!3517))))

(declare-fun res!1730925 () Bool)

(assert (=> b!4212979 (= res!1730925 (isEmpty!27433 (_1!25165 (findLongestMatchInner!1649 (regex!7754 (h!51739 rules!3967)) Nil!46317 (size!34025 Nil!46317) input!3517 input!3517 (size!34025 input!3517)))))))

(declare-fun e!2615312 () Bool)

(assert (=> b!4212979 (=> res!1730925 e!2615312)))

(assert (=> b!4212979 e!2615312))

(declare-fun lt!1499530 () Unit!65435)

(assert (=> b!4212979 (= lt!1499530 lt!1499532)))

(declare-fun lt!1499534 () Unit!65435)

(assert (=> b!4212979 (= lt!1499534 (lemmaSemiInverse!2490 (transformation!7754 (h!51739 rules!3967)) (seqFromList!5749 (_1!25165 lt!1499533))))))

(declare-fun b!4212980 () Bool)

(declare-fun res!1730923 () Bool)

(assert (=> b!4212980 (=> (not res!1730923) (not e!2615313))))

(assert (=> b!4212980 (= res!1730923 (< (size!34025 (_2!25163 (get!15065 lt!1499531))) (size!34025 input!3517)))))

(declare-fun b!4212981 () Bool)

(declare-fun res!1730926 () Bool)

(assert (=> b!4212981 (=> (not res!1730926) (not e!2615313))))

(assert (=> b!4212981 (= res!1730926 (= (rule!10872 (_1!25163 (get!15065 lt!1499531))) (h!51739 rules!3967)))))

(declare-fun d!1241527 () Bool)

(declare-fun e!2615310 () Bool)

(assert (=> d!1241527 e!2615310))

(declare-fun res!1730927 () Bool)

(assert (=> d!1241527 (=> res!1730927 e!2615310)))

(assert (=> d!1241527 (= res!1730927 (isEmpty!27430 lt!1499531))))

(assert (=> d!1241527 (= lt!1499531 e!2615311)))

(declare-fun c!717539 () Bool)

(assert (=> d!1241527 (= c!717539 (isEmpty!27433 (_1!25165 lt!1499533)))))

(assert (=> d!1241527 (= lt!1499533 (findLongestMatch!1562 (regex!7754 (h!51739 rules!3967)) input!3517))))

(assert (=> d!1241527 (ruleValid!3466 thiss!26544 (h!51739 rules!3967))))

(assert (=> d!1241527 (= (maxPrefixOneRule!3344 thiss!26544 (h!51739 rules!3967) input!3517) lt!1499531)))

(declare-fun b!4212982 () Bool)

(assert (=> b!4212982 (= e!2615313 (= (size!34023 (_1!25163 (get!15065 lt!1499531))) (size!34025 (originalCharacters!8136 (_1!25163 (get!15065 lt!1499531))))))))

(declare-fun b!4212983 () Bool)

(assert (=> b!4212983 (= e!2615311 None!9941)))

(declare-fun b!4212984 () Bool)

(assert (=> b!4212984 (= e!2615312 (matchR!6368 (regex!7754 (h!51739 rules!3967)) (_1!25165 (findLongestMatchInner!1649 (regex!7754 (h!51739 rules!3967)) Nil!46317 (size!34025 Nil!46317) input!3517 input!3517 (size!34025 input!3517)))))))

(declare-fun b!4212985 () Bool)

(assert (=> b!4212985 (= e!2615310 e!2615313)))

(declare-fun res!1730929 () Bool)

(assert (=> b!4212985 (=> (not res!1730929) (not e!2615313))))

(assert (=> b!4212985 (= res!1730929 (matchR!6368 (regex!7754 (h!51739 rules!3967)) (list!16751 (charsOf!5177 (_1!25163 (get!15065 lt!1499531))))))))

(declare-fun b!4212986 () Bool)

(declare-fun res!1730928 () Bool)

(assert (=> b!4212986 (=> (not res!1730928) (not e!2615313))))

(assert (=> b!4212986 (= res!1730928 (= (value!241518 (_1!25163 (get!15065 lt!1499531))) (apply!10689 (transformation!7754 (rule!10872 (_1!25163 (get!15065 lt!1499531)))) (seqFromList!5749 (originalCharacters!8136 (_1!25163 (get!15065 lt!1499531)))))))))

(assert (= (and d!1241527 c!717539) b!4212983))

(assert (= (and d!1241527 (not c!717539)) b!4212979))

(assert (= (and b!4212979 (not res!1730925)) b!4212984))

(assert (= (and d!1241527 (not res!1730927)) b!4212985))

(assert (= (and b!4212985 res!1730929) b!4212978))

(assert (= (and b!4212978 res!1730924) b!4212980))

(assert (= (and b!4212980 res!1730923) b!4212981))

(assert (= (and b!4212981 res!1730926) b!4212986))

(assert (= (and b!4212986 res!1730928) b!4212982))

(declare-fun m!4800985 () Bool)

(assert (=> b!4212980 m!4800985))

(declare-fun m!4800987 () Bool)

(assert (=> b!4212980 m!4800987))

(assert (=> b!4212980 m!4800621))

(declare-fun m!4800989 () Bool)

(assert (=> b!4212979 m!4800989))

(assert (=> b!4212979 m!4800989))

(declare-fun m!4800991 () Bool)

(assert (=> b!4212979 m!4800991))

(declare-fun m!4800993 () Bool)

(assert (=> b!4212979 m!4800993))

(assert (=> b!4212979 m!4800949))

(assert (=> b!4212979 m!4800621))

(declare-fun m!4800995 () Bool)

(assert (=> b!4212979 m!4800995))

(assert (=> b!4212979 m!4800949))

(assert (=> b!4212979 m!4800989))

(declare-fun m!4800997 () Bool)

(assert (=> b!4212979 m!4800997))

(assert (=> b!4212979 m!4800621))

(assert (=> b!4212979 m!4800989))

(declare-fun m!4800999 () Bool)

(assert (=> b!4212979 m!4800999))

(declare-fun m!4801001 () Bool)

(assert (=> b!4212979 m!4801001))

(assert (=> b!4212984 m!4800949))

(assert (=> b!4212984 m!4800621))

(assert (=> b!4212984 m!4800949))

(assert (=> b!4212984 m!4800621))

(assert (=> b!4212984 m!4800995))

(declare-fun m!4801003 () Bool)

(assert (=> b!4212984 m!4801003))

(assert (=> b!4212985 m!4800985))

(declare-fun m!4801005 () Bool)

(assert (=> b!4212985 m!4801005))

(assert (=> b!4212985 m!4801005))

(declare-fun m!4801007 () Bool)

(assert (=> b!4212985 m!4801007))

(assert (=> b!4212985 m!4801007))

(declare-fun m!4801009 () Bool)

(assert (=> b!4212985 m!4801009))

(assert (=> b!4212986 m!4800985))

(declare-fun m!4801011 () Bool)

(assert (=> b!4212986 m!4801011))

(assert (=> b!4212986 m!4801011))

(declare-fun m!4801013 () Bool)

(assert (=> b!4212986 m!4801013))

(assert (=> b!4212981 m!4800985))

(assert (=> b!4212982 m!4800985))

(declare-fun m!4801015 () Bool)

(assert (=> b!4212982 m!4801015))

(declare-fun m!4801017 () Bool)

(assert (=> d!1241527 m!4801017))

(declare-fun m!4801019 () Bool)

(assert (=> d!1241527 m!4801019))

(declare-fun m!4801021 () Bool)

(assert (=> d!1241527 m!4801021))

(declare-fun m!4801023 () Bool)

(assert (=> d!1241527 m!4801023))

(assert (=> b!4212978 m!4800985))

(assert (=> b!4212978 m!4801005))

(assert (=> b!4212978 m!4801005))

(assert (=> b!4212978 m!4801007))

(assert (=> b!4212978 m!4801007))

(declare-fun m!4801025 () Bool)

(assert (=> b!4212978 m!4801025))

(assert (=> b!4212609 d!1241527))

(declare-fun b!4212991 () Bool)

(declare-fun e!2615316 () Bool)

(declare-fun tp!1288280 () Bool)

(assert (=> b!4212991 (= e!2615316 (and tp_is_empty!22285 tp!1288280))))

(assert (=> b!4212603 (= tp!1288199 e!2615316)))

(assert (= (and b!4212603 ((_ is Cons!46317) (t!348120 p!3001))) b!4212991))

(declare-fun b!4212992 () Bool)

(declare-fun e!2615317 () Bool)

(declare-fun tp!1288281 () Bool)

(assert (=> b!4212992 (= e!2615317 (and tp_is_empty!22285 tp!1288281))))

(assert (=> b!4212594 (= tp!1288216 e!2615317)))

(assert (= (and b!4212594 ((_ is Cons!46317) (originalCharacters!8136 tBis!41))) b!4212992))

(declare-fun b!4212993 () Bool)

(declare-fun e!2615318 () Bool)

(declare-fun tp!1288282 () Bool)

(assert (=> b!4212993 (= e!2615318 (and tp_is_empty!22285 tp!1288282))))

(assert (=> b!4212604 (= tp!1288206 e!2615318)))

(assert (= (and b!4212604 ((_ is Cons!46317) (t!348120 pBis!121))) b!4212993))

(declare-fun e!2615321 () Bool)

(assert (=> b!4212590 (= tp!1288204 e!2615321)))

(declare-fun b!4213005 () Bool)

(declare-fun tp!1288296 () Bool)

(declare-fun tp!1288293 () Bool)

(assert (=> b!4213005 (= e!2615321 (and tp!1288296 tp!1288293))))

(declare-fun b!4213007 () Bool)

(declare-fun tp!1288295 () Bool)

(declare-fun tp!1288294 () Bool)

(assert (=> b!4213007 (= e!2615321 (and tp!1288295 tp!1288294))))

(declare-fun b!4213004 () Bool)

(assert (=> b!4213004 (= e!2615321 tp_is_empty!22285)))

(declare-fun b!4213006 () Bool)

(declare-fun tp!1288297 () Bool)

(assert (=> b!4213006 (= e!2615321 tp!1288297)))

(assert (= (and b!4212590 ((_ is ElementMatch!12659) (regex!7754 rBis!178))) b!4213004))

(assert (= (and b!4212590 ((_ is Concat!20644) (regex!7754 rBis!178))) b!4213005))

(assert (= (and b!4212590 ((_ is Star!12659) (regex!7754 rBis!178))) b!4213006))

(assert (= (and b!4212590 ((_ is Union!12659) (regex!7754 rBis!178))) b!4213007))

(declare-fun e!2615322 () Bool)

(assert (=> b!4212611 (= tp!1288208 e!2615322)))

(declare-fun b!4213009 () Bool)

(declare-fun tp!1288301 () Bool)

(declare-fun tp!1288298 () Bool)

(assert (=> b!4213009 (= e!2615322 (and tp!1288301 tp!1288298))))

(declare-fun b!4213011 () Bool)

(declare-fun tp!1288300 () Bool)

(declare-fun tp!1288299 () Bool)

(assert (=> b!4213011 (= e!2615322 (and tp!1288300 tp!1288299))))

(declare-fun b!4213008 () Bool)

(assert (=> b!4213008 (= e!2615322 tp_is_empty!22285)))

(declare-fun b!4213010 () Bool)

(declare-fun tp!1288302 () Bool)

(assert (=> b!4213010 (= e!2615322 tp!1288302)))

(assert (= (and b!4212611 ((_ is ElementMatch!12659) (regex!7754 (h!51739 rules!3967)))) b!4213008))

(assert (= (and b!4212611 ((_ is Concat!20644) (regex!7754 (h!51739 rules!3967)))) b!4213009))

(assert (= (and b!4212611 ((_ is Star!12659) (regex!7754 (h!51739 rules!3967)))) b!4213010))

(assert (= (and b!4212611 ((_ is Union!12659) (regex!7754 (h!51739 rules!3967)))) b!4213011))

(declare-fun e!2615323 () Bool)

(assert (=> b!4212589 (= tp!1288214 e!2615323)))

(declare-fun b!4213013 () Bool)

(declare-fun tp!1288306 () Bool)

(declare-fun tp!1288303 () Bool)

(assert (=> b!4213013 (= e!2615323 (and tp!1288306 tp!1288303))))

(declare-fun b!4213015 () Bool)

(declare-fun tp!1288305 () Bool)

(declare-fun tp!1288304 () Bool)

(assert (=> b!4213015 (= e!2615323 (and tp!1288305 tp!1288304))))

(declare-fun b!4213012 () Bool)

(assert (=> b!4213012 (= e!2615323 tp_is_empty!22285)))

(declare-fun b!4213014 () Bool)

(declare-fun tp!1288307 () Bool)

(assert (=> b!4213014 (= e!2615323 tp!1288307)))

(assert (= (and b!4212589 ((_ is ElementMatch!12659) (regex!7754 (rule!10872 tBis!41)))) b!4213012))

(assert (= (and b!4212589 ((_ is Concat!20644) (regex!7754 (rule!10872 tBis!41)))) b!4213013))

(assert (= (and b!4212589 ((_ is Star!12659) (regex!7754 (rule!10872 tBis!41)))) b!4213014))

(assert (= (and b!4212589 ((_ is Union!12659) (regex!7754 (rule!10872 tBis!41)))) b!4213015))

(declare-fun b!4213016 () Bool)

(declare-fun e!2615324 () Bool)

(declare-fun tp!1288308 () Bool)

(assert (=> b!4213016 (= e!2615324 (and tp_is_empty!22285 tp!1288308))))

(assert (=> b!4212591 (= tp!1288203 e!2615324)))

(assert (= (and b!4212591 ((_ is Cons!46317) (t!348120 suffix!1557))) b!4213016))

(declare-fun b!4213017 () Bool)

(declare-fun e!2615325 () Bool)

(declare-fun tp!1288309 () Bool)

(assert (=> b!4213017 (= e!2615325 (and tp_is_empty!22285 tp!1288309))))

(assert (=> b!4212612 (= tp!1288215 e!2615325)))

(assert (= (and b!4212612 ((_ is Cons!46317) (t!348120 input!3517))) b!4213017))

(declare-fun b!4213018 () Bool)

(declare-fun e!2615326 () Bool)

(declare-fun tp!1288310 () Bool)

(assert (=> b!4213018 (= e!2615326 (and tp_is_empty!22285 tp!1288310))))

(assert (=> b!4212598 (= tp!1288217 e!2615326)))

(assert (= (and b!4212598 ((_ is Cons!46317) (t!348120 suffixBis!41))) b!4213018))

(declare-fun e!2615327 () Bool)

(assert (=> b!4212587 (= tp!1288211 e!2615327)))

(declare-fun b!4213020 () Bool)

(declare-fun tp!1288314 () Bool)

(declare-fun tp!1288311 () Bool)

(assert (=> b!4213020 (= e!2615327 (and tp!1288314 tp!1288311))))

(declare-fun b!4213022 () Bool)

(declare-fun tp!1288313 () Bool)

(declare-fun tp!1288312 () Bool)

(assert (=> b!4213022 (= e!2615327 (and tp!1288313 tp!1288312))))

(declare-fun b!4213019 () Bool)

(assert (=> b!4213019 (= e!2615327 tp_is_empty!22285)))

(declare-fun b!4213021 () Bool)

(declare-fun tp!1288315 () Bool)

(assert (=> b!4213021 (= e!2615327 tp!1288315)))

(assert (= (and b!4212587 ((_ is ElementMatch!12659) (regex!7754 (rule!10872 t!8364)))) b!4213019))

(assert (= (and b!4212587 ((_ is Concat!20644) (regex!7754 (rule!10872 t!8364)))) b!4213020))

(assert (= (and b!4212587 ((_ is Star!12659) (regex!7754 (rule!10872 t!8364)))) b!4213021))

(assert (= (and b!4212587 ((_ is Union!12659) (regex!7754 (rule!10872 t!8364)))) b!4213022))

(declare-fun b!4213033 () Bool)

(declare-fun b_free!123375 () Bool)

(declare-fun b_next!124079 () Bool)

(assert (=> b!4213033 (= b_free!123375 (not b_next!124079))))

(declare-fun tp!1288326 () Bool)

(declare-fun b_and!331681 () Bool)

(assert (=> b!4213033 (= tp!1288326 b_and!331681)))

(declare-fun b_free!123377 () Bool)

(declare-fun b_next!124081 () Bool)

(assert (=> b!4213033 (= b_free!123377 (not b_next!124081))))

(declare-fun tb!252915 () Bool)

(declare-fun t!348160 () Bool)

(assert (=> (and b!4213033 (= (toChars!10333 (transformation!7754 (h!51739 (t!348122 rules!3967)))) (toChars!10333 (transformation!7754 (rule!10872 tBis!41)))) t!348160) tb!252915))

(declare-fun result!308260 () Bool)

(assert (= result!308260 result!308226))

(assert (=> d!1241435 t!348160))

(assert (=> b!4212858 t!348160))

(declare-fun tb!252917 () Bool)

(declare-fun t!348162 () Bool)

(assert (=> (and b!4213033 (= (toChars!10333 (transformation!7754 (h!51739 (t!348122 rules!3967)))) (toChars!10333 (transformation!7754 (rule!10872 t!8364)))) t!348162) tb!252917))

(declare-fun result!308262 () Bool)

(assert (= result!308262 result!308236))

(assert (=> b!4212864 t!348162))

(declare-fun tp!1288327 () Bool)

(declare-fun b_and!331683 () Bool)

(assert (=> b!4213033 (= tp!1288327 (and (=> t!348160 result!308260) (=> t!348162 result!308262) b_and!331683))))

(declare-fun e!2615339 () Bool)

(assert (=> b!4213033 (= e!2615339 (and tp!1288326 tp!1288327))))

(declare-fun e!2615336 () Bool)

(declare-fun b!4213032 () Bool)

(declare-fun tp!1288324 () Bool)

(assert (=> b!4213032 (= e!2615336 (and tp!1288324 (inv!60938 (tag!8618 (h!51739 (t!348122 rules!3967)))) (inv!60941 (transformation!7754 (h!51739 (t!348122 rules!3967)))) e!2615339))))

(declare-fun b!4213031 () Bool)

(declare-fun e!2615338 () Bool)

(declare-fun tp!1288325 () Bool)

(assert (=> b!4213031 (= e!2615338 (and e!2615336 tp!1288325))))

(assert (=> b!4212597 (= tp!1288205 e!2615338)))

(assert (= b!4213032 b!4213033))

(assert (= b!4213031 b!4213032))

(assert (= (and b!4212597 ((_ is Cons!46319) (t!348122 rules!3967))) b!4213031))

(declare-fun m!4801027 () Bool)

(assert (=> b!4213032 m!4801027))

(declare-fun m!4801029 () Bool)

(assert (=> b!4213032 m!4801029))

(declare-fun b!4213034 () Bool)

(declare-fun e!2615340 () Bool)

(declare-fun tp!1288328 () Bool)

(assert (=> b!4213034 (= e!2615340 (and tp_is_empty!22285 tp!1288328))))

(assert (=> b!4212599 (= tp!1288209 e!2615340)))

(assert (= (and b!4212599 ((_ is Cons!46317) (originalCharacters!8136 t!8364))) b!4213034))

(declare-fun b_lambda!124113 () Bool)

(assert (= b_lambda!124105 (or (and b!4212607 b_free!123365 (= (toChars!10333 (transformation!7754 (h!51739 rules!3967))) (toChars!10333 (transformation!7754 (rule!10872 t!8364))))) (and b!4212606 b_free!123369) (and b!4213033 b_free!123377 (= (toChars!10333 (transformation!7754 (h!51739 (t!348122 rules!3967)))) (toChars!10333 (transformation!7754 (rule!10872 t!8364))))) (and b!4212601 b_free!123361 (= (toChars!10333 (transformation!7754 rBis!178)) (toChars!10333 (transformation!7754 (rule!10872 t!8364))))) (and b!4212600 b_free!123357 (= (toChars!10333 (transformation!7754 (rule!10872 tBis!41))) (toChars!10333 (transformation!7754 (rule!10872 t!8364))))) b_lambda!124113)))

(declare-fun b_lambda!124115 () Bool)

(assert (= b_lambda!124099 (or (and b!4213033 b_free!123377 (= (toChars!10333 (transformation!7754 (h!51739 (t!348122 rules!3967)))) (toChars!10333 (transformation!7754 (rule!10872 tBis!41))))) (and b!4212600 b_free!123357) (and b!4212607 b_free!123365 (= (toChars!10333 (transformation!7754 (h!51739 rules!3967))) (toChars!10333 (transformation!7754 (rule!10872 tBis!41))))) (and b!4212601 b_free!123361 (= (toChars!10333 (transformation!7754 rBis!178)) (toChars!10333 (transformation!7754 (rule!10872 tBis!41))))) (and b!4212606 b_free!123369 (= (toChars!10333 (transformation!7754 (rule!10872 t!8364))) (toChars!10333 (transformation!7754 (rule!10872 tBis!41))))) b_lambda!124115)))

(declare-fun b_lambda!124117 () Bool)

(assert (= b_lambda!124103 (or (and b!4213033 b_free!123377 (= (toChars!10333 (transformation!7754 (h!51739 (t!348122 rules!3967)))) (toChars!10333 (transformation!7754 (rule!10872 tBis!41))))) (and b!4212600 b_free!123357) (and b!4212607 b_free!123365 (= (toChars!10333 (transformation!7754 (h!51739 rules!3967))) (toChars!10333 (transformation!7754 (rule!10872 tBis!41))))) (and b!4212601 b_free!123361 (= (toChars!10333 (transformation!7754 rBis!178)) (toChars!10333 (transformation!7754 (rule!10872 tBis!41))))) (and b!4212606 b_free!123369 (= (toChars!10333 (transformation!7754 (rule!10872 t!8364))) (toChars!10333 (transformation!7754 (rule!10872 tBis!41))))) b_lambda!124117)))

(check-sat (not b!4212811) (not b!4212744) (not b!4212985) (not b!4213018) (not b!4212767) (not d!1241521) (not b!4212939) b_and!331617 (not b!4212794) (not b_lambda!124115) (not b_next!124059) (not b!4213015) (not b!4212741) (not d!1241527) (not d!1241441) (not d!1241471) (not b_next!124061) (not bm!292984) (not b!4212796) (not b!4212715) (not b!4212971) (not b!4213031) (not d!1241461) (not tb!252895) (not b!4212793) (not b!4212992) (not b!4212980) (not b_next!124081) (not b!4213022) (not b!4212968) (not b!4212986) (not b!4212713) (not b!4212993) (not b!4212844) (not b!4212742) (not b!4212866) (not d!1241517) (not b_next!124079) (not b!4213010) (not b!4212712) (not b!4212945) (not b!4212972) (not b!4213017) (not d!1241509) (not b!4212858) (not b!4212815) (not b!4212843) (not b!4212792) (not b!4213005) (not d!1241465) (not b!4212798) (not b!4212790) (not b!4212800) (not d!1241413) (not b_next!124065) (not b!4212991) b_and!331673 (not b!4212946) (not d!1241435) (not b!4212718) b_and!331681 (not b!4212711) (not b!4213016) (not bm!292985) (not d!1241433) (not b!4212817) (not b!4212966) (not b!4212719) (not b!4213034) (not b!4212746) (not b!4212979) (not b!4212740) b_and!331675 (not b!4212730) (not b!4213020) (not b!4212725) (not b!4213007) tp_is_empty!22285 b_and!331613 (not b!4212982) (not d!1241469) (not b!4212859) (not b!4212877) (not b!4212816) (not b!4212791) (not b!4212984) (not b!4212864) (not d!1241483) (not b!4212969) (not d!1241451) (not b!4212981) (not b!4212977) (not b!4212967) (not b!4213021) b_and!331669 (not d!1241525) (not b!4212940) (not tb!252903) (not b!4212978) (not b!4212976) (not b!4213011) (not d!1241445) (not b_lambda!124117) (not b!4212745) (not b!4212973) (not b!4212799) (not d!1241489) b_and!331621 (not b!4212717) (not b!4212795) (not b!4212943) (not b_next!124063) b_and!331625 (not b!4212965) (not b_next!124071) (not b!4213013) (not b_next!124069) (not b!4213006) (not b!4213014) (not b!4213009) (not b_next!124067) (not d!1241431) (not b_lambda!124113) (not b!4212714) (not b!4212788) b_and!331683 (not b!4212865) (not b!4213032) (not d!1241501) (not b_next!124073) (not b!4212975) b_and!331671)
(check-sat b_and!331617 (not b_next!124059) (not b_next!124061) (not b_next!124081) (not b_next!124079) b_and!331681 b_and!331675 b_and!331613 b_and!331669 (not b_next!124069) (not b_next!124067) (not b_next!124065) b_and!331673 b_and!331621 (not b_next!124063) b_and!331625 (not b_next!124071) b_and!331683 (not b_next!124073) b_and!331671)
