; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739490 () Bool)

(assert start!739490)

(declare-fun b!7762341 () Bool)

(assert (=> b!7762341 true))

(assert (=> b!7762341 true))

(assert (=> b!7762341 true))

(declare-fun b!7762340 () Bool)

(declare-fun e!4600206 () Bool)

(declare-fun tp_is_empty!51763 () Bool)

(assert (=> b!7762340 (= e!4600206 tp_is_empty!51763)))

(declare-fun res!3094503 () Bool)

(declare-fun e!4600208 () Bool)

(assert (=> b!7762341 (=> (not res!3094503) (not e!4600208))))

(declare-fun lambda!472042 () Int)

(declare-fun Exists!4742 (Int) Bool)

(assert (=> b!7762341 (= res!3094503 (Exists!4742 lambda!472042))))

(declare-fun b!7762342 () Bool)

(declare-fun tp!2279815 () Bool)

(declare-fun tp!2279812 () Bool)

(assert (=> b!7762342 (= e!4600206 (and tp!2279815 tp!2279812))))

(declare-fun b!7762343 () Bool)

(declare-fun e!4600204 () Bool)

(assert (=> b!7762343 (= e!4600204 e!4600208)))

(declare-fun res!3094504 () Bool)

(assert (=> b!7762343 (=> (not res!3094504) (not e!4600208))))

(declare-datatypes ((C!41734 0))(
  ( (C!41735 (val!31307 Int)) )
))
(declare-datatypes ((List!73547 0))(
  ( (Nil!73423) (Cons!73423 (h!79871 C!41734) (t!388282 List!73547)) )
))
(declare-datatypes ((tuple2!69794 0))(
  ( (tuple2!69795 (_1!38200 List!73547) (_2!38200 List!73547)) )
))
(declare-datatypes ((Option!17691 0))(
  ( (None!17690) (Some!17690 (v!54825 tuple2!69794)) )
))
(declare-fun lt!2670473 () Option!17691)

(declare-fun isDefined!14303 (Option!17691) Bool)

(assert (=> b!7762343 (= res!3094504 (not (isDefined!14303 lt!2670473)))))

(declare-datatypes ((Regex!20704 0))(
  ( (ElementMatch!20704 (c!1430899 C!41734)) (Concat!29549 (regOne!41920 Regex!20704) (regTwo!41920 Regex!20704)) (EmptyExpr!20704) (Star!20704 (reg!21033 Regex!20704)) (EmptyLang!20704) (Union!20704 (regOne!41921 Regex!20704) (regTwo!41921 Regex!20704)) )
))
(declare-fun r1!3330 () Regex!20704)

(declare-fun r2!3230 () Regex!20704)

(declare-fun s!10216 () List!73547)

(declare-fun findConcatSeparation!3721 (Regex!20704 Regex!20704 List!73547 List!73547 List!73547) Option!17691)

(assert (=> b!7762343 (= lt!2670473 (findConcatSeparation!3721 r1!3330 r2!3230 Nil!73423 s!10216 s!10216))))

(declare-fun res!3094501 () Bool)

(assert (=> start!739490 (=> (not res!3094501) (not e!4600204))))

(declare-fun validRegex!11120 (Regex!20704) Bool)

(assert (=> start!739490 (= res!3094501 (validRegex!11120 r1!3330))))

(assert (=> start!739490 e!4600204))

(assert (=> start!739490 e!4600206))

(declare-fun e!4600205 () Bool)

(assert (=> start!739490 e!4600205))

(declare-fun e!4600207 () Bool)

(assert (=> start!739490 e!4600207))

(declare-fun b!7762344 () Bool)

(declare-fun tp!2279820 () Bool)

(declare-fun tp!2279817 () Bool)

(assert (=> b!7762344 (= e!4600206 (and tp!2279820 tp!2279817))))

(declare-fun b!7762345 () Bool)

(declare-fun tp!2279814 () Bool)

(assert (=> b!7762345 (= e!4600206 tp!2279814)))

(declare-fun b!7762346 () Bool)

(declare-fun res!3094505 () Bool)

(assert (=> b!7762346 (=> (not res!3094505) (not e!4600208))))

(declare-fun isEmpty!42091 (Option!17691) Bool)

(assert (=> b!7762346 (= res!3094505 (isEmpty!42091 lt!2670473))))

(declare-fun b!7762347 () Bool)

(declare-fun res!3094502 () Bool)

(assert (=> b!7762347 (=> (not res!3094502) (not e!4600204))))

(assert (=> b!7762347 (= res!3094502 (validRegex!11120 r2!3230))))

(declare-fun b!7762348 () Bool)

(declare-fun tp!2279818 () Bool)

(assert (=> b!7762348 (= e!4600205 tp!2279818)))

(declare-fun b!7762349 () Bool)

(declare-fun lt!2670474 () tuple2!69794)

(declare-fun ++!17879 (List!73547 List!73547) List!73547)

(assert (=> b!7762349 (= e!4600208 (not (= (++!17879 (_1!38200 lt!2670474) (_2!38200 lt!2670474)) s!10216)))))

(declare-fun pickWitness!563 (Int) tuple2!69794)

(assert (=> b!7762349 (= lt!2670474 (pickWitness!563 lambda!472042))))

(declare-fun b!7762350 () Bool)

(assert (=> b!7762350 (= e!4600205 tp_is_empty!51763)))

(declare-fun b!7762351 () Bool)

(declare-fun tp!2279813 () Bool)

(declare-fun tp!2279811 () Bool)

(assert (=> b!7762351 (= e!4600205 (and tp!2279813 tp!2279811))))

(declare-fun b!7762352 () Bool)

(declare-fun tp!2279816 () Bool)

(declare-fun tp!2279810 () Bool)

(assert (=> b!7762352 (= e!4600205 (and tp!2279816 tp!2279810))))

