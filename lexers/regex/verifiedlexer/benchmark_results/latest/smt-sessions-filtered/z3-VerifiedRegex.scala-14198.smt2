; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744134 () Bool)

(assert start!744134)

(declare-fun b!7876385 () Bool)

(declare-fun e!4651945 () Bool)

(declare-fun tp!2339698 () Bool)

(assert (=> b!7876385 (= e!4651945 tp!2339698)))

(declare-fun b!7876386 () Bool)

(declare-fun tp_is_empty!52737 () Bool)

(assert (=> b!7876386 (= e!4651945 tp_is_empty!52737)))

(declare-fun res!3128485 () Bool)

(declare-fun e!4651943 () Bool)

(assert (=> start!744134 (=> (not res!3128485) (not e!4651943))))

(declare-datatypes ((C!42664 0))(
  ( (C!42665 (val!31794 Int)) )
))
(declare-datatypes ((Regex!21169 0))(
  ( (ElementMatch!21169 (c!1446491 C!42664)) (Concat!30014 (regOne!42850 Regex!21169) (regTwo!42850 Regex!21169)) (EmptyExpr!21169) (Star!21169 (reg!21498 Regex!21169)) (EmptyLang!21169) (Union!21169 (regOne!42851 Regex!21169) (regTwo!42851 Regex!21169)) )
))
(declare-fun r1!6200 () Regex!21169)

(declare-fun validRegex!11579 (Regex!21169) Bool)

(assert (=> start!744134 (= res!3128485 (validRegex!11579 r1!6200))))

(assert (=> start!744134 e!4651943))

(assert (=> start!744134 e!4651945))

(declare-fun e!4651944 () Bool)

(assert (=> start!744134 e!4651944))

(declare-fun e!4651947 () Bool)

(assert (=> start!744134 e!4651947))

(declare-fun b!7876387 () Bool)

(declare-fun e!4651946 () Bool)

(declare-fun lt!2681011 () Regex!21169)

(assert (=> b!7876387 (= e!4651946 (not (validRegex!11579 lt!2681011)))))

(declare-fun b!7876388 () Bool)

(declare-fun tp!2339696 () Bool)

(assert (=> b!7876388 (= e!4651947 (and tp_is_empty!52737 tp!2339696))))

(declare-fun b!7876389 () Bool)

(declare-fun res!3128484 () Bool)

(assert (=> b!7876389 (=> (not res!3128484) (not e!4651943))))

(declare-datatypes ((List!74028 0))(
  ( (Nil!73904) (Cons!73904 (h!80352 C!42664) (t!388763 List!74028)) )
))
(declare-fun s!14219 () List!74028)

(get-info :version)

(assert (=> b!7876389 (= res!3128484 ((_ is Cons!73904) s!14219))))

(declare-fun b!7876390 () Bool)

(assert (=> b!7876390 (= e!4651943 e!4651946)))

(declare-fun res!3128486 () Bool)

(assert (=> b!7876390 (=> res!3128486 e!4651946)))

(declare-fun lt!2681010 () Regex!21169)

(assert (=> b!7876390 (= res!3128486 (not (validRegex!11579 lt!2681010)))))

(declare-fun r2!6138 () Regex!21169)

(declare-fun derivativeStep!6400 (Regex!21169 C!42664) Regex!21169)

(assert (=> b!7876390 (= lt!2681011 (derivativeStep!6400 r2!6138 (h!80352 s!14219)))))

(assert (=> b!7876390 (= lt!2681010 (derivativeStep!6400 r1!6200 (h!80352 s!14219)))))

(declare-fun b!7876391 () Bool)

(declare-fun tp!2339688 () Bool)

(declare-fun tp!2339689 () Bool)

(assert (=> b!7876391 (= e!4651944 (and tp!2339688 tp!2339689))))

(declare-fun b!7876392 () Bool)

(declare-fun tp!2339693 () Bool)

(assert (=> b!7876392 (= e!4651944 tp!2339693)))

(declare-fun b!7876393 () Bool)

(declare-fun res!3128488 () Bool)

(assert (=> b!7876393 (=> (not res!3128488) (not e!4651943))))

(declare-fun matchR!10605 (Regex!21169 List!74028) Bool)

(assert (=> b!7876393 (= res!3128488 (matchR!10605 r1!6200 s!14219))))

(declare-fun b!7876394 () Bool)

(assert (=> b!7876394 (= e!4651944 tp_is_empty!52737)))

(declare-fun b!7876395 () Bool)

(declare-fun res!3128487 () Bool)

(assert (=> b!7876395 (=> (not res!3128487) (not e!4651943))))

(assert (=> b!7876395 (= res!3128487 (validRegex!11579 r2!6138))))

(declare-fun b!7876396 () Bool)

(declare-fun tp!2339691 () Bool)

(declare-fun tp!2339690 () Bool)

(assert (=> b!7876396 (= e!4651945 (and tp!2339691 tp!2339690))))

(declare-fun b!7876397 () Bool)

(declare-fun tp!2339697 () Bool)

(declare-fun tp!2339694 () Bool)

(assert (=> b!7876397 (= e!4651944 (and tp!2339697 tp!2339694))))

(declare-fun b!7876398 () Bool)

(declare-fun tp!2339695 () Bool)

(declare-fun tp!2339692 () Bool)

(assert (=> b!7876398 (= e!4651945 (and tp!2339695 tp!2339692))))

(assert (= (and start!744134 res!3128485) b!7876395))

(assert (= (and b!7876395 res!3128487) b!7876393))

(assert (= (and b!7876393 res!3128488) b!7876389))

(assert (= (and b!7876389 res!3128484) b!7876390))

(assert (= (and b!7876390 (not res!3128486)) b!7876387))

(assert (= (and start!744134 ((_ is ElementMatch!21169) r1!6200)) b!7876386))

(assert (= (and start!744134 ((_ is Concat!30014) r1!6200)) b!7876398))

(assert (= (and start!744134 ((_ is Star!21169) r1!6200)) b!7876385))

(assert (= (and start!744134 ((_ is Union!21169) r1!6200)) b!7876396))

(assert (= (and start!744134 ((_ is ElementMatch!21169) r2!6138)) b!7876394))

(assert (= (and start!744134 ((_ is Concat!30014) r2!6138)) b!7876391))

(assert (= (and start!744134 ((_ is Star!21169) r2!6138)) b!7876392))

(assert (= (and start!744134 ((_ is Union!21169) r2!6138)) b!7876397))

(assert (= (and start!744134 ((_ is Cons!73904) s!14219)) b!7876388))

(declare-fun m!8266434 () Bool)

(assert (=> b!7876393 m!8266434))

(declare-fun m!8266436 () Bool)

(assert (=> start!744134 m!8266436))

(declare-fun m!8266438 () Bool)

(assert (=> b!7876390 m!8266438))

(declare-fun m!8266440 () Bool)

(assert (=> b!7876390 m!8266440))

(declare-fun m!8266442 () Bool)

(assert (=> b!7876390 m!8266442))

(declare-fun m!8266444 () Bool)

(assert (=> b!7876387 m!8266444))

(declare-fun m!8266446 () Bool)

(assert (=> b!7876395 m!8266446))

(check-sat (not b!7876396) (not b!7876391) (not b!7876398) (not b!7876395) (not b!7876392) tp_is_empty!52737 (not start!744134) (not b!7876387) (not b!7876397) (not b!7876388) (not b!7876390) (not b!7876385) (not b!7876393))
(check-sat)
(get-model)

