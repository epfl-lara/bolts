; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278108 () Bool)

(assert start!278108)

(declare-fun b!2857298 () Bool)

(assert (=> b!2857298 true))

(assert (=> b!2857298 true))

(declare-fun res!1186947 () Bool)

(declare-fun e!1809476 () Bool)

(assert (=> start!278108 (=> (not res!1186947) (not e!1809476))))

(declare-datatypes ((C!17370 0))(
  ( (C!17371 (val!10719 Int)) )
))
(declare-datatypes ((Regex!8594 0))(
  ( (ElementMatch!8594 (c!460439 C!17370)) (Concat!13915 (regOne!17700 Regex!8594) (regTwo!17700 Regex!8594)) (EmptyExpr!8594) (Star!8594 (reg!8923 Regex!8594)) (EmptyLang!8594) (Union!8594 (regOne!17701 Regex!8594) (regTwo!17701 Regex!8594)) )
))
(declare-fun r!23423 () Regex!8594)

(declare-fun validRegex!3464 (Regex!8594) Bool)

(assert (=> start!278108 (= res!1186947 (validRegex!3464 r!23423))))

(assert (=> start!278108 e!1809476))

(declare-fun e!1809475 () Bool)

(assert (=> start!278108 e!1809475))

(declare-fun e!1809477 () Bool)

(assert (=> start!278108 e!1809477))

(declare-fun b!2857291 () Bool)

(declare-fun tp_is_empty!14925 () Bool)

(declare-fun tp!919597 () Bool)

(assert (=> b!2857291 (= e!1809477 (and tp_is_empty!14925 tp!919597))))

(declare-fun b!2857292 () Bool)

(declare-fun res!1186945 () Bool)

(assert (=> b!2857292 (=> (not res!1186945) (not e!1809476))))

(declare-datatypes ((List!34191 0))(
  ( (Nil!34067) (Cons!34067 (h!39487 C!17370) (t!233222 List!34191)) )
))
(declare-fun prefix!1470 () List!34191)

(assert (=> b!2857292 (= res!1186945 (not (is-Nil!34067 prefix!1470)))))

(declare-fun b!2857293 () Bool)

(assert (=> b!2857293 (= e!1809475 tp_is_empty!14925)))

(declare-fun b!2857294 () Bool)

(declare-fun tp!919595 () Bool)

(declare-fun tp!919598 () Bool)

(assert (=> b!2857294 (= e!1809475 (and tp!919595 tp!919598))))

(declare-fun b!2857295 () Bool)

(declare-fun tp!919593 () Bool)

(declare-fun tp!919594 () Bool)

(assert (=> b!2857295 (= e!1809475 (and tp!919593 tp!919594))))

(declare-fun b!2857296 () Bool)

(declare-fun res!1186946 () Bool)

(assert (=> b!2857296 (=> (not res!1186946) (not e!1809476))))

(declare-fun prefixMatch!902 (Regex!8594 List!34191) Bool)

(assert (=> b!2857296 (= res!1186946 (prefixMatch!902 r!23423 prefix!1470))))

(declare-fun b!2857297 () Bool)

(declare-fun tp!919596 () Bool)

(assert (=> b!2857297 (= e!1809475 tp!919596)))

(declare-fun lt!1014172 () Regex!8594)

(declare-fun lambda!105100 () Int)

(declare-fun matchR!3700 (Regex!8594 List!34191) Bool)

(declare-fun pickWitness!311 (Int) List!34191)

(assert (=> b!2857298 (= e!1809476 (not (matchR!3700 lt!1014172 (pickWitness!311 lambda!105100))))))

(declare-fun Exists!1298 (Int) Bool)

(assert (=> b!2857298 (Exists!1298 lambda!105100)))

(assert (=> b!2857298 (Exists!1298 lambda!105100)))

(declare-datatypes ((Unit!47731 0))(
  ( (Unit!47732) )
))
(declare-fun lt!1014173 () Unit!47731)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!346 (Regex!8594 List!34191) Unit!47731)

(assert (=> b!2857298 (= lt!1014173 (lemmaPrefixMatchThenExistsStringThatMatches!346 lt!1014172 (t!233222 prefix!1470)))))

(declare-fun derivativeStep!2283 (Regex!8594 C!17370) Regex!8594)

(assert (=> b!2857298 (= lt!1014172 (derivativeStep!2283 r!23423 (h!39487 prefix!1470)))))

(assert (= (and start!278108 res!1186947) b!2857296))

(assert (= (and b!2857296 res!1186946) b!2857292))

(assert (= (and b!2857292 res!1186945) b!2857298))

(assert (= (and start!278108 (is-ElementMatch!8594 r!23423)) b!2857293))

