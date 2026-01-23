; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388252 () Bool)

(assert start!388252)

(declare-fun b!4098754 () Bool)

(declare-fun b_free!114745 () Bool)

(declare-fun b_next!115449 () Bool)

(assert (=> b!4098754 (= b_free!114745 (not b_next!115449))))

(declare-fun tp!1240697 () Bool)

(declare-fun b_and!316423 () Bool)

(assert (=> b!4098754 (= tp!1240697 b_and!316423)))

(declare-fun b_free!114747 () Bool)

(declare-fun b_next!115451 () Bool)

(assert (=> b!4098754 (= b_free!114747 (not b_next!115451))))

(declare-fun tp!1240701 () Bool)

(declare-fun b_and!316425 () Bool)

(assert (=> b!4098754 (= tp!1240701 b_and!316425)))

(declare-fun b!4098753 () Bool)

(declare-fun b_free!114749 () Bool)

(declare-fun b_next!115453 () Bool)

(assert (=> b!4098753 (= b_free!114749 (not b_next!115453))))

(declare-fun tp!1240696 () Bool)

(declare-fun b_and!316427 () Bool)

(assert (=> b!4098753 (= tp!1240696 b_and!316427)))

(declare-fun b_free!114751 () Bool)

(declare-fun b_next!115455 () Bool)

(assert (=> b!4098753 (= b_free!114751 (not b_next!115455))))

(declare-fun tp!1240700 () Bool)

(declare-fun b_and!316429 () Bool)

(assert (=> b!4098753 (= tp!1240700 b_and!316429)))

(declare-fun b!4098746 () Bool)

(declare-fun e!2543596 () Bool)

(declare-fun e!2543593 () Bool)

(assert (=> b!4098746 (= e!2543596 (not e!2543593))))

(declare-fun res!1675670 () Bool)

(assert (=> b!4098746 (=> res!1675670 e!2543593)))

(declare-datatypes ((C!24256 0))(
  ( (C!24257 (val!14238 Int)) )
))
(declare-datatypes ((List!44122 0))(
  ( (Nil!43998) (Cons!43998 (h!49418 C!24256) (t!339617 List!44122)) )
))
(declare-datatypes ((IArray!26687 0))(
  ( (IArray!26688 (innerList!13401 List!44122)) )
))
(declare-datatypes ((Conc!13341 0))(
  ( (Node!13341 (left!33060 Conc!13341) (right!33390 Conc!13341) (csize!26912 Int) (cheight!13552 Int)) (Leaf!20621 (xs!16647 IArray!26687) (csize!26913 Int)) (Empty!13341) )
))
(declare-datatypes ((Regex!12035 0))(
  ( (ElementMatch!12035 (c!706224 C!24256)) (Concat!19395 (regOne!24582 Regex!12035) (regTwo!24582 Regex!12035)) (EmptyExpr!12035) (Star!12035 (reg!12364 Regex!12035)) (EmptyLang!12035) (Union!12035 (regOne!24583 Regex!12035) (regTwo!24583 Regex!12035)) )
))
(declare-datatypes ((List!44123 0))(
  ( (Nil!43999) (Cons!43999 (h!49419 (_ BitVec 16)) (t!339618 List!44123)) )
))
(declare-datatypes ((TokenValue!7360 0))(
  ( (FloatLiteralValue!14720 (text!51965 List!44123)) (TokenValueExt!7359 (__x!26937 Int)) (Broken!36800 (value!223823 List!44123)) (Object!7483) (End!7360) (Def!7360) (Underscore!7360) (Match!7360) (Else!7360) (Error!7360) (Case!7360) (If!7360) (Extends!7360) (Abstract!7360) (Class!7360) (Val!7360) (DelimiterValue!14720 (del!7420 List!44123)) (KeywordValue!7366 (value!223824 List!44123)) (CommentValue!14720 (value!223825 List!44123)) (WhitespaceValue!14720 (value!223826 List!44123)) (IndentationValue!7360 (value!223827 List!44123)) (String!50549) (Int32!7360) (Broken!36801 (value!223828 List!44123)) (Boolean!7361) (Unit!63524) (OperatorValue!7363 (op!7420 List!44123)) (IdentifierValue!14720 (value!223829 List!44123)) (IdentifierValue!14721 (value!223830 List!44123)) (WhitespaceValue!14721 (value!223831 List!44123)) (True!14720) (False!14720) (Broken!36802 (value!223832 List!44123)) (Broken!36803 (value!223833 List!44123)) (True!14721) (RightBrace!7360) (RightBracket!7360) (Colon!7360) (Null!7360) (Comma!7360) (LeftBracket!7360) (False!14721) (LeftBrace!7360) (ImaginaryLiteralValue!7360 (text!51966 List!44123)) (StringLiteralValue!22080 (value!223834 List!44123)) (EOFValue!7360 (value!223835 List!44123)) (IdentValue!7360 (value!223836 List!44123)) (DelimiterValue!14721 (value!223837 List!44123)) (DedentValue!7360 (value!223838 List!44123)) (NewLineValue!7360 (value!223839 List!44123)) (IntegerValue!22080 (value!223840 (_ BitVec 32)) (text!51967 List!44123)) (IntegerValue!22081 (value!223841 Int) (text!51968 List!44123)) (Times!7360) (Or!7360) (Equal!7360) (Minus!7360) (Broken!36804 (value!223842 List!44123)) (And!7360) (Div!7360) (LessEqual!7360) (Mod!7360) (Concat!19396) (Not!7360) (Plus!7360) (SpaceValue!7360 (value!223843 List!44123)) (IntegerValue!22082 (value!223844 Int) (text!51969 List!44123)) (StringLiteralValue!22081 (text!51970 List!44123)) (FloatLiteralValue!14721 (text!51971 List!44123)) (BytesLiteralValue!7360 (value!223845 List!44123)) (CommentValue!14721 (value!223846 List!44123)) (StringLiteralValue!22082 (value!223847 List!44123)) (ErrorTokenValue!7360 (msg!7421 List!44123)) )
))
(declare-datatypes ((BalanceConc!26276 0))(
  ( (BalanceConc!26277 (c!706225 Conc!13341)) )
))
(declare-datatypes ((TokenValueInjection!14148 0))(
  ( (TokenValueInjection!14149 (toValue!9734 Int) (toChars!9593 Int)) )
))
(declare-datatypes ((String!50550 0))(
  ( (String!50551 (value!223848 String)) )
))
(declare-datatypes ((Rule!14060 0))(
  ( (Rule!14061 (regex!7130 Regex!12035) (tag!7990 String!50550) (isSeparator!7130 Bool) (transformation!7130 TokenValueInjection!14148)) )
))
(declare-datatypes ((List!44124 0))(
  ( (Nil!44000) (Cons!44000 (h!49420 Rule!14060) (t!339619 List!44124)) )
))
(declare-fun rTail!27 () List!44124)

