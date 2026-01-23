; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!525824 () Bool)

(assert start!525824)

(declare-fun b!4981286 () Bool)

(declare-fun b_free!133111 () Bool)

(declare-fun b_next!133901 () Bool)

(assert (=> b!4981286 (= b_free!133111 (not b_next!133901))))

(declare-fun tp!1396526 () Bool)

(declare-fun b_and!349603 () Bool)

(assert (=> b!4981286 (= tp!1396526 b_and!349603)))

(declare-fun b_free!133113 () Bool)

(declare-fun b_next!133903 () Bool)

(assert (=> b!4981286 (= b_free!133113 (not b_next!133903))))

(declare-fun tp!1396528 () Bool)

(declare-fun b_and!349605 () Bool)

(assert (=> b!4981286 (= tp!1396528 b_and!349605)))

(declare-fun b!4981295 () Bool)

(declare-fun e!3113368 () Bool)

(assert (=> b!4981295 (= e!3113368 true)))

(declare-fun b!4981294 () Bool)

(declare-fun e!3113367 () Bool)

(assert (=> b!4981294 (= e!3113367 e!3113368)))

(declare-fun b!4981281 () Bool)

(assert (=> b!4981281 e!3113367))

(assert (= b!4981294 b!4981295))

(assert (= b!4981281 b!4981294))

(declare-fun order!26479 () Int)

(declare-fun order!26481 () Int)

(declare-fun lambda!247827 () Int)

(declare-datatypes ((C!27622 0))(
  ( (C!27623 (val!23177 Int)) )
))
(declare-datatypes ((List!57702 0))(
  ( (Nil!57578) (Cons!57578 (h!64026 C!27622) (t!369794 List!57702)) )
))
(declare-datatypes ((IArray!30471 0))(
  ( (IArray!30472 (innerList!15293 List!57702)) )
))
(declare-datatypes ((List!57703 0))(
  ( (Nil!57579) (Cons!57579 (h!64027 (_ BitVec 16)) (t!369795 List!57703)) )
))
(declare-datatypes ((String!65690 0))(
  ( (String!65691 (value!270306 String)) )
))
(declare-datatypes ((Regex!13686 0))(
  ( (ElementMatch!13686 (c!849982 C!27622)) (Concat!22449 (regOne!27884 Regex!13686) (regTwo!27884 Regex!13686)) (EmptyExpr!13686) (Star!13686 (reg!14015 Regex!13686)) (EmptyLang!13686) (Union!13686 (regOne!27885 Regex!13686) (regTwo!27885 Regex!13686)) )
))
(declare-datatypes ((Conc!15205 0))(
  ( (Node!15205 (left!42084 Conc!15205) (right!42414 Conc!15205) (csize!30640 Int) (cheight!15416 Int)) (Leaf!25257 (xs!18531 IArray!30471) (csize!30641 Int)) (Empty!15205) )
))
(declare-datatypes ((BalanceConc!29840 0))(
  ( (BalanceConc!29841 (c!849983 Conc!15205)) )
))
(declare-datatypes ((TokenValue!8763 0))(
  ( (FloatLiteralValue!17526 (text!61786 List!57703)) (TokenValueExt!8762 (__x!34819 Int)) (Broken!43815 (value!270307 List!57703)) (Object!8886) (End!8763) (Def!8763) (Underscore!8763) (Match!8763) (Else!8763) (Error!8763) (Case!8763) (If!8763) (Extends!8763) (Abstract!8763) (Class!8763) (Val!8763) (DelimiterValue!17526 (del!8823 List!57703)) (KeywordValue!8769 (value!270308 List!57703)) (CommentValue!17526 (value!270309 List!57703)) (WhitespaceValue!17526 (value!270310 List!57703)) (IndentationValue!8763 (value!270311 List!57703)) (String!65692) (Int32!8763) (Broken!43816 (value!270312 List!57703)) (Boolean!8764) (Unit!148638) (OperatorValue!8766 (op!8823 List!57703)) (IdentifierValue!17526 (value!270313 List!57703)) (IdentifierValue!17527 (value!270314 List!57703)) (WhitespaceValue!17527 (value!270315 List!57703)) (True!17526) (False!17526) (Broken!43817 (value!270316 List!57703)) (Broken!43818 (value!270317 List!57703)) (True!17527) (RightBrace!8763) (RightBracket!8763) (Colon!8763) (Null!8763) (Comma!8763) (LeftBracket!8763) (False!17527) (LeftBrace!8763) (ImaginaryLiteralValue!8763 (text!61787 List!57703)) (StringLiteralValue!26289 (value!270318 List!57703)) (EOFValue!8763 (value!270319 List!57703)) (IdentValue!8763 (value!270320 List!57703)) (DelimiterValue!17527 (value!270321 List!57703)) (DedentValue!8763 (value!270322 List!57703)) (NewLineValue!8763 (value!270323 List!57703)) (IntegerValue!26289 (value!270324 (_ BitVec 32)) (text!61788 List!57703)) (IntegerValue!26290 (value!270325 Int) (text!61789 List!57703)) (Times!8763) (Or!8763) (Equal!8763) (Minus!8763) (Broken!43819 (value!270326 List!57703)) (And!8763) (Div!8763) (LessEqual!8763) (Mod!8763) (Concat!22450) (Not!8763) (Plus!8763) (SpaceValue!8763 (value!270327 List!57703)) (IntegerValue!26291 (value!270328 Int) (text!61790 List!57703)) (StringLiteralValue!26290 (text!61791 List!57703)) (FloatLiteralValue!17527 (text!61792 List!57703)) (BytesLiteralValue!8763 (value!270329 List!57703)) (CommentValue!17527 (value!270330 List!57703)) (StringLiteralValue!26291 (value!270331 List!57703)) (ErrorTokenValue!8763 (msg!8824 List!57703)) )
))
(declare-datatypes ((TokenValueInjection!16834 0))(
  ( (TokenValueInjection!16835 (toValue!11440 Int) (toChars!11299 Int)) )
))
(declare-datatypes ((Rule!16706 0))(
  ( (Rule!16707 (regex!8453 Regex!13686) (tag!9317 String!65690) (isSeparator!8453 Bool) (transformation!8453 TokenValueInjection!16834)) )
))
(declare-fun rule!200 () Rule!16706)

(declare-fun dynLambda!23343 (Int Int) Int)

(declare-fun dynLambda!23344 (Int Int) Int)

(assert (=> b!4981295 (< (dynLambda!23343 order!26479 (toValue!11440 (transformation!8453 rule!200))) (dynLambda!23344 order!26481 lambda!247827))))

(declare-fun order!26483 () Int)

(declare-fun dynLambda!23345 (Int Int) Int)

(assert (=> b!4981295 (< (dynLambda!23345 order!26483 (toChars!11299 (transformation!8453 rule!200))) (dynLambda!23344 order!26481 lambda!247827))))

(declare-fun b!4981275 () Bool)

(declare-fun res!2126419 () Bool)

(declare-fun e!3113358 () Bool)

(assert (=> b!4981275 (=> res!2126419 e!3113358)))

(declare-fun lt!2057876 () Bool)

(assert (=> b!4981275 (= res!2126419 (not lt!2057876))))

(declare-fun tp!1396527 () Bool)

(declare-fun b!4981276 () Bool)

(declare-fun e!3113359 () Bool)

(declare-fun e!3113353 () Bool)

(declare-fun inv!75404 (String!65690) Bool)

(declare-fun inv!75407 (TokenValueInjection!16834) Bool)

(assert (=> b!4981276 (= e!3113353 (and tp!1396527 (inv!75404 (tag!9317 rule!200)) (inv!75407 (transformation!8453 rule!200)) e!3113359))))

(declare-fun b!4981277 () Bool)

(declare-fun e!3113354 () Bool)

(declare-fun e!3113355 () Bool)

(assert (=> b!4981277 (= e!3113354 e!3113355)))

(declare-fun res!2126418 () Bool)

(assert (=> b!4981277 (=> (not res!2126418) (not e!3113355))))

(declare-fun lt!2057881 () List!57702)

(declare-fun totalInput!520 () BalanceConc!29840)

(declare-fun isSuffix!1252 (List!57702 List!57702) Bool)

(declare-fun list!18457 (BalanceConc!29840) List!57702)

(assert (=> b!4981277 (= res!2126418 (isSuffix!1252 lt!2057881 (list!18457 totalInput!520)))))

(declare-fun input!1580 () BalanceConc!29840)

(assert (=> b!4981277 (= lt!2057881 (list!18457 input!1580))))

(declare-fun b!4981278 () Bool)

(declare-fun e!3113357 () Bool)

(assert (=> b!4981278 (= e!3113357 e!3113358)))

(declare-fun res!2126422 () Bool)

(assert (=> b!4981278 (=> res!2126422 e!3113358)))

(declare-datatypes ((LexerInterface!8045 0))(
  ( (LexerInterfaceExt!8042 (__x!34820 Int)) (Lexer!8043) )
))
(declare-fun thiss!16165 () LexerInterface!8045)

(declare-datatypes ((Token!15362 0))(
  ( (Token!15363 (value!270332 TokenValue!8763) (rule!11705 Rule!16706) (size!38202 Int) (originalCharacters!8712 List!57702)) )
))
(declare-datatypes ((tuple2!62504 0))(
  ( (tuple2!62505 (_1!34555 Token!15362) (_2!34555 List!57702)) )
))
(declare-datatypes ((Option!14525 0))(
  ( (None!14524) (Some!14524 (v!50521 tuple2!62504)) )
))
(declare-fun isDefined!11434 (Option!14525) Bool)

(declare-fun maxPrefixOneRule!3669 (LexerInterface!8045 Rule!16706 List!57702) Option!14525)

(assert (=> b!4981278 (= res!2126422 (not (= lt!2057876 (isDefined!11434 (maxPrefixOneRule!3669 thiss!16165 rule!200 lt!2057881)))))))

(declare-datatypes ((tuple2!62506 0))(
  ( (tuple2!62507 (_1!34556 BalanceConc!29840) (_2!34556 BalanceConc!29840)) )
))
(declare-fun lt!2057877 () tuple2!62506)

(declare-fun lt!2057873 () List!57702)

(declare-datatypes ((tuple2!62508 0))(
  ( (tuple2!62509 (_1!34557 Token!15362) (_2!34557 BalanceConc!29840)) )
))
(declare-datatypes ((Option!14526 0))(
  ( (None!14525) (Some!14525 (v!50522 tuple2!62508)) )
))
(declare-fun isDefined!11435 (Option!14526) Bool)

(declare-fun apply!13940 (TokenValueInjection!16834 BalanceConc!29840) TokenValue!8763)

(declare-fun size!38203 (BalanceConc!29840) Int)

(assert (=> b!4981278 (= lt!2057876 (isDefined!11435 (Some!14525 (tuple2!62509 (Token!15363 (apply!13940 (transformation!8453 rule!200) (_1!34556 lt!2057877)) rule!200 (size!38203 (_1!34556 lt!2057877)) lt!2057873) (_2!34556 lt!2057877)))))))

(declare-datatypes ((Unit!148639 0))(
  ( (Unit!148640) )
))
(declare-fun lt!2057875 () Unit!148639)

(declare-fun lt!2057880 () BalanceConc!29840)

(declare-fun ForallOf!1263 (Int BalanceConc!29840) Unit!148639)

(assert (=> b!4981278 (= lt!2057875 (ForallOf!1263 lambda!247827 lt!2057880))))

(declare-fun seqFromList!6074 (List!57702) BalanceConc!29840)

(assert (=> b!4981278 (= lt!2057880 (seqFromList!6074 lt!2057873))))

(assert (=> b!4981278 (= lt!2057873 (list!18457 (_1!34556 lt!2057877)))))

(declare-fun lt!2057879 () Unit!148639)

(assert (=> b!4981278 (= lt!2057879 (ForallOf!1263 lambda!247827 (_1!34556 lt!2057877)))))

(declare-fun b!4981279 () Bool)

(declare-fun e!3113352 () Bool)

(declare-fun tp!1396529 () Bool)

(declare-fun inv!75408 (Conc!15205) Bool)

(assert (=> b!4981279 (= e!3113352 (and (inv!75408 (c!849983 totalInput!520)) tp!1396529))))

(declare-fun b!4981280 () Bool)

(declare-fun e!3113361 () Bool)

(assert (=> b!4981280 (= e!3113361 (not e!3113357))))

(declare-fun res!2126417 () Bool)

(assert (=> b!4981280 (=> res!2126417 e!3113357)))

(declare-fun semiInverseModEq!3746 (Int Int) Bool)

(assert (=> b!4981280 (= res!2126417 (not (semiInverseModEq!3746 (toChars!11299 (transformation!8453 rule!200)) (toValue!11440 (transformation!8453 rule!200)))))))

(declare-fun lt!2057874 () Unit!148639)

(declare-fun lemmaInv!1376 (TokenValueInjection!16834) Unit!148639)

(assert (=> b!4981280 (= lt!2057874 (lemmaInv!1376 (transformation!8453 rule!200)))))

(declare-fun e!3113362 () Bool)

(assert (=> b!4981280 e!3113362))

(declare-fun res!2126423 () Bool)

(assert (=> b!4981280 (=> res!2126423 e!3113362)))

(declare-datatypes ((tuple2!62510 0))(
  ( (tuple2!62511 (_1!34558 List!57702) (_2!34558 List!57702)) )
))
(declare-fun lt!2057882 () tuple2!62510)

(declare-fun isEmpty!31083 (List!57702) Bool)

(assert (=> b!4981280 (= res!2126423 (isEmpty!31083 (_1!34558 lt!2057882)))))

(declare-fun findLongestMatchInner!1897 (Regex!13686 List!57702 Int List!57702 List!57702 Int) tuple2!62510)

(declare-fun size!38204 (List!57702) Int)

(assert (=> b!4981280 (= lt!2057882 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))))

(declare-fun lt!2057878 () Unit!148639)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1858 (Regex!13686 List!57702) Unit!148639)

(assert (=> b!4981280 (= lt!2057878 (longestMatchIsAcceptedByMatchOrIsEmpty!1858 (regex!8453 rule!200) lt!2057881))))

(declare-fun res!2126420 () Bool)

(assert (=> b!4981281 (=> res!2126420 e!3113357)))

(declare-fun Forall!1803 (Int) Bool)

(assert (=> b!4981281 (= res!2126420 (not (Forall!1803 lambda!247827)))))

(declare-fun b!4981283 () Bool)

(declare-fun res!2126424 () Bool)

(assert (=> b!4981283 (=> (not res!2126424) (not e!3113354))))

(declare-fun ruleValid!3861 (LexerInterface!8045 Rule!16706) Bool)

(assert (=> b!4981283 (= res!2126424 (ruleValid!3861 thiss!16165 rule!200))))

(declare-fun b!4981284 () Bool)

(declare-fun e!3113356 () Bool)

(declare-fun tp!1396525 () Bool)

(assert (=> b!4981284 (= e!3113356 (and (inv!75408 (c!849983 input!1580)) tp!1396525))))

(declare-fun b!4981285 () Bool)

(assert (=> b!4981285 (= e!3113358 (= (list!18457 lt!2057880) lt!2057873))))

(declare-fun b!4981282 () Bool)

(declare-fun matchR!6680 (Regex!13686 List!57702) Bool)

(assert (=> b!4981282 (= e!3113362 (matchR!6680 (regex!8453 rule!200) (_1!34558 lt!2057882)))))

(declare-fun res!2126416 () Bool)

(assert (=> start!525824 (=> (not res!2126416) (not e!3113354))))

(assert (=> start!525824 (= res!2126416 (is-Lexer!8043 thiss!16165))))

(assert (=> start!525824 e!3113354))

(assert (=> start!525824 true))

(assert (=> start!525824 e!3113353))

(declare-fun inv!75409 (BalanceConc!29840) Bool)

(assert (=> start!525824 (and (inv!75409 totalInput!520) e!3113352)))

(assert (=> start!525824 (and (inv!75409 input!1580) e!3113356)))

(assert (=> b!4981286 (= e!3113359 (and tp!1396526 tp!1396528))))

(declare-fun b!4981287 () Bool)

(assert (=> b!4981287 (= e!3113355 e!3113361)))

(declare-fun res!2126421 () Bool)

(assert (=> b!4981287 (=> (not res!2126421) (not e!3113361))))

(declare-fun isEmpty!31084 (BalanceConc!29840) Bool)

(assert (=> b!4981287 (= res!2126421 (not (isEmpty!31084 (_1!34556 lt!2057877))))))

(declare-fun findLongestMatchWithZipperSequenceV2!216 (Regex!13686 BalanceConc!29840 BalanceConc!29840) tuple2!62506)

(assert (=> b!4981287 (= lt!2057877 (findLongestMatchWithZipperSequenceV2!216 (regex!8453 rule!200) input!1580 totalInput!520))))

(assert (= (and start!525824 res!2126416) b!4981283))

(assert (= (and b!4981283 res!2126424) b!4981277))

(assert (= (and b!4981277 res!2126418) b!4981287))

(assert (= (and b!4981287 res!2126421) b!4981280))

(assert (= (and b!4981280 (not res!2126423)) b!4981282))

(assert (= (and b!4981280 (not res!2126417)) b!4981281))

(assert (= (and b!4981281 (not res!2126420)) b!4981278))

(assert (= (and b!4981278 (not res!2126422)) b!4981275))

(assert (= (and b!4981275 (not res!2126419)) b!4981285))

(assert (= b!4981276 b!4981286))

(assert (= start!525824 b!4981276))

(assert (= start!525824 b!4981279))

(assert (= start!525824 b!4981284))

(declare-fun m!6012362 () Bool)

(assert (=> start!525824 m!6012362))

(declare-fun m!6012364 () Bool)

(assert (=> start!525824 m!6012364))

(declare-fun m!6012366 () Bool)

(assert (=> b!4981276 m!6012366))

(declare-fun m!6012368 () Bool)

(assert (=> b!4981276 m!6012368))

(declare-fun m!6012370 () Bool)

(assert (=> b!4981277 m!6012370))

(assert (=> b!4981277 m!6012370))

(declare-fun m!6012372 () Bool)

(assert (=> b!4981277 m!6012372))

(declare-fun m!6012374 () Bool)

(assert (=> b!4981277 m!6012374))

(declare-fun m!6012376 () Bool)

(assert (=> b!4981283 m!6012376))

(declare-fun m!6012378 () Bool)

(assert (=> b!4981279 m!6012378))

(declare-fun m!6012380 () Bool)

(assert (=> b!4981285 m!6012380))

(declare-fun m!6012382 () Bool)

(assert (=> b!4981278 m!6012382))

(declare-fun m!6012384 () Bool)

(assert (=> b!4981278 m!6012384))

(assert (=> b!4981278 m!6012382))

(declare-fun m!6012386 () Bool)

(assert (=> b!4981278 m!6012386))

(declare-fun m!6012388 () Bool)

(assert (=> b!4981278 m!6012388))

(declare-fun m!6012390 () Bool)

(assert (=> b!4981278 m!6012390))

(declare-fun m!6012392 () Bool)

(assert (=> b!4981278 m!6012392))

(declare-fun m!6012394 () Bool)

(assert (=> b!4981278 m!6012394))

(declare-fun m!6012396 () Bool)

(assert (=> b!4981278 m!6012396))

(declare-fun m!6012398 () Bool)

(assert (=> b!4981278 m!6012398))

(declare-fun m!6012400 () Bool)

(assert (=> b!4981281 m!6012400))

(declare-fun m!6012402 () Bool)

(assert (=> b!4981282 m!6012402))

(declare-fun m!6012404 () Bool)

(assert (=> b!4981284 m!6012404))

(declare-fun m!6012406 () Bool)

(assert (=> b!4981280 m!6012406))

(declare-fun m!6012408 () Bool)

(assert (=> b!4981280 m!6012408))

(declare-fun m!6012410 () Bool)

(assert (=> b!4981280 m!6012410))

(declare-fun m!6012412 () Bool)

(assert (=> b!4981280 m!6012412))

(declare-fun m!6012414 () Bool)

(assert (=> b!4981280 m!6012414))

(declare-fun m!6012416 () Bool)

(assert (=> b!4981280 m!6012416))

(assert (=> b!4981280 m!6012414))

(assert (=> b!4981280 m!6012410))

(declare-fun m!6012418 () Bool)

(assert (=> b!4981280 m!6012418))

(declare-fun m!6012420 () Bool)

(assert (=> b!4981287 m!6012420))

(declare-fun m!6012422 () Bool)

(assert (=> b!4981287 m!6012422))

(push 1)

(assert (not b_next!133901))

(assert (not b_next!133903))

(assert (not b!4981282))

(assert (not b!4981279))

(assert (not b!4981287))

(assert (not b!4981277))

(assert (not b!4981281))

(assert b_and!349603)

(assert (not b!4981276))

(assert (not b!4981280))

(assert (not start!525824))

(assert (not b!4981278))

(assert b_and!349605)

(assert (not b!4981283))

(assert (not b!4981284))

(assert (not b!4981285))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349605)

(assert b_and!349603)

(assert (not b_next!133903))

(assert (not b_next!133901))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1604124 () Bool)

(declare-fun list!18459 (Conc!15205) List!57702)

(assert (=> d!1604124 (= (list!18457 lt!2057880) (list!18459 (c!849983 lt!2057880)))))

(declare-fun bs!1184263 () Bool)

(assert (= bs!1184263 d!1604124))

(declare-fun m!6012486 () Bool)

(assert (=> bs!1184263 m!6012486))

(assert (=> b!4981285 d!1604124))

(declare-fun d!1604126 () Bool)

(declare-fun res!2126460 () Bool)

(declare-fun e!3113410 () Bool)

(assert (=> d!1604126 (=> (not res!2126460) (not e!3113410))))

(declare-fun validRegex!5987 (Regex!13686) Bool)

(assert (=> d!1604126 (= res!2126460 (validRegex!5987 (regex!8453 rule!200)))))

(assert (=> d!1604126 (= (ruleValid!3861 thiss!16165 rule!200) e!3113410)))

(declare-fun b!4981347 () Bool)

(declare-fun res!2126461 () Bool)

(assert (=> b!4981347 (=> (not res!2126461) (not e!3113410))))

(declare-fun nullable!4638 (Regex!13686) Bool)

(assert (=> b!4981347 (= res!2126461 (not (nullable!4638 (regex!8453 rule!200))))))

(declare-fun b!4981348 () Bool)

(assert (=> b!4981348 (= e!3113410 (not (= (tag!9317 rule!200) (String!65691 ""))))))

(assert (= (and d!1604126 res!2126460) b!4981347))

(assert (= (and b!4981347 res!2126461) b!4981348))

(declare-fun m!6012488 () Bool)

(assert (=> d!1604126 m!6012488))

(declare-fun m!6012490 () Bool)

(assert (=> b!4981347 m!6012490))

(assert (=> b!4981283 d!1604126))

(declare-fun d!1604128 () Bool)

(declare-fun c!849989 () Bool)

(assert (=> d!1604128 (= c!849989 (is-Node!15205 (c!849983 input!1580)))))

(declare-fun e!3113415 () Bool)

(assert (=> d!1604128 (= (inv!75408 (c!849983 input!1580)) e!3113415)))

(declare-fun b!4981355 () Bool)

(declare-fun inv!75413 (Conc!15205) Bool)

(assert (=> b!4981355 (= e!3113415 (inv!75413 (c!849983 input!1580)))))

(declare-fun b!4981356 () Bool)

(declare-fun e!3113416 () Bool)

(assert (=> b!4981356 (= e!3113415 e!3113416)))

(declare-fun res!2126464 () Bool)

(assert (=> b!4981356 (= res!2126464 (not (is-Leaf!25257 (c!849983 input!1580))))))

(assert (=> b!4981356 (=> res!2126464 e!3113416)))

(declare-fun b!4981357 () Bool)

(declare-fun inv!75414 (Conc!15205) Bool)

(assert (=> b!4981357 (= e!3113416 (inv!75414 (c!849983 input!1580)))))

(assert (= (and d!1604128 c!849989) b!4981355))

(assert (= (and d!1604128 (not c!849989)) b!4981356))

(assert (= (and b!4981356 (not res!2126464)) b!4981357))

(declare-fun m!6012492 () Bool)

(assert (=> b!4981355 m!6012492))

(declare-fun m!6012494 () Bool)

(assert (=> b!4981357 m!6012494))

(assert (=> b!4981284 d!1604128))

(declare-fun b!4981389 () Bool)

(declare-fun e!3113437 () Bool)

(declare-fun e!3113435 () Bool)

(assert (=> b!4981389 (= e!3113437 e!3113435)))

(declare-fun res!2126490 () Bool)

(assert (=> b!4981389 (=> (not res!2126490) (not e!3113435))))

(declare-fun lt!2057918 () Bool)

(assert (=> b!4981389 (= res!2126490 (not lt!2057918))))

(declare-fun b!4981390 () Bool)

(declare-fun e!3113439 () Bool)

(declare-fun derivativeStep!3938 (Regex!13686 C!27622) Regex!13686)

(declare-fun head!10687 (List!57702) C!27622)

(declare-fun tail!9820 (List!57702) List!57702)

(assert (=> b!4981390 (= e!3113439 (matchR!6680 (derivativeStep!3938 (regex!8453 rule!200) (head!10687 (_1!34558 lt!2057882))) (tail!9820 (_1!34558 lt!2057882))))))

(declare-fun bm!347453 () Bool)

(declare-fun call!347458 () Bool)

(assert (=> bm!347453 (= call!347458 (isEmpty!31083 (_1!34558 lt!2057882)))))

(declare-fun b!4981391 () Bool)

(declare-fun e!3113436 () Bool)

(declare-fun e!3113440 () Bool)

(assert (=> b!4981391 (= e!3113436 e!3113440)))

(declare-fun c!849997 () Bool)

(assert (=> b!4981391 (= c!849997 (is-EmptyLang!13686 (regex!8453 rule!200)))))

(declare-fun b!4981392 () Bool)

(declare-fun e!3113434 () Bool)

(assert (=> b!4981392 (= e!3113435 e!3113434)))

(declare-fun res!2126484 () Bool)

(assert (=> b!4981392 (=> res!2126484 e!3113434)))

(assert (=> b!4981392 (= res!2126484 call!347458)))

(declare-fun b!4981393 () Bool)

(declare-fun res!2126486 () Bool)

(assert (=> b!4981393 (=> res!2126486 e!3113434)))

(assert (=> b!4981393 (= res!2126486 (not (isEmpty!31083 (tail!9820 (_1!34558 lt!2057882)))))))

(declare-fun b!4981394 () Bool)

(declare-fun res!2126488 () Bool)

(assert (=> b!4981394 (=> res!2126488 e!3113437)))

(assert (=> b!4981394 (= res!2126488 (not (is-ElementMatch!13686 (regex!8453 rule!200))))))

(assert (=> b!4981394 (= e!3113440 e!3113437)))

(declare-fun b!4981395 () Bool)

(declare-fun res!2126485 () Bool)

(assert (=> b!4981395 (=> res!2126485 e!3113437)))

(declare-fun e!3113438 () Bool)

(assert (=> b!4981395 (= res!2126485 e!3113438)))

(declare-fun res!2126487 () Bool)

(assert (=> b!4981395 (=> (not res!2126487) (not e!3113438))))

(assert (=> b!4981395 (= res!2126487 lt!2057918)))

(declare-fun b!4981396 () Bool)

(assert (=> b!4981396 (= e!3113434 (not (= (head!10687 (_1!34558 lt!2057882)) (c!849982 (regex!8453 rule!200)))))))

(declare-fun b!4981397 () Bool)

(declare-fun res!2126491 () Bool)

(assert (=> b!4981397 (=> (not res!2126491) (not e!3113438))))

(assert (=> b!4981397 (= res!2126491 (not call!347458))))

(declare-fun d!1604132 () Bool)

(assert (=> d!1604132 e!3113436))

(declare-fun c!849996 () Bool)

(assert (=> d!1604132 (= c!849996 (is-EmptyExpr!13686 (regex!8453 rule!200)))))

(assert (=> d!1604132 (= lt!2057918 e!3113439)))

(declare-fun c!849998 () Bool)

(assert (=> d!1604132 (= c!849998 (isEmpty!31083 (_1!34558 lt!2057882)))))

(assert (=> d!1604132 (validRegex!5987 (regex!8453 rule!200))))

(assert (=> d!1604132 (= (matchR!6680 (regex!8453 rule!200) (_1!34558 lt!2057882)) lt!2057918)))

(declare-fun b!4981398 () Bool)

(assert (=> b!4981398 (= e!3113440 (not lt!2057918))))

(declare-fun b!4981399 () Bool)

(assert (=> b!4981399 (= e!3113439 (nullable!4638 (regex!8453 rule!200)))))

(declare-fun b!4981400 () Bool)

(assert (=> b!4981400 (= e!3113438 (= (head!10687 (_1!34558 lt!2057882)) (c!849982 (regex!8453 rule!200))))))

(declare-fun b!4981401 () Bool)

(declare-fun res!2126489 () Bool)

(assert (=> b!4981401 (=> (not res!2126489) (not e!3113438))))

(assert (=> b!4981401 (= res!2126489 (isEmpty!31083 (tail!9820 (_1!34558 lt!2057882))))))

(declare-fun b!4981402 () Bool)

(assert (=> b!4981402 (= e!3113436 (= lt!2057918 call!347458))))

(assert (= (and d!1604132 c!849998) b!4981399))

(assert (= (and d!1604132 (not c!849998)) b!4981390))

(assert (= (and d!1604132 c!849996) b!4981402))

(assert (= (and d!1604132 (not c!849996)) b!4981391))

(assert (= (and b!4981391 c!849997) b!4981398))

(assert (= (and b!4981391 (not c!849997)) b!4981394))

(assert (= (and b!4981394 (not res!2126488)) b!4981395))

(assert (= (and b!4981395 res!2126487) b!4981397))

(assert (= (and b!4981397 res!2126491) b!4981401))

(assert (= (and b!4981401 res!2126489) b!4981400))

(assert (= (and b!4981395 (not res!2126485)) b!4981389))

(assert (= (and b!4981389 res!2126490) b!4981392))

(assert (= (and b!4981392 (not res!2126484)) b!4981393))

(assert (= (and b!4981393 (not res!2126486)) b!4981396))

(assert (= (or b!4981402 b!4981392 b!4981397) bm!347453))

(declare-fun m!6012504 () Bool)

(assert (=> b!4981400 m!6012504))

(declare-fun m!6012506 () Bool)

(assert (=> b!4981401 m!6012506))

(assert (=> b!4981401 m!6012506))

(declare-fun m!6012508 () Bool)

(assert (=> b!4981401 m!6012508))

(assert (=> bm!347453 m!6012412))

(assert (=> b!4981393 m!6012506))

(assert (=> b!4981393 m!6012506))

(assert (=> b!4981393 m!6012508))

(assert (=> b!4981390 m!6012504))

(assert (=> b!4981390 m!6012504))

(declare-fun m!6012510 () Bool)

(assert (=> b!4981390 m!6012510))

(assert (=> b!4981390 m!6012506))

(assert (=> b!4981390 m!6012510))

(assert (=> b!4981390 m!6012506))

(declare-fun m!6012512 () Bool)

(assert (=> b!4981390 m!6012512))

(assert (=> b!4981399 m!6012490))

(assert (=> d!1604132 m!6012412))

(assert (=> d!1604132 m!6012488))

(assert (=> b!4981396 m!6012504))

(assert (=> b!4981282 d!1604132))

(declare-fun d!1604136 () Bool)

(declare-fun choose!36790 (Int) Bool)

(assert (=> d!1604136 (= (Forall!1803 lambda!247827) (choose!36790 lambda!247827))))

(declare-fun bs!1184264 () Bool)

(assert (= bs!1184264 d!1604136))

(declare-fun m!6012514 () Bool)

(assert (=> bs!1184264 m!6012514))

(assert (=> b!4981281 d!1604136))

(declare-fun d!1604138 () Bool)

(declare-fun c!850002 () Bool)

(assert (=> d!1604138 (= c!850002 (is-Node!15205 (c!849983 totalInput!520)))))

(declare-fun e!3113444 () Bool)

(assert (=> d!1604138 (= (inv!75408 (c!849983 totalInput!520)) e!3113444)))

(declare-fun b!4981409 () Bool)

(assert (=> b!4981409 (= e!3113444 (inv!75413 (c!849983 totalInput!520)))))

(declare-fun b!4981410 () Bool)

(declare-fun e!3113445 () Bool)

(assert (=> b!4981410 (= e!3113444 e!3113445)))

(declare-fun res!2126492 () Bool)

(assert (=> b!4981410 (= res!2126492 (not (is-Leaf!25257 (c!849983 totalInput!520))))))

(assert (=> b!4981410 (=> res!2126492 e!3113445)))

(declare-fun b!4981411 () Bool)

(assert (=> b!4981411 (= e!3113445 (inv!75414 (c!849983 totalInput!520)))))

(assert (= (and d!1604138 c!850002) b!4981409))

(assert (= (and d!1604138 (not c!850002)) b!4981410))

(assert (= (and b!4981410 (not res!2126492)) b!4981411))

(declare-fun m!6012518 () Bool)

(assert (=> b!4981409 m!6012518))

(declare-fun m!6012520 () Bool)

(assert (=> b!4981411 m!6012520))

(assert (=> b!4981279 d!1604138))

(declare-fun d!1604142 () Bool)

(assert (=> d!1604142 (= (isEmpty!31083 (_1!34558 lt!2057882)) (is-Nil!57578 (_1!34558 lt!2057882)))))

(assert (=> b!4981280 d!1604142))

(declare-fun d!1604144 () Bool)

(declare-fun e!3113452 () Bool)

(assert (=> d!1604144 e!3113452))

(declare-fun res!2126498 () Bool)

(assert (=> d!1604144 (=> (not res!2126498) (not e!3113452))))

(assert (=> d!1604144 (= res!2126498 (semiInverseModEq!3746 (toChars!11299 (transformation!8453 rule!200)) (toValue!11440 (transformation!8453 rule!200))))))

(declare-fun Unit!148645 () Unit!148639)

(assert (=> d!1604144 (= (lemmaInv!1376 (transformation!8453 rule!200)) Unit!148645)))

(declare-fun b!4981419 () Bool)

(declare-fun equivClasses!3569 (Int Int) Bool)

(assert (=> b!4981419 (= e!3113452 (equivClasses!3569 (toChars!11299 (transformation!8453 rule!200)) (toValue!11440 (transformation!8453 rule!200))))))

(assert (= (and d!1604144 res!2126498) b!4981419))

(assert (=> d!1604144 m!6012416))

(declare-fun m!6012526 () Bool)

(assert (=> b!4981419 m!6012526))

(assert (=> b!4981280 d!1604144))

(declare-fun d!1604150 () Bool)

(declare-fun lt!2057925 () Int)

(assert (=> d!1604150 (>= lt!2057925 0)))

(declare-fun e!3113455 () Int)

(assert (=> d!1604150 (= lt!2057925 e!3113455)))

(declare-fun c!850006 () Bool)

(assert (=> d!1604150 (= c!850006 (is-Nil!57578 lt!2057881))))

(assert (=> d!1604150 (= (size!38204 lt!2057881) lt!2057925)))

(declare-fun b!4981424 () Bool)

(assert (=> b!4981424 (= e!3113455 0)))

(declare-fun b!4981425 () Bool)

(assert (=> b!4981425 (= e!3113455 (+ 1 (size!38204 (t!369794 lt!2057881))))))

(assert (= (and d!1604150 c!850006) b!4981424))

(assert (= (and d!1604150 (not c!850006)) b!4981425))

(declare-fun m!6012528 () Bool)

(assert (=> b!4981425 m!6012528))

(assert (=> b!4981280 d!1604150))

(declare-fun b!4981496 () Bool)

(declare-fun e!3113497 () tuple2!62510)

(assert (=> b!4981496 (= e!3113497 (tuple2!62511 Nil!57578 lt!2057881))))

(declare-fun b!4981497 () Bool)

(declare-fun e!3113500 () tuple2!62510)

(assert (=> b!4981497 (= e!3113500 (tuple2!62511 Nil!57578 lt!2057881))))

(declare-fun b!4981498 () Bool)

(declare-fun e!3113499 () Unit!148639)

(declare-fun Unit!148646 () Unit!148639)

(assert (=> b!4981498 (= e!3113499 Unit!148646)))

(declare-fun b!4981499 () Bool)

(declare-fun e!3113503 () Bool)

(declare-fun lt!2058078 () tuple2!62510)

(assert (=> b!4981499 (= e!3113503 (>= (size!38204 (_1!34558 lt!2058078)) (size!38204 Nil!57578)))))

(declare-fun b!4981500 () Bool)

(declare-fun Unit!148647 () Unit!148639)

(assert (=> b!4981500 (= e!3113499 Unit!148647)))

(declare-fun lt!2058089 () Unit!148639)

(declare-fun call!347501 () Unit!148639)

