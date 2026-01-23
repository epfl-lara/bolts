; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!522600 () Bool)

(assert start!522600)

(declare-fun b!4957793 () Bool)

(declare-fun b_free!132379 () Bool)

(declare-fun b_next!133169 () Bool)

(assert (=> b!4957793 (= b_free!132379 (not b_next!133169))))

(declare-fun tp!1390441 () Bool)

(declare-fun b_and!347231 () Bool)

(assert (=> b!4957793 (= tp!1390441 b_and!347231)))

(declare-fun b_free!132381 () Bool)

(declare-fun b_next!133171 () Bool)

(assert (=> b!4957793 (= b_free!132381 (not b_next!133171))))

(declare-fun tp!1390442 () Bool)

(declare-fun b_and!347233 () Bool)

(assert (=> b!4957793 (= tp!1390442 b_and!347233)))

(declare-fun b!4957781 () Bool)

(declare-fun res!2115592 () Bool)

(declare-fun e!3098339 () Bool)

(assert (=> b!4957781 (=> (not res!2115592) (not e!3098339))))

(declare-datatypes ((LexerInterface!7929 0))(
  ( (LexerInterfaceExt!7926 (__x!34587 Int)) (Lexer!7927) )
))
(declare-fun thiss!15247 () LexerInterface!7929)

(declare-datatypes ((List!57397 0))(
  ( (Nil!57273) (Cons!57273 (h!63721 (_ BitVec 16)) (t!367963 List!57397)) )
))
(declare-datatypes ((TokenValue!8647 0))(
  ( (FloatLiteralValue!17294 (text!60974 List!57397)) (TokenValueExt!8646 (__x!34588 Int)) (Broken!43235 (value!267022 List!57397)) (Object!8770) (End!8647) (Def!8647) (Underscore!8647) (Match!8647) (Else!8647) (Error!8647) (Case!8647) (If!8647) (Extends!8647) (Abstract!8647) (Class!8647) (Val!8647) (DelimiterValue!17294 (del!8707 List!57397)) (KeywordValue!8653 (value!267023 List!57397)) (CommentValue!17294 (value!267024 List!57397)) (WhitespaceValue!17294 (value!267025 List!57397)) (IndentationValue!8647 (value!267026 List!57397)) (String!65110) (Int32!8647) (Broken!43236 (value!267027 List!57397)) (Boolean!8648) (Unit!148167) (OperatorValue!8650 (op!8707 List!57397)) (IdentifierValue!17294 (value!267028 List!57397)) (IdentifierValue!17295 (value!267029 List!57397)) (WhitespaceValue!17295 (value!267030 List!57397)) (True!17294) (False!17294) (Broken!43237 (value!267031 List!57397)) (Broken!43238 (value!267032 List!57397)) (True!17295) (RightBrace!8647) (RightBracket!8647) (Colon!8647) (Null!8647) (Comma!8647) (LeftBracket!8647) (False!17295) (LeftBrace!8647) (ImaginaryLiteralValue!8647 (text!60975 List!57397)) (StringLiteralValue!25941 (value!267033 List!57397)) (EOFValue!8647 (value!267034 List!57397)) (IdentValue!8647 (value!267035 List!57397)) (DelimiterValue!17295 (value!267036 List!57397)) (DedentValue!8647 (value!267037 List!57397)) (NewLineValue!8647 (value!267038 List!57397)) (IntegerValue!25941 (value!267039 (_ BitVec 32)) (text!60976 List!57397)) (IntegerValue!25942 (value!267040 Int) (text!60977 List!57397)) (Times!8647) (Or!8647) (Equal!8647) (Minus!8647) (Broken!43239 (value!267041 List!57397)) (And!8647) (Div!8647) (LessEqual!8647) (Mod!8647) (Concat!22217) (Not!8647) (Plus!8647) (SpaceValue!8647 (value!267042 List!57397)) (IntegerValue!25943 (value!267043 Int) (text!60978 List!57397)) (StringLiteralValue!25942 (text!60979 List!57397)) (FloatLiteralValue!17295 (text!60980 List!57397)) (BytesLiteralValue!8647 (value!267044 List!57397)) (CommentValue!17295 (value!267045 List!57397)) (StringLiteralValue!25943 (value!267046 List!57397)) (ErrorTokenValue!8647 (msg!8708 List!57397)) )
))
(declare-datatypes ((C!27390 0))(
  ( (C!27391 (val!23061 Int)) )
))
(declare-datatypes ((List!57398 0))(
  ( (Nil!57274) (Cons!57274 (h!63722 C!27390) (t!367964 List!57398)) )
))
(declare-datatypes ((IArray!30239 0))(
  ( (IArray!30240 (innerList!15177 List!57398)) )
))
(declare-datatypes ((Regex!13570 0))(
  ( (ElementMatch!13570 (c!846282 C!27390)) (Concat!22218 (regOne!27652 Regex!13570) (regTwo!27652 Regex!13570)) (EmptyExpr!13570) (Star!13570 (reg!13899 Regex!13570)) (EmptyLang!13570) (Union!13570 (regOne!27653 Regex!13570) (regTwo!27653 Regex!13570)) )
))
(declare-datatypes ((String!65111 0))(
  ( (String!65112 (value!267047 String)) )
))
(declare-datatypes ((Conc!15089 0))(
  ( (Node!15089 (left!41768 Conc!15089) (right!42098 Conc!15089) (csize!30408 Int) (cheight!15300 Int)) (Leaf!25083 (xs!18415 IArray!30239) (csize!30409 Int)) (Empty!15089) )
))
(declare-datatypes ((BalanceConc!29608 0))(
  ( (BalanceConc!29609 (c!846283 Conc!15089)) )
))
(declare-datatypes ((TokenValueInjection!16602 0))(
  ( (TokenValueInjection!16603 (toValue!11288 Int) (toChars!11147 Int)) )
))
(declare-datatypes ((Rule!16474 0))(
  ( (Rule!16475 (regex!8337 Regex!13570) (tag!9201 String!65111) (isSeparator!8337 Bool) (transformation!8337 TokenValueInjection!16602)) )
))
(declare-datatypes ((List!57399 0))(
  ( (Nil!57275) (Cons!57275 (h!63723 Rule!16474) (t!367965 List!57399)) )
))
(declare-fun rulesArg!259 () List!57399)

(declare-fun rulesValidInductive!3240 (LexerInterface!7929 List!57399) Bool)

(assert (=> b!4957781 (= res!2115592 (rulesValidInductive!3240 thiss!15247 rulesArg!259))))

(declare-fun b!4957782 () Bool)

(declare-fun res!2115589 () Bool)

(assert (=> b!4957782 (=> (not res!2115589) (not e!3098339))))

(declare-fun isEmpty!30793 (List!57399) Bool)

(assert (=> b!4957782 (= res!2115589 (not (isEmpty!30793 rulesArg!259)))))

(declare-fun b!4957783 () Bool)

(declare-fun e!3098328 () Bool)

(declare-fun e!3098338 () Bool)

(assert (=> b!4957783 (= e!3098328 (not e!3098338))))

(declare-fun res!2115595 () Bool)

(assert (=> b!4957783 (=> res!2115595 e!3098338)))

(assert (=> b!4957783 (= res!2115595 (or (and (is-Cons!57275 rulesArg!259) (is-Nil!57275 (t!367965 rulesArg!259))) (not (is-Cons!57275 rulesArg!259))))))

(declare-fun lt!2046470 () List!57398)

(declare-fun isPrefix!5190 (List!57398 List!57398) Bool)

(assert (=> b!4957783 (isPrefix!5190 lt!2046470 lt!2046470)))

(declare-datatypes ((Unit!148168 0))(
  ( (Unit!148169) )
))
(declare-fun lt!2046474 () Unit!148168)

(declare-fun lemmaIsPrefixRefl!3514 (List!57398 List!57398) Unit!148168)

(assert (=> b!4957783 (= lt!2046474 (lemmaIsPrefixRefl!3514 lt!2046470 lt!2046470))))

(declare-fun e!3098329 () Bool)

(declare-fun b!4957784 () Bool)

(declare-datatypes ((Token!15174 0))(
  ( (Token!15175 (value!267048 TokenValue!8647) (rule!11557 Rule!16474) (size!37967 Int) (originalCharacters!8618 List!57398)) )
))
(declare-datatypes ((tuple2!61880 0))(
  ( (tuple2!61881 (_1!34243 Token!15174) (_2!34243 List!57398)) )
))
(declare-datatypes ((Option!14343 0))(
  ( (None!14342) (Some!14342 (v!50327 tuple2!61880)) )
))
(declare-fun isDefined!11266 (Option!14343) Bool)

(declare-fun maxPrefix!4632 (LexerInterface!7929 List!57399 List!57398) Option!14343)

(assert (=> b!4957784 (= e!3098329 (isDefined!11266 (maxPrefix!4632 thiss!15247 rulesArg!259 lt!2046470)))))

(declare-fun b!4957785 () Bool)

(declare-fun e!3098336 () Bool)

(declare-fun totalInput!464 () BalanceConc!29608)

(declare-fun tp!1390443 () Bool)

(declare-fun inv!74742 (Conc!15089) Bool)

(assert (=> b!4957785 (= e!3098336 (and (inv!74742 (c!846283 totalInput!464)) tp!1390443))))

(declare-fun b!4957786 () Bool)

(declare-fun e!3098330 () Bool)

(declare-fun e!3098333 () Bool)

(assert (=> b!4957786 (= e!3098330 e!3098333)))

(declare-fun res!2115588 () Bool)

(assert (=> b!4957786 (=> res!2115588 e!3098333)))

(declare-fun lt!2046476 () Bool)

(declare-fun lt!2046477 () Option!14343)

