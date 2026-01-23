; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289112 () Bool)

(assert start!289112)

(declare-fun b!2995236 () Bool)

(declare-fun e!1882279 () Bool)

(declare-fun lt!1041311 () Bool)

(assert (=> b!2995236 (= e!1882279 (not lt!1041311))))

(declare-datatypes ((C!18908 0))(
  ( (C!18909 (val!11490 Int)) )
))
(declare-datatypes ((Regex!9361 0))(
  ( (ElementMatch!9361 (c!492525 C!18908)) (Concat!14682 (regOne!19234 Regex!9361) (regTwo!19234 Regex!9361)) (EmptyExpr!9361) (Star!9361 (reg!9690 Regex!9361)) (EmptyLang!9361) (Union!9361 (regOne!19235 Regex!9361) (regTwo!19235 Regex!9361)) )
))
(declare-fun lt!1041313 () Regex!9361)

(declare-datatypes ((List!35226 0))(
  ( (Nil!35102) (Cons!35102 (h!40522 C!18908) (t!234291 List!35226)) )
))
(declare-fun s!11993 () List!35226)

(declare-fun matchR!4243 (Regex!9361 List!35226) Bool)

(assert (=> b!2995236 (= lt!1041311 (matchR!4243 lt!1041313 s!11993))))

(declare-fun r!17423 () Regex!9361)

(assert (=> b!2995236 (= lt!1041311 (matchR!4243 (regTwo!19234 r!17423) s!11993))))

(declare-datatypes ((Unit!49137 0))(
  ( (Unit!49138) )
))
(declare-fun lt!1041310 () Unit!49137)

(declare-fun lemmaSimplifySound!210 (Regex!9361 List!35226) Unit!49137)

(assert (=> b!2995236 (= lt!1041310 (lemmaSimplifySound!210 (regTwo!19234 r!17423) s!11993))))

(declare-fun b!2995237 () Bool)

(declare-fun e!1882281 () Bool)

(declare-fun tp!951848 () Bool)

(declare-fun tp!951844 () Bool)

(assert (=> b!2995237 (= e!1882281 (and tp!951848 tp!951844))))

(declare-fun b!2995238 () Bool)

(declare-fun e!1882280 () Bool)

(declare-fun e!1882277 () Bool)

(assert (=> b!2995238 (= e!1882280 (not e!1882277))))

(declare-fun res!1235259 () Bool)

(assert (=> b!2995238 (=> res!1235259 e!1882277)))

(declare-fun lt!1041312 () Bool)

(get-info :version)

(assert (=> b!2995238 (= res!1235259 (or lt!1041312 (not ((_ is Concat!14682) r!17423))))))

(declare-fun matchRSpec!1498 (Regex!9361 List!35226) Bool)

(assert (=> b!2995238 (= lt!1041312 (matchRSpec!1498 r!17423 s!11993))))

(assert (=> b!2995238 (= lt!1041312 (matchR!4243 r!17423 s!11993))))

(declare-fun lt!1041314 () Unit!49137)

(declare-fun mainMatchTheorem!1498 (Regex!9361 List!35226) Unit!49137)

(assert (=> b!2995238 (= lt!1041314 (mainMatchTheorem!1498 r!17423 s!11993))))

(declare-fun b!2995239 () Bool)

(declare-fun tp!951845 () Bool)

(assert (=> b!2995239 (= e!1882281 tp!951845)))

(declare-fun res!1235260 () Bool)

(assert (=> start!289112 (=> (not res!1235260) (not e!1882280))))

(declare-fun validRegex!4094 (Regex!9361) Bool)

(assert (=> start!289112 (= res!1235260 (validRegex!4094 r!17423))))

(assert (=> start!289112 e!1882280))

(assert (=> start!289112 e!1882281))

(declare-fun e!1882278 () Bool)

(assert (=> start!289112 e!1882278))

(declare-fun b!2995240 () Bool)

(declare-fun res!1235262 () Bool)

(assert (=> b!2995240 (=> res!1235262 e!1882277)))

(declare-fun isEmpty!19376 (List!35226) Bool)

(assert (=> b!2995240 (= res!1235262 (isEmpty!19376 s!11993))))

(declare-fun b!2995241 () Bool)

(declare-fun res!1235261 () Bool)

(assert (=> b!2995241 (=> res!1235261 e!1882279)))

(declare-fun isEmptyLang!451 (Regex!9361) Bool)

(assert (=> b!2995241 (= res!1235261 (not (isEmptyLang!451 lt!1041313)))))

(declare-fun b!2995242 () Bool)

(declare-fun tp_is_empty!16285 () Bool)

(declare-fun tp!951846 () Bool)

(assert (=> b!2995242 (= e!1882278 (and tp_is_empty!16285 tp!951846))))

(declare-fun b!2995243 () Bool)

(assert (=> b!2995243 (= e!1882277 e!1882279)))

(declare-fun res!1235258 () Bool)

(assert (=> b!2995243 (=> res!1235258 e!1882279)))

(declare-fun lt!1041309 () Regex!9361)

(assert (=> b!2995243 (= res!1235258 (isEmptyLang!451 lt!1041309))))

(declare-fun simplify!352 (Regex!9361) Regex!9361)

(assert (=> b!2995243 (= lt!1041313 (simplify!352 (regTwo!19234 r!17423)))))

(assert (=> b!2995243 (= lt!1041309 (simplify!352 (regOne!19234 r!17423)))))

(declare-fun b!2995244 () Bool)

(declare-fun tp!951849 () Bool)

(declare-fun tp!951847 () Bool)

(assert (=> b!2995244 (= e!1882281 (and tp!951849 tp!951847))))

(declare-fun b!2995245 () Bool)

(assert (=> b!2995245 (= e!1882281 tp_is_empty!16285)))

(assert (= (and start!289112 res!1235260) b!2995238))

(assert (= (and b!2995238 (not res!1235259)) b!2995240))

(assert (= (and b!2995240 (not res!1235262)) b!2995243))

(assert (= (and b!2995243 (not res!1235258)) b!2995241))

(assert (= (and b!2995241 (not res!1235261)) b!2995236))

(assert (= (and start!289112 ((_ is ElementMatch!9361) r!17423)) b!2995245))

(assert (= (and start!289112 ((_ is Concat!14682) r!17423)) b!2995237))

(assert (= (and start!289112 ((_ is Star!9361) r!17423)) b!2995239))

(assert (= (and start!289112 ((_ is Union!9361) r!17423)) b!2995244))

(assert (= (and start!289112 ((_ is Cons!35102) s!11993)) b!2995242))

(declare-fun m!3349685 () Bool)

(assert (=> b!2995241 m!3349685))

(declare-fun m!3349687 () Bool)

(assert (=> start!289112 m!3349687))

(declare-fun m!3349689 () Bool)

(assert (=> b!2995240 m!3349689))

(declare-fun m!3349691 () Bool)

(assert (=> b!2995243 m!3349691))

(declare-fun m!3349693 () Bool)

(assert (=> b!2995243 m!3349693))

(declare-fun m!3349695 () Bool)

(assert (=> b!2995243 m!3349695))

(declare-fun m!3349697 () Bool)

(assert (=> b!2995238 m!3349697))

(declare-fun m!3349699 () Bool)

(assert (=> b!2995238 m!3349699))

(declare-fun m!3349701 () Bool)

(assert (=> b!2995238 m!3349701))

(declare-fun m!3349703 () Bool)

(assert (=> b!2995236 m!3349703))

(declare-fun m!3349705 () Bool)

(assert (=> b!2995236 m!3349705))

(declare-fun m!3349707 () Bool)

(assert (=> b!2995236 m!3349707))

(check-sat (not b!2995243) (not b!2995238) (not b!2995240) (not b!2995237) (not b!2995244) (not start!289112) (not b!2995242) (not b!2995239) (not b!2995236) (not b!2995241) tp_is_empty!16285)
(check-sat)
(get-model)

(declare-fun d!845368 () Bool)

(assert (=> d!845368 (= (isEmptyLang!451 lt!1041309) ((_ is EmptyLang!9361) lt!1041309))))

(assert (=> b!2995243 d!845368))

(declare-fun b!2995365 () Bool)

(declare-fun e!1882362 () Regex!9361)

(assert (=> b!2995365 (= e!1882362 (regTwo!19234 r!17423))))

(declare-fun b!2995366 () Bool)

(declare-fun e!1882361 () Regex!9361)

(declare-fun e!1882354 () Regex!9361)

(assert (=> b!2995366 (= e!1882361 e!1882354)))

(declare-fun c!492563 () Bool)

(assert (=> b!2995366 (= c!492563 ((_ is Star!9361) (regTwo!19234 r!17423)))))

(declare-fun b!2995367 () Bool)

(declare-fun e!1882365 () Regex!9361)

(assert (=> b!2995367 (= e!1882365 EmptyLang!9361)))

(declare-fun b!2995368 () Bool)

(declare-fun e!1882352 () Regex!9361)

(declare-fun lt!1041335 () Regex!9361)

(assert (=> b!2995368 (= e!1882352 lt!1041335)))