(assert (= (and start!278108 (is-Concat!13915 r!23423)) b!2857295))

(assert (= (and start!278108 (is-Star!8594 r!23423)) b!2857297))

(assert (= (and start!278108 (is-Union!8594 r!23423)) b!2857294))

(assert (= (and start!278108 (is-Cons!34067 prefix!1470)) b!2857291))

(declare-fun m!3279241 () Bool)

(assert (=> start!278108 m!3279241))

(declare-fun m!3279243 () Bool)

(assert (=> b!2857296 m!3279243))

(declare-fun m!3279245 () Bool)

(assert (=> b!2857298 m!3279245))

(declare-fun m!3279247 () Bool)

(assert (=> b!2857298 m!3279247))

(declare-fun m!3279249 () Bool)

(assert (=> b!2857298 m!3279249))

(assert (=> b!2857298 m!3279247))

(declare-fun m!3279251 () Bool)

(assert (=> b!2857298 m!3279251))

(declare-fun m!3279253 () Bool)

(assert (=> b!2857298 m!3279253))

(assert (=> b!2857298 m!3279245))

(push 1)

(assert (not b!2857294))

(assert (not b!2857291))

(assert (not b!2857298))

(assert tp_is_empty!14925)

(assert (not b!2857297))

(assert (not b!2857295))

(assert (not b!2857296))

(assert (not start!278108))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!826541 () Bool)

(declare-fun e!1809510 () Bool)

(assert (=> d!826541 e!1809510))

(declare-fun c!460449 () Bool)

(assert (=> d!826541 (= c!460449 (is-EmptyExpr!8594 lt!1014172))))

(declare-fun lt!1014182 () Bool)

(declare-fun e!1809511 () Bool)

(assert (=> d!826541 (= lt!1014182 e!1809511)))

(declare-fun c!460448 () Bool)

(declare-fun isEmpty!18602 (List!34191) Bool)

(assert (=> d!826541 (= c!460448 (isEmpty!18602 (pickWitness!311 lambda!105100)))))

(assert (=> d!826541 (validRegex!3464 lt!1014172)))

(assert (=> d!826541 (= (matchR!3700 lt!1014172 (pickWitness!311 lambda!105100)) lt!1014182)))

(declare-fun b!2857363 () Bool)

(declare-fun e!1809508 () Bool)

(declare-fun e!1809509 () Bool)

(assert (=> b!2857363 (= e!1809508 e!1809509)))

(declare-fun res!1186980 () Bool)

(assert (=> b!2857363 (=> (not res!1186980) (not e!1809509))))

(assert (=> b!2857363 (= res!1186980 (not lt!1014182))))

(declare-fun b!2857364 () Bool)

(declare-fun res!1186977 () Bool)

(declare-fun e!1809506 () Bool)

(assert (=> b!2857364 (=> (not res!1186977) (not e!1809506))))

(declare-fun call!184071 () Bool)

(assert (=> b!2857364 (= res!1186977 (not call!184071))))

(declare-fun b!2857365 () Bool)

(declare-fun head!6277 (List!34191) C!17370)

(assert (=> b!2857365 (= e!1809506 (= (head!6277 (pickWitness!311 lambda!105100)) (c!460439 lt!1014172)))))

(declare-fun b!2857366 () Bool)

(declare-fun e!1809507 () Bool)

(assert (=> b!2857366 (= e!1809509 e!1809507)))

(declare-fun res!1186978 () Bool)

(assert (=> b!2857366 (=> res!1186978 e!1809507)))

(assert (=> b!2857366 (= res!1186978 call!184071)))

(declare-fun b!2857367 () Bool)

(declare-fun nullable!2648 (Regex!8594) Bool)

(assert (=> b!2857367 (= e!1809511 (nullable!2648 lt!1014172))))

(declare-fun b!2857368 () Bool)

(declare-fun res!1186979 () Bool)

(assert (=> b!2857368 (=> res!1186979 e!1809508)))

(assert (=> b!2857368 (= res!1186979 e!1809506)))

(declare-fun res!1186982 () Bool)

(assert (=> b!2857368 (=> (not res!1186982) (not e!1809506))))

(assert (=> b!2857368 (= res!1186982 lt!1014182)))

(declare-fun b!2857369 () Bool)

(declare-fun e!1809505 () Bool)

(assert (=> b!2857369 (= e!1809510 e!1809505)))

(declare-fun c!460447 () Bool)

(assert (=> b!2857369 (= c!460447 (is-EmptyLang!8594 lt!1014172))))

(declare-fun bm!184066 () Bool)

(assert (=> bm!184066 (= call!184071 (isEmpty!18602 (pickWitness!311 lambda!105100)))))

(declare-fun b!2857370 () Bool)

