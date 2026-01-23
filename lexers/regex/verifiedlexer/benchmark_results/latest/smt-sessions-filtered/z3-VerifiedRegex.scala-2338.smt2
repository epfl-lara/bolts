; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115458 () Bool)

(assert start!115458)

(declare-fun b!1307420 () Bool)

(declare-fun b_free!31387 () Bool)

(declare-fun b_next!32091 () Bool)

(assert (=> b!1307420 (= b_free!31387 (not b_next!32091))))

(declare-fun tp!381374 () Bool)

(declare-fun b_and!87287 () Bool)

(assert (=> b!1307420 (= tp!381374 b_and!87287)))

(declare-fun b_free!31389 () Bool)

(declare-fun b_next!32093 () Bool)

(assert (=> b!1307420 (= b_free!31389 (not b_next!32093))))

(declare-fun tp!381364 () Bool)

(declare-fun b_and!87289 () Bool)

(assert (=> b!1307420 (= tp!381364 b_and!87289)))

(declare-fun b!1307395 () Bool)

(declare-fun b_free!31391 () Bool)

(declare-fun b_next!32095 () Bool)

(assert (=> b!1307395 (= b_free!31391 (not b_next!32095))))

(declare-fun tp!381367 () Bool)

(declare-fun b_and!87291 () Bool)

(assert (=> b!1307395 (= tp!381367 b_and!87291)))

(declare-fun b_free!31393 () Bool)

(declare-fun b_next!32097 () Bool)

(assert (=> b!1307395 (= b_free!31393 (not b_next!32097))))

(declare-fun tp!381369 () Bool)

(declare-fun b_and!87293 () Bool)

(assert (=> b!1307395 (= tp!381369 b_and!87293)))

(declare-fun b!1307404 () Bool)

(declare-fun b_free!31395 () Bool)

(declare-fun b_next!32099 () Bool)

(assert (=> b!1307404 (= b_free!31395 (not b_next!32099))))

(declare-fun tp!381366 () Bool)

(declare-fun b_and!87295 () Bool)

(assert (=> b!1307404 (= tp!381366 b_and!87295)))

(declare-fun b_free!31397 () Bool)

(declare-fun b_next!32101 () Bool)

(assert (=> b!1307404 (= b_free!31397 (not b_next!32101))))

(declare-fun tp!381371 () Bool)

(declare-fun b_and!87297 () Bool)

(assert (=> b!1307404 (= tp!381371 b_and!87297)))

(declare-fun b!1307416 () Bool)

(assert (=> b!1307416 true))

(assert (=> b!1307416 true))

(declare-fun b!1307399 () Bool)

(assert (=> b!1307399 true))

(declare-fun b!1307397 () Bool)

(assert (=> b!1307397 true))

(declare-fun tp!381368 () Bool)

(declare-fun e!838432 () Bool)

(declare-fun b!1307390 () Bool)

(declare-fun e!838410 () Bool)

