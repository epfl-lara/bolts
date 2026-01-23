; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388864 () Bool)

(assert start!388864)

(declare-fun b!4103416 () Bool)

(declare-fun b_free!115125 () Bool)

(declare-fun b_next!115829 () Bool)

(assert (=> b!4103416 (= b_free!115125 (not b_next!115829))))

(declare-fun tp!1243461 () Bool)

(declare-fun b_and!316939 () Bool)

(assert (=> b!4103416 (= tp!1243461 b_and!316939)))

(declare-fun b_free!115127 () Bool)

(declare-fun b_next!115831 () Bool)

(assert (=> b!4103416 (= b_free!115127 (not b_next!115831))))

(declare-fun tp!1243466 () Bool)

(declare-fun b_and!316941 () Bool)

(assert (=> b!4103416 (= tp!1243466 b_and!316941)))

(declare-fun b!4103419 () Bool)

(declare-fun b_free!115129 () Bool)

(declare-fun b_next!115833 () Bool)

(assert (=> b!4103419 (= b_free!115129 (not b_next!115833))))

(declare-fun tp!1243465 () Bool)

(declare-fun b_and!316943 () Bool)

(assert (=> b!4103419 (= tp!1243465 b_and!316943)))

(declare-fun b_free!115131 () Bool)

(declare-fun b_next!115835 () Bool)

(assert (=> b!4103419 (= b_free!115131 (not b_next!115835))))

(declare-fun tp!1243460 () Bool)

(declare-fun b_and!316945 () Bool)

(assert (=> b!4103419 (= tp!1243460 b_and!316945)))

(declare-fun b!4103415 () Bool)

(declare-fun res!1677553 () Bool)

(declare-fun e!2546570 () Bool)

(assert (=> b!4103415 (=> (not res!1677553) (not e!2546570))))

