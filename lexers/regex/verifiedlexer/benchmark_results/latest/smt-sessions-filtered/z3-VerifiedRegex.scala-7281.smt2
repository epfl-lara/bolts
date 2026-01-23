; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388488 () Bool)

(assert start!388488)

(declare-fun b!4100676 () Bool)

(declare-fun b_free!114801 () Bool)

(declare-fun b_next!115505 () Bool)

(assert (=> b!4100676 (= b_free!114801 (not b_next!115505))))

(declare-fun tp!1241583 () Bool)

(declare-fun b_and!316615 () Bool)

(assert (=> b!4100676 (= tp!1241583 b_and!316615)))

(declare-fun b_free!114803 () Bool)

(declare-fun b_next!115507 () Bool)

(assert (=> b!4100676 (= b_free!114803 (not b_next!115507))))

(declare-fun tp!1241581 () Bool)

(declare-fun b_and!316617 () Bool)

(assert (=> b!4100676 (= tp!1241581 b_and!316617)))

(declare-fun b!4100680 () Bool)

(declare-fun b_free!114805 () Bool)

(declare-fun b_next!115509 () Bool)

(assert (=> b!4100680 (= b_free!114805 (not b_next!115509))))

(declare-fun tp!1241585 () Bool)

(declare-fun b_and!316619 () Bool)

(assert (=> b!4100680 (= tp!1241585 b_and!316619)))

(declare-fun b_free!114807 () Bool)

(declare-fun b_next!115511 () Bool)

(assert (=> b!4100680 (= b_free!114807 (not b_next!115511))))

(declare-fun tp!1241588 () Bool)

(declare-fun b_and!316621 () Bool)

(assert (=> b!4100680 (= tp!1241588 b_and!316621)))

(declare-fun b!4100672 () Bool)

(declare-fun e!2544676 () Bool)

(declare-fun e!2544666 () Bool)

(assert (=> b!4100672 (= e!2544676 (not e!2544666))))

(declare-fun res!1676400 () Bool)

(assert (=> b!4100672 (=> res!1676400 e!2544666)))

(declare-datatypes ((C!24264 0))(
  ( (C!24265 (val!14242 Int)) )
))
(declare-datatypes ((List!44138 0))(
  ( (Nil!44014) (Cons!44014 (h!49434 C!24264) (t!339795 List!44138)) )
))
(declare-datatypes ((IArray!26695 0))(
  ( (IArray!26696 (innerList!13405 List!44138)) )
))
(declare-datatypes ((Conc!13345 0))(
  ( (Node!13345 (left!33070 Conc!13345) (right!33400 Conc!13345) (csize!26920 Int) (cheight!13556 Int)) (Leaf!20627 (xs!16651 IArray!26695) (csize!26921 Int)) (Empty!13345) )
))
(declare-datatypes ((List!44139 0))(
  ( (Nil!44015) (Cons!44015 (h!49435 (_ BitVec 16)) (t!339796 List!44139)) )
))
(declare-datatypes ((Regex!12039 0))(
  ( (ElementMatch!12039 (c!706466 C!24264)) (Concat!19403 (regOne!24590 Regex!12039) (regTwo!24590 Regex!12039)) (EmptyExpr!12039) (Star!12039 (reg!12368 Regex!12039)) (EmptyLang!12039) (Union!12039 (regOne!24591 Regex!12039) (regTwo!24591 Regex!12039)) )
))
(declare-datatypes ((TokenValue!7364 0))(
  ( (FloatLiteralValue!14728 (text!51993 List!44139)) (TokenValueExt!7363 (__x!26945 Int)) (Broken!36820 (value!223937 List!44139)) (Object!7487) (End!7364) (Def!7364) (Underscore!7364) (Match!7364) (Else!7364) (Error!7364) (Case!7364) (If!7364) (Extends!7364) (Abstract!7364) (Class!7364) (Val!7364) (DelimiterValue!14728 (del!7424 List!44139)) (KeywordValue!7370 (value!223938 List!44139)) (CommentValue!14728 (value!223939 List!44139)) (WhitespaceValue!14728 (value!223940 List!44139)) (IndentationValue!7364 (value!223941 List!44139)) (String!50569) (Int32!7364) (Broken!36821 (value!223942 List!44139)) (Boolean!7365) (Unit!63542) (OperatorValue!7367 (op!7424 List!44139)) (IdentifierValue!14728 (value!223943 List!44139)) (IdentifierValue!14729 (value!223944 List!44139)) (WhitespaceValue!14729 (value!223945 List!44139)) (True!14728) (False!14728) (Broken!36822 (value!223946 List!44139)) (Broken!36823 (value!223947 List!44139)) (True!14729) (RightBrace!7364) (RightBracket!7364) (Colon!7364) (Null!7364) (Comma!7364) (LeftBracket!7364) (False!14729) (LeftBrace!7364) (ImaginaryLiteralValue!7364 (text!51994 List!44139)) (StringLiteralValue!22092 (value!223948 List!44139)) (EOFValue!7364 (value!223949 List!44139)) (IdentValue!7364 (value!223950 List!44139)) (DelimiterValue!14729 (value!223951 List!44139)) (DedentValue!7364 (value!223952 List!44139)) (NewLineValue!7364 (value!223953 List!44139)) (IntegerValue!22092 (value!223954 (_ BitVec 32)) (text!51995 List!44139)) (IntegerValue!22093 (value!223955 Int) (text!51996 List!44139)) (Times!7364) (Or!7364) (Equal!7364) (Minus!7364) (Broken!36824 (value!223956 List!44139)) (And!7364) (Div!7364) (LessEqual!7364) (Mod!7364) (Concat!19404) (Not!7364) (Plus!7364) (SpaceValue!7364 (value!223957 List!44139)) (IntegerValue!22094 (value!223958 Int) (text!51997 List!44139)) (StringLiteralValue!22093 (text!51998 List!44139)) (FloatLiteralValue!14729 (text!51999 List!44139)) (BytesLiteralValue!7364 (value!223959 List!44139)) (CommentValue!14729 (value!223960 List!44139)) (StringLiteralValue!22094 (value!223961 List!44139)) (ErrorTokenValue!7364 (msg!7425 List!44139)) )
))
(declare-datatypes ((BalanceConc!26284 0))(
  ( (BalanceConc!26285 (c!706467 Conc!13345)) )
))
(declare-datatypes ((TokenValueInjection!14156 0))(
  ( (TokenValueInjection!14157 (toValue!9742 Int) (toChars!9601 Int)) )
))
(declare-datatypes ((String!50570 0))(
  ( (String!50571 (value!223962 String)) )
))
(declare-datatypes ((Rule!14068 0))(
  ( (Rule!14069 (regex!7134 Regex!12039) (tag!7994 String!50570) (isSeparator!7134 Bool) (transformation!7134 TokenValueInjection!14156)) )
))
(declare-datatypes ((List!44140 0))(
  ( (Nil!44016) (Cons!44016 (h!49436 Rule!14068) (t!339797 List!44140)) )
))
(declare-fun rTail!27 () List!44140)

