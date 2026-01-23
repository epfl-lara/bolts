; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742846 () Bool)

(assert start!742846)

(declare-fun b!7843405 () Bool)

(declare-fun e!4637391 () Bool)

(declare-fun tp_is_empty!52469 () Bool)

(assert (=> b!7843405 (= e!4637391 tp_is_empty!52469)))

(declare-fun b!7843406 () Bool)

(declare-fun tp!2321539 () Bool)

(declare-fun tp!2321538 () Bool)

(assert (=> b!7843406 (= e!4637391 (and tp!2321539 tp!2321538))))

(declare-fun res!3119636 () Bool)

(declare-fun e!4637392 () Bool)

(assert (=> start!742846 (=> (not res!3119636) (not e!4637392))))

(declare-datatypes ((C!42396 0))(
  ( (C!42397 (val!31660 Int)) )
))
(declare-datatypes ((Regex!21035 0))(
  ( (ElementMatch!21035 (c!1441827 C!42396)) (Concat!29880 (regOne!42582 Regex!21035) (regTwo!42582 Regex!21035)) (EmptyExpr!21035) (Star!21035 (reg!21364 Regex!21035)) (EmptyLang!21035) (Union!21035 (regOne!42583 Regex!21035) (regTwo!42583 Regex!21035)) )
))
(declare-fun r!27161 () Regex!21035)

(declare-datatypes ((List!73894 0))(
  ( (Nil!73770) (Cons!73770 (h!80218 C!42396) (t!388629 List!73894)) )
))
(declare-fun s!15118 () List!73894)

(get-info :version)

(assert (=> start!742846 (= res!3119636 (and (= r!27161 EmptyLang!21035) (not ((_ is Cons!73770) s!15118))))))

(assert (=> start!742846 e!4637392))

(assert (=> start!742846 e!4637391))

(declare-fun e!4637393 () Bool)

(assert (=> start!742846 e!4637393))

(declare-fun b!7843407 () Bool)

(declare-fun tp!2321541 () Bool)

(assert (=> b!7843407 (= e!4637391 tp!2321541)))

(declare-fun b!7843408 () Bool)

(declare-fun validRegex!11447 (Regex!21035) Bool)

(assert (=> b!7843408 (= e!4637392 (not (validRegex!11447 r!27161)))))

(declare-fun b!7843409 () Bool)

(declare-fun tp!2321537 () Bool)

(declare-fun tp!2321540 () Bool)

(assert (=> b!7843409 (= e!4637391 (and tp!2321537 tp!2321540))))

(declare-fun b!7843410 () Bool)

(declare-fun tp!2321542 () Bool)

(assert (=> b!7843410 (= e!4637393 (and tp_is_empty!52469 tp!2321542))))

(assert (= (and start!742846 res!3119636) b!7843408))

(assert (= (and start!742846 ((_ is ElementMatch!21035) r!27161)) b!7843405))

(assert (= (and start!742846 ((_ is Concat!29880) r!27161)) b!7843406))

(assert (= (and start!742846 ((_ is Star!21035) r!27161)) b!7843407))

(assert (= (and start!742846 ((_ is Union!21035) r!27161)) b!7843409))

(assert (= (and start!742846 ((_ is Cons!73770) s!15118)) b!7843410))

(declare-fun m!8255126 () Bool)

(assert (=> b!7843408 m!8255126))

(check-sat (not b!7843407) (not b!7843406) tp_is_empty!52469 (not b!7843408) (not b!7843409) (not b!7843410))
(check-sat)
(get-model)

(declare-fun b!7843447 () Bool)

(declare-fun e!4637422 () Bool)

(declare-fun e!4637427 () Bool)

(assert (=> b!7843447 (= e!4637422 e!4637427)))

(declare-fun c!1441836 () Bool)

(assert (=> b!7843447 (= c!1441836 ((_ is Star!21035) r!27161))))

(declare-fun bm!726802 () Bool)

(declare-fun call!726807 () Bool)

(declare-fun call!726808 () Bool)

