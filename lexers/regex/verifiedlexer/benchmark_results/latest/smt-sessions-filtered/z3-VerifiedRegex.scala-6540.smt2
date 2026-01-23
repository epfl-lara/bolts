; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!345854 () Bool)

(assert start!345854)

(declare-fun b!3683412 () Bool)

(declare-fun b_free!97645 () Bool)

(declare-fun b_next!98349 () Bool)

(assert (=> b!3683412 (= b_free!97645 (not b_next!98349))))

(declare-fun tp!1119635 () Bool)

(declare-fun b_and!275299 () Bool)

(assert (=> b!3683412 (= tp!1119635 b_and!275299)))

(declare-fun b_free!97647 () Bool)

(declare-fun b_next!98351 () Bool)

(assert (=> b!3683412 (= b_free!97647 (not b_next!98351))))

(declare-fun tp!1119632 () Bool)

(declare-fun b_and!275301 () Bool)

(assert (=> b!3683412 (= tp!1119632 b_and!275301)))

(declare-fun b!3683411 () Bool)

(declare-fun e!2280874 () Bool)

(assert (=> b!3683411 (= e!2280874 false)))

(declare-fun lt!1288613 () Bool)

(declare-datatypes ((LexerInterface!5449 0))(
  ( (LexerInterfaceExt!5446 (__x!24397 Int)) (Lexer!5447) )
))
(declare-fun thiss!25197 () LexerInterface!5449)

(declare-datatypes ((List!39004 0))(
  ( (Nil!38880) (Cons!38880 (h!44300 (_ BitVec 16)) (t!300921 List!39004)) )
))
(declare-datatypes ((TokenValue!6090 0))(
  ( (FloatLiteralValue!12180 (text!43075 List!39004)) (TokenValueExt!6089 (__x!24398 Int)) (Broken!30450 (value!187444 List!39004)) (Object!6213) (End!6090) (Def!6090) (Underscore!6090) (Match!6090) (Else!6090) (Error!6090) (Case!6090) (If!6090) (Extends!6090) (Abstract!6090) (Class!6090) (Val!6090) (DelimiterValue!12180 (del!6150 List!39004)) (KeywordValue!6096 (value!187445 List!39004)) (CommentValue!12180 (value!187446 List!39004)) (WhitespaceValue!12180 (value!187447 List!39004)) (IndentationValue!6090 (value!187448 List!39004)) (String!43783) (Int32!6090) (Broken!30451 (value!187449 List!39004)) (Boolean!6091) (Unit!56973) (OperatorValue!6093 (op!6150 List!39004)) (IdentifierValue!12180 (value!187450 List!39004)) (IdentifierValue!12181 (value!187451 List!39004)) (WhitespaceValue!12181 (value!187452 List!39004)) (True!12180) (False!12180) (Broken!30452 (value!187453 List!39004)) (Broken!30453 (value!187454 List!39004)) (True!12181) (RightBrace!6090) (RightBracket!6090) (Colon!6090) (Null!6090) (Comma!6090) (LeftBracket!6090) (False!12181) (LeftBrace!6090) (ImaginaryLiteralValue!6090 (text!43076 List!39004)) (StringLiteralValue!18270 (value!187455 List!39004)) (EOFValue!6090 (value!187456 List!39004)) (IdentValue!6090 (value!187457 List!39004)) (DelimiterValue!12181 (value!187458 List!39004)) (DedentValue!6090 (value!187459 List!39004)) (NewLineValue!6090 (value!187460 List!39004)) (IntegerValue!18270 (value!187461 (_ BitVec 32)) (text!43077 List!39004)) (IntegerValue!18271 (value!187462 Int) (text!43078 List!39004)) (Times!6090) (Or!6090) (Equal!6090) (Minus!6090) (Broken!30454 (value!187463 List!39004)) (And!6090) (Div!6090) (LessEqual!6090) (Mod!6090) (Concat!16709) (Not!6090) (Plus!6090) (SpaceValue!6090 (value!187464 List!39004)) (IntegerValue!18272 (value!187465 Int) (text!43079 List!39004)) (StringLiteralValue!18271 (text!43080 List!39004)) (FloatLiteralValue!12181 (text!43081 List!39004)) (BytesLiteralValue!6090 (value!187466 List!39004)) (CommentValue!12181 (value!187467 List!39004)) (StringLiteralValue!18272 (value!187468 List!39004)) (ErrorTokenValue!6090 (msg!6151 List!39004)) )
))
(declare-datatypes ((String!43784 0))(
  ( (String!43785 (value!187469 String)) )
))
(declare-datatypes ((C!21424 0))(
  ( (C!21425 (val!12760 Int)) )
))
(declare-datatypes ((List!39005 0))(
  ( (Nil!38881) (Cons!38881 (h!44301 C!21424) (t!300922 List!39005)) )
))
(declare-datatypes ((IArray!23825 0))(
  ( (IArray!23826 (innerList!11970 List!39005)) )
))
(declare-datatypes ((Regex!10619 0))(
  ( (ElementMatch!10619 (c!637185 C!21424)) (Concat!16710 (regOne!21750 Regex!10619) (regTwo!21750 Regex!10619)) (EmptyExpr!10619) (Star!10619 (reg!10948 Regex!10619)) (EmptyLang!10619) (Union!10619 (regOne!21751 Regex!10619) (regTwo!21751 Regex!10619)) )
))
(declare-datatypes ((Conc!11910 0))(
  ( (Node!11910 (left!30338 Conc!11910) (right!30668 Conc!11910) (csize!24050 Int) (cheight!12121 Int)) (Leaf!18451 (xs!15112 IArray!23825) (csize!24051 Int)) (Empty!11910) )
))
(declare-datatypes ((BalanceConc!23434 0))(
  ( (BalanceConc!23435 (c!637186 Conc!11910)) )
))
(declare-datatypes ((TokenValueInjection!11608 0))(
  ( (TokenValueInjection!11609 (toValue!8164 Int) (toChars!8023 Int)) )
))
(declare-datatypes ((Rule!11520 0))(
  ( (Rule!11521 (regex!5860 Regex!10619) (tag!6666 String!43784) (isSeparator!5860 Bool) (transformation!5860 TokenValueInjection!11608)) )
))
(declare-datatypes ((List!39006 0))(
  ( (Nil!38882) (Cons!38882 (h!44302 Rule!11520) (t!300923 List!39006)) )
))
(declare-fun rules!3568 () List!39006)

