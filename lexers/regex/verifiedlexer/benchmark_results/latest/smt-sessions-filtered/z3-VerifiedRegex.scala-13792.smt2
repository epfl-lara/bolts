; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734776 () Bool)

(assert start!734776)

(declare-fun b!7630433 () Bool)

(assert (=> b!7630433 true))

(assert (=> b!7630433 true))

(declare-fun res!3055764 () Bool)

(declare-fun e!4536434 () Bool)

(assert (=> start!734776 (=> (not res!3055764) (not e!4536434))))

(declare-datatypes ((C!41084 0))(
  ( (C!41085 (val!30982 Int)) )
))
(declare-datatypes ((Regex!20379 0))(
  ( (ElementMatch!20379 (c!1405812 C!41084)) (Concat!29224 (regOne!41270 Regex!20379) (regTwo!41270 Regex!20379)) (EmptyExpr!20379) (Star!20379 (reg!20708 Regex!20379)) (EmptyLang!20379) (Union!20379 (regOne!41271 Regex!20379) (regTwo!41271 Regex!20379)) )
))
(declare-fun r!14126 () Regex!20379)

(declare-fun validRegex!10797 (Regex!20379) Bool)

(assert (=> start!734776 (= res!3055764 (validRegex!10797 r!14126))))

(assert (=> start!734776 e!4536434))

(declare-fun e!4536435 () Bool)

(assert (=> start!734776 e!4536435))

(declare-fun e!4536432 () Bool)

(assert (=> start!734776 e!4536432))

(declare-fun b!7630432 () Bool)

(declare-fun tp_is_empty!51113 () Bool)

(declare-fun tp!2227685 () Bool)

(assert (=> b!7630432 (= e!4536432 (and tp_is_empty!51113 tp!2227685))))

(declare-fun e!4536433 () Bool)

(assert (=> b!7630433 (= e!4536434 (not e!4536433))))

(declare-fun res!3055766 () Bool)

(assert (=> b!7630433 (=> res!3055766 e!4536433)))

(declare-datatypes ((List!73230 0))(
  ( (Nil!73106) (Cons!73106 (h!79554 C!41084) (t!387965 List!73230)) )
))
(declare-fun s!9605 () List!73230)

(declare-fun matchR!9882 (Regex!20379 List!73230) Bool)

(assert (=> b!7630433 (= res!3055766 (matchR!9882 r!14126 s!9605))))

(declare-fun lambda!469075 () Int)

(declare-datatypes ((tuple2!69316 0))(
  ( (tuple2!69317 (_1!37961 List!73230) (_2!37961 List!73230)) )
))
(declare-datatypes ((Option!17452 0))(
  ( (None!17451) (Some!17451 (v!54586 tuple2!69316)) )
))
(declare-fun isDefined!14068 (Option!17452) Bool)

(declare-fun findConcatSeparation!3482 (Regex!20379 Regex!20379 List!73230 List!73230 List!73230) Option!17452)

(declare-fun Exists!4533 (Int) Bool)

(assert (=> b!7630433 (= (isDefined!14068 (findConcatSeparation!3482 (regOne!41270 r!14126) (regTwo!41270 r!14126) Nil!73106 s!9605 s!9605)) (Exists!4533 lambda!469075))))

(declare-datatypes ((Unit!167686 0))(
  ( (Unit!167687) )
))
(declare-fun lt!2658698 () Unit!167686)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3240 (Regex!20379 Regex!20379 List!73230) Unit!167686)

(assert (=> b!7630433 (= lt!2658698 (lemmaFindConcatSeparationEquivalentToExists!3240 (regOne!41270 r!14126) (regTwo!41270 r!14126) s!9605))))

(declare-fun b!7630434 () Bool)

(declare-fun tp!2227680 () Bool)

(assert (=> b!7630434 (= e!4536435 tp!2227680)))

(declare-fun b!7630435 () Bool)

(declare-fun tp!2227682 () Bool)

(declare-fun tp!2227684 () Bool)

(assert (=> b!7630435 (= e!4536435 (and tp!2227682 tp!2227684))))

(declare-fun b!7630436 () Bool)

(assert (=> b!7630436 (= e!4536433 (validRegex!10797 (regOne!41270 r!14126)))))

(declare-fun b!7630437 () Bool)

(declare-fun tp!2227683 () Bool)

(declare-fun tp!2227681 () Bool)

(assert (=> b!7630437 (= e!4536435 (and tp!2227683 tp!2227681))))

(declare-fun b!7630438 () Bool)

(declare-fun res!3055765 () Bool)

(assert (=> b!7630438 (=> (not res!3055765) (not e!4536434))))

(get-info :version)

(assert (=> b!7630438 (= res!3055765 (and (not ((_ is EmptyExpr!20379) r!14126)) (not ((_ is EmptyLang!20379) r!14126)) (not ((_ is ElementMatch!20379) r!14126)) (not ((_ is Union!20379) r!14126)) (not ((_ is Star!20379) r!14126))))))

(declare-fun b!7630439 () Bool)

(assert (=> b!7630439 (= e!4536435 tp_is_empty!51113)))

