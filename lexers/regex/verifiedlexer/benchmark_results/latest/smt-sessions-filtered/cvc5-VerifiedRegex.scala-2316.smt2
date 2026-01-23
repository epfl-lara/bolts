; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!114644 () Bool)

(assert start!114644)

(declare-fun b!1298995 () Bool)

(declare-fun b_free!30807 () Bool)

(declare-fun b_next!31511 () Bool)

(assert (=> b!1298995 (= b_free!30807 (not b_next!31511))))

(declare-fun tp!379013 () Bool)

(declare-fun b_and!86563 () Bool)

(assert (=> b!1298995 (= tp!379013 b_and!86563)))

(declare-fun b_free!30809 () Bool)

(declare-fun b_next!31513 () Bool)

(assert (=> b!1298995 (= b_free!30809 (not b_next!31513))))

(declare-fun tp!379017 () Bool)

(declare-fun b_and!86565 () Bool)

(assert (=> b!1298995 (= tp!379017 b_and!86565)))

(declare-fun b!1298992 () Bool)

(declare-fun b_free!30811 () Bool)

(declare-fun b_next!31515 () Bool)

(assert (=> b!1298992 (= b_free!30811 (not b_next!31515))))

(declare-fun tp!379009 () Bool)

(declare-fun b_and!86567 () Bool)

(assert (=> b!1298992 (= tp!379009 b_and!86567)))

(declare-fun b_free!30813 () Bool)

(declare-fun b_next!31517 () Bool)

(assert (=> b!1298992 (= b_free!30813 (not b_next!31517))))

(declare-fun tp!379019 () Bool)

(declare-fun b_and!86569 () Bool)

(assert (=> b!1298992 (= tp!379019 b_and!86569)))

(declare-fun b!1299006 () Bool)

(declare-fun b_free!30815 () Bool)

(declare-fun b_next!31519 () Bool)

(assert (=> b!1299006 (= b_free!30815 (not b_next!31519))))

(declare-fun tp!379018 () Bool)

(declare-fun b_and!86571 () Bool)

(assert (=> b!1299006 (= tp!379018 b_and!86571)))

(declare-fun b_free!30817 () Bool)

(declare-fun b_next!31521 () Bool)

(assert (=> b!1299006 (= b_free!30817 (not b_next!31521))))

(declare-fun tp!379010 () Bool)

(declare-fun b_and!86573 () Bool)

(assert (=> b!1299006 (= tp!379010 b_and!86573)))

(declare-fun b!1299008 () Bool)

(assert (=> b!1299008 true))

(assert (=> b!1299008 true))

(declare-fun e!832791 () Bool)

(assert (=> b!1298992 (= e!832791 (and tp!379009 tp!379019))))

(declare-fun e!832800 () Bool)

(declare-fun tp!379011 () Bool)

(declare-datatypes ((List!13061 0))(
  ( (Nil!12995) (Cons!12995 (h!18396 (_ BitVec 16)) (t!117536 List!13061)) )
))
(declare-datatypes ((TokenValue!2330 0))(
  ( (FloatLiteralValue!4660 (text!16755 List!13061)) (TokenValueExt!2329 (__x!8489 Int)) (Broken!11650 (value!73448 List!13061)) (Object!2395) (End!2330) (Def!2330) (Underscore!2330) (Match!2330) (Else!2330) (Error!2330) (Case!2330) (If!2330) (Extends!2330) (Abstract!2330) (Class!2330) (Val!2330) (DelimiterValue!4660 (del!2390 List!13061)) (KeywordValue!2336 (value!73449 List!13061)) (CommentValue!4660 (value!73450 List!13061)) (WhitespaceValue!4660 (value!73451 List!13061)) (IndentationValue!2330 (value!73452 List!13061)) (String!15887) (Int32!2330) (Broken!11651 (value!73453 List!13061)) (Boolean!2331) (Unit!19136) (OperatorValue!2333 (op!2390 List!13061)) (IdentifierValue!4660 (value!73454 List!13061)) (IdentifierValue!4661 (value!73455 List!13061)) (WhitespaceValue!4661 (value!73456 List!13061)) (True!4660) (False!4660) (Broken!11652 (value!73457 List!13061)) (Broken!11653 (value!73458 List!13061)) (True!4661) (RightBrace!2330) (RightBracket!2330) (Colon!2330) (Null!2330) (Comma!2330) (LeftBracket!2330) (False!4661) (LeftBrace!2330) (ImaginaryLiteralValue!2330 (text!16756 List!13061)) (StringLiteralValue!6990 (value!73459 List!13061)) (EOFValue!2330 (value!73460 List!13061)) (IdentValue!2330 (value!73461 List!13061)) (DelimiterValue!4661 (value!73462 List!13061)) (DedentValue!2330 (value!73463 List!13061)) (NewLineValue!2330 (value!73464 List!13061)) (IntegerValue!6990 (value!73465 (_ BitVec 32)) (text!16757 List!13061)) (IntegerValue!6991 (value!73466 Int) (text!16758 List!13061)) (Times!2330) (Or!2330) (Equal!2330) (Minus!2330) (Broken!11654 (value!73467 List!13061)) (And!2330) (Div!2330) (LessEqual!2330) (Mod!2330) (Concat!5884) (Not!2330) (Plus!2330) (SpaceValue!2330 (value!73468 List!13061)) (IntegerValue!6992 (value!73469 Int) (text!16759 List!13061)) (StringLiteralValue!6991 (text!16760 List!13061)) (FloatLiteralValue!4661 (text!16761 List!13061)) (BytesLiteralValue!2330 (value!73470 List!13061)) (CommentValue!4661 (value!73471 List!13061)) (StringLiteralValue!6992 (value!73472 List!13061)) (ErrorTokenValue!2330 (msg!2391 List!13061)) )
))
(declare-datatypes ((C!7398 0))(
  ( (C!7399 (val!4259 Int)) )
))
(declare-datatypes ((List!13062 0))(
  ( (Nil!12996) (Cons!12996 (h!18397 C!7398) (t!117537 List!13062)) )
))
(declare-datatypes ((IArray!8541 0))(
  ( (IArray!8542 (innerList!4328 List!13062)) )
))
(declare-datatypes ((Conc!4268 0))(
  ( (Node!4268 (left!11176 Conc!4268) (right!11506 Conc!4268) (csize!8766 Int) (cheight!4479 Int)) (Leaf!6585 (xs!6983 IArray!8541) (csize!8767 Int)) (Empty!4268) )
))
(declare-datatypes ((BalanceConc!8476 0))(
  ( (BalanceConc!8477 (c!213873 Conc!4268)) )
))
(declare-datatypes ((String!15888 0))(
  ( (String!15889 (value!73473 String)) )
))
(declare-datatypes ((Regex!3554 0))(
  ( (ElementMatch!3554 (c!213874 C!7398)) (Concat!5885 (regOne!7620 Regex!3554) (regTwo!7620 Regex!3554)) (EmptyExpr!3554) (Star!3554 (reg!3883 Regex!3554)) (EmptyLang!3554) (Union!3554 (regOne!7621 Regex!3554) (regTwo!7621 Regex!3554)) )
))
(declare-datatypes ((TokenValueInjection!4320 0))(
  ( (TokenValueInjection!4321 (toValue!3451 Int) (toChars!3310 Int)) )
))
(declare-datatypes ((Rule!4280 0))(
  ( (Rule!4281 (regex!2240 Regex!3554) (tag!2502 String!15888) (isSeparator!2240 Bool) (transformation!2240 TokenValueInjection!4320)) )
))
(declare-datatypes ((Token!4142 0))(
  ( (Token!4143 (value!73474 TokenValue!2330) (rule!3979 Rule!4280) (size!10626 Int) (originalCharacters!3102 List!13062)) )
))
(declare-fun t1!34 () Token!4142)

(declare-fun e!832790 () Bool)

(declare-fun b!1298993 () Bool)

(declare-fun inv!21 (TokenValue!2330) Bool)

(assert (=> b!1298993 (= e!832790 (and (inv!21 (value!73474 t1!34)) e!832800 tp!379011))))

(declare-fun e!832798 () Bool)

(assert (=> b!1298995 (= e!832798 (and tp!379013 tp!379017))))

(declare-fun b!1298996 () Bool)

(declare-fun res!581687 () Bool)

(declare-fun e!832789 () Bool)

(assert (=> b!1298996 (=> (not res!581687) (not e!832789))))

(declare-datatypes ((LexerInterface!1935 0))(
  ( (LexerInterfaceExt!1932 (__x!8490 Int)) (Lexer!1933) )
))
(declare-fun thiss!19762 () LexerInterface!1935)

(declare-datatypes ((List!13063 0))(
  ( (Nil!12997) (Cons!12997 (h!18398 Rule!4280) (t!117538 List!13063)) )
))
(declare-fun rules!2550 () List!13063)

(declare-fun t2!34 () Token!4142)

(declare-fun separableTokensPredicate!218 (LexerInterface!1935 Token!4142 Token!4142 List!13063) Bool)

