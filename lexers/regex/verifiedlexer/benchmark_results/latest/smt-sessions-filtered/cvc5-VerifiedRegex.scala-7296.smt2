; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!388858 () Bool)

(assert start!388858)

(declare-fun b!4103342 () Bool)

(declare-fun b_free!115101 () Bool)

(declare-fun b_next!115805 () Bool)

(assert (=> b!4103342 (= b_free!115101 (not b_next!115805))))

(declare-fun tp!1243397 () Bool)

(declare-fun b_and!316915 () Bool)

(assert (=> b!4103342 (= tp!1243397 b_and!316915)))

(declare-fun b_free!115103 () Bool)

(declare-fun b_next!115807 () Bool)

(assert (=> b!4103342 (= b_free!115103 (not b_next!115807))))

(declare-fun tp!1243401 () Bool)

(declare-fun b_and!316917 () Bool)

(assert (=> b!4103342 (= tp!1243401 b_and!316917)))

(declare-fun b!4103339 () Bool)

(declare-fun b_free!115105 () Bool)

(declare-fun b_next!115809 () Bool)

(assert (=> b!4103339 (= b_free!115105 (not b_next!115809))))

(declare-fun tp!1243399 () Bool)

(declare-fun b_and!316919 () Bool)

(assert (=> b!4103339 (= tp!1243399 b_and!316919)))

(declare-fun b_free!115107 () Bool)

(declare-fun b_next!115811 () Bool)

(assert (=> b!4103339 (= b_free!115107 (not b_next!115811))))

(declare-fun tp!1243398 () Bool)

(declare-fun b_and!316921 () Bool)

(assert (=> b!4103339 (= tp!1243398 b_and!316921)))

(declare-fun b!4103334 () Bool)

(declare-fun res!1677518 () Bool)

(declare-fun e!2546496 () Bool)

(assert (=> b!4103334 (=> (not res!1677518) (not e!2546496))))