(declare-datatypes ((C!24328 0))(
  ( (C!24329 (val!14274 Int)) )
))
(declare-datatypes ((List!44264 0))(
  ( (Nil!44140) (Cons!44140 (h!49560 C!24328) (t!339921 List!44264)) )
))
(declare-datatypes ((IArray!26759 0))(
  ( (IArray!26760 (innerList!13437 List!44264)) )
))
(declare-datatypes ((Conc!13377 0))(
  ( (Node!13377 (left!33130 Conc!13377) (right!33460 Conc!13377) (csize!26984 Int) (cheight!13588 Int)) (Leaf!20675 (xs!16683 IArray!26759) (csize!26985 Int)) (Empty!13377) )
))
(declare-datatypes ((List!44265 0))(
  ( (Nil!44141) (Cons!44141 (h!49561 (_ BitVec 16)) (t!339922 List!44265)) )
))
(declare-datatypes ((Regex!12071 0))(
  ( (ElementMatch!12071 (c!706598 C!24328)) (Concat!19467 (regOne!24654 Regex!12071) (regTwo!24654 Regex!12071)) (EmptyExpr!12071) (Star!12071 (reg!12400 Regex!12071)) (EmptyLang!12071) (Union!12071 (regOne!24655 Regex!12071) (regTwo!24655 Regex!12071)) )
))
(declare-datatypes ((TokenValue!7396 0))(
  ( (FloatLiteralValue!14792 (text!52217 List!44265)) (TokenValueExt!7395 (__x!27009 Int)) (Broken!36980 (value!224834 List!44265)) (Object!7519) (End!7396) (Def!7396) (Underscore!7396) (Match!7396) (Else!7396) (Error!7396) (Case!7396) (If!7396) (Extends!7396) (Abstract!7396) (Class!7396) (Val!7396) (DelimiterValue!14792 (del!7456 List!44265)) (KeywordValue!7402 (value!224835 List!44265)) (CommentValue!14792 (value!224836 List!44265)) (WhitespaceValue!14792 (value!224837 List!44265)) (IndentationValue!7396 (value!224838 List!44265)) (String!50729) (Int32!7396) (Broken!36981 (value!224839 List!44265)) (Boolean!7397) (Unit!63626) (OperatorValue!7399 (op!7456 List!44265)) (IdentifierValue!14792 (value!224840 List!44265)) (IdentifierValue!14793 (value!224841 List!44265)) (WhitespaceValue!14793 (value!224842 List!44265)) (True!14792) (False!14792) (Broken!36982 (value!224843 List!44265)) (Broken!36983 (value!224844 List!44265)) (True!14793) (RightBrace!7396) (RightBracket!7396) (Colon!7396) (Null!7396) (Comma!7396) (LeftBracket!7396) (False!14793) (LeftBrace!7396) (ImaginaryLiteralValue!7396 (text!52218 List!44265)) (StringLiteralValue!22188 (value!224845 List!44265)) (EOFValue!7396 (value!224846 List!44265)) (IdentValue!7396 (value!224847 List!44265)) (DelimiterValue!14793 (value!224848 List!44265)) (DedentValue!7396 (value!224849 List!44265)) (NewLineValue!7396 (value!224850 List!44265)) (IntegerValue!22188 (value!224851 (_ BitVec 32)) (text!52219 List!44265)) (IntegerValue!22189 (value!224852 Int) (text!52220 List!44265)) (Times!7396) (Or!7396) (Equal!7396) (Minus!7396) (Broken!36984 (value!224853 List!44265)) (And!7396) (Div!7396) (LessEqual!7396) (Mod!7396) (Concat!19468) (Not!7396) (Plus!7396) (SpaceValue!7396 (value!224854 List!44265)) (IntegerValue!22190 (value!224855 Int) (text!52221 List!44265)) (StringLiteralValue!22189 (text!52222 List!44265)) (FloatLiteralValue!14793 (text!52223 List!44265)) (BytesLiteralValue!7396 (value!224856 List!44265)) (CommentValue!14793 (value!224857 List!44265)) (StringLiteralValue!22190 (value!224858 List!44265)) (ErrorTokenValue!7396 (msg!7457 List!44265)) )
))
(declare-datatypes ((BalanceConc!26348 0))(
  ( (BalanceConc!26349 (c!706599 Conc!13377)) )
))
(declare-datatypes ((TokenValueInjection!14220 0))(
  ( (TokenValueInjection!14221 (toValue!9778 Int) (toChars!9637 Int)) )
))
(declare-datatypes ((String!50730 0))(
  ( (String!50731 (value!224859 String)) )
))
(declare-datatypes ((Rule!14132 0))(
  ( (Rule!14133 (regex!7166 Regex!12071) (tag!8026 String!50730) (isSeparator!7166 Bool) (transformation!7166 TokenValueInjection!14220)) )
))
(declare-datatypes ((List!44266 0))(
  ( (Nil!44142) (Cons!44142 (h!49562 Rule!14132) (t!339923 List!44266)) )
))
(declare-fun rTail!27 () List!44266)

(declare-fun isEmpty!26377 (List!44266) Bool)

(assert (=> b!4103415 (= res!1677553 (not (isEmpty!26377 rTail!27)))))

(declare-fun e!2546571 () Bool)

(assert (=> b!4103416 (= e!2546571 (and tp!1243461 tp!1243466))))

(declare-fun b!4103417 () Bool)

(declare-fun e!2546573 () Bool)

(declare-fun lt!1467289 () List!44266)

(declare-fun rHead!24 () Rule!14132)

(declare-fun contains!8835 (List!44266 Rule!14132) Bool)

(assert (=> b!4103417 (= e!2546573 (not (contains!8835 lt!1467289 rHead!24)))))

(declare-datatypes ((LexerInterface!6755 0))(
  ( (LexerInterfaceExt!6752 (__x!27010 Int)) (Lexer!6753) )
))
(declare-fun thiss!26455 () LexerInterface!6755)

(declare-datatypes ((List!44267 0))(
  ( (Nil!44143) (Cons!44143 (h!49563 String!50730) (t!339924 List!44267)) )
))
(declare-fun noDuplicateTag!2843 (LexerInterface!6755 List!44266 List!44267) Bool)