(assert (=> b!2857370 (= e!1809505 (not lt!1014182))))

(declare-fun b!2857371 () Bool)

(declare-fun res!1186984 () Bool)

(assert (=> b!2857371 (=> res!1186984 e!1809508)))

(assert (=> b!2857371 (= res!1186984 (not (is-ElementMatch!8594 lt!1014172)))))

(assert (=> b!2857371 (= e!1809505 e!1809508)))

(declare-fun b!2857372 () Bool)

(declare-fun res!1186981 () Bool)

(assert (=> b!2857372 (=> res!1186981 e!1809507)))

(declare-fun tail!4502 (List!34191) List!34191)

(assert (=> b!2857372 (= res!1186981 (not (isEmpty!18602 (tail!4502 (pickWitness!311 lambda!105100)))))))

(declare-fun b!2857373 () Bool)

(assert (=> b!2857373 (= e!1809510 (= lt!1014182 call!184071))))

(declare-fun b!2857374 () Bool)

(declare-fun res!1186983 () Bool)

(assert (=> b!2857374 (=> (not res!1186983) (not e!1809506))))

(assert (=> b!2857374 (= res!1186983 (isEmpty!18602 (tail!4502 (pickWitness!311 lambda!105100))))))

(declare-fun b!2857375 () Bool)

(assert (=> b!2857375 (= e!1809507 (not (= (head!6277 (pickWitness!311 lambda!105100)) (c!460439 lt!1014172))))))

(declare-fun b!2857376 () Bool)

(assert (=> b!2857376 (= e!1809511 (matchR!3700 (derivativeStep!2283 lt!1014172 (head!6277 (pickWitness!311 lambda!105100))) (tail!4502 (pickWitness!311 lambda!105100))))))

(assert (= (and d!826541 c!460448) b!2857367))

(assert (= (and d!826541 (not c!460448)) b!2857376))

(assert (= (and d!826541 c!460449) b!2857373))

(assert (= (and d!826541 (not c!460449)) b!2857369))

(assert (= (and b!2857369 c!460447) b!2857370))

(assert (= (and b!2857369 (not c!460447)) b!2857371))

(assert (= (and b!2857371 (not res!1186984)) b!2857368))

(assert (= (and b!2857368 res!1186982) b!2857364))

(assert (= (and b!2857364 res!1186977) b!2857374))

(assert (= (and b!2857374 res!1186983) b!2857365))

(assert (= (and b!2857368 (not res!1186979)) b!2857363))

(assert (= (and b!2857363 res!1186980) b!2857366))

(assert (= (and b!2857366 (not res!1186978)) b!2857372))

(assert (= (and b!2857372 (not res!1186981)) b!2857375))

(assert (= (or b!2857373 b!2857364 b!2857366) bm!184066))

(assert (=> b!2857365 m!3279247))

(declare-fun m!3279271 () Bool)

(assert (=> b!2857365 m!3279271))

(assert (=> bm!184066 m!3279247))

(declare-fun m!3279273 () Bool)

(assert (=> bm!184066 m!3279273))

(assert (=> b!2857372 m!3279247))

(declare-fun m!3279275 () Bool)

(assert (=> b!2857372 m!3279275))

(assert (=> b!2857372 m!3279275))

(declare-fun m!3279277 () Bool)

(assert (=> b!2857372 m!3279277))

(assert (=> b!2857374 m!3279247))

(assert (=> b!2857374 m!3279275))

(assert (=> b!2857374 m!3279275))

(assert (=> b!2857374 m!3279277))

(declare-fun m!3279279 () Bool)

(assert (=> b!2857367 m!3279279))

(assert (=> b!2857375 m!3279247))

(assert (=> b!2857375 m!3279271))

(assert (=> b!2857376 m!3279247))

(assert (=> b!2857376 m!3279271))

(assert (=> b!2857376 m!3279271))

(declare-fun m!3279281 () Bool)

(assert (=> b!2857376 m!3279281))

(assert (=> b!2857376 m!3279247))

(assert (=> b!2857376 m!3279275))

(assert (=> b!2857376 m!3279281))

(assert (=> b!2857376 m!3279275))

(declare-fun m!3279283 () Bool)

(assert (=> b!2857376 m!3279283))

(assert (=> d!826541 m!3279247))

(assert (=> d!826541 m!3279273))

(declare-fun m!3279285 () Bool)

(assert (=> d!826541 m!3279285))

(assert (=> b!2857298 d!826541))

(declare-fun bm!184077 () Bool)

(declare-fun call!184085 () Regex!8594)

(declare-fun call!184083 () Regex!8594)

(assert (=> bm!184077 (= call!184085 call!184083)))

(declare-fun b!2857417 () Bool)

(declare-fun c!460470 () Bool)