(declare-fun b!7876435 () Bool)

(declare-fun e!4651980 () Bool)

(declare-fun e!4651981 () Bool)

(assert (=> b!7876435 (= e!4651980 e!4651981)))

(declare-fun res!3128512 () Bool)

(declare-fun nullable!9432 (Regex!21169) Bool)

(assert (=> b!7876435 (= res!3128512 (not (nullable!9432 (reg!21498 lt!2681010))))))

(assert (=> b!7876435 (=> (not res!3128512) (not e!4651981))))

(declare-fun b!7876436 () Bool)

(declare-fun e!4651978 () Bool)

(declare-fun call!730421 () Bool)

(assert (=> b!7876436 (= e!4651978 call!730421)))

(declare-fun b!7876437 () Bool)

(declare-fun call!730420 () Bool)

(assert (=> b!7876437 (= e!4651981 call!730420)))

(declare-fun b!7876438 () Bool)

(declare-fun res!3128511 () Bool)

(declare-fun e!4651982 () Bool)

(assert (=> b!7876438 (=> res!3128511 e!4651982)))

(assert (=> b!7876438 (= res!3128511 (not ((_ is Concat!30014) lt!2681010)))))

(declare-fun e!4651976 () Bool)

(assert (=> b!7876438 (= e!4651976 e!4651982)))

(declare-fun d!2355667 () Bool)

(declare-fun res!3128509 () Bool)

(declare-fun e!4651977 () Bool)

(assert (=> d!2355667 (=> res!3128509 e!4651977)))

(assert (=> d!2355667 (= res!3128509 ((_ is ElementMatch!21169) lt!2681010))))

(assert (=> d!2355667 (= (validRegex!11579 lt!2681010) e!4651977)))

(declare-fun c!1446500 () Bool)

(declare-fun c!1446501 () Bool)

(declare-fun bm!730414 () Bool)

(assert (=> bm!730414 (= call!730420 (validRegex!11579 (ite c!1446500 (reg!21498 lt!2681010) (ite c!1446501 (regOne!42851 lt!2681010) (regTwo!42850 lt!2681010)))))))

(declare-fun bm!730415 () Bool)

(assert (=> bm!730415 (= call!730421 call!730420)))

(declare-fun b!7876439 () Bool)

(declare-fun e!4651979 () Bool)

(declare-fun call!730419 () Bool)

(assert (=> b!7876439 (= e!4651979 call!730419)))

(declare-fun b!7876440 () Bool)

(assert (=> b!7876440 (= e!4651982 e!4651978)))

(declare-fun res!3128513 () Bool)

(assert (=> b!7876440 (=> (not res!3128513) (not e!4651978))))

(assert (=> b!7876440 (= res!3128513 call!730419)))

(declare-fun b!7876441 () Bool)

(declare-fun res!3128510 () Bool)

(assert (=> b!7876441 (=> (not res!3128510) (not e!4651979))))

(assert (=> b!7876441 (= res!3128510 call!730421)))

(assert (=> b!7876441 (= e!4651976 e!4651979)))

(declare-fun bm!730416 () Bool)

(assert (=> bm!730416 (= call!730419 (validRegex!11579 (ite c!1446501 (regTwo!42851 lt!2681010) (regOne!42850 lt!2681010))))))

(declare-fun b!7876442 () Bool)

(assert (=> b!7876442 (= e!4651980 e!4651976)))

(assert (=> b!7876442 (= c!1446501 ((_ is Union!21169) lt!2681010))))

(declare-fun b!7876443 () Bool)

(assert (=> b!7876443 (= e!4651977 e!4651980)))

(assert (=> b!7876443 (= c!1446500 ((_ is Star!21169) lt!2681010))))

(assert (= (and d!2355667 (not res!3128509)) b!7876443))

(assert (= (and b!7876443 c!1446500) b!7876435))

(assert (= (and b!7876443 (not c!1446500)) b!7876442))

(assert (= (and b!7876435 res!3128512) b!7876437))

(assert (= (and b!7876442 c!1446501) b!7876441))

(assert (= (and b!7876442 (not c!1446501)) b!7876438))

(assert (= (and b!7876441 res!3128510) b!7876439))

(assert (= (and b!7876438 (not res!3128511)) b!7876440))

(assert (= (and b!7876440 res!3128513) b!7876436))

(assert (= (or b!7876439 b!7876440) bm!730416))

(assert (= (or b!7876441 b!7876436) bm!730415))

(assert (= (or b!7876437 bm!730415) bm!730414))

(declare-fun m!8266448 () Bool)

(assert (=> b!7876435 m!8266448))

(declare-fun m!8266450 () Bool)

(assert (=> bm!730414 m!8266450))

(declare-fun m!8266452 () Bool)

(assert (=> bm!730416 m!8266452))

(assert (=> b!7876390 d!2355667))

(declare-fun b!7876501 () Bool)

(declare-fun e!4652018 () Regex!21169)

(declare-fun call!730438 () Regex!21169)

(assert (=> b!7876501 (= e!4652018 (Union!21169 (Concat!30014 call!730438 (regTwo!42850 r2!6138)) EmptyLang!21169))))

(declare-fun b!7876502 () Bool)

(declare-fun e!4652017 () Regex!21169)

(declare-fun e!4652015 () Regex!21169)

(assert (=> b!7876502 (= e!4652017 e!4652015)))

(declare-fun c!1446520 () Bool)

(assert (=> b!7876502 (= c!1446520 ((_ is Star!21169) r2!6138))))

(declare-fun call!730435 () Regex!21169)

(declare-fun c!1446522 () Bool)

(declare-fun bm!730430 () Bool)

(assert (=> bm!730430 (= call!730435 (derivativeStep!6400 (ite c!1446522 (regOne!42851 r2!6138) (regTwo!42850 r2!6138)) (h!80352 s!14219)))))

(declare-fun bm!730431 () Bool)

(declare-fun call!730436 () Regex!21169)

(assert (=> bm!730431 (= call!730438 call!730436)))

(declare-fun b!7876503 () Bool)

(declare-fun e!4652014 () Regex!21169)

(assert (=> b!7876503 (= e!4652014 (ite (= (h!80352 s!14219) (c!1446491 r2!6138)) EmptyExpr!21169 EmptyLang!21169))))

(declare-fun call!730437 () Regex!21169)

(declare-fun bm!730432 () Bool)

(assert (=> bm!730432 (= call!730437 (derivativeStep!6400 (ite c!1446522 (regTwo!42851 r2!6138) (ite c!1446520 (reg!21498 r2!6138) (regOne!42850 r2!6138))) (h!80352 s!14219)))))

(declare-fun b!7876504 () Bool)

(declare-fun e!4652016 () Regex!21169)

(assert (=> b!7876504 (= e!4652016 e!4652014)))

(declare-fun c!1446521 () Bool)

(assert (=> b!7876504 (= c!1446521 ((_ is ElementMatch!21169) r2!6138))))

(declare-fun b!7876505 () Bool)

(assert (=> b!7876505 (= e!4652018 (Union!21169 (Concat!30014 call!730438 (regTwo!42850 r2!6138)) call!730435))))

(declare-fun b!7876506 () Bool)

(assert (=> b!7876506 (= e!4652016 EmptyLang!21169)))

(declare-fun b!7876507 () Bool)

(assert (=> b!7876507 (= e!4652015 (Concat!30014 call!730436 r2!6138))))

