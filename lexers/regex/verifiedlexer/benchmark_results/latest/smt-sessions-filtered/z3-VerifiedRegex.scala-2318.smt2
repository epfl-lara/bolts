; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114742 () Bool)

(assert start!114742)

(declare-fun b!1299793 () Bool)

(declare-fun b_free!30875 () Bool)

(declare-fun b_next!31579 () Bool)

(assert (=> b!1299793 (= b_free!30875 (not b_next!31579))))

(declare-fun tp!379289 () Bool)

(declare-fun b_and!86679 () Bool)

(assert (=> b!1299793 (= tp!379289 b_and!86679)))

(declare-fun b_free!30877 () Bool)

(declare-fun b_next!31581 () Bool)

(assert (=> b!1299793 (= b_free!30877 (not b_next!31581))))

(declare-fun tp!379287 () Bool)

(declare-fun b_and!86681 () Bool)

(assert (=> b!1299793 (= tp!379287 b_and!86681)))

(declare-fun b!1299792 () Bool)

(declare-fun b_free!30879 () Bool)

(declare-fun b_next!31583 () Bool)

(assert (=> b!1299792 (= b_free!30879 (not b_next!31583))))

(declare-fun tp!379280 () Bool)

(declare-fun b_and!86683 () Bool)

(assert (=> b!1299792 (= tp!379280 b_and!86683)))

(declare-fun b_free!30881 () Bool)

(declare-fun b_next!31585 () Bool)

(assert (=> b!1299792 (= b_free!30881 (not b_next!31585))))

(declare-fun tp!379281 () Bool)

(declare-fun b_and!86685 () Bool)

(assert (=> b!1299792 (= tp!379281 b_and!86685)))

(declare-fun b!1299781 () Bool)

(declare-fun b_free!30883 () Bool)

(declare-fun b_next!31587 () Bool)

(assert (=> b!1299781 (= b_free!30883 (not b_next!31587))))

(declare-fun tp!379285 () Bool)

(declare-fun b_and!86687 () Bool)

(assert (=> b!1299781 (= tp!379285 b_and!86687)))

(declare-fun b_free!30885 () Bool)

(declare-fun b_next!31589 () Bool)

(assert (=> b!1299781 (= b_free!30885 (not b_next!31589))))

(declare-fun tp!379279 () Bool)

(declare-fun b_and!86689 () Bool)

(assert (=> b!1299781 (= tp!379279 b_and!86689)))

(declare-fun b!1299773 () Bool)

(assert (=> b!1299773 true))

(assert (=> b!1299773 true))

(declare-fun b!1299768 () Bool)

(declare-fun res!582123 () Bool)

(declare-fun e!833356 () Bool)

(assert (=> b!1299768 (=> res!582123 e!833356)))

(declare-datatypes ((C!7408 0))(
  ( (C!7409 (val!4264 Int)) )
))
(declare-datatypes ((Regex!3559 0))(
  ( (ElementMatch!3559 (c!213933 C!7408)) (Concat!5894 (regOne!7630 Regex!3559) (regTwo!7630 Regex!3559)) (EmptyExpr!3559) (Star!3559 (reg!3888 Regex!3559)) (EmptyLang!3559) (Union!3559 (regOne!7631 Regex!3559) (regTwo!7631 Regex!3559)) )
))
(declare-fun lt!427438 () Regex!3559)

(declare-datatypes ((List!13082 0))(
  ( (Nil!13016) (Cons!13016 (h!18417 C!7408) (t!117591 List!13082)) )
))
(declare-fun lt!427434 () List!13082)

(declare-fun matchR!1561 (Regex!3559 List!13082) Bool)

(assert (=> b!1299768 (= res!582123 (not (matchR!1561 lt!427438 lt!427434)))))

(declare-fun b!1299769 () Bool)

(declare-fun e!833359 () Bool)

(declare-fun e!833355 () Bool)

(assert (=> b!1299769 (= e!833359 e!833355)))

(declare-fun res!582124 () Bool)

(assert (=> b!1299769 (=> (not res!582124) (not e!833355))))

(declare-fun lt!427432 () List!13082)

(declare-fun prefixMatch!72 (Regex!3559 List!13082) Bool)

(assert (=> b!1299769 (= res!582124 (prefixMatch!72 lt!427438 lt!427432))))

(declare-datatypes ((LexerInterface!1940 0))(
  ( (LexerInterfaceExt!1937 (__x!8499 Int)) (Lexer!1938) )
))
(declare-fun thiss!19762 () LexerInterface!1940)

(declare-datatypes ((List!13083 0))(
  ( (Nil!13017) (Cons!13017 (h!18418 (_ BitVec 16)) (t!117592 List!13083)) )
))
(declare-datatypes ((TokenValue!2335 0))(
  ( (FloatLiteralValue!4670 (text!16790 List!13083)) (TokenValueExt!2334 (__x!8500 Int)) (Broken!11675 (value!73589 List!13083)) (Object!2400) (End!2335) (Def!2335) (Underscore!2335) (Match!2335) (Else!2335) (Error!2335) (Case!2335) (If!2335) (Extends!2335) (Abstract!2335) (Class!2335) (Val!2335) (DelimiterValue!4670 (del!2395 List!13083)) (KeywordValue!2341 (value!73590 List!13083)) (CommentValue!4670 (value!73591 List!13083)) (WhitespaceValue!4670 (value!73592 List!13083)) (IndentationValue!2335 (value!73593 List!13083)) (String!15910) (Int32!2335) (Broken!11676 (value!73594 List!13083)) (Boolean!2336) (Unit!19151) (OperatorValue!2338 (op!2395 List!13083)) (IdentifierValue!4670 (value!73595 List!13083)) (IdentifierValue!4671 (value!73596 List!13083)) (WhitespaceValue!4671 (value!73597 List!13083)) (True!4670) (False!4670) (Broken!11677 (value!73598 List!13083)) (Broken!11678 (value!73599 List!13083)) (True!4671) (RightBrace!2335) (RightBracket!2335) (Colon!2335) (Null!2335) (Comma!2335) (LeftBracket!2335) (False!4671) (LeftBrace!2335) (ImaginaryLiteralValue!2335 (text!16791 List!13083)) (StringLiteralValue!7005 (value!73600 List!13083)) (EOFValue!2335 (value!73601 List!13083)) (IdentValue!2335 (value!73602 List!13083)) (DelimiterValue!4671 (value!73603 List!13083)) (DedentValue!2335 (value!73604 List!13083)) (NewLineValue!2335 (value!73605 List!13083)) (IntegerValue!7005 (value!73606 (_ BitVec 32)) (text!16792 List!13083)) (IntegerValue!7006 (value!73607 Int) (text!16793 List!13083)) (Times!2335) (Or!2335) (Equal!2335) (Minus!2335) (Broken!11679 (value!73608 List!13083)) (And!2335) (Div!2335) (LessEqual!2335) (Mod!2335) (Concat!5895) (Not!2335) (Plus!2335) (SpaceValue!2335 (value!73609 List!13083)) (IntegerValue!7007 (value!73610 Int) (text!16794 List!13083)) (StringLiteralValue!7006 (text!16795 List!13083)) (FloatLiteralValue!4671 (text!16796 List!13083)) (BytesLiteralValue!2335 (value!73611 List!13083)) (CommentValue!4671 (value!73612 List!13083)) (StringLiteralValue!7007 (value!73613 List!13083)) (ErrorTokenValue!2335 (msg!2396 List!13083)) )
))
(declare-datatypes ((IArray!8555 0))(
  ( (IArray!8556 (innerList!4335 List!13082)) )
))
(declare-datatypes ((Conc!4275 0))(
  ( (Node!4275 (left!11195 Conc!4275) (right!11525 Conc!4275) (csize!8780 Int) (cheight!4486 Int)) (Leaf!6594 (xs!6990 IArray!8555) (csize!8781 Int)) (Empty!4275) )
))
(declare-datatypes ((BalanceConc!8490 0))(
  ( (BalanceConc!8491 (c!213934 Conc!4275)) )
))
(declare-datatypes ((String!15911 0))(
  ( (String!15912 (value!73614 String)) )
))
(declare-datatypes ((TokenValueInjection!4330 0))(
  ( (TokenValueInjection!4331 (toValue!3456 Int) (toChars!3315 Int)) )
))
(declare-datatypes ((Rule!4290 0))(
  ( (Rule!4291 (regex!2245 Regex!3559) (tag!2507 String!15911) (isSeparator!2245 Bool) (transformation!2245 TokenValueInjection!4330)) )
))
(declare-datatypes ((List!13084 0))(
  ( (Nil!13018) (Cons!13018 (h!18419 Rule!4290) (t!117593 List!13084)) )
))
(declare-fun rules!2550 () List!13084)

(declare-fun rulesRegex!130 (LexerInterface!1940 List!13084) Regex!3559)

(assert (=> b!1299769 (= lt!427438 (rulesRegex!130 thiss!19762 rules!2550))))

(declare-fun lt!427437 () List!13082)

(declare-fun lt!427431 () C!7408)

(declare-fun ++!3312 (List!13082 List!13082) List!13082)

(assert (=> b!1299769 (= lt!427432 (++!3312 lt!427437 (Cons!13016 lt!427431 Nil!13016)))))

(declare-fun lt!427435 () BalanceConc!8490)

(declare-fun apply!2899 (BalanceConc!8490 Int) C!7408)

(assert (=> b!1299769 (= lt!427431 (apply!2899 lt!427435 0))))

(declare-fun lt!427436 () BalanceConc!8490)

(declare-fun list!4879 (BalanceConc!8490) List!13082)

(assert (=> b!1299769 (= lt!427437 (list!4879 lt!427436))))

(declare-datatypes ((Token!4152 0))(
  ( (Token!4153 (value!73615 TokenValue!2335) (rule!3984 Rule!4290) (size!10642 Int) (originalCharacters!3107 List!13082)) )
))
(declare-fun t1!34 () Token!4152)

(declare-fun charsOf!1217 (Token!4152) BalanceConc!8490)

(assert (=> b!1299769 (= lt!427436 (charsOf!1217 t1!34))))

(declare-fun b!1299770 () Bool)

(declare-fun res!582136 () Bool)

(declare-fun e!833350 () Bool)

(assert (=> b!1299770 (=> (not res!582136) (not e!833350))))

(declare-fun rulesInvariant!1810 (LexerInterface!1940 List!13084) Bool)

(assert (=> b!1299770 (= res!582136 (rulesInvariant!1810 thiss!19762 rules!2550))))

(declare-fun b!1299771 () Bool)

(declare-fun res!582133 () Bool)

(assert (=> b!1299771 (=> (not res!582133) (not e!833350))))

(declare-fun t2!34 () Token!4152)

(declare-fun rulesProduceIndividualToken!909 (LexerInterface!1940 List!13084 Token!4152) Bool)

(assert (=> b!1299771 (= res!582133 (rulesProduceIndividualToken!909 thiss!19762 rules!2550 t2!34))))

(declare-fun e!833360 () Bool)

(declare-fun b!1299772 () Bool)

(declare-fun e!833364 () Bool)

(declare-fun tp!379286 () Bool)

(declare-fun inv!17445 (String!15911) Bool)

(declare-fun inv!17448 (TokenValueInjection!4330) Bool)

(assert (=> b!1299772 (= e!833360 (and tp!379286 (inv!17445 (tag!2507 (rule!3984 t1!34))) (inv!17448 (transformation!2245 (rule!3984 t1!34))) e!833364))))

(declare-fun e!833361 () Bool)

(assert (=> b!1299773 (= e!833355 (not e!833361))))

(declare-fun res!582130 () Bool)

(assert (=> b!1299773 (=> res!582130 e!833361)))

(declare-fun lambda!51147 () Int)

(declare-fun Exists!717 (Int) Bool)

(assert (=> b!1299773 (= res!582130 (not (Exists!717 lambda!51147)))))

(assert (=> b!1299773 (Exists!717 lambda!51147)))

(declare-datatypes ((Unit!19152 0))(
  ( (Unit!19153) )
))
(declare-fun lt!427430 () Unit!19152)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!35 (Regex!3559 List!13082) Unit!19152)

(assert (=> b!1299773 (= lt!427430 (lemmaPrefixMatchThenExistsStringThatMatches!35 lt!427438 lt!427432))))

(declare-fun b!1299774 () Bool)

(declare-fun rulesValidInductive!710 (LexerInterface!1940 List!13084) Bool)

(assert (=> b!1299774 (= e!833356 (rulesValidInductive!710 thiss!19762 rules!2550))))

(declare-fun b!1299775 () Bool)

(declare-fun e!833363 () Bool)

(declare-fun e!833351 () Bool)

(declare-fun tp!379288 () Bool)

(assert (=> b!1299775 (= e!833363 (and e!833351 tp!379288))))

(declare-fun b!1299776 () Bool)

(declare-fun res!582127 () Bool)

(assert (=> b!1299776 (=> (not res!582127) (not e!833359))))

(declare-fun sepAndNonSepRulesDisjointChars!618 (List!13084 List!13084) Bool)

(assert (=> b!1299776 (= res!582127 (sepAndNonSepRulesDisjointChars!618 rules!2550 rules!2550))))

(declare-fun b!1299778 () Bool)

(declare-fun e!833357 () Bool)

(declare-fun tp!379284 () Bool)

(assert (=> b!1299778 (= e!833351 (and tp!379284 (inv!17445 (tag!2507 (h!18419 rules!2550))) (inv!17448 (transformation!2245 (h!18419 rules!2550))) e!833357))))

(declare-fun b!1299779 () Bool)

(assert (=> b!1299779 (= e!833350 e!833359)))

(declare-fun res!582126 () Bool)

(assert (=> b!1299779 (=> (not res!582126) (not e!833359))))

(declare-fun size!10643 (BalanceConc!8490) Int)

(assert (=> b!1299779 (= res!582126 (> (size!10643 lt!427435) 0))))

(assert (=> b!1299779 (= lt!427435 (charsOf!1217 t2!34))))

(declare-fun e!833354 () Bool)

(declare-fun b!1299780 () Bool)

(declare-fun e!833365 () Bool)

(declare-fun tp!379283 () Bool)

(assert (=> b!1299780 (= e!833354 (and tp!379283 (inv!17445 (tag!2507 (rule!3984 t2!34))) (inv!17448 (transformation!2245 (rule!3984 t2!34))) e!833365))))

(assert (=> b!1299781 (= e!833357 (and tp!379285 tp!379279))))

(declare-fun b!1299782 () Bool)

(declare-fun res!582132 () Bool)

(assert (=> b!1299782 (=> (not res!582132) (not e!833350))))

(declare-fun isEmpty!7733 (List!13084) Bool)

(assert (=> b!1299782 (= res!582132 (not (isEmpty!7733 rules!2550)))))

(declare-fun b!1299783 () Bool)

(declare-fun res!582137 () Bool)

(assert (=> b!1299783 (=> res!582137 e!833356)))

(declare-fun contains!2183 (List!13082 C!7408) Bool)

(assert (=> b!1299783 (= res!582137 (not (contains!2183 lt!427434 lt!427431)))))

(declare-fun b!1299784 () Bool)

(declare-fun res!582139 () Bool)

(assert (=> b!1299784 (=> res!582139 e!833356)))

(declare-fun lt!427433 () C!7408)

(assert (=> b!1299784 (= res!582139 (not (contains!2183 lt!427434 lt!427433)))))

(declare-fun b!1299785 () Bool)

(declare-fun e!833362 () Bool)

(assert (=> b!1299785 (= e!833362 e!833356)))

(declare-fun res!582134 () Bool)

(assert (=> b!1299785 (=> res!582134 e!833356)))

(assert (=> b!1299785 (= res!582134 (not (contains!2183 lt!427432 lt!427433)))))

(assert (=> b!1299785 (= lt!427433 (apply!2899 lt!427436 0))))

(declare-fun b!1299786 () Bool)

(declare-fun res!582129 () Bool)

(assert (=> b!1299786 (=> (not res!582129) (not e!833350))))

(assert (=> b!1299786 (= res!582129 (rulesProduceIndividualToken!909 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1299787 () Bool)

(declare-fun res!582125 () Bool)

(assert (=> b!1299787 (=> (not res!582125) (not e!833350))))

(assert (=> b!1299787 (= res!582125 (not (= (isSeparator!2245 (rule!3984 t1!34)) (isSeparator!2245 (rule!3984 t2!34)))))))

(declare-fun b!1299788 () Bool)

(declare-fun tp!379290 () Bool)

(declare-fun e!833366 () Bool)

(declare-fun inv!21 (TokenValue!2335) Bool)

(assert (=> b!1299788 (= e!833366 (and (inv!21 (value!73615 t2!34)) e!833354 tp!379290))))

(declare-fun b!1299789 () Bool)

(declare-fun res!582128 () Bool)

(assert (=> b!1299789 (=> res!582128 e!833356)))

(assert (=> b!1299789 (= res!582128 (not (contains!2183 lt!427432 lt!427431)))))

(declare-fun b!1299790 () Bool)

(declare-fun res!582131 () Bool)

(assert (=> b!1299790 (=> (not res!582131) (not e!833359))))

(declare-fun separableTokensPredicate!223 (LexerInterface!1940 Token!4152 Token!4152 List!13084) Bool)

(assert (=> b!1299790 (= res!582131 (not (separableTokensPredicate!223 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1299791 () Bool)

(assert (=> b!1299791 (= e!833361 e!833362)))

(declare-fun res!582138 () Bool)

(assert (=> b!1299791 (=> res!582138 e!833362)))

(declare-fun getSuffix!415 (List!13082 List!13082) List!13082)

(assert (=> b!1299791 (= res!582138 (not (= lt!427434 (++!3312 lt!427432 (getSuffix!415 lt!427434 lt!427432)))))))

(declare-fun pickWitness!22 (Int) List!13082)

(assert (=> b!1299791 (= lt!427434 (pickWitness!22 lambda!51147))))

(declare-fun e!833349 () Bool)

(declare-fun b!1299777 () Bool)

(declare-fun tp!379282 () Bool)

(assert (=> b!1299777 (= e!833349 (and (inv!21 (value!73615 t1!34)) e!833360 tp!379282))))

(declare-fun res!582135 () Bool)

(assert (=> start!114742 (=> (not res!582135) (not e!833350))))

(get-info :version)

(assert (=> start!114742 (= res!582135 ((_ is Lexer!1938) thiss!19762))))

(assert (=> start!114742 e!833350))

(assert (=> start!114742 true))

(assert (=> start!114742 e!833363))

(declare-fun inv!17449 (Token!4152) Bool)

(assert (=> start!114742 (and (inv!17449 t1!34) e!833349)))

(assert (=> start!114742 (and (inv!17449 t2!34) e!833366)))

(assert (=> b!1299792 (= e!833364 (and tp!379280 tp!379281))))

(assert (=> b!1299793 (= e!833365 (and tp!379289 tp!379287))))

(assert (= (and start!114742 res!582135) b!1299782))

(assert (= (and b!1299782 res!582132) b!1299770))

(assert (= (and b!1299770 res!582136) b!1299786))

(assert (= (and b!1299786 res!582129) b!1299771))

(assert (= (and b!1299771 res!582133) b!1299787))

(assert (= (and b!1299787 res!582125) b!1299779))

(assert (= (and b!1299779 res!582126) b!1299776))

(assert (= (and b!1299776 res!582127) b!1299790))

(assert (= (and b!1299790 res!582131) b!1299769))

(assert (= (and b!1299769 res!582124) b!1299773))

(assert (= (and b!1299773 (not res!582130)) b!1299791))

(assert (= (and b!1299791 (not res!582138)) b!1299785))

(assert (= (and b!1299785 (not res!582134)) b!1299784))

(assert (= (and b!1299784 (not res!582139)) b!1299789))

(assert (= (and b!1299789 (not res!582128)) b!1299783))

(assert (= (and b!1299783 (not res!582137)) b!1299768))

(assert (= (and b!1299768 (not res!582123)) b!1299774))

(assert (= b!1299778 b!1299781))

(assert (= b!1299775 b!1299778))

(assert (= (and start!114742 ((_ is Cons!13018) rules!2550)) b!1299775))

(assert (= b!1299772 b!1299792))

(assert (= b!1299777 b!1299772))

(assert (= start!114742 b!1299777))

(assert (= b!1299780 b!1299793))

(assert (= b!1299788 b!1299780))

(assert (= start!114742 b!1299788))

(declare-fun m!1451355 () Bool)

(assert (=> b!1299788 m!1451355))

(declare-fun m!1451357 () Bool)

(assert (=> b!1299774 m!1451357))

(declare-fun m!1451359 () Bool)

(assert (=> b!1299790 m!1451359))

(declare-fun m!1451361 () Bool)

(assert (=> b!1299783 m!1451361))

(declare-fun m!1451363 () Bool)

(assert (=> b!1299786 m!1451363))

(declare-fun m!1451365 () Bool)

(assert (=> b!1299768 m!1451365))

(declare-fun m!1451367 () Bool)

(assert (=> b!1299782 m!1451367))

(declare-fun m!1451369 () Bool)

(assert (=> b!1299778 m!1451369))

(declare-fun m!1451371 () Bool)

(assert (=> b!1299778 m!1451371))

(declare-fun m!1451373 () Bool)

(assert (=> b!1299771 m!1451373))

(declare-fun m!1451375 () Bool)

(assert (=> b!1299770 m!1451375))

(declare-fun m!1451377 () Bool)

(assert (=> b!1299791 m!1451377))

(assert (=> b!1299791 m!1451377))

(declare-fun m!1451379 () Bool)

(assert (=> b!1299791 m!1451379))

(declare-fun m!1451381 () Bool)

(assert (=> b!1299791 m!1451381))

(declare-fun m!1451383 () Bool)

(assert (=> b!1299777 m!1451383))

(declare-fun m!1451385 () Bool)

(assert (=> b!1299784 m!1451385))

(declare-fun m!1451387 () Bool)

(assert (=> b!1299772 m!1451387))

(declare-fun m!1451389 () Bool)

(assert (=> b!1299772 m!1451389))

(declare-fun m!1451391 () Bool)

(assert (=> start!114742 m!1451391))

(declare-fun m!1451393 () Bool)

(assert (=> start!114742 m!1451393))

(declare-fun m!1451395 () Bool)

(assert (=> b!1299776 m!1451395))

(declare-fun m!1451397 () Bool)

(assert (=> b!1299773 m!1451397))

(assert (=> b!1299773 m!1451397))

(declare-fun m!1451399 () Bool)

(assert (=> b!1299773 m!1451399))

(declare-fun m!1451401 () Bool)

(assert (=> b!1299785 m!1451401))

(declare-fun m!1451403 () Bool)

(assert (=> b!1299785 m!1451403))

(declare-fun m!1451405 () Bool)

(assert (=> b!1299780 m!1451405))

(declare-fun m!1451407 () Bool)

(assert (=> b!1299780 m!1451407))

(declare-fun m!1451409 () Bool)

(assert (=> b!1299769 m!1451409))

(declare-fun m!1451411 () Bool)

(assert (=> b!1299769 m!1451411))

(declare-fun m!1451413 () Bool)

(assert (=> b!1299769 m!1451413))

(declare-fun m!1451415 () Bool)

(assert (=> b!1299769 m!1451415))

(declare-fun m!1451417 () Bool)

(assert (=> b!1299769 m!1451417))

(declare-fun m!1451419 () Bool)

(assert (=> b!1299769 m!1451419))

(declare-fun m!1451421 () Bool)

(assert (=> b!1299779 m!1451421))

(declare-fun m!1451423 () Bool)

(assert (=> b!1299779 m!1451423))

(declare-fun m!1451425 () Bool)

(assert (=> b!1299789 m!1451425))

(check-sat (not b!1299784) (not b!1299772) (not b!1299786) (not b!1299788) (not start!114742) (not b!1299775) b_and!86687 (not b!1299771) (not b!1299780) (not b!1299785) (not b!1299790) (not b_next!31579) (not b!1299770) (not b_next!31589) (not b_next!31585) (not b!1299773) b_and!86683 (not b!1299774) (not b!1299789) (not b!1299768) (not b!1299769) (not b_next!31587) (not b!1299779) (not b!1299778) (not b!1299777) (not b!1299782) b_and!86685 (not b_next!31581) b_and!86689 b_and!86679 b_and!86681 (not b!1299776) (not b!1299783) (not b_next!31583) (not b!1299791))
(check-sat b_and!86687 (not b_next!31587) (not b_next!31579) (not b_next!31589) (not b_next!31585) b_and!86683 b_and!86681 (not b_next!31583) b_and!86685 (not b_next!31581) b_and!86689 b_and!86679)
(get-model)

(declare-fun d!366941 () Bool)

(declare-fun lt!427487 () Bool)

(declare-fun e!833466 () Bool)

(assert (=> d!366941 (= lt!427487 e!833466)))

(declare-fun res!582245 () Bool)

(assert (=> d!366941 (=> (not res!582245) (not e!833466))))

(declare-datatypes ((List!13087 0))(
  ( (Nil!13021) (Cons!13021 (h!18422 Token!4152) (t!117630 List!13087)) )
))
(declare-datatypes ((IArray!8559 0))(
  ( (IArray!8560 (innerList!4337 List!13087)) )
))
(declare-datatypes ((Conc!4277 0))(
  ( (Node!4277 (left!11197 Conc!4277) (right!11527 Conc!4277) (csize!8784 Int) (cheight!4488 Int)) (Leaf!6596 (xs!6992 IArray!8559) (csize!8785 Int)) (Empty!4277) )
))
(declare-datatypes ((BalanceConc!8494 0))(
  ( (BalanceConc!8495 (c!213990 Conc!4277)) )
))
(declare-fun list!4882 (BalanceConc!8494) List!13087)

(declare-datatypes ((tuple2!12714 0))(
  ( (tuple2!12715 (_1!7243 BalanceConc!8494) (_2!7243 BalanceConc!8490)) )
))
(declare-fun lex!795 (LexerInterface!1940 List!13084 BalanceConc!8490) tuple2!12714)

(declare-fun print!732 (LexerInterface!1940 BalanceConc!8494) BalanceConc!8490)

(declare-fun singletonSeq!829 (Token!4152) BalanceConc!8494)

(assert (=> d!366941 (= res!582245 (= (list!4882 (_1!7243 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t2!34))))) (list!4882 (singletonSeq!829 t2!34))))))

(declare-fun e!833465 () Bool)

(assert (=> d!366941 (= lt!427487 e!833465)))

(declare-fun res!582243 () Bool)

(assert (=> d!366941 (=> (not res!582243) (not e!833465))))

(declare-fun lt!427486 () tuple2!12714)

(declare-fun size!10647 (BalanceConc!8494) Int)

(assert (=> d!366941 (= res!582243 (= (size!10647 (_1!7243 lt!427486)) 1))))

(assert (=> d!366941 (= lt!427486 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t2!34))))))

(assert (=> d!366941 (not (isEmpty!7733 rules!2550))))

(assert (=> d!366941 (= (rulesProduceIndividualToken!909 thiss!19762 rules!2550 t2!34) lt!427487)))

(declare-fun b!1299951 () Bool)

(declare-fun res!582244 () Bool)

(assert (=> b!1299951 (=> (not res!582244) (not e!833465))))

(declare-fun apply!2903 (BalanceConc!8494 Int) Token!4152)

(assert (=> b!1299951 (= res!582244 (= (apply!2903 (_1!7243 lt!427486) 0) t2!34))))

(declare-fun b!1299952 () Bool)

(declare-fun isEmpty!7736 (BalanceConc!8490) Bool)

(assert (=> b!1299952 (= e!833465 (isEmpty!7736 (_2!7243 lt!427486)))))

(declare-fun b!1299953 () Bool)

(assert (=> b!1299953 (= e!833466 (isEmpty!7736 (_2!7243 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t2!34))))))))

(assert (= (and d!366941 res!582243) b!1299951))

(assert (= (and b!1299951 res!582244) b!1299952))

(assert (= (and d!366941 res!582245) b!1299953))

(declare-fun m!1451637 () Bool)

(assert (=> d!366941 m!1451637))

(declare-fun m!1451639 () Bool)

(assert (=> d!366941 m!1451639))

(declare-fun m!1451641 () Bool)

(assert (=> d!366941 m!1451641))

(declare-fun m!1451643 () Bool)

(assert (=> d!366941 m!1451643))

(assert (=> d!366941 m!1451641))

(declare-fun m!1451645 () Bool)

(assert (=> d!366941 m!1451645))

(assert (=> d!366941 m!1451641))

(assert (=> d!366941 m!1451367))

(assert (=> d!366941 m!1451645))

(declare-fun m!1451647 () Bool)

(assert (=> d!366941 m!1451647))

(declare-fun m!1451649 () Bool)

(assert (=> b!1299951 m!1451649))

(declare-fun m!1451651 () Bool)

(assert (=> b!1299952 m!1451651))

(assert (=> b!1299953 m!1451641))

(assert (=> b!1299953 m!1451641))

(assert (=> b!1299953 m!1451645))

(assert (=> b!1299953 m!1451645))

(assert (=> b!1299953 m!1451647))

(declare-fun m!1451653 () Bool)

(assert (=> b!1299953 m!1451653))

(assert (=> b!1299771 d!366941))

(declare-fun d!367007 () Bool)

(declare-fun res!582253 () Bool)

(declare-fun e!833482 () Bool)

(assert (=> d!367007 (=> (not res!582253) (not e!833482))))

(declare-fun rulesValid!825 (LexerInterface!1940 List!13084) Bool)

(assert (=> d!367007 (= res!582253 (rulesValid!825 thiss!19762 rules!2550))))

(assert (=> d!367007 (= (rulesInvariant!1810 thiss!19762 rules!2550) e!833482)))

(declare-fun b!1299987 () Bool)

(declare-datatypes ((List!13089 0))(
  ( (Nil!13023) (Cons!13023 (h!18424 String!15911) (t!117632 List!13089)) )
))
(declare-fun noDuplicateTag!825 (LexerInterface!1940 List!13084 List!13089) Bool)

(assert (=> b!1299987 (= e!833482 (noDuplicateTag!825 thiss!19762 rules!2550 Nil!13023))))

(assert (= (and d!367007 res!582253) b!1299987))

(declare-fun m!1451669 () Bool)

(assert (=> d!367007 m!1451669))

(declare-fun m!1451671 () Bool)

(assert (=> b!1299987 m!1451671))

(assert (=> b!1299770 d!367007))

(declare-fun d!367015 () Bool)

(declare-fun lt!427494 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1841 (List!13082) (InoxSet C!7408))

(assert (=> d!367015 (= lt!427494 (select (content!1841 lt!427434) lt!427431))))

(declare-fun e!833504 () Bool)

(assert (=> d!367015 (= lt!427494 e!833504)))

(declare-fun res!582259 () Bool)

(assert (=> d!367015 (=> (not res!582259) (not e!833504))))

(assert (=> d!367015 (= res!582259 ((_ is Cons!13016) lt!427434))))

(assert (=> d!367015 (= (contains!2183 lt!427434 lt!427431) lt!427494)))

(declare-fun b!1300010 () Bool)

(declare-fun e!833503 () Bool)

(assert (=> b!1300010 (= e!833504 e!833503)))

(declare-fun res!582260 () Bool)

(assert (=> b!1300010 (=> res!582260 e!833503)))

(assert (=> b!1300010 (= res!582260 (= (h!18417 lt!427434) lt!427431))))

(declare-fun b!1300011 () Bool)

(assert (=> b!1300011 (= e!833503 (contains!2183 (t!117591 lt!427434) lt!427431))))

(assert (= (and d!367015 res!582259) b!1300010))

(assert (= (and b!1300010 (not res!582260)) b!1300011))

(declare-fun m!1451681 () Bool)

(assert (=> d!367015 m!1451681))

(declare-fun m!1451683 () Bool)

(assert (=> d!367015 m!1451683))

(declare-fun m!1451685 () Bool)

(assert (=> b!1300011 m!1451685))

(assert (=> b!1299783 d!367015))

(declare-fun d!367019 () Bool)

(assert (=> d!367019 (= (inv!17445 (tag!2507 (rule!3984 t1!34))) (= (mod (str.len (value!73614 (tag!2507 (rule!3984 t1!34)))) 2) 0))))

(assert (=> b!1299772 d!367019))

(declare-fun d!367021 () Bool)

(declare-fun res!582263 () Bool)

(declare-fun e!833507 () Bool)

(assert (=> d!367021 (=> (not res!582263) (not e!833507))))

(declare-fun semiInverseModEq!856 (Int Int) Bool)

(assert (=> d!367021 (= res!582263 (semiInverseModEq!856 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (toValue!3456 (transformation!2245 (rule!3984 t1!34)))))))

(assert (=> d!367021 (= (inv!17448 (transformation!2245 (rule!3984 t1!34))) e!833507)))

(declare-fun b!1300014 () Bool)

(declare-fun equivClasses!815 (Int Int) Bool)

(assert (=> b!1300014 (= e!833507 (equivClasses!815 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (toValue!3456 (transformation!2245 (rule!3984 t1!34)))))))

(assert (= (and d!367021 res!582263) b!1300014))

(declare-fun m!1451687 () Bool)

(assert (=> d!367021 m!1451687))

(declare-fun m!1451689 () Bool)

(assert (=> b!1300014 m!1451689))

(assert (=> b!1299772 d!367021))

(declare-fun d!367023 () Bool)

(assert (=> d!367023 (= (isEmpty!7733 rules!2550) ((_ is Nil!13018) rules!2550))))

(assert (=> b!1299782 d!367023))

(declare-fun d!367025 () Bool)

(declare-fun lt!427495 () Bool)

(assert (=> d!367025 (= lt!427495 (select (content!1841 lt!427434) lt!427433))))

(declare-fun e!833509 () Bool)

(assert (=> d!367025 (= lt!427495 e!833509)))

(declare-fun res!582264 () Bool)

(assert (=> d!367025 (=> (not res!582264) (not e!833509))))

(assert (=> d!367025 (= res!582264 ((_ is Cons!13016) lt!427434))))

(assert (=> d!367025 (= (contains!2183 lt!427434 lt!427433) lt!427495)))

(declare-fun b!1300015 () Bool)

(declare-fun e!833508 () Bool)

(assert (=> b!1300015 (= e!833509 e!833508)))

(declare-fun res!582265 () Bool)

(assert (=> b!1300015 (=> res!582265 e!833508)))

(assert (=> b!1300015 (= res!582265 (= (h!18417 lt!427434) lt!427433))))

(declare-fun b!1300016 () Bool)

(assert (=> b!1300016 (= e!833508 (contains!2183 (t!117591 lt!427434) lt!427433))))

(assert (= (and d!367025 res!582264) b!1300015))

(assert (= (and b!1300015 (not res!582265)) b!1300016))

(assert (=> d!367025 m!1451681))

(declare-fun m!1451691 () Bool)

(assert (=> d!367025 m!1451691))

(declare-fun m!1451693 () Bool)

(assert (=> b!1300016 m!1451693))

(assert (=> b!1299784 d!367025))

(declare-fun d!367027 () Bool)

(declare-fun choose!7978 (Int) Bool)

(assert (=> d!367027 (= (Exists!717 lambda!51147) (choose!7978 lambda!51147))))

(declare-fun bs!329178 () Bool)

(assert (= bs!329178 d!367027))

(declare-fun m!1451695 () Bool)

(assert (=> bs!329178 m!1451695))

(assert (=> b!1299773 d!367027))

(declare-fun bs!329179 () Bool)

(declare-fun d!367029 () Bool)

(assert (= bs!329179 (and d!367029 b!1299773)))

(declare-fun lambda!51159 () Int)

(assert (=> bs!329179 (= lambda!51159 lambda!51147)))

(assert (=> d!367029 true))

(assert (=> d!367029 true))

(assert (=> d!367029 (Exists!717 lambda!51159)))

(declare-fun lt!427498 () Unit!19152)

(declare-fun choose!7979 (Regex!3559 List!13082) Unit!19152)

(assert (=> d!367029 (= lt!427498 (choose!7979 lt!427438 lt!427432))))

(declare-fun validRegex!1537 (Regex!3559) Bool)

(assert (=> d!367029 (validRegex!1537 lt!427438)))

(assert (=> d!367029 (= (lemmaPrefixMatchThenExistsStringThatMatches!35 lt!427438 lt!427432) lt!427498)))

(declare-fun bs!329180 () Bool)

(assert (= bs!329180 d!367029))

(declare-fun m!1451697 () Bool)

(assert (=> bs!329180 m!1451697))

(declare-fun m!1451699 () Bool)

(assert (=> bs!329180 m!1451699))

(declare-fun m!1451701 () Bool)

(assert (=> bs!329180 m!1451701))

(assert (=> b!1299773 d!367029))

(declare-fun d!367031 () Bool)

(declare-fun lt!427499 () Bool)

(assert (=> d!367031 (= lt!427499 (select (content!1841 lt!427432) lt!427433))))

(declare-fun e!833513 () Bool)

(assert (=> d!367031 (= lt!427499 e!833513)))

(declare-fun res!582268 () Bool)

(assert (=> d!367031 (=> (not res!582268) (not e!833513))))

(assert (=> d!367031 (= res!582268 ((_ is Cons!13016) lt!427432))))

(assert (=> d!367031 (= (contains!2183 lt!427432 lt!427433) lt!427499)))

(declare-fun b!1300019 () Bool)

(declare-fun e!833512 () Bool)

(assert (=> b!1300019 (= e!833513 e!833512)))

(declare-fun res!582269 () Bool)

(assert (=> b!1300019 (=> res!582269 e!833512)))

(assert (=> b!1300019 (= res!582269 (= (h!18417 lt!427432) lt!427433))))

