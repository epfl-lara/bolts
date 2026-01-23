; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246316 () Bool)

(assert start!246316)

(declare-fun b!2529434 () Bool)

(declare-fun e!1600886 () Bool)

(declare-datatypes ((C!15212 0))(
  ( (C!15213 (val!9258 Int)) )
))
(declare-datatypes ((Regex!7527 0))(
  ( (ElementMatch!7527 (c!404019 C!15212)) (Concat!12223 (regOne!15566 Regex!7527) (regTwo!15566 Regex!7527)) (EmptyExpr!7527) (Star!7527 (reg!7856 Regex!7527)) (EmptyLang!7527) (Union!7527 (regOne!15567 Regex!7527) (regTwo!15567 Regex!7527)) )
))
(declare-fun r!27340 () Regex!7527)

(declare-fun RegexPrimitiveSize!110 (Regex!7527) Int)

(assert (=> b!2529434 (= e!1600886 (< (RegexPrimitiveSize!110 r!27340) 0))))

(declare-fun b!2529435 () Bool)

(declare-fun e!1600887 () Bool)

(declare-fun tp!807352 () Bool)

(declare-fun tp!807354 () Bool)

(assert (=> b!2529435 (= e!1600887 (and tp!807352 tp!807354))))

(declare-fun b!2529436 () Bool)

(declare-fun tp!807350 () Bool)

(declare-fun tp!807353 () Bool)

(assert (=> b!2529436 (= e!1600887 (and tp!807350 tp!807353))))

(declare-fun b!2529437 () Bool)

(declare-fun res!1068270 () Bool)

(assert (=> b!2529437 (=> (not res!1068270) (not e!1600886))))

(declare-datatypes ((List!29592 0))(
  ( (Nil!29492) (Cons!29492 (h!34912 C!15212) (t!211291 List!29592)) )
))
(declare-fun tl!4068 () List!29592)

(declare-fun c!14016 () C!15212)

(declare-fun nullable!2444 (Regex!7527) Bool)

(declare-fun derivative!222 (Regex!7527 List!29592) Regex!7527)

(declare-fun derivativeStep!2096 (Regex!7527 C!15212) Regex!7527)

(assert (=> b!2529437 (= res!1068270 (nullable!2444 (derivative!222 (derivativeStep!2096 r!27340 c!14016) tl!4068)))))

(declare-fun res!1068269 () Bool)

(assert (=> start!246316 (=> (not res!1068269) (not e!1600886))))

(declare-fun validRegex!3153 (Regex!7527) Bool)

(assert (=> start!246316 (= res!1068269 (validRegex!3153 r!27340))))

(assert (=> start!246316 e!1600886))

(assert (=> start!246316 e!1600887))

(declare-fun tp_is_empty!12909 () Bool)

(assert (=> start!246316 tp_is_empty!12909))

(declare-fun e!1600888 () Bool)

(assert (=> start!246316 e!1600888))

(declare-fun b!2529438 () Bool)

(assert (=> b!2529438 (= e!1600887 tp_is_empty!12909)))

(declare-fun b!2529439 () Bool)

(declare-fun tp!807351 () Bool)

(assert (=> b!2529439 (= e!1600888 (and tp_is_empty!12909 tp!807351))))

(declare-fun b!2529440 () Bool)

(declare-fun tp!807349 () Bool)

(assert (=> b!2529440 (= e!1600887 tp!807349)))

(assert (= (and start!246316 res!1068269) b!2529437))

(assert (= (and b!2529437 res!1068270) b!2529434))

(get-info :version)

(assert (= (and start!246316 ((_ is ElementMatch!7527) r!27340)) b!2529438))

(assert (= (and start!246316 ((_ is Concat!12223) r!27340)) b!2529435))

(assert (= (and start!246316 ((_ is Star!7527) r!27340)) b!2529440))

(assert (= (and start!246316 ((_ is Union!7527) r!27340)) b!2529436))

(assert (= (and start!246316 ((_ is Cons!29492) tl!4068)) b!2529439))

(declare-fun m!2881651 () Bool)

(assert (=> b!2529434 m!2881651))

(declare-fun m!2881653 () Bool)