(declare-fun b!7762353 () Bool)

(declare-fun tp!2279819 () Bool)

(assert (=> b!7762353 (= e!4600207 (and tp_is_empty!51763 tp!2279819))))

(assert (= (and start!739490 res!3094501) b!7762347))

(assert (= (and b!7762347 res!3094502) b!7762343))

(assert (= (and b!7762343 res!3094504) b!7762346))

(assert (= (and b!7762346 res!3094505) b!7762341))

(assert (= (and b!7762341 res!3094503) b!7762349))

(assert (= (and start!739490 (is-ElementMatch!20704 r1!3330)) b!7762340))

(assert (= (and start!739490 (is-Concat!29549 r1!3330)) b!7762344))

(assert (= (and start!739490 (is-Star!20704 r1!3330)) b!7762345))

(assert (= (and start!739490 (is-Union!20704 r1!3330)) b!7762342))

(assert (= (and start!739490 (is-ElementMatch!20704 r2!3230)) b!7762350))

(assert (= (and start!739490 (is-Concat!29549 r2!3230)) b!7762352))

(assert (= (and start!739490 (is-Star!20704 r2!3230)) b!7762348))

(assert (= (and start!739490 (is-Union!20704 r2!3230)) b!7762351))

(assert (= (and start!739490 (is-Cons!73423 s!10216)) b!7762353))

(declare-fun m!8221178 () Bool)

(assert (=> start!739490 m!8221178))

(declare-fun m!8221180 () Bool)

(assert (=> b!7762343 m!8221180))

(declare-fun m!8221182 () Bool)

(assert (=> b!7762343 m!8221182))

(declare-fun m!8221184 () Bool)

(assert (=> b!7762349 m!8221184))

(declare-fun m!8221186 () Bool)

(assert (=> b!7762349 m!8221186))

(declare-fun m!8221188 () Bool)

(assert (=> b!7762347 m!8221188))

(declare-fun m!8221190 () Bool)

(assert (=> b!7762346 m!8221190))

(declare-fun m!8221192 () Bool)

(assert (=> b!7762341 m!8221192))

(push 1)

(assert (not b!7762346))

(assert (not b!7762341))

(assert (not b!7762345))

(assert (not b!7762351))

(assert tp_is_empty!51763)

(assert (not b!7762349))

(assert (not b!7762342))

(assert (not b!7762352))

(assert (not b!7762348))

(assert (not b!7762343))

(assert (not b!7762347))

(assert (not start!739490))

(assert (not b!7762353))

(assert (not b!7762344))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2343644 () Bool)

(assert (=> d!2343644 (= (isDefined!14303 lt!2670473) (not (isEmpty!42091 lt!2670473)))))

(declare-fun bs!1965967 () Bool)

(assert (= bs!1965967 d!2343644))

(assert (=> bs!1965967 m!8221190))

(assert (=> b!7762343 d!2343644))

(declare-fun b!7762430 () Bool)

(declare-fun e!4600242 () Bool)

(declare-fun matchR!10170 (Regex!20704 List!73547) Bool)

(assert (=> b!7762430 (= e!4600242 (matchR!10170 r2!3230 s!10216))))

(declare-fun b!7762432 () Bool)

(declare-fun res!3094542 () Bool)

(declare-fun e!4600241 () Bool)

(assert (=> b!7762432 (=> (not res!3094542) (not e!4600241))))

(declare-fun lt!2670489 () Option!17691)

(declare-fun get!26187 (Option!17691) tuple2!69794)

(assert (=> b!7762432 (= res!3094542 (matchR!10170 r2!3230 (_2!38200 (get!26187 lt!2670489))))))

(declare-fun b!7762433 () Bool)

(declare-fun e!4600238 () Option!17691)

(assert (=> b!7762433 (= e!4600238 (Some!17690 (tuple2!69795 Nil!73423 s!10216)))))

(declare-fun b!7762434 () Bool)

(declare-fun e!4600240 () Option!17691)

(assert (=> b!7762434 (= e!4600238 e!4600240)))

(declare-fun c!1430906 () Bool)

(assert (=> b!7762434 (= c!1430906 (is-Nil!73423 s!10216))))

(declare-fun b!7762435 () Bool)

(declare-fun res!3094540 () Bool)

(assert (=> b!7762435 (=> (not res!3094540) (not e!4600241))))

(assert (=> b!7762435 (= res!3094540 (matchR!10170 r1!3330 (_1!38200 (get!26187 lt!2670489))))))

(declare-fun b!7762436 () Bool)

(declare-datatypes ((Unit!168398 0))(
  ( (Unit!168399) )
))
(declare-fun lt!2670487 () Unit!168398)

(declare-fun lt!2670488 () Unit!168398)

(assert (=> b!7762436 (= lt!2670487 lt!2670488)))

