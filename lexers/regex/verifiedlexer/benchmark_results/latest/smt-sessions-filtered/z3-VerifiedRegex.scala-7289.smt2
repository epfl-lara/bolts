; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388712 () Bool)

(assert start!388712)

(declare-fun b!4102470 () Bool)

(declare-fun b_free!114969 () Bool)

(declare-fun b_next!115673 () Bool)

(assert (=> b!4102470 (= b_free!114969 (not b_next!115673))))

(declare-fun tp!1242842 () Bool)

(declare-fun b_and!316783 () Bool)

(assert (=> b!4102470 (= tp!1242842 b_and!316783)))

(declare-fun b_free!114971 () Bool)

(declare-fun b_next!115675 () Bool)

(assert (=> b!4102470 (= b_free!114971 (not b_next!115675))))

(declare-fun tp!1242841 () Bool)

(declare-fun b_and!316785 () Bool)

(assert (=> b!4102470 (= tp!1242841 b_and!316785)))

(declare-fun b!4102467 () Bool)

(declare-fun b_free!114973 () Bool)

(declare-fun b_next!115677 () Bool)

(assert (=> b!4102467 (= b_free!114973 (not b_next!115677))))

(declare-fun tp!1242844 () Bool)

(declare-fun b_and!316787 () Bool)

(assert (=> b!4102467 (= tp!1242844 b_and!316787)))

(declare-fun b_free!114975 () Bool)

(declare-fun b_next!115679 () Bool)

(assert (=> b!4102467 (= b_free!114975 (not b_next!115679))))

(declare-fun tp!1242840 () Bool)

(declare-fun b_and!316789 () Bool)

(assert (=> b!4102467 (= tp!1242840 b_and!316789)))

(declare-fun b!4102466 () Bool)

(declare-fun e!2545832 () Bool)

(assert (=> b!4102466 (= e!2545832 true)))