(assert (=> b!2529437 m!2881653))

(assert (=> b!2529437 m!2881653))

(declare-fun m!2881655 () Bool)

(assert (=> b!2529437 m!2881655))

(assert (=> b!2529437 m!2881655))

(declare-fun m!2881657 () Bool)

(assert (=> b!2529437 m!2881657))

(declare-fun m!2881659 () Bool)

(assert (=> start!246316 m!2881659))

(check-sat (not b!2529436) (not start!246316) (not b!2529435) (not b!2529437) (not b!2529440) (not b!2529434) (not b!2529439) tp_is_empty!12909)
(check-sat)
(get-model)

(declare-fun b!2529479 () Bool)

(declare-fun e!1600913 () Int)

(declare-fun e!1600917 () Int)

(assert (=> b!2529479 (= e!1600913 e!1600917)))

(declare-fun c!404034 () Bool)

(assert (=> b!2529479 (= c!404034 ((_ is Concat!12223) r!27340))))

(declare-fun bm!158315 () Bool)

(declare-fun call!158323 () Int)

(declare-fun call!158324 () Int)

(assert (=> bm!158315 (= call!158323 call!158324)))

(declare-fun b!2529481 () Bool)

(assert (=> b!2529481 (= e!1600913 1)))

(declare-fun b!2529482 () Bool)

(declare-fun e!1600915 () Int)

(declare-fun e!1600914 () Int)

(assert (=> b!2529482 (= e!1600915 e!1600914)))

(declare-fun c!404038 () Bool)

(assert (=> b!2529482 (= c!404038 ((_ is Star!7527) r!27340))))

(declare-fun b!2529483 () Bool)

(declare-fun e!1600916 () Int)

(declare-fun call!158322 () Int)

(assert (=> b!2529483 (= e!1600916 (+ 1 call!158323 call!158322))))

(declare-fun bm!158316 () Bool)

(assert (=> bm!158316 (= call!158324 (RegexPrimitiveSize!110 (ite c!404034 (regTwo!15566 r!27340) (ite c!404038 (reg!7856 r!27340) (regOne!15567 r!27340)))))))

(declare-fun b!2529484 () Bool)

(assert (=> b!2529484 (= e!1600917 (+ 1 call!158322 call!158324))))

(declare-fun bm!158317 () Bool)

(assert (=> bm!158317 (= call!158322 (RegexPrimitiveSize!110 (ite c!404034 (regOne!15566 r!27340) (regTwo!15567 r!27340))))))

(declare-fun d!719729 () Bool)

(declare-fun lt!901049 () Int)

(assert (=> d!719729 (>= lt!901049 0)))

(assert (=> d!719729 (= lt!901049 e!1600913)))

(declare-fun c!404035 () Bool)

(assert (=> d!719729 (= c!404035 ((_ is ElementMatch!7527) r!27340))))

(assert (=> d!719729 (= (RegexPrimitiveSize!110 r!27340) lt!901049)))

(declare-fun b!2529480 () Bool)

(assert (=> b!2529480 (= e!1600914 (+ 1 call!158323))))

(declare-fun b!2529485 () Bool)

(declare-fun c!404037 () Bool)

(assert (=> b!2529485 (= c!404037 ((_ is EmptyLang!7527) r!27340))))

(assert (=> b!2529485 (= e!1600914 e!1600916)))

(declare-fun b!2529486 () Bool)

(assert (=> b!2529486 (= e!1600916 0)))

(declare-fun b!2529487 () Bool)

(assert (=> b!2529487 (= e!1600915 0)))

(declare-fun b!2529488 () Bool)

(declare-fun c!404036 () Bool)

(assert (=> b!2529488 (= c!404036 ((_ is EmptyExpr!7527) r!27340))))

(assert (=> b!2529488 (= e!1600917 e!1600915)))

(assert (= (and d!719729 c!404035) b!2529481))

(assert (= (and d!719729 (not c!404035)) b!2529479))

(assert (= (and b!2529479 c!404034) b!2529484))

(assert (= (and b!2529479 (not c!404034)) b!2529488))

(assert (= (and b!2529488 c!404036) b!2529487))