(assert (=> b!4103417 (noDuplicateTag!2843 thiss!26455 (Cons!44142 (h!49562 rTail!27) (Cons!44142 rHead!24 (t!339923 rTail!27))) Nil!44143)))

(declare-datatypes ((Unit!63627 0))(
  ( (Unit!63628) )
))
(declare-fun lt!1467288 () Unit!63627)

(declare-fun lemmaNoDuplicateCanReorder!38 (LexerInterface!6755 Rule!14132 Rule!14132 List!44266) Unit!63627)

(assert (=> b!4103417 (= lt!1467288 (lemmaNoDuplicateCanReorder!38 thiss!26455 rHead!24 (h!49562 rTail!27) (t!339923 rTail!27)))))

(declare-fun b!4103418 () Bool)

(declare-fun res!1677552 () Bool)

(assert (=> b!4103418 (=> (not res!1677552) (not e!2546573))))

(get-info :version)

(assert (=> b!4103418 (= res!1677552 ((_ is Cons!44142) rTail!27))))

(declare-fun res!1677554 () Bool)

(assert (=> start!388864 (=> (not res!1677554) (not e!2546570))))

(assert (=> start!388864 (= res!1677554 ((_ is Lexer!6753) thiss!26455))))

(assert (=> start!388864 e!2546570))

(assert (=> start!388864 true))

(declare-fun e!2546575 () Bool)

(assert (=> start!388864 e!2546575))

(declare-fun e!2546572 () Bool)

(assert (=> start!388864 e!2546572))

(declare-fun e!2546569 () Bool)

(assert (=> b!4103419 (= e!2546569 (and tp!1243465 tp!1243460))))

(declare-fun b!4103420 () Bool)

(declare-fun tp!1243463 () Bool)

(declare-fun e!2546576 () Bool)

(declare-fun inv!58818 (String!50730) Bool)

(declare-fun inv!58820 (TokenValueInjection!14220) Bool)

(assert (=> b!4103420 (= e!2546576 (and tp!1243463 (inv!58818 (tag!8026 (h!49562 rTail!27))) (inv!58820 (transformation!7166 (h!49562 rTail!27))) e!2546571))))

(declare-fun b!4103421 () Bool)

(declare-fun tp!1243462 () Bool)

(assert (=> b!4103421 (= e!2546575 (and e!2546576 tp!1243462))))

(declare-fun b!4103422 () Bool)

(assert (=> b!4103422 (= e!2546570 e!2546573)))

(declare-fun res!1677551 () Bool)

(assert (=> b!4103422 (=> (not res!1677551) (not e!2546573))))

(declare-fun rulesInvariant!6098 (LexerInterface!6755 List!44266) Bool)

(assert (=> b!4103422 (= res!1677551 (rulesInvariant!6098 thiss!26455 lt!1467289))))

(assert (=> b!4103422 (= lt!1467289 (Cons!44142 rHead!24 rTail!27))))

(declare-fun b!4103423 () Bool)

(declare-fun tp!1243464 () Bool)

(assert (=> b!4103423 (= e!2546572 (and tp!1243464 (inv!58818 (tag!8026 rHead!24)) (inv!58820 (transformation!7166 rHead!24)) e!2546569))))

(assert (= (and start!388864 res!1677554) b!4103415))

(assert (= (and b!4103415 res!1677553) b!4103422))

(assert (= (and b!4103422 res!1677551) b!4103418))

(assert (= (and b!4103418 res!1677552) b!4103417))

(assert (= b!4103420 b!4103416))

(assert (= b!4103421 b!4103420))

(assert (= (and start!388864 ((_ is Cons!44142) rTail!27)) b!4103421))

(assert (= b!4103423 b!4103419))

(assert (= start!388864 b!4103423))

(declare-fun m!4709251 () Bool)

(assert (=> b!4103415 m!4709251))

(declare-fun m!4709253 () Bool)

(assert (=> b!4103422 m!4709253))

(declare-fun m!4709255 () Bool)

(assert (=> b!4103423 m!4709255))

(declare-fun m!4709257 () Bool)

