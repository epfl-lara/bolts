; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745308 () Bool)

(assert start!745308)

(declare-fun b!7900842 () Bool)

(declare-fun b_free!134679 () Bool)

(declare-fun b_next!135469 () Bool)

(assert (=> b!7900842 (= b_free!134679 (not b_next!135469))))

(declare-fun tp!2353848 () Bool)

(declare-fun b_and!352643 () Bool)

(assert (=> b!7900842 (= tp!2353848 b_and!352643)))

(declare-fun b_free!134681 () Bool)

(declare-fun b_next!135471 () Bool)

(assert (=> b!7900842 (= b_free!134681 (not b_next!135471))))

(declare-fun tp!2353846 () Bool)

(declare-fun b_and!352645 () Bool)

(assert (=> b!7900842 (= tp!2353846 b_and!352645)))

(declare-fun b!7900841 () Bool)

(declare-fun res!3134554 () Bool)

(declare-fun e!4663583 () Bool)

(assert (=> b!7900841 (=> res!3134554 e!4663583)))

(declare-datatypes ((List!74248 0))(
  ( (Nil!74124) (Cons!74124 (h!80572 (_ BitVec 16)) (t!389155 List!74248)) )
))
(declare-datatypes ((TokenValue!8892 0))(
  ( (FloatLiteralValue!17784 (text!62689 List!74248)) (TokenValueExt!8891 (__x!35071 Int)) (Broken!44460 (value!286371 List!74248)) (Object!9015) (End!8892) (Def!8892) (Underscore!8892) (Match!8892) (Else!8892) (Error!8892) (Case!8892) (If!8892) (Extends!8892) (Abstract!8892) (Class!8892) (Val!8892) (DelimiterValue!17784 (del!8952 List!74248)) (KeywordValue!8898 (value!286372 List!74248)) (CommentValue!17784 (value!286373 List!74248)) (WhitespaceValue!17784 (value!286374 List!74248)) (IndentationValue!8892 (value!286375 List!74248)) (String!82881) (Int32!8892) (Broken!44461 (value!286376 List!74248)) (Boolean!8893) (Unit!169148) (OperatorValue!8895 (op!8952 List!74248)) (IdentifierValue!17784 (value!286377 List!74248)) (IdentifierValue!17785 (value!286378 List!74248)) (WhitespaceValue!17785 (value!286379 List!74248)) (True!17784) (False!17784) (Broken!44462 (value!286380 List!74248)) (Broken!44463 (value!286381 List!74248)) (True!17785) (RightBrace!8892) (RightBracket!8892) (Colon!8892) (Null!8892) (Comma!8892) (LeftBracket!8892) (False!17785) (LeftBrace!8892) (ImaginaryLiteralValue!8892 (text!62690 List!74248)) (StringLiteralValue!26676 (value!286382 List!74248)) (EOFValue!8892 (value!286383 List!74248)) (IdentValue!8892 (value!286384 List!74248)) (DelimiterValue!17785 (value!286385 List!74248)) (DedentValue!8892 (value!286386 List!74248)) (NewLineValue!8892 (value!286387 List!74248)) (IntegerValue!26676 (value!286388 (_ BitVec 32)) (text!62691 List!74248)) (IntegerValue!26677 (value!286389 Int) (text!62692 List!74248)) (Times!8892) (Or!8892) (Equal!8892) (Minus!8892) (Broken!44464 (value!286390 List!74248)) (And!8892) (Div!8892) (LessEqual!8892) (Mod!8892) (Concat!30171) (Not!8892) (Plus!8892) (SpaceValue!8892 (value!286391 List!74248)) (IntegerValue!26678 (value!286392 Int) (text!62693 List!74248)) (StringLiteralValue!26677 (text!62694 List!74248)) (FloatLiteralValue!17785 (text!62695 List!74248)) (BytesLiteralValue!8892 (value!286393 List!74248)) (CommentValue!17785 (value!286394 List!74248)) (StringLiteralValue!26678 (value!286395 List!74248)) (ErrorTokenValue!8892 (msg!8953 List!74248)) )
))
(declare-datatypes ((C!42888 0))(
  ( (C!42889 (val!31908 Int)) )
))
(declare-datatypes ((List!74249 0))(
  ( (Nil!74125) (Cons!74125 (h!80573 C!42888) (t!389156 List!74249)) )
))
(declare-datatypes ((IArray!31561 0))(
  ( (IArray!31562 (innerList!15838 List!74249)) )
))
(declare-datatypes ((Conc!15750 0))(
  ( (Node!15750 (left!56557 Conc!15750) (right!56887 Conc!15750) (csize!31730 Int) (cheight!15961 Int)) (Leaf!30006 (xs!19132 IArray!31561) (csize!31731 Int)) (Empty!15750) )
))
(declare-datatypes ((BalanceConc!30618 0))(
  ( (BalanceConc!30619 (c!1449987 Conc!15750)) )
))
(declare-datatypes ((String!82882 0))(
  ( (String!82883 (value!286396 String)) )
))
(declare-datatypes ((Regex!21279 0))(
  ( (ElementMatch!21279 (c!1449988 C!42888)) (Concat!30172 (regOne!43070 Regex!21279) (regTwo!43070 Regex!21279)) (EmptyExpr!21279) (Star!21279 (reg!21608 Regex!21279)) (EmptyLang!21279) (Union!21279 (regOne!43071 Regex!21279) (regTwo!43071 Regex!21279)) )
))
(declare-datatypes ((TokenValueInjection!17092 0))(
  ( (TokenValueInjection!17093 (toValue!11621 Int) (toChars!11480 Int)) )
))
(declare-datatypes ((Rule!16952 0))(
  ( (Rule!16953 (regex!8576 Regex!21279) (tag!9440 String!82882) (isSeparator!8576 Bool) (transformation!8576 TokenValueInjection!17092)) )
))
(declare-datatypes ((Token!15572 0))(
  ( (Token!15573 (value!286397 TokenValue!8892) (rule!11862 Rule!16952) (size!42946 Int) (originalCharacters!8817 List!74249)) )
))
(declare-datatypes ((tuple2!70174 0))(
  ( (tuple2!70175 (_1!38390 Token!15572) (_2!38390 List!74249)) )
))
(declare-fun lt!2683179 () tuple2!70174)