(declare-datatypes ((C!24322 0))(
  ( (C!24323 (val!14271 Int)) )
))
(declare-datatypes ((List!44252 0))(
  ( (Nil!44128) (Cons!44128 (h!49548 C!24322) (t!339909 List!44252)) )
))
(declare-datatypes ((IArray!26753 0))(
  ( (IArray!26754 (innerList!13434 List!44252)) )
))
(declare-datatypes ((Conc!13374 0))(
  ( (Node!13374 (left!33126 Conc!13374) (right!33456 Conc!13374) (csize!26978 Int) (cheight!13585 Int)) (Leaf!20671 (xs!16680 IArray!26753) (csize!26979 Int)) (Empty!13374) )
))
(declare-datatypes ((List!44253 0))(
  ( (Nil!44129) (Cons!44129 (h!49549 (_ BitVec 16)) (t!339910 List!44253)) )
))
(declare-datatypes ((Regex!12068 0))(
  ( (ElementMatch!12068 (c!706592 C!24322)) (Concat!19461 (regOne!24648 Regex!12068) (regTwo!24648 Regex!12068)) (EmptyExpr!12068) (Star!12068 (reg!12397 Regex!12068)) (EmptyLang!12068) (Union!12068 (regOne!24649 Regex!12068) (regTwo!24649 Regex!12068)) )
))
(declare-datatypes ((TokenValue!7393 0))(
  ( (FloatLiteralValue!14786 (text!52196 List!44253)) (TokenValueExt!7392 (__x!27003 Int)) (Broken!36965 (value!224753 List!44253)) (Object!7516) (End!7393) (Def!7393) (Underscore!7393) (Match!7393) (Else!7393) (Error!7393) (Case!7393) (If!7393) (Extends!7393) (Abstract!7393) (Class!7393) (Val!7393) (DelimiterValue!14786 (del!7453 List!44253)) (KeywordValue!7399 (value!224754 List!44253)) (CommentValue!14786 (value!224755 List!44253)) (WhitespaceValue!14786 (value!224756 List!44253)) (IndentationValue!7393 (value!224757 List!44253)) (String!50716) (Int32!7393) (Broken!36966 (value!224758 List!44253)) (Boolean!7394) (Unit!63617) (OperatorValue!7396 (op!7453 List!44253)) (IdentifierValue!14786 (value!224759 List!44253)) (IdentifierValue!14787 (value!224760 List!44253)) (WhitespaceValue!14787 (value!224761 List!44253)) (True!14786) (False!14786) (Broken!36967 (value!224762 List!44253)) (Broken!36968 (value!224763 List!44253)) (True!14787) (RightBrace!7393) (RightBracket!7393) (Colon!7393) (Null!7393) (Comma!7393) (LeftBracket!7393) (False!14787) (LeftBrace!7393) (ImaginaryLiteralValue!7393 (text!52197 List!44253)) (StringLiteralValue!22179 (value!224764 List!44253)) (EOFValue!7393 (value!224765 List!44253)) (IdentValue!7393 (value!224766 List!44253)) (DelimiterValue!14787 (value!224767 List!44253)) (DedentValue!7393 (value!224768 List!44253)) (NewLineValue!7393 (value!224769 List!44253)) (IntegerValue!22179 (value!224770 (_ BitVec 32)) (text!52198 List!44253)) (IntegerValue!22180 (value!224771 Int) (text!52199 List!44253)) (Times!7393) (Or!7393) (Equal!7393) (Minus!7393) (Broken!36969 (value!224772 List!44253)) (And!7393) (Div!7393) (LessEqual!7393) (Mod!7393) (Concat!19462) (Not!7393) (Plus!7393) (SpaceValue!7393 (value!224773 List!44253)) (IntegerValue!22181 (value!224774 Int) (text!52200 List!44253)) (StringLiteralValue!22180 (text!52201 List!44253)) (FloatLiteralValue!14787 (text!52202 List!44253)) (BytesLiteralValue!7393 (value!224775 List!44253)) (CommentValue!14787 (value!224776 List!44253)) (StringLiteralValue!22181 (value!224777 List!44253)) (ErrorTokenValue!7393 (msg!7454 List!44253)) )
))
(declare-datatypes ((BalanceConc!26342 0))(
  ( (BalanceConc!26343 (c!706593 Conc!13374)) )
))
(declare-datatypes ((TokenValueInjection!14214 0))(
  ( (TokenValueInjection!14215 (toValue!9775 Int) (toChars!9634 Int)) )
))
(declare-datatypes ((String!50717 0))(
  ( (String!50718 (value!224778 String)) )
))
(declare-datatypes ((Rule!14126 0))(
  ( (Rule!14127 (regex!7163 Regex!12068) (tag!8023 String!50717) (isSeparator!7163 Bool) (transformation!7163 TokenValueInjection!14214)) )
))
(declare-datatypes ((List!44254 0))(
  ( (Nil!44130) (Cons!44130 (h!49550 Rule!14126) (t!339911 List!44254)) )
))
(declare-fun rTail!27 () List!44254)

(assert (=> b!4103334 (= res!1677518 (is-Cons!44130 rTail!27))))

(declare-fun b!4103335 () Bool)

(declare-fun res!1677515 () Bool)

(assert (=> b!4103335 (=> (not res!1677515) (not e!2546496))))

(declare-fun isEmpty!26374 (List!44254) Bool)

(assert (=> b!4103335 (= res!1677515 (not (isEmpty!26374 rTail!27)))))

(declare-fun e!2546492 () Bool)

(declare-fun tp!1243402 () Bool)

(declare-fun e!2546499 () Bool)

(declare-fun b!4103336 () Bool)

(declare-fun inv!58811 (String!50717) Bool)

(declare-fun inv!58814 (TokenValueInjection!14214) Bool)

(assert (=> b!4103336 (= e!2546499 (and tp!1243402 (inv!58811 (tag!8023 (h!49550 rTail!27))) (inv!58814 (transformation!7163 (h!49550 rTail!27))) e!2546492))))

(declare-fun res!1677517 () Bool)

(assert (=> start!388858 (=> (not res!1677517) (not e!2546496))))

(declare-datatypes ((LexerInterface!6752 0))(
  ( (LexerInterfaceExt!6749 (__x!27004 Int)) (Lexer!6750) )
))
(declare-fun thiss!26455 () LexerInterface!6752)

(assert (=> start!388858 (= res!1677517 (is-Lexer!6750 thiss!26455))))

(assert (=> start!388858 e!2546496))

(assert (=> start!388858 true))

(declare-fun e!2546497 () Bool)

(assert (=> start!388858 e!2546497))

(declare-fun e!2546494 () Bool)

(assert (=> start!388858 e!2546494))

