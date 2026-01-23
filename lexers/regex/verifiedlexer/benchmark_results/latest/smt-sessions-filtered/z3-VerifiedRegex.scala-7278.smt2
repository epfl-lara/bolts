; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388248 () Bool)

(assert start!388248)

(declare-fun b!4098672 () Bool)

(declare-fun b_free!114729 () Bool)

(declare-fun b_next!115433 () Bool)

(assert (=> b!4098672 (= b_free!114729 (not b_next!115433))))

(declare-fun tp!1240650 () Bool)

(declare-fun b_and!316407 () Bool)

(assert (=> b!4098672 (= tp!1240650 b_and!316407)))

(declare-fun b_free!114731 () Bool)

(declare-fun b_next!115435 () Bool)

(assert (=> b!4098672 (= b_free!114731 (not b_next!115435))))

(declare-fun tp!1240652 () Bool)

(declare-fun b_and!316409 () Bool)

(assert (=> b!4098672 (= tp!1240652 b_and!316409)))

(declare-fun b!4098671 () Bool)

(declare-fun b_free!114733 () Bool)

(declare-fun b_next!115437 () Bool)

(assert (=> b!4098671 (= b_free!114733 (not b_next!115437))))

(declare-fun tp!1240654 () Bool)

(declare-fun b_and!316411 () Bool)

(assert (=> b!4098671 (= tp!1240654 b_and!316411)))

(declare-fun b_free!114735 () Bool)

(declare-fun b_next!115439 () Bool)

(assert (=> b!4098671 (= b_free!114735 (not b_next!115439))))

(declare-fun tp!1240649 () Bool)

(declare-fun b_and!316413 () Bool)

(assert (=> b!4098671 (= tp!1240649 b_and!316413)))

(declare-fun res!1675627 () Bool)

(declare-fun e!2543516 () Bool)

(assert (=> start!388248 (=> (not res!1675627) (not e!2543516))))

(declare-datatypes ((LexerInterface!6717 0))(
  ( (LexerInterfaceExt!6714 (__x!26933 Int)) (Lexer!6715) )
))
(declare-fun thiss!26455 () LexerInterface!6717)

(get-info :version)

(assert (=> start!388248 (= res!1675627 ((_ is Lexer!6715) thiss!26455))))

(assert (=> start!388248 e!2543516))

(assert (=> start!388248 true))

(declare-fun e!2543513 () Bool)

(assert (=> start!388248 e!2543513))

(declare-fun e!2543510 () Bool)

(assert (=> start!388248 e!2543510))

(declare-fun e!2543511 () Bool)

(assert (=> b!4098671 (= e!2543511 (and tp!1240654 tp!1240649))))

(declare-fun e!2543512 () Bool)

(assert (=> b!4098672 (= e!2543512 (and tp!1240650 tp!1240652))))

(declare-fun b!4098673 () Bool)

(declare-fun e!2543514 () Bool)

(assert (=> b!4098673 (= e!2543514 true)))

(declare-fun lt!1466029 () Bool)

