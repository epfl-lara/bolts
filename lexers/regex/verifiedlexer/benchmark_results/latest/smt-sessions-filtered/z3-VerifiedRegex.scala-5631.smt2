; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281754 () Bool)

(assert start!281754)

(declare-fun b!2887380 () Bool)

(declare-fun e!1825651 () Bool)

(declare-fun e!1825649 () Bool)

(assert (=> b!2887380 (= e!1825651 e!1825649)))

(declare-fun res!1195775 () Bool)

(assert (=> b!2887380 (=> (not res!1195775) (not e!1825649))))

(declare-datatypes ((C!17816 0))(
  ( (C!17817 (val!10942 Int)) )
))
(declare-datatypes ((List!34618 0))(
  ( (Nil!34494) (Cons!34494 (h!39914 C!17816) (t!233661 List!34618)) )
))
(declare-datatypes ((Option!6490 0))(
  ( (None!6489) (Some!6489 (v!34615 List!34618)) )
))
(declare-fun lt!1020762 () Option!6490)

(declare-fun isDefined!5054 (Option!6490) Bool)

(assert (=> b!2887380 (= res!1195775 (isDefined!5054 lt!1020762))))

(declare-datatypes ((Regex!8817 0))(
  ( (ElementMatch!8817 (c!469322 C!17816)) (Concat!14138 (regOne!18146 Regex!8817) (regTwo!18146 Regex!8817)) (EmptyExpr!8817) (Star!8817 (reg!9146 Regex!8817)) (EmptyLang!8817) (Union!8817 (regOne!18147 Regex!8817) (regTwo!18147 Regex!8817)) )
))
(declare-fun r!23079 () Regex!8817)

(declare-fun getLanguageWitness!524 (Regex!8817) Option!6490)

(assert (=> b!2887380 (= lt!1020762 (getLanguageWitness!524 r!23079))))

(declare-fun b!2887381 () Bool)

(declare-fun e!1825650 () Bool)

(declare-fun tp!926197 () Bool)

(declare-fun tp!926198 () Bool)

(assert (=> b!2887381 (= e!1825650 (and tp!926197 tp!926198))))

(declare-fun b!2887382 () Bool)

(declare-fun tp!926199 () Bool)

(assert (=> b!2887382 (= e!1825650 tp!926199)))

(declare-fun b!2887383 () Bool)

(declare-fun matchR!3793 (Regex!8817 List!34618) Bool)

(declare-fun get!10434 (Option!6490) List!34618)

(assert (=> b!2887383 (= e!1825649 (not (matchR!3793 r!23079 (get!10434 lt!1020762))))))

(declare-fun b!2887385 () Bool)

(declare-fun tp!926195 () Bool)

(declare-fun tp!926196 () Bool)

(assert (=> b!2887385 (= e!1825650 (and tp!926195 tp!926196))))

(declare-fun b!2887386 () Bool)

(declare-fun res!1195773 () Bool)

(assert (=> b!2887386 (=> (not res!1195773) (not e!1825649))))

(get-info :version)

(assert (=> b!2887386 (= res!1195773 (and (not ((_ is EmptyExpr!8817) r!23079)) (not ((_ is EmptyLang!8817) r!23079)) ((_ is ElementMatch!8817) r!23079)))))

(declare-fun res!1195774 () Bool)

(assert (=> start!281754 (=> (not res!1195774) (not e!1825651))))

(declare-fun validRegex!3590 (Regex!8817) Bool)

(assert (=> start!281754 (= res!1195774 (validRegex!3590 r!23079))))

(assert (=> start!281754 e!1825651))

(assert (=> start!281754 e!1825650))

(declare-fun b!2887384 () Bool)

(declare-fun tp_is_empty!15221 () Bool)

(assert (=> b!2887384 (= e!1825650 tp_is_empty!15221)))

(assert (= (and start!281754 res!1195774) b!2887380))

(assert (= (and b!2887380 res!1195775) b!2887386))

(assert (= (and b!2887386 res!1195773) b!2887383))

(assert (= (and start!281754 ((_ is ElementMatch!8817) r!23079)) b!2887384))

(assert (= (and start!281754 ((_ is Concat!14138) r!23079)) b!2887385))

(assert (= (and start!281754 ((_ is Star!8817) r!23079)) b!2887382))

(assert (= (and start!281754 ((_ is Union!8817) r!23079)) b!2887381))

(declare-fun m!3301533 () Bool)

(assert (=> b!2887380 m!3301533))

(declare-fun m!3301535 () Bool)

(assert (=> b!2887380 m!3301535))

(declare-fun m!3301537 () Bool)

(assert (=> b!2887383 m!3301537))

(assert (=> b!2887383 m!3301537))

(declare-fun m!3301539 () Bool)

(assert (=> b!2887383 m!3301539))

(declare-fun m!3301541 () Bool)

(assert (=> start!281754 m!3301541))

(check-sat (not b!2887382) (not start!281754) tp_is_empty!15221 (not b!2887381) (not b!2887380) (not b!2887385) (not b!2887383))
(check-sat)
(get-model)

(declare-fun b!2887433 () Bool)

(declare-fun res!1195802 () Bool)

(declare-fun e!1825680 () Bool)

(assert (=> b!2887433 (=> (not res!1195802) (not e!1825680))))

(declare-fun call!187359 () Bool)

(assert (=> b!2887433 (= res!1195802 call!187359)))

(declare-fun e!1825684 () Bool)

(assert (=> b!2887433 (= e!1825684 e!1825680)))

(declare-fun b!2887434 () Bool)

(declare-fun e!1825681 () Bool)

(assert (=> b!2887434 (= e!1825681 e!1825684)))

(declare-fun c!469333 () Bool)

(assert (=> b!2887434 (= c!469333 ((_ is Union!8817) r!23079))))

(declare-fun bm!187352 () Bool)

(assert (=> bm!187352 (= call!187359 (validRegex!3590 (ite c!469333 (regOne!18147 r!23079) (regOne!18146 r!23079))))))

(declare-fun bm!187353 () Bool)

(declare-fun call!187357 () Bool)

(declare-fun c!469334 () Bool)

(assert (=> bm!187353 (= call!187357 (validRegex!3590 (ite c!469334 (reg!9146 r!23079) (ite c!469333 (regTwo!18147 r!23079) (regTwo!18146 r!23079)))))))

(declare-fun b!2887435 () Bool)

(declare-fun e!1825686 () Bool)

(assert (=> b!2887435 (= e!1825686 call!187357)))

(declare-fun b!2887436 () Bool)

(assert (=> b!2887436 (= e!1825681 e!1825686)))

(declare-fun res!1195805 () Bool)

(declare-fun nullable!2719 (Regex!8817) Bool)

(assert (=> b!2887436 (= res!1195805 (not (nullable!2719 (reg!9146 r!23079))))))

(assert (=> b!2887436 (=> (not res!1195805) (not e!1825686))))

(declare-fun b!2887437 () Bool)

(declare-fun call!187358 () Bool)

(assert (=> b!2887437 (= e!1825680 call!187358)))

(declare-fun d!834098 () Bool)

(declare-fun res!1195806 () Bool)

(declare-fun e!1825683 () Bool)

(assert (=> d!834098 (=> res!1195806 e!1825683)))

(assert (=> d!834098 (= res!1195806 ((_ is ElementMatch!8817) r!23079))))

(assert (=> d!834098 (= (validRegex!3590 r!23079) e!1825683)))

(declare-fun b!2887438 () Bool)

(declare-fun e!1825682 () Bool)

(assert (=> b!2887438 (= e!1825682 call!187358)))

(declare-fun b!2887439 () Bool)

(declare-fun res!1195803 () Bool)

(declare-fun e!1825685 () Bool)

(assert (=> b!2887439 (=> res!1195803 e!1825685)))

(assert (=> b!2887439 (= res!1195803 (not ((_ is Concat!14138) r!23079)))))

(assert (=> b!2887439 (= e!1825684 e!1825685)))

(declare-fun b!2887440 () Bool)

(assert (=> b!2887440 (= e!1825685 e!1825682)))

(declare-fun res!1195804 () Bool)

(assert (=> b!2887440 (=> (not res!1195804) (not e!1825682))))

(assert (=> b!2887440 (= res!1195804 call!187359)))

(declare-fun b!2887441 () Bool)

(assert (=> b!2887441 (= e!1825683 e!1825681)))

(assert (=> b!2887441 (= c!469334 ((_ is Star!8817) r!23079))))

(declare-fun bm!187354 () Bool)

(assert (=> bm!187354 (= call!187358 call!187357)))

(assert (= (and d!834098 (not res!1195806)) b!2887441))

(assert (= (and b!2887441 c!469334) b!2887436))

(assert (= (and b!2887441 (not c!469334)) b!2887434))

(assert (= (and b!2887436 res!1195805) b!2887435))

(assert (= (and b!2887434 c!469333) b!2887433))

(assert (= (and b!2887434 (not c!469333)) b!2887439))

(assert (= (and b!2887433 res!1195802) b!2887437))

(assert (= (and b!2887439 (not res!1195803)) b!2887440))

(assert (= (and b!2887440 res!1195804) b!2887438))

(assert (= (or b!2887437 b!2887438) bm!187354))

(assert (= (or b!2887433 b!2887440) bm!187352))

(assert (= (or b!2887435 bm!187354) bm!187353))

(declare-fun m!3301543 () Bool)

(assert (=> bm!187352 m!3301543))

(declare-fun m!3301545 () Bool)

(assert (=> bm!187353 m!3301545))

(declare-fun m!3301547 () Bool)

(assert (=> b!2887436 m!3301547))

(assert (=> start!281754 d!834098))

(declare-fun d!834100 () Bool)

(declare-fun isEmpty!18789 (Option!6490) Bool)

(assert (=> d!834100 (= (isDefined!5054 lt!1020762) (not (isEmpty!18789 lt!1020762)))))

(declare-fun bs!523839 () Bool)

(assert (= bs!523839 d!834100))

(declare-fun m!3301549 () Bool)

(assert (=> bs!523839 m!3301549))

(assert (=> b!2887380 d!834100))

(declare-fun b!2887520 () Bool)

(declare-fun c!469375 () Bool)

(assert (=> b!2887520 (= c!469375 ((_ is ElementMatch!8817) r!23079))))

(declare-fun e!1825726 () Option!6490)

(declare-fun e!1825733 () Option!6490)

(assert (=> b!2887520 (= e!1825726 e!1825733)))

(declare-fun b!2887521 () Bool)

(declare-fun e!1825727 () Option!6490)

(declare-fun call!187371 () Option!6490)

(assert (=> b!2887521 (= e!1825727 call!187371)))

(declare-fun b!2887522 () Bool)

(declare-fun e!1825732 () Option!6490)

(assert (=> b!2887522 (= e!1825733 e!1825732)))

(declare-fun c!469371 () Bool)

(assert (=> b!2887522 (= c!469371 ((_ is Star!8817) r!23079))))

(declare-fun bm!187367 () Bool)

(declare-fun c!469370 () Bool)

(assert (=> bm!187367 (= call!187371 (getLanguageWitness!524 (ite c!469370 (regTwo!18147 r!23079) (regOne!18146 r!23079))))))

(declare-fun b!2887523 () Bool)

(declare-fun c!469376 () Bool)

(declare-fun lt!1020778 () Option!6490)

(assert (=> b!2887523 (= c!469376 ((_ is Some!6489) lt!1020778))))

(declare-fun call!187372 () Option!6490)

(assert (=> b!2887523 (= lt!1020778 call!187372)))

(declare-fun e!1825728 () Option!6490)

(declare-fun e!1825730 () Option!6490)

(assert (=> b!2887523 (= e!1825728 e!1825730)))

(declare-fun b!2887524 () Bool)

(declare-fun e!1825731 () Option!6490)

(assert (=> b!2887524 (= e!1825731 (Some!6489 Nil!34494))))

(declare-fun b!2887525 () Bool)

(assert (=> b!2887525 (= e!1825728 None!6489)))

(declare-fun b!2887526 () Bool)

(declare-fun lt!1020779 () Option!6490)

(assert (=> b!2887526 (= e!1825727 lt!1020779)))

(declare-fun b!2887527 () Bool)

(declare-fun e!1825729 () Option!6490)

(assert (=> b!2887527 (= e!1825729 e!1825728)))

(declare-fun lt!1020780 () Option!6490)

(assert (=> b!2887527 (= lt!1020780 call!187371)))

(declare-fun c!469373 () Bool)

(assert (=> b!2887527 (= c!469373 ((_ is Some!6489) lt!1020780))))

(declare-fun b!2887528 () Bool)

(assert (=> b!2887528 (= e!1825733 (Some!6489 (Cons!34494 (c!469322 r!23079) Nil!34494)))))

(declare-fun b!2887529 () Bool)

(assert (=> b!2887529 (= e!1825726 None!6489)))

(declare-fun b!2887530 () Bool)

(assert (=> b!2887530 (= e!1825732 (Some!6489 Nil!34494))))

(declare-fun b!2887531 () Bool)

(assert (=> b!2887531 (= c!469370 ((_ is Union!8817) r!23079))))

(assert (=> b!2887531 (= e!1825732 e!1825729)))

(declare-fun bm!187366 () Bool)

(assert (=> bm!187366 (= call!187372 (getLanguageWitness!524 (ite c!469370 (regOne!18147 r!23079) (regTwo!18146 r!23079))))))

(declare-fun d!834102 () Bool)

(declare-fun c!469374 () Bool)

(assert (=> d!834102 (= c!469374 ((_ is EmptyExpr!8817) r!23079))))

(assert (=> d!834102 (= (getLanguageWitness!524 r!23079) e!1825731)))

(declare-fun b!2887532 () Bool)

(declare-fun ++!8216 (List!34618 List!34618) List!34618)

(assert (=> b!2887532 (= e!1825730 (Some!6489 (++!8216 (v!34615 lt!1020780) (v!34615 lt!1020778))))))