(declare-fun rulesValidInductive!2088 (LexerInterface!5449 List!39006) Bool)

(assert (=> b!3683411 (= lt!1288613 (rulesValidInductive!2088 thiss!25197 rules!3568))))

(declare-fun lt!1288612 () List!39005)

(declare-datatypes ((Token!11086 0))(
  ( (Token!11087 (value!187470 TokenValue!6090) (rule!8700 Rule!11520) (size!29733 Int) (originalCharacters!6574 List!39005)) )
))
(declare-datatypes ((List!39007 0))(
  ( (Nil!38883) (Cons!38883 (h!44303 Token!11086) (t!300924 List!39007)) )
))
(declare-datatypes ((IArray!23827 0))(
  ( (IArray!23828 (innerList!11971 List!39007)) )
))
(declare-datatypes ((Conc!11911 0))(
  ( (Node!11911 (left!30339 Conc!11911) (right!30669 Conc!11911) (csize!24052 Int) (cheight!12122 Int)) (Leaf!18452 (xs!15113 IArray!23827) (csize!24053 Int)) (Empty!11911) )
))
(declare-datatypes ((BalanceConc!23436 0))(
  ( (BalanceConc!23437 (c!637187 Conc!11911)) )
))
(declare-datatypes ((tuple2!38750 0))(
  ( (tuple2!38751 (_1!22509 BalanceConc!23436) (_2!22509 BalanceConc!23434)) )
))
(declare-fun lt!1288614 () tuple2!38750)

(declare-fun list!14468 (BalanceConc!23434) List!39005)

(declare-fun charsOf!3871 (Token!11086) BalanceConc!23434)

(declare-fun head!7912 (List!39007) Token!11086)

(declare-fun list!14469 (BalanceConc!23436) List!39007)

(assert (=> b!3683411 (= lt!1288612 (list!14468 (charsOf!3871 (head!7912 (list!14469 (_1!22509 lt!1288614))))))))

(declare-fun e!2280872 () Bool)

(assert (=> b!3683412 (= e!2280872 (and tp!1119635 tp!1119632))))

(declare-fun res!1496499 () Bool)

(declare-fun e!2280870 () Bool)

(assert (=> start!345854 (=> (not res!1496499) (not e!2280870))))

(get-info :version)

(assert (=> start!345854 (= res!1496499 ((_ is Lexer!5447) thiss!25197))))

(assert (=> start!345854 e!2280870))

(assert (=> start!345854 true))

(declare-fun e!2280871 () Bool)

(assert (=> start!345854 e!2280871))

(declare-fun e!2280868 () Bool)

(assert (=> start!345854 e!2280868))

(declare-fun b!3683413 () Bool)

(declare-fun res!1496500 () Bool)