(declare-datatypes ((List!44202 0))(
  ( (Nil!44078) (Cons!44078 (h!49498 (_ BitVec 16)) (t!339859 List!44202)) )
))
(declare-datatypes ((TokenValue!7380 0))(
  ( (FloatLiteralValue!14760 (text!52105 List!44202)) (TokenValueExt!7379 (__x!26977 Int)) (Broken!36900 (value!224387 List!44202)) (Object!7503) (End!7380) (Def!7380) (Underscore!7380) (Match!7380) (Else!7380) (Error!7380) (Case!7380) (If!7380) (Extends!7380) (Abstract!7380) (Class!7380) (Val!7380) (DelimiterValue!14760 (del!7440 List!44202)) (KeywordValue!7386 (value!224388 List!44202)) (CommentValue!14760 (value!224389 List!44202)) (WhitespaceValue!14760 (value!224390 List!44202)) (IndentationValue!7380 (value!224391 List!44202)) (String!50649) (Int32!7380) (Broken!36901 (value!224392 List!44202)) (Boolean!7381) (Unit!63590) (OperatorValue!7383 (op!7440 List!44202)) (IdentifierValue!14760 (value!224393 List!44202)) (IdentifierValue!14761 (value!224394 List!44202)) (WhitespaceValue!14761 (value!224395 List!44202)) (True!14760) (False!14760) (Broken!36902 (value!224396 List!44202)) (Broken!36903 (value!224397 List!44202)) (True!14761) (RightBrace!7380) (RightBracket!7380) (Colon!7380) (Null!7380) (Comma!7380) (LeftBracket!7380) (False!14761) (LeftBrace!7380) (ImaginaryLiteralValue!7380 (text!52106 List!44202)) (StringLiteralValue!22140 (value!224398 List!44202)) (EOFValue!7380 (value!224399 List!44202)) (IdentValue!7380 (value!224400 List!44202)) (DelimiterValue!14761 (value!224401 List!44202)) (DedentValue!7380 (value!224402 List!44202)) (NewLineValue!7380 (value!224403 List!44202)) (IntegerValue!22140 (value!224404 (_ BitVec 32)) (text!52107 List!44202)) (IntegerValue!22141 (value!224405 Int) (text!52108 List!44202)) (Times!7380) (Or!7380) (Equal!7380) (Minus!7380) (Broken!36904 (value!224406 List!44202)) (And!7380) (Div!7380) (LessEqual!7380) (Mod!7380) (Concat!19435) (Not!7380) (Plus!7380) (SpaceValue!7380 (value!224407 List!44202)) (IntegerValue!22142 (value!224408 Int) (text!52109 List!44202)) (StringLiteralValue!22141 (text!52110 List!44202)) (FloatLiteralValue!14761 (text!52111 List!44202)) (BytesLiteralValue!7380 (value!224409 List!44202)) (CommentValue!14761 (value!224410 List!44202)) (StringLiteralValue!22142 (value!224411 List!44202)) (ErrorTokenValue!7380 (msg!7441 List!44202)) )
))
(declare-datatypes ((C!24296 0))(
  ( (C!24297 (val!14258 Int)) )
))
(declare-datatypes ((Regex!12055 0))(
  ( (ElementMatch!12055 (c!706542 C!24296)) (Concat!19436 (regOne!24622 Regex!12055) (regTwo!24622 Regex!12055)) (EmptyExpr!12055) (Star!12055 (reg!12384 Regex!12055)) (EmptyLang!12055) (Union!12055 (regOne!24623 Regex!12055) (regTwo!24623 Regex!12055)) )
))
(declare-datatypes ((String!50650 0))(
  ( (String!50651 (value!224412 String)) )
))
(declare-datatypes ((List!44203 0))(
  ( (Nil!44079) (Cons!44079 (h!49499 C!24296) (t!339860 List!44203)) )
))
(declare-datatypes ((IArray!26727 0))(
  ( (IArray!26728 (innerList!13421 List!44203)) )
))
(declare-datatypes ((Conc!13361 0))(
  ( (Node!13361 (left!33102 Conc!13361) (right!33432 Conc!13361) (csize!26952 Int) (cheight!13572 Int)) (Leaf!20651 (xs!16667 IArray!26727) (csize!26953 Int)) (Empty!13361) )
))
(declare-datatypes ((BalanceConc!26316 0))(
  ( (BalanceConc!26317 (c!706543 Conc!13361)) )
))
(declare-datatypes ((TokenValueInjection!14188 0))(
  ( (TokenValueInjection!14189 (toValue!9762 Int) (toChars!9621 Int)) )
))
(declare-datatypes ((Rule!14100 0))(
  ( (Rule!14101 (regex!7150 Regex!12055) (tag!8010 String!50650) (isSeparator!7150 Bool) (transformation!7150 TokenValueInjection!14188)) )
))
(declare-datatypes ((Token!13398 0))(
  ( (Token!13399 (value!224413 TokenValue!7380) (rule!10294 Rule!14100) (size!32869 Int) (originalCharacters!7730 List!44203)) )
))
(declare-datatypes ((tuple2!42916 0))(
  ( (tuple2!42917 (_1!24592 Token!13398) (_2!24592 List!44203)) )
))
(declare-datatypes ((Option!9542 0))(
  ( (None!9541) (Some!9541 (v!40053 tuple2!42916)) )
))
(declare-fun lt!1467103 () Option!9542)

(declare-fun input!3491 () List!44203)

(declare-datatypes ((LexerInterface!6739 0))(
  ( (LexerInterfaceExt!6736 (__x!26978 Int)) (Lexer!6737) )
))
(declare-fun thiss!26455 () LexerInterface!6739)

(declare-datatypes ((List!44204 0))(
  ( (Nil!44080) (Cons!44080 (h!49500 Rule!14100) (t!339861 List!44204)) )
))
(declare-fun rTail!27 () List!44204)

