; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!84672 () Bool)

(assert start!84672)

(declare-fun b!950432 () Bool)

(assert (=> b!950432 true))

(assert (=> b!950432 true))

(declare-fun lambda!32612 () Int)

(declare-fun lambda!32611 () Int)

(assert (=> b!950432 (not (= lambda!32612 lambda!32611))))

(assert (=> b!950432 true))

(assert (=> b!950432 true))

(declare-fun res!431914 () Bool)

(declare-fun e!615320 () Bool)

(assert (=> start!84672 (=> (not res!431914) (not e!615320))))

(declare-datatypes ((C!5806 0))(
  ( (C!5807 (val!3151 Int)) )
))
(declare-datatypes ((Regex!2618 0))(
  ( (ElementMatch!2618 (c!154773 C!5806)) (Concat!4451 (regOne!5748 Regex!2618) (regTwo!5748 Regex!2618)) (EmptyExpr!2618) (Star!2618 (reg!2947 Regex!2618)) (EmptyLang!2618) (Union!2618 (regOne!5749 Regex!2618) (regTwo!5749 Regex!2618)) )
))
(declare-fun r!15766 () Regex!2618)

(declare-fun validRegex!1087 (Regex!2618) Bool)

(assert (=> start!84672 (= res!431914 (validRegex!1087 r!15766))))

(assert (=> start!84672 e!615320))

(declare-fun e!615323 () Bool)

(assert (=> start!84672 e!615323))

(declare-fun e!615322 () Bool)

(assert (=> start!84672 e!615322))

(declare-fun b!950428 () Bool)

(declare-fun tp_is_empty!4879 () Bool)

(assert (=> b!950428 (= e!615323 tp_is_empty!4879)))

(declare-fun b!950429 () Bool)

(declare-fun e!615318 () Bool)

(declare-datatypes ((List!9848 0))(
  ( (Nil!9832) (Cons!9832 (h!15233 C!5806) (t!100894 List!9848)) )
))
(declare-datatypes ((tuple2!11130 0))(
  ( (tuple2!11131 (_1!6391 List!9848) (_2!6391 List!9848)) )
))
(declare-fun lt!344505 () tuple2!11130)

(declare-fun matchR!1156 (Regex!2618 List!9848) Bool)

(assert (=> b!950429 (= e!615318 (matchR!1156 (regTwo!5748 r!15766) (_2!6391 lt!344505)))))

(declare-fun b!950430 () Bool)

(declare-fun tp!292957 () Bool)

(assert (=> b!950430 (= e!615323 tp!292957)))

(declare-fun b!950431 () Bool)

(declare-fun tp!292958 () Bool)

(assert (=> b!950431 (= e!615322 (and tp_is_empty!4879 tp!292958))))

(declare-fun e!615321 () Bool)

(declare-fun e!615319 () Bool)

(assert (=> b!950432 (= e!615321 e!615319)))

(declare-fun res!431911 () Bool)

(assert (=> b!950432 (=> res!431911 e!615319)))

(declare-fun s!10566 () List!9848)

(declare-fun isEmpty!6099 (List!9848) Bool)

(assert (=> b!950432 (= res!431911 (isEmpty!6099 s!10566))))

(declare-fun Exists!369 (Int) Bool)

(assert (=> b!950432 (= (Exists!369 lambda!32611) (Exists!369 lambda!32612))))

(declare-datatypes ((Unit!14879 0))(
  ( (Unit!14880) )
))
(declare-fun lt!344506 () Unit!14879)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!189 (Regex!2618 Regex!2618 List!9848) Unit!14879)

(assert (=> b!950432 (= lt!344506 (lemmaExistCutMatchRandMatchRSpecEquivalent!189 EmptyExpr!2618 (regTwo!5748 r!15766) s!10566))))

(declare-datatypes ((Option!2207 0))(
  ( (None!2206) (Some!2206 (v!19623 tuple2!11130)) )
))
(declare-fun lt!344508 () Option!2207)

(declare-fun isDefined!1849 (Option!2207) Bool)

(assert (=> b!950432 (= (isDefined!1849 lt!344508) (Exists!369 lambda!32611))))

(declare-fun findConcatSeparation!313 (Regex!2618 Regex!2618 List!9848 List!9848 List!9848) Option!2207)

(assert (=> b!950432 (= lt!344508 (findConcatSeparation!313 EmptyExpr!2618 (regTwo!5748 r!15766) Nil!9832 s!10566 s!10566))))

(declare-fun lt!344509 () Unit!14879)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!313 (Regex!2618 Regex!2618 List!9848) Unit!14879)

(assert (=> b!950432 (= lt!344509 (lemmaFindConcatSeparationEquivalentToExists!313 EmptyExpr!2618 (regTwo!5748 r!15766) s!10566))))

(declare-fun b!950433 () Bool)

(declare-fun tp!292956 () Bool)

(declare-fun tp!292954 () Bool)

(assert (=> b!950433 (= e!615323 (and tp!292956 tp!292954))))

(declare-fun b!950434 () Bool)

(assert (=> b!950434 (= e!615320 (not e!615321))))

(declare-fun res!431913 () Bool)

(assert (=> b!950434 (=> res!431913 e!615321)))

(declare-fun lt!344507 () Bool)

(assert (=> b!950434 (= res!431913 (or (not lt!344507) (not (is-Concat!4451 r!15766)) (not (is-EmptyExpr!2618 (regOne!5748 r!15766)))))))

(declare-fun matchRSpec!419 (Regex!2618 List!9848) Bool)

(assert (=> b!950434 (= lt!344507 (matchRSpec!419 r!15766 s!10566))))

(assert (=> b!950434 (= lt!344507 (matchR!1156 r!15766 s!10566))))

(declare-fun lt!344504 () Unit!14879)

(declare-fun mainMatchTheorem!419 (Regex!2618 List!9848) Unit!14879)

(assert (=> b!950434 (= lt!344504 (mainMatchTheorem!419 r!15766 s!10566))))

(declare-fun b!950435 () Bool)

(declare-fun tp!292955 () Bool)

(declare-fun tp!292953 () Bool)

(assert (=> b!950435 (= e!615323 (and tp!292955 tp!292953))))

(declare-fun b!950436 () Bool)

(assert (=> b!950436 (= e!615319 e!615318)))

(declare-fun res!431912 () Bool)

(assert (=> b!950436 (=> res!431912 e!615318)))

(assert (=> b!950436 (= res!431912 (not (isEmpty!6099 (_1!6391 lt!344505))))))

(declare-fun get!3305 (Option!2207) tuple2!11130)

(assert (=> b!950436 (= lt!344505 (get!3305 lt!344508))))

(assert (= (and start!84672 res!431914) b!950434))

(assert (= (and b!950434 (not res!431913)) b!950432))