(declare-datatypes ((List!13276 0))(
  ( (Nil!13210) (Cons!13210 (h!18611 (_ BitVec 16)) (t!117899 List!13276)) )
))
(declare-datatypes ((TokenValue!2375 0))(
  ( (FloatLiteralValue!4750 (text!17070 List!13276)) (TokenValueExt!2374 (__x!8579 Int)) (Broken!11875 (value!74729 List!13276)) (Object!2440) (End!2375) (Def!2375) (Underscore!2375) (Match!2375) (Else!2375) (Error!2375) (Case!2375) (If!2375) (Extends!2375) (Abstract!2375) (Class!2375) (Val!2375) (DelimiterValue!4750 (del!2435 List!13276)) (KeywordValue!2381 (value!74730 List!13276)) (CommentValue!4750 (value!74731 List!13276)) (WhitespaceValue!4750 (value!74732 List!13276)) (IndentationValue!2375 (value!74733 List!13276)) (String!16110) (Int32!2375) (Broken!11876 (value!74734 List!13276)) (Boolean!2376) (Unit!19291) (OperatorValue!2378 (op!2435 List!13276)) (IdentifierValue!4750 (value!74735 List!13276)) (IdentifierValue!4751 (value!74736 List!13276)) (WhitespaceValue!4751 (value!74737 List!13276)) (True!4750) (False!4750) (Broken!11877 (value!74738 List!13276)) (Broken!11878 (value!74739 List!13276)) (True!4751) (RightBrace!2375) (RightBracket!2375) (Colon!2375) (Null!2375) (Comma!2375) (LeftBracket!2375) (False!4751) (LeftBrace!2375) (ImaginaryLiteralValue!2375 (text!17071 List!13276)) (StringLiteralValue!7125 (value!74740 List!13276)) (EOFValue!2375 (value!74741 List!13276)) (IdentValue!2375 (value!74742 List!13276)) (DelimiterValue!4751 (value!74743 List!13276)) (DedentValue!2375 (value!74744 List!13276)) (NewLineValue!2375 (value!74745 List!13276)) (IntegerValue!7125 (value!74746 (_ BitVec 32)) (text!17072 List!13276)) (IntegerValue!7126 (value!74747 Int) (text!17073 List!13276)) (Times!2375) (Or!2375) (Equal!2375) (Minus!2375) (Broken!11879 (value!74748 List!13276)) (And!2375) (Div!2375) (LessEqual!2375) (Mod!2375) (Concat!5974) (Not!2375) (Plus!2375) (SpaceValue!2375 (value!74749 List!13276)) (IntegerValue!7127 (value!74750 Int) (text!17074 List!13276)) (StringLiteralValue!7126 (text!17075 List!13276)) (FloatLiteralValue!4751 (text!17076 List!13276)) (BytesLiteralValue!2375 (value!74751 List!13276)) (CommentValue!4751 (value!74752 List!13276)) (StringLiteralValue!7127 (value!74753 List!13276)) (ErrorTokenValue!2375 (msg!2436 List!13276)) )
))
(declare-datatypes ((C!7488 0))(
  ( (C!7489 (val!4304 Int)) )
))
(declare-datatypes ((List!13277 0))(
  ( (Nil!13211) (Cons!13211 (h!18612 C!7488) (t!117900 List!13277)) )
))
(declare-datatypes ((IArray!8685 0))(
  ( (IArray!8686 (innerList!4400 List!13277)) )
))
(declare-datatypes ((Conc!4340 0))(
  ( (Node!4340 (left!11360 Conc!4340) (right!11690 Conc!4340) (csize!8910 Int) (cheight!4551 Int)) (Leaf!6679 (xs!7055 IArray!8685) (csize!8911 Int)) (Empty!4340) )
))
(declare-datatypes ((BalanceConc!8620 0))(
  ( (BalanceConc!8621 (c!214764 Conc!4340)) )
))
(declare-datatypes ((Regex!3599 0))(
  ( (ElementMatch!3599 (c!214765 C!7488)) (Concat!5975 (regOne!7710 Regex!3599) (regTwo!7710 Regex!3599)) (EmptyExpr!3599) (Star!3599 (reg!3928 Regex!3599)) (EmptyLang!3599) (Union!3599 (regOne!7711 Regex!3599) (regTwo!7711 Regex!3599)) )
))
(declare-datatypes ((String!16111 0))(
  ( (String!16112 (value!74754 String)) )
))
(declare-datatypes ((TokenValueInjection!4410 0))(
  ( (TokenValueInjection!4411 (toValue!3504 Int) (toChars!3363 Int)) )
))
(declare-datatypes ((Rule!4370 0))(
  ( (Rule!4371 (regex!2285 Regex!3599) (tag!2547 String!16111) (isSeparator!2285 Bool) (transformation!2285 TokenValueInjection!4410)) )
))
(declare-datatypes ((Token!4232 0))(
  ( (Token!4233 (value!74755 TokenValue!2375) (rule!4024 Rule!4370) (size!10750 Int) (originalCharacters!3147 List!13277)) )
))
(declare-fun t2!34 () Token!4232)

(declare-fun inv!21 (TokenValue!2375) Bool)

(assert (=> b!1307390 (= e!838432 (and (inv!21 (value!74755 t2!34)) e!838410 tp!381368))))

(declare-fun b!1307391 () Bool)

(declare-fun e!838411 () Bool)

(declare-fun e!838431 () Bool)

(assert (=> b!1307391 (= e!838411 e!838431)))

(declare-fun res!586372 () Bool)

(assert (=> b!1307391 (=> res!586372 e!838431)))

(declare-fun lt!430320 () Regex!3599)

(declare-fun lambda!52445 () Int)

(declare-datatypes ((List!13278 0))(
  ( (Nil!13212) (Cons!13212 (h!18613 Rule!4370) (t!117901 List!13278)) )
))
(declare-fun rules!2550 () List!13278)

(declare-datatypes ((List!13279 0))(
  ( (Nil!13213) (Cons!13213 (h!18614 Regex!3599) (t!117902 List!13279)) )
))
(declare-fun contains!2265 (List!13279 Regex!3599) Bool)

