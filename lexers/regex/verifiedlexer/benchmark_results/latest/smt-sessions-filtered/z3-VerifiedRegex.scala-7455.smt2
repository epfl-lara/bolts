; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395814 () Bool)

(assert start!395814)

(declare-fun b!4156676 () Bool)

(declare-fun b_free!119427 () Bool)

(declare-fun b_next!120131 () Bool)

(assert (=> b!4156676 (= b_free!119427 (not b_next!120131))))

(declare-fun tp!1268187 () Bool)

(declare-fun b_and!323789 () Bool)

(assert (=> b!4156676 (= tp!1268187 b_and!323789)))

(declare-fun b_free!119429 () Bool)

(declare-fun b_next!120133 () Bool)

(assert (=> b!4156676 (= b_free!119429 (not b_next!120133))))

(declare-fun tp!1268186 () Bool)

(declare-fun b_and!323791 () Bool)

(assert (=> b!4156676 (= tp!1268186 b_and!323791)))

(declare-fun b!4156669 () Bool)

(declare-fun b_free!119431 () Bool)

(declare-fun b_next!120135 () Bool)

(assert (=> b!4156669 (= b_free!119431 (not b_next!120135))))

(declare-fun tp!1268189 () Bool)

(declare-fun b_and!323793 () Bool)

(assert (=> b!4156669 (= tp!1268189 b_and!323793)))

(declare-fun b_free!119433 () Bool)

(declare-fun b_next!120137 () Bool)

(assert (=> b!4156669 (= b_free!119433 (not b_next!120137))))

(declare-fun tp!1268182 () Bool)

(declare-fun b_and!323795 () Bool)

(assert (=> b!4156669 (= tp!1268182 b_and!323795)))

(declare-fun b!4156679 () Bool)

(declare-fun b_free!119435 () Bool)

(declare-fun b_next!120139 () Bool)

(assert (=> b!4156679 (= b_free!119435 (not b_next!120139))))

(declare-fun tp!1268183 () Bool)

(declare-fun b_and!323797 () Bool)

(assert (=> b!4156679 (= tp!1268183 b_and!323797)))

(declare-fun b_free!119437 () Bool)

(declare-fun b_next!120141 () Bool)

(assert (=> b!4156679 (= b_free!119437 (not b_next!120141))))

(declare-fun tp!1268188 () Bool)

(declare-fun b_and!323799 () Bool)

(assert (=> b!4156679 (= tp!1268188 b_and!323799)))

(declare-fun res!1702396 () Bool)

(declare-fun e!2579533 () Bool)

(assert (=> start!395814 (=> (not res!1702396) (not e!2579533))))

(declare-datatypes ((LexerInterface!7071 0))(
  ( (LexerInterfaceExt!7068 (__x!27641 Int)) (Lexer!7069) )
))
(declare-fun thiss!26968 () LexerInterface!7071)

(get-info :version)

(assert (=> start!395814 (= res!1702396 ((_ is Lexer!7069) thiss!26968))))

(assert (=> start!395814 e!2579533))

(assert (=> start!395814 true))

(declare-fun e!2579537 () Bool)

(assert (=> start!395814 e!2579537))

(declare-fun e!2579534 () Bool)

(assert (=> start!395814 e!2579534))

(declare-fun e!2579535 () Bool)

(assert (=> start!395814 e!2579535))

(declare-fun tp!1268181 () Bool)

(declare-fun b!4156668 () Bool)

(declare-fun e!2579536 () Bool)