(assert (= (and b!2529488 (not c!404036)) b!2529482))

(assert (= (and b!2529482 c!404038) b!2529480))

(assert (= (and b!2529482 (not c!404038)) b!2529485))

(assert (= (and b!2529485 c!404037) b!2529486))

(assert (= (and b!2529485 (not c!404037)) b!2529483))

(assert (= (or b!2529480 b!2529483) bm!158315))

(assert (= (or b!2529484 bm!158315) bm!158316))

(assert (= (or b!2529484 b!2529483) bm!158317))

(declare-fun m!2881661 () Bool)

(assert (=> bm!158316 m!2881661))

(declare-fun m!2881663 () Bool)

(assert (=> bm!158317 m!2881663))

(assert (=> b!2529434 d!719729))

(declare-fun b!2529507 () Bool)

(declare-fun res!1068291 () Bool)

(declare-fun e!1600932 () Bool)

(assert (=> b!2529507 (=> res!1068291 e!1600932)))

(assert (=> b!2529507 (= res!1068291 (not ((_ is Concat!12223) r!27340)))))

(declare-fun e!1600933 () Bool)

(assert (=> b!2529507 (= e!1600933 e!1600932)))

(declare-fun b!2529508 () Bool)

(declare-fun e!1600934 () Bool)

(declare-fun call!158335 () Bool)

(assert (=> b!2529508 (= e!1600934 call!158335)))

(declare-fun b!2529509 () Bool)

(declare-fun res!1068292 () Bool)

(declare-fun e!1600935 () Bool)

(assert (=> b!2529509 (=> (not res!1068292) (not e!1600935))))

(declare-fun call!158337 () Bool)

(assert (=> b!2529509 (= res!1068292 call!158337)))

(assert (=> b!2529509 (= e!1600933 e!1600935)))

(declare-fun b!2529510 () Bool)

(declare-fun e!1600937 () Bool)

(assert (=> b!2529510 (= e!1600937 call!158337)))

(declare-fun b!2529511 () Bool)

(declare-fun e!1600938 () Bool)

(assert (=> b!2529511 (= e!1600938 e!1600933)))

(declare-fun c!404044 () Bool)

(assert (=> b!2529511 (= c!404044 ((_ is Union!7527) r!27340))))

(declare-fun bm!158330 () Bool)

(declare-fun call!158336 () Bool)

(assert (=> bm!158330 (= call!158336 call!158335)))

(declare-fun b!2529512 () Bool)

(declare-fun e!1600936 () Bool)

(assert (=> b!2529512 (= e!1600936 e!1600938)))

(declare-fun c!404043 () Bool)

(assert (=> b!2529512 (= c!404043 ((_ is Star!7527) r!27340))))

(declare-fun b!2529513 () Bool)

(assert (=> b!2529513 (= e!1600932 e!1600937)))

(declare-fun res!1068293 () Bool)

(assert (=> b!2529513 (=> (not res!1068293) (not e!1600937))))

(assert (=> b!2529513 (= res!1068293 call!158336)))

(declare-fun bm!158332 () Bool)

(assert (=> bm!158332 (= call!158335 (validRegex!3153 (ite c!404043 (reg!7856 r!27340) (ite c!404044 (regTwo!15567 r!27340) (regOne!15566 r!27340)))))))

(declare-fun b!2529514 () Bool)

(assert (=> b!2529514 (= e!1600935 call!158336)))

(declare-fun b!2529515 () Bool)

(assert (=> b!2529515 (= e!1600938 e!1600934)))

(declare-fun res!1068294 () Bool)

(assert (=> b!2529515 (= res!1068294 (not (nullable!2444 (reg!7856 r!27340))))))

(assert (=> b!2529515 (=> (not res!1068294) (not e!1600934))))

(declare-fun d!719733 () Bool)

(declare-fun res!1068295 () Bool)

(assert (=> d!719733 (=> res!1068295 e!1600936)))

(assert (=> d!719733 (= res!1068295 ((_ is ElementMatch!7527) r!27340))))

(assert (=> d!719733 (= (validRegex!3153 r!27340) e!1600936)))

(declare-fun bm!158331 () Bool)

