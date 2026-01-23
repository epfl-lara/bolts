; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405230 () Bool)

(assert start!405230)

(declare-fun b!4234937 () Bool)

(declare-fun b_free!125031 () Bool)

(declare-fun b_next!125735 () Bool)

(assert (=> b!4234937 (= b_free!125031 (not b_next!125735))))

(declare-fun tp!1296724 () Bool)

(declare-fun b_and!334381 () Bool)

(assert (=> b!4234937 (= tp!1296724 b_and!334381)))

(declare-fun b_free!125033 () Bool)

(declare-fun b_next!125737 () Bool)

(assert (=> b!4234937 (= b_free!125033 (not b_next!125737))))

(declare-fun tp!1296720 () Bool)

(declare-fun b_and!334383 () Bool)

(assert (=> b!4234937 (= tp!1296720 b_and!334383)))

(declare-fun b!4234935 () Bool)

(declare-fun res!1741847 () Bool)

(declare-fun e!2629537 () Bool)

(assert (=> b!4234935 (=> (not res!1741847) (not e!2629537))))

(declare-datatypes ((C!25812 0))(
  ( (C!25813 (val!15096 Int)) )
))
(declare-datatypes ((List!46900 0))(
  ( (Nil!46776) (Cons!46776 (h!52196 C!25812) (t!349603 List!46900)) )
))
(declare-fun longerInput!51 () List!46900)

(declare-fun shorterInput!51 () List!46900)

(declare-fun size!34272 (List!46900) Int)

(assert (=> b!4234935 (= res!1741847 (> (size!34272 longerInput!51) (size!34272 shorterInput!51)))))

(declare-fun b!4234936 () Bool)

(declare-fun e!2629539 () Bool)

(declare-fun tp_is_empty!22605 () Bool)

(declare-fun tp!1296722 () Bool)

(assert (=> b!4234936 (= e!2629539 (and tp_is_empty!22605 tp!1296722))))

(declare-fun res!1741848 () Bool)

(assert (=> start!405230 (=> (not res!1741848) (not e!2629537))))

(declare-datatypes ((LexerInterface!7497 0))(
  ( (LexerInterfaceExt!7494 (__x!28487 Int)) (Lexer!7495) )
))
(declare-fun thiss!21540 () LexerInterface!7497)

(get-info :version)

(assert (=> start!405230 (= res!1741848 ((_ is Lexer!7495) thiss!21540))))

(assert (=> start!405230 e!2629537))

(assert (=> start!405230 true))

(declare-fun e!2629538 () Bool)

(assert (=> start!405230 e!2629538))

(assert (=> start!405230 e!2629539))

(declare-fun e!2629536 () Bool)

(assert (=> start!405230 e!2629536))

(declare-fun e!2629542 () Bool)

(assert (=> b!4234937 (= e!2629542 (and tp!1296724 tp!1296720))))

(declare-fun b!4234938 () Bool)

(declare-fun res!1741849 () Bool)

(assert (=> b!4234938 (=> (not res!1741849) (not e!2629537))))