(assert (=> b!4957786 (= res!2115588 (not (= lt!2046476 (isDefined!11266 lt!2046477))))))

(declare-datatypes ((tuple2!61882 0))(
  ( (tuple2!61883 (_1!34244 Token!15174) (_2!34244 BalanceConc!29608)) )
))
(declare-datatypes ((Option!14344 0))(
  ( (None!14343) (Some!14343 (v!50328 tuple2!61882)) )
))
(declare-fun lt!2046475 () Option!14344)

(declare-fun isDefined!11267 (Option!14344) Bool)

(assert (=> b!4957786 (= lt!2046476 (isDefined!11267 lt!2046475))))

(declare-fun maxPrefixZipper!734 (LexerInterface!7929 List!57399 List!57398) Option!14343)

(assert (=> b!4957786 (= lt!2046477 (maxPrefixZipper!734 thiss!15247 rulesArg!259 lt!2046470))))

(declare-fun res!2115591 () Bool)

(assert (=> start!522600 (=> (not res!2115591) (not e!3098339))))

(assert (=> start!522600 (= res!2115591 (is-Lexer!7927 thiss!15247))))

(assert (=> start!522600 e!3098339))

(assert (=> start!522600 true))

(declare-fun e!3098331 () Bool)

(assert (=> start!522600 e!3098331))

(declare-fun input!1342 () BalanceConc!29608)

(declare-fun e!3098332 () Bool)

(declare-fun inv!74743 (BalanceConc!29608) Bool)

(assert (=> start!522600 (and (inv!74743 input!1342) e!3098332)))

(assert (=> start!522600 (and (inv!74743 totalInput!464) e!3098336)))

(declare-fun b!4957787 () Bool)

(assert (=> b!4957787 (= e!3098339 e!3098328)))

(declare-fun res!2115594 () Bool)

(assert (=> b!4957787 (=> (not res!2115594) (not e!3098328))))

(declare-fun isSuffix!1136 (List!57398 List!57398) Bool)

(declare-fun list!18282 (BalanceConc!29608) List!57398)

(assert (=> b!4957787 (= res!2115594 (isSuffix!1136 lt!2046470 (list!18282 totalInput!464)))))

(assert (=> b!4957787 (= lt!2046470 (list!18282 input!1342))))

(declare-fun b!4957788 () Bool)

(assert (=> b!4957788 (= e!3098333 e!3098329)))

(declare-fun res!2115596 () Bool)

(assert (=> b!4957788 (=> res!2115596 e!3098329)))

(declare-fun e!3098334 () Bool)

(assert (=> b!4957788 (= res!2115596 e!3098334)))

(declare-fun res!2115593 () Bool)

(assert (=> b!4957788 (=> (not res!2115593) (not e!3098334))))

(declare-fun lt!2046469 () Bool)

(assert (=> b!4957788 (= res!2115593 (not lt!2046469))))

(assert (=> b!4957788 (= lt!2046469 (not lt!2046476))))

(declare-fun b!4957789 () Bool)

(declare-fun e!3098337 () Bool)

(declare-fun lt!2046471 () tuple2!61882)

(declare-fun lt!2046473 () tuple2!61880)

(assert (=> b!4957789 (= e!3098337 (not (= (list!18282 (_2!34244 lt!2046471)) (_2!34243 lt!2046473))))))

(declare-fun b!4957790 () Bool)

(declare-fun e!3098340 () Bool)

(declare-fun tp!1390444 () Bool)

(assert (=> b!4957790 (= e!3098331 (and e!3098340 tp!1390444))))

(declare-fun b!4957791 () Bool)

(assert (=> b!4957791 (= e!3098334 e!3098337)))

(declare-fun res!2115598 () Bool)

(assert (=> b!4957791 (=> res!2115598 e!3098337)))

(assert (=> b!4957791 (= res!2115598 (not (= (_1!34244 lt!2046471) (_1!34243 lt!2046473))))))

(declare-fun get!19828 (Option!14343) tuple2!61880)

(assert (=> b!4957791 (= lt!2046473 (get!19828 lt!2046477))))

(declare-fun get!19829 (Option!14344) tuple2!61882)

(assert (=> b!4957791 (= lt!2046471 (get!19829 lt!2046475))))

(declare-fun b!4957792 () Bool)

(assert (=> b!4957792 (= e!3098338 e!3098330)))

(declare-fun res!2115590 () Bool)

(assert (=> b!4957792 (=> res!2115590 e!3098330)))

(declare-fun lt!2046472 () Option!14344)

(assert (=> b!4957792 (= res!2115590 (or (and (is-None!14343 lt!2046472) (is-None!14343 lt!2046475)) (is-None!14343 lt!2046475) (not (is-None!14343 lt!2046472))))))

(declare-fun maxPrefixZipperSequenceV2!668 (LexerInterface!7929 List!57399 BalanceConc!29608 BalanceConc!29608) Option!14344)

