; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741274 () Bool)

(assert start!741274)

(declare-fun b!7802457 () Bool)

(declare-fun res!3107481 () Bool)

(declare-fun e!4618920 () Bool)

(assert (=> b!7802457 (=> (not res!3107481) (not e!4618920))))

(declare-datatypes ((C!42076 0))(
  ( (C!42077 (val!31478 Int)) )
))
(declare-datatypes ((Regex!20875 0))(
  ( (ElementMatch!20875 (c!1436842 C!42076)) (Concat!29720 (regOne!42262 Regex!20875) (regTwo!42262 Regex!20875)) (EmptyExpr!20875) (Star!20875 (reg!21204 Regex!20875)) (EmptyLang!20875) (Union!20875 (regOne!42263 Regex!20875) (regTwo!42263 Regex!20875)) )
))
(declare-fun r2!6217 () Regex!20875)

(declare-fun validRegex!11289 (Regex!20875) Bool)

(assert (=> b!7802457 (= res!3107481 (validRegex!11289 r2!6217))))

(declare-fun b!7802458 () Bool)

(declare-fun e!4618919 () Bool)

(assert (=> b!7802458 (= e!4618920 e!4618919)))

(declare-fun res!3107482 () Bool)

(assert (=> b!7802458 (=> (not res!3107482) (not e!4618919))))

(declare-fun lt!2674708 () Regex!20875)

(declare-datatypes ((List!73714 0))(
  ( (Nil!73590) (Cons!73590 (h!80038 C!42076) (t!388449 List!73714)) )
))
(declare-fun s!14292 () List!73714)

(declare-fun matchR!10335 (Regex!20875 List!73714) Bool)

(assert (=> b!7802458 (= res!3107482 (matchR!10335 lt!2674708 s!14292))))

(declare-fun r1!6279 () Regex!20875)

(assert (=> b!7802458 (= lt!2674708 (Concat!29720 r1!6279 r2!6217))))

(declare-fun b!7802459 () Bool)

(declare-fun res!3107480 () Bool)

(declare-fun e!4618921 () Bool)

(assert (=> b!7802459 (=> (not res!3107480) (not e!4618921))))

(declare-fun nullable!9259 (Regex!20875) Bool)

(assert (=> b!7802459 (= res!3107480 (not (nullable!9259 r1!6279)))))

(declare-fun b!7802460 () Bool)

(declare-fun e!4618925 () Bool)

(assert (=> b!7802460 (= e!4618925 false)))

(declare-fun b!7802461 () Bool)

(declare-fun e!4618924 () Bool)

(declare-fun tp!2298526 () Bool)

(declare-fun tp!2298523 () Bool)

(assert (=> b!7802461 (= e!4618924 (and tp!2298526 tp!2298523))))

(declare-fun b!7802462 () Bool)

(declare-fun e!4618918 () Bool)

(assert (=> b!7802462 (= e!4618921 e!4618918)))

(declare-fun res!3107479 () Bool)

(assert (=> b!7802462 (=> (not res!3107479) (not e!4618918))))

(declare-fun lt!2674709 () Regex!20875)

(declare-fun lt!2674710 () Regex!20875)

(assert (=> b!7802462 (= res!3107479 (= lt!2674709 (Union!20875 lt!2674710 EmptyLang!20875)))))

(declare-fun derivativeStep!6212 (Regex!20875 C!42076) Regex!20875)

(assert (=> b!7802462 (= lt!2674710 (Concat!29720 (derivativeStep!6212 r1!6279 (h!80038 s!14292)) r2!6217))))

(declare-fun b!7802463 () Bool)

(declare-fun e!4618923 () Bool)

(declare-fun tp!2298528 () Bool)

(assert (=> b!7802463 (= e!4618923 tp!2298528)))

(declare-fun b!7802464 () Bool)

(declare-fun tp!2298525 () Bool)

(declare-fun tp!2298522 () Bool)

(assert (=> b!7802464 (= e!4618924 (and tp!2298525 tp!2298522))))

(declare-fun b!7802465 () Bool)

(declare-fun tp_is_empty!52105 () Bool)

(assert (=> b!7802465 (= e!4618923 tp_is_empty!52105)))

(declare-fun res!3107475 () Bool)

(assert (=> start!741274 (=> (not res!3107475) (not e!4618920))))

(assert (=> start!741274 (= res!3107475 (validRegex!11289 r1!6279))))

(assert (=> start!741274 e!4618920))

(assert (=> start!741274 e!4618924))

(assert (=> start!741274 e!4618923))

(declare-fun e!4618922 () Bool)

(assert (=> start!741274 e!4618922))

(declare-fun b!7802466 () Bool)

(declare-fun tp!2298529 () Bool)

(assert (=> b!7802466 (= e!4618924 tp!2298529)))

(declare-fun b!7802467 () Bool)

(assert (=> b!7802467 (= e!4618924 tp_is_empty!52105)))

(declare-fun b!7802468 () Bool)

(declare-fun tp!2298527 () Bool)

(assert (=> b!7802468 (= e!4618922 (and tp_is_empty!52105 tp!2298527))))

(declare-fun b!7802469 () Bool)

(declare-fun tp!2298521 () Bool)

(declare-fun tp!2298524 () Bool)

(assert (=> b!7802469 (= e!4618923 (and tp!2298521 tp!2298524))))

(declare-fun b!7802470 () Bool)

(declare-fun res!3107478 () Bool)

(assert (=> b!7802470 (=> (not res!3107478) (not e!4618919))))

(get-info :version)

(assert (=> b!7802470 (= res!3107478 ((_ is Cons!73590) s!14292))))

(declare-fun b!7802471 () Bool)

(assert (=> b!7802471 (= e!4618919 e!4618921)))

(declare-fun res!3107476 () Bool)

(assert (=> b!7802471 (=> (not res!3107476) (not e!4618921))))

(assert (=> b!7802471 (= res!3107476 (matchR!10335 lt!2674709 (t!388449 s!14292)))))

(assert (=> b!7802471 (= lt!2674709 (derivativeStep!6212 lt!2674708 (h!80038 s!14292)))))

(declare-fun b!7802472 () Bool)

(declare-fun tp!2298520 () Bool)

(declare-fun tp!2298519 () Bool)

(assert (=> b!7802472 (= e!4618923 (and tp!2298520 tp!2298519))))

(declare-fun b!7802473 () Bool)

(assert (=> b!7802473 (= e!4618918 e!4618925)))

(declare-fun res!3107477 () Bool)

(assert (=> b!7802473 (=> res!3107477 e!4618925)))

(assert (=> b!7802473 (= res!3107477 (not (validRegex!11289 lt!2674710)))))

(assert (= (and start!741274 res!3107475) b!7802457))

(assert (= (and b!7802457 res!3107481) b!7802458))

(assert (= (and b!7802458 res!3107482) b!7802470))

(assert (= (and b!7802470 res!3107478) b!7802471))

(assert (= (and b!7802471 res!3107476) b!7802459))

(assert (= (and b!7802459 res!3107480) b!7802462))

(assert (= (and b!7802462 res!3107479) b!7802473))

(assert (= (and b!7802473 (not res!3107477)) b!7802460))

(assert (= (and start!741274 ((_ is ElementMatch!20875) r1!6279)) b!7802467))

(assert (= (and start!741274 ((_ is Concat!29720) r1!6279)) b!7802464))

(assert (= (and start!741274 ((_ is Star!20875) r1!6279)) b!7802466))

(assert (= (and start!741274 ((_ is Union!20875) r1!6279)) b!7802461))

(assert (= (and start!741274 ((_ is ElementMatch!20875) r2!6217)) b!7802465))

(assert (= (and start!741274 ((_ is Concat!29720) r2!6217)) b!7802469))

(assert (= (and start!741274 ((_ is Star!20875) r2!6217)) b!7802463))

(assert (= (and start!741274 ((_ is Union!20875) r2!6217)) b!7802472))

(assert (= (and start!741274 ((_ is Cons!73590) s!14292)) b!7802468))