(assert (=> b!4981500 (= lt!2058089 call!347501)))

(declare-fun call!347499 () Bool)

(assert (=> b!4981500 call!347499))

(declare-fun lt!2058079 () Unit!148639)

(assert (=> b!4981500 (= lt!2058079 lt!2058089)))

(declare-fun lt!2058092 () Unit!148639)

(declare-fun call!347504 () Unit!148639)

(assert (=> b!4981500 (= lt!2058092 call!347504)))

(assert (=> b!4981500 (= lt!2057881 Nil!57578)))

(declare-fun lt!2058080 () Unit!148639)

(assert (=> b!4981500 (= lt!2058080 lt!2058092)))

(assert (=> b!4981500 false))

(declare-fun b!4981501 () Bool)

(declare-fun e!3113502 () tuple2!62510)

(declare-fun e!3113496 () tuple2!62510)

(assert (=> b!4981501 (= e!3113502 e!3113496)))

(declare-fun c!850040 () Bool)

(assert (=> b!4981501 (= c!850040 (= (size!38204 Nil!57578) (size!38204 lt!2057881)))))

(declare-fun b!4981502 () Bool)

(declare-fun c!850038 () Bool)

(declare-fun call!347502 () Bool)

(assert (=> b!4981502 (= c!850038 call!347502)))

(declare-fun lt!2058075 () Unit!148639)

(declare-fun lt!2058076 () Unit!148639)

(assert (=> b!4981502 (= lt!2058075 lt!2058076)))

(declare-fun lt!2058066 () C!27622)

(declare-fun lt!2058088 () List!57702)

(declare-fun ++!12550 (List!57702 List!57702) List!57702)

(assert (=> b!4981502 (= (++!12550 (++!12550 Nil!57578 (Cons!57578 lt!2058066 Nil!57578)) lt!2058088) lt!2057881)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1461 (List!57702 C!27622 List!57702 List!57702) Unit!148639)

(assert (=> b!4981502 (= lt!2058076 (lemmaMoveElementToOtherListKeepsConcatEq!1461 Nil!57578 lt!2058066 lt!2058088 lt!2057881))))

(assert (=> b!4981502 (= lt!2058088 (tail!9820 lt!2057881))))

(assert (=> b!4981502 (= lt!2058066 (head!10687 lt!2057881))))

(declare-fun lt!2058083 () Unit!148639)

(declare-fun lt!2058069 () Unit!148639)

(assert (=> b!4981502 (= lt!2058083 lt!2058069)))

(declare-fun isPrefix!5264 (List!57702 List!57702) Bool)

(declare-fun getSuffix!3104 (List!57702 List!57702) List!57702)

(assert (=> b!4981502 (isPrefix!5264 (++!12550 Nil!57578 (Cons!57578 (head!10687 (getSuffix!3104 lt!2057881 Nil!57578)) Nil!57578)) lt!2057881)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!851 (List!57702 List!57702) Unit!148639)

(assert (=> b!4981502 (= lt!2058069 (lemmaAddHeadSuffixToPrefixStillPrefix!851 Nil!57578 lt!2057881))))

(declare-fun lt!2058087 () Unit!148639)

(declare-fun lt!2058093 () Unit!148639)

(assert (=> b!4981502 (= lt!2058087 lt!2058093)))

(assert (=> b!4981502 (= lt!2058093 (lemmaAddHeadSuffixToPrefixStillPrefix!851 Nil!57578 lt!2057881))))

(declare-fun lt!2058067 () List!57702)

(assert (=> b!4981502 (= lt!2058067 (++!12550 Nil!57578 (Cons!57578 (head!10687 lt!2057881) Nil!57578)))))

(declare-fun lt!2058073 () Unit!148639)

(assert (=> b!4981502 (= lt!2058073 e!3113499)))

(declare-fun c!850042 () Bool)

(assert (=> b!4981502 (= c!850042 (= (size!38204 Nil!57578) (size!38204 lt!2057881)))))

(declare-fun lt!2058091 () Unit!148639)

(declare-fun lt!2058070 () Unit!148639)

(assert (=> b!4981502 (= lt!2058091 lt!2058070)))

(assert (=> b!4981502 (<= (size!38204 Nil!57578) (size!38204 lt!2057881))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!777 (List!57702 List!57702) Unit!148639)

(assert (=> b!4981502 (= lt!2058070 (lemmaIsPrefixThenSmallerEqSize!777 Nil!57578 lt!2057881))))

(declare-fun e!3113498 () tuple2!62510)

(assert (=> b!4981502 (= e!3113496 e!3113498)))

(declare-fun bm!347494 () Bool)

(declare-fun call!347500 () Regex!13686)

(declare-fun call!347503 () C!27622)

(assert (=> bm!347494 (= call!347500 (derivativeStep!3938 (regex!8453 rule!200) call!347503))))

(declare-fun bm!347495 () Bool)

(assert (=> bm!347495 (= call!347502 (nullable!4638 (regex!8453 rule!200)))))

(declare-fun bm!347496 () Bool)

(declare-fun call!347506 () List!57702)

(assert (=> bm!347496 (= call!347506 (tail!9820 lt!2057881))))

(declare-fun bm!347498 () Bool)

(declare-fun lemmaIsPrefixRefl!3588 (List!57702 List!57702) Unit!148639)

(assert (=> bm!347498 (= call!347501 (lemmaIsPrefixRefl!3588 lt!2057881 lt!2057881))))

(declare-fun b!4981503 () Bool)

(declare-fun lt!2058090 () tuple2!62510)

(assert (=> b!4981503 (= e!3113500 lt!2058090)))

(declare-fun b!4981504 () Bool)

(assert (=> b!4981504 (= e!3113497 (tuple2!62511 Nil!57578 Nil!57578))))

(declare-fun b!4981505 () Bool)

(assert (=> b!4981505 (= e!3113502 (tuple2!62511 Nil!57578 lt!2057881))))

(declare-fun b!4981506 () Bool)

(declare-fun call!347505 () tuple2!62510)

(assert (=> b!4981506 (= e!3113498 call!347505)))

(declare-fun b!4981507 () Bool)

(assert (=> b!4981507 (= e!3113498 e!3113500)))

(assert (=> b!4981507 (= lt!2058090 call!347505)))

(declare-fun c!850041 () Bool)

(assert (=> b!4981507 (= c!850041 (isEmpty!31083 (_1!34558 lt!2058090)))))

(declare-fun b!4981508 () Bool)

(declare-fun e!3113501 () Bool)

(assert (=> b!4981508 (= e!3113501 e!3113503)))

(declare-fun res!2126510 () Bool)

(assert (=> b!4981508 (=> res!2126510 e!3113503)))

(assert (=> b!4981508 (= res!2126510 (isEmpty!31083 (_1!34558 lt!2058078)))))

(declare-fun b!4981509 () Bool)

(declare-fun c!850039 () Bool)

(assert (=> b!4981509 (= c!850039 call!347502)))

(declare-fun lt!2058071 () Unit!148639)

(declare-fun lt!2058074 () Unit!148639)

(assert (=> b!4981509 (= lt!2058071 lt!2058074)))

(assert (=> b!4981509 (= lt!2057881 Nil!57578)))

(assert (=> b!4981509 (= lt!2058074 call!347504)))

(declare-fun lt!2058085 () Unit!148639)

(declare-fun lt!2058072 () Unit!148639)

(assert (=> b!4981509 (= lt!2058085 lt!2058072)))

(assert (=> b!4981509 call!347499))

(assert (=> b!4981509 (= lt!2058072 call!347501)))

(assert (=> b!4981509 (= e!3113496 e!3113497)))

(declare-fun bm!347499 () Bool)

(assert (=> bm!347499 (= call!347503 (head!10687 lt!2057881))))

(declare-fun bm!347500 () Bool)

(assert (=> bm!347500 (= call!347505 (findLongestMatchInner!1897 call!347500 lt!2058067 (+ (size!38204 Nil!57578) 1) call!347506 lt!2057881 (size!38204 lt!2057881)))))

(declare-fun bm!347501 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1224 (List!57702 List!57702 List!57702) Unit!148639)

(assert (=> bm!347501 (= call!347504 (lemmaIsPrefixSameLengthThenSameList!1224 lt!2057881 Nil!57578 lt!2057881))))

(declare-fun bm!347497 () Bool)

(assert (=> bm!347497 (= call!347499 (isPrefix!5264 lt!2057881 lt!2057881))))

(declare-fun d!1604152 () Bool)

(assert (=> d!1604152 e!3113501))

(declare-fun res!2126509 () Bool)

(assert (=> d!1604152 (=> (not res!2126509) (not e!3113501))))

(assert (=> d!1604152 (= res!2126509 (= (++!12550 (_1!34558 lt!2058078) (_2!34558 lt!2058078)) lt!2057881))))

(assert (=> d!1604152 (= lt!2058078 e!3113502)))

(declare-fun c!850037 () Bool)

(declare-fun lostCause!1149 (Regex!13686) Bool)

(assert (=> d!1604152 (= c!850037 (lostCause!1149 (regex!8453 rule!200)))))

(declare-fun lt!2058081 () Unit!148639)

(declare-fun Unit!148649 () Unit!148639)

(assert (=> d!1604152 (= lt!2058081 Unit!148649)))

(assert (=> d!1604152 (= (getSuffix!3104 lt!2057881 Nil!57578) lt!2057881)))

(declare-fun lt!2058082 () Unit!148639)

(declare-fun lt!2058068 () Unit!148639)

(assert (=> d!1604152 (= lt!2058082 lt!2058068)))

(declare-fun lt!2058086 () List!57702)

(assert (=> d!1604152 (= lt!2057881 lt!2058086)))

(declare-fun lemmaSamePrefixThenSameSuffix!2517 (List!57702 List!57702 List!57702 List!57702 List!57702) Unit!148639)

(assert (=> d!1604152 (= lt!2058068 (lemmaSamePrefixThenSameSuffix!2517 Nil!57578 lt!2057881 Nil!57578 lt!2058086 lt!2057881))))

(assert (=> d!1604152 (= lt!2058086 (getSuffix!3104 lt!2057881 Nil!57578))))

(declare-fun lt!2058084 () Unit!148639)

(declare-fun lt!2058077 () Unit!148639)

(assert (=> d!1604152 (= lt!2058084 lt!2058077)))

(assert (=> d!1604152 (isPrefix!5264 Nil!57578 (++!12550 Nil!57578 lt!2057881))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3363 (List!57702 List!57702) Unit!148639)

(assert (=> d!1604152 (= lt!2058077 (lemmaConcatTwoListThenFirstIsPrefix!3363 Nil!57578 lt!2057881))))

(assert (=> d!1604152 (validRegex!5987 (regex!8453 rule!200))))

(assert (=> d!1604152 (= (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)) lt!2058078)))

(assert (= (and d!1604152 c!850037) b!4981505))

(assert (= (and d!1604152 (not c!850037)) b!4981501))

(assert (= (and b!4981501 c!850040) b!4981509))

(assert (= (and b!4981501 (not c!850040)) b!4981502))

(assert (= (and b!4981509 c!850039) b!4981504))

(assert (= (and b!4981509 (not c!850039)) b!4981496))

(assert (= (and b!4981502 c!850042) b!4981500))

(assert (= (and b!4981502 (not c!850042)) b!4981498))

(assert (= (and b!4981502 c!850038) b!4981507))

(assert (= (and b!4981502 (not c!850038)) b!4981506))

(assert (= (and b!4981507 c!850041) b!4981497))

(assert (= (and b!4981507 (not c!850041)) b!4981503))

(assert (= (or b!4981507 b!4981506) bm!347499))

(assert (= (or b!4981507 b!4981506) bm!347496))

(assert (= (or b!4981507 b!4981506) bm!347494))

(assert (= (or b!4981507 b!4981506) bm!347500))

(assert (= (or b!4981509 b!4981500) bm!347497))

(assert (= (or b!4981509 b!4981500) bm!347501))

(assert (= (or b!4981509 b!4981500) bm!347498))

(assert (= (or b!4981509 b!4981502) bm!347495))

(assert (= (and d!1604152 res!2126509) b!4981508))

(assert (= (and b!4981508 (not res!2126510)) b!4981499))

(assert (=> bm!347500 m!6012410))

(declare-fun m!6012584 () Bool)

(assert (=> bm!347500 m!6012584))

(declare-fun m!6012586 () Bool)

(assert (=> bm!347501 m!6012586))

(declare-fun m!6012588 () Bool)

(assert (=> bm!347498 m!6012588))

(declare-fun m!6012590 () Bool)

(assert (=> bm!347497 m!6012590))

(declare-fun m!6012592 () Bool)

(assert (=> bm!347496 m!6012592))

(declare-fun m!6012594 () Bool)

(assert (=> b!4981499 m!6012594))

(assert (=> b!4981499 m!6012414))

(declare-fun m!6012596 () Bool)

(assert (=> b!4981502 m!6012596))

(declare-fun m!6012598 () Bool)

(assert (=> b!4981502 m!6012598))

(declare-fun m!6012600 () Bool)

(assert (=> b!4981502 m!6012600))

(assert (=> b!4981502 m!6012410))

(declare-fun m!6012602 () Bool)

(assert (=> b!4981502 m!6012602))

(declare-fun m!6012604 () Bool)

(assert (=> b!4981502 m!6012604))

(assert (=> b!4981502 m!6012600))

(declare-fun m!6012606 () Bool)

(assert (=> b!4981502 m!6012606))

(assert (=> b!4981502 m!6012592))

(declare-fun m!6012608 () Bool)

(assert (=> b!4981502 m!6012608))

(declare-fun m!6012610 () Bool)

(assert (=> b!4981502 m!6012610))

(declare-fun m!6012612 () Bool)

(assert (=> b!4981502 m!6012612))

(declare-fun m!6012614 () Bool)

(assert (=> b!4981502 m!6012614))

(assert (=> b!4981502 m!6012612))

(assert (=> b!4981502 m!6012414))

(declare-fun m!6012616 () Bool)

(assert (=> b!4981502 m!6012616))

(assert (=> b!4981502 m!6012608))

(declare-fun m!6012618 () Bool)

(assert (=> d!1604152 m!6012618))

(declare-fun m!6012620 () Bool)

(assert (=> d!1604152 m!6012620))

(declare-fun m!6012622 () Bool)

(assert (=> d!1604152 m!6012622))

(declare-fun m!6012624 () Bool)

(assert (=> d!1604152 m!6012624))

(assert (=> d!1604152 m!6012488))

(assert (=> d!1604152 m!6012618))

(declare-fun m!6012626 () Bool)

(assert (=> d!1604152 m!6012626))

(declare-fun m!6012628 () Bool)

(assert (=> d!1604152 m!6012628))

(assert (=> d!1604152 m!6012608))

(declare-fun m!6012630 () Bool)

(assert (=> bm!347494 m!6012630))

(declare-fun m!6012632 () Bool)

(assert (=> b!4981508 m!6012632))

(assert (=> bm!347495 m!6012490))

(declare-fun m!6012634 () Bool)

(assert (=> b!4981507 m!6012634))

(assert (=> bm!347499 m!6012616))

(assert (=> b!4981280 d!1604152))

(declare-fun bs!1184267 () Bool)

(declare-fun d!1604158 () Bool)

(assert (= bs!1184267 (and d!1604158 b!4981281)))

(declare-fun lambda!247840 () Int)

(assert (=> bs!1184267 (= lambda!247840 lambda!247827)))

(assert (=> d!1604158 true))

(assert (=> d!1604158 (< (dynLambda!23345 order!26483 (toChars!11299 (transformation!8453 rule!200))) (dynLambda!23344 order!26481 lambda!247840))))

(assert (=> d!1604158 true))

(assert (=> d!1604158 (< (dynLambda!23343 order!26479 (toValue!11440 (transformation!8453 rule!200))) (dynLambda!23344 order!26481 lambda!247840))))

(assert (=> d!1604158 (= (semiInverseModEq!3746 (toChars!11299 (transformation!8453 rule!200)) (toValue!11440 (transformation!8453 rule!200))) (Forall!1803 lambda!247840))))

(declare-fun bs!1184268 () Bool)

(assert (= bs!1184268 d!1604158))

(declare-fun m!6012638 () Bool)

(assert (=> bs!1184268 m!6012638))

(assert (=> b!4981280 d!1604158))

(declare-fun d!1604162 () Bool)

(declare-fun lt!2058094 () Int)

(assert (=> d!1604162 (>= lt!2058094 0)))

(declare-fun e!3113504 () Int)

(assert (=> d!1604162 (= lt!2058094 e!3113504)))

(declare-fun c!850043 () Bool)

(assert (=> d!1604162 (= c!850043 (is-Nil!57578 Nil!57578))))

(assert (=> d!1604162 (= (size!38204 Nil!57578) lt!2058094)))

(declare-fun b!4981518 () Bool)

(assert (=> b!4981518 (= e!3113504 0)))

(declare-fun b!4981519 () Bool)

(assert (=> b!4981519 (= e!3113504 (+ 1 (size!38204 (t!369794 Nil!57578))))))

(assert (= (and d!1604162 c!850043) b!4981518))

(assert (= (and d!1604162 (not c!850043)) b!4981519))

(declare-fun m!6012640 () Bool)

(assert (=> b!4981519 m!6012640))

(assert (=> b!4981280 d!1604162))

(declare-fun d!1604164 () Bool)

(declare-fun e!3113513 () Bool)

(assert (=> d!1604164 e!3113513))

(declare-fun res!2126516 () Bool)

(assert (=> d!1604164 (=> res!2126516 e!3113513)))

(assert (=> d!1604164 (= res!2126516 (isEmpty!31083 (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))))))

(declare-fun lt!2058100 () Unit!148639)

(declare-fun choose!36791 (Regex!13686 List!57702) Unit!148639)

(assert (=> d!1604164 (= lt!2058100 (choose!36791 (regex!8453 rule!200) lt!2057881))))

(assert (=> d!1604164 (validRegex!5987 (regex!8453 rule!200))))

(assert (=> d!1604164 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1858 (regex!8453 rule!200) lt!2057881) lt!2058100)))

(declare-fun b!4981531 () Bool)

(assert (=> b!4981531 (= e!3113513 (matchR!6680 (regex!8453 rule!200) (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))))))

(assert (= (and d!1604164 (not res!2126516)) b!4981531))

(assert (=> d!1604164 m!6012414))

(assert (=> d!1604164 m!6012410))

(assert (=> d!1604164 m!6012418))

(declare-fun m!6012650 () Bool)

(assert (=> d!1604164 m!6012650))

(declare-fun m!6012652 () Bool)

(assert (=> d!1604164 m!6012652))

(assert (=> d!1604164 m!6012410))

(assert (=> d!1604164 m!6012488))

(assert (=> d!1604164 m!6012414))

(assert (=> b!4981531 m!6012414))

(assert (=> b!4981531 m!6012410))

(assert (=> b!4981531 m!6012414))

(assert (=> b!4981531 m!6012410))

(assert (=> b!4981531 m!6012418))

(declare-fun m!6012654 () Bool)

(assert (=> b!4981531 m!6012654))

(assert (=> b!4981280 d!1604164))

(declare-fun d!1604170 () Bool)

(declare-fun isBalanced!4223 (Conc!15205) Bool)

(assert (=> d!1604170 (= (inv!75409 totalInput!520) (isBalanced!4223 (c!849983 totalInput!520)))))

(declare-fun bs!1184270 () Bool)

(assert (= bs!1184270 d!1604170))

(declare-fun m!6012656 () Bool)

(assert (=> bs!1184270 m!6012656))

(assert (=> start!525824 d!1604170))

(declare-fun d!1604172 () Bool)

(assert (=> d!1604172 (= (inv!75409 input!1580) (isBalanced!4223 (c!849983 input!1580)))))

(declare-fun bs!1184271 () Bool)

(assert (= bs!1184271 d!1604172))

(declare-fun m!6012658 () Bool)

(assert (=> bs!1184271 m!6012658))

(assert (=> start!525824 d!1604172))

(declare-fun d!1604174 () Bool)

(declare-fun isEmpty!31087 (Option!14525) Bool)

(assert (=> d!1604174 (= (isDefined!11434 (maxPrefixOneRule!3669 thiss!16165 rule!200 lt!2057881)) (not (isEmpty!31087 (maxPrefixOneRule!3669 thiss!16165 rule!200 lt!2057881))))))

(declare-fun bs!1184272 () Bool)

(assert (= bs!1184272 d!1604174))

(assert (=> bs!1184272 m!6012382))

(declare-fun m!6012660 () Bool)

(assert (=> bs!1184272 m!6012660))

(assert (=> b!4981278 d!1604174))

(declare-fun d!1604176 () Bool)

(declare-fun isEmpty!31088 (Option!14526) Bool)

(assert (=> d!1604176 (= (isDefined!11435 (Some!14525 (tuple2!62509 (Token!15363 (apply!13940 (transformation!8453 rule!200) (_1!34556 lt!2057877)) rule!200 (size!38203 (_1!34556 lt!2057877)) lt!2057873) (_2!34556 lt!2057877)))) (not (isEmpty!31088 (Some!14525 (tuple2!62509 (Token!15363 (apply!13940 (transformation!8453 rule!200) (_1!34556 lt!2057877)) rule!200 (size!38203 (_1!34556 lt!2057877)) lt!2057873) (_2!34556 lt!2057877))))))))

(declare-fun bs!1184273 () Bool)

(assert (= bs!1184273 d!1604176))

(declare-fun m!6012662 () Bool)

(assert (=> bs!1184273 m!6012662))

(assert (=> b!4981278 d!1604176))

(declare-fun d!1604178 () Bool)

(declare-fun dynLambda!23349 (Int BalanceConc!29840) TokenValue!8763)

(assert (=> d!1604178 (= (apply!13940 (transformation!8453 rule!200) (_1!34556 lt!2057877)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877)))))

(declare-fun b_lambda!197805 () Bool)

(assert (=> (not b_lambda!197805) (not d!1604178)))

(declare-fun t!369799 () Bool)

(declare-fun tb!261599 () Bool)

(assert (=> (and b!4981286 (= (toValue!11440 (transformation!8453 rule!200)) (toValue!11440 (transformation!8453 rule!200))) t!369799) tb!261599))

(declare-fun result!326886 () Bool)

(declare-fun inv!21 (TokenValue!8763) Bool)

(assert (=> tb!261599 (= result!326886 (inv!21 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))))))

(declare-fun m!6012664 () Bool)

(assert (=> tb!261599 m!6012664))

(assert (=> d!1604178 t!369799))

(declare-fun b_and!349611 () Bool)

(assert (= b_and!349603 (and (=> t!369799 result!326886) b_and!349611)))

(declare-fun m!6012666 () Bool)

(assert (=> d!1604178 m!6012666))

(assert (=> b!4981278 d!1604178))

(declare-fun b!4981554 () Bool)

(declare-fun e!3113530 () Bool)

(declare-fun e!3113528 () Bool)

(assert (=> b!4981554 (= e!3113530 e!3113528)))

(declare-fun res!2126531 () Bool)

(assert (=> b!4981554 (=> (not res!2126531) (not e!3113528))))

(declare-fun lt!2058121 () Option!14525)

(declare-fun charsOf!5451 (Token!15362) BalanceConc!29840)

(declare-fun get!20016 (Option!14525) tuple2!62504)

(assert (=> b!4981554 (= res!2126531 (matchR!6680 (regex!8453 rule!200) (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121))))))))

(declare-fun b!4981555 () Bool)

(declare-fun e!3113531 () Option!14525)

(declare-fun lt!2058123 () tuple2!62510)

(assert (=> b!4981555 (= e!3113531 (Some!14524 (tuple2!62505 (Token!15363 (apply!13940 (transformation!8453 rule!200) (seqFromList!6074 (_1!34558 lt!2058123))) rule!200 (size!38203 (seqFromList!6074 (_1!34558 lt!2058123))) (_1!34558 lt!2058123)) (_2!34558 lt!2058123))))))

(declare-fun lt!2058122 () Unit!148639)

(assert (=> b!4981555 (= lt!2058122 (longestMatchIsAcceptedByMatchOrIsEmpty!1858 (regex!8453 rule!200) lt!2057881))))

(declare-fun res!2126534 () Bool)

(assert (=> b!4981555 (= res!2126534 (isEmpty!31083 (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))))))

(declare-fun e!3113529 () Bool)

(assert (=> b!4981555 (=> res!2126534 e!3113529)))

(assert (=> b!4981555 e!3113529))

(declare-fun lt!2058125 () Unit!148639)

(assert (=> b!4981555 (= lt!2058125 lt!2058122)))

(declare-fun lt!2058124 () Unit!148639)

(declare-fun lemmaSemiInverse!2614 (TokenValueInjection!16834 BalanceConc!29840) Unit!148639)

(assert (=> b!4981555 (= lt!2058124 (lemmaSemiInverse!2614 (transformation!8453 rule!200) (seqFromList!6074 (_1!34558 lt!2058123))))))

(declare-fun b!4981556 () Bool)

(assert (=> b!4981556 (= e!3113528 (= (size!38202 (_1!34555 (get!20016 lt!2058121))) (size!38204 (originalCharacters!8712 (_1!34555 (get!20016 lt!2058121))))))))

(declare-fun b!4981557 () Bool)

(assert (=> b!4981557 (= e!3113529 (matchR!6680 (regex!8453 rule!200) (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))))))

(declare-fun b!4981558 () Bool)

(declare-fun res!2126536 () Bool)

(assert (=> b!4981558 (=> (not res!2126536) (not e!3113528))))

(assert (=> b!4981558 (= res!2126536 (= (++!12550 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121)))) (_2!34555 (get!20016 lt!2058121))) lt!2057881))))

(declare-fun b!4981560 () Bool)

(declare-fun res!2126532 () Bool)

(assert (=> b!4981560 (=> (not res!2126532) (not e!3113528))))

(assert (=> b!4981560 (= res!2126532 (< (size!38204 (_2!34555 (get!20016 lt!2058121))) (size!38204 lt!2057881)))))

(declare-fun b!4981559 () Bool)

(assert (=> b!4981559 (= e!3113531 None!14524)))

(declare-fun d!1604180 () Bool)

(assert (=> d!1604180 e!3113530))

(declare-fun res!2126535 () Bool)

(assert (=> d!1604180 (=> res!2126535 e!3113530)))

(assert (=> d!1604180 (= res!2126535 (isEmpty!31087 lt!2058121))))

(assert (=> d!1604180 (= lt!2058121 e!3113531)))

(declare-fun c!850049 () Bool)

(assert (=> d!1604180 (= c!850049 (isEmpty!31083 (_1!34558 lt!2058123)))))

(declare-fun findLongestMatch!1713 (Regex!13686 List!57702) tuple2!62510)

(assert (=> d!1604180 (= lt!2058123 (findLongestMatch!1713 (regex!8453 rule!200) lt!2057881))))

(assert (=> d!1604180 (ruleValid!3861 thiss!16165 rule!200)))

(assert (=> d!1604180 (= (maxPrefixOneRule!3669 thiss!16165 rule!200 lt!2057881) lt!2058121)))

(declare-fun b!4981561 () Bool)

(declare-fun res!2126533 () Bool)

(assert (=> b!4981561 (=> (not res!2126533) (not e!3113528))))

(assert (=> b!4981561 (= res!2126533 (= (rule!11705 (_1!34555 (get!20016 lt!2058121))) rule!200))))

(declare-fun b!4981562 () Bool)

(declare-fun res!2126537 () Bool)

(assert (=> b!4981562 (=> (not res!2126537) (not e!3113528))))

(assert (=> b!4981562 (= res!2126537 (= (value!270332 (_1!34555 (get!20016 lt!2058121))) (apply!13940 (transformation!8453 (rule!11705 (_1!34555 (get!20016 lt!2058121)))) (seqFromList!6074 (originalCharacters!8712 (_1!34555 (get!20016 lt!2058121)))))))))

(assert (= (and d!1604180 c!850049) b!4981559))

(assert (= (and d!1604180 (not c!850049)) b!4981555))

(assert (= (and b!4981555 (not res!2126534)) b!4981557))

(assert (= (and d!1604180 (not res!2126535)) b!4981554))

(assert (= (and b!4981554 res!2126531) b!4981558))

(assert (= (and b!4981558 res!2126536) b!4981560))

(assert (= (and b!4981560 res!2126532) b!4981561))

(assert (= (and b!4981561 res!2126533) b!4981562))

(assert (= (and b!4981562 res!2126537) b!4981556))

(assert (=> b!4981557 m!6012414))

(assert (=> b!4981557 m!6012410))

(assert (=> b!4981557 m!6012414))

(assert (=> b!4981557 m!6012410))

(assert (=> b!4981557 m!6012418))

(assert (=> b!4981557 m!6012654))

(declare-fun m!6012702 () Bool)

(assert (=> b!4981560 m!6012702))

(declare-fun m!6012704 () Bool)

(assert (=> b!4981560 m!6012704))

(assert (=> b!4981560 m!6012410))

(declare-fun m!6012706 () Bool)

(assert (=> b!4981555 m!6012706))

(declare-fun m!6012708 () Bool)

(assert (=> b!4981555 m!6012708))

(assert (=> b!4981555 m!6012706))

(declare-fun m!6012710 () Bool)

(assert (=> b!4981555 m!6012710))

(assert (=> b!4981555 m!6012650))

(assert (=> b!4981555 m!6012414))

(assert (=> b!4981555 m!6012410))

(assert (=> b!4981555 m!6012418))

(assert (=> b!4981555 m!6012410))

(assert (=> b!4981555 m!6012406))

(assert (=> b!4981555 m!6012706))

(assert (=> b!4981555 m!6012706))

(declare-fun m!6012712 () Bool)

(assert (=> b!4981555 m!6012712))

(assert (=> b!4981555 m!6012414))

(assert (=> b!4981556 m!6012702))

(declare-fun m!6012714 () Bool)

(assert (=> b!4981556 m!6012714))

(assert (=> b!4981558 m!6012702))

(declare-fun m!6012716 () Bool)

(assert (=> b!4981558 m!6012716))

(assert (=> b!4981558 m!6012716))

(declare-fun m!6012718 () Bool)

(assert (=> b!4981558 m!6012718))

(assert (=> b!4981558 m!6012718))

(declare-fun m!6012720 () Bool)

(assert (=> b!4981558 m!6012720))

(assert (=> b!4981554 m!6012702))

(assert (=> b!4981554 m!6012716))

(assert (=> b!4981554 m!6012716))

(assert (=> b!4981554 m!6012718))

(assert (=> b!4981554 m!6012718))

(declare-fun m!6012722 () Bool)

(assert (=> b!4981554 m!6012722))

(declare-fun m!6012724 () Bool)

(assert (=> d!1604180 m!6012724))

(declare-fun m!6012726 () Bool)

(assert (=> d!1604180 m!6012726))

(declare-fun m!6012728 () Bool)

(assert (=> d!1604180 m!6012728))

(assert (=> d!1604180 m!6012376))

(assert (=> b!4981562 m!6012702))

(declare-fun m!6012730 () Bool)

(assert (=> b!4981562 m!6012730))

(assert (=> b!4981562 m!6012730))

(declare-fun m!6012732 () Bool)

(assert (=> b!4981562 m!6012732))

(assert (=> b!4981561 m!6012702))

(assert (=> b!4981278 d!1604180))

(declare-fun d!1604202 () Bool)

(declare-fun dynLambda!23350 (Int BalanceConc!29840) Bool)

(assert (=> d!1604202 (dynLambda!23350 lambda!247827 (_1!34556 lt!2057877))))

(declare-fun lt!2058138 () Unit!148639)

(declare-fun choose!36793 (Int BalanceConc!29840) Unit!148639)

(assert (=> d!1604202 (= lt!2058138 (choose!36793 lambda!247827 (_1!34556 lt!2057877)))))

(assert (=> d!1604202 (Forall!1803 lambda!247827)))

(assert (=> d!1604202 (= (ForallOf!1263 lambda!247827 (_1!34556 lt!2057877)) lt!2058138)))

(declare-fun b_lambda!197813 () Bool)

(assert (=> (not b_lambda!197813) (not d!1604202)))

(declare-fun bs!1184283 () Bool)

(assert (= bs!1184283 d!1604202))

(declare-fun m!6012734 () Bool)

(assert (=> bs!1184283 m!6012734))

(declare-fun m!6012736 () Bool)

(assert (=> bs!1184283 m!6012736))

(assert (=> bs!1184283 m!6012400))

(assert (=> b!4981278 d!1604202))

(declare-fun d!1604204 () Bool)

(assert (=> d!1604204 (dynLambda!23350 lambda!247827 lt!2057880)))

(declare-fun lt!2058139 () Unit!148639)

(assert (=> d!1604204 (= lt!2058139 (choose!36793 lambda!247827 lt!2057880))))

(assert (=> d!1604204 (Forall!1803 lambda!247827)))

(assert (=> d!1604204 (= (ForallOf!1263 lambda!247827 lt!2057880) lt!2058139)))

(declare-fun b_lambda!197815 () Bool)

(assert (=> (not b_lambda!197815) (not d!1604204)))

(declare-fun bs!1184284 () Bool)

(assert (= bs!1184284 d!1604204))

(declare-fun m!6012738 () Bool)

(assert (=> bs!1184284 m!6012738))

(declare-fun m!6012740 () Bool)

(assert (=> bs!1184284 m!6012740))

(assert (=> bs!1184284 m!6012400))

(assert (=> b!4981278 d!1604204))

(declare-fun d!1604206 () Bool)

(declare-fun fromListB!2744 (List!57702) BalanceConc!29840)

(assert (=> d!1604206 (= (seqFromList!6074 lt!2057873) (fromListB!2744 lt!2057873))))

(declare-fun bs!1184285 () Bool)

(assert (= bs!1184285 d!1604206))

(declare-fun m!6012742 () Bool)

(assert (=> bs!1184285 m!6012742))

(assert (=> b!4981278 d!1604206))

(declare-fun d!1604208 () Bool)

(assert (=> d!1604208 (= (list!18457 (_1!34556 lt!2057877)) (list!18459 (c!849983 (_1!34556 lt!2057877))))))

(declare-fun bs!1184286 () Bool)

(assert (= bs!1184286 d!1604208))

(declare-fun m!6012744 () Bool)

(assert (=> bs!1184286 m!6012744))

(assert (=> b!4981278 d!1604208))

(declare-fun d!1604210 () Bool)

(declare-fun lt!2058146 () Int)

(assert (=> d!1604210 (= lt!2058146 (size!38204 (list!18457 (_1!34556 lt!2057877))))))

(declare-fun size!38209 (Conc!15205) Int)

(assert (=> d!1604210 (= lt!2058146 (size!38209 (c!849983 (_1!34556 lt!2057877))))))

(assert (=> d!1604210 (= (size!38203 (_1!34556 lt!2057877)) lt!2058146)))

(declare-fun bs!1184287 () Bool)

(assert (= bs!1184287 d!1604210))

(assert (=> bs!1184287 m!6012386))

(assert (=> bs!1184287 m!6012386))

(declare-fun m!6012746 () Bool)

(assert (=> bs!1184287 m!6012746))

(declare-fun m!6012748 () Bool)

(assert (=> bs!1184287 m!6012748))

(assert (=> b!4981278 d!1604210))

(declare-fun d!1604212 () Bool)

(declare-fun lt!2058150 () Bool)

(assert (=> d!1604212 (= lt!2058150 (isEmpty!31083 (list!18457 (_1!34556 lt!2057877))))))

(declare-fun isEmpty!31090 (Conc!15205) Bool)

(assert (=> d!1604212 (= lt!2058150 (isEmpty!31090 (c!849983 (_1!34556 lt!2057877))))))

(assert (=> d!1604212 (= (isEmpty!31084 (_1!34556 lt!2057877)) lt!2058150)))

(declare-fun bs!1184288 () Bool)

(assert (= bs!1184288 d!1604212))

(assert (=> bs!1184288 m!6012386))

(assert (=> bs!1184288 m!6012386))

(declare-fun m!6012760 () Bool)

(assert (=> bs!1184288 m!6012760))

(declare-fun m!6012762 () Bool)

(assert (=> bs!1184288 m!6012762))

(assert (=> b!4981287 d!1604212))

(declare-fun d!1604214 () Bool)

(declare-fun lt!2058153 () tuple2!62506)

(assert (=> d!1604214 (= (tuple2!62511 (list!18457 (_1!34556 lt!2058153)) (list!18457 (_2!34556 lt!2058153))) (findLongestMatch!1713 (regex!8453 rule!200) (list!18457 input!1580)))))

(declare-fun choose!36795 (Regex!13686 BalanceConc!29840 BalanceConc!29840) tuple2!62506)

(assert (=> d!1604214 (= lt!2058153 (choose!36795 (regex!8453 rule!200) input!1580 totalInput!520))))

(assert (=> d!1604214 (validRegex!5987 (regex!8453 rule!200))))

