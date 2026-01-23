; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!737532 () Bool)

(assert start!737532)

(declare-fun b!7719454 () Bool)

(declare-fun res!3080308 () Bool)

(declare-fun e!4578979 () Bool)

(assert (=> b!7719454 (=> (not res!3080308) (not e!4578979))))

(declare-datatypes ((C!41416 0))(
  ( (C!41417 (val!31148 Int)) )
))
(declare-datatypes ((Regex!20545 0))(
  ( (ElementMatch!20545 (c!1422896 C!41416)) (Concat!29390 (regOne!41602 Regex!20545) (regTwo!41602 Regex!20545)) (EmptyExpr!20545) (Star!20545 (reg!20874 Regex!20545)) (EmptyLang!20545) (Union!20545 (regOne!41603 Regex!20545) (regTwo!41603 Regex!20545)) )
))
(declare-fun r!14126 () Regex!20545)

(get-info :version)

(assert (=> b!7719454 (= res!3080308 (and (not ((_ is EmptyExpr!20545) r!14126)) (not ((_ is EmptyLang!20545) r!14126)) (not ((_ is ElementMatch!20545) r!14126)) (not ((_ is Union!20545) r!14126)) (not ((_ is Star!20545) r!14126))))))

(declare-fun b!7719455 () Bool)

(declare-fun e!4578978 () Bool)

(declare-fun tp_is_empty!51445 () Bool)

(assert (=> b!7719455 (= e!4578978 tp_is_empty!51445)))

(declare-fun b!7719456 () Bool)

(declare-fun tp!2264627 () Bool)

(declare-fun tp!2264623 () Bool)

(assert (=> b!7719456 (= e!4578978 (and tp!2264627 tp!2264623))))

(declare-fun res!3080307 () Bool)

(assert (=> start!737532 (=> (not res!3080307) (not e!4578979))))

(declare-fun validRegex!10963 (Regex!20545) Bool)

(assert (=> start!737532 (= res!3080307 (validRegex!10963 r!14126))))

(assert (=> start!737532 e!4578979))

(assert (=> start!737532 e!4578978))

(declare-fun b!7719457 () Bool)

(declare-fun tp!2264625 () Bool)

(declare-fun tp!2264624 () Bool)

(assert (=> b!7719457 (= e!4578978 (and tp!2264625 tp!2264624))))

(declare-fun b!7719458 () Bool)

(assert (=> b!7719458 (= e!4578979 (not (validRegex!10963 (regOne!41602 r!14126))))))

(declare-fun b!7719459 () Bool)

(declare-fun tp!2264626 () Bool)

(assert (=> b!7719459 (= e!4578978 tp!2264626)))

(assert (= (and start!737532 res!3080307) b!7719454))

(assert (= (and b!7719454 res!3080308) b!7719458))

(assert (= (and start!737532 ((_ is ElementMatch!20545) r!14126)) b!7719455))

(assert (= (and start!737532 ((_ is Concat!29390) r!14126)) b!7719457))

(assert (= (and start!737532 ((_ is Star!20545) r!14126)) b!7719459))

(assert (= (and start!737532 ((_ is Union!20545) r!14126)) b!7719456))

(declare-fun m!8199494 () Bool)

(assert (=> start!737532 m!8199494))

(declare-fun m!8199496 () Bool)

(assert (=> b!7719458 m!8199496))

(check-sat (not b!7719457) (not start!737532) (not b!7719459) (not b!7719458) (not b!7719456) tp_is_empty!51445)
(check-sat)
(get-model)

(declare-fun b!7719505 () Bool)

(declare-fun res!3080337 () Bool)

(declare-fun e!4579020 () Bool)

(assert (=> b!7719505 (=> res!3080337 e!4579020)))

(assert (=> b!7719505 (= res!3080337 (not ((_ is Concat!29390) (regOne!41602 r!14126))))))

(declare-fun e!4579019 () Bool)

(assert (=> b!7719505 (= e!4579019 e!4579020)))

(declare-fun b!7719506 () Bool)

(declare-fun e!4579017 () Bool)

(declare-fun e!4579018 () Bool)