(declare-fun b!1300020 () Bool)

(assert (=> b!1300020 (= e!833512 (contains!2183 (t!117591 lt!427432) lt!427433))))

(assert (= (and d!367031 res!582268) b!1300019))

(assert (= (and b!1300019 (not res!582269)) b!1300020))

(declare-fun m!1451703 () Bool)

(assert (=> d!367031 m!1451703))

(declare-fun m!1451705 () Bool)

(assert (=> d!367031 m!1451705))

(declare-fun m!1451707 () Bool)

(assert (=> b!1300020 m!1451707))

(assert (=> b!1299785 d!367031))

(declare-fun d!367033 () Bool)

(declare-fun lt!427502 () C!7408)

(declare-fun apply!2904 (List!13082 Int) C!7408)

(assert (=> d!367033 (= lt!427502 (apply!2904 (list!4879 lt!427436) 0))))

(declare-fun apply!2905 (Conc!4275 Int) C!7408)

(assert (=> d!367033 (= lt!427502 (apply!2905 (c!213934 lt!427436) 0))))

(declare-fun e!833516 () Bool)

(assert (=> d!367033 e!833516))

(declare-fun res!582272 () Bool)

(assert (=> d!367033 (=> (not res!582272) (not e!833516))))

(assert (=> d!367033 (= res!582272 (<= 0 0))))

(assert (=> d!367033 (= (apply!2899 lt!427436 0) lt!427502)))

(declare-fun b!1300023 () Bool)

(assert (=> b!1300023 (= e!833516 (< 0 (size!10643 lt!427436)))))

(assert (= (and d!367033 res!582272) b!1300023))

(assert (=> d!367033 m!1451419))

(assert (=> d!367033 m!1451419))

(declare-fun m!1451709 () Bool)

(assert (=> d!367033 m!1451709))

(declare-fun m!1451711 () Bool)

(assert (=> d!367033 m!1451711))

(declare-fun m!1451713 () Bool)

(assert (=> b!1300023 m!1451713))

(assert (=> b!1299785 d!367033))

(declare-fun d!367035 () Bool)

(assert (=> d!367035 true))

(declare-fun lt!427505 () Bool)

(declare-fun lambda!51162 () Int)

(declare-fun forall!3264 (List!13084 Int) Bool)

(assert (=> d!367035 (= lt!427505 (forall!3264 rules!2550 lambda!51162))))

(declare-fun e!833522 () Bool)

(assert (=> d!367035 (= lt!427505 e!833522)))

(declare-fun res!582277 () Bool)

(assert (=> d!367035 (=> res!582277 e!833522)))

(assert (=> d!367035 (= res!582277 (not ((_ is Cons!13018) rules!2550)))))

(assert (=> d!367035 (= (rulesValidInductive!710 thiss!19762 rules!2550) lt!427505)))

(declare-fun b!1300028 () Bool)

(declare-fun e!833521 () Bool)

(assert (=> b!1300028 (= e!833522 e!833521)))

(declare-fun res!582278 () Bool)

(assert (=> b!1300028 (=> (not res!582278) (not e!833521))))

(declare-fun ruleValid!551 (LexerInterface!1940 Rule!4290) Bool)

(assert (=> b!1300028 (= res!582278 (ruleValid!551 thiss!19762 (h!18419 rules!2550)))))

(declare-fun b!1300029 () Bool)

(assert (=> b!1300029 (= e!833521 (rulesValidInductive!710 thiss!19762 (t!117593 rules!2550)))))

(assert (= (and d!367035 (not res!582277)) b!1300028))

(assert (= (and b!1300028 res!582278) b!1300029))

(declare-fun m!1451715 () Bool)

(assert (=> d!367035 m!1451715))

(declare-fun m!1451717 () Bool)

(assert (=> b!1300028 m!1451717))

(declare-fun m!1451719 () Bool)

(assert (=> b!1300029 m!1451719))

(assert (=> b!1299774 d!367035))

(declare-fun d!367037 () Bool)

(declare-fun res!582283 () Bool)

(declare-fun e!833527 () Bool)

(assert (=> d!367037 (=> res!582283 e!833527)))

(assert (=> d!367037 (= res!582283 (not ((_ is Cons!13018) rules!2550)))))

(assert (=> d!367037 (= (sepAndNonSepRulesDisjointChars!618 rules!2550 rules!2550) e!833527)))

(declare-fun b!1300036 () Bool)

(declare-fun e!833528 () Bool)

(assert (=> b!1300036 (= e!833527 e!833528)))

(declare-fun res!582284 () Bool)

(assert (=> b!1300036 (=> (not res!582284) (not e!833528))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!300 (Rule!4290 List!13084) Bool)

(assert (=> b!1300036 (= res!582284 (ruleDisjointCharsFromAllFromOtherType!300 (h!18419 rules!2550) rules!2550))))

(declare-fun b!1300037 () Bool)

(assert (=> b!1300037 (= e!833528 (sepAndNonSepRulesDisjointChars!618 rules!2550 (t!117593 rules!2550)))))

(assert (= (and d!367037 (not res!582283)) b!1300036))

(assert (= (and b!1300036 res!582284) b!1300037))

(declare-fun m!1451721 () Bool)

(assert (=> b!1300036 m!1451721))

(declare-fun m!1451723 () Bool)

(assert (=> b!1300037 m!1451723))

(assert (=> b!1299776 d!367037))

(declare-fun d!367039 () Bool)

(declare-fun lt!427507 () Bool)

(declare-fun e!833530 () Bool)

(assert (=> d!367039 (= lt!427507 e!833530)))

(declare-fun res!582287 () Bool)

(assert (=> d!367039 (=> (not res!582287) (not e!833530))))

(assert (=> d!367039 (= res!582287 (= (list!4882 (_1!7243 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t1!34))))) (list!4882 (singletonSeq!829 t1!34))))))

(declare-fun e!833529 () Bool)

(assert (=> d!367039 (= lt!427507 e!833529)))

(declare-fun res!582285 () Bool)

(assert (=> d!367039 (=> (not res!582285) (not e!833529))))

(declare-fun lt!427506 () tuple2!12714)

(assert (=> d!367039 (= res!582285 (= (size!10647 (_1!7243 lt!427506)) 1))))

(assert (=> d!367039 (= lt!427506 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t1!34))))))

(assert (=> d!367039 (not (isEmpty!7733 rules!2550))))

(assert (=> d!367039 (= (rulesProduceIndividualToken!909 thiss!19762 rules!2550 t1!34) lt!427507)))

(declare-fun b!1300038 () Bool)

(declare-fun res!582286 () Bool)

(assert (=> b!1300038 (=> (not res!582286) (not e!833529))))

(assert (=> b!1300038 (= res!582286 (= (apply!2903 (_1!7243 lt!427506) 0) t1!34))))

(declare-fun b!1300039 () Bool)

(assert (=> b!1300039 (= e!833529 (isEmpty!7736 (_2!7243 lt!427506)))))

(declare-fun b!1300040 () Bool)

(assert (=> b!1300040 (= e!833530 (isEmpty!7736 (_2!7243 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t1!34))))))))

(assert (= (and d!367039 res!582285) b!1300038))

(assert (= (and b!1300038 res!582286) b!1300039))

(assert (= (and d!367039 res!582287) b!1300040))

(declare-fun m!1451725 () Bool)

(assert (=> d!367039 m!1451725))

(declare-fun m!1451727 () Bool)

(assert (=> d!367039 m!1451727))

(declare-fun m!1451729 () Bool)

(assert (=> d!367039 m!1451729))

(declare-fun m!1451731 () Bool)

(assert (=> d!367039 m!1451731))

(assert (=> d!367039 m!1451729))

(declare-fun m!1451733 () Bool)

(assert (=> d!367039 m!1451733))

(assert (=> d!367039 m!1451729))

(assert (=> d!367039 m!1451367))

(assert (=> d!367039 m!1451733))

(declare-fun m!1451735 () Bool)

(assert (=> d!367039 m!1451735))

(declare-fun m!1451737 () Bool)

(assert (=> b!1300038 m!1451737))

(declare-fun m!1451739 () Bool)

(assert (=> b!1300039 m!1451739))

(assert (=> b!1300040 m!1451729))

(assert (=> b!1300040 m!1451729))

(assert (=> b!1300040 m!1451733))

(assert (=> b!1300040 m!1451733))

(assert (=> b!1300040 m!1451735))

(declare-fun m!1451741 () Bool)

(assert (=> b!1300040 m!1451741))

(assert (=> b!1299786 d!367039))

(declare-fun b!1300051 () Bool)

(declare-fun e!833538 () Bool)

(declare-fun inv!15 (TokenValue!2335) Bool)

(assert (=> b!1300051 (= e!833538 (inv!15 (value!73615 t2!34)))))

(declare-fun b!1300052 () Bool)

(declare-fun e!833537 () Bool)

(declare-fun inv!17 (TokenValue!2335) Bool)

(assert (=> b!1300052 (= e!833537 (inv!17 (value!73615 t2!34)))))

(declare-fun d!367041 () Bool)

(declare-fun c!213967 () Bool)

(assert (=> d!367041 (= c!213967 ((_ is IntegerValue!7005) (value!73615 t2!34)))))

(declare-fun e!833539 () Bool)

(assert (=> d!367041 (= (inv!21 (value!73615 t2!34)) e!833539)))

(declare-fun b!1300053 () Bool)

(declare-fun res!582290 () Bool)

(assert (=> b!1300053 (=> res!582290 e!833538)))

(assert (=> b!1300053 (= res!582290 (not ((_ is IntegerValue!7007) (value!73615 t2!34))))))

(assert (=> b!1300053 (= e!833537 e!833538)))

(declare-fun b!1300054 () Bool)

(assert (=> b!1300054 (= e!833539 e!833537)))

(declare-fun c!213966 () Bool)

(assert (=> b!1300054 (= c!213966 ((_ is IntegerValue!7006) (value!73615 t2!34)))))

(declare-fun b!1300055 () Bool)

(declare-fun inv!16 (TokenValue!2335) Bool)

(assert (=> b!1300055 (= e!833539 (inv!16 (value!73615 t2!34)))))

(assert (= (and d!367041 c!213967) b!1300055))

(assert (= (and d!367041 (not c!213967)) b!1300054))

(assert (= (and b!1300054 c!213966) b!1300052))

(assert (= (and b!1300054 (not c!213966)) b!1300053))

(assert (= (and b!1300053 (not res!582290)) b!1300051))

(declare-fun m!1451743 () Bool)

(assert (=> b!1300051 m!1451743))

(declare-fun m!1451745 () Bool)

(assert (=> b!1300052 m!1451745))

(declare-fun m!1451747 () Bool)

(assert (=> b!1300055 m!1451747))

(assert (=> b!1299788 d!367041))

(declare-fun b!1300056 () Bool)

(declare-fun e!833541 () Bool)

(assert (=> b!1300056 (= e!833541 (inv!15 (value!73615 t1!34)))))

(declare-fun b!1300057 () Bool)

(declare-fun e!833540 () Bool)

(assert (=> b!1300057 (= e!833540 (inv!17 (value!73615 t1!34)))))

(declare-fun d!367043 () Bool)

(declare-fun c!213969 () Bool)

(assert (=> d!367043 (= c!213969 ((_ is IntegerValue!7005) (value!73615 t1!34)))))

(declare-fun e!833542 () Bool)

(assert (=> d!367043 (= (inv!21 (value!73615 t1!34)) e!833542)))

(declare-fun b!1300058 () Bool)

(declare-fun res!582291 () Bool)

(assert (=> b!1300058 (=> res!582291 e!833541)))

(assert (=> b!1300058 (= res!582291 (not ((_ is IntegerValue!7007) (value!73615 t1!34))))))

(assert (=> b!1300058 (= e!833540 e!833541)))

(declare-fun b!1300059 () Bool)

(assert (=> b!1300059 (= e!833542 e!833540)))

(declare-fun c!213968 () Bool)

(assert (=> b!1300059 (= c!213968 ((_ is IntegerValue!7006) (value!73615 t1!34)))))

(declare-fun b!1300060 () Bool)

(assert (=> b!1300060 (= e!833542 (inv!16 (value!73615 t1!34)))))

(assert (= (and d!367043 c!213969) b!1300060))

(assert (= (and d!367043 (not c!213969)) b!1300059))

(assert (= (and b!1300059 c!213968) b!1300057))

(assert (= (and b!1300059 (not c!213968)) b!1300058))

(assert (= (and b!1300058 (not res!582291)) b!1300056))

(declare-fun m!1451749 () Bool)

(assert (=> b!1300056 m!1451749))

(declare-fun m!1451751 () Bool)

(assert (=> b!1300057 m!1451751))

(declare-fun m!1451753 () Bool)

(assert (=> b!1300060 m!1451753))

(assert (=> b!1299777 d!367043))

(declare-fun d!367045 () Bool)

(declare-fun lt!427510 () Int)

(declare-fun size!10648 (List!13082) Int)

(assert (=> d!367045 (= lt!427510 (size!10648 (list!4879 lt!427435)))))

(declare-fun size!10649 (Conc!4275) Int)

(assert (=> d!367045 (= lt!427510 (size!10649 (c!213934 lt!427435)))))

(assert (=> d!367045 (= (size!10643 lt!427435) lt!427510)))

(declare-fun bs!329181 () Bool)

(assert (= bs!329181 d!367045))

(declare-fun m!1451755 () Bool)

(assert (=> bs!329181 m!1451755))

(assert (=> bs!329181 m!1451755))

(declare-fun m!1451757 () Bool)

(assert (=> bs!329181 m!1451757))

(declare-fun m!1451759 () Bool)

(assert (=> bs!329181 m!1451759))

(assert (=> b!1299779 d!367045))

(declare-fun d!367047 () Bool)

(declare-fun lt!427513 () BalanceConc!8490)

(assert (=> d!367047 (= (list!4879 lt!427513) (originalCharacters!3107 t2!34))))

(declare-fun dynLambda!5699 (Int TokenValue!2335) BalanceConc!8490)

(assert (=> d!367047 (= lt!427513 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34)))))

(assert (=> d!367047 (= (charsOf!1217 t2!34) lt!427513)))

(declare-fun b_lambda!37267 () Bool)

(assert (=> (not b_lambda!37267) (not d!367047)))

(declare-fun t!117614 () Bool)

(declare-fun tb!69593 () Bool)

(assert (=> (and b!1299793 (= (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (toChars!3315 (transformation!2245 (rule!3984 t2!34)))) t!117614) tb!69593))

(declare-fun b!1300065 () Bool)

(declare-fun e!833545 () Bool)

(declare-fun tp!379338 () Bool)

(declare-fun inv!17452 (Conc!4275) Bool)

(assert (=> b!1300065 (= e!833545 (and (inv!17452 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34)))) tp!379338))))

(declare-fun result!84406 () Bool)

(declare-fun inv!17453 (BalanceConc!8490) Bool)

(assert (=> tb!69593 (= result!84406 (and (inv!17453 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34))) e!833545))))

(assert (= tb!69593 b!1300065))

(declare-fun m!1451761 () Bool)

(assert (=> b!1300065 m!1451761))

(declare-fun m!1451763 () Bool)

(assert (=> tb!69593 m!1451763))

(assert (=> d!367047 t!117614))

(declare-fun b_and!86719 () Bool)

(assert (= b_and!86681 (and (=> t!117614 result!84406) b_and!86719)))

(declare-fun t!117616 () Bool)

(declare-fun tb!69595 () Bool)

(assert (=> (and b!1299792 (= (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (toChars!3315 (transformation!2245 (rule!3984 t2!34)))) t!117616) tb!69595))

(declare-fun result!84410 () Bool)

(assert (= result!84410 result!84406))

(assert (=> d!367047 t!117616))

(declare-fun b_and!86721 () Bool)

(assert (= b_and!86685 (and (=> t!117616 result!84410) b_and!86721)))

(declare-fun tb!69597 () Bool)

(declare-fun t!117618 () Bool)

(assert (=> (and b!1299781 (= (toChars!3315 (transformation!2245 (h!18419 rules!2550))) (toChars!3315 (transformation!2245 (rule!3984 t2!34)))) t!117618) tb!69597))

(declare-fun result!84412 () Bool)

(assert (= result!84412 result!84406))

(assert (=> d!367047 t!117618))

(declare-fun b_and!86723 () Bool)

(assert (= b_and!86689 (and (=> t!117618 result!84412) b_and!86723)))

(declare-fun m!1451765 () Bool)

(assert (=> d!367047 m!1451765))

(declare-fun m!1451767 () Bool)

(assert (=> d!367047 m!1451767))

(assert (=> b!1299779 d!367047))

(declare-fun bm!89064 () Bool)

(declare-fun call!89069 () Bool)

(declare-fun isEmpty!7737 (List!13082) Bool)

(assert (=> bm!89064 (= call!89069 (isEmpty!7737 lt!427434))))

(declare-fun b!1300094 () Bool)

(declare-fun res!582309 () Bool)

(declare-fun e!833562 () Bool)

(assert (=> b!1300094 (=> res!582309 e!833562)))

(declare-fun e!833563 () Bool)

(assert (=> b!1300094 (= res!582309 e!833563)))

(declare-fun res!582314 () Bool)

(assert (=> b!1300094 (=> (not res!582314) (not e!833563))))

(declare-fun lt!427516 () Bool)

(assert (=> b!1300094 (= res!582314 lt!427516)))

(declare-fun b!1300095 () Bool)

(declare-fun head!2234 (List!13082) C!7408)

(assert (=> b!1300095 (= e!833563 (= (head!2234 lt!427434) (c!213933 lt!427438)))))

(declare-fun b!1300096 () Bool)

(declare-fun e!833564 () Bool)

(assert (=> b!1300096 (= e!833564 (not lt!427516))))

(declare-fun b!1300097 () Bool)

(declare-fun res!582312 () Bool)

(declare-fun e!833560 () Bool)

(assert (=> b!1300097 (=> res!582312 e!833560)))

(declare-fun tail!1862 (List!13082) List!13082)

(assert (=> b!1300097 (= res!582312 (not (isEmpty!7737 (tail!1862 lt!427434))))))

(declare-fun b!1300098 () Bool)

(declare-fun e!833561 () Bool)

(assert (=> b!1300098 (= e!833562 e!833561)))

(declare-fun res!582311 () Bool)

(assert (=> b!1300098 (=> (not res!582311) (not e!833561))))

(assert (=> b!1300098 (= res!582311 (not lt!427516))))

(declare-fun b!1300099 () Bool)

(declare-fun e!833565 () Bool)

(assert (=> b!1300099 (= e!833565 (= lt!427516 call!89069))))

(declare-fun b!1300100 () Bool)

(declare-fun e!833566 () Bool)

(declare-fun nullable!1135 (Regex!3559) Bool)

(assert (=> b!1300100 (= e!833566 (nullable!1135 lt!427438))))

(declare-fun b!1300101 () Bool)

(declare-fun derivativeStep!887 (Regex!3559 C!7408) Regex!3559)

(assert (=> b!1300101 (= e!833566 (matchR!1561 (derivativeStep!887 lt!427438 (head!2234 lt!427434)) (tail!1862 lt!427434)))))

(declare-fun b!1300102 () Bool)

(assert (=> b!1300102 (= e!833565 e!833564)))

(declare-fun c!213979 () Bool)

(assert (=> b!1300102 (= c!213979 ((_ is EmptyLang!3559) lt!427438))))

(declare-fun b!1300103 () Bool)

(declare-fun res!582313 () Bool)

(assert (=> b!1300103 (=> (not res!582313) (not e!833563))))

(assert (=> b!1300103 (= res!582313 (not call!89069))))

(declare-fun b!1300104 () Bool)

(declare-fun res!582308 () Bool)

(assert (=> b!1300104 (=> res!582308 e!833562)))

(assert (=> b!1300104 (= res!582308 (not ((_ is ElementMatch!3559) lt!427438)))))

(assert (=> b!1300104 (= e!833564 e!833562)))

(declare-fun b!1300105 () Bool)

(declare-fun res!582310 () Bool)

(assert (=> b!1300105 (=> (not res!582310) (not e!833563))))

(assert (=> b!1300105 (= res!582310 (isEmpty!7737 (tail!1862 lt!427434)))))

(declare-fun b!1300106 () Bool)

(assert (=> b!1300106 (= e!833560 (not (= (head!2234 lt!427434) (c!213933 lt!427438))))))

(declare-fun d!367049 () Bool)

(assert (=> d!367049 e!833565))

(declare-fun c!213978 () Bool)

(assert (=> d!367049 (= c!213978 ((_ is EmptyExpr!3559) lt!427438))))

(assert (=> d!367049 (= lt!427516 e!833566)))

(declare-fun c!213977 () Bool)

(assert (=> d!367049 (= c!213977 (isEmpty!7737 lt!427434))))

(assert (=> d!367049 (validRegex!1537 lt!427438)))

(assert (=> d!367049 (= (matchR!1561 lt!427438 lt!427434) lt!427516)))

(declare-fun b!1300107 () Bool)

(assert (=> b!1300107 (= e!833561 e!833560)))

(declare-fun res!582315 () Bool)

(assert (=> b!1300107 (=> res!582315 e!833560)))

(assert (=> b!1300107 (= res!582315 call!89069)))

(assert (= (and d!367049 c!213977) b!1300100))

(assert (= (and d!367049 (not c!213977)) b!1300101))

(assert (= (and d!367049 c!213978) b!1300099))

(assert (= (and d!367049 (not c!213978)) b!1300102))

(assert (= (and b!1300102 c!213979) b!1300096))

(assert (= (and b!1300102 (not c!213979)) b!1300104))

(assert (= (and b!1300104 (not res!582308)) b!1300094))

(assert (= (and b!1300094 res!582314) b!1300103))

(assert (= (and b!1300103 res!582313) b!1300105))

(assert (= (and b!1300105 res!582310) b!1300095))

(assert (= (and b!1300094 (not res!582309)) b!1300098))

(assert (= (and b!1300098 res!582311) b!1300107))

(assert (= (and b!1300107 (not res!582315)) b!1300097))

(assert (= (and b!1300097 (not res!582312)) b!1300106))

(assert (= (or b!1300099 b!1300103 b!1300107) bm!89064))

(declare-fun m!1451769 () Bool)

(assert (=> b!1300100 m!1451769))

(declare-fun m!1451771 () Bool)

(assert (=> b!1300097 m!1451771))

(assert (=> b!1300097 m!1451771))

(declare-fun m!1451773 () Bool)

(assert (=> b!1300097 m!1451773))

(declare-fun m!1451775 () Bool)

(assert (=> b!1300101 m!1451775))

(assert (=> b!1300101 m!1451775))

(declare-fun m!1451777 () Bool)

(assert (=> b!1300101 m!1451777))

(assert (=> b!1300101 m!1451771))

(assert (=> b!1300101 m!1451777))

(assert (=> b!1300101 m!1451771))

(declare-fun m!1451779 () Bool)

(assert (=> b!1300101 m!1451779))

(assert (=> b!1300105 m!1451771))

(assert (=> b!1300105 m!1451771))

(assert (=> b!1300105 m!1451773))

(assert (=> b!1300095 m!1451775))

(assert (=> b!1300106 m!1451775))

(declare-fun m!1451781 () Bool)

(assert (=> bm!89064 m!1451781))

(assert (=> d!367049 m!1451781))

(assert (=> d!367049 m!1451701))

(assert (=> b!1299768 d!367049))

(declare-fun d!367051 () Bool)

(declare-fun lt!427517 () Bool)

(assert (=> d!367051 (= lt!427517 (select (content!1841 lt!427432) lt!427431))))

(declare-fun e!833568 () Bool)

(assert (=> d!367051 (= lt!427517 e!833568)))

(declare-fun res!582316 () Bool)

(assert (=> d!367051 (=> (not res!582316) (not e!833568))))

(assert (=> d!367051 (= res!582316 ((_ is Cons!13016) lt!427432))))

(assert (=> d!367051 (= (contains!2183 lt!427432 lt!427431) lt!427517)))

(declare-fun b!1300108 () Bool)

(declare-fun e!833567 () Bool)

(assert (=> b!1300108 (= e!833568 e!833567)))

(declare-fun res!582317 () Bool)

(assert (=> b!1300108 (=> res!582317 e!833567)))

(assert (=> b!1300108 (= res!582317 (= (h!18417 lt!427432) lt!427431))))

(declare-fun b!1300109 () Bool)

(assert (=> b!1300109 (= e!833567 (contains!2183 (t!117591 lt!427432) lt!427431))))

(assert (= (and d!367051 res!582316) b!1300108))

(assert (= (and b!1300108 (not res!582317)) b!1300109))

(assert (=> d!367051 m!1451703))

(declare-fun m!1451783 () Bool)

(assert (=> d!367051 m!1451783))

(declare-fun m!1451785 () Bool)

(assert (=> b!1300109 m!1451785))

(assert (=> b!1299789 d!367051))

(declare-fun d!367053 () Bool)

(assert (=> d!367053 (= (inv!17445 (tag!2507 (h!18419 rules!2550))) (= (mod (str.len (value!73614 (tag!2507 (h!18419 rules!2550)))) 2) 0))))

(assert (=> b!1299778 d!367053))

(declare-fun d!367055 () Bool)

(declare-fun res!582318 () Bool)

(declare-fun e!833569 () Bool)

(assert (=> d!367055 (=> (not res!582318) (not e!833569))))

(assert (=> d!367055 (= res!582318 (semiInverseModEq!856 (toChars!3315 (transformation!2245 (h!18419 rules!2550))) (toValue!3456 (transformation!2245 (h!18419 rules!2550)))))))

(assert (=> d!367055 (= (inv!17448 (transformation!2245 (h!18419 rules!2550))) e!833569)))

(declare-fun b!1300110 () Bool)

(assert (=> b!1300110 (= e!833569 (equivClasses!815 (toChars!3315 (transformation!2245 (h!18419 rules!2550))) (toValue!3456 (transformation!2245 (h!18419 rules!2550)))))))

(assert (= (and d!367055 res!582318) b!1300110))

(declare-fun m!1451787 () Bool)

(assert (=> d!367055 m!1451787))

(declare-fun m!1451789 () Bool)

(assert (=> b!1300110 m!1451789))

(assert (=> b!1299778 d!367055))

(declare-fun b!1300121 () Bool)

(declare-fun res!582324 () Bool)

(declare-fun e!833575 () Bool)

(assert (=> b!1300121 (=> (not res!582324) (not e!833575))))

(declare-fun lt!427520 () List!13082)

(assert (=> b!1300121 (= res!582324 (= (size!10648 lt!427520) (+ (size!10648 lt!427432) (size!10648 (getSuffix!415 lt!427434 lt!427432)))))))

(declare-fun b!1300120 () Bool)

(declare-fun e!833574 () List!13082)

(assert (=> b!1300120 (= e!833574 (Cons!13016 (h!18417 lt!427432) (++!3312 (t!117591 lt!427432) (getSuffix!415 lt!427434 lt!427432))))))

(declare-fun b!1300122 () Bool)

(assert (=> b!1300122 (= e!833575 (or (not (= (getSuffix!415 lt!427434 lt!427432) Nil!13016)) (= lt!427520 lt!427432)))))

(declare-fun b!1300119 () Bool)

(assert (=> b!1300119 (= e!833574 (getSuffix!415 lt!427434 lt!427432))))

(declare-fun d!367057 () Bool)

(assert (=> d!367057 e!833575))

(declare-fun res!582323 () Bool)

(assert (=> d!367057 (=> (not res!582323) (not e!833575))))

(assert (=> d!367057 (= res!582323 (= (content!1841 lt!427520) ((_ map or) (content!1841 lt!427432) (content!1841 (getSuffix!415 lt!427434 lt!427432)))))))

(assert (=> d!367057 (= lt!427520 e!833574)))

(declare-fun c!213982 () Bool)

(assert (=> d!367057 (= c!213982 ((_ is Nil!13016) lt!427432))))

(assert (=> d!367057 (= (++!3312 lt!427432 (getSuffix!415 lt!427434 lt!427432)) lt!427520)))

(assert (= (and d!367057 c!213982) b!1300119))

(assert (= (and d!367057 (not c!213982)) b!1300120))

(assert (= (and d!367057 res!582323) b!1300121))

(assert (= (and b!1300121 res!582324) b!1300122))

(declare-fun m!1451791 () Bool)

(assert (=> b!1300121 m!1451791))

(declare-fun m!1451793 () Bool)

(assert (=> b!1300121 m!1451793))

(assert (=> b!1300121 m!1451377))

(declare-fun m!1451795 () Bool)

(assert (=> b!1300121 m!1451795))

(assert (=> b!1300120 m!1451377))

(declare-fun m!1451797 () Bool)

(assert (=> b!1300120 m!1451797))

(declare-fun m!1451799 () Bool)

(assert (=> d!367057 m!1451799))

(assert (=> d!367057 m!1451703))

(assert (=> d!367057 m!1451377))

(declare-fun m!1451801 () Bool)

(assert (=> d!367057 m!1451801))

(assert (=> b!1299791 d!367057))

(declare-fun d!367059 () Bool)

(declare-fun lt!427523 () List!13082)

(assert (=> d!367059 (= (++!3312 lt!427432 lt!427523) lt!427434)))

(declare-fun e!833578 () List!13082)

(assert (=> d!367059 (= lt!427523 e!833578)))

(declare-fun c!213985 () Bool)

(assert (=> d!367059 (= c!213985 ((_ is Cons!13016) lt!427432))))

(assert (=> d!367059 (>= (size!10648 lt!427434) (size!10648 lt!427432))))

(assert (=> d!367059 (= (getSuffix!415 lt!427434 lt!427432) lt!427523)))

(declare-fun b!1300127 () Bool)

(assert (=> b!1300127 (= e!833578 (getSuffix!415 (tail!1862 lt!427434) (t!117591 lt!427432)))))

(declare-fun b!1300128 () Bool)

(assert (=> b!1300128 (= e!833578 lt!427434)))

(assert (= (and d!367059 c!213985) b!1300127))

(assert (= (and d!367059 (not c!213985)) b!1300128))

(declare-fun m!1451803 () Bool)

(assert (=> d!367059 m!1451803))

(declare-fun m!1451805 () Bool)

(assert (=> d!367059 m!1451805))

(assert (=> d!367059 m!1451793))

(assert (=> b!1300127 m!1451771))

(assert (=> b!1300127 m!1451771))

(declare-fun m!1451807 () Bool)

(assert (=> b!1300127 m!1451807))

(assert (=> b!1299791 d!367059))

(declare-fun d!367061 () Bool)

(declare-fun lt!427526 () List!13082)

(declare-fun dynLambda!5700 (Int List!13082) Bool)

(assert (=> d!367061 (dynLambda!5700 lambda!51147 lt!427526)))

(declare-fun choose!7982 (Int) List!13082)

(assert (=> d!367061 (= lt!427526 (choose!7982 lambda!51147))))

(assert (=> d!367061 (Exists!717 lambda!51147)))

(assert (=> d!367061 (= (pickWitness!22 lambda!51147) lt!427526)))

(declare-fun b_lambda!37269 () Bool)

(assert (=> (not b_lambda!37269) (not d!367061)))

(declare-fun bs!329182 () Bool)

(assert (= bs!329182 d!367061))

(declare-fun m!1451809 () Bool)

(assert (=> bs!329182 m!1451809))

(declare-fun m!1451811 () Bool)

(assert (=> bs!329182 m!1451811))

(assert (=> bs!329182 m!1451397))

(assert (=> b!1299791 d!367061))

(declare-fun d!367063 () Bool)

(declare-fun res!582329 () Bool)

(declare-fun e!833581 () Bool)

(assert (=> d!367063 (=> (not res!582329) (not e!833581))))

(assert (=> d!367063 (= res!582329 (not (isEmpty!7737 (originalCharacters!3107 t1!34))))))

(assert (=> d!367063 (= (inv!17449 t1!34) e!833581)))

(declare-fun b!1300133 () Bool)

(declare-fun res!582330 () Bool)

(assert (=> b!1300133 (=> (not res!582330) (not e!833581))))

(assert (=> b!1300133 (= res!582330 (= (originalCharacters!3107 t1!34) (list!4879 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34)))))))

(declare-fun b!1300134 () Bool)

(assert (=> b!1300134 (= e!833581 (= (size!10642 t1!34) (size!10648 (originalCharacters!3107 t1!34))))))

(assert (= (and d!367063 res!582329) b!1300133))

(assert (= (and b!1300133 res!582330) b!1300134))

(declare-fun b_lambda!37271 () Bool)

(assert (=> (not b_lambda!37271) (not b!1300133)))

(declare-fun t!117621 () Bool)

(declare-fun tb!69599 () Bool)

(assert (=> (and b!1299793 (= (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (toChars!3315 (transformation!2245 (rule!3984 t1!34)))) t!117621) tb!69599))

(declare-fun b!1300135 () Bool)

(declare-fun e!833582 () Bool)

(declare-fun tp!379339 () Bool)

(assert (=> b!1300135 (= e!833582 (and (inv!17452 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34)))) tp!379339))))

(declare-fun result!84414 () Bool)

(assert (=> tb!69599 (= result!84414 (and (inv!17453 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34))) e!833582))))

(assert (= tb!69599 b!1300135))

(declare-fun m!1451813 () Bool)

(assert (=> b!1300135 m!1451813))

(declare-fun m!1451815 () Bool)

(assert (=> tb!69599 m!1451815))

(assert (=> b!1300133 t!117621))

(declare-fun b_and!86725 () Bool)

(assert (= b_and!86719 (and (=> t!117621 result!84414) b_and!86725)))

(declare-fun t!117623 () Bool)

(declare-fun tb!69601 () Bool)

(assert (=> (and b!1299792 (= (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (toChars!3315 (transformation!2245 (rule!3984 t1!34)))) t!117623) tb!69601))

(declare-fun result!84416 () Bool)

(assert (= result!84416 result!84414))

(assert (=> b!1300133 t!117623))

(declare-fun b_and!86727 () Bool)

(assert (= b_and!86721 (and (=> t!117623 result!84416) b_and!86727)))

(declare-fun tb!69603 () Bool)

(declare-fun t!117625 () Bool)

(assert (=> (and b!1299781 (= (toChars!3315 (transformation!2245 (h!18419 rules!2550))) (toChars!3315 (transformation!2245 (rule!3984 t1!34)))) t!117625) tb!69603))

(declare-fun result!84418 () Bool)

(assert (= result!84418 result!84414))

(assert (=> b!1300133 t!117625))

(declare-fun b_and!86729 () Bool)

(assert (= b_and!86723 (and (=> t!117625 result!84418) b_and!86729)))

(declare-fun m!1451817 () Bool)

(assert (=> d!367063 m!1451817))

(declare-fun m!1451819 () Bool)

(assert (=> b!1300133 m!1451819))

(assert (=> b!1300133 m!1451819))

(declare-fun m!1451821 () Bool)

(assert (=> b!1300133 m!1451821))

(declare-fun m!1451823 () Bool)

(assert (=> b!1300134 m!1451823))

(assert (=> start!114742 d!367063))

(declare-fun d!367065 () Bool)

(declare-fun res!582331 () Bool)

(declare-fun e!833583 () Bool)

(assert (=> d!367065 (=> (not res!582331) (not e!833583))))

(assert (=> d!367065 (= res!582331 (not (isEmpty!7737 (originalCharacters!3107 t2!34))))))

(assert (=> d!367065 (= (inv!17449 t2!34) e!833583)))

(declare-fun b!1300136 () Bool)

(declare-fun res!582332 () Bool)

(assert (=> b!1300136 (=> (not res!582332) (not e!833583))))

(assert (=> b!1300136 (= res!582332 (= (originalCharacters!3107 t2!34) (list!4879 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34)))))))

(declare-fun b!1300137 () Bool)

(assert (=> b!1300137 (= e!833583 (= (size!10642 t2!34) (size!10648 (originalCharacters!3107 t2!34))))))

(assert (= (and d!367065 res!582331) b!1300136))

(assert (= (and b!1300136 res!582332) b!1300137))

(declare-fun b_lambda!37273 () Bool)

(assert (=> (not b_lambda!37273) (not b!1300136)))

(assert (=> b!1300136 t!117614))

(declare-fun b_and!86731 () Bool)

(assert (= b_and!86725 (and (=> t!117614 result!84406) b_and!86731)))

(assert (=> b!1300136 t!117616))

(declare-fun b_and!86733 () Bool)

(assert (= b_and!86727 (and (=> t!117616 result!84410) b_and!86733)))

(assert (=> b!1300136 t!117618))

(declare-fun b_and!86735 () Bool)

(assert (= b_and!86729 (and (=> t!117618 result!84412) b_and!86735)))

(declare-fun m!1451825 () Bool)

(assert (=> d!367065 m!1451825))

(assert (=> b!1300136 m!1451767))

(assert (=> b!1300136 m!1451767))

(declare-fun m!1451827 () Bool)

(assert (=> b!1300136 m!1451827))

(declare-fun m!1451829 () Bool)

(assert (=> b!1300137 m!1451829))

(assert (=> start!114742 d!367065))

(declare-fun d!367067 () Bool)

(assert (=> d!367067 (= (inv!17445 (tag!2507 (rule!3984 t2!34))) (= (mod (str.len (value!73614 (tag!2507 (rule!3984 t2!34)))) 2) 0))))

(assert (=> b!1299780 d!367067))

(declare-fun d!367069 () Bool)

(declare-fun res!582333 () Bool)

(declare-fun e!833584 () Bool)

(assert (=> d!367069 (=> (not res!582333) (not e!833584))))

