; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!747434 () Bool)

(assert start!747434)

(declare-fun b!7914279 () Bool)

(declare-fun b_free!135259 () Bool)

(declare-fun b_next!136049 () Bool)

(assert (=> b!7914279 (= b_free!135259 (not b_next!136049))))

(declare-fun tp!2357097 () Bool)

(declare-fun b_and!353667 () Bool)

(assert (=> b!7914279 (= tp!2357097 b_and!353667)))

(declare-fun b_free!135261 () Bool)

(declare-fun b_next!136051 () Bool)

(assert (=> b!7914279 (= b_free!135261 (not b_next!136051))))

(declare-fun tp!2357098 () Bool)

(declare-fun b_and!353669 () Bool)

(assert (=> b!7914279 (= tp!2357098 b_and!353669)))

(declare-fun b!7914284 () Bool)

(declare-fun e!4671738 () Bool)

(assert (=> b!7914284 (= e!4671738 true)))

(assert (=> start!747434 e!4671738))

(assert (= start!747434 b!7914284))

(declare-fun order!29973 () Int)

(declare-fun order!29975 () Int)

(declare-fun lambda!472620 () Int)

(declare-datatypes ((List!74519 0))(
  ( (Nil!74395) (Cons!74395 (h!80843 (_ BitVec 16)) (t!389990 List!74519)) )
))
(declare-datatypes ((TokenValue!8995 0))(
  ( (FloatLiteralValue!17990 (text!63410 List!74519)) (TokenValueExt!8994 (__x!35277 Int)) (Broken!44975 (value!289302 List!74519)) (Object!9118) (End!8995) (Def!8995) (Underscore!8995) (Match!8995) (Else!8995) (Error!8995) (Case!8995) (If!8995) (Extends!8995) (Abstract!8995) (Class!8995) (Val!8995) (DelimiterValue!17990 (del!9055 List!74519)) (KeywordValue!9001 (value!289303 List!74519)) (CommentValue!17990 (value!289304 List!74519)) (WhitespaceValue!17990 (value!289305 List!74519)) (IndentationValue!8995 (value!289306 List!74519)) (String!83398) (Int32!8995) (Broken!44976 (value!289307 List!74519)) (Boolean!8996) (Unit!169511) (OperatorValue!8998 (op!9055 List!74519)) (IdentifierValue!17990 (value!289308 List!74519)) (IdentifierValue!17991 (value!289309 List!74519)) (WhitespaceValue!17991 (value!289310 List!74519)) (True!17990) (False!17990) (Broken!44977 (value!289311 List!74519)) (Broken!44978 (value!289312 List!74519)) (True!17991) (RightBrace!8995) (RightBracket!8995) (Colon!8995) (Null!8995) (Comma!8995) (LeftBracket!8995) (False!17991) (LeftBrace!8995) (ImaginaryLiteralValue!8995 (text!63411 List!74519)) (StringLiteralValue!26985 (value!289313 List!74519)) (EOFValue!8995 (value!289314 List!74519)) (IdentValue!8995 (value!289315 List!74519)) (DelimiterValue!17991 (value!289316 List!74519)) (DedentValue!8995 (value!289317 List!74519)) (NewLineValue!8995 (value!289318 List!74519)) (IntegerValue!26985 (value!289319 (_ BitVec 32)) (text!63412 List!74519)) (IntegerValue!26986 (value!289320 Int) (text!63413 List!74519)) (Times!8995) (Or!8995) (Equal!8995) (Minus!8995) (Broken!44979 (value!289321 List!74519)) (And!8995) (Div!8995) (LessEqual!8995) (Mod!8995) (Concat!30377) (Not!8995) (Plus!8995) (SpaceValue!8995 (value!289322 List!74519)) (IntegerValue!26987 (value!289323 Int) (text!63414 List!74519)) (StringLiteralValue!26986 (text!63415 List!74519)) (FloatLiteralValue!17991 (text!63416 List!74519)) (BytesLiteralValue!8995 (value!289324 List!74519)) (CommentValue!17991 (value!289325 List!74519)) (StringLiteralValue!26987 (value!289326 List!74519)) (ErrorTokenValue!8995 (msg!9056 List!74519)) )
))
(declare-datatypes ((C!43094 0))(
  ( (C!43095 (val!32011 Int)) )
))
(declare-datatypes ((List!74520 0))(
  ( (Nil!74396) (Cons!74396 (h!80844 C!43094) (t!389991 List!74520)) )
))
(declare-datatypes ((IArray!31767 0))(
  ( (IArray!31768 (innerList!15941 List!74520)) )
))
(declare-datatypes ((Conc!15853 0))(
  ( (Node!15853 (left!56794 Conc!15853) (right!57124 Conc!15853) (csize!31936 Int) (cheight!16064 Int)) (Leaf!30161 (xs!19235 IArray!31767) (csize!31937 Int)) (Empty!15853) )
))
(declare-datatypes ((BalanceConc!30824 0))(
  ( (BalanceConc!30825 (c!1452171 Conc!15853)) )
))
(declare-datatypes ((TokenValueInjection!17298 0))(
  ( (TokenValueInjection!17299 (toValue!11744 Int) (toChars!11603 Int)) )
))
(declare-fun thiss!6959 () TokenValueInjection!17298)

(declare-fun dynLambda!30203 (Int Int) Int)

(declare-fun dynLambda!30204 (Int Int) Int)

(assert (=> b!7914284 (< (dynLambda!30203 order!29973 (toValue!11744 thiss!6959)) (dynLambda!30204 order!29975 lambda!472620))))

(declare-fun order!29977 () Int)