(assert (=> b!2857417 (= c!460470 (is-Union!8594 r!23423))))

(declare-fun e!1809532 () Regex!8594)

(declare-fun e!1809535 () Regex!8594)

(assert (=> b!2857417 (= e!1809532 e!1809535)))

(declare-fun b!2857418 () Bool)

(declare-fun e!1809536 () Regex!8594)

(assert (=> b!2857418 (= e!1809535 e!1809536)))

(declare-fun c!460471 () Bool)

(assert (=> b!2857418 (= c!460471 (is-Star!8594 r!23423))))

(declare-fun b!2857420 () Bool)

(declare-fun c!460473 () Bool)

(assert (=> b!2857420 (= c!460473 (nullable!2648 (regOne!17700 r!23423)))))

(declare-fun e!1809533 () Regex!8594)

(assert (=> b!2857420 (= e!1809536 e!1809533)))

(declare-fun b!2857421 () Bool)

(declare-fun call!184084 () Regex!8594)

(assert (=> b!2857421 (= e!1809536 (Concat!13915 call!184084 r!23423))))

(declare-fun b!2857422 () Bool)

(declare-fun e!1809534 () Regex!8594)

(assert (=> b!2857422 (= e!1809534 e!1809532)))

(declare-fun c!460474 () Bool)

(assert (=> b!2857422 (= c!460474 (is-ElementMatch!8594 r!23423))))

(declare-fun b!2857423 () Bool)

(assert (=> b!2857423 (= e!1809533 (Union!8594 (Concat!13915 call!184085 (regTwo!17700 r!23423)) EmptyLang!8594))))

(declare-fun bm!184078 () Bool)

(declare-fun call!184082 () Regex!8594)

(assert (=> bm!184078 (= call!184084 call!184082)))

(declare-fun b!2857424 () Bool)

(assert (=> b!2857424 (= e!1809533 (Union!8594 (Concat!13915 call!184084 (regTwo!17700 r!23423)) call!184085))))

(declare-fun bm!184079 () Bool)

(assert (=> bm!184079 (= call!184082 (derivativeStep!2283 (ite c!460470 (regTwo!17701 r!23423) (ite c!460471 (reg!8923 r!23423) (regOne!17700 r!23423))) (h!39487 prefix!1470)))))

(declare-fun bm!184080 () Bool)

(assert (=> bm!184080 (= call!184083 (derivativeStep!2283 (ite c!460470 (regOne!17701 r!23423) (ite c!460473 (regTwo!17700 r!23423) (regOne!17700 r!23423))) (h!39487 prefix!1470)))))

(declare-fun d!826547 () Bool)

(declare-fun lt!1014187 () Regex!8594)

(assert (=> d!826547 (validRegex!3464 lt!1014187)))

(assert (=> d!826547 (= lt!1014187 e!1809534)))

(declare-fun c!460472 () Bool)

(assert (=> d!826547 (= c!460472 (or (is-EmptyExpr!8594 r!23423) (is-EmptyLang!8594 r!23423)))))

(assert (=> d!826547 (validRegex!3464 r!23423)))

(assert (=> d!826547 (= (derivativeStep!2283 r!23423 (h!39487 prefix!1470)) lt!1014187)))

(declare-fun b!2857419 () Bool)

(assert (=> b!2857419 (= e!1809535 (Union!8594 call!184083 call!184082))))

(declare-fun b!2857425 () Bool)

(assert (=> b!2857425 (= e!1809532 (ite (= (h!39487 prefix!1470) (c!460439 r!23423)) EmptyExpr!8594 EmptyLang!8594))))

(declare-fun b!2857426 () Bool)

(assert (=> b!2857426 (= e!1809534 EmptyLang!8594)))

(assert (= (and d!826547 c!460472) b!2857426))

(assert (= (and d!826547 (not c!460472)) b!2857422))

(assert (= (and b!2857422 c!460474) b!2857425))

(assert (= (and b!2857422 (not c!460474)) b!2857417))

(assert (= (and b!2857417 c!460470) b!2857419))

(assert (= (and b!2857417 (not c!460470)) b!2857418))

(assert (= (and b!2857418 c!460471) b!2857421))

(assert (= (and b!2857418 (not c!460471)) b!2857420))

(assert (= (and b!2857420 c!460473) b!2857424))

(assert (= (and b!2857420 (not c!460473)) b!2857423))

(assert (= (or b!2857424 b!2857423) bm!184077))

(assert (= (or b!2857421 b!2857424) bm!184078))

(assert (= (or b!2857419 bm!184078) bm!184079))

(assert (= (or b!2857419 bm!184077) bm!184080))

(declare-fun m!3279287 () Bool)

(assert (=> b!2857420 m!3279287))