(declare-fun map!2894 (List!13278 Int) List!13279)

(assert (=> b!1307391 (= res!586372 (not (contains!2265 (map!2894 rules!2550 lambda!52445) lt!430320)))))

(declare-fun lambda!52446 () Int)

(declare-fun getWitness!164 (List!13279 Int) Regex!3599)

(assert (=> b!1307391 (= lt!430320 (getWitness!164 (map!2894 rules!2550 lambda!52445) lambda!52446))))

(declare-fun b!1307392 () Bool)

(declare-fun e!838425 () Bool)

(assert (=> b!1307392 (= e!838425 true)))

(declare-datatypes ((LexerInterface!1980 0))(
  ( (LexerInterfaceExt!1977 (__x!8580 Int)) (Lexer!1978) )
))
(declare-fun thiss!19762 () LexerInterface!1980)

(declare-datatypes ((List!13280 0))(
  ( (Nil!13214) (Cons!13214 (h!18615 Token!4232) (t!117903 List!13280)) )
))
(declare-fun lt!430312 () List!13280)

(declare-datatypes ((IArray!8687 0))(
  ( (IArray!8688 (innerList!4401 List!13280)) )
))
(declare-datatypes ((Conc!4341 0))(
  ( (Node!4341 (left!11361 Conc!4341) (right!11691 Conc!4341) (csize!8912 Int) (cheight!4552 Int)) (Leaf!6680 (xs!7056 IArray!8687) (csize!8913 Int)) (Empty!4341) )
))
(declare-datatypes ((BalanceConc!8622 0))(
  ( (BalanceConc!8623 (c!214766 Conc!4341)) )
))
(declare-fun list!4954 (BalanceConc!8622) List!13280)

(declare-datatypes ((tuple2!12806 0))(
  ( (tuple2!12807 (_1!7289 BalanceConc!8622) (_2!7289 BalanceConc!8620)) )
))
(declare-fun lex!815 (LexerInterface!1980 List!13278 BalanceConc!8620) tuple2!12806)

(declare-fun print!754 (LexerInterface!1980 BalanceConc!8622) BalanceConc!8620)

(declare-fun singletonSeq!856 (Token!4232) BalanceConc!8622)

(assert (=> b!1307392 (= lt!430312 (list!4954 (_1!7289 (lex!815 thiss!19762 rules!2550 (print!754 thiss!19762 (singletonSeq!856 t2!34))))))))

(declare-fun b!1307393 () Bool)

(declare-fun res!586379 () Bool)

(declare-fun e!838420 () Bool)

(assert (=> b!1307393 (=> res!586379 e!838420)))

(declare-fun lt!430315 () List!13277)

(declare-fun lt!430309 () C!7488)

(declare-fun contains!2266 (List!13277 C!7488) Bool)

(assert (=> b!1307393 (= res!586379 (not (contains!2266 lt!430315 lt!430309)))))

(declare-fun e!838419 () Bool)

(declare-fun e!838418 () Bool)

(declare-fun tp!381372 () Bool)

(declare-fun b!1307394 () Bool)

(declare-fun inv!17605 (String!16111) Bool)

(declare-fun inv!17608 (TokenValueInjection!4410) Bool)

(assert (=> b!1307394 (= e!838419 (and tp!381372 (inv!17605 (tag!2547 (h!18613 rules!2550))) (inv!17608 (transformation!2285 (h!18613 rules!2550))) e!838418))))

(declare-fun e!838416 () Bool)

(assert (=> b!1307395 (= e!838416 (and tp!381367 tp!381369))))

(declare-fun e!838413 () Bool)

(assert (=> b!1307397 (= e!838431 e!838413)))

(declare-fun res!586373 () Bool)

(assert (=> b!1307397 (=> res!586373 e!838413)))

(declare-fun lambda!52447 () Int)

(declare-fun exists!272 (List!13278 Int) Bool)

(assert (=> b!1307397 (= res!586373 (not (exists!272 rules!2550 lambda!52447)))))

(assert (=> b!1307397 (exists!272 rules!2550 lambda!52447)))

(declare-datatypes ((Unit!19292 0))(
  ( (Unit!19293) )
))
(declare-fun lt!430306 () Unit!19292)

(declare-fun lemmaMapContains!28 (List!13278 Int Regex!3599) Unit!19292)

(assert (=> b!1307397 (= lt!430306 (lemmaMapContains!28 rules!2550 lambda!52445 lt!430320))))

(declare-fun tp!381363 () Bool)

(declare-fun b!1307398 () Bool)

