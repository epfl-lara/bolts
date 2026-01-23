; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388708 () Bool)

(assert start!388708)

(declare-fun b!4102403 () Bool)

(declare-fun b_free!114953 () Bool)

(declare-fun b_next!115657 () Bool)

(assert (=> b!4102403 (= b_free!114953 (not b_next!115657))))

(declare-fun tp!1242796 () Bool)

(declare-fun b_and!316767 () Bool)

(assert (=> b!4102403 (= tp!1242796 b_and!316767)))

(declare-fun b_free!114955 () Bool)

(declare-fun b_next!115659 () Bool)

(assert (=> b!4102403 (= b_free!114955 (not b_next!115659))))

(declare-fun tp!1242791 () Bool)

(declare-fun b_and!316769 () Bool)

(assert (=> b!4102403 (= tp!1242791 b_and!316769)))

(declare-fun b!4102408 () Bool)

(declare-fun b_free!114957 () Bool)

(declare-fun b_next!115661 () Bool)

(assert (=> b!4102408 (= b_free!114957 (not b_next!115661))))

(declare-fun tp!1242794 () Bool)

(declare-fun b_and!316771 () Bool)

(assert (=> b!4102408 (= tp!1242794 b_and!316771)))

(declare-fun b_free!114959 () Bool)

(declare-fun b_next!115663 () Bool)

(assert (=> b!4102408 (= b_free!114959 (not b_next!115663))))

(declare-fun tp!1242790 () Bool)

(declare-fun b_and!316773 () Bool)

(assert (=> b!4102408 (= tp!1242790 b_and!316773)))

(declare-fun b!4102401 () Bool)

(declare-fun e!2545773 () Bool)

(declare-fun e!2545768 () Bool)

(assert (=> b!4102401 (= e!2545773 e!2545768)))

(declare-fun res!1677099 () Bool)

(assert (=> b!4102401 (=> (not res!1677099) (not e!2545768))))

(declare-datatypes ((LexerInterface!6737 0))(
  ( (LexerInterfaceExt!6734 (__x!26973 Int)) (Lexer!6735) )
))
(declare-fun thiss!26455 () LexerInterface!6737)

(declare-datatypes ((C!24292 0))(
  ( (C!24293 (val!14256 Int)) )
))
(declare-datatypes ((List!44194 0))(
  ( (Nil!44070) (Cons!44070 (h!49490 C!24292) (t!339851 List!44194)) )
))
(declare-datatypes ((IArray!26723 0))(
  ( (IArray!26724 (innerList!13419 List!44194)) )
))
(declare-datatypes ((Conc!13359 0))(
  ( (Node!13359 (left!33099 Conc!13359) (right!33429 Conc!13359) (csize!26948 Int) (cheight!13570 Int)) (Leaf!20648 (xs!16665 IArray!26723) (csize!26949 Int)) (Empty!13359) )
))
(declare-datatypes ((List!44195 0))(
  ( (Nil!44071) (Cons!44071 (h!49491 (_ BitVec 16)) (t!339852 List!44195)) )
))
(declare-datatypes ((Regex!12053 0))(
  ( (ElementMatch!12053 (c!706536 C!24292)) (Concat!19431 (regOne!24618 Regex!12053) (regTwo!24618 Regex!12053)) (EmptyExpr!12053) (Star!12053 (reg!12382 Regex!12053)) (EmptyLang!12053) (Union!12053 (regOne!24619 Regex!12053) (regTwo!24619 Regex!12053)) )
))
(declare-datatypes ((TokenValue!7378 0))(
  ( (FloatLiteralValue!14756 (text!52091 List!44195)) (TokenValueExt!7377 (__x!26974 Int)) (Broken!36890 (value!224331 List!44195)) (Object!7501) (End!7378) (Def!7378) (Underscore!7378) (Match!7378) (Else!7378) (Error!7378) (Case!7378) (If!7378) (Extends!7378) (Abstract!7378) (Class!7378) (Val!7378) (DelimiterValue!14756 (del!7438 List!44195)) (KeywordValue!7384 (value!224332 List!44195)) (CommentValue!14756 (value!224333 List!44195)) (WhitespaceValue!14756 (value!224334 List!44195)) (IndentationValue!7378 (value!224335 List!44195)) (String!50639) (Int32!7378) (Broken!36891 (value!224336 List!44195)) (Boolean!7379) (Unit!63584) (OperatorValue!7381 (op!7438 List!44195)) (IdentifierValue!14756 (value!224337 List!44195)) (IdentifierValue!14757 (value!224338 List!44195)) (WhitespaceValue!14757 (value!224339 List!44195)) (True!14756) (False!14756) (Broken!36892 (value!224340 List!44195)) (Broken!36893 (value!224341 List!44195)) (True!14757) (RightBrace!7378) (RightBracket!7378) (Colon!7378) (Null!7378) (Comma!7378) (LeftBracket!7378) (False!14757) (LeftBrace!7378) (ImaginaryLiteralValue!7378 (text!52092 List!44195)) (StringLiteralValue!22134 (value!224342 List!44195)) (EOFValue!7378 (value!224343 List!44195)) (IdentValue!7378 (value!224344 List!44195)) (DelimiterValue!14757 (value!224345 List!44195)) (DedentValue!7378 (value!224346 List!44195)) (NewLineValue!7378 (value!224347 List!44195)) (IntegerValue!22134 (value!224348 (_ BitVec 32)) (text!52093 List!44195)) (IntegerValue!22135 (value!224349 Int) (text!52094 List!44195)) (Times!7378) (Or!7378) (Equal!7378) (Minus!7378) (Broken!36894 (value!224350 List!44195)) (And!7378) (Div!7378) (LessEqual!7378) (Mod!7378) (Concat!19432) (Not!7378) (Plus!7378) (SpaceValue!7378 (value!224351 List!44195)) (IntegerValue!22136 (value!224352 Int) (text!52095 List!44195)) (StringLiteralValue!22135 (text!52096 List!44195)) (FloatLiteralValue!14757 (text!52097 List!44195)) (BytesLiteralValue!7378 (value!224353 List!44195)) (CommentValue!14757 (value!224354 List!44195)) (StringLiteralValue!22136 (value!224355 List!44195)) (ErrorTokenValue!7378 (msg!7439 List!44195)) )
))
(declare-datatypes ((BalanceConc!26312 0))(
  ( (BalanceConc!26313 (c!706537 Conc!13359)) )
))
(declare-datatypes ((TokenValueInjection!14184 0))(
  ( (TokenValueInjection!14185 (toValue!9760 Int) (toChars!9619 Int)) )
))
(declare-datatypes ((String!50640 0))(
  ( (String!50641 (value!224356 String)) )
))
(declare-datatypes ((Rule!14096 0))(
  ( (Rule!14097 (regex!7148 Regex!12053) (tag!8008 String!50640) (isSeparator!7148 Bool) (transformation!7148 TokenValueInjection!14184)) )
))
(declare-datatypes ((List!44196 0))(
  ( (Nil!44072) (Cons!44072 (h!49492 Rule!14096) (t!339853 List!44196)) )
))
(declare-fun lt!1467079 () List!44196)