(declare-fun m!8237734 () Bool)

(assert (=> start!741274 m!8237734))

(declare-fun m!8237736 () Bool)

(assert (=> b!7802459 m!8237736))

(declare-fun m!8237738 () Bool)

(assert (=> b!7802457 m!8237738))

(declare-fun m!8237740 () Bool)

(assert (=> b!7802471 m!8237740))

(declare-fun m!8237742 () Bool)

(assert (=> b!7802471 m!8237742))

(declare-fun m!8237744 () Bool)

(assert (=> b!7802458 m!8237744))

(declare-fun m!8237746 () Bool)

(assert (=> b!7802473 m!8237746))

(declare-fun m!8237748 () Bool)

(assert (=> b!7802462 m!8237748))

(check-sat (not b!7802471) (not b!7802458) (not b!7802469) (not b!7802462) (not b!7802457) (not b!7802468) (not b!7802463) (not start!741274) tp_is_empty!52105 (not b!7802472) (not b!7802473) (not b!7802459) (not b!7802461) (not b!7802464) (not b!7802466))
(check-sat)
(get-model)

(declare-fun d!2347665 () Bool)

(declare-fun e!4618940 () Bool)

(assert (=> d!2347665 e!4618940))

(declare-fun c!1436850 () Bool)

(assert (=> d!2347665 (= c!1436850 ((_ is EmptyExpr!20875) lt!2674709))))

(declare-fun lt!2674713 () Bool)

(declare-fun e!4618942 () Bool)

(assert (=> d!2347665 (= lt!2674713 e!4618942)))

(declare-fun c!1436851 () Bool)

(declare-fun isEmpty!42238 (List!73714) Bool)

(assert (=> d!2347665 (= c!1436851 (isEmpty!42238 (t!388449 s!14292)))))

(assert (=> d!2347665 (validRegex!11289 lt!2674709)))

(assert (=> d!2347665 (= (matchR!10335 lt!2674709 (t!388449 s!14292)) lt!2674713)))

(declare-fun b!7802502 () Bool)

(declare-fun res!3107504 () Bool)

(declare-fun e!4618941 () Bool)

(assert (=> b!7802502 (=> (not res!3107504) (not e!4618941))))

(declare-fun call!723611 () Bool)

(assert (=> b!7802502 (= res!3107504 (not call!723611))))

(declare-fun b!7802503 () Bool)

(declare-fun e!4618943 () Bool)

(assert (=> b!7802503 (= e!4618943 (not lt!2674713))))

(declare-fun b!7802504 () Bool)

(declare-fun e!4618945 () Bool)

(declare-fun head!15951 (List!73714) C!42076)

(assert (=> b!7802504 (= e!4618945 (not (= (head!15951 (t!388449 s!14292)) (c!1436842 lt!2674709))))))

(declare-fun b!7802505 () Bool)

(declare-fun tail!15492 (List!73714) List!73714)

(assert (=> b!7802505 (= e!4618942 (matchR!10335 (derivativeStep!6212 lt!2674709 (head!15951 (t!388449 s!14292))) (tail!15492 (t!388449 s!14292))))))

(declare-fun b!7802506 () Bool)

(declare-fun res!3107501 () Bool)

(declare-fun e!4618946 () Bool)

(assert (=> b!7802506 (=> res!3107501 e!4618946)))

(assert (=> b!7802506 (= res!3107501 (not ((_ is ElementMatch!20875) lt!2674709)))))

(assert (=> b!7802506 (= e!4618943 e!4618946)))

(declare-fun b!7802507 () Bool)

(declare-fun res!3107503 () Bool)

(assert (=> b!7802507 (=> (not res!3107503) (not e!4618941))))

(assert (=> b!7802507 (= res!3107503 (isEmpty!42238 (tail!15492 (t!388449 s!14292))))))

(declare-fun b!7802508 () Bool)

(declare-fun e!4618944 () Bool)

(assert (=> b!7802508 (= e!4618944 e!4618945)))

(declare-fun res!3107499 () Bool)

(assert (=> b!7802508 (=> res!3107499 e!4618945)))

(assert (=> b!7802508 (= res!3107499 call!723611)))

(declare-fun b!7802509 () Bool)

(assert (=> b!7802509 (= e!4618940 (= lt!2674713 call!723611))))

(declare-fun b!7802510 () Bool)

(declare-fun res!3107505 () Bool)

(assert (=> b!7802510 (=> res!3107505 e!4618946)))

(assert (=> b!7802510 (= res!3107505 e!4618941)))

(declare-fun res!3107506 () Bool)

(assert (=> b!7802510 (=> (not res!3107506) (not e!4618941))))

(assert (=> b!7802510 (= res!3107506 lt!2674713)))

(declare-fun b!7802511 () Bool)

(assert (=> b!7802511 (= e!4618946 e!4618944)))

(declare-fun res!3107500 () Bool)

(assert (=> b!7802511 (=> (not res!3107500) (not e!4618944))))

(assert (=> b!7802511 (= res!3107500 (not lt!2674713))))

(declare-fun b!7802512 () Bool)

(assert (=> b!7802512 (= e!4618941 (= (head!15951 (t!388449 s!14292)) (c!1436842 lt!2674709)))))

(declare-fun bm!723606 () Bool)

(assert (=> bm!723606 (= call!723611 (isEmpty!42238 (t!388449 s!14292)))))

(declare-fun b!7802513 () Bool)

(declare-fun res!3107502 () Bool)

(assert (=> b!7802513 (=> res!3107502 e!4618945)))

(assert (=> b!7802513 (= res!3107502 (not (isEmpty!42238 (tail!15492 (t!388449 s!14292)))))))

(declare-fun b!7802514 () Bool)

(assert (=> b!7802514 (= e!4618942 (nullable!9259 lt!2674709))))

(declare-fun b!7802515 () Bool)

(assert (=> b!7802515 (= e!4618940 e!4618943)))

(declare-fun c!1436849 () Bool)

(assert (=> b!7802515 (= c!1436849 ((_ is EmptyLang!20875) lt!2674709))))

(assert (= (and d!2347665 c!1436851) b!7802514))

(assert (= (and d!2347665 (not c!1436851)) b!7802505))

(assert (= (and d!2347665 c!1436850) b!7802509))

(assert (= (and d!2347665 (not c!1436850)) b!7802515))

(assert (= (and b!7802515 c!1436849) b!7802503))

(assert (= (and b!7802515 (not c!1436849)) b!7802506))

(assert (= (and b!7802506 (not res!3107501)) b!7802510))

(assert (= (and b!7802510 res!3107506) b!7802502))

(assert (= (and b!7802502 res!3107504) b!7802507))

(assert (= (and b!7802507 res!3107503) b!7802512))

(assert (= (and b!7802510 (not res!3107505)) b!7802511))

(assert (= (and b!7802511 res!3107500) b!7802508))

(assert (= (and b!7802508 (not res!3107499)) b!7802513))

(assert (= (and b!7802513 (not res!3107502)) b!7802504))

(assert (= (or b!7802509 b!7802502 b!7802508) bm!723606))

(declare-fun m!8237750 () Bool)

(assert (=> b!7802512 m!8237750))

(declare-fun m!8237752 () Bool)

(assert (=> b!7802513 m!8237752))

(assert (=> b!7802513 m!8237752))

(declare-fun m!8237754 () Bool)

(assert (=> b!7802513 m!8237754))

(assert (=> b!7802504 m!8237750))

(declare-fun m!8237756 () Bool)

(assert (=> bm!723606 m!8237756))

(assert (=> d!2347665 m!8237756))

(declare-fun m!8237758 () Bool)

(assert (=> d!2347665 m!8237758))

(assert (=> b!7802507 m!8237752))

(assert (=> b!7802507 m!8237752))

(assert (=> b!7802507 m!8237754))

(declare-fun m!8237760 () Bool)

(assert (=> b!7802514 m!8237760))

(assert (=> b!7802505 m!8237750))

(assert (=> b!7802505 m!8237750))