(declare-fun dynLambda!30205 (Int Int) Int)

(assert (=> b!7914284 (< (dynLambda!30205 order!29977 (toChars!11603 thiss!6959)) (dynLambda!30204 order!29975 lambda!472620))))

(declare-fun Forall!1851 (Int) Bool)

(assert (=> start!747434 (not (Forall!1851 lambda!472620))))

(declare-fun e!4671735 () Bool)

(declare-fun inv!95490 (TokenValueInjection!17298) Bool)

(assert (=> start!747434 (and (inv!95490 thiss!6959) e!4671735)))

(assert (=> b!7914279 (= e!4671735 (and tp!2357097 tp!2357098))))

(assert (= start!747434 b!7914279))

(declare-fun m!8288024 () Bool)

(assert (=> start!747434 m!8288024))

(declare-fun m!8288026 () Bool)

(assert (=> start!747434 m!8288026))

(push 1)

(assert (not b_next!136051))

(assert b_and!353669)

(assert b_and!353667)

(assert (not start!747434))

(assert (not b_next!136049))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353667)

(assert b_and!353669)

(assert (not b_next!136051))

(assert (not b_next!136049))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2361248 () Bool)

(declare-fun choose!59782 (Int) Bool)

(assert (=> d!2361248 (= (Forall!1851 lambda!472620) (choose!59782 lambda!472620))))

(declare-fun bs!1968404 () Bool)

(assert (= bs!1968404 d!2361248))

(declare-fun m!8288032 () Bool)

(assert (=> bs!1968404 m!8288032))

(assert (=> start!747434 d!2361248))

(declare-fun d!2361250 () Bool)

(declare-fun res!3141166 () Bool)

(declare-fun e!4671747 () Bool)

(assert (=> d!2361250 (=> (not res!3141166) (not e!4671747))))

(declare-fun semiInverseModEq!3849 (Int Int) Bool)

(assert (=> d!2361250 (= res!3141166 (semiInverseModEq!3849 (toChars!11603 thiss!6959) (toValue!11744 thiss!6959)))))

(assert (=> d!2361250 (= (inv!95490 thiss!6959) e!4671747)))

(declare-fun b!7914295 () Bool)

(declare-fun equivClasses!3664 (Int Int) Bool)

(assert (=> b!7914295 (= e!4671747 (equivClasses!3664 (toChars!11603 thiss!6959) (toValue!11744 thiss!6959)))))

(assert (= (and d!2361250 res!3141166) b!7914295))

(declare-fun m!8288034 () Bool)

(assert (=> d!2361250 m!8288034))

(declare-fun m!8288036 () Bool)

(assert (=> b!7914295 m!8288036))

(assert (=> start!747434 d!2361250))

(push 1)

(assert (not b_next!136051))

(assert (not b!7914295))

(assert (not d!2361250))

(assert b_and!353669)

(assert b_and!353667)

(assert (not b_next!136049))

(assert (not d!2361248))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353667)

(assert b_and!353669)

(assert (not b_next!136051))

(assert (not b_next!136049))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1968405 () Bool)

(declare-fun d!2361252 () Bool)

(assert (= bs!1968405 (and d!2361252 start!747434)))

(declare-fun lambda!472626 () Int)

(assert (=> bs!1968405 (= lambda!472626 lambda!472620)))

(assert (=> d!2361252 true))

(assert (=> d!2361252 (< (dynLambda!30205 order!29977 (toChars!11603 thiss!6959)) (dynLambda!30204 order!29975 lambda!472626))))

(assert (=> d!2361252 true))

(assert (=> d!2361252 (< (dynLambda!30203 order!29973 (toValue!11744 thiss!6959)) (dynLambda!30204 order!29975 lambda!472626))))

(assert (=> d!2361252 (= (semiInverseModEq!3849 (toChars!11603 thiss!6959) (toValue!11744 thiss!6959)) (Forall!1851 lambda!472626))))

(declare-fun bs!1968406 () Bool)

(assert (= bs!1968406 d!2361252))

(declare-fun m!8288038 () Bool)

(assert (=> bs!1968406 m!8288038))

(assert (=> d!2361250 d!2361252))

(declare-fun d!2361254 () Bool)

(assert (=> d!2361254 true))

(assert (=> d!2361254 true))

(declare-fun res!3141173 () Bool)

(assert (=> d!2361254 (= (choose!59782 lambda!472620) res!3141173)))

(assert (=> d!2361248 d!2361254))

(declare-fun d!2361256 () Bool)

(assert (=> d!2361256 true))

(declare-fun lambda!472629 () Int)

(declare-fun order!29985 () Int)

(declare-fun dynLambda!30209 (Int Int) Int)

(assert (=> d!2361256 (< (dynLambda!30203 order!29973 (toValue!11744 thiss!6959)) (dynLambda!30209 order!29985 lambda!472629))))

(declare-fun Forall2!1322 (Int) Bool)

(assert (=> d!2361256 (= (equivClasses!3664 (toChars!11603 thiss!6959) (toValue!11744 thiss!6959)) (Forall2!1322 lambda!472629))))

(declare-fun bs!1968407 () Bool)

(assert (= bs!1968407 d!2361256))

(declare-fun m!8288040 () Bool)

(assert (=> bs!1968407 m!8288040))

(assert (=> b!7914295 d!2361256))

(push 1)

(assert (not b_next!136051))

(assert (not d!2361256))

(assert b_and!353669)

(assert (not d!2361252))

(assert b_and!353667)

(assert (not b_next!136049))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353667)

(assert b_and!353669)

(assert (not b_next!136051))

(assert (not b_next!136049))

(check-sat)

(pop 1)

