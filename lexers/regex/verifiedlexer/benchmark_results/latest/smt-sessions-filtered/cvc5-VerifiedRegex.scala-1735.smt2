; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!86768 () Bool)

(assert start!86768)

(declare-fun b!977334 () Bool)

(assert (=> b!977334 true))

(assert (=> b!977334 true))

(declare-fun lambda!34742 () Int)

(declare-fun lambda!34741 () Int)

(assert (=> b!977334 (not (= lambda!34742 lambda!34741))))

(assert (=> b!977334 true))

(assert (=> b!977334 true))

(declare-fun b!977332 () Bool)

(declare-fun e!629241 () Bool)

(declare-fun tp_is_empty!5099 () Bool)

(assert (=> b!977332 (= e!629241 tp_is_empty!5099)))

(declare-fun e!629240 () Bool)

(declare-fun e!629242 () Bool)

(assert (=> b!977334 (= e!629240 e!629242)))

(declare-fun res!443865 () Bool)

(assert (=> b!977334 (=> res!443865 e!629242)))

(declare-datatypes ((C!6026 0))(
  ( (C!6027 (val!3261 Int)) )
))
(declare-datatypes ((List!9958 0))(
  ( (Nil!9942) (Cons!9942 (h!15343 C!6026) (t!101004 List!9958)) )
))
(declare-datatypes ((tuple2!11310 0))(
  ( (tuple2!11311 (_1!6481 List!9958) (_2!6481 List!9958)) )
))
(declare-fun lt!349645 () tuple2!11310)

(declare-fun isEmpty!6260 (List!9958) Bool)

(assert (=> b!977334 (= res!443865 (not (isEmpty!6260 (_2!6481 lt!349645))))))

(declare-datatypes ((Option!2297 0))(
  ( (None!2296) (Some!2296 (v!19713 tuple2!11310)) )
))
(declare-fun lt!349641 () Option!2297)

(declare-fun get!3440 (Option!2297) tuple2!11310)

(assert (=> b!977334 (= lt!349645 (get!3440 lt!349641))))

(declare-fun Exists!465 (Int) Bool)

(assert (=> b!977334 (= (Exists!465 lambda!34741) (Exists!465 lambda!34742))))

(declare-datatypes ((Unit!15115 0))(
  ( (Unit!15116) )
))
(declare-fun lt!349642 () Unit!15115)

(declare-datatypes ((Regex!2728 0))(
  ( (ElementMatch!2728 (c!159597 C!6026)) (Concat!4561 (regOne!5968 Regex!2728) (regTwo!5968 Regex!2728)) (EmptyExpr!2728) (Star!2728 (reg!3057 Regex!2728)) (EmptyLang!2728) (Union!2728 (regOne!5969 Regex!2728) (regTwo!5969 Regex!2728)) )
))
(declare-fun r!15766 () Regex!2728)

(declare-fun s!10566 () List!9958)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!223 (Regex!2728 Regex!2728 List!9958) Unit!15115)

(assert (=> b!977334 (= lt!349642 (lemmaExistCutMatchRandMatchRSpecEquivalent!223 (regOne!5968 r!15766) EmptyExpr!2728 s!10566))))

(declare-fun isDefined!1939 (Option!2297) Bool)

(assert (=> b!977334 (= (isDefined!1939 lt!349641) (Exists!465 lambda!34741))))

(declare-fun findConcatSeparation!403 (Regex!2728 Regex!2728 List!9958 List!9958 List!9958) Option!2297)

(assert (=> b!977334 (= lt!349641 (findConcatSeparation!403 (regOne!5968 r!15766) EmptyExpr!2728 Nil!9942 s!10566 s!10566))))

(declare-fun lt!349646 () Unit!15115)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!403 (Regex!2728 Regex!2728 List!9958) Unit!15115)

(assert (=> b!977334 (= lt!349646 (lemmaFindConcatSeparationEquivalentToExists!403 (regOne!5968 r!15766) EmptyExpr!2728 s!10566))))

(declare-fun b!977335 () Bool)

(declare-fun res!443869 () Bool)

(assert (=> b!977335 (=> res!443869 e!629240)))

(assert (=> b!977335 (= res!443869 (isEmpty!6260 s!10566))))

(declare-fun b!977336 () Bool)

(declare-fun e!629243 () Bool)

(declare-fun tp!298931 () Bool)

(assert (=> b!977336 (= e!629243 (and tp_is_empty!5099 tp!298931))))

(declare-fun b!977337 () Bool)

(declare-fun res!443866 () Bool)

(assert (=> b!977337 (=> res!443866 e!629242)))

(declare-fun matchR!1264 (Regex!2728 List!9958) Bool)

(assert (=> b!977337 (= res!443866 (not (matchR!1264 (regOne!5968 r!15766) (_1!6481 lt!349645))))))

(declare-fun res!443867 () Bool)

(declare-fun e!629244 () Bool)

(assert (=> start!86768 (=> (not res!443867) (not e!629244))))

(declare-fun validRegex!1197 (Regex!2728) Bool)

(assert (=> start!86768 (= res!443867 (validRegex!1197 r!15766))))

(assert (=> start!86768 e!629244))

(assert (=> start!86768 e!629241))

(assert (=> start!86768 e!629243))

(declare-fun b!977333 () Bool)

(declare-fun tp!298932 () Bool)

(assert (=> b!977333 (= e!629241 tp!298932)))

(declare-fun b!977338 () Bool)

(assert (=> b!977338 (= e!629242 (validRegex!1197 (regOne!5968 r!15766)))))

(declare-fun matchRSpec!527 (Regex!2728 List!9958) Bool)

(assert (=> b!977338 (matchRSpec!527 (regOne!5968 r!15766) (_1!6481 lt!349645))))

(declare-fun lt!349644 () Unit!15115)

(declare-fun mainMatchTheorem!527 (Regex!2728 List!9958) Unit!15115)

(assert (=> b!977338 (= lt!349644 (mainMatchTheorem!527 (regOne!5968 r!15766) (_1!6481 lt!349645)))))

(declare-fun b!977339 () Bool)

(declare-fun tp!298934 () Bool)

(declare-fun tp!298929 () Bool)

(assert (=> b!977339 (= e!629241 (and tp!298934 tp!298929))))

(declare-fun b!977340 () Bool)

(assert (=> b!977340 (= e!629244 (not e!629240))))

(declare-fun res!443868 () Bool)

(assert (=> b!977340 (=> res!443868 e!629240)))

(declare-fun lt!349640 () Bool)

(assert (=> b!977340 (= res!443868 (or (not lt!349640) (and (is-Concat!4561 r!15766) (is-EmptyExpr!2728 (regOne!5968 r!15766))) (not (is-Concat!4561 r!15766)) (not (is-EmptyExpr!2728 (regTwo!5968 r!15766)))))))

(assert (=> b!977340 (= lt!349640 (matchRSpec!527 r!15766 s!10566))))

(assert (=> b!977340 (= lt!349640 (matchR!1264 r!15766 s!10566))))

(declare-fun lt!349643 () Unit!15115)

(assert (=> b!977340 (= lt!349643 (mainMatchTheorem!527 r!15766 s!10566))))

(declare-fun b!977341 () Bool)

(declare-fun tp!298930 () Bool)

(declare-fun tp!298933 () Bool)

(assert (=> b!977341 (= e!629241 (and tp!298930 tp!298933))))

(assert (= (and start!86768 res!443867) b!977340))

(assert (= (and b!977340 (not res!443868)) b!977335))

(assert (= (and b!977335 (not res!443869)) b!977334))

(assert (= (and b!977334 (not res!443865)) b!977337))

(assert (= (and b!977337 (not res!443866)) b!977338))

(assert (= (and start!86768 (is-ElementMatch!2728 r!15766)) b!977332))

(assert (= (and start!86768 (is-Concat!4561 r!15766)) b!977339))

(assert (= (and start!86768 (is-Star!2728 r!15766)) b!977333))

(assert (= (and start!86768 (is-Union!2728 r!15766)) b!977341))

(assert (= (and start!86768 (is-Cons!9942 s!10566)) b!977336))

(declare-fun m!1178121 () Bool)

(assert (=> b!977340 m!1178121))

(declare-fun m!1178123 () Bool)

(assert (=> b!977340 m!1178123))

(declare-fun m!1178125 () Bool)

(assert (=> b!977340 m!1178125))

(declare-fun m!1178127 () Bool)

(assert (=> b!977337 m!1178127))

(declare-fun m!1178129 () Bool)

(assert (=> b!977338 m!1178129))

(declare-fun m!1178131 () Bool)