(declare-fun m!8237762 () Bool)

(assert (=> b!7802505 m!8237762))

(assert (=> b!7802505 m!8237752))

(assert (=> b!7802505 m!8237762))

(assert (=> b!7802505 m!8237752))

(declare-fun m!8237764 () Bool)

(assert (=> b!7802505 m!8237764))

(assert (=> b!7802471 d!2347665))

(declare-fun b!7802564 () Bool)

(declare-fun e!4618971 () Regex!20875)

(assert (=> b!7802564 (= e!4618971 (ite (= (h!80038 s!14292) (c!1436842 lt!2674708)) EmptyExpr!20875 EmptyLang!20875))))

(declare-fun e!4618973 () Regex!20875)

(declare-fun call!723622 () Regex!20875)

(declare-fun call!723621 () Regex!20875)

(declare-fun b!7802565 () Bool)

(assert (=> b!7802565 (= e!4618973 (Union!20875 (Concat!29720 call!723621 (regTwo!42262 lt!2674708)) call!723622))))

(declare-fun c!1436870 () Bool)

(declare-fun call!723623 () Regex!20875)

(declare-fun bm!723615 () Bool)

(declare-fun c!1436868 () Bool)

(declare-fun c!1436871 () Bool)

(assert (=> bm!723615 (= call!723623 (derivativeStep!6212 (ite c!1436871 (regTwo!42263 lt!2674708) (ite c!1436868 (reg!21204 lt!2674708) (ite c!1436870 (regTwo!42262 lt!2674708) (regOne!42262 lt!2674708)))) (h!80038 s!14292)))))

(declare-fun bm!723616 () Bool)

(declare-fun call!723620 () Regex!20875)

(assert (=> bm!723616 (= call!723620 call!723623)))

(declare-fun bm!723617 () Bool)

(assert (=> bm!723617 (= call!723622 call!723620)))

(declare-fun b!7802567 () Bool)

(assert (=> b!7802567 (= c!1436870 (nullable!9259 (regOne!42262 lt!2674708)))))

(declare-fun e!4618975 () Regex!20875)

(assert (=> b!7802567 (= e!4618975 e!4618973)))

(declare-fun b!7802568 () Bool)

(declare-fun e!4618972 () Regex!20875)

(assert (=> b!7802568 (= e!4618972 e!4618971)))

(declare-fun c!1436869 () Bool)

(assert (=> b!7802568 (= c!1436869 ((_ is ElementMatch!20875) lt!2674708))))

(declare-fun b!7802569 () Bool)

(assert (=> b!7802569 (= c!1436871 ((_ is Union!20875) lt!2674708))))

(declare-fun e!4618974 () Regex!20875)

(assert (=> b!7802569 (= e!4618971 e!4618974)))

(declare-fun b!7802570 () Bool)

(assert (=> b!7802570 (= e!4618973 (Union!20875 (Concat!29720 call!723622 (regTwo!42262 lt!2674708)) EmptyLang!20875))))

(declare-fun b!7802566 () Bool)

(assert (=> b!7802566 (= e!4618972 EmptyLang!20875)))

(declare-fun d!2347669 () Bool)

(declare-fun lt!2674718 () Regex!20875)

(assert (=> d!2347669 (validRegex!11289 lt!2674718)))

(assert (=> d!2347669 (= lt!2674718 e!4618972)))

(declare-fun c!1436872 () Bool)

(assert (=> d!2347669 (= c!1436872 (or ((_ is EmptyExpr!20875) lt!2674708) ((_ is EmptyLang!20875) lt!2674708)))))

(assert (=> d!2347669 (validRegex!11289 lt!2674708)))

(assert (=> d!2347669 (= (derivativeStep!6212 lt!2674708 (h!80038 s!14292)) lt!2674718)))

(declare-fun b!7802571 () Bool)

(assert (=> b!7802571 (= e!4618974 (Union!20875 call!723621 call!723623))))

(declare-fun b!7802572 () Bool)

(assert (=> b!7802572 (= e!4618974 e!4618975)))

(assert (=> b!7802572 (= c!1436868 ((_ is Star!20875) lt!2674708))))

(declare-fun bm!723618 () Bool)

(assert (=> bm!723618 (= call!723621 (derivativeStep!6212 (ite c!1436871 (regOne!42263 lt!2674708) (regOne!42262 lt!2674708)) (h!80038 s!14292)))))

(declare-fun b!7802573 () Bool)

(assert (=> b!7802573 (= e!4618975 (Concat!29720 call!723620 lt!2674708))))

(assert (= (and d!2347669 c!1436872) b!7802566))

(assert (= (and d!2347669 (not c!1436872)) b!7802568))

(assert (= (and b!7802568 c!1436869) b!7802564))

(assert (= (and b!7802568 (not c!1436869)) b!7802569))

(assert (= (and b!7802569 c!1436871) b!7802571))

(assert (= (and b!7802569 (not c!1436871)) b!7802572))

(assert (= (and b!7802572 c!1436868) b!7802573))

(assert (= (and b!7802572 (not c!1436868)) b!7802567))

(assert (= (and b!7802567 c!1436870) b!7802565))

(assert (= (and b!7802567 (not c!1436870)) b!7802570))

(assert (= (or b!7802565 b!7802570) bm!723617))

(assert (= (or b!7802573 bm!723617) bm!723616))

(assert (= (or b!7802571 bm!723616) bm!723615))

(assert (= (or b!7802571 b!7802565) bm!723618))

(declare-fun m!8237766 () Bool)

(assert (=> bm!723615 m!8237766))

(declare-fun m!8237768 () Bool)

(assert (=> b!7802567 m!8237768))

(declare-fun m!8237770 () Bool)

(assert (=> d!2347669 m!8237770))

(declare-fun m!8237772 () Bool)

(assert (=> d!2347669 m!8237772))

(declare-fun m!8237774 () Bool)

(assert (=> bm!723618 m!8237774))

(assert (=> b!7802471 d!2347669))

(declare-fun bm!723627 () Bool)

(declare-fun call!723632 () Bool)

(declare-fun c!1436877 () Bool)

(assert (=> bm!723627 (= call!723632 (validRegex!11289 (ite c!1436877 (regOne!42263 r2!6217) (regOne!42262 r2!6217))))))

(declare-fun b!7802592 () Bool)

(declare-fun e!4618995 () Bool)

(declare-fun e!4618992 () Bool)

(assert (=> b!7802592 (= e!4618995 e!4618992)))

(assert (=> b!7802592 (= c!1436877 ((_ is Union!20875) r2!6217))))

(declare-fun b!7802593 () Bool)

(declare-fun e!4618993 () Bool)

(declare-fun call!723634 () Bool)

(assert (=> b!7802593 (= e!4618993 call!723634)))

(declare-fun bm!723628 () Bool)

(declare-fun c!1436878 () Bool)

(assert (=> bm!723628 (= call!723634 (validRegex!11289 (ite c!1436878 (reg!21204 r2!6217) (ite c!1436877 (regTwo!42263 r2!6217) (regTwo!42262 r2!6217)))))))

(declare-fun b!7802594 () Bool)

(declare-fun e!4618996 () Bool)

(declare-fun call!723633 () Bool)

(assert (=> b!7802594 (= e!4618996 call!723633)))

(declare-fun b!7802595 () Bool)

(declare-fun res!3107533 () Bool)

(assert (=> b!7802595 (=> (not res!3107533) (not e!4618996))))

(assert (=> b!7802595 (= res!3107533 call!723632)))

(assert (=> b!7802595 (= e!4618992 e!4618996)))

(declare-fun b!7802597 () Bool)

(assert (=> b!7802597 (= e!4618995 e!4618993)))

(declare-fun res!3107536 () Bool)

(assert (=> b!7802597 (= res!3107536 (not (nullable!9259 (reg!21204 r2!6217))))))

(assert (=> b!7802597 (=> (not res!3107536) (not e!4618993))))

(declare-fun b!7802598 () Bool)

(declare-fun res!3107537 () Bool)

(declare-fun e!4618994 () Bool)

