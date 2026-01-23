; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714862 () Bool)

(assert start!714862)

(declare-fun b!7324384 () Bool)

(declare-fun res!2960524 () Bool)

(declare-fun e!4385586 () Bool)

(assert (=> b!7324384 (=> (not res!2960524) (not e!4385586))))

(declare-datatypes ((C!38242 0))(
  ( (C!38243 (val!29481 Int)) )
))
(declare-datatypes ((Regex!18984 0))(
  ( (ElementMatch!18984 (c!1359389 C!38242)) (Concat!27829 (regOne!38480 Regex!18984) (regTwo!38480 Regex!18984)) (EmptyExpr!18984) (Star!18984 (reg!19313 Regex!18984)) (EmptyLang!18984) (Union!18984 (regOne!38481 Regex!18984) (regTwo!38481 Regex!18984)) )
))
(declare-datatypes ((List!71480 0))(
  ( (Nil!71356) (Cons!71356 (h!77804 Regex!18984) (t!385863 List!71480)) )
))
(declare-datatypes ((Context!15848 0))(
  ( (Context!15849 (exprs!8424 List!71480)) )
))
(declare-fun ct1!256 () Context!15848)

(declare-fun isEmpty!40902 (List!71480) Bool)

(assert (=> b!7324384 (= res!2960524 (not (isEmpty!40902 (exprs!8424 ct1!256))))))

(declare-fun res!2960522 () Bool)

(declare-fun e!4385592 () Bool)

(assert (=> start!714862 (=> (not res!2960522) (not e!4385592))))

(declare-fun cWitness!35 () Context!15848)

(declare-fun lt!2605626 () (Set Context!15848))

(assert (=> start!714862 (= res!2960522 (set.member cWitness!35 lt!2605626))))

(declare-fun c!10305 () C!38242)

(declare-fun derivationStepZipperUp!2664 (Context!15848 C!38242) (Set Context!15848))

(assert (=> start!714862 (= lt!2605626 (derivationStepZipperUp!2664 ct1!256 c!10305))))

(assert (=> start!714862 e!4385592))

(declare-fun tp_is_empty!48213 () Bool)

(assert (=> start!714862 tp_is_empty!48213))

(declare-fun e!4385589 () Bool)

(declare-fun inv!90801 (Context!15848) Bool)

(assert (=> start!714862 (and (inv!90801 cWitness!35) e!4385589)))

(declare-fun e!4385590 () Bool)

(assert (=> start!714862 (and (inv!90801 ct1!256) e!4385590)))

(declare-fun ct2!352 () Context!15848)

(declare-fun e!4385588 () Bool)

(assert (=> start!714862 (and (inv!90801 ct2!352) e!4385588)))

(declare-fun b!7324385 () Bool)

(declare-fun tp!2080252 () Bool)

(assert (=> b!7324385 (= e!4385589 tp!2080252)))

(declare-fun b!7324386 () Bool)

(declare-fun tp!2080254 () Bool)

(assert (=> b!7324386 (= e!4385590 tp!2080254)))

(declare-fun b!7324387 () Bool)

(assert (=> b!7324387 (= e!4385592 e!4385586)))

(declare-fun res!2960523 () Bool)

(assert (=> b!7324387 (=> (not res!2960523) (not e!4385586))))

(assert (=> b!7324387 (= res!2960523 (is-Cons!71356 (exprs!8424 ct1!256)))))

(declare-fun lt!2605630 () List!71480)

(declare-fun ++!16808 (List!71480 List!71480) List!71480)

(assert (=> b!7324387 (= lt!2605630 (++!16808 (exprs!8424 ct1!256) (exprs!8424 ct2!352)))))

(declare-datatypes ((Unit!164933 0))(
  ( (Unit!164934) )
))
(declare-fun lt!2605628 () Unit!164933)

(declare-fun lambda!453887 () Int)

(declare-fun lemmaConcatPreservesForall!1665 (List!71480 List!71480 Int) Unit!164933)

(assert (=> b!7324387 (= lt!2605628 (lemmaConcatPreservesForall!1665 (exprs!8424 ct1!256) (exprs!8424 ct2!352) lambda!453887))))

(declare-fun b!7324388 () Bool)

(declare-fun e!4385591 () Bool)

(declare-fun e!4385587 () Bool)

(assert (=> b!7324388 (= e!4385591 e!4385587)))

(declare-fun res!2960520 () Bool)

(assert (=> b!7324388 (=> (not res!2960520) (not e!4385587))))

(declare-fun lt!2605625 () (Set Context!15848))

(declare-fun lt!2605627 () (Set Context!15848))

(assert (=> b!7324388 (= res!2960520 (and (= lt!2605626 (set.union lt!2605627 lt!2605625)) (or (set.member cWitness!35 lt!2605627) (set.member cWitness!35 lt!2605625)) (not (set.member cWitness!35 lt!2605625))))))

(declare-fun lt!2605629 () Context!15848)

(assert (=> b!7324388 (= lt!2605625 (derivationStepZipperUp!2664 lt!2605629 c!10305))))

(declare-fun b!7324389 () Bool)

(declare-fun res!2960521 () Bool)

(assert (=> b!7324389 (=> (not res!2960521) (not e!4385587))))

(assert (=> b!7324389 (= res!2960521 (not (isEmpty!40902 lt!2605630)))))

(declare-fun b!7324390 () Bool)

(declare-fun tp!2080253 () Bool)

(assert (=> b!7324390 (= e!4385588 tp!2080253)))

(declare-fun b!7324391 () Bool)

(assert (=> b!7324391 (= e!4385586 e!4385591)))

(declare-fun res!2960519 () Bool)

(assert (=> b!7324391 (=> (not res!2960519) (not e!4385591))))

(declare-fun nullable!8088 (Regex!18984) Bool)

(assert (=> b!7324391 (= res!2960519 (nullable!8088 (h!77804 (exprs!8424 ct1!256))))))

(declare-fun derivationStepZipperDown!2815 (Regex!18984 Context!15848 C!38242) (Set Context!15848))

(assert (=> b!7324391 (= lt!2605627 (derivationStepZipperDown!2815 (h!77804 (exprs!8424 ct1!256)) lt!2605629 c!10305))))

(declare-fun tail!14673 (List!71480) List!71480)

(assert (=> b!7324391 (= lt!2605629 (Context!15849 (tail!14673 (exprs!8424 ct1!256))))))

(declare-fun b!7324392 () Bool)

(declare-fun validRegex!9626 (Regex!18984) Bool)

(assert (=> b!7324392 (= e!4385587 (not (validRegex!9626 (h!77804 (exprs!8424 ct1!256)))))))

(assert (= (and start!714862 res!2960522) b!7324387))

(assert (= (and b!7324387 res!2960523) b!7324384))

(assert (= (and b!7324384 res!2960524) b!7324391))

(assert (= (and b!7324391 res!2960519) b!7324388))

(assert (= (and b!7324388 res!2960520) b!7324389))

(assert (= (and b!7324389 res!2960521) b!7324392))

(assert (= start!714862 b!7324385))

(assert (= start!714862 b!7324386))

(assert (= start!714862 b!7324390))

(declare-fun m!7990170 () Bool)

(assert (=> start!714862 m!7990170))

(declare-fun m!7990172 () Bool)

(assert (=> start!714862 m!7990172))

(declare-fun m!7990174 () Bool)

(assert (=> start!714862 m!7990174))

(declare-fun m!7990176 () Bool)

(assert (=> start!714862 m!7990176))

(declare-fun m!7990178 () Bool)

(assert (=> start!714862 m!7990178))

(declare-fun m!7990180 () Bool)

(assert (=> b!7324384 m!7990180))

(declare-fun m!7990182 () Bool)

(assert (=> b!7324388 m!7990182))

(declare-fun m!7990184 () Bool)

(assert (=> b!7324388 m!7990184))

(declare-fun m!7990186 () Bool)

(assert (=> b!7324388 m!7990186))

(declare-fun m!7990188 () Bool)

(assert (=> b!7324392 m!7990188))

(declare-fun m!7990190 () Bool)

(assert (=> b!7324387 m!7990190))

(declare-fun m!7990192 () Bool)

(assert (=> b!7324387 m!7990192))

(declare-fun m!7990194 () Bool)

(assert (=> b!7324391 m!7990194))

(declare-fun m!7990196 () Bool)

(assert (=> b!7324391 m!7990196))

(declare-fun m!7990198 () Bool)

(assert (=> b!7324391 m!7990198))

(declare-fun m!7990200 () Bool)

(assert (=> b!7324389 m!7990200))

(push 1)

(assert (not b!7324388))

(assert (not b!7324389))

(assert (not start!714862))

(assert tp_is_empty!48213)

(assert (not b!7324392))

(assert (not b!7324390))

(assert (not b!7324385))

(assert (not b!7324384))

(assert (not b!7324386))

(assert (not b!7324387))

(assert (not b!7324391))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2274525 () Bool)

(declare-fun nullableFct!3204 (Regex!18984) Bool)

(assert (=> d!2274525 (= (nullable!8088 (h!77804 (exprs!8424 ct1!256))) (nullableFct!3204 (h!77804 (exprs!8424 ct1!256))))))

(declare-fun bs!1916486 () Bool)

(assert (= bs!1916486 d!2274525))

(declare-fun m!7990234 () Bool)

(assert (=> bs!1916486 m!7990234))

(assert (=> b!7324391 d!2274525))

(declare-fun b!7324442 () Bool)

(declare-fun c!1359403 () Bool)

(declare-fun e!4385627 () Bool)

(assert (=> b!7324442 (= c!1359403 e!4385627)))

(declare-fun res!2960545 () Bool)

(assert (=> b!7324442 (=> (not res!2960545) (not e!4385627))))

(assert (=> b!7324442 (= res!2960545 (is-Concat!27829 (h!77804 (exprs!8424 ct1!256))))))

(declare-fun e!4385626 () (Set Context!15848))

(declare-fun e!4385631 () (Set Context!15848))

(assert (=> b!7324442 (= e!4385626 e!4385631)))

(declare-fun b!7324443 () Bool)

(declare-fun call!666335 () (Set Context!15848))

(declare-fun call!666330 () (Set Context!15848))

(assert (=> b!7324443 (= e!4385626 (set.union call!666335 call!666330))))

(declare-fun b!7324444 () Bool)

(declare-fun e!4385628 () (Set Context!15848))

(assert (=> b!7324444 (= e!4385628 e!4385626)))

(declare-fun c!1359404 () Bool)

(assert (=> b!7324444 (= c!1359404 (is-Union!18984 (h!77804 (exprs!8424 ct1!256))))))

(declare-fun b!7324445 () Bool)

(declare-fun call!666334 () (Set Context!15848))

(assert (=> b!7324445 (= e!4385631 (set.union call!666330 call!666334))))

(declare-fun b!7324446 () Bool)

(declare-fun e!4385629 () (Set Context!15848))

(assert (=> b!7324446 (= e!4385631 e!4385629)))

(declare-fun c!1359401 () Bool)

(assert (=> b!7324446 (= c!1359401 (is-Concat!27829 (h!77804 (exprs!8424 ct1!256))))))

(declare-fun bm!666325 () Bool)

(declare-fun call!666333 () List!71480)

(declare-fun call!666332 () List!71480)

(assert (=> bm!666325 (= call!666333 call!666332)))

(declare-fun b!7324447 () Bool)

(assert (=> b!7324447 (= e!4385627 (nullable!8088 (regOne!38480 (h!77804 (exprs!8424 ct1!256)))))))

(declare-fun bm!666326 () Bool)

(assert (=> bm!666326 (= call!666334 call!666335)))

(declare-fun bm!666327 () Bool)

(declare-fun call!666331 () (Set Context!15848))

(assert (=> bm!666327 (= call!666331 call!666334)))

(declare-fun bm!666328 () Bool)

(assert (=> bm!666328 (= call!666330 (derivationStepZipperDown!2815 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256)))) (ite c!1359404 lt!2605629 (Context!15849 call!666332)) c!10305))))

(declare-fun b!7324448 () Bool)

(declare-fun e!4385630 () (Set Context!15848))

(assert (=> b!7324448 (= e!4385630 call!666331)))

(declare-fun bm!666329 () Bool)

(declare-fun $colon$colon!3020 (List!71480 Regex!18984) List!71480)

(assert (=> bm!666329 (= call!666332 ($colon$colon!3020 (exprs!8424 lt!2605629) (ite (or c!1359403 c!1359401) (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (h!77804 (exprs!8424 ct1!256)))))))

(declare-fun b!7324449 () Bool)

(assert (=> b!7324449 (= e!4385628 (set.insert lt!2605629 (as set.empty (Set Context!15848))))))

(declare-fun bm!666330 () Bool)

(assert (=> bm!666330 (= call!666335 (derivationStepZipperDown!2815 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256)))))) (ite (or c!1359404 c!1359403) lt!2605629 (Context!15849 call!666333)) c!10305))))

(declare-fun d!2274527 () Bool)

(declare-fun c!1359402 () Bool)

(assert (=> d!2274527 (= c!1359402 (and (is-ElementMatch!18984 (h!77804 (exprs!8424 ct1!256))) (= (c!1359389 (h!77804 (exprs!8424 ct1!256))) c!10305)))))

(assert (=> d!2274527 (= (derivationStepZipperDown!2815 (h!77804 (exprs!8424 ct1!256)) lt!2605629 c!10305) e!4385628)))

(declare-fun b!7324450 () Bool)

(declare-fun c!1359405 () Bool)

(assert (=> b!7324450 (= c!1359405 (is-Star!18984 (h!77804 (exprs!8424 ct1!256))))))

(assert (=> b!7324450 (= e!4385629 e!4385630)))

(declare-fun b!7324451 () Bool)

(assert (=> b!7324451 (= e!4385629 call!666331)))

(declare-fun b!7324452 () Bool)

(assert (=> b!7324452 (= e!4385630 (as set.empty (Set Context!15848)))))

(assert (= (and d!2274527 c!1359402) b!7324449))

(assert (= (and d!2274527 (not c!1359402)) b!7324444))

(assert (= (and b!7324444 c!1359404) b!7324443))

(assert (= (and b!7324444 (not c!1359404)) b!7324442))

(assert (= (and b!7324442 res!2960545) b!7324447))

(assert (= (and b!7324442 c!1359403) b!7324445))

