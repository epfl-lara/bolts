; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757546 () Bool)

(assert start!757546)

(declare-fun b!8045573 () Bool)

(declare-fun b_free!136343 () Bool)

(declare-fun b_next!137133 () Bool)

(assert (=> b!8045573 (= b_free!136343 (not b_next!137133))))

(declare-fun tp!2411582 () Bool)

(declare-fun b_and!354779 () Bool)

(assert (=> b!8045573 (= tp!2411582 b_and!354779)))

(declare-fun b_free!136345 () Bool)

(declare-fun b_next!137135 () Bool)

(assert (=> b!8045573 (= b_free!136345 (not b_next!137135))))

(declare-fun tp!2411581 () Bool)

(declare-fun b_and!354781 () Bool)

(assert (=> b!8045573 (= tp!2411581 b_and!354781)))

(declare-fun b!8045567 () Bool)

(declare-fun b_free!136347 () Bool)

(declare-fun b_next!137137 () Bool)

(assert (=> b!8045567 (= b_free!136347 (not b_next!137137))))

(declare-fun tp!2411583 () Bool)

(declare-fun b_and!354783 () Bool)

(assert (=> b!8045567 (= tp!2411583 b_and!354783)))

(declare-fun b_free!136349 () Bool)

(declare-fun b_next!137139 () Bool)

(assert (=> b!8045567 (= b_free!136349 (not b_next!137139))))

(declare-fun tp!2411584 () Bool)

(declare-fun b_and!354785 () Bool)

(assert (=> b!8045567 (= tp!2411584 b_and!354785)))

(declare-fun b!8045565 () Bool)

(declare-fun e!4739784 () Bool)

(assert (=> b!8045565 (= e!4739784 false)))

(declare-fun lt!2722689 () Bool)

(declare-datatypes ((C!43984 0))(
  ( (C!43985 (val!32768 Int)) )
))
(declare-datatypes ((List!75424 0))(
  ( (Nil!75298) (Cons!75298 (h!81746 C!43984) (t!391194 List!75424)) )
))
(declare-datatypes ((IArray!32101 0))(
  ( (IArray!32102 (innerList!16108 List!75424)) )
))
(declare-datatypes ((Conc!16020 0))(
  ( (Node!16020 (left!57365 Conc!16020) (right!57695 Conc!16020) (csize!32270 Int) (cheight!16231 Int)) (Leaf!30706 (xs!19418 IArray!32101) (csize!32271 Int)) (Empty!16020) )
))
(declare-datatypes ((List!75425 0))(
  ( (Nil!75299) (Cons!75299 (h!81747 (_ BitVec 16)) (t!391195 List!75425)) )
))
(declare-datatypes ((TokenValue!9072 0))(
  ( (FloatLiteralValue!18144 (text!63949 List!75425)) (TokenValueExt!9071 (__x!35425 Int)) (Broken!45360 (value!292446 List!75425)) (Object!9197) (End!9072) (Def!9072) (Underscore!9072) (Match!9072) (Else!9072) (Error!9072) (Case!9072) (If!9072) (Extends!9072) (Abstract!9072) (Class!9072) (Val!9072) (DelimiterValue!18144 (del!9132 List!75425)) (KeywordValue!9078 (value!292447 List!75425)) (CommentValue!18144 (value!292448 List!75425)) (WhitespaceValue!18144 (value!292449 List!75425)) (IndentationValue!9072 (value!292450 List!75425)) (String!85133) (Int32!9072) (Broken!45361 (value!292451 List!75425)) (Boolean!9073) (Unit!171119) (OperatorValue!9075 (op!9132 List!75425)) (IdentifierValue!18144 (value!292452 List!75425)) (IdentifierValue!18145 (value!292453 List!75425)) (WhitespaceValue!18145 (value!292454 List!75425)) (True!18144) (False!18144) (Broken!45362 (value!292455 List!75425)) (Broken!45363 (value!292456 List!75425)) (True!18145) (RightBrace!9072) (RightBracket!9072) (Colon!9072) (Null!9072) (Comma!9072) (LeftBracket!9072) (False!18145) (LeftBrace!9072) (ImaginaryLiteralValue!9072 (text!63950 List!75425)) (StringLiteralValue!27216 (value!292457 List!75425)) (EOFValue!9072 (value!292458 List!75425)) (IdentValue!9072 (value!292459 List!75425)) (DelimiterValue!18145 (value!292460 List!75425)) (DedentValue!9072 (value!292461 List!75425)) (NewLineValue!9072 (value!292462 List!75425)) (IntegerValue!27216 (value!292463 (_ BitVec 32)) (text!63951 List!75425)) (IntegerValue!27217 (value!292464 Int) (text!63952 List!75425)) (Times!9072) (Or!9072) (Equal!9072) (Minus!9072) (Broken!45364 (value!292465 List!75425)) (And!9072) (Div!9072) (LessEqual!9072) (Mod!9072) (Concat!30895) (Not!9072) (Plus!9072) (SpaceValue!9072 (value!292466 List!75425)) (IntegerValue!27218 (value!292467 Int) (text!63953 List!75425)) (StringLiteralValue!27217 (text!63954 List!75425)) (FloatLiteralValue!18145 (text!63955 List!75425)) (BytesLiteralValue!9072 (value!292468 List!75425)) (CommentValue!18145 (value!292469 List!75425)) (StringLiteralValue!27218 (value!292470 List!75425)) (ErrorTokenValue!9072 (msg!9133 List!75425)) )
))
(declare-datatypes ((BalanceConc!30996 0))(
  ( (BalanceConc!30997 (c!1475417 Conc!16020)) )
))
(declare-datatypes ((TokenValueInjection!17452 0))(
  ( (TokenValueInjection!17453 (toValue!11831 Int) (toChars!11690 Int)) )
))
(declare-datatypes ((Regex!21823 0))(
  ( (ElementMatch!21823 (c!1475418 C!43984)) (Concat!30896 (regOne!44158 Regex!21823) (regTwo!44158 Regex!21823)) (EmptyExpr!21823) (Star!21823 (reg!22152 Regex!21823)) (EmptyLang!21823) (Union!21823 (regOne!44159 Regex!21823) (regTwo!44159 Regex!21823)) )
))
(declare-datatypes ((String!85134 0))(
  ( (String!85135 (value!292471 String)) )
))
(declare-datatypes ((Rule!17304 0))(
  ( (Rule!17305 (regex!8752 Regex!21823) (tag!9616 String!85134) (isSeparator!8752 Bool) (transformation!8752 TokenValueInjection!17452)) )
))
(declare-fun r!4387 () Rule!17304)