(assert (=> b!4103423 m!4709257))

(declare-fun m!4709259 () Bool)

(assert (=> b!4103420 m!4709259))

(declare-fun m!4709261 () Bool)

(assert (=> b!4103420 m!4709261))

(declare-fun m!4709263 () Bool)

(assert (=> b!4103417 m!4709263))

(declare-fun m!4709265 () Bool)

(assert (=> b!4103417 m!4709265))

(declare-fun m!4709267 () Bool)

(assert (=> b!4103417 m!4709267))

(check-sat (not b!4103417) (not b_next!115835) (not b_next!115833) (not b!4103421) (not b!4103422) b_and!316945 (not b_next!115831) b_and!316941 (not b!4103415) b_and!316943 b_and!316939 (not b!4103420) (not b!4103423) (not b_next!115829))
(check-sat b_and!316943 b_and!316939 (not b_next!115835) (not b_next!115833) (not b_next!115829) b_and!316945 (not b_next!115831) b_and!316941)
(get-model)

(declare-fun d!1218056 () Bool)

(assert (=> d!1218056 (= (isEmpty!26377 rTail!27) ((_ is Nil!44142) rTail!27))))

(assert (=> b!4103415 d!1218056))

(declare-fun d!1218058 () Bool)

(assert (=> d!1218058 (= (inv!58818 (tag!8026 (h!49562 rTail!27))) (= (mod (str.len (value!224859 (tag!8026 (h!49562 rTail!27)))) 2) 0))))

(assert (=> b!4103420 d!1218058))

(declare-fun d!1218060 () Bool)

(declare-fun res!1677567 () Bool)

(declare-fun e!2546583 () Bool)

(assert (=> d!1218060 (=> (not res!1677567) (not e!2546583))))

(declare-fun semiInverseModEq!3079 (Int Int) Bool)

(assert (=> d!1218060 (= res!1677567 (semiInverseModEq!3079 (toChars!9637 (transformation!7166 (h!49562 rTail!27))) (toValue!9778 (transformation!7166 (h!49562 rTail!27)))))))

(assert (=> d!1218060 (= (inv!58820 (transformation!7166 (h!49562 rTail!27))) e!2546583)))

(declare-fun b!4103429 () Bool)

(declare-fun equivClasses!2978 (Int Int) Bool)

(assert (=> b!4103429 (= e!2546583 (equivClasses!2978 (toChars!9637 (transformation!7166 (h!49562 rTail!27))) (toValue!9778 (transformation!7166 (h!49562 rTail!27)))))))

(assert (= (and d!1218060 res!1677567) b!4103429))

(declare-fun m!4709273 () Bool)

(assert (=> d!1218060 m!4709273))

(declare-fun m!4709275 () Bool)

(assert (=> b!4103429 m!4709275))

(assert (=> b!4103420 d!1218060))

(declare-fun d!1218066 () Bool)

(assert (=> d!1218066 (= (inv!58818 (tag!8026 rHead!24)) (= (mod (str.len (value!224859 (tag!8026 rHead!24))) 2) 0))))

(assert (=> b!4103423 d!1218066))

(declare-fun d!1218068 () Bool)

(declare-fun res!1677568 () Bool)

(declare-fun e!2546584 () Bool)

(assert (=> d!1218068 (=> (not res!1677568) (not e!2546584))))

(assert (=> d!1218068 (= res!1677568 (semiInverseModEq!3079 (toChars!9637 (transformation!7166 rHead!24)) (toValue!9778 (transformation!7166 rHead!24))))))

(assert (=> d!1218068 (= (inv!58820 (transformation!7166 rHead!24)) e!2546584)))

(declare-fun b!4103430 () Bool)

(assert (=> b!4103430 (= e!2546584 (equivClasses!2978 (toChars!9637 (transformation!7166 rHead!24)) (toValue!9778 (transformation!7166 rHead!24))))))

(assert (= (and d!1218068 res!1677568) b!4103430))

(declare-fun m!4709277 () Bool)

(assert (=> d!1218068 m!4709277))

(declare-fun m!4709279 () Bool)