(assert (= (and b!950432 (not res!431911)) b!950436))

(assert (= (and b!950436 (not res!431912)) b!950429))

(assert (= (and start!84672 (is-ElementMatch!2618 r!15766)) b!950428))

(assert (= (and start!84672 (is-Concat!4451 r!15766)) b!950433))

(assert (= (and start!84672 (is-Star!2618 r!15766)) b!950430))

(assert (= (and start!84672 (is-Union!2618 r!15766)) b!950435))

(assert (= (and start!84672 (is-Cons!9832 s!10566)) b!950431))

(declare-fun m!1163585 () Bool)

(assert (=> b!950434 m!1163585))

(declare-fun m!1163587 () Bool)

(assert (=> b!950434 m!1163587))

(declare-fun m!1163589 () Bool)

(assert (=> b!950434 m!1163589))

(declare-fun m!1163591 () Bool)

(assert (=> start!84672 m!1163591))

(declare-fun m!1163593 () Bool)

(assert (=> b!950429 m!1163593))

(declare-fun m!1163595 () Bool)

(assert (=> b!950436 m!1163595))

(declare-fun m!1163597 () Bool)

(assert (=> b!950436 m!1163597))

(declare-fun m!1163599 () Bool)

(assert (=> b!950432 m!1163599))

(declare-fun m!1163601 () Bool)

(assert (=> b!950432 m!1163601))

(declare-fun m!1163603 () Bool)

(assert (=> b!950432 m!1163603))

(declare-fun m!1163605 () Bool)

(assert (=> b!950432 m!1163605))

(declare-fun m!1163607 () Bool)

(assert (=> b!950432 m!1163607))

(assert (=> b!950432 m!1163607))

(declare-fun m!1163609 () Bool)

(assert (=> b!950432 m!1163609))

(declare-fun m!1163611 () Bool)

(assert (=> b!950432 m!1163611))

(push 1)

(assert (not b!950436))

(assert tp_is_empty!4879)

(assert (not start!84672))

(assert (not b!950432))

(assert (not b!950429))

(assert (not b!950430))

(assert (not b!950435))

(assert (not b!950434))

(assert (not b!950431))

(assert (not b!950433))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!283757 () Bool)

(assert (=> d!283757 (= (isEmpty!6099 (_1!6391 lt!344505)) (is-Nil!9832 (_1!6391 lt!344505)))))

(assert (=> b!950436 d!283757))

(declare-fun d!283759 () Bool)

(assert (=> d!283759 (= (get!3305 lt!344508) (v!19623 lt!344508))))

(assert (=> b!950436 d!283759))

(declare-fun b!950512 () Bool)

(declare-fun res!431962 () Bool)

(declare-fun e!615365 () Bool)

(assert (=> b!950512 (=> res!431962 e!615365)))

(assert (=> b!950512 (= res!431962 (not (is-ElementMatch!2618 (regTwo!5748 r!15766))))))

(declare-fun e!615363 () Bool)

(assert (=> b!950512 (= e!615363 e!615365)))

(declare-fun b!950513 () Bool)

(declare-fun e!615367 () Bool)

(declare-fun lt!344530 () Bool)

(declare-fun call!59612 () Bool)

(assert (=> b!950513 (= e!615367 (= lt!344530 call!59612))))

(declare-fun bm!59607 () Bool)

(assert (=> bm!59607 (= call!59612 (isEmpty!6099 (_2!6391 lt!344505)))))

(declare-fun b!950514 () Bool)

(declare-fun e!615368 () Bool)

(declare-fun head!1735 (List!9848) C!5806)

(assert (=> b!950514 (= e!615368 (not (= (head!1735 (_2!6391 lt!344505)) (c!154773 (regTwo!5748 r!15766)))))))

(declare-fun d!283761 () Bool)

(assert (=> d!283761 e!615367))

(declare-fun c!154781 () Bool)

(assert (=> d!283761 (= c!154781 (is-EmptyExpr!2618 (regTwo!5748 r!15766)))))

(declare-fun e!615362 () Bool)

(assert (=> d!283761 (= lt!344530 e!615362)))

(declare-fun c!154782 () Bool)

(assert (=> d!283761 (= c!154782 (isEmpty!6099 (_2!6391 lt!344505)))))

(assert (=> d!283761 (validRegex!1087 (regTwo!5748 r!15766))))

(assert (=> d!283761 (= (matchR!1156 (regTwo!5748 r!15766) (_2!6391 lt!344505)) lt!344530)))

(declare-fun b!950515 () Bool)

(declare-fun res!431955 () Bool)

(assert (=> b!950515 (=> res!431955 e!615365)))

(declare-fun e!615366 () Bool)

(assert (=> b!950515 (= res!431955 e!615366)))

(declare-fun res!431957 () Bool)

(assert (=> b!950515 (=> (not res!431957) (not e!615366))))

(assert (=> b!950515 (= res!431957 lt!344530)))

(declare-fun b!950516 () Bool)

(declare-fun e!615364 () Bool)

(assert (=> b!950516 (= e!615364 e!615368)))

(declare-fun res!431958 () Bool)

(assert (=> b!950516 (=> res!431958 e!615368)))

(assert (=> b!950516 (= res!431958 call!59612)))

(declare-fun b!950517 () Bool)

(assert (=> b!950517 (= e!615367 e!615363)))

(declare-fun c!154783 () Bool)

(assert (=> b!950517 (= c!154783 (is-EmptyLang!2618 (regTwo!5748 r!15766)))))

(declare-fun b!950518 () Bool)

(assert (=> b!950518 (= e!615365 e!615364)))

(declare-fun res!431960 () Bool)

(assert (=> b!950518 (=> (not res!431960) (not e!615364))))

(assert (=> b!950518 (= res!431960 (not lt!344530))))

(declare-fun b!950519 () Bool)

(assert (=> b!950519 (= e!615366 (= (head!1735 (_2!6391 lt!344505)) (c!154773 (regTwo!5748 r!15766))))))

(declare-fun b!950520 () Bool)

(assert (=> b!950520 (= e!615363 (not lt!344530))))

(declare-fun b!950521 () Bool)

(declare-fun derivativeStep!582 (Regex!2618 C!5806) Regex!2618)

(declare-fun tail!1297 (List!9848) List!9848)

(assert (=> b!950521 (= e!615362 (matchR!1156 (derivativeStep!582 (regTwo!5748 r!15766) (head!1735 (_2!6391 lt!344505))) (tail!1297 (_2!6391 lt!344505))))))

(declare-fun b!950522 () Bool)

(declare-fun res!431956 () Bool)

(assert (=> b!950522 (=> (not res!431956) (not e!615366))))

(assert (=> b!950522 (= res!431956 (isEmpty!6099 (tail!1297 (_2!6391 lt!344505))))))