(assert (= (and start!734776 res!3055764) b!7630438))

(assert (= (and b!7630438 res!3055765) b!7630433))

(assert (= (and b!7630433 (not res!3055766)) b!7630436))

(assert (= (and start!734776 ((_ is ElementMatch!20379) r!14126)) b!7630439))

(assert (= (and start!734776 ((_ is Concat!29224) r!14126)) b!7630435))

(assert (= (and start!734776 ((_ is Star!20379) r!14126)) b!7630434))

(assert (= (and start!734776 ((_ is Union!20379) r!14126)) b!7630437))

(assert (= (and start!734776 ((_ is Cons!73106) s!9605)) b!7630432))

(declare-fun m!8157760 () Bool)

(assert (=> start!734776 m!8157760))

(declare-fun m!8157762 () Bool)

(assert (=> b!7630433 m!8157762))

(declare-fun m!8157764 () Bool)

(assert (=> b!7630433 m!8157764))

(declare-fun m!8157766 () Bool)

(assert (=> b!7630433 m!8157766))

(declare-fun m!8157768 () Bool)

(assert (=> b!7630433 m!8157768))

(assert (=> b!7630433 m!8157764))

(declare-fun m!8157770 () Bool)

(assert (=> b!7630433 m!8157770))

(declare-fun m!8157772 () Bool)

(assert (=> b!7630436 m!8157772))

(check-sat tp_is_empty!51113 (not b!7630432) (not b!7630433) (not b!7630434) (not b!7630435) (not start!734776) (not b!7630437) (not b!7630436))
(check-sat)
(get-model)

(declare-fun b!7630504 () Bool)

(declare-fun e!4536474 () Bool)

(declare-fun e!4536471 () Bool)

(assert (=> b!7630504 (= e!4536474 e!4536471)))

(declare-fun res!3055803 () Bool)

(assert (=> b!7630504 (=> (not res!3055803) (not e!4536471))))

(declare-fun call!700510 () Bool)

(assert (=> b!7630504 (= res!3055803 call!700510)))

(declare-fun c!1405826 () Bool)

(declare-fun c!1405827 () Bool)

(declare-fun call!700509 () Bool)

(declare-fun bm!700503 () Bool)

(assert (=> bm!700503 (= call!700509 (validRegex!10797 (ite c!1405827 (reg!20708 r!14126) (ite c!1405826 (regTwo!41271 r!14126) (regTwo!41270 r!14126)))))))

(declare-fun bm!700504 () Bool)

(declare-fun call!700508 () Bool)

(assert (=> bm!700504 (= call!700508 call!700509)))

(declare-fun b!7630505 () Bool)

(declare-fun e!4536477 () Bool)

(assert (=> b!7630505 (= e!4536477 call!700508)))

(declare-fun b!7630506 () Bool)

(declare-fun e!4536476 () Bool)

(assert (=> b!7630506 (= e!4536476 call!700509)))

(declare-fun b!7630507 () Bool)

(declare-fun res!3055804 () Bool)

(assert (=> b!7630507 (=> (not res!3055804) (not e!4536477))))

(assert (=> b!7630507 (= res!3055804 call!700510)))

(declare-fun e!4536472 () Bool)

(assert (=> b!7630507 (= e!4536472 e!4536477)))

(declare-fun b!7630508 () Bool)

(declare-fun e!4536475 () Bool)

(assert (=> b!7630508 (= e!4536475 e!4536476)))

(declare-fun res!3055805 () Bool)

(declare-fun nullable!8910 (Regex!20379) Bool)

(assert (=> b!7630508 (= res!3055805 (not (nullable!8910 (reg!20708 r!14126))))))

(assert (=> b!7630508 (=> (not res!3055805) (not e!4536476))))

(declare-fun b!7630509 () Bool)

(assert (=> b!7630509 (= e!4536471 call!700508)))

(declare-fun d!2324123 () Bool)

(declare-fun res!3055801 () Bool)

(declare-fun e!4536473 () Bool)

(assert (=> d!2324123 (=> res!3055801 e!4536473)))

(assert (=> d!2324123 (= res!3055801 ((_ is ElementMatch!20379) r!14126))))

(assert (=> d!2324123 (= (validRegex!10797 r!14126) e!4536473)))

(declare-fun bm!700505 () Bool)

(assert (=> bm!700505 (= call!700510 (validRegex!10797 (ite c!1405826 (regOne!41271 r!14126) (regOne!41270 r!14126))))))

(declare-fun b!7630510 () Bool)

(assert (=> b!7630510 (= e!4536475 e!4536472)))

(assert (=> b!7630510 (= c!1405826 ((_ is Union!20379) r!14126))))

(declare-fun b!7630511 () Bool)

(declare-fun res!3055802 () Bool)

(assert (=> b!7630511 (=> res!3055802 e!4536474)))

(assert (=> b!7630511 (= res!3055802 (not ((_ is Concat!29224) r!14126)))))

(assert (=> b!7630511 (= e!4536472 e!4536474)))

(declare-fun b!7630512 () Bool)

(assert (=> b!7630512 (= e!4536473 e!4536475)))