(declare-fun isEmpty!26330 (List!44140) Bool)

(assert (=> b!4100672 (= res!1676400 (isEmpty!26330 (t!339797 rTail!27)))))

(declare-fun rHead!24 () Rule!14068)

(assert (=> b!4100672 (not (= (tag!7994 rHead!24) (tag!7994 (h!49436 rTail!27))))))

(declare-datatypes ((LexerInterface!6723 0))(
  ( (LexerInterfaceExt!6720 (__x!26946 Int)) (Lexer!6721) )
))
(declare-fun thiss!26455 () LexerInterface!6723)

(declare-datatypes ((Unit!63543 0))(
  ( (Unit!63544) )
))
(declare-fun lt!1466648 () Unit!63543)

(declare-fun lt!1466647 () List!44140)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!10 (LexerInterface!6723 List!44140 Rule!14068 Rule!14068) Unit!63543)

(assert (=> b!4100672 (= lt!1466648 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!10 thiss!26455 lt!1466647 rHead!24 (h!49436 rTail!27)))))

(declare-fun lt!1466645 () List!44140)

(declare-datatypes ((List!44141 0))(
  ( (Nil!44017) (Cons!44017 (h!49437 String!50570) (t!339798 List!44141)) )
))
(declare-fun noDuplicateTag!2813 (LexerInterface!6723 List!44140 List!44141) Bool)

(assert (=> b!4100672 (noDuplicateTag!2813 thiss!26455 (Cons!44016 (h!49436 rTail!27) lt!1466645) Nil!44017)))

(assert (=> b!4100672 (= lt!1466645 (Cons!44016 rHead!24 (t!339797 rTail!27)))))

(declare-fun lt!1466643 () Unit!63543)

(declare-fun lemmaNoDuplicateCanReorder!12 (LexerInterface!6723 Rule!14068 Rule!14068 List!44140) Unit!63543)

(assert (=> b!4100672 (= lt!1466643 (lemmaNoDuplicateCanReorder!12 thiss!26455 rHead!24 (h!49436 rTail!27) (t!339797 rTail!27)))))

(declare-fun b!4100673 () Bool)

(declare-fun res!1676402 () Bool)

(assert (=> b!4100673 (=> (not res!1676402) (not e!2544676))))