(declare-fun m!3279289 () Bool)

(assert (=> bm!184079 m!3279289))

(declare-fun m!3279291 () Bool)

(assert (=> bm!184080 m!3279291))

(declare-fun m!3279293 () Bool)

(assert (=> d!826547 m!3279293))

(assert (=> d!826547 m!3279241))

(assert (=> b!2857298 d!826547))

(declare-fun bs!520292 () Bool)

(declare-fun d!826549 () Bool)

(assert (= bs!520292 (and d!826549 b!2857298)))

(declare-fun lambda!105108 () Int)

(assert (=> bs!520292 (= lambda!105108 lambda!105100)))

(assert (=> d!826549 true))

(assert (=> d!826549 true))

(assert (=> d!826549 (Exists!1298 lambda!105108)))

(declare-fun lt!1014190 () Unit!47731)

(declare-fun choose!16806 (Regex!8594 List!34191) Unit!47731)

(assert (=> d!826549 (= lt!1014190 (choose!16806 lt!1014172 (t!233222 prefix!1470)))))

(assert (=> d!826549 (validRegex!3464 lt!1014172)))

(assert (=> d!826549 (= (lemmaPrefixMatchThenExistsStringThatMatches!346 lt!1014172 (t!233222 prefix!1470)) lt!1014190)))

(declare-fun bs!520293 () Bool)

(assert (= bs!520293 d!826549))

(declare-fun m!3279295 () Bool)

(assert (=> bs!520293 m!3279295))

(declare-fun m!3279297 () Bool)

(assert (=> bs!520293 m!3279297))

(assert (=> bs!520293 m!3279285))

(assert (=> b!2857298 d!826549))

(declare-fun d!826551 () Bool)

(declare-fun choose!16807 (Int) Bool)

(assert (=> d!826551 (= (Exists!1298 lambda!105100) (choose!16807 lambda!105100))))

(declare-fun bs!520294 () Bool)

(assert (= bs!520294 d!826551))

(declare-fun m!3279299 () Bool)

(assert (=> bs!520294 m!3279299))

(assert (=> b!2857298 d!826551))

(declare-fun d!826553 () Bool)

(declare-fun lt!1014193 () List!34191)

(declare-fun dynLambda!14232 (Int List!34191) Bool)

(assert (=> d!826553 (dynLambda!14232 lambda!105100 lt!1014193)))

(declare-fun choose!16808 (Int) List!34191)

(assert (=> d!826553 (= lt!1014193 (choose!16808 lambda!105100))))

(assert (=> d!826553 (Exists!1298 lambda!105100)))

(assert (=> d!826553 (= (pickWitness!311 lambda!105100) lt!1014193)))

(declare-fun b_lambda!85691 () Bool)

(assert (=> (not b_lambda!85691) (not d!826553)))

(declare-fun bs!520295 () Bool)

(assert (= bs!520295 d!826553))

(declare-fun m!3279301 () Bool)

(assert (=> bs!520295 m!3279301))

(declare-fun m!3279303 () Bool)

(assert (=> bs!520295 m!3279303))

(assert (=> bs!520295 m!3279245))

(assert (=> b!2857298 d!826553))

(declare-fun call!184104 () Bool)

(declare-fun c!460485 () Bool)

(declare-fun c!460484 () Bool)

(declare-fun bm!184097 () Bool)

(assert (=> bm!184097 (= call!184104 (validRegex!3464 (ite c!460484 (reg!8923 r!23423) (ite c!460485 (regTwo!17701 r!23423) (regTwo!17700 r!23423)))))))

(declare-fun b!2857457 () Bool)

(declare-fun res!1186998 () Bool)

(declare-fun e!1809562 () Bool)

(assert (=> b!2857457 (=> res!1186998 e!1809562)))

(assert (=> b!2857457 (= res!1186998 (not (is-Concat!13915 r!23423)))))

(declare-fun e!1809563 () Bool)

(assert (=> b!2857457 (= e!1809563 e!1809562)))

(declare-fun b!2857458 () Bool)

(declare-fun e!1809561 () Bool)

(assert (=> b!2857458 (= e!1809561 e!1809563)))

(assert (=> b!2857458 (= c!460485 (is-Union!8594 r!23423))))

(declare-fun b!2857459 () Bool)

(declare-fun e!1809564 () Bool)

(assert (=> b!2857459 (= e!1809562 e!1809564)))

(declare-fun res!1187000 () Bool)

(assert (=> b!2857459 (=> (not res!1187000) (not e!1809564))))

(declare-fun call!184103 () Bool)

(assert (=> b!2857459 (= res!1187000 call!184103)))

(declare-fun bm!184098 () Bool)