(assert (=> b!7802598 (=> res!3107537 e!4618994)))

(assert (=> b!7802598 (= res!3107537 (not ((_ is Concat!29720) r2!6217)))))

(assert (=> b!7802598 (= e!4618992 e!4618994)))

(declare-fun b!7802599 () Bool)

(declare-fun e!4618991 () Bool)

(assert (=> b!7802599 (= e!4618994 e!4618991)))

(declare-fun res!3107535 () Bool)

(assert (=> b!7802599 (=> (not res!3107535) (not e!4618991))))

(assert (=> b!7802599 (= res!3107535 call!723632)))

(declare-fun b!7802596 () Bool)

(declare-fun e!4618990 () Bool)

(assert (=> b!7802596 (= e!4618990 e!4618995)))

(assert (=> b!7802596 (= c!1436878 ((_ is Star!20875) r2!6217))))

(declare-fun d!2347671 () Bool)

(declare-fun res!3107534 () Bool)

(assert (=> d!2347671 (=> res!3107534 e!4618990)))

(assert (=> d!2347671 (= res!3107534 ((_ is ElementMatch!20875) r2!6217))))

(assert (=> d!2347671 (= (validRegex!11289 r2!6217) e!4618990)))

(declare-fun b!7802600 () Bool)

(assert (=> b!7802600 (= e!4618991 call!723633)))

(declare-fun bm!723629 () Bool)

(assert (=> bm!723629 (= call!723633 call!723634)))

(assert (= (and d!2347671 (not res!3107534)) b!7802596))

(assert (= (and b!7802596 c!1436878) b!7802597))

(assert (= (and b!7802596 (not c!1436878)) b!7802592))

(assert (= (and b!7802597 res!3107536) b!7802593))

(assert (= (and b!7802592 c!1436877) b!7802595))

(assert (= (and b!7802592 (not c!1436877)) b!7802598))

(assert (= (and b!7802595 res!3107533) b!7802594))

(assert (= (and b!7802598 (not res!3107537)) b!7802599))

(assert (= (and b!7802599 res!3107535) b!7802600))

(assert (= (or b!7802595 b!7802599) bm!723627))

(assert (= (or b!7802594 b!7802600) bm!723629))

(assert (= (or b!7802593 bm!723629) bm!723628))

(declare-fun m!8237776 () Bool)

(assert (=> bm!723627 m!8237776))

(declare-fun m!8237778 () Bool)

(assert (=> bm!723628 m!8237778))

(declare-fun m!8237780 () Bool)

(assert (=> b!7802597 m!8237780))

(assert (=> b!7802457 d!2347671))

(declare-fun bm!723630 () Bool)

(declare-fun call!723635 () Bool)

(declare-fun c!1436879 () Bool)

(assert (=> bm!723630 (= call!723635 (validRegex!11289 (ite c!1436879 (regOne!42263 lt!2674710) (regOne!42262 lt!2674710))))))

(declare-fun b!7802601 () Bool)

(declare-fun e!4619002 () Bool)

(declare-fun e!4618999 () Bool)

(assert (=> b!7802601 (= e!4619002 e!4618999)))

(assert (=> b!7802601 (= c!1436879 ((_ is Union!20875) lt!2674710))))

(declare-fun b!7802602 () Bool)

(declare-fun e!4619000 () Bool)

(declare-fun call!723637 () Bool)

(assert (=> b!7802602 (= e!4619000 call!723637)))

(declare-fun c!1436880 () Bool)

(declare-fun bm!723631 () Bool)

(assert (=> bm!723631 (= call!723637 (validRegex!11289 (ite c!1436880 (reg!21204 lt!2674710) (ite c!1436879 (regTwo!42263 lt!2674710) (regTwo!42262 lt!2674710)))))))

(declare-fun b!7802603 () Bool)

(declare-fun e!4619003 () Bool)

(declare-fun call!723636 () Bool)

(assert (=> b!7802603 (= e!4619003 call!723636)))

(declare-fun b!7802604 () Bool)

(declare-fun res!3107538 () Bool)

(assert (=> b!7802604 (=> (not res!3107538) (not e!4619003))))

(assert (=> b!7802604 (= res!3107538 call!723635)))

(assert (=> b!7802604 (= e!4618999 e!4619003)))

(declare-fun b!7802606 () Bool)

(assert (=> b!7802606 (= e!4619002 e!4619000)))

(declare-fun res!3107541 () Bool)

(assert (=> b!7802606 (= res!3107541 (not (nullable!9259 (reg!21204 lt!2674710))))))

(assert (=> b!7802606 (=> (not res!3107541) (not e!4619000))))

(declare-fun b!7802607 () Bool)

(declare-fun res!3107542 () Bool)

(declare-fun e!4619001 () Bool)

(assert (=> b!7802607 (=> res!3107542 e!4619001)))

(assert (=> b!7802607 (= res!3107542 (not ((_ is Concat!29720) lt!2674710)))))

(assert (=> b!7802607 (= e!4618999 e!4619001)))

(declare-fun b!7802608 () Bool)

(declare-fun e!4618998 () Bool)

(assert (=> b!7802608 (= e!4619001 e!4618998)))

(declare-fun res!3107540 () Bool)

(assert (=> b!7802608 (=> (not res!3107540) (not e!4618998))))

(assert (=> b!7802608 (= res!3107540 call!723635)))

(declare-fun b!7802605 () Bool)

(declare-fun e!4618997 () Bool)

(assert (=> b!7802605 (= e!4618997 e!4619002)))

(assert (=> b!7802605 (= c!1436880 ((_ is Star!20875) lt!2674710))))

(declare-fun d!2347673 () Bool)

(declare-fun res!3107539 () Bool)

(assert (=> d!2347673 (=> res!3107539 e!4618997)))

(assert (=> d!2347673 (= res!3107539 ((_ is ElementMatch!20875) lt!2674710))))

(assert (=> d!2347673 (= (validRegex!11289 lt!2674710) e!4618997)))

(declare-fun b!7802609 () Bool)

(assert (=> b!7802609 (= e!4618998 call!723636)))

(declare-fun bm!723632 () Bool)

(assert (=> bm!723632 (= call!723636 call!723637)))

(assert (= (and d!2347673 (not res!3107539)) b!7802605))

(assert (= (and b!7802605 c!1436880) b!7802606))

(assert (= (and b!7802605 (not c!1436880)) b!7802601))

(assert (= (and b!7802606 res!3107541) b!7802602))

(assert (= (and b!7802601 c!1436879) b!7802604))

(assert (= (and b!7802601 (not c!1436879)) b!7802607))

(assert (= (and b!7802604 res!3107538) b!7802603))

(assert (= (and b!7802607 (not res!3107542)) b!7802608))

(assert (= (and b!7802608 res!3107540) b!7802609))

(assert (= (or b!7802604 b!7802608) bm!723630))

(assert (= (or b!7802603 b!7802609) bm!723632))

(assert (= (or b!7802602 bm!723632) bm!723631))

(declare-fun m!8237782 () Bool)

(assert (=> bm!723630 m!8237782))

(declare-fun m!8237784 () Bool)

(assert (=> bm!723631 m!8237784))

(declare-fun m!8237786 () Bool)

(assert (=> b!7802606 m!8237786))

(assert (=> b!7802473 d!2347673))

(declare-fun b!7802610 () Bool)

(declare-fun e!4619004 () Regex!20875)

(assert (=> b!7802610 (= e!4619004 (ite (= (h!80038 s!14292) (c!1436842 r1!6279)) EmptyExpr!20875 EmptyLang!20875))))

(declare-fun call!723639 () Regex!20875)

(declare-fun call!723640 () Regex!20875)

(declare-fun e!4619006 () Regex!20875)

(declare-fun b!7802611 () Bool)

(assert (=> b!7802611 (= e!4619006 (Union!20875 (Concat!29720 call!723639 (regTwo!42262 r1!6279)) call!723640))))

(declare-fun c!1436881 () Bool)

(declare-fun c!1436883 () Bool)