(assert (=> b!7762436 (= (++!17879 (++!17879 Nil!73423 (Cons!73423 (h!79871 s!10216) Nil!73423)) (t!388282 s!10216)) s!10216)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3365 (List!73547 C!41734 List!73547 List!73547) Unit!168398)

(assert (=> b!7762436 (= lt!2670488 (lemmaMoveElementToOtherListKeepsConcatEq!3365 Nil!73423 (h!79871 s!10216) (t!388282 s!10216) s!10216))))

(assert (=> b!7762436 (= e!4600240 (findConcatSeparation!3721 r1!3330 r2!3230 (++!17879 Nil!73423 (Cons!73423 (h!79871 s!10216) Nil!73423)) (t!388282 s!10216) s!10216))))

(declare-fun b!7762437 () Bool)

(declare-fun e!4600239 () Bool)

(assert (=> b!7762437 (= e!4600239 (not (isDefined!14303 lt!2670489)))))

(declare-fun b!7762438 () Bool)

(assert (=> b!7762438 (= e!4600241 (= (++!17879 (_1!38200 (get!26187 lt!2670489)) (_2!38200 (get!26187 lt!2670489))) s!10216))))

(declare-fun d!2343646 () Bool)

(assert (=> d!2343646 e!4600239))

(declare-fun res!3094541 () Bool)

(assert (=> d!2343646 (=> res!3094541 e!4600239)))

(assert (=> d!2343646 (= res!3094541 e!4600241)))

(declare-fun res!3094543 () Bool)

(assert (=> d!2343646 (=> (not res!3094543) (not e!4600241))))

(assert (=> d!2343646 (= res!3094543 (isDefined!14303 lt!2670489))))

(assert (=> d!2343646 (= lt!2670489 e!4600238)))

(declare-fun c!1430905 () Bool)

(assert (=> d!2343646 (= c!1430905 e!4600242)))

(declare-fun res!3094539 () Bool)

(assert (=> d!2343646 (=> (not res!3094539) (not e!4600242))))

(assert (=> d!2343646 (= res!3094539 (matchR!10170 r1!3330 Nil!73423))))

(assert (=> d!2343646 (validRegex!11120 r1!3330)))

(assert (=> d!2343646 (= (findConcatSeparation!3721 r1!3330 r2!3230 Nil!73423 s!10216 s!10216) lt!2670489)))

(declare-fun b!7762431 () Bool)

(assert (=> b!7762431 (= e!4600240 None!17690)))

(assert (= (and d!2343646 res!3094539) b!7762430))

(assert (= (and d!2343646 c!1430905) b!7762433))

(assert (= (and d!2343646 (not c!1430905)) b!7762434))

(assert (= (and b!7762434 c!1430906) b!7762431))

(assert (= (and b!7762434 (not c!1430906)) b!7762436))

(assert (= (and d!2343646 res!3094543) b!7762435))

(assert (= (and b!7762435 res!3094540) b!7762432))

(assert (= (and b!7762432 res!3094542) b!7762438))

(assert (= (and d!2343646 (not res!3094541)) b!7762437))

(declare-fun m!8221210 () Bool)

(assert (=> b!7762437 m!8221210))

(assert (=> d!2343646 m!8221210))

(declare-fun m!8221212 () Bool)

(assert (=> d!2343646 m!8221212))

(assert (=> d!2343646 m!8221178))

(declare-fun m!8221214 () Bool)

(assert (=> b!7762435 m!8221214))

(declare-fun m!8221216 () Bool)

(assert (=> b!7762435 m!8221216))

(assert (=> b!7762438 m!8221214))

(declare-fun m!8221218 () Bool)

(assert (=> b!7762438 m!8221218))

(assert (=> b!7762432 m!8221214))

(declare-fun m!8221220 () Bool)

(assert (=> b!7762432 m!8221220))

(declare-fun m!8221222 () Bool)

(assert (=> b!7762436 m!8221222))

(assert (=> b!7762436 m!8221222))

(declare-fun m!8221224 () Bool)

(assert (=> b!7762436 m!8221224))

(declare-fun m!8221226 () Bool)

(assert (=> b!7762436 m!8221226))

(assert (=> b!7762436 m!8221222))

(declare-fun m!8221228 () Bool)

(assert (=> b!7762436 m!8221228))

(declare-fun m!8221230 () Bool)

(assert (=> b!7762430 m!8221230))

(assert (=> b!7762343 d!2343646))

(declare-fun d!2343652 () Bool)

(declare-fun choose!59439 (Int) Bool)

(assert (=> d!2343652 (= (Exists!4742 lambda!472042) (choose!59439 lambda!472042))))

(declare-fun bs!1965969 () Bool)

(assert (= bs!1965969 d!2343652))

(declare-fun m!8221232 () Bool)

(assert (=> bs!1965969 m!8221232))

(assert (=> b!7762341 d!2343652))

(declare-fun d!2343654 () Bool)

(declare-fun res!3094557 () Bool)

(declare-fun e!4600261 () Bool)

(assert (=> d!2343654 (=> res!3094557 e!4600261)))

(assert (=> d!2343654 (= res!3094557 (is-ElementMatch!20704 r2!3230))))

(assert (=> d!2343654 (= (validRegex!11120 r2!3230) e!4600261)))

(declare-fun bm!719240 () Bool)

(declare-fun call!719246 () Bool)

(declare-fun call!719247 () Bool)

(assert (=> bm!719240 (= call!719246 call!719247)))

(declare-fun b!7762457 () Bool)

(declare-fun res!3094556 () Bool)

(declare-fun e!4600260 () Bool)

(assert (=> b!7762457 (=> res!3094556 e!4600260)))

(assert (=> b!7762457 (= res!3094556 (not (is-Concat!29549 r2!3230)))))

(declare-fun e!4600257 () Bool)

(assert (=> b!7762457 (= e!4600257 e!4600260)))

(declare-fun b!7762458 () Bool)

(declare-fun res!3094558 () Bool)

(declare-fun e!4600262 () Bool)

(assert (=> b!7762458 (=> (not res!3094558) (not e!4600262))))

(assert (=> b!7762458 (= res!3094558 call!719246)))

(assert (=> b!7762458 (= e!4600257 e!4600262)))

(declare-fun bm!719241 () Bool)

(declare-fun call!719245 () Bool)

(declare-fun c!1430911 () Bool)

(assert (=> bm!719241 (= call!719245 (validRegex!11120 (ite c!1430911 (regTwo!41921 r2!3230) (regTwo!41920 r2!3230))))))

(declare-fun b!7762459 () Bool)

(declare-fun e!4600259 () Bool)

(declare-fun e!4600258 () Bool)

(assert (=> b!7762459 (= e!4600259 e!4600258)))

(declare-fun res!3094555 () Bool)

(declare-fun nullable!9114 (Regex!20704) Bool)

(assert (=> b!7762459 (= res!3094555 (not (nullable!9114 (reg!21033 r2!3230))))))

(assert (=> b!7762459 (=> (not res!3094555) (not e!4600258))))

(declare-fun b!7762460 () Bool)

(assert (=> b!7762460 (= e!4600261 e!4600259)))

(declare-fun c!1430912 () Bool)

(assert (=> b!7762460 (= c!1430912 (is-Star!20704 r2!3230))))

(declare-fun b!7762461 () Bool)

(assert (=> b!7762461 (= e!4600262 call!719245)))

(declare-fun bm!719242 () Bool)

(assert (=> bm!719242 (= call!719247 (validRegex!11120 (ite c!1430912 (reg!21033 r2!3230) (ite c!1430911 (regOne!41921 r2!3230) (regOne!41920 r2!3230)))))))

(declare-fun b!7762462 () Bool)

(assert (=> b!7762462 (= e!4600259 e!4600257)))

(assert (=> b!7762462 (= c!1430911 (is-Union!20704 r2!3230))))

(declare-fun b!7762463 () Bool)

(declare-fun e!4600263 () Bool)

(assert (=> b!7762463 (= e!4600260 e!4600263)))

(declare-fun res!3094554 () Bool)

(assert (=> b!7762463 (=> (not res!3094554) (not e!4600263))))

(assert (=> b!7762463 (= res!3094554 call!719246)))

(declare-fun b!7762464 () Bool)

(assert (=> b!7762464 (= e!4600263 call!719245)))

(declare-fun b!7762465 () Bool)

(assert (=> b!7762465 (= e!4600258 call!719247)))

(assert (= (and d!2343654 (not res!3094557)) b!7762460))

(assert (= (and b!7762460 c!1430912) b!7762459))

(assert (= (and b!7762460 (not c!1430912)) b!7762462))

(assert (= (and b!7762459 res!3094555) b!7762465))

(assert (= (and b!7762462 c!1430911) b!7762458))

(assert (= (and b!7762462 (not c!1430911)) b!7762457))

(assert (= (and b!7762458 res!3094558) b!7762461))

(assert (= (and b!7762457 (not res!3094556)) b!7762463))

(assert (= (and b!7762463 res!3094554) b!7762464))

(assert (= (or b!7762458 b!7762463) bm!719240))

(assert (= (or b!7762461 b!7762464) bm!719241))

(assert (= (or b!7762465 bm!719240) bm!719242))

(declare-fun m!8221234 () Bool)

(assert (=> bm!719241 m!8221234))

(declare-fun m!8221236 () Bool)

(assert (=> b!7762459 m!8221236))

(declare-fun m!8221238 () Bool)

(assert (=> bm!719242 m!8221238))

(assert (=> b!7762347 d!2343654))

(declare-fun d!2343656 () Bool)

(declare-fun res!3094562 () Bool)

(declare-fun e!4600268 () Bool)

(assert (=> d!2343656 (=> res!3094562 e!4600268)))

(assert (=> d!2343656 (= res!3094562 (is-ElementMatch!20704 r1!3330))))

(assert (=> d!2343656 (= (validRegex!11120 r1!3330) e!4600268)))

(declare-fun bm!719243 () Bool)

(declare-fun call!719249 () Bool)

(declare-fun call!719250 () Bool)

(assert (=> bm!719243 (= call!719249 call!719250)))

(declare-fun b!7762466 () Bool)

(declare-fun res!3094561 () Bool)

(declare-fun e!4600267 () Bool)

(assert (=> b!7762466 (=> res!3094561 e!4600267)))

(assert (=> b!7762466 (= res!3094561 (not (is-Concat!29549 r1!3330)))))

(declare-fun e!4600264 () Bool)

(assert (=> b!7762466 (= e!4600264 e!4600267)))

(declare-fun b!7762467 () Bool)

(declare-fun res!3094563 () Bool)

(declare-fun e!4600269 () Bool)

(assert (=> b!7762467 (=> (not res!3094563) (not e!4600269))))

(assert (=> b!7762467 (= res!3094563 call!719249)))

(assert (=> b!7762467 (= e!4600264 e!4600269)))

(declare-fun bm!719244 () Bool)

(declare-fun call!719248 () Bool)

(declare-fun c!1430913 () Bool)

(assert (=> bm!719244 (= call!719248 (validRegex!11120 (ite c!1430913 (regTwo!41921 r1!3330) (regTwo!41920 r1!3330))))))

(declare-fun b!7762468 () Bool)

(declare-fun e!4600266 () Bool)

(declare-fun e!4600265 () Bool)

(assert (=> b!7762468 (= e!4600266 e!4600265)))

(declare-fun res!3094560 () Bool)

(assert (=> b!7762468 (= res!3094560 (not (nullable!9114 (reg!21033 r1!3330))))))

(assert (=> b!7762468 (=> (not res!3094560) (not e!4600265))))

(declare-fun b!7762469 () Bool)

(assert (=> b!7762469 (= e!4600268 e!4600266)))

(declare-fun c!1430914 () Bool)

(assert (=> b!7762469 (= c!1430914 (is-Star!20704 r1!3330))))

(declare-fun b!7762470 () Bool)

(assert (=> b!7762470 (= e!4600269 call!719248)))

(declare-fun bm!719245 () Bool)

(assert (=> bm!719245 (= call!719250 (validRegex!11120 (ite c!1430914 (reg!21033 r1!3330) (ite c!1430913 (regOne!41921 r1!3330) (regOne!41920 r1!3330)))))))

(declare-fun b!7762471 () Bool)

(assert (=> b!7762471 (= e!4600266 e!4600264)))

(assert (=> b!7762471 (= c!1430913 (is-Union!20704 r1!3330))))

(declare-fun b!7762472 () Bool)

(declare-fun e!4600270 () Bool)

(assert (=> b!7762472 (= e!4600267 e!4600270)))

(declare-fun res!3094559 () Bool)

(assert (=> b!7762472 (=> (not res!3094559) (not e!4600270))))

(assert (=> b!7762472 (= res!3094559 call!719249)))

(declare-fun b!7762473 () Bool)

(assert (=> b!7762473 (= e!4600270 call!719248)))

(declare-fun b!7762474 () Bool)

(assert (=> b!7762474 (= e!4600265 call!719250)))

(assert (= (and d!2343656 (not res!3094562)) b!7762469))

(assert (= (and b!7762469 c!1430914) b!7762468))

(assert (= (and b!7762469 (not c!1430914)) b!7762471))

(assert (= (and b!7762468 res!3094560) b!7762474))

(assert (= (and b!7762471 c!1430913) b!7762467))

(assert (= (and b!7762471 (not c!1430913)) b!7762466))

(assert (= (and b!7762467 res!3094563) b!7762470))

(assert (= (and b!7762466 (not res!3094561)) b!7762472))

(assert (= (and b!7762472 res!3094559) b!7762473))

(assert (= (or b!7762467 b!7762472) bm!719243))

(assert (= (or b!7762470 b!7762473) bm!719244))

(assert (= (or b!7762474 bm!719243) bm!719245))

(declare-fun m!8221240 () Bool)

(assert (=> bm!719244 m!8221240))

(declare-fun m!8221242 () Bool)

(assert (=> b!7762468 m!8221242))

(declare-fun m!8221244 () Bool)

(assert (=> bm!719245 m!8221244))

(assert (=> start!739490 d!2343656))

(declare-fun d!2343658 () Bool)

(assert (=> d!2343658 (= (isEmpty!42091 lt!2670473) (not (is-Some!17690 lt!2670473)))))

(assert (=> b!7762346 d!2343658))

(declare-fun b!7762504 () Bool)

(declare-fun e!4600285 () Bool)

(declare-fun lt!2670498 () List!73547)

(assert (=> b!7762504 (= e!4600285 (or (not (= (_2!38200 lt!2670474) Nil!73423)) (= lt!2670498 (_1!38200 lt!2670474))))))

(declare-fun b!7762501 () Bool)

(declare-fun e!4600286 () List!73547)

(assert (=> b!7762501 (= e!4600286 (_2!38200 lt!2670474))))

(declare-fun b!7762503 () Bool)

(declare-fun res!3094578 () Bool)

(assert (=> b!7762503 (=> (not res!3094578) (not e!4600285))))

(declare-fun size!42683 (List!73547) Int)

(assert (=> b!7762503 (= res!3094578 (= (size!42683 lt!2670498) (+ (size!42683 (_1!38200 lt!2670474)) (size!42683 (_2!38200 lt!2670474)))))))

(declare-fun d!2343660 () Bool)

(assert (=> d!2343660 e!4600285))

(declare-fun res!3094579 () Bool)

(assert (=> d!2343660 (=> (not res!3094579) (not e!4600285))))

(declare-fun content!15580 (List!73547) (Set C!41734))

(assert (=> d!2343660 (= res!3094579 (= (content!15580 lt!2670498) (set.union (content!15580 (_1!38200 lt!2670474)) (content!15580 (_2!38200 lt!2670474)))))))

(assert (=> d!2343660 (= lt!2670498 e!4600286)))

(declare-fun c!1430921 () Bool)

(assert (=> d!2343660 (= c!1430921 (is-Nil!73423 (_1!38200 lt!2670474)))))

(assert (=> d!2343660 (= (++!17879 (_1!38200 lt!2670474) (_2!38200 lt!2670474)) lt!2670498)))

(declare-fun b!7762502 () Bool)

(assert (=> b!7762502 (= e!4600286 (Cons!73423 (h!79871 (_1!38200 lt!2670474)) (++!17879 (t!388282 (_1!38200 lt!2670474)) (_2!38200 lt!2670474))))))

(assert (= (and d!2343660 c!1430921) b!7762501))

(assert (= (and d!2343660 (not c!1430921)) b!7762502))

(assert (= (and d!2343660 res!3094579) b!7762503))

(assert (= (and b!7762503 res!3094578) b!7762504))

(declare-fun m!8221246 () Bool)

(assert (=> b!7762503 m!8221246))

(declare-fun m!8221248 () Bool)

(assert (=> b!7762503 m!8221248))

(declare-fun m!8221250 () Bool)

(assert (=> b!7762503 m!8221250))

(declare-fun m!8221252 () Bool)

(assert (=> d!2343660 m!8221252))

(declare-fun m!8221254 () Bool)

(assert (=> d!2343660 m!8221254))

(declare-fun m!8221256 () Bool)

(assert (=> d!2343660 m!8221256))

(declare-fun m!8221258 () Bool)

(assert (=> b!7762502 m!8221258))

(assert (=> b!7762349 d!2343660))

(declare-fun d!2343662 () Bool)

(declare-fun lt!2670501 () tuple2!69794)

(declare-fun dynLambda!29989 (Int tuple2!69794) Bool)

(assert (=> d!2343662 (dynLambda!29989 lambda!472042 lt!2670501)))

(declare-fun choose!59440 (Int) tuple2!69794)

(assert (=> d!2343662 (= lt!2670501 (choose!59440 lambda!472042))))

(assert (=> d!2343662 (Exists!4742 lambda!472042)))

(assert (=> d!2343662 (= (pickWitness!563 lambda!472042) lt!2670501)))

(declare-fun b_lambda!289443 () Bool)

(assert (=> (not b_lambda!289443) (not d!2343662)))

(declare-fun bs!1965970 () Bool)

(assert (= bs!1965970 d!2343662))

(declare-fun m!8221260 () Bool)

(assert (=> bs!1965970 m!8221260))

(declare-fun m!8221262 () Bool)

(assert (=> bs!1965970 m!8221262))

(assert (=> bs!1965970 m!8221192))

(assert (=> b!7762349 d!2343662))

(declare-fun b!7762517 () Bool)

(declare-fun e!4600289 () Bool)

(declare-fun tp!2279868 () Bool)

(assert (=> b!7762517 (= e!4600289 tp!2279868)))

(declare-fun b!7762515 () Bool)

(assert (=> b!7762515 (= e!4600289 tp_is_empty!51763)))

(assert (=> b!7762348 (= tp!2279818 e!4600289)))

(declare-fun b!7762516 () Bool)

(declare-fun tp!2279866 () Bool)

(declare-fun tp!2279864 () Bool)

(assert (=> b!7762516 (= e!4600289 (and tp!2279866 tp!2279864))))

(declare-fun b!7762518 () Bool)

(declare-fun tp!2279867 () Bool)

(declare-fun tp!2279865 () Bool)

(assert (=> b!7762518 (= e!4600289 (and tp!2279867 tp!2279865))))

(assert (= (and b!7762348 (is-ElementMatch!20704 (reg!21033 r2!3230))) b!7762515))

(assert (= (and b!7762348 (is-Concat!29549 (reg!21033 r2!3230))) b!7762516))

(assert (= (and b!7762348 (is-Star!20704 (reg!21033 r2!3230))) b!7762517))

(assert (= (and b!7762348 (is-Union!20704 (reg!21033 r2!3230))) b!7762518))

(declare-fun b!7762523 () Bool)

(declare-fun e!4600292 () Bool)

(declare-fun tp!2279871 () Bool)

(assert (=> b!7762523 (= e!4600292 (and tp_is_empty!51763 tp!2279871))))

(assert (=> b!7762353 (= tp!2279819 e!4600292)))

(assert (= (and b!7762353 (is-Cons!73423 (t!388282 s!10216))) b!7762523))

(declare-fun b!7762526 () Bool)

(declare-fun e!4600293 () Bool)

(declare-fun tp!2279876 () Bool)

(assert (=> b!7762526 (= e!4600293 tp!2279876)))

(declare-fun b!7762524 () Bool)

(assert (=> b!7762524 (= e!4600293 tp_is_empty!51763)))

(assert (=> b!7762352 (= tp!2279816 e!4600293)))

(declare-fun b!7762525 () Bool)

(declare-fun tp!2279874 () Bool)

(declare-fun tp!2279872 () Bool)

(assert (=> b!7762525 (= e!4600293 (and tp!2279874 tp!2279872))))

(declare-fun b!7762527 () Bool)

(declare-fun tp!2279875 () Bool)

(declare-fun tp!2279873 () Bool)

(assert (=> b!7762527 (= e!4600293 (and tp!2279875 tp!2279873))))

(assert (= (and b!7762352 (is-ElementMatch!20704 (regOne!41920 r2!3230))) b!7762524))

(assert (= (and b!7762352 (is-Concat!29549 (regOne!41920 r2!3230))) b!7762525))

(assert (= (and b!7762352 (is-Star!20704 (regOne!41920 r2!3230))) b!7762526))

(assert (= (and b!7762352 (is-Union!20704 (regOne!41920 r2!3230))) b!7762527))

(declare-fun b!7762530 () Bool)

(declare-fun e!4600294 () Bool)

(declare-fun tp!2279881 () Bool)

(assert (=> b!7762530 (= e!4600294 tp!2279881)))

(declare-fun b!7762528 () Bool)

(assert (=> b!7762528 (= e!4600294 tp_is_empty!51763)))

(assert (=> b!7762352 (= tp!2279810 e!4600294)))

(declare-fun b!7762529 () Bool)

(declare-fun tp!2279879 () Bool)

(declare-fun tp!2279877 () Bool)

(assert (=> b!7762529 (= e!4600294 (and tp!2279879 tp!2279877))))

(declare-fun b!7762531 () Bool)

(declare-fun tp!2279880 () Bool)

(declare-fun tp!2279878 () Bool)

(assert (=> b!7762531 (= e!4600294 (and tp!2279880 tp!2279878))))

(assert (= (and b!7762352 (is-ElementMatch!20704 (regTwo!41920 r2!3230))) b!7762528))

(assert (= (and b!7762352 (is-Concat!29549 (regTwo!41920 r2!3230))) b!7762529))

(assert (= (and b!7762352 (is-Star!20704 (regTwo!41920 r2!3230))) b!7762530))

(assert (= (and b!7762352 (is-Union!20704 (regTwo!41920 r2!3230))) b!7762531))

(declare-fun b!7762534 () Bool)

(declare-fun e!4600295 () Bool)

(declare-fun tp!2279886 () Bool)

(assert (=> b!7762534 (= e!4600295 tp!2279886)))

(declare-fun b!7762532 () Bool)

(assert (=> b!7762532 (= e!4600295 tp_is_empty!51763)))

(assert (=> b!7762342 (= tp!2279815 e!4600295)))

(declare-fun b!7762533 () Bool)

(declare-fun tp!2279884 () Bool)

(declare-fun tp!2279882 () Bool)

(assert (=> b!7762533 (= e!4600295 (and tp!2279884 tp!2279882))))

(declare-fun b!7762535 () Bool)

(declare-fun tp!2279885 () Bool)

(declare-fun tp!2279883 () Bool)

(assert (=> b!7762535 (= e!4600295 (and tp!2279885 tp!2279883))))

(assert (= (and b!7762342 (is-ElementMatch!20704 (regOne!41921 r1!3330))) b!7762532))

(assert (= (and b!7762342 (is-Concat!29549 (regOne!41921 r1!3330))) b!7762533))

(assert (= (and b!7762342 (is-Star!20704 (regOne!41921 r1!3330))) b!7762534))

(assert (= (and b!7762342 (is-Union!20704 (regOne!41921 r1!3330))) b!7762535))

(declare-fun b!7762538 () Bool)

(declare-fun e!4600296 () Bool)

(declare-fun tp!2279891 () Bool)

(assert (=> b!7762538 (= e!4600296 tp!2279891)))

(declare-fun b!7762536 () Bool)

(assert (=> b!7762536 (= e!4600296 tp_is_empty!51763)))

(assert (=> b!7762342 (= tp!2279812 e!4600296)))

(declare-fun b!7762537 () Bool)

(declare-fun tp!2279889 () Bool)

(declare-fun tp!2279887 () Bool)

(assert (=> b!7762537 (= e!4600296 (and tp!2279889 tp!2279887))))

(declare-fun b!7762539 () Bool)

(declare-fun tp!2279890 () Bool)

(declare-fun tp!2279888 () Bool)

(assert (=> b!7762539 (= e!4600296 (and tp!2279890 tp!2279888))))

(assert (= (and b!7762342 (is-ElementMatch!20704 (regTwo!41921 r1!3330))) b!7762536))

(assert (= (and b!7762342 (is-Concat!29549 (regTwo!41921 r1!3330))) b!7762537))

(assert (= (and b!7762342 (is-Star!20704 (regTwo!41921 r1!3330))) b!7762538))

(assert (= (and b!7762342 (is-Union!20704 (regTwo!41921 r1!3330))) b!7762539))

(declare-fun b!7762542 () Bool)

(declare-fun e!4600297 () Bool)

(declare-fun tp!2279896 () Bool)

(assert (=> b!7762542 (= e!4600297 tp!2279896)))

(declare-fun b!7762540 () Bool)

(assert (=> b!7762540 (= e!4600297 tp_is_empty!51763)))

(assert (=> b!7762345 (= tp!2279814 e!4600297)))

(declare-fun b!7762541 () Bool)

(declare-fun tp!2279894 () Bool)

(declare-fun tp!2279892 () Bool)

(assert (=> b!7762541 (= e!4600297 (and tp!2279894 tp!2279892))))

(declare-fun b!7762543 () Bool)

(declare-fun tp!2279895 () Bool)

(declare-fun tp!2279893 () Bool)

(assert (=> b!7762543 (= e!4600297 (and tp!2279895 tp!2279893))))

(assert (= (and b!7762345 (is-ElementMatch!20704 (reg!21033 r1!3330))) b!7762540))

(assert (= (and b!7762345 (is-Concat!29549 (reg!21033 r1!3330))) b!7762541))

(assert (= (and b!7762345 (is-Star!20704 (reg!21033 r1!3330))) b!7762542))

(assert (= (and b!7762345 (is-Union!20704 (reg!21033 r1!3330))) b!7762543))

(declare-fun b!7762546 () Bool)

(declare-fun e!4600298 () Bool)

(declare-fun tp!2279901 () Bool)

(assert (=> b!7762546 (= e!4600298 tp!2279901)))

(declare-fun b!7762544 () Bool)

(assert (=> b!7762544 (= e!4600298 tp_is_empty!51763)))

(assert (=> b!7762351 (= tp!2279813 e!4600298)))

(declare-fun b!7762545 () Bool)

(declare-fun tp!2279899 () Bool)

(declare-fun tp!2279897 () Bool)

(assert (=> b!7762545 (= e!4600298 (and tp!2279899 tp!2279897))))

(declare-fun b!7762547 () Bool)

(declare-fun tp!2279900 () Bool)

(declare-fun tp!2279898 () Bool)

(assert (=> b!7762547 (= e!4600298 (and tp!2279900 tp!2279898))))

(assert (= (and b!7762351 (is-ElementMatch!20704 (regOne!41921 r2!3230))) b!7762544))

(assert (= (and b!7762351 (is-Concat!29549 (regOne!41921 r2!3230))) b!7762545))

(assert (= (and b!7762351 (is-Star!20704 (regOne!41921 r2!3230))) b!7762546))

(assert (= (and b!7762351 (is-Union!20704 (regOne!41921 r2!3230))) b!7762547))

(declare-fun b!7762550 () Bool)

(declare-fun e!4600299 () Bool)

(declare-fun tp!2279906 () Bool)

(assert (=> b!7762550 (= e!4600299 tp!2279906)))

(declare-fun b!7762548 () Bool)

(assert (=> b!7762548 (= e!4600299 tp_is_empty!51763)))

(assert (=> b!7762351 (= tp!2279811 e!4600299)))

(declare-fun b!7762549 () Bool)

(declare-fun tp!2279904 () Bool)

(declare-fun tp!2279902 () Bool)

(assert (=> b!7762549 (= e!4600299 (and tp!2279904 tp!2279902))))

(declare-fun b!7762551 () Bool)

(declare-fun tp!2279905 () Bool)

(declare-fun tp!2279903 () Bool)

(assert (=> b!7762551 (= e!4600299 (and tp!2279905 tp!2279903))))

(assert (= (and b!7762351 (is-ElementMatch!20704 (regTwo!41921 r2!3230))) b!7762548))

(assert (= (and b!7762351 (is-Concat!29549 (regTwo!41921 r2!3230))) b!7762549))

(assert (= (and b!7762351 (is-Star!20704 (regTwo!41921 r2!3230))) b!7762550))

(assert (= (and b!7762351 (is-Union!20704 (regTwo!41921 r2!3230))) b!7762551))

(declare-fun b!7762554 () Bool)

(declare-fun e!4600300 () Bool)

(declare-fun tp!2279911 () Bool)

(assert (=> b!7762554 (= e!4600300 tp!2279911)))

(declare-fun b!7762552 () Bool)

(assert (=> b!7762552 (= e!4600300 tp_is_empty!51763)))

(assert (=> b!7762344 (= tp!2279820 e!4600300)))

(declare-fun b!7762553 () Bool)

(declare-fun tp!2279909 () Bool)

(declare-fun tp!2279907 () Bool)

(assert (=> b!7762553 (= e!4600300 (and tp!2279909 tp!2279907))))

(declare-fun b!7762555 () Bool)

(declare-fun tp!2279910 () Bool)

(declare-fun tp!2279908 () Bool)

(assert (=> b!7762555 (= e!4600300 (and tp!2279910 tp!2279908))))

(assert (= (and b!7762344 (is-ElementMatch!20704 (regOne!41920 r1!3330))) b!7762552))

(assert (= (and b!7762344 (is-Concat!29549 (regOne!41920 r1!3330))) b!7762553))

(assert (= (and b!7762344 (is-Star!20704 (regOne!41920 r1!3330))) b!7762554))

(assert (= (and b!7762344 (is-Union!20704 (regOne!41920 r1!3330))) b!7762555))

(declare-fun b!7762558 () Bool)

(declare-fun e!4600301 () Bool)

(declare-fun tp!2279916 () Bool)

(assert (=> b!7762558 (= e!4600301 tp!2279916)))

(declare-fun b!7762556 () Bool)

(assert (=> b!7762556 (= e!4600301 tp_is_empty!51763)))

(assert (=> b!7762344 (= tp!2279817 e!4600301)))

(declare-fun b!7762557 () Bool)

(declare-fun tp!2279914 () Bool)

(declare-fun tp!2279912 () Bool)

(assert (=> b!7762557 (= e!4600301 (and tp!2279914 tp!2279912))))

(declare-fun b!7762559 () Bool)

(declare-fun tp!2279915 () Bool)

(declare-fun tp!2279913 () Bool)

(assert (=> b!7762559 (= e!4600301 (and tp!2279915 tp!2279913))))

(assert (= (and b!7762344 (is-ElementMatch!20704 (regTwo!41920 r1!3330))) b!7762556))

(assert (= (and b!7762344 (is-Concat!29549 (regTwo!41920 r1!3330))) b!7762557))

(assert (= (and b!7762344 (is-Star!20704 (regTwo!41920 r1!3330))) b!7762558))

(assert (= (and b!7762344 (is-Union!20704 (regTwo!41920 r1!3330))) b!7762559))

(declare-fun b_lambda!289445 () Bool)

(assert (= b_lambda!289443 (or b!7762341 b_lambda!289445)))

(declare-fun bs!1965971 () Bool)

(declare-fun d!2343664 () Bool)

(assert (= bs!1965971 (and d!2343664 b!7762341)))

(declare-fun res!3094580 () Bool)

(declare-fun e!4600302 () Bool)

(assert (=> bs!1965971 (=> (not res!3094580) (not e!4600302))))

(assert (=> bs!1965971 (= res!3094580 (= (++!17879 (_1!38200 lt!2670501) (_2!38200 lt!2670501)) s!10216))))

(assert (=> bs!1965971 (= (dynLambda!29989 lambda!472042 lt!2670501) e!4600302)))

(declare-fun b!7762560 () Bool)

(declare-fun res!3094581 () Bool)

(assert (=> b!7762560 (=> (not res!3094581) (not e!4600302))))

(assert (=> b!7762560 (= res!3094581 (matchR!10170 r1!3330 (_1!38200 lt!2670501)))))

(declare-fun b!7762561 () Bool)

(assert (=> b!7762561 (= e!4600302 (matchR!10170 r2!3230 (_2!38200 lt!2670501)))))

(assert (= (and bs!1965971 res!3094580) b!7762560))

(assert (= (and b!7762560 res!3094581) b!7762561))

(declare-fun m!8221264 () Bool)

(assert (=> bs!1965971 m!8221264))

(declare-fun m!8221266 () Bool)

(assert (=> b!7762560 m!8221266))

(declare-fun m!8221268 () Bool)

(assert (=> b!7762561 m!8221268))

(assert (=> d!2343662 d!2343664))

(push 1)

(assert (not b!7762459))

(assert (not b!7762432))

(assert (not b!7762530))

(assert (not bs!1965971))

(assert (not bm!719241))

(assert (not b!7762516))

(assert (not bm!719244))

(assert (not b!7762553))

(assert (not b!7762430))

(assert (not d!2343662))

(assert (not b!7762527))

(assert (not b!7762437))

(assert (not b!7762541))

(assert (not b!7762543))

(assert (not b!7762545))

(assert (not b!7762550))

(assert (not b!7762547))

(assert (not b!7762549))

(assert (not b!7762517))

(assert (not b!7762525))

(assert (not b!7762435))

(assert (not bm!719242))

(assert (not bm!719245))

(assert (not b!7762503))

(assert (not d!2343652))

(assert (not b!7762560))

(assert (not d!2343660))

(assert (not b!7762551))

(assert (not b!7762438))

(assert (not b!7762535))

(assert (not b!7762537))

(assert (not d!2343644))

(assert (not b!7762559))

(assert (not b!7762557))

(assert tp_is_empty!51763)

(assert (not b!7762534))

(assert (not b!7762436))

(assert (not b!7762539))

(assert (not b!7762558))

(assert (not b!7762468))

(assert (not b_lambda!289445))

(assert (not b!7762523))

(assert (not b!7762561))

(assert (not b!7762546))

(assert (not b!7762538))

(assert (not b!7762542))

(assert (not b!7762502))

(assert (not d!2343646))

(assert (not b!7762531))

(assert (not b!7762555))

(assert (not b!7762526))

(assert (not b!7762518))

(assert (not b!7762533))

(assert (not b!7762554))

(assert (not b!7762529))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