(assert (=> bm!726802 (= call!726807 call!726808)))

(declare-fun b!7843448 () Bool)

(declare-fun res!3119659 () Bool)

(declare-fun e!4637425 () Bool)

(assert (=> b!7843448 (=> res!3119659 e!4637425)))

(assert (=> b!7843448 (= res!3119659 (not ((_ is Concat!29880) r!27161)))))

(declare-fun e!4637423 () Bool)

(assert (=> b!7843448 (= e!4637423 e!4637425)))

(declare-fun bm!726803 () Bool)

(declare-fun call!726809 () Bool)

(declare-fun c!1441837 () Bool)

(assert (=> bm!726803 (= call!726809 (validRegex!11447 (ite c!1441837 (regOne!42583 r!27161) (regOne!42582 r!27161))))))

(declare-fun b!7843449 () Bool)

(declare-fun res!3119661 () Bool)

(declare-fun e!4637424 () Bool)

(assert (=> b!7843449 (=> (not res!3119661) (not e!4637424))))

(assert (=> b!7843449 (= res!3119661 call!726809)))

(assert (=> b!7843449 (= e!4637423 e!4637424)))

(declare-fun d!2352654 () Bool)

(declare-fun res!3119660 () Bool)

(assert (=> d!2352654 (=> res!3119660 e!4637422)))

(assert (=> d!2352654 (= res!3119660 ((_ is ElementMatch!21035) r!27161))))

(assert (=> d!2352654 (= (validRegex!11447 r!27161) e!4637422)))

(declare-fun b!7843450 () Bool)

(assert (=> b!7843450 (= e!4637427 e!4637423)))

(assert (=> b!7843450 (= c!1441837 ((_ is Union!21035) r!27161))))

(declare-fun bm!726804 () Bool)

(assert (=> bm!726804 (= call!726808 (validRegex!11447 (ite c!1441836 (reg!21364 r!27161) (ite c!1441837 (regTwo!42583 r!27161) (regTwo!42582 r!27161)))))))

(declare-fun b!7843451 () Bool)

(declare-fun e!4637426 () Bool)

(assert (=> b!7843451 (= e!4637426 call!726808)))

(declare-fun b!7843452 () Bool)

(assert (=> b!7843452 (= e!4637424 call!726807)))

(declare-fun b!7843453 () Bool)

(assert (=> b!7843453 (= e!4637427 e!4637426)))

(declare-fun res!3119657 () Bool)

(declare-fun nullable!9322 (Regex!21035) Bool)

(assert (=> b!7843453 (= res!3119657 (not (nullable!9322 (reg!21364 r!27161))))))

(assert (=> b!7843453 (=> (not res!3119657) (not e!4637426))))

(declare-fun b!7843454 () Bool)

(declare-fun e!4637428 () Bool)

(assert (=> b!7843454 (= e!4637425 e!4637428)))

(declare-fun res!3119658 () Bool)

(assert (=> b!7843454 (=> (not res!3119658) (not e!4637428))))

(assert (=> b!7843454 (= res!3119658 call!726809)))

(declare-fun b!7843455 () Bool)

(assert (=> b!7843455 (= e!4637428 call!726807)))

(assert (= (and d!2352654 (not res!3119660)) b!7843447))

(assert (= (and b!7843447 c!1441836) b!7843453))

(assert (= (and b!7843447 (not c!1441836)) b!7843450))

(assert (= (and b!7843453 res!3119657) b!7843451))

(assert (= (and b!7843450 c!1441837) b!7843449))

(assert (= (and b!7843450 (not c!1441837)) b!7843448))

(assert (= (and b!7843449 res!3119661) b!7843452))

(assert (= (and b!7843448 (not res!3119659)) b!7843454))

(assert (= (and b!7843454 res!3119658) b!7843455))

(assert (= (or b!7843449 b!7843454) bm!726803))

(assert (= (or b!7843452 b!7843455) bm!726802))

(assert (= (or b!7843451 bm!726802) bm!726804))