(assert (=> d!1604214 (= (findLongestMatchWithZipperSequenceV2!216 (regex!8453 rule!200) input!1580 totalInput!520) lt!2058153)))

(declare-fun bs!1184290 () Bool)

(assert (= bs!1184290 d!1604214))

(declare-fun m!6012792 () Bool)

(assert (=> bs!1184290 m!6012792))

(assert (=> bs!1184290 m!6012374))

(declare-fun m!6012794 () Bool)

(assert (=> bs!1184290 m!6012794))

(assert (=> bs!1184290 m!6012374))

(declare-fun m!6012796 () Bool)

(assert (=> bs!1184290 m!6012796))

(declare-fun m!6012798 () Bool)

(assert (=> bs!1184290 m!6012798))

(assert (=> bs!1184290 m!6012488))

(assert (=> b!4981287 d!1604214))

(declare-fun d!1604224 () Bool)

(declare-fun e!3113559 () Bool)

(assert (=> d!1604224 e!3113559))

(declare-fun res!2126570 () Bool)

(assert (=> d!1604224 (=> res!2126570 e!3113559)))

(declare-fun lt!2058158 () Bool)

(assert (=> d!1604224 (= res!2126570 (not lt!2058158))))

(declare-fun drop!2369 (List!57702 Int) List!57702)

(assert (=> d!1604224 (= lt!2058158 (= lt!2057881 (drop!2369 (list!18457 totalInput!520) (- (size!38204 (list!18457 totalInput!520)) (size!38204 lt!2057881)))))))

(assert (=> d!1604224 (= (isSuffix!1252 lt!2057881 (list!18457 totalInput!520)) lt!2058158)))

(declare-fun b!4981615 () Bool)

(assert (=> b!4981615 (= e!3113559 (>= (size!38204 (list!18457 totalInput!520)) (size!38204 lt!2057881)))))

(assert (= (and d!1604224 (not res!2126570)) b!4981615))

(assert (=> d!1604224 m!6012370))

(declare-fun m!6012800 () Bool)

(assert (=> d!1604224 m!6012800))

(assert (=> d!1604224 m!6012410))

(assert (=> d!1604224 m!6012370))

(declare-fun m!6012802 () Bool)

(assert (=> d!1604224 m!6012802))

(assert (=> b!4981615 m!6012370))

(assert (=> b!4981615 m!6012800))

(assert (=> b!4981615 m!6012410))

(assert (=> b!4981277 d!1604224))

(declare-fun d!1604226 () Bool)

(assert (=> d!1604226 (= (list!18457 totalInput!520) (list!18459 (c!849983 totalInput!520)))))

(declare-fun bs!1184291 () Bool)

(assert (= bs!1184291 d!1604226))

(declare-fun m!6012804 () Bool)

(assert (=> bs!1184291 m!6012804))

(assert (=> b!4981277 d!1604226))

(declare-fun d!1604228 () Bool)

(assert (=> d!1604228 (= (list!18457 input!1580) (list!18459 (c!849983 input!1580)))))

(declare-fun bs!1184292 () Bool)

(assert (= bs!1184292 d!1604228))

(declare-fun m!6012806 () Bool)

(assert (=> bs!1184292 m!6012806))

(assert (=> b!4981277 d!1604228))

(declare-fun d!1604230 () Bool)

(assert (=> d!1604230 (= (inv!75404 (tag!9317 rule!200)) (= (mod (str.len (value!270306 (tag!9317 rule!200))) 2) 0))))

(assert (=> b!4981276 d!1604230))

(declare-fun d!1604232 () Bool)

(declare-fun res!2126587 () Bool)

(declare-fun e!3113568 () Bool)

(assert (=> d!1604232 (=> (not res!2126587) (not e!3113568))))

(assert (=> d!1604232 (= res!2126587 (semiInverseModEq!3746 (toChars!11299 (transformation!8453 rule!200)) (toValue!11440 (transformation!8453 rule!200))))))

(assert (=> d!1604232 (= (inv!75407 (transformation!8453 rule!200)) e!3113568)))

(declare-fun b!4981632 () Bool)

(assert (=> b!4981632 (= e!3113568 (equivClasses!3569 (toChars!11299 (transformation!8453 rule!200)) (toValue!11440 (transformation!8453 rule!200))))))

(assert (= (and d!1604232 res!2126587) b!4981632))

(assert (=> d!1604232 m!6012416))

(assert (=> b!4981632 m!6012526))

(assert (=> b!4981276 d!1604232))

(declare-fun b!4981655 () Bool)

(declare-fun tp!1396551 () Bool)

(declare-fun tp!1396552 () Bool)

(declare-fun e!3113580 () Bool)

(assert (=> b!4981655 (= e!3113580 (and (inv!75408 (left!42084 (c!849983 totalInput!520))) tp!1396551 (inv!75408 (right!42414 (c!849983 totalInput!520))) tp!1396552))))

(declare-fun b!4981657 () Bool)

(declare-fun e!3113581 () Bool)

(declare-fun tp!1396553 () Bool)

(assert (=> b!4981657 (= e!3113581 tp!1396553)))

(declare-fun b!4981656 () Bool)

(declare-fun inv!75417 (IArray!30471) Bool)

(assert (=> b!4981656 (= e!3113580 (and (inv!75417 (xs!18531 (c!849983 totalInput!520))) e!3113581))))

(assert (=> b!4981279 (= tp!1396529 (and (inv!75408 (c!849983 totalInput!520)) e!3113580))))

(assert (= (and b!4981279 (is-Node!15205 (c!849983 totalInput!520))) b!4981655))

(assert (= b!4981656 b!4981657))

(assert (= (and b!4981279 (is-Leaf!25257 (c!849983 totalInput!520))) b!4981656))

(declare-fun m!6012808 () Bool)

(assert (=> b!4981655 m!6012808))

(declare-fun m!6012810 () Bool)

(assert (=> b!4981655 m!6012810))

(declare-fun m!6012812 () Bool)

(assert (=> b!4981656 m!6012812))

(assert (=> b!4981279 m!6012378))

(declare-fun b!4981658 () Bool)

(declare-fun tp!1396555 () Bool)

(declare-fun tp!1396554 () Bool)

(declare-fun e!3113582 () Bool)

(assert (=> b!4981658 (= e!3113582 (and (inv!75408 (left!42084 (c!849983 input!1580))) tp!1396554 (inv!75408 (right!42414 (c!849983 input!1580))) tp!1396555))))

(declare-fun b!4981660 () Bool)

(declare-fun e!3113583 () Bool)

(declare-fun tp!1396556 () Bool)

(assert (=> b!4981660 (= e!3113583 tp!1396556)))

(declare-fun b!4981659 () Bool)

(assert (=> b!4981659 (= e!3113582 (and (inv!75417 (xs!18531 (c!849983 input!1580))) e!3113583))))

(assert (=> b!4981284 (= tp!1396525 (and (inv!75408 (c!849983 input!1580)) e!3113582))))

(assert (= (and b!4981284 (is-Node!15205 (c!849983 input!1580))) b!4981658))

(assert (= b!4981659 b!4981660))

(assert (= (and b!4981284 (is-Leaf!25257 (c!849983 input!1580))) b!4981659))

(declare-fun m!6012814 () Bool)

(assert (=> b!4981658 m!6012814))

(declare-fun m!6012816 () Bool)

(assert (=> b!4981658 m!6012816))

(declare-fun m!6012818 () Bool)

(assert (=> b!4981659 m!6012818))

(assert (=> b!4981284 m!6012404))

(declare-fun b!4981674 () Bool)

(declare-fun e!3113586 () Bool)

(declare-fun tp!1396567 () Bool)

(declare-fun tp!1396568 () Bool)

(assert (=> b!4981674 (= e!3113586 (and tp!1396567 tp!1396568))))

(declare-fun b!4981671 () Bool)

(declare-fun tp_is_empty!36377 () Bool)

(assert (=> b!4981671 (= e!3113586 tp_is_empty!36377)))

(declare-fun b!4981673 () Bool)

(declare-fun tp!1396569 () Bool)

(assert (=> b!4981673 (= e!3113586 tp!1396569)))

(declare-fun b!4981672 () Bool)

(declare-fun tp!1396570 () Bool)

(declare-fun tp!1396571 () Bool)

(assert (=> b!4981672 (= e!3113586 (and tp!1396570 tp!1396571))))

(assert (=> b!4981276 (= tp!1396527 e!3113586)))

(assert (= (and b!4981276 (is-ElementMatch!13686 (regex!8453 rule!200))) b!4981671))

(assert (= (and b!4981276 (is-Concat!22449 (regex!8453 rule!200))) b!4981672))

(assert (= (and b!4981276 (is-Star!13686 (regex!8453 rule!200))) b!4981673))

(assert (= (and b!4981276 (is-Union!13686 (regex!8453 rule!200))) b!4981674))

(declare-fun b_lambda!197817 () Bool)

(assert (= b_lambda!197813 (or b!4981281 b_lambda!197817)))

(declare-fun bs!1184294 () Bool)

(declare-fun d!1604238 () Bool)

(assert (= bs!1184294 (and d!1604238 b!4981281)))

(declare-fun dynLambda!23353 (Int TokenValue!8763) BalanceConc!29840)

(assert (=> bs!1184294 (= (dynLambda!23350 lambda!247827 (_1!34556 lt!2057877)) (= (list!18457 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877)))) (list!18457 (_1!34556 lt!2057877))))))

(declare-fun b_lambda!197823 () Bool)

(assert (=> (not b_lambda!197823) (not bs!1184294)))

(declare-fun t!369803 () Bool)

(declare-fun tb!261603 () Bool)

(assert (=> (and b!4981286 (= (toChars!11299 (transformation!8453 rule!200)) (toChars!11299 (transformation!8453 rule!200))) t!369803) tb!261603))

(declare-fun b!4981679 () Bool)

(declare-fun tp!1396574 () Bool)

(declare-fun e!3113589 () Bool)

(assert (=> b!4981679 (= e!3113589 (and (inv!75408 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))))) tp!1396574))))

(declare-fun result!326898 () Bool)

(assert (=> tb!261603 (= result!326898 (and (inv!75409 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877)))) e!3113589))))

(assert (= tb!261603 b!4981679))

(declare-fun m!6012832 () Bool)

(assert (=> b!4981679 m!6012832))

(declare-fun m!6012834 () Bool)

(assert (=> tb!261603 m!6012834))

(assert (=> bs!1184294 t!369803))

(declare-fun b_and!349615 () Bool)

(assert (= b_and!349605 (and (=> t!369803 result!326898) b_and!349615)))

(declare-fun b_lambda!197825 () Bool)

(assert (=> (not b_lambda!197825) (not bs!1184294)))

(assert (=> bs!1184294 t!369799))

(declare-fun b_and!349617 () Bool)

(assert (= b_and!349611 (and (=> t!369799 result!326886) b_and!349617)))

(assert (=> bs!1184294 m!6012666))

(declare-fun m!6012836 () Bool)

(assert (=> bs!1184294 m!6012836))

(declare-fun m!6012838 () Bool)

(assert (=> bs!1184294 m!6012838))

(assert (=> bs!1184294 m!6012666))

(assert (=> bs!1184294 m!6012836))

(assert (=> bs!1184294 m!6012386))

(assert (=> d!1604202 d!1604238))

(declare-fun b_lambda!197819 () Bool)

(assert (= b_lambda!197805 (or (and b!4981286 b_free!133111) b_lambda!197819)))

(declare-fun b_lambda!197821 () Bool)

(assert (= b_lambda!197815 (or b!4981281 b_lambda!197821)))

(declare-fun bs!1184295 () Bool)

(declare-fun d!1604240 () Bool)

(assert (= bs!1184295 (and d!1604240 b!4981281)))

(assert (=> bs!1184295 (= (dynLambda!23350 lambda!247827 lt!2057880) (= (list!18457 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880))) (list!18457 lt!2057880)))))

(declare-fun b_lambda!197827 () Bool)

(assert (=> (not b_lambda!197827) (not bs!1184295)))

(declare-fun t!369805 () Bool)

(declare-fun tb!261605 () Bool)

(assert (=> (and b!4981286 (= (toChars!11299 (transformation!8453 rule!200)) (toChars!11299 (transformation!8453 rule!200))) t!369805) tb!261605))

(declare-fun tp!1396575 () Bool)

(declare-fun e!3113592 () Bool)

(declare-fun b!4981682 () Bool)

(assert (=> b!4981682 (= e!3113592 (and (inv!75408 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)))) tp!1396575))))

(declare-fun result!326902 () Bool)

(assert (=> tb!261605 (= result!326902 (and (inv!75409 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880))) e!3113592))))

(assert (= tb!261605 b!4981682))

(declare-fun m!6012840 () Bool)

(assert (=> b!4981682 m!6012840))

(declare-fun m!6012842 () Bool)

(assert (=> tb!261605 m!6012842))

(assert (=> bs!1184295 t!369805))

(declare-fun b_and!349619 () Bool)

(assert (= b_and!349615 (and (=> t!369805 result!326902) b_and!349619)))

(declare-fun b_lambda!197829 () Bool)

(assert (=> (not b_lambda!197829) (not bs!1184295)))

(declare-fun t!369807 () Bool)

(declare-fun tb!261607 () Bool)

(assert (=> (and b!4981286 (= (toValue!11440 (transformation!8453 rule!200)) (toValue!11440 (transformation!8453 rule!200))) t!369807) tb!261607))

(declare-fun result!326904 () Bool)

(assert (=> tb!261607 (= result!326904 (inv!21 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)))))

(declare-fun m!6012848 () Bool)

(assert (=> tb!261607 m!6012848))

(assert (=> bs!1184295 t!369807))

(declare-fun b_and!349621 () Bool)

(assert (= b_and!349617 (and (=> t!369807 result!326904) b_and!349621)))

(declare-fun m!6012850 () Bool)

(assert (=> bs!1184295 m!6012850))

(declare-fun m!6012852 () Bool)

(assert (=> bs!1184295 m!6012852))

(declare-fun m!6012854 () Bool)

(assert (=> bs!1184295 m!6012854))

(assert (=> bs!1184295 m!6012850))

(assert (=> bs!1184295 m!6012852))

(assert (=> bs!1184295 m!6012380))

(assert (=> d!1604204 d!1604240))

(push 1)

(assert (not d!1604164))

(assert (not b!4981658))

(assert (not b!4981519))

(assert (not b!4981682))

(assert (not b_lambda!197819))

(assert (not d!1604180))

(assert (not d!1604206))

(assert (not b!4981499))

(assert (not d!1604208))

(assert (not b!4981556))

(assert (not d!1604224))

(assert (not b!4981656))

(assert tp_is_empty!36377)

(assert (not tb!261605))

(assert (not d!1604124))

(assert (not bm!347500))

(assert (not b_lambda!197821))

(assert (not b!4981409))

(assert (not b!4981400))

(assert (not b_next!133901))

(assert (not b!4981355))

(assert (not bm!347453))

(assert (not b!4981660))

(assert (not bm!347496))

(assert (not b_lambda!197827))

(assert (not bm!347495))

(assert (not d!1604210))

(assert (not b!4981357))

(assert (not bm!347498))

(assert (not b!4981679))

(assert (not bs!1184294))

(assert (not tb!261603))

(assert (not b!4981284))

(assert (not d!1604136))

(assert (not b!4981674))

(assert (not b_next!133903))

(assert (not d!1604174))

(assert (not d!1604176))

(assert (not d!1604172))

(assert (not tb!261607))

(assert (not b!4981531))

(assert (not b!4981672))

(assert (not d!1604170))

(assert (not d!1604132))

(assert (not b!4981401))

(assert (not b!4981508))

(assert (not d!1604214))

(assert (not b!4981561))

(assert (not b!4981673))

(assert (not b!4981558))

(assert (not b!4981555))

(assert (not d!1604144))

(assert (not b!4981632))

(assert (not b!4981279))

(assert (not d!1604202))

(assert (not b!4981399))

(assert (not b!4981502))

(assert (not b!4981562))

(assert (not b!4981560))

(assert (not tb!261599))

(assert (not b!4981347))

(assert (not bm!347494))

(assert (not d!1604212))

(assert (not d!1604158))

(assert (not b!4981659))

(assert (not b!4981425))

(assert (not b!4981396))

(assert (not b_lambda!197823))

(assert (not d!1604152))

(assert (not bm!347499))

(assert (not b_lambda!197825))

(assert (not b!4981655))

(assert (not d!1604228))

(assert (not b!4981393))

(assert (not b!4981554))

(assert (not b!4981657))

(assert (not bs!1184295))

(assert (not b!4981557))

(assert (not d!1604204))

(assert (not d!1604226))

(assert (not b!4981390))

(assert (not b!4981419))

(assert b_and!349619)

(assert (not b!4981615))

(assert (not b!4981411))

(assert (not b_lambda!197817))

(assert (not d!1604126))

(assert (not d!1604232))

(assert b_and!349621)

(assert (not b_lambda!197829))

(assert (not bm!347501))

(assert (not b!4981507))

(assert (not bm!347497))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349619)

(assert b_and!349621)

(assert (not b_next!133903))

(assert (not b_next!133901))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!197845 () Bool)

(assert (= b_lambda!197825 (or (and b!4981286 b_free!133111) b_lambda!197845)))

(declare-fun b_lambda!197847 () Bool)

(assert (= b_lambda!197823 (or (and b!4981286 b_free!133113) b_lambda!197847)))

(declare-fun b_lambda!197849 () Bool)

(assert (= b_lambda!197827 (or (and b!4981286 b_free!133113) b_lambda!197849)))

(declare-fun b_lambda!197851 () Bool)

(assert (= b_lambda!197829 (or (and b!4981286 b_free!133111) b_lambda!197851)))

(push 1)

(assert (not b_lambda!197849))

(assert (not d!1604164))

(assert (not b!4981658))

(assert (not b!4981655))

(assert (not b!4981519))

(assert (not b!4981682))

(assert (not b_lambda!197819))

(assert (not d!1604180))

(assert (not b_lambda!197845))

(assert (not d!1604206))

(assert (not b!4981499))

(assert (not d!1604208))

(assert (not b!4981556))

(assert (not d!1604224))

(assert (not b!4981656))

(assert tp_is_empty!36377)

(assert (not tb!261605))

(assert (not d!1604124))

(assert (not bm!347500))

(assert (not b_lambda!197821))

(assert (not b!4981409))

(assert (not b!4981400))

(assert (not b_next!133901))

(assert (not b!4981355))

(assert (not bm!347453))

(assert (not b!4981660))

(assert (not bm!347496))

(assert (not bm!347495))

(assert (not d!1604210))

(assert (not b!4981357))

(assert (not b_lambda!197851))

(assert (not bm!347498))

(assert (not b!4981679))

(assert (not bs!1184294))

(assert (not tb!261603))

(assert (not b!4981284))

(assert (not d!1604136))

(assert (not b!4981674))

(assert (not b_next!133903))

(assert (not d!1604174))

(assert (not d!1604176))

(assert (not d!1604172))

(assert (not tb!261607))

(assert (not b!4981531))

(assert (not b!4981672))

(assert (not d!1604170))

(assert (not d!1604132))

(assert (not b!4981401))

(assert (not b!4981508))

(assert (not d!1604214))

(assert (not b!4981561))

(assert (not b!4981673))

(assert (not b!4981558))

(assert (not b!4981555))

(assert (not d!1604144))

(assert (not b!4981632))

(assert (not b!4981279))

(assert (not d!1604202))

(assert (not b!4981399))

(assert (not b!4981502))

(assert (not b!4981562))

(assert (not b!4981560))

(assert (not tb!261599))

(assert (not b!4981347))

(assert (not bm!347494))

(assert (not d!1604212))

(assert (not d!1604158))

(assert (not b_lambda!197847))

(assert (not b!4981659))

(assert (not b!4981425))

(assert (not b!4981396))

(assert (not d!1604152))

(assert (not bm!347499))

(assert (not d!1604228))

(assert (not b!4981393))

(assert (not b!4981554))

(assert (not b!4981657))

(assert (not bs!1184295))

(assert (not b!4981557))

(assert (not d!1604204))

(assert (not d!1604226))

(assert (not b!4981390))

(assert (not b!4981419))

(assert b_and!349619)

(assert (not b!4981615))

(assert (not b!4981411))

(assert (not b_lambda!197817))

(assert (not d!1604126))

(assert (not d!1604232))

(assert b_and!349621)

(assert (not bm!347501))

(assert (not b!4981507))

(assert (not bm!347497))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349619)

(assert b_and!349621)

(assert (not b_next!133903))

(assert (not b_next!133901))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4981739 () Bool)

(declare-fun e!3113628 () Bool)

(declare-fun e!3113634 () Bool)

(assert (=> b!4981739 (= e!3113628 e!3113634)))

(declare-fun res!2126613 () Bool)

(assert (=> b!4981739 (=> (not res!2126613) (not e!3113634))))

(declare-fun call!347517 () Bool)

(assert (=> b!4981739 (= res!2126613 call!347517)))

(declare-fun bm!347511 () Bool)

(declare-fun c!850067 () Bool)

(declare-fun call!347516 () Bool)

(declare-fun c!850068 () Bool)

(assert (=> bm!347511 (= call!347516 (validRegex!5987 (ite c!850067 (reg!14015 (regex!8453 rule!200)) (ite c!850068 (regTwo!27885 (regex!8453 rule!200)) (regTwo!27884 (regex!8453 rule!200))))))))

(declare-fun b!4981740 () Bool)

(declare-fun e!3113633 () Bool)

(declare-fun e!3113632 () Bool)

(assert (=> b!4981740 (= e!3113633 e!3113632)))

(assert (=> b!4981740 (= c!850067 (is-Star!13686 (regex!8453 rule!200)))))

(declare-fun b!4981741 () Bool)

(declare-fun res!2126616 () Bool)

(declare-fun e!3113630 () Bool)

(assert (=> b!4981741 (=> (not res!2126616) (not e!3113630))))

(assert (=> b!4981741 (= res!2126616 call!347517)))

(declare-fun e!3113631 () Bool)

(assert (=> b!4981741 (= e!3113631 e!3113630)))

(declare-fun b!4981742 () Bool)

(declare-fun res!2126615 () Bool)

(assert (=> b!4981742 (=> res!2126615 e!3113628)))

(assert (=> b!4981742 (= res!2126615 (not (is-Concat!22449 (regex!8453 rule!200))))))

(assert (=> b!4981742 (= e!3113631 e!3113628)))

(declare-fun d!1604256 () Bool)

(declare-fun res!2126612 () Bool)

(assert (=> d!1604256 (=> res!2126612 e!3113633)))

(assert (=> d!1604256 (= res!2126612 (is-ElementMatch!13686 (regex!8453 rule!200)))))

(assert (=> d!1604256 (= (validRegex!5987 (regex!8453 rule!200)) e!3113633)))

(declare-fun bm!347512 () Bool)

(declare-fun call!347518 () Bool)

(assert (=> bm!347512 (= call!347518 call!347516)))

(declare-fun b!4981743 () Bool)

(assert (=> b!4981743 (= e!3113632 e!3113631)))

(assert (=> b!4981743 (= c!850068 (is-Union!13686 (regex!8453 rule!200)))))

(declare-fun b!4981744 () Bool)

(assert (=> b!4981744 (= e!3113634 call!347518)))

(declare-fun bm!347513 () Bool)

(assert (=> bm!347513 (= call!347517 (validRegex!5987 (ite c!850068 (regOne!27885 (regex!8453 rule!200)) (regOne!27884 (regex!8453 rule!200)))))))

(declare-fun b!4981745 () Bool)

(declare-fun e!3113629 () Bool)

(assert (=> b!4981745 (= e!3113632 e!3113629)))

(declare-fun res!2126614 () Bool)

(assert (=> b!4981745 (= res!2126614 (not (nullable!4638 (reg!14015 (regex!8453 rule!200)))))))

(assert (=> b!4981745 (=> (not res!2126614) (not e!3113629))))

(declare-fun b!4981746 () Bool)

(assert (=> b!4981746 (= e!3113630 call!347518)))

(declare-fun b!4981747 () Bool)

(assert (=> b!4981747 (= e!3113629 call!347516)))

(assert (= (and d!1604256 (not res!2126612)) b!4981740))

(assert (= (and b!4981740 c!850067) b!4981745))

(assert (= (and b!4981740 (not c!850067)) b!4981743))

(assert (= (and b!4981745 res!2126614) b!4981747))

(assert (= (and b!4981743 c!850068) b!4981741))

(assert (= (and b!4981743 (not c!850068)) b!4981742))

(assert (= (and b!4981741 res!2126616) b!4981746))

(assert (= (and b!4981742 (not res!2126615)) b!4981739))

(assert (= (and b!4981739 res!2126613) b!4981744))

(assert (= (or b!4981741 b!4981739) bm!347513))

(assert (= (or b!4981746 b!4981744) bm!347512))

(assert (= (or b!4981747 bm!347512) bm!347511))

(declare-fun m!6012894 () Bool)

(assert (=> bm!347511 m!6012894))

(declare-fun m!6012896 () Bool)

(assert (=> bm!347513 m!6012896))

(declare-fun m!6012898 () Bool)

(assert (=> b!4981745 m!6012898))

(assert (=> d!1604126 d!1604256))

(declare-fun d!1604258 () Bool)

(assert (=> d!1604258 (= (isEmpty!31087 lt!2058121) (not (is-Some!14524 lt!2058121)))))

(assert (=> d!1604180 d!1604258))

(declare-fun d!1604260 () Bool)

(assert (=> d!1604260 (= (isEmpty!31083 (_1!34558 lt!2058123)) (is-Nil!57578 (_1!34558 lt!2058123)))))

(assert (=> d!1604180 d!1604260))

(declare-fun d!1604262 () Bool)

(declare-fun lt!2058186 () tuple2!62510)

(assert (=> d!1604262 (= (++!12550 (_1!34558 lt!2058186) (_2!34558 lt!2058186)) lt!2057881)))

(declare-fun sizeTr!369 (List!57702 Int) Int)

(assert (=> d!1604262 (= lt!2058186 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 0 lt!2057881 lt!2057881 (sizeTr!369 lt!2057881 0)))))

(declare-fun lt!2058182 () Unit!148639)

(declare-fun lt!2058184 () Unit!148639)

(assert (=> d!1604262 (= lt!2058182 lt!2058184)))

(declare-fun lt!2058180 () List!57702)

(declare-fun lt!2058183 () Int)

(assert (=> d!1604262 (= (sizeTr!369 lt!2058180 lt!2058183) (+ (size!38204 lt!2058180) lt!2058183))))

(declare-fun lemmaSizeTrEqualsSize!368 (List!57702 Int) Unit!148639)

(assert (=> d!1604262 (= lt!2058184 (lemmaSizeTrEqualsSize!368 lt!2058180 lt!2058183))))

(assert (=> d!1604262 (= lt!2058183 0)))

(assert (=> d!1604262 (= lt!2058180 Nil!57578)))

(declare-fun lt!2058179 () Unit!148639)

(declare-fun lt!2058185 () Unit!148639)

(assert (=> d!1604262 (= lt!2058179 lt!2058185)))

(declare-fun lt!2058181 () Int)

(assert (=> d!1604262 (= (sizeTr!369 lt!2057881 lt!2058181) (+ (size!38204 lt!2057881) lt!2058181))))

(assert (=> d!1604262 (= lt!2058185 (lemmaSizeTrEqualsSize!368 lt!2057881 lt!2058181))))

(assert (=> d!1604262 (= lt!2058181 0)))

(assert (=> d!1604262 (validRegex!5987 (regex!8453 rule!200))))

(assert (=> d!1604262 (= (findLongestMatch!1713 (regex!8453 rule!200) lt!2057881) lt!2058186)))

(declare-fun bs!1184301 () Bool)

(assert (= bs!1184301 d!1604262))

(declare-fun m!6012900 () Bool)

(assert (=> bs!1184301 m!6012900))

(declare-fun m!6012902 () Bool)

(assert (=> bs!1184301 m!6012902))

(assert (=> bs!1184301 m!6012488))

(declare-fun m!6012904 () Bool)

(assert (=> bs!1184301 m!6012904))

(assert (=> bs!1184301 m!6012410))

(declare-fun m!6012906 () Bool)

(assert (=> bs!1184301 m!6012906))

(declare-fun m!6012908 () Bool)

(assert (=> bs!1184301 m!6012908))

(assert (=> bs!1184301 m!6012902))

(declare-fun m!6012910 () Bool)

(assert (=> bs!1184301 m!6012910))

(declare-fun m!6012912 () Bool)

(assert (=> bs!1184301 m!6012912))

(declare-fun m!6012914 () Bool)

(assert (=> bs!1184301 m!6012914))

(assert (=> d!1604180 d!1604262))

(assert (=> d!1604180 d!1604126))

(declare-fun b!4981748 () Bool)

(declare-fun e!3113638 () Bool)

(declare-fun e!3113636 () Bool)

(assert (=> b!4981748 (= e!3113638 e!3113636)))

(declare-fun res!2126623 () Bool)

(assert (=> b!4981748 (=> (not res!2126623) (not e!3113636))))

(declare-fun lt!2058187 () Bool)

(assert (=> b!4981748 (= res!2126623 (not lt!2058187))))

(declare-fun b!4981749 () Bool)

(declare-fun e!3113640 () Bool)

(assert (=> b!4981749 (= e!3113640 (matchR!6680 (derivativeStep!3938 (regex!8453 rule!200) (head!10687 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121)))))) (tail!9820 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121)))))))))

(declare-fun bm!347514 () Bool)

(declare-fun call!347519 () Bool)

(assert (=> bm!347514 (= call!347519 (isEmpty!31083 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121))))))))

(declare-fun b!4981750 () Bool)

(declare-fun e!3113637 () Bool)

(declare-fun e!3113641 () Bool)

(assert (=> b!4981750 (= e!3113637 e!3113641)))

(declare-fun c!850070 () Bool)

(assert (=> b!4981750 (= c!850070 (is-EmptyLang!13686 (regex!8453 rule!200)))))

(declare-fun b!4981751 () Bool)

(declare-fun e!3113635 () Bool)

(assert (=> b!4981751 (= e!3113636 e!3113635)))

(declare-fun res!2126617 () Bool)

(assert (=> b!4981751 (=> res!2126617 e!3113635)))

(assert (=> b!4981751 (= res!2126617 call!347519)))

(declare-fun b!4981752 () Bool)

(declare-fun res!2126619 () Bool)

(assert (=> b!4981752 (=> res!2126619 e!3113635)))

(assert (=> b!4981752 (= res!2126619 (not (isEmpty!31083 (tail!9820 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121))))))))))

(declare-fun b!4981753 () Bool)

(declare-fun res!2126621 () Bool)

(assert (=> b!4981753 (=> res!2126621 e!3113638)))

(assert (=> b!4981753 (= res!2126621 (not (is-ElementMatch!13686 (regex!8453 rule!200))))))

(assert (=> b!4981753 (= e!3113641 e!3113638)))

(declare-fun b!4981754 () Bool)

(declare-fun res!2126618 () Bool)

(assert (=> b!4981754 (=> res!2126618 e!3113638)))

(declare-fun e!3113639 () Bool)

(assert (=> b!4981754 (= res!2126618 e!3113639)))

(declare-fun res!2126620 () Bool)

(assert (=> b!4981754 (=> (not res!2126620) (not e!3113639))))

(assert (=> b!4981754 (= res!2126620 lt!2058187)))

(declare-fun b!4981755 () Bool)

(assert (=> b!4981755 (= e!3113635 (not (= (head!10687 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121))))) (c!849982 (regex!8453 rule!200)))))))

(declare-fun b!4981756 () Bool)

(declare-fun res!2126624 () Bool)

(assert (=> b!4981756 (=> (not res!2126624) (not e!3113639))))

(assert (=> b!4981756 (= res!2126624 (not call!347519))))

(declare-fun d!1604264 () Bool)

(assert (=> d!1604264 e!3113637))

(declare-fun c!850069 () Bool)

(assert (=> d!1604264 (= c!850069 (is-EmptyExpr!13686 (regex!8453 rule!200)))))

(assert (=> d!1604264 (= lt!2058187 e!3113640)))

(declare-fun c!850071 () Bool)

(assert (=> d!1604264 (= c!850071 (isEmpty!31083 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121))))))))

(assert (=> d!1604264 (validRegex!5987 (regex!8453 rule!200))))

(assert (=> d!1604264 (= (matchR!6680 (regex!8453 rule!200) (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121))))) lt!2058187)))

(declare-fun b!4981757 () Bool)

(assert (=> b!4981757 (= e!3113641 (not lt!2058187))))

(declare-fun b!4981758 () Bool)

(assert (=> b!4981758 (= e!3113640 (nullable!4638 (regex!8453 rule!200)))))

(declare-fun b!4981759 () Bool)

(assert (=> b!4981759 (= e!3113639 (= (head!10687 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121))))) (c!849982 (regex!8453 rule!200))))))

(declare-fun b!4981760 () Bool)

(declare-fun res!2126622 () Bool)

(assert (=> b!4981760 (=> (not res!2126622) (not e!3113639))))

(assert (=> b!4981760 (= res!2126622 (isEmpty!31083 (tail!9820 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121)))))))))

(declare-fun b!4981761 () Bool)

(assert (=> b!4981761 (= e!3113637 (= lt!2058187 call!347519))))

(assert (= (and d!1604264 c!850071) b!4981758))

(assert (= (and d!1604264 (not c!850071)) b!4981749))

(assert (= (and d!1604264 c!850069) b!4981761))

(assert (= (and d!1604264 (not c!850069)) b!4981750))

(assert (= (and b!4981750 c!850070) b!4981757))

(assert (= (and b!4981750 (not c!850070)) b!4981753))

(assert (= (and b!4981753 (not res!2126621)) b!4981754))

(assert (= (and b!4981754 res!2126620) b!4981756))

(assert (= (and b!4981756 res!2126624) b!4981760))

(assert (= (and b!4981760 res!2126622) b!4981759))

(assert (= (and b!4981754 (not res!2126618)) b!4981748))

(assert (= (and b!4981748 res!2126623) b!4981751))

(assert (= (and b!4981751 (not res!2126617)) b!4981752))

(assert (= (and b!4981752 (not res!2126619)) b!4981755))

(assert (= (or b!4981761 b!4981751 b!4981756) bm!347514))

(assert (=> b!4981759 m!6012718))

(declare-fun m!6012916 () Bool)

(assert (=> b!4981759 m!6012916))

(assert (=> b!4981760 m!6012718))

(declare-fun m!6012918 () Bool)

(assert (=> b!4981760 m!6012918))

(assert (=> b!4981760 m!6012918))

(declare-fun m!6012920 () Bool)

(assert (=> b!4981760 m!6012920))

(assert (=> bm!347514 m!6012718))

(declare-fun m!6012922 () Bool)

(assert (=> bm!347514 m!6012922))

(assert (=> b!4981752 m!6012718))

(assert (=> b!4981752 m!6012918))

(assert (=> b!4981752 m!6012918))

(assert (=> b!4981752 m!6012920))

(assert (=> b!4981749 m!6012718))

(assert (=> b!4981749 m!6012916))

(assert (=> b!4981749 m!6012916))

(declare-fun m!6012924 () Bool)

(assert (=> b!4981749 m!6012924))

(assert (=> b!4981749 m!6012718))

(assert (=> b!4981749 m!6012918))

(assert (=> b!4981749 m!6012924))

(assert (=> b!4981749 m!6012918))

(declare-fun m!6012926 () Bool)

(assert (=> b!4981749 m!6012926))

(assert (=> b!4981758 m!6012490))

(assert (=> d!1604264 m!6012718))

(assert (=> d!1604264 m!6012922))

(assert (=> d!1604264 m!6012488))

(assert (=> b!4981755 m!6012718))

(assert (=> b!4981755 m!6012916))

(assert (=> b!4981554 d!1604264))

(declare-fun d!1604266 () Bool)

(assert (=> d!1604266 (= (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121)))) (list!18459 (c!849983 (charsOf!5451 (_1!34555 (get!20016 lt!2058121))))))))

(declare-fun bs!1184302 () Bool)

(assert (= bs!1184302 d!1604266))

(declare-fun m!6012928 () Bool)

(assert (=> bs!1184302 m!6012928))

(assert (=> b!4981554 d!1604266))

(declare-fun d!1604268 () Bool)

(declare-fun lt!2058190 () BalanceConc!29840)

(assert (=> d!1604268 (= (list!18457 lt!2058190) (originalCharacters!8712 (_1!34555 (get!20016 lt!2058121))))))

(assert (=> d!1604268 (= lt!2058190 (dynLambda!23353 (toChars!11299 (transformation!8453 (rule!11705 (_1!34555 (get!20016 lt!2058121))))) (value!270332 (_1!34555 (get!20016 lt!2058121)))))))

(assert (=> d!1604268 (= (charsOf!5451 (_1!34555 (get!20016 lt!2058121))) lt!2058190)))

(declare-fun b_lambda!197853 () Bool)