(assert (=> bm!184098 (= call!184103 (validRegex!3464 (ite c!460485 (regOne!17701 r!23423) (regOne!17700 r!23423))))))

(declare-fun b!2857460 () Bool)

(declare-fun call!184102 () Bool)

(assert (=> b!2857460 (= e!1809564 call!184102)))

(declare-fun b!2857461 () Bool)

(declare-fun e!1809559 () Bool)

(assert (=> b!2857461 (= e!1809559 call!184102)))

(declare-fun b!2857462 () Bool)

(declare-fun e!1809560 () Bool)

(assert (=> b!2857462 (= e!1809560 call!184104)))

(declare-fun d!826555 () Bool)

(declare-fun res!1187001 () Bool)

(declare-fun e!1809558 () Bool)

(assert (=> d!826555 (=> res!1187001 e!1809558)))

(assert (=> d!826555 (= res!1187001 (is-ElementMatch!8594 r!23423))))

(assert (=> d!826555 (= (validRegex!3464 r!23423) e!1809558)))

(declare-fun b!2857463 () Bool)

(assert (=> b!2857463 (= e!1809561 e!1809560)))

(declare-fun res!1186997 () Bool)

(assert (=> b!2857463 (= res!1186997 (not (nullable!2648 (reg!8923 r!23423))))))

(assert (=> b!2857463 (=> (not res!1186997) (not e!1809560))))

(declare-fun b!2857464 () Bool)

(assert (=> b!2857464 (= e!1809558 e!1809561)))

(assert (=> b!2857464 (= c!460484 (is-Star!8594 r!23423))))

(declare-fun bm!184099 () Bool)

(assert (=> bm!184099 (= call!184102 call!184104)))

(declare-fun b!2857465 () Bool)

(declare-fun res!1186999 () Bool)

(assert (=> b!2857465 (=> (not res!1186999) (not e!1809559))))

(assert (=> b!2857465 (= res!1186999 call!184103)))

(assert (=> b!2857465 (= e!1809563 e!1809559)))

(assert (= (and d!826555 (not res!1187001)) b!2857464))

(assert (= (and b!2857464 c!460484) b!2857463))

(assert (= (and b!2857464 (not c!460484)) b!2857458))

(assert (= (and b!2857463 res!1186997) b!2857462))

(assert (= (and b!2857458 c!460485) b!2857465))

(assert (= (and b!2857458 (not c!460485)) b!2857457))

(assert (= (and b!2857465 res!1186999) b!2857461))

(assert (= (and b!2857457 (not res!1186998)) b!2857459))

(assert (= (and b!2857459 res!1187000) b!2857460))

(assert (= (or b!2857461 b!2857460) bm!184099))

(assert (= (or b!2857465 b!2857459) bm!184098))

(assert (= (or b!2857462 bm!184099) bm!184097))

(declare-fun m!3279309 () Bool)

(assert (=> bm!184097 m!3279309))

(declare-fun m!3279313 () Bool)

(assert (=> bm!184098 m!3279313))

(declare-fun m!3279315 () Bool)

(assert (=> b!2857463 m!3279315))

(assert (=> start!278108 d!826555))

(declare-fun d!826557 () Bool)

(declare-fun c!460488 () Bool)

(assert (=> d!826557 (= c!460488 (isEmpty!18602 prefix!1470))))

(declare-fun e!1809567 () Bool)

(assert (=> d!826557 (= (prefixMatch!902 r!23423 prefix!1470) e!1809567)))

(declare-fun b!2857470 () Bool)

(declare-fun lostCause!748 (Regex!8594) Bool)

(assert (=> b!2857470 (= e!1809567 (not (lostCause!748 r!23423)))))

(declare-fun b!2857471 () Bool)

(assert (=> b!2857471 (= e!1809567 (prefixMatch!902 (derivativeStep!2283 r!23423 (head!6277 prefix!1470)) (tail!4502 prefix!1470)))))

(assert (= (and d!826557 c!460488) b!2857470))

(assert (= (and d!826557 (not c!460488)) b!2857471))

(declare-fun m!3279319 () Bool)

(assert (=> d!826557 m!3279319))

(declare-fun m!3279321 () Bool)

(assert (=> b!2857470 m!3279321))

(declare-fun m!3279323 () Bool)

(assert (=> b!2857471 m!3279323))

(assert (=> b!2857471 m!3279323))

(declare-fun m!3279325 () Bool)

(assert (=> b!2857471 m!3279325))

(declare-fun m!3279327 () Bool)

(assert (=> b!2857471 m!3279327))

(assert (=> b!2857471 m!3279325))

(assert (=> b!2857471 m!3279327))

(declare-fun m!3279329 () Bool)

(assert (=> b!2857471 m!3279329))

(assert (=> b!2857296 d!826557))