(declare-fun m!8255128 () Bool)

(assert (=> bm!726803 m!8255128))

(declare-fun m!8255130 () Bool)

(assert (=> bm!726804 m!8255130))

(declare-fun m!8255132 () Bool)

(assert (=> b!7843453 m!8255132))

(assert (=> b!7843408 d!2352654))

(declare-fun b!7843469 () Bool)

(declare-fun e!4637438 () Bool)

(declare-fun tp!2321545 () Bool)

(assert (=> b!7843469 (= e!4637438 (and tp_is_empty!52469 tp!2321545))))

(assert (=> b!7843410 (= tp!2321542 e!4637438)))

(assert (= (and b!7843410 ((_ is Cons!73770) (t!388629 s!15118))) b!7843469))

(declare-fun b!7843495 () Bool)

(declare-fun e!4637446 () Bool)

(assert (=> b!7843495 (= e!4637446 tp_is_empty!52469)))

(declare-fun b!7843496 () Bool)

(declare-fun tp!2321568 () Bool)

(declare-fun tp!2321570 () Bool)

(assert (=> b!7843496 (= e!4637446 (and tp!2321568 tp!2321570))))

(declare-fun b!7843498 () Bool)

(declare-fun tp!2321571 () Bool)

(declare-fun tp!2321569 () Bool)

(assert (=> b!7843498 (= e!4637446 (and tp!2321571 tp!2321569))))

(assert (=> b!7843406 (= tp!2321539 e!4637446)))

(declare-fun b!7843497 () Bool)

(declare-fun tp!2321567 () Bool)

(assert (=> b!7843497 (= e!4637446 tp!2321567)))

(assert (= (and b!7843406 ((_ is ElementMatch!21035) (regOne!42582 r!27161))) b!7843495))

(assert (= (and b!7843406 ((_ is Concat!29880) (regOne!42582 r!27161))) b!7843496))

(assert (= (and b!7843406 ((_ is Star!21035) (regOne!42582 r!27161))) b!7843497))

(assert (= (and b!7843406 ((_ is Union!21035) (regOne!42582 r!27161))) b!7843498))

(declare-fun b!7843499 () Bool)

(declare-fun e!4637447 () Bool)

(assert (=> b!7843499 (= e!4637447 tp_is_empty!52469)))

(declare-fun b!7843500 () Bool)

(declare-fun tp!2321575 () Bool)

(declare-fun tp!2321577 () Bool)

(assert (=> b!7843500 (= e!4637447 (and tp!2321575 tp!2321577))))

(declare-fun b!7843502 () Bool)

(declare-fun tp!2321578 () Bool)

(declare-fun tp!2321576 () Bool)

(assert (=> b!7843502 (= e!4637447 (and tp!2321578 tp!2321576))))

(assert (=> b!7843406 (= tp!2321538 e!4637447)))

(declare-fun b!7843501 () Bool)

(declare-fun tp!2321574 () Bool)

(assert (=> b!7843501 (= e!4637447 tp!2321574)))

(assert (= (and b!7843406 ((_ is ElementMatch!21035) (regTwo!42582 r!27161))) b!7843499))

(assert (= (and b!7843406 ((_ is Concat!29880) (regTwo!42582 r!27161))) b!7843500))

(assert (= (and b!7843406 ((_ is Star!21035) (regTwo!42582 r!27161))) b!7843501))

(assert (= (and b!7843406 ((_ is Union!21035) (regTwo!42582 r!27161))) b!7843502))

(declare-fun b!7843503 () Bool)

(declare-fun e!4637448 () Bool)

(assert (=> b!7843503 (= e!4637448 tp_is_empty!52469)))

(declare-fun b!7843504 () Bool)

(declare-fun tp!2321580 () Bool)

(declare-fun tp!2321582 () Bool)

(assert (=> b!7843504 (= e!4637448 (and tp!2321580 tp!2321582))))

(declare-fun b!7843506 () Bool)

(declare-fun tp!2321583 () Bool)