(declare-fun b!2995369 () Bool)

(assert (=> b!2995369 (= e!1882361 EmptyExpr!9361)))

(declare-fun b!2995370 () Bool)

(declare-fun e!1882364 () Regex!9361)

(declare-fun lt!1041332 () Regex!9361)

(assert (=> b!2995370 (= e!1882364 (Star!9361 lt!1041332))))

(declare-fun call!200677 () Bool)

(declare-fun c!492565 () Bool)

(declare-fun lt!1041333 () Regex!9361)

(declare-fun bm!200672 () Bool)

(declare-fun lt!1041334 () Regex!9361)

(assert (=> bm!200672 (= call!200677 (isEmptyLang!451 (ite c!492565 lt!1041333 lt!1041334)))))

(declare-fun b!2995371 () Bool)

(assert (=> b!2995371 (= e!1882365 e!1882362)))

(declare-fun c!492572 () Bool)

(assert (=> b!2995371 (= c!492572 ((_ is ElementMatch!9361) (regTwo!19234 r!17423)))))

(declare-fun b!2995372 () Bool)

(declare-fun e!1882355 () Bool)

(declare-fun call!200679 () Bool)

(assert (=> b!2995372 (= e!1882355 call!200679)))

(declare-fun bm!200673 () Bool)

(declare-fun call!200682 () Regex!9361)

(assert (=> bm!200673 (= call!200682 (simplify!352 (ite c!492565 (regTwo!19235 (regTwo!19234 r!17423)) (regTwo!19234 (regTwo!19234 r!17423)))))))

(declare-fun b!2995373 () Bool)

(declare-fun e!1882357 () Regex!9361)

(declare-fun lt!1041331 () Regex!9361)

(assert (=> b!2995373 (= e!1882357 (Union!9361 lt!1041333 lt!1041331))))

(declare-fun b!2995374 () Bool)

(declare-fun e!1882353 () Regex!9361)

(assert (=> b!2995374 (= e!1882353 lt!1041331)))

(declare-fun b!2995375 () Bool)

(declare-fun c!492568 () Bool)

(assert (=> b!2995375 (= c!492568 e!1882355)))

(declare-fun res!1235310 () Bool)

(assert (=> b!2995375 (=> res!1235310 e!1882355)))

(declare-fun call!200681 () Bool)

(assert (=> b!2995375 (= res!1235310 call!200681)))

(declare-fun call!200678 () Regex!9361)

(assert (=> b!2995375 (= lt!1041332 call!200678)))

(assert (=> b!2995375 (= e!1882354 e!1882364)))

(declare-fun b!2995376 () Bool)

(declare-fun e!1882359 () Bool)

(assert (=> b!2995376 (= e!1882359 call!200677)))

(declare-fun bm!200674 () Bool)

(declare-fun isEmptyExpr!467 (Regex!9361) Bool)

(assert (=> bm!200674 (= call!200679 (isEmptyExpr!467 (ite c!492563 lt!1041332 lt!1041335)))))

(declare-fun b!2995377 () Bool)

(declare-fun e!1882360 () Regex!9361)

(assert (=> b!2995377 (= e!1882360 e!1882352)))

(declare-fun c!492571 () Bool)

(assert (=> b!2995377 (= c!492571 (isEmptyExpr!467 lt!1041334))))

(declare-fun bm!200675 () Bool)

(declare-fun call!200683 () Regex!9361)

(assert (=> bm!200675 (= call!200683 call!200678)))

(declare-fun b!2995378 () Bool)

(declare-fun e!1882356 () Regex!9361)

(assert (=> b!2995378 (= e!1882356 e!1882353)))

(assert (=> b!2995378 (= lt!1041333 call!200683)))

(assert (=> b!2995378 (= lt!1041331 call!200682)))

(declare-fun c!492569 () Bool)

(assert (=> b!2995378 (= c!492569 call!200677)))

(declare-fun b!2995379 () Bool)

(assert (=> b!2995379 (= e!1882364 EmptyExpr!9361)))

(declare-fun d!845370 () Bool)

(declare-fun e!1882358 () Bool)

(assert (=> d!845370 e!1882358))

(declare-fun res!1235309 () Bool)

(assert (=> d!845370 (=> (not res!1235309) (not e!1882358))))

(declare-fun lt!1041330 () Regex!9361)

(assert (=> d!845370 (= res!1235309 (validRegex!4094 lt!1041330))))

(assert (=> d!845370 (= lt!1041330 e!1882365)))

(declare-fun c!492570 () Bool)

(assert (=> d!845370 (= c!492570 ((_ is EmptyLang!9361) (regTwo!19234 r!17423)))))

(assert (=> d!845370 (validRegex!4094 (regTwo!19234 r!17423))))

(assert (=> d!845370 (= (simplify!352 (regTwo!19234 r!17423)) lt!1041330)))

(declare-fun b!2995380 () Bool)

(assert (=> b!2995380 (= e!1882357 lt!1041333)))

(declare-fun bm!200676 () Bool)

(declare-fun call!200680 () Bool)

(assert (=> bm!200676 (= call!200680 call!200681)))

(declare-fun bm!200677 () Bool)

(assert (=> bm!200677 (= call!200678 (simplify!352 (ite c!492563 (reg!9690 (regTwo!19234 r!17423)) (ite c!492565 (regOne!19235 (regTwo!19234 r!17423)) (regOne!19234 (regTwo!19234 r!17423))))))))

(declare-fun b!2995381 () Bool)

(declare-fun c!492573 () Bool)

(assert (=> b!2995381 (= c!492573 call!200680)))

(assert (=> b!2995381 (= e!1882353 e!1882357)))

(declare-fun b!2995382 () Bool)

(declare-fun nullable!3024 (Regex!9361) Bool)

(assert (=> b!2995382 (= e!1882358 (= (nullable!3024 lt!1041330) (nullable!3024 (regTwo!19234 r!17423))))))

(declare-fun bm!200678 () Bool)

(assert (=> bm!200678 (= call!200681 (isEmptyLang!451 (ite c!492563 lt!1041332 (ite c!492565 lt!1041331 lt!1041335))))))

(declare-fun b!2995383 () Bool)

(declare-fun e!1882363 () Regex!9361)

(assert (=> b!2995383 (= e!1882363 EmptyLang!9361)))

(declare-fun b!2995384 () Bool)

(declare-fun c!492566 () Bool)

(assert (=> b!2995384 (= c!492566 call!200679)))

(assert (=> b!2995384 (= e!1882363 e!1882360)))

(declare-fun b!2995385 () Bool)

(assert (=> b!2995385 (= e!1882356 e!1882363)))

(assert (=> b!2995385 (= lt!1041335 call!200683)))

(assert (=> b!2995385 (= lt!1041334 call!200682)))

(declare-fun res!1235308 () Bool)

(assert (=> b!2995385 (= res!1235308 call!200680)))

(assert (=> b!2995385 (=> res!1235308 e!1882359)))

(declare-fun c!492567 () Bool)

(assert (=> b!2995385 (= c!492567 e!1882359)))

(declare-fun b!2995386 () Bool)

(assert (=> b!2995386 (= c!492565 ((_ is Union!9361) (regTwo!19234 r!17423)))))

(assert (=> b!2995386 (= e!1882354 e!1882356)))

(declare-fun b!2995387 () Bool)

(assert (=> b!2995387 (= e!1882352 (Concat!14682 lt!1041335 lt!1041334))))

(declare-fun b!2995388 () Bool)

(declare-fun c!492564 () Bool)

(assert (=> b!2995388 (= c!492564 ((_ is EmptyExpr!9361) (regTwo!19234 r!17423)))))

(assert (=> b!2995388 (= e!1882362 e!1882361)))

(declare-fun b!2995389 () Bool)

(assert (=> b!2995389 (= e!1882360 lt!1041334)))

(assert (= (and d!845370 c!492570) b!2995367))

(assert (= (and d!845370 (not c!492570)) b!2995371))

(assert (= (and b!2995371 c!492572) b!2995365))

(assert (= (and b!2995371 (not c!492572)) b!2995388))

(assert (= (and b!2995388 c!492564) b!2995369))

(assert (= (and b!2995388 (not c!492564)) b!2995366))

(assert (= (and b!2995366 c!492563) b!2995375))

(assert (= (and b!2995366 (not c!492563)) b!2995386))

(assert (= (and b!2995375 (not res!1235310)) b!2995372))

(assert (= (and b!2995375 c!492568) b!2995379))

(assert (= (and b!2995375 (not c!492568)) b!2995370))

(assert (= (and b!2995386 c!492565) b!2995378))

(assert (= (and b!2995386 (not c!492565)) b!2995385))

(assert (= (and b!2995378 c!492569) b!2995374))

(assert (= (and b!2995378 (not c!492569)) b!2995381))

(assert (= (and b!2995381 c!492573) b!2995380))

(assert (= (and b!2995381 (not c!492573)) b!2995373))

(assert (= (and b!2995385 (not res!1235308)) b!2995376))

(assert (= (and b!2995385 c!492567) b!2995383))