(declare-fun call!723641 () Regex!20875)

(declare-fun c!1436884 () Bool)

(declare-fun bm!723633 () Bool)

(assert (=> bm!723633 (= call!723641 (derivativeStep!6212 (ite c!1436884 (regTwo!42263 r1!6279) (ite c!1436881 (reg!21204 r1!6279) (ite c!1436883 (regTwo!42262 r1!6279) (regOne!42262 r1!6279)))) (h!80038 s!14292)))))

(declare-fun bm!723634 () Bool)

(declare-fun call!723638 () Regex!20875)

(assert (=> bm!723634 (= call!723638 call!723641)))

(declare-fun bm!723635 () Bool)

(assert (=> bm!723635 (= call!723640 call!723638)))

(declare-fun b!7802613 () Bool)

(assert (=> b!7802613 (= c!1436883 (nullable!9259 (regOne!42262 r1!6279)))))

(declare-fun e!4619008 () Regex!20875)

(assert (=> b!7802613 (= e!4619008 e!4619006)))

(declare-fun b!7802614 () Bool)

(declare-fun e!4619005 () Regex!20875)

(assert (=> b!7802614 (= e!4619005 e!4619004)))

(declare-fun c!1436882 () Bool)

(assert (=> b!7802614 (= c!1436882 ((_ is ElementMatch!20875) r1!6279))))

(declare-fun b!7802615 () Bool)

(assert (=> b!7802615 (= c!1436884 ((_ is Union!20875) r1!6279))))

(declare-fun e!4619007 () Regex!20875)

(assert (=> b!7802615 (= e!4619004 e!4619007)))

(declare-fun b!7802616 () Bool)

(assert (=> b!7802616 (= e!4619006 (Union!20875 (Concat!29720 call!723640 (regTwo!42262 r1!6279)) EmptyLang!20875))))

(declare-fun b!7802612 () Bool)

(assert (=> b!7802612 (= e!4619005 EmptyLang!20875)))

(declare-fun d!2347675 () Bool)

(declare-fun lt!2674719 () Regex!20875)

(assert (=> d!2347675 (validRegex!11289 lt!2674719)))

(assert (=> d!2347675 (= lt!2674719 e!4619005)))

(declare-fun c!1436885 () Bool)

(assert (=> d!2347675 (= c!1436885 (or ((_ is EmptyExpr!20875) r1!6279) ((_ is EmptyLang!20875) r1!6279)))))

(assert (=> d!2347675 (validRegex!11289 r1!6279)))

(assert (=> d!2347675 (= (derivativeStep!6212 r1!6279 (h!80038 s!14292)) lt!2674719)))

(declare-fun b!7802617 () Bool)

(assert (=> b!7802617 (= e!4619007 (Union!20875 call!723639 call!723641))))

(declare-fun b!7802618 () Bool)

(assert (=> b!7802618 (= e!4619007 e!4619008)))

(assert (=> b!7802618 (= c!1436881 ((_ is Star!20875) r1!6279))))

(declare-fun bm!723636 () Bool)

(assert (=> bm!723636 (= call!723639 (derivativeStep!6212 (ite c!1436884 (regOne!42263 r1!6279) (regOne!42262 r1!6279)) (h!80038 s!14292)))))

(declare-fun b!7802619 () Bool)

(assert (=> b!7802619 (= e!4619008 (Concat!29720 call!723638 r1!6279))))

(assert (= (and d!2347675 c!1436885) b!7802612))

(assert (= (and d!2347675 (not c!1436885)) b!7802614))

(assert (= (and b!7802614 c!1436882) b!7802610))

(assert (= (and b!7802614 (not c!1436882)) b!7802615))

(assert (= (and b!7802615 c!1436884) b!7802617))

(assert (= (and b!7802615 (not c!1436884)) b!7802618))

(assert (= (and b!7802618 c!1436881) b!7802619))

(assert (= (and b!7802618 (not c!1436881)) b!7802613))

(assert (= (and b!7802613 c!1436883) b!7802611))

(assert (= (and b!7802613 (not c!1436883)) b!7802616))

(assert (= (or b!7802611 b!7802616) bm!723635))

(assert (= (or b!7802619 bm!723635) bm!723634))

(assert (= (or b!7802617 bm!723634) bm!723633))

(assert (= (or b!7802617 b!7802611) bm!723636))

(declare-fun m!8237788 () Bool)

(assert (=> bm!723633 m!8237788))

(declare-fun m!8237790 () Bool)

(assert (=> b!7802613 m!8237790))

(declare-fun m!8237792 () Bool)

(assert (=> d!2347675 m!8237792))

(assert (=> d!2347675 m!8237734))

(declare-fun m!8237794 () Bool)

(assert (=> bm!723636 m!8237794))

(assert (=> b!7802462 d!2347675))

(declare-fun d!2347677 () Bool)

(declare-fun e!4619009 () Bool)

(assert (=> d!2347677 e!4619009))

(declare-fun c!1436887 () Bool)

(assert (=> d!2347677 (= c!1436887 ((_ is EmptyExpr!20875) lt!2674708))))

(declare-fun lt!2674720 () Bool)

(declare-fun e!4619011 () Bool)

(assert (=> d!2347677 (= lt!2674720 e!4619011)))

(declare-fun c!1436888 () Bool)

(assert (=> d!2347677 (= c!1436888 (isEmpty!42238 s!14292))))

(assert (=> d!2347677 (validRegex!11289 lt!2674708)))

(assert (=> d!2347677 (= (matchR!10335 lt!2674708 s!14292) lt!2674720)))

(declare-fun b!7802620 () Bool)

(declare-fun res!3107548 () Bool)

(declare-fun e!4619010 () Bool)

(assert (=> b!7802620 (=> (not res!3107548) (not e!4619010))))

(declare-fun call!723642 () Bool)

(assert (=> b!7802620 (= res!3107548 (not call!723642))))

(declare-fun b!7802621 () Bool)

(declare-fun e!4619012 () Bool)

(assert (=> b!7802621 (= e!4619012 (not lt!2674720))))

(declare-fun b!7802622 () Bool)

(declare-fun e!4619014 () Bool)

(assert (=> b!7802622 (= e!4619014 (not (= (head!15951 s!14292) (c!1436842 lt!2674708))))))

(declare-fun b!7802623 () Bool)

(assert (=> b!7802623 (= e!4619011 (matchR!10335 (derivativeStep!6212 lt!2674708 (head!15951 s!14292)) (tail!15492 s!14292)))))

(declare-fun b!7802624 () Bool)

(declare-fun res!3107545 () Bool)

(declare-fun e!4619015 () Bool)

(assert (=> b!7802624 (=> res!3107545 e!4619015)))

(assert (=> b!7802624 (= res!3107545 (not ((_ is ElementMatch!20875) lt!2674708)))))

(assert (=> b!7802624 (= e!4619012 e!4619015)))

(declare-fun b!7802625 () Bool)

(declare-fun res!3107547 () Bool)

(assert (=> b!7802625 (=> (not res!3107547) (not e!4619010))))

(assert (=> b!7802625 (= res!3107547 (isEmpty!42238 (tail!15492 s!14292)))))

(declare-fun b!7802626 () Bool)

(declare-fun e!4619013 () Bool)

(assert (=> b!7802626 (= e!4619013 e!4619014)))

(declare-fun res!3107543 () Bool)

(assert (=> b!7802626 (=> res!3107543 e!4619014)))

(assert (=> b!7802626 (= res!3107543 call!723642)))

(declare-fun b!7802627 () Bool)

(assert (=> b!7802627 (= e!4619009 (= lt!2674720 call!723642))))

(declare-fun b!7802628 () Bool)

(declare-fun res!3107549 () Bool)

(assert (=> b!7802628 (=> res!3107549 e!4619015)))

(assert (=> b!7802628 (= res!3107549 e!4619010)))

(declare-fun res!3107550 () Bool)

(assert (=> b!7802628 (=> (not res!3107550) (not e!4619010))))