(declare-datatypes ((C!24252 0))(
  ( (C!24253 (val!14236 Int)) )
))
(declare-datatypes ((List!44114 0))(
  ( (Nil!43990) (Cons!43990 (h!49410 C!24252) (t!339609 List!44114)) )
))
(declare-datatypes ((IArray!26683 0))(
  ( (IArray!26684 (innerList!13399 List!44114)) )
))
(declare-datatypes ((Conc!13339 0))(
  ( (Node!13339 (left!33057 Conc!13339) (right!33387 Conc!13339) (csize!26908 Int) (cheight!13550 Int)) (Leaf!20618 (xs!16645 IArray!26683) (csize!26909 Int)) (Empty!13339) )
))
(declare-datatypes ((List!44115 0))(
  ( (Nil!43991) (Cons!43991 (h!49411 (_ BitVec 16)) (t!339610 List!44115)) )
))
(declare-datatypes ((Regex!12033 0))(
  ( (ElementMatch!12033 (c!706218 C!24252)) (Concat!19391 (regOne!24578 Regex!12033) (regTwo!24578 Regex!12033)) (EmptyExpr!12033) (Star!12033 (reg!12362 Regex!12033)) (EmptyLang!12033) (Union!12033 (regOne!24579 Regex!12033) (regTwo!24579 Regex!12033)) )
))
(declare-datatypes ((TokenValue!7358 0))(
  ( (FloatLiteralValue!14716 (text!51951 List!44115)) (TokenValueExt!7357 (__x!26934 Int)) (Broken!36790 (value!223767 List!44115)) (Object!7481) (End!7358) (Def!7358) (Underscore!7358) (Match!7358) (Else!7358) (Error!7358) (Case!7358) (If!7358) (Extends!7358) (Abstract!7358) (Class!7358) (Val!7358) (DelimiterValue!14716 (del!7418 List!44115)) (KeywordValue!7364 (value!223768 List!44115)) (CommentValue!14716 (value!223769 List!44115)) (WhitespaceValue!14716 (value!223770 List!44115)) (IndentationValue!7358 (value!223771 List!44115)) (String!50539) (Int32!7358) (Broken!36791 (value!223772 List!44115)) (Boolean!7359) (Unit!63518) (OperatorValue!7361 (op!7418 List!44115)) (IdentifierValue!14716 (value!223773 List!44115)) (IdentifierValue!14717 (value!223774 List!44115)) (WhitespaceValue!14717 (value!223775 List!44115)) (True!14716) (False!14716) (Broken!36792 (value!223776 List!44115)) (Broken!36793 (value!223777 List!44115)) (True!14717) (RightBrace!7358) (RightBracket!7358) (Colon!7358) (Null!7358) (Comma!7358) (LeftBracket!7358) (False!14717) (LeftBrace!7358) (ImaginaryLiteralValue!7358 (text!51952 List!44115)) (StringLiteralValue!22074 (value!223778 List!44115)) (EOFValue!7358 (value!223779 List!44115)) (IdentValue!7358 (value!223780 List!44115)) (DelimiterValue!14717 (value!223781 List!44115)) (DedentValue!7358 (value!223782 List!44115)) (NewLineValue!7358 (value!223783 List!44115)) (IntegerValue!22074 (value!223784 (_ BitVec 32)) (text!51953 List!44115)) (IntegerValue!22075 (value!223785 Int) (text!51954 List!44115)) (Times!7358) (Or!7358) (Equal!7358) (Minus!7358) (Broken!36794 (value!223786 List!44115)) (And!7358) (Div!7358) (LessEqual!7358) (Mod!7358) (Concat!19392) (Not!7358) (Plus!7358) (SpaceValue!7358 (value!223787 List!44115)) (IntegerValue!22076 (value!223788 Int) (text!51955 List!44115)) (StringLiteralValue!22075 (text!51956 List!44115)) (FloatLiteralValue!14717 (text!51957 List!44115)) (BytesLiteralValue!7358 (value!223789 List!44115)) (CommentValue!14717 (value!223790 List!44115)) (StringLiteralValue!22076 (value!223791 List!44115)) (ErrorTokenValue!7358 (msg!7419 List!44115)) )
))
(declare-datatypes ((BalanceConc!26272 0))(
  ( (BalanceConc!26273 (c!706219 Conc!13339)) )
))
(declare-datatypes ((TokenValueInjection!14144 0))(
  ( (TokenValueInjection!14145 (toValue!9732 Int) (toChars!9591 Int)) )
))
(declare-datatypes ((String!50540 0))(
  ( (String!50541 (value!223792 String)) )
))
(declare-datatypes ((Rule!14056 0))(
  ( (Rule!14057 (regex!7128 Regex!12033) (tag!7988 String!50540) (isSeparator!7128 Bool) (transformation!7128 TokenValueInjection!14144)) )
))
(declare-datatypes ((List!44116 0))(
  ( (Nil!43992) (Cons!43992 (h!49412 Rule!14056) (t!339611 List!44116)) )
))
(declare-fun lt!1466028 () List!44116)

(declare-fun rulesInvariant!6060 (LexerInterface!6717 List!44116) Bool)

(assert (=> b!4098673 (= lt!1466029 (rulesInvariant!6060 thiss!26455 lt!1466028))))

(declare-datatypes ((List!44117 0))(
  ( (Nil!43993) (Cons!43993 (h!49413 String!50540) (t!339612 List!44117)) )
))
(declare-fun noDuplicateTag!2807 (LexerInterface!6717 List!44116 List!44117) Bool)

(assert (=> b!4098673 (noDuplicateTag!2807 thiss!26455 lt!1466028 Nil!43993)))

(declare-datatypes ((Unit!63519 0))(
  ( (Unit!63520) )
))
(declare-fun lt!1466027 () Unit!63519)

(declare-fun rTail!27 () List!44116)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!2 (LexerInterface!6717 List!44117 List!44117 List!44116) Unit!63519)

(assert (=> b!4098673 (= lt!1466027 (lemmaNoDupTagThenAlsoWithSubListAcc!2 thiss!26455 (Cons!43993 (tag!7988 (h!49412 rTail!27)) Nil!43993) Nil!43993 lt!1466028))))

(declare-fun b!4098674 () Bool)

(declare-fun e!2543515 () Bool)

(assert (=> b!4098674 (= e!2543515 (not e!2543514))))

(declare-fun res!1675630 () Bool)

(assert (=> b!4098674 (=> res!1675630 e!2543514)))

(declare-fun isEmpty!26317 (List!44116) Bool)

(assert (=> b!4098674 (= res!1675630 (isEmpty!26317 (t!339611 rTail!27)))))

(declare-fun rHead!24 () Rule!14056)

(assert (=> b!4098674 (not (= (tag!7988 rHead!24) (tag!7988 (h!49412 rTail!27))))))

(declare-fun lt!1466026 () Unit!63519)

(declare-fun lt!1466025 () List!44116)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!4 (LexerInterface!6717 List!44116 Rule!14056 Rule!14056) Unit!63519)

(assert (=> b!4098674 (= lt!1466026 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!4 thiss!26455 lt!1466025 rHead!24 (h!49412 rTail!27)))))