(declare-fun b!7876508 () Bool)

(assert (=> b!7876508 (= c!1446522 ((_ is Union!21169) r2!6138))))

(assert (=> b!7876508 (= e!4652014 e!4652017)))

(declare-fun b!7876509 () Bool)

(assert (=> b!7876509 (= e!4652017 (Union!21169 call!730435 call!730437))))

(declare-fun b!7876510 () Bool)

(declare-fun c!1446523 () Bool)

(assert (=> b!7876510 (= c!1446523 (nullable!9432 (regOne!42850 r2!6138)))))

(assert (=> b!7876510 (= e!4652015 e!4652018)))

(declare-fun d!2355671 () Bool)

(declare-fun lt!2681016 () Regex!21169)

(assert (=> d!2355671 (validRegex!11579 lt!2681016)))

(assert (=> d!2355671 (= lt!2681016 e!4652016)))

(declare-fun c!1446524 () Bool)

(assert (=> d!2355671 (= c!1446524 (or ((_ is EmptyExpr!21169) r2!6138) ((_ is EmptyLang!21169) r2!6138)))))

(assert (=> d!2355671 (validRegex!11579 r2!6138)))

(assert (=> d!2355671 (= (derivativeStep!6400 r2!6138 (h!80352 s!14219)) lt!2681016)))

(declare-fun bm!730433 () Bool)

(assert (=> bm!730433 (= call!730436 call!730437)))

(assert (= (and d!2355671 c!1446524) b!7876506))

(assert (= (and d!2355671 (not c!1446524)) b!7876504))

(assert (= (and b!7876504 c!1446521) b!7876503))

(assert (= (and b!7876504 (not c!1446521)) b!7876508))

(assert (= (and b!7876508 c!1446522) b!7876509))

(assert (= (and b!7876508 (not c!1446522)) b!7876502))

(assert (= (and b!7876502 c!1446520) b!7876507))

(assert (= (and b!7876502 (not c!1446520)) b!7876510))

(assert (= (and b!7876510 c!1446523) b!7876505))

(assert (= (and b!7876510 (not c!1446523)) b!7876501))

(assert (= (or b!7876505 b!7876501) bm!730431))

(assert (= (or b!7876507 bm!730431) bm!730433))

(assert (= (or b!7876509 bm!730433) bm!730432))

(assert (= (or b!7876509 b!7876505) bm!730430))

(declare-fun m!8266460 () Bool)

(assert (=> bm!730430 m!8266460))

(declare-fun m!8266462 () Bool)

(assert (=> bm!730432 m!8266462))

(declare-fun m!8266464 () Bool)

(assert (=> b!7876510 m!8266464))

(declare-fun m!8266466 () Bool)

(assert (=> d!2355671 m!8266466))

(assert (=> d!2355671 m!8266446))

(assert (=> b!7876390 d!2355671))

(declare-fun b!7876511 () Bool)

(declare-fun e!4652023 () Regex!21169)

(declare-fun call!730442 () Regex!21169)

(assert (=> b!7876511 (= e!4652023 (Union!21169 (Concat!30014 call!730442 (regTwo!42850 r1!6200)) EmptyLang!21169))))

(declare-fun b!7876512 () Bool)

(declare-fun e!4652022 () Regex!21169)

(declare-fun e!4652020 () Regex!21169)

(assert (=> b!7876512 (= e!4652022 e!4652020)))

(declare-fun c!1446525 () Bool)

(assert (=> b!7876512 (= c!1446525 ((_ is Star!21169) r1!6200))))

(declare-fun bm!730434 () Bool)

(declare-fun call!730439 () Regex!21169)

(declare-fun c!1446527 () Bool)

(assert (=> bm!730434 (= call!730439 (derivativeStep!6400 (ite c!1446527 (regOne!42851 r1!6200) (regTwo!42850 r1!6200)) (h!80352 s!14219)))))

(declare-fun bm!730435 () Bool)

(declare-fun call!730440 () Regex!21169)

(assert (=> bm!730435 (= call!730442 call!730440)))

(declare-fun b!7876513 () Bool)

(declare-fun e!4652019 () Regex!21169)

(assert (=> b!7876513 (= e!4652019 (ite (= (h!80352 s!14219) (c!1446491 r1!6200)) EmptyExpr!21169 EmptyLang!21169))))

(declare-fun bm!730436 () Bool)

(declare-fun call!730441 () Regex!21169)

(assert (=> bm!730436 (= call!730441 (derivativeStep!6400 (ite c!1446527 (regTwo!42851 r1!6200) (ite c!1446525 (reg!21498 r1!6200) (regOne!42850 r1!6200))) (h!80352 s!14219)))))

(declare-fun b!7876514 () Bool)

(declare-fun e!4652021 () Regex!21169)

(assert (=> b!7876514 (= e!4652021 e!4652019)))

(declare-fun c!1446526 () Bool)

(assert (=> b!7876514 (= c!1446526 ((_ is ElementMatch!21169) r1!6200))))

(declare-fun b!7876515 () Bool)

(assert (=> b!7876515 (= e!4652023 (Union!21169 (Concat!30014 call!730442 (regTwo!42850 r1!6200)) call!730439))))

(declare-fun b!7876516 () Bool)

(assert (=> b!7876516 (= e!4652021 EmptyLang!21169)))

(declare-fun b!7876517 () Bool)

(assert (=> b!7876517 (= e!4652020 (Concat!30014 call!730440 r1!6200))))

(declare-fun b!7876518 () Bool)

(assert (=> b!7876518 (= c!1446527 ((_ is Union!21169) r1!6200))))

(assert (=> b!7876518 (= e!4652019 e!4652022)))

(declare-fun b!7876519 () Bool)

(assert (=> b!7876519 (= e!4652022 (Union!21169 call!730439 call!730441))))

(declare-fun b!7876520 () Bool)

(declare-fun c!1446528 () Bool)

(assert (=> b!7876520 (= c!1446528 (nullable!9432 (regOne!42850 r1!6200)))))

(assert (=> b!7876520 (= e!4652020 e!4652023)))

(declare-fun d!2355675 () Bool)

(declare-fun lt!2681017 () Regex!21169)

(assert (=> d!2355675 (validRegex!11579 lt!2681017)))

(assert (=> d!2355675 (= lt!2681017 e!4652021)))

(declare-fun c!1446529 () Bool)

(assert (=> d!2355675 (= c!1446529 (or ((_ is EmptyExpr!21169) r1!6200) ((_ is EmptyLang!21169) r1!6200)))))

(assert (=> d!2355675 (validRegex!11579 r1!6200)))

(assert (=> d!2355675 (= (derivativeStep!6400 r1!6200 (h!80352 s!14219)) lt!2681017)))

(declare-fun bm!730437 () Bool)

(assert (=> bm!730437 (= call!730440 call!730441)))

(assert (= (and d!2355675 c!1446529) b!7876516))

(assert (= (and d!2355675 (not c!1446529)) b!7876514))

(assert (= (and b!7876514 c!1446526) b!7876513))

(assert (= (and b!7876514 (not c!1446526)) b!7876518))

(assert (= (and b!7876518 c!1446527) b!7876519))

(assert (= (and b!7876518 (not c!1446527)) b!7876512))

(assert (= (and b!7876512 c!1446525) b!7876517))

(assert (= (and b!7876512 (not c!1446525)) b!7876520))

(assert (= (and b!7876520 c!1446528) b!7876515))