(assert (= (and b!7324442 (not c!1359403)) b!7324446))

(assert (= (and b!7324446 c!1359401) b!7324451))

(assert (= (and b!7324446 (not c!1359401)) b!7324450))

(assert (= (and b!7324450 c!1359405) b!7324448))

(assert (= (and b!7324450 (not c!1359405)) b!7324452))

(assert (= (or b!7324451 b!7324448) bm!666325))

(assert (= (or b!7324451 b!7324448) bm!666327))

(assert (= (or b!7324445 bm!666327) bm!666326))

(assert (= (or b!7324445 bm!666325) bm!666329))

(assert (= (or b!7324443 b!7324445) bm!666328))

(assert (= (or b!7324443 bm!666326) bm!666330))

(declare-fun m!7990236 () Bool)

(assert (=> bm!666328 m!7990236))

(declare-fun m!7990238 () Bool)

(assert (=> bm!666330 m!7990238))

(declare-fun m!7990240 () Bool)

(assert (=> bm!666329 m!7990240))

(declare-fun m!7990242 () Bool)

(assert (=> b!7324447 m!7990242))

(declare-fun m!7990244 () Bool)

(assert (=> b!7324449 m!7990244))

(assert (=> b!7324391 d!2274527))

(declare-fun d!2274531 () Bool)

(assert (=> d!2274531 (= (tail!14673 (exprs!8424 ct1!256)) (t!385863 (exprs!8424 ct1!256)))))

(assert (=> b!7324391 d!2274531))

(declare-fun b!7324481 () Bool)

(declare-fun e!4385655 () Bool)

(declare-fun e!4385657 () Bool)

(assert (=> b!7324481 (= e!4385655 e!4385657)))

(declare-fun c!1359415 () Bool)

(assert (=> b!7324481 (= c!1359415 (is-Star!18984 (h!77804 (exprs!8424 ct1!256))))))

(declare-fun b!7324482 () Bool)

(declare-fun e!4385658 () Bool)

(declare-fun call!666345 () Bool)

(assert (=> b!7324482 (= e!4385658 call!666345)))

(declare-fun b!7324483 () Bool)

(declare-fun e!4385652 () Bool)

(assert (=> b!7324483 (= e!4385657 e!4385652)))

(declare-fun res!2960559 () Bool)

(assert (=> b!7324483 (= res!2960559 (not (nullable!8088 (reg!19313 (h!77804 (exprs!8424 ct1!256))))))))

(assert (=> b!7324483 (=> (not res!2960559) (not e!4385652))))

(declare-fun b!7324484 () Bool)

(declare-fun call!666344 () Bool)

(assert (=> b!7324484 (= e!4385652 call!666344)))

(declare-fun b!7324485 () Bool)

(declare-fun res!2960561 () Bool)

(declare-fun e!4385654 () Bool)

(assert (=> b!7324485 (=> res!2960561 e!4385654)))

(assert (=> b!7324485 (= res!2960561 (not (is-Concat!27829 (h!77804 (exprs!8424 ct1!256)))))))

(declare-fun e!4385656 () Bool)

(assert (=> b!7324485 (= e!4385656 e!4385654)))

(declare-fun b!7324486 () Bool)

(declare-fun res!2960558 () Bool)

(assert (=> b!7324486 (=> (not res!2960558) (not e!4385658))))

(declare-fun call!666346 () Bool)

(assert (=> b!7324486 (= res!2960558 call!666346)))

(assert (=> b!7324486 (= e!4385656 e!4385658)))

(declare-fun bm!666339 () Bool)

(declare-fun c!1359414 () Bool)

(assert (=> bm!666339 (= call!666344 (validRegex!9626 (ite c!1359415 (reg!19313 (h!77804 (exprs!8424 ct1!256))) (ite c!1359414 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (regTwo!38480 (h!77804 (exprs!8424 ct1!256)))))))))

(declare-fun d!2274533 () Bool)

(declare-fun res!2960560 () Bool)

(assert (=> d!2274533 (=> res!2960560 e!4385655)))

(assert (=> d!2274533 (= res!2960560 (is-ElementMatch!18984 (h!77804 (exprs!8424 ct1!256))))))

(assert (=> d!2274533 (= (validRegex!9626 (h!77804 (exprs!8424 ct1!256))) e!4385655)))

(declare-fun b!7324487 () Bool)

(declare-fun e!4385653 () Bool)

(assert (=> b!7324487 (= e!4385653 call!666346)))

(declare-fun b!7324488 () Bool)

(assert (=> b!7324488 (= e!4385654 e!4385653)))

(declare-fun res!2960562 () Bool)

(assert (=> b!7324488 (=> (not res!2960562) (not e!4385653))))

(assert (=> b!7324488 (= res!2960562 call!666345)))

(declare-fun bm!666340 () Bool)

(assert (=> bm!666340 (= call!666346 call!666344)))

(declare-fun bm!666341 () Bool)

(assert (=> bm!666341 (= call!666345 (validRegex!9626 (ite c!1359414 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))))))

(declare-fun b!7324489 () Bool)

(assert (=> b!7324489 (= e!4385657 e!4385656)))

(assert (=> b!7324489 (= c!1359414 (is-Union!18984 (h!77804 (exprs!8424 ct1!256))))))

(assert (= (and d!2274533 (not res!2960560)) b!7324481))

(assert (= (and b!7324481 c!1359415) b!7324483))

(assert (= (and b!7324481 (not c!1359415)) b!7324489))

(assert (= (and b!7324483 res!2960559) b!7324484))

(assert (= (and b!7324489 c!1359414) b!7324486))

(assert (= (and b!7324489 (not c!1359414)) b!7324485))

(assert (= (and b!7324486 res!2960558) b!7324482))

(assert (= (and b!7324485 (not res!2960561)) b!7324488))

(assert (= (and b!7324488 res!2960562) b!7324487))

(assert (= (or b!7324482 b!7324488) bm!666341))

(assert (= (or b!7324486 b!7324487) bm!666340))

(assert (= (or b!7324484 bm!666340) bm!666339))

(declare-fun m!7990246 () Bool)

(assert (=> b!7324483 m!7990246))

(declare-fun m!7990248 () Bool)

(assert (=> bm!666339 m!7990248))

(declare-fun m!7990250 () Bool)

(assert (=> bm!666341 m!7990250))

(assert (=> b!7324392 d!2274533))

(declare-fun b!7324503 () Bool)

(declare-fun e!4385667 () List!71480)

(assert (=> b!7324503 (= e!4385667 (exprs!8424 ct2!352))))

(declare-fun b!7324505 () Bool)

(declare-fun res!2960568 () Bool)

(declare-fun e!4385666 () Bool)

(assert (=> b!7324505 (=> (not res!2960568) (not e!4385666))))

(declare-fun lt!2605651 () List!71480)

(declare-fun size!41907 (List!71480) Int)

(assert (=> b!7324505 (= res!2960568 (= (size!41907 lt!2605651) (+ (size!41907 (exprs!8424 ct1!256)) (size!41907 (exprs!8424 ct2!352)))))))

(declare-fun b!7324506 () Bool)

(assert (=> b!7324506 (= e!4385666 (or (not (= (exprs!8424 ct2!352) Nil!71356)) (= lt!2605651 (exprs!8424 ct1!256))))))

(declare-fun d!2274535 () Bool)

(assert (=> d!2274535 e!4385666))

(declare-fun res!2960569 () Bool)

(assert (=> d!2274535 (=> (not res!2960569) (not e!4385666))))

(declare-fun content!14930 (List!71480) (Set Regex!18984))

(assert (=> d!2274535 (= res!2960569 (= (content!14930 lt!2605651) (set.union (content!14930 (exprs!8424 ct1!256)) (content!14930 (exprs!8424 ct2!352)))))))

(assert (=> d!2274535 (= lt!2605651 e!4385667)))

(declare-fun c!1359420 () Bool)

(assert (=> d!2274535 (= c!1359420 (is-Nil!71356 (exprs!8424 ct1!256)))))

(assert (=> d!2274535 (= (++!16808 (exprs!8424 ct1!256) (exprs!8424 ct2!352)) lt!2605651)))

(declare-fun b!7324504 () Bool)

(assert (=> b!7324504 (= e!4385667 (Cons!71356 (h!77804 (exprs!8424 ct1!256)) (++!16808 (t!385863 (exprs!8424 ct1!256)) (exprs!8424 ct2!352))))))

(assert (= (and d!2274535 c!1359420) b!7324503))

(assert (= (and d!2274535 (not c!1359420)) b!7324504))

(assert (= (and d!2274535 res!2960569) b!7324505))

(assert (= (and b!7324505 res!2960568) b!7324506))

(declare-fun m!7990258 () Bool)

(assert (=> b!7324505 m!7990258))

(declare-fun m!7990260 () Bool)

(assert (=> b!7324505 m!7990260))

(declare-fun m!7990262 () Bool)

(assert (=> b!7324505 m!7990262))

(declare-fun m!7990264 () Bool)

(assert (=> d!2274535 m!7990264))

(declare-fun m!7990266 () Bool)

(assert (=> d!2274535 m!7990266))

(declare-fun m!7990268 () Bool)

(assert (=> d!2274535 m!7990268))

(declare-fun m!7990270 () Bool)

(assert (=> b!7324504 m!7990270))

(assert (=> b!7324387 d!2274535))

(declare-fun d!2274539 () Bool)

(declare-fun forall!17838 (List!71480 Int) Bool)

(assert (=> d!2274539 (forall!17838 (++!16808 (exprs!8424 ct1!256) (exprs!8424 ct2!352)) lambda!453887)))

(declare-fun lt!2605654 () Unit!164933)

(declare-fun choose!56956 (List!71480 List!71480 Int) Unit!164933)

(assert (=> d!2274539 (= lt!2605654 (choose!56956 (exprs!8424 ct1!256) (exprs!8424 ct2!352) lambda!453887))))

(assert (=> d!2274539 (forall!17838 (exprs!8424 ct1!256) lambda!453887)))

(assert (=> d!2274539 (= (lemmaConcatPreservesForall!1665 (exprs!8424 ct1!256) (exprs!8424 ct2!352) lambda!453887) lt!2605654)))

(declare-fun bs!1916487 () Bool)

(assert (= bs!1916487 d!2274539))

(assert (=> bs!1916487 m!7990190))

(assert (=> bs!1916487 m!7990190))

(declare-fun m!7990272 () Bool)

(assert (=> bs!1916487 m!7990272))

(declare-fun m!7990274 () Bool)

(assert (=> bs!1916487 m!7990274))

(declare-fun m!7990276 () Bool)

(assert (=> bs!1916487 m!7990276))

(assert (=> b!7324387 d!2274539))

(declare-fun d!2274541 () Bool)

(assert (=> d!2274541 (= (isEmpty!40902 lt!2605630) (is-Nil!71356 lt!2605630))))

(assert (=> b!7324389 d!2274541))

(declare-fun bm!666345 () Bool)

(declare-fun call!666350 () (Set Context!15848))

(assert (=> bm!666345 (= call!666350 (derivationStepZipperDown!2815 (h!77804 (exprs!8424 lt!2605629)) (Context!15849 (t!385863 (exprs!8424 lt!2605629))) c!10305))))

(declare-fun d!2274543 () Bool)

(declare-fun c!1359428 () Bool)

(declare-fun e!4385678 () Bool)

(assert (=> d!2274543 (= c!1359428 e!4385678)))

(declare-fun res!2960576 () Bool)

(assert (=> d!2274543 (=> (not res!2960576) (not e!4385678))))

(assert (=> d!2274543 (= res!2960576 (is-Cons!71356 (exprs!8424 lt!2605629)))))

(declare-fun e!4385680 () (Set Context!15848))

(assert (=> d!2274543 (= (derivationStepZipperUp!2664 lt!2605629 c!10305) e!4385680)))

(declare-fun b!7324525 () Bool)

(assert (=> b!7324525 (= e!4385678 (nullable!8088 (h!77804 (exprs!8424 lt!2605629))))))

(declare-fun b!7324526 () Bool)

(declare-fun e!4385679 () (Set Context!15848))

(assert (=> b!7324526 (= e!4385679 call!666350)))

(declare-fun b!7324527 () Bool)

(assert (=> b!7324527 (= e!4385680 e!4385679)))

(declare-fun c!1359427 () Bool)

(assert (=> b!7324527 (= c!1359427 (is-Cons!71356 (exprs!8424 lt!2605629)))))

(declare-fun b!7324528 () Bool)

(assert (=> b!7324528 (= e!4385680 (set.union call!666350 (derivationStepZipperUp!2664 (Context!15849 (t!385863 (exprs!8424 lt!2605629))) c!10305)))))

(declare-fun b!7324529 () Bool)

(assert (=> b!7324529 (= e!4385679 (as set.empty (Set Context!15848)))))

(assert (= (and d!2274543 res!2960576) b!7324525))

(assert (= (and d!2274543 c!1359428) b!7324528))

(assert (= (and d!2274543 (not c!1359428)) b!7324527))

(assert (= (and b!7324527 c!1359427) b!7324526))

(assert (= (and b!7324527 (not c!1359427)) b!7324529))

(assert (= (or b!7324528 b!7324526) bm!666345))

(declare-fun m!7990278 () Bool)

(assert (=> bm!666345 m!7990278))

(declare-fun m!7990280 () Bool)

(assert (=> b!7324525 m!7990280))

(declare-fun m!7990282 () Bool)

(assert (=> b!7324528 m!7990282))

(assert (=> b!7324388 d!2274543))

(declare-fun bm!666346 () Bool)

(declare-fun call!666351 () (Set Context!15848))

(assert (=> bm!666346 (= call!666351 (derivationStepZipperDown!2815 (h!77804 (exprs!8424 ct1!256)) (Context!15849 (t!385863 (exprs!8424 ct1!256))) c!10305))))

(declare-fun d!2274545 () Bool)

(declare-fun c!1359430 () Bool)

(declare-fun e!4385681 () Bool)

(assert (=> d!2274545 (= c!1359430 e!4385681)))

(declare-fun res!2960577 () Bool)

(assert (=> d!2274545 (=> (not res!2960577) (not e!4385681))))

(assert (=> d!2274545 (= res!2960577 (is-Cons!71356 (exprs!8424 ct1!256)))))