(declare-fun b!950523 () Bool)

(declare-fun res!431959 () Bool)

(assert (=> b!950523 (=> res!431959 e!615368)))

(assert (=> b!950523 (= res!431959 (not (isEmpty!6099 (tail!1297 (_2!6391 lt!344505)))))))

(declare-fun b!950524 () Bool)

(declare-fun nullable!773 (Regex!2618) Bool)

(assert (=> b!950524 (= e!615362 (nullable!773 (regTwo!5748 r!15766)))))

(declare-fun b!950525 () Bool)

(declare-fun res!431961 () Bool)

(assert (=> b!950525 (=> (not res!431961) (not e!615366))))

(assert (=> b!950525 (= res!431961 (not call!59612))))

(assert (= (and d!283761 c!154782) b!950524))

(assert (= (and d!283761 (not c!154782)) b!950521))

(assert (= (and d!283761 c!154781) b!950513))

(assert (= (and d!283761 (not c!154781)) b!950517))

(assert (= (and b!950517 c!154783) b!950520))

(assert (= (and b!950517 (not c!154783)) b!950512))

(assert (= (and b!950512 (not res!431962)) b!950515))

(assert (= (and b!950515 res!431957) b!950525))

(assert (= (and b!950525 res!431961) b!950522))

(assert (= (and b!950522 res!431956) b!950519))

(assert (= (and b!950515 (not res!431955)) b!950518))

(assert (= (and b!950518 res!431960) b!950516))

(assert (= (and b!950516 (not res!431958)) b!950523))

(assert (= (and b!950523 (not res!431959)) b!950514))

(assert (= (or b!950513 b!950516 b!950525) bm!59607))

(declare-fun m!1163641 () Bool)

(assert (=> b!950524 m!1163641))

(declare-fun m!1163643 () Bool)

(assert (=> b!950523 m!1163643))

(assert (=> b!950523 m!1163643))

(declare-fun m!1163645 () Bool)

(assert (=> b!950523 m!1163645))

(declare-fun m!1163647 () Bool)

(assert (=> bm!59607 m!1163647))

(assert (=> b!950522 m!1163643))

(assert (=> b!950522 m!1163643))

(assert (=> b!950522 m!1163645))

(declare-fun m!1163649 () Bool)

(assert (=> b!950521 m!1163649))

(assert (=> b!950521 m!1163649))

(declare-fun m!1163651 () Bool)

(assert (=> b!950521 m!1163651))

(assert (=> b!950521 m!1163643))

(assert (=> b!950521 m!1163651))

(assert (=> b!950521 m!1163643))

(declare-fun m!1163653 () Bool)

(assert (=> b!950521 m!1163653))

(assert (=> d!283761 m!1163647))

(declare-fun m!1163655 () Bool)

(assert (=> d!283761 m!1163655))

(assert (=> b!950519 m!1163649))

(assert (=> b!950514 m!1163649))

(assert (=> b!950429 d!283761))

(declare-fun bm!59614 () Bool)

(declare-fun call!59619 () Bool)

(declare-fun call!59621 () Bool)

(assert (=> bm!59614 (= call!59619 call!59621)))

(declare-fun d!283763 () Bool)

(declare-fun res!431976 () Bool)

(declare-fun e!615389 () Bool)

(assert (=> d!283763 (=> res!431976 e!615389)))

(assert (=> d!283763 (= res!431976 (is-ElementMatch!2618 r!15766))))

(assert (=> d!283763 (= (validRegex!1087 r!15766) e!615389)))

(declare-fun b!950544 () Bool)

(declare-fun e!615384 () Bool)

(assert (=> b!950544 (= e!615384 call!59621)))

(declare-fun b!950545 () Bool)

(declare-fun e!615387 () Bool)

(assert (=> b!950545 (= e!615387 call!59619)))

(declare-fun b!950546 () Bool)

(declare-fun e!615383 () Bool)

(assert (=> b!950546 (= e!615383 e!615384)))

(declare-fun res!431974 () Bool)

(assert (=> b!950546 (= res!431974 (not (nullable!773 (reg!2947 r!15766))))))

(assert (=> b!950546 (=> (not res!431974) (not e!615384))))

(declare-fun b!950547 () Bool)

(declare-fun e!615388 () Bool)

(declare-fun e!615385 () Bool)

(assert (=> b!950547 (= e!615388 e!615385)))

(declare-fun res!431975 () Bool)

(assert (=> b!950547 (=> (not res!431975) (not e!615385))))

(declare-fun call!59620 () Bool)

(assert (=> b!950547 (= res!431975 call!59620)))

(declare-fun bm!59615 () Bool)

(declare-fun c!154788 () Bool)

(assert (=> bm!59615 (= call!59620 (validRegex!1087 (ite c!154788 (regOne!5749 r!15766) (regOne!5748 r!15766))))))

(declare-fun c!154789 () Bool)

(declare-fun bm!59616 () Bool)

(assert (=> bm!59616 (= call!59621 (validRegex!1087 (ite c!154789 (reg!2947 r!15766) (ite c!154788 (regTwo!5749 r!15766) (regTwo!5748 r!15766)))))))

(declare-fun b!950548 () Bool)

(declare-fun e!615386 () Bool)

(assert (=> b!950548 (= e!615383 e!615386)))

(assert (=> b!950548 (= c!154788 (is-Union!2618 r!15766))))

(declare-fun b!950549 () Bool)

(assert (=> b!950549 (= e!615385 call!59619)))

(declare-fun b!950550 () Bool)

(assert (=> b!950550 (= e!615389 e!615383)))

(assert (=> b!950550 (= c!154789 (is-Star!2618 r!15766))))

(declare-fun b!950551 () Bool)

(declare-fun res!431973 () Bool)

(assert (=> b!950551 (=> (not res!431973) (not e!615387))))

(assert (=> b!950551 (= res!431973 call!59620)))

(assert (=> b!950551 (= e!615386 e!615387)))

(declare-fun b!950552 () Bool)

(declare-fun res!431977 () Bool)

(assert (=> b!950552 (=> res!431977 e!615388)))

(assert (=> b!950552 (= res!431977 (not (is-Concat!4451 r!15766)))))

(assert (=> b!950552 (= e!615386 e!615388)))

(assert (= (and d!283763 (not res!431976)) b!950550))

(assert (= (and b!950550 c!154789) b!950546))

(assert (= (and b!950550 (not c!154789)) b!950548))

(assert (= (and b!950546 res!431974) b!950544))

(assert (= (and b!950548 c!154788) b!950551))

(assert (= (and b!950548 (not c!154788)) b!950552))

(assert (= (and b!950551 res!431973) b!950545))

(assert (= (and b!950552 (not res!431977)) b!950547))