(declare-fun maxPrefix!4015 (LexerInterface!6739 List!44204 List!44203) Option!9542)

(assert (=> b!4102466 (= lt!1467103 (maxPrefix!4015 thiss!26455 rTail!27 input!3491))))

(declare-fun res!1677131 () Bool)

(declare-fun e!2545839 () Bool)

(assert (=> start!388712 (=> (not res!1677131) (not e!2545839))))

(get-info :version)

(assert (=> start!388712 (= res!1677131 ((_ is Lexer!6737) thiss!26455))))

(assert (=> start!388712 e!2545839))

(assert (=> start!388712 true))

(declare-fun e!2545835 () Bool)

(assert (=> start!388712 e!2545835))

(declare-fun e!2545837 () Bool)

(assert (=> start!388712 e!2545837))

(declare-fun e!2545834 () Bool)

(assert (=> start!388712 e!2545834))

(declare-fun e!2545842 () Bool)

(assert (=> b!4102467 (= e!2545842 (and tp!1242844 tp!1242840))))

(declare-fun rHead!24 () Rule!14100)

(declare-fun tp!1242843 () Bool)

(declare-fun b!4102468 () Bool)

(declare-fun inv!58778 (String!50650) Bool)

(declare-fun inv!58780 (TokenValueInjection!14188) Bool)

(assert (=> b!4102468 (= e!2545834 (and tp!1242843 (inv!58778 (tag!8010 rHead!24)) (inv!58780 (transformation!7150 rHead!24)) e!2545842))))

(declare-fun b!4102469 () Bool)

(declare-fun e!2545836 () Bool)

(declare-fun tp!1242837 () Bool)

(assert (=> b!4102469 (= e!2545835 (and e!2545836 tp!1242837))))

(declare-fun e!2545833 () Bool)

(assert (=> b!4102470 (= e!2545833 (and tp!1242842 tp!1242841))))

(declare-fun b!4102471 () Bool)

(declare-fun tp_is_empty!21089 () Bool)

(declare-fun tp!1242838 () Bool)

(assert (=> b!4102471 (= e!2545837 (and tp_is_empty!21089 tp!1242838))))

(declare-fun b!4102472 () Bool)

(declare-fun e!2545840 () Bool)

(assert (=> b!4102472 (= e!2545840 (not e!2545832))))

(declare-fun res!1677129 () Bool)

(assert (=> b!4102472 (=> res!1677129 e!2545832)))

(declare-fun isEmpty!26355 (List!44204) Bool)

(assert (=> b!4102472 (= res!1677129 (not (isEmpty!26355 (t!339861 rTail!27))))))

(assert (=> b!4102472 (not (= (tag!8010 rHead!24) (tag!8010 (h!49500 rTail!27))))))

(declare-fun lt!1467102 () List!44204)

(declare-datatypes ((Unit!63591 0))(
  ( (Unit!63592) )
))
(declare-fun lt!1467101 () Unit!63591)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!26 (LexerInterface!6739 List!44204 Rule!14100 Rule!14100) Unit!63591)

(assert (=> b!4102472 (= lt!1467101 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!26 thiss!26455 lt!1467102 rHead!24 (h!49500 rTail!27)))))

(declare-datatypes ((List!44205 0))(
  ( (Nil!44081) (Cons!44081 (h!49501 String!50650) (t!339862 List!44205)) )
))
(declare-fun noDuplicateTag!2829 (LexerInterface!6739 List!44204 List!44205) Bool)

(assert (=> b!4102472 (noDuplicateTag!2829 thiss!26455 (Cons!44080 (h!49500 rTail!27) (Cons!44080 rHead!24 (t!339861 rTail!27))) Nil!44081)))

(declare-fun lt!1467100 () Unit!63591)

(declare-fun lemmaNoDuplicateCanReorder!28 (LexerInterface!6739 Rule!14100 Rule!14100 List!44204) Unit!63591)