(declare-fun b!2887533 () Bool)

(assert (=> b!2887533 (= e!1825731 e!1825726)))

(declare-fun c!469372 () Bool)

(assert (=> b!2887533 (= c!469372 ((_ is EmptyLang!8817) r!23079))))

(declare-fun b!2887534 () Bool)

(assert (=> b!2887534 (= e!1825729 e!1825727)))

(assert (=> b!2887534 (= lt!1020779 call!187372)))

(declare-fun c!469377 () Bool)

(assert (=> b!2887534 (= c!469377 ((_ is Some!6489) lt!1020779))))

(declare-fun b!2887535 () Bool)

(assert (=> b!2887535 (= e!1825730 None!6489)))

(assert (= (and d!834102 c!469374) b!2887524))

(assert (= (and d!834102 (not c!469374)) b!2887533))

(assert (= (and b!2887533 c!469372) b!2887529))

(assert (= (and b!2887533 (not c!469372)) b!2887520))

(assert (= (and b!2887520 c!469375) b!2887528))

(assert (= (and b!2887520 (not c!469375)) b!2887522))

(assert (= (and b!2887522 c!469371) b!2887530))

(assert (= (and b!2887522 (not c!469371)) b!2887531))

(assert (= (and b!2887531 c!469370) b!2887534))

(assert (= (and b!2887531 (not c!469370)) b!2887527))

(assert (= (and b!2887534 c!469377) b!2887526))

(assert (= (and b!2887534 (not c!469377)) b!2887521))

(assert (= (and b!2887527 c!469373) b!2887523))

(assert (= (and b!2887527 (not c!469373)) b!2887525))

(assert (= (and b!2887523 c!469376) b!2887532))

(assert (= (and b!2887523 (not c!469376)) b!2887535))

(assert (= (or b!2887521 b!2887527) bm!187367))

(assert (= (or b!2887534 b!2887523) bm!187366))

(declare-fun m!3301567 () Bool)

(assert (=> bm!187367 m!3301567))

(declare-fun m!3301569 () Bool)

(assert (=> bm!187366 m!3301569))

(declare-fun m!3301571 () Bool)

(assert (=> b!2887532 m!3301571))

(assert (=> b!2887380 d!834102))

(declare-fun b!2887598 () Bool)

(declare-fun e!1825776 () Bool)

(declare-fun lt!1020786 () Bool)

(assert (=> b!2887598 (= e!1825776 (not lt!1020786))))

(declare-fun b!2887599 () Bool)

(declare-fun e!1825770 () Bool)

(assert (=> b!2887599 (= e!1825770 (nullable!2719 r!23079))))

(declare-fun b!2887600 () Bool)

(declare-fun res!1195847 () Bool)

(declare-fun e!1825772 () Bool)

(assert (=> b!2887600 (=> (not res!1195847) (not e!1825772))))

(declare-fun isEmpty!18791 (List!34618) Bool)

(declare-fun tail!4604 (List!34618) List!34618)

(assert (=> b!2887600 (= res!1195847 (isEmpty!18791 (tail!4604 (get!10434 lt!1020762))))))

(declare-fun b!2887601 () Bool)

(declare-fun head!6379 (List!34618) C!17816)

(assert (=> b!2887601 (= e!1825772 (= (head!6379 (get!10434 lt!1020762)) (c!469322 r!23079)))))

(declare-fun d!834110 () Bool)

(declare-fun e!1825775 () Bool)

(assert (=> d!834110 e!1825775))

(declare-fun c!469396 () Bool)

(assert (=> d!834110 (= c!469396 ((_ is EmptyExpr!8817) r!23079))))

(assert (=> d!834110 (= lt!1020786 e!1825770)))

(declare-fun c!469398 () Bool)

(assert (=> d!834110 (= c!469398 (isEmpty!18791 (get!10434 lt!1020762)))))

(assert (=> d!834110 (validRegex!3590 r!23079)))

(assert (=> d!834110 (= (matchR!3793 r!23079 (get!10434 lt!1020762)) lt!1020786)))

(declare-fun b!2887602 () Bool)

(declare-fun derivativeStep!2350 (Regex!8817 C!17816) Regex!8817)

(assert (=> b!2887602 (= e!1825770 (matchR!3793 (derivativeStep!2350 r!23079 (head!6379 (get!10434 lt!1020762))) (tail!4604 (get!10434 lt!1020762))))))

(declare-fun b!2887603 () Bool)

(declare-fun call!187383 () Bool)

(assert (=> b!2887603 (= e!1825775 (= lt!1020786 call!187383))))

(declare-fun b!2887604 () Bool)

(declare-fun e!1825774 () Bool)

(declare-fun e!1825771 () Bool)

(assert (=> b!2887604 (= e!1825774 e!1825771)))

(declare-fun res!1195844 () Bool)

(assert (=> b!2887604 (=> res!1195844 e!1825771)))

(assert (=> b!2887604 (= res!1195844 call!187383)))

(declare-fun b!2887605 () Bool)

(declare-fun res!1195843 () Bool)

(declare-fun e!1825773 () Bool)

(assert (=> b!2887605 (=> res!1195843 e!1825773)))

(assert (=> b!2887605 (= res!1195843 (not ((_ is ElementMatch!8817) r!23079)))))

(assert (=> b!2887605 (= e!1825776 e!1825773)))

(declare-fun b!2887606 () Bool)

(declare-fun res!1195842 () Bool)

(assert (=> b!2887606 (=> res!1195842 e!1825771)))

(assert (=> b!2887606 (= res!1195842 (not (isEmpty!18791 (tail!4604 (get!10434 lt!1020762)))))))

(declare-fun b!2887607 () Bool)

(assert (=> b!2887607 (= e!1825775 e!1825776)))

(declare-fun c!469397 () Bool)

(assert (=> b!2887607 (= c!469397 ((_ is EmptyLang!8817) r!23079))))

(declare-fun b!2887608 () Bool)

(declare-fun res!1195846 () Bool)

(assert (=> b!2887608 (=> (not res!1195846) (not e!1825772))))

(assert (=> b!2887608 (= res!1195846 (not call!187383))))

(declare-fun b!2887609 () Bool)

(declare-fun res!1195841 () Bool)

(assert (=> b!2887609 (=> res!1195841 e!1825773)))

(assert (=> b!2887609 (= res!1195841 e!1825772)))

(declare-fun res!1195845 () Bool)

(assert (=> b!2887609 (=> (not res!1195845) (not e!1825772))))

(assert (=> b!2887609 (= res!1195845 lt!1020786)))

(declare-fun b!2887610 () Bool)

(assert (=> b!2887610 (= e!1825771 (not (= (head!6379 (get!10434 lt!1020762)) (c!469322 r!23079))))))

(declare-fun bm!187378 () Bool)

(assert (=> bm!187378 (= call!187383 (isEmpty!18791 (get!10434 lt!1020762)))))

(declare-fun b!2887611 () Bool)

(assert (=> b!2887611 (= e!1825773 e!1825774)))

(declare-fun res!1195848 () Bool)

(assert (=> b!2887611 (=> (not res!1195848) (not e!1825774))))

(assert (=> b!2887611 (= res!1195848 (not lt!1020786))))

(assert (= (and d!834110 c!469398) b!2887599))

(assert (= (and d!834110 (not c!469398)) b!2887602))

(assert (= (and d!834110 c!469396) b!2887603))

(assert (= (and d!834110 (not c!469396)) b!2887607))

(assert (= (and b!2887607 c!469397) b!2887598))

(assert (= (and b!2887607 (not c!469397)) b!2887605))

(assert (= (and b!2887605 (not res!1195843)) b!2887609))

(assert (= (and b!2887609 res!1195845) b!2887608))

(assert (= (and b!2887608 res!1195846) b!2887600))

(assert (= (and b!2887600 res!1195847) b!2887601))

(assert (= (and b!2887609 (not res!1195841)) b!2887611))

(assert (= (and b!2887611 res!1195848) b!2887604))

(assert (= (and b!2887604 (not res!1195844)) b!2887606))

(assert (= (and b!2887606 (not res!1195842)) b!2887610))

(assert (= (or b!2887603 b!2887604 b!2887608) bm!187378))

(assert (=> b!2887610 m!3301537))

(declare-fun m!3301585 () Bool)

(assert (=> b!2887610 m!3301585))

(assert (=> b!2887602 m!3301537))

(assert (=> b!2887602 m!3301585))

(assert (=> b!2887602 m!3301585))

(declare-fun m!3301587 () Bool)

(assert (=> b!2887602 m!3301587))

(assert (=> b!2887602 m!3301537))

(declare-fun m!3301589 () Bool)

(assert (=> b!2887602 m!3301589))

(assert (=> b!2887602 m!3301587))

(assert (=> b!2887602 m!3301589))

(declare-fun m!3301591 () Bool)

(assert (=> b!2887602 m!3301591))

(assert (=> bm!187378 m!3301537))

(declare-fun m!3301593 () Bool)

(assert (=> bm!187378 m!3301593))

(declare-fun m!3301595 () Bool)

(assert (=> b!2887599 m!3301595))

(assert (=> d!834110 m!3301537))

(assert (=> d!834110 m!3301593))

(assert (=> d!834110 m!3301541))

(assert (=> b!2887601 m!3301537))

(assert (=> b!2887601 m!3301585))

(assert (=> b!2887606 m!3301537))

(assert (=> b!2887606 m!3301589))

(assert (=> b!2887606 m!3301589))

(declare-fun m!3301597 () Bool)

(assert (=> b!2887606 m!3301597))

(assert (=> b!2887600 m!3301537))

(assert (=> b!2887600 m!3301589))

(assert (=> b!2887600 m!3301589))

(assert (=> b!2887600 m!3301597))

(assert (=> b!2887383 d!834110))

(declare-fun d!834114 () Bool)

(assert (=> d!834114 (= (get!10434 lt!1020762) (v!34615 lt!1020762))))

(assert (=> b!2887383 d!834114))

(declare-fun e!1825793 () Bool)

(assert (=> b!2887382 (= tp!926199 e!1825793)))

(declare-fun b!2887662 () Bool)

(declare-fun tp!926246 () Bool)

(declare-fun tp!926245 () Bool)

(assert (=> b!2887662 (= e!1825793 (and tp!926246 tp!926245))))

(declare-fun b!2887664 () Bool)

(declare-fun tp!926247 () Bool)

(declare-fun tp!926249 () Bool)

(assert (=> b!2887664 (= e!1825793 (and tp!926247 tp!926249))))

(declare-fun b!2887663 () Bool)

(declare-fun tp!926248 () Bool)

(assert (=> b!2887663 (= e!1825793 tp!926248)))

(declare-fun b!2887661 () Bool)

(assert (=> b!2887661 (= e!1825793 tp_is_empty!15221)))

(assert (= (and b!2887382 ((_ is ElementMatch!8817) (reg!9146 r!23079))) b!2887661))

(assert (= (and b!2887382 ((_ is Concat!14138) (reg!9146 r!23079))) b!2887662))

(assert (= (and b!2887382 ((_ is Star!8817) (reg!9146 r!23079))) b!2887663))

(assert (= (and b!2887382 ((_ is Union!8817) (reg!9146 r!23079))) b!2887664))

(declare-fun e!1825794 () Bool)

(assert (=> b!2887381 (= tp!926197 e!1825794)))

(declare-fun b!2887666 () Bool)

(declare-fun tp!926251 () Bool)

(declare-fun tp!926250 () Bool)

(assert (=> b!2887666 (= e!1825794 (and tp!926251 tp!926250))))

(declare-fun b!2887668 () Bool)

(declare-fun tp!926252 () Bool)

(declare-fun tp!926254 () Bool)

(assert (=> b!2887668 (= e!1825794 (and tp!926252 tp!926254))))

(declare-fun b!2887667 () Bool)

(declare-fun tp!926253 () Bool)

(assert (=> b!2887667 (= e!1825794 tp!926253)))

(declare-fun b!2887665 () Bool)

(assert (=> b!2887665 (= e!1825794 tp_is_empty!15221)))

(assert (= (and b!2887381 ((_ is ElementMatch!8817) (regOne!18147 r!23079))) b!2887665))

(assert (= (and b!2887381 ((_ is Concat!14138) (regOne!18147 r!23079))) b!2887666))

(assert (= (and b!2887381 ((_ is Star!8817) (regOne!18147 r!23079))) b!2887667))

(assert (= (and b!2887381 ((_ is Union!8817) (regOne!18147 r!23079))) b!2887668))

(declare-fun e!1825795 () Bool)

(assert (=> b!2887381 (= tp!926198 e!1825795)))

(declare-fun b!2887670 () Bool)

(declare-fun tp!926256 () Bool)

(declare-fun tp!926255 () Bool)

(assert (=> b!2887670 (= e!1825795 (and tp!926256 tp!926255))))

(declare-fun b!2887672 () Bool)

(declare-fun tp!926257 () Bool)

(declare-fun tp!926259 () Bool)

(assert (=> b!2887672 (= e!1825795 (and tp!926257 tp!926259))))

(declare-fun b!2887671 () Bool)

(declare-fun tp!926258 () Bool)

(assert (=> b!2887671 (= e!1825795 tp!926258)))

(declare-fun b!2887669 () Bool)

(assert (=> b!2887669 (= e!1825795 tp_is_empty!15221)))

(assert (= (and b!2887381 ((_ is ElementMatch!8817) (regTwo!18147 r!23079))) b!2887669))

(assert (= (and b!2887381 ((_ is Concat!14138) (regTwo!18147 r!23079))) b!2887670))

(assert (= (and b!2887381 ((_ is Star!8817) (regTwo!18147 r!23079))) b!2887671))

(assert (= (and b!2887381 ((_ is Union!8817) (regTwo!18147 r!23079))) b!2887672))

(declare-fun e!1825796 () Bool)

(assert (=> b!2887385 (= tp!926195 e!1825796)))

(declare-fun b!2887674 () Bool)

(declare-fun tp!926261 () Bool)

