; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728076 () Bool)

(assert start!728076)

(declare-fun b!7521357 () Bool)

(declare-fun e!4483656 () Bool)

(declare-fun tp!2184739 () Bool)

(declare-fun tp!2184736 () Bool)

(assert (=> b!7521357 (= e!4483656 (and tp!2184739 tp!2184736))))

(declare-fun b!7521358 () Bool)

(declare-fun res!3014920 () Bool)

(declare-fun e!4483657 () Bool)

(assert (=> b!7521358 (=> (not res!3014920) (not e!4483657))))

(declare-datatypes ((C!39884 0))(
  ( (C!39885 (val!30382 Int)) )
))
(declare-datatypes ((Regex!19779 0))(
  ( (ElementMatch!19779 (c!1389608 C!39884)) (Concat!28624 (regOne!40070 Regex!19779) (regTwo!40070 Regex!19779)) (EmptyExpr!19779) (Star!19779 (reg!20108 Regex!19779)) (EmptyLang!19779) (Union!19779 (regOne!40071 Regex!19779) (regTwo!40071 Regex!19779)) )
))
(declare-fun expr!41 () Regex!19779)

(declare-fun nullable!8613 (Regex!19779) Bool)

(assert (=> b!7521358 (= res!3014920 (nullable!8613 (regOne!40070 expr!41)))))

(declare-fun res!3014919 () Bool)

(assert (=> start!728076 (=> (not res!3014919) (not e!4483657))))

(declare-fun validRegex!10207 (Regex!19779) Bool)

(assert (=> start!728076 (= res!3014919 (validRegex!10207 expr!41))))

(assert (=> start!728076 e!4483657))

(assert (=> start!728076 e!4483656))

(declare-fun tp_is_empty!49913 () Bool)

(assert (=> start!728076 tp_is_empty!49913))

(declare-fun b!7521359 () Bool)

(declare-fun tp!2184738 () Bool)

(declare-fun tp!2184737 () Bool)

(assert (=> b!7521359 (= e!4483656 (and tp!2184738 tp!2184737))))

(declare-fun b!7521360 () Bool)

(assert (=> b!7521360 (= e!4483656 tp_is_empty!49913)))

(declare-fun b!7521361 () Bool)

(declare-fun tp!2184735 () Bool)

(assert (=> b!7521361 (= e!4483656 tp!2184735)))

(declare-fun b!7521362 () Bool)

(declare-fun res!3014918 () Bool)

(assert (=> b!7521362 (=> (not res!3014918) (not e!4483657))))

(declare-fun a!1106 () C!39884)

(get-info :version)

(assert (=> b!7521362 (= res!3014918 (and (or (not ((_ is ElementMatch!19779) expr!41)) (not (= (c!1389608 expr!41) a!1106))) (not ((_ is Union!19779) expr!41)) ((_ is Concat!28624) expr!41)))))

(declare-fun b!7521363 () Bool)

(assert (=> b!7521363 (= e!4483657 (not (validRegex!10207 (regOne!40070 expr!41))))))

(assert (= (and start!728076 res!3014919) b!7521362))

(assert (= (and b!7521362 res!3014918) b!7521358))

(assert (= (and b!7521358 res!3014920) b!7521363))

(assert (= (and start!728076 ((_ is ElementMatch!19779) expr!41)) b!7521360))

(assert (= (and start!728076 ((_ is Concat!28624) expr!41)) b!7521359))

(assert (= (and start!728076 ((_ is Star!19779) expr!41)) b!7521361))

(assert (= (and start!728076 ((_ is Union!19779) expr!41)) b!7521357))

(declare-fun m!8100348 () Bool)

(assert (=> b!7521358 m!8100348))

(declare-fun m!8100350 () Bool)

(assert (=> start!728076 m!8100350))

(declare-fun m!8100352 () Bool)

(assert (=> b!7521363 m!8100352))

(check-sat (not start!728076) (not b!7521361) (not b!7521357) (not b!7521358) (not b!7521359) (not b!7521363) tp_is_empty!49913)
(check-sat)
(get-model)

(declare-fun b!7521409 () Bool)

(declare-fun e!4483698 () Bool)

(declare-fun e!4483694 () Bool)

(assert (=> b!7521409 (= e!4483698 e!4483694)))

(declare-fun res!3014950 () Bool)