(declare-fun rulesInvariant!6080 (LexerInterface!6737 List!44196) Bool)

(assert (=> b!4102401 (= res!1677099 (rulesInvariant!6080 thiss!26455 lt!1467079))))

(declare-fun rHead!24 () Rule!14096)

(declare-fun rTail!27 () List!44196)

(assert (=> b!4102401 (= lt!1467079 (Cons!44072 rHead!24 rTail!27))))

(declare-fun b!4102402 () Bool)

(declare-fun e!2545771 () Bool)

(declare-fun e!2545770 () Bool)

(declare-fun tp!1242795 () Bool)

(assert (=> b!4102402 (= e!2545771 (and e!2545770 tp!1242795))))

(declare-fun e!2545772 () Bool)

(assert (=> b!4102403 (= e!2545772 (and tp!1242796 tp!1242791))))

(declare-fun b!4102404 () Bool)

(declare-fun e!2545776 () Bool)

(assert (=> b!4102404 (= e!2545776 true)))

(declare-fun lt!1467076 () Bool)

(declare-fun rulesValidInductive!2651 (LexerInterface!6737 List!44196) Bool)

(assert (=> b!4102404 (= lt!1467076 (rulesValidInductive!2651 thiss!26455 rTail!27))))

(declare-fun res!1677101 () Bool)

(assert (=> start!388708 (=> (not res!1677101) (not e!2545773))))

(get-info :version)

(assert (=> start!388708 (= res!1677101 ((_ is Lexer!6735) thiss!26455))))

(assert (=> start!388708 e!2545773))

(assert (=> start!388708 true))

(assert (=> start!388708 e!2545771))

(declare-fun e!2545774 () Bool)

(assert (=> start!388708 e!2545774))

(declare-fun b!4102405 () Bool)

(declare-fun res!1677100 () Bool)

(assert (=> b!4102405 (=> (not res!1677100) (not e!2545768))))

(assert (=> b!4102405 (= res!1677100 ((_ is Cons!44072) rTail!27))))

(declare-fun b!4102406 () Bool)

(assert (=> b!4102406 (= e!2545768 (not e!2545776))))

(declare-fun res!1677098 () Bool)

(assert (=> b!4102406 (=> res!1677098 e!2545776)))

(declare-fun isEmpty!26353 (List!44196) Bool)

(assert (=> b!4102406 (= res!1677098 (not (isEmpty!26353 (t!339853 rTail!27))))))