(assert (=> b!4098674 (noDuplicateTag!2807 thiss!26455 (Cons!43992 (h!49412 rTail!27) lt!1466028) Nil!43993)))

(assert (=> b!4098674 (= lt!1466028 (Cons!43992 rHead!24 (t!339611 rTail!27)))))

(declare-fun lt!1466024 () Unit!63519)

(declare-fun lemmaNoDuplicateCanReorder!6 (LexerInterface!6717 Rule!14056 Rule!14056 List!44116) Unit!63519)

(assert (=> b!4098674 (= lt!1466024 (lemmaNoDuplicateCanReorder!6 thiss!26455 rHead!24 (h!49412 rTail!27) (t!339611 rTail!27)))))

(declare-fun b!4098675 () Bool)

(declare-fun e!2543518 () Bool)

(declare-fun tp!1240648 () Bool)

(declare-fun inv!58713 (String!50540) Bool)

(declare-fun inv!58715 (TokenValueInjection!14144) Bool)

(assert (=> b!4098675 (= e!2543518 (and tp!1240648 (inv!58713 (tag!7988 (h!49412 rTail!27))) (inv!58715 (transformation!7128 (h!49412 rTail!27))) e!2543512))))

(declare-fun b!4098676 () Bool)

(declare-fun res!1675629 () Bool)

(assert (=> b!4098676 (=> (not res!1675629) (not e!2543515))))

(assert (=> b!4098676 (= res!1675629 ((_ is Cons!43992) rTail!27))))

(declare-fun b!4098677 () Bool)

(declare-fun res!1675631 () Bool)

(assert (=> b!4098677 (=> (not res!1675631) (not e!2543516))))

(assert (=> b!4098677 (= res!1675631 (not (isEmpty!26317 rTail!27)))))

(declare-fun b!4098678 () Bool)

(declare-fun tp!1240651 () Bool)

(assert (=> b!4098678 (= e!2543510 (and tp!1240651 (inv!58713 (tag!7988 rHead!24)) (inv!58715 (transformation!7128 rHead!24)) e!2543511))))

(declare-fun b!4098679 () Bool)

(declare-fun tp!1240653 () Bool)

(assert (=> b!4098679 (= e!2543513 (and e!2543518 tp!1240653))))

(declare-fun b!4098680 () Bool)

(assert (=> b!4098680 (= e!2543516 e!2543515)))

(declare-fun res!1675628 () Bool)

(assert (=> b!4098680 (=> (not res!1675628) (not e!2543515))))

(assert (=> b!4098680 (= res!1675628 (rulesInvariant!6060 thiss!26455 lt!1466025))))

(assert (=> b!4098680 (= lt!1466025 (Cons!43992 rHead!24 rTail!27))))

(assert (= (and start!388248 res!1675627) b!4098677))

(assert (= (and b!4098677 res!1675631) b!4098680))

(assert (= (and b!4098680 res!1675628) b!4098676))

(assert (= (and b!4098676 res!1675629) b!4098674))

(assert (= (and b!4098674 (not res!1675630)) b!4098673))

(assert (= b!4098675 b!4098672))

(assert (= b!4098679 b!4098675))

(assert (= (and start!388248 ((_ is Cons!43992) rTail!27)) b!4098679))

(assert (= b!4098678 b!4098671))

(assert (= start!388248 b!4098678))

(declare-fun m!4705583 () Bool)

(assert (=> b!4098674 m!4705583))

(declare-fun m!4705585 () Bool)

(assert (=> b!4098674 m!4705585))

(declare-fun m!4705587 () Bool)

(assert (=> b!4098674 m!4705587))

(declare-fun m!4705589 () Bool)

(assert (=> b!4098674 m!4705589))

(declare-fun m!4705591 () Bool)

(assert (=> b!4098678 m!4705591))

(declare-fun m!4705593 () Bool)

(assert (=> b!4098678 m!4705593))

(declare-fun m!4705595 () Bool)

(assert (=> b!4098675 m!4705595))

(declare-fun m!4705597 () Bool)

(assert (=> b!4098675 m!4705597))

(declare-fun m!4705599 () Bool)

(assert (=> b!4098680 m!4705599))

(declare-fun m!4705601 () Bool)

(assert (=> b!4098673 m!4705601))

(declare-fun m!4705603 () Bool)

(assert (=> b!4098673 m!4705603))

(declare-fun m!4705605 () Bool)

(assert (=> b!4098673 m!4705605))

(declare-fun m!4705607 () Bool)

(assert (=> b!4098677 m!4705607))

(check-sat b_and!316409 (not b_next!115433) (not b_next!115435) b_and!316413 (not b!4098680) (not b_next!115437) (not b!4098673) (not b!4098677) (not b!4098675) b_and!316407 (not b!4098674) (not b!4098679) (not b_next!115439) (not b!4098678) b_and!316411)
(check-sat b_and!316409 (not b_next!115433) (not b_next!115435) b_and!316413 (not b_next!115437) b_and!316407 (not b_next!115439) b_and!316411)