(assert (=> b!7521409 (=> (not res!3014950) (not e!4483694))))

(declare-fun call!689712 () Bool)

(assert (=> b!7521409 (= res!3014950 call!689712)))

(declare-fun b!7521410 () Bool)

(declare-fun e!4483693 () Bool)

(declare-fun e!4483696 () Bool)

(assert (=> b!7521410 (= e!4483693 e!4483696)))

(declare-fun c!1389620 () Bool)

(assert (=> b!7521410 (= c!1389620 ((_ is Star!19779) expr!41))))

(declare-fun bm!689707 () Bool)

(declare-fun c!1389619 () Bool)

(assert (=> bm!689707 (= call!689712 (validRegex!10207 (ite c!1389619 (regTwo!40071 expr!41) (regOne!40070 expr!41))))))

(declare-fun b!7521411 () Bool)

(declare-fun e!4483697 () Bool)

(declare-fun call!689713 () Bool)

(assert (=> b!7521411 (= e!4483697 call!689713)))

(declare-fun b!7521412 () Bool)

(declare-fun call!689714 () Bool)

(assert (=> b!7521412 (= e!4483694 call!689714)))

(declare-fun b!7521413 () Bool)

(declare-fun e!4483695 () Bool)

(assert (=> b!7521413 (= e!4483696 e!4483695)))

(assert (=> b!7521413 (= c!1389619 ((_ is Union!19779) expr!41))))

(declare-fun b!7521414 () Bool)

(declare-fun res!3014948 () Bool)

(assert (=> b!7521414 (=> res!3014948 e!4483698)))

(assert (=> b!7521414 (= res!3014948 (not ((_ is Concat!28624) expr!41)))))

(assert (=> b!7521414 (= e!4483695 e!4483698)))

(declare-fun bm!689709 () Bool)

(assert (=> bm!689709 (= call!689714 call!689713)))

(declare-fun b!7521415 () Bool)

(declare-fun res!3014946 () Bool)

(declare-fun e!4483699 () Bool)

(assert (=> b!7521415 (=> (not res!3014946) (not e!4483699))))

(assert (=> b!7521415 (= res!3014946 call!689714)))

(assert (=> b!7521415 (= e!4483695 e!4483699)))

(declare-fun d!2309039 () Bool)

(declare-fun res!3014949 () Bool)

(assert (=> d!2309039 (=> res!3014949 e!4483693)))

(assert (=> d!2309039 (= res!3014949 ((_ is ElementMatch!19779) expr!41))))

(assert (=> d!2309039 (= (validRegex!10207 expr!41) e!4483693)))

(declare-fun bm!689708 () Bool)

(assert (=> bm!689708 (= call!689713 (validRegex!10207 (ite c!1389620 (reg!20108 expr!41) (ite c!1389619 (regOne!40071 expr!41) (regTwo!40070 expr!41)))))))

(declare-fun b!7521416 () Bool)

(assert (=> b!7521416 (= e!4483699 call!689712)))

(declare-fun b!7521417 () Bool)

(assert (=> b!7521417 (= e!4483696 e!4483697)))

(declare-fun res!3014947 () Bool)

(assert (=> b!7521417 (= res!3014947 (not (nullable!8613 (reg!20108 expr!41))))))

(assert (=> b!7521417 (=> (not res!3014947) (not e!4483697))))

(assert (= (and d!2309039 (not res!3014949)) b!7521410))

(assert (= (and b!7521410 c!1389620) b!7521417))

(assert (= (and b!7521410 (not c!1389620)) b!7521413))

(assert (= (and b!7521417 res!3014947) b!7521411))

(assert (= (and b!7521413 c!1389619) b!7521415))

(assert (= (and b!7521413 (not c!1389619)) b!7521414))

(assert (= (and b!7521415 res!3014946) b!7521416))

(assert (= (and b!7521414 (not res!3014948)) b!7521409))

(assert (= (and b!7521409 res!3014950) b!7521412))

(assert (= (or b!7521416 b!7521409) bm!689707))

(assert (= (or b!7521415 b!7521412) bm!689709))

(assert (= (or b!7521411 bm!689709) bm!689708))

(declare-fun m!8100364 () Bool)

(assert (=> bm!689707 m!8100364))

(declare-fun m!8100368 () Bool)