(assert (=> d!367069 (= res!582333 (semiInverseModEq!856 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (toValue!3456 (transformation!2245 (rule!3984 t2!34)))))))

(assert (=> d!367069 (= (inv!17448 (transformation!2245 (rule!3984 t2!34))) e!833584)))

(declare-fun b!1300138 () Bool)

(assert (=> b!1300138 (= e!833584 (equivClasses!815 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (toValue!3456 (transformation!2245 (rule!3984 t2!34)))))))

(assert (= (and d!367069 res!582333) b!1300138))

(declare-fun m!1451831 () Bool)

(assert (=> d!367069 m!1451831))

(declare-fun m!1451833 () Bool)

(assert (=> b!1300138 m!1451833))

(assert (=> b!1299780 d!367069))

(declare-fun d!367071 () Bool)

(declare-fun list!4883 (Conc!4275) List!13082)

(assert (=> d!367071 (= (list!4879 lt!427436) (list!4883 (c!213934 lt!427436)))))

(declare-fun bs!329183 () Bool)

(assert (= bs!329183 d!367071))

(declare-fun m!1451835 () Bool)

(assert (=> bs!329183 m!1451835))

(assert (=> b!1299769 d!367071))

(declare-fun b!1300141 () Bool)

(declare-fun res!582335 () Bool)

(declare-fun e!833586 () Bool)

(assert (=> b!1300141 (=> (not res!582335) (not e!833586))))

(declare-fun lt!427527 () List!13082)

(assert (=> b!1300141 (= res!582335 (= (size!10648 lt!427527) (+ (size!10648 lt!427437) (size!10648 (Cons!13016 lt!427431 Nil!13016)))))))

(declare-fun b!1300140 () Bool)

(declare-fun e!833585 () List!13082)

(assert (=> b!1300140 (= e!833585 (Cons!13016 (h!18417 lt!427437) (++!3312 (t!117591 lt!427437) (Cons!13016 lt!427431 Nil!13016))))))

(declare-fun b!1300142 () Bool)

(assert (=> b!1300142 (= e!833586 (or (not (= (Cons!13016 lt!427431 Nil!13016) Nil!13016)) (= lt!427527 lt!427437)))))

(declare-fun b!1300139 () Bool)

(assert (=> b!1300139 (= e!833585 (Cons!13016 lt!427431 Nil!13016))))

(declare-fun d!367073 () Bool)

(assert (=> d!367073 e!833586))

(declare-fun res!582334 () Bool)

(assert (=> d!367073 (=> (not res!582334) (not e!833586))))

(assert (=> d!367073 (= res!582334 (= (content!1841 lt!427527) ((_ map or) (content!1841 lt!427437) (content!1841 (Cons!13016 lt!427431 Nil!13016)))))))

(assert (=> d!367073 (= lt!427527 e!833585)))

(declare-fun c!213986 () Bool)

(assert (=> d!367073 (= c!213986 ((_ is Nil!13016) lt!427437))))

(assert (=> d!367073 (= (++!3312 lt!427437 (Cons!13016 lt!427431 Nil!13016)) lt!427527)))

(assert (= (and d!367073 c!213986) b!1300139))

(assert (= (and d!367073 (not c!213986)) b!1300140))

(assert (= (and d!367073 res!582334) b!1300141))

(assert (= (and b!1300141 res!582335) b!1300142))

(declare-fun m!1451837 () Bool)

(assert (=> b!1300141 m!1451837))

(declare-fun m!1451839 () Bool)

(assert (=> b!1300141 m!1451839))

(declare-fun m!1451841 () Bool)

(assert (=> b!1300141 m!1451841))

(declare-fun m!1451843 () Bool)

(assert (=> b!1300140 m!1451843))

(declare-fun m!1451845 () Bool)

(assert (=> d!367073 m!1451845))

(declare-fun m!1451847 () Bool)

(assert (=> d!367073 m!1451847))

(declare-fun m!1451849 () Bool)

(assert (=> d!367073 m!1451849))

(assert (=> b!1299769 d!367073))

(declare-fun d!367075 () Bool)

(declare-fun c!213989 () Bool)

(assert (=> d!367075 (= c!213989 (isEmpty!7737 lt!427432))))

(declare-fun e!833589 () Bool)

(assert (=> d!367075 (= (prefixMatch!72 lt!427438 lt!427432) e!833589)))

(declare-fun b!1300147 () Bool)

(declare-fun lostCause!264 (Regex!3559) Bool)

(assert (=> b!1300147 (= e!833589 (not (lostCause!264 lt!427438)))))

(declare-fun b!1300148 () Bool)

(assert (=> b!1300148 (= e!833589 (prefixMatch!72 (derivativeStep!887 lt!427438 (head!2234 lt!427432)) (tail!1862 lt!427432)))))

(assert (= (and d!367075 c!213989) b!1300147))

(assert (= (and d!367075 (not c!213989)) b!1300148))

(declare-fun m!1451851 () Bool)

(assert (=> d!367075 m!1451851))

(declare-fun m!1451853 () Bool)

(assert (=> b!1300147 m!1451853))

(declare-fun m!1451855 () Bool)

(assert (=> b!1300148 m!1451855))

(assert (=> b!1300148 m!1451855))

(declare-fun m!1451857 () Bool)

(assert (=> b!1300148 m!1451857))

(declare-fun m!1451859 () Bool)

(assert (=> b!1300148 m!1451859))

(assert (=> b!1300148 m!1451857))

(assert (=> b!1300148 m!1451859))

(declare-fun m!1451861 () Bool)

(assert (=> b!1300148 m!1451861))

(assert (=> b!1299769 d!367075))

(declare-fun d!367077 () Bool)

(declare-fun lt!427528 () BalanceConc!8490)

(assert (=> d!367077 (= (list!4879 lt!427528) (originalCharacters!3107 t1!34))))

(assert (=> d!367077 (= lt!427528 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34)))))

(assert (=> d!367077 (= (charsOf!1217 t1!34) lt!427528)))

(declare-fun b_lambda!37275 () Bool)

(assert (=> (not b_lambda!37275) (not d!367077)))

(assert (=> d!367077 t!117621))

(declare-fun b_and!86737 () Bool)

(assert (= b_and!86731 (and (=> t!117621 result!84414) b_and!86737)))

(assert (=> d!367077 t!117623))

(declare-fun b_and!86739 () Bool)

(assert (= b_and!86733 (and (=> t!117623 result!84416) b_and!86739)))

(assert (=> d!367077 t!117625))

(declare-fun b_and!86741 () Bool)

(assert (= b_and!86735 (and (=> t!117625 result!84418) b_and!86741)))

(declare-fun m!1451863 () Bool)

(assert (=> d!367077 m!1451863))

(assert (=> d!367077 m!1451819))

(assert (=> b!1299769 d!367077))

(declare-fun d!367079 () Bool)

(declare-fun lt!427531 () Unit!19152)

(declare-fun lemma!58 (List!13084 LexerInterface!1940 List!13084) Unit!19152)

(assert (=> d!367079 (= lt!427531 (lemma!58 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!51165 () Int)

(declare-datatypes ((List!13090 0))(
  ( (Nil!13024) (Cons!13024 (h!18425 Regex!3559) (t!117633 List!13090)) )
))
(declare-fun generalisedUnion!62 (List!13090) Regex!3559)

(declare-fun map!2834 (List!13084 Int) List!13090)

(assert (=> d!367079 (= (rulesRegex!130 thiss!19762 rules!2550) (generalisedUnion!62 (map!2834 rules!2550 lambda!51165)))))

(declare-fun bs!329184 () Bool)

(assert (= bs!329184 d!367079))

(declare-fun m!1451865 () Bool)

(assert (=> bs!329184 m!1451865))

(declare-fun m!1451867 () Bool)

(assert (=> bs!329184 m!1451867))

(assert (=> bs!329184 m!1451867))

(declare-fun m!1451869 () Bool)

(assert (=> bs!329184 m!1451869))

(assert (=> b!1299769 d!367079))

(declare-fun d!367081 () Bool)

(declare-fun lt!427532 () C!7408)

(assert (=> d!367081 (= lt!427532 (apply!2904 (list!4879 lt!427435) 0))))

(assert (=> d!367081 (= lt!427532 (apply!2905 (c!213934 lt!427435) 0))))

(declare-fun e!833590 () Bool)

(assert (=> d!367081 e!833590))

(declare-fun res!582336 () Bool)

(assert (=> d!367081 (=> (not res!582336) (not e!833590))))

(assert (=> d!367081 (= res!582336 (<= 0 0))))

(assert (=> d!367081 (= (apply!2899 lt!427435 0) lt!427532)))

(declare-fun b!1300149 () Bool)

(assert (=> b!1300149 (= e!833590 (< 0 (size!10643 lt!427435)))))

(assert (= (and d!367081 res!582336) b!1300149))

(assert (=> d!367081 m!1451755))

(assert (=> d!367081 m!1451755))

(declare-fun m!1451871 () Bool)

(assert (=> d!367081 m!1451871))

(declare-fun m!1451873 () Bool)

(assert (=> d!367081 m!1451873))

(assert (=> b!1300149 m!1451421))

(assert (=> b!1299769 d!367081))

(declare-fun d!367083 () Bool)

(declare-fun prefixMatchZipperSequence!158 (Regex!3559 BalanceConc!8490) Bool)

(declare-fun ++!3314 (BalanceConc!8490 BalanceConc!8490) BalanceConc!8490)

(declare-fun singletonSeq!830 (C!7408) BalanceConc!8490)

(assert (=> d!367083 (= (separableTokensPredicate!223 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!158 (rulesRegex!130 thiss!19762 rules!2550) (++!3314 (charsOf!1217 t1!34) (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0))))))))

(declare-fun bs!329185 () Bool)

(assert (= bs!329185 d!367083))

(assert (=> bs!329185 m!1451417))

(declare-fun m!1451875 () Bool)

(assert (=> bs!329185 m!1451875))

(declare-fun m!1451877 () Bool)

(assert (=> bs!329185 m!1451877))

(assert (=> bs!329185 m!1451409))

(declare-fun m!1451879 () Bool)

(assert (=> bs!329185 m!1451879))

(assert (=> bs!329185 m!1451875))

(assert (=> bs!329185 m!1451409))

(assert (=> bs!329185 m!1451417))

(assert (=> bs!329185 m!1451423))

(declare-fun m!1451881 () Bool)

(assert (=> bs!329185 m!1451881))

(assert (=> bs!329185 m!1451879))

(assert (=> bs!329185 m!1451423))

(assert (=> bs!329185 m!1451881))

(assert (=> b!1299790 d!367083))

(declare-fun b!1300163 () Bool)

(declare-fun e!833593 () Bool)

(declare-fun tp!379351 () Bool)

(declare-fun tp!379353 () Bool)

(assert (=> b!1300163 (= e!833593 (and tp!379351 tp!379353))))

(assert (=> b!1299772 (= tp!379286 e!833593)))

(declare-fun b!1300160 () Bool)

(declare-fun tp_is_empty!6595 () Bool)

(assert (=> b!1300160 (= e!833593 tp_is_empty!6595)))

(declare-fun b!1300161 () Bool)

(declare-fun tp!379352 () Bool)

(declare-fun tp!379350 () Bool)

(assert (=> b!1300161 (= e!833593 (and tp!379352 tp!379350))))

(declare-fun b!1300162 () Bool)

(declare-fun tp!379354 () Bool)

(assert (=> b!1300162 (= e!833593 tp!379354)))

(assert (= (and b!1299772 ((_ is ElementMatch!3559) (regex!2245 (rule!3984 t1!34)))) b!1300160))

(assert (= (and b!1299772 ((_ is Concat!5894) (regex!2245 (rule!3984 t1!34)))) b!1300161))

(assert (= (and b!1299772 ((_ is Star!3559) (regex!2245 (rule!3984 t1!34)))) b!1300162))

(assert (= (and b!1299772 ((_ is Union!3559) (regex!2245 (rule!3984 t1!34)))) b!1300163))

(declare-fun b!1300168 () Bool)

(declare-fun e!833596 () Bool)

(declare-fun tp!379357 () Bool)

(assert (=> b!1300168 (= e!833596 (and tp_is_empty!6595 tp!379357))))

(assert (=> b!1299788 (= tp!379290 e!833596)))

(assert (= (and b!1299788 ((_ is Cons!13016) (originalCharacters!3107 t2!34))) b!1300168))

(declare-fun b!1300169 () Bool)

(declare-fun e!833597 () Bool)

(declare-fun tp!379358 () Bool)

(assert (=> b!1300169 (= e!833597 (and tp_is_empty!6595 tp!379358))))

(assert (=> b!1299777 (= tp!379282 e!833597)))

(assert (= (and b!1299777 ((_ is Cons!13016) (originalCharacters!3107 t1!34))) b!1300169))

(declare-fun b!1300173 () Bool)

(declare-fun e!833598 () Bool)

(declare-fun tp!379360 () Bool)

(declare-fun tp!379362 () Bool)

(assert (=> b!1300173 (= e!833598 (and tp!379360 tp!379362))))

(assert (=> b!1299778 (= tp!379284 e!833598)))

(declare-fun b!1300170 () Bool)

(assert (=> b!1300170 (= e!833598 tp_is_empty!6595)))

(declare-fun b!1300171 () Bool)

(declare-fun tp!379361 () Bool)

(declare-fun tp!379359 () Bool)

(assert (=> b!1300171 (= e!833598 (and tp!379361 tp!379359))))

(declare-fun b!1300172 () Bool)

(declare-fun tp!379363 () Bool)

(assert (=> b!1300172 (= e!833598 tp!379363)))

(assert (= (and b!1299778 ((_ is ElementMatch!3559) (regex!2245 (h!18419 rules!2550)))) b!1300170))

(assert (= (and b!1299778 ((_ is Concat!5894) (regex!2245 (h!18419 rules!2550)))) b!1300171))

(assert (= (and b!1299778 ((_ is Star!3559) (regex!2245 (h!18419 rules!2550)))) b!1300172))

(assert (= (and b!1299778 ((_ is Union!3559) (regex!2245 (h!18419 rules!2550)))) b!1300173))

(declare-fun b!1300184 () Bool)

(declare-fun b_free!30891 () Bool)

(declare-fun b_next!31595 () Bool)

(assert (=> b!1300184 (= b_free!30891 (not b_next!31595))))

(declare-fun tp!379374 () Bool)

(declare-fun b_and!86743 () Bool)

(assert (=> b!1300184 (= tp!379374 b_and!86743)))

(declare-fun b_free!30893 () Bool)

(declare-fun b_next!31597 () Bool)

(assert (=> b!1300184 (= b_free!30893 (not b_next!31597))))

(declare-fun t!117627 () Bool)

(declare-fun tb!69605 () Bool)

(assert (=> (and b!1300184 (= (toChars!3315 (transformation!2245 (h!18419 (t!117593 rules!2550)))) (toChars!3315 (transformation!2245 (rule!3984 t2!34)))) t!117627) tb!69605))

(declare-fun result!84426 () Bool)

(assert (= result!84426 result!84406))

(assert (=> d!367047 t!117627))

(declare-fun t!117629 () Bool)

(declare-fun tb!69607 () Bool)

(assert (=> (and b!1300184 (= (toChars!3315 (transformation!2245 (h!18419 (t!117593 rules!2550)))) (toChars!3315 (transformation!2245 (rule!3984 t1!34)))) t!117629) tb!69607))

(declare-fun result!84428 () Bool)

(assert (= result!84428 result!84414))

(assert (=> b!1300133 t!117629))

(assert (=> b!1300136 t!117627))

(assert (=> d!367077 t!117629))

(declare-fun b_and!86745 () Bool)

(declare-fun tp!379372 () Bool)

(assert (=> b!1300184 (= tp!379372 (and (=> t!117627 result!84426) (=> t!117629 result!84428) b_and!86745))))

(declare-fun e!833608 () Bool)

(assert (=> b!1300184 (= e!833608 (and tp!379374 tp!379372))))

(declare-fun b!1300183 () Bool)

(declare-fun tp!379375 () Bool)

(declare-fun e!833607 () Bool)

(assert (=> b!1300183 (= e!833607 (and tp!379375 (inv!17445 (tag!2507 (h!18419 (t!117593 rules!2550)))) (inv!17448 (transformation!2245 (h!18419 (t!117593 rules!2550)))) e!833608))))

(declare-fun b!1300182 () Bool)

(declare-fun e!833609 () Bool)

(declare-fun tp!379373 () Bool)

(assert (=> b!1300182 (= e!833609 (and e!833607 tp!379373))))

(assert (=> b!1299775 (= tp!379288 e!833609)))

(assert (= b!1300183 b!1300184))

(assert (= b!1300182 b!1300183))

(assert (= (and b!1299775 ((_ is Cons!13018) (t!117593 rules!2550))) b!1300182))

(declare-fun m!1451883 () Bool)

(assert (=> b!1300183 m!1451883))

(declare-fun m!1451885 () Bool)

(assert (=> b!1300183 m!1451885))

(declare-fun b!1300188 () Bool)

(declare-fun e!833611 () Bool)

(declare-fun tp!379377 () Bool)

(declare-fun tp!379379 () Bool)

(assert (=> b!1300188 (= e!833611 (and tp!379377 tp!379379))))

(assert (=> b!1299780 (= tp!379283 e!833611)))

(declare-fun b!1300185 () Bool)

(assert (=> b!1300185 (= e!833611 tp_is_empty!6595)))

(declare-fun b!1300186 () Bool)

(declare-fun tp!379378 () Bool)

(declare-fun tp!379376 () Bool)

(assert (=> b!1300186 (= e!833611 (and tp!379378 tp!379376))))

(declare-fun b!1300187 () Bool)

(declare-fun tp!379380 () Bool)

(assert (=> b!1300187 (= e!833611 tp!379380)))

(assert (= (and b!1299780 ((_ is ElementMatch!3559) (regex!2245 (rule!3984 t2!34)))) b!1300185))

(assert (= (and b!1299780 ((_ is Concat!5894) (regex!2245 (rule!3984 t2!34)))) b!1300186))

(assert (= (and b!1299780 ((_ is Star!3559) (regex!2245 (rule!3984 t2!34)))) b!1300187))

(assert (= (and b!1299780 ((_ is Union!3559) (regex!2245 (rule!3984 t2!34)))) b!1300188))

(declare-fun b_lambda!37277 () Bool)

(assert (= b_lambda!37269 (or b!1299773 b_lambda!37277)))

(declare-fun bs!329186 () Bool)

(declare-fun d!367085 () Bool)

(assert (= bs!329186 (and d!367085 b!1299773)))

(declare-fun res!582337 () Bool)

(declare-fun e!833612 () Bool)

(assert (=> bs!329186 (=> (not res!582337) (not e!833612))))

(assert (=> bs!329186 (= res!582337 (matchR!1561 lt!427438 lt!427526))))

(assert (=> bs!329186 (= (dynLambda!5700 lambda!51147 lt!427526) e!833612)))

(declare-fun b!1300189 () Bool)

(declare-fun isPrefix!1062 (List!13082 List!13082) Bool)

(assert (=> b!1300189 (= e!833612 (isPrefix!1062 lt!427432 lt!427526))))

(assert (= (and bs!329186 res!582337) b!1300189))

(declare-fun m!1451887 () Bool)

(assert (=> bs!329186 m!1451887))

(declare-fun m!1451889 () Bool)

(assert (=> b!1300189 m!1451889))

(assert (=> d!367061 d!367085))

(declare-fun b_lambda!37279 () Bool)

(assert (= b_lambda!37267 (or (and b!1299793 b_free!30877) (and b!1299792 b_free!30881 (= (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (toChars!3315 (transformation!2245 (rule!3984 t2!34))))) (and b!1299781 b_free!30885 (= (toChars!3315 (transformation!2245 (h!18419 rules!2550))) (toChars!3315 (transformation!2245 (rule!3984 t2!34))))) (and b!1300184 b_free!30893 (= (toChars!3315 (transformation!2245 (h!18419 (t!117593 rules!2550)))) (toChars!3315 (transformation!2245 (rule!3984 t2!34))))) b_lambda!37279)))

(declare-fun b_lambda!37281 () Bool)

(assert (= b_lambda!37271 (or (and b!1299793 b_free!30877 (= (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (toChars!3315 (transformation!2245 (rule!3984 t1!34))))) (and b!1299792 b_free!30881) (and b!1299781 b_free!30885 (= (toChars!3315 (transformation!2245 (h!18419 rules!2550))) (toChars!3315 (transformation!2245 (rule!3984 t1!34))))) (and b!1300184 b_free!30893 (= (toChars!3315 (transformation!2245 (h!18419 (t!117593 rules!2550)))) (toChars!3315 (transformation!2245 (rule!3984 t1!34))))) b_lambda!37281)))

(declare-fun b_lambda!37283 () Bool)

(assert (= b_lambda!37273 (or (and b!1299793 b_free!30877) (and b!1299792 b_free!30881 (= (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (toChars!3315 (transformation!2245 (rule!3984 t2!34))))) (and b!1299781 b_free!30885 (= (toChars!3315 (transformation!2245 (h!18419 rules!2550))) (toChars!3315 (transformation!2245 (rule!3984 t2!34))))) (and b!1300184 b_free!30893 (= (toChars!3315 (transformation!2245 (h!18419 (t!117593 rules!2550)))) (toChars!3315 (transformation!2245 (rule!3984 t2!34))))) b_lambda!37283)))

(declare-fun b_lambda!37285 () Bool)

(assert (= b_lambda!37275 (or (and b!1299793 b_free!30877 (= (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (toChars!3315 (transformation!2245 (rule!3984 t1!34))))) (and b!1299792 b_free!30881) (and b!1299781 b_free!30885 (= (toChars!3315 (transformation!2245 (h!18419 rules!2550))) (toChars!3315 (transformation!2245 (rule!3984 t1!34))))) (and b!1300184 b_free!30893 (= (toChars!3315 (transformation!2245 (h!18419 (t!117593 rules!2550)))) (toChars!3315 (transformation!2245 (rule!3984 t1!34))))) b_lambda!37285)))

(check-sat (not d!367033) (not b!1300110) (not d!367047) (not b!1300169) (not d!367045) (not d!366941) (not b!1300037) (not b!1300011) (not b!1299987) (not b!1300127) b_and!86737 (not b!1300038) (not d!367021) (not b!1300187) (not b!1300105) b_and!86739 (not b!1300136) (not d!367073) (not d!367015) (not d!367059) b_and!86687 b_and!86745 (not d!367061) (not b!1300134) (not b_lambda!37279) (not b!1300161) b_and!86743 (not b!1300100) (not b!1299952) (not b!1300028) (not b!1300095) (not d!367063) (not tb!69593) (not b!1299953) (not b!1300168) tp_is_empty!6595 (not b!1300023) (not b!1300016) (not tb!69599) (not b!1300162) (not b!1300182) (not b!1300060) (not d!367025) (not b!1300020) (not b!1300056) (not b!1300173) (not b!1300149) (not b!1300171) (not b!1300120) (not b_lambda!37281) (not d!367029) (not b_next!31595) (not b!1300172) (not b!1300106) (not b!1300097) (not b!1300138) (not b_next!31587) (not bs!329186) (not b!1300189) (not d!367007) (not b!1300029) b_and!86741 (not d!367027) (not d!367071) (not b!1300148) (not d!367081) (not b!1299951) (not b_next!31579) (not b_lambda!37277) (not b!1300147) (not b!1300140) (not b!1300039) (not b!1300065) (not d!367035) (not b!1300040) (not b!1300057) (not b!1300014) (not b!1300186) (not b_next!31589) (not d!367049) (not b_lambda!37283) (not b!1300101) (not b!1300188) (not d!367031) (not b!1300055) (not b!1300051) (not d!367057) (not b_next!31597) (not d!367079) (not b_next!31581) (not b!1300183) (not d!367069) b_and!86679 (not d!367039) (not bm!89064) (not b!1300052) (not b!1300109) (not d!367075) (not b_next!31585) (not d!367083) (not d!367065) (not d!367077) (not b_lambda!37285) (not b!1300036) (not b!1300133) b_and!86683 (not d!367051) (not b!1300141) (not b!1300137) (not b!1300121) (not d!367055) (not b_next!31583) (not b!1300163) (not b!1300135))
(check-sat b_and!86737 b_and!86739 b_and!86743 (not b_next!31595) (not b_next!31587) b_and!86741 (not b_next!31579) (not b_next!31589) b_and!86679 (not b_next!31585) b_and!86683 (not b_next!31583) b_and!86687 b_and!86745 (not b_next!31597) (not b_next!31581))
(get-model)

(declare-fun bm!89074 () Bool)

(declare-fun call!89079 () Bool)

(assert (=> bm!89074 (= call!89079 (isEmpty!7737 (tail!1862 lt!427434)))))

(declare-fun b!1300270 () Bool)

(declare-fun res!582360 () Bool)

(declare-fun e!833658 () Bool)

(assert (=> b!1300270 (=> res!582360 e!833658)))

(declare-fun e!833659 () Bool)

(assert (=> b!1300270 (= res!582360 e!833659)))

(declare-fun res!582365 () Bool)

(assert (=> b!1300270 (=> (not res!582365) (not e!833659))))

(declare-fun lt!427548 () Bool)

(assert (=> b!1300270 (= res!582365 lt!427548)))

(declare-fun b!1300271 () Bool)

(assert (=> b!1300271 (= e!833659 (= (head!2234 (tail!1862 lt!427434)) (c!213933 (derivativeStep!887 lt!427438 (head!2234 lt!427434)))))))

(declare-fun b!1300272 () Bool)

(declare-fun e!833660 () Bool)

(assert (=> b!1300272 (= e!833660 (not lt!427548))))

(declare-fun b!1300273 () Bool)

(declare-fun res!582363 () Bool)

(declare-fun e!833656 () Bool)

(assert (=> b!1300273 (=> res!582363 e!833656)))

(assert (=> b!1300273 (= res!582363 (not (isEmpty!7737 (tail!1862 (tail!1862 lt!427434)))))))

(declare-fun b!1300274 () Bool)

(declare-fun e!833657 () Bool)

(assert (=> b!1300274 (= e!833658 e!833657)))

(declare-fun res!582362 () Bool)

(assert (=> b!1300274 (=> (not res!582362) (not e!833657))))

(assert (=> b!1300274 (= res!582362 (not lt!427548))))

(declare-fun b!1300275 () Bool)

(declare-fun e!833661 () Bool)

(assert (=> b!1300275 (= e!833661 (= lt!427548 call!89079))))

(declare-fun b!1300276 () Bool)

(declare-fun e!833662 () Bool)

(assert (=> b!1300276 (= e!833662 (nullable!1135 (derivativeStep!887 lt!427438 (head!2234 lt!427434))))))

(declare-fun b!1300277 () Bool)

(assert (=> b!1300277 (= e!833662 (matchR!1561 (derivativeStep!887 (derivativeStep!887 lt!427438 (head!2234 lt!427434)) (head!2234 (tail!1862 lt!427434))) (tail!1862 (tail!1862 lt!427434))))))

(declare-fun b!1300278 () Bool)

(assert (=> b!1300278 (= e!833661 e!833660)))

(declare-fun c!214024 () Bool)

(assert (=> b!1300278 (= c!214024 ((_ is EmptyLang!3559) (derivativeStep!887 lt!427438 (head!2234 lt!427434))))))

(declare-fun b!1300279 () Bool)

(declare-fun res!582364 () Bool)

(assert (=> b!1300279 (=> (not res!582364) (not e!833659))))

(assert (=> b!1300279 (= res!582364 (not call!89079))))

(declare-fun b!1300280 () Bool)

(declare-fun res!582359 () Bool)

(assert (=> b!1300280 (=> res!582359 e!833658)))

(assert (=> b!1300280 (= res!582359 (not ((_ is ElementMatch!3559) (derivativeStep!887 lt!427438 (head!2234 lt!427434)))))))

(assert (=> b!1300280 (= e!833660 e!833658)))

(declare-fun b!1300281 () Bool)

(declare-fun res!582361 () Bool)

(assert (=> b!1300281 (=> (not res!582361) (not e!833659))))

(assert (=> b!1300281 (= res!582361 (isEmpty!7737 (tail!1862 (tail!1862 lt!427434))))))

(declare-fun b!1300282 () Bool)

(assert (=> b!1300282 (= e!833656 (not (= (head!2234 (tail!1862 lt!427434)) (c!213933 (derivativeStep!887 lt!427438 (head!2234 lt!427434))))))))

(declare-fun d!367099 () Bool)

(assert (=> d!367099 e!833661))

(declare-fun c!214023 () Bool)

(assert (=> d!367099 (= c!214023 ((_ is EmptyExpr!3559) (derivativeStep!887 lt!427438 (head!2234 lt!427434))))))

(assert (=> d!367099 (= lt!427548 e!833662)))

(declare-fun c!214022 () Bool)

(assert (=> d!367099 (= c!214022 (isEmpty!7737 (tail!1862 lt!427434)))))

(assert (=> d!367099 (validRegex!1537 (derivativeStep!887 lt!427438 (head!2234 lt!427434)))))

(assert (=> d!367099 (= (matchR!1561 (derivativeStep!887 lt!427438 (head!2234 lt!427434)) (tail!1862 lt!427434)) lt!427548)))

(declare-fun b!1300283 () Bool)

(assert (=> b!1300283 (= e!833657 e!833656)))

(declare-fun res!582366 () Bool)

(assert (=> b!1300283 (=> res!582366 e!833656)))

(assert (=> b!1300283 (= res!582366 call!89079)))

(assert (= (and d!367099 c!214022) b!1300276))

(assert (= (and d!367099 (not c!214022)) b!1300277))

(assert (= (and d!367099 c!214023) b!1300275))

(assert (= (and d!367099 (not c!214023)) b!1300278))

(assert (= (and b!1300278 c!214024) b!1300272))

(assert (= (and b!1300278 (not c!214024)) b!1300280))

(assert (= (and b!1300280 (not res!582359)) b!1300270))

(assert (= (and b!1300270 res!582365) b!1300279))

(assert (= (and b!1300279 res!582364) b!1300281))

(assert (= (and b!1300281 res!582361) b!1300271))

(assert (= (and b!1300270 (not res!582360)) b!1300274))

(assert (= (and b!1300274 res!582362) b!1300283))

(assert (= (and b!1300283 (not res!582366)) b!1300273))

(assert (= (and b!1300273 (not res!582363)) b!1300282))

(assert (= (or b!1300275 b!1300279 b!1300283) bm!89074))

(assert (=> b!1300276 m!1451777))

(declare-fun m!1451943 () Bool)

(assert (=> b!1300276 m!1451943))

(assert (=> b!1300273 m!1451771))

(declare-fun m!1451945 () Bool)

(assert (=> b!1300273 m!1451945))

(assert (=> b!1300273 m!1451945))

(declare-fun m!1451947 () Bool)

(assert (=> b!1300273 m!1451947))

(assert (=> b!1300277 m!1451771))

(declare-fun m!1451949 () Bool)

(assert (=> b!1300277 m!1451949))

(assert (=> b!1300277 m!1451777))

(assert (=> b!1300277 m!1451949))

(declare-fun m!1451951 () Bool)

(assert (=> b!1300277 m!1451951))

(assert (=> b!1300277 m!1451771))

(assert (=> b!1300277 m!1451945))

(assert (=> b!1300277 m!1451951))

(assert (=> b!1300277 m!1451945))

(declare-fun m!1451953 () Bool)

(assert (=> b!1300277 m!1451953))

(assert (=> b!1300281 m!1451771))

(assert (=> b!1300281 m!1451945))

(assert (=> b!1300281 m!1451945))

(assert (=> b!1300281 m!1451947))

(assert (=> b!1300271 m!1451771))

(assert (=> b!1300271 m!1451949))

(assert (=> b!1300282 m!1451771))

(assert (=> b!1300282 m!1451949))

(assert (=> bm!89074 m!1451771))

(assert (=> bm!89074 m!1451773))

(assert (=> d!367099 m!1451771))

(assert (=> d!367099 m!1451773))

(assert (=> d!367099 m!1451777))

(declare-fun m!1451955 () Bool)

(assert (=> d!367099 m!1451955))

(assert (=> b!1300101 d!367099))

(declare-fun b!1300320 () Bool)

(declare-fun e!833685 () Regex!3559)

(assert (=> b!1300320 (= e!833685 EmptyLang!3559)))

(declare-fun d!367101 () Bool)

(declare-fun lt!427559 () Regex!3559)

(assert (=> d!367101 (validRegex!1537 lt!427559)))

(assert (=> d!367101 (= lt!427559 e!833685)))

(declare-fun c!214047 () Bool)

(assert (=> d!367101 (= c!214047 (or ((_ is EmptyExpr!3559) lt!427438) ((_ is EmptyLang!3559) lt!427438)))))

(assert (=> d!367101 (validRegex!1537 lt!427438)))

(assert (=> d!367101 (= (derivativeStep!887 lt!427438 (head!2234 lt!427434)) lt!427559)))

(declare-fun c!214044 () Bool)

(declare-fun bm!89087 () Bool)

(declare-fun call!89094 () Regex!3559)

(assert (=> bm!89087 (= call!89094 (derivativeStep!887 (ite c!214044 (regOne!7631 lt!427438) (regOne!7630 lt!427438)) (head!2234 lt!427434)))))

(declare-fun b!1300321 () Bool)

(declare-fun e!833681 () Regex!3559)

(declare-fun call!89093 () Regex!3559)

(assert (=> b!1300321 (= e!833681 (Union!3559 (Concat!5894 call!89093 (regTwo!7630 lt!427438)) EmptyLang!3559))))

(declare-fun b!1300322 () Bool)

(declare-fun e!833682 () Regex!3559)

(declare-fun call!89095 () Regex!3559)

(assert (=> b!1300322 (= e!833682 (Concat!5894 call!89095 lt!427438))))

(declare-fun bm!89088 () Bool)

(declare-fun call!89092 () Regex!3559)

(declare-fun c!214043 () Bool)

(declare-fun c!214046 () Bool)

(assert (=> bm!89088 (= call!89092 (derivativeStep!887 (ite c!214044 (regTwo!7631 lt!427438) (ite c!214043 (reg!3888 lt!427438) (ite c!214046 (regTwo!7630 lt!427438) (regOne!7630 lt!427438)))) (head!2234 lt!427434)))))

(declare-fun b!1300323 () Bool)

(assert (=> b!1300323 (= c!214046 (nullable!1135 (regOne!7630 lt!427438)))))

(assert (=> b!1300323 (= e!833682 e!833681)))

(declare-fun b!1300324 () Bool)

(assert (=> b!1300324 (= c!214044 ((_ is Union!3559) lt!427438))))

(declare-fun e!833683 () Regex!3559)

(declare-fun e!833684 () Regex!3559)

(assert (=> b!1300324 (= e!833683 e!833684)))

(declare-fun bm!89089 () Bool)

(assert (=> bm!89089 (= call!89095 call!89092)))

(declare-fun b!1300325 () Bool)

(assert (=> b!1300325 (= e!833684 e!833682)))

(assert (=> b!1300325 (= c!214043 ((_ is Star!3559) lt!427438))))

(declare-fun b!1300326 () Bool)

(assert (=> b!1300326 (= e!833684 (Union!3559 call!89094 call!89092))))

(declare-fun b!1300327 () Bool)

(assert (=> b!1300327 (= e!833681 (Union!3559 (Concat!5894 call!89094 (regTwo!7630 lt!427438)) call!89093))))

(declare-fun b!1300328 () Bool)

(assert (=> b!1300328 (= e!833683 (ite (= (head!2234 lt!427434) (c!213933 lt!427438)) EmptyExpr!3559 EmptyLang!3559))))

(declare-fun bm!89090 () Bool)

(assert (=> bm!89090 (= call!89093 call!89095)))

(declare-fun b!1300329 () Bool)

(assert (=> b!1300329 (= e!833685 e!833683)))

(declare-fun c!214045 () Bool)

(assert (=> b!1300329 (= c!214045 ((_ is ElementMatch!3559) lt!427438))))

(assert (= (and d!367101 c!214047) b!1300320))

(assert (= (and d!367101 (not c!214047)) b!1300329))

(assert (= (and b!1300329 c!214045) b!1300328))

(assert (= (and b!1300329 (not c!214045)) b!1300324))

(assert (= (and b!1300324 c!214044) b!1300326))

(assert (= (and b!1300324 (not c!214044)) b!1300325))

(assert (= (and b!1300325 c!214043) b!1300322))

(assert (= (and b!1300325 (not c!214043)) b!1300323))

(assert (= (and b!1300323 c!214046) b!1300327))

(assert (= (and b!1300323 (not c!214046)) b!1300321))

(assert (= (or b!1300327 b!1300321) bm!89090))

(assert (= (or b!1300322 bm!89090) bm!89089))

(assert (= (or b!1300326 b!1300327) bm!89087))

(assert (= (or b!1300326 bm!89089) bm!89088))

(declare-fun m!1451975 () Bool)

(assert (=> d!367101 m!1451975))

(assert (=> d!367101 m!1451701))

(assert (=> bm!89087 m!1451775))

(declare-fun m!1451977 () Bool)

(assert (=> bm!89087 m!1451977))

(assert (=> bm!89088 m!1451775))

(declare-fun m!1451979 () Bool)

(assert (=> bm!89088 m!1451979))

(declare-fun m!1451981 () Bool)

(assert (=> b!1300323 m!1451981))

(assert (=> b!1300101 d!367101))

(declare-fun d!367117 () Bool)

(assert (=> d!367117 (= (head!2234 lt!427434) (h!18417 lt!427434))))

(assert (=> b!1300101 d!367117))

(declare-fun d!367119 () Bool)

(assert (=> d!367119 (= (tail!1862 lt!427434) (t!117591 lt!427434))))

(assert (=> b!1300101 d!367119))

(declare-fun d!367121 () Bool)

(assert (=> d!367121 (= (isEmpty!7737 lt!427434) ((_ is Nil!13016) lt!427434))))

(assert (=> d!367049 d!367121))

(declare-fun b!1300369 () Bool)

(declare-fun e!833718 () Bool)

(declare-fun e!833716 () Bool)

(assert (=> b!1300369 (= e!833718 e!833716)))

(declare-fun res!582389 () Bool)

(assert (=> b!1300369 (=> (not res!582389) (not e!833716))))

(declare-fun call!89103 () Bool)

(assert (=> b!1300369 (= res!582389 call!89103)))

(declare-fun bm!89097 () Bool)

(declare-fun call!89104 () Bool)

(assert (=> bm!89097 (= call!89103 call!89104)))

(declare-fun b!1300370 () Bool)

(declare-fun e!833719 () Bool)

(declare-fun call!89102 () Bool)

(assert (=> b!1300370 (= e!833719 call!89102)))

(declare-fun b!1300371 () Bool)

(assert (=> b!1300371 (= e!833716 call!89102)))

(declare-fun b!1300372 () Bool)

(declare-fun e!833717 () Bool)

(declare-fun e!833714 () Bool)

(assert (=> b!1300372 (= e!833717 e!833714)))

(declare-fun c!214058 () Bool)

(assert (=> b!1300372 (= c!214058 ((_ is Union!3559) lt!427438))))

(declare-fun b!1300373 () Bool)

(declare-fun res!582387 () Bool)

(assert (=> b!1300373 (=> (not res!582387) (not e!833719))))

(assert (=> b!1300373 (= res!582387 call!89103)))

(assert (=> b!1300373 (= e!833714 e!833719)))

(declare-fun bm!89099 () Bool)

(assert (=> bm!89099 (= call!89102 (validRegex!1537 (ite c!214058 (regTwo!7631 lt!427438) (regTwo!7630 lt!427438))))))

(declare-fun b!1300374 () Bool)

(declare-fun e!833715 () Bool)

(assert (=> b!1300374 (= e!833715 e!833717)))

(declare-fun c!214059 () Bool)

(assert (=> b!1300374 (= c!214059 ((_ is Star!3559) lt!427438))))

(declare-fun b!1300375 () Bool)

(declare-fun e!833720 () Bool)

(assert (=> b!1300375 (= e!833717 e!833720)))

(declare-fun res!582388 () Bool)

(assert (=> b!1300375 (= res!582388 (not (nullable!1135 (reg!3888 lt!427438))))))

(assert (=> b!1300375 (=> (not res!582388) (not e!833720))))

(declare-fun d!367125 () Bool)

(declare-fun res!582390 () Bool)

(assert (=> d!367125 (=> res!582390 e!833715)))

(assert (=> d!367125 (= res!582390 ((_ is ElementMatch!3559) lt!427438))))

(assert (=> d!367125 (= (validRegex!1537 lt!427438) e!833715)))

(declare-fun bm!89098 () Bool)

(assert (=> bm!89098 (= call!89104 (validRegex!1537 (ite c!214059 (reg!3888 lt!427438) (ite c!214058 (regOne!7631 lt!427438) (regOne!7630 lt!427438)))))))

(declare-fun b!1300376 () Bool)

(assert (=> b!1300376 (= e!833720 call!89104)))

(declare-fun b!1300377 () Bool)

(declare-fun res!582386 () Bool)

(assert (=> b!1300377 (=> res!582386 e!833718)))

(assert (=> b!1300377 (= res!582386 (not ((_ is Concat!5894) lt!427438)))))

(assert (=> b!1300377 (= e!833714 e!833718)))

(assert (= (and d!367125 (not res!582390)) b!1300374))

(assert (= (and b!1300374 c!214059) b!1300375))

(assert (= (and b!1300374 (not c!214059)) b!1300372))

(assert (= (and b!1300375 res!582388) b!1300376))

(assert (= (and b!1300372 c!214058) b!1300373))

(assert (= (and b!1300372 (not c!214058)) b!1300377))

(assert (= (and b!1300373 res!582387) b!1300370))

(assert (= (and b!1300377 (not res!582386)) b!1300369))

(assert (= (and b!1300369 res!582389) b!1300371))

(assert (= (or b!1300373 b!1300369) bm!89097))

(assert (= (or b!1300370 b!1300371) bm!89099))

(assert (= (or b!1300376 bm!89097) bm!89098))

(declare-fun m!1452011 () Bool)

(assert (=> bm!89099 m!1452011))

(declare-fun m!1452013 () Bool)

(assert (=> b!1300375 m!1452013))

(declare-fun m!1452015 () Bool)

(assert (=> bm!89098 m!1452015))

(assert (=> d!367049 d!367125))

(declare-fun b!1300400 () Bool)

(declare-fun e!833732 () List!13082)

(assert (=> b!1300400 (= e!833732 Nil!13016)))

(declare-fun d!367139 () Bool)

(declare-fun c!214071 () Bool)

(assert (=> d!367139 (= c!214071 ((_ is Empty!4275) (c!213934 lt!427436)))))

(assert (=> d!367139 (= (list!4883 (c!213934 lt!427436)) e!833732)))

(declare-fun b!1300402 () Bool)

(declare-fun e!833733 () List!13082)

(declare-fun list!4884 (IArray!8555) List!13082)

(assert (=> b!1300402 (= e!833733 (list!4884 (xs!6990 (c!213934 lt!427436))))))

(declare-fun b!1300401 () Bool)

(assert (=> b!1300401 (= e!833732 e!833733)))

(declare-fun c!214072 () Bool)

(assert (=> b!1300401 (= c!214072 ((_ is Leaf!6594) (c!213934 lt!427436)))))

(declare-fun b!1300403 () Bool)

(assert (=> b!1300403 (= e!833733 (++!3312 (list!4883 (left!11195 (c!213934 lt!427436))) (list!4883 (right!11525 (c!213934 lt!427436)))))))

(assert (= (and d!367139 c!214071) b!1300400))

(assert (= (and d!367139 (not c!214071)) b!1300401))

(assert (= (and b!1300401 c!214072) b!1300402))

(assert (= (and b!1300401 (not c!214072)) b!1300403))

(declare-fun m!1452031 () Bool)

(assert (=> b!1300402 m!1452031))

(declare-fun m!1452033 () Bool)

(assert (=> b!1300403 m!1452033))

(declare-fun m!1452035 () Bool)

(assert (=> b!1300403 m!1452035))

(assert (=> b!1300403 m!1452033))

(assert (=> b!1300403 m!1452035))

(declare-fun m!1452037 () Bool)

(assert (=> b!1300403 m!1452037))

(assert (=> d!367071 d!367139))

(declare-fun d!367151 () Bool)

(declare-fun c!214075 () Bool)

(assert (=> d!367151 (= c!214075 ((_ is Nil!13016) lt!427520))))

(declare-fun e!833736 () (InoxSet C!7408))

(assert (=> d!367151 (= (content!1841 lt!427520) e!833736)))

(declare-fun b!1300408 () Bool)

(assert (=> b!1300408 (= e!833736 ((as const (Array C!7408 Bool)) false))))

(declare-fun b!1300409 () Bool)

(assert (=> b!1300409 (= e!833736 ((_ map or) (store ((as const (Array C!7408 Bool)) false) (h!18417 lt!427520) true) (content!1841 (t!117591 lt!427520))))))

(assert (= (and d!367151 c!214075) b!1300408))

(assert (= (and d!367151 (not c!214075)) b!1300409))

(declare-fun m!1452045 () Bool)

(assert (=> b!1300409 m!1452045))

(declare-fun m!1452047 () Bool)

(assert (=> b!1300409 m!1452047))

(assert (=> d!367057 d!367151))

(declare-fun d!367155 () Bool)

(declare-fun c!214076 () Bool)

(assert (=> d!367155 (= c!214076 ((_ is Nil!13016) lt!427432))))

(declare-fun e!833737 () (InoxSet C!7408))

(assert (=> d!367155 (= (content!1841 lt!427432) e!833737)))

(declare-fun b!1300410 () Bool)

(assert (=> b!1300410 (= e!833737 ((as const (Array C!7408 Bool)) false))))

(declare-fun b!1300411 () Bool)

(assert (=> b!1300411 (= e!833737 ((_ map or) (store ((as const (Array C!7408 Bool)) false) (h!18417 lt!427432) true) (content!1841 (t!117591 lt!427432))))))

(assert (= (and d!367155 c!214076) b!1300410))

(assert (= (and d!367155 (not c!214076)) b!1300411))

(declare-fun m!1452049 () Bool)

(assert (=> b!1300411 m!1452049))

(declare-fun m!1452051 () Bool)

(assert (=> b!1300411 m!1452051))

(assert (=> d!367057 d!367155))

(declare-fun d!367157 () Bool)

(declare-fun c!214077 () Bool)

(assert (=> d!367157 (= c!214077 ((_ is Nil!13016) (getSuffix!415 lt!427434 lt!427432)))))

(declare-fun e!833738 () (InoxSet C!7408))

(assert (=> d!367157 (= (content!1841 (getSuffix!415 lt!427434 lt!427432)) e!833738)))

(declare-fun b!1300412 () Bool)

(assert (=> b!1300412 (= e!833738 ((as const (Array C!7408 Bool)) false))))

(declare-fun b!1300413 () Bool)

(assert (=> b!1300413 (= e!833738 ((_ map or) (store ((as const (Array C!7408 Bool)) false) (h!18417 (getSuffix!415 lt!427434 lt!427432)) true) (content!1841 (t!117591 (getSuffix!415 lt!427434 lt!427432)))))))

(assert (= (and d!367157 c!214077) b!1300412))

(assert (= (and d!367157 (not c!214077)) b!1300413))

(declare-fun m!1452053 () Bool)

(assert (=> b!1300413 m!1452053))

(declare-fun m!1452055 () Bool)

(assert (=> b!1300413 m!1452055))

(assert (=> d!367057 d!367157))

(declare-fun d!367159 () Bool)

(declare-fun lt!427572 () Bool)

(assert (=> d!367159 (= lt!427572 (isEmpty!7737 (list!4879 (_2!7243 lt!427486))))))

(declare-fun isEmpty!7739 (Conc!4275) Bool)

(assert (=> d!367159 (= lt!427572 (isEmpty!7739 (c!213934 (_2!7243 lt!427486))))))

(assert (=> d!367159 (= (isEmpty!7736 (_2!7243 lt!427486)) lt!427572)))

(declare-fun bs!329196 () Bool)

(assert (= bs!329196 d!367159))

(declare-fun m!1452057 () Bool)

(assert (=> bs!329196 m!1452057))

(assert (=> bs!329196 m!1452057))

(declare-fun m!1452059 () Bool)

(assert (=> bs!329196 m!1452059))

(declare-fun m!1452061 () Bool)

(assert (=> bs!329196 m!1452061))

(assert (=> b!1299952 d!367159))

(assert (=> d!367031 d!367155))

(declare-fun d!367161 () Bool)

(assert (=> d!367161 (= (isEmpty!7737 (tail!1862 lt!427434)) ((_ is Nil!13016) (tail!1862 lt!427434)))))

(assert (=> b!1300105 d!367161))

(assert (=> b!1300105 d!367119))

(declare-fun d!367163 () Bool)

(declare-fun lt!427573 () Bool)

(assert (=> d!367163 (= lt!427573 (isEmpty!7737 (list!4879 (_2!7243 lt!427506))))))

(assert (=> d!367163 (= lt!427573 (isEmpty!7739 (c!213934 (_2!7243 lt!427506))))))

(assert (=> d!367163 (= (isEmpty!7736 (_2!7243 lt!427506)) lt!427573)))

(declare-fun bs!329197 () Bool)

(assert (= bs!329197 d!367163))

(declare-fun m!1452063 () Bool)

(assert (=> bs!329197 m!1452063))

(assert (=> bs!329197 m!1452063))

(declare-fun m!1452065 () Bool)

(assert (=> bs!329197 m!1452065))

(declare-fun m!1452067 () Bool)

(assert (=> bs!329197 m!1452067))

(assert (=> b!1300039 d!367163))

(declare-fun d!367165 () Bool)

(assert (=> d!367165 true))

(declare-fun order!7917 () Int)

(declare-fun lambda!51180 () Int)

(declare-fun order!7915 () Int)

(declare-fun dynLambda!5704 (Int Int) Int)

(declare-fun dynLambda!5705 (Int Int) Int)

(assert (=> d!367165 (< (dynLambda!5704 order!7915 (toValue!3456 (transformation!2245 (rule!3984 t1!34)))) (dynLambda!5705 order!7917 lambda!51180))))

(declare-fun Forall2!413 (Int) Bool)

(assert (=> d!367165 (= (equivClasses!815 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (toValue!3456 (transformation!2245 (rule!3984 t1!34)))) (Forall2!413 lambda!51180))))

(declare-fun bs!329198 () Bool)

(assert (= bs!329198 d!367165))

(declare-fun m!1452069 () Bool)

(assert (=> bs!329198 m!1452069))

(assert (=> b!1300014 d!367165))

(declare-fun d!367167 () Bool)

(declare-fun res!582397 () Bool)

(declare-fun e!833745 () Bool)

(assert (=> d!367167 (=> res!582397 e!833745)))

(assert (=> d!367167 (= res!582397 ((_ is Nil!13018) rules!2550))))

(assert (=> d!367167 (= (noDuplicateTag!825 thiss!19762 rules!2550 Nil!13023) e!833745)))

(declare-fun b!1300422 () Bool)

(declare-fun e!833746 () Bool)

(assert (=> b!1300422 (= e!833745 e!833746)))

(declare-fun res!582398 () Bool)

(assert (=> b!1300422 (=> (not res!582398) (not e!833746))))

(declare-fun contains!2184 (List!13089 String!15911) Bool)

(assert (=> b!1300422 (= res!582398 (not (contains!2184 Nil!13023 (tag!2507 (h!18419 rules!2550)))))))

(declare-fun b!1300423 () Bool)

(assert (=> b!1300423 (= e!833746 (noDuplicateTag!825 thiss!19762 (t!117593 rules!2550) (Cons!13023 (tag!2507 (h!18419 rules!2550)) Nil!13023)))))

(assert (= (and d!367167 (not res!582397)) b!1300422))

(assert (= (and b!1300422 res!582398) b!1300423))

(declare-fun m!1452071 () Bool)

(assert (=> b!1300422 m!1452071))

(declare-fun m!1452073 () Bool)

(assert (=> b!1300423 m!1452073))

(assert (=> b!1299987 d!367167))

(declare-fun d!367169 () Bool)

(declare-fun lt!427574 () Bool)

(assert (=> d!367169 (= lt!427574 (select (content!1841 (t!117591 lt!427432)) lt!427431))))

(declare-fun e!833748 () Bool)

(assert (=> d!367169 (= lt!427574 e!833748)))

(declare-fun res!582399 () Bool)

(assert (=> d!367169 (=> (not res!582399) (not e!833748))))

(assert (=> d!367169 (= res!582399 ((_ is Cons!13016) (t!117591 lt!427432)))))

(assert (=> d!367169 (= (contains!2183 (t!117591 lt!427432) lt!427431) lt!427574)))

(declare-fun b!1300424 () Bool)

(declare-fun e!833747 () Bool)

(assert (=> b!1300424 (= e!833748 e!833747)))

(declare-fun res!582400 () Bool)

(assert (=> b!1300424 (=> res!582400 e!833747)))

(assert (=> b!1300424 (= res!582400 (= (h!18417 (t!117591 lt!427432)) lt!427431))))

(declare-fun b!1300425 () Bool)

(assert (=> b!1300425 (= e!833747 (contains!2183 (t!117591 (t!117591 lt!427432)) lt!427431))))

(assert (= (and d!367169 res!582399) b!1300424))

(assert (= (and b!1300424 (not res!582400)) b!1300425))

(assert (=> d!367169 m!1452051))

(declare-fun m!1452075 () Bool)

(assert (=> d!367169 m!1452075))

(declare-fun m!1452077 () Bool)

(assert (=> b!1300425 m!1452077))

(assert (=> b!1300109 d!367169))

(declare-fun d!367171 () Bool)

(assert (=> d!367171 true))

(declare-fun order!7919 () Int)

(declare-fun order!7921 () Int)

(declare-fun lambda!51183 () Int)

(declare-fun dynLambda!5706 (Int Int) Int)

(declare-fun dynLambda!5707 (Int Int) Int)

(assert (=> d!367171 (< (dynLambda!5706 order!7919 (toChars!3315 (transformation!2245 (rule!3984 t1!34)))) (dynLambda!5707 order!7921 lambda!51183))))

(assert (=> d!367171 true))

(assert (=> d!367171 (< (dynLambda!5704 order!7915 (toValue!3456 (transformation!2245 (rule!3984 t1!34)))) (dynLambda!5707 order!7921 lambda!51183))))

(declare-fun Forall!510 (Int) Bool)

(assert (=> d!367171 (= (semiInverseModEq!856 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (toValue!3456 (transformation!2245 (rule!3984 t1!34)))) (Forall!510 lambda!51183))))

(declare-fun bs!329199 () Bool)

(assert (= bs!329199 d!367171))

(declare-fun m!1452079 () Bool)

(assert (=> bs!329199 m!1452079))

(assert (=> d!367021 d!367171))

(declare-fun d!367173 () Bool)

(declare-fun lostCauseFct!105 (Regex!3559) Bool)

(assert (=> d!367173 (= (lostCause!264 lt!427438) (lostCauseFct!105 lt!427438))))

(declare-fun bs!329200 () Bool)

(assert (= bs!329200 d!367173))

(declare-fun m!1452081 () Bool)

(assert (=> bs!329200 m!1452081))

(assert (=> b!1300147 d!367173))

(declare-fun d!367175 () Bool)

(declare-fun res!582401 () Bool)

(declare-fun e!833749 () Bool)

(assert (=> d!367175 (=> res!582401 e!833749)))

(assert (=> d!367175 (= res!582401 (not ((_ is Cons!13018) (t!117593 rules!2550))))))

(assert (=> d!367175 (= (sepAndNonSepRulesDisjointChars!618 rules!2550 (t!117593 rules!2550)) e!833749)))

(declare-fun b!1300430 () Bool)

(declare-fun e!833750 () Bool)

(assert (=> b!1300430 (= e!833749 e!833750)))

(declare-fun res!582402 () Bool)

(assert (=> b!1300430 (=> (not res!582402) (not e!833750))))

(assert (=> b!1300430 (= res!582402 (ruleDisjointCharsFromAllFromOtherType!300 (h!18419 (t!117593 rules!2550)) rules!2550))))

(declare-fun b!1300431 () Bool)

(assert (=> b!1300431 (= e!833750 (sepAndNonSepRulesDisjointChars!618 rules!2550 (t!117593 (t!117593 rules!2550))))))

(assert (= (and d!367175 (not res!582401)) b!1300430))

(assert (= (and b!1300430 res!582402) b!1300431))

(declare-fun m!1452083 () Bool)

(assert (=> b!1300430 m!1452083))

(declare-fun m!1452085 () Bool)

(assert (=> b!1300431 m!1452085))

(assert (=> b!1300037 d!367175))

(declare-fun d!367177 () Bool)

(declare-fun c!214078 () Bool)

(assert (=> d!367177 (= c!214078 ((_ is Nil!13016) lt!427527))))

(declare-fun e!833751 () (InoxSet C!7408))

(assert (=> d!367177 (= (content!1841 lt!427527) e!833751)))

(declare-fun b!1300432 () Bool)

(assert (=> b!1300432 (= e!833751 ((as const (Array C!7408 Bool)) false))))

(declare-fun b!1300433 () Bool)

(assert (=> b!1300433 (= e!833751 ((_ map or) (store ((as const (Array C!7408 Bool)) false) (h!18417 lt!427527) true) (content!1841 (t!117591 lt!427527))))))

(assert (= (and d!367177 c!214078) b!1300432))

(assert (= (and d!367177 (not c!214078)) b!1300433))

(declare-fun m!1452087 () Bool)

(assert (=> b!1300433 m!1452087))

(declare-fun m!1452089 () Bool)

(assert (=> b!1300433 m!1452089))

(assert (=> d!367073 d!367177))

(declare-fun d!367179 () Bool)

(declare-fun c!214079 () Bool)

(assert (=> d!367179 (= c!214079 ((_ is Nil!13016) lt!427437))))

(declare-fun e!833752 () (InoxSet C!7408))

(assert (=> d!367179 (= (content!1841 lt!427437) e!833752)))

(declare-fun b!1300434 () Bool)

(assert (=> b!1300434 (= e!833752 ((as const (Array C!7408 Bool)) false))))

(declare-fun b!1300435 () Bool)

(assert (=> b!1300435 (= e!833752 ((_ map or) (store ((as const (Array C!7408 Bool)) false) (h!18417 lt!427437) true) (content!1841 (t!117591 lt!427437))))))

(assert (= (and d!367179 c!214079) b!1300434))

(assert (= (and d!367179 (not c!214079)) b!1300435))

(declare-fun m!1452091 () Bool)

(assert (=> b!1300435 m!1452091))

(declare-fun m!1452093 () Bool)

(assert (=> b!1300435 m!1452093))

(assert (=> d!367073 d!367179))

(declare-fun d!367181 () Bool)

(declare-fun c!214080 () Bool)

(assert (=> d!367181 (= c!214080 ((_ is Nil!13016) (Cons!13016 lt!427431 Nil!13016)))))

(declare-fun e!833753 () (InoxSet C!7408))

(assert (=> d!367181 (= (content!1841 (Cons!13016 lt!427431 Nil!13016)) e!833753)))

(declare-fun b!1300436 () Bool)

(assert (=> b!1300436 (= e!833753 ((as const (Array C!7408 Bool)) false))))

(declare-fun b!1300437 () Bool)

(assert (=> b!1300437 (= e!833753 ((_ map or) (store ((as const (Array C!7408 Bool)) false) (h!18417 (Cons!13016 lt!427431 Nil!13016)) true) (content!1841 (t!117591 (Cons!13016 lt!427431 Nil!13016)))))))

(assert (= (and d!367181 c!214080) b!1300436))

(assert (= (and d!367181 (not c!214080)) b!1300437))

(declare-fun m!1452095 () Bool)

(assert (=> b!1300437 m!1452095))

(declare-fun m!1452097 () Bool)

(assert (=> b!1300437 m!1452097))

(assert (=> d!367073 d!367181))

(declare-fun d!367183 () Bool)

(assert (=> d!367183 (= (list!4879 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34))) (list!4883 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34)))))))