(assert (=> b!7719506 (= e!4579017 e!4579018)))

(declare-fun c!1422908 () Bool)

(assert (=> b!7719506 (= c!1422908 ((_ is Star!20545) (regOne!41602 r!14126)))))

(declare-fun b!7719507 () Bool)

(declare-fun e!4579021 () Bool)

(declare-fun call!713456 () Bool)

(assert (=> b!7719507 (= e!4579021 call!713456)))

(declare-fun bm!713449 () Bool)

(declare-fun call!713454 () Bool)

(declare-fun call!713455 () Bool)

(assert (=> bm!713449 (= call!713454 call!713455)))

(declare-fun b!7719508 () Bool)

(declare-fun e!4579016 () Bool)

(assert (=> b!7719508 (= e!4579016 call!713455)))

(declare-fun b!7719509 () Bool)

(declare-fun e!4579015 () Bool)

(assert (=> b!7719509 (= e!4579015 call!713456)))

(declare-fun b!7719510 () Bool)

(assert (=> b!7719510 (= e!4579018 e!4579016)))

(declare-fun res!3080335 () Bool)

(declare-fun nullable!9022 (Regex!20545) Bool)

(assert (=> b!7719510 (= res!3080335 (not (nullable!9022 (reg!20874 (regOne!41602 r!14126)))))))

(assert (=> b!7719510 (=> (not res!3080335) (not e!4579016))))

(declare-fun bm!713450 () Bool)

(declare-fun c!1422907 () Bool)

(assert (=> bm!713450 (= call!713456 (validRegex!10963 (ite c!1422907 (regTwo!41603 (regOne!41602 r!14126)) (regTwo!41602 (regOne!41602 r!14126)))))))

(declare-fun bm!713451 () Bool)

(assert (=> bm!713451 (= call!713455 (validRegex!10963 (ite c!1422908 (reg!20874 (regOne!41602 r!14126)) (ite c!1422907 (regOne!41603 (regOne!41602 r!14126)) (regOne!41602 (regOne!41602 r!14126))))))))

(declare-fun b!7719511 () Bool)

(assert (=> b!7719511 (= e!4579020 e!4579021)))

(declare-fun res!3080336 () Bool)

(assert (=> b!7719511 (=> (not res!3080336) (not e!4579021))))

(assert (=> b!7719511 (= res!3080336 call!713454)))

(declare-fun b!7719513 () Bool)

(declare-fun res!3080334 () Bool)

(assert (=> b!7719513 (=> (not res!3080334) (not e!4579015))))

(assert (=> b!7719513 (= res!3080334 call!713454)))

(assert (=> b!7719513 (= e!4579019 e!4579015)))

(declare-fun b!7719512 () Bool)

(assert (=> b!7719512 (= e!4579018 e!4579019)))

(assert (=> b!7719512 (= c!1422907 ((_ is Union!20545) (regOne!41602 r!14126)))))

(declare-fun d!2337490 () Bool)

(declare-fun res!3080338 () Bool)

(assert (=> d!2337490 (=> res!3080338 e!4579017)))

(assert (=> d!2337490 (= res!3080338 ((_ is ElementMatch!20545) (regOne!41602 r!14126)))))

(assert (=> d!2337490 (= (validRegex!10963 (regOne!41602 r!14126)) e!4579017)))

(assert (= (and d!2337490 (not res!3080338)) b!7719506))

(assert (= (and b!7719506 c!1422908) b!7719510))

(assert (= (and b!7719506 (not c!1422908)) b!7719512))

(assert (= (and b!7719510 res!3080335) b!7719508))

(assert (= (and b!7719512 c!1422907) b!7719513))

(assert (= (and b!7719512 (not c!1422907)) b!7719505))

(assert (= (and b!7719513 res!3080334) b!7719509))

(assert (= (and b!7719505 (not res!3080337)) b!7719511))

(assert (= (and b!7719511 res!3080336) b!7719507))

(assert (= (or b!7719513 b!7719511) bm!713449))

(assert (= (or b!7719509 b!7719507) bm!713450))

(assert (= (or b!7719508 bm!713449) bm!713451))