(assert (=> bm!689708 m!8100368))

(declare-fun m!8100370 () Bool)

(assert (=> b!7521417 m!8100370))

(assert (=> start!728076 d!2309039))

(declare-fun d!2309045 () Bool)

(declare-fun nullableFct!3444 (Regex!19779) Bool)

(assert (=> d!2309045 (= (nullable!8613 (regOne!40070 expr!41)) (nullableFct!3444 (regOne!40070 expr!41)))))

(declare-fun bs!1939666 () Bool)

(assert (= bs!1939666 d!2309045))

(declare-fun m!8100374 () Bool)

(assert (=> bs!1939666 m!8100374))

(assert (=> b!7521358 d!2309045))

(declare-fun b!7521433 () Bool)

(declare-fun e!4483714 () Bool)

(declare-fun e!4483710 () Bool)

(assert (=> b!7521433 (= e!4483714 e!4483710)))

(declare-fun res!3014960 () Bool)

(assert (=> b!7521433 (=> (not res!3014960) (not e!4483710))))

(declare-fun call!689718 () Bool)

(assert (=> b!7521433 (= res!3014960 call!689718)))

(declare-fun b!7521434 () Bool)

(declare-fun e!4483709 () Bool)

(declare-fun e!4483712 () Bool)

(assert (=> b!7521434 (= e!4483709 e!4483712)))

(declare-fun c!1389624 () Bool)

(assert (=> b!7521434 (= c!1389624 ((_ is Star!19779) (regOne!40070 expr!41)))))

(declare-fun bm!689713 () Bool)

(declare-fun c!1389623 () Bool)

(assert (=> bm!689713 (= call!689718 (validRegex!10207 (ite c!1389623 (regTwo!40071 (regOne!40070 expr!41)) (regOne!40070 (regOne!40070 expr!41)))))))

(declare-fun b!7521435 () Bool)

(declare-fun e!4483713 () Bool)

(declare-fun call!689719 () Bool)

(assert (=> b!7521435 (= e!4483713 call!689719)))

(declare-fun b!7521436 () Bool)

(declare-fun call!689720 () Bool)

(assert (=> b!7521436 (= e!4483710 call!689720)))

(declare-fun b!7521437 () Bool)

(declare-fun e!4483711 () Bool)

(assert (=> b!7521437 (= e!4483712 e!4483711)))

(assert (=> b!7521437 (= c!1389623 ((_ is Union!19779) (regOne!40070 expr!41)))))

(declare-fun b!7521438 () Bool)

(declare-fun res!3014958 () Bool)

(assert (=> b!7521438 (=> res!3014958 e!4483714)))

(assert (=> b!7521438 (= res!3014958 (not ((_ is Concat!28624) (regOne!40070 expr!41))))))

(assert (=> b!7521438 (= e!4483711 e!4483714)))

(declare-fun bm!689715 () Bool)

(assert (=> bm!689715 (= call!689720 call!689719)))

(declare-fun b!7521439 () Bool)

(declare-fun res!3014956 () Bool)

(declare-fun e!4483715 () Bool)

(assert (=> b!7521439 (=> (not res!3014956) (not e!4483715))))

(assert (=> b!7521439 (= res!3014956 call!689720)))

(assert (=> b!7521439 (= e!4483711 e!4483715)))

(declare-fun d!2309047 () Bool)

(declare-fun res!3014959 () Bool)

(assert (=> d!2309047 (=> res!3014959 e!4483709)))

(assert (=> d!2309047 (= res!3014959 ((_ is ElementMatch!19779) (regOne!40070 expr!41)))))

(assert (=> d!2309047 (= (validRegex!10207 (regOne!40070 expr!41)) e!4483709)))

(declare-fun bm!689714 () Bool)

(assert (=> bm!689714 (= call!689719 (validRegex!10207 (ite c!1389624 (reg!20108 (regOne!40070 expr!41)) (ite c!1389623 (regOne!40071 (regOne!40070 expr!41)) (regTwo!40070 (regOne!40070 expr!41))))))))

(declare-fun b!7521440 () Bool)

(assert (=> b!7521440 (= e!4483715 call!689718)))

(declare-fun b!7521441 () Bool)

(assert (=> b!7521441 (= e!4483712 e!4483713)))

(declare-fun res!3014957 () Bool)