(assert (=> b!977338 m!1178131))

(declare-fun m!1178133 () Bool)

(assert (=> b!977338 m!1178133))

(declare-fun m!1178135 () Bool)

(assert (=> b!977334 m!1178135))

(declare-fun m!1178137 () Bool)

(assert (=> b!977334 m!1178137))

(declare-fun m!1178139 () Bool)

(assert (=> b!977334 m!1178139))

(declare-fun m!1178141 () Bool)

(assert (=> b!977334 m!1178141))

(declare-fun m!1178143 () Bool)

(assert (=> b!977334 m!1178143))

(declare-fun m!1178145 () Bool)

(assert (=> b!977334 m!1178145))

(declare-fun m!1178147 () Bool)

(assert (=> b!977334 m!1178147))

(assert (=> b!977334 m!1178141))

(declare-fun m!1178149 () Bool)

(assert (=> b!977334 m!1178149))

(declare-fun m!1178151 () Bool)

(assert (=> b!977335 m!1178151))

(declare-fun m!1178153 () Bool)

(assert (=> start!86768 m!1178153))

(push 1)

(assert tp_is_empty!5099)

(assert (not b!977333))

(assert (not b!977336))

(assert (not b!977335))

(assert (not b!977341))

(assert (not b!977334))

(assert (not start!86768))

(assert (not b!977340))

(assert (not b!977337))

(assert (not b!977339))