(assert (=> b!4103430 m!4709279))

(assert (=> b!4103423 d!1218068))

(declare-fun d!1218070 () Bool)

(declare-fun res!1677575 () Bool)

(declare-fun e!2546591 () Bool)

(assert (=> d!1218070 (=> (not res!1677575) (not e!2546591))))

(declare-fun rulesValid!2815 (LexerInterface!6755 List!44266) Bool)

(assert (=> d!1218070 (= res!1677575 (rulesValid!2815 thiss!26455 lt!1467289))))

(assert (=> d!1218070 (= (rulesInvariant!6098 thiss!26455 lt!1467289) e!2546591)))

(declare-fun b!4103437 () Bool)

(assert (=> b!4103437 (= e!2546591 (noDuplicateTag!2843 thiss!26455 lt!1467289 Nil!44143))))

(assert (= (and d!1218070 res!1677575) b!4103437))

(declare-fun m!4709289 () Bool)

(assert (=> d!1218070 m!4709289))

(declare-fun m!4709291 () Bool)

(assert (=> b!4103437 m!4709291))

(assert (=> b!4103422 d!1218070))

(declare-fun d!1218078 () Bool)

(declare-fun lt!1467295 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6799 (List!44266) (InoxSet Rule!14132))

(assert (=> d!1218078 (= lt!1467295 (select (content!6799 lt!1467289) rHead!24))))

(declare-fun e!2546603 () Bool)

(assert (=> d!1218078 (= lt!1467295 e!2546603)))

(declare-fun res!1677586 () Bool)

(assert (=> d!1218078 (=> (not res!1677586) (not e!2546603))))

(assert (=> d!1218078 (= res!1677586 ((_ is Cons!44142) lt!1467289))))

(assert (=> d!1218078 (= (contains!8835 lt!1467289 rHead!24) lt!1467295)))

(declare-fun b!4103448 () Bool)

(declare-fun e!2546602 () Bool)

(assert (=> b!4103448 (= e!2546603 e!2546602)))

(declare-fun res!1677587 () Bool)

(assert (=> b!4103448 (=> res!1677587 e!2546602)))

(assert (=> b!4103448 (= res!1677587 (= (h!49562 lt!1467289) rHead!24))))

(declare-fun b!4103449 () Bool)

(assert (=> b!4103449 (= e!2546602 (contains!8835 (t!339923 lt!1467289) rHead!24))))

(assert (= (and d!1218078 res!1677586) b!4103448))

(assert (= (and b!4103448 (not res!1677587)) b!4103449))

(declare-fun m!4709295 () Bool)

(assert (=> d!1218078 m!4709295))

(declare-fun m!4709299 () Bool)

(assert (=> d!1218078 m!4709299))

(declare-fun m!4709303 () Bool)

(assert (=> b!4103449 m!4709303))

(assert (=> b!4103417 d!1218078))

(declare-fun d!1218082 () Bool)

(declare-fun res!1677596 () Bool)

(declare-fun e!2546612 () Bool)

(assert (=> d!1218082 (=> res!1677596 e!2546612)))

(assert (=> d!1218082 (= res!1677596 ((_ is Nil!44142) (Cons!44142 (h!49562 rTail!27) (Cons!44142 rHead!24 (t!339923 rTail!27)))))))

(assert (=> d!1218082 (= (noDuplicateTag!2843 thiss!26455 (Cons!44142 (h!49562 rTail!27) (Cons!44142 rHead!24 (t!339923 rTail!27))) Nil!44143) e!2546612)))

(declare-fun b!4103458 () Bool)

(declare-fun e!2546613 () Bool)

(assert (=> b!4103458 (= e!2546612 e!2546613)))

(declare-fun res!1677597 () Bool)

(assert (=> b!4103458 (=> (not res!1677597) (not e!2546613))))

(declare-fun contains!8836 (List!44267 String!50730) Bool)

(assert (=> b!4103458 (= res!1677597 (not (contains!8836 Nil!44143 (tag!8026 (h!49562 (Cons!44142 (h!49562 rTail!27) (Cons!44142 rHead!24 (t!339923 rTail!27))))))))))

