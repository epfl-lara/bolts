; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388244 () Bool)

(assert start!388244)

(declare-fun b!4098613 () Bool)

(declare-fun b_free!114713 () Bool)

(declare-fun b_next!115417 () Bool)

(assert (=> b!4098613 (= b_free!114713 (not b_next!115417))))

(declare-fun tp!1240609 () Bool)

(declare-fun b_and!316391 () Bool)

(assert (=> b!4098613 (= tp!1240609 b_and!316391)))

(declare-fun b_free!114715 () Bool)

(declare-fun b_next!115419 () Bool)

(assert (=> b!4098613 (= b_free!114715 (not b_next!115419))))

(declare-fun tp!1240608 () Bool)

(declare-fun b_and!316393 () Bool)

(assert (=> b!4098613 (= tp!1240608 b_and!316393)))

(declare-fun b!4098616 () Bool)

(declare-fun b_free!114717 () Bool)

(declare-fun b_next!115421 () Bool)

(assert (=> b!4098616 (= b_free!114717 (not b_next!115421))))

(declare-fun tp!1240606 () Bool)

(declare-fun b_and!316395 () Bool)

(assert (=> b!4098616 (= tp!1240606 b_and!316395)))

(declare-fun b_free!114719 () Bool)

(declare-fun b_next!115423 () Bool)

(assert (=> b!4098616 (= b_free!114719 (not b_next!115423))))

(declare-fun tp!1240607 () Bool)

(declare-fun b_and!316397 () Bool)

(assert (=> b!4098616 (= tp!1240607 b_and!316397)))

(declare-fun b!4098610 () Bool)

(declare-fun e!2543453 () Bool)

(declare-fun e!2543456 () Bool)

(assert (=> b!4098610 (= e!2543453 e!2543456)))

(declare-fun res!1675598 () Bool)

(assert (=> b!4098610 (=> (not res!1675598) (not e!2543456))))

(declare-datatypes ((LexerInterface!6715 0))(
  ( (LexerInterfaceExt!6712 (__x!26929 Int)) (Lexer!6713) )
))
(declare-fun thiss!26455 () LexerInterface!6715)

(declare-datatypes ((C!24248 0))(
  ( (C!24249 (val!14234 Int)) )
))
(declare-datatypes ((List!44106 0))(
  ( (Nil!43982) (Cons!43982 (h!49402 C!24248) (t!339601 List!44106)) )
))
(declare-datatypes ((IArray!26679 0))(
  ( (IArray!26680 (innerList!13397 List!44106)) )
))
(declare-datatypes ((Conc!13337 0))(
  ( (Node!13337 (left!33054 Conc!13337) (right!33384 Conc!13337) (csize!26904 Int) (cheight!13548 Int)) (Leaf!20615 (xs!16643 IArray!26679) (csize!26905 Int)) (Empty!13337) )
))
(declare-datatypes ((List!44107 0))(
  ( (Nil!43983) (Cons!43983 (h!49403 (_ BitVec 16)) (t!339602 List!44107)) )
))
(declare-datatypes ((String!50529 0))(
  ( (String!50530 (value!223712 String)) )
))
(declare-datatypes ((Regex!12031 0))(
  ( (ElementMatch!12031 (c!706214 C!24248)) (Concat!19387 (regOne!24574 Regex!12031) (regTwo!24574 Regex!12031)) (EmptyExpr!12031) (Star!12031 (reg!12360 Regex!12031)) (EmptyLang!12031) (Union!12031 (regOne!24575 Regex!12031) (regTwo!24575 Regex!12031)) )
))
(declare-datatypes ((TokenValue!7356 0))(
  ( (FloatLiteralValue!14712 (text!51937 List!44107)) (TokenValueExt!7355 (__x!26930 Int)) (Broken!36780 (value!223713 List!44107)) (Object!7479) (End!7356) (Def!7356) (Underscore!7356) (Match!7356) (Else!7356) (Error!7356) (Case!7356) (If!7356) (Extends!7356) (Abstract!7356) (Class!7356) (Val!7356) (DelimiterValue!14712 (del!7416 List!44107)) (KeywordValue!7362 (value!223714 List!44107)) (CommentValue!14712 (value!223715 List!44107)) (WhitespaceValue!14712 (value!223716 List!44107)) (IndentationValue!7356 (value!223717 List!44107)) (String!50531) (Int32!7356) (Broken!36781 (value!223718 List!44107)) (Boolean!7357) (Unit!63512) (OperatorValue!7359 (op!7416 List!44107)) (IdentifierValue!14712 (value!223719 List!44107)) (IdentifierValue!14713 (value!223720 List!44107)) (WhitespaceValue!14713 (value!223721 List!44107)) (True!14712) (False!14712) (Broken!36782 (value!223722 List!44107)) (Broken!36783 (value!223723 List!44107)) (True!14713) (RightBrace!7356) (RightBracket!7356) (Colon!7356) (Null!7356) (Comma!7356) (LeftBracket!7356) (False!14713) (LeftBrace!7356) (ImaginaryLiteralValue!7356 (text!51938 List!44107)) (StringLiteralValue!22068 (value!223724 List!44107)) (EOFValue!7356 (value!223725 List!44107)) (IdentValue!7356 (value!223726 List!44107)) (DelimiterValue!14713 (value!223727 List!44107)) (DedentValue!7356 (value!223728 List!44107)) (NewLineValue!7356 (value!223729 List!44107)) (IntegerValue!22068 (value!223730 (_ BitVec 32)) (text!51939 List!44107)) (IntegerValue!22069 (value!223731 Int) (text!51940 List!44107)) (Times!7356) (Or!7356) (Equal!7356) (Minus!7356) (Broken!36784 (value!223732 List!44107)) (And!7356) (Div!7356) (LessEqual!7356) (Mod!7356) (Concat!19388) (Not!7356) (Plus!7356) (SpaceValue!7356 (value!223733 List!44107)) (IntegerValue!22070 (value!223734 Int) (text!51941 List!44107)) (StringLiteralValue!22069 (text!51942 List!44107)) (FloatLiteralValue!14713 (text!51943 List!44107)) (BytesLiteralValue!7356 (value!223735 List!44107)) (CommentValue!14713 (value!223736 List!44107)) (StringLiteralValue!22070 (value!223737 List!44107)) (ErrorTokenValue!7356 (msg!7417 List!44107)) )
))
(declare-datatypes ((BalanceConc!26268 0))(
  ( (BalanceConc!26269 (c!706215 Conc!13337)) )
))
(declare-datatypes ((TokenValueInjection!14140 0))(
  ( (TokenValueInjection!14141 (toValue!9730 Int) (toChars!9589 Int)) )
))
(declare-datatypes ((Rule!14052 0))(
  ( (Rule!14053 (regex!7126 Regex!12031) (tag!7986 String!50529) (isSeparator!7126 Bool) (transformation!7126 TokenValueInjection!14140)) )
))
(declare-datatypes ((List!44108 0))(
  ( (Nil!43984) (Cons!43984 (h!49404 Rule!14052) (t!339603 List!44108)) )
))
(declare-fun lt!1465992 () List!44108)