(declare-fun bs!329201 () Bool)

(assert (= bs!329201 d!367183))

(declare-fun m!1452099 () Bool)

(assert (=> bs!329201 m!1452099))

(assert (=> b!1300133 d!367183))

(declare-fun d!367185 () Bool)

(declare-fun c!214083 () Bool)

(assert (=> d!367185 (= c!214083 ((_ is Node!4275) (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34)))))))

(declare-fun e!833758 () Bool)

(assert (=> d!367185 (= (inv!17452 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34)))) e!833758)))

(declare-fun b!1300444 () Bool)

(declare-fun inv!17456 (Conc!4275) Bool)

(assert (=> b!1300444 (= e!833758 (inv!17456 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34)))))))

(declare-fun b!1300445 () Bool)

(declare-fun e!833759 () Bool)

(assert (=> b!1300445 (= e!833758 e!833759)))

(declare-fun res!582405 () Bool)

(assert (=> b!1300445 (= res!582405 (not ((_ is Leaf!6594) (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34))))))))

(assert (=> b!1300445 (=> res!582405 e!833759)))

(declare-fun b!1300446 () Bool)

(declare-fun inv!17457 (Conc!4275) Bool)

(assert (=> b!1300446 (= e!833759 (inv!17457 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34)))))))

(assert (= (and d!367185 c!214083) b!1300444))

(assert (= (and d!367185 (not c!214083)) b!1300445))

(assert (= (and b!1300445 (not res!582405)) b!1300446))

(declare-fun m!1452101 () Bool)

(assert (=> b!1300444 m!1452101))

(declare-fun m!1452103 () Bool)

(assert (=> b!1300446 m!1452103))

(assert (=> b!1300065 d!367185))

(declare-fun d!367187 () Bool)

(assert (=> d!367187 (= (isEmpty!7737 (originalCharacters!3107 t2!34)) ((_ is Nil!13016) (originalCharacters!3107 t2!34)))))

(assert (=> d!367065 d!367187))

(declare-fun bs!329202 () Bool)

(declare-fun d!367189 () Bool)

(assert (= bs!329202 (and d!367189 d!367171)))

(declare-fun lambda!51184 () Int)

(assert (=> bs!329202 (= (and (= (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (toChars!3315 (transformation!2245 (rule!3984 t1!34)))) (= (toValue!3456 (transformation!2245 (rule!3984 t2!34))) (toValue!3456 (transformation!2245 (rule!3984 t1!34))))) (= lambda!51184 lambda!51183))))

(assert (=> d!367189 true))

(assert (=> d!367189 (< (dynLambda!5706 order!7919 (toChars!3315 (transformation!2245 (rule!3984 t2!34)))) (dynLambda!5707 order!7921 lambda!51184))))

(assert (=> d!367189 true))

(assert (=> d!367189 (< (dynLambda!5704 order!7915 (toValue!3456 (transformation!2245 (rule!3984 t2!34)))) (dynLambda!5707 order!7921 lambda!51184))))

(assert (=> d!367189 (= (semiInverseModEq!856 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (toValue!3456 (transformation!2245 (rule!3984 t2!34)))) (Forall!510 lambda!51184))))

(declare-fun bs!329203 () Bool)

(assert (= bs!329203 d!367189))

(declare-fun m!1452105 () Bool)

(assert (=> bs!329203 m!1452105))

(assert (=> d!367069 d!367189))

(declare-fun d!367191 () Bool)

(declare-fun lt!427575 () Int)

(assert (=> d!367191 (= lt!427575 (size!10648 (list!4879 lt!427436)))))

(assert (=> d!367191 (= lt!427575 (size!10649 (c!213934 lt!427436)))))

(assert (=> d!367191 (= (size!10643 lt!427436) lt!427575)))

(declare-fun bs!329204 () Bool)

(assert (= bs!329204 d!367191))

(assert (=> bs!329204 m!1451419))

(assert (=> bs!329204 m!1451419))

(declare-fun m!1452107 () Bool)

(assert (=> bs!329204 m!1452107))

(declare-fun m!1452109 () Bool)

(assert (=> bs!329204 m!1452109))

(assert (=> b!1300023 d!367191))

(declare-fun d!367193 () Bool)

(declare-fun lt!427578 () Int)

(assert (=> d!367193 (>= lt!427578 0)))

(declare-fun e!833762 () Int)

(assert (=> d!367193 (= lt!427578 e!833762)))

(declare-fun c!214086 () Bool)

(assert (=> d!367193 (= c!214086 ((_ is Nil!13016) lt!427520))))

(assert (=> d!367193 (= (size!10648 lt!427520) lt!427578)))

(declare-fun b!1300451 () Bool)

(assert (=> b!1300451 (= e!833762 0)))

(declare-fun b!1300452 () Bool)

(assert (=> b!1300452 (= e!833762 (+ 1 (size!10648 (t!117591 lt!427520))))))

(assert (= (and d!367193 c!214086) b!1300451))

(assert (= (and d!367193 (not c!214086)) b!1300452))

(declare-fun m!1452111 () Bool)

(assert (=> b!1300452 m!1452111))

(assert (=> b!1300121 d!367193))

(declare-fun d!367195 () Bool)

(declare-fun lt!427579 () Int)

(assert (=> d!367195 (>= lt!427579 0)))

(declare-fun e!833763 () Int)

(assert (=> d!367195 (= lt!427579 e!833763)))

(declare-fun c!214087 () Bool)

(assert (=> d!367195 (= c!214087 ((_ is Nil!13016) lt!427432))))

(assert (=> d!367195 (= (size!10648 lt!427432) lt!427579)))

(declare-fun b!1300453 () Bool)

(assert (=> b!1300453 (= e!833763 0)))

(declare-fun b!1300454 () Bool)

(assert (=> b!1300454 (= e!833763 (+ 1 (size!10648 (t!117591 lt!427432))))))

(assert (= (and d!367195 c!214087) b!1300453))

(assert (= (and d!367195 (not c!214087)) b!1300454))

(declare-fun m!1452113 () Bool)

(assert (=> b!1300454 m!1452113))

(assert (=> b!1300121 d!367195))

(declare-fun d!367197 () Bool)

(declare-fun lt!427580 () Int)

(assert (=> d!367197 (>= lt!427580 0)))

(declare-fun e!833764 () Int)

(assert (=> d!367197 (= lt!427580 e!833764)))

(declare-fun c!214088 () Bool)

(assert (=> d!367197 (= c!214088 ((_ is Nil!13016) (getSuffix!415 lt!427434 lt!427432)))))

(assert (=> d!367197 (= (size!10648 (getSuffix!415 lt!427434 lt!427432)) lt!427580)))

(declare-fun b!1300455 () Bool)

(assert (=> b!1300455 (= e!833764 0)))

(declare-fun b!1300456 () Bool)

(assert (=> b!1300456 (= e!833764 (+ 1 (size!10648 (t!117591 (getSuffix!415 lt!427434 lt!427432)))))))

(assert (= (and d!367197 c!214088) b!1300455))

(assert (= (and d!367197 (not c!214088)) b!1300456))

(declare-fun m!1452115 () Bool)

(assert (=> b!1300456 m!1452115))

(assert (=> b!1300121 d!367197))

(declare-fun d!367199 () Bool)

(declare-fun lt!427581 () Bool)

(assert (=> d!367199 (= lt!427581 (select (content!1841 (t!117591 lt!427434)) lt!427431))))

(declare-fun e!833766 () Bool)

(assert (=> d!367199 (= lt!427581 e!833766)))

(declare-fun res!582406 () Bool)

(assert (=> d!367199 (=> (not res!582406) (not e!833766))))

(assert (=> d!367199 (= res!582406 ((_ is Cons!13016) (t!117591 lt!427434)))))

(assert (=> d!367199 (= (contains!2183 (t!117591 lt!427434) lt!427431) lt!427581)))

(declare-fun b!1300457 () Bool)

(declare-fun e!833765 () Bool)

(assert (=> b!1300457 (= e!833766 e!833765)))

(declare-fun res!582407 () Bool)

(assert (=> b!1300457 (=> res!582407 e!833765)))

(assert (=> b!1300457 (= res!582407 (= (h!18417 (t!117591 lt!427434)) lt!427431))))

(declare-fun b!1300458 () Bool)

(assert (=> b!1300458 (= e!833765 (contains!2183 (t!117591 (t!117591 lt!427434)) lt!427431))))

(assert (= (and d!367199 res!582406) b!1300457))

(assert (= (and b!1300457 (not res!582407)) b!1300458))

(declare-fun m!1452117 () Bool)

(assert (=> d!367199 m!1452117))

(declare-fun m!1452119 () Bool)

(assert (=> d!367199 m!1452119))

(declare-fun m!1452121 () Bool)

(assert (=> b!1300458 m!1452121))

(assert (=> b!1300011 d!367199))

(declare-fun d!367201 () Bool)

(assert (=> d!367201 (= (isEmpty!7737 (originalCharacters!3107 t1!34)) ((_ is Nil!13016) (originalCharacters!3107 t1!34)))))

(assert (=> d!367063 d!367201))

(declare-fun bs!329205 () Bool)

(declare-fun d!367203 () Bool)

(assert (= bs!329205 (and d!367203 d!367171)))

(declare-fun lambda!51185 () Int)

(assert (=> bs!329205 (= (and (= (toChars!3315 (transformation!2245 (h!18419 rules!2550))) (toChars!3315 (transformation!2245 (rule!3984 t1!34)))) (= (toValue!3456 (transformation!2245 (h!18419 rules!2550))) (toValue!3456 (transformation!2245 (rule!3984 t1!34))))) (= lambda!51185 lambda!51183))))

(declare-fun bs!329206 () Bool)

(assert (= bs!329206 (and d!367203 d!367189)))

(assert (=> bs!329206 (= (and (= (toChars!3315 (transformation!2245 (h!18419 rules!2550))) (toChars!3315 (transformation!2245 (rule!3984 t2!34)))) (= (toValue!3456 (transformation!2245 (h!18419 rules!2550))) (toValue!3456 (transformation!2245 (rule!3984 t2!34))))) (= lambda!51185 lambda!51184))))

(assert (=> d!367203 true))

(assert (=> d!367203 (< (dynLambda!5706 order!7919 (toChars!3315 (transformation!2245 (h!18419 rules!2550)))) (dynLambda!5707 order!7921 lambda!51185))))

(assert (=> d!367203 true))

(assert (=> d!367203 (< (dynLambda!5704 order!7915 (toValue!3456 (transformation!2245 (h!18419 rules!2550)))) (dynLambda!5707 order!7921 lambda!51185))))

(assert (=> d!367203 (= (semiInverseModEq!856 (toChars!3315 (transformation!2245 (h!18419 rules!2550))) (toValue!3456 (transformation!2245 (h!18419 rules!2550)))) (Forall!510 lambda!51185))))

(declare-fun bs!329207 () Bool)

(assert (= bs!329207 d!367203))

(declare-fun m!1452123 () Bool)

(assert (=> bs!329207 m!1452123))

(assert (=> d!367055 d!367203))

(declare-fun d!367205 () Bool)

(declare-fun res!582412 () Bool)

(declare-fun e!833769 () Bool)

(assert (=> d!367205 (=> (not res!582412) (not e!833769))))

(assert (=> d!367205 (= res!582412 (validRegex!1537 (regex!2245 (h!18419 rules!2550))))))

(assert (=> d!367205 (= (ruleValid!551 thiss!19762 (h!18419 rules!2550)) e!833769)))

(declare-fun b!1300463 () Bool)

(declare-fun res!582413 () Bool)

(assert (=> b!1300463 (=> (not res!582413) (not e!833769))))

(assert (=> b!1300463 (= res!582413 (not (nullable!1135 (regex!2245 (h!18419 rules!2550)))))))

(declare-fun b!1300464 () Bool)

(assert (=> b!1300464 (= e!833769 (not (= (tag!2507 (h!18419 rules!2550)) (String!15912 ""))))))

(assert (= (and d!367205 res!582412) b!1300463))

(assert (= (and b!1300463 res!582413) b!1300464))

(declare-fun m!1452125 () Bool)

(assert (=> d!367205 m!1452125))

(declare-fun m!1452127 () Bool)

(assert (=> b!1300463 m!1452127))

(assert (=> b!1300028 d!367205))

(declare-fun d!367207 () Bool)

(declare-fun charsToBigInt!0 (List!13083 Int) Int)

(assert (=> d!367207 (= (inv!15 (value!73615 t1!34)) (= (charsToBigInt!0 (text!16794 (value!73615 t1!34)) 0) (value!73610 (value!73615 t1!34))))))

(declare-fun bs!329208 () Bool)

(assert (= bs!329208 d!367207))

(declare-fun m!1452129 () Bool)

(assert (=> bs!329208 m!1452129))

(assert (=> b!1300056 d!367207))

(declare-fun bs!329209 () Bool)

(declare-fun d!367209 () Bool)

(assert (= bs!329209 (and d!367209 d!367079)))

(declare-fun lambda!51190 () Int)

(assert (=> bs!329209 (= lambda!51190 lambda!51165)))

(declare-fun lambda!51191 () Int)

(declare-fun forall!3266 (List!13090 Int) Bool)

(assert (=> d!367209 (forall!3266 (map!2834 rules!2550 lambda!51190) lambda!51191)))

(declare-fun lt!427586 () Unit!19152)

(declare-fun e!833772 () Unit!19152)

(assert (=> d!367209 (= lt!427586 e!833772)))

(declare-fun c!214091 () Bool)

(assert (=> d!367209 (= c!214091 ((_ is Nil!13018) rules!2550))))

(assert (=> d!367209 (rulesValidInductive!710 thiss!19762 rules!2550)))

(assert (=> d!367209 (= (lemma!58 rules!2550 thiss!19762 rules!2550) lt!427586)))

(declare-fun b!1300469 () Bool)

(declare-fun Unit!19156 () Unit!19152)

(assert (=> b!1300469 (= e!833772 Unit!19156)))

(declare-fun b!1300470 () Bool)

(declare-fun Unit!19157 () Unit!19152)

(assert (=> b!1300470 (= e!833772 Unit!19157)))

(declare-fun lt!427587 () Unit!19152)

(assert (=> b!1300470 (= lt!427587 (lemma!58 rules!2550 thiss!19762 (t!117593 rules!2550)))))

(assert (= (and d!367209 c!214091) b!1300469))

(assert (= (and d!367209 (not c!214091)) b!1300470))

(declare-fun m!1452131 () Bool)

(assert (=> d!367209 m!1452131))

(assert (=> d!367209 m!1452131))

(declare-fun m!1452133 () Bool)

(assert (=> d!367209 m!1452133))

(assert (=> d!367209 m!1451357))

(declare-fun m!1452135 () Bool)

(assert (=> b!1300470 m!1452135))

(assert (=> d!367079 d!367209))

(declare-fun bs!329210 () Bool)

(declare-fun d!367211 () Bool)

(assert (= bs!329210 (and d!367211 d!367209)))

(declare-fun lambda!51194 () Int)

(assert (=> bs!329210 (= lambda!51194 lambda!51191)))

(declare-fun e!833790 () Bool)

(assert (=> d!367211 e!833790))

(declare-fun res!582418 () Bool)

(assert (=> d!367211 (=> (not res!582418) (not e!833790))))

(declare-fun lt!427590 () Regex!3559)

(assert (=> d!367211 (= res!582418 (validRegex!1537 lt!427590))))

(declare-fun e!833787 () Regex!3559)

(assert (=> d!367211 (= lt!427590 e!833787)))

(declare-fun c!214100 () Bool)

(declare-fun e!833789 () Bool)

(assert (=> d!367211 (= c!214100 e!833789)))

(declare-fun res!582419 () Bool)

(assert (=> d!367211 (=> (not res!582419) (not e!833789))))

(assert (=> d!367211 (= res!582419 ((_ is Cons!13024) (map!2834 rules!2550 lambda!51165)))))

(assert (=> d!367211 (forall!3266 (map!2834 rules!2550 lambda!51165) lambda!51194)))

(assert (=> d!367211 (= (generalisedUnion!62 (map!2834 rules!2550 lambda!51165)) lt!427590)))

(declare-fun b!1300491 () Bool)

(declare-fun e!833786 () Regex!3559)

(assert (=> b!1300491 (= e!833787 e!833786)))

(declare-fun c!214102 () Bool)

(assert (=> b!1300491 (= c!214102 ((_ is Cons!13024) (map!2834 rules!2550 lambda!51165)))))

(declare-fun b!1300492 () Bool)

(declare-fun e!833785 () Bool)

(declare-fun e!833788 () Bool)

(assert (=> b!1300492 (= e!833785 e!833788)))

(declare-fun c!214101 () Bool)

(declare-fun isEmpty!7742 (List!13090) Bool)

(declare-fun tail!1864 (List!13090) List!13090)

(assert (=> b!1300492 (= c!214101 (isEmpty!7742 (tail!1864 (map!2834 rules!2550 lambda!51165))))))

(declare-fun b!1300493 () Bool)

(assert (=> b!1300493 (= e!833789 (isEmpty!7742 (t!117633 (map!2834 rules!2550 lambda!51165))))))

(declare-fun b!1300494 () Bool)

(assert (=> b!1300494 (= e!833786 (Union!3559 (h!18425 (map!2834 rules!2550 lambda!51165)) (generalisedUnion!62 (t!117633 (map!2834 rules!2550 lambda!51165)))))))

(declare-fun b!1300495 () Bool)

(assert (=> b!1300495 (= e!833786 EmptyLang!3559)))

(declare-fun b!1300496 () Bool)

(declare-fun isUnion!17 (Regex!3559) Bool)

(assert (=> b!1300496 (= e!833788 (isUnion!17 lt!427590))))

(declare-fun b!1300497 () Bool)

(assert (=> b!1300497 (= e!833790 e!833785)))

(declare-fun c!214103 () Bool)

(assert (=> b!1300497 (= c!214103 (isEmpty!7742 (map!2834 rules!2550 lambda!51165)))))

(declare-fun b!1300498 () Bool)

(assert (=> b!1300498 (= e!833787 (h!18425 (map!2834 rules!2550 lambda!51165)))))

(declare-fun b!1300499 () Bool)

(declare-fun head!2236 (List!13090) Regex!3559)

(assert (=> b!1300499 (= e!833788 (= lt!427590 (head!2236 (map!2834 rules!2550 lambda!51165))))))

(declare-fun b!1300500 () Bool)

(declare-fun isEmptyLang!17 (Regex!3559) Bool)

(assert (=> b!1300500 (= e!833785 (isEmptyLang!17 lt!427590))))

(assert (= (and d!367211 res!582419) b!1300493))

(assert (= (and d!367211 c!214100) b!1300498))

(assert (= (and d!367211 (not c!214100)) b!1300491))

(assert (= (and b!1300491 c!214102) b!1300494))

(assert (= (and b!1300491 (not c!214102)) b!1300495))

(assert (= (and d!367211 res!582418) b!1300497))

(assert (= (and b!1300497 c!214103) b!1300500))

(assert (= (and b!1300497 (not c!214103)) b!1300492))

(assert (= (and b!1300492 c!214101) b!1300499))

(assert (= (and b!1300492 (not c!214101)) b!1300496))

(declare-fun m!1452137 () Bool)

(assert (=> b!1300493 m!1452137))

(declare-fun m!1452139 () Bool)

(assert (=> d!367211 m!1452139))

(assert (=> d!367211 m!1451867))

(declare-fun m!1452141 () Bool)

(assert (=> d!367211 m!1452141))

(declare-fun m!1452143 () Bool)

(assert (=> b!1300496 m!1452143))

(assert (=> b!1300497 m!1451867))

(declare-fun m!1452145 () Bool)

(assert (=> b!1300497 m!1452145))

(assert (=> b!1300492 m!1451867))

(declare-fun m!1452147 () Bool)

(assert (=> b!1300492 m!1452147))

(assert (=> b!1300492 m!1452147))

(declare-fun m!1452149 () Bool)

(assert (=> b!1300492 m!1452149))

(declare-fun m!1452151 () Bool)

(assert (=> b!1300494 m!1452151))

(assert (=> b!1300499 m!1451867))

(declare-fun m!1452153 () Bool)

(assert (=> b!1300499 m!1452153))

(declare-fun m!1452155 () Bool)

(assert (=> b!1300500 m!1452155))

(assert (=> d!367079 d!367211))

(declare-fun d!367213 () Bool)

(declare-fun lt!427593 () List!13090)

(declare-fun size!10652 (List!13090) Int)

(declare-fun size!10653 (List!13084) Int)

(assert (=> d!367213 (= (size!10652 lt!427593) (size!10653 rules!2550))))

(declare-fun e!833793 () List!13090)

(assert (=> d!367213 (= lt!427593 e!833793)))

(declare-fun c!214106 () Bool)

(assert (=> d!367213 (= c!214106 ((_ is Nil!13018) rules!2550))))

(assert (=> d!367213 (= (map!2834 rules!2550 lambda!51165) lt!427593)))

(declare-fun b!1300505 () Bool)

(assert (=> b!1300505 (= e!833793 Nil!13024)))

(declare-fun b!1300506 () Bool)

(declare-fun $colon$colon!139 (List!13090 Regex!3559) List!13090)

(declare-fun dynLambda!5708 (Int Rule!4290) Regex!3559)

(assert (=> b!1300506 (= e!833793 ($colon$colon!139 (map!2834 (t!117593 rules!2550) lambda!51165) (dynLambda!5708 lambda!51165 (h!18419 rules!2550))))))

(assert (= (and d!367213 c!214106) b!1300505))

(assert (= (and d!367213 (not c!214106)) b!1300506))

(declare-fun b_lambda!37289 () Bool)

(assert (=> (not b_lambda!37289) (not b!1300506)))

(declare-fun m!1452157 () Bool)

(assert (=> d!367213 m!1452157))

(declare-fun m!1452159 () Bool)

(assert (=> d!367213 m!1452159))

(declare-fun m!1452161 () Bool)

(assert (=> b!1300506 m!1452161))

(declare-fun m!1452163 () Bool)

(assert (=> b!1300506 m!1452163))

(assert (=> b!1300506 m!1452161))

(assert (=> b!1300506 m!1452163))

(declare-fun m!1452165 () Bool)

(assert (=> b!1300506 m!1452165))

(assert (=> d!367079 d!367213))

(declare-fun d!367215 () Bool)

(assert (=> d!367215 (= (inv!15 (value!73615 t2!34)) (= (charsToBigInt!0 (text!16794 (value!73615 t2!34)) 0) (value!73610 (value!73615 t2!34))))))

(declare-fun bs!329211 () Bool)

(assert (= bs!329211 d!367215))

(declare-fun m!1452167 () Bool)

(assert (=> bs!329211 m!1452167))

(assert (=> b!1300051 d!367215))

(declare-fun d!367217 () Bool)

(assert (=> d!367217 (= (list!4879 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34))) (list!4883 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34)))))))