(declare-datatypes ((List!45428 0))(
  ( (Nil!45304) (Cons!45304 (h!50724 (_ BitVec 16)) (t!343459 List!45428)) )
))
(declare-datatypes ((TokenValue!7712 0))(
  ( (FloatLiteralValue!15424 (text!54429 List!45428)) (TokenValueExt!7711 (__x!27642 Int)) (Broken!38560 (value!233720 List!45428)) (Object!7835) (End!7712) (Def!7712) (Underscore!7712) (Match!7712) (Else!7712) (Error!7712) (Case!7712) (If!7712) (Extends!7712) (Abstract!7712) (Class!7712) (Val!7712) (DelimiterValue!15424 (del!7772 List!45428)) (KeywordValue!7718 (value!233721 List!45428)) (CommentValue!15424 (value!233722 List!45428)) (WhitespaceValue!15424 (value!233723 List!45428)) (IndentationValue!7712 (value!233724 List!45428)) (String!52309) (Int32!7712) (Broken!38561 (value!233725 List!45428)) (Boolean!7713) (Unit!64472) (OperatorValue!7715 (op!7772 List!45428)) (IdentifierValue!15424 (value!233726 List!45428)) (IdentifierValue!15425 (value!233727 List!45428)) (WhitespaceValue!15425 (value!233728 List!45428)) (True!15424) (False!15424) (Broken!38562 (value!233729 List!45428)) (Broken!38563 (value!233730 List!45428)) (True!15425) (RightBrace!7712) (RightBracket!7712) (Colon!7712) (Null!7712) (Comma!7712) (LeftBracket!7712) (False!15425) (LeftBrace!7712) (ImaginaryLiteralValue!7712 (text!54430 List!45428)) (StringLiteralValue!23136 (value!233731 List!45428)) (EOFValue!7712 (value!233732 List!45428)) (IdentValue!7712 (value!233733 List!45428)) (DelimiterValue!15425 (value!233734 List!45428)) (DedentValue!7712 (value!233735 List!45428)) (NewLineValue!7712 (value!233736 List!45428)) (IntegerValue!23136 (value!233737 (_ BitVec 32)) (text!54431 List!45428)) (IntegerValue!23137 (value!233738 Int) (text!54432 List!45428)) (Times!7712) (Or!7712) (Equal!7712) (Minus!7712) (Broken!38564 (value!233739 List!45428)) (And!7712) (Div!7712) (LessEqual!7712) (Mod!7712) (Concat!20099) (Not!7712) (Plus!7712) (SpaceValue!7712 (value!233740 List!45428)) (IntegerValue!23138 (value!233741 Int) (text!54433 List!45428)) (StringLiteralValue!23137 (text!54434 List!45428)) (FloatLiteralValue!15425 (text!54435 List!45428)) (BytesLiteralValue!7712 (value!233742 List!45428)) (CommentValue!15425 (value!233743 List!45428)) (StringLiteralValue!23138 (value!233744 List!45428)) (ErrorTokenValue!7712 (msg!7773 List!45428)) )
))
(declare-datatypes ((C!24960 0))(
  ( (C!24961 (val!14590 Int)) )
))
(declare-datatypes ((Regex!12387 0))(
  ( (ElementMatch!12387 (c!711460 C!24960)) (Concat!20100 (regOne!25286 Regex!12387) (regTwo!25286 Regex!12387)) (EmptyExpr!12387) (Star!12387 (reg!12716 Regex!12387)) (EmptyLang!12387) (Union!12387 (regOne!25287 Regex!12387) (regTwo!25287 Regex!12387)) )
))
(declare-datatypes ((List!45429 0))(
  ( (Nil!45305) (Cons!45305 (h!50725 C!24960) (t!343460 List!45429)) )
))
(declare-datatypes ((IArray!27391 0))(
  ( (IArray!27392 (innerList!13753 List!45429)) )
))
(declare-datatypes ((Conc!13693 0))(
  ( (Node!13693 (left!33856 Conc!13693) (right!34186 Conc!13693) (csize!27616 Int) (cheight!13904 Int)) (Leaf!21149 (xs!16999 IArray!27391) (csize!27617 Int)) (Empty!13693) )
))
(declare-datatypes ((String!52310 0))(
  ( (String!52311 (value!233745 String)) )
))
(declare-datatypes ((BalanceConc!26980 0))(
  ( (BalanceConc!26981 (c!711461 Conc!13693)) )
))
(declare-datatypes ((TokenValueInjection!14852 0))(
  ( (TokenValueInjection!14853 (toValue!10146 Int) (toChars!10005 Int)) )
))
(declare-datatypes ((Rule!14764 0))(
  ( (Rule!14765 (regex!7482 Regex!12387) (tag!8346 String!52310) (isSeparator!7482 Bool) (transformation!7482 TokenValueInjection!14852)) )
))
(declare-fun r1!615 () Rule!14764)

(declare-fun inv!59850 (String!52310) Bool)

(declare-fun inv!59852 (TokenValueInjection!14852) Bool)