(assert (=> b!4102472 (= lt!1467100 (lemmaNoDuplicateCanReorder!28 thiss!26455 rHead!24 (h!49500 rTail!27) (t!339861 rTail!27)))))

(declare-fun b!4102473 () Bool)

(declare-fun res!1677132 () Bool)

(assert (=> b!4102473 (=> (not res!1677132) (not e!2545840))))

(assert (=> b!4102473 (= res!1677132 ((_ is Cons!44080) rTail!27))))

(declare-fun b!4102474 () Bool)

(assert (=> b!4102474 (= e!2545839 e!2545840)))

(declare-fun res!1677128 () Bool)

(assert (=> b!4102474 (=> (not res!1677128) (not e!2545840))))

(declare-fun rulesInvariant!6082 (LexerInterface!6739 List!44204) Bool)

(assert (=> b!4102474 (= res!1677128 (rulesInvariant!6082 thiss!26455 lt!1467102))))

(assert (=> b!4102474 (= lt!1467102 (Cons!44080 rHead!24 rTail!27))))

(declare-fun b!4102475 () Bool)

(declare-fun tp!1242839 () Bool)

(assert (=> b!4102475 (= e!2545836 (and tp!1242839 (inv!58778 (tag!8010 (h!49500 rTail!27))) (inv!58780 (transformation!7150 (h!49500 rTail!27))) e!2545833))))

(declare-fun b!4102476 () Bool)

(declare-fun res!1677130 () Bool)

(assert (=> b!4102476 (=> (not res!1677130) (not e!2545839))))

(assert (=> b!4102476 (= res!1677130 (not (isEmpty!26355 rTail!27)))))

(assert (= (and start!388712 res!1677131) b!4102476))

(assert (= (and b!4102476 res!1677130) b!4102474))

(assert (= (and b!4102474 res!1677128) b!4102473))

(assert (= (and b!4102473 res!1677132) b!4102472))

(assert (= (and b!4102472 (not res!1677129)) b!4102466))

(assert (= b!4102475 b!4102470))

(assert (= b!4102469 b!4102475))

(assert (= (and start!388712 ((_ is Cons!44080) rTail!27)) b!4102469))

(assert (= (and start!388712 ((_ is Cons!44079) input!3491)) b!4102471))

(assert (= b!4102468 b!4102467))

(assert (= start!388712 b!4102468))

(declare-fun m!4708623 () Bool)

(assert (=> b!4102476 m!4708623))

(declare-fun m!4708625 () Bool)

(assert (=> b!4102472 m!4708625))

(declare-fun m!4708627 () Bool)

(assert (=> b!4102472 m!4708627))

(declare-fun m!4708629 () Bool)

(assert (=> b!4102472 m!4708629))

(declare-fun m!4708631 () Bool)

(assert (=> b!4102472 m!4708631))

(declare-fun m!4708633 () Bool)

(assert (=> b!4102475 m!4708633))

(declare-fun m!4708635 () Bool)

(assert (=> b!4102475 m!4708635))

(declare-fun m!4708637 () Bool)

(assert (=> b!4102468 m!4708637))

(declare-fun m!4708639 () Bool)

(assert (=> b!4102468 m!4708639))

(declare-fun m!4708641 () Bool)

(assert (=> b!4102474 m!4708641))

(declare-fun m!4708643 () Bool)

(assert (=> b!4102466 m!4708643))

(check-sat (not b!4102472) (not b_next!115673) b_and!316783 (not b!4102468) (not b!4102466) (not b!4102476) tp_is_empty!21089 b_and!316785 (not b_next!115675) (not b!4102471) (not b!4102469) b_and!316789 (not b!4102474) (not b!4102475) b_and!316787 (not b_next!115679) (not b_next!115677))
(check-sat (not b_next!115673) b_and!316783 b_and!316785 (not b_next!115675) b_and!316789 b_and!316787 (not b_next!115679) (not b_next!115677))