(assert (=> b!1298996 (= res!581687 (not (separableTokensPredicate!218 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1298997 () Bool)

(declare-fun res!581681 () Bool)

(declare-fun e!832793 () Bool)

(assert (=> b!1298997 (=> (not res!581681) (not e!832793))))

(assert (=> b!1298997 (= res!581681 (not (= (isSeparator!2240 (rule!3979 t1!34)) (isSeparator!2240 (rule!3979 t2!34)))))))

(declare-fun b!1298998 () Bool)

(declare-fun res!581686 () Bool)

(assert (=> b!1298998 (=> (not res!581686) (not e!832793))))

(declare-fun rulesProduceIndividualToken!904 (LexerInterface!1935 List!13063 Token!4142) Bool)

(assert (=> b!1298998 (= res!581686 (rulesProduceIndividualToken!904 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1298999 () Bool)

(declare-fun e!832783 () Bool)

(declare-fun e!832786 () Bool)

(assert (=> b!1298999 (= e!832783 e!832786)))

(declare-fun res!581693 () Bool)

(assert (=> b!1298999 (=> res!581693 e!832786)))

(declare-fun lt!427215 () List!13062)

(declare-fun lt!427210 () List!13062)

(declare-fun ++!3305 (List!13062 List!13062) List!13062)

(declare-fun getSuffix!410 (List!13062 List!13062) List!13062)

(assert (=> b!1298999 (= res!581693 (not (= lt!427215 (++!3305 lt!427210 (getSuffix!410 lt!427215 lt!427210)))))))

(declare-fun lambda!51100 () Int)

(declare-fun pickWitness!17 (Int) List!13062)

(assert (=> b!1298999 (= lt!427215 (pickWitness!17 lambda!51100))))

(declare-fun b!1299000 () Bool)

(declare-fun res!581690 () Bool)

(assert (=> b!1299000 (=> (not res!581690) (not e!832793))))

(declare-fun rulesInvariant!1805 (LexerInterface!1935 List!13063) Bool)

(assert (=> b!1299000 (= res!581690 (rulesInvariant!1805 thiss!19762 rules!2550))))

(declare-fun e!832801 () Bool)

(declare-fun tp!379014 () Bool)

(declare-fun b!1299001 () Bool)

(declare-fun inv!17425 (String!15888) Bool)

(declare-fun inv!17428 (TokenValueInjection!4320) Bool)

(assert (=> b!1299001 (= e!832801 (and tp!379014 (inv!17425 (tag!2502 (h!18398 rules!2550))) (inv!17428 (transformation!2240 (h!18398 rules!2550))) e!832798))))

(declare-fun b!1299002 () Bool)

(declare-fun e!832799 () Bool)

(assert (=> b!1299002 (= e!832789 e!832799)))

(declare-fun res!581688 () Bool)

(assert (=> b!1299002 (=> (not res!581688) (not e!832799))))

(declare-fun lt!427208 () Regex!3554)

(declare-fun prefixMatch!67 (Regex!3554 List!13062) Bool)

(assert (=> b!1299002 (= res!581688 (prefixMatch!67 lt!427208 lt!427210))))

(declare-fun rulesRegex!125 (LexerInterface!1935 List!13063) Regex!3554)

(assert (=> b!1299002 (= lt!427208 (rulesRegex!125 thiss!19762 rules!2550))))

(declare-fun lt!427213 () List!13062)

(declare-fun lt!427209 () C!7398)

(assert (=> b!1299002 (= lt!427210 (++!3305 lt!427213 (Cons!12996 lt!427209 Nil!12996)))))

(declare-fun lt!427207 () BalanceConc!8476)

(declare-fun apply!2888 (BalanceConc!8476 Int) C!7398)

(assert (=> b!1299002 (= lt!427209 (apply!2888 lt!427207 0))))

(declare-fun lt!427212 () BalanceConc!8476)

(declare-fun list!4870 (BalanceConc!8476) List!13062)

(assert (=> b!1299002 (= lt!427213 (list!4870 lt!427212))))

(declare-fun charsOf!1212 (Token!4142) BalanceConc!8476)

(assert (=> b!1299002 (= lt!427212 (charsOf!1212 t1!34))))

(declare-fun b!1299003 () Bool)

(declare-fun e!832787 () Bool)

(declare-fun tp!379015 () Bool)

(assert (=> b!1299003 (= e!832787 (and tp!379015 (inv!17425 (tag!2502 (rule!3979 t2!34))) (inv!17428 (transformation!2240 (rule!3979 t2!34))) e!832791))))

(declare-fun b!1299004 () Bool)

(declare-fun res!581694 () Bool)

(assert (=> b!1299004 (=> (not res!581694) (not e!832793))))

(assert (=> b!1299004 (= res!581694 (rulesProduceIndividualToken!904 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1299005 () Bool)

(declare-fun res!581685 () Bool)

(assert (=> b!1299005 (=> (not res!581685) (not e!832793))))

(declare-fun isEmpty!7724 (List!13063) Bool)

(assert (=> b!1299005 (= res!581685 (not (isEmpty!7724 rules!2550)))))

(declare-fun e!832785 () Bool)

(assert (=> b!1299006 (= e!832785 (and tp!379018 tp!379010))))

(declare-fun tp!379012 () Bool)

(declare-fun b!1299007 () Bool)

(assert (=> b!1299007 (= e!832800 (and tp!379012 (inv!17425 (tag!2502 (rule!3979 t1!34))) (inv!17428 (transformation!2240 (rule!3979 t1!34))) e!832785))))

(declare-fun b!1298994 () Bool)

(declare-fun res!581680 () Bool)

(declare-fun e!832802 () Bool)

(assert (=> b!1298994 (=> res!581680 e!832802)))

(declare-fun lt!427214 () C!7398)

(declare-fun contains!2178 (List!13062 C!7398) Bool)

(assert (=> b!1298994 (= res!581680 (not (contains!2178 lt!427215 lt!427214)))))

(declare-fun res!581682 () Bool)

(assert (=> start!114644 (=> (not res!581682) (not e!832793))))

(assert (=> start!114644 (= res!581682 (is-Lexer!1933 thiss!19762))))

(assert (=> start!114644 e!832793))

(assert (=> start!114644 true))

(declare-fun e!832784 () Bool)

(assert (=> start!114644 e!832784))

(declare-fun inv!17429 (Token!4142) Bool)

(assert (=> start!114644 (and (inv!17429 t1!34) e!832790)))

(declare-fun e!832794 () Bool)

(assert (=> start!114644 (and (inv!17429 t2!34) e!832794)))

(assert (=> b!1299008 (= e!832799 (not e!832783))))

(declare-fun res!581683 () Bool)

(assert (=> b!1299008 (=> res!581683 e!832783)))

(declare-fun Exists!712 (Int) Bool)

(assert (=> b!1299008 (= res!581683 (not (Exists!712 lambda!51100)))))

(assert (=> b!1299008 (Exists!712 lambda!51100)))

(declare-datatypes ((Unit!19137 0))(
  ( (Unit!19138) )
))
(declare-fun lt!427211 () Unit!19137)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!30 (Regex!3554 List!13062) Unit!19137)

(assert (=> b!1299008 (= lt!427211 (lemmaPrefixMatchThenExistsStringThatMatches!30 lt!427208 lt!427210))))

(declare-fun b!1299009 () Bool)

(declare-fun res!581692 () Bool)

(assert (=> b!1299009 (=> res!581692 e!832802)))

(assert (=> b!1299009 (= res!581692 (not (contains!2178 lt!427210 lt!427209)))))

(declare-fun b!1299010 () Bool)

(assert (=> b!1299010 (= e!832786 e!832802)))

(declare-fun res!581684 () Bool)

(assert (=> b!1299010 (=> res!581684 e!832802)))

(assert (=> b!1299010 (= res!581684 (not (contains!2178 lt!427210 lt!427214)))))

(assert (=> b!1299010 (= lt!427214 (apply!2888 lt!427212 0))))

(declare-fun b!1299011 () Bool)

(declare-fun tp!379016 () Bool)

(assert (=> b!1299011 (= e!832784 (and e!832801 tp!379016))))

(declare-fun b!1299012 () Bool)

(declare-fun tp!379020 () Bool)

(assert (=> b!1299012 (= e!832794 (and (inv!21 (value!73474 t2!34)) e!832787 tp!379020))))

(declare-fun b!1299013 () Bool)

(declare-fun res!581691 () Bool)

(assert (=> b!1299013 (=> (not res!581691) (not e!832789))))

(declare-fun sepAndNonSepRulesDisjointChars!613 (List!13063 List!13063) Bool)

(assert (=> b!1299013 (= res!581691 (sepAndNonSepRulesDisjointChars!613 rules!2550 rules!2550))))

(declare-fun b!1299014 () Bool)

(declare-fun validRegex!1534 (Regex!3554) Bool)

(assert (=> b!1299014 (= e!832802 (validRegex!1534 lt!427208))))

(declare-fun b!1299015 () Bool)

(declare-fun res!581695 () Bool)

(assert (=> b!1299015 (=> res!581695 e!832802)))

(assert (=> b!1299015 (= res!581695 (not (contains!2178 lt!427215 lt!427209)))))

(declare-fun b!1299016 () Bool)

(assert (=> b!1299016 (= e!832793 e!832789)))

(declare-fun res!581689 () Bool)

(assert (=> b!1299016 (=> (not res!581689) (not e!832789))))

(declare-fun size!10627 (BalanceConc!8476) Int)

(assert (=> b!1299016 (= res!581689 (> (size!10627 lt!427207) 0))))

(assert (=> b!1299016 (= lt!427207 (charsOf!1212 t2!34))))

(assert (= (and start!114644 res!581682) b!1299005))

(assert (= (and b!1299005 res!581685) b!1299000))

(assert (= (and b!1299000 res!581690) b!1298998))

(assert (= (and b!1298998 res!581686) b!1299004))

(assert (= (and b!1299004 res!581694) b!1298997))

(assert (= (and b!1298997 res!581681) b!1299016))

(assert (= (and b!1299016 res!581689) b!1299013))

(assert (= (and b!1299013 res!581691) b!1298996))

(assert (= (and b!1298996 res!581687) b!1299002))

(assert (= (and b!1299002 res!581688) b!1299008))

(assert (= (and b!1299008 (not res!581683)) b!1298999))

(assert (= (and b!1298999 (not res!581693)) b!1299010))

(assert (= (and b!1299010 (not res!581684)) b!1298994))

(assert (= (and b!1298994 (not res!581680)) b!1299009))

(assert (= (and b!1299009 (not res!581692)) b!1299015))

(assert (= (and b!1299015 (not res!581695)) b!1299014))

(assert (= b!1299001 b!1298995))

(assert (= b!1299011 b!1299001))

(assert (= (and start!114644 (is-Cons!12997 rules!2550)) b!1299011))

(assert (= b!1299007 b!1299006))

(assert (= b!1298993 b!1299007))

(assert (= start!114644 b!1298993))

(assert (= b!1299003 b!1298992))

(assert (= b!1299012 b!1299003))

(assert (= start!114644 b!1299012))

(declare-fun m!1450567 () Bool)

(assert (=> b!1299010 m!1450567))

(declare-fun m!1450569 () Bool)

(assert (=> b!1299010 m!1450569))

(declare-fun m!1450571 () Bool)

(assert (=> b!1298994 m!1450571))

(declare-fun m!1450573 () Bool)

(assert (=> b!1299013 m!1450573))

(declare-fun m!1450575 () Bool)

(assert (=> start!114644 m!1450575))

(declare-fun m!1450577 () Bool)

(assert (=> start!114644 m!1450577))

(declare-fun m!1450579 () Bool)

(assert (=> b!1299014 m!1450579))

(declare-fun m!1450581 () Bool)

(assert (=> b!1299005 m!1450581))

(declare-fun m!1450583 () Bool)

(assert (=> b!1299004 m!1450583))

(declare-fun m!1450585 () Bool)

(assert (=> b!1298996 m!1450585))

(declare-fun m!1450587 () Bool)

(assert (=> b!1299007 m!1450587))

(declare-fun m!1450589 () Bool)

(assert (=> b!1299007 m!1450589))

(declare-fun m!1450591 () Bool)

(assert (=> b!1299015 m!1450591))

(declare-fun m!1450593 () Bool)

(assert (=> b!1299000 m!1450593))

(declare-fun m!1450595 () Bool)

(assert (=> b!1299001 m!1450595))

(declare-fun m!1450597 () Bool)

(assert (=> b!1299001 m!1450597))

(declare-fun m!1450599 () Bool)

(assert (=> b!1298998 m!1450599))

(declare-fun m!1450601 () Bool)

(assert (=> b!1299009 m!1450601))

(declare-fun m!1450603 () Bool)

(assert (=> b!1298993 m!1450603))

(declare-fun m!1450605 () Bool)

(assert (=> b!1298999 m!1450605))

(assert (=> b!1298999 m!1450605))

(declare-fun m!1450607 () Bool)

(assert (=> b!1298999 m!1450607))

(declare-fun m!1450609 () Bool)

(assert (=> b!1298999 m!1450609))

(declare-fun m!1450611 () Bool)

(assert (=> b!1299016 m!1450611))

(declare-fun m!1450613 () Bool)

(assert (=> b!1299016 m!1450613))

(declare-fun m!1450615 () Bool)

(assert (=> b!1299008 m!1450615))

(assert (=> b!1299008 m!1450615))

(declare-fun m!1450617 () Bool)

(assert (=> b!1299008 m!1450617))

(declare-fun m!1450619 () Bool)

(assert (=> b!1299002 m!1450619))

(declare-fun m!1450621 () Bool)

(assert (=> b!1299002 m!1450621))

(declare-fun m!1450623 () Bool)

(assert (=> b!1299002 m!1450623))

(declare-fun m!1450625 () Bool)

(assert (=> b!1299002 m!1450625))

(declare-fun m!1450627 () Bool)

(assert (=> b!1299002 m!1450627))

(declare-fun m!1450629 () Bool)

(assert (=> b!1299002 m!1450629))

(declare-fun m!1450631 () Bool)

(assert (=> b!1299003 m!1450631))

(declare-fun m!1450633 () Bool)

(assert (=> b!1299003 m!1450633))

(declare-fun m!1450635 () Bool)

(assert (=> b!1299012 m!1450635))

(push 1)

(assert (not b!1298993))

(assert (not b!1299010))

(assert b_and!86569)

(assert (not b!1299015))

(assert b_and!86573)

(assert (not b!1299013))

(assert (not b!1299016))

(assert (not b!1298994))

(assert b_and!86565)

(assert (not b!1299003))

(assert (not b!1299011))

(assert (not b_next!31521))

(assert (not b!1298996))

(assert (not b!1299004))

(assert b_and!86567)

(assert (not b!1299000))

(assert (not b!1299009))

(assert (not b!1299005))

(assert (not b!1299008))

(assert (not b_next!31511))

(assert (not b!1299014))

(assert (not b_next!31519))

(assert (not b_next!31513))

(assert (not b!1299002))

(assert (not b!1299001))

(assert (not b!1298998))

(assert (not b!1299007))

(assert (not b!1299012))

(assert (not b_next!31517))

(assert (not start!114644))

(assert (not b_next!31515))

(assert b_and!86571)

(assert (not b!1298999))

(assert b_and!86563)

(check-sat)

(pop 1)

(push 1)

(assert b_and!86567)

(assert b_and!86569)

(assert (not b_next!31511))

(assert b_and!86573)

(assert (not b_next!31519))

(assert b_and!86565)

(assert (not b_next!31513))

(assert (not b_next!31521))

(assert (not b_next!31517))

(assert (not b_next!31515))

(assert b_and!86571)

(assert b_and!86563)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!366793 () Bool)

(assert (=> d!366793 (= (inv!17425 (tag!2502 (h!18398 rules!2550))) (= (mod (str.len (value!73473 (tag!2502 (h!18398 rules!2550)))) 2) 0))))

(assert (=> b!1299001 d!366793))

(declare-fun d!366795 () Bool)

(declare-fun res!581760 () Bool)

(declare-fun e!832871 () Bool)

(assert (=> d!366795 (=> (not res!581760) (not e!832871))))

(declare-fun semiInverseModEq!853 (Int Int) Bool)

(assert (=> d!366795 (= res!581760 (semiInverseModEq!853 (toChars!3310 (transformation!2240 (h!18398 rules!2550))) (toValue!3451 (transformation!2240 (h!18398 rules!2550)))))))

(assert (=> d!366795 (= (inv!17428 (transformation!2240 (h!18398 rules!2550))) e!832871)))

(declare-fun b!1299108 () Bool)

(declare-fun equivClasses!812 (Int Int) Bool)

(assert (=> b!1299108 (= e!832871 (equivClasses!812 (toChars!3310 (transformation!2240 (h!18398 rules!2550))) (toValue!3451 (transformation!2240 (h!18398 rules!2550)))))))

(assert (= (and d!366795 res!581760) b!1299108))

(declare-fun m!1450707 () Bool)

(assert (=> d!366795 m!1450707))

(declare-fun m!1450709 () Bool)

(assert (=> b!1299108 m!1450709))

(assert (=> b!1299001 d!366795))

(declare-fun b!1299119 () Bool)

(declare-fun e!832879 () Bool)

(declare-fun inv!15 (TokenValue!2330) Bool)

(assert (=> b!1299119 (= e!832879 (inv!15 (value!73474 t2!34)))))

(declare-fun b!1299120 () Bool)

(declare-fun res!581763 () Bool)

(assert (=> b!1299120 (=> res!581763 e!832879)))

(assert (=> b!1299120 (= res!581763 (not (is-IntegerValue!6992 (value!73474 t2!34))))))

(declare-fun e!832880 () Bool)

(assert (=> b!1299120 (= e!832880 e!832879)))

(declare-fun b!1299121 () Bool)

(declare-fun e!832878 () Bool)

(assert (=> b!1299121 (= e!832878 e!832880)))

(declare-fun c!213882 () Bool)

(assert (=> b!1299121 (= c!213882 (is-IntegerValue!6991 (value!73474 t2!34)))))

(declare-fun b!1299122 () Bool)

(declare-fun inv!17 (TokenValue!2330) Bool)

(assert (=> b!1299122 (= e!832880 (inv!17 (value!73474 t2!34)))))

(declare-fun d!366797 () Bool)

(declare-fun c!213881 () Bool)

(assert (=> d!366797 (= c!213881 (is-IntegerValue!6990 (value!73474 t2!34)))))

(assert (=> d!366797 (= (inv!21 (value!73474 t2!34)) e!832878)))

(declare-fun b!1299123 () Bool)

(declare-fun inv!16 (TokenValue!2330) Bool)

(assert (=> b!1299123 (= e!832878 (inv!16 (value!73474 t2!34)))))

(assert (= (and d!366797 c!213881) b!1299123))

(assert (= (and d!366797 (not c!213881)) b!1299121))

(assert (= (and b!1299121 c!213882) b!1299122))

(assert (= (and b!1299121 (not c!213882)) b!1299120))

(assert (= (and b!1299120 (not res!581763)) b!1299119))

(declare-fun m!1450711 () Bool)

(assert (=> b!1299119 m!1450711))

(declare-fun m!1450713 () Bool)

(assert (=> b!1299122 m!1450713))

(declare-fun m!1450715 () Bool)

(assert (=> b!1299123 m!1450715))

(assert (=> b!1299012 d!366797))

(declare-fun b!1299132 () Bool)

(declare-fun e!832886 () List!13062)

(assert (=> b!1299132 (= e!832886 (Cons!12996 lt!427209 Nil!12996))))

(declare-fun b!1299134 () Bool)

(declare-fun res!581769 () Bool)

(declare-fun e!832885 () Bool)

(assert (=> b!1299134 (=> (not res!581769) (not e!832885))))

(declare-fun lt!427245 () List!13062)

(declare-fun size!10630 (List!13062) Int)

(assert (=> b!1299134 (= res!581769 (= (size!10630 lt!427245) (+ (size!10630 lt!427213) (size!10630 (Cons!12996 lt!427209 Nil!12996)))))))

(declare-fun b!1299133 () Bool)

(assert (=> b!1299133 (= e!832886 (Cons!12996 (h!18397 lt!427213) (++!3305 (t!117537 lt!427213) (Cons!12996 lt!427209 Nil!12996))))))

(declare-fun b!1299135 () Bool)

(assert (=> b!1299135 (= e!832885 (or (not (= (Cons!12996 lt!427209 Nil!12996) Nil!12996)) (= lt!427245 lt!427213)))))

(declare-fun d!366799 () Bool)

(assert (=> d!366799 e!832885))

(declare-fun res!581768 () Bool)

(assert (=> d!366799 (=> (not res!581768) (not e!832885))))

(declare-fun content!1838 (List!13062) (Set C!7398))

(assert (=> d!366799 (= res!581768 (= (content!1838 lt!427245) (set.union (content!1838 lt!427213) (content!1838 (Cons!12996 lt!427209 Nil!12996)))))))

(assert (=> d!366799 (= lt!427245 e!832886)))

(declare-fun c!213885 () Bool)

(assert (=> d!366799 (= c!213885 (is-Nil!12996 lt!427213))))

(assert (=> d!366799 (= (++!3305 lt!427213 (Cons!12996 lt!427209 Nil!12996)) lt!427245)))

(assert (= (and d!366799 c!213885) b!1299132))

(assert (= (and d!366799 (not c!213885)) b!1299133))

(assert (= (and d!366799 res!581768) b!1299134))

(assert (= (and b!1299134 res!581769) b!1299135))

(declare-fun m!1450717 () Bool)

(assert (=> b!1299134 m!1450717))

(declare-fun m!1450719 () Bool)

(assert (=> b!1299134 m!1450719))

(declare-fun m!1450721 () Bool)

(assert (=> b!1299134 m!1450721))

(declare-fun m!1450723 () Bool)

(assert (=> b!1299133 m!1450723))

(declare-fun m!1450725 () Bool)

(assert (=> d!366799 m!1450725))

(declare-fun m!1450727 () Bool)

(assert (=> d!366799 m!1450727))

(declare-fun m!1450729 () Bool)

(assert (=> d!366799 m!1450729))

(assert (=> b!1299002 d!366799))

(declare-fun d!366801 () Bool)

(declare-fun c!213888 () Bool)

(declare-fun isEmpty!7726 (List!13062) Bool)

(assert (=> d!366801 (= c!213888 (isEmpty!7726 lt!427210))))

(declare-fun e!832889 () Bool)

(assert (=> d!366801 (= (prefixMatch!67 lt!427208 lt!427210) e!832889)))

(declare-fun b!1299140 () Bool)

(declare-fun lostCause!261 (Regex!3554) Bool)

(assert (=> b!1299140 (= e!832889 (not (lostCause!261 lt!427208)))))

(declare-fun b!1299141 () Bool)

(declare-fun derivativeStep!884 (Regex!3554 C!7398) Regex!3554)

(declare-fun head!2231 (List!13062) C!7398)

(declare-fun tail!1859 (List!13062) List!13062)

(assert (=> b!1299141 (= e!832889 (prefixMatch!67 (derivativeStep!884 lt!427208 (head!2231 lt!427210)) (tail!1859 lt!427210)))))

(assert (= (and d!366801 c!213888) b!1299140))

(assert (= (and d!366801 (not c!213888)) b!1299141))

(declare-fun m!1450731 () Bool)

(assert (=> d!366801 m!1450731))

(declare-fun m!1450733 () Bool)

(assert (=> b!1299140 m!1450733))

(declare-fun m!1450735 () Bool)

(assert (=> b!1299141 m!1450735))

(assert (=> b!1299141 m!1450735))

(declare-fun m!1450737 () Bool)

(assert (=> b!1299141 m!1450737))

(declare-fun m!1450739 () Bool)

(assert (=> b!1299141 m!1450739))

(assert (=> b!1299141 m!1450737))

(assert (=> b!1299141 m!1450739))

(declare-fun m!1450741 () Bool)

(assert (=> b!1299141 m!1450741))

(assert (=> b!1299002 d!366801))

(declare-fun d!366805 () Bool)

(declare-fun lt!427251 () C!7398)

(declare-fun apply!2890 (List!13062 Int) C!7398)

(assert (=> d!366805 (= lt!427251 (apply!2890 (list!4870 lt!427207) 0))))

(declare-fun apply!2891 (Conc!4268 Int) C!7398)

(assert (=> d!366805 (= lt!427251 (apply!2891 (c!213873 lt!427207) 0))))

(declare-fun e!832894 () Bool)

(assert (=> d!366805 e!832894))

(declare-fun res!581772 () Bool)

(assert (=> d!366805 (=> (not res!581772) (not e!832894))))

(assert (=> d!366805 (= res!581772 (<= 0 0))))

(assert (=> d!366805 (= (apply!2888 lt!427207 0) lt!427251)))

(declare-fun b!1299148 () Bool)

(assert (=> b!1299148 (= e!832894 (< 0 (size!10627 lt!427207)))))

(assert (= (and d!366805 res!581772) b!1299148))

(declare-fun m!1450743 () Bool)

(assert (=> d!366805 m!1450743))

(assert (=> d!366805 m!1450743))

(declare-fun m!1450745 () Bool)

(assert (=> d!366805 m!1450745))

(declare-fun m!1450747 () Bool)

(assert (=> d!366805 m!1450747))

(assert (=> b!1299148 m!1450611))

(assert (=> b!1299002 d!366805))

(declare-fun d!366807 () Bool)

(declare-fun lt!427254 () BalanceConc!8476)

(assert (=> d!366807 (= (list!4870 lt!427254) (originalCharacters!3102 t1!34))))

(declare-fun dynLambda!5693 (Int TokenValue!2330) BalanceConc!8476)

(assert (=> d!366807 (= lt!427254 (dynLambda!5693 (toChars!3310 (transformation!2240 (rule!3979 t1!34))) (value!73474 t1!34)))))

(assert (=> d!366807 (= (charsOf!1212 t1!34) lt!427254)))

(declare-fun b_lambda!37209 () Bool)

(assert (=> (not b_lambda!37209) (not d!366807)))

(declare-fun tb!69551 () Bool)

(declare-fun t!117549 () Bool)

(assert (=> (and b!1298995 (= (toChars!3310 (transformation!2240 (h!18398 rules!2550))) (toChars!3310 (transformation!2240 (rule!3979 t1!34)))) t!117549) tb!69551))

(declare-fun b!1299154 () Bool)

(declare-fun e!832898 () Bool)

(declare-fun tp!379062 () Bool)

(declare-fun inv!17432 (Conc!4268) Bool)

(assert (=> b!1299154 (= e!832898 (and (inv!17432 (c!213873 (dynLambda!5693 (toChars!3310 (transformation!2240 (rule!3979 t1!34))) (value!73474 t1!34)))) tp!379062))))

(declare-fun result!84342 () Bool)

(declare-fun inv!17433 (BalanceConc!8476) Bool)

(assert (=> tb!69551 (= result!84342 (and (inv!17433 (dynLambda!5693 (toChars!3310 (transformation!2240 (rule!3979 t1!34))) (value!73474 t1!34))) e!832898))))

(assert (= tb!69551 b!1299154))

(declare-fun m!1450757 () Bool)

(assert (=> b!1299154 m!1450757))

(declare-fun m!1450759 () Bool)

(assert (=> tb!69551 m!1450759))

(assert (=> d!366807 t!117549))

(declare-fun b_and!86593 () Bool)

(assert (= b_and!86565 (and (=> t!117549 result!84342) b_and!86593)))

(declare-fun tb!69553 () Bool)

(declare-fun t!117551 () Bool)

(assert (=> (and b!1298992 (= (toChars!3310 (transformation!2240 (rule!3979 t2!34))) (toChars!3310 (transformation!2240 (rule!3979 t1!34)))) t!117551) tb!69553))

(declare-fun result!84346 () Bool)

(assert (= result!84346 result!84342))

(assert (=> d!366807 t!117551))

(declare-fun b_and!86595 () Bool)

(assert (= b_and!86569 (and (=> t!117551 result!84346) b_and!86595)))

(declare-fun t!117553 () Bool)

(declare-fun tb!69555 () Bool)

(assert (=> (and b!1299006 (= (toChars!3310 (transformation!2240 (rule!3979 t1!34))) (toChars!3310 (transformation!2240 (rule!3979 t1!34)))) t!117553) tb!69555))

(declare-fun result!84348 () Bool)

(assert (= result!84348 result!84342))

(assert (=> d!366807 t!117553))

(declare-fun b_and!86597 () Bool)

(assert (= b_and!86573 (and (=> t!117553 result!84348) b_and!86597)))

(declare-fun m!1450761 () Bool)

(assert (=> d!366807 m!1450761))

(declare-fun m!1450763 () Bool)

(assert (=> d!366807 m!1450763))

(assert (=> b!1299002 d!366807))

(declare-fun d!366811 () Bool)

(declare-fun list!4872 (Conc!4268) List!13062)

(assert (=> d!366811 (= (list!4870 lt!427212) (list!4872 (c!213873 lt!427212)))))

(declare-fun bs!329147 () Bool)

(assert (= bs!329147 d!366811))

(declare-fun m!1450765 () Bool)

(assert (=> bs!329147 m!1450765))

(assert (=> b!1299002 d!366811))

(declare-fun d!366813 () Bool)

(declare-fun lt!427257 () Unit!19137)

(declare-fun lemma!55 (List!13063 LexerInterface!1935 List!13063) Unit!19137)

(assert (=> d!366813 (= lt!427257 (lemma!55 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!51110 () Int)

(declare-datatypes ((List!13067 0))(
  ( (Nil!13001) (Cons!13001 (h!18402 Regex!3554) (t!117571 List!13067)) )
))
(declare-fun generalisedUnion!59 (List!13067) Regex!3554)

(declare-fun map!2829 (List!13063 Int) List!13067)

(assert (=> d!366813 (= (rulesRegex!125 thiss!19762 rules!2550) (generalisedUnion!59 (map!2829 rules!2550 lambda!51110)))))

(declare-fun bs!329148 () Bool)

(assert (= bs!329148 d!366813))

(declare-fun m!1450767 () Bool)

(assert (=> bs!329148 m!1450767))

(declare-fun m!1450769 () Bool)

(assert (=> bs!329148 m!1450769))

(assert (=> bs!329148 m!1450769))

(declare-fun m!1450771 () Bool)

(assert (=> bs!329148 m!1450771))

(assert (=> b!1299002 d!366813))

(declare-fun d!366815 () Bool)

(declare-fun res!581777 () Bool)

(declare-fun e!832905 () Bool)

(assert (=> d!366815 (=> res!581777 e!832905)))

(assert (=> d!366815 (= res!581777 (not (is-Cons!12997 rules!2550)))))

(assert (=> d!366815 (= (sepAndNonSepRulesDisjointChars!613 rules!2550 rules!2550) e!832905)))

(declare-fun b!1299163 () Bool)

(declare-fun e!832906 () Bool)

(assert (=> b!1299163 (= e!832905 e!832906)))

(declare-fun res!581778 () Bool)

(assert (=> b!1299163 (=> (not res!581778) (not e!832906))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!297 (Rule!4280 List!13063) Bool)

(assert (=> b!1299163 (= res!581778 (ruleDisjointCharsFromAllFromOtherType!297 (h!18398 rules!2550) rules!2550))))

(declare-fun b!1299164 () Bool)

(assert (=> b!1299164 (= e!832906 (sepAndNonSepRulesDisjointChars!613 rules!2550 (t!117538 rules!2550)))))

(assert (= (and d!366815 (not res!581777)) b!1299163))

(assert (= (and b!1299163 res!581778) b!1299164))

(declare-fun m!1450773 () Bool)

(assert (=> b!1299163 m!1450773))

(declare-fun m!1450775 () Bool)

(assert (=> b!1299164 m!1450775))

(assert (=> b!1299013 d!366815))

(declare-fun d!366817 () Bool)

(declare-fun lt!427275 () Bool)

(declare-fun e!832948 () Bool)

(assert (=> d!366817 (= lt!427275 e!832948)))

(declare-fun res!581815 () Bool)

(assert (=> d!366817 (=> (not res!581815) (not e!832948))))

(declare-datatypes ((List!13068 0))(
  ( (Nil!13002) (Cons!13002 (h!18403 Token!4142) (t!117572 List!13068)) )
))
(declare-datatypes ((IArray!8545 0))(
  ( (IArray!8546 (innerList!4330 List!13068)) )
))
(declare-datatypes ((Conc!4270 0))(
  ( (Node!4270 (left!11180 Conc!4270) (right!11510 Conc!4270) (csize!8770 Int) (cheight!4481 Int)) (Leaf!6587 (xs!6985 IArray!8545) (csize!8771 Int)) (Empty!4270) )
))
(declare-datatypes ((BalanceConc!8480 0))(
  ( (BalanceConc!8481 (c!213915 Conc!4270)) )
))
(declare-fun list!4873 (BalanceConc!8480) List!13068)

(declare-datatypes ((tuple2!12708 0))(
  ( (tuple2!12709 (_1!7240 BalanceConc!8480) (_2!7240 BalanceConc!8476)) )
))
(declare-fun lex!792 (LexerInterface!1935 List!13063 BalanceConc!8476) tuple2!12708)

(declare-fun print!729 (LexerInterface!1935 BalanceConc!8480) BalanceConc!8476)

(declare-fun singletonSeq!823 (Token!4142) BalanceConc!8480)

(assert (=> d!366817 (= res!581815 (= (list!4873 (_1!7240 (lex!792 thiss!19762 rules!2550 (print!729 thiss!19762 (singletonSeq!823 t1!34))))) (list!4873 (singletonSeq!823 t1!34))))))

(declare-fun e!832947 () Bool)

(assert (=> d!366817 (= lt!427275 e!832947)))

(declare-fun res!581816 () Bool)

(assert (=> d!366817 (=> (not res!581816) (not e!832947))))

(declare-fun lt!427274 () tuple2!12708)

(declare-fun size!10631 (BalanceConc!8480) Int)

(assert (=> d!366817 (= res!581816 (= (size!10631 (_1!7240 lt!427274)) 1))))

(assert (=> d!366817 (= lt!427274 (lex!792 thiss!19762 rules!2550 (print!729 thiss!19762 (singletonSeq!823 t1!34))))))

(assert (=> d!366817 (not (isEmpty!7724 rules!2550))))

(assert (=> d!366817 (= (rulesProduceIndividualToken!904 thiss!19762 rules!2550 t1!34) lt!427275)))

(declare-fun b!1299226 () Bool)

(declare-fun res!581817 () Bool)

(assert (=> b!1299226 (=> (not res!581817) (not e!832947))))

(declare-fun apply!2892 (BalanceConc!8480 Int) Token!4142)

(assert (=> b!1299226 (= res!581817 (= (apply!2892 (_1!7240 lt!427274) 0) t1!34))))

(declare-fun b!1299227 () Bool)

(declare-fun isEmpty!7727 (BalanceConc!8476) Bool)

(assert (=> b!1299227 (= e!832947 (isEmpty!7727 (_2!7240 lt!427274)))))

(declare-fun b!1299228 () Bool)

(assert (=> b!1299228 (= e!832948 (isEmpty!7727 (_2!7240 (lex!792 thiss!19762 rules!2550 (print!729 thiss!19762 (singletonSeq!823 t1!34))))))))

(assert (= (and d!366817 res!581816) b!1299226))

(assert (= (and b!1299226 res!581817) b!1299227))

(assert (= (and d!366817 res!581815) b!1299228))

(declare-fun m!1450857 () Bool)

(assert (=> d!366817 m!1450857))

(declare-fun m!1450859 () Bool)

(assert (=> d!366817 m!1450859))

(declare-fun m!1450863 () Bool)

(assert (=> d!366817 m!1450863))

(declare-fun m!1450865 () Bool)

(assert (=> d!366817 m!1450865))

(assert (=> d!366817 m!1450859))

(assert (=> d!366817 m!1450863))

(assert (=> d!366817 m!1450581))

(assert (=> d!366817 m!1450859))

(declare-fun m!1450871 () Bool)

(assert (=> d!366817 m!1450871))

(declare-fun m!1450873 () Bool)

(assert (=> d!366817 m!1450873))

(declare-fun m!1450875 () Bool)

(assert (=> b!1299226 m!1450875))

(declare-fun m!1450877 () Bool)

(assert (=> b!1299227 m!1450877))

(assert (=> b!1299228 m!1450859))

(assert (=> b!1299228 m!1450859))

(assert (=> b!1299228 m!1450863))

(assert (=> b!1299228 m!1450863))

(assert (=> b!1299228 m!1450865))

(declare-fun m!1450879 () Bool)

(assert (=> b!1299228 m!1450879))

(assert (=> b!1298998 d!366817))

(declare-fun d!366847 () Bool)

(declare-fun lt!427280 () Bool)

(assert (=> d!366847 (= lt!427280 (set.member lt!427209 (content!1838 lt!427210)))))

(declare-fun e!832958 () Bool)

(assert (=> d!366847 (= lt!427280 e!832958)))

(declare-fun res!581827 () Bool)

(assert (=> d!366847 (=> (not res!581827) (not e!832958))))

(assert (=> d!366847 (= res!581827 (is-Cons!12996 lt!427210))))

(assert (=> d!366847 (= (contains!2178 lt!427210 lt!427209) lt!427280)))

(declare-fun b!1299237 () Bool)

(declare-fun e!832957 () Bool)

(assert (=> b!1299237 (= e!832958 e!832957)))

(declare-fun res!581826 () Bool)

(assert (=> b!1299237 (=> res!581826 e!832957)))

(assert (=> b!1299237 (= res!581826 (= (h!18397 lt!427210) lt!427209))))

(declare-fun b!1299238 () Bool)

(assert (=> b!1299238 (= e!832957 (contains!2178 (t!117537 lt!427210) lt!427209))))

(assert (= (and d!366847 res!581827) b!1299237))

(assert (= (and b!1299237 (not res!581826)) b!1299238))

(declare-fun m!1450891 () Bool)

(assert (=> d!366847 m!1450891))

(declare-fun m!1450893 () Bool)

(assert (=> d!366847 m!1450893))

(declare-fun m!1450895 () Bool)

(assert (=> b!1299238 m!1450895))

(assert (=> b!1299009 d!366847))

(declare-fun b!1299239 () Bool)

(declare-fun e!832960 () List!13062)

(assert (=> b!1299239 (= e!832960 (getSuffix!410 lt!427215 lt!427210))))

(declare-fun b!1299241 () Bool)

(declare-fun res!581829 () Bool)

(declare-fun e!832959 () Bool)

(assert (=> b!1299241 (=> (not res!581829) (not e!832959))))

(declare-fun lt!427281 () List!13062)

(assert (=> b!1299241 (= res!581829 (= (size!10630 lt!427281) (+ (size!10630 lt!427210) (size!10630 (getSuffix!410 lt!427215 lt!427210)))))))

(declare-fun b!1299240 () Bool)

(assert (=> b!1299240 (= e!832960 (Cons!12996 (h!18397 lt!427210) (++!3305 (t!117537 lt!427210) (getSuffix!410 lt!427215 lt!427210))))))

(declare-fun b!1299242 () Bool)

(assert (=> b!1299242 (= e!832959 (or (not (= (getSuffix!410 lt!427215 lt!427210) Nil!12996)) (= lt!427281 lt!427210)))))

(declare-fun d!366853 () Bool)

(assert (=> d!366853 e!832959))

(declare-fun res!581828 () Bool)

(assert (=> d!366853 (=> (not res!581828) (not e!832959))))

(assert (=> d!366853 (= res!581828 (= (content!1838 lt!427281) (set.union (content!1838 lt!427210) (content!1838 (getSuffix!410 lt!427215 lt!427210)))))))

(assert (=> d!366853 (= lt!427281 e!832960)))

(declare-fun c!213903 () Bool)

(assert (=> d!366853 (= c!213903 (is-Nil!12996 lt!427210))))

(assert (=> d!366853 (= (++!3305 lt!427210 (getSuffix!410 lt!427215 lt!427210)) lt!427281)))

(assert (= (and d!366853 c!213903) b!1299239))

(assert (= (and d!366853 (not c!213903)) b!1299240))

(assert (= (and d!366853 res!581828) b!1299241))

(assert (= (and b!1299241 res!581829) b!1299242))

(declare-fun m!1450897 () Bool)

(assert (=> b!1299241 m!1450897))

(declare-fun m!1450899 () Bool)

(assert (=> b!1299241 m!1450899))

(assert (=> b!1299241 m!1450605))

(declare-fun m!1450901 () Bool)

(assert (=> b!1299241 m!1450901))

(assert (=> b!1299240 m!1450605))

(declare-fun m!1450903 () Bool)

(assert (=> b!1299240 m!1450903))

(declare-fun m!1450905 () Bool)

(assert (=> d!366853 m!1450905))

(assert (=> d!366853 m!1450891))

(assert (=> d!366853 m!1450605))

(declare-fun m!1450907 () Bool)

(assert (=> d!366853 m!1450907))

(assert (=> b!1298999 d!366853))

(declare-fun d!366855 () Bool)

(declare-fun lt!427284 () List!13062)

(assert (=> d!366855 (= (++!3305 lt!427210 lt!427284) lt!427215)))

(declare-fun e!832963 () List!13062)

(assert (=> d!366855 (= lt!427284 e!832963)))

(declare-fun c!213906 () Bool)

(assert (=> d!366855 (= c!213906 (is-Cons!12996 lt!427210))))

(assert (=> d!366855 (>= (size!10630 lt!427215) (size!10630 lt!427210))))

(assert (=> d!366855 (= (getSuffix!410 lt!427215 lt!427210) lt!427284)))

(declare-fun b!1299247 () Bool)

(assert (=> b!1299247 (= e!832963 (getSuffix!410 (tail!1859 lt!427215) (t!117537 lt!427210)))))

(declare-fun b!1299248 () Bool)

(assert (=> b!1299248 (= e!832963 lt!427215)))

(assert (= (and d!366855 c!213906) b!1299247))

(assert (= (and d!366855 (not c!213906)) b!1299248))

(declare-fun m!1450909 () Bool)

(assert (=> d!366855 m!1450909))

(declare-fun m!1450911 () Bool)

(assert (=> d!366855 m!1450911))

(assert (=> d!366855 m!1450899))

(declare-fun m!1450913 () Bool)

(assert (=> b!1299247 m!1450913))

(assert (=> b!1299247 m!1450913))

(declare-fun m!1450915 () Bool)

(assert (=> b!1299247 m!1450915))

(assert (=> b!1298999 d!366855))

(declare-fun d!366857 () Bool)

(declare-fun lt!427287 () List!13062)

(declare-fun dynLambda!5694 (Int List!13062) Bool)

(assert (=> d!366857 (dynLambda!5694 lambda!51100 lt!427287)))

(declare-fun choose!7971 (Int) List!13062)

(assert (=> d!366857 (= lt!427287 (choose!7971 lambda!51100))))

(assert (=> d!366857 (Exists!712 lambda!51100)))

(assert (=> d!366857 (= (pickWitness!17 lambda!51100) lt!427287)))

(declare-fun b_lambda!37215 () Bool)

(assert (=> (not b_lambda!37215) (not d!366857)))

(declare-fun bs!329151 () Bool)

(assert (= bs!329151 d!366857))

(declare-fun m!1450917 () Bool)

(assert (=> bs!329151 m!1450917))

(declare-fun m!1450919 () Bool)

(assert (=> bs!329151 m!1450919))

(assert (=> bs!329151 m!1450615))

(assert (=> b!1298999 d!366857))

(declare-fun d!366859 () Bool)

(declare-fun lt!427288 () Bool)

(assert (=> d!366859 (= lt!427288 (set.member lt!427214 (content!1838 lt!427210)))))

(declare-fun e!832965 () Bool)

(assert (=> d!366859 (= lt!427288 e!832965)))

(declare-fun res!581831 () Bool)

(assert (=> d!366859 (=> (not res!581831) (not e!832965))))

(assert (=> d!366859 (= res!581831 (is-Cons!12996 lt!427210))))

(assert (=> d!366859 (= (contains!2178 lt!427210 lt!427214) lt!427288)))

(declare-fun b!1299249 () Bool)

(declare-fun e!832964 () Bool)

(assert (=> b!1299249 (= e!832965 e!832964)))

(declare-fun res!581830 () Bool)

(assert (=> b!1299249 (=> res!581830 e!832964)))

(assert (=> b!1299249 (= res!581830 (= (h!18397 lt!427210) lt!427214))))

(declare-fun b!1299250 () Bool)

(assert (=> b!1299250 (= e!832964 (contains!2178 (t!117537 lt!427210) lt!427214))))

(assert (= (and d!366859 res!581831) b!1299249))

(assert (= (and b!1299249 (not res!581830)) b!1299250))

(assert (=> d!366859 m!1450891))

(declare-fun m!1450921 () Bool)

(assert (=> d!366859 m!1450921))

(declare-fun m!1450923 () Bool)

(assert (=> b!1299250 m!1450923))

(assert (=> b!1299010 d!366859))

(declare-fun d!366861 () Bool)

(declare-fun lt!427289 () C!7398)

(assert (=> d!366861 (= lt!427289 (apply!2890 (list!4870 lt!427212) 0))))

(assert (=> d!366861 (= lt!427289 (apply!2891 (c!213873 lt!427212) 0))))

(declare-fun e!832966 () Bool)

(assert (=> d!366861 e!832966))

(declare-fun res!581832 () Bool)

(assert (=> d!366861 (=> (not res!581832) (not e!832966))))

(assert (=> d!366861 (= res!581832 (<= 0 0))))

(assert (=> d!366861 (= (apply!2888 lt!427212 0) lt!427289)))

(declare-fun b!1299251 () Bool)

(assert (=> b!1299251 (= e!832966 (< 0 (size!10627 lt!427212)))))

(assert (= (and d!366861 res!581832) b!1299251))

(assert (=> d!366861 m!1450623))

(assert (=> d!366861 m!1450623))

(declare-fun m!1450925 () Bool)

(assert (=> d!366861 m!1450925))

(declare-fun m!1450927 () Bool)

(assert (=> d!366861 m!1450927))

(declare-fun m!1450929 () Bool)

(assert (=> b!1299251 m!1450929))

(assert (=> b!1299010 d!366861))

(declare-fun d!366863 () Bool)

(declare-fun res!581835 () Bool)

(declare-fun e!832969 () Bool)

(assert (=> d!366863 (=> (not res!581835) (not e!832969))))

(declare-fun rulesValid!822 (LexerInterface!1935 List!13063) Bool)

(assert (=> d!366863 (= res!581835 (rulesValid!822 thiss!19762 rules!2550))))

(assert (=> d!366863 (= (rulesInvariant!1805 thiss!19762 rules!2550) e!832969)))

(declare-fun b!1299254 () Bool)

(declare-datatypes ((List!13069 0))(
  ( (Nil!13003) (Cons!13003 (h!18404 String!15888) (t!117574 List!13069)) )
))
(declare-fun noDuplicateTag!822 (LexerInterface!1935 List!13063 List!13069) Bool)

(assert (=> b!1299254 (= e!832969 (noDuplicateTag!822 thiss!19762 rules!2550 Nil!13003))))

(assert (= (and d!366863 res!581835) b!1299254))

(declare-fun m!1450931 () Bool)

(assert (=> d!366863 m!1450931))

(declare-fun m!1450933 () Bool)

(assert (=> b!1299254 m!1450933))

(assert (=> b!1299000 d!366863))

(declare-fun d!366865 () Bool)

(declare-fun prefixMatchZipperSequence!155 (Regex!3554 BalanceConc!8476) Bool)

(declare-fun ++!3307 (BalanceConc!8476 BalanceConc!8476) BalanceConc!8476)

(declare-fun singletonSeq!824 (C!7398) BalanceConc!8476)

(assert (=> d!366865 (= (separableTokensPredicate!218 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!155 (rulesRegex!125 thiss!19762 rules!2550) (++!3307 (charsOf!1212 t1!34) (singletonSeq!824 (apply!2888 (charsOf!1212 t2!34) 0))))))))

(declare-fun bs!329152 () Bool)

(assert (= bs!329152 d!366865))

(assert (=> bs!329152 m!1450625))

(declare-fun m!1450935 () Bool)

(assert (=> bs!329152 m!1450935))

(declare-fun m!1450937 () Bool)

(assert (=> bs!329152 m!1450937))

(assert (=> bs!329152 m!1450619))

(declare-fun m!1450939 () Bool)

(assert (=> bs!329152 m!1450939))

(assert (=> bs!329152 m!1450935))

(declare-fun m!1450941 () Bool)

(assert (=> bs!329152 m!1450941))

(assert (=> bs!329152 m!1450939))

(assert (=> bs!329152 m!1450613))

(assert (=> bs!329152 m!1450613))

(assert (=> bs!329152 m!1450941))

(assert (=> bs!329152 m!1450625))

(assert (=> bs!329152 m!1450619))

(assert (=> b!1298996 d!366865))

(declare-fun d!366867 () Bool)

(declare-fun res!581840 () Bool)

(declare-fun e!832972 () Bool)

(assert (=> d!366867 (=> (not res!581840) (not e!832972))))

(assert (=> d!366867 (= res!581840 (not (isEmpty!7726 (originalCharacters!3102 t1!34))))))

(assert (=> d!366867 (= (inv!17429 t1!34) e!832972)))

(declare-fun b!1299259 () Bool)

(declare-fun res!581841 () Bool)

(assert (=> b!1299259 (=> (not res!581841) (not e!832972))))

(assert (=> b!1299259 (= res!581841 (= (originalCharacters!3102 t1!34) (list!4870 (dynLambda!5693 (toChars!3310 (transformation!2240 (rule!3979 t1!34))) (value!73474 t1!34)))))))

(declare-fun b!1299260 () Bool)

(assert (=> b!1299260 (= e!832972 (= (size!10626 t1!34) (size!10630 (originalCharacters!3102 t1!34))))))

(assert (= (and d!366867 res!581840) b!1299259))

(assert (= (and b!1299259 res!581841) b!1299260))

(declare-fun b_lambda!37217 () Bool)

(assert (=> (not b_lambda!37217) (not b!1299259)))

(assert (=> b!1299259 t!117549))

(declare-fun b_and!86611 () Bool)

(assert (= b_and!86593 (and (=> t!117549 result!84342) b_and!86611)))

(assert (=> b!1299259 t!117551))

(declare-fun b_and!86613 () Bool)

(assert (= b_and!86595 (and (=> t!117551 result!84346) b_and!86613)))

(assert (=> b!1299259 t!117553))

(declare-fun b_and!86615 () Bool)

(assert (= b_and!86597 (and (=> t!117553 result!84348) b_and!86615)))

(declare-fun m!1450943 () Bool)

(assert (=> d!366867 m!1450943))

(assert (=> b!1299259 m!1450763))

(assert (=> b!1299259 m!1450763))

(declare-fun m!1450945 () Bool)

(assert (=> b!1299259 m!1450945))

(declare-fun m!1450947 () Bool)

(assert (=> b!1299260 m!1450947))

(assert (=> start!114644 d!366867))

(declare-fun d!366869 () Bool)

(declare-fun res!581842 () Bool)

(declare-fun e!832973 () Bool)

(assert (=> d!366869 (=> (not res!581842) (not e!832973))))

(assert (=> d!366869 (= res!581842 (not (isEmpty!7726 (originalCharacters!3102 t2!34))))))

(assert (=> d!366869 (= (inv!17429 t2!34) e!832973)))

(declare-fun b!1299261 () Bool)

(declare-fun res!581843 () Bool)

(assert (=> b!1299261 (=> (not res!581843) (not e!832973))))

(assert (=> b!1299261 (= res!581843 (= (originalCharacters!3102 t2!34) (list!4870 (dynLambda!5693 (toChars!3310 (transformation!2240 (rule!3979 t2!34))) (value!73474 t2!34)))))))

(declare-fun b!1299262 () Bool)

(assert (=> b!1299262 (= e!832973 (= (size!10626 t2!34) (size!10630 (originalCharacters!3102 t2!34))))))

(assert (= (and d!366869 res!581842) b!1299261))

(assert (= (and b!1299261 res!581843) b!1299262))

(declare-fun b_lambda!37219 () Bool)

(assert (=> (not b_lambda!37219) (not b!1299261)))

(declare-fun tb!69563 () Bool)

(declare-fun t!117562 () Bool)

(assert (=> (and b!1298995 (= (toChars!3310 (transformation!2240 (h!18398 rules!2550))) (toChars!3310 (transformation!2240 (rule!3979 t2!34)))) t!117562) tb!69563))

(declare-fun b!1299263 () Bool)

(declare-fun e!832974 () Bool)

(declare-fun tp!379064 () Bool)

(assert (=> b!1299263 (= e!832974 (and (inv!17432 (c!213873 (dynLambda!5693 (toChars!3310 (transformation!2240 (rule!3979 t2!34))) (value!73474 t2!34)))) tp!379064))))

(declare-fun result!84356 () Bool)

(assert (=> tb!69563 (= result!84356 (and (inv!17433 (dynLambda!5693 (toChars!3310 (transformation!2240 (rule!3979 t2!34))) (value!73474 t2!34))) e!832974))))

(assert (= tb!69563 b!1299263))

(declare-fun m!1450949 () Bool)

(assert (=> b!1299263 m!1450949))

(declare-fun m!1450951 () Bool)

(assert (=> tb!69563 m!1450951))

(assert (=> b!1299261 t!117562))

(declare-fun b_and!86617 () Bool)

(assert (= b_and!86611 (and (=> t!117562 result!84356) b_and!86617)))

(declare-fun t!117564 () Bool)

(declare-fun tb!69565 () Bool)

(assert (=> (and b!1298992 (= (toChars!3310 (transformation!2240 (rule!3979 t2!34))) (toChars!3310 (transformation!2240 (rule!3979 t2!34)))) t!117564) tb!69565))

(declare-fun result!84358 () Bool)

(assert (= result!84358 result!84356))

(assert (=> b!1299261 t!117564))

(declare-fun b_and!86619 () Bool)

(assert (= b_and!86613 (and (=> t!117564 result!84358) b_and!86619)))

(declare-fun tb!69567 () Bool)

(declare-fun t!117566 () Bool)

(assert (=> (and b!1299006 (= (toChars!3310 (transformation!2240 (rule!3979 t1!34))) (toChars!3310 (transformation!2240 (rule!3979 t2!34)))) t!117566) tb!69567))

(declare-fun result!84360 () Bool)

(assert (= result!84360 result!84356))

(assert (=> b!1299261 t!117566))

(declare-fun b_and!86621 () Bool)

(assert (= b_and!86615 (and (=> t!117566 result!84360) b_and!86621)))

(declare-fun m!1450953 () Bool)

(assert (=> d!366869 m!1450953))

(declare-fun m!1450955 () Bool)

(assert (=> b!1299261 m!1450955))

(assert (=> b!1299261 m!1450955))

(declare-fun m!1450957 () Bool)

(assert (=> b!1299261 m!1450957))

(declare-fun m!1450959 () Bool)

(assert (=> b!1299262 m!1450959))

(assert (=> start!114644 d!366869))

(declare-fun d!366871 () Bool)

(assert (=> d!366871 (= (inv!17425 (tag!2502 (rule!3979 t1!34))) (= (mod (str.len (value!73473 (tag!2502 (rule!3979 t1!34)))) 2) 0))))

(assert (=> b!1299007 d!366871))

(declare-fun d!366873 () Bool)

(declare-fun res!581844 () Bool)

(declare-fun e!832975 () Bool)

(assert (=> d!366873 (=> (not res!581844) (not e!832975))))

(assert (=> d!366873 (= res!581844 (semiInverseModEq!853 (toChars!3310 (transformation!2240 (rule!3979 t1!34))) (toValue!3451 (transformation!2240 (rule!3979 t1!34)))))))

(assert (=> d!366873 (= (inv!17428 (transformation!2240 (rule!3979 t1!34))) e!832975)))

(declare-fun b!1299264 () Bool)

(assert (=> b!1299264 (= e!832975 (equivClasses!812 (toChars!3310 (transformation!2240 (rule!3979 t1!34))) (toValue!3451 (transformation!2240 (rule!3979 t1!34)))))))

(assert (= (and d!366873 res!581844) b!1299264))

(declare-fun m!1450961 () Bool)

(assert (=> d!366873 m!1450961))

(declare-fun m!1450963 () Bool)

(assert (=> b!1299264 m!1450963))

(assert (=> b!1299007 d!366873))

(declare-fun d!366875 () Bool)

(declare-fun choose!7972 (Int) Bool)

(assert (=> d!366875 (= (Exists!712 lambda!51100) (choose!7972 lambda!51100))))

(declare-fun bs!329153 () Bool)

(assert (= bs!329153 d!366875))

(declare-fun m!1450965 () Bool)

(assert (=> bs!329153 m!1450965))

(assert (=> b!1299008 d!366875))

(declare-fun bs!329155 () Bool)

(declare-fun d!366877 () Bool)

(assert (= bs!329155 (and d!366877 b!1299008)))

(declare-fun lambda!51116 () Int)

(assert (=> bs!329155 (= lambda!51116 lambda!51100)))

(assert (=> d!366877 true))

(assert (=> d!366877 true))

(assert (=> d!366877 (Exists!712 lambda!51116)))

(declare-fun lt!427293 () Unit!19137)

(declare-fun choose!7973 (Regex!3554 List!13062) Unit!19137)

(assert (=> d!366877 (= lt!427293 (choose!7973 lt!427208 lt!427210))))

(assert (=> d!366877 (validRegex!1534 lt!427208)))

(assert (=> d!366877 (= (lemmaPrefixMatchThenExistsStringThatMatches!30 lt!427208 lt!427210) lt!427293)))

(declare-fun bs!329156 () Bool)

(assert (= bs!329156 d!366877))

(declare-fun m!1450979 () Bool)

(assert (=> bs!329156 m!1450979))

(declare-fun m!1450981 () Bool)

(assert (=> bs!329156 m!1450981))

(assert (=> bs!329156 m!1450579))

(assert (=> b!1299008 d!366877))

(declare-fun d!366883 () Bool)

(assert (=> d!366883 (= (inv!17425 (tag!2502 (rule!3979 t2!34))) (= (mod (str.len (value!73473 (tag!2502 (rule!3979 t2!34)))) 2) 0))))

(assert (=> b!1299003 d!366883))

(declare-fun d!366885 () Bool)

(declare-fun res!581851 () Bool)

(declare-fun e!832982 () Bool)

(assert (=> d!366885 (=> (not res!581851) (not e!832982))))

(assert (=> d!366885 (= res!581851 (semiInverseModEq!853 (toChars!3310 (transformation!2240 (rule!3979 t2!34))) (toValue!3451 (transformation!2240 (rule!3979 t2!34)))))))

(assert (=> d!366885 (= (inv!17428 (transformation!2240 (rule!3979 t2!34))) e!832982)))

(declare-fun b!1299271 () Bool)

(assert (=> b!1299271 (= e!832982 (equivClasses!812 (toChars!3310 (transformation!2240 (rule!3979 t2!34))) (toValue!3451 (transformation!2240 (rule!3979 t2!34)))))))

(assert (= (and d!366885 res!581851) b!1299271))

(declare-fun m!1450983 () Bool)

(assert (=> d!366885 m!1450983))

(declare-fun m!1450985 () Bool)

(assert (=> b!1299271 m!1450985))

(assert (=> b!1299003 d!366885))

(declare-fun bm!89047 () Bool)

(declare-fun call!89052 () Bool)

(declare-fun c!213911 () Bool)

(assert (=> bm!89047 (= call!89052 (validRegex!1534 (ite c!213911 (regOne!7621 lt!427208) (regOne!7620 lt!427208))))))

(declare-fun bm!89048 () Bool)

(declare-fun call!89053 () Bool)

(declare-fun call!89054 () Bool)

(assert (=> bm!89048 (= call!89053 call!89054)))

(declare-fun b!1299293 () Bool)

(declare-fun res!581866 () Bool)

(declare-fun e!833002 () Bool)

(assert (=> b!1299293 (=> res!581866 e!833002)))

(assert (=> b!1299293 (= res!581866 (not (is-Concat!5885 lt!427208)))))

(declare-fun e!833000 () Bool)

(assert (=> b!1299293 (= e!833000 e!833002)))

(declare-fun b!1299294 () Bool)

(declare-fun e!833001 () Bool)

(assert (=> b!1299294 (= e!833001 e!833000)))

(assert (=> b!1299294 (= c!213911 (is-Union!3554 lt!427208))))

(declare-fun b!1299295 () Bool)

(declare-fun e!833006 () Bool)

(assert (=> b!1299295 (= e!833001 e!833006)))

(declare-fun res!581865 () Bool)

(declare-fun nullable!1132 (Regex!3554) Bool)

(assert (=> b!1299295 (= res!581865 (not (nullable!1132 (reg!3883 lt!427208))))))

(assert (=> b!1299295 (=> (not res!581865) (not e!833006))))

(declare-fun b!1299296 () Bool)

(declare-fun e!833003 () Bool)

(assert (=> b!1299296 (= e!833002 e!833003)))

(declare-fun res!581867 () Bool)

(assert (=> b!1299296 (=> (not res!581867) (not e!833003))))

(assert (=> b!1299296 (= res!581867 call!89052)))

(declare-fun b!1299298 () Bool)

(declare-fun e!833005 () Bool)

(assert (=> b!1299298 (= e!833005 call!89053)))

(declare-fun b!1299299 () Bool)

(assert (=> b!1299299 (= e!833003 call!89053)))

(declare-fun b!1299300 () Bool)

(assert (=> b!1299300 (= e!833006 call!89054)))

(declare-fun bm!89049 () Bool)

(declare-fun c!213912 () Bool)

(assert (=> bm!89049 (= call!89054 (validRegex!1534 (ite c!213912 (reg!3883 lt!427208) (ite c!213911 (regTwo!7621 lt!427208) (regTwo!7620 lt!427208)))))))

(declare-fun b!1299301 () Bool)

(declare-fun e!833004 () Bool)

(assert (=> b!1299301 (= e!833004 e!833001)))

(assert (=> b!1299301 (= c!213912 (is-Star!3554 lt!427208))))

(declare-fun b!1299297 () Bool)

(declare-fun res!581868 () Bool)

(assert (=> b!1299297 (=> (not res!581868) (not e!833005))))

(assert (=> b!1299297 (= res!581868 call!89052)))

(assert (=> b!1299297 (= e!833000 e!833005)))

(declare-fun d!366887 () Bool)

(declare-fun res!581869 () Bool)

(assert (=> d!366887 (=> res!581869 e!833004)))

(assert (=> d!366887 (= res!581869 (is-ElementMatch!3554 lt!427208))))

(assert (=> d!366887 (= (validRegex!1534 lt!427208) e!833004)))

(assert (= (and d!366887 (not res!581869)) b!1299301))

(assert (= (and b!1299301 c!213912) b!1299295))

(assert (= (and b!1299301 (not c!213912)) b!1299294))

(assert (= (and b!1299295 res!581865) b!1299300))

(assert (= (and b!1299294 c!213911) b!1299297))

(assert (= (and b!1299294 (not c!213911)) b!1299293))

(assert (= (and b!1299297 res!581868) b!1299298))

(assert (= (and b!1299293 (not res!581866)) b!1299296))

(assert (= (and b!1299296 res!581867) b!1299299))

(assert (= (or b!1299297 b!1299296) bm!89047))

(assert (= (or b!1299298 b!1299299) bm!89048))

(assert (= (or b!1299300 bm!89048) bm!89049))

(declare-fun m!1450995 () Bool)

(assert (=> bm!89047 m!1450995))

(declare-fun m!1450997 () Bool)

(assert (=> b!1299295 m!1450997))

(declare-fun m!1450999 () Bool)

(assert (=> bm!89049 m!1450999))

(assert (=> b!1299014 d!366887))

(declare-fun b!1299302 () Bool)

(declare-fun e!833008 () Bool)

(assert (=> b!1299302 (= e!833008 (inv!15 (value!73474 t1!34)))))

(declare-fun b!1299303 () Bool)

(declare-fun res!581870 () Bool)

(assert (=> b!1299303 (=> res!581870 e!833008)))

(assert (=> b!1299303 (= res!581870 (not (is-IntegerValue!6992 (value!73474 t1!34))))))

(declare-fun e!833009 () Bool)

(assert (=> b!1299303 (= e!833009 e!833008)))

(declare-fun b!1299304 () Bool)

(declare-fun e!833007 () Bool)

(assert (=> b!1299304 (= e!833007 e!833009)))

(declare-fun c!213914 () Bool)

(assert (=> b!1299304 (= c!213914 (is-IntegerValue!6991 (value!73474 t1!34)))))

(declare-fun b!1299305 () Bool)

(assert (=> b!1299305 (= e!833009 (inv!17 (value!73474 t1!34)))))

(declare-fun d!366895 () Bool)

(declare-fun c!213913 () Bool)

(assert (=> d!366895 (= c!213913 (is-IntegerValue!6990 (value!73474 t1!34)))))

(assert (=> d!366895 (= (inv!21 (value!73474 t1!34)) e!833007)))

(declare-fun b!1299306 () Bool)

(assert (=> b!1299306 (= e!833007 (inv!16 (value!73474 t1!34)))))

(assert (= (and d!366895 c!213913) b!1299306))

(assert (= (and d!366895 (not c!213913)) b!1299304))

(assert (= (and b!1299304 c!213914) b!1299305))

(assert (= (and b!1299304 (not c!213914)) b!1299303))

(assert (= (and b!1299303 (not res!581870)) b!1299302))

(declare-fun m!1451001 () Bool)

(assert (=> b!1299302 m!1451001))

(declare-fun m!1451003 () Bool)

(assert (=> b!1299305 m!1451003))

(declare-fun m!1451005 () Bool)

(assert (=> b!1299306 m!1451005))

(assert (=> b!1298993 d!366895))

(declare-fun d!366897 () Bool)

(declare-fun lt!427296 () Bool)

(declare-fun e!833011 () Bool)

(assert (=> d!366897 (= lt!427296 e!833011)))

(declare-fun res!581871 () Bool)

(assert (=> d!366897 (=> (not res!581871) (not e!833011))))

(assert (=> d!366897 (= res!581871 (= (list!4873 (_1!7240 (lex!792 thiss!19762 rules!2550 (print!729 thiss!19762 (singletonSeq!823 t2!34))))) (list!4873 (singletonSeq!823 t2!34))))))

(declare-fun e!833010 () Bool)

(assert (=> d!366897 (= lt!427296 e!833010)))

(declare-fun res!581872 () Bool)

(assert (=> d!366897 (=> (not res!581872) (not e!833010))))

(declare-fun lt!427295 () tuple2!12708)

(assert (=> d!366897 (= res!581872 (= (size!10631 (_1!7240 lt!427295)) 1))))

(assert (=> d!366897 (= lt!427295 (lex!792 thiss!19762 rules!2550 (print!729 thiss!19762 (singletonSeq!823 t2!34))))))

(assert (=> d!366897 (not (isEmpty!7724 rules!2550))))

(assert (=> d!366897 (= (rulesProduceIndividualToken!904 thiss!19762 rules!2550 t2!34) lt!427296)))

(declare-fun b!1299307 () Bool)

(declare-fun res!581873 () Bool)

(assert (=> b!1299307 (=> (not res!581873) (not e!833010))))

(assert (=> b!1299307 (= res!581873 (= (apply!2892 (_1!7240 lt!427295) 0) t2!34))))

(declare-fun b!1299308 () Bool)

(assert (=> b!1299308 (= e!833010 (isEmpty!7727 (_2!7240 lt!427295)))))

(declare-fun b!1299309 () Bool)

(assert (=> b!1299309 (= e!833011 (isEmpty!7727 (_2!7240 (lex!792 thiss!19762 rules!2550 (print!729 thiss!19762 (singletonSeq!823 t2!34))))))))

(assert (= (and d!366897 res!581872) b!1299307))

(assert (= (and b!1299307 res!581873) b!1299308))

(assert (= (and d!366897 res!581871) b!1299309))

(declare-fun m!1451007 () Bool)

(assert (=> d!366897 m!1451007))

(declare-fun m!1451009 () Bool)

(assert (=> d!366897 m!1451009))

(declare-fun m!1451011 () Bool)

(assert (=> d!366897 m!1451011))

(declare-fun m!1451013 () Bool)

(assert (=> d!366897 m!1451013))

(assert (=> d!366897 m!1451009))

(assert (=> d!366897 m!1451011))

(assert (=> d!366897 m!1450581))

(assert (=> d!366897 m!1451009))

(declare-fun m!1451015 () Bool)

(assert (=> d!366897 m!1451015))

(declare-fun m!1451017 () Bool)

(assert (=> d!366897 m!1451017))

(declare-fun m!1451019 () Bool)

(assert (=> b!1299307 m!1451019))

(declare-fun m!1451021 () Bool)

(assert (=> b!1299308 m!1451021))

(assert (=> b!1299309 m!1451009))

(assert (=> b!1299309 m!1451009))

(assert (=> b!1299309 m!1451011))

(assert (=> b!1299309 m!1451011))

(assert (=> b!1299309 m!1451013))

(declare-fun m!1451023 () Bool)

(assert (=> b!1299309 m!1451023))

(assert (=> b!1299004 d!366897))

(declare-fun d!366899 () Bool)

(declare-fun lt!427297 () Bool)

(assert (=> d!366899 (= lt!427297 (set.member lt!427209 (content!1838 lt!427215)))))

(declare-fun e!833013 () Bool)

(assert (=> d!366899 (= lt!427297 e!833013)))

(declare-fun res!581875 () Bool)

(assert (=> d!366899 (=> (not res!581875) (not e!833013))))

(assert (=> d!366899 (= res!581875 (is-Cons!12996 lt!427215))))

(assert (=> d!366899 (= (contains!2178 lt!427215 lt!427209) lt!427297)))

(declare-fun b!1299310 () Bool)

(declare-fun e!833012 () Bool)

(assert (=> b!1299310 (= e!833013 e!833012)))

(declare-fun res!581874 () Bool)

(assert (=> b!1299310 (=> res!581874 e!833012)))

(assert (=> b!1299310 (= res!581874 (= (h!18397 lt!427215) lt!427209))))

(declare-fun b!1299311 () Bool)

(assert (=> b!1299311 (= e!833012 (contains!2178 (t!117537 lt!427215) lt!427209))))

(assert (= (and d!366899 res!581875) b!1299310))

(assert (= (and b!1299310 (not res!581874)) b!1299311))

(declare-fun m!1451025 () Bool)

(assert (=> d!366899 m!1451025))

(declare-fun m!1451027 () Bool)

(assert (=> d!366899 m!1451027))

(declare-fun m!1451029 () Bool)

(assert (=> b!1299311 m!1451029))

(assert (=> b!1299015 d!366899))

(declare-fun d!366901 () Bool)

(declare-fun lt!427298 () Bool)

(assert (=> d!366901 (= lt!427298 (set.member lt!427214 (content!1838 lt!427215)))))

(declare-fun e!833015 () Bool)

(assert (=> d!366901 (= lt!427298 e!833015)))

(declare-fun res!581877 () Bool)

(assert (=> d!366901 (=> (not res!581877) (not e!833015))))

(assert (=> d!366901 (= res!581877 (is-Cons!12996 lt!427215))))

(assert (=> d!366901 (= (contains!2178 lt!427215 lt!427214) lt!427298)))

(declare-fun b!1299312 () Bool)

(declare-fun e!833014 () Bool)

(assert (=> b!1299312 (= e!833015 e!833014)))

(declare-fun res!581876 () Bool)

(assert (=> b!1299312 (=> res!581876 e!833014)))

(assert (=> b!1299312 (= res!581876 (= (h!18397 lt!427215) lt!427214))))

(declare-fun b!1299313 () Bool)

(assert (=> b!1299313 (= e!833014 (contains!2178 (t!117537 lt!427215) lt!427214))))

(assert (= (and d!366901 res!581877) b!1299312))

(assert (= (and b!1299312 (not res!581876)) b!1299313))

(assert (=> d!366901 m!1451025))

(declare-fun m!1451031 () Bool)

(assert (=> d!366901 m!1451031))

(declare-fun m!1451033 () Bool)

(assert (=> b!1299313 m!1451033))

(assert (=> b!1298994 d!366901))

(declare-fun d!366903 () Bool)

(assert (=> d!366903 (= (isEmpty!7724 rules!2550) (is-Nil!12997 rules!2550))))

(assert (=> b!1299005 d!366903))

(declare-fun d!366905 () Bool)

(declare-fun lt!427301 () Int)

(assert (=> d!366905 (= lt!427301 (size!10630 (list!4870 lt!427207)))))

(declare-fun size!10633 (Conc!4268) Int)

(assert (=> d!366905 (= lt!427301 (size!10633 (c!213873 lt!427207)))))

(assert (=> d!366905 (= (size!10627 lt!427207) lt!427301)))

(declare-fun bs!329157 () Bool)

(assert (= bs!329157 d!366905))

(assert (=> bs!329157 m!1450743))

(assert (=> bs!329157 m!1450743))

(declare-fun m!1451035 () Bool)

(assert (=> bs!329157 m!1451035))

(declare-fun m!1451037 () Bool)

(assert (=> bs!329157 m!1451037))

(assert (=> b!1299016 d!366905))

(declare-fun d!366907 () Bool)

(declare-fun lt!427302 () BalanceConc!8476)

(assert (=> d!366907 (= (list!4870 lt!427302) (originalCharacters!3102 t2!34))))

(assert (=> d!366907 (= lt!427302 (dynLambda!5693 (toChars!3310 (transformation!2240 (rule!3979 t2!34))) (value!73474 t2!34)))))

(assert (=> d!366907 (= (charsOf!1212 t2!34) lt!427302)))

(declare-fun b_lambda!37221 () Bool)

(assert (=> (not b_lambda!37221) (not d!366907)))

(assert (=> d!366907 t!117562))

(declare-fun b_and!86623 () Bool)

(assert (= b_and!86617 (and (=> t!117562 result!84356) b_and!86623)))

(assert (=> d!366907 t!117564))

(declare-fun b_and!86625 () Bool)

(assert (= b_and!86619 (and (=> t!117564 result!84358) b_and!86625)))

(assert (=> d!366907 t!117566))

(declare-fun b_and!86627 () Bool)

(assert (= b_and!86621 (and (=> t!117566 result!84360) b_and!86627)))

(declare-fun m!1451039 () Bool)

(assert (=> d!366907 m!1451039))

(assert (=> d!366907 m!1450955))

(assert (=> b!1299016 d!366907))

(declare-fun b!1299324 () Bool)

(declare-fun b_free!30831 () Bool)

(declare-fun b_next!31535 () Bool)

(assert (=> b!1299324 (= b_free!30831 (not b_next!31535))))

(declare-fun tp!379076 () Bool)

(declare-fun b_and!86629 () Bool)

(assert (=> b!1299324 (= tp!379076 b_and!86629)))

(declare-fun b_free!30833 () Bool)

(declare-fun b_next!31537 () Bool)

(assert (=> b!1299324 (= b_free!30833 (not b_next!31537))))

(declare-fun tb!69569 () Bool)

(declare-fun t!117568 () Bool)

(assert (=> (and b!1299324 (= (toChars!3310 (transformation!2240 (h!18398 (t!117538 rules!2550)))) (toChars!3310 (transformation!2240 (rule!3979 t1!34)))) t!117568) tb!69569))

(declare-fun result!84364 () Bool)

(assert (= result!84364 result!84342))

(assert (=> d!366807 t!117568))

(assert (=> b!1299259 t!117568))

(declare-fun t!117570 () Bool)

(declare-fun tb!69571 () Bool)

(assert (=> (and b!1299324 (= (toChars!3310 (transformation!2240 (h!18398 (t!117538 rules!2550)))) (toChars!3310 (transformation!2240 (rule!3979 t2!34)))) t!117570) tb!69571))

(declare-fun result!84366 () Bool)

(assert (= result!84366 result!84356))

(assert (=> b!1299261 t!117570))

(assert (=> d!366907 t!117570))

(declare-fun tp!379075 () Bool)

(declare-fun b_and!86631 () Bool)

(assert (=> b!1299324 (= tp!379075 (and (=> t!117568 result!84364) (=> t!117570 result!84366) b_and!86631))))

(declare-fun e!833027 () Bool)

(assert (=> b!1299324 (= e!833027 (and tp!379076 tp!379075))))

(declare-fun tp!379074 () Bool)

(declare-fun e!833024 () Bool)

(declare-fun b!1299323 () Bool)

(assert (=> b!1299323 (= e!833024 (and tp!379074 (inv!17425 (tag!2502 (h!18398 (t!117538 rules!2550)))) (inv!17428 (transformation!2240 (h!18398 (t!117538 rules!2550)))) e!833027))))

(declare-fun b!1299322 () Bool)

(declare-fun e!833026 () Bool)

(declare-fun tp!379073 () Bool)

(assert (=> b!1299322 (= e!833026 (and e!833024 tp!379073))))

(assert (=> b!1299011 (= tp!379016 e!833026)))

(assert (= b!1299323 b!1299324))

(assert (= b!1299322 b!1299323))

(assert (= (and b!1299011 (is-Cons!12997 (t!117538 rules!2550))) b!1299322))

(declare-fun m!1451041 () Bool)

(assert (=> b!1299323 m!1451041))

(declare-fun m!1451043 () Bool)

(assert (=> b!1299323 m!1451043))

(declare-fun b!1299337 () Bool)

(declare-fun e!833030 () Bool)

(declare-fun tp!379088 () Bool)

(assert (=> b!1299337 (= e!833030 tp!379088)))

(declare-fun b!1299336 () Bool)

(declare-fun tp!379091 () Bool)

(declare-fun tp!379087 () Bool)

(assert (=> b!1299336 (= e!833030 (and tp!379091 tp!379087))))

(declare-fun b!1299335 () Bool)

(declare-fun tp_is_empty!6589 () Bool)

(assert (=> b!1299335 (= e!833030 tp_is_empty!6589)))

(assert (=> b!1299001 (= tp!379014 e!833030)))

(declare-fun b!1299338 () Bool)

(declare-fun tp!379090 () Bool)

(declare-fun tp!379089 () Bool)

(assert (=> b!1299338 (= e!833030 (and tp!379090 tp!379089))))

(assert (= (and b!1299001 (is-ElementMatch!3554 (regex!2240 (h!18398 rules!2550)))) b!1299335))

(assert (= (and b!1299001 (is-Concat!5885 (regex!2240 (h!18398 rules!2550)))) b!1299336))

(assert (= (and b!1299001 (is-Star!3554 (regex!2240 (h!18398 rules!2550)))) b!1299337))

(assert (= (and b!1299001 (is-Union!3554 (regex!2240 (h!18398 rules!2550)))) b!1299338))

(declare-fun b!1299343 () Bool)

(declare-fun e!833033 () Bool)

(declare-fun tp!379094 () Bool)

(assert (=> b!1299343 (= e!833033 (and tp_is_empty!6589 tp!379094))))

(assert (=> b!1299012 (= tp!379020 e!833033)))

(assert (= (and b!1299012 (is-Cons!12996 (originalCharacters!3102 t2!34))) b!1299343))

(declare-fun b!1299346 () Bool)

(declare-fun e!833034 () Bool)

(declare-fun tp!379096 () Bool)

(assert (=> b!1299346 (= e!833034 tp!379096)))

(declare-fun b!1299345 () Bool)

(declare-fun tp!379099 () Bool)

(declare-fun tp!379095 () Bool)

(assert (=> b!1299345 (= e!833034 (and tp!379099 tp!379095))))

(declare-fun b!1299344 () Bool)

(assert (=> b!1299344 (= e!833034 tp_is_empty!6589)))

(assert (=> b!1299007 (= tp!379012 e!833034)))

(declare-fun b!1299347 () Bool)

(declare-fun tp!379098 () Bool)

(declare-fun tp!379097 () Bool)

(assert (=> b!1299347 (= e!833034 (and tp!379098 tp!379097))))

(assert (= (and b!1299007 (is-ElementMatch!3554 (regex!2240 (rule!3979 t1!34)))) b!1299344))

(assert (= (and b!1299007 (is-Concat!5885 (regex!2240 (rule!3979 t1!34)))) b!1299345))

(assert (= (and b!1299007 (is-Star!3554 (regex!2240 (rule!3979 t1!34)))) b!1299346))

(assert (= (and b!1299007 (is-Union!3554 (regex!2240 (rule!3979 t1!34)))) b!1299347))

(declare-fun b!1299350 () Bool)

(declare-fun e!833035 () Bool)

(declare-fun tp!379101 () Bool)

(assert (=> b!1299350 (= e!833035 tp!379101)))

(declare-fun b!1299349 () Bool)

(declare-fun tp!379104 () Bool)

(declare-fun tp!379100 () Bool)

(assert (=> b!1299349 (= e!833035 (and tp!379104 tp!379100))))

(declare-fun b!1299348 () Bool)

(assert (=> b!1299348 (= e!833035 tp_is_empty!6589)))

(assert (=> b!1299003 (= tp!379015 e!833035)))

(declare-fun b!1299351 () Bool)

(declare-fun tp!379103 () Bool)

(declare-fun tp!379102 () Bool)

(assert (=> b!1299351 (= e!833035 (and tp!379103 tp!379102))))

(assert (= (and b!1299003 (is-ElementMatch!3554 (regex!2240 (rule!3979 t2!34)))) b!1299348))

(assert (= (and b!1299003 (is-Concat!5885 (regex!2240 (rule!3979 t2!34)))) b!1299349))

(assert (= (and b!1299003 (is-Star!3554 (regex!2240 (rule!3979 t2!34)))) b!1299350))

(assert (= (and b!1299003 (is-Union!3554 (regex!2240 (rule!3979 t2!34)))) b!1299351))

(declare-fun b!1299352 () Bool)

(declare-fun e!833036 () Bool)

(declare-fun tp!379105 () Bool)

(assert (=> b!1299352 (= e!833036 (and tp_is_empty!6589 tp!379105))))

(assert (=> b!1298993 (= tp!379011 e!833036)))

(assert (= (and b!1298993 (is-Cons!12996 (originalCharacters!3102 t1!34))) b!1299352))

(declare-fun b_lambda!37223 () Bool)

(assert (= b_lambda!37217 (or (and b!1298995 b_free!30809 (= (toChars!3310 (transformation!2240 (h!18398 rules!2550))) (toChars!3310 (transformation!2240 (rule!3979 t1!34))))) (and b!1298992 b_free!30813 (= (toChars!3310 (transformation!2240 (rule!3979 t2!34))) (toChars!3310 (transformation!2240 (rule!3979 t1!34))))) (and b!1299006 b_free!30817) (and b!1299324 b_free!30833 (= (toChars!3310 (transformation!2240 (h!18398 (t!117538 rules!2550)))) (toChars!3310 (transformation!2240 (rule!3979 t1!34))))) b_lambda!37223)))

(declare-fun b_lambda!37225 () Bool)

(assert (= b_lambda!37219 (or (and b!1298995 b_free!30809 (= (toChars!3310 (transformation!2240 (h!18398 rules!2550))) (toChars!3310 (transformation!2240 (rule!3979 t2!34))))) (and b!1298992 b_free!30813) (and b!1299006 b_free!30817 (= (toChars!3310 (transformation!2240 (rule!3979 t1!34))) (toChars!3310 (transformation!2240 (rule!3979 t2!34))))) (and b!1299324 b_free!30833 (= (toChars!3310 (transformation!2240 (h!18398 (t!117538 rules!2550)))) (toChars!3310 (transformation!2240 (rule!3979 t2!34))))) b_lambda!37225)))

(declare-fun b_lambda!37227 () Bool)

(assert (= b_lambda!37221 (or (and b!1298995 b_free!30809 (= (toChars!3310 (transformation!2240 (h!18398 rules!2550))) (toChars!3310 (transformation!2240 (rule!3979 t2!34))))) (and b!1298992 b_free!30813) (and b!1299006 b_free!30817 (= (toChars!3310 (transformation!2240 (rule!3979 t1!34))) (toChars!3310 (transformation!2240 (rule!3979 t2!34))))) (and b!1299324 b_free!30833 (= (toChars!3310 (transformation!2240 (h!18398 (t!117538 rules!2550)))) (toChars!3310 (transformation!2240 (rule!3979 t2!34))))) b_lambda!37227)))

(declare-fun b_lambda!37229 () Bool)

(assert (= b_lambda!37209 (or (and b!1298995 b_free!30809 (= (toChars!3310 (transformation!2240 (h!18398 rules!2550))) (toChars!3310 (transformation!2240 (rule!3979 t1!34))))) (and b!1298992 b_free!30813 (= (toChars!3310 (transformation!2240 (rule!3979 t2!34))) (toChars!3310 (transformation!2240 (rule!3979 t1!34))))) (and b!1299006 b_free!30817) (and b!1299324 b_free!30833 (= (toChars!3310 (transformation!2240 (h!18398 (t!117538 rules!2550)))) (toChars!3310 (transformation!2240 (rule!3979 t1!34))))) b_lambda!37229)))

(declare-fun b_lambda!37231 () Bool)

(assert (= b_lambda!37215 (or b!1299008 b_lambda!37231)))

(declare-fun bs!329158 () Bool)

(declare-fun d!366909 () Bool)

(assert (= bs!329158 (and d!366909 b!1299008)))

(declare-fun res!581878 () Bool)

(declare-fun e!833037 () Bool)

(assert (=> bs!329158 (=> (not res!581878) (not e!833037))))

(declare-fun matchR!1556 (Regex!3554 List!13062) Bool)

(assert (=> bs!329158 (= res!581878 (matchR!1556 lt!427208 lt!427287))))

(assert (=> bs!329158 (= (dynLambda!5694 lambda!51100 lt!427287) e!833037)))

(declare-fun b!1299353 () Bool)

(declare-fun isPrefix!1059 (List!13062 List!13062) Bool)

(assert (=> b!1299353 (= e!833037 (isPrefix!1059 lt!427210 lt!427287))))

(assert (= (and bs!329158 res!581878) b!1299353))

(declare-fun m!1451045 () Bool)

(assert (=> bs!329158 m!1451045))

(declare-fun m!1451047 () Bool)

(assert (=> b!1299353 m!1451047))

(assert (=> d!366857 d!366909))

(push 1)

(assert (not d!366813))

(assert (not d!366905))

(assert (not b!1299305))

(assert (not b!1299226))

(assert (not b!1299338))

(assert (not d!366859))

(assert b_and!86567)

(assert (not b!1299260))

(assert (not d!366795))

(assert (not b_lambda!37229))

(assert (not bm!89049))

(assert (not b!1299343))

(assert b_and!86629)

(assert (not b!1299154))

(assert (not b!1299240))

(assert (not b!1299134))

(assert (not b!1299228))

(assert tp_is_empty!6589)

(assert (not b!1299241))

(assert (not d!366873))

(assert (not d!366901))

(assert (not b!1299308))

(assert (not d!366855))

(assert (not b!1299347))

(assert (not b!1299140))

(assert (not b!1299346))

(assert (not b!1299349))

(assert (not b!1299313))

(assert (not d!366853))

(assert (not tb!69563))

(assert (not b!1299351))

(assert (not d!366801))

(assert (not d!366863))

(assert (not b!1299250))

(assert (not b!1299119))

(assert (not b!1299336))

(assert (not b_next!31511))

(assert (not b!1299163))

(assert (not b!1299261))

(assert (not d!366877))

(assert (not b!1299302))

(assert (not b!1299311))

(assert (not b!1299227))

(assert (not bm!89047))

(assert (not d!366811))

(assert (not d!366861))

(assert (not b!1299352))

(assert (not b!1299122))

(assert (not b!1299259))

(assert (not b!1299238))

(assert (not d!366799))

(assert (not b!1299307))

(assert (not b!1299141))

(assert (not b!1299309))

(assert (not b!1299262))

(assert (not b_next!31519))

(assert (not bs!329158))

(assert b_and!86625)

(assert (not b!1299322))

(assert (not b_next!31513))

(assert (not d!366807))

(assert b_and!86623)

(assert (not b!1299133))

(assert (not b_next!31537))

(assert b_and!86627)

(assert (not b!1299350))

(assert (not b!1299108))

(assert (not b_next!31535))

(assert (not d!366899))

(assert (not b!1299323))

(assert (not d!366805))

(assert (not d!366865))

(assert (not b!1299254))

(assert (not b!1299271))

(assert (not b_next!31521))

(assert (not d!366847))

(assert (not b_lambda!37227))

(assert (not b!1299264))

(assert (not d!366875))

(assert (not b!1299353))

(assert (not b!1299247))

(assert (not tb!69551))

(assert (not d!366857))

(assert (not b_lambda!37225))

(assert (not b_next!31517))

(assert (not b!1299251))

(assert (not b!1299164))

(assert (not b!1299123))

(assert b_and!86571)

(assert b_and!86563)

(assert (not b_next!31515))

(assert (not b!1299263))

(assert (not d!366885))

(assert b_and!86631)

(assert (not d!366867))

(assert (not b_lambda!37223))

(assert (not b!1299306))

(assert (not b!1299345))

(assert (not d!366907))

(assert (not b!1299337))

(assert (not b!1299148))

(assert (not b!1299295))

(assert (not d!366897))

(assert (not d!366817))

(assert (not b_lambda!37231))

(assert (not d!366869))

(check-sat)

(pop 1)

(push 1)

(assert b_and!86567)

(assert b_and!86629)

(assert (not b_next!31511))

(assert (not b_next!31519))

(assert (not b_next!31535))

(assert (not b_next!31521))

(assert (not b_next!31517))

(assert b_and!86631)

(assert b_and!86625)

(assert (not b_next!31513))

(assert b_and!86623)

(assert (not b_next!31537))

(assert b_and!86627)

(assert (not b_next!31515))

(assert b_and!86571)

(assert b_and!86563)

(check-sat)

(pop 1)