(declare-fun lt!2683176 () List!74249)

(declare-fun matchR!10640 (Regex!21279 List!74249) Bool)

(assert (=> b!7900841 (= res!3134554 (not (matchR!10640 (regex!8576 (rule!11862 (_1!38390 lt!2683179))) lt!2683176)))))

(declare-fun e!4663587 () Bool)

(assert (=> b!7900842 (= e!4663587 (and tp!2353848 tp!2353846))))

(declare-fun res!3134550 () Bool)

(declare-fun e!4663584 () Bool)

(assert (=> start!745308 (=> (not res!3134550) (not e!4663584))))

(declare-datatypes ((LexerInterface!8168 0))(
  ( (LexerInterfaceExt!8165 (__x!35072 Int)) (Lexer!8166) )
))
(declare-fun thiss!14377 () LexerInterface!8168)

(get-info :version)

(assert (=> start!745308 (= res!3134550 ((_ is Lexer!8166) thiss!14377))))

(assert (=> start!745308 e!4663584))

(assert (=> start!745308 true))

(declare-fun e!4663590 () Bool)

(assert (=> start!745308 e!4663590))

(declare-fun e!4663588 () Bool)

(assert (=> start!745308 e!4663588))

(declare-fun tp!2353849 () Bool)

(declare-datatypes ((List!74250 0))(
  ( (Nil!74126) (Cons!74126 (h!80574 Rule!16952) (t!389157 List!74250)) )
))
(declare-fun rulesArg!141 () List!74250)

(declare-fun e!4663585 () Bool)

(declare-fun b!7900843 () Bool)

(declare-fun inv!95112 (String!82882) Bool)

(declare-fun inv!95114 (TokenValueInjection!17092) Bool)

(assert (=> b!7900843 (= e!4663585 (and tp!2353849 (inv!95112 (tag!9440 (h!80574 rulesArg!141))) (inv!95114 (transformation!8576 (h!80574 rulesArg!141))) e!4663587))))

(declare-fun b!7900844 () Bool)

(declare-fun res!3134553 () Bool)

(assert (=> b!7900844 (=> res!3134553 e!4663583)))

(declare-fun input!1184 () List!74249)

(declare-fun size!42947 (List!74249) Int)

(assert (=> b!7900844 (= res!3134553 (>= (size!42947 (_2!38390 lt!2683179)) (size!42947 input!1184)))))

(declare-fun b!7900845 () Bool)

(declare-fun tp_is_empty!52933 () Bool)

(declare-fun tp!2353847 () Bool)

(assert (=> b!7900845 (= e!4663588 (and tp_is_empty!52933 tp!2353847))))

(declare-fun b!7900846 () Bool)

(assert (=> b!7900846 (= e!4663583 true)))

(declare-fun b!7900847 () Bool)

(declare-fun res!3134551 () Bool)