(declare-datatypes ((List!46901 0))(
  ( (Nil!46777) (Cons!46777 (h!52197 (_ BitVec 16)) (t!349604 List!46901)) )
))
(declare-datatypes ((TokenValue!8132 0))(
  ( (FloatLiteralValue!16264 (text!57369 List!46901)) (TokenValueExt!8131 (__x!28488 Int)) (Broken!40660 (value!245717 List!46901)) (Object!8255) (End!8132) (Def!8132) (Underscore!8132) (Match!8132) (Else!8132) (Error!8132) (Case!8132) (If!8132) (Extends!8132) (Abstract!8132) (Class!8132) (Val!8132) (DelimiterValue!16264 (del!8192 List!46901)) (KeywordValue!8138 (value!245718 List!46901)) (CommentValue!16264 (value!245719 List!46901)) (WhitespaceValue!16264 (value!245720 List!46901)) (IndentationValue!8132 (value!245721 List!46901)) (String!54589) (Int32!8132) (Broken!40661 (value!245722 List!46901)) (Boolean!8133) (Unit!65914) (OperatorValue!8135 (op!8192 List!46901)) (IdentifierValue!16264 (value!245723 List!46901)) (IdentifierValue!16265 (value!245724 List!46901)) (WhitespaceValue!16265 (value!245725 List!46901)) (True!16264) (False!16264) (Broken!40662 (value!245726 List!46901)) (Broken!40663 (value!245727 List!46901)) (True!16265) (RightBrace!8132) (RightBracket!8132) (Colon!8132) (Null!8132) (Comma!8132) (LeftBracket!8132) (False!16265) (LeftBrace!8132) (ImaginaryLiteralValue!8132 (text!57370 List!46901)) (StringLiteralValue!24396 (value!245728 List!46901)) (EOFValue!8132 (value!245729 List!46901)) (IdentValue!8132 (value!245730 List!46901)) (DelimiterValue!16265 (value!245731 List!46901)) (DedentValue!8132 (value!245732 List!46901)) (NewLineValue!8132 (value!245733 List!46901)) (IntegerValue!24396 (value!245734 (_ BitVec 32)) (text!57371 List!46901)) (IntegerValue!24397 (value!245735 Int) (text!57372 List!46901)) (Times!8132) (Or!8132) (Equal!8132) (Minus!8132) (Broken!40664 (value!245736 List!46901)) (And!8132) (Div!8132) (LessEqual!8132) (Mod!8132) (Concat!20939) (Not!8132) (Plus!8132) (SpaceValue!8132 (value!245737 List!46901)) (IntegerValue!24398 (value!245738 Int) (text!57373 List!46901)) (StringLiteralValue!24397 (text!57374 List!46901)) (FloatLiteralValue!16265 (text!57375 List!46901)) (BytesLiteralValue!8132 (value!245739 List!46901)) (CommentValue!16265 (value!245740 List!46901)) (StringLiteralValue!24398 (value!245741 List!46901)) (ErrorTokenValue!8132 (msg!8193 List!46901)) )
))
(declare-datatypes ((Regex!12807 0))(
  ( (ElementMatch!12807 (c!719868 C!25812)) (Concat!20940 (regOne!26126 Regex!12807) (regTwo!26126 Regex!12807)) (EmptyExpr!12807) (Star!12807 (reg!13136 Regex!12807)) (EmptyLang!12807) (Union!12807 (regOne!26127 Regex!12807) (regTwo!26127 Regex!12807)) )
))
(declare-datatypes ((IArray!28231 0))(
  ( (IArray!28232 (innerList!14173 List!46900)) )
))
(declare-datatypes ((Conc!14113 0))(
  ( (Node!14113 (left!34794 Conc!14113) (right!35124 Conc!14113) (csize!28456 Int) (cheight!14324 Int)) (Leaf!21823 (xs!17419 IArray!28231) (csize!28457 Int)) (Empty!14113) )
))
(declare-datatypes ((BalanceConc!27820 0))(
  ( (BalanceConc!27821 (c!719869 Conc!14113)) )
))
(declare-datatypes ((TokenValueInjection!15692 0))(
  ( (TokenValueInjection!15693 (toValue!10642 Int) (toChars!10501 Int)) )
))
(declare-datatypes ((String!54590 0))(
  ( (String!54591 (value!245742 String)) )
))
(declare-datatypes ((Rule!15604 0))(
  ( (Rule!15605 (regex!7902 Regex!12807) (tag!8766 String!54590) (isSeparator!7902 Bool) (transformation!7902 TokenValueInjection!15692)) )
))
(declare-datatypes ((List!46902 0))(
  ( (Nil!46778) (Cons!46778 (h!52198 Rule!15604) (t!349605 List!46902)) )
))
(declare-fun rules!2932 () List!46902)

(declare-fun rulesInvariant!6608 (LexerInterface!7497 List!46902) Bool)

(assert (=> b!4234938 (= res!1741849 (rulesInvariant!6608 thiss!21540 rules!2932))))

(declare-fun b!4234939 () Bool)

(declare-fun res!1741846 () Bool)

(assert (=> b!4234939 (=> (not res!1741846) (not e!2629537))))

(declare-fun isEmpty!27634 (List!46902) Bool)