(declare-fun e!1809570 () Bool)

(assert (=> b!2857294 (= tp!919595 e!1809570)))

(declare-fun b!2857482 () Bool)

(assert (=> b!2857482 (= e!1809570 tp_is_empty!14925)))

(declare-fun b!2857484 () Bool)

(declare-fun tp!919627 () Bool)

(assert (=> b!2857484 (= e!1809570 tp!919627)))

(declare-fun b!2857483 () Bool)

(declare-fun tp!919630 () Bool)

(declare-fun tp!919629 () Bool)

(assert (=> b!2857483 (= e!1809570 (and tp!919630 tp!919629))))

(declare-fun b!2857485 () Bool)

(declare-fun tp!919628 () Bool)

(declare-fun tp!919631 () Bool)

(assert (=> b!2857485 (= e!1809570 (and tp!919628 tp!919631))))

(assert (= (and b!2857294 (is-ElementMatch!8594 (regOne!17701 r!23423))) b!2857482))

(assert (= (and b!2857294 (is-Concat!13915 (regOne!17701 r!23423))) b!2857483))

(assert (= (and b!2857294 (is-Star!8594 (regOne!17701 r!23423))) b!2857484))

(assert (= (and b!2857294 (is-Union!8594 (regOne!17701 r!23423))) b!2857485))

(declare-fun e!1809571 () Bool)

(assert (=> b!2857294 (= tp!919598 e!1809571)))

(declare-fun b!2857486 () Bool)

(assert (=> b!2857486 (= e!1809571 tp_is_empty!14925)))

(declare-fun b!2857488 () Bool)

(declare-fun tp!919632 () Bool)

(assert (=> b!2857488 (= e!1809571 tp!919632)))

(declare-fun b!2857487 () Bool)

(declare-fun tp!919635 () Bool)

(declare-fun tp!919634 () Bool)

(assert (=> b!2857487 (= e!1809571 (and tp!919635 tp!919634))))

(declare-fun b!2857489 () Bool)

(declare-fun tp!919633 () Bool)

(declare-fun tp!919636 () Bool)

(assert (=> b!2857489 (= e!1809571 (and tp!919633 tp!919636))))

(assert (= (and b!2857294 (is-ElementMatch!8594 (regTwo!17701 r!23423))) b!2857486))

(assert (= (and b!2857294 (is-Concat!13915 (regTwo!17701 r!23423))) b!2857487))

(assert (= (and b!2857294 (is-Star!8594 (regTwo!17701 r!23423))) b!2857488))

(assert (= (and b!2857294 (is-Union!8594 (regTwo!17701 r!23423))) b!2857489))

(declare-fun e!1809572 () Bool)

(assert (=> b!2857297 (= tp!919596 e!1809572)))

(declare-fun b!2857490 () Bool)

(assert (=> b!2857490 (= e!1809572 tp_is_empty!14925)))

(declare-fun b!2857492 () Bool)

(declare-fun tp!919637 () Bool)

(assert (=> b!2857492 (= e!1809572 tp!919637)))

(declare-fun b!2857491 () Bool)

(declare-fun tp!919640 () Bool)

(declare-fun tp!919639 () Bool)

(assert (=> b!2857491 (= e!1809572 (and tp!919640 tp!919639))))

(declare-fun b!2857493 () Bool)

(declare-fun tp!919638 () Bool)

(declare-fun tp!919641 () Bool)

(assert (=> b!2857493 (= e!1809572 (and tp!919638 tp!919641))))

(assert (= (and b!2857297 (is-ElementMatch!8594 (reg!8923 r!23423))) b!2857490))

(assert (= (and b!2857297 (is-Concat!13915 (reg!8923 r!23423))) b!2857491))

(assert (= (and b!2857297 (is-Star!8594 (reg!8923 r!23423))) b!2857492))

(assert (= (and b!2857297 (is-Union!8594 (reg!8923 r!23423))) b!2857493))

(declare-fun b!2857498 () Bool)

(declare-fun e!1809575 () Bool)

(declare-fun tp!919644 () Bool)

(assert (=> b!2857498 (= e!1809575 (and tp_is_empty!14925 tp!919644))))

(assert (=> b!2857291 (= tp!919597 e!1809575)))

(assert (= (and b!2857291 (is-Cons!34067 (t!233222 prefix!1470))) b!2857498))

(declare-fun e!1809576 () Bool)

(assert (=> b!2857295 (= tp!919593 e!1809576)))

(declare-fun b!2857499 () Bool)

(assert (=> b!2857499 (= e!1809576 tp_is_empty!14925)))

(declare-fun b!2857501 () Bool)

(declare-fun tp!919645 () Bool)

(assert (=> b!2857501 (= e!1809576 tp!919645)))