(assert (not b!977338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!977438 () Bool)

(declare-fun e!629300 () Bool)

(declare-fun derivativeStep!650 (Regex!2728 C!6026) Regex!2728)

(declare-fun head!1803 (List!9958) C!6026)

(declare-fun tail!1365 (List!9958) List!9958)

(assert (=> b!977438 (= e!629300 (matchR!1264 (derivativeStep!650 (regOne!5968 r!15766) (head!1803 (_1!6481 lt!349645))) (tail!1365 (_1!6481 lt!349645))))))

(declare-fun b!977439 () Bool)

(declare-fun e!629295 () Bool)

(declare-fun e!629294 () Bool)

(assert (=> b!977439 (= e!629295 e!629294)))

(declare-fun c!159611 () Bool)

(assert (=> b!977439 (= c!159611 (is-EmptyLang!2728 (regOne!5968 r!15766)))))

(declare-fun b!977440 () Bool)

(declare-fun e!629299 () Bool)

(assert (=> b!977440 (= e!629299 (= (head!1803 (_1!6481 lt!349645)) (c!159597 (regOne!5968 r!15766))))))

(declare-fun b!977441 () Bool)

(declare-fun lt!349670 () Bool)

(declare-fun call!62478 () Bool)

(assert (=> b!977441 (= e!629295 (= lt!349670 call!62478))))

(declare-fun b!977442 () Bool)

(assert (=> b!977442 (= e!629294 (not lt!349670))))

(declare-fun b!977443 () Bool)

(declare-fun e!629296 () Bool)

(declare-fun e!629297 () Bool)

(assert (=> b!977443 (= e!629296 e!629297)))

(declare-fun res!443926 () Bool)

(assert (=> b!977443 (=> (not res!443926) (not e!629297))))

(assert (=> b!977443 (= res!443926 (not lt!349670))))

(declare-fun b!977444 () Bool)

(declare-fun e!629298 () Bool)

(assert (=> b!977444 (= e!629297 e!629298)))

(declare-fun res!443929 () Bool)

(assert (=> b!977444 (=> res!443929 e!629298)))

(assert (=> b!977444 (= res!443929 call!62478)))

(declare-fun b!977445 () Bool)

(assert (=> b!977445 (= e!629298 (not (= (head!1803 (_1!6481 lt!349645)) (c!159597 (regOne!5968 r!15766)))))))

(declare-fun b!977446 () Bool)

(declare-fun res!443930 () Bool)

(assert (=> b!977446 (=> res!443930 e!629296)))

(assert (=> b!977446 (= res!443930 e!629299)))

(declare-fun res!443924 () Bool)

(assert (=> b!977446 (=> (not res!443924) (not e!629299))))

(assert (=> b!977446 (= res!443924 lt!349670)))

(declare-fun b!977447 () Bool)

(declare-fun res!443927 () Bool)

(assert (=> b!977447 (=> (not res!443927) (not e!629299))))

(assert (=> b!977447 (= res!443927 (not call!62478))))

(declare-fun bm!62473 () Bool)

(assert (=> bm!62473 (= call!62478 (isEmpty!6260 (_1!6481 lt!349645)))))

(declare-fun b!977449 () Bool)

(declare-fun res!443923 () Bool)

(assert (=> b!977449 (=> (not res!443923) (not e!629299))))

(assert (=> b!977449 (= res!443923 (isEmpty!6260 (tail!1365 (_1!6481 lt!349645))))))

(declare-fun b!977450 () Bool)

(declare-fun res!443928 () Bool)

(assert (=> b!977450 (=> res!443928 e!629298)))

(assert (=> b!977450 (= res!443928 (not (isEmpty!6260 (tail!1365 (_1!6481 lt!349645)))))))

(declare-fun b!977451 () Bool)

(declare-fun nullable!844 (Regex!2728) Bool)

(assert (=> b!977451 (= e!629300 (nullable!844 (regOne!5968 r!15766)))))

(declare-fun b!977448 () Bool)

(declare-fun res!443925 () Bool)

(assert (=> b!977448 (=> res!443925 e!629296)))

(assert (=> b!977448 (= res!443925 (not (is-ElementMatch!2728 (regOne!5968 r!15766))))))

(assert (=> b!977448 (= e!629294 e!629296)))

(declare-fun d!287572 () Bool)

(assert (=> d!287572 e!629295))

(declare-fun c!159610 () Bool)

(assert (=> d!287572 (= c!159610 (is-EmptyExpr!2728 (regOne!5968 r!15766)))))

(assert (=> d!287572 (= lt!349670 e!629300)))

(declare-fun c!159609 () Bool)

(assert (=> d!287572 (= c!159609 (isEmpty!6260 (_1!6481 lt!349645)))))

(assert (=> d!287572 (validRegex!1197 (regOne!5968 r!15766))))

(assert (=> d!287572 (= (matchR!1264 (regOne!5968 r!15766) (_1!6481 lt!349645)) lt!349670)))

(assert (= (and d!287572 c!159609) b!977451))

(assert (= (and d!287572 (not c!159609)) b!977438))

(assert (= (and d!287572 c!159610) b!977441))

(assert (= (and d!287572 (not c!159610)) b!977439))

(assert (= (and b!977439 c!159611) b!977442))

(assert (= (and b!977439 (not c!159611)) b!977448))

(assert (= (and b!977448 (not res!443925)) b!977446))

(assert (= (and b!977446 res!443924) b!977447))

(assert (= (and b!977447 res!443927) b!977449))

(assert (= (and b!977449 res!443923) b!977440))

(assert (= (and b!977446 (not res!443930)) b!977443))

(assert (= (and b!977443 res!443926) b!977444))

(assert (= (and b!977444 (not res!443929)) b!977450))

(assert (= (and b!977450 (not res!443928)) b!977445))

(assert (= (or b!977441 b!977444 b!977447) bm!62473))

(declare-fun m!1178189 () Bool)

(assert (=> d!287572 m!1178189))

(assert (=> d!287572 m!1178129))

(assert (=> bm!62473 m!1178189))

(declare-fun m!1178191 () Bool)

(assert (=> b!977445 m!1178191))

(declare-fun m!1178193 () Bool)

(assert (=> b!977450 m!1178193))

(assert (=> b!977450 m!1178193))

(declare-fun m!1178195 () Bool)

(assert (=> b!977450 m!1178195))

(assert (=> b!977438 m!1178191))

(assert (=> b!977438 m!1178191))

(declare-fun m!1178197 () Bool)

(assert (=> b!977438 m!1178197))

(assert (=> b!977438 m!1178193))

(assert (=> b!977438 m!1178197))

(assert (=> b!977438 m!1178193))

(declare-fun m!1178199 () Bool)

(assert (=> b!977438 m!1178199))

(declare-fun m!1178201 () Bool)

(assert (=> b!977451 m!1178201))

(assert (=> b!977440 m!1178191))

(assert (=> b!977449 m!1178193))

(assert (=> b!977449 m!1178193))

(assert (=> b!977449 m!1178195))

(assert (=> b!977337 d!287572))

(declare-fun d!287576 () Bool)

(assert (=> d!287576 (= (isEmpty!6260 s!10566) (is-Nil!9942 s!10566))))

(assert (=> b!977335 d!287576))

(declare-fun call!62492 () Bool)

(declare-fun c!159616 () Bool)

(declare-fun bm!62486 () Bool)

(declare-fun c!159617 () Bool)

(assert (=> bm!62486 (= call!62492 (validRegex!1197 (ite c!159617 (reg!3057 r!15766) (ite c!159616 (regTwo!5969 r!15766) (regTwo!5968 r!15766)))))))

(declare-fun bm!62487 () Bool)

(declare-fun call!62491 () Bool)

(assert (=> bm!62487 (= call!62491 call!62492)))

(declare-fun b!977470 () Bool)

(declare-fun e!629317 () Bool)

(declare-fun e!629321 () Bool)

(assert (=> b!977470 (= e!629317 e!629321)))

(assert (=> b!977470 (= c!159616 (is-Union!2728 r!15766))))

(declare-fun b!977472 () Bool)

(declare-fun e!629318 () Bool)

(assert (=> b!977472 (= e!629318 call!62491)))

(declare-fun b!977473 () Bool)

(declare-fun e!629319 () Bool)

(assert (=> b!977473 (= e!629319 e!629317)))

(assert (=> b!977473 (= c!159617 (is-Star!2728 r!15766))))

(declare-fun b!977474 () Bool)

(declare-fun e!629316 () Bool)

(assert (=> b!977474 (= e!629316 call!62492)))

(declare-fun d!287578 () Bool)

(declare-fun res!443945 () Bool)

(assert (=> d!287578 (=> res!443945 e!629319)))

(assert (=> d!287578 (= res!443945 (is-ElementMatch!2728 r!15766))))

(assert (=> d!287578 (= (validRegex!1197 r!15766) e!629319)))

(declare-fun b!977471 () Bool)

(declare-fun e!629320 () Bool)

(declare-fun e!629315 () Bool)

(assert (=> b!977471 (= e!629320 e!629315)))

(declare-fun res!443943 () Bool)

(assert (=> b!977471 (=> (not res!443943) (not e!629315))))

(declare-fun call!62493 () Bool)

(assert (=> b!977471 (= res!443943 call!62493)))

(declare-fun b!977475 () Bool)

(declare-fun res!443944 () Bool)

(assert (=> b!977475 (=> res!443944 e!629320)))

(assert (=> b!977475 (= res!443944 (not (is-Concat!4561 r!15766)))))

(assert (=> b!977475 (= e!629321 e!629320)))

(declare-fun b!977476 () Bool)

(assert (=> b!977476 (= e!629317 e!629316)))

(declare-fun res!443941 () Bool)

(assert (=> b!977476 (= res!443941 (not (nullable!844 (reg!3057 r!15766))))))

(assert (=> b!977476 (=> (not res!443941) (not e!629316))))

(declare-fun b!977477 () Bool)

(assert (=> b!977477 (= e!629315 call!62491)))

(declare-fun bm!62488 () Bool)

(assert (=> bm!62488 (= call!62493 (validRegex!1197 (ite c!159616 (regOne!5969 r!15766) (regOne!5968 r!15766))))))

(declare-fun b!977478 () Bool)

(declare-fun res!443942 () Bool)

(assert (=> b!977478 (=> (not res!443942) (not e!629318))))

(assert (=> b!977478 (= res!443942 call!62493)))

(assert (=> b!977478 (= e!629321 e!629318)))

(assert (= (and d!287578 (not res!443945)) b!977473))

(assert (= (and b!977473 c!159617) b!977476))

(assert (= (and b!977473 (not c!159617)) b!977470))

(assert (= (and b!977476 res!443941) b!977474))

(assert (= (and b!977470 c!159616) b!977478))

(assert (= (and b!977470 (not c!159616)) b!977475))

(assert (= (and b!977478 res!443942) b!977472))

(assert (= (and b!977475 (not res!443944)) b!977471))

(assert (= (and b!977471 res!443943) b!977477))

(assert (= (or b!977472 b!977477) bm!62487))

(assert (= (or b!977478 b!977471) bm!62488))

(assert (= (or b!977474 bm!62487) bm!62486))

(declare-fun m!1178203 () Bool)

(assert (=> bm!62486 m!1178203))

(declare-fun m!1178205 () Bool)

(assert (=> b!977476 m!1178205))

(declare-fun m!1178207 () Bool)

(assert (=> bm!62488 m!1178207))

(assert (=> start!86768 d!287578))

(declare-fun bs!243228 () Bool)

(declare-fun b!977530 () Bool)

(assert (= bs!243228 (and b!977530 b!977334)))

(declare-fun lambda!34755 () Int)

(assert (=> bs!243228 (not (= lambda!34755 lambda!34741))))

(assert (=> bs!243228 (not (= lambda!34755 lambda!34742))))

(assert (=> b!977530 true))

(assert (=> b!977530 true))

(declare-fun bs!243229 () Bool)

(declare-fun b!977528 () Bool)

(assert (= bs!243229 (and b!977528 b!977334)))

(declare-fun lambda!34756 () Int)

(assert (=> bs!243229 (not (= lambda!34756 lambda!34741))))

(assert (=> bs!243229 (= (= (regTwo!5968 r!15766) EmptyExpr!2728) (= lambda!34756 lambda!34742))))

(declare-fun bs!243230 () Bool)

(assert (= bs!243230 (and b!977528 b!977530)))

(assert (=> bs!243230 (not (= lambda!34756 lambda!34755))))

(assert (=> b!977528 true))

(assert (=> b!977528 true))

(declare-fun b!977520 () Bool)

(declare-fun e!629353 () Bool)

(declare-fun e!629352 () Bool)

(assert (=> b!977520 (= e!629353 e!629352)))

(declare-fun c!159631 () Bool)

(assert (=> b!977520 (= c!159631 (is-Star!2728 r!15766))))

(declare-fun b!977521 () Bool)

(declare-fun e!629350 () Bool)

(assert (=> b!977521 (= e!629350 (matchRSpec!527 (regTwo!5969 r!15766) s!10566))))

(declare-fun call!62501 () Bool)

(declare-fun bm!62496 () Bool)

(assert (=> bm!62496 (= call!62501 (Exists!465 (ite c!159631 lambda!34755 lambda!34756)))))

(declare-fun b!977522 () Bool)

(declare-fun e!629347 () Bool)

(declare-fun call!62502 () Bool)

(assert (=> b!977522 (= e!629347 call!62502)))

(declare-fun bm!62497 () Bool)

(assert (=> bm!62497 (= call!62502 (isEmpty!6260 s!10566))))

(declare-fun b!977523 () Bool)

(declare-fun e!629348 () Bool)

(assert (=> b!977523 (= e!629348 (= s!10566 (Cons!9942 (c!159597 r!15766) Nil!9942)))))

(declare-fun b!977525 () Bool)

(declare-fun c!159628 () Bool)

(assert (=> b!977525 (= c!159628 (is-Union!2728 r!15766))))

(assert (=> b!977525 (= e!629348 e!629353)))

(declare-fun b!977526 () Bool)

(declare-fun res!443967 () Bool)

(declare-fun e!629351 () Bool)

(assert (=> b!977526 (=> res!443967 e!629351)))

(assert (=> b!977526 (= res!443967 call!62502)))

(assert (=> b!977526 (= e!629352 e!629351)))

(declare-fun b!977527 () Bool)

(declare-fun e!629349 () Bool)

(assert (=> b!977527 (= e!629347 e!629349)))

(declare-fun res!443968 () Bool)

(assert (=> b!977527 (= res!443968 (not (is-EmptyLang!2728 r!15766)))))

(assert (=> b!977527 (=> (not res!443968) (not e!629349))))

(assert (=> b!977528 (= e!629352 call!62501)))

(declare-fun b!977529 () Bool)

(assert (=> b!977529 (= e!629353 e!629350)))

(declare-fun res!443969 () Bool)

(assert (=> b!977529 (= res!443969 (matchRSpec!527 (regOne!5969 r!15766) s!10566))))

(assert (=> b!977529 (=> res!443969 e!629350)))

(assert (=> b!977530 (= e!629351 call!62501)))

(declare-fun b!977524 () Bool)

(declare-fun c!159630 () Bool)

(assert (=> b!977524 (= c!159630 (is-ElementMatch!2728 r!15766))))

(assert (=> b!977524 (= e!629349 e!629348)))

(declare-fun d!287580 () Bool)

(declare-fun c!159629 () Bool)

(assert (=> d!287580 (= c!159629 (is-EmptyExpr!2728 r!15766))))

(assert (=> d!287580 (= (matchRSpec!527 r!15766 s!10566) e!629347)))

(assert (= (and d!287580 c!159629) b!977522))

(assert (= (and d!287580 (not c!159629)) b!977527))

(assert (= (and b!977527 res!443968) b!977524))

(assert (= (and b!977524 c!159630) b!977523))

(assert (= (and b!977524 (not c!159630)) b!977525))

(assert (= (and b!977525 c!159628) b!977529))

(assert (= (and b!977525 (not c!159628)) b!977520))

(assert (= (and b!977529 (not res!443969)) b!977521))

(assert (= (and b!977520 c!159631) b!977526))

(assert (= (and b!977520 (not c!159631)) b!977528))

(assert (= (and b!977526 (not res!443967)) b!977530))

(assert (= (or b!977530 b!977528) bm!62496))

(assert (= (or b!977522 b!977526) bm!62497))

(declare-fun m!1178215 () Bool)

(assert (=> b!977521 m!1178215))

(declare-fun m!1178217 () Bool)

(assert (=> bm!62496 m!1178217))

(assert (=> bm!62497 m!1178151))

(declare-fun m!1178219 () Bool)

(assert (=> b!977529 m!1178219))

(assert (=> b!977340 d!287580))

(declare-fun b!977531 () Bool)

(declare-fun e!629360 () Bool)

(assert (=> b!977531 (= e!629360 (matchR!1264 (derivativeStep!650 r!15766 (head!1803 s!10566)) (tail!1365 s!10566)))))

(declare-fun b!977532 () Bool)

(declare-fun e!629355 () Bool)

(declare-fun e!629354 () Bool)

(assert (=> b!977532 (= e!629355 e!629354)))

(declare-fun c!159634 () Bool)

(assert (=> b!977532 (= c!159634 (is-EmptyLang!2728 r!15766))))

(declare-fun b!977533 () Bool)

(declare-fun e!629359 () Bool)

(assert (=> b!977533 (= e!629359 (= (head!1803 s!10566) (c!159597 r!15766)))))

(declare-fun b!977534 () Bool)

(declare-fun lt!349671 () Bool)

(declare-fun call!62503 () Bool)

(assert (=> b!977534 (= e!629355 (= lt!349671 call!62503))))

(declare-fun b!977535 () Bool)

(assert (=> b!977535 (= e!629354 (not lt!349671))))

(declare-fun b!977536 () Bool)

(declare-fun e!629356 () Bool)

(declare-fun e!629357 () Bool)

(assert (=> b!977536 (= e!629356 e!629357)))

(declare-fun res!443973 () Bool)

(assert (=> b!977536 (=> (not res!443973) (not e!629357))))

(assert (=> b!977536 (= res!443973 (not lt!349671))))

(declare-fun b!977537 () Bool)

(declare-fun e!629358 () Bool)

(assert (=> b!977537 (= e!629357 e!629358)))

(declare-fun res!443976 () Bool)

(assert (=> b!977537 (=> res!443976 e!629358)))

(assert (=> b!977537 (= res!443976 call!62503)))

(declare-fun b!977538 () Bool)

(assert (=> b!977538 (= e!629358 (not (= (head!1803 s!10566) (c!159597 r!15766))))))

(declare-fun b!977539 () Bool)

(declare-fun res!443977 () Bool)

(assert (=> b!977539 (=> res!443977 e!629356)))

(assert (=> b!977539 (= res!443977 e!629359)))

(declare-fun res!443971 () Bool)

(assert (=> b!977539 (=> (not res!443971) (not e!629359))))

(assert (=> b!977539 (= res!443971 lt!349671)))

(declare-fun b!977540 () Bool)

(declare-fun res!443974 () Bool)

(assert (=> b!977540 (=> (not res!443974) (not e!629359))))

(assert (=> b!977540 (= res!443974 (not call!62503))))

(declare-fun bm!62498 () Bool)

(assert (=> bm!62498 (= call!62503 (isEmpty!6260 s!10566))))

(declare-fun b!977542 () Bool)

(declare-fun res!443970 () Bool)

(assert (=> b!977542 (=> (not res!443970) (not e!629359))))

(assert (=> b!977542 (= res!443970 (isEmpty!6260 (tail!1365 s!10566)))))

(declare-fun b!977543 () Bool)

(declare-fun res!443975 () Bool)

(assert (=> b!977543 (=> res!443975 e!629358)))

(assert (=> b!977543 (= res!443975 (not (isEmpty!6260 (tail!1365 s!10566))))))

(declare-fun b!977544 () Bool)

(assert (=> b!977544 (= e!629360 (nullable!844 r!15766))))

(declare-fun b!977541 () Bool)

(declare-fun res!443972 () Bool)

(assert (=> b!977541 (=> res!443972 e!629356)))

(assert (=> b!977541 (= res!443972 (not (is-ElementMatch!2728 r!15766)))))

(assert (=> b!977541 (= e!629354 e!629356)))

(declare-fun d!287584 () Bool)

(assert (=> d!287584 e!629355))

(declare-fun c!159633 () Bool)

(assert (=> d!287584 (= c!159633 (is-EmptyExpr!2728 r!15766))))

(assert (=> d!287584 (= lt!349671 e!629360)))

(declare-fun c!159632 () Bool)

(assert (=> d!287584 (= c!159632 (isEmpty!6260 s!10566))))

(assert (=> d!287584 (validRegex!1197 r!15766)))

(assert (=> d!287584 (= (matchR!1264 r!15766 s!10566) lt!349671)))

(assert (= (and d!287584 c!159632) b!977544))

(assert (= (and d!287584 (not c!159632)) b!977531))

(assert (= (and d!287584 c!159633) b!977534))

(assert (= (and d!287584 (not c!159633)) b!977532))

(assert (= (and b!977532 c!159634) b!977535))

(assert (= (and b!977532 (not c!159634)) b!977541))

(assert (= (and b!977541 (not res!443972)) b!977539))

(assert (= (and b!977539 res!443971) b!977540))

(assert (= (and b!977540 res!443974) b!977542))

(assert (= (and b!977542 res!443970) b!977533))

(assert (= (and b!977539 (not res!443977)) b!977536))

(assert (= (and b!977536 res!443973) b!977537))

(assert (= (and b!977537 (not res!443976)) b!977543))

(assert (= (and b!977543 (not res!443975)) b!977538))

(assert (= (or b!977534 b!977537 b!977540) bm!62498))

(assert (=> d!287584 m!1178151))

(assert (=> d!287584 m!1178153))

(assert (=> bm!62498 m!1178151))

(declare-fun m!1178221 () Bool)

(assert (=> b!977538 m!1178221))

(declare-fun m!1178223 () Bool)

(assert (=> b!977543 m!1178223))

(assert (=> b!977543 m!1178223))

(declare-fun m!1178225 () Bool)

(assert (=> b!977543 m!1178225))

(assert (=> b!977531 m!1178221))

(assert (=> b!977531 m!1178221))

(declare-fun m!1178227 () Bool)

(assert (=> b!977531 m!1178227))

(assert (=> b!977531 m!1178223))

(assert (=> b!977531 m!1178227))

(assert (=> b!977531 m!1178223))

(declare-fun m!1178229 () Bool)

(assert (=> b!977531 m!1178229))

(declare-fun m!1178231 () Bool)

(assert (=> b!977544 m!1178231))

(assert (=> b!977533 m!1178221))

(assert (=> b!977542 m!1178223))

(assert (=> b!977542 m!1178223))

(assert (=> b!977542 m!1178225))

(assert (=> b!977340 d!287584))

(declare-fun d!287586 () Bool)

(assert (=> d!287586 (= (matchR!1264 r!15766 s!10566) (matchRSpec!527 r!15766 s!10566))))

(declare-fun lt!349674 () Unit!15115)

(declare-fun choose!6190 (Regex!2728 List!9958) Unit!15115)

(assert (=> d!287586 (= lt!349674 (choose!6190 r!15766 s!10566))))

(assert (=> d!287586 (validRegex!1197 r!15766)))

(assert (=> d!287586 (= (mainMatchTheorem!527 r!15766 s!10566) lt!349674)))

(declare-fun bs!243231 () Bool)

(assert (= bs!243231 d!287586))

(assert (=> bs!243231 m!1178123))

(assert (=> bs!243231 m!1178121))

(declare-fun m!1178233 () Bool)

(assert (=> bs!243231 m!1178233))

(assert (=> bs!243231 m!1178153))

(assert (=> b!977340 d!287586))

(declare-fun b!977590 () Bool)

(declare-fun res!444006 () Bool)

(declare-fun e!629387 () Bool)

(assert (=> b!977590 (=> (not res!444006) (not e!629387))))

(declare-fun lt!349692 () Option!2297)

(assert (=> b!977590 (= res!444006 (matchR!1264 (regOne!5968 r!15766) (_1!6481 (get!3440 lt!349692))))))

(declare-fun b!977591 () Bool)

(declare-fun e!629388 () Bool)

(assert (=> b!977591 (= e!629388 (matchR!1264 EmptyExpr!2728 s!10566))))

(declare-fun b!977592 () Bool)

(declare-fun e!629390 () Bool)

(assert (=> b!977592 (= e!629390 (not (isDefined!1939 lt!349692)))))

(declare-fun d!287588 () Bool)

(assert (=> d!287588 e!629390))

(declare-fun res!444004 () Bool)

(assert (=> d!287588 (=> res!444004 e!629390)))

(assert (=> d!287588 (= res!444004 e!629387)))

(declare-fun res!444003 () Bool)

(assert (=> d!287588 (=> (not res!444003) (not e!629387))))

(assert (=> d!287588 (= res!444003 (isDefined!1939 lt!349692))))

(declare-fun e!629389 () Option!2297)

(assert (=> d!287588 (= lt!349692 e!629389)))

(declare-fun c!159646 () Bool)

(assert (=> d!287588 (= c!159646 e!629388)))

(declare-fun res!444005 () Bool)

(assert (=> d!287588 (=> (not res!444005) (not e!629388))))

(assert (=> d!287588 (= res!444005 (matchR!1264 (regOne!5968 r!15766) Nil!9942))))

(assert (=> d!287588 (validRegex!1197 (regOne!5968 r!15766))))

(assert (=> d!287588 (= (findConcatSeparation!403 (regOne!5968 r!15766) EmptyExpr!2728 Nil!9942 s!10566 s!10566) lt!349692)))

(declare-fun b!977593 () Bool)

(assert (=> b!977593 (= e!629389 (Some!2296 (tuple2!11311 Nil!9942 s!10566)))))

(declare-fun b!977594 () Bool)

(declare-fun ++!2695 (List!9958 List!9958) List!9958)

(assert (=> b!977594 (= e!629387 (= (++!2695 (_1!6481 (get!3440 lt!349692)) (_2!6481 (get!3440 lt!349692))) s!10566))))

(declare-fun b!977595 () Bool)

(declare-fun e!629386 () Option!2297)

(assert (=> b!977595 (= e!629386 None!2296)))

(declare-fun b!977596 () Bool)

(declare-fun lt!349690 () Unit!15115)

(declare-fun lt!349691 () Unit!15115)

(assert (=> b!977596 (= lt!349690 lt!349691)))

(assert (=> b!977596 (= (++!2695 (++!2695 Nil!9942 (Cons!9942 (h!15343 s!10566) Nil!9942)) (t!101004 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!296 (List!9958 C!6026 List!9958 List!9958) Unit!15115)

(assert (=> b!977596 (= lt!349691 (lemmaMoveElementToOtherListKeepsConcatEq!296 Nil!9942 (h!15343 s!10566) (t!101004 s!10566) s!10566))))

(assert (=> b!977596 (= e!629386 (findConcatSeparation!403 (regOne!5968 r!15766) EmptyExpr!2728 (++!2695 Nil!9942 (Cons!9942 (h!15343 s!10566) Nil!9942)) (t!101004 s!10566) s!10566))))

(declare-fun b!977597 () Bool)

(declare-fun res!444007 () Bool)

(assert (=> b!977597 (=> (not res!444007) (not e!629387))))

(assert (=> b!977597 (= res!444007 (matchR!1264 EmptyExpr!2728 (_2!6481 (get!3440 lt!349692))))))

(declare-fun b!977598 () Bool)

(assert (=> b!977598 (= e!629389 e!629386)))

(declare-fun c!159645 () Bool)

(assert (=> b!977598 (= c!159645 (is-Nil!9942 s!10566))))

(assert (= (and d!287588 res!444005) b!977591))

(assert (= (and d!287588 c!159646) b!977593))

(assert (= (and d!287588 (not c!159646)) b!977598))

(assert (= (and b!977598 c!159645) b!977595))

(assert (= (and b!977598 (not c!159645)) b!977596))

(assert (= (and d!287588 res!444003) b!977590))

(assert (= (and b!977590 res!444006) b!977597))

(assert (= (and b!977597 res!444007) b!977594))

(assert (= (and d!287588 (not res!444004)) b!977592))

(declare-fun m!1178235 () Bool)

(assert (=> b!977592 m!1178235))

(declare-fun m!1178237 () Bool)

(assert (=> b!977594 m!1178237))

(declare-fun m!1178239 () Bool)

(assert (=> b!977594 m!1178239))

(declare-fun m!1178241 () Bool)

(assert (=> b!977596 m!1178241))

(assert (=> b!977596 m!1178241))

(declare-fun m!1178243 () Bool)

(assert (=> b!977596 m!1178243))

(declare-fun m!1178245 () Bool)

(assert (=> b!977596 m!1178245))

(assert (=> b!977596 m!1178241))

(declare-fun m!1178247 () Bool)

(assert (=> b!977596 m!1178247))

(assert (=> b!977590 m!1178237))

(declare-fun m!1178249 () Bool)

(assert (=> b!977590 m!1178249))

(declare-fun m!1178251 () Bool)

(assert (=> b!977591 m!1178251))

(assert (=> d!287588 m!1178235))

(declare-fun m!1178253 () Bool)

(assert (=> d!287588 m!1178253))

(assert (=> d!287588 m!1178129))

(assert (=> b!977597 m!1178237))

(declare-fun m!1178255 () Bool)

(assert (=> b!977597 m!1178255))

(assert (=> b!977334 d!287588))

(declare-fun d!287590 () Bool)

(assert (=> d!287590 (= (isEmpty!6260 (_2!6481 lt!349645)) (is-Nil!9942 (_2!6481 lt!349645)))))

(assert (=> b!977334 d!287590))

(declare-fun bs!243234 () Bool)

(declare-fun d!287592 () Bool)

(assert (= bs!243234 (and d!287592 b!977334)))

(declare-fun lambda!34759 () Int)

(assert (=> bs!243234 (= lambda!34759 lambda!34741)))

(assert (=> bs!243234 (not (= lambda!34759 lambda!34742))))

(declare-fun bs!243235 () Bool)

(assert (= bs!243235 (and d!287592 b!977530)))

(assert (=> bs!243235 (not (= lambda!34759 lambda!34755))))

(declare-fun bs!243236 () Bool)

(assert (= bs!243236 (and d!287592 b!977528)))

(assert (=> bs!243236 (not (= lambda!34759 lambda!34756))))

(assert (=> d!287592 true))

(assert (=> d!287592 true))

(assert (=> d!287592 true))

(assert (=> d!287592 (= (isDefined!1939 (findConcatSeparation!403 (regOne!5968 r!15766) EmptyExpr!2728 Nil!9942 s!10566 s!10566)) (Exists!465 lambda!34759))))

(declare-fun lt!349695 () Unit!15115)

(declare-fun choose!6191 (Regex!2728 Regex!2728 List!9958) Unit!15115)

(assert (=> d!287592 (= lt!349695 (choose!6191 (regOne!5968 r!15766) EmptyExpr!2728 s!10566))))

(assert (=> d!287592 (validRegex!1197 (regOne!5968 r!15766))))

(assert (=> d!287592 (= (lemmaFindConcatSeparationEquivalentToExists!403 (regOne!5968 r!15766) EmptyExpr!2728 s!10566) lt!349695)))

(declare-fun bs!243237 () Bool)

(assert (= bs!243237 d!287592))

(declare-fun m!1178283 () Bool)

(assert (=> bs!243237 m!1178283))

(assert (=> bs!243237 m!1178139))

(assert (=> bs!243237 m!1178129))

(declare-fun m!1178285 () Bool)

(assert (=> bs!243237 m!1178285))

(assert (=> bs!243237 m!1178139))

(declare-fun m!1178287 () Bool)

(assert (=> bs!243237 m!1178287))

(assert (=> b!977334 d!287592))

(declare-fun d!287602 () Bool)

(declare-fun choose!6192 (Int) Bool)

(assert (=> d!287602 (= (Exists!465 lambda!34742) (choose!6192 lambda!34742))))

(declare-fun bs!243238 () Bool)

(assert (= bs!243238 d!287602))

(declare-fun m!1178289 () Bool)

(assert (=> bs!243238 m!1178289))

(assert (=> b!977334 d!287602))

(declare-fun d!287604 () Bool)

(declare-fun isEmpty!6262 (Option!2297) Bool)

(assert (=> d!287604 (= (isDefined!1939 lt!349641) (not (isEmpty!6262 lt!349641)))))

(declare-fun bs!243239 () Bool)

(assert (= bs!243239 d!287604))

(declare-fun m!1178291 () Bool)

(assert (=> bs!243239 m!1178291))

(assert (=> b!977334 d!287604))

(declare-fun bs!243240 () Bool)

(declare-fun d!287606 () Bool)

(assert (= bs!243240 (and d!287606 d!287592)))

(declare-fun lambda!34766 () Int)

(assert (=> bs!243240 (= lambda!34766 lambda!34759)))

(declare-fun bs!243241 () Bool)

(assert (= bs!243241 (and d!287606 b!977334)))

(assert (=> bs!243241 (= lambda!34766 lambda!34741)))

(assert (=> bs!243241 (not (= lambda!34766 lambda!34742))))

(declare-fun bs!243242 () Bool)

(assert (= bs!243242 (and d!287606 b!977530)))

(assert (=> bs!243242 (not (= lambda!34766 lambda!34755))))

(declare-fun bs!243243 () Bool)

(assert (= bs!243243 (and d!287606 b!977528)))

(assert (=> bs!243243 (not (= lambda!34766 lambda!34756))))

(assert (=> d!287606 true))

(assert (=> d!287606 true))

(assert (=> d!287606 true))

(declare-fun lambda!34767 () Int)

(assert (=> bs!243240 (not (= lambda!34767 lambda!34759))))

(declare-fun bs!243244 () Bool)

(assert (= bs!243244 d!287606))

(assert (=> bs!243244 (not (= lambda!34767 lambda!34766))))

(assert (=> bs!243241 (not (= lambda!34767 lambda!34741))))

(assert (=> bs!243241 (= lambda!34767 lambda!34742)))

(assert (=> bs!243242 (not (= lambda!34767 lambda!34755))))

(assert (=> bs!243243 (= (= EmptyExpr!2728 (regTwo!5968 r!15766)) (= lambda!34767 lambda!34756))))

(assert (=> d!287606 true))

(assert (=> d!287606 true))

(assert (=> d!287606 true))

(assert (=> d!287606 (= (Exists!465 lambda!34766) (Exists!465 lambda!34767))))

(declare-fun lt!349700 () Unit!15115)

(declare-fun choose!6193 (Regex!2728 Regex!2728 List!9958) Unit!15115)

(assert (=> d!287606 (= lt!349700 (choose!6193 (regOne!5968 r!15766) EmptyExpr!2728 s!10566))))

(assert (=> d!287606 (validRegex!1197 (regOne!5968 r!15766))))

(assert (=> d!287606 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!223 (regOne!5968 r!15766) EmptyExpr!2728 s!10566) lt!349700)))

(declare-fun m!1178293 () Bool)

(assert (=> bs!243244 m!1178293))

(declare-fun m!1178295 () Bool)

(assert (=> bs!243244 m!1178295))

(declare-fun m!1178297 () Bool)

(assert (=> bs!243244 m!1178297))

(assert (=> bs!243244 m!1178129))

(assert (=> b!977334 d!287606))

(declare-fun d!287608 () Bool)

(assert (=> d!287608 (= (get!3440 lt!349641) (v!19713 lt!349641))))

(assert (=> b!977334 d!287608))

(declare-fun d!287610 () Bool)

(assert (=> d!287610 (= (Exists!465 lambda!34741) (choose!6192 lambda!34741))))

(declare-fun bs!243245 () Bool)

(assert (= bs!243245 d!287610))

(declare-fun m!1178299 () Bool)

(assert (=> bs!243245 m!1178299))

(assert (=> b!977334 d!287610))

(declare-fun c!159648 () Bool)

(declare-fun bm!62499 () Bool)

(declare-fun call!62505 () Bool)

(declare-fun c!159647 () Bool)

(assert (=> bm!62499 (= call!62505 (validRegex!1197 (ite c!159648 (reg!3057 (regOne!5968 r!15766)) (ite c!159647 (regTwo!5969 (regOne!5968 r!15766)) (regTwo!5968 (regOne!5968 r!15766))))))))

(declare-fun bm!62500 () Bool)

(declare-fun call!62504 () Bool)

(assert (=> bm!62500 (= call!62504 call!62505)))

(declare-fun b!977615 () Bool)

(declare-fun e!629401 () Bool)

(declare-fun e!629405 () Bool)

(assert (=> b!977615 (= e!629401 e!629405)))

(assert (=> b!977615 (= c!159647 (is-Union!2728 (regOne!5968 r!15766)))))

(declare-fun b!977617 () Bool)

(declare-fun e!629402 () Bool)

(assert (=> b!977617 (= e!629402 call!62504)))

(declare-fun b!977618 () Bool)

(declare-fun e!629403 () Bool)

(assert (=> b!977618 (= e!629403 e!629401)))

(assert (=> b!977618 (= c!159648 (is-Star!2728 (regOne!5968 r!15766)))))

(declare-fun b!977619 () Bool)

(declare-fun e!629400 () Bool)

(assert (=> b!977619 (= e!629400 call!62505)))

(declare-fun d!287612 () Bool)

(declare-fun res!444028 () Bool)

(assert (=> d!287612 (=> res!444028 e!629403)))

(assert (=> d!287612 (= res!444028 (is-ElementMatch!2728 (regOne!5968 r!15766)))))

(assert (=> d!287612 (= (validRegex!1197 (regOne!5968 r!15766)) e!629403)))

(declare-fun b!977616 () Bool)

(declare-fun e!629404 () Bool)

(declare-fun e!629399 () Bool)

(assert (=> b!977616 (= e!629404 e!629399)))

(declare-fun res!444026 () Bool)

(assert (=> b!977616 (=> (not res!444026) (not e!629399))))

(declare-fun call!62506 () Bool)

(assert (=> b!977616 (= res!444026 call!62506)))

(declare-fun b!977620 () Bool)

(declare-fun res!444027 () Bool)

(assert (=> b!977620 (=> res!444027 e!629404)))

(assert (=> b!977620 (= res!444027 (not (is-Concat!4561 (regOne!5968 r!15766))))))

(assert (=> b!977620 (= e!629405 e!629404)))

(declare-fun b!977621 () Bool)

(assert (=> b!977621 (= e!629401 e!629400)))

(declare-fun res!444024 () Bool)

(assert (=> b!977621 (= res!444024 (not (nullable!844 (reg!3057 (regOne!5968 r!15766)))))))

(assert (=> b!977621 (=> (not res!444024) (not e!629400))))

(declare-fun b!977622 () Bool)

(assert (=> b!977622 (= e!629399 call!62504)))

(declare-fun bm!62501 () Bool)

(assert (=> bm!62501 (= call!62506 (validRegex!1197 (ite c!159647 (regOne!5969 (regOne!5968 r!15766)) (regOne!5968 (regOne!5968 r!15766)))))))

(declare-fun b!977623 () Bool)

(declare-fun res!444025 () Bool)

(assert (=> b!977623 (=> (not res!444025) (not e!629402))))

(assert (=> b!977623 (= res!444025 call!62506)))

(assert (=> b!977623 (= e!629405 e!629402)))

(assert (= (and d!287612 (not res!444028)) b!977618))

(assert (= (and b!977618 c!159648) b!977621))

(assert (= (and b!977618 (not c!159648)) b!977615))

(assert (= (and b!977621 res!444024) b!977619))

(assert (= (and b!977615 c!159647) b!977623))

(assert (= (and b!977615 (not c!159647)) b!977620))

(assert (= (and b!977623 res!444025) b!977617))

(assert (= (and b!977620 (not res!444027)) b!977616))

(assert (= (and b!977616 res!444026) b!977622))

(assert (= (or b!977617 b!977622) bm!62500))

(assert (= (or b!977623 b!977616) bm!62501))

(assert (= (or b!977619 bm!62500) bm!62499))

(declare-fun m!1178301 () Bool)

(assert (=> bm!62499 m!1178301))

(declare-fun m!1178303 () Bool)

(assert (=> b!977621 m!1178303))

(declare-fun m!1178305 () Bool)

(assert (=> bm!62501 m!1178305))

(assert (=> b!977338 d!287612))

(declare-fun bs!243247 () Bool)

(declare-fun b!977634 () Bool)

(assert (= bs!243247 (and b!977634 d!287606)))

(declare-fun lambda!34769 () Int)

(assert (=> bs!243247 (not (= lambda!34769 lambda!34767))))

(declare-fun bs!243248 () Bool)

(assert (= bs!243248 (and b!977634 d!287592)))

(assert (=> bs!243248 (not (= lambda!34769 lambda!34759))))

(assert (=> bs!243247 (not (= lambda!34769 lambda!34766))))

(declare-fun bs!243249 () Bool)

(assert (= bs!243249 (and b!977634 b!977334)))

(assert (=> bs!243249 (not (= lambda!34769 lambda!34741))))

(assert (=> bs!243249 (not (= lambda!34769 lambda!34742))))

(declare-fun bs!243250 () Bool)

(assert (= bs!243250 (and b!977634 b!977530)))

(assert (=> bs!243250 (= (and (= (_1!6481 lt!349645) s!10566) (= (reg!3057 (regOne!5968 r!15766)) (reg!3057 r!15766)) (= (regOne!5968 r!15766) r!15766)) (= lambda!34769 lambda!34755))))

(declare-fun bs!243251 () Bool)

(assert (= bs!243251 (and b!977634 b!977528)))

(assert (=> bs!243251 (not (= lambda!34769 lambda!34756))))

(assert (=> b!977634 true))

(assert (=> b!977634 true))

(declare-fun bs!243253 () Bool)

(declare-fun b!977632 () Bool)

(assert (= bs!243253 (and b!977632 d!287606)))

(declare-fun lambda!34770 () Int)

(assert (=> bs!243253 (= (and (= (_1!6481 lt!349645) s!10566) (= (regOne!5968 (regOne!5968 r!15766)) (regOne!5968 r!15766)) (= (regTwo!5968 (regOne!5968 r!15766)) EmptyExpr!2728)) (= lambda!34770 lambda!34767))))

(declare-fun bs!243254 () Bool)

(assert (= bs!243254 (and b!977632 d!287592)))

(assert (=> bs!243254 (not (= lambda!34770 lambda!34759))))

(assert (=> bs!243253 (not (= lambda!34770 lambda!34766))))

(declare-fun bs!243255 () Bool)

(assert (= bs!243255 (and b!977632 b!977634)))

(assert (=> bs!243255 (not (= lambda!34770 lambda!34769))))

(declare-fun bs!243256 () Bool)

(assert (= bs!243256 (and b!977632 b!977334)))

(assert (=> bs!243256 (not (= lambda!34770 lambda!34741))))

(assert (=> bs!243256 (= (and (= (_1!6481 lt!349645) s!10566) (= (regOne!5968 (regOne!5968 r!15766)) (regOne!5968 r!15766)) (= (regTwo!5968 (regOne!5968 r!15766)) EmptyExpr!2728)) (= lambda!34770 lambda!34742))))

(declare-fun bs!243257 () Bool)

(assert (= bs!243257 (and b!977632 b!977530)))

(assert (=> bs!243257 (not (= lambda!34770 lambda!34755))))

(declare-fun bs!243258 () Bool)

(assert (= bs!243258 (and b!977632 b!977528)))

(assert (=> bs!243258 (= (and (= (_1!6481 lt!349645) s!10566) (= (regOne!5968 (regOne!5968 r!15766)) (regOne!5968 r!15766)) (= (regTwo!5968 (regOne!5968 r!15766)) (regTwo!5968 r!15766))) (= lambda!34770 lambda!34756))))

(assert (=> b!977632 true))

(assert (=> b!977632 true))

(declare-fun b!977624 () Bool)

(declare-fun e!629412 () Bool)

(declare-fun e!629411 () Bool)

(assert (=> b!977624 (= e!629412 e!629411)))

(declare-fun c!159652 () Bool)

(assert (=> b!977624 (= c!159652 (is-Star!2728 (regOne!5968 r!15766)))))

(declare-fun b!977625 () Bool)

(declare-fun e!629409 () Bool)

(assert (=> b!977625 (= e!629409 (matchRSpec!527 (regTwo!5969 (regOne!5968 r!15766)) (_1!6481 lt!349645)))))

(declare-fun call!62507 () Bool)

(declare-fun bm!62502 () Bool)

(assert (=> bm!62502 (= call!62507 (Exists!465 (ite c!159652 lambda!34769 lambda!34770)))))

(declare-fun b!977626 () Bool)

(declare-fun e!629406 () Bool)

(declare-fun call!62508 () Bool)

(assert (=> b!977626 (= e!629406 call!62508)))

(declare-fun bm!62503 () Bool)

(assert (=> bm!62503 (= call!62508 (isEmpty!6260 (_1!6481 lt!349645)))))

(declare-fun b!977627 () Bool)

(declare-fun e!629407 () Bool)

(assert (=> b!977627 (= e!629407 (= (_1!6481 lt!349645) (Cons!9942 (c!159597 (regOne!5968 r!15766)) Nil!9942)))))

(declare-fun b!977629 () Bool)

(declare-fun c!159649 () Bool)

(assert (=> b!977629 (= c!159649 (is-Union!2728 (regOne!5968 r!15766)))))

(assert (=> b!977629 (= e!629407 e!629412)))

(declare-fun b!977630 () Bool)

(declare-fun res!444029 () Bool)

(declare-fun e!629410 () Bool)

(assert (=> b!977630 (=> res!444029 e!629410)))

(assert (=> b!977630 (= res!444029 call!62508)))

(assert (=> b!977630 (= e!629411 e!629410)))

(declare-fun b!977631 () Bool)

(declare-fun e!629408 () Bool)

(assert (=> b!977631 (= e!629406 e!629408)))

(declare-fun res!444030 () Bool)

(assert (=> b!977631 (= res!444030 (not (is-EmptyLang!2728 (regOne!5968 r!15766))))))

(assert (=> b!977631 (=> (not res!444030) (not e!629408))))

(assert (=> b!977632 (= e!629411 call!62507)))

(declare-fun b!977633 () Bool)

(assert (=> b!977633 (= e!629412 e!629409)))

(declare-fun res!444031 () Bool)

(assert (=> b!977633 (= res!444031 (matchRSpec!527 (regOne!5969 (regOne!5968 r!15766)) (_1!6481 lt!349645)))))

(assert (=> b!977633 (=> res!444031 e!629409)))

(assert (=> b!977634 (= e!629410 call!62507)))

(declare-fun b!977628 () Bool)

(declare-fun c!159651 () Bool)

(assert (=> b!977628 (= c!159651 (is-ElementMatch!2728 (regOne!5968 r!15766)))))

(assert (=> b!977628 (= e!629408 e!629407)))

(declare-fun d!287614 () Bool)

(declare-fun c!159650 () Bool)

(assert (=> d!287614 (= c!159650 (is-EmptyExpr!2728 (regOne!5968 r!15766)))))

(assert (=> d!287614 (= (matchRSpec!527 (regOne!5968 r!15766) (_1!6481 lt!349645)) e!629406)))

(assert (= (and d!287614 c!159650) b!977626))

(assert (= (and d!287614 (not c!159650)) b!977631))

(assert (= (and b!977631 res!444030) b!977628))

(assert (= (and b!977628 c!159651) b!977627))

(assert (= (and b!977628 (not c!159651)) b!977629))

(assert (= (and b!977629 c!159649) b!977633))

(assert (= (and b!977629 (not c!159649)) b!977624))

(assert (= (and b!977633 (not res!444031)) b!977625))

(assert (= (and b!977624 c!159652) b!977630))

(assert (= (and b!977624 (not c!159652)) b!977632))

(assert (= (and b!977630 (not res!444029)) b!977634))

(assert (= (or b!977634 b!977632) bm!62502))

(assert (= (or b!977626 b!977630) bm!62503))

(declare-fun m!1178313 () Bool)

(assert (=> b!977625 m!1178313))

(declare-fun m!1178315 () Bool)

(assert (=> bm!62502 m!1178315))

(assert (=> bm!62503 m!1178189))

(declare-fun m!1178317 () Bool)

(assert (=> b!977633 m!1178317))

(assert (=> b!977338 d!287614))

(declare-fun d!287620 () Bool)

(assert (=> d!287620 (= (matchR!1264 (regOne!5968 r!15766) (_1!6481 lt!349645)) (matchRSpec!527 (regOne!5968 r!15766) (_1!6481 lt!349645)))))

(declare-fun lt!349702 () Unit!15115)

(assert (=> d!287620 (= lt!349702 (choose!6190 (regOne!5968 r!15766) (_1!6481 lt!349645)))))

(assert (=> d!287620 (validRegex!1197 (regOne!5968 r!15766))))

(assert (=> d!287620 (= (mainMatchTheorem!527 (regOne!5968 r!15766) (_1!6481 lt!349645)) lt!349702)))

(declare-fun bs!243259 () Bool)

(assert (= bs!243259 d!287620))

(assert (=> bs!243259 m!1178127))

(assert (=> bs!243259 m!1178131))

(declare-fun m!1178319 () Bool)

(assert (=> bs!243259 m!1178319))

(assert (=> bs!243259 m!1178129))

(assert (=> b!977338 d!287620))

(declare-fun b!977646 () Bool)

(declare-fun e!629415 () Bool)

(declare-fun tp!298965 () Bool)

(declare-fun tp!298964 () Bool)

(assert (=> b!977646 (= e!629415 (and tp!298965 tp!298964))))

(assert (=> b!977341 (= tp!298930 e!629415)))

(declare-fun b!977647 () Bool)

(declare-fun tp!298966 () Bool)

(assert (=> b!977647 (= e!629415 tp!298966)))

(declare-fun b!977645 () Bool)

(assert (=> b!977645 (= e!629415 tp_is_empty!5099)))

(declare-fun b!977648 () Bool)

(declare-fun tp!298967 () Bool)

(declare-fun tp!298963 () Bool)

(assert (=> b!977648 (= e!629415 (and tp!298967 tp!298963))))

(assert (= (and b!977341 (is-ElementMatch!2728 (regOne!5969 r!15766))) b!977645))

(assert (= (and b!977341 (is-Concat!4561 (regOne!5969 r!15766))) b!977646))

(assert (= (and b!977341 (is-Star!2728 (regOne!5969 r!15766))) b!977647))

(assert (= (and b!977341 (is-Union!2728 (regOne!5969 r!15766))) b!977648))

(declare-fun b!977650 () Bool)

(declare-fun e!629416 () Bool)

(declare-fun tp!298970 () Bool)

(declare-fun tp!298969 () Bool)

(assert (=> b!977650 (= e!629416 (and tp!298970 tp!298969))))

(assert (=> b!977341 (= tp!298933 e!629416)))

(declare-fun b!977651 () Bool)

(declare-fun tp!298971 () Bool)

(assert (=> b!977651 (= e!629416 tp!298971)))

(declare-fun b!977649 () Bool)

(assert (=> b!977649 (= e!629416 tp_is_empty!5099)))

(declare-fun b!977652 () Bool)

(declare-fun tp!298972 () Bool)

(declare-fun tp!298968 () Bool)

(assert (=> b!977652 (= e!629416 (and tp!298972 tp!298968))))

(assert (= (and b!977341 (is-ElementMatch!2728 (regTwo!5969 r!15766))) b!977649))

(assert (= (and b!977341 (is-Concat!4561 (regTwo!5969 r!15766))) b!977650))

(assert (= (and b!977341 (is-Star!2728 (regTwo!5969 r!15766))) b!977651))

(assert (= (and b!977341 (is-Union!2728 (regTwo!5969 r!15766))) b!977652))

(declare-fun b!977657 () Bool)

(declare-fun e!629419 () Bool)

(declare-fun tp!298975 () Bool)

(assert (=> b!977657 (= e!629419 (and tp_is_empty!5099 tp!298975))))

(assert (=> b!977336 (= tp!298931 e!629419)))

(assert (= (and b!977336 (is-Cons!9942 (t!101004 s!10566))) b!977657))

(declare-fun b!977659 () Bool)

(declare-fun e!629420 () Bool)

(declare-fun tp!298978 () Bool)

(declare-fun tp!298977 () Bool)

(assert (=> b!977659 (= e!629420 (and tp!298978 tp!298977))))

(assert (=> b!977339 (= tp!298934 e!629420)))

(declare-fun b!977660 () Bool)

(declare-fun tp!298979 () Bool)

(assert (=> b!977660 (= e!629420 tp!298979)))

(declare-fun b!977658 () Bool)

(assert (=> b!977658 (= e!629420 tp_is_empty!5099)))

(declare-fun b!977661 () Bool)

(declare-fun tp!298980 () Bool)

(declare-fun tp!298976 () Bool)

(assert (=> b!977661 (= e!629420 (and tp!298980 tp!298976))))

(assert (= (and b!977339 (is-ElementMatch!2728 (regOne!5968 r!15766))) b!977658))

(assert (= (and b!977339 (is-Concat!4561 (regOne!5968 r!15766))) b!977659))

(assert (= (and b!977339 (is-Star!2728 (regOne!5968 r!15766))) b!977660))

(assert (= (and b!977339 (is-Union!2728 (regOne!5968 r!15766))) b!977661))

(declare-fun b!977663 () Bool)

(declare-fun e!629421 () Bool)

(declare-fun tp!298983 () Bool)

(declare-fun tp!298982 () Bool)

(assert (=> b!977663 (= e!629421 (and tp!298983 tp!298982))))

(assert (=> b!977339 (= tp!298929 e!629421)))

(declare-fun b!977664 () Bool)

(declare-fun tp!298984 () Bool)

(assert (=> b!977664 (= e!629421 tp!298984)))

(declare-fun b!977662 () Bool)

(assert (=> b!977662 (= e!629421 tp_is_empty!5099)))

(declare-fun b!977665 () Bool)

(declare-fun tp!298985 () Bool)

(declare-fun tp!298981 () Bool)

(assert (=> b!977665 (= e!629421 (and tp!298985 tp!298981))))

(assert (= (and b!977339 (is-ElementMatch!2728 (regTwo!5968 r!15766))) b!977662))

(assert (= (and b!977339 (is-Concat!4561 (regTwo!5968 r!15766))) b!977663))

(assert (= (and b!977339 (is-Star!2728 (regTwo!5968 r!15766))) b!977664))

(assert (= (and b!977339 (is-Union!2728 (regTwo!5968 r!15766))) b!977665))

(declare-fun b!977667 () Bool)

(declare-fun e!629422 () Bool)

(declare-fun tp!298988 () Bool)

(declare-fun tp!298987 () Bool)

(assert (=> b!977667 (= e!629422 (and tp!298988 tp!298987))))

(assert (=> b!977333 (= tp!298932 e!629422)))

(declare-fun b!977668 () Bool)

(declare-fun tp!298989 () Bool)

(assert (=> b!977668 (= e!629422 tp!298989)))

(declare-fun b!977666 () Bool)

(assert (=> b!977666 (= e!629422 tp_is_empty!5099)))

(declare-fun b!977669 () Bool)

(declare-fun tp!298990 () Bool)

(declare-fun tp!298986 () Bool)

(assert (=> b!977669 (= e!629422 (and tp!298990 tp!298986))))

(assert (= (and b!977333 (is-ElementMatch!2728 (reg!3057 r!15766))) b!977666))

(assert (= (and b!977333 (is-Concat!4561 (reg!3057 r!15766))) b!977667))

(assert (= (and b!977333 (is-Star!2728 (reg!3057 r!15766))) b!977668))

(assert (= (and b!977333 (is-Union!2728 (reg!3057 r!15766))) b!977669))

(push 1)

(assert (not bm!62501))

(assert (not d!287584))

(assert (not b!977657))

(assert (not b!977651))

(assert (not b!977450))

(assert (not bm!62499))

(assert (not bm!62502))

(assert (not b!977521))

(assert (not b!977665))

(assert (not b!977667))

(assert (not b!977449))

(assert (not b!977543))

(assert tp_is_empty!5099)

(assert (not b!977669))

(assert (not d!287572))

(assert (not d!287604))

(assert (not b!977625))

(assert (not b!977542))

(assert (not bm!62486))

(assert (not b!977440))

(assert (not b!977538))

(assert (not d!287592))

(assert (not b!977661))

(assert (not b!977594))

(assert (not b!977647))

(assert (not bm!62473))

(assert (not b!977660))

(assert (not b!977668))

(assert (not b!977592))

(assert (not bm!62497))

(assert (not bm!62496))

(assert (not b!977664))

(assert (not d!287588))

(assert (not b!977646))

(assert (not b!977544))

(assert (not d!287610))

(assert (not b!977445))

(assert (not b!977621))

(assert (not b!977531))

(assert (not b!977451))

(assert (not d!287606))

(assert (not b!977596))

(assert (not b!977529))

(assert (not d!287620))

(assert (not b!977591))

(assert (not bm!62503))

(assert (not b!977597))

(assert (not b!977476))

(assert (not b!977663))

(assert (not b!977652))

(assert (not b!977590))

(assert (not b!977438))

(assert (not bm!62488))

(assert (not bm!62498))

(assert (not d!287602))

(assert (not b!977533))

(assert (not b!977633))

(assert (not b!977648))

(assert (not b!977650))

(assert (not d!287586))

(assert (not b!977659))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