(assert (=> b!4102406 (not (= (tag!8008 rHead!24) (tag!8008 (h!49492 rTail!27))))))

(declare-datatypes ((Unit!63585 0))(
  ( (Unit!63586) )
))
(declare-fun lt!1467078 () Unit!63585)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!24 (LexerInterface!6737 List!44196 Rule!14096 Rule!14096) Unit!63585)

(assert (=> b!4102406 (= lt!1467078 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!24 thiss!26455 lt!1467079 rHead!24 (h!49492 rTail!27)))))

(declare-datatypes ((List!44197 0))(
  ( (Nil!44073) (Cons!44073 (h!49493 String!50640) (t!339854 List!44197)) )
))
(declare-fun noDuplicateTag!2827 (LexerInterface!6737 List!44196 List!44197) Bool)

(assert (=> b!4102406 (noDuplicateTag!2827 thiss!26455 (Cons!44072 (h!49492 rTail!27) (Cons!44072 rHead!24 (t!339853 rTail!27))) Nil!44073)))

(declare-fun lt!1467077 () Unit!63585)

(declare-fun lemmaNoDuplicateCanReorder!26 (LexerInterface!6737 Rule!14096 Rule!14096 List!44196) Unit!63585)

(assert (=> b!4102406 (= lt!1467077 (lemmaNoDuplicateCanReorder!26 thiss!26455 rHead!24 (h!49492 rTail!27) (t!339853 rTail!27)))))

(declare-fun b!4102407 () Bool)

(declare-fun res!1677102 () Bool)

(assert (=> b!4102407 (=> (not res!1677102) (not e!2545773))))

(assert (=> b!4102407 (= res!1677102 (not (isEmpty!26353 rTail!27)))))

(declare-fun e!2545769 () Bool)

(assert (=> b!4102408 (= e!2545769 (and tp!1242794 tp!1242790))))

(declare-fun tp!1242792 () Bool)

(declare-fun b!4102409 () Bool)

(declare-fun inv!58773 (String!50640) Bool)

(declare-fun inv!58775 (TokenValueInjection!14184) Bool)

(assert (=> b!4102409 (= e!2545770 (and tp!1242792 (inv!58773 (tag!8008 (h!49492 rTail!27))) (inv!58775 (transformation!7148 (h!49492 rTail!27))) e!2545772))))

(declare-fun tp!1242793 () Bool)

(declare-fun b!4102410 () Bool)

(assert (=> b!4102410 (= e!2545774 (and tp!1242793 (inv!58773 (tag!8008 rHead!24)) (inv!58775 (transformation!7148 rHead!24)) e!2545769))))

(assert (= (and start!388708 res!1677101) b!4102407))

(assert (= (and b!4102407 res!1677102) b!4102401))

(assert (= (and b!4102401 res!1677099) b!4102405))

(assert (= (and b!4102405 res!1677100) b!4102406))

(assert (= (and b!4102406 (not res!1677098)) b!4102404))

(assert (= b!4102409 b!4102403))

(assert (= b!4102402 b!4102409))

(assert (= (and start!388708 ((_ is Cons!44072) rTail!27)) b!4102402))

(assert (= b!4102410 b!4102408))

(assert (= start!388708 b!4102410))

(declare-fun m!4708579 () Bool)

(assert (=> b!4102404 m!4708579))

(declare-fun m!4708581 () Bool)

(assert (=> b!4102409 m!4708581))

(declare-fun m!4708583 () Bool)

(assert (=> b!4102409 m!4708583))

(declare-fun m!4708585 () Bool)

(assert (=> b!4102407 m!4708585))

(declare-fun m!4708587 () Bool)

(assert (=> b!4102406 m!4708587))

(declare-fun m!4708589 () Bool)

(assert (=> b!4102406 m!4708589))

(declare-fun m!4708591 () Bool)

(assert (=> b!4102406 m!4708591))

(declare-fun m!4708593 () Bool)

(assert (=> b!4102406 m!4708593))

(declare-fun m!4708595 () Bool)

(assert (=> b!4102401 m!4708595))

(declare-fun m!4708597 () Bool)

(assert (=> b!4102410 m!4708597))

(declare-fun m!4708599 () Bool)

(assert (=> b!4102410 m!4708599))

(check-sat (not b_next!115661) (not b!4102407) (not b_next!115657) (not b!4102409) (not b!4102404) b_and!316767 (not b_next!115659) b_and!316773 (not b!4102401) (not b!4102402) (not b!4102410) (not b!4102406) b_and!316771 b_and!316769 (not b_next!115663))
(check-sat (not b_next!115661) (not b_next!115657) b_and!316771 b_and!316767 (not b_next!115659) b_and!316773 b_and!316769 (not b_next!115663))