(assert (=> b!7900847 (=> res!3134551 e!4663583)))

(declare-fun apply!14323 (TokenValueInjection!17092 BalanceConc!30618) TokenValue!8892)

(declare-fun seqFromList!6141 (List!74249) BalanceConc!30618)

(assert (=> b!7900847 (= res!3134551 (not (= (value!286397 (_1!38390 lt!2683179)) (apply!14323 (transformation!8576 (rule!11862 (_1!38390 lt!2683179))) (seqFromList!6141 (originalCharacters!8817 (_1!38390 lt!2683179)))))))))

(declare-fun b!7900848 () Bool)

(declare-fun tp!2353850 () Bool)

(assert (=> b!7900848 (= e!4663590 (and e!4663585 tp!2353850))))

(declare-fun b!7900849 () Bool)

(declare-fun e!4663589 () Bool)

(assert (=> b!7900849 (= e!4663589 e!4663583)))

(declare-fun res!3134560 () Bool)

(assert (=> b!7900849 (=> res!3134560 e!4663583)))

(assert (=> b!7900849 (= res!3134560 (not (= lt!2683176 (originalCharacters!8817 (_1!38390 lt!2683179)))))))

(declare-fun list!19199 (BalanceConc!30618) List!74249)

(declare-fun charsOf!5520 (Token!15572) BalanceConc!30618)

(assert (=> b!7900849 (= lt!2683176 (list!19199 (charsOf!5520 (_1!38390 lt!2683179))))))

(declare-datatypes ((Option!17858 0))(
  ( (None!17857) (Some!17857 (v!54996 tuple2!70174)) )
))
(declare-fun lt!2683177 () Option!17858)

(declare-fun get!26618 (Option!17858) tuple2!70174)

(assert (=> b!7900849 (= lt!2683179 (get!26618 lt!2683177))))

(declare-fun b!7900850 () Bool)

(declare-fun res!3134549 () Bool)

(assert (=> b!7900850 (=> res!3134549 e!4663589)))

(declare-fun isEmpty!42518 (Option!17858) Bool)

(assert (=> b!7900850 (= res!3134549 (isEmpty!42518 lt!2683177))))

(declare-fun b!7900851 () Bool)

(declare-fun e!4663582 () Bool)

(assert (=> b!7900851 (= e!4663584 (not e!4663582))))

(declare-fun res!3134557 () Bool)

(assert (=> b!7900851 (=> res!3134557 e!4663582)))

(assert (=> b!7900851 (= res!3134557 (or (and ((_ is Cons!74126) rulesArg!141) ((_ is Nil!74126) (t!389157 rulesArg!141))) (not ((_ is Cons!74126) rulesArg!141))))))

(declare-fun isPrefix!6409 (List!74249 List!74249) Bool)

(assert (=> b!7900851 (isPrefix!6409 input!1184 input!1184)))

(declare-datatypes ((Unit!169149 0))(
  ( (Unit!169150) )
))
(declare-fun lt!2683178 () Unit!169149)

(declare-fun lemmaIsPrefixRefl!3920 (List!74249 List!74249) Unit!169149)

(assert (=> b!7900851 (= lt!2683178 (lemmaIsPrefixRefl!3920 input!1184 input!1184))))

(declare-fun b!7900852 () Bool)

(declare-fun res!3134559 () Bool)

(assert (=> b!7900852 (=> res!3134559 e!4663583)))

(declare-fun ++!18146 (List!74249 List!74249) List!74249)

(assert (=> b!7900852 (= res!3134559 (not (= (++!18146 lt!2683176 (_2!38390 lt!2683179)) input!1184)))))

(declare-fun b!7900853 () Bool)

(assert (=> b!7900853 (= e!4663582 e!4663589)))

(declare-fun res!3134552 () Bool)

(assert (=> b!7900853 (=> res!3134552 e!4663589)))

(declare-fun lt!2683180 () Option!17858)

(assert (=> b!7900853 (= res!3134552 (or (and ((_ is None!17857) lt!2683177) ((_ is None!17857) lt!2683180)) (not ((_ is None!17857) lt!2683180))))))

(declare-fun maxPrefix!4709 (LexerInterface!8168 List!74250 List!74249) Option!17858)