(declare-fun bs!329212 () Bool)

(assert (= bs!329212 d!367217))

(declare-fun m!1452169 () Bool)

(assert (=> bs!329212 m!1452169))

(assert (=> b!1300136 d!367217))

(declare-fun b!1300573 () Bool)

(declare-fun res!582464 () Bool)

(declare-fun e!833833 () Bool)

(assert (=> b!1300573 (=> (not res!582464) (not e!833833))))

(declare-fun lt!427609 () tuple2!12714)

(declare-datatypes ((tuple2!12718 0))(
  ( (tuple2!12719 (_1!7245 List!13087) (_2!7245 List!13082)) )
))
(declare-fun lexList!504 (LexerInterface!1940 List!13084 List!13082) tuple2!12718)

(assert (=> b!1300573 (= res!582464 (= (list!4882 (_1!7243 lt!427609)) (_1!7245 (lexList!504 thiss!19762 rules!2550 (list!4879 (print!732 thiss!19762 (singletonSeq!829 t1!34)))))))))

(declare-fun d!367219 () Bool)

(assert (=> d!367219 e!833833))

(declare-fun res!582466 () Bool)

(assert (=> d!367219 (=> (not res!582466) (not e!833833))))

(declare-fun e!833831 () Bool)

(assert (=> d!367219 (= res!582466 e!833831)))

(declare-fun c!214123 () Bool)

(assert (=> d!367219 (= c!214123 (> (size!10647 (_1!7243 lt!427609)) 0))))

(declare-fun lexTailRecV2!353 (LexerInterface!1940 List!13084 BalanceConc!8490 BalanceConc!8490 BalanceConc!8490 BalanceConc!8494) tuple2!12714)

(assert (=> d!367219 (= lt!427609 (lexTailRecV2!353 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t1!34)) (BalanceConc!8491 Empty!4275) (print!732 thiss!19762 (singletonSeq!829 t1!34)) (BalanceConc!8495 Empty!4277)))))

(assert (=> d!367219 (= (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t1!34))) lt!427609)))

(declare-fun b!1300574 () Bool)

(assert (=> b!1300574 (= e!833831 (= (_2!7243 lt!427609) (print!732 thiss!19762 (singletonSeq!829 t1!34))))))

(declare-fun b!1300575 () Bool)

(assert (=> b!1300575 (= e!833833 (= (list!4879 (_2!7243 lt!427609)) (_2!7245 (lexList!504 thiss!19762 rules!2550 (list!4879 (print!732 thiss!19762 (singletonSeq!829 t1!34)))))))))

(declare-fun b!1300576 () Bool)

(declare-fun e!833832 () Bool)

(declare-fun isEmpty!7743 (BalanceConc!8494) Bool)

(assert (=> b!1300576 (= e!833832 (not (isEmpty!7743 (_1!7243 lt!427609))))))

(declare-fun b!1300577 () Bool)

(assert (=> b!1300577 (= e!833831 e!833832)))

(declare-fun res!582465 () Bool)

(assert (=> b!1300577 (= res!582465 (< (size!10643 (_2!7243 lt!427609)) (size!10643 (print!732 thiss!19762 (singletonSeq!829 t1!34)))))))

(assert (=> b!1300577 (=> (not res!582465) (not e!833832))))

(assert (= (and d!367219 c!214123) b!1300577))

(assert (= (and d!367219 (not c!214123)) b!1300574))

(assert (= (and b!1300577 res!582465) b!1300576))

(assert (= (and d!367219 res!582466) b!1300573))

(assert (= (and b!1300573 res!582464) b!1300575))

(declare-fun m!1452245 () Bool)

(assert (=> b!1300573 m!1452245))

(assert (=> b!1300573 m!1451733))

(declare-fun m!1452247 () Bool)

(assert (=> b!1300573 m!1452247))

(assert (=> b!1300573 m!1452247))

(declare-fun m!1452249 () Bool)

(assert (=> b!1300573 m!1452249))

(declare-fun m!1452251 () Bool)

(assert (=> d!367219 m!1452251))

(assert (=> d!367219 m!1451733))

(assert (=> d!367219 m!1451733))

(declare-fun m!1452253 () Bool)

(assert (=> d!367219 m!1452253))

(declare-fun m!1452255 () Bool)

(assert (=> b!1300576 m!1452255))

(declare-fun m!1452257 () Bool)

(assert (=> b!1300575 m!1452257))

(assert (=> b!1300575 m!1451733))

(assert (=> b!1300575 m!1452247))

(assert (=> b!1300575 m!1452247))

(assert (=> b!1300575 m!1452249))

(declare-fun m!1452259 () Bool)

(assert (=> b!1300577 m!1452259))

(assert (=> b!1300577 m!1451733))

(declare-fun m!1452261 () Bool)

(assert (=> b!1300577 m!1452261))

(assert (=> d!367039 d!367219))

(declare-fun d!367239 () Bool)

(declare-fun lt!427632 () BalanceConc!8490)

(declare-fun printList!548 (LexerInterface!1940 List!13087) List!13082)

(assert (=> d!367239 (= (list!4879 lt!427632) (printList!548 thiss!19762 (list!4882 (singletonSeq!829 t1!34))))))

(declare-fun printTailRec!530 (LexerInterface!1940 BalanceConc!8494 Int BalanceConc!8490) BalanceConc!8490)

(assert (=> d!367239 (= lt!427632 (printTailRec!530 thiss!19762 (singletonSeq!829 t1!34) 0 (BalanceConc!8491 Empty!4275)))))

(assert (=> d!367239 (= (print!732 thiss!19762 (singletonSeq!829 t1!34)) lt!427632)))

(declare-fun bs!329216 () Bool)

(assert (= bs!329216 d!367239))

(declare-fun m!1452263 () Bool)

(assert (=> bs!329216 m!1452263))

(assert (=> bs!329216 m!1451729))

(assert (=> bs!329216 m!1451731))

(assert (=> bs!329216 m!1451731))

(declare-fun m!1452265 () Bool)

(assert (=> bs!329216 m!1452265))

(assert (=> bs!329216 m!1451729))

(declare-fun m!1452267 () Bool)

(assert (=> bs!329216 m!1452267))

(assert (=> d!367039 d!367239))

(declare-fun d!367241 () Bool)

(declare-fun lt!427645 () Int)

(declare-fun size!10654 (List!13087) Int)

(assert (=> d!367241 (= lt!427645 (size!10654 (list!4882 (_1!7243 lt!427506))))))

(declare-fun size!10655 (Conc!4277) Int)

(assert (=> d!367241 (= lt!427645 (size!10655 (c!213990 (_1!7243 lt!427506))))))

(assert (=> d!367241 (= (size!10647 (_1!7243 lt!427506)) lt!427645)))

(declare-fun bs!329218 () Bool)

(assert (= bs!329218 d!367241))

(declare-fun m!1452295 () Bool)

(assert (=> bs!329218 m!1452295))

(assert (=> bs!329218 m!1452295))

(declare-fun m!1452297 () Bool)

(assert (=> bs!329218 m!1452297))

(declare-fun m!1452299 () Bool)

(assert (=> bs!329218 m!1452299))

(assert (=> d!367039 d!367241))

(declare-fun d!367245 () Bool)

(declare-fun e!833839 () Bool)

(assert (=> d!367245 e!833839))

(declare-fun res!582472 () Bool)

(assert (=> d!367245 (=> (not res!582472) (not e!833839))))

(declare-fun lt!427651 () BalanceConc!8494)

(assert (=> d!367245 (= res!582472 (= (list!4882 lt!427651) (Cons!13021 t1!34 Nil!13021)))))

(declare-fun singleton!365 (Token!4152) BalanceConc!8494)

(assert (=> d!367245 (= lt!427651 (singleton!365 t1!34))))

(assert (=> d!367245 (= (singletonSeq!829 t1!34) lt!427651)))

(declare-fun b!1300583 () Bool)

(declare-fun isBalanced!1259 (Conc!4277) Bool)

(assert (=> b!1300583 (= e!833839 (isBalanced!1259 (c!213990 lt!427651)))))

(assert (= (and d!367245 res!582472) b!1300583))

(declare-fun m!1452307 () Bool)

(assert (=> d!367245 m!1452307))

(declare-fun m!1452309 () Bool)

(assert (=> d!367245 m!1452309))

(declare-fun m!1452313 () Bool)

(assert (=> b!1300583 m!1452313))

(assert (=> d!367039 d!367245))

(declare-fun d!367249 () Bool)

(declare-fun list!4886 (Conc!4277) List!13087)

(assert (=> d!367249 (= (list!4882 (_1!7243 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t1!34))))) (list!4886 (c!213990 (_1!7243 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t1!34)))))))))

(declare-fun bs!329219 () Bool)

(assert (= bs!329219 d!367249))

(declare-fun m!1452325 () Bool)

(assert (=> bs!329219 m!1452325))

(assert (=> d!367039 d!367249))

(declare-fun d!367255 () Bool)

(assert (=> d!367255 (= (list!4882 (singletonSeq!829 t1!34)) (list!4886 (c!213990 (singletonSeq!829 t1!34))))))

(declare-fun bs!329220 () Bool)

(assert (= bs!329220 d!367255))

(declare-fun m!1452327 () Bool)

(assert (=> bs!329220 m!1452327))

(assert (=> d!367039 d!367255))

(assert (=> d!367039 d!367023))

(declare-fun b!1300589 () Bool)

(declare-fun res!582477 () Bool)

(declare-fun e!833844 () Bool)

(assert (=> b!1300589 (=> (not res!582477) (not e!833844))))

(declare-fun lt!427653 () List!13082)

(assert (=> b!1300589 (= res!582477 (= (size!10648 lt!427653) (+ (size!10648 (t!117591 lt!427437)) (size!10648 (Cons!13016 lt!427431 Nil!13016)))))))

(declare-fun b!1300588 () Bool)

(declare-fun e!833843 () List!13082)

(assert (=> b!1300588 (= e!833843 (Cons!13016 (h!18417 (t!117591 lt!427437)) (++!3312 (t!117591 (t!117591 lt!427437)) (Cons!13016 lt!427431 Nil!13016))))))

(declare-fun b!1300590 () Bool)

(assert (=> b!1300590 (= e!833844 (or (not (= (Cons!13016 lt!427431 Nil!13016) Nil!13016)) (= lt!427653 (t!117591 lt!427437))))))

(declare-fun b!1300587 () Bool)

(assert (=> b!1300587 (= e!833843 (Cons!13016 lt!427431 Nil!13016))))

(declare-fun d!367257 () Bool)

(assert (=> d!367257 e!833844))

(declare-fun res!582476 () Bool)

(assert (=> d!367257 (=> (not res!582476) (not e!833844))))

(assert (=> d!367257 (= res!582476 (= (content!1841 lt!427653) ((_ map or) (content!1841 (t!117591 lt!427437)) (content!1841 (Cons!13016 lt!427431 Nil!13016)))))))

(assert (=> d!367257 (= lt!427653 e!833843)))

(declare-fun c!214124 () Bool)

(assert (=> d!367257 (= c!214124 ((_ is Nil!13016) (t!117591 lt!427437)))))

(assert (=> d!367257 (= (++!3312 (t!117591 lt!427437) (Cons!13016 lt!427431 Nil!13016)) lt!427653)))

(assert (= (and d!367257 c!214124) b!1300587))

(assert (= (and d!367257 (not c!214124)) b!1300588))

(assert (= (and d!367257 res!582476) b!1300589))

(assert (= (and b!1300589 res!582477) b!1300590))

(declare-fun m!1452329 () Bool)

(assert (=> b!1300589 m!1452329))

(declare-fun m!1452331 () Bool)

(assert (=> b!1300589 m!1452331))

(assert (=> b!1300589 m!1451841))

(declare-fun m!1452333 () Bool)

(assert (=> b!1300588 m!1452333))

(declare-fun m!1452335 () Bool)

(assert (=> d!367257 m!1452335))

(assert (=> d!367257 m!1452093))

(assert (=> d!367257 m!1451849))

(assert (=> b!1300140 d!367257))

(declare-fun bs!329225 () Bool)

(declare-fun d!367259 () Bool)

(assert (= bs!329225 (and d!367259 d!367035)))

(declare-fun lambda!51198 () Int)

(assert (=> bs!329225 (= lambda!51198 lambda!51162)))

(assert (=> d!367259 true))

(declare-fun lt!427657 () Bool)

(assert (=> d!367259 (= lt!427657 (rulesValidInductive!710 thiss!19762 rules!2550))))

(assert (=> d!367259 (= lt!427657 (forall!3264 rules!2550 lambda!51198))))

(assert (=> d!367259 (= (rulesValid!825 thiss!19762 rules!2550) lt!427657)))

(declare-fun bs!329228 () Bool)

(assert (= bs!329228 d!367259))

(assert (=> bs!329228 m!1451357))

(declare-fun m!1452351 () Bool)

(assert (=> bs!329228 m!1452351))

(assert (=> d!367007 d!367259))

(declare-fun b!1300611 () Bool)

(declare-fun e!833856 () Bool)

(assert (=> b!1300611 (= e!833856 (isPrefix!1062 (tail!1862 lt!427432) (tail!1862 lt!427526)))))

(declare-fun b!1300610 () Bool)

(declare-fun res!582497 () Bool)

(assert (=> b!1300610 (=> (not res!582497) (not e!833856))))

(assert (=> b!1300610 (= res!582497 (= (head!2234 lt!427432) (head!2234 lt!427526)))))

(declare-fun b!1300612 () Bool)

(declare-fun e!833857 () Bool)

(assert (=> b!1300612 (= e!833857 (>= (size!10648 lt!427526) (size!10648 lt!427432)))))

(declare-fun d!367277 () Bool)

(assert (=> d!367277 e!833857))

(declare-fun res!582496 () Bool)

(assert (=> d!367277 (=> res!582496 e!833857)))

(declare-fun lt!427660 () Bool)

(assert (=> d!367277 (= res!582496 (not lt!427660))))

(declare-fun e!833858 () Bool)

(assert (=> d!367277 (= lt!427660 e!833858)))

(declare-fun res!582498 () Bool)

(assert (=> d!367277 (=> res!582498 e!833858)))

(assert (=> d!367277 (= res!582498 ((_ is Nil!13016) lt!427432))))

(assert (=> d!367277 (= (isPrefix!1062 lt!427432 lt!427526) lt!427660)))

(declare-fun b!1300609 () Bool)

(assert (=> b!1300609 (= e!833858 e!833856)))

(declare-fun res!582495 () Bool)

(assert (=> b!1300609 (=> (not res!582495) (not e!833856))))

(assert (=> b!1300609 (= res!582495 (not ((_ is Nil!13016) lt!427526)))))

(assert (= (and d!367277 (not res!582498)) b!1300609))

(assert (= (and b!1300609 res!582495) b!1300610))

(assert (= (and b!1300610 res!582497) b!1300611))

(assert (= (and d!367277 (not res!582496)) b!1300612))

(assert (=> b!1300611 m!1451859))

(declare-fun m!1452365 () Bool)

(assert (=> b!1300611 m!1452365))

(assert (=> b!1300611 m!1451859))

(assert (=> b!1300611 m!1452365))

(declare-fun m!1452367 () Bool)

(assert (=> b!1300611 m!1452367))

(assert (=> b!1300610 m!1451855))

(declare-fun m!1452369 () Bool)

(assert (=> b!1300610 m!1452369))

(declare-fun m!1452371 () Bool)

(assert (=> b!1300612 m!1452371))

(assert (=> b!1300612 m!1451793))

(assert (=> b!1300189 d!367277))

(declare-fun d!367287 () Bool)

(declare-fun charsToInt!0 (List!13083) (_ BitVec 32))

(assert (=> d!367287 (= (inv!16 (value!73615 t1!34)) (= (charsToInt!0 (text!16792 (value!73615 t1!34))) (value!73606 (value!73615 t1!34))))))

(declare-fun bs!329231 () Bool)

(assert (= bs!329231 d!367287))

(declare-fun m!1452377 () Bool)

(assert (=> bs!329231 m!1452377))

(assert (=> b!1300060 d!367287))

(declare-fun d!367293 () Bool)

(declare-fun nullableFct!256 (Regex!3559) Bool)

(assert (=> d!367293 (= (nullable!1135 lt!427438) (nullableFct!256 lt!427438))))

(declare-fun bs!329232 () Bool)

(assert (= bs!329232 d!367293))

(declare-fun m!1452379 () Bool)

(assert (=> bs!329232 m!1452379))

(assert (=> b!1300100 d!367293))

(declare-fun d!367295 () Bool)

(declare-fun lt!427661 () Bool)

(assert (=> d!367295 (= lt!427661 (select (content!1841 (t!117591 lt!427434)) lt!427433))))

(declare-fun e!833860 () Bool)

(assert (=> d!367295 (= lt!427661 e!833860)))

(declare-fun res!582499 () Bool)

(assert (=> d!367295 (=> (not res!582499) (not e!833860))))

(assert (=> d!367295 (= res!582499 ((_ is Cons!13016) (t!117591 lt!427434)))))

(assert (=> d!367295 (= (contains!2183 (t!117591 lt!427434) lt!427433) lt!427661)))

(declare-fun b!1300613 () Bool)

(declare-fun e!833859 () Bool)

(assert (=> b!1300613 (= e!833860 e!833859)))

(declare-fun res!582500 () Bool)

(assert (=> b!1300613 (=> res!582500 e!833859)))

(assert (=> b!1300613 (= res!582500 (= (h!18417 (t!117591 lt!427434)) lt!427433))))

(declare-fun b!1300614 () Bool)

(assert (=> b!1300614 (= e!833859 (contains!2183 (t!117591 (t!117591 lt!427434)) lt!427433))))

(assert (= (and d!367295 res!582499) b!1300613))

(assert (= (and b!1300613 (not res!582500)) b!1300614))

(assert (=> d!367295 m!1452117))

(declare-fun m!1452381 () Bool)

(assert (=> d!367295 m!1452381))

(declare-fun m!1452383 () Bool)

(assert (=> b!1300614 m!1452383))

(assert (=> b!1300016 d!367295))

(declare-fun d!367297 () Bool)

(assert (=> d!367297 (= (inv!16 (value!73615 t2!34)) (= (charsToInt!0 (text!16792 (value!73615 t2!34))) (value!73606 (value!73615 t2!34))))))

(declare-fun bs!329233 () Bool)

(assert (= bs!329233 d!367297))

(declare-fun m!1452385 () Bool)

(assert (=> bs!329233 m!1452385))

(assert (=> b!1300055 d!367297))

(declare-fun d!367299 () Bool)

(declare-fun lt!427666 () C!7408)

(assert (=> d!367299 (contains!2183 (list!4879 lt!427435) lt!427666)))

(declare-fun e!833865 () C!7408)

(assert (=> d!367299 (= lt!427666 e!833865)))

(declare-fun c!214129 () Bool)

(assert (=> d!367299 (= c!214129 (= 0 0))))

(declare-fun e!833866 () Bool)

(assert (=> d!367299 e!833866))

(declare-fun res!582503 () Bool)

(assert (=> d!367299 (=> (not res!582503) (not e!833866))))

(assert (=> d!367299 (= res!582503 (<= 0 0))))

(assert (=> d!367299 (= (apply!2904 (list!4879 lt!427435) 0) lt!427666)))

(declare-fun b!1300625 () Bool)

(assert (=> b!1300625 (= e!833866 (< 0 (size!10648 (list!4879 lt!427435))))))

(declare-fun b!1300626 () Bool)

(assert (=> b!1300626 (= e!833865 (head!2234 (list!4879 lt!427435)))))

(declare-fun b!1300627 () Bool)

(assert (=> b!1300627 (= e!833865 (apply!2904 (tail!1862 (list!4879 lt!427435)) (- 0 1)))))

(assert (= (and d!367299 res!582503) b!1300625))

(assert (= (and d!367299 c!214129) b!1300626))

(assert (= (and d!367299 (not c!214129)) b!1300627))

(assert (=> d!367299 m!1451755))

(declare-fun m!1452389 () Bool)

(assert (=> d!367299 m!1452389))

(assert (=> b!1300625 m!1451755))

(assert (=> b!1300625 m!1451757))

(assert (=> b!1300626 m!1451755))

(declare-fun m!1452391 () Bool)

(assert (=> b!1300626 m!1452391))

(assert (=> b!1300627 m!1451755))

(declare-fun m!1452393 () Bool)

(assert (=> b!1300627 m!1452393))

(assert (=> b!1300627 m!1452393))

(declare-fun m!1452395 () Bool)

(assert (=> b!1300627 m!1452395))

(assert (=> d!367081 d!367299))

(declare-fun d!367303 () Bool)

(assert (=> d!367303 (= (list!4879 lt!427435) (list!4883 (c!213934 lt!427435)))))

(declare-fun bs!329235 () Bool)

(assert (= bs!329235 d!367303))

(declare-fun m!1452397 () Bool)

(assert (=> bs!329235 m!1452397))

(assert (=> d!367081 d!367303))

(declare-fun b!1300662 () Bool)

(declare-fun e!833891 () Int)

(assert (=> b!1300662 (= e!833891 0)))

(declare-fun d!367305 () Bool)

(declare-fun lt!427672 () C!7408)

(assert (=> d!367305 (= lt!427672 (apply!2904 (list!4883 (c!213934 lt!427435)) 0))))

(declare-fun e!833894 () C!7408)

(assert (=> d!367305 (= lt!427672 e!833894)))

(declare-fun c!214140 () Bool)

(assert (=> d!367305 (= c!214140 ((_ is Leaf!6594) (c!213934 lt!427435)))))

(declare-fun e!833893 () Bool)

(assert (=> d!367305 e!833893))

(declare-fun res!582518 () Bool)

(assert (=> d!367305 (=> (not res!582518) (not e!833893))))

(assert (=> d!367305 (= res!582518 (<= 0 0))))

(assert (=> d!367305 (= (apply!2905 (c!213934 lt!427435) 0) lt!427672)))

(declare-fun b!1300663 () Bool)

(assert (=> b!1300663 (= e!833893 (< 0 (size!10649 (c!213934 lt!427435))))))

(declare-fun bm!89109 () Bool)

(declare-fun c!214142 () Bool)

(declare-fun c!214141 () Bool)

(assert (=> bm!89109 (= c!214142 c!214141)))

(declare-fun call!89114 () C!7408)

(assert (=> bm!89109 (= call!89114 (apply!2905 (ite c!214141 (left!11195 (c!213934 lt!427435)) (right!11525 (c!213934 lt!427435))) e!833891))))

(declare-fun b!1300664 () Bool)

(declare-fun apply!2908 (IArray!8555 Int) C!7408)

(assert (=> b!1300664 (= e!833894 (apply!2908 (xs!6990 (c!213934 lt!427435)) 0))))

(declare-fun b!1300665 () Bool)

(declare-fun e!833892 () C!7408)

(assert (=> b!1300665 (= e!833892 call!89114)))

(declare-fun b!1300666 () Bool)

(assert (=> b!1300666 (= e!833891 (- 0 (size!10649 (left!11195 (c!213934 lt!427435)))))))

(declare-fun b!1300667 () Bool)

(assert (=> b!1300667 (= e!833892 call!89114)))

(declare-fun b!1300668 () Bool)

(assert (=> b!1300668 (= e!833894 e!833892)))

(declare-fun lt!427673 () Bool)

(declare-fun appendIndex!134 (List!13082 List!13082 Int) Bool)

(assert (=> b!1300668 (= lt!427673 (appendIndex!134 (list!4883 (left!11195 (c!213934 lt!427435))) (list!4883 (right!11525 (c!213934 lt!427435))) 0))))

(assert (=> b!1300668 (= c!214141 (< 0 (size!10649 (left!11195 (c!213934 lt!427435)))))))

(assert (= (and d!367305 res!582518) b!1300663))

(assert (= (and d!367305 c!214140) b!1300664))

(assert (= (and d!367305 (not c!214140)) b!1300668))

(assert (= (and b!1300668 c!214141) b!1300665))

(assert (= (and b!1300668 (not c!214141)) b!1300667))

(assert (= (or b!1300665 b!1300667) bm!89109))

(assert (= (and bm!89109 c!214142) b!1300662))

(assert (= (and bm!89109 (not c!214142)) b!1300666))

(declare-fun m!1452405 () Bool)

(assert (=> b!1300668 m!1452405))

(declare-fun m!1452407 () Bool)

(assert (=> b!1300668 m!1452407))

(assert (=> b!1300668 m!1452405))

(assert (=> b!1300668 m!1452407))

(declare-fun m!1452409 () Bool)

(assert (=> b!1300668 m!1452409))

(declare-fun m!1452411 () Bool)

(assert (=> b!1300668 m!1452411))

(assert (=> b!1300666 m!1452411))

(declare-fun m!1452413 () Bool)

(assert (=> b!1300664 m!1452413))

(declare-fun m!1452416 () Bool)

(assert (=> bm!89109 m!1452416))

(assert (=> b!1300663 m!1451759))

(assert (=> d!367305 m!1452397))

(assert (=> d!367305 m!1452397))

(declare-fun m!1452423 () Bool)

(assert (=> d!367305 m!1452423))

(assert (=> d!367081 d!367305))

(assert (=> d!367051 d!367155))

(declare-fun d!367315 () Bool)

(declare-fun lt!427682 () Token!4152)

(declare-fun apply!2909 (List!13087 Int) Token!4152)

(assert (=> d!367315 (= lt!427682 (apply!2909 (list!4882 (_1!7243 lt!427486)) 0))))

(declare-fun apply!2910 (Conc!4277 Int) Token!4152)

(assert (=> d!367315 (= lt!427682 (apply!2910 (c!213990 (_1!7243 lt!427486)) 0))))

(declare-fun e!833918 () Bool)

(assert (=> d!367315 e!833918))

(declare-fun res!582535 () Bool)

(assert (=> d!367315 (=> (not res!582535) (not e!833918))))

(assert (=> d!367315 (= res!582535 (<= 0 0))))

(assert (=> d!367315 (= (apply!2903 (_1!7243 lt!427486) 0) lt!427682)))

(declare-fun b!1300703 () Bool)

(assert (=> b!1300703 (= e!833918 (< 0 (size!10647 (_1!7243 lt!427486))))))

(assert (= (and d!367315 res!582535) b!1300703))

(declare-fun m!1452467 () Bool)

(assert (=> d!367315 m!1452467))

(assert (=> d!367315 m!1452467))

(declare-fun m!1452471 () Bool)

(assert (=> d!367315 m!1452471))

(declare-fun m!1452475 () Bool)

(assert (=> d!367315 m!1452475))

(assert (=> b!1300703 m!1451637))

(assert (=> b!1299951 d!367315))

(declare-fun d!367339 () Bool)

(assert (=> d!367339 (= (list!4882 (_1!7243 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t2!34))))) (list!4886 (c!213990 (_1!7243 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t2!34)))))))))

(declare-fun bs!329246 () Bool)

(assert (= bs!329246 d!367339))

(declare-fun m!1452487 () Bool)

(assert (=> bs!329246 m!1452487))

(assert (=> d!366941 d!367339))

(declare-fun d!367341 () Bool)

(declare-fun lt!427683 () Int)

(assert (=> d!367341 (= lt!427683 (size!10654 (list!4882 (_1!7243 lt!427486))))))

(assert (=> d!367341 (= lt!427683 (size!10655 (c!213990 (_1!7243 lt!427486))))))

(assert (=> d!367341 (= (size!10647 (_1!7243 lt!427486)) lt!427683)))

(declare-fun bs!329247 () Bool)

(assert (= bs!329247 d!367341))

(assert (=> bs!329247 m!1452467))

(assert (=> bs!329247 m!1452467))

(declare-fun m!1452491 () Bool)

(assert (=> bs!329247 m!1452491))

(declare-fun m!1452493 () Bool)

(assert (=> bs!329247 m!1452493))

(assert (=> d!366941 d!367341))

(declare-fun d!367345 () Bool)

(declare-fun lt!427685 () BalanceConc!8490)

(assert (=> d!367345 (= (list!4879 lt!427685) (printList!548 thiss!19762 (list!4882 (singletonSeq!829 t2!34))))))

(assert (=> d!367345 (= lt!427685 (printTailRec!530 thiss!19762 (singletonSeq!829 t2!34) 0 (BalanceConc!8491 Empty!4275)))))

(assert (=> d!367345 (= (print!732 thiss!19762 (singletonSeq!829 t2!34)) lt!427685)))

(declare-fun bs!329249 () Bool)

(assert (= bs!329249 d!367345))

(declare-fun m!1452501 () Bool)

(assert (=> bs!329249 m!1452501))

(assert (=> bs!329249 m!1451641))

(assert (=> bs!329249 m!1451643))

(assert (=> bs!329249 m!1451643))

(declare-fun m!1452503 () Bool)

(assert (=> bs!329249 m!1452503))

(assert (=> bs!329249 m!1451641))

(declare-fun m!1452505 () Bool)

(assert (=> bs!329249 m!1452505))

(assert (=> d!366941 d!367345))

(declare-fun d!367349 () Bool)

(declare-fun e!833919 () Bool)

(assert (=> d!367349 e!833919))

(declare-fun res!582536 () Bool)

(assert (=> d!367349 (=> (not res!582536) (not e!833919))))

(declare-fun lt!427686 () BalanceConc!8494)

(assert (=> d!367349 (= res!582536 (= (list!4882 lt!427686) (Cons!13021 t2!34 Nil!13021)))))

(assert (=> d!367349 (= lt!427686 (singleton!365 t2!34))))

(assert (=> d!367349 (= (singletonSeq!829 t2!34) lt!427686)))

(declare-fun b!1300704 () Bool)

(assert (=> b!1300704 (= e!833919 (isBalanced!1259 (c!213990 lt!427686)))))

(assert (= (and d!367349 res!582536) b!1300704))

