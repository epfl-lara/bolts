; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!736330 () Bool)

(assert start!736330)

(declare-fun b!7668474 () Bool)

(assert (=> b!7668474 true))

(assert (=> b!7668474 true))

(declare-fun b!7668466 () Bool)

(declare-fun e!4554476 () Bool)

(declare-fun lt!2662433 () Bool)

(declare-fun lt!2662439 () Bool)

(assert (=> b!7668466 (= e!4554476 (or (not lt!2662433) lt!2662439))))

(declare-fun b!7668467 () Bool)

(declare-fun e!4554478 () Bool)

(declare-fun tp!2243978 () Bool)

(declare-fun tp!2243974 () Bool)

(assert (=> b!7668467 (= e!4554478 (and tp!2243978 tp!2243974))))

(declare-fun b!7668468 () Bool)

(declare-fun e!4554475 () Bool)

(assert (=> b!7668468 (= e!4554475 e!4554476)))

(declare-fun res!3067236 () Bool)

(assert (=> b!7668468 (=> res!3067236 e!4554476)))

(declare-datatypes ((C!41322 0))(
  ( (C!41323 (val!31101 Int)) )
))
(declare-datatypes ((Regex!20498 0))(
  ( (ElementMatch!20498 (c!1412297 C!41322)) (Concat!29343 (regOne!41508 Regex!20498) (regTwo!41508 Regex!20498)) (EmptyExpr!20498) (Star!20498 (reg!20827 Regex!20498)) (EmptyLang!20498) (Union!20498 (regOne!41509 Regex!20498) (regTwo!41509 Regex!20498)) )
))
(declare-fun r!14126 () Regex!20498)

(declare-fun validRegex!10916 (Regex!20498) Bool)

(assert (=> b!7668468 (= res!3067236 (not (validRegex!10916 r!14126)))))

(declare-datatypes ((List!73349 0))(
  ( (Nil!73225) (Cons!73225 (h!79673 C!41322) (t!388084 List!73349)) )
))
(declare-datatypes ((tuple2!69458 0))(
  ( (tuple2!69459 (_1!38032 List!73349) (_2!38032 List!73349)) )
))
(declare-fun lt!2662436 () tuple2!69458)

(declare-fun matchR!9994 (Regex!20498 List!73349) Bool)

(declare-fun ++!17720 (List!73349 List!73349) List!73349)

(assert (=> b!7668468 (matchR!9994 (Concat!29343 (reg!20827 r!14126) r!14126) (++!17720 (_1!38032 lt!2662436) (_2!38032 lt!2662436)))))

(declare-fun s!9605 () List!73349)

(declare-datatypes ((Unit!168008 0))(
  ( (Unit!168009) )
))
(declare-fun lt!2662437 () Unit!168008)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!185 (Regex!20498 Regex!20498 List!73349 List!73349 List!73349) Unit!168008)

(assert (=> b!7668468 (= lt!2662437 (lemmaFindSeparationIsDefinedThenConcatMatches!185 (reg!20827 r!14126) r!14126 (_1!38032 lt!2662436) (_2!38032 lt!2662436) s!9605))))

(declare-fun res!3067233 () Bool)

(declare-fun e!4554479 () Bool)

(assert (=> start!736330 (=> (not res!3067233) (not e!4554479))))

(assert (=> start!736330 (= res!3067233 (validRegex!10916 r!14126))))

(assert (=> start!736330 e!4554479))

(assert (=> start!736330 e!4554478))

(declare-fun e!4554474 () Bool)

(assert (=> start!736330 e!4554474))

(declare-fun b!7668469 () Bool)

(declare-fun tp_is_empty!51351 () Bool)

(assert (=> b!7668469 (= e!4554478 tp_is_empty!51351)))

(declare-fun b!7668470 () Bool)

(declare-fun tp!2243979 () Bool)

(declare-fun tp!2243977 () Bool)

(assert (=> b!7668470 (= e!4554478 (and tp!2243979 tp!2243977))))

(declare-fun b!7668471 () Bool)

(declare-fun tp!2243975 () Bool)

(assert (=> b!7668471 (= e!4554478 tp!2243975)))

(declare-fun b!7668472 () Bool)

(declare-fun e!4554477 () Bool)

(assert (=> b!7668472 (= e!4554477 e!4554475)))

(declare-fun res!3067231 () Bool)

(assert (=> b!7668472 (=> res!3067231 e!4554475)))

(assert (=> b!7668472 (= res!3067231 (matchR!9994 r!14126 s!9605))))

(declare-fun matchRSpec!4599 (Regex!20498 List!73349) Bool)

(assert (=> b!7668472 (= lt!2662439 (matchRSpec!4599 r!14126 (_2!38032 lt!2662436)))))

(assert (=> b!7668472 (= lt!2662439 (matchR!9994 r!14126 (_2!38032 lt!2662436)))))

(declare-fun lt!2662434 () Unit!168008)

(declare-fun mainMatchTheorem!4577 (Regex!20498 List!73349) Unit!168008)

(assert (=> b!7668472 (= lt!2662434 (mainMatchTheorem!4577 r!14126 (_2!38032 lt!2662436)))))

(assert (=> b!7668472 (= lt!2662433 (matchRSpec!4599 (reg!20827 r!14126) (_1!38032 lt!2662436)))))

(assert (=> b!7668472 (= lt!2662433 (matchR!9994 (reg!20827 r!14126) (_1!38032 lt!2662436)))))

(declare-fun lt!2662438 () Unit!168008)

(assert (=> b!7668472 (= lt!2662438 (mainMatchTheorem!4577 (reg!20827 r!14126) (_1!38032 lt!2662436)))))

(declare-datatypes ((Option!17523 0))(
  ( (None!17522) (Some!17522 (v!54657 tuple2!69458)) )
))
(declare-fun lt!2662431 () Option!17523)

(declare-fun get!25959 (Option!17523) tuple2!69458)

(assert (=> b!7668472 (= lt!2662436 (get!25959 lt!2662431))))

(declare-fun b!7668473 () Bool)

(declare-fun res!3067232 () Bool)

(assert (=> b!7668473 (=> (not res!3067232) (not e!4554479))))

(assert (=> b!7668473 (= res!3067232 (and (not (is-EmptyExpr!20498 r!14126)) (not (is-EmptyLang!20498 r!14126)) (not (is-ElementMatch!20498 r!14126)) (not (is-Union!20498 r!14126)) (is-Star!20498 r!14126)))))

(assert (=> b!7668474 (= e!4554479 (not e!4554477))))

(declare-fun res!3067235 () Bool)

(assert (=> b!7668474 (=> res!3067235 e!4554477)))

(declare-fun lt!2662432 () Bool)

(assert (=> b!7668474 (= res!3067235 (not lt!2662432))))

(declare-fun lambda!469998 () Int)

(declare-fun Exists!4623 (Int) Bool)

(assert (=> b!7668474 (= lt!2662432 (Exists!4623 lambda!469998))))

(declare-fun isDefined!14139 (Option!17523) Bool)

(assert (=> b!7668474 (= lt!2662432 (isDefined!14139 lt!2662431))))

(declare-fun findConcatSeparation!3553 (Regex!20498 Regex!20498 List!73349 List!73349 List!73349) Option!17523)

(assert (=> b!7668474 (= lt!2662431 (findConcatSeparation!3553 (reg!20827 r!14126) r!14126 Nil!73225 s!9605 s!9605))))

(declare-fun lt!2662435 () Unit!168008)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3311 (Regex!20498 Regex!20498 List!73349) Unit!168008)

(assert (=> b!7668474 (= lt!2662435 (lemmaFindConcatSeparationEquivalentToExists!3311 (reg!20827 r!14126) r!14126 s!9605))))

(declare-fun b!7668475 () Bool)

(declare-fun res!3067234 () Bool)

(assert (=> b!7668475 (=> (not res!3067234) (not e!4554479))))

(declare-fun isEmpty!41860 (List!73349) Bool)

(assert (=> b!7668475 (= res!3067234 (not (isEmpty!41860 s!9605)))))

(declare-fun b!7668476 () Bool)

(declare-fun tp!2243976 () Bool)

(assert (=> b!7668476 (= e!4554474 (and tp_is_empty!51351 tp!2243976))))

(assert (= (and start!736330 res!3067233) b!7668473))

(assert (= (and b!7668473 res!3067232) b!7668475))

(assert (= (and b!7668475 res!3067234) b!7668474))

(assert (= (and b!7668474 (not res!3067235)) b!7668472))

(assert (= (and b!7668472 (not res!3067231)) b!7668468))

(assert (= (and b!7668468 (not res!3067236)) b!7668466))

(assert (= (and start!736330 (is-ElementMatch!20498 r!14126)) b!7668469))

(assert (= (and start!736330 (is-Concat!29343 r!14126)) b!7668470))

(assert (= (and start!736330 (is-Star!20498 r!14126)) b!7668471))

(assert (= (and start!736330 (is-Union!20498 r!14126)) b!7668467))

(assert (= (and start!736330 (is-Cons!73225 s!9605)) b!7668476))

(declare-fun m!8173370 () Bool)

(assert (=> b!7668475 m!8173370))

(declare-fun m!8173372 () Bool)

(assert (=> start!736330 m!8173372))

(assert (=> b!7668468 m!8173372))

(declare-fun m!8173374 () Bool)

(assert (=> b!7668468 m!8173374))

(assert (=> b!7668468 m!8173374))

(declare-fun m!8173376 () Bool)

(assert (=> b!7668468 m!8173376))

(declare-fun m!8173378 () Bool)

(assert (=> b!7668468 m!8173378))

(declare-fun m!8173380 () Bool)

(assert (=> b!7668474 m!8173380))

(declare-fun m!8173382 () Bool)

(assert (=> b!7668474 m!8173382))

(declare-fun m!8173384 () Bool)

(assert (=> b!7668474 m!8173384))

(declare-fun m!8173386 () Bool)

(assert (=> b!7668474 m!8173386))

(declare-fun m!8173388 () Bool)

(assert (=> b!7668472 m!8173388))

(declare-fun m!8173390 () Bool)

(assert (=> b!7668472 m!8173390))

(declare-fun m!8173392 () Bool)

(assert (=> b!7668472 m!8173392))

(declare-fun m!8173394 () Bool)

(assert (=> b!7668472 m!8173394))

(declare-fun m!8173396 () Bool)

(assert (=> b!7668472 m!8173396))

(declare-fun m!8173398 () Bool)

