; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389144 () Bool)

(assert start!389144)

(declare-fun b!4105356 () Bool)

(declare-fun b_free!115289 () Bool)

(declare-fun b_next!115993 () Bool)

(assert (=> b!4105356 (= b_free!115289 (not b_next!115993))))

(declare-fun tp!1244903 () Bool)

(declare-fun b_and!317103 () Bool)

(assert (=> b!4105356 (= tp!1244903 b_and!317103)))

(declare-fun b_free!115291 () Bool)

(declare-fun b_next!115995 () Bool)

(assert (=> b!4105356 (= b_free!115291 (not b_next!115995))))

(declare-fun tp!1244904 () Bool)

(declare-fun b_and!317105 () Bool)

(assert (=> b!4105356 (= tp!1244904 b_and!317105)))

(declare-fun b!4105363 () Bool)

(declare-fun b_free!115293 () Bool)

(declare-fun b_next!115997 () Bool)

(assert (=> b!4105363 (= b_free!115293 (not b_next!115997))))

(declare-fun tp!1244905 () Bool)

(declare-fun b_and!317107 () Bool)

(assert (=> b!4105363 (= tp!1244905 b_and!317107)))

(declare-fun b_free!115295 () Bool)

(declare-fun b_next!115999 () Bool)

(assert (=> b!4105363 (= b_free!115295 (not b_next!115999))))

(declare-fun tp!1244900 () Bool)

(declare-fun b_and!317109 () Bool)

(assert (=> b!4105363 (= tp!1244900 b_and!317109)))

(declare-fun res!1678243 () Bool)

(declare-fun e!2547792 () Bool)

(assert (=> start!389144 (=> (not res!1678243) (not e!2547792))))

(declare-datatypes ((LexerInterface!6767 0))(
  ( (LexerInterfaceExt!6764 (__x!27033 Int)) (Lexer!6765) )
))
(declare-fun thiss!26455 () LexerInterface!6767)

(get-info :version)

(assert (=> start!389144 (= res!1678243 ((_ is Lexer!6765) thiss!26455))))

(assert (=> start!389144 e!2547792))

(assert (=> start!389144 true))

(declare-fun e!2547797 () Bool)

(assert (=> start!389144 e!2547797))

(declare-fun e!2547798 () Bool)

(assert (=> start!389144 e!2547798))

(declare-fun b!4105354 () Bool)

(declare-fun e!2547790 () Bool)

(declare-fun e!2547791 () Bool)

(assert (=> b!4105354 (= e!2547790 (not e!2547791))))

(declare-fun res!1678244 () Bool)

(assert (=> b!4105354 (=> res!1678244 e!2547791)))