(declare-datatypes ((List!75426 0))(
  ( (Nil!75300) (Cons!75300 (h!81748 Rule!17304) (t!391196 List!75426)) )
))
(declare-fun rules!4030 () List!75426)

(declare-datatypes ((LexerInterface!8342 0))(
  ( (LexerInterfaceExt!8339 (__x!35426 Int)) (Lexer!8340) )
))
(declare-fun thiss!26855 () LexerInterface!8342)

(declare-datatypes ((List!75427 0))(
  ( (Nil!75301) (Cons!75301 (h!81749 String!85134) (t!391197 List!75427)) )
))
(declare-fun noDuplicateTag!3330 (LexerInterface!8342 List!75426 List!75427) Bool)

(assert (=> b!8045565 (= lt!2722689 (noDuplicateTag!3330 thiss!26855 rules!4030 (Cons!75301 (tag!9616 r!4387) Nil!75301)))))

(declare-fun b!8045566 () Bool)

(declare-fun res!3180401 () Bool)

(assert (=> b!8045566 (=> (not res!3180401) (not e!4739784))))

(declare-fun lt!2722688 () List!75426)

(assert (=> b!8045566 (= res!3180401 (noDuplicateTag!3330 thiss!26855 lt!2722688 Nil!75301))))

(declare-fun e!4739785 () Bool)

(assert (=> b!8045567 (= e!4739785 (and tp!2411583 tp!2411584))))

(declare-fun b!8045568 () Bool)

(declare-fun res!3180404 () Bool)

(assert (=> b!8045568 (=> (not res!3180404) (not e!4739784))))

(declare-fun rulesValidInductive!3471 (LexerInterface!8342 List!75426) Bool)

(assert (=> b!8045568 (= res!3180404 (rulesValidInductive!3471 thiss!26855 lt!2722688))))

(declare-fun b!8045569 () Bool)

(declare-fun res!3180403 () Bool)

(assert (=> b!8045569 (=> (not res!3180403) (not e!4739784))))