(assert (= (and b!7876520 (not c!1446528)) b!7876511))

(assert (= (or b!7876515 b!7876511) bm!730435))

(assert (= (or b!7876517 bm!730435) bm!730437))

(assert (= (or b!7876519 bm!730437) bm!730436))

(assert (= (or b!7876519 b!7876515) bm!730434))

(declare-fun m!8266468 () Bool)

(assert (=> bm!730434 m!8266468))

(declare-fun m!8266470 () Bool)

(assert (=> bm!730436 m!8266470))

(declare-fun m!8266472 () Bool)

(assert (=> b!7876520 m!8266472))

(declare-fun m!8266474 () Bool)

(assert (=> d!2355675 m!8266474))

(assert (=> d!2355675 m!8266436))

(assert (=> b!7876390 d!2355675))

(declare-fun b!7876521 () Bool)

(declare-fun e!4652028 () Bool)

(declare-fun e!4652029 () Bool)

(assert (=> b!7876521 (= e!4652028 e!4652029)))

(declare-fun res!3128538 () Bool)

(assert (=> b!7876521 (= res!3128538 (not (nullable!9432 (reg!21498 r2!6138))))))

(assert (=> b!7876521 (=> (not res!3128538) (not e!4652029))))

(declare-fun b!7876522 () Bool)

(declare-fun e!4652026 () Bool)

(declare-fun call!730445 () Bool)

(assert (=> b!7876522 (= e!4652026 call!730445)))

(declare-fun b!7876523 () Bool)

(declare-fun call!730444 () Bool)

(assert (=> b!7876523 (= e!4652029 call!730444)))

(declare-fun b!7876524 () Bool)

(declare-fun res!3128537 () Bool)

(declare-fun e!4652030 () Bool)

(assert (=> b!7876524 (=> res!3128537 e!4652030)))

(assert (=> b!7876524 (= res!3128537 (not ((_ is Concat!30014) r2!6138)))))

(declare-fun e!4652024 () Bool)

(assert (=> b!7876524 (= e!4652024 e!4652030)))

(declare-fun d!2355677 () Bool)

(declare-fun res!3128535 () Bool)

(declare-fun e!4652025 () Bool)

(assert (=> d!2355677 (=> res!3128535 e!4652025)))

(assert (=> d!2355677 (= res!3128535 ((_ is ElementMatch!21169) r2!6138))))

(assert (=> d!2355677 (= (validRegex!11579 r2!6138) e!4652025)))

(declare-fun c!1446531 () Bool)

(declare-fun c!1446530 () Bool)

(declare-fun bm!730438 () Bool)

(assert (=> bm!730438 (= call!730444 (validRegex!11579 (ite c!1446530 (reg!21498 r2!6138) (ite c!1446531 (regOne!42851 r2!6138) (regTwo!42850 r2!6138)))))))

(declare-fun bm!730439 () Bool)

(assert (=> bm!730439 (= call!730445 call!730444)))

(declare-fun b!7876525 () Bool)

(declare-fun e!4652027 () Bool)

(declare-fun call!730443 () Bool)

(assert (=> b!7876525 (= e!4652027 call!730443)))

(declare-fun b!7876526 () Bool)

(assert (=> b!7876526 (= e!4652030 e!4652026)))

(declare-fun res!3128539 () Bool)

(assert (=> b!7876526 (=> (not res!3128539) (not e!4652026))))

(assert (=> b!7876526 (= res!3128539 call!730443)))

(declare-fun b!7876527 () Bool)

(declare-fun res!3128536 () Bool)

(assert (=> b!7876527 (=> (not res!3128536) (not e!4652027))))

(assert (=> b!7876527 (= res!3128536 call!730445)))

(assert (=> b!7876527 (= e!4652024 e!4652027)))

(declare-fun bm!730440 () Bool)

(assert (=> bm!730440 (= call!730443 (validRegex!11579 (ite c!1446531 (regTwo!42851 r2!6138) (regOne!42850 r2!6138))))))

(declare-fun b!7876528 () Bool)

(assert (=> b!7876528 (= e!4652028 e!4652024)))

(assert (=> b!7876528 (= c!1446531 ((_ is Union!21169) r2!6138))))

(declare-fun b!7876529 () Bool)

(assert (=> b!7876529 (= e!4652025 e!4652028)))

(assert (=> b!7876529 (= c!1446530 ((_ is Star!21169) r2!6138))))

(assert (= (and d!2355677 (not res!3128535)) b!7876529))

(assert (= (and b!7876529 c!1446530) b!7876521))

(assert (= (and b!7876529 (not c!1446530)) b!7876528))

(assert (= (and b!7876521 res!3128538) b!7876523))

(assert (= (and b!7876528 c!1446531) b!7876527))

(assert (= (and b!7876528 (not c!1446531)) b!7876524))

(assert (= (and b!7876527 res!3128536) b!7876525))

(assert (= (and b!7876524 (not res!3128537)) b!7876526))

(assert (= (and b!7876526 res!3128539) b!7876522))

(assert (= (or b!7876525 b!7876526) bm!730440))

(assert (= (or b!7876527 b!7876522) bm!730439))

(assert (= (or b!7876523 bm!730439) bm!730438))

(declare-fun m!8266476 () Bool)

(assert (=> b!7876521 m!8266476))

(declare-fun m!8266478 () Bool)

(assert (=> bm!730438 m!8266478))

(declare-fun m!8266480 () Bool)

(assert (=> bm!730440 m!8266480))

(assert (=> b!7876395 d!2355677))

(declare-fun b!7876619 () Bool)

(declare-fun e!4652084 () Bool)

(declare-fun head!16111 (List!74028) C!42664)

(declare-fun tail!15654 (List!74028) List!74028)

(assert (=> b!7876619 (= e!4652084 (matchR!10605 (derivativeStep!6400 r1!6200 (head!16111 s!14219)) (tail!15654 s!14219)))))

(declare-fun d!2355679 () Bool)

(declare-fun e!4652088 () Bool)

(assert (=> d!2355679 e!4652088))

(declare-fun c!1446559 () Bool)

(assert (=> d!2355679 (= c!1446559 ((_ is EmptyExpr!21169) r1!6200))))

(declare-fun lt!2681023 () Bool)

(assert (=> d!2355679 (= lt!2681023 e!4652084)))

(declare-fun c!1446558 () Bool)

(declare-fun isEmpty!42400 (List!74028) Bool)

(assert (=> d!2355679 (= c!1446558 (isEmpty!42400 s!14219))))

(assert (=> d!2355679 (validRegex!11579 r1!6200)))

(assert (=> d!2355679 (= (matchR!10605 r1!6200 s!14219) lt!2681023)))

(declare-fun b!7876620 () Bool)

(declare-fun e!4652083 () Bool)

(assert (=> b!7876620 (= e!4652083 (not (= (head!16111 s!14219) (c!1446491 r1!6200))))))

(declare-fun b!7876621 () Bool)

(declare-fun call!730466 () Bool)

(assert (=> b!7876621 (= e!4652088 (= lt!2681023 call!730466))))

(declare-fun bm!730461 () Bool)

(assert (=> bm!730461 (= call!730466 (isEmpty!42400 s!14219))))

(declare-fun b!7876622 () Bool)

(declare-fun e!4652089 () Bool)

(assert (=> b!7876622 (= e!4652089 (= (head!16111 s!14219) (c!1446491 r1!6200)))))