(assert (=> bm!158331 (= call!158337 (validRegex!3153 (ite c!404044 (regOne!15567 r!27340) (regTwo!15566 r!27340))))))

(assert (= (and d!719733 (not res!1068295)) b!2529512))

(assert (= (and b!2529512 c!404043) b!2529515))

(assert (= (and b!2529512 (not c!404043)) b!2529511))

(assert (= (and b!2529515 res!1068294) b!2529508))

(assert (= (and b!2529511 c!404044) b!2529509))

(assert (= (and b!2529511 (not c!404044)) b!2529507))

(assert (= (and b!2529509 res!1068292) b!2529514))

(assert (= (and b!2529507 (not res!1068291)) b!2529513))

(assert (= (and b!2529513 res!1068293) b!2529510))

(assert (= (or b!2529509 b!2529510) bm!158331))

(assert (= (or b!2529514 b!2529513) bm!158330))

(assert (= (or b!2529508 bm!158330) bm!158332))

(declare-fun m!2881665 () Bool)

(assert (=> bm!158332 m!2881665))

(declare-fun m!2881667 () Bool)

(assert (=> b!2529515 m!2881667))

(declare-fun m!2881669 () Bool)

(assert (=> bm!158331 m!2881669))

(assert (=> start!246316 d!719733))

(declare-fun d!719735 () Bool)

(declare-fun nullableFct!684 (Regex!7527) Bool)