(assert (=> b!8045569 (= res!3180403 (rulesValidInductive!3471 thiss!26855 rules!4030))))

(declare-fun tp!2411585 () Bool)

(declare-fun b!8045570 () Bool)

(declare-fun e!4739790 () Bool)

(declare-fun inv!97047 (String!85134) Bool)

(declare-fun inv!97049 (TokenValueInjection!17452) Bool)

(assert (=> b!8045570 (= e!4739790 (and tp!2411585 (inv!97047 (tag!9616 (h!81748 rules!4030))) (inv!97049 (transformation!8752 (h!81748 rules!4030))) e!4739785))))

(declare-fun b!8045571 () Bool)

(declare-fun e!4739787 () Bool)

(assert (=> b!8045571 (= e!4739787 e!4739784)))

(declare-fun res!3180400 () Bool)

(assert (=> b!8045571 (=> (not res!3180400) (not e!4739784))))

(declare-fun rulesInvariant!6810 (LexerInterface!8342 List!75426) Bool)

(assert (=> b!8045571 (= res!3180400 (rulesInvariant!6810 thiss!26855 lt!2722688))))

(assert (=> b!8045571 (= lt!2722688 (Cons!75300 r!4387 rules!4030))))

(declare-fun res!3180402 () Bool)

(assert (=> start!757546 (=> (not res!3180402) (not e!4739787))))

(get-info :version)

(assert (=> start!757546 (= res!3180402 ((_ is Lexer!8340) thiss!26855))))

(assert (=> start!757546 e!4739787))

(assert (=> start!757546 true))

(declare-fun e!4739789 () Bool)

(assert (=> start!757546 e!4739789))

(declare-fun e!4739791 () Bool)

(assert (=> start!757546 e!4739791))

(declare-fun b!8045572 () Bool)

(declare-fun e!4739786 () Bool)

(declare-fun tp!2411586 () Bool)

(assert (=> b!8045572 (= e!4739789 (and tp!2411586 (inv!97047 (tag!9616 r!4387)) (inv!97049 (transformation!8752 r!4387)) e!4739786))))

(assert (=> b!8045573 (= e!4739786 (and tp!2411582 tp!2411581))))

(declare-fun b!8045574 () Bool)

(declare-fun tp!2411587 () Bool)

(assert (=> b!8045574 (= e!4739791 (and e!4739790 tp!2411587))))

(assert (= (and start!757546 res!3180402) b!8045571))

(assert (= (and b!8045571 res!3180400) b!8045568))

(assert (= (and b!8045568 res!3180404) b!8045566))

(assert (= (and b!8045566 res!3180401) b!8045569))

(assert (= (and b!8045569 res!3180403) b!8045565))

(assert (= b!8045572 b!8045573))

(assert (= start!757546 b!8045572))

(assert (= b!8045570 b!8045567))

(assert (= b!8045574 b!8045570))

(assert (= (and start!757546 ((_ is Cons!75300) rules!4030)) b!8045574))

(declare-fun m!8398030 () Bool)

(assert (=> b!8045570 m!8398030))

(declare-fun m!8398032 () Bool)

(assert (=> b!8045570 m!8398032))

(declare-fun m!8398034 () Bool)

(assert (=> b!8045566 m!8398034))

(declare-fun m!8398036 () Bool)

(assert (=> b!8045572 m!8398036))

(declare-fun m!8398038 () Bool)

(assert (=> b!8045572 m!8398038))

(declare-fun m!8398040 () Bool)

(assert (=> b!8045565 m!8398040))

(declare-fun m!8398042 () Bool)

(assert (=> b!8045568 m!8398042))

(declare-fun m!8398044 () Bool)

(assert (=> b!8045571 m!8398044))

(declare-fun m!8398046 () Bool)

(assert (=> b!8045569 m!8398046))

(check-sat (not b!8045569) b_and!354779 b_and!354785 (not b!8045566) (not b_next!137139) (not b_next!137137) (not b!8045572) (not b!8045568) (not b_next!137133) b_and!354783 (not b_next!137135) b_and!354781 (not b!8045571) (not b!8045565) (not b!8045570) (not b!8045574))
(check-sat b_and!354779 b_and!354785 (not b_next!137139) (not b_next!137137) (not b_next!137133) b_and!354783 (not b_next!137135) b_and!354781)