(assert (=> b!7630512 (= c!1405827 ((_ is Star!20379) r!14126))))

(assert (= (and d!2324123 (not res!3055801)) b!7630512))

(assert (= (and b!7630512 c!1405827) b!7630508))

(assert (= (and b!7630512 (not c!1405827)) b!7630510))

(assert (= (and b!7630508 res!3055805) b!7630506))

(assert (= (and b!7630510 c!1405826) b!7630507))

(assert (= (and b!7630510 (not c!1405826)) b!7630511))

(assert (= (and b!7630507 res!3055804) b!7630505))

(assert (= (and b!7630511 (not res!3055802)) b!7630504))

(assert (= (and b!7630504 res!3055803) b!7630509))

(assert (= (or b!7630507 b!7630504) bm!700505))

(assert (= (or b!7630505 b!7630509) bm!700504))

(assert (= (or b!7630506 bm!700504) bm!700503))

(declare-fun m!8157788 () Bool)

(assert (=> bm!700503 m!8157788))

(declare-fun m!8157790 () Bool)

(assert (=> b!7630508 m!8157790))

(declare-fun m!8157792 () Bool)

(assert (=> bm!700505 m!8157792))

(assert (=> start!734776 d!2324123))

(declare-fun b!7630545 () Bool)

(declare-fun e!4536496 () Bool)

(declare-fun e!4536498 () Bool)

(assert (=> b!7630545 (= e!4536496 e!4536498)))

(declare-fun res!3055826 () Bool)

(assert (=> b!7630545 (=> res!3055826 e!4536498)))

(declare-fun call!700513 () Bool)

(assert (=> b!7630545 (= res!3055826 call!700513)))

(declare-fun bm!700508 () Bool)

(declare-fun isEmpty!41735 (List!73230) Bool)

(assert (=> bm!700508 (= call!700513 (isEmpty!41735 s!9605))))

(declare-fun b!7630546 () Bool)

(declare-fun head!15683 (List!73230) C!41084)

(assert (=> b!7630546 (= e!4536498 (not (= (head!15683 s!9605) (c!1405812 r!14126))))))

(declare-fun b!7630547 () Bool)

(declare-fun e!4536500 () Bool)

(declare-fun lt!2658707 () Bool)

(assert (=> b!7630547 (= e!4536500 (= lt!2658707 call!700513))))

(declare-fun b!7630548 () Bool)

(declare-fun e!4536495 () Bool)

(assert (=> b!7630548 (= e!4536500 e!4536495)))

(declare-fun c!1405835 () Bool)

(assert (=> b!7630548 (= c!1405835 ((_ is EmptyLang!20379) r!14126))))

(declare-fun b!7630549 () Bool)

(declare-fun res!3055831 () Bool)

(assert (=> b!7630549 (=> res!3055831 e!4536498)))

(declare-fun tail!15223 (List!73230) List!73230)

(assert (=> b!7630549 (= res!3055831 (not (isEmpty!41735 (tail!15223 s!9605))))))

(declare-fun b!7630550 () Bool)

(declare-fun res!3055827 () Bool)

(declare-fun e!4536494 () Bool)

(assert (=> b!7630550 (=> (not res!3055827) (not e!4536494))))

(assert (=> b!7630550 (= res!3055827 (not call!700513))))

(declare-fun b!7630551 () Bool)

(declare-fun res!3055830 () Bool)

(assert (=> b!7630551 (=> (not res!3055830) (not e!4536494))))

(assert (=> b!7630551 (= res!3055830 (isEmpty!41735 (tail!15223 s!9605)))))

(declare-fun b!7630552 () Bool)

(assert (=> b!7630552 (= e!4536494 (= (head!15683 s!9605) (c!1405812 r!14126)))))

(declare-fun b!7630553 () Bool)

(declare-fun res!3055829 () Bool)

(declare-fun e!4536499 () Bool)

(assert (=> b!7630553 (=> res!3055829 e!4536499)))

(assert (=> b!7630553 (= res!3055829 e!4536494)))

(declare-fun res!3055833 () Bool)

(assert (=> b!7630553 (=> (not res!3055833) (not e!4536494))))

(assert (=> b!7630553 (= res!3055833 lt!2658707)))

(declare-fun b!7630554 () Bool)

(assert (=> b!7630554 (= e!4536495 (not lt!2658707))))

(declare-fun d!2324127 () Bool)

(assert (=> d!2324127 e!4536500))

(declare-fun c!1405834 () Bool)

(assert (=> d!2324127 (= c!1405834 ((_ is EmptyExpr!20379) r!14126))))

(declare-fun e!4536497 () Bool)

(assert (=> d!2324127 (= lt!2658707 e!4536497)))

(declare-fun c!1405836 () Bool)

(assert (=> d!2324127 (= c!1405836 (isEmpty!41735 s!9605))))

(assert (=> d!2324127 (validRegex!10797 r!14126)))

(assert (=> d!2324127 (= (matchR!9882 r!14126 s!9605) lt!2658707)))

(declare-fun b!7630555 () Bool)

(declare-fun derivativeStep!5883 (Regex!20379 C!41084) Regex!20379)

