; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388612 () Bool)

(assert start!388612)

(declare-fun b!4101440 () Bool)

(declare-fun b_free!114897 () Bool)

(declare-fun b_next!115601 () Bool)

(assert (=> b!4101440 (= b_free!114897 (not b_next!115601))))

(declare-fun tp!1241958 () Bool)

(declare-fun b_and!316711 () Bool)

(assert (=> b!4101440 (= tp!1241958 b_and!316711)))

(declare-fun b_free!114899 () Bool)

(declare-fun b_next!115603 () Bool)

(assert (=> b!4101440 (= b_free!114899 (not b_next!115603))))

(declare-fun tp!1241960 () Bool)

(declare-fun b_and!316713 () Bool)

(assert (=> b!4101440 (= tp!1241960 b_and!316713)))

(declare-fun b!4101432 () Bool)

(declare-fun b_free!114901 () Bool)

(declare-fun b_next!115605 () Bool)

(assert (=> b!4101432 (= b_free!114901 (not b_next!115605))))

(declare-fun tp!1241956 () Bool)

(declare-fun b_and!316715 () Bool)

(assert (=> b!4101432 (= tp!1241956 b_and!316715)))

(declare-fun b_free!114903 () Bool)

(declare-fun b_next!115607 () Bool)

(assert (=> b!4101432 (= b_free!114903 (not b_next!115607))))

(declare-fun tp!1241957 () Bool)

(declare-fun b_and!316717 () Bool)

(assert (=> b!4101432 (= tp!1241957 b_and!316717)))

(declare-fun e!2545268 () Bool)

(assert (=> b!4101432 (= e!2545268 (and tp!1241956 tp!1241957))))

(declare-fun b!4101433 () Bool)

(declare-fun e!2545267 () Bool)

(declare-fun e!2545270 () Bool)

(declare-fun tp!1241959 () Bool)

(assert (=> b!4101433 (= e!2545267 (and e!2545270 tp!1241959))))

(declare-fun b!4101434 () Bool)

(declare-fun res!1676828 () Bool)

(declare-fun e!2545266 () Bool)

(assert (=> b!4101434 (=> (not res!1676828) (not e!2545266))))