(assert (= (and b!950547 res!431975) b!950549))

(assert (= (or b!950545 b!950549) bm!59614))

(assert (= (or b!950551 b!950547) bm!59615))

(assert (= (or b!950544 bm!59614) bm!59616))

(declare-fun m!1163659 () Bool)

(assert (=> b!950546 m!1163659))

(declare-fun m!1163661 () Bool)

(assert (=> bm!59615 m!1163661))

(declare-fun m!1163663 () Bool)

(assert (=> bm!59616 m!1163663))

(assert (=> start!84672 d!283763))

(declare-fun bs!239997 () Bool)

(declare-fun b!950589 () Bool)

(assert (= bs!239997 (and b!950589 b!950432)))

(declare-fun lambda!32625 () Int)

(assert (=> bs!239997 (not (= lambda!32625 lambda!32611))))

(assert (=> bs!239997 (not (= lambda!32625 lambda!32612))))

(assert (=> b!950589 true))

(assert (=> b!950589 true))

(declare-fun bs!239998 () Bool)

(declare-fun b!950591 () Bool)

(assert (= bs!239998 (and b!950591 b!950432)))

(declare-fun lambda!32626 () Int)

(assert (=> bs!239998 (not (= lambda!32626 lambda!32611))))

(assert (=> bs!239998 (= (= (regOne!5748 r!15766) EmptyExpr!2618) (= lambda!32626 lambda!32612))))

(declare-fun bs!239999 () Bool)

(assert (= bs!239999 (and b!950591 b!950589)))

(assert (=> bs!239999 (not (= lambda!32626 lambda!32625))))

(assert (=> b!950591 true))

(assert (=> b!950591 true))

(declare-fun b!950585 () Bool)

(declare-fun c!154798 () Bool)

(assert (=> b!950585 (= c!154798 (is-ElementMatch!2618 r!15766))))

(declare-fun e!615409 () Bool)

(declare-fun e!615411 () Bool)

(assert (=> b!950585 (= e!615409 e!615411)))

(declare-fun b!950586 () Bool)

(assert (=> b!950586 (= e!615411 (= s!10566 (Cons!9832 (c!154773 r!15766) Nil!9832)))))

(declare-fun b!950587 () Bool)

(declare-fun e!615410 () Bool)

(declare-fun e!615413 () Bool)

(assert (=> b!950587 (= e!615410 e!615413)))

(declare-fun c!154799 () Bool)

(assert (=> b!950587 (= c!154799 (is-Star!2618 r!15766))))

(declare-fun d!283771 () Bool)

(declare-fun c!154801 () Bool)

(assert (=> d!283771 (= c!154801 (is-EmptyExpr!2618 r!15766))))

(declare-fun e!615414 () Bool)

(assert (=> d!283771 (= (matchRSpec!419 r!15766 s!10566) e!615414)))

(declare-fun b!950588 () Bool)

(declare-fun res!431994 () Bool)

(declare-fun e!615408 () Bool)

(assert (=> b!950588 (=> res!431994 e!615408)))

(declare-fun call!59627 () Bool)

(assert (=> b!950588 (= res!431994 call!59627)))

(assert (=> b!950588 (= e!615413 e!615408)))

(declare-fun call!59626 () Bool)

(assert (=> b!950589 (= e!615408 call!59626)))

(declare-fun b!950590 () Bool)

(declare-fun c!154800 () Bool)

(assert (=> b!950590 (= c!154800 (is-Union!2618 r!15766))))

(assert (=> b!950590 (= e!615411 e!615410)))

(declare-fun bm!59621 () Bool)

(assert (=> bm!59621 (= call!59626 (Exists!369 (ite c!154799 lambda!32625 lambda!32626)))))

(declare-fun bm!59622 () Bool)

(assert (=> bm!59622 (= call!59627 (isEmpty!6099 s!10566))))

(assert (=> b!950591 (= e!615413 call!59626)))

(declare-fun b!950592 () Bool)

(declare-fun e!615412 () Bool)

(assert (=> b!950592 (= e!615410 e!615412)))

(declare-fun res!431996 () Bool)

(assert (=> b!950592 (= res!431996 (matchRSpec!419 (regOne!5749 r!15766) s!10566))))

(assert (=> b!950592 (=> res!431996 e!615412)))

(declare-fun b!950593 () Bool)

(assert (=> b!950593 (= e!615414 e!615409)))

(declare-fun res!431995 () Bool)

(assert (=> b!950593 (= res!431995 (not (is-EmptyLang!2618 r!15766)))))

(assert (=> b!950593 (=> (not res!431995) (not e!615409))))

(declare-fun b!950594 () Bool)

(assert (=> b!950594 (= e!615412 (matchRSpec!419 (regTwo!5749 r!15766) s!10566))))

(declare-fun b!950595 () Bool)

(assert (=> b!950595 (= e!615414 call!59627)))

(assert (= (and d!283771 c!154801) b!950595))

(assert (= (and d!283771 (not c!154801)) b!950593))

(assert (= (and b!950593 res!431995) b!950585))

(assert (= (and b!950585 c!154798) b!950586))

(assert (= (and b!950585 (not c!154798)) b!950590))

(assert (= (and b!950590 c!154800) b!950592))

(assert (= (and b!950590 (not c!154800)) b!950587))

(assert (= (and b!950592 (not res!431996)) b!950594))

(assert (= (and b!950587 c!154799) b!950588))

(assert (= (and b!950587 (not c!154799)) b!950591))

(assert (= (and b!950588 (not res!431994)) b!950589))

(assert (= (or b!950589 b!950591) bm!59621))

(assert (= (or b!950595 b!950588) bm!59622))

(declare-fun m!1163665 () Bool)

(assert (=> bm!59621 m!1163665))

(assert (=> bm!59622 m!1163603))

(declare-fun m!1163667 () Bool)

(assert (=> b!950592 m!1163667))

(declare-fun m!1163669 () Bool)

(assert (=> b!950594 m!1163669))

(assert (=> b!950434 d!283771))

(declare-fun b!950596 () Bool)

(declare-fun res!432004 () Bool)

(declare-fun e!615418 () Bool)

(assert (=> b!950596 (=> res!432004 e!615418)))

(assert (=> b!950596 (= res!432004 (not (is-ElementMatch!2618 r!15766)))))

(declare-fun e!615416 () Bool)

(assert (=> b!950596 (= e!615416 e!615418)))

(declare-fun b!950597 () Bool)

(declare-fun e!615420 () Bool)

(declare-fun lt!344531 () Bool)

(declare-fun call!59628 () Bool)

(assert (=> b!950597 (= e!615420 (= lt!344531 call!59628))))

(declare-fun bm!59623 () Bool)