(assert (=> b!7521441 (= res!3014957 (not (nullable!8613 (reg!20108 (regOne!40070 expr!41)))))))

(assert (=> b!7521441 (=> (not res!3014957) (not e!4483713))))

(assert (= (and d!2309047 (not res!3014959)) b!7521434))

(assert (= (and b!7521434 c!1389624) b!7521441))

(assert (= (and b!7521434 (not c!1389624)) b!7521437))

(assert (= (and b!7521441 res!3014957) b!7521435))

(assert (= (and b!7521437 c!1389623) b!7521439))

(assert (= (and b!7521437 (not c!1389623)) b!7521438))

(assert (= (and b!7521439 res!3014956) b!7521440))

(assert (= (and b!7521438 (not res!3014958)) b!7521433))

(assert (= (and b!7521433 res!3014960) b!7521436))

(assert (= (or b!7521440 b!7521433) bm!689713))

(assert (= (or b!7521439 b!7521436) bm!689715))

(assert (= (or b!7521435 bm!689715) bm!689714))

(declare-fun m!8100376 () Bool)

(assert (=> bm!689713 m!8100376))

(declare-fun m!8100378 () Bool)

(assert (=> bm!689714 m!8100378))

(declare-fun m!8100380 () Bool)

(assert (=> b!7521441 m!8100380))

(assert (=> b!7521363 d!2309047))

(declare-fun e!4483723 () Bool)

(assert (=> b!7521361 (= tp!2184735 e!4483723)))

(declare-fun b!7521476 () Bool)

(assert (=> b!7521476 (= e!4483723 tp_is_empty!49913)))

(declare-fun b!7521479 () Bool)

(declare-fun tp!2184784 () Bool)

(declare-fun tp!2184789 () Bool)

(assert (=> b!7521479 (= e!4483723 (and tp!2184784 tp!2184789))))

(declare-fun b!7521478 () Bool)

(declare-fun tp!2184788 () Bool)

(assert (=> b!7521478 (= e!4483723 tp!2184788)))

(declare-fun b!7521477 () Bool)

(declare-fun tp!2184786 () Bool)

(declare-fun tp!2184787 () Bool)

(assert (=> b!7521477 (= e!4483723 (and tp!2184786 tp!2184787))))

(assert (= (and b!7521361 ((_ is ElementMatch!19779) (reg!20108 expr!41))) b!7521476))

(assert (= (and b!7521361 ((_ is Concat!28624) (reg!20108 expr!41))) b!7521477))

(assert (= (and b!7521361 ((_ is Star!19779) (reg!20108 expr!41))) b!7521478))

(assert (= (and b!7521361 ((_ is Union!19779) (reg!20108 expr!41))) b!7521479))

(declare-fun e!4483724 () Bool)

(assert (=> b!7521359 (= tp!2184738 e!4483724)))

(declare-fun b!7521480 () Bool)

(assert (=> b!7521480 (= e!4483724 tp_is_empty!49913)))

(declare-fun b!7521483 () Bool)

(declare-fun tp!2184790 () Bool)

(declare-fun tp!2184794 () Bool)

(assert (=> b!7521483 (= e!4483724 (and tp!2184790 tp!2184794))))

(declare-fun b!7521482 () Bool)

(declare-fun tp!2184793 () Bool)

(assert (=> b!7521482 (= e!4483724 tp!2184793)))

(declare-fun b!7521481 () Bool)

(declare-fun tp!2184791 () Bool)

(declare-fun tp!2184792 () Bool)

(assert (=> b!7521481 (= e!4483724 (and tp!2184791 tp!2184792))))

(assert (= (and b!7521359 ((_ is ElementMatch!19779) (regOne!40070 expr!41))) b!7521480))

(assert (= (and b!7521359 ((_ is Concat!28624) (regOne!40070 expr!41))) b!7521481))

(assert (= (and b!7521359 ((_ is Star!19779) (regOne!40070 expr!41))) b!7521482))

(assert (= (and b!7521359 ((_ is Union!19779) (regOne!40070 expr!41))) b!7521483))

(declare-fun e!4483725 () Bool)

(assert (=> b!7521359 (= tp!2184737 e!4483725)))

(declare-fun b!7521484 () Bool)

(assert (=> b!7521484 (= e!4483725 tp_is_empty!49913)))

(declare-fun b!7521487 () Bool)