(assert (=> b!7900853 (= lt!2683180 (maxPrefix!4709 thiss!14377 (t!389157 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3756 (LexerInterface!8168 Rule!16952 List!74249) Option!17858)

(assert (=> b!7900853 (= lt!2683177 (maxPrefixOneRule!3756 thiss!14377 (h!80574 rulesArg!141) input!1184))))

(declare-fun b!7900854 () Bool)

(declare-fun res!3134556 () Bool)

(assert (=> b!7900854 (=> (not res!3134556) (not e!4663584))))

(declare-fun rulesValidInductive!3387 (LexerInterface!8168 List!74250) Bool)

(assert (=> b!7900854 (= res!3134556 (rulesValidInductive!3387 thiss!14377 rulesArg!141))))

(declare-fun b!7900855 () Bool)

(declare-fun res!3134558 () Bool)

(assert (=> b!7900855 (=> (not res!3134558) (not e!4663584))))

(declare-fun isEmpty!42519 (List!74250) Bool)

(assert (=> b!7900855 (= res!3134558 (not (isEmpty!42519 rulesArg!141)))))

(declare-fun b!7900856 () Bool)

(declare-fun res!3134555 () Bool)

(assert (=> b!7900856 (=> res!3134555 e!4663589)))

(declare-fun isDefined!14434 (Option!17858) Bool)

(assert (=> b!7900856 (= res!3134555 (not (isDefined!14434 lt!2683177)))))

(assert (= (and start!745308 res!3134550) b!7900854))

(assert (= (and b!7900854 res!3134556) b!7900855))

(assert (= (and b!7900855 res!3134558) b!7900851))

(assert (= (and b!7900851 (not res!3134557)) b!7900853))

(assert (= (and b!7900853 (not res!3134552)) b!7900850))

(assert (= (and b!7900850 (not res!3134549)) b!7900856))

(assert (= (and b!7900856 (not res!3134555)) b!7900849))

(assert (= (and b!7900849 (not res!3134560)) b!7900844))

(assert (= (and b!7900844 (not res!3134553)) b!7900852))

(assert (= (and b!7900852 (not res!3134559)) b!7900847))

(assert (= (and b!7900847 (not res!3134551)) b!7900841))

(assert (= (and b!7900841 (not res!3134554)) b!7900846))

(assert (= b!7900843 b!7900842))

(assert (= b!7900848 b!7900843))

(assert (= (and start!745308 ((_ is Cons!74126) rulesArg!141)) b!7900848))

(assert (= (and start!745308 ((_ is Cons!74125) input!1184)) b!7900845))

(declare-fun m!8275610 () Bool)

(assert (=> b!7900841 m!8275610))

(declare-fun m!8275612 () Bool)

(assert (=> b!7900855 m!8275612))

(declare-fun m!8275614 () Bool)

(assert (=> b!7900850 m!8275614))

(declare-fun m!8275616 () Bool)

(assert (=> b!7900849 m!8275616))

(assert (=> b!7900849 m!8275616))

(declare-fun m!8275618 () Bool)

(assert (=> b!7900849 m!8275618))

(declare-fun m!8275620 () Bool)

(assert (=> b!7900849 m!8275620))

(declare-fun m!8275622 () Bool)

(assert (=> b!7900844 m!8275622))

(declare-fun m!8275624 () Bool)

(assert (=> b!7900844 m!8275624))

(declare-fun m!8275626 () Bool)

(assert (=> b!7900847 m!8275626))

(assert (=> b!7900847 m!8275626))

(declare-fun m!8275628 () Bool)

(assert (=> b!7900847 m!8275628))

(declare-fun m!8275630 () Bool)

(assert (=> b!7900851 m!8275630))

(declare-fun m!8275632 () Bool)

(assert (=> b!7900851 m!8275632))

(declare-fun m!8275634 () Bool)

(assert (=> b!7900852 m!8275634))

(declare-fun m!8275636 () Bool)

(assert (=> b!7900856 m!8275636))

(declare-fun m!8275638 () Bool)

(assert (=> b!7900843 m!8275638))

(declare-fun m!8275640 () Bool)

(assert (=> b!7900843 m!8275640))

(declare-fun m!8275642 () Bool)

(assert (=> b!7900854 m!8275642))

(declare-fun m!8275644 () Bool)

(assert (=> b!7900853 m!8275644))

(declare-fun m!8275646 () Bool)

(assert (=> b!7900853 m!8275646))

(check-sat (not b!7900843) tp_is_empty!52933 (not b_next!135469) b_and!352645 (not b!7900844) (not b!7900845) (not b!7900853) (not b!7900850) (not b!7900841) (not b!7900852) (not b!7900851) (not b!7900856) (not b!7900847) (not b!7900848) b_and!352643 (not b!7900849) (not b!7900854) (not b_next!135471) (not b!7900855))
(check-sat b_and!352645 b_and!352643 (not b_next!135471) (not b_next!135469))