(assert (=> b!7668472 m!8173398))

(declare-fun m!8173400 () Bool)

(assert (=> b!7668472 m!8173400))

(declare-fun m!8173402 () Bool)

(assert (=> b!7668472 m!8173402))

(push 1)

(assert (not b!7668468))

(assert tp_is_empty!51351)

(assert (not b!7668476))

(assert (not b!7668472))

(assert (not b!7668471))

(assert (not b!7668474))

(assert (not b!7668467))

(assert (not b!7668475))

(assert (not b!7668470))

(assert (not start!736330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7668558 () Bool)

(declare-fun e!4554530 () Bool)

(declare-fun e!4554531 () Bool)

(assert (=> b!7668558 (= e!4554530 e!4554531)))

(declare-fun c!1412307 () Bool)

(assert (=> b!7668558 (= c!1412307 (is-Union!20498 r!14126))))

(declare-fun bm!705150 () Bool)

(declare-fun c!1412308 () Bool)

(declare-fun call!705157 () Bool)

(assert (=> bm!705150 (= call!705157 (validRegex!10916 (ite c!1412308 (reg!20827 r!14126) (ite c!1412307 (regTwo!41509 r!14126) (regTwo!41508 r!14126)))))))

(declare-fun b!7668559 () Bool)

(declare-fun e!4554528 () Bool)

(declare-fun call!705155 () Bool)

(assert (=> b!7668559 (= e!4554528 call!705155)))

(declare-fun b!7668560 () Bool)

(declare-fun res!3067280 () Bool)

(assert (=> b!7668560 (=> (not res!3067280) (not e!4554528))))

(declare-fun call!705156 () Bool)

(assert (=> b!7668560 (= res!3067280 call!705156)))

(assert (=> b!7668560 (= e!4554531 e!4554528)))

(declare-fun b!7668561 () Bool)

(declare-fun e!4554533 () Bool)

(assert (=> b!7668561 (= e!4554533 call!705157)))

(declare-fun bm!705151 () Bool)

(assert (=> bm!705151 (= call!705155 call!705157)))

(declare-fun bm!705152 () Bool)

(assert (=> bm!705152 (= call!705156 (validRegex!10916 (ite c!1412307 (regOne!41509 r!14126) (regOne!41508 r!14126))))))

(declare-fun b!7668562 () Bool)

(declare-fun e!4554529 () Bool)

(assert (=> b!7668562 (= e!4554529 e!4554530)))

(assert (=> b!7668562 (= c!1412308 (is-Star!20498 r!14126))))

(declare-fun b!7668563 () Bool)

(declare-fun e!4554532 () Bool)

(declare-fun e!4554534 () Bool)

(assert (=> b!7668563 (= e!4554532 e!4554534)))

(declare-fun res!3067281 () Bool)

(assert (=> b!7668563 (=> (not res!3067281) (not e!4554534))))

(assert (=> b!7668563 (= res!3067281 call!705156)))

(declare-fun d!2328459 () Bool)

(declare-fun res!3067282 () Bool)

(assert (=> d!2328459 (=> res!3067282 e!4554529)))

(assert (=> d!2328459 (= res!3067282 (is-ElementMatch!20498 r!14126))))

(assert (=> d!2328459 (= (validRegex!10916 r!14126) e!4554529)))

(declare-fun b!7668564 () Bool)

(assert (=> b!7668564 (= e!4554534 call!705155)))

(declare-fun b!7668565 () Bool)

(assert (=> b!7668565 (= e!4554530 e!4554533)))

(declare-fun res!3067279 () Bool)

(declare-fun nullable!8989 (Regex!20498) Bool)

(assert (=> b!7668565 (= res!3067279 (not (nullable!8989 (reg!20827 r!14126))))))

(assert (=> b!7668565 (=> (not res!3067279) (not e!4554533))))

(declare-fun b!7668566 () Bool)

(declare-fun res!3067283 () Bool)

(assert (=> b!7668566 (=> res!3067283 e!4554532)))

(assert (=> b!7668566 (= res!3067283 (not (is-Concat!29343 r!14126)))))

(assert (=> b!7668566 (= e!4554531 e!4554532)))

(assert (= (and d!2328459 (not res!3067282)) b!7668562))

(assert (= (and b!7668562 c!1412308) b!7668565))

(assert (= (and b!7668562 (not c!1412308)) b!7668558))

(assert (= (and b!7668565 res!3067279) b!7668561))

(assert (= (and b!7668558 c!1412307) b!7668560))

(assert (= (and b!7668558 (not c!1412307)) b!7668566))

(assert (= (and b!7668560 res!3067280) b!7668559))

(assert (= (and b!7668566 (not res!3067283)) b!7668563))

(assert (= (and b!7668563 res!3067281) b!7668564))

(assert (= (or b!7668560 b!7668563) bm!705152))

(assert (= (or b!7668559 b!7668564) bm!705151))

(assert (= (or b!7668561 bm!705151) bm!705150))

(declare-fun m!8173438 () Bool)

(assert (=> bm!705150 m!8173438))

(declare-fun m!8173440 () Bool)

(assert (=> bm!705152 m!8173440))

(declare-fun m!8173442 () Bool)

(assert (=> b!7668565 m!8173442))

(assert (=> start!736330 d!2328459))

(declare-fun b!7668604 () Bool)

(declare-fun e!4554561 () Bool)

(declare-fun head!15755 (List!73349) C!41322)

(assert (=> b!7668604 (= e!4554561 (= (head!15755 s!9605) (c!1412297 r!14126)))))

(declare-fun b!7668605 () Bool)

(declare-fun e!4554556 () Bool)

(declare-fun lt!2662469 () Bool)

(declare-fun call!705169 () Bool)

(assert (=> b!7668605 (= e!4554556 (= lt!2662469 call!705169))))

(declare-fun bm!705164 () Bool)

(assert (=> bm!705164 (= call!705169 (isEmpty!41860 s!9605))))

(declare-fun b!7668606 () Bool)

(declare-fun res!3067311 () Bool)

(assert (=> b!7668606 (=> (not res!3067311) (not e!4554561))))

(assert (=> b!7668606 (= res!3067311 (not call!705169))))

(declare-fun b!7668607 () Bool)

(declare-fun res!3067307 () Bool)

(declare-fun e!4554560 () Bool)

(assert (=> b!7668607 (=> res!3067307 e!4554560)))

(declare-fun tail!15295 (List!73349) List!73349)

(assert (=> b!7668607 (= res!3067307 (not (isEmpty!41860 (tail!15295 s!9605))))))

(declare-fun b!7668608 () Bool)

(declare-fun e!4554562 () Bool)

(assert (=> b!7668608 (= e!4554562 (not lt!2662469))))

(declare-fun b!7668609 () Bool)

(declare-fun e!4554559 () Bool)

(declare-fun e!4554558 () Bool)

(assert (=> b!7668609 (= e!4554559 e!4554558)))

(declare-fun res!3067306 () Bool)

(assert (=> b!7668609 (=> (not res!3067306) (not e!4554558))))

(assert (=> b!7668609 (= res!3067306 (not lt!2662469))))

(declare-fun b!7668610 () Bool)

(declare-fun res!3067312 () Bool)

(assert (=> b!7668610 (=> (not res!3067312) (not e!4554561))))

(assert (=> b!7668610 (= res!3067312 (isEmpty!41860 (tail!15295 s!9605)))))

(declare-fun b!7668612 () Bool)

(assert (=> b!7668612 (= e!4554556 e!4554562)))

(declare-fun c!1412318 () Bool)

(assert (=> b!7668612 (= c!1412318 (is-EmptyLang!20498 r!14126))))

(declare-fun b!7668613 () Bool)

(declare-fun res!3067310 () Bool)

(assert (=> b!7668613 (=> res!3067310 e!4554559)))

(assert (=> b!7668613 (= res!3067310 (not (is-ElementMatch!20498 r!14126)))))

(assert (=> b!7668613 (= e!4554562 e!4554559)))

(declare-fun b!7668614 () Bool)

(assert (=> b!7668614 (= e!4554558 e!4554560)))

(declare-fun res!3067309 () Bool)

(assert (=> b!7668614 (=> res!3067309 e!4554560)))

(assert (=> b!7668614 (= res!3067309 call!705169)))

(declare-fun b!7668615 () Bool)

(declare-fun e!4554557 () Bool)

(declare-fun derivativeStep!5955 (Regex!20498 C!41322) Regex!20498)

(assert (=> b!7668615 (= e!4554557 (matchR!9994 (derivativeStep!5955 r!14126 (head!15755 s!9605)) (tail!15295 s!9605)))))

(declare-fun b!7668616 () Bool)

(assert (=> b!7668616 (= e!4554557 (nullable!8989 r!14126))))

(declare-fun b!7668617 () Bool)

(declare-fun res!3067308 () Bool)

(assert (=> b!7668617 (=> res!3067308 e!4554559)))

(assert (=> b!7668617 (= res!3067308 e!4554561)))

(declare-fun res!3067305 () Bool)

(assert (=> b!7668617 (=> (not res!3067305) (not e!4554561))))

(assert (=> b!7668617 (= res!3067305 lt!2662469)))

(declare-fun d!2328461 () Bool)

(assert (=> d!2328461 e!4554556))

(declare-fun c!1412317 () Bool)

(assert (=> d!2328461 (= c!1412317 (is-EmptyExpr!20498 r!14126))))

(assert (=> d!2328461 (= lt!2662469 e!4554557)))

(declare-fun c!1412319 () Bool)

(assert (=> d!2328461 (= c!1412319 (isEmpty!41860 s!9605))))

(assert (=> d!2328461 (validRegex!10916 r!14126)))

(assert (=> d!2328461 (= (matchR!9994 r!14126 s!9605) lt!2662469)))

(declare-fun b!7668611 () Bool)

(assert (=> b!7668611 (= e!4554560 (not (= (head!15755 s!9605) (c!1412297 r!14126))))))

(assert (= (and d!2328461 c!1412319) b!7668616))

(assert (= (and d!2328461 (not c!1412319)) b!7668615))

(assert (= (and d!2328461 c!1412317) b!7668605))

(assert (= (and d!2328461 (not c!1412317)) b!7668612))

(assert (= (and b!7668612 c!1412318) b!7668608))

(assert (= (and b!7668612 (not c!1412318)) b!7668613))

(assert (= (and b!7668613 (not res!3067310)) b!7668617))

(assert (= (and b!7668617 res!3067305) b!7668606))

(assert (= (and b!7668606 res!3067311) b!7668610))

(assert (= (and b!7668610 res!3067312) b!7668604))

(assert (= (and b!7668617 (not res!3067308)) b!7668609))

(assert (= (and b!7668609 res!3067306) b!7668614))

(assert (= (and b!7668614 (not res!3067309)) b!7668607))

(assert (= (and b!7668607 (not res!3067307)) b!7668611))

(assert (= (or b!7668605 b!7668614 b!7668606) bm!705164))

(assert (=> d!2328461 m!8173370))

(assert (=> d!2328461 m!8173372))

(assert (=> bm!705164 m!8173370))

(declare-fun m!8173450 () Bool)

(assert (=> b!7668611 m!8173450))

(assert (=> b!7668604 m!8173450))

(assert (=> b!7668615 m!8173450))

(assert (=> b!7668615 m!8173450))

(declare-fun m!8173452 () Bool)

(assert (=> b!7668615 m!8173452))

(declare-fun m!8173454 () Bool)

(assert (=> b!7668615 m!8173454))

(assert (=> b!7668615 m!8173452))

(assert (=> b!7668615 m!8173454))

(declare-fun m!8173456 () Bool)

(assert (=> b!7668615 m!8173456))

(declare-fun m!8173458 () Bool)

(assert (=> b!7668616 m!8173458))

(assert (=> b!7668607 m!8173454))

(assert (=> b!7668607 m!8173454))

(declare-fun m!8173460 () Bool)

(assert (=> b!7668607 m!8173460))

(assert (=> b!7668610 m!8173454))

(assert (=> b!7668610 m!8173454))

(assert (=> b!7668610 m!8173460))

(assert (=> b!7668472 d!2328461))

(declare-fun d!2328465 () Bool)

(assert (=> d!2328465 (= (matchR!9994 (reg!20827 r!14126) (_1!38032 lt!2662436)) (matchRSpec!4599 (reg!20827 r!14126) (_1!38032 lt!2662436)))))

(declare-fun lt!2662472 () Unit!168008)

(declare-fun choose!59082 (Regex!20498 List!73349) Unit!168008)

(assert (=> d!2328465 (= lt!2662472 (choose!59082 (reg!20827 r!14126) (_1!38032 lt!2662436)))))

(assert (=> d!2328465 (validRegex!10916 (reg!20827 r!14126))))

(assert (=> d!2328465 (= (mainMatchTheorem!4577 (reg!20827 r!14126) (_1!38032 lt!2662436)) lt!2662472)))

(declare-fun bs!1946399 () Bool)

(assert (= bs!1946399 d!2328465))

(assert (=> bs!1946399 m!8173390))

(assert (=> bs!1946399 m!8173388))

(declare-fun m!8173462 () Bool)

(assert (=> bs!1946399 m!8173462))

(declare-fun m!8173464 () Bool)

(assert (=> bs!1946399 m!8173464))

(assert (=> b!7668472 d!2328465))

(declare-fun bs!1946400 () Bool)

(declare-fun b!7668684 () Bool)

(assert (= bs!1946400 (and b!7668684 b!7668474)))

(declare-fun lambda!470006 () Int)

(assert (=> bs!1946400 (not (= lambda!470006 lambda!469998))))

(assert (=> b!7668684 true))

(assert (=> b!7668684 true))

(declare-fun bs!1946401 () Bool)

(declare-fun b!7668685 () Bool)

(assert (= bs!1946401 (and b!7668685 b!7668474)))

(declare-fun lambda!470007 () Int)

(assert (=> bs!1946401 (not (= lambda!470007 lambda!469998))))

(declare-fun bs!1946402 () Bool)

(assert (= bs!1946402 (and b!7668685 b!7668684)))

(assert (=> bs!1946402 (not (= lambda!470007 lambda!470006))))

(assert (=> b!7668685 true))

(assert (=> b!7668685 true))

(declare-fun b!7668678 () Bool)

(declare-fun e!4554598 () Bool)

(declare-fun call!705177 () Bool)

(assert (=> b!7668678 (= e!4554598 call!705177)))

(declare-fun b!7668679 () Bool)

(declare-fun c!1412337 () Bool)

(assert (=> b!7668679 (= c!1412337 (is-Union!20498 r!14126))))

(declare-fun e!4554596 () Bool)

(declare-fun e!4554599 () Bool)

(assert (=> b!7668679 (= e!4554596 e!4554599)))

(declare-fun b!7668680 () Bool)

(declare-fun e!4554600 () Bool)

(assert (=> b!7668680 (= e!4554600 (matchRSpec!4599 (regTwo!41509 r!14126) (_2!38032 lt!2662436)))))

(declare-fun b!7668681 () Bool)

(declare-fun res!3067345 () Bool)

(declare-fun e!4554601 () Bool)

(assert (=> b!7668681 (=> res!3067345 e!4554601)))

(assert (=> b!7668681 (= res!3067345 call!705177)))

(declare-fun e!4554595 () Bool)

(assert (=> b!7668681 (= e!4554595 e!4554601)))

(declare-fun b!7668682 () Bool)

(assert (=> b!7668682 (= e!4554599 e!4554595)))

(declare-fun c!1412336 () Bool)

(assert (=> b!7668682 (= c!1412336 (is-Star!20498 r!14126))))

(declare-fun b!7668683 () Bool)

(assert (=> b!7668683 (= e!4554596 (= (_2!38032 lt!2662436) (Cons!73225 (c!1412297 r!14126) Nil!73225)))))

(declare-fun d!2328467 () Bool)

(declare-fun c!1412334 () Bool)

(assert (=> d!2328467 (= c!1412334 (is-EmptyExpr!20498 r!14126))))

(assert (=> d!2328467 (= (matchRSpec!4599 r!14126 (_2!38032 lt!2662436)) e!4554598)))

(declare-fun call!705176 () Bool)

(assert (=> b!7668684 (= e!4554601 call!705176)))

(assert (=> b!7668685 (= e!4554595 call!705176)))

(declare-fun b!7668686 () Bool)

(assert (=> b!7668686 (= e!4554599 e!4554600)))

(declare-fun res!3067347 () Bool)

(assert (=> b!7668686 (= res!3067347 (matchRSpec!4599 (regOne!41509 r!14126) (_2!38032 lt!2662436)))))

(assert (=> b!7668686 (=> res!3067347 e!4554600)))

(declare-fun bm!705171 () Bool)

(assert (=> bm!705171 (= call!705176 (Exists!4623 (ite c!1412336 lambda!470006 lambda!470007)))))

(declare-fun b!7668687 () Bool)

(declare-fun c!1412335 () Bool)

(assert (=> b!7668687 (= c!1412335 (is-ElementMatch!20498 r!14126))))

(declare-fun e!4554597 () Bool)

(assert (=> b!7668687 (= e!4554597 e!4554596)))

(declare-fun b!7668688 () Bool)

(assert (=> b!7668688 (= e!4554598 e!4554597)))

(declare-fun res!3067346 () Bool)

(assert (=> b!7668688 (= res!3067346 (not (is-EmptyLang!20498 r!14126)))))

(assert (=> b!7668688 (=> (not res!3067346) (not e!4554597))))

(declare-fun bm!705172 () Bool)

(assert (=> bm!705172 (= call!705177 (isEmpty!41860 (_2!38032 lt!2662436)))))

(assert (= (and d!2328467 c!1412334) b!7668678))

(assert (= (and d!2328467 (not c!1412334)) b!7668688))

(assert (= (and b!7668688 res!3067346) b!7668687))

(assert (= (and b!7668687 c!1412335) b!7668683))

(assert (= (and b!7668687 (not c!1412335)) b!7668679))

(assert (= (and b!7668679 c!1412337) b!7668686))

(assert (= (and b!7668679 (not c!1412337)) b!7668682))

(assert (= (and b!7668686 (not res!3067347)) b!7668680))

(assert (= (and b!7668682 c!1412336) b!7668681))

(assert (= (and b!7668682 (not c!1412336)) b!7668685))

(assert (= (and b!7668681 (not res!3067345)) b!7668684))

(assert (= (or b!7668684 b!7668685) bm!705171))

(assert (= (or b!7668678 b!7668681) bm!705172))

(declare-fun m!8173466 () Bool)

(assert (=> b!7668680 m!8173466))

(declare-fun m!8173468 () Bool)

(assert (=> b!7668686 m!8173468))

(declare-fun m!8173470 () Bool)

(assert (=> bm!705171 m!8173470))

(declare-fun m!8173472 () Bool)

(assert (=> bm!705172 m!8173472))

(assert (=> b!7668472 d!2328467))

(declare-fun bs!1946403 () Bool)

(declare-fun b!7668695 () Bool)

(assert (= bs!1946403 (and b!7668695 b!7668474)))

(declare-fun lambda!470008 () Int)

(assert (=> bs!1946403 (not (= lambda!470008 lambda!469998))))

(declare-fun bs!1946404 () Bool)

(assert (= bs!1946404 (and b!7668695 b!7668684)))

(assert (=> bs!1946404 (= (and (= (_1!38032 lt!2662436) (_2!38032 lt!2662436)) (= (reg!20827 (reg!20827 r!14126)) (reg!20827 r!14126)) (= (reg!20827 r!14126) r!14126)) (= lambda!470008 lambda!470006))))

(declare-fun bs!1946405 () Bool)

(assert (= bs!1946405 (and b!7668695 b!7668685)))

(assert (=> bs!1946405 (not (= lambda!470008 lambda!470007))))

(assert (=> b!7668695 true))

(assert (=> b!7668695 true))

(declare-fun bs!1946406 () Bool)

(declare-fun b!7668696 () Bool)

(assert (= bs!1946406 (and b!7668696 b!7668474)))

(declare-fun lambda!470009 () Int)

(assert (=> bs!1946406 (not (= lambda!470009 lambda!469998))))

(declare-fun bs!1946407 () Bool)

(assert (= bs!1946407 (and b!7668696 b!7668684)))

(assert (=> bs!1946407 (not (= lambda!470009 lambda!470006))))

(declare-fun bs!1946408 () Bool)

(assert (= bs!1946408 (and b!7668696 b!7668685)))

(assert (=> bs!1946408 (= (and (= (_1!38032 lt!2662436) (_2!38032 lt!2662436)) (= (regOne!41508 (reg!20827 r!14126)) (regOne!41508 r!14126)) (= (regTwo!41508 (reg!20827 r!14126)) (regTwo!41508 r!14126))) (= lambda!470009 lambda!470007))))

(declare-fun bs!1946409 () Bool)

(assert (= bs!1946409 (and b!7668696 b!7668695)))

(assert (=> bs!1946409 (not (= lambda!470009 lambda!470008))))

(assert (=> b!7668696 true))

(assert (=> b!7668696 true))

(declare-fun b!7668689 () Bool)

(declare-fun e!4554605 () Bool)

(declare-fun call!705179 () Bool)

(assert (=> b!7668689 (= e!4554605 call!705179)))

(declare-fun b!7668690 () Bool)

(declare-fun c!1412341 () Bool)

(assert (=> b!7668690 (= c!1412341 (is-Union!20498 (reg!20827 r!14126)))))

(declare-fun e!4554603 () Bool)

(declare-fun e!4554606 () Bool)

(assert (=> b!7668690 (= e!4554603 e!4554606)))

(declare-fun b!7668691 () Bool)

(declare-fun e!4554607 () Bool)

(assert (=> b!7668691 (= e!4554607 (matchRSpec!4599 (regTwo!41509 (reg!20827 r!14126)) (_1!38032 lt!2662436)))))

(declare-fun b!7668692 () Bool)

(declare-fun res!3067348 () Bool)

(declare-fun e!4554608 () Bool)

(assert (=> b!7668692 (=> res!3067348 e!4554608)))

(assert (=> b!7668692 (= res!3067348 call!705179)))

(declare-fun e!4554602 () Bool)

(assert (=> b!7668692 (= e!4554602 e!4554608)))

(declare-fun b!7668693 () Bool)

(assert (=> b!7668693 (= e!4554606 e!4554602)))

(declare-fun c!1412340 () Bool)

(assert (=> b!7668693 (= c!1412340 (is-Star!20498 (reg!20827 r!14126)))))

(declare-fun b!7668694 () Bool)

(assert (=> b!7668694 (= e!4554603 (= (_1!38032 lt!2662436) (Cons!73225 (c!1412297 (reg!20827 r!14126)) Nil!73225)))))

(declare-fun d!2328469 () Bool)

(declare-fun c!1412338 () Bool)

(assert (=> d!2328469 (= c!1412338 (is-EmptyExpr!20498 (reg!20827 r!14126)))))

(assert (=> d!2328469 (= (matchRSpec!4599 (reg!20827 r!14126) (_1!38032 lt!2662436)) e!4554605)))

(declare-fun call!705178 () Bool)

(assert (=> b!7668695 (= e!4554608 call!705178)))

(assert (=> b!7668696 (= e!4554602 call!705178)))

(declare-fun b!7668697 () Bool)

(assert (=> b!7668697 (= e!4554606 e!4554607)))

(declare-fun res!3067350 () Bool)

(assert (=> b!7668697 (= res!3067350 (matchRSpec!4599 (regOne!41509 (reg!20827 r!14126)) (_1!38032 lt!2662436)))))

(assert (=> b!7668697 (=> res!3067350 e!4554607)))

(declare-fun bm!705173 () Bool)

(assert (=> bm!705173 (= call!705178 (Exists!4623 (ite c!1412340 lambda!470008 lambda!470009)))))

(declare-fun b!7668698 () Bool)

(declare-fun c!1412339 () Bool)

(assert (=> b!7668698 (= c!1412339 (is-ElementMatch!20498 (reg!20827 r!14126)))))

(declare-fun e!4554604 () Bool)

(assert (=> b!7668698 (= e!4554604 e!4554603)))

(declare-fun b!7668699 () Bool)

(assert (=> b!7668699 (= e!4554605 e!4554604)))

(declare-fun res!3067349 () Bool)

(assert (=> b!7668699 (= res!3067349 (not (is-EmptyLang!20498 (reg!20827 r!14126))))))

(assert (=> b!7668699 (=> (not res!3067349) (not e!4554604))))

(declare-fun bm!705174 () Bool)

(assert (=> bm!705174 (= call!705179 (isEmpty!41860 (_1!38032 lt!2662436)))))

(assert (= (and d!2328469 c!1412338) b!7668689))

(assert (= (and d!2328469 (not c!1412338)) b!7668699))

(assert (= (and b!7668699 res!3067349) b!7668698))

(assert (= (and b!7668698 c!1412339) b!7668694))

(assert (= (and b!7668698 (not c!1412339)) b!7668690))

(assert (= (and b!7668690 c!1412341) b!7668697))

(assert (= (and b!7668690 (not c!1412341)) b!7668693))

(assert (= (and b!7668697 (not res!3067350)) b!7668691))

(assert (= (and b!7668693 c!1412340) b!7668692))

(assert (= (and b!7668693 (not c!1412340)) b!7668696))

(assert (= (and b!7668692 (not res!3067348)) b!7668695))

(assert (= (or b!7668695 b!7668696) bm!705173))

(assert (= (or b!7668689 b!7668692) bm!705174))

(declare-fun m!8173474 () Bool)

(assert (=> b!7668691 m!8173474))

(declare-fun m!8173476 () Bool)

(assert (=> b!7668697 m!8173476))

(declare-fun m!8173478 () Bool)

(assert (=> bm!705173 m!8173478))

(declare-fun m!8173480 () Bool)

(assert (=> bm!705174 m!8173480))

(assert (=> b!7668472 d!2328469))

(declare-fun d!2328471 () Bool)

(assert (=> d!2328471 (= (get!25959 lt!2662431) (v!54657 lt!2662431))))

(assert (=> b!7668472 d!2328471))

(declare-fun b!7668714 () Bool)

(declare-fun e!4554621 () Bool)

(assert (=> b!7668714 (= e!4554621 (= (head!15755 (_2!38032 lt!2662436)) (c!1412297 r!14126)))))

(declare-fun b!7668715 () Bool)

(declare-fun e!4554616 () Bool)

(declare-fun lt!2662476 () Bool)

(declare-fun call!705181 () Bool)

(assert (=> b!7668715 (= e!4554616 (= lt!2662476 call!705181))))

(declare-fun bm!705176 () Bool)

(assert (=> bm!705176 (= call!705181 (isEmpty!41860 (_2!38032 lt!2662436)))))

(declare-fun b!7668716 () Bool)

(declare-fun res!3067365 () Bool)

(assert (=> b!7668716 (=> (not res!3067365) (not e!4554621))))

(assert (=> b!7668716 (= res!3067365 (not call!705181))))

(declare-fun b!7668717 () Bool)

(declare-fun res!3067361 () Bool)

(declare-fun e!4554620 () Bool)

(assert (=> b!7668717 (=> res!3067361 e!4554620)))

(assert (=> b!7668717 (= res!3067361 (not (isEmpty!41860 (tail!15295 (_2!38032 lt!2662436)))))))

(declare-fun b!7668718 () Bool)

(declare-fun e!4554622 () Bool)

(assert (=> b!7668718 (= e!4554622 (not lt!2662476))))

(declare-fun b!7668719 () Bool)

(declare-fun e!4554619 () Bool)

(declare-fun e!4554618 () Bool)

(assert (=> b!7668719 (= e!4554619 e!4554618)))

(declare-fun res!3067360 () Bool)

(assert (=> b!7668719 (=> (not res!3067360) (not e!4554618))))

(assert (=> b!7668719 (= res!3067360 (not lt!2662476))))

(declare-fun b!7668720 () Bool)

(declare-fun res!3067366 () Bool)

(assert (=> b!7668720 (=> (not res!3067366) (not e!4554621))))

(assert (=> b!7668720 (= res!3067366 (isEmpty!41860 (tail!15295 (_2!38032 lt!2662436))))))

(declare-fun b!7668722 () Bool)

(assert (=> b!7668722 (= e!4554616 e!4554622)))

(declare-fun c!1412346 () Bool)

(assert (=> b!7668722 (= c!1412346 (is-EmptyLang!20498 r!14126))))

(declare-fun b!7668723 () Bool)

(declare-fun res!3067364 () Bool)

(assert (=> b!7668723 (=> res!3067364 e!4554619)))

(assert (=> b!7668723 (= res!3067364 (not (is-ElementMatch!20498 r!14126)))))

(assert (=> b!7668723 (= e!4554622 e!4554619)))

(declare-fun b!7668724 () Bool)

(assert (=> b!7668724 (= e!4554618 e!4554620)))

(declare-fun res!3067363 () Bool)

(assert (=> b!7668724 (=> res!3067363 e!4554620)))

(assert (=> b!7668724 (= res!3067363 call!705181)))

(declare-fun b!7668725 () Bool)

(declare-fun e!4554617 () Bool)

(assert (=> b!7668725 (= e!4554617 (matchR!9994 (derivativeStep!5955 r!14126 (head!15755 (_2!38032 lt!2662436))) (tail!15295 (_2!38032 lt!2662436))))))

(declare-fun b!7668726 () Bool)

(assert (=> b!7668726 (= e!4554617 (nullable!8989 r!14126))))

(declare-fun b!7668727 () Bool)

(declare-fun res!3067362 () Bool)

(assert (=> b!7668727 (=> res!3067362 e!4554619)))

(assert (=> b!7668727 (= res!3067362 e!4554621)))

(declare-fun res!3067359 () Bool)

(assert (=> b!7668727 (=> (not res!3067359) (not e!4554621))))

(assert (=> b!7668727 (= res!3067359 lt!2662476)))

(declare-fun d!2328473 () Bool)

(assert (=> d!2328473 e!4554616))

(declare-fun c!1412345 () Bool)

(assert (=> d!2328473 (= c!1412345 (is-EmptyExpr!20498 r!14126))))

(assert (=> d!2328473 (= lt!2662476 e!4554617)))

(declare-fun c!1412347 () Bool)

(assert (=> d!2328473 (= c!1412347 (isEmpty!41860 (_2!38032 lt!2662436)))))

(assert (=> d!2328473 (validRegex!10916 r!14126)))

(assert (=> d!2328473 (= (matchR!9994 r!14126 (_2!38032 lt!2662436)) lt!2662476)))

(declare-fun b!7668721 () Bool)

(assert (=> b!7668721 (= e!4554620 (not (= (head!15755 (_2!38032 lt!2662436)) (c!1412297 r!14126))))))

(assert (= (and d!2328473 c!1412347) b!7668726))

(assert (= (and d!2328473 (not c!1412347)) b!7668725))

(assert (= (and d!2328473 c!1412345) b!7668715))

(assert (= (and d!2328473 (not c!1412345)) b!7668722))

(assert (= (and b!7668722 c!1412346) b!7668718))

(assert (= (and b!7668722 (not c!1412346)) b!7668723))

(assert (= (and b!7668723 (not res!3067364)) b!7668727))

(assert (= (and b!7668727 res!3067359) b!7668716))

(assert (= (and b!7668716 res!3067365) b!7668720))

(assert (= (and b!7668720 res!3067366) b!7668714))

(assert (= (and b!7668727 (not res!3067362)) b!7668719))

(assert (= (and b!7668719 res!3067360) b!7668724))

(assert (= (and b!7668724 (not res!3067363)) b!7668717))

(assert (= (and b!7668717 (not res!3067361)) b!7668721))

(assert (= (or b!7668715 b!7668724 b!7668716) bm!705176))

(assert (=> d!2328473 m!8173472))

(assert (=> d!2328473 m!8173372))

(assert (=> bm!705176 m!8173472))

(declare-fun m!8173492 () Bool)

(assert (=> b!7668721 m!8173492))

(assert (=> b!7668714 m!8173492))

(assert (=> b!7668725 m!8173492))

(assert (=> b!7668725 m!8173492))

(declare-fun m!8173496 () Bool)

(assert (=> b!7668725 m!8173496))

(declare-fun m!8173498 () Bool)

(assert (=> b!7668725 m!8173498))

(assert (=> b!7668725 m!8173496))

(assert (=> b!7668725 m!8173498))

(declare-fun m!8173500 () Bool)

(assert (=> b!7668725 m!8173500))

(assert (=> b!7668726 m!8173458))

(assert (=> b!7668717 m!8173498))

(assert (=> b!7668717 m!8173498))

(declare-fun m!8173502 () Bool)

(assert (=> b!7668717 m!8173502))

(assert (=> b!7668720 m!8173498))

(assert (=> b!7668720 m!8173498))

(assert (=> b!7668720 m!8173502))

(assert (=> b!7668472 d!2328473))

(declare-fun b!7668728 () Bool)

(declare-fun e!4554628 () Bool)

(assert (=> b!7668728 (= e!4554628 (= (head!15755 (_1!38032 lt!2662436)) (c!1412297 (reg!20827 r!14126))))))

(declare-fun b!7668729 () Bool)

(declare-fun e!4554623 () Bool)

(declare-fun lt!2662477 () Bool)

(declare-fun call!705182 () Bool)

(assert (=> b!7668729 (= e!4554623 (= lt!2662477 call!705182))))

(declare-fun bm!705177 () Bool)

(assert (=> bm!705177 (= call!705182 (isEmpty!41860 (_1!38032 lt!2662436)))))

(declare-fun b!7668730 () Bool)

(declare-fun res!3067373 () Bool)

(assert (=> b!7668730 (=> (not res!3067373) (not e!4554628))))

(assert (=> b!7668730 (= res!3067373 (not call!705182))))

(declare-fun b!7668731 () Bool)

(declare-fun res!3067369 () Bool)

(declare-fun e!4554627 () Bool)

(assert (=> b!7668731 (=> res!3067369 e!4554627)))

(assert (=> b!7668731 (= res!3067369 (not (isEmpty!41860 (tail!15295 (_1!38032 lt!2662436)))))))

(declare-fun b!7668732 () Bool)

(declare-fun e!4554629 () Bool)

(assert (=> b!7668732 (= e!4554629 (not lt!2662477))))

(declare-fun b!7668733 () Bool)

(declare-fun e!4554626 () Bool)

(declare-fun e!4554625 () Bool)

(assert (=> b!7668733 (= e!4554626 e!4554625)))

(declare-fun res!3067368 () Bool)

(assert (=> b!7668733 (=> (not res!3067368) (not e!4554625))))

(assert (=> b!7668733 (= res!3067368 (not lt!2662477))))

(declare-fun b!7668734 () Bool)

(declare-fun res!3067374 () Bool)

(assert (=> b!7668734 (=> (not res!3067374) (not e!4554628))))

(assert (=> b!7668734 (= res!3067374 (isEmpty!41860 (tail!15295 (_1!38032 lt!2662436))))))

(declare-fun b!7668736 () Bool)

(assert (=> b!7668736 (= e!4554623 e!4554629)))

(declare-fun c!1412349 () Bool)

(assert (=> b!7668736 (= c!1412349 (is-EmptyLang!20498 (reg!20827 r!14126)))))

(declare-fun b!7668737 () Bool)

(declare-fun res!3067372 () Bool)

(assert (=> b!7668737 (=> res!3067372 e!4554626)))

(assert (=> b!7668737 (= res!3067372 (not (is-ElementMatch!20498 (reg!20827 r!14126))))))

(assert (=> b!7668737 (= e!4554629 e!4554626)))

(declare-fun b!7668738 () Bool)

(assert (=> b!7668738 (= e!4554625 e!4554627)))

(declare-fun res!3067371 () Bool)

(assert (=> b!7668738 (=> res!3067371 e!4554627)))

(assert (=> b!7668738 (= res!3067371 call!705182)))

(declare-fun b!7668739 () Bool)

(declare-fun e!4554624 () Bool)

(assert (=> b!7668739 (= e!4554624 (matchR!9994 (derivativeStep!5955 (reg!20827 r!14126) (head!15755 (_1!38032 lt!2662436))) (tail!15295 (_1!38032 lt!2662436))))))

(declare-fun b!7668740 () Bool)

(assert (=> b!7668740 (= e!4554624 (nullable!8989 (reg!20827 r!14126)))))

(declare-fun b!7668741 () Bool)

(declare-fun res!3067370 () Bool)

(assert (=> b!7668741 (=> res!3067370 e!4554626)))

(assert (=> b!7668741 (= res!3067370 e!4554628)))

(declare-fun res!3067367 () Bool)

(assert (=> b!7668741 (=> (not res!3067367) (not e!4554628))))

(assert (=> b!7668741 (= res!3067367 lt!2662477)))

(declare-fun d!2328477 () Bool)

(assert (=> d!2328477 e!4554623))

(declare-fun c!1412348 () Bool)

(assert (=> d!2328477 (= c!1412348 (is-EmptyExpr!20498 (reg!20827 r!14126)))))

(assert (=> d!2328477 (= lt!2662477 e!4554624)))

(declare-fun c!1412350 () Bool)

(assert (=> d!2328477 (= c!1412350 (isEmpty!41860 (_1!38032 lt!2662436)))))

(assert (=> d!2328477 (validRegex!10916 (reg!20827 r!14126))))

(assert (=> d!2328477 (= (matchR!9994 (reg!20827 r!14126) (_1!38032 lt!2662436)) lt!2662477)))

(declare-fun b!7668735 () Bool)

(assert (=> b!7668735 (= e!4554627 (not (= (head!15755 (_1!38032 lt!2662436)) (c!1412297 (reg!20827 r!14126)))))))

(assert (= (and d!2328477 c!1412350) b!7668740))

(assert (= (and d!2328477 (not c!1412350)) b!7668739))

(assert (= (and d!2328477 c!1412348) b!7668729))

(assert (= (and d!2328477 (not c!1412348)) b!7668736))

(assert (= (and b!7668736 c!1412349) b!7668732))

(assert (= (and b!7668736 (not c!1412349)) b!7668737))

(assert (= (and b!7668737 (not res!3067372)) b!7668741))

(assert (= (and b!7668741 res!3067367) b!7668730))

(assert (= (and b!7668730 res!3067373) b!7668734))

(assert (= (and b!7668734 res!3067374) b!7668728))

(assert (= (and b!7668741 (not res!3067370)) b!7668733))

(assert (= (and b!7668733 res!3067368) b!7668738))

(assert (= (and b!7668738 (not res!3067371)) b!7668731))

(assert (= (and b!7668731 (not res!3067369)) b!7668735))

(assert (= (or b!7668729 b!7668738 b!7668730) bm!705177))

(assert (=> d!2328477 m!8173480))

(assert (=> d!2328477 m!8173464))

(assert (=> bm!705177 m!8173480))

(declare-fun m!8173504 () Bool)

(assert (=> b!7668735 m!8173504))

(assert (=> b!7668728 m!8173504))

(assert (=> b!7668739 m!8173504))

(assert (=> b!7668739 m!8173504))

(declare-fun m!8173506 () Bool)

(assert (=> b!7668739 m!8173506))

(declare-fun m!8173508 () Bool)

(assert (=> b!7668739 m!8173508))

(assert (=> b!7668739 m!8173506))

(assert (=> b!7668739 m!8173508))

(declare-fun m!8173510 () Bool)

(assert (=> b!7668739 m!8173510))

(assert (=> b!7668740 m!8173442))

(assert (=> b!7668731 m!8173508))

(assert (=> b!7668731 m!8173508))

(declare-fun m!8173512 () Bool)

(assert (=> b!7668731 m!8173512))

(assert (=> b!7668734 m!8173508))

(assert (=> b!7668734 m!8173508))

(assert (=> b!7668734 m!8173512))

(assert (=> b!7668472 d!2328477))

(declare-fun d!2328479 () Bool)

(assert (=> d!2328479 (= (matchR!9994 r!14126 (_2!38032 lt!2662436)) (matchRSpec!4599 r!14126 (_2!38032 lt!2662436)))))

(declare-fun lt!2662478 () Unit!168008)

(assert (=> d!2328479 (= lt!2662478 (choose!59082 r!14126 (_2!38032 lt!2662436)))))

(assert (=> d!2328479 (validRegex!10916 r!14126)))

(assert (=> d!2328479 (= (mainMatchTheorem!4577 r!14126 (_2!38032 lt!2662436)) lt!2662478)))

(declare-fun bs!1946410 () Bool)

(assert (= bs!1946410 d!2328479))

(assert (=> bs!1946410 m!8173396))

(assert (=> bs!1946410 m!8173400))

(declare-fun m!8173514 () Bool)

(assert (=> bs!1946410 m!8173514))

(assert (=> bs!1946410 m!8173372))

(assert (=> b!7668472 d!2328479))

(assert (=> b!7668468 d!2328459))

(declare-fun b!7668742 () Bool)

(declare-fun e!4554635 () Bool)

(assert (=> b!7668742 (= e!4554635 (= (head!15755 (++!17720 (_1!38032 lt!2662436) (_2!38032 lt!2662436))) (c!1412297 (Concat!29343 (reg!20827 r!14126) r!14126))))))

(declare-fun b!7668743 () Bool)

(declare-fun e!4554630 () Bool)

(declare-fun lt!2662479 () Bool)

(declare-fun call!705183 () Bool)

(assert (=> b!7668743 (= e!4554630 (= lt!2662479 call!705183))))

(declare-fun bm!705178 () Bool)

(assert (=> bm!705178 (= call!705183 (isEmpty!41860 (++!17720 (_1!38032 lt!2662436) (_2!38032 lt!2662436))))))

(declare-fun b!7668744 () Bool)

(declare-fun res!3067381 () Bool)

(assert (=> b!7668744 (=> (not res!3067381) (not e!4554635))))

(assert (=> b!7668744 (= res!3067381 (not call!705183))))

(declare-fun b!7668745 () Bool)

(declare-fun res!3067377 () Bool)

(declare-fun e!4554634 () Bool)

(assert (=> b!7668745 (=> res!3067377 e!4554634)))

(assert (=> b!7668745 (= res!3067377 (not (isEmpty!41860 (tail!15295 (++!17720 (_1!38032 lt!2662436) (_2!38032 lt!2662436))))))))

(declare-fun b!7668746 () Bool)

(declare-fun e!4554636 () Bool)

(assert (=> b!7668746 (= e!4554636 (not lt!2662479))))

(declare-fun b!7668747 () Bool)

(declare-fun e!4554633 () Bool)

(declare-fun e!4554632 () Bool)

(assert (=> b!7668747 (= e!4554633 e!4554632)))

(declare-fun res!3067376 () Bool)

(assert (=> b!7668747 (=> (not res!3067376) (not e!4554632))))

(assert (=> b!7668747 (= res!3067376 (not lt!2662479))))

(declare-fun b!7668748 () Bool)

(declare-fun res!3067382 () Bool)

(assert (=> b!7668748 (=> (not res!3067382) (not e!4554635))))

(assert (=> b!7668748 (= res!3067382 (isEmpty!41860 (tail!15295 (++!17720 (_1!38032 lt!2662436) (_2!38032 lt!2662436)))))))

(declare-fun b!7668750 () Bool)

(assert (=> b!7668750 (= e!4554630 e!4554636)))

(declare-fun c!1412352 () Bool)

(assert (=> b!7668750 (= c!1412352 (is-EmptyLang!20498 (Concat!29343 (reg!20827 r!14126) r!14126)))))

(declare-fun b!7668751 () Bool)

(declare-fun res!3067380 () Bool)

(assert (=> b!7668751 (=> res!3067380 e!4554633)))

(assert (=> b!7668751 (= res!3067380 (not (is-ElementMatch!20498 (Concat!29343 (reg!20827 r!14126) r!14126))))))

(assert (=> b!7668751 (= e!4554636 e!4554633)))

(declare-fun b!7668752 () Bool)

(assert (=> b!7668752 (= e!4554632 e!4554634)))

(declare-fun res!3067379 () Bool)

(assert (=> b!7668752 (=> res!3067379 e!4554634)))

(assert (=> b!7668752 (= res!3067379 call!705183)))

(declare-fun b!7668753 () Bool)

(declare-fun e!4554631 () Bool)

(assert (=> b!7668753 (= e!4554631 (matchR!9994 (derivativeStep!5955 (Concat!29343 (reg!20827 r!14126) r!14126) (head!15755 (++!17720 (_1!38032 lt!2662436) (_2!38032 lt!2662436)))) (tail!15295 (++!17720 (_1!38032 lt!2662436) (_2!38032 lt!2662436)))))))

(declare-fun b!7668754 () Bool)

(assert (=> b!7668754 (= e!4554631 (nullable!8989 (Concat!29343 (reg!20827 r!14126) r!14126)))))

(declare-fun b!7668755 () Bool)

(declare-fun res!3067378 () Bool)

(assert (=> b!7668755 (=> res!3067378 e!4554633)))

(assert (=> b!7668755 (= res!3067378 e!4554635)))

(declare-fun res!3067375 () Bool)

(assert (=> b!7668755 (=> (not res!3067375) (not e!4554635))))

(assert (=> b!7668755 (= res!3067375 lt!2662479)))

(declare-fun d!2328481 () Bool)

(assert (=> d!2328481 e!4554630))

(declare-fun c!1412351 () Bool)

(assert (=> d!2328481 (= c!1412351 (is-EmptyExpr!20498 (Concat!29343 (reg!20827 r!14126) r!14126)))))

(assert (=> d!2328481 (= lt!2662479 e!4554631)))

(declare-fun c!1412353 () Bool)

(assert (=> d!2328481 (= c!1412353 (isEmpty!41860 (++!17720 (_1!38032 lt!2662436) (_2!38032 lt!2662436))))))

(assert (=> d!2328481 (validRegex!10916 (Concat!29343 (reg!20827 r!14126) r!14126))))

(assert (=> d!2328481 (= (matchR!9994 (Concat!29343 (reg!20827 r!14126) r!14126) (++!17720 (_1!38032 lt!2662436) (_2!38032 lt!2662436))) lt!2662479)))

(declare-fun b!7668749 () Bool)

(assert (=> b!7668749 (= e!4554634 (not (= (head!15755 (++!17720 (_1!38032 lt!2662436) (_2!38032 lt!2662436))) (c!1412297 (Concat!29343 (reg!20827 r!14126) r!14126)))))))

(assert (= (and d!2328481 c!1412353) b!7668754))

(assert (= (and d!2328481 (not c!1412353)) b!7668753))

(assert (= (and d!2328481 c!1412351) b!7668743))

(assert (= (and d!2328481 (not c!1412351)) b!7668750))

(assert (= (and b!7668750 c!1412352) b!7668746))

(assert (= (and b!7668750 (not c!1412352)) b!7668751))

(assert (= (and b!7668751 (not res!3067380)) b!7668755))

(assert (= (and b!7668755 res!3067375) b!7668744))

(assert (= (and b!7668744 res!3067381) b!7668748))

(assert (= (and b!7668748 res!3067382) b!7668742))

(assert (= (and b!7668755 (not res!3067378)) b!7668747))

(assert (= (and b!7668747 res!3067376) b!7668752))

(assert (= (and b!7668752 (not res!3067379)) b!7668745))

(assert (= (and b!7668745 (not res!3067377)) b!7668749))

(assert (= (or b!7668743 b!7668752 b!7668744) bm!705178))

(assert (=> d!2328481 m!8173374))

(declare-fun m!8173516 () Bool)

(assert (=> d!2328481 m!8173516))

(declare-fun m!8173518 () Bool)

(assert (=> d!2328481 m!8173518))

(assert (=> bm!705178 m!8173374))

(assert (=> bm!705178 m!8173516))

(assert (=> b!7668749 m!8173374))

(declare-fun m!8173520 () Bool)

(assert (=> b!7668749 m!8173520))

(assert (=> b!7668742 m!8173374))

(assert (=> b!7668742 m!8173520))

(assert (=> b!7668753 m!8173374))

(assert (=> b!7668753 m!8173520))

(assert (=> b!7668753 m!8173520))

(declare-fun m!8173522 () Bool)

(assert (=> b!7668753 m!8173522))

(assert (=> b!7668753 m!8173374))

(declare-fun m!8173524 () Bool)

(assert (=> b!7668753 m!8173524))

(assert (=> b!7668753 m!8173522))

(assert (=> b!7668753 m!8173524))

(declare-fun m!8173526 () Bool)

(assert (=> b!7668753 m!8173526))

(declare-fun m!8173528 () Bool)

(assert (=> b!7668754 m!8173528))

(assert (=> b!7668745 m!8173374))

(assert (=> b!7668745 m!8173524))

(assert (=> b!7668745 m!8173524))

(declare-fun m!8173530 () Bool)

(assert (=> b!7668745 m!8173530))

(assert (=> b!7668748 m!8173374))

(assert (=> b!7668748 m!8173524))

(assert (=> b!7668748 m!8173524))

(assert (=> b!7668748 m!8173530))

(assert (=> b!7668468 d!2328481))

(declare-fun b!7668766 () Bool)

(declare-fun res!3067388 () Bool)

(declare-fun e!4554641 () Bool)

(assert (=> b!7668766 (=> (not res!3067388) (not e!4554641))))

(declare-fun lt!2662482 () List!73349)

(declare-fun size!42602 (List!73349) Int)

(assert (=> b!7668766 (= res!3067388 (= (size!42602 lt!2662482) (+ (size!42602 (_1!38032 lt!2662436)) (size!42602 (_2!38032 lt!2662436)))))))

(declare-fun b!7668764 () Bool)

(declare-fun e!4554642 () List!73349)

(assert (=> b!7668764 (= e!4554642 (_2!38032 lt!2662436))))

(declare-fun d!2328483 () Bool)

(assert (=> d!2328483 e!4554641))

(declare-fun res!3067387 () Bool)

(assert (=> d!2328483 (=> (not res!3067387) (not e!4554641))))

(declare-fun content!15499 (List!73349) (Set C!41322))

(assert (=> d!2328483 (= res!3067387 (= (content!15499 lt!2662482) (set.union (content!15499 (_1!38032 lt!2662436)) (content!15499 (_2!38032 lt!2662436)))))))

(assert (=> d!2328483 (= lt!2662482 e!4554642)))

(declare-fun c!1412356 () Bool)

(assert (=> d!2328483 (= c!1412356 (is-Nil!73225 (_1!38032 lt!2662436)))))

(assert (=> d!2328483 (= (++!17720 (_1!38032 lt!2662436) (_2!38032 lt!2662436)) lt!2662482)))

(declare-fun b!7668767 () Bool)

(assert (=> b!7668767 (= e!4554641 (or (not (= (_2!38032 lt!2662436) Nil!73225)) (= lt!2662482 (_1!38032 lt!2662436))))))

(declare-fun b!7668765 () Bool)

(assert (=> b!7668765 (= e!4554642 (Cons!73225 (h!79673 (_1!38032 lt!2662436)) (++!17720 (t!388084 (_1!38032 lt!2662436)) (_2!38032 lt!2662436))))))

(assert (= (and d!2328483 c!1412356) b!7668764))

(assert (= (and d!2328483 (not c!1412356)) b!7668765))

(assert (= (and d!2328483 res!3067387) b!7668766))

(assert (= (and b!7668766 res!3067388) b!7668767))

(declare-fun m!8173532 () Bool)

(assert (=> b!7668766 m!8173532))

(declare-fun m!8173534 () Bool)

(assert (=> b!7668766 m!8173534))

(declare-fun m!8173536 () Bool)

(assert (=> b!7668766 m!8173536))

(declare-fun m!8173538 () Bool)

(assert (=> d!2328483 m!8173538))

(declare-fun m!8173540 () Bool)

(assert (=> d!2328483 m!8173540))

(declare-fun m!8173542 () Bool)

(assert (=> d!2328483 m!8173542))

(declare-fun m!8173544 () Bool)

(assert (=> b!7668765 m!8173544))

(assert (=> b!7668468 d!2328483))

(declare-fun d!2328485 () Bool)

(assert (=> d!2328485 (matchR!9994 (Concat!29343 (reg!20827 r!14126) r!14126) (++!17720 (_1!38032 lt!2662436) (_2!38032 lt!2662436)))))

(declare-fun lt!2662485 () Unit!168008)

(declare-fun choose!59083 (Regex!20498 Regex!20498 List!73349 List!73349 List!73349) Unit!168008)

(assert (=> d!2328485 (= lt!2662485 (choose!59083 (reg!20827 r!14126) r!14126 (_1!38032 lt!2662436) (_2!38032 lt!2662436) s!9605))))

(assert (=> d!2328485 (validRegex!10916 (reg!20827 r!14126))))

(assert (=> d!2328485 (= (lemmaFindSeparationIsDefinedThenConcatMatches!185 (reg!20827 r!14126) r!14126 (_1!38032 lt!2662436) (_2!38032 lt!2662436) s!9605) lt!2662485)))

(declare-fun bs!1946411 () Bool)

(assert (= bs!1946411 d!2328485))

(assert (=> bs!1946411 m!8173374))

(assert (=> bs!1946411 m!8173374))

(assert (=> bs!1946411 m!8173376))

(declare-fun m!8173546 () Bool)

(assert (=> bs!1946411 m!8173546))

(assert (=> bs!1946411 m!8173464))

(assert (=> b!7668468 d!2328485))

(declare-fun d!2328487 () Bool)

(declare-fun choose!59084 (Int) Bool)

(assert (=> d!2328487 (= (Exists!4623 lambda!469998) (choose!59084 lambda!469998))))

(declare-fun bs!1946412 () Bool)

(assert (= bs!1946412 d!2328487))

(declare-fun m!8173548 () Bool)

(assert (=> bs!1946412 m!8173548))

(assert (=> b!7668474 d!2328487))

(declare-fun d!2328489 () Bool)

(declare-fun isEmpty!41862 (Option!17523) Bool)

(assert (=> d!2328489 (= (isDefined!14139 lt!2662431) (not (isEmpty!41862 lt!2662431)))))

(declare-fun bs!1946413 () Bool)

(assert (= bs!1946413 d!2328489))

(declare-fun m!8173550 () Bool)

(assert (=> bs!1946413 m!8173550))

(assert (=> b!7668474 d!2328489))

(declare-fun b!7668818 () Bool)

(declare-fun e!4554671 () Bool)

(assert (=> b!7668818 (= e!4554671 (matchR!9994 r!14126 s!9605))))

(declare-fun b!7668819 () Bool)

(declare-fun e!4554674 () Bool)

(declare-fun lt!2662493 () Option!17523)

(assert (=> b!7668819 (= e!4554674 (= (++!17720 (_1!38032 (get!25959 lt!2662493)) (_2!38032 (get!25959 lt!2662493))) s!9605))))

(declare-fun b!7668820 () Bool)

(declare-fun e!4554673 () Bool)

(assert (=> b!7668820 (= e!4554673 (not (isDefined!14139 lt!2662493)))))

(declare-fun d!2328491 () Bool)

(assert (=> d!2328491 e!4554673))

(declare-fun res!3067417 () Bool)

(assert (=> d!2328491 (=> res!3067417 e!4554673)))

(assert (=> d!2328491 (= res!3067417 e!4554674)))

(declare-fun res!3067416 () Bool)

(assert (=> d!2328491 (=> (not res!3067416) (not e!4554674))))

(assert (=> d!2328491 (= res!3067416 (isDefined!14139 lt!2662493))))

(declare-fun e!4554672 () Option!17523)

(assert (=> d!2328491 (= lt!2662493 e!4554672)))

(declare-fun c!1412369 () Bool)

(assert (=> d!2328491 (= c!1412369 e!4554671)))

(declare-fun res!3067415 () Bool)

(assert (=> d!2328491 (=> (not res!3067415) (not e!4554671))))

(assert (=> d!2328491 (= res!3067415 (matchR!9994 (reg!20827 r!14126) Nil!73225))))

(assert (=> d!2328491 (validRegex!10916 (reg!20827 r!14126))))

(assert (=> d!2328491 (= (findConcatSeparation!3553 (reg!20827 r!14126) r!14126 Nil!73225 s!9605 s!9605) lt!2662493)))

(declare-fun b!7668821 () Bool)

(assert (=> b!7668821 (= e!4554672 (Some!17522 (tuple2!69459 Nil!73225 s!9605)))))

(declare-fun b!7668822 () Bool)

(declare-fun res!3067419 () Bool)

(assert (=> b!7668822 (=> (not res!3067419) (not e!4554674))))

(assert (=> b!7668822 (= res!3067419 (matchR!9994 r!14126 (_2!38032 (get!25959 lt!2662493))))))

(declare-fun b!7668823 () Bool)

(declare-fun lt!2662494 () Unit!168008)

(declare-fun lt!2662492 () Unit!168008)

(assert (=> b!7668823 (= lt!2662494 lt!2662492)))

(assert (=> b!7668823 (= (++!17720 (++!17720 Nil!73225 (Cons!73225 (h!79673 s!9605) Nil!73225)) (t!388084 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3273 (List!73349 C!41322 List!73349 List!73349) Unit!168008)

(assert (=> b!7668823 (= lt!2662492 (lemmaMoveElementToOtherListKeepsConcatEq!3273 Nil!73225 (h!79673 s!9605) (t!388084 s!9605) s!9605))))

(declare-fun e!4554675 () Option!17523)

(assert (=> b!7668823 (= e!4554675 (findConcatSeparation!3553 (reg!20827 r!14126) r!14126 (++!17720 Nil!73225 (Cons!73225 (h!79673 s!9605) Nil!73225)) (t!388084 s!9605) s!9605))))

(declare-fun b!7668824 () Bool)

(declare-fun res!3067418 () Bool)

(assert (=> b!7668824 (=> (not res!3067418) (not e!4554674))))

(assert (=> b!7668824 (= res!3067418 (matchR!9994 (reg!20827 r!14126) (_1!38032 (get!25959 lt!2662493))))))

(declare-fun b!7668825 () Bool)

(assert (=> b!7668825 (= e!4554672 e!4554675)))

(declare-fun c!1412370 () Bool)

(assert (=> b!7668825 (= c!1412370 (is-Nil!73225 s!9605))))

(declare-fun b!7668826 () Bool)

(assert (=> b!7668826 (= e!4554675 None!17522)))

(assert (= (and d!2328491 res!3067415) b!7668818))

(assert (= (and d!2328491 c!1412369) b!7668821))

(assert (= (and d!2328491 (not c!1412369)) b!7668825))

(assert (= (and b!7668825 c!1412370) b!7668826))

(assert (= (and b!7668825 (not c!1412370)) b!7668823))

(assert (= (and d!2328491 res!3067416) b!7668824))

(assert (= (and b!7668824 res!3067418) b!7668822))

(assert (= (and b!7668822 res!3067419) b!7668819))

(assert (= (and d!2328491 (not res!3067417)) b!7668820))

(assert (=> b!7668818 m!8173392))

(declare-fun m!8173552 () Bool)

(assert (=> b!7668824 m!8173552))

(declare-fun m!8173554 () Bool)

(assert (=> b!7668824 m!8173554))

(assert (=> b!7668822 m!8173552))

(declare-fun m!8173556 () Bool)

(assert (=> b!7668822 m!8173556))

(declare-fun m!8173558 () Bool)

(assert (=> d!2328491 m!8173558))

(declare-fun m!8173560 () Bool)

(assert (=> d!2328491 m!8173560))

(assert (=> d!2328491 m!8173464))

(assert (=> b!7668820 m!8173558))

(assert (=> b!7668819 m!8173552))

(declare-fun m!8173562 () Bool)

(assert (=> b!7668819 m!8173562))

(declare-fun m!8173564 () Bool)

(assert (=> b!7668823 m!8173564))

(assert (=> b!7668823 m!8173564))

(declare-fun m!8173566 () Bool)

(assert (=> b!7668823 m!8173566))

(declare-fun m!8173568 () Bool)

(assert (=> b!7668823 m!8173568))

(assert (=> b!7668823 m!8173564))

(declare-fun m!8173570 () Bool)

(assert (=> b!7668823 m!8173570))

(assert (=> b!7668474 d!2328491))

(declare-fun bs!1946416 () Bool)

(declare-fun d!2328493 () Bool)

(assert (= bs!1946416 (and d!2328493 b!7668684)))

(declare-fun lambda!470018 () Int)

(assert (=> bs!1946416 (not (= lambda!470018 lambda!470006))))

(declare-fun bs!1946417 () Bool)

(assert (= bs!1946417 (and d!2328493 b!7668695)))

(assert (=> bs!1946417 (not (= lambda!470018 lambda!470008))))

(declare-fun bs!1946419 () Bool)

(assert (= bs!1946419 (and d!2328493 b!7668696)))

(assert (=> bs!1946419 (not (= lambda!470018 lambda!470009))))

(declare-fun bs!1946420 () Bool)

(assert (= bs!1946420 (and d!2328493 b!7668685)))

(assert (=> bs!1946420 (not (= lambda!470018 lambda!470007))))

(declare-fun bs!1946421 () Bool)

(assert (= bs!1946421 (and d!2328493 b!7668474)))

(assert (=> bs!1946421 (= lambda!470018 lambda!469998)))

(assert (=> d!2328493 true))

(assert (=> d!2328493 true))

(assert (=> d!2328493 true))

(assert (=> d!2328493 (= (isDefined!14139 (findConcatSeparation!3553 (reg!20827 r!14126) r!14126 Nil!73225 s!9605 s!9605)) (Exists!4623 lambda!470018))))

(declare-fun lt!2662497 () Unit!168008)

(declare-fun choose!59085 (Regex!20498 Regex!20498 List!73349) Unit!168008)

(assert (=> d!2328493 (= lt!2662497 (choose!59085 (reg!20827 r!14126) r!14126 s!9605))))

(assert (=> d!2328493 (validRegex!10916 (reg!20827 r!14126))))

(assert (=> d!2328493 (= (lemmaFindConcatSeparationEquivalentToExists!3311 (reg!20827 r!14126) r!14126 s!9605) lt!2662497)))

(declare-fun bs!1946422 () Bool)

(assert (= bs!1946422 d!2328493))

(assert (=> bs!1946422 m!8173384))

(declare-fun m!8173572 () Bool)

(assert (=> bs!1946422 m!8173572))

(declare-fun m!8173574 () Bool)

(assert (=> bs!1946422 m!8173574))

(declare-fun m!8173576 () Bool)

(assert (=> bs!1946422 m!8173576))

(assert (=> bs!1946422 m!8173464))

(assert (=> bs!1946422 m!8173384))

(assert (=> b!7668474 d!2328493))

(declare-fun d!2328495 () Bool)

(assert (=> d!2328495 (= (isEmpty!41860 s!9605) (is-Nil!73225 s!9605))))

(assert (=> b!7668475 d!2328495))

(declare-fun b!7668866 () Bool)

(declare-fun e!4554694 () Bool)

(declare-fun tp!2244010 () Bool)

(declare-fun tp!2244008 () Bool)

(assert (=> b!7668866 (= e!4554694 (and tp!2244010 tp!2244008))))

(declare-fun b!7668864 () Bool)

(declare-fun tp!2244011 () Bool)

(declare-fun tp!2244009 () Bool)

(assert (=> b!7668864 (= e!4554694 (and tp!2244011 tp!2244009))))

(assert (=> b!7668470 (= tp!2243979 e!4554694)))

(declare-fun b!7668865 () Bool)

(declare-fun tp!2244012 () Bool)

(assert (=> b!7668865 (= e!4554694 tp!2244012)))

(declare-fun b!7668863 () Bool)

(assert (=> b!7668863 (= e!4554694 tp_is_empty!51351)))

(assert (= (and b!7668470 (is-ElementMatch!20498 (regOne!41508 r!14126))) b!7668863))

(assert (= (and b!7668470 (is-Concat!29343 (regOne!41508 r!14126))) b!7668864))

(assert (= (and b!7668470 (is-Star!20498 (regOne!41508 r!14126))) b!7668865))

(assert (= (and b!7668470 (is-Union!20498 (regOne!41508 r!14126))) b!7668866))

(declare-fun b!7668870 () Bool)

(declare-fun e!4554695 () Bool)

(declare-fun tp!2244015 () Bool)

(declare-fun tp!2244013 () Bool)

(assert (=> b!7668870 (= e!4554695 (and tp!2244015 tp!2244013))))

(declare-fun b!7668868 () Bool)

(declare-fun tp!2244016 () Bool)

(declare-fun tp!2244014 () Bool)

(assert (=> b!7668868 (= e!4554695 (and tp!2244016 tp!2244014))))

(assert (=> b!7668470 (= tp!2243977 e!4554695)))

(declare-fun b!7668869 () Bool)

(declare-fun tp!2244017 () Bool)

(assert (=> b!7668869 (= e!4554695 tp!2244017)))

(declare-fun b!7668867 () Bool)

(assert (=> b!7668867 (= e!4554695 tp_is_empty!51351)))

(assert (= (and b!7668470 (is-ElementMatch!20498 (regTwo!41508 r!14126))) b!7668867))

(assert (= (and b!7668470 (is-Concat!29343 (regTwo!41508 r!14126))) b!7668868))

(assert (= (and b!7668470 (is-Star!20498 (regTwo!41508 r!14126))) b!7668869))

(assert (= (and b!7668470 (is-Union!20498 (regTwo!41508 r!14126))) b!7668870))

(declare-fun b!7668874 () Bool)

(declare-fun e!4554696 () Bool)

(declare-fun tp!2244020 () Bool)

(declare-fun tp!2244018 () Bool)

(assert (=> b!7668874 (= e!4554696 (and tp!2244020 tp!2244018))))

(declare-fun b!7668872 () Bool)

(declare-fun tp!2244021 () Bool)

(declare-fun tp!2244019 () Bool)

(assert (=> b!7668872 (= e!4554696 (and tp!2244021 tp!2244019))))

(assert (=> b!7668471 (= tp!2243975 e!4554696)))

(declare-fun b!7668873 () Bool)

(declare-fun tp!2244022 () Bool)

(assert (=> b!7668873 (= e!4554696 tp!2244022)))

(declare-fun b!7668871 () Bool)

(assert (=> b!7668871 (= e!4554696 tp_is_empty!51351)))

(assert (= (and b!7668471 (is-ElementMatch!20498 (reg!20827 r!14126))) b!7668871))

(assert (= (and b!7668471 (is-Concat!29343 (reg!20827 r!14126))) b!7668872))

(assert (= (and b!7668471 (is-Star!20498 (reg!20827 r!14126))) b!7668873))

(assert (= (and b!7668471 (is-Union!20498 (reg!20827 r!14126))) b!7668874))

(declare-fun b!7668879 () Bool)

(declare-fun e!4554699 () Bool)

(declare-fun tp!2244025 () Bool)

(assert (=> b!7668879 (= e!4554699 (and tp_is_empty!51351 tp!2244025))))

(assert (=> b!7668476 (= tp!2243976 e!4554699)))

(assert (= (and b!7668476 (is-Cons!73225 (t!388084 s!9605))) b!7668879))

(declare-fun b!7668883 () Bool)

(declare-fun e!4554700 () Bool)

(declare-fun tp!2244028 () Bool)

(declare-fun tp!2244026 () Bool)

(assert (=> b!7668883 (= e!4554700 (and tp!2244028 tp!2244026))))

(declare-fun b!7668881 () Bool)

(declare-fun tp!2244029 () Bool)

(declare-fun tp!2244027 () Bool)

(assert (=> b!7668881 (= e!4554700 (and tp!2244029 tp!2244027))))

(assert (=> b!7668467 (= tp!2243978 e!4554700)))

(declare-fun b!7668882 () Bool)

(declare-fun tp!2244030 () Bool)

(assert (=> b!7668882 (= e!4554700 tp!2244030)))

(declare-fun b!7668880 () Bool)

(assert (=> b!7668880 (= e!4554700 tp_is_empty!51351)))

(assert (= (and b!7668467 (is-ElementMatch!20498 (regOne!41509 r!14126))) b!7668880))

(assert (= (and b!7668467 (is-Concat!29343 (regOne!41509 r!14126))) b!7668881))

(assert (= (and b!7668467 (is-Star!20498 (regOne!41509 r!14126))) b!7668882))

(assert (= (and b!7668467 (is-Union!20498 (regOne!41509 r!14126))) b!7668883))

(declare-fun b!7668887 () Bool)

(declare-fun e!4554701 () Bool)

(declare-fun tp!2244033 () Bool)

(declare-fun tp!2244031 () Bool)

(assert (=> b!7668887 (= e!4554701 (and tp!2244033 tp!2244031))))

(declare-fun b!7668885 () Bool)

(declare-fun tp!2244034 () Bool)

(declare-fun tp!2244032 () Bool)

(assert (=> b!7668885 (= e!4554701 (and tp!2244034 tp!2244032))))

(assert (=> b!7668467 (= tp!2243974 e!4554701)))

(declare-fun b!7668886 () Bool)

(declare-fun tp!2244035 () Bool)

(assert (=> b!7668886 (= e!4554701 tp!2244035)))

(declare-fun b!7668884 () Bool)

(assert (=> b!7668884 (= e!4554701 tp_is_empty!51351)))

(assert (= (and b!7668467 (is-ElementMatch!20498 (regTwo!41509 r!14126))) b!7668884))

(assert (= (and b!7668467 (is-Concat!29343 (regTwo!41509 r!14126))) b!7668885))

(assert (= (and b!7668467 (is-Star!20498 (regTwo!41509 r!14126))) b!7668886))

(assert (= (and b!7668467 (is-Union!20498 (regTwo!41509 r!14126))) b!7668887))

(push 1)

(assert (not b!7668616))

(assert (not d!2328493))

(assert (not d!2328483))

(assert (not b!7668734))

(assert (not bm!705177))

(assert (not b!7668819))

(assert (not b!7668765))

(assert (not b!7668868))

(assert (not d!2328491))

(assert (not bm!705171))

(assert (not b!7668873))

(assert (not b!7668739))

(assert (not b!7668881))

(assert (not b!7668607))

(assert (not d!2328465))

(assert tp_is_empty!51351)

(assert (not bm!705173))

(assert (not b!7668717))

(assert (not b!7668753))

(assert (not b!7668822))

(assert (not b!7668872))

(assert (not b!7668680))

(assert (not d!2328485))

(assert (not b!7668742))

(assert (not bm!705150))

(assert (not b!7668754))

(assert (not b!7668714))

(assert (not b!7668735))

(assert (not b!7668882))

(assert (not bm!705178))

(assert (not b!7668748))

(assert (not b!7668720))

(assert (not b!7668615))

(assert (not d!2328487))

(assert (not b!7668721))

(assert (not b!7668726))

(assert (not b!7668745))

(assert (not b!7668728))

(assert (not d!2328481))

(assert (not b!7668887))

(assert (not b!7668818))

(assert (not bm!705164))

(assert (not b!7668686))

(assert (not b!7668749))

(assert (not bm!705172))

(assert (not b!7668697))

(assert (not b!7668611))

(assert (not d!2328477))

(assert (not b!7668864))

(assert (not b!7668604))

(assert (not b!7668820))

(assert (not b!7668731))

(assert (not b!7668879))

(assert (not bm!705174))

(assert (not b!7668691))

(assert (not b!7668610))

(assert (not d!2328489))

(assert (not b!7668824))

(assert (not d!2328473))

(assert (not b!7668865))

(assert (not b!7668740))

(assert (not b!7668866))

(assert (not bm!705152))

(assert (not b!7668565))

(assert (not b!7668885))

(assert (not b!7668886))

(assert (not d!2328479))

(assert (not bm!705176))

(assert (not b!7668823))

(assert (not b!7668870))

(assert (not d!2328461))

(assert (not b!7668766))

(assert (not b!7668725))

(assert (not b!7668883))

(assert (not b!7668874))

(assert (not b!7668869))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