(assert (=> d!719735 (= (nullable!2444 (derivative!222 (derivativeStep!2096 r!27340 c!14016) tl!4068)) (nullableFct!684 (derivative!222 (derivativeStep!2096 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469174 () Bool)

(assert (= bs!469174 d!719735))

(assert (=> bs!469174 m!2881655))

(declare-fun m!2881671 () Bool)

(assert (=> bs!469174 m!2881671))

(assert (=> b!2529437 d!719735))

(declare-fun d!719737 () Bool)

(declare-fun lt!901052 () Regex!7527)

(assert (=> d!719737 (validRegex!3153 lt!901052)))

(declare-fun e!1600948 () Regex!7527)

(assert (=> d!719737 (= lt!901052 e!1600948)))

(declare-fun c!404049 () Bool)

(assert (=> d!719737 (= c!404049 ((_ is Cons!29492) tl!4068))))

(assert (=> d!719737 (validRegex!3153 (derivativeStep!2096 r!27340 c!14016))))

(assert (=> d!719737 (= (derivative!222 (derivativeStep!2096 r!27340 c!14016) tl!4068) lt!901052)))

(declare-fun b!2529529 () Bool)

(assert (=> b!2529529 (= e!1600948 (derivative!222 (derivativeStep!2096 (derivativeStep!2096 r!27340 c!14016) (h!34912 tl!4068)) (t!211291 tl!4068)))))

(declare-fun b!2529530 () Bool)

(assert (=> b!2529530 (= e!1600948 (derivativeStep!2096 r!27340 c!14016))))

(assert (= (and d!719737 c!404049) b!2529529))

(assert (= (and d!719737 (not c!404049)) b!2529530))

(declare-fun m!2881679 () Bool)

(assert (=> d!719737 m!2881679))

(assert (=> d!719737 m!2881653))

(declare-fun m!2881681 () Bool)

(assert (=> d!719737 m!2881681))

(assert (=> b!2529529 m!2881653))

(declare-fun m!2881683 () Bool)

(assert (=> b!2529529 m!2881683))

(assert (=> b!2529529 m!2881683))

(declare-fun m!2881685 () Bool)

(assert (=> b!2529529 m!2881685))

(assert (=> b!2529437 d!719737))

(declare-fun b!2529571 () Bool)

(declare-fun c!404074 () Bool)

(assert (=> b!2529571 (= c!404074 (nullable!2444 (regOne!15566 r!27340)))))

(declare-fun e!1600969 () Regex!7527)

(declare-fun e!1600971 () Regex!7527)

(assert (=> b!2529571 (= e!1600969 e!1600971)))

(declare-fun bm!158350 () Bool)

(declare-fun call!158357 () Regex!7527)

(declare-fun call!158356 () Regex!7527)

(assert (=> bm!158350 (= call!158357 call!158356)))

(declare-fun d!719741 () Bool)

(declare-fun lt!901057 () Regex!7527)

(assert (=> d!719741 (validRegex!3153 lt!901057)))

(declare-fun e!1600970 () Regex!7527)

(assert (=> d!719741 (= lt!901057 e!1600970)))

(declare-fun c!404071 () Bool)

(assert (=> d!719741 (= c!404071 (or ((_ is EmptyExpr!7527) r!27340) ((_ is EmptyLang!7527) r!27340)))))

(assert (=> d!719741 (validRegex!3153 r!27340)))

(assert (=> d!719741 (= (derivativeStep!2096 r!27340 c!14016) lt!901057)))

(declare-fun call!158355 () Regex!7527)

(declare-fun b!2529572 () Bool)

(declare-fun call!158358 () Regex!7527)

(assert (=> b!2529572 (= e!1600971 (Union!7527 (Concat!12223 call!158358 (regTwo!15566 r!27340)) call!158355))))

(declare-fun b!2529573 () Bool)

(declare-fun e!1600972 () Regex!7527)

(assert (=> b!2529573 (= e!1600972 (Union!7527 call!158355 call!158356))))

(declare-fun b!2529574 () Bool)

(assert (=> b!2529574 (= e!1600972 e!1600969)))

(declare-fun c!404070 () Bool)

(assert (=> b!2529574 (= c!404070 ((_ is Star!7527) r!27340))))

(declare-fun bm!158351 () Bool)

(declare-fun c!404073 () Bool)

(assert (=> bm!158351 (= call!158356 (derivativeStep!2096 (ite c!404073 (regTwo!15567 r!27340) (ite c!404070 (reg!7856 r!27340) (regOne!15566 r!27340))) c!14016))))

(declare-fun b!2529575 () Bool)

(declare-fun e!1600973 () Regex!7527)

(assert (=> b!2529575 (= e!1600970 e!1600973)))

(declare-fun c!404072 () Bool)

(assert (=> b!2529575 (= c!404072 ((_ is ElementMatch!7527) r!27340))))

(declare-fun bm!158352 () Bool)

(assert (=> bm!158352 (= call!158358 call!158357)))

(declare-fun b!2529576 () Bool)

(assert (=> b!2529576 (= e!1600970 EmptyLang!7527)))

(declare-fun b!2529577 () Bool)

(assert (=> b!2529577 (= c!404073 ((_ is Union!7527) r!27340))))

(assert (=> b!2529577 (= e!1600973 e!1600972)))

(declare-fun b!2529578 () Bool)

(assert (=> b!2529578 (= e!1600971 (Union!7527 (Concat!12223 call!158358 (regTwo!15566 r!27340)) EmptyLang!7527))))

(declare-fun b!2529579 () Bool)

(assert (=> b!2529579 (= e!1600969 (Concat!12223 call!158357 r!27340))))

(declare-fun bm!158353 () Bool)

(assert (=> bm!158353 (= call!158355 (derivativeStep!2096 (ite c!404073 (regOne!15567 r!27340) (regTwo!15566 r!27340)) c!14016))))

(declare-fun b!2529580 () Bool)

(assert (=> b!2529580 (= e!1600973 (ite (= c!14016 (c!404019 r!27340)) EmptyExpr!7527 EmptyLang!7527))))

(assert (= (and d!719741 c!404071) b!2529576))

(assert (= (and d!719741 (not c!404071)) b!2529575))

(assert (= (and b!2529575 c!404072) b!2529580))

(assert (= (and b!2529575 (not c!404072)) b!2529577))

(assert (= (and b!2529577 c!404073) b!2529573))

(assert (= (and b!2529577 (not c!404073)) b!2529574))

(assert (= (and b!2529574 c!404070) b!2529579))

(assert (= (and b!2529574 (not c!404070)) b!2529571))

(assert (= (and b!2529571 c!404074) b!2529572))

(assert (= (and b!2529571 (not c!404074)) b!2529578))

(assert (= (or b!2529572 b!2529578) bm!158352))

(assert (= (or b!2529579 bm!158352) bm!158350))

(assert (= (or b!2529573 bm!158350) bm!158351))

(assert (= (or b!2529573 b!2529572) bm!158353))

(declare-fun m!2881687 () Bool)

(assert (=> b!2529571 m!2881687))

(declare-fun m!2881689 () Bool)

(assert (=> d!719741 m!2881689))

(assert (=> d!719741 m!2881659))

(declare-fun m!2881691 () Bool)

(assert (=> bm!158351 m!2881691))

(declare-fun m!2881693 () Bool)

(assert (=> bm!158353 m!2881693))

(assert (=> b!2529437 d!719741))

(declare-fun e!1600976 () Bool)

(assert (=> b!2529436 (= tp!807350 e!1600976)))

(declare-fun b!2529593 () Bool)

(declare-fun tp!807365 () Bool)

(assert (=> b!2529593 (= e!1600976 tp!807365)))

(declare-fun b!2529594 () Bool)

(declare-fun tp!807369 () Bool)

(declare-fun tp!807367 () Bool)

(assert (=> b!2529594 (= e!1600976 (and tp!807369 tp!807367))))

(declare-fun b!2529591 () Bool)

(assert (=> b!2529591 (= e!1600976 tp_is_empty!12909)))

(declare-fun b!2529592 () Bool)

(declare-fun tp!807366 () Bool)

(declare-fun tp!807368 () Bool)

(assert (=> b!2529592 (= e!1600976 (and tp!807366 tp!807368))))

(assert (= (and b!2529436 ((_ is ElementMatch!7527) (regOne!15567 r!27340))) b!2529591))

(assert (= (and b!2529436 ((_ is Concat!12223) (regOne!15567 r!27340))) b!2529592))

(assert (= (and b!2529436 ((_ is Star!7527) (regOne!15567 r!27340))) b!2529593))

(assert (= (and b!2529436 ((_ is Union!7527) (regOne!15567 r!27340))) b!2529594))

(declare-fun e!1600982 () Bool)

(assert (=> b!2529436 (= tp!807353 e!1600982)))

(declare-fun b!2529603 () Bool)

(declare-fun tp!807370 () Bool)

(assert (=> b!2529603 (= e!1600982 tp!807370)))

(declare-fun b!2529605 () Bool)

(declare-fun tp!807374 () Bool)

(declare-fun tp!807372 () Bool)

(assert (=> b!2529605 (= e!1600982 (and tp!807374 tp!807372))))

(declare-fun b!2529599 () Bool)

(assert (=> b!2529599 (= e!1600982 tp_is_empty!12909)))

(declare-fun b!2529601 () Bool)

(declare-fun tp!807371 () Bool)

(declare-fun tp!807373 () Bool)

(assert (=> b!2529601 (= e!1600982 (and tp!807371 tp!807373))))

(assert (= (and b!2529436 ((_ is ElementMatch!7527) (regTwo!15567 r!27340))) b!2529599))

(assert (= (and b!2529436 ((_ is Concat!12223) (regTwo!15567 r!27340))) b!2529601))

(assert (= (and b!2529436 ((_ is Star!7527) (regTwo!15567 r!27340))) b!2529603))

(assert (= (and b!2529436 ((_ is Union!7527) (regTwo!15567 r!27340))) b!2529605))

(declare-fun e!1600983 () Bool)

(assert (=> b!2529435 (= tp!807352 e!1600983)))

(declare-fun b!2529611 () Bool)

(declare-fun tp!807375 () Bool)

(assert (=> b!2529611 (= e!1600983 tp!807375)))

(declare-fun b!2529612 () Bool)

(declare-fun tp!807379 () Bool)

(declare-fun tp!807377 () Bool)

(assert (=> b!2529612 (= e!1600983 (and tp!807379 tp!807377))))

(declare-fun b!2529609 () Bool)

(assert (=> b!2529609 (= e!1600983 tp_is_empty!12909)))

(declare-fun b!2529610 () Bool)

(declare-fun tp!807376 () Bool)

(declare-fun tp!807378 () Bool)

(assert (=> b!2529610 (= e!1600983 (and tp!807376 tp!807378))))

(assert (= (and b!2529435 ((_ is ElementMatch!7527) (regOne!15566 r!27340))) b!2529609))

(assert (= (and b!2529435 ((_ is Concat!12223) (regOne!15566 r!27340))) b!2529610))

(assert (= (and b!2529435 ((_ is Star!7527) (regOne!15566 r!27340))) b!2529611))

(assert (= (and b!2529435 ((_ is Union!7527) (regOne!15566 r!27340))) b!2529612))

(declare-fun e!1600984 () Bool)

(assert (=> b!2529435 (= tp!807354 e!1600984)))

(declare-fun b!2529615 () Bool)

(declare-fun tp!807380 () Bool)

(assert (=> b!2529615 (= e!1600984 tp!807380)))

(declare-fun b!2529616 () Bool)

(declare-fun tp!807384 () Bool)

(declare-fun tp!807382 () Bool)

(assert (=> b!2529616 (= e!1600984 (and tp!807384 tp!807382))))

(declare-fun b!2529613 () Bool)

(assert (=> b!2529613 (= e!1600984 tp_is_empty!12909)))

(declare-fun b!2529614 () Bool)

(declare-fun tp!807381 () Bool)

(declare-fun tp!807383 () Bool)

(assert (=> b!2529614 (= e!1600984 (and tp!807381 tp!807383))))

(assert (= (and b!2529435 ((_ is ElementMatch!7527) (regTwo!15566 r!27340))) b!2529613))

(assert (= (and b!2529435 ((_ is Concat!12223) (regTwo!15566 r!27340))) b!2529614))

(assert (= (and b!2529435 ((_ is Star!7527) (regTwo!15566 r!27340))) b!2529615))

(assert (= (and b!2529435 ((_ is Union!7527) (regTwo!15566 r!27340))) b!2529616))

(declare-fun e!1600985 () Bool)

(assert (=> b!2529440 (= tp!807349 e!1600985)))

(declare-fun b!2529619 () Bool)

(declare-fun tp!807385 () Bool)

(assert (=> b!2529619 (= e!1600985 tp!807385)))

(declare-fun b!2529620 () Bool)

(declare-fun tp!807389 () Bool)

(declare-fun tp!807387 () Bool)

(assert (=> b!2529620 (= e!1600985 (and tp!807389 tp!807387))))

(declare-fun b!2529617 () Bool)

(assert (=> b!2529617 (= e!1600985 tp_is_empty!12909)))

(declare-fun b!2529618 () Bool)

(declare-fun tp!807386 () Bool)

(declare-fun tp!807388 () Bool)

(assert (=> b!2529618 (= e!1600985 (and tp!807386 tp!807388))))

(assert (= (and b!2529440 ((_ is ElementMatch!7527) (reg!7856 r!27340))) b!2529617))

(assert (= (and b!2529440 ((_ is Concat!12223) (reg!7856 r!27340))) b!2529618))

(assert (= (and b!2529440 ((_ is Star!7527) (reg!7856 r!27340))) b!2529619))

(assert (= (and b!2529440 ((_ is Union!7527) (reg!7856 r!27340))) b!2529620))

(declare-fun b!2529625 () Bool)

(declare-fun e!1600988 () Bool)

(declare-fun tp!807392 () Bool)

(assert (=> b!2529625 (= e!1600988 (and tp_is_empty!12909 tp!807392))))

(assert (=> b!2529439 (= tp!807351 e!1600988)))

(assert (= (and b!2529439 ((_ is Cons!29492) (t!211291 tl!4068))) b!2529625))

(check-sat (not bm!158331) (not bm!158316) (not b!2529610) (not b!2529601) (not b!2529619) (not b!2529618) (not bm!158317) (not b!2529614) (not b!2529594) (not b!2529603) (not b!2529593) (not b!2529571) (not d!719741) (not d!719737) (not bm!158332) (not b!2529612) (not b!2529615) (not b!2529605) (not b!2529592) (not b!2529620) (not bm!158351) (not b!2529611) (not b!2529529) (not b!2529515) (not bm!158353) (not b!2529616) (not b!2529625) (not d!719735) tp_is_empty!12909)
(check-sat)