(declare-fun e!4385683 () (Set Context!15848))

(assert (=> d!2274545 (= (derivationStepZipperUp!2664 ct1!256 c!10305) e!4385683)))

(declare-fun b!7324530 () Bool)

(assert (=> b!7324530 (= e!4385681 (nullable!8088 (h!77804 (exprs!8424 ct1!256))))))

(declare-fun b!7324531 () Bool)

(declare-fun e!4385682 () (Set Context!15848))

(assert (=> b!7324531 (= e!4385682 call!666351)))

(declare-fun b!7324532 () Bool)

(assert (=> b!7324532 (= e!4385683 e!4385682)))

(declare-fun c!1359429 () Bool)

(assert (=> b!7324532 (= c!1359429 (is-Cons!71356 (exprs!8424 ct1!256)))))

(declare-fun b!7324533 () Bool)

(assert (=> b!7324533 (= e!4385683 (set.union call!666351 (derivationStepZipperUp!2664 (Context!15849 (t!385863 (exprs!8424 ct1!256))) c!10305)))))

(declare-fun b!7324534 () Bool)

(assert (=> b!7324534 (= e!4385682 (as set.empty (Set Context!15848)))))

(assert (= (and d!2274545 res!2960577) b!7324530))

(assert (= (and d!2274545 c!1359430) b!7324533))

(assert (= (and d!2274545 (not c!1359430)) b!7324532))

(assert (= (and b!7324532 c!1359429) b!7324531))

(assert (= (and b!7324532 (not c!1359429)) b!7324534))

(assert (= (or b!7324533 b!7324531) bm!666346))

(declare-fun m!7990284 () Bool)

(assert (=> bm!666346 m!7990284))

(assert (=> b!7324530 m!7990194))

(declare-fun m!7990286 () Bool)

(assert (=> b!7324533 m!7990286))

(assert (=> start!714862 d!2274545))

(declare-fun bs!1916488 () Bool)

(declare-fun d!2274547 () Bool)

(assert (= bs!1916488 (and d!2274547 b!7324387)))

(declare-fun lambda!453893 () Int)

(assert (=> bs!1916488 (= lambda!453893 lambda!453887)))

(assert (=> d!2274547 (= (inv!90801 cWitness!35) (forall!17838 (exprs!8424 cWitness!35) lambda!453893))))

(declare-fun bs!1916489 () Bool)

(assert (= bs!1916489 d!2274547))

(declare-fun m!7990288 () Bool)

(assert (=> bs!1916489 m!7990288))

(assert (=> start!714862 d!2274547))

(declare-fun bs!1916490 () Bool)

(declare-fun d!2274549 () Bool)

(assert (= bs!1916490 (and d!2274549 b!7324387)))

(declare-fun lambda!453894 () Int)

(assert (=> bs!1916490 (= lambda!453894 lambda!453887)))

(declare-fun bs!1916491 () Bool)

(assert (= bs!1916491 (and d!2274549 d!2274547)))

(assert (=> bs!1916491 (= lambda!453894 lambda!453893)))

(assert (=> d!2274549 (= (inv!90801 ct1!256) (forall!17838 (exprs!8424 ct1!256) lambda!453894))))

(declare-fun bs!1916492 () Bool)

(assert (= bs!1916492 d!2274549))

(declare-fun m!7990290 () Bool)

(assert (=> bs!1916492 m!7990290))

(assert (=> start!714862 d!2274549))

(declare-fun bs!1916493 () Bool)

(declare-fun d!2274551 () Bool)

(assert (= bs!1916493 (and d!2274551 b!7324387)))

(declare-fun lambda!453895 () Int)

(assert (=> bs!1916493 (= lambda!453895 lambda!453887)))

(declare-fun bs!1916494 () Bool)

(assert (= bs!1916494 (and d!2274551 d!2274547)))

(assert (=> bs!1916494 (= lambda!453895 lambda!453893)))

(declare-fun bs!1916495 () Bool)

(assert (= bs!1916495 (and d!2274551 d!2274549)))

(assert (=> bs!1916495 (= lambda!453895 lambda!453894)))

(assert (=> d!2274551 (= (inv!90801 ct2!352) (forall!17838 (exprs!8424 ct2!352) lambda!453895))))

(declare-fun bs!1916496 () Bool)

(assert (= bs!1916496 d!2274551))

(declare-fun m!7990292 () Bool)

(assert (=> bs!1916496 m!7990292))

(assert (=> start!714862 d!2274551))

(declare-fun d!2274553 () Bool)

(assert (=> d!2274553 (= (isEmpty!40902 (exprs!8424 ct1!256)) (is-Nil!71356 (exprs!8424 ct1!256)))))

(assert (=> b!7324384 d!2274553))

(declare-fun b!7324543 () Bool)

(declare-fun e!4385688 () Bool)

(declare-fun tp!2080268 () Bool)

(declare-fun tp!2080269 () Bool)

(assert (=> b!7324543 (= e!4385688 (and tp!2080268 tp!2080269))))

(assert (=> b!7324386 (= tp!2080254 e!4385688)))

(assert (= (and b!7324386 (is-Cons!71356 (exprs!8424 ct1!256))) b!7324543))

(declare-fun b!7324544 () Bool)

(declare-fun e!4385689 () Bool)

(declare-fun tp!2080270 () Bool)

(declare-fun tp!2080271 () Bool)

(assert (=> b!7324544 (= e!4385689 (and tp!2080270 tp!2080271))))

(assert (=> b!7324390 (= tp!2080253 e!4385689)))

(assert (= (and b!7324390 (is-Cons!71356 (exprs!8424 ct2!352))) b!7324544))

(declare-fun b!7324545 () Bool)

(declare-fun e!4385690 () Bool)

(declare-fun tp!2080272 () Bool)

(declare-fun tp!2080273 () Bool)

(assert (=> b!7324545 (= e!4385690 (and tp!2080272 tp!2080273))))

(assert (=> b!7324385 (= tp!2080252 e!4385690)))

(assert (= (and b!7324385 (is-Cons!71356 (exprs!8424 cWitness!35))) b!7324545))

(push 1)

(assert (not bm!666346))

(assert (not b!7324525))

(assert (not d!2274549))

(assert (not d!2274539))

(assert (not d!2274551))

(assert (not b!7324533))

(assert (not d!2274535))

(assert (not b!7324543))

(assert (not b!7324447))

(assert (not d!2274547))

(assert (not bm!666328))

(assert tp_is_empty!48213)

(assert (not bm!666339))

(assert (not b!7324483))

(assert (not bm!666345))

(assert (not b!7324544))

(assert (not bm!666330))

(assert (not b!7324505))

(assert (not b!7324545))

(assert (not bm!666341))

(assert (not b!7324530))

(assert (not d!2274525))

(assert (not b!7324528))

(assert (not bm!666329))

(assert (not b!7324504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7324618 () Bool)

(declare-fun e!4385741 () Bool)

(declare-fun e!4385743 () Bool)

(assert (=> b!7324618 (= e!4385741 e!4385743)))

(declare-fun c!1359456 () Bool)

(assert (=> b!7324618 (= c!1359456 (is-Star!18984 (ite c!1359414 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))))))

(declare-fun b!7324619 () Bool)

(declare-fun e!4385744 () Bool)

(declare-fun call!666381 () Bool)

(assert (=> b!7324619 (= e!4385744 call!666381)))

(declare-fun b!7324620 () Bool)

(declare-fun e!4385738 () Bool)

(assert (=> b!7324620 (= e!4385743 e!4385738)))

(declare-fun res!2960600 () Bool)

(assert (=> b!7324620 (= res!2960600 (not (nullable!8088 (reg!19313 (ite c!1359414 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))))))))

(assert (=> b!7324620 (=> (not res!2960600) (not e!4385738))))

(declare-fun b!7324621 () Bool)

(declare-fun call!666380 () Bool)

(assert (=> b!7324621 (= e!4385738 call!666380)))

(declare-fun b!7324622 () Bool)

(declare-fun res!2960602 () Bool)

(declare-fun e!4385740 () Bool)

(assert (=> b!7324622 (=> res!2960602 e!4385740)))

(assert (=> b!7324622 (= res!2960602 (not (is-Concat!27829 (ite c!1359414 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256)))))))))

(declare-fun e!4385742 () Bool)

(assert (=> b!7324622 (= e!4385742 e!4385740)))

(declare-fun b!7324623 () Bool)

(declare-fun res!2960599 () Bool)

(assert (=> b!7324623 (=> (not res!2960599) (not e!4385744))))

(declare-fun call!666382 () Bool)

(assert (=> b!7324623 (= res!2960599 call!666382)))

(assert (=> b!7324623 (= e!4385742 e!4385744)))

(declare-fun bm!666375 () Bool)

(declare-fun c!1359455 () Bool)

(assert (=> bm!666375 (= call!666380 (validRegex!9626 (ite c!1359456 (reg!19313 (ite c!1359414 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))) (ite c!1359455 (regOne!38481 (ite c!1359414 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))) (regTwo!38480 (ite c!1359414 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256)))))))))))

(declare-fun d!2274577 () Bool)

(declare-fun res!2960601 () Bool)

(assert (=> d!2274577 (=> res!2960601 e!4385741)))

(assert (=> d!2274577 (= res!2960601 (is-ElementMatch!18984 (ite c!1359414 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))))))

(assert (=> d!2274577 (= (validRegex!9626 (ite c!1359414 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))) e!4385741)))

(declare-fun b!7324624 () Bool)

(declare-fun e!4385739 () Bool)

(assert (=> b!7324624 (= e!4385739 call!666382)))

(declare-fun b!7324625 () Bool)

(assert (=> b!7324625 (= e!4385740 e!4385739)))

(declare-fun res!2960603 () Bool)

(assert (=> b!7324625 (=> (not res!2960603) (not e!4385739))))

(assert (=> b!7324625 (= res!2960603 call!666381)))

(declare-fun bm!666376 () Bool)

(assert (=> bm!666376 (= call!666382 call!666380)))

(declare-fun bm!666377 () Bool)

(assert (=> bm!666377 (= call!666381 (validRegex!9626 (ite c!1359455 (regTwo!38481 (ite c!1359414 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))) (regOne!38480 (ite c!1359414 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))))))))

(declare-fun b!7324626 () Bool)

(assert (=> b!7324626 (= e!4385743 e!4385742)))

(assert (=> b!7324626 (= c!1359455 (is-Union!18984 (ite c!1359414 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))))))

(assert (= (and d!2274577 (not res!2960601)) b!7324618))

(assert (= (and b!7324618 c!1359456) b!7324620))

(assert (= (and b!7324618 (not c!1359456)) b!7324626))

(assert (= (and b!7324620 res!2960600) b!7324621))

(assert (= (and b!7324626 c!1359455) b!7324623))

(assert (= (and b!7324626 (not c!1359455)) b!7324622))

(assert (= (and b!7324623 res!2960599) b!7324619))

(assert (= (and b!7324622 (not res!2960602)) b!7324625))

(assert (= (and b!7324625 res!2960603) b!7324624))

(assert (= (or b!7324619 b!7324625) bm!666377))

(assert (= (or b!7324623 b!7324624) bm!666376))

(assert (= (or b!7324621 bm!666376) bm!666375))

(declare-fun m!7990342 () Bool)

(assert (=> b!7324620 m!7990342))

(declare-fun m!7990344 () Bool)

(assert (=> bm!666375 m!7990344))

(declare-fun m!7990346 () Bool)

(assert (=> bm!666377 m!7990346))

(assert (=> bm!666341 d!2274577))

(declare-fun b!7324627 () Bool)

(declare-fun c!1359459 () Bool)

(declare-fun e!4385746 () Bool)

(assert (=> b!7324627 (= c!1359459 e!4385746)))

(declare-fun res!2960604 () Bool)

(assert (=> b!7324627 (=> (not res!2960604) (not e!4385746))))

(assert (=> b!7324627 (= res!2960604 (is-Concat!27829 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256))))))))))

(declare-fun e!4385745 () (Set Context!15848))

(declare-fun e!4385750 () (Set Context!15848))

(assert (=> b!7324627 (= e!4385745 e!4385750)))

(declare-fun b!7324628 () Bool)

(declare-fun call!666388 () (Set Context!15848))

(declare-fun call!666383 () (Set Context!15848))

(assert (=> b!7324628 (= e!4385745 (set.union call!666388 call!666383))))

(declare-fun b!7324629 () Bool)

(declare-fun e!4385747 () (Set Context!15848))

(assert (=> b!7324629 (= e!4385747 e!4385745)))

(declare-fun c!1359460 () Bool)

(assert (=> b!7324629 (= c!1359460 (is-Union!18984 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256))))))))))

(declare-fun b!7324630 () Bool)

(declare-fun call!666387 () (Set Context!15848))

(assert (=> b!7324630 (= e!4385750 (set.union call!666383 call!666387))))

(declare-fun b!7324631 () Bool)

(declare-fun e!4385748 () (Set Context!15848))

(assert (=> b!7324631 (= e!4385750 e!4385748)))

(declare-fun c!1359457 () Bool)

(assert (=> b!7324631 (= c!1359457 (is-Concat!27829 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256))))))))))

(declare-fun bm!666378 () Bool)

(declare-fun call!666386 () List!71480)

(declare-fun call!666385 () List!71480)

(assert (=> bm!666378 (= call!666386 call!666385)))

(declare-fun b!7324632 () Bool)

(assert (=> b!7324632 (= e!4385746 (nullable!8088 (regOne!38480 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256)))))))))))

(declare-fun bm!666379 () Bool)

(assert (=> bm!666379 (= call!666387 call!666388)))

(declare-fun bm!666380 () Bool)

(declare-fun call!666384 () (Set Context!15848))

(assert (=> bm!666380 (= call!666384 call!666387)))

(declare-fun bm!666381 () Bool)

(assert (=> bm!666381 (= call!666383 (derivationStepZipperDown!2815 (ite c!1359460 (regTwo!38481 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256))))))) (regOne!38480 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256)))))))) (ite c!1359460 (ite (or c!1359404 c!1359403) lt!2605629 (Context!15849 call!666333)) (Context!15849 call!666385)) c!10305))))

(declare-fun b!7324633 () Bool)

(declare-fun e!4385749 () (Set Context!15848))

(assert (=> b!7324633 (= e!4385749 call!666384)))