(declare-fun b!7876623 () Bool)

(assert (=> b!7876623 (= e!4652084 (nullable!9432 r1!6200))))

(declare-fun b!7876624 () Bool)

(declare-fun res!3128585 () Bool)

(assert (=> b!7876624 (=> res!3128585 e!4652083)))

(assert (=> b!7876624 (= res!3128585 (not (isEmpty!42400 (tail!15654 s!14219))))))

(declare-fun b!7876625 () Bool)

(declare-fun res!3128586 () Bool)

(assert (=> b!7876625 (=> (not res!3128586) (not e!4652089))))

(assert (=> b!7876625 (= res!3128586 (not call!730466))))

(declare-fun b!7876626 () Bool)

(declare-fun res!3128580 () Bool)

(declare-fun e!4652086 () Bool)

(assert (=> b!7876626 (=> res!3128580 e!4652086)))

(assert (=> b!7876626 (= res!3128580 (not ((_ is ElementMatch!21169) r1!6200)))))

(declare-fun e!4652085 () Bool)

(assert (=> b!7876626 (= e!4652085 e!4652086)))

(declare-fun b!7876627 () Bool)

(declare-fun e!4652087 () Bool)

(assert (=> b!7876627 (= e!4652087 e!4652083)))

(declare-fun res!3128584 () Bool)

(assert (=> b!7876627 (=> res!3128584 e!4652083)))

(assert (=> b!7876627 (= res!3128584 call!730466)))

(declare-fun b!7876628 () Bool)

(assert (=> b!7876628 (= e!4652088 e!4652085)))

(declare-fun c!1446557 () Bool)

(assert (=> b!7876628 (= c!1446557 ((_ is EmptyLang!21169) r1!6200))))

(declare-fun b!7876629 () Bool)

(declare-fun res!3128582 () Bool)

(assert (=> b!7876629 (=> (not res!3128582) (not e!4652089))))

(assert (=> b!7876629 (= res!3128582 (isEmpty!42400 (tail!15654 s!14219)))))

(declare-fun b!7876630 () Bool)

(assert (=> b!7876630 (= e!4652085 (not lt!2681023))))

(declare-fun b!7876631 () Bool)

(declare-fun res!3128583 () Bool)

(assert (=> b!7876631 (=> res!3128583 e!4652086)))

(assert (=> b!7876631 (= res!3128583 e!4652089)))

(declare-fun res!3128579 () Bool)

(assert (=> b!7876631 (=> (not res!3128579) (not e!4652089))))

(assert (=> b!7876631 (= res!3128579 lt!2681023)))

(declare-fun b!7876632 () Bool)

(assert (=> b!7876632 (= e!4652086 e!4652087)))

(declare-fun res!3128581 () Bool)

(assert (=> b!7876632 (=> (not res!3128581) (not e!4652087))))

(assert (=> b!7876632 (= res!3128581 (not lt!2681023))))

(assert (= (and d!2355679 c!1446558) b!7876623))

(assert (= (and d!2355679 (not c!1446558)) b!7876619))

(assert (= (and d!2355679 c!1446559) b!7876621))

(assert (= (and d!2355679 (not c!1446559)) b!7876628))

(assert (= (and b!7876628 c!1446557) b!7876630))

(assert (= (and b!7876628 (not c!1446557)) b!7876626))

(assert (= (and b!7876626 (not res!3128580)) b!7876631))

(assert (= (and b!7876631 res!3128579) b!7876625))

(assert (= (and b!7876625 res!3128586) b!7876629))

(assert (= (and b!7876629 res!3128582) b!7876622))

(assert (= (and b!7876631 (not res!3128583)) b!7876632))

(assert (= (and b!7876632 res!3128581) b!7876627))

(assert (= (and b!7876627 (not res!3128584)) b!7876624))

(assert (= (and b!7876624 (not res!3128585)) b!7876620))

(assert (= (or b!7876621 b!7876625 b!7876627) bm!730461))

(declare-fun m!8266514 () Bool)

(assert (=> b!7876619 m!8266514))

(assert (=> b!7876619 m!8266514))

(declare-fun m!8266516 () Bool)

(assert (=> b!7876619 m!8266516))

(declare-fun m!8266518 () Bool)

(assert (=> b!7876619 m!8266518))

(assert (=> b!7876619 m!8266516))

(assert (=> b!7876619 m!8266518))

(declare-fun m!8266520 () Bool)

(assert (=> b!7876619 m!8266520))

(declare-fun m!8266522 () Bool)

(assert (=> d!2355679 m!8266522))

(assert (=> d!2355679 m!8266436))

(assert (=> b!7876620 m!8266514))

(assert (=> bm!730461 m!8266522))

(assert (=> b!7876622 m!8266514))

(declare-fun m!8266524 () Bool)

(assert (=> b!7876623 m!8266524))

(assert (=> b!7876629 m!8266518))

(assert (=> b!7876629 m!8266518))

(declare-fun m!8266526 () Bool)

(assert (=> b!7876629 m!8266526))

(assert (=> b!7876624 m!8266518))

(assert (=> b!7876624 m!8266518))

(assert (=> b!7876624 m!8266526))

(assert (=> b!7876393 d!2355679))

(declare-fun b!7876633 () Bool)

(declare-fun e!4652094 () Bool)

(declare-fun e!4652095 () Bool)

(assert (=> b!7876633 (= e!4652094 e!4652095)))

(declare-fun res!3128590 () Bool)

(assert (=> b!7876633 (= res!3128590 (not (nullable!9432 (reg!21498 r1!6200))))))

(assert (=> b!7876633 (=> (not res!3128590) (not e!4652095))))

(declare-fun b!7876634 () Bool)

(declare-fun e!4652092 () Bool)

(declare-fun call!730469 () Bool)

(assert (=> b!7876634 (= e!4652092 call!730469)))

(declare-fun b!7876635 () Bool)

(declare-fun call!730468 () Bool)

(assert (=> b!7876635 (= e!4652095 call!730468)))

(declare-fun b!7876636 () Bool)

(declare-fun res!3128589 () Bool)

(declare-fun e!4652096 () Bool)

(assert (=> b!7876636 (=> res!3128589 e!4652096)))

(assert (=> b!7876636 (= res!3128589 (not ((_ is Concat!30014) r1!6200)))))

(declare-fun e!4652090 () Bool)

(assert (=> b!7876636 (= e!4652090 e!4652096)))

(declare-fun d!2355689 () Bool)

(declare-fun res!3128587 () Bool)

(declare-fun e!4652091 () Bool)

(assert (=> d!2355689 (=> res!3128587 e!4652091)))

(assert (=> d!2355689 (= res!3128587 ((_ is ElementMatch!21169) r1!6200))))

(assert (=> d!2355689 (= (validRegex!11579 r1!6200) e!4652091)))

(declare-fun c!1446561 () Bool)

(declare-fun bm!730462 () Bool)

(declare-fun c!1446560 () Bool)

(assert (=> bm!730462 (= call!730468 (validRegex!11579 (ite c!1446560 (reg!21498 r1!6200) (ite c!1446561 (regOne!42851 r1!6200) (regTwo!42850 r1!6200)))))))

(declare-fun bm!730463 () Bool)

(assert (=> bm!730463 (= call!730469 call!730468)))

(declare-fun b!7876637 () Bool)

(declare-fun e!4652093 () Bool)

(declare-fun call!730467 () Bool)

(assert (=> b!7876637 (= e!4652093 call!730467)))