(declare-fun isEmpty!26320 (List!44124) Bool)

(assert (=> b!4098746 (= res!1675670 (isEmpty!26320 (t!339619 rTail!27)))))

(declare-fun rHead!24 () Rule!14060)

(assert (=> b!4098746 (not (= (tag!7990 rHead!24) (tag!7990 (h!49420 rTail!27))))))

(declare-datatypes ((Unit!63525 0))(
  ( (Unit!63526) )
))
(declare-fun lt!1466070 () Unit!63525)

(declare-datatypes ((LexerInterface!6719 0))(
  ( (LexerInterfaceExt!6716 (__x!26938 Int)) (Lexer!6717) )
))
(declare-fun thiss!26455 () LexerInterface!6719)

(declare-fun lt!1466066 () List!44124)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!6 (LexerInterface!6719 List!44124 Rule!14060 Rule!14060) Unit!63525)

(assert (=> b!4098746 (= lt!1466070 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!6 thiss!26455 lt!1466066 rHead!24 (h!49420 rTail!27)))))

(declare-fun lt!1466071 () List!44124)

(declare-datatypes ((List!44125 0))(
  ( (Nil!44001) (Cons!44001 (h!49421 String!50550) (t!339620 List!44125)) )
))
(declare-fun noDuplicateTag!2809 (LexerInterface!6719 List!44124 List!44125) Bool)

(assert (=> b!4098746 (noDuplicateTag!2809 thiss!26455 (Cons!44000 (h!49420 rTail!27) lt!1466071) Nil!44001)))

(assert (=> b!4098746 (= lt!1466071 (Cons!44000 rHead!24 (t!339619 rTail!27)))))

(declare-fun lt!1466067 () Unit!63525)

(declare-fun lemmaNoDuplicateCanReorder!8 (LexerInterface!6719 Rule!14060 Rule!14060 List!44124) Unit!63525)

(assert (=> b!4098746 (= lt!1466067 (lemmaNoDuplicateCanReorder!8 thiss!26455 rHead!24 (h!49420 rTail!27) (t!339619 rTail!27)))))

(declare-fun b!4098747 () Bool)

(declare-fun e!2543584 () Bool)