(declare-fun bm!666382 () Bool)

(assert (=> bm!666382 (= call!666385 ($colon$colon!3020 (exprs!8424 (ite (or c!1359404 c!1359403) lt!2605629 (Context!15849 call!666333))) (ite (or c!1359459 c!1359457) (regTwo!38480 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256))))))) (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256)))))))))))

(declare-fun b!7324634 () Bool)

(assert (=> b!7324634 (= e!4385747 (set.insert (ite (or c!1359404 c!1359403) lt!2605629 (Context!15849 call!666333)) (as set.empty (Set Context!15848))))))

(declare-fun bm!666383 () Bool)

(assert (=> bm!666383 (= call!666388 (derivationStepZipperDown!2815 (ite c!1359460 (regOne!38481 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256))))))) (ite c!1359459 (regTwo!38480 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256))))))) (ite c!1359457 (regOne!38480 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256))))))) (reg!19313 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256)))))))))) (ite (or c!1359460 c!1359459) (ite (or c!1359404 c!1359403) lt!2605629 (Context!15849 call!666333)) (Context!15849 call!666386)) c!10305))))

(declare-fun d!2274579 () Bool)

(declare-fun c!1359458 () Bool)

(assert (=> d!2274579 (= c!1359458 (and (is-ElementMatch!18984 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256))))))) (= (c!1359389 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256))))))) c!10305)))))

(assert (=> d!2274579 (= (derivationStepZipperDown!2815 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256)))))) (ite (or c!1359404 c!1359403) lt!2605629 (Context!15849 call!666333)) c!10305) e!4385747)))

(declare-fun b!7324635 () Bool)

(declare-fun c!1359461 () Bool)

(assert (=> b!7324635 (= c!1359461 (is-Star!18984 (ite c!1359404 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359403 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359401 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256))))))))))

(assert (=> b!7324635 (= e!4385748 e!4385749)))

(declare-fun b!7324636 () Bool)

(assert (=> b!7324636 (= e!4385748 call!666384)))

(declare-fun b!7324637 () Bool)

(assert (=> b!7324637 (= e!4385749 (as set.empty (Set Context!15848)))))

(assert (= (and d!2274579 c!1359458) b!7324634))

(assert (= (and d!2274579 (not c!1359458)) b!7324629))

(assert (= (and b!7324629 c!1359460) b!7324628))

(assert (= (and b!7324629 (not c!1359460)) b!7324627))

(assert (= (and b!7324627 res!2960604) b!7324632))

(assert (= (and b!7324627 c!1359459) b!7324630))

(assert (= (and b!7324627 (not c!1359459)) b!7324631))

(assert (= (and b!7324631 c!1359457) b!7324636))

(assert (= (and b!7324631 (not c!1359457)) b!7324635))

(assert (= (and b!7324635 c!1359461) b!7324633))

(assert (= (and b!7324635 (not c!1359461)) b!7324637))

(assert (= (or b!7324636 b!7324633) bm!666378))

(assert (= (or b!7324636 b!7324633) bm!666380))

(assert (= (or b!7324630 bm!666380) bm!666379))

(assert (= (or b!7324630 bm!666378) bm!666382))

(assert (= (or b!7324628 b!7324630) bm!666381))

(assert (= (or b!7324628 bm!666379) bm!666383))

(declare-fun m!7990348 () Bool)

(assert (=> bm!666381 m!7990348))

(declare-fun m!7990350 () Bool)

(assert (=> bm!666383 m!7990350))

(declare-fun m!7990352 () Bool)

(assert (=> bm!666382 m!7990352))

(declare-fun m!7990354 () Bool)

(assert (=> b!7324632 m!7990354))

(declare-fun m!7990356 () Bool)

(assert (=> b!7324634 m!7990356))

(assert (=> bm!666330 d!2274579))

(declare-fun d!2274581 () Bool)

(assert (=> d!2274581 (= (nullable!8088 (reg!19313 (h!77804 (exprs!8424 ct1!256)))) (nullableFct!3204 (reg!19313 (h!77804 (exprs!8424 ct1!256)))))))

(declare-fun bs!1916508 () Bool)

(assert (= bs!1916508 d!2274581))

(declare-fun m!7990358 () Bool)

(assert (=> bs!1916508 m!7990358))

(assert (=> b!7324483 d!2274581))

(declare-fun d!2274583 () Bool)

(assert (=> d!2274583 (= (nullable!8088 (regOne!38480 (h!77804 (exprs!8424 ct1!256)))) (nullableFct!3204 (regOne!38480 (h!77804 (exprs!8424 ct1!256)))))))

(declare-fun bs!1916509 () Bool)

(assert (= bs!1916509 d!2274583))

(declare-fun m!7990360 () Bool)

(assert (=> bs!1916509 m!7990360))

(assert (=> b!7324447 d!2274583))

(declare-fun bm!666388 () Bool)

(declare-fun call!666393 () Bool)

(declare-fun c!1359464 () Bool)

(assert (=> bm!666388 (= call!666393 (nullable!8088 (ite c!1359464 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))))))

(declare-fun b!7324652 () Bool)

(declare-fun e!4385765 () Bool)

(declare-fun e!4385767 () Bool)

(assert (=> b!7324652 (= e!4385765 e!4385767)))

(assert (=> b!7324652 (= c!1359464 (is-Union!18984 (h!77804 (exprs!8424 ct1!256))))))

(declare-fun b!7324653 () Bool)

(declare-fun e!4385764 () Bool)

(assert (=> b!7324653 (= e!4385764 call!666393)))

(declare-fun b!7324654 () Bool)

(declare-fun e!4385766 () Bool)

(assert (=> b!7324654 (= e!4385766 e!4385765)))

(declare-fun res!2960617 () Bool)

(assert (=> b!7324654 (=> res!2960617 e!4385765)))

(assert (=> b!7324654 (= res!2960617 (is-Star!18984 (h!77804 (exprs!8424 ct1!256))))))

(declare-fun d!2274585 () Bool)

(declare-fun res!2960619 () Bool)

(declare-fun e!4385763 () Bool)

(assert (=> d!2274585 (=> res!2960619 e!4385763)))

(assert (=> d!2274585 (= res!2960619 (is-EmptyExpr!18984 (h!77804 (exprs!8424 ct1!256))))))

(assert (=> d!2274585 (= (nullableFct!3204 (h!77804 (exprs!8424 ct1!256))) e!4385763)))

(declare-fun b!7324655 () Bool)

(declare-fun e!4385768 () Bool)

(assert (=> b!7324655 (= e!4385767 e!4385768)))

(declare-fun res!2960616 () Bool)

(assert (=> b!7324655 (= res!2960616 call!666393)))

(assert (=> b!7324655 (=> (not res!2960616) (not e!4385768))))

(declare-fun b!7324656 () Bool)

(assert (=> b!7324656 (= e!4385767 e!4385764)))

(declare-fun res!2960618 () Bool)

(declare-fun call!666394 () Bool)

(assert (=> b!7324656 (= res!2960618 call!666394)))

(assert (=> b!7324656 (=> res!2960618 e!4385764)))

(declare-fun bm!666389 () Bool)

(assert (=> bm!666389 (= call!666394 (nullable!8088 (ite c!1359464 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (regTwo!38480 (h!77804 (exprs!8424 ct1!256))))))))

(declare-fun b!7324657 () Bool)

(assert (=> b!7324657 (= e!4385768 call!666394)))

(declare-fun b!7324658 () Bool)

(assert (=> b!7324658 (= e!4385763 e!4385766)))

(declare-fun res!2960615 () Bool)

(assert (=> b!7324658 (=> (not res!2960615) (not e!4385766))))

(assert (=> b!7324658 (= res!2960615 (and (not (is-EmptyLang!18984 (h!77804 (exprs!8424 ct1!256)))) (not (is-ElementMatch!18984 (h!77804 (exprs!8424 ct1!256))))))))

(assert (= (and d!2274585 (not res!2960619)) b!7324658))

(assert (= (and b!7324658 res!2960615) b!7324654))

(assert (= (and b!7324654 (not res!2960617)) b!7324652))

(assert (= (and b!7324652 c!1359464) b!7324656))

(assert (= (and b!7324652 (not c!1359464)) b!7324655))

(assert (= (and b!7324656 (not res!2960618)) b!7324653))

(assert (= (and b!7324655 res!2960616) b!7324657))

(assert (= (or b!7324656 b!7324657) bm!666389))

(assert (= (or b!7324653 b!7324655) bm!666388))

(declare-fun m!7990362 () Bool)

(assert (=> bm!666388 m!7990362))

(declare-fun m!7990364 () Bool)

(assert (=> bm!666389 m!7990364))

(assert (=> d!2274525 d!2274585))

(declare-fun d!2274587 () Bool)

(declare-fun res!2960624 () Bool)

(declare-fun e!4385773 () Bool)

(assert (=> d!2274587 (=> res!2960624 e!4385773)))

(assert (=> d!2274587 (= res!2960624 (is-Nil!71356 (exprs!8424 cWitness!35)))))

(assert (=> d!2274587 (= (forall!17838 (exprs!8424 cWitness!35) lambda!453893) e!4385773)))

(declare-fun b!7324663 () Bool)

(declare-fun e!4385774 () Bool)

(assert (=> b!7324663 (= e!4385773 e!4385774)))

(declare-fun res!2960625 () Bool)

(assert (=> b!7324663 (=> (not res!2960625) (not e!4385774))))

(declare-fun dynLambda!29397 (Int Regex!18984) Bool)

(assert (=> b!7324663 (= res!2960625 (dynLambda!29397 lambda!453893 (h!77804 (exprs!8424 cWitness!35))))))

(declare-fun b!7324664 () Bool)

(assert (=> b!7324664 (= e!4385774 (forall!17838 (t!385863 (exprs!8424 cWitness!35)) lambda!453893))))

(assert (= (and d!2274587 (not res!2960624)) b!7324663))

(assert (= (and b!7324663 res!2960625) b!7324664))

(declare-fun b_lambda!283267 () Bool)

(assert (=> (not b_lambda!283267) (not b!7324663)))

(declare-fun m!7990366 () Bool)

(assert (=> b!7324663 m!7990366))

(declare-fun m!7990368 () Bool)

(assert (=> b!7324664 m!7990368))

(assert (=> d!2274547 d!2274587))

(declare-fun b!7324665 () Bool)

(declare-fun c!1359467 () Bool)

(declare-fun e!4385776 () Bool)

(assert (=> b!7324665 (= c!1359467 e!4385776)))

(declare-fun res!2960626 () Bool)

(assert (=> b!7324665 (=> (not res!2960626) (not e!4385776))))

(assert (=> b!7324665 (= res!2960626 (is-Concat!27829 (h!77804 (exprs!8424 lt!2605629))))))

(declare-fun e!4385775 () (Set Context!15848))

(declare-fun e!4385780 () (Set Context!15848))

(assert (=> b!7324665 (= e!4385775 e!4385780)))

(declare-fun b!7324666 () Bool)

(declare-fun call!666400 () (Set Context!15848))

(declare-fun call!666395 () (Set Context!15848))

(assert (=> b!7324666 (= e!4385775 (set.union call!666400 call!666395))))

(declare-fun b!7324667 () Bool)

(declare-fun e!4385777 () (Set Context!15848))

(assert (=> b!7324667 (= e!4385777 e!4385775)))

(declare-fun c!1359468 () Bool)

(assert (=> b!7324667 (= c!1359468 (is-Union!18984 (h!77804 (exprs!8424 lt!2605629))))))

(declare-fun b!7324668 () Bool)

(declare-fun call!666399 () (Set Context!15848))

(assert (=> b!7324668 (= e!4385780 (set.union call!666395 call!666399))))

(declare-fun b!7324669 () Bool)

(declare-fun e!4385778 () (Set Context!15848))

(assert (=> b!7324669 (= e!4385780 e!4385778)))

(declare-fun c!1359465 () Bool)

(assert (=> b!7324669 (= c!1359465 (is-Concat!27829 (h!77804 (exprs!8424 lt!2605629))))))

(declare-fun bm!666390 () Bool)

(declare-fun call!666398 () List!71480)

(declare-fun call!666397 () List!71480)

(assert (=> bm!666390 (= call!666398 call!666397)))

(declare-fun b!7324670 () Bool)

(assert (=> b!7324670 (= e!4385776 (nullable!8088 (regOne!38480 (h!77804 (exprs!8424 lt!2605629)))))))

(declare-fun bm!666391 () Bool)

(assert (=> bm!666391 (= call!666399 call!666400)))

(declare-fun bm!666392 () Bool)

(declare-fun call!666396 () (Set Context!15848))

(assert (=> bm!666392 (= call!666396 call!666399)))

(declare-fun bm!666393 () Bool)

(assert (=> bm!666393 (= call!666395 (derivationStepZipperDown!2815 (ite c!1359468 (regTwo!38481 (h!77804 (exprs!8424 lt!2605629))) (regOne!38480 (h!77804 (exprs!8424 lt!2605629)))) (ite c!1359468 (Context!15849 (t!385863 (exprs!8424 lt!2605629))) (Context!15849 call!666397)) c!10305))))

(declare-fun b!7324671 () Bool)

(declare-fun e!4385779 () (Set Context!15848))

(assert (=> b!7324671 (= e!4385779 call!666396)))

(declare-fun bm!666394 () Bool)

(assert (=> bm!666394 (= call!666397 ($colon$colon!3020 (exprs!8424 (Context!15849 (t!385863 (exprs!8424 lt!2605629)))) (ite (or c!1359467 c!1359465) (regTwo!38480 (h!77804 (exprs!8424 lt!2605629))) (h!77804 (exprs!8424 lt!2605629)))))))

(declare-fun b!7324672 () Bool)

(assert (=> b!7324672 (= e!4385777 (set.insert (Context!15849 (t!385863 (exprs!8424 lt!2605629))) (as set.empty (Set Context!15848))))))

(declare-fun bm!666395 () Bool)

(assert (=> bm!666395 (= call!666400 (derivationStepZipperDown!2815 (ite c!1359468 (regOne!38481 (h!77804 (exprs!8424 lt!2605629))) (ite c!1359467 (regTwo!38480 (h!77804 (exprs!8424 lt!2605629))) (ite c!1359465 (regOne!38480 (h!77804 (exprs!8424 lt!2605629))) (reg!19313 (h!77804 (exprs!8424 lt!2605629)))))) (ite (or c!1359468 c!1359467) (Context!15849 (t!385863 (exprs!8424 lt!2605629))) (Context!15849 call!666398)) c!10305))))