(assert (=> (not b_lambda!197853) (not d!1604268)))

(declare-fun t!369815 () Bool)

(declare-fun tb!261615 () Bool)

(assert (=> (and b!4981286 (= (toChars!11299 (transformation!8453 rule!200)) (toChars!11299 (transformation!8453 (rule!11705 (_1!34555 (get!20016 lt!2058121)))))) t!369815) tb!261615))

(declare-fun b!4981762 () Bool)

(declare-fun e!3113642 () Bool)

(declare-fun tp!1396607 () Bool)

(assert (=> b!4981762 (= e!3113642 (and (inv!75408 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 (rule!11705 (_1!34555 (get!20016 lt!2058121))))) (value!270332 (_1!34555 (get!20016 lt!2058121)))))) tp!1396607))))

(declare-fun result!326918 () Bool)

(assert (=> tb!261615 (= result!326918 (and (inv!75409 (dynLambda!23353 (toChars!11299 (transformation!8453 (rule!11705 (_1!34555 (get!20016 lt!2058121))))) (value!270332 (_1!34555 (get!20016 lt!2058121))))) e!3113642))))

(assert (= tb!261615 b!4981762))

(declare-fun m!6012930 () Bool)

(assert (=> b!4981762 m!6012930))

(declare-fun m!6012932 () Bool)

(assert (=> tb!261615 m!6012932))

(assert (=> d!1604268 t!369815))

(declare-fun b_and!349631 () Bool)

(assert (= b_and!349619 (and (=> t!369815 result!326918) b_and!349631)))

(declare-fun m!6012934 () Bool)

(assert (=> d!1604268 m!6012934))

(declare-fun m!6012936 () Bool)

(assert (=> d!1604268 m!6012936))

(assert (=> b!4981554 d!1604268))

(declare-fun d!1604270 () Bool)

(assert (=> d!1604270 (= (get!20016 lt!2058121) (v!50521 lt!2058121))))

(assert (=> b!4981554 d!1604270))

(declare-fun b!4981773 () Bool)

(declare-fun e!3113651 () Bool)

(declare-fun inv!16 (TokenValue!8763) Bool)

(assert (=> b!4981773 (= e!3113651 (inv!16 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)))))

(declare-fun b!4981774 () Bool)

(declare-fun e!3113649 () Bool)

(declare-fun inv!15 (TokenValue!8763) Bool)

(assert (=> b!4981774 (= e!3113649 (inv!15 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)))))

(declare-fun d!1604272 () Bool)

(declare-fun c!850076 () Bool)

(assert (=> d!1604272 (= c!850076 (is-IntegerValue!26289 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)))))

(assert (=> d!1604272 (= (inv!21 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)) e!3113651)))

(declare-fun b!4981775 () Bool)

(declare-fun e!3113650 () Bool)

(assert (=> b!4981775 (= e!3113651 e!3113650)))

(declare-fun c!850077 () Bool)

(assert (=> b!4981775 (= c!850077 (is-IntegerValue!26290 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)))))

(declare-fun b!4981776 () Bool)

(declare-fun res!2126627 () Bool)

(assert (=> b!4981776 (=> res!2126627 e!3113649)))

(assert (=> b!4981776 (= res!2126627 (not (is-IntegerValue!26291 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880))))))

(assert (=> b!4981776 (= e!3113650 e!3113649)))

(declare-fun b!4981777 () Bool)

(declare-fun inv!17 (TokenValue!8763) Bool)

(assert (=> b!4981777 (= e!3113650 (inv!17 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)))))

(assert (= (and d!1604272 c!850076) b!4981773))

(assert (= (and d!1604272 (not c!850076)) b!4981775))

(assert (= (and b!4981775 c!850077) b!4981777))

(assert (= (and b!4981775 (not c!850077)) b!4981776))

(assert (= (and b!4981776 (not res!2126627)) b!4981774))

(declare-fun m!6012938 () Bool)

(assert (=> b!4981773 m!6012938))

(declare-fun m!6012940 () Bool)

(assert (=> b!4981774 m!6012940))

(declare-fun m!6012942 () Bool)

(assert (=> b!4981777 m!6012942))

(assert (=> tb!261607 d!1604272))

(declare-fun d!1604274 () Bool)

(assert (=> d!1604274 (isPrefix!5264 lt!2057881 lt!2057881)))

(declare-fun lt!2058193 () Unit!148639)

(declare-fun choose!36797 (List!57702 List!57702) Unit!148639)

(assert (=> d!1604274 (= lt!2058193 (choose!36797 lt!2057881 lt!2057881))))

(assert (=> d!1604274 (= (lemmaIsPrefixRefl!3588 lt!2057881 lt!2057881) lt!2058193)))

(declare-fun bs!1184303 () Bool)

(assert (= bs!1184303 d!1604274))

(assert (=> bs!1184303 m!6012590))

(declare-fun m!6012944 () Bool)

(assert (=> bs!1184303 m!6012944))

(assert (=> bm!347498 d!1604274))

(declare-fun d!1604276 () Bool)

(assert (=> d!1604276 (= (inv!75409 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880))) (isBalanced!4223 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)))))))

(declare-fun bs!1184304 () Bool)

(assert (= bs!1184304 d!1604276))

(declare-fun m!6012946 () Bool)

(assert (=> bs!1184304 m!6012946))

(assert (=> tb!261605 d!1604276))

(declare-fun d!1604278 () Bool)

(declare-fun c!850082 () Bool)

(assert (=> d!1604278 (= c!850082 (is-Empty!15205 (c!849983 input!1580)))))

(declare-fun e!3113656 () List!57702)

(assert (=> d!1604278 (= (list!18459 (c!849983 input!1580)) e!3113656)))

(declare-fun b!4981787 () Bool)

(declare-fun e!3113657 () List!57702)

(assert (=> b!4981787 (= e!3113656 e!3113657)))

(declare-fun c!850083 () Bool)

(assert (=> b!4981787 (= c!850083 (is-Leaf!25257 (c!849983 input!1580)))))

(declare-fun b!4981786 () Bool)

(assert (=> b!4981786 (= e!3113656 Nil!57578)))

(declare-fun b!4981789 () Bool)

(assert (=> b!4981789 (= e!3113657 (++!12550 (list!18459 (left!42084 (c!849983 input!1580))) (list!18459 (right!42414 (c!849983 input!1580)))))))

(declare-fun b!4981788 () Bool)

(declare-fun list!18461 (IArray!30471) List!57702)

(assert (=> b!4981788 (= e!3113657 (list!18461 (xs!18531 (c!849983 input!1580))))))

(assert (= (and d!1604278 c!850082) b!4981786))

(assert (= (and d!1604278 (not c!850082)) b!4981787))

(assert (= (and b!4981787 c!850083) b!4981788))

(assert (= (and b!4981787 (not c!850083)) b!4981789))

(declare-fun m!6012948 () Bool)

(assert (=> b!4981789 m!6012948))

(declare-fun m!6012950 () Bool)

(assert (=> b!4981789 m!6012950))

(assert (=> b!4981789 m!6012948))

(assert (=> b!4981789 m!6012950))

(declare-fun m!6012952 () Bool)

(assert (=> b!4981789 m!6012952))

(declare-fun m!6012954 () Bool)

(assert (=> b!4981788 m!6012954))

(assert (=> d!1604228 d!1604278))

(declare-fun d!1604280 () Bool)

(assert (=> d!1604280 (= (head!10687 (_1!34558 lt!2057882)) (h!64026 (_1!34558 lt!2057882)))))

(assert (=> b!4981400 d!1604280))

(declare-fun d!1604282 () Bool)

(declare-fun res!2126634 () Bool)

(declare-fun e!3113660 () Bool)

(assert (=> d!1604282 (=> (not res!2126634) (not e!3113660))))

(assert (=> d!1604282 (= res!2126634 (= (csize!30640 (c!849983 input!1580)) (+ (size!38209 (left!42084 (c!849983 input!1580))) (size!38209 (right!42414 (c!849983 input!1580))))))))

(assert (=> d!1604282 (= (inv!75413 (c!849983 input!1580)) e!3113660)))

(declare-fun b!4981796 () Bool)

(declare-fun res!2126635 () Bool)

(assert (=> b!4981796 (=> (not res!2126635) (not e!3113660))))

(assert (=> b!4981796 (= res!2126635 (and (not (= (left!42084 (c!849983 input!1580)) Empty!15205)) (not (= (right!42414 (c!849983 input!1580)) Empty!15205))))))

(declare-fun b!4981797 () Bool)

(declare-fun res!2126636 () Bool)

(assert (=> b!4981797 (=> (not res!2126636) (not e!3113660))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2025 (Conc!15205) Int)

(assert (=> b!4981797 (= res!2126636 (= (cheight!15416 (c!849983 input!1580)) (+ (max!0 (height!2025 (left!42084 (c!849983 input!1580))) (height!2025 (right!42414 (c!849983 input!1580)))) 1)))))

(declare-fun b!4981798 () Bool)

(assert (=> b!4981798 (= e!3113660 (<= 0 (cheight!15416 (c!849983 input!1580))))))

(assert (= (and d!1604282 res!2126634) b!4981796))

(assert (= (and b!4981796 res!2126635) b!4981797))

(assert (= (and b!4981797 res!2126636) b!4981798))

(declare-fun m!6012956 () Bool)

(assert (=> d!1604282 m!6012956))

(declare-fun m!6012958 () Bool)

(assert (=> d!1604282 m!6012958))

(declare-fun m!6012960 () Bool)

(assert (=> b!4981797 m!6012960))

(declare-fun m!6012962 () Bool)

(assert (=> b!4981797 m!6012962))

(assert (=> b!4981797 m!6012960))

(assert (=> b!4981797 m!6012962))

(declare-fun m!6012964 () Bool)

(assert (=> b!4981797 m!6012964))

(assert (=> b!4981355 d!1604282))

(declare-fun b!4981810 () Bool)

(declare-fun e!3113666 () Bool)

(declare-fun lt!2058196 () List!57702)

(assert (=> b!4981810 (= e!3113666 (or (not (= (_2!34555 (get!20016 lt!2058121)) Nil!57578)) (= lt!2058196 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121)))))))))

(declare-fun b!4981809 () Bool)

(declare-fun res!2126642 () Bool)

(assert (=> b!4981809 (=> (not res!2126642) (not e!3113666))))

(assert (=> b!4981809 (= res!2126642 (= (size!38204 lt!2058196) (+ (size!38204 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121))))) (size!38204 (_2!34555 (get!20016 lt!2058121))))))))

(declare-fun b!4981808 () Bool)

(declare-fun e!3113665 () List!57702)

(assert (=> b!4981808 (= e!3113665 (Cons!57578 (h!64026 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121))))) (++!12550 (t!369794 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121))))) (_2!34555 (get!20016 lt!2058121)))))))

(declare-fun d!1604284 () Bool)

(assert (=> d!1604284 e!3113666))

(declare-fun res!2126641 () Bool)

(assert (=> d!1604284 (=> (not res!2126641) (not e!3113666))))

(declare-fun content!10202 (List!57702) (Set C!27622))

(assert (=> d!1604284 (= res!2126641 (= (content!10202 lt!2058196) (set.union (content!10202 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121))))) (content!10202 (_2!34555 (get!20016 lt!2058121))))))))

(assert (=> d!1604284 (= lt!2058196 e!3113665)))

(declare-fun c!850086 () Bool)

(assert (=> d!1604284 (= c!850086 (is-Nil!57578 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121))))))))

(assert (=> d!1604284 (= (++!12550 (list!18457 (charsOf!5451 (_1!34555 (get!20016 lt!2058121)))) (_2!34555 (get!20016 lt!2058121))) lt!2058196)))

(declare-fun b!4981807 () Bool)

(assert (=> b!4981807 (= e!3113665 (_2!34555 (get!20016 lt!2058121)))))

(assert (= (and d!1604284 c!850086) b!4981807))

(assert (= (and d!1604284 (not c!850086)) b!4981808))

(assert (= (and d!1604284 res!2126641) b!4981809))

(assert (= (and b!4981809 res!2126642) b!4981810))

(declare-fun m!6012966 () Bool)

(assert (=> b!4981809 m!6012966))

(assert (=> b!4981809 m!6012718))

(declare-fun m!6012968 () Bool)

(assert (=> b!4981809 m!6012968))

(assert (=> b!4981809 m!6012704))

(declare-fun m!6012970 () Bool)

(assert (=> b!4981808 m!6012970))

(declare-fun m!6012972 () Bool)

(assert (=> d!1604284 m!6012972))

(assert (=> d!1604284 m!6012718))

(declare-fun m!6012974 () Bool)

(assert (=> d!1604284 m!6012974))

(declare-fun m!6012976 () Bool)

(assert (=> d!1604284 m!6012976))

(assert (=> b!4981558 d!1604284))

(assert (=> b!4981558 d!1604266))

(assert (=> b!4981558 d!1604268))

(assert (=> b!4981558 d!1604270))

(declare-fun d!1604286 () Bool)

(assert (=> d!1604286 (= (head!10687 lt!2057881) (h!64026 lt!2057881))))

(assert (=> bm!347499 d!1604286))

(declare-fun d!1604288 () Bool)

(declare-fun lt!2058197 () Int)

(assert (=> d!1604288 (>= lt!2058197 0)))

(declare-fun e!3113667 () Int)

(assert (=> d!1604288 (= lt!2058197 e!3113667)))

(declare-fun c!850087 () Bool)

(assert (=> d!1604288 (= c!850087 (is-Nil!57578 (_2!34555 (get!20016 lt!2058121))))))

(assert (=> d!1604288 (= (size!38204 (_2!34555 (get!20016 lt!2058121))) lt!2058197)))

(declare-fun b!4981811 () Bool)

(assert (=> b!4981811 (= e!3113667 0)))

(declare-fun b!4981812 () Bool)

(assert (=> b!4981812 (= e!3113667 (+ 1 (size!38204 (t!369794 (_2!34555 (get!20016 lt!2058121))))))))

(assert (= (and d!1604288 c!850087) b!4981811))

(assert (= (and d!1604288 (not c!850087)) b!4981812))

(declare-fun m!6012978 () Bool)

(assert (=> b!4981812 m!6012978))

(assert (=> b!4981560 d!1604288))

(assert (=> b!4981560 d!1604270))

(assert (=> b!4981560 d!1604150))

(declare-fun d!1604290 () Bool)

(assert (=> d!1604290 (= lt!2057881 Nil!57578)))

(declare-fun lt!2058200 () Unit!148639)

(declare-fun choose!36798 (List!57702 List!57702 List!57702) Unit!148639)

(assert (=> d!1604290 (= lt!2058200 (choose!36798 lt!2057881 Nil!57578 lt!2057881))))

(assert (=> d!1604290 (isPrefix!5264 lt!2057881 lt!2057881)))

(assert (=> d!1604290 (= (lemmaIsPrefixSameLengthThenSameList!1224 lt!2057881 Nil!57578 lt!2057881) lt!2058200)))

(declare-fun bs!1184305 () Bool)

(assert (= bs!1184305 d!1604290))

(declare-fun m!6012980 () Bool)

(assert (=> bs!1184305 m!6012980))

(assert (=> bs!1184305 m!6012590))

(assert (=> bm!347501 d!1604290))

(assert (=> b!4981556 d!1604270))

(declare-fun d!1604292 () Bool)

(declare-fun lt!2058201 () Int)

(assert (=> d!1604292 (>= lt!2058201 0)))

(declare-fun e!3113668 () Int)

(assert (=> d!1604292 (= lt!2058201 e!3113668)))

(declare-fun c!850088 () Bool)

(assert (=> d!1604292 (= c!850088 (is-Nil!57578 (originalCharacters!8712 (_1!34555 (get!20016 lt!2058121)))))))

(assert (=> d!1604292 (= (size!38204 (originalCharacters!8712 (_1!34555 (get!20016 lt!2058121)))) lt!2058201)))

(declare-fun b!4981813 () Bool)

(assert (=> b!4981813 (= e!3113668 0)))

(declare-fun b!4981814 () Bool)

(assert (=> b!4981814 (= e!3113668 (+ 1 (size!38204 (t!369794 (originalCharacters!8712 (_1!34555 (get!20016 lt!2058121)))))))))

(assert (= (and d!1604292 c!850088) b!4981813))

(assert (= (and d!1604292 (not c!850088)) b!4981814))

(declare-fun m!6012982 () Bool)

(assert (=> b!4981814 m!6012982))

(assert (=> b!4981556 d!1604292))

(declare-fun d!1604294 () Bool)

(assert (=> d!1604294 (= (isEmpty!31083 (_1!34558 lt!2058078)) (is-Nil!57578 (_1!34558 lt!2058078)))))

(assert (=> b!4981508 d!1604294))

(declare-fun d!1604296 () Bool)

(assert (=> d!1604296 (= (inv!75417 (xs!18531 (c!849983 totalInput!520))) (<= (size!38204 (innerList!15293 (xs!18531 (c!849983 totalInput!520)))) 2147483647))))

(declare-fun bs!1184306 () Bool)

(assert (= bs!1184306 d!1604296))

(declare-fun m!6012984 () Bool)

(assert (=> bs!1184306 m!6012984))

(assert (=> b!4981656 d!1604296))

(declare-fun d!1604298 () Bool)

(assert (=> d!1604298 true))

(assert (=> d!1604298 true))

(declare-fun res!2126645 () Bool)

(assert (=> d!1604298 (= (choose!36790 lambda!247827) res!2126645)))

(assert (=> d!1604136 d!1604298))

(declare-fun d!1604300 () Bool)

(assert (=> d!1604300 (= (list!18457 (_2!34556 lt!2058153)) (list!18459 (c!849983 (_2!34556 lt!2058153))))))

(declare-fun bs!1184307 () Bool)

(assert (= bs!1184307 d!1604300))

(declare-fun m!6012986 () Bool)

(assert (=> bs!1184307 m!6012986))

(assert (=> d!1604214 d!1604300))

(declare-fun d!1604302 () Bool)

(declare-fun res!2126648 () tuple2!62506)

(assert (=> d!1604302 (= (tuple2!62511 (list!18457 (_1!34556 res!2126648)) (list!18457 (_2!34556 res!2126648))) (findLongestMatch!1713 (regex!8453 rule!200) (list!18457 input!1580)))))

(declare-fun e!3113674 () Bool)

(declare-fun e!3113673 () Bool)

(assert (=> d!1604302 (and (inv!75409 (_1!34556 res!2126648)) e!3113674 (inv!75409 (_2!34556 res!2126648)) e!3113673)))

(assert (=> d!1604302 (= (choose!36795 (regex!8453 rule!200) input!1580 totalInput!520) res!2126648)))

(declare-fun b!4981819 () Bool)

(declare-fun tp!1396613 () Bool)

(assert (=> b!4981819 (= e!3113674 (and (inv!75408 (c!849983 (_1!34556 res!2126648))) tp!1396613))))

(declare-fun b!4981820 () Bool)

(declare-fun tp!1396612 () Bool)

(assert (=> b!4981820 (= e!3113673 (and (inv!75408 (c!849983 (_2!34556 res!2126648))) tp!1396612))))

(assert (= d!1604302 b!4981819))

(assert (= d!1604302 b!4981820))

(declare-fun m!6012988 () Bool)

(assert (=> d!1604302 m!6012988))

(declare-fun m!6012990 () Bool)

(assert (=> d!1604302 m!6012990))

(assert (=> d!1604302 m!6012374))

(declare-fun m!6012992 () Bool)

(assert (=> d!1604302 m!6012992))

(declare-fun m!6012994 () Bool)

(assert (=> d!1604302 m!6012994))

(assert (=> d!1604302 m!6012374))

(assert (=> d!1604302 m!6012794))

(declare-fun m!6012996 () Bool)

(assert (=> b!4981819 m!6012996))

(declare-fun m!6012998 () Bool)

(assert (=> b!4981820 m!6012998))

(assert (=> d!1604214 d!1604302))

(declare-fun d!1604304 () Bool)

(declare-fun lt!2058209 () tuple2!62510)

(assert (=> d!1604304 (= (++!12550 (_1!34558 lt!2058209) (_2!34558 lt!2058209)) (list!18457 input!1580))))

(assert (=> d!1604304 (= lt!2058209 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 0 (list!18457 input!1580) (list!18457 input!1580) (sizeTr!369 (list!18457 input!1580) 0)))))

(declare-fun lt!2058205 () Unit!148639)

(declare-fun lt!2058207 () Unit!148639)

(assert (=> d!1604304 (= lt!2058205 lt!2058207)))

(declare-fun lt!2058203 () List!57702)

(declare-fun lt!2058206 () Int)

(assert (=> d!1604304 (= (sizeTr!369 lt!2058203 lt!2058206) (+ (size!38204 lt!2058203) lt!2058206))))

(assert (=> d!1604304 (= lt!2058207 (lemmaSizeTrEqualsSize!368 lt!2058203 lt!2058206))))

(assert (=> d!1604304 (= lt!2058206 0)))

(assert (=> d!1604304 (= lt!2058203 Nil!57578)))

(declare-fun lt!2058202 () Unit!148639)

(declare-fun lt!2058208 () Unit!148639)

(assert (=> d!1604304 (= lt!2058202 lt!2058208)))

(declare-fun lt!2058204 () Int)

(assert (=> d!1604304 (= (sizeTr!369 (list!18457 input!1580) lt!2058204) (+ (size!38204 (list!18457 input!1580)) lt!2058204))))

(assert (=> d!1604304 (= lt!2058208 (lemmaSizeTrEqualsSize!368 (list!18457 input!1580) lt!2058204))))

(assert (=> d!1604304 (= lt!2058204 0)))

(assert (=> d!1604304 (validRegex!5987 (regex!8453 rule!200))))

(assert (=> d!1604304 (= (findLongestMatch!1713 (regex!8453 rule!200) (list!18457 input!1580)) lt!2058209)))

(declare-fun bs!1184308 () Bool)

(assert (= bs!1184308 d!1604304))

(declare-fun m!6013000 () Bool)

(assert (=> bs!1184308 m!6013000))

(assert (=> bs!1184308 m!6012374))

(declare-fun m!6013002 () Bool)

(assert (=> bs!1184308 m!6013002))

(assert (=> bs!1184308 m!6012488))

(declare-fun m!6013004 () Bool)

(assert (=> bs!1184308 m!6013004))

(assert (=> bs!1184308 m!6012374))

(declare-fun m!6013006 () Bool)

(assert (=> bs!1184308 m!6013006))

(declare-fun m!6013008 () Bool)

(assert (=> bs!1184308 m!6013008))

(assert (=> bs!1184308 m!6012374))

(declare-fun m!6013010 () Bool)

(assert (=> bs!1184308 m!6013010))

(assert (=> bs!1184308 m!6012374))

(assert (=> bs!1184308 m!6012374))

(assert (=> bs!1184308 m!6013002))

(declare-fun m!6013012 () Bool)

(assert (=> bs!1184308 m!6013012))

(assert (=> bs!1184308 m!6012374))

(declare-fun m!6013014 () Bool)

(assert (=> bs!1184308 m!6013014))

(declare-fun m!6013016 () Bool)

(assert (=> bs!1184308 m!6013016))

(assert (=> d!1604214 d!1604304))

(assert (=> d!1604214 d!1604256))

(declare-fun d!1604306 () Bool)

(assert (=> d!1604306 (= (list!18457 (_1!34556 lt!2058153)) (list!18459 (c!849983 (_1!34556 lt!2058153))))))

(declare-fun bs!1184309 () Bool)

(assert (= bs!1184309 d!1604306))

(declare-fun m!6013018 () Bool)

(assert (=> bs!1184309 m!6013018))

(assert (=> d!1604214 d!1604306))

(assert (=> d!1604214 d!1604228))

(declare-fun d!1604308 () Bool)

(declare-fun lt!2058210 () Int)

(assert (=> d!1604308 (>= lt!2058210 0)))

(declare-fun e!3113675 () Int)

(assert (=> d!1604308 (= lt!2058210 e!3113675)))

(declare-fun c!850089 () Bool)

(assert (=> d!1604308 (= c!850089 (is-Nil!57578 (_1!34558 lt!2058078)))))

(assert (=> d!1604308 (= (size!38204 (_1!34558 lt!2058078)) lt!2058210)))

(declare-fun b!4981821 () Bool)

(assert (=> b!4981821 (= e!3113675 0)))

(declare-fun b!4981822 () Bool)

(assert (=> b!4981822 (= e!3113675 (+ 1 (size!38204 (t!369794 (_1!34558 lt!2058078)))))))

(assert (= (and d!1604308 c!850089) b!4981821))

(assert (= (and d!1604308 (not c!850089)) b!4981822))

(declare-fun m!6013020 () Bool)

(assert (=> b!4981822 m!6013020))

(assert (=> b!4981499 d!1604308))

(assert (=> b!4981499 d!1604162))

(declare-fun d!1604310 () Bool)

(declare-fun c!850090 () Bool)

(assert (=> d!1604310 (= c!850090 (is-Empty!15205 (c!849983 lt!2057880)))))

(declare-fun e!3113676 () List!57702)

(assert (=> d!1604310 (= (list!18459 (c!849983 lt!2057880)) e!3113676)))

(declare-fun b!4981824 () Bool)

(declare-fun e!3113677 () List!57702)

(assert (=> b!4981824 (= e!3113676 e!3113677)))

(declare-fun c!850091 () Bool)

(assert (=> b!4981824 (= c!850091 (is-Leaf!25257 (c!849983 lt!2057880)))))

(declare-fun b!4981823 () Bool)

(assert (=> b!4981823 (= e!3113676 Nil!57578)))

(declare-fun b!4981826 () Bool)

(assert (=> b!4981826 (= e!3113677 (++!12550 (list!18459 (left!42084 (c!849983 lt!2057880))) (list!18459 (right!42414 (c!849983 lt!2057880)))))))

(declare-fun b!4981825 () Bool)

(assert (=> b!4981825 (= e!3113677 (list!18461 (xs!18531 (c!849983 lt!2057880))))))

(assert (= (and d!1604310 c!850090) b!4981823))

(assert (= (and d!1604310 (not c!850090)) b!4981824))

(assert (= (and b!4981824 c!850091) b!4981825))

(assert (= (and b!4981824 (not c!850091)) b!4981826))

(declare-fun m!6013022 () Bool)

(assert (=> b!4981826 m!6013022))

(declare-fun m!6013024 () Bool)

(assert (=> b!4981826 m!6013024))

(assert (=> b!4981826 m!6013022))

(assert (=> b!4981826 m!6013024))

(declare-fun m!6013026 () Bool)

(assert (=> b!4981826 m!6013026))

(declare-fun m!6013028 () Bool)

(assert (=> b!4981825 m!6013028))

(assert (=> d!1604124 d!1604310))

(declare-fun d!1604312 () Bool)

(assert (=> d!1604312 (= (list!18457 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880))) (list!18459 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)))))))

(declare-fun bs!1184310 () Bool)

(assert (= bs!1184310 d!1604312))

(declare-fun m!6013030 () Bool)

(assert (=> bs!1184310 m!6013030))

(assert (=> bs!1184295 d!1604312))

(assert (=> bs!1184295 d!1604124))

(assert (=> bm!347453 d!1604142))

(declare-fun b!4981839 () Bool)

(declare-fun e!3113683 () Bool)

(assert (=> b!4981839 (= e!3113683 (not (isEmpty!31090 (right!42414 (c!849983 input!1580)))))))

(declare-fun b!4981840 () Bool)

(declare-fun res!2126662 () Bool)

(assert (=> b!4981840 (=> (not res!2126662) (not e!3113683))))

(assert (=> b!4981840 (= res!2126662 (isBalanced!4223 (right!42414 (c!849983 input!1580))))))

(declare-fun b!4981841 () Bool)

(declare-fun res!2126664 () Bool)

(assert (=> b!4981841 (=> (not res!2126664) (not e!3113683))))

(assert (=> b!4981841 (= res!2126664 (<= (- (height!2025 (left!42084 (c!849983 input!1580))) (height!2025 (right!42414 (c!849983 input!1580)))) 1))))

(declare-fun b!4981842 () Bool)

(declare-fun res!2126663 () Bool)

(assert (=> b!4981842 (=> (not res!2126663) (not e!3113683))))

(assert (=> b!4981842 (= res!2126663 (not (isEmpty!31090 (left!42084 (c!849983 input!1580)))))))

(declare-fun b!4981843 () Bool)

(declare-fun res!2126666 () Bool)

(assert (=> b!4981843 (=> (not res!2126666) (not e!3113683))))

(assert (=> b!4981843 (= res!2126666 (isBalanced!4223 (left!42084 (c!849983 input!1580))))))

(declare-fun b!4981844 () Bool)

(declare-fun e!3113682 () Bool)

(assert (=> b!4981844 (= e!3113682 e!3113683)))

(declare-fun res!2126661 () Bool)

(assert (=> b!4981844 (=> (not res!2126661) (not e!3113683))))

(assert (=> b!4981844 (= res!2126661 (<= (- 1) (- (height!2025 (left!42084 (c!849983 input!1580))) (height!2025 (right!42414 (c!849983 input!1580))))))))

(declare-fun d!1604314 () Bool)

(declare-fun res!2126665 () Bool)

(assert (=> d!1604314 (=> res!2126665 e!3113682)))

(assert (=> d!1604314 (= res!2126665 (not (is-Node!15205 (c!849983 input!1580))))))

(assert (=> d!1604314 (= (isBalanced!4223 (c!849983 input!1580)) e!3113682)))

(assert (= (and d!1604314 (not res!2126665)) b!4981844))

(assert (= (and b!4981844 res!2126661) b!4981841))

(assert (= (and b!4981841 res!2126664) b!4981843))

(assert (= (and b!4981843 res!2126666) b!4981840))

(assert (= (and b!4981840 res!2126662) b!4981842))

(assert (= (and b!4981842 res!2126663) b!4981839))

(declare-fun m!6013032 () Bool)

(assert (=> b!4981842 m!6013032))

(declare-fun m!6013034 () Bool)

(assert (=> b!4981840 m!6013034))

(assert (=> b!4981841 m!6012960))

(assert (=> b!4981841 m!6012962))

(declare-fun m!6013036 () Bool)

(assert (=> b!4981839 m!6013036))

(declare-fun m!6013038 () Bool)

(assert (=> b!4981843 m!6013038))

(assert (=> b!4981844 m!6012960))

(assert (=> b!4981844 m!6012962))

(assert (=> d!1604172 d!1604314))

(declare-fun d!1604316 () Bool)

(assert (=> d!1604316 true))

(declare-fun order!26491 () Int)

(declare-fun lambda!247843 () Int)

(declare-fun dynLambda!23355 (Int Int) Int)

(assert (=> d!1604316 (< (dynLambda!23343 order!26479 (toValue!11440 (transformation!8453 rule!200))) (dynLambda!23355 order!26491 lambda!247843))))

(declare-fun Forall2!1298 (Int) Bool)

(assert (=> d!1604316 (= (equivClasses!3569 (toChars!11299 (transformation!8453 rule!200)) (toValue!11440 (transformation!8453 rule!200))) (Forall2!1298 lambda!247843))))

(declare-fun bs!1184311 () Bool)

(assert (= bs!1184311 d!1604316))

(declare-fun m!6013040 () Bool)

(assert (=> bs!1184311 m!6013040))

(assert (=> b!4981419 d!1604316))

(assert (=> b!4981561 d!1604270))

(declare-fun d!1604318 () Bool)

(assert (=> d!1604318 (= (inv!75409 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877)))) (isBalanced!4223 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))))))))

(declare-fun bs!1184312 () Bool)

(assert (= bs!1184312 d!1604318))

(declare-fun m!6013042 () Bool)

(assert (=> bs!1184312 m!6013042))

(assert (=> tb!261603 d!1604318))

(assert (=> b!4981279 d!1604138))

(declare-fun d!1604320 () Bool)

(assert (=> d!1604320 (= (tail!9820 lt!2057881) (t!369794 lt!2057881))))

(assert (=> bm!347496 d!1604320))

(declare-fun d!1604322 () Bool)

(declare-fun c!850092 () Bool)

(assert (=> d!1604322 (= c!850092 (is-Node!15205 (left!42084 (c!849983 input!1580))))))

(declare-fun e!3113686 () Bool)

(assert (=> d!1604322 (= (inv!75408 (left!42084 (c!849983 input!1580))) e!3113686)))

(declare-fun b!4981849 () Bool)

(assert (=> b!4981849 (= e!3113686 (inv!75413 (left!42084 (c!849983 input!1580))))))

(declare-fun b!4981850 () Bool)

(declare-fun e!3113687 () Bool)

(assert (=> b!4981850 (= e!3113686 e!3113687)))

(declare-fun res!2126669 () Bool)

(assert (=> b!4981850 (= res!2126669 (not (is-Leaf!25257 (left!42084 (c!849983 input!1580)))))))

(assert (=> b!4981850 (=> res!2126669 e!3113687)))

(declare-fun b!4981851 () Bool)

(assert (=> b!4981851 (= e!3113687 (inv!75414 (left!42084 (c!849983 input!1580))))))

(assert (= (and d!1604322 c!850092) b!4981849))

(assert (= (and d!1604322 (not c!850092)) b!4981850))

(assert (= (and b!4981850 (not res!2126669)) b!4981851))

(declare-fun m!6013044 () Bool)

(assert (=> b!4981849 m!6013044))

(declare-fun m!6013046 () Bool)

(assert (=> b!4981851 m!6013046))

(assert (=> b!4981658 d!1604322))

(declare-fun d!1604324 () Bool)

(declare-fun c!850093 () Bool)

(assert (=> d!1604324 (= c!850093 (is-Node!15205 (right!42414 (c!849983 input!1580))))))

(declare-fun e!3113688 () Bool)

(assert (=> d!1604324 (= (inv!75408 (right!42414 (c!849983 input!1580))) e!3113688)))

(declare-fun b!4981852 () Bool)

(assert (=> b!4981852 (= e!3113688 (inv!75413 (right!42414 (c!849983 input!1580))))))

(declare-fun b!4981853 () Bool)

(declare-fun e!3113689 () Bool)

(assert (=> b!4981853 (= e!3113688 e!3113689)))

(declare-fun res!2126670 () Bool)

(assert (=> b!4981853 (= res!2126670 (not (is-Leaf!25257 (right!42414 (c!849983 input!1580)))))))

(assert (=> b!4981853 (=> res!2126670 e!3113689)))

(declare-fun b!4981854 () Bool)

(assert (=> b!4981854 (= e!3113689 (inv!75414 (right!42414 (c!849983 input!1580))))))

(assert (= (and d!1604324 c!850093) b!4981852))

(assert (= (and d!1604324 (not c!850093)) b!4981853))

(assert (= (and b!4981853 (not res!2126670)) b!4981854))

(declare-fun m!6013048 () Bool)

(assert (=> b!4981852 m!6013048))

(declare-fun m!6013050 () Bool)

(assert (=> b!4981854 m!6013050))

(assert (=> b!4981658 d!1604324))

(assert (=> b!4981396 d!1604280))

(declare-fun c!850107 () Bool)

(declare-fun c!850108 () Bool)

(declare-fun bm!347523 () Bool)

(declare-fun call!347528 () Regex!13686)

(assert (=> bm!347523 (= call!347528 (derivativeStep!3938 (ite c!850108 (regOne!27885 (regex!8453 rule!200)) (ite c!850107 (reg!14015 (regex!8453 rule!200)) (regOne!27884 (regex!8453 rule!200)))) call!347503))))

(declare-fun bm!347524 () Bool)

(declare-fun call!347529 () Regex!13686)

(assert (=> bm!347524 (= call!347529 call!347528)))

(declare-fun b!4981875 () Bool)

(declare-fun e!3113702 () Regex!13686)

(declare-fun e!3113701 () Regex!13686)

(assert (=> b!4981875 (= e!3113702 e!3113701)))

(assert (=> b!4981875 (= c!850107 (is-Star!13686 (regex!8453 rule!200)))))

(declare-fun b!4981876 () Bool)

(declare-fun e!3113703 () Regex!13686)

(declare-fun call!347531 () Regex!13686)

(assert (=> b!4981876 (= e!3113703 (Union!13686 (Concat!22449 call!347531 (regTwo!27884 (regex!8453 rule!200))) EmptyLang!13686))))

(declare-fun b!4981877 () Bool)

(declare-fun e!3113704 () Regex!13686)

(assert (=> b!4981877 (= e!3113704 EmptyLang!13686)))

(declare-fun call!347530 () Regex!13686)

(declare-fun b!4981878 () Bool)

(assert (=> b!4981878 (= e!3113703 (Union!13686 (Concat!22449 call!347531 (regTwo!27884 (regex!8453 rule!200))) call!347530))))

(declare-fun b!4981879 () Bool)

(assert (=> b!4981879 (= e!3113701 (Concat!22449 call!347529 (regex!8453 rule!200)))))

(declare-fun b!4981880 () Bool)

(assert (=> b!4981880 (= e!3113702 (Union!13686 call!347528 call!347530))))