(assert (=> b!7630555 (= e!4536497 (matchR!9882 (derivativeStep!5883 r!14126 (head!15683 s!9605)) (tail!15223 s!9605)))))

(declare-fun b!7630556 () Bool)

(declare-fun res!3055828 () Bool)

(assert (=> b!7630556 (=> res!3055828 e!4536499)))

(assert (=> b!7630556 (= res!3055828 (not ((_ is ElementMatch!20379) r!14126)))))

(assert (=> b!7630556 (= e!4536495 e!4536499)))

(declare-fun b!7630557 () Bool)

(assert (=> b!7630557 (= e!4536497 (nullable!8910 r!14126))))

(declare-fun b!7630558 () Bool)

(assert (=> b!7630558 (= e!4536499 e!4536496)))

(declare-fun res!3055832 () Bool)

(assert (=> b!7630558 (=> (not res!3055832) (not e!4536496))))

(assert (=> b!7630558 (= res!3055832 (not lt!2658707))))

(assert (= (and d!2324127 c!1405836) b!7630557))

(assert (= (and d!2324127 (not c!1405836)) b!7630555))

(assert (= (and d!2324127 c!1405834) b!7630547))

(assert (= (and d!2324127 (not c!1405834)) b!7630548))

(assert (= (and b!7630548 c!1405835) b!7630554))

(assert (= (and b!7630548 (not c!1405835)) b!7630556))

(assert (= (and b!7630556 (not res!3055828)) b!7630553))

(assert (= (and b!7630553 res!3055833) b!7630550))

(assert (= (and b!7630550 res!3055827) b!7630551))

(assert (= (and b!7630551 res!3055830) b!7630552))

(assert (= (and b!7630553 (not res!3055829)) b!7630558))

(assert (= (and b!7630558 res!3055832) b!7630545))

(assert (= (and b!7630545 (not res!3055826)) b!7630549))

(assert (= (and b!7630549 (not res!3055831)) b!7630546))

(assert (= (or b!7630547 b!7630545 b!7630550) bm!700508))

(declare-fun m!8157800 () Bool)

(assert (=> bm!700508 m!8157800))

(declare-fun m!8157802 () Bool)

(assert (=> b!7630546 m!8157802))

(declare-fun m!8157804 () Bool)

(assert (=> b!7630551 m!8157804))

(assert (=> b!7630551 m!8157804))

(declare-fun m!8157806 () Bool)

(assert (=> b!7630551 m!8157806))

(assert (=> b!7630552 m!8157802))

(assert (=> b!7630549 m!8157804))

(assert (=> b!7630549 m!8157804))

(assert (=> b!7630549 m!8157806))

(assert (=> b!7630555 m!8157802))

(assert (=> b!7630555 m!8157802))

(declare-fun m!8157808 () Bool)

(assert (=> b!7630555 m!8157808))

(assert (=> b!7630555 m!8157804))

(assert (=> b!7630555 m!8157808))

(assert (=> b!7630555 m!8157804))

(declare-fun m!8157810 () Bool)

(assert (=> b!7630555 m!8157810))

(assert (=> d!2324127 m!8157800))

(assert (=> d!2324127 m!8157760))

(declare-fun m!8157812 () Bool)

(assert (=> b!7630557 m!8157812))

(assert (=> b!7630433 d!2324127))

(declare-fun d!2324133 () Bool)

(declare-fun choose!58905 (Int) Bool)

(assert (=> d!2324133 (= (Exists!4533 lambda!469075) (choose!58905 lambda!469075))))

(declare-fun bs!1944024 () Bool)

(assert (= bs!1944024 d!2324133))

(declare-fun m!8157814 () Bool)

(assert (=> bs!1944024 m!8157814))

(assert (=> b!7630433 d!2324133))

(declare-fun bs!1944025 () Bool)

(declare-fun d!2324135 () Bool)

(assert (= bs!1944025 (and d!2324135 b!7630433)))

(declare-fun lambda!469081 () Int)

(assert (=> bs!1944025 (= lambda!469081 lambda!469075)))

(assert (=> d!2324135 true))

(assert (=> d!2324135 true))

(assert (=> d!2324135 true))

(assert (=> d!2324135 (= (isDefined!14068 (findConcatSeparation!3482 (regOne!41270 r!14126) (regTwo!41270 r!14126) Nil!73106 s!9605 s!9605)) (Exists!4533 lambda!469081))))

(declare-fun lt!2658716 () Unit!167686)

(declare-fun choose!58906 (Regex!20379 Regex!20379 List!73230) Unit!167686)

(assert (=> d!2324135 (= lt!2658716 (choose!58906 (regOne!41270 r!14126) (regTwo!41270 r!14126) s!9605))))

(assert (=> d!2324135 (validRegex!10797 (regOne!41270 r!14126))))

(assert (=> d!2324135 (= (lemmaFindConcatSeparationEquivalentToExists!3240 (regOne!41270 r!14126) (regTwo!41270 r!14126) s!9605) lt!2658716)))

(declare-fun bs!1944026 () Bool)

(assert (= bs!1944026 d!2324135))

(declare-fun m!8157816 () Bool)

(assert (=> bs!1944026 m!8157816))

