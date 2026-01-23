; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48592 () Bool)

(assert start!48592)

(declare-fun b!529542 () Bool)

(declare-fun b_free!14137 () Bool)

(declare-fun b_next!14153 () Bool)

(assert (=> b!529542 (= b_free!14137 (not b_next!14153))))

(declare-fun tp!168549 () Bool)

(declare-fun b_and!51651 () Bool)

(assert (=> b!529542 (= tp!168549 b_and!51651)))

(declare-fun b_free!14139 () Bool)

(declare-fun b_next!14155 () Bool)

(assert (=> b!529542 (= b_free!14139 (not b_next!14155))))

(declare-fun tp!168553 () Bool)

(declare-fun b_and!51653 () Bool)

(assert (=> b!529542 (= tp!168553 b_and!51653)))

(declare-fun b!529552 () Bool)

(declare-fun b_free!14141 () Bool)

(declare-fun b_next!14157 () Bool)

(assert (=> b!529552 (= b_free!14141 (not b_next!14157))))

(declare-fun tp!168552 () Bool)

(declare-fun b_and!51655 () Bool)

(assert (=> b!529552 (= tp!168552 b_and!51655)))

(declare-fun b_free!14143 () Bool)

(declare-fun b_next!14159 () Bool)

(assert (=> b!529552 (= b_free!14143 (not b_next!14159))))

(declare-fun tp!168554 () Bool)

(declare-fun b_and!51657 () Bool)

(assert (=> b!529552 (= tp!168554 b_and!51657)))

(declare-fun res!223575 () Bool)

(declare-fun e!318592 () Bool)

(assert (=> start!48592 (=> (not res!223575) (not e!318592))))

(declare-datatypes ((LexerInterface!785 0))(
  ( (LexerInterfaceExt!782 (__x!3744 Int)) (Lexer!783) )
))
(declare-fun thiss!22590 () LexerInterface!785)

(get-info :version)

(assert (=> start!48592 (= res!223575 ((_ is Lexer!783) thiss!22590))))

(assert (=> start!48592 e!318592))

(declare-fun e!318593 () Bool)

(assert (=> start!48592 e!318593))

(declare-fun e!318598 () Bool)

(assert (=> start!48592 e!318598))

(declare-datatypes ((C!3388 0))(
  ( (C!3389 (val!1920 Int)) )
))
(declare-datatypes ((Regex!1233 0))(
  ( (ElementMatch!1233 (c!101278 C!3388)) (Concat!2156 (regOne!2978 Regex!1233) (regTwo!2978 Regex!1233)) (EmptyExpr!1233) (Star!1233 (reg!1562 Regex!1233)) (EmptyLang!1233) (Union!1233 (regOne!2979 Regex!1233) (regTwo!2979 Regex!1233)) )
))
(declare-datatypes ((List!5015 0))(
  ( (Nil!5005) (Cons!5005 (h!10406 (_ BitVec 16)) (t!73654 List!5015)) )
))
(declare-datatypes ((TokenValue!923 0))(
  ( (FloatLiteralValue!1846 (text!6906 List!5015)) (TokenValueExt!922 (__x!3745 Int)) (Broken!4615 (value!30462 List!5015)) (Object!932) (End!923) (Def!923) (Underscore!923) (Match!923) (Else!923) (Error!923) (Case!923) (If!923) (Extends!923) (Abstract!923) (Class!923) (Val!923) (DelimiterValue!1846 (del!983 List!5015)) (KeywordValue!929 (value!30463 List!5015)) (CommentValue!1846 (value!30464 List!5015)) (WhitespaceValue!1846 (value!30465 List!5015)) (IndentationValue!923 (value!30466 List!5015)) (String!6358) (Int32!923) (Broken!4616 (value!30467 List!5015)) (Boolean!924) (Unit!8818) (OperatorValue!926 (op!983 List!5015)) (IdentifierValue!1846 (value!30468 List!5015)) (IdentifierValue!1847 (value!30469 List!5015)) (WhitespaceValue!1847 (value!30470 List!5015)) (True!1846) (False!1846) (Broken!4617 (value!30471 List!5015)) (Broken!4618 (value!30472 List!5015)) (True!1847) (RightBrace!923) (RightBracket!923) (Colon!923) (Null!923) (Comma!923) (LeftBracket!923) (False!1847) (LeftBrace!923) (ImaginaryLiteralValue!923 (text!6907 List!5015)) (StringLiteralValue!2769 (value!30473 List!5015)) (EOFValue!923 (value!30474 List!5015)) (IdentValue!923 (value!30475 List!5015)) (DelimiterValue!1847 (value!30476 List!5015)) (DedentValue!923 (value!30477 List!5015)) (NewLineValue!923 (value!30478 List!5015)) (IntegerValue!2769 (value!30479 (_ BitVec 32)) (text!6908 List!5015)) (IntegerValue!2770 (value!30480 Int) (text!6909 List!5015)) (Times!923) (Or!923) (Equal!923) (Minus!923) (Broken!4619 (value!30481 List!5015)) (And!923) (Div!923) (LessEqual!923) (Mod!923) (Concat!2157) (Not!923) (Plus!923) (SpaceValue!923 (value!30482 List!5015)) (IntegerValue!2771 (value!30483 Int) (text!6910 List!5015)) (StringLiteralValue!2770 (text!6911 List!5015)) (FloatLiteralValue!1847 (text!6912 List!5015)) (BytesLiteralValue!923 (value!30484 List!5015)) (CommentValue!1847 (value!30485 List!5015)) (StringLiteralValue!2771 (value!30486 List!5015)) (ErrorTokenValue!923 (msg!984 List!5015)) )
))
(declare-datatypes ((String!6359 0))(
  ( (String!6360 (value!30487 String)) )
))
(declare-datatypes ((List!5016 0))(
  ( (Nil!5006) (Cons!5006 (h!10407 C!3388) (t!73655 List!5016)) )
))
(declare-datatypes ((IArray!3233 0))(
  ( (IArray!3234 (innerList!1674 List!5016)) )
))
(declare-datatypes ((Conc!1616 0))(
  ( (Node!1616 (left!4242 Conc!1616) (right!4572 Conc!1616) (csize!3462 Int) (cheight!1827 Int)) (Leaf!2573 (xs!4253 IArray!3233) (csize!3463 Int)) (Empty!1616) )
))
(declare-datatypes ((BalanceConc!3240 0))(
  ( (BalanceConc!3241 (c!101279 Conc!1616)) )
))
(declare-datatypes ((TokenValueInjection!1614 0))(
  ( (TokenValueInjection!1615 (toValue!1742 Int) (toChars!1601 Int)) )
))
(declare-datatypes ((Rule!1598 0))(
  ( (Rule!1599 (regex!899 Regex!1233) (tag!1161 String!6359) (isSeparator!899 Bool) (transformation!899 TokenValueInjection!1614)) )
))
(declare-datatypes ((Token!1534 0))(
  ( (Token!1535 (value!30488 TokenValue!923) (rule!1599 Rule!1598) (size!4079 Int) (originalCharacters!938 List!5016)) )
))
(declare-fun token!491 () Token!1534)