(declare-fun d!2274589 () Bool)

(declare-fun c!1359466 () Bool)

(assert (=> d!2274589 (= c!1359466 (and (is-ElementMatch!18984 (h!77804 (exprs!8424 lt!2605629))) (= (c!1359389 (h!77804 (exprs!8424 lt!2605629))) c!10305)))))

(assert (=> d!2274589 (= (derivationStepZipperDown!2815 (h!77804 (exprs!8424 lt!2605629)) (Context!15849 (t!385863 (exprs!8424 lt!2605629))) c!10305) e!4385777)))

(declare-fun b!7324673 () Bool)

(declare-fun c!1359469 () Bool)

(assert (=> b!7324673 (= c!1359469 (is-Star!18984 (h!77804 (exprs!8424 lt!2605629))))))

(assert (=> b!7324673 (= e!4385778 e!4385779)))

(declare-fun b!7324674 () Bool)

(assert (=> b!7324674 (= e!4385778 call!666396)))

(declare-fun b!7324675 () Bool)

(assert (=> b!7324675 (= e!4385779 (as set.empty (Set Context!15848)))))

(assert (= (and d!2274589 c!1359466) b!7324672))

(assert (= (and d!2274589 (not c!1359466)) b!7324667))

(assert (= (and b!7324667 c!1359468) b!7324666))

(assert (= (and b!7324667 (not c!1359468)) b!7324665))

(assert (= (and b!7324665 res!2960626) b!7324670))

(assert (= (and b!7324665 c!1359467) b!7324668))

(assert (= (and b!7324665 (not c!1359467)) b!7324669))

(assert (= (and b!7324669 c!1359465) b!7324674))

(assert (= (and b!7324669 (not c!1359465)) b!7324673))

(assert (= (and b!7324673 c!1359469) b!7324671))

(assert (= (and b!7324673 (not c!1359469)) b!7324675))

(assert (= (or b!7324674 b!7324671) bm!666390))

(assert (= (or b!7324674 b!7324671) bm!666392))

(assert (= (or b!7324668 bm!666392) bm!666391))

(assert (= (or b!7324668 bm!666390) bm!666394))

(assert (= (or b!7324666 b!7324668) bm!666393))

(assert (= (or b!7324666 bm!666391) bm!666395))

(declare-fun m!7990370 () Bool)

(assert (=> bm!666393 m!7990370))

(declare-fun m!7990372 () Bool)

(assert (=> bm!666395 m!7990372))

(declare-fun m!7990374 () Bool)

(assert (=> bm!666394 m!7990374))

(declare-fun m!7990376 () Bool)

(assert (=> b!7324670 m!7990376))

(declare-fun m!7990378 () Bool)

(assert (=> b!7324672 m!7990378))

(assert (=> bm!666345 d!2274589))

(declare-fun d!2274591 () Bool)

(declare-fun res!2960627 () Bool)

(declare-fun e!4385781 () Bool)

(assert (=> d!2274591 (=> res!2960627 e!4385781)))

(assert (=> d!2274591 (= res!2960627 (is-Nil!71356 (exprs!8424 ct2!352)))))

(assert (=> d!2274591 (= (forall!17838 (exprs!8424 ct2!352) lambda!453895) e!4385781)))

(declare-fun b!7324676 () Bool)

(declare-fun e!4385782 () Bool)

(assert (=> b!7324676 (= e!4385781 e!4385782)))

(declare-fun res!2960628 () Bool)

(assert (=> b!7324676 (=> (not res!2960628) (not e!4385782))))

(assert (=> b!7324676 (= res!2960628 (dynLambda!29397 lambda!453895 (h!77804 (exprs!8424 ct2!352))))))

(declare-fun b!7324677 () Bool)

(assert (=> b!7324677 (= e!4385782 (forall!17838 (t!385863 (exprs!8424 ct2!352)) lambda!453895))))

(assert (= (and d!2274591 (not res!2960627)) b!7324676))

(assert (= (and b!7324676 res!2960628) b!7324677))

(declare-fun b_lambda!283269 () Bool)

(assert (=> (not b_lambda!283269) (not b!7324676)))

(declare-fun m!7990380 () Bool)

(assert (=> b!7324676 m!7990380))

(declare-fun m!7990382 () Bool)

(assert (=> b!7324677 m!7990382))

(assert (=> d!2274551 d!2274591))

(declare-fun b!7324678 () Bool)

(declare-fun c!1359472 () Bool)

(declare-fun e!4385784 () Bool)

(assert (=> b!7324678 (= c!1359472 e!4385784)))

(declare-fun res!2960629 () Bool)

(assert (=> b!7324678 (=> (not res!2960629) (not e!4385784))))

(assert (=> b!7324678 (= res!2960629 (is-Concat!27829 (h!77804 (exprs!8424 ct1!256))))))

(declare-fun e!4385783 () (Set Context!15848))

(declare-fun e!4385788 () (Set Context!15848))

(assert (=> b!7324678 (= e!4385783 e!4385788)))

(declare-fun b!7324679 () Bool)

(declare-fun call!666406 () (Set Context!15848))

(declare-fun call!666401 () (Set Context!15848))

(assert (=> b!7324679 (= e!4385783 (set.union call!666406 call!666401))))

(declare-fun b!7324680 () Bool)

(declare-fun e!4385785 () (Set Context!15848))

(assert (=> b!7324680 (= e!4385785 e!4385783)))

(declare-fun c!1359473 () Bool)

(assert (=> b!7324680 (= c!1359473 (is-Union!18984 (h!77804 (exprs!8424 ct1!256))))))

(declare-fun b!7324681 () Bool)

(declare-fun call!666405 () (Set Context!15848))

(assert (=> b!7324681 (= e!4385788 (set.union call!666401 call!666405))))

(declare-fun b!7324682 () Bool)

(declare-fun e!4385786 () (Set Context!15848))

(assert (=> b!7324682 (= e!4385788 e!4385786)))

(declare-fun c!1359470 () Bool)

(assert (=> b!7324682 (= c!1359470 (is-Concat!27829 (h!77804 (exprs!8424 ct1!256))))))

(declare-fun bm!666396 () Bool)

(declare-fun call!666404 () List!71480)

(declare-fun call!666403 () List!71480)

(assert (=> bm!666396 (= call!666404 call!666403)))

(declare-fun b!7324683 () Bool)

(assert (=> b!7324683 (= e!4385784 (nullable!8088 (regOne!38480 (h!77804 (exprs!8424 ct1!256)))))))

(declare-fun bm!666397 () Bool)

(assert (=> bm!666397 (= call!666405 call!666406)))

(declare-fun bm!666398 () Bool)

(declare-fun call!666402 () (Set Context!15848))

(assert (=> bm!666398 (= call!666402 call!666405)))

(declare-fun bm!666399 () Bool)

(assert (=> bm!666399 (= call!666401 (derivationStepZipperDown!2815 (ite c!1359473 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256)))) (ite c!1359473 (Context!15849 (t!385863 (exprs!8424 ct1!256))) (Context!15849 call!666403)) c!10305))))

(declare-fun b!7324684 () Bool)

(declare-fun e!4385787 () (Set Context!15848))

(assert (=> b!7324684 (= e!4385787 call!666402)))

(declare-fun bm!666400 () Bool)