(declare-fun m!8199504 () Bool)

(assert (=> b!7719510 m!8199504))

(declare-fun m!8199506 () Bool)

(assert (=> bm!713450 m!8199506))

(declare-fun m!8199512 () Bool)

(assert (=> bm!713451 m!8199512))

(assert (=> b!7719458 d!2337490))

(declare-fun b!7719524 () Bool)

(declare-fun res!3080347 () Bool)

(declare-fun e!4579034 () Bool)

(assert (=> b!7719524 (=> res!3080347 e!4579034)))

(assert (=> b!7719524 (= res!3080347 (not ((_ is Concat!29390) r!14126)))))

(declare-fun e!4579033 () Bool)

(assert (=> b!7719524 (= e!4579033 e!4579034)))

(declare-fun b!7719526 () Bool)

(declare-fun e!4579031 () Bool)

(declare-fun e!4579032 () Bool)

(assert (=> b!7719526 (= e!4579031 e!4579032)))

(declare-fun c!1422912 () Bool)

(assert (=> b!7719526 (= c!1422912 ((_ is Star!20545) r!14126))))

(declare-fun b!7719527 () Bool)

(declare-fun e!4579035 () Bool)

(declare-fun call!713462 () Bool)

(assert (=> b!7719527 (= e!4579035 call!713462)))

(declare-fun bm!713455 () Bool)

(declare-fun call!713460 () Bool)

(declare-fun call!713461 () Bool)

(assert (=> bm!713455 (= call!713460 call!713461)))

(declare-fun b!7719528 () Bool)

(declare-fun e!4579030 () Bool)

(assert (=> b!7719528 (= e!4579030 call!713461)))

(declare-fun b!7719529 () Bool)

(declare-fun e!4579029 () Bool)

(assert (=> b!7719529 (= e!4579029 call!713462)))

(declare-fun b!7719530 () Bool)

(assert (=> b!7719530 (= e!4579032 e!4579030)))

(declare-fun res!3080345 () Bool)

(assert (=> b!7719530 (= res!3080345 (not (nullable!9022 (reg!20874 r!14126))))))

(assert (=> b!7719530 (=> (not res!3080345) (not e!4579030))))

(declare-fun bm!713456 () Bool)

(declare-fun c!1422911 () Bool)

(assert (=> bm!713456 (= call!713462 (validRegex!10963 (ite c!1422911 (regTwo!41603 r!14126) (regTwo!41602 r!14126))))))

(declare-fun bm!713457 () Bool)

(assert (=> bm!713457 (= call!713461 (validRegex!10963 (ite c!1422912 (reg!20874 r!14126) (ite c!1422911 (regOne!41603 r!14126) (regOne!41602 r!14126)))))))

(declare-fun b!7719531 () Bool)

(assert (=> b!7719531 (= e!4579034 e!4579035)))

(declare-fun res!3080346 () Bool)

(assert (=> b!7719531 (=> (not res!3080346) (not e!4579035))))

(assert (=> b!7719531 (= res!3080346 call!713460)))

(declare-fun b!7719533 () Bool)

(declare-fun res!3080344 () Bool)

(assert (=> b!7719533 (=> (not res!3080344) (not e!4579029))))

(assert (=> b!7719533 (= res!3080344 call!713460)))

(assert (=> b!7719533 (= e!4579033 e!4579029)))

(declare-fun b!7719532 () Bool)

(assert (=> b!7719532 (= e!4579032 e!4579033)))

(assert (=> b!7719532 (= c!1422911 ((_ is Union!20545) r!14126))))

(declare-fun d!2337494 () Bool)

(declare-fun res!3080348 () Bool)

(assert (=> d!2337494 (=> res!3080348 e!4579031)))

(assert (=> d!2337494 (= res!3080348 ((_ is ElementMatch!20545) r!14126))))

(assert (=> d!2337494 (= (validRegex!10963 r!14126) e!4579031)))

(assert (= (and d!2337494 (not res!3080348)) b!7719526))

(assert (= (and b!7719526 c!1422912) b!7719530))

(assert (= (and b!7719526 (not c!1422912)) b!7719532))