(declare-fun e!2546498 () Bool)

(declare-fun b!4103337 () Bool)

(declare-fun rHead!24 () Rule!14126)

(declare-fun tp!1243403 () Bool)

(assert (=> b!4103337 (= e!2546494 (and tp!1243403 (inv!58811 (tag!8023 rHead!24)) (inv!58814 (transformation!7163 rHead!24)) e!2546498))))

(declare-fun b!4103338 () Bool)

(declare-fun tp!1243400 () Bool)

(assert (=> b!4103338 (= e!2546497 (and e!2546499 tp!1243400))))

(assert (=> b!4103339 (= e!2546492 (and tp!1243399 tp!1243398))))

(declare-fun b!4103340 () Bool)

(assert (=> b!4103340 (= e!2546496 (not true))))

(declare-datatypes ((List!44255 0))(
  ( (Nil!44131) (Cons!44131 (h!49551 String!50717) (t!339912 List!44255)) )
))
(declare-fun noDuplicateTag!2840 (LexerInterface!6752 List!44254 List!44255) Bool)

(assert (=> b!4103340 (noDuplicateTag!2840 thiss!26455 (Cons!44130 (h!49550 rTail!27) (Cons!44130 rHead!24 (t!339911 rTail!27))) Nil!44131)))

(declare-datatypes ((Unit!63618 0))(
  ( (Unit!63619) )
))
(declare-fun lt!1467274 () Unit!63618)

(declare-fun lemmaNoDuplicateCanReorder!35 (LexerInterface!6752 Rule!14126 Rule!14126 List!44254) Unit!63618)

(assert (=> b!4103340 (= lt!1467274 (lemmaNoDuplicateCanReorder!35 thiss!26455 rHead!24 (h!49550 rTail!27) (t!339911 rTail!27)))))

(declare-fun b!4103341 () Bool)

(declare-fun res!1677516 () Bool)

(assert (=> b!4103341 (=> (not res!1677516) (not e!2546496))))

(declare-fun rulesInvariant!6095 (LexerInterface!6752 List!44254) Bool)

(assert (=> b!4103341 (= res!1677516 (rulesInvariant!6095 thiss!26455 (Cons!44130 rHead!24 rTail!27)))))

(assert (=> b!4103342 (= e!2546498 (and tp!1243397 tp!1243401))))

(assert (= (and start!388858 res!1677517) b!4103335))

(assert (= (and b!4103335 res!1677515) b!4103341))

(assert (= (and b!4103341 res!1677516) b!4103334))

(assert (= (and b!4103334 res!1677518) b!4103340))

(assert (= b!4103336 b!4103339))

(assert (= b!4103338 b!4103336))

(assert (= (and start!388858 (is-Cons!44130 rTail!27)) b!4103338))

(assert (= b!4103337 b!4103342))

(assert (= start!388858 b!4103337))

(declare-fun m!4709201 () Bool)

(assert (=> b!4103340 m!4709201))

(declare-fun m!4709203 () Bool)

(assert (=> b!4103340 m!4709203))

(declare-fun m!4709205 () Bool)

(assert (=> b!4103335 m!4709205))

(declare-fun m!4709207 () Bool)

(assert (=> b!4103336 m!4709207))

(declare-fun m!4709209 () Bool)

(assert (=> b!4103336 m!4709209))

(declare-fun m!4709211 () Bool)

(assert (=> b!4103341 m!4709211))

(declare-fun m!4709213 () Bool)

(assert (=> b!4103337 m!4709213))

(declare-fun m!4709215 () Bool)

(assert (=> b!4103337 m!4709215))

(push 1)

(assert (not b!4103336))

(assert b_and!316915)

(assert b_and!316917)

(assert (not b_next!115809))

(assert (not b!4103337))

(assert b_and!316921)

(assert (not b_next!115811))

(assert (not b!4103335))

(assert (not b!4103338))

(assert (not b!4103340))

(assert (not b_next!115807))

(assert b_and!316919)

(assert (not b_next!115805))

(assert (not b!4103341))

(check-sat)

(pop 1)

(push 1)

(assert b_and!316915)

(assert b_and!316917)

(assert (not b_next!115809))

(assert b_and!316921)

(assert (not b_next!115805))

(assert (not b_next!115811))

(assert (not b_next!115807))

(assert b_and!316919)

(check-sat)

(pop 1)