(declare-fun b!7876638 () Bool)

(assert (=> b!7876638 (= e!4652096 e!4652092)))

(declare-fun res!3128591 () Bool)

(assert (=> b!7876638 (=> (not res!3128591) (not e!4652092))))

(assert (=> b!7876638 (= res!3128591 call!730467)))

(declare-fun b!7876639 () Bool)

(declare-fun res!3128588 () Bool)

(assert (=> b!7876639 (=> (not res!3128588) (not e!4652093))))

(assert (=> b!7876639 (= res!3128588 call!730469)))

(assert (=> b!7876639 (= e!4652090 e!4652093)))

(declare-fun bm!730464 () Bool)

(assert (=> bm!730464 (= call!730467 (validRegex!11579 (ite c!1446561 (regTwo!42851 r1!6200) (regOne!42850 r1!6200))))))

(declare-fun b!7876640 () Bool)

(assert (=> b!7876640 (= e!4652094 e!4652090)))

(assert (=> b!7876640 (= c!1446561 ((_ is Union!21169) r1!6200))))

(declare-fun b!7876641 () Bool)

(assert (=> b!7876641 (= e!4652091 e!4652094)))

(assert (=> b!7876641 (= c!1446560 ((_ is Star!21169) r1!6200))))

(assert (= (and d!2355689 (not res!3128587)) b!7876641))

(assert (= (and b!7876641 c!1446560) b!7876633))

(assert (= (and b!7876641 (not c!1446560)) b!7876640))

(assert (= (and b!7876633 res!3128590) b!7876635))

(assert (= (and b!7876640 c!1446561) b!7876639))

(assert (= (and b!7876640 (not c!1446561)) b!7876636))

(assert (= (and b!7876639 res!3128588) b!7876637))

(assert (= (and b!7876636 (not res!3128589)) b!7876638))

(assert (= (and b!7876638 res!3128591) b!7876634))

(assert (= (or b!7876637 b!7876638) bm!730464))

(assert (= (or b!7876639 b!7876634) bm!730463))

(assert (= (or b!7876635 bm!730463) bm!730462))

(declare-fun m!8266528 () Bool)

(assert (=> b!7876633 m!8266528))

(declare-fun m!8266530 () Bool)

(assert (=> bm!730462 m!8266530))

(declare-fun m!8266532 () Bool)

(assert (=> bm!730464 m!8266532))

(assert (=> start!744134 d!2355689))

(declare-fun b!7876642 () Bool)

(declare-fun e!4652101 () Bool)

(declare-fun e!4652102 () Bool)

(assert (=> b!7876642 (= e!4652101 e!4652102)))

(declare-fun res!3128595 () Bool)

(assert (=> b!7876642 (= res!3128595 (not (nullable!9432 (reg!21498 lt!2681011))))))

(assert (=> b!7876642 (=> (not res!3128595) (not e!4652102))))

(declare-fun b!7876643 () Bool)

(declare-fun e!4652099 () Bool)

(declare-fun call!730472 () Bool)

(assert (=> b!7876643 (= e!4652099 call!730472)))

(declare-fun b!7876644 () Bool)

(declare-fun call!730471 () Bool)

(assert (=> b!7876644 (= e!4652102 call!730471)))

(declare-fun b!7876645 () Bool)

(declare-fun res!3128594 () Bool)

(declare-fun e!4652103 () Bool)

(assert (=> b!7876645 (=> res!3128594 e!4652103)))

(assert (=> b!7876645 (= res!3128594 (not ((_ is Concat!30014) lt!2681011)))))

(declare-fun e!4652097 () Bool)

(assert (=> b!7876645 (= e!4652097 e!4652103)))

(declare-fun d!2355691 () Bool)

(declare-fun res!3128592 () Bool)

(declare-fun e!4652098 () Bool)

(assert (=> d!2355691 (=> res!3128592 e!4652098)))

(assert (=> d!2355691 (= res!3128592 ((_ is ElementMatch!21169) lt!2681011))))

(assert (=> d!2355691 (= (validRegex!11579 lt!2681011) e!4652098)))

(declare-fun c!1446563 () Bool)

(declare-fun c!1446562 () Bool)

(declare-fun bm!730465 () Bool)

(assert (=> bm!730465 (= call!730471 (validRegex!11579 (ite c!1446562 (reg!21498 lt!2681011) (ite c!1446563 (regOne!42851 lt!2681011) (regTwo!42850 lt!2681011)))))))

(declare-fun bm!730466 () Bool)

(assert (=> bm!730466 (= call!730472 call!730471)))

(declare-fun b!7876646 () Bool)

(declare-fun e!4652100 () Bool)

(declare-fun call!730470 () Bool)

(assert (=> b!7876646 (= e!4652100 call!730470)))

(declare-fun b!7876647 () Bool)

(assert (=> b!7876647 (= e!4652103 e!4652099)))

(declare-fun res!3128596 () Bool)

(assert (=> b!7876647 (=> (not res!3128596) (not e!4652099))))

(assert (=> b!7876647 (= res!3128596 call!730470)))

(declare-fun b!7876648 () Bool)

(declare-fun res!3128593 () Bool)

(assert (=> b!7876648 (=> (not res!3128593) (not e!4652100))))

(assert (=> b!7876648 (= res!3128593 call!730472)))

(assert (=> b!7876648 (= e!4652097 e!4652100)))

(declare-fun bm!730467 () Bool)

(assert (=> bm!730467 (= call!730470 (validRegex!11579 (ite c!1446563 (regTwo!42851 lt!2681011) (regOne!42850 lt!2681011))))))

(declare-fun b!7876649 () Bool)

(assert (=> b!7876649 (= e!4652101 e!4652097)))

(assert (=> b!7876649 (= c!1446563 ((_ is Union!21169) lt!2681011))))

(declare-fun b!7876650 () Bool)

(assert (=> b!7876650 (= e!4652098 e!4652101)))

(assert (=> b!7876650 (= c!1446562 ((_ is Star!21169) lt!2681011))))

(assert (= (and d!2355691 (not res!3128592)) b!7876650))

(assert (= (and b!7876650 c!1446562) b!7876642))

(assert (= (and b!7876650 (not c!1446562)) b!7876649))

(assert (= (and b!7876642 res!3128595) b!7876644))

(assert (= (and b!7876649 c!1446563) b!7876648))

(assert (= (and b!7876649 (not c!1446563)) b!7876645))

(assert (= (and b!7876648 res!3128593) b!7876646))

(assert (= (and b!7876645 (not res!3128594)) b!7876647))

(assert (= (and b!7876647 res!3128596) b!7876643))

(assert (= (or b!7876646 b!7876647) bm!730467))

(assert (= (or b!7876648 b!7876643) bm!730466))

(assert (= (or b!7876644 bm!730466) bm!730465))

(declare-fun m!8266534 () Bool)

(assert (=> b!7876642 m!8266534))

(declare-fun m!8266536 () Bool)

(assert (=> bm!730465 m!8266536))

(declare-fun m!8266538 () Bool)

(assert (=> bm!730467 m!8266538))

(assert (=> b!7876387 d!2355691))

(declare-fun b!7876671 () Bool)

(declare-fun e!4652111 () Bool)

(assert (=> b!7876671 (= e!4652111 tp_is_empty!52737)))

(declare-fun b!7876673 () Bool)

(declare-fun tp!2339709 () Bool)