(declare-fun b!4981881 () Bool)

(declare-fun c!850104 () Bool)

(assert (=> b!4981881 (= c!850104 (nullable!4638 (regOne!27884 (regex!8453 rule!200))))))

(assert (=> b!4981881 (= e!3113701 e!3113703)))

(declare-fun b!4981882 () Bool)

(assert (=> b!4981882 (= c!850108 (is-Union!13686 (regex!8453 rule!200)))))

(declare-fun e!3113700 () Regex!13686)

(assert (=> b!4981882 (= e!3113700 e!3113702)))

(declare-fun b!4981883 () Bool)

(assert (=> b!4981883 (= e!3113700 (ite (= call!347503 (c!849982 (regex!8453 rule!200))) EmptyExpr!13686 EmptyLang!13686))))

(declare-fun b!4981884 () Bool)

(assert (=> b!4981884 (= e!3113704 e!3113700)))

(declare-fun c!850105 () Bool)

(assert (=> b!4981884 (= c!850105 (is-ElementMatch!13686 (regex!8453 rule!200)))))

(declare-fun bm!347526 () Bool)

(assert (=> bm!347526 (= call!347530 (derivativeStep!3938 (ite c!850108 (regTwo!27885 (regex!8453 rule!200)) (regTwo!27884 (regex!8453 rule!200))) call!347503))))

(declare-fun bm!347525 () Bool)

(assert (=> bm!347525 (= call!347531 call!347529)))

(declare-fun d!1604326 () Bool)

(declare-fun lt!2058213 () Regex!13686)

(assert (=> d!1604326 (validRegex!5987 lt!2058213)))

(assert (=> d!1604326 (= lt!2058213 e!3113704)))

(declare-fun c!850106 () Bool)

(assert (=> d!1604326 (= c!850106 (or (is-EmptyExpr!13686 (regex!8453 rule!200)) (is-EmptyLang!13686 (regex!8453 rule!200))))))

(assert (=> d!1604326 (validRegex!5987 (regex!8453 rule!200))))

(assert (=> d!1604326 (= (derivativeStep!3938 (regex!8453 rule!200) call!347503) lt!2058213)))

(assert (= (and d!1604326 c!850106) b!4981877))

(assert (= (and d!1604326 (not c!850106)) b!4981884))

(assert (= (and b!4981884 c!850105) b!4981883))

(assert (= (and b!4981884 (not c!850105)) b!4981882))

(assert (= (and b!4981882 c!850108) b!4981880))

(assert (= (and b!4981882 (not c!850108)) b!4981875))

(assert (= (and b!4981875 c!850107) b!4981879))

(assert (= (and b!4981875 (not c!850107)) b!4981881))

(assert (= (and b!4981881 c!850104) b!4981878))

(assert (= (and b!4981881 (not c!850104)) b!4981876))

(assert (= (or b!4981878 b!4981876) bm!347525))

(assert (= (or b!4981879 bm!347525) bm!347524))

(assert (= (or b!4981880 b!4981878) bm!347526))

(assert (= (or b!4981880 bm!347524) bm!347523))

(declare-fun m!6013052 () Bool)

(assert (=> bm!347523 m!6013052))

(declare-fun m!6013054 () Bool)

(assert (=> b!4981881 m!6013054))

(declare-fun m!6013056 () Bool)

(assert (=> bm!347526 m!6013056))

(declare-fun m!6013058 () Bool)

(assert (=> d!1604326 m!6013058))

(assert (=> d!1604326 m!6012488))

(assert (=> bm!347494 d!1604326))

(declare-fun d!1604328 () Bool)

(assert (=> d!1604328 (dynLambda!23350 lambda!247827 (_1!34556 lt!2057877))))

(assert (=> d!1604328 true))

(declare-fun _$1!11269 () Unit!148639)

(assert (=> d!1604328 (= (choose!36793 lambda!247827 (_1!34556 lt!2057877)) _$1!11269)))

(declare-fun b_lambda!197863 () Bool)

(assert (=> (not b_lambda!197863) (not d!1604328)))

(declare-fun bs!1184313 () Bool)

(assert (= bs!1184313 d!1604328))

(assert (=> bs!1184313 m!6012734))

(assert (=> d!1604202 d!1604328))

(assert (=> d!1604202 d!1604136))

(declare-fun d!1604330 () Bool)

(declare-fun res!2126671 () Bool)

(declare-fun e!3113705 () Bool)

(assert (=> d!1604330 (=> (not res!2126671) (not e!3113705))))

(assert (=> d!1604330 (= res!2126671 (= (csize!30640 (c!849983 totalInput!520)) (+ (size!38209 (left!42084 (c!849983 totalInput!520))) (size!38209 (right!42414 (c!849983 totalInput!520))))))))

(assert (=> d!1604330 (= (inv!75413 (c!849983 totalInput!520)) e!3113705)))

(declare-fun b!4981885 () Bool)

(declare-fun res!2126672 () Bool)

(assert (=> b!4981885 (=> (not res!2126672) (not e!3113705))))

(assert (=> b!4981885 (= res!2126672 (and (not (= (left!42084 (c!849983 totalInput!520)) Empty!15205)) (not (= (right!42414 (c!849983 totalInput!520)) Empty!15205))))))

(declare-fun b!4981886 () Bool)

(declare-fun res!2126673 () Bool)

(assert (=> b!4981886 (=> (not res!2126673) (not e!3113705))))

(assert (=> b!4981886 (= res!2126673 (= (cheight!15416 (c!849983 totalInput!520)) (+ (max!0 (height!2025 (left!42084 (c!849983 totalInput!520))) (height!2025 (right!42414 (c!849983 totalInput!520)))) 1)))))

(declare-fun b!4981887 () Bool)

(assert (=> b!4981887 (= e!3113705 (<= 0 (cheight!15416 (c!849983 totalInput!520))))))

(assert (= (and d!1604330 res!2126671) b!4981885))

(assert (= (and b!4981885 res!2126672) b!4981886))

(assert (= (and b!4981886 res!2126673) b!4981887))

(declare-fun m!6013060 () Bool)

(assert (=> d!1604330 m!6013060))

(declare-fun m!6013062 () Bool)

(assert (=> d!1604330 m!6013062))

(declare-fun m!6013064 () Bool)

(assert (=> b!4981886 m!6013064))

(declare-fun m!6013066 () Bool)

(assert (=> b!4981886 m!6013066))

(assert (=> b!4981886 m!6013064))

(assert (=> b!4981886 m!6013066))

(declare-fun m!6013068 () Bool)

(assert (=> b!4981886 m!6013068))

(assert (=> b!4981409 d!1604330))

(declare-fun b!4981888 () Bool)

(declare-fun e!3113707 () Bool)

(assert (=> b!4981888 (= e!3113707 (not (isEmpty!31090 (right!42414 (c!849983 totalInput!520)))))))

(declare-fun b!4981889 () Bool)

(declare-fun res!2126675 () Bool)

(assert (=> b!4981889 (=> (not res!2126675) (not e!3113707))))

(assert (=> b!4981889 (= res!2126675 (isBalanced!4223 (right!42414 (c!849983 totalInput!520))))))

(declare-fun b!4981890 () Bool)

(declare-fun res!2126677 () Bool)

(assert (=> b!4981890 (=> (not res!2126677) (not e!3113707))))

(assert (=> b!4981890 (= res!2126677 (<= (- (height!2025 (left!42084 (c!849983 totalInput!520))) (height!2025 (right!42414 (c!849983 totalInput!520)))) 1))))

(declare-fun b!4981891 () Bool)

(declare-fun res!2126676 () Bool)

(assert (=> b!4981891 (=> (not res!2126676) (not e!3113707))))

(assert (=> b!4981891 (= res!2126676 (not (isEmpty!31090 (left!42084 (c!849983 totalInput!520)))))))

(declare-fun b!4981892 () Bool)

(declare-fun res!2126679 () Bool)

(assert (=> b!4981892 (=> (not res!2126679) (not e!3113707))))

(assert (=> b!4981892 (= res!2126679 (isBalanced!4223 (left!42084 (c!849983 totalInput!520))))))

(declare-fun b!4981893 () Bool)

(declare-fun e!3113706 () Bool)

(assert (=> b!4981893 (= e!3113706 e!3113707)))

(declare-fun res!2126674 () Bool)

(assert (=> b!4981893 (=> (not res!2126674) (not e!3113707))))

(assert (=> b!4981893 (= res!2126674 (<= (- 1) (- (height!2025 (left!42084 (c!849983 totalInput!520))) (height!2025 (right!42414 (c!849983 totalInput!520))))))))

(declare-fun d!1604332 () Bool)

(declare-fun res!2126678 () Bool)

(assert (=> d!1604332 (=> res!2126678 e!3113706)))

(assert (=> d!1604332 (= res!2126678 (not (is-Node!15205 (c!849983 totalInput!520))))))

(assert (=> d!1604332 (= (isBalanced!4223 (c!849983 totalInput!520)) e!3113706)))

(assert (= (and d!1604332 (not res!2126678)) b!4981893))

(assert (= (and b!4981893 res!2126674) b!4981890))

(assert (= (and b!4981890 res!2126677) b!4981892))

(assert (= (and b!4981892 res!2126679) b!4981889))

(assert (= (and b!4981889 res!2126675) b!4981891))

(assert (= (and b!4981891 res!2126676) b!4981888))

(declare-fun m!6013070 () Bool)

(assert (=> b!4981891 m!6013070))

(declare-fun m!6013072 () Bool)

(assert (=> b!4981889 m!6013072))

(assert (=> b!4981890 m!6013064))

(assert (=> b!4981890 m!6013066))

(declare-fun m!6013074 () Bool)

(assert (=> b!4981888 m!6013074))

(declare-fun m!6013076 () Bool)

(assert (=> b!4981892 m!6013076))

(assert (=> b!4981893 m!6013064))

(assert (=> b!4981893 m!6013066))

(assert (=> d!1604170 d!1604332))

(declare-fun d!1604334 () Bool)

(assert (=> d!1604334 (= (isEmpty!31088 (Some!14525 (tuple2!62509 (Token!15363 (apply!13940 (transformation!8453 rule!200) (_1!34556 lt!2057877)) rule!200 (size!38203 (_1!34556 lt!2057877)) lt!2057873) (_2!34556 lt!2057877)))) (not (is-Some!14525 (Some!14525 (tuple2!62509 (Token!15363 (apply!13940 (transformation!8453 rule!200) (_1!34556 lt!2057877)) rule!200 (size!38203 (_1!34556 lt!2057877)) lt!2057873) (_2!34556 lt!2057877))))))))

(assert (=> d!1604176 d!1604334))

(declare-fun d!1604336 () Bool)

(assert (=> d!1604336 (= (isEmpty!31083 (_1!34558 lt!2058090)) (is-Nil!57578 (_1!34558 lt!2058090)))))

(assert (=> b!4981507 d!1604336))

(declare-fun d!1604338 () Bool)

(assert (=> d!1604338 (= (isEmpty!31083 (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))) (is-Nil!57578 (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))))))

(assert (=> b!4981555 d!1604338))

(declare-fun bs!1184314 () Bool)

(declare-fun d!1604340 () Bool)

(assert (= bs!1184314 (and d!1604340 b!4981281)))

(declare-fun lambda!247846 () Int)

(assert (=> bs!1184314 (= lambda!247846 lambda!247827)))

(declare-fun bs!1184315 () Bool)

(assert (= bs!1184315 (and d!1604340 d!1604158)))

(assert (=> bs!1184315 (= lambda!247846 lambda!247840)))

(declare-fun b!4981898 () Bool)

(declare-fun e!3113710 () Bool)

(assert (=> b!4981898 (= e!3113710 true)))

(assert (=> d!1604340 e!3113710))

(assert (= d!1604340 b!4981898))

(assert (=> b!4981898 (< (dynLambda!23343 order!26479 (toValue!11440 (transformation!8453 rule!200))) (dynLambda!23344 order!26481 lambda!247846))))

(assert (=> b!4981898 (< (dynLambda!23345 order!26483 (toChars!11299 (transformation!8453 rule!200))) (dynLambda!23344 order!26481 lambda!247846))))

(assert (=> d!1604340 (= (list!18457 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (seqFromList!6074 (_1!34558 lt!2058123))))) (list!18457 (seqFromList!6074 (_1!34558 lt!2058123))))))

(declare-fun lt!2058216 () Unit!148639)

(assert (=> d!1604340 (= lt!2058216 (ForallOf!1263 lambda!247846 (seqFromList!6074 (_1!34558 lt!2058123))))))

(assert (=> d!1604340 (= (lemmaSemiInverse!2614 (transformation!8453 rule!200) (seqFromList!6074 (_1!34558 lt!2058123))) lt!2058216)))

(declare-fun b_lambda!197865 () Bool)

(assert (=> (not b_lambda!197865) (not d!1604340)))

(declare-fun t!369819 () Bool)

(declare-fun tb!261617 () Bool)

(assert (=> (and b!4981286 (= (toChars!11299 (transformation!8453 rule!200)) (toChars!11299 (transformation!8453 rule!200))) t!369819) tb!261617))

(declare-fun tp!1396614 () Bool)

(declare-fun b!4981899 () Bool)

(declare-fun e!3113711 () Bool)

(assert (=> b!4981899 (= e!3113711 (and (inv!75408 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (seqFromList!6074 (_1!34558 lt!2058123)))))) tp!1396614))))

(declare-fun result!326920 () Bool)

(assert (=> tb!261617 (= result!326920 (and (inv!75409 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (seqFromList!6074 (_1!34558 lt!2058123))))) e!3113711))))

(assert (= tb!261617 b!4981899))

(declare-fun m!6013078 () Bool)

(assert (=> b!4981899 m!6013078))

(declare-fun m!6013080 () Bool)

(assert (=> tb!261617 m!6013080))

(assert (=> d!1604340 t!369819))

(declare-fun b_and!349633 () Bool)

(assert (= b_and!349631 (and (=> t!369819 result!326920) b_and!349633)))

(declare-fun b_lambda!197867 () Bool)

(assert (=> (not b_lambda!197867) (not d!1604340)))

(declare-fun t!369821 () Bool)

(declare-fun tb!261619 () Bool)

(assert (=> (and b!4981286 (= (toValue!11440 (transformation!8453 rule!200)) (toValue!11440 (transformation!8453 rule!200))) t!369821) tb!261619))

(declare-fun result!326922 () Bool)

(assert (=> tb!261619 (= result!326922 (inv!21 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (seqFromList!6074 (_1!34558 lt!2058123)))))))

(declare-fun m!6013082 () Bool)

(assert (=> tb!261619 m!6013082))

(assert (=> d!1604340 t!369821))

(declare-fun b_and!349635 () Bool)

(assert (= b_and!349621 (and (=> t!369821 result!326922) b_and!349635)))

(assert (=> d!1604340 m!6012706))

(declare-fun m!6013084 () Bool)

(assert (=> d!1604340 m!6013084))

(assert (=> d!1604340 m!6012706))

(declare-fun m!6013086 () Bool)

(assert (=> d!1604340 m!6013086))

(assert (=> d!1604340 m!6012706))

(declare-fun m!6013088 () Bool)

(assert (=> d!1604340 m!6013088))

(assert (=> d!1604340 m!6013088))

(declare-fun m!6013090 () Bool)

(assert (=> d!1604340 m!6013090))

(assert (=> d!1604340 m!6013090))

(declare-fun m!6013092 () Bool)

(assert (=> d!1604340 m!6013092))

(assert (=> b!4981555 d!1604340))

(declare-fun d!1604342 () Bool)

(assert (=> d!1604342 (= (seqFromList!6074 (_1!34558 lt!2058123)) (fromListB!2744 (_1!34558 lt!2058123)))))

(declare-fun bs!1184316 () Bool)

(assert (= bs!1184316 d!1604342))

(declare-fun m!6013094 () Bool)

(assert (=> bs!1184316 m!6013094))

(assert (=> b!4981555 d!1604342))

(assert (=> b!4981555 d!1604162))

(assert (=> b!4981555 d!1604164))

(assert (=> b!4981555 d!1604150))

(declare-fun d!1604344 () Bool)

(assert (=> d!1604344 (= (apply!13940 (transformation!8453 rule!200) (seqFromList!6074 (_1!34558 lt!2058123))) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (seqFromList!6074 (_1!34558 lt!2058123))))))

(declare-fun b_lambda!197869 () Bool)

(assert (=> (not b_lambda!197869) (not d!1604344)))

(assert (=> d!1604344 t!369821))

(declare-fun b_and!349637 () Bool)

(assert (= b_and!349635 (and (=> t!369821 result!326922) b_and!349637)))

(assert (=> d!1604344 m!6012706))

(assert (=> d!1604344 m!6013088))

(assert (=> b!4981555 d!1604344))

(assert (=> b!4981555 d!1604152))

(declare-fun d!1604346 () Bool)

(declare-fun lt!2058217 () Int)

(assert (=> d!1604346 (= lt!2058217 (size!38204 (list!18457 (seqFromList!6074 (_1!34558 lt!2058123)))))))

(assert (=> d!1604346 (= lt!2058217 (size!38209 (c!849983 (seqFromList!6074 (_1!34558 lt!2058123)))))))

(assert (=> d!1604346 (= (size!38203 (seqFromList!6074 (_1!34558 lt!2058123))) lt!2058217)))

(declare-fun bs!1184317 () Bool)

(assert (= bs!1184317 d!1604346))

(assert (=> bs!1184317 m!6012706))

(assert (=> bs!1184317 m!6013086))

(assert (=> bs!1184317 m!6013086))

(declare-fun m!6013096 () Bool)

(assert (=> bs!1184317 m!6013096))

(declare-fun m!6013098 () Bool)

(assert (=> bs!1184317 m!6013098))

(assert (=> b!4981555 d!1604346))

(assert (=> b!4981284 d!1604128))

(declare-fun d!1604348 () Bool)

(declare-fun e!3113715 () Bool)

(assert (=> d!1604348 e!3113715))

(declare-fun res!2126682 () Bool)

(assert (=> d!1604348 (=> (not res!2126682) (not e!3113715))))

(declare-fun lt!2058220 () BalanceConc!29840)

(assert (=> d!1604348 (= res!2126682 (= (list!18457 lt!2058220) lt!2057873))))

(declare-fun fromList!951 (List!57702) Conc!15205)

(assert (=> d!1604348 (= lt!2058220 (BalanceConc!29841 (fromList!951 lt!2057873)))))

(assert (=> d!1604348 (= (fromListB!2744 lt!2057873) lt!2058220)))

(declare-fun b!4981902 () Bool)

(assert (=> b!4981902 (= e!3113715 (isBalanced!4223 (fromList!951 lt!2057873)))))

(assert (= (and d!1604348 res!2126682) b!4981902))

(declare-fun m!6013100 () Bool)

(assert (=> d!1604348 m!6013100))

(declare-fun m!6013102 () Bool)

(assert (=> d!1604348 m!6013102))

(assert (=> b!4981902 m!6013102))

(assert (=> b!4981902 m!6013102))

(declare-fun m!6013104 () Bool)

(assert (=> b!4981902 m!6013104))

(assert (=> d!1604206 d!1604348))

(assert (=> d!1604164 d!1604338))

(assert (=> d!1604164 d!1604162))

(assert (=> d!1604164 d!1604150))

(assert (=> d!1604164 d!1604152))

(declare-fun d!1604350 () Bool)

(declare-fun e!3113718 () Bool)

(assert (=> d!1604350 e!3113718))

(declare-fun res!2126685 () Bool)

(assert (=> d!1604350 (=> res!2126685 e!3113718)))

(assert (=> d!1604350 (= res!2126685 (isEmpty!31083 (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))))))

(assert (=> d!1604350 true))

(declare-fun _$92!548 () Unit!148639)

(assert (=> d!1604350 (= (choose!36791 (regex!8453 rule!200) lt!2057881) _$92!548)))

(declare-fun b!4981905 () Bool)

(assert (=> b!4981905 (= e!3113718 (matchR!6680 (regex!8453 rule!200) (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))))))

(assert (= (and d!1604350 (not res!2126685)) b!4981905))

(assert (=> d!1604350 m!6012414))

(assert (=> d!1604350 m!6012410))

(assert (=> d!1604350 m!6012414))

(assert (=> d!1604350 m!6012410))

(assert (=> d!1604350 m!6012418))

(assert (=> d!1604350 m!6012650))

(assert (=> b!4981905 m!6012414))

(assert (=> b!4981905 m!6012410))

(assert (=> b!4981905 m!6012414))

(assert (=> b!4981905 m!6012410))

(assert (=> b!4981905 m!6012418))

(assert (=> b!4981905 m!6012654))

(assert (=> d!1604164 d!1604350))

(assert (=> d!1604164 d!1604256))

(declare-fun d!1604352 () Bool)

(declare-fun nullableFct!1261 (Regex!13686) Bool)

(assert (=> d!1604352 (= (nullable!4638 (regex!8453 rule!200)) (nullableFct!1261 (regex!8453 rule!200)))))

(declare-fun bs!1184318 () Bool)

(assert (= bs!1184318 d!1604352))

(declare-fun m!6013106 () Bool)

(assert (=> bs!1184318 m!6013106))

(assert (=> b!4981399 d!1604352))

(declare-fun d!1604354 () Bool)

(assert (=> d!1604354 (= (isEmpty!31083 (tail!9820 (_1!34558 lt!2057882))) (is-Nil!57578 (tail!9820 (_1!34558 lt!2057882))))))

(assert (=> b!4981401 d!1604354))

(declare-fun d!1604356 () Bool)

(assert (=> d!1604356 (= (tail!9820 (_1!34558 lt!2057882)) (t!369794 (_1!34558 lt!2057882)))))

(assert (=> b!4981401 d!1604356))

(declare-fun b!4981906 () Bool)

(declare-fun e!3113720 () tuple2!62510)

(assert (=> b!4981906 (= e!3113720 (tuple2!62511 Nil!57578 lt!2057881))))

(declare-fun b!4981907 () Bool)

(declare-fun e!3113723 () tuple2!62510)

(assert (=> b!4981907 (= e!3113723 (tuple2!62511 lt!2058067 call!347506))))

(declare-fun b!4981908 () Bool)

(declare-fun e!3113722 () Unit!148639)

(declare-fun Unit!148652 () Unit!148639)

(assert (=> b!4981908 (= e!3113722 Unit!148652)))

(declare-fun b!4981909 () Bool)

(declare-fun e!3113726 () Bool)

(declare-fun lt!2058233 () tuple2!62510)

(assert (=> b!4981909 (= e!3113726 (>= (size!38204 (_1!34558 lt!2058233)) (size!38204 lt!2058067)))))

(declare-fun b!4981910 () Bool)

(declare-fun Unit!148653 () Unit!148639)

(assert (=> b!4981910 (= e!3113722 Unit!148653)))

(declare-fun lt!2058244 () Unit!148639)

(declare-fun call!347534 () Unit!148639)

(assert (=> b!4981910 (= lt!2058244 call!347534)))

(declare-fun call!347532 () Bool)

(assert (=> b!4981910 call!347532))

(declare-fun lt!2058234 () Unit!148639)

(assert (=> b!4981910 (= lt!2058234 lt!2058244)))

(declare-fun lt!2058247 () Unit!148639)

(declare-fun call!347537 () Unit!148639)

(assert (=> b!4981910 (= lt!2058247 call!347537)))

(assert (=> b!4981910 (= lt!2057881 lt!2058067)))

(declare-fun lt!2058235 () Unit!148639)

(assert (=> b!4981910 (= lt!2058235 lt!2058247)))

(assert (=> b!4981910 false))

(declare-fun b!4981911 () Bool)

(declare-fun e!3113725 () tuple2!62510)

(declare-fun e!3113719 () tuple2!62510)

(assert (=> b!4981911 (= e!3113725 e!3113719)))

(declare-fun c!850114 () Bool)

(assert (=> b!4981911 (= c!850114 (= (+ (size!38204 Nil!57578) 1) (size!38204 lt!2057881)))))

(declare-fun b!4981912 () Bool)

(declare-fun c!850112 () Bool)

(declare-fun call!347535 () Bool)

(assert (=> b!4981912 (= c!850112 call!347535)))

(declare-fun lt!2058230 () Unit!148639)

(declare-fun lt!2058231 () Unit!148639)

(assert (=> b!4981912 (= lt!2058230 lt!2058231)))

(declare-fun lt!2058221 () C!27622)

(declare-fun lt!2058243 () List!57702)

(assert (=> b!4981912 (= (++!12550 (++!12550 lt!2058067 (Cons!57578 lt!2058221 Nil!57578)) lt!2058243) lt!2057881)))

(assert (=> b!4981912 (= lt!2058231 (lemmaMoveElementToOtherListKeepsConcatEq!1461 lt!2058067 lt!2058221 lt!2058243 lt!2057881))))

(assert (=> b!4981912 (= lt!2058243 (tail!9820 call!347506))))

(assert (=> b!4981912 (= lt!2058221 (head!10687 call!347506))))

(declare-fun lt!2058238 () Unit!148639)

(declare-fun lt!2058224 () Unit!148639)

(assert (=> b!4981912 (= lt!2058238 lt!2058224)))

(assert (=> b!4981912 (isPrefix!5264 (++!12550 lt!2058067 (Cons!57578 (head!10687 (getSuffix!3104 lt!2057881 lt!2058067)) Nil!57578)) lt!2057881)))

(assert (=> b!4981912 (= lt!2058224 (lemmaAddHeadSuffixToPrefixStillPrefix!851 lt!2058067 lt!2057881))))

(declare-fun lt!2058242 () Unit!148639)

(declare-fun lt!2058248 () Unit!148639)

(assert (=> b!4981912 (= lt!2058242 lt!2058248)))

(assert (=> b!4981912 (= lt!2058248 (lemmaAddHeadSuffixToPrefixStillPrefix!851 lt!2058067 lt!2057881))))

(declare-fun lt!2058222 () List!57702)

(assert (=> b!4981912 (= lt!2058222 (++!12550 lt!2058067 (Cons!57578 (head!10687 call!347506) Nil!57578)))))

(declare-fun lt!2058228 () Unit!148639)

(assert (=> b!4981912 (= lt!2058228 e!3113722)))

(declare-fun c!850116 () Bool)

(assert (=> b!4981912 (= c!850116 (= (size!38204 lt!2058067) (size!38204 lt!2057881)))))

(declare-fun lt!2058246 () Unit!148639)

(declare-fun lt!2058225 () Unit!148639)

(assert (=> b!4981912 (= lt!2058246 lt!2058225)))

(assert (=> b!4981912 (<= (size!38204 lt!2058067) (size!38204 lt!2057881))))

(assert (=> b!4981912 (= lt!2058225 (lemmaIsPrefixThenSmallerEqSize!777 lt!2058067 lt!2057881))))

(declare-fun e!3113721 () tuple2!62510)

(assert (=> b!4981912 (= e!3113719 e!3113721)))

(declare-fun bm!347527 () Bool)

(declare-fun call!347533 () Regex!13686)

(declare-fun call!347536 () C!27622)

(assert (=> bm!347527 (= call!347533 (derivativeStep!3938 call!347500 call!347536))))

(declare-fun bm!347528 () Bool)

(assert (=> bm!347528 (= call!347535 (nullable!4638 call!347500))))

(declare-fun bm!347529 () Bool)

(declare-fun call!347539 () List!57702)

(assert (=> bm!347529 (= call!347539 (tail!9820 call!347506))))

(declare-fun bm!347531 () Bool)

(assert (=> bm!347531 (= call!347534 (lemmaIsPrefixRefl!3588 lt!2057881 lt!2057881))))

(declare-fun b!4981913 () Bool)

(declare-fun lt!2058245 () tuple2!62510)

(assert (=> b!4981913 (= e!3113723 lt!2058245)))

(declare-fun b!4981914 () Bool)

(assert (=> b!4981914 (= e!3113720 (tuple2!62511 lt!2058067 Nil!57578))))

(declare-fun b!4981915 () Bool)

(assert (=> b!4981915 (= e!3113725 (tuple2!62511 Nil!57578 lt!2057881))))

(declare-fun b!4981916 () Bool)

(declare-fun call!347538 () tuple2!62510)

(assert (=> b!4981916 (= e!3113721 call!347538)))

(declare-fun b!4981917 () Bool)

(assert (=> b!4981917 (= e!3113721 e!3113723)))

(assert (=> b!4981917 (= lt!2058245 call!347538)))

(declare-fun c!850115 () Bool)

(assert (=> b!4981917 (= c!850115 (isEmpty!31083 (_1!34558 lt!2058245)))))

(declare-fun b!4981918 () Bool)

(declare-fun e!3113724 () Bool)

(assert (=> b!4981918 (= e!3113724 e!3113726)))

(declare-fun res!2126687 () Bool)

(assert (=> b!4981918 (=> res!2126687 e!3113726)))

(assert (=> b!4981918 (= res!2126687 (isEmpty!31083 (_1!34558 lt!2058233)))))

(declare-fun b!4981919 () Bool)

(declare-fun c!850113 () Bool)

(assert (=> b!4981919 (= c!850113 call!347535)))

(declare-fun lt!2058226 () Unit!148639)

(declare-fun lt!2058229 () Unit!148639)

(assert (=> b!4981919 (= lt!2058226 lt!2058229)))

(assert (=> b!4981919 (= lt!2057881 lt!2058067)))

(assert (=> b!4981919 (= lt!2058229 call!347537)))

(declare-fun lt!2058240 () Unit!148639)

(declare-fun lt!2058227 () Unit!148639)

(assert (=> b!4981919 (= lt!2058240 lt!2058227)))

(assert (=> b!4981919 call!347532))

(assert (=> b!4981919 (= lt!2058227 call!347534)))

(assert (=> b!4981919 (= e!3113719 e!3113720)))

(declare-fun bm!347532 () Bool)

(assert (=> bm!347532 (= call!347536 (head!10687 call!347506))))

(declare-fun bm!347533 () Bool)

(assert (=> bm!347533 (= call!347538 (findLongestMatchInner!1897 call!347533 lt!2058222 (+ (size!38204 Nil!57578) 1 1) call!347539 lt!2057881 (size!38204 lt!2057881)))))

(declare-fun bm!347534 () Bool)

(assert (=> bm!347534 (= call!347537 (lemmaIsPrefixSameLengthThenSameList!1224 lt!2057881 lt!2058067 lt!2057881))))

(declare-fun bm!347530 () Bool)

(assert (=> bm!347530 (= call!347532 (isPrefix!5264 lt!2057881 lt!2057881))))

(declare-fun d!1604358 () Bool)

(assert (=> d!1604358 e!3113724))

(declare-fun res!2126686 () Bool)

(assert (=> d!1604358 (=> (not res!2126686) (not e!3113724))))

(assert (=> d!1604358 (= res!2126686 (= (++!12550 (_1!34558 lt!2058233) (_2!34558 lt!2058233)) lt!2057881))))

(assert (=> d!1604358 (= lt!2058233 e!3113725)))

(declare-fun c!850111 () Bool)

(assert (=> d!1604358 (= c!850111 (lostCause!1149 call!347500))))

(declare-fun lt!2058236 () Unit!148639)

(declare-fun Unit!148654 () Unit!148639)

(assert (=> d!1604358 (= lt!2058236 Unit!148654)))

(assert (=> d!1604358 (= (getSuffix!3104 lt!2057881 lt!2058067) call!347506)))

(declare-fun lt!2058237 () Unit!148639)

(declare-fun lt!2058223 () Unit!148639)

(assert (=> d!1604358 (= lt!2058237 lt!2058223)))

(declare-fun lt!2058241 () List!57702)

(assert (=> d!1604358 (= call!347506 lt!2058241)))

(assert (=> d!1604358 (= lt!2058223 (lemmaSamePrefixThenSameSuffix!2517 lt!2058067 call!347506 lt!2058067 lt!2058241 lt!2057881))))

(assert (=> d!1604358 (= lt!2058241 (getSuffix!3104 lt!2057881 lt!2058067))))

(declare-fun lt!2058239 () Unit!148639)

(declare-fun lt!2058232 () Unit!148639)

(assert (=> d!1604358 (= lt!2058239 lt!2058232)))

(assert (=> d!1604358 (isPrefix!5264 lt!2058067 (++!12550 lt!2058067 call!347506))))

(assert (=> d!1604358 (= lt!2058232 (lemmaConcatTwoListThenFirstIsPrefix!3363 lt!2058067 call!347506))))

(assert (=> d!1604358 (validRegex!5987 call!347500)))

(assert (=> d!1604358 (= (findLongestMatchInner!1897 call!347500 lt!2058067 (+ (size!38204 Nil!57578) 1) call!347506 lt!2057881 (size!38204 lt!2057881)) lt!2058233)))

(assert (= (and d!1604358 c!850111) b!4981915))

(assert (= (and d!1604358 (not c!850111)) b!4981911))

(assert (= (and b!4981911 c!850114) b!4981919))

(assert (= (and b!4981911 (not c!850114)) b!4981912))

(assert (= (and b!4981919 c!850113) b!4981914))

(assert (= (and b!4981919 (not c!850113)) b!4981906))

(assert (= (and b!4981912 c!850116) b!4981910))

(assert (= (and b!4981912 (not c!850116)) b!4981908))

(assert (= (and b!4981912 c!850112) b!4981917))

(assert (= (and b!4981912 (not c!850112)) b!4981916))

(assert (= (and b!4981917 c!850115) b!4981907))

(assert (= (and b!4981917 (not c!850115)) b!4981913))

(assert (= (or b!4981917 b!4981916) bm!347532))

(assert (= (or b!4981917 b!4981916) bm!347529))

(assert (= (or b!4981917 b!4981916) bm!347527))

(assert (= (or b!4981917 b!4981916) bm!347533))

(assert (= (or b!4981919 b!4981910) bm!347530))

(assert (= (or b!4981919 b!4981910) bm!347534))

(assert (= (or b!4981919 b!4981910) bm!347531))

(assert (= (or b!4981919 b!4981912) bm!347528))

(assert (= (and d!1604358 res!2126686) b!4981918))

(assert (= (and b!4981918 (not res!2126687)) b!4981909))

(assert (=> bm!347533 m!6012410))

(declare-fun m!6013108 () Bool)

(assert (=> bm!347533 m!6013108))

(declare-fun m!6013110 () Bool)

(assert (=> bm!347534 m!6013110))

(assert (=> bm!347531 m!6012588))

(assert (=> bm!347530 m!6012590))

(declare-fun m!6013112 () Bool)

(assert (=> bm!347529 m!6013112))

(declare-fun m!6013114 () Bool)

(assert (=> b!4981909 m!6013114))

(declare-fun m!6013116 () Bool)

(assert (=> b!4981909 m!6013116))

(declare-fun m!6013118 () Bool)

(assert (=> b!4981912 m!6013118))

(declare-fun m!6013120 () Bool)

(assert (=> b!4981912 m!6013120))

(declare-fun m!6013122 () Bool)

(assert (=> b!4981912 m!6013122))

(assert (=> b!4981912 m!6012410))

(declare-fun m!6013124 () Bool)

(assert (=> b!4981912 m!6013124))

(declare-fun m!6013126 () Bool)

(assert (=> b!4981912 m!6013126))

(assert (=> b!4981912 m!6013122))

(declare-fun m!6013128 () Bool)

(assert (=> b!4981912 m!6013128))

(assert (=> b!4981912 m!6013112))

(declare-fun m!6013130 () Bool)

(assert (=> b!4981912 m!6013130))

(declare-fun m!6013132 () Bool)

(assert (=> b!4981912 m!6013132))

(declare-fun m!6013134 () Bool)

(assert (=> b!4981912 m!6013134))

(declare-fun m!6013136 () Bool)

(assert (=> b!4981912 m!6013136))

(assert (=> b!4981912 m!6013134))

(assert (=> b!4981912 m!6013116))

(declare-fun m!6013138 () Bool)

(assert (=> b!4981912 m!6013138))

(assert (=> b!4981912 m!6013130))

(declare-fun m!6013140 () Bool)

(assert (=> d!1604358 m!6013140))

(declare-fun m!6013142 () Bool)

(assert (=> d!1604358 m!6013142))

(declare-fun m!6013144 () Bool)

(assert (=> d!1604358 m!6013144))

(declare-fun m!6013146 () Bool)

(assert (=> d!1604358 m!6013146))

(declare-fun m!6013148 () Bool)

(assert (=> d!1604358 m!6013148))

(assert (=> d!1604358 m!6013140))

(declare-fun m!6013150 () Bool)

(assert (=> d!1604358 m!6013150))

(declare-fun m!6013152 () Bool)

(assert (=> d!1604358 m!6013152))

(assert (=> d!1604358 m!6013130))

(declare-fun m!6013154 () Bool)

(assert (=> bm!347527 m!6013154))

(declare-fun m!6013156 () Bool)

(assert (=> b!4981918 m!6013156))

(declare-fun m!6013158 () Bool)