(assert (=> bm!59623 (= call!59628 (isEmpty!6099 s!10566))))

(declare-fun b!950598 () Bool)

(declare-fun e!615421 () Bool)

(assert (=> b!950598 (= e!615421 (not (= (head!1735 s!10566) (c!154773 r!15766))))))

(declare-fun d!283773 () Bool)

(assert (=> d!283773 e!615420))

(declare-fun c!154802 () Bool)

(assert (=> d!283773 (= c!154802 (is-EmptyExpr!2618 r!15766))))

(declare-fun e!615415 () Bool)

(assert (=> d!283773 (= lt!344531 e!615415)))

(declare-fun c!154803 () Bool)

(assert (=> d!283773 (= c!154803 (isEmpty!6099 s!10566))))

(assert (=> d!283773 (validRegex!1087 r!15766)))

(assert (=> d!283773 (= (matchR!1156 r!15766 s!10566) lt!344531)))

(declare-fun b!950599 () Bool)

(declare-fun res!431997 () Bool)

(assert (=> b!950599 (=> res!431997 e!615418)))

(declare-fun e!615419 () Bool)

(assert (=> b!950599 (= res!431997 e!615419)))

(declare-fun res!431999 () Bool)

(assert (=> b!950599 (=> (not res!431999) (not e!615419))))

(assert (=> b!950599 (= res!431999 lt!344531)))

(declare-fun b!950600 () Bool)

(declare-fun e!615417 () Bool)

(assert (=> b!950600 (= e!615417 e!615421)))

(declare-fun res!432000 () Bool)

(assert (=> b!950600 (=> res!432000 e!615421)))

(assert (=> b!950600 (= res!432000 call!59628)))

(declare-fun b!950601 () Bool)

(assert (=> b!950601 (= e!615420 e!615416)))

(declare-fun c!154804 () Bool)

(assert (=> b!950601 (= c!154804 (is-EmptyLang!2618 r!15766))))

(declare-fun b!950602 () Bool)

(assert (=> b!950602 (= e!615418 e!615417)))

(declare-fun res!432002 () Bool)

(assert (=> b!950602 (=> (not res!432002) (not e!615417))))

(assert (=> b!950602 (= res!432002 (not lt!344531))))

(declare-fun b!950603 () Bool)

(assert (=> b!950603 (= e!615419 (= (head!1735 s!10566) (c!154773 r!15766)))))

(declare-fun b!950604 () Bool)

(assert (=> b!950604 (= e!615416 (not lt!344531))))

(declare-fun b!950605 () Bool)

(assert (=> b!950605 (= e!615415 (matchR!1156 (derivativeStep!582 r!15766 (head!1735 s!10566)) (tail!1297 s!10566)))))

(declare-fun b!950606 () Bool)

(declare-fun res!431998 () Bool)

(assert (=> b!950606 (=> (not res!431998) (not e!615419))))

(assert (=> b!950606 (= res!431998 (isEmpty!6099 (tail!1297 s!10566)))))

(declare-fun b!950607 () Bool)

(declare-fun res!432001 () Bool)

(assert (=> b!950607 (=> res!432001 e!615421)))

(assert (=> b!950607 (= res!432001 (not (isEmpty!6099 (tail!1297 s!10566))))))

(declare-fun b!950608 () Bool)

(assert (=> b!950608 (= e!615415 (nullable!773 r!15766))))

(declare-fun b!950609 () Bool)

(declare-fun res!432003 () Bool)

(assert (=> b!950609 (=> (not res!432003) (not e!615419))))

(assert (=> b!950609 (= res!432003 (not call!59628))))

(assert (= (and d!283773 c!154803) b!950608))

(assert (= (and d!283773 (not c!154803)) b!950605))

(assert (= (and d!283773 c!154802) b!950597))

(assert (= (and d!283773 (not c!154802)) b!950601))

(assert (= (and b!950601 c!154804) b!950604))

(assert (= (and b!950601 (not c!154804)) b!950596))

(assert (= (and b!950596 (not res!432004)) b!950599))

(assert (= (and b!950599 res!431999) b!950609))

(assert (= (and b!950609 res!432003) b!950606))

(assert (= (and b!950606 res!431998) b!950603))

(assert (= (and b!950599 (not res!431997)) b!950602))

(assert (= (and b!950602 res!432002) b!950600))

(assert (= (and b!950600 (not res!432000)) b!950607))

(assert (= (and b!950607 (not res!432001)) b!950598))

(assert (= (or b!950597 b!950600 b!950609) bm!59623))

(declare-fun m!1163671 () Bool)

(assert (=> b!950608 m!1163671))

(declare-fun m!1163673 () Bool)

(assert (=> b!950607 m!1163673))

(assert (=> b!950607 m!1163673))

(declare-fun m!1163675 () Bool)

(assert (=> b!950607 m!1163675))

(assert (=> bm!59623 m!1163603))

(assert (=> b!950606 m!1163673))

(assert (=> b!950606 m!1163673))

(assert (=> b!950606 m!1163675))

(declare-fun m!1163677 () Bool)

(assert (=> b!950605 m!1163677))

(assert (=> b!950605 m!1163677))

(declare-fun m!1163679 () Bool)

(assert (=> b!950605 m!1163679))

(assert (=> b!950605 m!1163673))

(assert (=> b!950605 m!1163679))

(assert (=> b!950605 m!1163673))

(declare-fun m!1163681 () Bool)

(assert (=> b!950605 m!1163681))

(assert (=> d!283773 m!1163603))

(assert (=> d!283773 m!1163591))

(assert (=> b!950603 m!1163677))

(assert (=> b!950598 m!1163677))

(assert (=> b!950434 d!283773))

(declare-fun d!283775 () Bool)

(assert (=> d!283775 (= (matchR!1156 r!15766 s!10566) (matchRSpec!419 r!15766 s!10566))))

(declare-fun lt!344540 () Unit!14879)

(declare-fun choose!5922 (Regex!2618 List!9848) Unit!14879)

(assert (=> d!283775 (= lt!344540 (choose!5922 r!15766 s!10566))))

(assert (=> d!283775 (validRegex!1087 r!15766)))

(assert (=> d!283775 (= (mainMatchTheorem!419 r!15766 s!10566) lt!344540)))

(declare-fun bs!240000 () Bool)

(assert (= bs!240000 d!283775))

(assert (=> bs!240000 m!1163587))

(assert (=> bs!240000 m!1163585))

(declare-fun m!1163683 () Bool)

(assert (=> bs!240000 m!1163683))

(assert (=> bs!240000 m!1163591))

(assert (=> b!950434 d!283775))

(declare-fun d!283777 () Bool)

(declare-fun choose!5923 (Int) Bool)

(assert (=> d!283777 (= (Exists!369 lambda!32612) (choose!5923 lambda!32612))))