(assert (=> b!7876673 (= e!4652111 tp!2339709)))

(declare-fun b!7876672 () Bool)

(declare-fun tp!2339711 () Bool)

(declare-fun tp!2339712 () Bool)

(assert (=> b!7876672 (= e!4652111 (and tp!2339711 tp!2339712))))

(assert (=> b!7876396 (= tp!2339691 e!4652111)))

(declare-fun b!7876674 () Bool)

(declare-fun tp!2339713 () Bool)

(declare-fun tp!2339710 () Bool)

(assert (=> b!7876674 (= e!4652111 (and tp!2339713 tp!2339710))))

(assert (= (and b!7876396 ((_ is ElementMatch!21169) (regOne!42851 r1!6200))) b!7876671))

(assert (= (and b!7876396 ((_ is Concat!30014) (regOne!42851 r1!6200))) b!7876672))

(assert (= (and b!7876396 ((_ is Star!21169) (regOne!42851 r1!6200))) b!7876673))

(assert (= (and b!7876396 ((_ is Union!21169) (regOne!42851 r1!6200))) b!7876674))

(declare-fun b!7876675 () Bool)

(declare-fun e!4652112 () Bool)

(assert (=> b!7876675 (= e!4652112 tp_is_empty!52737)))

(declare-fun b!7876677 () Bool)

(declare-fun tp!2339714 () Bool)

(assert (=> b!7876677 (= e!4652112 tp!2339714)))

(declare-fun b!7876676 () Bool)

(declare-fun tp!2339716 () Bool)

(declare-fun tp!2339717 () Bool)

(assert (=> b!7876676 (= e!4652112 (and tp!2339716 tp!2339717))))

(assert (=> b!7876396 (= tp!2339690 e!4652112)))

(declare-fun b!7876678 () Bool)

(declare-fun tp!2339718 () Bool)

(declare-fun tp!2339715 () Bool)

(assert (=> b!7876678 (= e!4652112 (and tp!2339718 tp!2339715))))

(assert (= (and b!7876396 ((_ is ElementMatch!21169) (regTwo!42851 r1!6200))) b!7876675))

(assert (= (and b!7876396 ((_ is Concat!30014) (regTwo!42851 r1!6200))) b!7876676))

(assert (= (and b!7876396 ((_ is Star!21169) (regTwo!42851 r1!6200))) b!7876677))

(assert (= (and b!7876396 ((_ is Union!21169) (regTwo!42851 r1!6200))) b!7876678))

(declare-fun b!7876679 () Bool)

(declare-fun e!4652113 () Bool)

(assert (=> b!7876679 (= e!4652113 tp_is_empty!52737)))

(declare-fun b!7876681 () Bool)

(declare-fun tp!2339719 () Bool)

(assert (=> b!7876681 (= e!4652113 tp!2339719)))

(declare-fun b!7876680 () Bool)

(declare-fun tp!2339721 () Bool)

(declare-fun tp!2339722 () Bool)

(assert (=> b!7876680 (= e!4652113 (and tp!2339721 tp!2339722))))

(assert (=> b!7876385 (= tp!2339698 e!4652113)))

(declare-fun b!7876682 () Bool)

(declare-fun tp!2339723 () Bool)

(declare-fun tp!2339720 () Bool)

(assert (=> b!7876682 (= e!4652113 (and tp!2339723 tp!2339720))))

(assert (= (and b!7876385 ((_ is ElementMatch!21169) (reg!21498 r1!6200))) b!7876679))

(assert (= (and b!7876385 ((_ is Concat!30014) (reg!21498 r1!6200))) b!7876680))

(assert (= (and b!7876385 ((_ is Star!21169) (reg!21498 r1!6200))) b!7876681))

(assert (= (and b!7876385 ((_ is Union!21169) (reg!21498 r1!6200))) b!7876682))

(declare-fun b!7876693 () Bool)

(declare-fun e!4652119 () Bool)

(assert (=> b!7876693 (= e!4652119 tp_is_empty!52737)))

(declare-fun b!7876695 () Bool)

(declare-fun tp!2339724 () Bool)

(assert (=> b!7876695 (= e!4652119 tp!2339724)))

(declare-fun b!7876694 () Bool)

(declare-fun tp!2339726 () Bool)

(declare-fun tp!2339727 () Bool)

(assert (=> b!7876694 (= e!4652119 (and tp!2339726 tp!2339727))))

(assert (=> b!7876391 (= tp!2339688 e!4652119)))

(declare-fun b!7876696 () Bool)

(declare-fun tp!2339728 () Bool)

(declare-fun tp!2339725 () Bool)

(assert (=> b!7876696 (= e!4652119 (and tp!2339728 tp!2339725))))

(assert (= (and b!7876391 ((_ is ElementMatch!21169) (regOne!42850 r2!6138))) b!7876693))

(assert (= (and b!7876391 ((_ is Concat!30014) (regOne!42850 r2!6138))) b!7876694))

(assert (= (and b!7876391 ((_ is Star!21169) (regOne!42850 r2!6138))) b!7876695))

(assert (= (and b!7876391 ((_ is Union!21169) (regOne!42850 r2!6138))) b!7876696))

(declare-fun b!7876697 () Bool)

(declare-fun e!4652120 () Bool)

(assert (=> b!7876697 (= e!4652120 tp_is_empty!52737)))

(declare-fun b!7876699 () Bool)

(declare-fun tp!2339729 () Bool)

(assert (=> b!7876699 (= e!4652120 tp!2339729)))

(declare-fun b!7876698 () Bool)

(declare-fun tp!2339731 () Bool)

(declare-fun tp!2339732 () Bool)

(assert (=> b!7876698 (= e!4652120 (and tp!2339731 tp!2339732))))

(assert (=> b!7876391 (= tp!2339689 e!4652120)))

(declare-fun b!7876700 () Bool)

(declare-fun tp!2339733 () Bool)

(declare-fun tp!2339730 () Bool)

(assert (=> b!7876700 (= e!4652120 (and tp!2339733 tp!2339730))))

(assert (= (and b!7876391 ((_ is ElementMatch!21169) (regTwo!42850 r2!6138))) b!7876697))

(assert (= (and b!7876391 ((_ is Concat!30014) (regTwo!42850 r2!6138))) b!7876698))

(assert (= (and b!7876391 ((_ is Star!21169) (regTwo!42850 r2!6138))) b!7876699))

(assert (= (and b!7876391 ((_ is Union!21169) (regTwo!42850 r2!6138))) b!7876700))

(declare-fun b!7876705 () Bool)

(declare-fun e!4652123 () Bool)

(declare-fun tp!2339736 () Bool)

(assert (=> b!7876705 (= e!4652123 (and tp_is_empty!52737 tp!2339736))))

(assert (=> b!7876388 (= tp!2339696 e!4652123)))

(assert (= (and b!7876388 ((_ is Cons!73904) (t!388763 s!14219))) b!7876705))

(declare-fun b!7876708 () Bool)

(declare-fun e!4652124 () Bool)

(assert (=> b!7876708 (= e!4652124 tp_is_empty!52737)))

(declare-fun b!7876712 () Bool)

(declare-fun tp!2339737 () Bool)

(assert (=> b!7876712 (= e!4652124 tp!2339737)))

(declare-fun b!7876711 () Bool)

(declare-fun tp!2339739 () Bool)

(declare-fun tp!2339740 () Bool)

(assert (=> b!7876711 (= e!4652124 (and tp!2339739 tp!2339740))))