(declare-datatypes ((C!24352 0))(
  ( (C!24353 (val!14286 Int)) )
))
(declare-datatypes ((List!44312 0))(
  ( (Nil!44188) (Cons!44188 (h!49608 C!24352) (t!339969 List!44312)) )
))
(declare-datatypes ((IArray!26783 0))(
  ( (IArray!26784 (innerList!13449 List!44312)) )
))
(declare-datatypes ((Conc!13389 0))(
  ( (Node!13389 (left!33156 Conc!13389) (right!33486 Conc!13389) (csize!27008 Int) (cheight!13600 Int)) (Leaf!20693 (xs!16695 IArray!26783) (csize!27009 Int)) (Empty!13389) )
))
(declare-datatypes ((List!44313 0))(
  ( (Nil!44189) (Cons!44189 (h!49609 (_ BitVec 16)) (t!339970 List!44313)) )
))
(declare-datatypes ((Regex!12083 0))(
  ( (ElementMatch!12083 (c!706674 C!24352)) (Concat!19491 (regOne!24678 Regex!12083) (regTwo!24678 Regex!12083)) (EmptyExpr!12083) (Star!12083 (reg!12412 Regex!12083)) (EmptyLang!12083) (Union!12083 (regOne!24679 Regex!12083) (regTwo!24679 Regex!12083)) )
))
(declare-datatypes ((TokenValue!7408 0))(
  ( (FloatLiteralValue!14816 (text!52301 List!44313)) (TokenValueExt!7407 (__x!27034 Int)) (Broken!37040 (value!225164 List!44313)) (Object!7531) (End!7408) (Def!7408) (Underscore!7408) (Match!7408) (Else!7408) (Error!7408) (Case!7408) (If!7408) (Extends!7408) (Abstract!7408) (Class!7408) (Val!7408) (DelimiterValue!14816 (del!7468 List!44313)) (KeywordValue!7414 (value!225165 List!44313)) (CommentValue!14816 (value!225166 List!44313)) (WhitespaceValue!14816 (value!225167 List!44313)) (IndentationValue!7408 (value!225168 List!44313)) (String!50789) (Int32!7408) (Broken!37041 (value!225169 List!44313)) (Boolean!7409) (Unit!63662) (OperatorValue!7411 (op!7468 List!44313)) (IdentifierValue!14816 (value!225170 List!44313)) (IdentifierValue!14817 (value!225171 List!44313)) (WhitespaceValue!14817 (value!225172 List!44313)) (True!14816) (False!14816) (Broken!37042 (value!225173 List!44313)) (Broken!37043 (value!225174 List!44313)) (True!14817) (RightBrace!7408) (RightBracket!7408) (Colon!7408) (Null!7408) (Comma!7408) (LeftBracket!7408) (False!14817) (LeftBrace!7408) (ImaginaryLiteralValue!7408 (text!52302 List!44313)) (StringLiteralValue!22224 (value!225175 List!44313)) (EOFValue!7408 (value!225176 List!44313)) (IdentValue!7408 (value!225177 List!44313)) (DelimiterValue!14817 (value!225178 List!44313)) (DedentValue!7408 (value!225179 List!44313)) (NewLineValue!7408 (value!225180 List!44313)) (IntegerValue!22224 (value!225181 (_ BitVec 32)) (text!52303 List!44313)) (IntegerValue!22225 (value!225182 Int) (text!52304 List!44313)) (Times!7408) (Or!7408) (Equal!7408) (Minus!7408) (Broken!37044 (value!225183 List!44313)) (And!7408) (Div!7408) (LessEqual!7408) (Mod!7408) (Concat!19492) (Not!7408) (Plus!7408) (SpaceValue!7408 (value!225184 List!44313)) (IntegerValue!22226 (value!225185 Int) (text!52305 List!44313)) (StringLiteralValue!22225 (text!52306 List!44313)) (FloatLiteralValue!14817 (text!52307 List!44313)) (BytesLiteralValue!7408 (value!225186 List!44313)) (CommentValue!14817 (value!225187 List!44313)) (StringLiteralValue!22226 (value!225188 List!44313)) (ErrorTokenValue!7408 (msg!7469 List!44313)) )
))
(declare-datatypes ((BalanceConc!26372 0))(
  ( (BalanceConc!26373 (c!706675 Conc!13389)) )
))
(declare-datatypes ((TokenValueInjection!14244 0))(
  ( (TokenValueInjection!14245 (toValue!9798 Int) (toChars!9657 Int)) )
))
(declare-datatypes ((String!50790 0))(
  ( (String!50791 (value!225189 String)) )
))
(declare-datatypes ((Rule!14156 0))(
  ( (Rule!14157 (regex!7178 Regex!12083) (tag!8038 String!50790) (isSeparator!7178 Bool) (transformation!7178 TokenValueInjection!14244)) )
))
(declare-datatypes ((List!44314 0))(
  ( (Nil!44190) (Cons!44190 (h!49610 Rule!14156) (t!339971 List!44314)) )
))
(declare-fun rTail!27 () List!44314)

(declare-fun isEmpty!26389 (List!44314) Bool)

(assert (=> b!4105354 (= res!1678244 (isEmpty!26389 (t!339971 rTail!27)))))

(declare-fun rHead!24 () Rule!14156)

(assert (=> b!4105354 (not (= (tag!8038 rHead!24) (tag!8038 (h!49610 rTail!27))))))

(declare-fun lt!1467550 () List!44314)

(declare-datatypes ((Unit!63663 0))(
  ( (Unit!63664) )
))
(declare-fun lt!1467549 () Unit!63663)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!38 (LexerInterface!6767 List!44314 Rule!14156 Rule!14156) Unit!63663)

(assert (=> b!4105354 (= lt!1467549 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!38 thiss!26455 lt!1467550 rHead!24 (h!49610 rTail!27)))))

(declare-fun lt!1467548 () List!44314)

(declare-datatypes ((List!44315 0))(
  ( (Nil!44191) (Cons!44191 (h!49611 String!50790) (t!339972 List!44315)) )
))
(declare-fun noDuplicateTag!2855 (LexerInterface!6767 List!44314 List!44315) Bool)

(assert (=> b!4105354 (noDuplicateTag!2855 thiss!26455 (Cons!44190 (h!49610 rTail!27) lt!1467548) Nil!44191)))

(assert (=> b!4105354 (= lt!1467548 (Cons!44190 rHead!24 (t!339971 rTail!27)))))

(declare-fun lt!1467547 () Unit!63663)

(declare-fun lemmaNoDuplicateCanReorder!50 (LexerInterface!6767 Rule!14156 Rule!14156 List!44314) Unit!63663)

(assert (=> b!4105354 (= lt!1467547 (lemmaNoDuplicateCanReorder!50 thiss!26455 rHead!24 (h!49610 rTail!27) (t!339971 rTail!27)))))

(declare-fun b!4105355 () Bool)

(declare-fun res!1678247 () Bool)

(assert (=> b!4105355 (=> (not res!1678247) (not e!2547792))))

(assert (=> b!4105355 (= res!1678247 (not (isEmpty!26389 rTail!27)))))

(declare-fun e!2547799 () Bool)