(declare-fun tp!2184795 () Bool)

(declare-fun tp!2184799 () Bool)

(assert (=> b!7521487 (= e!4483725 (and tp!2184795 tp!2184799))))

(declare-fun b!7521486 () Bool)

(declare-fun tp!2184798 () Bool)

(assert (=> b!7521486 (= e!4483725 tp!2184798)))

(declare-fun b!7521485 () Bool)

(declare-fun tp!2184796 () Bool)

(declare-fun tp!2184797 () Bool)

(assert (=> b!7521485 (= e!4483725 (and tp!2184796 tp!2184797))))

(assert (= (and b!7521359 ((_ is ElementMatch!19779) (regTwo!40070 expr!41))) b!7521484))

(assert (= (and b!7521359 ((_ is Concat!28624) (regTwo!40070 expr!41))) b!7521485))

(assert (= (and b!7521359 ((_ is Star!19779) (regTwo!40070 expr!41))) b!7521486))

(assert (= (and b!7521359 ((_ is Union!19779) (regTwo!40070 expr!41))) b!7521487))

(declare-fun e!4483726 () Bool)

(assert (=> b!7521357 (= tp!2184739 e!4483726)))

(declare-fun b!7521488 () Bool)

(assert (=> b!7521488 (= e!4483726 tp_is_empty!49913)))

(declare-fun b!7521491 () Bool)

(declare-fun tp!2184800 () Bool)

(declare-fun tp!2184804 () Bool)

(assert (=> b!7521491 (= e!4483726 (and tp!2184800 tp!2184804))))

(declare-fun b!7521490 () Bool)

(declare-fun tp!2184803 () Bool)

(assert (=> b!7521490 (= e!4483726 tp!2184803)))

(declare-fun b!7521489 () Bool)

(declare-fun tp!2184801 () Bool)

(declare-fun tp!2184802 () Bool)

(assert (=> b!7521489 (= e!4483726 (and tp!2184801 tp!2184802))))

(assert (= (and b!7521357 ((_ is ElementMatch!19779) (regOne!40071 expr!41))) b!7521488))

(assert (= (and b!7521357 ((_ is Concat!28624) (regOne!40071 expr!41))) b!7521489))

(assert (= (and b!7521357 ((_ is Star!19779) (regOne!40071 expr!41))) b!7521490))

(assert (= (and b!7521357 ((_ is Union!19779) (regOne!40071 expr!41))) b!7521491))

(declare-fun e!4483727 () Bool)

(assert (=> b!7521357 (= tp!2184736 e!4483727)))

(declare-fun b!7521492 () Bool)

(assert (=> b!7521492 (= e!4483727 tp_is_empty!49913)))

(declare-fun b!7521495 () Bool)

(declare-fun tp!2184805 () Bool)

(declare-fun tp!2184809 () Bool)

(assert (=> b!7521495 (= e!4483727 (and tp!2184805 tp!2184809))))

(declare-fun b!7521494 () Bool)

(declare-fun tp!2184808 () Bool)

(assert (=> b!7521494 (= e!4483727 tp!2184808)))

(declare-fun b!7521493 () Bool)

(declare-fun tp!2184806 () Bool)

(declare-fun tp!2184807 () Bool)

(assert (=> b!7521493 (= e!4483727 (and tp!2184806 tp!2184807))))

(assert (= (and b!7521357 ((_ is ElementMatch!19779) (regTwo!40071 expr!41))) b!7521492))

(assert (= (and b!7521357 ((_ is Concat!28624) (regTwo!40071 expr!41))) b!7521493))

(assert (= (and b!7521357 ((_ is Star!19779) (regTwo!40071 expr!41))) b!7521494))

(assert (= (and b!7521357 ((_ is Union!19779) (regTwo!40071 expr!41))) b!7521495))

(check-sat (not bm!689708) (not b!7521483) (not b!7521479) (not bm!689707) (not b!7521493) (not bm!689713) (not b!7521485) (not bm!689714) (not b!7521481) (not b!7521417) tp_is_empty!49913 (not b!7521441) (not b!7521478) (not b!7521486) (not b!7521495) (not b!7521482) (not b!7521494) (not b!7521491) (not b!7521477) (not b!7521489) (not b!7521487) (not d!2309045) (not b!7521490))
(check-sat)