(assert (= (and b!2995385 (not c!492567)) b!2995384))

(assert (= (and b!2995384 c!492566) b!2995389))

(assert (= (and b!2995384 (not c!492566)) b!2995377))

(assert (= (and b!2995377 c!492571) b!2995368))

(assert (= (and b!2995377 (not c!492571)) b!2995387))

(assert (= (or b!2995378 b!2995385) bm!200673))

(assert (= (or b!2995378 b!2995385) bm!200675))

(assert (= (or b!2995378 b!2995376) bm!200672))

(assert (= (or b!2995381 b!2995385) bm!200676))

(assert (= (or b!2995372 b!2995384) bm!200674))

(assert (= (or b!2995375 bm!200675) bm!200677))

(assert (= (or b!2995375 bm!200676) bm!200678))

(assert (= (and d!845370 res!1235309) b!2995382))

(declare-fun m!3349729 () Bool)

(assert (=> bm!200678 m!3349729))

(declare-fun m!3349731 () Bool)

(assert (=> d!845370 m!3349731))

(declare-fun m!3349733 () Bool)

(assert (=> d!845370 m!3349733))

(declare-fun m!3349735 () Bool)

(assert (=> bm!200672 m!3349735))

(declare-fun m!3349737 () Bool)

(assert (=> b!2995382 m!3349737))

(declare-fun m!3349739 () Bool)

(assert (=> b!2995382 m!3349739))

(declare-fun m!3349741 () Bool)

(assert (=> b!2995377 m!3349741))

(declare-fun m!3349743 () Bool)

(assert (=> bm!200674 m!3349743))

(declare-fun m!3349745 () Bool)

(assert (=> bm!200677 m!3349745))

(declare-fun m!3349747 () Bool)

(assert (=> bm!200673 m!3349747))

(assert (=> b!2995243 d!845370))

(declare-fun b!2995404 () Bool)

(declare-fun e!1882383 () Regex!9361)

(assert (=> b!2995404 (= e!1882383 (regOne!19234 r!17423))))

(declare-fun b!2995405 () Bool)

(declare-fun e!1882382 () Regex!9361)

(declare-fun e!1882375 () Regex!9361)

(assert (=> b!2995405 (= e!1882382 e!1882375)))

(declare-fun c!492577 () Bool)

(assert (=> b!2995405 (= c!492577 ((_ is Star!9361) (regOne!19234 r!17423)))))

(declare-fun b!2995406 () Bool)

(declare-fun e!1882386 () Regex!9361)

(assert (=> b!2995406 (= e!1882386 EmptyLang!9361)))

(declare-fun b!2995407 () Bool)

(declare-fun e!1882373 () Regex!9361)

(declare-fun lt!1041342 () Regex!9361)

(assert (=> b!2995407 (= e!1882373 lt!1041342)))

(declare-fun b!2995408 () Bool)

(assert (=> b!2995408 (= e!1882382 EmptyExpr!9361)))

(declare-fun b!2995409 () Bool)

(declare-fun e!1882385 () Regex!9361)

(declare-fun lt!1041339 () Regex!9361)

(assert (=> b!2995409 (= e!1882385 (Star!9361 lt!1041339))))

(declare-fun call!200685 () Bool)

(declare-fun lt!1041340 () Regex!9361)

(declare-fun c!492579 () Bool)

(declare-fun bm!200680 () Bool)

(declare-fun lt!1041341 () Regex!9361)

(assert (=> bm!200680 (= call!200685 (isEmptyLang!451 (ite c!492579 lt!1041340 lt!1041341)))))

(declare-fun b!2995410 () Bool)

(assert (=> b!2995410 (= e!1882386 e!1882383)))

(declare-fun c!492586 () Bool)

(assert (=> b!2995410 (= c!492586 ((_ is ElementMatch!9361) (regOne!19234 r!17423)))))

(declare-fun b!2995411 () Bool)

(declare-fun e!1882376 () Bool)

(declare-fun call!200687 () Bool)

(assert (=> b!2995411 (= e!1882376 call!200687)))

(declare-fun bm!200681 () Bool)

(declare-fun call!200690 () Regex!9361)

(assert (=> bm!200681 (= call!200690 (simplify!352 (ite c!492579 (regTwo!19235 (regOne!19234 r!17423)) (regTwo!19234 (regOne!19234 r!17423)))))))

(declare-fun b!2995412 () Bool)

(declare-fun e!1882378 () Regex!9361)

(declare-fun lt!1041338 () Regex!9361)

(assert (=> b!2995412 (= e!1882378 (Union!9361 lt!1041340 lt!1041338))))

(declare-fun b!2995413 () Bool)

(declare-fun e!1882374 () Regex!9361)

(assert (=> b!2995413 (= e!1882374 lt!1041338)))

(declare-fun b!2995414 () Bool)

(declare-fun c!492582 () Bool)

(assert (=> b!2995414 (= c!492582 e!1882376)))

(declare-fun res!1235321 () Bool)

(assert (=> b!2995414 (=> res!1235321 e!1882376)))

(declare-fun call!200689 () Bool)

(assert (=> b!2995414 (= res!1235321 call!200689)))

(declare-fun call!200686 () Regex!9361)

(assert (=> b!2995414 (= lt!1041339 call!200686)))

(assert (=> b!2995414 (= e!1882375 e!1882385)))

(declare-fun b!2995415 () Bool)

(declare-fun e!1882380 () Bool)

(assert (=> b!2995415 (= e!1882380 call!200685)))

(declare-fun bm!200682 () Bool)

(assert (=> bm!200682 (= call!200687 (isEmptyExpr!467 (ite c!492577 lt!1041339 lt!1041342)))))

(declare-fun b!2995416 () Bool)

(declare-fun e!1882381 () Regex!9361)

(assert (=> b!2995416 (= e!1882381 e!1882373)))

(declare-fun c!492585 () Bool)

(assert (=> b!2995416 (= c!492585 (isEmptyExpr!467 lt!1041341))))

(declare-fun bm!200683 () Bool)

(declare-fun call!200691 () Regex!9361)

(assert (=> bm!200683 (= call!200691 call!200686)))

(declare-fun b!2995417 () Bool)

(declare-fun e!1882377 () Regex!9361)

(assert (=> b!2995417 (= e!1882377 e!1882374)))

(assert (=> b!2995417 (= lt!1041340 call!200691)))

(assert (=> b!2995417 (= lt!1041338 call!200690)))

(declare-fun c!492583 () Bool)

(assert (=> b!2995417 (= c!492583 call!200685)))

(declare-fun b!2995418 () Bool)

(assert (=> b!2995418 (= e!1882385 EmptyExpr!9361)))

(declare-fun d!845380 () Bool)

(declare-fun e!1882379 () Bool)

(assert (=> d!845380 e!1882379))

(declare-fun res!1235320 () Bool)

(assert (=> d!845380 (=> (not res!1235320) (not e!1882379))))

(declare-fun lt!1041337 () Regex!9361)

(assert (=> d!845380 (= res!1235320 (validRegex!4094 lt!1041337))))

(assert (=> d!845380 (= lt!1041337 e!1882386)))

(declare-fun c!492584 () Bool)

(assert (=> d!845380 (= c!492584 ((_ is EmptyLang!9361) (regOne!19234 r!17423)))))

(assert (=> d!845380 (validRegex!4094 (regOne!19234 r!17423))))

(assert (=> d!845380 (= (simplify!352 (regOne!19234 r!17423)) lt!1041337)))

(declare-fun b!2995419 () Bool)

(assert (=> b!2995419 (= e!1882378 lt!1041340)))

(declare-fun bm!200684 () Bool)

(declare-fun call!200688 () Bool)

(assert (=> bm!200684 (= call!200688 call!200689)))

(declare-fun bm!200685 () Bool)

(assert (=> bm!200685 (= call!200686 (simplify!352 (ite c!492577 (reg!9690 (regOne!19234 r!17423)) (ite c!492579 (regOne!19235 (regOne!19234 r!17423)) (regOne!19234 (regOne!19234 r!17423))))))))

(declare-fun b!2995420 () Bool)

(declare-fun c!492587 () Bool)

(assert (=> b!2995420 (= c!492587 call!200688)))

(assert (=> b!2995420 (= e!1882374 e!1882378)))

(declare-fun b!2995421 () Bool)

(assert (=> b!2995421 (= e!1882379 (= (nullable!3024 lt!1041337) (nullable!3024 (regOne!19234 r!17423))))))

(declare-fun bm!200686 () Bool)

(assert (=> bm!200686 (= call!200689 (isEmptyLang!451 (ite c!492577 lt!1041339 (ite c!492579 lt!1041338 lt!1041342))))))

(declare-fun b!2995422 () Bool)

(declare-fun e!1882384 () Regex!9361)

(assert (=> b!2995422 (= e!1882384 EmptyLang!9361)))

(declare-fun b!2995423 () Bool)

(declare-fun c!492580 () Bool)

(assert (=> b!2995423 (= c!492580 call!200687)))

(assert (=> b!2995423 (= e!1882384 e!1882381)))