(assert (=> b!7802628 (= res!3107550 lt!2674720)))

(declare-fun b!7802629 () Bool)

(assert (=> b!7802629 (= e!4619015 e!4619013)))

(declare-fun res!3107544 () Bool)

(assert (=> b!7802629 (=> (not res!3107544) (not e!4619013))))

(assert (=> b!7802629 (= res!3107544 (not lt!2674720))))

(declare-fun b!7802630 () Bool)

(assert (=> b!7802630 (= e!4619010 (= (head!15951 s!14292) (c!1436842 lt!2674708)))))

(declare-fun bm!723637 () Bool)

(assert (=> bm!723637 (= call!723642 (isEmpty!42238 s!14292))))

(declare-fun b!7802631 () Bool)

(declare-fun res!3107546 () Bool)

(assert (=> b!7802631 (=> res!3107546 e!4619014)))

(assert (=> b!7802631 (= res!3107546 (not (isEmpty!42238 (tail!15492 s!14292))))))

(declare-fun b!7802632 () Bool)

(assert (=> b!7802632 (= e!4619011 (nullable!9259 lt!2674708))))

(declare-fun b!7802633 () Bool)

(assert (=> b!7802633 (= e!4619009 e!4619012)))

(declare-fun c!1436886 () Bool)

(assert (=> b!7802633 (= c!1436886 ((_ is EmptyLang!20875) lt!2674708))))

(assert (= (and d!2347677 c!1436888) b!7802632))

(assert (= (and d!2347677 (not c!1436888)) b!7802623))

(assert (= (and d!2347677 c!1436887) b!7802627))

(assert (= (and d!2347677 (not c!1436887)) b!7802633))

(assert (= (and b!7802633 c!1436886) b!7802621))

(assert (= (and b!7802633 (not c!1436886)) b!7802624))

(assert (= (and b!7802624 (not res!3107545)) b!7802628))

(assert (= (and b!7802628 res!3107550) b!7802620))

(assert (= (and b!7802620 res!3107548) b!7802625))

(assert (= (and b!7802625 res!3107547) b!7802630))

(assert (= (and b!7802628 (not res!3107549)) b!7802629))

(assert (= (and b!7802629 res!3107544) b!7802626))

(assert (= (and b!7802626 (not res!3107543)) b!7802631))

(assert (= (and b!7802631 (not res!3107546)) b!7802622))

(assert (= (or b!7802627 b!7802620 b!7802626) bm!723637))

(declare-fun m!8237796 () Bool)

(assert (=> b!7802630 m!8237796))

(declare-fun m!8237798 () Bool)

(assert (=> b!7802631 m!8237798))

(assert (=> b!7802631 m!8237798))

(declare-fun m!8237800 () Bool)

(assert (=> b!7802631 m!8237800))

(assert (=> b!7802622 m!8237796))

(declare-fun m!8237802 () Bool)

(assert (=> bm!723637 m!8237802))

(assert (=> d!2347677 m!8237802))

(assert (=> d!2347677 m!8237772))

(assert (=> b!7802625 m!8237798))

(assert (=> b!7802625 m!8237798))

(assert (=> b!7802625 m!8237800))

(declare-fun m!8237804 () Bool)

(assert (=> b!7802632 m!8237804))

(assert (=> b!7802623 m!8237796))

(assert (=> b!7802623 m!8237796))

(declare-fun m!8237806 () Bool)

(assert (=> b!7802623 m!8237806))

(assert (=> b!7802623 m!8237798))

(assert (=> b!7802623 m!8237806))

(assert (=> b!7802623 m!8237798))

(declare-fun m!8237808 () Bool)

(assert (=> b!7802623 m!8237808))

(assert (=> b!7802458 d!2347677))

(declare-fun bm!723639 () Bool)

(declare-fun call!723644 () Bool)

(declare-fun c!1436892 () Bool)

(assert (=> bm!723639 (= call!723644 (validRegex!11289 (ite c!1436892 (regOne!42263 r1!6279) (regOne!42262 r1!6279))))))

(declare-fun b!7802648 () Bool)

(declare-fun e!4619028 () Bool)

(declare-fun e!4619025 () Bool)

(assert (=> b!7802648 (= e!4619028 e!4619025)))

(assert (=> b!7802648 (= c!1436892 ((_ is Union!20875) r1!6279))))

(declare-fun b!7802649 () Bool)

(declare-fun e!4619026 () Bool)

(declare-fun call!723646 () Bool)

(assert (=> b!7802649 (= e!4619026 call!723646)))

(declare-fun bm!723640 () Bool)

(declare-fun c!1436893 () Bool)

(assert (=> bm!723640 (= call!723646 (validRegex!11289 (ite c!1436893 (reg!21204 r1!6279) (ite c!1436892 (regTwo!42263 r1!6279) (regTwo!42262 r1!6279)))))))

(declare-fun b!7802650 () Bool)

(declare-fun e!4619029 () Bool)

(declare-fun call!723645 () Bool)

(assert (=> b!7802650 (= e!4619029 call!723645)))

(declare-fun b!7802651 () Bool)

(declare-fun res!3107559 () Bool)

(assert (=> b!7802651 (=> (not res!3107559) (not e!4619029))))

(assert (=> b!7802651 (= res!3107559 call!723644)))

(assert (=> b!7802651 (= e!4619025 e!4619029)))

(declare-fun b!7802653 () Bool)

(assert (=> b!7802653 (= e!4619028 e!4619026)))

(declare-fun res!3107562 () Bool)

(assert (=> b!7802653 (= res!3107562 (not (nullable!9259 (reg!21204 r1!6279))))))

(assert (=> b!7802653 (=> (not res!3107562) (not e!4619026))))

(declare-fun b!7802654 () Bool)

(declare-fun res!3107563 () Bool)

(declare-fun e!4619027 () Bool)

(assert (=> b!7802654 (=> res!3107563 e!4619027)))

(assert (=> b!7802654 (= res!3107563 (not ((_ is Concat!29720) r1!6279)))))

(assert (=> b!7802654 (= e!4619025 e!4619027)))

(declare-fun b!7802655 () Bool)

(declare-fun e!4619024 () Bool)

(assert (=> b!7802655 (= e!4619027 e!4619024)))

(declare-fun res!3107561 () Bool)

(assert (=> b!7802655 (=> (not res!3107561) (not e!4619024))))

(assert (=> b!7802655 (= res!3107561 call!723644)))

(declare-fun b!7802652 () Bool)

(declare-fun e!4619023 () Bool)

(assert (=> b!7802652 (= e!4619023 e!4619028)))

(assert (=> b!7802652 (= c!1436893 ((_ is Star!20875) r1!6279))))

(declare-fun d!2347679 () Bool)

(declare-fun res!3107560 () Bool)

(assert (=> d!2347679 (=> res!3107560 e!4619023)))

(assert (=> d!2347679 (= res!3107560 ((_ is ElementMatch!20875) r1!6279))))

(assert (=> d!2347679 (= (validRegex!11289 r1!6279) e!4619023)))

(declare-fun b!7802656 () Bool)

(assert (=> b!7802656 (= e!4619024 call!723645)))

(declare-fun bm!723641 () Bool)

(assert (=> bm!723641 (= call!723645 call!723646)))

(assert (= (and d!2347679 (not res!3107560)) b!7802652))

(assert (= (and b!7802652 c!1436893) b!7802653))

(assert (= (and b!7802652 (not c!1436893)) b!7802648))

(assert (= (and b!7802653 res!3107562) b!7802649))

(assert (= (and b!7802648 c!1436892) b!7802651))

(assert (= (and b!7802648 (not c!1436892)) b!7802654))

(assert (= (and b!7802651 res!3107559) b!7802650))

(assert (= (and b!7802654 (not res!3107563)) b!7802655))

(assert (= (and b!7802655 res!3107561) b!7802656))

(assert (= (or b!7802651 b!7802655) bm!723639))

(assert (= (or b!7802650 b!7802656) bm!723641))

(assert (= (or b!7802649 bm!723641) bm!723640))