(assert (=> bs!1944026 m!8157764))

(declare-fun m!8157818 () Bool)

(assert (=> bs!1944026 m!8157818))

(assert (=> bs!1944026 m!8157764))

(assert (=> bs!1944026 m!8157770))

(assert (=> bs!1944026 m!8157772))

(assert (=> b!7630433 d!2324135))

(declare-fun d!2324137 () Bool)

(declare-fun isEmpty!41736 (Option!17452) Bool)

(assert (=> d!2324137 (= (isDefined!14068 (findConcatSeparation!3482 (regOne!41270 r!14126) (regTwo!41270 r!14126) Nil!73106 s!9605 s!9605)) (not (isEmpty!41736 (findConcatSeparation!3482 (regOne!41270 r!14126) (regTwo!41270 r!14126) Nil!73106 s!9605 s!9605))))))

(declare-fun bs!1944027 () Bool)

(assert (= bs!1944027 d!2324137))

(assert (=> bs!1944027 m!8157764))

(declare-fun m!8157820 () Bool)

(assert (=> bs!1944027 m!8157820))

(assert (=> b!7630433 d!2324137))

(declare-fun b!7630679 () Bool)

(declare-fun e!4536567 () Option!17452)

(declare-fun e!4536569 () Option!17452)

(assert (=> b!7630679 (= e!4536567 e!4536569)))

(declare-fun c!1405856 () Bool)

(assert (=> b!7630679 (= c!1405856 ((_ is Nil!73106) s!9605))))

(declare-fun b!7630680 () Bool)

(assert (=> b!7630680 (= e!4536567 (Some!17451 (tuple2!69317 Nil!73106 s!9605)))))

(declare-fun b!7630681 () Bool)

(declare-fun e!4536566 () Bool)

(declare-fun lt!2658728 () Option!17452)

(declare-fun ++!17661 (List!73230 List!73230) List!73230)

(declare-fun get!25836 (Option!17452) tuple2!69316)

(assert (=> b!7630681 (= e!4536566 (= (++!17661 (_1!37961 (get!25836 lt!2658728)) (_2!37961 (get!25836 lt!2658728))) s!9605))))

(declare-fun d!2324139 () Bool)

(declare-fun e!4536570 () Bool)

(assert (=> d!2324139 e!4536570))

(declare-fun res!3055885 () Bool)

(assert (=> d!2324139 (=> res!3055885 e!4536570)))

(assert (=> d!2324139 (= res!3055885 e!4536566)))

(declare-fun res!3055883 () Bool)

(assert (=> d!2324139 (=> (not res!3055883) (not e!4536566))))

(assert (=> d!2324139 (= res!3055883 (isDefined!14068 lt!2658728))))

(assert (=> d!2324139 (= lt!2658728 e!4536567)))

(declare-fun c!1405855 () Bool)

(declare-fun e!4536568 () Bool)

(assert (=> d!2324139 (= c!1405855 e!4536568)))

(declare-fun res!3055886 () Bool)

(assert (=> d!2324139 (=> (not res!3055886) (not e!4536568))))

(assert (=> d!2324139 (= res!3055886 (matchR!9882 (regOne!41270 r!14126) Nil!73106))))

(assert (=> d!2324139 (validRegex!10797 (regOne!41270 r!14126))))

(assert (=> d!2324139 (= (findConcatSeparation!3482 (regOne!41270 r!14126) (regTwo!41270 r!14126) Nil!73106 s!9605 s!9605) lt!2658728)))

(declare-fun b!7630682 () Bool)

(assert (=> b!7630682 (= e!4536570 (not (isDefined!14068 lt!2658728)))))

(declare-fun b!7630683 () Bool)

(declare-fun res!3055887 () Bool)

(assert (=> b!7630683 (=> (not res!3055887) (not e!4536566))))

(assert (=> b!7630683 (= res!3055887 (matchR!9882 (regTwo!41270 r!14126) (_2!37961 (get!25836 lt!2658728))))))

(declare-fun b!7630684 () Bool)

(declare-fun res!3055884 () Bool)

(assert (=> b!7630684 (=> (not res!3055884) (not e!4536566))))

(assert (=> b!7630684 (= res!3055884 (matchR!9882 (regOne!41270 r!14126) (_1!37961 (get!25836 lt!2658728))))))

(declare-fun b!7630685 () Bool)

(assert (=> b!7630685 (= e!4536569 None!17451)))

(declare-fun b!7630686 () Bool)

(declare-fun lt!2658727 () Unit!167686)

(declare-fun lt!2658726 () Unit!167686)

(assert (=> b!7630686 (= lt!2658727 lt!2658726)))