(assert (=> b!4105356 (= e!2547799 (and tp!1244903 tp!1244904))))

(declare-fun tp!1244902 () Bool)

(declare-fun b!4105357 () Bool)

(declare-fun e!2547795 () Bool)

(declare-fun inv!58848 (String!50790) Bool)

(declare-fun inv!58850 (TokenValueInjection!14244) Bool)

(assert (=> b!4105357 (= e!2547795 (and tp!1244902 (inv!58848 (tag!8038 (h!49610 rTail!27))) (inv!58850 (transformation!7178 (h!49610 rTail!27))) e!2547799))))

(declare-fun b!4105358 () Bool)

(declare-fun res!1678245 () Bool)

(assert (=> b!4105358 (=> (not res!1678245) (not e!2547790))))

(assert (=> b!4105358 (= res!1678245 ((_ is Cons!44190) rTail!27))))

(declare-fun b!4105359 () Bool)

(declare-fun e!2547794 () Bool)

(declare-fun tp!1244901 () Bool)

(assert (=> b!4105359 (= e!2547798 (and tp!1244901 (inv!58848 (tag!8038 rHead!24)) (inv!58850 (transformation!7178 rHead!24)) e!2547794))))

(declare-fun b!4105360 () Bool)

(declare-fun tp!1244906 () Bool)

(assert (=> b!4105360 (= e!2547797 (and e!2547795 tp!1244906))))

(declare-fun b!4105361 () Bool)

(assert (=> b!4105361 (= e!2547791 true)))

(assert (=> b!4105361 (noDuplicateTag!2855 thiss!26455 lt!1467548 Nil!44191)))

(declare-fun lt!1467551 () Unit!63663)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!18 (LexerInterface!6767 List!44315 List!44315 List!44314) Unit!63663)

(assert (=> b!4105361 (= lt!1467551 (lemmaNoDupTagThenAlsoWithSubListAcc!18 thiss!26455 (Cons!44191 (tag!8038 (h!49610 rTail!27)) Nil!44191) Nil!44191 lt!1467548))))

(declare-fun b!4105362 () Bool)

(assert (=> b!4105362 (= e!2547792 e!2547790)))

(declare-fun res!1678246 () Bool)

(assert (=> b!4105362 (=> (not res!1678246) (not e!2547790))))

(declare-fun rulesInvariant!6110 (LexerInterface!6767 List!44314) Bool)

(assert (=> b!4105362 (= res!1678246 (rulesInvariant!6110 thiss!26455 lt!1467550))))

(assert (=> b!4105362 (= lt!1467550 (Cons!44190 rHead!24 rTail!27))))

(assert (=> b!4105363 (= e!2547794 (and tp!1244905 tp!1244900))))

(assert (= (and start!389144 res!1678243) b!4105355))

(assert (= (and b!4105355 res!1678247) b!4105362))

(assert (= (and b!4105362 res!1678246) b!4105358))

(assert (= (and b!4105358 res!1678245) b!4105354))

(assert (= (and b!4105354 (not res!1678244)) b!4105361))

(assert (= b!4105357 b!4105356))

(assert (= b!4105360 b!4105357))

(assert (= (and start!389144 ((_ is Cons!44190) rTail!27)) b!4105360))

(assert (= b!4105359 b!4105363))

(assert (= start!389144 b!4105359))

(declare-fun m!4710357 () Bool)

(assert (=> b!4105362 m!4710357))

(declare-fun m!4710359 () Bool)

(assert (=> b!4105355 m!4710359))

(declare-fun m!4710361 () Bool)

(assert (=> b!4105359 m!4710361))

(declare-fun m!4710363 () Bool)

(assert (=> b!4105359 m!4710363))

(declare-fun m!4710365 () Bool)

(assert (=> b!4105357 m!4710365))

(declare-fun m!4710367 () Bool)

(assert (=> b!4105357 m!4710367))

(declare-fun m!4710369 () Bool)

(assert (=> b!4105354 m!4710369))

(declare-fun m!4710371 () Bool)

(assert (=> b!4105354 m!4710371))

(declare-fun m!4710373 () Bool)

(assert (=> b!4105354 m!4710373))

(declare-fun m!4710375 () Bool)

(assert (=> b!4105354 m!4710375))

(declare-fun m!4710377 () Bool)

(assert (=> b!4105361 m!4710377))

(declare-fun m!4710379 () Bool)

(assert (=> b!4105361 m!4710379))

(check-sat (not b!4105354) (not b_next!115993) b_and!317103 (not b!4105355) (not b_next!115999) (not b!4105360) b_and!317107 b_and!317109 (not b!4105357) (not b_next!115995) (not b!4105359) (not b!4105361) b_and!317105 (not b_next!115997) (not b!4105362))
(check-sat b_and!317105 (not b_next!115993) b_and!317103 (not b_next!115999) b_and!317107 b_and!317109 (not b_next!115997) (not b_next!115995))