(assert (=> b!4957792 (= lt!2046475 (maxPrefixZipperSequenceV2!668 thiss!15247 (t!367965 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!321 (LexerInterface!7929 Rule!16474 BalanceConc!29608 BalanceConc!29608) Option!14344)

(assert (=> b!4957792 (= lt!2046472 (maxPrefixOneRuleZipperSequenceV2!321 thiss!15247 (h!63723 rulesArg!259) input!1342 totalInput!464))))

(declare-fun e!3098335 () Bool)

(assert (=> b!4957793 (= e!3098335 (and tp!1390441 tp!1390442))))

(declare-fun tp!1390446 () Bool)

(declare-fun b!4957794 () Bool)

(declare-fun inv!74739 (String!65111) Bool)

(declare-fun inv!74744 (TokenValueInjection!16602) Bool)

(assert (=> b!4957794 (= e!3098340 (and tp!1390446 (inv!74739 (tag!9201 (h!63723 rulesArg!259))) (inv!74744 (transformation!8337 (h!63723 rulesArg!259))) e!3098335))))

(declare-fun b!4957795 () Bool)

(declare-fun tp!1390445 () Bool)

(assert (=> b!4957795 (= e!3098332 (and (inv!74742 (c!846283 input!1342)) tp!1390445))))

(declare-fun b!4957796 () Bool)

(declare-fun res!2115597 () Bool)

(assert (=> b!4957796 (=> res!2115597 e!3098329)))

(assert (=> b!4957796 (= res!2115597 lt!2046469)))

(assert (= (and start!522600 res!2115591) b!4957781))

(assert (= (and b!4957781 res!2115592) b!4957782))

(assert (= (and b!4957782 res!2115589) b!4957787))

(assert (= (and b!4957787 res!2115594) b!4957783))

(assert (= (and b!4957783 (not res!2115595)) b!4957792))

(assert (= (and b!4957792 (not res!2115590)) b!4957786))

(assert (= (and b!4957786 (not res!2115588)) b!4957788))

(assert (= (and b!4957788 res!2115593) b!4957791))

(assert (= (and b!4957791 (not res!2115598)) b!4957789))

(assert (= (and b!4957788 (not res!2115596)) b!4957796))

(assert (= (and b!4957796 (not res!2115597)) b!4957784))

(assert (= b!4957794 b!4957793))

(assert (= b!4957790 b!4957794))

(assert (= (and start!522600 (is-Cons!57275 rulesArg!259)) b!4957790))

(assert (= start!522600 b!4957795))

(assert (= start!522600 b!4957785))

(declare-fun m!5982352 () Bool)

(assert (=> b!4957795 m!5982352))

(declare-fun m!5982354 () Bool)

(assert (=> b!4957787 m!5982354))

(assert (=> b!4957787 m!5982354))

(declare-fun m!5982356 () Bool)

(assert (=> b!4957787 m!5982356))

(declare-fun m!5982358 () Bool)

(assert (=> b!4957787 m!5982358))

(declare-fun m!5982360 () Bool)

(assert (=> b!4957781 m!5982360))

(declare-fun m!5982362 () Bool)

(assert (=> b!4957785 m!5982362))

(declare-fun m!5982364 () Bool)

(assert (=> b!4957786 m!5982364))

(declare-fun m!5982366 () Bool)

(assert (=> b!4957786 m!5982366))

(declare-fun m!5982368 () Bool)

(assert (=> b!4957786 m!5982368))

(declare-fun m!5982370 () Bool)

(assert (=> b!4957783 m!5982370))

(declare-fun m!5982372 () Bool)

(assert (=> b!4957783 m!5982372))

(declare-fun m!5982374 () Bool)

(assert (=> b!4957782 m!5982374))

(declare-fun m!5982376 () Bool)

(assert (=> b!4957792 m!5982376))

(declare-fun m!5982378 () Bool)

(assert (=> b!4957792 m!5982378))

(declare-fun m!5982380 () Bool)

(assert (=> b!4957784 m!5982380))

(assert (=> b!4957784 m!5982380))

(declare-fun m!5982382 () Bool)

(assert (=> b!4957784 m!5982382))

(declare-fun m!5982384 () Bool)

(assert (=> b!4957789 m!5982384))

(declare-fun m!5982386 () Bool)

(assert (=> b!4957794 m!5982386))

(declare-fun m!5982388 () Bool)

(assert (=> b!4957794 m!5982388))

(declare-fun m!5982390 () Bool)

(assert (=> b!4957791 m!5982390))

(declare-fun m!5982392 () Bool)

(assert (=> b!4957791 m!5982392))

(declare-fun m!5982394 () Bool)

(assert (=> start!522600 m!5982394))

(declare-fun m!5982396 () Bool)

(assert (=> start!522600 m!5982396))

(push 1)

(assert (not b!4957784))

(assert b_and!347233)

(assert b_and!347231)

(assert (not b!4957791))

(assert (not b!4957794))

(assert (not b!4957795))

(assert (not start!522600))

(assert (not b!4957792))

(assert (not b!4957782))

(assert (not b!4957787))

(assert (not b!4957786))

(assert (not b!4957785))

(assert (not b_next!133169))

(assert (not b!4957789))

(assert (not b!4957781))

(assert (not b_next!133171))

(assert (not b!4957783))

(assert (not b!4957790))

(check-sat)

(pop 1)

(push 1)

(assert b_and!347231)

(assert b_and!347233)

(assert (not b_next!133169))

(assert (not b_next!133171))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1595798 () Bool)

(declare-fun isEmpty!30795 (Option!14343) Bool)

(assert (=> d!1595798 (= (isDefined!11266 lt!2046477) (not (isEmpty!30795 lt!2046477)))))

(declare-fun bs!1182585 () Bool)

(assert (= bs!1182585 d!1595798))

(declare-fun m!5982444 () Bool)

(assert (=> bs!1182585 m!5982444))

(assert (=> b!4957786 d!1595798))

(declare-fun d!1595800 () Bool)

(declare-fun isEmpty!30796 (Option!14344) Bool)

(assert (=> d!1595800 (= (isDefined!11267 lt!2046475) (not (isEmpty!30796 lt!2046475)))))

(declare-fun bs!1182586 () Bool)

(assert (= bs!1182586 d!1595800))

(declare-fun m!5982446 () Bool)

(assert (=> bs!1182586 m!5982446))

(assert (=> b!4957786 d!1595800))

(declare-fun lt!2046518 () Option!14343)

(declare-fun d!1595802 () Bool)

(assert (=> d!1595802 (= lt!2046518 (maxPrefix!4632 thiss!15247 rulesArg!259 lt!2046470))))

(declare-fun e!3098390 () Option!14343)

(assert (=> d!1595802 (= lt!2046518 e!3098390)))

(declare-fun c!846291 () Bool)

(assert (=> d!1595802 (= c!846291 (and (is-Cons!57275 rulesArg!259) (is-Nil!57275 (t!367965 rulesArg!259))))))

(declare-fun lt!2046516 () Unit!148168)

(declare-fun lt!2046515 () Unit!148168)

(assert (=> d!1595802 (= lt!2046516 lt!2046515)))

(assert (=> d!1595802 (isPrefix!5190 lt!2046470 lt!2046470)))

(assert (=> d!1595802 (= lt!2046515 (lemmaIsPrefixRefl!3514 lt!2046470 lt!2046470))))

(assert (=> d!1595802 (rulesValidInductive!3240 thiss!15247 rulesArg!259)))

(assert (=> d!1595802 (= (maxPrefixZipper!734 thiss!15247 rulesArg!259 lt!2046470) lt!2046518)))

(declare-fun call!345922 () Option!14343)

(declare-fun bm!345917 () Bool)

(declare-fun maxPrefixOneRuleZipper!276 (LexerInterface!7929 Rule!16474 List!57398) Option!14343)

(assert (=> bm!345917 (= call!345922 (maxPrefixOneRuleZipper!276 thiss!15247 (h!63723 rulesArg!259) lt!2046470))))

(declare-fun b!4957855 () Bool)

(assert (=> b!4957855 (= e!3098390 call!345922)))

(declare-fun b!4957856 () Bool)

(declare-fun lt!2046517 () Option!14343)

(declare-fun lt!2046519 () Option!14343)

(assert (=> b!4957856 (= e!3098390 (ite (and (is-None!14342 lt!2046517) (is-None!14342 lt!2046519)) None!14342 (ite (is-None!14342 lt!2046519) lt!2046517 (ite (is-None!14342 lt!2046517) lt!2046519 (ite (>= (size!37967 (_1!34243 (v!50327 lt!2046517))) (size!37967 (_1!34243 (v!50327 lt!2046519)))) lt!2046517 lt!2046519)))))))

(assert (=> b!4957856 (= lt!2046517 call!345922)))

(assert (=> b!4957856 (= lt!2046519 (maxPrefixZipper!734 thiss!15247 (t!367965 rulesArg!259) lt!2046470))))

(assert (= (and d!1595802 c!846291) b!4957855))

(assert (= (and d!1595802 (not c!846291)) b!4957856))

(assert (= (or b!4957855 b!4957856) bm!345917))

(assert (=> d!1595802 m!5982380))

(assert (=> d!1595802 m!5982370))

(assert (=> d!1595802 m!5982372))

(assert (=> d!1595802 m!5982360))

(declare-fun m!5982448 () Bool)

(assert (=> bm!345917 m!5982448))

(declare-fun m!5982450 () Bool)

(assert (=> b!4957856 m!5982450))

(assert (=> b!4957786 d!1595802))

(declare-fun d!1595806 () Bool)

(declare-fun c!846295 () Bool)

(assert (=> d!1595806 (= c!846295 (is-Node!15089 (c!846283 totalInput!464)))))

(declare-fun e!3098397 () Bool)

(assert (=> d!1595806 (= (inv!74742 (c!846283 totalInput!464)) e!3098397)))

(declare-fun b!4957866 () Bool)

(declare-fun inv!74748 (Conc!15089) Bool)

(assert (=> b!4957866 (= e!3098397 (inv!74748 (c!846283 totalInput!464)))))

(declare-fun b!4957867 () Bool)

(declare-fun e!3098398 () Bool)

(assert (=> b!4957867 (= e!3098397 e!3098398)))

(declare-fun res!2115650 () Bool)

(assert (=> b!4957867 (= res!2115650 (not (is-Leaf!25083 (c!846283 totalInput!464))))))

(assert (=> b!4957867 (=> res!2115650 e!3098398)))

(declare-fun b!4957868 () Bool)

(declare-fun inv!74749 (Conc!15089) Bool)

(assert (=> b!4957868 (= e!3098398 (inv!74749 (c!846283 totalInput!464)))))

(assert (= (and d!1595806 c!846295) b!4957866))

(assert (= (and d!1595806 (not c!846295)) b!4957867))

(assert (= (and b!4957867 (not res!2115650)) b!4957868))

(declare-fun m!5982456 () Bool)

(assert (=> b!4957866 m!5982456))

(declare-fun m!5982458 () Bool)

(assert (=> b!4957868 m!5982458))

(assert (=> b!4957785 d!1595806))

(declare-fun d!1595810 () Bool)

(declare-fun c!846296 () Bool)

(assert (=> d!1595810 (= c!846296 (is-Node!15089 (c!846283 input!1342)))))

(declare-fun e!3098399 () Bool)

(assert (=> d!1595810 (= (inv!74742 (c!846283 input!1342)) e!3098399)))

(declare-fun b!4957869 () Bool)

(assert (=> b!4957869 (= e!3098399 (inv!74748 (c!846283 input!1342)))))

(declare-fun b!4957870 () Bool)

(declare-fun e!3098400 () Bool)

(assert (=> b!4957870 (= e!3098399 e!3098400)))

(declare-fun res!2115651 () Bool)

(assert (=> b!4957870 (= res!2115651 (not (is-Leaf!25083 (c!846283 input!1342))))))

(assert (=> b!4957870 (=> res!2115651 e!3098400)))

(declare-fun b!4957871 () Bool)

(assert (=> b!4957871 (= e!3098400 (inv!74749 (c!846283 input!1342)))))

(assert (= (and d!1595810 c!846296) b!4957869))

(assert (= (and d!1595810 (not c!846296)) b!4957870))

(assert (= (and b!4957870 (not res!2115651)) b!4957871))

(declare-fun m!5982460 () Bool)

(assert (=> b!4957869 m!5982460))

(declare-fun m!5982462 () Bool)

(assert (=> b!4957871 m!5982462))

(assert (=> b!4957795 d!1595810))

(declare-fun d!1595812 () Bool)

(assert (=> d!1595812 (= (isDefined!11266 (maxPrefix!4632 thiss!15247 rulesArg!259 lt!2046470)) (not (isEmpty!30795 (maxPrefix!4632 thiss!15247 rulesArg!259 lt!2046470))))))

(declare-fun bs!1182587 () Bool)

(assert (= bs!1182587 d!1595812))

(assert (=> bs!1182587 m!5982380))

(declare-fun m!5982464 () Bool)

(assert (=> bs!1182587 m!5982464))

(assert (=> b!4957784 d!1595812))

(declare-fun b!4957894 () Bool)

(declare-fun res!2115672 () Bool)

(declare-fun e!3098412 () Bool)

(assert (=> b!4957894 (=> (not res!2115672) (not e!3098412))))

(declare-fun lt!2046536 () Option!14343)

(declare-fun matchR!6614 (Regex!13570 List!57398) Bool)

(declare-fun charsOf!5417 (Token!15174) BalanceConc!29608)

(assert (=> b!4957894 (= res!2115672 (matchR!6614 (regex!8337 (rule!11557 (_1!34243 (get!19828 lt!2046536)))) (list!18282 (charsOf!5417 (_1!34243 (get!19828 lt!2046536))))))))

(declare-fun d!1595814 () Bool)

(declare-fun e!3098413 () Bool)

(assert (=> d!1595814 e!3098413))

(declare-fun res!2115673 () Bool)

(assert (=> d!1595814 (=> res!2115673 e!3098413)))

(assert (=> d!1595814 (= res!2115673 (isEmpty!30795 lt!2046536))))

(declare-fun e!3098411 () Option!14343)

(assert (=> d!1595814 (= lt!2046536 e!3098411)))

(declare-fun c!846299 () Bool)

(assert (=> d!1595814 (= c!846299 (and (is-Cons!57275 rulesArg!259) (is-Nil!57275 (t!367965 rulesArg!259))))))

(declare-fun lt!2046535 () Unit!148168)

(declare-fun lt!2046533 () Unit!148168)

(assert (=> d!1595814 (= lt!2046535 lt!2046533)))

(assert (=> d!1595814 (isPrefix!5190 lt!2046470 lt!2046470)))

(assert (=> d!1595814 (= lt!2046533 (lemmaIsPrefixRefl!3514 lt!2046470 lt!2046470))))

(assert (=> d!1595814 (rulesValidInductive!3240 thiss!15247 rulesArg!259)))

(assert (=> d!1595814 (= (maxPrefix!4632 thiss!15247 rulesArg!259 lt!2046470) lt!2046536)))

(declare-fun b!4957895 () Bool)

(declare-fun res!2115670 () Bool)

(assert (=> b!4957895 (=> (not res!2115670) (not e!3098412))))

(declare-fun apply!13882 (TokenValueInjection!16602 BalanceConc!29608) TokenValue!8647)

(declare-fun seqFromList!6014 (List!57398) BalanceConc!29608)

(assert (=> b!4957895 (= res!2115670 (= (value!267048 (_1!34243 (get!19828 lt!2046536))) (apply!13882 (transformation!8337 (rule!11557 (_1!34243 (get!19828 lt!2046536)))) (seqFromList!6014 (originalCharacters!8618 (_1!34243 (get!19828 lt!2046536)))))))))

(declare-fun b!4957896 () Bool)

(declare-fun res!2115675 () Bool)

(assert (=> b!4957896 (=> (not res!2115675) (not e!3098412))))

(declare-fun ++!12512 (List!57398 List!57398) List!57398)

(assert (=> b!4957896 (= res!2115675 (= (++!12512 (list!18282 (charsOf!5417 (_1!34243 (get!19828 lt!2046536)))) (_2!34243 (get!19828 lt!2046536))) lt!2046470))))

(declare-fun call!345925 () Option!14343)

(declare-fun bm!345920 () Bool)

(declare-fun maxPrefixOneRule!3607 (LexerInterface!7929 Rule!16474 List!57398) Option!14343)

(assert (=> bm!345920 (= call!345925 (maxPrefixOneRule!3607 thiss!15247 (h!63723 rulesArg!259) lt!2046470))))

(declare-fun b!4957897 () Bool)

(declare-fun lt!2046532 () Option!14343)

(declare-fun lt!2046534 () Option!14343)

(assert (=> b!4957897 (= e!3098411 (ite (and (is-None!14342 lt!2046532) (is-None!14342 lt!2046534)) None!14342 (ite (is-None!14342 lt!2046534) lt!2046532 (ite (is-None!14342 lt!2046532) lt!2046534 (ite (>= (size!37967 (_1!34243 (v!50327 lt!2046532))) (size!37967 (_1!34243 (v!50327 lt!2046534)))) lt!2046532 lt!2046534)))))))

(assert (=> b!4957897 (= lt!2046532 call!345925)))

(assert (=> b!4957897 (= lt!2046534 (maxPrefix!4632 thiss!15247 (t!367965 rulesArg!259) lt!2046470))))

(declare-fun b!4957898 () Bool)

(declare-fun contains!19518 (List!57399 Rule!16474) Bool)

(assert (=> b!4957898 (= e!3098412 (contains!19518 rulesArg!259 (rule!11557 (_1!34243 (get!19828 lt!2046536)))))))

(declare-fun b!4957899 () Bool)

(assert (=> b!4957899 (= e!3098411 call!345925)))

(declare-fun b!4957900 () Bool)

(declare-fun res!2115674 () Bool)

(assert (=> b!4957900 (=> (not res!2115674) (not e!3098412))))

(declare-fun size!37969 (List!57398) Int)

(assert (=> b!4957900 (= res!2115674 (< (size!37969 (_2!34243 (get!19828 lt!2046536))) (size!37969 lt!2046470)))))

(declare-fun b!4957901 () Bool)

(declare-fun res!2115671 () Bool)

(assert (=> b!4957901 (=> (not res!2115671) (not e!3098412))))

(assert (=> b!4957901 (= res!2115671 (= (list!18282 (charsOf!5417 (_1!34243 (get!19828 lt!2046536)))) (originalCharacters!8618 (_1!34243 (get!19828 lt!2046536)))))))

(declare-fun b!4957902 () Bool)

(assert (=> b!4957902 (= e!3098413 e!3098412)))

(declare-fun res!2115676 () Bool)

(assert (=> b!4957902 (=> (not res!2115676) (not e!3098412))))

(assert (=> b!4957902 (= res!2115676 (isDefined!11266 lt!2046536))))

(assert (= (and d!1595814 c!846299) b!4957899))

(assert (= (and d!1595814 (not c!846299)) b!4957897))

(assert (= (or b!4957899 b!4957897) bm!345920))

(assert (= (and d!1595814 (not res!2115673)) b!4957902))

(assert (= (and b!4957902 res!2115676) b!4957901))

(assert (= (and b!4957901 res!2115671) b!4957900))

(assert (= (and b!4957900 res!2115674) b!4957896))

(assert (= (and b!4957896 res!2115675) b!4957895))

(assert (= (and b!4957895 res!2115670) b!4957894))

(assert (= (and b!4957894 res!2115672) b!4957898))

(declare-fun m!5982466 () Bool)

(assert (=> b!4957901 m!5982466))

(declare-fun m!5982468 () Bool)

(assert (=> b!4957901 m!5982468))

(assert (=> b!4957901 m!5982468))

(declare-fun m!5982470 () Bool)

(assert (=> b!4957901 m!5982470))

(assert (=> b!4957894 m!5982466))

(assert (=> b!4957894 m!5982468))

(assert (=> b!4957894 m!5982468))

(assert (=> b!4957894 m!5982470))

(assert (=> b!4957894 m!5982470))

(declare-fun m!5982472 () Bool)

(assert (=> b!4957894 m!5982472))

(declare-fun m!5982474 () Bool)

(assert (=> b!4957897 m!5982474))

(assert (=> b!4957896 m!5982466))

(assert (=> b!4957896 m!5982468))

(assert (=> b!4957896 m!5982468))

(assert (=> b!4957896 m!5982470))

(assert (=> b!4957896 m!5982470))

(declare-fun m!5982476 () Bool)

(assert (=> b!4957896 m!5982476))

(declare-fun m!5982478 () Bool)

(assert (=> bm!345920 m!5982478))

(assert (=> b!4957895 m!5982466))

(declare-fun m!5982480 () Bool)

(assert (=> b!4957895 m!5982480))

(assert (=> b!4957895 m!5982480))

(declare-fun m!5982482 () Bool)

(assert (=> b!4957895 m!5982482))

(declare-fun m!5982484 () Bool)

(assert (=> d!1595814 m!5982484))

(assert (=> d!1595814 m!5982370))

(assert (=> d!1595814 m!5982372))

(assert (=> d!1595814 m!5982360))

(assert (=> b!4957898 m!5982466))

(declare-fun m!5982486 () Bool)

(assert (=> b!4957898 m!5982486))

(declare-fun m!5982488 () Bool)

(assert (=> b!4957902 m!5982488))

(assert (=> b!4957900 m!5982466))

(declare-fun m!5982490 () Bool)

(assert (=> b!4957900 m!5982490))

(declare-fun m!5982492 () Bool)

(assert (=> b!4957900 m!5982492))

(assert (=> b!4957784 d!1595814))

(declare-fun d!1595816 () Bool)

(assert (=> d!1595816 (= (inv!74739 (tag!9201 (h!63723 rulesArg!259))) (= (mod (str.len (value!267047 (tag!9201 (h!63723 rulesArg!259)))) 2) 0))))

(assert (=> b!4957794 d!1595816))

(declare-fun d!1595818 () Bool)

(declare-fun res!2115679 () Bool)

(declare-fun e!3098416 () Bool)

(assert (=> d!1595818 (=> (not res!2115679) (not e!3098416))))

(declare-fun semiInverseModEq!3678 (Int Int) Bool)

(assert (=> d!1595818 (= res!2115679 (semiInverseModEq!3678 (toChars!11147 (transformation!8337 (h!63723 rulesArg!259))) (toValue!11288 (transformation!8337 (h!63723 rulesArg!259)))))))

(assert (=> d!1595818 (= (inv!74744 (transformation!8337 (h!63723 rulesArg!259))) e!3098416)))

(declare-fun b!4957905 () Bool)

(declare-fun equivClasses!3526 (Int Int) Bool)

(assert (=> b!4957905 (= e!3098416 (equivClasses!3526 (toChars!11147 (transformation!8337 (h!63723 rulesArg!259))) (toValue!11288 (transformation!8337 (h!63723 rulesArg!259)))))))

(assert (= (and d!1595818 res!2115679) b!4957905))

(declare-fun m!5982494 () Bool)

(assert (=> d!1595818 m!5982494))

(declare-fun m!5982496 () Bool)

(assert (=> b!4957905 m!5982496))

(assert (=> b!4957794 d!1595818))

(declare-fun d!1595820 () Bool)

(declare-fun e!3098424 () Bool)

(assert (=> d!1595820 e!3098424))

(declare-fun res!2115688 () Bool)

(assert (=> d!1595820 (=> res!2115688 e!3098424)))

(declare-fun lt!2046539 () Bool)

(assert (=> d!1595820 (= res!2115688 (not lt!2046539))))

(declare-fun e!3098425 () Bool)

(assert (=> d!1595820 (= lt!2046539 e!3098425)))

(declare-fun res!2115690 () Bool)

(assert (=> d!1595820 (=> res!2115690 e!3098425)))

(assert (=> d!1595820 (= res!2115690 (is-Nil!57274 lt!2046470))))

(assert (=> d!1595820 (= (isPrefix!5190 lt!2046470 lt!2046470) lt!2046539)))

(declare-fun b!4957915 () Bool)

(declare-fun res!2115689 () Bool)

(declare-fun e!3098423 () Bool)

(assert (=> b!4957915 (=> (not res!2115689) (not e!3098423))))

(declare-fun head!10647 (List!57398) C!27390)

(assert (=> b!4957915 (= res!2115689 (= (head!10647 lt!2046470) (head!10647 lt!2046470)))))

(declare-fun b!4957916 () Bool)

(declare-fun tail!9780 (List!57398) List!57398)

(assert (=> b!4957916 (= e!3098423 (isPrefix!5190 (tail!9780 lt!2046470) (tail!9780 lt!2046470)))))

(declare-fun b!4957917 () Bool)

(assert (=> b!4957917 (= e!3098424 (>= (size!37969 lt!2046470) (size!37969 lt!2046470)))))

(declare-fun b!4957914 () Bool)

(assert (=> b!4957914 (= e!3098425 e!3098423)))

(declare-fun res!2115691 () Bool)

(assert (=> b!4957914 (=> (not res!2115691) (not e!3098423))))

(assert (=> b!4957914 (= res!2115691 (not (is-Nil!57274 lt!2046470)))))

(assert (= (and d!1595820 (not res!2115690)) b!4957914))

(assert (= (and b!4957914 res!2115691) b!4957915))

(assert (= (and b!4957915 res!2115689) b!4957916))

(assert (= (and d!1595820 (not res!2115688)) b!4957917))

(declare-fun m!5982498 () Bool)

(assert (=> b!4957915 m!5982498))

(assert (=> b!4957915 m!5982498))

(declare-fun m!5982500 () Bool)

(assert (=> b!4957916 m!5982500))

(assert (=> b!4957916 m!5982500))

(assert (=> b!4957916 m!5982500))

(assert (=> b!4957916 m!5982500))

(declare-fun m!5982502 () Bool)

(assert (=> b!4957916 m!5982502))

(assert (=> b!4957917 m!5982492))

(assert (=> b!4957917 m!5982492))

(assert (=> b!4957783 d!1595820))

(declare-fun d!1595822 () Bool)

(assert (=> d!1595822 (isPrefix!5190 lt!2046470 lt!2046470)))

(declare-fun lt!2046542 () Unit!148168)

(declare-fun choose!36627 (List!57398 List!57398) Unit!148168)

(assert (=> d!1595822 (= lt!2046542 (choose!36627 lt!2046470 lt!2046470))))

(assert (=> d!1595822 (= (lemmaIsPrefixRefl!3514 lt!2046470 lt!2046470) lt!2046542)))

(declare-fun bs!1182588 () Bool)

(assert (= bs!1182588 d!1595822))

(assert (=> bs!1182588 m!5982370))

(declare-fun m!5982504 () Bool)

(assert (=> bs!1182588 m!5982504))

(assert (=> b!4957783 d!1595822))

(declare-fun d!1595824 () Bool)

(assert (=> d!1595824 (= (isEmpty!30793 rulesArg!259) (is-Nil!57275 rulesArg!259))))

(assert (=> b!4957782 d!1595824))

(declare-fun bm!345923 () Bool)

(declare-fun call!345928 () Option!14344)

(assert (=> bm!345923 (= call!345928 (maxPrefixOneRuleZipperSequenceV2!321 thiss!15247 (h!63723 (t!367965 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4957934 () Bool)

(declare-fun e!3098438 () Bool)

(declare-fun e!3098441 () Bool)

(assert (=> b!4957934 (= e!3098438 e!3098441)))

(declare-fun res!2115707 () Bool)

(assert (=> b!4957934 (=> (not res!2115707) (not e!3098441))))

(declare-fun lt!2046557 () Option!14344)

(assert (=> b!4957934 (= res!2115707 (= (_1!34244 (get!19829 lt!2046557)) (_1!34243 (get!19828 (maxPrefixZipper!734 thiss!15247 (t!367965 rulesArg!259) (list!18282 input!1342))))))))

(declare-fun b!4957935 () Bool)

(declare-fun e!3098439 () Option!14344)

(assert (=> b!4957935 (= e!3098439 call!345928)))

(declare-fun e!3098442 () Bool)

(declare-fun b!4957936 () Bool)

(assert (=> b!4957936 (= e!3098442 (= (list!18282 (_2!34244 (get!19829 lt!2046557))) (_2!34243 (get!19828 (maxPrefix!4632 thiss!15247 (t!367965 rulesArg!259) (list!18282 input!1342))))))))

(declare-fun b!4957937 () Bool)

(assert (=> b!4957937 (= e!3098441 (= (list!18282 (_2!34244 (get!19829 lt!2046557))) (_2!34243 (get!19828 (maxPrefixZipper!734 thiss!15247 (t!367965 rulesArg!259) (list!18282 input!1342))))))))

(declare-fun d!1595826 () Bool)

(declare-fun e!3098443 () Bool)

(assert (=> d!1595826 e!3098443))

(declare-fun res!2115706 () Bool)

(assert (=> d!1595826 (=> (not res!2115706) (not e!3098443))))

(assert (=> d!1595826 (= res!2115706 (= (isDefined!11267 lt!2046557) (isDefined!11266 (maxPrefixZipper!734 thiss!15247 (t!367965 rulesArg!259) (list!18282 input!1342)))))))

(assert (=> d!1595826 (= lt!2046557 e!3098439)))

(declare-fun c!846302 () Bool)

(assert (=> d!1595826 (= c!846302 (and (is-Cons!57275 (t!367965 rulesArg!259)) (is-Nil!57275 (t!367965 (t!367965 rulesArg!259)))))))

(declare-fun lt!2046563 () Unit!148168)

(declare-fun lt!2046558 () Unit!148168)

(assert (=> d!1595826 (= lt!2046563 lt!2046558)))

(declare-fun lt!2046562 () List!57398)

(declare-fun lt!2046559 () List!57398)

(assert (=> d!1595826 (isPrefix!5190 lt!2046562 lt!2046559)))

(assert (=> d!1595826 (= lt!2046558 (lemmaIsPrefixRefl!3514 lt!2046562 lt!2046559))))

(assert (=> d!1595826 (= lt!2046559 (list!18282 input!1342))))

(assert (=> d!1595826 (= lt!2046562 (list!18282 input!1342))))

(assert (=> d!1595826 (rulesValidInductive!3240 thiss!15247 (t!367965 rulesArg!259))))

(assert (=> d!1595826 (= (maxPrefixZipperSequenceV2!668 thiss!15247 (t!367965 rulesArg!259) input!1342 totalInput!464) lt!2046557)))

(declare-fun b!4957938 () Bool)

(declare-fun e!3098440 () Bool)

(assert (=> b!4957938 (= e!3098440 e!3098442)))

(declare-fun res!2115704 () Bool)

(assert (=> b!4957938 (=> (not res!2115704) (not e!3098442))))

(assert (=> b!4957938 (= res!2115704 (= (_1!34244 (get!19829 lt!2046557)) (_1!34243 (get!19828 (maxPrefix!4632 thiss!15247 (t!367965 rulesArg!259) (list!18282 input!1342))))))))

(declare-fun b!4957939 () Bool)

(declare-fun res!2115709 () Bool)

(assert (=> b!4957939 (=> (not res!2115709) (not e!3098443))))

(assert (=> b!4957939 (= res!2115709 e!3098438)))

(declare-fun res!2115708 () Bool)

(assert (=> b!4957939 (=> res!2115708 e!3098438)))

(assert (=> b!4957939 (= res!2115708 (not (isDefined!11267 lt!2046557)))))

(declare-fun b!4957940 () Bool)

(declare-fun lt!2046561 () Option!14344)

(declare-fun lt!2046560 () Option!14344)

(assert (=> b!4957940 (= e!3098439 (ite (and (is-None!14343 lt!2046561) (is-None!14343 lt!2046560)) None!14343 (ite (is-None!14343 lt!2046560) lt!2046561 (ite (is-None!14343 lt!2046561) lt!2046560 (ite (>= (size!37967 (_1!34244 (v!50328 lt!2046561))) (size!37967 (_1!34244 (v!50328 lt!2046560)))) lt!2046561 lt!2046560)))))))

(assert (=> b!4957940 (= lt!2046561 call!345928)))

(assert (=> b!4957940 (= lt!2046560 (maxPrefixZipperSequenceV2!668 thiss!15247 (t!367965 (t!367965 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4957941 () Bool)

(assert (=> b!4957941 (= e!3098443 e!3098440)))

(declare-fun res!2115705 () Bool)

(assert (=> b!4957941 (=> res!2115705 e!3098440)))

(assert (=> b!4957941 (= res!2115705 (not (isDefined!11267 lt!2046557)))))

(assert (= (and d!1595826 c!846302) b!4957935))

(assert (= (and d!1595826 (not c!846302)) b!4957940))

(assert (= (or b!4957935 b!4957940) bm!345923))

(assert (= (and d!1595826 res!2115706) b!4957939))

(assert (= (and b!4957939 (not res!2115708)) b!4957934))

(assert (= (and b!4957934 res!2115707) b!4957937))

(assert (= (and b!4957939 res!2115709) b!4957941))

(assert (= (and b!4957941 (not res!2115705)) b!4957938))

(assert (= (and b!4957938 res!2115704) b!4957936))

(declare-fun m!5982506 () Bool)

(assert (=> b!4957940 m!5982506))

(declare-fun m!5982508 () Bool)

(assert (=> b!4957938 m!5982508))

(assert (=> b!4957938 m!5982358))

(assert (=> b!4957938 m!5982358))

(declare-fun m!5982510 () Bool)

(assert (=> b!4957938 m!5982510))

(assert (=> b!4957938 m!5982510))

(declare-fun m!5982512 () Bool)

(assert (=> b!4957938 m!5982512))

(declare-fun m!5982514 () Bool)

(assert (=> bm!345923 m!5982514))

(declare-fun m!5982516 () Bool)

(assert (=> b!4957941 m!5982516))

(assert (=> b!4957939 m!5982516))

(declare-fun m!5982518 () Bool)

(assert (=> d!1595826 m!5982518))

(declare-fun m!5982520 () Bool)

(assert (=> d!1595826 m!5982520))

(declare-fun m!5982522 () Bool)

(assert (=> d!1595826 m!5982522))

(declare-fun m!5982524 () Bool)

(assert (=> d!1595826 m!5982524))

(assert (=> d!1595826 m!5982358))

(assert (=> d!1595826 m!5982518))

(assert (=> d!1595826 m!5982358))

(assert (=> d!1595826 m!5982516))

(declare-fun m!5982526 () Bool)

(assert (=> d!1595826 m!5982526))

(assert (=> b!4957937 m!5982518))

(declare-fun m!5982528 () Bool)

(assert (=> b!4957937 m!5982528))

(assert (=> b!4957937 m!5982508))

(assert (=> b!4957937 m!5982358))

(assert (=> b!4957937 m!5982518))

(declare-fun m!5982530 () Bool)

(assert (=> b!4957937 m!5982530))

(assert (=> b!4957937 m!5982358))

(assert (=> b!4957936 m!5982508))

(assert (=> b!4957936 m!5982510))

(assert (=> b!4957936 m!5982512))

(assert (=> b!4957936 m!5982530))

(assert (=> b!4957936 m!5982358))

(assert (=> b!4957936 m!5982358))

(assert (=> b!4957936 m!5982510))

(assert (=> b!4957934 m!5982508))

(assert (=> b!4957934 m!5982358))

(assert (=> b!4957934 m!5982358))

(assert (=> b!4957934 m!5982518))

(assert (=> b!4957934 m!5982518))

(assert (=> b!4957934 m!5982528))

(assert (=> b!4957792 d!1595826))

(declare-fun b!4957995 () Bool)

(declare-fun e!3098483 () Bool)

(assert (=> b!4957995 (= e!3098483 true)))

(declare-fun b!4957994 () Bool)

(declare-fun e!3098482 () Bool)

(assert (=> b!4957994 (= e!3098482 e!3098483)))

(declare-fun b!4957982 () Bool)

(assert (=> b!4957982 e!3098482))

(assert (= b!4957994 b!4957995))

(assert (= b!4957982 b!4957994))

(declare-fun order!26089 () Int)

(declare-fun order!26087 () Int)

(declare-fun lambda!247140 () Int)

(declare-fun dynLambda!23081 (Int Int) Int)

(declare-fun dynLambda!23082 (Int Int) Int)

(assert (=> b!4957995 (< (dynLambda!23081 order!26087 (toValue!11288 (transformation!8337 (h!63723 rulesArg!259)))) (dynLambda!23082 order!26089 lambda!247140))))

(declare-fun order!26091 () Int)

(declare-fun dynLambda!23083 (Int Int) Int)

(assert (=> b!4957995 (< (dynLambda!23083 order!26091 (toChars!11147 (transformation!8337 (h!63723 rulesArg!259)))) (dynLambda!23082 order!26089 lambda!247140))))

(declare-fun e!3098473 () Option!14344)

(declare-datatypes ((tuple2!61888 0))(
  ( (tuple2!61889 (_1!34247 BalanceConc!29608) (_2!34247 BalanceConc!29608)) )
))
(declare-fun lt!2046612 () tuple2!61888)

(declare-fun size!37970 (BalanceConc!29608) Int)

(assert (=> b!4957982 (= e!3098473 (Some!14343 (tuple2!61883 (Token!15175 (apply!13882 (transformation!8337 (h!63723 rulesArg!259)) (_1!34247 lt!2046612)) (h!63723 rulesArg!259) (size!37970 (_1!34247 lt!2046612)) (list!18282 (_1!34247 lt!2046612))) (_2!34247 lt!2046612))))))

(declare-fun lt!2046615 () List!57398)

(assert (=> b!4957982 (= lt!2046615 (list!18282 input!1342))))

(declare-fun lt!2046611 () Unit!148168)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1798 (Regex!13570 List!57398) Unit!148168)

(assert (=> b!4957982 (= lt!2046611 (longestMatchIsAcceptedByMatchOrIsEmpty!1798 (regex!8337 (h!63723 rulesArg!259)) lt!2046615))))

(declare-fun res!2115737 () Bool)

(declare-fun isEmpty!30797 (List!57398) Bool)

(declare-datatypes ((tuple2!61890 0))(
  ( (tuple2!61891 (_1!34248 List!57398) (_2!34248 List!57398)) )
))
(declare-fun findLongestMatchInner!1837 (Regex!13570 List!57398 Int List!57398 List!57398 Int) tuple2!61890)

(assert (=> b!4957982 (= res!2115737 (isEmpty!30797 (_1!34248 (findLongestMatchInner!1837 (regex!8337 (h!63723 rulesArg!259)) Nil!57274 (size!37969 Nil!57274) lt!2046615 lt!2046615 (size!37969 lt!2046615)))))))

(declare-fun e!3098476 () Bool)

(assert (=> b!4957982 (=> res!2115737 e!3098476)))

(assert (=> b!4957982 e!3098476))

(declare-fun lt!2046613 () Unit!148168)

(assert (=> b!4957982 (= lt!2046613 lt!2046611)))

(declare-fun lt!2046608 () Unit!148168)

(declare-fun lemmaInv!1316 (TokenValueInjection!16602) Unit!148168)

(assert (=> b!4957982 (= lt!2046608 (lemmaInv!1316 (transformation!8337 (h!63723 rulesArg!259))))))

(declare-fun lt!2046607 () Unit!148168)

(declare-fun ForallOf!1209 (Int BalanceConc!29608) Unit!148168)

(assert (=> b!4957982 (= lt!2046607 (ForallOf!1209 lambda!247140 (_1!34247 lt!2046612)))))

(declare-fun lt!2046606 () Unit!148168)

(assert (=> b!4957982 (= lt!2046606 (ForallOf!1209 lambda!247140 (seqFromList!6014 (list!18282 (_1!34247 lt!2046612)))))))

(declare-fun lt!2046614 () Option!14344)

(assert (=> b!4957982 (= lt!2046614 (Some!14343 (tuple2!61883 (Token!15175 (apply!13882 (transformation!8337 (h!63723 rulesArg!259)) (_1!34247 lt!2046612)) (h!63723 rulesArg!259) (size!37970 (_1!34247 lt!2046612)) (list!18282 (_1!34247 lt!2046612))) (_2!34247 lt!2046612))))))

(declare-fun lt!2046610 () Unit!148168)

(declare-fun lemmaEqSameImage!1150 (TokenValueInjection!16602 BalanceConc!29608 BalanceConc!29608) Unit!148168)

(assert (=> b!4957982 (= lt!2046610 (lemmaEqSameImage!1150 (transformation!8337 (h!63723 rulesArg!259)) (_1!34247 lt!2046612) (seqFromList!6014 (list!18282 (_1!34247 lt!2046612)))))))

(declare-fun d!1595828 () Bool)

(declare-fun e!3098474 () Bool)

(assert (=> d!1595828 e!3098474))

(declare-fun res!2115736 () Bool)

(assert (=> d!1595828 (=> (not res!2115736) (not e!3098474))))

(declare-fun lt!2046609 () Option!14344)

(assert (=> d!1595828 (= res!2115736 (= (isDefined!11267 lt!2046609) (isDefined!11266 (maxPrefixOneRule!3607 thiss!15247 (h!63723 rulesArg!259) (list!18282 input!1342)))))))

(assert (=> d!1595828 (= lt!2046609 e!3098473)))

(declare-fun c!846309 () Bool)

(declare-fun isEmpty!30798 (BalanceConc!29608) Bool)

(assert (=> d!1595828 (= c!846309 (isEmpty!30798 (_1!34247 lt!2046612)))))

(declare-fun findLongestMatchWithZipperSequenceV2!146 (Regex!13570 BalanceConc!29608 BalanceConc!29608) tuple2!61888)

(assert (=> d!1595828 (= lt!2046612 (findLongestMatchWithZipperSequenceV2!146 (regex!8337 (h!63723 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun ruleValid!3779 (LexerInterface!7929 Rule!16474) Bool)

(assert (=> d!1595828 (ruleValid!3779 thiss!15247 (h!63723 rulesArg!259))))

(assert (=> d!1595828 (= (maxPrefixOneRuleZipperSequenceV2!321 thiss!15247 (h!63723 rulesArg!259) input!1342 totalInput!464) lt!2046609)))

(declare-fun b!4957983 () Bool)

(assert (=> b!4957983 (= e!3098476 (matchR!6614 (regex!8337 (h!63723 rulesArg!259)) (_1!34248 (findLongestMatchInner!1837 (regex!8337 (h!63723 rulesArg!259)) Nil!57274 (size!37969 Nil!57274) lt!2046615 lt!2046615 (size!37969 lt!2046615)))))))

(declare-fun b!4957984 () Bool)

(declare-fun e!3098475 () Bool)

(declare-fun e!3098477 () Bool)

(assert (=> b!4957984 (= e!3098475 e!3098477)))

(declare-fun res!2115739 () Bool)

(assert (=> b!4957984 (=> (not res!2115739) (not e!3098477))))

(assert (=> b!4957984 (= res!2115739 (= (_1!34244 (get!19829 lt!2046609)) (_1!34243 (get!19828 (maxPrefixOneRule!3607 thiss!15247 (h!63723 rulesArg!259) (list!18282 input!1342))))))))

(declare-fun b!4957985 () Bool)

(assert (=> b!4957985 (= e!3098473 None!14343)))

(declare-fun b!4957986 () Bool)

(assert (=> b!4957986 (= e!3098477 (= (list!18282 (_2!34244 (get!19829 lt!2046609))) (_2!34243 (get!19828 (maxPrefixOneRule!3607 thiss!15247 (h!63723 rulesArg!259) (list!18282 input!1342))))))))

(declare-fun b!4957987 () Bool)

(assert (=> b!4957987 (= e!3098474 e!3098475)))

(declare-fun res!2115738 () Bool)

(assert (=> b!4957987 (=> res!2115738 e!3098475)))

(assert (=> b!4957987 (= res!2115738 (not (isDefined!11267 lt!2046609)))))

(assert (= (and d!1595828 c!846309) b!4957985))

(assert (= (and d!1595828 (not c!846309)) b!4957982))

(assert (= (and b!4957982 (not res!2115737)) b!4957983))

(assert (= (and d!1595828 res!2115736) b!4957987))

(assert (= (and b!4957987 (not res!2115738)) b!4957984))

(assert (= (and b!4957984 res!2115739) b!4957986))

(declare-fun m!5982570 () Bool)

(assert (=> b!4957984 m!5982570))

(assert (=> b!4957984 m!5982358))

(assert (=> b!4957984 m!5982358))

(declare-fun m!5982572 () Bool)

(assert (=> b!4957984 m!5982572))

(assert (=> b!4957984 m!5982572))

(declare-fun m!5982574 () Bool)

(assert (=> b!4957984 m!5982574))

(assert (=> d!1595828 m!5982572))

(declare-fun m!5982576 () Bool)

(assert (=> d!1595828 m!5982576))

(assert (=> d!1595828 m!5982358))

(assert (=> d!1595828 m!5982572))

(assert (=> d!1595828 m!5982358))

(declare-fun m!5982578 () Bool)

(assert (=> d!1595828 m!5982578))

(declare-fun m!5982580 () Bool)

(assert (=> d!1595828 m!5982580))

(declare-fun m!5982582 () Bool)

(assert (=> d!1595828 m!5982582))

(declare-fun m!5982584 () Bool)

(assert (=> d!1595828 m!5982584))

(declare-fun m!5982586 () Bool)

(assert (=> b!4957982 m!5982586))

(declare-fun m!5982588 () Bool)

(assert (=> b!4957982 m!5982588))

(declare-fun m!5982590 () Bool)

(assert (=> b!4957982 m!5982590))

(declare-fun m!5982592 () Bool)

(assert (=> b!4957982 m!5982592))

(declare-fun m!5982594 () Bool)

(assert (=> b!4957982 m!5982594))

(assert (=> b!4957982 m!5982358))

(declare-fun m!5982596 () Bool)

(assert (=> b!4957982 m!5982596))

(assert (=> b!4957982 m!5982588))

(declare-fun m!5982598 () Bool)

(assert (=> b!4957982 m!5982598))

(declare-fun m!5982600 () Bool)

(assert (=> b!4957982 m!5982600))

(assert (=> b!4957982 m!5982590))

(assert (=> b!4957982 m!5982592))

(assert (=> b!4957982 m!5982592))

(declare-fun m!5982602 () Bool)

(assert (=> b!4957982 m!5982602))

(assert (=> b!4957982 m!5982598))

(declare-fun m!5982604 () Bool)

(assert (=> b!4957982 m!5982604))

(declare-fun m!5982606 () Bool)

(assert (=> b!4957982 m!5982606))

(declare-fun m!5982608 () Bool)

(assert (=> b!4957982 m!5982608))

(declare-fun m!5982610 () Bool)

(assert (=> b!4957982 m!5982610))

(assert (=> b!4957986 m!5982570))

(assert (=> b!4957986 m!5982358))

(assert (=> b!4957986 m!5982572))

(assert (=> b!4957986 m!5982358))

(declare-fun m!5982612 () Bool)

(assert (=> b!4957986 m!5982612))

(assert (=> b!4957986 m!5982572))

(assert (=> b!4957986 m!5982574))

(assert (=> b!4957983 m!5982588))

(assert (=> b!4957983 m!5982598))

(assert (=> b!4957983 m!5982588))

(assert (=> b!4957983 m!5982598))

(assert (=> b!4957983 m!5982600))

(declare-fun m!5982614 () Bool)

(assert (=> b!4957983 m!5982614))

(assert (=> b!4957987 m!5982584))

(assert (=> b!4957792 d!1595828))

(declare-fun d!1595860 () Bool)

(assert (=> d!1595860 true))

(declare-fun lt!2046639 () Bool)

(declare-fun lambda!247143 () Int)

(declare-fun forall!13305 (List!57399 Int) Bool)

(assert (=> d!1595860 (= lt!2046639 (forall!13305 rulesArg!259 lambda!247143))))

(declare-fun e!3098507 () Bool)

(assert (=> d!1595860 (= lt!2046639 e!3098507)))

(declare-fun res!2115763 () Bool)

(assert (=> d!1595860 (=> res!2115763 e!3098507)))

(assert (=> d!1595860 (= res!2115763 (not (is-Cons!57275 rulesArg!259)))))

(assert (=> d!1595860 (= (rulesValidInductive!3240 thiss!15247 rulesArg!259) lt!2046639)))

(declare-fun b!4958024 () Bool)

(declare-fun e!3098506 () Bool)

(assert (=> b!4958024 (= e!3098507 e!3098506)))

(declare-fun res!2115762 () Bool)

(assert (=> b!4958024 (=> (not res!2115762) (not e!3098506))))

(assert (=> b!4958024 (= res!2115762 (ruleValid!3779 thiss!15247 (h!63723 rulesArg!259)))))

(declare-fun b!4958025 () Bool)

(assert (=> b!4958025 (= e!3098506 (rulesValidInductive!3240 thiss!15247 (t!367965 rulesArg!259)))))

(assert (= (and d!1595860 (not res!2115763)) b!4958024))

(assert (= (and b!4958024 res!2115762) b!4958025))

(declare-fun m!5982628 () Bool)

(assert (=> d!1595860 m!5982628))

(assert (=> b!4958024 m!5982578))

(assert (=> b!4958025 m!5982526))

(assert (=> b!4957781 d!1595860))

(declare-fun d!1595862 () Bool)

(assert (=> d!1595862 (= (get!19828 lt!2046477) (v!50327 lt!2046477))))

(assert (=> b!4957791 d!1595862))

(declare-fun d!1595864 () Bool)

(assert (=> d!1595864 (= (get!19829 lt!2046475) (v!50328 lt!2046475))))

(assert (=> b!4957791 d!1595864))

(declare-fun d!1595868 () Bool)

(declare-fun list!18284 (Conc!15089) List!57398)

(assert (=> d!1595868 (= (list!18282 (_2!34244 lt!2046471)) (list!18284 (c!846283 (_2!34244 lt!2046471))))))

(declare-fun bs!1182595 () Bool)

(assert (= bs!1182595 d!1595868))

(declare-fun m!5982642 () Bool)

(assert (=> bs!1182595 m!5982642))

(assert (=> b!4957789 d!1595868))

(declare-fun d!1595870 () Bool)

(declare-fun e!3098510 () Bool)

(assert (=> d!1595870 e!3098510))

(declare-fun res!2115766 () Bool)

(assert (=> d!1595870 (=> res!2115766 e!3098510)))

(declare-fun lt!2046642 () Bool)

(assert (=> d!1595870 (= res!2115766 (not lt!2046642))))

(declare-fun drop!2327 (List!57398 Int) List!57398)

(assert (=> d!1595870 (= lt!2046642 (= lt!2046470 (drop!2327 (list!18282 totalInput!464) (- (size!37969 (list!18282 totalInput!464)) (size!37969 lt!2046470)))))))

(assert (=> d!1595870 (= (isSuffix!1136 lt!2046470 (list!18282 totalInput!464)) lt!2046642)))

(declare-fun b!4958030 () Bool)

(assert (=> b!4958030 (= e!3098510 (>= (size!37969 (list!18282 totalInput!464)) (size!37969 lt!2046470)))))

(assert (= (and d!1595870 (not res!2115766)) b!4958030))

(assert (=> d!1595870 m!5982354))

(declare-fun m!5982644 () Bool)

(assert (=> d!1595870 m!5982644))

(assert (=> d!1595870 m!5982492))

(assert (=> d!1595870 m!5982354))

(declare-fun m!5982646 () Bool)

(assert (=> d!1595870 m!5982646))

(assert (=> b!4958030 m!5982354))

(assert (=> b!4958030 m!5982644))

(assert (=> b!4958030 m!5982492))

(assert (=> b!4957787 d!1595870))

(declare-fun d!1595872 () Bool)

(assert (=> d!1595872 (= (list!18282 totalInput!464) (list!18284 (c!846283 totalInput!464)))))

(declare-fun bs!1182596 () Bool)

(assert (= bs!1182596 d!1595872))

(declare-fun m!5982648 () Bool)

(assert (=> bs!1182596 m!5982648))

(assert (=> b!4957787 d!1595872))

(declare-fun d!1595874 () Bool)

(assert (=> d!1595874 (= (list!18282 input!1342) (list!18284 (c!846283 input!1342)))))

(declare-fun bs!1182597 () Bool)

(assert (= bs!1182597 d!1595874))

(declare-fun m!5982650 () Bool)

(assert (=> bs!1182597 m!5982650))

(assert (=> b!4957787 d!1595874))

(declare-fun d!1595876 () Bool)

(declare-fun isBalanced!4179 (Conc!15089) Bool)

(assert (=> d!1595876 (= (inv!74743 input!1342) (isBalanced!4179 (c!846283 input!1342)))))

(declare-fun bs!1182598 () Bool)

(assert (= bs!1182598 d!1595876))

(declare-fun m!5982652 () Bool)

(assert (=> bs!1182598 m!5982652))

(assert (=> start!522600 d!1595876))

(declare-fun d!1595878 () Bool)

(assert (=> d!1595878 (= (inv!74743 totalInput!464) (isBalanced!4179 (c!846283 totalInput!464)))))

(declare-fun bs!1182599 () Bool)

(assert (= bs!1182599 d!1595878))

(declare-fun m!5982654 () Bool)

(assert (=> bs!1182599 m!5982654))

(assert (=> start!522600 d!1595878))

(declare-fun tp!1390473 () Bool)

(declare-fun tp!1390471 () Bool)

(declare-fun e!3098516 () Bool)

(declare-fun b!4958039 () Bool)

(assert (=> b!4958039 (= e!3098516 (and (inv!74742 (left!41768 (c!846283 totalInput!464))) tp!1390471 (inv!74742 (right!42098 (c!846283 totalInput!464))) tp!1390473))))

(declare-fun b!4958041 () Bool)

(declare-fun e!3098515 () Bool)

(declare-fun tp!1390472 () Bool)

(assert (=> b!4958041 (= e!3098515 tp!1390472)))

(declare-fun b!4958040 () Bool)

(declare-fun inv!74752 (IArray!30239) Bool)

(assert (=> b!4958040 (= e!3098516 (and (inv!74752 (xs!18415 (c!846283 totalInput!464))) e!3098515))))

(assert (=> b!4957785 (= tp!1390443 (and (inv!74742 (c!846283 totalInput!464)) e!3098516))))

(assert (= (and b!4957785 (is-Node!15089 (c!846283 totalInput!464))) b!4958039))

(assert (= b!4958040 b!4958041))

(assert (= (and b!4957785 (is-Leaf!25083 (c!846283 totalInput!464))) b!4958040))

(declare-fun m!5982656 () Bool)

(assert (=> b!4958039 m!5982656))

(declare-fun m!5982658 () Bool)

(assert (=> b!4958039 m!5982658))

(declare-fun m!5982660 () Bool)

(assert (=> b!4958040 m!5982660))

(assert (=> b!4957785 m!5982362))

(declare-fun b!4958052 () Bool)

(declare-fun b_free!132387 () Bool)

(declare-fun b_next!133177 () Bool)

(assert (=> b!4958052 (= b_free!132387 (not b_next!133177))))

(declare-fun tp!1390483 () Bool)

(declare-fun b_and!347239 () Bool)

(assert (=> b!4958052 (= tp!1390483 b_and!347239)))

(declare-fun b_free!132389 () Bool)

(declare-fun b_next!133179 () Bool)

(assert (=> b!4958052 (= b_free!132389 (not b_next!133179))))

(declare-fun tp!1390482 () Bool)

(declare-fun b_and!347241 () Bool)

(assert (=> b!4958052 (= tp!1390482 b_and!347241)))

(declare-fun e!3098527 () Bool)

(assert (=> b!4958052 (= e!3098527 (and tp!1390483 tp!1390482))))

(declare-fun tp!1390485 () Bool)

(declare-fun b!4958051 () Bool)

(declare-fun e!3098528 () Bool)

(assert (=> b!4958051 (= e!3098528 (and tp!1390485 (inv!74739 (tag!9201 (h!63723 (t!367965 rulesArg!259)))) (inv!74744 (transformation!8337 (h!63723 (t!367965 rulesArg!259)))) e!3098527))))

(declare-fun b!4958050 () Bool)

(declare-fun e!3098526 () Bool)

(declare-fun tp!1390484 () Bool)

(assert (=> b!4958050 (= e!3098526 (and e!3098528 tp!1390484))))

(assert (=> b!4957790 (= tp!1390444 e!3098526)))

(assert (= b!4958051 b!4958052))

(assert (= b!4958050 b!4958051))

(assert (= (and b!4957790 (is-Cons!57275 (t!367965 rulesArg!259))) b!4958050))

(declare-fun m!5982662 () Bool)

(assert (=> b!4958051 m!5982662))

(declare-fun m!5982664 () Bool)

(assert (=> b!4958051 m!5982664))

(declare-fun tp!1390486 () Bool)

(declare-fun b!4958053 () Bool)

(declare-fun tp!1390488 () Bool)

(declare-fun e!3098530 () Bool)

(assert (=> b!4958053 (= e!3098530 (and (inv!74742 (left!41768 (c!846283 input!1342))) tp!1390486 (inv!74742 (right!42098 (c!846283 input!1342))) tp!1390488))))

(declare-fun b!4958055 () Bool)

(declare-fun e!3098529 () Bool)

(declare-fun tp!1390487 () Bool)

(assert (=> b!4958055 (= e!3098529 tp!1390487)))

(declare-fun b!4958054 () Bool)

(assert (=> b!4958054 (= e!3098530 (and (inv!74752 (xs!18415 (c!846283 input!1342))) e!3098529))))

(assert (=> b!4957795 (= tp!1390445 (and (inv!74742 (c!846283 input!1342)) e!3098530))))

(assert (= (and b!4957795 (is-Node!15089 (c!846283 input!1342))) b!4958053))

(assert (= b!4958054 b!4958055))

(assert (= (and b!4957795 (is-Leaf!25083 (c!846283 input!1342))) b!4958054))

(declare-fun m!5982666 () Bool)

(assert (=> b!4958053 m!5982666))

(declare-fun m!5982668 () Bool)

(assert (=> b!4958053 m!5982668))

(declare-fun m!5982670 () Bool)

(assert (=> b!4958054 m!5982670))

(assert (=> b!4957795 m!5982352))

(declare-fun e!3098533 () Bool)

(assert (=> b!4957794 (= tp!1390446 e!3098533)))

(declare-fun b!4958068 () Bool)

(declare-fun tp!1390503 () Bool)

(assert (=> b!4958068 (= e!3098533 tp!1390503)))

(declare-fun b!4958067 () Bool)

(declare-fun tp!1390502 () Bool)

(declare-fun tp!1390500 () Bool)

(assert (=> b!4958067 (= e!3098533 (and tp!1390502 tp!1390500))))

(declare-fun b!4958066 () Bool)

(declare-fun tp_is_empty!36285 () Bool)

(assert (=> b!4958066 (= e!3098533 tp_is_empty!36285)))

(declare-fun b!4958069 () Bool)

(declare-fun tp!1390499 () Bool)

(declare-fun tp!1390501 () Bool)

(assert (=> b!4958069 (= e!3098533 (and tp!1390499 tp!1390501))))

(assert (= (and b!4957794 (is-ElementMatch!13570 (regex!8337 (h!63723 rulesArg!259)))) b!4958066))

(assert (= (and b!4957794 (is-Concat!22218 (regex!8337 (h!63723 rulesArg!259)))) b!4958067))

(assert (= (and b!4957794 (is-Star!13570 (regex!8337 (h!63723 rulesArg!259)))) b!4958068))

(assert (= (and b!4957794 (is-Union!13570 (regex!8337 (h!63723 rulesArg!259)))) b!4958069))

(push 1)

(assert (not b!4957984))

(assert (not b!4957986))

(assert (not b!4957983))

(assert (not b!4958051))

(assert b_and!347239)

(assert (not b!4957917))

(assert (not d!1595828))

(assert (not b!4957785))

(assert (not d!1595802))

(assert (not d!1595800))

(assert (not b_next!133177))

(assert b_and!347233)

(assert (not d!1595870))

(assert b_and!347231)

(assert (not b!4958050))

(assert (not b!4957941))

(assert (not b!4958039))

(assert (not b!4958055))

(assert (not b!4957898))

(assert (not d!1595826))

(assert (not b!4958068))

(assert (not d!1595876))

(assert (not b!4957936))

(assert (not b!4957866))

(assert (not d!1595878))

(assert (not b!4957869))

(assert (not d!1595812))

(assert (not b!4958069))

(assert (not b!4957900))

(assert (not b!4957856))

(assert (not b!4957795))

(assert (not b!4957915))

(assert (not b_next!133169))

(assert (not bm!345917))

(assert (not b!4958054))

(assert (not b!4957938))

(assert (not b!4957871))

(assert (not b!4958041))

(assert (not b!4957934))

(assert (not d!1595868))

(assert (not d!1595822))

(assert (not d!1595798))

(assert (not b!4957916))

(assert b_and!347241)

(assert (not b!4957939))

(assert (not b!4958067))

(assert (not b!4957982))

(assert (not bm!345920))

(assert (not b!4957897))

(assert (not d!1595818))

(assert (not b_next!133171))

(assert (not b!4958053))

(assert (not b!4957902))

(assert (not b!4957896))

(assert tp_is_empty!36285)

(assert (not b!4957905))

(assert (not b_next!133179))

(assert (not b!4957901))

(assert (not d!1595872))

(assert (not b!4958030))

(assert (not bm!345923))

(assert (not b!4957894))

(assert (not b!4957987))

(assert (not b!4957895))

(assert (not b!4957868))

(assert (not d!1595860))

(assert (not b!4957937))

(assert (not d!1595814))

(assert (not b!4958040))

(assert (not b!4957940))

(assert (not b!4958024))

(assert (not b!4958025))

(assert (not d!1595874))

(check-sat)

(pop 1)

(push 1)

(assert b_and!347231)

(assert (not b_next!133169))

(assert b_and!347241)

(assert (not b_next!133171))

(assert b_and!347239)

(assert (not b_next!133179))

(assert (not b_next!133177))

(assert b_and!347233)

(check-sat)

(pop 1)