(assert (=> bm!347528 m!6013158))

(declare-fun m!6013160 () Bool)

(assert (=> b!4981917 m!6013160))

(assert (=> bm!347532 m!6013138))

(assert (=> bm!347500 d!1604358))

(declare-fun d!1604360 () Bool)

(declare-fun c!850117 () Bool)

(assert (=> d!1604360 (= c!850117 (is-Empty!15205 (c!849983 (_1!34556 lt!2057877))))))

(declare-fun e!3113727 () List!57702)

(assert (=> d!1604360 (= (list!18459 (c!849983 (_1!34556 lt!2057877))) e!3113727)))

(declare-fun b!4981921 () Bool)

(declare-fun e!3113728 () List!57702)

(assert (=> b!4981921 (= e!3113727 e!3113728)))

(declare-fun c!850118 () Bool)

(assert (=> b!4981921 (= c!850118 (is-Leaf!25257 (c!849983 (_1!34556 lt!2057877))))))

(declare-fun b!4981920 () Bool)

(assert (=> b!4981920 (= e!3113727 Nil!57578)))

(declare-fun b!4981923 () Bool)

(assert (=> b!4981923 (= e!3113728 (++!12550 (list!18459 (left!42084 (c!849983 (_1!34556 lt!2057877)))) (list!18459 (right!42414 (c!849983 (_1!34556 lt!2057877))))))))

(declare-fun b!4981922 () Bool)

(assert (=> b!4981922 (= e!3113728 (list!18461 (xs!18531 (c!849983 (_1!34556 lt!2057877)))))))

(assert (= (and d!1604360 c!850117) b!4981920))

(assert (= (and d!1604360 (not c!850117)) b!4981921))

(assert (= (and b!4981921 c!850118) b!4981922))

(assert (= (and b!4981921 (not c!850118)) b!4981923))

(declare-fun m!6013162 () Bool)

(assert (=> b!4981923 m!6013162))

(declare-fun m!6013164 () Bool)

(assert (=> b!4981923 m!6013164))

(assert (=> b!4981923 m!6013162))

(assert (=> b!4981923 m!6013164))

(declare-fun m!6013166 () Bool)

(assert (=> b!4981923 m!6013166))

(declare-fun m!6013168 () Bool)

(assert (=> b!4981922 m!6013168))

(assert (=> d!1604208 d!1604360))

(declare-fun d!1604362 () Bool)

(declare-fun c!850119 () Bool)

(assert (=> d!1604362 (= c!850119 (is-Node!15205 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))))))))

(declare-fun e!3113729 () Bool)

(assert (=> d!1604362 (= (inv!75408 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))))) e!3113729)))

(declare-fun b!4981924 () Bool)

(assert (=> b!4981924 (= e!3113729 (inv!75413 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))))))))

(declare-fun b!4981925 () Bool)

(declare-fun e!3113730 () Bool)

(assert (=> b!4981925 (= e!3113729 e!3113730)))

(declare-fun res!2126688 () Bool)

(assert (=> b!4981925 (= res!2126688 (not (is-Leaf!25257 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877)))))))))

(assert (=> b!4981925 (=> res!2126688 e!3113730)))

(declare-fun b!4981926 () Bool)

(assert (=> b!4981926 (= e!3113730 (inv!75414 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))))))))

(assert (= (and d!1604362 c!850119) b!4981924))

(assert (= (and d!1604362 (not c!850119)) b!4981925))

(assert (= (and b!4981925 (not res!2126688)) b!4981926))

(declare-fun m!6013170 () Bool)

(assert (=> b!4981924 m!6013170))

(declare-fun m!6013172 () Bool)

(assert (=> b!4981926 m!6013172))

(assert (=> b!4981679 d!1604362))

(declare-fun d!1604364 () Bool)

(assert (=> d!1604364 (= (isEmpty!31083 (list!18457 (_1!34556 lt!2057877))) (is-Nil!57578 (list!18457 (_1!34556 lt!2057877))))))

(assert (=> d!1604212 d!1604364))

(assert (=> d!1604212 d!1604208))

(declare-fun d!1604366 () Bool)

(declare-fun lt!2058251 () Bool)

(assert (=> d!1604366 (= lt!2058251 (isEmpty!31083 (list!18459 (c!849983 (_1!34556 lt!2057877)))))))

(assert (=> d!1604366 (= lt!2058251 (= (size!38209 (c!849983 (_1!34556 lt!2057877))) 0))))

(assert (=> d!1604366 (= (isEmpty!31090 (c!849983 (_1!34556 lt!2057877))) lt!2058251)))

(declare-fun bs!1184319 () Bool)

(assert (= bs!1184319 d!1604366))

(assert (=> bs!1184319 m!6012744))

(assert (=> bs!1184319 m!6012744))

(declare-fun m!6013174 () Bool)

(assert (=> bs!1184319 m!6013174))

(assert (=> bs!1184319 m!6012748))

(assert (=> d!1604212 d!1604366))

(declare-fun b!4981927 () Bool)

(declare-fun e!3113733 () Bool)

(assert (=> b!4981927 (= e!3113733 (inv!16 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))))))

(declare-fun b!4981928 () Bool)

(declare-fun e!3113731 () Bool)

(assert (=> b!4981928 (= e!3113731 (inv!15 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))))))

(declare-fun d!1604368 () Bool)

(declare-fun c!850120 () Bool)

(assert (=> d!1604368 (= c!850120 (is-IntegerValue!26289 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))))))

(assert (=> d!1604368 (= (inv!21 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))) e!3113733)))

(declare-fun b!4981929 () Bool)

(declare-fun e!3113732 () Bool)

(assert (=> b!4981929 (= e!3113733 e!3113732)))

(declare-fun c!850121 () Bool)

(assert (=> b!4981929 (= c!850121 (is-IntegerValue!26290 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))))))

(declare-fun b!4981930 () Bool)

(declare-fun res!2126689 () Bool)

(assert (=> b!4981930 (=> res!2126689 e!3113731)))

(assert (=> b!4981930 (= res!2126689 (not (is-IntegerValue!26291 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877)))))))

(assert (=> b!4981930 (= e!3113732 e!3113731)))

(declare-fun b!4981931 () Bool)

(assert (=> b!4981931 (= e!3113732 (inv!17 (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))))))

(assert (= (and d!1604368 c!850120) b!4981927))

(assert (= (and d!1604368 (not c!850120)) b!4981929))

(assert (= (and b!4981929 c!850121) b!4981931))

(assert (= (and b!4981929 (not c!850121)) b!4981930))

(assert (= (and b!4981930 (not res!2126689)) b!4981928))

(declare-fun m!6013176 () Bool)

(assert (=> b!4981927 m!6013176))

(declare-fun m!6013178 () Bool)

(assert (=> b!4981928 m!6013178))

(declare-fun m!6013180 () Bool)

(assert (=> b!4981931 m!6013180))

(assert (=> tb!261599 d!1604368))

(assert (=> b!4981347 d!1604352))

(declare-fun d!1604370 () Bool)

(assert (=> d!1604370 (= (list!18457 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877)))) (list!18459 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))))))))

(declare-fun bs!1184320 () Bool)

(assert (= bs!1184320 d!1604370))

(declare-fun m!6013182 () Bool)

(assert (=> bs!1184320 m!6013182))

(assert (=> bs!1184294 d!1604370))

(assert (=> bs!1184294 d!1604208))

(declare-fun d!1604372 () Bool)

(declare-fun c!850122 () Bool)

(assert (=> d!1604372 (= c!850122 (is-Node!15205 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)))))))

(declare-fun e!3113734 () Bool)

(assert (=> d!1604372 (= (inv!75408 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)))) e!3113734)))

(declare-fun b!4981932 () Bool)

(assert (=> b!4981932 (= e!3113734 (inv!75413 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)))))))

(declare-fun b!4981933 () Bool)

(declare-fun e!3113735 () Bool)

(assert (=> b!4981933 (= e!3113734 e!3113735)))

(declare-fun res!2126690 () Bool)

(assert (=> b!4981933 (= res!2126690 (not (is-Leaf!25257 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880))))))))

(assert (=> b!4981933 (=> res!2126690 e!3113735)))

(declare-fun b!4981934 () Bool)

(assert (=> b!4981934 (= e!3113735 (inv!75414 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)))))))

(assert (= (and d!1604372 c!850122) b!4981932))

(assert (= (and d!1604372 (not c!850122)) b!4981933))

(assert (= (and b!4981933 (not res!2126690)) b!4981934))

(declare-fun m!6013184 () Bool)

(assert (=> b!4981932 m!6013184))

(declare-fun m!6013186 () Bool)

(assert (=> b!4981934 m!6013186))

(assert (=> b!4981682 d!1604372))

(declare-fun d!1604374 () Bool)

(declare-fun res!2126695 () Bool)

(declare-fun e!3113738 () Bool)

(assert (=> d!1604374 (=> (not res!2126695) (not e!3113738))))

(assert (=> d!1604374 (= res!2126695 (<= (size!38204 (list!18461 (xs!18531 (c!849983 totalInput!520)))) 512))))

(assert (=> d!1604374 (= (inv!75414 (c!849983 totalInput!520)) e!3113738)))

(declare-fun b!4981939 () Bool)

(declare-fun res!2126696 () Bool)

(assert (=> b!4981939 (=> (not res!2126696) (not e!3113738))))

(assert (=> b!4981939 (= res!2126696 (= (csize!30641 (c!849983 totalInput!520)) (size!38204 (list!18461 (xs!18531 (c!849983 totalInput!520))))))))

(declare-fun b!4981940 () Bool)

(assert (=> b!4981940 (= e!3113738 (and (> (csize!30641 (c!849983 totalInput!520)) 0) (<= (csize!30641 (c!849983 totalInput!520)) 512)))))

(assert (= (and d!1604374 res!2126695) b!4981939))

(assert (= (and b!4981939 res!2126696) b!4981940))

(declare-fun m!6013188 () Bool)

(assert (=> d!1604374 m!6013188))

(assert (=> d!1604374 m!6013188))

(declare-fun m!6013190 () Bool)

(assert (=> d!1604374 m!6013190))

(assert (=> b!4981939 m!6013188))

(assert (=> b!4981939 m!6013188))

(assert (=> b!4981939 m!6013190))

(assert (=> b!4981411 d!1604374))

(declare-fun d!1604380 () Bool)

(declare-fun c!850123 () Bool)

(assert (=> d!1604380 (= c!850123 (is-Node!15205 (left!42084 (c!849983 totalInput!520))))))

(declare-fun e!3113739 () Bool)

(assert (=> d!1604380 (= (inv!75408 (left!42084 (c!849983 totalInput!520))) e!3113739)))

(declare-fun b!4981941 () Bool)

(assert (=> b!4981941 (= e!3113739 (inv!75413 (left!42084 (c!849983 totalInput!520))))))

(declare-fun b!4981942 () Bool)

(declare-fun e!3113740 () Bool)

(assert (=> b!4981942 (= e!3113739 e!3113740)))

(declare-fun res!2126697 () Bool)

(assert (=> b!4981942 (= res!2126697 (not (is-Leaf!25257 (left!42084 (c!849983 totalInput!520)))))))

(assert (=> b!4981942 (=> res!2126697 e!3113740)))

(declare-fun b!4981943 () Bool)

(assert (=> b!4981943 (= e!3113740 (inv!75414 (left!42084 (c!849983 totalInput!520))))))

(assert (= (and d!1604380 c!850123) b!4981941))

(assert (= (and d!1604380 (not c!850123)) b!4981942))

(assert (= (and b!4981942 (not res!2126697)) b!4981943))

(declare-fun m!6013192 () Bool)

(assert (=> b!4981941 m!6013192))

(declare-fun m!6013194 () Bool)

(assert (=> b!4981943 m!6013194))

(assert (=> b!4981655 d!1604380))

(declare-fun d!1604382 () Bool)

(declare-fun c!850124 () Bool)

(assert (=> d!1604382 (= c!850124 (is-Node!15205 (right!42414 (c!849983 totalInput!520))))))

(declare-fun e!3113741 () Bool)

(assert (=> d!1604382 (= (inv!75408 (right!42414 (c!849983 totalInput!520))) e!3113741)))

(declare-fun b!4981944 () Bool)

(assert (=> b!4981944 (= e!3113741 (inv!75413 (right!42414 (c!849983 totalInput!520))))))

(declare-fun b!4981945 () Bool)

(declare-fun e!3113742 () Bool)

(assert (=> b!4981945 (= e!3113741 e!3113742)))

(declare-fun res!2126698 () Bool)

(assert (=> b!4981945 (= res!2126698 (not (is-Leaf!25257 (right!42414 (c!849983 totalInput!520)))))))

(assert (=> b!4981945 (=> res!2126698 e!3113742)))

(declare-fun b!4981946 () Bool)

(assert (=> b!4981946 (= e!3113742 (inv!75414 (right!42414 (c!849983 totalInput!520))))))

(assert (= (and d!1604382 c!850124) b!4981944))

(assert (= (and d!1604382 (not c!850124)) b!4981945))

(assert (= (and b!4981945 (not res!2126698)) b!4981946))

(declare-fun m!6013196 () Bool)

(assert (=> b!4981944 m!6013196))

(declare-fun m!6013198 () Bool)

(assert (=> b!4981946 m!6013198))

(assert (=> b!4981655 d!1604382))

(assert (=> b!4981632 d!1604316))

(declare-fun b!4981947 () Bool)

(declare-fun e!3113746 () Bool)

(declare-fun e!3113744 () Bool)

(assert (=> b!4981947 (= e!3113746 e!3113744)))

(declare-fun res!2126705 () Bool)

(assert (=> b!4981947 (=> (not res!2126705) (not e!3113744))))

(declare-fun lt!2058252 () Bool)

(assert (=> b!4981947 (= res!2126705 (not lt!2058252))))

(declare-fun b!4981948 () Bool)

(declare-fun e!3113748 () Bool)

(assert (=> b!4981948 (= e!3113748 (matchR!6680 (derivativeStep!3938 (regex!8453 rule!200) (head!10687 (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881))))) (tail!9820 (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881))))))))

(declare-fun bm!347535 () Bool)

(declare-fun call!347540 () Bool)

(assert (=> bm!347535 (= call!347540 (isEmpty!31083 (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))))))

(declare-fun b!4981949 () Bool)

(declare-fun e!3113745 () Bool)

(declare-fun e!3113749 () Bool)

(assert (=> b!4981949 (= e!3113745 e!3113749)))

(declare-fun c!850126 () Bool)

(assert (=> b!4981949 (= c!850126 (is-EmptyLang!13686 (regex!8453 rule!200)))))

(declare-fun b!4981950 () Bool)

(declare-fun e!3113743 () Bool)

(assert (=> b!4981950 (= e!3113744 e!3113743)))

(declare-fun res!2126699 () Bool)

(assert (=> b!4981950 (=> res!2126699 e!3113743)))

(assert (=> b!4981950 (= res!2126699 call!347540)))

(declare-fun b!4981951 () Bool)

(declare-fun res!2126701 () Bool)

(assert (=> b!4981951 (=> res!2126701 e!3113743)))

(assert (=> b!4981951 (= res!2126701 (not (isEmpty!31083 (tail!9820 (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))))))))

(declare-fun b!4981952 () Bool)

(declare-fun res!2126703 () Bool)

(assert (=> b!4981952 (=> res!2126703 e!3113746)))

(assert (=> b!4981952 (= res!2126703 (not (is-ElementMatch!13686 (regex!8453 rule!200))))))

(assert (=> b!4981952 (= e!3113749 e!3113746)))

(declare-fun b!4981953 () Bool)

(declare-fun res!2126700 () Bool)

(assert (=> b!4981953 (=> res!2126700 e!3113746)))

(declare-fun e!3113747 () Bool)

(assert (=> b!4981953 (= res!2126700 e!3113747)))

(declare-fun res!2126702 () Bool)

(assert (=> b!4981953 (=> (not res!2126702) (not e!3113747))))

(assert (=> b!4981953 (= res!2126702 lt!2058252)))

(declare-fun b!4981954 () Bool)

(assert (=> b!4981954 (= e!3113743 (not (= (head!10687 (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))) (c!849982 (regex!8453 rule!200)))))))

(declare-fun b!4981955 () Bool)

(declare-fun res!2126706 () Bool)

(assert (=> b!4981955 (=> (not res!2126706) (not e!3113747))))

(assert (=> b!4981955 (= res!2126706 (not call!347540))))

(declare-fun d!1604384 () Bool)

(assert (=> d!1604384 e!3113745))

(declare-fun c!850125 () Bool)

(assert (=> d!1604384 (= c!850125 (is-EmptyExpr!13686 (regex!8453 rule!200)))))

(assert (=> d!1604384 (= lt!2058252 e!3113748)))

(declare-fun c!850127 () Bool)

(assert (=> d!1604384 (= c!850127 (isEmpty!31083 (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))))))

(assert (=> d!1604384 (validRegex!5987 (regex!8453 rule!200))))

(assert (=> d!1604384 (= (matchR!6680 (regex!8453 rule!200) (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))) lt!2058252)))

(declare-fun b!4981956 () Bool)

(assert (=> b!4981956 (= e!3113749 (not lt!2058252))))

(declare-fun b!4981957 () Bool)

(assert (=> b!4981957 (= e!3113748 (nullable!4638 (regex!8453 rule!200)))))

(declare-fun b!4981958 () Bool)

(assert (=> b!4981958 (= e!3113747 (= (head!10687 (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881)))) (c!849982 (regex!8453 rule!200))))))

(declare-fun b!4981959 () Bool)

(declare-fun res!2126704 () Bool)

(assert (=> b!4981959 (=> (not res!2126704) (not e!3113747))))

(assert (=> b!4981959 (= res!2126704 (isEmpty!31083 (tail!9820 (_1!34558 (findLongestMatchInner!1897 (regex!8453 rule!200) Nil!57578 (size!38204 Nil!57578) lt!2057881 lt!2057881 (size!38204 lt!2057881))))))))

(declare-fun b!4981960 () Bool)

(assert (=> b!4981960 (= e!3113745 (= lt!2058252 call!347540))))

(assert (= (and d!1604384 c!850127) b!4981957))

(assert (= (and d!1604384 (not c!850127)) b!4981948))

(assert (= (and d!1604384 c!850125) b!4981960))

(assert (= (and d!1604384 (not c!850125)) b!4981949))

(assert (= (and b!4981949 c!850126) b!4981956))

(assert (= (and b!4981949 (not c!850126)) b!4981952))

(assert (= (and b!4981952 (not res!2126703)) b!4981953))

(assert (= (and b!4981953 res!2126702) b!4981955))

(assert (= (and b!4981955 res!2126706) b!4981959))

(assert (= (and b!4981959 res!2126704) b!4981958))

(assert (= (and b!4981953 (not res!2126700)) b!4981947))

(assert (= (and b!4981947 res!2126705) b!4981950))

(assert (= (and b!4981950 (not res!2126699)) b!4981951))

(assert (= (and b!4981951 (not res!2126701)) b!4981954))

(assert (= (or b!4981960 b!4981950 b!4981955) bm!347535))

(declare-fun m!6013200 () Bool)

(assert (=> b!4981958 m!6013200))

(declare-fun m!6013202 () Bool)

(assert (=> b!4981959 m!6013202))

(assert (=> b!4981959 m!6013202))

(declare-fun m!6013204 () Bool)

(assert (=> b!4981959 m!6013204))

(assert (=> bm!347535 m!6012650))

(assert (=> b!4981951 m!6013202))

(assert (=> b!4981951 m!6013202))

(assert (=> b!4981951 m!6013204))

(assert (=> b!4981948 m!6013200))

(assert (=> b!4981948 m!6013200))

(declare-fun m!6013206 () Bool)

(assert (=> b!4981948 m!6013206))

(assert (=> b!4981948 m!6013202))

(assert (=> b!4981948 m!6013206))

(assert (=> b!4981948 m!6013202))

(declare-fun m!6013208 () Bool)

(assert (=> b!4981948 m!6013208))

(assert (=> b!4981957 m!6012490))

(assert (=> d!1604384 m!6012650))

(assert (=> d!1604384 m!6012488))

(assert (=> b!4981954 m!6013200))

(assert (=> b!4981557 d!1604384))

(assert (=> b!4981557 d!1604152))

(assert (=> b!4981557 d!1604162))

(assert (=> b!4981557 d!1604150))

(declare-fun d!1604386 () Bool)

(declare-fun lt!2058253 () Int)

(assert (=> d!1604386 (>= lt!2058253 0)))

(declare-fun e!3113754 () Int)

(assert (=> d!1604386 (= lt!2058253 e!3113754)))

(declare-fun c!850132 () Bool)

(assert (=> d!1604386 (= c!850132 (is-Nil!57578 (list!18457 (_1!34556 lt!2057877))))))

(assert (=> d!1604386 (= (size!38204 (list!18457 (_1!34556 lt!2057877))) lt!2058253)))

(declare-fun b!4981969 () Bool)

(assert (=> b!4981969 (= e!3113754 0)))

(declare-fun b!4981970 () Bool)

(assert (=> b!4981970 (= e!3113754 (+ 1 (size!38204 (t!369794 (list!18457 (_1!34556 lt!2057877))))))))

(assert (= (and d!1604386 c!850132) b!4981969))

(assert (= (and d!1604386 (not c!850132)) b!4981970))

(declare-fun m!6013210 () Bool)

(assert (=> b!4981970 m!6013210))

(assert (=> d!1604210 d!1604386))

(assert (=> d!1604210 d!1604208))

(declare-fun d!1604388 () Bool)

(declare-fun lt!2058256 () Int)

(assert (=> d!1604388 (= lt!2058256 (size!38204 (list!18459 (c!849983 (_1!34556 lt!2057877)))))))

(assert (=> d!1604388 (= lt!2058256 (ite (is-Empty!15205 (c!849983 (_1!34556 lt!2057877))) 0 (ite (is-Leaf!25257 (c!849983 (_1!34556 lt!2057877))) (csize!30641 (c!849983 (_1!34556 lt!2057877))) (csize!30640 (c!849983 (_1!34556 lt!2057877))))))))

(assert (=> d!1604388 (= (size!38209 (c!849983 (_1!34556 lt!2057877))) lt!2058256)))

(declare-fun bs!1184321 () Bool)

(assert (= bs!1184321 d!1604388))

(assert (=> bs!1184321 m!6012744))

(assert (=> bs!1184321 m!6012744))

(declare-fun m!6013220 () Bool)

(assert (=> bs!1184321 m!6013220))

(assert (=> d!1604210 d!1604388))

(assert (=> b!4981393 d!1604354))

(assert (=> b!4981393 d!1604356))

(declare-fun d!1604392 () Bool)

(declare-fun lt!2058257 () Int)

(assert (=> d!1604392 (>= lt!2058257 0)))

(declare-fun e!3113757 () Int)

(assert (=> d!1604392 (= lt!2058257 e!3113757)))

(declare-fun c!850135 () Bool)

(assert (=> d!1604392 (= c!850135 (is-Nil!57578 (t!369794 lt!2057881)))))

(assert (=> d!1604392 (= (size!38204 (t!369794 lt!2057881)) lt!2058257)))

(declare-fun b!4981975 () Bool)

(assert (=> b!4981975 (= e!3113757 0)))

(declare-fun b!4981976 () Bool)

(assert (=> b!4981976 (= e!3113757 (+ 1 (size!38204 (t!369794 (t!369794 lt!2057881)))))))

(assert (= (and d!1604392 c!850135) b!4981975))

(assert (= (and d!1604392 (not c!850135)) b!4981976))

(declare-fun m!6013222 () Bool)

(assert (=> b!4981976 m!6013222))

(assert (=> b!4981425 d!1604392))

(declare-fun bm!347538 () Bool)

(declare-fun call!347543 () Int)

(assert (=> bm!347538 (= call!347543 (size!38204 (list!18457 totalInput!520)))))

(declare-fun b!4982017 () Bool)

(declare-fun e!3113776 () Int)

(assert (=> b!4982017 (= e!3113776 0)))

(declare-fun d!1604394 () Bool)

(declare-fun e!3113780 () Bool)

(assert (=> d!1604394 e!3113780))

(declare-fun res!2126731 () Bool)

(assert (=> d!1604394 (=> (not res!2126731) (not e!3113780))))

(declare-fun lt!2058260 () List!57702)

(assert (=> d!1604394 (= res!2126731 (set.subset (content!10202 lt!2058260) (content!10202 (list!18457 totalInput!520))))))

(declare-fun e!3113777 () List!57702)

(assert (=> d!1604394 (= lt!2058260 e!3113777)))

(declare-fun c!850147 () Bool)

(assert (=> d!1604394 (= c!850147 (is-Nil!57578 (list!18457 totalInput!520)))))

(assert (=> d!1604394 (= (drop!2369 (list!18457 totalInput!520) (- (size!38204 (list!18457 totalInput!520)) (size!38204 lt!2057881))) lt!2058260)))

(declare-fun b!4982018 () Bool)

(declare-fun e!3113779 () Int)

(assert (=> b!4982018 (= e!3113780 (= (size!38204 lt!2058260) e!3113779))))

(declare-fun c!850144 () Bool)

(assert (=> b!4982018 (= c!850144 (<= (- (size!38204 (list!18457 totalInput!520)) (size!38204 lt!2057881)) 0))))

(declare-fun b!4982019 () Bool)

(declare-fun e!3113778 () List!57702)

(assert (=> b!4982019 (= e!3113777 e!3113778)))

(declare-fun c!850145 () Bool)

(assert (=> b!4982019 (= c!850145 (<= (- (size!38204 (list!18457 totalInput!520)) (size!38204 lt!2057881)) 0))))

(declare-fun b!4982020 () Bool)

(assert (=> b!4982020 (= e!3113779 call!347543)))

(declare-fun b!4982021 () Bool)

(assert (=> b!4982021 (= e!3113777 Nil!57578)))

(declare-fun b!4982022 () Bool)

(assert (=> b!4982022 (= e!3113778 (drop!2369 (t!369794 (list!18457 totalInput!520)) (- (- (size!38204 (list!18457 totalInput!520)) (size!38204 lt!2057881)) 1)))))

(declare-fun b!4982023 () Bool)

(assert (=> b!4982023 (= e!3113779 e!3113776)))

(declare-fun c!850146 () Bool)

(assert (=> b!4982023 (= c!850146 (>= (- (size!38204 (list!18457 totalInput!520)) (size!38204 lt!2057881)) call!347543))))

(declare-fun b!4982024 () Bool)

(assert (=> b!4982024 (= e!3113776 (- call!347543 (- (size!38204 (list!18457 totalInput!520)) (size!38204 lt!2057881))))))

(declare-fun b!4982025 () Bool)

(assert (=> b!4982025 (= e!3113778 (list!18457 totalInput!520))))

(assert (= (and d!1604394 c!850147) b!4982021))

(assert (= (and d!1604394 (not c!850147)) b!4982019))

(assert (= (and b!4982019 c!850145) b!4982025))

(assert (= (and b!4982019 (not c!850145)) b!4982022))

(assert (= (and d!1604394 res!2126731) b!4982018))

(assert (= (and b!4982018 c!850144) b!4982020))

(assert (= (and b!4982018 (not c!850144)) b!4982023))

(assert (= (and b!4982023 c!850146) b!4982017))

(assert (= (and b!4982023 (not c!850146)) b!4982024))

(assert (= (or b!4982020 b!4982023 b!4982024) bm!347538))

(assert (=> bm!347538 m!6012370))

(assert (=> bm!347538 m!6012800))

(declare-fun m!6013238 () Bool)

(assert (=> d!1604394 m!6013238))

(assert (=> d!1604394 m!6012370))

(declare-fun m!6013242 () Bool)

(assert (=> d!1604394 m!6013242))

(declare-fun m!6013244 () Bool)

(assert (=> b!4982018 m!6013244))

(declare-fun m!6013246 () Bool)

(assert (=> b!4982022 m!6013246))

(assert (=> d!1604224 d!1604394))

(declare-fun d!1604400 () Bool)

(declare-fun lt!2058261 () Int)

(assert (=> d!1604400 (>= lt!2058261 0)))

(declare-fun e!3113782 () Int)

(assert (=> d!1604400 (= lt!2058261 e!3113782)))

(declare-fun c!850148 () Bool)

(assert (=> d!1604400 (= c!850148 (is-Nil!57578 (list!18457 totalInput!520)))))

(assert (=> d!1604400 (= (size!38204 (list!18457 totalInput!520)) lt!2058261)))

(declare-fun b!4982028 () Bool)

(assert (=> b!4982028 (= e!3113782 0)))

(declare-fun b!4982029 () Bool)

(assert (=> b!4982029 (= e!3113782 (+ 1 (size!38204 (t!369794 (list!18457 totalInput!520)))))))

(assert (= (and d!1604400 c!850148) b!4982028))

(assert (= (and d!1604400 (not c!850148)) b!4982029))

(declare-fun m!6013248 () Bool)

(assert (=> b!4982029 m!6013248))

(assert (=> d!1604224 d!1604400))

(assert (=> d!1604224 d!1604150))

(declare-fun b!4982030 () Bool)

(declare-fun e!3113786 () Bool)

(declare-fun e!3113784 () Bool)

(assert (=> b!4982030 (= e!3113786 e!3113784)))

(declare-fun res!2126740 () Bool)

(assert (=> b!4982030 (=> (not res!2126740) (not e!3113784))))

(declare-fun lt!2058262 () Bool)

(assert (=> b!4982030 (= res!2126740 (not lt!2058262))))

(declare-fun b!4982031 () Bool)

(declare-fun e!3113788 () Bool)

(assert (=> b!4982031 (= e!3113788 (matchR!6680 (derivativeStep!3938 (derivativeStep!3938 (regex!8453 rule!200) (head!10687 (_1!34558 lt!2057882))) (head!10687 (tail!9820 (_1!34558 lt!2057882)))) (tail!9820 (tail!9820 (_1!34558 lt!2057882)))))))

(declare-fun bm!347539 () Bool)

(declare-fun call!347544 () Bool)

(assert (=> bm!347539 (= call!347544 (isEmpty!31083 (tail!9820 (_1!34558 lt!2057882))))))

(declare-fun b!4982032 () Bool)

(declare-fun e!3113785 () Bool)

(declare-fun e!3113789 () Bool)

(assert (=> b!4982032 (= e!3113785 e!3113789)))

(declare-fun c!850150 () Bool)

(assert (=> b!4982032 (= c!850150 (is-EmptyLang!13686 (derivativeStep!3938 (regex!8453 rule!200) (head!10687 (_1!34558 lt!2057882)))))))

(declare-fun b!4982033 () Bool)

(declare-fun e!3113783 () Bool)

(assert (=> b!4982033 (= e!3113784 e!3113783)))

(declare-fun res!2126734 () Bool)

(assert (=> b!4982033 (=> res!2126734 e!3113783)))

(assert (=> b!4982033 (= res!2126734 call!347544)))

(declare-fun b!4982034 () Bool)

(declare-fun res!2126736 () Bool)

(assert (=> b!4982034 (=> res!2126736 e!3113783)))

(assert (=> b!4982034 (= res!2126736 (not (isEmpty!31083 (tail!9820 (tail!9820 (_1!34558 lt!2057882))))))))

(declare-fun b!4982035 () Bool)

(declare-fun res!2126738 () Bool)

(assert (=> b!4982035 (=> res!2126738 e!3113786)))

(assert (=> b!4982035 (= res!2126738 (not (is-ElementMatch!13686 (derivativeStep!3938 (regex!8453 rule!200) (head!10687 (_1!34558 lt!2057882))))))))

(assert (=> b!4982035 (= e!3113789 e!3113786)))

(declare-fun b!4982036 () Bool)

(declare-fun res!2126735 () Bool)

(assert (=> b!4982036 (=> res!2126735 e!3113786)))

(declare-fun e!3113787 () Bool)

(assert (=> b!4982036 (= res!2126735 e!3113787)))

(declare-fun res!2126737 () Bool)

(assert (=> b!4982036 (=> (not res!2126737) (not e!3113787))))

(assert (=> b!4982036 (= res!2126737 lt!2058262)))

(declare-fun b!4982037 () Bool)

(assert (=> b!4982037 (= e!3113783 (not (= (head!10687 (tail!9820 (_1!34558 lt!2057882))) (c!849982 (derivativeStep!3938 (regex!8453 rule!200) (head!10687 (_1!34558 lt!2057882)))))))))

(declare-fun b!4982038 () Bool)

(declare-fun res!2126741 () Bool)

(assert (=> b!4982038 (=> (not res!2126741) (not e!3113787))))

(assert (=> b!4982038 (= res!2126741 (not call!347544))))

(declare-fun d!1604402 () Bool)

(assert (=> d!1604402 e!3113785))

(declare-fun c!850149 () Bool)

(assert (=> d!1604402 (= c!850149 (is-EmptyExpr!13686 (derivativeStep!3938 (regex!8453 rule!200) (head!10687 (_1!34558 lt!2057882)))))))

(assert (=> d!1604402 (= lt!2058262 e!3113788)))

(declare-fun c!850151 () Bool)

(assert (=> d!1604402 (= c!850151 (isEmpty!31083 (tail!9820 (_1!34558 lt!2057882))))))

(assert (=> d!1604402 (validRegex!5987 (derivativeStep!3938 (regex!8453 rule!200) (head!10687 (_1!34558 lt!2057882))))))

(assert (=> d!1604402 (= (matchR!6680 (derivativeStep!3938 (regex!8453 rule!200) (head!10687 (_1!34558 lt!2057882))) (tail!9820 (_1!34558 lt!2057882))) lt!2058262)))

(declare-fun b!4982039 () Bool)

(assert (=> b!4982039 (= e!3113789 (not lt!2058262))))

(declare-fun b!4982040 () Bool)

(assert (=> b!4982040 (= e!3113788 (nullable!4638 (derivativeStep!3938 (regex!8453 rule!200) (head!10687 (_1!34558 lt!2057882)))))))

(declare-fun b!4982041 () Bool)

(assert (=> b!4982041 (= e!3113787 (= (head!10687 (tail!9820 (_1!34558 lt!2057882))) (c!849982 (derivativeStep!3938 (regex!8453 rule!200) (head!10687 (_1!34558 lt!2057882))))))))

(declare-fun b!4982042 () Bool)

(declare-fun res!2126739 () Bool)

(assert (=> b!4982042 (=> (not res!2126739) (not e!3113787))))

(assert (=> b!4982042 (= res!2126739 (isEmpty!31083 (tail!9820 (tail!9820 (_1!34558 lt!2057882)))))))

(declare-fun b!4982043 () Bool)

(assert (=> b!4982043 (= e!3113785 (= lt!2058262 call!347544))))

(assert (= (and d!1604402 c!850151) b!4982040))

(assert (= (and d!1604402 (not c!850151)) b!4982031))

(assert (= (and d!1604402 c!850149) b!4982043))

(assert (= (and d!1604402 (not c!850149)) b!4982032))

(assert (= (and b!4982032 c!850150) b!4982039))

(assert (= (and b!4982032 (not c!850150)) b!4982035))

(assert (= (and b!4982035 (not res!2126738)) b!4982036))

(assert (= (and b!4982036 res!2126737) b!4982038))

(assert (= (and b!4982038 res!2126741) b!4982042))

(assert (= (and b!4982042 res!2126739) b!4982041))

(assert (= (and b!4982036 (not res!2126735)) b!4982030))

(assert (= (and b!4982030 res!2126740) b!4982033))

(assert (= (and b!4982033 (not res!2126734)) b!4982034))

(assert (= (and b!4982034 (not res!2126736)) b!4982037))

(assert (= (or b!4982043 b!4982033 b!4982038) bm!347539))

(assert (=> b!4982041 m!6012506))

(declare-fun m!6013250 () Bool)

(assert (=> b!4982041 m!6013250))

(assert (=> b!4982042 m!6012506))

(declare-fun m!6013252 () Bool)

(assert (=> b!4982042 m!6013252))

(assert (=> b!4982042 m!6013252))

(declare-fun m!6013254 () Bool)

(assert (=> b!4982042 m!6013254))

(assert (=> bm!347539 m!6012506))

(assert (=> bm!347539 m!6012508))

(assert (=> b!4982034 m!6012506))

(assert (=> b!4982034 m!6013252))

(assert (=> b!4982034 m!6013252))

(assert (=> b!4982034 m!6013254))

(assert (=> b!4982031 m!6012506))

(assert (=> b!4982031 m!6013250))

(assert (=> b!4982031 m!6012510))

(assert (=> b!4982031 m!6013250))

(declare-fun m!6013256 () Bool)

(assert (=> b!4982031 m!6013256))

(assert (=> b!4982031 m!6012506))

(assert (=> b!4982031 m!6013252))

(assert (=> b!4982031 m!6013256))

(assert (=> b!4982031 m!6013252))

(declare-fun m!6013258 () Bool)

(assert (=> b!4982031 m!6013258))

(assert (=> b!4982040 m!6012510))