(declare-fun b!2995424 () Bool)

(assert (=> b!2995424 (= e!1882377 e!1882384)))

(assert (=> b!2995424 (= lt!1041342 call!200691)))

(assert (=> b!2995424 (= lt!1041341 call!200690)))

(declare-fun res!1235319 () Bool)

(assert (=> b!2995424 (= res!1235319 call!200688)))

(assert (=> b!2995424 (=> res!1235319 e!1882380)))

(declare-fun c!492581 () Bool)

(assert (=> b!2995424 (= c!492581 e!1882380)))

(declare-fun b!2995425 () Bool)

(assert (=> b!2995425 (= c!492579 ((_ is Union!9361) (regOne!19234 r!17423)))))

(assert (=> b!2995425 (= e!1882375 e!1882377)))

(declare-fun b!2995426 () Bool)

(assert (=> b!2995426 (= e!1882373 (Concat!14682 lt!1041342 lt!1041341))))

(declare-fun b!2995427 () Bool)

(declare-fun c!492578 () Bool)

(assert (=> b!2995427 (= c!492578 ((_ is EmptyExpr!9361) (regOne!19234 r!17423)))))

(assert (=> b!2995427 (= e!1882383 e!1882382)))

(declare-fun b!2995428 () Bool)

(assert (=> b!2995428 (= e!1882381 lt!1041341)))

(assert (= (and d!845380 c!492584) b!2995406))

(assert (= (and d!845380 (not c!492584)) b!2995410))

(assert (= (and b!2995410 c!492586) b!2995404))

(assert (= (and b!2995410 (not c!492586)) b!2995427))

(assert (= (and b!2995427 c!492578) b!2995408))

(assert (= (and b!2995427 (not c!492578)) b!2995405))

(assert (= (and b!2995405 c!492577) b!2995414))

(assert (= (and b!2995405 (not c!492577)) b!2995425))

(assert (= (and b!2995414 (not res!1235321)) b!2995411))

(assert (= (and b!2995414 c!492582) b!2995418))

(assert (= (and b!2995414 (not c!492582)) b!2995409))

(assert (= (and b!2995425 c!492579) b!2995417))

(assert (= (and b!2995425 (not c!492579)) b!2995424))

(assert (= (and b!2995417 c!492583) b!2995413))

(assert (= (and b!2995417 (not c!492583)) b!2995420))

(assert (= (and b!2995420 c!492587) b!2995419))

(assert (= (and b!2995420 (not c!492587)) b!2995412))

(assert (= (and b!2995424 (not res!1235319)) b!2995415))

(assert (= (and b!2995424 c!492581) b!2995422))

(assert (= (and b!2995424 (not c!492581)) b!2995423))

(assert (= (and b!2995423 c!492580) b!2995428))

(assert (= (and b!2995423 (not c!492580)) b!2995416))

(assert (= (and b!2995416 c!492585) b!2995407))

(assert (= (and b!2995416 (not c!492585)) b!2995426))

(assert (= (or b!2995417 b!2995424) bm!200681))

(assert (= (or b!2995417 b!2995424) bm!200683))

(assert (= (or b!2995417 b!2995415) bm!200680))

(assert (= (or b!2995420 b!2995424) bm!200684))

(assert (= (or b!2995411 b!2995423) bm!200682))

(assert (= (or b!2995414 bm!200683) bm!200685))

(assert (= (or b!2995414 bm!200684) bm!200686))

(assert (= (and d!845380 res!1235320) b!2995421))

(declare-fun m!3349757 () Bool)

(assert (=> bm!200686 m!3349757))

(declare-fun m!3349759 () Bool)

(assert (=> d!845380 m!3349759))

(declare-fun m!3349761 () Bool)

(assert (=> d!845380 m!3349761))

(declare-fun m!3349763 () Bool)

(assert (=> bm!200680 m!3349763))

(declare-fun m!3349765 () Bool)

(assert (=> b!2995421 m!3349765))

(declare-fun m!3349767 () Bool)

(assert (=> b!2995421 m!3349767))

(declare-fun m!3349769 () Bool)

(assert (=> b!2995416 m!3349769))

(declare-fun m!3349771 () Bool)

(assert (=> bm!200682 m!3349771))

(declare-fun m!3349773 () Bool)

(assert (=> bm!200685 m!3349773))

(declare-fun m!3349775 () Bool)

(assert (=> bm!200681 m!3349775))

(assert (=> b!2995243 d!845380))

(declare-fun bm!200693 () Bool)

(declare-fun call!200700 () Bool)

(declare-fun call!200699 () Bool)

(assert (=> bm!200693 (= call!200700 call!200699)))

(declare-fun b!2995447 () Bool)

(declare-fun e!1882404 () Bool)

(declare-fun e!1882406 () Bool)

(assert (=> b!2995447 (= e!1882404 e!1882406)))

(declare-fun res!1235334 () Bool)

(assert (=> b!2995447 (= res!1235334 (not (nullable!3024 (reg!9690 r!17423))))))

(assert (=> b!2995447 (=> (not res!1235334) (not e!1882406))))

(declare-fun b!2995448 () Bool)

(declare-fun e!1882407 () Bool)

(assert (=> b!2995448 (= e!1882407 e!1882404)))

(declare-fun c!492592 () Bool)

(assert (=> b!2995448 (= c!492592 ((_ is Star!9361) r!17423))))

(declare-fun d!845384 () Bool)

(declare-fun res!1235336 () Bool)

(assert (=> d!845384 (=> res!1235336 e!1882407)))

(assert (=> d!845384 (= res!1235336 ((_ is ElementMatch!9361) r!17423))))

(assert (=> d!845384 (= (validRegex!4094 r!17423) e!1882407)))

(declare-fun bm!200694 () Bool)

(declare-fun call!200698 () Bool)

(declare-fun c!492593 () Bool)

(assert (=> bm!200694 (= call!200698 (validRegex!4094 (ite c!492593 (regOne!19235 r!17423) (regTwo!19234 r!17423))))))

(declare-fun b!2995449 () Bool)

(declare-fun e!1882405 () Bool)

(declare-fun e!1882402 () Bool)

(assert (=> b!2995449 (= e!1882405 e!1882402)))

(declare-fun res!1235333 () Bool)

(assert (=> b!2995449 (=> (not res!1235333) (not e!1882402))))

(assert (=> b!2995449 (= res!1235333 call!200700)))

(declare-fun b!2995450 () Bool)

(assert (=> b!2995450 (= e!1882402 call!200698)))

(declare-fun b!2995451 () Bool)

(assert (=> b!2995451 (= e!1882406 call!200699)))

(declare-fun b!2995452 () Bool)

(declare-fun res!1235332 () Bool)

(declare-fun e!1882403 () Bool)

(assert (=> b!2995452 (=> (not res!1235332) (not e!1882403))))

(assert (=> b!2995452 (= res!1235332 call!200698)))

(declare-fun e!1882401 () Bool)

(assert (=> b!2995452 (= e!1882401 e!1882403)))

(declare-fun b!2995453 () Bool)

(assert (=> b!2995453 (= e!1882403 call!200700)))

(declare-fun b!2995454 () Bool)

(assert (=> b!2995454 (= e!1882404 e!1882401)))

(assert (=> b!2995454 (= c!492593 ((_ is Union!9361) r!17423))))

(declare-fun b!2995455 () Bool)

(declare-fun res!1235335 () Bool)

(assert (=> b!2995455 (=> res!1235335 e!1882405)))

(assert (=> b!2995455 (= res!1235335 (not ((_ is Concat!14682) r!17423)))))

(assert (=> b!2995455 (= e!1882401 e!1882405)))

(declare-fun bm!200695 () Bool)

(assert (=> bm!200695 (= call!200699 (validRegex!4094 (ite c!492592 (reg!9690 r!17423) (ite c!492593 (regTwo!19235 r!17423) (regOne!19234 r!17423)))))))

(assert (= (and d!845384 (not res!1235336)) b!2995448))

(assert (= (and b!2995448 c!492592) b!2995447))

(assert (= (and b!2995448 (not c!492592)) b!2995454))

(assert (= (and b!2995447 res!1235334) b!2995451))

(assert (= (and b!2995454 c!492593) b!2995452))

(assert (= (and b!2995454 (not c!492593)) b!2995455))

(assert (= (and b!2995452 res!1235332) b!2995453))

(assert (= (and b!2995455 (not res!1235335)) b!2995449))

(assert (= (and b!2995449 res!1235333) b!2995450))

(assert (= (or b!2995452 b!2995450) bm!200694))

(assert (= (or b!2995453 b!2995449) bm!200693))

(assert (= (or b!2995451 bm!200693) bm!200695))

(declare-fun m!3349781 () Bool)

(assert (=> b!2995447 m!3349781))

(declare-fun m!3349783 () Bool)

(assert (=> bm!200694 m!3349783))

(declare-fun m!3349785 () Bool)

(assert (=> bm!200695 m!3349785))

(assert (=> start!289112 d!845384))

(declare-fun b!2995692 () Bool)

(assert (=> b!2995692 true))

(assert (=> b!2995692 true))