(declare-fun e!318602 () Bool)

(declare-fun inv!6280 (Token!1534) Bool)

(assert (=> start!48592 (and (inv!6280 token!491) e!318602)))

(assert (=> start!48592 true))

(declare-fun e!318597 () Bool)

(assert (=> start!48592 e!318597))

(declare-fun b!529541 () Bool)

(declare-fun res!223576 () Bool)

(assert (=> b!529541 (=> (not res!223576) (not e!318592))))

(declare-fun input!2705 () List!5016)

(declare-fun list!2083 (BalanceConc!3240) List!5016)

(declare-fun charsOf!528 (Token!1534) BalanceConc!3240)

(assert (=> b!529541 (= res!223576 (= (list!2083 (charsOf!528 token!491)) input!2705))))

(declare-fun e!318596 () Bool)

(assert (=> b!529542 (= e!318596 (and tp!168549 tp!168553))))

(declare-fun b!529543 () Bool)

(assert (=> b!529543 (= e!318592 false)))

(declare-fun lt!218360 () Bool)

(declare-datatypes ((List!5017 0))(
  ( (Nil!5007) (Cons!5007 (h!10408 Rule!1598) (t!73656 List!5017)) )
))
(declare-fun rules!3103 () List!5017)

(declare-fun rulesValidInductive!302 (LexerInterface!785 List!5017) Bool)

(assert (=> b!529543 (= lt!218360 (rulesValidInductive!302 thiss!22590 rules!3103))))

(declare-fun lt!218361 () List!5016)

(declare-fun suffix!1342 () List!5016)

(declare-fun ++!1387 (List!5016 List!5016) List!5016)

(assert (=> b!529543 (= lt!218361 (++!1387 input!2705 suffix!1342))))

(declare-fun b!529544 () Bool)

(declare-fun tp!168555 () Bool)

(declare-fun e!318595 () Bool)

(declare-fun inv!6277 (String!6359) Bool)

(declare-fun inv!6281 (TokenValueInjection!1614) Bool)

(assert (=> b!529544 (= e!318595 (and tp!168555 (inv!6277 (tag!1161 (h!10408 rules!3103))) (inv!6281 (transformation!899 (h!10408 rules!3103))) e!318596))))

(declare-fun b!529545 () Bool)

(declare-fun res!223574 () Bool)