(assert (=> b!7876392 (= tp!2339693 e!4652124)))

(declare-fun b!7876713 () Bool)

(declare-fun tp!2339741 () Bool)

(declare-fun tp!2339738 () Bool)

(assert (=> b!7876713 (= e!4652124 (and tp!2339741 tp!2339738))))

(assert (= (and b!7876392 ((_ is ElementMatch!21169) (reg!21498 r2!6138))) b!7876708))

(assert (= (and b!7876392 ((_ is Concat!30014) (reg!21498 r2!6138))) b!7876711))

(assert (= (and b!7876392 ((_ is Star!21169) (reg!21498 r2!6138))) b!7876712))

(assert (= (and b!7876392 ((_ is Union!21169) (reg!21498 r2!6138))) b!7876713))

(declare-fun b!7876717 () Bool)

(declare-fun e!4652127 () Bool)

(assert (=> b!7876717 (= e!4652127 tp_is_empty!52737)))

(declare-fun b!7876720 () Bool)

(declare-fun tp!2339746 () Bool)

(assert (=> b!7876720 (= e!4652127 tp!2339746)))

(declare-fun b!7876719 () Bool)

(declare-fun tp!2339748 () Bool)

(declare-fun tp!2339749 () Bool)

(assert (=> b!7876719 (= e!4652127 (and tp!2339748 tp!2339749))))

(assert (=> b!7876397 (= tp!2339697 e!4652127)))

(declare-fun b!7876721 () Bool)

(declare-fun tp!2339750 () Bool)

(declare-fun tp!2339747 () Bool)

(assert (=> b!7876721 (= e!4652127 (and tp!2339750 tp!2339747))))

(assert (= (and b!7876397 ((_ is ElementMatch!21169) (regOne!42851 r2!6138))) b!7876717))

(assert (= (and b!7876397 ((_ is Concat!30014) (regOne!42851 r2!6138))) b!7876719))

(assert (= (and b!7876397 ((_ is Star!21169) (regOne!42851 r2!6138))) b!7876720))

(assert (= (and b!7876397 ((_ is Union!21169) (regOne!42851 r2!6138))) b!7876721))

(declare-fun b!7876724 () Bool)

(declare-fun e!4652128 () Bool)

(assert (=> b!7876724 (= e!4652128 tp_is_empty!52737)))

(declare-fun b!7876726 () Bool)

(declare-fun tp!2339757 () Bool)

(assert (=> b!7876726 (= e!4652128 tp!2339757)))

(declare-fun b!7876725 () Bool)

(declare-fun tp!2339759 () Bool)

(declare-fun tp!2339760 () Bool)

(assert (=> b!7876725 (= e!4652128 (and tp!2339759 tp!2339760))))

(assert (=> b!7876397 (= tp!2339694 e!4652128)))

(declare-fun b!7876727 () Bool)

(declare-fun tp!2339761 () Bool)

(declare-fun tp!2339758 () Bool)

(assert (=> b!7876727 (= e!4652128 (and tp!2339761 tp!2339758))))

(assert (= (and b!7876397 ((_ is ElementMatch!21169) (regTwo!42851 r2!6138))) b!7876724))

(assert (= (and b!7876397 ((_ is Concat!30014) (regTwo!42851 r2!6138))) b!7876725))

(assert (= (and b!7876397 ((_ is Star!21169) (regTwo!42851 r2!6138))) b!7876726))

(assert (= (and b!7876397 ((_ is Union!21169) (regTwo!42851 r2!6138))) b!7876727))

(declare-fun b!7876728 () Bool)

(declare-fun e!4652129 () Bool)

(assert (=> b!7876728 (= e!4652129 tp_is_empty!52737)))

(declare-fun b!7876730 () Bool)

(declare-fun tp!2339762 () Bool)

(assert (=> b!7876730 (= e!4652129 tp!2339762)))

(declare-fun b!7876729 () Bool)

(declare-fun tp!2339764 () Bool)

(declare-fun tp!2339765 () Bool)

(assert (=> b!7876729 (= e!4652129 (and tp!2339764 tp!2339765))))

(assert (=> b!7876398 (= tp!2339695 e!4652129)))

(declare-fun b!7876731 () Bool)

(declare-fun tp!2339766 () Bool)

(declare-fun tp!2339763 () Bool)

(assert (=> b!7876731 (= e!4652129 (and tp!2339766 tp!2339763))))

(assert (= (and b!7876398 ((_ is ElementMatch!21169) (regOne!42850 r1!6200))) b!7876728))

(assert (= (and b!7876398 ((_ is Concat!30014) (regOne!42850 r1!6200))) b!7876729))

(assert (= (and b!7876398 ((_ is Star!21169) (regOne!42850 r1!6200))) b!7876730))

(assert (= (and b!7876398 ((_ is Union!21169) (regOne!42850 r1!6200))) b!7876731))

(declare-fun b!7876732 () Bool)

(declare-fun e!4652130 () Bool)

(assert (=> b!7876732 (= e!4652130 tp_is_empty!52737)))

(declare-fun b!7876734 () Bool)

(declare-fun tp!2339767 () Bool)

(assert (=> b!7876734 (= e!4652130 tp!2339767)))

(declare-fun b!7876733 () Bool)

(declare-fun tp!2339769 () Bool)

(declare-fun tp!2339770 () Bool)

(assert (=> b!7876733 (= e!4652130 (and tp!2339769 tp!2339770))))

(assert (=> b!7876398 (= tp!2339692 e!4652130)))

(declare-fun b!7876735 () Bool)

(declare-fun tp!2339771 () Bool)

(declare-fun tp!2339768 () Bool)

(assert (=> b!7876735 (= e!4652130 (and tp!2339771 tp!2339768))))

(assert (= (and b!7876398 ((_ is ElementMatch!21169) (regTwo!42850 r1!6200))) b!7876732))

(assert (= (and b!7876398 ((_ is Concat!30014) (regTwo!42850 r1!6200))) b!7876733))

(assert (= (and b!7876398 ((_ is Star!21169) (regTwo!42850 r1!6200))) b!7876734))

(assert (= (and b!7876398 ((_ is Union!21169) (regTwo!42850 r1!6200))) b!7876735))

(check-sat (not d!2355675) (not b!7876731) (not bm!730461) (not bm!730430) (not bm!730436) (not b!7876520) (not b!7876673) (not d!2355671) (not bm!730414) (not b!7876727) (not b!7876726) (not b!7876719) (not b!7876729) (not b!7876713) (not b!7876619) (not bm!730438) (not b!7876733) (not bm!730432) (not b!7876698) (not b!7876700) (not b!7876725) (not b!7876680) (not b!7876633) (not b!7876677) (not b!7876676) (not b!7876620) (not b!7876735) (not b!7876678) (not b!7876622) (not bm!730440) (not b!7876711) (not b!7876705) (not b!7876695) (not bm!730464) (not b!7876629) (not b!7876624) (not b!7876623) (not b!7876682) (not b!7876720) (not b!7876721) (not b!7876672) (not b!7876696) tp_is_empty!52737 (not b!7876642) (not b!7876435) (not d!2355679) (not bm!730467) (not bm!730462) (not b!7876510) (not bm!730416) (not b!7876712) (not b!7876521) (not bm!730434) (not b!7876694) (not b!7876674) (not bm!730465) (not b!7876730) (not b!7876681) (not b!7876734) (not b!7876699))
(check-sat)