(declare-fun m!1452507 () Bool)

(assert (=> d!367349 m!1452507))

(declare-fun m!1452509 () Bool)

(assert (=> d!367349 m!1452509))

(declare-fun m!1452511 () Bool)

(assert (=> b!1300704 m!1452511))

(assert (=> d!366941 d!367349))

(assert (=> d!366941 d!367023))

(declare-fun b!1300705 () Bool)

(declare-fun res!582537 () Bool)

(declare-fun e!833922 () Bool)

(assert (=> b!1300705 (=> (not res!582537) (not e!833922))))

(declare-fun lt!427687 () tuple2!12714)

(assert (=> b!1300705 (= res!582537 (= (list!4882 (_1!7243 lt!427687)) (_1!7245 (lexList!504 thiss!19762 rules!2550 (list!4879 (print!732 thiss!19762 (singletonSeq!829 t2!34)))))))))

(declare-fun d!367351 () Bool)

(assert (=> d!367351 e!833922))

(declare-fun res!582539 () Bool)

(assert (=> d!367351 (=> (not res!582539) (not e!833922))))

(declare-fun e!833920 () Bool)

(assert (=> d!367351 (= res!582539 e!833920)))

(declare-fun c!214152 () Bool)

(assert (=> d!367351 (= c!214152 (> (size!10647 (_1!7243 lt!427687)) 0))))

(assert (=> d!367351 (= lt!427687 (lexTailRecV2!353 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t2!34)) (BalanceConc!8491 Empty!4275) (print!732 thiss!19762 (singletonSeq!829 t2!34)) (BalanceConc!8495 Empty!4277)))))

(assert (=> d!367351 (= (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t2!34))) lt!427687)))

(declare-fun b!1300706 () Bool)

(assert (=> b!1300706 (= e!833920 (= (_2!7243 lt!427687) (print!732 thiss!19762 (singletonSeq!829 t2!34))))))

(declare-fun b!1300707 () Bool)

(assert (=> b!1300707 (= e!833922 (= (list!4879 (_2!7243 lt!427687)) (_2!7245 (lexList!504 thiss!19762 rules!2550 (list!4879 (print!732 thiss!19762 (singletonSeq!829 t2!34)))))))))

(declare-fun b!1300708 () Bool)

(declare-fun e!833921 () Bool)

(assert (=> b!1300708 (= e!833921 (not (isEmpty!7743 (_1!7243 lt!427687))))))

(declare-fun b!1300709 () Bool)

(assert (=> b!1300709 (= e!833920 e!833921)))

(declare-fun res!582538 () Bool)

(assert (=> b!1300709 (= res!582538 (< (size!10643 (_2!7243 lt!427687)) (size!10643 (print!732 thiss!19762 (singletonSeq!829 t2!34)))))))

(assert (=> b!1300709 (=> (not res!582538) (not e!833921))))

(assert (= (and d!367351 c!214152) b!1300709))

(assert (= (and d!367351 (not c!214152)) b!1300706))

(assert (= (and b!1300709 res!582538) b!1300708))

(assert (= (and d!367351 res!582539) b!1300705))

(assert (= (and b!1300705 res!582537) b!1300707))

(declare-fun m!1452513 () Bool)

(assert (=> b!1300705 m!1452513))

(assert (=> b!1300705 m!1451645))

(declare-fun m!1452515 () Bool)

(assert (=> b!1300705 m!1452515))

(assert (=> b!1300705 m!1452515))

(declare-fun m!1452517 () Bool)

(assert (=> b!1300705 m!1452517))

(declare-fun m!1452519 () Bool)

(assert (=> d!367351 m!1452519))

(assert (=> d!367351 m!1451645))

(assert (=> d!367351 m!1451645))

(declare-fun m!1452521 () Bool)

(assert (=> d!367351 m!1452521))

(declare-fun m!1452523 () Bool)

(assert (=> b!1300708 m!1452523))

(declare-fun m!1452525 () Bool)

(assert (=> b!1300707 m!1452525))

(assert (=> b!1300707 m!1451645))

(assert (=> b!1300707 m!1452515))

(assert (=> b!1300707 m!1452515))

(assert (=> b!1300707 m!1452517))

(declare-fun m!1452527 () Bool)

(assert (=> b!1300709 m!1452527))

(assert (=> b!1300709 m!1451645))

(declare-fun m!1452529 () Bool)

(assert (=> b!1300709 m!1452529))

(assert (=> d!366941 d!367351))

(declare-fun d!367353 () Bool)

(assert (=> d!367353 (= (list!4882 (singletonSeq!829 t2!34)) (list!4886 (c!213990 (singletonSeq!829 t2!34))))))

(declare-fun bs!329250 () Bool)

(assert (= bs!329250 d!367353))

(declare-fun m!1452531 () Bool)

(assert (=> bs!329250 m!1452531))

(assert (=> d!366941 d!367353))

(declare-fun d!367355 () Bool)

(declare-fun res!582543 () List!13082)

(assert (=> d!367355 (dynLambda!5700 lambda!51147 res!582543)))

(declare-fun e!833926 () Bool)

(assert (=> d!367355 e!833926))

(assert (=> d!367355 (= (choose!7982 lambda!51147) res!582543)))

(declare-fun b!1300713 () Bool)

(declare-fun tp!379383 () Bool)

(assert (=> b!1300713 (= e!833926 (and tp_is_empty!6595 tp!379383))))

(assert (= (and d!367355 ((_ is Cons!13016) res!582543)) b!1300713))

(declare-fun b_lambda!37291 () Bool)

(assert (=> (not b_lambda!37291) (not d!367355)))

(declare-fun m!1452545 () Bool)

(assert (=> d!367355 m!1452545))

(assert (=> d!367061 d!367355))

(assert (=> d!367061 d!367027))

(declare-fun d!367361 () Bool)

(declare-fun c!214153 () Bool)

(assert (=> d!367361 (= c!214153 ((_ is Nil!13016) lt!427434))))

(declare-fun e!833927 () (InoxSet C!7408))

(assert (=> d!367361 (= (content!1841 lt!427434) e!833927)))

(declare-fun b!1300714 () Bool)

(assert (=> b!1300714 (= e!833927 ((as const (Array C!7408 Bool)) false))))

(declare-fun b!1300715 () Bool)

(assert (=> b!1300715 (= e!833927 ((_ map or) (store ((as const (Array C!7408 Bool)) false) (h!18417 lt!427434) true) (content!1841 (t!117591 lt!427434))))))

(assert (= (and d!367361 c!214153) b!1300714))

(assert (= (and d!367361 (not c!214153)) b!1300715))

(declare-fun m!1452547 () Bool)

(assert (=> b!1300715 m!1452547))

(assert (=> b!1300715 m!1452117))

(assert (=> d!367015 d!367361))

(declare-fun d!367363 () Bool)

(declare-fun res!582551 () Bool)

(declare-fun e!833936 () Bool)

(assert (=> d!367363 (=> res!582551 e!833936)))

(assert (=> d!367363 (= res!582551 ((_ is Nil!13018) rules!2550))))

(assert (=> d!367363 (= (forall!3264 rules!2550 lambda!51162) e!833936)))

(declare-fun b!1300725 () Bool)

(declare-fun e!833937 () Bool)

(assert (=> b!1300725 (= e!833936 e!833937)))

(declare-fun res!582552 () Bool)

(assert (=> b!1300725 (=> (not res!582552) (not e!833937))))

(declare-fun dynLambda!5711 (Int Rule!4290) Bool)

(assert (=> b!1300725 (= res!582552 (dynLambda!5711 lambda!51162 (h!18419 rules!2550)))))

(declare-fun b!1300726 () Bool)

(assert (=> b!1300726 (= e!833937 (forall!3264 (t!117593 rules!2550) lambda!51162))))

(assert (= (and d!367363 (not res!582551)) b!1300725))

(assert (= (and b!1300725 res!582552) b!1300726))

(declare-fun b_lambda!37295 () Bool)

(assert (=> (not b_lambda!37295) (not b!1300725)))

(declare-fun m!1452565 () Bool)

(assert (=> b!1300725 m!1452565))

(declare-fun m!1452567 () Bool)

(assert (=> b!1300726 m!1452567))

(assert (=> d!367035 d!367363))

(declare-fun d!367377 () Bool)

(declare-fun c!214157 () Bool)

(assert (=> d!367377 (= c!214157 ((_ is Node!4275) (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34)))))))

(declare-fun e!833940 () Bool)

(assert (=> d!367377 (= (inv!17452 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34)))) e!833940)))

(declare-fun b!1300731 () Bool)

(assert (=> b!1300731 (= e!833940 (inv!17456 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34)))))))

(declare-fun b!1300732 () Bool)

(declare-fun e!833941 () Bool)

(assert (=> b!1300732 (= e!833940 e!833941)))

(declare-fun res!582553 () Bool)

(assert (=> b!1300732 (= res!582553 (not ((_ is Leaf!6594) (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34))))))))

(assert (=> b!1300732 (=> res!582553 e!833941)))

(declare-fun b!1300733 () Bool)

(assert (=> b!1300733 (= e!833941 (inv!17457 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34)))))))

(assert (= (and d!367377 c!214157) b!1300731))

(assert (= (and d!367377 (not c!214157)) b!1300732))

(assert (= (and b!1300732 (not res!582553)) b!1300733))

(declare-fun m!1452573 () Bool)

(assert (=> b!1300731 m!1452573))

(declare-fun m!1452575 () Bool)

(assert (=> b!1300733 m!1452575))

(assert (=> b!1300135 d!367377))

(assert (=> b!1300149 d!367045))

(declare-fun d!367383 () Bool)

(declare-fun lt!427697 () Bool)

(assert (=> d!367383 (= lt!427697 (isEmpty!7737 (list!4879 (_2!7243 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t2!34)))))))))

(assert (=> d!367383 (= lt!427697 (isEmpty!7739 (c!213934 (_2!7243 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t2!34)))))))))

(assert (=> d!367383 (= (isEmpty!7736 (_2!7243 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t2!34))))) lt!427697)))

(declare-fun bs!329255 () Bool)

(assert (= bs!329255 d!367383))

(declare-fun m!1452577 () Bool)

(assert (=> bs!329255 m!1452577))

(assert (=> bs!329255 m!1452577))

(declare-fun m!1452579 () Bool)

(assert (=> bs!329255 m!1452579))

(declare-fun m!1452581 () Bool)

(assert (=> bs!329255 m!1452581))

(assert (=> b!1299953 d!367383))

(assert (=> b!1299953 d!367351))

(assert (=> b!1299953 d!367345))

(assert (=> b!1299953 d!367349))

(declare-fun d!367385 () Bool)

(declare-fun lt!427698 () Token!4152)

(assert (=> d!367385 (= lt!427698 (apply!2909 (list!4882 (_1!7243 lt!427506)) 0))))

(assert (=> d!367385 (= lt!427698 (apply!2910 (c!213990 (_1!7243 lt!427506)) 0))))

(declare-fun e!833945 () Bool)

(assert (=> d!367385 e!833945))

(declare-fun res!582556 () Bool)

(assert (=> d!367385 (=> (not res!582556) (not e!833945))))

(assert (=> d!367385 (= res!582556 (<= 0 0))))

(assert (=> d!367385 (= (apply!2903 (_1!7243 lt!427506) 0) lt!427698)))

(declare-fun b!1300740 () Bool)

(assert (=> b!1300740 (= e!833945 (< 0 (size!10647 (_1!7243 lt!427506))))))

(assert (= (and d!367385 res!582556) b!1300740))

(assert (=> d!367385 m!1452295))

(assert (=> d!367385 m!1452295))

(declare-fun m!1452591 () Bool)

(assert (=> d!367385 m!1452591))

(declare-fun m!1452593 () Bool)

(assert (=> d!367385 m!1452593))

(assert (=> b!1300740 m!1451725))

(assert (=> b!1300038 d!367385))

(declare-fun d!367391 () Bool)

(assert (=> d!367391 (= (list!4879 lt!427528) (list!4883 (c!213934 lt!427528)))))

(declare-fun bs!329256 () Bool)

(assert (= bs!329256 d!367391))

(declare-fun m!1452595 () Bool)

(assert (=> bs!329256 m!1452595))

(assert (=> d!367077 d!367391))

(declare-fun d!367393 () Bool)

(declare-fun lt!427700 () Bool)

(assert (=> d!367393 (= lt!427700 (isEmpty!7737 (list!4879 (_2!7243 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t1!34)))))))))

(assert (=> d!367393 (= lt!427700 (isEmpty!7739 (c!213934 (_2!7243 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t1!34)))))))))

(assert (=> d!367393 (= (isEmpty!7736 (_2!7243 (lex!795 thiss!19762 rules!2550 (print!732 thiss!19762 (singletonSeq!829 t1!34))))) lt!427700)))

(declare-fun bs!329257 () Bool)

(assert (= bs!329257 d!367393))

(declare-fun m!1452597 () Bool)

(assert (=> bs!329257 m!1452597))

(assert (=> bs!329257 m!1452597))

(declare-fun m!1452599 () Bool)

(assert (=> bs!329257 m!1452599))

(declare-fun m!1452601 () Bool)

(assert (=> bs!329257 m!1452601))

(assert (=> b!1300040 d!367393))

(assert (=> b!1300040 d!367219))

(assert (=> b!1300040 d!367239))

(assert (=> b!1300040 d!367245))

(assert (=> b!1300106 d!367117))

(declare-fun d!367395 () Bool)

(assert (=> d!367395 true))

(assert (=> d!367395 true))

(declare-fun res!582559 () Bool)

(assert (=> d!367395 (= (choose!7978 lambda!51147) res!582559)))

(assert (=> d!367027 d!367395))

(declare-fun d!367399 () Bool)

(declare-fun lt!427702 () Int)

(assert (=> d!367399 (>= lt!427702 0)))

(declare-fun e!833948 () Int)

(assert (=> d!367399 (= lt!427702 e!833948)))

(declare-fun c!214166 () Bool)

(assert (=> d!367399 (= c!214166 ((_ is Nil!13016) (list!4879 lt!427435)))))

(assert (=> d!367399 (= (size!10648 (list!4879 lt!427435)) lt!427702)))

(declare-fun b!1300745 () Bool)

(assert (=> b!1300745 (= e!833948 0)))

(declare-fun b!1300746 () Bool)

(assert (=> b!1300746 (= e!833948 (+ 1 (size!10648 (t!117591 (list!4879 lt!427435)))))))

(assert (= (and d!367399 c!214166) b!1300745))

(assert (= (and d!367399 (not c!214166)) b!1300746))

(declare-fun m!1452617 () Bool)

(assert (=> b!1300746 m!1452617))

(assert (=> d!367045 d!367399))

(assert (=> d!367045 d!367303))

(declare-fun d!367403 () Bool)

(declare-fun lt!427705 () Int)

(assert (=> d!367403 (= lt!427705 (size!10648 (list!4883 (c!213934 lt!427435))))))

(assert (=> d!367403 (= lt!427705 (ite ((_ is Empty!4275) (c!213934 lt!427435)) 0 (ite ((_ is Leaf!6594) (c!213934 lt!427435)) (csize!8781 (c!213934 lt!427435)) (csize!8780 (c!213934 lt!427435)))))))

(assert (=> d!367403 (= (size!10649 (c!213934 lt!427435)) lt!427705)))

(declare-fun bs!329264 () Bool)

(assert (= bs!329264 d!367403))

(assert (=> bs!329264 m!1452397))

(assert (=> bs!329264 m!1452397))

(declare-fun m!1452627 () Bool)

(assert (=> bs!329264 m!1452627))

(assert (=> d!367045 d!367403))

(declare-fun d!367413 () Bool)

(assert (=> d!367413 (= (inv!17445 (tag!2507 (h!18419 (t!117593 rules!2550)))) (= (mod (str.len (value!73614 (tag!2507 (h!18419 (t!117593 rules!2550))))) 2) 0))))

(assert (=> b!1300183 d!367413))

(declare-fun d!367415 () Bool)

(declare-fun res!582562 () Bool)

(declare-fun e!833956 () Bool)

(assert (=> d!367415 (=> (not res!582562) (not e!833956))))

(assert (=> d!367415 (= res!582562 (semiInverseModEq!856 (toChars!3315 (transformation!2245 (h!18419 (t!117593 rules!2550)))) (toValue!3456 (transformation!2245 (h!18419 (t!117593 rules!2550))))))))

(assert (=> d!367415 (= (inv!17448 (transformation!2245 (h!18419 (t!117593 rules!2550)))) e!833956)))

(declare-fun b!1300759 () Bool)

(assert (=> b!1300759 (= e!833956 (equivClasses!815 (toChars!3315 (transformation!2245 (h!18419 (t!117593 rules!2550)))) (toValue!3456 (transformation!2245 (h!18419 (t!117593 rules!2550))))))))

(assert (= (and d!367415 res!582562) b!1300759))

(declare-fun m!1452633 () Bool)

(assert (=> d!367415 m!1452633))

(declare-fun m!1452635 () Bool)

(assert (=> b!1300759 m!1452635))

(assert (=> b!1300183 d!367415))

(declare-fun d!367419 () Bool)

(declare-fun lt!427707 () Bool)

(assert (=> d!367419 (= lt!427707 (select (content!1841 (t!117591 lt!427432)) lt!427433))))

(declare-fun e!833958 () Bool)

(assert (=> d!367419 (= lt!427707 e!833958)))

(declare-fun res!582563 () Bool)

(assert (=> d!367419 (=> (not res!582563) (not e!833958))))

(assert (=> d!367419 (= res!582563 ((_ is Cons!13016) (t!117591 lt!427432)))))

(assert (=> d!367419 (= (contains!2183 (t!117591 lt!427432) lt!427433) lt!427707)))

(declare-fun b!1300760 () Bool)

(declare-fun e!833957 () Bool)

(assert (=> b!1300760 (= e!833958 e!833957)))

(declare-fun res!582564 () Bool)

(assert (=> b!1300760 (=> res!582564 e!833957)))

(assert (=> b!1300760 (= res!582564 (= (h!18417 (t!117591 lt!427432)) lt!427433))))

(declare-fun b!1300761 () Bool)

(assert (=> b!1300761 (= e!833957 (contains!2183 (t!117591 (t!117591 lt!427432)) lt!427433))))

(assert (= (and d!367419 res!582563) b!1300760))

(assert (= (and b!1300760 (not res!582564)) b!1300761))

(assert (=> d!367419 m!1452051))

(declare-fun m!1452637 () Bool)

(assert (=> d!367419 m!1452637))

(declare-fun m!1452639 () Bool)

(assert (=> b!1300761 m!1452639))

(assert (=> b!1300020 d!367419))

(declare-fun b!1300783 () Bool)

(declare-fun e!833976 () Bool)

(declare-fun e!833977 () Bool)

(assert (=> b!1300783 (= e!833976 e!833977)))

(declare-fun res!582583 () Bool)

(assert (=> b!1300783 (= res!582583 (not ((_ is Cons!13018) rules!2550)))))

(assert (=> b!1300783 (=> res!582583 e!833977)))

(declare-fun bm!89119 () Bool)

(declare-fun call!89124 () Bool)

(assert (=> bm!89119 (= call!89124 (ruleDisjointCharsFromAllFromOtherType!300 (h!18419 rules!2550) (t!117593 rules!2550)))))

(declare-fun b!1300784 () Bool)

(declare-fun e!833975 () Bool)

(assert (=> b!1300784 (= e!833975 call!89124)))

(declare-fun b!1300785 () Bool)

(assert (=> b!1300785 (= e!833977 call!89124)))

(declare-fun b!1300786 () Bool)

(assert (=> b!1300786 (= e!833976 e!833975)))

(declare-fun res!582582 () Bool)

(declare-fun rulesUseDisjointChars!153 (Rule!4290 Rule!4290) Bool)

(assert (=> b!1300786 (= res!582582 (rulesUseDisjointChars!153 (h!18419 rules!2550) (h!18419 rules!2550)))))

(assert (=> b!1300786 (=> (not res!582582) (not e!833975))))

(declare-fun d!367421 () Bool)

(declare-fun c!214170 () Bool)

(assert (=> d!367421 (= c!214170 (and ((_ is Cons!13018) rules!2550) (not (= (isSeparator!2245 (h!18419 rules!2550)) (isSeparator!2245 (h!18419 rules!2550))))))))

(assert (=> d!367421 (= (ruleDisjointCharsFromAllFromOtherType!300 (h!18419 rules!2550) rules!2550) e!833976)))

(assert (= (and d!367421 c!214170) b!1300786))

(assert (= (and d!367421 (not c!214170)) b!1300783))

(assert (= (and b!1300786 res!582582) b!1300784))

(assert (= (and b!1300783 (not res!582583)) b!1300785))

(assert (= (or b!1300784 b!1300785) bm!89119))

(declare-fun m!1452649 () Bool)

(assert (=> bm!89119 m!1452649))

(declare-fun m!1452651 () Bool)

(assert (=> b!1300786 m!1452651))

(assert (=> b!1300036 d!367421))

(declare-fun b!1300789 () Bool)

(declare-fun res!582585 () Bool)

(declare-fun e!833979 () Bool)

(assert (=> b!1300789 (=> (not res!582585) (not e!833979))))

(declare-fun lt!427712 () List!13082)

(assert (=> b!1300789 (= res!582585 (= (size!10648 lt!427712) (+ (size!10648 lt!427432) (size!10648 lt!427523))))))

(declare-fun b!1300788 () Bool)

(declare-fun e!833978 () List!13082)

(assert (=> b!1300788 (= e!833978 (Cons!13016 (h!18417 lt!427432) (++!3312 (t!117591 lt!427432) lt!427523)))))

(declare-fun b!1300790 () Bool)

(assert (=> b!1300790 (= e!833979 (or (not (= lt!427523 Nil!13016)) (= lt!427712 lt!427432)))))

(declare-fun b!1300787 () Bool)

(assert (=> b!1300787 (= e!833978 lt!427523)))

(declare-fun d!367427 () Bool)

(assert (=> d!367427 e!833979))

(declare-fun res!582584 () Bool)

(assert (=> d!367427 (=> (not res!582584) (not e!833979))))

(assert (=> d!367427 (= res!582584 (= (content!1841 lt!427712) ((_ map or) (content!1841 lt!427432) (content!1841 lt!427523))))))

(assert (=> d!367427 (= lt!427712 e!833978)))

(declare-fun c!214171 () Bool)

(assert (=> d!367427 (= c!214171 ((_ is Nil!13016) lt!427432))))

(assert (=> d!367427 (= (++!3312 lt!427432 lt!427523) lt!427712)))

(assert (= (and d!367427 c!214171) b!1300787))

(assert (= (and d!367427 (not c!214171)) b!1300788))

(assert (= (and d!367427 res!582584) b!1300789))

(assert (= (and b!1300789 res!582585) b!1300790))

(declare-fun m!1452653 () Bool)

(assert (=> b!1300789 m!1452653))

(assert (=> b!1300789 m!1451793))

(declare-fun m!1452655 () Bool)

(assert (=> b!1300789 m!1452655))

(declare-fun m!1452657 () Bool)

(assert (=> b!1300788 m!1452657))

(declare-fun m!1452659 () Bool)

(assert (=> d!367427 m!1452659))

(assert (=> d!367427 m!1451703))

(declare-fun m!1452661 () Bool)

(assert (=> d!367427 m!1452661))

(assert (=> d!367059 d!367427))

(declare-fun d!367429 () Bool)

(declare-fun lt!427713 () Int)

(assert (=> d!367429 (>= lt!427713 0)))

(declare-fun e!833980 () Int)

(assert (=> d!367429 (= lt!427713 e!833980)))

(declare-fun c!214172 () Bool)

(assert (=> d!367429 (= c!214172 ((_ is Nil!13016) lt!427434))))

(assert (=> d!367429 (= (size!10648 lt!427434) lt!427713)))

(declare-fun b!1300791 () Bool)

(assert (=> b!1300791 (= e!833980 0)))

(declare-fun b!1300792 () Bool)

(assert (=> b!1300792 (= e!833980 (+ 1 (size!10648 (t!117591 lt!427434))))))

(assert (= (and d!367429 c!214172) b!1300791))

(assert (= (and d!367429 (not c!214172)) b!1300792))

(declare-fun m!1452663 () Bool)

(assert (=> b!1300792 m!1452663))

(assert (=> d!367059 d!367429))

(assert (=> d!367059 d!367195))

(declare-fun b!1300822 () Bool)

(declare-fun res!582606 () Bool)

(declare-fun e!833999 () Bool)

(assert (=> b!1300822 (=> (not res!582606) (not e!833999))))

(declare-fun isBalanced!1260 (Conc!4275) Bool)

(declare-fun ++!3316 (Conc!4275 Conc!4275) Conc!4275)

(assert (=> b!1300822 (= res!582606 (isBalanced!1260 (++!3316 (c!213934 (charsOf!1217 t1!34)) (c!213934 (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0))))))))

(declare-fun b!1300823 () Bool)

(declare-fun res!582608 () Bool)

(assert (=> b!1300823 (=> (not res!582608) (not e!833999))))

(declare-fun height!615 (Conc!4275) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1300823 (= res!582608 (<= (height!615 (++!3316 (c!213934 (charsOf!1217 t1!34)) (c!213934 (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0))))) (+ (max!0 (height!615 (c!213934 (charsOf!1217 t1!34))) (height!615 (c!213934 (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0))))) 1)))))

(declare-fun b!1300824 () Bool)

(declare-fun res!582607 () Bool)

(assert (=> b!1300824 (=> (not res!582607) (not e!833999))))

(assert (=> b!1300824 (= res!582607 (>= (height!615 (++!3316 (c!213934 (charsOf!1217 t1!34)) (c!213934 (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0))))) (max!0 (height!615 (c!213934 (charsOf!1217 t1!34))) (height!615 (c!213934 (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0)))))))))

(declare-fun d!367431 () Bool)

(assert (=> d!367431 e!833999))

(declare-fun res!582605 () Bool)

(assert (=> d!367431 (=> (not res!582605) (not e!833999))))

(declare-fun appendAssocInst!253 (Conc!4275 Conc!4275) Bool)

(assert (=> d!367431 (= res!582605 (appendAssocInst!253 (c!213934 (charsOf!1217 t1!34)) (c!213934 (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0)))))))

(declare-fun lt!427721 () BalanceConc!8490)

(assert (=> d!367431 (= lt!427721 (BalanceConc!8491 (++!3316 (c!213934 (charsOf!1217 t1!34)) (c!213934 (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0))))))))

(assert (=> d!367431 (= (++!3314 (charsOf!1217 t1!34) (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0))) lt!427721)))

(declare-fun b!1300825 () Bool)

(assert (=> b!1300825 (= e!833999 (= (list!4879 lt!427721) (++!3312 (list!4879 (charsOf!1217 t1!34)) (list!4879 (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0))))))))

(assert (= (and d!367431 res!582605) b!1300822))

(assert (= (and b!1300822 res!582606) b!1300823))

(assert (= (and b!1300823 res!582608) b!1300824))

(assert (= (and b!1300824 res!582607) b!1300825))

(declare-fun m!1452707 () Bool)

(assert (=> b!1300824 m!1452707))

(declare-fun m!1452709 () Bool)

(assert (=> b!1300824 m!1452709))

(declare-fun m!1452711 () Bool)

(assert (=> b!1300824 m!1452711))

(declare-fun m!1452713 () Bool)

(assert (=> b!1300824 m!1452713))

(assert (=> b!1300824 m!1452707))

(assert (=> b!1300824 m!1452713))

(declare-fun m!1452715 () Bool)

(assert (=> b!1300824 m!1452715))

(assert (=> b!1300824 m!1452709))

(declare-fun m!1452717 () Bool)

(assert (=> d!367431 m!1452717))

(assert (=> d!367431 m!1452709))

(assert (=> b!1300823 m!1452707))

(assert (=> b!1300823 m!1452709))

(assert (=> b!1300823 m!1452711))

(assert (=> b!1300823 m!1452713))

(assert (=> b!1300823 m!1452707))

(assert (=> b!1300823 m!1452713))

(assert (=> b!1300823 m!1452715))

(assert (=> b!1300823 m!1452709))

(assert (=> b!1300822 m!1452709))

(assert (=> b!1300822 m!1452709))

(declare-fun m!1452719 () Bool)

(assert (=> b!1300822 m!1452719))

(declare-fun m!1452721 () Bool)

(assert (=> b!1300825 m!1452721))

(assert (=> b!1300825 m!1451409))

(declare-fun m!1452723 () Bool)

(assert (=> b!1300825 m!1452723))

(assert (=> b!1300825 m!1451879))

(declare-fun m!1452725 () Bool)

(assert (=> b!1300825 m!1452725))

(assert (=> b!1300825 m!1452723))

(assert (=> b!1300825 m!1452725))

(declare-fun m!1452727 () Bool)

(assert (=> b!1300825 m!1452727))

(assert (=> d!367083 d!367431))

(declare-fun lt!427761 () Bool)

(declare-fun d!367455 () Bool)

(assert (=> d!367455 (= lt!427761 (prefixMatch!72 (rulesRegex!130 thiss!19762 rules!2550) (list!4879 (++!3314 (charsOf!1217 t1!34) (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0))))))))

(declare-datatypes ((Context!1150 0))(
  ( (Context!1151 (exprs!1075 List!13090)) )
))
(declare-fun prefixMatchZipperSequence!160 ((InoxSet Context!1150) BalanceConc!8490 Int) Bool)

(declare-fun focus!66 (Regex!3559) (InoxSet Context!1150))

(assert (=> d!367455 (= lt!427761 (prefixMatchZipperSequence!160 (focus!66 (rulesRegex!130 thiss!19762 rules!2550)) (++!3314 (charsOf!1217 t1!34) (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0))) 0))))

(declare-fun lt!427758 () Unit!19152)

(declare-fun lt!427763 () Unit!19152)

(assert (=> d!367455 (= lt!427758 lt!427763)))

(declare-fun lt!427754 () (InoxSet Context!1150))

(declare-fun lt!427757 () List!13082)

(declare-fun prefixMatchZipper!46 ((InoxSet Context!1150) List!13082) Bool)

(assert (=> d!367455 (= (prefixMatch!72 (rulesRegex!130 thiss!19762 rules!2550) lt!427757) (prefixMatchZipper!46 lt!427754 lt!427757))))

(declare-datatypes ((List!13092 0))(
  ( (Nil!13026) (Cons!13026 (h!18427 Context!1150) (t!117653 List!13092)) )
))
(declare-fun lt!427759 () List!13092)

(declare-fun prefixMatchZipperRegexEquiv!46 ((InoxSet Context!1150) List!13092 Regex!3559 List!13082) Unit!19152)

(assert (=> d!367455 (= lt!427763 (prefixMatchZipperRegexEquiv!46 lt!427754 lt!427759 (rulesRegex!130 thiss!19762 rules!2550) lt!427757))))

(assert (=> d!367455 (= lt!427757 (list!4879 (++!3314 (charsOf!1217 t1!34) (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0)))))))

(declare-fun toList!730 ((InoxSet Context!1150)) List!13092)

(assert (=> d!367455 (= lt!427759 (toList!730 (focus!66 (rulesRegex!130 thiss!19762 rules!2550))))))

(assert (=> d!367455 (= lt!427754 (focus!66 (rulesRegex!130 thiss!19762 rules!2550)))))

(declare-fun lt!427756 () Unit!19152)

(declare-fun lt!427762 () Unit!19152)

(assert (=> d!367455 (= lt!427756 lt!427762)))

(declare-fun lt!427760 () (InoxSet Context!1150))

(declare-fun lt!427755 () Int)

(declare-fun dropList!358 (BalanceConc!8490 Int) List!13082)

(assert (=> d!367455 (= (prefixMatchZipper!46 lt!427760 (dropList!358 (++!3314 (charsOf!1217 t1!34) (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0))) lt!427755)) (prefixMatchZipperSequence!160 lt!427760 (++!3314 (charsOf!1217 t1!34) (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0))) lt!427755))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!46 ((InoxSet Context!1150) BalanceConc!8490 Int) Unit!19152)

(assert (=> d!367455 (= lt!427762 (lemmaprefixMatchZipperSequenceEquivalent!46 lt!427760 (++!3314 (charsOf!1217 t1!34) (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0))) lt!427755))))

(assert (=> d!367455 (= lt!427755 0)))

(assert (=> d!367455 (= lt!427760 (focus!66 (rulesRegex!130 thiss!19762 rules!2550)))))

(assert (=> d!367455 (validRegex!1537 (rulesRegex!130 thiss!19762 rules!2550))))

(assert (=> d!367455 (= (prefixMatchZipperSequence!158 (rulesRegex!130 thiss!19762 rules!2550) (++!3314 (charsOf!1217 t1!34) (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0)))) lt!427761)))

(declare-fun bs!329277 () Bool)

(assert (= bs!329277 d!367455))

(assert (=> bs!329277 m!1451417))

(declare-fun m!1452795 () Bool)

(assert (=> bs!329277 m!1452795))

(assert (=> bs!329277 m!1451417))

(declare-fun m!1452797 () Bool)

(assert (=> bs!329277 m!1452797))

(assert (=> bs!329277 m!1451417))

(declare-fun m!1452799 () Bool)

(assert (=> bs!329277 m!1452799))

(assert (=> bs!329277 m!1452795))

(declare-fun m!1452801 () Bool)

(assert (=> bs!329277 m!1452801))

(assert (=> bs!329277 m!1451417))

(declare-fun m!1452803 () Bool)

(assert (=> bs!329277 m!1452803))

(declare-fun m!1452805 () Bool)

(assert (=> bs!329277 m!1452805))

(assert (=> bs!329277 m!1451875))

(declare-fun m!1452807 () Bool)

(assert (=> bs!329277 m!1452807))

(declare-fun m!1452809 () Bool)

(assert (=> bs!329277 m!1452809))

(assert (=> bs!329277 m!1452795))

(assert (=> bs!329277 m!1451875))

(declare-fun m!1452811 () Bool)

(assert (=> bs!329277 m!1452811))

(assert (=> bs!329277 m!1451875))

(declare-fun m!1452813 () Bool)

(assert (=> bs!329277 m!1452813))

(assert (=> bs!329277 m!1451417))

(declare-fun m!1452815 () Bool)

(assert (=> bs!329277 m!1452815))

(assert (=> bs!329277 m!1451875))

(declare-fun m!1452817 () Bool)

(assert (=> bs!329277 m!1452817))

(assert (=> bs!329277 m!1452807))

(declare-fun m!1452819 () Bool)

(assert (=> bs!329277 m!1452819))

(assert (=> bs!329277 m!1451875))

(assert (=> bs!329277 m!1452803))

(assert (=> d!367083 d!367455))

(declare-fun d!367475 () Bool)

(declare-fun e!834063 () Bool)

(assert (=> d!367475 e!834063))

(declare-fun res!582626 () Bool)

(assert (=> d!367475 (=> (not res!582626) (not e!834063))))

(declare-fun lt!427766 () BalanceConc!8490)

(assert (=> d!367475 (= res!582626 (= (list!4879 lt!427766) (Cons!13016 (apply!2899 (charsOf!1217 t2!34) 0) Nil!13016)))))

(declare-fun singleton!366 (C!7408) BalanceConc!8490)

(assert (=> d!367475 (= lt!427766 (singleton!366 (apply!2899 (charsOf!1217 t2!34) 0)))))

(assert (=> d!367475 (= (singletonSeq!830 (apply!2899 (charsOf!1217 t2!34) 0)) lt!427766)))

(declare-fun b!1300958 () Bool)

(assert (=> b!1300958 (= e!834063 (isBalanced!1260 (c!213934 lt!427766)))))

(assert (= (and d!367475 res!582626) b!1300958))

(declare-fun m!1452821 () Bool)

(assert (=> d!367475 m!1452821))

(assert (=> d!367475 m!1451881))

(declare-fun m!1452823 () Bool)

(assert (=> d!367475 m!1452823))

(declare-fun m!1452825 () Bool)

(assert (=> b!1300958 m!1452825))

(assert (=> d!367083 d!367475))

(assert (=> d!367083 d!367079))

(declare-fun d!367477 () Bool)

(declare-fun lt!427767 () C!7408)

(assert (=> d!367477 (= lt!427767 (apply!2904 (list!4879 (charsOf!1217 t2!34)) 0))))

(assert (=> d!367477 (= lt!427767 (apply!2905 (c!213934 (charsOf!1217 t2!34)) 0))))

(declare-fun e!834064 () Bool)

(assert (=> d!367477 e!834064))

(declare-fun res!582627 () Bool)

(assert (=> d!367477 (=> (not res!582627) (not e!834064))))

(assert (=> d!367477 (= res!582627 (<= 0 0))))

(assert (=> d!367477 (= (apply!2899 (charsOf!1217 t2!34) 0) lt!427767)))

(declare-fun b!1300959 () Bool)

(assert (=> b!1300959 (= e!834064 (< 0 (size!10643 (charsOf!1217 t2!34))))))

(assert (= (and d!367477 res!582627) b!1300959))

(assert (=> d!367477 m!1451423))

(declare-fun m!1452827 () Bool)

(assert (=> d!367477 m!1452827))

(assert (=> d!367477 m!1452827))

(declare-fun m!1452829 () Bool)

(assert (=> d!367477 m!1452829))

(declare-fun m!1452831 () Bool)

(assert (=> d!367477 m!1452831))

(assert (=> b!1300959 m!1451423))

(declare-fun m!1452833 () Bool)

(assert (=> b!1300959 m!1452833))

(assert (=> d!367083 d!367477))

(assert (=> d!367083 d!367077))

(assert (=> d!367083 d!367047))