(get-info :version)

(assert (=> b!4100673 (= res!1676402 ((_ is Cons!44016) rTail!27))))

(declare-fun b!4100674 () Bool)

(declare-fun e!2544667 () Bool)

(assert (=> b!4100674 (= e!2544666 e!2544667)))

(declare-fun res!1676405 () Bool)

(assert (=> b!4100674 (=> res!1676405 e!2544667)))

(declare-fun rulesInvariant!6066 (LexerInterface!6723 List!44140) Bool)

(assert (=> b!4100674 (= res!1676405 (not (rulesInvariant!6066 thiss!26455 lt!1466645)))))

(assert (=> b!4100674 (noDuplicateTag!2813 thiss!26455 lt!1466645 Nil!44017)))

(declare-fun lt!1466649 () Unit!63543)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!8 (LexerInterface!6723 List!44141 List!44141 List!44140) Unit!63543)

(assert (=> b!4100674 (= lt!1466649 (lemmaNoDupTagThenAlsoWithSubListAcc!8 thiss!26455 (Cons!44017 (tag!7994 (h!49436 rTail!27)) Nil!44017) Nil!44017 lt!1466645))))

(declare-fun b!4100675 () Bool)

(declare-fun e!2544664 () Bool)

(declare-fun tp_is_empty!21065 () Bool)

(declare-fun tp!1241582 () Bool)

(assert (=> b!4100675 (= e!2544664 (and tp_is_empty!21065 tp!1241582))))

(declare-fun e!2544668 () Bool)

(assert (=> b!4100676 (= e!2544668 (and tp!1241583 tp!1241581))))

(declare-fun b!4100677 () Bool)

(declare-fun e!2544671 () Bool)

(assert (=> b!4100677 (= e!2544671 e!2544676)))

(declare-fun res!1676399 () Bool)

(assert (=> b!4100677 (=> (not res!1676399) (not e!2544676))))

(assert (=> b!4100677 (= res!1676399 (rulesInvariant!6066 thiss!26455 lt!1466647))))

(assert (=> b!4100677 (= lt!1466647 (Cons!44016 rHead!24 rTail!27))))

(declare-fun res!1676403 () Bool)

(assert (=> start!388488 (=> (not res!1676403) (not e!2544671))))

(assert (=> start!388488 (= res!1676403 ((_ is Lexer!6721) thiss!26455))))

(assert (=> start!388488 e!2544671))

(assert (=> start!388488 true))

(declare-fun e!2544665 () Bool)

(assert (=> start!388488 e!2544665))

(assert (=> start!388488 e!2544664))

(declare-fun e!2544675 () Bool)

(assert (=> start!388488 e!2544675))

(declare-fun b!4100678 () Bool)

(declare-fun e!2544673 () Bool)

(declare-datatypes ((Token!13378 0))(
  ( (Token!13379 (value!223963 TokenValue!7364) (rule!10284 Rule!14068) (size!32855 Int) (originalCharacters!7720 List!44138)) )
))
(declare-datatypes ((tuple2!42896 0))(
  ( (tuple2!42897 (_1!24582 Token!13378) (_2!24582 List!44138)) )
))
(declare-datatypes ((Option!9532 0))(
  ( (None!9531) (Some!9531 (v!40039 tuple2!42896)) )
))
(declare-fun lt!1466646 () Option!9532)

(declare-fun get!14431 (Option!9532) tuple2!42896)

(assert (=> b!4100678 (= e!2544673 (not (= (rule!10284 (_1!24582 (get!14431 lt!1466646))) rHead!24)))))

(declare-fun b!4100679 () Bool)

(declare-fun res!1676404 () Bool)

(assert (=> b!4100679 (=> (not res!1676404) (not e!2544671))))

(assert (=> b!4100679 (= res!1676404 (not (isEmpty!26330 rTail!27)))))

(declare-fun e!2544670 () Bool)

(assert (=> b!4100680 (= e!2544670 (and tp!1241585 tp!1241588))))

(declare-fun tp!1241587 () Bool)

(declare-fun b!4100681 () Bool)

(declare-fun inv!58738 (String!50570) Bool)

(declare-fun inv!58740 (TokenValueInjection!14156) Bool)

(assert (=> b!4100681 (= e!2544675 (and tp!1241587 (inv!58738 (tag!7994 rHead!24)) (inv!58740 (transformation!7134 rHead!24)) e!2544668))))

(declare-fun b!4100682 () Bool)

(assert (=> b!4100682 (= e!2544667 true)))

(declare-fun lt!1466644 () Bool)

(declare-fun rulesValidInductive!2641 (LexerInterface!6723 List!44140) Bool)