(declare-fun m!6013260 () Bool)

(assert (=> b!4982040 m!6013260))

(assert (=> d!1604402 m!6012506))

(assert (=> d!1604402 m!6012508))

(assert (=> d!1604402 m!6012510))

(declare-fun m!6013262 () Bool)

(assert (=> d!1604402 m!6013262))

(assert (=> b!4982037 m!6012506))

(assert (=> b!4982037 m!6013250))

(assert (=> b!4981390 d!1604402))

(declare-fun bm!347540 () Bool)

(declare-fun c!850158 () Bool)

(declare-fun c!850157 () Bool)

(declare-fun call!347545 () Regex!13686)

(assert (=> bm!347540 (= call!347545 (derivativeStep!3938 (ite c!850158 (regOne!27885 (regex!8453 rule!200)) (ite c!850157 (reg!14015 (regex!8453 rule!200)) (regOne!27884 (regex!8453 rule!200)))) (head!10687 (_1!34558 lt!2057882))))))

(declare-fun bm!347541 () Bool)

(declare-fun call!347546 () Regex!13686)

(assert (=> bm!347541 (= call!347546 call!347545)))

(declare-fun b!4982048 () Bool)

(declare-fun e!3113794 () Regex!13686)

(declare-fun e!3113793 () Regex!13686)

(assert (=> b!4982048 (= e!3113794 e!3113793)))

(assert (=> b!4982048 (= c!850157 (is-Star!13686 (regex!8453 rule!200)))))

(declare-fun b!4982049 () Bool)

(declare-fun e!3113795 () Regex!13686)

(declare-fun call!347548 () Regex!13686)

(assert (=> b!4982049 (= e!3113795 (Union!13686 (Concat!22449 call!347548 (regTwo!27884 (regex!8453 rule!200))) EmptyLang!13686))))

(declare-fun b!4982050 () Bool)

(declare-fun e!3113796 () Regex!13686)

(assert (=> b!4982050 (= e!3113796 EmptyLang!13686)))

(declare-fun b!4982051 () Bool)

(declare-fun call!347547 () Regex!13686)

(assert (=> b!4982051 (= e!3113795 (Union!13686 (Concat!22449 call!347548 (regTwo!27884 (regex!8453 rule!200))) call!347547))))

(declare-fun b!4982052 () Bool)

(assert (=> b!4982052 (= e!3113793 (Concat!22449 call!347546 (regex!8453 rule!200)))))

(declare-fun b!4982053 () Bool)

(assert (=> b!4982053 (= e!3113794 (Union!13686 call!347545 call!347547))))

(declare-fun b!4982054 () Bool)

(declare-fun c!850154 () Bool)

(assert (=> b!4982054 (= c!850154 (nullable!4638 (regOne!27884 (regex!8453 rule!200))))))

(assert (=> b!4982054 (= e!3113793 e!3113795)))

(declare-fun b!4982055 () Bool)

(assert (=> b!4982055 (= c!850158 (is-Union!13686 (regex!8453 rule!200)))))

(declare-fun e!3113792 () Regex!13686)

(assert (=> b!4982055 (= e!3113792 e!3113794)))

(declare-fun b!4982059 () Bool)

(assert (=> b!4982059 (= e!3113792 (ite (= (head!10687 (_1!34558 lt!2057882)) (c!849982 (regex!8453 rule!200))) EmptyExpr!13686 EmptyLang!13686))))

(declare-fun b!4982061 () Bool)

(assert (=> b!4982061 (= e!3113796 e!3113792)))

(declare-fun c!850155 () Bool)

(assert (=> b!4982061 (= c!850155 (is-ElementMatch!13686 (regex!8453 rule!200)))))

(declare-fun bm!347543 () Bool)

(assert (=> bm!347543 (= call!347547 (derivativeStep!3938 (ite c!850158 (regTwo!27885 (regex!8453 rule!200)) (regTwo!27884 (regex!8453 rule!200))) (head!10687 (_1!34558 lt!2057882))))))

(declare-fun bm!347542 () Bool)

(assert (=> bm!347542 (= call!347548 call!347546)))

(declare-fun d!1604404 () Bool)

(declare-fun lt!2058263 () Regex!13686)

(assert (=> d!1604404 (validRegex!5987 lt!2058263)))

(assert (=> d!1604404 (= lt!2058263 e!3113796)))

(declare-fun c!850156 () Bool)

(assert (=> d!1604404 (= c!850156 (or (is-EmptyExpr!13686 (regex!8453 rule!200)) (is-EmptyLang!13686 (regex!8453 rule!200))))))

(assert (=> d!1604404 (validRegex!5987 (regex!8453 rule!200))))

(assert (=> d!1604404 (= (derivativeStep!3938 (regex!8453 rule!200) (head!10687 (_1!34558 lt!2057882))) lt!2058263)))

(assert (= (and d!1604404 c!850156) b!4982050))

(assert (= (and d!1604404 (not c!850156)) b!4982061))

(assert (= (and b!4982061 c!850155) b!4982059))

(assert (= (and b!4982061 (not c!850155)) b!4982055))

(assert (= (and b!4982055 c!850158) b!4982053))

(assert (= (and b!4982055 (not c!850158)) b!4982048))

(assert (= (and b!4982048 c!850157) b!4982052))

(assert (= (and b!4982048 (not c!850157)) b!4982054))

(assert (= (and b!4982054 c!850154) b!4982051))

(assert (= (and b!4982054 (not c!850154)) b!4982049))

(assert (= (or b!4982051 b!4982049) bm!347542))

(assert (= (or b!4982052 bm!347542) bm!347541))

(assert (= (or b!4982053 b!4982051) bm!347543))

(assert (= (or b!4982053 bm!347541) bm!347540))

(assert (=> bm!347540 m!6012504))

(declare-fun m!6013264 () Bool)

(assert (=> bm!347540 m!6013264))

(assert (=> b!4982054 m!6013054))

(assert (=> bm!347543 m!6012504))

(declare-fun m!6013266 () Bool)

(assert (=> bm!347543 m!6013266))

(declare-fun m!6013268 () Bool)

(assert (=> d!1604404 m!6013268))

(assert (=> d!1604404 m!6012488))

(assert (=> b!4981390 d!1604404))

(assert (=> b!4981390 d!1604280))

(assert (=> b!4981390 d!1604356))

(declare-fun d!1604406 () Bool)

(declare-fun res!2126744 () Bool)

(declare-fun e!3113801 () Bool)

(assert (=> d!1604406 (=> (not res!2126744) (not e!3113801))))

(assert (=> d!1604406 (= res!2126744 (<= (size!38204 (list!18461 (xs!18531 (c!849983 input!1580)))) 512))))

(assert (=> d!1604406 (= (inv!75414 (c!849983 input!1580)) e!3113801)))

(declare-fun b!4982064 () Bool)

(declare-fun res!2126745 () Bool)

(assert (=> b!4982064 (=> (not res!2126745) (not e!3113801))))

(assert (=> b!4982064 (= res!2126745 (= (csize!30641 (c!849983 input!1580)) (size!38204 (list!18461 (xs!18531 (c!849983 input!1580))))))))

(declare-fun b!4982065 () Bool)

(assert (=> b!4982065 (= e!3113801 (and (> (csize!30641 (c!849983 input!1580)) 0) (<= (csize!30641 (c!849983 input!1580)) 512)))))

(assert (= (and d!1604406 res!2126744) b!4982064))

(assert (= (and b!4982064 res!2126745) b!4982065))

(assert (=> d!1604406 m!6012954))

(assert (=> d!1604406 m!6012954))

(declare-fun m!6013270 () Bool)

(assert (=> d!1604406 m!6013270))

(assert (=> b!4982064 m!6012954))

(assert (=> b!4982064 m!6012954))

(assert (=> b!4982064 m!6013270))

(assert (=> b!4981357 d!1604406))

(assert (=> b!4981562 d!1604270))

(declare-fun d!1604408 () Bool)

(assert (=> d!1604408 (= (apply!13940 (transformation!8453 (rule!11705 (_1!34555 (get!20016 lt!2058121)))) (seqFromList!6074 (originalCharacters!8712 (_1!34555 (get!20016 lt!2058121))))) (dynLambda!23349 (toValue!11440 (transformation!8453 (rule!11705 (_1!34555 (get!20016 lt!2058121))))) (seqFromList!6074 (originalCharacters!8712 (_1!34555 (get!20016 lt!2058121))))))))

(declare-fun b_lambda!197871 () Bool)

(assert (=> (not b_lambda!197871) (not d!1604408)))

(declare-fun t!369827 () Bool)

(declare-fun tb!261621 () Bool)

(assert (=> (and b!4981286 (= (toValue!11440 (transformation!8453 rule!200)) (toValue!11440 (transformation!8453 (rule!11705 (_1!34555 (get!20016 lt!2058121)))))) t!369827) tb!261621))

(declare-fun result!326924 () Bool)

(assert (=> tb!261621 (= result!326924 (inv!21 (dynLambda!23349 (toValue!11440 (transformation!8453 (rule!11705 (_1!34555 (get!20016 lt!2058121))))) (seqFromList!6074 (originalCharacters!8712 (_1!34555 (get!20016 lt!2058121)))))))))

(declare-fun m!6013276 () Bool)

(assert (=> tb!261621 m!6013276))

(assert (=> d!1604408 t!369827))

(declare-fun b_and!349639 () Bool)

(assert (= b_and!349637 (and (=> t!369827 result!326924) b_and!349639)))

(assert (=> d!1604408 m!6012730))

(declare-fun m!6013280 () Bool)

(assert (=> d!1604408 m!6013280))

(assert (=> b!4981562 d!1604408))

(declare-fun d!1604412 () Bool)

(assert (=> d!1604412 (= (seqFromList!6074 (originalCharacters!8712 (_1!34555 (get!20016 lt!2058121)))) (fromListB!2744 (originalCharacters!8712 (_1!34555 (get!20016 lt!2058121)))))))

(declare-fun bs!1184322 () Bool)

(assert (= bs!1184322 d!1604412))

(declare-fun m!6013282 () Bool)

(assert (=> bs!1184322 m!6013282))

(assert (=> b!4981562 d!1604412))

(declare-fun d!1604414 () Bool)

(assert (=> d!1604414 (dynLambda!23350 lambda!247827 lt!2057880)))

(assert (=> d!1604414 true))

(declare-fun _$1!11270 () Unit!148639)

(assert (=> d!1604414 (= (choose!36793 lambda!247827 lt!2057880) _$1!11270)))

(declare-fun b_lambda!197873 () Bool)

(assert (=> (not b_lambda!197873) (not d!1604414)))

(declare-fun bs!1184323 () Bool)

(assert (= bs!1184323 d!1604414))

(assert (=> bs!1184323 m!6012738))

(assert (=> d!1604204 d!1604414))

(assert (=> d!1604204 d!1604136))

(declare-fun d!1604418 () Bool)

(declare-fun lostCauseFct!291 (Regex!13686) Bool)

(assert (=> d!1604418 (= (lostCause!1149 (regex!8453 rule!200)) (lostCauseFct!291 (regex!8453 rule!200)))))

(declare-fun bs!1184324 () Bool)

(assert (= bs!1184324 d!1604418))

(declare-fun m!6013292 () Bool)

(assert (=> bs!1184324 m!6013292))

(assert (=> d!1604152 d!1604418))

(declare-fun d!1604422 () Bool)

(assert (=> d!1604422 (isPrefix!5264 Nil!57578 (++!12550 Nil!57578 lt!2057881))))

(declare-fun lt!2058266 () Unit!148639)

(declare-fun choose!36801 (List!57702 List!57702) Unit!148639)

(assert (=> d!1604422 (= lt!2058266 (choose!36801 Nil!57578 lt!2057881))))

(assert (=> d!1604422 (= (lemmaConcatTwoListThenFirstIsPrefix!3363 Nil!57578 lt!2057881) lt!2058266)))

(declare-fun bs!1184325 () Bool)

(assert (= bs!1184325 d!1604422))

(assert (=> bs!1184325 m!6012618))

(assert (=> bs!1184325 m!6012618))

(assert (=> bs!1184325 m!6012620))

(declare-fun m!6013294 () Bool)

(assert (=> bs!1184325 m!6013294))

(assert (=> d!1604152 d!1604422))

(declare-fun d!1604424 () Bool)

(declare-fun lt!2058269 () List!57702)

(assert (=> d!1604424 (= (++!12550 Nil!57578 lt!2058269) lt!2057881)))

(declare-fun e!3113815 () List!57702)

(assert (=> d!1604424 (= lt!2058269 e!3113815)))

(declare-fun c!850167 () Bool)

(assert (=> d!1604424 (= c!850167 (is-Cons!57578 Nil!57578))))

(assert (=> d!1604424 (>= (size!38204 lt!2057881) (size!38204 Nil!57578))))

(assert (=> d!1604424 (= (getSuffix!3104 lt!2057881 Nil!57578) lt!2058269)))

(declare-fun b!4982090 () Bool)

(assert (=> b!4982090 (= e!3113815 (getSuffix!3104 (tail!9820 lt!2057881) (t!369794 Nil!57578)))))

(declare-fun b!4982091 () Bool)

(assert (=> b!4982091 (= e!3113815 lt!2057881)))

(assert (= (and d!1604424 c!850167) b!4982090))

(assert (= (and d!1604424 (not c!850167)) b!4982091))

(declare-fun m!6013308 () Bool)

(assert (=> d!1604424 m!6013308))

(assert (=> d!1604424 m!6012410))

(assert (=> d!1604424 m!6012414))

(assert (=> b!4982090 m!6012592))

(assert (=> b!4982090 m!6012592))

(declare-fun m!6013310 () Bool)

(assert (=> b!4982090 m!6013310))

(assert (=> d!1604152 d!1604424))

(declare-fun b!4982095 () Bool)

(declare-fun e!3113817 () Bool)

(declare-fun lt!2058270 () List!57702)

(assert (=> b!4982095 (= e!3113817 (or (not (= (_2!34558 lt!2058078) Nil!57578)) (= lt!2058270 (_1!34558 lt!2058078))))))

(declare-fun b!4982094 () Bool)

(declare-fun res!2126759 () Bool)

(assert (=> b!4982094 (=> (not res!2126759) (not e!3113817))))

(assert (=> b!4982094 (= res!2126759 (= (size!38204 lt!2058270) (+ (size!38204 (_1!34558 lt!2058078)) (size!38204 (_2!34558 lt!2058078)))))))

(declare-fun b!4982093 () Bool)

(declare-fun e!3113816 () List!57702)

(assert (=> b!4982093 (= e!3113816 (Cons!57578 (h!64026 (_1!34558 lt!2058078)) (++!12550 (t!369794 (_1!34558 lt!2058078)) (_2!34558 lt!2058078))))))

(declare-fun d!1604430 () Bool)

(assert (=> d!1604430 e!3113817))

(declare-fun res!2126758 () Bool)

(assert (=> d!1604430 (=> (not res!2126758) (not e!3113817))))

(assert (=> d!1604430 (= res!2126758 (= (content!10202 lt!2058270) (set.union (content!10202 (_1!34558 lt!2058078)) (content!10202 (_2!34558 lt!2058078)))))))

(assert (=> d!1604430 (= lt!2058270 e!3113816)))

(declare-fun c!850168 () Bool)

(assert (=> d!1604430 (= c!850168 (is-Nil!57578 (_1!34558 lt!2058078)))))

(assert (=> d!1604430 (= (++!12550 (_1!34558 lt!2058078) (_2!34558 lt!2058078)) lt!2058270)))

(declare-fun b!4982092 () Bool)

(assert (=> b!4982092 (= e!3113816 (_2!34558 lt!2058078))))

(assert (= (and d!1604430 c!850168) b!4982092))

(assert (= (and d!1604430 (not c!850168)) b!4982093))

(assert (= (and d!1604430 res!2126758) b!4982094))

(assert (= (and b!4982094 res!2126759) b!4982095))

(declare-fun m!6013312 () Bool)

(assert (=> b!4982094 m!6013312))

(assert (=> b!4982094 m!6012594))

(declare-fun m!6013314 () Bool)

(assert (=> b!4982094 m!6013314))

(declare-fun m!6013316 () Bool)

(assert (=> b!4982093 m!6013316))

(declare-fun m!6013318 () Bool)

(assert (=> d!1604430 m!6013318))

(declare-fun m!6013320 () Bool)

(assert (=> d!1604430 m!6013320))

(declare-fun m!6013322 () Bool)

(assert (=> d!1604430 m!6013322))

(assert (=> d!1604152 d!1604430))

(declare-fun d!1604432 () Bool)

(assert (=> d!1604432 (= lt!2057881 lt!2058086)))

(declare-fun lt!2058273 () Unit!148639)

(declare-fun choose!36803 (List!57702 List!57702 List!57702 List!57702 List!57702) Unit!148639)

(assert (=> d!1604432 (= lt!2058273 (choose!36803 Nil!57578 lt!2057881 Nil!57578 lt!2058086 lt!2057881))))

(assert (=> d!1604432 (isPrefix!5264 Nil!57578 lt!2057881)))

(assert (=> d!1604432 (= (lemmaSamePrefixThenSameSuffix!2517 Nil!57578 lt!2057881 Nil!57578 lt!2058086 lt!2057881) lt!2058273)))

(declare-fun bs!1184327 () Bool)

(assert (= bs!1184327 d!1604432))

(declare-fun m!6013324 () Bool)

(assert (=> bs!1184327 m!6013324))

(declare-fun m!6013326 () Bool)

(assert (=> bs!1184327 m!6013326))

(assert (=> d!1604152 d!1604432))

(assert (=> d!1604152 d!1604256))

(declare-fun b!4982099 () Bool)

(declare-fun e!3113819 () Bool)

(declare-fun lt!2058274 () List!57702)

(assert (=> b!4982099 (= e!3113819 (or (not (= lt!2057881 Nil!57578)) (= lt!2058274 Nil!57578)))))

(declare-fun b!4982098 () Bool)

(declare-fun res!2126761 () Bool)

(assert (=> b!4982098 (=> (not res!2126761) (not e!3113819))))

(assert (=> b!4982098 (= res!2126761 (= (size!38204 lt!2058274) (+ (size!38204 Nil!57578) (size!38204 lt!2057881))))))

(declare-fun b!4982097 () Bool)

(declare-fun e!3113818 () List!57702)

(assert (=> b!4982097 (= e!3113818 (Cons!57578 (h!64026 Nil!57578) (++!12550 (t!369794 Nil!57578) lt!2057881)))))

(declare-fun d!1604434 () Bool)

(assert (=> d!1604434 e!3113819))

(declare-fun res!2126760 () Bool)

(assert (=> d!1604434 (=> (not res!2126760) (not e!3113819))))

(assert (=> d!1604434 (= res!2126760 (= (content!10202 lt!2058274) (set.union (content!10202 Nil!57578) (content!10202 lt!2057881))))))

(assert (=> d!1604434 (= lt!2058274 e!3113818)))

(declare-fun c!850169 () Bool)

(assert (=> d!1604434 (= c!850169 (is-Nil!57578 Nil!57578))))

(assert (=> d!1604434 (= (++!12550 Nil!57578 lt!2057881) lt!2058274)))

(declare-fun b!4982096 () Bool)

(assert (=> b!4982096 (= e!3113818 lt!2057881)))

(assert (= (and d!1604434 c!850169) b!4982096))

(assert (= (and d!1604434 (not c!850169)) b!4982097))

(assert (= (and d!1604434 res!2126760) b!4982098))

(assert (= (and b!4982098 res!2126761) b!4982099))

(declare-fun m!6013328 () Bool)

(assert (=> b!4982098 m!6013328))

(assert (=> b!4982098 m!6012414))

(assert (=> b!4982098 m!6012410))

(declare-fun m!6013330 () Bool)

(assert (=> b!4982097 m!6013330))

(declare-fun m!6013332 () Bool)

(assert (=> d!1604434 m!6013332))

(declare-fun m!6013334 () Bool)

(assert (=> d!1604434 m!6013334))

(declare-fun m!6013336 () Bool)

(assert (=> d!1604434 m!6013336))

(assert (=> d!1604152 d!1604434))

(declare-fun b!4982115 () Bool)

(declare-fun res!2126775 () Bool)

(declare-fun e!3113833 () Bool)

(assert (=> b!4982115 (=> (not res!2126775) (not e!3113833))))

(assert (=> b!4982115 (= res!2126775 (= (head!10687 Nil!57578) (head!10687 (++!12550 Nil!57578 lt!2057881))))))

(declare-fun b!4982114 () Bool)

(declare-fun e!3113834 () Bool)

(assert (=> b!4982114 (= e!3113834 e!3113833)))

(declare-fun res!2126773 () Bool)

(assert (=> b!4982114 (=> (not res!2126773) (not e!3113833))))

(assert (=> b!4982114 (= res!2126773 (not (is-Nil!57578 (++!12550 Nil!57578 lt!2057881))))))

(declare-fun d!1604436 () Bool)

(declare-fun e!3113832 () Bool)

(assert (=> d!1604436 e!3113832))

(declare-fun res!2126774 () Bool)

(assert (=> d!1604436 (=> res!2126774 e!3113832)))

(declare-fun lt!2058277 () Bool)

(assert (=> d!1604436 (= res!2126774 (not lt!2058277))))

(assert (=> d!1604436 (= lt!2058277 e!3113834)))

(declare-fun res!2126776 () Bool)

(assert (=> d!1604436 (=> res!2126776 e!3113834)))

(assert (=> d!1604436 (= res!2126776 (is-Nil!57578 Nil!57578))))

(assert (=> d!1604436 (= (isPrefix!5264 Nil!57578 (++!12550 Nil!57578 lt!2057881)) lt!2058277)))

(declare-fun b!4982116 () Bool)

(assert (=> b!4982116 (= e!3113833 (isPrefix!5264 (tail!9820 Nil!57578) (tail!9820 (++!12550 Nil!57578 lt!2057881))))))

(declare-fun b!4982117 () Bool)

(assert (=> b!4982117 (= e!3113832 (>= (size!38204 (++!12550 Nil!57578 lt!2057881)) (size!38204 Nil!57578)))))

(assert (= (and d!1604436 (not res!2126776)) b!4982114))

(assert (= (and b!4982114 res!2126773) b!4982115))

(assert (= (and b!4982115 res!2126775) b!4982116))

(assert (= (and d!1604436 (not res!2126774)) b!4982117))

(declare-fun m!6013350 () Bool)

(assert (=> b!4982115 m!6013350))

(assert (=> b!4982115 m!6012618))

(declare-fun m!6013352 () Bool)

(assert (=> b!4982115 m!6013352))

(declare-fun m!6013354 () Bool)

(assert (=> b!4982116 m!6013354))

(assert (=> b!4982116 m!6012618))

(declare-fun m!6013356 () Bool)

(assert (=> b!4982116 m!6013356))

(assert (=> b!4982116 m!6013354))

(assert (=> b!4982116 m!6013356))

(declare-fun m!6013358 () Bool)

(assert (=> b!4982116 m!6013358))

(assert (=> b!4982117 m!6012618))

(declare-fun m!6013360 () Bool)

(assert (=> b!4982117 m!6013360))

(assert (=> b!4982117 m!6012414))

(assert (=> d!1604152 d!1604436))

(declare-fun d!1604440 () Bool)

(assert (=> d!1604440 (= (inv!75417 (xs!18531 (c!849983 input!1580))) (<= (size!38204 (innerList!15293 (xs!18531 (c!849983 input!1580)))) 2147483647))))

(declare-fun bs!1184328 () Bool)

(assert (= bs!1184328 d!1604440))

(declare-fun m!6013362 () Bool)

(assert (=> bs!1184328 m!6013362))

(assert (=> b!4981659 d!1604440))

(assert (=> b!4981615 d!1604400))

(assert (=> b!4981615 d!1604150))

(assert (=> d!1604144 d!1604158))

(declare-fun b!4982119 () Bool)

(declare-fun res!2126779 () Bool)

(declare-fun e!3113836 () Bool)

(assert (=> b!4982119 (=> (not res!2126779) (not e!3113836))))

(assert (=> b!4982119 (= res!2126779 (= (head!10687 lt!2057881) (head!10687 lt!2057881)))))

(declare-fun b!4982118 () Bool)

(declare-fun e!3113837 () Bool)

(assert (=> b!4982118 (= e!3113837 e!3113836)))

(declare-fun res!2126777 () Bool)

(assert (=> b!4982118 (=> (not res!2126777) (not e!3113836))))

(assert (=> b!4982118 (= res!2126777 (not (is-Nil!57578 lt!2057881)))))

(declare-fun d!1604442 () Bool)

(declare-fun e!3113835 () Bool)

(assert (=> d!1604442 e!3113835))

(declare-fun res!2126778 () Bool)

(assert (=> d!1604442 (=> res!2126778 e!3113835)))

(declare-fun lt!2058278 () Bool)

(assert (=> d!1604442 (= res!2126778 (not lt!2058278))))

(assert (=> d!1604442 (= lt!2058278 e!3113837)))

(declare-fun res!2126780 () Bool)

(assert (=> d!1604442 (=> res!2126780 e!3113837)))

(assert (=> d!1604442 (= res!2126780 (is-Nil!57578 lt!2057881))))

(assert (=> d!1604442 (= (isPrefix!5264 lt!2057881 lt!2057881) lt!2058278)))

(declare-fun b!4982120 () Bool)

(assert (=> b!4982120 (= e!3113836 (isPrefix!5264 (tail!9820 lt!2057881) (tail!9820 lt!2057881)))))

(declare-fun b!4982121 () Bool)

(assert (=> b!4982121 (= e!3113835 (>= (size!38204 lt!2057881) (size!38204 lt!2057881)))))

(assert (= (and d!1604442 (not res!2126780)) b!4982118))

(assert (= (and b!4982118 res!2126777) b!4982119))

(assert (= (and b!4982119 res!2126779) b!4982120))

(assert (= (and d!1604442 (not res!2126778)) b!4982121))

(assert (=> b!4982119 m!6012616))

(assert (=> b!4982119 m!6012616))

(assert (=> b!4982120 m!6012592))

(assert (=> b!4982120 m!6012592))

(assert (=> b!4982120 m!6012592))

(assert (=> b!4982120 m!6012592))

(declare-fun m!6013364 () Bool)

(assert (=> b!4982120 m!6013364))

(assert (=> b!4982121 m!6012410))

(assert (=> b!4982121 m!6012410))

(assert (=> bm!347497 d!1604442))

(assert (=> d!1604132 d!1604142))

(assert (=> d!1604132 d!1604256))

(assert (=> b!4981531 d!1604384))

(assert (=> b!4981531 d!1604152))

(assert (=> b!4981531 d!1604162))

(assert (=> b!4981531 d!1604150))

(declare-fun b!4982125 () Bool)

(declare-fun e!3113839 () Bool)

(declare-fun lt!2058279 () List!57702)

(assert (=> b!4982125 (= e!3113839 (or (not (= (Cons!57578 (head!10687 lt!2057881) Nil!57578) Nil!57578)) (= lt!2058279 Nil!57578)))))

(declare-fun b!4982124 () Bool)

(declare-fun res!2126782 () Bool)

(assert (=> b!4982124 (=> (not res!2126782) (not e!3113839))))

(assert (=> b!4982124 (= res!2126782 (= (size!38204 lt!2058279) (+ (size!38204 Nil!57578) (size!38204 (Cons!57578 (head!10687 lt!2057881) Nil!57578)))))))

(declare-fun b!4982123 () Bool)

(declare-fun e!3113838 () List!57702)

(assert (=> b!4982123 (= e!3113838 (Cons!57578 (h!64026 Nil!57578) (++!12550 (t!369794 Nil!57578) (Cons!57578 (head!10687 lt!2057881) Nil!57578))))))

(declare-fun d!1604444 () Bool)

(assert (=> d!1604444 e!3113839))

(declare-fun res!2126781 () Bool)

(assert (=> d!1604444 (=> (not res!2126781) (not e!3113839))))

(assert (=> d!1604444 (= res!2126781 (= (content!10202 lt!2058279) (set.union (content!10202 Nil!57578) (content!10202 (Cons!57578 (head!10687 lt!2057881) Nil!57578)))))))

(assert (=> d!1604444 (= lt!2058279 e!3113838)))

(declare-fun c!850170 () Bool)

(assert (=> d!1604444 (= c!850170 (is-Nil!57578 Nil!57578))))

(assert (=> d!1604444 (= (++!12550 Nil!57578 (Cons!57578 (head!10687 lt!2057881) Nil!57578)) lt!2058279)))

(declare-fun b!4982122 () Bool)

(assert (=> b!4982122 (= e!3113838 (Cons!57578 (head!10687 lt!2057881) Nil!57578))))

(assert (= (and d!1604444 c!850170) b!4982122))

(assert (= (and d!1604444 (not c!850170)) b!4982123))

(assert (= (and d!1604444 res!2126781) b!4982124))

(assert (= (and b!4982124 res!2126782) b!4982125))

(declare-fun m!6013366 () Bool)

(assert (=> b!4982124 m!6013366))

(assert (=> b!4982124 m!6012414))

(declare-fun m!6013368 () Bool)

(assert (=> b!4982124 m!6013368))

(declare-fun m!6013370 () Bool)

(assert (=> b!4982123 m!6013370))

(declare-fun m!6013372 () Bool)

(assert (=> d!1604444 m!6013372))

(assert (=> d!1604444 m!6013334))

(declare-fun m!6013374 () Bool)

(assert (=> d!1604444 m!6013374))

(assert (=> b!4981502 d!1604444))

(assert (=> b!4981502 d!1604286))

(declare-fun d!1604446 () Bool)

(assert (=> d!1604446 (<= (size!38204 Nil!57578) (size!38204 lt!2057881))))

(declare-fun lt!2058282 () Unit!148639)

(declare-fun choose!36804 (List!57702 List!57702) Unit!148639)

(assert (=> d!1604446 (= lt!2058282 (choose!36804 Nil!57578 lt!2057881))))

(assert (=> d!1604446 (isPrefix!5264 Nil!57578 lt!2057881)))

(assert (=> d!1604446 (= (lemmaIsPrefixThenSmallerEqSize!777 Nil!57578 lt!2057881) lt!2058282)))

(declare-fun bs!1184329 () Bool)

(assert (= bs!1184329 d!1604446))

(assert (=> bs!1184329 m!6012414))

(assert (=> bs!1184329 m!6012410))

(declare-fun m!6013376 () Bool)

(assert (=> bs!1184329 m!6013376))

(assert (=> bs!1184329 m!6013326))

(assert (=> b!4981502 d!1604446))

(declare-fun lt!2058283 () List!57702)

(declare-fun b!4982129 () Bool)

(declare-fun e!3113841 () Bool)

(assert (=> b!4982129 (= e!3113841 (or (not (= lt!2058088 Nil!57578)) (= lt!2058283 (++!12550 Nil!57578 (Cons!57578 lt!2058066 Nil!57578)))))))

(declare-fun b!4982128 () Bool)

(declare-fun res!2126784 () Bool)

(assert (=> b!4982128 (=> (not res!2126784) (not e!3113841))))

(assert (=> b!4982128 (= res!2126784 (= (size!38204 lt!2058283) (+ (size!38204 (++!12550 Nil!57578 (Cons!57578 lt!2058066 Nil!57578))) (size!38204 lt!2058088))))))

(declare-fun b!4982127 () Bool)

(declare-fun e!3113840 () List!57702)

(assert (=> b!4982127 (= e!3113840 (Cons!57578 (h!64026 (++!12550 Nil!57578 (Cons!57578 lt!2058066 Nil!57578))) (++!12550 (t!369794 (++!12550 Nil!57578 (Cons!57578 lt!2058066 Nil!57578))) lt!2058088)))))

(declare-fun d!1604448 () Bool)

(assert (=> d!1604448 e!3113841))

(declare-fun res!2126783 () Bool)

(assert (=> d!1604448 (=> (not res!2126783) (not e!3113841))))

(assert (=> d!1604448 (= res!2126783 (= (content!10202 lt!2058283) (set.union (content!10202 (++!12550 Nil!57578 (Cons!57578 lt!2058066 Nil!57578))) (content!10202 lt!2058088))))))

(assert (=> d!1604448 (= lt!2058283 e!3113840)))

(declare-fun c!850171 () Bool)

(assert (=> d!1604448 (= c!850171 (is-Nil!57578 (++!12550 Nil!57578 (Cons!57578 lt!2058066 Nil!57578))))))

(assert (=> d!1604448 (= (++!12550 (++!12550 Nil!57578 (Cons!57578 lt!2058066 Nil!57578)) lt!2058088) lt!2058283)))

(declare-fun b!4982126 () Bool)

(assert (=> b!4982126 (= e!3113840 lt!2058088)))

(assert (= (and d!1604448 c!850171) b!4982126))

(assert (= (and d!1604448 (not c!850171)) b!4982127))

(assert (= (and d!1604448 res!2126783) b!4982128))

(assert (= (and b!4982128 res!2126784) b!4982129))

(declare-fun m!6013378 () Bool)

(assert (=> b!4982128 m!6013378))

(assert (=> b!4982128 m!6012600))

(declare-fun m!6013380 () Bool)

(assert (=> b!4982128 m!6013380))

(declare-fun m!6013382 () Bool)

(assert (=> b!4982128 m!6013382))

(declare-fun m!6013384 () Bool)

(assert (=> b!4982127 m!6013384))

(declare-fun m!6013386 () Bool)

(assert (=> d!1604448 m!6013386))

(assert (=> d!1604448 m!6012600))

(declare-fun m!6013388 () Bool)

(assert (=> d!1604448 m!6013388))

(declare-fun m!6013390 () Bool)

(assert (=> d!1604448 m!6013390))

(assert (=> b!4981502 d!1604448))

(assert (=> b!4981502 d!1604162))

(assert (=> b!4981502 d!1604150))

(declare-fun b!4982131 () Bool)

(declare-fun res!2126787 () Bool)

(declare-fun e!3113843 () Bool)

(assert (=> b!4982131 (=> (not res!2126787) (not e!3113843))))

(assert (=> b!4982131 (= res!2126787 (= (head!10687 (++!12550 Nil!57578 (Cons!57578 (head!10687 (getSuffix!3104 lt!2057881 Nil!57578)) Nil!57578))) (head!10687 lt!2057881)))))

(declare-fun b!4982130 () Bool)

(declare-fun e!3113844 () Bool)

(assert (=> b!4982130 (= e!3113844 e!3113843)))

(declare-fun res!2126785 () Bool)

(assert (=> b!4982130 (=> (not res!2126785) (not e!3113843))))

(assert (=> b!4982130 (= res!2126785 (not (is-Nil!57578 lt!2057881)))))

(declare-fun d!1604450 () Bool)

(declare-fun e!3113842 () Bool)

(assert (=> d!1604450 e!3113842))

(declare-fun res!2126786 () Bool)

(assert (=> d!1604450 (=> res!2126786 e!3113842)))

(declare-fun lt!2058284 () Bool)

(assert (=> d!1604450 (= res!2126786 (not lt!2058284))))

(assert (=> d!1604450 (= lt!2058284 e!3113844)))

(declare-fun res!2126788 () Bool)

(assert (=> d!1604450 (=> res!2126788 e!3113844)))

(assert (=> d!1604450 (= res!2126788 (is-Nil!57578 (++!12550 Nil!57578 (Cons!57578 (head!10687 (getSuffix!3104 lt!2057881 Nil!57578)) Nil!57578))))))

(assert (=> d!1604450 (= (isPrefix!5264 (++!12550 Nil!57578 (Cons!57578 (head!10687 (getSuffix!3104 lt!2057881 Nil!57578)) Nil!57578)) lt!2057881) lt!2058284)))

(declare-fun b!4982132 () Bool)

(assert (=> b!4982132 (= e!3113843 (isPrefix!5264 (tail!9820 (++!12550 Nil!57578 (Cons!57578 (head!10687 (getSuffix!3104 lt!2057881 Nil!57578)) Nil!57578))) (tail!9820 lt!2057881)))))

(declare-fun b!4982133 () Bool)

(assert (=> b!4982133 (= e!3113842 (>= (size!38204 lt!2057881) (size!38204 (++!12550 Nil!57578 (Cons!57578 (head!10687 (getSuffix!3104 lt!2057881 Nil!57578)) Nil!57578)))))))

(assert (= (and d!1604450 (not res!2126788)) b!4982130))

(assert (= (and b!4982130 res!2126785) b!4982131))

(assert (= (and b!4982131 res!2126787) b!4982132))

(assert (= (and d!1604450 (not res!2126786)) b!4982133))

(assert (=> b!4982131 m!6012612))

(declare-fun m!6013392 () Bool)

(assert (=> b!4982131 m!6013392))

(assert (=> b!4982131 m!6012616))

(assert (=> b!4982132 m!6012612))

(declare-fun m!6013394 () Bool)

(assert (=> b!4982132 m!6013394))

(assert (=> b!4982132 m!6012592))

(assert (=> b!4982132 m!6013394))