(declare-fun tp!2321581 () Bool)

(assert (=> b!7843506 (= e!4637448 (and tp!2321583 tp!2321581))))

(assert (=> b!7843407 (= tp!2321541 e!4637448)))

(declare-fun b!7843505 () Bool)

(declare-fun tp!2321579 () Bool)

(assert (=> b!7843505 (= e!4637448 tp!2321579)))

(assert (= (and b!7843407 ((_ is ElementMatch!21035) (reg!21364 r!27161))) b!7843503))

(assert (= (and b!7843407 ((_ is Concat!29880) (reg!21364 r!27161))) b!7843504))

(assert (= (and b!7843407 ((_ is Star!21035) (reg!21364 r!27161))) b!7843505))

(assert (= (and b!7843407 ((_ is Union!21035) (reg!21364 r!27161))) b!7843506))

(declare-fun b!7843507 () Bool)

(declare-fun e!4637449 () Bool)

(assert (=> b!7843507 (= e!4637449 tp_is_empty!52469)))

(declare-fun b!7843508 () Bool)

(declare-fun tp!2321585 () Bool)

(declare-fun tp!2321587 () Bool)

(assert (=> b!7843508 (= e!4637449 (and tp!2321585 tp!2321587))))

(declare-fun b!7843510 () Bool)

(declare-fun tp!2321588 () Bool)

(declare-fun tp!2321586 () Bool)

(assert (=> b!7843510 (= e!4637449 (and tp!2321588 tp!2321586))))

(assert (=> b!7843409 (= tp!2321537 e!4637449)))

(declare-fun b!7843509 () Bool)

(declare-fun tp!2321584 () Bool)

(assert (=> b!7843509 (= e!4637449 tp!2321584)))

(assert (= (and b!7843409 ((_ is ElementMatch!21035) (regOne!42583 r!27161))) b!7843507))

(assert (= (and b!7843409 ((_ is Concat!29880) (regOne!42583 r!27161))) b!7843508))

(assert (= (and b!7843409 ((_ is Star!21035) (regOne!42583 r!27161))) b!7843509))

(assert (= (and b!7843409 ((_ is Union!21035) (regOne!42583 r!27161))) b!7843510))

(declare-fun b!7843515 () Bool)

(declare-fun e!4637451 () Bool)

(assert (=> b!7843515 (= e!4637451 tp_is_empty!52469)))

(declare-fun b!7843516 () Bool)

(declare-fun tp!2321595 () Bool)

(declare-fun tp!2321597 () Bool)

(assert (=> b!7843516 (= e!4637451 (and tp!2321595 tp!2321597))))

(declare-fun b!7843518 () Bool)

(declare-fun tp!2321598 () Bool)

(declare-fun tp!2321596 () Bool)

(assert (=> b!7843518 (= e!4637451 (and tp!2321598 tp!2321596))))

(assert (=> b!7843409 (= tp!2321540 e!4637451)))

(declare-fun b!7843517 () Bool)

(declare-fun tp!2321594 () Bool)

(assert (=> b!7843517 (= e!4637451 tp!2321594)))

(assert (= (and b!7843409 ((_ is ElementMatch!21035) (regTwo!42583 r!27161))) b!7843515))

(assert (= (and b!7843409 ((_ is Concat!29880) (regTwo!42583 r!27161))) b!7843516))

(assert (= (and b!7843409 ((_ is Star!21035) (regTwo!42583 r!27161))) b!7843517))

(assert (= (and b!7843409 ((_ is Union!21035) (regTwo!42583 r!27161))) b!7843518))

(check-sat (not b!7843496) (not b!7843509) (not b!7843498) (not bm!726803) (not b!7843510) (not b!7843500) (not b!7843505) (not b!7843501) (not bm!726804) (not b!7843517) (not b!7843518) (not b!7843508) (not b!7843506) (not b!7843502) (not b!7843504) (not b!7843453) (not b!7843497) tp_is_empty!52469 (not b!7843516) (not b!7843469))
(check-sat)