(assert (=> b!529545 (=> (not res!223574) (not e!318592))))

(declare-fun rulesInvariant!748 (LexerInterface!785 List!5017) Bool)

(assert (=> b!529545 (= res!223574 (rulesInvariant!748 thiss!22590 rules!3103))))

(declare-fun b!529546 () Bool)

(declare-fun res!223573 () Bool)

(assert (=> b!529546 (=> (not res!223573) (not e!318592))))

(declare-fun isEmpty!3624 (List!5016) Bool)

(assert (=> b!529546 (= res!223573 (not (isEmpty!3624 input!2705)))))

(declare-fun b!529547 () Bool)

(declare-fun tp_is_empty!2821 () Bool)

(declare-fun tp!168556 () Bool)

(assert (=> b!529547 (= e!318593 (and tp_is_empty!2821 tp!168556))))

(declare-fun b!529548 () Bool)

(declare-fun e!318601 () Bool)

(declare-fun e!318599 () Bool)

(declare-fun tp!168557 () Bool)

(assert (=> b!529548 (= e!318599 (and tp!168557 (inv!6277 (tag!1161 (rule!1599 token!491))) (inv!6281 (transformation!899 (rule!1599 token!491))) e!318601))))

(declare-fun b!529549 () Bool)

(declare-fun tp!168558 () Bool)

(assert (=> b!529549 (= e!318597 (and tp_is_empty!2821 tp!168558))))

(declare-fun b!529550 () Bool)

(declare-fun res!223577 () Bool)

(assert (=> b!529550 (=> (not res!223577) (not e!318592))))

(declare-fun isEmpty!3625 (List!5017) Bool)

(assert (=> b!529550 (= res!223577 (not (isEmpty!3625 rules!3103)))))

(declare-fun tp!168550 () Bool)

(declare-fun b!529551 () Bool)

(declare-fun inv!21 (TokenValue!923) Bool)

(assert (=> b!529551 (= e!318602 (and (inv!21 (value!30488 token!491)) e!318599 tp!168550))))

(assert (=> b!529552 (= e!318601 (and tp!168552 tp!168554))))

(declare-fun b!529553 () Bool)

(declare-fun tp!168551 () Bool)

(assert (=> b!529553 (= e!318598 (and e!318595 tp!168551))))

(assert (= (and start!48592 res!223575) b!529550))

(assert (= (and b!529550 res!223577) b!529545))

(assert (= (and b!529545 res!223574) b!529546))

(assert (= (and b!529546 res!223573) b!529541))

(assert (= (and b!529541 res!223576) b!529543))

(assert (= (and start!48592 ((_ is Cons!5006) suffix!1342)) b!529547))

(assert (= b!529544 b!529542))

(assert (= b!529553 b!529544))

(assert (= (and start!48592 ((_ is Cons!5007) rules!3103)) b!529553))

(assert (= b!529548 b!529552))

(assert (= b!529551 b!529548))

(assert (= start!48592 b!529551))

(assert (= (and start!48592 ((_ is Cons!5006) input!2705)) b!529549))

(declare-fun m!775029 () Bool)

(assert (=> b!529543 m!775029))

(declare-fun m!775031 () Bool)

(assert (=> b!529543 m!775031))

(declare-fun m!775033 () Bool)

(assert (=> start!48592 m!775033))

(declare-fun m!775035 () Bool)

(assert (=> b!529546 m!775035))

(declare-fun m!775037 () Bool)

(assert (=> b!529551 m!775037))

(declare-fun m!775039 () Bool)

(assert (=> b!529545 m!775039))

(declare-fun m!775041 () Bool)

(assert (=> b!529548 m!775041))

(declare-fun m!775043 () Bool)

(assert (=> b!529548 m!775043))

(declare-fun m!775045 () Bool)

(assert (=> b!529550 m!775045))

(declare-fun m!775047 () Bool)

(assert (=> b!529544 m!775047))

(declare-fun m!775049 () Bool)

(assert (=> b!529544 m!775049))

(declare-fun m!775051 () Bool)

(assert (=> b!529541 m!775051))

(assert (=> b!529541 m!775051))

(declare-fun m!775053 () Bool)

(assert (=> b!529541 m!775053))

(check-sat (not b_next!14153) (not b!529541) (not b!529543) (not b!529550) (not b_next!14159) (not b!529545) (not b!529548) b_and!51651 tp_is_empty!2821 (not b!529546) (not b!529549) b_and!51653 (not b_next!14157) (not b!529553) (not b!529544) b_and!51657 (not b!529547) (not b_next!14155) b_and!51655 (not start!48592) (not b!529551))
(check-sat (not b_next!14153) (not b_next!14159) b_and!51657 (not b_next!14155) b_and!51651 b_and!51655 (not b_next!14157) b_and!51653)