(declare-datatypes ((C!24284 0))(
  ( (C!24285 (val!14252 Int)) )
))
(declare-datatypes ((List!44178 0))(
  ( (Nil!44054) (Cons!44054 (h!49474 C!24284) (t!339835 List!44178)) )
))
(declare-datatypes ((IArray!26715 0))(
  ( (IArray!26716 (innerList!13415 List!44178)) )
))
(declare-datatypes ((Conc!13355 0))(
  ( (Node!13355 (left!33089 Conc!13355) (right!33419 Conc!13355) (csize!26940 Int) (cheight!13566 Int)) (Leaf!20642 (xs!16661 IArray!26715) (csize!26941 Int)) (Empty!13355) )
))
(declare-datatypes ((List!44179 0))(
  ( (Nil!44055) (Cons!44055 (h!49475 (_ BitVec 16)) (t!339836 List!44179)) )
))
(declare-datatypes ((Regex!12049 0))(
  ( (ElementMatch!12049 (c!706510 C!24284)) (Concat!19423 (regOne!24610 Regex!12049) (regTwo!24610 Regex!12049)) (EmptyExpr!12049) (Star!12049 (reg!12378 Regex!12049)) (EmptyLang!12049) (Union!12049 (regOne!24611 Regex!12049) (regTwo!24611 Regex!12049)) )
))
(declare-datatypes ((TokenValue!7374 0))(
  ( (FloatLiteralValue!14748 (text!52063 List!44179)) (TokenValueExt!7373 (__x!26965 Int)) (Broken!36870 (value!224221 List!44179)) (Object!7497) (End!7374) (Def!7374) (Underscore!7374) (Match!7374) (Else!7374) (Error!7374) (Case!7374) (If!7374) (Extends!7374) (Abstract!7374) (Class!7374) (Val!7374) (DelimiterValue!14748 (del!7434 List!44179)) (KeywordValue!7380 (value!224222 List!44179)) (CommentValue!14748 (value!224223 List!44179)) (WhitespaceValue!14748 (value!224224 List!44179)) (IndentationValue!7374 (value!224225 List!44179)) (String!50619) (Int32!7374) (Broken!36871 (value!224226 List!44179)) (Boolean!7375) (Unit!63572) (OperatorValue!7377 (op!7434 List!44179)) (IdentifierValue!14748 (value!224227 List!44179)) (IdentifierValue!14749 (value!224228 List!44179)) (WhitespaceValue!14749 (value!224229 List!44179)) (True!14748) (False!14748) (Broken!36872 (value!224230 List!44179)) (Broken!36873 (value!224231 List!44179)) (True!14749) (RightBrace!7374) (RightBracket!7374) (Colon!7374) (Null!7374) (Comma!7374) (LeftBracket!7374) (False!14749) (LeftBrace!7374) (ImaginaryLiteralValue!7374 (text!52064 List!44179)) (StringLiteralValue!22122 (value!224232 List!44179)) (EOFValue!7374 (value!224233 List!44179)) (IdentValue!7374 (value!224234 List!44179)) (DelimiterValue!14749 (value!224235 List!44179)) (DedentValue!7374 (value!224236 List!44179)) (NewLineValue!7374 (value!224237 List!44179)) (IntegerValue!22122 (value!224238 (_ BitVec 32)) (text!52065 List!44179)) (IntegerValue!22123 (value!224239 Int) (text!52066 List!44179)) (Times!7374) (Or!7374) (Equal!7374) (Minus!7374) (Broken!36874 (value!224240 List!44179)) (And!7374) (Div!7374) (LessEqual!7374) (Mod!7374) (Concat!19424) (Not!7374) (Plus!7374) (SpaceValue!7374 (value!224241 List!44179)) (IntegerValue!22124 (value!224242 Int) (text!52067 List!44179)) (StringLiteralValue!22123 (text!52068 List!44179)) (FloatLiteralValue!14749 (text!52069 List!44179)) (BytesLiteralValue!7374 (value!224243 List!44179)) (CommentValue!14749 (value!224244 List!44179)) (StringLiteralValue!22124 (value!224245 List!44179)) (ErrorTokenValue!7374 (msg!7435 List!44179)) )
))
(declare-datatypes ((BalanceConc!26304 0))(
  ( (BalanceConc!26305 (c!706511 Conc!13355)) )
))
(declare-datatypes ((TokenValueInjection!14176 0))(
  ( (TokenValueInjection!14177 (toValue!9752 Int) (toChars!9611 Int)) )
))
(declare-datatypes ((String!50620 0))(
  ( (String!50621 (value!224246 String)) )
))
(declare-datatypes ((Rule!14088 0))(
  ( (Rule!14089 (regex!7144 Regex!12049) (tag!8004 String!50620) (isSeparator!7144 Bool) (transformation!7144 TokenValueInjection!14176)) )
))
(declare-datatypes ((List!44180 0))(
  ( (Nil!44056) (Cons!44056 (h!49476 Rule!14088) (t!339837 List!44180)) )
))
(declare-fun rTail!27 () List!44180)

(get-info :version)

(assert (=> b!4101434 (= res!1676828 ((_ is Cons!44056) rTail!27))))

(declare-fun b!4101435 () Bool)

(declare-fun e!2545264 () Bool)

(assert (=> b!4101435 (= e!2545264 e!2545266)))

(declare-fun res!1676830 () Bool)

(assert (=> b!4101435 (=> (not res!1676830) (not e!2545266))))

(declare-datatypes ((LexerInterface!6733 0))(
  ( (LexerInterfaceExt!6730 (__x!26966 Int)) (Lexer!6731) )
))
(declare-fun thiss!26455 () LexerInterface!6733)

(declare-fun lt!1466985 () List!44180)

(declare-fun rulesInvariant!6076 (LexerInterface!6733 List!44180) Bool)

(assert (=> b!4101435 (= res!1676830 (rulesInvariant!6076 thiss!26455 lt!1466985))))

(declare-fun rHead!24 () Rule!14088)

(assert (=> b!4101435 (= lt!1466985 (Cons!44056 rHead!24 rTail!27))))

(declare-fun b!4101436 () Bool)

(declare-fun res!1676831 () Bool)

(assert (=> b!4101436 (=> (not res!1676831) (not e!2545264))))

(declare-fun isEmpty!26349 (List!44180) Bool)

(assert (=> b!4101436 (= res!1676831 (not (isEmpty!26349 rTail!27)))))

(declare-fun e!2545265 () Bool)

(declare-fun tp!1241962 () Bool)

(declare-fun b!4101437 () Bool)

(declare-fun inv!58763 (String!50620) Bool)

(declare-fun inv!58765 (TokenValueInjection!14176) Bool)