(assert (=> bm!666400 (= call!666403 ($colon$colon!3020 (exprs!8424 (Context!15849 (t!385863 (exprs!8424 ct1!256)))) (ite (or c!1359472 c!1359470) (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (h!77804 (exprs!8424 ct1!256)))))))

(declare-fun b!7324685 () Bool)

(assert (=> b!7324685 (= e!4385785 (set.insert (Context!15849 (t!385863 (exprs!8424 ct1!256))) (as set.empty (Set Context!15848))))))

(declare-fun bm!666401 () Bool)

(assert (=> bm!666401 (= call!666406 (derivationStepZipperDown!2815 (ite c!1359473 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (ite c!1359472 (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (ite c!1359470 (regOne!38480 (h!77804 (exprs!8424 ct1!256))) (reg!19313 (h!77804 (exprs!8424 ct1!256)))))) (ite (or c!1359473 c!1359472) (Context!15849 (t!385863 (exprs!8424 ct1!256))) (Context!15849 call!666404)) c!10305))))

(declare-fun d!2274593 () Bool)

(declare-fun c!1359471 () Bool)

(assert (=> d!2274593 (= c!1359471 (and (is-ElementMatch!18984 (h!77804 (exprs!8424 ct1!256))) (= (c!1359389 (h!77804 (exprs!8424 ct1!256))) c!10305)))))

(assert (=> d!2274593 (= (derivationStepZipperDown!2815 (h!77804 (exprs!8424 ct1!256)) (Context!15849 (t!385863 (exprs!8424 ct1!256))) c!10305) e!4385785)))

(declare-fun b!7324686 () Bool)

(declare-fun c!1359474 () Bool)

(assert (=> b!7324686 (= c!1359474 (is-Star!18984 (h!77804 (exprs!8424 ct1!256))))))

(assert (=> b!7324686 (= e!4385786 e!4385787)))

(declare-fun b!7324687 () Bool)

(assert (=> b!7324687 (= e!4385786 call!666402)))

(declare-fun b!7324688 () Bool)

(assert (=> b!7324688 (= e!4385787 (as set.empty (Set Context!15848)))))

(assert (= (and d!2274593 c!1359471) b!7324685))

(assert (= (and d!2274593 (not c!1359471)) b!7324680))

(assert (= (and b!7324680 c!1359473) b!7324679))

(assert (= (and b!7324680 (not c!1359473)) b!7324678))

(assert (= (and b!7324678 res!2960629) b!7324683))

(assert (= (and b!7324678 c!1359472) b!7324681))

(assert (= (and b!7324678 (not c!1359472)) b!7324682))

(assert (= (and b!7324682 c!1359470) b!7324687))

(assert (= (and b!7324682 (not c!1359470)) b!7324686))

(assert (= (and b!7324686 c!1359474) b!7324684))

(assert (= (and b!7324686 (not c!1359474)) b!7324688))

(assert (= (or b!7324687 b!7324684) bm!666396))

(assert (= (or b!7324687 b!7324684) bm!666398))

(assert (= (or b!7324681 bm!666398) bm!666397))

(assert (= (or b!7324681 bm!666396) bm!666400))

(assert (= (or b!7324679 b!7324681) bm!666399))

(assert (= (or b!7324679 bm!666397) bm!666401))

(declare-fun m!7990384 () Bool)

(assert (=> bm!666399 m!7990384))

(declare-fun m!7990386 () Bool)

(assert (=> bm!666401 m!7990386))

(declare-fun m!7990388 () Bool)

(assert (=> bm!666400 m!7990388))

(assert (=> b!7324683 m!7990242))

(declare-fun m!7990390 () Bool)

(assert (=> b!7324685 m!7990390))

(assert (=> bm!666346 d!2274593))

(assert (=> b!7324530 d!2274525))

(declare-fun d!2274595 () Bool)

(declare-fun res!2960630 () Bool)

(declare-fun e!4385789 () Bool)

(assert (=> d!2274595 (=> res!2960630 e!4385789)))

(assert (=> d!2274595 (= res!2960630 (is-Nil!71356 (++!16808 (exprs!8424 ct1!256) (exprs!8424 ct2!352))))))

(assert (=> d!2274595 (= (forall!17838 (++!16808 (exprs!8424 ct1!256) (exprs!8424 ct2!352)) lambda!453887) e!4385789)))

(declare-fun b!7324689 () Bool)

(declare-fun e!4385790 () Bool)

(assert (=> b!7324689 (= e!4385789 e!4385790)))

(declare-fun res!2960631 () Bool)

(assert (=> b!7324689 (=> (not res!2960631) (not e!4385790))))

(assert (=> b!7324689 (= res!2960631 (dynLambda!29397 lambda!453887 (h!77804 (++!16808 (exprs!8424 ct1!256) (exprs!8424 ct2!352)))))))

(declare-fun b!7324690 () Bool)

(assert (=> b!7324690 (= e!4385790 (forall!17838 (t!385863 (++!16808 (exprs!8424 ct1!256) (exprs!8424 ct2!352))) lambda!453887))))

(assert (= (and d!2274595 (not res!2960630)) b!7324689))

(assert (= (and b!7324689 res!2960631) b!7324690))

(declare-fun b_lambda!283271 () Bool)

(assert (=> (not b_lambda!283271) (not b!7324689)))

(declare-fun m!7990392 () Bool)

(assert (=> b!7324689 m!7990392))

(declare-fun m!7990394 () Bool)

(assert (=> b!7324690 m!7990394))

(assert (=> d!2274539 d!2274595))

(assert (=> d!2274539 d!2274535))

(declare-fun d!2274597 () Bool)

(assert (=> d!2274597 (forall!17838 (++!16808 (exprs!8424 ct1!256) (exprs!8424 ct2!352)) lambda!453887)))

(assert (=> d!2274597 true))

(declare-fun _$78!882 () Unit!164933)

(assert (=> d!2274597 (= (choose!56956 (exprs!8424 ct1!256) (exprs!8424 ct2!352) lambda!453887) _$78!882)))

(declare-fun bs!1916510 () Bool)

(assert (= bs!1916510 d!2274597))

(assert (=> bs!1916510 m!7990190))

(assert (=> bs!1916510 m!7990190))

(assert (=> bs!1916510 m!7990272))

(assert (=> d!2274539 d!2274597))

(declare-fun d!2274599 () Bool)

(declare-fun res!2960632 () Bool)

(declare-fun e!4385791 () Bool)

(assert (=> d!2274599 (=> res!2960632 e!4385791)))

(assert (=> d!2274599 (= res!2960632 (is-Nil!71356 (exprs!8424 ct1!256)))))

(assert (=> d!2274599 (= (forall!17838 (exprs!8424 ct1!256) lambda!453887) e!4385791)))

(declare-fun b!7324691 () Bool)

(declare-fun e!4385792 () Bool)

(assert (=> b!7324691 (= e!4385791 e!4385792)))

(declare-fun res!2960633 () Bool)

(assert (=> b!7324691 (=> (not res!2960633) (not e!4385792))))

(assert (=> b!7324691 (= res!2960633 (dynLambda!29397 lambda!453887 (h!77804 (exprs!8424 ct1!256))))))

(declare-fun b!7324692 () Bool)

(assert (=> b!7324692 (= e!4385792 (forall!17838 (t!385863 (exprs!8424 ct1!256)) lambda!453887))))

(assert (= (and d!2274599 (not res!2960632)) b!7324691))

(assert (= (and b!7324691 res!2960633) b!7324692))

(declare-fun b_lambda!283273 () Bool)

(assert (=> (not b_lambda!283273) (not b!7324691)))

(declare-fun m!7990396 () Bool)

(assert (=> b!7324691 m!7990396))

(declare-fun m!7990398 () Bool)

(assert (=> b!7324692 m!7990398))

(assert (=> d!2274539 d!2274599))

(declare-fun d!2274601 () Bool)

(assert (=> d!2274601 (= (nullable!8088 (h!77804 (exprs!8424 lt!2605629))) (nullableFct!3204 (h!77804 (exprs!8424 lt!2605629))))))

(declare-fun bs!1916511 () Bool)

(assert (= bs!1916511 d!2274601))

(declare-fun m!7990400 () Bool)

(assert (=> bs!1916511 m!7990400))

(assert (=> b!7324525 d!2274601))

(declare-fun b!7324693 () Bool)

(declare-fun e!4385796 () Bool)

(declare-fun e!4385798 () Bool)

(assert (=> b!7324693 (= e!4385796 e!4385798)))

(declare-fun c!1359476 () Bool)

(assert (=> b!7324693 (= c!1359476 (is-Star!18984 (ite c!1359415 (reg!19313 (h!77804 (exprs!8424 ct1!256))) (ite c!1359414 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (regTwo!38480 (h!77804 (exprs!8424 ct1!256)))))))))

(declare-fun b!7324694 () Bool)

(declare-fun e!4385799 () Bool)

(declare-fun call!666408 () Bool)

(assert (=> b!7324694 (= e!4385799 call!666408)))

(declare-fun b!7324695 () Bool)

(declare-fun e!4385793 () Bool)

(assert (=> b!7324695 (= e!4385798 e!4385793)))

(declare-fun res!2960635 () Bool)

(assert (=> b!7324695 (= res!2960635 (not (nullable!8088 (reg!19313 (ite c!1359415 (reg!19313 (h!77804 (exprs!8424 ct1!256))) (ite c!1359414 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (regTwo!38480 (h!77804 (exprs!8424 ct1!256)))))))))))

(assert (=> b!7324695 (=> (not res!2960635) (not e!4385793))))

(declare-fun b!7324696 () Bool)

(declare-fun call!666407 () Bool)

(assert (=> b!7324696 (= e!4385793 call!666407)))

(declare-fun b!7324697 () Bool)

(declare-fun res!2960637 () Bool)

(declare-fun e!4385795 () Bool)

(assert (=> b!7324697 (=> res!2960637 e!4385795)))

(assert (=> b!7324697 (= res!2960637 (not (is-Concat!27829 (ite c!1359415 (reg!19313 (h!77804 (exprs!8424 ct1!256))) (ite c!1359414 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (regTwo!38480 (h!77804 (exprs!8424 ct1!256))))))))))

(declare-fun e!4385797 () Bool)

(assert (=> b!7324697 (= e!4385797 e!4385795)))

(declare-fun b!7324698 () Bool)

(declare-fun res!2960634 () Bool)

(assert (=> b!7324698 (=> (not res!2960634) (not e!4385799))))

(declare-fun call!666409 () Bool)

(assert (=> b!7324698 (= res!2960634 call!666409)))

(assert (=> b!7324698 (= e!4385797 e!4385799)))

(declare-fun c!1359475 () Bool)

(declare-fun bm!666402 () Bool)

(assert (=> bm!666402 (= call!666407 (validRegex!9626 (ite c!1359476 (reg!19313 (ite c!1359415 (reg!19313 (h!77804 (exprs!8424 ct1!256))) (ite c!1359414 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (regTwo!38480 (h!77804 (exprs!8424 ct1!256)))))) (ite c!1359475 (regOne!38481 (ite c!1359415 (reg!19313 (h!77804 (exprs!8424 ct1!256))) (ite c!1359414 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (regTwo!38480 (h!77804 (exprs!8424 ct1!256)))))) (regTwo!38480 (ite c!1359415 (reg!19313 (h!77804 (exprs!8424 ct1!256))) (ite c!1359414 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (regTwo!38480 (h!77804 (exprs!8424 ct1!256))))))))))))

(declare-fun d!2274603 () Bool)

(declare-fun res!2960636 () Bool)

(assert (=> d!2274603 (=> res!2960636 e!4385796)))

(assert (=> d!2274603 (= res!2960636 (is-ElementMatch!18984 (ite c!1359415 (reg!19313 (h!77804 (exprs!8424 ct1!256))) (ite c!1359414 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (regTwo!38480 (h!77804 (exprs!8424 ct1!256)))))))))

(assert (=> d!2274603 (= (validRegex!9626 (ite c!1359415 (reg!19313 (h!77804 (exprs!8424 ct1!256))) (ite c!1359414 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (regTwo!38480 (h!77804 (exprs!8424 ct1!256)))))) e!4385796)))

(declare-fun b!7324699 () Bool)

(declare-fun e!4385794 () Bool)

(assert (=> b!7324699 (= e!4385794 call!666409)))

(declare-fun b!7324700 () Bool)

(assert (=> b!7324700 (= e!4385795 e!4385794)))

(declare-fun res!2960638 () Bool)

(assert (=> b!7324700 (=> (not res!2960638) (not e!4385794))))

(assert (=> b!7324700 (= res!2960638 call!666408)))

(declare-fun bm!666403 () Bool)

(assert (=> bm!666403 (= call!666409 call!666407)))

(declare-fun bm!666404 () Bool)

(assert (=> bm!666404 (= call!666408 (validRegex!9626 (ite c!1359475 (regTwo!38481 (ite c!1359415 (reg!19313 (h!77804 (exprs!8424 ct1!256))) (ite c!1359414 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (regTwo!38480 (h!77804 (exprs!8424 ct1!256)))))) (regOne!38480 (ite c!1359415 (reg!19313 (h!77804 (exprs!8424 ct1!256))) (ite c!1359414 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (regTwo!38480 (h!77804 (exprs!8424 ct1!256)))))))))))

(declare-fun b!7324701 () Bool)

(assert (=> b!7324701 (= e!4385798 e!4385797)))

(assert (=> b!7324701 (= c!1359475 (is-Union!18984 (ite c!1359415 (reg!19313 (h!77804 (exprs!8424 ct1!256))) (ite c!1359414 (regOne!38481 (h!77804 (exprs!8424 ct1!256))) (regTwo!38480 (h!77804 (exprs!8424 ct1!256)))))))))

(assert (= (and d!2274603 (not res!2960636)) b!7324693))

(assert (= (and b!7324693 c!1359476) b!7324695))

(assert (= (and b!7324693 (not c!1359476)) b!7324701))

(assert (= (and b!7324695 res!2960635) b!7324696))

(assert (= (and b!7324701 c!1359475) b!7324698))

(assert (= (and b!7324701 (not c!1359475)) b!7324697))

(assert (= (and b!7324698 res!2960634) b!7324694))

(assert (= (and b!7324697 (not res!2960637)) b!7324700))

(assert (= (and b!7324700 res!2960638) b!7324699))

(assert (= (or b!7324694 b!7324700) bm!666404))

(assert (= (or b!7324698 b!7324699) bm!666403))

(assert (= (or b!7324696 bm!666403) bm!666402))

(declare-fun m!7990402 () Bool)

(assert (=> b!7324695 m!7990402))

(declare-fun m!7990404 () Bool)

(assert (=> bm!666402 m!7990404))

(declare-fun m!7990406 () Bool)

(assert (=> bm!666404 m!7990406))

(assert (=> bm!666339 d!2274603))

(declare-fun d!2274605 () Bool)

(declare-fun res!2960639 () Bool)

(declare-fun e!4385800 () Bool)

(assert (=> d!2274605 (=> res!2960639 e!4385800)))

(assert (=> d!2274605 (= res!2960639 (is-Nil!71356 (exprs!8424 ct1!256)))))

(assert (=> d!2274605 (= (forall!17838 (exprs!8424 ct1!256) lambda!453894) e!4385800)))

(declare-fun b!7324702 () Bool)

(declare-fun e!4385801 () Bool)

(assert (=> b!7324702 (= e!4385800 e!4385801)))

(declare-fun res!2960640 () Bool)

(assert (=> b!7324702 (=> (not res!2960640) (not e!4385801))))

(assert (=> b!7324702 (= res!2960640 (dynLambda!29397 lambda!453894 (h!77804 (exprs!8424 ct1!256))))))

(declare-fun b!7324703 () Bool)

(assert (=> b!7324703 (= e!4385801 (forall!17838 (t!385863 (exprs!8424 ct1!256)) lambda!453894))))

(assert (= (and d!2274605 (not res!2960639)) b!7324702))

(assert (= (and b!7324702 res!2960640) b!7324703))

(declare-fun b_lambda!283275 () Bool)

(assert (=> (not b_lambda!283275) (not b!7324702)))

(declare-fun m!7990408 () Bool)

(assert (=> b!7324702 m!7990408))

(declare-fun m!7990410 () Bool)

(assert (=> b!7324703 m!7990410))

(assert (=> d!2274549 d!2274605))

(declare-fun b!7324704 () Bool)

(declare-fun c!1359479 () Bool)

(declare-fun e!4385803 () Bool)

(assert (=> b!7324704 (= c!1359479 e!4385803)))

(declare-fun res!2960641 () Bool)

(assert (=> b!7324704 (=> (not res!2960641) (not e!4385803))))

(assert (=> b!7324704 (= res!2960641 (is-Concat!27829 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))))))

(declare-fun e!4385802 () (Set Context!15848))

(declare-fun e!4385807 () (Set Context!15848))

(assert (=> b!7324704 (= e!4385802 e!4385807)))

(declare-fun b!7324705 () Bool)

(declare-fun call!666415 () (Set Context!15848))

(declare-fun call!666410 () (Set Context!15848))

(assert (=> b!7324705 (= e!4385802 (set.union call!666415 call!666410))))

(declare-fun b!7324706 () Bool)

(declare-fun e!4385804 () (Set Context!15848))

(assert (=> b!7324706 (= e!4385804 e!4385802)))

(declare-fun c!1359480 () Bool)

(assert (=> b!7324706 (= c!1359480 (is-Union!18984 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))))))

(declare-fun b!7324707 () Bool)

(declare-fun call!666414 () (Set Context!15848))

(assert (=> b!7324707 (= e!4385807 (set.union call!666410 call!666414))))

(declare-fun b!7324708 () Bool)

(declare-fun e!4385805 () (Set Context!15848))

(assert (=> b!7324708 (= e!4385807 e!4385805)))

(declare-fun c!1359477 () Bool)

(assert (=> b!7324708 (= c!1359477 (is-Concat!27829 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))))))

(declare-fun bm!666405 () Bool)

(declare-fun call!666413 () List!71480)

(declare-fun call!666412 () List!71480)

(assert (=> bm!666405 (= call!666413 call!666412)))

(declare-fun b!7324709 () Bool)

(assert (=> b!7324709 (= e!4385803 (nullable!8088 (regOne!38480 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256)))))))))

(declare-fun bm!666406 () Bool)

(assert (=> bm!666406 (= call!666414 call!666415)))

(declare-fun bm!666407 () Bool)

(declare-fun call!666411 () (Set Context!15848))

(assert (=> bm!666407 (= call!666411 call!666414)))

(declare-fun bm!666408 () Bool)

(assert (=> bm!666408 (= call!666410 (derivationStepZipperDown!2815 (ite c!1359480 (regTwo!38481 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))) (regOne!38480 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256)))))) (ite c!1359480 (ite c!1359404 lt!2605629 (Context!15849 call!666332)) (Context!15849 call!666412)) c!10305))))

(declare-fun b!7324710 () Bool)

(declare-fun e!4385806 () (Set Context!15848))

(assert (=> b!7324710 (= e!4385806 call!666411)))

(declare-fun bm!666409 () Bool)

(assert (=> bm!666409 (= call!666412 ($colon$colon!3020 (exprs!8424 (ite c!1359404 lt!2605629 (Context!15849 call!666332))) (ite (or c!1359479 c!1359477) (regTwo!38480 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))) (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256)))))))))

(declare-fun b!7324711 () Bool)

(assert (=> b!7324711 (= e!4385804 (set.insert (ite c!1359404 lt!2605629 (Context!15849 call!666332)) (as set.empty (Set Context!15848))))))

(declare-fun bm!666410 () Bool)

(assert (=> bm!666410 (= call!666415 (derivationStepZipperDown!2815 (ite c!1359480 (regOne!38481 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))) (ite c!1359479 (regTwo!38480 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))) (ite c!1359477 (regOne!38480 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))) (reg!19313 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256)))))))) (ite (or c!1359480 c!1359479) (ite c!1359404 lt!2605629 (Context!15849 call!666332)) (Context!15849 call!666413)) c!10305))))

(declare-fun d!2274607 () Bool)

(declare-fun c!1359478 () Bool)

(assert (=> d!2274607 (= c!1359478 (and (is-ElementMatch!18984 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))) (= (c!1359389 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))) c!10305)))))

(assert (=> d!2274607 (= (derivationStepZipperDown!2815 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256)))) (ite c!1359404 lt!2605629 (Context!15849 call!666332)) c!10305) e!4385804)))

(declare-fun b!7324712 () Bool)

(declare-fun c!1359481 () Bool)

(assert (=> b!7324712 (= c!1359481 (is-Star!18984 (ite c!1359404 (regTwo!38481 (h!77804 (exprs!8424 ct1!256))) (regOne!38480 (h!77804 (exprs!8424 ct1!256))))))))

(assert (=> b!7324712 (= e!4385805 e!4385806)))

(declare-fun b!7324713 () Bool)

(assert (=> b!7324713 (= e!4385805 call!666411)))

(declare-fun b!7324714 () Bool)

(assert (=> b!7324714 (= e!4385806 (as set.empty (Set Context!15848)))))