(assert (=> b!4156668 (= e!2579534 (and tp!1268181 (inv!59850 (tag!8346 r1!615)) (inv!59852 (transformation!7482 r1!615)) e!2579536))))

(declare-fun e!2579539 () Bool)

(assert (=> b!4156669 (= e!2579539 (and tp!1268189 tp!1268182))))

(declare-fun b!4156670 () Bool)

(declare-fun e!2579529 () Bool)

(assert (=> b!4156670 (= e!2579529 (not true))))

(declare-datatypes ((List!45430 0))(
  ( (Nil!45306) (Cons!45306 (h!50726 Rule!14764) (t!343461 List!45430)) )
))
(declare-fun lt!1481559 () List!45430)

(declare-fun r2!597 () Rule!14764)

(declare-fun contains!9193 (List!45430 Rule!14764) Bool)

(assert (=> b!4156670 (contains!9193 lt!1481559 r2!597)))

(declare-fun rules!4102 () List!45430)

(declare-datatypes ((Unit!64473 0))(
  ( (Unit!64474) )
))
(declare-fun lt!1481560 () Unit!64473)

(declare-fun lemmaGetIndexBiggerAndHeadNotEqThenTailContains!6 (List!45430 Rule!14764 Rule!14764) Unit!64473)

(assert (=> b!4156670 (= lt!1481560 (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!6 rules!4102 r1!615 r2!597))))

(declare-datatypes ((List!45431 0))(
  ( (Nil!45307) (Cons!45307 (h!50727 String!52310) (t!343462 List!45431)) )
))
(declare-fun noDuplicateTag!3059 (LexerInterface!7071 List!45430 List!45431) Bool)

(assert (=> b!4156670 (noDuplicateTag!3059 thiss!26968 lt!1481559 Nil!45307)))

(declare-fun lt!1481558 () Unit!64473)

(declare-fun lt!1481557 () Rule!14764)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!34 (LexerInterface!7071 List!45431 List!45431 List!45430) Unit!64473)

(assert (=> b!4156670 (= lt!1481558 (lemmaNoDupTagThenAlsoWithSubListAcc!34 thiss!26968 (Cons!45307 (tag!8346 lt!1481557) Nil!45307) Nil!45307 lt!1481559))))

(declare-fun tail!6637 (List!45430) List!45430)

(assert (=> b!4156670 (= lt!1481559 (tail!6637 rules!4102))))

(declare-fun b!4156671 () Bool)

(declare-fun e!2579530 () Bool)

(declare-fun tp!1268185 () Bool)

(assert (=> b!4156671 (= e!2579537 (and e!2579530 tp!1268185))))

(declare-fun b!4156672 () Bool)

(declare-fun res!1702398 () Bool)

(assert (=> b!4156672 (=> (not res!1702398) (not e!2579533))))

(declare-fun noDuplicateTag$default$2!64 (LexerInterface!7071) List!45431)

(assert (=> b!4156672 (= res!1702398 (noDuplicateTag!3059 thiss!26968 rules!4102 (noDuplicateTag$default$2!64 thiss!26968)))))

(declare-fun b!4156673 () Bool)

(declare-fun res!1702395 () Bool)

(assert (=> b!4156673 (=> (not res!1702395) (not e!2579533))))

(assert (=> b!4156673 (= res!1702395 (contains!9193 rules!4102 r2!597))))

(declare-fun b!4156674 () Bool)

(declare-fun tp!1268190 () Bool)

(assert (=> b!4156674 (= e!2579535 (and tp!1268190 (inv!59850 (tag!8346 r2!597)) (inv!59852 (transformation!7482 r2!597)) e!2579539))))

(declare-fun b!4156675 () Bool)

(declare-fun res!1702397 () Bool)

(assert (=> b!4156675 (=> (not res!1702397) (not e!2579533))))

(assert (=> b!4156675 (= res!1702397 (contains!9193 rules!4102 r1!615))))

(assert (=> b!4156676 (= e!2579536 (and tp!1268187 tp!1268186))))

(declare-fun b!4156677 () Bool)

(declare-fun e!2579532 () Bool)

(declare-fun tp!1268184 () Bool)

(assert (=> b!4156677 (= e!2579530 (and tp!1268184 (inv!59850 (tag!8346 (h!50726 rules!4102))) (inv!59852 (transformation!7482 (h!50726 rules!4102))) e!2579532))))