(declare-fun d!367479 () Bool)

(declare-fun c!214197 () Bool)

(assert (=> d!367479 (= c!214197 (isEmpty!7737 (tail!1862 lt!427432)))))

(declare-fun e!834065 () Bool)

(assert (=> d!367479 (= (prefixMatch!72 (derivativeStep!887 lt!427438 (head!2234 lt!427432)) (tail!1862 lt!427432)) e!834065)))

(declare-fun b!1300960 () Bool)

(assert (=> b!1300960 (= e!834065 (not (lostCause!264 (derivativeStep!887 lt!427438 (head!2234 lt!427432)))))))

(declare-fun b!1300961 () Bool)

(assert (=> b!1300961 (= e!834065 (prefixMatch!72 (derivativeStep!887 (derivativeStep!887 lt!427438 (head!2234 lt!427432)) (head!2234 (tail!1862 lt!427432))) (tail!1862 (tail!1862 lt!427432))))))

(assert (= (and d!367479 c!214197) b!1300960))

(assert (= (and d!367479 (not c!214197)) b!1300961))

(assert (=> d!367479 m!1451859))

(declare-fun m!1452835 () Bool)

(assert (=> d!367479 m!1452835))

(assert (=> b!1300960 m!1451857))

(declare-fun m!1452837 () Bool)

(assert (=> b!1300960 m!1452837))

(assert (=> b!1300961 m!1451859))

(declare-fun m!1452839 () Bool)

(assert (=> b!1300961 m!1452839))

(assert (=> b!1300961 m!1451857))

(assert (=> b!1300961 m!1452839))

(declare-fun m!1452841 () Bool)

(assert (=> b!1300961 m!1452841))

(assert (=> b!1300961 m!1451859))

(declare-fun m!1452843 () Bool)

(assert (=> b!1300961 m!1452843))

(assert (=> b!1300961 m!1452841))

(assert (=> b!1300961 m!1452843))

(declare-fun m!1452845 () Bool)

(assert (=> b!1300961 m!1452845))

(assert (=> b!1300148 d!367479))

(declare-fun b!1300962 () Bool)

(declare-fun e!834070 () Regex!3559)

(assert (=> b!1300962 (= e!834070 EmptyLang!3559)))

(declare-fun d!367481 () Bool)

(declare-fun lt!427768 () Regex!3559)

(assert (=> d!367481 (validRegex!1537 lt!427768)))

(assert (=> d!367481 (= lt!427768 e!834070)))

(declare-fun c!214202 () Bool)

(assert (=> d!367481 (= c!214202 (or ((_ is EmptyExpr!3559) lt!427438) ((_ is EmptyLang!3559) lt!427438)))))

(assert (=> d!367481 (validRegex!1537 lt!427438)))

(assert (=> d!367481 (= (derivativeStep!887 lt!427438 (head!2234 lt!427432)) lt!427768)))

(declare-fun bm!89127 () Bool)

(declare-fun c!214199 () Bool)

(declare-fun call!89134 () Regex!3559)

(assert (=> bm!89127 (= call!89134 (derivativeStep!887 (ite c!214199 (regOne!7631 lt!427438) (regOne!7630 lt!427438)) (head!2234 lt!427432)))))

(declare-fun b!1300963 () Bool)

(declare-fun e!834066 () Regex!3559)

(declare-fun call!89133 () Regex!3559)

(assert (=> b!1300963 (= e!834066 (Union!3559 (Concat!5894 call!89133 (regTwo!7630 lt!427438)) EmptyLang!3559))))

(declare-fun b!1300964 () Bool)

(declare-fun e!834067 () Regex!3559)

(declare-fun call!89135 () Regex!3559)

(assert (=> b!1300964 (= e!834067 (Concat!5894 call!89135 lt!427438))))

(declare-fun c!214201 () Bool)

(declare-fun bm!89128 () Bool)

(declare-fun call!89132 () Regex!3559)

(declare-fun c!214198 () Bool)

(assert (=> bm!89128 (= call!89132 (derivativeStep!887 (ite c!214199 (regTwo!7631 lt!427438) (ite c!214198 (reg!3888 lt!427438) (ite c!214201 (regTwo!7630 lt!427438) (regOne!7630 lt!427438)))) (head!2234 lt!427432)))))

(declare-fun b!1300965 () Bool)

(assert (=> b!1300965 (= c!214201 (nullable!1135 (regOne!7630 lt!427438)))))

(assert (=> b!1300965 (= e!834067 e!834066)))

(declare-fun b!1300966 () Bool)

(assert (=> b!1300966 (= c!214199 ((_ is Union!3559) lt!427438))))

(declare-fun e!834068 () Regex!3559)

(declare-fun e!834069 () Regex!3559)

(assert (=> b!1300966 (= e!834068 e!834069)))

(declare-fun bm!89129 () Bool)

(assert (=> bm!89129 (= call!89135 call!89132)))

(declare-fun b!1300967 () Bool)

(assert (=> b!1300967 (= e!834069 e!834067)))

(assert (=> b!1300967 (= c!214198 ((_ is Star!3559) lt!427438))))

(declare-fun b!1300968 () Bool)

(assert (=> b!1300968 (= e!834069 (Union!3559 call!89134 call!89132))))

(declare-fun b!1300969 () Bool)

(assert (=> b!1300969 (= e!834066 (Union!3559 (Concat!5894 call!89134 (regTwo!7630 lt!427438)) call!89133))))

(declare-fun b!1300970 () Bool)

(assert (=> b!1300970 (= e!834068 (ite (= (head!2234 lt!427432) (c!213933 lt!427438)) EmptyExpr!3559 EmptyLang!3559))))

(declare-fun bm!89130 () Bool)

(assert (=> bm!89130 (= call!89133 call!89135)))

(declare-fun b!1300971 () Bool)

(assert (=> b!1300971 (= e!834070 e!834068)))

(declare-fun c!214200 () Bool)

(assert (=> b!1300971 (= c!214200 ((_ is ElementMatch!3559) lt!427438))))

(assert (= (and d!367481 c!214202) b!1300962))

(assert (= (and d!367481 (not c!214202)) b!1300971))

(assert (= (and b!1300971 c!214200) b!1300970))

(assert (= (and b!1300971 (not c!214200)) b!1300966))

(assert (= (and b!1300966 c!214199) b!1300968))

(assert (= (and b!1300966 (not c!214199)) b!1300967))

(assert (= (and b!1300967 c!214198) b!1300964))

(assert (= (and b!1300967 (not c!214198)) b!1300965))

(assert (= (and b!1300965 c!214201) b!1300969))

(assert (= (and b!1300965 (not c!214201)) b!1300963))

(assert (= (or b!1300969 b!1300963) bm!89130))

(assert (= (or b!1300964 bm!89130) bm!89129))

(assert (= (or b!1300968 b!1300969) bm!89127))

(assert (= (or b!1300968 bm!89129) bm!89128))

(declare-fun m!1452847 () Bool)

(assert (=> d!367481 m!1452847))

(assert (=> d!367481 m!1451701))

(assert (=> bm!89127 m!1451855))

(declare-fun m!1452849 () Bool)

(assert (=> bm!89127 m!1452849))

(assert (=> bm!89128 m!1451855))

(declare-fun m!1452851 () Bool)

(assert (=> bm!89128 m!1452851))

(assert (=> b!1300965 m!1451981))

(assert (=> b!1300148 d!367481))

(declare-fun d!367483 () Bool)

(assert (=> d!367483 (= (head!2234 lt!427432) (h!18417 lt!427432))))

(assert (=> b!1300148 d!367483))

(declare-fun d!367485 () Bool)

(assert (=> d!367485 (= (tail!1862 lt!427432) (t!117591 lt!427432))))

(assert (=> b!1300148 d!367485))

(declare-fun d!367487 () Bool)

(declare-fun lt!427769 () Int)

(assert (=> d!367487 (>= lt!427769 0)))

(declare-fun e!834071 () Int)

(assert (=> d!367487 (= lt!427769 e!834071)))

(declare-fun c!214203 () Bool)

(assert (=> d!367487 (= c!214203 ((_ is Nil!13016) (originalCharacters!3107 t1!34)))))

(assert (=> d!367487 (= (size!10648 (originalCharacters!3107 t1!34)) lt!427769)))

(declare-fun b!1300972 () Bool)

(assert (=> b!1300972 (= e!834071 0)))

(declare-fun b!1300973 () Bool)

(assert (=> b!1300973 (= e!834071 (+ 1 (size!10648 (t!117591 (originalCharacters!3107 t1!34)))))))

(assert (= (and d!367487 c!214203) b!1300972))

(assert (= (and d!367487 (not c!214203)) b!1300973))

(declare-fun m!1452853 () Bool)

(assert (=> b!1300973 m!1452853))

(assert (=> b!1300134 d!367487))

(assert (=> bm!89064 d!367121))

(declare-fun d!367489 () Bool)

(declare-fun lt!427770 () List!13082)

(assert (=> d!367489 (= (++!3312 (t!117591 lt!427432) lt!427770) (tail!1862 lt!427434))))

(declare-fun e!834072 () List!13082)

(assert (=> d!367489 (= lt!427770 e!834072)))

(declare-fun c!214204 () Bool)

(assert (=> d!367489 (= c!214204 ((_ is Cons!13016) (t!117591 lt!427432)))))

(assert (=> d!367489 (>= (size!10648 (tail!1862 lt!427434)) (size!10648 (t!117591 lt!427432)))))

(assert (=> d!367489 (= (getSuffix!415 (tail!1862 lt!427434) (t!117591 lt!427432)) lt!427770)))

(declare-fun b!1300974 () Bool)

(assert (=> b!1300974 (= e!834072 (getSuffix!415 (tail!1862 (tail!1862 lt!427434)) (t!117591 (t!117591 lt!427432))))))

(declare-fun b!1300975 () Bool)

(assert (=> b!1300975 (= e!834072 (tail!1862 lt!427434))))

(assert (= (and d!367489 c!214204) b!1300974))

(assert (= (and d!367489 (not c!214204)) b!1300975))

(declare-fun m!1452855 () Bool)

(assert (=> d!367489 m!1452855))

(assert (=> d!367489 m!1451771))

(declare-fun m!1452857 () Bool)

(assert (=> d!367489 m!1452857))

(assert (=> d!367489 m!1452113))

(assert (=> b!1300974 m!1451771))

(assert (=> b!1300974 m!1451945))

(assert (=> b!1300974 m!1451945))

(declare-fun m!1452859 () Bool)

(assert (=> b!1300974 m!1452859))

(assert (=> b!1300127 d!367489))

(assert (=> b!1300127 d!367119))

(declare-fun b!1300978 () Bool)

(declare-fun res!582629 () Bool)

(declare-fun e!834074 () Bool)

(assert (=> b!1300978 (=> (not res!582629) (not e!834074))))

(declare-fun lt!427771 () List!13082)

(assert (=> b!1300978 (= res!582629 (= (size!10648 lt!427771) (+ (size!10648 (t!117591 lt!427432)) (size!10648 (getSuffix!415 lt!427434 lt!427432)))))))

(declare-fun b!1300977 () Bool)

(declare-fun e!834073 () List!13082)

(assert (=> b!1300977 (= e!834073 (Cons!13016 (h!18417 (t!117591 lt!427432)) (++!3312 (t!117591 (t!117591 lt!427432)) (getSuffix!415 lt!427434 lt!427432))))))

(declare-fun b!1300979 () Bool)

(assert (=> b!1300979 (= e!834074 (or (not (= (getSuffix!415 lt!427434 lt!427432) Nil!13016)) (= lt!427771 (t!117591 lt!427432))))))

(declare-fun b!1300976 () Bool)

(assert (=> b!1300976 (= e!834073 (getSuffix!415 lt!427434 lt!427432))))

(declare-fun d!367491 () Bool)

(assert (=> d!367491 e!834074))

(declare-fun res!582628 () Bool)

(assert (=> d!367491 (=> (not res!582628) (not e!834074))))

(assert (=> d!367491 (= res!582628 (= (content!1841 lt!427771) ((_ map or) (content!1841 (t!117591 lt!427432)) (content!1841 (getSuffix!415 lt!427434 lt!427432)))))))

(assert (=> d!367491 (= lt!427771 e!834073)))

(declare-fun c!214205 () Bool)

(assert (=> d!367491 (= c!214205 ((_ is Nil!13016) (t!117591 lt!427432)))))

(assert (=> d!367491 (= (++!3312 (t!117591 lt!427432) (getSuffix!415 lt!427434 lt!427432)) lt!427771)))

(assert (= (and d!367491 c!214205) b!1300976))

(assert (= (and d!367491 (not c!214205)) b!1300977))

(assert (= (and d!367491 res!582628) b!1300978))

(assert (= (and b!1300978 res!582629) b!1300979))

(declare-fun m!1452861 () Bool)

(assert (=> b!1300978 m!1452861))

(assert (=> b!1300978 m!1452113))

(assert (=> b!1300978 m!1451377))

(assert (=> b!1300978 m!1451795))

(assert (=> b!1300977 m!1451377))

(declare-fun m!1452863 () Bool)

(assert (=> b!1300977 m!1452863))

(declare-fun m!1452865 () Bool)

(assert (=> d!367491 m!1452865))

(assert (=> d!367491 m!1452051))

(assert (=> d!367491 m!1451377))

(assert (=> d!367491 m!1451801))

(assert (=> b!1300120 d!367491))

(declare-fun d!367493 () Bool)

(assert (=> d!367493 (= (Exists!717 lambda!51159) (choose!7978 lambda!51159))))

(declare-fun bs!329278 () Bool)

(assert (= bs!329278 d!367493))

(declare-fun m!1452867 () Bool)

(assert (=> bs!329278 m!1452867))

(assert (=> d!367029 d!367493))

(declare-fun bs!329279 () Bool)

(declare-fun d!367495 () Bool)

(assert (= bs!329279 (and d!367495 b!1299773)))

(declare-fun lambda!51214 () Int)

(assert (=> bs!329279 (= lambda!51214 lambda!51147)))

(declare-fun bs!329280 () Bool)

(assert (= bs!329280 (and d!367495 d!367029)))

(assert (=> bs!329280 (= lambda!51214 lambda!51159)))

(assert (=> d!367495 true))

(assert (=> d!367495 true))

(assert (=> d!367495 (Exists!717 lambda!51214)))

(assert (=> d!367495 true))

(declare-fun _$103!59 () Unit!19152)

(assert (=> d!367495 (= (choose!7979 lt!427438 lt!427432) _$103!59)))

(declare-fun bs!329281 () Bool)

(assert (= bs!329281 d!367495))

(declare-fun m!1452869 () Bool)

(assert (=> bs!329281 m!1452869))

(assert (=> d!367029 d!367495))

(assert (=> d!367029 d!367125))

(assert (=> b!1300095 d!367117))

(assert (=> d!367025 d!367361))

(declare-fun d!367497 () Bool)

(assert (=> d!367497 (= (isEmpty!7737 lt!427432) ((_ is Nil!13016) lt!427432))))

(assert (=> d!367075 d!367497))

(declare-fun bs!329282 () Bool)

(declare-fun d!367499 () Bool)

(assert (= bs!329282 (and d!367499 d!367035)))

(declare-fun lambda!51215 () Int)

(assert (=> bs!329282 (= lambda!51215 lambda!51162)))

(declare-fun bs!329283 () Bool)

(assert (= bs!329283 (and d!367499 d!367259)))

(assert (=> bs!329283 (= lambda!51215 lambda!51198)))

(assert (=> d!367499 true))

(declare-fun lt!427772 () Bool)

(assert (=> d!367499 (= lt!427772 (forall!3264 (t!117593 rules!2550) lambda!51215))))

(declare-fun e!834078 () Bool)

(assert (=> d!367499 (= lt!427772 e!834078)))

(declare-fun res!582632 () Bool)

(assert (=> d!367499 (=> res!582632 e!834078)))

(assert (=> d!367499 (= res!582632 (not ((_ is Cons!13018) (t!117593 rules!2550))))))

(assert (=> d!367499 (= (rulesValidInductive!710 thiss!19762 (t!117593 rules!2550)) lt!427772)))

(declare-fun b!1300982 () Bool)

(declare-fun e!834077 () Bool)

(assert (=> b!1300982 (= e!834078 e!834077)))

(declare-fun res!582633 () Bool)

(assert (=> b!1300982 (=> (not res!582633) (not e!834077))))

(assert (=> b!1300982 (= res!582633 (ruleValid!551 thiss!19762 (h!18419 (t!117593 rules!2550))))))

(declare-fun b!1300983 () Bool)

(assert (=> b!1300983 (= e!834077 (rulesValidInductive!710 thiss!19762 (t!117593 (t!117593 rules!2550))))))

(assert (= (and d!367499 (not res!582632)) b!1300982))

(assert (= (and b!1300982 res!582633) b!1300983))

(declare-fun m!1452871 () Bool)

(assert (=> d!367499 m!1452871))

(declare-fun m!1452873 () Bool)

(assert (=> b!1300982 m!1452873))

(declare-fun m!1452875 () Bool)

(assert (=> b!1300983 m!1452875))

(assert (=> b!1300029 d!367499))

(declare-fun d!367501 () Bool)

(declare-fun charsToBigInt!1 (List!13083) Int)

(assert (=> d!367501 (= (inv!17 (value!73615 t1!34)) (= (charsToBigInt!1 (text!16793 (value!73615 t1!34))) (value!73607 (value!73615 t1!34))))))

(declare-fun bs!329284 () Bool)

(assert (= bs!329284 d!367501))

(declare-fun m!1452877 () Bool)

(assert (=> bs!329284 m!1452877))

(assert (=> b!1300057 d!367501))

(declare-fun d!367503 () Bool)

(assert (=> d!367503 (= (inv!17453 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34))) (isBalanced!1260 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34)))))))

(declare-fun bs!329285 () Bool)

(assert (= bs!329285 d!367503))

(declare-fun m!1452879 () Bool)

(assert (=> bs!329285 m!1452879))

(assert (=> tb!69593 d!367503))

(declare-fun d!367505 () Bool)

(declare-fun lt!427773 () C!7408)

(assert (=> d!367505 (contains!2183 (list!4879 lt!427436) lt!427773)))

(declare-fun e!834079 () C!7408)

(assert (=> d!367505 (= lt!427773 e!834079)))

(declare-fun c!214206 () Bool)

(assert (=> d!367505 (= c!214206 (= 0 0))))

(declare-fun e!834080 () Bool)

(assert (=> d!367505 e!834080))

(declare-fun res!582634 () Bool)

(assert (=> d!367505 (=> (not res!582634) (not e!834080))))

(assert (=> d!367505 (= res!582634 (<= 0 0))))

(assert (=> d!367505 (= (apply!2904 (list!4879 lt!427436) 0) lt!427773)))

(declare-fun b!1300984 () Bool)

(assert (=> b!1300984 (= e!834080 (< 0 (size!10648 (list!4879 lt!427436))))))

(declare-fun b!1300985 () Bool)

(assert (=> b!1300985 (= e!834079 (head!2234 (list!4879 lt!427436)))))

(declare-fun b!1300986 () Bool)

(assert (=> b!1300986 (= e!834079 (apply!2904 (tail!1862 (list!4879 lt!427436)) (- 0 1)))))

(assert (= (and d!367505 res!582634) b!1300984))

(assert (= (and d!367505 c!214206) b!1300985))

(assert (= (and d!367505 (not c!214206)) b!1300986))

(assert (=> d!367505 m!1451419))

(declare-fun m!1452881 () Bool)

(assert (=> d!367505 m!1452881))

(assert (=> b!1300984 m!1451419))

(assert (=> b!1300984 m!1452107))

(assert (=> b!1300985 m!1451419))

(declare-fun m!1452883 () Bool)

(assert (=> b!1300985 m!1452883))

(assert (=> b!1300986 m!1451419))

(declare-fun m!1452885 () Bool)

(assert (=> b!1300986 m!1452885))

(assert (=> b!1300986 m!1452885))

(declare-fun m!1452887 () Bool)

(assert (=> b!1300986 m!1452887))

(assert (=> d!367033 d!367505))

(assert (=> d!367033 d!367071))

(declare-fun b!1300987 () Bool)

(declare-fun e!834081 () Int)

(assert (=> b!1300987 (= e!834081 0)))

(declare-fun d!367507 () Bool)

(declare-fun lt!427774 () C!7408)

(assert (=> d!367507 (= lt!427774 (apply!2904 (list!4883 (c!213934 lt!427436)) 0))))

(declare-fun e!834084 () C!7408)

(assert (=> d!367507 (= lt!427774 e!834084)))

(declare-fun c!214207 () Bool)

(assert (=> d!367507 (= c!214207 ((_ is Leaf!6594) (c!213934 lt!427436)))))

(declare-fun e!834083 () Bool)

(assert (=> d!367507 e!834083))

(declare-fun res!582635 () Bool)

(assert (=> d!367507 (=> (not res!582635) (not e!834083))))

(assert (=> d!367507 (= res!582635 (<= 0 0))))

(assert (=> d!367507 (= (apply!2905 (c!213934 lt!427436) 0) lt!427774)))

(declare-fun b!1300988 () Bool)

(assert (=> b!1300988 (= e!834083 (< 0 (size!10649 (c!213934 lt!427436))))))

(declare-fun bm!89131 () Bool)

(declare-fun c!214209 () Bool)

(declare-fun c!214208 () Bool)

(assert (=> bm!89131 (= c!214209 c!214208)))

(declare-fun call!89136 () C!7408)

(assert (=> bm!89131 (= call!89136 (apply!2905 (ite c!214208 (left!11195 (c!213934 lt!427436)) (right!11525 (c!213934 lt!427436))) e!834081))))

(declare-fun b!1300989 () Bool)

(assert (=> b!1300989 (= e!834084 (apply!2908 (xs!6990 (c!213934 lt!427436)) 0))))

(declare-fun b!1300990 () Bool)

(declare-fun e!834082 () C!7408)

(assert (=> b!1300990 (= e!834082 call!89136)))

(declare-fun b!1300991 () Bool)

(assert (=> b!1300991 (= e!834081 (- 0 (size!10649 (left!11195 (c!213934 lt!427436)))))))

(declare-fun b!1300992 () Bool)

(assert (=> b!1300992 (= e!834082 call!89136)))

(declare-fun b!1300993 () Bool)

(assert (=> b!1300993 (= e!834084 e!834082)))

(declare-fun lt!427775 () Bool)

(assert (=> b!1300993 (= lt!427775 (appendIndex!134 (list!4883 (left!11195 (c!213934 lt!427436))) (list!4883 (right!11525 (c!213934 lt!427436))) 0))))

(assert (=> b!1300993 (= c!214208 (< 0 (size!10649 (left!11195 (c!213934 lt!427436)))))))

(assert (= (and d!367507 res!582635) b!1300988))

(assert (= (and d!367507 c!214207) b!1300989))

(assert (= (and d!367507 (not c!214207)) b!1300993))

(assert (= (and b!1300993 c!214208) b!1300990))

(assert (= (and b!1300993 (not c!214208)) b!1300992))

(assert (= (or b!1300990 b!1300992) bm!89131))

(assert (= (and bm!89131 c!214209) b!1300987))

(assert (= (and bm!89131 (not c!214209)) b!1300991))

(assert (=> b!1300993 m!1452033))

(assert (=> b!1300993 m!1452035))

(assert (=> b!1300993 m!1452033))

(assert (=> b!1300993 m!1452035))

(declare-fun m!1452889 () Bool)

(assert (=> b!1300993 m!1452889))

(declare-fun m!1452891 () Bool)

(assert (=> b!1300993 m!1452891))

(assert (=> b!1300991 m!1452891))

(declare-fun m!1452893 () Bool)

(assert (=> b!1300989 m!1452893))

(declare-fun m!1452895 () Bool)

(assert (=> bm!89131 m!1452895))

(assert (=> b!1300988 m!1452109))

(assert (=> d!367507 m!1451835))

(assert (=> d!367507 m!1451835))

(declare-fun m!1452897 () Bool)

(assert (=> d!367507 m!1452897))

(assert (=> d!367033 d!367507))

(assert (=> b!1300097 d!367161))

(assert (=> b!1300097 d!367119))

(declare-fun d!367509 () Bool)

(assert (=> d!367509 (= (list!4879 lt!427513) (list!4883 (c!213934 lt!427513)))))

(declare-fun bs!329286 () Bool)

(assert (= bs!329286 d!367509))

(declare-fun m!1452899 () Bool)

(assert (=> bs!329286 m!1452899))

(assert (=> d!367047 d!367509))

(declare-fun bm!89132 () Bool)

(declare-fun call!89137 () Bool)

(assert (=> bm!89132 (= call!89137 (isEmpty!7737 lt!427526))))

(declare-fun b!1300994 () Bool)

(declare-fun res!582637 () Bool)

(declare-fun e!834087 () Bool)

(assert (=> b!1300994 (=> res!582637 e!834087)))

(declare-fun e!834088 () Bool)

(assert (=> b!1300994 (= res!582637 e!834088)))

(declare-fun res!582642 () Bool)

(assert (=> b!1300994 (=> (not res!582642) (not e!834088))))

(declare-fun lt!427776 () Bool)

(assert (=> b!1300994 (= res!582642 lt!427776)))

(declare-fun b!1300995 () Bool)

(assert (=> b!1300995 (= e!834088 (= (head!2234 lt!427526) (c!213933 lt!427438)))))

(declare-fun b!1300996 () Bool)

(declare-fun e!834089 () Bool)

(assert (=> b!1300996 (= e!834089 (not lt!427776))))

(declare-fun b!1300997 () Bool)

(declare-fun res!582640 () Bool)

(declare-fun e!834085 () Bool)

(assert (=> b!1300997 (=> res!582640 e!834085)))

(assert (=> b!1300997 (= res!582640 (not (isEmpty!7737 (tail!1862 lt!427526))))))

(declare-fun b!1300998 () Bool)

(declare-fun e!834086 () Bool)

(assert (=> b!1300998 (= e!834087 e!834086)))

(declare-fun res!582639 () Bool)

(assert (=> b!1300998 (=> (not res!582639) (not e!834086))))

(assert (=> b!1300998 (= res!582639 (not lt!427776))))

(declare-fun b!1300999 () Bool)

(declare-fun e!834090 () Bool)

(assert (=> b!1300999 (= e!834090 (= lt!427776 call!89137))))

(declare-fun b!1301000 () Bool)

(declare-fun e!834091 () Bool)

(assert (=> b!1301000 (= e!834091 (nullable!1135 lt!427438))))

(declare-fun b!1301001 () Bool)

(assert (=> b!1301001 (= e!834091 (matchR!1561 (derivativeStep!887 lt!427438 (head!2234 lt!427526)) (tail!1862 lt!427526)))))

(declare-fun b!1301002 () Bool)

(assert (=> b!1301002 (= e!834090 e!834089)))

(declare-fun c!214212 () Bool)

(assert (=> b!1301002 (= c!214212 ((_ is EmptyLang!3559) lt!427438))))

(declare-fun b!1301003 () Bool)

(declare-fun res!582641 () Bool)

(assert (=> b!1301003 (=> (not res!582641) (not e!834088))))

(assert (=> b!1301003 (= res!582641 (not call!89137))))

(declare-fun b!1301004 () Bool)

(declare-fun res!582636 () Bool)

(assert (=> b!1301004 (=> res!582636 e!834087)))

(assert (=> b!1301004 (= res!582636 (not ((_ is ElementMatch!3559) lt!427438)))))

(assert (=> b!1301004 (= e!834089 e!834087)))

(declare-fun b!1301005 () Bool)

(declare-fun res!582638 () Bool)

(assert (=> b!1301005 (=> (not res!582638) (not e!834088))))

(assert (=> b!1301005 (= res!582638 (isEmpty!7737 (tail!1862 lt!427526)))))

(declare-fun b!1301006 () Bool)

(assert (=> b!1301006 (= e!834085 (not (= (head!2234 lt!427526) (c!213933 lt!427438))))))

(declare-fun d!367511 () Bool)

(assert (=> d!367511 e!834090))

(declare-fun c!214211 () Bool)

(assert (=> d!367511 (= c!214211 ((_ is EmptyExpr!3559) lt!427438))))

(assert (=> d!367511 (= lt!427776 e!834091)))

(declare-fun c!214210 () Bool)

(assert (=> d!367511 (= c!214210 (isEmpty!7737 lt!427526))))

(assert (=> d!367511 (validRegex!1537 lt!427438)))

(assert (=> d!367511 (= (matchR!1561 lt!427438 lt!427526) lt!427776)))

(declare-fun b!1301007 () Bool)

(assert (=> b!1301007 (= e!834086 e!834085)))

(declare-fun res!582643 () Bool)

(assert (=> b!1301007 (=> res!582643 e!834085)))

(assert (=> b!1301007 (= res!582643 call!89137)))

(assert (= (and d!367511 c!214210) b!1301000))

(assert (= (and d!367511 (not c!214210)) b!1301001))

(assert (= (and d!367511 c!214211) b!1300999))

(assert (= (and d!367511 (not c!214211)) b!1301002))

(assert (= (and b!1301002 c!214212) b!1300996))

(assert (= (and b!1301002 (not c!214212)) b!1301004))

(assert (= (and b!1301004 (not res!582636)) b!1300994))

(assert (= (and b!1300994 res!582642) b!1301003))

(assert (= (and b!1301003 res!582641) b!1301005))

(assert (= (and b!1301005 res!582638) b!1300995))

(assert (= (and b!1300994 (not res!582637)) b!1300998))

(assert (= (and b!1300998 res!582639) b!1301007))

(assert (= (and b!1301007 (not res!582643)) b!1300997))

(assert (= (and b!1300997 (not res!582640)) b!1301006))

(assert (= (or b!1300999 b!1301003 b!1301007) bm!89132))

(assert (=> b!1301000 m!1451769))

(assert (=> b!1300997 m!1452365))

(assert (=> b!1300997 m!1452365))

(declare-fun m!1452901 () Bool)

(assert (=> b!1300997 m!1452901))

(assert (=> b!1301001 m!1452369))

(assert (=> b!1301001 m!1452369))

(declare-fun m!1452903 () Bool)

(assert (=> b!1301001 m!1452903))

(assert (=> b!1301001 m!1452365))

(assert (=> b!1301001 m!1452903))

(assert (=> b!1301001 m!1452365))

(declare-fun m!1452905 () Bool)

(assert (=> b!1301001 m!1452905))

(assert (=> b!1301005 m!1452365))

(assert (=> b!1301005 m!1452365))

(assert (=> b!1301005 m!1452901))

(assert (=> b!1300995 m!1452369))

(assert (=> b!1301006 m!1452369))

(declare-fun m!1452907 () Bool)

(assert (=> bm!89132 m!1452907))

(assert (=> d!367511 m!1452907))

(assert (=> d!367511 m!1451701))

(assert (=> bs!329186 d!367511))

(declare-fun d!367513 () Bool)

(declare-fun lt!427777 () Int)

(assert (=> d!367513 (>= lt!427777 0)))

(declare-fun e!834092 () Int)

(assert (=> d!367513 (= lt!427777 e!834092)))

(declare-fun c!214213 () Bool)

(assert (=> d!367513 (= c!214213 ((_ is Nil!13016) (originalCharacters!3107 t2!34)))))

(assert (=> d!367513 (= (size!10648 (originalCharacters!3107 t2!34)) lt!427777)))

(declare-fun b!1301008 () Bool)

(assert (=> b!1301008 (= e!834092 0)))

(declare-fun b!1301009 () Bool)

(assert (=> b!1301009 (= e!834092 (+ 1 (size!10648 (t!117591 (originalCharacters!3107 t2!34)))))))

(assert (= (and d!367513 c!214213) b!1301008))

(assert (= (and d!367513 (not c!214213)) b!1301009))

(declare-fun m!1452909 () Bool)

(assert (=> b!1301009 m!1452909))

(assert (=> b!1300137 d!367513))

(declare-fun bs!329287 () Bool)

(declare-fun d!367515 () Bool)

(assert (= bs!329287 (and d!367515 d!367165)))

(declare-fun lambda!51216 () Int)

(assert (=> bs!329287 (= (= (toValue!3456 (transformation!2245 (rule!3984 t2!34))) (toValue!3456 (transformation!2245 (rule!3984 t1!34)))) (= lambda!51216 lambda!51180))))

(assert (=> d!367515 true))

(assert (=> d!367515 (< (dynLambda!5704 order!7915 (toValue!3456 (transformation!2245 (rule!3984 t2!34)))) (dynLambda!5705 order!7917 lambda!51216))))

(assert (=> d!367515 (= (equivClasses!815 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (toValue!3456 (transformation!2245 (rule!3984 t2!34)))) (Forall2!413 lambda!51216))))

(declare-fun bs!329288 () Bool)

(assert (= bs!329288 d!367515))

(declare-fun m!1452911 () Bool)

(assert (=> bs!329288 m!1452911))

(assert (=> b!1300138 d!367515))

(declare-fun d!367517 () Bool)

(assert (=> d!367517 (= (inv!17 (value!73615 t2!34)) (= (charsToBigInt!1 (text!16793 (value!73615 t2!34))) (value!73607 (value!73615 t2!34))))))

(declare-fun bs!329289 () Bool)

(assert (= bs!329289 d!367517))

(declare-fun m!1452913 () Bool)

(assert (=> bs!329289 m!1452913))

(assert (=> b!1300052 d!367517))

(declare-fun bs!329290 () Bool)

(declare-fun d!367519 () Bool)

(assert (= bs!329290 (and d!367519 d!367165)))

(declare-fun lambda!51217 () Int)

(assert (=> bs!329290 (= (= (toValue!3456 (transformation!2245 (h!18419 rules!2550))) (toValue!3456 (transformation!2245 (rule!3984 t1!34)))) (= lambda!51217 lambda!51180))))

(declare-fun bs!329291 () Bool)

(assert (= bs!329291 (and d!367519 d!367515)))

(assert (=> bs!329291 (= (= (toValue!3456 (transformation!2245 (h!18419 rules!2550))) (toValue!3456 (transformation!2245 (rule!3984 t2!34)))) (= lambda!51217 lambda!51216))))

(assert (=> d!367519 true))

(assert (=> d!367519 (< (dynLambda!5704 order!7915 (toValue!3456 (transformation!2245 (h!18419 rules!2550)))) (dynLambda!5705 order!7917 lambda!51217))))

(assert (=> d!367519 (= (equivClasses!815 (toChars!3315 (transformation!2245 (h!18419 rules!2550))) (toValue!3456 (transformation!2245 (h!18419 rules!2550)))) (Forall2!413 lambda!51217))))

(declare-fun bs!329292 () Bool)

(assert (= bs!329292 d!367519))

(declare-fun m!1452915 () Bool)

(assert (=> bs!329292 m!1452915))

(assert (=> b!1300110 d!367519))

(declare-fun d!367521 () Bool)

(assert (=> d!367521 (= (inv!17453 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34))) (isBalanced!1260 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34)))))))

(declare-fun bs!329293 () Bool)

(assert (= bs!329293 d!367521))

(declare-fun m!1452917 () Bool)

(assert (=> bs!329293 m!1452917))

(assert (=> tb!69599 d!367521))

(declare-fun d!367523 () Bool)

(declare-fun lt!427778 () Int)

(assert (=> d!367523 (>= lt!427778 0)))

(declare-fun e!834093 () Int)

(assert (=> d!367523 (= lt!427778 e!834093)))

(declare-fun c!214214 () Bool)

(assert (=> d!367523 (= c!214214 ((_ is Nil!13016) lt!427527))))

(assert (=> d!367523 (= (size!10648 lt!427527) lt!427778)))

(declare-fun b!1301010 () Bool)

(assert (=> b!1301010 (= e!834093 0)))

(declare-fun b!1301011 () Bool)

(assert (=> b!1301011 (= e!834093 (+ 1 (size!10648 (t!117591 lt!427527))))))

(assert (= (and d!367523 c!214214) b!1301010))

(assert (= (and d!367523 (not c!214214)) b!1301011))

(declare-fun m!1452919 () Bool)

(assert (=> b!1301011 m!1452919))

(assert (=> b!1300141 d!367523))

(declare-fun d!367525 () Bool)

(declare-fun lt!427779 () Int)

(assert (=> d!367525 (>= lt!427779 0)))

(declare-fun e!834094 () Int)

(assert (=> d!367525 (= lt!427779 e!834094)))

(declare-fun c!214215 () Bool)

(assert (=> d!367525 (= c!214215 ((_ is Nil!13016) lt!427437))))

(assert (=> d!367525 (= (size!10648 lt!427437) lt!427779)))

(declare-fun b!1301012 () Bool)

(assert (=> b!1301012 (= e!834094 0)))

(declare-fun b!1301013 () Bool)

(assert (=> b!1301013 (= e!834094 (+ 1 (size!10648 (t!117591 lt!427437))))))

(assert (= (and d!367525 c!214215) b!1301012))

(assert (= (and d!367525 (not c!214215)) b!1301013))

(assert (=> b!1301013 m!1452331))

(assert (=> b!1300141 d!367525))

(declare-fun d!367527 () Bool)

(declare-fun lt!427780 () Int)

(assert (=> d!367527 (>= lt!427780 0)))

(declare-fun e!834095 () Int)

(assert (=> d!367527 (= lt!427780 e!834095)))

(declare-fun c!214216 () Bool)

(assert (=> d!367527 (= c!214216 ((_ is Nil!13016) (Cons!13016 lt!427431 Nil!13016)))))

(assert (=> d!367527 (= (size!10648 (Cons!13016 lt!427431 Nil!13016)) lt!427780)))