(assert (= (and d!2274607 c!1359478) b!7324711))

(assert (= (and d!2274607 (not c!1359478)) b!7324706))

(assert (= (and b!7324706 c!1359480) b!7324705))

(assert (= (and b!7324706 (not c!1359480)) b!7324704))

(assert (= (and b!7324704 res!2960641) b!7324709))

(assert (= (and b!7324704 c!1359479) b!7324707))

(assert (= (and b!7324704 (not c!1359479)) b!7324708))

(assert (= (and b!7324708 c!1359477) b!7324713))

(assert (= (and b!7324708 (not c!1359477)) b!7324712))

(assert (= (and b!7324712 c!1359481) b!7324710))

(assert (= (and b!7324712 (not c!1359481)) b!7324714))

(assert (= (or b!7324713 b!7324710) bm!666405))

(assert (= (or b!7324713 b!7324710) bm!666407))

(assert (= (or b!7324707 bm!666407) bm!666406))

(assert (= (or b!7324707 bm!666405) bm!666409))

(assert (= (or b!7324705 b!7324707) bm!666408))

(assert (= (or b!7324705 bm!666406) bm!666410))

(declare-fun m!7990412 () Bool)

(assert (=> bm!666408 m!7990412))

(declare-fun m!7990414 () Bool)

(assert (=> bm!666410 m!7990414))

(declare-fun m!7990416 () Bool)

(assert (=> bm!666409 m!7990416))

(declare-fun m!7990418 () Bool)

(assert (=> b!7324709 m!7990418))

(declare-fun m!7990420 () Bool)

(assert (=> b!7324711 m!7990420))

(assert (=> bm!666328 d!2274607))

(declare-fun bm!666411 () Bool)

(declare-fun call!666416 () (Set Context!15848))

(assert (=> bm!666411 (= call!666416 (derivationStepZipperDown!2815 (h!77804 (exprs!8424 (Context!15849 (t!385863 (exprs!8424 lt!2605629))))) (Context!15849 (t!385863 (exprs!8424 (Context!15849 (t!385863 (exprs!8424 lt!2605629)))))) c!10305))))

(declare-fun d!2274609 () Bool)

(declare-fun c!1359483 () Bool)

(declare-fun e!4385808 () Bool)

(assert (=> d!2274609 (= c!1359483 e!4385808)))

(declare-fun res!2960642 () Bool)

(assert (=> d!2274609 (=> (not res!2960642) (not e!4385808))))

(assert (=> d!2274609 (= res!2960642 (is-Cons!71356 (exprs!8424 (Context!15849 (t!385863 (exprs!8424 lt!2605629))))))))

(declare-fun e!4385810 () (Set Context!15848))

(assert (=> d!2274609 (= (derivationStepZipperUp!2664 (Context!15849 (t!385863 (exprs!8424 lt!2605629))) c!10305) e!4385810)))

(declare-fun b!7324715 () Bool)

(assert (=> b!7324715 (= e!4385808 (nullable!8088 (h!77804 (exprs!8424 (Context!15849 (t!385863 (exprs!8424 lt!2605629)))))))))

(declare-fun b!7324716 () Bool)

(declare-fun e!4385809 () (Set Context!15848))

(assert (=> b!7324716 (= e!4385809 call!666416)))

(declare-fun b!7324717 () Bool)

(assert (=> b!7324717 (= e!4385810 e!4385809)))

(declare-fun c!1359482 () Bool)

(assert (=> b!7324717 (= c!1359482 (is-Cons!71356 (exprs!8424 (Context!15849 (t!385863 (exprs!8424 lt!2605629))))))))

(declare-fun b!7324718 () Bool)

(assert (=> b!7324718 (= e!4385810 (set.union call!666416 (derivationStepZipperUp!2664 (Context!15849 (t!385863 (exprs!8424 (Context!15849 (t!385863 (exprs!8424 lt!2605629)))))) c!10305)))))

(declare-fun b!7324719 () Bool)

(assert (=> b!7324719 (= e!4385809 (as set.empty (Set Context!15848)))))

(assert (= (and d!2274609 res!2960642) b!7324715))

(assert (= (and d!2274609 c!1359483) b!7324718))

(assert (= (and d!2274609 (not c!1359483)) b!7324717))

(assert (= (and b!7324717 c!1359482) b!7324716))

(assert (= (and b!7324717 (not c!1359482)) b!7324719))

(assert (= (or b!7324718 b!7324716) bm!666411))

(declare-fun m!7990422 () Bool)

(assert (=> bm!666411 m!7990422))

(declare-fun m!7990424 () Bool)

(assert (=> b!7324715 m!7990424))

(declare-fun m!7990426 () Bool)

(assert (=> b!7324718 m!7990426))

(assert (=> b!7324528 d!2274609))

(declare-fun bm!666412 () Bool)

(declare-fun call!666417 () (Set Context!15848))

(assert (=> bm!666412 (= call!666417 (derivationStepZipperDown!2815 (h!77804 (exprs!8424 (Context!15849 (t!385863 (exprs!8424 ct1!256))))) (Context!15849 (t!385863 (exprs!8424 (Context!15849 (t!385863 (exprs!8424 ct1!256)))))) c!10305))))

(declare-fun d!2274611 () Bool)

(declare-fun c!1359485 () Bool)

(declare-fun e!4385811 () Bool)

(assert (=> d!2274611 (= c!1359485 e!4385811)))

(declare-fun res!2960643 () Bool)

(assert (=> d!2274611 (=> (not res!2960643) (not e!4385811))))

(assert (=> d!2274611 (= res!2960643 (is-Cons!71356 (exprs!8424 (Context!15849 (t!385863 (exprs!8424 ct1!256))))))))

(declare-fun e!4385813 () (Set Context!15848))

(assert (=> d!2274611 (= (derivationStepZipperUp!2664 (Context!15849 (t!385863 (exprs!8424 ct1!256))) c!10305) e!4385813)))

(declare-fun b!7324720 () Bool)

(assert (=> b!7324720 (= e!4385811 (nullable!8088 (h!77804 (exprs!8424 (Context!15849 (t!385863 (exprs!8424 ct1!256)))))))))

(declare-fun b!7324721 () Bool)

(declare-fun e!4385812 () (Set Context!15848))

(assert (=> b!7324721 (= e!4385812 call!666417)))

(declare-fun b!7324722 () Bool)

(assert (=> b!7324722 (= e!4385813 e!4385812)))

(declare-fun c!1359484 () Bool)

(assert (=> b!7324722 (= c!1359484 (is-Cons!71356 (exprs!8424 (Context!15849 (t!385863 (exprs!8424 ct1!256))))))))

(declare-fun b!7324723 () Bool)

(assert (=> b!7324723 (= e!4385813 (set.union call!666417 (derivationStepZipperUp!2664 (Context!15849 (t!385863 (exprs!8424 (Context!15849 (t!385863 (exprs!8424 ct1!256)))))) c!10305)))))

(declare-fun b!7324724 () Bool)

(assert (=> b!7324724 (= e!4385812 (as set.empty (Set Context!15848)))))

(assert (= (and d!2274611 res!2960643) b!7324720))

(assert (= (and d!2274611 c!1359485) b!7324723))

(assert (= (and d!2274611 (not c!1359485)) b!7324722))

(assert (= (and b!7324722 c!1359484) b!7324721))

(assert (= (and b!7324722 (not c!1359484)) b!7324724))

(assert (= (or b!7324723 b!7324721) bm!666412))

(declare-fun m!7990428 () Bool)

(assert (=> bm!666412 m!7990428))

(declare-fun m!7990430 () Bool)

(assert (=> b!7324720 m!7990430))

(declare-fun m!7990432 () Bool)

(assert (=> b!7324723 m!7990432))

(assert (=> b!7324533 d!2274611))

(declare-fun b!7324725 () Bool)

(declare-fun e!4385815 () List!71480)

(assert (=> b!7324725 (= e!4385815 (exprs!8424 ct2!352))))

(declare-fun b!7324727 () Bool)

(declare-fun res!2960644 () Bool)

(declare-fun e!4385814 () Bool)

(assert (=> b!7324727 (=> (not res!2960644) (not e!4385814))))

(declare-fun lt!2605661 () List!71480)

(assert (=> b!7324727 (= res!2960644 (= (size!41907 lt!2605661) (+ (size!41907 (t!385863 (exprs!8424 ct1!256))) (size!41907 (exprs!8424 ct2!352)))))))

(declare-fun b!7324728 () Bool)

(assert (=> b!7324728 (= e!4385814 (or (not (= (exprs!8424 ct2!352) Nil!71356)) (= lt!2605661 (t!385863 (exprs!8424 ct1!256)))))))

(declare-fun d!2274613 () Bool)

(assert (=> d!2274613 e!4385814))

(declare-fun res!2960645 () Bool)

(assert (=> d!2274613 (=> (not res!2960645) (not e!4385814))))

(assert (=> d!2274613 (= res!2960645 (= (content!14930 lt!2605661) (set.union (content!14930 (t!385863 (exprs!8424 ct1!256))) (content!14930 (exprs!8424 ct2!352)))))))

(assert (=> d!2274613 (= lt!2605661 e!4385815)))

(declare-fun c!1359486 () Bool)

(assert (=> d!2274613 (= c!1359486 (is-Nil!71356 (t!385863 (exprs!8424 ct1!256))))))

(assert (=> d!2274613 (= (++!16808 (t!385863 (exprs!8424 ct1!256)) (exprs!8424 ct2!352)) lt!2605661)))

(declare-fun b!7324726 () Bool)

(assert (=> b!7324726 (= e!4385815 (Cons!71356 (h!77804 (t!385863 (exprs!8424 ct1!256))) (++!16808 (t!385863 (t!385863 (exprs!8424 ct1!256))) (exprs!8424 ct2!352))))))

(assert (= (and d!2274613 c!1359486) b!7324725))

(assert (= (and d!2274613 (not c!1359486)) b!7324726))

(assert (= (and d!2274613 res!2960645) b!7324727))

(assert (= (and b!7324727 res!2960644) b!7324728))

(declare-fun m!7990434 () Bool)

(assert (=> b!7324727 m!7990434))

(declare-fun m!7990436 () Bool)

(assert (=> b!7324727 m!7990436))

(assert (=> b!7324727 m!7990262))

(declare-fun m!7990438 () Bool)

(assert (=> d!2274613 m!7990438))

(declare-fun m!7990440 () Bool)

(assert (=> d!2274613 m!7990440))

(assert (=> d!2274613 m!7990268))

(declare-fun m!7990442 () Bool)

(assert (=> b!7324726 m!7990442))

(assert (=> b!7324504 d!2274613))

(declare-fun d!2274615 () Bool)