(declare-fun bs!528073 () Bool)

(declare-fun b!2995693 () Bool)

(assert (= bs!528073 (and b!2995693 b!2995692)))

(declare-fun lambda!112030 () Int)

(declare-fun lambda!112029 () Int)

(assert (=> bs!528073 (not (= lambda!112030 lambda!112029))))

(assert (=> b!2995693 true))

(assert (=> b!2995693 true))

(declare-fun b!2995684 () Bool)

(declare-fun e!1882526 () Bool)

(declare-fun e!1882530 () Bool)

(assert (=> b!2995684 (= e!1882526 e!1882530)))

(declare-fun res!1235394 () Bool)

(assert (=> b!2995684 (= res!1235394 (matchRSpec!1498 (regOne!19235 r!17423) s!11993))))

(assert (=> b!2995684 (=> res!1235394 e!1882530)))

(declare-fun b!2995685 () Bool)

(declare-fun e!1882527 () Bool)

(declare-fun e!1882524 () Bool)

(assert (=> b!2995685 (= e!1882527 e!1882524)))

(declare-fun res!1235393 () Bool)

(assert (=> b!2995685 (= res!1235393 (not ((_ is EmptyLang!9361) r!17423)))))

(assert (=> b!2995685 (=> (not res!1235393) (not e!1882524))))

(declare-fun bm!200735 () Bool)

(declare-fun call!200741 () Bool)

(declare-fun c!492661 () Bool)

(declare-fun Exists!1634 (Int) Bool)

(assert (=> bm!200735 (= call!200741 (Exists!1634 (ite c!492661 lambda!112029 lambda!112030)))))

(declare-fun b!2995686 () Bool)

(declare-fun c!492662 () Bool)

(assert (=> b!2995686 (= c!492662 ((_ is ElementMatch!9361) r!17423))))

(declare-fun e!1882525 () Bool)

(assert (=> b!2995686 (= e!1882524 e!1882525)))

(declare-fun b!2995688 () Bool)

(declare-fun c!492663 () Bool)

(assert (=> b!2995688 (= c!492663 ((_ is Union!9361) r!17423))))

(assert (=> b!2995688 (= e!1882525 e!1882526)))

(declare-fun b!2995689 () Bool)

(declare-fun e!1882528 () Bool)

(assert (=> b!2995689 (= e!1882526 e!1882528)))

(assert (=> b!2995689 (= c!492661 ((_ is Star!9361) r!17423))))

(declare-fun bm!200736 () Bool)

(declare-fun call!200740 () Bool)

(assert (=> bm!200736 (= call!200740 (isEmpty!19376 s!11993))))

(declare-fun b!2995690 () Bool)

(assert (=> b!2995690 (= e!1882527 call!200740)))

(declare-fun b!2995691 () Bool)

(assert (=> b!2995691 (= e!1882530 (matchRSpec!1498 (regTwo!19235 r!17423) s!11993))))

(declare-fun e!1882529 () Bool)

(assert (=> b!2995692 (= e!1882529 call!200741)))

(declare-fun b!2995687 () Bool)

(assert (=> b!2995687 (= e!1882525 (= s!11993 (Cons!35102 (c!492525 r!17423) Nil!35102)))))

(declare-fun d!845390 () Bool)

(declare-fun c!492664 () Bool)

(assert (=> d!845390 (= c!492664 ((_ is EmptyExpr!9361) r!17423))))

(assert (=> d!845390 (= (matchRSpec!1498 r!17423 s!11993) e!1882527)))

(assert (=> b!2995693 (= e!1882528 call!200741)))

(declare-fun b!2995694 () Bool)

(declare-fun res!1235392 () Bool)

(assert (=> b!2995694 (=> res!1235392 e!1882529)))

(assert (=> b!2995694 (= res!1235392 call!200740)))

(assert (=> b!2995694 (= e!1882528 e!1882529)))

(assert (= (and d!845390 c!492664) b!2995690))

(assert (= (and d!845390 (not c!492664)) b!2995685))

(assert (= (and b!2995685 res!1235393) b!2995686))

(assert (= (and b!2995686 c!492662) b!2995687))

(assert (= (and b!2995686 (not c!492662)) b!2995688))

(assert (= (and b!2995688 c!492663) b!2995684))

(assert (= (and b!2995688 (not c!492663)) b!2995689))

(assert (= (and b!2995684 (not res!1235394)) b!2995691))

(assert (= (and b!2995689 c!492661) b!2995694))

(assert (= (and b!2995689 (not c!492661)) b!2995693))

(assert (= (and b!2995694 (not res!1235392)) b!2995692))

(assert (= (or b!2995692 b!2995693) bm!200735))

(assert (= (or b!2995690 b!2995694) bm!200736))

(declare-fun m!3349837 () Bool)

(assert (=> b!2995684 m!3349837))

(declare-fun m!3349839 () Bool)

(assert (=> bm!200735 m!3349839))

(assert (=> bm!200736 m!3349689))

(declare-fun m!3349841 () Bool)

(assert (=> b!2995691 m!3349841))

(assert (=> b!2995238 d!845390))

(declare-fun bm!200739 () Bool)

(declare-fun call!200744 () Bool)

(assert (=> bm!200739 (= call!200744 (isEmpty!19376 s!11993))))

(declare-fun b!2995728 () Bool)

(declare-fun e!1882545 () Bool)

(assert (=> b!2995728 (= e!1882545 (nullable!3024 r!17423))))

(declare-fun b!2995729 () Bool)

(declare-fun e!1882549 () Bool)

(declare-fun e!1882548 () Bool)

(assert (=> b!2995729 (= e!1882549 e!1882548)))

(declare-fun c!492673 () Bool)

(assert (=> b!2995729 (= c!492673 ((_ is EmptyLang!9361) r!17423))))

(declare-fun b!2995730 () Bool)

(declare-fun res!1235417 () Bool)

(declare-fun e!1882547 () Bool)

(assert (=> b!2995730 (=> res!1235417 e!1882547)))

(declare-fun tail!4907 (List!35226) List!35226)

(assert (=> b!2995730 (= res!1235417 (not (isEmpty!19376 (tail!4907 s!11993))))))

(declare-fun b!2995731 () Bool)

(declare-fun lt!1041376 () Bool)

(assert (=> b!2995731 (= e!1882548 (not lt!1041376))))

(declare-fun b!2995732 () Bool)

(declare-fun derivativeStep!2622 (Regex!9361 C!18908) Regex!9361)

(declare-fun head!6681 (List!35226) C!18908)

(assert (=> b!2995732 (= e!1882545 (matchR!4243 (derivativeStep!2622 r!17423 (head!6681 s!11993)) (tail!4907 s!11993)))))

(declare-fun b!2995733 () Bool)

(assert (=> b!2995733 (= e!1882549 (= lt!1041376 call!200744))))

(declare-fun b!2995734 () Bool)

(declare-fun res!1235411 () Bool)

(declare-fun e!1882550 () Bool)

(assert (=> b!2995734 (=> (not res!1235411) (not e!1882550))))

(assert (=> b!2995734 (= res!1235411 (not call!200744))))

(declare-fun b!2995735 () Bool)

(declare-fun res!1235412 () Bool)

(declare-fun e!1882551 () Bool)

(assert (=> b!2995735 (=> res!1235412 e!1882551)))

(assert (=> b!2995735 (= res!1235412 (not ((_ is ElementMatch!9361) r!17423)))))

(assert (=> b!2995735 (= e!1882548 e!1882551)))

(declare-fun b!2995736 () Bool)

(declare-fun res!1235418 () Bool)

(assert (=> b!2995736 (=> res!1235418 e!1882551)))

(assert (=> b!2995736 (= res!1235418 e!1882550)))

(declare-fun res!1235416 () Bool)

(assert (=> b!2995736 (=> (not res!1235416) (not e!1882550))))

(assert (=> b!2995736 (= res!1235416 lt!1041376)))

(declare-fun b!2995737 () Bool)

(assert (=> b!2995737 (= e!1882550 (= (head!6681 s!11993) (c!492525 r!17423)))))

(declare-fun b!2995738 () Bool)

(assert (=> b!2995738 (= e!1882547 (not (= (head!6681 s!11993) (c!492525 r!17423))))))

(declare-fun b!2995739 () Bool)

(declare-fun res!1235413 () Bool)

(assert (=> b!2995739 (=> (not res!1235413) (not e!1882550))))

(assert (=> b!2995739 (= res!1235413 (isEmpty!19376 (tail!4907 s!11993)))))

(declare-fun b!2995740 () Bool)

(declare-fun e!1882546 () Bool)

(assert (=> b!2995740 (= e!1882551 e!1882546)))

(declare-fun res!1235415 () Bool)

(assert (=> b!2995740 (=> (not res!1235415) (not e!1882546))))

(assert (=> b!2995740 (= res!1235415 (not lt!1041376))))

(declare-fun b!2995727 () Bool)

(assert (=> b!2995727 (= e!1882546 e!1882547)))

(declare-fun res!1235414 () Bool)

(assert (=> b!2995727 (=> res!1235414 e!1882547)))