(declare-fun b!4156678 () Bool)

(declare-fun res!1702400 () Bool)

(assert (=> b!4156678 (=> (not res!1702400) (not e!2579533))))

(declare-fun getIndex!824 (List!45430 Rule!14764) Int)

(assert (=> b!4156678 (= res!1702400 (< (getIndex!824 rules!4102 r1!615) (getIndex!824 rules!4102 r2!597)))))

(assert (=> b!4156679 (= e!2579532 (and tp!1268183 tp!1268188))))

(declare-fun b!4156680 () Bool)

(assert (=> b!4156680 (= e!2579533 e!2579529)))

(declare-fun res!1702399 () Bool)

(assert (=> b!4156680 (=> (not res!1702399) (not e!2579529))))

(assert (=> b!4156680 (= res!1702399 (not (= lt!1481557 r1!615)))))

(declare-fun head!8804 (List!45430) Rule!14764)

(assert (=> b!4156680 (= lt!1481557 (head!8804 rules!4102))))

(assert (= (and start!395814 res!1702396) b!4156675))

(assert (= (and b!4156675 res!1702397) b!4156673))

(assert (= (and b!4156673 res!1702395) b!4156672))

(assert (= (and b!4156672 res!1702398) b!4156678))

(assert (= (and b!4156678 res!1702400) b!4156680))

(assert (= (and b!4156680 res!1702399) b!4156670))

(assert (= b!4156677 b!4156679))

(assert (= b!4156671 b!4156677))

(assert (= (and start!395814 ((_ is Cons!45306) rules!4102)) b!4156671))

(assert (= b!4156668 b!4156676))

(assert (= start!395814 b!4156668))

(assert (= b!4156674 b!4156669))

(assert (= start!395814 b!4156674))

(declare-fun m!4750717 () Bool)

(assert (=> b!4156670 m!4750717))

(declare-fun m!4750719 () Bool)

(assert (=> b!4156670 m!4750719))

(declare-fun m!4750721 () Bool)

(assert (=> b!4156670 m!4750721))

(declare-fun m!4750723 () Bool)

(assert (=> b!4156670 m!4750723))

(declare-fun m!4750725 () Bool)

(assert (=> b!4156670 m!4750725))

(declare-fun m!4750727 () Bool)

(assert (=> b!4156680 m!4750727))

(declare-fun m!4750729 () Bool)

(assert (=> b!4156672 m!4750729))

(assert (=> b!4156672 m!4750729))

(declare-fun m!4750731 () Bool)

(assert (=> b!4156672 m!4750731))

(declare-fun m!4750733 () Bool)

(assert (=> b!4156674 m!4750733))

(declare-fun m!4750735 () Bool)

(assert (=> b!4156674 m!4750735))

(declare-fun m!4750737 () Bool)

(assert (=> b!4156668 m!4750737))

(declare-fun m!4750739 () Bool)

(assert (=> b!4156668 m!4750739))

(declare-fun m!4750741 () Bool)

(assert (=> b!4156677 m!4750741))

(declare-fun m!4750743 () Bool)

(assert (=> b!4156677 m!4750743))

(declare-fun m!4750745 () Bool)

(assert (=> b!4156673 m!4750745))

(declare-fun m!4750747 () Bool)

(assert (=> b!4156675 m!4750747))

(declare-fun m!4750749 () Bool)

(assert (=> b!4156678 m!4750749))

(declare-fun m!4750751 () Bool)

(assert (=> b!4156678 m!4750751))

(check-sat b_and!323797 (not b!4156678) (not b!4156668) (not b_next!120133) b_and!323795 (not b!4156670) (not b!4156672) (not b_next!120135) (not b!4156677) b_and!323793 (not b!4156673) (not b!4156680) b_and!323789 (not b_next!120141) b_and!323791 (not b!4156671) b_and!323799 (not b_next!120131) (not b!4156675) (not b_next!120137) (not b_next!120139) (not b!4156674))
(check-sat b_and!323797 (not b_next!120133) b_and!323795 (not b_next!120135) b_and!323793 b_and!323789 b_and!323799 (not b_next!120141) (not b_next!120131) b_and!323791 (not b_next!120137) (not b_next!120139))