(declare-fun m!8237810 () Bool)

(assert (=> bm!723639 m!8237810))

(declare-fun m!8237812 () Bool)

(assert (=> bm!723640 m!8237812))

(declare-fun m!8237814 () Bool)

(assert (=> b!7802653 m!8237814))

(assert (=> start!741274 d!2347679))

(declare-fun d!2347681 () Bool)

(declare-fun nullableFct!3639 (Regex!20875) Bool)

(assert (=> d!2347681 (= (nullable!9259 r1!6279) (nullableFct!3639 r1!6279))))

(declare-fun bs!1966502 () Bool)

(assert (= bs!1966502 d!2347681))

(declare-fun m!8237816 () Bool)

(assert (=> bs!1966502 m!8237816))

(assert (=> b!7802459 d!2347681))

(declare-fun b!7802667 () Bool)

(declare-fun e!4619032 () Bool)

(assert (=> b!7802667 (= e!4619032 tp_is_empty!52105)))

(declare-fun b!7802669 () Bool)

(declare-fun tp!2298543 () Bool)

(assert (=> b!7802669 (= e!4619032 tp!2298543)))

(declare-fun b!7802670 () Bool)

(declare-fun tp!2298542 () Bool)

(declare-fun tp!2298544 () Bool)

(assert (=> b!7802670 (= e!4619032 (and tp!2298542 tp!2298544))))

(declare-fun b!7802668 () Bool)

(declare-fun tp!2298541 () Bool)

(declare-fun tp!2298540 () Bool)

(assert (=> b!7802668 (= e!4619032 (and tp!2298541 tp!2298540))))

(assert (=> b!7802461 (= tp!2298526 e!4619032)))

(assert (= (and b!7802461 ((_ is ElementMatch!20875) (regOne!42263 r1!6279))) b!7802667))

(assert (= (and b!7802461 ((_ is Concat!29720) (regOne!42263 r1!6279))) b!7802668))

(assert (= (and b!7802461 ((_ is Star!20875) (regOne!42263 r1!6279))) b!7802669))

(assert (= (and b!7802461 ((_ is Union!20875) (regOne!42263 r1!6279))) b!7802670))

(declare-fun b!7802671 () Bool)

(declare-fun e!4619033 () Bool)

(assert (=> b!7802671 (= e!4619033 tp_is_empty!52105)))

(declare-fun b!7802673 () Bool)

(declare-fun tp!2298548 () Bool)

(assert (=> b!7802673 (= e!4619033 tp!2298548)))

(declare-fun b!7802674 () Bool)

(declare-fun tp!2298547 () Bool)

(declare-fun tp!2298549 () Bool)

(assert (=> b!7802674 (= e!4619033 (and tp!2298547 tp!2298549))))

(declare-fun b!7802672 () Bool)

(declare-fun tp!2298546 () Bool)

(declare-fun tp!2298545 () Bool)

(assert (=> b!7802672 (= e!4619033 (and tp!2298546 tp!2298545))))

(assert (=> b!7802461 (= tp!2298523 e!4619033)))

(assert (= (and b!7802461 ((_ is ElementMatch!20875) (regTwo!42263 r1!6279))) b!7802671))

(assert (= (and b!7802461 ((_ is Concat!29720) (regTwo!42263 r1!6279))) b!7802672))

(assert (= (and b!7802461 ((_ is Star!20875) (regTwo!42263 r1!6279))) b!7802673))

(assert (= (and b!7802461 ((_ is Union!20875) (regTwo!42263 r1!6279))) b!7802674))

(declare-fun b!7802675 () Bool)

(declare-fun e!4619034 () Bool)

(assert (=> b!7802675 (= e!4619034 tp_is_empty!52105)))

(declare-fun b!7802677 () Bool)

(declare-fun tp!2298553 () Bool)

(assert (=> b!7802677 (= e!4619034 tp!2298553)))

(declare-fun b!7802678 () Bool)

(declare-fun tp!2298552 () Bool)

(declare-fun tp!2298554 () Bool)

(assert (=> b!7802678 (= e!4619034 (and tp!2298552 tp!2298554))))

(declare-fun b!7802676 () Bool)

(declare-fun tp!2298551 () Bool)

(declare-fun tp!2298550 () Bool)

(assert (=> b!7802676 (= e!4619034 (and tp!2298551 tp!2298550))))

(assert (=> b!7802466 (= tp!2298529 e!4619034)))

(assert (= (and b!7802466 ((_ is ElementMatch!20875) (reg!21204 r1!6279))) b!7802675))

(assert (= (and b!7802466 ((_ is Concat!29720) (reg!21204 r1!6279))) b!7802676))

(assert (= (and b!7802466 ((_ is Star!20875) (reg!21204 r1!6279))) b!7802677))

(assert (= (and b!7802466 ((_ is Union!20875) (reg!21204 r1!6279))) b!7802678))

(declare-fun b!7802679 () Bool)

(declare-fun e!4619035 () Bool)

(assert (=> b!7802679 (= e!4619035 tp_is_empty!52105)))

(declare-fun b!7802681 () Bool)

(declare-fun tp!2298558 () Bool)

(assert (=> b!7802681 (= e!4619035 tp!2298558)))

(declare-fun b!7802682 () Bool)

(declare-fun tp!2298557 () Bool)

(declare-fun tp!2298559 () Bool)

(assert (=> b!7802682 (= e!4619035 (and tp!2298557 tp!2298559))))

(declare-fun b!7802680 () Bool)

(declare-fun tp!2298556 () Bool)

(declare-fun tp!2298555 () Bool)

(assert (=> b!7802680 (= e!4619035 (and tp!2298556 tp!2298555))))

(assert (=> b!7802472 (= tp!2298520 e!4619035)))

(assert (= (and b!7802472 ((_ is ElementMatch!20875) (regOne!42263 r2!6217))) b!7802679))

(assert (= (and b!7802472 ((_ is Concat!29720) (regOne!42263 r2!6217))) b!7802680))

(assert (= (and b!7802472 ((_ is Star!20875) (regOne!42263 r2!6217))) b!7802681))

(assert (= (and b!7802472 ((_ is Union!20875) (regOne!42263 r2!6217))) b!7802682))

(declare-fun b!7802683 () Bool)

(declare-fun e!4619036 () Bool)

(assert (=> b!7802683 (= e!4619036 tp_is_empty!52105)))

(declare-fun b!7802685 () Bool)

(declare-fun tp!2298563 () Bool)

(assert (=> b!7802685 (= e!4619036 tp!2298563)))

(declare-fun b!7802686 () Bool)

(declare-fun tp!2298562 () Bool)

(declare-fun tp!2298564 () Bool)

(assert (=> b!7802686 (= e!4619036 (and tp!2298562 tp!2298564))))

(declare-fun b!7802684 () Bool)

(declare-fun tp!2298561 () Bool)

(declare-fun tp!2298560 () Bool)

(assert (=> b!7802684 (= e!4619036 (and tp!2298561 tp!2298560))))

(assert (=> b!7802472 (= tp!2298519 e!4619036)))

(assert (= (and b!7802472 ((_ is ElementMatch!20875) (regTwo!42263 r2!6217))) b!7802683))

(assert (= (and b!7802472 ((_ is Concat!29720) (regTwo!42263 r2!6217))) b!7802684))

(assert (= (and b!7802472 ((_ is Star!20875) (regTwo!42263 r2!6217))) b!7802685))

(assert (= (and b!7802472 ((_ is Union!20875) (regTwo!42263 r2!6217))) b!7802686))

(declare-fun b!7802687 () Bool)

(declare-fun e!4619037 () Bool)

(assert (=> b!7802687 (= e!4619037 tp_is_empty!52105)))

(declare-fun b!7802689 () Bool)

(declare-fun tp!2298568 () Bool)

(assert (=> b!7802689 (= e!4619037 tp!2298568)))

(declare-fun b!7802690 () Bool)

(declare-fun tp!2298567 () Bool)

(declare-fun tp!2298569 () Bool)