(assert (= (and b!7719530 res!3080345) b!7719528))

(assert (= (and b!7719532 c!1422911) b!7719533))

(assert (= (and b!7719532 (not c!1422911)) b!7719524))

(assert (= (and b!7719533 res!3080344) b!7719529))

(assert (= (and b!7719524 (not res!3080347)) b!7719531))

(assert (= (and b!7719531 res!3080346) b!7719527))

(assert (= (or b!7719533 b!7719531) bm!713455))

(assert (= (or b!7719529 b!7719527) bm!713456))

(assert (= (or b!7719528 bm!713455) bm!713457))

(declare-fun m!8199516 () Bool)

(assert (=> b!7719530 m!8199516))

(declare-fun m!8199518 () Bool)

(assert (=> bm!713456 m!8199518))

(declare-fun m!8199520 () Bool)

(assert (=> bm!713457 m!8199520))

(assert (=> start!737532 d!2337494))

(declare-fun b!7719568 () Bool)

(declare-fun e!4579044 () Bool)

(assert (=> b!7719568 (= e!4579044 tp_is_empty!51445)))

(declare-fun b!7719569 () Bool)

(declare-fun tp!2264670 () Bool)

(declare-fun tp!2264672 () Bool)

(assert (=> b!7719569 (= e!4579044 (and tp!2264670 tp!2264672))))

(assert (=> b!7719457 (= tp!2264625 e!4579044)))

(declare-fun b!7719571 () Bool)

(declare-fun tp!2264669 () Bool)

(declare-fun tp!2264668 () Bool)

(assert (=> b!7719571 (= e!4579044 (and tp!2264669 tp!2264668))))

(declare-fun b!7719570 () Bool)

(declare-fun tp!2264671 () Bool)

(assert (=> b!7719570 (= e!4579044 tp!2264671)))

(assert (= (and b!7719457 ((_ is ElementMatch!20545) (regOne!41602 r!14126))) b!7719568))

(assert (= (and b!7719457 ((_ is Concat!29390) (regOne!41602 r!14126))) b!7719569))

(assert (= (and b!7719457 ((_ is Star!20545) (regOne!41602 r!14126))) b!7719570))

(assert (= (and b!7719457 ((_ is Union!20545) (regOne!41602 r!14126))) b!7719571))

(declare-fun b!7719576 () Bool)

(declare-fun e!4579046 () Bool)

(assert (=> b!7719576 (= e!4579046 tp_is_empty!51445)))

(declare-fun b!7719577 () Bool)

(declare-fun tp!2264680 () Bool)

(declare-fun tp!2264682 () Bool)

(assert (=> b!7719577 (= e!4579046 (and tp!2264680 tp!2264682))))

(assert (=> b!7719457 (= tp!2264624 e!4579046)))

(declare-fun b!7719579 () Bool)

(declare-fun tp!2264679 () Bool)

(declare-fun tp!2264678 () Bool)

(assert (=> b!7719579 (= e!4579046 (and tp!2264679 tp!2264678))))

(declare-fun b!7719578 () Bool)

(declare-fun tp!2264681 () Bool)

(assert (=> b!7719578 (= e!4579046 tp!2264681)))

(assert (= (and b!7719457 ((_ is ElementMatch!20545) (regTwo!41602 r!14126))) b!7719576))

(assert (= (and b!7719457 ((_ is Concat!29390) (regTwo!41602 r!14126))) b!7719577))

(assert (= (and b!7719457 ((_ is Star!20545) (regTwo!41602 r!14126))) b!7719578))

(assert (= (and b!7719457 ((_ is Union!20545) (regTwo!41602 r!14126))) b!7719579))

(declare-fun b!7719580 () Bool)

(declare-fun e!4579047 () Bool)

(assert (=> b!7719580 (= e!4579047 tp_is_empty!51445)))

(declare-fun b!7719581 () Bool)

(declare-fun tp!2264685 () Bool)

(declare-fun tp!2264687 () Bool)

(assert (=> b!7719581 (= e!4579047 (and tp!2264685 tp!2264687))))