(assert (=> b!4982132 m!6012592))

(declare-fun m!6013396 () Bool)

(assert (=> b!4982132 m!6013396))

(assert (=> b!4982133 m!6012410))

(assert (=> b!4982133 m!6012612))

(declare-fun m!6013398 () Bool)

(assert (=> b!4982133 m!6013398))

(assert (=> b!4981502 d!1604450))

(declare-fun b!4982137 () Bool)

(declare-fun e!3113846 () Bool)

(declare-fun lt!2058285 () List!57702)

(assert (=> b!4982137 (= e!3113846 (or (not (= (Cons!57578 (head!10687 (getSuffix!3104 lt!2057881 Nil!57578)) Nil!57578) Nil!57578)) (= lt!2058285 Nil!57578)))))

(declare-fun b!4982136 () Bool)

(declare-fun res!2126790 () Bool)

(assert (=> b!4982136 (=> (not res!2126790) (not e!3113846))))

(assert (=> b!4982136 (= res!2126790 (= (size!38204 lt!2058285) (+ (size!38204 Nil!57578) (size!38204 (Cons!57578 (head!10687 (getSuffix!3104 lt!2057881 Nil!57578)) Nil!57578)))))))

(declare-fun b!4982135 () Bool)

(declare-fun e!3113845 () List!57702)

(assert (=> b!4982135 (= e!3113845 (Cons!57578 (h!64026 Nil!57578) (++!12550 (t!369794 Nil!57578) (Cons!57578 (head!10687 (getSuffix!3104 lt!2057881 Nil!57578)) Nil!57578))))))

(declare-fun d!1604452 () Bool)

(assert (=> d!1604452 e!3113846))

(declare-fun res!2126789 () Bool)

(assert (=> d!1604452 (=> (not res!2126789) (not e!3113846))))

(assert (=> d!1604452 (= res!2126789 (= (content!10202 lt!2058285) (set.union (content!10202 Nil!57578) (content!10202 (Cons!57578 (head!10687 (getSuffix!3104 lt!2057881 Nil!57578)) Nil!57578)))))))

(assert (=> d!1604452 (= lt!2058285 e!3113845)))

(declare-fun c!850172 () Bool)

(assert (=> d!1604452 (= c!850172 (is-Nil!57578 Nil!57578))))

(assert (=> d!1604452 (= (++!12550 Nil!57578 (Cons!57578 (head!10687 (getSuffix!3104 lt!2057881 Nil!57578)) Nil!57578)) lt!2058285)))

(declare-fun b!4982134 () Bool)

(assert (=> b!4982134 (= e!3113845 (Cons!57578 (head!10687 (getSuffix!3104 lt!2057881 Nil!57578)) Nil!57578))))

(assert (= (and d!1604452 c!850172) b!4982134))

(assert (= (and d!1604452 (not c!850172)) b!4982135))

(assert (= (and d!1604452 res!2126789) b!4982136))

(assert (= (and b!4982136 res!2126790) b!4982137))

(declare-fun m!6013400 () Bool)

(assert (=> b!4982136 m!6013400))

(assert (=> b!4982136 m!6012414))

(declare-fun m!6013402 () Bool)

(assert (=> b!4982136 m!6013402))

(declare-fun m!6013404 () Bool)

(assert (=> b!4982135 m!6013404))

(declare-fun m!6013406 () Bool)

(assert (=> d!1604452 m!6013406))

(assert (=> d!1604452 m!6013334))

(declare-fun m!6013408 () Bool)

(assert (=> d!1604452 m!6013408))

(assert (=> b!4981502 d!1604452))

(declare-fun d!1604454 () Bool)

(assert (=> d!1604454 (= (++!12550 (++!12550 Nil!57578 (Cons!57578 lt!2058066 Nil!57578)) lt!2058088) lt!2057881)))

(declare-fun lt!2058304 () Unit!148639)

(declare-fun choose!36805 (List!57702 C!27622 List!57702 List!57702) Unit!148639)

(assert (=> d!1604454 (= lt!2058304 (choose!36805 Nil!57578 lt!2058066 lt!2058088 lt!2057881))))

(assert (=> d!1604454 (= (++!12550 Nil!57578 (Cons!57578 lt!2058066 lt!2058088)) lt!2057881)))

(assert (=> d!1604454 (= (lemmaMoveElementToOtherListKeepsConcatEq!1461 Nil!57578 lt!2058066 lt!2058088 lt!2057881) lt!2058304)))

(declare-fun bs!1184330 () Bool)

(assert (= bs!1184330 d!1604454))

(assert (=> bs!1184330 m!6012600))

(assert (=> bs!1184330 m!6012600))

(assert (=> bs!1184330 m!6012606))

(declare-fun m!6013410 () Bool)

(assert (=> bs!1184330 m!6013410))

(declare-fun m!6013412 () Bool)

(assert (=> bs!1184330 m!6013412))

(assert (=> b!4981502 d!1604454))

(declare-fun d!1604456 () Bool)

(assert (=> d!1604456 (= (head!10687 (getSuffix!3104 lt!2057881 Nil!57578)) (h!64026 (getSuffix!3104 lt!2057881 Nil!57578)))))

(assert (=> b!4981502 d!1604456))

(declare-fun d!1604458 () Bool)

(assert (=> d!1604458 (isPrefix!5264 (++!12550 Nil!57578 (Cons!57578 (head!10687 (getSuffix!3104 lt!2057881 Nil!57578)) Nil!57578)) lt!2057881)))

(declare-fun lt!2058315 () Unit!148639)

(declare-fun choose!36806 (List!57702 List!57702) Unit!148639)

(assert (=> d!1604458 (= lt!2058315 (choose!36806 Nil!57578 lt!2057881))))

(assert (=> d!1604458 (isPrefix!5264 Nil!57578 lt!2057881)))

(assert (=> d!1604458 (= (lemmaAddHeadSuffixToPrefixStillPrefix!851 Nil!57578 lt!2057881) lt!2058315)))

(declare-fun bs!1184332 () Bool)

(assert (= bs!1184332 d!1604458))

(assert (=> bs!1184332 m!6013326))

(assert (=> bs!1184332 m!6012612))

(assert (=> bs!1184332 m!6012614))

(assert (=> bs!1184332 m!6012608))

(declare-fun m!6013432 () Bool)

(assert (=> bs!1184332 m!6013432))

(assert (=> bs!1184332 m!6012612))

(assert (=> bs!1184332 m!6012608))

(assert (=> bs!1184332 m!6012610))

(assert (=> b!4981502 d!1604458))

(assert (=> b!4981502 d!1604424))

(assert (=> b!4981502 d!1604320))

(declare-fun b!4982157 () Bool)

(declare-fun e!3113860 () Bool)

(declare-fun lt!2058316 () List!57702)

(assert (=> b!4982157 (= e!3113860 (or (not (= (Cons!57578 lt!2058066 Nil!57578) Nil!57578)) (= lt!2058316 Nil!57578)))))

(declare-fun b!4982156 () Bool)

(declare-fun res!2126800 () Bool)

(assert (=> b!4982156 (=> (not res!2126800) (not e!3113860))))

(assert (=> b!4982156 (= res!2126800 (= (size!38204 lt!2058316) (+ (size!38204 Nil!57578) (size!38204 (Cons!57578 lt!2058066 Nil!57578)))))))

(declare-fun b!4982155 () Bool)

(declare-fun e!3113859 () List!57702)

(assert (=> b!4982155 (= e!3113859 (Cons!57578 (h!64026 Nil!57578) (++!12550 (t!369794 Nil!57578) (Cons!57578 lt!2058066 Nil!57578))))))

(declare-fun d!1604462 () Bool)

(assert (=> d!1604462 e!3113860))

(declare-fun res!2126799 () Bool)

(assert (=> d!1604462 (=> (not res!2126799) (not e!3113860))))

(assert (=> d!1604462 (= res!2126799 (= (content!10202 lt!2058316) (set.union (content!10202 Nil!57578) (content!10202 (Cons!57578 lt!2058066 Nil!57578)))))))

(assert (=> d!1604462 (= lt!2058316 e!3113859)))

(declare-fun c!850177 () Bool)

(assert (=> d!1604462 (= c!850177 (is-Nil!57578 Nil!57578))))

(assert (=> d!1604462 (= (++!12550 Nil!57578 (Cons!57578 lt!2058066 Nil!57578)) lt!2058316)))

(declare-fun b!4982154 () Bool)

(assert (=> b!4982154 (= e!3113859 (Cons!57578 lt!2058066 Nil!57578))))

(assert (= (and d!1604462 c!850177) b!4982154))

(assert (= (and d!1604462 (not c!850177)) b!4982155))

(assert (= (and d!1604462 res!2126799) b!4982156))

(assert (= (and b!4982156 res!2126800) b!4982157))

(declare-fun m!6013434 () Bool)

(assert (=> b!4982156 m!6013434))

(assert (=> b!4982156 m!6012414))

(declare-fun m!6013436 () Bool)

(assert (=> b!4982156 m!6013436))

(declare-fun m!6013438 () Bool)

(assert (=> b!4982155 m!6013438))

(declare-fun m!6013440 () Bool)

(assert (=> d!1604462 m!6013440))

(assert (=> d!1604462 m!6013334))

(declare-fun m!6013442 () Bool)

(assert (=> d!1604462 m!6013442))

(assert (=> b!4981502 d!1604462))

(assert (=> d!1604232 d!1604158))

(declare-fun d!1604464 () Bool)

(assert (=> d!1604464 (= (isEmpty!31087 (maxPrefixOneRule!3669 thiss!16165 rule!200 lt!2057881)) (not (is-Some!14524 (maxPrefixOneRule!3669 thiss!16165 rule!200 lt!2057881))))))

(assert (=> d!1604174 d!1604464))

(declare-fun d!1604466 () Bool)

(assert (=> d!1604466 (= (Forall!1803 lambda!247840) (choose!36790 lambda!247840))))

(declare-fun bs!1184333 () Bool)

(assert (= bs!1184333 d!1604466))

(declare-fun m!6013444 () Bool)

(assert (=> bs!1184333 m!6013444))

(assert (=> d!1604158 d!1604466))

(assert (=> bm!347495 d!1604352))

(declare-fun d!1604468 () Bool)

(declare-fun c!850178 () Bool)

(assert (=> d!1604468 (= c!850178 (is-Empty!15205 (c!849983 totalInput!520)))))

(declare-fun e!3113863 () List!57702)

(assert (=> d!1604468 (= (list!18459 (c!849983 totalInput!520)) e!3113863)))

(declare-fun b!4982161 () Bool)

(declare-fun e!3113864 () List!57702)

(assert (=> b!4982161 (= e!3113863 e!3113864)))

(declare-fun c!850179 () Bool)

(assert (=> b!4982161 (= c!850179 (is-Leaf!25257 (c!849983 totalInput!520)))))

(declare-fun b!4982160 () Bool)

(assert (=> b!4982160 (= e!3113863 Nil!57578)))

(declare-fun b!4982163 () Bool)

(assert (=> b!4982163 (= e!3113864 (++!12550 (list!18459 (left!42084 (c!849983 totalInput!520))) (list!18459 (right!42414 (c!849983 totalInput!520)))))))

(declare-fun b!4982162 () Bool)

(assert (=> b!4982162 (= e!3113864 (list!18461 (xs!18531 (c!849983 totalInput!520))))))

(assert (= (and d!1604468 c!850178) b!4982160))

(assert (= (and d!1604468 (not c!850178)) b!4982161))

(assert (= (and b!4982161 c!850179) b!4982162))

(assert (= (and b!4982161 (not c!850179)) b!4982163))

(declare-fun m!6013446 () Bool)

(assert (=> b!4982163 m!6013446))

(declare-fun m!6013448 () Bool)

(assert (=> b!4982163 m!6013448))

(assert (=> b!4982163 m!6013446))

(assert (=> b!4982163 m!6013448))

(declare-fun m!6013450 () Bool)

(assert (=> b!4982163 m!6013450))

(assert (=> b!4982162 m!6013188))

(assert (=> d!1604226 d!1604468))

(declare-fun d!1604470 () Bool)

(assert (not d!1604470))

(assert (=> b!4981519 d!1604470))

(declare-fun b!4982168 () Bool)

(declare-fun e!3113867 () Bool)

(declare-fun tp!1396623 () Bool)

(assert (=> b!4982168 (= e!3113867 (and tp_is_empty!36377 tp!1396623))))

(assert (=> b!4981660 (= tp!1396556 e!3113867)))

(assert (= (and b!4981660 (is-Cons!57578 (innerList!15293 (xs!18531 (c!849983 input!1580))))) b!4982168))

(declare-fun tp!1396625 () Bool)

(declare-fun tp!1396624 () Bool)

(declare-fun b!4982169 () Bool)

(declare-fun e!3113868 () Bool)

(assert (=> b!4982169 (= e!3113868 (and (inv!75408 (left!42084 (left!42084 (c!849983 input!1580)))) tp!1396624 (inv!75408 (right!42414 (left!42084 (c!849983 input!1580)))) tp!1396625))))

(declare-fun b!4982171 () Bool)

(declare-fun e!3113869 () Bool)

(declare-fun tp!1396626 () Bool)

(assert (=> b!4982171 (= e!3113869 tp!1396626)))

(declare-fun b!4982170 () Bool)

(assert (=> b!4982170 (= e!3113868 (and (inv!75417 (xs!18531 (left!42084 (c!849983 input!1580)))) e!3113869))))

(assert (=> b!4981658 (= tp!1396554 (and (inv!75408 (left!42084 (c!849983 input!1580))) e!3113868))))

(assert (= (and b!4981658 (is-Node!15205 (left!42084 (c!849983 input!1580)))) b!4982169))

(assert (= b!4982170 b!4982171))

(assert (= (and b!4981658 (is-Leaf!25257 (left!42084 (c!849983 input!1580)))) b!4982170))

(declare-fun m!6013452 () Bool)

(assert (=> b!4982169 m!6013452))

(declare-fun m!6013454 () Bool)

(assert (=> b!4982169 m!6013454))

(declare-fun m!6013456 () Bool)

(assert (=> b!4982170 m!6013456))

(assert (=> b!4981658 m!6012814))

(declare-fun tp!1396627 () Bool)

(declare-fun tp!1396628 () Bool)

(declare-fun e!3113870 () Bool)

(declare-fun b!4982172 () Bool)

(assert (=> b!4982172 (= e!3113870 (and (inv!75408 (left!42084 (right!42414 (c!849983 input!1580)))) tp!1396627 (inv!75408 (right!42414 (right!42414 (c!849983 input!1580)))) tp!1396628))))

(declare-fun b!4982174 () Bool)

(declare-fun e!3113871 () Bool)

(declare-fun tp!1396629 () Bool)

(assert (=> b!4982174 (= e!3113871 tp!1396629)))

(declare-fun b!4982173 () Bool)

(assert (=> b!4982173 (= e!3113870 (and (inv!75417 (xs!18531 (right!42414 (c!849983 input!1580)))) e!3113871))))

(assert (=> b!4981658 (= tp!1396555 (and (inv!75408 (right!42414 (c!849983 input!1580))) e!3113870))))

(assert (= (and b!4981658 (is-Node!15205 (right!42414 (c!849983 input!1580)))) b!4982172))

(assert (= b!4982173 b!4982174))

(assert (= (and b!4981658 (is-Leaf!25257 (right!42414 (c!849983 input!1580)))) b!4982173))

(declare-fun m!6013458 () Bool)

(assert (=> b!4982172 m!6013458))

(declare-fun m!6013460 () Bool)

(assert (=> b!4982172 m!6013460))

(declare-fun m!6013462 () Bool)

(assert (=> b!4982173 m!6013462))

(assert (=> b!4981658 m!6012816))

(declare-fun b!4982178 () Bool)

(declare-fun e!3113872 () Bool)

(declare-fun tp!1396630 () Bool)

(declare-fun tp!1396631 () Bool)

(assert (=> b!4982178 (= e!3113872 (and tp!1396630 tp!1396631))))

(declare-fun b!4982175 () Bool)

(assert (=> b!4982175 (= e!3113872 tp_is_empty!36377)))

(declare-fun b!4982177 () Bool)

(declare-fun tp!1396632 () Bool)

(assert (=> b!4982177 (= e!3113872 tp!1396632)))

(declare-fun b!4982176 () Bool)

(declare-fun tp!1396633 () Bool)

(declare-fun tp!1396634 () Bool)

(assert (=> b!4982176 (= e!3113872 (and tp!1396633 tp!1396634))))

(assert (=> b!4981674 (= tp!1396567 e!3113872)))

(assert (= (and b!4981674 (is-ElementMatch!13686 (regOne!27885 (regex!8453 rule!200)))) b!4982175))

(assert (= (and b!4981674 (is-Concat!22449 (regOne!27885 (regex!8453 rule!200)))) b!4982176))

(assert (= (and b!4981674 (is-Star!13686 (regOne!27885 (regex!8453 rule!200)))) b!4982177))

(assert (= (and b!4981674 (is-Union!13686 (regOne!27885 (regex!8453 rule!200)))) b!4982178))

(declare-fun b!4982182 () Bool)

(declare-fun e!3113873 () Bool)

(declare-fun tp!1396635 () Bool)

(declare-fun tp!1396636 () Bool)

(assert (=> b!4982182 (= e!3113873 (and tp!1396635 tp!1396636))))

(declare-fun b!4982179 () Bool)

(assert (=> b!4982179 (= e!3113873 tp_is_empty!36377)))

(declare-fun b!4982181 () Bool)

(declare-fun tp!1396637 () Bool)

(assert (=> b!4982181 (= e!3113873 tp!1396637)))

(declare-fun b!4982180 () Bool)

(declare-fun tp!1396638 () Bool)

(declare-fun tp!1396639 () Bool)

(assert (=> b!4982180 (= e!3113873 (and tp!1396638 tp!1396639))))

(assert (=> b!4981674 (= tp!1396568 e!3113873)))

(assert (= (and b!4981674 (is-ElementMatch!13686 (regTwo!27885 (regex!8453 rule!200)))) b!4982179))

(assert (= (and b!4981674 (is-Concat!22449 (regTwo!27885 (regex!8453 rule!200)))) b!4982180))

(assert (= (and b!4981674 (is-Star!13686 (regTwo!27885 (regex!8453 rule!200)))) b!4982181))

(assert (= (and b!4981674 (is-Union!13686 (regTwo!27885 (regex!8453 rule!200)))) b!4982182))

(declare-fun tp!1396641 () Bool)

(declare-fun b!4982183 () Bool)

(declare-fun tp!1396640 () Bool)

(declare-fun e!3113874 () Bool)

(assert (=> b!4982183 (= e!3113874 (and (inv!75408 (left!42084 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877)))))) tp!1396640 (inv!75408 (right!42414 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877)))))) tp!1396641))))

(declare-fun b!4982185 () Bool)

(declare-fun e!3113875 () Bool)

(declare-fun tp!1396642 () Bool)

(assert (=> b!4982185 (= e!3113875 tp!1396642)))

(declare-fun b!4982184 () Bool)

(assert (=> b!4982184 (= e!3113874 (and (inv!75417 (xs!18531 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877)))))) e!3113875))))

(assert (=> b!4981679 (= tp!1396574 (and (inv!75408 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877))))) e!3113874))))

(assert (= (and b!4981679 (is-Node!15205 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877)))))) b!4982183))

(assert (= b!4982184 b!4982185))

(assert (= (and b!4981679 (is-Leaf!25257 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) (_1!34556 lt!2057877)))))) b!4982184))

(declare-fun m!6013464 () Bool)

(assert (=> b!4982183 m!6013464))

(declare-fun m!6013466 () Bool)

(assert (=> b!4982183 m!6013466))

(declare-fun m!6013468 () Bool)

(assert (=> b!4982184 m!6013468))

(assert (=> b!4981679 m!6012832))

(declare-fun b!4982198 () Bool)

(declare-fun e!3113883 () Bool)

(declare-fun tp!1396643 () Bool)

(declare-fun tp!1396644 () Bool)

(assert (=> b!4982198 (= e!3113883 (and tp!1396643 tp!1396644))))

(declare-fun b!4982195 () Bool)

(assert (=> b!4982195 (= e!3113883 tp_is_empty!36377)))

(declare-fun b!4982197 () Bool)

(declare-fun tp!1396645 () Bool)

(assert (=> b!4982197 (= e!3113883 tp!1396645)))

(declare-fun b!4982196 () Bool)

(declare-fun tp!1396646 () Bool)

(declare-fun tp!1396647 () Bool)

(assert (=> b!4982196 (= e!3113883 (and tp!1396646 tp!1396647))))

(assert (=> b!4981672 (= tp!1396570 e!3113883)))

(assert (= (and b!4981672 (is-ElementMatch!13686 (regOne!27884 (regex!8453 rule!200)))) b!4982195))

(assert (= (and b!4981672 (is-Concat!22449 (regOne!27884 (regex!8453 rule!200)))) b!4982196))

(assert (= (and b!4981672 (is-Star!13686 (regOne!27884 (regex!8453 rule!200)))) b!4982197))

(assert (= (and b!4981672 (is-Union!13686 (regOne!27884 (regex!8453 rule!200)))) b!4982198))

(declare-fun b!4982202 () Bool)

(declare-fun e!3113884 () Bool)

(declare-fun tp!1396648 () Bool)

(declare-fun tp!1396649 () Bool)

(assert (=> b!4982202 (= e!3113884 (and tp!1396648 tp!1396649))))

(declare-fun b!4982199 () Bool)

(assert (=> b!4982199 (= e!3113884 tp_is_empty!36377)))

(declare-fun b!4982201 () Bool)

(declare-fun tp!1396650 () Bool)

(assert (=> b!4982201 (= e!3113884 tp!1396650)))

(declare-fun b!4982200 () Bool)

(declare-fun tp!1396651 () Bool)

(declare-fun tp!1396652 () Bool)

(assert (=> b!4982200 (= e!3113884 (and tp!1396651 tp!1396652))))

(assert (=> b!4981672 (= tp!1396571 e!3113884)))

(assert (= (and b!4981672 (is-ElementMatch!13686 (regTwo!27884 (regex!8453 rule!200)))) b!4982199))

(assert (= (and b!4981672 (is-Concat!22449 (regTwo!27884 (regex!8453 rule!200)))) b!4982200))

(assert (= (and b!4981672 (is-Star!13686 (regTwo!27884 (regex!8453 rule!200)))) b!4982201))

(assert (= (and b!4981672 (is-Union!13686 (regTwo!27884 (regex!8453 rule!200)))) b!4982202))

(declare-fun tp!1396654 () Bool)

(declare-fun b!4982203 () Bool)

(declare-fun tp!1396653 () Bool)

(declare-fun e!3113885 () Bool)

(assert (=> b!4982203 (= e!3113885 (and (inv!75408 (left!42084 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880))))) tp!1396653 (inv!75408 (right!42414 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880))))) tp!1396654))))

(declare-fun b!4982205 () Bool)

(declare-fun e!3113886 () Bool)

(declare-fun tp!1396655 () Bool)

(assert (=> b!4982205 (= e!3113886 tp!1396655)))

(declare-fun b!4982204 () Bool)

(assert (=> b!4982204 (= e!3113885 (and (inv!75417 (xs!18531 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880))))) e!3113886))))

(assert (=> b!4981682 (= tp!1396575 (and (inv!75408 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880)))) e!3113885))))

(assert (= (and b!4981682 (is-Node!15205 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880))))) b!4982203))

(assert (= b!4982204 b!4982205))

(assert (= (and b!4981682 (is-Leaf!25257 (c!849983 (dynLambda!23353 (toChars!11299 (transformation!8453 rule!200)) (dynLambda!23349 (toValue!11440 (transformation!8453 rule!200)) lt!2057880))))) b!4982204))

(declare-fun m!6013474 () Bool)

(assert (=> b!4982203 m!6013474))

(declare-fun m!6013478 () Bool)

(assert (=> b!4982203 m!6013478))

(declare-fun m!6013480 () Bool)

(assert (=> b!4982204 m!6013480))

(assert (=> b!4981682 m!6012840))

(declare-fun b!4982206 () Bool)

(declare-fun tp!1396657 () Bool)

(declare-fun e!3113887 () Bool)

(declare-fun tp!1396656 () Bool)

(assert (=> b!4982206 (= e!3113887 (and (inv!75408 (left!42084 (left!42084 (c!849983 totalInput!520)))) tp!1396656 (inv!75408 (right!42414 (left!42084 (c!849983 totalInput!520)))) tp!1396657))))

(declare-fun b!4982208 () Bool)

(declare-fun e!3113888 () Bool)

(declare-fun tp!1396658 () Bool)

(assert (=> b!4982208 (= e!3113888 tp!1396658)))

(declare-fun b!4982207 () Bool)

(assert (=> b!4982207 (= e!3113887 (and (inv!75417 (xs!18531 (left!42084 (c!849983 totalInput!520)))) e!3113888))))

(assert (=> b!4981655 (= tp!1396551 (and (inv!75408 (left!42084 (c!849983 totalInput!520))) e!3113887))))

(assert (= (and b!4981655 (is-Node!15205 (left!42084 (c!849983 totalInput!520)))) b!4982206))

(assert (= b!4982207 b!4982208))

(assert (= (and b!4981655 (is-Leaf!25257 (left!42084 (c!849983 totalInput!520)))) b!4982207))

(declare-fun m!6013484 () Bool)

(assert (=> b!4982206 m!6013484))

(declare-fun m!6013486 () Bool)

(assert (=> b!4982206 m!6013486))

(declare-fun m!6013490 () Bool)

(assert (=> b!4982207 m!6013490))

(assert (=> b!4981655 m!6012808))

(declare-fun e!3113890 () Bool)

(declare-fun tp!1396660 () Bool)

(declare-fun b!4982211 () Bool)

(declare-fun tp!1396659 () Bool)

(assert (=> b!4982211 (= e!3113890 (and (inv!75408 (left!42084 (right!42414 (c!849983 totalInput!520)))) tp!1396659 (inv!75408 (right!42414 (right!42414 (c!849983 totalInput!520)))) tp!1396660))))

(declare-fun b!4982213 () Bool)

(declare-fun e!3113891 () Bool)

(declare-fun tp!1396661 () Bool)

(assert (=> b!4982213 (= e!3113891 tp!1396661)))

(declare-fun b!4982212 () Bool)

(assert (=> b!4982212 (= e!3113890 (and (inv!75417 (xs!18531 (right!42414 (c!849983 totalInput!520)))) e!3113891))))

(assert (=> b!4981655 (= tp!1396552 (and (inv!75408 (right!42414 (c!849983 totalInput!520))) e!3113890))))

(assert (= (and b!4981655 (is-Node!15205 (right!42414 (c!849983 totalInput!520)))) b!4982211))

(assert (= b!4982212 b!4982213))

(assert (= (and b!4981655 (is-Leaf!25257 (right!42414 (c!849983 totalInput!520)))) b!4982212))

(declare-fun m!6013492 () Bool)

(assert (=> b!4982211 m!6013492))

(declare-fun m!6013494 () Bool)

(assert (=> b!4982211 m!6013494))

(declare-fun m!6013496 () Bool)

(assert (=> b!4982212 m!6013496))

(assert (=> b!4981655 m!6012810))

(declare-fun b!4982214 () Bool)

(declare-fun e!3113892 () Bool)

(declare-fun tp!1396662 () Bool)

(assert (=> b!4982214 (= e!3113892 (and tp_is_empty!36377 tp!1396662))))

(assert (=> b!4981657 (= tp!1396553 e!3113892)))

(assert (= (and b!4981657 (is-Cons!57578 (innerList!15293 (xs!18531 (c!849983 totalInput!520))))) b!4982214))

(declare-fun b!4982218 () Bool)

(declare-fun e!3113893 () Bool)

(declare-fun tp!1396663 () Bool)

(declare-fun tp!1396664 () Bool)

(assert (=> b!4982218 (= e!3113893 (and tp!1396663 tp!1396664))))

(declare-fun b!4982215 () Bool)

(assert (=> b!4982215 (= e!3113893 tp_is_empty!36377)))

(declare-fun b!4982217 () Bool)

(declare-fun tp!1396665 () Bool)

(assert (=> b!4982217 (= e!3113893 tp!1396665)))

(declare-fun b!4982216 () Bool)

(declare-fun tp!1396666 () Bool)

(declare-fun tp!1396667 () Bool)

(assert (=> b!4982216 (= e!3113893 (and tp!1396666 tp!1396667))))

(assert (=> b!4981673 (= tp!1396569 e!3113893)))

(assert (= (and b!4981673 (is-ElementMatch!13686 (reg!14015 (regex!8453 rule!200)))) b!4982215))

(assert (= (and b!4981673 (is-Concat!22449 (reg!14015 (regex!8453 rule!200)))) b!4982216))

(assert (= (and b!4981673 (is-Star!13686 (reg!14015 (regex!8453 rule!200)))) b!4982217))

(assert (= (and b!4981673 (is-Union!13686 (reg!14015 (regex!8453 rule!200)))) b!4982218))

(declare-fun b_lambda!197875 () Bool)

(assert (= b_lambda!197863 (or b!4981281 b_lambda!197875)))

(assert (=> d!1604328 d!1604238))

(declare-fun b_lambda!197877 () Bool)

(assert (= b_lambda!197873 (or b!4981281 b_lambda!197877)))

(assert (=> d!1604414 d!1604240))

(declare-fun b_lambda!197879 () Bool)

(assert (= b_lambda!197867 (or (and b!4981286 b_free!133111) b_lambda!197879)))

(declare-fun b_lambda!197881 () Bool)

(assert (= b_lambda!197865 (or (and b!4981286 b_free!133113) b_lambda!197881)))

(declare-fun b_lambda!197883 () Bool)

(assert (= b_lambda!197869 (or (and b!4981286 b_free!133111) b_lambda!197883)))

(push 1)

(assert (not d!1604446))

(assert (not d!1604290))

(assert (not d!1604262))

(assert (not b!4982171))

(assert (not b!4982211))

(assert (not b!4982196))

(assert (not bm!347511))

(assert (not b_lambda!197819))

(assert (not b_lambda!197845))

(assert (not b!4982168))

(assert (not b!4981682))

(assert (not b!4981924))

(assert (not d!1604432))

(assert (not b!4981854))

(assert (not d!1604422))

(assert (not b!4982200))

(assert (not d!1604366))

(assert (not b!4981843))

(assert (not b!4981886))

(assert (not b!4981941))

(assert (not b!4981948))

(assert (not b!4982131))

(assert (not d!1604448))

(assert (not d!1604318))

(assert tp_is_empty!36377)

(assert (not b!4981927))

(assert (not b!4982169))

(assert (not d!1604284))

(assert (not b_lambda!197853))

(assert (not b!4981777))

(assert (not b!4981745))

(assert (not b!4981946))

(assert (not b!4982206))

(assert (not bm!347533))

(assert (not b!4982054))

(assert (not b!4981934))

(assert (not b_lambda!197849))

(assert (not b!4981774))

(assert (not d!1604326))

(assert (not b_lambda!197821))

(assert (not bm!347531))

(assert (not bm!347538))

(assert (not b!4981892))

(assert (not b!4981752))

(assert (not b_lambda!197883))

(assert (not b!4981755))

(assert (not b!4982184))

(assert (not b!4982022))

(assert (not b!4981905))

(assert (not b_next!133901))

(assert (not b!4982205))

(assert (not b!4982213))

(assert (not bm!347523))

(assert (not b!4981844))

(assert (not b!4981758))

(assert (not b!4982041))

(assert (not b!4981852))

(assert (not b!4981762))

(assert (not b!4981959))

(assert (not d!1604300))

(assert (not b_lambda!197879))

(assert (not b!4982120))

(assert (not b!4982181))

(assert (not b!4981888))

(assert (not d!1604440))

(assert b_and!349639)

(assert (not d!1604466))

(assert (not b!4982217))

(assert (not b!4982018))

(assert (not b!4981917))

(assert (not d!1604358))

(assert (not b!4981849))

(assert (not b!4982115))

(assert (not b_lambda!197851))

(assert (not b_lambda!197875))

(assert (not d!1604342))

(assert (not b!4981970))

(assert (not d!1604330))

(assert (not b!4981814))

(assert (not d!1604388))

(assert (not d!1604306))

(assert (not d!1604444))

(assert (not b!4981679))

(assert (not b!4981918))

(assert (not d!1604312))

(assert (not b!4981822))

(assert (not b!4981773))

(assert (not b!4981819))

(assert (not d!1604348))

(assert (not bm!347543))

(assert (not b!4982173))

(assert (not b!4981944))

(assert (not b!4982204))

(assert (not b!4982117))

(assert (not d!1604316))

(assert (not b!4982097))

(assert (not b!4981958))

(assert (not d!1604346))

(assert (not d!1604264))

(assert (not b!4981759))

(assert (not b!4981890))

(assert (not b_next!133903))

(assert (not d!1604302))

(assert (not b!4982121))

(assert (not b!4982029))

(assert (not b!4982203))

(assert (not b!4982116))

(assert (not bm!347513))

(assert (not d!1604304))

(assert (not b!4982031))

(assert (not b!4982197))

(assert (not b!4982156))

(assert (not bm!347539))

(assert (not d!1604434))

(assert (not bm!347532))

(assert (not b!4981808))

(assert (not b!4982040))

(assert (not b!4982135))

(assert (not d!1604384))

(assert (not b_lambda!197877))

(assert (not b!4981881))

(assert (not d!1604406))

(assert (not b!4981902))

(assert (not b_lambda!197881))

(assert (not b_lambda!197871))

(assert (not tb!261619))

(assert (not b!4981760))

(assert (not b!4981797))

(assert (not b!4982136))

(assert (not d!1604374))

(assert (not b!4981842))

(assert (not b!4982208))

(assert b_and!349633)

(assert (not b!4981976))

(assert (not tb!261621))

(assert (not b!4982174))

(assert (not b!4981899))

(assert (not b!4981928))

(assert (not b!4981923))

(assert (not b!4982064))

(assert (not bm!347535))

(assert (not b!4981931))

(assert (not b!4981932))

(assert (not bm!347526))

(assert (not bm!347514))

(assert (not b!4982093))

(assert (not b!4982034))

(assert (not b!4981840))

(assert (not b!4982176))

(assert (not b!4982180))

(assert (not b!4982216))

(assert (not bm!347529))

(assert (not b!4982183))

(assert (not b!4982212))

(assert (not b!4982170))

(assert (not d!1604458))

(assert (not b!4982177))

(assert (not b!4981658))

(assert (not b!4982202))

(assert (not b!4982182))

(assert (not d!1604430))

(assert (not bm!347534))

(assert (not d!1604418))

(assert (not b!4982098))

(assert (not d!1604424))

(assert (not d!1604282))

(assert (not bm!347528))

(assert (not b!4981839))

(assert (not b!4981893))

(assert (not b!4981809))

(assert (not b!4982172))

(assert (not d!1604296))

(assert (not b!4982207))

(assert (not d!1604276))

(assert (not d!1604370))

(assert (not b!4982178))

(assert (not b_lambda!197847))

(assert (not b!4981825))

(assert (not b!4982163))

(assert (not b!4981957))

(assert (not d!1604412))

(assert (not b!4981891))

(assert (not b!4982218))

(assert (not b!4981922))

(assert (not b!4981926))

(assert (not b!4981820))

(assert (not d!1604268))

(assert (not d!1604340))

(assert (not b!4982042))

(assert (not b!4981655))

(assert (not b!4982119))

(assert (not b!4981951))

(assert (not b!4981749))

(assert (not d!1604454))

(assert (not b!4981912))

(assert (not bm!347527))

(assert (not d!1604352))

(assert (not b!4982123))

(assert (not b!4981909))

(assert (not d!1604404))

(assert (not b!4982094))

(assert (not d!1604402))

(assert (not b!4981851))

(assert (not b!4982155))

(assert (not b!4982198))

(assert (not b!4981826))

(assert (not b!4982162))

(assert (not b!4981954))

(assert (not b!4981889))

(assert (not b!4981788))

(assert (not b!4981943))

(assert (not b!4982037))

(assert (not b!4982133))

(assert (not bm!347540))

(assert (not d!1604394))

(assert (not tb!261617))

(assert (not b!4982127))

(assert (not d!1604266))

(assert (not d!1604350))

(assert (not b!4982201))

(assert (not b!4982185))

(assert (not b!4981939))

(assert (not b!4982132))

(assert (not b!4982128))

(assert (not b_lambda!197817))

(assert (not b!4982214))

(assert (not d!1604274))

(assert (not bm!347530))

(assert (not tb!261615))

(assert (not b!4981789))

(assert (not d!1604452))

(assert (not b!4982124))

(assert (not d!1604462))

(assert (not b!4982090))

(assert (not b!4981841))

(assert (not b!4981812))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349633)

(assert b_and!349639)

(assert (not b_next!133903))

(assert (not b_next!133901))

(check-sat)

(pop 1)