(declare-fun b!2857500 () Bool)

(declare-fun tp!919648 () Bool)

(declare-fun tp!919647 () Bool)

(assert (=> b!2857500 (= e!1809576 (and tp!919648 tp!919647))))

(declare-fun b!2857502 () Bool)

(declare-fun tp!919646 () Bool)

(declare-fun tp!919649 () Bool)

(assert (=> b!2857502 (= e!1809576 (and tp!919646 tp!919649))))

(assert (= (and b!2857295 (is-ElementMatch!8594 (regOne!17700 r!23423))) b!2857499))

(assert (= (and b!2857295 (is-Concat!13915 (regOne!17700 r!23423))) b!2857500))

(assert (= (and b!2857295 (is-Star!8594 (regOne!17700 r!23423))) b!2857501))

(assert (= (and b!2857295 (is-Union!8594 (regOne!17700 r!23423))) b!2857502))

(declare-fun e!1809577 () Bool)

(assert (=> b!2857295 (= tp!919594 e!1809577)))

(declare-fun b!2857503 () Bool)

(assert (=> b!2857503 (= e!1809577 tp_is_empty!14925)))

(declare-fun b!2857505 () Bool)

(declare-fun tp!919650 () Bool)

(assert (=> b!2857505 (= e!1809577 tp!919650)))

(declare-fun b!2857504 () Bool)

(declare-fun tp!919653 () Bool)

(declare-fun tp!919652 () Bool)

(assert (=> b!2857504 (= e!1809577 (and tp!919653 tp!919652))))

(declare-fun b!2857506 () Bool)

(declare-fun tp!919651 () Bool)

(declare-fun tp!919654 () Bool)

(assert (=> b!2857506 (= e!1809577 (and tp!919651 tp!919654))))

(assert (= (and b!2857295 (is-ElementMatch!8594 (regTwo!17700 r!23423))) b!2857503))

(assert (= (and b!2857295 (is-Concat!13915 (regTwo!17700 r!23423))) b!2857504))

(assert (= (and b!2857295 (is-Star!8594 (regTwo!17700 r!23423))) b!2857505))

(assert (= (and b!2857295 (is-Union!8594 (regTwo!17700 r!23423))) b!2857506))

(declare-fun b_lambda!85693 () Bool)

(assert (= b_lambda!85691 (or b!2857298 b_lambda!85693)))

(declare-fun bs!520296 () Bool)

(declare-fun d!826561 () Bool)

(assert (= bs!520296 (and d!826561 b!2857298)))

(declare-fun res!1187002 () Bool)

(declare-fun e!1809578 () Bool)

(assert (=> bs!520296 (=> (not res!1187002) (not e!1809578))))

(assert (=> bs!520296 (= res!1187002 (matchR!3700 lt!1014172 lt!1014193))))

(assert (=> bs!520296 (= (dynLambda!14232 lambda!105100 lt!1014193) e!1809578)))

(declare-fun b!2857507 () Bool)

(declare-fun isPrefix!2675 (List!34191 List!34191) Bool)

(assert (=> b!2857507 (= e!1809578 (isPrefix!2675 (t!233222 prefix!1470) lt!1014193))))

(assert (= (and bs!520296 res!1187002) b!2857507))

(declare-fun m!3279331 () Bool)

(assert (=> bs!520296 m!3279331))

(declare-fun m!3279333 () Bool)

(assert (=> b!2857507 m!3279333))

(assert (=> d!826553 d!826561))

(push 1)

(assert (not b!2857501))

(assert (not b!2857505))

(assert (not b!2857367))

(assert (not bs!520296))

(assert (not d!826549))

(assert (not d!826557))

(assert (not b!2857484))

(assert (not b!2857470))

(assert (not b!2857372))

(assert (not d!826553))

(assert (not bm!184097))

(assert (not b!2857507))

(assert (not b!2857502))

(assert (not b!2857492))

(assert (not b!2857374))

(assert (not d!826551))

(assert (not b!2857489))

(assert (not b!2857376))

(assert (not b!2857365))

(assert (not d!826541))

(assert (not b!2857498))

(assert (not bm!184098))

(assert (not b!2857493))

(assert (not b!2857504))

(assert (not b!2857375))

(assert (not bm!184080))

(assert (not bm!184079))

(assert (not b!2857420))

(assert (not d!826547))

(assert (not bm!184066))

(assert (not b!2857506))

(assert tp_is_empty!14925)

(assert (not b!2857500))

(assert (not b!2857491))

(assert (not b!2857485))

(assert (not b!2857471))

(assert (not b!2857483))

(assert (not b!2857488))

(assert (not b_lambda!85693))

(assert (not b!2857463))

(assert (not b!2857487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