(assert (=> b!3683413 (=> (not res!1496500) (not e!2280870))))

(declare-fun rulesInvariant!4846 (LexerInterface!5449 List!39006) Bool)

(assert (=> b!3683413 (= res!1496500 (rulesInvariant!4846 thiss!25197 rules!3568))))

(declare-fun b!3683414 () Bool)

(declare-fun e!2280873 () Bool)

(declare-fun tp!1119634 () Bool)

(assert (=> b!3683414 (= e!2280871 (and e!2280873 tp!1119634))))

(declare-fun b!3683415 () Bool)

(assert (=> b!3683415 (= e!2280870 e!2280874)))

(declare-fun res!1496502 () Bool)

(assert (=> b!3683415 (=> (not res!1496502) (not e!2280874))))

(declare-fun isEmpty!23098 (BalanceConc!23436) Bool)

(assert (=> b!3683415 (= res!1496502 (not (isEmpty!23098 (_1!22509 lt!1288614))))))

(declare-fun input!3129 () List!39005)

(declare-fun lex!2590 (LexerInterface!5449 List!39006 BalanceConc!23434) tuple2!38750)

(declare-fun seqFromList!4409 (List!39005) BalanceConc!23434)

(assert (=> b!3683415 (= lt!1288614 (lex!2590 thiss!25197 rules!3568 (seqFromList!4409 input!3129)))))

(declare-fun tp!1119636 () Bool)

(declare-fun b!3683416 () Bool)

(declare-fun inv!52370 (String!43784) Bool)

(declare-fun inv!52372 (TokenValueInjection!11608) Bool)

(assert (=> b!3683416 (= e!2280873 (and tp!1119636 (inv!52370 (tag!6666 (h!44302 rules!3568))) (inv!52372 (transformation!5860 (h!44302 rules!3568))) e!2280872))))

(declare-fun b!3683417 () Bool)

(declare-fun tp_is_empty!18321 () Bool)

(declare-fun tp!1119633 () Bool)

(assert (=> b!3683417 (= e!2280868 (and tp_is_empty!18321 tp!1119633))))

(declare-fun b!3683418 () Bool)

(declare-fun res!1496501 () Bool)

(assert (=> b!3683418 (=> (not res!1496501) (not e!2280870))))

(declare-fun isEmpty!23099 (List!39006) Bool)

(assert (=> b!3683418 (= res!1496501 (not (isEmpty!23099 rules!3568)))))

(assert (= (and start!345854 res!1496499) b!3683418))

(assert (= (and b!3683418 res!1496501) b!3683413))

(assert (= (and b!3683413 res!1496500) b!3683415))

(assert (= (and b!3683415 res!1496502) b!3683411))

(assert (= b!3683416 b!3683412))

(assert (= b!3683414 b!3683416))

(assert (= (and start!345854 ((_ is Cons!38882) rules!3568)) b!3683414))

(assert (= (and start!345854 ((_ is Cons!38881) input!3129)) b!3683417))

(declare-fun m!4194601 () Bool)

(assert (=> b!3683416 m!4194601))

(declare-fun m!4194603 () Bool)

(assert (=> b!3683416 m!4194603))

(declare-fun m!4194605 () Bool)

(assert (=> b!3683418 m!4194605))

(declare-fun m!4194607 () Bool)

(assert (=> b!3683411 m!4194607))

(declare-fun m!4194609 () Bool)

(assert (=> b!3683411 m!4194609))

(declare-fun m!4194611 () Bool)

(assert (=> b!3683411 m!4194611))

(declare-fun m!4194613 () Bool)

(assert (=> b!3683411 m!4194613))

(assert (=> b!3683411 m!4194611))

(assert (=> b!3683411 m!4194613))

(assert (=> b!3683411 m!4194607))

(declare-fun m!4194615 () Bool)

(assert (=> b!3683411 m!4194615))

(declare-fun m!4194617 () Bool)

(assert (=> b!3683415 m!4194617))

(declare-fun m!4194619 () Bool)

(assert (=> b!3683415 m!4194619))

(assert (=> b!3683415 m!4194619))

(declare-fun m!4194621 () Bool)

(assert (=> b!3683415 m!4194621))

(declare-fun m!4194623 () Bool)

(assert (=> b!3683413 m!4194623))

(check-sat (not b_next!98351) (not b!3683413) (not b!3683417) (not b!3683415) (not b!3683418) (not b!3683416) (not b_next!98349) b_and!275299 (not b!3683414) b_and!275301 tp_is_empty!18321 (not b!3683411))
(check-sat b_and!275299 b_and!275301 (not b_next!98351) (not b_next!98349))