(assert (=> b!7719456 (= tp!2264627 e!4579047)))

(declare-fun b!7719583 () Bool)

(declare-fun tp!2264684 () Bool)

(declare-fun tp!2264683 () Bool)

(assert (=> b!7719583 (= e!4579047 (and tp!2264684 tp!2264683))))

(declare-fun b!7719582 () Bool)

(declare-fun tp!2264686 () Bool)

(assert (=> b!7719582 (= e!4579047 tp!2264686)))

(assert (= (and b!7719456 ((_ is ElementMatch!20545) (regOne!41603 r!14126))) b!7719580))

(assert (= (and b!7719456 ((_ is Concat!29390) (regOne!41603 r!14126))) b!7719581))

(assert (= (and b!7719456 ((_ is Star!20545) (regOne!41603 r!14126))) b!7719582))

(assert (= (and b!7719456 ((_ is Union!20545) (regOne!41603 r!14126))) b!7719583))

(declare-fun b!7719584 () Bool)

(declare-fun e!4579048 () Bool)

(assert (=> b!7719584 (= e!4579048 tp_is_empty!51445)))

(declare-fun b!7719585 () Bool)

(declare-fun tp!2264690 () Bool)

(declare-fun tp!2264692 () Bool)

(assert (=> b!7719585 (= e!4579048 (and tp!2264690 tp!2264692))))

(assert (=> b!7719456 (= tp!2264623 e!4579048)))

(declare-fun b!7719587 () Bool)

(declare-fun tp!2264689 () Bool)

(declare-fun tp!2264688 () Bool)

(assert (=> b!7719587 (= e!4579048 (and tp!2264689 tp!2264688))))

(declare-fun b!7719586 () Bool)

(declare-fun tp!2264691 () Bool)

(assert (=> b!7719586 (= e!4579048 tp!2264691)))

(assert (= (and b!7719456 ((_ is ElementMatch!20545) (regTwo!41603 r!14126))) b!7719584))

(assert (= (and b!7719456 ((_ is Concat!29390) (regTwo!41603 r!14126))) b!7719585))

(assert (= (and b!7719456 ((_ is Star!20545) (regTwo!41603 r!14126))) b!7719586))

(assert (= (and b!7719456 ((_ is Union!20545) (regTwo!41603 r!14126))) b!7719587))

(declare-fun b!7719588 () Bool)

(declare-fun e!4579049 () Bool)

(assert (=> b!7719588 (= e!4579049 tp_is_empty!51445)))

(declare-fun b!7719589 () Bool)

(declare-fun tp!2264695 () Bool)

(declare-fun tp!2264697 () Bool)

(assert (=> b!7719589 (= e!4579049 (and tp!2264695 tp!2264697))))

(assert (=> b!7719459 (= tp!2264626 e!4579049)))

(declare-fun b!7719591 () Bool)

(declare-fun tp!2264694 () Bool)

(declare-fun tp!2264693 () Bool)

(assert (=> b!7719591 (= e!4579049 (and tp!2264694 tp!2264693))))

(declare-fun b!7719590 () Bool)

(declare-fun tp!2264696 () Bool)

(assert (=> b!7719590 (= e!4579049 tp!2264696)))

(assert (= (and b!7719459 ((_ is ElementMatch!20545) (reg!20874 r!14126))) b!7719588))

(assert (= (and b!7719459 ((_ is Concat!29390) (reg!20874 r!14126))) b!7719589))

(assert (= (and b!7719459 ((_ is Star!20545) (reg!20874 r!14126))) b!7719590))

(assert (= (and b!7719459 ((_ is Union!20545) (reg!20874 r!14126))) b!7719591))

(check-sat (not b!7719581) (not bm!713456) (not bm!713450) (not b!7719583) (not b!7719570) (not b!7719589) (not b!7719582) (not b!7719587) (not b!7719530) (not b!7719569) (not b!7719578) (not b!7719585) (not bm!713451) (not b!7719590) (not b!7719591) (not b!7719510) (not b!7719571) tp_is_empty!51445 (not b!7719577) (not b!7719586) (not bm!713457) (not b!7719579))
(check-sat)