(assert (=> b!2995727 (= res!1235414 call!200744)))

(declare-fun d!845402 () Bool)

(assert (=> d!845402 e!1882549))

(declare-fun c!492671 () Bool)

(assert (=> d!845402 (= c!492671 ((_ is EmptyExpr!9361) r!17423))))

(assert (=> d!845402 (= lt!1041376 e!1882545)))

(declare-fun c!492672 () Bool)

(assert (=> d!845402 (= c!492672 (isEmpty!19376 s!11993))))

(assert (=> d!845402 (validRegex!4094 r!17423)))

(assert (=> d!845402 (= (matchR!4243 r!17423 s!11993) lt!1041376)))

(assert (= (and d!845402 c!492672) b!2995728))

(assert (= (and d!845402 (not c!492672)) b!2995732))

(assert (= (and d!845402 c!492671) b!2995733))

(assert (= (and d!845402 (not c!492671)) b!2995729))

(assert (= (and b!2995729 c!492673) b!2995731))

(assert (= (and b!2995729 (not c!492673)) b!2995735))

(assert (= (and b!2995735 (not res!1235412)) b!2995736))

(assert (= (and b!2995736 res!1235416) b!2995734))

(assert (= (and b!2995734 res!1235411) b!2995739))

(assert (= (and b!2995739 res!1235413) b!2995737))

(assert (= (and b!2995736 (not res!1235418)) b!2995740))

(assert (= (and b!2995740 res!1235415) b!2995727))

(assert (= (and b!2995727 (not res!1235414)) b!2995730))

(assert (= (and b!2995730 (not res!1235417)) b!2995738))

(assert (= (or b!2995733 b!2995727 b!2995734) bm!200739))

(declare-fun m!3349843 () Bool)

(assert (=> b!2995737 m!3349843))

(declare-fun m!3349845 () Bool)

(assert (=> b!2995730 m!3349845))

(assert (=> b!2995730 m!3349845))

(declare-fun m!3349847 () Bool)

(assert (=> b!2995730 m!3349847))

(assert (=> d!845402 m!3349689))

(assert (=> d!845402 m!3349687))

(assert (=> b!2995739 m!3349845))

(assert (=> b!2995739 m!3349845))

(assert (=> b!2995739 m!3349847))

(assert (=> bm!200739 m!3349689))

(assert (=> b!2995732 m!3349843))

(assert (=> b!2995732 m!3349843))

(declare-fun m!3349849 () Bool)

(assert (=> b!2995732 m!3349849))

(assert (=> b!2995732 m!3349845))

(assert (=> b!2995732 m!3349849))

(assert (=> b!2995732 m!3349845))

(declare-fun m!3349851 () Bool)

(assert (=> b!2995732 m!3349851))

(assert (=> b!2995738 m!3349843))

(declare-fun m!3349853 () Bool)

(assert (=> b!2995728 m!3349853))

(assert (=> b!2995238 d!845402))

(declare-fun d!845404 () Bool)

(assert (=> d!845404 (= (matchR!4243 r!17423 s!11993) (matchRSpec!1498 r!17423 s!11993))))

(declare-fun lt!1041379 () Unit!49137)

(declare-fun choose!17781 (Regex!9361 List!35226) Unit!49137)

(assert (=> d!845404 (= lt!1041379 (choose!17781 r!17423 s!11993))))

(assert (=> d!845404 (validRegex!4094 r!17423)))

(assert (=> d!845404 (= (mainMatchTheorem!1498 r!17423 s!11993) lt!1041379)))

(declare-fun bs!528074 () Bool)

(assert (= bs!528074 d!845404))

(assert (=> bs!528074 m!3349699))

(assert (=> bs!528074 m!3349697))

(declare-fun m!3349855 () Bool)

(assert (=> bs!528074 m!3349855))

(assert (=> bs!528074 m!3349687))

(assert (=> b!2995238 d!845404))

(declare-fun d!845406 () Bool)

(assert (=> d!845406 (= (isEmpty!19376 s!11993) ((_ is Nil!35102) s!11993))))

(assert (=> b!2995240 d!845406))

(declare-fun bm!200740 () Bool)

(declare-fun call!200745 () Bool)

(assert (=> bm!200740 (= call!200745 (isEmpty!19376 s!11993))))

(declare-fun b!2995742 () Bool)

(declare-fun e!1882552 () Bool)

(assert (=> b!2995742 (= e!1882552 (nullable!3024 lt!1041313))))

(declare-fun b!2995743 () Bool)

(declare-fun e!1882556 () Bool)

(declare-fun e!1882555 () Bool)

(assert (=> b!2995743 (= e!1882556 e!1882555)))

(declare-fun c!492676 () Bool)

(assert (=> b!2995743 (= c!492676 ((_ is EmptyLang!9361) lt!1041313))))

(declare-fun b!2995744 () Bool)

(declare-fun res!1235425 () Bool)

(declare-fun e!1882554 () Bool)

(assert (=> b!2995744 (=> res!1235425 e!1882554)))

(assert (=> b!2995744 (= res!1235425 (not (isEmpty!19376 (tail!4907 s!11993))))))

(declare-fun b!2995745 () Bool)

(declare-fun lt!1041380 () Bool)

(assert (=> b!2995745 (= e!1882555 (not lt!1041380))))

(declare-fun b!2995746 () Bool)

(assert (=> b!2995746 (= e!1882552 (matchR!4243 (derivativeStep!2622 lt!1041313 (head!6681 s!11993)) (tail!4907 s!11993)))))

(declare-fun b!2995747 () Bool)

(assert (=> b!2995747 (= e!1882556 (= lt!1041380 call!200745))))

(declare-fun b!2995748 () Bool)

(declare-fun res!1235419 () Bool)

(declare-fun e!1882557 () Bool)

(assert (=> b!2995748 (=> (not res!1235419) (not e!1882557))))

(assert (=> b!2995748 (= res!1235419 (not call!200745))))

(declare-fun b!2995749 () Bool)

(declare-fun res!1235420 () Bool)

(declare-fun e!1882558 () Bool)

(assert (=> b!2995749 (=> res!1235420 e!1882558)))

(assert (=> b!2995749 (= res!1235420 (not ((_ is ElementMatch!9361) lt!1041313)))))

(assert (=> b!2995749 (= e!1882555 e!1882558)))

(declare-fun b!2995750 () Bool)

(declare-fun res!1235426 () Bool)

(assert (=> b!2995750 (=> res!1235426 e!1882558)))

(assert (=> b!2995750 (= res!1235426 e!1882557)))

(declare-fun res!1235424 () Bool)

(assert (=> b!2995750 (=> (not res!1235424) (not e!1882557))))

(assert (=> b!2995750 (= res!1235424 lt!1041380)))

(declare-fun b!2995751 () Bool)

(assert (=> b!2995751 (= e!1882557 (= (head!6681 s!11993) (c!492525 lt!1041313)))))

(declare-fun b!2995752 () Bool)

(assert (=> b!2995752 (= e!1882554 (not (= (head!6681 s!11993) (c!492525 lt!1041313))))))

(declare-fun b!2995753 () Bool)

(declare-fun res!1235421 () Bool)

(assert (=> b!2995753 (=> (not res!1235421) (not e!1882557))))

(assert (=> b!2995753 (= res!1235421 (isEmpty!19376 (tail!4907 s!11993)))))

(declare-fun b!2995754 () Bool)

(declare-fun e!1882553 () Bool)

(assert (=> b!2995754 (= e!1882558 e!1882553)))

(declare-fun res!1235423 () Bool)

(assert (=> b!2995754 (=> (not res!1235423) (not e!1882553))))

(assert (=> b!2995754 (= res!1235423 (not lt!1041380))))

(declare-fun b!2995741 () Bool)

(assert (=> b!2995741 (= e!1882553 e!1882554)))

(declare-fun res!1235422 () Bool)

(assert (=> b!2995741 (=> res!1235422 e!1882554)))

(assert (=> b!2995741 (= res!1235422 call!200745)))

(declare-fun d!845408 () Bool)

(assert (=> d!845408 e!1882556))

(declare-fun c!492674 () Bool)

(assert (=> d!845408 (= c!492674 ((_ is EmptyExpr!9361) lt!1041313))))

(assert (=> d!845408 (= lt!1041380 e!1882552)))

(declare-fun c!492675 () Bool)

(assert (=> d!845408 (= c!492675 (isEmpty!19376 s!11993))))

(assert (=> d!845408 (validRegex!4094 lt!1041313)))

(assert (=> d!845408 (= (matchR!4243 lt!1041313 s!11993) lt!1041380)))

(assert (= (and d!845408 c!492675) b!2995742))

(assert (= (and d!845408 (not c!492675)) b!2995746))

(assert (= (and d!845408 c!492674) b!2995747))

(assert (= (and d!845408 (not c!492674)) b!2995743))

(assert (= (and b!2995743 c!492676) b!2995745))

(assert (= (and b!2995743 (not c!492676)) b!2995749))

(assert (= (and b!2995749 (not res!1235420)) b!2995750))