(assert (=> b!4100682 (= lt!1466644 (rulesValidInductive!2641 thiss!26455 rTail!27))))

(assert (=> b!4100682 e!2544673))

(declare-fun res!1676401 () Bool)

(assert (=> b!4100682 (=> res!1676401 e!2544673)))

(declare-fun isEmpty!26331 (Option!9532) Bool)

(assert (=> b!4100682 (= res!1676401 (isEmpty!26331 lt!1466646))))

(declare-fun input!3491 () List!44138)

(declare-fun maxPrefix!4005 (LexerInterface!6723 List!44140 List!44138) Option!9532)

(assert (=> b!4100682 (= lt!1466646 (maxPrefix!4005 thiss!26455 (t!339797 rTail!27) input!3491))))

(declare-fun lt!1466642 () Unit!63543)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!26 (LexerInterface!6723 Rule!14068 List!44140 List!44138) Unit!63543)

(assert (=> b!4100682 (= lt!1466642 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!26 thiss!26455 rHead!24 (t!339797 rTail!27) input!3491))))

(declare-fun b!4100683 () Bool)

(declare-fun e!2544669 () Bool)

(declare-fun tp!1241584 () Bool)

(assert (=> b!4100683 (= e!2544665 (and e!2544669 tp!1241584))))

(declare-fun b!4100684 () Bool)

(declare-fun tp!1241586 () Bool)

(assert (=> b!4100684 (= e!2544669 (and tp!1241586 (inv!58738 (tag!7994 (h!49436 rTail!27))) (inv!58740 (transformation!7134 (h!49436 rTail!27))) e!2544670))))

(assert (= (and start!388488 res!1676403) b!4100679))

(assert (= (and b!4100679 res!1676404) b!4100677))

(assert (= (and b!4100677 res!1676399) b!4100673))

(assert (= (and b!4100673 res!1676402) b!4100672))

(assert (= (and b!4100672 (not res!1676400)) b!4100674))

(assert (= (and b!4100674 (not res!1676405)) b!4100682))

(assert (= (and b!4100682 (not res!1676401)) b!4100678))

(assert (= b!4100684 b!4100680))

(assert (= b!4100683 b!4100684))

(assert (= (and start!388488 ((_ is Cons!44016) rTail!27)) b!4100683))

(assert (= (and start!388488 ((_ is Cons!44014) input!3491)) b!4100675))

(assert (= b!4100681 b!4100676))

(assert (= start!388488 b!4100681))

(declare-fun m!4707337 () Bool)

(assert (=> b!4100674 m!4707337))

(declare-fun m!4707339 () Bool)

(assert (=> b!4100674 m!4707339))

(declare-fun m!4707341 () Bool)

(assert (=> b!4100674 m!4707341))

(declare-fun m!4707343 () Bool)

(assert (=> b!4100684 m!4707343))

(declare-fun m!4707345 () Bool)

(assert (=> b!4100684 m!4707345))

(declare-fun m!4707347 () Bool)

(assert (=> b!4100681 m!4707347))

(declare-fun m!4707349 () Bool)

(assert (=> b!4100681 m!4707349))

(declare-fun m!4707351 () Bool)

(assert (=> b!4100678 m!4707351))

(declare-fun m!4707353 () Bool)

(assert (=> b!4100677 m!4707353))

(declare-fun m!4707355 () Bool)

(assert (=> b!4100679 m!4707355))

(declare-fun m!4707357 () Bool)

(assert (=> b!4100672 m!4707357))

(declare-fun m!4707359 () Bool)

(assert (=> b!4100672 m!4707359))

(declare-fun m!4707361 () Bool)

(assert (=> b!4100672 m!4707361))

(declare-fun m!4707363 () Bool)

(assert (=> b!4100672 m!4707363))

(declare-fun m!4707365 () Bool)

(assert (=> b!4100682 m!4707365))

(declare-fun m!4707367 () Bool)

(assert (=> b!4100682 m!4707367))

(declare-fun m!4707369 () Bool)

(assert (=> b!4100682 m!4707369))

(declare-fun m!4707371 () Bool)

(assert (=> b!4100682 m!4707371))

(check-sat (not b!4100681) b_and!316617 (not b!4100675) b_and!316615 (not b_next!115505) (not b!4100672) (not b_next!115509) (not b_next!115507) b_and!316621 (not b!4100683) (not b_next!115511) b_and!316619 (not b!4100682) (not b!4100677) (not b!4100674) tp_is_empty!21065 (not b!4100678) (not b!4100679) (not b!4100684))
(check-sat b_and!316617 b_and!316615 (not b_next!115505) (not b_next!115509) (not b_next!115507) b_and!316621 (not b_next!115511) b_and!316619)