(declare-fun b!4103459 () Bool)

(assert (=> b!4103459 (= e!2546613 (noDuplicateTag!2843 thiss!26455 (t!339923 (Cons!44142 (h!49562 rTail!27) (Cons!44142 rHead!24 (t!339923 rTail!27)))) (Cons!44143 (tag!8026 (h!49562 (Cons!44142 (h!49562 rTail!27) (Cons!44142 rHead!24 (t!339923 rTail!27))))) Nil!44143)))))

(assert (= (and d!1218082 (not res!1677596)) b!4103458))

(assert (= (and b!4103458 res!1677597) b!4103459))

(declare-fun m!4709305 () Bool)

(assert (=> b!4103458 m!4709305))

(declare-fun m!4709307 () Bool)

(assert (=> b!4103459 m!4709307))

(assert (=> b!4103417 d!1218082))

(declare-fun d!1218084 () Bool)

(assert (=> d!1218084 (noDuplicateTag!2843 thiss!26455 (Cons!44142 (h!49562 rTail!27) (Cons!44142 rHead!24 (t!339923 rTail!27))) Nil!44143)))

(declare-fun lt!1467298 () Unit!63627)

(declare-fun choose!25085 (LexerInterface!6755 Rule!14132 Rule!14132 List!44266) Unit!63627)

(assert (=> d!1218084 (= lt!1467298 (choose!25085 thiss!26455 rHead!24 (h!49562 rTail!27) (t!339923 rTail!27)))))

(assert (=> d!1218084 (noDuplicateTag!2843 thiss!26455 (Cons!44142 rHead!24 (Cons!44142 (h!49562 rTail!27) (t!339923 rTail!27))) Nil!44143)))

(assert (=> d!1218084 (= (lemmaNoDuplicateCanReorder!38 thiss!26455 rHead!24 (h!49562 rTail!27) (t!339923 rTail!27)) lt!1467298)))

(declare-fun bs!593969 () Bool)

(assert (= bs!593969 d!1218084))

(assert (=> bs!593969 m!4709265))

(declare-fun m!4709313 () Bool)

(assert (=> bs!593969 m!4709313))

(declare-fun m!4709315 () Bool)

(assert (=> bs!593969 m!4709315))

(assert (=> b!4103417 d!1218084))

(declare-fun b!4103472 () Bool)

(declare-fun b_free!115133 () Bool)

(declare-fun b_next!115837 () Bool)

(assert (=> b!4103472 (= b_free!115133 (not b_next!115837))))

(declare-fun tp!1243476 () Bool)

(declare-fun b_and!316947 () Bool)

(assert (=> b!4103472 (= tp!1243476 b_and!316947)))

(declare-fun b_free!115135 () Bool)

(declare-fun b_next!115839 () Bool)

(assert (=> b!4103472 (= b_free!115135 (not b_next!115839))))

(declare-fun tp!1243477 () Bool)

(declare-fun b_and!316949 () Bool)

(assert (=> b!4103472 (= tp!1243477 b_and!316949)))

(declare-fun e!2546624 () Bool)

(assert (=> b!4103472 (= e!2546624 (and tp!1243476 tp!1243477))))

(declare-fun e!2546626 () Bool)

(declare-fun tp!1243475 () Bool)

(declare-fun b!4103471 () Bool)

(assert (=> b!4103471 (= e!2546626 (and tp!1243475 (inv!58818 (tag!8026 (h!49562 (t!339923 rTail!27)))) (inv!58820 (transformation!7166 (h!49562 (t!339923 rTail!27)))) e!2546624))))

(declare-fun b!4103470 () Bool)

(declare-fun e!2546625 () Bool)

(declare-fun tp!1243478 () Bool)

(assert (=> b!4103470 (= e!2546625 (and e!2546626 tp!1243478))))

(assert (=> b!4103421 (= tp!1243462 e!2546625)))

(assert (= b!4103471 b!4103472))

(assert (= b!4103470 b!4103471))