(assert (=> d!2274615 (= ($colon$colon!3020 (exprs!8424 lt!2605629) (ite (or c!1359403 c!1359401) (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (h!77804 (exprs!8424 ct1!256)))) (Cons!71356 (ite (or c!1359403 c!1359401) (regTwo!38480 (h!77804 (exprs!8424 ct1!256))) (h!77804 (exprs!8424 ct1!256))) (exprs!8424 lt!2605629)))))

(assert (=> bm!666329 d!2274615))

(declare-fun d!2274617 () Bool)

(declare-fun c!1359489 () Bool)

(assert (=> d!2274617 (= c!1359489 (is-Nil!71356 lt!2605651))))

(declare-fun e!4385818 () (Set Regex!18984))

(assert (=> d!2274617 (= (content!14930 lt!2605651) e!4385818)))

(declare-fun b!7324733 () Bool)

(assert (=> b!7324733 (= e!4385818 (as set.empty (Set Regex!18984)))))

(declare-fun b!7324734 () Bool)

(assert (=> b!7324734 (= e!4385818 (set.union (set.insert (h!77804 lt!2605651) (as set.empty (Set Regex!18984))) (content!14930 (t!385863 lt!2605651))))))

(assert (= (and d!2274617 c!1359489) b!7324733))

(assert (= (and d!2274617 (not c!1359489)) b!7324734))

(declare-fun m!7990444 () Bool)

(assert (=> b!7324734 m!7990444))

(declare-fun m!7990446 () Bool)

(assert (=> b!7324734 m!7990446))

(assert (=> d!2274535 d!2274617))

(declare-fun d!2274619 () Bool)

(declare-fun c!1359490 () Bool)

(assert (=> d!2274619 (= c!1359490 (is-Nil!71356 (exprs!8424 ct1!256)))))

(declare-fun e!4385819 () (Set Regex!18984))

(assert (=> d!2274619 (= (content!14930 (exprs!8424 ct1!256)) e!4385819)))

(declare-fun b!7324735 () Bool)

(assert (=> b!7324735 (= e!4385819 (as set.empty (Set Regex!18984)))))

(declare-fun b!7324736 () Bool)

(assert (=> b!7324736 (= e!4385819 (set.union (set.insert (h!77804 (exprs!8424 ct1!256)) (as set.empty (Set Regex!18984))) (content!14930 (t!385863 (exprs!8424 ct1!256)))))))

(assert (= (and d!2274619 c!1359490) b!7324735))

(assert (= (and d!2274619 (not c!1359490)) b!7324736))

(declare-fun m!7990448 () Bool)

(assert (=> b!7324736 m!7990448))

(assert (=> b!7324736 m!7990440))

(assert (=> d!2274535 d!2274619))

(declare-fun d!2274621 () Bool)

(declare-fun c!1359491 () Bool)

(assert (=> d!2274621 (= c!1359491 (is-Nil!71356 (exprs!8424 ct2!352)))))

(declare-fun e!4385820 () (Set Regex!18984))

(assert (=> d!2274621 (= (content!14930 (exprs!8424 ct2!352)) e!4385820)))

(declare-fun b!7324737 () Bool)

(assert (=> b!7324737 (= e!4385820 (as set.empty (Set Regex!18984)))))

(declare-fun b!7324738 () Bool)

(assert (=> b!7324738 (= e!4385820 (set.union (set.insert (h!77804 (exprs!8424 ct2!352)) (as set.empty (Set Regex!18984))) (content!14930 (t!385863 (exprs!8424 ct2!352)))))))

(assert (= (and d!2274621 c!1359491) b!7324737))

(assert (= (and d!2274621 (not c!1359491)) b!7324738))

(declare-fun m!7990450 () Bool)

(assert (=> b!7324738 m!7990450))

(declare-fun m!7990452 () Bool)

(assert (=> b!7324738 m!7990452))

(assert (=> d!2274535 d!2274621))

(declare-fun d!2274623 () Bool)

(declare-fun lt!2605664 () Int)

(assert (=> d!2274623 (>= lt!2605664 0)))

(declare-fun e!4385823 () Int)

(assert (=> d!2274623 (= lt!2605664 e!4385823)))

(declare-fun c!1359494 () Bool)

(assert (=> d!2274623 (= c!1359494 (is-Nil!71356 lt!2605651))))

(assert (=> d!2274623 (= (size!41907 lt!2605651) lt!2605664)))

(declare-fun b!7324743 () Bool)

(assert (=> b!7324743 (= e!4385823 0)))

(declare-fun b!7324744 () Bool)

(assert (=> b!7324744 (= e!4385823 (+ 1 (size!41907 (t!385863 lt!2605651))))))

(assert (= (and d!2274623 c!1359494) b!7324743))

(assert (= (and d!2274623 (not c!1359494)) b!7324744))

(declare-fun m!7990454 () Bool)

(assert (=> b!7324744 m!7990454))

(assert (=> b!7324505 d!2274623))

(declare-fun d!2274625 () Bool)

(declare-fun lt!2605665 () Int)

(assert (=> d!2274625 (>= lt!2605665 0)))

(declare-fun e!4385824 () Int)

(assert (=> d!2274625 (= lt!2605665 e!4385824)))

(declare-fun c!1359495 () Bool)

(assert (=> d!2274625 (= c!1359495 (is-Nil!71356 (exprs!8424 ct1!256)))))

(assert (=> d!2274625 (= (size!41907 (exprs!8424 ct1!256)) lt!2605665)))

(declare-fun b!7324745 () Bool)

(assert (=> b!7324745 (= e!4385824 0)))

(declare-fun b!7324746 () Bool)

(assert (=> b!7324746 (= e!4385824 (+ 1 (size!41907 (t!385863 (exprs!8424 ct1!256)))))))

(assert (= (and d!2274625 c!1359495) b!7324745))

(assert (= (and d!2274625 (not c!1359495)) b!7324746))

(assert (=> b!7324746 m!7990436))

(assert (=> b!7324505 d!2274625))

(declare-fun d!2274627 () Bool)

(declare-fun lt!2605666 () Int)

(assert (=> d!2274627 (>= lt!2605666 0)))

(declare-fun e!4385825 () Int)

(assert (=> d!2274627 (= lt!2605666 e!4385825)))

(declare-fun c!1359496 () Bool)

(assert (=> d!2274627 (= c!1359496 (is-Nil!71356 (exprs!8424 ct2!352)))))

(assert (=> d!2274627 (= (size!41907 (exprs!8424 ct2!352)) lt!2605666)))

(declare-fun b!7324747 () Bool)

(assert (=> b!7324747 (= e!4385825 0)))

(declare-fun b!7324748 () Bool)

(assert (=> b!7324748 (= e!4385825 (+ 1 (size!41907 (t!385863 (exprs!8424 ct2!352)))))))

(assert (= (and d!2274627 c!1359496) b!7324747))

(assert (= (and d!2274627 (not c!1359496)) b!7324748))

(declare-fun m!7990456 () Bool)

(assert (=> b!7324748 m!7990456))

(assert (=> b!7324505 d!2274627))

(declare-fun e!4385828 () Bool)

(assert (=> b!7324545 (= tp!2080272 e!4385828)))

(declare-fun b!7324760 () Bool)

(declare-fun tp!2080298 () Bool)

(declare-fun tp!2080296 () Bool)

(assert (=> b!7324760 (= e!4385828 (and tp!2080298 tp!2080296))))

(declare-fun b!7324761 () Bool)

(declare-fun tp!2080297 () Bool)

(assert (=> b!7324761 (= e!4385828 tp!2080297)))

(declare-fun b!7324762 () Bool)

(declare-fun tp!2080294 () Bool)

(declare-fun tp!2080295 () Bool)

(assert (=> b!7324762 (= e!4385828 (and tp!2080294 tp!2080295))))

(declare-fun b!7324759 () Bool)

(assert (=> b!7324759 (= e!4385828 tp_is_empty!48213)))

(assert (= (and b!7324545 (is-ElementMatch!18984 (h!77804 (exprs!8424 cWitness!35)))) b!7324759))

(assert (= (and b!7324545 (is-Concat!27829 (h!77804 (exprs!8424 cWitness!35)))) b!7324760))

(assert (= (and b!7324545 (is-Star!18984 (h!77804 (exprs!8424 cWitness!35)))) b!7324761))

(assert (= (and b!7324545 (is-Union!18984 (h!77804 (exprs!8424 cWitness!35)))) b!7324762))

(declare-fun b!7324763 () Bool)

(declare-fun e!4385829 () Bool)

(declare-fun tp!2080299 () Bool)

(declare-fun tp!2080300 () Bool)

(assert (=> b!7324763 (= e!4385829 (and tp!2080299 tp!2080300))))

(assert (=> b!7324545 (= tp!2080273 e!4385829)))

(assert (= (and b!7324545 (is-Cons!71356 (t!385863 (exprs!8424 cWitness!35)))) b!7324763))

(declare-fun e!4385830 () Bool)

(assert (=> b!7324544 (= tp!2080270 e!4385830)))

(declare-fun b!7324765 () Bool)

(declare-fun tp!2080305 () Bool)

(declare-fun tp!2080303 () Bool)

(assert (=> b!7324765 (= e!4385830 (and tp!2080305 tp!2080303))))

(declare-fun b!7324766 () Bool)

(declare-fun tp!2080304 () Bool)

(assert (=> b!7324766 (= e!4385830 tp!2080304)))

(declare-fun b!7324767 () Bool)

(declare-fun tp!2080301 () Bool)

(declare-fun tp!2080302 () Bool)

(assert (=> b!7324767 (= e!4385830 (and tp!2080301 tp!2080302))))

(declare-fun b!7324764 () Bool)

(assert (=> b!7324764 (= e!4385830 tp_is_empty!48213)))

(assert (= (and b!7324544 (is-ElementMatch!18984 (h!77804 (exprs!8424 ct2!352)))) b!7324764))

(assert (= (and b!7324544 (is-Concat!27829 (h!77804 (exprs!8424 ct2!352)))) b!7324765))

(assert (= (and b!7324544 (is-Star!18984 (h!77804 (exprs!8424 ct2!352)))) b!7324766))

(assert (= (and b!7324544 (is-Union!18984 (h!77804 (exprs!8424 ct2!352)))) b!7324767))

(declare-fun b!7324768 () Bool)

(declare-fun e!4385831 () Bool)

(declare-fun tp!2080306 () Bool)

(declare-fun tp!2080307 () Bool)

(assert (=> b!7324768 (= e!4385831 (and tp!2080306 tp!2080307))))

(assert (=> b!7324544 (= tp!2080271 e!4385831)))

(assert (= (and b!7324544 (is-Cons!71356 (t!385863 (exprs!8424 ct2!352)))) b!7324768))

(declare-fun e!4385832 () Bool)

(assert (=> b!7324543 (= tp!2080268 e!4385832)))

(declare-fun b!7324770 () Bool)

(declare-fun tp!2080312 () Bool)

(declare-fun tp!2080310 () Bool)

(assert (=> b!7324770 (= e!4385832 (and tp!2080312 tp!2080310))))

(declare-fun b!7324771 () Bool)

(declare-fun tp!2080311 () Bool)

(assert (=> b!7324771 (= e!4385832 tp!2080311)))

(declare-fun b!7324772 () Bool)

(declare-fun tp!2080308 () Bool)

(declare-fun tp!2080309 () Bool)

(assert (=> b!7324772 (= e!4385832 (and tp!2080308 tp!2080309))))

(declare-fun b!7324769 () Bool)

(assert (=> b!7324769 (= e!4385832 tp_is_empty!48213)))

(assert (= (and b!7324543 (is-ElementMatch!18984 (h!77804 (exprs!8424 ct1!256)))) b!7324769))

(assert (= (and b!7324543 (is-Concat!27829 (h!77804 (exprs!8424 ct1!256)))) b!7324770))

(assert (= (and b!7324543 (is-Star!18984 (h!77804 (exprs!8424 ct1!256)))) b!7324771))

(assert (= (and b!7324543 (is-Union!18984 (h!77804 (exprs!8424 ct1!256)))) b!7324772))

(declare-fun b!7324773 () Bool)

(declare-fun e!4385833 () Bool)

(declare-fun tp!2080313 () Bool)

(declare-fun tp!2080314 () Bool)

(assert (=> b!7324773 (= e!4385833 (and tp!2080313 tp!2080314))))

(assert (=> b!7324543 (= tp!2080269 e!4385833)))

(assert (= (and b!7324543 (is-Cons!71356 (t!385863 (exprs!8424 ct1!256)))) b!7324773))

(declare-fun b_lambda!283277 () Bool)

(assert (= b_lambda!283271 (or b!7324387 b_lambda!283277)))

(declare-fun bs!1916512 () Bool)

(declare-fun d!2274629 () Bool)

(assert (= bs!1916512 (and d!2274629 b!7324387)))

(assert (=> bs!1916512 (= (dynLambda!29397 lambda!453887 (h!77804 (++!16808 (exprs!8424 ct1!256) (exprs!8424 ct2!352)))) (validRegex!9626 (h!77804 (++!16808 (exprs!8424 ct1!256) (exprs!8424 ct2!352)))))))

(declare-fun m!7990458 () Bool)

(assert (=> bs!1916512 m!7990458))

(assert (=> b!7324689 d!2274629))

(declare-fun b_lambda!283279 () Bool)

(assert (= b_lambda!283267 (or d!2274547 b_lambda!283279)))

(declare-fun bs!1916513 () Bool)

(declare-fun d!2274631 () Bool)

(assert (= bs!1916513 (and d!2274631 d!2274547)))

(assert (=> bs!1916513 (= (dynLambda!29397 lambda!453893 (h!77804 (exprs!8424 cWitness!35))) (validRegex!9626 (h!77804 (exprs!8424 cWitness!35))))))

(declare-fun m!7990460 () Bool)

(assert (=> bs!1916513 m!7990460))

(assert (=> b!7324663 d!2274631))

(declare-fun b_lambda!283281 () Bool)

(assert (= b_lambda!283275 (or d!2274549 b_lambda!283281)))

(declare-fun bs!1916514 () Bool)

(declare-fun d!2274633 () Bool)

(assert (= bs!1916514 (and d!2274633 d!2274549)))

(assert (=> bs!1916514 (= (dynLambda!29397 lambda!453894 (h!77804 (exprs!8424 ct1!256))) (validRegex!9626 (h!77804 (exprs!8424 ct1!256))))))

(assert (=> bs!1916514 m!7990188))

(assert (=> b!7324702 d!2274633))

(declare-fun b_lambda!283283 () Bool)

(assert (= b_lambda!283269 (or d!2274551 b_lambda!283283)))

(declare-fun bs!1916515 () Bool)

(declare-fun d!2274635 () Bool)

(assert (= bs!1916515 (and d!2274635 d!2274551)))

(assert (=> bs!1916515 (= (dynLambda!29397 lambda!453895 (h!77804 (exprs!8424 ct2!352))) (validRegex!9626 (h!77804 (exprs!8424 ct2!352))))))

(declare-fun m!7990462 () Bool)

(assert (=> bs!1916515 m!7990462))

(assert (=> b!7324676 d!2274635))

(declare-fun b_lambda!283285 () Bool)

(assert (= b_lambda!283273 (or b!7324387 b_lambda!283285)))

(declare-fun bs!1916516 () Bool)

(declare-fun d!2274637 () Bool)

(assert (= bs!1916516 (and d!2274637 b!7324387)))

(assert (=> bs!1916516 (= (dynLambda!29397 lambda!453887 (h!77804 (exprs!8424 ct1!256))) (validRegex!9626 (h!77804 (exprs!8424 ct1!256))))))

(assert (=> bs!1916516 m!7990188))

(assert (=> b!7324691 d!2274637))

(push 1)

(assert (not b_lambda!283285))

(assert (not bm!666402))

(assert (not bm!666410))

(assert (not b!7324765))

(assert (not b!7324692))

(assert (not b!7324723))

(assert (not b!7324727))

(assert (not b!7324718))

(assert (not bm!666404))

(assert (not bm!666399))

(assert (not b!7324770))

(assert (not bm!666408))

(assert (not bm!666411))

(assert (not b_lambda!283279))

(assert (not b_lambda!283281))

(assert (not d!2274597))

(assert (not bm!666395))

(assert (not bm!666401))

(assert (not b!7324736))

(assert (not b!7324768))

(assert (not bm!666375))

(assert (not b!7324766))

(assert (not b!7324746))

(assert (not d!2274583))

(assert (not b!7324726))

(assert (not b!7324738))

(assert (not b!7324709))

(assert (not bm!666394))

(assert (not bs!1916512))

(assert (not bs!1916515))

(assert (not d!2274601))

(assert (not bm!666409))

(assert (not bm!666383))

(assert (not bm!666381))

(assert (not b!7324744))

(assert (not b!7324773))

(assert (not bm!666382))

(assert (not b!7324771))

(assert (not b!7324762))

(assert (not d!2274613))

(assert (not bm!666389))

(assert (not b!7324720))

(assert (not b!7324632))

(assert (not d!2274581))

(assert (not b!7324695))

(assert (not b!7324715))

(assert (not bm!666393))

(assert (not b!7324677))

(assert (not bs!1916514))

(assert (not bm!666400))

(assert (not bs!1916513))

(assert tp_is_empty!48213)

(assert (not b!7324734))

(assert (not bm!666377))

(assert (not b!7324620))

(assert (not b!7324664))

(assert (not b!7324760))

(assert (not b!7324748))

(assert (not b!7324670))

(assert (not b!7324703))

(assert (not b!7324761))

(assert (not b!7324767))

(assert (not b!7324690))

(assert (not b!7324683))

(assert (not b!7324763))

(assert (not b_lambda!283277))

(assert (not b_lambda!283283))

(assert (not b!7324772))

(assert (not bm!666388))

(assert (not bm!666412))

(assert (not bs!1916516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