(declare-fun e!838414 () Bool)

(assert (=> b!1307398 (= e!838410 (and tp!381363 (inv!17605 (tag!2547 (rule!4024 t2!34))) (inv!17608 (transformation!2285 (rule!4024 t2!34))) e!838414))))

(assert (=> b!1307399 (= e!838420 e!838411)))

(declare-fun res!586370 () Bool)

(assert (=> b!1307399 (=> res!586370 e!838411)))

(declare-fun exists!273 (List!13279 Int) Bool)

(assert (=> b!1307399 (= res!586370 (not (exists!273 (map!2894 rules!2550 lambda!52445) lambda!52446)))))

(declare-fun lt!430319 () List!13279)

(assert (=> b!1307399 (exists!273 lt!430319 lambda!52446)))

(declare-fun lt!430307 () Regex!3599)

(declare-fun lt!430317 () Unit!19292)

(declare-fun matchRGenUnionSpec!36 (Regex!3599 List!13279 List!13277) Unit!19292)

(assert (=> b!1307399 (= lt!430317 (matchRGenUnionSpec!36 lt!430307 lt!430319 lt!430315))))

(assert (=> b!1307399 (= lt!430319 (map!2894 rules!2550 lambda!52445))))

(declare-fun e!838415 () Bool)

(declare-fun b!1307400 () Bool)

(declare-fun t1!34 () Token!4232)

(declare-fun tp!381370 () Bool)

(assert (=> b!1307400 (= e!838415 (and tp!381370 (inv!17605 (tag!2547 (rule!4024 t1!34))) (inv!17608 (transformation!2285 (rule!4024 t1!34))) e!838416))))

(declare-fun b!1307401 () Bool)

(declare-fun res!586365 () Bool)

(assert (=> b!1307401 (=> res!586365 e!838420)))

(declare-fun matchR!1601 (Regex!3599 List!13277) Bool)

(assert (=> b!1307401 (= res!586365 (not (matchR!1601 lt!430307 lt!430315)))))

(declare-fun b!1307402 () Bool)

(declare-fun res!586378 () Bool)

(assert (=> b!1307402 (=> res!586378 e!838425)))

(declare-fun lt!430308 () List!13280)

(declare-fun lt!430318 () BalanceConc!8620)

(declare-datatypes ((tuple2!12808 0))(
  ( (tuple2!12809 (_1!7290 List!13280) (_2!7290 List!13277)) )
))
(declare-fun lexList!518 (LexerInterface!1980 List!13278 List!13277) tuple2!12808)

(declare-fun list!4955 (BalanceConc!8620) List!13277)

(assert (=> b!1307402 (= res!586378 (not (= (lexList!518 thiss!19762 rules!2550 (list!4955 lt!430318)) (tuple2!12809 lt!430308 Nil!13211))))))

(declare-fun b!1307403 () Bool)

(declare-fun res!586361 () Bool)

(assert (=> b!1307403 (=> res!586361 e!838425)))

(declare-fun contains!2267 (List!13278 Rule!4370) Bool)

(assert (=> b!1307403 (= res!586361 (not (contains!2267 rules!2550 (rule!4024 t1!34))))))

(assert (=> b!1307404 (= e!838414 (and tp!381366 tp!381371))))

(declare-fun b!1307405 () Bool)

(declare-fun res!586382 () Bool)

(assert (=> b!1307405 (=> res!586382 e!838420)))

(declare-fun lt!430316 () List!13277)

(assert (=> b!1307405 (= res!586382 (not (contains!2266 lt!430316 lt!430309)))))

(declare-fun b!1307406 () Bool)

(declare-fun res!586374 () Bool)

(declare-fun e!838424 () Bool)

(assert (=> b!1307406 (=> (not res!586374) (not e!838424))))

(declare-fun rulesProduceIndividualToken!949 (LexerInterface!1980 List!13278 Token!4232) Bool)