(declare-fun rulesInvariant!6058 (LexerInterface!6715 List!44108) Bool)

(assert (=> b!4098610 (= res!1675598 (rulesInvariant!6058 thiss!26455 lt!1465992))))

(declare-fun rHead!24 () Rule!14052)

(declare-fun rTail!27 () List!44108)

(assert (=> b!4098610 (= lt!1465992 (Cons!43984 rHead!24 rTail!27))))

(declare-fun b!4098611 () Bool)

(declare-fun res!1675599 () Bool)

(assert (=> b!4098611 (=> (not res!1675599) (not e!2543456))))

(get-info :version)

(assert (=> b!4098611 (= res!1675599 ((_ is Cons!43984) rTail!27))))

(declare-fun b!4098612 () Bool)

(declare-fun e!2543454 () Bool)

(assert (=> b!4098612 (= e!2543454 true)))

(declare-datatypes ((List!44109 0))(
  ( (Nil!43985) (Cons!43985 (h!49405 String!50529) (t!339604 List!44109)) )
))
(declare-fun lt!1465991 () List!44109)

(declare-fun lt!1465993 () Bool)

(declare-fun lt!1465989 () List!44108)

(declare-fun noDuplicateTag!2805 (LexerInterface!6715 List!44108 List!44109) Bool)

(assert (=> b!4098612 (= lt!1465993 (noDuplicateTag!2805 thiss!26455 lt!1465989 lt!1465991))))

(declare-fun e!2543455 () Bool)

(assert (=> b!4098613 (= e!2543455 (and tp!1240609 tp!1240608))))

(declare-fun b!4098614 () Bool)

(declare-fun e!2543450 () Bool)

(declare-fun e!2543451 () Bool)

(declare-fun tp!1240610 () Bool)

(assert (=> b!4098614 (= e!2543450 (and e!2543451 tp!1240610))))

(declare-fun res!1675601 () Bool)

(assert (=> start!388244 (=> (not res!1675601) (not e!2543453))))

(assert (=> start!388244 (= res!1675601 ((_ is Lexer!6713) thiss!26455))))

(assert (=> start!388244 e!2543453))

(assert (=> start!388244 true))

(assert (=> start!388244 e!2543450))

(declare-fun e!2543458 () Bool)

(assert (=> start!388244 e!2543458))

(declare-fun b!4098615 () Bool)

(declare-fun tp!1240611 () Bool)

(declare-fun inv!58708 (String!50529) Bool)

(declare-fun inv!58710 (TokenValueInjection!14140) Bool)

(assert (=> b!4098615 (= e!2543451 (and tp!1240611 (inv!58708 (tag!7986 (h!49404 rTail!27))) (inv!58710 (transformation!7126 (h!49404 rTail!27))) e!2543455))))

(declare-fun e!2543448 () Bool)

(assert (=> b!4098616 (= e!2543448 (and tp!1240606 tp!1240607))))

(declare-fun b!4098617 () Bool)

(declare-fun e!2543452 () Bool)