(assert (= (and b!2995750 res!1235424) b!2995748))

(assert (= (and b!2995748 res!1235419) b!2995753))

(assert (= (and b!2995753 res!1235421) b!2995751))

(assert (= (and b!2995750 (not res!1235426)) b!2995754))

(assert (= (and b!2995754 res!1235423) b!2995741))

(assert (= (and b!2995741 (not res!1235422)) b!2995744))

(assert (= (and b!2995744 (not res!1235425)) b!2995752))

(assert (= (or b!2995747 b!2995741 b!2995748) bm!200740))

(assert (=> b!2995751 m!3349843))

(assert (=> b!2995744 m!3349845))

(assert (=> b!2995744 m!3349845))

(assert (=> b!2995744 m!3349847))

(assert (=> d!845408 m!3349689))

(declare-fun m!3349857 () Bool)

(assert (=> d!845408 m!3349857))

(assert (=> b!2995753 m!3349845))

(assert (=> b!2995753 m!3349845))

(assert (=> b!2995753 m!3349847))

(assert (=> bm!200740 m!3349689))

(assert (=> b!2995746 m!3349843))

(assert (=> b!2995746 m!3349843))

(declare-fun m!3349859 () Bool)

(assert (=> b!2995746 m!3349859))

(assert (=> b!2995746 m!3349845))

(assert (=> b!2995746 m!3349859))

(assert (=> b!2995746 m!3349845))

(declare-fun m!3349861 () Bool)

(assert (=> b!2995746 m!3349861))

(assert (=> b!2995752 m!3349843))

(declare-fun m!3349863 () Bool)

(assert (=> b!2995742 m!3349863))

(assert (=> b!2995236 d!845408))

(declare-fun bm!200741 () Bool)

(declare-fun call!200746 () Bool)

(assert (=> bm!200741 (= call!200746 (isEmpty!19376 s!11993))))

(declare-fun b!2995756 () Bool)

(declare-fun e!1882559 () Bool)

(assert (=> b!2995756 (= e!1882559 (nullable!3024 (regTwo!19234 r!17423)))))

(declare-fun b!2995757 () Bool)

(declare-fun e!1882563 () Bool)

(declare-fun e!1882562 () Bool)

(assert (=> b!2995757 (= e!1882563 e!1882562)))

(declare-fun c!492679 () Bool)

(assert (=> b!2995757 (= c!492679 ((_ is EmptyLang!9361) (regTwo!19234 r!17423)))))

(declare-fun b!2995758 () Bool)

(declare-fun res!1235433 () Bool)

(declare-fun e!1882561 () Bool)

(assert (=> b!2995758 (=> res!1235433 e!1882561)))

(assert (=> b!2995758 (= res!1235433 (not (isEmpty!19376 (tail!4907 s!11993))))))

(declare-fun b!2995759 () Bool)

(declare-fun lt!1041381 () Bool)

(assert (=> b!2995759 (= e!1882562 (not lt!1041381))))

(declare-fun b!2995760 () Bool)

(assert (=> b!2995760 (= e!1882559 (matchR!4243 (derivativeStep!2622 (regTwo!19234 r!17423) (head!6681 s!11993)) (tail!4907 s!11993)))))

(declare-fun b!2995761 () Bool)

(assert (=> b!2995761 (= e!1882563 (= lt!1041381 call!200746))))

(declare-fun b!2995762 () Bool)

(declare-fun res!1235427 () Bool)

(declare-fun e!1882564 () Bool)

(assert (=> b!2995762 (=> (not res!1235427) (not e!1882564))))

(assert (=> b!2995762 (= res!1235427 (not call!200746))))

(declare-fun b!2995763 () Bool)

(declare-fun res!1235428 () Bool)

(declare-fun e!1882565 () Bool)

(assert (=> b!2995763 (=> res!1235428 e!1882565)))

(assert (=> b!2995763 (= res!1235428 (not ((_ is ElementMatch!9361) (regTwo!19234 r!17423))))))

(assert (=> b!2995763 (= e!1882562 e!1882565)))

(declare-fun b!2995764 () Bool)

(declare-fun res!1235434 () Bool)

(assert (=> b!2995764 (=> res!1235434 e!1882565)))

(assert (=> b!2995764 (= res!1235434 e!1882564)))

(declare-fun res!1235432 () Bool)

(assert (=> b!2995764 (=> (not res!1235432) (not e!1882564))))

(assert (=> b!2995764 (= res!1235432 lt!1041381)))

(declare-fun b!2995765 () Bool)

(assert (=> b!2995765 (= e!1882564 (= (head!6681 s!11993) (c!492525 (regTwo!19234 r!17423))))))

(declare-fun b!2995766 () Bool)

(assert (=> b!2995766 (= e!1882561 (not (= (head!6681 s!11993) (c!492525 (regTwo!19234 r!17423)))))))

(declare-fun b!2995767 () Bool)

(declare-fun res!1235429 () Bool)

(assert (=> b!2995767 (=> (not res!1235429) (not e!1882564))))

(assert (=> b!2995767 (= res!1235429 (isEmpty!19376 (tail!4907 s!11993)))))

(declare-fun b!2995768 () Bool)

(declare-fun e!1882560 () Bool)

(assert (=> b!2995768 (= e!1882565 e!1882560)))

(declare-fun res!1235431 () Bool)

(assert (=> b!2995768 (=> (not res!1235431) (not e!1882560))))

(assert (=> b!2995768 (= res!1235431 (not lt!1041381))))

(declare-fun b!2995755 () Bool)

(assert (=> b!2995755 (= e!1882560 e!1882561)))

(declare-fun res!1235430 () Bool)

(assert (=> b!2995755 (=> res!1235430 e!1882561)))

(assert (=> b!2995755 (= res!1235430 call!200746)))

(declare-fun d!845410 () Bool)

(assert (=> d!845410 e!1882563))

(declare-fun c!492677 () Bool)

(assert (=> d!845410 (= c!492677 ((_ is EmptyExpr!9361) (regTwo!19234 r!17423)))))

(assert (=> d!845410 (= lt!1041381 e!1882559)))

(declare-fun c!492678 () Bool)

(assert (=> d!845410 (= c!492678 (isEmpty!19376 s!11993))))

(assert (=> d!845410 (validRegex!4094 (regTwo!19234 r!17423))))

(assert (=> d!845410 (= (matchR!4243 (regTwo!19234 r!17423) s!11993) lt!1041381)))

(assert (= (and d!845410 c!492678) b!2995756))

(assert (= (and d!845410 (not c!492678)) b!2995760))

(assert (= (and d!845410 c!492677) b!2995761))

(assert (= (and d!845410 (not c!492677)) b!2995757))

(assert (= (and b!2995757 c!492679) b!2995759))

(assert (= (and b!2995757 (not c!492679)) b!2995763))

(assert (= (and b!2995763 (not res!1235428)) b!2995764))

(assert (= (and b!2995764 res!1235432) b!2995762))

(assert (= (and b!2995762 res!1235427) b!2995767))

(assert (= (and b!2995767 res!1235429) b!2995765))

(assert (= (and b!2995764 (not res!1235434)) b!2995768))

(assert (= (and b!2995768 res!1235431) b!2995755))

(assert (= (and b!2995755 (not res!1235430)) b!2995758))

(assert (= (and b!2995758 (not res!1235433)) b!2995766))

(assert (= (or b!2995761 b!2995755 b!2995762) bm!200741))

(assert (=> b!2995765 m!3349843))

(assert (=> b!2995758 m!3349845))

(assert (=> b!2995758 m!3349845))

(assert (=> b!2995758 m!3349847))

(assert (=> d!845410 m!3349689))

(assert (=> d!845410 m!3349733))

(assert (=> b!2995767 m!3349845))

(assert (=> b!2995767 m!3349845))

(assert (=> b!2995767 m!3349847))

(assert (=> bm!200741 m!3349689))

(assert (=> b!2995760 m!3349843))

(assert (=> b!2995760 m!3349843))

(declare-fun m!3349865 () Bool)

(assert (=> b!2995760 m!3349865))

(assert (=> b!2995760 m!3349845))

(assert (=> b!2995760 m!3349865))

(assert (=> b!2995760 m!3349845))

(declare-fun m!3349867 () Bool)

(assert (=> b!2995760 m!3349867))

(assert (=> b!2995766 m!3349843))

(assert (=> b!2995756 m!3349739))

(assert (=> b!2995236 d!845410))

(declare-fun d!845412 () Bool)

(assert (=> d!845412 (= (matchR!4243 (regTwo!19234 r!17423) s!11993) (matchR!4243 (simplify!352 (regTwo!19234 r!17423)) s!11993))))

(declare-fun lt!1041384 () Unit!49137)

(declare-fun choose!17782 (Regex!9361 List!35226) Unit!49137)

(assert (=> d!845412 (= lt!1041384 (choose!17782 (regTwo!19234 r!17423) s!11993))))

(assert (=> d!845412 (validRegex!4094 (regTwo!19234 r!17423))))

