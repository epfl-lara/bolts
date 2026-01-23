; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389148 () Bool)

(assert start!389148)

(declare-fun b!4105421 () Bool)

(declare-fun b_free!115305 () Bool)

(declare-fun b_next!116009 () Bool)

(assert (=> b!4105421 (= b_free!115305 (not b_next!116009))))

(declare-fun tp!1244948 () Bool)

(declare-fun b_and!317119 () Bool)

(assert (=> b!4105421 (= tp!1244948 b_and!317119)))

(declare-fun b_free!115307 () Bool)

(declare-fun b_next!116011 () Bool)

(assert (=> b!4105421 (= b_free!115307 (not b_next!116011))))

(declare-fun tp!1244947 () Bool)

(declare-fun b_and!317121 () Bool)

(assert (=> b!4105421 (= tp!1244947 b_and!317121)))

(declare-fun b!4105415 () Bool)

(declare-fun b_free!115309 () Bool)

(declare-fun b_next!116013 () Bool)

(assert (=> b!4105415 (= b_free!115309 (not b_next!116013))))

(declare-fun tp!1244942 () Bool)

(declare-fun b_and!317123 () Bool)

(assert (=> b!4105415 (= tp!1244942 b_and!317123)))

(declare-fun b_free!115311 () Bool)

(declare-fun b_next!116015 () Bool)

(assert (=> b!4105415 (= b_free!115311 (not b_next!116015))))

(declare-fun tp!1244946 () Bool)

(declare-fun b_and!317125 () Bool)

(assert (=> b!4105415 (= tp!1244946 b_and!317125)))

(declare-fun e!2547853 () Bool)

(declare-fun tp!1244945 () Bool)

(declare-fun b!4105414 () Bool)

(declare-fun e!2547858 () Bool)

(declare-datatypes ((C!24356 0))(
  ( (C!24357 (val!14288 Int)) )
))
(declare-datatypes ((List!44320 0))(
  ( (Nil!44196) (Cons!44196 (h!49616 (_ BitVec 16)) (t!339977 List!44320)) )
))
(declare-datatypes ((List!44321 0))(
  ( (Nil!44197) (Cons!44197 (h!49617 C!24356) (t!339978 List!44321)) )
))
(declare-datatypes ((IArray!26787 0))(
  ( (IArray!26788 (innerList!13451 List!44321)) )
))
(declare-datatypes ((Regex!12085 0))(
  ( (ElementMatch!12085 (c!706678 C!24356)) (Concat!19495 (regOne!24682 Regex!12085) (regTwo!24682 Regex!12085)) (EmptyExpr!12085) (Star!12085 (reg!12414 Regex!12085)) (EmptyLang!12085) (Union!12085 (regOne!24683 Regex!12085) (regTwo!24683 Regex!12085)) )
))
(declare-datatypes ((TokenValue!7410 0))(
  ( (FloatLiteralValue!14820 (text!52315 List!44320)) (TokenValueExt!7409 (__x!27037 Int)) (Broken!37050 (value!225219 List!44320)) (Object!7533) (End!7410) (Def!7410) (Underscore!7410) (Match!7410) (Else!7410) (Error!7410) (Case!7410) (If!7410) (Extends!7410) (Abstract!7410) (Class!7410) (Val!7410) (DelimiterValue!14820 (del!7470 List!44320)) (KeywordValue!7416 (value!225220 List!44320)) (CommentValue!14820 (value!225221 List!44320)) (WhitespaceValue!14820 (value!225222 List!44320)) (IndentationValue!7410 (value!225223 List!44320)) (String!50799) (Int32!7410) (Broken!37051 (value!225224 List!44320)) (Boolean!7411) (Unit!63668) (OperatorValue!7413 (op!7470 List!44320)) (IdentifierValue!14820 (value!225225 List!44320)) (IdentifierValue!14821 (value!225226 List!44320)) (WhitespaceValue!14821 (value!225227 List!44320)) (True!14820) (False!14820) (Broken!37052 (value!225228 List!44320)) (Broken!37053 (value!225229 List!44320)) (True!14821) (RightBrace!7410) (RightBracket!7410) (Colon!7410) (Null!7410) (Comma!7410) (LeftBracket!7410) (False!14821) (LeftBrace!7410) (ImaginaryLiteralValue!7410 (text!52316 List!44320)) (StringLiteralValue!22230 (value!225230 List!44320)) (EOFValue!7410 (value!225231 List!44320)) (IdentValue!7410 (value!225232 List!44320)) (DelimiterValue!14821 (value!225233 List!44320)) (DedentValue!7410 (value!225234 List!44320)) (NewLineValue!7410 (value!225235 List!44320)) (IntegerValue!22230 (value!225236 (_ BitVec 32)) (text!52317 List!44320)) (IntegerValue!22231 (value!225237 Int) (text!52318 List!44320)) (Times!7410) (Or!7410) (Equal!7410) (Minus!7410) (Broken!37054 (value!225238 List!44320)) (And!7410) (Div!7410) (LessEqual!7410) (Mod!7410) (Concat!19496) (Not!7410) (Plus!7410) (SpaceValue!7410 (value!225239 List!44320)) (IntegerValue!22232 (value!225240 Int) (text!52319 List!44320)) (StringLiteralValue!22231 (text!52320 List!44320)) (FloatLiteralValue!14821 (text!52321 List!44320)) (BytesLiteralValue!7410 (value!225241 List!44320)) (CommentValue!14821 (value!225242 List!44320)) (StringLiteralValue!22232 (value!225243 List!44320)) (ErrorTokenValue!7410 (msg!7471 List!44320)) )
))
(declare-datatypes ((Conc!13391 0))(
  ( (Node!13391 (left!33159 Conc!13391) (right!33489 Conc!13391) (csize!27012 Int) (cheight!13602 Int)) (Leaf!20696 (xs!16697 IArray!26787) (csize!27013 Int)) (Empty!13391) )
))
(declare-datatypes ((BalanceConc!26376 0))(
  ( (BalanceConc!26377 (c!706679 Conc!13391)) )
))
(declare-datatypes ((TokenValueInjection!14248 0))(
  ( (TokenValueInjection!14249 (toValue!9800 Int) (toChars!9659 Int)) )
))
(declare-datatypes ((String!50800 0))(
  ( (String!50801 (value!225244 String)) )
))
(declare-datatypes ((Rule!14160 0))(
  ( (Rule!14161 (regex!7180 Regex!12085) (tag!8040 String!50800) (isSeparator!7180 Bool) (transformation!7180 TokenValueInjection!14248)) )
))
(declare-datatypes ((List!44322 0))(
  ( (Nil!44198) (Cons!44198 (h!49618 Rule!14160) (t!339979 List!44322)) )
))
(declare-fun rTail!27 () List!44322)

(declare-fun inv!58853 (String!50800) Bool)

(declare-fun inv!58855 (TokenValueInjection!14248) Bool)

(assert (=> b!4105414 (= e!2547853 (and tp!1244945 (inv!58853 (tag!8040 (h!49618 rTail!27))) (inv!58855 (transformation!7180 (h!49618 rTail!27))) e!2547858))))

(declare-fun res!1678274 () Bool)

(declare-fun e!2547851 () Bool)

(assert (=> start!389148 (=> (not res!1678274) (not e!2547851))))

(declare-datatypes ((LexerInterface!6769 0))(
  ( (LexerInterfaceExt!6766 (__x!27038 Int)) (Lexer!6767) )
))
(declare-fun thiss!26455 () LexerInterface!6769)

(get-info :version)

(assert (=> start!389148 (= res!1678274 ((_ is Lexer!6767) thiss!26455))))

(assert (=> start!389148 e!2547851))

(assert (=> start!389148 true))

(declare-fun e!2547854 () Bool)

(assert (=> start!389148 e!2547854))

(declare-fun e!2547855 () Bool)

(assert (=> start!389148 e!2547855))

(declare-fun e!2547852 () Bool)

(assert (=> b!4105415 (= e!2547852 (and tp!1244942 tp!1244946))))

(declare-fun b!4105416 () Bool)

(declare-fun tp!1244944 () Bool)

(declare-fun rHead!24 () Rule!14160)

(assert (=> b!4105416 (= e!2547855 (and tp!1244944 (inv!58853 (tag!8040 rHead!24)) (inv!58855 (transformation!7180 rHead!24)) e!2547852))))

(declare-fun b!4105417 () Bool)

(declare-fun res!1678273 () Bool)

(declare-fun e!2547850 () Bool)

(assert (=> b!4105417 (=> (not res!1678273) (not e!2547850))))

(assert (=> b!4105417 (= res!1678273 ((_ is Cons!44198) rTail!27))))

(declare-fun b!4105418 () Bool)

(assert (=> b!4105418 (= e!2547851 e!2547850)))

(declare-fun res!1678275 () Bool)

(assert (=> b!4105418 (=> (not res!1678275) (not e!2547850))))

(declare-fun lt!1467580 () List!44322)

(declare-fun rulesInvariant!6112 (LexerInterface!6769 List!44322) Bool)

(assert (=> b!4105418 (= res!1678275 (rulesInvariant!6112 thiss!26455 lt!1467580))))

(assert (=> b!4105418 (= lt!1467580 (Cons!44198 rHead!24 rTail!27))))

(declare-fun b!4105419 () Bool)

(declare-fun tp!1244943 () Bool)

(assert (=> b!4105419 (= e!2547854 (and e!2547853 tp!1244943))))

(declare-fun b!4105420 () Bool)

(declare-fun e!2547857 () Bool)

(assert (=> b!4105420 (= e!2547850 (not e!2547857))))

(declare-fun res!1678277 () Bool)

(assert (=> b!4105420 (=> res!1678277 e!2547857)))

(declare-fun isEmpty!26391 (List!44322) Bool)

(assert (=> b!4105420 (= res!1678277 (isEmpty!26391 (t!339979 rTail!27)))))

(assert (=> b!4105420 (not (= (tag!8040 rHead!24) (tag!8040 (h!49618 rTail!27))))))

(declare-datatypes ((Unit!63669 0))(
  ( (Unit!63670) )
))
(declare-fun lt!1467579 () Unit!63669)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!40 (LexerInterface!6769 List!44322 Rule!14160 Rule!14160) Unit!63669)

(assert (=> b!4105420 (= lt!1467579 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!40 thiss!26455 lt!1467580 rHead!24 (h!49618 rTail!27)))))

(declare-fun lt!1467577 () List!44322)

(declare-datatypes ((List!44323 0))(
  ( (Nil!44199) (Cons!44199 (h!49619 String!50800) (t!339980 List!44323)) )
))
(declare-fun noDuplicateTag!2857 (LexerInterface!6769 List!44322 List!44323) Bool)

(assert (=> b!4105420 (noDuplicateTag!2857 thiss!26455 (Cons!44198 (h!49618 rTail!27) lt!1467577) Nil!44199)))

(assert (=> b!4105420 (= lt!1467577 (Cons!44198 rHead!24 (t!339979 rTail!27)))))

(declare-fun lt!1467578 () Unit!63669)

(declare-fun lemmaNoDuplicateCanReorder!52 (LexerInterface!6769 Rule!14160 Rule!14160 List!44322) Unit!63669)

(assert (=> b!4105420 (= lt!1467578 (lemmaNoDuplicateCanReorder!52 thiss!26455 rHead!24 (h!49618 rTail!27) (t!339979 rTail!27)))))

(assert (=> b!4105421 (= e!2547858 (and tp!1244948 tp!1244947))))

(declare-fun b!4105422 () Bool)

(assert (=> b!4105422 (= e!2547857 (rulesInvariant!6112 thiss!26455 lt!1467577))))

(assert (=> b!4105422 (noDuplicateTag!2857 thiss!26455 lt!1467577 Nil!44199)))

(declare-fun lt!1467581 () Unit!63669)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!20 (LexerInterface!6769 List!44323 List!44323 List!44322) Unit!63669)

(assert (=> b!4105422 (= lt!1467581 (lemmaNoDupTagThenAlsoWithSubListAcc!20 thiss!26455 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199) Nil!44199 lt!1467577))))

(declare-fun b!4105423 () Bool)

(declare-fun res!1678276 () Bool)

(assert (=> b!4105423 (=> (not res!1678276) (not e!2547851))))

(assert (=> b!4105423 (= res!1678276 (not (isEmpty!26391 rTail!27)))))

(assert (= (and start!389148 res!1678274) b!4105423))

(assert (= (and b!4105423 res!1678276) b!4105418))

(assert (= (and b!4105418 res!1678275) b!4105417))

(assert (= (and b!4105417 res!1678273) b!4105420))

(assert (= (and b!4105420 (not res!1678277)) b!4105422))

(assert (= b!4105414 b!4105421))

(assert (= b!4105419 b!4105414))

(assert (= (and start!389148 ((_ is Cons!44198) rTail!27)) b!4105419))

(assert (= b!4105416 b!4105415))

(assert (= start!389148 b!4105416))

(declare-fun m!4710407 () Bool)

(assert (=> b!4105418 m!4710407))

(declare-fun m!4710409 () Bool)

(assert (=> b!4105416 m!4710409))

(declare-fun m!4710411 () Bool)

(assert (=> b!4105416 m!4710411))

(declare-fun m!4710413 () Bool)

(assert (=> b!4105420 m!4710413))

(declare-fun m!4710415 () Bool)

(assert (=> b!4105420 m!4710415))

(declare-fun m!4710417 () Bool)

(assert (=> b!4105420 m!4710417))

(declare-fun m!4710419 () Bool)

(assert (=> b!4105420 m!4710419))

(declare-fun m!4710421 () Bool)

(assert (=> b!4105422 m!4710421))

(declare-fun m!4710423 () Bool)

(assert (=> b!4105422 m!4710423))

(declare-fun m!4710425 () Bool)

(assert (=> b!4105422 m!4710425))

(declare-fun m!4710427 () Bool)

(assert (=> b!4105414 m!4710427))

(declare-fun m!4710429 () Bool)

(assert (=> b!4105414 m!4710429))

(declare-fun m!4710431 () Bool)

(assert (=> b!4105423 m!4710431))

(check-sat (not b!4105414) b_and!317121 (not b!4105423) (not b_next!116011) (not b!4105419) (not b_next!116015) (not b!4105420) (not b_next!116013) b_and!317123 (not b!4105418) (not b_next!116009) b_and!317119 (not b!4105422) (not b!4105416) b_and!317125)
(check-sat b_and!317121 (not b_next!116011) b_and!317119 (not b_next!116015) (not b_next!116013) b_and!317123 b_and!317125 (not b_next!116009))
(get-model)

(declare-fun d!1218593 () Bool)

(assert (=> d!1218593 (= (isEmpty!26391 (t!339979 rTail!27)) ((_ is Nil!44198) (t!339979 rTail!27)))))

(assert (=> b!4105420 d!1218593))

(declare-fun d!1218595 () Bool)

(assert (=> d!1218595 (not (= (tag!8040 rHead!24) (tag!8040 (h!49618 rTail!27))))))

(declare-fun lt!1467587 () Unit!63669)

(declare-fun choose!25105 (LexerInterface!6769 List!44322 Rule!14160 Rule!14160) Unit!63669)

(assert (=> d!1218595 (= lt!1467587 (choose!25105 thiss!26455 lt!1467580 rHead!24 (h!49618 rTail!27)))))

(declare-fun contains!8859 (List!44322 Rule!14160) Bool)

(assert (=> d!1218595 (contains!8859 lt!1467580 rHead!24)))

(assert (=> d!1218595 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!40 thiss!26455 lt!1467580 rHead!24 (h!49618 rTail!27)) lt!1467587)))

(declare-fun bs!594056 () Bool)

(assert (= bs!594056 d!1218595))

(declare-fun m!4710445 () Bool)

(assert (=> bs!594056 m!4710445))

(declare-fun m!4710447 () Bool)

(assert (=> bs!594056 m!4710447))

(assert (=> b!4105420 d!1218595))

(declare-fun d!1218599 () Bool)

(declare-fun res!1678299 () Bool)

(declare-fun e!2547874 () Bool)

(assert (=> d!1218599 (=> res!1678299 e!2547874)))

(assert (=> d!1218599 (= res!1678299 ((_ is Nil!44198) (Cons!44198 (h!49618 rTail!27) lt!1467577)))))

(assert (=> d!1218599 (= (noDuplicateTag!2857 thiss!26455 (Cons!44198 (h!49618 rTail!27) lt!1467577) Nil!44199) e!2547874)))

(declare-fun b!4105438 () Bool)

(declare-fun e!2547875 () Bool)

(assert (=> b!4105438 (= e!2547874 e!2547875)))

(declare-fun res!1678300 () Bool)

(assert (=> b!4105438 (=> (not res!1678300) (not e!2547875))))

(declare-fun contains!8860 (List!44323 String!50800) Bool)

(assert (=> b!4105438 (= res!1678300 (not (contains!8860 Nil!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))))))))

(declare-fun b!4105439 () Bool)

(assert (=> b!4105439 (= e!2547875 (noDuplicateTag!2857 thiss!26455 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)))))

(assert (= (and d!1218599 (not res!1678299)) b!4105438))

(assert (= (and b!4105438 res!1678300) b!4105439))

(declare-fun m!4710453 () Bool)

(assert (=> b!4105438 m!4710453))

(declare-fun m!4710455 () Bool)

(assert (=> b!4105439 m!4710455))

(assert (=> b!4105420 d!1218599))

(declare-fun d!1218603 () Bool)

(assert (=> d!1218603 (noDuplicateTag!2857 thiss!26455 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))) Nil!44199)))

(declare-fun lt!1467593 () Unit!63669)

(declare-fun choose!25107 (LexerInterface!6769 Rule!14160 Rule!14160 List!44322) Unit!63669)

(assert (=> d!1218603 (= lt!1467593 (choose!25107 thiss!26455 rHead!24 (h!49618 rTail!27) (t!339979 rTail!27)))))

(assert (=> d!1218603 (noDuplicateTag!2857 thiss!26455 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))) Nil!44199)))

(assert (=> d!1218603 (= (lemmaNoDuplicateCanReorder!52 thiss!26455 rHead!24 (h!49618 rTail!27) (t!339979 rTail!27)) lt!1467593)))

(declare-fun bs!594058 () Bool)

(assert (= bs!594058 d!1218603))

(declare-fun m!4710463 () Bool)

(assert (=> bs!594058 m!4710463))

(declare-fun m!4710465 () Bool)

(assert (=> bs!594058 m!4710465))

(declare-fun m!4710467 () Bool)

(assert (=> bs!594058 m!4710467))

(assert (=> b!4105420 d!1218603))

(declare-fun d!1218607 () Bool)

(assert (=> d!1218607 (= (inv!58853 (tag!8040 rHead!24)) (= (mod (str.len (value!225244 (tag!8040 rHead!24))) 2) 0))))

(assert (=> b!4105416 d!1218607))

(declare-fun d!1218611 () Bool)

(declare-fun res!1678309 () Bool)

(declare-fun e!2547884 () Bool)

(assert (=> d!1218611 (=> (not res!1678309) (not e!2547884))))

(declare-fun semiInverseModEq!3091 (Int Int) Bool)

(assert (=> d!1218611 (= res!1678309 (semiInverseModEq!3091 (toChars!9659 (transformation!7180 rHead!24)) (toValue!9800 (transformation!7180 rHead!24))))))

(assert (=> d!1218611 (= (inv!58855 (transformation!7180 rHead!24)) e!2547884)))

(declare-fun b!4105450 () Bool)

(declare-fun equivClasses!2990 (Int Int) Bool)

(assert (=> b!4105450 (= e!2547884 (equivClasses!2990 (toChars!9659 (transformation!7180 rHead!24)) (toValue!9800 (transformation!7180 rHead!24))))))

(assert (= (and d!1218611 res!1678309) b!4105450))

(declare-fun m!4710483 () Bool)

(assert (=> d!1218611 m!4710483))

(declare-fun m!4710485 () Bool)

(assert (=> b!4105450 m!4710485))

(assert (=> b!4105416 d!1218611))

(declare-fun d!1218619 () Bool)

(declare-fun res!1678312 () Bool)

(declare-fun e!2547901 () Bool)

(assert (=> d!1218619 (=> (not res!1678312) (not e!2547901))))

(declare-fun rulesValid!2826 (LexerInterface!6769 List!44322) Bool)

(assert (=> d!1218619 (= res!1678312 (rulesValid!2826 thiss!26455 lt!1467577))))

(assert (=> d!1218619 (= (rulesInvariant!6112 thiss!26455 lt!1467577) e!2547901)))

(declare-fun b!4105468 () Bool)

(assert (=> b!4105468 (= e!2547901 (noDuplicateTag!2857 thiss!26455 lt!1467577 Nil!44199))))

(assert (= (and d!1218619 res!1678312) b!4105468))

(declare-fun m!4710491 () Bool)

(assert (=> d!1218619 m!4710491))

(assert (=> b!4105468 m!4710423))

(assert (=> b!4105422 d!1218619))

(declare-fun d!1218621 () Bool)

(declare-fun res!1678313 () Bool)

(declare-fun e!2547902 () Bool)

(assert (=> d!1218621 (=> res!1678313 e!2547902)))

(assert (=> d!1218621 (= res!1678313 ((_ is Nil!44198) lt!1467577))))

(assert (=> d!1218621 (= (noDuplicateTag!2857 thiss!26455 lt!1467577 Nil!44199) e!2547902)))

(declare-fun b!4105473 () Bool)

(declare-fun e!2547903 () Bool)

(assert (=> b!4105473 (= e!2547902 e!2547903)))

(declare-fun res!1678314 () Bool)

(assert (=> b!4105473 (=> (not res!1678314) (not e!2547903))))

(assert (=> b!4105473 (= res!1678314 (not (contains!8860 Nil!44199 (tag!8040 (h!49618 lt!1467577)))))))

(declare-fun b!4105474 () Bool)

(assert (=> b!4105474 (= e!2547903 (noDuplicateTag!2857 thiss!26455 (t!339979 lt!1467577) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)))))

(assert (= (and d!1218621 (not res!1678313)) b!4105473))

(assert (= (and b!4105473 res!1678314) b!4105474))

(declare-fun m!4710493 () Bool)

(assert (=> b!4105473 m!4710493))

(declare-fun m!4710495 () Bool)

(assert (=> b!4105474 m!4710495))

(assert (=> b!4105422 d!1218621))

(declare-fun d!1218623 () Bool)

(assert (=> d!1218623 (noDuplicateTag!2857 thiss!26455 lt!1467577 Nil!44199)))

(declare-fun lt!1467599 () Unit!63669)

(declare-fun choose!25109 (LexerInterface!6769 List!44323 List!44323 List!44322) Unit!63669)

(assert (=> d!1218623 (= lt!1467599 (choose!25109 thiss!26455 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199) Nil!44199 lt!1467577))))

(declare-fun subseq!549 (List!44323 List!44323) Bool)

(assert (=> d!1218623 (subseq!549 Nil!44199 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199))))

(assert (=> d!1218623 (= (lemmaNoDupTagThenAlsoWithSubListAcc!20 thiss!26455 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199) Nil!44199 lt!1467577) lt!1467599)))

(declare-fun bs!594060 () Bool)

(assert (= bs!594060 d!1218623))

(assert (=> bs!594060 m!4710423))

(declare-fun m!4710497 () Bool)

(assert (=> bs!594060 m!4710497))

(declare-fun m!4710499 () Bool)

(assert (=> bs!594060 m!4710499))

(assert (=> b!4105422 d!1218623))

(declare-fun d!1218625 () Bool)

(assert (=> d!1218625 (= (isEmpty!26391 rTail!27) ((_ is Nil!44198) rTail!27))))

(assert (=> b!4105423 d!1218625))

(declare-fun d!1218627 () Bool)

(declare-fun res!1678315 () Bool)

(declare-fun e!2547906 () Bool)

(assert (=> d!1218627 (=> (not res!1678315) (not e!2547906))))

(assert (=> d!1218627 (= res!1678315 (rulesValid!2826 thiss!26455 lt!1467580))))

(assert (=> d!1218627 (= (rulesInvariant!6112 thiss!26455 lt!1467580) e!2547906)))

(declare-fun b!4105483 () Bool)

(assert (=> b!4105483 (= e!2547906 (noDuplicateTag!2857 thiss!26455 lt!1467580 Nil!44199))))

(assert (= (and d!1218627 res!1678315) b!4105483))

(declare-fun m!4710501 () Bool)

(assert (=> d!1218627 m!4710501))

(declare-fun m!4710503 () Bool)

(assert (=> b!4105483 m!4710503))

(assert (=> b!4105418 d!1218627))

(declare-fun d!1218629 () Bool)

(assert (=> d!1218629 (= (inv!58853 (tag!8040 (h!49618 rTail!27))) (= (mod (str.len (value!225244 (tag!8040 (h!49618 rTail!27)))) 2) 0))))

(assert (=> b!4105414 d!1218629))

(declare-fun d!1218631 () Bool)

(declare-fun res!1678316 () Bool)

(declare-fun e!2547907 () Bool)

(assert (=> d!1218631 (=> (not res!1678316) (not e!2547907))))

(assert (=> d!1218631 (= res!1678316 (semiInverseModEq!3091 (toChars!9659 (transformation!7180 (h!49618 rTail!27))) (toValue!9800 (transformation!7180 (h!49618 rTail!27)))))))

(assert (=> d!1218631 (= (inv!58855 (transformation!7180 (h!49618 rTail!27))) e!2547907)))

(declare-fun b!4105484 () Bool)

(assert (=> b!4105484 (= e!2547907 (equivClasses!2990 (toChars!9659 (transformation!7180 (h!49618 rTail!27))) (toValue!9800 (transformation!7180 (h!49618 rTail!27)))))))

(assert (= (and d!1218631 res!1678316) b!4105484))

(declare-fun m!4710505 () Bool)

(assert (=> d!1218631 m!4710505))

(declare-fun m!4710507 () Bool)

(assert (=> b!4105484 m!4710507))

(assert (=> b!4105414 d!1218631))

(declare-fun b!4105495 () Bool)

(declare-fun e!2547910 () Bool)

(declare-fun tp_is_empty!21137 () Bool)

(assert (=> b!4105495 (= e!2547910 tp_is_empty!21137)))

(declare-fun b!4105496 () Bool)

(declare-fun tp!1244995 () Bool)

(declare-fun tp!1244994 () Bool)

(assert (=> b!4105496 (= e!2547910 (and tp!1244995 tp!1244994))))

(declare-fun b!4105498 () Bool)

(declare-fun tp!1244992 () Bool)

(declare-fun tp!1244991 () Bool)

(assert (=> b!4105498 (= e!2547910 (and tp!1244992 tp!1244991))))

(assert (=> b!4105416 (= tp!1244944 e!2547910)))

(declare-fun b!4105497 () Bool)

(declare-fun tp!1244993 () Bool)

(assert (=> b!4105497 (= e!2547910 tp!1244993)))

(assert (= (and b!4105416 ((_ is ElementMatch!12085) (regex!7180 rHead!24))) b!4105495))

(assert (= (and b!4105416 ((_ is Concat!19495) (regex!7180 rHead!24))) b!4105496))

(assert (= (and b!4105416 ((_ is Star!12085) (regex!7180 rHead!24))) b!4105497))

(assert (= (and b!4105416 ((_ is Union!12085) (regex!7180 rHead!24))) b!4105498))

(declare-fun b!4105509 () Bool)

(declare-fun b_free!115317 () Bool)

(declare-fun b_next!116021 () Bool)

(assert (=> b!4105509 (= b_free!115317 (not b_next!116021))))

(declare-fun tp!1245007 () Bool)

(declare-fun b_and!317131 () Bool)

(assert (=> b!4105509 (= tp!1245007 b_and!317131)))

(declare-fun b_free!115319 () Bool)

(declare-fun b_next!116023 () Bool)

(assert (=> b!4105509 (= b_free!115319 (not b_next!116023))))

(declare-fun tp!1245006 () Bool)

(declare-fun b_and!317133 () Bool)

(assert (=> b!4105509 (= tp!1245006 b_and!317133)))

(declare-fun e!2547920 () Bool)

(assert (=> b!4105509 (= e!2547920 (and tp!1245007 tp!1245006))))

(declare-fun e!2547922 () Bool)

(declare-fun tp!1245004 () Bool)

(declare-fun b!4105508 () Bool)

(assert (=> b!4105508 (= e!2547922 (and tp!1245004 (inv!58853 (tag!8040 (h!49618 (t!339979 rTail!27)))) (inv!58855 (transformation!7180 (h!49618 (t!339979 rTail!27)))) e!2547920))))

(declare-fun b!4105507 () Bool)

(declare-fun e!2547919 () Bool)

(declare-fun tp!1245005 () Bool)

(assert (=> b!4105507 (= e!2547919 (and e!2547922 tp!1245005))))

(assert (=> b!4105419 (= tp!1244943 e!2547919)))

(assert (= b!4105508 b!4105509))

(assert (= b!4105507 b!4105508))

(assert (= (and b!4105419 ((_ is Cons!44198) (t!339979 rTail!27))) b!4105507))

(declare-fun m!4710509 () Bool)

(assert (=> b!4105508 m!4710509))

(declare-fun m!4710511 () Bool)

(assert (=> b!4105508 m!4710511))

(declare-fun b!4105510 () Bool)

(declare-fun e!2547923 () Bool)

(assert (=> b!4105510 (= e!2547923 tp_is_empty!21137)))

(declare-fun b!4105511 () Bool)

(declare-fun tp!1245012 () Bool)

(declare-fun tp!1245011 () Bool)

(assert (=> b!4105511 (= e!2547923 (and tp!1245012 tp!1245011))))

(declare-fun b!4105513 () Bool)

(declare-fun tp!1245009 () Bool)

(declare-fun tp!1245008 () Bool)

(assert (=> b!4105513 (= e!2547923 (and tp!1245009 tp!1245008))))

(assert (=> b!4105414 (= tp!1244945 e!2547923)))

(declare-fun b!4105512 () Bool)

(declare-fun tp!1245010 () Bool)

(assert (=> b!4105512 (= e!2547923 tp!1245010)))

(assert (= (and b!4105414 ((_ is ElementMatch!12085) (regex!7180 (h!49618 rTail!27)))) b!4105510))

(assert (= (and b!4105414 ((_ is Concat!19495) (regex!7180 (h!49618 rTail!27)))) b!4105511))

(assert (= (and b!4105414 ((_ is Star!12085) (regex!7180 (h!49618 rTail!27)))) b!4105512))

(assert (= (and b!4105414 ((_ is Union!12085) (regex!7180 (h!49618 rTail!27)))) b!4105513))

(check-sat (not b!4105438) b_and!317121 (not b_next!116021) (not b!4105507) (not b!4105483) (not d!1218619) (not b_next!116015) (not b!4105484) (not b_next!116013) b_and!317125 (not b!4105508) (not d!1218595) (not b!4105496) (not b!4105474) tp_is_empty!21137 (not d!1218631) (not b!4105439) (not b_next!116011) b_and!317131 (not b!4105512) (not b!4105468) (not b!4105450) b_and!317119 b_and!317133 (not b!4105497) (not d!1218627) (not d!1218623) (not d!1218611) (not d!1218603) b_and!317123 (not b!4105473) (not b!4105513) (not b_next!116009) (not b_next!116023) (not b!4105511) (not b!4105498))
(check-sat b_and!317121 (not b_next!116021) (not b_next!116015) (not b_next!116013) b_and!317123 b_and!317125 (not b_next!116011) b_and!317131 b_and!317119 b_and!317133 (not b_next!116009) (not b_next!116023))
(get-model)

(declare-fun d!1218643 () Bool)

(declare-fun lt!1467607 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6810 (List!44323) (InoxSet String!50800))

(assert (=> d!1218643 (= lt!1467607 (select (content!6810 Nil!44199) (tag!8040 (h!49618 lt!1467577))))))

(declare-fun e!2547949 () Bool)

(assert (=> d!1218643 (= lt!1467607 e!2547949)))

(declare-fun res!1678350 () Bool)

(assert (=> d!1218643 (=> (not res!1678350) (not e!2547949))))

(assert (=> d!1218643 (= res!1678350 ((_ is Cons!44199) Nil!44199))))

(assert (=> d!1218643 (= (contains!8860 Nil!44199 (tag!8040 (h!49618 lt!1467577))) lt!1467607)))

(declare-fun b!4105538 () Bool)

(declare-fun e!2547948 () Bool)

(assert (=> b!4105538 (= e!2547949 e!2547948)))

(declare-fun res!1678351 () Bool)

(assert (=> b!4105538 (=> res!1678351 e!2547948)))

(assert (=> b!4105538 (= res!1678351 (= (h!49619 Nil!44199) (tag!8040 (h!49618 lt!1467577))))))

(declare-fun b!4105539 () Bool)

(assert (=> b!4105539 (= e!2547948 (contains!8860 (t!339980 Nil!44199) (tag!8040 (h!49618 lt!1467577))))))

(assert (= (and d!1218643 res!1678350) b!4105538))

(assert (= (and b!4105538 (not res!1678351)) b!4105539))

(declare-fun m!4710527 () Bool)

(assert (=> d!1218643 m!4710527))

(declare-fun m!4710529 () Bool)

(assert (=> d!1218643 m!4710529))

(declare-fun m!4710531 () Bool)

(assert (=> b!4105539 m!4710531))

(assert (=> b!4105473 d!1218643))

(declare-fun d!1218645 () Bool)

(declare-fun res!1678352 () Bool)

(declare-fun e!2547950 () Bool)

(assert (=> d!1218645 (=> res!1678352 e!2547950)))

(assert (=> d!1218645 (= res!1678352 ((_ is Nil!44198) (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))))

(assert (=> d!1218645 (= (noDuplicateTag!2857 thiss!26455 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)) e!2547950)))

(declare-fun b!4105540 () Bool)

(declare-fun e!2547951 () Bool)

(assert (=> b!4105540 (= e!2547950 e!2547951)))

(declare-fun res!1678353 () Bool)

(assert (=> b!4105540 (=> (not res!1678353) (not e!2547951))))

(assert (=> b!4105540 (= res!1678353 (not (contains!8860 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199) (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))))))))

(declare-fun b!4105541 () Bool)

(assert (=> b!4105541 (= e!2547951 (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199))))))

(assert (= (and d!1218645 (not res!1678352)) b!4105540))

(assert (= (and b!4105540 res!1678353) b!4105541))

(declare-fun m!4710533 () Bool)

(assert (=> b!4105540 m!4710533))

(declare-fun m!4710535 () Bool)

(assert (=> b!4105541 m!4710535))

(assert (=> b!4105439 d!1218645))

(declare-fun d!1218647 () Bool)

(declare-fun res!1678354 () Bool)

(declare-fun e!2547952 () Bool)

(assert (=> d!1218647 (=> res!1678354 e!2547952)))

(assert (=> d!1218647 (= res!1678354 ((_ is Nil!44198) (t!339979 lt!1467577)))))

(assert (=> d!1218647 (= (noDuplicateTag!2857 thiss!26455 (t!339979 lt!1467577) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)) e!2547952)))

(declare-fun b!4105542 () Bool)

(declare-fun e!2547953 () Bool)

(assert (=> b!4105542 (= e!2547952 e!2547953)))

(declare-fun res!1678355 () Bool)

(assert (=> b!4105542 (=> (not res!1678355) (not e!2547953))))

(assert (=> b!4105542 (= res!1678355 (not (contains!8860 (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199) (tag!8040 (h!49618 (t!339979 lt!1467577))))))))

(declare-fun b!4105543 () Bool)

(assert (=> b!4105543 (= e!2547953 (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 lt!1467577)) (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467577))) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199))))))

(assert (= (and d!1218647 (not res!1678354)) b!4105542))

(assert (= (and b!4105542 res!1678355) b!4105543))

(declare-fun m!4710537 () Bool)

(assert (=> b!4105542 m!4710537))

(declare-fun m!4710539 () Bool)

(assert (=> b!4105543 m!4710539))

(assert (=> b!4105474 d!1218647))

(declare-fun d!1218649 () Bool)

(assert (=> d!1218649 true))

(declare-fun lt!1467613 () Bool)

(declare-fun rulesValidInductive!2663 (LexerInterface!6769 List!44322) Bool)

(assert (=> d!1218649 (= lt!1467613 (rulesValidInductive!2663 thiss!26455 lt!1467577))))

(declare-fun lambda!128337 () Int)

(declare-fun forall!8431 (List!44322 Int) Bool)

(assert (=> d!1218649 (= lt!1467613 (forall!8431 lt!1467577 lambda!128337))))

(assert (=> d!1218649 (= (rulesValid!2826 thiss!26455 lt!1467577) lt!1467613)))

(declare-fun bs!594063 () Bool)

(assert (= bs!594063 d!1218649))

(declare-fun m!4710545 () Bool)

(assert (=> bs!594063 m!4710545))

(declare-fun m!4710547 () Bool)

(assert (=> bs!594063 m!4710547))

(assert (=> d!1218619 d!1218649))

(declare-fun d!1218655 () Bool)

(assert (=> d!1218655 true))

(declare-fun order!23249 () Int)

(declare-fun order!23247 () Int)

(declare-fun lambda!128342 () Int)

(declare-fun dynLambda!18900 (Int Int) Int)

(declare-fun dynLambda!18901 (Int Int) Int)

(assert (=> d!1218655 (< (dynLambda!18900 order!23247 (toValue!9800 (transformation!7180 rHead!24))) (dynLambda!18901 order!23249 lambda!128342))))

(declare-fun Forall2!1129 (Int) Bool)

(assert (=> d!1218655 (= (equivClasses!2990 (toChars!9659 (transformation!7180 rHead!24)) (toValue!9800 (transformation!7180 rHead!24))) (Forall2!1129 lambda!128342))))

(declare-fun bs!594064 () Bool)

(assert (= bs!594064 d!1218655))

(declare-fun m!4710567 () Bool)

(assert (=> bs!594064 m!4710567))

(assert (=> b!4105450 d!1218655))

(assert (=> b!4105468 d!1218621))

(declare-fun bs!594065 () Bool)

(declare-fun d!1218665 () Bool)

(assert (= bs!594065 (and d!1218665 d!1218649)))

(declare-fun lambda!128344 () Int)

(assert (=> bs!594065 (= lambda!128344 lambda!128337)))

(assert (=> d!1218665 true))

(declare-fun lt!1467616 () Bool)

(assert (=> d!1218665 (= lt!1467616 (rulesValidInductive!2663 thiss!26455 lt!1467580))))

(assert (=> d!1218665 (= lt!1467616 (forall!8431 lt!1467580 lambda!128344))))

(assert (=> d!1218665 (= (rulesValid!2826 thiss!26455 lt!1467580) lt!1467616)))

(declare-fun bs!594066 () Bool)

(assert (= bs!594066 d!1218665))

(declare-fun m!4710569 () Bool)

(assert (=> bs!594066 m!4710569))

(declare-fun m!4710571 () Bool)

(assert (=> bs!594066 m!4710571))

(assert (=> d!1218627 d!1218665))

(declare-fun d!1218667 () Bool)

(assert (=> d!1218667 (= (inv!58853 (tag!8040 (h!49618 (t!339979 rTail!27)))) (= (mod (str.len (value!225244 (tag!8040 (h!49618 (t!339979 rTail!27))))) 2) 0))))

(assert (=> b!4105508 d!1218667))

(declare-fun d!1218669 () Bool)

(declare-fun res!1678370 () Bool)

(declare-fun e!2547968 () Bool)

(assert (=> d!1218669 (=> (not res!1678370) (not e!2547968))))

(assert (=> d!1218669 (= res!1678370 (semiInverseModEq!3091 (toChars!9659 (transformation!7180 (h!49618 (t!339979 rTail!27)))) (toValue!9800 (transformation!7180 (h!49618 (t!339979 rTail!27))))))))

(assert (=> d!1218669 (= (inv!58855 (transformation!7180 (h!49618 (t!339979 rTail!27)))) e!2547968)))

(declare-fun b!4105568 () Bool)

(assert (=> b!4105568 (= e!2547968 (equivClasses!2990 (toChars!9659 (transformation!7180 (h!49618 (t!339979 rTail!27)))) (toValue!9800 (transformation!7180 (h!49618 (t!339979 rTail!27))))))))

(assert (= (and d!1218669 res!1678370) b!4105568))

(declare-fun m!4710575 () Bool)

(assert (=> d!1218669 m!4710575))

(declare-fun m!4710577 () Bool)

(assert (=> b!4105568 m!4710577))

(assert (=> b!4105508 d!1218669))

(declare-fun d!1218673 () Bool)

(assert (=> d!1218673 true))

(declare-fun order!23259 () Int)

(declare-fun lambda!128348 () Int)

(declare-fun order!23257 () Int)

(declare-fun dynLambda!18902 (Int Int) Int)

(declare-fun dynLambda!18903 (Int Int) Int)

(assert (=> d!1218673 (< (dynLambda!18902 order!23257 (toChars!9659 (transformation!7180 (h!49618 rTail!27)))) (dynLambda!18903 order!23259 lambda!128348))))

(assert (=> d!1218673 true))

(assert (=> d!1218673 (< (dynLambda!18900 order!23247 (toValue!9800 (transformation!7180 (h!49618 rTail!27)))) (dynLambda!18903 order!23259 lambda!128348))))

(declare-fun Forall!1530 (Int) Bool)

(assert (=> d!1218673 (= (semiInverseModEq!3091 (toChars!9659 (transformation!7180 (h!49618 rTail!27))) (toValue!9800 (transformation!7180 (h!49618 rTail!27)))) (Forall!1530 lambda!128348))))

(declare-fun bs!594070 () Bool)

(assert (= bs!594070 d!1218673))

(declare-fun m!4710585 () Bool)

(assert (=> bs!594070 m!4710585))

(assert (=> d!1218631 d!1218673))

(declare-fun d!1218681 () Bool)

(declare-fun res!1678374 () Bool)

(declare-fun e!2547972 () Bool)

(assert (=> d!1218681 (=> res!1678374 e!2547972)))

(assert (=> d!1218681 (= res!1678374 ((_ is Nil!44198) (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27)))))))

(assert (=> d!1218681 (= (noDuplicateTag!2857 thiss!26455 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))) Nil!44199) e!2547972)))

(declare-fun b!4105576 () Bool)

(declare-fun e!2547973 () Bool)

(assert (=> b!4105576 (= e!2547972 e!2547973)))

(declare-fun res!1678375 () Bool)

(assert (=> b!4105576 (=> (not res!1678375) (not e!2547973))))

(assert (=> b!4105576 (= res!1678375 (not (contains!8860 Nil!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))))))))

(declare-fun b!4105577 () Bool)

(assert (=> b!4105577 (= e!2547973 (noDuplicateTag!2857 thiss!26455 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))) Nil!44199)))))

(assert (= (and d!1218681 (not res!1678374)) b!4105576))

(assert (= (and b!4105576 res!1678375) b!4105577))

(declare-fun m!4710587 () Bool)

(assert (=> b!4105576 m!4710587))

(declare-fun m!4710589 () Bool)

(assert (=> b!4105577 m!4710589))

(assert (=> d!1218603 d!1218681))

(declare-fun d!1218683 () Bool)

(assert (=> d!1218683 (noDuplicateTag!2857 thiss!26455 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))) Nil!44199)))

(assert (=> d!1218683 true))

(declare-fun _$67!66 () Unit!63669)

(assert (=> d!1218683 (= (choose!25107 thiss!26455 rHead!24 (h!49618 rTail!27) (t!339979 rTail!27)) _$67!66)))

(declare-fun bs!594074 () Bool)

(assert (= bs!594074 d!1218683))

(assert (=> bs!594074 m!4710463))

(assert (=> d!1218603 d!1218683))

(declare-fun d!1218687 () Bool)

(declare-fun res!1678376 () Bool)

(declare-fun e!2547974 () Bool)

(assert (=> d!1218687 (=> res!1678376 e!2547974)))

(assert (=> d!1218687 (= res!1678376 ((_ is Nil!44198) (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27)))))))

(assert (=> d!1218687 (= (noDuplicateTag!2857 thiss!26455 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))) Nil!44199) e!2547974)))

(declare-fun b!4105580 () Bool)

(declare-fun e!2547975 () Bool)

(assert (=> b!4105580 (= e!2547974 e!2547975)))

(declare-fun res!1678377 () Bool)

(assert (=> b!4105580 (=> (not res!1678377) (not e!2547975))))

(assert (=> b!4105580 (= res!1678377 (not (contains!8860 Nil!44199 (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))))))))

(declare-fun b!4105581 () Bool)

(assert (=> b!4105581 (= e!2547975 (noDuplicateTag!2857 thiss!26455 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))) Nil!44199)))))

(assert (= (and d!1218687 (not res!1678376)) b!4105580))

(assert (= (and b!4105580 res!1678377) b!4105581))

(declare-fun m!4710597 () Bool)

(assert (=> b!4105580 m!4710597))

(declare-fun m!4710599 () Bool)

(assert (=> b!4105581 m!4710599))

(assert (=> d!1218603 d!1218687))

(declare-fun bs!594075 () Bool)

(declare-fun d!1218691 () Bool)

(assert (= bs!594075 (and d!1218691 d!1218673)))

(declare-fun lambda!128353 () Int)

(assert (=> bs!594075 (= (and (= (toChars!9659 (transformation!7180 rHead!24)) (toChars!9659 (transformation!7180 (h!49618 rTail!27)))) (= (toValue!9800 (transformation!7180 rHead!24)) (toValue!9800 (transformation!7180 (h!49618 rTail!27))))) (= lambda!128353 lambda!128348))))

(assert (=> d!1218691 true))

(assert (=> d!1218691 (< (dynLambda!18902 order!23257 (toChars!9659 (transformation!7180 rHead!24))) (dynLambda!18903 order!23259 lambda!128353))))

(assert (=> d!1218691 true))

(assert (=> d!1218691 (< (dynLambda!18900 order!23247 (toValue!9800 (transformation!7180 rHead!24))) (dynLambda!18903 order!23259 lambda!128353))))

(assert (=> d!1218691 (= (semiInverseModEq!3091 (toChars!9659 (transformation!7180 rHead!24)) (toValue!9800 (transformation!7180 rHead!24))) (Forall!1530 lambda!128353))))

(declare-fun bs!594076 () Bool)

(assert (= bs!594076 d!1218691))

(declare-fun m!4710605 () Bool)

(assert (=> bs!594076 m!4710605))

(assert (=> d!1218611 d!1218691))

(assert (=> d!1218623 d!1218621))

(declare-fun d!1218695 () Bool)

(assert (=> d!1218695 (noDuplicateTag!2857 thiss!26455 lt!1467577 Nil!44199)))

(assert (=> d!1218695 true))

(declare-fun _$69!328 () Unit!63669)

(assert (=> d!1218695 (= (choose!25109 thiss!26455 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199) Nil!44199 lt!1467577) _$69!328)))

(declare-fun bs!594078 () Bool)

(assert (= bs!594078 d!1218695))

(assert (=> bs!594078 m!4710423))

(assert (=> d!1218623 d!1218695))

(declare-fun b!4105638 () Bool)

(declare-fun e!2548004 () Bool)

(declare-fun e!2548005 () Bool)

(assert (=> b!4105638 (= e!2548004 e!2548005)))

(declare-fun res!1678391 () Bool)

(assert (=> b!4105638 (=> res!1678391 e!2548005)))

(declare-fun e!2548002 () Bool)

(assert (=> b!4105638 (= res!1678391 e!2548002)))

(declare-fun res!1678393 () Bool)

(assert (=> b!4105638 (=> (not res!1678393) (not e!2548002))))

(assert (=> b!4105638 (= res!1678393 (= (h!49619 Nil!44199) (h!49619 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199))))))

(declare-fun b!4105637 () Bool)

(declare-fun e!2548003 () Bool)

(assert (=> b!4105637 (= e!2548003 e!2548004)))

(declare-fun res!1678392 () Bool)

(assert (=> b!4105637 (=> (not res!1678392) (not e!2548004))))

(assert (=> b!4105637 (= res!1678392 ((_ is Cons!44199) (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199)))))

(declare-fun d!1218699 () Bool)

(declare-fun res!1678390 () Bool)

(assert (=> d!1218699 (=> res!1678390 e!2548003)))

(assert (=> d!1218699 (= res!1678390 ((_ is Nil!44199) Nil!44199))))

(assert (=> d!1218699 (= (subseq!549 Nil!44199 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199)) e!2548003)))

(declare-fun b!4105640 () Bool)

(assert (=> b!4105640 (= e!2548005 (subseq!549 Nil!44199 (t!339980 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199))))))

(declare-fun b!4105639 () Bool)

(assert (=> b!4105639 (= e!2548002 (subseq!549 (t!339980 Nil!44199) (t!339980 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199))))))

(assert (= (and d!1218699 (not res!1678390)) b!4105637))

(assert (= (and b!4105637 res!1678392) b!4105638))

(assert (= (and b!4105638 res!1678393) b!4105639))

(assert (= (and b!4105638 (not res!1678391)) b!4105640))

(declare-fun m!4710617 () Bool)

(assert (=> b!4105640 m!4710617))

(declare-fun m!4710619 () Bool)

(assert (=> b!4105639 m!4710619))

(assert (=> d!1218623 d!1218699))

(declare-fun d!1218703 () Bool)

(declare-fun res!1678394 () Bool)

(declare-fun e!2548007 () Bool)

(assert (=> d!1218703 (=> res!1678394 e!2548007)))

(assert (=> d!1218703 (= res!1678394 ((_ is Nil!44198) lt!1467580))))

(assert (=> d!1218703 (= (noDuplicateTag!2857 thiss!26455 lt!1467580 Nil!44199) e!2548007)))

(declare-fun b!4105645 () Bool)

(declare-fun e!2548008 () Bool)

(assert (=> b!4105645 (= e!2548007 e!2548008)))

(declare-fun res!1678395 () Bool)

(assert (=> b!4105645 (=> (not res!1678395) (not e!2548008))))

(assert (=> b!4105645 (= res!1678395 (not (contains!8860 Nil!44199 (tag!8040 (h!49618 lt!1467580)))))))

(declare-fun b!4105646 () Bool)

(assert (=> b!4105646 (= e!2548008 (noDuplicateTag!2857 thiss!26455 (t!339979 lt!1467580) (Cons!44199 (tag!8040 (h!49618 lt!1467580)) Nil!44199)))))

(assert (= (and d!1218703 (not res!1678394)) b!4105645))

(assert (= (and b!4105645 res!1678395) b!4105646))

(declare-fun m!4710621 () Bool)

(assert (=> b!4105645 m!4710621))

(declare-fun m!4710623 () Bool)

(assert (=> b!4105646 m!4710623))

(assert (=> b!4105483 d!1218703))

(declare-fun d!1218705 () Bool)

(assert (=> d!1218705 (not (= (tag!8040 rHead!24) (tag!8040 (h!49618 rTail!27))))))

(assert (=> d!1218705 true))

(declare-fun _$71!171 () Unit!63669)

(assert (=> d!1218705 (= (choose!25105 thiss!26455 lt!1467580 rHead!24 (h!49618 rTail!27)) _$71!171)))

(assert (=> d!1218595 d!1218705))

(declare-fun d!1218707 () Bool)

(declare-fun lt!1467620 () Bool)

(declare-fun content!6813 (List!44322) (InoxSet Rule!14160))

(assert (=> d!1218707 (= lt!1467620 (select (content!6813 lt!1467580) rHead!24))))

(declare-fun e!2548013 () Bool)

(assert (=> d!1218707 (= lt!1467620 e!2548013)))

(declare-fun res!1678400 () Bool)

(assert (=> d!1218707 (=> (not res!1678400) (not e!2548013))))

(assert (=> d!1218707 (= res!1678400 ((_ is Cons!44198) lt!1467580))))

(assert (=> d!1218707 (= (contains!8859 lt!1467580 rHead!24) lt!1467620)))

(declare-fun b!4105651 () Bool)

(declare-fun e!2548014 () Bool)

(assert (=> b!4105651 (= e!2548013 e!2548014)))

(declare-fun res!1678401 () Bool)

(assert (=> b!4105651 (=> res!1678401 e!2548014)))

(assert (=> b!4105651 (= res!1678401 (= (h!49618 lt!1467580) rHead!24))))

(declare-fun b!4105652 () Bool)

(assert (=> b!4105652 (= e!2548014 (contains!8859 (t!339979 lt!1467580) rHead!24))))

(assert (= (and d!1218707 res!1678400) b!4105651))

(assert (= (and b!4105651 (not res!1678401)) b!4105652))

(declare-fun m!4710625 () Bool)

(assert (=> d!1218707 m!4710625))

(declare-fun m!4710627 () Bool)

(assert (=> d!1218707 m!4710627))

(declare-fun m!4710629 () Bool)

(assert (=> b!4105652 m!4710629))

(assert (=> d!1218595 d!1218707))

(declare-fun bs!594081 () Bool)

(declare-fun d!1218709 () Bool)

(assert (= bs!594081 (and d!1218709 d!1218655)))

(declare-fun lambda!128355 () Int)

(assert (=> bs!594081 (= (= (toValue!9800 (transformation!7180 (h!49618 rTail!27))) (toValue!9800 (transformation!7180 rHead!24))) (= lambda!128355 lambda!128342))))

(assert (=> d!1218709 true))

(assert (=> d!1218709 (< (dynLambda!18900 order!23247 (toValue!9800 (transformation!7180 (h!49618 rTail!27)))) (dynLambda!18901 order!23249 lambda!128355))))

(assert (=> d!1218709 (= (equivClasses!2990 (toChars!9659 (transformation!7180 (h!49618 rTail!27))) (toValue!9800 (transformation!7180 (h!49618 rTail!27)))) (Forall2!1129 lambda!128355))))

(declare-fun bs!594082 () Bool)

(assert (= bs!594082 d!1218709))

(declare-fun m!4710631 () Bool)

(assert (=> bs!594082 m!4710631))

(assert (=> b!4105484 d!1218709))

(declare-fun d!1218711 () Bool)

(declare-fun lt!1467621 () Bool)

(assert (=> d!1218711 (= lt!1467621 (select (content!6810 Nil!44199) (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577)))))))

(declare-fun e!2548016 () Bool)

(assert (=> d!1218711 (= lt!1467621 e!2548016)))

(declare-fun res!1678402 () Bool)

(assert (=> d!1218711 (=> (not res!1678402) (not e!2548016))))

(assert (=> d!1218711 (= res!1678402 ((_ is Cons!44199) Nil!44199))))

(assert (=> d!1218711 (= (contains!8860 Nil!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) lt!1467621)))

(declare-fun b!4105653 () Bool)

(declare-fun e!2548015 () Bool)

(assert (=> b!4105653 (= e!2548016 e!2548015)))

(declare-fun res!1678403 () Bool)

(assert (=> b!4105653 (=> res!1678403 e!2548015)))

(assert (=> b!4105653 (= res!1678403 (= (h!49619 Nil!44199) (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577)))))))

(declare-fun b!4105654 () Bool)

(assert (=> b!4105654 (= e!2548015 (contains!8860 (t!339980 Nil!44199) (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577)))))))

(assert (= (and d!1218711 res!1678402) b!4105653))

(assert (= (and b!4105653 (not res!1678403)) b!4105654))

(assert (=> d!1218711 m!4710527))

(declare-fun m!4710633 () Bool)

(assert (=> d!1218711 m!4710633))

(declare-fun m!4710635 () Bool)

(assert (=> b!4105654 m!4710635))

(assert (=> b!4105438 d!1218711))

(declare-fun b!4105655 () Bool)

(declare-fun e!2548017 () Bool)

(assert (=> b!4105655 (= e!2548017 tp_is_empty!21137)))

(declare-fun b!4105656 () Bool)

(declare-fun tp!1245076 () Bool)

(declare-fun tp!1245075 () Bool)

(assert (=> b!4105656 (= e!2548017 (and tp!1245076 tp!1245075))))

(declare-fun b!4105658 () Bool)

(declare-fun tp!1245073 () Bool)

(declare-fun tp!1245072 () Bool)

(assert (=> b!4105658 (= e!2548017 (and tp!1245073 tp!1245072))))

(assert (=> b!4105513 (= tp!1245009 e!2548017)))

(declare-fun b!4105657 () Bool)

(declare-fun tp!1245074 () Bool)

(assert (=> b!4105657 (= e!2548017 tp!1245074)))

(assert (= (and b!4105513 ((_ is ElementMatch!12085) (regOne!24683 (regex!7180 (h!49618 rTail!27))))) b!4105655))

(assert (= (and b!4105513 ((_ is Concat!19495) (regOne!24683 (regex!7180 (h!49618 rTail!27))))) b!4105656))

(assert (= (and b!4105513 ((_ is Star!12085) (regOne!24683 (regex!7180 (h!49618 rTail!27))))) b!4105657))

(assert (= (and b!4105513 ((_ is Union!12085) (regOne!24683 (regex!7180 (h!49618 rTail!27))))) b!4105658))

(declare-fun b!4105659 () Bool)

(declare-fun e!2548018 () Bool)

(assert (=> b!4105659 (= e!2548018 tp_is_empty!21137)))

(declare-fun b!4105660 () Bool)

(declare-fun tp!1245081 () Bool)

(declare-fun tp!1245080 () Bool)

(assert (=> b!4105660 (= e!2548018 (and tp!1245081 tp!1245080))))

(declare-fun b!4105662 () Bool)

(declare-fun tp!1245078 () Bool)

(declare-fun tp!1245077 () Bool)

(assert (=> b!4105662 (= e!2548018 (and tp!1245078 tp!1245077))))

(assert (=> b!4105513 (= tp!1245008 e!2548018)))

(declare-fun b!4105661 () Bool)

(declare-fun tp!1245079 () Bool)

(assert (=> b!4105661 (= e!2548018 tp!1245079)))

(assert (= (and b!4105513 ((_ is ElementMatch!12085) (regTwo!24683 (regex!7180 (h!49618 rTail!27))))) b!4105659))

(assert (= (and b!4105513 ((_ is Concat!19495) (regTwo!24683 (regex!7180 (h!49618 rTail!27))))) b!4105660))

(assert (= (and b!4105513 ((_ is Star!12085) (regTwo!24683 (regex!7180 (h!49618 rTail!27))))) b!4105661))

(assert (= (and b!4105513 ((_ is Union!12085) (regTwo!24683 (regex!7180 (h!49618 rTail!27))))) b!4105662))

(declare-fun b!4105663 () Bool)

(declare-fun e!2548019 () Bool)

(assert (=> b!4105663 (= e!2548019 tp_is_empty!21137)))

(declare-fun b!4105664 () Bool)

(declare-fun tp!1245086 () Bool)

(declare-fun tp!1245085 () Bool)

(assert (=> b!4105664 (= e!2548019 (and tp!1245086 tp!1245085))))

(declare-fun b!4105666 () Bool)

(declare-fun tp!1245083 () Bool)

(declare-fun tp!1245082 () Bool)

(assert (=> b!4105666 (= e!2548019 (and tp!1245083 tp!1245082))))

(assert (=> b!4105496 (= tp!1244995 e!2548019)))

(declare-fun b!4105665 () Bool)

(declare-fun tp!1245084 () Bool)

(assert (=> b!4105665 (= e!2548019 tp!1245084)))

(assert (= (and b!4105496 ((_ is ElementMatch!12085) (regOne!24682 (regex!7180 rHead!24)))) b!4105663))

(assert (= (and b!4105496 ((_ is Concat!19495) (regOne!24682 (regex!7180 rHead!24)))) b!4105664))

(assert (= (and b!4105496 ((_ is Star!12085) (regOne!24682 (regex!7180 rHead!24)))) b!4105665))

(assert (= (and b!4105496 ((_ is Union!12085) (regOne!24682 (regex!7180 rHead!24)))) b!4105666))

(declare-fun b!4105667 () Bool)

(declare-fun e!2548020 () Bool)

(assert (=> b!4105667 (= e!2548020 tp_is_empty!21137)))

(declare-fun b!4105668 () Bool)

(declare-fun tp!1245091 () Bool)

(declare-fun tp!1245090 () Bool)

(assert (=> b!4105668 (= e!2548020 (and tp!1245091 tp!1245090))))

(declare-fun b!4105670 () Bool)

(declare-fun tp!1245088 () Bool)

(declare-fun tp!1245087 () Bool)

(assert (=> b!4105670 (= e!2548020 (and tp!1245088 tp!1245087))))

(assert (=> b!4105496 (= tp!1244994 e!2548020)))

(declare-fun b!4105669 () Bool)

(declare-fun tp!1245089 () Bool)

(assert (=> b!4105669 (= e!2548020 tp!1245089)))

(assert (= (and b!4105496 ((_ is ElementMatch!12085) (regTwo!24682 (regex!7180 rHead!24)))) b!4105667))

(assert (= (and b!4105496 ((_ is Concat!19495) (regTwo!24682 (regex!7180 rHead!24)))) b!4105668))

(assert (= (and b!4105496 ((_ is Star!12085) (regTwo!24682 (regex!7180 rHead!24)))) b!4105669))

(assert (= (and b!4105496 ((_ is Union!12085) (regTwo!24682 (regex!7180 rHead!24)))) b!4105670))

(declare-fun b!4105671 () Bool)

(declare-fun e!2548021 () Bool)

(assert (=> b!4105671 (= e!2548021 tp_is_empty!21137)))

(declare-fun b!4105672 () Bool)

(declare-fun tp!1245096 () Bool)

(declare-fun tp!1245095 () Bool)

(assert (=> b!4105672 (= e!2548021 (and tp!1245096 tp!1245095))))

(declare-fun b!4105674 () Bool)

(declare-fun tp!1245093 () Bool)

(declare-fun tp!1245092 () Bool)

(assert (=> b!4105674 (= e!2548021 (and tp!1245093 tp!1245092))))

(assert (=> b!4105497 (= tp!1244993 e!2548021)))

(declare-fun b!4105673 () Bool)

(declare-fun tp!1245094 () Bool)

(assert (=> b!4105673 (= e!2548021 tp!1245094)))

(assert (= (and b!4105497 ((_ is ElementMatch!12085) (reg!12414 (regex!7180 rHead!24)))) b!4105671))

(assert (= (and b!4105497 ((_ is Concat!19495) (reg!12414 (regex!7180 rHead!24)))) b!4105672))

(assert (= (and b!4105497 ((_ is Star!12085) (reg!12414 (regex!7180 rHead!24)))) b!4105673))

(assert (= (and b!4105497 ((_ is Union!12085) (reg!12414 (regex!7180 rHead!24)))) b!4105674))

(declare-fun b!4105675 () Bool)

(declare-fun e!2548022 () Bool)

(assert (=> b!4105675 (= e!2548022 tp_is_empty!21137)))

(declare-fun b!4105676 () Bool)

(declare-fun tp!1245101 () Bool)

(declare-fun tp!1245100 () Bool)

(assert (=> b!4105676 (= e!2548022 (and tp!1245101 tp!1245100))))

(declare-fun b!4105678 () Bool)

(declare-fun tp!1245098 () Bool)

(declare-fun tp!1245097 () Bool)

(assert (=> b!4105678 (= e!2548022 (and tp!1245098 tp!1245097))))

(assert (=> b!4105498 (= tp!1244992 e!2548022)))

(declare-fun b!4105677 () Bool)

(declare-fun tp!1245099 () Bool)

(assert (=> b!4105677 (= e!2548022 tp!1245099)))

(assert (= (and b!4105498 ((_ is ElementMatch!12085) (regOne!24683 (regex!7180 rHead!24)))) b!4105675))

(assert (= (and b!4105498 ((_ is Concat!19495) (regOne!24683 (regex!7180 rHead!24)))) b!4105676))

(assert (= (and b!4105498 ((_ is Star!12085) (regOne!24683 (regex!7180 rHead!24)))) b!4105677))

(assert (= (and b!4105498 ((_ is Union!12085) (regOne!24683 (regex!7180 rHead!24)))) b!4105678))

(declare-fun b!4105679 () Bool)

(declare-fun e!2548023 () Bool)

(assert (=> b!4105679 (= e!2548023 tp_is_empty!21137)))

(declare-fun b!4105680 () Bool)

(declare-fun tp!1245106 () Bool)

(declare-fun tp!1245105 () Bool)

(assert (=> b!4105680 (= e!2548023 (and tp!1245106 tp!1245105))))

(declare-fun b!4105682 () Bool)

(declare-fun tp!1245103 () Bool)

(declare-fun tp!1245102 () Bool)

(assert (=> b!4105682 (= e!2548023 (and tp!1245103 tp!1245102))))

(assert (=> b!4105498 (= tp!1244991 e!2548023)))

(declare-fun b!4105681 () Bool)

(declare-fun tp!1245104 () Bool)

(assert (=> b!4105681 (= e!2548023 tp!1245104)))

(assert (= (and b!4105498 ((_ is ElementMatch!12085) (regTwo!24683 (regex!7180 rHead!24)))) b!4105679))

(assert (= (and b!4105498 ((_ is Concat!19495) (regTwo!24683 (regex!7180 rHead!24)))) b!4105680))

(assert (= (and b!4105498 ((_ is Star!12085) (regTwo!24683 (regex!7180 rHead!24)))) b!4105681))

(assert (= (and b!4105498 ((_ is Union!12085) (regTwo!24683 (regex!7180 rHead!24)))) b!4105682))

(declare-fun b!4105683 () Bool)

(declare-fun e!2548024 () Bool)

(assert (=> b!4105683 (= e!2548024 tp_is_empty!21137)))

(declare-fun b!4105684 () Bool)

(declare-fun tp!1245111 () Bool)

(declare-fun tp!1245110 () Bool)

(assert (=> b!4105684 (= e!2548024 (and tp!1245111 tp!1245110))))

(declare-fun b!4105686 () Bool)

(declare-fun tp!1245108 () Bool)

(declare-fun tp!1245107 () Bool)

(assert (=> b!4105686 (= e!2548024 (and tp!1245108 tp!1245107))))

(assert (=> b!4105511 (= tp!1245012 e!2548024)))

(declare-fun b!4105685 () Bool)

(declare-fun tp!1245109 () Bool)

(assert (=> b!4105685 (= e!2548024 tp!1245109)))

(assert (= (and b!4105511 ((_ is ElementMatch!12085) (regOne!24682 (regex!7180 (h!49618 rTail!27))))) b!4105683))

(assert (= (and b!4105511 ((_ is Concat!19495) (regOne!24682 (regex!7180 (h!49618 rTail!27))))) b!4105684))

(assert (= (and b!4105511 ((_ is Star!12085) (regOne!24682 (regex!7180 (h!49618 rTail!27))))) b!4105685))

(assert (= (and b!4105511 ((_ is Union!12085) (regOne!24682 (regex!7180 (h!49618 rTail!27))))) b!4105686))

(declare-fun b!4105687 () Bool)

(declare-fun e!2548025 () Bool)

(assert (=> b!4105687 (= e!2548025 tp_is_empty!21137)))

(declare-fun b!4105688 () Bool)

(declare-fun tp!1245116 () Bool)

(declare-fun tp!1245115 () Bool)

(assert (=> b!4105688 (= e!2548025 (and tp!1245116 tp!1245115))))

(declare-fun b!4105690 () Bool)

(declare-fun tp!1245113 () Bool)

(declare-fun tp!1245112 () Bool)

(assert (=> b!4105690 (= e!2548025 (and tp!1245113 tp!1245112))))

(assert (=> b!4105511 (= tp!1245011 e!2548025)))

(declare-fun b!4105689 () Bool)

(declare-fun tp!1245114 () Bool)

(assert (=> b!4105689 (= e!2548025 tp!1245114)))

(assert (= (and b!4105511 ((_ is ElementMatch!12085) (regTwo!24682 (regex!7180 (h!49618 rTail!27))))) b!4105687))

(assert (= (and b!4105511 ((_ is Concat!19495) (regTwo!24682 (regex!7180 (h!49618 rTail!27))))) b!4105688))

(assert (= (and b!4105511 ((_ is Star!12085) (regTwo!24682 (regex!7180 (h!49618 rTail!27))))) b!4105689))

(assert (= (and b!4105511 ((_ is Union!12085) (regTwo!24682 (regex!7180 (h!49618 rTail!27))))) b!4105690))

(declare-fun b!4105693 () Bool)

(declare-fun b_free!115325 () Bool)

(declare-fun b_next!116029 () Bool)

(assert (=> b!4105693 (= b_free!115325 (not b_next!116029))))

(declare-fun tp!1245120 () Bool)

(declare-fun b_and!317139 () Bool)

(assert (=> b!4105693 (= tp!1245120 b_and!317139)))

(declare-fun b_free!115327 () Bool)

(declare-fun b_next!116031 () Bool)

(assert (=> b!4105693 (= b_free!115327 (not b_next!116031))))

(declare-fun tp!1245119 () Bool)

(declare-fun b_and!317141 () Bool)

(assert (=> b!4105693 (= tp!1245119 b_and!317141)))

(declare-fun e!2548027 () Bool)

(assert (=> b!4105693 (= e!2548027 (and tp!1245120 tp!1245119))))

(declare-fun e!2548029 () Bool)

(declare-fun tp!1245117 () Bool)

(declare-fun b!4105692 () Bool)

(assert (=> b!4105692 (= e!2548029 (and tp!1245117 (inv!58853 (tag!8040 (h!49618 (t!339979 (t!339979 rTail!27))))) (inv!58855 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) e!2548027))))

(declare-fun b!4105691 () Bool)

(declare-fun e!2548026 () Bool)

(declare-fun tp!1245118 () Bool)

(assert (=> b!4105691 (= e!2548026 (and e!2548029 tp!1245118))))

(assert (=> b!4105507 (= tp!1245005 e!2548026)))

(assert (= b!4105692 b!4105693))

(assert (= b!4105691 b!4105692))

(assert (= (and b!4105507 ((_ is Cons!44198) (t!339979 (t!339979 rTail!27)))) b!4105691))

(declare-fun m!4710637 () Bool)

(assert (=> b!4105692 m!4710637))

(declare-fun m!4710639 () Bool)

(assert (=> b!4105692 m!4710639))

(declare-fun b!4105694 () Bool)

(declare-fun e!2548030 () Bool)

(assert (=> b!4105694 (= e!2548030 tp_is_empty!21137)))

(declare-fun b!4105695 () Bool)

(declare-fun tp!1245125 () Bool)

(declare-fun tp!1245124 () Bool)

(assert (=> b!4105695 (= e!2548030 (and tp!1245125 tp!1245124))))

(declare-fun b!4105697 () Bool)

(declare-fun tp!1245122 () Bool)

(declare-fun tp!1245121 () Bool)

(assert (=> b!4105697 (= e!2548030 (and tp!1245122 tp!1245121))))

(assert (=> b!4105512 (= tp!1245010 e!2548030)))

(declare-fun b!4105696 () Bool)

(declare-fun tp!1245123 () Bool)

(assert (=> b!4105696 (= e!2548030 tp!1245123)))

(assert (= (and b!4105512 ((_ is ElementMatch!12085) (reg!12414 (regex!7180 (h!49618 rTail!27))))) b!4105694))

(assert (= (and b!4105512 ((_ is Concat!19495) (reg!12414 (regex!7180 (h!49618 rTail!27))))) b!4105695))

(assert (= (and b!4105512 ((_ is Star!12085) (reg!12414 (regex!7180 (h!49618 rTail!27))))) b!4105696))

(assert (= (and b!4105512 ((_ is Union!12085) (reg!12414 (regex!7180 (h!49618 rTail!27))))) b!4105697))

(declare-fun b!4105698 () Bool)

(declare-fun e!2548031 () Bool)

(assert (=> b!4105698 (= e!2548031 tp_is_empty!21137)))

(declare-fun b!4105699 () Bool)

(declare-fun tp!1245130 () Bool)

(declare-fun tp!1245129 () Bool)

(assert (=> b!4105699 (= e!2548031 (and tp!1245130 tp!1245129))))

(declare-fun b!4105701 () Bool)

(declare-fun tp!1245127 () Bool)

(declare-fun tp!1245126 () Bool)

(assert (=> b!4105701 (= e!2548031 (and tp!1245127 tp!1245126))))

(assert (=> b!4105508 (= tp!1245004 e!2548031)))

(declare-fun b!4105700 () Bool)

(declare-fun tp!1245128 () Bool)

(assert (=> b!4105700 (= e!2548031 tp!1245128)))

(assert (= (and b!4105508 ((_ is ElementMatch!12085) (regex!7180 (h!49618 (t!339979 rTail!27))))) b!4105698))

(assert (= (and b!4105508 ((_ is Concat!19495) (regex!7180 (h!49618 (t!339979 rTail!27))))) b!4105699))

(assert (= (and b!4105508 ((_ is Star!12085) (regex!7180 (h!49618 (t!339979 rTail!27))))) b!4105700))

(assert (= (and b!4105508 ((_ is Union!12085) (regex!7180 (h!49618 (t!339979 rTail!27))))) b!4105701))

(check-sat (not b!4105645) (not b!4105539) (not b!4105680) b_and!317121 (not b!4105665) (not b!4105690) (not b!4105682) (not b_next!116015) (not d!1218695) b_and!317125 (not b!4105697) (not b!4105646) (not b!4105658) (not b!4105660) (not b!4105657) (not d!1218709) (not b!4105541) (not d!1218665) tp_is_empty!21137 (not d!1218649) (not b!4105640) (not b!4105678) (not b_next!116011) b_and!317131 (not b!4105670) b_and!317119 (not d!1218707) b_and!317133 (not b!4105685) (not b!4105696) (not b_next!116021) (not b!4105677) (not b!4105581) (not b!4105662) (not b!4105699) (not b!4105684) (not b!4105674) (not b!4105540) (not d!1218655) (not b!4105688) (not b!4105576) (not d!1218683) (not b_next!116031) (not b!4105691) (not b!4105695) (not b!4105542) (not b_next!116013) (not b!4105700) (not b!4105654) (not b!4105664) (not d!1218691) b_and!317141 (not b!4105672) (not b!4105639) (not b!4105692) b_and!317123 (not b!4105580) (not d!1218673) (not b!4105543) (not d!1218711) (not b_next!116029) (not b!4105568) (not b!4105656) (not b!4105652) (not d!1218669) (not b!4105668) (not b!4105689) (not b!4105669) b_and!317139 (not b!4105577) (not b!4105701) (not d!1218643) (not b!4105666) (not b!4105661) (not b!4105673) (not b_next!116009) (not b_next!116023) (not b!4105686) (not b!4105676) (not b!4105681))
(check-sat b_and!317121 (not b_next!116021) (not b_next!116015) (not b_next!116031) (not b_next!116013) b_and!317141 b_and!317123 b_and!317125 (not b_next!116029) b_and!317139 (not b_next!116011) b_and!317131 b_and!317119 b_and!317133 (not b_next!116009) (not b_next!116023))
(get-model)

(declare-fun d!1218713 () Bool)

(assert (=> d!1218713 (= (inv!58853 (tag!8040 (h!49618 (t!339979 (t!339979 rTail!27))))) (= (mod (str.len (value!225244 (tag!8040 (h!49618 (t!339979 (t!339979 rTail!27)))))) 2) 0))))

(assert (=> b!4105692 d!1218713))

(declare-fun d!1218715 () Bool)

(declare-fun res!1678412 () Bool)

(declare-fun e!2548032 () Bool)

(assert (=> d!1218715 (=> (not res!1678412) (not e!2548032))))

(assert (=> d!1218715 (= res!1678412 (semiInverseModEq!3091 (toChars!9659 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) (toValue!9800 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27)))))))))

(assert (=> d!1218715 (= (inv!58855 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) e!2548032)))

(declare-fun b!4105702 () Bool)

(assert (=> b!4105702 (= e!2548032 (equivClasses!2990 (toChars!9659 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) (toValue!9800 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27)))))))))

(assert (= (and d!1218715 res!1678412) b!4105702))

(declare-fun m!4710641 () Bool)

(assert (=> d!1218715 m!4710641))

(declare-fun m!4710643 () Bool)

(assert (=> b!4105702 m!4710643))

(assert (=> b!4105692 d!1218715))

(declare-fun d!1218717 () Bool)

(declare-fun choose!25110 (Int) Bool)

(assert (=> d!1218717 (= (Forall2!1129 lambda!128342) (choose!25110 lambda!128342))))

(declare-fun bs!594083 () Bool)

(assert (= bs!594083 d!1218717))

(declare-fun m!4710645 () Bool)

(assert (=> bs!594083 m!4710645))

(assert (=> d!1218655 d!1218717))

(declare-fun d!1218719 () Bool)

(declare-fun res!1678413 () Bool)

(declare-fun e!2548033 () Bool)

(assert (=> d!1218719 (=> res!1678413 e!2548033)))

(assert (=> d!1218719 (= res!1678413 ((_ is Nil!44198) (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))))))

(assert (=> d!1218719 (= (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199))) e!2548033)))

(declare-fun b!4105703 () Bool)

(declare-fun e!2548034 () Bool)

(assert (=> b!4105703 (= e!2548033 e!2548034)))

(declare-fun res!1678414 () Bool)

(assert (=> b!4105703 (=> (not res!1678414) (not e!2548034))))

(assert (=> b!4105703 (= res!1678414 (not (contains!8860 (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)) (tag!8040 (h!49618 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))))))))

(declare-fun b!4105704 () Bool)

(assert (=> b!4105704 (= e!2548034 (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)))))))

(assert (= (and d!1218719 (not res!1678413)) b!4105703))

(assert (= (and b!4105703 res!1678414) b!4105704))

(declare-fun m!4710647 () Bool)

(assert (=> b!4105703 m!4710647))

(declare-fun m!4710649 () Bool)

(assert (=> b!4105704 m!4710649))

(assert (=> b!4105541 d!1218719))

(declare-fun d!1218721 () Bool)

(declare-fun c!706682 () Bool)

(assert (=> d!1218721 (= c!706682 ((_ is Nil!44198) lt!1467580))))

(declare-fun e!2548037 () (InoxSet Rule!14160))

(assert (=> d!1218721 (= (content!6813 lt!1467580) e!2548037)))

(declare-fun b!4105709 () Bool)

(assert (=> b!4105709 (= e!2548037 ((as const (Array Rule!14160 Bool)) false))))

(declare-fun b!4105710 () Bool)

(assert (=> b!4105710 (= e!2548037 ((_ map or) (store ((as const (Array Rule!14160 Bool)) false) (h!49618 lt!1467580) true) (content!6813 (t!339979 lt!1467580))))))

(assert (= (and d!1218721 c!706682) b!4105709))

(assert (= (and d!1218721 (not c!706682)) b!4105710))

(declare-fun m!4710651 () Bool)

(assert (=> b!4105710 m!4710651))

(declare-fun m!4710653 () Bool)

(assert (=> b!4105710 m!4710653))

(assert (=> d!1218707 d!1218721))

(declare-fun d!1218723 () Bool)

(declare-fun lt!1467622 () Bool)

(assert (=> d!1218723 (= lt!1467622 (select (content!6810 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)) (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))))))

(declare-fun e!2548039 () Bool)

(assert (=> d!1218723 (= lt!1467622 e!2548039)))

(declare-fun res!1678415 () Bool)

(assert (=> d!1218723 (=> (not res!1678415) (not e!2548039))))

(assert (=> d!1218723 (= res!1678415 ((_ is Cons!44199) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)))))

(assert (=> d!1218723 (= (contains!8860 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199) (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))) lt!1467622)))

(declare-fun b!4105711 () Bool)

(declare-fun e!2548038 () Bool)

(assert (=> b!4105711 (= e!2548039 e!2548038)))

(declare-fun res!1678416 () Bool)

(assert (=> b!4105711 (=> res!1678416 e!2548038)))

(assert (=> b!4105711 (= res!1678416 (= (h!49619 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)) (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))))))

(declare-fun b!4105712 () Bool)

(assert (=> b!4105712 (= e!2548038 (contains!8860 (t!339980 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)) (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))))))

(assert (= (and d!1218723 res!1678415) b!4105711))

(assert (= (and b!4105711 (not res!1678416)) b!4105712))

(declare-fun m!4710655 () Bool)

(assert (=> d!1218723 m!4710655))

(declare-fun m!4710657 () Bool)

(assert (=> d!1218723 m!4710657))

(declare-fun m!4710659 () Bool)

(assert (=> b!4105712 m!4710659))

(assert (=> b!4105540 d!1218723))

(declare-fun d!1218725 () Bool)

(declare-fun choose!25111 (Int) Bool)

(assert (=> d!1218725 (= (Forall!1530 lambda!128353) (choose!25111 lambda!128353))))

(declare-fun bs!594084 () Bool)

(assert (= bs!594084 d!1218725))

(declare-fun m!4710661 () Bool)

(assert (=> bs!594084 m!4710661))

(assert (=> d!1218691 d!1218725))

(declare-fun bs!594085 () Bool)

(declare-fun d!1218727 () Bool)

(assert (= bs!594085 (and d!1218727 d!1218649)))

(declare-fun lambda!128358 () Int)

(assert (=> bs!594085 (= lambda!128358 lambda!128337)))

(declare-fun bs!594086 () Bool)

(assert (= bs!594086 (and d!1218727 d!1218665)))

(assert (=> bs!594086 (= lambda!128358 lambda!128344)))

(assert (=> d!1218727 true))

(declare-fun lt!1467625 () Bool)

(assert (=> d!1218727 (= lt!1467625 (forall!8431 lt!1467577 lambda!128358))))

(declare-fun e!2548044 () Bool)

(assert (=> d!1218727 (= lt!1467625 e!2548044)))

(declare-fun res!1678422 () Bool)

(assert (=> d!1218727 (=> res!1678422 e!2548044)))

(assert (=> d!1218727 (= res!1678422 (not ((_ is Cons!44198) lt!1467577)))))

(assert (=> d!1218727 (= (rulesValidInductive!2663 thiss!26455 lt!1467577) lt!1467625)))

(declare-fun b!4105717 () Bool)

(declare-fun e!2548045 () Bool)

(assert (=> b!4105717 (= e!2548044 e!2548045)))

(declare-fun res!1678421 () Bool)

(assert (=> b!4105717 (=> (not res!1678421) (not e!2548045))))

(declare-fun ruleValid!3050 (LexerInterface!6769 Rule!14160) Bool)

(assert (=> b!4105717 (= res!1678421 (ruleValid!3050 thiss!26455 (h!49618 lt!1467577)))))

(declare-fun b!4105718 () Bool)

(assert (=> b!4105718 (= e!2548045 (rulesValidInductive!2663 thiss!26455 (t!339979 lt!1467577)))))

(assert (= (and d!1218727 (not res!1678422)) b!4105717))

(assert (= (and b!4105717 res!1678421) b!4105718))

(declare-fun m!4710663 () Bool)

(assert (=> d!1218727 m!4710663))

(declare-fun m!4710665 () Bool)

(assert (=> b!4105717 m!4710665))

(declare-fun m!4710667 () Bool)

(assert (=> b!4105718 m!4710667))

(assert (=> d!1218649 d!1218727))

(declare-fun d!1218729 () Bool)

(declare-fun res!1678427 () Bool)

(declare-fun e!2548050 () Bool)

(assert (=> d!1218729 (=> res!1678427 e!2548050)))

(assert (=> d!1218729 (= res!1678427 ((_ is Nil!44198) lt!1467577))))

(assert (=> d!1218729 (= (forall!8431 lt!1467577 lambda!128337) e!2548050)))

(declare-fun b!4105723 () Bool)

(declare-fun e!2548051 () Bool)

(assert (=> b!4105723 (= e!2548050 e!2548051)))

(declare-fun res!1678428 () Bool)

(assert (=> b!4105723 (=> (not res!1678428) (not e!2548051))))

(declare-fun dynLambda!18908 (Int Rule!14160) Bool)

(assert (=> b!4105723 (= res!1678428 (dynLambda!18908 lambda!128337 (h!49618 lt!1467577)))))

(declare-fun b!4105724 () Bool)

(assert (=> b!4105724 (= e!2548051 (forall!8431 (t!339979 lt!1467577) lambda!128337))))

(assert (= (and d!1218729 (not res!1678427)) b!4105723))

(assert (= (and b!4105723 res!1678428) b!4105724))

(declare-fun b_lambda!120559 () Bool)

(assert (=> (not b_lambda!120559) (not b!4105723)))

(declare-fun m!4710669 () Bool)

(assert (=> b!4105723 m!4710669))

(declare-fun m!4710671 () Bool)

(assert (=> b!4105724 m!4710671))

(assert (=> d!1218649 d!1218729))

(declare-fun d!1218731 () Bool)

(assert (=> d!1218731 (= (content!6810 Nil!44199) ((as const (Array String!50800 Bool)) false))))

(assert (=> d!1218711 d!1218731))

(assert (=> d!1218643 d!1218731))

(declare-fun d!1218733 () Bool)

(declare-fun res!1678429 () Bool)

(declare-fun e!2548052 () Bool)

(assert (=> d!1218733 (=> res!1678429 e!2548052)))

(assert (=> d!1218733 (= res!1678429 ((_ is Nil!44198) (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))))))

(assert (=> d!1218733 (= (noDuplicateTag!2857 thiss!26455 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))) Nil!44199)) e!2548052)))

(declare-fun b!4105725 () Bool)

(declare-fun e!2548053 () Bool)

(assert (=> b!4105725 (= e!2548052 e!2548053)))

(declare-fun res!1678430 () Bool)

(assert (=> b!4105725 (=> (not res!1678430) (not e!2548053))))

(assert (=> b!4105725 (= res!1678430 (not (contains!8860 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))) Nil!44199) (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27)))))))))))

(declare-fun b!4105726 () Bool)

(assert (=> b!4105726 (= e!2548053 (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27)))))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))) Nil!44199))))))

(assert (= (and d!1218733 (not res!1678429)) b!4105725))

(assert (= (and b!4105725 res!1678430) b!4105726))

(declare-fun m!4710673 () Bool)

(assert (=> b!4105725 m!4710673))

(declare-fun m!4710675 () Bool)

(assert (=> b!4105726 m!4710675))

(assert (=> b!4105577 d!1218733))

(declare-fun d!1218735 () Bool)

(declare-fun lt!1467626 () Bool)

(assert (=> d!1218735 (= lt!1467626 (select (content!6810 Nil!44199) (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27)))))))))

(declare-fun e!2548055 () Bool)

(assert (=> d!1218735 (= lt!1467626 e!2548055)))

(declare-fun res!1678431 () Bool)

(assert (=> d!1218735 (=> (not res!1678431) (not e!2548055))))

(assert (=> d!1218735 (= res!1678431 ((_ is Cons!44199) Nil!44199))))

(assert (=> d!1218735 (= (contains!8860 Nil!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27)))))) lt!1467626)))

(declare-fun b!4105727 () Bool)

(declare-fun e!2548054 () Bool)

(assert (=> b!4105727 (= e!2548055 e!2548054)))

(declare-fun res!1678432 () Bool)

(assert (=> b!4105727 (=> res!1678432 e!2548054)))

(assert (=> b!4105727 (= res!1678432 (= (h!49619 Nil!44199) (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27)))))))))

(declare-fun b!4105728 () Bool)

(assert (=> b!4105728 (= e!2548054 (contains!8860 (t!339980 Nil!44199) (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27)))))))))

(assert (= (and d!1218735 res!1678431) b!4105727))

(assert (= (and b!4105727 (not res!1678432)) b!4105728))

(assert (=> d!1218735 m!4710527))

(declare-fun m!4710677 () Bool)

(assert (=> d!1218735 m!4710677))

(declare-fun m!4710679 () Bool)

(assert (=> b!4105728 m!4710679))

(assert (=> b!4105576 d!1218735))

(declare-fun d!1218737 () Bool)

(assert (=> d!1218737 (= (Forall!1530 lambda!128348) (choose!25111 lambda!128348))))

(declare-fun bs!594087 () Bool)

(assert (= bs!594087 d!1218737))

(declare-fun m!4710681 () Bool)

(assert (=> bs!594087 m!4710681))

(assert (=> d!1218673 d!1218737))

(declare-fun d!1218741 () Bool)

(declare-fun res!1678433 () Bool)

(declare-fun e!2548056 () Bool)

(assert (=> d!1218741 (=> res!1678433 e!2548056)))

(assert (=> d!1218741 (= res!1678433 ((_ is Nil!44198) (t!339979 (t!339979 lt!1467577))))))

(assert (=> d!1218741 (= (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 lt!1467577)) (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467577))) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199))) e!2548056)))

(declare-fun b!4105729 () Bool)

(declare-fun e!2548057 () Bool)

(assert (=> b!4105729 (= e!2548056 e!2548057)))

(declare-fun res!1678434 () Bool)

(assert (=> b!4105729 (=> (not res!1678434) (not e!2548057))))

(assert (=> b!4105729 (= res!1678434 (not (contains!8860 (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467577))) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)) (tag!8040 (h!49618 (t!339979 (t!339979 lt!1467577)))))))))

(declare-fun b!4105730 () Bool)

(assert (=> b!4105730 (= e!2548057 (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (t!339979 lt!1467577))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (t!339979 lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467577))) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)))))))

(assert (= (and d!1218741 (not res!1678433)) b!4105729))

(assert (= (and b!4105729 res!1678434) b!4105730))

(declare-fun m!4710683 () Bool)

(assert (=> b!4105729 m!4710683))

(declare-fun m!4710685 () Bool)

(assert (=> b!4105730 m!4710685))

(assert (=> b!4105543 d!1218741))

(declare-fun d!1218743 () Bool)

(declare-fun lt!1467627 () Bool)

(assert (=> d!1218743 (= lt!1467627 (select (content!6810 (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)) (tag!8040 (h!49618 (t!339979 lt!1467577)))))))

(declare-fun e!2548059 () Bool)

(assert (=> d!1218743 (= lt!1467627 e!2548059)))

(declare-fun res!1678435 () Bool)

(assert (=> d!1218743 (=> (not res!1678435) (not e!2548059))))

(assert (=> d!1218743 (= res!1678435 ((_ is Cons!44199) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)))))

(assert (=> d!1218743 (= (contains!8860 (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199) (tag!8040 (h!49618 (t!339979 lt!1467577)))) lt!1467627)))

(declare-fun b!4105731 () Bool)

(declare-fun e!2548058 () Bool)

(assert (=> b!4105731 (= e!2548059 e!2548058)))

(declare-fun res!1678436 () Bool)

(assert (=> b!4105731 (=> res!1678436 e!2548058)))

(assert (=> b!4105731 (= res!1678436 (= (h!49619 (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)) (tag!8040 (h!49618 (t!339979 lt!1467577)))))))

(declare-fun b!4105732 () Bool)

(assert (=> b!4105732 (= e!2548058 (contains!8860 (t!339980 (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)) (tag!8040 (h!49618 (t!339979 lt!1467577)))))))

(assert (= (and d!1218743 res!1678435) b!4105731))

(assert (= (and b!4105731 (not res!1678436)) b!4105732))

(declare-fun m!4710687 () Bool)

(assert (=> d!1218743 m!4710687))

(declare-fun m!4710689 () Bool)

(assert (=> d!1218743 m!4710689))

(declare-fun m!4710691 () Bool)

(assert (=> b!4105732 m!4710691))

(assert (=> b!4105542 d!1218743))

(declare-fun d!1218747 () Bool)

(assert (=> d!1218747 (= (Forall2!1129 lambda!128355) (choose!25110 lambda!128355))))

(declare-fun bs!594088 () Bool)

(assert (= bs!594088 d!1218747))

(declare-fun m!4710693 () Bool)

(assert (=> bs!594088 m!4710693))

(assert (=> d!1218709 d!1218747))

(assert (=> d!1218695 d!1218621))

(declare-fun bs!594089 () Bool)

(declare-fun d!1218749 () Bool)

(assert (= bs!594089 (and d!1218749 d!1218655)))

(declare-fun lambda!128359 () Int)

(assert (=> bs!594089 (= (= (toValue!9800 (transformation!7180 (h!49618 (t!339979 rTail!27)))) (toValue!9800 (transformation!7180 rHead!24))) (= lambda!128359 lambda!128342))))

(declare-fun bs!594090 () Bool)

(assert (= bs!594090 (and d!1218749 d!1218709)))

(assert (=> bs!594090 (= (= (toValue!9800 (transformation!7180 (h!49618 (t!339979 rTail!27)))) (toValue!9800 (transformation!7180 (h!49618 rTail!27)))) (= lambda!128359 lambda!128355))))

(assert (=> d!1218749 true))

(assert (=> d!1218749 (< (dynLambda!18900 order!23247 (toValue!9800 (transformation!7180 (h!49618 (t!339979 rTail!27))))) (dynLambda!18901 order!23249 lambda!128359))))

(assert (=> d!1218749 (= (equivClasses!2990 (toChars!9659 (transformation!7180 (h!49618 (t!339979 rTail!27)))) (toValue!9800 (transformation!7180 (h!49618 (t!339979 rTail!27))))) (Forall2!1129 lambda!128359))))

(declare-fun bs!594091 () Bool)

(assert (= bs!594091 d!1218749))

(declare-fun m!4710695 () Bool)

(assert (=> bs!594091 m!4710695))

(assert (=> b!4105568 d!1218749))

(declare-fun d!1218751 () Bool)

(assert (not d!1218751))

(assert (=> b!4105539 d!1218751))

(declare-fun bs!594094 () Bool)

(declare-fun d!1218753 () Bool)

(assert (= bs!594094 (and d!1218753 d!1218649)))

(declare-fun lambda!128361 () Int)

(assert (=> bs!594094 (= lambda!128361 lambda!128337)))

(declare-fun bs!594095 () Bool)

(assert (= bs!594095 (and d!1218753 d!1218665)))

(assert (=> bs!594095 (= lambda!128361 lambda!128344)))

(declare-fun bs!594096 () Bool)

(assert (= bs!594096 (and d!1218753 d!1218727)))

(assert (=> bs!594096 (= lambda!128361 lambda!128358)))

(assert (=> d!1218753 true))

(declare-fun lt!1467628 () Bool)

(assert (=> d!1218753 (= lt!1467628 (forall!8431 lt!1467580 lambda!128361))))

(declare-fun e!2548060 () Bool)

(assert (=> d!1218753 (= lt!1467628 e!2548060)))

(declare-fun res!1678438 () Bool)

(assert (=> d!1218753 (=> res!1678438 e!2548060)))

(assert (=> d!1218753 (= res!1678438 (not ((_ is Cons!44198) lt!1467580)))))

(assert (=> d!1218753 (= (rulesValidInductive!2663 thiss!26455 lt!1467580) lt!1467628)))

(declare-fun b!4105733 () Bool)

(declare-fun e!2548061 () Bool)

(assert (=> b!4105733 (= e!2548060 e!2548061)))

(declare-fun res!1678437 () Bool)

(assert (=> b!4105733 (=> (not res!1678437) (not e!2548061))))

(assert (=> b!4105733 (= res!1678437 (ruleValid!3050 thiss!26455 (h!49618 lt!1467580)))))

(declare-fun b!4105734 () Bool)

(assert (=> b!4105734 (= e!2548061 (rulesValidInductive!2663 thiss!26455 (t!339979 lt!1467580)))))

(assert (= (and d!1218753 (not res!1678438)) b!4105733))

(assert (= (and b!4105733 res!1678437) b!4105734))

(declare-fun m!4710699 () Bool)

(assert (=> d!1218753 m!4710699))

(declare-fun m!4710701 () Bool)

(assert (=> b!4105733 m!4710701))

(declare-fun m!4710703 () Bool)

(assert (=> b!4105734 m!4710703))

(assert (=> d!1218665 d!1218753))

(declare-fun d!1218757 () Bool)

(declare-fun res!1678439 () Bool)

(declare-fun e!2548062 () Bool)

(assert (=> d!1218757 (=> res!1678439 e!2548062)))

(assert (=> d!1218757 (= res!1678439 ((_ is Nil!44198) lt!1467580))))

(assert (=> d!1218757 (= (forall!8431 lt!1467580 lambda!128344) e!2548062)))

(declare-fun b!4105735 () Bool)

(declare-fun e!2548063 () Bool)

(assert (=> b!4105735 (= e!2548062 e!2548063)))

(declare-fun res!1678440 () Bool)

(assert (=> b!4105735 (=> (not res!1678440) (not e!2548063))))

(assert (=> b!4105735 (= res!1678440 (dynLambda!18908 lambda!128344 (h!49618 lt!1467580)))))

(declare-fun b!4105736 () Bool)

(assert (=> b!4105736 (= e!2548063 (forall!8431 (t!339979 lt!1467580) lambda!128344))))

(assert (= (and d!1218757 (not res!1678439)) b!4105735))

(assert (= (and b!4105735 res!1678440) b!4105736))

(declare-fun b_lambda!120561 () Bool)

(assert (=> (not b_lambda!120561) (not b!4105735)))

(declare-fun m!4710705 () Bool)

(assert (=> b!4105735 m!4710705))

(declare-fun m!4710707 () Bool)

(assert (=> b!4105736 m!4710707))

(assert (=> d!1218665 d!1218757))

(declare-fun d!1218759 () Bool)

(declare-fun res!1678441 () Bool)

(declare-fun e!2548064 () Bool)

(assert (=> d!1218759 (=> res!1678441 e!2548064)))

(assert (=> d!1218759 (= res!1678441 ((_ is Nil!44198) (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))))))

(assert (=> d!1218759 (= (noDuplicateTag!2857 thiss!26455 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))) Nil!44199)) e!2548064)))

(declare-fun b!4105737 () Bool)

(declare-fun e!2548065 () Bool)

(assert (=> b!4105737 (= e!2548064 e!2548065)))

(declare-fun res!1678442 () Bool)

(assert (=> b!4105737 (=> (not res!1678442) (not e!2548065))))

(assert (=> b!4105737 (= res!1678442 (not (contains!8860 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))) Nil!44199) (tag!8040 (h!49618 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27)))))))))))

(declare-fun b!4105738 () Bool)

(assert (=> b!4105738 (= e!2548065 (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27)))))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))) Nil!44199))))))

(assert (= (and d!1218759 (not res!1678441)) b!4105737))

(assert (= (and b!4105737 res!1678442) b!4105738))

(declare-fun m!4710709 () Bool)

(assert (=> b!4105737 m!4710709))

(declare-fun m!4710711 () Bool)

(assert (=> b!4105738 m!4710711))

(assert (=> b!4105581 d!1218759))

(declare-fun d!1218761 () Bool)

(declare-fun res!1678443 () Bool)

(declare-fun e!2548066 () Bool)

(assert (=> d!1218761 (=> res!1678443 e!2548066)))

(assert (=> d!1218761 (= res!1678443 ((_ is Nil!44198) (t!339979 lt!1467580)))))

(assert (=> d!1218761 (= (noDuplicateTag!2857 thiss!26455 (t!339979 lt!1467580) (Cons!44199 (tag!8040 (h!49618 lt!1467580)) Nil!44199)) e!2548066)))

(declare-fun b!4105739 () Bool)

(declare-fun e!2548067 () Bool)

(assert (=> b!4105739 (= e!2548066 e!2548067)))

(declare-fun res!1678444 () Bool)

(assert (=> b!4105739 (=> (not res!1678444) (not e!2548067))))

(assert (=> b!4105739 (= res!1678444 (not (contains!8860 (Cons!44199 (tag!8040 (h!49618 lt!1467580)) Nil!44199) (tag!8040 (h!49618 (t!339979 lt!1467580))))))))

(declare-fun b!4105740 () Bool)

(assert (=> b!4105740 (= e!2548067 (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 lt!1467580)) (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467580))) (Cons!44199 (tag!8040 (h!49618 lt!1467580)) Nil!44199))))))

(assert (= (and d!1218761 (not res!1678443)) b!4105739))

(assert (= (and b!4105739 res!1678444) b!4105740))

(declare-fun m!4710715 () Bool)

(assert (=> b!4105739 m!4710715))

(declare-fun m!4710717 () Bool)

(assert (=> b!4105740 m!4710717))

(assert (=> b!4105646 d!1218761))

(declare-fun d!1218765 () Bool)

(assert (not d!1218765))

(assert (=> b!4105654 d!1218765))

(declare-fun d!1218767 () Bool)

(declare-fun lt!1467629 () Bool)

(assert (=> d!1218767 (= lt!1467629 (select (content!6810 Nil!44199) (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27)))))))))

(declare-fun e!2548071 () Bool)

(assert (=> d!1218767 (= lt!1467629 e!2548071)))

(declare-fun res!1678447 () Bool)

(assert (=> d!1218767 (=> (not res!1678447) (not e!2548071))))

(assert (=> d!1218767 (= res!1678447 ((_ is Cons!44199) Nil!44199))))

(assert (=> d!1218767 (= (contains!8860 Nil!44199 (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27)))))) lt!1467629)))

(declare-fun b!4105743 () Bool)

(declare-fun e!2548070 () Bool)

(assert (=> b!4105743 (= e!2548071 e!2548070)))

(declare-fun res!1678448 () Bool)

(assert (=> b!4105743 (=> res!1678448 e!2548070)))

(assert (=> b!4105743 (= res!1678448 (= (h!49619 Nil!44199) (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27)))))))))

(declare-fun b!4105744 () Bool)

(assert (=> b!4105744 (= e!2548070 (contains!8860 (t!339980 Nil!44199) (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27)))))))))

(assert (= (and d!1218767 res!1678447) b!4105743))

(assert (= (and b!4105743 (not res!1678448)) b!4105744))

(assert (=> d!1218767 m!4710527))

(declare-fun m!4710719 () Bool)

(assert (=> d!1218767 m!4710719))

(declare-fun m!4710721 () Bool)

(assert (=> b!4105744 m!4710721))

(assert (=> b!4105580 d!1218767))

(assert (=> d!1218683 d!1218681))

(declare-fun bs!594099 () Bool)

(declare-fun d!1218769 () Bool)

(assert (= bs!594099 (and d!1218769 d!1218673)))

(declare-fun lambda!128362 () Int)

(assert (=> bs!594099 (= (and (= (toChars!9659 (transformation!7180 (h!49618 (t!339979 rTail!27)))) (toChars!9659 (transformation!7180 (h!49618 rTail!27)))) (= (toValue!9800 (transformation!7180 (h!49618 (t!339979 rTail!27)))) (toValue!9800 (transformation!7180 (h!49618 rTail!27))))) (= lambda!128362 lambda!128348))))

(declare-fun bs!594100 () Bool)

(assert (= bs!594100 (and d!1218769 d!1218691)))

(assert (=> bs!594100 (= (and (= (toChars!9659 (transformation!7180 (h!49618 (t!339979 rTail!27)))) (toChars!9659 (transformation!7180 rHead!24))) (= (toValue!9800 (transformation!7180 (h!49618 (t!339979 rTail!27)))) (toValue!9800 (transformation!7180 rHead!24)))) (= lambda!128362 lambda!128353))))

(assert (=> d!1218769 true))

(assert (=> d!1218769 (< (dynLambda!18902 order!23257 (toChars!9659 (transformation!7180 (h!49618 (t!339979 rTail!27))))) (dynLambda!18903 order!23259 lambda!128362))))

(assert (=> d!1218769 true))

(assert (=> d!1218769 (< (dynLambda!18900 order!23247 (toValue!9800 (transformation!7180 (h!49618 (t!339979 rTail!27))))) (dynLambda!18903 order!23259 lambda!128362))))

(assert (=> d!1218769 (= (semiInverseModEq!3091 (toChars!9659 (transformation!7180 (h!49618 (t!339979 rTail!27)))) (toValue!9800 (transformation!7180 (h!49618 (t!339979 rTail!27))))) (Forall!1530 lambda!128362))))

(declare-fun bs!594101 () Bool)

(assert (= bs!594101 d!1218769))

(declare-fun m!4710727 () Bool)

(assert (=> bs!594101 m!4710727))

(assert (=> d!1218669 d!1218769))

(declare-fun b!4105747 () Bool)

(declare-fun e!2548075 () Bool)

(declare-fun e!2548076 () Bool)

(assert (=> b!4105747 (= e!2548075 e!2548076)))

(declare-fun res!1678451 () Bool)

(assert (=> b!4105747 (=> res!1678451 e!2548076)))

(declare-fun e!2548073 () Bool)

(assert (=> b!4105747 (= res!1678451 e!2548073)))

(declare-fun res!1678453 () Bool)

(assert (=> b!4105747 (=> (not res!1678453) (not e!2548073))))

(assert (=> b!4105747 (= res!1678453 (= (h!49619 Nil!44199) (h!49619 (t!339980 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199)))))))

(declare-fun b!4105746 () Bool)

(declare-fun e!2548074 () Bool)

(assert (=> b!4105746 (= e!2548074 e!2548075)))

(declare-fun res!1678452 () Bool)

(assert (=> b!4105746 (=> (not res!1678452) (not e!2548075))))

(assert (=> b!4105746 (= res!1678452 ((_ is Cons!44199) (t!339980 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199))))))

(declare-fun d!1218775 () Bool)

(declare-fun res!1678450 () Bool)

(assert (=> d!1218775 (=> res!1678450 e!2548074)))

(assert (=> d!1218775 (= res!1678450 ((_ is Nil!44199) Nil!44199))))

(assert (=> d!1218775 (= (subseq!549 Nil!44199 (t!339980 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199))) e!2548074)))

(declare-fun b!4105749 () Bool)

(assert (=> b!4105749 (= e!2548076 (subseq!549 Nil!44199 (t!339980 (t!339980 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199)))))))

(declare-fun b!4105748 () Bool)

(assert (=> b!4105748 (= e!2548073 (subseq!549 (t!339980 Nil!44199) (t!339980 (t!339980 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199)))))))

(assert (= (and d!1218775 (not res!1678450)) b!4105746))

(assert (= (and b!4105746 res!1678452) b!4105747))

(assert (= (and b!4105747 res!1678453) b!4105748))

(assert (= (and b!4105747 (not res!1678451)) b!4105749))

(declare-fun m!4710733 () Bool)

(assert (=> b!4105749 m!4710733))

(declare-fun m!4710735 () Bool)

(assert (=> b!4105748 m!4710735))

(assert (=> b!4105640 d!1218775))

(declare-fun d!1218779 () Bool)

(declare-fun lt!1467631 () Bool)

(assert (=> d!1218779 (= lt!1467631 (select (content!6813 (t!339979 lt!1467580)) rHead!24))))

(declare-fun e!2548079 () Bool)

(assert (=> d!1218779 (= lt!1467631 e!2548079)))

(declare-fun res!1678456 () Bool)

(assert (=> d!1218779 (=> (not res!1678456) (not e!2548079))))

(assert (=> d!1218779 (= res!1678456 ((_ is Cons!44198) (t!339979 lt!1467580)))))

(assert (=> d!1218779 (= (contains!8859 (t!339979 lt!1467580) rHead!24) lt!1467631)))

(declare-fun b!4105752 () Bool)

(declare-fun e!2548080 () Bool)

(assert (=> b!4105752 (= e!2548079 e!2548080)))

(declare-fun res!1678457 () Bool)

(assert (=> b!4105752 (=> res!1678457 e!2548080)))

(assert (=> b!4105752 (= res!1678457 (= (h!49618 (t!339979 lt!1467580)) rHead!24))))

(declare-fun b!4105753 () Bool)

(assert (=> b!4105753 (= e!2548080 (contains!8859 (t!339979 (t!339979 lt!1467580)) rHead!24))))

(assert (= (and d!1218779 res!1678456) b!4105752))

(assert (= (and b!4105752 (not res!1678457)) b!4105753))

(assert (=> d!1218779 m!4710653))

(declare-fun m!4710739 () Bool)

(assert (=> d!1218779 m!4710739))

(declare-fun m!4710743 () Bool)

(assert (=> b!4105753 m!4710743))

(assert (=> b!4105652 d!1218779))

(declare-fun d!1218781 () Bool)

(declare-fun lt!1467632 () Bool)

(assert (=> d!1218781 (= lt!1467632 (select (content!6810 Nil!44199) (tag!8040 (h!49618 lt!1467580))))))

(declare-fun e!2548082 () Bool)

(assert (=> d!1218781 (= lt!1467632 e!2548082)))

(declare-fun res!1678458 () Bool)

(assert (=> d!1218781 (=> (not res!1678458) (not e!2548082))))

(assert (=> d!1218781 (= res!1678458 ((_ is Cons!44199) Nil!44199))))

(assert (=> d!1218781 (= (contains!8860 Nil!44199 (tag!8040 (h!49618 lt!1467580))) lt!1467632)))

(declare-fun b!4105754 () Bool)

(declare-fun e!2548081 () Bool)

(assert (=> b!4105754 (= e!2548082 e!2548081)))

(declare-fun res!1678459 () Bool)

(assert (=> b!4105754 (=> res!1678459 e!2548081)))

(assert (=> b!4105754 (= res!1678459 (= (h!49619 Nil!44199) (tag!8040 (h!49618 lt!1467580))))))

(declare-fun b!4105755 () Bool)

(assert (=> b!4105755 (= e!2548081 (contains!8860 (t!339980 Nil!44199) (tag!8040 (h!49618 lt!1467580))))))

(assert (= (and d!1218781 res!1678458) b!4105754))

(assert (= (and b!4105754 (not res!1678459)) b!4105755))

(assert (=> d!1218781 m!4710527))

(declare-fun m!4710747 () Bool)

(assert (=> d!1218781 m!4710747))

(declare-fun m!4710749 () Bool)

(assert (=> b!4105755 m!4710749))

(assert (=> b!4105645 d!1218781))

(declare-fun d!1218785 () Bool)

(assert (not d!1218785))

(assert (=> b!4105639 d!1218785))

(declare-fun b!4105756 () Bool)

(declare-fun e!2548083 () Bool)

(assert (=> b!4105756 (= e!2548083 tp_is_empty!21137)))

(declare-fun b!4105757 () Bool)

(declare-fun tp!1245135 () Bool)

(declare-fun tp!1245134 () Bool)

(assert (=> b!4105757 (= e!2548083 (and tp!1245135 tp!1245134))))

(declare-fun b!4105759 () Bool)

(declare-fun tp!1245132 () Bool)

(declare-fun tp!1245131 () Bool)

(assert (=> b!4105759 (= e!2548083 (and tp!1245132 tp!1245131))))

(assert (=> b!4105676 (= tp!1245101 e!2548083)))

(declare-fun b!4105758 () Bool)

(declare-fun tp!1245133 () Bool)

(assert (=> b!4105758 (= e!2548083 tp!1245133)))

(assert (= (and b!4105676 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24683 (regex!7180 rHead!24))))) b!4105756))

(assert (= (and b!4105676 ((_ is Concat!19495) (regOne!24682 (regOne!24683 (regex!7180 rHead!24))))) b!4105757))

(assert (= (and b!4105676 ((_ is Star!12085) (regOne!24682 (regOne!24683 (regex!7180 rHead!24))))) b!4105758))

(assert (= (and b!4105676 ((_ is Union!12085) (regOne!24682 (regOne!24683 (regex!7180 rHead!24))))) b!4105759))

(declare-fun b!4105760 () Bool)

(declare-fun e!2548084 () Bool)

(assert (=> b!4105760 (= e!2548084 tp_is_empty!21137)))

(declare-fun b!4105761 () Bool)

(declare-fun tp!1245140 () Bool)

(declare-fun tp!1245139 () Bool)

(assert (=> b!4105761 (= e!2548084 (and tp!1245140 tp!1245139))))

(declare-fun b!4105763 () Bool)

(declare-fun tp!1245137 () Bool)

(declare-fun tp!1245136 () Bool)

(assert (=> b!4105763 (= e!2548084 (and tp!1245137 tp!1245136))))

(assert (=> b!4105676 (= tp!1245100 e!2548084)))

(declare-fun b!4105762 () Bool)

(declare-fun tp!1245138 () Bool)

(assert (=> b!4105762 (= e!2548084 tp!1245138)))

(assert (= (and b!4105676 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24683 (regex!7180 rHead!24))))) b!4105760))

(assert (= (and b!4105676 ((_ is Concat!19495) (regTwo!24682 (regOne!24683 (regex!7180 rHead!24))))) b!4105761))

(assert (= (and b!4105676 ((_ is Star!12085) (regTwo!24682 (regOne!24683 (regex!7180 rHead!24))))) b!4105762))

(assert (= (and b!4105676 ((_ is Union!12085) (regTwo!24682 (regOne!24683 (regex!7180 rHead!24))))) b!4105763))

(declare-fun b!4105764 () Bool)

(declare-fun e!2548085 () Bool)

(assert (=> b!4105764 (= e!2548085 tp_is_empty!21137)))

(declare-fun b!4105765 () Bool)

(declare-fun tp!1245145 () Bool)

(declare-fun tp!1245144 () Bool)

(assert (=> b!4105765 (= e!2548085 (and tp!1245145 tp!1245144))))

(declare-fun b!4105767 () Bool)

(declare-fun tp!1245142 () Bool)

(declare-fun tp!1245141 () Bool)

(assert (=> b!4105767 (= e!2548085 (and tp!1245142 tp!1245141))))

(assert (=> b!4105685 (= tp!1245109 e!2548085)))

(declare-fun b!4105766 () Bool)

(declare-fun tp!1245143 () Bool)

(assert (=> b!4105766 (= e!2548085 tp!1245143)))

(assert (= (and b!4105685 ((_ is ElementMatch!12085) (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105764))

(assert (= (and b!4105685 ((_ is Concat!19495) (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105765))

(assert (= (and b!4105685 ((_ is Star!12085) (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105766))

(assert (= (and b!4105685 ((_ is Union!12085) (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105767))

(declare-fun b!4105768 () Bool)

(declare-fun e!2548086 () Bool)

(assert (=> b!4105768 (= e!2548086 tp_is_empty!21137)))

(declare-fun b!4105769 () Bool)

(declare-fun tp!1245150 () Bool)

(declare-fun tp!1245149 () Bool)

(assert (=> b!4105769 (= e!2548086 (and tp!1245150 tp!1245149))))

(declare-fun b!4105771 () Bool)

(declare-fun tp!1245147 () Bool)

(declare-fun tp!1245146 () Bool)

(assert (=> b!4105771 (= e!2548086 (and tp!1245147 tp!1245146))))

(assert (=> b!4105692 (= tp!1245117 e!2548086)))

(declare-fun b!4105770 () Bool)

(declare-fun tp!1245148 () Bool)

(assert (=> b!4105770 (= e!2548086 tp!1245148)))

(assert (= (and b!4105692 ((_ is ElementMatch!12085) (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27)))))) b!4105768))

(assert (= (and b!4105692 ((_ is Concat!19495) (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27)))))) b!4105769))

(assert (= (and b!4105692 ((_ is Star!12085) (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27)))))) b!4105770))

(assert (= (and b!4105692 ((_ is Union!12085) (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27)))))) b!4105771))

(declare-fun b!4105778 () Bool)

(declare-fun b_free!115329 () Bool)

(declare-fun b_next!116033 () Bool)

(assert (=> b!4105778 (= b_free!115329 (not b_next!116033))))

(declare-fun tp!1245154 () Bool)

(declare-fun b_and!317143 () Bool)

(assert (=> b!4105778 (= tp!1245154 b_and!317143)))

(declare-fun b_free!115331 () Bool)

(declare-fun b_next!116035 () Bool)

(assert (=> b!4105778 (= b_free!115331 (not b_next!116035))))

(declare-fun tp!1245153 () Bool)

(declare-fun b_and!317145 () Bool)

(assert (=> b!4105778 (= tp!1245153 b_and!317145)))

(declare-fun e!2548090 () Bool)

(assert (=> b!4105778 (= e!2548090 (and tp!1245154 tp!1245153))))

(declare-fun e!2548092 () Bool)

(declare-fun b!4105777 () Bool)

(declare-fun tp!1245151 () Bool)

(assert (=> b!4105777 (= e!2548092 (and tp!1245151 (inv!58853 (tag!8040 (h!49618 (t!339979 (t!339979 (t!339979 rTail!27)))))) (inv!58855 (transformation!7180 (h!49618 (t!339979 (t!339979 (t!339979 rTail!27)))))) e!2548090))))

(declare-fun b!4105776 () Bool)

(declare-fun e!2548089 () Bool)

(declare-fun tp!1245152 () Bool)

(assert (=> b!4105776 (= e!2548089 (and e!2548092 tp!1245152))))

(assert (=> b!4105691 (= tp!1245118 e!2548089)))

(assert (= b!4105777 b!4105778))

(assert (= b!4105776 b!4105777))

(assert (= (and b!4105691 ((_ is Cons!44198) (t!339979 (t!339979 (t!339979 rTail!27))))) b!4105776))

(declare-fun m!4710751 () Bool)

(assert (=> b!4105777 m!4710751))

(declare-fun m!4710753 () Bool)

(assert (=> b!4105777 m!4710753))

(declare-fun b!4105779 () Bool)

(declare-fun e!2548093 () Bool)

(assert (=> b!4105779 (= e!2548093 tp_is_empty!21137)))

(declare-fun b!4105780 () Bool)

(declare-fun tp!1245159 () Bool)

(declare-fun tp!1245158 () Bool)

(assert (=> b!4105780 (= e!2548093 (and tp!1245159 tp!1245158))))

(declare-fun b!4105782 () Bool)

(declare-fun tp!1245156 () Bool)

(declare-fun tp!1245155 () Bool)

(assert (=> b!4105782 (= e!2548093 (and tp!1245156 tp!1245155))))

(assert (=> b!4105684 (= tp!1245111 e!2548093)))

(declare-fun b!4105781 () Bool)

(declare-fun tp!1245157 () Bool)

(assert (=> b!4105781 (= e!2548093 tp!1245157)))

(assert (= (and b!4105684 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105779))

(assert (= (and b!4105684 ((_ is Concat!19495) (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105780))

(assert (= (and b!4105684 ((_ is Star!12085) (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105781))

(assert (= (and b!4105684 ((_ is Union!12085) (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105782))

(declare-fun b!4105783 () Bool)

(declare-fun e!2548094 () Bool)

(assert (=> b!4105783 (= e!2548094 tp_is_empty!21137)))

(declare-fun b!4105784 () Bool)

(declare-fun tp!1245164 () Bool)

(declare-fun tp!1245163 () Bool)

(assert (=> b!4105784 (= e!2548094 (and tp!1245164 tp!1245163))))

(declare-fun b!4105786 () Bool)

(declare-fun tp!1245161 () Bool)

(declare-fun tp!1245160 () Bool)

(assert (=> b!4105786 (= e!2548094 (and tp!1245161 tp!1245160))))

(assert (=> b!4105684 (= tp!1245110 e!2548094)))

(declare-fun b!4105785 () Bool)

(declare-fun tp!1245162 () Bool)

(assert (=> b!4105785 (= e!2548094 tp!1245162)))

(assert (= (and b!4105684 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105783))

(assert (= (and b!4105684 ((_ is Concat!19495) (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105784))

(assert (= (and b!4105684 ((_ is Star!12085) (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105785))

(assert (= (and b!4105684 ((_ is Union!12085) (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105786))

(declare-fun b!4105787 () Bool)

(declare-fun e!2548095 () Bool)

(assert (=> b!4105787 (= e!2548095 tp_is_empty!21137)))

(declare-fun b!4105788 () Bool)

(declare-fun tp!1245169 () Bool)

(declare-fun tp!1245168 () Bool)

(assert (=> b!4105788 (= e!2548095 (and tp!1245169 tp!1245168))))

(declare-fun b!4105790 () Bool)

(declare-fun tp!1245166 () Bool)

(declare-fun tp!1245165 () Bool)

(assert (=> b!4105790 (= e!2548095 (and tp!1245166 tp!1245165))))

(assert (=> b!4105658 (= tp!1245073 e!2548095)))

(declare-fun b!4105789 () Bool)

(declare-fun tp!1245167 () Bool)

(assert (=> b!4105789 (= e!2548095 tp!1245167)))

(assert (= (and b!4105658 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105787))

(assert (= (and b!4105658 ((_ is Concat!19495) (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105788))

(assert (= (and b!4105658 ((_ is Star!12085) (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105789))

(assert (= (and b!4105658 ((_ is Union!12085) (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105790))

(declare-fun b!4105791 () Bool)

(declare-fun e!2548096 () Bool)

(assert (=> b!4105791 (= e!2548096 tp_is_empty!21137)))

(declare-fun b!4105792 () Bool)

(declare-fun tp!1245174 () Bool)

(declare-fun tp!1245173 () Bool)

(assert (=> b!4105792 (= e!2548096 (and tp!1245174 tp!1245173))))

(declare-fun b!4105794 () Bool)

(declare-fun tp!1245171 () Bool)

(declare-fun tp!1245170 () Bool)

(assert (=> b!4105794 (= e!2548096 (and tp!1245171 tp!1245170))))

(assert (=> b!4105658 (= tp!1245072 e!2548096)))

(declare-fun b!4105793 () Bool)

(declare-fun tp!1245172 () Bool)

(assert (=> b!4105793 (= e!2548096 tp!1245172)))

(assert (= (and b!4105658 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105791))

(assert (= (and b!4105658 ((_ is Concat!19495) (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105792))

(assert (= (and b!4105658 ((_ is Star!12085) (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105793))

(assert (= (and b!4105658 ((_ is Union!12085) (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105794))

(declare-fun b!4105795 () Bool)

(declare-fun e!2548097 () Bool)

(assert (=> b!4105795 (= e!2548097 tp_is_empty!21137)))

(declare-fun b!4105796 () Bool)

(declare-fun tp!1245179 () Bool)

(declare-fun tp!1245178 () Bool)

(assert (=> b!4105796 (= e!2548097 (and tp!1245179 tp!1245178))))

(declare-fun b!4105798 () Bool)

(declare-fun tp!1245176 () Bool)

(declare-fun tp!1245175 () Bool)

(assert (=> b!4105798 (= e!2548097 (and tp!1245176 tp!1245175))))

(assert (=> b!4105701 (= tp!1245127 e!2548097)))

(declare-fun b!4105797 () Bool)

(declare-fun tp!1245177 () Bool)

(assert (=> b!4105797 (= e!2548097 tp!1245177)))

(assert (= (and b!4105701 ((_ is ElementMatch!12085) (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105795))

(assert (= (and b!4105701 ((_ is Concat!19495) (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105796))

(assert (= (and b!4105701 ((_ is Star!12085) (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105797))

(assert (= (and b!4105701 ((_ is Union!12085) (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105798))

(declare-fun b!4105799 () Bool)

(declare-fun e!2548098 () Bool)

(assert (=> b!4105799 (= e!2548098 tp_is_empty!21137)))

(declare-fun b!4105800 () Bool)

(declare-fun tp!1245184 () Bool)

(declare-fun tp!1245183 () Bool)

(assert (=> b!4105800 (= e!2548098 (and tp!1245184 tp!1245183))))

(declare-fun b!4105802 () Bool)

(declare-fun tp!1245181 () Bool)

(declare-fun tp!1245180 () Bool)

(assert (=> b!4105802 (= e!2548098 (and tp!1245181 tp!1245180))))

(assert (=> b!4105701 (= tp!1245126 e!2548098)))

(declare-fun b!4105801 () Bool)

(declare-fun tp!1245182 () Bool)

(assert (=> b!4105801 (= e!2548098 tp!1245182)))

(assert (= (and b!4105701 ((_ is ElementMatch!12085) (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105799))

(assert (= (and b!4105701 ((_ is Concat!19495) (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105800))

(assert (= (and b!4105701 ((_ is Star!12085) (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105801))

(assert (= (and b!4105701 ((_ is Union!12085) (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105802))

(declare-fun b!4105803 () Bool)

(declare-fun e!2548099 () Bool)

(assert (=> b!4105803 (= e!2548099 tp_is_empty!21137)))

(declare-fun b!4105804 () Bool)

(declare-fun tp!1245189 () Bool)

(declare-fun tp!1245188 () Bool)

(assert (=> b!4105804 (= e!2548099 (and tp!1245189 tp!1245188))))

(declare-fun b!4105806 () Bool)

(declare-fun tp!1245186 () Bool)

(declare-fun tp!1245185 () Bool)

(assert (=> b!4105806 (= e!2548099 (and tp!1245186 tp!1245185))))

(assert (=> b!4105657 (= tp!1245074 e!2548099)))

(declare-fun b!4105805 () Bool)

(declare-fun tp!1245187 () Bool)

(assert (=> b!4105805 (= e!2548099 tp!1245187)))

(assert (= (and b!4105657 ((_ is ElementMatch!12085) (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105803))

(assert (= (and b!4105657 ((_ is Concat!19495) (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105804))

(assert (= (and b!4105657 ((_ is Star!12085) (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105805))

(assert (= (and b!4105657 ((_ is Union!12085) (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105806))

(declare-fun b!4105807 () Bool)

(declare-fun e!2548100 () Bool)

(assert (=> b!4105807 (= e!2548100 tp_is_empty!21137)))

(declare-fun b!4105808 () Bool)

(declare-fun tp!1245194 () Bool)

(declare-fun tp!1245193 () Bool)

(assert (=> b!4105808 (= e!2548100 (and tp!1245194 tp!1245193))))

(declare-fun b!4105810 () Bool)

(declare-fun tp!1245191 () Bool)

(declare-fun tp!1245190 () Bool)

(assert (=> b!4105810 (= e!2548100 (and tp!1245191 tp!1245190))))

(assert (=> b!4105666 (= tp!1245083 e!2548100)))

(declare-fun b!4105809 () Bool)

(declare-fun tp!1245192 () Bool)

(assert (=> b!4105809 (= e!2548100 tp!1245192)))

(assert (= (and b!4105666 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24682 (regex!7180 rHead!24))))) b!4105807))

(assert (= (and b!4105666 ((_ is Concat!19495) (regOne!24683 (regOne!24682 (regex!7180 rHead!24))))) b!4105808))

(assert (= (and b!4105666 ((_ is Star!12085) (regOne!24683 (regOne!24682 (regex!7180 rHead!24))))) b!4105809))

(assert (= (and b!4105666 ((_ is Union!12085) (regOne!24683 (regOne!24682 (regex!7180 rHead!24))))) b!4105810))

(declare-fun b!4105813 () Bool)

(declare-fun e!2548102 () Bool)

(assert (=> b!4105813 (= e!2548102 tp_is_empty!21137)))

(declare-fun b!4105814 () Bool)

(declare-fun tp!1245199 () Bool)

(declare-fun tp!1245198 () Bool)

(assert (=> b!4105814 (= e!2548102 (and tp!1245199 tp!1245198))))

(declare-fun b!4105816 () Bool)

(declare-fun tp!1245196 () Bool)

(declare-fun tp!1245195 () Bool)

(assert (=> b!4105816 (= e!2548102 (and tp!1245196 tp!1245195))))

(assert (=> b!4105666 (= tp!1245082 e!2548102)))

(declare-fun b!4105815 () Bool)

(declare-fun tp!1245197 () Bool)

(assert (=> b!4105815 (= e!2548102 tp!1245197)))

(assert (= (and b!4105666 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24682 (regex!7180 rHead!24))))) b!4105813))

(assert (= (and b!4105666 ((_ is Concat!19495) (regTwo!24683 (regOne!24682 (regex!7180 rHead!24))))) b!4105814))

(assert (= (and b!4105666 ((_ is Star!12085) (regTwo!24683 (regOne!24682 (regex!7180 rHead!24))))) b!4105815))

(assert (= (and b!4105666 ((_ is Union!12085) (regTwo!24683 (regOne!24682 (regex!7180 rHead!24))))) b!4105816))

(declare-fun b!4105817 () Bool)

(declare-fun e!2548103 () Bool)

(assert (=> b!4105817 (= e!2548103 tp_is_empty!21137)))

(declare-fun b!4105818 () Bool)

(declare-fun tp!1245204 () Bool)

(declare-fun tp!1245203 () Bool)

(assert (=> b!4105818 (= e!2548103 (and tp!1245204 tp!1245203))))

(declare-fun b!4105820 () Bool)

(declare-fun tp!1245201 () Bool)

(declare-fun tp!1245200 () Bool)

(assert (=> b!4105820 (= e!2548103 (and tp!1245201 tp!1245200))))

(assert (=> b!4105656 (= tp!1245076 e!2548103)))

(declare-fun b!4105819 () Bool)

(declare-fun tp!1245202 () Bool)

(assert (=> b!4105819 (= e!2548103 tp!1245202)))

(assert (= (and b!4105656 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105817))

(assert (= (and b!4105656 ((_ is Concat!19495) (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105818))

(assert (= (and b!4105656 ((_ is Star!12085) (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105819))

(assert (= (and b!4105656 ((_ is Union!12085) (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105820))

(declare-fun b!4105821 () Bool)

(declare-fun e!2548104 () Bool)

(assert (=> b!4105821 (= e!2548104 tp_is_empty!21137)))

(declare-fun b!4105822 () Bool)

(declare-fun tp!1245209 () Bool)

(declare-fun tp!1245208 () Bool)

(assert (=> b!4105822 (= e!2548104 (and tp!1245209 tp!1245208))))

(declare-fun b!4105824 () Bool)

(declare-fun tp!1245206 () Bool)

(declare-fun tp!1245205 () Bool)

(assert (=> b!4105824 (= e!2548104 (and tp!1245206 tp!1245205))))

(assert (=> b!4105656 (= tp!1245075 e!2548104)))

(declare-fun b!4105823 () Bool)

(declare-fun tp!1245207 () Bool)

(assert (=> b!4105823 (= e!2548104 tp!1245207)))

(assert (= (and b!4105656 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105821))

(assert (= (and b!4105656 ((_ is Concat!19495) (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105822))

(assert (= (and b!4105656 ((_ is Star!12085) (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105823))

(assert (= (and b!4105656 ((_ is Union!12085) (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105824))

(declare-fun b!4105825 () Bool)

(declare-fun e!2548105 () Bool)

(assert (=> b!4105825 (= e!2548105 tp_is_empty!21137)))

(declare-fun b!4105826 () Bool)

(declare-fun tp!1245214 () Bool)

(declare-fun tp!1245213 () Bool)

(assert (=> b!4105826 (= e!2548105 (and tp!1245214 tp!1245213))))

(declare-fun b!4105828 () Bool)

(declare-fun tp!1245211 () Bool)

(declare-fun tp!1245210 () Bool)

(assert (=> b!4105828 (= e!2548105 (and tp!1245211 tp!1245210))))

(assert (=> b!4105665 (= tp!1245084 e!2548105)))

(declare-fun b!4105827 () Bool)

(declare-fun tp!1245212 () Bool)

(assert (=> b!4105827 (= e!2548105 tp!1245212)))

(assert (= (and b!4105665 ((_ is ElementMatch!12085) (reg!12414 (regOne!24682 (regex!7180 rHead!24))))) b!4105825))

(assert (= (and b!4105665 ((_ is Concat!19495) (reg!12414 (regOne!24682 (regex!7180 rHead!24))))) b!4105826))

(assert (= (and b!4105665 ((_ is Star!12085) (reg!12414 (regOne!24682 (regex!7180 rHead!24))))) b!4105827))

(assert (= (and b!4105665 ((_ is Union!12085) (reg!12414 (regOne!24682 (regex!7180 rHead!24))))) b!4105828))

(declare-fun b!4105829 () Bool)

(declare-fun e!2548106 () Bool)

(assert (=> b!4105829 (= e!2548106 tp_is_empty!21137)))

(declare-fun b!4105830 () Bool)

(declare-fun tp!1245219 () Bool)

(declare-fun tp!1245218 () Bool)

(assert (=> b!4105830 (= e!2548106 (and tp!1245219 tp!1245218))))

(declare-fun b!4105832 () Bool)

(declare-fun tp!1245216 () Bool)

(declare-fun tp!1245215 () Bool)

(assert (=> b!4105832 (= e!2548106 (and tp!1245216 tp!1245215))))

(assert (=> b!4105700 (= tp!1245128 e!2548106)))

(declare-fun b!4105831 () Bool)

(declare-fun tp!1245217 () Bool)

(assert (=> b!4105831 (= e!2548106 tp!1245217)))

(assert (= (and b!4105700 ((_ is ElementMatch!12085) (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105829))

(assert (= (and b!4105700 ((_ is Concat!19495) (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105830))

(assert (= (and b!4105700 ((_ is Star!12085) (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105831))

(assert (= (and b!4105700 ((_ is Union!12085) (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105832))

(declare-fun b!4105833 () Bool)

(declare-fun e!2548107 () Bool)

(assert (=> b!4105833 (= e!2548107 tp_is_empty!21137)))

(declare-fun b!4105834 () Bool)

(declare-fun tp!1245224 () Bool)

(declare-fun tp!1245223 () Bool)

(assert (=> b!4105834 (= e!2548107 (and tp!1245224 tp!1245223))))

(declare-fun b!4105836 () Bool)

(declare-fun tp!1245221 () Bool)

(declare-fun tp!1245220 () Bool)

(assert (=> b!4105836 (= e!2548107 (and tp!1245221 tp!1245220))))

(assert (=> b!4105674 (= tp!1245093 e!2548107)))

(declare-fun b!4105835 () Bool)

(declare-fun tp!1245222 () Bool)

(assert (=> b!4105835 (= e!2548107 tp!1245222)))

(assert (= (and b!4105674 ((_ is ElementMatch!12085) (regOne!24683 (reg!12414 (regex!7180 rHead!24))))) b!4105833))

(assert (= (and b!4105674 ((_ is Concat!19495) (regOne!24683 (reg!12414 (regex!7180 rHead!24))))) b!4105834))

(assert (= (and b!4105674 ((_ is Star!12085) (regOne!24683 (reg!12414 (regex!7180 rHead!24))))) b!4105835))

(assert (= (and b!4105674 ((_ is Union!12085) (regOne!24683 (reg!12414 (regex!7180 rHead!24))))) b!4105836))

(declare-fun b!4105837 () Bool)

(declare-fun e!2548108 () Bool)

(assert (=> b!4105837 (= e!2548108 tp_is_empty!21137)))

(declare-fun b!4105838 () Bool)

(declare-fun tp!1245229 () Bool)

(declare-fun tp!1245228 () Bool)

(assert (=> b!4105838 (= e!2548108 (and tp!1245229 tp!1245228))))

(declare-fun b!4105840 () Bool)

(declare-fun tp!1245226 () Bool)

(declare-fun tp!1245225 () Bool)

(assert (=> b!4105840 (= e!2548108 (and tp!1245226 tp!1245225))))

(assert (=> b!4105674 (= tp!1245092 e!2548108)))

(declare-fun b!4105839 () Bool)

(declare-fun tp!1245227 () Bool)

(assert (=> b!4105839 (= e!2548108 tp!1245227)))

(assert (= (and b!4105674 ((_ is ElementMatch!12085) (regTwo!24683 (reg!12414 (regex!7180 rHead!24))))) b!4105837))

(assert (= (and b!4105674 ((_ is Concat!19495) (regTwo!24683 (reg!12414 (regex!7180 rHead!24))))) b!4105838))

(assert (= (and b!4105674 ((_ is Star!12085) (regTwo!24683 (reg!12414 (regex!7180 rHead!24))))) b!4105839))

(assert (= (and b!4105674 ((_ is Union!12085) (regTwo!24683 (reg!12414 (regex!7180 rHead!24))))) b!4105840))

(declare-fun b!4105841 () Bool)

(declare-fun e!2548109 () Bool)

(assert (=> b!4105841 (= e!2548109 tp_is_empty!21137)))

(declare-fun b!4105842 () Bool)

(declare-fun tp!1245234 () Bool)

(declare-fun tp!1245233 () Bool)

(assert (=> b!4105842 (= e!2548109 (and tp!1245234 tp!1245233))))

(declare-fun b!4105844 () Bool)

(declare-fun tp!1245231 () Bool)

(declare-fun tp!1245230 () Bool)

(assert (=> b!4105844 (= e!2548109 (and tp!1245231 tp!1245230))))

(assert (=> b!4105699 (= tp!1245130 e!2548109)))

(declare-fun b!4105843 () Bool)

(declare-fun tp!1245232 () Bool)

(assert (=> b!4105843 (= e!2548109 tp!1245232)))

(assert (= (and b!4105699 ((_ is ElementMatch!12085) (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105841))

(assert (= (and b!4105699 ((_ is Concat!19495) (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105842))

(assert (= (and b!4105699 ((_ is Star!12085) (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105843))

(assert (= (and b!4105699 ((_ is Union!12085) (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105844))

(declare-fun b!4105845 () Bool)

(declare-fun e!2548110 () Bool)

(assert (=> b!4105845 (= e!2548110 tp_is_empty!21137)))

(declare-fun b!4105846 () Bool)

(declare-fun tp!1245239 () Bool)

(declare-fun tp!1245238 () Bool)

(assert (=> b!4105846 (= e!2548110 (and tp!1245239 tp!1245238))))

(declare-fun b!4105848 () Bool)

(declare-fun tp!1245236 () Bool)

(declare-fun tp!1245235 () Bool)

(assert (=> b!4105848 (= e!2548110 (and tp!1245236 tp!1245235))))

(assert (=> b!4105699 (= tp!1245129 e!2548110)))

(declare-fun b!4105847 () Bool)

(declare-fun tp!1245237 () Bool)

(assert (=> b!4105847 (= e!2548110 tp!1245237)))

(assert (= (and b!4105699 ((_ is ElementMatch!12085) (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105845))

(assert (= (and b!4105699 ((_ is Concat!19495) (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105846))

(assert (= (and b!4105699 ((_ is Star!12085) (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105847))

(assert (= (and b!4105699 ((_ is Union!12085) (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27)))))) b!4105848))

(declare-fun b!4105851 () Bool)

(declare-fun e!2548113 () Bool)

(assert (=> b!4105851 (= e!2548113 tp_is_empty!21137)))

(declare-fun b!4105852 () Bool)

(declare-fun tp!1245244 () Bool)

(declare-fun tp!1245243 () Bool)

(assert (=> b!4105852 (= e!2548113 (and tp!1245244 tp!1245243))))

(declare-fun b!4105854 () Bool)

(declare-fun tp!1245241 () Bool)

(declare-fun tp!1245240 () Bool)

(assert (=> b!4105854 (= e!2548113 (and tp!1245241 tp!1245240))))

(assert (=> b!4105664 (= tp!1245086 e!2548113)))

(declare-fun b!4105853 () Bool)

(declare-fun tp!1245242 () Bool)

(assert (=> b!4105853 (= e!2548113 tp!1245242)))

(assert (= (and b!4105664 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24682 (regex!7180 rHead!24))))) b!4105851))

(assert (= (and b!4105664 ((_ is Concat!19495) (regOne!24682 (regOne!24682 (regex!7180 rHead!24))))) b!4105852))

(assert (= (and b!4105664 ((_ is Star!12085) (regOne!24682 (regOne!24682 (regex!7180 rHead!24))))) b!4105853))

(assert (= (and b!4105664 ((_ is Union!12085) (regOne!24682 (regOne!24682 (regex!7180 rHead!24))))) b!4105854))

(declare-fun b!4105855 () Bool)

(declare-fun e!2548114 () Bool)

(assert (=> b!4105855 (= e!2548114 tp_is_empty!21137)))

(declare-fun b!4105856 () Bool)

(declare-fun tp!1245249 () Bool)

(declare-fun tp!1245248 () Bool)

(assert (=> b!4105856 (= e!2548114 (and tp!1245249 tp!1245248))))

(declare-fun b!4105858 () Bool)

(declare-fun tp!1245246 () Bool)

(declare-fun tp!1245245 () Bool)

(assert (=> b!4105858 (= e!2548114 (and tp!1245246 tp!1245245))))

(assert (=> b!4105664 (= tp!1245085 e!2548114)))

(declare-fun b!4105857 () Bool)

(declare-fun tp!1245247 () Bool)

(assert (=> b!4105857 (= e!2548114 tp!1245247)))

(assert (= (and b!4105664 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24682 (regex!7180 rHead!24))))) b!4105855))

(assert (= (and b!4105664 ((_ is Concat!19495) (regTwo!24682 (regOne!24682 (regex!7180 rHead!24))))) b!4105856))

(assert (= (and b!4105664 ((_ is Star!12085) (regTwo!24682 (regOne!24682 (regex!7180 rHead!24))))) b!4105857))

(assert (= (and b!4105664 ((_ is Union!12085) (regTwo!24682 (regOne!24682 (regex!7180 rHead!24))))) b!4105858))

(declare-fun b!4105859 () Bool)

(declare-fun e!2548115 () Bool)

(assert (=> b!4105859 (= e!2548115 tp_is_empty!21137)))

(declare-fun b!4105860 () Bool)

(declare-fun tp!1245254 () Bool)

(declare-fun tp!1245253 () Bool)

(assert (=> b!4105860 (= e!2548115 (and tp!1245254 tp!1245253))))

(declare-fun b!4105862 () Bool)

(declare-fun tp!1245251 () Bool)

(declare-fun tp!1245250 () Bool)

(assert (=> b!4105862 (= e!2548115 (and tp!1245251 tp!1245250))))

(assert (=> b!4105673 (= tp!1245094 e!2548115)))

(declare-fun b!4105861 () Bool)

(declare-fun tp!1245252 () Bool)

(assert (=> b!4105861 (= e!2548115 tp!1245252)))

(assert (= (and b!4105673 ((_ is ElementMatch!12085) (reg!12414 (reg!12414 (regex!7180 rHead!24))))) b!4105859))

(assert (= (and b!4105673 ((_ is Concat!19495) (reg!12414 (reg!12414 (regex!7180 rHead!24))))) b!4105860))

(assert (= (and b!4105673 ((_ is Star!12085) (reg!12414 (reg!12414 (regex!7180 rHead!24))))) b!4105861))

(assert (= (and b!4105673 ((_ is Union!12085) (reg!12414 (reg!12414 (regex!7180 rHead!24))))) b!4105862))

(declare-fun b!4105863 () Bool)

(declare-fun e!2548116 () Bool)

(assert (=> b!4105863 (= e!2548116 tp_is_empty!21137)))

(declare-fun b!4105864 () Bool)

(declare-fun tp!1245259 () Bool)

(declare-fun tp!1245258 () Bool)

(assert (=> b!4105864 (= e!2548116 (and tp!1245259 tp!1245258))))

(declare-fun b!4105866 () Bool)

(declare-fun tp!1245256 () Bool)

(declare-fun tp!1245255 () Bool)

(assert (=> b!4105866 (= e!2548116 (and tp!1245256 tp!1245255))))

(assert (=> b!4105682 (= tp!1245103 e!2548116)))

(declare-fun b!4105865 () Bool)

(declare-fun tp!1245257 () Bool)

(assert (=> b!4105865 (= e!2548116 tp!1245257)))

(assert (= (and b!4105682 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24683 (regex!7180 rHead!24))))) b!4105863))

(assert (= (and b!4105682 ((_ is Concat!19495) (regOne!24683 (regTwo!24683 (regex!7180 rHead!24))))) b!4105864))

(assert (= (and b!4105682 ((_ is Star!12085) (regOne!24683 (regTwo!24683 (regex!7180 rHead!24))))) b!4105865))

(assert (= (and b!4105682 ((_ is Union!12085) (regOne!24683 (regTwo!24683 (regex!7180 rHead!24))))) b!4105866))

(declare-fun b!4105867 () Bool)

(declare-fun e!2548117 () Bool)

(assert (=> b!4105867 (= e!2548117 tp_is_empty!21137)))

(declare-fun b!4105868 () Bool)

(declare-fun tp!1245264 () Bool)

(declare-fun tp!1245263 () Bool)

(assert (=> b!4105868 (= e!2548117 (and tp!1245264 tp!1245263))))

(declare-fun b!4105870 () Bool)

(declare-fun tp!1245261 () Bool)

(declare-fun tp!1245260 () Bool)

(assert (=> b!4105870 (= e!2548117 (and tp!1245261 tp!1245260))))

(assert (=> b!4105682 (= tp!1245102 e!2548117)))

(declare-fun b!4105869 () Bool)

(declare-fun tp!1245262 () Bool)

(assert (=> b!4105869 (= e!2548117 tp!1245262)))

(assert (= (and b!4105682 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24))))) b!4105867))

(assert (= (and b!4105682 ((_ is Concat!19495) (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24))))) b!4105868))

(assert (= (and b!4105682 ((_ is Star!12085) (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24))))) b!4105869))

(assert (= (and b!4105682 ((_ is Union!12085) (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24))))) b!4105870))

(declare-fun b!4105871 () Bool)

(declare-fun e!2548118 () Bool)

(assert (=> b!4105871 (= e!2548118 tp_is_empty!21137)))

(declare-fun b!4105872 () Bool)

(declare-fun tp!1245269 () Bool)

(declare-fun tp!1245268 () Bool)

(assert (=> b!4105872 (= e!2548118 (and tp!1245269 tp!1245268))))

(declare-fun b!4105874 () Bool)

(declare-fun tp!1245266 () Bool)

(declare-fun tp!1245265 () Bool)

(assert (=> b!4105874 (= e!2548118 (and tp!1245266 tp!1245265))))

(assert (=> b!4105672 (= tp!1245096 e!2548118)))

(declare-fun b!4105873 () Bool)

(declare-fun tp!1245267 () Bool)

(assert (=> b!4105873 (= e!2548118 tp!1245267)))

(assert (= (and b!4105672 ((_ is ElementMatch!12085) (regOne!24682 (reg!12414 (regex!7180 rHead!24))))) b!4105871))

(assert (= (and b!4105672 ((_ is Concat!19495) (regOne!24682 (reg!12414 (regex!7180 rHead!24))))) b!4105872))

(assert (= (and b!4105672 ((_ is Star!12085) (regOne!24682 (reg!12414 (regex!7180 rHead!24))))) b!4105873))

(assert (= (and b!4105672 ((_ is Union!12085) (regOne!24682 (reg!12414 (regex!7180 rHead!24))))) b!4105874))

(declare-fun b!4105877 () Bool)

(declare-fun e!2548121 () Bool)

(assert (=> b!4105877 (= e!2548121 tp_is_empty!21137)))

(declare-fun b!4105878 () Bool)

(declare-fun tp!1245274 () Bool)

(declare-fun tp!1245273 () Bool)

(assert (=> b!4105878 (= e!2548121 (and tp!1245274 tp!1245273))))

(declare-fun b!4105880 () Bool)

(declare-fun tp!1245271 () Bool)

(declare-fun tp!1245270 () Bool)

(assert (=> b!4105880 (= e!2548121 (and tp!1245271 tp!1245270))))

(assert (=> b!4105672 (= tp!1245095 e!2548121)))

(declare-fun b!4105879 () Bool)

(declare-fun tp!1245272 () Bool)

(assert (=> b!4105879 (= e!2548121 tp!1245272)))

(assert (= (and b!4105672 ((_ is ElementMatch!12085) (regTwo!24682 (reg!12414 (regex!7180 rHead!24))))) b!4105877))

(assert (= (and b!4105672 ((_ is Concat!19495) (regTwo!24682 (reg!12414 (regex!7180 rHead!24))))) b!4105878))

(assert (= (and b!4105672 ((_ is Star!12085) (regTwo!24682 (reg!12414 (regex!7180 rHead!24))))) b!4105879))

(assert (= (and b!4105672 ((_ is Union!12085) (regTwo!24682 (reg!12414 (regex!7180 rHead!24))))) b!4105880))

(declare-fun b!4105881 () Bool)

(declare-fun e!2548122 () Bool)

(assert (=> b!4105881 (= e!2548122 tp_is_empty!21137)))

(declare-fun b!4105882 () Bool)

(declare-fun tp!1245279 () Bool)

(declare-fun tp!1245278 () Bool)

(assert (=> b!4105882 (= e!2548122 (and tp!1245279 tp!1245278))))

(declare-fun b!4105884 () Bool)

(declare-fun tp!1245276 () Bool)

(declare-fun tp!1245275 () Bool)

(assert (=> b!4105884 (= e!2548122 (and tp!1245276 tp!1245275))))

(assert (=> b!4105681 (= tp!1245104 e!2548122)))

(declare-fun b!4105883 () Bool)

(declare-fun tp!1245277 () Bool)

(assert (=> b!4105883 (= e!2548122 tp!1245277)))

(assert (= (and b!4105681 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24683 (regex!7180 rHead!24))))) b!4105881))

(assert (= (and b!4105681 ((_ is Concat!19495) (reg!12414 (regTwo!24683 (regex!7180 rHead!24))))) b!4105882))

(assert (= (and b!4105681 ((_ is Star!12085) (reg!12414 (regTwo!24683 (regex!7180 rHead!24))))) b!4105883))

(assert (= (and b!4105681 ((_ is Union!12085) (reg!12414 (regTwo!24683 (regex!7180 rHead!24))))) b!4105884))

(declare-fun b!4105885 () Bool)

(declare-fun e!2548123 () Bool)

(assert (=> b!4105885 (= e!2548123 tp_is_empty!21137)))

(declare-fun b!4105886 () Bool)

(declare-fun tp!1245284 () Bool)

(declare-fun tp!1245283 () Bool)

(assert (=> b!4105886 (= e!2548123 (and tp!1245284 tp!1245283))))

(declare-fun b!4105888 () Bool)

(declare-fun tp!1245281 () Bool)

(declare-fun tp!1245280 () Bool)

(assert (=> b!4105888 (= e!2548123 (and tp!1245281 tp!1245280))))

(assert (=> b!4105690 (= tp!1245113 e!2548123)))

(declare-fun b!4105887 () Bool)

(declare-fun tp!1245282 () Bool)

(assert (=> b!4105887 (= e!2548123 tp!1245282)))

(assert (= (and b!4105690 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105885))

(assert (= (and b!4105690 ((_ is Concat!19495) (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105886))

(assert (= (and b!4105690 ((_ is Star!12085) (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105887))

(assert (= (and b!4105690 ((_ is Union!12085) (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105888))

(declare-fun b!4105889 () Bool)

(declare-fun e!2548124 () Bool)

(assert (=> b!4105889 (= e!2548124 tp_is_empty!21137)))

(declare-fun b!4105890 () Bool)

(declare-fun tp!1245289 () Bool)

(declare-fun tp!1245288 () Bool)

(assert (=> b!4105890 (= e!2548124 (and tp!1245289 tp!1245288))))

(declare-fun b!4105892 () Bool)

(declare-fun tp!1245286 () Bool)

(declare-fun tp!1245285 () Bool)

(assert (=> b!4105892 (= e!2548124 (and tp!1245286 tp!1245285))))

(assert (=> b!4105690 (= tp!1245112 e!2548124)))

(declare-fun b!4105891 () Bool)

(declare-fun tp!1245287 () Bool)

(assert (=> b!4105891 (= e!2548124 tp!1245287)))

(assert (= (and b!4105690 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105889))

(assert (= (and b!4105690 ((_ is Concat!19495) (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105890))

(assert (= (and b!4105690 ((_ is Star!12085) (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105891))

(assert (= (and b!4105690 ((_ is Union!12085) (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105892))

(declare-fun b!4105893 () Bool)

(declare-fun e!2548125 () Bool)

(assert (=> b!4105893 (= e!2548125 tp_is_empty!21137)))

(declare-fun b!4105894 () Bool)

(declare-fun tp!1245294 () Bool)

(declare-fun tp!1245293 () Bool)

(assert (=> b!4105894 (= e!2548125 (and tp!1245294 tp!1245293))))

(declare-fun b!4105896 () Bool)

(declare-fun tp!1245291 () Bool)

(declare-fun tp!1245290 () Bool)

(assert (=> b!4105896 (= e!2548125 (and tp!1245291 tp!1245290))))

(assert (=> b!4105689 (= tp!1245114 e!2548125)))

(declare-fun b!4105895 () Bool)

(declare-fun tp!1245292 () Bool)

(assert (=> b!4105895 (= e!2548125 tp!1245292)))

(assert (= (and b!4105689 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105893))

(assert (= (and b!4105689 ((_ is Concat!19495) (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105894))

(assert (= (and b!4105689 ((_ is Star!12085) (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105895))

(assert (= (and b!4105689 ((_ is Union!12085) (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105896))

(declare-fun b!4105897 () Bool)

(declare-fun e!2548126 () Bool)

(assert (=> b!4105897 (= e!2548126 tp_is_empty!21137)))

(declare-fun b!4105898 () Bool)

(declare-fun tp!1245299 () Bool)

(declare-fun tp!1245298 () Bool)

(assert (=> b!4105898 (= e!2548126 (and tp!1245299 tp!1245298))))

(declare-fun b!4105900 () Bool)

(declare-fun tp!1245296 () Bool)

(declare-fun tp!1245295 () Bool)

(assert (=> b!4105900 (= e!2548126 (and tp!1245296 tp!1245295))))

(assert (=> b!4105680 (= tp!1245106 e!2548126)))

(declare-fun b!4105899 () Bool)

(declare-fun tp!1245297 () Bool)

(assert (=> b!4105899 (= e!2548126 tp!1245297)))

(assert (= (and b!4105680 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24683 (regex!7180 rHead!24))))) b!4105897))

(assert (= (and b!4105680 ((_ is Concat!19495) (regOne!24682 (regTwo!24683 (regex!7180 rHead!24))))) b!4105898))

(assert (= (and b!4105680 ((_ is Star!12085) (regOne!24682 (regTwo!24683 (regex!7180 rHead!24))))) b!4105899))

(assert (= (and b!4105680 ((_ is Union!12085) (regOne!24682 (regTwo!24683 (regex!7180 rHead!24))))) b!4105900))

(declare-fun b!4105901 () Bool)

(declare-fun e!2548127 () Bool)

(assert (=> b!4105901 (= e!2548127 tp_is_empty!21137)))

(declare-fun b!4105902 () Bool)

(declare-fun tp!1245304 () Bool)

(declare-fun tp!1245303 () Bool)

(assert (=> b!4105902 (= e!2548127 (and tp!1245304 tp!1245303))))

(declare-fun b!4105904 () Bool)

(declare-fun tp!1245301 () Bool)

(declare-fun tp!1245300 () Bool)

(assert (=> b!4105904 (= e!2548127 (and tp!1245301 tp!1245300))))

(assert (=> b!4105680 (= tp!1245105 e!2548127)))

(declare-fun b!4105903 () Bool)

(declare-fun tp!1245302 () Bool)

(assert (=> b!4105903 (= e!2548127 tp!1245302)))

(assert (= (and b!4105680 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24))))) b!4105901))

(assert (= (and b!4105680 ((_ is Concat!19495) (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24))))) b!4105902))

(assert (= (and b!4105680 ((_ is Star!12085) (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24))))) b!4105903))

(assert (= (and b!4105680 ((_ is Union!12085) (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24))))) b!4105904))

(declare-fun b!4105905 () Bool)

(declare-fun e!2548128 () Bool)

(assert (=> b!4105905 (= e!2548128 tp_is_empty!21137)))

(declare-fun b!4105906 () Bool)

(declare-fun tp!1245309 () Bool)

(declare-fun tp!1245308 () Bool)

(assert (=> b!4105906 (= e!2548128 (and tp!1245309 tp!1245308))))

(declare-fun b!4105908 () Bool)

(declare-fun tp!1245306 () Bool)

(declare-fun tp!1245305 () Bool)

(assert (=> b!4105908 (= e!2548128 (and tp!1245306 tp!1245305))))

(assert (=> b!4105688 (= tp!1245116 e!2548128)))

(declare-fun b!4105907 () Bool)

(declare-fun tp!1245307 () Bool)

(assert (=> b!4105907 (= e!2548128 tp!1245307)))

(assert (= (and b!4105688 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105905))

(assert (= (and b!4105688 ((_ is Concat!19495) (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105906))

(assert (= (and b!4105688 ((_ is Star!12085) (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105907))

(assert (= (and b!4105688 ((_ is Union!12085) (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105908))

(declare-fun b!4105909 () Bool)

(declare-fun e!2548129 () Bool)

(assert (=> b!4105909 (= e!2548129 tp_is_empty!21137)))

(declare-fun b!4105910 () Bool)

(declare-fun tp!1245314 () Bool)

(declare-fun tp!1245313 () Bool)

(assert (=> b!4105910 (= e!2548129 (and tp!1245314 tp!1245313))))

(declare-fun b!4105912 () Bool)

(declare-fun tp!1245311 () Bool)

(declare-fun tp!1245310 () Bool)

(assert (=> b!4105912 (= e!2548129 (and tp!1245311 tp!1245310))))

(assert (=> b!4105688 (= tp!1245115 e!2548129)))

(declare-fun b!4105911 () Bool)

(declare-fun tp!1245312 () Bool)

(assert (=> b!4105911 (= e!2548129 tp!1245312)))

(assert (= (and b!4105688 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105909))

(assert (= (and b!4105688 ((_ is Concat!19495) (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105910))

(assert (= (and b!4105688 ((_ is Star!12085) (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105911))

(assert (= (and b!4105688 ((_ is Union!12085) (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105912))

(declare-fun b!4105913 () Bool)

(declare-fun e!2548130 () Bool)

(assert (=> b!4105913 (= e!2548130 tp_is_empty!21137)))

(declare-fun b!4105914 () Bool)

(declare-fun tp!1245319 () Bool)

(declare-fun tp!1245318 () Bool)

(assert (=> b!4105914 (= e!2548130 (and tp!1245319 tp!1245318))))

(declare-fun b!4105916 () Bool)

(declare-fun tp!1245316 () Bool)

(declare-fun tp!1245315 () Bool)

(assert (=> b!4105916 (= e!2548130 (and tp!1245316 tp!1245315))))

(assert (=> b!4105697 (= tp!1245122 e!2548130)))

(declare-fun b!4105915 () Bool)

(declare-fun tp!1245317 () Bool)

(assert (=> b!4105915 (= e!2548130 tp!1245317)))

(assert (= (and b!4105697 ((_ is ElementMatch!12085) (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105913))

(assert (= (and b!4105697 ((_ is Concat!19495) (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105914))

(assert (= (and b!4105697 ((_ is Star!12085) (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105915))

(assert (= (and b!4105697 ((_ is Union!12085) (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105916))

(declare-fun b!4105917 () Bool)

(declare-fun e!2548131 () Bool)

(assert (=> b!4105917 (= e!2548131 tp_is_empty!21137)))

(declare-fun b!4105918 () Bool)

(declare-fun tp!1245324 () Bool)

(declare-fun tp!1245323 () Bool)

(assert (=> b!4105918 (= e!2548131 (and tp!1245324 tp!1245323))))

(declare-fun b!4105920 () Bool)

(declare-fun tp!1245321 () Bool)

(declare-fun tp!1245320 () Bool)

(assert (=> b!4105920 (= e!2548131 (and tp!1245321 tp!1245320))))

(assert (=> b!4105697 (= tp!1245121 e!2548131)))

(declare-fun b!4105919 () Bool)

(declare-fun tp!1245322 () Bool)

(assert (=> b!4105919 (= e!2548131 tp!1245322)))

(assert (= (and b!4105697 ((_ is ElementMatch!12085) (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105917))

(assert (= (and b!4105697 ((_ is Concat!19495) (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105918))

(assert (= (and b!4105697 ((_ is Star!12085) (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105919))

(assert (= (and b!4105697 ((_ is Union!12085) (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105920))

(declare-fun b!4105921 () Bool)

(declare-fun e!2548132 () Bool)

(assert (=> b!4105921 (= e!2548132 tp_is_empty!21137)))

(declare-fun b!4105922 () Bool)

(declare-fun tp!1245329 () Bool)

(declare-fun tp!1245328 () Bool)

(assert (=> b!4105922 (= e!2548132 (and tp!1245329 tp!1245328))))

(declare-fun b!4105924 () Bool)

(declare-fun tp!1245326 () Bool)

(declare-fun tp!1245325 () Bool)

(assert (=> b!4105924 (= e!2548132 (and tp!1245326 tp!1245325))))

(assert (=> b!4105662 (= tp!1245078 e!2548132)))

(declare-fun b!4105923 () Bool)

(declare-fun tp!1245327 () Bool)

(assert (=> b!4105923 (= e!2548132 tp!1245327)))

(assert (= (and b!4105662 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105921))

(assert (= (and b!4105662 ((_ is Concat!19495) (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105922))

(assert (= (and b!4105662 ((_ is Star!12085) (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105923))

(assert (= (and b!4105662 ((_ is Union!12085) (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105924))

(declare-fun b!4105925 () Bool)

(declare-fun e!2548133 () Bool)

(assert (=> b!4105925 (= e!2548133 tp_is_empty!21137)))

(declare-fun b!4105926 () Bool)

(declare-fun tp!1245334 () Bool)

(declare-fun tp!1245333 () Bool)

(assert (=> b!4105926 (= e!2548133 (and tp!1245334 tp!1245333))))

(declare-fun b!4105928 () Bool)

(declare-fun tp!1245331 () Bool)

(declare-fun tp!1245330 () Bool)

(assert (=> b!4105928 (= e!2548133 (and tp!1245331 tp!1245330))))

(assert (=> b!4105662 (= tp!1245077 e!2548133)))

(declare-fun b!4105927 () Bool)

(declare-fun tp!1245332 () Bool)

(assert (=> b!4105927 (= e!2548133 tp!1245332)))

(assert (= (and b!4105662 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105925))

(assert (= (and b!4105662 ((_ is Concat!19495) (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105926))

(assert (= (and b!4105662 ((_ is Star!12085) (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105927))

(assert (= (and b!4105662 ((_ is Union!12085) (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105928))

(declare-fun b!4105929 () Bool)

(declare-fun e!2548134 () Bool)

(assert (=> b!4105929 (= e!2548134 tp_is_empty!21137)))

(declare-fun b!4105930 () Bool)

(declare-fun tp!1245339 () Bool)

(declare-fun tp!1245338 () Bool)

(assert (=> b!4105930 (= e!2548134 (and tp!1245339 tp!1245338))))

(declare-fun b!4105932 () Bool)

(declare-fun tp!1245336 () Bool)

(declare-fun tp!1245335 () Bool)

(assert (=> b!4105932 (= e!2548134 (and tp!1245336 tp!1245335))))

(assert (=> b!4105661 (= tp!1245079 e!2548134)))

(declare-fun b!4105931 () Bool)

(declare-fun tp!1245337 () Bool)

(assert (=> b!4105931 (= e!2548134 tp!1245337)))

(assert (= (and b!4105661 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105929))

(assert (= (and b!4105661 ((_ is Concat!19495) (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105930))

(assert (= (and b!4105661 ((_ is Star!12085) (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105931))

(assert (= (and b!4105661 ((_ is Union!12085) (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105932))

(declare-fun b!4105933 () Bool)

(declare-fun e!2548135 () Bool)

(assert (=> b!4105933 (= e!2548135 tp_is_empty!21137)))

(declare-fun b!4105934 () Bool)

(declare-fun tp!1245344 () Bool)

(declare-fun tp!1245343 () Bool)

(assert (=> b!4105934 (= e!2548135 (and tp!1245344 tp!1245343))))

(declare-fun b!4105936 () Bool)

(declare-fun tp!1245341 () Bool)

(declare-fun tp!1245340 () Bool)

(assert (=> b!4105936 (= e!2548135 (and tp!1245341 tp!1245340))))

(assert (=> b!4105696 (= tp!1245123 e!2548135)))

(declare-fun b!4105935 () Bool)

(declare-fun tp!1245342 () Bool)

(assert (=> b!4105935 (= e!2548135 tp!1245342)))

(assert (= (and b!4105696 ((_ is ElementMatch!12085) (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105933))

(assert (= (and b!4105696 ((_ is Concat!19495) (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105934))

(assert (= (and b!4105696 ((_ is Star!12085) (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105935))

(assert (= (and b!4105696 ((_ is Union!12085) (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105936))

(declare-fun b!4105937 () Bool)

(declare-fun e!2548136 () Bool)

(assert (=> b!4105937 (= e!2548136 tp_is_empty!21137)))

(declare-fun b!4105938 () Bool)

(declare-fun tp!1245349 () Bool)

(declare-fun tp!1245348 () Bool)

(assert (=> b!4105938 (= e!2548136 (and tp!1245349 tp!1245348))))

(declare-fun b!4105940 () Bool)

(declare-fun tp!1245346 () Bool)

(declare-fun tp!1245345 () Bool)

(assert (=> b!4105940 (= e!2548136 (and tp!1245346 tp!1245345))))

(assert (=> b!4105670 (= tp!1245088 e!2548136)))

(declare-fun b!4105939 () Bool)

(declare-fun tp!1245347 () Bool)

(assert (=> b!4105939 (= e!2548136 tp!1245347)))

(assert (= (and b!4105670 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24682 (regex!7180 rHead!24))))) b!4105937))

(assert (= (and b!4105670 ((_ is Concat!19495) (regOne!24683 (regTwo!24682 (regex!7180 rHead!24))))) b!4105938))

(assert (= (and b!4105670 ((_ is Star!12085) (regOne!24683 (regTwo!24682 (regex!7180 rHead!24))))) b!4105939))

(assert (= (and b!4105670 ((_ is Union!12085) (regOne!24683 (regTwo!24682 (regex!7180 rHead!24))))) b!4105940))

(declare-fun b!4105941 () Bool)

(declare-fun e!2548137 () Bool)

(assert (=> b!4105941 (= e!2548137 tp_is_empty!21137)))

(declare-fun b!4105942 () Bool)

(declare-fun tp!1245354 () Bool)

(declare-fun tp!1245353 () Bool)

(assert (=> b!4105942 (= e!2548137 (and tp!1245354 tp!1245353))))

(declare-fun b!4105944 () Bool)

(declare-fun tp!1245351 () Bool)

(declare-fun tp!1245350 () Bool)

(assert (=> b!4105944 (= e!2548137 (and tp!1245351 tp!1245350))))

(assert (=> b!4105670 (= tp!1245087 e!2548137)))

(declare-fun b!4105943 () Bool)

(declare-fun tp!1245352 () Bool)

(assert (=> b!4105943 (= e!2548137 tp!1245352)))

(assert (= (and b!4105670 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24))))) b!4105941))

(assert (= (and b!4105670 ((_ is Concat!19495) (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24))))) b!4105942))

(assert (= (and b!4105670 ((_ is Star!12085) (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24))))) b!4105943))

(assert (= (and b!4105670 ((_ is Union!12085) (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24))))) b!4105944))

(declare-fun b!4105945 () Bool)

(declare-fun e!2548138 () Bool)

(assert (=> b!4105945 (= e!2548138 tp_is_empty!21137)))

(declare-fun b!4105946 () Bool)

(declare-fun tp!1245359 () Bool)

(declare-fun tp!1245358 () Bool)

(assert (=> b!4105946 (= e!2548138 (and tp!1245359 tp!1245358))))

(declare-fun b!4105948 () Bool)

(declare-fun tp!1245356 () Bool)

(declare-fun tp!1245355 () Bool)

(assert (=> b!4105948 (= e!2548138 (and tp!1245356 tp!1245355))))

(assert (=> b!4105695 (= tp!1245125 e!2548138)))

(declare-fun b!4105947 () Bool)

(declare-fun tp!1245357 () Bool)

(assert (=> b!4105947 (= e!2548138 tp!1245357)))

(assert (= (and b!4105695 ((_ is ElementMatch!12085) (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105945))

(assert (= (and b!4105695 ((_ is Concat!19495) (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105946))

(assert (= (and b!4105695 ((_ is Star!12085) (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105947))

(assert (= (and b!4105695 ((_ is Union!12085) (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105948))

(declare-fun b!4105949 () Bool)

(declare-fun e!2548139 () Bool)

(assert (=> b!4105949 (= e!2548139 tp_is_empty!21137)))

(declare-fun b!4105950 () Bool)

(declare-fun tp!1245364 () Bool)

(declare-fun tp!1245363 () Bool)

(assert (=> b!4105950 (= e!2548139 (and tp!1245364 tp!1245363))))

(declare-fun b!4105952 () Bool)

(declare-fun tp!1245361 () Bool)

(declare-fun tp!1245360 () Bool)

(assert (=> b!4105952 (= e!2548139 (and tp!1245361 tp!1245360))))

(assert (=> b!4105695 (= tp!1245124 e!2548139)))

(declare-fun b!4105951 () Bool)

(declare-fun tp!1245362 () Bool)

(assert (=> b!4105951 (= e!2548139 tp!1245362)))

(assert (= (and b!4105695 ((_ is ElementMatch!12085) (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105949))

(assert (= (and b!4105695 ((_ is Concat!19495) (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105950))

(assert (= (and b!4105695 ((_ is Star!12085) (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105951))

(assert (= (and b!4105695 ((_ is Union!12085) (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27)))))) b!4105952))

(declare-fun b!4105953 () Bool)

(declare-fun e!2548140 () Bool)

(assert (=> b!4105953 (= e!2548140 tp_is_empty!21137)))

(declare-fun b!4105954 () Bool)

(declare-fun tp!1245369 () Bool)

(declare-fun tp!1245368 () Bool)

(assert (=> b!4105954 (= e!2548140 (and tp!1245369 tp!1245368))))

(declare-fun b!4105956 () Bool)

(declare-fun tp!1245366 () Bool)

(declare-fun tp!1245365 () Bool)

(assert (=> b!4105956 (= e!2548140 (and tp!1245366 tp!1245365))))

(assert (=> b!4105660 (= tp!1245081 e!2548140)))

(declare-fun b!4105955 () Bool)

(declare-fun tp!1245367 () Bool)

(assert (=> b!4105955 (= e!2548140 tp!1245367)))

(assert (= (and b!4105660 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105953))

(assert (= (and b!4105660 ((_ is Concat!19495) (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105954))

(assert (= (and b!4105660 ((_ is Star!12085) (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105955))

(assert (= (and b!4105660 ((_ is Union!12085) (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105956))

(declare-fun b!4105957 () Bool)

(declare-fun e!2548141 () Bool)

(assert (=> b!4105957 (= e!2548141 tp_is_empty!21137)))

(declare-fun b!4105958 () Bool)

(declare-fun tp!1245374 () Bool)

(declare-fun tp!1245373 () Bool)

(assert (=> b!4105958 (= e!2548141 (and tp!1245374 tp!1245373))))

(declare-fun b!4105960 () Bool)

(declare-fun tp!1245371 () Bool)

(declare-fun tp!1245370 () Bool)

(assert (=> b!4105960 (= e!2548141 (and tp!1245371 tp!1245370))))

(assert (=> b!4105660 (= tp!1245080 e!2548141)))

(declare-fun b!4105959 () Bool)

(declare-fun tp!1245372 () Bool)

(assert (=> b!4105959 (= e!2548141 tp!1245372)))

(assert (= (and b!4105660 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105957))

(assert (= (and b!4105660 ((_ is Concat!19495) (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105958))

(assert (= (and b!4105660 ((_ is Star!12085) (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105959))

(assert (= (and b!4105660 ((_ is Union!12085) (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27)))))) b!4105960))

(declare-fun b!4105961 () Bool)

(declare-fun e!2548142 () Bool)

(assert (=> b!4105961 (= e!2548142 tp_is_empty!21137)))

(declare-fun b!4105962 () Bool)

(declare-fun tp!1245379 () Bool)

(declare-fun tp!1245378 () Bool)

(assert (=> b!4105962 (= e!2548142 (and tp!1245379 tp!1245378))))

(declare-fun b!4105964 () Bool)

(declare-fun tp!1245376 () Bool)

(declare-fun tp!1245375 () Bool)

(assert (=> b!4105964 (= e!2548142 (and tp!1245376 tp!1245375))))

(assert (=> b!4105669 (= tp!1245089 e!2548142)))

(declare-fun b!4105963 () Bool)

(declare-fun tp!1245377 () Bool)

(assert (=> b!4105963 (= e!2548142 tp!1245377)))

(assert (= (and b!4105669 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24682 (regex!7180 rHead!24))))) b!4105961))

(assert (= (and b!4105669 ((_ is Concat!19495) (reg!12414 (regTwo!24682 (regex!7180 rHead!24))))) b!4105962))

(assert (= (and b!4105669 ((_ is Star!12085) (reg!12414 (regTwo!24682 (regex!7180 rHead!24))))) b!4105963))

(assert (= (and b!4105669 ((_ is Union!12085) (reg!12414 (regTwo!24682 (regex!7180 rHead!24))))) b!4105964))

(declare-fun b!4105967 () Bool)

(declare-fun e!2548147 () Bool)

(assert (=> b!4105967 (= e!2548147 tp_is_empty!21137)))

(declare-fun b!4105968 () Bool)

(declare-fun tp!1245384 () Bool)

(declare-fun tp!1245383 () Bool)

(assert (=> b!4105968 (= e!2548147 (and tp!1245384 tp!1245383))))

(declare-fun b!4105972 () Bool)

(declare-fun tp!1245381 () Bool)

(declare-fun tp!1245380 () Bool)

(assert (=> b!4105972 (= e!2548147 (and tp!1245381 tp!1245380))))

(assert (=> b!4105678 (= tp!1245098 e!2548147)))

(declare-fun b!4105970 () Bool)

(declare-fun tp!1245382 () Bool)

(assert (=> b!4105970 (= e!2548147 tp!1245382)))

(assert (= (and b!4105678 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24683 (regex!7180 rHead!24))))) b!4105967))

(assert (= (and b!4105678 ((_ is Concat!19495) (regOne!24683 (regOne!24683 (regex!7180 rHead!24))))) b!4105968))

(assert (= (and b!4105678 ((_ is Star!12085) (regOne!24683 (regOne!24683 (regex!7180 rHead!24))))) b!4105970))

(assert (= (and b!4105678 ((_ is Union!12085) (regOne!24683 (regOne!24683 (regex!7180 rHead!24))))) b!4105972))

(declare-fun b!4105973 () Bool)

(declare-fun e!2548148 () Bool)

(assert (=> b!4105973 (= e!2548148 tp_is_empty!21137)))

(declare-fun b!4105974 () Bool)

(declare-fun tp!1245389 () Bool)

(declare-fun tp!1245388 () Bool)

(assert (=> b!4105974 (= e!2548148 (and tp!1245389 tp!1245388))))

(declare-fun b!4105976 () Bool)

(declare-fun tp!1245386 () Bool)

(declare-fun tp!1245385 () Bool)

(assert (=> b!4105976 (= e!2548148 (and tp!1245386 tp!1245385))))

(assert (=> b!4105678 (= tp!1245097 e!2548148)))

(declare-fun b!4105975 () Bool)

(declare-fun tp!1245387 () Bool)

(assert (=> b!4105975 (= e!2548148 tp!1245387)))

(assert (= (and b!4105678 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24683 (regex!7180 rHead!24))))) b!4105973))

(assert (= (and b!4105678 ((_ is Concat!19495) (regTwo!24683 (regOne!24683 (regex!7180 rHead!24))))) b!4105974))

(assert (= (and b!4105678 ((_ is Star!12085) (regTwo!24683 (regOne!24683 (regex!7180 rHead!24))))) b!4105975))

(assert (= (and b!4105678 ((_ is Union!12085) (regTwo!24683 (regOne!24683 (regex!7180 rHead!24))))) b!4105976))

(declare-fun b!4105977 () Bool)

(declare-fun e!2548149 () Bool)

(assert (=> b!4105977 (= e!2548149 tp_is_empty!21137)))

(declare-fun b!4105978 () Bool)

(declare-fun tp!1245394 () Bool)

(declare-fun tp!1245393 () Bool)

(assert (=> b!4105978 (= e!2548149 (and tp!1245394 tp!1245393))))

(declare-fun b!4105980 () Bool)

(declare-fun tp!1245391 () Bool)

(declare-fun tp!1245390 () Bool)

(assert (=> b!4105980 (= e!2548149 (and tp!1245391 tp!1245390))))

(assert (=> b!4105668 (= tp!1245091 e!2548149)))

(declare-fun b!4105979 () Bool)

(declare-fun tp!1245392 () Bool)

(assert (=> b!4105979 (= e!2548149 tp!1245392)))

(assert (= (and b!4105668 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24682 (regex!7180 rHead!24))))) b!4105977))

(assert (= (and b!4105668 ((_ is Concat!19495) (regOne!24682 (regTwo!24682 (regex!7180 rHead!24))))) b!4105978))

(assert (= (and b!4105668 ((_ is Star!12085) (regOne!24682 (regTwo!24682 (regex!7180 rHead!24))))) b!4105979))

(assert (= (and b!4105668 ((_ is Union!12085) (regOne!24682 (regTwo!24682 (regex!7180 rHead!24))))) b!4105980))

(declare-fun b!4105981 () Bool)

(declare-fun e!2548150 () Bool)

(assert (=> b!4105981 (= e!2548150 tp_is_empty!21137)))

(declare-fun b!4105982 () Bool)

(declare-fun tp!1245399 () Bool)

(declare-fun tp!1245398 () Bool)

(assert (=> b!4105982 (= e!2548150 (and tp!1245399 tp!1245398))))

(declare-fun b!4105984 () Bool)

(declare-fun tp!1245396 () Bool)

(declare-fun tp!1245395 () Bool)

(assert (=> b!4105984 (= e!2548150 (and tp!1245396 tp!1245395))))

(assert (=> b!4105668 (= tp!1245090 e!2548150)))

(declare-fun b!4105983 () Bool)

(declare-fun tp!1245397 () Bool)

(assert (=> b!4105983 (= e!2548150 tp!1245397)))

(assert (= (and b!4105668 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24))))) b!4105981))

(assert (= (and b!4105668 ((_ is Concat!19495) (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24))))) b!4105982))

(assert (= (and b!4105668 ((_ is Star!12085) (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24))))) b!4105983))

(assert (= (and b!4105668 ((_ is Union!12085) (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24))))) b!4105984))

(declare-fun b!4105985 () Bool)

(declare-fun e!2548151 () Bool)

(assert (=> b!4105985 (= e!2548151 tp_is_empty!21137)))

(declare-fun b!4105986 () Bool)

(declare-fun tp!1245404 () Bool)

(declare-fun tp!1245403 () Bool)

(assert (=> b!4105986 (= e!2548151 (and tp!1245404 tp!1245403))))

(declare-fun b!4105988 () Bool)

(declare-fun tp!1245401 () Bool)

(declare-fun tp!1245400 () Bool)

(assert (=> b!4105988 (= e!2548151 (and tp!1245401 tp!1245400))))

(assert (=> b!4105677 (= tp!1245099 e!2548151)))

(declare-fun b!4105987 () Bool)

(declare-fun tp!1245402 () Bool)

(assert (=> b!4105987 (= e!2548151 tp!1245402)))

(assert (= (and b!4105677 ((_ is ElementMatch!12085) (reg!12414 (regOne!24683 (regex!7180 rHead!24))))) b!4105985))

(assert (= (and b!4105677 ((_ is Concat!19495) (reg!12414 (regOne!24683 (regex!7180 rHead!24))))) b!4105986))

(assert (= (and b!4105677 ((_ is Star!12085) (reg!12414 (regOne!24683 (regex!7180 rHead!24))))) b!4105987))

(assert (= (and b!4105677 ((_ is Union!12085) (reg!12414 (regOne!24683 (regex!7180 rHead!24))))) b!4105988))

(declare-fun b!4105989 () Bool)

(declare-fun e!2548152 () Bool)

(assert (=> b!4105989 (= e!2548152 tp_is_empty!21137)))

(declare-fun b!4105990 () Bool)

(declare-fun tp!1245409 () Bool)

(declare-fun tp!1245408 () Bool)

(assert (=> b!4105990 (= e!2548152 (and tp!1245409 tp!1245408))))

(declare-fun b!4105992 () Bool)

(declare-fun tp!1245406 () Bool)

(declare-fun tp!1245405 () Bool)

(assert (=> b!4105992 (= e!2548152 (and tp!1245406 tp!1245405))))

(assert (=> b!4105686 (= tp!1245108 e!2548152)))

(declare-fun b!4105991 () Bool)

(declare-fun tp!1245407 () Bool)

(assert (=> b!4105991 (= e!2548152 tp!1245407)))

(assert (= (and b!4105686 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105989))

(assert (= (and b!4105686 ((_ is Concat!19495) (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105990))

(assert (= (and b!4105686 ((_ is Star!12085) (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105991))

(assert (= (and b!4105686 ((_ is Union!12085) (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105992))

(declare-fun b!4105993 () Bool)

(declare-fun e!2548153 () Bool)

(assert (=> b!4105993 (= e!2548153 tp_is_empty!21137)))

(declare-fun b!4105994 () Bool)

(declare-fun tp!1245414 () Bool)

(declare-fun tp!1245413 () Bool)

(assert (=> b!4105994 (= e!2548153 (and tp!1245414 tp!1245413))))

(declare-fun b!4105996 () Bool)

(declare-fun tp!1245411 () Bool)

(declare-fun tp!1245410 () Bool)

(assert (=> b!4105996 (= e!2548153 (and tp!1245411 tp!1245410))))

(assert (=> b!4105686 (= tp!1245107 e!2548153)))

(declare-fun b!4105995 () Bool)

(declare-fun tp!1245412 () Bool)

(assert (=> b!4105995 (= e!2548153 tp!1245412)))

(assert (= (and b!4105686 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105993))

(assert (= (and b!4105686 ((_ is Concat!19495) (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105994))

(assert (= (and b!4105686 ((_ is Star!12085) (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105995))

(assert (= (and b!4105686 ((_ is Union!12085) (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27)))))) b!4105996))

(declare-fun b_lambda!120563 () Bool)

(assert (= b_lambda!120559 (or d!1218649 b_lambda!120563)))

(declare-fun bs!594103 () Bool)

(declare-fun d!1218795 () Bool)

(assert (= bs!594103 (and d!1218795 d!1218649)))

(assert (=> bs!594103 (= (dynLambda!18908 lambda!128337 (h!49618 lt!1467577)) (ruleValid!3050 thiss!26455 (h!49618 lt!1467577)))))

(assert (=> bs!594103 m!4710665))

(assert (=> b!4105723 d!1218795))

(declare-fun b_lambda!120565 () Bool)

(assert (= b_lambda!120561 (or d!1218665 b_lambda!120565)))

(declare-fun bs!594104 () Bool)

(declare-fun d!1218797 () Bool)

(assert (= bs!594104 (and d!1218797 d!1218665)))

(assert (=> bs!594104 (= (dynLambda!18908 lambda!128344 (h!49618 lt!1467580)) (ruleValid!3050 thiss!26455 (h!49618 lt!1467580)))))

(assert (=> bs!594104 m!4710701))

(assert (=> b!4105735 d!1218797))

(check-sat (not b!4105771) (not b!4105860) (not d!1218725) (not b!4105887) (not b!4105955) (not b!4105703) (not b!4105923) (not b!4105840) (not b!4105847) (not d!1218715) (not b!4105854) (not b!4105809) (not b!4105959) (not b!4105960) (not b!4105994) (not b!4105865) (not b!4105983) (not b!4105868) (not b!4105725) (not b!4105831) (not b!4105861) (not b!4105823) (not b!4105974) (not b!4105800) (not b!4105870) (not b!4105793) (not b!4105777) (not b!4105972) (not b!4105827) (not b!4105919) (not b!4105904) (not b!4105958) (not b!4105728) (not b!4105883) (not b!4105936) (not b!4105835) b_and!317121 (not b!4105785) (not b!4105846) (not b!4105886) (not b!4105986) (not b!4105801) (not b!4105798) (not b!4105848) (not b!4105984) (not b!4105996) tp_is_empty!21137 (not b!4105814) (not bs!594103) (not b!4105828) (not b!4105786) (not d!1218735) (not b!4105842) (not b!4105757) (not d!1218737) (not b!4105894) (not b!4105759) (not d!1218727) (not b!4105852) (not d!1218767) (not b!4105962) (not b!4105968) (not b!4105910) (not b_next!116011) (not b!4105930) (not b!4105738) b_and!317131 (not b!4105978) (not b!4105740) (not b!4105853) (not b!4105718) b_and!317119 (not b!4105890) (not b!4105915) (not b!4105900) (not b!4105987) b_and!317133 (not b!4105926) (not b_next!116021) (not b!4105879) (not b!4105792) (not b!4105878) (not b!4105780) (not b!4105836) (not b!4105939) (not b!4105758) (not b!4105744) (not b!4105726) (not b!4105902) (not b!4105884) (not b!4105806) (not b!4105888) (not b!4105839) (not b!4105712) (not b!4105733) (not b!4105903) (not b!4105992) (not b!4105896) (not b!4105862) (not b!4105869) (not b!4105991) (not b!4105710) (not b!4105824) (not b!4105732) (not b!4105819) (not b_lambda!120563) (not b!4105940) (not b!4105822) (not b!4105776) (not b!4105790) (not b!4105982) (not d!1218781) (not b!4105815) (not b!4105818) (not b!4105891) (not b!4105963) (not b!4105899) (not b!4105737) (not b_next!116033) (not b_next!116015) (not b!4105729) (not d!1218747) (not b!4105702) (not b!4105895) (not b!4105995) b_and!317143 (not b!4105951) (not b!4105942) (not b!4105872) (not b!4105769) (not b!4105858) (not b!4105980) (not b!4105781) (not b!4105704) (not d!1218723) (not b!4105988) (not b!4105931) (not b_next!116031) (not b!4105874) (not b!4105763) (not b!4105838) (not b!4105748) (not b_next!116013) (not b!4105834) (not b!4105922) (not b!4105730) (not bs!594104) (not b!4105864) (not d!1218743) (not b!4105736) (not b!4105920) (not b!4105810) (not b!4105934) (not b!4105782) b_and!317141 b_and!317145 (not b!4105912) (not b!4105753) (not b!4105916) (not b!4105964) b_and!317123 (not b!4105826) (not b!4105805) (not b!4105950) (not b!4105802) (not b!4105952) (not b!4105954) (not b!4105918) (not d!1218779) (not b!4105882) b_and!317125 (not b!4105843) (not b!4105956) (not b!4105938) (not b!4105948) (not b!4105856) (not b_next!116029) (not b!4105717) (not d!1218753) (not b!4105898) (not b!4105832) (not b!4105935) (not b!4105975) (not b!4105990) (not b!4105788) (not b!4105907) (not b!4105820) (not b!4105796) (not b!4105970) (not b!4105770) (not b!4105927) (not b!4105976) (not b!4105761) (not b!4105947) (not b!4105797) (not b!4105866) (not b!4105766) (not b!4105739) (not b!4105789) (not b!4105908) (not b!4105946) (not b!4105808) (not b!4105844) (not b!4105734) (not b!4105979) (not b!4105762) (not b!4105944) b_and!317139 (not b!4105794) (not d!1218749) (not d!1218717) (not b!4105830) (not b_lambda!120565) (not b!4105804) (not b!4105924) (not b!4105906) (not b!4105755) (not b!4105857) (not b!4105880) (not b!4105943) (not b!4105932) (not b_next!116009) (not b_next!116023) (not b!4105928) (not b!4105873) (not b!4105816) (not b!4105784) (not b!4105724) (not b!4105911) (not b!4105892) (not d!1218769) (not b!4105749) (not b_next!116035) (not b!4105765) (not b!4105914) (not b!4105767))
(check-sat b_and!317121 (not b_next!116021) (not b_next!116031) (not b_next!116013) b_and!317123 b_and!317125 (not b_next!116029) b_and!317139 (not b_next!116035) (not b_next!116011) b_and!317131 b_and!317119 b_and!317133 (not b_next!116033) (not b_next!116015) b_and!317143 b_and!317145 b_and!317141 (not b_next!116009) (not b_next!116023))
(get-model)

(assert (=> d!1218735 d!1218731))

(declare-fun d!1218837 () Bool)

(declare-fun lt!1467642 () Bool)

(assert (=> d!1218837 (= lt!1467642 (select (content!6810 (Cons!44199 (tag!8040 (h!49618 lt!1467580)) Nil!44199)) (tag!8040 (h!49618 (t!339979 lt!1467580)))))))

(declare-fun e!2548245 () Bool)

(assert (=> d!1218837 (= lt!1467642 e!2548245)))

(declare-fun res!1678504 () Bool)

(assert (=> d!1218837 (=> (not res!1678504) (not e!2548245))))

(assert (=> d!1218837 (= res!1678504 ((_ is Cons!44199) (Cons!44199 (tag!8040 (h!49618 lt!1467580)) Nil!44199)))))

(assert (=> d!1218837 (= (contains!8860 (Cons!44199 (tag!8040 (h!49618 lt!1467580)) Nil!44199) (tag!8040 (h!49618 (t!339979 lt!1467580)))) lt!1467642)))

(declare-fun b!4106254 () Bool)

(declare-fun e!2548244 () Bool)

(assert (=> b!4106254 (= e!2548245 e!2548244)))

(declare-fun res!1678505 () Bool)

(assert (=> b!4106254 (=> res!1678505 e!2548244)))

(assert (=> b!4106254 (= res!1678505 (= (h!49619 (Cons!44199 (tag!8040 (h!49618 lt!1467580)) Nil!44199)) (tag!8040 (h!49618 (t!339979 lt!1467580)))))))

(declare-fun b!4106255 () Bool)

(assert (=> b!4106255 (= e!2548244 (contains!8860 (t!339980 (Cons!44199 (tag!8040 (h!49618 lt!1467580)) Nil!44199)) (tag!8040 (h!49618 (t!339979 lt!1467580)))))))

(assert (= (and d!1218837 res!1678504) b!4106254))

(assert (= (and b!4106254 (not res!1678505)) b!4106255))

(declare-fun m!4710833 () Bool)

(assert (=> d!1218837 m!4710833))

(declare-fun m!4710835 () Bool)

(assert (=> d!1218837 m!4710835))

(declare-fun m!4710837 () Bool)

(assert (=> b!4106255 m!4710837))

(assert (=> b!4105739 d!1218837))

(declare-fun d!1218839 () Bool)

(assert (not d!1218839))

(assert (=> b!4105748 d!1218839))

(declare-fun d!1218841 () Bool)

(assert (not d!1218841))

(assert (=> b!4105755 d!1218841))

(declare-fun d!1218843 () Bool)

(declare-fun lt!1467643 () Bool)

(assert (=> d!1218843 (= lt!1467643 (select (content!6810 (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199))) (tag!8040 (h!49618 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))))))))

(declare-fun e!2548247 () Bool)

(assert (=> d!1218843 (= lt!1467643 e!2548247)))

(declare-fun res!1678506 () Bool)

(assert (=> d!1218843 (=> (not res!1678506) (not e!2548247))))

(assert (=> d!1218843 (= res!1678506 ((_ is Cons!44199) (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199))))))

(assert (=> d!1218843 (= (contains!8860 (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)) (tag!8040 (h!49618 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))))) lt!1467643)))

(declare-fun b!4106256 () Bool)

(declare-fun e!2548246 () Bool)

(assert (=> b!4106256 (= e!2548247 e!2548246)))

(declare-fun res!1678507 () Bool)

(assert (=> b!4106256 (=> res!1678507 e!2548246)))

(assert (=> b!4106256 (= res!1678507 (= (h!49619 (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199))) (tag!8040 (h!49618 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))))))))

(declare-fun b!4106257 () Bool)

(assert (=> b!4106257 (= e!2548246 (contains!8860 (t!339980 (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199))) (tag!8040 (h!49618 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))))))))

(assert (= (and d!1218843 res!1678506) b!4106256))

(assert (= (and b!4106256 (not res!1678507)) b!4106257))

(declare-fun m!4710839 () Bool)

(assert (=> d!1218843 m!4710839))

(declare-fun m!4710841 () Bool)

(assert (=> d!1218843 m!4710841))

(declare-fun m!4710843 () Bool)

(assert (=> b!4106257 m!4710843))

(assert (=> b!4105703 d!1218843))

(declare-fun bs!594117 () Bool)

(declare-fun d!1218845 () Bool)

(assert (= bs!594117 (and d!1218845 d!1218673)))

(declare-fun lambda!128368 () Int)

(assert (=> bs!594117 (= (and (= (toChars!9659 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) (toChars!9659 (transformation!7180 (h!49618 rTail!27)))) (= (toValue!9800 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) (toValue!9800 (transformation!7180 (h!49618 rTail!27))))) (= lambda!128368 lambda!128348))))

(declare-fun bs!594118 () Bool)

(assert (= bs!594118 (and d!1218845 d!1218691)))

(assert (=> bs!594118 (= (and (= (toChars!9659 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) (toChars!9659 (transformation!7180 rHead!24))) (= (toValue!9800 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) (toValue!9800 (transformation!7180 rHead!24)))) (= lambda!128368 lambda!128353))))

(declare-fun bs!594119 () Bool)

(assert (= bs!594119 (and d!1218845 d!1218769)))

(assert (=> bs!594119 (= (and (= (toChars!9659 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) (toChars!9659 (transformation!7180 (h!49618 (t!339979 rTail!27))))) (= (toValue!9800 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) (toValue!9800 (transformation!7180 (h!49618 (t!339979 rTail!27)))))) (= lambda!128368 lambda!128362))))

(assert (=> d!1218845 true))

(assert (=> d!1218845 (< (dynLambda!18902 order!23257 (toChars!9659 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27)))))) (dynLambda!18903 order!23259 lambda!128368))))

(assert (=> d!1218845 true))

(assert (=> d!1218845 (< (dynLambda!18900 order!23247 (toValue!9800 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27)))))) (dynLambda!18903 order!23259 lambda!128368))))

(assert (=> d!1218845 (= (semiInverseModEq!3091 (toChars!9659 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) (toValue!9800 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27)))))) (Forall!1530 lambda!128368))))

(declare-fun bs!594120 () Bool)

(assert (= bs!594120 d!1218845))

(declare-fun m!4710845 () Bool)

(assert (=> bs!594120 m!4710845))

(assert (=> d!1218715 d!1218845))

(declare-fun d!1218847 () Bool)

(declare-fun res!1678508 () Bool)

(declare-fun e!2548248 () Bool)

(assert (=> d!1218847 (=> res!1678508 e!2548248)))

(assert (=> d!1218847 (= res!1678508 ((_ is Nil!44198) (t!339979 lt!1467577)))))

(assert (=> d!1218847 (= (forall!8431 (t!339979 lt!1467577) lambda!128337) e!2548248)))

(declare-fun b!4106258 () Bool)

(declare-fun e!2548249 () Bool)

(assert (=> b!4106258 (= e!2548248 e!2548249)))

(declare-fun res!1678509 () Bool)

(assert (=> b!4106258 (=> (not res!1678509) (not e!2548249))))

(assert (=> b!4106258 (= res!1678509 (dynLambda!18908 lambda!128337 (h!49618 (t!339979 lt!1467577))))))

(declare-fun b!4106259 () Bool)

(assert (=> b!4106259 (= e!2548249 (forall!8431 (t!339979 (t!339979 lt!1467577)) lambda!128337))))

(assert (= (and d!1218847 (not res!1678508)) b!4106258))

(assert (= (and b!4106258 res!1678509) b!4106259))

(declare-fun b_lambda!120575 () Bool)

(assert (=> (not b_lambda!120575) (not b!4106258)))

(declare-fun m!4710847 () Bool)

(assert (=> b!4106258 m!4710847))

(declare-fun m!4710849 () Bool)

(assert (=> b!4106259 m!4710849))

(assert (=> b!4105724 d!1218847))

(declare-fun d!1218849 () Bool)

(declare-fun res!1678514 () Bool)

(declare-fun e!2548252 () Bool)

(assert (=> d!1218849 (=> (not res!1678514) (not e!2548252))))

(declare-fun validRegex!5456 (Regex!12085) Bool)

(assert (=> d!1218849 (= res!1678514 (validRegex!5456 (regex!7180 (h!49618 lt!1467580))))))

(assert (=> d!1218849 (= (ruleValid!3050 thiss!26455 (h!49618 lt!1467580)) e!2548252)))

(declare-fun b!4106264 () Bool)

(declare-fun res!1678515 () Bool)

(assert (=> b!4106264 (=> (not res!1678515) (not e!2548252))))

(declare-fun nullable!4256 (Regex!12085) Bool)

(assert (=> b!4106264 (= res!1678515 (not (nullable!4256 (regex!7180 (h!49618 lt!1467580)))))))

(declare-fun b!4106265 () Bool)

(assert (=> b!4106265 (= e!2548252 (not (= (tag!8040 (h!49618 lt!1467580)) (String!50801 ""))))))

(assert (= (and d!1218849 res!1678514) b!4106264))

(assert (= (and b!4106264 res!1678515) b!4106265))

(declare-fun m!4710851 () Bool)

(assert (=> d!1218849 m!4710851))

(declare-fun m!4710853 () Bool)

(assert (=> b!4106264 m!4710853))

(assert (=> bs!594104 d!1218849))

(declare-fun d!1218851 () Bool)

(assert (=> d!1218851 true))

(assert (=> d!1218851 true))

(declare-fun res!1678518 () Bool)

(assert (=> d!1218851 (= (choose!25111 lambda!128353) res!1678518)))

(assert (=> d!1218725 d!1218851))

(declare-fun d!1218853 () Bool)

(declare-fun res!1678519 () Bool)

(declare-fun e!2548253 () Bool)

(assert (=> d!1218853 (=> (not res!1678519) (not e!2548253))))

(assert (=> d!1218853 (= res!1678519 (validRegex!5456 (regex!7180 (h!49618 lt!1467577))))))

(assert (=> d!1218853 (= (ruleValid!3050 thiss!26455 (h!49618 lt!1467577)) e!2548253)))

(declare-fun b!4106266 () Bool)

(declare-fun res!1678520 () Bool)

(assert (=> b!4106266 (=> (not res!1678520) (not e!2548253))))

(assert (=> b!4106266 (= res!1678520 (not (nullable!4256 (regex!7180 (h!49618 lt!1467577)))))))

(declare-fun b!4106267 () Bool)

(assert (=> b!4106267 (= e!2548253 (not (= (tag!8040 (h!49618 lt!1467577)) (String!50801 ""))))))

(assert (= (and d!1218853 res!1678519) b!4106266))

(assert (= (and b!4106266 res!1678520) b!4106267))

(declare-fun m!4710855 () Bool)

(assert (=> d!1218853 m!4710855))

(declare-fun m!4710857 () Bool)

(assert (=> b!4106266 m!4710857))

(assert (=> bs!594103 d!1218853))

(declare-fun d!1218855 () Bool)

(declare-fun lt!1467644 () Bool)

(assert (=> d!1218855 (= lt!1467644 (select (content!6810 (t!339980 (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199))) (tag!8040 (h!49618 (t!339979 lt!1467577)))))))

(declare-fun e!2548255 () Bool)

(assert (=> d!1218855 (= lt!1467644 e!2548255)))

(declare-fun res!1678521 () Bool)

(assert (=> d!1218855 (=> (not res!1678521) (not e!2548255))))

(assert (=> d!1218855 (= res!1678521 ((_ is Cons!44199) (t!339980 (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199))))))

(assert (=> d!1218855 (= (contains!8860 (t!339980 (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)) (tag!8040 (h!49618 (t!339979 lt!1467577)))) lt!1467644)))

(declare-fun b!4106268 () Bool)

(declare-fun e!2548254 () Bool)

(assert (=> b!4106268 (= e!2548255 e!2548254)))

(declare-fun res!1678522 () Bool)

(assert (=> b!4106268 (=> res!1678522 e!2548254)))

(assert (=> b!4106268 (= res!1678522 (= (h!49619 (t!339980 (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199))) (tag!8040 (h!49618 (t!339979 lt!1467577)))))))

(declare-fun b!4106269 () Bool)

(assert (=> b!4106269 (= e!2548254 (contains!8860 (t!339980 (t!339980 (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199))) (tag!8040 (h!49618 (t!339979 lt!1467577)))))))

(assert (= (and d!1218855 res!1678521) b!4106268))

(assert (= (and b!4106268 (not res!1678522)) b!4106269))

(declare-fun m!4710859 () Bool)

(assert (=> d!1218855 m!4710859))

(declare-fun m!4710861 () Bool)

(assert (=> d!1218855 m!4710861))

(declare-fun m!4710863 () Bool)

(assert (=> b!4106269 m!4710863))

(assert (=> b!4105732 d!1218855))

(assert (=> d!1218767 d!1218731))

(declare-fun d!1218857 () Bool)

(declare-fun c!706686 () Bool)

(assert (=> d!1218857 (= c!706686 ((_ is Nil!44198) (t!339979 lt!1467580)))))

(declare-fun e!2548256 () (InoxSet Rule!14160))

(assert (=> d!1218857 (= (content!6813 (t!339979 lt!1467580)) e!2548256)))

(declare-fun b!4106270 () Bool)

(assert (=> b!4106270 (= e!2548256 ((as const (Array Rule!14160 Bool)) false))))

(declare-fun b!4106271 () Bool)

(assert (=> b!4106271 (= e!2548256 ((_ map or) (store ((as const (Array Rule!14160 Bool)) false) (h!49618 (t!339979 lt!1467580)) true) (content!6813 (t!339979 (t!339979 lt!1467580)))))))

(assert (= (and d!1218857 c!706686) b!4106270))

(assert (= (and d!1218857 (not c!706686)) b!4106271))

(declare-fun m!4710865 () Bool)

(assert (=> b!4106271 m!4710865))

(declare-fun m!4710867 () Bool)

(assert (=> b!4106271 m!4710867))

(assert (=> d!1218779 d!1218857))

(declare-fun d!1218859 () Bool)

(declare-fun c!706689 () Bool)

(assert (=> d!1218859 (= c!706689 ((_ is Nil!44199) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)))))

(declare-fun e!2548259 () (InoxSet String!50800))

(assert (=> d!1218859 (= (content!6810 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)) e!2548259)))

(declare-fun b!4106276 () Bool)

(assert (=> b!4106276 (= e!2548259 ((as const (Array String!50800 Bool)) false))))

(declare-fun b!4106277 () Bool)

(assert (=> b!4106277 (= e!2548259 ((_ map or) (store ((as const (Array String!50800 Bool)) false) (h!49619 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)) true) (content!6810 (t!339980 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)))))))

(assert (= (and d!1218859 c!706689) b!4106276))

(assert (= (and d!1218859 (not c!706689)) b!4106277))

(declare-fun m!4710869 () Bool)

(assert (=> b!4106277 m!4710869))

(declare-fun m!4710871 () Bool)

(assert (=> b!4106277 m!4710871))

(assert (=> d!1218723 d!1218859))

(declare-fun d!1218861 () Bool)

(declare-fun res!1678523 () Bool)

(declare-fun e!2548260 () Bool)

(assert (=> d!1218861 (=> res!1678523 e!2548260)))

(assert (=> d!1218861 (= res!1678523 ((_ is Nil!44198) (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27)))))))))

(assert (=> d!1218861 (= (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27)))))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))) Nil!44199))) e!2548260)))

(declare-fun b!4106278 () Bool)

(declare-fun e!2548261 () Bool)

(assert (=> b!4106278 (= e!2548260 e!2548261)))

(declare-fun res!1678524 () Bool)

(assert (=> b!4106278 (=> (not res!1678524) (not e!2548261))))

(assert (=> b!4106278 (= res!1678524 (not (contains!8860 (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27)))))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))) Nil!44199)) (tag!8040 (h!49618 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))))))))))

(declare-fun b!4106279 () Bool)

(assert (=> b!4106279 (= e!2548261 (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27)))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27)))))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))) Nil!44199)))))))

(assert (= (and d!1218861 (not res!1678523)) b!4106278))

(assert (= (and b!4106278 res!1678524) b!4106279))

(declare-fun m!4710873 () Bool)

(assert (=> b!4106278 m!4710873))

(declare-fun m!4710875 () Bool)

(assert (=> b!4106279 m!4710875))

(assert (=> b!4105726 d!1218861))

(declare-fun d!1218863 () Bool)

(declare-fun lt!1467645 () Bool)

(assert (=> d!1218863 (= lt!1467645 (select (content!6810 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))) Nil!44199)) (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))))))))

(declare-fun e!2548263 () Bool)

(assert (=> d!1218863 (= lt!1467645 e!2548263)))

(declare-fun res!1678525 () Bool)

(assert (=> d!1218863 (=> (not res!1678525) (not e!2548263))))

(assert (=> d!1218863 (= res!1678525 ((_ is Cons!44199) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))) Nil!44199)))))

(assert (=> d!1218863 (= (contains!8860 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))) Nil!44199) (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))))) lt!1467645)))

(declare-fun b!4106280 () Bool)

(declare-fun e!2548262 () Bool)

(assert (=> b!4106280 (= e!2548263 e!2548262)))

(declare-fun res!1678526 () Bool)

(assert (=> b!4106280 (=> res!1678526 e!2548262)))

(assert (=> b!4106280 (= res!1678526 (= (h!49619 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))) Nil!44199)) (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))))))))

(declare-fun b!4106281 () Bool)

(assert (=> b!4106281 (= e!2548262 (contains!8860 (t!339980 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))) Nil!44199)) (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) (Cons!44198 rHead!24 (t!339979 rTail!27))))))))))

(assert (= (and d!1218863 res!1678525) b!4106280))

(assert (= (and b!4106280 (not res!1678526)) b!4106281))

(declare-fun m!4710877 () Bool)

(assert (=> d!1218863 m!4710877))

(declare-fun m!4710879 () Bool)

(assert (=> d!1218863 m!4710879))

(declare-fun m!4710881 () Bool)

(assert (=> b!4106281 m!4710881))

(assert (=> b!4105725 d!1218863))

(declare-fun d!1218865 () Bool)

(assert (=> d!1218865 true))

(assert (=> d!1218865 true))

(declare-fun res!1678527 () Bool)

(assert (=> d!1218865 (= (choose!25111 lambda!128348) res!1678527)))

(assert (=> d!1218737 d!1218865))

(declare-fun d!1218867 () Bool)

(assert (=> d!1218867 (= (Forall2!1129 lambda!128359) (choose!25110 lambda!128359))))

(declare-fun bs!594121 () Bool)

(assert (= bs!594121 d!1218867))

(declare-fun m!4710883 () Bool)

(assert (=> bs!594121 m!4710883))

(assert (=> d!1218749 d!1218867))

(declare-fun d!1218869 () Bool)

(declare-fun res!1678528 () Bool)

(declare-fun e!2548264 () Bool)

(assert (=> d!1218869 (=> res!1678528 e!2548264)))

(assert (=> d!1218869 (= res!1678528 ((_ is Nil!44198) (t!339979 lt!1467580)))))

(assert (=> d!1218869 (= (forall!8431 (t!339979 lt!1467580) lambda!128344) e!2548264)))

(declare-fun b!4106282 () Bool)

(declare-fun e!2548265 () Bool)

(assert (=> b!4106282 (= e!2548264 e!2548265)))

(declare-fun res!1678529 () Bool)

(assert (=> b!4106282 (=> (not res!1678529) (not e!2548265))))

(assert (=> b!4106282 (= res!1678529 (dynLambda!18908 lambda!128344 (h!49618 (t!339979 lt!1467580))))))

(declare-fun b!4106283 () Bool)

(assert (=> b!4106283 (= e!2548265 (forall!8431 (t!339979 (t!339979 lt!1467580)) lambda!128344))))

(assert (= (and d!1218869 (not res!1678528)) b!4106282))

(assert (= (and b!4106282 res!1678529) b!4106283))

(declare-fun b_lambda!120577 () Bool)

(assert (=> (not b_lambda!120577) (not b!4106282)))

(declare-fun m!4710885 () Bool)

(assert (=> b!4106282 m!4710885))

(declare-fun m!4710887 () Bool)

(assert (=> b!4106283 m!4710887))

(assert (=> b!4105736 d!1218869))

(assert (=> d!1218781 d!1218731))

(declare-fun d!1218871 () Bool)

(declare-fun c!706690 () Bool)

(assert (=> d!1218871 (= c!706690 ((_ is Nil!44199) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)))))

(declare-fun e!2548266 () (InoxSet String!50800))

(assert (=> d!1218871 (= (content!6810 (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)) e!2548266)))

(declare-fun b!4106284 () Bool)

(assert (=> b!4106284 (= e!2548266 ((as const (Array String!50800 Bool)) false))))

(declare-fun b!4106285 () Bool)

(assert (=> b!4106285 (= e!2548266 ((_ map or) (store ((as const (Array String!50800 Bool)) false) (h!49619 (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)) true) (content!6810 (t!339980 (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)))))))

(assert (= (and d!1218871 c!706690) b!4106284))

(assert (= (and d!1218871 (not c!706690)) b!4106285))

(declare-fun m!4710889 () Bool)

(assert (=> b!4106285 m!4710889))

(assert (=> b!4106285 m!4710859))

(assert (=> d!1218743 d!1218871))

(declare-fun d!1218873 () Bool)

(declare-fun res!1678530 () Bool)

(declare-fun e!2548267 () Bool)

(assert (=> d!1218873 (=> res!1678530 e!2548267)))

(assert (=> d!1218873 (= res!1678530 ((_ is Nil!44198) lt!1467577))))

(assert (=> d!1218873 (= (forall!8431 lt!1467577 lambda!128358) e!2548267)))

(declare-fun b!4106286 () Bool)

(declare-fun e!2548268 () Bool)

(assert (=> b!4106286 (= e!2548267 e!2548268)))

(declare-fun res!1678531 () Bool)

(assert (=> b!4106286 (=> (not res!1678531) (not e!2548268))))

(assert (=> b!4106286 (= res!1678531 (dynLambda!18908 lambda!128358 (h!49618 lt!1467577)))))

(declare-fun b!4106287 () Bool)

(assert (=> b!4106287 (= e!2548268 (forall!8431 (t!339979 lt!1467577) lambda!128358))))

(assert (= (and d!1218873 (not res!1678530)) b!4106286))

(assert (= (and b!4106286 res!1678531) b!4106287))

(declare-fun b_lambda!120579 () Bool)

(assert (=> (not b_lambda!120579) (not b!4106286)))

(declare-fun m!4710891 () Bool)

(assert (=> b!4106286 m!4710891))

(declare-fun m!4710893 () Bool)

(assert (=> b!4106287 m!4710893))

(assert (=> d!1218727 d!1218873))

(declare-fun d!1218875 () Bool)

(assert (=> d!1218875 (= (Forall!1530 lambda!128362) (choose!25111 lambda!128362))))

(declare-fun bs!594122 () Bool)

(assert (= bs!594122 d!1218875))

(declare-fun m!4710895 () Bool)

(assert (=> bs!594122 m!4710895))

(assert (=> d!1218769 d!1218875))

(declare-fun bs!594123 () Bool)

(declare-fun d!1218877 () Bool)

(assert (= bs!594123 (and d!1218877 d!1218649)))

(declare-fun lambda!128369 () Int)

(assert (=> bs!594123 (= lambda!128369 lambda!128337)))

(declare-fun bs!594124 () Bool)

(assert (= bs!594124 (and d!1218877 d!1218665)))

(assert (=> bs!594124 (= lambda!128369 lambda!128344)))

(declare-fun bs!594125 () Bool)

(assert (= bs!594125 (and d!1218877 d!1218727)))

(assert (=> bs!594125 (= lambda!128369 lambda!128358)))

(declare-fun bs!594126 () Bool)

(assert (= bs!594126 (and d!1218877 d!1218753)))

(assert (=> bs!594126 (= lambda!128369 lambda!128361)))

(assert (=> d!1218877 true))

(declare-fun lt!1467646 () Bool)

(assert (=> d!1218877 (= lt!1467646 (forall!8431 (t!339979 lt!1467580) lambda!128369))))

(declare-fun e!2548269 () Bool)

(assert (=> d!1218877 (= lt!1467646 e!2548269)))

(declare-fun res!1678533 () Bool)

(assert (=> d!1218877 (=> res!1678533 e!2548269)))

(assert (=> d!1218877 (= res!1678533 (not ((_ is Cons!44198) (t!339979 lt!1467580))))))

(assert (=> d!1218877 (= (rulesValidInductive!2663 thiss!26455 (t!339979 lt!1467580)) lt!1467646)))

(declare-fun b!4106288 () Bool)

(declare-fun e!2548270 () Bool)

(assert (=> b!4106288 (= e!2548269 e!2548270)))

(declare-fun res!1678532 () Bool)

(assert (=> b!4106288 (=> (not res!1678532) (not e!2548270))))

(assert (=> b!4106288 (= res!1678532 (ruleValid!3050 thiss!26455 (h!49618 (t!339979 lt!1467580))))))

(declare-fun b!4106289 () Bool)

(assert (=> b!4106289 (= e!2548270 (rulesValidInductive!2663 thiss!26455 (t!339979 (t!339979 lt!1467580))))))

(assert (= (and d!1218877 (not res!1678533)) b!4106288))

(assert (= (and b!4106288 res!1678532) b!4106289))

(declare-fun m!4710897 () Bool)

(assert (=> d!1218877 m!4710897))

(declare-fun m!4710899 () Bool)

(assert (=> b!4106288 m!4710899))

(declare-fun m!4710901 () Bool)

(assert (=> b!4106289 m!4710901))

(assert (=> b!4105734 d!1218877))

(declare-fun d!1218879 () Bool)

(assert (=> d!1218879 true))

(assert (=> d!1218879 true))

(declare-fun res!1678536 () Bool)

(assert (=> d!1218879 (= (choose!25110 lambda!128342) res!1678536)))

(assert (=> d!1218717 d!1218879))

(declare-fun bs!594127 () Bool)

(declare-fun d!1218881 () Bool)

(assert (= bs!594127 (and d!1218881 d!1218727)))

(declare-fun lambda!128370 () Int)

(assert (=> bs!594127 (= lambda!128370 lambda!128358)))

(declare-fun bs!594128 () Bool)

(assert (= bs!594128 (and d!1218881 d!1218665)))

(assert (=> bs!594128 (= lambda!128370 lambda!128344)))

(declare-fun bs!594129 () Bool)

(assert (= bs!594129 (and d!1218881 d!1218753)))

(assert (=> bs!594129 (= lambda!128370 lambda!128361)))

(declare-fun bs!594130 () Bool)

(assert (= bs!594130 (and d!1218881 d!1218649)))

(assert (=> bs!594130 (= lambda!128370 lambda!128337)))

(declare-fun bs!594131 () Bool)

(assert (= bs!594131 (and d!1218881 d!1218877)))

(assert (=> bs!594131 (= lambda!128370 lambda!128369)))

(assert (=> d!1218881 true))

(declare-fun lt!1467647 () Bool)

(assert (=> d!1218881 (= lt!1467647 (forall!8431 (t!339979 lt!1467577) lambda!128370))))

(declare-fun e!2548271 () Bool)

(assert (=> d!1218881 (= lt!1467647 e!2548271)))

(declare-fun res!1678538 () Bool)

(assert (=> d!1218881 (=> res!1678538 e!2548271)))

(assert (=> d!1218881 (= res!1678538 (not ((_ is Cons!44198) (t!339979 lt!1467577))))))

(assert (=> d!1218881 (= (rulesValidInductive!2663 thiss!26455 (t!339979 lt!1467577)) lt!1467647)))

(declare-fun b!4106290 () Bool)

(declare-fun e!2548272 () Bool)

(assert (=> b!4106290 (= e!2548271 e!2548272)))

(declare-fun res!1678537 () Bool)

(assert (=> b!4106290 (=> (not res!1678537) (not e!2548272))))

(assert (=> b!4106290 (= res!1678537 (ruleValid!3050 thiss!26455 (h!49618 (t!339979 lt!1467577))))))

(declare-fun b!4106291 () Bool)

(assert (=> b!4106291 (= e!2548272 (rulesValidInductive!2663 thiss!26455 (t!339979 (t!339979 lt!1467577))))))

(assert (= (and d!1218881 (not res!1678538)) b!4106290))

(assert (= (and b!4106290 res!1678537) b!4106291))

(declare-fun m!4710903 () Bool)

(assert (=> d!1218881 m!4710903))

(declare-fun m!4710905 () Bool)

(assert (=> b!4106290 m!4710905))

(declare-fun m!4710907 () Bool)

(assert (=> b!4106291 m!4710907))

(assert (=> b!4105718 d!1218881))

(assert (=> b!4105733 d!1218849))

(assert (=> b!4105710 d!1218857))

(declare-fun d!1218883 () Bool)

(declare-fun res!1678539 () Bool)

(declare-fun e!2548273 () Bool)

(assert (=> d!1218883 (=> res!1678539 e!2548273)))

(assert (=> d!1218883 (= res!1678539 ((_ is Nil!44198) (t!339979 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27)))))))))

(assert (=> d!1218883 (= (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27)))))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))) Nil!44199))) e!2548273)))

(declare-fun b!4106292 () Bool)

(declare-fun e!2548274 () Bool)

(assert (=> b!4106292 (= e!2548273 e!2548274)))

(declare-fun res!1678540 () Bool)

(assert (=> b!4106292 (=> (not res!1678540) (not e!2548274))))

(assert (=> b!4106292 (= res!1678540 (not (contains!8860 (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27)))))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))) Nil!44199)) (tag!8040 (h!49618 (t!339979 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))))))))))

(declare-fun b!4106293 () Bool)

(assert (=> b!4106293 (= e!2548274 (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27)))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27)))))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))) Nil!44199)))))))

(assert (= (and d!1218883 (not res!1678539)) b!4106292))

(assert (= (and b!4106292 res!1678540) b!4106293))

(declare-fun m!4710909 () Bool)

(assert (=> b!4106292 m!4710909))

(declare-fun m!4710911 () Bool)

(assert (=> b!4106293 m!4710911))

(assert (=> b!4105738 d!1218883))

(assert (=> b!4105717 d!1218853))

(declare-fun d!1218885 () Bool)

(assert (not d!1218885))

(assert (=> b!4105728 d!1218885))

(declare-fun d!1218887 () Bool)

(assert (=> d!1218887 true))

(assert (=> d!1218887 true))

(declare-fun res!1678541 () Bool)

(assert (=> d!1218887 (= (choose!25110 lambda!128355) res!1678541)))

(assert (=> d!1218747 d!1218887))

(declare-fun d!1218889 () Bool)

(declare-fun lt!1467648 () Bool)

(assert (=> d!1218889 (= lt!1467648 (select (content!6810 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))) Nil!44199)) (tag!8040 (h!49618 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))))))))

(declare-fun e!2548276 () Bool)

(assert (=> d!1218889 (= lt!1467648 e!2548276)))

(declare-fun res!1678542 () Bool)

(assert (=> d!1218889 (=> (not res!1678542) (not e!2548276))))

(assert (=> d!1218889 (= res!1678542 ((_ is Cons!44199) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))) Nil!44199)))))

(assert (=> d!1218889 (= (contains!8860 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))) Nil!44199) (tag!8040 (h!49618 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))))) lt!1467648)))

(declare-fun b!4106294 () Bool)

(declare-fun e!2548275 () Bool)

(assert (=> b!4106294 (= e!2548276 e!2548275)))

(declare-fun res!1678543 () Bool)

(assert (=> b!4106294 (=> res!1678543 e!2548275)))

(assert (=> b!4106294 (= res!1678543 (= (h!49619 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))) Nil!44199)) (tag!8040 (h!49618 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))))))))

(declare-fun b!4106295 () Bool)

(assert (=> b!4106295 (= e!2548275 (contains!8860 (t!339980 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))) Nil!44199)) (tag!8040 (h!49618 (t!339979 (Cons!44198 rHead!24 (Cons!44198 (h!49618 rTail!27) (t!339979 rTail!27))))))))))

(assert (= (and d!1218889 res!1678542) b!4106294))

(assert (= (and b!4106294 (not res!1678543)) b!4106295))

(declare-fun m!4710913 () Bool)

(assert (=> d!1218889 m!4710913))

(declare-fun m!4710915 () Bool)

(assert (=> d!1218889 m!4710915))

(declare-fun m!4710917 () Bool)

(assert (=> b!4106295 m!4710917))

(assert (=> b!4105737 d!1218889))

(declare-fun d!1218891 () Bool)

(declare-fun res!1678544 () Bool)

(declare-fun e!2548277 () Bool)

(assert (=> d!1218891 (=> res!1678544 e!2548277)))

(assert (=> d!1218891 (= res!1678544 ((_ is Nil!44198) (t!339979 (t!339979 (t!339979 lt!1467577)))))))

(assert (=> d!1218891 (= (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (t!339979 lt!1467577))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (t!339979 lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467577))) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)))) e!2548277)))

(declare-fun b!4106296 () Bool)

(declare-fun e!2548278 () Bool)

(assert (=> b!4106296 (= e!2548277 e!2548278)))

(declare-fun res!1678545 () Bool)

(assert (=> b!4106296 (=> (not res!1678545) (not e!2548278))))

(assert (=> b!4106296 (= res!1678545 (not (contains!8860 (Cons!44199 (tag!8040 (h!49618 (t!339979 (t!339979 lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467577))) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199))) (tag!8040 (h!49618 (t!339979 (t!339979 (t!339979 lt!1467577))))))))))

(declare-fun b!4106297 () Bool)

(assert (=> b!4106297 (= e!2548278 (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (t!339979 (t!339979 lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (t!339979 (t!339979 lt!1467577))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (t!339979 lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467577))) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199))))))))

(assert (= (and d!1218891 (not res!1678544)) b!4106296))

(assert (= (and b!4106296 res!1678545) b!4106297))

(declare-fun m!4710919 () Bool)

(assert (=> b!4106296 m!4710919))

(declare-fun m!4710921 () Bool)

(assert (=> b!4106297 m!4710921))

(assert (=> b!4105730 d!1218891))

(declare-fun d!1218893 () Bool)

(declare-fun lt!1467649 () Bool)

(assert (=> d!1218893 (= lt!1467649 (select (content!6810 (t!339980 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199))) (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))))))

(declare-fun e!2548280 () Bool)

(assert (=> d!1218893 (= lt!1467649 e!2548280)))

(declare-fun res!1678546 () Bool)

(assert (=> d!1218893 (=> (not res!1678546) (not e!2548280))))

(assert (=> d!1218893 (= res!1678546 ((_ is Cons!44199) (t!339980 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199))))))

(assert (=> d!1218893 (= (contains!8860 (t!339980 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)) (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))) lt!1467649)))

(declare-fun b!4106298 () Bool)

(declare-fun e!2548279 () Bool)

(assert (=> b!4106298 (= e!2548280 e!2548279)))

(declare-fun res!1678547 () Bool)

(assert (=> b!4106298 (=> res!1678547 e!2548279)))

(assert (=> b!4106298 (= res!1678547 (= (h!49619 (t!339980 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199))) (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))))))

(declare-fun b!4106299 () Bool)

(assert (=> b!4106299 (= e!2548279 (contains!8860 (t!339980 (t!339980 (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199))) (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))))))

(assert (= (and d!1218893 res!1678546) b!4106298))

(assert (= (and b!4106298 (not res!1678547)) b!4106299))

(assert (=> d!1218893 m!4710871))

(declare-fun m!4710923 () Bool)

(assert (=> d!1218893 m!4710923))

(declare-fun m!4710925 () Bool)

(assert (=> b!4106299 m!4710925))

(assert (=> b!4105712 d!1218893))

(declare-fun d!1218895 () Bool)

(assert (=> d!1218895 (= (inv!58853 (tag!8040 (h!49618 (t!339979 (t!339979 (t!339979 rTail!27)))))) (= (mod (str.len (value!225244 (tag!8040 (h!49618 (t!339979 (t!339979 (t!339979 rTail!27))))))) 2) 0))))

(assert (=> b!4105777 d!1218895))

(declare-fun d!1218897 () Bool)

(declare-fun res!1678548 () Bool)

(declare-fun e!2548281 () Bool)

(assert (=> d!1218897 (=> (not res!1678548) (not e!2548281))))

(assert (=> d!1218897 (= res!1678548 (semiInverseModEq!3091 (toChars!9659 (transformation!7180 (h!49618 (t!339979 (t!339979 (t!339979 rTail!27)))))) (toValue!9800 (transformation!7180 (h!49618 (t!339979 (t!339979 (t!339979 rTail!27))))))))))

(assert (=> d!1218897 (= (inv!58855 (transformation!7180 (h!49618 (t!339979 (t!339979 (t!339979 rTail!27)))))) e!2548281)))

(declare-fun b!4106300 () Bool)

(assert (=> b!4106300 (= e!2548281 (equivClasses!2990 (toChars!9659 (transformation!7180 (h!49618 (t!339979 (t!339979 (t!339979 rTail!27)))))) (toValue!9800 (transformation!7180 (h!49618 (t!339979 (t!339979 (t!339979 rTail!27))))))))))

(assert (= (and d!1218897 res!1678548) b!4106300))

(declare-fun m!4710927 () Bool)

(assert (=> d!1218897 m!4710927))

(declare-fun m!4710929 () Bool)

(assert (=> b!4106300 m!4710929))

(assert (=> b!4105777 d!1218897))

(declare-fun d!1218899 () Bool)

(declare-fun lt!1467650 () Bool)

(assert (=> d!1218899 (= lt!1467650 (select (content!6810 (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467577))) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199))) (tag!8040 (h!49618 (t!339979 (t!339979 lt!1467577))))))))

(declare-fun e!2548283 () Bool)

(assert (=> d!1218899 (= lt!1467650 e!2548283)))

(declare-fun res!1678549 () Bool)

(assert (=> d!1218899 (=> (not res!1678549) (not e!2548283))))

(assert (=> d!1218899 (= res!1678549 ((_ is Cons!44199) (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467577))) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199))))))

(assert (=> d!1218899 (= (contains!8860 (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467577))) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199)) (tag!8040 (h!49618 (t!339979 (t!339979 lt!1467577))))) lt!1467650)))

(declare-fun b!4106301 () Bool)

(declare-fun e!2548282 () Bool)

(assert (=> b!4106301 (= e!2548283 e!2548282)))

(declare-fun res!1678550 () Bool)

(assert (=> b!4106301 (=> res!1678550 e!2548282)))

(assert (=> b!4106301 (= res!1678550 (= (h!49619 (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467577))) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199))) (tag!8040 (h!49618 (t!339979 (t!339979 lt!1467577))))))))

(declare-fun b!4106302 () Bool)

(assert (=> b!4106302 (= e!2548282 (contains!8860 (t!339980 (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467577))) (Cons!44199 (tag!8040 (h!49618 lt!1467577)) Nil!44199))) (tag!8040 (h!49618 (t!339979 (t!339979 lt!1467577))))))))

(assert (= (and d!1218899 res!1678549) b!4106301))

(assert (= (and b!4106301 (not res!1678550)) b!4106302))

(declare-fun m!4710931 () Bool)

(assert (=> d!1218899 m!4710931))

(declare-fun m!4710933 () Bool)

(assert (=> d!1218899 m!4710933))

(declare-fun m!4710935 () Bool)

(assert (=> b!4106302 m!4710935))

(assert (=> b!4105729 d!1218899))

(declare-fun d!1218901 () Bool)

(assert (not d!1218901))

(assert (=> b!4105744 d!1218901))

(declare-fun bs!594132 () Bool)

(declare-fun d!1218903 () Bool)

(assert (= bs!594132 (and d!1218903 d!1218655)))

(declare-fun lambda!128371 () Int)

(assert (=> bs!594132 (= (= (toValue!9800 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) (toValue!9800 (transformation!7180 rHead!24))) (= lambda!128371 lambda!128342))))

(declare-fun bs!594133 () Bool)

(assert (= bs!594133 (and d!1218903 d!1218709)))

(assert (=> bs!594133 (= (= (toValue!9800 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) (toValue!9800 (transformation!7180 (h!49618 rTail!27)))) (= lambda!128371 lambda!128355))))

(declare-fun bs!594134 () Bool)

(assert (= bs!594134 (and d!1218903 d!1218749)))

(assert (=> bs!594134 (= (= (toValue!9800 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) (toValue!9800 (transformation!7180 (h!49618 (t!339979 rTail!27))))) (= lambda!128371 lambda!128359))))

(assert (=> d!1218903 true))

(assert (=> d!1218903 (< (dynLambda!18900 order!23247 (toValue!9800 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27)))))) (dynLambda!18901 order!23249 lambda!128371))))

(assert (=> d!1218903 (= (equivClasses!2990 (toChars!9659 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27))))) (toValue!9800 (transformation!7180 (h!49618 (t!339979 (t!339979 rTail!27)))))) (Forall2!1129 lambda!128371))))

(declare-fun bs!594135 () Bool)

(assert (= bs!594135 d!1218903))

(declare-fun m!4710937 () Bool)

(assert (=> bs!594135 m!4710937))

(assert (=> b!4105702 d!1218903))

(declare-fun d!1218905 () Bool)

(declare-fun res!1678551 () Bool)

(declare-fun e!2548284 () Bool)

(assert (=> d!1218905 (=> res!1678551 e!2548284)))

(assert (=> d!1218905 (= res!1678551 ((_ is Nil!44198) lt!1467580))))

(assert (=> d!1218905 (= (forall!8431 lt!1467580 lambda!128361) e!2548284)))

(declare-fun b!4106303 () Bool)

(declare-fun e!2548285 () Bool)

(assert (=> b!4106303 (= e!2548284 e!2548285)))

(declare-fun res!1678552 () Bool)

(assert (=> b!4106303 (=> (not res!1678552) (not e!2548285))))

(assert (=> b!4106303 (= res!1678552 (dynLambda!18908 lambda!128361 (h!49618 lt!1467580)))))

(declare-fun b!4106304 () Bool)

(assert (=> b!4106304 (= e!2548285 (forall!8431 (t!339979 lt!1467580) lambda!128361))))

(assert (= (and d!1218905 (not res!1678551)) b!4106303))

(assert (= (and b!4106303 res!1678552) b!4106304))

(declare-fun b_lambda!120581 () Bool)

(assert (=> (not b_lambda!120581) (not b!4106303)))

(declare-fun m!4710939 () Bool)

(assert (=> b!4106303 m!4710939))

(declare-fun m!4710941 () Bool)

(assert (=> b!4106304 m!4710941))

(assert (=> d!1218753 d!1218905))

(declare-fun d!1218907 () Bool)

(declare-fun lt!1467651 () Bool)

(assert (=> d!1218907 (= lt!1467651 (select (content!6813 (t!339979 (t!339979 lt!1467580))) rHead!24))))

(declare-fun e!2548286 () Bool)

(assert (=> d!1218907 (= lt!1467651 e!2548286)))

(declare-fun res!1678553 () Bool)

(assert (=> d!1218907 (=> (not res!1678553) (not e!2548286))))

(assert (=> d!1218907 (= res!1678553 ((_ is Cons!44198) (t!339979 (t!339979 lt!1467580))))))

(assert (=> d!1218907 (= (contains!8859 (t!339979 (t!339979 lt!1467580)) rHead!24) lt!1467651)))

(declare-fun b!4106305 () Bool)

(declare-fun e!2548287 () Bool)

(assert (=> b!4106305 (= e!2548286 e!2548287)))

(declare-fun res!1678554 () Bool)

(assert (=> b!4106305 (=> res!1678554 e!2548287)))

(assert (=> b!4106305 (= res!1678554 (= (h!49618 (t!339979 (t!339979 lt!1467580))) rHead!24))))

(declare-fun b!4106306 () Bool)

(assert (=> b!4106306 (= e!2548287 (contains!8859 (t!339979 (t!339979 (t!339979 lt!1467580))) rHead!24))))

(assert (= (and d!1218907 res!1678553) b!4106305))

(assert (= (and b!4106305 (not res!1678554)) b!4106306))

(assert (=> d!1218907 m!4710867))

(declare-fun m!4710943 () Bool)

(assert (=> d!1218907 m!4710943))

(declare-fun m!4710945 () Bool)

(assert (=> b!4106306 m!4710945))

(assert (=> b!4105753 d!1218907))

(declare-fun d!1218909 () Bool)

(declare-fun res!1678555 () Bool)

(declare-fun e!2548288 () Bool)

(assert (=> d!1218909 (=> res!1678555 e!2548288)))

(assert (=> d!1218909 (= res!1678555 ((_ is Nil!44198) (t!339979 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))))))

(assert (=> d!1218909 (= (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199)))) e!2548288)))

(declare-fun b!4106307 () Bool)

(declare-fun e!2548289 () Bool)

(assert (=> b!4106307 (= e!2548288 e!2548289)))

(declare-fun res!1678556 () Bool)

(assert (=> b!4106307 (=> (not res!1678556) (not e!2548289))))

(assert (=> b!4106307 (= res!1678556 (not (contains!8860 (Cons!44199 (tag!8040 (h!49618 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199))) (tag!8040 (h!49618 (t!339979 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))))))))))

(declare-fun b!4106308 () Bool)

(assert (=> b!4106308 (= e!2548289 (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577))))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (Cons!44198 (h!49618 rTail!27) lt!1467577)))) (Cons!44199 (tag!8040 (h!49618 (Cons!44198 (h!49618 rTail!27) lt!1467577))) Nil!44199))))))))

(assert (= (and d!1218909 (not res!1678555)) b!4106307))

(assert (= (and b!4106307 res!1678556) b!4106308))

(declare-fun m!4710947 () Bool)

(assert (=> b!4106307 m!4710947))

(declare-fun m!4710949 () Bool)

(assert (=> b!4106308 m!4710949))

(assert (=> b!4105704 d!1218909))

(declare-fun d!1218911 () Bool)

(declare-fun res!1678557 () Bool)

(declare-fun e!2548290 () Bool)

(assert (=> d!1218911 (=> res!1678557 e!2548290)))

(assert (=> d!1218911 (= res!1678557 ((_ is Nil!44198) (t!339979 (t!339979 lt!1467580))))))

(assert (=> d!1218911 (= (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 lt!1467580)) (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467580))) (Cons!44199 (tag!8040 (h!49618 lt!1467580)) Nil!44199))) e!2548290)))

(declare-fun b!4106309 () Bool)

(declare-fun e!2548291 () Bool)

(assert (=> b!4106309 (= e!2548290 e!2548291)))

(declare-fun res!1678558 () Bool)

(assert (=> b!4106309 (=> (not res!1678558) (not e!2548291))))

(assert (=> b!4106309 (= res!1678558 (not (contains!8860 (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467580))) (Cons!44199 (tag!8040 (h!49618 lt!1467580)) Nil!44199)) (tag!8040 (h!49618 (t!339979 (t!339979 lt!1467580)))))))))

(declare-fun b!4106310 () Bool)

(assert (=> b!4106310 (= e!2548291 (noDuplicateTag!2857 thiss!26455 (t!339979 (t!339979 (t!339979 lt!1467580))) (Cons!44199 (tag!8040 (h!49618 (t!339979 (t!339979 lt!1467580)))) (Cons!44199 (tag!8040 (h!49618 (t!339979 lt!1467580))) (Cons!44199 (tag!8040 (h!49618 lt!1467580)) Nil!44199)))))))

(assert (= (and d!1218911 (not res!1678557)) b!4106309))

(assert (= (and b!4106309 res!1678558) b!4106310))

(declare-fun m!4710951 () Bool)

(assert (=> b!4106309 m!4710951))

(declare-fun m!4710953 () Bool)

(assert (=> b!4106310 m!4710953))

(assert (=> b!4105740 d!1218911))

(declare-fun b!4106312 () Bool)

(declare-fun e!2548294 () Bool)

(declare-fun e!2548295 () Bool)

(assert (=> b!4106312 (= e!2548294 e!2548295)))

(declare-fun res!1678560 () Bool)

(assert (=> b!4106312 (=> res!1678560 e!2548295)))

(declare-fun e!2548292 () Bool)

(assert (=> b!4106312 (= res!1678560 e!2548292)))

(declare-fun res!1678562 () Bool)

(assert (=> b!4106312 (=> (not res!1678562) (not e!2548292))))

(assert (=> b!4106312 (= res!1678562 (= (h!49619 Nil!44199) (h!49619 (t!339980 (t!339980 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199))))))))

(declare-fun b!4106311 () Bool)

(declare-fun e!2548293 () Bool)

(assert (=> b!4106311 (= e!2548293 e!2548294)))

(declare-fun res!1678561 () Bool)

(assert (=> b!4106311 (=> (not res!1678561) (not e!2548294))))

(assert (=> b!4106311 (= res!1678561 ((_ is Cons!44199) (t!339980 (t!339980 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199)))))))

(declare-fun d!1218913 () Bool)

(declare-fun res!1678559 () Bool)

(assert (=> d!1218913 (=> res!1678559 e!2548293)))

(assert (=> d!1218913 (= res!1678559 ((_ is Nil!44199) Nil!44199))))

(assert (=> d!1218913 (= (subseq!549 Nil!44199 (t!339980 (t!339980 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199)))) e!2548293)))

(declare-fun b!4106314 () Bool)

(assert (=> b!4106314 (= e!2548295 (subseq!549 Nil!44199 (t!339980 (t!339980 (t!339980 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199))))))))

(declare-fun b!4106313 () Bool)

(assert (=> b!4106313 (= e!2548292 (subseq!549 (t!339980 Nil!44199) (t!339980 (t!339980 (t!339980 (Cons!44199 (tag!8040 (h!49618 rTail!27)) Nil!44199))))))))

(assert (= (and d!1218913 (not res!1678559)) b!4106311))

(assert (= (and b!4106311 res!1678561) b!4106312))

(assert (= (and b!4106312 res!1678562) b!4106313))

(assert (= (and b!4106312 (not res!1678560)) b!4106314))

(declare-fun m!4710955 () Bool)

(assert (=> b!4106314 m!4710955))

(declare-fun m!4710957 () Bool)

(assert (=> b!4106313 m!4710957))

(assert (=> b!4105749 d!1218913))

(declare-fun b!4106315 () Bool)

(declare-fun e!2548296 () Bool)

(assert (=> b!4106315 (= e!2548296 tp_is_empty!21137)))

(declare-fun b!4106316 () Bool)

(declare-fun tp!1245703 () Bool)

(declare-fun tp!1245702 () Bool)

(assert (=> b!4106316 (= e!2548296 (and tp!1245703 tp!1245702))))

(declare-fun b!4106318 () Bool)

(declare-fun tp!1245700 () Bool)

(declare-fun tp!1245699 () Bool)

(assert (=> b!4106318 (= e!2548296 (and tp!1245700 tp!1245699))))

(assert (=> b!4105864 (= tp!1245259 e!2548296)))

(declare-fun b!4106317 () Bool)

(declare-fun tp!1245701 () Bool)

(assert (=> b!4106317 (= e!2548296 tp!1245701)))

(assert (= (and b!4105864 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106315))

(assert (= (and b!4105864 ((_ is Concat!19495) (regOne!24682 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106316))

(assert (= (and b!4105864 ((_ is Star!12085) (regOne!24682 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106317))

(assert (= (and b!4105864 ((_ is Union!12085) (regOne!24682 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106318))

(declare-fun b!4106319 () Bool)

(declare-fun e!2548297 () Bool)

(assert (=> b!4106319 (= e!2548297 tp_is_empty!21137)))

(declare-fun b!4106320 () Bool)

(declare-fun tp!1245708 () Bool)

(declare-fun tp!1245707 () Bool)

(assert (=> b!4106320 (= e!2548297 (and tp!1245708 tp!1245707))))

(declare-fun b!4106322 () Bool)

(declare-fun tp!1245705 () Bool)

(declare-fun tp!1245704 () Bool)

(assert (=> b!4106322 (= e!2548297 (and tp!1245705 tp!1245704))))

(assert (=> b!4105864 (= tp!1245258 e!2548297)))

(declare-fun b!4106321 () Bool)

(declare-fun tp!1245706 () Bool)

(assert (=> b!4106321 (= e!2548297 tp!1245706)))

(assert (= (and b!4105864 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106319))

(assert (= (and b!4105864 ((_ is Concat!19495) (regTwo!24682 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106320))

(assert (= (and b!4105864 ((_ is Star!12085) (regTwo!24682 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106321))

(assert (= (and b!4105864 ((_ is Union!12085) (regTwo!24682 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106322))

(declare-fun b!4106323 () Bool)

(declare-fun e!2548298 () Bool)

(assert (=> b!4106323 (= e!2548298 tp_is_empty!21137)))

(declare-fun b!4106324 () Bool)

(declare-fun tp!1245713 () Bool)

(declare-fun tp!1245712 () Bool)

(assert (=> b!4106324 (= e!2548298 (and tp!1245713 tp!1245712))))

(declare-fun b!4106326 () Bool)

(declare-fun tp!1245710 () Bool)

(declare-fun tp!1245709 () Bool)

(assert (=> b!4106326 (= e!2548298 (and tp!1245710 tp!1245709))))

(assert (=> b!4105857 (= tp!1245247 e!2548298)))

(declare-fun b!4106325 () Bool)

(declare-fun tp!1245711 () Bool)

(assert (=> b!4106325 (= e!2548298 tp!1245711)))

(assert (= (and b!4105857 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106323))

(assert (= (and b!4105857 ((_ is Concat!19495) (reg!12414 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106324))

(assert (= (and b!4105857 ((_ is Star!12085) (reg!12414 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106325))

(assert (= (and b!4105857 ((_ is Union!12085) (reg!12414 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106326))

(declare-fun b!4106327 () Bool)

(declare-fun e!2548299 () Bool)

(assert (=> b!4106327 (= e!2548299 tp_is_empty!21137)))

(declare-fun b!4106328 () Bool)

(declare-fun tp!1245718 () Bool)

(declare-fun tp!1245717 () Bool)

(assert (=> b!4106328 (= e!2548299 (and tp!1245718 tp!1245717))))

(declare-fun b!4106330 () Bool)

(declare-fun tp!1245715 () Bool)

(declare-fun tp!1245714 () Bool)

(assert (=> b!4106330 (= e!2548299 (and tp!1245715 tp!1245714))))

(assert (=> b!4105786 (= tp!1245161 e!2548299)))

(declare-fun b!4106329 () Bool)

(declare-fun tp!1245716 () Bool)

(assert (=> b!4106329 (= e!2548299 tp!1245716)))

(assert (= (and b!4105786 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106327))

(assert (= (and b!4105786 ((_ is Concat!19495) (regOne!24683 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106328))

(assert (= (and b!4105786 ((_ is Star!12085) (regOne!24683 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106329))

(assert (= (and b!4105786 ((_ is Union!12085) (regOne!24683 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106330))

(declare-fun b!4106331 () Bool)

(declare-fun e!2548300 () Bool)

(assert (=> b!4106331 (= e!2548300 tp_is_empty!21137)))

(declare-fun b!4106332 () Bool)

(declare-fun tp!1245723 () Bool)

(declare-fun tp!1245722 () Bool)

(assert (=> b!4106332 (= e!2548300 (and tp!1245723 tp!1245722))))

(declare-fun b!4106334 () Bool)

(declare-fun tp!1245720 () Bool)

(declare-fun tp!1245719 () Bool)

(assert (=> b!4106334 (= e!2548300 (and tp!1245720 tp!1245719))))

(assert (=> b!4105786 (= tp!1245160 e!2548300)))

(declare-fun b!4106333 () Bool)

(declare-fun tp!1245721 () Bool)

(assert (=> b!4106333 (= e!2548300 tp!1245721)))

(assert (= (and b!4105786 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106331))

(assert (= (and b!4105786 ((_ is Concat!19495) (regTwo!24683 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106332))

(assert (= (and b!4105786 ((_ is Star!12085) (regTwo!24683 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106333))

(assert (= (and b!4105786 ((_ is Union!12085) (regTwo!24683 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106334))

(declare-fun b!4106335 () Bool)

(declare-fun e!2548301 () Bool)

(assert (=> b!4106335 (= e!2548301 tp_is_empty!21137)))

(declare-fun b!4106336 () Bool)

(declare-fun tp!1245728 () Bool)

(declare-fun tp!1245727 () Bool)

(assert (=> b!4106336 (= e!2548301 (and tp!1245728 tp!1245727))))

(declare-fun b!4106338 () Bool)

(declare-fun tp!1245725 () Bool)

(declare-fun tp!1245724 () Bool)

(assert (=> b!4106338 (= e!2548301 (and tp!1245725 tp!1245724))))

(assert (=> b!4105984 (= tp!1245396 e!2548301)))

(declare-fun b!4106337 () Bool)

(declare-fun tp!1245726 () Bool)

(assert (=> b!4106337 (= e!2548301 tp!1245726)))

(assert (= (and b!4105984 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106335))

(assert (= (and b!4105984 ((_ is Concat!19495) (regOne!24683 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106336))

(assert (= (and b!4105984 ((_ is Star!12085) (regOne!24683 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106337))

(assert (= (and b!4105984 ((_ is Union!12085) (regOne!24683 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106338))

(declare-fun b!4106339 () Bool)

(declare-fun e!2548302 () Bool)

(assert (=> b!4106339 (= e!2548302 tp_is_empty!21137)))

(declare-fun b!4106340 () Bool)

(declare-fun tp!1245733 () Bool)

(declare-fun tp!1245732 () Bool)

(assert (=> b!4106340 (= e!2548302 (and tp!1245733 tp!1245732))))

(declare-fun b!4106342 () Bool)

(declare-fun tp!1245730 () Bool)

(declare-fun tp!1245729 () Bool)

(assert (=> b!4106342 (= e!2548302 (and tp!1245730 tp!1245729))))

(assert (=> b!4105984 (= tp!1245395 e!2548302)))

(declare-fun b!4106341 () Bool)

(declare-fun tp!1245731 () Bool)

(assert (=> b!4106341 (= e!2548302 tp!1245731)))

(assert (= (and b!4105984 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106339))

(assert (= (and b!4105984 ((_ is Concat!19495) (regTwo!24683 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106340))

(assert (= (and b!4105984 ((_ is Star!12085) (regTwo!24683 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106341))

(assert (= (and b!4105984 ((_ is Union!12085) (regTwo!24683 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106342))

(declare-fun b!4106343 () Bool)

(declare-fun e!2548303 () Bool)

(assert (=> b!4106343 (= e!2548303 tp_is_empty!21137)))

(declare-fun b!4106344 () Bool)

(declare-fun tp!1245738 () Bool)

(declare-fun tp!1245737 () Bool)

(assert (=> b!4106344 (= e!2548303 (and tp!1245738 tp!1245737))))

(declare-fun b!4106346 () Bool)

(declare-fun tp!1245735 () Bool)

(declare-fun tp!1245734 () Bool)

(assert (=> b!4106346 (= e!2548303 (and tp!1245735 tp!1245734))))

(assert (=> b!4105990 (= tp!1245409 e!2548303)))

(declare-fun b!4106345 () Bool)

(declare-fun tp!1245736 () Bool)

(assert (=> b!4106345 (= e!2548303 tp!1245736)))

(assert (= (and b!4105990 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106343))

(assert (= (and b!4105990 ((_ is Concat!19495) (regOne!24682 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106344))

(assert (= (and b!4105990 ((_ is Star!12085) (regOne!24682 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106345))

(assert (= (and b!4105990 ((_ is Union!12085) (regOne!24682 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106346))

(declare-fun b!4106347 () Bool)

(declare-fun e!2548304 () Bool)

(assert (=> b!4106347 (= e!2548304 tp_is_empty!21137)))

(declare-fun b!4106348 () Bool)

(declare-fun tp!1245743 () Bool)

(declare-fun tp!1245742 () Bool)

(assert (=> b!4106348 (= e!2548304 (and tp!1245743 tp!1245742))))

(declare-fun b!4106350 () Bool)

(declare-fun tp!1245740 () Bool)

(declare-fun tp!1245739 () Bool)

(assert (=> b!4106350 (= e!2548304 (and tp!1245740 tp!1245739))))

(assert (=> b!4105990 (= tp!1245408 e!2548304)))

(declare-fun b!4106349 () Bool)

(declare-fun tp!1245741 () Bool)

(assert (=> b!4106349 (= e!2548304 tp!1245741)))

(assert (= (and b!4105990 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106347))

(assert (= (and b!4105990 ((_ is Concat!19495) (regTwo!24682 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106348))

(assert (= (and b!4105990 ((_ is Star!12085) (regTwo!24682 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106349))

(assert (= (and b!4105990 ((_ is Union!12085) (regTwo!24682 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106350))

(declare-fun b!4106351 () Bool)

(declare-fun e!2548305 () Bool)

(assert (=> b!4106351 (= e!2548305 tp_is_empty!21137)))

(declare-fun b!4106352 () Bool)

(declare-fun tp!1245748 () Bool)

(declare-fun tp!1245747 () Bool)

(assert (=> b!4106352 (= e!2548305 (and tp!1245748 tp!1245747))))

(declare-fun b!4106354 () Bool)

(declare-fun tp!1245745 () Bool)

(declare-fun tp!1245744 () Bool)

(assert (=> b!4106354 (= e!2548305 (and tp!1245745 tp!1245744))))

(assert (=> b!4105975 (= tp!1245387 e!2548305)))

(declare-fun b!4106353 () Bool)

(declare-fun tp!1245746 () Bool)

(assert (=> b!4106353 (= e!2548305 tp!1245746)))

(assert (= (and b!4105975 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106351))

(assert (= (and b!4105975 ((_ is Concat!19495) (reg!12414 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106352))

(assert (= (and b!4105975 ((_ is Star!12085) (reg!12414 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106353))

(assert (= (and b!4105975 ((_ is Union!12085) (reg!12414 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106354))

(declare-fun b!4106355 () Bool)

(declare-fun e!2548306 () Bool)

(assert (=> b!4106355 (= e!2548306 tp_is_empty!21137)))

(declare-fun b!4106356 () Bool)

(declare-fun tp!1245753 () Bool)

(declare-fun tp!1245752 () Bool)

(assert (=> b!4106356 (= e!2548306 (and tp!1245753 tp!1245752))))

(declare-fun b!4106358 () Bool)

(declare-fun tp!1245750 () Bool)

(declare-fun tp!1245749 () Bool)

(assert (=> b!4106358 (= e!2548306 (and tp!1245750 tp!1245749))))

(assert (=> b!4105879 (= tp!1245272 e!2548306)))

(declare-fun b!4106357 () Bool)

(declare-fun tp!1245751 () Bool)

(assert (=> b!4106357 (= e!2548306 tp!1245751)))

(assert (= (and b!4105879 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106355))

(assert (= (and b!4105879 ((_ is Concat!19495) (reg!12414 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106356))

(assert (= (and b!4105879 ((_ is Star!12085) (reg!12414 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106357))

(assert (= (and b!4105879 ((_ is Union!12085) (reg!12414 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106358))

(declare-fun b!4106359 () Bool)

(declare-fun e!2548307 () Bool)

(assert (=> b!4106359 (= e!2548307 tp_is_empty!21137)))

(declare-fun b!4106360 () Bool)

(declare-fun tp!1245758 () Bool)

(declare-fun tp!1245757 () Bool)

(assert (=> b!4106360 (= e!2548307 (and tp!1245758 tp!1245757))))

(declare-fun b!4106362 () Bool)

(declare-fun tp!1245755 () Bool)

(declare-fun tp!1245754 () Bool)

(assert (=> b!4106362 (= e!2548307 (and tp!1245755 tp!1245754))))

(assert (=> b!4105820 (= tp!1245201 e!2548307)))

(declare-fun b!4106361 () Bool)

(declare-fun tp!1245756 () Bool)

(assert (=> b!4106361 (= e!2548307 tp!1245756)))

(assert (= (and b!4105820 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106359))

(assert (= (and b!4105820 ((_ is Concat!19495) (regOne!24683 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106360))

(assert (= (and b!4105820 ((_ is Star!12085) (regOne!24683 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106361))

(assert (= (and b!4105820 ((_ is Union!12085) (regOne!24683 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106362))

(declare-fun b!4106363 () Bool)

(declare-fun e!2548308 () Bool)

(assert (=> b!4106363 (= e!2548308 tp_is_empty!21137)))

(declare-fun b!4106364 () Bool)

(declare-fun tp!1245763 () Bool)

(declare-fun tp!1245762 () Bool)

(assert (=> b!4106364 (= e!2548308 (and tp!1245763 tp!1245762))))

(declare-fun b!4106366 () Bool)

(declare-fun tp!1245760 () Bool)

(declare-fun tp!1245759 () Bool)

(assert (=> b!4106366 (= e!2548308 (and tp!1245760 tp!1245759))))

(assert (=> b!4105820 (= tp!1245200 e!2548308)))

(declare-fun b!4106365 () Bool)

(declare-fun tp!1245761 () Bool)

(assert (=> b!4106365 (= e!2548308 tp!1245761)))

(assert (= (and b!4105820 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106363))

(assert (= (and b!4105820 ((_ is Concat!19495) (regTwo!24683 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106364))

(assert (= (and b!4105820 ((_ is Star!12085) (regTwo!24683 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106365))

(assert (= (and b!4105820 ((_ is Union!12085) (regTwo!24683 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106366))

(declare-fun b!4106367 () Bool)

(declare-fun e!2548309 () Bool)

(assert (=> b!4106367 (= e!2548309 tp_is_empty!21137)))

(declare-fun b!4106368 () Bool)

(declare-fun tp!1245768 () Bool)

(declare-fun tp!1245767 () Bool)

(assert (=> b!4106368 (= e!2548309 (and tp!1245768 tp!1245767))))

(declare-fun b!4106370 () Bool)

(declare-fun tp!1245765 () Bool)

(declare-fun tp!1245764 () Bool)

(assert (=> b!4106370 (= e!2548309 (and tp!1245765 tp!1245764))))

(assert (=> b!4105918 (= tp!1245324 e!2548309)))

(declare-fun b!4106369 () Bool)

(declare-fun tp!1245766 () Bool)

(assert (=> b!4106369 (= e!2548309 tp!1245766)))

(assert (= (and b!4105918 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106367))

(assert (= (and b!4105918 ((_ is Concat!19495) (regOne!24682 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106368))

(assert (= (and b!4105918 ((_ is Star!12085) (regOne!24682 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106369))

(assert (= (and b!4105918 ((_ is Union!12085) (regOne!24682 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106370))

(declare-fun b!4106371 () Bool)

(declare-fun e!2548310 () Bool)

(assert (=> b!4106371 (= e!2548310 tp_is_empty!21137)))

(declare-fun b!4106372 () Bool)

(declare-fun tp!1245773 () Bool)

(declare-fun tp!1245772 () Bool)

(assert (=> b!4106372 (= e!2548310 (and tp!1245773 tp!1245772))))

(declare-fun b!4106374 () Bool)

(declare-fun tp!1245770 () Bool)

(declare-fun tp!1245769 () Bool)

(assert (=> b!4106374 (= e!2548310 (and tp!1245770 tp!1245769))))

(assert (=> b!4105918 (= tp!1245323 e!2548310)))

(declare-fun b!4106373 () Bool)

(declare-fun tp!1245771 () Bool)

(assert (=> b!4106373 (= e!2548310 tp!1245771)))

(assert (= (and b!4105918 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106371))

(assert (= (and b!4105918 ((_ is Concat!19495) (regTwo!24682 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106372))

(assert (= (and b!4105918 ((_ is Star!12085) (regTwo!24682 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106373))

(assert (= (and b!4105918 ((_ is Union!12085) (regTwo!24682 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106374))

(declare-fun b!4106375 () Bool)

(declare-fun e!2548311 () Bool)

(assert (=> b!4106375 (= e!2548311 tp_is_empty!21137)))

(declare-fun b!4106376 () Bool)

(declare-fun tp!1245778 () Bool)

(declare-fun tp!1245777 () Bool)

(assert (=> b!4106376 (= e!2548311 (and tp!1245778 tp!1245777))))

(declare-fun b!4106378 () Bool)

(declare-fun tp!1245775 () Bool)

(declare-fun tp!1245774 () Bool)

(assert (=> b!4106378 (= e!2548311 (and tp!1245775 tp!1245774))))

(assert (=> b!4105927 (= tp!1245332 e!2548311)))

(declare-fun b!4106377 () Bool)

(declare-fun tp!1245776 () Bool)

(assert (=> b!4106377 (= e!2548311 tp!1245776)))

(assert (= (and b!4105927 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106375))

(assert (= (and b!4105927 ((_ is Concat!19495) (reg!12414 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106376))

(assert (= (and b!4105927 ((_ is Star!12085) (reg!12414 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106377))

(assert (= (and b!4105927 ((_ is Union!12085) (reg!12414 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106378))

(declare-fun b!4106379 () Bool)

(declare-fun e!2548312 () Bool)

(assert (=> b!4106379 (= e!2548312 tp_is_empty!21137)))

(declare-fun b!4106380 () Bool)

(declare-fun tp!1245783 () Bool)

(declare-fun tp!1245782 () Bool)

(assert (=> b!4106380 (= e!2548312 (and tp!1245783 tp!1245782))))

(declare-fun b!4106382 () Bool)

(declare-fun tp!1245780 () Bool)

(declare-fun tp!1245779 () Bool)

(assert (=> b!4106382 (= e!2548312 (and tp!1245780 tp!1245779))))

(assert (=> b!4105848 (= tp!1245236 e!2548312)))

(declare-fun b!4106381 () Bool)

(declare-fun tp!1245781 () Bool)

(assert (=> b!4106381 (= e!2548312 tp!1245781)))

(assert (= (and b!4105848 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106379))

(assert (= (and b!4105848 ((_ is Concat!19495) (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106380))

(assert (= (and b!4105848 ((_ is Star!12085) (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106381))

(assert (= (and b!4105848 ((_ is Union!12085) (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106382))

(declare-fun b!4106383 () Bool)

(declare-fun e!2548313 () Bool)

(assert (=> b!4106383 (= e!2548313 tp_is_empty!21137)))

(declare-fun b!4106384 () Bool)

(declare-fun tp!1245788 () Bool)

(declare-fun tp!1245787 () Bool)

(assert (=> b!4106384 (= e!2548313 (and tp!1245788 tp!1245787))))

(declare-fun b!4106386 () Bool)

(declare-fun tp!1245785 () Bool)

(declare-fun tp!1245784 () Bool)

(assert (=> b!4106386 (= e!2548313 (and tp!1245785 tp!1245784))))

(assert (=> b!4105848 (= tp!1245235 e!2548313)))

(declare-fun b!4106385 () Bool)

(declare-fun tp!1245786 () Bool)

(assert (=> b!4106385 (= e!2548313 tp!1245786)))

(assert (= (and b!4105848 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106383))

(assert (= (and b!4105848 ((_ is Concat!19495) (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106384))

(assert (= (and b!4105848 ((_ is Star!12085) (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106385))

(assert (= (and b!4105848 ((_ is Union!12085) (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106386))

(declare-fun b!4106387 () Bool)

(declare-fun e!2548314 () Bool)

(assert (=> b!4106387 (= e!2548314 tp_is_empty!21137)))

(declare-fun b!4106388 () Bool)

(declare-fun tp!1245793 () Bool)

(declare-fun tp!1245792 () Bool)

(assert (=> b!4106388 (= e!2548314 (and tp!1245793 tp!1245792))))

(declare-fun b!4106390 () Bool)

(declare-fun tp!1245790 () Bool)

(declare-fun tp!1245789 () Bool)

(assert (=> b!4106390 (= e!2548314 (and tp!1245790 tp!1245789))))

(assert (=> b!4105759 (= tp!1245132 e!2548314)))

(declare-fun b!4106389 () Bool)

(declare-fun tp!1245791 () Bool)

(assert (=> b!4106389 (= e!2548314 tp!1245791)))

(assert (= (and b!4105759 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106387))

(assert (= (and b!4105759 ((_ is Concat!19495) (regOne!24683 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106388))

(assert (= (and b!4105759 ((_ is Star!12085) (regOne!24683 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106389))

(assert (= (and b!4105759 ((_ is Union!12085) (regOne!24683 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106390))

(declare-fun b!4106391 () Bool)

(declare-fun e!2548315 () Bool)

(assert (=> b!4106391 (= e!2548315 tp_is_empty!21137)))

(declare-fun b!4106392 () Bool)

(declare-fun tp!1245798 () Bool)

(declare-fun tp!1245797 () Bool)

(assert (=> b!4106392 (= e!2548315 (and tp!1245798 tp!1245797))))

(declare-fun b!4106394 () Bool)

(declare-fun tp!1245795 () Bool)

(declare-fun tp!1245794 () Bool)

(assert (=> b!4106394 (= e!2548315 (and tp!1245795 tp!1245794))))

(assert (=> b!4105759 (= tp!1245131 e!2548315)))

(declare-fun b!4106393 () Bool)

(declare-fun tp!1245796 () Bool)

(assert (=> b!4106393 (= e!2548315 tp!1245796)))

(assert (= (and b!4105759 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106391))

(assert (= (and b!4105759 ((_ is Concat!19495) (regTwo!24683 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106392))

(assert (= (and b!4105759 ((_ is Star!12085) (regTwo!24683 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106393))

(assert (= (and b!4105759 ((_ is Union!12085) (regTwo!24683 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106394))

(declare-fun b!4106395 () Bool)

(declare-fun e!2548316 () Bool)

(assert (=> b!4106395 (= e!2548316 tp_is_empty!21137)))

(declare-fun b!4106396 () Bool)

(declare-fun tp!1245803 () Bool)

(declare-fun tp!1245802 () Bool)

(assert (=> b!4106396 (= e!2548316 (and tp!1245803 tp!1245802))))

(declare-fun b!4106398 () Bool)

(declare-fun tp!1245800 () Bool)

(declare-fun tp!1245799 () Bool)

(assert (=> b!4106398 (= e!2548316 (and tp!1245800 tp!1245799))))

(assert (=> b!4105936 (= tp!1245341 e!2548316)))

(declare-fun b!4106397 () Bool)

(declare-fun tp!1245801 () Bool)

(assert (=> b!4106397 (= e!2548316 tp!1245801)))

(assert (= (and b!4105936 ((_ is ElementMatch!12085) (regOne!24683 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106395))

(assert (= (and b!4105936 ((_ is Concat!19495) (regOne!24683 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106396))

(assert (= (and b!4105936 ((_ is Star!12085) (regOne!24683 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106397))

(assert (= (and b!4105936 ((_ is Union!12085) (regOne!24683 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106398))

(declare-fun b!4106399 () Bool)

(declare-fun e!2548317 () Bool)

(assert (=> b!4106399 (= e!2548317 tp_is_empty!21137)))

(declare-fun b!4106400 () Bool)

(declare-fun tp!1245808 () Bool)

(declare-fun tp!1245807 () Bool)

(assert (=> b!4106400 (= e!2548317 (and tp!1245808 tp!1245807))))

(declare-fun b!4106402 () Bool)

(declare-fun tp!1245805 () Bool)

(declare-fun tp!1245804 () Bool)

(assert (=> b!4106402 (= e!2548317 (and tp!1245805 tp!1245804))))

(assert (=> b!4105936 (= tp!1245340 e!2548317)))

(declare-fun b!4106401 () Bool)

(declare-fun tp!1245806 () Bool)

(assert (=> b!4106401 (= e!2548317 tp!1245806)))

(assert (= (and b!4105936 ((_ is ElementMatch!12085) (regTwo!24683 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106399))

(assert (= (and b!4105936 ((_ is Concat!19495) (regTwo!24683 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106400))

(assert (= (and b!4105936 ((_ is Star!12085) (regTwo!24683 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106401))

(assert (= (and b!4105936 ((_ is Union!12085) (regTwo!24683 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106402))

(declare-fun b!4106403 () Bool)

(declare-fun e!2548318 () Bool)

(assert (=> b!4106403 (= e!2548318 tp_is_empty!21137)))

(declare-fun b!4106404 () Bool)

(declare-fun tp!1245813 () Bool)

(declare-fun tp!1245812 () Bool)

(assert (=> b!4106404 (= e!2548318 (and tp!1245813 tp!1245812))))

(declare-fun b!4106406 () Bool)

(declare-fun tp!1245810 () Bool)

(declare-fun tp!1245809 () Bool)

(assert (=> b!4106406 (= e!2548318 (and tp!1245810 tp!1245809))))

(assert (=> b!4105800 (= tp!1245184 e!2548318)))

(declare-fun b!4106405 () Bool)

(declare-fun tp!1245811 () Bool)

(assert (=> b!4106405 (= e!2548318 tp!1245811)))

(assert (= (and b!4105800 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106403))

(assert (= (and b!4105800 ((_ is Concat!19495) (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106404))

(assert (= (and b!4105800 ((_ is Star!12085) (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106405))

(assert (= (and b!4105800 ((_ is Union!12085) (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106406))

(declare-fun b!4106407 () Bool)

(declare-fun e!2548319 () Bool)

(assert (=> b!4106407 (= e!2548319 tp_is_empty!21137)))

(declare-fun b!4106408 () Bool)

(declare-fun tp!1245818 () Bool)

(declare-fun tp!1245817 () Bool)

(assert (=> b!4106408 (= e!2548319 (and tp!1245818 tp!1245817))))

(declare-fun b!4106410 () Bool)

(declare-fun tp!1245815 () Bool)

(declare-fun tp!1245814 () Bool)

(assert (=> b!4106410 (= e!2548319 (and tp!1245815 tp!1245814))))

(assert (=> b!4105800 (= tp!1245183 e!2548319)))

(declare-fun b!4106409 () Bool)

(declare-fun tp!1245816 () Bool)

(assert (=> b!4106409 (= e!2548319 tp!1245816)))

(assert (= (and b!4105800 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106407))

(assert (= (and b!4105800 ((_ is Concat!19495) (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106408))

(assert (= (and b!4105800 ((_ is Star!12085) (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106409))

(assert (= (and b!4105800 ((_ is Union!12085) (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106410))

(declare-fun b!4106411 () Bool)

(declare-fun e!2548320 () Bool)

(assert (=> b!4106411 (= e!2548320 tp_is_empty!21137)))

(declare-fun b!4106412 () Bool)

(declare-fun tp!1245823 () Bool)

(declare-fun tp!1245822 () Bool)

(assert (=> b!4106412 (= e!2548320 (and tp!1245823 tp!1245822))))

(declare-fun b!4106414 () Bool)

(declare-fun tp!1245820 () Bool)

(declare-fun tp!1245819 () Bool)

(assert (=> b!4106414 (= e!2548320 (and tp!1245820 tp!1245819))))

(assert (=> b!4105809 (= tp!1245192 e!2548320)))

(declare-fun b!4106413 () Bool)

(declare-fun tp!1245821 () Bool)

(assert (=> b!4106413 (= e!2548320 tp!1245821)))

(assert (= (and b!4105809 ((_ is ElementMatch!12085) (reg!12414 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106411))

(assert (= (and b!4105809 ((_ is Concat!19495) (reg!12414 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106412))

(assert (= (and b!4105809 ((_ is Star!12085) (reg!12414 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106413))

(assert (= (and b!4105809 ((_ is Union!12085) (reg!12414 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106414))

(declare-fun b!4106415 () Bool)

(declare-fun e!2548321 () Bool)

(assert (=> b!4106415 (= e!2548321 tp_is_empty!21137)))

(declare-fun b!4106416 () Bool)

(declare-fun tp!1245828 () Bool)

(declare-fun tp!1245827 () Bool)

(assert (=> b!4106416 (= e!2548321 (and tp!1245828 tp!1245827))))

(declare-fun b!4106418 () Bool)

(declare-fun tp!1245825 () Bool)

(declare-fun tp!1245824 () Bool)

(assert (=> b!4106418 (= e!2548321 (and tp!1245825 tp!1245824))))

(assert (=> b!4105950 (= tp!1245364 e!2548321)))

(declare-fun b!4106417 () Bool)

(declare-fun tp!1245826 () Bool)

(assert (=> b!4106417 (= e!2548321 tp!1245826)))

(assert (= (and b!4105950 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106415))

(assert (= (and b!4105950 ((_ is Concat!19495) (regOne!24682 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106416))

(assert (= (and b!4105950 ((_ is Star!12085) (regOne!24682 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106417))

(assert (= (and b!4105950 ((_ is Union!12085) (regOne!24682 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106418))

(declare-fun b!4106419 () Bool)

(declare-fun e!2548322 () Bool)

(assert (=> b!4106419 (= e!2548322 tp_is_empty!21137)))

(declare-fun b!4106420 () Bool)

(declare-fun tp!1245833 () Bool)

(declare-fun tp!1245832 () Bool)

(assert (=> b!4106420 (= e!2548322 (and tp!1245833 tp!1245832))))

(declare-fun b!4106422 () Bool)

(declare-fun tp!1245830 () Bool)

(declare-fun tp!1245829 () Bool)

(assert (=> b!4106422 (= e!2548322 (and tp!1245830 tp!1245829))))

(assert (=> b!4105950 (= tp!1245363 e!2548322)))

(declare-fun b!4106421 () Bool)

(declare-fun tp!1245831 () Bool)

(assert (=> b!4106421 (= e!2548322 tp!1245831)))

(assert (= (and b!4105950 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106419))

(assert (= (and b!4105950 ((_ is Concat!19495) (regTwo!24682 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106420))

(assert (= (and b!4105950 ((_ is Star!12085) (regTwo!24682 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106421))

(assert (= (and b!4105950 ((_ is Union!12085) (regTwo!24682 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106422))

(declare-fun b!4106423 () Bool)

(declare-fun e!2548323 () Bool)

(assert (=> b!4106423 (= e!2548323 tp_is_empty!21137)))

(declare-fun b!4106424 () Bool)

(declare-fun tp!1245838 () Bool)

(declare-fun tp!1245837 () Bool)

(assert (=> b!4106424 (= e!2548323 (and tp!1245838 tp!1245837))))

(declare-fun b!4106426 () Bool)

(declare-fun tp!1245835 () Bool)

(declare-fun tp!1245834 () Bool)

(assert (=> b!4106426 (= e!2548323 (and tp!1245835 tp!1245834))))

(assert (=> b!4105840 (= tp!1245226 e!2548323)))

(declare-fun b!4106425 () Bool)

(declare-fun tp!1245836 () Bool)

(assert (=> b!4106425 (= e!2548323 tp!1245836)))

(assert (= (and b!4105840 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106423))

(assert (= (and b!4105840 ((_ is Concat!19495) (regOne!24683 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106424))

(assert (= (and b!4105840 ((_ is Star!12085) (regOne!24683 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106425))

(assert (= (and b!4105840 ((_ is Union!12085) (regOne!24683 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106426))

(declare-fun b!4106427 () Bool)

(declare-fun e!2548324 () Bool)

(assert (=> b!4106427 (= e!2548324 tp_is_empty!21137)))

(declare-fun b!4106428 () Bool)

(declare-fun tp!1245843 () Bool)

(declare-fun tp!1245842 () Bool)

(assert (=> b!4106428 (= e!2548324 (and tp!1245843 tp!1245842))))

(declare-fun b!4106430 () Bool)

(declare-fun tp!1245840 () Bool)

(declare-fun tp!1245839 () Bool)

(assert (=> b!4106430 (= e!2548324 (and tp!1245840 tp!1245839))))

(assert (=> b!4105840 (= tp!1245225 e!2548324)))

(declare-fun b!4106429 () Bool)

(declare-fun tp!1245841 () Bool)

(assert (=> b!4106429 (= e!2548324 tp!1245841)))

(assert (= (and b!4105840 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106427))

(assert (= (and b!4105840 ((_ is Concat!19495) (regTwo!24683 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106428))

(assert (= (and b!4105840 ((_ is Star!12085) (regTwo!24683 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106429))

(assert (= (and b!4105840 ((_ is Union!12085) (regTwo!24683 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106430))

(declare-fun b!4106431 () Bool)

(declare-fun e!2548325 () Bool)

(assert (=> b!4106431 (= e!2548325 tp_is_empty!21137)))

(declare-fun b!4106432 () Bool)

(declare-fun tp!1245848 () Bool)

(declare-fun tp!1245847 () Bool)

(assert (=> b!4106432 (= e!2548325 (and tp!1245848 tp!1245847))))

(declare-fun b!4106434 () Bool)

(declare-fun tp!1245845 () Bool)

(declare-fun tp!1245844 () Bool)

(assert (=> b!4106434 (= e!2548325 (and tp!1245845 tp!1245844))))

(assert (=> b!4105959 (= tp!1245372 e!2548325)))

(declare-fun b!4106433 () Bool)

(declare-fun tp!1245846 () Bool)

(assert (=> b!4106433 (= e!2548325 tp!1245846)))

(assert (= (and b!4105959 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106431))

(assert (= (and b!4105959 ((_ is Concat!19495) (reg!12414 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106432))

(assert (= (and b!4105959 ((_ is Star!12085) (reg!12414 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106433))

(assert (= (and b!4105959 ((_ is Union!12085) (reg!12414 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106434))

(declare-fun b!4106435 () Bool)

(declare-fun e!2548326 () Bool)

(assert (=> b!4106435 (= e!2548326 tp_is_empty!21137)))

(declare-fun b!4106436 () Bool)

(declare-fun tp!1245853 () Bool)

(declare-fun tp!1245852 () Bool)

(assert (=> b!4106436 (= e!2548326 (and tp!1245853 tp!1245852))))

(declare-fun b!4106438 () Bool)

(declare-fun tp!1245850 () Bool)

(declare-fun tp!1245849 () Bool)

(assert (=> b!4106438 (= e!2548326 (and tp!1245850 tp!1245849))))

(assert (=> b!4105869 (= tp!1245262 e!2548326)))

(declare-fun b!4106437 () Bool)

(declare-fun tp!1245851 () Bool)

(assert (=> b!4106437 (= e!2548326 tp!1245851)))

(assert (= (and b!4105869 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106435))

(assert (= (and b!4105869 ((_ is Concat!19495) (reg!12414 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106436))

(assert (= (and b!4105869 ((_ is Star!12085) (reg!12414 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106437))

(assert (= (and b!4105869 ((_ is Union!12085) (reg!12414 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106438))

(declare-fun b!4106439 () Bool)

(declare-fun e!2548327 () Bool)

(assert (=> b!4106439 (= e!2548327 tp_is_empty!21137)))

(declare-fun b!4106440 () Bool)

(declare-fun tp!1245858 () Bool)

(declare-fun tp!1245857 () Bool)

(assert (=> b!4106440 (= e!2548327 (and tp!1245858 tp!1245857))))

(declare-fun b!4106442 () Bool)

(declare-fun tp!1245855 () Bool)

(declare-fun tp!1245854 () Bool)

(assert (=> b!4106442 (= e!2548327 (and tp!1245855 tp!1245854))))

(assert (=> b!4105988 (= tp!1245401 e!2548327)))

(declare-fun b!4106441 () Bool)

(declare-fun tp!1245856 () Bool)

(assert (=> b!4106441 (= e!2548327 tp!1245856)))

(assert (= (and b!4105988 ((_ is ElementMatch!12085) (regOne!24683 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4106439))

(assert (= (and b!4105988 ((_ is Concat!19495) (regOne!24683 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4106440))

(assert (= (and b!4105988 ((_ is Star!12085) (regOne!24683 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4106441))

(assert (= (and b!4105988 ((_ is Union!12085) (regOne!24683 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4106442))

(declare-fun b!4106443 () Bool)

(declare-fun e!2548328 () Bool)

(assert (=> b!4106443 (= e!2548328 tp_is_empty!21137)))

(declare-fun b!4106444 () Bool)

(declare-fun tp!1245863 () Bool)

(declare-fun tp!1245862 () Bool)

(assert (=> b!4106444 (= e!2548328 (and tp!1245863 tp!1245862))))

(declare-fun b!4106446 () Bool)

(declare-fun tp!1245860 () Bool)

(declare-fun tp!1245859 () Bool)

(assert (=> b!4106446 (= e!2548328 (and tp!1245860 tp!1245859))))

(assert (=> b!4105988 (= tp!1245400 e!2548328)))

(declare-fun b!4106445 () Bool)

(declare-fun tp!1245861 () Bool)

(assert (=> b!4106445 (= e!2548328 tp!1245861)))

(assert (= (and b!4105988 ((_ is ElementMatch!12085) (regTwo!24683 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4106443))

(assert (= (and b!4105988 ((_ is Concat!19495) (regTwo!24683 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4106444))

(assert (= (and b!4105988 ((_ is Star!12085) (regTwo!24683 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4106445))

(assert (= (and b!4105988 ((_ is Union!12085) (regTwo!24683 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4106446))

(declare-fun b!4106447 () Bool)

(declare-fun e!2548329 () Bool)

(assert (=> b!4106447 (= e!2548329 tp_is_empty!21137)))

(declare-fun b!4106448 () Bool)

(declare-fun tp!1245868 () Bool)

(declare-fun tp!1245867 () Bool)

(assert (=> b!4106448 (= e!2548329 (and tp!1245868 tp!1245867))))

(declare-fun b!4106450 () Bool)

(declare-fun tp!1245865 () Bool)

(declare-fun tp!1245864 () Bool)

(assert (=> b!4106450 (= e!2548329 (and tp!1245865 tp!1245864))))

(assert (=> b!4105996 (= tp!1245411 e!2548329)))

(declare-fun b!4106449 () Bool)

(declare-fun tp!1245866 () Bool)

(assert (=> b!4106449 (= e!2548329 tp!1245866)))

(assert (= (and b!4105996 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106447))

(assert (= (and b!4105996 ((_ is Concat!19495) (regOne!24683 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106448))

(assert (= (and b!4105996 ((_ is Star!12085) (regOne!24683 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106449))

(assert (= (and b!4105996 ((_ is Union!12085) (regOne!24683 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106450))

(declare-fun b!4106451 () Bool)

(declare-fun e!2548330 () Bool)

(assert (=> b!4106451 (= e!2548330 tp_is_empty!21137)))

(declare-fun b!4106452 () Bool)

(declare-fun tp!1245873 () Bool)

(declare-fun tp!1245872 () Bool)

(assert (=> b!4106452 (= e!2548330 (and tp!1245873 tp!1245872))))

(declare-fun b!4106454 () Bool)

(declare-fun tp!1245870 () Bool)

(declare-fun tp!1245869 () Bool)

(assert (=> b!4106454 (= e!2548330 (and tp!1245870 tp!1245869))))

(assert (=> b!4105996 (= tp!1245410 e!2548330)))

(declare-fun b!4106453 () Bool)

(declare-fun tp!1245871 () Bool)

(assert (=> b!4106453 (= e!2548330 tp!1245871)))

(assert (= (and b!4105996 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106451))

(assert (= (and b!4105996 ((_ is Concat!19495) (regTwo!24683 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106452))

(assert (= (and b!4105996 ((_ is Star!12085) (regTwo!24683 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106453))

(assert (= (and b!4105996 ((_ is Union!12085) (regTwo!24683 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106454))

(declare-fun b!4106455 () Bool)

(declare-fun e!2548331 () Bool)

(assert (=> b!4106455 (= e!2548331 tp_is_empty!21137)))

(declare-fun b!4106456 () Bool)

(declare-fun tp!1245878 () Bool)

(declare-fun tp!1245877 () Bool)

(assert (=> b!4106456 (= e!2548331 (and tp!1245878 tp!1245877))))

(declare-fun b!4106458 () Bool)

(declare-fun tp!1245875 () Bool)

(declare-fun tp!1245874 () Bool)

(assert (=> b!4106458 (= e!2548331 (and tp!1245875 tp!1245874))))

(assert (=> b!4105924 (= tp!1245326 e!2548331)))

(declare-fun b!4106457 () Bool)

(declare-fun tp!1245876 () Bool)

(assert (=> b!4106457 (= e!2548331 tp!1245876)))

(assert (= (and b!4105924 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106455))

(assert (= (and b!4105924 ((_ is Concat!19495) (regOne!24683 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106456))

(assert (= (and b!4105924 ((_ is Star!12085) (regOne!24683 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106457))

(assert (= (and b!4105924 ((_ is Union!12085) (regOne!24683 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106458))

(declare-fun b!4106459 () Bool)

(declare-fun e!2548332 () Bool)

(assert (=> b!4106459 (= e!2548332 tp_is_empty!21137)))

(declare-fun b!4106460 () Bool)

(declare-fun tp!1245883 () Bool)

(declare-fun tp!1245882 () Bool)

(assert (=> b!4106460 (= e!2548332 (and tp!1245883 tp!1245882))))

(declare-fun b!4106462 () Bool)

(declare-fun tp!1245880 () Bool)

(declare-fun tp!1245879 () Bool)

(assert (=> b!4106462 (= e!2548332 (and tp!1245880 tp!1245879))))

(assert (=> b!4105924 (= tp!1245325 e!2548332)))

(declare-fun b!4106461 () Bool)

(declare-fun tp!1245881 () Bool)

(assert (=> b!4106461 (= e!2548332 tp!1245881)))

(assert (= (and b!4105924 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106459))

(assert (= (and b!4105924 ((_ is Concat!19495) (regTwo!24683 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106460))

(assert (= (and b!4105924 ((_ is Star!12085) (regTwo!24683 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106461))

(assert (= (and b!4105924 ((_ is Union!12085) (regTwo!24683 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106462))

(declare-fun b!4106463 () Bool)

(declare-fun e!2548333 () Bool)

(assert (=> b!4106463 (= e!2548333 tp_is_empty!21137)))

(declare-fun b!4106464 () Bool)

(declare-fun tp!1245888 () Bool)

(declare-fun tp!1245887 () Bool)

(assert (=> b!4106464 (= e!2548333 (and tp!1245888 tp!1245887))))

(declare-fun b!4106466 () Bool)

(declare-fun tp!1245885 () Bool)

(declare-fun tp!1245884 () Bool)

(assert (=> b!4106466 (= e!2548333 (and tp!1245885 tp!1245884))))

(assert (=> b!4105906 (= tp!1245309 e!2548333)))

(declare-fun b!4106465 () Bool)

(declare-fun tp!1245886 () Bool)

(assert (=> b!4106465 (= e!2548333 tp!1245886)))

(assert (= (and b!4105906 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106463))

(assert (= (and b!4105906 ((_ is Concat!19495) (regOne!24682 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106464))

(assert (= (and b!4105906 ((_ is Star!12085) (regOne!24682 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106465))

(assert (= (and b!4105906 ((_ is Union!12085) (regOne!24682 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106466))

(declare-fun b!4106467 () Bool)

(declare-fun e!2548334 () Bool)

(assert (=> b!4106467 (= e!2548334 tp_is_empty!21137)))

(declare-fun b!4106468 () Bool)

(declare-fun tp!1245893 () Bool)

(declare-fun tp!1245892 () Bool)

(assert (=> b!4106468 (= e!2548334 (and tp!1245893 tp!1245892))))

(declare-fun b!4106470 () Bool)

(declare-fun tp!1245890 () Bool)

(declare-fun tp!1245889 () Bool)

(assert (=> b!4106470 (= e!2548334 (and tp!1245890 tp!1245889))))

(assert (=> b!4105906 (= tp!1245308 e!2548334)))

(declare-fun b!4106469 () Bool)

(declare-fun tp!1245891 () Bool)

(assert (=> b!4106469 (= e!2548334 tp!1245891)))

(assert (= (and b!4105906 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106467))

(assert (= (and b!4105906 ((_ is Concat!19495) (regTwo!24682 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106468))

(assert (= (and b!4105906 ((_ is Star!12085) (regTwo!24682 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106469))

(assert (= (and b!4105906 ((_ is Union!12085) (regTwo!24682 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106470))

(declare-fun b!4106471 () Bool)

(declare-fun e!2548335 () Bool)

(assert (=> b!4106471 (= e!2548335 tp_is_empty!21137)))

(declare-fun b!4106472 () Bool)

(declare-fun tp!1245898 () Bool)

(declare-fun tp!1245897 () Bool)

(assert (=> b!4106472 (= e!2548335 (and tp!1245898 tp!1245897))))

(declare-fun b!4106474 () Bool)

(declare-fun tp!1245895 () Bool)

(declare-fun tp!1245894 () Bool)

(assert (=> b!4106474 (= e!2548335 (and tp!1245895 tp!1245894))))

(assert (=> b!4105915 (= tp!1245317 e!2548335)))

(declare-fun b!4106473 () Bool)

(declare-fun tp!1245896 () Bool)

(assert (=> b!4106473 (= e!2548335 tp!1245896)))

(assert (= (and b!4105915 ((_ is ElementMatch!12085) (reg!12414 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106471))

(assert (= (and b!4105915 ((_ is Concat!19495) (reg!12414 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106472))

(assert (= (and b!4105915 ((_ is Star!12085) (reg!12414 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106473))

(assert (= (and b!4105915 ((_ is Union!12085) (reg!12414 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106474))

(declare-fun b!4106475 () Bool)

(declare-fun e!2548336 () Bool)

(assert (=> b!4106475 (= e!2548336 tp_is_empty!21137)))

(declare-fun b!4106476 () Bool)

(declare-fun tp!1245903 () Bool)

(declare-fun tp!1245902 () Bool)

(assert (=> b!4106476 (= e!2548336 (and tp!1245903 tp!1245902))))

(declare-fun b!4106478 () Bool)

(declare-fun tp!1245900 () Bool)

(declare-fun tp!1245899 () Bool)

(assert (=> b!4106478 (= e!2548336 (and tp!1245900 tp!1245899))))

(assert (=> b!4105963 (= tp!1245377 e!2548336)))

(declare-fun b!4106477 () Bool)

(declare-fun tp!1245901 () Bool)

(assert (=> b!4106477 (= e!2548336 tp!1245901)))

(assert (= (and b!4105963 ((_ is ElementMatch!12085) (reg!12414 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106475))

(assert (= (and b!4105963 ((_ is Concat!19495) (reg!12414 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106476))

(assert (= (and b!4105963 ((_ is Star!12085) (reg!12414 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106477))

(assert (= (and b!4105963 ((_ is Union!12085) (reg!12414 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106478))

(declare-fun b!4106479 () Bool)

(declare-fun e!2548337 () Bool)

(assert (=> b!4106479 (= e!2548337 tp_is_empty!21137)))

(declare-fun b!4106480 () Bool)

(declare-fun tp!1245908 () Bool)

(declare-fun tp!1245907 () Bool)

(assert (=> b!4106480 (= e!2548337 (and tp!1245908 tp!1245907))))

(declare-fun b!4106482 () Bool)

(declare-fun tp!1245905 () Bool)

(declare-fun tp!1245904 () Bool)

(assert (=> b!4106482 (= e!2548337 (and tp!1245905 tp!1245904))))

(assert (=> b!4105788 (= tp!1245169 e!2548337)))

(declare-fun b!4106481 () Bool)

(declare-fun tp!1245906 () Bool)

(assert (=> b!4106481 (= e!2548337 tp!1245906)))

(assert (= (and b!4105788 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106479))

(assert (= (and b!4105788 ((_ is Concat!19495) (regOne!24682 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106480))

(assert (= (and b!4105788 ((_ is Star!12085) (regOne!24682 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106481))

(assert (= (and b!4105788 ((_ is Union!12085) (regOne!24682 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106482))

(declare-fun b!4106483 () Bool)

(declare-fun e!2548338 () Bool)

(assert (=> b!4106483 (= e!2548338 tp_is_empty!21137)))

(declare-fun b!4106484 () Bool)

(declare-fun tp!1245913 () Bool)

(declare-fun tp!1245912 () Bool)

(assert (=> b!4106484 (= e!2548338 (and tp!1245913 tp!1245912))))

(declare-fun b!4106486 () Bool)

(declare-fun tp!1245910 () Bool)

(declare-fun tp!1245909 () Bool)

(assert (=> b!4106486 (= e!2548338 (and tp!1245910 tp!1245909))))

(assert (=> b!4105788 (= tp!1245168 e!2548338)))

(declare-fun b!4106485 () Bool)

(declare-fun tp!1245911 () Bool)

(assert (=> b!4106485 (= e!2548338 tp!1245911)))

(assert (= (and b!4105788 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106483))

(assert (= (and b!4105788 ((_ is Concat!19495) (regTwo!24682 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106484))

(assert (= (and b!4105788 ((_ is Star!12085) (regTwo!24682 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106485))

(assert (= (and b!4105788 ((_ is Union!12085) (regTwo!24682 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106486))

(declare-fun b!4106487 () Bool)

(declare-fun e!2548339 () Bool)

(assert (=> b!4106487 (= e!2548339 tp_is_empty!21137)))

(declare-fun b!4106488 () Bool)

(declare-fun tp!1245918 () Bool)

(declare-fun tp!1245917 () Bool)

(assert (=> b!4106488 (= e!2548339 (and tp!1245918 tp!1245917))))

(declare-fun b!4106490 () Bool)

(declare-fun tp!1245915 () Bool)

(declare-fun tp!1245914 () Bool)

(assert (=> b!4106490 (= e!2548339 (and tp!1245915 tp!1245914))))

(assert (=> b!4105806 (= tp!1245186 e!2548339)))

(declare-fun b!4106489 () Bool)

(declare-fun tp!1245916 () Bool)

(assert (=> b!4106489 (= e!2548339 tp!1245916)))

(assert (= (and b!4105806 ((_ is ElementMatch!12085) (regOne!24683 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106487))

(assert (= (and b!4105806 ((_ is Concat!19495) (regOne!24683 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106488))

(assert (= (and b!4105806 ((_ is Star!12085) (regOne!24683 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106489))

(assert (= (and b!4105806 ((_ is Union!12085) (regOne!24683 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106490))

(declare-fun b!4106491 () Bool)

(declare-fun e!2548340 () Bool)

(assert (=> b!4106491 (= e!2548340 tp_is_empty!21137)))

(declare-fun b!4106492 () Bool)

(declare-fun tp!1245923 () Bool)

(declare-fun tp!1245922 () Bool)

(assert (=> b!4106492 (= e!2548340 (and tp!1245923 tp!1245922))))

(declare-fun b!4106494 () Bool)

(declare-fun tp!1245920 () Bool)

(declare-fun tp!1245919 () Bool)

(assert (=> b!4106494 (= e!2548340 (and tp!1245920 tp!1245919))))

(assert (=> b!4105806 (= tp!1245185 e!2548340)))

(declare-fun b!4106493 () Bool)

(declare-fun tp!1245921 () Bool)

(assert (=> b!4106493 (= e!2548340 tp!1245921)))

(assert (= (and b!4105806 ((_ is ElementMatch!12085) (regTwo!24683 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106491))

(assert (= (and b!4105806 ((_ is Concat!19495) (regTwo!24683 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106492))

(assert (= (and b!4105806 ((_ is Star!12085) (regTwo!24683 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106493))

(assert (= (and b!4105806 ((_ is Union!12085) (regTwo!24683 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106494))

(declare-fun b!4106495 () Bool)

(declare-fun e!2548341 () Bool)

(assert (=> b!4106495 (= e!2548341 tp_is_empty!21137)))

(declare-fun b!4106496 () Bool)

(declare-fun tp!1245928 () Bool)

(declare-fun tp!1245927 () Bool)

(assert (=> b!4106496 (= e!2548341 (and tp!1245928 tp!1245927))))

(declare-fun b!4106498 () Bool)

(declare-fun tp!1245925 () Bool)

(declare-fun tp!1245924 () Bool)

(assert (=> b!4106498 (= e!2548341 (and tp!1245925 tp!1245924))))

(assert (=> b!4105970 (= tp!1245382 e!2548341)))

(declare-fun b!4106497 () Bool)

(declare-fun tp!1245926 () Bool)

(assert (=> b!4106497 (= e!2548341 tp!1245926)))

(assert (= (and b!4105970 ((_ is ElementMatch!12085) (reg!12414 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106495))

(assert (= (and b!4105970 ((_ is Concat!19495) (reg!12414 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106496))

(assert (= (and b!4105970 ((_ is Star!12085) (reg!12414 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106497))

(assert (= (and b!4105970 ((_ is Union!12085) (reg!12414 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106498))

(declare-fun b!4106499 () Bool)

(declare-fun e!2548342 () Bool)

(assert (=> b!4106499 (= e!2548342 tp_is_empty!21137)))

(declare-fun b!4106500 () Bool)

(declare-fun tp!1245933 () Bool)

(declare-fun tp!1245932 () Bool)

(assert (=> b!4106500 (= e!2548342 (and tp!1245933 tp!1245932))))

(declare-fun b!4106502 () Bool)

(declare-fun tp!1245930 () Bool)

(declare-fun tp!1245929 () Bool)

(assert (=> b!4106502 (= e!2548342 (and tp!1245930 tp!1245929))))

(assert (=> b!4105797 (= tp!1245177 e!2548342)))

(declare-fun b!4106501 () Bool)

(declare-fun tp!1245931 () Bool)

(assert (=> b!4106501 (= e!2548342 tp!1245931)))

(assert (= (and b!4105797 ((_ is ElementMatch!12085) (reg!12414 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106499))

(assert (= (and b!4105797 ((_ is Concat!19495) (reg!12414 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106500))

(assert (= (and b!4105797 ((_ is Star!12085) (reg!12414 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106501))

(assert (= (and b!4105797 ((_ is Union!12085) (reg!12414 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106502))

(declare-fun b!4106503 () Bool)

(declare-fun e!2548343 () Bool)

(assert (=> b!4106503 (= e!2548343 tp_is_empty!21137)))

(declare-fun b!4106504 () Bool)

(declare-fun tp!1245938 () Bool)

(declare-fun tp!1245937 () Bool)

(assert (=> b!4106504 (= e!2548343 (and tp!1245938 tp!1245937))))

(declare-fun b!4106506 () Bool)

(declare-fun tp!1245935 () Bool)

(declare-fun tp!1245934 () Bool)

(assert (=> b!4106506 (= e!2548343 (and tp!1245935 tp!1245934))))

(assert (=> b!4105761 (= tp!1245140 e!2548343)))

(declare-fun b!4106505 () Bool)

(declare-fun tp!1245936 () Bool)

(assert (=> b!4106505 (= e!2548343 tp!1245936)))

(assert (= (and b!4105761 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106503))

(assert (= (and b!4105761 ((_ is Concat!19495) (regOne!24682 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106504))

(assert (= (and b!4105761 ((_ is Star!12085) (regOne!24682 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106505))

(assert (= (and b!4105761 ((_ is Union!12085) (regOne!24682 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106506))

(declare-fun b!4106507 () Bool)

(declare-fun e!2548344 () Bool)

(assert (=> b!4106507 (= e!2548344 tp_is_empty!21137)))

(declare-fun b!4106508 () Bool)

(declare-fun tp!1245943 () Bool)

(declare-fun tp!1245942 () Bool)

(assert (=> b!4106508 (= e!2548344 (and tp!1245943 tp!1245942))))

(declare-fun b!4106510 () Bool)

(declare-fun tp!1245940 () Bool)

(declare-fun tp!1245939 () Bool)

(assert (=> b!4106510 (= e!2548344 (and tp!1245940 tp!1245939))))

(assert (=> b!4105761 (= tp!1245139 e!2548344)))

(declare-fun b!4106509 () Bool)

(declare-fun tp!1245941 () Bool)

(assert (=> b!4106509 (= e!2548344 tp!1245941)))

(assert (= (and b!4105761 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106507))

(assert (= (and b!4105761 ((_ is Concat!19495) (regTwo!24682 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106508))

(assert (= (and b!4105761 ((_ is Star!12085) (regTwo!24682 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106509))

(assert (= (and b!4105761 ((_ is Union!12085) (regTwo!24682 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106510))

(declare-fun b!4106511 () Bool)

(declare-fun e!2548345 () Bool)

(assert (=> b!4106511 (= e!2548345 tp_is_empty!21137)))

(declare-fun b!4106512 () Bool)

(declare-fun tp!1245948 () Bool)

(declare-fun tp!1245947 () Bool)

(assert (=> b!4106512 (= e!2548345 (and tp!1245948 tp!1245947))))

(declare-fun b!4106514 () Bool)

(declare-fun tp!1245945 () Bool)

(declare-fun tp!1245944 () Bool)

(assert (=> b!4106514 (= e!2548345 (and tp!1245945 tp!1245944))))

(assert (=> b!4105956 (= tp!1245366 e!2548345)))

(declare-fun b!4106513 () Bool)

(declare-fun tp!1245946 () Bool)

(assert (=> b!4106513 (= e!2548345 tp!1245946)))

(assert (= (and b!4105956 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106511))

(assert (= (and b!4105956 ((_ is Concat!19495) (regOne!24683 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106512))

(assert (= (and b!4105956 ((_ is Star!12085) (regOne!24683 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106513))

(assert (= (and b!4105956 ((_ is Union!12085) (regOne!24683 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106514))

(declare-fun b!4106515 () Bool)

(declare-fun e!2548346 () Bool)

(assert (=> b!4106515 (= e!2548346 tp_is_empty!21137)))

(declare-fun b!4106516 () Bool)

(declare-fun tp!1245953 () Bool)

(declare-fun tp!1245952 () Bool)

(assert (=> b!4106516 (= e!2548346 (and tp!1245953 tp!1245952))))

(declare-fun b!4106518 () Bool)

(declare-fun tp!1245950 () Bool)

(declare-fun tp!1245949 () Bool)

(assert (=> b!4106518 (= e!2548346 (and tp!1245950 tp!1245949))))

(assert (=> b!4105956 (= tp!1245365 e!2548346)))

(declare-fun b!4106517 () Bool)

(declare-fun tp!1245951 () Bool)

(assert (=> b!4106517 (= e!2548346 tp!1245951)))

(assert (= (and b!4105956 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106515))

(assert (= (and b!4105956 ((_ is Concat!19495) (regTwo!24683 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106516))

(assert (= (and b!4105956 ((_ is Star!12085) (regTwo!24683 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106517))

(assert (= (and b!4105956 ((_ is Union!12085) (regTwo!24683 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106518))

(declare-fun b!4106519 () Bool)

(declare-fun e!2548347 () Bool)

(assert (=> b!4106519 (= e!2548347 tp_is_empty!21137)))

(declare-fun b!4106520 () Bool)

(declare-fun tp!1245958 () Bool)

(declare-fun tp!1245957 () Bool)

(assert (=> b!4106520 (= e!2548347 (and tp!1245958 tp!1245957))))

(declare-fun b!4106522 () Bool)

(declare-fun tp!1245955 () Bool)

(declare-fun tp!1245954 () Bool)

(assert (=> b!4106522 (= e!2548347 (and tp!1245955 tp!1245954))))

(assert (=> b!4105843 (= tp!1245232 e!2548347)))

(declare-fun b!4106521 () Bool)

(declare-fun tp!1245956 () Bool)

(assert (=> b!4106521 (= e!2548347 tp!1245956)))

(assert (= (and b!4105843 ((_ is ElementMatch!12085) (reg!12414 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106519))

(assert (= (and b!4105843 ((_ is Concat!19495) (reg!12414 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106520))

(assert (= (and b!4105843 ((_ is Star!12085) (reg!12414 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106521))

(assert (= (and b!4105843 ((_ is Union!12085) (reg!12414 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106522))

(declare-fun b!4106525 () Bool)

(declare-fun b_free!115337 () Bool)

(declare-fun b_next!116041 () Bool)

(assert (=> b!4106525 (= b_free!115337 (not b_next!116041))))

(declare-fun tp!1245962 () Bool)

(declare-fun b_and!317151 () Bool)

(assert (=> b!4106525 (= tp!1245962 b_and!317151)))

(declare-fun b_free!115339 () Bool)

(declare-fun b_next!116043 () Bool)

(assert (=> b!4106525 (= b_free!115339 (not b_next!116043))))

(declare-fun tp!1245961 () Bool)

(declare-fun b_and!317153 () Bool)

(assert (=> b!4106525 (= tp!1245961 b_and!317153)))

(declare-fun e!2548349 () Bool)

(assert (=> b!4106525 (= e!2548349 (and tp!1245962 tp!1245961))))

(declare-fun e!2548351 () Bool)

(declare-fun b!4106524 () Bool)

(declare-fun tp!1245959 () Bool)

(assert (=> b!4106524 (= e!2548351 (and tp!1245959 (inv!58853 (tag!8040 (h!49618 (t!339979 (t!339979 (t!339979 (t!339979 rTail!27))))))) (inv!58855 (transformation!7180 (h!49618 (t!339979 (t!339979 (t!339979 (t!339979 rTail!27))))))) e!2548349))))

(declare-fun b!4106523 () Bool)

(declare-fun e!2548348 () Bool)

(declare-fun tp!1245960 () Bool)

(assert (=> b!4106523 (= e!2548348 (and e!2548351 tp!1245960))))

(assert (=> b!4105776 (= tp!1245152 e!2548348)))

(assert (= b!4106524 b!4106525))

(assert (= b!4106523 b!4106524))

(assert (= (and b!4105776 ((_ is Cons!44198) (t!339979 (t!339979 (t!339979 (t!339979 rTail!27)))))) b!4106523))

(declare-fun m!4710959 () Bool)

(assert (=> b!4106524 m!4710959))

(declare-fun m!4710961 () Bool)

(assert (=> b!4106524 m!4710961))

(declare-fun b!4106526 () Bool)

(declare-fun e!2548352 () Bool)

(assert (=> b!4106526 (= e!2548352 tp_is_empty!21137)))

(declare-fun b!4106527 () Bool)

(declare-fun tp!1245967 () Bool)

(declare-fun tp!1245966 () Bool)

(assert (=> b!4106527 (= e!2548352 (and tp!1245967 tp!1245966))))

(declare-fun b!4106529 () Bool)

(declare-fun tp!1245964 () Bool)

(declare-fun tp!1245963 () Bool)

(assert (=> b!4106529 (= e!2548352 (and tp!1245964 tp!1245963))))

(assert (=> b!4105938 (= tp!1245349 e!2548352)))

(declare-fun b!4106528 () Bool)

(declare-fun tp!1245965 () Bool)

(assert (=> b!4106528 (= e!2548352 tp!1245965)))

(assert (= (and b!4105938 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106526))

(assert (= (and b!4105938 ((_ is Concat!19495) (regOne!24682 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106527))

(assert (= (and b!4105938 ((_ is Star!12085) (regOne!24682 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106528))

(assert (= (and b!4105938 ((_ is Union!12085) (regOne!24682 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106529))

(declare-fun b!4106530 () Bool)

(declare-fun e!2548353 () Bool)

(assert (=> b!4106530 (= e!2548353 tp_is_empty!21137)))

(declare-fun b!4106531 () Bool)

(declare-fun tp!1245972 () Bool)

(declare-fun tp!1245971 () Bool)

(assert (=> b!4106531 (= e!2548353 (and tp!1245972 tp!1245971))))

(declare-fun b!4106533 () Bool)

(declare-fun tp!1245969 () Bool)

(declare-fun tp!1245968 () Bool)

(assert (=> b!4106533 (= e!2548353 (and tp!1245969 tp!1245968))))

(assert (=> b!4105938 (= tp!1245348 e!2548353)))

(declare-fun b!4106532 () Bool)

(declare-fun tp!1245970 () Bool)

(assert (=> b!4106532 (= e!2548353 tp!1245970)))

(assert (= (and b!4105938 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106530))

(assert (= (and b!4105938 ((_ is Concat!19495) (regTwo!24682 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106531))

(assert (= (and b!4105938 ((_ is Star!12085) (regTwo!24682 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106532))

(assert (= (and b!4105938 ((_ is Union!12085) (regTwo!24682 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106533))

(declare-fun b!4106534 () Bool)

(declare-fun e!2548354 () Bool)

(assert (=> b!4106534 (= e!2548354 tp_is_empty!21137)))

(declare-fun b!4106535 () Bool)

(declare-fun tp!1245977 () Bool)

(declare-fun tp!1245976 () Bool)

(assert (=> b!4106535 (= e!2548354 (and tp!1245977 tp!1245976))))

(declare-fun b!4106537 () Bool)

(declare-fun tp!1245974 () Bool)

(declare-fun tp!1245973 () Bool)

(assert (=> b!4106537 (= e!2548354 (and tp!1245974 tp!1245973))))

(assert (=> b!4105770 (= tp!1245148 e!2548354)))

(declare-fun b!4106536 () Bool)

(declare-fun tp!1245975 () Bool)

(assert (=> b!4106536 (= e!2548354 tp!1245975)))

(assert (= (and b!4105770 ((_ is ElementMatch!12085) (reg!12414 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4106534))

(assert (= (and b!4105770 ((_ is Concat!19495) (reg!12414 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4106535))

(assert (= (and b!4105770 ((_ is Star!12085) (reg!12414 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4106536))

(assert (= (and b!4105770 ((_ is Union!12085) (reg!12414 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4106537))

(declare-fun b!4106538 () Bool)

(declare-fun e!2548355 () Bool)

(assert (=> b!4106538 (= e!2548355 tp_is_empty!21137)))

(declare-fun b!4106539 () Bool)

(declare-fun tp!1245982 () Bool)

(declare-fun tp!1245981 () Bool)

(assert (=> b!4106539 (= e!2548355 (and tp!1245982 tp!1245981))))

(declare-fun b!4106541 () Bool)

(declare-fun tp!1245979 () Bool)

(declare-fun tp!1245978 () Bool)

(assert (=> b!4106541 (= e!2548355 (and tp!1245979 tp!1245978))))

(assert (=> b!4105947 (= tp!1245357 e!2548355)))

(declare-fun b!4106540 () Bool)

(declare-fun tp!1245980 () Bool)

(assert (=> b!4106540 (= e!2548355 tp!1245980)))

(assert (= (and b!4105947 ((_ is ElementMatch!12085) (reg!12414 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106538))

(assert (= (and b!4105947 ((_ is Concat!19495) (reg!12414 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106539))

(assert (= (and b!4105947 ((_ is Star!12085) (reg!12414 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106540))

(assert (= (and b!4105947 ((_ is Union!12085) (reg!12414 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106541))

(declare-fun b!4106542 () Bool)

(declare-fun e!2548356 () Bool)

(assert (=> b!4106542 (= e!2548356 tp_is_empty!21137)))

(declare-fun b!4106543 () Bool)

(declare-fun tp!1245987 () Bool)

(declare-fun tp!1245986 () Bool)

(assert (=> b!4106543 (= e!2548356 (and tp!1245987 tp!1245986))))

(declare-fun b!4106545 () Bool)

(declare-fun tp!1245984 () Bool)

(declare-fun tp!1245983 () Bool)

(assert (=> b!4106545 (= e!2548356 (and tp!1245984 tp!1245983))))

(assert (=> b!4105888 (= tp!1245281 e!2548356)))

(declare-fun b!4106544 () Bool)

(declare-fun tp!1245985 () Bool)

(assert (=> b!4106544 (= e!2548356 tp!1245985)))

(assert (= (and b!4105888 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106542))

(assert (= (and b!4105888 ((_ is Concat!19495) (regOne!24683 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106543))

(assert (= (and b!4105888 ((_ is Star!12085) (regOne!24683 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106544))

(assert (= (and b!4105888 ((_ is Union!12085) (regOne!24683 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106545))

(declare-fun b!4106546 () Bool)

(declare-fun e!2548357 () Bool)

(assert (=> b!4106546 (= e!2548357 tp_is_empty!21137)))

(declare-fun b!4106547 () Bool)

(declare-fun tp!1245992 () Bool)

(declare-fun tp!1245991 () Bool)

(assert (=> b!4106547 (= e!2548357 (and tp!1245992 tp!1245991))))

(declare-fun b!4106549 () Bool)

(declare-fun tp!1245989 () Bool)

(declare-fun tp!1245988 () Bool)

(assert (=> b!4106549 (= e!2548357 (and tp!1245989 tp!1245988))))

(assert (=> b!4105888 (= tp!1245280 e!2548357)))

(declare-fun b!4106548 () Bool)

(declare-fun tp!1245990 () Bool)

(assert (=> b!4106548 (= e!2548357 tp!1245990)))

(assert (= (and b!4105888 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106546))

(assert (= (and b!4105888 ((_ is Concat!19495) (regTwo!24683 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106547))

(assert (= (and b!4105888 ((_ is Star!12085) (regTwo!24683 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106548))

(assert (= (and b!4105888 ((_ is Union!12085) (regTwo!24683 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106549))

(declare-fun b!4106550 () Bool)

(declare-fun e!2548358 () Bool)

(assert (=> b!4106550 (= e!2548358 tp_is_empty!21137)))

(declare-fun b!4106551 () Bool)

(declare-fun tp!1245997 () Bool)

(declare-fun tp!1245996 () Bool)

(assert (=> b!4106551 (= e!2548358 (and tp!1245997 tp!1245996))))

(declare-fun b!4106553 () Bool)

(declare-fun tp!1245994 () Bool)

(declare-fun tp!1245993 () Bool)

(assert (=> b!4106553 (= e!2548358 (and tp!1245994 tp!1245993))))

(assert (=> b!4105895 (= tp!1245292 e!2548358)))

(declare-fun b!4106552 () Bool)

(declare-fun tp!1245995 () Bool)

(assert (=> b!4106552 (= e!2548358 tp!1245995)))

(assert (= (and b!4105895 ((_ is ElementMatch!12085) (reg!12414 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106550))

(assert (= (and b!4105895 ((_ is Concat!19495) (reg!12414 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106551))

(assert (= (and b!4105895 ((_ is Star!12085) (reg!12414 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106552))

(assert (= (and b!4105895 ((_ is Union!12085) (reg!12414 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106553))

(declare-fun b!4106554 () Bool)

(declare-fun e!2548359 () Bool)

(assert (=> b!4106554 (= e!2548359 tp_is_empty!21137)))

(declare-fun b!4106555 () Bool)

(declare-fun tp!1246002 () Bool)

(declare-fun tp!1246001 () Bool)

(assert (=> b!4106555 (= e!2548359 (and tp!1246002 tp!1246001))))

(declare-fun b!4106557 () Bool)

(declare-fun tp!1245999 () Bool)

(declare-fun tp!1245998 () Bool)

(assert (=> b!4106557 (= e!2548359 (and tp!1245999 tp!1245998))))

(assert (=> b!4105873 (= tp!1245267 e!2548359)))

(declare-fun b!4106556 () Bool)

(declare-fun tp!1246000 () Bool)

(assert (=> b!4106556 (= e!2548359 tp!1246000)))

(assert (= (and b!4105873 ((_ is ElementMatch!12085) (reg!12414 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106554))

(assert (= (and b!4105873 ((_ is Concat!19495) (reg!12414 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106555))

(assert (= (and b!4105873 ((_ is Star!12085) (reg!12414 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106556))

(assert (= (and b!4105873 ((_ is Union!12085) (reg!12414 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106557))

(declare-fun b!4106558 () Bool)

(declare-fun e!2548360 () Bool)

(assert (=> b!4106558 (= e!2548360 tp_is_empty!21137)))

(declare-fun b!4106559 () Bool)

(declare-fun tp!1246007 () Bool)

(declare-fun tp!1246006 () Bool)

(assert (=> b!4106559 (= e!2548360 (and tp!1246007 tp!1246006))))

(declare-fun b!4106561 () Bool)

(declare-fun tp!1246004 () Bool)

(declare-fun tp!1246003 () Bool)

(assert (=> b!4106561 (= e!2548360 (and tp!1246004 tp!1246003))))

(assert (=> b!4105904 (= tp!1245301 e!2548360)))

(declare-fun b!4106560 () Bool)

(declare-fun tp!1246005 () Bool)

(assert (=> b!4106560 (= e!2548360 tp!1246005)))

(assert (= (and b!4105904 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106558))

(assert (= (and b!4105904 ((_ is Concat!19495) (regOne!24683 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106559))

(assert (= (and b!4105904 ((_ is Star!12085) (regOne!24683 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106560))

(assert (= (and b!4105904 ((_ is Union!12085) (regOne!24683 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106561))

(declare-fun b!4106562 () Bool)

(declare-fun e!2548361 () Bool)

(assert (=> b!4106562 (= e!2548361 tp_is_empty!21137)))

(declare-fun b!4106563 () Bool)

(declare-fun tp!1246012 () Bool)

(declare-fun tp!1246011 () Bool)

(assert (=> b!4106563 (= e!2548361 (and tp!1246012 tp!1246011))))

(declare-fun b!4106565 () Bool)

(declare-fun tp!1246009 () Bool)

(declare-fun tp!1246008 () Bool)

(assert (=> b!4106565 (= e!2548361 (and tp!1246009 tp!1246008))))

(assert (=> b!4105904 (= tp!1245300 e!2548361)))

(declare-fun b!4106564 () Bool)

(declare-fun tp!1246010 () Bool)

(assert (=> b!4106564 (= e!2548361 tp!1246010)))

(assert (= (and b!4105904 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106562))

(assert (= (and b!4105904 ((_ is Concat!19495) (regTwo!24683 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106563))

(assert (= (and b!4105904 ((_ is Star!12085) (regTwo!24683 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106564))

(assert (= (and b!4105904 ((_ is Union!12085) (regTwo!24683 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106565))

(declare-fun b!4106566 () Bool)

(declare-fun e!2548362 () Bool)

(assert (=> b!4106566 (= e!2548362 tp_is_empty!21137)))

(declare-fun b!4106567 () Bool)

(declare-fun tp!1246017 () Bool)

(declare-fun tp!1246016 () Bool)

(assert (=> b!4106567 (= e!2548362 (and tp!1246017 tp!1246016))))

(declare-fun b!4106569 () Bool)

(declare-fun tp!1246014 () Bool)

(declare-fun tp!1246013 () Bool)

(assert (=> b!4106569 (= e!2548362 (and tp!1246014 tp!1246013))))

(assert (=> b!4105827 (= tp!1245212 e!2548362)))

(declare-fun b!4106568 () Bool)

(declare-fun tp!1246015 () Bool)

(assert (=> b!4106568 (= e!2548362 tp!1246015)))

(assert (= (and b!4105827 ((_ is ElementMatch!12085) (reg!12414 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4106566))

(assert (= (and b!4105827 ((_ is Concat!19495) (reg!12414 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4106567))

(assert (= (and b!4105827 ((_ is Star!12085) (reg!12414 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4106568))

(assert (= (and b!4105827 ((_ is Union!12085) (reg!12414 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4106569))

(declare-fun b!4106570 () Bool)

(declare-fun e!2548363 () Bool)

(assert (=> b!4106570 (= e!2548363 tp_is_empty!21137)))

(declare-fun b!4106571 () Bool)

(declare-fun tp!1246022 () Bool)

(declare-fun tp!1246021 () Bool)

(assert (=> b!4106571 (= e!2548363 (and tp!1246022 tp!1246021))))

(declare-fun b!4106573 () Bool)

(declare-fun tp!1246019 () Bool)

(declare-fun tp!1246018 () Bool)

(assert (=> b!4106573 (= e!2548363 (and tp!1246019 tp!1246018))))

(assert (=> b!4105826 (= tp!1245214 e!2548363)))

(declare-fun b!4106572 () Bool)

(declare-fun tp!1246020 () Bool)

(assert (=> b!4106572 (= e!2548363 tp!1246020)))

(assert (= (and b!4105826 ((_ is ElementMatch!12085) (regOne!24682 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4106570))

(assert (= (and b!4105826 ((_ is Concat!19495) (regOne!24682 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4106571))

(assert (= (and b!4105826 ((_ is Star!12085) (regOne!24682 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4106572))

(assert (= (and b!4105826 ((_ is Union!12085) (regOne!24682 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4106573))

(declare-fun b!4106574 () Bool)

(declare-fun e!2548364 () Bool)

(assert (=> b!4106574 (= e!2548364 tp_is_empty!21137)))

(declare-fun b!4106575 () Bool)

(declare-fun tp!1246027 () Bool)

(declare-fun tp!1246026 () Bool)

(assert (=> b!4106575 (= e!2548364 (and tp!1246027 tp!1246026))))

(declare-fun b!4106577 () Bool)

(declare-fun tp!1246024 () Bool)

(declare-fun tp!1246023 () Bool)

(assert (=> b!4106577 (= e!2548364 (and tp!1246024 tp!1246023))))

(assert (=> b!4105826 (= tp!1245213 e!2548364)))

(declare-fun b!4106576 () Bool)

(declare-fun tp!1246025 () Bool)

(assert (=> b!4106576 (= e!2548364 tp!1246025)))

(assert (= (and b!4105826 ((_ is ElementMatch!12085) (regTwo!24682 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4106574))

(assert (= (and b!4105826 ((_ is Concat!19495) (regTwo!24682 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4106575))

(assert (= (and b!4105826 ((_ is Star!12085) (regTwo!24682 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4106576))

(assert (= (and b!4105826 ((_ is Union!12085) (regTwo!24682 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4106577))

(declare-fun b!4106578 () Bool)

(declare-fun e!2548365 () Bool)

(assert (=> b!4106578 (= e!2548365 tp_is_empty!21137)))

(declare-fun b!4106579 () Bool)

(declare-fun tp!1246032 () Bool)

(declare-fun tp!1246031 () Bool)

(assert (=> b!4106579 (= e!2548365 (and tp!1246032 tp!1246031))))

(declare-fun b!4106581 () Bool)

(declare-fun tp!1246029 () Bool)

(declare-fun tp!1246028 () Bool)

(assert (=> b!4106581 (= e!2548365 (and tp!1246029 tp!1246028))))

(assert (=> b!4105912 (= tp!1245311 e!2548365)))

(declare-fun b!4106580 () Bool)

(declare-fun tp!1246030 () Bool)

(assert (=> b!4106580 (= e!2548365 tp!1246030)))

(assert (= (and b!4105912 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106578))

(assert (= (and b!4105912 ((_ is Concat!19495) (regOne!24683 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106579))

(assert (= (and b!4105912 ((_ is Star!12085) (regOne!24683 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106580))

(assert (= (and b!4105912 ((_ is Union!12085) (regOne!24683 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106581))

(declare-fun b!4106582 () Bool)

(declare-fun e!2548366 () Bool)

(assert (=> b!4106582 (= e!2548366 tp_is_empty!21137)))

(declare-fun b!4106583 () Bool)

(declare-fun tp!1246037 () Bool)

(declare-fun tp!1246036 () Bool)

(assert (=> b!4106583 (= e!2548366 (and tp!1246037 tp!1246036))))

(declare-fun b!4106585 () Bool)

(declare-fun tp!1246034 () Bool)

(declare-fun tp!1246033 () Bool)

(assert (=> b!4106585 (= e!2548366 (and tp!1246034 tp!1246033))))

(assert (=> b!4105912 (= tp!1245310 e!2548366)))

(declare-fun b!4106584 () Bool)

(declare-fun tp!1246035 () Bool)

(assert (=> b!4106584 (= e!2548366 tp!1246035)))

(assert (= (and b!4105912 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106582))

(assert (= (and b!4105912 ((_ is Concat!19495) (regTwo!24683 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106583))

(assert (= (and b!4105912 ((_ is Star!12085) (regTwo!24683 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106584))

(assert (= (and b!4105912 ((_ is Union!12085) (regTwo!24683 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106585))

(declare-fun b!4106586 () Bool)

(declare-fun e!2548367 () Bool)

(assert (=> b!4106586 (= e!2548367 tp_is_empty!21137)))

(declare-fun b!4106587 () Bool)

(declare-fun tp!1246042 () Bool)

(declare-fun tp!1246041 () Bool)

(assert (=> b!4106587 (= e!2548367 (and tp!1246042 tp!1246041))))

(declare-fun b!4106589 () Bool)

(declare-fun tp!1246039 () Bool)

(declare-fun tp!1246038 () Bool)

(assert (=> b!4106589 (= e!2548367 (and tp!1246039 tp!1246038))))

(assert (=> b!4105856 (= tp!1245249 e!2548367)))

(declare-fun b!4106588 () Bool)

(declare-fun tp!1246040 () Bool)

(assert (=> b!4106588 (= e!2548367 tp!1246040)))

(assert (= (and b!4105856 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106586))

(assert (= (and b!4105856 ((_ is Concat!19495) (regOne!24682 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106587))

(assert (= (and b!4105856 ((_ is Star!12085) (regOne!24682 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106588))

(assert (= (and b!4105856 ((_ is Union!12085) (regOne!24682 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106589))

(declare-fun b!4106590 () Bool)

(declare-fun e!2548368 () Bool)

(assert (=> b!4106590 (= e!2548368 tp_is_empty!21137)))

(declare-fun b!4106591 () Bool)

(declare-fun tp!1246047 () Bool)

(declare-fun tp!1246046 () Bool)

(assert (=> b!4106591 (= e!2548368 (and tp!1246047 tp!1246046))))

(declare-fun b!4106593 () Bool)

(declare-fun tp!1246044 () Bool)

(declare-fun tp!1246043 () Bool)

(assert (=> b!4106593 (= e!2548368 (and tp!1246044 tp!1246043))))

(assert (=> b!4105856 (= tp!1245248 e!2548368)))

(declare-fun b!4106592 () Bool)

(declare-fun tp!1246045 () Bool)

(assert (=> b!4106592 (= e!2548368 tp!1246045)))

(assert (= (and b!4105856 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106590))

(assert (= (and b!4105856 ((_ is Concat!19495) (regTwo!24682 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106591))

(assert (= (and b!4105856 ((_ is Star!12085) (regTwo!24682 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106592))

(assert (= (and b!4105856 ((_ is Union!12085) (regTwo!24682 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106593))

(declare-fun b!4106594 () Bool)

(declare-fun e!2548369 () Bool)

(assert (=> b!4106594 (= e!2548369 tp_is_empty!21137)))

(declare-fun b!4106595 () Bool)

(declare-fun tp!1246052 () Bool)

(declare-fun tp!1246051 () Bool)

(assert (=> b!4106595 (= e!2548369 (and tp!1246052 tp!1246051))))

(declare-fun b!4106597 () Bool)

(declare-fun tp!1246049 () Bool)

(declare-fun tp!1246048 () Bool)

(assert (=> b!4106597 (= e!2548369 (and tp!1246049 tp!1246048))))

(assert (=> b!4105794 (= tp!1245171 e!2548369)))

(declare-fun b!4106596 () Bool)

(declare-fun tp!1246050 () Bool)

(assert (=> b!4106596 (= e!2548369 tp!1246050)))

(assert (= (and b!4105794 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106594))

(assert (= (and b!4105794 ((_ is Concat!19495) (regOne!24683 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106595))

(assert (= (and b!4105794 ((_ is Star!12085) (regOne!24683 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106596))

(assert (= (and b!4105794 ((_ is Union!12085) (regOne!24683 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106597))

(declare-fun b!4106598 () Bool)

(declare-fun e!2548370 () Bool)

(assert (=> b!4106598 (= e!2548370 tp_is_empty!21137)))

(declare-fun b!4106599 () Bool)

(declare-fun tp!1246057 () Bool)

(declare-fun tp!1246056 () Bool)

(assert (=> b!4106599 (= e!2548370 (and tp!1246057 tp!1246056))))

(declare-fun b!4106601 () Bool)

(declare-fun tp!1246054 () Bool)

(declare-fun tp!1246053 () Bool)

(assert (=> b!4106601 (= e!2548370 (and tp!1246054 tp!1246053))))

(assert (=> b!4105794 (= tp!1245170 e!2548370)))

(declare-fun b!4106600 () Bool)

(declare-fun tp!1246055 () Bool)

(assert (=> b!4106600 (= e!2548370 tp!1246055)))

(assert (= (and b!4105794 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106598))

(assert (= (and b!4105794 ((_ is Concat!19495) (regTwo!24683 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106599))

(assert (= (and b!4105794 ((_ is Star!12085) (regTwo!24683 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106600))

(assert (= (and b!4105794 ((_ is Union!12085) (regTwo!24683 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106601))

(declare-fun b!4106602 () Bool)

(declare-fun e!2548371 () Bool)

(assert (=> b!4106602 (= e!2548371 tp_is_empty!21137)))

(declare-fun b!4106603 () Bool)

(declare-fun tp!1246062 () Bool)

(declare-fun tp!1246061 () Bool)

(assert (=> b!4106603 (= e!2548371 (and tp!1246062 tp!1246061))))

(declare-fun b!4106605 () Bool)

(declare-fun tp!1246059 () Bool)

(declare-fun tp!1246058 () Bool)

(assert (=> b!4106605 (= e!2548371 (and tp!1246059 tp!1246058))))

(assert (=> b!4105785 (= tp!1245162 e!2548371)))

(declare-fun b!4106604 () Bool)

(declare-fun tp!1246060 () Bool)

(assert (=> b!4106604 (= e!2548371 tp!1246060)))

(assert (= (and b!4105785 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106602))

(assert (= (and b!4105785 ((_ is Concat!19495) (reg!12414 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106603))

(assert (= (and b!4105785 ((_ is Star!12085) (reg!12414 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106604))

(assert (= (and b!4105785 ((_ is Union!12085) (reg!12414 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106605))

(declare-fun b!4106606 () Bool)

(declare-fun e!2548372 () Bool)

(assert (=> b!4106606 (= e!2548372 tp_is_empty!21137)))

(declare-fun b!4106607 () Bool)

(declare-fun tp!1246067 () Bool)

(declare-fun tp!1246066 () Bool)

(assert (=> b!4106607 (= e!2548372 (and tp!1246067 tp!1246066))))

(declare-fun b!4106609 () Bool)

(declare-fun tp!1246064 () Bool)

(declare-fun tp!1246063 () Bool)

(assert (=> b!4106609 (= e!2548372 (and tp!1246064 tp!1246063))))

(assert (=> b!4105974 (= tp!1245389 e!2548372)))

(declare-fun b!4106608 () Bool)

(declare-fun tp!1246065 () Bool)

(assert (=> b!4106608 (= e!2548372 tp!1246065)))

(assert (= (and b!4105974 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106606))

(assert (= (and b!4105974 ((_ is Concat!19495) (regOne!24682 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106607))

(assert (= (and b!4105974 ((_ is Star!12085) (regOne!24682 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106608))

(assert (= (and b!4105974 ((_ is Union!12085) (regOne!24682 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106609))

(declare-fun b!4106610 () Bool)

(declare-fun e!2548373 () Bool)

(assert (=> b!4106610 (= e!2548373 tp_is_empty!21137)))

(declare-fun b!4106611 () Bool)

(declare-fun tp!1246072 () Bool)

(declare-fun tp!1246071 () Bool)

(assert (=> b!4106611 (= e!2548373 (and tp!1246072 tp!1246071))))

(declare-fun b!4106613 () Bool)

(declare-fun tp!1246069 () Bool)

(declare-fun tp!1246068 () Bool)

(assert (=> b!4106613 (= e!2548373 (and tp!1246069 tp!1246068))))

(assert (=> b!4105974 (= tp!1245388 e!2548373)))

(declare-fun b!4106612 () Bool)

(declare-fun tp!1246070 () Bool)

(assert (=> b!4106612 (= e!2548373 tp!1246070)))

(assert (= (and b!4105974 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106610))

(assert (= (and b!4105974 ((_ is Concat!19495) (regTwo!24682 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106611))

(assert (= (and b!4105974 ((_ is Star!12085) (regTwo!24682 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106612))

(assert (= (and b!4105974 ((_ is Union!12085) (regTwo!24682 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4106613))

(declare-fun b!4106614 () Bool)

(declare-fun e!2548374 () Bool)

(assert (=> b!4106614 (= e!2548374 tp_is_empty!21137)))

(declare-fun b!4106615 () Bool)

(declare-fun tp!1246077 () Bool)

(declare-fun tp!1246076 () Bool)

(assert (=> b!4106615 (= e!2548374 (and tp!1246077 tp!1246076))))

(declare-fun b!4106617 () Bool)

(declare-fun tp!1246074 () Bool)

(declare-fun tp!1246073 () Bool)

(assert (=> b!4106617 (= e!2548374 (and tp!1246074 tp!1246073))))

(assert (=> b!4105878 (= tp!1245274 e!2548374)))

(declare-fun b!4106616 () Bool)

(declare-fun tp!1246075 () Bool)

(assert (=> b!4106616 (= e!2548374 tp!1246075)))

(assert (= (and b!4105878 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106614))

(assert (= (and b!4105878 ((_ is Concat!19495) (regOne!24682 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106615))

(assert (= (and b!4105878 ((_ is Star!12085) (regOne!24682 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106616))

(assert (= (and b!4105878 ((_ is Union!12085) (regOne!24682 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106617))

(declare-fun b!4106618 () Bool)

(declare-fun e!2548375 () Bool)

(assert (=> b!4106618 (= e!2548375 tp_is_empty!21137)))

(declare-fun b!4106619 () Bool)

(declare-fun tp!1246082 () Bool)

(declare-fun tp!1246081 () Bool)

(assert (=> b!4106619 (= e!2548375 (and tp!1246082 tp!1246081))))

(declare-fun b!4106621 () Bool)

(declare-fun tp!1246079 () Bool)

(declare-fun tp!1246078 () Bool)

(assert (=> b!4106621 (= e!2548375 (and tp!1246079 tp!1246078))))

(assert (=> b!4105878 (= tp!1245273 e!2548375)))

(declare-fun b!4106620 () Bool)

(declare-fun tp!1246080 () Bool)

(assert (=> b!4106620 (= e!2548375 tp!1246080)))

(assert (= (and b!4105878 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106618))

(assert (= (and b!4105878 ((_ is Concat!19495) (regTwo!24682 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106619))

(assert (= (and b!4105878 ((_ is Star!12085) (regTwo!24682 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106620))

(assert (= (and b!4105878 ((_ is Union!12085) (regTwo!24682 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106621))

(declare-fun b!4106622 () Bool)

(declare-fun e!2548376 () Bool)

(assert (=> b!4106622 (= e!2548376 tp_is_empty!21137)))

(declare-fun b!4106623 () Bool)

(declare-fun tp!1246087 () Bool)

(declare-fun tp!1246086 () Bool)

(assert (=> b!4106623 (= e!2548376 (and tp!1246087 tp!1246086))))

(declare-fun b!4106625 () Bool)

(declare-fun tp!1246084 () Bool)

(declare-fun tp!1246083 () Bool)

(assert (=> b!4106625 (= e!2548376 (and tp!1246084 tp!1246083))))

(assert (=> b!4105983 (= tp!1245397 e!2548376)))

(declare-fun b!4106624 () Bool)

(declare-fun tp!1246085 () Bool)

(assert (=> b!4106624 (= e!2548376 tp!1246085)))

(assert (= (and b!4105983 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106622))

(assert (= (and b!4105983 ((_ is Concat!19495) (reg!12414 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106623))

(assert (= (and b!4105983 ((_ is Star!12085) (reg!12414 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106624))

(assert (= (and b!4105983 ((_ is Union!12085) (reg!12414 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106625))

(declare-fun b!4106626 () Bool)

(declare-fun e!2548377 () Bool)

(assert (=> b!4106626 (= e!2548377 tp_is_empty!21137)))

(declare-fun b!4106627 () Bool)

(declare-fun tp!1246092 () Bool)

(declare-fun tp!1246091 () Bool)

(assert (=> b!4106627 (= e!2548377 (and tp!1246092 tp!1246091))))

(declare-fun b!4106629 () Bool)

(declare-fun tp!1246089 () Bool)

(declare-fun tp!1246088 () Bool)

(assert (=> b!4106629 (= e!2548377 (and tp!1246089 tp!1246088))))

(assert (=> b!4105926 (= tp!1245334 e!2548377)))

(declare-fun b!4106628 () Bool)

(declare-fun tp!1246090 () Bool)

(assert (=> b!4106628 (= e!2548377 tp!1246090)))

(assert (= (and b!4105926 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106626))

(assert (= (and b!4105926 ((_ is Concat!19495) (regOne!24682 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106627))

(assert (= (and b!4105926 ((_ is Star!12085) (regOne!24682 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106628))

(assert (= (and b!4105926 ((_ is Union!12085) (regOne!24682 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106629))

(declare-fun b!4106630 () Bool)

(declare-fun e!2548378 () Bool)

(assert (=> b!4106630 (= e!2548378 tp_is_empty!21137)))

(declare-fun b!4106631 () Bool)

(declare-fun tp!1246097 () Bool)

(declare-fun tp!1246096 () Bool)

(assert (=> b!4106631 (= e!2548378 (and tp!1246097 tp!1246096))))

(declare-fun b!4106633 () Bool)

(declare-fun tp!1246094 () Bool)

(declare-fun tp!1246093 () Bool)

(assert (=> b!4106633 (= e!2548378 (and tp!1246094 tp!1246093))))

(assert (=> b!4105926 (= tp!1245333 e!2548378)))

(declare-fun b!4106632 () Bool)

(declare-fun tp!1246095 () Bool)

(assert (=> b!4106632 (= e!2548378 tp!1246095)))

(assert (= (and b!4105926 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106630))

(assert (= (and b!4105926 ((_ is Concat!19495) (regTwo!24682 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106631))

(assert (= (and b!4105926 ((_ is Star!12085) (regTwo!24682 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106632))

(assert (= (and b!4105926 ((_ is Union!12085) (regTwo!24682 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106633))

(declare-fun b!4106634 () Bool)

(declare-fun e!2548379 () Bool)

(assert (=> b!4106634 (= e!2548379 tp_is_empty!21137)))

(declare-fun b!4106635 () Bool)

(declare-fun tp!1246102 () Bool)

(declare-fun tp!1246101 () Bool)

(assert (=> b!4106635 (= e!2548379 (and tp!1246102 tp!1246101))))

(declare-fun b!4106637 () Bool)

(declare-fun tp!1246099 () Bool)

(declare-fun tp!1246098 () Bool)

(assert (=> b!4106637 (= e!2548379 (and tp!1246099 tp!1246098))))

(assert (=> b!4105819 (= tp!1245202 e!2548379)))

(declare-fun b!4106636 () Bool)

(declare-fun tp!1246100 () Bool)

(assert (=> b!4106636 (= e!2548379 tp!1246100)))

(assert (= (and b!4105819 ((_ is ElementMatch!12085) (reg!12414 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106634))

(assert (= (and b!4105819 ((_ is Concat!19495) (reg!12414 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106635))

(assert (= (and b!4105819 ((_ is Star!12085) (reg!12414 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106636))

(assert (= (and b!4105819 ((_ is Union!12085) (reg!12414 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106637))

(declare-fun b!4106638 () Bool)

(declare-fun e!2548380 () Bool)

(assert (=> b!4106638 (= e!2548380 tp_is_empty!21137)))

(declare-fun b!4106639 () Bool)

(declare-fun tp!1246107 () Bool)

(declare-fun tp!1246106 () Bool)

(assert (=> b!4106639 (= e!2548380 (and tp!1246107 tp!1246106))))

(declare-fun b!4106641 () Bool)

(declare-fun tp!1246104 () Bool)

(declare-fun tp!1246103 () Bool)

(assert (=> b!4106641 (= e!2548380 (and tp!1246104 tp!1246103))))

(assert (=> b!4105935 (= tp!1245342 e!2548380)))

(declare-fun b!4106640 () Bool)

(declare-fun tp!1246105 () Bool)

(assert (=> b!4106640 (= e!2548380 tp!1246105)))

(assert (= (and b!4105935 ((_ is ElementMatch!12085) (reg!12414 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106638))

(assert (= (and b!4105935 ((_ is Concat!19495) (reg!12414 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106639))

(assert (= (and b!4105935 ((_ is Star!12085) (reg!12414 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106640))

(assert (= (and b!4105935 ((_ is Union!12085) (reg!12414 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106641))

(declare-fun b!4106642 () Bool)

(declare-fun e!2548381 () Bool)

(assert (=> b!4106642 (= e!2548381 tp_is_empty!21137)))

(declare-fun b!4106643 () Bool)

(declare-fun tp!1246112 () Bool)

(declare-fun tp!1246111 () Bool)

(assert (=> b!4106643 (= e!2548381 (and tp!1246112 tp!1246111))))

(declare-fun b!4106645 () Bool)

(declare-fun tp!1246109 () Bool)

(declare-fun tp!1246108 () Bool)

(assert (=> b!4106645 (= e!2548381 (and tp!1246109 tp!1246108))))

(assert (=> b!4105767 (= tp!1245142 e!2548381)))

(declare-fun b!4106644 () Bool)

(declare-fun tp!1246110 () Bool)

(assert (=> b!4106644 (= e!2548381 tp!1246110)))

(assert (= (and b!4105767 ((_ is ElementMatch!12085) (regOne!24683 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106642))

(assert (= (and b!4105767 ((_ is Concat!19495) (regOne!24683 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106643))

(assert (= (and b!4105767 ((_ is Star!12085) (regOne!24683 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106644))

(assert (= (and b!4105767 ((_ is Union!12085) (regOne!24683 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106645))

(declare-fun b!4106646 () Bool)

(declare-fun e!2548382 () Bool)

(assert (=> b!4106646 (= e!2548382 tp_is_empty!21137)))

(declare-fun b!4106647 () Bool)

(declare-fun tp!1246117 () Bool)

(declare-fun tp!1246116 () Bool)

(assert (=> b!4106647 (= e!2548382 (and tp!1246117 tp!1246116))))

(declare-fun b!4106649 () Bool)

(declare-fun tp!1246114 () Bool)

(declare-fun tp!1246113 () Bool)

(assert (=> b!4106649 (= e!2548382 (and tp!1246114 tp!1246113))))

(assert (=> b!4105767 (= tp!1245141 e!2548382)))

(declare-fun b!4106648 () Bool)

(declare-fun tp!1246115 () Bool)

(assert (=> b!4106648 (= e!2548382 tp!1246115)))

(assert (= (and b!4105767 ((_ is ElementMatch!12085) (regTwo!24683 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106646))

(assert (= (and b!4105767 ((_ is Concat!19495) (regTwo!24683 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106647))

(assert (= (and b!4105767 ((_ is Star!12085) (regTwo!24683 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106648))

(assert (= (and b!4105767 ((_ is Union!12085) (regTwo!24683 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106649))

(declare-fun b!4106650 () Bool)

(declare-fun e!2548383 () Bool)

(assert (=> b!4106650 (= e!2548383 tp_is_empty!21137)))

(declare-fun b!4106651 () Bool)

(declare-fun tp!1246122 () Bool)

(declare-fun tp!1246121 () Bool)

(assert (=> b!4106651 (= e!2548383 (and tp!1246122 tp!1246121))))

(declare-fun b!4106653 () Bool)

(declare-fun tp!1246119 () Bool)

(declare-fun tp!1246118 () Bool)

(assert (=> b!4106653 (= e!2548383 (and tp!1246119 tp!1246118))))

(assert (=> b!4105847 (= tp!1245237 e!2548383)))

(declare-fun b!4106652 () Bool)

(declare-fun tp!1246120 () Bool)

(assert (=> b!4106652 (= e!2548383 tp!1246120)))

(assert (= (and b!4105847 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106650))

(assert (= (and b!4105847 ((_ is Concat!19495) (reg!12414 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106651))

(assert (= (and b!4105847 ((_ is Star!12085) (reg!12414 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106652))

(assert (= (and b!4105847 ((_ is Union!12085) (reg!12414 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106653))

(declare-fun b!4106654 () Bool)

(declare-fun e!2548384 () Bool)

(assert (=> b!4106654 (= e!2548384 tp_is_empty!21137)))

(declare-fun b!4106655 () Bool)

(declare-fun tp!1246127 () Bool)

(declare-fun tp!1246126 () Bool)

(assert (=> b!4106655 (= e!2548384 (and tp!1246127 tp!1246126))))

(declare-fun b!4106657 () Bool)

(declare-fun tp!1246124 () Bool)

(declare-fun tp!1246123 () Bool)

(assert (=> b!4106657 (= e!2548384 (and tp!1246124 tp!1246123))))

(assert (=> b!4105758 (= tp!1245133 e!2548384)))

(declare-fun b!4106656 () Bool)

(declare-fun tp!1246125 () Bool)

(assert (=> b!4106656 (= e!2548384 tp!1246125)))

(assert (= (and b!4105758 ((_ is ElementMatch!12085) (reg!12414 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106654))

(assert (= (and b!4105758 ((_ is Concat!19495) (reg!12414 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106655))

(assert (= (and b!4105758 ((_ is Star!12085) (reg!12414 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106656))

(assert (= (and b!4105758 ((_ is Union!12085) (reg!12414 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106657))

(declare-fun b!4106658 () Bool)

(declare-fun e!2548385 () Bool)

(assert (=> b!4106658 (= e!2548385 tp_is_empty!21137)))

(declare-fun b!4106659 () Bool)

(declare-fun tp!1246132 () Bool)

(declare-fun tp!1246131 () Bool)

(assert (=> b!4106659 (= e!2548385 (and tp!1246132 tp!1246131))))

(declare-fun b!4106661 () Bool)

(declare-fun tp!1246129 () Bool)

(declare-fun tp!1246128 () Bool)

(assert (=> b!4106661 (= e!2548385 (and tp!1246129 tp!1246128))))

(assert (=> b!4105944 (= tp!1245351 e!2548385)))

(declare-fun b!4106660 () Bool)

(declare-fun tp!1246130 () Bool)

(assert (=> b!4106660 (= e!2548385 tp!1246130)))

(assert (= (and b!4105944 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106658))

(assert (= (and b!4105944 ((_ is Concat!19495) (regOne!24683 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106659))

(assert (= (and b!4105944 ((_ is Star!12085) (regOne!24683 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106660))

(assert (= (and b!4105944 ((_ is Union!12085) (regOne!24683 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106661))

(declare-fun b!4106662 () Bool)

(declare-fun e!2548386 () Bool)

(assert (=> b!4106662 (= e!2548386 tp_is_empty!21137)))

(declare-fun b!4106663 () Bool)

(declare-fun tp!1246137 () Bool)

(declare-fun tp!1246136 () Bool)

(assert (=> b!4106663 (= e!2548386 (and tp!1246137 tp!1246136))))

(declare-fun b!4106665 () Bool)

(declare-fun tp!1246134 () Bool)

(declare-fun tp!1246133 () Bool)

(assert (=> b!4106665 (= e!2548386 (and tp!1246134 tp!1246133))))

(assert (=> b!4105944 (= tp!1245350 e!2548386)))

(declare-fun b!4106664 () Bool)

(declare-fun tp!1246135 () Bool)

(assert (=> b!4106664 (= e!2548386 tp!1246135)))

(assert (= (and b!4105944 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106662))

(assert (= (and b!4105944 ((_ is Concat!19495) (regTwo!24683 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106663))

(assert (= (and b!4105944 ((_ is Star!12085) (regTwo!24683 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106664))

(assert (= (and b!4105944 ((_ is Union!12085) (regTwo!24683 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106665))

(declare-fun b!4106666 () Bool)

(declare-fun e!2548387 () Bool)

(assert (=> b!4106666 (= e!2548387 tp_is_empty!21137)))

(declare-fun b!4106667 () Bool)

(declare-fun tp!1246142 () Bool)

(declare-fun tp!1246141 () Bool)

(assert (=> b!4106667 (= e!2548387 (and tp!1246142 tp!1246141))))

(declare-fun b!4106669 () Bool)

(declare-fun tp!1246139 () Bool)

(declare-fun tp!1246138 () Bool)

(assert (=> b!4106669 (= e!2548387 (and tp!1246139 tp!1246138))))

(assert (=> b!4105892 (= tp!1245286 e!2548387)))

(declare-fun b!4106668 () Bool)

(declare-fun tp!1246140 () Bool)

(assert (=> b!4106668 (= e!2548387 tp!1246140)))

(assert (= (and b!4105892 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106666))

(assert (= (and b!4105892 ((_ is Concat!19495) (regOne!24683 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106667))

(assert (= (and b!4105892 ((_ is Star!12085) (regOne!24683 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106668))

(assert (= (and b!4105892 ((_ is Union!12085) (regOne!24683 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106669))

(declare-fun b!4106670 () Bool)

(declare-fun e!2548388 () Bool)

(assert (=> b!4106670 (= e!2548388 tp_is_empty!21137)))

(declare-fun b!4106671 () Bool)

(declare-fun tp!1246147 () Bool)

(declare-fun tp!1246146 () Bool)

(assert (=> b!4106671 (= e!2548388 (and tp!1246147 tp!1246146))))

(declare-fun b!4106673 () Bool)

(declare-fun tp!1246144 () Bool)

(declare-fun tp!1246143 () Bool)

(assert (=> b!4106673 (= e!2548388 (and tp!1246144 tp!1246143))))

(assert (=> b!4105892 (= tp!1245285 e!2548388)))

(declare-fun b!4106672 () Bool)

(declare-fun tp!1246145 () Bool)

(assert (=> b!4106672 (= e!2548388 tp!1246145)))

(assert (= (and b!4105892 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106670))

(assert (= (and b!4105892 ((_ is Concat!19495) (regTwo!24683 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106671))

(assert (= (and b!4105892 ((_ is Star!12085) (regTwo!24683 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106672))

(assert (= (and b!4105892 ((_ is Union!12085) (regTwo!24683 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106673))

(declare-fun b!4106674 () Bool)

(declare-fun e!2548389 () Bool)

(assert (=> b!4106674 (= e!2548389 tp_is_empty!21137)))

(declare-fun b!4106675 () Bool)

(declare-fun tp!1246152 () Bool)

(declare-fun tp!1246151 () Bool)

(assert (=> b!4106675 (= e!2548389 (and tp!1246152 tp!1246151))))

(declare-fun b!4106677 () Bool)

(declare-fun tp!1246149 () Bool)

(declare-fun tp!1246148 () Bool)

(assert (=> b!4106677 (= e!2548389 (and tp!1246149 tp!1246148))))

(assert (=> b!4105808 (= tp!1245194 e!2548389)))

(declare-fun b!4106676 () Bool)

(declare-fun tp!1246150 () Bool)

(assert (=> b!4106676 (= e!2548389 tp!1246150)))

(assert (= (and b!4105808 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106674))

(assert (= (and b!4105808 ((_ is Concat!19495) (regOne!24682 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106675))

(assert (= (and b!4105808 ((_ is Star!12085) (regOne!24682 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106676))

(assert (= (and b!4105808 ((_ is Union!12085) (regOne!24682 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106677))

(declare-fun b!4106678 () Bool)

(declare-fun e!2548390 () Bool)

(assert (=> b!4106678 (= e!2548390 tp_is_empty!21137)))

(declare-fun b!4106679 () Bool)

(declare-fun tp!1246157 () Bool)

(declare-fun tp!1246156 () Bool)

(assert (=> b!4106679 (= e!2548390 (and tp!1246157 tp!1246156))))

(declare-fun b!4106681 () Bool)

(declare-fun tp!1246154 () Bool)

(declare-fun tp!1246153 () Bool)

(assert (=> b!4106681 (= e!2548390 (and tp!1246154 tp!1246153))))

(assert (=> b!4105808 (= tp!1245193 e!2548390)))

(declare-fun b!4106680 () Bool)

(declare-fun tp!1246155 () Bool)

(assert (=> b!4106680 (= e!2548390 tp!1246155)))

(assert (= (and b!4105808 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106678))

(assert (= (and b!4105808 ((_ is Concat!19495) (regTwo!24682 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106679))

(assert (= (and b!4105808 ((_ is Star!12085) (regTwo!24682 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106680))

(assert (= (and b!4105808 ((_ is Union!12085) (regTwo!24682 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106681))

(declare-fun b!4106682 () Bool)

(declare-fun e!2548391 () Bool)

(assert (=> b!4106682 (= e!2548391 tp_is_empty!21137)))

(declare-fun b!4106683 () Bool)

(declare-fun tp!1246162 () Bool)

(declare-fun tp!1246161 () Bool)

(assert (=> b!4106683 (= e!2548391 (and tp!1246162 tp!1246161))))

(declare-fun b!4106685 () Bool)

(declare-fun tp!1246159 () Bool)

(declare-fun tp!1246158 () Bool)

(assert (=> b!4106685 (= e!2548391 (and tp!1246159 tp!1246158))))

(assert (=> b!4105824 (= tp!1245206 e!2548391)))

(declare-fun b!4106684 () Bool)

(declare-fun tp!1246160 () Bool)

(assert (=> b!4106684 (= e!2548391 tp!1246160)))

(assert (= (and b!4105824 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106682))

(assert (= (and b!4105824 ((_ is Concat!19495) (regOne!24683 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106683))

(assert (= (and b!4105824 ((_ is Star!12085) (regOne!24683 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106684))

(assert (= (and b!4105824 ((_ is Union!12085) (regOne!24683 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106685))

(declare-fun b!4106686 () Bool)

(declare-fun e!2548392 () Bool)

(assert (=> b!4106686 (= e!2548392 tp_is_empty!21137)))

(declare-fun b!4106687 () Bool)

(declare-fun tp!1246167 () Bool)

(declare-fun tp!1246166 () Bool)

(assert (=> b!4106687 (= e!2548392 (and tp!1246167 tp!1246166))))

(declare-fun b!4106689 () Bool)

(declare-fun tp!1246164 () Bool)

(declare-fun tp!1246163 () Bool)

(assert (=> b!4106689 (= e!2548392 (and tp!1246164 tp!1246163))))

(assert (=> b!4105824 (= tp!1245205 e!2548392)))

(declare-fun b!4106688 () Bool)

(declare-fun tp!1246165 () Bool)

(assert (=> b!4106688 (= e!2548392 tp!1246165)))

(assert (= (and b!4105824 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106686))

(assert (= (and b!4105824 ((_ is Concat!19495) (regTwo!24683 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106687))

(assert (= (and b!4105824 ((_ is Star!12085) (regTwo!24683 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106688))

(assert (= (and b!4105824 ((_ is Union!12085) (regTwo!24683 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106689))

(declare-fun b!4106690 () Bool)

(declare-fun e!2548393 () Bool)

(assert (=> b!4106690 (= e!2548393 tp_is_empty!21137)))

(declare-fun b!4106691 () Bool)

(declare-fun tp!1246172 () Bool)

(declare-fun tp!1246171 () Bool)

(assert (=> b!4106691 (= e!2548393 (and tp!1246172 tp!1246171))))

(declare-fun b!4106693 () Bool)

(declare-fun tp!1246169 () Bool)

(declare-fun tp!1246168 () Bool)

(assert (=> b!4106693 (= e!2548393 (and tp!1246169 tp!1246168))))

(assert (=> b!4105839 (= tp!1245227 e!2548393)))

(declare-fun b!4106692 () Bool)

(declare-fun tp!1246170 () Bool)

(assert (=> b!4106692 (= e!2548393 tp!1246170)))

(assert (= (and b!4105839 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106690))

(assert (= (and b!4105839 ((_ is Concat!19495) (reg!12414 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106691))

(assert (= (and b!4105839 ((_ is Star!12085) (reg!12414 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106692))

(assert (= (and b!4105839 ((_ is Union!12085) (reg!12414 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106693))

(declare-fun b!4106694 () Bool)

(declare-fun e!2548394 () Bool)

(assert (=> b!4106694 (= e!2548394 tp_is_empty!21137)))

(declare-fun b!4106695 () Bool)

(declare-fun tp!1246177 () Bool)

(declare-fun tp!1246176 () Bool)

(assert (=> b!4106695 (= e!2548394 (and tp!1246177 tp!1246176))))

(declare-fun b!4106697 () Bool)

(declare-fun tp!1246174 () Bool)

(declare-fun tp!1246173 () Bool)

(assert (=> b!4106697 (= e!2548394 (and tp!1246174 tp!1246173))))

(assert (=> b!4105854 (= tp!1245241 e!2548394)))

(declare-fun b!4106696 () Bool)

(declare-fun tp!1246175 () Bool)

(assert (=> b!4106696 (= e!2548394 tp!1246175)))

(assert (= (and b!4105854 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106694))

(assert (= (and b!4105854 ((_ is Concat!19495) (regOne!24683 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106695))

(assert (= (and b!4105854 ((_ is Star!12085) (regOne!24683 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106696))

(assert (= (and b!4105854 ((_ is Union!12085) (regOne!24683 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106697))

(declare-fun b!4106698 () Bool)

(declare-fun e!2548395 () Bool)

(assert (=> b!4106698 (= e!2548395 tp_is_empty!21137)))

(declare-fun b!4106699 () Bool)

(declare-fun tp!1246182 () Bool)

(declare-fun tp!1246181 () Bool)

(assert (=> b!4106699 (= e!2548395 (and tp!1246182 tp!1246181))))

(declare-fun b!4106701 () Bool)

(declare-fun tp!1246179 () Bool)

(declare-fun tp!1246178 () Bool)

(assert (=> b!4106701 (= e!2548395 (and tp!1246179 tp!1246178))))

(assert (=> b!4105854 (= tp!1245240 e!2548395)))

(declare-fun b!4106700 () Bool)

(declare-fun tp!1246180 () Bool)

(assert (=> b!4106700 (= e!2548395 tp!1246180)))

(assert (= (and b!4105854 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106698))

(assert (= (and b!4105854 ((_ is Concat!19495) (regTwo!24683 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106699))

(assert (= (and b!4105854 ((_ is Star!12085) (regTwo!24683 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106700))

(assert (= (and b!4105854 ((_ is Union!12085) (regTwo!24683 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106701))

(declare-fun b!4106702 () Bool)

(declare-fun e!2548396 () Bool)

(assert (=> b!4106702 (= e!2548396 tp_is_empty!21137)))

(declare-fun b!4106703 () Bool)

(declare-fun tp!1246187 () Bool)

(declare-fun tp!1246186 () Bool)

(assert (=> b!4106703 (= e!2548396 (and tp!1246187 tp!1246186))))

(declare-fun b!4106705 () Bool)

(declare-fun tp!1246184 () Bool)

(declare-fun tp!1246183 () Bool)

(assert (=> b!4106705 (= e!2548396 (and tp!1246184 tp!1246183))))

(assert (=> b!4105958 (= tp!1245374 e!2548396)))

(declare-fun b!4106704 () Bool)

(declare-fun tp!1246185 () Bool)

(assert (=> b!4106704 (= e!2548396 tp!1246185)))

(assert (= (and b!4105958 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106702))

(assert (= (and b!4105958 ((_ is Concat!19495) (regOne!24682 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106703))

(assert (= (and b!4105958 ((_ is Star!12085) (regOne!24682 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106704))

(assert (= (and b!4105958 ((_ is Union!12085) (regOne!24682 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106705))

(declare-fun b!4106706 () Bool)

(declare-fun e!2548397 () Bool)

(assert (=> b!4106706 (= e!2548397 tp_is_empty!21137)))

(declare-fun b!4106707 () Bool)

(declare-fun tp!1246192 () Bool)

(declare-fun tp!1246191 () Bool)

(assert (=> b!4106707 (= e!2548397 (and tp!1246192 tp!1246191))))

(declare-fun b!4106709 () Bool)

(declare-fun tp!1246189 () Bool)

(declare-fun tp!1246188 () Bool)

(assert (=> b!4106709 (= e!2548397 (and tp!1246189 tp!1246188))))

(assert (=> b!4105958 (= tp!1245373 e!2548397)))

(declare-fun b!4106708 () Bool)

(declare-fun tp!1246190 () Bool)

(assert (=> b!4106708 (= e!2548397 tp!1246190)))

(assert (= (and b!4105958 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106706))

(assert (= (and b!4105958 ((_ is Concat!19495) (regTwo!24682 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106707))

(assert (= (and b!4105958 ((_ is Star!12085) (regTwo!24682 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106708))

(assert (= (and b!4105958 ((_ is Union!12085) (regTwo!24682 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106709))

(declare-fun b!4106710 () Bool)

(declare-fun e!2548398 () Bool)

(assert (=> b!4106710 (= e!2548398 tp_is_empty!21137)))

(declare-fun b!4106711 () Bool)

(declare-fun tp!1246197 () Bool)

(declare-fun tp!1246196 () Bool)

(assert (=> b!4106711 (= e!2548398 (and tp!1246197 tp!1246196))))

(declare-fun b!4106713 () Bool)

(declare-fun tp!1246194 () Bool)

(declare-fun tp!1246193 () Bool)

(assert (=> b!4106713 (= e!2548398 (and tp!1246194 tp!1246193))))

(assert (=> b!4105868 (= tp!1245264 e!2548398)))

(declare-fun b!4106712 () Bool)

(declare-fun tp!1246195 () Bool)

(assert (=> b!4106712 (= e!2548398 tp!1246195)))

(assert (= (and b!4105868 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106710))

(assert (= (and b!4105868 ((_ is Concat!19495) (regOne!24682 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106711))

(assert (= (and b!4105868 ((_ is Star!12085) (regOne!24682 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106712))

(assert (= (and b!4105868 ((_ is Union!12085) (regOne!24682 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106713))

(declare-fun b!4106714 () Bool)

(declare-fun e!2548399 () Bool)

(assert (=> b!4106714 (= e!2548399 tp_is_empty!21137)))

(declare-fun b!4106715 () Bool)

(declare-fun tp!1246202 () Bool)

(declare-fun tp!1246201 () Bool)

(assert (=> b!4106715 (= e!2548399 (and tp!1246202 tp!1246201))))

(declare-fun b!4106717 () Bool)

(declare-fun tp!1246199 () Bool)

(declare-fun tp!1246198 () Bool)

(assert (=> b!4106717 (= e!2548399 (and tp!1246199 tp!1246198))))

(assert (=> b!4105868 (= tp!1245263 e!2548399)))

(declare-fun b!4106716 () Bool)

(declare-fun tp!1246200 () Bool)

(assert (=> b!4106716 (= e!2548399 tp!1246200)))

(assert (= (and b!4105868 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106714))

(assert (= (and b!4105868 ((_ is Concat!19495) (regTwo!24682 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106715))

(assert (= (and b!4105868 ((_ is Star!12085) (regTwo!24682 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106716))

(assert (= (and b!4105868 ((_ is Union!12085) (regTwo!24682 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106717))

(declare-fun b!4106718 () Bool)

(declare-fun e!2548400 () Bool)

(assert (=> b!4106718 (= e!2548400 tp_is_empty!21137)))

(declare-fun b!4106719 () Bool)

(declare-fun tp!1246207 () Bool)

(declare-fun tp!1246206 () Bool)

(assert (=> b!4106719 (= e!2548400 (and tp!1246207 tp!1246206))))

(declare-fun b!4106721 () Bool)

(declare-fun tp!1246204 () Bool)

(declare-fun tp!1246203 () Bool)

(assert (=> b!4106721 (= e!2548400 (and tp!1246204 tp!1246203))))

(assert (=> b!4105862 (= tp!1245251 e!2548400)))

(declare-fun b!4106720 () Bool)

(declare-fun tp!1246205 () Bool)

(assert (=> b!4106720 (= e!2548400 tp!1246205)))

(assert (= (and b!4105862 ((_ is ElementMatch!12085) (regOne!24683 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4106718))

(assert (= (and b!4105862 ((_ is Concat!19495) (regOne!24683 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4106719))

(assert (= (and b!4105862 ((_ is Star!12085) (regOne!24683 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4106720))

(assert (= (and b!4105862 ((_ is Union!12085) (regOne!24683 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4106721))

(declare-fun b!4106722 () Bool)

(declare-fun e!2548401 () Bool)

(assert (=> b!4106722 (= e!2548401 tp_is_empty!21137)))

(declare-fun b!4106723 () Bool)

(declare-fun tp!1246212 () Bool)

(declare-fun tp!1246211 () Bool)

(assert (=> b!4106723 (= e!2548401 (and tp!1246212 tp!1246211))))

(declare-fun b!4106725 () Bool)

(declare-fun tp!1246209 () Bool)

(declare-fun tp!1246208 () Bool)

(assert (=> b!4106725 (= e!2548401 (and tp!1246209 tp!1246208))))

(assert (=> b!4105862 (= tp!1245250 e!2548401)))

(declare-fun b!4106724 () Bool)

(declare-fun tp!1246210 () Bool)

(assert (=> b!4106724 (= e!2548401 tp!1246210)))

(assert (= (and b!4105862 ((_ is ElementMatch!12085) (regTwo!24683 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4106722))

(assert (= (and b!4105862 ((_ is Concat!19495) (regTwo!24683 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4106723))

(assert (= (and b!4105862 ((_ is Star!12085) (regTwo!24683 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4106724))

(assert (= (and b!4105862 ((_ is Union!12085) (regTwo!24683 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4106725))

(declare-fun b!4106726 () Bool)

(declare-fun e!2548402 () Bool)

(assert (=> b!4106726 (= e!2548402 tp_is_empty!21137)))

(declare-fun b!4106727 () Bool)

(declare-fun tp!1246217 () Bool)

(declare-fun tp!1246216 () Bool)

(assert (=> b!4106727 (= e!2548402 (and tp!1246217 tp!1246216))))

(declare-fun b!4106729 () Bool)

(declare-fun tp!1246214 () Bool)

(declare-fun tp!1246213 () Bool)

(assert (=> b!4106729 (= e!2548402 (and tp!1246214 tp!1246213))))

(assert (=> b!4105853 (= tp!1245242 e!2548402)))

(declare-fun b!4106728 () Bool)

(declare-fun tp!1246215 () Bool)

(assert (=> b!4106728 (= e!2548402 tp!1246215)))

(assert (= (and b!4105853 ((_ is ElementMatch!12085) (reg!12414 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106726))

(assert (= (and b!4105853 ((_ is Concat!19495) (reg!12414 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106727))

(assert (= (and b!4105853 ((_ is Star!12085) (reg!12414 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106728))

(assert (= (and b!4105853 ((_ is Union!12085) (reg!12414 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4106729))

(declare-fun b!4106730 () Bool)

(declare-fun e!2548403 () Bool)

(assert (=> b!4106730 (= e!2548403 tp_is_empty!21137)))

(declare-fun b!4106731 () Bool)

(declare-fun tp!1246222 () Bool)

(declare-fun tp!1246221 () Bool)

(assert (=> b!4106731 (= e!2548403 (and tp!1246222 tp!1246221))))

(declare-fun b!4106733 () Bool)

(declare-fun tp!1246219 () Bool)

(declare-fun tp!1246218 () Bool)

(assert (=> b!4106733 (= e!2548403 (and tp!1246219 tp!1246218))))

(assert (=> b!4105782 (= tp!1245156 e!2548403)))

(declare-fun b!4106732 () Bool)

(declare-fun tp!1246220 () Bool)

(assert (=> b!4106732 (= e!2548403 tp!1246220)))

(assert (= (and b!4105782 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106730))

(assert (= (and b!4105782 ((_ is Concat!19495) (regOne!24683 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106731))

(assert (= (and b!4105782 ((_ is Star!12085) (regOne!24683 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106732))

(assert (= (and b!4105782 ((_ is Union!12085) (regOne!24683 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106733))

(declare-fun b!4106734 () Bool)

(declare-fun e!2548404 () Bool)

(assert (=> b!4106734 (= e!2548404 tp_is_empty!21137)))

(declare-fun b!4106735 () Bool)

(declare-fun tp!1246227 () Bool)

(declare-fun tp!1246226 () Bool)

(assert (=> b!4106735 (= e!2548404 (and tp!1246227 tp!1246226))))

(declare-fun b!4106737 () Bool)

(declare-fun tp!1246224 () Bool)

(declare-fun tp!1246223 () Bool)

(assert (=> b!4106737 (= e!2548404 (and tp!1246224 tp!1246223))))

(assert (=> b!4105782 (= tp!1245155 e!2548404)))

(declare-fun b!4106736 () Bool)

(declare-fun tp!1246225 () Bool)

(assert (=> b!4106736 (= e!2548404 tp!1246225)))

(assert (= (and b!4105782 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106734))

(assert (= (and b!4105782 ((_ is Concat!19495) (regTwo!24683 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106735))

(assert (= (and b!4105782 ((_ is Star!12085) (regTwo!24683 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106736))

(assert (= (and b!4105782 ((_ is Union!12085) (regTwo!24683 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106737))

(declare-fun b!4106738 () Bool)

(declare-fun e!2548405 () Bool)

(assert (=> b!4106738 (= e!2548405 tp_is_empty!21137)))

(declare-fun b!4106739 () Bool)

(declare-fun tp!1246232 () Bool)

(declare-fun tp!1246231 () Bool)

(assert (=> b!4106739 (= e!2548405 (and tp!1246232 tp!1246231))))

(declare-fun b!4106741 () Bool)

(declare-fun tp!1246229 () Bool)

(declare-fun tp!1246228 () Bool)

(assert (=> b!4106741 (= e!2548405 (and tp!1246229 tp!1246228))))

(assert (=> b!4105995 (= tp!1245412 e!2548405)))

(declare-fun b!4106740 () Bool)

(declare-fun tp!1246230 () Bool)

(assert (=> b!4106740 (= e!2548405 tp!1246230)))

(assert (= (and b!4105995 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106738))

(assert (= (and b!4105995 ((_ is Concat!19495) (reg!12414 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106739))

(assert (= (and b!4105995 ((_ is Star!12085) (reg!12414 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106740))

(assert (= (and b!4105995 ((_ is Union!12085) (reg!12414 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106741))

(declare-fun b!4106742 () Bool)

(declare-fun e!2548406 () Bool)

(assert (=> b!4106742 (= e!2548406 tp_is_empty!21137)))

(declare-fun b!4106743 () Bool)

(declare-fun tp!1246237 () Bool)

(declare-fun tp!1246236 () Bool)

(assert (=> b!4106743 (= e!2548406 (and tp!1246237 tp!1246236))))

(declare-fun b!4106745 () Bool)

(declare-fun tp!1246234 () Bool)

(declare-fun tp!1246233 () Bool)

(assert (=> b!4106745 (= e!2548406 (and tp!1246234 tp!1246233))))

(assert (=> b!4105816 (= tp!1245196 e!2548406)))

(declare-fun b!4106744 () Bool)

(declare-fun tp!1246235 () Bool)

(assert (=> b!4106744 (= e!2548406 tp!1246235)))

(assert (= (and b!4105816 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106742))

(assert (= (and b!4105816 ((_ is Concat!19495) (regOne!24683 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106743))

(assert (= (and b!4105816 ((_ is Star!12085) (regOne!24683 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106744))

(assert (= (and b!4105816 ((_ is Union!12085) (regOne!24683 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106745))

(declare-fun b!4106746 () Bool)

(declare-fun e!2548407 () Bool)

(assert (=> b!4106746 (= e!2548407 tp_is_empty!21137)))

(declare-fun b!4106747 () Bool)

(declare-fun tp!1246242 () Bool)

(declare-fun tp!1246241 () Bool)

(assert (=> b!4106747 (= e!2548407 (and tp!1246242 tp!1246241))))

(declare-fun b!4106749 () Bool)

(declare-fun tp!1246239 () Bool)

(declare-fun tp!1246238 () Bool)

(assert (=> b!4106749 (= e!2548407 (and tp!1246239 tp!1246238))))

(assert (=> b!4105816 (= tp!1245195 e!2548407)))

(declare-fun b!4106748 () Bool)

(declare-fun tp!1246240 () Bool)

(assert (=> b!4106748 (= e!2548407 tp!1246240)))

(assert (= (and b!4105816 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106746))

(assert (= (and b!4105816 ((_ is Concat!19495) (regTwo!24683 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106747))

(assert (= (and b!4105816 ((_ is Star!12085) (regTwo!24683 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106748))

(assert (= (and b!4105816 ((_ is Union!12085) (regTwo!24683 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4106749))

(declare-fun b!4106750 () Bool)

(declare-fun e!2548408 () Bool)

(assert (=> b!4106750 (= e!2548408 tp_is_empty!21137)))

(declare-fun b!4106751 () Bool)

(declare-fun tp!1246247 () Bool)

(declare-fun tp!1246246 () Bool)

(assert (=> b!4106751 (= e!2548408 (and tp!1246247 tp!1246246))))

(declare-fun b!4106753 () Bool)

(declare-fun tp!1246244 () Bool)

(declare-fun tp!1246243 () Bool)

(assert (=> b!4106753 (= e!2548408 (and tp!1246244 tp!1246243))))

(assert (=> b!4105980 (= tp!1245391 e!2548408)))

(declare-fun b!4106752 () Bool)

(declare-fun tp!1246245 () Bool)

(assert (=> b!4106752 (= e!2548408 tp!1246245)))

(assert (= (and b!4105980 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106750))

(assert (= (and b!4105980 ((_ is Concat!19495) (regOne!24683 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106751))

(assert (= (and b!4105980 ((_ is Star!12085) (regOne!24683 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106752))

(assert (= (and b!4105980 ((_ is Union!12085) (regOne!24683 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106753))

(declare-fun b!4106754 () Bool)

(declare-fun e!2548409 () Bool)

(assert (=> b!4106754 (= e!2548409 tp_is_empty!21137)))

(declare-fun b!4106755 () Bool)

(declare-fun tp!1246252 () Bool)

(declare-fun tp!1246251 () Bool)

(assert (=> b!4106755 (= e!2548409 (and tp!1246252 tp!1246251))))

(declare-fun b!4106757 () Bool)

(declare-fun tp!1246249 () Bool)

(declare-fun tp!1246248 () Bool)

(assert (=> b!4106757 (= e!2548409 (and tp!1246249 tp!1246248))))

(assert (=> b!4105980 (= tp!1245390 e!2548409)))

(declare-fun b!4106756 () Bool)

(declare-fun tp!1246250 () Bool)

(assert (=> b!4106756 (= e!2548409 tp!1246250)))

(assert (= (and b!4105980 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106754))

(assert (= (and b!4105980 ((_ is Concat!19495) (regTwo!24683 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106755))

(assert (= (and b!4105980 ((_ is Star!12085) (regTwo!24683 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106756))

(assert (= (and b!4105980 ((_ is Union!12085) (regTwo!24683 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106757))

(declare-fun b!4106758 () Bool)

(declare-fun e!2548410 () Bool)

(assert (=> b!4106758 (= e!2548410 tp_is_empty!21137)))

(declare-fun b!4106759 () Bool)

(declare-fun tp!1246257 () Bool)

(declare-fun tp!1246256 () Bool)

(assert (=> b!4106759 (= e!2548410 (and tp!1246257 tp!1246256))))

(declare-fun b!4106761 () Bool)

(declare-fun tp!1246254 () Bool)

(declare-fun tp!1246253 () Bool)

(assert (=> b!4106761 (= e!2548410 (and tp!1246254 tp!1246253))))

(assert (=> b!4105884 (= tp!1245276 e!2548410)))

(declare-fun b!4106760 () Bool)

(declare-fun tp!1246255 () Bool)

(assert (=> b!4106760 (= e!2548410 tp!1246255)))

(assert (= (and b!4105884 ((_ is ElementMatch!12085) (regOne!24683 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106758))

(assert (= (and b!4105884 ((_ is Concat!19495) (regOne!24683 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106759))

(assert (= (and b!4105884 ((_ is Star!12085) (regOne!24683 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106760))

(assert (= (and b!4105884 ((_ is Union!12085) (regOne!24683 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106761))

(declare-fun b!4106762 () Bool)

(declare-fun e!2548411 () Bool)

(assert (=> b!4106762 (= e!2548411 tp_is_empty!21137)))

(declare-fun b!4106763 () Bool)

(declare-fun tp!1246262 () Bool)

(declare-fun tp!1246261 () Bool)

(assert (=> b!4106763 (= e!2548411 (and tp!1246262 tp!1246261))))

(declare-fun b!4106765 () Bool)

(declare-fun tp!1246259 () Bool)

(declare-fun tp!1246258 () Bool)

(assert (=> b!4106765 (= e!2548411 (and tp!1246259 tp!1246258))))

(assert (=> b!4105884 (= tp!1245275 e!2548411)))

(declare-fun b!4106764 () Bool)

(declare-fun tp!1246260 () Bool)

(assert (=> b!4106764 (= e!2548411 tp!1246260)))

(assert (= (and b!4105884 ((_ is ElementMatch!12085) (regTwo!24683 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106762))

(assert (= (and b!4105884 ((_ is Concat!19495) (regTwo!24683 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106763))

(assert (= (and b!4105884 ((_ is Star!12085) (regTwo!24683 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106764))

(assert (= (and b!4105884 ((_ is Union!12085) (regTwo!24683 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106765))

(declare-fun b!4106766 () Bool)

(declare-fun e!2548412 () Bool)

(assert (=> b!4106766 (= e!2548412 tp_is_empty!21137)))

(declare-fun b!4106767 () Bool)

(declare-fun tp!1246267 () Bool)

(declare-fun tp!1246266 () Bool)

(assert (=> b!4106767 (= e!2548412 (and tp!1246267 tp!1246266))))

(declare-fun b!4106769 () Bool)

(declare-fun tp!1246264 () Bool)

(declare-fun tp!1246263 () Bool)

(assert (=> b!4106769 (= e!2548412 (and tp!1246264 tp!1246263))))

(assert (=> b!4105987 (= tp!1245402 e!2548412)))

(declare-fun b!4106768 () Bool)

(declare-fun tp!1246265 () Bool)

(assert (=> b!4106768 (= e!2548412 tp!1246265)))

(assert (= (and b!4105987 ((_ is ElementMatch!12085) (reg!12414 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4106766))

(assert (= (and b!4105987 ((_ is Concat!19495) (reg!12414 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4106767))

(assert (= (and b!4105987 ((_ is Star!12085) (reg!12414 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4106768))

(assert (= (and b!4105987 ((_ is Union!12085) (reg!12414 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4106769))

(declare-fun b!4106770 () Bool)

(declare-fun e!2548413 () Bool)

(assert (=> b!4106770 (= e!2548413 tp_is_empty!21137)))

(declare-fun b!4106771 () Bool)

(declare-fun tp!1246272 () Bool)

(declare-fun tp!1246271 () Bool)

(assert (=> b!4106771 (= e!2548413 (and tp!1246272 tp!1246271))))

(declare-fun b!4106773 () Bool)

(declare-fun tp!1246269 () Bool)

(declare-fun tp!1246268 () Bool)

(assert (=> b!4106773 (= e!2548413 (and tp!1246269 tp!1246268))))

(assert (=> b!4105932 (= tp!1245336 e!2548413)))

(declare-fun b!4106772 () Bool)

(declare-fun tp!1246270 () Bool)

(assert (=> b!4106772 (= e!2548413 tp!1246270)))

(assert (= (and b!4105932 ((_ is ElementMatch!12085) (regOne!24683 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106770))

(assert (= (and b!4105932 ((_ is Concat!19495) (regOne!24683 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106771))

(assert (= (and b!4105932 ((_ is Star!12085) (regOne!24683 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106772))

(assert (= (and b!4105932 ((_ is Union!12085) (regOne!24683 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106773))

(declare-fun b!4106774 () Bool)

(declare-fun e!2548414 () Bool)

(assert (=> b!4106774 (= e!2548414 tp_is_empty!21137)))

(declare-fun b!4106775 () Bool)

(declare-fun tp!1246277 () Bool)

(declare-fun tp!1246276 () Bool)

(assert (=> b!4106775 (= e!2548414 (and tp!1246277 tp!1246276))))

(declare-fun b!4106777 () Bool)

(declare-fun tp!1246274 () Bool)

(declare-fun tp!1246273 () Bool)

(assert (=> b!4106777 (= e!2548414 (and tp!1246274 tp!1246273))))

(assert (=> b!4105932 (= tp!1245335 e!2548414)))

(declare-fun b!4106776 () Bool)

(declare-fun tp!1246275 () Bool)

(assert (=> b!4106776 (= e!2548414 tp!1246275)))

(assert (= (and b!4105932 ((_ is ElementMatch!12085) (regTwo!24683 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106774))

(assert (= (and b!4105932 ((_ is Concat!19495) (regTwo!24683 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106775))

(assert (= (and b!4105932 ((_ is Star!12085) (regTwo!24683 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106776))

(assert (= (and b!4105932 ((_ is Union!12085) (regTwo!24683 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106777))

(declare-fun b!4106778 () Bool)

(declare-fun e!2548415 () Bool)

(assert (=> b!4106778 (= e!2548415 tp_is_empty!21137)))

(declare-fun b!4106779 () Bool)

(declare-fun tp!1246282 () Bool)

(declare-fun tp!1246281 () Bool)

(assert (=> b!4106779 (= e!2548415 (and tp!1246282 tp!1246281))))

(declare-fun b!4106781 () Bool)

(declare-fun tp!1246279 () Bool)

(declare-fun tp!1246278 () Bool)

(assert (=> b!4106781 (= e!2548415 (and tp!1246279 tp!1246278))))

(assert (=> b!4105914 (= tp!1245319 e!2548415)))

(declare-fun b!4106780 () Bool)

(declare-fun tp!1246280 () Bool)

(assert (=> b!4106780 (= e!2548415 tp!1246280)))

(assert (= (and b!4105914 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106778))

(assert (= (and b!4105914 ((_ is Concat!19495) (regOne!24682 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106779))

(assert (= (and b!4105914 ((_ is Star!12085) (regOne!24682 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106780))

(assert (= (and b!4105914 ((_ is Union!12085) (regOne!24682 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106781))

(declare-fun b!4106782 () Bool)

(declare-fun e!2548416 () Bool)

(assert (=> b!4106782 (= e!2548416 tp_is_empty!21137)))

(declare-fun b!4106783 () Bool)

(declare-fun tp!1246287 () Bool)

(declare-fun tp!1246286 () Bool)

(assert (=> b!4106783 (= e!2548416 (and tp!1246287 tp!1246286))))

(declare-fun b!4106785 () Bool)

(declare-fun tp!1246284 () Bool)

(declare-fun tp!1246283 () Bool)

(assert (=> b!4106785 (= e!2548416 (and tp!1246284 tp!1246283))))

(assert (=> b!4105914 (= tp!1245318 e!2548416)))

(declare-fun b!4106784 () Bool)

(declare-fun tp!1246285 () Bool)

(assert (=> b!4106784 (= e!2548416 tp!1246285)))

(assert (= (and b!4105914 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106782))

(assert (= (and b!4105914 ((_ is Concat!19495) (regTwo!24682 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106783))

(assert (= (and b!4105914 ((_ is Star!12085) (regTwo!24682 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106784))

(assert (= (and b!4105914 ((_ is Union!12085) (regTwo!24682 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106785))

(declare-fun b!4106786 () Bool)

(declare-fun e!2548417 () Bool)

(assert (=> b!4106786 (= e!2548417 tp_is_empty!21137)))

(declare-fun b!4106787 () Bool)

(declare-fun tp!1246292 () Bool)

(declare-fun tp!1246291 () Bool)

(assert (=> b!4106787 (= e!2548417 (and tp!1246292 tp!1246291))))

(declare-fun b!4106789 () Bool)

(declare-fun tp!1246289 () Bool)

(declare-fun tp!1246288 () Bool)

(assert (=> b!4106789 (= e!2548417 (and tp!1246289 tp!1246288))))

(assert (=> b!4105923 (= tp!1245327 e!2548417)))

(declare-fun b!4106788 () Bool)

(declare-fun tp!1246290 () Bool)

(assert (=> b!4106788 (= e!2548417 tp!1246290)))

(assert (= (and b!4105923 ((_ is ElementMatch!12085) (reg!12414 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106786))

(assert (= (and b!4105923 ((_ is Concat!19495) (reg!12414 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106787))

(assert (= (and b!4105923 ((_ is Star!12085) (reg!12414 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106788))

(assert (= (and b!4105923 ((_ is Union!12085) (reg!12414 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106789))

(declare-fun b!4106790 () Bool)

(declare-fun e!2548418 () Bool)

(assert (=> b!4106790 (= e!2548418 tp_is_empty!21137)))

(declare-fun b!4106791 () Bool)

(declare-fun tp!1246297 () Bool)

(declare-fun tp!1246296 () Bool)

(assert (=> b!4106791 (= e!2548418 (and tp!1246297 tp!1246296))))

(declare-fun b!4106793 () Bool)

(declare-fun tp!1246294 () Bool)

(declare-fun tp!1246293 () Bool)

(assert (=> b!4106793 (= e!2548418 (and tp!1246294 tp!1246293))))

(assert (=> b!4105962 (= tp!1245379 e!2548418)))

(declare-fun b!4106792 () Bool)

(declare-fun tp!1246295 () Bool)

(assert (=> b!4106792 (= e!2548418 tp!1246295)))

(assert (= (and b!4105962 ((_ is ElementMatch!12085) (regOne!24682 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106790))

(assert (= (and b!4105962 ((_ is Concat!19495) (regOne!24682 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106791))

(assert (= (and b!4105962 ((_ is Star!12085) (regOne!24682 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106792))

(assert (= (and b!4105962 ((_ is Union!12085) (regOne!24682 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106793))

(declare-fun b!4106794 () Bool)

(declare-fun e!2548419 () Bool)

(assert (=> b!4106794 (= e!2548419 tp_is_empty!21137)))

(declare-fun b!4106795 () Bool)

(declare-fun tp!1246302 () Bool)

(declare-fun tp!1246301 () Bool)

(assert (=> b!4106795 (= e!2548419 (and tp!1246302 tp!1246301))))

(declare-fun b!4106797 () Bool)

(declare-fun tp!1246299 () Bool)

(declare-fun tp!1246298 () Bool)

(assert (=> b!4106797 (= e!2548419 (and tp!1246299 tp!1246298))))

(assert (=> b!4105962 (= tp!1245378 e!2548419)))

(declare-fun b!4106796 () Bool)

(declare-fun tp!1246300 () Bool)

(assert (=> b!4106796 (= e!2548419 tp!1246300)))

(assert (= (and b!4105962 ((_ is ElementMatch!12085) (regTwo!24682 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106794))

(assert (= (and b!4105962 ((_ is Concat!19495) (regTwo!24682 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106795))

(assert (= (and b!4105962 ((_ is Star!12085) (regTwo!24682 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106796))

(assert (= (and b!4105962 ((_ is Union!12085) (regTwo!24682 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106797))

(declare-fun b!4106798 () Bool)

(declare-fun e!2548420 () Bool)

(assert (=> b!4106798 (= e!2548420 tp_is_empty!21137)))

(declare-fun b!4106799 () Bool)

(declare-fun tp!1246307 () Bool)

(declare-fun tp!1246306 () Bool)

(assert (=> b!4106799 (= e!2548420 (and tp!1246307 tp!1246306))))

(declare-fun b!4106801 () Bool)

(declare-fun tp!1246304 () Bool)

(declare-fun tp!1246303 () Bool)

(assert (=> b!4106801 (= e!2548420 (and tp!1246304 tp!1246303))))

(assert (=> b!4105796 (= tp!1245179 e!2548420)))

(declare-fun b!4106800 () Bool)

(declare-fun tp!1246305 () Bool)

(assert (=> b!4106800 (= e!2548420 tp!1246305)))

(assert (= (and b!4105796 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106798))

(assert (= (and b!4105796 ((_ is Concat!19495) (regOne!24682 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106799))

(assert (= (and b!4105796 ((_ is Star!12085) (regOne!24682 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106800))

(assert (= (and b!4105796 ((_ is Union!12085) (regOne!24682 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106801))

(declare-fun b!4106802 () Bool)

(declare-fun e!2548421 () Bool)

(assert (=> b!4106802 (= e!2548421 tp_is_empty!21137)))

(declare-fun b!4106803 () Bool)

(declare-fun tp!1246312 () Bool)

(declare-fun tp!1246311 () Bool)

(assert (=> b!4106803 (= e!2548421 (and tp!1246312 tp!1246311))))

(declare-fun b!4106805 () Bool)

(declare-fun tp!1246309 () Bool)

(declare-fun tp!1246308 () Bool)

(assert (=> b!4106805 (= e!2548421 (and tp!1246309 tp!1246308))))

(assert (=> b!4105796 (= tp!1245178 e!2548421)))

(declare-fun b!4106804 () Bool)

(declare-fun tp!1246310 () Bool)

(assert (=> b!4106804 (= e!2548421 tp!1246310)))

(assert (= (and b!4105796 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106802))

(assert (= (and b!4105796 ((_ is Concat!19495) (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106803))

(assert (= (and b!4105796 ((_ is Star!12085) (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106804))

(assert (= (and b!4105796 ((_ is Union!12085) (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106805))

(declare-fun b!4106806 () Bool)

(declare-fun e!2548422 () Bool)

(assert (=> b!4106806 (= e!2548422 tp_is_empty!21137)))

(declare-fun b!4106807 () Bool)

(declare-fun tp!1246317 () Bool)

(declare-fun tp!1246316 () Bool)

(assert (=> b!4106807 (= e!2548422 (and tp!1246317 tp!1246316))))

(declare-fun b!4106809 () Bool)

(declare-fun tp!1246314 () Bool)

(declare-fun tp!1246313 () Bool)

(assert (=> b!4106809 (= e!2548422 (and tp!1246314 tp!1246313))))

(assert (=> b!4105805 (= tp!1245187 e!2548422)))

(declare-fun b!4106808 () Bool)

(declare-fun tp!1246315 () Bool)

(assert (=> b!4106808 (= e!2548422 tp!1246315)))

(assert (= (and b!4105805 ((_ is ElementMatch!12085) (reg!12414 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106806))

(assert (= (and b!4105805 ((_ is Concat!19495) (reg!12414 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106807))

(assert (= (and b!4105805 ((_ is Star!12085) (reg!12414 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106808))

(assert (= (and b!4105805 ((_ is Union!12085) (reg!12414 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106809))

(declare-fun b!4106810 () Bool)

(declare-fun e!2548423 () Bool)

(assert (=> b!4106810 (= e!2548423 tp_is_empty!21137)))

(declare-fun b!4106811 () Bool)

(declare-fun tp!1246322 () Bool)

(declare-fun tp!1246321 () Bool)

(assert (=> b!4106811 (= e!2548423 (and tp!1246322 tp!1246321))))

(declare-fun b!4106813 () Bool)

(declare-fun tp!1246319 () Bool)

(declare-fun tp!1246318 () Bool)

(assert (=> b!4106813 (= e!2548423 (and tp!1246319 tp!1246318))))

(assert (=> b!4105842 (= tp!1245234 e!2548423)))

(declare-fun b!4106812 () Bool)

(declare-fun tp!1246320 () Bool)

(assert (=> b!4106812 (= e!2548423 tp!1246320)))

(assert (= (and b!4105842 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106810))

(assert (= (and b!4105842 ((_ is Concat!19495) (regOne!24682 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106811))

(assert (= (and b!4105842 ((_ is Star!12085) (regOne!24682 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106812))

(assert (= (and b!4105842 ((_ is Union!12085) (regOne!24682 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106813))

(declare-fun b!4106814 () Bool)

(declare-fun e!2548424 () Bool)

(assert (=> b!4106814 (= e!2548424 tp_is_empty!21137)))

(declare-fun b!4106815 () Bool)

(declare-fun tp!1246327 () Bool)

(declare-fun tp!1246326 () Bool)

(assert (=> b!4106815 (= e!2548424 (and tp!1246327 tp!1246326))))

(declare-fun b!4106817 () Bool)

(declare-fun tp!1246324 () Bool)

(declare-fun tp!1246323 () Bool)

(assert (=> b!4106817 (= e!2548424 (and tp!1246324 tp!1246323))))

(assert (=> b!4105842 (= tp!1245233 e!2548424)))

(declare-fun b!4106816 () Bool)

(declare-fun tp!1246325 () Bool)

(assert (=> b!4106816 (= e!2548424 tp!1246325)))

(assert (= (and b!4105842 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106814))

(assert (= (and b!4105842 ((_ is Concat!19495) (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106815))

(assert (= (and b!4105842 ((_ is Star!12085) (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106816))

(assert (= (and b!4105842 ((_ is Union!12085) (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106817))

(declare-fun b!4106818 () Bool)

(declare-fun e!2548425 () Bool)

(assert (=> b!4106818 (= e!2548425 tp_is_empty!21137)))

(declare-fun b!4106819 () Bool)

(declare-fun tp!1246332 () Bool)

(declare-fun tp!1246331 () Bool)

(assert (=> b!4106819 (= e!2548425 (and tp!1246332 tp!1246331))))

(declare-fun b!4106821 () Bool)

(declare-fun tp!1246329 () Bool)

(declare-fun tp!1246328 () Bool)

(assert (=> b!4106821 (= e!2548425 (and tp!1246329 tp!1246328))))

(assert (=> b!4105836 (= tp!1245221 e!2548425)))

(declare-fun b!4106820 () Bool)

(declare-fun tp!1246330 () Bool)

(assert (=> b!4106820 (= e!2548425 tp!1246330)))

(assert (= (and b!4105836 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106818))

(assert (= (and b!4105836 ((_ is Concat!19495) (regOne!24683 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106819))

(assert (= (and b!4105836 ((_ is Star!12085) (regOne!24683 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106820))

(assert (= (and b!4105836 ((_ is Union!12085) (regOne!24683 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106821))

(declare-fun b!4106822 () Bool)

(declare-fun e!2548426 () Bool)

(assert (=> b!4106822 (= e!2548426 tp_is_empty!21137)))

(declare-fun b!4106823 () Bool)

(declare-fun tp!1246337 () Bool)

(declare-fun tp!1246336 () Bool)

(assert (=> b!4106823 (= e!2548426 (and tp!1246337 tp!1246336))))

(declare-fun b!4106825 () Bool)

(declare-fun tp!1246334 () Bool)

(declare-fun tp!1246333 () Bool)

(assert (=> b!4106825 (= e!2548426 (and tp!1246334 tp!1246333))))

(assert (=> b!4105836 (= tp!1245220 e!2548426)))

(declare-fun b!4106824 () Bool)

(declare-fun tp!1246335 () Bool)

(assert (=> b!4106824 (= e!2548426 tp!1246335)))

(assert (= (and b!4105836 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106822))

(assert (= (and b!4105836 ((_ is Concat!19495) (regTwo!24683 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106823))

(assert (= (and b!4105836 ((_ is Star!12085) (regTwo!24683 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106824))

(assert (= (and b!4105836 ((_ is Union!12085) (regTwo!24683 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4106825))

(declare-fun b!4106826 () Bool)

(declare-fun e!2548427 () Bool)

(assert (=> b!4106826 (= e!2548427 tp_is_empty!21137)))

(declare-fun b!4106827 () Bool)

(declare-fun tp!1246342 () Bool)

(declare-fun tp!1246341 () Bool)

(assert (=> b!4106827 (= e!2548427 (and tp!1246342 tp!1246341))))

(declare-fun b!4106829 () Bool)

(declare-fun tp!1246339 () Bool)

(declare-fun tp!1246338 () Bool)

(assert (=> b!4106829 (= e!2548427 (and tp!1246339 tp!1246338))))

(assert (=> b!4105769 (= tp!1245150 e!2548427)))

(declare-fun b!4106828 () Bool)

(declare-fun tp!1246340 () Bool)

(assert (=> b!4106828 (= e!2548427 tp!1246340)))

(assert (= (and b!4105769 ((_ is ElementMatch!12085) (regOne!24682 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4106826))

(assert (= (and b!4105769 ((_ is Concat!19495) (regOne!24682 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4106827))

(assert (= (and b!4105769 ((_ is Star!12085) (regOne!24682 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4106828))

(assert (= (and b!4105769 ((_ is Union!12085) (regOne!24682 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4106829))

(declare-fun b!4106830 () Bool)

(declare-fun e!2548428 () Bool)

(assert (=> b!4106830 (= e!2548428 tp_is_empty!21137)))

(declare-fun b!4106831 () Bool)

(declare-fun tp!1246347 () Bool)

(declare-fun tp!1246346 () Bool)

(assert (=> b!4106831 (= e!2548428 (and tp!1246347 tp!1246346))))

(declare-fun b!4106833 () Bool)

(declare-fun tp!1246344 () Bool)

(declare-fun tp!1246343 () Bool)

(assert (=> b!4106833 (= e!2548428 (and tp!1246344 tp!1246343))))

(assert (=> b!4105769 (= tp!1245149 e!2548428)))

(declare-fun b!4106832 () Bool)

(declare-fun tp!1246345 () Bool)

(assert (=> b!4106832 (= e!2548428 tp!1246345)))

(assert (= (and b!4105769 ((_ is ElementMatch!12085) (regTwo!24682 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4106830))

(assert (= (and b!4105769 ((_ is Concat!19495) (regTwo!24682 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4106831))

(assert (= (and b!4105769 ((_ is Star!12085) (regTwo!24682 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4106832))

(assert (= (and b!4105769 ((_ is Union!12085) (regTwo!24682 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4106833))

(declare-fun b!4106834 () Bool)

(declare-fun e!2548429 () Bool)

(assert (=> b!4106834 (= e!2548429 tp_is_empty!21137)))

(declare-fun b!4106835 () Bool)

(declare-fun tp!1246352 () Bool)

(declare-fun tp!1246351 () Bool)

(assert (=> b!4106835 (= e!2548429 (and tp!1246352 tp!1246351))))

(declare-fun b!4106837 () Bool)

(declare-fun tp!1246349 () Bool)

(declare-fun tp!1246348 () Bool)

(assert (=> b!4106837 (= e!2548429 (and tp!1246349 tp!1246348))))

(assert (=> b!4105872 (= tp!1245269 e!2548429)))

(declare-fun b!4106836 () Bool)

(declare-fun tp!1246350 () Bool)

(assert (=> b!4106836 (= e!2548429 tp!1246350)))

(assert (= (and b!4105872 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106834))

(assert (= (and b!4105872 ((_ is Concat!19495) (regOne!24682 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106835))

(assert (= (and b!4105872 ((_ is Star!12085) (regOne!24682 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106836))

(assert (= (and b!4105872 ((_ is Union!12085) (regOne!24682 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106837))

(declare-fun b!4106838 () Bool)

(declare-fun e!2548430 () Bool)

(assert (=> b!4106838 (= e!2548430 tp_is_empty!21137)))

(declare-fun b!4106839 () Bool)

(declare-fun tp!1246357 () Bool)

(declare-fun tp!1246356 () Bool)

(assert (=> b!4106839 (= e!2548430 (and tp!1246357 tp!1246356))))

(declare-fun b!4106841 () Bool)

(declare-fun tp!1246354 () Bool)

(declare-fun tp!1246353 () Bool)

(assert (=> b!4106841 (= e!2548430 (and tp!1246354 tp!1246353))))

(assert (=> b!4105872 (= tp!1245268 e!2548430)))

(declare-fun b!4106840 () Bool)

(declare-fun tp!1246355 () Bool)

(assert (=> b!4106840 (= e!2548430 tp!1246355)))

(assert (= (and b!4105872 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106838))

(assert (= (and b!4105872 ((_ is Concat!19495) (regTwo!24682 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106839))

(assert (= (and b!4105872 ((_ is Star!12085) (regTwo!24682 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106840))

(assert (= (and b!4105872 ((_ is Union!12085) (regTwo!24682 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4106841))

(declare-fun b!4106842 () Bool)

(declare-fun e!2548431 () Bool)

(assert (=> b!4106842 (= e!2548431 tp_is_empty!21137)))

(declare-fun b!4106843 () Bool)

(declare-fun tp!1246362 () Bool)

(declare-fun tp!1246361 () Bool)

(assert (=> b!4106843 (= e!2548431 (and tp!1246362 tp!1246361))))

(declare-fun b!4106845 () Bool)

(declare-fun tp!1246359 () Bool)

(declare-fun tp!1246358 () Bool)

(assert (=> b!4106845 (= e!2548431 (and tp!1246359 tp!1246358))))

(assert (=> b!4105946 (= tp!1245359 e!2548431)))

(declare-fun b!4106844 () Bool)

(declare-fun tp!1246360 () Bool)

(assert (=> b!4106844 (= e!2548431 tp!1246360)))

(assert (= (and b!4105946 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106842))

(assert (= (and b!4105946 ((_ is Concat!19495) (regOne!24682 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106843))

(assert (= (and b!4105946 ((_ is Star!12085) (regOne!24682 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106844))

(assert (= (and b!4105946 ((_ is Union!12085) (regOne!24682 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106845))

(declare-fun b!4106846 () Bool)

(declare-fun e!2548432 () Bool)

(assert (=> b!4106846 (= e!2548432 tp_is_empty!21137)))

(declare-fun b!4106847 () Bool)

(declare-fun tp!1246367 () Bool)

(declare-fun tp!1246366 () Bool)

(assert (=> b!4106847 (= e!2548432 (and tp!1246367 tp!1246366))))

(declare-fun b!4106849 () Bool)

(declare-fun tp!1246364 () Bool)

(declare-fun tp!1246363 () Bool)

(assert (=> b!4106849 (= e!2548432 (and tp!1246364 tp!1246363))))

(assert (=> b!4105946 (= tp!1245358 e!2548432)))

(declare-fun b!4106848 () Bool)

(declare-fun tp!1246365 () Bool)

(assert (=> b!4106848 (= e!2548432 tp!1246365)))

(assert (= (and b!4105946 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106846))

(assert (= (and b!4105946 ((_ is Concat!19495) (regTwo!24682 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106847))

(assert (= (and b!4105946 ((_ is Star!12085) (regTwo!24682 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106848))

(assert (= (and b!4105946 ((_ is Union!12085) (regTwo!24682 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106849))

(declare-fun b!4106850 () Bool)

(declare-fun e!2548433 () Bool)

(assert (=> b!4106850 (= e!2548433 tp_is_empty!21137)))

(declare-fun b!4106851 () Bool)

(declare-fun tp!1246372 () Bool)

(declare-fun tp!1246371 () Bool)

(assert (=> b!4106851 (= e!2548433 (and tp!1246372 tp!1246371))))

(declare-fun b!4106853 () Bool)

(declare-fun tp!1246369 () Bool)

(declare-fun tp!1246368 () Bool)

(assert (=> b!4106853 (= e!2548433 (and tp!1246369 tp!1246368))))

(assert (=> b!4105955 (= tp!1245367 e!2548433)))

(declare-fun b!4106852 () Bool)

(declare-fun tp!1246370 () Bool)

(assert (=> b!4106852 (= e!2548433 tp!1246370)))

(assert (= (and b!4105955 ((_ is ElementMatch!12085) (reg!12414 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106850))

(assert (= (and b!4105955 ((_ is Concat!19495) (reg!12414 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106851))

(assert (= (and b!4105955 ((_ is Star!12085) (reg!12414 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106852))

(assert (= (and b!4105955 ((_ is Union!12085) (reg!12414 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106853))

(declare-fun b!4106854 () Bool)

(declare-fun e!2548434 () Bool)

(assert (=> b!4106854 (= e!2548434 tp_is_empty!21137)))

(declare-fun b!4106855 () Bool)

(declare-fun tp!1246377 () Bool)

(declare-fun tp!1246376 () Bool)

(assert (=> b!4106855 (= e!2548434 (and tp!1246377 tp!1246376))))

(declare-fun b!4106857 () Bool)

(declare-fun tp!1246374 () Bool)

(declare-fun tp!1246373 () Bool)

(assert (=> b!4106857 (= e!2548434 (and tp!1246374 tp!1246373))))

(assert (=> b!4105894 (= tp!1245294 e!2548434)))

(declare-fun b!4106856 () Bool)

(declare-fun tp!1246375 () Bool)

(assert (=> b!4106856 (= e!2548434 tp!1246375)))

(assert (= (and b!4105894 ((_ is ElementMatch!12085) (regOne!24682 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106854))

(assert (= (and b!4105894 ((_ is Concat!19495) (regOne!24682 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106855))

(assert (= (and b!4105894 ((_ is Star!12085) (regOne!24682 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106856))

(assert (= (and b!4105894 ((_ is Union!12085) (regOne!24682 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106857))

(declare-fun b!4106858 () Bool)

(declare-fun e!2548435 () Bool)

(assert (=> b!4106858 (= e!2548435 tp_is_empty!21137)))

(declare-fun b!4106859 () Bool)

(declare-fun tp!1246382 () Bool)

(declare-fun tp!1246381 () Bool)

(assert (=> b!4106859 (= e!2548435 (and tp!1246382 tp!1246381))))

(declare-fun b!4106861 () Bool)

(declare-fun tp!1246379 () Bool)

(declare-fun tp!1246378 () Bool)

(assert (=> b!4106861 (= e!2548435 (and tp!1246379 tp!1246378))))

(assert (=> b!4105894 (= tp!1245293 e!2548435)))

(declare-fun b!4106860 () Bool)

(declare-fun tp!1246380 () Bool)

(assert (=> b!4106860 (= e!2548435 tp!1246380)))

(assert (= (and b!4105894 ((_ is ElementMatch!12085) (regTwo!24682 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106858))

(assert (= (and b!4105894 ((_ is Concat!19495) (regTwo!24682 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106859))

(assert (= (and b!4105894 ((_ is Star!12085) (regTwo!24682 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106860))

(assert (= (and b!4105894 ((_ is Union!12085) (regTwo!24682 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106861))

(declare-fun b!4106862 () Bool)

(declare-fun e!2548436 () Bool)

(assert (=> b!4106862 (= e!2548436 tp_is_empty!21137)))

(declare-fun b!4106863 () Bool)

(declare-fun tp!1246387 () Bool)

(declare-fun tp!1246386 () Bool)

(assert (=> b!4106863 (= e!2548436 (and tp!1246387 tp!1246386))))

(declare-fun b!4106865 () Bool)

(declare-fun tp!1246384 () Bool)

(declare-fun tp!1246383 () Bool)

(assert (=> b!4106865 (= e!2548436 (and tp!1246384 tp!1246383))))

(assert (=> b!4105903 (= tp!1245302 e!2548436)))

(declare-fun b!4106864 () Bool)

(declare-fun tp!1246385 () Bool)

(assert (=> b!4106864 (= e!2548436 tp!1246385)))

(assert (= (and b!4105903 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106862))

(assert (= (and b!4105903 ((_ is Concat!19495) (reg!12414 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106863))

(assert (= (and b!4105903 ((_ is Star!12085) (reg!12414 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106864))

(assert (= (and b!4105903 ((_ is Union!12085) (reg!12414 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106865))

(declare-fun b!4106866 () Bool)

(declare-fun e!2548437 () Bool)

(assert (=> b!4106866 (= e!2548437 tp_is_empty!21137)))

(declare-fun b!4106867 () Bool)

(declare-fun tp!1246392 () Bool)

(declare-fun tp!1246391 () Bool)

(assert (=> b!4106867 (= e!2548437 (and tp!1246392 tp!1246391))))

(declare-fun b!4106869 () Bool)

(declare-fun tp!1246389 () Bool)

(declare-fun tp!1246388 () Bool)

(assert (=> b!4106869 (= e!2548437 (and tp!1246389 tp!1246388))))

(assert (=> b!4105887 (= tp!1245282 e!2548437)))

(declare-fun b!4106868 () Bool)

(declare-fun tp!1246390 () Bool)

(assert (=> b!4106868 (= e!2548437 tp!1246390)))

(assert (= (and b!4105887 ((_ is ElementMatch!12085) (reg!12414 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106866))

(assert (= (and b!4105887 ((_ is Concat!19495) (reg!12414 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106867))

(assert (= (and b!4105887 ((_ is Star!12085) (reg!12414 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106868))

(assert (= (and b!4105887 ((_ is Union!12085) (reg!12414 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106869))

(declare-fun b!4106870 () Bool)

(declare-fun e!2548438 () Bool)

(assert (=> b!4106870 (= e!2548438 tp_is_empty!21137)))

(declare-fun b!4106871 () Bool)

(declare-fun tp!1246397 () Bool)

(declare-fun tp!1246396 () Bool)

(assert (=> b!4106871 (= e!2548438 (and tp!1246397 tp!1246396))))

(declare-fun b!4106873 () Bool)

(declare-fun tp!1246394 () Bool)

(declare-fun tp!1246393 () Bool)

(assert (=> b!4106873 (= e!2548438 (and tp!1246394 tp!1246393))))

(assert (=> b!4105902 (= tp!1245304 e!2548438)))

(declare-fun b!4106872 () Bool)

(declare-fun tp!1246395 () Bool)

(assert (=> b!4106872 (= e!2548438 tp!1246395)))

(assert (= (and b!4105902 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106870))

(assert (= (and b!4105902 ((_ is Concat!19495) (regOne!24682 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106871))

(assert (= (and b!4105902 ((_ is Star!12085) (regOne!24682 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106872))

(assert (= (and b!4105902 ((_ is Union!12085) (regOne!24682 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106873))

(declare-fun b!4106874 () Bool)

(declare-fun e!2548439 () Bool)

(assert (=> b!4106874 (= e!2548439 tp_is_empty!21137)))

(declare-fun b!4106875 () Bool)

(declare-fun tp!1246402 () Bool)

(declare-fun tp!1246401 () Bool)

(assert (=> b!4106875 (= e!2548439 (and tp!1246402 tp!1246401))))

(declare-fun b!4106877 () Bool)

(declare-fun tp!1246399 () Bool)

(declare-fun tp!1246398 () Bool)

(assert (=> b!4106877 (= e!2548439 (and tp!1246399 tp!1246398))))

(assert (=> b!4105902 (= tp!1245303 e!2548439)))

(declare-fun b!4106876 () Bool)

(declare-fun tp!1246400 () Bool)

(assert (=> b!4106876 (= e!2548439 tp!1246400)))

(assert (= (and b!4105902 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106874))

(assert (= (and b!4105902 ((_ is Concat!19495) (regTwo!24682 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106875))

(assert (= (and b!4105902 ((_ is Star!12085) (regTwo!24682 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106876))

(assert (= (and b!4105902 ((_ is Union!12085) (regTwo!24682 (regTwo!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106877))

(declare-fun b!4106878 () Bool)

(declare-fun e!2548440 () Bool)

(assert (=> b!4106878 (= e!2548440 tp_is_empty!21137)))

(declare-fun b!4106879 () Bool)

(declare-fun tp!1246407 () Bool)

(declare-fun tp!1246406 () Bool)

(assert (=> b!4106879 (= e!2548440 (and tp!1246407 tp!1246406))))

(declare-fun b!4106881 () Bool)

(declare-fun tp!1246404 () Bool)

(declare-fun tp!1246403 () Bool)

(assert (=> b!4106881 (= e!2548440 (and tp!1246404 tp!1246403))))

(assert (=> b!4105911 (= tp!1245312 e!2548440)))

(declare-fun b!4106880 () Bool)

(declare-fun tp!1246405 () Bool)

(assert (=> b!4106880 (= e!2548440 tp!1246405)))

(assert (= (and b!4105911 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106878))

(assert (= (and b!4105911 ((_ is Concat!19495) (reg!12414 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106879))

(assert (= (and b!4105911 ((_ is Star!12085) (reg!12414 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106880))

(assert (= (and b!4105911 ((_ is Union!12085) (reg!12414 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106881))

(declare-fun b!4106882 () Bool)

(declare-fun e!2548441 () Bool)

(assert (=> b!4106882 (= e!2548441 tp_is_empty!21137)))

(declare-fun b!4106883 () Bool)

(declare-fun tp!1246412 () Bool)

(declare-fun tp!1246411 () Bool)

(assert (=> b!4106883 (= e!2548441 (and tp!1246412 tp!1246411))))

(declare-fun b!4106885 () Bool)

(declare-fun tp!1246409 () Bool)

(declare-fun tp!1246408 () Bool)

(assert (=> b!4106885 (= e!2548441 (and tp!1246409 tp!1246408))))

(assert (=> b!4105886 (= tp!1245284 e!2548441)))

(declare-fun b!4106884 () Bool)

(declare-fun tp!1246410 () Bool)

(assert (=> b!4106884 (= e!2548441 tp!1246410)))

(assert (= (and b!4105886 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106882))

(assert (= (and b!4105886 ((_ is Concat!19495) (regOne!24682 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106883))

(assert (= (and b!4105886 ((_ is Star!12085) (regOne!24682 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106884))

(assert (= (and b!4105886 ((_ is Union!12085) (regOne!24682 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106885))

(declare-fun b!4106886 () Bool)

(declare-fun e!2548442 () Bool)

(assert (=> b!4106886 (= e!2548442 tp_is_empty!21137)))

(declare-fun b!4106887 () Bool)

(declare-fun tp!1246417 () Bool)

(declare-fun tp!1246416 () Bool)

(assert (=> b!4106887 (= e!2548442 (and tp!1246417 tp!1246416))))

(declare-fun b!4106889 () Bool)

(declare-fun tp!1246414 () Bool)

(declare-fun tp!1246413 () Bool)

(assert (=> b!4106889 (= e!2548442 (and tp!1246414 tp!1246413))))

(assert (=> b!4105886 (= tp!1245283 e!2548442)))

(declare-fun b!4106888 () Bool)

(declare-fun tp!1246415 () Bool)

(assert (=> b!4106888 (= e!2548442 tp!1246415)))

(assert (= (and b!4105886 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106886))

(assert (= (and b!4105886 ((_ is Concat!19495) (regTwo!24682 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106887))

(assert (= (and b!4105886 ((_ is Star!12085) (regTwo!24682 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106888))

(assert (= (and b!4105886 ((_ is Union!12085) (regTwo!24682 (regOne!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106889))

(declare-fun b!4106890 () Bool)

(declare-fun e!2548443 () Bool)

(assert (=> b!4106890 (= e!2548443 tp_is_empty!21137)))

(declare-fun b!4106891 () Bool)

(declare-fun tp!1246422 () Bool)

(declare-fun tp!1246421 () Bool)

(assert (=> b!4106891 (= e!2548443 (and tp!1246422 tp!1246421))))

(declare-fun b!4106893 () Bool)

(declare-fun tp!1246419 () Bool)

(declare-fun tp!1246418 () Bool)

(assert (=> b!4106893 (= e!2548443 (and tp!1246419 tp!1246418))))

(assert (=> b!4105992 (= tp!1245406 e!2548443)))

(declare-fun b!4106892 () Bool)

(declare-fun tp!1246420 () Bool)

(assert (=> b!4106892 (= e!2548443 tp!1246420)))

(assert (= (and b!4105992 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106890))

(assert (= (and b!4105992 ((_ is Concat!19495) (regOne!24683 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106891))

(assert (= (and b!4105992 ((_ is Star!12085) (regOne!24683 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106892))

(assert (= (and b!4105992 ((_ is Union!12085) (regOne!24683 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106893))

(declare-fun b!4106894 () Bool)

(declare-fun e!2548444 () Bool)

(assert (=> b!4106894 (= e!2548444 tp_is_empty!21137)))

(declare-fun b!4106895 () Bool)

(declare-fun tp!1246427 () Bool)

(declare-fun tp!1246426 () Bool)

(assert (=> b!4106895 (= e!2548444 (and tp!1246427 tp!1246426))))

(declare-fun b!4106897 () Bool)

(declare-fun tp!1246424 () Bool)

(declare-fun tp!1246423 () Bool)

(assert (=> b!4106897 (= e!2548444 (and tp!1246424 tp!1246423))))

(assert (=> b!4105992 (= tp!1245405 e!2548444)))

(declare-fun b!4106896 () Bool)

(declare-fun tp!1246425 () Bool)

(assert (=> b!4106896 (= e!2548444 tp!1246425)))

(assert (= (and b!4105992 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106894))

(assert (= (and b!4105992 ((_ is Concat!19495) (regTwo!24683 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106895))

(assert (= (and b!4105992 ((_ is Star!12085) (regTwo!24683 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106896))

(assert (= (and b!4105992 ((_ is Union!12085) (regTwo!24683 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106897))

(declare-fun b!4106898 () Bool)

(declare-fun e!2548445 () Bool)

(assert (=> b!4106898 (= e!2548445 tp_is_empty!21137)))

(declare-fun b!4106899 () Bool)

(declare-fun tp!1246432 () Bool)

(declare-fun tp!1246431 () Bool)

(assert (=> b!4106899 (= e!2548445 (and tp!1246432 tp!1246431))))

(declare-fun b!4106901 () Bool)

(declare-fun tp!1246429 () Bool)

(declare-fun tp!1246428 () Bool)

(assert (=> b!4106901 (= e!2548445 (and tp!1246429 tp!1246428))))

(assert (=> b!4105920 (= tp!1245321 e!2548445)))

(declare-fun b!4106900 () Bool)

(declare-fun tp!1246430 () Bool)

(assert (=> b!4106900 (= e!2548445 tp!1246430)))

(assert (= (and b!4105920 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106898))

(assert (= (and b!4105920 ((_ is Concat!19495) (regOne!24683 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106899))

(assert (= (and b!4105920 ((_ is Star!12085) (regOne!24683 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106900))

(assert (= (and b!4105920 ((_ is Union!12085) (regOne!24683 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106901))

(declare-fun b!4106902 () Bool)

(declare-fun e!2548446 () Bool)

(assert (=> b!4106902 (= e!2548446 tp_is_empty!21137)))

(declare-fun b!4106903 () Bool)

(declare-fun tp!1246437 () Bool)

(declare-fun tp!1246436 () Bool)

(assert (=> b!4106903 (= e!2548446 (and tp!1246437 tp!1246436))))

(declare-fun b!4106905 () Bool)

(declare-fun tp!1246434 () Bool)

(declare-fun tp!1246433 () Bool)

(assert (=> b!4106905 (= e!2548446 (and tp!1246434 tp!1246433))))

(assert (=> b!4105920 (= tp!1245320 e!2548446)))

(declare-fun b!4106904 () Bool)

(declare-fun tp!1246435 () Bool)

(assert (=> b!4106904 (= e!2548446 tp!1246435)))

(assert (= (and b!4105920 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106902))

(assert (= (and b!4105920 ((_ is Concat!19495) (regTwo!24683 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106903))

(assert (= (and b!4105920 ((_ is Star!12085) (regTwo!24683 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106904))

(assert (= (and b!4105920 ((_ is Union!12085) (regTwo!24683 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106905))

(declare-fun b!4106906 () Bool)

(declare-fun e!2548447 () Bool)

(assert (=> b!4106906 (= e!2548447 tp_is_empty!21137)))

(declare-fun b!4106907 () Bool)

(declare-fun tp!1246442 () Bool)

(declare-fun tp!1246441 () Bool)

(assert (=> b!4106907 (= e!2548447 (and tp!1246442 tp!1246441))))

(declare-fun b!4106909 () Bool)

(declare-fun tp!1246439 () Bool)

(declare-fun tp!1246438 () Bool)

(assert (=> b!4106909 (= e!2548447 (and tp!1246439 tp!1246438))))

(assert (=> b!4105784 (= tp!1245164 e!2548447)))

(declare-fun b!4106908 () Bool)

(declare-fun tp!1246440 () Bool)

(assert (=> b!4106908 (= e!2548447 tp!1246440)))

(assert (= (and b!4105784 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106906))

(assert (= (and b!4105784 ((_ is Concat!19495) (regOne!24682 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106907))

(assert (= (and b!4105784 ((_ is Star!12085) (regOne!24682 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106908))

(assert (= (and b!4105784 ((_ is Union!12085) (regOne!24682 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106909))

(declare-fun b!4106910 () Bool)

(declare-fun e!2548448 () Bool)

(assert (=> b!4106910 (= e!2548448 tp_is_empty!21137)))

(declare-fun b!4106911 () Bool)

(declare-fun tp!1246447 () Bool)

(declare-fun tp!1246446 () Bool)

(assert (=> b!4106911 (= e!2548448 (and tp!1246447 tp!1246446))))

(declare-fun b!4106913 () Bool)

(declare-fun tp!1246444 () Bool)

(declare-fun tp!1246443 () Bool)

(assert (=> b!4106913 (= e!2548448 (and tp!1246444 tp!1246443))))

(assert (=> b!4105784 (= tp!1245163 e!2548448)))

(declare-fun b!4106912 () Bool)

(declare-fun tp!1246445 () Bool)

(assert (=> b!4106912 (= e!2548448 tp!1246445)))

(assert (= (and b!4105784 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106910))

(assert (= (and b!4105784 ((_ is Concat!19495) (regTwo!24682 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106911))

(assert (= (and b!4105784 ((_ is Star!12085) (regTwo!24682 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106912))

(assert (= (and b!4105784 ((_ is Union!12085) (regTwo!24682 (regTwo!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106913))

(declare-fun b!4106914 () Bool)

(declare-fun e!2548449 () Bool)

(assert (=> b!4106914 (= e!2548449 tp_is_empty!21137)))

(declare-fun b!4106915 () Bool)

(declare-fun tp!1246452 () Bool)

(declare-fun tp!1246451 () Bool)

(assert (=> b!4106915 (= e!2548449 (and tp!1246452 tp!1246451))))

(declare-fun b!4106917 () Bool)

(declare-fun tp!1246449 () Bool)

(declare-fun tp!1246448 () Bool)

(assert (=> b!4106917 (= e!2548449 (and tp!1246449 tp!1246448))))

(assert (=> b!4105802 (= tp!1245181 e!2548449)))

(declare-fun b!4106916 () Bool)

(declare-fun tp!1246450 () Bool)

(assert (=> b!4106916 (= e!2548449 tp!1246450)))

(assert (= (and b!4105802 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106914))

(assert (= (and b!4105802 ((_ is Concat!19495) (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106915))

(assert (= (and b!4105802 ((_ is Star!12085) (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106916))

(assert (= (and b!4105802 ((_ is Union!12085) (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106917))

(declare-fun b!4106918 () Bool)

(declare-fun e!2548450 () Bool)

(assert (=> b!4106918 (= e!2548450 tp_is_empty!21137)))

(declare-fun b!4106919 () Bool)

(declare-fun tp!1246457 () Bool)

(declare-fun tp!1246456 () Bool)

(assert (=> b!4106919 (= e!2548450 (and tp!1246457 tp!1246456))))

(declare-fun b!4106921 () Bool)

(declare-fun tp!1246454 () Bool)

(declare-fun tp!1246453 () Bool)

(assert (=> b!4106921 (= e!2548450 (and tp!1246454 tp!1246453))))

(assert (=> b!4105802 (= tp!1245180 e!2548450)))

(declare-fun b!4106920 () Bool)

(declare-fun tp!1246455 () Bool)

(assert (=> b!4106920 (= e!2548450 tp!1246455)))

(assert (= (and b!4105802 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106918))

(assert (= (and b!4105802 ((_ is Concat!19495) (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106919))

(assert (= (and b!4105802 ((_ is Star!12085) (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106920))

(assert (= (and b!4105802 ((_ is Union!12085) (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106921))

(declare-fun b!4106922 () Bool)

(declare-fun e!2548451 () Bool)

(assert (=> b!4106922 (= e!2548451 tp_is_empty!21137)))

(declare-fun b!4106923 () Bool)

(declare-fun tp!1246462 () Bool)

(declare-fun tp!1246461 () Bool)

(assert (=> b!4106923 (= e!2548451 (and tp!1246462 tp!1246461))))

(declare-fun b!4106925 () Bool)

(declare-fun tp!1246459 () Bool)

(declare-fun tp!1246458 () Bool)

(assert (=> b!4106925 (= e!2548451 (and tp!1246459 tp!1246458))))

(assert (=> b!4105793 (= tp!1245172 e!2548451)))

(declare-fun b!4106924 () Bool)

(declare-fun tp!1246460 () Bool)

(assert (=> b!4106924 (= e!2548451 tp!1246460)))

(assert (= (and b!4105793 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106922))

(assert (= (and b!4105793 ((_ is Concat!19495) (reg!12414 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106923))

(assert (= (and b!4105793 ((_ is Star!12085) (reg!12414 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106924))

(assert (= (and b!4105793 ((_ is Union!12085) (reg!12414 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106925))

(declare-fun b!4106926 () Bool)

(declare-fun e!2548452 () Bool)

(assert (=> b!4106926 (= e!2548452 tp_is_empty!21137)))

(declare-fun b!4106927 () Bool)

(declare-fun tp!1246467 () Bool)

(declare-fun tp!1246466 () Bool)

(assert (=> b!4106927 (= e!2548452 (and tp!1246467 tp!1246466))))

(declare-fun b!4106929 () Bool)

(declare-fun tp!1246464 () Bool)

(declare-fun tp!1246463 () Bool)

(assert (=> b!4106929 (= e!2548452 (and tp!1246464 tp!1246463))))

(assert (=> b!4105818 (= tp!1245204 e!2548452)))

(declare-fun b!4106928 () Bool)

(declare-fun tp!1246465 () Bool)

(assert (=> b!4106928 (= e!2548452 tp!1246465)))

(assert (= (and b!4105818 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106926))

(assert (= (and b!4105818 ((_ is Concat!19495) (regOne!24682 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106927))

(assert (= (and b!4105818 ((_ is Star!12085) (regOne!24682 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106928))

(assert (= (and b!4105818 ((_ is Union!12085) (regOne!24682 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106929))

(declare-fun b!4106930 () Bool)

(declare-fun e!2548453 () Bool)

(assert (=> b!4106930 (= e!2548453 tp_is_empty!21137)))

(declare-fun b!4106931 () Bool)

(declare-fun tp!1246472 () Bool)

(declare-fun tp!1246471 () Bool)

(assert (=> b!4106931 (= e!2548453 (and tp!1246472 tp!1246471))))

(declare-fun b!4106933 () Bool)

(declare-fun tp!1246469 () Bool)

(declare-fun tp!1246468 () Bool)

(assert (=> b!4106933 (= e!2548453 (and tp!1246469 tp!1246468))))

(assert (=> b!4105818 (= tp!1245203 e!2548453)))

(declare-fun b!4106932 () Bool)

(declare-fun tp!1246470 () Bool)

(assert (=> b!4106932 (= e!2548453 tp!1246470)))

(assert (= (and b!4105818 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106930))

(assert (= (and b!4105818 ((_ is Concat!19495) (regTwo!24682 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106931))

(assert (= (and b!4105818 ((_ is Star!12085) (regTwo!24682 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106932))

(assert (= (and b!4105818 ((_ is Union!12085) (regTwo!24682 (regOne!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4106933))

(declare-fun b!4106934 () Bool)

(declare-fun e!2548454 () Bool)

(assert (=> b!4106934 (= e!2548454 tp_is_empty!21137)))

(declare-fun b!4106935 () Bool)

(declare-fun tp!1246477 () Bool)

(declare-fun tp!1246476 () Bool)

(assert (=> b!4106935 (= e!2548454 (and tp!1246477 tp!1246476))))

(declare-fun b!4106937 () Bool)

(declare-fun tp!1246474 () Bool)

(declare-fun tp!1246473 () Bool)

(assert (=> b!4106937 (= e!2548454 (and tp!1246474 tp!1246473))))

(assert (=> b!4105982 (= tp!1245399 e!2548454)))

(declare-fun b!4106936 () Bool)

(declare-fun tp!1246475 () Bool)

(assert (=> b!4106936 (= e!2548454 tp!1246475)))

(assert (= (and b!4105982 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106934))

(assert (= (and b!4105982 ((_ is Concat!19495) (regOne!24682 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106935))

(assert (= (and b!4105982 ((_ is Star!12085) (regOne!24682 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106936))

(assert (= (and b!4105982 ((_ is Union!12085) (regOne!24682 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106937))

(declare-fun b!4106938 () Bool)

(declare-fun e!2548455 () Bool)

(assert (=> b!4106938 (= e!2548455 tp_is_empty!21137)))

(declare-fun b!4106939 () Bool)

(declare-fun tp!1246482 () Bool)

(declare-fun tp!1246481 () Bool)

(assert (=> b!4106939 (= e!2548455 (and tp!1246482 tp!1246481))))

(declare-fun b!4106941 () Bool)

(declare-fun tp!1246479 () Bool)

(declare-fun tp!1246478 () Bool)

(assert (=> b!4106941 (= e!2548455 (and tp!1246479 tp!1246478))))

(assert (=> b!4105982 (= tp!1245398 e!2548455)))

(declare-fun b!4106940 () Bool)

(declare-fun tp!1246480 () Bool)

(assert (=> b!4106940 (= e!2548455 tp!1246480)))

(assert (= (and b!4105982 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106938))

(assert (= (and b!4105982 ((_ is Concat!19495) (regTwo!24682 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106939))

(assert (= (and b!4105982 ((_ is Star!12085) (regTwo!24682 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106940))

(assert (= (and b!4105982 ((_ is Union!12085) (regTwo!24682 (regTwo!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106941))

(declare-fun b!4106942 () Bool)

(declare-fun e!2548456 () Bool)

(assert (=> b!4106942 (= e!2548456 tp_is_empty!21137)))

(declare-fun b!4106943 () Bool)

(declare-fun tp!1246487 () Bool)

(declare-fun tp!1246486 () Bool)

(assert (=> b!4106943 (= e!2548456 (and tp!1246487 tp!1246486))))

(declare-fun b!4106945 () Bool)

(declare-fun tp!1246484 () Bool)

(declare-fun tp!1246483 () Bool)

(assert (=> b!4106945 (= e!2548456 (and tp!1246484 tp!1246483))))

(assert (=> b!4105934 (= tp!1245344 e!2548456)))

(declare-fun b!4106944 () Bool)

(declare-fun tp!1246485 () Bool)

(assert (=> b!4106944 (= e!2548456 tp!1246485)))

(assert (= (and b!4105934 ((_ is ElementMatch!12085) (regOne!24682 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106942))

(assert (= (and b!4105934 ((_ is Concat!19495) (regOne!24682 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106943))

(assert (= (and b!4105934 ((_ is Star!12085) (regOne!24682 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106944))

(assert (= (and b!4105934 ((_ is Union!12085) (regOne!24682 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106945))

(declare-fun b!4106946 () Bool)

(declare-fun e!2548457 () Bool)

(assert (=> b!4106946 (= e!2548457 tp_is_empty!21137)))

(declare-fun b!4106947 () Bool)

(declare-fun tp!1246492 () Bool)

(declare-fun tp!1246491 () Bool)

(assert (=> b!4106947 (= e!2548457 (and tp!1246492 tp!1246491))))

(declare-fun b!4106949 () Bool)

(declare-fun tp!1246489 () Bool)

(declare-fun tp!1246488 () Bool)

(assert (=> b!4106949 (= e!2548457 (and tp!1246489 tp!1246488))))

(assert (=> b!4105934 (= tp!1245343 e!2548457)))

(declare-fun b!4106948 () Bool)

(declare-fun tp!1246490 () Bool)

(assert (=> b!4106948 (= e!2548457 tp!1246490)))

(assert (= (and b!4105934 ((_ is ElementMatch!12085) (regTwo!24682 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106946))

(assert (= (and b!4105934 ((_ is Concat!19495) (regTwo!24682 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106947))

(assert (= (and b!4105934 ((_ is Star!12085) (regTwo!24682 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106948))

(assert (= (and b!4105934 ((_ is Union!12085) (regTwo!24682 (reg!12414 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106949))

(declare-fun b!4106950 () Bool)

(declare-fun e!2548458 () Bool)

(assert (=> b!4106950 (= e!2548458 tp_is_empty!21137)))

(declare-fun b!4106951 () Bool)

(declare-fun tp!1246497 () Bool)

(declare-fun tp!1246496 () Bool)

(assert (=> b!4106951 (= e!2548458 (and tp!1246497 tp!1246496))))

(declare-fun b!4106953 () Bool)

(declare-fun tp!1246494 () Bool)

(declare-fun tp!1246493 () Bool)

(assert (=> b!4106953 (= e!2548458 (and tp!1246494 tp!1246493))))

(assert (=> b!4105943 (= tp!1245352 e!2548458)))

(declare-fun b!4106952 () Bool)

(declare-fun tp!1246495 () Bool)

(assert (=> b!4106952 (= e!2548458 tp!1246495)))

(assert (= (and b!4105943 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106950))

(assert (= (and b!4105943 ((_ is Concat!19495) (reg!12414 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106951))

(assert (= (and b!4105943 ((_ is Star!12085) (reg!12414 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106952))

(assert (= (and b!4105943 ((_ is Union!12085) (reg!12414 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4106953))

(declare-fun b!4106954 () Bool)

(declare-fun e!2548459 () Bool)

(assert (=> b!4106954 (= e!2548459 tp_is_empty!21137)))

(declare-fun b!4106955 () Bool)

(declare-fun tp!1246502 () Bool)

(declare-fun tp!1246501 () Bool)

(assert (=> b!4106955 (= e!2548459 (and tp!1246502 tp!1246501))))

(declare-fun b!4106957 () Bool)

(declare-fun tp!1246499 () Bool)

(declare-fun tp!1246498 () Bool)

(assert (=> b!4106957 (= e!2548459 (and tp!1246499 tp!1246498))))

(assert (=> b!4105846 (= tp!1245239 e!2548459)))

(declare-fun b!4106956 () Bool)

(declare-fun tp!1246500 () Bool)

(assert (=> b!4106956 (= e!2548459 tp!1246500)))

(assert (= (and b!4105846 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106954))

(assert (= (and b!4105846 ((_ is Concat!19495) (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106955))

(assert (= (and b!4105846 ((_ is Star!12085) (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106956))

(assert (= (and b!4105846 ((_ is Union!12085) (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106957))

(declare-fun b!4106958 () Bool)

(declare-fun e!2548460 () Bool)

(assert (=> b!4106958 (= e!2548460 tp_is_empty!21137)))

(declare-fun b!4106959 () Bool)

(declare-fun tp!1246507 () Bool)

(declare-fun tp!1246506 () Bool)

(assert (=> b!4106959 (= e!2548460 (and tp!1246507 tp!1246506))))

(declare-fun b!4106961 () Bool)

(declare-fun tp!1246504 () Bool)

(declare-fun tp!1246503 () Bool)

(assert (=> b!4106961 (= e!2548460 (and tp!1246504 tp!1246503))))

(assert (=> b!4105846 (= tp!1245238 e!2548460)))

(declare-fun b!4106960 () Bool)

(declare-fun tp!1246505 () Bool)

(assert (=> b!4106960 (= e!2548460 tp!1246505)))

(assert (= (and b!4105846 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106958))

(assert (= (and b!4105846 ((_ is Concat!19495) (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106959))

(assert (= (and b!4105846 ((_ is Star!12085) (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106960))

(assert (= (and b!4105846 ((_ is Union!12085) (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106961))

(declare-fun b!4106962 () Bool)

(declare-fun e!2548461 () Bool)

(assert (=> b!4106962 (= e!2548461 tp_is_empty!21137)))

(declare-fun b!4106963 () Bool)

(declare-fun tp!1246512 () Bool)

(declare-fun tp!1246511 () Bool)

(assert (=> b!4106963 (= e!2548461 (and tp!1246512 tp!1246511))))

(declare-fun b!4106965 () Bool)

(declare-fun tp!1246509 () Bool)

(declare-fun tp!1246508 () Bool)

(assert (=> b!4106965 (= e!2548461 (and tp!1246509 tp!1246508))))

(assert (=> b!4105757 (= tp!1245135 e!2548461)))

(declare-fun b!4106964 () Bool)

(declare-fun tp!1246510 () Bool)

(assert (=> b!4106964 (= e!2548461 tp!1246510)))

(assert (= (and b!4105757 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106962))

(assert (= (and b!4105757 ((_ is Concat!19495) (regOne!24682 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106963))

(assert (= (and b!4105757 ((_ is Star!12085) (regOne!24682 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106964))

(assert (= (and b!4105757 ((_ is Union!12085) (regOne!24682 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106965))

(declare-fun b!4106966 () Bool)

(declare-fun e!2548462 () Bool)

(assert (=> b!4106966 (= e!2548462 tp_is_empty!21137)))

(declare-fun b!4106967 () Bool)

(declare-fun tp!1246517 () Bool)

(declare-fun tp!1246516 () Bool)

(assert (=> b!4106967 (= e!2548462 (and tp!1246517 tp!1246516))))

(declare-fun b!4106969 () Bool)

(declare-fun tp!1246514 () Bool)

(declare-fun tp!1246513 () Bool)

(assert (=> b!4106969 (= e!2548462 (and tp!1246514 tp!1246513))))

(assert (=> b!4105757 (= tp!1245134 e!2548462)))

(declare-fun b!4106968 () Bool)

(declare-fun tp!1246515 () Bool)

(assert (=> b!4106968 (= e!2548462 tp!1246515)))

(assert (= (and b!4105757 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106966))

(assert (= (and b!4105757 ((_ is Concat!19495) (regTwo!24682 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106967))

(assert (= (and b!4105757 ((_ is Star!12085) (regTwo!24682 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106968))

(assert (= (and b!4105757 ((_ is Union!12085) (regTwo!24682 (regOne!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4106969))

(declare-fun b!4106970 () Bool)

(declare-fun e!2548463 () Bool)

(assert (=> b!4106970 (= e!2548463 tp_is_empty!21137)))

(declare-fun b!4106971 () Bool)

(declare-fun tp!1246522 () Bool)

(declare-fun tp!1246521 () Bool)

(assert (=> b!4106971 (= e!2548463 (and tp!1246522 tp!1246521))))

(declare-fun b!4106973 () Bool)

(declare-fun tp!1246519 () Bool)

(declare-fun tp!1246518 () Bool)

(assert (=> b!4106973 (= e!2548463 (and tp!1246519 tp!1246518))))

(assert (=> b!4105766 (= tp!1245143 e!2548463)))

(declare-fun b!4106972 () Bool)

(declare-fun tp!1246520 () Bool)

(assert (=> b!4106972 (= e!2548463 tp!1246520)))

(assert (= (and b!4105766 ((_ is ElementMatch!12085) (reg!12414 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106970))

(assert (= (and b!4105766 ((_ is Concat!19495) (reg!12414 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106971))

(assert (= (and b!4105766 ((_ is Star!12085) (reg!12414 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106972))

(assert (= (and b!4105766 ((_ is Union!12085) (reg!12414 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106973))

(declare-fun b!4106974 () Bool)

(declare-fun e!2548464 () Bool)

(assert (=> b!4106974 (= e!2548464 tp_is_empty!21137)))

(declare-fun b!4106975 () Bool)

(declare-fun tp!1246527 () Bool)

(declare-fun tp!1246526 () Bool)

(assert (=> b!4106975 (= e!2548464 (and tp!1246527 tp!1246526))))

(declare-fun b!4106977 () Bool)

(declare-fun tp!1246524 () Bool)

(declare-fun tp!1246523 () Bool)

(assert (=> b!4106977 (= e!2548464 (and tp!1246524 tp!1246523))))

(assert (=> b!4105952 (= tp!1245361 e!2548464)))

(declare-fun b!4106976 () Bool)

(declare-fun tp!1246525 () Bool)

(assert (=> b!4106976 (= e!2548464 tp!1246525)))

(assert (= (and b!4105952 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106974))

(assert (= (and b!4105952 ((_ is Concat!19495) (regOne!24683 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106975))

(assert (= (and b!4105952 ((_ is Star!12085) (regOne!24683 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106976))

(assert (= (and b!4105952 ((_ is Union!12085) (regOne!24683 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106977))

(declare-fun b!4106978 () Bool)

(declare-fun e!2548465 () Bool)

(assert (=> b!4106978 (= e!2548465 tp_is_empty!21137)))

(declare-fun b!4106979 () Bool)

(declare-fun tp!1246532 () Bool)

(declare-fun tp!1246531 () Bool)

(assert (=> b!4106979 (= e!2548465 (and tp!1246532 tp!1246531))))

(declare-fun b!4106981 () Bool)

(declare-fun tp!1246529 () Bool)

(declare-fun tp!1246528 () Bool)

(assert (=> b!4106981 (= e!2548465 (and tp!1246529 tp!1246528))))

(assert (=> b!4105952 (= tp!1245360 e!2548465)))

(declare-fun b!4106980 () Bool)

(declare-fun tp!1246530 () Bool)

(assert (=> b!4106980 (= e!2548465 tp!1246530)))

(assert (= (and b!4105952 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106978))

(assert (= (and b!4105952 ((_ is Concat!19495) (regTwo!24683 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106979))

(assert (= (and b!4105952 ((_ is Star!12085) (regTwo!24683 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106980))

(assert (= (and b!4105952 ((_ is Union!12085) (regTwo!24683 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4106981))

(declare-fun b!4106982 () Bool)

(declare-fun e!2548466 () Bool)

(assert (=> b!4106982 (= e!2548466 tp_is_empty!21137)))

(declare-fun b!4106983 () Bool)

(declare-fun tp!1246537 () Bool)

(declare-fun tp!1246536 () Bool)

(assert (=> b!4106983 (= e!2548466 (and tp!1246537 tp!1246536))))

(declare-fun b!4106985 () Bool)

(declare-fun tp!1246534 () Bool)

(declare-fun tp!1246533 () Bool)

(assert (=> b!4106985 (= e!2548466 (and tp!1246534 tp!1246533))))

(assert (=> b!4105900 (= tp!1245296 e!2548466)))

(declare-fun b!4106984 () Bool)

(declare-fun tp!1246535 () Bool)

(assert (=> b!4106984 (= e!2548466 tp!1246535)))

(assert (= (and b!4105900 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106982))

(assert (= (and b!4105900 ((_ is Concat!19495) (regOne!24683 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106983))

(assert (= (and b!4105900 ((_ is Star!12085) (regOne!24683 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106984))

(assert (= (and b!4105900 ((_ is Union!12085) (regOne!24683 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106985))

(declare-fun b!4106986 () Bool)

(declare-fun e!2548467 () Bool)

(assert (=> b!4106986 (= e!2548467 tp_is_empty!21137)))

(declare-fun b!4106987 () Bool)

(declare-fun tp!1246542 () Bool)

(declare-fun tp!1246541 () Bool)

(assert (=> b!4106987 (= e!2548467 (and tp!1246542 tp!1246541))))

(declare-fun b!4106989 () Bool)

(declare-fun tp!1246539 () Bool)

(declare-fun tp!1246538 () Bool)

(assert (=> b!4106989 (= e!2548467 (and tp!1246539 tp!1246538))))

(assert (=> b!4105900 (= tp!1245295 e!2548467)))

(declare-fun b!4106988 () Bool)

(declare-fun tp!1246540 () Bool)

(assert (=> b!4106988 (= e!2548467 tp!1246540)))

(assert (= (and b!4105900 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106986))

(assert (= (and b!4105900 ((_ is Concat!19495) (regTwo!24683 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106987))

(assert (= (and b!4105900 ((_ is Star!12085) (regTwo!24683 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106988))

(assert (= (and b!4105900 ((_ is Union!12085) (regTwo!24683 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4106989))

(declare-fun b!4106990 () Bool)

(declare-fun e!2548468 () Bool)

(assert (=> b!4106990 (= e!2548468 tp_is_empty!21137)))

(declare-fun b!4106991 () Bool)

(declare-fun tp!1246547 () Bool)

(declare-fun tp!1246546 () Bool)

(assert (=> b!4106991 (= e!2548468 (and tp!1246547 tp!1246546))))

(declare-fun b!4106993 () Bool)

(declare-fun tp!1246544 () Bool)

(declare-fun tp!1246543 () Bool)

(assert (=> b!4106993 (= e!2548468 (and tp!1246544 tp!1246543))))

(assert (=> b!4105891 (= tp!1245287 e!2548468)))

(declare-fun b!4106992 () Bool)

(declare-fun tp!1246545 () Bool)

(assert (=> b!4106992 (= e!2548468 tp!1246545)))

(assert (= (and b!4105891 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106990))

(assert (= (and b!4105891 ((_ is Concat!19495) (reg!12414 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106991))

(assert (= (and b!4105891 ((_ is Star!12085) (reg!12414 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106992))

(assert (= (and b!4105891 ((_ is Union!12085) (reg!12414 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4106993))

(declare-fun b!4106994 () Bool)

(declare-fun e!2548469 () Bool)

(assert (=> b!4106994 (= e!2548469 tp_is_empty!21137)))

(declare-fun b!4106995 () Bool)

(declare-fun tp!1246552 () Bool)

(declare-fun tp!1246551 () Bool)

(assert (=> b!4106995 (= e!2548469 (and tp!1246552 tp!1246551))))

(declare-fun b!4106997 () Bool)

(declare-fun tp!1246549 () Bool)

(declare-fun tp!1246548 () Bool)

(assert (=> b!4106997 (= e!2548469 (and tp!1246549 tp!1246548))))

(assert (=> b!4105832 (= tp!1245216 e!2548469)))

(declare-fun b!4106996 () Bool)

(declare-fun tp!1246550 () Bool)

(assert (=> b!4106996 (= e!2548469 tp!1246550)))

(assert (= (and b!4105832 ((_ is ElementMatch!12085) (regOne!24683 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106994))

(assert (= (and b!4105832 ((_ is Concat!19495) (regOne!24683 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106995))

(assert (= (and b!4105832 ((_ is Star!12085) (regOne!24683 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106996))

(assert (= (and b!4105832 ((_ is Union!12085) (regOne!24683 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106997))

(declare-fun b!4106998 () Bool)

(declare-fun e!2548470 () Bool)

(assert (=> b!4106998 (= e!2548470 tp_is_empty!21137)))

(declare-fun b!4106999 () Bool)

(declare-fun tp!1246557 () Bool)

(declare-fun tp!1246556 () Bool)

(assert (=> b!4106999 (= e!2548470 (and tp!1246557 tp!1246556))))

(declare-fun b!4107001 () Bool)

(declare-fun tp!1246554 () Bool)

(declare-fun tp!1246553 () Bool)

(assert (=> b!4107001 (= e!2548470 (and tp!1246554 tp!1246553))))

(assert (=> b!4105832 (= tp!1245215 e!2548470)))

(declare-fun b!4107000 () Bool)

(declare-fun tp!1246555 () Bool)

(assert (=> b!4107000 (= e!2548470 tp!1246555)))

(assert (= (and b!4105832 ((_ is ElementMatch!12085) (regTwo!24683 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106998))

(assert (= (and b!4105832 ((_ is Concat!19495) (regTwo!24683 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4106999))

(assert (= (and b!4105832 ((_ is Star!12085) (regTwo!24683 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107000))

(assert (= (and b!4105832 ((_ is Union!12085) (regTwo!24683 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107001))

(declare-fun b!4107002 () Bool)

(declare-fun e!2548471 () Bool)

(assert (=> b!4107002 (= e!2548471 tp_is_empty!21137)))

(declare-fun b!4107003 () Bool)

(declare-fun tp!1246562 () Bool)

(declare-fun tp!1246561 () Bool)

(assert (=> b!4107003 (= e!2548471 (and tp!1246562 tp!1246561))))

(declare-fun b!4107005 () Bool)

(declare-fun tp!1246559 () Bool)

(declare-fun tp!1246558 () Bool)

(assert (=> b!4107005 (= e!2548471 (and tp!1246559 tp!1246558))))

(assert (=> b!4105823 (= tp!1245207 e!2548471)))

(declare-fun b!4107004 () Bool)

(declare-fun tp!1246560 () Bool)

(assert (=> b!4107004 (= e!2548471 tp!1246560)))

(assert (= (and b!4105823 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107002))

(assert (= (and b!4105823 ((_ is Concat!19495) (reg!12414 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107003))

(assert (= (and b!4105823 ((_ is Star!12085) (reg!12414 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107004))

(assert (= (and b!4105823 ((_ is Union!12085) (reg!12414 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107005))

(declare-fun b!4107006 () Bool)

(declare-fun e!2548472 () Bool)

(assert (=> b!4107006 (= e!2548472 tp_is_empty!21137)))

(declare-fun b!4107007 () Bool)

(declare-fun tp!1246567 () Bool)

(declare-fun tp!1246566 () Bool)

(assert (=> b!4107007 (= e!2548472 (and tp!1246567 tp!1246566))))

(declare-fun b!4107009 () Bool)

(declare-fun tp!1246564 () Bool)

(declare-fun tp!1246563 () Bool)

(assert (=> b!4107009 (= e!2548472 (and tp!1246564 tp!1246563))))

(assert (=> b!4105838 (= tp!1245229 e!2548472)))

(declare-fun b!4107008 () Bool)

(declare-fun tp!1246565 () Bool)

(assert (=> b!4107008 (= e!2548472 tp!1246565)))

(assert (= (and b!4105838 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107006))

(assert (= (and b!4105838 ((_ is Concat!19495) (regOne!24682 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107007))

(assert (= (and b!4105838 ((_ is Star!12085) (regOne!24682 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107008))

(assert (= (and b!4105838 ((_ is Union!12085) (regOne!24682 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107009))

(declare-fun b!4107010 () Bool)

(declare-fun e!2548473 () Bool)

(assert (=> b!4107010 (= e!2548473 tp_is_empty!21137)))

(declare-fun b!4107011 () Bool)

(declare-fun tp!1246572 () Bool)

(declare-fun tp!1246571 () Bool)

(assert (=> b!4107011 (= e!2548473 (and tp!1246572 tp!1246571))))

(declare-fun b!4107013 () Bool)

(declare-fun tp!1246569 () Bool)

(declare-fun tp!1246568 () Bool)

(assert (=> b!4107013 (= e!2548473 (and tp!1246569 tp!1246568))))

(assert (=> b!4105838 (= tp!1245228 e!2548473)))

(declare-fun b!4107012 () Bool)

(declare-fun tp!1246570 () Bool)

(assert (=> b!4107012 (= e!2548473 tp!1246570)))

(assert (= (and b!4105838 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107010))

(assert (= (and b!4105838 ((_ is Concat!19495) (regTwo!24682 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107011))

(assert (= (and b!4105838 ((_ is Star!12085) (regTwo!24682 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107012))

(assert (= (and b!4105838 ((_ is Union!12085) (regTwo!24682 (regTwo!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107013))

(declare-fun b!4107014 () Bool)

(declare-fun e!2548474 () Bool)

(assert (=> b!4107014 (= e!2548474 tp_is_empty!21137)))

(declare-fun b!4107015 () Bool)

(declare-fun tp!1246577 () Bool)

(declare-fun tp!1246576 () Bool)

(assert (=> b!4107015 (= e!2548474 (and tp!1246577 tp!1246576))))

(declare-fun b!4107017 () Bool)

(declare-fun tp!1246574 () Bool)

(declare-fun tp!1246573 () Bool)

(assert (=> b!4107017 (= e!2548474 (and tp!1246574 tp!1246573))))

(assert (=> b!4105831 (= tp!1245217 e!2548474)))

(declare-fun b!4107016 () Bool)

(declare-fun tp!1246575 () Bool)

(assert (=> b!4107016 (= e!2548474 tp!1246575)))

(assert (= (and b!4105831 ((_ is ElementMatch!12085) (reg!12414 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107014))

(assert (= (and b!4105831 ((_ is Concat!19495) (reg!12414 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107015))

(assert (= (and b!4105831 ((_ is Star!12085) (reg!12414 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107016))

(assert (= (and b!4105831 ((_ is Union!12085) (reg!12414 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107017))

(declare-fun b!4107018 () Bool)

(declare-fun e!2548475 () Bool)

(assert (=> b!4107018 (= e!2548475 tp_is_empty!21137)))

(declare-fun b!4107019 () Bool)

(declare-fun tp!1246582 () Bool)

(declare-fun tp!1246581 () Bool)

(assert (=> b!4107019 (= e!2548475 (and tp!1246582 tp!1246581))))

(declare-fun b!4107021 () Bool)

(declare-fun tp!1246579 () Bool)

(declare-fun tp!1246578 () Bool)

(assert (=> b!4107021 (= e!2548475 (and tp!1246579 tp!1246578))))

(assert (=> b!4105852 (= tp!1245244 e!2548475)))

(declare-fun b!4107020 () Bool)

(declare-fun tp!1246580 () Bool)

(assert (=> b!4107020 (= e!2548475 tp!1246580)))

(assert (= (and b!4105852 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107018))

(assert (= (and b!4105852 ((_ is Concat!19495) (regOne!24682 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107019))

(assert (= (and b!4105852 ((_ is Star!12085) (regOne!24682 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107020))

(assert (= (and b!4105852 ((_ is Union!12085) (regOne!24682 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107021))

(declare-fun b!4107022 () Bool)

(declare-fun e!2548476 () Bool)

(assert (=> b!4107022 (= e!2548476 tp_is_empty!21137)))

(declare-fun b!4107023 () Bool)

(declare-fun tp!1246587 () Bool)

(declare-fun tp!1246586 () Bool)

(assert (=> b!4107023 (= e!2548476 (and tp!1246587 tp!1246586))))

(declare-fun b!4107025 () Bool)

(declare-fun tp!1246584 () Bool)

(declare-fun tp!1246583 () Bool)

(assert (=> b!4107025 (= e!2548476 (and tp!1246584 tp!1246583))))

(assert (=> b!4105852 (= tp!1245243 e!2548476)))

(declare-fun b!4107024 () Bool)

(declare-fun tp!1246585 () Bool)

(assert (=> b!4107024 (= e!2548476 tp!1246585)))

(assert (= (and b!4105852 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107022))

(assert (= (and b!4105852 ((_ is Concat!19495) (regTwo!24682 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107023))

(assert (= (and b!4105852 ((_ is Star!12085) (regTwo!24682 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107024))

(assert (= (and b!4105852 ((_ is Union!12085) (regTwo!24682 (regOne!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107025))

(declare-fun b!4107026 () Bool)

(declare-fun e!2548477 () Bool)

(assert (=> b!4107026 (= e!2548477 tp_is_empty!21137)))

(declare-fun b!4107027 () Bool)

(declare-fun tp!1246592 () Bool)

(declare-fun tp!1246591 () Bool)

(assert (=> b!4107027 (= e!2548477 (and tp!1246592 tp!1246591))))

(declare-fun b!4107029 () Bool)

(declare-fun tp!1246589 () Bool)

(declare-fun tp!1246588 () Bool)

(assert (=> b!4107029 (= e!2548477 (and tp!1246589 tp!1246588))))

(assert (=> b!4105972 (= tp!1245381 e!2548477)))

(declare-fun b!4107028 () Bool)

(declare-fun tp!1246590 () Bool)

(assert (=> b!4107028 (= e!2548477 tp!1246590)))

(assert (= (and b!4105972 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107026))

(assert (= (and b!4105972 ((_ is Concat!19495) (regOne!24683 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107027))

(assert (= (and b!4105972 ((_ is Star!12085) (regOne!24683 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107028))

(assert (= (and b!4105972 ((_ is Union!12085) (regOne!24683 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107029))

(declare-fun b!4107030 () Bool)

(declare-fun e!2548478 () Bool)

(assert (=> b!4107030 (= e!2548478 tp_is_empty!21137)))

(declare-fun b!4107031 () Bool)

(declare-fun tp!1246597 () Bool)

(declare-fun tp!1246596 () Bool)

(assert (=> b!4107031 (= e!2548478 (and tp!1246597 tp!1246596))))

(declare-fun b!4107033 () Bool)

(declare-fun tp!1246594 () Bool)

(declare-fun tp!1246593 () Bool)

(assert (=> b!4107033 (= e!2548478 (and tp!1246594 tp!1246593))))

(assert (=> b!4105972 (= tp!1245380 e!2548478)))

(declare-fun b!4107032 () Bool)

(declare-fun tp!1246595 () Bool)

(assert (=> b!4107032 (= e!2548478 tp!1246595)))

(assert (= (and b!4105972 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107030))

(assert (= (and b!4105972 ((_ is Concat!19495) (regTwo!24683 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107031))

(assert (= (and b!4105972 ((_ is Star!12085) (regTwo!24683 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107032))

(assert (= (and b!4105972 ((_ is Union!12085) (regTwo!24683 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107033))

(declare-fun b!4107034 () Bool)

(declare-fun e!2548479 () Bool)

(assert (=> b!4107034 (= e!2548479 tp_is_empty!21137)))

(declare-fun b!4107035 () Bool)

(declare-fun tp!1246602 () Bool)

(declare-fun tp!1246601 () Bool)

(assert (=> b!4107035 (= e!2548479 (and tp!1246602 tp!1246601))))

(declare-fun b!4107037 () Bool)

(declare-fun tp!1246599 () Bool)

(declare-fun tp!1246598 () Bool)

(assert (=> b!4107037 (= e!2548479 (and tp!1246599 tp!1246598))))

(assert (=> b!4105861 (= tp!1245252 e!2548479)))

(declare-fun b!4107036 () Bool)

(declare-fun tp!1246600 () Bool)

(assert (=> b!4107036 (= e!2548479 tp!1246600)))

(assert (= (and b!4105861 ((_ is ElementMatch!12085) (reg!12414 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4107034))

(assert (= (and b!4105861 ((_ is Concat!19495) (reg!12414 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4107035))

(assert (= (and b!4105861 ((_ is Star!12085) (reg!12414 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4107036))

(assert (= (and b!4105861 ((_ is Union!12085) (reg!12414 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4107037))

(declare-fun b!4107038 () Bool)

(declare-fun e!2548480 () Bool)

(assert (=> b!4107038 (= e!2548480 tp_is_empty!21137)))

(declare-fun b!4107039 () Bool)

(declare-fun tp!1246607 () Bool)

(declare-fun tp!1246606 () Bool)

(assert (=> b!4107039 (= e!2548480 (and tp!1246607 tp!1246606))))

(declare-fun b!4107041 () Bool)

(declare-fun tp!1246604 () Bool)

(declare-fun tp!1246603 () Bool)

(assert (=> b!4107041 (= e!2548480 (and tp!1246604 tp!1246603))))

(assert (=> b!4105979 (= tp!1245392 e!2548480)))

(declare-fun b!4107040 () Bool)

(declare-fun tp!1246605 () Bool)

(assert (=> b!4107040 (= e!2548480 tp!1246605)))

(assert (= (and b!4105979 ((_ is ElementMatch!12085) (reg!12414 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107038))

(assert (= (and b!4105979 ((_ is Concat!19495) (reg!12414 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107039))

(assert (= (and b!4105979 ((_ is Star!12085) (reg!12414 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107040))

(assert (= (and b!4105979 ((_ is Union!12085) (reg!12414 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107041))

(declare-fun b!4107042 () Bool)

(declare-fun e!2548481 () Bool)

(assert (=> b!4107042 (= e!2548481 tp_is_empty!21137)))

(declare-fun b!4107043 () Bool)

(declare-fun tp!1246612 () Bool)

(declare-fun tp!1246611 () Bool)

(assert (=> b!4107043 (= e!2548481 (and tp!1246612 tp!1246611))))

(declare-fun b!4107045 () Bool)

(declare-fun tp!1246609 () Bool)

(declare-fun tp!1246608 () Bool)

(assert (=> b!4107045 (= e!2548481 (and tp!1246609 tp!1246608))))

(assert (=> b!4105883 (= tp!1245277 e!2548481)))

(declare-fun b!4107044 () Bool)

(declare-fun tp!1246610 () Bool)

(assert (=> b!4107044 (= e!2548481 tp!1246610)))

(assert (= (and b!4105883 ((_ is ElementMatch!12085) (reg!12414 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107042))

(assert (= (and b!4105883 ((_ is Concat!19495) (reg!12414 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107043))

(assert (= (and b!4105883 ((_ is Star!12085) (reg!12414 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107044))

(assert (= (and b!4105883 ((_ is Union!12085) (reg!12414 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107045))

(declare-fun b!4107046 () Bool)

(declare-fun e!2548482 () Bool)

(assert (=> b!4107046 (= e!2548482 tp_is_empty!21137)))

(declare-fun b!4107047 () Bool)

(declare-fun tp!1246617 () Bool)

(declare-fun tp!1246616 () Bool)

(assert (=> b!4107047 (= e!2548482 (and tp!1246617 tp!1246616))))

(declare-fun b!4107049 () Bool)

(declare-fun tp!1246614 () Bool)

(declare-fun tp!1246613 () Bool)

(assert (=> b!4107049 (= e!2548482 (and tp!1246614 tp!1246613))))

(assert (=> b!4105790 (= tp!1245166 e!2548482)))

(declare-fun b!4107048 () Bool)

(declare-fun tp!1246615 () Bool)

(assert (=> b!4107048 (= e!2548482 tp!1246615)))

(assert (= (and b!4105790 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107046))

(assert (= (and b!4105790 ((_ is Concat!19495) (regOne!24683 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107047))

(assert (= (and b!4105790 ((_ is Star!12085) (regOne!24683 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107048))

(assert (= (and b!4105790 ((_ is Union!12085) (regOne!24683 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107049))

(declare-fun b!4107050 () Bool)

(declare-fun e!2548483 () Bool)

(assert (=> b!4107050 (= e!2548483 tp_is_empty!21137)))

(declare-fun b!4107051 () Bool)

(declare-fun tp!1246622 () Bool)

(declare-fun tp!1246621 () Bool)

(assert (=> b!4107051 (= e!2548483 (and tp!1246622 tp!1246621))))

(declare-fun b!4107053 () Bool)

(declare-fun tp!1246619 () Bool)

(declare-fun tp!1246618 () Bool)

(assert (=> b!4107053 (= e!2548483 (and tp!1246619 tp!1246618))))

(assert (=> b!4105790 (= tp!1245165 e!2548483)))

(declare-fun b!4107052 () Bool)

(declare-fun tp!1246620 () Bool)

(assert (=> b!4107052 (= e!2548483 tp!1246620)))

(assert (= (and b!4105790 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107050))

(assert (= (and b!4105790 ((_ is Concat!19495) (regTwo!24683 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107051))

(assert (= (and b!4105790 ((_ is Star!12085) (regTwo!24683 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107052))

(assert (= (and b!4105790 ((_ is Union!12085) (regTwo!24683 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107053))

(declare-fun b!4107054 () Bool)

(declare-fun e!2548484 () Bool)

(assert (=> b!4107054 (= e!2548484 tp_is_empty!21137)))

(declare-fun b!4107055 () Bool)

(declare-fun tp!1246627 () Bool)

(declare-fun tp!1246626 () Bool)

(assert (=> b!4107055 (= e!2548484 (and tp!1246627 tp!1246626))))

(declare-fun b!4107057 () Bool)

(declare-fun tp!1246624 () Bool)

(declare-fun tp!1246623 () Bool)

(assert (=> b!4107057 (= e!2548484 (and tp!1246624 tp!1246623))))

(assert (=> b!4105781 (= tp!1245157 e!2548484)))

(declare-fun b!4107056 () Bool)

(declare-fun tp!1246625 () Bool)

(assert (=> b!4107056 (= e!2548484 tp!1246625)))

(assert (= (and b!4105781 ((_ is ElementMatch!12085) (reg!12414 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107054))

(assert (= (and b!4105781 ((_ is Concat!19495) (reg!12414 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107055))

(assert (= (and b!4105781 ((_ is Star!12085) (reg!12414 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107056))

(assert (= (and b!4105781 ((_ is Union!12085) (reg!12414 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107057))

(declare-fun b!4107058 () Bool)

(declare-fun e!2548485 () Bool)

(assert (=> b!4107058 (= e!2548485 tp_is_empty!21137)))

(declare-fun b!4107059 () Bool)

(declare-fun tp!1246632 () Bool)

(declare-fun tp!1246631 () Bool)

(assert (=> b!4107059 (= e!2548485 (and tp!1246632 tp!1246631))))

(declare-fun b!4107061 () Bool)

(declare-fun tp!1246629 () Bool)

(declare-fun tp!1246628 () Bool)

(assert (=> b!4107061 (= e!2548485 (and tp!1246629 tp!1246628))))

(assert (=> b!4105986 (= tp!1245404 e!2548485)))

(declare-fun b!4107060 () Bool)

(declare-fun tp!1246630 () Bool)

(assert (=> b!4107060 (= e!2548485 tp!1246630)))

(assert (= (and b!4105986 ((_ is ElementMatch!12085) (regOne!24682 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4107058))

(assert (= (and b!4105986 ((_ is Concat!19495) (regOne!24682 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4107059))

(assert (= (and b!4105986 ((_ is Star!12085) (regOne!24682 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4107060))

(assert (= (and b!4105986 ((_ is Union!12085) (regOne!24682 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4107061))

(declare-fun b!4107062 () Bool)

(declare-fun e!2548486 () Bool)

(assert (=> b!4107062 (= e!2548486 tp_is_empty!21137)))

(declare-fun b!4107063 () Bool)

(declare-fun tp!1246637 () Bool)

(declare-fun tp!1246636 () Bool)

(assert (=> b!4107063 (= e!2548486 (and tp!1246637 tp!1246636))))

(declare-fun b!4107065 () Bool)

(declare-fun tp!1246634 () Bool)

(declare-fun tp!1246633 () Bool)

(assert (=> b!4107065 (= e!2548486 (and tp!1246634 tp!1246633))))

(assert (=> b!4105986 (= tp!1245403 e!2548486)))

(declare-fun b!4107064 () Bool)

(declare-fun tp!1246635 () Bool)

(assert (=> b!4107064 (= e!2548486 tp!1246635)))

(assert (= (and b!4105986 ((_ is ElementMatch!12085) (regTwo!24682 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4107062))

(assert (= (and b!4105986 ((_ is Concat!19495) (regTwo!24682 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4107063))

(assert (= (and b!4105986 ((_ is Star!12085) (regTwo!24682 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4107064))

(assert (= (and b!4105986 ((_ is Union!12085) (regTwo!24682 (reg!12414 (regOne!24683 (regex!7180 rHead!24)))))) b!4107065))

(declare-fun b!4107066 () Bool)

(declare-fun e!2548487 () Bool)

(assert (=> b!4107066 (= e!2548487 tp_is_empty!21137)))

(declare-fun b!4107067 () Bool)

(declare-fun tp!1246642 () Bool)

(declare-fun tp!1246641 () Bool)

(assert (=> b!4107067 (= e!2548487 (and tp!1246642 tp!1246641))))

(declare-fun b!4107069 () Bool)

(declare-fun tp!1246639 () Bool)

(declare-fun tp!1246638 () Bool)

(assert (=> b!4107069 (= e!2548487 (and tp!1246639 tp!1246638))))

(assert (=> b!4105815 (= tp!1245197 e!2548487)))

(declare-fun b!4107068 () Bool)

(declare-fun tp!1246640 () Bool)

(assert (=> b!4107068 (= e!2548487 tp!1246640)))

(assert (= (and b!4105815 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107066))

(assert (= (and b!4105815 ((_ is Concat!19495) (reg!12414 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107067))

(assert (= (and b!4105815 ((_ is Star!12085) (reg!12414 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107068))

(assert (= (and b!4105815 ((_ is Union!12085) (reg!12414 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107069))

(declare-fun b!4107070 () Bool)

(declare-fun e!2548488 () Bool)

(assert (=> b!4107070 (= e!2548488 tp_is_empty!21137)))

(declare-fun b!4107071 () Bool)

(declare-fun tp!1246647 () Bool)

(declare-fun tp!1246646 () Bool)

(assert (=> b!4107071 (= e!2548488 (and tp!1246647 tp!1246646))))

(declare-fun b!4107073 () Bool)

(declare-fun tp!1246644 () Bool)

(declare-fun tp!1246643 () Bool)

(assert (=> b!4107073 (= e!2548488 (and tp!1246644 tp!1246643))))

(assert (=> b!4105994 (= tp!1245414 e!2548488)))

(declare-fun b!4107072 () Bool)

(declare-fun tp!1246645 () Bool)

(assert (=> b!4107072 (= e!2548488 tp!1246645)))

(assert (= (and b!4105994 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107070))

(assert (= (and b!4105994 ((_ is Concat!19495) (regOne!24682 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107071))

(assert (= (and b!4105994 ((_ is Star!12085) (regOne!24682 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107072))

(assert (= (and b!4105994 ((_ is Union!12085) (regOne!24682 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107073))

(declare-fun b!4107074 () Bool)

(declare-fun e!2548489 () Bool)

(assert (=> b!4107074 (= e!2548489 tp_is_empty!21137)))

(declare-fun b!4107075 () Bool)

(declare-fun tp!1246652 () Bool)

(declare-fun tp!1246651 () Bool)

(assert (=> b!4107075 (= e!2548489 (and tp!1246652 tp!1246651))))

(declare-fun b!4107077 () Bool)

(declare-fun tp!1246649 () Bool)

(declare-fun tp!1246648 () Bool)

(assert (=> b!4107077 (= e!2548489 (and tp!1246649 tp!1246648))))

(assert (=> b!4105994 (= tp!1245413 e!2548489)))

(declare-fun b!4107076 () Bool)

(declare-fun tp!1246650 () Bool)

(assert (=> b!4107076 (= e!2548489 tp!1246650)))

(assert (= (and b!4105994 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107074))

(assert (= (and b!4105994 ((_ is Concat!19495) (regTwo!24682 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107075))

(assert (= (and b!4105994 ((_ is Star!12085) (regTwo!24682 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107076))

(assert (= (and b!4105994 ((_ is Union!12085) (regTwo!24682 (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107077))

(declare-fun b!4107078 () Bool)

(declare-fun e!2548490 () Bool)

(assert (=> b!4107078 (= e!2548490 tp_is_empty!21137)))

(declare-fun b!4107079 () Bool)

(declare-fun tp!1246657 () Bool)

(declare-fun tp!1246656 () Bool)

(assert (=> b!4107079 (= e!2548490 (and tp!1246657 tp!1246656))))

(declare-fun b!4107081 () Bool)

(declare-fun tp!1246654 () Bool)

(declare-fun tp!1246653 () Bool)

(assert (=> b!4107081 (= e!2548490 (and tp!1246654 tp!1246653))))

(assert (=> b!4105940 (= tp!1245346 e!2548490)))

(declare-fun b!4107080 () Bool)

(declare-fun tp!1246655 () Bool)

(assert (=> b!4107080 (= e!2548490 tp!1246655)))

(assert (= (and b!4105940 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107078))

(assert (= (and b!4105940 ((_ is Concat!19495) (regOne!24683 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107079))

(assert (= (and b!4105940 ((_ is Star!12085) (regOne!24683 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107080))

(assert (= (and b!4105940 ((_ is Union!12085) (regOne!24683 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107081))

(declare-fun b!4107082 () Bool)

(declare-fun e!2548491 () Bool)

(assert (=> b!4107082 (= e!2548491 tp_is_empty!21137)))

(declare-fun b!4107083 () Bool)

(declare-fun tp!1246662 () Bool)

(declare-fun tp!1246661 () Bool)

(assert (=> b!4107083 (= e!2548491 (and tp!1246662 tp!1246661))))

(declare-fun b!4107085 () Bool)

(declare-fun tp!1246659 () Bool)

(declare-fun tp!1246658 () Bool)

(assert (=> b!4107085 (= e!2548491 (and tp!1246659 tp!1246658))))

(assert (=> b!4105940 (= tp!1245345 e!2548491)))

(declare-fun b!4107084 () Bool)

(declare-fun tp!1246660 () Bool)

(assert (=> b!4107084 (= e!2548491 tp!1246660)))

(assert (= (and b!4105940 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107082))

(assert (= (and b!4105940 ((_ is Concat!19495) (regTwo!24683 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107083))

(assert (= (and b!4105940 ((_ is Star!12085) (regTwo!24683 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107084))

(assert (= (and b!4105940 ((_ is Union!12085) (regTwo!24683 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107085))

(declare-fun b!4107086 () Bool)

(declare-fun e!2548492 () Bool)

(assert (=> b!4107086 (= e!2548492 tp_is_empty!21137)))

(declare-fun b!4107087 () Bool)

(declare-fun tp!1246667 () Bool)

(declare-fun tp!1246666 () Bool)

(assert (=> b!4107087 (= e!2548492 (and tp!1246667 tp!1246666))))

(declare-fun b!4107089 () Bool)

(declare-fun tp!1246664 () Bool)

(declare-fun tp!1246663 () Bool)

(assert (=> b!4107089 (= e!2548492 (and tp!1246664 tp!1246663))))

(assert (=> b!4105763 (= tp!1245137 e!2548492)))

(declare-fun b!4107088 () Bool)

(declare-fun tp!1246665 () Bool)

(assert (=> b!4107088 (= e!2548492 tp!1246665)))

(assert (= (and b!4105763 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4107086))

(assert (= (and b!4105763 ((_ is Concat!19495) (regOne!24683 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4107087))

(assert (= (and b!4105763 ((_ is Star!12085) (regOne!24683 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4107088))

(assert (= (and b!4105763 ((_ is Union!12085) (regOne!24683 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4107089))

(declare-fun b!4107090 () Bool)

(declare-fun e!2548493 () Bool)

(assert (=> b!4107090 (= e!2548493 tp_is_empty!21137)))

(declare-fun b!4107091 () Bool)

(declare-fun tp!1246672 () Bool)

(declare-fun tp!1246671 () Bool)

(assert (=> b!4107091 (= e!2548493 (and tp!1246672 tp!1246671))))

(declare-fun b!4107093 () Bool)

(declare-fun tp!1246669 () Bool)

(declare-fun tp!1246668 () Bool)

(assert (=> b!4107093 (= e!2548493 (and tp!1246669 tp!1246668))))

(assert (=> b!4105763 (= tp!1245136 e!2548493)))

(declare-fun b!4107092 () Bool)

(declare-fun tp!1246670 () Bool)

(assert (=> b!4107092 (= e!2548493 tp!1246670)))

(assert (= (and b!4105763 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4107090))

(assert (= (and b!4105763 ((_ is Concat!19495) (regTwo!24683 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4107091))

(assert (= (and b!4105763 ((_ is Star!12085) (regTwo!24683 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4107092))

(assert (= (and b!4105763 ((_ is Union!12085) (regTwo!24683 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4107093))

(declare-fun b!4107094 () Bool)

(declare-fun e!2548494 () Bool)

(assert (=> b!4107094 (= e!2548494 tp_is_empty!21137)))

(declare-fun b!4107095 () Bool)

(declare-fun tp!1246677 () Bool)

(declare-fun tp!1246676 () Bool)

(assert (=> b!4107095 (= e!2548494 (and tp!1246677 tp!1246676))))

(declare-fun b!4107097 () Bool)

(declare-fun tp!1246674 () Bool)

(declare-fun tp!1246673 () Bool)

(assert (=> b!4107097 (= e!2548494 (and tp!1246674 tp!1246673))))

(assert (=> b!4105922 (= tp!1245329 e!2548494)))

(declare-fun b!4107096 () Bool)

(declare-fun tp!1246675 () Bool)

(assert (=> b!4107096 (= e!2548494 tp!1246675)))

(assert (= (and b!4105922 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107094))

(assert (= (and b!4105922 ((_ is Concat!19495) (regOne!24682 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107095))

(assert (= (and b!4105922 ((_ is Star!12085) (regOne!24682 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107096))

(assert (= (and b!4105922 ((_ is Union!12085) (regOne!24682 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107097))

(declare-fun b!4107098 () Bool)

(declare-fun e!2548495 () Bool)

(assert (=> b!4107098 (= e!2548495 tp_is_empty!21137)))

(declare-fun b!4107099 () Bool)

(declare-fun tp!1246682 () Bool)

(declare-fun tp!1246681 () Bool)

(assert (=> b!4107099 (= e!2548495 (and tp!1246682 tp!1246681))))

(declare-fun b!4107101 () Bool)

(declare-fun tp!1246679 () Bool)

(declare-fun tp!1246678 () Bool)

(assert (=> b!4107101 (= e!2548495 (and tp!1246679 tp!1246678))))

(assert (=> b!4105922 (= tp!1245328 e!2548495)))

(declare-fun b!4107100 () Bool)

(declare-fun tp!1246680 () Bool)

(assert (=> b!4107100 (= e!2548495 tp!1246680)))

(assert (= (and b!4105922 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107098))

(assert (= (and b!4105922 ((_ is Concat!19495) (regTwo!24682 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107099))

(assert (= (and b!4105922 ((_ is Star!12085) (regTwo!24682 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107100))

(assert (= (and b!4105922 ((_ is Union!12085) (regTwo!24682 (regOne!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107101))

(declare-fun b!4107102 () Bool)

(declare-fun e!2548496 () Bool)

(assert (=> b!4107102 (= e!2548496 tp_is_empty!21137)))

(declare-fun b!4107103 () Bool)

(declare-fun tp!1246687 () Bool)

(declare-fun tp!1246686 () Bool)

(assert (=> b!4107103 (= e!2548496 (and tp!1246687 tp!1246686))))

(declare-fun b!4107105 () Bool)

(declare-fun tp!1246684 () Bool)

(declare-fun tp!1246683 () Bool)

(assert (=> b!4107105 (= e!2548496 (and tp!1246684 tp!1246683))))

(assert (=> b!4105931 (= tp!1245337 e!2548496)))

(declare-fun b!4107104 () Bool)

(declare-fun tp!1246685 () Bool)

(assert (=> b!4107104 (= e!2548496 tp!1246685)))

(assert (= (and b!4105931 ((_ is ElementMatch!12085) (reg!12414 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107102))

(assert (= (and b!4105931 ((_ is Concat!19495) (reg!12414 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107103))

(assert (= (and b!4105931 ((_ is Star!12085) (reg!12414 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107104))

(assert (= (and b!4105931 ((_ is Union!12085) (reg!12414 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107105))

(declare-fun b!4107106 () Bool)

(declare-fun e!2548497 () Bool)

(assert (=> b!4107106 (= e!2548497 tp_is_empty!21137)))

(declare-fun b!4107107 () Bool)

(declare-fun tp!1246692 () Bool)

(declare-fun tp!1246691 () Bool)

(assert (=> b!4107107 (= e!2548497 (and tp!1246692 tp!1246691))))

(declare-fun b!4107109 () Bool)

(declare-fun tp!1246689 () Bool)

(declare-fun tp!1246688 () Bool)

(assert (=> b!4107109 (= e!2548497 (and tp!1246689 tp!1246688))))

(assert (=> b!4105968 (= tp!1245384 e!2548497)))

(declare-fun b!4107108 () Bool)

(declare-fun tp!1246690 () Bool)

(assert (=> b!4107108 (= e!2548497 tp!1246690)))

(assert (= (and b!4105968 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107106))

(assert (= (and b!4105968 ((_ is Concat!19495) (regOne!24682 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107107))

(assert (= (and b!4105968 ((_ is Star!12085) (regOne!24682 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107108))

(assert (= (and b!4105968 ((_ is Union!12085) (regOne!24682 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107109))

(declare-fun b!4107110 () Bool)

(declare-fun e!2548498 () Bool)

(assert (=> b!4107110 (= e!2548498 tp_is_empty!21137)))

(declare-fun b!4107111 () Bool)

(declare-fun tp!1246697 () Bool)

(declare-fun tp!1246696 () Bool)

(assert (=> b!4107111 (= e!2548498 (and tp!1246697 tp!1246696))))

(declare-fun b!4107113 () Bool)

(declare-fun tp!1246694 () Bool)

(declare-fun tp!1246693 () Bool)

(assert (=> b!4107113 (= e!2548498 (and tp!1246694 tp!1246693))))

(assert (=> b!4105968 (= tp!1245383 e!2548498)))

(declare-fun b!4107112 () Bool)

(declare-fun tp!1246695 () Bool)

(assert (=> b!4107112 (= e!2548498 tp!1246695)))

(assert (= (and b!4105968 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107110))

(assert (= (and b!4105968 ((_ is Concat!19495) (regTwo!24682 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107111))

(assert (= (and b!4105968 ((_ is Star!12085) (regTwo!24682 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107112))

(assert (= (and b!4105968 ((_ is Union!12085) (regTwo!24682 (regOne!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107113))

(declare-fun b!4107114 () Bool)

(declare-fun e!2548499 () Bool)

(assert (=> b!4107114 (= e!2548499 tp_is_empty!21137)))

(declare-fun b!4107115 () Bool)

(declare-fun tp!1246702 () Bool)

(declare-fun tp!1246701 () Bool)

(assert (=> b!4107115 (= e!2548499 (and tp!1246702 tp!1246701))))

(declare-fun b!4107117 () Bool)

(declare-fun tp!1246699 () Bool)

(declare-fun tp!1246698 () Bool)

(assert (=> b!4107117 (= e!2548499 (and tp!1246699 tp!1246698))))

(assert (=> b!4105804 (= tp!1245189 e!2548499)))

(declare-fun b!4107116 () Bool)

(declare-fun tp!1246700 () Bool)

(assert (=> b!4107116 (= e!2548499 tp!1246700)))

(assert (= (and b!4105804 ((_ is ElementMatch!12085) (regOne!24682 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107114))

(assert (= (and b!4105804 ((_ is Concat!19495) (regOne!24682 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107115))

(assert (= (and b!4105804 ((_ is Star!12085) (regOne!24682 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107116))

(assert (= (and b!4105804 ((_ is Union!12085) (regOne!24682 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107117))

(declare-fun b!4107118 () Bool)

(declare-fun e!2548500 () Bool)

(assert (=> b!4107118 (= e!2548500 tp_is_empty!21137)))

(declare-fun b!4107119 () Bool)

(declare-fun tp!1246707 () Bool)

(declare-fun tp!1246706 () Bool)

(assert (=> b!4107119 (= e!2548500 (and tp!1246707 tp!1246706))))

(declare-fun b!4107121 () Bool)

(declare-fun tp!1246704 () Bool)

(declare-fun tp!1246703 () Bool)

(assert (=> b!4107121 (= e!2548500 (and tp!1246704 tp!1246703))))

(assert (=> b!4105804 (= tp!1245188 e!2548500)))

(declare-fun b!4107120 () Bool)

(declare-fun tp!1246705 () Bool)

(assert (=> b!4107120 (= e!2548500 tp!1246705)))

(assert (= (and b!4105804 ((_ is ElementMatch!12085) (regTwo!24682 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107118))

(assert (= (and b!4105804 ((_ is Concat!19495) (regTwo!24682 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107119))

(assert (= (and b!4105804 ((_ is Star!12085) (regTwo!24682 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107120))

(assert (= (and b!4105804 ((_ is Union!12085) (regTwo!24682 (reg!12414 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107121))

(declare-fun b!4107122 () Bool)

(declare-fun e!2548501 () Bool)

(assert (=> b!4107122 (= e!2548501 tp_is_empty!21137)))

(declare-fun b!4107123 () Bool)

(declare-fun tp!1246712 () Bool)

(declare-fun tp!1246711 () Bool)

(assert (=> b!4107123 (= e!2548501 (and tp!1246712 tp!1246711))))

(declare-fun b!4107125 () Bool)

(declare-fun tp!1246709 () Bool)

(declare-fun tp!1246708 () Bool)

(assert (=> b!4107125 (= e!2548501 (and tp!1246709 tp!1246708))))

(assert (=> b!4105835 (= tp!1245222 e!2548501)))

(declare-fun b!4107124 () Bool)

(declare-fun tp!1246710 () Bool)

(assert (=> b!4107124 (= e!2548501 tp!1246710)))

(assert (= (and b!4105835 ((_ is ElementMatch!12085) (reg!12414 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107122))

(assert (= (and b!4105835 ((_ is Concat!19495) (reg!12414 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107123))

(assert (= (and b!4105835 ((_ is Star!12085) (reg!12414 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107124))

(assert (= (and b!4105835 ((_ is Union!12085) (reg!12414 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107125))

(declare-fun b!4107126 () Bool)

(declare-fun e!2548502 () Bool)

(assert (=> b!4107126 (= e!2548502 tp_is_empty!21137)))

(declare-fun b!4107127 () Bool)

(declare-fun tp!1246717 () Bool)

(declare-fun tp!1246716 () Bool)

(assert (=> b!4107127 (= e!2548502 (and tp!1246717 tp!1246716))))

(declare-fun b!4107129 () Bool)

(declare-fun tp!1246714 () Bool)

(declare-fun tp!1246713 () Bool)

(assert (=> b!4107129 (= e!2548502 (and tp!1246714 tp!1246713))))

(assert (=> b!4105954 (= tp!1245369 e!2548502)))

(declare-fun b!4107128 () Bool)

(declare-fun tp!1246715 () Bool)

(assert (=> b!4107128 (= e!2548502 tp!1246715)))

(assert (= (and b!4105954 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107126))

(assert (= (and b!4105954 ((_ is Concat!19495) (regOne!24682 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107127))

(assert (= (and b!4105954 ((_ is Star!12085) (regOne!24682 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107128))

(assert (= (and b!4105954 ((_ is Union!12085) (regOne!24682 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107129))

(declare-fun b!4107130 () Bool)

(declare-fun e!2548503 () Bool)

(assert (=> b!4107130 (= e!2548503 tp_is_empty!21137)))

(declare-fun b!4107131 () Bool)

(declare-fun tp!1246722 () Bool)

(declare-fun tp!1246721 () Bool)

(assert (=> b!4107131 (= e!2548503 (and tp!1246722 tp!1246721))))

(declare-fun b!4107133 () Bool)

(declare-fun tp!1246719 () Bool)

(declare-fun tp!1246718 () Bool)

(assert (=> b!4107133 (= e!2548503 (and tp!1246719 tp!1246718))))

(assert (=> b!4105954 (= tp!1245368 e!2548503)))

(declare-fun b!4107132 () Bool)

(declare-fun tp!1246720 () Bool)

(assert (=> b!4107132 (= e!2548503 tp!1246720)))

(assert (= (and b!4105954 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107130))

(assert (= (and b!4105954 ((_ is Concat!19495) (regTwo!24682 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107131))

(assert (= (and b!4105954 ((_ is Star!12085) (regTwo!24682 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107132))

(assert (= (and b!4105954 ((_ is Union!12085) (regTwo!24682 (regOne!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107133))

(declare-fun b!4107134 () Bool)

(declare-fun e!2548504 () Bool)

(assert (=> b!4107134 (= e!2548504 tp_is_empty!21137)))

(declare-fun b!4107135 () Bool)

(declare-fun tp!1246727 () Bool)

(declare-fun tp!1246726 () Bool)

(assert (=> b!4107135 (= e!2548504 (and tp!1246727 tp!1246726))))

(declare-fun b!4107137 () Bool)

(declare-fun tp!1246724 () Bool)

(declare-fun tp!1246723 () Bool)

(assert (=> b!4107137 (= e!2548504 (and tp!1246724 tp!1246723))))

(assert (=> b!4105866 (= tp!1245256 e!2548504)))

(declare-fun b!4107136 () Bool)

(declare-fun tp!1246725 () Bool)

(assert (=> b!4107136 (= e!2548504 tp!1246725)))

(assert (= (and b!4105866 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107134))

(assert (= (and b!4105866 ((_ is Concat!19495) (regOne!24683 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107135))

(assert (= (and b!4105866 ((_ is Star!12085) (regOne!24683 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107136))

(assert (= (and b!4105866 ((_ is Union!12085) (regOne!24683 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107137))

(declare-fun b!4107138 () Bool)

(declare-fun e!2548505 () Bool)

(assert (=> b!4107138 (= e!2548505 tp_is_empty!21137)))

(declare-fun b!4107139 () Bool)

(declare-fun tp!1246732 () Bool)

(declare-fun tp!1246731 () Bool)

(assert (=> b!4107139 (= e!2548505 (and tp!1246732 tp!1246731))))

(declare-fun b!4107141 () Bool)

(declare-fun tp!1246729 () Bool)

(declare-fun tp!1246728 () Bool)

(assert (=> b!4107141 (= e!2548505 (and tp!1246729 tp!1246728))))

(assert (=> b!4105866 (= tp!1245255 e!2548505)))

(declare-fun b!4107140 () Bool)

(declare-fun tp!1246730 () Bool)

(assert (=> b!4107140 (= e!2548505 tp!1246730)))

(assert (= (and b!4105866 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107138))

(assert (= (and b!4105866 ((_ is Concat!19495) (regTwo!24683 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107139))

(assert (= (and b!4105866 ((_ is Star!12085) (regTwo!24683 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107140))

(assert (= (and b!4105866 ((_ is Union!12085) (regTwo!24683 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107141))

(declare-fun b!4107142 () Bool)

(declare-fun e!2548506 () Bool)

(assert (=> b!4107142 (= e!2548506 tp_is_empty!21137)))

(declare-fun b!4107143 () Bool)

(declare-fun tp!1246737 () Bool)

(declare-fun tp!1246736 () Bool)

(assert (=> b!4107143 (= e!2548506 (and tp!1246737 tp!1246736))))

(declare-fun b!4107145 () Bool)

(declare-fun tp!1246734 () Bool)

(declare-fun tp!1246733 () Bool)

(assert (=> b!4107145 (= e!2548506 (and tp!1246734 tp!1246733))))

(assert (=> b!4105976 (= tp!1245386 e!2548506)))

(declare-fun b!4107144 () Bool)

(declare-fun tp!1246735 () Bool)

(assert (=> b!4107144 (= e!2548506 tp!1246735)))

(assert (= (and b!4105976 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107142))

(assert (= (and b!4105976 ((_ is Concat!19495) (regOne!24683 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107143))

(assert (= (and b!4105976 ((_ is Star!12085) (regOne!24683 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107144))

(assert (= (and b!4105976 ((_ is Union!12085) (regOne!24683 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107145))

(declare-fun b!4107146 () Bool)

(declare-fun e!2548507 () Bool)

(assert (=> b!4107146 (= e!2548507 tp_is_empty!21137)))

(declare-fun b!4107147 () Bool)

(declare-fun tp!1246742 () Bool)

(declare-fun tp!1246741 () Bool)

(assert (=> b!4107147 (= e!2548507 (and tp!1246742 tp!1246741))))

(declare-fun b!4107149 () Bool)

(declare-fun tp!1246739 () Bool)

(declare-fun tp!1246738 () Bool)

(assert (=> b!4107149 (= e!2548507 (and tp!1246739 tp!1246738))))

(assert (=> b!4105976 (= tp!1245385 e!2548507)))

(declare-fun b!4107148 () Bool)

(declare-fun tp!1246740 () Bool)

(assert (=> b!4107148 (= e!2548507 tp!1246740)))

(assert (= (and b!4105976 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107146))

(assert (= (and b!4105976 ((_ is Concat!19495) (regTwo!24683 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107147))

(assert (= (and b!4105976 ((_ is Star!12085) (regTwo!24683 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107148))

(assert (= (and b!4105976 ((_ is Union!12085) (regTwo!24683 (regTwo!24683 (regOne!24683 (regex!7180 rHead!24)))))) b!4107149))

(declare-fun b!4107150 () Bool)

(declare-fun e!2548508 () Bool)

(assert (=> b!4107150 (= e!2548508 tp_is_empty!21137)))

(declare-fun b!4107151 () Bool)

(declare-fun tp!1246747 () Bool)

(declare-fun tp!1246746 () Bool)

(assert (=> b!4107151 (= e!2548508 (and tp!1246747 tp!1246746))))

(declare-fun b!4107153 () Bool)

(declare-fun tp!1246744 () Bool)

(declare-fun tp!1246743 () Bool)

(assert (=> b!4107153 (= e!2548508 (and tp!1246744 tp!1246743))))

(assert (=> b!4105880 (= tp!1245271 e!2548508)))

(declare-fun b!4107152 () Bool)

(declare-fun tp!1246745 () Bool)

(assert (=> b!4107152 (= e!2548508 tp!1246745)))

(assert (= (and b!4105880 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107150))

(assert (= (and b!4105880 ((_ is Concat!19495) (regOne!24683 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107151))

(assert (= (and b!4105880 ((_ is Star!12085) (regOne!24683 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107152))

(assert (= (and b!4105880 ((_ is Union!12085) (regOne!24683 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107153))

(declare-fun b!4107154 () Bool)

(declare-fun e!2548509 () Bool)

(assert (=> b!4107154 (= e!2548509 tp_is_empty!21137)))

(declare-fun b!4107155 () Bool)

(declare-fun tp!1246752 () Bool)

(declare-fun tp!1246751 () Bool)

(assert (=> b!4107155 (= e!2548509 (and tp!1246752 tp!1246751))))

(declare-fun b!4107157 () Bool)

(declare-fun tp!1246749 () Bool)

(declare-fun tp!1246748 () Bool)

(assert (=> b!4107157 (= e!2548509 (and tp!1246749 tp!1246748))))

(assert (=> b!4105880 (= tp!1245270 e!2548509)))

(declare-fun b!4107156 () Bool)

(declare-fun tp!1246750 () Bool)

(assert (=> b!4107156 (= e!2548509 tp!1246750)))

(assert (= (and b!4105880 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107154))

(assert (= (and b!4105880 ((_ is Concat!19495) (regTwo!24683 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107155))

(assert (= (and b!4105880 ((_ is Star!12085) (regTwo!24683 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107156))

(assert (= (and b!4105880 ((_ is Union!12085) (regTwo!24683 (regTwo!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107157))

(declare-fun b!4107158 () Bool)

(declare-fun e!2548510 () Bool)

(assert (=> b!4107158 (= e!2548510 tp_is_empty!21137)))

(declare-fun b!4107159 () Bool)

(declare-fun tp!1246757 () Bool)

(declare-fun tp!1246756 () Bool)

(assert (=> b!4107159 (= e!2548510 (and tp!1246757 tp!1246756))))

(declare-fun b!4107161 () Bool)

(declare-fun tp!1246754 () Bool)

(declare-fun tp!1246753 () Bool)

(assert (=> b!4107161 (= e!2548510 (and tp!1246754 tp!1246753))))

(assert (=> b!4105865 (= tp!1245257 e!2548510)))

(declare-fun b!4107160 () Bool)

(declare-fun tp!1246755 () Bool)

(assert (=> b!4107160 (= e!2548510 tp!1246755)))

(assert (= (and b!4105865 ((_ is ElementMatch!12085) (reg!12414 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107158))

(assert (= (and b!4105865 ((_ is Concat!19495) (reg!12414 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107159))

(assert (= (and b!4105865 ((_ is Star!12085) (reg!12414 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107160))

(assert (= (and b!4105865 ((_ is Union!12085) (reg!12414 (regOne!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107161))

(declare-fun b!4107162 () Bool)

(declare-fun e!2548511 () Bool)

(assert (=> b!4107162 (= e!2548511 tp_is_empty!21137)))

(declare-fun b!4107163 () Bool)

(declare-fun tp!1246762 () Bool)

(declare-fun tp!1246761 () Bool)

(assert (=> b!4107163 (= e!2548511 (and tp!1246762 tp!1246761))))

(declare-fun b!4107165 () Bool)

(declare-fun tp!1246759 () Bool)

(declare-fun tp!1246758 () Bool)

(assert (=> b!4107165 (= e!2548511 (and tp!1246759 tp!1246758))))

(assert (=> b!4105910 (= tp!1245314 e!2548511)))

(declare-fun b!4107164 () Bool)

(declare-fun tp!1246760 () Bool)

(assert (=> b!4107164 (= e!2548511 tp!1246760)))

(assert (= (and b!4105910 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107162))

(assert (= (and b!4105910 ((_ is Concat!19495) (regOne!24682 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107163))

(assert (= (and b!4105910 ((_ is Star!12085) (regOne!24682 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107164))

(assert (= (and b!4105910 ((_ is Union!12085) (regOne!24682 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107165))

(declare-fun b!4107166 () Bool)

(declare-fun e!2548512 () Bool)

(assert (=> b!4107166 (= e!2548512 tp_is_empty!21137)))

(declare-fun b!4107167 () Bool)

(declare-fun tp!1246767 () Bool)

(declare-fun tp!1246766 () Bool)

(assert (=> b!4107167 (= e!2548512 (and tp!1246767 tp!1246766))))

(declare-fun b!4107169 () Bool)

(declare-fun tp!1246764 () Bool)

(declare-fun tp!1246763 () Bool)

(assert (=> b!4107169 (= e!2548512 (and tp!1246764 tp!1246763))))

(assert (=> b!4105910 (= tp!1245313 e!2548512)))

(declare-fun b!4107168 () Bool)

(declare-fun tp!1246765 () Bool)

(assert (=> b!4107168 (= e!2548512 tp!1246765)))

(assert (= (and b!4105910 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107166))

(assert (= (and b!4105910 ((_ is Concat!19495) (regTwo!24682 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107167))

(assert (= (and b!4105910 ((_ is Star!12085) (regTwo!24682 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107168))

(assert (= (and b!4105910 ((_ is Union!12085) (regTwo!24682 (regTwo!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107169))

(declare-fun b!4107170 () Bool)

(declare-fun e!2548513 () Bool)

(assert (=> b!4107170 (= e!2548513 tp_is_empty!21137)))

(declare-fun b!4107171 () Bool)

(declare-fun tp!1246772 () Bool)

(declare-fun tp!1246771 () Bool)

(assert (=> b!4107171 (= e!2548513 (and tp!1246772 tp!1246771))))

(declare-fun b!4107173 () Bool)

(declare-fun tp!1246769 () Bool)

(declare-fun tp!1246768 () Bool)

(assert (=> b!4107173 (= e!2548513 (and tp!1246769 tp!1246768))))

(assert (=> b!4105919 (= tp!1245322 e!2548513)))

(declare-fun b!4107172 () Bool)

(declare-fun tp!1246770 () Bool)

(assert (=> b!4107172 (= e!2548513 tp!1246770)))

(assert (= (and b!4105919 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107170))

(assert (= (and b!4105919 ((_ is Concat!19495) (reg!12414 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107171))

(assert (= (and b!4105919 ((_ is Star!12085) (reg!12414 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107172))

(assert (= (and b!4105919 ((_ is Union!12085) (reg!12414 (regTwo!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107173))

(declare-fun b!4107174 () Bool)

(declare-fun e!2548514 () Bool)

(assert (=> b!4107174 (= e!2548514 tp_is_empty!21137)))

(declare-fun b!4107175 () Bool)

(declare-fun tp!1246777 () Bool)

(declare-fun tp!1246776 () Bool)

(assert (=> b!4107175 (= e!2548514 (and tp!1246777 tp!1246776))))

(declare-fun b!4107177 () Bool)

(declare-fun tp!1246774 () Bool)

(declare-fun tp!1246773 () Bool)

(assert (=> b!4107177 (= e!2548514 (and tp!1246774 tp!1246773))))

(assert (=> b!4105991 (= tp!1245407 e!2548514)))

(declare-fun b!4107176 () Bool)

(declare-fun tp!1246775 () Bool)

(assert (=> b!4107176 (= e!2548514 tp!1246775)))

(assert (= (and b!4105991 ((_ is ElementMatch!12085) (reg!12414 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107174))

(assert (= (and b!4105991 ((_ is Concat!19495) (reg!12414 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107175))

(assert (= (and b!4105991 ((_ is Star!12085) (reg!12414 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107176))

(assert (= (and b!4105991 ((_ is Union!12085) (reg!12414 (regOne!24683 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107177))

(declare-fun b!4107178 () Bool)

(declare-fun e!2548515 () Bool)

(assert (=> b!4107178 (= e!2548515 tp_is_empty!21137)))

(declare-fun b!4107179 () Bool)

(declare-fun tp!1246782 () Bool)

(declare-fun tp!1246781 () Bool)

(assert (=> b!4107179 (= e!2548515 (and tp!1246782 tp!1246781))))

(declare-fun b!4107181 () Bool)

(declare-fun tp!1246779 () Bool)

(declare-fun tp!1246778 () Bool)

(assert (=> b!4107181 (= e!2548515 (and tp!1246779 tp!1246778))))

(assert (=> b!4105928 (= tp!1245331 e!2548515)))

(declare-fun b!4107180 () Bool)

(declare-fun tp!1246780 () Bool)

(assert (=> b!4107180 (= e!2548515 tp!1246780)))

(assert (= (and b!4105928 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107178))

(assert (= (and b!4105928 ((_ is Concat!19495) (regOne!24683 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107179))

(assert (= (and b!4105928 ((_ is Star!12085) (regOne!24683 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107180))

(assert (= (and b!4105928 ((_ is Union!12085) (regOne!24683 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107181))

(declare-fun b!4107182 () Bool)

(declare-fun e!2548516 () Bool)

(assert (=> b!4107182 (= e!2548516 tp_is_empty!21137)))

(declare-fun b!4107183 () Bool)

(declare-fun tp!1246787 () Bool)

(declare-fun tp!1246786 () Bool)

(assert (=> b!4107183 (= e!2548516 (and tp!1246787 tp!1246786))))

(declare-fun b!4107185 () Bool)

(declare-fun tp!1246784 () Bool)

(declare-fun tp!1246783 () Bool)

(assert (=> b!4107185 (= e!2548516 (and tp!1246784 tp!1246783))))

(assert (=> b!4105928 (= tp!1245330 e!2548516)))

(declare-fun b!4107184 () Bool)

(declare-fun tp!1246785 () Bool)

(assert (=> b!4107184 (= e!2548516 tp!1246785)))

(assert (= (and b!4105928 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107182))

(assert (= (and b!4105928 ((_ is Concat!19495) (regTwo!24683 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107183))

(assert (= (and b!4105928 ((_ is Star!12085) (regTwo!24683 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107184))

(assert (= (and b!4105928 ((_ is Union!12085) (regTwo!24683 (regTwo!24683 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107185))

(declare-fun b!4107186 () Bool)

(declare-fun e!2548517 () Bool)

(assert (=> b!4107186 (= e!2548517 tp_is_empty!21137)))

(declare-fun b!4107187 () Bool)

(declare-fun tp!1246792 () Bool)

(declare-fun tp!1246791 () Bool)

(assert (=> b!4107187 (= e!2548517 (and tp!1246792 tp!1246791))))

(declare-fun b!4107189 () Bool)

(declare-fun tp!1246789 () Bool)

(declare-fun tp!1246788 () Bool)

(assert (=> b!4107189 (= e!2548517 (and tp!1246789 tp!1246788))))

(assert (=> b!4105792 (= tp!1245174 e!2548517)))

(declare-fun b!4107188 () Bool)

(declare-fun tp!1246790 () Bool)

(assert (=> b!4107188 (= e!2548517 tp!1246790)))

(assert (= (and b!4105792 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107186))

(assert (= (and b!4105792 ((_ is Concat!19495) (regOne!24682 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107187))

(assert (= (and b!4105792 ((_ is Star!12085) (regOne!24682 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107188))

(assert (= (and b!4105792 ((_ is Union!12085) (regOne!24682 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107189))

(declare-fun b!4107190 () Bool)

(declare-fun e!2548518 () Bool)

(assert (=> b!4107190 (= e!2548518 tp_is_empty!21137)))

(declare-fun b!4107191 () Bool)

(declare-fun tp!1246797 () Bool)

(declare-fun tp!1246796 () Bool)

(assert (=> b!4107191 (= e!2548518 (and tp!1246797 tp!1246796))))

(declare-fun b!4107193 () Bool)

(declare-fun tp!1246794 () Bool)

(declare-fun tp!1246793 () Bool)

(assert (=> b!4107193 (= e!2548518 (and tp!1246794 tp!1246793))))

(assert (=> b!4105792 (= tp!1245173 e!2548518)))

(declare-fun b!4107192 () Bool)

(declare-fun tp!1246795 () Bool)

(assert (=> b!4107192 (= e!2548518 tp!1246795)))

(assert (= (and b!4105792 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107190))

(assert (= (and b!4105792 ((_ is Concat!19495) (regTwo!24682 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107191))

(assert (= (and b!4105792 ((_ is Star!12085) (regTwo!24682 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107192))

(assert (= (and b!4105792 ((_ is Union!12085) (regTwo!24682 (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107193))

(declare-fun b!4107194 () Bool)

(declare-fun e!2548519 () Bool)

(assert (=> b!4107194 (= e!2548519 tp_is_empty!21137)))

(declare-fun b!4107195 () Bool)

(declare-fun tp!1246802 () Bool)

(declare-fun tp!1246801 () Bool)

(assert (=> b!4107195 (= e!2548519 (and tp!1246802 tp!1246801))))

(declare-fun b!4107197 () Bool)

(declare-fun tp!1246799 () Bool)

(declare-fun tp!1246798 () Bool)

(assert (=> b!4107197 (= e!2548519 (and tp!1246799 tp!1246798))))

(assert (=> b!4105810 (= tp!1245191 e!2548519)))

(declare-fun b!4107196 () Bool)

(declare-fun tp!1246800 () Bool)

(assert (=> b!4107196 (= e!2548519 tp!1246800)))

(assert (= (and b!4105810 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107194))

(assert (= (and b!4105810 ((_ is Concat!19495) (regOne!24683 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107195))

(assert (= (and b!4105810 ((_ is Star!12085) (regOne!24683 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107196))

(assert (= (and b!4105810 ((_ is Union!12085) (regOne!24683 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107197))

(declare-fun b!4107198 () Bool)

(declare-fun e!2548520 () Bool)

(assert (=> b!4107198 (= e!2548520 tp_is_empty!21137)))

(declare-fun b!4107199 () Bool)

(declare-fun tp!1246807 () Bool)

(declare-fun tp!1246806 () Bool)

(assert (=> b!4107199 (= e!2548520 (and tp!1246807 tp!1246806))))

(declare-fun b!4107201 () Bool)

(declare-fun tp!1246804 () Bool)

(declare-fun tp!1246803 () Bool)

(assert (=> b!4107201 (= e!2548520 (and tp!1246804 tp!1246803))))

(assert (=> b!4105810 (= tp!1245190 e!2548520)))

(declare-fun b!4107200 () Bool)

(declare-fun tp!1246805 () Bool)

(assert (=> b!4107200 (= e!2548520 tp!1246805)))

(assert (= (and b!4105810 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107198))

(assert (= (and b!4105810 ((_ is Concat!19495) (regTwo!24683 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107199))

(assert (= (and b!4105810 ((_ is Star!12085) (regTwo!24683 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107200))

(assert (= (and b!4105810 ((_ is Union!12085) (regTwo!24683 (regOne!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107201))

(declare-fun b!4107202 () Bool)

(declare-fun e!2548521 () Bool)

(assert (=> b!4107202 (= e!2548521 tp_is_empty!21137)))

(declare-fun b!4107203 () Bool)

(declare-fun tp!1246812 () Bool)

(declare-fun tp!1246811 () Bool)

(assert (=> b!4107203 (= e!2548521 (and tp!1246812 tp!1246811))))

(declare-fun b!4107205 () Bool)

(declare-fun tp!1246809 () Bool)

(declare-fun tp!1246808 () Bool)

(assert (=> b!4107205 (= e!2548521 (and tp!1246809 tp!1246808))))

(assert (=> b!4105801 (= tp!1245182 e!2548521)))

(declare-fun b!4107204 () Bool)

(declare-fun tp!1246810 () Bool)

(assert (=> b!4107204 (= e!2548521 tp!1246810)))

(assert (= (and b!4105801 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107202))

(assert (= (and b!4105801 ((_ is Concat!19495) (reg!12414 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107203))

(assert (= (and b!4105801 ((_ is Star!12085) (reg!12414 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107204))

(assert (= (and b!4105801 ((_ is Union!12085) (reg!12414 (regTwo!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107205))

(declare-fun b!4107206 () Bool)

(declare-fun e!2548522 () Bool)

(assert (=> b!4107206 (= e!2548522 tp_is_empty!21137)))

(declare-fun b!4107207 () Bool)

(declare-fun tp!1246817 () Bool)

(declare-fun tp!1246816 () Bool)

(assert (=> b!4107207 (= e!2548522 (and tp!1246817 tp!1246816))))

(declare-fun b!4107209 () Bool)

(declare-fun tp!1246814 () Bool)

(declare-fun tp!1246813 () Bool)

(assert (=> b!4107209 (= e!2548522 (and tp!1246814 tp!1246813))))

(assert (=> b!4105942 (= tp!1245354 e!2548522)))

(declare-fun b!4107208 () Bool)

(declare-fun tp!1246815 () Bool)

(assert (=> b!4107208 (= e!2548522 tp!1246815)))

(assert (= (and b!4105942 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107206))

(assert (= (and b!4105942 ((_ is Concat!19495) (regOne!24682 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107207))

(assert (= (and b!4105942 ((_ is Star!12085) (regOne!24682 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107208))

(assert (= (and b!4105942 ((_ is Union!12085) (regOne!24682 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107209))

(declare-fun b!4107210 () Bool)

(declare-fun e!2548523 () Bool)

(assert (=> b!4107210 (= e!2548523 tp_is_empty!21137)))

(declare-fun b!4107211 () Bool)

(declare-fun tp!1246822 () Bool)

(declare-fun tp!1246821 () Bool)

(assert (=> b!4107211 (= e!2548523 (and tp!1246822 tp!1246821))))

(declare-fun b!4107213 () Bool)

(declare-fun tp!1246819 () Bool)

(declare-fun tp!1246818 () Bool)

(assert (=> b!4107213 (= e!2548523 (and tp!1246819 tp!1246818))))

(assert (=> b!4105942 (= tp!1245353 e!2548523)))

(declare-fun b!4107212 () Bool)

(declare-fun tp!1246820 () Bool)

(assert (=> b!4107212 (= e!2548523 tp!1246820)))

(assert (= (and b!4105942 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107210))

(assert (= (and b!4105942 ((_ is Concat!19495) (regTwo!24682 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107211))

(assert (= (and b!4105942 ((_ is Star!12085) (regTwo!24682 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107212))

(assert (= (and b!4105942 ((_ is Union!12085) (regTwo!24682 (regTwo!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107213))

(declare-fun b!4107214 () Bool)

(declare-fun e!2548524 () Bool)

(assert (=> b!4107214 (= e!2548524 tp_is_empty!21137)))

(declare-fun b!4107215 () Bool)

(declare-fun tp!1246827 () Bool)

(declare-fun tp!1246826 () Bool)

(assert (=> b!4107215 (= e!2548524 (and tp!1246827 tp!1246826))))

(declare-fun b!4107217 () Bool)

(declare-fun tp!1246824 () Bool)

(declare-fun tp!1246823 () Bool)

(assert (=> b!4107217 (= e!2548524 (and tp!1246824 tp!1246823))))

(assert (=> b!4105951 (= tp!1245362 e!2548524)))

(declare-fun b!4107216 () Bool)

(declare-fun tp!1246825 () Bool)

(assert (=> b!4107216 (= e!2548524 tp!1246825)))

(assert (= (and b!4105951 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107214))

(assert (= (and b!4105951 ((_ is Concat!19495) (reg!12414 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107215))

(assert (= (and b!4105951 ((_ is Star!12085) (reg!12414 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107216))

(assert (= (and b!4105951 ((_ is Union!12085) (reg!12414 (regTwo!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107217))

(declare-fun b!4107218 () Bool)

(declare-fun e!2548525 () Bool)

(assert (=> b!4107218 (= e!2548525 tp_is_empty!21137)))

(declare-fun b!4107219 () Bool)

(declare-fun tp!1246832 () Bool)

(declare-fun tp!1246831 () Bool)

(assert (=> b!4107219 (= e!2548525 (and tp!1246832 tp!1246831))))

(declare-fun b!4107221 () Bool)

(declare-fun tp!1246829 () Bool)

(declare-fun tp!1246828 () Bool)

(assert (=> b!4107221 (= e!2548525 (and tp!1246829 tp!1246828))))

(assert (=> b!4105765 (= tp!1245145 e!2548525)))

(declare-fun b!4107220 () Bool)

(declare-fun tp!1246830 () Bool)

(assert (=> b!4107220 (= e!2548525 tp!1246830)))

(assert (= (and b!4105765 ((_ is ElementMatch!12085) (regOne!24682 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107218))

(assert (= (and b!4105765 ((_ is Concat!19495) (regOne!24682 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107219))

(assert (= (and b!4105765 ((_ is Star!12085) (regOne!24682 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107220))

(assert (= (and b!4105765 ((_ is Union!12085) (regOne!24682 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107221))

(declare-fun b!4107222 () Bool)

(declare-fun e!2548526 () Bool)

(assert (=> b!4107222 (= e!2548526 tp_is_empty!21137)))

(declare-fun b!4107223 () Bool)

(declare-fun tp!1246837 () Bool)

(declare-fun tp!1246836 () Bool)

(assert (=> b!4107223 (= e!2548526 (and tp!1246837 tp!1246836))))

(declare-fun b!4107225 () Bool)

(declare-fun tp!1246834 () Bool)

(declare-fun tp!1246833 () Bool)

(assert (=> b!4107225 (= e!2548526 (and tp!1246834 tp!1246833))))

(assert (=> b!4105765 (= tp!1245144 e!2548526)))

(declare-fun b!4107224 () Bool)

(declare-fun tp!1246835 () Bool)

(assert (=> b!4107224 (= e!2548526 tp!1246835)))

(assert (= (and b!4105765 ((_ is ElementMatch!12085) (regTwo!24682 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107222))

(assert (= (and b!4105765 ((_ is Concat!19495) (regTwo!24682 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107223))

(assert (= (and b!4105765 ((_ is Star!12085) (regTwo!24682 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107224))

(assert (= (and b!4105765 ((_ is Union!12085) (regTwo!24682 (reg!12414 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107225))

(declare-fun b!4107226 () Bool)

(declare-fun e!2548527 () Bool)

(assert (=> b!4107226 (= e!2548527 tp_is_empty!21137)))

(declare-fun b!4107227 () Bool)

(declare-fun tp!1246842 () Bool)

(declare-fun tp!1246841 () Bool)

(assert (=> b!4107227 (= e!2548527 (and tp!1246842 tp!1246841))))

(declare-fun b!4107229 () Bool)

(declare-fun tp!1246839 () Bool)

(declare-fun tp!1246838 () Bool)

(assert (=> b!4107229 (= e!2548527 (and tp!1246839 tp!1246838))))

(assert (=> b!4105960 (= tp!1245371 e!2548527)))

(declare-fun b!4107228 () Bool)

(declare-fun tp!1246840 () Bool)

(assert (=> b!4107228 (= e!2548527 tp!1246840)))

(assert (= (and b!4105960 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107226))

(assert (= (and b!4105960 ((_ is Concat!19495) (regOne!24683 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107227))

(assert (= (and b!4105960 ((_ is Star!12085) (regOne!24683 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107228))

(assert (= (and b!4105960 ((_ is Union!12085) (regOne!24683 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107229))

(declare-fun b!4107230 () Bool)

(declare-fun e!2548528 () Bool)

(assert (=> b!4107230 (= e!2548528 tp_is_empty!21137)))

(declare-fun b!4107231 () Bool)

(declare-fun tp!1246847 () Bool)

(declare-fun tp!1246846 () Bool)

(assert (=> b!4107231 (= e!2548528 (and tp!1246847 tp!1246846))))

(declare-fun b!4107233 () Bool)

(declare-fun tp!1246844 () Bool)

(declare-fun tp!1246843 () Bool)

(assert (=> b!4107233 (= e!2548528 (and tp!1246844 tp!1246843))))

(assert (=> b!4105960 (= tp!1245370 e!2548528)))

(declare-fun b!4107232 () Bool)

(declare-fun tp!1246845 () Bool)

(assert (=> b!4107232 (= e!2548528 tp!1246845)))

(assert (= (and b!4105960 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107230))

(assert (= (and b!4105960 ((_ is Concat!19495) (regTwo!24683 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107231))

(assert (= (and b!4105960 ((_ is Star!12085) (regTwo!24683 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107232))

(assert (= (and b!4105960 ((_ is Union!12085) (regTwo!24683 (regTwo!24682 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107233))

(declare-fun b!4107234 () Bool)

(declare-fun e!2548529 () Bool)

(assert (=> b!4107234 (= e!2548529 tp_is_empty!21137)))

(declare-fun b!4107235 () Bool)

(declare-fun tp!1246852 () Bool)

(declare-fun tp!1246851 () Bool)

(assert (=> b!4107235 (= e!2548529 (and tp!1246852 tp!1246851))))

(declare-fun b!4107237 () Bool)

(declare-fun tp!1246849 () Bool)

(declare-fun tp!1246848 () Bool)

(assert (=> b!4107237 (= e!2548529 (and tp!1246849 tp!1246848))))

(assert (=> b!4105870 (= tp!1245261 e!2548529)))

(declare-fun b!4107236 () Bool)

(declare-fun tp!1246850 () Bool)

(assert (=> b!4107236 (= e!2548529 tp!1246850)))

(assert (= (and b!4105870 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107234))

(assert (= (and b!4105870 ((_ is Concat!19495) (regOne!24683 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107235))

(assert (= (and b!4105870 ((_ is Star!12085) (regOne!24683 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107236))

(assert (= (and b!4105870 ((_ is Union!12085) (regOne!24683 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107237))

(declare-fun b!4107238 () Bool)

(declare-fun e!2548530 () Bool)

(assert (=> b!4107238 (= e!2548530 tp_is_empty!21137)))

(declare-fun b!4107239 () Bool)

(declare-fun tp!1246857 () Bool)

(declare-fun tp!1246856 () Bool)

(assert (=> b!4107239 (= e!2548530 (and tp!1246857 tp!1246856))))

(declare-fun b!4107241 () Bool)

(declare-fun tp!1246854 () Bool)

(declare-fun tp!1246853 () Bool)

(assert (=> b!4107241 (= e!2548530 (and tp!1246854 tp!1246853))))

(assert (=> b!4105870 (= tp!1245260 e!2548530)))

(declare-fun b!4107240 () Bool)

(declare-fun tp!1246855 () Bool)

(assert (=> b!4107240 (= e!2548530 tp!1246855)))

(assert (= (and b!4105870 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107238))

(assert (= (and b!4105870 ((_ is Concat!19495) (regTwo!24683 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107239))

(assert (= (and b!4105870 ((_ is Star!12085) (regTwo!24683 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107240))

(assert (= (and b!4105870 ((_ is Union!12085) (regTwo!24683 (regTwo!24683 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107241))

(declare-fun b!4107242 () Bool)

(declare-fun e!2548531 () Bool)

(assert (=> b!4107242 (= e!2548531 tp_is_empty!21137)))

(declare-fun b!4107243 () Bool)

(declare-fun tp!1246862 () Bool)

(declare-fun tp!1246861 () Bool)

(assert (=> b!4107243 (= e!2548531 (and tp!1246862 tp!1246861))))

(declare-fun b!4107245 () Bool)

(declare-fun tp!1246859 () Bool)

(declare-fun tp!1246858 () Bool)

(assert (=> b!4107245 (= e!2548531 (and tp!1246859 tp!1246858))))

(assert (=> b!4105908 (= tp!1245306 e!2548531)))

(declare-fun b!4107244 () Bool)

(declare-fun tp!1246860 () Bool)

(assert (=> b!4107244 (= e!2548531 tp!1246860)))

(assert (= (and b!4105908 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107242))

(assert (= (and b!4105908 ((_ is Concat!19495) (regOne!24683 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107243))

(assert (= (and b!4105908 ((_ is Star!12085) (regOne!24683 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107244))

(assert (= (and b!4105908 ((_ is Union!12085) (regOne!24683 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107245))

(declare-fun b!4107246 () Bool)

(declare-fun e!2548532 () Bool)

(assert (=> b!4107246 (= e!2548532 tp_is_empty!21137)))

(declare-fun b!4107247 () Bool)

(declare-fun tp!1246867 () Bool)

(declare-fun tp!1246866 () Bool)

(assert (=> b!4107247 (= e!2548532 (and tp!1246867 tp!1246866))))

(declare-fun b!4107249 () Bool)

(declare-fun tp!1246864 () Bool)

(declare-fun tp!1246863 () Bool)

(assert (=> b!4107249 (= e!2548532 (and tp!1246864 tp!1246863))))

(assert (=> b!4105908 (= tp!1245305 e!2548532)))

(declare-fun b!4107248 () Bool)

(declare-fun tp!1246865 () Bool)

(assert (=> b!4107248 (= e!2548532 tp!1246865)))

(assert (= (and b!4105908 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107246))

(assert (= (and b!4105908 ((_ is Concat!19495) (regTwo!24683 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107247))

(assert (= (and b!4105908 ((_ is Star!12085) (regTwo!24683 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107248))

(assert (= (and b!4105908 ((_ is Union!12085) (regTwo!24683 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107249))

(declare-fun b!4107250 () Bool)

(declare-fun e!2548533 () Bool)

(assert (=> b!4107250 (= e!2548533 tp_is_empty!21137)))

(declare-fun b!4107251 () Bool)

(declare-fun tp!1246872 () Bool)

(declare-fun tp!1246871 () Bool)

(assert (=> b!4107251 (= e!2548533 (and tp!1246872 tp!1246871))))

(declare-fun b!4107253 () Bool)

(declare-fun tp!1246869 () Bool)

(declare-fun tp!1246868 () Bool)

(assert (=> b!4107253 (= e!2548533 (and tp!1246869 tp!1246868))))

(assert (=> b!4105822 (= tp!1245209 e!2548533)))

(declare-fun b!4107252 () Bool)

(declare-fun tp!1246870 () Bool)

(assert (=> b!4107252 (= e!2548533 tp!1246870)))

(assert (= (and b!4105822 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107250))

(assert (= (and b!4105822 ((_ is Concat!19495) (regOne!24682 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107251))

(assert (= (and b!4105822 ((_ is Star!12085) (regOne!24682 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107252))

(assert (= (and b!4105822 ((_ is Union!12085) (regOne!24682 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107253))

(declare-fun b!4107254 () Bool)

(declare-fun e!2548534 () Bool)

(assert (=> b!4107254 (= e!2548534 tp_is_empty!21137)))

(declare-fun b!4107255 () Bool)

(declare-fun tp!1246877 () Bool)

(declare-fun tp!1246876 () Bool)

(assert (=> b!4107255 (= e!2548534 (and tp!1246877 tp!1246876))))

(declare-fun b!4107257 () Bool)

(declare-fun tp!1246874 () Bool)

(declare-fun tp!1246873 () Bool)

(assert (=> b!4107257 (= e!2548534 (and tp!1246874 tp!1246873))))

(assert (=> b!4105822 (= tp!1245208 e!2548534)))

(declare-fun b!4107256 () Bool)

(declare-fun tp!1246875 () Bool)

(assert (=> b!4107256 (= e!2548534 tp!1246875)))

(assert (= (and b!4105822 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107254))

(assert (= (and b!4105822 ((_ is Concat!19495) (regTwo!24682 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107255))

(assert (= (and b!4105822 ((_ is Star!12085) (regTwo!24682 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107256))

(assert (= (and b!4105822 ((_ is Union!12085) (regTwo!24682 (regTwo!24682 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107257))

(declare-fun b!4107258 () Bool)

(declare-fun e!2548535 () Bool)

(assert (=> b!4107258 (= e!2548535 tp_is_empty!21137)))

(declare-fun b!4107259 () Bool)

(declare-fun tp!1246882 () Bool)

(declare-fun tp!1246881 () Bool)

(assert (=> b!4107259 (= e!2548535 (and tp!1246882 tp!1246881))))

(declare-fun b!4107261 () Bool)

(declare-fun tp!1246879 () Bool)

(declare-fun tp!1246878 () Bool)

(assert (=> b!4107261 (= e!2548535 (and tp!1246879 tp!1246878))))

(assert (=> b!4105890 (= tp!1245289 e!2548535)))

(declare-fun b!4107260 () Bool)

(declare-fun tp!1246880 () Bool)

(assert (=> b!4107260 (= e!2548535 tp!1246880)))

(assert (= (and b!4105890 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107258))

(assert (= (and b!4105890 ((_ is Concat!19495) (regOne!24682 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107259))

(assert (= (and b!4105890 ((_ is Star!12085) (regOne!24682 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107260))

(assert (= (and b!4105890 ((_ is Union!12085) (regOne!24682 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107261))

(declare-fun b!4107262 () Bool)

(declare-fun e!2548536 () Bool)

(assert (=> b!4107262 (= e!2548536 tp_is_empty!21137)))

(declare-fun b!4107263 () Bool)

(declare-fun tp!1246887 () Bool)

(declare-fun tp!1246886 () Bool)

(assert (=> b!4107263 (= e!2548536 (and tp!1246887 tp!1246886))))

(declare-fun b!4107265 () Bool)

(declare-fun tp!1246884 () Bool)

(declare-fun tp!1246883 () Bool)

(assert (=> b!4107265 (= e!2548536 (and tp!1246884 tp!1246883))))

(assert (=> b!4105890 (= tp!1245288 e!2548536)))

(declare-fun b!4107264 () Bool)

(declare-fun tp!1246885 () Bool)

(assert (=> b!4107264 (= e!2548536 tp!1246885)))

(assert (= (and b!4105890 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107262))

(assert (= (and b!4105890 ((_ is Concat!19495) (regTwo!24682 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107263))

(assert (= (and b!4105890 ((_ is Star!12085) (regTwo!24682 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107264))

(assert (= (and b!4105890 ((_ is Union!12085) (regTwo!24682 (regTwo!24683 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107265))

(declare-fun b!4107266 () Bool)

(declare-fun e!2548537 () Bool)

(assert (=> b!4107266 (= e!2548537 tp_is_empty!21137)))

(declare-fun b!4107267 () Bool)

(declare-fun tp!1246892 () Bool)

(declare-fun tp!1246891 () Bool)

(assert (=> b!4107267 (= e!2548537 (and tp!1246892 tp!1246891))))

(declare-fun b!4107269 () Bool)

(declare-fun tp!1246889 () Bool)

(declare-fun tp!1246888 () Bool)

(assert (=> b!4107269 (= e!2548537 (and tp!1246889 tp!1246888))))

(assert (=> b!4105899 (= tp!1245297 e!2548537)))

(declare-fun b!4107268 () Bool)

(declare-fun tp!1246890 () Bool)

(assert (=> b!4107268 (= e!2548537 tp!1246890)))

(assert (= (and b!4105899 ((_ is ElementMatch!12085) (reg!12414 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107266))

(assert (= (and b!4105899 ((_ is Concat!19495) (reg!12414 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107267))

(assert (= (and b!4105899 ((_ is Star!12085) (reg!12414 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107268))

(assert (= (and b!4105899 ((_ is Union!12085) (reg!12414 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107269))

(declare-fun b!4107270 () Bool)

(declare-fun e!2548538 () Bool)

(assert (=> b!4107270 (= e!2548538 tp_is_empty!21137)))

(declare-fun b!4107271 () Bool)

(declare-fun tp!1246897 () Bool)

(declare-fun tp!1246896 () Bool)

(assert (=> b!4107271 (= e!2548538 (and tp!1246897 tp!1246896))))

(declare-fun b!4107273 () Bool)

(declare-fun tp!1246894 () Bool)

(declare-fun tp!1246893 () Bool)

(assert (=> b!4107273 (= e!2548538 (and tp!1246894 tp!1246893))))

(assert (=> b!4105916 (= tp!1245316 e!2548538)))

(declare-fun b!4107272 () Bool)

(declare-fun tp!1246895 () Bool)

(assert (=> b!4107272 (= e!2548538 tp!1246895)))

(assert (= (and b!4105916 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107270))

(assert (= (and b!4105916 ((_ is Concat!19495) (regOne!24683 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107271))

(assert (= (and b!4105916 ((_ is Star!12085) (regOne!24683 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107272))

(assert (= (and b!4105916 ((_ is Union!12085) (regOne!24683 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107273))

(declare-fun b!4107274 () Bool)

(declare-fun e!2548539 () Bool)

(assert (=> b!4107274 (= e!2548539 tp_is_empty!21137)))

(declare-fun b!4107275 () Bool)

(declare-fun tp!1246902 () Bool)

(declare-fun tp!1246901 () Bool)

(assert (=> b!4107275 (= e!2548539 (and tp!1246902 tp!1246901))))

(declare-fun b!4107277 () Bool)

(declare-fun tp!1246899 () Bool)

(declare-fun tp!1246898 () Bool)

(assert (=> b!4107277 (= e!2548539 (and tp!1246899 tp!1246898))))

(assert (=> b!4105916 (= tp!1245315 e!2548539)))

(declare-fun b!4107276 () Bool)

(declare-fun tp!1246900 () Bool)

(assert (=> b!4107276 (= e!2548539 tp!1246900)))

(assert (= (and b!4105916 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107274))

(assert (= (and b!4105916 ((_ is Concat!19495) (regTwo!24683 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107275))

(assert (= (and b!4105916 ((_ is Star!12085) (regTwo!24683 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107276))

(assert (= (and b!4105916 ((_ is Union!12085) (regTwo!24683 (regOne!24683 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107277))

(declare-fun b!4107278 () Bool)

(declare-fun e!2548540 () Bool)

(assert (=> b!4107278 (= e!2548540 tp_is_empty!21137)))

(declare-fun b!4107279 () Bool)

(declare-fun tp!1246907 () Bool)

(declare-fun tp!1246906 () Bool)

(assert (=> b!4107279 (= e!2548540 (and tp!1246907 tp!1246906))))

(declare-fun b!4107281 () Bool)

(declare-fun tp!1246904 () Bool)

(declare-fun tp!1246903 () Bool)

(assert (=> b!4107281 (= e!2548540 (and tp!1246904 tp!1246903))))

(assert (=> b!4105830 (= tp!1245219 e!2548540)))

(declare-fun b!4107280 () Bool)

(declare-fun tp!1246905 () Bool)

(assert (=> b!4107280 (= e!2548540 tp!1246905)))

(assert (= (and b!4105830 ((_ is ElementMatch!12085) (regOne!24682 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107278))

(assert (= (and b!4105830 ((_ is Concat!19495) (regOne!24682 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107279))

(assert (= (and b!4105830 ((_ is Star!12085) (regOne!24682 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107280))

(assert (= (and b!4105830 ((_ is Union!12085) (regOne!24682 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107281))

(declare-fun b!4107282 () Bool)

(declare-fun e!2548541 () Bool)

(assert (=> b!4107282 (= e!2548541 tp_is_empty!21137)))

(declare-fun b!4107283 () Bool)

(declare-fun tp!1246912 () Bool)

(declare-fun tp!1246911 () Bool)

(assert (=> b!4107283 (= e!2548541 (and tp!1246912 tp!1246911))))

(declare-fun b!4107285 () Bool)

(declare-fun tp!1246909 () Bool)

(declare-fun tp!1246908 () Bool)

(assert (=> b!4107285 (= e!2548541 (and tp!1246909 tp!1246908))))

(assert (=> b!4105830 (= tp!1245218 e!2548541)))

(declare-fun b!4107284 () Bool)

(declare-fun tp!1246910 () Bool)

(assert (=> b!4107284 (= e!2548541 tp!1246910)))

(assert (= (and b!4105830 ((_ is ElementMatch!12085) (regTwo!24682 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107282))

(assert (= (and b!4105830 ((_ is Concat!19495) (regTwo!24682 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107283))

(assert (= (and b!4105830 ((_ is Star!12085) (regTwo!24682 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107284))

(assert (= (and b!4105830 ((_ is Union!12085) (regTwo!24682 (reg!12414 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107285))

(declare-fun b!4107286 () Bool)

(declare-fun e!2548542 () Bool)

(assert (=> b!4107286 (= e!2548542 tp_is_empty!21137)))

(declare-fun b!4107287 () Bool)

(declare-fun tp!1246917 () Bool)

(declare-fun tp!1246916 () Bool)

(assert (=> b!4107287 (= e!2548542 (and tp!1246917 tp!1246916))))

(declare-fun b!4107289 () Bool)

(declare-fun tp!1246914 () Bool)

(declare-fun tp!1246913 () Bool)

(assert (=> b!4107289 (= e!2548542 (and tp!1246914 tp!1246913))))

(assert (=> b!4105898 (= tp!1245299 e!2548542)))

(declare-fun b!4107288 () Bool)

(declare-fun tp!1246915 () Bool)

(assert (=> b!4107288 (= e!2548542 tp!1246915)))

(assert (= (and b!4105898 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107286))

(assert (= (and b!4105898 ((_ is Concat!19495) (regOne!24682 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107287))

(assert (= (and b!4105898 ((_ is Star!12085) (regOne!24682 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107288))

(assert (= (and b!4105898 ((_ is Union!12085) (regOne!24682 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107289))

(declare-fun b!4107290 () Bool)

(declare-fun e!2548543 () Bool)

(assert (=> b!4107290 (= e!2548543 tp_is_empty!21137)))

(declare-fun b!4107291 () Bool)

(declare-fun tp!1246922 () Bool)

(declare-fun tp!1246921 () Bool)

(assert (=> b!4107291 (= e!2548543 (and tp!1246922 tp!1246921))))

(declare-fun b!4107293 () Bool)

(declare-fun tp!1246919 () Bool)

(declare-fun tp!1246918 () Bool)

(assert (=> b!4107293 (= e!2548543 (and tp!1246919 tp!1246918))))

(assert (=> b!4105898 (= tp!1245298 e!2548543)))

(declare-fun b!4107292 () Bool)

(declare-fun tp!1246920 () Bool)

(assert (=> b!4107292 (= e!2548543 tp!1246920)))

(assert (= (and b!4105898 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107290))

(assert (= (and b!4105898 ((_ is Concat!19495) (regTwo!24682 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107291))

(assert (= (and b!4105898 ((_ is Star!12085) (regTwo!24682 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107292))

(assert (= (and b!4105898 ((_ is Union!12085) (regTwo!24682 (regOne!24682 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107293))

(declare-fun b!4107294 () Bool)

(declare-fun e!2548544 () Bool)

(assert (=> b!4107294 (= e!2548544 tp_is_empty!21137)))

(declare-fun b!4107295 () Bool)

(declare-fun tp!1246927 () Bool)

(declare-fun tp!1246926 () Bool)

(assert (=> b!4107295 (= e!2548544 (and tp!1246927 tp!1246926))))

(declare-fun b!4107297 () Bool)

(declare-fun tp!1246924 () Bool)

(declare-fun tp!1246923 () Bool)

(assert (=> b!4107297 (= e!2548544 (and tp!1246924 tp!1246923))))

(assert (=> b!4105907 (= tp!1245307 e!2548544)))

(declare-fun b!4107296 () Bool)

(declare-fun tp!1246925 () Bool)

(assert (=> b!4107296 (= e!2548544 tp!1246925)))

(assert (= (and b!4105907 ((_ is ElementMatch!12085) (reg!12414 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107294))

(assert (= (and b!4105907 ((_ is Concat!19495) (reg!12414 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107295))

(assert (= (and b!4105907 ((_ is Star!12085) (reg!12414 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107296))

(assert (= (and b!4105907 ((_ is Union!12085) (reg!12414 (regOne!24682 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107297))

(declare-fun b!4107298 () Bool)

(declare-fun e!2548545 () Bool)

(assert (=> b!4107298 (= e!2548545 tp_is_empty!21137)))

(declare-fun b!4107299 () Bool)

(declare-fun tp!1246932 () Bool)

(declare-fun tp!1246931 () Bool)

(assert (=> b!4107299 (= e!2548545 (and tp!1246932 tp!1246931))))

(declare-fun b!4107301 () Bool)

(declare-fun tp!1246929 () Bool)

(declare-fun tp!1246928 () Bool)

(assert (=> b!4107301 (= e!2548545 (and tp!1246929 tp!1246928))))

(assert (=> b!4105860 (= tp!1245254 e!2548545)))

(declare-fun b!4107300 () Bool)

(declare-fun tp!1246930 () Bool)

(assert (=> b!4107300 (= e!2548545 tp!1246930)))

(assert (= (and b!4105860 ((_ is ElementMatch!12085) (regOne!24682 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4107298))

(assert (= (and b!4105860 ((_ is Concat!19495) (regOne!24682 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4107299))

(assert (= (and b!4105860 ((_ is Star!12085) (regOne!24682 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4107300))

(assert (= (and b!4105860 ((_ is Union!12085) (regOne!24682 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4107301))

(declare-fun b!4107302 () Bool)

(declare-fun e!2548546 () Bool)

(assert (=> b!4107302 (= e!2548546 tp_is_empty!21137)))

(declare-fun b!4107303 () Bool)

(declare-fun tp!1246937 () Bool)

(declare-fun tp!1246936 () Bool)

(assert (=> b!4107303 (= e!2548546 (and tp!1246937 tp!1246936))))

(declare-fun b!4107305 () Bool)

(declare-fun tp!1246934 () Bool)

(declare-fun tp!1246933 () Bool)

(assert (=> b!4107305 (= e!2548546 (and tp!1246934 tp!1246933))))

(assert (=> b!4105860 (= tp!1245253 e!2548546)))

(declare-fun b!4107304 () Bool)

(declare-fun tp!1246935 () Bool)

(assert (=> b!4107304 (= e!2548546 tp!1246935)))

(assert (= (and b!4105860 ((_ is ElementMatch!12085) (regTwo!24682 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4107302))

(assert (= (and b!4105860 ((_ is Concat!19495) (regTwo!24682 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4107303))

(assert (= (and b!4105860 ((_ is Star!12085) (regTwo!24682 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4107304))

(assert (= (and b!4105860 ((_ is Union!12085) (regTwo!24682 (reg!12414 (reg!12414 (regex!7180 rHead!24)))))) b!4107305))

(declare-fun b!4107306 () Bool)

(declare-fun e!2548547 () Bool)

(assert (=> b!4107306 (= e!2548547 tp_is_empty!21137)))

(declare-fun b!4107307 () Bool)

(declare-fun tp!1246942 () Bool)

(declare-fun tp!1246941 () Bool)

(assert (=> b!4107307 (= e!2548547 (and tp!1246942 tp!1246941))))

(declare-fun b!4107309 () Bool)

(declare-fun tp!1246939 () Bool)

(declare-fun tp!1246938 () Bool)

(assert (=> b!4107309 (= e!2548547 (and tp!1246939 tp!1246938))))

(assert (=> b!4105780 (= tp!1245159 e!2548547)))

(declare-fun b!4107308 () Bool)

(declare-fun tp!1246940 () Bool)

(assert (=> b!4107308 (= e!2548547 tp!1246940)))

(assert (= (and b!4105780 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107306))

(assert (= (and b!4105780 ((_ is Concat!19495) (regOne!24682 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107307))

(assert (= (and b!4105780 ((_ is Star!12085) (regOne!24682 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107308))

(assert (= (and b!4105780 ((_ is Union!12085) (regOne!24682 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107309))

(declare-fun b!4107310 () Bool)

(declare-fun e!2548548 () Bool)

(assert (=> b!4107310 (= e!2548548 tp_is_empty!21137)))

(declare-fun b!4107311 () Bool)

(declare-fun tp!1246947 () Bool)

(declare-fun tp!1246946 () Bool)

(assert (=> b!4107311 (= e!2548548 (and tp!1246947 tp!1246946))))

(declare-fun b!4107313 () Bool)

(declare-fun tp!1246944 () Bool)

(declare-fun tp!1246943 () Bool)

(assert (=> b!4107313 (= e!2548548 (and tp!1246944 tp!1246943))))

(assert (=> b!4105780 (= tp!1245158 e!2548548)))

(declare-fun b!4107312 () Bool)

(declare-fun tp!1246945 () Bool)

(assert (=> b!4107312 (= e!2548548 tp!1246945)))

(assert (= (and b!4105780 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107310))

(assert (= (and b!4105780 ((_ is Concat!19495) (regTwo!24682 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107311))

(assert (= (and b!4105780 ((_ is Star!12085) (regTwo!24682 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107312))

(assert (= (and b!4105780 ((_ is Union!12085) (regTwo!24682 (regOne!24682 (regOne!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107313))

(declare-fun b!4107314 () Bool)

(declare-fun e!2548549 () Bool)

(assert (=> b!4107314 (= e!2548549 tp_is_empty!21137)))

(declare-fun b!4107315 () Bool)

(declare-fun tp!1246952 () Bool)

(declare-fun tp!1246951 () Bool)

(assert (=> b!4107315 (= e!2548549 (and tp!1246952 tp!1246951))))

(declare-fun b!4107317 () Bool)

(declare-fun tp!1246949 () Bool)

(declare-fun tp!1246948 () Bool)

(assert (=> b!4107317 (= e!2548549 (and tp!1246949 tp!1246948))))

(assert (=> b!4105978 (= tp!1245394 e!2548549)))

(declare-fun b!4107316 () Bool)

(declare-fun tp!1246950 () Bool)

(assert (=> b!4107316 (= e!2548549 tp!1246950)))

(assert (= (and b!4105978 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107314))

(assert (= (and b!4105978 ((_ is Concat!19495) (regOne!24682 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107315))

(assert (= (and b!4105978 ((_ is Star!12085) (regOne!24682 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107316))

(assert (= (and b!4105978 ((_ is Union!12085) (regOne!24682 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107317))

(declare-fun b!4107318 () Bool)

(declare-fun e!2548550 () Bool)

(assert (=> b!4107318 (= e!2548550 tp_is_empty!21137)))

(declare-fun b!4107319 () Bool)

(declare-fun tp!1246957 () Bool)

(declare-fun tp!1246956 () Bool)

(assert (=> b!4107319 (= e!2548550 (and tp!1246957 tp!1246956))))

(declare-fun b!4107321 () Bool)

(declare-fun tp!1246954 () Bool)

(declare-fun tp!1246953 () Bool)

(assert (=> b!4107321 (= e!2548550 (and tp!1246954 tp!1246953))))

(assert (=> b!4105978 (= tp!1245393 e!2548550)))

(declare-fun b!4107320 () Bool)

(declare-fun tp!1246955 () Bool)

(assert (=> b!4107320 (= e!2548550 tp!1246955)))

(assert (= (and b!4105978 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107318))

(assert (= (and b!4105978 ((_ is Concat!19495) (regTwo!24682 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107319))

(assert (= (and b!4105978 ((_ is Star!12085) (regTwo!24682 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107320))

(assert (= (and b!4105978 ((_ is Union!12085) (regTwo!24682 (regOne!24682 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107321))

(declare-fun b!4107322 () Bool)

(declare-fun e!2548551 () Bool)

(assert (=> b!4107322 (= e!2548551 tp_is_empty!21137)))

(declare-fun b!4107323 () Bool)

(declare-fun tp!1246962 () Bool)

(declare-fun tp!1246961 () Bool)

(assert (=> b!4107323 (= e!2548551 (and tp!1246962 tp!1246961))))

(declare-fun b!4107325 () Bool)

(declare-fun tp!1246959 () Bool)

(declare-fun tp!1246958 () Bool)

(assert (=> b!4107325 (= e!2548551 (and tp!1246959 tp!1246958))))

(assert (=> b!4105882 (= tp!1245279 e!2548551)))

(declare-fun b!4107324 () Bool)

(declare-fun tp!1246960 () Bool)

(assert (=> b!4107324 (= e!2548551 tp!1246960)))

(assert (= (and b!4105882 ((_ is ElementMatch!12085) (regOne!24682 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107322))

(assert (= (and b!4105882 ((_ is Concat!19495) (regOne!24682 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107323))

(assert (= (and b!4105882 ((_ is Star!12085) (regOne!24682 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107324))

(assert (= (and b!4105882 ((_ is Union!12085) (regOne!24682 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107325))

(declare-fun b!4107326 () Bool)

(declare-fun e!2548552 () Bool)

(assert (=> b!4107326 (= e!2548552 tp_is_empty!21137)))

(declare-fun b!4107327 () Bool)

(declare-fun tp!1246967 () Bool)

(declare-fun tp!1246966 () Bool)

(assert (=> b!4107327 (= e!2548552 (and tp!1246967 tp!1246966))))

(declare-fun b!4107329 () Bool)

(declare-fun tp!1246964 () Bool)

(declare-fun tp!1246963 () Bool)

(assert (=> b!4107329 (= e!2548552 (and tp!1246964 tp!1246963))))

(assert (=> b!4105882 (= tp!1245278 e!2548552)))

(declare-fun b!4107328 () Bool)

(declare-fun tp!1246965 () Bool)

(assert (=> b!4107328 (= e!2548552 tp!1246965)))

(assert (= (and b!4105882 ((_ is ElementMatch!12085) (regTwo!24682 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107326))

(assert (= (and b!4105882 ((_ is Concat!19495) (regTwo!24682 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107327))

(assert (= (and b!4105882 ((_ is Star!12085) (regTwo!24682 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107328))

(assert (= (and b!4105882 ((_ is Union!12085) (regTwo!24682 (reg!12414 (regTwo!24683 (regex!7180 rHead!24)))))) b!4107329))

(declare-fun b!4107330 () Bool)

(declare-fun e!2548553 () Bool)

(assert (=> b!4107330 (= e!2548553 tp_is_empty!21137)))

(declare-fun b!4107331 () Bool)

(declare-fun tp!1246972 () Bool)

(declare-fun tp!1246971 () Bool)

(assert (=> b!4107331 (= e!2548553 (and tp!1246972 tp!1246971))))

(declare-fun b!4107333 () Bool)

(declare-fun tp!1246969 () Bool)

(declare-fun tp!1246968 () Bool)

(assert (=> b!4107333 (= e!2548553 (and tp!1246969 tp!1246968))))

(assert (=> b!4105798 (= tp!1245176 e!2548553)))

(declare-fun b!4107332 () Bool)

(declare-fun tp!1246970 () Bool)

(assert (=> b!4107332 (= e!2548553 tp!1246970)))

(assert (= (and b!4105798 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107330))

(assert (= (and b!4105798 ((_ is Concat!19495) (regOne!24683 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107331))

(assert (= (and b!4105798 ((_ is Star!12085) (regOne!24683 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107332))

(assert (= (and b!4105798 ((_ is Union!12085) (regOne!24683 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107333))

(declare-fun b!4107334 () Bool)

(declare-fun e!2548554 () Bool)

(assert (=> b!4107334 (= e!2548554 tp_is_empty!21137)))

(declare-fun b!4107335 () Bool)

(declare-fun tp!1246977 () Bool)

(declare-fun tp!1246976 () Bool)

(assert (=> b!4107335 (= e!2548554 (and tp!1246977 tp!1246976))))

(declare-fun b!4107337 () Bool)

(declare-fun tp!1246974 () Bool)

(declare-fun tp!1246973 () Bool)

(assert (=> b!4107337 (= e!2548554 (and tp!1246974 tp!1246973))))

(assert (=> b!4105798 (= tp!1245175 e!2548554)))

(declare-fun b!4107336 () Bool)

(declare-fun tp!1246975 () Bool)

(assert (=> b!4107336 (= e!2548554 tp!1246975)))

(assert (= (and b!4105798 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107334))

(assert (= (and b!4105798 ((_ is Concat!19495) (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107335))

(assert (= (and b!4105798 ((_ is Star!12085) (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107336))

(assert (= (and b!4105798 ((_ is Union!12085) (regTwo!24683 (regOne!24683 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107337))

(declare-fun b!4107338 () Bool)

(declare-fun e!2548555 () Bool)

(assert (=> b!4107338 (= e!2548555 tp_is_empty!21137)))

(declare-fun b!4107339 () Bool)

(declare-fun tp!1246982 () Bool)

(declare-fun tp!1246981 () Bool)

(assert (=> b!4107339 (= e!2548555 (and tp!1246982 tp!1246981))))

(declare-fun b!4107341 () Bool)

(declare-fun tp!1246979 () Bool)

(declare-fun tp!1246978 () Bool)

(assert (=> b!4107341 (= e!2548555 (and tp!1246979 tp!1246978))))

(assert (=> b!4105964 (= tp!1245376 e!2548555)))

(declare-fun b!4107340 () Bool)

(declare-fun tp!1246980 () Bool)

(assert (=> b!4107340 (= e!2548555 tp!1246980)))

(assert (= (and b!4105964 ((_ is ElementMatch!12085) (regOne!24683 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107338))

(assert (= (and b!4105964 ((_ is Concat!19495) (regOne!24683 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107339))

(assert (= (and b!4105964 ((_ is Star!12085) (regOne!24683 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107340))

(assert (= (and b!4105964 ((_ is Union!12085) (regOne!24683 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107341))

(declare-fun b!4107342 () Bool)

(declare-fun e!2548556 () Bool)

(assert (=> b!4107342 (= e!2548556 tp_is_empty!21137)))

(declare-fun b!4107343 () Bool)

(declare-fun tp!1246987 () Bool)

(declare-fun tp!1246986 () Bool)

(assert (=> b!4107343 (= e!2548556 (and tp!1246987 tp!1246986))))

(declare-fun b!4107345 () Bool)

(declare-fun tp!1246984 () Bool)

(declare-fun tp!1246983 () Bool)

(assert (=> b!4107345 (= e!2548556 (and tp!1246984 tp!1246983))))

(assert (=> b!4105964 (= tp!1245375 e!2548556)))

(declare-fun b!4107344 () Bool)

(declare-fun tp!1246985 () Bool)

(assert (=> b!4107344 (= e!2548556 tp!1246985)))

(assert (= (and b!4105964 ((_ is ElementMatch!12085) (regTwo!24683 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107342))

(assert (= (and b!4105964 ((_ is Concat!19495) (regTwo!24683 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107343))

(assert (= (and b!4105964 ((_ is Star!12085) (regTwo!24683 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107344))

(assert (= (and b!4105964 ((_ is Union!12085) (regTwo!24683 (reg!12414 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107345))

(declare-fun b!4107346 () Bool)

(declare-fun e!2548557 () Bool)

(assert (=> b!4107346 (= e!2548557 tp_is_empty!21137)))

(declare-fun b!4107347 () Bool)

(declare-fun tp!1246992 () Bool)

(declare-fun tp!1246991 () Bool)

(assert (=> b!4107347 (= e!2548557 (and tp!1246992 tp!1246991))))

(declare-fun b!4107349 () Bool)

(declare-fun tp!1246989 () Bool)

(declare-fun tp!1246988 () Bool)

(assert (=> b!4107349 (= e!2548557 (and tp!1246989 tp!1246988))))

(assert (=> b!4105789 (= tp!1245167 e!2548557)))

(declare-fun b!4107348 () Bool)

(declare-fun tp!1246990 () Bool)

(assert (=> b!4107348 (= e!2548557 tp!1246990)))

(assert (= (and b!4105789 ((_ is ElementMatch!12085) (reg!12414 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107346))

(assert (= (and b!4105789 ((_ is Concat!19495) (reg!12414 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107347))

(assert (= (and b!4105789 ((_ is Star!12085) (reg!12414 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107348))

(assert (= (and b!4105789 ((_ is Union!12085) (reg!12414 (regOne!24683 (regOne!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107349))

(declare-fun b!4107350 () Bool)

(declare-fun e!2548558 () Bool)

(assert (=> b!4107350 (= e!2548558 tp_is_empty!21137)))

(declare-fun b!4107351 () Bool)

(declare-fun tp!1246997 () Bool)

(declare-fun tp!1246996 () Bool)

(assert (=> b!4107351 (= e!2548558 (and tp!1246997 tp!1246996))))

(declare-fun b!4107353 () Bool)

(declare-fun tp!1246994 () Bool)

(declare-fun tp!1246993 () Bool)

(assert (=> b!4107353 (= e!2548558 (and tp!1246994 tp!1246993))))

(assert (=> b!4105814 (= tp!1245199 e!2548558)))

(declare-fun b!4107352 () Bool)

(declare-fun tp!1246995 () Bool)

(assert (=> b!4107352 (= e!2548558 tp!1246995)))

(assert (= (and b!4105814 ((_ is ElementMatch!12085) (regOne!24682 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107350))

(assert (= (and b!4105814 ((_ is Concat!19495) (regOne!24682 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107351))

(assert (= (and b!4105814 ((_ is Star!12085) (regOne!24682 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107352))

(assert (= (and b!4105814 ((_ is Union!12085) (regOne!24682 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107353))

(declare-fun b!4107354 () Bool)

(declare-fun e!2548559 () Bool)

(assert (=> b!4107354 (= e!2548559 tp_is_empty!21137)))

(declare-fun b!4107355 () Bool)

(declare-fun tp!1247002 () Bool)

(declare-fun tp!1247001 () Bool)

(assert (=> b!4107355 (= e!2548559 (and tp!1247002 tp!1247001))))

(declare-fun b!4107357 () Bool)

(declare-fun tp!1246999 () Bool)

(declare-fun tp!1246998 () Bool)

(assert (=> b!4107357 (= e!2548559 (and tp!1246999 tp!1246998))))

(assert (=> b!4105814 (= tp!1245198 e!2548559)))

(declare-fun b!4107356 () Bool)

(declare-fun tp!1247000 () Bool)

(assert (=> b!4107356 (= e!2548559 tp!1247000)))

(assert (= (and b!4105814 ((_ is ElementMatch!12085) (regTwo!24682 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107354))

(assert (= (and b!4105814 ((_ is Concat!19495) (regTwo!24682 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107355))

(assert (= (and b!4105814 ((_ is Star!12085) (regTwo!24682 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107356))

(assert (= (and b!4105814 ((_ is Union!12085) (regTwo!24682 (regTwo!24683 (regOne!24682 (regex!7180 rHead!24)))))) b!4107357))

(declare-fun b!4107358 () Bool)

(declare-fun e!2548560 () Bool)

(assert (=> b!4107358 (= e!2548560 tp_is_empty!21137)))

(declare-fun b!4107359 () Bool)

(declare-fun tp!1247007 () Bool)

(declare-fun tp!1247006 () Bool)

(assert (=> b!4107359 (= e!2548560 (and tp!1247007 tp!1247006))))

(declare-fun b!4107361 () Bool)

(declare-fun tp!1247004 () Bool)

(declare-fun tp!1247003 () Bool)

(assert (=> b!4107361 (= e!2548560 (and tp!1247004 tp!1247003))))

(assert (=> b!4105844 (= tp!1245231 e!2548560)))

(declare-fun b!4107360 () Bool)

(declare-fun tp!1247005 () Bool)

(assert (=> b!4107360 (= e!2548560 tp!1247005)))

(assert (= (and b!4105844 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107358))

(assert (= (and b!4105844 ((_ is Concat!19495) (regOne!24683 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107359))

(assert (= (and b!4105844 ((_ is Star!12085) (regOne!24683 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107360))

(assert (= (and b!4105844 ((_ is Union!12085) (regOne!24683 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107361))

(declare-fun b!4107362 () Bool)

(declare-fun e!2548561 () Bool)

(assert (=> b!4107362 (= e!2548561 tp_is_empty!21137)))

(declare-fun b!4107363 () Bool)

(declare-fun tp!1247012 () Bool)

(declare-fun tp!1247011 () Bool)

(assert (=> b!4107363 (= e!2548561 (and tp!1247012 tp!1247011))))

(declare-fun b!4107365 () Bool)

(declare-fun tp!1247009 () Bool)

(declare-fun tp!1247008 () Bool)

(assert (=> b!4107365 (= e!2548561 (and tp!1247009 tp!1247008))))

(assert (=> b!4105844 (= tp!1245230 e!2548561)))

(declare-fun b!4107364 () Bool)

(declare-fun tp!1247010 () Bool)

(assert (=> b!4107364 (= e!2548561 tp!1247010)))

(assert (= (and b!4105844 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107362))

(assert (= (and b!4105844 ((_ is Concat!19495) (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107363))

(assert (= (and b!4105844 ((_ is Star!12085) (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107364))

(assert (= (and b!4105844 ((_ is Union!12085) (regTwo!24683 (regOne!24682 (regex!7180 (h!49618 (t!339979 rTail!27))))))) b!4107365))

(declare-fun b!4107366 () Bool)

(declare-fun e!2548562 () Bool)

(assert (=> b!4107366 (= e!2548562 tp_is_empty!21137)))

(declare-fun b!4107367 () Bool)

(declare-fun tp!1247017 () Bool)

(declare-fun tp!1247016 () Bool)

(assert (=> b!4107367 (= e!2548562 (and tp!1247017 tp!1247016))))

(declare-fun b!4107369 () Bool)

(declare-fun tp!1247014 () Bool)

(declare-fun tp!1247013 () Bool)

(assert (=> b!4107369 (= e!2548562 (and tp!1247014 tp!1247013))))

(assert (=> b!4105948 (= tp!1245356 e!2548562)))

(declare-fun b!4107368 () Bool)

(declare-fun tp!1247015 () Bool)

(assert (=> b!4107368 (= e!2548562 tp!1247015)))

(assert (= (and b!4105948 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107366))

(assert (= (and b!4105948 ((_ is Concat!19495) (regOne!24683 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107367))

(assert (= (and b!4105948 ((_ is Star!12085) (regOne!24683 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107368))

(assert (= (and b!4105948 ((_ is Union!12085) (regOne!24683 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107369))

(declare-fun b!4107370 () Bool)

(declare-fun e!2548563 () Bool)

(assert (=> b!4107370 (= e!2548563 tp_is_empty!21137)))

(declare-fun b!4107371 () Bool)

(declare-fun tp!1247022 () Bool)

(declare-fun tp!1247021 () Bool)

(assert (=> b!4107371 (= e!2548563 (and tp!1247022 tp!1247021))))

(declare-fun b!4107373 () Bool)

(declare-fun tp!1247019 () Bool)

(declare-fun tp!1247018 () Bool)

(assert (=> b!4107373 (= e!2548563 (and tp!1247019 tp!1247018))))

(assert (=> b!4105948 (= tp!1245355 e!2548563)))

(declare-fun b!4107372 () Bool)

(declare-fun tp!1247020 () Bool)

(assert (=> b!4107372 (= e!2548563 tp!1247020)))

(assert (= (and b!4105948 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107370))

(assert (= (and b!4105948 ((_ is Concat!19495) (regTwo!24683 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107371))

(assert (= (and b!4105948 ((_ is Star!12085) (regTwo!24683 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107372))

(assert (= (and b!4105948 ((_ is Union!12085) (regTwo!24683 (regOne!24682 (reg!12414 (regex!7180 (h!49618 rTail!27))))))) b!4107373))

(declare-fun b!4107374 () Bool)

(declare-fun e!2548564 () Bool)

(assert (=> b!4107374 (= e!2548564 tp_is_empty!21137)))

(declare-fun b!4107375 () Bool)

(declare-fun tp!1247027 () Bool)

(declare-fun tp!1247026 () Bool)

(assert (=> b!4107375 (= e!2548564 (and tp!1247027 tp!1247026))))

(declare-fun b!4107377 () Bool)

(declare-fun tp!1247024 () Bool)

(declare-fun tp!1247023 () Bool)

(assert (=> b!4107377 (= e!2548564 (and tp!1247024 tp!1247023))))

(assert (=> b!4105771 (= tp!1245147 e!2548564)))

(declare-fun b!4107376 () Bool)

(declare-fun tp!1247025 () Bool)

(assert (=> b!4107376 (= e!2548564 tp!1247025)))

(assert (= (and b!4105771 ((_ is ElementMatch!12085) (regOne!24683 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4107374))

(assert (= (and b!4105771 ((_ is Concat!19495) (regOne!24683 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4107375))

(assert (= (and b!4105771 ((_ is Star!12085) (regOne!24683 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4107376))

(assert (= (and b!4105771 ((_ is Union!12085) (regOne!24683 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4107377))

(declare-fun b!4107378 () Bool)

(declare-fun e!2548565 () Bool)

(assert (=> b!4107378 (= e!2548565 tp_is_empty!21137)))

(declare-fun b!4107379 () Bool)

(declare-fun tp!1247032 () Bool)

(declare-fun tp!1247031 () Bool)

(assert (=> b!4107379 (= e!2548565 (and tp!1247032 tp!1247031))))

(declare-fun b!4107381 () Bool)

(declare-fun tp!1247029 () Bool)

(declare-fun tp!1247028 () Bool)

(assert (=> b!4107381 (= e!2548565 (and tp!1247029 tp!1247028))))

(assert (=> b!4105771 (= tp!1245146 e!2548565)))

(declare-fun b!4107380 () Bool)

(declare-fun tp!1247030 () Bool)

(assert (=> b!4107380 (= e!2548565 tp!1247030)))

(assert (= (and b!4105771 ((_ is ElementMatch!12085) (regTwo!24683 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4107378))

(assert (= (and b!4105771 ((_ is Concat!19495) (regTwo!24683 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4107379))

(assert (= (and b!4105771 ((_ is Star!12085) (regTwo!24683 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4107380))

(assert (= (and b!4105771 ((_ is Union!12085) (regTwo!24683 (regex!7180 (h!49618 (t!339979 (t!339979 rTail!27))))))) b!4107381))

(declare-fun b!4107382 () Bool)

(declare-fun e!2548566 () Bool)

(assert (=> b!4107382 (= e!2548566 tp_is_empty!21137)))

(declare-fun b!4107383 () Bool)

(declare-fun tp!1247037 () Bool)

(declare-fun tp!1247036 () Bool)

(assert (=> b!4107383 (= e!2548566 (and tp!1247037 tp!1247036))))

(declare-fun b!4107385 () Bool)

(declare-fun tp!1247034 () Bool)

(declare-fun tp!1247033 () Bool)

(assert (=> b!4107385 (= e!2548566 (and tp!1247034 tp!1247033))))

(assert (=> b!4105930 (= tp!1245339 e!2548566)))

(declare-fun b!4107384 () Bool)

(declare-fun tp!1247035 () Bool)

(assert (=> b!4107384 (= e!2548566 tp!1247035)))

(assert (= (and b!4105930 ((_ is ElementMatch!12085) (regOne!24682 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107382))

(assert (= (and b!4105930 ((_ is Concat!19495) (regOne!24682 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107383))

(assert (= (and b!4105930 ((_ is Star!12085) (regOne!24682 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107384))

(assert (= (and b!4105930 ((_ is Union!12085) (regOne!24682 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107385))

(declare-fun b!4107386 () Bool)

(declare-fun e!2548567 () Bool)

(assert (=> b!4107386 (= e!2548567 tp_is_empty!21137)))

(declare-fun b!4107387 () Bool)

(declare-fun tp!1247042 () Bool)

(declare-fun tp!1247041 () Bool)

(assert (=> b!4107387 (= e!2548567 (and tp!1247042 tp!1247041))))

(declare-fun b!4107389 () Bool)

(declare-fun tp!1247039 () Bool)

(declare-fun tp!1247038 () Bool)

(assert (=> b!4107389 (= e!2548567 (and tp!1247039 tp!1247038))))

(assert (=> b!4105930 (= tp!1245338 e!2548567)))

(declare-fun b!4107388 () Bool)

(declare-fun tp!1247040 () Bool)

(assert (=> b!4107388 (= e!2548567 tp!1247040)))

(assert (= (and b!4105930 ((_ is ElementMatch!12085) (regTwo!24682 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107386))

(assert (= (and b!4105930 ((_ is Concat!19495) (regTwo!24682 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107387))

(assert (= (and b!4105930 ((_ is Star!12085) (regTwo!24682 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107388))

(assert (= (and b!4105930 ((_ is Union!12085) (regTwo!24682 (reg!12414 (regTwo!24683 (regex!7180 (h!49618 rTail!27))))))) b!4107389))

(declare-fun b!4107390 () Bool)

(declare-fun e!2548568 () Bool)

(assert (=> b!4107390 (= e!2548568 tp_is_empty!21137)))

(declare-fun b!4107391 () Bool)

(declare-fun tp!1247047 () Bool)

(declare-fun tp!1247046 () Bool)

(assert (=> b!4107391 (= e!2548568 (and tp!1247047 tp!1247046))))

(declare-fun b!4107393 () Bool)

(declare-fun tp!1247044 () Bool)

(declare-fun tp!1247043 () Bool)

(assert (=> b!4107393 (= e!2548568 (and tp!1247044 tp!1247043))))

(assert (=> b!4105762 (= tp!1245138 e!2548568)))

(declare-fun b!4107392 () Bool)

(declare-fun tp!1247045 () Bool)

(assert (=> b!4107392 (= e!2548568 tp!1247045)))

(assert (= (and b!4105762 ((_ is ElementMatch!12085) (reg!12414 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4107390))

(assert (= (and b!4105762 ((_ is Concat!19495) (reg!12414 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4107391))

(assert (= (and b!4105762 ((_ is Star!12085) (reg!12414 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4107392))

(assert (= (and b!4105762 ((_ is Union!12085) (reg!12414 (regTwo!24682 (regOne!24683 (regex!7180 rHead!24)))))) b!4107393))

(declare-fun b!4107394 () Bool)

(declare-fun e!2548569 () Bool)

(assert (=> b!4107394 (= e!2548569 tp_is_empty!21137)))

(declare-fun b!4107395 () Bool)

(declare-fun tp!1247052 () Bool)

(declare-fun tp!1247051 () Bool)

(assert (=> b!4107395 (= e!2548569 (and tp!1247052 tp!1247051))))

(declare-fun b!4107397 () Bool)

(declare-fun tp!1247049 () Bool)

(declare-fun tp!1247048 () Bool)

(assert (=> b!4107397 (= e!2548569 (and tp!1247049 tp!1247048))))

(assert (=> b!4105939 (= tp!1245347 e!2548569)))

(declare-fun b!4107396 () Bool)

(declare-fun tp!1247050 () Bool)

(assert (=> b!4107396 (= e!2548569 tp!1247050)))

(assert (= (and b!4105939 ((_ is ElementMatch!12085) (reg!12414 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107394))

(assert (= (and b!4105939 ((_ is Concat!19495) (reg!12414 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107395))

(assert (= (and b!4105939 ((_ is Star!12085) (reg!12414 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107396))

(assert (= (and b!4105939 ((_ is Union!12085) (reg!12414 (regOne!24683 (regTwo!24682 (regex!7180 rHead!24)))))) b!4107397))

(declare-fun b!4107398 () Bool)

(declare-fun e!2548570 () Bool)

(assert (=> b!4107398 (= e!2548570 tp_is_empty!21137)))

(declare-fun b!4107399 () Bool)

(declare-fun tp!1247057 () Bool)

(declare-fun tp!1247056 () Bool)

(assert (=> b!4107399 (= e!2548570 (and tp!1247057 tp!1247056))))

(declare-fun b!4107401 () Bool)

(declare-fun tp!1247054 () Bool)

(declare-fun tp!1247053 () Bool)

(assert (=> b!4107401 (= e!2548570 (and tp!1247054 tp!1247053))))

(assert (=> b!4105777 (= tp!1245151 e!2548570)))

(declare-fun b!4107400 () Bool)

(declare-fun tp!1247055 () Bool)

(assert (=> b!4107400 (= e!2548570 tp!1247055)))

(assert (= (and b!4105777 ((_ is ElementMatch!12085) (regex!7180 (h!49618 (t!339979 (t!339979 (t!339979 rTail!27))))))) b!4107398))

(assert (= (and b!4105777 ((_ is Concat!19495) (regex!7180 (h!49618 (t!339979 (t!339979 (t!339979 rTail!27))))))) b!4107399))

(assert (= (and b!4105777 ((_ is Star!12085) (regex!7180 (h!49618 (t!339979 (t!339979 (t!339979 rTail!27))))))) b!4107400))

(assert (= (and b!4105777 ((_ is Union!12085) (regex!7180 (h!49618 (t!339979 (t!339979 (t!339979 rTail!27))))))) b!4107401))

(declare-fun b!4107402 () Bool)

(declare-fun e!2548571 () Bool)

(assert (=> b!4107402 (= e!2548571 tp_is_empty!21137)))

(declare-fun b!4107403 () Bool)

(declare-fun tp!1247062 () Bool)

(declare-fun tp!1247061 () Bool)

(assert (=> b!4107403 (= e!2548571 (and tp!1247062 tp!1247061))))

(declare-fun b!4107405 () Bool)

(declare-fun tp!1247059 () Bool)

(declare-fun tp!1247058 () Bool)

(assert (=> b!4107405 (= e!2548571 (and tp!1247059 tp!1247058))))

(assert (=> b!4105874 (= tp!1245266 e!2548571)))

(declare-fun b!4107404 () Bool)

(declare-fun tp!1247060 () Bool)

(assert (=> b!4107404 (= e!2548571 tp!1247060)))

(assert (= (and b!4105874 ((_ is ElementMatch!12085) (regOne!24683 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107402))

(assert (= (and b!4105874 ((_ is Concat!19495) (regOne!24683 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107403))

(assert (= (and b!4105874 ((_ is Star!12085) (regOne!24683 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107404))

(assert (= (and b!4105874 ((_ is Union!12085) (regOne!24683 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107405))

(declare-fun b!4107406 () Bool)

(declare-fun e!2548572 () Bool)

(assert (=> b!4107406 (= e!2548572 tp_is_empty!21137)))

(declare-fun b!4107407 () Bool)

(declare-fun tp!1247067 () Bool)

(declare-fun tp!1247066 () Bool)

(assert (=> b!4107407 (= e!2548572 (and tp!1247067 tp!1247066))))

(declare-fun b!4107409 () Bool)

(declare-fun tp!1247064 () Bool)

(declare-fun tp!1247063 () Bool)

(assert (=> b!4107409 (= e!2548572 (and tp!1247064 tp!1247063))))

(assert (=> b!4105874 (= tp!1245265 e!2548572)))

(declare-fun b!4107408 () Bool)

(declare-fun tp!1247065 () Bool)

(assert (=> b!4107408 (= e!2548572 tp!1247065)))

(assert (= (and b!4105874 ((_ is ElementMatch!12085) (regTwo!24683 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107406))

(assert (= (and b!4105874 ((_ is Concat!19495) (regTwo!24683 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107407))

(assert (= (and b!4105874 ((_ is Star!12085) (regTwo!24683 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107408))

(assert (= (and b!4105874 ((_ is Union!12085) (regTwo!24683 (regOne!24682 (reg!12414 (regex!7180 rHead!24)))))) b!4107409))

(declare-fun b!4107410 () Bool)

(declare-fun e!2548573 () Bool)

(assert (=> b!4107410 (= e!2548573 tp_is_empty!21137)))

(declare-fun b!4107411 () Bool)

(declare-fun tp!1247072 () Bool)

(declare-fun tp!1247071 () Bool)

(assert (=> b!4107411 (= e!2548573 (and tp!1247072 tp!1247071))))

(declare-fun b!4107413 () Bool)

(declare-fun tp!1247069 () Bool)

(declare-fun tp!1247068 () Bool)

(assert (=> b!4107413 (= e!2548573 (and tp!1247069 tp!1247068))))

(assert (=> b!4105828 (= tp!1245211 e!2548573)))

(declare-fun b!4107412 () Bool)

(declare-fun tp!1247070 () Bool)

(assert (=> b!4107412 (= e!2548573 tp!1247070)))

(assert (= (and b!4105828 ((_ is ElementMatch!12085) (regOne!24683 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4107410))

(assert (= (and b!4105828 ((_ is Concat!19495) (regOne!24683 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4107411))

(assert (= (and b!4105828 ((_ is Star!12085) (regOne!24683 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4107412))

(assert (= (and b!4105828 ((_ is Union!12085) (regOne!24683 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4107413))

(declare-fun b!4107414 () Bool)

(declare-fun e!2548574 () Bool)

(assert (=> b!4107414 (= e!2548574 tp_is_empty!21137)))

(declare-fun b!4107415 () Bool)

(declare-fun tp!1247077 () Bool)

(declare-fun tp!1247076 () Bool)

(assert (=> b!4107415 (= e!2548574 (and tp!1247077 tp!1247076))))

(declare-fun b!4107417 () Bool)

(declare-fun tp!1247074 () Bool)

(declare-fun tp!1247073 () Bool)

(assert (=> b!4107417 (= e!2548574 (and tp!1247074 tp!1247073))))

(assert (=> b!4105828 (= tp!1245210 e!2548574)))

(declare-fun b!4107416 () Bool)

(declare-fun tp!1247075 () Bool)

(assert (=> b!4107416 (= e!2548574 tp!1247075)))

(assert (= (and b!4105828 ((_ is ElementMatch!12085) (regTwo!24683 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4107414))

(assert (= (and b!4105828 ((_ is Concat!19495) (regTwo!24683 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4107415))

(assert (= (and b!4105828 ((_ is Star!12085) (regTwo!24683 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4107416))

(assert (= (and b!4105828 ((_ is Union!12085) (regTwo!24683 (reg!12414 (regOne!24682 (regex!7180 rHead!24)))))) b!4107417))

(declare-fun b!4107418 () Bool)

(declare-fun e!2548575 () Bool)

(assert (=> b!4107418 (= e!2548575 tp_is_empty!21137)))

(declare-fun b!4107419 () Bool)

(declare-fun tp!1247082 () Bool)

(declare-fun tp!1247081 () Bool)

(assert (=> b!4107419 (= e!2548575 (and tp!1247082 tp!1247081))))

(declare-fun b!4107421 () Bool)

(declare-fun tp!1247079 () Bool)

(declare-fun tp!1247078 () Bool)

(assert (=> b!4107421 (= e!2548575 (and tp!1247079 tp!1247078))))

(assert (=> b!4105896 (= tp!1245291 e!2548575)))

(declare-fun b!4107420 () Bool)

(declare-fun tp!1247080 () Bool)

(assert (=> b!4107420 (= e!2548575 tp!1247080)))

(assert (= (and b!4105896 ((_ is ElementMatch!12085) (regOne!24683 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107418))

(assert (= (and b!4105896 ((_ is Concat!19495) (regOne!24683 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107419))

(assert (= (and b!4105896 ((_ is Star!12085) (regOne!24683 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107420))

(assert (= (and b!4105896 ((_ is Union!12085) (regOne!24683 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107421))

(declare-fun b!4107422 () Bool)

(declare-fun e!2548576 () Bool)

(assert (=> b!4107422 (= e!2548576 tp_is_empty!21137)))

(declare-fun b!4107423 () Bool)

(declare-fun tp!1247087 () Bool)

(declare-fun tp!1247086 () Bool)

(assert (=> b!4107423 (= e!2548576 (and tp!1247087 tp!1247086))))

(declare-fun b!4107425 () Bool)

(declare-fun tp!1247084 () Bool)

(declare-fun tp!1247083 () Bool)

(assert (=> b!4107425 (= e!2548576 (and tp!1247084 tp!1247083))))

(assert (=> b!4105896 (= tp!1245290 e!2548576)))

(declare-fun b!4107424 () Bool)

(declare-fun tp!1247085 () Bool)

(assert (=> b!4107424 (= e!2548576 tp!1247085)))

(assert (= (and b!4105896 ((_ is ElementMatch!12085) (regTwo!24683 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107422))

(assert (= (and b!4105896 ((_ is Concat!19495) (regTwo!24683 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107423))

(assert (= (and b!4105896 ((_ is Star!12085) (regTwo!24683 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107424))

(assert (= (and b!4105896 ((_ is Union!12085) (regTwo!24683 (reg!12414 (regTwo!24682 (regex!7180 (h!49618 rTail!27))))))) b!4107425))

(declare-fun b!4107426 () Bool)

(declare-fun e!2548577 () Bool)

(assert (=> b!4107426 (= e!2548577 tp_is_empty!21137)))

(declare-fun b!4107427 () Bool)

(declare-fun tp!1247092 () Bool)

(declare-fun tp!1247091 () Bool)

(assert (=> b!4107427 (= e!2548577 (and tp!1247092 tp!1247091))))

(declare-fun b!4107429 () Bool)

(declare-fun tp!1247089 () Bool)

(declare-fun tp!1247088 () Bool)

(assert (=> b!4107429 (= e!2548577 (and tp!1247089 tp!1247088))))

(assert (=> b!4105834 (= tp!1245224 e!2548577)))

(declare-fun b!4107428 () Bool)

(declare-fun tp!1247090 () Bool)

(assert (=> b!4107428 (= e!2548577 tp!1247090)))

(assert (= (and b!4105834 ((_ is ElementMatch!12085) (regOne!24682 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107426))

(assert (= (and b!4105834 ((_ is Concat!19495) (regOne!24682 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107427))

(assert (= (and b!4105834 ((_ is Star!12085) (regOne!24682 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107428))

(assert (= (and b!4105834 ((_ is Union!12085) (regOne!24682 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107429))

(declare-fun b!4107430 () Bool)

(declare-fun e!2548578 () Bool)

(assert (=> b!4107430 (= e!2548578 tp_is_empty!21137)))

(declare-fun b!4107431 () Bool)

(declare-fun tp!1247097 () Bool)

(declare-fun tp!1247096 () Bool)

(assert (=> b!4107431 (= e!2548578 (and tp!1247097 tp!1247096))))

(declare-fun b!4107433 () Bool)

(declare-fun tp!1247094 () Bool)

(declare-fun tp!1247093 () Bool)

(assert (=> b!4107433 (= e!2548578 (and tp!1247094 tp!1247093))))

(assert (=> b!4105834 (= tp!1245223 e!2548578)))

(declare-fun b!4107432 () Bool)

(declare-fun tp!1247095 () Bool)

(assert (=> b!4107432 (= e!2548578 tp!1247095)))

(assert (= (and b!4105834 ((_ is ElementMatch!12085) (regTwo!24682 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107430))

(assert (= (and b!4105834 ((_ is Concat!19495) (regTwo!24682 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107431))

(assert (= (and b!4105834 ((_ is Star!12085) (regTwo!24682 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107432))

(assert (= (and b!4105834 ((_ is Union!12085) (regTwo!24682 (regOne!24683 (reg!12414 (regex!7180 rHead!24)))))) b!4107433))

(declare-fun b!4107434 () Bool)

(declare-fun e!2548579 () Bool)

(assert (=> b!4107434 (= e!2548579 tp_is_empty!21137)))

(declare-fun b!4107435 () Bool)

(declare-fun tp!1247102 () Bool)

(declare-fun tp!1247101 () Bool)

(assert (=> b!4107435 (= e!2548579 (and tp!1247102 tp!1247101))))

(declare-fun b!4107437 () Bool)

(declare-fun tp!1247099 () Bool)

(declare-fun tp!1247098 () Bool)

(assert (=> b!4107437 (= e!2548579 (and tp!1247099 tp!1247098))))

(assert (=> b!4105858 (= tp!1245246 e!2548579)))

(declare-fun b!4107436 () Bool)

(declare-fun tp!1247100 () Bool)

(assert (=> b!4107436 (= e!2548579 tp!1247100)))

(assert (= (and b!4105858 ((_ is ElementMatch!12085) (regOne!24683 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107434))

(assert (= (and b!4105858 ((_ is Concat!19495) (regOne!24683 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107435))

(assert (= (and b!4105858 ((_ is Star!12085) (regOne!24683 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107436))

(assert (= (and b!4105858 ((_ is Union!12085) (regOne!24683 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107437))

(declare-fun b!4107438 () Bool)

(declare-fun e!2548580 () Bool)

(assert (=> b!4107438 (= e!2548580 tp_is_empty!21137)))

(declare-fun b!4107439 () Bool)

(declare-fun tp!1247107 () Bool)

(declare-fun tp!1247106 () Bool)

(assert (=> b!4107439 (= e!2548580 (and tp!1247107 tp!1247106))))

(declare-fun b!4107441 () Bool)

(declare-fun tp!1247104 () Bool)

(declare-fun tp!1247103 () Bool)

(assert (=> b!4107441 (= e!2548580 (and tp!1247104 tp!1247103))))

(assert (=> b!4105858 (= tp!1245245 e!2548580)))

(declare-fun b!4107440 () Bool)

(declare-fun tp!1247105 () Bool)

(assert (=> b!4107440 (= e!2548580 tp!1247105)))

(assert (= (and b!4105858 ((_ is ElementMatch!12085) (regTwo!24683 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107438))

(assert (= (and b!4105858 ((_ is Concat!19495) (regTwo!24683 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107439))

(assert (= (and b!4105858 ((_ is Star!12085) (regTwo!24683 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107440))

(assert (= (and b!4105858 ((_ is Union!12085) (regTwo!24683 (regTwo!24682 (regOne!24682 (regex!7180 rHead!24)))))) b!4107441))

(declare-fun b_lambda!120583 () Bool)

(assert (= b_lambda!120579 (or d!1218727 b_lambda!120583)))

(declare-fun bs!594136 () Bool)

(declare-fun d!1218915 () Bool)

(assert (= bs!594136 (and d!1218915 d!1218727)))

(assert (=> bs!594136 (= (dynLambda!18908 lambda!128358 (h!49618 lt!1467577)) (ruleValid!3050 thiss!26455 (h!49618 lt!1467577)))))

(assert (=> bs!594136 m!4710665))

(assert (=> b!4106286 d!1218915))

(declare-fun b_lambda!120585 () Bool)

(assert (= b_lambda!120575 (or d!1218649 b_lambda!120585)))

(declare-fun bs!594137 () Bool)

(declare-fun d!1218917 () Bool)

(assert (= bs!594137 (and d!1218917 d!1218649)))

(assert (=> bs!594137 (= (dynLambda!18908 lambda!128337 (h!49618 (t!339979 lt!1467577))) (ruleValid!3050 thiss!26455 (h!49618 (t!339979 lt!1467577))))))

(assert (=> bs!594137 m!4710905))

(assert (=> b!4106258 d!1218917))

(declare-fun b_lambda!120587 () Bool)

(assert (= b_lambda!120577 (or d!1218665 b_lambda!120587)))

(declare-fun bs!594138 () Bool)

(declare-fun d!1218919 () Bool)

(assert (= bs!594138 (and d!1218919 d!1218665)))

(assert (=> bs!594138 (= (dynLambda!18908 lambda!128344 (h!49618 (t!339979 lt!1467580))) (ruleValid!3050 thiss!26455 (h!49618 (t!339979 lt!1467580))))))

(assert (=> bs!594138 m!4710899))

(assert (=> b!4106282 d!1218919))

(declare-fun b_lambda!120589 () Bool)

(assert (= b_lambda!120581 (or d!1218753 b_lambda!120589)))

(declare-fun bs!594139 () Bool)

(declare-fun d!1218921 () Bool)

(assert (= bs!594139 (and d!1218921 d!1218753)))

(assert (=> bs!594139 (= (dynLambda!18908 lambda!128361 (h!49618 lt!1467580)) (ruleValid!3050 thiss!26455 (h!49618 lt!1467580)))))

(assert (=> bs!594139 m!4710701))

(assert (=> b!4106303 d!1218921))

(check-sat (not b!4107123) (not b!4107287) (not b!4107021) (not b!4107012) (not b!4106755) (not b!4107408) (not b!4106337) (not b!4106973) (not b!4106637) (not b!4106449) (not b!4107085) (not b!4106456) (not b!4107240) (not b!4107305) (not b!4106644) (not b!4106621) (not b!4106494) (not b!4107385) (not b!4107119) (not b!4107169) (not b!4106705) (not b!4107200) (not b!4106848) (not b!4107376) (not b!4106524) (not b!4107115) (not b!4106793) (not b!4107097) (not b!4107212) (not b!4106972) (not b!4107368) (not b!4106843) (not b!4106968) (not b!4106576) (not b!4107325) (not b!4107160) (not b!4106344) (not b!4106288) (not b!4106402) (not b!4106627) (not b!4107051) (not b!4106803) (not b!4106869) (not b!4107139) (not b!4106356) (not b!4106259) (not b!4107044) (not b!4106508) (not b!4107397) (not b!4107309) (not b!4106907) b_and!317153 (not b!4106983) (not b!4107223) (not b!4106307) (not d!1218899) (not b!4106764) (not b!4106867) (not b!4106573) (not b!4106947) (not b!4107253) (not b!4107081) (not b!4106992) (not b!4106321) (not b!4107381) (not b!4106535) (not b!4107164) (not b!4107041) (not b!4107053) (not b!4106632) (not b!4106480) (not b!4106607) (not b!4107268) (not b_lambda!120587) (not b!4106809) (not b!4107389) (not b!4106559) (not b!4106336) (not b!4106281) (not b!4107269) (not b!4106779) (not b!4106789) (not b!4106737) (not b!4107028) (not d!1218893) (not b!4106604) b_and!317151 (not b!4106421) (not b!4107109) (not b!4106747) (not b!4106442) (not b!4106636) (not b!4106446) (not b!4106920) (not b!4106823) (not b!4106687) (not b!4106297) (not b!4107075) (not b!4107229) (not b!4106285) (not b!4107068) (not b!4107359) (not b!4107244) (not bs!594136) (not b!4106369) (not b!4106841) (not b!4106424) (not b!4107327) (not b!4106406) (not bs!594139) (not b!4106266) (not b!4106296) (not b!4107344) (not b!4107024) (not b!4107295) (not b!4106410) (not b!4106608) (not b!4106761) (not b!4106851) (not b!4106792) (not b!4106959) (not b!4107183) (not b!4106999) (not b!4106857) (not b!4107213) (not b!4106310) (not b!4107129) (not b!4106785) (not b!4107215) (not b!4106873) (not b!4106317) (not b!4106326) (not b!4106883) (not b!4106840) (not b!4106579) (not b!4106863) (not b!4106413) (not b!4106648) (not b!4106996) (not b!4107275) (not b!4106540) (not b!4107257) (not b!4106325) (not b!4107293) (not b!4106560) (not b!4106389) (not b!4107031) (not b!4106409) (not b!4106541) (not b!4107335) (not b!4106699) (not b!4106360) (not b!4107345) (not b!4106428) (not b!4106482) (not b!4106341) (not b!4107352) (not b!4107027) b_and!317121 (not b!4106815) (not b!4107247) (not b!4106813) (not b!4106342) (not b!4107284) (not b!4107120) (not b!4106960) (not b!4106753) (not b!4106304) (not b!4107387) (not b!4107193) (not b!4106775) (not b!4106521) (not b!4107092) (not b!4106979) (not d!1218845) tp_is_empty!21137 (not b!4107232) (not b!4107168) (not b!4106380) (not b!4106396) (not b!4106875) (not b!4107155) (not b!4106496) (not d!1218877) (not b!4106639) (not b!4106302) (not b!4106651) (not b!4106971) (not b!4107117) (not b!4107203) (not b!4107064) (not b!4106829) (not b!4106628) (not b!4106377) (not b!4106617) (not b!4106868) (not b!4106358) (not b!4106695) (not b!4106819) (not b!4106667) (not b!4107331) (not b_lambda!120585) (not b!4106561) (not b!4107033) (not b!4107237) (not b!4107433) (not b!4106833) (not b!4107103) (not b!4106581) (not b!4106290) (not b!4106584) (not b!4106903) (not b!4106522) (not b!4107172) (not b!4107424) (not b!4107337) (not b!4107016) (not b!4107371) (not b!4107124) (not b_next!116041) (not b!4107260) (not b!4106470) (not b!4106759) (not b!4107176) (not b!4107355) (not d!1218837) (not b!4107311) (not b!4106909) (not b!4107321) (not b!4106893) (not b!4107300) (not b!4106951) (not b!4106935) (not b!4107256) (not b!4106749) (not b!4106771) (not b!4106751) (not b!4106397) (not b!4106388) (not b!4106324) (not b_next!116011) (not b!4106927) (not b!4106532) (not b!4106373) (not b!4106975) (not b!4106681) (not b!4106715) (not b!4106501) (not b!4106533) (not b!4107079) (not d!1218875) (not b!4106900) (not b!4106527) (not b!4106477) (not b!4107225) (not b!4106733) (not b!4107089) (not b!4107425) (not b!4106414) (not b!4107073) (not b!4106539) (not b!4106500) (not b!4106366) b_and!317131 (not b!4106949) (not b!4107063) (not b!4107367) (not b!4107143) (not b!4106932) (not b!4106551) (not b!4107091) (not b!4106656) (not b!4106888) (not b!4107008) (not b!4106295) (not b!4107144) (not b!4107231) (not b!4107405) (not b!4107048) b_and!317119 (not b!4106739) (not b!4107429) (not b!4106777) (not b!4107099) (not b!4107297) b_and!317133 (not b!4106472) (not b!4106740) (not b!4106543) (not b!4106596) (not b!4106438) (not b!4106847) (not b!4106795) (not b!4107217) (not b!4107259) (not b!4107065) (not b!4107308) (not b!4106765) (not b!4107133) (not b!4106529) (not b!4106683) (not b!4106896) (not b!4106289) (not d!1218867) (not b!4106333) (not b!4106837) (not b!4106692) (not b!4107121) (not b!4106700) (not b!4106964) (not b!4106805) (not b!4107437) (not b!4106780) (not b!4107204) (not b!4106784) (not b!4106928) (not b!4106350) (not b!4107343) (not b_next!116021) (not b!4106468) (not b!4106616) (not b!4107013) (not b!4106665) (not b!4106731) (not b!4107224) (not b!4107167) (not b!4106647) (not b!4106269) (not b!4106991) (not b!4106352) (not b!4106924) (not b!4106849) (not b!4107148) (not b!4106620) (not b!4106660) (not b!4107137) (not b!4106316) (not b!4107035) (not b!4107039) (not b!4107233) (not b!4107384) (not b!4106923) (not d!1218843) (not b!4106322) (not b!4107364) (not b!4106462) (not b!4106300) (not b!4107036) (not b!4106787) (not b!4106845) (not b!4106887) (not b!4106478) (not b!4106353) (not b!4106394) (not b!4106422) (not b!4106346) (not b!4106756) (not b!4106357) (not b!4107273) (not b!4106362) (not b!4106669) (not b!4106716) (not b!4107289) (not b!4107132) (not b!4107292) (not b!4107113) (not b!4106563) (not b!4107347) (not b!4106426) (not b!4106292) (not b!4106712) (not b!4107285) (not b!4107388) (not b!4106382) (not b!4107037) (not b!4107181) (not b!4107077) (not b!4107272) (not b!4106348) (not b!4107015) (not b_lambda!120563) (not b!4107180) (not b!4106385) (not b!4107196) (not b!4106940) (not b!4106623) (not b!4106680) (not b!4106952) (not b!4107153) (not b!4106856) (not b!4107357) (not b!4107415) (not b!4106732) (not b!4106820) (not b!4106735) (not b!4106721) (not b!4107192) (not b!4106769) (not b!4106836) (not b!4107317) (not b!4106575) (not b!4106717) (not b!4106808) (not b!4106466) (not b!4107400) (not b!4106953) (not d!1218881) (not b!4106772) (not b!4107105) (not b!4106859) (not b!4106741) (not b!4107179) (not b!4106720) (not bs!594137) (not b!4107435) (not b!4107419) (not b!4106448) (not b!4107025) (not b!4106510) (not d!1218849) (not b!4106585) (not b!4106611) (not b!4106408) (not b!4107207) (not b!4107288) (not b!4107083) (not b!4106615) (not b!4107313) (not b!4107001) (not b!4106827) (not b!4106291) (not b!4107072) (not b!4107328) (not b!4106879) (not b!4106283) (not b!4106931) (not b!4106600) (not b!4106889) (not b!4106308) (not b!4106334) (not b!4106605) (not b!4106613) (not b!4107299) (not b!4106723) (not b!4106502) (not b!4106676) (not b!4106796) (not b!4107096) (not b!4106913) (not b!4106708) (not b!4107140) (not b!4106545) (not b!4106287) (not b!4107235) (not b!4106925) (not b!4107228) (not b!4107111) (not b!4106788) (not b!4107409) (not b!4107029) (not b!4107020) (not b!4107061) (not b_next!116015) (not b!4106464) (not b!4106518) (not b!4106725) (not b!4106760) (not b!4106504) (not b!4106664) (not b!4106752) b_and!317143 (not b!4106603) (not b_next!116033) (not b!4107049) (not b!4107416) (not b!4107136) (not b!4107271) (not b!4107372) (not b!4106948) (not b!4107003) (not b!4107315) (not b!4106679) (not b!4106520) (not b!4106531) (not b!4107252) (not b!4106853) (not b!4106498) (not b!4106612) (not b!4106376) (not b!4107152) (not b!4107107) (not b!4106816) (not b!4107439) (not b!4107019) (not b!4106433) (not b!4106589) (not b!4106328) (not b!4106549) (not b!4107296) (not b!4107360) (not b!4107145) (not b!4106724) (not b!4106663) (not b!4106441) (not b!4106707) (not b!4106661) (not b!4106939) (not b!4106509) (not b!4107080) (not b!4106704) (not b!4106895) (not b!4106936) (not b!4106569) (not b!4106458) (not b!4107116) (not b!4106469) (not b!4106384) (not b!4106330) (not b!4107045) (not b!4106365) (not b!4106828) (not b!4107339) (not b!4106933) (not b!4107395) (not b!4107175) (not b!4106430) (not d!1218907) (not b!4107380) (not b!4106963) (not b!4106776) (not b!4106593) (not b!4106278) (not b!4107211) (not b!4106320) (not bs!594138) (not b!4106484) (not b!4106649) (not b!4107263) (not b!4106757) (not b!4106641) (not b!4106969) (not b!4106580) (not b!4107043) (not b!4106985) (not b!4106571) (not b!4107261) (not b!4107047) (not b!4107420) (not b!4106880) (not b!4107324) (not b!4107349) (not b!4107127) (not b!4107156) (not b!4107005) (not b!4107413) (not b!4107251) (not b!4106703) (not b!4106523) (not b!4107265) (not b!4106434) (not b!4106512) (not b!4106672) (not b!4106911) (not b!4107067) (not b!4107173) (not b!4107059) (not b!4107151) (not b!4106871) (not b_next!116031) (not b!4106437) (not d!1218903) (not b!4106904) (not b!4106404) (not b!4106821) (not b!4107316) (not b!4106916) (not b!4107241) (not b!4106977) (not b!4106807) (not b!4107332) (not b!4106577) (not b!4106976) (not b!4107185) (not b!4107412) (not b!4107312) (not b!4106988) (not b!4106912) (not b!4107375) (not b!4106677) (not b!4107283) (not b!4106897) (not b!4106452) (not b!4106709) (not b!4107163) (not b!4106488) (not b!4106727) (not b!4106908) (not b_next!116013) (not b!4107100) (not b!4107427) (not b!4107205) (not b!4107055) (not b!4106844) (not b!4107040) (not b!4106763) (not b!4107304) (not b!4106401) (not b!4107201) (not b!4107363) (not b!4106493) (not b!4106293) (not b!4107249) (not b!4107341) (not b!4106643) (not b!4107087) (not b!4107216) (not b!4106748) (not b!4106506) (not b!4106864) (not b!4106329) (not b!4106619) (not b!4106537) (not b!4106505) (not b!4106697) (not b!4106361) (not b!4106773) b_and!317145 (not b!4107221) (not b!4106872) (not b!4106800) (not b!4107393) b_and!317141 (not b!4106372) (not b!4107441) (not b!4107108) (not b!4107052) (not b!4107011) (not d!1218855) (not b!4107407) (not b!4106659) (not b!4107004) (not b!4106564) (not b!4107323) (not b!4106812) (not b!4107095) (not b!4106713) (not b!4107112) (not b!4107411) (not b!4106997) (not b!4107392) (not b!4106440) (not b!4107391) (not b!4106684) (not b!4106653) (not b!4106736) (not b!4106591) (not b!4106767) (not b!4107423) (not b!4106791) (not b!4107171) (not b!4106944) (not b!4106884) (not b!4106745) (not b!4106374) (not b!4107125) b_and!317123 (not b!4106675) (not b!4107404) (not b!4107379) (not b!4107188) (not b!4106588) (not b!4106899) b_and!317125 (not b!4106436) (not b!4106881) (not b!4107267) (not b!4107264) (not b!4106393) (not b!4107060) (not b!4106565) (not b!4107131) (not b!4106492) (not b!4106453) (not b!4107255) (not b!4106460) (not b!4106306) (not b!4106956) (not b!4106465) (not b!4107195) (not b!4106299) (not b!4107009) (not b!4106381) (not b!4106865) (not b!4106987) (not b!4107365) (not b!4106476) (not b!4106481) (not b!4107032) (not b!4106390) (not b!4107348) (not b!4106668) (not b!4106685) (not b!4106370) (not b!4106831) (not b!4106516) (not b!4107057) (not d!1218863) (not b!4106277) (not b!4107421) (not b!4106405) (not b!4106984) (not b!4106444) (not b!4106696) (not b!4106557) (not b!4106572) (not b!4106701) (not b!4106454) (not b!4106852) (not b_lambda!120583) (not b!4106517) (not b!4106417) (not b!4106567) (not b!4107436) (not b!4106860) (not b!4107093) (not b!4106957) (not b!4106835) (not b!4106783) (not b!4106420) (not b!4106314) (not b!4106744) (not b!4107147) (not b!4106917) (not b_next!116029) (not b!4107248) (not b!4106318) (not b!4107187) (not b!4106655) (not b!4106386) (not b!4106587) (not b!4107000) (not b!4106980) (not b!4106768) (not b!4107356) (not b!4106839) (not b!4107369) (not b!4106486) (not b!4106364) (not b!4107440) (not b!4107291) (not b!4106945) (not b!4106548) (not b!4107417) (not b!4106547) (not b!4106432) (not b!4107377) (not b!4107165) (not b!4107101) (not b!4106671) (not b!4106905) (not b!4107191) (not b!4106693) (not b!4107319) (not b!4106781) (not b!4107220) (not b!4106645) (not b!4107276) (not b!4107209) (not b!4106981) (not b!4106625) (not b!4107383) (not b!4106489) (not b!4107279) (not b!4106801) (not b!4106416) (not b!4106825) (not b!4106919) (not b!4106457) (not b!4107243) (not b!4106485) (not b!4107149) (not b!4106349) (not b!4106497) (not b!4107336) (not b!4107399) (not b!4106400) (not b!4107177) (not b!4106583) (not b!4106597) (not b!4106855) (not b!4106425) (not b!4106635) (not b!4107432) (not b!4106993) (not b!4106555) (not b!4107307) (not b!4106901) (not b!4106592) (not b!4106474) (not b!4106824) (not b!4107403) (not b!4106368) (not b!4106536) (not b!4107333) (not b!4107184) (not b!4106797) (not b!4107219) (not b!4106891) (not b!4107104) (not b!4106711) (not b!4106799) (not b!4107353) b_and!317139 (not b!4107159) (not b!4107280) (not b!4106601) (not b!4106473) (not b!4107128) (not b!4106892) (not b!4106943) (not b!4106599) (not b!4106861) (not b!4106989) (not b!4107340) (not b!4107161) (not b!4106729) (not b!4106332) (not b!4106652) (not b!4107396) (not b!4107141) (not d!1218853) (not b!4107373) (not b!4106279) (not b!4106528) (not b_next!116043) (not b!4107208) (not b!4106885) (not b!4106412) (not b!4106719) (not b!4106955) (not b_lambda!120565) (not b!4106965) (not b!4107135) (not b!4106354) (not b!4107007) (not b!4107189) (not b!4106877) (not b!4106811) (not b!4106609) (not d!1218897) (not b!4106832) (not b!4107069) (not b!4106624) (not b_next!116009) (not b_next!116023) (not b!4107281) (not b!4106514) (not b!4106255) (not b!4106941) (not b!4106967) (not b!4106257) (not b!4106915) (not b!4106876) (not b!4106544) (not b!4107056) (not b!4106631) (not b!4107227) (not b!4106817) (not b!4106921) (not b!4107023) (not b!4107351) (not b!4107199) (not b!4106743) (not b!4106804) (not b!4106429) (not b!4107401) (not b!4106657) (not b_lambda!120589) (not b!4106398) (not b!4106418) (not b!4106309) (not b!4106673) (not b!4106629) (not b!4106264) (not b!4106688) (not b!4106378) (not b!4106728) (not b!4106568) (not b!4106513) (not b!4106461) (not b!4107197) (not b!4107320) (not b!4106995) (not b!4107428) (not b!4106553) (not b!4107076) (not b!4106633) (not b!4107245) (not b!4107017) (not b!4107236) (not b!4106937) (not b!4106445) (not b!4106556) (not b!4106490) (not b!4106313) (not b!4106640) (not b!4106595) (not b!4106552) (not b!4106345) (not b!4106961) (not b!4107157) (not b!4107361) (not b!4107329) (not d!1218889) (not b!4107277) (not b!4106691) (not b!4106689) (not b!4106340) (not b!4107084) (not b!4106929) (not b!4106338) (not b!4106450) (not b!4106392) (not b!4107071) (not b!4107301) (not b!4107303) (not b_next!116035) (not b!4106271) (not b!4107431) (not b!4107239) (not b!4107088))
(check-sat b_and!317153 b_and!317151 b_and!317121 (not b_next!116041) (not b_next!116021) (not b_next!116031) (not b_next!116013) b_and!317123 b_and!317125 (not b_next!116029) b_and!317139 (not b_next!116043) (not b_next!116035) (not b_next!116011) b_and!317131 b_and!317119 b_and!317133 (not b_next!116033) (not b_next!116015) b_and!317143 b_and!317145 b_and!317141 (not b_next!116009) (not b_next!116023))