(assert (=> b!7802690 (= e!4619037 (and tp!2298567 tp!2298569))))

(declare-fun b!7802688 () Bool)

(declare-fun tp!2298566 () Bool)

(declare-fun tp!2298565 () Bool)

(assert (=> b!7802688 (= e!4619037 (and tp!2298566 tp!2298565))))

(assert (=> b!7802469 (= tp!2298521 e!4619037)))

(assert (= (and b!7802469 ((_ is ElementMatch!20875) (regOne!42262 r2!6217))) b!7802687))

(assert (= (and b!7802469 ((_ is Concat!29720) (regOne!42262 r2!6217))) b!7802688))

(assert (= (and b!7802469 ((_ is Star!20875) (regOne!42262 r2!6217))) b!7802689))

(assert (= (and b!7802469 ((_ is Union!20875) (regOne!42262 r2!6217))) b!7802690))

(declare-fun b!7802691 () Bool)

(declare-fun e!4619038 () Bool)

(assert (=> b!7802691 (= e!4619038 tp_is_empty!52105)))

(declare-fun b!7802693 () Bool)

(declare-fun tp!2298573 () Bool)

(assert (=> b!7802693 (= e!4619038 tp!2298573)))

(declare-fun b!7802694 () Bool)

(declare-fun tp!2298572 () Bool)

(declare-fun tp!2298574 () Bool)

(assert (=> b!7802694 (= e!4619038 (and tp!2298572 tp!2298574))))

(declare-fun b!7802692 () Bool)

(declare-fun tp!2298571 () Bool)

(declare-fun tp!2298570 () Bool)

(assert (=> b!7802692 (= e!4619038 (and tp!2298571 tp!2298570))))

(assert (=> b!7802469 (= tp!2298524 e!4619038)))

(assert (= (and b!7802469 ((_ is ElementMatch!20875) (regTwo!42262 r2!6217))) b!7802691))

(assert (= (and b!7802469 ((_ is Concat!29720) (regTwo!42262 r2!6217))) b!7802692))

(assert (= (and b!7802469 ((_ is Star!20875) (regTwo!42262 r2!6217))) b!7802693))

(assert (= (and b!7802469 ((_ is Union!20875) (regTwo!42262 r2!6217))) b!7802694))

(declare-fun b!7802695 () Bool)

(declare-fun e!4619043 () Bool)

(assert (=> b!7802695 (= e!4619043 tp_is_empty!52105)))

(declare-fun b!7802697 () Bool)

(declare-fun tp!2298578 () Bool)

(assert (=> b!7802697 (= e!4619043 tp!2298578)))

(declare-fun b!7802698 () Bool)

(declare-fun tp!2298577 () Bool)

(declare-fun tp!2298579 () Bool)

(assert (=> b!7802698 (= e!4619043 (and tp!2298577 tp!2298579))))

(declare-fun b!7802696 () Bool)

(declare-fun tp!2298576 () Bool)

(declare-fun tp!2298575 () Bool)

(assert (=> b!7802696 (= e!4619043 (and tp!2298576 tp!2298575))))

(assert (=> b!7802463 (= tp!2298528 e!4619043)))

(assert (= (and b!7802463 ((_ is ElementMatch!20875) (reg!21204 r2!6217))) b!7802695))

(assert (= (and b!7802463 ((_ is Concat!29720) (reg!21204 r2!6217))) b!7802696))

(assert (= (and b!7802463 ((_ is Star!20875) (reg!21204 r2!6217))) b!7802697))

(assert (= (and b!7802463 ((_ is Union!20875) (reg!21204 r2!6217))) b!7802698))

(declare-fun b!7802717 () Bool)

(declare-fun e!4619049 () Bool)

(declare-fun tp!2298582 () Bool)

(assert (=> b!7802717 (= e!4619049 (and tp_is_empty!52105 tp!2298582))))

(assert (=> b!7802468 (= tp!2298527 e!4619049)))

(assert (= (and b!7802468 ((_ is Cons!73590) (t!388449 s!14292))) b!7802717))

(declare-fun b!7802718 () Bool)

(declare-fun e!4619050 () Bool)

(assert (=> b!7802718 (= e!4619050 tp_is_empty!52105)))

(declare-fun b!7802720 () Bool)

(declare-fun tp!2298586 () Bool)

(assert (=> b!7802720 (= e!4619050 tp!2298586)))

(declare-fun b!7802721 () Bool)

(declare-fun tp!2298585 () Bool)

(declare-fun tp!2298587 () Bool)

(assert (=> b!7802721 (= e!4619050 (and tp!2298585 tp!2298587))))

(declare-fun b!7802719 () Bool)

(declare-fun tp!2298584 () Bool)

(declare-fun tp!2298583 () Bool)

(assert (=> b!7802719 (= e!4619050 (and tp!2298584 tp!2298583))))

(assert (=> b!7802464 (= tp!2298525 e!4619050)))

(assert (= (and b!7802464 ((_ is ElementMatch!20875) (regOne!42262 r1!6279))) b!7802718))

(assert (= (and b!7802464 ((_ is Concat!29720) (regOne!42262 r1!6279))) b!7802719))

(assert (= (and b!7802464 ((_ is Star!20875) (regOne!42262 r1!6279))) b!7802720))

(assert (= (and b!7802464 ((_ is Union!20875) (regOne!42262 r1!6279))) b!7802721))

(declare-fun b!7802722 () Bool)

(declare-fun e!4619051 () Bool)

(assert (=> b!7802722 (= e!4619051 tp_is_empty!52105)))

(declare-fun b!7802724 () Bool)

(declare-fun tp!2298591 () Bool)

(assert (=> b!7802724 (= e!4619051 tp!2298591)))

(declare-fun b!7802725 () Bool)

(declare-fun tp!2298590 () Bool)

(declare-fun tp!2298592 () Bool)

(assert (=> b!7802725 (= e!4619051 (and tp!2298590 tp!2298592))))

(declare-fun b!7802723 () Bool)

(declare-fun tp!2298589 () Bool)

(declare-fun tp!2298588 () Bool)

(assert (=> b!7802723 (= e!4619051 (and tp!2298589 tp!2298588))))

(assert (=> b!7802464 (= tp!2298522 e!4619051)))

(assert (= (and b!7802464 ((_ is ElementMatch!20875) (regTwo!42262 r1!6279))) b!7802722))

(assert (= (and b!7802464 ((_ is Concat!29720) (regTwo!42262 r1!6279))) b!7802723))

(assert (= (and b!7802464 ((_ is Star!20875) (regTwo!42262 r1!6279))) b!7802724))

(assert (= (and b!7802464 ((_ is Union!20875) (regTwo!42262 r1!6279))) b!7802725))

(check-sat (not bm!723637) (not b!7802694) (not bm!723606) (not d!2347681) (not b!7802688) (not b!7802717) (not b!7802689) (not bm!723640) (not b!7802697) (not b!7802514) (not b!7802504) (not b!7802632) (not b!7802630) (not d!2347665) (not bm!723628) (not b!7802676) (not b!7802685) (not b!7802681) (not b!7802613) (not bm!723618) (not b!7802512) (not b!7802690) (not b!7802680) (not bm!723633) (not b!7802505) (not b!7802678) (not b!7802513) (not b!7802684) (not b!7802670) (not b!7802682) (not b!7802507) (not b!7802625) (not b!7802719) (not d!2347677) (not b!7802693) (not b!7802668) (not b!7802686) (not b!7802724) (not b!7802606) (not b!7802696) (not bm!723630) (not b!7802622) (not b!7802567) (not b!7802653) (not bm!723636) (not bm!723627) (not b!7802597) (not b!7802631) (not bm!723615) (not b!7802673) (not b!7802669) (not b!7802692) tp_is_empty!52105 (not b!7802723) (not b!7802623) (not d!2347669) (not b!7802674) (not bm!723639) (not b!7802721) (not b!7802672) (not b!7802698) (not d!2347675) (not bm!723631) (not b!7802677) (not b!7802720) (not b!7802725))
(check-sat)