(declare-fun tp_is_empty!21057 () Bool)

(declare-fun tp!1240695 () Bool)

(assert (=> b!4098747 (= e!2543584 (and tp_is_empty!21057 tp!1240695))))

(declare-fun b!4098748 () Bool)

(declare-fun res!1675671 () Bool)

(assert (=> b!4098748 (=> (not res!1675671) (not e!2543596))))

(get-info :version)

(assert (=> b!4098748 (= res!1675671 ((_ is Cons!44000) rTail!27))))

(declare-fun b!4098749 () Bool)

(declare-fun res!1675672 () Bool)

(declare-fun e!2543587 () Bool)

(assert (=> b!4098749 (=> (not res!1675672) (not e!2543587))))

(assert (=> b!4098749 (= res!1675672 (not (isEmpty!26320 rTail!27)))))

(declare-fun b!4098750 () Bool)

(assert (=> b!4098750 (= e!2543587 e!2543596)))

(declare-fun res!1675668 () Bool)

(assert (=> b!4098750 (=> (not res!1675668) (not e!2543596))))

(declare-fun rulesInvariant!6062 (LexerInterface!6719 List!44124) Bool)

(assert (=> b!4098750 (= res!1675668 (rulesInvariant!6062 thiss!26455 lt!1466066))))

(assert (=> b!4098750 (= lt!1466066 (Cons!44000 rHead!24 rTail!27))))

(declare-fun b!4098751 () Bool)

(declare-fun e!2543592 () Bool)

(assert (=> b!4098751 (= e!2543593 e!2543592)))

(declare-fun res!1675673 () Bool)

(assert (=> b!4098751 (=> res!1675673 e!2543592)))

(assert (=> b!4098751 (= res!1675673 (not (rulesInvariant!6062 thiss!26455 lt!1466071)))))

(assert (=> b!4098751 (noDuplicateTag!2809 thiss!26455 lt!1466071 Nil!44001)))

(declare-fun lt!1466065 () Unit!63525)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!4 (LexerInterface!6719 List!44125 List!44125 List!44124) Unit!63525)

(assert (=> b!4098751 (= lt!1466065 (lemmaNoDupTagThenAlsoWithSubListAcc!4 thiss!26455 (Cons!44001 (tag!7990 (h!49420 rTail!27)) Nil!44001) Nil!44001 lt!1466071))))

(declare-fun b!4098752 () Bool)

(declare-fun e!2543590 () Bool)

(declare-fun e!2543588 () Bool)

(declare-fun tp!1240702 () Bool)

(assert (=> b!4098752 (= e!2543590 (and e!2543588 tp!1240702))))

(declare-fun res!1675667 () Bool)

(assert (=> start!388252 (=> (not res!1675667) (not e!2543587))))

(assert (=> start!388252 (= res!1675667 ((_ is Lexer!6717) thiss!26455))))

(assert (=> start!388252 e!2543587))

(assert (=> start!388252 true))

(assert (=> start!388252 e!2543590))

(assert (=> start!388252 e!2543584))

(declare-fun e!2543585 () Bool)

(assert (=> start!388252 e!2543585))

(declare-fun e!2543594 () Bool)

(assert (=> b!4098753 (= e!2543594 (and tp!1240696 tp!1240700))))

(declare-fun e!2543589 () Bool)

(assert (=> b!4098754 (= e!2543589 (and tp!1240697 tp!1240701))))

(declare-fun tp!1240698 () Bool)

(declare-fun b!4098755 () Bool)

(declare-fun inv!58718 (String!50550) Bool)

(declare-fun inv!58720 (TokenValueInjection!14148) Bool)

(assert (=> b!4098755 (= e!2543585 (and tp!1240698 (inv!58718 (tag!7990 rHead!24)) (inv!58720 (transformation!7130 rHead!24)) e!2543589))))

(declare-fun b!4098756 () Bool)

(declare-fun tp!1240699 () Bool)

(assert (=> b!4098756 (= e!2543588 (and tp!1240699 (inv!58718 (tag!7990 (h!49420 rTail!27))) (inv!58720 (transformation!7130 (h!49420 rTail!27))) e!2543594))))

(declare-fun b!4098757 () Bool)

(declare-fun e!2543586 () Bool)

(declare-datatypes ((Token!13370 0))(
  ( (Token!13371 (value!223849 TokenValue!7360) (rule!10278 Rule!14060) (size!32845 Int) (originalCharacters!7716 List!44122)) )
))
(declare-datatypes ((tuple2!42884 0))(
  ( (tuple2!42885 (_1!24576 Token!13370) (_2!24576 List!44122)) )
))
(declare-datatypes ((Option!9528 0))(
  ( (None!9527) (Some!9527 (v!40031 tuple2!42884)) )
))
(declare-fun lt!1466068 () Option!9528)