(assert (=> b!4234939 (= res!1741846 (not (isEmpty!27634 rules!2932)))))

(declare-fun b!4234940 () Bool)

(declare-fun tp!1296723 () Bool)

(assert (=> b!4234940 (= e!2629536 (and tp_is_empty!22605 tp!1296723))))

(declare-fun tp!1296721 () Bool)

(declare-fun e!2629540 () Bool)

(declare-fun b!4234941 () Bool)

(declare-fun inv!61501 (String!54590) Bool)

(declare-fun inv!61503 (TokenValueInjection!15692) Bool)

(assert (=> b!4234941 (= e!2629540 (and tp!1296721 (inv!61501 (tag!8766 (h!52198 rules!2932))) (inv!61503 (transformation!7902 (h!52198 rules!2932))) e!2629542))))

(declare-fun b!4234942 () Bool)

(assert (=> b!4234942 (= e!2629537 false)))

(declare-datatypes ((Token!14430 0))(
  ( (Token!14431 (value!245743 TokenValue!8132) (rule!11026 Rule!15604) (size!34273 Int) (originalCharacters!8246 List!46900)) )
))
(declare-datatypes ((List!46903 0))(
  ( (Nil!46779) (Cons!46779 (h!52199 Token!14430) (t!349606 List!46903)) )
))
(declare-datatypes ((tuple2!44372 0))(
  ( (tuple2!44373 (_1!25320 List!46903) (_2!25320 List!46900)) )
))
(declare-fun lt!1505692 () tuple2!44372)

(declare-fun lexList!2003 (LexerInterface!7497 List!46902 List!46900) tuple2!44372)

(assert (=> b!4234942 (= lt!1505692 (lexList!2003 thiss!21540 rules!2932 longerInput!51))))

(declare-fun b!4234943 () Bool)

(declare-fun res!1741850 () Bool)

(assert (=> b!4234943 (=> (not res!1741850) (not e!2629537))))

(declare-fun isEmpty!27635 (List!46900) Bool)

(assert (=> b!4234943 (= res!1741850 (not (isEmpty!27635 longerInput!51)))))

(declare-fun b!4234944 () Bool)

(declare-fun tp!1296719 () Bool)

(assert (=> b!4234944 (= e!2629538 (and e!2629540 tp!1296719))))

(assert (= (and start!405230 res!1741848) b!4234939))

(assert (= (and b!4234939 res!1741846) b!4234938))

(assert (= (and b!4234938 res!1741849) b!4234943))

(assert (= (and b!4234943 res!1741850) b!4234935))

(assert (= (and b!4234935 res!1741847) b!4234942))

(assert (= b!4234941 b!4234937))

(assert (= b!4234944 b!4234941))

(assert (= (and start!405230 ((_ is Cons!46778) rules!2932)) b!4234944))

(assert (= (and start!405230 ((_ is Cons!46776) longerInput!51)) b!4234936))

(assert (= (and start!405230 ((_ is Cons!46776) shorterInput!51)) b!4234940))

(declare-fun m!4820887 () Bool)

(assert (=> b!4234943 m!4820887))

(declare-fun m!4820889 () Bool)

(assert (=> b!4234941 m!4820889))

(declare-fun m!4820891 () Bool)

(assert (=> b!4234941 m!4820891))

(declare-fun m!4820893 () Bool)

(assert (=> b!4234935 m!4820893))

(declare-fun m!4820895 () Bool)

(assert (=> b!4234935 m!4820895))

(declare-fun m!4820897 () Bool)

(assert (=> b!4234942 m!4820897))

(declare-fun m!4820899 () Bool)

(assert (=> b!4234938 m!4820899))

(declare-fun m!4820901 () Bool)

(assert (=> b!4234939 m!4820901))

(check-sat (not b!4234940) (not b!4234936) (not b_next!125735) (not b_next!125737) (not b!4234941) (not b!4234938) (not b!4234939) (not b!4234944) tp_is_empty!22605 (not b!4234942) b_and!334383 b_and!334381 (not b!4234943) (not b!4234935))
(check-sat b_and!334383 b_and!334381 (not b_next!125737) (not b_next!125735))