(assert (=> b!4101437 (= e!2545265 (and tp!1241962 (inv!58763 (tag!8004 rHead!24)) (inv!58765 (transformation!7144 rHead!24)) e!2545268))))

(declare-fun b!4101438 () Bool)

(declare-fun tp!1241961 () Bool)

(declare-fun e!2545269 () Bool)

(assert (=> b!4101438 (= e!2545270 (and tp!1241961 (inv!58763 (tag!8004 (h!49476 rTail!27))) (inv!58765 (transformation!7144 (h!49476 rTail!27))) e!2545269))))

(declare-fun b!4101439 () Bool)

(assert (=> b!4101439 (= e!2545266 (not true))))

(assert (=> b!4101439 (not (= (tag!8004 rHead!24) (tag!8004 (h!49476 rTail!27))))))

(declare-datatypes ((Unit!63573 0))(
  ( (Unit!63574) )
))
(declare-fun lt!1466986 () Unit!63573)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!20 (LexerInterface!6733 List!44180 Rule!14088 Rule!14088) Unit!63573)

(assert (=> b!4101439 (= lt!1466986 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!20 thiss!26455 lt!1466985 rHead!24 (h!49476 rTail!27)))))

(declare-datatypes ((List!44181 0))(
  ( (Nil!44057) (Cons!44057 (h!49477 String!50620) (t!339838 List!44181)) )
))
(declare-fun noDuplicateTag!2823 (LexerInterface!6733 List!44180 List!44181) Bool)

(assert (=> b!4101439 (noDuplicateTag!2823 thiss!26455 (Cons!44056 (h!49476 rTail!27) (Cons!44056 rHead!24 (t!339837 rTail!27))) Nil!44057)))

(declare-fun lt!1466987 () Unit!63573)

(declare-fun lemmaNoDuplicateCanReorder!22 (LexerInterface!6733 Rule!14088 Rule!14088 List!44180) Unit!63573)

(assert (=> b!4101439 (= lt!1466987 (lemmaNoDuplicateCanReorder!22 thiss!26455 rHead!24 (h!49476 rTail!27) (t!339837 rTail!27)))))

(declare-fun res!1676829 () Bool)

(assert (=> start!388612 (=> (not res!1676829) (not e!2545264))))

(assert (=> start!388612 (= res!1676829 ((_ is Lexer!6731) thiss!26455))))

(assert (=> start!388612 e!2545264))

(assert (=> start!388612 true))

(assert (=> start!388612 e!2545267))

(assert (=> start!388612 e!2545265))

(assert (=> b!4101440 (= e!2545269 (and tp!1241958 tp!1241960))))

(assert (= (and start!388612 res!1676829) b!4101436))

(assert (= (and b!4101436 res!1676831) b!4101435))

(assert (= (and b!4101435 res!1676830) b!4101434))

(assert (= (and b!4101434 res!1676828) b!4101439))

(assert (= b!4101438 b!4101440))

(assert (= b!4101433 b!4101438))

(assert (= (and start!388612 ((_ is Cons!44056) rTail!27)) b!4101433))

(assert (= b!4101437 b!4101432))

(assert (= start!388612 b!4101437))

(declare-fun m!4708131 () Bool)

(assert (=> b!4101436 m!4708131))

(declare-fun m!4708133 () Bool)

(assert (=> b!4101435 m!4708133))

(declare-fun m!4708135 () Bool)

(assert (=> b!4101438 m!4708135))

(declare-fun m!4708137 () Bool)

(assert (=> b!4101438 m!4708137))

(declare-fun m!4708139 () Bool)

(assert (=> b!4101437 m!4708139))

(declare-fun m!4708141 () Bool)

(assert (=> b!4101437 m!4708141))

(declare-fun m!4708143 () Bool)

(assert (=> b!4101439 m!4708143))

(declare-fun m!4708145 () Bool)

(assert (=> b!4101439 m!4708145))

(declare-fun m!4708147 () Bool)

(assert (=> b!4101439 m!4708147))

(check-sat (not b!4101436) b_and!316715 (not b!4101439) (not b!4101435) (not b_next!115601) (not b_next!115603) (not b!4101437) b_and!316717 (not b!4101438) b_and!316713 (not b_next!115605) (not b!4101433) (not b_next!115607) b_and!316711)
(check-sat b_and!316715 (not b_next!115601) (not b_next!115603) b_and!316717 (not b_next!115605) b_and!316713 (not b_next!115607) b_and!316711)