(declare-fun get!14425 (Option!9528) tuple2!42884)

(assert (=> b!4098757 (= e!2543586 (not (= (rule!10278 (_1!24576 (get!14425 lt!1466068))) rHead!24)))))

(declare-fun b!4098758 () Bool)

(assert (=> b!4098758 (= e!2543592 true)))

(assert (=> b!4098758 e!2543586))

(declare-fun res!1675669 () Bool)

(assert (=> b!4098758 (=> res!1675669 e!2543586)))

(declare-fun isEmpty!26321 (Option!9528) Bool)

(assert (=> b!4098758 (= res!1675669 (isEmpty!26321 lt!1466068))))

(declare-fun input!3491 () List!44122)

(declare-fun maxPrefix!4001 (LexerInterface!6719 List!44124 List!44122) Option!9528)

(assert (=> b!4098758 (= lt!1466068 (maxPrefix!4001 thiss!26455 (t!339619 rTail!27) input!3491))))

(declare-fun lt!1466069 () Unit!63525)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!22 (LexerInterface!6719 Rule!14060 List!44124 List!44122) Unit!63525)

(assert (=> b!4098758 (= lt!1466069 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!22 thiss!26455 rHead!24 (t!339619 rTail!27) input!3491))))

(assert (= (and start!388252 res!1675667) b!4098749))

(assert (= (and b!4098749 res!1675672) b!4098750))

(assert (= (and b!4098750 res!1675668) b!4098748))

(assert (= (and b!4098748 res!1675671) b!4098746))

(assert (= (and b!4098746 (not res!1675670)) b!4098751))

(assert (= (and b!4098751 (not res!1675673)) b!4098758))

(assert (= (and b!4098758 (not res!1675669)) b!4098757))

(assert (= b!4098756 b!4098753))

(assert (= b!4098752 b!4098756))

(assert (= (and start!388252 ((_ is Cons!44000) rTail!27)) b!4098752))

(assert (= (and start!388252 ((_ is Cons!43998) input!3491)) b!4098747))

(assert (= b!4098755 b!4098754))

(assert (= start!388252 b!4098755))

(declare-fun m!4705643 () Bool)

(assert (=> b!4098755 m!4705643))

(declare-fun m!4705645 () Bool)

(assert (=> b!4098755 m!4705645))

(declare-fun m!4705647 () Bool)

(assert (=> b!4098756 m!4705647))

(declare-fun m!4705649 () Bool)

(assert (=> b!4098756 m!4705649))

(declare-fun m!4705651 () Bool)

(assert (=> b!4098757 m!4705651))

(declare-fun m!4705653 () Bool)

(assert (=> b!4098751 m!4705653))

(declare-fun m!4705655 () Bool)

(assert (=> b!4098751 m!4705655))

(declare-fun m!4705657 () Bool)

(assert (=> b!4098751 m!4705657))

(declare-fun m!4705659 () Bool)

(assert (=> b!4098746 m!4705659))

(declare-fun m!4705661 () Bool)

(assert (=> b!4098746 m!4705661))

(declare-fun m!4705663 () Bool)

(assert (=> b!4098746 m!4705663))

(declare-fun m!4705665 () Bool)

(assert (=> b!4098746 m!4705665))

(declare-fun m!4705667 () Bool)

(assert (=> b!4098749 m!4705667))

(declare-fun m!4705669 () Bool)

(assert (=> b!4098750 m!4705669))

(declare-fun m!4705671 () Bool)

(assert (=> b!4098758 m!4705671))

(declare-fun m!4705673 () Bool)

(assert (=> b!4098758 m!4705673))

(declare-fun m!4705675 () Bool)

(assert (=> b!4098758 m!4705675))

(check-sat (not b!4098751) (not b!4098746) b_and!316423 (not b!4098758) b_and!316429 tp_is_empty!21057 b_and!316427 (not b_next!115453) (not b!4098750) b_and!316425 (not b!4098756) (not b!4098749) (not b!4098757) (not b_next!115451) (not b!4098752) (not b_next!115455) (not b_next!115449) (not b!4098747) (not b!4098755))
(check-sat b_and!316423 b_and!316429 b_and!316427 (not b_next!115453) b_and!316425 (not b_next!115451) (not b_next!115455) (not b_next!115449))