(declare-fun tp!926260 () Bool)

(assert (=> b!2887674 (= e!1825796 (and tp!926261 tp!926260))))

(declare-fun b!2887676 () Bool)

(declare-fun tp!926262 () Bool)

(declare-fun tp!926264 () Bool)

(assert (=> b!2887676 (= e!1825796 (and tp!926262 tp!926264))))

(declare-fun b!2887675 () Bool)

(declare-fun tp!926263 () Bool)

(assert (=> b!2887675 (= e!1825796 tp!926263)))

(declare-fun b!2887673 () Bool)

(assert (=> b!2887673 (= e!1825796 tp_is_empty!15221)))

(assert (= (and b!2887385 ((_ is ElementMatch!8817) (regOne!18146 r!23079))) b!2887673))

(assert (= (and b!2887385 ((_ is Concat!14138) (regOne!18146 r!23079))) b!2887674))

(assert (= (and b!2887385 ((_ is Star!8817) (regOne!18146 r!23079))) b!2887675))

(assert (= (and b!2887385 ((_ is Union!8817) (regOne!18146 r!23079))) b!2887676))

(declare-fun e!1825797 () Bool)

(assert (=> b!2887385 (= tp!926196 e!1825797)))

(declare-fun b!2887678 () Bool)

(declare-fun tp!926266 () Bool)

(declare-fun tp!926265 () Bool)

(assert (=> b!2887678 (= e!1825797 (and tp!926266 tp!926265))))

(declare-fun b!2887680 () Bool)

(declare-fun tp!926267 () Bool)

(declare-fun tp!926269 () Bool)

(assert (=> b!2887680 (= e!1825797 (and tp!926267 tp!926269))))

(declare-fun b!2887679 () Bool)

(declare-fun tp!926268 () Bool)

(assert (=> b!2887679 (= e!1825797 tp!926268)))

(declare-fun b!2887677 () Bool)

(assert (=> b!2887677 (= e!1825797 tp_is_empty!15221)))

(assert (= (and b!2887385 ((_ is ElementMatch!8817) (regTwo!18146 r!23079))) b!2887677))

(assert (= (and b!2887385 ((_ is Concat!14138) (regTwo!18146 r!23079))) b!2887678))

(assert (= (and b!2887385 ((_ is Star!8817) (regTwo!18146 r!23079))) b!2887679))

(assert (= (and b!2887385 ((_ is Union!8817) (regTwo!18146 r!23079))) b!2887680))

(check-sat (not bm!187378) (not b!2887667) (not b!2887672) (not d!834100) (not b!2887606) tp_is_empty!15221 (not d!834110) (not b!2887662) (not bm!187352) (not b!2887679) (not b!2887532) (not b!2887670) (not b!2887600) (not b!2887668) (not b!2887436) (not b!2887599) (not b!2887676) (not b!2887663) (not b!2887675) (not b!2887664) (not b!2887601) (not b!2887678) (not b!2887674) (not b!2887666) (not b!2887680) (not b!2887671) (not b!2887610) (not bm!187353) (not b!2887602) (not bm!187366) (not bm!187367))
(check-sat)
(get-model)

(declare-fun b!2887681 () Bool)

(declare-fun c!469406 () Bool)

(assert (=> b!2887681 (= c!469406 ((_ is ElementMatch!8817) (ite c!469370 (regTwo!18147 r!23079) (regOne!18146 r!23079))))))

(declare-fun e!1825798 () Option!6490)

(declare-fun e!1825805 () Option!6490)

(assert (=> b!2887681 (= e!1825798 e!1825805)))

(declare-fun b!2887682 () Bool)

(declare-fun e!1825799 () Option!6490)

(declare-fun call!187387 () Option!6490)

(assert (=> b!2887682 (= e!1825799 call!187387)))

(declare-fun b!2887683 () Bool)

(declare-fun e!1825804 () Option!6490)

(assert (=> b!2887683 (= e!1825805 e!1825804)))

(declare-fun c!469402 () Bool)

(assert (=> b!2887683 (= c!469402 ((_ is Star!8817) (ite c!469370 (regTwo!18147 r!23079) (regOne!18146 r!23079))))))

(declare-fun bm!187383 () Bool)

(declare-fun c!469401 () Bool)

(assert (=> bm!187383 (= call!187387 (getLanguageWitness!524 (ite c!469401 (regTwo!18147 (ite c!469370 (regTwo!18147 r!23079) (regOne!18146 r!23079))) (regOne!18146 (ite c!469370 (regTwo!18147 r!23079) (regOne!18146 r!23079))))))))

(declare-fun b!2887684 () Bool)

(declare-fun c!469407 () Bool)

(declare-fun lt!1020787 () Option!6490)

(assert (=> b!2887684 (= c!469407 ((_ is Some!6489) lt!1020787))))

(declare-fun call!187388 () Option!6490)

(assert (=> b!2887684 (= lt!1020787 call!187388)))

(declare-fun e!1825800 () Option!6490)

(declare-fun e!1825802 () Option!6490)

(assert (=> b!2887684 (= e!1825800 e!1825802)))

(declare-fun b!2887685 () Bool)

(declare-fun e!1825803 () Option!6490)

(assert (=> b!2887685 (= e!1825803 (Some!6489 Nil!34494))))

(declare-fun b!2887686 () Bool)

(assert (=> b!2887686 (= e!1825800 None!6489)))

(declare-fun b!2887687 () Bool)

(declare-fun lt!1020788 () Option!6490)

(assert (=> b!2887687 (= e!1825799 lt!1020788)))

(declare-fun b!2887688 () Bool)

(declare-fun e!1825801 () Option!6490)

(assert (=> b!2887688 (= e!1825801 e!1825800)))

(declare-fun lt!1020789 () Option!6490)

(assert (=> b!2887688 (= lt!1020789 call!187387)))

(declare-fun c!469404 () Bool)

(assert (=> b!2887688 (= c!469404 ((_ is Some!6489) lt!1020789))))

(declare-fun b!2887689 () Bool)

(assert (=> b!2887689 (= e!1825805 (Some!6489 (Cons!34494 (c!469322 (ite c!469370 (regTwo!18147 r!23079) (regOne!18146 r!23079))) Nil!34494)))))

(declare-fun b!2887690 () Bool)

(assert (=> b!2887690 (= e!1825798 None!6489)))

(declare-fun b!2887691 () Bool)

(assert (=> b!2887691 (= e!1825804 (Some!6489 Nil!34494))))

(declare-fun b!2887692 () Bool)

(assert (=> b!2887692 (= c!469401 ((_ is Union!8817) (ite c!469370 (regTwo!18147 r!23079) (regOne!18146 r!23079))))))

(assert (=> b!2887692 (= e!1825804 e!1825801)))

(declare-fun bm!187382 () Bool)

(assert (=> bm!187382 (= call!187388 (getLanguageWitness!524 (ite c!469401 (regOne!18147 (ite c!469370 (regTwo!18147 r!23079) (regOne!18146 r!23079))) (regTwo!18146 (ite c!469370 (regTwo!18147 r!23079) (regOne!18146 r!23079))))))))

(declare-fun d!834116 () Bool)

(declare-fun c!469405 () Bool)

(assert (=> d!834116 (= c!469405 ((_ is EmptyExpr!8817) (ite c!469370 (regTwo!18147 r!23079) (regOne!18146 r!23079))))))

(assert (=> d!834116 (= (getLanguageWitness!524 (ite c!469370 (regTwo!18147 r!23079) (regOne!18146 r!23079))) e!1825803)))

(declare-fun b!2887693 () Bool)

(assert (=> b!2887693 (= e!1825802 (Some!6489 (++!8216 (v!34615 lt!1020789) (v!34615 lt!1020787))))))

(declare-fun b!2887694 () Bool)

(assert (=> b!2887694 (= e!1825803 e!1825798)))

(declare-fun c!469403 () Bool)

(assert (=> b!2887694 (= c!469403 ((_ is EmptyLang!8817) (ite c!469370 (regTwo!18147 r!23079) (regOne!18146 r!23079))))))

(declare-fun b!2887695 () Bool)

(assert (=> b!2887695 (= e!1825801 e!1825799)))

(assert (=> b!2887695 (= lt!1020788 call!187388)))

(declare-fun c!469408 () Bool)

(assert (=> b!2887695 (= c!469408 ((_ is Some!6489) lt!1020788))))

(declare-fun b!2887696 () Bool)

(assert (=> b!2887696 (= e!1825802 None!6489)))

(assert (= (and d!834116 c!469405) b!2887685))

(assert (= (and d!834116 (not c!469405)) b!2887694))

(assert (= (and b!2887694 c!469403) b!2887690))

(assert (= (and b!2887694 (not c!469403)) b!2887681))

(assert (= (and b!2887681 c!469406) b!2887689))

(assert (= (and b!2887681 (not c!469406)) b!2887683))

(assert (= (and b!2887683 c!469402) b!2887691))

(assert (= (and b!2887683 (not c!469402)) b!2887692))

(assert (= (and b!2887692 c!469401) b!2887695))

(assert (= (and b!2887692 (not c!469401)) b!2887688))

(assert (= (and b!2887695 c!469408) b!2887687))

(assert (= (and b!2887695 (not c!469408)) b!2887682))

(assert (= (and b!2887688 c!469404) b!2887684))

(assert (= (and b!2887688 (not c!469404)) b!2887686))

(assert (= (and b!2887684 c!469407) b!2887693))

(assert (= (and b!2887684 (not c!469407)) b!2887696))

(assert (= (or b!2887682 b!2887688) bm!187383))

(assert (= (or b!2887695 b!2887684) bm!187382))

(declare-fun m!3301599 () Bool)

(assert (=> bm!187383 m!3301599))

(declare-fun m!3301601 () Bool)

(assert (=> bm!187382 m!3301601))

(declare-fun m!3301603 () Bool)

(assert (=> b!2887693 m!3301603))

(assert (=> bm!187367 d!834116))

(declare-fun d!834118 () Bool)

(assert (=> d!834118 (= (isEmpty!18791 (get!10434 lt!1020762)) ((_ is Nil!34494) (get!10434 lt!1020762)))))

(assert (=> d!834110 d!834118))

(assert (=> d!834110 d!834098))

(declare-fun d!834120 () Bool)

(declare-fun nullableFct!834 (Regex!8817) Bool)

(assert (=> d!834120 (= (nullable!2719 (reg!9146 r!23079)) (nullableFct!834 (reg!9146 r!23079)))))

(declare-fun bs!523841 () Bool)

(assert (= bs!523841 d!834120))

(declare-fun m!3301605 () Bool)

(assert (=> bs!523841 m!3301605))

(assert (=> b!2887436 d!834120))

(declare-fun lt!1020792 () List!34618)

(declare-fun b!2887708 () Bool)

(declare-fun e!1825810 () Bool)

(assert (=> b!2887708 (= e!1825810 (or (not (= (v!34615 lt!1020778) Nil!34494)) (= lt!1020792 (v!34615 lt!1020780))))))

(declare-fun d!834122 () Bool)

(assert (=> d!834122 e!1825810))

(declare-fun res!1195859 () Bool)