(assert (=> d!845412 (= (lemmaSimplifySound!210 (regTwo!19234 r!17423) s!11993) lt!1041384)))

(declare-fun bs!528075 () Bool)

(assert (= bs!528075 d!845412))

(assert (=> bs!528075 m!3349693))

(declare-fun m!3349869 () Bool)

(assert (=> bs!528075 m!3349869))

(assert (=> bs!528075 m!3349705))

(assert (=> bs!528075 m!3349733))

(assert (=> bs!528075 m!3349693))

(declare-fun m!3349871 () Bool)

(assert (=> bs!528075 m!3349871))

(assert (=> b!2995236 d!845412))

(declare-fun d!845414 () Bool)

(assert (=> d!845414 (= (isEmptyLang!451 lt!1041313) ((_ is EmptyLang!9361) lt!1041313))))

(assert (=> b!2995241 d!845414))

(declare-fun b!2995782 () Bool)

(declare-fun e!1882568 () Bool)

(declare-fun tp!951899 () Bool)

(declare-fun tp!951900 () Bool)

(assert (=> b!2995782 (= e!1882568 (and tp!951899 tp!951900))))

(assert (=> b!2995237 (= tp!951848 e!1882568)))

(declare-fun b!2995779 () Bool)

(assert (=> b!2995779 (= e!1882568 tp_is_empty!16285)))

(declare-fun b!2995781 () Bool)

(declare-fun tp!951902 () Bool)

(assert (=> b!2995781 (= e!1882568 tp!951902)))

(declare-fun b!2995780 () Bool)

(declare-fun tp!951901 () Bool)

(declare-fun tp!951898 () Bool)

(assert (=> b!2995780 (= e!1882568 (and tp!951901 tp!951898))))

(assert (= (and b!2995237 ((_ is ElementMatch!9361) (regOne!19234 r!17423))) b!2995779))

(assert (= (and b!2995237 ((_ is Concat!14682) (regOne!19234 r!17423))) b!2995780))

(assert (= (and b!2995237 ((_ is Star!9361) (regOne!19234 r!17423))) b!2995781))

(assert (= (and b!2995237 ((_ is Union!9361) (regOne!19234 r!17423))) b!2995782))

(declare-fun b!2995786 () Bool)

(declare-fun e!1882569 () Bool)

(declare-fun tp!951904 () Bool)

(declare-fun tp!951905 () Bool)

(assert (=> b!2995786 (= e!1882569 (and tp!951904 tp!951905))))

(assert (=> b!2995237 (= tp!951844 e!1882569)))

(declare-fun b!2995783 () Bool)

(assert (=> b!2995783 (= e!1882569 tp_is_empty!16285)))

(declare-fun b!2995785 () Bool)

(declare-fun tp!951907 () Bool)

(assert (=> b!2995785 (= e!1882569 tp!951907)))

(declare-fun b!2995784 () Bool)

(declare-fun tp!951906 () Bool)

(declare-fun tp!951903 () Bool)

(assert (=> b!2995784 (= e!1882569 (and tp!951906 tp!951903))))

(assert (= (and b!2995237 ((_ is ElementMatch!9361) (regTwo!19234 r!17423))) b!2995783))

(assert (= (and b!2995237 ((_ is Concat!14682) (regTwo!19234 r!17423))) b!2995784))

(assert (= (and b!2995237 ((_ is Star!9361) (regTwo!19234 r!17423))) b!2995785))

(assert (= (and b!2995237 ((_ is Union!9361) (regTwo!19234 r!17423))) b!2995786))

(declare-fun b!2995791 () Bool)

(declare-fun e!1882572 () Bool)

(declare-fun tp!951910 () Bool)

(assert (=> b!2995791 (= e!1882572 (and tp_is_empty!16285 tp!951910))))

(assert (=> b!2995242 (= tp!951846 e!1882572)))

(assert (= (and b!2995242 ((_ is Cons!35102) (t!234291 s!11993))) b!2995791))

(declare-fun b!2995795 () Bool)

(declare-fun e!1882573 () Bool)

(declare-fun tp!951912 () Bool)

(declare-fun tp!951913 () Bool)

(assert (=> b!2995795 (= e!1882573 (and tp!951912 tp!951913))))

(assert (=> b!2995239 (= tp!951845 e!1882573)))

(declare-fun b!2995792 () Bool)

(assert (=> b!2995792 (= e!1882573 tp_is_empty!16285)))

(declare-fun b!2995794 () Bool)

(declare-fun tp!951915 () Bool)

(assert (=> b!2995794 (= e!1882573 tp!951915)))

(declare-fun b!2995793 () Bool)

(declare-fun tp!951914 () Bool)

(declare-fun tp!951911 () Bool)

(assert (=> b!2995793 (= e!1882573 (and tp!951914 tp!951911))))

(assert (= (and b!2995239 ((_ is ElementMatch!9361) (reg!9690 r!17423))) b!2995792))

(assert (= (and b!2995239 ((_ is Concat!14682) (reg!9690 r!17423))) b!2995793))

(assert (= (and b!2995239 ((_ is Star!9361) (reg!9690 r!17423))) b!2995794))

(assert (= (and b!2995239 ((_ is Union!9361) (reg!9690 r!17423))) b!2995795))

(declare-fun b!2995799 () Bool)

(declare-fun e!1882574 () Bool)

(declare-fun tp!951917 () Bool)

(declare-fun tp!951918 () Bool)

(assert (=> b!2995799 (= e!1882574 (and tp!951917 tp!951918))))

(assert (=> b!2995244 (= tp!951849 e!1882574)))

(declare-fun b!2995796 () Bool)

(assert (=> b!2995796 (= e!1882574 tp_is_empty!16285)))

(declare-fun b!2995798 () Bool)

(declare-fun tp!951920 () Bool)

(assert (=> b!2995798 (= e!1882574 tp!951920)))

(declare-fun b!2995797 () Bool)

(declare-fun tp!951919 () Bool)

(declare-fun tp!951916 () Bool)

(assert (=> b!2995797 (= e!1882574 (and tp!951919 tp!951916))))

(assert (= (and b!2995244 ((_ is ElementMatch!9361) (regOne!19235 r!17423))) b!2995796))

(assert (= (and b!2995244 ((_ is Concat!14682) (regOne!19235 r!17423))) b!2995797))

(assert (= (and b!2995244 ((_ is Star!9361) (regOne!19235 r!17423))) b!2995798))

(assert (= (and b!2995244 ((_ is Union!9361) (regOne!19235 r!17423))) b!2995799))

(declare-fun b!2995803 () Bool)

(declare-fun e!1882575 () Bool)

(declare-fun tp!951922 () Bool)

(declare-fun tp!951923 () Bool)

(assert (=> b!2995803 (= e!1882575 (and tp!951922 tp!951923))))

(assert (=> b!2995244 (= tp!951847 e!1882575)))

(declare-fun b!2995800 () Bool)

(assert (=> b!2995800 (= e!1882575 tp_is_empty!16285)))

(declare-fun b!2995802 () Bool)

(declare-fun tp!951925 () Bool)

(assert (=> b!2995802 (= e!1882575 tp!951925)))

(declare-fun b!2995801 () Bool)

(declare-fun tp!951924 () Bool)

(declare-fun tp!951921 () Bool)

(assert (=> b!2995801 (= e!1882575 (and tp!951924 tp!951921))))

(assert (= (and b!2995244 ((_ is ElementMatch!9361) (regTwo!19235 r!17423))) b!2995800))

(assert (= (and b!2995244 ((_ is Concat!14682) (regTwo!19235 r!17423))) b!2995801))

(assert (= (and b!2995244 ((_ is Star!9361) (regTwo!19235 r!17423))) b!2995802))

(assert (= (and b!2995244 ((_ is Union!9361) (regTwo!19235 r!17423))) b!2995803))

(check-sat (not b!2995744) (not b!2995780) (not b!2995758) (not b!2995751) (not d!845370) (not b!2995684) (not bm!200686) (not b!2995797) (not b!2995794) (not b!2995760) (not d!845408) (not d!845412) (not b!2995799) (not d!845380) (not b!2995793) (not b!2995737) (not bm!200677) (not d!845410) (not b!2995798) (not bm!200739) (not bm!200740) (not b!2995765) (not bm!200674) (not bm!200672) (not bm!200735) (not b!2995782) (not b!2995739) (not b!2995803) (not b!2995802) (not b!2995785) (not b!2995377) (not b!2995791) (not bm!200673) tp_is_empty!16285 (not b!2995447) (not b!2995746) (not b!2995738) (not b!2995728) (not b!2995382) (not b!2995766) (not bm!200681) (not b!2995753) (not b!2995767) (not b!2995756) (not b!2995421) (not b!2995691) (not bm!200680) (not bm!200736) (not b!2995801) (not bm!200741) (not b!2995784) (not b!2995752) (not bm!200685) (not b!2995416) (not b!2995795) (not bm!200678) (not d!845402) (not bm!200695) (not b!2995730) (not d!845404) (not bm!200694) (not b!2995742) (not b!2995781) (not b!2995732) (not bm!200682) (not b!2995786))
(check-sat)