(declare-fun b!1301014 () Bool)

(assert (=> b!1301014 (= e!834095 0)))

(declare-fun b!1301015 () Bool)

(assert (=> b!1301015 (= e!834095 (+ 1 (size!10648 (t!117591 (Cons!13016 lt!427431 Nil!13016)))))))

(assert (= (and d!367527 c!214216) b!1301014))

(assert (= (and d!367527 (not c!214216)) b!1301015))

(declare-fun m!1452921 () Bool)

(assert (=> b!1301015 m!1452921))

(assert (=> b!1300141 d!367527))

(declare-fun b!1301016 () Bool)

(declare-fun e!834096 () Bool)

(declare-fun tp!379485 () Bool)

(assert (=> b!1301016 (= e!834096 (and tp_is_empty!6595 tp!379485))))

(assert (=> b!1300168 (= tp!379357 e!834096)))

(assert (= (and b!1300168 ((_ is Cons!13016) (t!117591 (originalCharacters!3107 t2!34)))) b!1301016))

(declare-fun b!1301020 () Bool)

(declare-fun e!834097 () Bool)

(declare-fun tp!379487 () Bool)

(declare-fun tp!379489 () Bool)

(assert (=> b!1301020 (= e!834097 (and tp!379487 tp!379489))))

(assert (=> b!1300171 (= tp!379361 e!834097)))

(declare-fun b!1301017 () Bool)

(assert (=> b!1301017 (= e!834097 tp_is_empty!6595)))

(declare-fun b!1301018 () Bool)

(declare-fun tp!379488 () Bool)

(declare-fun tp!379486 () Bool)

(assert (=> b!1301018 (= e!834097 (and tp!379488 tp!379486))))

(declare-fun b!1301019 () Bool)

(declare-fun tp!379490 () Bool)

(assert (=> b!1301019 (= e!834097 tp!379490)))

(assert (= (and b!1300171 ((_ is ElementMatch!3559) (regOne!7630 (regex!2245 (h!18419 rules!2550))))) b!1301017))

(assert (= (and b!1300171 ((_ is Concat!5894) (regOne!7630 (regex!2245 (h!18419 rules!2550))))) b!1301018))

(assert (= (and b!1300171 ((_ is Star!3559) (regOne!7630 (regex!2245 (h!18419 rules!2550))))) b!1301019))

(assert (= (and b!1300171 ((_ is Union!3559) (regOne!7630 (regex!2245 (h!18419 rules!2550))))) b!1301020))

(declare-fun b!1301024 () Bool)

(declare-fun e!834098 () Bool)

(declare-fun tp!379492 () Bool)

(declare-fun tp!379494 () Bool)

(assert (=> b!1301024 (= e!834098 (and tp!379492 tp!379494))))

(assert (=> b!1300171 (= tp!379359 e!834098)))

(declare-fun b!1301021 () Bool)

(assert (=> b!1301021 (= e!834098 tp_is_empty!6595)))

(declare-fun b!1301022 () Bool)

(declare-fun tp!379493 () Bool)

(declare-fun tp!379491 () Bool)

(assert (=> b!1301022 (= e!834098 (and tp!379493 tp!379491))))

(declare-fun b!1301023 () Bool)

(declare-fun tp!379495 () Bool)

(assert (=> b!1301023 (= e!834098 tp!379495)))

(assert (= (and b!1300171 ((_ is ElementMatch!3559) (regTwo!7630 (regex!2245 (h!18419 rules!2550))))) b!1301021))

(assert (= (and b!1300171 ((_ is Concat!5894) (regTwo!7630 (regex!2245 (h!18419 rules!2550))))) b!1301022))

(assert (= (and b!1300171 ((_ is Star!3559) (regTwo!7630 (regex!2245 (h!18419 rules!2550))))) b!1301023))

(assert (= (and b!1300171 ((_ is Union!3559) (regTwo!7630 (regex!2245 (h!18419 rules!2550))))) b!1301024))

(declare-fun b!1301028 () Bool)

(declare-fun e!834099 () Bool)

(declare-fun tp!379497 () Bool)

(declare-fun tp!379499 () Bool)

(assert (=> b!1301028 (= e!834099 (and tp!379497 tp!379499))))

(assert (=> b!1300172 (= tp!379363 e!834099)))

(declare-fun b!1301025 () Bool)

(assert (=> b!1301025 (= e!834099 tp_is_empty!6595)))

(declare-fun b!1301026 () Bool)

(declare-fun tp!379498 () Bool)

(declare-fun tp!379496 () Bool)

(assert (=> b!1301026 (= e!834099 (and tp!379498 tp!379496))))

(declare-fun b!1301027 () Bool)

(declare-fun tp!379500 () Bool)

(assert (=> b!1301027 (= e!834099 tp!379500)))

(assert (= (and b!1300172 ((_ is ElementMatch!3559) (reg!3888 (regex!2245 (h!18419 rules!2550))))) b!1301025))

(assert (= (and b!1300172 ((_ is Concat!5894) (reg!3888 (regex!2245 (h!18419 rules!2550))))) b!1301026))

(assert (= (and b!1300172 ((_ is Star!3559) (reg!3888 (regex!2245 (h!18419 rules!2550))))) b!1301027))

(assert (= (and b!1300172 ((_ is Union!3559) (reg!3888 (regex!2245 (h!18419 rules!2550))))) b!1301028))

(declare-fun b!1301032 () Bool)

(declare-fun e!834100 () Bool)

(declare-fun tp!379502 () Bool)

(declare-fun tp!379504 () Bool)

(assert (=> b!1301032 (= e!834100 (and tp!379502 tp!379504))))

(assert (=> b!1300186 (= tp!379378 e!834100)))

(declare-fun b!1301029 () Bool)

(assert (=> b!1301029 (= e!834100 tp_is_empty!6595)))

(declare-fun b!1301030 () Bool)

(declare-fun tp!379503 () Bool)

(declare-fun tp!379501 () Bool)

(assert (=> b!1301030 (= e!834100 (and tp!379503 tp!379501))))

(declare-fun b!1301031 () Bool)

(declare-fun tp!379505 () Bool)

(assert (=> b!1301031 (= e!834100 tp!379505)))

(assert (= (and b!1300186 ((_ is ElementMatch!3559) (regOne!7630 (regex!2245 (rule!3984 t2!34))))) b!1301029))

(assert (= (and b!1300186 ((_ is Concat!5894) (regOne!7630 (regex!2245 (rule!3984 t2!34))))) b!1301030))

(assert (= (and b!1300186 ((_ is Star!3559) (regOne!7630 (regex!2245 (rule!3984 t2!34))))) b!1301031))

(assert (= (and b!1300186 ((_ is Union!3559) (regOne!7630 (regex!2245 (rule!3984 t2!34))))) b!1301032))

(declare-fun b!1301036 () Bool)

(declare-fun e!834101 () Bool)

(declare-fun tp!379507 () Bool)

(declare-fun tp!379509 () Bool)

(assert (=> b!1301036 (= e!834101 (and tp!379507 tp!379509))))

(assert (=> b!1300186 (= tp!379376 e!834101)))

(declare-fun b!1301033 () Bool)

(assert (=> b!1301033 (= e!834101 tp_is_empty!6595)))

(declare-fun b!1301034 () Bool)

(declare-fun tp!379508 () Bool)

(declare-fun tp!379506 () Bool)

(assert (=> b!1301034 (= e!834101 (and tp!379508 tp!379506))))

(declare-fun b!1301035 () Bool)

(declare-fun tp!379510 () Bool)

(assert (=> b!1301035 (= e!834101 tp!379510)))

(assert (= (and b!1300186 ((_ is ElementMatch!3559) (regTwo!7630 (regex!2245 (rule!3984 t2!34))))) b!1301033))

(assert (= (and b!1300186 ((_ is Concat!5894) (regTwo!7630 (regex!2245 (rule!3984 t2!34))))) b!1301034))

(assert (= (and b!1300186 ((_ is Star!3559) (regTwo!7630 (regex!2245 (rule!3984 t2!34))))) b!1301035))

(assert (= (and b!1300186 ((_ is Union!3559) (regTwo!7630 (regex!2245 (rule!3984 t2!34))))) b!1301036))

(declare-fun tp!379518 () Bool)

(declare-fun e!834107 () Bool)

(declare-fun tp!379517 () Bool)

(declare-fun b!1301045 () Bool)

(assert (=> b!1301045 (= e!834107 (and (inv!17452 (left!11195 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34))))) tp!379518 (inv!17452 (right!11525 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34))))) tp!379517))))

(declare-fun b!1301047 () Bool)

(declare-fun e!834106 () Bool)

(declare-fun tp!379519 () Bool)

(assert (=> b!1301047 (= e!834106 tp!379519)))

(declare-fun b!1301046 () Bool)

(declare-fun inv!17459 (IArray!8555) Bool)

(assert (=> b!1301046 (= e!834107 (and (inv!17459 (xs!6990 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34))))) e!834106))))

(assert (=> b!1300065 (= tp!379338 (and (inv!17452 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34)))) e!834107))))

(assert (= (and b!1300065 ((_ is Node!4275) (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34))))) b!1301045))

(assert (= b!1301046 b!1301047))

(assert (= (and b!1300065 ((_ is Leaf!6594) (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t2!34))) (value!73615 t2!34))))) b!1301046))

(declare-fun m!1452923 () Bool)

(assert (=> b!1301045 m!1452923))

(declare-fun m!1452925 () Bool)

(assert (=> b!1301045 m!1452925))

(declare-fun m!1452927 () Bool)

(assert (=> b!1301046 m!1452927))

(assert (=> b!1300065 m!1451761))

(declare-fun b!1301051 () Bool)

(declare-fun e!834108 () Bool)

(declare-fun tp!379521 () Bool)

(declare-fun tp!379523 () Bool)

(assert (=> b!1301051 (= e!834108 (and tp!379521 tp!379523))))

(assert (=> b!1300173 (= tp!379360 e!834108)))

(declare-fun b!1301048 () Bool)

(assert (=> b!1301048 (= e!834108 tp_is_empty!6595)))

(declare-fun b!1301049 () Bool)

(declare-fun tp!379522 () Bool)

(declare-fun tp!379520 () Bool)

(assert (=> b!1301049 (= e!834108 (and tp!379522 tp!379520))))

(declare-fun b!1301050 () Bool)

(declare-fun tp!379524 () Bool)

(assert (=> b!1301050 (= e!834108 tp!379524)))

(assert (= (and b!1300173 ((_ is ElementMatch!3559) (regOne!7631 (regex!2245 (h!18419 rules!2550))))) b!1301048))

(assert (= (and b!1300173 ((_ is Concat!5894) (regOne!7631 (regex!2245 (h!18419 rules!2550))))) b!1301049))

(assert (= (and b!1300173 ((_ is Star!3559) (regOne!7631 (regex!2245 (h!18419 rules!2550))))) b!1301050))

(assert (= (and b!1300173 ((_ is Union!3559) (regOne!7631 (regex!2245 (h!18419 rules!2550))))) b!1301051))

(declare-fun b!1301055 () Bool)

(declare-fun e!834109 () Bool)

(declare-fun tp!379526 () Bool)

(declare-fun tp!379528 () Bool)

(assert (=> b!1301055 (= e!834109 (and tp!379526 tp!379528))))

(assert (=> b!1300173 (= tp!379362 e!834109)))

(declare-fun b!1301052 () Bool)

(assert (=> b!1301052 (= e!834109 tp_is_empty!6595)))

(declare-fun b!1301053 () Bool)

(declare-fun tp!379527 () Bool)

(declare-fun tp!379525 () Bool)

(assert (=> b!1301053 (= e!834109 (and tp!379527 tp!379525))))

(declare-fun b!1301054 () Bool)

(declare-fun tp!379529 () Bool)

(assert (=> b!1301054 (= e!834109 tp!379529)))

(assert (= (and b!1300173 ((_ is ElementMatch!3559) (regTwo!7631 (regex!2245 (h!18419 rules!2550))))) b!1301052))

(assert (= (and b!1300173 ((_ is Concat!5894) (regTwo!7631 (regex!2245 (h!18419 rules!2550))))) b!1301053))

(assert (= (and b!1300173 ((_ is Star!3559) (regTwo!7631 (regex!2245 (h!18419 rules!2550))))) b!1301054))

(assert (= (and b!1300173 ((_ is Union!3559) (regTwo!7631 (regex!2245 (h!18419 rules!2550))))) b!1301055))

(declare-fun e!834111 () Bool)

(declare-fun tp!379530 () Bool)

(declare-fun tp!379531 () Bool)

(declare-fun b!1301056 () Bool)

(assert (=> b!1301056 (= e!834111 (and (inv!17452 (left!11195 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34))))) tp!379531 (inv!17452 (right!11525 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34))))) tp!379530))))

(declare-fun b!1301058 () Bool)

(declare-fun e!834110 () Bool)

(declare-fun tp!379532 () Bool)

(assert (=> b!1301058 (= e!834110 tp!379532)))

(declare-fun b!1301057 () Bool)

(assert (=> b!1301057 (= e!834111 (and (inv!17459 (xs!6990 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34))))) e!834110))))

(assert (=> b!1300135 (= tp!379339 (and (inv!17452 (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34)))) e!834111))))

(assert (= (and b!1300135 ((_ is Node!4275) (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34))))) b!1301056))

(assert (= b!1301057 b!1301058))

(assert (= (and b!1300135 ((_ is Leaf!6594) (c!213934 (dynLambda!5699 (toChars!3315 (transformation!2245 (rule!3984 t1!34))) (value!73615 t1!34))))) b!1301057))

(declare-fun m!1452929 () Bool)

(assert (=> b!1301056 m!1452929))

(declare-fun m!1452931 () Bool)

(assert (=> b!1301056 m!1452931))

(declare-fun m!1452933 () Bool)

(assert (=> b!1301057 m!1452933))

(assert (=> b!1300135 m!1451813))

(declare-fun b!1301059 () Bool)

(declare-fun e!834112 () Bool)

(declare-fun tp!379533 () Bool)

(assert (=> b!1301059 (= e!834112 (and tp_is_empty!6595 tp!379533))))

(assert (=> b!1300169 (= tp!379358 e!834112)))

(assert (= (and b!1300169 ((_ is Cons!13016) (t!117591 (originalCharacters!3107 t1!34)))) b!1301059))

(declare-fun b!1301063 () Bool)

(declare-fun e!834113 () Bool)

(declare-fun tp!379535 () Bool)

(declare-fun tp!379537 () Bool)

(assert (=> b!1301063 (= e!834113 (and tp!379535 tp!379537))))

(assert (=> b!1300187 (= tp!379380 e!834113)))

(declare-fun b!1301060 () Bool)

(assert (=> b!1301060 (= e!834113 tp_is_empty!6595)))

(declare-fun b!1301061 () Bool)

(declare-fun tp!379536 () Bool)

(declare-fun tp!379534 () Bool)

(assert (=> b!1301061 (= e!834113 (and tp!379536 tp!379534))))

(declare-fun b!1301062 () Bool)

(declare-fun tp!379538 () Bool)

(assert (=> b!1301062 (= e!834113 tp!379538)))

(assert (= (and b!1300187 ((_ is ElementMatch!3559) (reg!3888 (regex!2245 (rule!3984 t2!34))))) b!1301060))

(assert (= (and b!1300187 ((_ is Concat!5894) (reg!3888 (regex!2245 (rule!3984 t2!34))))) b!1301061))

(assert (= (and b!1300187 ((_ is Star!3559) (reg!3888 (regex!2245 (rule!3984 t2!34))))) b!1301062))

(assert (= (and b!1300187 ((_ is Union!3559) (reg!3888 (regex!2245 (rule!3984 t2!34))))) b!1301063))

(declare-fun b!1301067 () Bool)

(declare-fun e!834114 () Bool)

(declare-fun tp!379540 () Bool)

(declare-fun tp!379542 () Bool)

(assert (=> b!1301067 (= e!834114 (and tp!379540 tp!379542))))

(assert (=> b!1300188 (= tp!379377 e!834114)))

(declare-fun b!1301064 () Bool)

(assert (=> b!1301064 (= e!834114 tp_is_empty!6595)))

(declare-fun b!1301065 () Bool)

(declare-fun tp!379541 () Bool)

(declare-fun tp!379539 () Bool)

(assert (=> b!1301065 (= e!834114 (and tp!379541 tp!379539))))

(declare-fun b!1301066 () Bool)

(declare-fun tp!379543 () Bool)

(assert (=> b!1301066 (= e!834114 tp!379543)))

(assert (= (and b!1300188 ((_ is ElementMatch!3559) (regOne!7631 (regex!2245 (rule!3984 t2!34))))) b!1301064))

(assert (= (and b!1300188 ((_ is Concat!5894) (regOne!7631 (regex!2245 (rule!3984 t2!34))))) b!1301065))

(assert (= (and b!1300188 ((_ is Star!3559) (regOne!7631 (regex!2245 (rule!3984 t2!34))))) b!1301066))

(assert (= (and b!1300188 ((_ is Union!3559) (regOne!7631 (regex!2245 (rule!3984 t2!34))))) b!1301067))

(declare-fun b!1301071 () Bool)

(declare-fun e!834115 () Bool)

(declare-fun tp!379545 () Bool)

(declare-fun tp!379547 () Bool)

(assert (=> b!1301071 (= e!834115 (and tp!379545 tp!379547))))

(assert (=> b!1300188 (= tp!379379 e!834115)))

(declare-fun b!1301068 () Bool)

(assert (=> b!1301068 (= e!834115 tp_is_empty!6595)))

(declare-fun b!1301069 () Bool)

(declare-fun tp!379546 () Bool)

(declare-fun tp!379544 () Bool)

(assert (=> b!1301069 (= e!834115 (and tp!379546 tp!379544))))

(declare-fun b!1301070 () Bool)

(declare-fun tp!379548 () Bool)

(assert (=> b!1301070 (= e!834115 tp!379548)))

(assert (= (and b!1300188 ((_ is ElementMatch!3559) (regTwo!7631 (regex!2245 (rule!3984 t2!34))))) b!1301068))

(assert (= (and b!1300188 ((_ is Concat!5894) (regTwo!7631 (regex!2245 (rule!3984 t2!34))))) b!1301069))

(assert (= (and b!1300188 ((_ is Star!3559) (regTwo!7631 (regex!2245 (rule!3984 t2!34))))) b!1301070))

(assert (= (and b!1300188 ((_ is Union!3559) (regTwo!7631 (regex!2245 (rule!3984 t2!34))))) b!1301071))

(declare-fun b!1301075 () Bool)

(declare-fun e!834116 () Bool)

(declare-fun tp!379550 () Bool)

(declare-fun tp!379552 () Bool)

(assert (=> b!1301075 (= e!834116 (and tp!379550 tp!379552))))

(assert (=> b!1300161 (= tp!379352 e!834116)))

(declare-fun b!1301072 () Bool)

(assert (=> b!1301072 (= e!834116 tp_is_empty!6595)))

(declare-fun b!1301073 () Bool)

(declare-fun tp!379551 () Bool)

(declare-fun tp!379549 () Bool)

(assert (=> b!1301073 (= e!834116 (and tp!379551 tp!379549))))

(declare-fun b!1301074 () Bool)

(declare-fun tp!379553 () Bool)

(assert (=> b!1301074 (= e!834116 tp!379553)))

(assert (= (and b!1300161 ((_ is ElementMatch!3559) (regOne!7630 (regex!2245 (rule!3984 t1!34))))) b!1301072))

(assert (= (and b!1300161 ((_ is Concat!5894) (regOne!7630 (regex!2245 (rule!3984 t1!34))))) b!1301073))

(assert (= (and b!1300161 ((_ is Star!3559) (regOne!7630 (regex!2245 (rule!3984 t1!34))))) b!1301074))

(assert (= (and b!1300161 ((_ is Union!3559) (regOne!7630 (regex!2245 (rule!3984 t1!34))))) b!1301075))

(declare-fun b!1301079 () Bool)

(declare-fun e!834117 () Bool)

(declare-fun tp!379555 () Bool)

(declare-fun tp!379557 () Bool)

(assert (=> b!1301079 (= e!834117 (and tp!379555 tp!379557))))

(assert (=> b!1300161 (= tp!379350 e!834117)))

(declare-fun b!1301076 () Bool)

(assert (=> b!1301076 (= e!834117 tp_is_empty!6595)))

(declare-fun b!1301077 () Bool)

(declare-fun tp!379556 () Bool)

(declare-fun tp!379554 () Bool)

(assert (=> b!1301077 (= e!834117 (and tp!379556 tp!379554))))

(declare-fun b!1301078 () Bool)

(declare-fun tp!379558 () Bool)

(assert (=> b!1301078 (= e!834117 tp!379558)))

(assert (= (and b!1300161 ((_ is ElementMatch!3559) (regTwo!7630 (regex!2245 (rule!3984 t1!34))))) b!1301076))

(assert (= (and b!1300161 ((_ is Concat!5894) (regTwo!7630 (regex!2245 (rule!3984 t1!34))))) b!1301077))

(assert (= (and b!1300161 ((_ is Star!3559) (regTwo!7630 (regex!2245 (rule!3984 t1!34))))) b!1301078))

(assert (= (and b!1300161 ((_ is Union!3559) (regTwo!7630 (regex!2245 (rule!3984 t1!34))))) b!1301079))

(declare-fun b!1301083 () Bool)

(declare-fun e!834118 () Bool)

(declare-fun tp!379560 () Bool)

(declare-fun tp!379562 () Bool)

(assert (=> b!1301083 (= e!834118 (and tp!379560 tp!379562))))

(assert (=> b!1300162 (= tp!379354 e!834118)))

(declare-fun b!1301080 () Bool)

(assert (=> b!1301080 (= e!834118 tp_is_empty!6595)))

(declare-fun b!1301081 () Bool)

(declare-fun tp!379561 () Bool)

(declare-fun tp!379559 () Bool)

(assert (=> b!1301081 (= e!834118 (and tp!379561 tp!379559))))

(declare-fun b!1301082 () Bool)

(declare-fun tp!379563 () Bool)

(assert (=> b!1301082 (= e!834118 tp!379563)))

(assert (= (and b!1300162 ((_ is ElementMatch!3559) (reg!3888 (regex!2245 (rule!3984 t1!34))))) b!1301080))

(assert (= (and b!1300162 ((_ is Concat!5894) (reg!3888 (regex!2245 (rule!3984 t1!34))))) b!1301081))

(assert (= (and b!1300162 ((_ is Star!3559) (reg!3888 (regex!2245 (rule!3984 t1!34))))) b!1301082))

(assert (= (and b!1300162 ((_ is Union!3559) (reg!3888 (regex!2245 (rule!3984 t1!34))))) b!1301083))

(declare-fun b!1301087 () Bool)

(declare-fun e!834119 () Bool)

(declare-fun tp!379565 () Bool)

(declare-fun tp!379567 () Bool)

(assert (=> b!1301087 (= e!834119 (and tp!379565 tp!379567))))

(assert (=> b!1300163 (= tp!379351 e!834119)))

(declare-fun b!1301084 () Bool)

(assert (=> b!1301084 (= e!834119 tp_is_empty!6595)))

(declare-fun b!1301085 () Bool)

(declare-fun tp!379566 () Bool)

(declare-fun tp!379564 () Bool)

(assert (=> b!1301085 (= e!834119 (and tp!379566 tp!379564))))

(declare-fun b!1301086 () Bool)

(declare-fun tp!379568 () Bool)

(assert (=> b!1301086 (= e!834119 tp!379568)))

(assert (= (and b!1300163 ((_ is ElementMatch!3559) (regOne!7631 (regex!2245 (rule!3984 t1!34))))) b!1301084))

(assert (= (and b!1300163 ((_ is Concat!5894) (regOne!7631 (regex!2245 (rule!3984 t1!34))))) b!1301085))

(assert (= (and b!1300163 ((_ is Star!3559) (regOne!7631 (regex!2245 (rule!3984 t1!34))))) b!1301086))

(assert (= (and b!1300163 ((_ is Union!3559) (regOne!7631 (regex!2245 (rule!3984 t1!34))))) b!1301087))

(declare-fun b!1301091 () Bool)

(declare-fun e!834120 () Bool)

(declare-fun tp!379570 () Bool)

(declare-fun tp!379572 () Bool)

(assert (=> b!1301091 (= e!834120 (and tp!379570 tp!379572))))

(assert (=> b!1300163 (= tp!379353 e!834120)))

(declare-fun b!1301088 () Bool)

(assert (=> b!1301088 (= e!834120 tp_is_empty!6595)))

(declare-fun b!1301089 () Bool)

(declare-fun tp!379571 () Bool)

(declare-fun tp!379569 () Bool)

(assert (=> b!1301089 (= e!834120 (and tp!379571 tp!379569))))

(declare-fun b!1301090 () Bool)

(declare-fun tp!379573 () Bool)

(assert (=> b!1301090 (= e!834120 tp!379573)))

(assert (= (and b!1300163 ((_ is ElementMatch!3559) (regTwo!7631 (regex!2245 (rule!3984 t1!34))))) b!1301088))

(assert (= (and b!1300163 ((_ is Concat!5894) (regTwo!7631 (regex!2245 (rule!3984 t1!34))))) b!1301089))

(assert (= (and b!1300163 ((_ is Star!3559) (regTwo!7631 (regex!2245 (rule!3984 t1!34))))) b!1301090))

(assert (= (and b!1300163 ((_ is Union!3559) (regTwo!7631 (regex!2245 (rule!3984 t1!34))))) b!1301091))

(declare-fun b!1301094 () Bool)

(declare-fun b_free!30899 () Bool)

(declare-fun b_next!31603 () Bool)

(assert (=> b!1301094 (= b_free!30899 (not b_next!31603))))

(declare-fun tp!379576 () Bool)

(declare-fun b_and!86751 () Bool)

(assert (=> b!1301094 (= tp!379576 b_and!86751)))

(declare-fun b_free!30901 () Bool)

(declare-fun b_next!31605 () Bool)

(assert (=> b!1301094 (= b_free!30901 (not b_next!31605))))

(declare-fun t!117649 () Bool)

(declare-fun tb!69613 () Bool)

(assert (=> (and b!1301094 (= (toChars!3315 (transformation!2245 (h!18419 (t!117593 (t!117593 rules!2550))))) (toChars!3315 (transformation!2245 (rule!3984 t2!34)))) t!117649) tb!69613))

(declare-fun result!84438 () Bool)

(assert (= result!84438 result!84406))

(assert (=> d!367047 t!117649))

(declare-fun t!117651 () Bool)

(declare-fun tb!69615 () Bool)

(assert (=> (and b!1301094 (= (toChars!3315 (transformation!2245 (h!18419 (t!117593 (t!117593 rules!2550))))) (toChars!3315 (transformation!2245 (rule!3984 t1!34)))) t!117651) tb!69615))

(declare-fun result!84440 () Bool)

(assert (= result!84440 result!84414))

(assert (=> b!1300133 t!117651))

(assert (=> b!1300136 t!117649))

(assert (=> d!367077 t!117651))

(declare-fun b_and!86753 () Bool)

(declare-fun tp!379574 () Bool)

(assert (=> b!1301094 (= tp!379574 (and (=> t!117649 result!84438) (=> t!117651 result!84440) b_and!86753))))

(declare-fun e!834122 () Bool)

(assert (=> b!1301094 (= e!834122 (and tp!379576 tp!379574))))

(declare-fun e!834121 () Bool)

(declare-fun b!1301093 () Bool)

(declare-fun tp!379577 () Bool)

(assert (=> b!1301093 (= e!834121 (and tp!379577 (inv!17445 (tag!2507 (h!18419 (t!117593 (t!117593 rules!2550))))) (inv!17448 (transformation!2245 (h!18419 (t!117593 (t!117593 rules!2550))))) e!834122))))

(declare-fun b!1301092 () Bool)

(declare-fun e!834123 () Bool)

(declare-fun tp!379575 () Bool)

(assert (=> b!1301092 (= e!834123 (and e!834121 tp!379575))))

(assert (=> b!1300182 (= tp!379373 e!834123)))

(assert (= b!1301093 b!1301094))

(assert (= b!1301092 b!1301093))

(assert (= (and b!1300182 ((_ is Cons!13018) (t!117593 (t!117593 rules!2550)))) b!1301092))

(declare-fun m!1452935 () Bool)

(assert (=> b!1301093 m!1452935))

(declare-fun m!1452937 () Bool)

(assert (=> b!1301093 m!1452937))

(declare-fun b!1301098 () Bool)

(declare-fun e!834125 () Bool)

(declare-fun tp!379579 () Bool)

(declare-fun tp!379581 () Bool)

(assert (=> b!1301098 (= e!834125 (and tp!379579 tp!379581))))

(assert (=> b!1300183 (= tp!379375 e!834125)))

(declare-fun b!1301095 () Bool)

(assert (=> b!1301095 (= e!834125 tp_is_empty!6595)))

(declare-fun b!1301096 () Bool)

(declare-fun tp!379580 () Bool)

(declare-fun tp!379578 () Bool)

(assert (=> b!1301096 (= e!834125 (and tp!379580 tp!379578))))

(declare-fun b!1301097 () Bool)

(declare-fun tp!379582 () Bool)

(assert (=> b!1301097 (= e!834125 tp!379582)))

(assert (= (and b!1300183 ((_ is ElementMatch!3559) (regex!2245 (h!18419 (t!117593 rules!2550))))) b!1301095))

(assert (= (and b!1300183 ((_ is Concat!5894) (regex!2245 (h!18419 (t!117593 rules!2550))))) b!1301096))

(assert (= (and b!1300183 ((_ is Star!3559) (regex!2245 (h!18419 (t!117593 rules!2550))))) b!1301097))

(assert (= (and b!1300183 ((_ is Union!3559) (regex!2245 (h!18419 (t!117593 rules!2550))))) b!1301098))

(declare-fun b_lambda!37305 () Bool)

(assert (= b_lambda!37291 (or b!1299773 b_lambda!37305)))

(declare-fun bs!329294 () Bool)

(declare-fun d!367529 () Bool)

(assert (= bs!329294 (and d!367529 b!1299773)))

(declare-fun res!582644 () Bool)

(declare-fun e!834126 () Bool)

(assert (=> bs!329294 (=> (not res!582644) (not e!834126))))

(assert (=> bs!329294 (= res!582644 (matchR!1561 lt!427438 res!582543))))

(assert (=> bs!329294 (= (dynLambda!5700 lambda!51147 res!582543) e!834126)))

(declare-fun b!1301099 () Bool)

(assert (=> b!1301099 (= e!834126 (isPrefix!1062 lt!427432 res!582543))))

(assert (= (and bs!329294 res!582644) b!1301099))

(declare-fun m!1452939 () Bool)

(assert (=> bs!329294 m!1452939))

(declare-fun m!1452941 () Bool)

(assert (=> b!1301099 m!1452941))

(assert (=> d!367355 d!367529))

(declare-fun b_lambda!37307 () Bool)

(assert (= b_lambda!37295 (or d!367035 b_lambda!37307)))

(declare-fun bs!329295 () Bool)

(declare-fun d!367531 () Bool)

(assert (= bs!329295 (and d!367531 d!367035)))

(assert (=> bs!329295 (= (dynLambda!5711 lambda!51162 (h!18419 rules!2550)) (ruleValid!551 thiss!19762 (h!18419 rules!2550)))))

(assert (=> bs!329295 m!1451717))

(assert (=> b!1300725 d!367531))

(declare-fun b_lambda!37309 () Bool)

(assert (= b_lambda!37289 (or d!367079 b_lambda!37309)))

(declare-fun bs!329296 () Bool)

(declare-fun d!367533 () Bool)

(assert (= bs!329296 (and d!367533 d!367079)))

(assert (=> bs!329296 (= (dynLambda!5708 lambda!51165 (h!18419 rules!2550)) (regex!2245 (h!18419 rules!2550)))))

(assert (=> b!1300506 d!367533))

(check-sat (not b!1300611) (not b!1301023) (not b_lambda!37309) (not b!1300792) (not d!367493) (not d!367385) (not d!367213) (not b!1300703) (not b!1300825) (not bm!89099) (not d!367305) (not b!1301059) (not d!367315) (not b!1301045) (not b!1301016) (not b_next!31605) (not b!1301013) (not b!1301097) (not d!367403) (not b!1300271) (not b!1301028) (not b!1300740) b_and!86737 (not d!367509) (not b!1301006) (not d!367165) (not b!1300431) (not b!1300668) (not b!1300614) (not b!1300759) (not b!1300788) (not b!1300822) (not d!367505) (not b!1301071) (not b!1300499) (not d!367499) (not bs!329294) (not d!367427) (not b!1300995) (not d!367205) (not b!1301061) (not b!1300411) (not b_next!31603) (not b!1301078) (not b!1301027) (not b!1301030) (not b!1300823) (not b!1301067) (not b!1301065) (not b!1300746) (not b!1300281) b_and!86739 (not b!1300402) (not b!1300282) (not d!367207) (not d!367299) (not b!1301018) (not bm!89088) b_and!86745 (not b!1300413) (not d!367163) (not d!367169) (not b!1300989) b_and!86753 b_and!86687 (not b!1300456) (not b_lambda!37279) (not b!1300454) (not b!1301070) (not b!1301098) b_and!86743 (not d!367199) (not b!1301032) (not d!367341) (not b!1300666) (not b!1300589) (not b!1300493) (not d!367241) (not b!1300492) (not d!367255) (not b!1301083) (not bs!329295) (not b!1301047) (not d!367345) (not b!1300824) b_and!86751 (not d!367295) (not b!1300576) (not b!1301085) (not b!1301092) (not d!367501) (not d!367479) (not b!1300786) tp_is_empty!6595 (not bm!89074) (not b!1301099) (not bm!89109) (not d!367239) (not b!1301079) (not b!1300627) (not b!1301075) (not b!1301073) (not d!367211) (not b!1301020) (not b!1301034) (not b!1300458) (not b!1300705) (not b!1300452) (not b!1300500) (not b!1300974) (not b!1301053) (not b!1301055) (not b!1300960) (not d!367489) (not d!367249) (not d!367519) (not d!367391) (not b_next!31595) (not d!367171) (not b!1301019) (not b!1301082) (not d!367217) (not d!367515) (not b!1301009) (not b!1301096) (not b_lambda!37281) (not d!367303) (not b!1300423) (not b!1300978) (not d!367521) (not b!1301049) (not b!1301056) (not b!1300726) (not b!1300463) (not b!1300663) (not d!367173) (not d!367419) (not b!1300470) (not d!367351) (not d!367353) (not b_next!31587) (not b!1301036) (not b!1300444) (not b!1300573) (not b!1300761) (not b!1300733) b_and!86741 (not b!1300409) (not b!1300709) (not b!1301000) (not d!367189) (not d!367203) (not b!1300713) (not b!1301066) (not b!1301046) (not d!367495) (not d!367297) (not b!1300664) (not b!1300704) (not d!367183) (not b!1301086) (not b_lambda!37307) (not b!1301057) (not b!1300983) (not d!367517) (not b!1300988) (not b!1301054) (not b!1300984) (not d!367287) (not d!367259) (not bm!89128) (not b!1300626) (not b!1301062) (not b!1301015) (not d!367503) (not bm!89087) (not b!1300577) (not b!1300403) (not b_next!31579) (not d!367431) (not b_lambda!37277) (not d!367099) (not b!1301093) (not b!1300422) (not b!1300065) (not b!1300430) (not d!367507) (not b!1300273) (not b!1300959) (not b!1300506) (not d!367477) (not d!367257) (not b_next!31589) (not b!1301087) (not d!367191) (not b!1301051) (not b!1300958) (not b!1301001) (not b!1300446) (not d!367293) (not b!1300707) (not b_lambda!37283) (not b!1301081) (not d!367159) (not b!1301077) (not bm!89132) (not b_lambda!37305) (not b!1300982) (not b!1301035) (not b!1300425) (not b!1301058) (not b!1300612) (not b!1300977) (not b!1301063) (not b!1300276) (not bm!89119) (not b_next!31597) (not b!1300993) (not b!1301089) (not b_next!31581) (not d!367455) (not b!1300435) (not b!1300985) (not b!1301031) (not d!367215) (not b!1300277) (not b!1300323) (not b!1300997) (not b!1301074) (not b!1300731) b_and!86679 (not b!1300610) (not d!367349) (not b!1300497) (not b!1300789) (not b!1300708) (not b_next!31585) (not d!367491) (not b!1301090) (not b!1300437) (not d!367393) (not b!1300625) (not b!1300715) (not b_lambda!37285) (not d!367245) (not d!367511) (not bm!89131) (not b!1300494) (not bm!89098) (not b!1300986) (not b!1301022) (not b!1301050) (not b!1300575) (not b!1301069) (not d!367475) (not b!1300991) (not d!367481) (not b!1300496) b_and!86683 (not d!367101) (not b!1301024) (not b!1300375) (not b!1300965) (not bm!89127) (not b!1301026) (not d!367383) (not b!1300433) (not b!1300583) (not b!1301005) (not b!1301091) (not b!1300973) (not d!367219) (not d!367415) (not b!1301011) (not b_next!31583) (not b!1300961) (not d!367209) (not d!367339) (not b!1300588) (not b!1300135))
(check-sat (not b_next!31605) b_and!86737 (not b_next!31603) b_and!86739 b_and!86743 b_and!86751 (not b_next!31595) (not b_next!31587) b_and!86741 (not b_next!31579) (not b_next!31589) b_and!86679 (not b_next!31585) b_and!86683 (not b_next!31583) b_and!86745 b_and!86753 b_and!86687 (not b_next!31597) (not b_next!31581))