(assert (= (and b!4103421 ((_ is Cons!44142) (t!339923 rTail!27))) b!4103470))

(declare-fun m!4709321 () Bool)

(assert (=> b!4103471 m!4709321))

(declare-fun m!4709323 () Bool)

(assert (=> b!4103471 m!4709323))

(declare-fun b!4103492 () Bool)

(declare-fun e!2546638 () Bool)

(declare-fun tp!1243497 () Bool)

(declare-fun tp!1243498 () Bool)

(assert (=> b!4103492 (= e!2546638 (and tp!1243497 tp!1243498))))

(declare-fun b!4103493 () Bool)

(declare-fun tp!1243495 () Bool)

(assert (=> b!4103493 (= e!2546638 tp!1243495)))

(declare-fun b!4103494 () Bool)

(declare-fun tp!1243496 () Bool)

(declare-fun tp!1243499 () Bool)

(assert (=> b!4103494 (= e!2546638 (and tp!1243496 tp!1243499))))

(declare-fun b!4103491 () Bool)

(declare-fun tp_is_empty!21111 () Bool)

(assert (=> b!4103491 (= e!2546638 tp_is_empty!21111)))

(assert (=> b!4103420 (= tp!1243463 e!2546638)))

(assert (= (and b!4103420 ((_ is ElementMatch!12071) (regex!7166 (h!49562 rTail!27)))) b!4103491))

(assert (= (and b!4103420 ((_ is Concat!19467) (regex!7166 (h!49562 rTail!27)))) b!4103492))

(assert (= (and b!4103420 ((_ is Star!12071) (regex!7166 (h!49562 rTail!27)))) b!4103493))

(assert (= (and b!4103420 ((_ is Union!12071) (regex!7166 (h!49562 rTail!27)))) b!4103494))

(declare-fun b!4103496 () Bool)

(declare-fun e!2546639 () Bool)

(declare-fun tp!1243504 () Bool)

(declare-fun tp!1243505 () Bool)

(assert (=> b!4103496 (= e!2546639 (and tp!1243504 tp!1243505))))

(declare-fun b!4103497 () Bool)

(declare-fun tp!1243502 () Bool)

(assert (=> b!4103497 (= e!2546639 tp!1243502)))

(declare-fun b!4103498 () Bool)

(declare-fun tp!1243503 () Bool)

(declare-fun tp!1243506 () Bool)

(assert (=> b!4103498 (= e!2546639 (and tp!1243503 tp!1243506))))

(declare-fun b!4103495 () Bool)

(assert (=> b!4103495 (= e!2546639 tp_is_empty!21111)))

(assert (=> b!4103423 (= tp!1243464 e!2546639)))

(assert (= (and b!4103423 ((_ is ElementMatch!12071) (regex!7166 rHead!24))) b!4103495))

(assert (= (and b!4103423 ((_ is Concat!19467) (regex!7166 rHead!24))) b!4103496))

(assert (= (and b!4103423 ((_ is Star!12071) (regex!7166 rHead!24))) b!4103497))

(assert (= (and b!4103423 ((_ is Union!12071) (regex!7166 rHead!24))) b!4103498))

(check-sat b_and!316947 b_and!316939 (not b!4103437) (not b_next!115835) (not b_next!115839) (not b!4103493) (not b!4103449) tp_is_empty!21111 (not d!1218068) (not b!4103471) (not d!1218070) (not b!4103470) (not d!1218060) (not b_next!115829) b_and!316945 (not b_next!115837) (not b_next!115831) (not b!4103498) (not b!4103430) b_and!316943 (not b!4103458) (not b!4103492) b_and!316949 (not b!4103494) (not b!4103459) (not d!1218084) (not b!4103497) (not b_next!115833) (not d!1218078) (not b!4103496) b_and!316941 (not b!4103429))
(check-sat b_and!316943 b_and!316947 b_and!316939 b_and!316949 (not b_next!115835) (not b_next!115839) (not b_next!115833) (not b_next!115829) b_and!316945 (not b_next!115837) (not b_next!115831) b_and!316941)