(assert (=> b!4098617 (= e!2543452 e!2543454)))

(declare-fun res!1675596 () Bool)

(assert (=> b!4098617 (=> res!1675596 e!2543454)))

(declare-fun subseq!538 (List!44109 List!44109) Bool)

(assert (=> b!4098617 (= res!1675596 (not (subseq!538 Nil!43985 lt!1465991)))))

(assert (=> b!4098617 (= lt!1465991 (Cons!43985 (tag!7986 (h!49404 rTail!27)) Nil!43985))))

(declare-fun b!4098618 () Bool)

(declare-fun res!1675597 () Bool)

(assert (=> b!4098618 (=> (not res!1675597) (not e!2543453))))

(declare-fun isEmpty!26315 (List!44108) Bool)

(assert (=> b!4098618 (= res!1675597 (not (isEmpty!26315 rTail!27)))))

(declare-fun b!4098619 () Bool)

(assert (=> b!4098619 (= e!2543456 (not e!2543452))))

(declare-fun res!1675600 () Bool)

(assert (=> b!4098619 (=> res!1675600 e!2543452)))

(assert (=> b!4098619 (= res!1675600 (isEmpty!26315 (t!339603 rTail!27)))))

(assert (=> b!4098619 (not (= (tag!7986 rHead!24) (tag!7986 (h!49404 rTail!27))))))

(declare-datatypes ((Unit!63513 0))(
  ( (Unit!63514) )
))
(declare-fun lt!1465988 () Unit!63513)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!2 (LexerInterface!6715 List!44108 Rule!14052 Rule!14052) Unit!63513)

(assert (=> b!4098619 (= lt!1465988 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!2 thiss!26455 lt!1465992 rHead!24 (h!49404 rTail!27)))))

(assert (=> b!4098619 (noDuplicateTag!2805 thiss!26455 (Cons!43984 (h!49404 rTail!27) lt!1465989) Nil!43985)))

(assert (=> b!4098619 (= lt!1465989 (Cons!43984 rHead!24 (t!339603 rTail!27)))))

(declare-fun lt!1465990 () Unit!63513)

(declare-fun lemmaNoDuplicateCanReorder!4 (LexerInterface!6715 Rule!14052 Rule!14052 List!44108) Unit!63513)

(assert (=> b!4098619 (= lt!1465990 (lemmaNoDuplicateCanReorder!4 thiss!26455 rHead!24 (h!49404 rTail!27) (t!339603 rTail!27)))))

(declare-fun b!4098620 () Bool)

(declare-fun tp!1240612 () Bool)

(assert (=> b!4098620 (= e!2543458 (and tp!1240612 (inv!58708 (tag!7986 rHead!24)) (inv!58710 (transformation!7126 rHead!24)) e!2543448))))

(assert (= (and start!388244 res!1675601) b!4098618))

(assert (= (and b!4098618 res!1675597) b!4098610))

(assert (= (and b!4098610 res!1675598) b!4098611))

(assert (= (and b!4098611 res!1675599) b!4098619))

(assert (= (and b!4098619 (not res!1675600)) b!4098617))

(assert (= (and b!4098617 (not res!1675596)) b!4098612))

(assert (= b!4098615 b!4098613))

(assert (= b!4098614 b!4098615))

(assert (= (and start!388244 ((_ is Cons!43984) rTail!27)) b!4098614))

(assert (= b!4098620 b!4098616))

(assert (= start!388244 b!4098620))

(declare-fun m!4705533 () Bool)

(assert (=> b!4098620 m!4705533))

(declare-fun m!4705535 () Bool)

(assert (=> b!4098620 m!4705535))

(declare-fun m!4705537 () Bool)

(assert (=> b!4098617 m!4705537))

(declare-fun m!4705539 () Bool)

(assert (=> b!4098618 m!4705539))

(declare-fun m!4705541 () Bool)

(assert (=> b!4098619 m!4705541))

(declare-fun m!4705543 () Bool)

(assert (=> b!4098619 m!4705543))

(declare-fun m!4705545 () Bool)

(assert (=> b!4098619 m!4705545))

(declare-fun m!4705547 () Bool)

(assert (=> b!4098619 m!4705547))

(declare-fun m!4705549 () Bool)

(assert (=> b!4098610 m!4705549))

(declare-fun m!4705551 () Bool)

(assert (=> b!4098612 m!4705551))

(declare-fun m!4705553 () Bool)

(assert (=> b!4098615 m!4705553))

(declare-fun m!4705555 () Bool)

(assert (=> b!4098615 m!4705555))

(check-sat b_and!316395 (not b_next!115423) b_and!316391 (not b!4098617) (not b!4098612) (not b!4098619) b_and!316393 b_and!316397 (not b!4098618) (not b!4098614) (not b_next!115417) (not b_next!115421) (not b_next!115419) (not b!4098615) (not b!4098620) (not b!4098610))
(check-sat b_and!316395 (not b_next!115419) (not b_next!115423) b_and!316391 b_and!316393 b_and!316397 (not b_next!115417) (not b_next!115421))