(declare-fun bs!240001 () Bool)

(assert (= bs!240001 d!283777))

(declare-fun m!1163685 () Bool)

(assert (=> bs!240001 m!1163685))

(assert (=> b!950432 d!283777))

(declare-fun d!283779 () Bool)

(assert (=> d!283779 (= (isEmpty!6099 s!10566) (is-Nil!9832 s!10566))))

(assert (=> b!950432 d!283779))

(declare-fun bs!240002 () Bool)

(declare-fun d!283781 () Bool)

(assert (= bs!240002 (and d!283781 b!950432)))

(declare-fun lambda!32629 () Int)

(assert (=> bs!240002 (= lambda!32629 lambda!32611)))

(assert (=> bs!240002 (not (= lambda!32629 lambda!32612))))

(declare-fun bs!240003 () Bool)

(assert (= bs!240003 (and d!283781 b!950589)))

(assert (=> bs!240003 (not (= lambda!32629 lambda!32625))))

(declare-fun bs!240004 () Bool)

(assert (= bs!240004 (and d!283781 b!950591)))

(assert (=> bs!240004 (not (= lambda!32629 lambda!32626))))

(assert (=> d!283781 true))

(assert (=> d!283781 true))

(assert (=> d!283781 true))

(assert (=> d!283781 (= (isDefined!1849 (findConcatSeparation!313 EmptyExpr!2618 (regTwo!5748 r!15766) Nil!9832 s!10566 s!10566)) (Exists!369 lambda!32629))))

(declare-fun lt!344543 () Unit!14879)

(declare-fun choose!5924 (Regex!2618 Regex!2618 List!9848) Unit!14879)

(assert (=> d!283781 (= lt!344543 (choose!5924 EmptyExpr!2618 (regTwo!5748 r!15766) s!10566))))

(assert (=> d!283781 (validRegex!1087 EmptyExpr!2618)))

(assert (=> d!283781 (= (lemmaFindConcatSeparationEquivalentToExists!313 EmptyExpr!2618 (regTwo!5748 r!15766) s!10566) lt!344543)))

(declare-fun bs!240005 () Bool)

(assert (= bs!240005 d!283781))

(declare-fun m!1163687 () Bool)

(assert (=> bs!240005 m!1163687))

(assert (=> bs!240005 m!1163605))

(assert (=> bs!240005 m!1163605))

(declare-fun m!1163689 () Bool)

(assert (=> bs!240005 m!1163689))

(declare-fun m!1163691 () Bool)

(assert (=> bs!240005 m!1163691))

(declare-fun m!1163693 () Bool)

(assert (=> bs!240005 m!1163693))

(assert (=> b!950432 d!283781))

(declare-fun bs!240007 () Bool)

(declare-fun d!283783 () Bool)

(assert (= bs!240007 (and d!283783 b!950589)))

(declare-fun lambda!32634 () Int)

(assert (=> bs!240007 (not (= lambda!32634 lambda!32625))))

(declare-fun bs!240008 () Bool)

(assert (= bs!240008 (and d!283783 d!283781)))

(assert (=> bs!240008 (= lambda!32634 lambda!32629)))

(declare-fun bs!240009 () Bool)

(assert (= bs!240009 (and d!283783 b!950432)))

(assert (=> bs!240009 (not (= lambda!32634 lambda!32612))))

(declare-fun bs!240010 () Bool)

(assert (= bs!240010 (and d!283783 b!950591)))

(assert (=> bs!240010 (not (= lambda!32634 lambda!32626))))

(assert (=> bs!240009 (= lambda!32634 lambda!32611)))

(assert (=> d!283783 true))

(assert (=> d!283783 true))

(assert (=> d!283783 true))

(declare-fun lambda!32635 () Int)

(assert (=> bs!240007 (not (= lambda!32635 lambda!32625))))

(assert (=> bs!240008 (not (= lambda!32635 lambda!32629))))

(assert (=> bs!240009 (= lambda!32635 lambda!32612)))

(declare-fun bs!240011 () Bool)

(assert (= bs!240011 d!283783))

(assert (=> bs!240011 (not (= lambda!32635 lambda!32634))))

(assert (=> bs!240010 (= (= EmptyExpr!2618 (regOne!5748 r!15766)) (= lambda!32635 lambda!32626))))

(assert (=> bs!240009 (not (= lambda!32635 lambda!32611))))

(assert (=> d!283783 true))

(assert (=> d!283783 true))

(assert (=> d!283783 true))

(assert (=> d!283783 (= (Exists!369 lambda!32634) (Exists!369 lambda!32635))))

(declare-fun lt!344549 () Unit!14879)

(declare-fun choose!5925 (Regex!2618 Regex!2618 List!9848) Unit!14879)

(assert (=> d!283783 (= lt!344549 (choose!5925 EmptyExpr!2618 (regTwo!5748 r!15766) s!10566))))

(assert (=> d!283783 (validRegex!1087 EmptyExpr!2618)))

(assert (=> d!283783 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!189 EmptyExpr!2618 (regTwo!5748 r!15766) s!10566) lt!344549)))

(declare-fun m!1163721 () Bool)

(assert (=> bs!240011 m!1163721))

(declare-fun m!1163723 () Bool)

(assert (=> bs!240011 m!1163723))

(declare-fun m!1163725 () Bool)

(assert (=> bs!240011 m!1163725))

(assert (=> bs!240011 m!1163691))

(assert (=> b!950432 d!283783))

(declare-fun d!283789 () Bool)

(declare-fun isEmpty!6101 (Option!2207) Bool)

(assert (=> d!283789 (= (isDefined!1849 lt!344508) (not (isEmpty!6101 lt!344508)))))

(declare-fun bs!240012 () Bool)

(assert (= bs!240012 d!283789))

(declare-fun m!1163727 () Bool)

(assert (=> bs!240012 m!1163727))

(assert (=> b!950432 d!283789))

(declare-fun d!283791 () Bool)

(assert (=> d!283791 (= (Exists!369 lambda!32611) (choose!5923 lambda!32611))))

(declare-fun bs!240013 () Bool)

(assert (= bs!240013 d!283791))

(declare-fun m!1163729 () Bool)

(assert (=> bs!240013 m!1163729))

(assert (=> b!950432 d!283791))

(declare-fun b!950671 () Bool)

(declare-fun lt!344560 () Unit!14879)

(declare-fun lt!344561 () Unit!14879)

(assert (=> b!950671 (= lt!344560 lt!344561)))

(declare-fun ++!2628 (List!9848 List!9848) List!9848)