(assert (=> d!834122 (=> (not res!1195859) (not e!1825810))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4725 (List!34618) (InoxSet C!17816))

(assert (=> d!834122 (= res!1195859 (= (content!4725 lt!1020792) ((_ map or) (content!4725 (v!34615 lt!1020780)) (content!4725 (v!34615 lt!1020778)))))))

(declare-fun e!1825811 () List!34618)

(assert (=> d!834122 (= lt!1020792 e!1825811)))

(declare-fun c!469411 () Bool)

(assert (=> d!834122 (= c!469411 ((_ is Nil!34494) (v!34615 lt!1020780)))))

(assert (=> d!834122 (= (++!8216 (v!34615 lt!1020780) (v!34615 lt!1020778)) lt!1020792)))

(declare-fun b!2887706 () Bool)

(assert (=> b!2887706 (= e!1825811 (Cons!34494 (h!39914 (v!34615 lt!1020780)) (++!8216 (t!233661 (v!34615 lt!1020780)) (v!34615 lt!1020778))))))

(declare-fun b!2887707 () Bool)

(declare-fun res!1195858 () Bool)

(assert (=> b!2887707 (=> (not res!1195858) (not e!1825810))))

(declare-fun size!26344 (List!34618) Int)

(assert (=> b!2887707 (= res!1195858 (= (size!26344 lt!1020792) (+ (size!26344 (v!34615 lt!1020780)) (size!26344 (v!34615 lt!1020778)))))))

(declare-fun b!2887705 () Bool)

(assert (=> b!2887705 (= e!1825811 (v!34615 lt!1020778))))

(assert (= (and d!834122 c!469411) b!2887705))

(assert (= (and d!834122 (not c!469411)) b!2887706))

(assert (= (and d!834122 res!1195859) b!2887707))

(assert (= (and b!2887707 res!1195858) b!2887708))

(declare-fun m!3301607 () Bool)

(assert (=> d!834122 m!3301607))

(declare-fun m!3301609 () Bool)

(assert (=> d!834122 m!3301609))

(declare-fun m!3301611 () Bool)

(assert (=> d!834122 m!3301611))

(declare-fun m!3301613 () Bool)

(assert (=> b!2887706 m!3301613))

(declare-fun m!3301615 () Bool)

(assert (=> b!2887707 m!3301615))

(declare-fun m!3301617 () Bool)

(assert (=> b!2887707 m!3301617))

(declare-fun m!3301619 () Bool)

(assert (=> b!2887707 m!3301619))

(assert (=> b!2887532 d!834122))

(declare-fun d!834124 () Bool)

(assert (=> d!834124 (= (head!6379 (get!10434 lt!1020762)) (h!39914 (get!10434 lt!1020762)))))

(assert (=> b!2887601 d!834124))

(assert (=> bm!187378 d!834118))

(declare-fun d!834126 () Bool)

(assert (=> d!834126 (= (isEmpty!18791 (tail!4604 (get!10434 lt!1020762))) ((_ is Nil!34494) (tail!4604 (get!10434 lt!1020762))))))

(assert (=> b!2887600 d!834126))

(declare-fun d!834128 () Bool)

(assert (=> d!834128 (= (tail!4604 (get!10434 lt!1020762)) (t!233661 (get!10434 lt!1020762)))))

(assert (=> b!2887600 d!834128))

(assert (=> b!2887610 d!834124))

(declare-fun d!834130 () Bool)

(assert (=> d!834130 (= (nullable!2719 r!23079) (nullableFct!834 r!23079))))

(declare-fun bs!523842 () Bool)

(assert (= bs!523842 d!834130))

(declare-fun m!3301621 () Bool)

(assert (=> bs!523842 m!3301621))

(assert (=> b!2887599 d!834130))

(declare-fun b!2887709 () Bool)

(declare-fun e!1825818 () Bool)

(declare-fun lt!1020793 () Bool)

(assert (=> b!2887709 (= e!1825818 (not lt!1020793))))

(declare-fun b!2887710 () Bool)

(declare-fun e!1825812 () Bool)

(assert (=> b!2887710 (= e!1825812 (nullable!2719 (derivativeStep!2350 r!23079 (head!6379 (get!10434 lt!1020762)))))))

(declare-fun b!2887711 () Bool)

(declare-fun res!1195866 () Bool)

(declare-fun e!1825814 () Bool)

(assert (=> b!2887711 (=> (not res!1195866) (not e!1825814))))

(assert (=> b!2887711 (= res!1195866 (isEmpty!18791 (tail!4604 (tail!4604 (get!10434 lt!1020762)))))))

(declare-fun b!2887712 () Bool)

(assert (=> b!2887712 (= e!1825814 (= (head!6379 (tail!4604 (get!10434 lt!1020762))) (c!469322 (derivativeStep!2350 r!23079 (head!6379 (get!10434 lt!1020762))))))))

(declare-fun d!834132 () Bool)

(declare-fun e!1825817 () Bool)

(assert (=> d!834132 e!1825817))

(declare-fun c!469412 () Bool)

(assert (=> d!834132 (= c!469412 ((_ is EmptyExpr!8817) (derivativeStep!2350 r!23079 (head!6379 (get!10434 lt!1020762)))))))

(assert (=> d!834132 (= lt!1020793 e!1825812)))

(declare-fun c!469414 () Bool)

(assert (=> d!834132 (= c!469414 (isEmpty!18791 (tail!4604 (get!10434 lt!1020762))))))

(assert (=> d!834132 (validRegex!3590 (derivativeStep!2350 r!23079 (head!6379 (get!10434 lt!1020762))))))

(assert (=> d!834132 (= (matchR!3793 (derivativeStep!2350 r!23079 (head!6379 (get!10434 lt!1020762))) (tail!4604 (get!10434 lt!1020762))) lt!1020793)))

(declare-fun b!2887713 () Bool)

(assert (=> b!2887713 (= e!1825812 (matchR!3793 (derivativeStep!2350 (derivativeStep!2350 r!23079 (head!6379 (get!10434 lt!1020762))) (head!6379 (tail!4604 (get!10434 lt!1020762)))) (tail!4604 (tail!4604 (get!10434 lt!1020762)))))))

(declare-fun b!2887714 () Bool)

(declare-fun call!187389 () Bool)

(assert (=> b!2887714 (= e!1825817 (= lt!1020793 call!187389))))

(declare-fun b!2887715 () Bool)

(declare-fun e!1825816 () Bool)

(declare-fun e!1825813 () Bool)

(assert (=> b!2887715 (= e!1825816 e!1825813)))

(declare-fun res!1195863 () Bool)

(assert (=> b!2887715 (=> res!1195863 e!1825813)))

(assert (=> b!2887715 (= res!1195863 call!187389)))

(declare-fun b!2887716 () Bool)

(declare-fun res!1195862 () Bool)

(declare-fun e!1825815 () Bool)

(assert (=> b!2887716 (=> res!1195862 e!1825815)))

(assert (=> b!2887716 (= res!1195862 (not ((_ is ElementMatch!8817) (derivativeStep!2350 r!23079 (head!6379 (get!10434 lt!1020762))))))))

(assert (=> b!2887716 (= e!1825818 e!1825815)))

(declare-fun b!2887717 () Bool)

(declare-fun res!1195861 () Bool)

(assert (=> b!2887717 (=> res!1195861 e!1825813)))

(assert (=> b!2887717 (= res!1195861 (not (isEmpty!18791 (tail!4604 (tail!4604 (get!10434 lt!1020762))))))))

(declare-fun b!2887718 () Bool)

(assert (=> b!2887718 (= e!1825817 e!1825818)))

(declare-fun c!469413 () Bool)

(assert (=> b!2887718 (= c!469413 ((_ is EmptyLang!8817) (derivativeStep!2350 r!23079 (head!6379 (get!10434 lt!1020762)))))))

(declare-fun b!2887719 () Bool)

(declare-fun res!1195865 () Bool)

(assert (=> b!2887719 (=> (not res!1195865) (not e!1825814))))

(assert (=> b!2887719 (= res!1195865 (not call!187389))))

(declare-fun b!2887720 () Bool)

(declare-fun res!1195860 () Bool)

(assert (=> b!2887720 (=> res!1195860 e!1825815)))

(assert (=> b!2887720 (= res!1195860 e!1825814)))

(declare-fun res!1195864 () Bool)

(assert (=> b!2887720 (=> (not res!1195864) (not e!1825814))))

(assert (=> b!2887720 (= res!1195864 lt!1020793)))

(declare-fun b!2887721 () Bool)

(assert (=> b!2887721 (= e!1825813 (not (= (head!6379 (tail!4604 (get!10434 lt!1020762))) (c!469322 (derivativeStep!2350 r!23079 (head!6379 (get!10434 lt!1020762)))))))))

(declare-fun bm!187384 () Bool)

(assert (=> bm!187384 (= call!187389 (isEmpty!18791 (tail!4604 (get!10434 lt!1020762))))))

(declare-fun b!2887722 () Bool)

(assert (=> b!2887722 (= e!1825815 e!1825816)))

(declare-fun res!1195867 () Bool)

(assert (=> b!2887722 (=> (not res!1195867) (not e!1825816))))

(assert (=> b!2887722 (= res!1195867 (not lt!1020793))))

(assert (= (and d!834132 c!469414) b!2887710))

(assert (= (and d!834132 (not c!469414)) b!2887713))

(assert (= (and d!834132 c!469412) b!2887714))

(assert (= (and d!834132 (not c!469412)) b!2887718))

(assert (= (and b!2887718 c!469413) b!2887709))

(assert (= (and b!2887718 (not c!469413)) b!2887716))

(assert (= (and b!2887716 (not res!1195862)) b!2887720))

(assert (= (and b!2887720 res!1195864) b!2887719))

(assert (= (and b!2887719 res!1195865) b!2887711))

(assert (= (and b!2887711 res!1195866) b!2887712))

(assert (= (and b!2887720 (not res!1195860)) b!2887722))

(assert (= (and b!2887722 res!1195867) b!2887715))

(assert (= (and b!2887715 (not res!1195863)) b!2887717))

(assert (= (and b!2887717 (not res!1195861)) b!2887721))

(assert (= (or b!2887714 b!2887715 b!2887719) bm!187384))

(assert (=> b!2887721 m!3301589))

(declare-fun m!3301623 () Bool)

(assert (=> b!2887721 m!3301623))

(assert (=> b!2887713 m!3301589))

(assert (=> b!2887713 m!3301623))

(assert (=> b!2887713 m!3301587))

(assert (=> b!2887713 m!3301623))

(declare-fun m!3301625 () Bool)

(assert (=> b!2887713 m!3301625))

(assert (=> b!2887713 m!3301589))

(declare-fun m!3301627 () Bool)

(assert (=> b!2887713 m!3301627))

(assert (=> b!2887713 m!3301625))

(assert (=> b!2887713 m!3301627))

(declare-fun m!3301629 () Bool)

(assert (=> b!2887713 m!3301629))

(assert (=> bm!187384 m!3301589))

(assert (=> bm!187384 m!3301597))

(assert (=> b!2887710 m!3301587))

(declare-fun m!3301631 () Bool)

(assert (=> b!2887710 m!3301631))

(assert (=> d!834132 m!3301589))

(assert (=> d!834132 m!3301597))

(assert (=> d!834132 m!3301587))

(declare-fun m!3301633 () Bool)

(assert (=> d!834132 m!3301633))

(assert (=> b!2887712 m!3301589))

(assert (=> b!2887712 m!3301623))

(assert (=> b!2887717 m!3301589))

(assert (=> b!2887717 m!3301627))

(assert (=> b!2887717 m!3301627))

(declare-fun m!3301635 () Bool)

(assert (=> b!2887717 m!3301635))

(assert (=> b!2887711 m!3301589))

(assert (=> b!2887711 m!3301627))

(assert (=> b!2887711 m!3301627))

(assert (=> b!2887711 m!3301635))

(assert (=> b!2887602 d!834132))

(declare-fun bm!187398 () Bool)

(declare-fun call!187405 () Regex!8817)

(declare-fun call!187404 () Regex!8817)

(assert (=> bm!187398 (= call!187405 call!187404)))

(declare-fun b!2887768 () Bool)

(declare-fun e!1825847 () Regex!8817)

(assert (=> b!2887768 (= e!1825847 (Union!8817 (Concat!14138 call!187405 (regTwo!18146 r!23079)) EmptyLang!8817))))

(declare-fun b!2887769 () Bool)

(declare-fun e!1825844 () Regex!8817)

(assert (=> b!2887769 (= e!1825844 EmptyLang!8817)))

(declare-fun d!834134 () Bool)

(declare-fun lt!1020799 () Regex!8817)

(assert (=> d!834134 (validRegex!3590 lt!1020799)))

(assert (=> d!834134 (= lt!1020799 e!1825844)))

(declare-fun c!469438 () Bool)

(assert (=> d!834134 (= c!469438 (or ((_ is EmptyExpr!8817) r!23079) ((_ is EmptyLang!8817) r!23079)))))

(assert (=> d!834134 (validRegex!3590 r!23079)))

(assert (=> d!834134 (= (derivativeStep!2350 r!23079 (head!6379 (get!10434 lt!1020762))) lt!1020799)))

(declare-fun b!2887770 () Bool)

(declare-fun e!1825846 () Regex!8817)

(declare-fun call!187403 () Regex!8817)

(declare-fun call!187406 () Regex!8817)

(assert (=> b!2887770 (= e!1825846 (Union!8817 call!187403 call!187406))))

(declare-fun bm!187399 () Bool)

(assert (=> bm!187399 (= call!187404 call!187403)))

(declare-fun b!2887771 () Bool)

(declare-fun e!1825848 () Regex!8817)

(assert (=> b!2887771 (= e!1825848 (Concat!14138 call!187404 r!23079))))

(declare-fun b!2887772 () Bool)

(declare-fun c!469436 () Bool)

(assert (=> b!2887772 (= c!469436 (nullable!2719 (regOne!18146 r!23079)))))

(assert (=> b!2887772 (= e!1825848 e!1825847)))

(declare-fun b!2887773 () Bool)

(assert (=> b!2887773 (= e!1825846 e!1825848)))

(declare-fun c!469435 () Bool)

(assert (=> b!2887773 (= c!469435 ((_ is Star!8817) r!23079))))

(declare-fun b!2887774 () Bool)

(declare-fun e!1825845 () Regex!8817)

(assert (=> b!2887774 (= e!1825845 (ite (= (head!6379 (get!10434 lt!1020762)) (c!469322 r!23079)) EmptyExpr!8817 EmptyLang!8817))))

(declare-fun b!2887775 () Bool)

(declare-fun c!469437 () Bool)

(assert (=> b!2887775 (= c!469437 ((_ is Union!8817) r!23079))))

(assert (=> b!2887775 (= e!1825845 e!1825846)))

(declare-fun bm!187400 () Bool)

(assert (=> bm!187400 (= call!187403 (derivativeStep!2350 (ite c!469437 (regOne!18147 r!23079) (ite c!469435 (reg!9146 r!23079) (regOne!18146 r!23079))) (head!6379 (get!10434 lt!1020762))))))

(declare-fun b!2887776 () Bool)

(assert (=> b!2887776 (= e!1825847 (Union!8817 (Concat!14138 call!187405 (regTwo!18146 r!23079)) call!187406))))

(declare-fun bm!187401 () Bool)

(assert (=> bm!187401 (= call!187406 (derivativeStep!2350 (ite c!469437 (regTwo!18147 r!23079) (regTwo!18146 r!23079)) (head!6379 (get!10434 lt!1020762))))))

(declare-fun b!2887777 () Bool)

(assert (=> b!2887777 (= e!1825844 e!1825845)))

(declare-fun c!469439 () Bool)

(assert (=> b!2887777 (= c!469439 ((_ is ElementMatch!8817) r!23079))))

(assert (= (and d!834134 c!469438) b!2887769))

(assert (= (and d!834134 (not c!469438)) b!2887777))

(assert (= (and b!2887777 c!469439) b!2887774))

(assert (= (and b!2887777 (not c!469439)) b!2887775))

(assert (= (and b!2887775 c!469437) b!2887770))

(assert (= (and b!2887775 (not c!469437)) b!2887773))

(assert (= (and b!2887773 c!469435) b!2887771))

(assert (= (and b!2887773 (not c!469435)) b!2887772))

(assert (= (and b!2887772 c!469436) b!2887776))

(assert (= (and b!2887772 (not c!469436)) b!2887768))

(assert (= (or b!2887776 b!2887768) bm!187398))

(assert (= (or b!2887771 bm!187398) bm!187399))

(assert (= (or b!2887770 bm!187399) bm!187400))

(assert (= (or b!2887770 b!2887776) bm!187401))

(declare-fun m!3301649 () Bool)

(assert (=> d!834134 m!3301649))

(assert (=> d!834134 m!3301541))

(declare-fun m!3301651 () Bool)

(assert (=> b!2887772 m!3301651))

(assert (=> bm!187400 m!3301585))

(declare-fun m!3301655 () Bool)

(assert (=> bm!187400 m!3301655))

(assert (=> bm!187401 m!3301585))

(declare-fun m!3301657 () Bool)

(assert (=> bm!187401 m!3301657))

(assert (=> b!2887602 d!834134))

(assert (=> b!2887602 d!834124))

(assert (=> b!2887602 d!834128))

(declare-fun b!2887787 () Bool)

(declare-fun res!1195878 () Bool)

(declare-fun e!1825856 () Bool)

(assert (=> b!2887787 (=> (not res!1195878) (not e!1825856))))

(declare-fun call!187412 () Bool)

(assert (=> b!2887787 (= res!1195878 call!187412)))

(declare-fun e!1825860 () Bool)

(assert (=> b!2887787 (= e!1825860 e!1825856)))

(declare-fun b!2887788 () Bool)

(declare-fun e!1825857 () Bool)

(assert (=> b!2887788 (= e!1825857 e!1825860)))

(declare-fun c!469442 () Bool)

(assert (=> b!2887788 (= c!469442 ((_ is Union!8817) (ite c!469334 (reg!9146 r!23079) (ite c!469333 (regTwo!18147 r!23079) (regTwo!18146 r!23079)))))))

(declare-fun bm!187405 () Bool)

(assert (=> bm!187405 (= call!187412 (validRegex!3590 (ite c!469442 (regOne!18147 (ite c!469334 (reg!9146 r!23079) (ite c!469333 (regTwo!18147 r!23079) (regTwo!18146 r!23079)))) (regOne!18146 (ite c!469334 (reg!9146 r!23079) (ite c!469333 (regTwo!18147 r!23079) (regTwo!18146 r!23079)))))))))

(declare-fun bm!187406 () Bool)

(declare-fun c!469443 () Bool)

(declare-fun call!187410 () Bool)

(assert (=> bm!187406 (= call!187410 (validRegex!3590 (ite c!469443 (reg!9146 (ite c!469334 (reg!9146 r!23079) (ite c!469333 (regTwo!18147 r!23079) (regTwo!18146 r!23079)))) (ite c!469442 (regTwo!18147 (ite c!469334 (reg!9146 r!23079) (ite c!469333 (regTwo!18147 r!23079) (regTwo!18146 r!23079)))) (regTwo!18146 (ite c!469334 (reg!9146 r!23079) (ite c!469333 (regTwo!18147 r!23079) (regTwo!18146 r!23079))))))))))

(declare-fun b!2887789 () Bool)

(declare-fun e!1825862 () Bool)

(assert (=> b!2887789 (= e!1825862 call!187410)))

(declare-fun b!2887790 () Bool)

(assert (=> b!2887790 (= e!1825857 e!1825862)))

(declare-fun res!1195881 () Bool)

(assert (=> b!2887790 (= res!1195881 (not (nullable!2719 (reg!9146 (ite c!469334 (reg!9146 r!23079) (ite c!469333 (regTwo!18147 r!23079) (regTwo!18146 r!23079)))))))))

(assert (=> b!2887790 (=> (not res!1195881) (not e!1825862))))

(declare-fun b!2887791 () Bool)

(declare-fun call!187411 () Bool)

(assert (=> b!2887791 (= e!1825856 call!187411)))

(declare-fun d!834146 () Bool)

(declare-fun res!1195882 () Bool)

(declare-fun e!1825859 () Bool)

(assert (=> d!834146 (=> res!1195882 e!1825859)))

(assert (=> d!834146 (= res!1195882 ((_ is ElementMatch!8817) (ite c!469334 (reg!9146 r!23079) (ite c!469333 (regTwo!18147 r!23079) (regTwo!18146 r!23079)))))))

(assert (=> d!834146 (= (validRegex!3590 (ite c!469334 (reg!9146 r!23079) (ite c!469333 (regTwo!18147 r!23079) (regTwo!18146 r!23079)))) e!1825859)))

(declare-fun b!2887792 () Bool)

(declare-fun e!1825858 () Bool)

(assert (=> b!2887792 (= e!1825858 call!187411)))

(declare-fun b!2887793 () Bool)

(declare-fun res!1195879 () Bool)

(declare-fun e!1825861 () Bool)

(assert (=> b!2887793 (=> res!1195879 e!1825861)))

(assert (=> b!2887793 (= res!1195879 (not ((_ is Concat!14138) (ite c!469334 (reg!9146 r!23079) (ite c!469333 (regTwo!18147 r!23079) (regTwo!18146 r!23079))))))))

(assert (=> b!2887793 (= e!1825860 e!1825861)))

(declare-fun b!2887794 () Bool)

(assert (=> b!2887794 (= e!1825861 e!1825858)))

(declare-fun res!1195880 () Bool)

(assert (=> b!2887794 (=> (not res!1195880) (not e!1825858))))

(assert (=> b!2887794 (= res!1195880 call!187412)))

(declare-fun b!2887795 () Bool)

(assert (=> b!2887795 (= e!1825859 e!1825857)))

(assert (=> b!2887795 (= c!469443 ((_ is Star!8817) (ite c!469334 (reg!9146 r!23079) (ite c!469333 (regTwo!18147 r!23079) (regTwo!18146 r!23079)))))))

(declare-fun bm!187407 () Bool)

(assert (=> bm!187407 (= call!187411 call!187410)))

(assert (= (and d!834146 (not res!1195882)) b!2887795))

(assert (= (and b!2887795 c!469443) b!2887790))

(assert (= (and b!2887795 (not c!469443)) b!2887788))

(assert (= (and b!2887790 res!1195881) b!2887789))

(assert (= (and b!2887788 c!469442) b!2887787))

(assert (= (and b!2887788 (not c!469442)) b!2887793))

(assert (= (and b!2887787 res!1195878) b!2887791))

(assert (= (and b!2887793 (not res!1195879)) b!2887794))

(assert (= (and b!2887794 res!1195880) b!2887792))

(assert (= (or b!2887791 b!2887792) bm!187407))

(assert (= (or b!2887787 b!2887794) bm!187405))

(assert (= (or b!2887789 bm!187407) bm!187406))

(declare-fun m!3301665 () Bool)

(assert (=> bm!187405 m!3301665))

(declare-fun m!3301667 () Bool)

(assert (=> bm!187406 m!3301667))

(declare-fun m!3301669 () Bool)

(assert (=> b!2887790 m!3301669))

(assert (=> bm!187353 d!834146))

(assert (=> b!2887606 d!834126))

(assert (=> b!2887606 d!834128))

(declare-fun b!2887796 () Bool)

(declare-fun c!469449 () Bool)

(assert (=> b!2887796 (= c!469449 ((_ is ElementMatch!8817) (ite c!469370 (regOne!18147 r!23079) (regTwo!18146 r!23079))))))

(declare-fun e!1825863 () Option!6490)

(declare-fun e!1825870 () Option!6490)

(assert (=> b!2887796 (= e!1825863 e!1825870)))

(declare-fun b!2887797 () Bool)

(declare-fun e!1825864 () Option!6490)

(declare-fun call!187413 () Option!6490)

(assert (=> b!2887797 (= e!1825864 call!187413)))

(declare-fun b!2887798 () Bool)

(declare-fun e!1825869 () Option!6490)

(assert (=> b!2887798 (= e!1825870 e!1825869)))

(declare-fun c!469445 () Bool)

(assert (=> b!2887798 (= c!469445 ((_ is Star!8817) (ite c!469370 (regOne!18147 r!23079) (regTwo!18146 r!23079))))))

(declare-fun c!469444 () Bool)

(declare-fun bm!187409 () Bool)

(assert (=> bm!187409 (= call!187413 (getLanguageWitness!524 (ite c!469444 (regTwo!18147 (ite c!469370 (regOne!18147 r!23079) (regTwo!18146 r!23079))) (regOne!18146 (ite c!469370 (regOne!18147 r!23079) (regTwo!18146 r!23079))))))))

(declare-fun b!2887799 () Bool)

(declare-fun c!469450 () Bool)

(declare-fun lt!1020800 () Option!6490)

(assert (=> b!2887799 (= c!469450 ((_ is Some!6489) lt!1020800))))

(declare-fun call!187414 () Option!6490)

(assert (=> b!2887799 (= lt!1020800 call!187414)))

(declare-fun e!1825865 () Option!6490)

(declare-fun e!1825867 () Option!6490)

(assert (=> b!2887799 (= e!1825865 e!1825867)))

(declare-fun b!2887800 () Bool)

(declare-fun e!1825868 () Option!6490)

(assert (=> b!2887800 (= e!1825868 (Some!6489 Nil!34494))))

(declare-fun b!2887801 () Bool)

(assert (=> b!2887801 (= e!1825865 None!6489)))

(declare-fun b!2887802 () Bool)

(declare-fun lt!1020801 () Option!6490)

(assert (=> b!2887802 (= e!1825864 lt!1020801)))

(declare-fun b!2887803 () Bool)

(declare-fun e!1825866 () Option!6490)

(assert (=> b!2887803 (= e!1825866 e!1825865)))

(declare-fun lt!1020802 () Option!6490)

(assert (=> b!2887803 (= lt!1020802 call!187413)))

(declare-fun c!469447 () Bool)

(assert (=> b!2887803 (= c!469447 ((_ is Some!6489) lt!1020802))))

(declare-fun b!2887804 () Bool)

(assert (=> b!2887804 (= e!1825870 (Some!6489 (Cons!34494 (c!469322 (ite c!469370 (regOne!18147 r!23079) (regTwo!18146 r!23079))) Nil!34494)))))

(declare-fun b!2887805 () Bool)

(assert (=> b!2887805 (= e!1825863 None!6489)))

(declare-fun b!2887806 () Bool)

(assert (=> b!2887806 (= e!1825869 (Some!6489 Nil!34494))))

(declare-fun b!2887807 () Bool)

(assert (=> b!2887807 (= c!469444 ((_ is Union!8817) (ite c!469370 (regOne!18147 r!23079) (regTwo!18146 r!23079))))))

(assert (=> b!2887807 (= e!1825869 e!1825866)))

(declare-fun bm!187408 () Bool)

(assert (=> bm!187408 (= call!187414 (getLanguageWitness!524 (ite c!469444 (regOne!18147 (ite c!469370 (regOne!18147 r!23079) (regTwo!18146 r!23079))) (regTwo!18146 (ite c!469370 (regOne!18147 r!23079) (regTwo!18146 r!23079))))))))

(declare-fun d!834150 () Bool)

(declare-fun c!469448 () Bool)

(assert (=> d!834150 (= c!469448 ((_ is EmptyExpr!8817) (ite c!469370 (regOne!18147 r!23079) (regTwo!18146 r!23079))))))

(assert (=> d!834150 (= (getLanguageWitness!524 (ite c!469370 (regOne!18147 r!23079) (regTwo!18146 r!23079))) e!1825868)))

(declare-fun b!2887808 () Bool)

(assert (=> b!2887808 (= e!1825867 (Some!6489 (++!8216 (v!34615 lt!1020802) (v!34615 lt!1020800))))))

(declare-fun b!2887809 () Bool)

(assert (=> b!2887809 (= e!1825868 e!1825863)))

(declare-fun c!469446 () Bool)

(assert (=> b!2887809 (= c!469446 ((_ is EmptyLang!8817) (ite c!469370 (regOne!18147 r!23079) (regTwo!18146 r!23079))))))

(declare-fun b!2887810 () Bool)

(assert (=> b!2887810 (= e!1825866 e!1825864)))

(assert (=> b!2887810 (= lt!1020801 call!187414)))

(declare-fun c!469451 () Bool)

(assert (=> b!2887810 (= c!469451 ((_ is Some!6489) lt!1020801))))

(declare-fun b!2887811 () Bool)

(assert (=> b!2887811 (= e!1825867 None!6489)))

(assert (= (and d!834150 c!469448) b!2887800))

(assert (= (and d!834150 (not c!469448)) b!2887809))

(assert (= (and b!2887809 c!469446) b!2887805))

(assert (= (and b!2887809 (not c!469446)) b!2887796))

(assert (= (and b!2887796 c!469449) b!2887804))

(assert (= (and b!2887796 (not c!469449)) b!2887798))

(assert (= (and b!2887798 c!469445) b!2887806))

(assert (= (and b!2887798 (not c!469445)) b!2887807))

(assert (= (and b!2887807 c!469444) b!2887810))

(assert (= (and b!2887807 (not c!469444)) b!2887803))

(assert (= (and b!2887810 c!469451) b!2887802))

(assert (= (and b!2887810 (not c!469451)) b!2887797))

(assert (= (and b!2887803 c!469447) b!2887799))

(assert (= (and b!2887803 (not c!469447)) b!2887801))

(assert (= (and b!2887799 c!469450) b!2887808))

(assert (= (and b!2887799 (not c!469450)) b!2887811))

(assert (= (or b!2887797 b!2887803) bm!187409))

(assert (= (or b!2887810 b!2887799) bm!187408))

(declare-fun m!3301671 () Bool)

(assert (=> bm!187409 m!3301671))

(declare-fun m!3301673 () Bool)

(assert (=> bm!187408 m!3301673))

(declare-fun m!3301675 () Bool)

(assert (=> b!2887808 m!3301675))

(assert (=> bm!187366 d!834150))

(declare-fun b!2887812 () Bool)

(declare-fun res!1195883 () Bool)

(declare-fun e!1825871 () Bool)

(assert (=> b!2887812 (=> (not res!1195883) (not e!1825871))))

(declare-fun call!187417 () Bool)

(assert (=> b!2887812 (= res!1195883 call!187417)))

(declare-fun e!1825875 () Bool)

(assert (=> b!2887812 (= e!1825875 e!1825871)))

(declare-fun b!2887813 () Bool)

(declare-fun e!1825872 () Bool)

(assert (=> b!2887813 (= e!1825872 e!1825875)))

(declare-fun c!469452 () Bool)

(assert (=> b!2887813 (= c!469452 ((_ is Union!8817) (ite c!469333 (regOne!18147 r!23079) (regOne!18146 r!23079))))))

(declare-fun bm!187410 () Bool)

(assert (=> bm!187410 (= call!187417 (validRegex!3590 (ite c!469452 (regOne!18147 (ite c!469333 (regOne!18147 r!23079) (regOne!18146 r!23079))) (regOne!18146 (ite c!469333 (regOne!18147 r!23079) (regOne!18146 r!23079))))))))

(declare-fun call!187415 () Bool)

(declare-fun c!469453 () Bool)

(declare-fun bm!187411 () Bool)

(assert (=> bm!187411 (= call!187415 (validRegex!3590 (ite c!469453 (reg!9146 (ite c!469333 (regOne!18147 r!23079) (regOne!18146 r!23079))) (ite c!469452 (regTwo!18147 (ite c!469333 (regOne!18147 r!23079) (regOne!18146 r!23079))) (regTwo!18146 (ite c!469333 (regOne!18147 r!23079) (regOne!18146 r!23079)))))))))

(declare-fun b!2887814 () Bool)

(declare-fun e!1825877 () Bool)

(assert (=> b!2887814 (= e!1825877 call!187415)))

(declare-fun b!2887815 () Bool)

(assert (=> b!2887815 (= e!1825872 e!1825877)))

(declare-fun res!1195886 () Bool)

(assert (=> b!2887815 (= res!1195886 (not (nullable!2719 (reg!9146 (ite c!469333 (regOne!18147 r!23079) (regOne!18146 r!23079))))))))

(assert (=> b!2887815 (=> (not res!1195886) (not e!1825877))))

(declare-fun b!2887816 () Bool)

(declare-fun call!187416 () Bool)

(assert (=> b!2887816 (= e!1825871 call!187416)))

(declare-fun d!834158 () Bool)

(declare-fun res!1195887 () Bool)

(declare-fun e!1825874 () Bool)

(assert (=> d!834158 (=> res!1195887 e!1825874)))

(assert (=> d!834158 (= res!1195887 ((_ is ElementMatch!8817) (ite c!469333 (regOne!18147 r!23079) (regOne!18146 r!23079))))))

(assert (=> d!834158 (= (validRegex!3590 (ite c!469333 (regOne!18147 r!23079) (regOne!18146 r!23079))) e!1825874)))

(declare-fun b!2887817 () Bool)

(declare-fun e!1825873 () Bool)

(assert (=> b!2887817 (= e!1825873 call!187416)))

(declare-fun b!2887818 () Bool)

(declare-fun res!1195884 () Bool)

(declare-fun e!1825876 () Bool)

(assert (=> b!2887818 (=> res!1195884 e!1825876)))

(assert (=> b!2887818 (= res!1195884 (not ((_ is Concat!14138) (ite c!469333 (regOne!18147 r!23079) (regOne!18146 r!23079)))))))

(assert (=> b!2887818 (= e!1825875 e!1825876)))

(declare-fun b!2887819 () Bool)

(assert (=> b!2887819 (= e!1825876 e!1825873)))

(declare-fun res!1195885 () Bool)

(assert (=> b!2887819 (=> (not res!1195885) (not e!1825873))))

(assert (=> b!2887819 (= res!1195885 call!187417)))

(declare-fun b!2887820 () Bool)

(assert (=> b!2887820 (= e!1825874 e!1825872)))

(assert (=> b!2887820 (= c!469453 ((_ is Star!8817) (ite c!469333 (regOne!18147 r!23079) (regOne!18146 r!23079))))))

(declare-fun bm!187412 () Bool)

(assert (=> bm!187412 (= call!187416 call!187415)))

(assert (= (and d!834158 (not res!1195887)) b!2887820))

(assert (= (and b!2887820 c!469453) b!2887815))

(assert (= (and b!2887820 (not c!469453)) b!2887813))

(assert (= (and b!2887815 res!1195886) b!2887814))

(assert (= (and b!2887813 c!469452) b!2887812))

(assert (= (and b!2887813 (not c!469452)) b!2887818))

(assert (= (and b!2887812 res!1195883) b!2887816))

(assert (= (and b!2887818 (not res!1195884)) b!2887819))

(assert (= (and b!2887819 res!1195885) b!2887817))

(assert (= (or b!2887816 b!2887817) bm!187412))

(assert (= (or b!2887812 b!2887819) bm!187410))

(assert (= (or b!2887814 bm!187412) bm!187411))

(declare-fun m!3301677 () Bool)

(assert (=> bm!187410 m!3301677))

(declare-fun m!3301679 () Bool)

(assert (=> bm!187411 m!3301679))

(declare-fun m!3301681 () Bool)

(assert (=> b!2887815 m!3301681))

(assert (=> bm!187352 d!834158))

(declare-fun d!834160 () Bool)

(assert (=> d!834160 (= (isEmpty!18789 lt!1020762) (not ((_ is Some!6489) lt!1020762)))))

(assert (=> d!834100 d!834160))

(declare-fun e!1825878 () Bool)

(assert (=> b!2887664 (= tp!926247 e!1825878)))

(declare-fun b!2887822 () Bool)

(declare-fun tp!926271 () Bool)

(declare-fun tp!926270 () Bool)

(assert (=> b!2887822 (= e!1825878 (and tp!926271 tp!926270))))

(declare-fun b!2887824 () Bool)

(declare-fun tp!926272 () Bool)

(declare-fun tp!926274 () Bool)

(assert (=> b!2887824 (= e!1825878 (and tp!926272 tp!926274))))

(declare-fun b!2887823 () Bool)

(declare-fun tp!926273 () Bool)

(assert (=> b!2887823 (= e!1825878 tp!926273)))

(declare-fun b!2887821 () Bool)

(assert (=> b!2887821 (= e!1825878 tp_is_empty!15221)))

(assert (= (and b!2887664 ((_ is ElementMatch!8817) (regOne!18147 (reg!9146 r!23079)))) b!2887821))

(assert (= (and b!2887664 ((_ is Concat!14138) (regOne!18147 (reg!9146 r!23079)))) b!2887822))

(assert (= (and b!2887664 ((_ is Star!8817) (regOne!18147 (reg!9146 r!23079)))) b!2887823))

(assert (= (and b!2887664 ((_ is Union!8817) (regOne!18147 (reg!9146 r!23079)))) b!2887824))

(declare-fun e!1825879 () Bool)

(assert (=> b!2887664 (= tp!926249 e!1825879)))

(declare-fun b!2887826 () Bool)

(declare-fun tp!926276 () Bool)

(declare-fun tp!926275 () Bool)

(assert (=> b!2887826 (= e!1825879 (and tp!926276 tp!926275))))

(declare-fun b!2887828 () Bool)

(declare-fun tp!926277 () Bool)

(declare-fun tp!926279 () Bool)

(assert (=> b!2887828 (= e!1825879 (and tp!926277 tp!926279))))

(declare-fun b!2887827 () Bool)

(declare-fun tp!926278 () Bool)

(assert (=> b!2887827 (= e!1825879 tp!926278)))

(declare-fun b!2887825 () Bool)

(assert (=> b!2887825 (= e!1825879 tp_is_empty!15221)))

(assert (= (and b!2887664 ((_ is ElementMatch!8817) (regTwo!18147 (reg!9146 r!23079)))) b!2887825))

(assert (= (and b!2887664 ((_ is Concat!14138) (regTwo!18147 (reg!9146 r!23079)))) b!2887826))

(assert (= (and b!2887664 ((_ is Star!8817) (regTwo!18147 (reg!9146 r!23079)))) b!2887827))

(assert (= (and b!2887664 ((_ is Union!8817) (regTwo!18147 (reg!9146 r!23079)))) b!2887828))

(declare-fun e!1825880 () Bool)

(assert (=> b!2887668 (= tp!926252 e!1825880)))

(declare-fun b!2887830 () Bool)

(declare-fun tp!926281 () Bool)

(declare-fun tp!926280 () Bool)

(assert (=> b!2887830 (= e!1825880 (and tp!926281 tp!926280))))

(declare-fun b!2887832 () Bool)

(declare-fun tp!926282 () Bool)

(declare-fun tp!926284 () Bool)

(assert (=> b!2887832 (= e!1825880 (and tp!926282 tp!926284))))

(declare-fun b!2887831 () Bool)

(declare-fun tp!926283 () Bool)

(assert (=> b!2887831 (= e!1825880 tp!926283)))

(declare-fun b!2887829 () Bool)

(assert (=> b!2887829 (= e!1825880 tp_is_empty!15221)))

(assert (= (and b!2887668 ((_ is ElementMatch!8817) (regOne!18147 (regOne!18147 r!23079)))) b!2887829))

(assert (= (and b!2887668 ((_ is Concat!14138) (regOne!18147 (regOne!18147 r!23079)))) b!2887830))

(assert (= (and b!2887668 ((_ is Star!8817) (regOne!18147 (regOne!18147 r!23079)))) b!2887831))

(assert (= (and b!2887668 ((_ is Union!8817) (regOne!18147 (regOne!18147 r!23079)))) b!2887832))

(declare-fun e!1825881 () Bool)

(assert (=> b!2887668 (= tp!926254 e!1825881)))

(declare-fun b!2887834 () Bool)

(declare-fun tp!926286 () Bool)

(declare-fun tp!926285 () Bool)

(assert (=> b!2887834 (= e!1825881 (and tp!926286 tp!926285))))

(declare-fun b!2887836 () Bool)

(declare-fun tp!926287 () Bool)

(declare-fun tp!926289 () Bool)

(assert (=> b!2887836 (= e!1825881 (and tp!926287 tp!926289))))

(declare-fun b!2887835 () Bool)

(declare-fun tp!926288 () Bool)

(assert (=> b!2887835 (= e!1825881 tp!926288)))

(declare-fun b!2887833 () Bool)

(assert (=> b!2887833 (= e!1825881 tp_is_empty!15221)))

(assert (= (and b!2887668 ((_ is ElementMatch!8817) (regTwo!18147 (regOne!18147 r!23079)))) b!2887833))

(assert (= (and b!2887668 ((_ is Concat!14138) (regTwo!18147 (regOne!18147 r!23079)))) b!2887834))

(assert (= (and b!2887668 ((_ is Star!8817) (regTwo!18147 (regOne!18147 r!23079)))) b!2887835))

(assert (= (and b!2887668 ((_ is Union!8817) (regTwo!18147 (regOne!18147 r!23079)))) b!2887836))

(declare-fun e!1825884 () Bool)

(assert (=> b!2887674 (= tp!926261 e!1825884)))

(declare-fun b!2887842 () Bool)

(declare-fun tp!926291 () Bool)

(declare-fun tp!926290 () Bool)

(assert (=> b!2887842 (= e!1825884 (and tp!926291 tp!926290))))

(declare-fun b!2887844 () Bool)

(declare-fun tp!926292 () Bool)

(declare-fun tp!926294 () Bool)

(assert (=> b!2887844 (= e!1825884 (and tp!926292 tp!926294))))

(declare-fun b!2887843 () Bool)

(declare-fun tp!926293 () Bool)

(assert (=> b!2887843 (= e!1825884 tp!926293)))

(declare-fun b!2887841 () Bool)

(assert (=> b!2887841 (= e!1825884 tp_is_empty!15221)))

(assert (= (and b!2887674 ((_ is ElementMatch!8817) (regOne!18146 (regOne!18146 r!23079)))) b!2887841))

(assert (= (and b!2887674 ((_ is Concat!14138) (regOne!18146 (regOne!18146 r!23079)))) b!2887842))

(assert (= (and b!2887674 ((_ is Star!8817) (regOne!18146 (regOne!18146 r!23079)))) b!2887843))

(assert (= (and b!2887674 ((_ is Union!8817) (regOne!18146 (regOne!18146 r!23079)))) b!2887844))

(declare-fun e!1825885 () Bool)

(assert (=> b!2887674 (= tp!926260 e!1825885)))

(declare-fun b!2887846 () Bool)

(declare-fun tp!926296 () Bool)

(declare-fun tp!926295 () Bool)

(assert (=> b!2887846 (= e!1825885 (and tp!926296 tp!926295))))

(declare-fun b!2887848 () Bool)

(declare-fun tp!926297 () Bool)

(declare-fun tp!926299 () Bool)

(assert (=> b!2887848 (= e!1825885 (and tp!926297 tp!926299))))

(declare-fun b!2887847 () Bool)

(declare-fun tp!926298 () Bool)

(assert (=> b!2887847 (= e!1825885 tp!926298)))

(declare-fun b!2887845 () Bool)

(assert (=> b!2887845 (= e!1825885 tp_is_empty!15221)))

(assert (= (and b!2887674 ((_ is ElementMatch!8817) (regTwo!18146 (regOne!18146 r!23079)))) b!2887845))

(assert (= (and b!2887674 ((_ is Concat!14138) (regTwo!18146 (regOne!18146 r!23079)))) b!2887846))

(assert (= (and b!2887674 ((_ is Star!8817) (regTwo!18146 (regOne!18146 r!23079)))) b!2887847))

(assert (= (and b!2887674 ((_ is Union!8817) (regTwo!18146 (regOne!18146 r!23079)))) b!2887848))

(declare-fun e!1825888 () Bool)

(assert (=> b!2887679 (= tp!926268 e!1825888)))

(declare-fun b!2887854 () Bool)

(declare-fun tp!926301 () Bool)

(declare-fun tp!926300 () Bool)

(assert (=> b!2887854 (= e!1825888 (and tp!926301 tp!926300))))

(declare-fun b!2887856 () Bool)

(declare-fun tp!926302 () Bool)

(declare-fun tp!926304 () Bool)

(assert (=> b!2887856 (= e!1825888 (and tp!926302 tp!926304))))

(declare-fun b!2887855 () Bool)

(declare-fun tp!926303 () Bool)

(assert (=> b!2887855 (= e!1825888 tp!926303)))

(declare-fun b!2887853 () Bool)

(assert (=> b!2887853 (= e!1825888 tp_is_empty!15221)))

(assert (= (and b!2887679 ((_ is ElementMatch!8817) (reg!9146 (regTwo!18146 r!23079)))) b!2887853))

(assert (= (and b!2887679 ((_ is Concat!14138) (reg!9146 (regTwo!18146 r!23079)))) b!2887854))

(assert (= (and b!2887679 ((_ is Star!8817) (reg!9146 (regTwo!18146 r!23079)))) b!2887855))

(assert (= (and b!2887679 ((_ is Union!8817) (reg!9146 (regTwo!18146 r!23079)))) b!2887856))

(declare-fun e!1825889 () Bool)

(assert (=> b!2887678 (= tp!926266 e!1825889)))

(declare-fun b!2887858 () Bool)

(declare-fun tp!926306 () Bool)

(declare-fun tp!926305 () Bool)

(assert (=> b!2887858 (= e!1825889 (and tp!926306 tp!926305))))

(declare-fun b!2887860 () Bool)

(declare-fun tp!926307 () Bool)

(declare-fun tp!926309 () Bool)

(assert (=> b!2887860 (= e!1825889 (and tp!926307 tp!926309))))

(declare-fun b!2887859 () Bool)

(declare-fun tp!926308 () Bool)

(assert (=> b!2887859 (= e!1825889 tp!926308)))

(declare-fun b!2887857 () Bool)

(assert (=> b!2887857 (= e!1825889 tp_is_empty!15221)))

(assert (= (and b!2887678 ((_ is ElementMatch!8817) (regOne!18146 (regTwo!18146 r!23079)))) b!2887857))

(assert (= (and b!2887678 ((_ is Concat!14138) (regOne!18146 (regTwo!18146 r!23079)))) b!2887858))

(assert (= (and b!2887678 ((_ is Star!8817) (regOne!18146 (regTwo!18146 r!23079)))) b!2887859))

(assert (= (and b!2887678 ((_ is Union!8817) (regOne!18146 (regTwo!18146 r!23079)))) b!2887860))

(declare-fun e!1825890 () Bool)

(assert (=> b!2887678 (= tp!926265 e!1825890)))

(declare-fun b!2887862 () Bool)

(declare-fun tp!926311 () Bool)

(declare-fun tp!926310 () Bool)

(assert (=> b!2887862 (= e!1825890 (and tp!926311 tp!926310))))

(declare-fun b!2887864 () Bool)

(declare-fun tp!926312 () Bool)

(declare-fun tp!926314 () Bool)

(assert (=> b!2887864 (= e!1825890 (and tp!926312 tp!926314))))

(declare-fun b!2887863 () Bool)

(declare-fun tp!926313 () Bool)

(assert (=> b!2887863 (= e!1825890 tp!926313)))

(declare-fun b!2887861 () Bool)

(assert (=> b!2887861 (= e!1825890 tp_is_empty!15221)))

(assert (= (and b!2887678 ((_ is ElementMatch!8817) (regTwo!18146 (regTwo!18146 r!23079)))) b!2887861))

(assert (= (and b!2887678 ((_ is Concat!14138) (regTwo!18146 (regTwo!18146 r!23079)))) b!2887862))

(assert (= (and b!2887678 ((_ is Star!8817) (regTwo!18146 (regTwo!18146 r!23079)))) b!2887863))

(assert (= (and b!2887678 ((_ is Union!8817) (regTwo!18146 (regTwo!18146 r!23079)))) b!2887864))

(declare-fun e!1825891 () Bool)

(assert (=> b!2887672 (= tp!926257 e!1825891)))

(declare-fun b!2887866 () Bool)

(declare-fun tp!926316 () Bool)

(declare-fun tp!926315 () Bool)

(assert (=> b!2887866 (= e!1825891 (and tp!926316 tp!926315))))

(declare-fun b!2887868 () Bool)

(declare-fun tp!926317 () Bool)

(declare-fun tp!926319 () Bool)

(assert (=> b!2887868 (= e!1825891 (and tp!926317 tp!926319))))

(declare-fun b!2887867 () Bool)

(declare-fun tp!926318 () Bool)

(assert (=> b!2887867 (= e!1825891 tp!926318)))

(declare-fun b!2887865 () Bool)

(assert (=> b!2887865 (= e!1825891 tp_is_empty!15221)))

(assert (= (and b!2887672 ((_ is ElementMatch!8817) (regOne!18147 (regTwo!18147 r!23079)))) b!2887865))

(assert (= (and b!2887672 ((_ is Concat!14138) (regOne!18147 (regTwo!18147 r!23079)))) b!2887866))

(assert (= (and b!2887672 ((_ is Star!8817) (regOne!18147 (regTwo!18147 r!23079)))) b!2887867))

(assert (= (and b!2887672 ((_ is Union!8817) (regOne!18147 (regTwo!18147 r!23079)))) b!2887868))

(declare-fun e!1825892 () Bool)

(assert (=> b!2887672 (= tp!926259 e!1825892)))

(declare-fun b!2887870 () Bool)

(declare-fun tp!926321 () Bool)

(declare-fun tp!926320 () Bool)

(assert (=> b!2887870 (= e!1825892 (and tp!926321 tp!926320))))

(declare-fun b!2887872 () Bool)

(declare-fun tp!926322 () Bool)

(declare-fun tp!926324 () Bool)

(assert (=> b!2887872 (= e!1825892 (and tp!926322 tp!926324))))

(declare-fun b!2887871 () Bool)

(declare-fun tp!926323 () Bool)

(assert (=> b!2887871 (= e!1825892 tp!926323)))

(declare-fun b!2887869 () Bool)

(assert (=> b!2887869 (= e!1825892 tp_is_empty!15221)))

(assert (= (and b!2887672 ((_ is ElementMatch!8817) (regTwo!18147 (regTwo!18147 r!23079)))) b!2887869))

(assert (= (and b!2887672 ((_ is Concat!14138) (regTwo!18147 (regTwo!18147 r!23079)))) b!2887870))

(assert (= (and b!2887672 ((_ is Star!8817) (regTwo!18147 (regTwo!18147 r!23079)))) b!2887871))

(assert (= (and b!2887672 ((_ is Union!8817) (regTwo!18147 (regTwo!18147 r!23079)))) b!2887872))

(declare-fun e!1825893 () Bool)

(assert (=> b!2887663 (= tp!926248 e!1825893)))

(declare-fun b!2887874 () Bool)

(declare-fun tp!926326 () Bool)

(declare-fun tp!926325 () Bool)

(assert (=> b!2887874 (= e!1825893 (and tp!926326 tp!926325))))

(declare-fun b!2887876 () Bool)

(declare-fun tp!926327 () Bool)

(declare-fun tp!926329 () Bool)

(assert (=> b!2887876 (= e!1825893 (and tp!926327 tp!926329))))

(declare-fun b!2887875 () Bool)

(declare-fun tp!926328 () Bool)

(assert (=> b!2887875 (= e!1825893 tp!926328)))

(declare-fun b!2887873 () Bool)

(assert (=> b!2887873 (= e!1825893 tp_is_empty!15221)))

(assert (= (and b!2887663 ((_ is ElementMatch!8817) (reg!9146 (reg!9146 r!23079)))) b!2887873))

(assert (= (and b!2887663 ((_ is Concat!14138) (reg!9146 (reg!9146 r!23079)))) b!2887874))

(assert (= (and b!2887663 ((_ is Star!8817) (reg!9146 (reg!9146 r!23079)))) b!2887875))

(assert (= (and b!2887663 ((_ is Union!8817) (reg!9146 (reg!9146 r!23079)))) b!2887876))

(declare-fun e!1825894 () Bool)

(assert (=> b!2887676 (= tp!926262 e!1825894)))

(declare-fun b!2887878 () Bool)

(declare-fun tp!926331 () Bool)

(declare-fun tp!926330 () Bool)

(assert (=> b!2887878 (= e!1825894 (and tp!926331 tp!926330))))

(declare-fun b!2887880 () Bool)

(declare-fun tp!926332 () Bool)

(declare-fun tp!926334 () Bool)

(assert (=> b!2887880 (= e!1825894 (and tp!926332 tp!926334))))

(declare-fun b!2887879 () Bool)

(declare-fun tp!926333 () Bool)

(assert (=> b!2887879 (= e!1825894 tp!926333)))

(declare-fun b!2887877 () Bool)

(assert (=> b!2887877 (= e!1825894 tp_is_empty!15221)))

(assert (= (and b!2887676 ((_ is ElementMatch!8817) (regOne!18147 (regOne!18146 r!23079)))) b!2887877))

(assert (= (and b!2887676 ((_ is Concat!14138) (regOne!18147 (regOne!18146 r!23079)))) b!2887878))

(assert (= (and b!2887676 ((_ is Star!8817) (regOne!18147 (regOne!18146 r!23079)))) b!2887879))

(assert (= (and b!2887676 ((_ is Union!8817) (regOne!18147 (regOne!18146 r!23079)))) b!2887880))

(declare-fun e!1825895 () Bool)

(assert (=> b!2887676 (= tp!926264 e!1825895)))

(declare-fun b!2887882 () Bool)

(declare-fun tp!926336 () Bool)

(declare-fun tp!926335 () Bool)

(assert (=> b!2887882 (= e!1825895 (and tp!926336 tp!926335))))

(declare-fun b!2887884 () Bool)

(declare-fun tp!926337 () Bool)

(declare-fun tp!926339 () Bool)

(assert (=> b!2887884 (= e!1825895 (and tp!926337 tp!926339))))

(declare-fun b!2887883 () Bool)

(declare-fun tp!926338 () Bool)

(assert (=> b!2887883 (= e!1825895 tp!926338)))

(declare-fun b!2887881 () Bool)

(assert (=> b!2887881 (= e!1825895 tp_is_empty!15221)))

(assert (= (and b!2887676 ((_ is ElementMatch!8817) (regTwo!18147 (regOne!18146 r!23079)))) b!2887881))

(assert (= (and b!2887676 ((_ is Concat!14138) (regTwo!18147 (regOne!18146 r!23079)))) b!2887882))

(assert (= (and b!2887676 ((_ is Star!8817) (regTwo!18147 (regOne!18146 r!23079)))) b!2887883))

(assert (= (and b!2887676 ((_ is Union!8817) (regTwo!18147 (regOne!18146 r!23079)))) b!2887884))

(declare-fun e!1825898 () Bool)

(assert (=> b!2887662 (= tp!926246 e!1825898)))

(declare-fun b!2887890 () Bool)

(declare-fun tp!926341 () Bool)

(declare-fun tp!926340 () Bool)

(assert (=> b!2887890 (= e!1825898 (and tp!926341 tp!926340))))

(declare-fun b!2887892 () Bool)

(declare-fun tp!926342 () Bool)

(declare-fun tp!926344 () Bool)

(assert (=> b!2887892 (= e!1825898 (and tp!926342 tp!926344))))

(declare-fun b!2887891 () Bool)

(declare-fun tp!926343 () Bool)

(assert (=> b!2887891 (= e!1825898 tp!926343)))

(declare-fun b!2887889 () Bool)

(assert (=> b!2887889 (= e!1825898 tp_is_empty!15221)))

(assert (= (and b!2887662 ((_ is ElementMatch!8817) (regOne!18146 (reg!9146 r!23079)))) b!2887889))

(assert (= (and b!2887662 ((_ is Concat!14138) (regOne!18146 (reg!9146 r!23079)))) b!2887890))

(assert (= (and b!2887662 ((_ is Star!8817) (regOne!18146 (reg!9146 r!23079)))) b!2887891))

(assert (= (and b!2887662 ((_ is Union!8817) (regOne!18146 (reg!9146 r!23079)))) b!2887892))

(declare-fun e!1825899 () Bool)

(assert (=> b!2887662 (= tp!926245 e!1825899)))

(declare-fun b!2887894 () Bool)

(declare-fun tp!926346 () Bool)

(declare-fun tp!926345 () Bool)

(assert (=> b!2887894 (= e!1825899 (and tp!926346 tp!926345))))

(declare-fun b!2887896 () Bool)

(declare-fun tp!926347 () Bool)

(declare-fun tp!926349 () Bool)

(assert (=> b!2887896 (= e!1825899 (and tp!926347 tp!926349))))

(declare-fun b!2887895 () Bool)

(declare-fun tp!926348 () Bool)

(assert (=> b!2887895 (= e!1825899 tp!926348)))

(declare-fun b!2887893 () Bool)

(assert (=> b!2887893 (= e!1825899 tp_is_empty!15221)))

(assert (= (and b!2887662 ((_ is ElementMatch!8817) (regTwo!18146 (reg!9146 r!23079)))) b!2887893))

(assert (= (and b!2887662 ((_ is Concat!14138) (regTwo!18146 (reg!9146 r!23079)))) b!2887894))

(assert (= (and b!2887662 ((_ is Star!8817) (regTwo!18146 (reg!9146 r!23079)))) b!2887895))

(assert (= (and b!2887662 ((_ is Union!8817) (regTwo!18146 (reg!9146 r!23079)))) b!2887896))

(declare-fun e!1825900 () Bool)

(assert (=> b!2887667 (= tp!926253 e!1825900)))

(declare-fun b!2887898 () Bool)

(declare-fun tp!926351 () Bool)

(declare-fun tp!926350 () Bool)

(assert (=> b!2887898 (= e!1825900 (and tp!926351 tp!926350))))

(declare-fun b!2887900 () Bool)

(declare-fun tp!926352 () Bool)

(declare-fun tp!926354 () Bool)

(assert (=> b!2887900 (= e!1825900 (and tp!926352 tp!926354))))

(declare-fun b!2887899 () Bool)

(declare-fun tp!926353 () Bool)

(assert (=> b!2887899 (= e!1825900 tp!926353)))

(declare-fun b!2887897 () Bool)

(assert (=> b!2887897 (= e!1825900 tp_is_empty!15221)))

(assert (= (and b!2887667 ((_ is ElementMatch!8817) (reg!9146 (regOne!18147 r!23079)))) b!2887897))

(assert (= (and b!2887667 ((_ is Concat!14138) (reg!9146 (regOne!18147 r!23079)))) b!2887898))

(assert (= (and b!2887667 ((_ is Star!8817) (reg!9146 (regOne!18147 r!23079)))) b!2887899))

(assert (= (and b!2887667 ((_ is Union!8817) (reg!9146 (regOne!18147 r!23079)))) b!2887900))

(declare-fun e!1825901 () Bool)

(assert (=> b!2887680 (= tp!926267 e!1825901)))

(declare-fun b!2887902 () Bool)

(declare-fun tp!926356 () Bool)

(declare-fun tp!926355 () Bool)

(assert (=> b!2887902 (= e!1825901 (and tp!926356 tp!926355))))

(declare-fun b!2887904 () Bool)

(declare-fun tp!926357 () Bool)

(declare-fun tp!926359 () Bool)

(assert (=> b!2887904 (= e!1825901 (and tp!926357 tp!926359))))

(declare-fun b!2887903 () Bool)

(declare-fun tp!926358 () Bool)

(assert (=> b!2887903 (= e!1825901 tp!926358)))

(declare-fun b!2887901 () Bool)

(assert (=> b!2887901 (= e!1825901 tp_is_empty!15221)))

(assert (= (and b!2887680 ((_ is ElementMatch!8817) (regOne!18147 (regTwo!18146 r!23079)))) b!2887901))

(assert (= (and b!2887680 ((_ is Concat!14138) (regOne!18147 (regTwo!18146 r!23079)))) b!2887902))

(assert (= (and b!2887680 ((_ is Star!8817) (regOne!18147 (regTwo!18146 r!23079)))) b!2887903))

(assert (= (and b!2887680 ((_ is Union!8817) (regOne!18147 (regTwo!18146 r!23079)))) b!2887904))

(declare-fun e!1825902 () Bool)

(assert (=> b!2887680 (= tp!926269 e!1825902)))

(declare-fun b!2887906 () Bool)

(declare-fun tp!926361 () Bool)

(declare-fun tp!926360 () Bool)

(assert (=> b!2887906 (= e!1825902 (and tp!926361 tp!926360))))

(declare-fun b!2887908 () Bool)

(declare-fun tp!926362 () Bool)

(declare-fun tp!926364 () Bool)

(assert (=> b!2887908 (= e!1825902 (and tp!926362 tp!926364))))

(declare-fun b!2887907 () Bool)

(declare-fun tp!926363 () Bool)

(assert (=> b!2887907 (= e!1825902 tp!926363)))

(declare-fun b!2887905 () Bool)

(assert (=> b!2887905 (= e!1825902 tp_is_empty!15221)))

(assert (= (and b!2887680 ((_ is ElementMatch!8817) (regTwo!18147 (regTwo!18146 r!23079)))) b!2887905))

(assert (= (and b!2887680 ((_ is Concat!14138) (regTwo!18147 (regTwo!18146 r!23079)))) b!2887906))

(assert (= (and b!2887680 ((_ is Star!8817) (regTwo!18147 (regTwo!18146 r!23079)))) b!2887907))

(assert (= (and b!2887680 ((_ is Union!8817) (regTwo!18147 (regTwo!18146 r!23079)))) b!2887908))

(declare-fun e!1825903 () Bool)

(assert (=> b!2887666 (= tp!926251 e!1825903)))

(declare-fun b!2887910 () Bool)

(declare-fun tp!926366 () Bool)

(declare-fun tp!926365 () Bool)

(assert (=> b!2887910 (= e!1825903 (and tp!926366 tp!926365))))

(declare-fun b!2887912 () Bool)

(declare-fun tp!926367 () Bool)

(declare-fun tp!926369 () Bool)

(assert (=> b!2887912 (= e!1825903 (and tp!926367 tp!926369))))

(declare-fun b!2887911 () Bool)

(declare-fun tp!926368 () Bool)

(assert (=> b!2887911 (= e!1825903 tp!926368)))

(declare-fun b!2887909 () Bool)

(assert (=> b!2887909 (= e!1825903 tp_is_empty!15221)))

(assert (= (and b!2887666 ((_ is ElementMatch!8817) (regOne!18146 (regOne!18147 r!23079)))) b!2887909))

(assert (= (and b!2887666 ((_ is Concat!14138) (regOne!18146 (regOne!18147 r!23079)))) b!2887910))

(assert (= (and b!2887666 ((_ is Star!8817) (regOne!18146 (regOne!18147 r!23079)))) b!2887911))

(assert (= (and b!2887666 ((_ is Union!8817) (regOne!18146 (regOne!18147 r!23079)))) b!2887912))

(declare-fun e!1825912 () Bool)

(assert (=> b!2887666 (= tp!926250 e!1825912)))

(declare-fun b!2887929 () Bool)

(declare-fun tp!926371 () Bool)

(declare-fun tp!926370 () Bool)

(assert (=> b!2887929 (= e!1825912 (and tp!926371 tp!926370))))

(declare-fun b!2887932 () Bool)

(declare-fun tp!926372 () Bool)

(declare-fun tp!926374 () Bool)

(assert (=> b!2887932 (= e!1825912 (and tp!926372 tp!926374))))

(declare-fun b!2887931 () Bool)

(declare-fun tp!926373 () Bool)

(assert (=> b!2887931 (= e!1825912 tp!926373)))

(declare-fun b!2887927 () Bool)

(assert (=> b!2887927 (= e!1825912 tp_is_empty!15221)))

(assert (= (and b!2887666 ((_ is ElementMatch!8817) (regTwo!18146 (regOne!18147 r!23079)))) b!2887927))

(assert (= (and b!2887666 ((_ is Concat!14138) (regTwo!18146 (regOne!18147 r!23079)))) b!2887929))

(assert (= (and b!2887666 ((_ is Star!8817) (regTwo!18146 (regOne!18147 r!23079)))) b!2887931))

(assert (= (and b!2887666 ((_ is Union!8817) (regTwo!18146 (regOne!18147 r!23079)))) b!2887932))

(declare-fun e!1825913 () Bool)

(assert (=> b!2887671 (= tp!926258 e!1825913)))

(declare-fun b!2887934 () Bool)

(declare-fun tp!926376 () Bool)

(declare-fun tp!926375 () Bool)

(assert (=> b!2887934 (= e!1825913 (and tp!926376 tp!926375))))

(declare-fun b!2887936 () Bool)

(declare-fun tp!926377 () Bool)

(declare-fun tp!926379 () Bool)

(assert (=> b!2887936 (= e!1825913 (and tp!926377 tp!926379))))

(declare-fun b!2887935 () Bool)

(declare-fun tp!926378 () Bool)

(assert (=> b!2887935 (= e!1825913 tp!926378)))

(declare-fun b!2887933 () Bool)

(assert (=> b!2887933 (= e!1825913 tp_is_empty!15221)))

(assert (= (and b!2887671 ((_ is ElementMatch!8817) (reg!9146 (regTwo!18147 r!23079)))) b!2887933))

(assert (= (and b!2887671 ((_ is Concat!14138) (reg!9146 (regTwo!18147 r!23079)))) b!2887934))

(assert (= (and b!2887671 ((_ is Star!8817) (reg!9146 (regTwo!18147 r!23079)))) b!2887935))

(assert (= (and b!2887671 ((_ is Union!8817) (reg!9146 (regTwo!18147 r!23079)))) b!2887936))

(declare-fun e!1825914 () Bool)

(assert (=> b!2887670 (= tp!926256 e!1825914)))

(declare-fun b!2887938 () Bool)

(declare-fun tp!926381 () Bool)

(declare-fun tp!926380 () Bool)

(assert (=> b!2887938 (= e!1825914 (and tp!926381 tp!926380))))

(declare-fun b!2887940 () Bool)

(declare-fun tp!926382 () Bool)

(declare-fun tp!926384 () Bool)

(assert (=> b!2887940 (= e!1825914 (and tp!926382 tp!926384))))

(declare-fun b!2887939 () Bool)

(declare-fun tp!926383 () Bool)

(assert (=> b!2887939 (= e!1825914 tp!926383)))

(declare-fun b!2887937 () Bool)

(assert (=> b!2887937 (= e!1825914 tp_is_empty!15221)))

(assert (= (and b!2887670 ((_ is ElementMatch!8817) (regOne!18146 (regTwo!18147 r!23079)))) b!2887937))

(assert (= (and b!2887670 ((_ is Concat!14138) (regOne!18146 (regTwo!18147 r!23079)))) b!2887938))

(assert (= (and b!2887670 ((_ is Star!8817) (regOne!18146 (regTwo!18147 r!23079)))) b!2887939))

(assert (= (and b!2887670 ((_ is Union!8817) (regOne!18146 (regTwo!18147 r!23079)))) b!2887940))

(declare-fun e!1825915 () Bool)

(assert (=> b!2887670 (= tp!926255 e!1825915)))

(declare-fun b!2887942 () Bool)

(declare-fun tp!926386 () Bool)

(declare-fun tp!926385 () Bool)

(assert (=> b!2887942 (= e!1825915 (and tp!926386 tp!926385))))

(declare-fun b!2887944 () Bool)

(declare-fun tp!926387 () Bool)

(declare-fun tp!926389 () Bool)

(assert (=> b!2887944 (= e!1825915 (and tp!926387 tp!926389))))

(declare-fun b!2887943 () Bool)

(declare-fun tp!926388 () Bool)

(assert (=> b!2887943 (= e!1825915 tp!926388)))

(declare-fun b!2887941 () Bool)

(assert (=> b!2887941 (= e!1825915 tp_is_empty!15221)))

(assert (= (and b!2887670 ((_ is ElementMatch!8817) (regTwo!18146 (regTwo!18147 r!23079)))) b!2887941))

(assert (= (and b!2887670 ((_ is Concat!14138) (regTwo!18146 (regTwo!18147 r!23079)))) b!2887942))

(assert (= (and b!2887670 ((_ is Star!8817) (regTwo!18146 (regTwo!18147 r!23079)))) b!2887943))

(assert (= (and b!2887670 ((_ is Union!8817) (regTwo!18146 (regTwo!18147 r!23079)))) b!2887944))

(declare-fun e!1825916 () Bool)

(assert (=> b!2887675 (= tp!926263 e!1825916)))

(declare-fun b!2887946 () Bool)

(declare-fun tp!926391 () Bool)

(declare-fun tp!926390 () Bool)

(assert (=> b!2887946 (= e!1825916 (and tp!926391 tp!926390))))

(declare-fun b!2887948 () Bool)

(declare-fun tp!926392 () Bool)

(declare-fun tp!926394 () Bool)

(assert (=> b!2887948 (= e!1825916 (and tp!926392 tp!926394))))

(declare-fun b!2887947 () Bool)

(declare-fun tp!926393 () Bool)

(assert (=> b!2887947 (= e!1825916 tp!926393)))

(declare-fun b!2887945 () Bool)

(assert (=> b!2887945 (= e!1825916 tp_is_empty!15221)))

(assert (= (and b!2887675 ((_ is ElementMatch!8817) (reg!9146 (regOne!18146 r!23079)))) b!2887945))

(assert (= (and b!2887675 ((_ is Concat!14138) (reg!9146 (regOne!18146 r!23079)))) b!2887946))

(assert (= (and b!2887675 ((_ is Star!8817) (reg!9146 (regOne!18146 r!23079)))) b!2887947))

(assert (= (and b!2887675 ((_ is Union!8817) (reg!9146 (regOne!18146 r!23079)))) b!2887948))

(check-sat (not b!2887946) (not b!2887935) (not b!2887707) (not d!834134) (not b!2887856) (not b!2887844) (not bm!187400) (not bm!187411) (not b!2887898) (not b!2887891) (not b!2887862) (not b!2887843) (not b!2887899) (not b!2887876) (not b!2887847) (not b!2887871) (not b!2887860) (not b!2887892) (not b!2887858) (not bm!187401) (not b!2887842) (not b!2887815) (not b!2887863) (not b!2887900) (not b!2887831) (not b!2887867) (not bm!187408) (not b!2887823) (not d!834120) (not b!2887944) (not b!2887710) (not b!2887932) (not bm!187405) (not b!2887884) (not b!2887948) (not b!2887824) (not b!2887942) (not d!834122) (not b!2887883) (not b!2887836) (not b!2887854) (not b!2887943) (not b!2887939) (not b!2887835) (not b!2887822) (not b!2887866) (not b!2887911) (not b!2887706) (not b!2887859) (not b!2887890) (not b!2887832) (not bm!187409) (not b!2887947) (not b!2887870) (not b!2887903) (not b!2887790) (not b!2887894) (not b!2887910) (not b!2887717) (not b!2887848) (not b!2887846) (not b!2887855) (not b!2887902) (not b!2887908) (not b!2887895) (not b!2887896) (not b!2887931) (not b!2887880) (not b!2887826) (not b!2887830) (not d!834132) (not b!2887827) (not b!2887711) (not d!834130) (not b!2887721) (not bm!187383) (not bm!187406) (not bm!187382) (not b!2887938) (not b!2887693) (not b!2887906) tp_is_empty!15221 (not b!2887936) (not b!2887713) (not b!2887878) (not b!2887874) (not b!2887772) (not b!2887868) (not b!2887875) (not b!2887929) (not b!2887828) (not b!2887940) (not b!2887907) (not b!2887864) (not b!2887934) (not b!2887904) (not b!2887882) (not bm!187384) (not b!2887879) (not b!2887712) (not b!2887912) (not b!2887872) (not b!2887834) (not bm!187410) (not b!2887808))
(check-sat)