(assert (=> b!7630686 (= (++!17661 (++!17661 Nil!73106 (Cons!73106 (h!79554 s!9605) Nil!73106)) (t!387965 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3239 (List!73230 C!41084 List!73230 List!73230) Unit!167686)

(assert (=> b!7630686 (= lt!2658726 (lemmaMoveElementToOtherListKeepsConcatEq!3239 Nil!73106 (h!79554 s!9605) (t!387965 s!9605) s!9605))))

(assert (=> b!7630686 (= e!4536569 (findConcatSeparation!3482 (regOne!41270 r!14126) (regTwo!41270 r!14126) (++!17661 Nil!73106 (Cons!73106 (h!79554 s!9605) Nil!73106)) (t!387965 s!9605) s!9605))))

(declare-fun b!7630687 () Bool)

(assert (=> b!7630687 (= e!4536568 (matchR!9882 (regTwo!41270 r!14126) s!9605))))

(assert (= (and d!2324139 res!3055886) b!7630687))

(assert (= (and d!2324139 c!1405855) b!7630680))

(assert (= (and d!2324139 (not c!1405855)) b!7630679))

(assert (= (and b!7630679 c!1405856) b!7630685))

(assert (= (and b!7630679 (not c!1405856)) b!7630686))

(assert (= (and d!2324139 res!3055883) b!7630684))

(assert (= (and b!7630684 res!3055884) b!7630683))

(assert (= (and b!7630683 res!3055887) b!7630681))

(assert (= (and d!2324139 (not res!3055885)) b!7630682))

(declare-fun m!8157858 () Bool)

(assert (=> b!7630686 m!8157858))

(assert (=> b!7630686 m!8157858))

(declare-fun m!8157860 () Bool)

(assert (=> b!7630686 m!8157860))

(declare-fun m!8157862 () Bool)

(assert (=> b!7630686 m!8157862))

(assert (=> b!7630686 m!8157858))

(declare-fun m!8157864 () Bool)

(assert (=> b!7630686 m!8157864))

(declare-fun m!8157866 () Bool)

(assert (=> b!7630684 m!8157866))

(declare-fun m!8157868 () Bool)

(assert (=> b!7630684 m!8157868))

(declare-fun m!8157870 () Bool)

(assert (=> d!2324139 m!8157870))

(declare-fun m!8157872 () Bool)

(assert (=> d!2324139 m!8157872))

(assert (=> d!2324139 m!8157772))

(assert (=> b!7630682 m!8157870))

(assert (=> b!7630681 m!8157866))

(declare-fun m!8157874 () Bool)

(assert (=> b!7630681 m!8157874))

(declare-fun m!8157876 () Bool)

(assert (=> b!7630687 m!8157876))

(assert (=> b!7630683 m!8157866))

(declare-fun m!8157878 () Bool)

(assert (=> b!7630683 m!8157878))

(assert (=> b!7630433 d!2324139))

(declare-fun b!7630688 () Bool)

(declare-fun e!4536574 () Bool)

(declare-fun e!4536571 () Bool)

(assert (=> b!7630688 (= e!4536574 e!4536571)))

(declare-fun res!3055890 () Bool)

(assert (=> b!7630688 (=> (not res!3055890) (not e!4536571))))

(declare-fun call!700528 () Bool)

(assert (=> b!7630688 (= res!3055890 call!700528)))

(declare-fun c!1405857 () Bool)

(declare-fun call!700527 () Bool)

(declare-fun c!1405858 () Bool)

(declare-fun bm!700521 () Bool)

(assert (=> bm!700521 (= call!700527 (validRegex!10797 (ite c!1405858 (reg!20708 (regOne!41270 r!14126)) (ite c!1405857 (regTwo!41271 (regOne!41270 r!14126)) (regTwo!41270 (regOne!41270 r!14126))))))))

(declare-fun bm!700522 () Bool)

(declare-fun call!700526 () Bool)

(assert (=> bm!700522 (= call!700526 call!700527)))

(declare-fun b!7630689 () Bool)

(declare-fun e!4536577 () Bool)

(assert (=> b!7630689 (= e!4536577 call!700526)))

(declare-fun b!7630690 () Bool)

(declare-fun e!4536576 () Bool)

(assert (=> b!7630690 (= e!4536576 call!700527)))

(declare-fun b!7630691 () Bool)

(declare-fun res!3055891 () Bool)

(assert (=> b!7630691 (=> (not res!3055891) (not e!4536577))))

(assert (=> b!7630691 (= res!3055891 call!700528)))

(declare-fun e!4536572 () Bool)

(assert (=> b!7630691 (= e!4536572 e!4536577)))

(declare-fun b!7630692 () Bool)

(declare-fun e!4536575 () Bool)

(assert (=> b!7630692 (= e!4536575 e!4536576)))

(declare-fun res!3055892 () Bool)

(assert (=> b!7630692 (= res!3055892 (not (nullable!8910 (reg!20708 (regOne!41270 r!14126)))))))

(assert (=> b!7630692 (=> (not res!3055892) (not e!4536576))))

(declare-fun b!7630693 () Bool)

(assert (=> b!7630693 (= e!4536571 call!700526)))

(declare-fun d!2324147 () Bool)

(declare-fun res!3055888 () Bool)

(declare-fun e!4536573 () Bool)

(assert (=> d!2324147 (=> res!3055888 e!4536573)))

(assert (=> d!2324147 (= res!3055888 ((_ is ElementMatch!20379) (regOne!41270 r!14126)))))

(assert (=> d!2324147 (= (validRegex!10797 (regOne!41270 r!14126)) e!4536573)))

(declare-fun bm!700523 () Bool)

(assert (=> bm!700523 (= call!700528 (validRegex!10797 (ite c!1405857 (regOne!41271 (regOne!41270 r!14126)) (regOne!41270 (regOne!41270 r!14126)))))))

(declare-fun b!7630694 () Bool)

(assert (=> b!7630694 (= e!4536575 e!4536572)))

(assert (=> b!7630694 (= c!1405857 ((_ is Union!20379) (regOne!41270 r!14126)))))

(declare-fun b!7630695 () Bool)

(declare-fun res!3055889 () Bool)

(assert (=> b!7630695 (=> res!3055889 e!4536574)))

(assert (=> b!7630695 (= res!3055889 (not ((_ is Concat!29224) (regOne!41270 r!14126))))))

(assert (=> b!7630695 (= e!4536572 e!4536574)))

(declare-fun b!7630696 () Bool)

(assert (=> b!7630696 (= e!4536573 e!4536575)))

(assert (=> b!7630696 (= c!1405858 ((_ is Star!20379) (regOne!41270 r!14126)))))

(assert (= (and d!2324147 (not res!3055888)) b!7630696))

(assert (= (and b!7630696 c!1405858) b!7630692))

(assert (= (and b!7630696 (not c!1405858)) b!7630694))

(assert (= (and b!7630692 res!3055892) b!7630690))

(assert (= (and b!7630694 c!1405857) b!7630691))

(assert (= (and b!7630694 (not c!1405857)) b!7630695))

(assert (= (and b!7630691 res!3055891) b!7630689))

(assert (= (and b!7630695 (not res!3055889)) b!7630688))

(assert (= (and b!7630688 res!3055890) b!7630693))

(assert (= (or b!7630691 b!7630688) bm!700523))

(assert (= (or b!7630689 b!7630693) bm!700522))

(assert (= (or b!7630690 bm!700522) bm!700521))

(declare-fun m!8157880 () Bool)

(assert (=> bm!700521 m!8157880))

(declare-fun m!8157882 () Bool)

(assert (=> b!7630692 m!8157882))

(declare-fun m!8157884 () Bool)

(assert (=> bm!700523 m!8157884))

(assert (=> b!7630436 d!2324147))

(declare-fun b!7630710 () Bool)

(declare-fun e!4536580 () Bool)

(declare-fun tp!2227734 () Bool)

(declare-fun tp!2227736 () Bool)

(assert (=> b!7630710 (= e!4536580 (and tp!2227734 tp!2227736))))

(declare-fun b!7630708 () Bool)

(declare-fun tp!2227735 () Bool)

(declare-fun tp!2227737 () Bool)

(assert (=> b!7630708 (= e!4536580 (and tp!2227735 tp!2227737))))

(assert (=> b!7630435 (= tp!2227682 e!4536580)))

(declare-fun b!7630707 () Bool)

(assert (=> b!7630707 (= e!4536580 tp_is_empty!51113)))

(declare-fun b!7630709 () Bool)

(declare-fun tp!2227738 () Bool)

(assert (=> b!7630709 (= e!4536580 tp!2227738)))

(assert (= (and b!7630435 ((_ is ElementMatch!20379) (regOne!41270 r!14126))) b!7630707))

(assert (= (and b!7630435 ((_ is Concat!29224) (regOne!41270 r!14126))) b!7630708))

(assert (= (and b!7630435 ((_ is Star!20379) (regOne!41270 r!14126))) b!7630709))

(assert (= (and b!7630435 ((_ is Union!20379) (regOne!41270 r!14126))) b!7630710))

(declare-fun b!7630714 () Bool)

(declare-fun e!4536581 () Bool)

(declare-fun tp!2227739 () Bool)

(declare-fun tp!2227741 () Bool)

(assert (=> b!7630714 (= e!4536581 (and tp!2227739 tp!2227741))))

(declare-fun b!7630712 () Bool)

(declare-fun tp!2227740 () Bool)

(declare-fun tp!2227742 () Bool)

(assert (=> b!7630712 (= e!4536581 (and tp!2227740 tp!2227742))))

(assert (=> b!7630435 (= tp!2227684 e!4536581)))

(declare-fun b!7630711 () Bool)

(assert (=> b!7630711 (= e!4536581 tp_is_empty!51113)))

(declare-fun b!7630713 () Bool)

(declare-fun tp!2227743 () Bool)

(assert (=> b!7630713 (= e!4536581 tp!2227743)))

(assert (= (and b!7630435 ((_ is ElementMatch!20379) (regTwo!41270 r!14126))) b!7630711))

(assert (= (and b!7630435 ((_ is Concat!29224) (regTwo!41270 r!14126))) b!7630712))

(assert (= (and b!7630435 ((_ is Star!20379) (regTwo!41270 r!14126))) b!7630713))

(assert (= (and b!7630435 ((_ is Union!20379) (regTwo!41270 r!14126))) b!7630714))

(declare-fun b!7630718 () Bool)

(declare-fun e!4536582 () Bool)

(declare-fun tp!2227744 () Bool)

(declare-fun tp!2227746 () Bool)

(assert (=> b!7630718 (= e!4536582 (and tp!2227744 tp!2227746))))

(declare-fun b!7630716 () Bool)

(declare-fun tp!2227745 () Bool)

(declare-fun tp!2227747 () Bool)

(assert (=> b!7630716 (= e!4536582 (and tp!2227745 tp!2227747))))

(assert (=> b!7630434 (= tp!2227680 e!4536582)))

(declare-fun b!7630715 () Bool)

(assert (=> b!7630715 (= e!4536582 tp_is_empty!51113)))

(declare-fun b!7630717 () Bool)

(declare-fun tp!2227748 () Bool)

(assert (=> b!7630717 (= e!4536582 tp!2227748)))

(assert (= (and b!7630434 ((_ is ElementMatch!20379) (reg!20708 r!14126))) b!7630715))

(assert (= (and b!7630434 ((_ is Concat!29224) (reg!20708 r!14126))) b!7630716))

(assert (= (and b!7630434 ((_ is Star!20379) (reg!20708 r!14126))) b!7630717))

(assert (= (and b!7630434 ((_ is Union!20379) (reg!20708 r!14126))) b!7630718))

(declare-fun b!7630722 () Bool)

(declare-fun e!4536583 () Bool)

(declare-fun tp!2227749 () Bool)

(declare-fun tp!2227751 () Bool)

(assert (=> b!7630722 (= e!4536583 (and tp!2227749 tp!2227751))))

(declare-fun b!7630720 () Bool)

(declare-fun tp!2227750 () Bool)

(declare-fun tp!2227752 () Bool)

(assert (=> b!7630720 (= e!4536583 (and tp!2227750 tp!2227752))))

(assert (=> b!7630437 (= tp!2227683 e!4536583)))

(declare-fun b!7630719 () Bool)

(assert (=> b!7630719 (= e!4536583 tp_is_empty!51113)))

(declare-fun b!7630721 () Bool)

(declare-fun tp!2227753 () Bool)

(assert (=> b!7630721 (= e!4536583 tp!2227753)))

(assert (= (and b!7630437 ((_ is ElementMatch!20379) (regOne!41271 r!14126))) b!7630719))

(assert (= (and b!7630437 ((_ is Concat!29224) (regOne!41271 r!14126))) b!7630720))

(assert (= (and b!7630437 ((_ is Star!20379) (regOne!41271 r!14126))) b!7630721))

(assert (= (and b!7630437 ((_ is Union!20379) (regOne!41271 r!14126))) b!7630722))

(declare-fun b!7630726 () Bool)

(declare-fun e!4536584 () Bool)

(declare-fun tp!2227754 () Bool)

(declare-fun tp!2227756 () Bool)

(assert (=> b!7630726 (= e!4536584 (and tp!2227754 tp!2227756))))

(declare-fun b!7630724 () Bool)

(declare-fun tp!2227755 () Bool)

(declare-fun tp!2227757 () Bool)

(assert (=> b!7630724 (= e!4536584 (and tp!2227755 tp!2227757))))

(assert (=> b!7630437 (= tp!2227681 e!4536584)))

(declare-fun b!7630723 () Bool)

(assert (=> b!7630723 (= e!4536584 tp_is_empty!51113)))

(declare-fun b!7630725 () Bool)

(declare-fun tp!2227758 () Bool)

(assert (=> b!7630725 (= e!4536584 tp!2227758)))

(assert (= (and b!7630437 ((_ is ElementMatch!20379) (regTwo!41271 r!14126))) b!7630723))

(assert (= (and b!7630437 ((_ is Concat!29224) (regTwo!41271 r!14126))) b!7630724))

(assert (= (and b!7630437 ((_ is Star!20379) (regTwo!41271 r!14126))) b!7630725))

(assert (= (and b!7630437 ((_ is Union!20379) (regTwo!41271 r!14126))) b!7630726))

(declare-fun b!7630731 () Bool)

(declare-fun e!4536587 () Bool)

(declare-fun tp!2227761 () Bool)

(assert (=> b!7630731 (= e!4536587 (and tp_is_empty!51113 tp!2227761))))

(assert (=> b!7630432 (= tp!2227685 e!4536587)))

(assert (= (and b!7630432 ((_ is Cons!73106) (t!387965 s!9605))) b!7630731))

(check-sat (not b!7630686) (not b!7630682) (not b!7630720) (not b!7630710) (not b!7630546) (not d!2324139) (not bm!700523) (not b!7630683) (not b!7630731) (not b!7630709) (not b!7630557) (not b!7630717) (not b!7630714) (not bm!700521) (not b!7630722) (not bm!700508) (not b!7630712) (not bm!700505) (not b!7630708) tp_is_empty!51113 (not b!7630726) (not d!2324133) (not b!7630713) (not b!7630716) (not b!7630724) (not d!2324137) (not d!2324135) (not b!7630681) (not b!7630684) (not b!7630721) (not b!7630508) (not bm!700503) (not b!7630555) (not b!7630692) (not d!2324127) (not b!7630725) (not b!7630687) (not b!7630718) (not b!7630552) (not b!7630549) (not b!7630551))
(check-sat)