(assert (=> b!950671 (= (++!2628 (++!2628 Nil!9832 (Cons!9832 (h!15233 s!10566) Nil!9832)) (t!100894 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!237 (List!9848 C!5806 List!9848 List!9848) Unit!14879)

(assert (=> b!950671 (= lt!344561 (lemmaMoveElementToOtherListKeepsConcatEq!237 Nil!9832 (h!15233 s!10566) (t!100894 s!10566) s!10566))))

(declare-fun e!615458 () Option!2207)

(assert (=> b!950671 (= e!615458 (findConcatSeparation!313 EmptyExpr!2618 (regTwo!5748 r!15766) (++!2628 Nil!9832 (Cons!9832 (h!15233 s!10566) Nil!9832)) (t!100894 s!10566) s!10566))))

(declare-fun b!950672 () Bool)

(declare-fun res!432046 () Bool)

(declare-fun e!615455 () Bool)

(assert (=> b!950672 (=> (not res!432046) (not e!615455))))

(declare-fun lt!344559 () Option!2207)

(assert (=> b!950672 (= res!432046 (matchR!1156 (regTwo!5748 r!15766) (_2!6391 (get!3305 lt!344559))))))

(declare-fun b!950673 () Bool)

(declare-fun res!432048 () Bool)

(assert (=> b!950673 (=> (not res!432048) (not e!615455))))

(assert (=> b!950673 (= res!432048 (matchR!1156 EmptyExpr!2618 (_1!6391 (get!3305 lt!344559))))))

(declare-fun d!283793 () Bool)

(declare-fun e!615457 () Bool)

(assert (=> d!283793 e!615457))

(declare-fun res!432050 () Bool)

(assert (=> d!283793 (=> res!432050 e!615457)))

(assert (=> d!283793 (= res!432050 e!615455)))

(declare-fun res!432047 () Bool)

(assert (=> d!283793 (=> (not res!432047) (not e!615455))))

(assert (=> d!283793 (= res!432047 (isDefined!1849 lt!344559))))

(declare-fun e!615456 () Option!2207)

(assert (=> d!283793 (= lt!344559 e!615456)))

(declare-fun c!154816 () Bool)

(declare-fun e!615459 () Bool)

(assert (=> d!283793 (= c!154816 e!615459)))

(declare-fun res!432049 () Bool)

(assert (=> d!283793 (=> (not res!432049) (not e!615459))))

(assert (=> d!283793 (= res!432049 (matchR!1156 EmptyExpr!2618 Nil!9832))))

(assert (=> d!283793 (validRegex!1087 EmptyExpr!2618)))

(assert (=> d!283793 (= (findConcatSeparation!313 EmptyExpr!2618 (regTwo!5748 r!15766) Nil!9832 s!10566 s!10566) lt!344559)))

(declare-fun b!950674 () Bool)

(assert (=> b!950674 (= e!615459 (matchR!1156 (regTwo!5748 r!15766) s!10566))))

(declare-fun b!950675 () Bool)

(assert (=> b!950675 (= e!615456 e!615458)))

(declare-fun c!154815 () Bool)

(assert (=> b!950675 (= c!154815 (is-Nil!9832 s!10566))))

(declare-fun b!950676 () Bool)

(assert (=> b!950676 (= e!615458 None!2206)))

(declare-fun b!950677 () Bool)

(assert (=> b!950677 (= e!615455 (= (++!2628 (_1!6391 (get!3305 lt!344559)) (_2!6391 (get!3305 lt!344559))) s!10566))))

(declare-fun b!950678 () Bool)

(assert (=> b!950678 (= e!615457 (not (isDefined!1849 lt!344559)))))

(declare-fun b!950679 () Bool)

(assert (=> b!950679 (= e!615456 (Some!2206 (tuple2!11131 Nil!9832 s!10566)))))

(assert (= (and d!283793 res!432049) b!950674))

(assert (= (and d!283793 c!154816) b!950679))

(assert (= (and d!283793 (not c!154816)) b!950675))

(assert (= (and b!950675 c!154815) b!950676))

(assert (= (and b!950675 (not c!154815)) b!950671))

(assert (= (and d!283793 res!432047) b!950673))

(assert (= (and b!950673 res!432048) b!950672))

(assert (= (and b!950672 res!432046) b!950677))

(assert (= (and d!283793 (not res!432050)) b!950678))

(declare-fun m!1163739 () Bool)

(assert (=> b!950672 m!1163739))

(declare-fun m!1163741 () Bool)

(assert (=> b!950672 m!1163741))

(declare-fun m!1163743 () Bool)

(assert (=> b!950678 m!1163743))

(assert (=> b!950677 m!1163739))

(declare-fun m!1163745 () Bool)

(assert (=> b!950677 m!1163745))

(declare-fun m!1163747 () Bool)

(assert (=> b!950671 m!1163747))

(assert (=> b!950671 m!1163747))

(declare-fun m!1163749 () Bool)

(assert (=> b!950671 m!1163749))

(declare-fun m!1163751 () Bool)

(assert (=> b!950671 m!1163751))

(assert (=> b!950671 m!1163747))

(declare-fun m!1163753 () Bool)

(assert (=> b!950671 m!1163753))

(assert (=> d!283793 m!1163743))

(declare-fun m!1163755 () Bool)

(assert (=> d!283793 m!1163755))

(assert (=> d!283793 m!1163691))

(assert (=> b!950673 m!1163739))

(declare-fun m!1163757 () Bool)

(assert (=> b!950673 m!1163757))

(declare-fun m!1163759 () Bool)

(assert (=> b!950674 m!1163759))

(assert (=> b!950432 d!283793))

(declare-fun b!950684 () Bool)

(declare-fun e!615462 () Bool)

(declare-fun tp!292979 () Bool)

(assert (=> b!950684 (= e!615462 (and tp_is_empty!4879 tp!292979))))

(assert (=> b!950431 (= tp!292958 e!615462)))

(assert (= (and b!950431 (is-Cons!9832 (t!100894 s!10566))) b!950684))

(declare-fun b!950697 () Bool)

(declare-fun e!615465 () Bool)

(declare-fun tp!292992 () Bool)

(assert (=> b!950697 (= e!615465 tp!292992)))

(declare-fun b!950695 () Bool)

(assert (=> b!950695 (= e!615465 tp_is_empty!4879)))

(declare-fun b!950696 () Bool)

(declare-fun tp!292991 () Bool)

(declare-fun tp!292994 () Bool)

(assert (=> b!950696 (= e!615465 (and tp!292991 tp!292994))))

(assert (=> b!950435 (= tp!292955 e!615465)))

(declare-fun b!950698 () Bool)

(declare-fun tp!292990 () Bool)

(declare-fun tp!292993 () Bool)

(assert (=> b!950698 (= e!615465 (and tp!292990 tp!292993))))

(assert (= (and b!950435 (is-ElementMatch!2618 (regOne!5749 r!15766))) b!950695))

(assert (= (and b!950435 (is-Concat!4451 (regOne!5749 r!15766))) b!950696))

(assert (= (and b!950435 (is-Star!2618 (regOne!5749 r!15766))) b!950697))

(assert (= (and b!950435 (is-Union!2618 (regOne!5749 r!15766))) b!950698))

(declare-fun b!950701 () Bool)

(declare-fun e!615466 () Bool)

(declare-fun tp!292997 () Bool)

(assert (=> b!950701 (= e!615466 tp!292997)))

(declare-fun b!950699 () Bool)

(assert (=> b!950699 (= e!615466 tp_is_empty!4879)))

(declare-fun b!950700 () Bool)

(declare-fun tp!292996 () Bool)

(declare-fun tp!292999 () Bool)

(assert (=> b!950700 (= e!615466 (and tp!292996 tp!292999))))

(assert (=> b!950435 (= tp!292953 e!615466)))

(declare-fun b!950702 () Bool)

(declare-fun tp!292995 () Bool)

(declare-fun tp!292998 () Bool)

(assert (=> b!950702 (= e!615466 (and tp!292995 tp!292998))))

(assert (= (and b!950435 (is-ElementMatch!2618 (regTwo!5749 r!15766))) b!950699))

(assert (= (and b!950435 (is-Concat!4451 (regTwo!5749 r!15766))) b!950700))

(assert (= (and b!950435 (is-Star!2618 (regTwo!5749 r!15766))) b!950701))

(assert (= (and b!950435 (is-Union!2618 (regTwo!5749 r!15766))) b!950702))

(declare-fun b!950705 () Bool)

(declare-fun e!615467 () Bool)

(declare-fun tp!293002 () Bool)

(assert (=> b!950705 (= e!615467 tp!293002)))

(declare-fun b!950703 () Bool)

(assert (=> b!950703 (= e!615467 tp_is_empty!4879)))

(declare-fun b!950704 () Bool)

(declare-fun tp!293001 () Bool)

(declare-fun tp!293004 () Bool)

(assert (=> b!950704 (= e!615467 (and tp!293001 tp!293004))))

(assert (=> b!950430 (= tp!292957 e!615467)))

(declare-fun b!950706 () Bool)

(declare-fun tp!293000 () Bool)

(declare-fun tp!293003 () Bool)

(assert (=> b!950706 (= e!615467 (and tp!293000 tp!293003))))

(assert (= (and b!950430 (is-ElementMatch!2618 (reg!2947 r!15766))) b!950703))

(assert (= (and b!950430 (is-Concat!4451 (reg!2947 r!15766))) b!950704))

(assert (= (and b!950430 (is-Star!2618 (reg!2947 r!15766))) b!950705))

(assert (= (and b!950430 (is-Union!2618 (reg!2947 r!15766))) b!950706))

(declare-fun b!950709 () Bool)

(declare-fun e!615468 () Bool)

(declare-fun tp!293007 () Bool)

(assert (=> b!950709 (= e!615468 tp!293007)))

(declare-fun b!950707 () Bool)

(assert (=> b!950707 (= e!615468 tp_is_empty!4879)))

(declare-fun b!950708 () Bool)

(declare-fun tp!293006 () Bool)

(declare-fun tp!293009 () Bool)

(assert (=> b!950708 (= e!615468 (and tp!293006 tp!293009))))

(assert (=> b!950433 (= tp!292956 e!615468)))

(declare-fun b!950710 () Bool)

(declare-fun tp!293005 () Bool)

(declare-fun tp!293008 () Bool)

(assert (=> b!950710 (= e!615468 (and tp!293005 tp!293008))))

(assert (= (and b!950433 (is-ElementMatch!2618 (regOne!5748 r!15766))) b!950707))

(assert (= (and b!950433 (is-Concat!4451 (regOne!5748 r!15766))) b!950708))

(assert (= (and b!950433 (is-Star!2618 (regOne!5748 r!15766))) b!950709))

(assert (= (and b!950433 (is-Union!2618 (regOne!5748 r!15766))) b!950710))

(declare-fun b!950713 () Bool)

(declare-fun e!615469 () Bool)

(declare-fun tp!293012 () Bool)

(assert (=> b!950713 (= e!615469 tp!293012)))

(declare-fun b!950711 () Bool)

(assert (=> b!950711 (= e!615469 tp_is_empty!4879)))

(declare-fun b!950712 () Bool)

(declare-fun tp!293011 () Bool)

(declare-fun tp!293014 () Bool)

(assert (=> b!950712 (= e!615469 (and tp!293011 tp!293014))))

(assert (=> b!950433 (= tp!292954 e!615469)))

(declare-fun b!950714 () Bool)

(declare-fun tp!293010 () Bool)

(declare-fun tp!293013 () Bool)

(assert (=> b!950714 (= e!615469 (and tp!293010 tp!293013))))

(assert (= (and b!950433 (is-ElementMatch!2618 (regTwo!5748 r!15766))) b!950711))

(assert (= (and b!950433 (is-Concat!4451 (regTwo!5748 r!15766))) b!950712))

(assert (= (and b!950433 (is-Star!2618 (regTwo!5748 r!15766))) b!950713))

(assert (= (and b!950433 (is-Union!2618 (regTwo!5748 r!15766))) b!950714))

(push 1)

(assert (not b!950519))

(assert (not d!283783))

(assert (not b!950709))

(assert (not b!950673))

(assert (not bm!59621))

(assert (not b!950521))

(assert (not d!283791))

(assert (not b!950697))

(assert (not b!950606))

(assert (not bm!59616))

(assert (not b!950603))

(assert (not bm!59622))

(assert (not d!283775))

(assert (not b!950594))

(assert (not b!950605))

(assert (not b!950704))

(assert (not b!950674))

(assert (not b!950608))

(assert (not b!950684))

(assert (not d!283777))

(assert tp_is_empty!4879)

(assert (not b!950672))

(assert (not b!950698))

(assert (not b!950702))

(assert (not b!950607))

(assert (not b!950701))

(assert (not b!950708))

(assert (not d!283789))

(assert (not d!283773))

(assert (not b!950546))

(assert (not b!950598))

(assert (not b!950706))

(assert (not d!283781))

(assert (not b!950712))

(assert (not d!283793))

(assert (not bm!59607))

(assert (not b!950714))

(assert (not b!950677))

(assert (not b!950710))

(assert (not b!950514))

(assert (not b!950678))

(assert (not b!950696))

(assert (not b!950705))

(assert (not b!950713))

(assert (not b!950523))

(assert (not b!950522))

(assert (not b!950700))

(assert (not d!283761))

(assert (not bm!59623))

(assert (not bm!59615))

(assert (not b!950592))

(assert (not b!950524))

(assert (not b!950671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