(assert (=> b!1307406 (= res!586374 (rulesProduceIndividualToken!949 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1307407 () Bool)

(assert (=> b!1307407 (= e!838413 e!838425)))

(declare-fun res!586377 () Bool)

(assert (=> b!1307407 (=> res!586377 e!838425)))

(declare-fun lt!430314 () tuple2!12806)

(assert (=> b!1307407 (= res!586377 (not (= (list!4954 (_1!7289 lt!430314)) lt!430308)))))

(assert (=> b!1307407 (= lt!430308 (Cons!13214 t1!34 Nil!13214))))

(assert (=> b!1307407 (= lt!430314 (lex!815 thiss!19762 rules!2550 lt!430318))))

(assert (=> b!1307407 (= lt!430318 (print!754 thiss!19762 (singletonSeq!856 t1!34)))))

(declare-fun lt!430310 () Rule!4370)

(declare-fun getWitness!165 (List!13278 Int) Rule!4370)

(assert (=> b!1307407 (= lt!430310 (getWitness!165 rules!2550 lambda!52447))))

(declare-fun b!1307408 () Bool)

(declare-fun tp!381365 () Bool)

(declare-fun e!838412 () Bool)

(assert (=> b!1307408 (= e!838412 (and (inv!21 (value!74755 t1!34)) e!838415 tp!381365))))

(declare-fun b!1307409 () Bool)

(declare-fun res!586359 () Bool)

(assert (=> b!1307409 (=> res!586359 e!838420)))

(declare-fun lt!430322 () C!7488)

(assert (=> b!1307409 (= res!586359 (not (contains!2266 lt!430315 lt!430322)))))

(declare-fun b!1307410 () Bool)

(declare-fun e!838423 () Bool)

(declare-fun e!838417 () Bool)

(assert (=> b!1307410 (= e!838423 e!838417)))

(declare-fun res!586375 () Bool)

(assert (=> b!1307410 (=> res!586375 e!838417)))

(declare-fun ++!3362 (List!13277 List!13277) List!13277)

(declare-fun getSuffix!455 (List!13277 List!13277) List!13277)

(assert (=> b!1307410 (= res!586375 (not (= lt!430315 (++!3362 lt!430316 (getSuffix!455 lt!430315 lt!430316)))))))

(declare-fun lambda!52444 () Int)

(declare-fun pickWitness!62 (Int) List!13277)

(assert (=> b!1307410 (= lt!430315 (pickWitness!62 lambda!52444))))

(declare-fun b!1307411 () Bool)

(declare-fun e!838428 () Bool)

(declare-fun e!838409 () Bool)

(assert (=> b!1307411 (= e!838428 e!838409)))

(declare-fun res!586360 () Bool)

(assert (=> b!1307411 (=> (not res!586360) (not e!838409))))

(declare-fun prefixMatch!112 (Regex!3599 List!13277) Bool)

(assert (=> b!1307411 (= res!586360 (prefixMatch!112 lt!430307 lt!430316))))

(declare-fun rulesRegex!170 (LexerInterface!1980 List!13278) Regex!3599)

(assert (=> b!1307411 (= lt!430307 (rulesRegex!170 thiss!19762 rules!2550))))

(declare-fun lt!430311 () List!13277)

(assert (=> b!1307411 (= lt!430316 (++!3362 lt!430311 (Cons!13211 lt!430309 Nil!13211)))))

(declare-fun lt!430305 () BalanceConc!8620)

(declare-fun apply!2965 (BalanceConc!8620 Int) C!7488)

(assert (=> b!1307411 (= lt!430309 (apply!2965 lt!430305 0))))

(declare-fun lt!430321 () BalanceConc!8620)

(assert (=> b!1307411 (= lt!430311 (list!4955 lt!430321))))

(declare-fun charsOf!1257 (Token!4232) BalanceConc!8620)

(assert (=> b!1307411 (= lt!430321 (charsOf!1257 t1!34))))

(declare-fun b!1307412 () Bool)

(declare-fun e!838427 () Bool)

(declare-fun tp!381373 () Bool)

(assert (=> b!1307412 (= e!838427 (and e!838419 tp!381373))))

(declare-fun b!1307413 () Bool)

(declare-fun res!586376 () Bool)

(assert (=> b!1307413 (=> (not res!586376) (not e!838428))))

(declare-fun separableTokensPredicate!263 (LexerInterface!1980 Token!4232 Token!4232 List!13278) Bool)

(assert (=> b!1307413 (= res!586376 (not (separableTokensPredicate!263 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1307414 () Bool)

(declare-fun res!586358 () Bool)

(assert (=> b!1307414 (=> res!586358 e!838425)))

(declare-fun isEmpty!7814 (BalanceConc!8620) Bool)

(assert (=> b!1307414 (= res!586358 (not (isEmpty!7814 (_2!7289 lt!430314))))))

(declare-fun b!1307415 () Bool)

(declare-fun res!586369 () Bool)

(assert (=> b!1307415 (=> (not res!586369) (not e!838424))))

(assert (=> b!1307415 (= res!586369 (not (= (isSeparator!2285 (rule!4024 t1!34)) (isSeparator!2285 (rule!4024 t2!34)))))))

(assert (=> b!1307416 (= e!838409 (not e!838423))))

(declare-fun res!586371 () Bool)

(assert (=> b!1307416 (=> res!586371 e!838423)))

(declare-fun Exists!757 (Int) Bool)

(assert (=> b!1307416 (= res!586371 (not (Exists!757 lambda!52444)))))

(assert (=> b!1307416 (Exists!757 lambda!52444)))

(declare-fun lt!430313 () Unit!19292)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!75 (Regex!3599 List!13277) Unit!19292)

(assert (=> b!1307416 (= lt!430313 (lemmaPrefixMatchThenExistsStringThatMatches!75 lt!430307 lt!430316))))

(declare-fun b!1307417 () Bool)

(assert (=> b!1307417 (= e!838424 e!838428)))

(declare-fun res!586364 () Bool)

(assert (=> b!1307417 (=> (not res!586364) (not e!838428))))

(declare-fun size!10751 (BalanceConc!8620) Int)

(assert (=> b!1307417 (= res!586364 (> (size!10751 lt!430305) 0))))

(assert (=> b!1307417 (= lt!430305 (charsOf!1257 t2!34))))

(declare-fun b!1307418 () Bool)

(declare-fun res!586366 () Bool)

(assert (=> b!1307418 (=> res!586366 e!838425)))

(declare-datatypes ((tuple2!12810 0))(
  ( (tuple2!12811 (_1!7291 Token!4232) (_2!7291 List!13277)) )
))
(declare-datatypes ((Option!2550 0))(
  ( (None!2549) (Some!2549 (v!21055 tuple2!12810)) )
))
(declare-fun maxPrefix!990 (LexerInterface!1980 List!13278 List!13277) Option!2550)

(assert (=> b!1307418 (= res!586366 (not (= (maxPrefix!990 thiss!19762 rules!2550 lt!430311) (Some!2549 (tuple2!12811 t1!34 Nil!13211)))))))

(declare-fun b!1307419 () Bool)

(declare-fun res!586363 () Bool)

(assert (=> b!1307419 (=> (not res!586363) (not e!838424))))

(declare-fun rulesInvariant!1850 (LexerInterface!1980 List!13278) Bool)

(assert (=> b!1307419 (= res!586363 (rulesInvariant!1850 thiss!19762 rules!2550))))

(assert (=> b!1307420 (= e!838418 (and tp!381374 tp!381364))))

(declare-fun b!1307421 () Bool)

(declare-fun res!586368 () Bool)

(assert (=> b!1307421 (=> (not res!586368) (not e!838424))))

(declare-fun isEmpty!7815 (List!13278) Bool)

(assert (=> b!1307421 (= res!586368 (not (isEmpty!7815 rules!2550)))))

(declare-fun res!586380 () Bool)

(assert (=> start!115458 (=> (not res!586380) (not e!838424))))

(get-info :version)

(assert (=> start!115458 (= res!586380 ((_ is Lexer!1978) thiss!19762))))

(assert (=> start!115458 e!838424))

(assert (=> start!115458 true))

(assert (=> start!115458 e!838427))

(declare-fun inv!17609 (Token!4232) Bool)

(assert (=> start!115458 (and (inv!17609 t1!34) e!838412)))

(assert (=> start!115458 (and (inv!17609 t2!34) e!838432)))

(declare-fun b!1307396 () Bool)

(assert (=> b!1307396 (= e!838417 e!838420)))

(declare-fun res!586381 () Bool)

(assert (=> b!1307396 (=> res!586381 e!838420)))

(assert (=> b!1307396 (= res!586381 (not (contains!2266 lt!430316 lt!430322)))))

(assert (=> b!1307396 (= lt!430322 (apply!2965 lt!430321 0))))

(declare-fun b!1307422 () Bool)

(declare-fun res!586367 () Bool)

(assert (=> b!1307422 (=> (not res!586367) (not e!838424))))

(assert (=> b!1307422 (= res!586367 (rulesProduceIndividualToken!949 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1307423 () Bool)

(declare-fun res!586362 () Bool)

(assert (=> b!1307423 (=> (not res!586362) (not e!838428))))

(declare-fun sepAndNonSepRulesDisjointChars!658 (List!13278 List!13278) Bool)

(assert (=> b!1307423 (= res!586362 (sepAndNonSepRulesDisjointChars!658 rules!2550 rules!2550))))

(assert (= (and start!115458 res!586380) b!1307421))

(assert (= (and b!1307421 res!586368) b!1307419))

(assert (= (and b!1307419 res!586363) b!1307422))

(assert (= (and b!1307422 res!586367) b!1307406))

(assert (= (and b!1307406 res!586374) b!1307415))

(assert (= (and b!1307415 res!586369) b!1307417))

(assert (= (and b!1307417 res!586364) b!1307423))

(assert (= (and b!1307423 res!586362) b!1307413))

(assert (= (and b!1307413 res!586376) b!1307411))

(assert (= (and b!1307411 res!586360) b!1307416))

(assert (= (and b!1307416 (not res!586371)) b!1307410))

(assert (= (and b!1307410 (not res!586375)) b!1307396))

(assert (= (and b!1307396 (not res!586381)) b!1307409))

(assert (= (and b!1307409 (not res!586359)) b!1307405))

(assert (= (and b!1307405 (not res!586382)) b!1307393))

(assert (= (and b!1307393 (not res!586379)) b!1307401))

(assert (= (and b!1307401 (not res!586365)) b!1307399))

(assert (= (and b!1307399 (not res!586370)) b!1307391))

(assert (= (and b!1307391 (not res!586372)) b!1307397))

(assert (= (and b!1307397 (not res!586373)) b!1307407))

(assert (= (and b!1307407 (not res!586377)) b!1307414))

(assert (= (and b!1307414 (not res!586358)) b!1307402))

(assert (= (and b!1307402 (not res!586378)) b!1307418))

(assert (= (and b!1307418 (not res!586366)) b!1307403))

(assert (= (and b!1307403 (not res!586361)) b!1307392))

(assert (= b!1307394 b!1307420))

(assert (= b!1307412 b!1307394))

(assert (= (and start!115458 ((_ is Cons!13212) rules!2550)) b!1307412))

(assert (= b!1307400 b!1307395))

(assert (= b!1307408 b!1307400))

(assert (= start!115458 b!1307408))

(assert (= b!1307398 b!1307404))

(assert (= b!1307390 b!1307398))

(assert (= start!115458 b!1307390))

(declare-fun m!1458961 () Bool)

(assert (=> b!1307406 m!1458961))

(declare-fun m!1458963 () Bool)

(assert (=> b!1307416 m!1458963))

(assert (=> b!1307416 m!1458963))

(declare-fun m!1458965 () Bool)

(assert (=> b!1307416 m!1458965))

(declare-fun m!1458967 () Bool)

(assert (=> b!1307398 m!1458967))

(declare-fun m!1458969 () Bool)

(assert (=> b!1307398 m!1458969))

(declare-fun m!1458971 () Bool)

(assert (=> b!1307405 m!1458971))

(declare-fun m!1458973 () Bool)

(assert (=> b!1307393 m!1458973))

(declare-fun m!1458975 () Bool)

(assert (=> b!1307394 m!1458975))

(declare-fun m!1458977 () Bool)

(assert (=> b!1307394 m!1458977))

(declare-fun m!1458979 () Bool)

(assert (=> b!1307402 m!1458979))

(assert (=> b!1307402 m!1458979))

(declare-fun m!1458981 () Bool)

(assert (=> b!1307402 m!1458981))

(declare-fun m!1458983 () Bool)

(assert (=> b!1307410 m!1458983))

(assert (=> b!1307410 m!1458983))

(declare-fun m!1458985 () Bool)

(assert (=> b!1307410 m!1458985))

(declare-fun m!1458987 () Bool)

(assert (=> b!1307410 m!1458987))

(declare-fun m!1458989 () Bool)

(assert (=> b!1307421 m!1458989))

(declare-fun m!1458991 () Bool)

(assert (=> start!115458 m!1458991))

(declare-fun m!1458993 () Bool)

(assert (=> start!115458 m!1458993))

(declare-fun m!1458995 () Bool)

(assert (=> b!1307391 m!1458995))

(assert (=> b!1307391 m!1458995))

(declare-fun m!1458997 () Bool)

(assert (=> b!1307391 m!1458997))

(assert (=> b!1307391 m!1458995))

(assert (=> b!1307391 m!1458995))

(declare-fun m!1458999 () Bool)

(assert (=> b!1307391 m!1458999))

(declare-fun m!1459001 () Bool)

(assert (=> b!1307408 m!1459001))

(declare-fun m!1459003 () Bool)

(assert (=> b!1307400 m!1459003))

(declare-fun m!1459005 () Bool)

(assert (=> b!1307400 m!1459005))

(declare-fun m!1459007 () Bool)

(assert (=> b!1307423 m!1459007))

(declare-fun m!1459009 () Bool)

(assert (=> b!1307397 m!1459009))

(assert (=> b!1307397 m!1459009))

(declare-fun m!1459011 () Bool)

(assert (=> b!1307397 m!1459011))

(declare-fun m!1459013 () Bool)

(assert (=> b!1307411 m!1459013))

(declare-fun m!1459015 () Bool)

(assert (=> b!1307411 m!1459015))

(declare-fun m!1459017 () Bool)

(assert (=> b!1307411 m!1459017))

(declare-fun m!1459019 () Bool)

(assert (=> b!1307411 m!1459019))

(declare-fun m!1459021 () Bool)

(assert (=> b!1307411 m!1459021))

(declare-fun m!1459023 () Bool)

(assert (=> b!1307411 m!1459023))

(declare-fun m!1459025 () Bool)

(assert (=> b!1307422 m!1459025))

(declare-fun m!1459027 () Bool)

(assert (=> b!1307401 m!1459027))

(declare-fun m!1459029 () Bool)

(assert (=> b!1307413 m!1459029))

(declare-fun m!1459031 () Bool)

(assert (=> b!1307392 m!1459031))

(assert (=> b!1307392 m!1459031))

(declare-fun m!1459033 () Bool)

(assert (=> b!1307392 m!1459033))

(assert (=> b!1307392 m!1459033))

(declare-fun m!1459035 () Bool)

(assert (=> b!1307392 m!1459035))

(declare-fun m!1459037 () Bool)

(assert (=> b!1307392 m!1459037))

(declare-fun m!1459039 () Bool)

(assert (=> b!1307419 m!1459039))

(declare-fun m!1459041 () Bool)

(assert (=> b!1307409 m!1459041))

(declare-fun m!1459043 () Bool)

(assert (=> b!1307390 m!1459043))

(declare-fun m!1459045 () Bool)

(assert (=> b!1307414 m!1459045))

(declare-fun m!1459047 () Bool)

(assert (=> b!1307403 m!1459047))

(declare-fun m!1459049 () Bool)

(assert (=> b!1307418 m!1459049))

(declare-fun m!1459051 () Bool)

(assert (=> b!1307407 m!1459051))

(declare-fun m!1459053 () Bool)

(assert (=> b!1307407 m!1459053))

(assert (=> b!1307407 m!1459051))

(declare-fun m!1459055 () Bool)

(assert (=> b!1307407 m!1459055))

(declare-fun m!1459057 () Bool)

(assert (=> b!1307407 m!1459057))

(declare-fun m!1459059 () Bool)

(assert (=> b!1307407 m!1459059))

(assert (=> b!1307399 m!1458995))

(assert (=> b!1307399 m!1458995))

(declare-fun m!1459061 () Bool)

(assert (=> b!1307399 m!1459061))

(declare-fun m!1459063 () Bool)

(assert (=> b!1307399 m!1459063))

(assert (=> b!1307399 m!1458995))

(declare-fun m!1459065 () Bool)

(assert (=> b!1307399 m!1459065))

(declare-fun m!1459067 () Bool)

(assert (=> b!1307396 m!1459067))

(declare-fun m!1459069 () Bool)

(assert (=> b!1307396 m!1459069))

(declare-fun m!1459071 () Bool)

(assert (=> b!1307417 m!1459071))

(declare-fun m!1459073 () Bool)

(assert (=> b!1307417 m!1459073))

(check-sat b_and!87291 (not start!115458) (not b!1307410) (not b!1307397) (not b!1307417) (not b!1307408) (not b_next!32099) (not b!1307419) (not b!1307401) (not b!1307418) (not b!1307414) (not b_next!32091) (not b!1307413) b_and!87293 b_and!87289 b_and!87287 (not b!1307394) (not b!1307393) (not b!1307407) (not b!1307411) (not b!1307392) (not b!1307391) b_and!87295 (not b!1307409) (not b!1307396) (not b!1307423) (not b!1307400) (not b!1307390) (not b!1307421) (not b!1307405) (not b_next!32093) (not b!1307398) (not b_next!32101) (not b!1307399) (not b!1307422) (not b_next!32097) (not b!1307403) (not b!1307416) (not b!1307412) b_and!87297 (not b_next!32095) (not b!1307402) (not b!1307406))
(check-sat (not b_next!32091) b_and!87287 b_and!87291 b_and!87295 (not b_next!32099) (not b_next!32097) b_and!87293 b_and!87289 (not b_next!32093) (not b_next!32101) b_and!87297 (not b_next!32095))
