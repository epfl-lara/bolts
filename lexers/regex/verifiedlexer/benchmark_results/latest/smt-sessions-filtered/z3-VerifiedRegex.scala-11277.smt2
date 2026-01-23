; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!593724 () Bool)

(assert start!593724)

(declare-fun b!5788529 () Bool)

(assert (=> b!5788529 true))

(assert (=> b!5788529 true))

(declare-fun lambda!315602 () Int)

(declare-fun lambda!315601 () Int)

(assert (=> b!5788529 (not (= lambda!315602 lambda!315601))))

(assert (=> b!5788529 true))

(assert (=> b!5788529 true))

(declare-fun lambda!315603 () Int)

(assert (=> b!5788529 (not (= lambda!315603 lambda!315601))))

(assert (=> b!5788529 (not (= lambda!315603 lambda!315602))))

(assert (=> b!5788529 true))

(assert (=> b!5788529 true))

(declare-fun b!5788534 () Bool)

(assert (=> b!5788534 true))

(declare-fun b!5788527 () Bool)

(declare-fun res!2442513 () Bool)

(declare-fun e!3555046 () Bool)

(assert (=> b!5788527 (=> res!2442513 e!3555046)))

(declare-datatypes ((C!31872 0))(
  ( (C!31873 (val!25638 Int)) )
))
(declare-datatypes ((Regex!15801 0))(
  ( (ElementMatch!15801 (c!1024863 C!31872)) (Concat!24646 (regOne!32114 Regex!15801) (regTwo!32114 Regex!15801)) (EmptyExpr!15801) (Star!15801 (reg!16130 Regex!15801)) (EmptyLang!15801) (Union!15801 (regOne!32115 Regex!15801) (regTwo!32115 Regex!15801)) )
))
(declare-datatypes ((List!63702 0))(
  ( (Nil!63578) (Cons!63578 (h!70026 Regex!15801) (t!377045 List!63702)) )
))
(declare-datatypes ((Context!10370 0))(
  ( (Context!10371 (exprs!5685 List!63702)) )
))
(declare-datatypes ((List!63703 0))(
  ( (Nil!63579) (Cons!63579 (h!70027 Context!10370) (t!377046 List!63703)) )
))
(declare-fun zl!343 () List!63703)

(declare-fun isEmpty!35483 (List!63703) Bool)

(assert (=> b!5788527 (= res!2442513 (not (isEmpty!35483 (t!377046 zl!343))))))

(declare-fun b!5788528 () Bool)

(declare-fun e!3555050 () Bool)

(declare-fun tp!1596985 () Bool)

(declare-fun tp!1596988 () Bool)

(assert (=> b!5788528 (= e!3555050 (and tp!1596985 tp!1596988))))

(declare-fun e!3555044 () Bool)

(assert (=> b!5788529 (= e!3555046 e!3555044)))

(declare-fun res!2442505 () Bool)

(assert (=> b!5788529 (=> res!2442505 e!3555044)))

(declare-fun lt!2296796 () Bool)

(declare-fun e!3555043 () Bool)

(assert (=> b!5788529 (= res!2442505 (not (= lt!2296796 e!3555043)))))

(declare-fun res!2442506 () Bool)

(assert (=> b!5788529 (=> res!2442506 e!3555043)))

(declare-datatypes ((List!63704 0))(
  ( (Nil!63580) (Cons!63580 (h!70028 C!31872) (t!377047 List!63704)) )
))
(declare-fun s!2326 () List!63704)

(declare-fun isEmpty!35484 (List!63704) Bool)

(assert (=> b!5788529 (= res!2442506 (isEmpty!35484 s!2326))))

(declare-fun Exists!2901 (Int) Bool)

(assert (=> b!5788529 (= (Exists!2901 lambda!315601) (Exists!2901 lambda!315603))))

(declare-datatypes ((Unit!156862 0))(
  ( (Unit!156863) )
))
(declare-fun lt!2296793 () Unit!156862)

(declare-fun r!7292 () Regex!15801)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1530 (Regex!15801 Regex!15801 List!63704) Unit!156862)

(assert (=> b!5788529 (= lt!2296793 (lemmaExistCutMatchRandMatchRSpecEquivalent!1530 (reg!16130 r!7292) r!7292 s!2326))))

(assert (=> b!5788529 (= (Exists!2901 lambda!315601) (Exists!2901 lambda!315602))))

(declare-fun lt!2296799 () Unit!156862)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!582 (Regex!15801 List!63704) Unit!156862)

(assert (=> b!5788529 (= lt!2296799 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!582 (reg!16130 r!7292) s!2326))))

(declare-fun lt!2296786 () Bool)

(assert (=> b!5788529 (= lt!2296786 (Exists!2901 lambda!315601))))

(declare-datatypes ((tuple2!65796 0))(
  ( (tuple2!65797 (_1!36201 List!63704) (_2!36201 List!63704)) )
))
(declare-datatypes ((Option!15810 0))(
  ( (None!15809) (Some!15809 (v!51869 tuple2!65796)) )
))
(declare-fun isDefined!12513 (Option!15810) Bool)

(declare-fun findConcatSeparation!2224 (Regex!15801 Regex!15801 List!63704 List!63704 List!63704) Option!15810)

(assert (=> b!5788529 (= lt!2296786 (isDefined!12513 (findConcatSeparation!2224 (reg!16130 r!7292) r!7292 Nil!63580 s!2326 s!2326)))))

(declare-fun lt!2296798 () Unit!156862)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1988 (Regex!15801 Regex!15801 List!63704) Unit!156862)

(assert (=> b!5788529 (= lt!2296798 (lemmaFindConcatSeparationEquivalentToExists!1988 (reg!16130 r!7292) r!7292 s!2326))))

(declare-fun b!5788530 () Bool)

(declare-fun e!3555042 () Bool)

(declare-fun tp!1596987 () Bool)

(declare-fun e!3555047 () Bool)

(declare-fun inv!82749 (Context!10370) Bool)

(assert (=> b!5788530 (= e!3555047 (and (inv!82749 (h!70027 zl!343)) e!3555042 tp!1596987))))

(declare-fun b!5788531 () Bool)

(assert (=> b!5788531 (= e!3555043 lt!2296786)))

(declare-fun b!5788533 () Bool)

(declare-fun tp_is_empty!40855 () Bool)

(assert (=> b!5788533 (= e!3555050 tp_is_empty!40855)))

(declare-fun e!3555049 () Bool)

(declare-fun e!3555041 () Bool)

(assert (=> b!5788534 (= e!3555049 e!3555041)))

(declare-fun res!2442504 () Bool)

(assert (=> b!5788534 (=> res!2442504 e!3555041)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2296790 () (InoxSet Context!10370))

(declare-fun lt!2296800 () (InoxSet Context!10370))

(assert (=> b!5788534 (= res!2442504 (not (= lt!2296790 lt!2296800)))))

(declare-fun z!1189 () (InoxSet Context!10370))

(declare-fun lambda!315604 () Int)

(declare-fun flatMap!1408 ((InoxSet Context!10370) Int) (InoxSet Context!10370))

(declare-fun derivationStepZipperUp!1065 (Context!10370 C!31872) (InoxSet Context!10370))

(assert (=> b!5788534 (= (flatMap!1408 z!1189 lambda!315604) (derivationStepZipperUp!1065 (h!70027 zl!343) (h!70028 s!2326)))))

(declare-fun lt!2296794 () Unit!156862)

(declare-fun lemmaFlatMapOnSingletonSet!940 ((InoxSet Context!10370) Context!10370 Int) Unit!156862)

(assert (=> b!5788534 (= lt!2296794 (lemmaFlatMapOnSingletonSet!940 z!1189 (h!70027 zl!343) lambda!315604))))

(declare-fun b!5788535 () Bool)

(declare-fun res!2442501 () Bool)

(assert (=> b!5788535 (=> res!2442501 e!3555046)))

(get-info :version)

(assert (=> b!5788535 (= res!2442501 (or ((_ is EmptyExpr!15801) r!7292) ((_ is EmptyLang!15801) r!7292) ((_ is ElementMatch!15801) r!7292) ((_ is Union!15801) r!7292) ((_ is Concat!24646) r!7292)))))

(declare-fun b!5788536 () Bool)

(declare-fun tp!1596986 () Bool)

(assert (=> b!5788536 (= e!3555042 tp!1596986)))

(declare-fun b!5788537 () Bool)

(declare-fun res!2442503 () Bool)

(declare-fun e!3555045 () Bool)

(assert (=> b!5788537 (=> (not res!2442503) (not e!3555045))))

(declare-fun toList!9585 ((InoxSet Context!10370)) List!63703)

(assert (=> b!5788537 (= res!2442503 (= (toList!9585 z!1189) zl!343))))

(declare-fun b!5788538 () Bool)

(declare-fun e!3555051 () Bool)

(declare-fun tp!1596989 () Bool)

(assert (=> b!5788538 (= e!3555051 tp!1596989)))

(declare-fun tp!1596991 () Bool)

(declare-fun setElem!38900 () Context!10370)

(declare-fun setNonEmpty!38900 () Bool)

(declare-fun setRes!38900 () Bool)

(assert (=> setNonEmpty!38900 (= setRes!38900 (and tp!1596991 (inv!82749 setElem!38900) e!3555051))))

(declare-fun setRest!38900 () (InoxSet Context!10370))

(assert (=> setNonEmpty!38900 (= z!1189 ((_ map or) (store ((as const (Array Context!10370 Bool)) false) setElem!38900 true) setRest!38900))))

(declare-fun b!5788539 () Bool)

(assert (=> b!5788539 (= e!3555044 e!3555049)))

(declare-fun res!2442502 () Bool)

(assert (=> b!5788539 (=> res!2442502 e!3555049)))

(declare-fun lt!2296795 () (InoxSet Context!10370))

(assert (=> b!5788539 (= res!2442502 (not (= lt!2296795 lt!2296800)))))

(declare-fun derivationStepZipperDown!1139 (Regex!15801 Context!10370 C!31872) (InoxSet Context!10370))

(assert (=> b!5788539 (= lt!2296800 (derivationStepZipperDown!1139 r!7292 (Context!10371 Nil!63578) (h!70028 s!2326)))))

(assert (=> b!5788539 (= lt!2296795 (derivationStepZipperUp!1065 (Context!10371 (Cons!63578 r!7292 Nil!63578)) (h!70028 s!2326)))))

(declare-fun derivationStepZipper!1870 ((InoxSet Context!10370) C!31872) (InoxSet Context!10370))

(assert (=> b!5788539 (= lt!2296790 (derivationStepZipper!1870 z!1189 (h!70028 s!2326)))))

(declare-fun setIsEmpty!38900 () Bool)

(assert (=> setIsEmpty!38900 setRes!38900))

(declare-fun b!5788540 () Bool)

(declare-fun e!3555048 () Bool)

(declare-fun tp!1596990 () Bool)

(assert (=> b!5788540 (= e!3555048 (and tp_is_empty!40855 tp!1596990))))

(declare-fun b!5788541 () Bool)

(declare-fun res!2442512 () Bool)

(assert (=> b!5788541 (=> res!2442512 e!3555046)))

(declare-fun generalisedConcat!1416 (List!63702) Regex!15801)

(assert (=> b!5788541 (= res!2442512 (not (= r!7292 (generalisedConcat!1416 (exprs!5685 (h!70027 zl!343))))))))

(declare-fun b!5788542 () Bool)

(declare-fun res!2442509 () Bool)

(assert (=> b!5788542 (=> res!2442509 e!3555046)))

(assert (=> b!5788542 (= res!2442509 (not ((_ is Cons!63578) (exprs!5685 (h!70027 zl!343)))))))

(declare-fun b!5788543 () Bool)

(declare-fun lt!2296787 () List!63702)

(assert (=> b!5788543 (= e!3555041 (= lt!2296790 (derivationStepZipperDown!1139 (reg!16130 r!7292) (Context!10371 lt!2296787) (h!70028 s!2326))))))

(declare-fun lt!2296791 () (InoxSet Context!10370))

(declare-fun lt!2296789 () Context!10370)

(assert (=> b!5788543 (= (flatMap!1408 lt!2296791 lambda!315604) (derivationStepZipperUp!1065 lt!2296789 (h!70028 s!2326)))))

(declare-fun lt!2296788 () Unit!156862)

(assert (=> b!5788543 (= lt!2296788 (lemmaFlatMapOnSingletonSet!940 lt!2296791 lt!2296789 lambda!315604))))

(declare-fun lt!2296797 () (InoxSet Context!10370))

(assert (=> b!5788543 (= lt!2296797 (derivationStepZipperUp!1065 lt!2296789 (h!70028 s!2326)))))

(assert (=> b!5788543 (= lt!2296791 (store ((as const (Array Context!10370 Bool)) false) lt!2296789 true))))

(assert (=> b!5788543 (= lt!2296789 (Context!10371 (Cons!63578 (reg!16130 r!7292) lt!2296787)))))

(assert (=> b!5788543 (= lt!2296787 (Cons!63578 r!7292 Nil!63578))))

(declare-fun b!5788544 () Bool)

(declare-fun tp!1596983 () Bool)

(assert (=> b!5788544 (= e!3555050 tp!1596983)))

(declare-fun b!5788545 () Bool)

(declare-fun res!2442510 () Bool)

(assert (=> b!5788545 (=> res!2442510 e!3555046)))

(declare-fun generalisedUnion!1664 (List!63702) Regex!15801)

(declare-fun unfocusZipperList!1229 (List!63703) List!63702)

(assert (=> b!5788545 (= res!2442510 (not (= r!7292 (generalisedUnion!1664 (unfocusZipperList!1229 zl!343)))))))

(declare-fun res!2442508 () Bool)

(assert (=> start!593724 (=> (not res!2442508) (not e!3555045))))

(declare-fun validRegex!7537 (Regex!15801) Bool)

(assert (=> start!593724 (= res!2442508 (validRegex!7537 r!7292))))

(assert (=> start!593724 e!3555045))

(assert (=> start!593724 e!3555050))

(declare-fun condSetEmpty!38900 () Bool)

(assert (=> start!593724 (= condSetEmpty!38900 (= z!1189 ((as const (Array Context!10370 Bool)) false)))))

(assert (=> start!593724 setRes!38900))

(assert (=> start!593724 e!3555047))

(assert (=> start!593724 e!3555048))

(declare-fun b!5788532 () Bool)

(declare-fun res!2442514 () Bool)

(assert (=> b!5788532 (=> res!2442514 e!3555044)))

(assert (=> b!5788532 (= res!2442514 ((_ is Nil!63580) s!2326))))

(declare-fun b!5788546 () Bool)

(declare-fun res!2442511 () Bool)

(assert (=> b!5788546 (=> (not res!2442511) (not e!3555045))))

(declare-fun unfocusZipper!1543 (List!63703) Regex!15801)

(assert (=> b!5788546 (= res!2442511 (= r!7292 (unfocusZipper!1543 zl!343)))))

(declare-fun b!5788547 () Bool)

(declare-fun tp!1596992 () Bool)

(declare-fun tp!1596984 () Bool)

(assert (=> b!5788547 (= e!3555050 (and tp!1596992 tp!1596984))))

(declare-fun b!5788548 () Bool)

(assert (=> b!5788548 (= e!3555045 (not e!3555046))))

(declare-fun res!2442507 () Bool)

(assert (=> b!5788548 (=> res!2442507 e!3555046)))

(assert (=> b!5788548 (= res!2442507 (not ((_ is Cons!63579) zl!343)))))

(declare-fun matchRSpec!2904 (Regex!15801 List!63704) Bool)

(assert (=> b!5788548 (= lt!2296796 (matchRSpec!2904 r!7292 s!2326))))

(declare-fun matchR!7986 (Regex!15801 List!63704) Bool)

(assert (=> b!5788548 (= lt!2296796 (matchR!7986 r!7292 s!2326))))

(declare-fun lt!2296792 () Unit!156862)

(declare-fun mainMatchTheorem!2904 (Regex!15801 List!63704) Unit!156862)

(assert (=> b!5788548 (= lt!2296792 (mainMatchTheorem!2904 r!7292 s!2326))))

(assert (= (and start!593724 res!2442508) b!5788537))

(assert (= (and b!5788537 res!2442503) b!5788546))

(assert (= (and b!5788546 res!2442511) b!5788548))

(assert (= (and b!5788548 (not res!2442507)) b!5788527))

(assert (= (and b!5788527 (not res!2442513)) b!5788541))

(assert (= (and b!5788541 (not res!2442512)) b!5788542))

(assert (= (and b!5788542 (not res!2442509)) b!5788545))

(assert (= (and b!5788545 (not res!2442510)) b!5788535))

(assert (= (and b!5788535 (not res!2442501)) b!5788529))

(assert (= (and b!5788529 (not res!2442506)) b!5788531))

(assert (= (and b!5788529 (not res!2442505)) b!5788532))

(assert (= (and b!5788532 (not res!2442514)) b!5788539))

(assert (= (and b!5788539 (not res!2442502)) b!5788534))

(assert (= (and b!5788534 (not res!2442504)) b!5788543))

(assert (= (and start!593724 ((_ is ElementMatch!15801) r!7292)) b!5788533))

(assert (= (and start!593724 ((_ is Concat!24646) r!7292)) b!5788528))

(assert (= (and start!593724 ((_ is Star!15801) r!7292)) b!5788544))

(assert (= (and start!593724 ((_ is Union!15801) r!7292)) b!5788547))

(assert (= (and start!593724 condSetEmpty!38900) setIsEmpty!38900))

(assert (= (and start!593724 (not condSetEmpty!38900)) setNonEmpty!38900))

(assert (= setNonEmpty!38900 b!5788538))

(assert (= b!5788530 b!5788536))

(assert (= (and start!593724 ((_ is Cons!63579) zl!343)) b!5788530))

(assert (= (and start!593724 ((_ is Cons!63580) s!2326)) b!5788540))

(declare-fun m!6732572 () Bool)

(assert (=> b!5788545 m!6732572))

(assert (=> b!5788545 m!6732572))

(declare-fun m!6732574 () Bool)

(assert (=> b!5788545 m!6732574))

(declare-fun m!6732576 () Bool)

(assert (=> b!5788527 m!6732576))

(declare-fun m!6732578 () Bool)

(assert (=> setNonEmpty!38900 m!6732578))

(declare-fun m!6732580 () Bool)

(assert (=> b!5788546 m!6732580))

(declare-fun m!6732582 () Bool)

(assert (=> b!5788530 m!6732582))

(declare-fun m!6732584 () Bool)

(assert (=> b!5788529 m!6732584))

(declare-fun m!6732586 () Bool)

(assert (=> b!5788529 m!6732586))

(assert (=> b!5788529 m!6732584))

(declare-fun m!6732588 () Bool)

(assert (=> b!5788529 m!6732588))

(declare-fun m!6732590 () Bool)

(assert (=> b!5788529 m!6732590))

(declare-fun m!6732592 () Bool)

(assert (=> b!5788529 m!6732592))

(declare-fun m!6732594 () Bool)

(assert (=> b!5788529 m!6732594))

(declare-fun m!6732596 () Bool)

(assert (=> b!5788529 m!6732596))

(assert (=> b!5788529 m!6732584))

(assert (=> b!5788529 m!6732594))

(declare-fun m!6732598 () Bool)

(assert (=> b!5788529 m!6732598))

(declare-fun m!6732600 () Bool)

(assert (=> b!5788529 m!6732600))

(declare-fun m!6732602 () Bool)

(assert (=> b!5788537 m!6732602))

(declare-fun m!6732604 () Bool)

(assert (=> b!5788539 m!6732604))

(declare-fun m!6732606 () Bool)

(assert (=> b!5788539 m!6732606))

(declare-fun m!6732608 () Bool)

(assert (=> b!5788539 m!6732608))

(declare-fun m!6732610 () Bool)

(assert (=> b!5788543 m!6732610))

(declare-fun m!6732612 () Bool)

(assert (=> b!5788543 m!6732612))

(declare-fun m!6732614 () Bool)

(assert (=> b!5788543 m!6732614))

(declare-fun m!6732616 () Bool)

(assert (=> b!5788543 m!6732616))

(declare-fun m!6732618 () Bool)

(assert (=> b!5788543 m!6732618))

(declare-fun m!6732620 () Bool)

(assert (=> b!5788548 m!6732620))

(declare-fun m!6732622 () Bool)

(assert (=> b!5788548 m!6732622))

(declare-fun m!6732624 () Bool)

(assert (=> b!5788548 m!6732624))

(declare-fun m!6732626 () Bool)

(assert (=> b!5788541 m!6732626))

(declare-fun m!6732628 () Bool)

(assert (=> start!593724 m!6732628))

(declare-fun m!6732630 () Bool)

(assert (=> b!5788534 m!6732630))

(declare-fun m!6732632 () Bool)

(assert (=> b!5788534 m!6732632))

(declare-fun m!6732634 () Bool)

(assert (=> b!5788534 m!6732634))

(check-sat (not b!5788547) (not b!5788540) (not b!5788543) (not b!5788537) (not b!5788544) (not b!5788546) (not b!5788548) (not b!5788529) tp_is_empty!40855 (not b!5788536) (not b!5788527) (not b!5788528) (not b!5788541) (not b!5788534) (not setNonEmpty!38900) (not b!5788538) (not b!5788539) (not start!593724) (not b!5788530) (not b!5788545))
(check-sat)
(get-model)

(declare-fun b!5788622 () Bool)

(declare-fun res!2442544 () Bool)

(declare-fun e!3555101 () Bool)

(assert (=> b!5788622 (=> (not res!2442544) (not e!3555101))))

(declare-fun call!450764 () Bool)

(assert (=> b!5788622 (= res!2442544 call!450764)))

(declare-fun e!3555095 () Bool)

(assert (=> b!5788622 (= e!3555095 e!3555101)))

(declare-fun d!1823656 () Bool)

(declare-fun res!2442543 () Bool)

(declare-fun e!3555102 () Bool)

(assert (=> d!1823656 (=> res!2442543 e!3555102)))

(assert (=> d!1823656 (= res!2442543 ((_ is ElementMatch!15801) r!7292))))

(assert (=> d!1823656 (= (validRegex!7537 r!7292) e!3555102)))

(declare-fun bm!450757 () Bool)

(declare-fun call!450763 () Bool)

(declare-fun c!1024882 () Bool)

(declare-fun c!1024883 () Bool)

(assert (=> bm!450757 (= call!450763 (validRegex!7537 (ite c!1024883 (reg!16130 r!7292) (ite c!1024882 (regOne!32115 r!7292) (regOne!32114 r!7292)))))))

(declare-fun b!5788623 () Bool)

(declare-fun call!450762 () Bool)

(assert (=> b!5788623 (= e!3555101 call!450762)))

(declare-fun bm!450758 () Bool)

(assert (=> bm!450758 (= call!450762 (validRegex!7537 (ite c!1024882 (regTwo!32115 r!7292) (regTwo!32114 r!7292))))))

(declare-fun b!5788624 () Bool)

(declare-fun e!3555096 () Bool)

(assert (=> b!5788624 (= e!3555096 call!450763)))

(declare-fun b!5788625 () Bool)

(declare-fun e!3555098 () Bool)

(assert (=> b!5788625 (= e!3555098 e!3555095)))

(assert (=> b!5788625 (= c!1024882 ((_ is Union!15801) r!7292))))

(declare-fun b!5788626 () Bool)

(declare-fun res!2442542 () Bool)

(declare-fun e!3555103 () Bool)

(assert (=> b!5788626 (=> res!2442542 e!3555103)))

(assert (=> b!5788626 (= res!2442542 (not ((_ is Concat!24646) r!7292)))))

(assert (=> b!5788626 (= e!3555095 e!3555103)))

(declare-fun bm!450759 () Bool)

(assert (=> bm!450759 (= call!450764 call!450763)))

(declare-fun b!5788627 () Bool)

(assert (=> b!5788627 (= e!3555098 e!3555096)))

(declare-fun res!2442546 () Bool)

(declare-fun nullable!5833 (Regex!15801) Bool)

(assert (=> b!5788627 (= res!2442546 (not (nullable!5833 (reg!16130 r!7292))))))

(assert (=> b!5788627 (=> (not res!2442546) (not e!3555096))))

(declare-fun b!5788628 () Bool)

(declare-fun e!3555097 () Bool)

(assert (=> b!5788628 (= e!3555097 call!450762)))

(declare-fun b!5788629 () Bool)

(assert (=> b!5788629 (= e!3555102 e!3555098)))

(assert (=> b!5788629 (= c!1024883 ((_ is Star!15801) r!7292))))

(declare-fun b!5788630 () Bool)

(assert (=> b!5788630 (= e!3555103 e!3555097)))

(declare-fun res!2442545 () Bool)

(assert (=> b!5788630 (=> (not res!2442545) (not e!3555097))))

(assert (=> b!5788630 (= res!2442545 call!450764)))

(assert (= (and d!1823656 (not res!2442543)) b!5788629))

(assert (= (and b!5788629 c!1024883) b!5788627))

(assert (= (and b!5788629 (not c!1024883)) b!5788625))

(assert (= (and b!5788627 res!2442546) b!5788624))

(assert (= (and b!5788625 c!1024882) b!5788622))

(assert (= (and b!5788625 (not c!1024882)) b!5788626))

(assert (= (and b!5788622 res!2442544) b!5788623))

(assert (= (and b!5788626 (not res!2442542)) b!5788630))

(assert (= (and b!5788630 res!2442545) b!5788628))

(assert (= (or b!5788623 b!5788628) bm!450758))

(assert (= (or b!5788622 b!5788630) bm!450759))

(assert (= (or b!5788624 bm!450759) bm!450757))

(declare-fun m!6732644 () Bool)

(assert (=> bm!450757 m!6732644))

(declare-fun m!6732646 () Bool)

(assert (=> bm!450758 m!6732646))

(declare-fun m!6732648 () Bool)

(assert (=> b!5788627 m!6732648))

(assert (=> start!593724 d!1823656))

(declare-fun b!5788677 () Bool)

(declare-fun e!3555136 () Bool)

(declare-fun e!3555137 () Bool)

(assert (=> b!5788677 (= e!3555136 e!3555137)))

(declare-fun c!1024905 () Bool)

(declare-fun isEmpty!35485 (List!63702) Bool)

(declare-fun tail!11320 (List!63702) List!63702)

(assert (=> b!5788677 (= c!1024905 (isEmpty!35485 (tail!11320 (unfocusZipperList!1229 zl!343))))))

(declare-fun b!5788678 () Bool)

(declare-fun e!3555138 () Bool)

(assert (=> b!5788678 (= e!3555138 (isEmpty!35485 (t!377045 (unfocusZipperList!1229 zl!343))))))

(declare-fun b!5788679 () Bool)

(declare-fun lt!2296809 () Regex!15801)

(declare-fun head!12225 (List!63702) Regex!15801)

(assert (=> b!5788679 (= e!3555137 (= lt!2296809 (head!12225 (unfocusZipperList!1229 zl!343))))))

(declare-fun d!1823664 () Bool)

(declare-fun e!3555134 () Bool)

(assert (=> d!1823664 e!3555134))

(declare-fun res!2442556 () Bool)

(assert (=> d!1823664 (=> (not res!2442556) (not e!3555134))))

(assert (=> d!1823664 (= res!2442556 (validRegex!7537 lt!2296809))))

(declare-fun e!3555133 () Regex!15801)

(assert (=> d!1823664 (= lt!2296809 e!3555133)))

(declare-fun c!1024908 () Bool)

(assert (=> d!1823664 (= c!1024908 e!3555138)))

(declare-fun res!2442555 () Bool)

(assert (=> d!1823664 (=> (not res!2442555) (not e!3555138))))

(assert (=> d!1823664 (= res!2442555 ((_ is Cons!63578) (unfocusZipperList!1229 zl!343)))))

(declare-fun lambda!315610 () Int)

(declare-fun forall!14915 (List!63702 Int) Bool)

(assert (=> d!1823664 (forall!14915 (unfocusZipperList!1229 zl!343) lambda!315610)))

(assert (=> d!1823664 (= (generalisedUnion!1664 (unfocusZipperList!1229 zl!343)) lt!2296809)))

(declare-fun b!5788680 () Bool)

(declare-fun e!3555135 () Regex!15801)

(assert (=> b!5788680 (= e!3555135 EmptyLang!15801)))

(declare-fun b!5788681 () Bool)

(assert (=> b!5788681 (= e!3555133 (h!70026 (unfocusZipperList!1229 zl!343)))))

(declare-fun b!5788682 () Bool)

(assert (=> b!5788682 (= e!3555135 (Union!15801 (h!70026 (unfocusZipperList!1229 zl!343)) (generalisedUnion!1664 (t!377045 (unfocusZipperList!1229 zl!343)))))))

(declare-fun b!5788683 () Bool)

(declare-fun isEmptyLang!1289 (Regex!15801) Bool)

(assert (=> b!5788683 (= e!3555136 (isEmptyLang!1289 lt!2296809))))

(declare-fun b!5788684 () Bool)

(declare-fun isUnion!719 (Regex!15801) Bool)

(assert (=> b!5788684 (= e!3555137 (isUnion!719 lt!2296809))))

(declare-fun b!5788685 () Bool)

(assert (=> b!5788685 (= e!3555133 e!3555135)))

(declare-fun c!1024907 () Bool)

(assert (=> b!5788685 (= c!1024907 ((_ is Cons!63578) (unfocusZipperList!1229 zl!343)))))

(declare-fun b!5788686 () Bool)

(assert (=> b!5788686 (= e!3555134 e!3555136)))

(declare-fun c!1024906 () Bool)

(assert (=> b!5788686 (= c!1024906 (isEmpty!35485 (unfocusZipperList!1229 zl!343)))))

(assert (= (and d!1823664 res!2442555) b!5788678))

(assert (= (and d!1823664 c!1024908) b!5788681))

(assert (= (and d!1823664 (not c!1024908)) b!5788685))

(assert (= (and b!5788685 c!1024907) b!5788682))

(assert (= (and b!5788685 (not c!1024907)) b!5788680))

(assert (= (and d!1823664 res!2442556) b!5788686))

(assert (= (and b!5788686 c!1024906) b!5788683))

(assert (= (and b!5788686 (not c!1024906)) b!5788677))

(assert (= (and b!5788677 c!1024905) b!5788679))

(assert (= (and b!5788677 (not c!1024905)) b!5788684))

(declare-fun m!6732674 () Bool)

(assert (=> b!5788678 m!6732674))

(assert (=> b!5788686 m!6732572))

(declare-fun m!6732676 () Bool)

(assert (=> b!5788686 m!6732676))

(assert (=> b!5788679 m!6732572))

(declare-fun m!6732678 () Bool)

(assert (=> b!5788679 m!6732678))

(declare-fun m!6732680 () Bool)

(assert (=> b!5788683 m!6732680))

(declare-fun m!6732682 () Bool)

(assert (=> b!5788684 m!6732682))

(declare-fun m!6732684 () Bool)

(assert (=> b!5788682 m!6732684))

(assert (=> b!5788677 m!6732572))

(declare-fun m!6732686 () Bool)

(assert (=> b!5788677 m!6732686))

(assert (=> b!5788677 m!6732686))

(declare-fun m!6732688 () Bool)

(assert (=> b!5788677 m!6732688))

(declare-fun m!6732690 () Bool)

(assert (=> d!1823664 m!6732690))

(assert (=> d!1823664 m!6732572))

(declare-fun m!6732692 () Bool)

(assert (=> d!1823664 m!6732692))

(assert (=> b!5788545 d!1823664))

(declare-fun bs!1366601 () Bool)

(declare-fun d!1823676 () Bool)

(assert (= bs!1366601 (and d!1823676 d!1823664)))

(declare-fun lambda!315618 () Int)

(assert (=> bs!1366601 (= lambda!315618 lambda!315610)))

(declare-fun lt!2296812 () List!63702)

(assert (=> d!1823676 (forall!14915 lt!2296812 lambda!315618)))

(declare-fun e!3555166 () List!63702)

(assert (=> d!1823676 (= lt!2296812 e!3555166)))

(declare-fun c!1024923 () Bool)

(assert (=> d!1823676 (= c!1024923 ((_ is Cons!63579) zl!343))))

(assert (=> d!1823676 (= (unfocusZipperList!1229 zl!343) lt!2296812)))

(declare-fun b!5788734 () Bool)

(assert (=> b!5788734 (= e!3555166 (Cons!63578 (generalisedConcat!1416 (exprs!5685 (h!70027 zl!343))) (unfocusZipperList!1229 (t!377046 zl!343))))))

(declare-fun b!5788735 () Bool)

(assert (=> b!5788735 (= e!3555166 Nil!63578)))

(assert (= (and d!1823676 c!1024923) b!5788734))

(assert (= (and d!1823676 (not c!1024923)) b!5788735))

(declare-fun m!6732694 () Bool)

(assert (=> d!1823676 m!6732694))

(assert (=> b!5788734 m!6732626))

(declare-fun m!6732696 () Bool)

(assert (=> b!5788734 m!6732696))

(assert (=> b!5788545 d!1823676))

(declare-fun d!1823678 () Bool)

(declare-fun lt!2296815 () Regex!15801)

(assert (=> d!1823678 (validRegex!7537 lt!2296815)))

(assert (=> d!1823678 (= lt!2296815 (generalisedUnion!1664 (unfocusZipperList!1229 zl!343)))))

(assert (=> d!1823678 (= (unfocusZipper!1543 zl!343) lt!2296815)))

(declare-fun bs!1366604 () Bool)

(assert (= bs!1366604 d!1823678))

(declare-fun m!6732704 () Bool)

(assert (=> bs!1366604 m!6732704))

(assert (=> bs!1366604 m!6732572))

(assert (=> bs!1366604 m!6732572))

(assert (=> bs!1366604 m!6732574))

(assert (=> b!5788546 d!1823678))

(declare-fun d!1823682 () Bool)

(declare-fun e!3555183 () Bool)

(assert (=> d!1823682 e!3555183))

(declare-fun res!2442594 () Bool)

(assert (=> d!1823682 (=> (not res!2442594) (not e!3555183))))

(declare-fun lt!2296820 () List!63703)

(declare-fun noDuplicate!1702 (List!63703) Bool)

(assert (=> d!1823682 (= res!2442594 (noDuplicate!1702 lt!2296820))))

(declare-fun choose!43954 ((InoxSet Context!10370)) List!63703)

(assert (=> d!1823682 (= lt!2296820 (choose!43954 z!1189))))

(assert (=> d!1823682 (= (toList!9585 z!1189) lt!2296820)))

(declare-fun b!5788766 () Bool)

(declare-fun content!11629 (List!63703) (InoxSet Context!10370))

(assert (=> b!5788766 (= e!3555183 (= (content!11629 lt!2296820) z!1189))))

(assert (= (and d!1823682 res!2442594) b!5788766))

(declare-fun m!6732706 () Bool)

(assert (=> d!1823682 m!6732706))

(declare-fun m!6732708 () Bool)

(assert (=> d!1823682 m!6732708))

(declare-fun m!6732710 () Bool)

(assert (=> b!5788766 m!6732710))

(assert (=> b!5788537 d!1823682))

(declare-fun d!1823684 () Bool)

(declare-fun choose!43955 ((InoxSet Context!10370) Int) (InoxSet Context!10370))

(assert (=> d!1823684 (= (flatMap!1408 z!1189 lambda!315604) (choose!43955 z!1189 lambda!315604))))

(declare-fun bs!1366605 () Bool)

(assert (= bs!1366605 d!1823684))

(declare-fun m!6732712 () Bool)

(assert (=> bs!1366605 m!6732712))

(assert (=> b!5788534 d!1823684))

(declare-fun e!3555206 () (InoxSet Context!10370))

(declare-fun call!450804 () (InoxSet Context!10370))

(declare-fun b!5788809 () Bool)

(assert (=> b!5788809 (= e!3555206 ((_ map or) call!450804 (derivationStepZipperUp!1065 (Context!10371 (t!377045 (exprs!5685 (h!70027 zl!343)))) (h!70028 s!2326))))))

(declare-fun bm!450799 () Bool)

(assert (=> bm!450799 (= call!450804 (derivationStepZipperDown!1139 (h!70026 (exprs!5685 (h!70027 zl!343))) (Context!10371 (t!377045 (exprs!5685 (h!70027 zl!343)))) (h!70028 s!2326)))))

(declare-fun b!5788810 () Bool)

(declare-fun e!3555207 () (InoxSet Context!10370))

(assert (=> b!5788810 (= e!3555207 ((as const (Array Context!10370 Bool)) false))))

(declare-fun b!5788812 () Bool)

(declare-fun e!3555208 () Bool)

(assert (=> b!5788812 (= e!3555208 (nullable!5833 (h!70026 (exprs!5685 (h!70027 zl!343)))))))

(declare-fun b!5788813 () Bool)

(assert (=> b!5788813 (= e!3555207 call!450804)))

(declare-fun d!1823686 () Bool)

(declare-fun c!1024947 () Bool)

(assert (=> d!1823686 (= c!1024947 e!3555208)))

(declare-fun res!2442607 () Bool)

(assert (=> d!1823686 (=> (not res!2442607) (not e!3555208))))

(assert (=> d!1823686 (= res!2442607 ((_ is Cons!63578) (exprs!5685 (h!70027 zl!343))))))

(assert (=> d!1823686 (= (derivationStepZipperUp!1065 (h!70027 zl!343) (h!70028 s!2326)) e!3555206)))

(declare-fun b!5788811 () Bool)

(assert (=> b!5788811 (= e!3555206 e!3555207)))

(declare-fun c!1024946 () Bool)

(assert (=> b!5788811 (= c!1024946 ((_ is Cons!63578) (exprs!5685 (h!70027 zl!343))))))

(assert (= (and d!1823686 res!2442607) b!5788812))

(assert (= (and d!1823686 c!1024947) b!5788809))

(assert (= (and d!1823686 (not c!1024947)) b!5788811))

(assert (= (and b!5788811 c!1024946) b!5788813))

(assert (= (and b!5788811 (not c!1024946)) b!5788810))

(assert (= (or b!5788809 b!5788813) bm!450799))

(declare-fun m!6732746 () Bool)

(assert (=> b!5788809 m!6732746))

(declare-fun m!6732748 () Bool)

(assert (=> bm!450799 m!6732748))

(declare-fun m!6732750 () Bool)

(assert (=> b!5788812 m!6732750))

(assert (=> b!5788534 d!1823686))

(declare-fun d!1823698 () Bool)

(declare-fun dynLambda!24892 (Int Context!10370) (InoxSet Context!10370))

(assert (=> d!1823698 (= (flatMap!1408 z!1189 lambda!315604) (dynLambda!24892 lambda!315604 (h!70027 zl!343)))))

(declare-fun lt!2296831 () Unit!156862)

(declare-fun choose!43956 ((InoxSet Context!10370) Context!10370 Int) Unit!156862)

(assert (=> d!1823698 (= lt!2296831 (choose!43956 z!1189 (h!70027 zl!343) lambda!315604))))

(assert (=> d!1823698 (= z!1189 (store ((as const (Array Context!10370 Bool)) false) (h!70027 zl!343) true))))

(assert (=> d!1823698 (= (lemmaFlatMapOnSingletonSet!940 z!1189 (h!70027 zl!343) lambda!315604) lt!2296831)))

(declare-fun b_lambda!218225 () Bool)

(assert (=> (not b_lambda!218225) (not d!1823698)))

(declare-fun bs!1366613 () Bool)

(assert (= bs!1366613 d!1823698))

(assert (=> bs!1366613 m!6732630))

(declare-fun m!6732774 () Bool)

(assert (=> bs!1366613 m!6732774))

(declare-fun m!6732776 () Bool)

(assert (=> bs!1366613 m!6732776))

(declare-fun m!6732778 () Bool)

(assert (=> bs!1366613 m!6732778))

(assert (=> b!5788534 d!1823698))

(declare-fun c!1024987 () Bool)

(declare-fun call!450819 () (InoxSet Context!10370))

(declare-fun bm!450813 () Bool)

(declare-fun call!450820 () List!63702)

(assert (=> bm!450813 (= call!450819 (derivationStepZipperDown!1139 (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292))) (ite c!1024987 (Context!10371 lt!2296787) (Context!10371 call!450820)) (h!70028 s!2326)))))

(declare-fun b!5788914 () Bool)

(declare-fun e!3555269 () (InoxSet Context!10370))

(declare-fun e!3555272 () (InoxSet Context!10370))

(assert (=> b!5788914 (= e!3555269 e!3555272)))

(assert (=> b!5788914 (= c!1024987 ((_ is Union!15801) (reg!16130 r!7292)))))

(declare-fun d!1823710 () Bool)

(declare-fun c!1024989 () Bool)

(assert (=> d!1823710 (= c!1024989 (and ((_ is ElementMatch!15801) (reg!16130 r!7292)) (= (c!1024863 (reg!16130 r!7292)) (h!70028 s!2326))))))

(assert (=> d!1823710 (= (derivationStepZipperDown!1139 (reg!16130 r!7292) (Context!10371 lt!2296787) (h!70028 s!2326)) e!3555269)))

(declare-fun c!1024990 () Bool)

(declare-fun call!450821 () List!63702)

(declare-fun c!1024988 () Bool)

(declare-fun bm!450814 () Bool)

(declare-fun call!450818 () (InoxSet Context!10370))

(assert (=> bm!450814 (= call!450818 (derivationStepZipperDown!1139 (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292))))) (ite (or c!1024987 c!1024988) (Context!10371 lt!2296787) (Context!10371 call!450821)) (h!70028 s!2326)))))

(declare-fun b!5788915 () Bool)

(declare-fun e!3555270 () (InoxSet Context!10370))

(declare-fun call!450823 () (InoxSet Context!10370))

(assert (=> b!5788915 (= e!3555270 ((_ map or) call!450819 call!450823))))

(declare-fun b!5788916 () Bool)

(declare-fun c!1024991 () Bool)

(assert (=> b!5788916 (= c!1024991 ((_ is Star!15801) (reg!16130 r!7292)))))

(declare-fun e!3555273 () (InoxSet Context!10370))

(declare-fun e!3555271 () (InoxSet Context!10370))

(assert (=> b!5788916 (= e!3555273 e!3555271)))

(declare-fun bm!450815 () Bool)

(declare-fun call!450822 () (InoxSet Context!10370))

(assert (=> bm!450815 (= call!450822 call!450823)))

(declare-fun b!5788917 () Bool)

(assert (=> b!5788917 (= e!3555271 call!450822)))

(declare-fun b!5788918 () Bool)

(assert (=> b!5788918 (= e!3555271 ((as const (Array Context!10370 Bool)) false))))

(declare-fun bm!450816 () Bool)

(declare-fun $colon$colon!1788 (List!63702 Regex!15801) List!63702)

(assert (=> bm!450816 (= call!450820 ($colon$colon!1788 (exprs!5685 (Context!10371 lt!2296787)) (ite (or c!1024988 c!1024990) (regTwo!32114 (reg!16130 r!7292)) (reg!16130 r!7292))))))

(declare-fun b!5788919 () Bool)

(declare-fun e!3555268 () Bool)

(assert (=> b!5788919 (= e!3555268 (nullable!5833 (regOne!32114 (reg!16130 r!7292))))))

(declare-fun b!5788920 () Bool)

(assert (=> b!5788920 (= c!1024988 e!3555268)))

(declare-fun res!2442630 () Bool)

(assert (=> b!5788920 (=> (not res!2442630) (not e!3555268))))

(assert (=> b!5788920 (= res!2442630 ((_ is Concat!24646) (reg!16130 r!7292)))))

(assert (=> b!5788920 (= e!3555272 e!3555270)))

(declare-fun b!5788921 () Bool)

(assert (=> b!5788921 (= e!3555273 call!450822)))

(declare-fun b!5788922 () Bool)

(assert (=> b!5788922 (= e!3555270 e!3555273)))

(assert (=> b!5788922 (= c!1024990 ((_ is Concat!24646) (reg!16130 r!7292)))))

(declare-fun b!5788923 () Bool)

(assert (=> b!5788923 (= e!3555269 (store ((as const (Array Context!10370 Bool)) false) (Context!10371 lt!2296787) true))))

(declare-fun bm!450817 () Bool)

(assert (=> bm!450817 (= call!450823 call!450818)))

(declare-fun bm!450818 () Bool)

(assert (=> bm!450818 (= call!450821 call!450820)))

(declare-fun b!5788924 () Bool)

(assert (=> b!5788924 (= e!3555272 ((_ map or) call!450819 call!450818))))

(assert (= (and d!1823710 c!1024989) b!5788923))

(assert (= (and d!1823710 (not c!1024989)) b!5788914))

(assert (= (and b!5788914 c!1024987) b!5788924))

(assert (= (and b!5788914 (not c!1024987)) b!5788920))

(assert (= (and b!5788920 res!2442630) b!5788919))

(assert (= (and b!5788920 c!1024988) b!5788915))

(assert (= (and b!5788920 (not c!1024988)) b!5788922))

(assert (= (and b!5788922 c!1024990) b!5788921))

(assert (= (and b!5788922 (not c!1024990)) b!5788916))

(assert (= (and b!5788916 c!1024991) b!5788917))

(assert (= (and b!5788916 (not c!1024991)) b!5788918))

(assert (= (or b!5788921 b!5788917) bm!450818))

(assert (= (or b!5788921 b!5788917) bm!450815))

(assert (= (or b!5788915 bm!450818) bm!450816))

(assert (= (or b!5788915 bm!450815) bm!450817))

(assert (= (or b!5788924 bm!450817) bm!450814))

(assert (= (or b!5788924 b!5788915) bm!450813))

(declare-fun m!6732826 () Bool)

(assert (=> b!5788923 m!6732826))

(declare-fun m!6732828 () Bool)

(assert (=> b!5788919 m!6732828))

(declare-fun m!6732830 () Bool)

(assert (=> bm!450814 m!6732830))

(declare-fun m!6732832 () Bool)

(assert (=> bm!450813 m!6732832))

(declare-fun m!6732834 () Bool)

(assert (=> bm!450816 m!6732834))

(assert (=> b!5788543 d!1823710))

(declare-fun d!1823720 () Bool)

(assert (=> d!1823720 (= (flatMap!1408 lt!2296791 lambda!315604) (choose!43955 lt!2296791 lambda!315604))))

(declare-fun bs!1366624 () Bool)

(assert (= bs!1366624 d!1823720))

(declare-fun m!6732836 () Bool)

(assert (=> bs!1366624 m!6732836))

(assert (=> b!5788543 d!1823720))

(declare-fun e!3555276 () (InoxSet Context!10370))

(declare-fun call!450824 () (InoxSet Context!10370))

(declare-fun b!5788929 () Bool)

(assert (=> b!5788929 (= e!3555276 ((_ map or) call!450824 (derivationStepZipperUp!1065 (Context!10371 (t!377045 (exprs!5685 lt!2296789))) (h!70028 s!2326))))))

(declare-fun bm!450819 () Bool)

(assert (=> bm!450819 (= call!450824 (derivationStepZipperDown!1139 (h!70026 (exprs!5685 lt!2296789)) (Context!10371 (t!377045 (exprs!5685 lt!2296789))) (h!70028 s!2326)))))

(declare-fun b!5788930 () Bool)

(declare-fun e!3555277 () (InoxSet Context!10370))

(assert (=> b!5788930 (= e!3555277 ((as const (Array Context!10370 Bool)) false))))

(declare-fun b!5788932 () Bool)

(declare-fun e!3555278 () Bool)

(assert (=> b!5788932 (= e!3555278 (nullable!5833 (h!70026 (exprs!5685 lt!2296789))))))

(declare-fun b!5788933 () Bool)

(assert (=> b!5788933 (= e!3555277 call!450824)))

(declare-fun d!1823722 () Bool)

(declare-fun c!1024993 () Bool)

(assert (=> d!1823722 (= c!1024993 e!3555278)))

(declare-fun res!2442635 () Bool)

(assert (=> d!1823722 (=> (not res!2442635) (not e!3555278))))

(assert (=> d!1823722 (= res!2442635 ((_ is Cons!63578) (exprs!5685 lt!2296789)))))

(assert (=> d!1823722 (= (derivationStepZipperUp!1065 lt!2296789 (h!70028 s!2326)) e!3555276)))

(declare-fun b!5788931 () Bool)

(assert (=> b!5788931 (= e!3555276 e!3555277)))

(declare-fun c!1024992 () Bool)

(assert (=> b!5788931 (= c!1024992 ((_ is Cons!63578) (exprs!5685 lt!2296789)))))

(assert (= (and d!1823722 res!2442635) b!5788932))

(assert (= (and d!1823722 c!1024993) b!5788929))

(assert (= (and d!1823722 (not c!1024993)) b!5788931))

(assert (= (and b!5788931 c!1024992) b!5788933))

(assert (= (and b!5788931 (not c!1024992)) b!5788930))

(assert (= (or b!5788929 b!5788933) bm!450819))

(declare-fun m!6732838 () Bool)

(assert (=> b!5788929 m!6732838))

(declare-fun m!6732840 () Bool)

(assert (=> bm!450819 m!6732840))

(declare-fun m!6732842 () Bool)

(assert (=> b!5788932 m!6732842))

(assert (=> b!5788543 d!1823722))

(declare-fun d!1823724 () Bool)

(assert (=> d!1823724 (= (flatMap!1408 lt!2296791 lambda!315604) (dynLambda!24892 lambda!315604 lt!2296789))))

(declare-fun lt!2296844 () Unit!156862)

(assert (=> d!1823724 (= lt!2296844 (choose!43956 lt!2296791 lt!2296789 lambda!315604))))

(assert (=> d!1823724 (= lt!2296791 (store ((as const (Array Context!10370 Bool)) false) lt!2296789 true))))

(assert (=> d!1823724 (= (lemmaFlatMapOnSingletonSet!940 lt!2296791 lt!2296789 lambda!315604) lt!2296844)))

(declare-fun b_lambda!218227 () Bool)

(assert (=> (not b_lambda!218227) (not d!1823724)))

(declare-fun bs!1366628 () Bool)

(assert (= bs!1366628 d!1823724))

(assert (=> bs!1366628 m!6732612))

(declare-fun m!6732844 () Bool)

(assert (=> bs!1366628 m!6732844))

(declare-fun m!6732846 () Bool)

(assert (=> bs!1366628 m!6732846))

(assert (=> bs!1366628 m!6732614))

(assert (=> b!5788543 d!1823724))

(declare-fun bs!1366638 () Bool)

(declare-fun d!1823726 () Bool)

(assert (= bs!1366638 (and d!1823726 d!1823664)))

(declare-fun lambda!315647 () Int)

(assert (=> bs!1366638 (= lambda!315647 lambda!315610)))

(declare-fun bs!1366639 () Bool)

(assert (= bs!1366639 (and d!1823726 d!1823676)))

(assert (=> bs!1366639 (= lambda!315647 lambda!315618)))

(declare-fun b!5788964 () Bool)

(declare-fun e!3555299 () Regex!15801)

(declare-fun e!3555295 () Regex!15801)

(assert (=> b!5788964 (= e!3555299 e!3555295)))

(declare-fun c!1025002 () Bool)

(assert (=> b!5788964 (= c!1025002 ((_ is Cons!63578) (exprs!5685 (h!70027 zl!343))))))

(declare-fun b!5788965 () Bool)

(declare-fun e!3555297 () Bool)

(assert (=> b!5788965 (= e!3555297 (isEmpty!35485 (t!377045 (exprs!5685 (h!70027 zl!343)))))))

(declare-fun b!5788966 () Bool)

(declare-fun e!3555298 () Bool)

(declare-fun e!3555296 () Bool)

(assert (=> b!5788966 (= e!3555298 e!3555296)))

(declare-fun c!1025004 () Bool)

(assert (=> b!5788966 (= c!1025004 (isEmpty!35485 (tail!11320 (exprs!5685 (h!70027 zl!343)))))))

(declare-fun b!5788967 () Bool)

(assert (=> b!5788967 (= e!3555295 (Concat!24646 (h!70026 (exprs!5685 (h!70027 zl!343))) (generalisedConcat!1416 (t!377045 (exprs!5685 (h!70027 zl!343))))))))

(declare-fun b!5788968 () Bool)

(declare-fun lt!2296850 () Regex!15801)

(assert (=> b!5788968 (= e!3555296 (= lt!2296850 (head!12225 (exprs!5685 (h!70027 zl!343)))))))

(declare-fun e!3555300 () Bool)

(assert (=> d!1823726 e!3555300))

(declare-fun res!2442650 () Bool)

(assert (=> d!1823726 (=> (not res!2442650) (not e!3555300))))

(assert (=> d!1823726 (= res!2442650 (validRegex!7537 lt!2296850))))

(assert (=> d!1823726 (= lt!2296850 e!3555299)))

(declare-fun c!1025005 () Bool)

(assert (=> d!1823726 (= c!1025005 e!3555297)))

(declare-fun res!2442651 () Bool)

(assert (=> d!1823726 (=> (not res!2442651) (not e!3555297))))

(assert (=> d!1823726 (= res!2442651 ((_ is Cons!63578) (exprs!5685 (h!70027 zl!343))))))

(assert (=> d!1823726 (forall!14915 (exprs!5685 (h!70027 zl!343)) lambda!315647)))

(assert (=> d!1823726 (= (generalisedConcat!1416 (exprs!5685 (h!70027 zl!343))) lt!2296850)))

(declare-fun b!5788969 () Bool)

(assert (=> b!5788969 (= e!3555295 EmptyExpr!15801)))

(declare-fun b!5788970 () Bool)

(declare-fun isConcat!804 (Regex!15801) Bool)

(assert (=> b!5788970 (= e!3555296 (isConcat!804 lt!2296850))))

(declare-fun b!5788971 () Bool)

(assert (=> b!5788971 (= e!3555300 e!3555298)))

(declare-fun c!1025003 () Bool)

(assert (=> b!5788971 (= c!1025003 (isEmpty!35485 (exprs!5685 (h!70027 zl!343))))))

(declare-fun b!5788972 () Bool)

(declare-fun isEmptyExpr!1281 (Regex!15801) Bool)

(assert (=> b!5788972 (= e!3555298 (isEmptyExpr!1281 lt!2296850))))

(declare-fun b!5788973 () Bool)

(assert (=> b!5788973 (= e!3555299 (h!70026 (exprs!5685 (h!70027 zl!343))))))

(assert (= (and d!1823726 res!2442651) b!5788965))

(assert (= (and d!1823726 c!1025005) b!5788973))

(assert (= (and d!1823726 (not c!1025005)) b!5788964))

(assert (= (and b!5788964 c!1025002) b!5788967))

(assert (= (and b!5788964 (not c!1025002)) b!5788969))

(assert (= (and d!1823726 res!2442650) b!5788971))

(assert (= (and b!5788971 c!1025003) b!5788972))

(assert (= (and b!5788971 (not c!1025003)) b!5788966))

(assert (= (and b!5788966 c!1025004) b!5788968))

(assert (= (and b!5788966 (not c!1025004)) b!5788970))

(declare-fun m!6732868 () Bool)

(assert (=> b!5788965 m!6732868))

(declare-fun m!6732870 () Bool)

(assert (=> b!5788966 m!6732870))

(assert (=> b!5788966 m!6732870))

(declare-fun m!6732872 () Bool)

(assert (=> b!5788966 m!6732872))

(declare-fun m!6732874 () Bool)

(assert (=> b!5788972 m!6732874))

(declare-fun m!6732876 () Bool)

(assert (=> b!5788968 m!6732876))

(declare-fun m!6732878 () Bool)

(assert (=> b!5788971 m!6732878))

(declare-fun m!6732880 () Bool)

(assert (=> b!5788967 m!6732880))

(declare-fun m!6732882 () Bool)

(assert (=> d!1823726 m!6732882))

(declare-fun m!6732884 () Bool)

(assert (=> d!1823726 m!6732884))

(declare-fun m!6732886 () Bool)

(assert (=> b!5788970 m!6732886))

(assert (=> b!5788541 d!1823726))

(declare-fun bs!1366640 () Bool)

(declare-fun d!1823740 () Bool)

(assert (= bs!1366640 (and d!1823740 d!1823664)))

(declare-fun lambda!315650 () Int)

(assert (=> bs!1366640 (= lambda!315650 lambda!315610)))

(declare-fun bs!1366641 () Bool)

(assert (= bs!1366641 (and d!1823740 d!1823676)))

(assert (=> bs!1366641 (= lambda!315650 lambda!315618)))

(declare-fun bs!1366642 () Bool)

(assert (= bs!1366642 (and d!1823740 d!1823726)))

(assert (=> bs!1366642 (= lambda!315650 lambda!315647)))

(assert (=> d!1823740 (= (inv!82749 (h!70027 zl!343)) (forall!14915 (exprs!5685 (h!70027 zl!343)) lambda!315650))))

(declare-fun bs!1366643 () Bool)

(assert (= bs!1366643 d!1823740))

(declare-fun m!6732888 () Bool)

(assert (=> bs!1366643 m!6732888))

(assert (=> b!5788530 d!1823740))

(declare-fun bs!1366652 () Bool)

(declare-fun b!5789095 () Bool)

(assert (= bs!1366652 (and b!5789095 b!5788529)))

(declare-fun lambda!315658 () Int)

(assert (=> bs!1366652 (not (= lambda!315658 lambda!315601))))

(assert (=> bs!1366652 (= lambda!315658 lambda!315602)))

(assert (=> bs!1366652 (not (= lambda!315658 lambda!315603))))

(assert (=> b!5789095 true))

(assert (=> b!5789095 true))

(declare-fun bs!1366653 () Bool)

(declare-fun b!5789094 () Bool)

(assert (= bs!1366653 (and b!5789094 b!5788529)))

(declare-fun lambda!315659 () Int)

(assert (=> bs!1366653 (not (= lambda!315659 lambda!315601))))

(assert (=> bs!1366653 (not (= lambda!315659 lambda!315602))))

(assert (=> bs!1366653 (= (and (= (regOne!32114 r!7292) (reg!16130 r!7292)) (= (regTwo!32114 r!7292) r!7292)) (= lambda!315659 lambda!315603))))

(declare-fun bs!1366654 () Bool)

(assert (= bs!1366654 (and b!5789094 b!5789095)))

(assert (=> bs!1366654 (not (= lambda!315659 lambda!315658))))

(assert (=> b!5789094 true))

(assert (=> b!5789094 true))

(declare-fun b!5789091 () Bool)

(declare-fun e!3555360 () Bool)

(declare-fun e!3555362 () Bool)

(assert (=> b!5789091 (= e!3555360 e!3555362)))

(declare-fun c!1025022 () Bool)

(assert (=> b!5789091 (= c!1025022 ((_ is Star!15801) r!7292))))

(declare-fun b!5789092 () Bool)

(declare-fun c!1025020 () Bool)

(assert (=> b!5789092 (= c!1025020 ((_ is ElementMatch!15801) r!7292))))

(declare-fun e!3555365 () Bool)

(declare-fun e!3555363 () Bool)

(assert (=> b!5789092 (= e!3555365 e!3555363)))

(declare-fun b!5789093 () Bool)

(declare-fun c!1025021 () Bool)

(assert (=> b!5789093 (= c!1025021 ((_ is Union!15801) r!7292))))

(assert (=> b!5789093 (= e!3555363 e!3555360)))

(declare-fun call!450830 () Bool)

(assert (=> b!5789094 (= e!3555362 call!450830)))

(declare-fun e!3555361 () Bool)

(assert (=> b!5789095 (= e!3555361 call!450830)))

(declare-fun b!5789096 () Bool)

(declare-fun e!3555359 () Bool)

(declare-fun call!450829 () Bool)

(assert (=> b!5789096 (= e!3555359 call!450829)))

(declare-fun b!5789097 () Bool)

(assert (=> b!5789097 (= e!3555363 (= s!2326 (Cons!63580 (c!1024863 r!7292) Nil!63580)))))

(declare-fun b!5789098 () Bool)

(declare-fun e!3555364 () Bool)

(assert (=> b!5789098 (= e!3555360 e!3555364)))

(declare-fun res!2442688 () Bool)

(assert (=> b!5789098 (= res!2442688 (matchRSpec!2904 (regOne!32115 r!7292) s!2326))))

(assert (=> b!5789098 (=> res!2442688 e!3555364)))

(declare-fun d!1823742 () Bool)

(declare-fun c!1025023 () Bool)

(assert (=> d!1823742 (= c!1025023 ((_ is EmptyExpr!15801) r!7292))))

(assert (=> d!1823742 (= (matchRSpec!2904 r!7292 s!2326) e!3555359)))

(declare-fun b!5789099 () Bool)

(assert (=> b!5789099 (= e!3555359 e!3555365)))

(declare-fun res!2442687 () Bool)

(assert (=> b!5789099 (= res!2442687 (not ((_ is EmptyLang!15801) r!7292)))))

(assert (=> b!5789099 (=> (not res!2442687) (not e!3555365))))

(declare-fun bm!450824 () Bool)

(assert (=> bm!450824 (= call!450829 (isEmpty!35484 s!2326))))

(declare-fun b!5789100 () Bool)

(assert (=> b!5789100 (= e!3555364 (matchRSpec!2904 (regTwo!32115 r!7292) s!2326))))

(declare-fun bm!450825 () Bool)

(assert (=> bm!450825 (= call!450830 (Exists!2901 (ite c!1025022 lambda!315658 lambda!315659)))))

(declare-fun b!5789101 () Bool)

(declare-fun res!2442689 () Bool)

(assert (=> b!5789101 (=> res!2442689 e!3555361)))

(assert (=> b!5789101 (= res!2442689 call!450829)))

(assert (=> b!5789101 (= e!3555362 e!3555361)))

(assert (= (and d!1823742 c!1025023) b!5789096))

(assert (= (and d!1823742 (not c!1025023)) b!5789099))

(assert (= (and b!5789099 res!2442687) b!5789092))

(assert (= (and b!5789092 c!1025020) b!5789097))

(assert (= (and b!5789092 (not c!1025020)) b!5789093))

(assert (= (and b!5789093 c!1025021) b!5789098))

(assert (= (and b!5789093 (not c!1025021)) b!5789091))

(assert (= (and b!5789098 (not res!2442688)) b!5789100))

(assert (= (and b!5789091 c!1025022) b!5789101))

(assert (= (and b!5789091 (not c!1025022)) b!5789094))

(assert (= (and b!5789101 (not res!2442689)) b!5789095))

(assert (= (or b!5789095 b!5789094) bm!450825))

(assert (= (or b!5789096 b!5789101) bm!450824))

(declare-fun m!6732918 () Bool)

(assert (=> b!5789098 m!6732918))

(assert (=> bm!450824 m!6732586))

(declare-fun m!6732920 () Bool)

(assert (=> b!5789100 m!6732920))

(declare-fun m!6732922 () Bool)

(assert (=> bm!450825 m!6732922))

(assert (=> b!5788548 d!1823742))

(declare-fun d!1823752 () Bool)

(declare-fun e!3555385 () Bool)

(assert (=> d!1823752 e!3555385))

(declare-fun c!1025032 () Bool)

(assert (=> d!1823752 (= c!1025032 ((_ is EmptyExpr!15801) r!7292))))

(declare-fun lt!2296865 () Bool)

(declare-fun e!3555384 () Bool)

(assert (=> d!1823752 (= lt!2296865 e!3555384)))

(declare-fun c!1025030 () Bool)

(assert (=> d!1823752 (= c!1025030 (isEmpty!35484 s!2326))))

(assert (=> d!1823752 (validRegex!7537 r!7292)))

(assert (=> d!1823752 (= (matchR!7986 r!7292 s!2326) lt!2296865)))

(declare-fun b!5789130 () Bool)

(declare-fun res!2442710 () Bool)

(declare-fun e!3555386 () Bool)

(assert (=> b!5789130 (=> res!2442710 e!3555386)))

(assert (=> b!5789130 (= res!2442710 (not ((_ is ElementMatch!15801) r!7292)))))

(declare-fun e!3555381 () Bool)

(assert (=> b!5789130 (= e!3555381 e!3555386)))

(declare-fun b!5789131 () Bool)

(declare-fun res!2442707 () Bool)

(declare-fun e!3555383 () Bool)

(assert (=> b!5789131 (=> (not res!2442707) (not e!3555383))))

(declare-fun call!450833 () Bool)

(assert (=> b!5789131 (= res!2442707 (not call!450833))))

(declare-fun b!5789132 () Bool)

(declare-fun res!2442713 () Bool)

(declare-fun e!3555382 () Bool)

(assert (=> b!5789132 (=> res!2442713 e!3555382)))

(declare-fun tail!11322 (List!63704) List!63704)

(assert (=> b!5789132 (= res!2442713 (not (isEmpty!35484 (tail!11322 s!2326))))))

(declare-fun b!5789133 () Bool)

(declare-fun e!3555380 () Bool)

(assert (=> b!5789133 (= e!3555380 e!3555382)))

(declare-fun res!2442712 () Bool)

(assert (=> b!5789133 (=> res!2442712 e!3555382)))

(assert (=> b!5789133 (= res!2442712 call!450833)))

(declare-fun b!5789134 () Bool)

(declare-fun head!12227 (List!63704) C!31872)

(assert (=> b!5789134 (= e!3555383 (= (head!12227 s!2326) (c!1024863 r!7292)))))

(declare-fun b!5789135 () Bool)

(assert (=> b!5789135 (= e!3555386 e!3555380)))

(declare-fun res!2442708 () Bool)

(assert (=> b!5789135 (=> (not res!2442708) (not e!3555380))))

(assert (=> b!5789135 (= res!2442708 (not lt!2296865))))

(declare-fun b!5789136 () Bool)

(assert (=> b!5789136 (= e!3555385 (= lt!2296865 call!450833))))

(declare-fun b!5789137 () Bool)

(assert (=> b!5789137 (= e!3555385 e!3555381)))

(declare-fun c!1025031 () Bool)

(assert (=> b!5789137 (= c!1025031 ((_ is EmptyLang!15801) r!7292))))

(declare-fun b!5789138 () Bool)

(assert (=> b!5789138 (= e!3555384 (nullable!5833 r!7292))))

(declare-fun b!5789139 () Bool)

(declare-fun derivativeStep!4576 (Regex!15801 C!31872) Regex!15801)

(assert (=> b!5789139 (= e!3555384 (matchR!7986 (derivativeStep!4576 r!7292 (head!12227 s!2326)) (tail!11322 s!2326)))))

(declare-fun b!5789140 () Bool)

(declare-fun res!2442709 () Bool)

(assert (=> b!5789140 (=> res!2442709 e!3555386)))

(assert (=> b!5789140 (= res!2442709 e!3555383)))

(declare-fun res!2442706 () Bool)

(assert (=> b!5789140 (=> (not res!2442706) (not e!3555383))))

(assert (=> b!5789140 (= res!2442706 lt!2296865)))

(declare-fun b!5789141 () Bool)

(assert (=> b!5789141 (= e!3555381 (not lt!2296865))))

(declare-fun b!5789142 () Bool)

(declare-fun res!2442711 () Bool)

(assert (=> b!5789142 (=> (not res!2442711) (not e!3555383))))

(assert (=> b!5789142 (= res!2442711 (isEmpty!35484 (tail!11322 s!2326)))))

(declare-fun bm!450828 () Bool)

(assert (=> bm!450828 (= call!450833 (isEmpty!35484 s!2326))))

(declare-fun b!5789143 () Bool)

(assert (=> b!5789143 (= e!3555382 (not (= (head!12227 s!2326) (c!1024863 r!7292))))))

(assert (= (and d!1823752 c!1025030) b!5789138))

(assert (= (and d!1823752 (not c!1025030)) b!5789139))

(assert (= (and d!1823752 c!1025032) b!5789136))

(assert (= (and d!1823752 (not c!1025032)) b!5789137))

(assert (= (and b!5789137 c!1025031) b!5789141))

(assert (= (and b!5789137 (not c!1025031)) b!5789130))

(assert (= (and b!5789130 (not res!2442710)) b!5789140))

(assert (= (and b!5789140 res!2442706) b!5789131))

(assert (= (and b!5789131 res!2442707) b!5789142))

(assert (= (and b!5789142 res!2442711) b!5789134))

(assert (= (and b!5789140 (not res!2442709)) b!5789135))

(assert (= (and b!5789135 res!2442708) b!5789133))

(assert (= (and b!5789133 (not res!2442712)) b!5789132))

(assert (= (and b!5789132 (not res!2442713)) b!5789143))

(assert (= (or b!5789136 b!5789131 b!5789133) bm!450828))

(declare-fun m!6732924 () Bool)

(assert (=> b!5789134 m!6732924))

(declare-fun m!6732926 () Bool)

(assert (=> b!5789142 m!6732926))

(assert (=> b!5789142 m!6732926))

(declare-fun m!6732928 () Bool)

(assert (=> b!5789142 m!6732928))

(assert (=> b!5789143 m!6732924))

(assert (=> b!5789139 m!6732924))

(assert (=> b!5789139 m!6732924))

(declare-fun m!6732930 () Bool)

(assert (=> b!5789139 m!6732930))

(assert (=> b!5789139 m!6732926))

(assert (=> b!5789139 m!6732930))

(assert (=> b!5789139 m!6732926))

(declare-fun m!6732932 () Bool)

(assert (=> b!5789139 m!6732932))

(assert (=> b!5789132 m!6732926))

(assert (=> b!5789132 m!6732926))

(assert (=> b!5789132 m!6732928))

(declare-fun m!6732934 () Bool)

(assert (=> b!5789138 m!6732934))

(assert (=> d!1823752 m!6732586))

(assert (=> d!1823752 m!6732628))

(assert (=> bm!450828 m!6732586))

(assert (=> b!5788548 d!1823752))

(declare-fun d!1823754 () Bool)

(assert (=> d!1823754 (= (matchR!7986 r!7292 s!2326) (matchRSpec!2904 r!7292 s!2326))))

(declare-fun lt!2296868 () Unit!156862)

(declare-fun choose!43960 (Regex!15801 List!63704) Unit!156862)

(assert (=> d!1823754 (= lt!2296868 (choose!43960 r!7292 s!2326))))

(assert (=> d!1823754 (validRegex!7537 r!7292)))

(assert (=> d!1823754 (= (mainMatchTheorem!2904 r!7292 s!2326) lt!2296868)))

(declare-fun bs!1366655 () Bool)

(assert (= bs!1366655 d!1823754))

(assert (=> bs!1366655 m!6732622))

(assert (=> bs!1366655 m!6732620))

(declare-fun m!6732936 () Bool)

(assert (=> bs!1366655 m!6732936))

(assert (=> bs!1366655 m!6732628))

(assert (=> b!5788548 d!1823754))

(declare-fun bs!1366656 () Bool)

(declare-fun d!1823756 () Bool)

(assert (= bs!1366656 (and d!1823756 d!1823664)))

(declare-fun lambda!315660 () Int)

(assert (=> bs!1366656 (= lambda!315660 lambda!315610)))

(declare-fun bs!1366657 () Bool)

(assert (= bs!1366657 (and d!1823756 d!1823676)))

(assert (=> bs!1366657 (= lambda!315660 lambda!315618)))

(declare-fun bs!1366658 () Bool)

(assert (= bs!1366658 (and d!1823756 d!1823726)))

(assert (=> bs!1366658 (= lambda!315660 lambda!315647)))

(declare-fun bs!1366659 () Bool)

(assert (= bs!1366659 (and d!1823756 d!1823740)))

(assert (=> bs!1366659 (= lambda!315660 lambda!315650)))

(assert (=> d!1823756 (= (inv!82749 setElem!38900) (forall!14915 (exprs!5685 setElem!38900) lambda!315660))))

(declare-fun bs!1366660 () Bool)

(assert (= bs!1366660 d!1823756))

(declare-fun m!6732938 () Bool)

(assert (=> bs!1366660 m!6732938))

(assert (=> setNonEmpty!38900 d!1823756))

(declare-fun c!1025033 () Bool)

(declare-fun call!450835 () (InoxSet Context!10370))

(declare-fun bm!450829 () Bool)

(declare-fun call!450836 () List!63702)

(assert (=> bm!450829 (= call!450835 (derivationStepZipperDown!1139 (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292)) (ite c!1025033 (Context!10371 Nil!63578) (Context!10371 call!450836)) (h!70028 s!2326)))))

(declare-fun b!5789144 () Bool)

(declare-fun e!3555388 () (InoxSet Context!10370))

(declare-fun e!3555391 () (InoxSet Context!10370))

(assert (=> b!5789144 (= e!3555388 e!3555391)))

(assert (=> b!5789144 (= c!1025033 ((_ is Union!15801) r!7292))))

(declare-fun d!1823758 () Bool)

(declare-fun c!1025035 () Bool)

(assert (=> d!1823758 (= c!1025035 (and ((_ is ElementMatch!15801) r!7292) (= (c!1024863 r!7292) (h!70028 s!2326))))))

(assert (=> d!1823758 (= (derivationStepZipperDown!1139 r!7292 (Context!10371 Nil!63578) (h!70028 s!2326)) e!3555388)))

(declare-fun c!1025034 () Bool)

(declare-fun call!450837 () List!63702)

(declare-fun call!450834 () (InoxSet Context!10370))

(declare-fun c!1025036 () Bool)

(declare-fun bm!450830 () Bool)

(assert (=> bm!450830 (= call!450834 (derivationStepZipperDown!1139 (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292)))) (ite (or c!1025033 c!1025034) (Context!10371 Nil!63578) (Context!10371 call!450837)) (h!70028 s!2326)))))

(declare-fun b!5789145 () Bool)

(declare-fun e!3555389 () (InoxSet Context!10370))

(declare-fun call!450839 () (InoxSet Context!10370))

(assert (=> b!5789145 (= e!3555389 ((_ map or) call!450835 call!450839))))

(declare-fun b!5789146 () Bool)

(declare-fun c!1025037 () Bool)

(assert (=> b!5789146 (= c!1025037 ((_ is Star!15801) r!7292))))

(declare-fun e!3555392 () (InoxSet Context!10370))

(declare-fun e!3555390 () (InoxSet Context!10370))

(assert (=> b!5789146 (= e!3555392 e!3555390)))

(declare-fun bm!450831 () Bool)

(declare-fun call!450838 () (InoxSet Context!10370))

(assert (=> bm!450831 (= call!450838 call!450839)))

(declare-fun b!5789147 () Bool)

(assert (=> b!5789147 (= e!3555390 call!450838)))

(declare-fun b!5789148 () Bool)

(assert (=> b!5789148 (= e!3555390 ((as const (Array Context!10370 Bool)) false))))

(declare-fun bm!450832 () Bool)

(assert (=> bm!450832 (= call!450836 ($colon$colon!1788 (exprs!5685 (Context!10371 Nil!63578)) (ite (or c!1025034 c!1025036) (regTwo!32114 r!7292) r!7292)))))

(declare-fun b!5789149 () Bool)

(declare-fun e!3555387 () Bool)

(assert (=> b!5789149 (= e!3555387 (nullable!5833 (regOne!32114 r!7292)))))

(declare-fun b!5789150 () Bool)

(assert (=> b!5789150 (= c!1025034 e!3555387)))

(declare-fun res!2442714 () Bool)

(assert (=> b!5789150 (=> (not res!2442714) (not e!3555387))))

(assert (=> b!5789150 (= res!2442714 ((_ is Concat!24646) r!7292))))

(assert (=> b!5789150 (= e!3555391 e!3555389)))

(declare-fun b!5789151 () Bool)

(assert (=> b!5789151 (= e!3555392 call!450838)))

(declare-fun b!5789152 () Bool)

(assert (=> b!5789152 (= e!3555389 e!3555392)))

(assert (=> b!5789152 (= c!1025036 ((_ is Concat!24646) r!7292))))

(declare-fun b!5789153 () Bool)

(assert (=> b!5789153 (= e!3555388 (store ((as const (Array Context!10370 Bool)) false) (Context!10371 Nil!63578) true))))

(declare-fun bm!450833 () Bool)

(assert (=> bm!450833 (= call!450839 call!450834)))

(declare-fun bm!450834 () Bool)

(assert (=> bm!450834 (= call!450837 call!450836)))

(declare-fun b!5789154 () Bool)

(assert (=> b!5789154 (= e!3555391 ((_ map or) call!450835 call!450834))))

(assert (= (and d!1823758 c!1025035) b!5789153))

(assert (= (and d!1823758 (not c!1025035)) b!5789144))

(assert (= (and b!5789144 c!1025033) b!5789154))

(assert (= (and b!5789144 (not c!1025033)) b!5789150))

(assert (= (and b!5789150 res!2442714) b!5789149))

(assert (= (and b!5789150 c!1025034) b!5789145))

(assert (= (and b!5789150 (not c!1025034)) b!5789152))

(assert (= (and b!5789152 c!1025036) b!5789151))

(assert (= (and b!5789152 (not c!1025036)) b!5789146))

(assert (= (and b!5789146 c!1025037) b!5789147))

(assert (= (and b!5789146 (not c!1025037)) b!5789148))

(assert (= (or b!5789151 b!5789147) bm!450834))

(assert (= (or b!5789151 b!5789147) bm!450831))

(assert (= (or b!5789145 bm!450834) bm!450832))

(assert (= (or b!5789145 bm!450831) bm!450833))

(assert (= (or b!5789154 bm!450833) bm!450830))

(assert (= (or b!5789154 b!5789145) bm!450829))

(declare-fun m!6732940 () Bool)

(assert (=> b!5789153 m!6732940))

(declare-fun m!6732942 () Bool)

(assert (=> b!5789149 m!6732942))

(declare-fun m!6732944 () Bool)

(assert (=> bm!450830 m!6732944))

(declare-fun m!6732946 () Bool)

(assert (=> bm!450829 m!6732946))

(declare-fun m!6732948 () Bool)

(assert (=> bm!450832 m!6732948))

(assert (=> b!5788539 d!1823758))

(declare-fun b!5789155 () Bool)

(declare-fun e!3555393 () (InoxSet Context!10370))

(declare-fun call!450840 () (InoxSet Context!10370))

(assert (=> b!5789155 (= e!3555393 ((_ map or) call!450840 (derivationStepZipperUp!1065 (Context!10371 (t!377045 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) (h!70028 s!2326))))))

(declare-fun bm!450835 () Bool)

(assert (=> bm!450835 (= call!450840 (derivationStepZipperDown!1139 (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578)))) (Context!10371 (t!377045 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) (h!70028 s!2326)))))

(declare-fun b!5789156 () Bool)

(declare-fun e!3555394 () (InoxSet Context!10370))

(assert (=> b!5789156 (= e!3555394 ((as const (Array Context!10370 Bool)) false))))

(declare-fun b!5789158 () Bool)

(declare-fun e!3555395 () Bool)

(assert (=> b!5789158 (= e!3555395 (nullable!5833 (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))))))

(declare-fun b!5789159 () Bool)

(assert (=> b!5789159 (= e!3555394 call!450840)))

(declare-fun d!1823760 () Bool)

(declare-fun c!1025039 () Bool)

(assert (=> d!1823760 (= c!1025039 e!3555395)))

(declare-fun res!2442715 () Bool)

(assert (=> d!1823760 (=> (not res!2442715) (not e!3555395))))

(assert (=> d!1823760 (= res!2442715 ((_ is Cons!63578) (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578)))))))

(assert (=> d!1823760 (= (derivationStepZipperUp!1065 (Context!10371 (Cons!63578 r!7292 Nil!63578)) (h!70028 s!2326)) e!3555393)))

(declare-fun b!5789157 () Bool)

(assert (=> b!5789157 (= e!3555393 e!3555394)))

(declare-fun c!1025038 () Bool)

(assert (=> b!5789157 (= c!1025038 ((_ is Cons!63578) (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578)))))))

(assert (= (and d!1823760 res!2442715) b!5789158))

(assert (= (and d!1823760 c!1025039) b!5789155))

(assert (= (and d!1823760 (not c!1025039)) b!5789157))

(assert (= (and b!5789157 c!1025038) b!5789159))

(assert (= (and b!5789157 (not c!1025038)) b!5789156))

(assert (= (or b!5789155 b!5789159) bm!450835))

(declare-fun m!6732950 () Bool)

(assert (=> b!5789155 m!6732950))

(declare-fun m!6732952 () Bool)

(assert (=> bm!450835 m!6732952))

(declare-fun m!6732954 () Bool)

(assert (=> b!5789158 m!6732954))

(assert (=> b!5788539 d!1823760))

(declare-fun bs!1366661 () Bool)

(declare-fun d!1823762 () Bool)

(assert (= bs!1366661 (and d!1823762 b!5788534)))

(declare-fun lambda!315663 () Int)

(assert (=> bs!1366661 (= lambda!315663 lambda!315604)))

(assert (=> d!1823762 true))

(assert (=> d!1823762 (= (derivationStepZipper!1870 z!1189 (h!70028 s!2326)) (flatMap!1408 z!1189 lambda!315663))))

(declare-fun bs!1366662 () Bool)

(assert (= bs!1366662 d!1823762))

(declare-fun m!6732956 () Bool)

(assert (=> bs!1366662 m!6732956))

(assert (=> b!5788539 d!1823762))

(declare-fun d!1823764 () Bool)

(declare-fun choose!43961 (Int) Bool)

(assert (=> d!1823764 (= (Exists!2901 lambda!315602) (choose!43961 lambda!315602))))

(declare-fun bs!1366663 () Bool)

(assert (= bs!1366663 d!1823764))

(declare-fun m!6732958 () Bool)

(assert (=> bs!1366663 m!6732958))

(assert (=> b!5788529 d!1823764))

(declare-fun d!1823766 () Bool)

(declare-fun isEmpty!35488 (Option!15810) Bool)

(assert (=> d!1823766 (= (isDefined!12513 (findConcatSeparation!2224 (reg!16130 r!7292) r!7292 Nil!63580 s!2326 s!2326)) (not (isEmpty!35488 (findConcatSeparation!2224 (reg!16130 r!7292) r!7292 Nil!63580 s!2326 s!2326))))))

(declare-fun bs!1366664 () Bool)

(assert (= bs!1366664 d!1823766))

(assert (=> bs!1366664 m!6732594))

(declare-fun m!6732960 () Bool)

(assert (=> bs!1366664 m!6732960))

(assert (=> b!5788529 d!1823766))

(declare-fun bs!1366665 () Bool)

(declare-fun d!1823768 () Bool)

(assert (= bs!1366665 (and d!1823768 b!5788529)))

(declare-fun lambda!315668 () Int)

(assert (=> bs!1366665 (not (= lambda!315668 lambda!315603))))

(declare-fun bs!1366666 () Bool)

(assert (= bs!1366666 (and d!1823768 b!5789095)))

(assert (=> bs!1366666 (not (= lambda!315668 lambda!315658))))

(declare-fun bs!1366667 () Bool)

(assert (= bs!1366667 (and d!1823768 b!5789094)))

(assert (=> bs!1366667 (not (= lambda!315668 lambda!315659))))

(assert (=> bs!1366665 (= lambda!315668 lambda!315601)))

(assert (=> bs!1366665 (not (= lambda!315668 lambda!315602))))

(assert (=> d!1823768 true))

(assert (=> d!1823768 true))

(assert (=> d!1823768 true))

(declare-fun lambda!315669 () Int)

(assert (=> bs!1366665 (= lambda!315669 lambda!315603)))

(assert (=> bs!1366666 (not (= lambda!315669 lambda!315658))))

(declare-fun bs!1366668 () Bool)

(assert (= bs!1366668 d!1823768))

(assert (=> bs!1366668 (not (= lambda!315669 lambda!315668))))

(assert (=> bs!1366667 (= (and (= (reg!16130 r!7292) (regOne!32114 r!7292)) (= r!7292 (regTwo!32114 r!7292))) (= lambda!315669 lambda!315659))))

(assert (=> bs!1366665 (not (= lambda!315669 lambda!315601))))

(assert (=> bs!1366665 (not (= lambda!315669 lambda!315602))))

(assert (=> d!1823768 true))

(assert (=> d!1823768 true))

(assert (=> d!1823768 true))

(assert (=> d!1823768 (= (Exists!2901 lambda!315668) (Exists!2901 lambda!315669))))

(declare-fun lt!2296871 () Unit!156862)

(declare-fun choose!43963 (Regex!15801 Regex!15801 List!63704) Unit!156862)

(assert (=> d!1823768 (= lt!2296871 (choose!43963 (reg!16130 r!7292) r!7292 s!2326))))

(assert (=> d!1823768 (validRegex!7537 (reg!16130 r!7292))))

(assert (=> d!1823768 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1530 (reg!16130 r!7292) r!7292 s!2326) lt!2296871)))

(declare-fun m!6732962 () Bool)

(assert (=> bs!1366668 m!6732962))

(declare-fun m!6732964 () Bool)

(assert (=> bs!1366668 m!6732964))

(declare-fun m!6732966 () Bool)

(assert (=> bs!1366668 m!6732966))

(declare-fun m!6732968 () Bool)

(assert (=> bs!1366668 m!6732968))

(assert (=> b!5788529 d!1823768))

(declare-fun bs!1366669 () Bool)

(declare-fun d!1823770 () Bool)

(assert (= bs!1366669 (and d!1823770 b!5788529)))

(declare-fun lambda!315674 () Int)

(assert (=> bs!1366669 (not (= lambda!315674 lambda!315603))))

(declare-fun bs!1366670 () Bool)

(assert (= bs!1366670 (and d!1823770 b!5789095)))

(assert (=> bs!1366670 (not (= lambda!315674 lambda!315658))))

(declare-fun bs!1366671 () Bool)

(assert (= bs!1366671 (and d!1823770 d!1823768)))

(assert (=> bs!1366671 (= (= (Star!15801 (reg!16130 r!7292)) r!7292) (= lambda!315674 lambda!315668))))

(declare-fun bs!1366672 () Bool)

(assert (= bs!1366672 (and d!1823770 b!5789094)))

(assert (=> bs!1366672 (not (= lambda!315674 lambda!315659))))

(assert (=> bs!1366671 (not (= lambda!315674 lambda!315669))))

(assert (=> bs!1366669 (= (= (Star!15801 (reg!16130 r!7292)) r!7292) (= lambda!315674 lambda!315601))))

(assert (=> bs!1366669 (not (= lambda!315674 lambda!315602))))

(assert (=> d!1823770 true))

(assert (=> d!1823770 true))

(declare-fun lambda!315675 () Int)

(assert (=> bs!1366669 (not (= lambda!315675 lambda!315603))))

(assert (=> bs!1366670 (= (= (Star!15801 (reg!16130 r!7292)) r!7292) (= lambda!315675 lambda!315658))))

(assert (=> bs!1366671 (not (= lambda!315675 lambda!315668))))

(assert (=> bs!1366672 (not (= lambda!315675 lambda!315659))))

(assert (=> bs!1366671 (not (= lambda!315675 lambda!315669))))

(assert (=> bs!1366669 (not (= lambda!315675 lambda!315601))))

(assert (=> bs!1366669 (= (= (Star!15801 (reg!16130 r!7292)) r!7292) (= lambda!315675 lambda!315602))))

(declare-fun bs!1366673 () Bool)

(assert (= bs!1366673 d!1823770))

(assert (=> bs!1366673 (not (= lambda!315675 lambda!315674))))

(assert (=> d!1823770 true))

(assert (=> d!1823770 true))

(assert (=> d!1823770 (= (Exists!2901 lambda!315674) (Exists!2901 lambda!315675))))

(declare-fun lt!2296874 () Unit!156862)

(declare-fun choose!43964 (Regex!15801 List!63704) Unit!156862)

(assert (=> d!1823770 (= lt!2296874 (choose!43964 (reg!16130 r!7292) s!2326))))

(assert (=> d!1823770 (validRegex!7537 (reg!16130 r!7292))))

(assert (=> d!1823770 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!582 (reg!16130 r!7292) s!2326) lt!2296874)))

(declare-fun m!6732970 () Bool)

(assert (=> bs!1366673 m!6732970))

(declare-fun m!6732972 () Bool)

(assert (=> bs!1366673 m!6732972))

(declare-fun m!6732974 () Bool)

(assert (=> bs!1366673 m!6732974))

(assert (=> bs!1366673 m!6732968))

(assert (=> b!5788529 d!1823770))

(declare-fun d!1823772 () Bool)

(assert (=> d!1823772 (= (Exists!2901 lambda!315603) (choose!43961 lambda!315603))))

(declare-fun bs!1366674 () Bool)

(assert (= bs!1366674 d!1823772))

(declare-fun m!6732976 () Bool)

(assert (=> bs!1366674 m!6732976))

(assert (=> b!5788529 d!1823772))

(declare-fun d!1823774 () Bool)

(assert (=> d!1823774 (= (isEmpty!35484 s!2326) ((_ is Nil!63580) s!2326))))

(assert (=> b!5788529 d!1823774))

(declare-fun d!1823776 () Bool)

(assert (=> d!1823776 (= (Exists!2901 lambda!315601) (choose!43961 lambda!315601))))

(declare-fun bs!1366675 () Bool)

(assert (= bs!1366675 d!1823776))

(declare-fun m!6732978 () Bool)

(assert (=> bs!1366675 m!6732978))

(assert (=> b!5788529 d!1823776))

(declare-fun b!5789198 () Bool)

(declare-fun e!3555417 () Bool)

(declare-fun lt!2296882 () Option!15810)

(declare-fun ++!14019 (List!63704 List!63704) List!63704)

(declare-fun get!21945 (Option!15810) tuple2!65796)

(assert (=> b!5789198 (= e!3555417 (= (++!14019 (_1!36201 (get!21945 lt!2296882)) (_2!36201 (get!21945 lt!2296882))) s!2326))))

(declare-fun b!5789199 () Bool)

(declare-fun e!3555415 () Bool)

(assert (=> b!5789199 (= e!3555415 (matchR!7986 r!7292 s!2326))))

(declare-fun b!5789200 () Bool)

(declare-fun res!2442745 () Bool)

(assert (=> b!5789200 (=> (not res!2442745) (not e!3555417))))

(assert (=> b!5789200 (= res!2442745 (matchR!7986 r!7292 (_2!36201 (get!21945 lt!2296882))))))

(declare-fun b!5789201 () Bool)

(declare-fun e!3555416 () Bool)

(assert (=> b!5789201 (= e!3555416 (not (isDefined!12513 lt!2296882)))))

(declare-fun d!1823778 () Bool)

(assert (=> d!1823778 e!3555416))

(declare-fun res!2442748 () Bool)

(assert (=> d!1823778 (=> res!2442748 e!3555416)))

(assert (=> d!1823778 (= res!2442748 e!3555417)))

(declare-fun res!2442746 () Bool)

(assert (=> d!1823778 (=> (not res!2442746) (not e!3555417))))

(assert (=> d!1823778 (= res!2442746 (isDefined!12513 lt!2296882))))

(declare-fun e!3555418 () Option!15810)

(assert (=> d!1823778 (= lt!2296882 e!3555418)))

(declare-fun c!1025047 () Bool)

(assert (=> d!1823778 (= c!1025047 e!3555415)))

(declare-fun res!2442747 () Bool)

(assert (=> d!1823778 (=> (not res!2442747) (not e!3555415))))

(assert (=> d!1823778 (= res!2442747 (matchR!7986 (reg!16130 r!7292) Nil!63580))))

(assert (=> d!1823778 (validRegex!7537 (reg!16130 r!7292))))

(assert (=> d!1823778 (= (findConcatSeparation!2224 (reg!16130 r!7292) r!7292 Nil!63580 s!2326 s!2326) lt!2296882)))

(declare-fun b!5789202 () Bool)

(declare-fun e!3555414 () Option!15810)

(assert (=> b!5789202 (= e!3555418 e!3555414)))

(declare-fun c!1025046 () Bool)

(assert (=> b!5789202 (= c!1025046 ((_ is Nil!63580) s!2326))))

(declare-fun b!5789203 () Bool)

(assert (=> b!5789203 (= e!3555414 None!15809)))

(declare-fun b!5789204 () Bool)

(declare-fun res!2442744 () Bool)

(assert (=> b!5789204 (=> (not res!2442744) (not e!3555417))))

(assert (=> b!5789204 (= res!2442744 (matchR!7986 (reg!16130 r!7292) (_1!36201 (get!21945 lt!2296882))))))

(declare-fun b!5789205 () Bool)

(assert (=> b!5789205 (= e!3555418 (Some!15809 (tuple2!65797 Nil!63580 s!2326)))))

(declare-fun b!5789206 () Bool)

(declare-fun lt!2296883 () Unit!156862)

(declare-fun lt!2296881 () Unit!156862)

(assert (=> b!5789206 (= lt!2296883 lt!2296881)))

(assert (=> b!5789206 (= (++!14019 (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580)) (t!377047 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2126 (List!63704 C!31872 List!63704 List!63704) Unit!156862)

(assert (=> b!5789206 (= lt!2296881 (lemmaMoveElementToOtherListKeepsConcatEq!2126 Nil!63580 (h!70028 s!2326) (t!377047 s!2326) s!2326))))

(assert (=> b!5789206 (= e!3555414 (findConcatSeparation!2224 (reg!16130 r!7292) r!7292 (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580)) (t!377047 s!2326) s!2326))))

(assert (= (and d!1823778 res!2442747) b!5789199))

(assert (= (and d!1823778 c!1025047) b!5789205))

(assert (= (and d!1823778 (not c!1025047)) b!5789202))

(assert (= (and b!5789202 c!1025046) b!5789203))

(assert (= (and b!5789202 (not c!1025046)) b!5789206))

(assert (= (and d!1823778 res!2442746) b!5789204))

(assert (= (and b!5789204 res!2442744) b!5789200))

(assert (= (and b!5789200 res!2442745) b!5789198))

(assert (= (and d!1823778 (not res!2442748)) b!5789201))

(declare-fun m!6732980 () Bool)

(assert (=> b!5789201 m!6732980))

(declare-fun m!6732982 () Bool)

(assert (=> b!5789206 m!6732982))

(assert (=> b!5789206 m!6732982))

(declare-fun m!6732984 () Bool)

(assert (=> b!5789206 m!6732984))

(declare-fun m!6732986 () Bool)

(assert (=> b!5789206 m!6732986))

(assert (=> b!5789206 m!6732982))

(declare-fun m!6732988 () Bool)

(assert (=> b!5789206 m!6732988))

(assert (=> d!1823778 m!6732980))

(declare-fun m!6732990 () Bool)

(assert (=> d!1823778 m!6732990))

(assert (=> d!1823778 m!6732968))

(assert (=> b!5789199 m!6732622))

(declare-fun m!6732992 () Bool)

(assert (=> b!5789198 m!6732992))

(declare-fun m!6732994 () Bool)

(assert (=> b!5789198 m!6732994))

(assert (=> b!5789200 m!6732992))

(declare-fun m!6732996 () Bool)

(assert (=> b!5789200 m!6732996))

(assert (=> b!5789204 m!6732992))

(declare-fun m!6732998 () Bool)

(assert (=> b!5789204 m!6732998))

(assert (=> b!5788529 d!1823778))

(declare-fun bs!1366676 () Bool)

(declare-fun d!1823780 () Bool)

(assert (= bs!1366676 (and d!1823780 b!5788529)))

(declare-fun lambda!315678 () Int)

(assert (=> bs!1366676 (not (= lambda!315678 lambda!315603))))

(declare-fun bs!1366677 () Bool)

(assert (= bs!1366677 (and d!1823780 b!5789095)))

(assert (=> bs!1366677 (not (= lambda!315678 lambda!315658))))

(declare-fun bs!1366678 () Bool)

(assert (= bs!1366678 (and d!1823780 d!1823768)))

(assert (=> bs!1366678 (= lambda!315678 lambda!315668)))

(declare-fun bs!1366679 () Bool)

(assert (= bs!1366679 (and d!1823780 b!5789094)))

(assert (=> bs!1366679 (not (= lambda!315678 lambda!315659))))

(assert (=> bs!1366678 (not (= lambda!315678 lambda!315669))))

(assert (=> bs!1366676 (= lambda!315678 lambda!315601)))

(declare-fun bs!1366680 () Bool)

(assert (= bs!1366680 (and d!1823780 d!1823770)))

(assert (=> bs!1366680 (not (= lambda!315678 lambda!315675))))

(assert (=> bs!1366676 (not (= lambda!315678 lambda!315602))))

(assert (=> bs!1366680 (= (= r!7292 (Star!15801 (reg!16130 r!7292))) (= lambda!315678 lambda!315674))))

(assert (=> d!1823780 true))

(assert (=> d!1823780 true))

(assert (=> d!1823780 true))

(assert (=> d!1823780 (= (isDefined!12513 (findConcatSeparation!2224 (reg!16130 r!7292) r!7292 Nil!63580 s!2326 s!2326)) (Exists!2901 lambda!315678))))

(declare-fun lt!2296886 () Unit!156862)

(declare-fun choose!43965 (Regex!15801 Regex!15801 List!63704) Unit!156862)

(assert (=> d!1823780 (= lt!2296886 (choose!43965 (reg!16130 r!7292) r!7292 s!2326))))

(assert (=> d!1823780 (validRegex!7537 (reg!16130 r!7292))))

(assert (=> d!1823780 (= (lemmaFindConcatSeparationEquivalentToExists!1988 (reg!16130 r!7292) r!7292 s!2326) lt!2296886)))

(declare-fun bs!1366681 () Bool)

(assert (= bs!1366681 d!1823780))

(assert (=> bs!1366681 m!6732594))

(declare-fun m!6733000 () Bool)

(assert (=> bs!1366681 m!6733000))

(assert (=> bs!1366681 m!6732594))

(assert (=> bs!1366681 m!6732598))

(assert (=> bs!1366681 m!6732968))

(declare-fun m!6733002 () Bool)

(assert (=> bs!1366681 m!6733002))

(assert (=> b!5788529 d!1823780))

(declare-fun d!1823782 () Bool)

(assert (=> d!1823782 (= (isEmpty!35483 (t!377046 zl!343)) ((_ is Nil!63579) (t!377046 zl!343)))))

(assert (=> b!5788527 d!1823782))

(declare-fun b!5789215 () Bool)

(declare-fun e!3555423 () Bool)

(declare-fun tp!1597053 () Bool)

(assert (=> b!5789215 (= e!3555423 (and tp_is_empty!40855 tp!1597053))))

(assert (=> b!5788540 (= tp!1596990 e!3555423)))

(assert (= (and b!5788540 ((_ is Cons!63580) (t!377047 s!2326))) b!5789215))

(declare-fun b!5789223 () Bool)

(declare-fun e!3555429 () Bool)

(declare-fun tp!1597058 () Bool)

(assert (=> b!5789223 (= e!3555429 tp!1597058)))

(declare-fun e!3555428 () Bool)

(declare-fun b!5789222 () Bool)

(declare-fun tp!1597059 () Bool)

(assert (=> b!5789222 (= e!3555428 (and (inv!82749 (h!70027 (t!377046 zl!343))) e!3555429 tp!1597059))))

(assert (=> b!5788530 (= tp!1596987 e!3555428)))

(assert (= b!5789222 b!5789223))

(assert (= (and b!5788530 ((_ is Cons!63579) (t!377046 zl!343))) b!5789222))

(declare-fun m!6733004 () Bool)

(assert (=> b!5789222 m!6733004))

(declare-fun b!5789234 () Bool)

(declare-fun e!3555432 () Bool)

(assert (=> b!5789234 (= e!3555432 tp_is_empty!40855)))

(declare-fun b!5789237 () Bool)

(declare-fun tp!1597070 () Bool)

(declare-fun tp!1597072 () Bool)

(assert (=> b!5789237 (= e!3555432 (and tp!1597070 tp!1597072))))

(declare-fun b!5789236 () Bool)

(declare-fun tp!1597071 () Bool)

(assert (=> b!5789236 (= e!3555432 tp!1597071)))

(assert (=> b!5788544 (= tp!1596983 e!3555432)))

(declare-fun b!5789235 () Bool)

(declare-fun tp!1597073 () Bool)

(declare-fun tp!1597074 () Bool)

(assert (=> b!5789235 (= e!3555432 (and tp!1597073 tp!1597074))))

(assert (= (and b!5788544 ((_ is ElementMatch!15801) (reg!16130 r!7292))) b!5789234))

(assert (= (and b!5788544 ((_ is Concat!24646) (reg!16130 r!7292))) b!5789235))

(assert (= (and b!5788544 ((_ is Star!15801) (reg!16130 r!7292))) b!5789236))

(assert (= (and b!5788544 ((_ is Union!15801) (reg!16130 r!7292))) b!5789237))

(declare-fun b!5789242 () Bool)

(declare-fun e!3555435 () Bool)

(declare-fun tp!1597079 () Bool)

(declare-fun tp!1597080 () Bool)

(assert (=> b!5789242 (= e!3555435 (and tp!1597079 tp!1597080))))

(assert (=> b!5788536 (= tp!1596986 e!3555435)))

(assert (= (and b!5788536 ((_ is Cons!63578) (exprs!5685 (h!70027 zl!343)))) b!5789242))

(declare-fun condSetEmpty!38906 () Bool)

(assert (=> setNonEmpty!38900 (= condSetEmpty!38906 (= setRest!38900 ((as const (Array Context!10370 Bool)) false)))))

(declare-fun setRes!38906 () Bool)

(assert (=> setNonEmpty!38900 (= tp!1596991 setRes!38906)))

(declare-fun setIsEmpty!38906 () Bool)

(assert (=> setIsEmpty!38906 setRes!38906))

(declare-fun e!3555438 () Bool)

(declare-fun setElem!38906 () Context!10370)

(declare-fun tp!1597086 () Bool)

(declare-fun setNonEmpty!38906 () Bool)

(assert (=> setNonEmpty!38906 (= setRes!38906 (and tp!1597086 (inv!82749 setElem!38906) e!3555438))))

(declare-fun setRest!38906 () (InoxSet Context!10370))

(assert (=> setNonEmpty!38906 (= setRest!38900 ((_ map or) (store ((as const (Array Context!10370 Bool)) false) setElem!38906 true) setRest!38906))))

(declare-fun b!5789247 () Bool)

(declare-fun tp!1597085 () Bool)

(assert (=> b!5789247 (= e!3555438 tp!1597085)))

(assert (= (and setNonEmpty!38900 condSetEmpty!38906) setIsEmpty!38906))

(assert (= (and setNonEmpty!38900 (not condSetEmpty!38906)) setNonEmpty!38906))

(assert (= setNonEmpty!38906 b!5789247))

(declare-fun m!6733006 () Bool)

(assert (=> setNonEmpty!38906 m!6733006))

(declare-fun b!5789248 () Bool)

(declare-fun e!3555439 () Bool)

(declare-fun tp!1597087 () Bool)

(declare-fun tp!1597088 () Bool)

(assert (=> b!5789248 (= e!3555439 (and tp!1597087 tp!1597088))))

(assert (=> b!5788538 (= tp!1596989 e!3555439)))

(assert (= (and b!5788538 ((_ is Cons!63578) (exprs!5685 setElem!38900))) b!5789248))

(declare-fun b!5789249 () Bool)

(declare-fun e!3555440 () Bool)

(assert (=> b!5789249 (= e!3555440 tp_is_empty!40855)))

(declare-fun b!5789252 () Bool)

(declare-fun tp!1597089 () Bool)

(declare-fun tp!1597091 () Bool)

(assert (=> b!5789252 (= e!3555440 (and tp!1597089 tp!1597091))))

(declare-fun b!5789251 () Bool)

(declare-fun tp!1597090 () Bool)

(assert (=> b!5789251 (= e!3555440 tp!1597090)))

(assert (=> b!5788528 (= tp!1596985 e!3555440)))

(declare-fun b!5789250 () Bool)

(declare-fun tp!1597092 () Bool)

(declare-fun tp!1597093 () Bool)

(assert (=> b!5789250 (= e!3555440 (and tp!1597092 tp!1597093))))

(assert (= (and b!5788528 ((_ is ElementMatch!15801) (regOne!32114 r!7292))) b!5789249))

(assert (= (and b!5788528 ((_ is Concat!24646) (regOne!32114 r!7292))) b!5789250))

(assert (= (and b!5788528 ((_ is Star!15801) (regOne!32114 r!7292))) b!5789251))

(assert (= (and b!5788528 ((_ is Union!15801) (regOne!32114 r!7292))) b!5789252))

(declare-fun b!5789253 () Bool)

(declare-fun e!3555441 () Bool)

(assert (=> b!5789253 (= e!3555441 tp_is_empty!40855)))

(declare-fun b!5789256 () Bool)

(declare-fun tp!1597094 () Bool)

(declare-fun tp!1597096 () Bool)

(assert (=> b!5789256 (= e!3555441 (and tp!1597094 tp!1597096))))

(declare-fun b!5789255 () Bool)

(declare-fun tp!1597095 () Bool)

(assert (=> b!5789255 (= e!3555441 tp!1597095)))

(assert (=> b!5788528 (= tp!1596988 e!3555441)))

(declare-fun b!5789254 () Bool)

(declare-fun tp!1597097 () Bool)

(declare-fun tp!1597098 () Bool)

(assert (=> b!5789254 (= e!3555441 (and tp!1597097 tp!1597098))))

(assert (= (and b!5788528 ((_ is ElementMatch!15801) (regTwo!32114 r!7292))) b!5789253))

(assert (= (and b!5788528 ((_ is Concat!24646) (regTwo!32114 r!7292))) b!5789254))

(assert (= (and b!5788528 ((_ is Star!15801) (regTwo!32114 r!7292))) b!5789255))

(assert (= (and b!5788528 ((_ is Union!15801) (regTwo!32114 r!7292))) b!5789256))

(declare-fun b!5789257 () Bool)

(declare-fun e!3555442 () Bool)

(assert (=> b!5789257 (= e!3555442 tp_is_empty!40855)))

(declare-fun b!5789260 () Bool)

(declare-fun tp!1597099 () Bool)

(declare-fun tp!1597101 () Bool)

(assert (=> b!5789260 (= e!3555442 (and tp!1597099 tp!1597101))))

(declare-fun b!5789259 () Bool)

(declare-fun tp!1597100 () Bool)

(assert (=> b!5789259 (= e!3555442 tp!1597100)))

(assert (=> b!5788547 (= tp!1596992 e!3555442)))

(declare-fun b!5789258 () Bool)

(declare-fun tp!1597102 () Bool)

(declare-fun tp!1597103 () Bool)

(assert (=> b!5789258 (= e!3555442 (and tp!1597102 tp!1597103))))

(assert (= (and b!5788547 ((_ is ElementMatch!15801) (regOne!32115 r!7292))) b!5789257))

(assert (= (and b!5788547 ((_ is Concat!24646) (regOne!32115 r!7292))) b!5789258))

(assert (= (and b!5788547 ((_ is Star!15801) (regOne!32115 r!7292))) b!5789259))

(assert (= (and b!5788547 ((_ is Union!15801) (regOne!32115 r!7292))) b!5789260))

(declare-fun b!5789261 () Bool)

(declare-fun e!3555443 () Bool)

(assert (=> b!5789261 (= e!3555443 tp_is_empty!40855)))

(declare-fun b!5789264 () Bool)

(declare-fun tp!1597104 () Bool)

(declare-fun tp!1597106 () Bool)

(assert (=> b!5789264 (= e!3555443 (and tp!1597104 tp!1597106))))

(declare-fun b!5789263 () Bool)

(declare-fun tp!1597105 () Bool)

(assert (=> b!5789263 (= e!3555443 tp!1597105)))

(assert (=> b!5788547 (= tp!1596984 e!3555443)))

(declare-fun b!5789262 () Bool)

(declare-fun tp!1597107 () Bool)

(declare-fun tp!1597108 () Bool)

(assert (=> b!5789262 (= e!3555443 (and tp!1597107 tp!1597108))))

(assert (= (and b!5788547 ((_ is ElementMatch!15801) (regTwo!32115 r!7292))) b!5789261))

(assert (= (and b!5788547 ((_ is Concat!24646) (regTwo!32115 r!7292))) b!5789262))

(assert (= (and b!5788547 ((_ is Star!15801) (regTwo!32115 r!7292))) b!5789263))

(assert (= (and b!5788547 ((_ is Union!15801) (regTwo!32115 r!7292))) b!5789264))

(declare-fun b_lambda!218233 () Bool)

(assert (= b_lambda!218227 (or b!5788534 b_lambda!218233)))

(declare-fun bs!1366682 () Bool)

(declare-fun d!1823784 () Bool)

(assert (= bs!1366682 (and d!1823784 b!5788534)))

(assert (=> bs!1366682 (= (dynLambda!24892 lambda!315604 lt!2296789) (derivationStepZipperUp!1065 lt!2296789 (h!70028 s!2326)))))

(assert (=> bs!1366682 m!6732618))

(assert (=> d!1823724 d!1823784))

(declare-fun b_lambda!218235 () Bool)

(assert (= b_lambda!218225 (or b!5788534 b_lambda!218235)))

(declare-fun bs!1366683 () Bool)

(declare-fun d!1823786 () Bool)

(assert (= bs!1366683 (and d!1823786 b!5788534)))

(assert (=> bs!1366683 (= (dynLambda!24892 lambda!315604 (h!70027 zl!343)) (derivationStepZipperUp!1065 (h!70027 zl!343) (h!70028 s!2326)))))

(assert (=> bs!1366683 m!6732632))

(assert (=> d!1823698 d!1823786))

(check-sat (not b!5789251) (not d!1823726) (not b!5789252) (not d!1823682) (not d!1823776) (not b!5789247) (not bm!450757) (not b!5788919) (not b!5789250) (not b_lambda!218233) (not d!1823678) (not d!1823740) (not b!5788683) (not b!5788932) (not b!5788679) (not b_lambda!218235) (not b!5789149) (not bm!450829) (not d!1823676) (not b!5789143) (not b!5789139) (not b!5788970) (not b!5789236) (not b!5789255) (not setNonEmpty!38906) (not bm!450814) (not b!5789215) (not b!5788968) (not b!5789222) (not b!5789237) (not b!5789258) (not b!5789262) (not d!1823720) (not bm!450835) (not b!5789155) (not bs!1366683) (not b!5788734) (not b!5788971) (not b!5788677) (not b!5789142) (not d!1823768) (not bm!450816) (not b!5788684) (not bs!1366682) (not b!5789242) (not b!5789259) (not b!5789199) (not d!1823664) (not bm!450758) (not d!1823754) (not bm!450828) (not b!5788682) (not bm!450824) (not b!5788929) (not bm!450813) (not b!5788809) (not b!5789254) (not d!1823766) (not b!5789158) (not bm!450799) (not d!1823684) (not b!5788627) (not b!5788972) (not b!5788678) (not bm!450819) (not b!5789235) (not bm!450830) (not b!5789206) (not d!1823756) (not b!5788967) (not d!1823698) (not d!1823752) (not b!5788812) (not d!1823770) (not b!5789200) (not d!1823762) (not d!1823778) (not b!5788966) tp_is_empty!40855 (not b!5788766) (not d!1823764) (not b!5789201) (not b!5789198) (not b!5789248) (not b!5789256) (not d!1823724) (not bm!450832) (not b!5789132) (not d!1823780) (not bm!450825) (not b!5789223) (not b!5788686) (not b!5789098) (not b!5789100) (not b!5789204) (not b!5789263) (not b!5789134) (not b!5789264) (not b!5788965) (not b!5789260) (not b!5789138) (not d!1823772))
(check-sat)
(get-model)

(declare-fun d!1823788 () Bool)

(assert (=> d!1823788 (= (isEmpty!35484 (tail!11322 s!2326)) ((_ is Nil!63580) (tail!11322 s!2326)))))

(assert (=> b!5789142 d!1823788))

(declare-fun d!1823790 () Bool)

(assert (=> d!1823790 (= (tail!11322 s!2326) (t!377047 s!2326))))

(assert (=> b!5789142 d!1823790))

(declare-fun d!1823792 () Bool)

(assert (=> d!1823792 (= (head!12227 s!2326) (h!70028 s!2326))))

(assert (=> b!5789143 d!1823792))

(declare-fun d!1823794 () Bool)

(declare-fun res!2442757 () Bool)

(declare-fun e!3555448 () Bool)

(assert (=> d!1823794 (=> res!2442757 e!3555448)))

(assert (=> d!1823794 (= res!2442757 ((_ is Nil!63578) (exprs!5685 (h!70027 zl!343))))))

(assert (=> d!1823794 (= (forall!14915 (exprs!5685 (h!70027 zl!343)) lambda!315650) e!3555448)))

(declare-fun b!5789269 () Bool)

(declare-fun e!3555449 () Bool)

(assert (=> b!5789269 (= e!3555448 e!3555449)))

(declare-fun res!2442758 () Bool)

(assert (=> b!5789269 (=> (not res!2442758) (not e!3555449))))

(declare-fun dynLambda!24893 (Int Regex!15801) Bool)

(assert (=> b!5789269 (= res!2442758 (dynLambda!24893 lambda!315650 (h!70026 (exprs!5685 (h!70027 zl!343)))))))

(declare-fun b!5789270 () Bool)

(assert (=> b!5789270 (= e!3555449 (forall!14915 (t!377045 (exprs!5685 (h!70027 zl!343))) lambda!315650))))

(assert (= (and d!1823794 (not res!2442757)) b!5789269))

(assert (= (and b!5789269 res!2442758) b!5789270))

(declare-fun b_lambda!218237 () Bool)

(assert (=> (not b_lambda!218237) (not b!5789269)))

(declare-fun m!6733008 () Bool)

(assert (=> b!5789269 m!6733008))

(declare-fun m!6733010 () Bool)

(assert (=> b!5789270 m!6733010))

(assert (=> d!1823740 d!1823794))

(assert (=> d!1823752 d!1823774))

(assert (=> d!1823752 d!1823656))

(declare-fun call!450842 () (InoxSet Context!10370))

(declare-fun call!450843 () List!63702)

(declare-fun c!1025048 () Bool)

(declare-fun bm!450836 () Bool)

(assert (=> bm!450836 (= call!450842 (derivationStepZipperDown!1139 (ite c!1025048 (regOne!32115 (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292))) (regOne!32114 (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292)))) (ite c!1025048 (ite c!1025033 (Context!10371 Nil!63578) (Context!10371 call!450836)) (Context!10371 call!450843)) (h!70028 s!2326)))))

(declare-fun b!5789271 () Bool)

(declare-fun e!3555451 () (InoxSet Context!10370))

(declare-fun e!3555454 () (InoxSet Context!10370))

(assert (=> b!5789271 (= e!3555451 e!3555454)))

(assert (=> b!5789271 (= c!1025048 ((_ is Union!15801) (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292))))))

(declare-fun d!1823796 () Bool)

(declare-fun c!1025050 () Bool)

(assert (=> d!1823796 (= c!1025050 (and ((_ is ElementMatch!15801) (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292))) (= (c!1024863 (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292))) (h!70028 s!2326))))))

(assert (=> d!1823796 (= (derivationStepZipperDown!1139 (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292)) (ite c!1025033 (Context!10371 Nil!63578) (Context!10371 call!450836)) (h!70028 s!2326)) e!3555451)))

(declare-fun bm!450837 () Bool)

(declare-fun c!1025051 () Bool)

(declare-fun call!450844 () List!63702)

(declare-fun c!1025049 () Bool)

(declare-fun call!450841 () (InoxSet Context!10370))

(assert (=> bm!450837 (= call!450841 (derivationStepZipperDown!1139 (ite c!1025048 (regTwo!32115 (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292))) (ite c!1025049 (regTwo!32114 (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292))) (ite c!1025051 (regOne!32114 (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292))) (reg!16130 (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292)))))) (ite (or c!1025048 c!1025049) (ite c!1025033 (Context!10371 Nil!63578) (Context!10371 call!450836)) (Context!10371 call!450844)) (h!70028 s!2326)))))

(declare-fun b!5789272 () Bool)

(declare-fun e!3555452 () (InoxSet Context!10370))

(declare-fun call!450846 () (InoxSet Context!10370))

(assert (=> b!5789272 (= e!3555452 ((_ map or) call!450842 call!450846))))

(declare-fun b!5789273 () Bool)

(declare-fun c!1025052 () Bool)

(assert (=> b!5789273 (= c!1025052 ((_ is Star!15801) (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292))))))

(declare-fun e!3555455 () (InoxSet Context!10370))

(declare-fun e!3555453 () (InoxSet Context!10370))

(assert (=> b!5789273 (= e!3555455 e!3555453)))

(declare-fun bm!450838 () Bool)

(declare-fun call!450845 () (InoxSet Context!10370))

(assert (=> bm!450838 (= call!450845 call!450846)))

(declare-fun b!5789274 () Bool)

(assert (=> b!5789274 (= e!3555453 call!450845)))

(declare-fun b!5789275 () Bool)

(assert (=> b!5789275 (= e!3555453 ((as const (Array Context!10370 Bool)) false))))

(declare-fun bm!450839 () Bool)

(assert (=> bm!450839 (= call!450843 ($colon$colon!1788 (exprs!5685 (ite c!1025033 (Context!10371 Nil!63578) (Context!10371 call!450836))) (ite (or c!1025049 c!1025051) (regTwo!32114 (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292))) (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292)))))))

(declare-fun b!5789276 () Bool)

(declare-fun e!3555450 () Bool)

(assert (=> b!5789276 (= e!3555450 (nullable!5833 (regOne!32114 (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292)))))))

(declare-fun b!5789277 () Bool)

(assert (=> b!5789277 (= c!1025049 e!3555450)))

(declare-fun res!2442759 () Bool)

(assert (=> b!5789277 (=> (not res!2442759) (not e!3555450))))

(assert (=> b!5789277 (= res!2442759 ((_ is Concat!24646) (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292))))))

(assert (=> b!5789277 (= e!3555454 e!3555452)))

(declare-fun b!5789278 () Bool)

(assert (=> b!5789278 (= e!3555455 call!450845)))

(declare-fun b!5789279 () Bool)

(assert (=> b!5789279 (= e!3555452 e!3555455)))

(assert (=> b!5789279 (= c!1025051 ((_ is Concat!24646) (ite c!1025033 (regOne!32115 r!7292) (regOne!32114 r!7292))))))

(declare-fun b!5789280 () Bool)

(assert (=> b!5789280 (= e!3555451 (store ((as const (Array Context!10370 Bool)) false) (ite c!1025033 (Context!10371 Nil!63578) (Context!10371 call!450836)) true))))

(declare-fun bm!450840 () Bool)

(assert (=> bm!450840 (= call!450846 call!450841)))

(declare-fun bm!450841 () Bool)

(assert (=> bm!450841 (= call!450844 call!450843)))

(declare-fun b!5789281 () Bool)

(assert (=> b!5789281 (= e!3555454 ((_ map or) call!450842 call!450841))))

(assert (= (and d!1823796 c!1025050) b!5789280))

(assert (= (and d!1823796 (not c!1025050)) b!5789271))

(assert (= (and b!5789271 c!1025048) b!5789281))

(assert (= (and b!5789271 (not c!1025048)) b!5789277))

(assert (= (and b!5789277 res!2442759) b!5789276))

(assert (= (and b!5789277 c!1025049) b!5789272))

(assert (= (and b!5789277 (not c!1025049)) b!5789279))

(assert (= (and b!5789279 c!1025051) b!5789278))

(assert (= (and b!5789279 (not c!1025051)) b!5789273))

(assert (= (and b!5789273 c!1025052) b!5789274))

(assert (= (and b!5789273 (not c!1025052)) b!5789275))

(assert (= (or b!5789278 b!5789274) bm!450841))

(assert (= (or b!5789278 b!5789274) bm!450838))

(assert (= (or b!5789272 bm!450841) bm!450839))

(assert (= (or b!5789272 bm!450838) bm!450840))

(assert (= (or b!5789281 bm!450840) bm!450837))

(assert (= (or b!5789281 b!5789272) bm!450836))

(declare-fun m!6733012 () Bool)

(assert (=> b!5789280 m!6733012))

(declare-fun m!6733014 () Bool)

(assert (=> b!5789276 m!6733014))

(declare-fun m!6733016 () Bool)

(assert (=> bm!450837 m!6733016))

(declare-fun m!6733018 () Bool)

(assert (=> bm!450836 m!6733018))

(declare-fun m!6733020 () Bool)

(assert (=> bm!450839 m!6733020))

(assert (=> bm!450829 d!1823796))

(declare-fun c!1025053 () Bool)

(declare-fun call!450848 () (InoxSet Context!10370))

(declare-fun bm!450842 () Bool)

(declare-fun call!450849 () List!63702)

(assert (=> bm!450842 (= call!450848 (derivationStepZipperDown!1139 (ite c!1025053 (regOne!32115 (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292))))) (regOne!32114 (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292)))))) (ite c!1025053 (ite (or c!1025033 c!1025034) (Context!10371 Nil!63578) (Context!10371 call!450837)) (Context!10371 call!450849)) (h!70028 s!2326)))))

(declare-fun b!5789282 () Bool)

(declare-fun e!3555457 () (InoxSet Context!10370))

(declare-fun e!3555460 () (InoxSet Context!10370))

(assert (=> b!5789282 (= e!3555457 e!3555460)))

(assert (=> b!5789282 (= c!1025053 ((_ is Union!15801) (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292))))))))

(declare-fun d!1823798 () Bool)

(declare-fun c!1025055 () Bool)

(assert (=> d!1823798 (= c!1025055 (and ((_ is ElementMatch!15801) (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292))))) (= (c!1024863 (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292))))) (h!70028 s!2326))))))

(assert (=> d!1823798 (= (derivationStepZipperDown!1139 (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292)))) (ite (or c!1025033 c!1025034) (Context!10371 Nil!63578) (Context!10371 call!450837)) (h!70028 s!2326)) e!3555457)))

(declare-fun c!1025054 () Bool)

(declare-fun call!450850 () List!63702)

(declare-fun call!450847 () (InoxSet Context!10370))

(declare-fun bm!450843 () Bool)

(declare-fun c!1025056 () Bool)

(assert (=> bm!450843 (= call!450847 (derivationStepZipperDown!1139 (ite c!1025053 (regTwo!32115 (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292))))) (ite c!1025054 (regTwo!32114 (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292))))) (ite c!1025056 (regOne!32114 (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292))))) (reg!16130 (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292)))))))) (ite (or c!1025053 c!1025054) (ite (or c!1025033 c!1025034) (Context!10371 Nil!63578) (Context!10371 call!450837)) (Context!10371 call!450850)) (h!70028 s!2326)))))

(declare-fun b!5789283 () Bool)

(declare-fun e!3555458 () (InoxSet Context!10370))

(declare-fun call!450852 () (InoxSet Context!10370))

(assert (=> b!5789283 (= e!3555458 ((_ map or) call!450848 call!450852))))

(declare-fun b!5789284 () Bool)

(declare-fun c!1025057 () Bool)

(assert (=> b!5789284 (= c!1025057 ((_ is Star!15801) (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292))))))))

(declare-fun e!3555461 () (InoxSet Context!10370))

(declare-fun e!3555459 () (InoxSet Context!10370))

(assert (=> b!5789284 (= e!3555461 e!3555459)))

(declare-fun bm!450844 () Bool)

(declare-fun call!450851 () (InoxSet Context!10370))

(assert (=> bm!450844 (= call!450851 call!450852)))

(declare-fun b!5789285 () Bool)

(assert (=> b!5789285 (= e!3555459 call!450851)))

(declare-fun b!5789286 () Bool)

(assert (=> b!5789286 (= e!3555459 ((as const (Array Context!10370 Bool)) false))))

(declare-fun bm!450845 () Bool)

(assert (=> bm!450845 (= call!450849 ($colon$colon!1788 (exprs!5685 (ite (or c!1025033 c!1025034) (Context!10371 Nil!63578) (Context!10371 call!450837))) (ite (or c!1025054 c!1025056) (regTwo!32114 (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292))))) (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292)))))))))

(declare-fun e!3555456 () Bool)

(declare-fun b!5789287 () Bool)

(assert (=> b!5789287 (= e!3555456 (nullable!5833 (regOne!32114 (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292)))))))))

(declare-fun b!5789288 () Bool)

(assert (=> b!5789288 (= c!1025054 e!3555456)))

(declare-fun res!2442760 () Bool)

(assert (=> b!5789288 (=> (not res!2442760) (not e!3555456))))

(assert (=> b!5789288 (= res!2442760 ((_ is Concat!24646) (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292))))))))

(assert (=> b!5789288 (= e!3555460 e!3555458)))

(declare-fun b!5789289 () Bool)

(assert (=> b!5789289 (= e!3555461 call!450851)))

(declare-fun b!5789290 () Bool)

(assert (=> b!5789290 (= e!3555458 e!3555461)))

(assert (=> b!5789290 (= c!1025056 ((_ is Concat!24646) (ite c!1025033 (regTwo!32115 r!7292) (ite c!1025034 (regTwo!32114 r!7292) (ite c!1025036 (regOne!32114 r!7292) (reg!16130 r!7292))))))))

(declare-fun b!5789291 () Bool)

(assert (=> b!5789291 (= e!3555457 (store ((as const (Array Context!10370 Bool)) false) (ite (or c!1025033 c!1025034) (Context!10371 Nil!63578) (Context!10371 call!450837)) true))))

(declare-fun bm!450846 () Bool)

(assert (=> bm!450846 (= call!450852 call!450847)))

(declare-fun bm!450847 () Bool)

(assert (=> bm!450847 (= call!450850 call!450849)))

(declare-fun b!5789292 () Bool)

(assert (=> b!5789292 (= e!3555460 ((_ map or) call!450848 call!450847))))

(assert (= (and d!1823798 c!1025055) b!5789291))

(assert (= (and d!1823798 (not c!1025055)) b!5789282))

(assert (= (and b!5789282 c!1025053) b!5789292))

(assert (= (and b!5789282 (not c!1025053)) b!5789288))

(assert (= (and b!5789288 res!2442760) b!5789287))

(assert (= (and b!5789288 c!1025054) b!5789283))

(assert (= (and b!5789288 (not c!1025054)) b!5789290))

(assert (= (and b!5789290 c!1025056) b!5789289))

(assert (= (and b!5789290 (not c!1025056)) b!5789284))

(assert (= (and b!5789284 c!1025057) b!5789285))

(assert (= (and b!5789284 (not c!1025057)) b!5789286))

(assert (= (or b!5789289 b!5789285) bm!450847))

(assert (= (or b!5789289 b!5789285) bm!450844))

(assert (= (or b!5789283 bm!450847) bm!450845))

(assert (= (or b!5789283 bm!450844) bm!450846))

(assert (= (or b!5789292 bm!450846) bm!450843))

(assert (= (or b!5789292 b!5789283) bm!450842))

(declare-fun m!6733022 () Bool)

(assert (=> b!5789291 m!6733022))

(declare-fun m!6733024 () Bool)

(assert (=> b!5789287 m!6733024))

(declare-fun m!6733026 () Bool)

(assert (=> bm!450843 m!6733026))

(declare-fun m!6733028 () Bool)

(assert (=> bm!450842 m!6733028))

(declare-fun m!6733030 () Bool)

(assert (=> bm!450845 m!6733030))

(assert (=> bm!450830 d!1823798))

(assert (=> bs!1366683 d!1823686))

(declare-fun d!1823800 () Bool)

(declare-fun e!3555467 () Bool)

(assert (=> d!1823800 e!3555467))

(declare-fun c!1025060 () Bool)

(assert (=> d!1823800 (= c!1025060 ((_ is EmptyExpr!15801) r!7292))))

(declare-fun lt!2296887 () Bool)

(declare-fun e!3555466 () Bool)

(assert (=> d!1823800 (= lt!2296887 e!3555466)))

(declare-fun c!1025058 () Bool)

(assert (=> d!1823800 (= c!1025058 (isEmpty!35484 (_2!36201 (get!21945 lt!2296882))))))

(assert (=> d!1823800 (validRegex!7537 r!7292)))

(assert (=> d!1823800 (= (matchR!7986 r!7292 (_2!36201 (get!21945 lt!2296882))) lt!2296887)))

(declare-fun b!5789293 () Bool)

(declare-fun res!2442765 () Bool)

(declare-fun e!3555468 () Bool)

(assert (=> b!5789293 (=> res!2442765 e!3555468)))

(assert (=> b!5789293 (= res!2442765 (not ((_ is ElementMatch!15801) r!7292)))))

(declare-fun e!3555463 () Bool)

(assert (=> b!5789293 (= e!3555463 e!3555468)))

(declare-fun b!5789294 () Bool)

(declare-fun res!2442762 () Bool)

(declare-fun e!3555465 () Bool)

(assert (=> b!5789294 (=> (not res!2442762) (not e!3555465))))

(declare-fun call!450853 () Bool)

(assert (=> b!5789294 (= res!2442762 (not call!450853))))

(declare-fun b!5789295 () Bool)

(declare-fun res!2442768 () Bool)

(declare-fun e!3555464 () Bool)

(assert (=> b!5789295 (=> res!2442768 e!3555464)))

(assert (=> b!5789295 (= res!2442768 (not (isEmpty!35484 (tail!11322 (_2!36201 (get!21945 lt!2296882))))))))

(declare-fun b!5789296 () Bool)

(declare-fun e!3555462 () Bool)

(assert (=> b!5789296 (= e!3555462 e!3555464)))

(declare-fun res!2442767 () Bool)

(assert (=> b!5789296 (=> res!2442767 e!3555464)))

(assert (=> b!5789296 (= res!2442767 call!450853)))

(declare-fun b!5789297 () Bool)

(assert (=> b!5789297 (= e!3555465 (= (head!12227 (_2!36201 (get!21945 lt!2296882))) (c!1024863 r!7292)))))

(declare-fun b!5789298 () Bool)

(assert (=> b!5789298 (= e!3555468 e!3555462)))

(declare-fun res!2442763 () Bool)

(assert (=> b!5789298 (=> (not res!2442763) (not e!3555462))))

(assert (=> b!5789298 (= res!2442763 (not lt!2296887))))

(declare-fun b!5789299 () Bool)

(assert (=> b!5789299 (= e!3555467 (= lt!2296887 call!450853))))

(declare-fun b!5789300 () Bool)

(assert (=> b!5789300 (= e!3555467 e!3555463)))

(declare-fun c!1025059 () Bool)

(assert (=> b!5789300 (= c!1025059 ((_ is EmptyLang!15801) r!7292))))

(declare-fun b!5789301 () Bool)

(assert (=> b!5789301 (= e!3555466 (nullable!5833 r!7292))))

(declare-fun b!5789302 () Bool)

(assert (=> b!5789302 (= e!3555466 (matchR!7986 (derivativeStep!4576 r!7292 (head!12227 (_2!36201 (get!21945 lt!2296882)))) (tail!11322 (_2!36201 (get!21945 lt!2296882)))))))

(declare-fun b!5789303 () Bool)

(declare-fun res!2442764 () Bool)

(assert (=> b!5789303 (=> res!2442764 e!3555468)))

(assert (=> b!5789303 (= res!2442764 e!3555465)))

(declare-fun res!2442761 () Bool)

(assert (=> b!5789303 (=> (not res!2442761) (not e!3555465))))

(assert (=> b!5789303 (= res!2442761 lt!2296887)))

(declare-fun b!5789304 () Bool)

(assert (=> b!5789304 (= e!3555463 (not lt!2296887))))

(declare-fun b!5789305 () Bool)

(declare-fun res!2442766 () Bool)

(assert (=> b!5789305 (=> (not res!2442766) (not e!3555465))))

(assert (=> b!5789305 (= res!2442766 (isEmpty!35484 (tail!11322 (_2!36201 (get!21945 lt!2296882)))))))

(declare-fun bm!450848 () Bool)

(assert (=> bm!450848 (= call!450853 (isEmpty!35484 (_2!36201 (get!21945 lt!2296882))))))

(declare-fun b!5789306 () Bool)

(assert (=> b!5789306 (= e!3555464 (not (= (head!12227 (_2!36201 (get!21945 lt!2296882))) (c!1024863 r!7292))))))

(assert (= (and d!1823800 c!1025058) b!5789301))

(assert (= (and d!1823800 (not c!1025058)) b!5789302))

(assert (= (and d!1823800 c!1025060) b!5789299))

(assert (= (and d!1823800 (not c!1025060)) b!5789300))

(assert (= (and b!5789300 c!1025059) b!5789304))

(assert (= (and b!5789300 (not c!1025059)) b!5789293))

(assert (= (and b!5789293 (not res!2442765)) b!5789303))

(assert (= (and b!5789303 res!2442761) b!5789294))

(assert (= (and b!5789294 res!2442762) b!5789305))

(assert (= (and b!5789305 res!2442766) b!5789297))

(assert (= (and b!5789303 (not res!2442764)) b!5789298))

(assert (= (and b!5789298 res!2442763) b!5789296))

(assert (= (and b!5789296 (not res!2442767)) b!5789295))

(assert (= (and b!5789295 (not res!2442768)) b!5789306))

(assert (= (or b!5789299 b!5789294 b!5789296) bm!450848))

(declare-fun m!6733032 () Bool)

(assert (=> b!5789297 m!6733032))

(declare-fun m!6733034 () Bool)

(assert (=> b!5789305 m!6733034))

(assert (=> b!5789305 m!6733034))

(declare-fun m!6733036 () Bool)

(assert (=> b!5789305 m!6733036))

(assert (=> b!5789306 m!6733032))

(assert (=> b!5789302 m!6733032))

(assert (=> b!5789302 m!6733032))

(declare-fun m!6733038 () Bool)

(assert (=> b!5789302 m!6733038))

(assert (=> b!5789302 m!6733034))

(assert (=> b!5789302 m!6733038))

(assert (=> b!5789302 m!6733034))

(declare-fun m!6733040 () Bool)

(assert (=> b!5789302 m!6733040))

(assert (=> b!5789295 m!6733034))

(assert (=> b!5789295 m!6733034))

(assert (=> b!5789295 m!6733036))

(assert (=> b!5789301 m!6732934))

(declare-fun m!6733042 () Bool)

(assert (=> d!1823800 m!6733042))

(assert (=> d!1823800 m!6732628))

(assert (=> bm!450848 m!6733042))

(assert (=> b!5789200 d!1823800))

(declare-fun d!1823802 () Bool)

(assert (=> d!1823802 (= (get!21945 lt!2296882) (v!51869 lt!2296882))))

(assert (=> b!5789200 d!1823802))

(declare-fun bs!1366684 () Bool)

(declare-fun d!1823804 () Bool)

(assert (= bs!1366684 (and d!1823804 d!1823664)))

(declare-fun lambda!315679 () Int)

(assert (=> bs!1366684 (= lambda!315679 lambda!315610)))

(declare-fun bs!1366685 () Bool)

(assert (= bs!1366685 (and d!1823804 d!1823740)))

(assert (=> bs!1366685 (= lambda!315679 lambda!315650)))

(declare-fun bs!1366686 () Bool)

(assert (= bs!1366686 (and d!1823804 d!1823726)))

(assert (=> bs!1366686 (= lambda!315679 lambda!315647)))

(declare-fun bs!1366687 () Bool)

(assert (= bs!1366687 (and d!1823804 d!1823676)))

(assert (=> bs!1366687 (= lambda!315679 lambda!315618)))

(declare-fun bs!1366688 () Bool)

(assert (= bs!1366688 (and d!1823804 d!1823756)))

(assert (=> bs!1366688 (= lambda!315679 lambda!315660)))

(assert (=> d!1823804 (= (inv!82749 (h!70027 (t!377046 zl!343))) (forall!14915 (exprs!5685 (h!70027 (t!377046 zl!343))) lambda!315679))))

(declare-fun bs!1366689 () Bool)

(assert (= bs!1366689 d!1823804))

(declare-fun m!6733044 () Bool)

(assert (=> bs!1366689 m!6733044))

(assert (=> b!5789222 d!1823804))

(declare-fun d!1823806 () Bool)

(assert (=> d!1823806 (= (isEmpty!35485 (t!377045 (exprs!5685 (h!70027 zl!343)))) ((_ is Nil!63578) (t!377045 (exprs!5685 (h!70027 zl!343)))))))

(assert (=> b!5788965 d!1823806))

(assert (=> d!1823698 d!1823684))

(declare-fun d!1823808 () Bool)

(assert (=> d!1823808 (= (flatMap!1408 z!1189 lambda!315604) (dynLambda!24892 lambda!315604 (h!70027 zl!343)))))

(assert (=> d!1823808 true))

(declare-fun _$13!2490 () Unit!156862)

(assert (=> d!1823808 (= (choose!43956 z!1189 (h!70027 zl!343) lambda!315604) _$13!2490)))

(declare-fun b_lambda!218239 () Bool)

(assert (=> (not b_lambda!218239) (not d!1823808)))

(declare-fun bs!1366690 () Bool)

(assert (= bs!1366690 d!1823808))

(assert (=> bs!1366690 m!6732630))

(assert (=> bs!1366690 m!6732774))

(assert (=> d!1823698 d!1823808))

(declare-fun d!1823810 () Bool)

(declare-fun nullableFct!1865 (Regex!15801) Bool)

(assert (=> d!1823810 (= (nullable!5833 (regOne!32114 (reg!16130 r!7292))) (nullableFct!1865 (regOne!32114 (reg!16130 r!7292))))))

(declare-fun bs!1366691 () Bool)

(assert (= bs!1366691 d!1823810))

(declare-fun m!6733046 () Bool)

(assert (=> bs!1366691 m!6733046))

(assert (=> b!5788919 d!1823810))

(declare-fun b!5789307 () Bool)

(declare-fun res!2442771 () Bool)

(declare-fun e!3555473 () Bool)

(assert (=> b!5789307 (=> (not res!2442771) (not e!3555473))))

(declare-fun call!450856 () Bool)

(assert (=> b!5789307 (= res!2442771 call!450856)))

(declare-fun e!3555469 () Bool)

(assert (=> b!5789307 (= e!3555469 e!3555473)))

(declare-fun d!1823812 () Bool)

(declare-fun res!2442770 () Bool)

(declare-fun e!3555474 () Bool)

(assert (=> d!1823812 (=> res!2442770 e!3555474)))

(assert (=> d!1823812 (= res!2442770 ((_ is ElementMatch!15801) (ite c!1024882 (regTwo!32115 r!7292) (regTwo!32114 r!7292))))))

(assert (=> d!1823812 (= (validRegex!7537 (ite c!1024882 (regTwo!32115 r!7292) (regTwo!32114 r!7292))) e!3555474)))

(declare-fun call!450855 () Bool)

(declare-fun c!1025062 () Bool)

(declare-fun bm!450849 () Bool)

(declare-fun c!1025061 () Bool)

(assert (=> bm!450849 (= call!450855 (validRegex!7537 (ite c!1025062 (reg!16130 (ite c!1024882 (regTwo!32115 r!7292) (regTwo!32114 r!7292))) (ite c!1025061 (regOne!32115 (ite c!1024882 (regTwo!32115 r!7292) (regTwo!32114 r!7292))) (regOne!32114 (ite c!1024882 (regTwo!32115 r!7292) (regTwo!32114 r!7292)))))))))

(declare-fun b!5789308 () Bool)

(declare-fun call!450854 () Bool)

(assert (=> b!5789308 (= e!3555473 call!450854)))

(declare-fun bm!450850 () Bool)

(assert (=> bm!450850 (= call!450854 (validRegex!7537 (ite c!1025061 (regTwo!32115 (ite c!1024882 (regTwo!32115 r!7292) (regTwo!32114 r!7292))) (regTwo!32114 (ite c!1024882 (regTwo!32115 r!7292) (regTwo!32114 r!7292))))))))

(declare-fun b!5789309 () Bool)

(declare-fun e!3555470 () Bool)

(assert (=> b!5789309 (= e!3555470 call!450855)))

(declare-fun b!5789310 () Bool)

(declare-fun e!3555472 () Bool)

(assert (=> b!5789310 (= e!3555472 e!3555469)))

(assert (=> b!5789310 (= c!1025061 ((_ is Union!15801) (ite c!1024882 (regTwo!32115 r!7292) (regTwo!32114 r!7292))))))

(declare-fun b!5789311 () Bool)

(declare-fun res!2442769 () Bool)

(declare-fun e!3555475 () Bool)

(assert (=> b!5789311 (=> res!2442769 e!3555475)))

(assert (=> b!5789311 (= res!2442769 (not ((_ is Concat!24646) (ite c!1024882 (regTwo!32115 r!7292) (regTwo!32114 r!7292)))))))

(assert (=> b!5789311 (= e!3555469 e!3555475)))

(declare-fun bm!450851 () Bool)

(assert (=> bm!450851 (= call!450856 call!450855)))

(declare-fun b!5789312 () Bool)

(assert (=> b!5789312 (= e!3555472 e!3555470)))

(declare-fun res!2442773 () Bool)

(assert (=> b!5789312 (= res!2442773 (not (nullable!5833 (reg!16130 (ite c!1024882 (regTwo!32115 r!7292) (regTwo!32114 r!7292))))))))

(assert (=> b!5789312 (=> (not res!2442773) (not e!3555470))))

(declare-fun b!5789313 () Bool)

(declare-fun e!3555471 () Bool)

(assert (=> b!5789313 (= e!3555471 call!450854)))

(declare-fun b!5789314 () Bool)

(assert (=> b!5789314 (= e!3555474 e!3555472)))

(assert (=> b!5789314 (= c!1025062 ((_ is Star!15801) (ite c!1024882 (regTwo!32115 r!7292) (regTwo!32114 r!7292))))))

(declare-fun b!5789315 () Bool)

(assert (=> b!5789315 (= e!3555475 e!3555471)))

(declare-fun res!2442772 () Bool)

(assert (=> b!5789315 (=> (not res!2442772) (not e!3555471))))

(assert (=> b!5789315 (= res!2442772 call!450856)))

(assert (= (and d!1823812 (not res!2442770)) b!5789314))

(assert (= (and b!5789314 c!1025062) b!5789312))

(assert (= (and b!5789314 (not c!1025062)) b!5789310))

(assert (= (and b!5789312 res!2442773) b!5789309))

(assert (= (and b!5789310 c!1025061) b!5789307))

(assert (= (and b!5789310 (not c!1025061)) b!5789311))

(assert (= (and b!5789307 res!2442771) b!5789308))

(assert (= (and b!5789311 (not res!2442769)) b!5789315))

(assert (= (and b!5789315 res!2442772) b!5789313))

(assert (= (or b!5789308 b!5789313) bm!450850))

(assert (= (or b!5789307 b!5789315) bm!450851))

(assert (= (or b!5789309 bm!450851) bm!450849))

(declare-fun m!6733048 () Bool)

(assert (=> bm!450849 m!6733048))

(declare-fun m!6733050 () Bool)

(assert (=> bm!450850 m!6733050))

(declare-fun m!6733052 () Bool)

(assert (=> b!5789312 m!6733052))

(assert (=> bm!450758 d!1823812))

(declare-fun d!1823814 () Bool)

(assert (=> d!1823814 (= ($colon$colon!1788 (exprs!5685 (Context!10371 Nil!63578)) (ite (or c!1025034 c!1025036) (regTwo!32114 r!7292) r!7292)) (Cons!63578 (ite (or c!1025034 c!1025036) (regTwo!32114 r!7292) r!7292) (exprs!5685 (Context!10371 Nil!63578))))))

(assert (=> bm!450832 d!1823814))

(declare-fun bs!1366692 () Bool)

(declare-fun d!1823816 () Bool)

(assert (= bs!1366692 (and d!1823816 d!1823664)))

(declare-fun lambda!315680 () Int)

(assert (=> bs!1366692 (= lambda!315680 lambda!315610)))

(declare-fun bs!1366693 () Bool)

(assert (= bs!1366693 (and d!1823816 d!1823740)))

(assert (=> bs!1366693 (= lambda!315680 lambda!315650)))

(declare-fun bs!1366694 () Bool)

(assert (= bs!1366694 (and d!1823816 d!1823726)))

(assert (=> bs!1366694 (= lambda!315680 lambda!315647)))

(declare-fun bs!1366695 () Bool)

(assert (= bs!1366695 (and d!1823816 d!1823676)))

(assert (=> bs!1366695 (= lambda!315680 lambda!315618)))

(declare-fun bs!1366696 () Bool)

(assert (= bs!1366696 (and d!1823816 d!1823804)))

(assert (=> bs!1366696 (= lambda!315680 lambda!315679)))

(declare-fun bs!1366697 () Bool)

(assert (= bs!1366697 (and d!1823816 d!1823756)))

(assert (=> bs!1366697 (= lambda!315680 lambda!315660)))

(assert (=> d!1823816 (= (inv!82749 setElem!38906) (forall!14915 (exprs!5685 setElem!38906) lambda!315680))))

(declare-fun bs!1366698 () Bool)

(assert (= bs!1366698 d!1823816))

(declare-fun m!6733054 () Bool)

(assert (=> bs!1366698 m!6733054))

(assert (=> setNonEmpty!38906 d!1823816))

(declare-fun d!1823818 () Bool)

(assert (=> d!1823818 (= (head!12225 (unfocusZipperList!1229 zl!343)) (h!70026 (unfocusZipperList!1229 zl!343)))))

(assert (=> b!5788679 d!1823818))

(declare-fun bm!450852 () Bool)

(declare-fun call!450859 () List!63702)

(declare-fun call!450858 () (InoxSet Context!10370))

(declare-fun c!1025063 () Bool)

(assert (=> bm!450852 (= call!450858 (derivationStepZipperDown!1139 (ite c!1025063 (regOne!32115 (h!70026 (exprs!5685 (h!70027 zl!343)))) (regOne!32114 (h!70026 (exprs!5685 (h!70027 zl!343))))) (ite c!1025063 (Context!10371 (t!377045 (exprs!5685 (h!70027 zl!343)))) (Context!10371 call!450859)) (h!70028 s!2326)))))

(declare-fun b!5789316 () Bool)

(declare-fun e!3555477 () (InoxSet Context!10370))

(declare-fun e!3555480 () (InoxSet Context!10370))

(assert (=> b!5789316 (= e!3555477 e!3555480)))

(assert (=> b!5789316 (= c!1025063 ((_ is Union!15801) (h!70026 (exprs!5685 (h!70027 zl!343)))))))

(declare-fun d!1823820 () Bool)

(declare-fun c!1025065 () Bool)

(assert (=> d!1823820 (= c!1025065 (and ((_ is ElementMatch!15801) (h!70026 (exprs!5685 (h!70027 zl!343)))) (= (c!1024863 (h!70026 (exprs!5685 (h!70027 zl!343)))) (h!70028 s!2326))))))

(assert (=> d!1823820 (= (derivationStepZipperDown!1139 (h!70026 (exprs!5685 (h!70027 zl!343))) (Context!10371 (t!377045 (exprs!5685 (h!70027 zl!343)))) (h!70028 s!2326)) e!3555477)))

(declare-fun call!450860 () List!63702)

(declare-fun call!450857 () (InoxSet Context!10370))

(declare-fun c!1025064 () Bool)

(declare-fun c!1025066 () Bool)

(declare-fun bm!450853 () Bool)

(assert (=> bm!450853 (= call!450857 (derivationStepZipperDown!1139 (ite c!1025063 (regTwo!32115 (h!70026 (exprs!5685 (h!70027 zl!343)))) (ite c!1025064 (regTwo!32114 (h!70026 (exprs!5685 (h!70027 zl!343)))) (ite c!1025066 (regOne!32114 (h!70026 (exprs!5685 (h!70027 zl!343)))) (reg!16130 (h!70026 (exprs!5685 (h!70027 zl!343))))))) (ite (or c!1025063 c!1025064) (Context!10371 (t!377045 (exprs!5685 (h!70027 zl!343)))) (Context!10371 call!450860)) (h!70028 s!2326)))))

(declare-fun b!5789317 () Bool)

(declare-fun e!3555478 () (InoxSet Context!10370))

(declare-fun call!450862 () (InoxSet Context!10370))

(assert (=> b!5789317 (= e!3555478 ((_ map or) call!450858 call!450862))))

(declare-fun b!5789318 () Bool)

(declare-fun c!1025067 () Bool)

(assert (=> b!5789318 (= c!1025067 ((_ is Star!15801) (h!70026 (exprs!5685 (h!70027 zl!343)))))))

(declare-fun e!3555481 () (InoxSet Context!10370))

(declare-fun e!3555479 () (InoxSet Context!10370))

(assert (=> b!5789318 (= e!3555481 e!3555479)))

(declare-fun bm!450854 () Bool)

(declare-fun call!450861 () (InoxSet Context!10370))

(assert (=> bm!450854 (= call!450861 call!450862)))

(declare-fun b!5789319 () Bool)

(assert (=> b!5789319 (= e!3555479 call!450861)))

(declare-fun b!5789320 () Bool)

(assert (=> b!5789320 (= e!3555479 ((as const (Array Context!10370 Bool)) false))))

(declare-fun bm!450855 () Bool)

(assert (=> bm!450855 (= call!450859 ($colon$colon!1788 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 (h!70027 zl!343))))) (ite (or c!1025064 c!1025066) (regTwo!32114 (h!70026 (exprs!5685 (h!70027 zl!343)))) (h!70026 (exprs!5685 (h!70027 zl!343))))))))

(declare-fun b!5789321 () Bool)

(declare-fun e!3555476 () Bool)

(assert (=> b!5789321 (= e!3555476 (nullable!5833 (regOne!32114 (h!70026 (exprs!5685 (h!70027 zl!343))))))))

(declare-fun b!5789322 () Bool)

(assert (=> b!5789322 (= c!1025064 e!3555476)))

(declare-fun res!2442774 () Bool)

(assert (=> b!5789322 (=> (not res!2442774) (not e!3555476))))

(assert (=> b!5789322 (= res!2442774 ((_ is Concat!24646) (h!70026 (exprs!5685 (h!70027 zl!343)))))))

(assert (=> b!5789322 (= e!3555480 e!3555478)))

(declare-fun b!5789323 () Bool)

(assert (=> b!5789323 (= e!3555481 call!450861)))

(declare-fun b!5789324 () Bool)

(assert (=> b!5789324 (= e!3555478 e!3555481)))

(assert (=> b!5789324 (= c!1025066 ((_ is Concat!24646) (h!70026 (exprs!5685 (h!70027 zl!343)))))))

(declare-fun b!5789325 () Bool)

(assert (=> b!5789325 (= e!3555477 (store ((as const (Array Context!10370 Bool)) false) (Context!10371 (t!377045 (exprs!5685 (h!70027 zl!343)))) true))))

(declare-fun bm!450856 () Bool)

(assert (=> bm!450856 (= call!450862 call!450857)))

(declare-fun bm!450857 () Bool)

(assert (=> bm!450857 (= call!450860 call!450859)))

(declare-fun b!5789326 () Bool)

(assert (=> b!5789326 (= e!3555480 ((_ map or) call!450858 call!450857))))

(assert (= (and d!1823820 c!1025065) b!5789325))

(assert (= (and d!1823820 (not c!1025065)) b!5789316))

(assert (= (and b!5789316 c!1025063) b!5789326))

(assert (= (and b!5789316 (not c!1025063)) b!5789322))

(assert (= (and b!5789322 res!2442774) b!5789321))

(assert (= (and b!5789322 c!1025064) b!5789317))

(assert (= (and b!5789322 (not c!1025064)) b!5789324))

(assert (= (and b!5789324 c!1025066) b!5789323))

(assert (= (and b!5789324 (not c!1025066)) b!5789318))

(assert (= (and b!5789318 c!1025067) b!5789319))

(assert (= (and b!5789318 (not c!1025067)) b!5789320))

(assert (= (or b!5789323 b!5789319) bm!450857))

(assert (= (or b!5789323 b!5789319) bm!450854))

(assert (= (or b!5789317 bm!450857) bm!450855))

(assert (= (or b!5789317 bm!450854) bm!450856))

(assert (= (or b!5789326 bm!450856) bm!450853))

(assert (= (or b!5789326 b!5789317) bm!450852))

(declare-fun m!6733056 () Bool)

(assert (=> b!5789325 m!6733056))

(declare-fun m!6733058 () Bool)

(assert (=> b!5789321 m!6733058))

(declare-fun m!6733060 () Bool)

(assert (=> bm!450853 m!6733060))

(declare-fun m!6733062 () Bool)

(assert (=> bm!450852 m!6733062))

(declare-fun m!6733064 () Bool)

(assert (=> bm!450855 m!6733064))

(assert (=> bm!450799 d!1823820))

(declare-fun b!5789327 () Bool)

(declare-fun res!2442777 () Bool)

(declare-fun e!3555486 () Bool)

(assert (=> b!5789327 (=> (not res!2442777) (not e!3555486))))

(declare-fun call!450865 () Bool)

(assert (=> b!5789327 (= res!2442777 call!450865)))

(declare-fun e!3555482 () Bool)

(assert (=> b!5789327 (= e!3555482 e!3555486)))

(declare-fun d!1823822 () Bool)

(declare-fun res!2442776 () Bool)

(declare-fun e!3555487 () Bool)

(assert (=> d!1823822 (=> res!2442776 e!3555487)))

(assert (=> d!1823822 (= res!2442776 ((_ is ElementMatch!15801) lt!2296815))))

(assert (=> d!1823822 (= (validRegex!7537 lt!2296815) e!3555487)))

(declare-fun bm!450858 () Bool)

(declare-fun call!450864 () Bool)

(declare-fun c!1025068 () Bool)

(declare-fun c!1025069 () Bool)

(assert (=> bm!450858 (= call!450864 (validRegex!7537 (ite c!1025069 (reg!16130 lt!2296815) (ite c!1025068 (regOne!32115 lt!2296815) (regOne!32114 lt!2296815)))))))

(declare-fun b!5789328 () Bool)

(declare-fun call!450863 () Bool)

(assert (=> b!5789328 (= e!3555486 call!450863)))

(declare-fun bm!450859 () Bool)

(assert (=> bm!450859 (= call!450863 (validRegex!7537 (ite c!1025068 (regTwo!32115 lt!2296815) (regTwo!32114 lt!2296815))))))

(declare-fun b!5789329 () Bool)

(declare-fun e!3555483 () Bool)

(assert (=> b!5789329 (= e!3555483 call!450864)))

(declare-fun b!5789330 () Bool)

(declare-fun e!3555485 () Bool)

(assert (=> b!5789330 (= e!3555485 e!3555482)))

(assert (=> b!5789330 (= c!1025068 ((_ is Union!15801) lt!2296815))))

(declare-fun b!5789331 () Bool)

(declare-fun res!2442775 () Bool)

(declare-fun e!3555488 () Bool)

(assert (=> b!5789331 (=> res!2442775 e!3555488)))

(assert (=> b!5789331 (= res!2442775 (not ((_ is Concat!24646) lt!2296815)))))

(assert (=> b!5789331 (= e!3555482 e!3555488)))

(declare-fun bm!450860 () Bool)

(assert (=> bm!450860 (= call!450865 call!450864)))

(declare-fun b!5789332 () Bool)

(assert (=> b!5789332 (= e!3555485 e!3555483)))

(declare-fun res!2442779 () Bool)

(assert (=> b!5789332 (= res!2442779 (not (nullable!5833 (reg!16130 lt!2296815))))))

(assert (=> b!5789332 (=> (not res!2442779) (not e!3555483))))

(declare-fun b!5789333 () Bool)

(declare-fun e!3555484 () Bool)

(assert (=> b!5789333 (= e!3555484 call!450863)))

(declare-fun b!5789334 () Bool)

(assert (=> b!5789334 (= e!3555487 e!3555485)))

(assert (=> b!5789334 (= c!1025069 ((_ is Star!15801) lt!2296815))))

(declare-fun b!5789335 () Bool)

(assert (=> b!5789335 (= e!3555488 e!3555484)))

(declare-fun res!2442778 () Bool)

(assert (=> b!5789335 (=> (not res!2442778) (not e!3555484))))

(assert (=> b!5789335 (= res!2442778 call!450865)))

(assert (= (and d!1823822 (not res!2442776)) b!5789334))

(assert (= (and b!5789334 c!1025069) b!5789332))

(assert (= (and b!5789334 (not c!1025069)) b!5789330))

(assert (= (and b!5789332 res!2442779) b!5789329))

(assert (= (and b!5789330 c!1025068) b!5789327))

(assert (= (and b!5789330 (not c!1025068)) b!5789331))

(assert (= (and b!5789327 res!2442777) b!5789328))

(assert (= (and b!5789331 (not res!2442775)) b!5789335))

(assert (= (and b!5789335 res!2442778) b!5789333))

(assert (= (or b!5789328 b!5789333) bm!450859))

(assert (= (or b!5789327 b!5789335) bm!450860))

(assert (= (or b!5789329 bm!450860) bm!450858))

(declare-fun m!6733066 () Bool)

(assert (=> bm!450858 m!6733066))

(declare-fun m!6733068 () Bool)

(assert (=> bm!450859 m!6733068))

(declare-fun m!6733070 () Bool)

(assert (=> b!5789332 m!6733070))

(assert (=> d!1823678 d!1823822))

(assert (=> d!1823678 d!1823664))

(assert (=> d!1823678 d!1823676))

(declare-fun d!1823824 () Bool)

(declare-fun e!3555494 () Bool)

(assert (=> d!1823824 e!3555494))

(declare-fun c!1025072 () Bool)

(assert (=> d!1823824 (= c!1025072 ((_ is EmptyExpr!15801) (reg!16130 r!7292)))))

(declare-fun lt!2296888 () Bool)

(declare-fun e!3555493 () Bool)

(assert (=> d!1823824 (= lt!2296888 e!3555493)))

(declare-fun c!1025070 () Bool)

(assert (=> d!1823824 (= c!1025070 (isEmpty!35484 (_1!36201 (get!21945 lt!2296882))))))

(assert (=> d!1823824 (validRegex!7537 (reg!16130 r!7292))))

(assert (=> d!1823824 (= (matchR!7986 (reg!16130 r!7292) (_1!36201 (get!21945 lt!2296882))) lt!2296888)))

(declare-fun b!5789336 () Bool)

(declare-fun res!2442784 () Bool)

(declare-fun e!3555495 () Bool)

(assert (=> b!5789336 (=> res!2442784 e!3555495)))

(assert (=> b!5789336 (= res!2442784 (not ((_ is ElementMatch!15801) (reg!16130 r!7292))))))

(declare-fun e!3555490 () Bool)

(assert (=> b!5789336 (= e!3555490 e!3555495)))

(declare-fun b!5789337 () Bool)

(declare-fun res!2442781 () Bool)

(declare-fun e!3555492 () Bool)

(assert (=> b!5789337 (=> (not res!2442781) (not e!3555492))))

(declare-fun call!450866 () Bool)

(assert (=> b!5789337 (= res!2442781 (not call!450866))))

(declare-fun b!5789338 () Bool)

(declare-fun res!2442787 () Bool)

(declare-fun e!3555491 () Bool)

(assert (=> b!5789338 (=> res!2442787 e!3555491)))

(assert (=> b!5789338 (= res!2442787 (not (isEmpty!35484 (tail!11322 (_1!36201 (get!21945 lt!2296882))))))))

(declare-fun b!5789339 () Bool)

(declare-fun e!3555489 () Bool)

(assert (=> b!5789339 (= e!3555489 e!3555491)))

(declare-fun res!2442786 () Bool)

(assert (=> b!5789339 (=> res!2442786 e!3555491)))

(assert (=> b!5789339 (= res!2442786 call!450866)))

(declare-fun b!5789340 () Bool)

(assert (=> b!5789340 (= e!3555492 (= (head!12227 (_1!36201 (get!21945 lt!2296882))) (c!1024863 (reg!16130 r!7292))))))

(declare-fun b!5789341 () Bool)

(assert (=> b!5789341 (= e!3555495 e!3555489)))

(declare-fun res!2442782 () Bool)

(assert (=> b!5789341 (=> (not res!2442782) (not e!3555489))))

(assert (=> b!5789341 (= res!2442782 (not lt!2296888))))

(declare-fun b!5789342 () Bool)

(assert (=> b!5789342 (= e!3555494 (= lt!2296888 call!450866))))

(declare-fun b!5789343 () Bool)

(assert (=> b!5789343 (= e!3555494 e!3555490)))

(declare-fun c!1025071 () Bool)

(assert (=> b!5789343 (= c!1025071 ((_ is EmptyLang!15801) (reg!16130 r!7292)))))

(declare-fun b!5789344 () Bool)

(assert (=> b!5789344 (= e!3555493 (nullable!5833 (reg!16130 r!7292)))))

(declare-fun b!5789345 () Bool)

(assert (=> b!5789345 (= e!3555493 (matchR!7986 (derivativeStep!4576 (reg!16130 r!7292) (head!12227 (_1!36201 (get!21945 lt!2296882)))) (tail!11322 (_1!36201 (get!21945 lt!2296882)))))))

(declare-fun b!5789346 () Bool)

(declare-fun res!2442783 () Bool)

(assert (=> b!5789346 (=> res!2442783 e!3555495)))

(assert (=> b!5789346 (= res!2442783 e!3555492)))

(declare-fun res!2442780 () Bool)

(assert (=> b!5789346 (=> (not res!2442780) (not e!3555492))))

(assert (=> b!5789346 (= res!2442780 lt!2296888)))

(declare-fun b!5789347 () Bool)

(assert (=> b!5789347 (= e!3555490 (not lt!2296888))))

(declare-fun b!5789348 () Bool)

(declare-fun res!2442785 () Bool)

(assert (=> b!5789348 (=> (not res!2442785) (not e!3555492))))

(assert (=> b!5789348 (= res!2442785 (isEmpty!35484 (tail!11322 (_1!36201 (get!21945 lt!2296882)))))))

(declare-fun bm!450861 () Bool)

(assert (=> bm!450861 (= call!450866 (isEmpty!35484 (_1!36201 (get!21945 lt!2296882))))))

(declare-fun b!5789349 () Bool)

(assert (=> b!5789349 (= e!3555491 (not (= (head!12227 (_1!36201 (get!21945 lt!2296882))) (c!1024863 (reg!16130 r!7292)))))))

(assert (= (and d!1823824 c!1025070) b!5789344))

(assert (= (and d!1823824 (not c!1025070)) b!5789345))

(assert (= (and d!1823824 c!1025072) b!5789342))

(assert (= (and d!1823824 (not c!1025072)) b!5789343))

(assert (= (and b!5789343 c!1025071) b!5789347))

(assert (= (and b!5789343 (not c!1025071)) b!5789336))

(assert (= (and b!5789336 (not res!2442784)) b!5789346))

(assert (= (and b!5789346 res!2442780) b!5789337))

(assert (= (and b!5789337 res!2442781) b!5789348))

(assert (= (and b!5789348 res!2442785) b!5789340))

(assert (= (and b!5789346 (not res!2442783)) b!5789341))

(assert (= (and b!5789341 res!2442782) b!5789339))

(assert (= (and b!5789339 (not res!2442786)) b!5789338))

(assert (= (and b!5789338 (not res!2442787)) b!5789349))

(assert (= (or b!5789342 b!5789337 b!5789339) bm!450861))

(declare-fun m!6733072 () Bool)

(assert (=> b!5789340 m!6733072))

(declare-fun m!6733074 () Bool)

(assert (=> b!5789348 m!6733074))

(assert (=> b!5789348 m!6733074))

(declare-fun m!6733076 () Bool)

(assert (=> b!5789348 m!6733076))

(assert (=> b!5789349 m!6733072))

(assert (=> b!5789345 m!6733072))

(assert (=> b!5789345 m!6733072))

(declare-fun m!6733078 () Bool)

(assert (=> b!5789345 m!6733078))

(assert (=> b!5789345 m!6733074))

(assert (=> b!5789345 m!6733078))

(assert (=> b!5789345 m!6733074))

(declare-fun m!6733080 () Bool)

(assert (=> b!5789345 m!6733080))

(assert (=> b!5789338 m!6733074))

(assert (=> b!5789338 m!6733074))

(assert (=> b!5789338 m!6733076))

(assert (=> b!5789344 m!6732648))

(declare-fun m!6733082 () Bool)

(assert (=> d!1823824 m!6733082))

(assert (=> d!1823824 m!6732968))

(assert (=> bm!450861 m!6733082))

(assert (=> b!5789204 d!1823824))

(assert (=> b!5789204 d!1823802))

(declare-fun b!5789358 () Bool)

(declare-fun e!3555500 () List!63704)

(assert (=> b!5789358 (= e!3555500 (t!377047 s!2326))))

(declare-fun b!5789361 () Bool)

(declare-fun e!3555501 () Bool)

(declare-fun lt!2296891 () List!63704)

(assert (=> b!5789361 (= e!3555501 (or (not (= (t!377047 s!2326) Nil!63580)) (= lt!2296891 (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580)))))))

(declare-fun b!5789359 () Bool)

(assert (=> b!5789359 (= e!3555500 (Cons!63580 (h!70028 (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580))) (++!14019 (t!377047 (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580))) (t!377047 s!2326))))))

(declare-fun d!1823826 () Bool)

(assert (=> d!1823826 e!3555501))

(declare-fun res!2442792 () Bool)

(assert (=> d!1823826 (=> (not res!2442792) (not e!3555501))))

(declare-fun content!11630 (List!63704) (InoxSet C!31872))

(assert (=> d!1823826 (= res!2442792 (= (content!11630 lt!2296891) ((_ map or) (content!11630 (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580))) (content!11630 (t!377047 s!2326)))))))

(assert (=> d!1823826 (= lt!2296891 e!3555500)))

(declare-fun c!1025075 () Bool)

(assert (=> d!1823826 (= c!1025075 ((_ is Nil!63580) (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580))))))

(assert (=> d!1823826 (= (++!14019 (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580)) (t!377047 s!2326)) lt!2296891)))

(declare-fun b!5789360 () Bool)

(declare-fun res!2442793 () Bool)

(assert (=> b!5789360 (=> (not res!2442793) (not e!3555501))))

(declare-fun size!40094 (List!63704) Int)

(assert (=> b!5789360 (= res!2442793 (= (size!40094 lt!2296891) (+ (size!40094 (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580))) (size!40094 (t!377047 s!2326)))))))

(assert (= (and d!1823826 c!1025075) b!5789358))

(assert (= (and d!1823826 (not c!1025075)) b!5789359))

(assert (= (and d!1823826 res!2442792) b!5789360))

(assert (= (and b!5789360 res!2442793) b!5789361))

(declare-fun m!6733084 () Bool)

(assert (=> b!5789359 m!6733084))

(declare-fun m!6733086 () Bool)

(assert (=> d!1823826 m!6733086))

(assert (=> d!1823826 m!6732982))

(declare-fun m!6733088 () Bool)

(assert (=> d!1823826 m!6733088))

(declare-fun m!6733090 () Bool)

(assert (=> d!1823826 m!6733090))

(declare-fun m!6733092 () Bool)

(assert (=> b!5789360 m!6733092))

(assert (=> b!5789360 m!6732982))

(declare-fun m!6733094 () Bool)

(assert (=> b!5789360 m!6733094))

(declare-fun m!6733096 () Bool)

(assert (=> b!5789360 m!6733096))

(assert (=> b!5789206 d!1823826))

(declare-fun b!5789362 () Bool)

(declare-fun e!3555502 () List!63704)

(assert (=> b!5789362 (= e!3555502 (Cons!63580 (h!70028 s!2326) Nil!63580))))

(declare-fun b!5789365 () Bool)

(declare-fun e!3555503 () Bool)

(declare-fun lt!2296892 () List!63704)

(assert (=> b!5789365 (= e!3555503 (or (not (= (Cons!63580 (h!70028 s!2326) Nil!63580) Nil!63580)) (= lt!2296892 Nil!63580)))))

(declare-fun b!5789363 () Bool)

(assert (=> b!5789363 (= e!3555502 (Cons!63580 (h!70028 Nil!63580) (++!14019 (t!377047 Nil!63580) (Cons!63580 (h!70028 s!2326) Nil!63580))))))

(declare-fun d!1823828 () Bool)

(assert (=> d!1823828 e!3555503))

(declare-fun res!2442794 () Bool)

(assert (=> d!1823828 (=> (not res!2442794) (not e!3555503))))

(assert (=> d!1823828 (= res!2442794 (= (content!11630 lt!2296892) ((_ map or) (content!11630 Nil!63580) (content!11630 (Cons!63580 (h!70028 s!2326) Nil!63580)))))))

(assert (=> d!1823828 (= lt!2296892 e!3555502)))

(declare-fun c!1025076 () Bool)

(assert (=> d!1823828 (= c!1025076 ((_ is Nil!63580) Nil!63580))))

(assert (=> d!1823828 (= (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580)) lt!2296892)))

(declare-fun b!5789364 () Bool)

(declare-fun res!2442795 () Bool)

(assert (=> b!5789364 (=> (not res!2442795) (not e!3555503))))

(assert (=> b!5789364 (= res!2442795 (= (size!40094 lt!2296892) (+ (size!40094 Nil!63580) (size!40094 (Cons!63580 (h!70028 s!2326) Nil!63580)))))))

(assert (= (and d!1823828 c!1025076) b!5789362))

(assert (= (and d!1823828 (not c!1025076)) b!5789363))

(assert (= (and d!1823828 res!2442794) b!5789364))

(assert (= (and b!5789364 res!2442795) b!5789365))

(declare-fun m!6733098 () Bool)

(assert (=> b!5789363 m!6733098))

(declare-fun m!6733100 () Bool)

(assert (=> d!1823828 m!6733100))

(declare-fun m!6733102 () Bool)

(assert (=> d!1823828 m!6733102))

(declare-fun m!6733104 () Bool)

(assert (=> d!1823828 m!6733104))

(declare-fun m!6733106 () Bool)

(assert (=> b!5789364 m!6733106))

(declare-fun m!6733108 () Bool)

(assert (=> b!5789364 m!6733108))

(declare-fun m!6733110 () Bool)

(assert (=> b!5789364 m!6733110))

(assert (=> b!5789206 d!1823828))

(declare-fun d!1823830 () Bool)

(assert (=> d!1823830 (= (++!14019 (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580)) (t!377047 s!2326)) s!2326)))

(declare-fun lt!2296895 () Unit!156862)

(declare-fun choose!43966 (List!63704 C!31872 List!63704 List!63704) Unit!156862)

(assert (=> d!1823830 (= lt!2296895 (choose!43966 Nil!63580 (h!70028 s!2326) (t!377047 s!2326) s!2326))))

(assert (=> d!1823830 (= (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) (t!377047 s!2326))) s!2326)))

(assert (=> d!1823830 (= (lemmaMoveElementToOtherListKeepsConcatEq!2126 Nil!63580 (h!70028 s!2326) (t!377047 s!2326) s!2326) lt!2296895)))

(declare-fun bs!1366699 () Bool)

(assert (= bs!1366699 d!1823830))

(assert (=> bs!1366699 m!6732982))

(assert (=> bs!1366699 m!6732982))

(assert (=> bs!1366699 m!6732984))

(declare-fun m!6733112 () Bool)

(assert (=> bs!1366699 m!6733112))

(declare-fun m!6733114 () Bool)

(assert (=> bs!1366699 m!6733114))

(assert (=> b!5789206 d!1823830))

(declare-fun b!5789366 () Bool)

(declare-fun e!3555507 () Bool)

(declare-fun lt!2296897 () Option!15810)

(assert (=> b!5789366 (= e!3555507 (= (++!14019 (_1!36201 (get!21945 lt!2296897)) (_2!36201 (get!21945 lt!2296897))) s!2326))))

(declare-fun b!5789367 () Bool)

(declare-fun e!3555505 () Bool)

(assert (=> b!5789367 (= e!3555505 (matchR!7986 r!7292 (t!377047 s!2326)))))

(declare-fun b!5789368 () Bool)

(declare-fun res!2442797 () Bool)

(assert (=> b!5789368 (=> (not res!2442797) (not e!3555507))))

(assert (=> b!5789368 (= res!2442797 (matchR!7986 r!7292 (_2!36201 (get!21945 lt!2296897))))))

(declare-fun b!5789369 () Bool)

(declare-fun e!3555506 () Bool)

(assert (=> b!5789369 (= e!3555506 (not (isDefined!12513 lt!2296897)))))

(declare-fun d!1823832 () Bool)

(assert (=> d!1823832 e!3555506))

(declare-fun res!2442800 () Bool)

(assert (=> d!1823832 (=> res!2442800 e!3555506)))

(assert (=> d!1823832 (= res!2442800 e!3555507)))

(declare-fun res!2442798 () Bool)

(assert (=> d!1823832 (=> (not res!2442798) (not e!3555507))))

(assert (=> d!1823832 (= res!2442798 (isDefined!12513 lt!2296897))))

(declare-fun e!3555508 () Option!15810)

(assert (=> d!1823832 (= lt!2296897 e!3555508)))

(declare-fun c!1025078 () Bool)

(assert (=> d!1823832 (= c!1025078 e!3555505)))

(declare-fun res!2442799 () Bool)

(assert (=> d!1823832 (=> (not res!2442799) (not e!3555505))))

(assert (=> d!1823832 (= res!2442799 (matchR!7986 (reg!16130 r!7292) (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580))))))

(assert (=> d!1823832 (validRegex!7537 (reg!16130 r!7292))))

(assert (=> d!1823832 (= (findConcatSeparation!2224 (reg!16130 r!7292) r!7292 (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580)) (t!377047 s!2326) s!2326) lt!2296897)))

(declare-fun b!5789370 () Bool)

(declare-fun e!3555504 () Option!15810)

(assert (=> b!5789370 (= e!3555508 e!3555504)))

(declare-fun c!1025077 () Bool)

(assert (=> b!5789370 (= c!1025077 ((_ is Nil!63580) (t!377047 s!2326)))))

(declare-fun b!5789371 () Bool)

(assert (=> b!5789371 (= e!3555504 None!15809)))

(declare-fun b!5789372 () Bool)

(declare-fun res!2442796 () Bool)

(assert (=> b!5789372 (=> (not res!2442796) (not e!3555507))))

(assert (=> b!5789372 (= res!2442796 (matchR!7986 (reg!16130 r!7292) (_1!36201 (get!21945 lt!2296897))))))

(declare-fun b!5789373 () Bool)

(assert (=> b!5789373 (= e!3555508 (Some!15809 (tuple2!65797 (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580)) (t!377047 s!2326))))))

(declare-fun b!5789374 () Bool)

(declare-fun lt!2296898 () Unit!156862)

(declare-fun lt!2296896 () Unit!156862)

(assert (=> b!5789374 (= lt!2296898 lt!2296896)))

(assert (=> b!5789374 (= (++!14019 (++!14019 (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580)) (Cons!63580 (h!70028 (t!377047 s!2326)) Nil!63580)) (t!377047 (t!377047 s!2326))) s!2326)))

(assert (=> b!5789374 (= lt!2296896 (lemmaMoveElementToOtherListKeepsConcatEq!2126 (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580)) (h!70028 (t!377047 s!2326)) (t!377047 (t!377047 s!2326)) s!2326))))

(assert (=> b!5789374 (= e!3555504 (findConcatSeparation!2224 (reg!16130 r!7292) r!7292 (++!14019 (++!14019 Nil!63580 (Cons!63580 (h!70028 s!2326) Nil!63580)) (Cons!63580 (h!70028 (t!377047 s!2326)) Nil!63580)) (t!377047 (t!377047 s!2326)) s!2326))))

(assert (= (and d!1823832 res!2442799) b!5789367))

(assert (= (and d!1823832 c!1025078) b!5789373))

(assert (= (and d!1823832 (not c!1025078)) b!5789370))

(assert (= (and b!5789370 c!1025077) b!5789371))

(assert (= (and b!5789370 (not c!1025077)) b!5789374))

(assert (= (and d!1823832 res!2442798) b!5789372))

(assert (= (and b!5789372 res!2442796) b!5789368))

(assert (= (and b!5789368 res!2442797) b!5789366))

(assert (= (and d!1823832 (not res!2442800)) b!5789369))

(declare-fun m!6733116 () Bool)

(assert (=> b!5789369 m!6733116))

(assert (=> b!5789374 m!6732982))

(declare-fun m!6733118 () Bool)

(assert (=> b!5789374 m!6733118))

(assert (=> b!5789374 m!6733118))

(declare-fun m!6733120 () Bool)

(assert (=> b!5789374 m!6733120))

(assert (=> b!5789374 m!6732982))

(declare-fun m!6733122 () Bool)

(assert (=> b!5789374 m!6733122))

(assert (=> b!5789374 m!6733118))

(declare-fun m!6733124 () Bool)

(assert (=> b!5789374 m!6733124))

(assert (=> d!1823832 m!6733116))

(assert (=> d!1823832 m!6732982))

(declare-fun m!6733126 () Bool)

(assert (=> d!1823832 m!6733126))

(assert (=> d!1823832 m!6732968))

(declare-fun m!6733128 () Bool)

(assert (=> b!5789367 m!6733128))

(declare-fun m!6733130 () Bool)

(assert (=> b!5789366 m!6733130))

(declare-fun m!6733132 () Bool)

(assert (=> b!5789366 m!6733132))

(assert (=> b!5789368 m!6733130))

(declare-fun m!6733134 () Bool)

(assert (=> b!5789368 m!6733134))

(assert (=> b!5789372 m!6733130))

(declare-fun m!6733136 () Bool)

(assert (=> b!5789372 m!6733136))

(assert (=> b!5789206 d!1823832))

(declare-fun d!1823834 () Bool)

(assert (=> d!1823834 (= (isEmpty!35485 (tail!11320 (unfocusZipperList!1229 zl!343))) ((_ is Nil!63578) (tail!11320 (unfocusZipperList!1229 zl!343))))))

(assert (=> b!5788677 d!1823834))

(declare-fun d!1823836 () Bool)

(assert (=> d!1823836 (= (tail!11320 (unfocusZipperList!1229 zl!343)) (t!377045 (unfocusZipperList!1229 zl!343)))))

(assert (=> b!5788677 d!1823836))

(declare-fun d!1823838 () Bool)

(assert (=> d!1823838 true))

(assert (=> d!1823838 true))

(declare-fun res!2442803 () Bool)

(assert (=> d!1823838 (= (choose!43961 lambda!315602) res!2442803)))

(assert (=> d!1823764 d!1823838))

(declare-fun bs!1366700 () Bool)

(declare-fun b!5789379 () Bool)

(assert (= bs!1366700 (and b!5789379 b!5788529)))

(declare-fun lambda!315681 () Int)

(assert (=> bs!1366700 (not (= lambda!315681 lambda!315603))))

(declare-fun bs!1366701 () Bool)

(assert (= bs!1366701 (and b!5789379 b!5789095)))

(assert (=> bs!1366701 (= (and (= (reg!16130 (regTwo!32115 r!7292)) (reg!16130 r!7292)) (= (regTwo!32115 r!7292) r!7292)) (= lambda!315681 lambda!315658))))

(declare-fun bs!1366702 () Bool)

(assert (= bs!1366702 (and b!5789379 d!1823768)))

(assert (=> bs!1366702 (not (= lambda!315681 lambda!315668))))

(declare-fun bs!1366703 () Bool)

(assert (= bs!1366703 (and b!5789379 b!5789094)))

(assert (=> bs!1366703 (not (= lambda!315681 lambda!315659))))

(assert (=> bs!1366702 (not (= lambda!315681 lambda!315669))))

(assert (=> bs!1366700 (not (= lambda!315681 lambda!315601))))

(declare-fun bs!1366704 () Bool)

(assert (= bs!1366704 (and b!5789379 d!1823770)))

(assert (=> bs!1366704 (= (and (= (reg!16130 (regTwo!32115 r!7292)) (reg!16130 r!7292)) (= (regTwo!32115 r!7292) (Star!15801 (reg!16130 r!7292)))) (= lambda!315681 lambda!315675))))

(assert (=> bs!1366700 (= (and (= (reg!16130 (regTwo!32115 r!7292)) (reg!16130 r!7292)) (= (regTwo!32115 r!7292) r!7292)) (= lambda!315681 lambda!315602))))

(declare-fun bs!1366705 () Bool)

(assert (= bs!1366705 (and b!5789379 d!1823780)))

(assert (=> bs!1366705 (not (= lambda!315681 lambda!315678))))

(assert (=> bs!1366704 (not (= lambda!315681 lambda!315674))))

(assert (=> b!5789379 true))

(assert (=> b!5789379 true))

(declare-fun bs!1366706 () Bool)

(declare-fun b!5789378 () Bool)

(assert (= bs!1366706 (and b!5789378 b!5788529)))

(declare-fun lambda!315682 () Int)

(assert (=> bs!1366706 (= (and (= (regOne!32114 (regTwo!32115 r!7292)) (reg!16130 r!7292)) (= (regTwo!32114 (regTwo!32115 r!7292)) r!7292)) (= lambda!315682 lambda!315603))))

(declare-fun bs!1366707 () Bool)

(assert (= bs!1366707 (and b!5789378 b!5789095)))

(assert (=> bs!1366707 (not (= lambda!315682 lambda!315658))))

(declare-fun bs!1366708 () Bool)

(assert (= bs!1366708 (and b!5789378 d!1823768)))

(assert (=> bs!1366708 (not (= lambda!315682 lambda!315668))))

(declare-fun bs!1366709 () Bool)

(assert (= bs!1366709 (and b!5789378 b!5789094)))

(assert (=> bs!1366709 (= (and (= (regOne!32114 (regTwo!32115 r!7292)) (regOne!32114 r!7292)) (= (regTwo!32114 (regTwo!32115 r!7292)) (regTwo!32114 r!7292))) (= lambda!315682 lambda!315659))))

(assert (=> bs!1366708 (= (and (= (regOne!32114 (regTwo!32115 r!7292)) (reg!16130 r!7292)) (= (regTwo!32114 (regTwo!32115 r!7292)) r!7292)) (= lambda!315682 lambda!315669))))

(assert (=> bs!1366706 (not (= lambda!315682 lambda!315601))))

(declare-fun bs!1366710 () Bool)

(assert (= bs!1366710 (and b!5789378 d!1823770)))

(assert (=> bs!1366710 (not (= lambda!315682 lambda!315675))))

(declare-fun bs!1366711 () Bool)

(assert (= bs!1366711 (and b!5789378 b!5789379)))

(assert (=> bs!1366711 (not (= lambda!315682 lambda!315681))))

(assert (=> bs!1366706 (not (= lambda!315682 lambda!315602))))

(declare-fun bs!1366712 () Bool)

(assert (= bs!1366712 (and b!5789378 d!1823780)))

(assert (=> bs!1366712 (not (= lambda!315682 lambda!315678))))

(assert (=> bs!1366710 (not (= lambda!315682 lambda!315674))))

(assert (=> b!5789378 true))

(assert (=> b!5789378 true))

(declare-fun b!5789375 () Bool)

(declare-fun e!3555510 () Bool)

(declare-fun e!3555512 () Bool)

(assert (=> b!5789375 (= e!3555510 e!3555512)))

(declare-fun c!1025081 () Bool)

(assert (=> b!5789375 (= c!1025081 ((_ is Star!15801) (regTwo!32115 r!7292)))))

(declare-fun b!5789376 () Bool)

(declare-fun c!1025079 () Bool)

(assert (=> b!5789376 (= c!1025079 ((_ is ElementMatch!15801) (regTwo!32115 r!7292)))))

(declare-fun e!3555515 () Bool)

(declare-fun e!3555513 () Bool)

(assert (=> b!5789376 (= e!3555515 e!3555513)))

(declare-fun b!5789377 () Bool)

(declare-fun c!1025080 () Bool)

(assert (=> b!5789377 (= c!1025080 ((_ is Union!15801) (regTwo!32115 r!7292)))))

(assert (=> b!5789377 (= e!3555513 e!3555510)))

(declare-fun call!450868 () Bool)

(assert (=> b!5789378 (= e!3555512 call!450868)))

(declare-fun e!3555511 () Bool)

(assert (=> b!5789379 (= e!3555511 call!450868)))

(declare-fun b!5789380 () Bool)

(declare-fun e!3555509 () Bool)

(declare-fun call!450867 () Bool)

(assert (=> b!5789380 (= e!3555509 call!450867)))

(declare-fun b!5789381 () Bool)

(assert (=> b!5789381 (= e!3555513 (= s!2326 (Cons!63580 (c!1024863 (regTwo!32115 r!7292)) Nil!63580)))))

(declare-fun b!5789382 () Bool)

(declare-fun e!3555514 () Bool)

(assert (=> b!5789382 (= e!3555510 e!3555514)))

(declare-fun res!2442805 () Bool)

(assert (=> b!5789382 (= res!2442805 (matchRSpec!2904 (regOne!32115 (regTwo!32115 r!7292)) s!2326))))

(assert (=> b!5789382 (=> res!2442805 e!3555514)))

(declare-fun d!1823840 () Bool)

(declare-fun c!1025082 () Bool)

(assert (=> d!1823840 (= c!1025082 ((_ is EmptyExpr!15801) (regTwo!32115 r!7292)))))

(assert (=> d!1823840 (= (matchRSpec!2904 (regTwo!32115 r!7292) s!2326) e!3555509)))

(declare-fun b!5789383 () Bool)

(assert (=> b!5789383 (= e!3555509 e!3555515)))

(declare-fun res!2442804 () Bool)

(assert (=> b!5789383 (= res!2442804 (not ((_ is EmptyLang!15801) (regTwo!32115 r!7292))))))

(assert (=> b!5789383 (=> (not res!2442804) (not e!3555515))))

(declare-fun bm!450862 () Bool)

(assert (=> bm!450862 (= call!450867 (isEmpty!35484 s!2326))))

(declare-fun b!5789384 () Bool)

(assert (=> b!5789384 (= e!3555514 (matchRSpec!2904 (regTwo!32115 (regTwo!32115 r!7292)) s!2326))))

(declare-fun bm!450863 () Bool)

(assert (=> bm!450863 (= call!450868 (Exists!2901 (ite c!1025081 lambda!315681 lambda!315682)))))

(declare-fun b!5789385 () Bool)

(declare-fun res!2442806 () Bool)

(assert (=> b!5789385 (=> res!2442806 e!3555511)))

(assert (=> b!5789385 (= res!2442806 call!450867)))

(assert (=> b!5789385 (= e!3555512 e!3555511)))

(assert (= (and d!1823840 c!1025082) b!5789380))

(assert (= (and d!1823840 (not c!1025082)) b!5789383))

(assert (= (and b!5789383 res!2442804) b!5789376))

(assert (= (and b!5789376 c!1025079) b!5789381))

(assert (= (and b!5789376 (not c!1025079)) b!5789377))

(assert (= (and b!5789377 c!1025080) b!5789382))

(assert (= (and b!5789377 (not c!1025080)) b!5789375))

(assert (= (and b!5789382 (not res!2442805)) b!5789384))

(assert (= (and b!5789375 c!1025081) b!5789385))

(assert (= (and b!5789375 (not c!1025081)) b!5789378))

(assert (= (and b!5789385 (not res!2442806)) b!5789379))

(assert (= (or b!5789379 b!5789378) bm!450863))

(assert (= (or b!5789380 b!5789385) bm!450862))

(declare-fun m!6733138 () Bool)

(assert (=> b!5789382 m!6733138))

(assert (=> bm!450862 m!6732586))

(declare-fun m!6733140 () Bool)

(assert (=> b!5789384 m!6733140))

(declare-fun m!6733142 () Bool)

(assert (=> bm!450863 m!6733142))

(assert (=> b!5789100 d!1823840))

(declare-fun d!1823842 () Bool)

(assert (=> d!1823842 (= (isEmpty!35485 (unfocusZipperList!1229 zl!343)) ((_ is Nil!63578) (unfocusZipperList!1229 zl!343)))))

(assert (=> b!5788686 d!1823842))

(declare-fun d!1823844 () Bool)

(assert (=> d!1823844 (= (nullable!5833 (reg!16130 r!7292)) (nullableFct!1865 (reg!16130 r!7292)))))

(declare-fun bs!1366713 () Bool)

(assert (= bs!1366713 d!1823844))

(declare-fun m!6733144 () Bool)

(assert (=> bs!1366713 m!6733144))

(assert (=> b!5788627 d!1823844))

(declare-fun d!1823846 () Bool)

(assert (=> d!1823846 (= (isConcat!804 lt!2296850) ((_ is Concat!24646) lt!2296850))))

(assert (=> b!5788970 d!1823846))

(assert (=> b!5789132 d!1823788))

(assert (=> b!5789132 d!1823790))

(declare-fun b!5789386 () Bool)

(declare-fun call!450869 () (InoxSet Context!10370))

(declare-fun e!3555516 () (InoxSet Context!10370))

(assert (=> b!5789386 (= e!3555516 ((_ map or) call!450869 (derivationStepZipperUp!1065 (Context!10371 (t!377045 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578)))))))) (h!70028 s!2326))))))

(declare-fun bm!450864 () Bool)

(assert (=> bm!450864 (= call!450869 (derivationStepZipperDown!1139 (h!70026 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))))) (Context!10371 (t!377045 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578)))))))) (h!70028 s!2326)))))

(declare-fun b!5789387 () Bool)

(declare-fun e!3555517 () (InoxSet Context!10370))

(assert (=> b!5789387 (= e!3555517 ((as const (Array Context!10370 Bool)) false))))

(declare-fun b!5789389 () Bool)

(declare-fun e!3555518 () Bool)

(assert (=> b!5789389 (= e!3555518 (nullable!5833 (h!70026 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578)))))))))))

(declare-fun b!5789390 () Bool)

(assert (=> b!5789390 (= e!3555517 call!450869)))

(declare-fun d!1823848 () Bool)

(declare-fun c!1025084 () Bool)

(assert (=> d!1823848 (= c!1025084 e!3555518)))

(declare-fun res!2442807 () Bool)

(assert (=> d!1823848 (=> (not res!2442807) (not e!3555518))))

(assert (=> d!1823848 (= res!2442807 ((_ is Cons!63578) (exprs!5685 (Context!10371 (t!377045 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))))))))

(assert (=> d!1823848 (= (derivationStepZipperUp!1065 (Context!10371 (t!377045 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) (h!70028 s!2326)) e!3555516)))

(declare-fun b!5789388 () Bool)

(assert (=> b!5789388 (= e!3555516 e!3555517)))

(declare-fun c!1025083 () Bool)

(assert (=> b!5789388 (= c!1025083 ((_ is Cons!63578) (exprs!5685 (Context!10371 (t!377045 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))))))))

(assert (= (and d!1823848 res!2442807) b!5789389))

(assert (= (and d!1823848 c!1025084) b!5789386))

(assert (= (and d!1823848 (not c!1025084)) b!5789388))

(assert (= (and b!5789388 c!1025083) b!5789390))

(assert (= (and b!5789388 (not c!1025083)) b!5789387))

(assert (= (or b!5789386 b!5789390) bm!450864))

(declare-fun m!6733146 () Bool)

(assert (=> b!5789386 m!6733146))

(declare-fun m!6733148 () Bool)

(assert (=> bm!450864 m!6733148))

(declare-fun m!6733150 () Bool)

(assert (=> b!5789389 m!6733150))

(assert (=> b!5789155 d!1823848))

(declare-fun d!1823850 () Bool)

(assert (=> d!1823850 (= (isUnion!719 lt!2296809) ((_ is Union!15801) lt!2296809))))

(assert (=> b!5788684 d!1823850))

(declare-fun bs!1366714 () Bool)

(declare-fun d!1823852 () Bool)

(assert (= bs!1366714 (and d!1823852 d!1823664)))

(declare-fun lambda!315683 () Int)

(assert (=> bs!1366714 (= lambda!315683 lambda!315610)))

(declare-fun bs!1366715 () Bool)

(assert (= bs!1366715 (and d!1823852 d!1823740)))

(assert (=> bs!1366715 (= lambda!315683 lambda!315650)))

(declare-fun bs!1366716 () Bool)

(assert (= bs!1366716 (and d!1823852 d!1823726)))

(assert (=> bs!1366716 (= lambda!315683 lambda!315647)))

(declare-fun bs!1366717 () Bool)

(assert (= bs!1366717 (and d!1823852 d!1823676)))

(assert (=> bs!1366717 (= lambda!315683 lambda!315618)))

(declare-fun bs!1366718 () Bool)

(assert (= bs!1366718 (and d!1823852 d!1823756)))

(assert (=> bs!1366718 (= lambda!315683 lambda!315660)))

(declare-fun bs!1366719 () Bool)

(assert (= bs!1366719 (and d!1823852 d!1823816)))

(assert (=> bs!1366719 (= lambda!315683 lambda!315680)))

(declare-fun bs!1366720 () Bool)

(assert (= bs!1366720 (and d!1823852 d!1823804)))

(assert (=> bs!1366720 (= lambda!315683 lambda!315679)))

(declare-fun b!5789391 () Bool)

(declare-fun e!3555522 () Bool)

(declare-fun e!3555523 () Bool)

(assert (=> b!5789391 (= e!3555522 e!3555523)))

(declare-fun c!1025085 () Bool)

(assert (=> b!5789391 (= c!1025085 (isEmpty!35485 (tail!11320 (t!377045 (unfocusZipperList!1229 zl!343)))))))

(declare-fun b!5789392 () Bool)

(declare-fun e!3555524 () Bool)

(assert (=> b!5789392 (= e!3555524 (isEmpty!35485 (t!377045 (t!377045 (unfocusZipperList!1229 zl!343)))))))

(declare-fun b!5789393 () Bool)

(declare-fun lt!2296899 () Regex!15801)

(assert (=> b!5789393 (= e!3555523 (= lt!2296899 (head!12225 (t!377045 (unfocusZipperList!1229 zl!343)))))))

(declare-fun e!3555520 () Bool)

(assert (=> d!1823852 e!3555520))

(declare-fun res!2442809 () Bool)

(assert (=> d!1823852 (=> (not res!2442809) (not e!3555520))))

(assert (=> d!1823852 (= res!2442809 (validRegex!7537 lt!2296899))))

(declare-fun e!3555519 () Regex!15801)

(assert (=> d!1823852 (= lt!2296899 e!3555519)))

(declare-fun c!1025088 () Bool)

(assert (=> d!1823852 (= c!1025088 e!3555524)))

(declare-fun res!2442808 () Bool)

(assert (=> d!1823852 (=> (not res!2442808) (not e!3555524))))

(assert (=> d!1823852 (= res!2442808 ((_ is Cons!63578) (t!377045 (unfocusZipperList!1229 zl!343))))))

(assert (=> d!1823852 (forall!14915 (t!377045 (unfocusZipperList!1229 zl!343)) lambda!315683)))

(assert (=> d!1823852 (= (generalisedUnion!1664 (t!377045 (unfocusZipperList!1229 zl!343))) lt!2296899)))

(declare-fun b!5789394 () Bool)

(declare-fun e!3555521 () Regex!15801)

(assert (=> b!5789394 (= e!3555521 EmptyLang!15801)))

(declare-fun b!5789395 () Bool)

(assert (=> b!5789395 (= e!3555519 (h!70026 (t!377045 (unfocusZipperList!1229 zl!343))))))

(declare-fun b!5789396 () Bool)

(assert (=> b!5789396 (= e!3555521 (Union!15801 (h!70026 (t!377045 (unfocusZipperList!1229 zl!343))) (generalisedUnion!1664 (t!377045 (t!377045 (unfocusZipperList!1229 zl!343))))))))

(declare-fun b!5789397 () Bool)

(assert (=> b!5789397 (= e!3555522 (isEmptyLang!1289 lt!2296899))))

(declare-fun b!5789398 () Bool)

(assert (=> b!5789398 (= e!3555523 (isUnion!719 lt!2296899))))

(declare-fun b!5789399 () Bool)

(assert (=> b!5789399 (= e!3555519 e!3555521)))

(declare-fun c!1025087 () Bool)

(assert (=> b!5789399 (= c!1025087 ((_ is Cons!63578) (t!377045 (unfocusZipperList!1229 zl!343))))))

(declare-fun b!5789400 () Bool)

(assert (=> b!5789400 (= e!3555520 e!3555522)))

(declare-fun c!1025086 () Bool)

(assert (=> b!5789400 (= c!1025086 (isEmpty!35485 (t!377045 (unfocusZipperList!1229 zl!343))))))

(assert (= (and d!1823852 res!2442808) b!5789392))

(assert (= (and d!1823852 c!1025088) b!5789395))

(assert (= (and d!1823852 (not c!1025088)) b!5789399))

(assert (= (and b!5789399 c!1025087) b!5789396))

(assert (= (and b!5789399 (not c!1025087)) b!5789394))

(assert (= (and d!1823852 res!2442809) b!5789400))

(assert (= (and b!5789400 c!1025086) b!5789397))

(assert (= (and b!5789400 (not c!1025086)) b!5789391))

(assert (= (and b!5789391 c!1025085) b!5789393))

(assert (= (and b!5789391 (not c!1025085)) b!5789398))

(declare-fun m!6733152 () Bool)

(assert (=> b!5789392 m!6733152))

(assert (=> b!5789400 m!6732674))

(declare-fun m!6733154 () Bool)

(assert (=> b!5789393 m!6733154))

(declare-fun m!6733156 () Bool)

(assert (=> b!5789397 m!6733156))

(declare-fun m!6733158 () Bool)

(assert (=> b!5789398 m!6733158))

(declare-fun m!6733160 () Bool)

(assert (=> b!5789396 m!6733160))

(declare-fun m!6733162 () Bool)

(assert (=> b!5789391 m!6733162))

(assert (=> b!5789391 m!6733162))

(declare-fun m!6733164 () Bool)

(assert (=> b!5789391 m!6733164))

(declare-fun m!6733166 () Bool)

(assert (=> d!1823852 m!6733166))

(declare-fun m!6733168 () Bool)

(assert (=> d!1823852 m!6733168))

(assert (=> b!5788682 d!1823852))

(declare-fun d!1823854 () Bool)

(assert (=> d!1823854 (= (nullable!5833 (h!70026 (exprs!5685 (h!70027 zl!343)))) (nullableFct!1865 (h!70026 (exprs!5685 (h!70027 zl!343)))))))

(declare-fun bs!1366721 () Bool)

(assert (= bs!1366721 d!1823854))

(declare-fun m!6733170 () Bool)

(assert (=> bs!1366721 m!6733170))

(assert (=> b!5788812 d!1823854))

(assert (=> d!1823724 d!1823720))

(declare-fun d!1823856 () Bool)

(assert (=> d!1823856 (= (flatMap!1408 lt!2296791 lambda!315604) (dynLambda!24892 lambda!315604 lt!2296789))))

(assert (=> d!1823856 true))

(declare-fun _$13!2491 () Unit!156862)

(assert (=> d!1823856 (= (choose!43956 lt!2296791 lt!2296789 lambda!315604) _$13!2491)))

(declare-fun b_lambda!218241 () Bool)

(assert (=> (not b_lambda!218241) (not d!1823856)))

(declare-fun bs!1366722 () Bool)

(assert (= bs!1366722 d!1823856))

(assert (=> bs!1366722 m!6732612))

(assert (=> bs!1366722 m!6732844))

(assert (=> d!1823724 d!1823856))

(declare-fun d!1823858 () Bool)

(declare-fun res!2442810 () Bool)

(declare-fun e!3555525 () Bool)

(assert (=> d!1823858 (=> res!2442810 e!3555525)))

(assert (=> d!1823858 (= res!2442810 ((_ is Nil!63578) lt!2296812))))

(assert (=> d!1823858 (= (forall!14915 lt!2296812 lambda!315618) e!3555525)))

(declare-fun b!5789401 () Bool)

(declare-fun e!3555526 () Bool)

(assert (=> b!5789401 (= e!3555525 e!3555526)))

(declare-fun res!2442811 () Bool)

(assert (=> b!5789401 (=> (not res!2442811) (not e!3555526))))

(assert (=> b!5789401 (= res!2442811 (dynLambda!24893 lambda!315618 (h!70026 lt!2296812)))))

(declare-fun b!5789402 () Bool)

(assert (=> b!5789402 (= e!3555526 (forall!14915 (t!377045 lt!2296812) lambda!315618))))

(assert (= (and d!1823858 (not res!2442810)) b!5789401))

(assert (= (and b!5789401 res!2442811) b!5789402))

(declare-fun b_lambda!218243 () Bool)

(assert (=> (not b_lambda!218243) (not b!5789401)))

(declare-fun m!6733172 () Bool)

(assert (=> b!5789401 m!6733172))

(declare-fun m!6733174 () Bool)

(assert (=> b!5789402 m!6733174))

(assert (=> d!1823676 d!1823858))

(declare-fun d!1823860 () Bool)

(assert (=> d!1823860 (= (head!12225 (exprs!5685 (h!70027 zl!343))) (h!70026 (exprs!5685 (h!70027 zl!343))))))

(assert (=> b!5788968 d!1823860))

(declare-fun b!5789403 () Bool)

(declare-fun res!2442814 () Bool)

(declare-fun e!3555531 () Bool)

(assert (=> b!5789403 (=> (not res!2442814) (not e!3555531))))

(declare-fun call!450872 () Bool)

(assert (=> b!5789403 (= res!2442814 call!450872)))

(declare-fun e!3555527 () Bool)

(assert (=> b!5789403 (= e!3555527 e!3555531)))

(declare-fun d!1823862 () Bool)

(declare-fun res!2442813 () Bool)

(declare-fun e!3555532 () Bool)

(assert (=> d!1823862 (=> res!2442813 e!3555532)))

(assert (=> d!1823862 (= res!2442813 ((_ is ElementMatch!15801) lt!2296809))))

(assert (=> d!1823862 (= (validRegex!7537 lt!2296809) e!3555532)))

(declare-fun c!1025090 () Bool)

(declare-fun c!1025089 () Bool)

(declare-fun call!450871 () Bool)

(declare-fun bm!450865 () Bool)

(assert (=> bm!450865 (= call!450871 (validRegex!7537 (ite c!1025090 (reg!16130 lt!2296809) (ite c!1025089 (regOne!32115 lt!2296809) (regOne!32114 lt!2296809)))))))

(declare-fun b!5789404 () Bool)

(declare-fun call!450870 () Bool)

(assert (=> b!5789404 (= e!3555531 call!450870)))

(declare-fun bm!450866 () Bool)

(assert (=> bm!450866 (= call!450870 (validRegex!7537 (ite c!1025089 (regTwo!32115 lt!2296809) (regTwo!32114 lt!2296809))))))

(declare-fun b!5789405 () Bool)

(declare-fun e!3555528 () Bool)

(assert (=> b!5789405 (= e!3555528 call!450871)))

(declare-fun b!5789406 () Bool)

(declare-fun e!3555530 () Bool)

(assert (=> b!5789406 (= e!3555530 e!3555527)))

(assert (=> b!5789406 (= c!1025089 ((_ is Union!15801) lt!2296809))))

(declare-fun b!5789407 () Bool)

(declare-fun res!2442812 () Bool)

(declare-fun e!3555533 () Bool)

(assert (=> b!5789407 (=> res!2442812 e!3555533)))

(assert (=> b!5789407 (= res!2442812 (not ((_ is Concat!24646) lt!2296809)))))

(assert (=> b!5789407 (= e!3555527 e!3555533)))

(declare-fun bm!450867 () Bool)

(assert (=> bm!450867 (= call!450872 call!450871)))

(declare-fun b!5789408 () Bool)

(assert (=> b!5789408 (= e!3555530 e!3555528)))

(declare-fun res!2442816 () Bool)

(assert (=> b!5789408 (= res!2442816 (not (nullable!5833 (reg!16130 lt!2296809))))))

(assert (=> b!5789408 (=> (not res!2442816) (not e!3555528))))

(declare-fun b!5789409 () Bool)

(declare-fun e!3555529 () Bool)

(assert (=> b!5789409 (= e!3555529 call!450870)))

(declare-fun b!5789410 () Bool)

(assert (=> b!5789410 (= e!3555532 e!3555530)))

(assert (=> b!5789410 (= c!1025090 ((_ is Star!15801) lt!2296809))))

(declare-fun b!5789411 () Bool)

(assert (=> b!5789411 (= e!3555533 e!3555529)))

(declare-fun res!2442815 () Bool)

(assert (=> b!5789411 (=> (not res!2442815) (not e!3555529))))

(assert (=> b!5789411 (= res!2442815 call!450872)))

(assert (= (and d!1823862 (not res!2442813)) b!5789410))

(assert (= (and b!5789410 c!1025090) b!5789408))

(assert (= (and b!5789410 (not c!1025090)) b!5789406))

(assert (= (and b!5789408 res!2442816) b!5789405))

(assert (= (and b!5789406 c!1025089) b!5789403))

(assert (= (and b!5789406 (not c!1025089)) b!5789407))

(assert (= (and b!5789403 res!2442814) b!5789404))

(assert (= (and b!5789407 (not res!2442812)) b!5789411))

(assert (= (and b!5789411 res!2442815) b!5789409))

(assert (= (or b!5789404 b!5789409) bm!450866))

(assert (= (or b!5789403 b!5789411) bm!450867))

(assert (= (or b!5789405 bm!450867) bm!450865))

(declare-fun m!6733176 () Bool)

(assert (=> bm!450865 m!6733176))

(declare-fun m!6733178 () Bool)

(assert (=> bm!450866 m!6733178))

(declare-fun m!6733180 () Bool)

(assert (=> b!5789408 m!6733180))

(assert (=> d!1823664 d!1823862))

(declare-fun d!1823864 () Bool)

(declare-fun res!2442817 () Bool)

(declare-fun e!3555534 () Bool)

(assert (=> d!1823864 (=> res!2442817 e!3555534)))

(assert (=> d!1823864 (= res!2442817 ((_ is Nil!63578) (unfocusZipperList!1229 zl!343)))))

(assert (=> d!1823864 (= (forall!14915 (unfocusZipperList!1229 zl!343) lambda!315610) e!3555534)))

(declare-fun b!5789412 () Bool)

(declare-fun e!3555535 () Bool)

(assert (=> b!5789412 (= e!3555534 e!3555535)))

(declare-fun res!2442818 () Bool)

(assert (=> b!5789412 (=> (not res!2442818) (not e!3555535))))

(assert (=> b!5789412 (= res!2442818 (dynLambda!24893 lambda!315610 (h!70026 (unfocusZipperList!1229 zl!343))))))

(declare-fun b!5789413 () Bool)

(assert (=> b!5789413 (= e!3555535 (forall!14915 (t!377045 (unfocusZipperList!1229 zl!343)) lambda!315610))))

(assert (= (and d!1823864 (not res!2442817)) b!5789412))

(assert (= (and b!5789412 res!2442818) b!5789413))

(declare-fun b_lambda!218245 () Bool)

(assert (=> (not b_lambda!218245) (not b!5789412)))

(declare-fun m!6733182 () Bool)

(assert (=> b!5789412 m!6733182))

(declare-fun m!6733184 () Bool)

(assert (=> b!5789413 m!6733184))

(assert (=> d!1823664 d!1823864))

(declare-fun c!1025091 () Bool)

(declare-fun call!450875 () List!63702)

(declare-fun bm!450868 () Bool)

(declare-fun call!450874 () (InoxSet Context!10370))

(assert (=> bm!450868 (= call!450874 (derivationStepZipperDown!1139 (ite c!1025091 (regOne!32115 (h!70026 (exprs!5685 lt!2296789))) (regOne!32114 (h!70026 (exprs!5685 lt!2296789)))) (ite c!1025091 (Context!10371 (t!377045 (exprs!5685 lt!2296789))) (Context!10371 call!450875)) (h!70028 s!2326)))))

(declare-fun b!5789414 () Bool)

(declare-fun e!3555537 () (InoxSet Context!10370))

(declare-fun e!3555540 () (InoxSet Context!10370))

(assert (=> b!5789414 (= e!3555537 e!3555540)))

(assert (=> b!5789414 (= c!1025091 ((_ is Union!15801) (h!70026 (exprs!5685 lt!2296789))))))

(declare-fun d!1823866 () Bool)

(declare-fun c!1025093 () Bool)

(assert (=> d!1823866 (= c!1025093 (and ((_ is ElementMatch!15801) (h!70026 (exprs!5685 lt!2296789))) (= (c!1024863 (h!70026 (exprs!5685 lt!2296789))) (h!70028 s!2326))))))

(assert (=> d!1823866 (= (derivationStepZipperDown!1139 (h!70026 (exprs!5685 lt!2296789)) (Context!10371 (t!377045 (exprs!5685 lt!2296789))) (h!70028 s!2326)) e!3555537)))

(declare-fun c!1025092 () Bool)

(declare-fun call!450873 () (InoxSet Context!10370))

(declare-fun call!450876 () List!63702)

(declare-fun bm!450869 () Bool)

(declare-fun c!1025094 () Bool)

(assert (=> bm!450869 (= call!450873 (derivationStepZipperDown!1139 (ite c!1025091 (regTwo!32115 (h!70026 (exprs!5685 lt!2296789))) (ite c!1025092 (regTwo!32114 (h!70026 (exprs!5685 lt!2296789))) (ite c!1025094 (regOne!32114 (h!70026 (exprs!5685 lt!2296789))) (reg!16130 (h!70026 (exprs!5685 lt!2296789)))))) (ite (or c!1025091 c!1025092) (Context!10371 (t!377045 (exprs!5685 lt!2296789))) (Context!10371 call!450876)) (h!70028 s!2326)))))

(declare-fun b!5789415 () Bool)

(declare-fun e!3555538 () (InoxSet Context!10370))

(declare-fun call!450878 () (InoxSet Context!10370))

(assert (=> b!5789415 (= e!3555538 ((_ map or) call!450874 call!450878))))

(declare-fun b!5789416 () Bool)

(declare-fun c!1025095 () Bool)

(assert (=> b!5789416 (= c!1025095 ((_ is Star!15801) (h!70026 (exprs!5685 lt!2296789))))))

(declare-fun e!3555541 () (InoxSet Context!10370))

(declare-fun e!3555539 () (InoxSet Context!10370))

(assert (=> b!5789416 (= e!3555541 e!3555539)))

(declare-fun bm!450870 () Bool)

(declare-fun call!450877 () (InoxSet Context!10370))

(assert (=> bm!450870 (= call!450877 call!450878)))

(declare-fun b!5789417 () Bool)

(assert (=> b!5789417 (= e!3555539 call!450877)))

(declare-fun b!5789418 () Bool)

(assert (=> b!5789418 (= e!3555539 ((as const (Array Context!10370 Bool)) false))))

(declare-fun bm!450871 () Bool)

(assert (=> bm!450871 (= call!450875 ($colon$colon!1788 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 lt!2296789)))) (ite (or c!1025092 c!1025094) (regTwo!32114 (h!70026 (exprs!5685 lt!2296789))) (h!70026 (exprs!5685 lt!2296789)))))))

(declare-fun b!5789419 () Bool)

(declare-fun e!3555536 () Bool)

(assert (=> b!5789419 (= e!3555536 (nullable!5833 (regOne!32114 (h!70026 (exprs!5685 lt!2296789)))))))

(declare-fun b!5789420 () Bool)

(assert (=> b!5789420 (= c!1025092 e!3555536)))

(declare-fun res!2442819 () Bool)

(assert (=> b!5789420 (=> (not res!2442819) (not e!3555536))))

(assert (=> b!5789420 (= res!2442819 ((_ is Concat!24646) (h!70026 (exprs!5685 lt!2296789))))))

(assert (=> b!5789420 (= e!3555540 e!3555538)))

(declare-fun b!5789421 () Bool)

(assert (=> b!5789421 (= e!3555541 call!450877)))

(declare-fun b!5789422 () Bool)

(assert (=> b!5789422 (= e!3555538 e!3555541)))

(assert (=> b!5789422 (= c!1025094 ((_ is Concat!24646) (h!70026 (exprs!5685 lt!2296789))))))

(declare-fun b!5789423 () Bool)

(assert (=> b!5789423 (= e!3555537 (store ((as const (Array Context!10370 Bool)) false) (Context!10371 (t!377045 (exprs!5685 lt!2296789))) true))))

(declare-fun bm!450872 () Bool)

(assert (=> bm!450872 (= call!450878 call!450873)))

(declare-fun bm!450873 () Bool)

(assert (=> bm!450873 (= call!450876 call!450875)))

(declare-fun b!5789424 () Bool)

(assert (=> b!5789424 (= e!3555540 ((_ map or) call!450874 call!450873))))

(assert (= (and d!1823866 c!1025093) b!5789423))

(assert (= (and d!1823866 (not c!1025093)) b!5789414))

(assert (= (and b!5789414 c!1025091) b!5789424))

(assert (= (and b!5789414 (not c!1025091)) b!5789420))

(assert (= (and b!5789420 res!2442819) b!5789419))

(assert (= (and b!5789420 c!1025092) b!5789415))

(assert (= (and b!5789420 (not c!1025092)) b!5789422))

(assert (= (and b!5789422 c!1025094) b!5789421))

(assert (= (and b!5789422 (not c!1025094)) b!5789416))

(assert (= (and b!5789416 c!1025095) b!5789417))

(assert (= (and b!5789416 (not c!1025095)) b!5789418))

(assert (= (or b!5789421 b!5789417) bm!450873))

(assert (= (or b!5789421 b!5789417) bm!450870))

(assert (= (or b!5789415 bm!450873) bm!450871))

(assert (= (or b!5789415 bm!450870) bm!450872))

(assert (= (or b!5789424 bm!450872) bm!450869))

(assert (= (or b!5789424 b!5789415) bm!450868))

(declare-fun m!6733186 () Bool)

(assert (=> b!5789423 m!6733186))

(declare-fun m!6733188 () Bool)

(assert (=> b!5789419 m!6733188))

(declare-fun m!6733190 () Bool)

(assert (=> bm!450869 m!6733190))

(declare-fun m!6733192 () Bool)

(assert (=> bm!450868 m!6733192))

(declare-fun m!6733194 () Bool)

(assert (=> bm!450871 m!6733194))

(assert (=> bm!450819 d!1823866))

(declare-fun d!1823868 () Bool)

(assert (=> d!1823868 (= (nullable!5833 (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) (nullableFct!1865 (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))))))

(declare-fun bs!1366723 () Bool)

(assert (= bs!1366723 d!1823868))

(declare-fun m!6733196 () Bool)

(assert (=> bs!1366723 m!6733196))

(assert (=> b!5789158 d!1823868))

(declare-fun b!5789425 () Bool)

(declare-fun e!3555542 () List!63704)

(assert (=> b!5789425 (= e!3555542 (_2!36201 (get!21945 lt!2296882)))))

(declare-fun b!5789428 () Bool)

(declare-fun e!3555543 () Bool)

(declare-fun lt!2296900 () List!63704)

(assert (=> b!5789428 (= e!3555543 (or (not (= (_2!36201 (get!21945 lt!2296882)) Nil!63580)) (= lt!2296900 (_1!36201 (get!21945 lt!2296882)))))))

(declare-fun b!5789426 () Bool)

(assert (=> b!5789426 (= e!3555542 (Cons!63580 (h!70028 (_1!36201 (get!21945 lt!2296882))) (++!14019 (t!377047 (_1!36201 (get!21945 lt!2296882))) (_2!36201 (get!21945 lt!2296882)))))))

(declare-fun d!1823870 () Bool)

(assert (=> d!1823870 e!3555543))

(declare-fun res!2442820 () Bool)

(assert (=> d!1823870 (=> (not res!2442820) (not e!3555543))))

(assert (=> d!1823870 (= res!2442820 (= (content!11630 lt!2296900) ((_ map or) (content!11630 (_1!36201 (get!21945 lt!2296882))) (content!11630 (_2!36201 (get!21945 lt!2296882))))))))

(assert (=> d!1823870 (= lt!2296900 e!3555542)))

(declare-fun c!1025096 () Bool)

(assert (=> d!1823870 (= c!1025096 ((_ is Nil!63580) (_1!36201 (get!21945 lt!2296882))))))

(assert (=> d!1823870 (= (++!14019 (_1!36201 (get!21945 lt!2296882)) (_2!36201 (get!21945 lt!2296882))) lt!2296900)))

(declare-fun b!5789427 () Bool)

(declare-fun res!2442821 () Bool)

(assert (=> b!5789427 (=> (not res!2442821) (not e!3555543))))

(assert (=> b!5789427 (= res!2442821 (= (size!40094 lt!2296900) (+ (size!40094 (_1!36201 (get!21945 lt!2296882))) (size!40094 (_2!36201 (get!21945 lt!2296882))))))))

(assert (= (and d!1823870 c!1025096) b!5789425))

(assert (= (and d!1823870 (not c!1025096)) b!5789426))

(assert (= (and d!1823870 res!2442820) b!5789427))

(assert (= (and b!5789427 res!2442821) b!5789428))

(declare-fun m!6733198 () Bool)

(assert (=> b!5789426 m!6733198))

(declare-fun m!6733200 () Bool)

(assert (=> d!1823870 m!6733200))

(declare-fun m!6733202 () Bool)

(assert (=> d!1823870 m!6733202))

(declare-fun m!6733204 () Bool)

(assert (=> d!1823870 m!6733204))

(declare-fun m!6733206 () Bool)

(assert (=> b!5789427 m!6733206))

(declare-fun m!6733208 () Bool)

(assert (=> b!5789427 m!6733208))

(declare-fun m!6733210 () Bool)

(assert (=> b!5789427 m!6733210))

(assert (=> b!5789198 d!1823870))

(assert (=> b!5789198 d!1823802))

(declare-fun d!1823872 () Bool)

(assert (=> d!1823872 (= (nullable!5833 r!7292) (nullableFct!1865 r!7292))))

(declare-fun bs!1366724 () Bool)

(assert (= bs!1366724 d!1823872))

(declare-fun m!6733212 () Bool)

(assert (=> bs!1366724 m!6733212))

(assert (=> b!5789138 d!1823872))

(declare-fun d!1823874 () Bool)

(assert (=> d!1823874 (= (isEmptyExpr!1281 lt!2296850) ((_ is EmptyExpr!15801) lt!2296850))))

(assert (=> b!5788972 d!1823874))

(assert (=> b!5789134 d!1823792))

(declare-fun d!1823876 () Bool)

(assert (=> d!1823876 true))

(declare-fun setRes!38909 () Bool)

(assert (=> d!1823876 setRes!38909))

(declare-fun condSetEmpty!38909 () Bool)

(declare-fun res!2442824 () (InoxSet Context!10370))

(assert (=> d!1823876 (= condSetEmpty!38909 (= res!2442824 ((as const (Array Context!10370 Bool)) false)))))

(assert (=> d!1823876 (= (choose!43955 lt!2296791 lambda!315604) res!2442824)))

(declare-fun setIsEmpty!38909 () Bool)

(assert (=> setIsEmpty!38909 setRes!38909))

(declare-fun e!3555546 () Bool)

(declare-fun setNonEmpty!38909 () Bool)

(declare-fun setElem!38909 () Context!10370)

(declare-fun tp!1597114 () Bool)

(assert (=> setNonEmpty!38909 (= setRes!38909 (and tp!1597114 (inv!82749 setElem!38909) e!3555546))))

(declare-fun setRest!38909 () (InoxSet Context!10370))

(assert (=> setNonEmpty!38909 (= res!2442824 ((_ map or) (store ((as const (Array Context!10370 Bool)) false) setElem!38909 true) setRest!38909))))

(declare-fun b!5789431 () Bool)

(declare-fun tp!1597113 () Bool)

(assert (=> b!5789431 (= e!3555546 tp!1597113)))

(assert (= (and d!1823876 condSetEmpty!38909) setIsEmpty!38909))

(assert (= (and d!1823876 (not condSetEmpty!38909)) setNonEmpty!38909))

(assert (= setNonEmpty!38909 b!5789431))

(declare-fun m!6733214 () Bool)

(assert (=> setNonEmpty!38909 m!6733214))

(assert (=> d!1823720 d!1823876))

(assert (=> bm!450828 d!1823774))

(declare-fun bs!1366725 () Bool)

(declare-fun b!5789436 () Bool)

(assert (= bs!1366725 (and b!5789436 b!5788529)))

(declare-fun lambda!315684 () Int)

(assert (=> bs!1366725 (not (= lambda!315684 lambda!315603))))

(declare-fun bs!1366726 () Bool)

(assert (= bs!1366726 (and b!5789436 b!5789095)))

(assert (=> bs!1366726 (= (and (= (reg!16130 (regOne!32115 r!7292)) (reg!16130 r!7292)) (= (regOne!32115 r!7292) r!7292)) (= lambda!315684 lambda!315658))))

(declare-fun bs!1366727 () Bool)

(assert (= bs!1366727 (and b!5789436 d!1823768)))

(assert (=> bs!1366727 (not (= lambda!315684 lambda!315668))))

(declare-fun bs!1366728 () Bool)

(assert (= bs!1366728 (and b!5789436 b!5789378)))

(assert (=> bs!1366728 (not (= lambda!315684 lambda!315682))))

(declare-fun bs!1366729 () Bool)

(assert (= bs!1366729 (and b!5789436 b!5789094)))

(assert (=> bs!1366729 (not (= lambda!315684 lambda!315659))))

(assert (=> bs!1366727 (not (= lambda!315684 lambda!315669))))

(assert (=> bs!1366725 (not (= lambda!315684 lambda!315601))))

(declare-fun bs!1366730 () Bool)

(assert (= bs!1366730 (and b!5789436 d!1823770)))

(assert (=> bs!1366730 (= (and (= (reg!16130 (regOne!32115 r!7292)) (reg!16130 r!7292)) (= (regOne!32115 r!7292) (Star!15801 (reg!16130 r!7292)))) (= lambda!315684 lambda!315675))))

(declare-fun bs!1366731 () Bool)

(assert (= bs!1366731 (and b!5789436 b!5789379)))

(assert (=> bs!1366731 (= (and (= (reg!16130 (regOne!32115 r!7292)) (reg!16130 (regTwo!32115 r!7292))) (= (regOne!32115 r!7292) (regTwo!32115 r!7292))) (= lambda!315684 lambda!315681))))

(assert (=> bs!1366725 (= (and (= (reg!16130 (regOne!32115 r!7292)) (reg!16130 r!7292)) (= (regOne!32115 r!7292) r!7292)) (= lambda!315684 lambda!315602))))

(declare-fun bs!1366732 () Bool)

(assert (= bs!1366732 (and b!5789436 d!1823780)))

(assert (=> bs!1366732 (not (= lambda!315684 lambda!315678))))

(assert (=> bs!1366730 (not (= lambda!315684 lambda!315674))))

(assert (=> b!5789436 true))

(assert (=> b!5789436 true))

(declare-fun bs!1366733 () Bool)

(declare-fun b!5789435 () Bool)

(assert (= bs!1366733 (and b!5789435 b!5788529)))

(declare-fun lambda!315685 () Int)

(assert (=> bs!1366733 (= (and (= (regOne!32114 (regOne!32115 r!7292)) (reg!16130 r!7292)) (= (regTwo!32114 (regOne!32115 r!7292)) r!7292)) (= lambda!315685 lambda!315603))))

(declare-fun bs!1366734 () Bool)

(assert (= bs!1366734 (and b!5789435 b!5789095)))

(assert (=> bs!1366734 (not (= lambda!315685 lambda!315658))))

(declare-fun bs!1366735 () Bool)

(assert (= bs!1366735 (and b!5789435 d!1823768)))

(assert (=> bs!1366735 (not (= lambda!315685 lambda!315668))))

(declare-fun bs!1366736 () Bool)

(assert (= bs!1366736 (and b!5789435 b!5789378)))

(assert (=> bs!1366736 (= (and (= (regOne!32114 (regOne!32115 r!7292)) (regOne!32114 (regTwo!32115 r!7292))) (= (regTwo!32114 (regOne!32115 r!7292)) (regTwo!32114 (regTwo!32115 r!7292)))) (= lambda!315685 lambda!315682))))

(declare-fun bs!1366737 () Bool)

(assert (= bs!1366737 (and b!5789435 b!5789094)))

(assert (=> bs!1366737 (= (and (= (regOne!32114 (regOne!32115 r!7292)) (regOne!32114 r!7292)) (= (regTwo!32114 (regOne!32115 r!7292)) (regTwo!32114 r!7292))) (= lambda!315685 lambda!315659))))

(assert (=> bs!1366735 (= (and (= (regOne!32114 (regOne!32115 r!7292)) (reg!16130 r!7292)) (= (regTwo!32114 (regOne!32115 r!7292)) r!7292)) (= lambda!315685 lambda!315669))))

(declare-fun bs!1366738 () Bool)

(assert (= bs!1366738 (and b!5789435 b!5789436)))

(assert (=> bs!1366738 (not (= lambda!315685 lambda!315684))))

(assert (=> bs!1366733 (not (= lambda!315685 lambda!315601))))

(declare-fun bs!1366739 () Bool)

(assert (= bs!1366739 (and b!5789435 d!1823770)))

(assert (=> bs!1366739 (not (= lambda!315685 lambda!315675))))

(declare-fun bs!1366740 () Bool)

(assert (= bs!1366740 (and b!5789435 b!5789379)))

(assert (=> bs!1366740 (not (= lambda!315685 lambda!315681))))

(assert (=> bs!1366733 (not (= lambda!315685 lambda!315602))))

(declare-fun bs!1366741 () Bool)

(assert (= bs!1366741 (and b!5789435 d!1823780)))

(assert (=> bs!1366741 (not (= lambda!315685 lambda!315678))))

(assert (=> bs!1366739 (not (= lambda!315685 lambda!315674))))

(assert (=> b!5789435 true))

(assert (=> b!5789435 true))

(declare-fun b!5789432 () Bool)

(declare-fun e!3555548 () Bool)

(declare-fun e!3555550 () Bool)

(assert (=> b!5789432 (= e!3555548 e!3555550)))

(declare-fun c!1025099 () Bool)

(assert (=> b!5789432 (= c!1025099 ((_ is Star!15801) (regOne!32115 r!7292)))))

(declare-fun b!5789433 () Bool)

(declare-fun c!1025097 () Bool)

(assert (=> b!5789433 (= c!1025097 ((_ is ElementMatch!15801) (regOne!32115 r!7292)))))

(declare-fun e!3555553 () Bool)

(declare-fun e!3555551 () Bool)

(assert (=> b!5789433 (= e!3555553 e!3555551)))

(declare-fun b!5789434 () Bool)

(declare-fun c!1025098 () Bool)

(assert (=> b!5789434 (= c!1025098 ((_ is Union!15801) (regOne!32115 r!7292)))))

(assert (=> b!5789434 (= e!3555551 e!3555548)))

(declare-fun call!450880 () Bool)

(assert (=> b!5789435 (= e!3555550 call!450880)))

(declare-fun e!3555549 () Bool)

(assert (=> b!5789436 (= e!3555549 call!450880)))

(declare-fun b!5789437 () Bool)

(declare-fun e!3555547 () Bool)

(declare-fun call!450879 () Bool)

(assert (=> b!5789437 (= e!3555547 call!450879)))

(declare-fun b!5789438 () Bool)

(assert (=> b!5789438 (= e!3555551 (= s!2326 (Cons!63580 (c!1024863 (regOne!32115 r!7292)) Nil!63580)))))

(declare-fun b!5789439 () Bool)

(declare-fun e!3555552 () Bool)

(assert (=> b!5789439 (= e!3555548 e!3555552)))

(declare-fun res!2442826 () Bool)

(assert (=> b!5789439 (= res!2442826 (matchRSpec!2904 (regOne!32115 (regOne!32115 r!7292)) s!2326))))

(assert (=> b!5789439 (=> res!2442826 e!3555552)))

(declare-fun d!1823878 () Bool)

(declare-fun c!1025100 () Bool)

(assert (=> d!1823878 (= c!1025100 ((_ is EmptyExpr!15801) (regOne!32115 r!7292)))))

(assert (=> d!1823878 (= (matchRSpec!2904 (regOne!32115 r!7292) s!2326) e!3555547)))

(declare-fun b!5789440 () Bool)

(assert (=> b!5789440 (= e!3555547 e!3555553)))

(declare-fun res!2442825 () Bool)

(assert (=> b!5789440 (= res!2442825 (not ((_ is EmptyLang!15801) (regOne!32115 r!7292))))))

(assert (=> b!5789440 (=> (not res!2442825) (not e!3555553))))

(declare-fun bm!450874 () Bool)

(assert (=> bm!450874 (= call!450879 (isEmpty!35484 s!2326))))

(declare-fun b!5789441 () Bool)

(assert (=> b!5789441 (= e!3555552 (matchRSpec!2904 (regTwo!32115 (regOne!32115 r!7292)) s!2326))))

(declare-fun bm!450875 () Bool)

(assert (=> bm!450875 (= call!450880 (Exists!2901 (ite c!1025099 lambda!315684 lambda!315685)))))

(declare-fun b!5789442 () Bool)

(declare-fun res!2442827 () Bool)

(assert (=> b!5789442 (=> res!2442827 e!3555549)))

(assert (=> b!5789442 (= res!2442827 call!450879)))

(assert (=> b!5789442 (= e!3555550 e!3555549)))

(assert (= (and d!1823878 c!1025100) b!5789437))

(assert (= (and d!1823878 (not c!1025100)) b!5789440))

(assert (= (and b!5789440 res!2442825) b!5789433))

(assert (= (and b!5789433 c!1025097) b!5789438))

(assert (= (and b!5789433 (not c!1025097)) b!5789434))

(assert (= (and b!5789434 c!1025098) b!5789439))

(assert (= (and b!5789434 (not c!1025098)) b!5789432))

(assert (= (and b!5789439 (not res!2442826)) b!5789441))

(assert (= (and b!5789432 c!1025099) b!5789442))

(assert (= (and b!5789432 (not c!1025099)) b!5789435))

(assert (= (and b!5789442 (not res!2442827)) b!5789436))

(assert (= (or b!5789436 b!5789435) bm!450875))

(assert (= (or b!5789437 b!5789442) bm!450874))

(declare-fun m!6733216 () Bool)

(assert (=> b!5789439 m!6733216))

(assert (=> bm!450874 m!6732586))

(declare-fun m!6733218 () Bool)

(assert (=> b!5789441 m!6733218))

(declare-fun m!6733220 () Bool)

(assert (=> bm!450875 m!6733220))

(assert (=> b!5789098 d!1823878))

(declare-fun d!1823880 () Bool)

(assert (=> d!1823880 (= (nullable!5833 (h!70026 (exprs!5685 lt!2296789))) (nullableFct!1865 (h!70026 (exprs!5685 lt!2296789))))))

(declare-fun bs!1366742 () Bool)

(assert (= bs!1366742 d!1823880))

(declare-fun m!6733222 () Bool)

(assert (=> bs!1366742 m!6733222))

(assert (=> b!5788932 d!1823880))

(declare-fun d!1823882 () Bool)

(declare-fun e!3555559 () Bool)

(assert (=> d!1823882 e!3555559))

(declare-fun c!1025103 () Bool)

(assert (=> d!1823882 (= c!1025103 ((_ is EmptyExpr!15801) (derivativeStep!4576 r!7292 (head!12227 s!2326))))))

(declare-fun lt!2296901 () Bool)

(declare-fun e!3555558 () Bool)

(assert (=> d!1823882 (= lt!2296901 e!3555558)))

(declare-fun c!1025101 () Bool)

(assert (=> d!1823882 (= c!1025101 (isEmpty!35484 (tail!11322 s!2326)))))

(assert (=> d!1823882 (validRegex!7537 (derivativeStep!4576 r!7292 (head!12227 s!2326)))))

(assert (=> d!1823882 (= (matchR!7986 (derivativeStep!4576 r!7292 (head!12227 s!2326)) (tail!11322 s!2326)) lt!2296901)))

(declare-fun b!5789443 () Bool)

(declare-fun res!2442832 () Bool)

(declare-fun e!3555560 () Bool)

(assert (=> b!5789443 (=> res!2442832 e!3555560)))

(assert (=> b!5789443 (= res!2442832 (not ((_ is ElementMatch!15801) (derivativeStep!4576 r!7292 (head!12227 s!2326)))))))

(declare-fun e!3555555 () Bool)

(assert (=> b!5789443 (= e!3555555 e!3555560)))

(declare-fun b!5789444 () Bool)

(declare-fun res!2442829 () Bool)

(declare-fun e!3555557 () Bool)

(assert (=> b!5789444 (=> (not res!2442829) (not e!3555557))))

(declare-fun call!450881 () Bool)

(assert (=> b!5789444 (= res!2442829 (not call!450881))))

(declare-fun b!5789445 () Bool)

(declare-fun res!2442835 () Bool)

(declare-fun e!3555556 () Bool)

(assert (=> b!5789445 (=> res!2442835 e!3555556)))

(assert (=> b!5789445 (= res!2442835 (not (isEmpty!35484 (tail!11322 (tail!11322 s!2326)))))))

(declare-fun b!5789446 () Bool)

(declare-fun e!3555554 () Bool)

(assert (=> b!5789446 (= e!3555554 e!3555556)))

(declare-fun res!2442834 () Bool)

(assert (=> b!5789446 (=> res!2442834 e!3555556)))

(assert (=> b!5789446 (= res!2442834 call!450881)))

(declare-fun b!5789447 () Bool)

(assert (=> b!5789447 (= e!3555557 (= (head!12227 (tail!11322 s!2326)) (c!1024863 (derivativeStep!4576 r!7292 (head!12227 s!2326)))))))

(declare-fun b!5789448 () Bool)

(assert (=> b!5789448 (= e!3555560 e!3555554)))

(declare-fun res!2442830 () Bool)

(assert (=> b!5789448 (=> (not res!2442830) (not e!3555554))))

(assert (=> b!5789448 (= res!2442830 (not lt!2296901))))

(declare-fun b!5789449 () Bool)

(assert (=> b!5789449 (= e!3555559 (= lt!2296901 call!450881))))

(declare-fun b!5789450 () Bool)

(assert (=> b!5789450 (= e!3555559 e!3555555)))

(declare-fun c!1025102 () Bool)

(assert (=> b!5789450 (= c!1025102 ((_ is EmptyLang!15801) (derivativeStep!4576 r!7292 (head!12227 s!2326))))))

(declare-fun b!5789451 () Bool)

(assert (=> b!5789451 (= e!3555558 (nullable!5833 (derivativeStep!4576 r!7292 (head!12227 s!2326))))))

(declare-fun b!5789452 () Bool)

(assert (=> b!5789452 (= e!3555558 (matchR!7986 (derivativeStep!4576 (derivativeStep!4576 r!7292 (head!12227 s!2326)) (head!12227 (tail!11322 s!2326))) (tail!11322 (tail!11322 s!2326))))))

(declare-fun b!5789453 () Bool)

(declare-fun res!2442831 () Bool)

(assert (=> b!5789453 (=> res!2442831 e!3555560)))

(assert (=> b!5789453 (= res!2442831 e!3555557)))

(declare-fun res!2442828 () Bool)

(assert (=> b!5789453 (=> (not res!2442828) (not e!3555557))))

(assert (=> b!5789453 (= res!2442828 lt!2296901)))

(declare-fun b!5789454 () Bool)

(assert (=> b!5789454 (= e!3555555 (not lt!2296901))))

(declare-fun b!5789455 () Bool)

(declare-fun res!2442833 () Bool)

(assert (=> b!5789455 (=> (not res!2442833) (not e!3555557))))

(assert (=> b!5789455 (= res!2442833 (isEmpty!35484 (tail!11322 (tail!11322 s!2326))))))

(declare-fun bm!450876 () Bool)

(assert (=> bm!450876 (= call!450881 (isEmpty!35484 (tail!11322 s!2326)))))

(declare-fun b!5789456 () Bool)

(assert (=> b!5789456 (= e!3555556 (not (= (head!12227 (tail!11322 s!2326)) (c!1024863 (derivativeStep!4576 r!7292 (head!12227 s!2326))))))))

(assert (= (and d!1823882 c!1025101) b!5789451))

(assert (= (and d!1823882 (not c!1025101)) b!5789452))

(assert (= (and d!1823882 c!1025103) b!5789449))

(assert (= (and d!1823882 (not c!1025103)) b!5789450))

(assert (= (and b!5789450 c!1025102) b!5789454))

(assert (= (and b!5789450 (not c!1025102)) b!5789443))

(assert (= (and b!5789443 (not res!2442832)) b!5789453))

(assert (= (and b!5789453 res!2442828) b!5789444))

(assert (= (and b!5789444 res!2442829) b!5789455))

(assert (= (and b!5789455 res!2442833) b!5789447))

(assert (= (and b!5789453 (not res!2442831)) b!5789448))

(assert (= (and b!5789448 res!2442830) b!5789446))

(assert (= (and b!5789446 (not res!2442834)) b!5789445))

(assert (= (and b!5789445 (not res!2442835)) b!5789456))

(assert (= (or b!5789449 b!5789444 b!5789446) bm!450876))

(assert (=> b!5789447 m!6732926))

(declare-fun m!6733224 () Bool)

(assert (=> b!5789447 m!6733224))

(assert (=> b!5789455 m!6732926))

(declare-fun m!6733226 () Bool)

(assert (=> b!5789455 m!6733226))

(assert (=> b!5789455 m!6733226))

(declare-fun m!6733228 () Bool)

(assert (=> b!5789455 m!6733228))

(assert (=> b!5789456 m!6732926))

(assert (=> b!5789456 m!6733224))

(assert (=> b!5789452 m!6732926))

(assert (=> b!5789452 m!6733224))

(assert (=> b!5789452 m!6732930))

(assert (=> b!5789452 m!6733224))

(declare-fun m!6733230 () Bool)

(assert (=> b!5789452 m!6733230))

(assert (=> b!5789452 m!6732926))

(assert (=> b!5789452 m!6733226))

(assert (=> b!5789452 m!6733230))

(assert (=> b!5789452 m!6733226))

(declare-fun m!6733232 () Bool)

(assert (=> b!5789452 m!6733232))

(assert (=> b!5789445 m!6732926))

(assert (=> b!5789445 m!6733226))

(assert (=> b!5789445 m!6733226))

(assert (=> b!5789445 m!6733228))

(assert (=> b!5789451 m!6732930))

(declare-fun m!6733234 () Bool)

(assert (=> b!5789451 m!6733234))

(assert (=> d!1823882 m!6732926))

(assert (=> d!1823882 m!6732928))

(assert (=> d!1823882 m!6732930))

(declare-fun m!6733236 () Bool)

(assert (=> d!1823882 m!6733236))

(assert (=> bm!450876 m!6732926))

(assert (=> bm!450876 m!6732928))

(assert (=> b!5789139 d!1823882))

(declare-fun bm!450885 () Bool)

(declare-fun call!450890 () Regex!15801)

(declare-fun call!450891 () Regex!15801)

(assert (=> bm!450885 (= call!450890 call!450891)))

(declare-fun b!5789477 () Bool)

(declare-fun e!3555572 () Regex!15801)

(declare-fun call!450892 () Regex!15801)

(assert (=> b!5789477 (= e!3555572 (Union!15801 (Concat!24646 call!450892 (regTwo!32114 r!7292)) EmptyLang!15801))))

(declare-fun b!5789479 () Bool)

(declare-fun e!3555574 () Regex!15801)

(assert (=> b!5789479 (= e!3555574 (Concat!24646 call!450890 r!7292))))

(declare-fun b!5789480 () Bool)

(declare-fun e!3555571 () Regex!15801)

(declare-fun call!450893 () Regex!15801)

(assert (=> b!5789480 (= e!3555571 (Union!15801 call!450893 call!450891))))

(declare-fun b!5789481 () Bool)

(declare-fun e!3555573 () Regex!15801)

(declare-fun e!3555575 () Regex!15801)

(assert (=> b!5789481 (= e!3555573 e!3555575)))

(declare-fun c!1025117 () Bool)

(assert (=> b!5789481 (= c!1025117 ((_ is ElementMatch!15801) r!7292))))

(declare-fun bm!450886 () Bool)

(assert (=> bm!450886 (= call!450892 call!450890)))

(declare-fun b!5789482 () Bool)

(assert (=> b!5789482 (= e!3555575 (ite (= (head!12227 s!2326) (c!1024863 r!7292)) EmptyExpr!15801 EmptyLang!15801))))

(declare-fun b!5789483 () Bool)

(assert (=> b!5789483 (= e!3555572 (Union!15801 (Concat!24646 call!450893 (regTwo!32114 r!7292)) call!450892))))

(declare-fun c!1025114 () Bool)

(declare-fun bm!450887 () Bool)

(declare-fun c!1025116 () Bool)

(declare-fun c!1025115 () Bool)

(assert (=> bm!450887 (= call!450891 (derivativeStep!4576 (ite c!1025115 (regTwo!32115 r!7292) (ite c!1025116 (reg!16130 r!7292) (ite c!1025114 (regTwo!32114 r!7292) (regOne!32114 r!7292)))) (head!12227 s!2326)))))

(declare-fun b!5789478 () Bool)

(assert (=> b!5789478 (= e!3555573 EmptyLang!15801)))

(declare-fun d!1823884 () Bool)

(declare-fun lt!2296904 () Regex!15801)

(assert (=> d!1823884 (validRegex!7537 lt!2296904)))

(assert (=> d!1823884 (= lt!2296904 e!3555573)))

(declare-fun c!1025118 () Bool)

(assert (=> d!1823884 (= c!1025118 (or ((_ is EmptyExpr!15801) r!7292) ((_ is EmptyLang!15801) r!7292)))))

(assert (=> d!1823884 (validRegex!7537 r!7292)))

(assert (=> d!1823884 (= (derivativeStep!4576 r!7292 (head!12227 s!2326)) lt!2296904)))

(declare-fun bm!450888 () Bool)

(assert (=> bm!450888 (= call!450893 (derivativeStep!4576 (ite c!1025115 (regOne!32115 r!7292) (regOne!32114 r!7292)) (head!12227 s!2326)))))

(declare-fun b!5789484 () Bool)

(assert (=> b!5789484 (= e!3555571 e!3555574)))

(assert (=> b!5789484 (= c!1025116 ((_ is Star!15801) r!7292))))

(declare-fun b!5789485 () Bool)

(assert (=> b!5789485 (= c!1025114 (nullable!5833 (regOne!32114 r!7292)))))

(assert (=> b!5789485 (= e!3555574 e!3555572)))

(declare-fun b!5789486 () Bool)

(assert (=> b!5789486 (= c!1025115 ((_ is Union!15801) r!7292))))

(assert (=> b!5789486 (= e!3555575 e!3555571)))

(assert (= (and d!1823884 c!1025118) b!5789478))

(assert (= (and d!1823884 (not c!1025118)) b!5789481))

(assert (= (and b!5789481 c!1025117) b!5789482))

(assert (= (and b!5789481 (not c!1025117)) b!5789486))

(assert (= (and b!5789486 c!1025115) b!5789480))

(assert (= (and b!5789486 (not c!1025115)) b!5789484))

(assert (= (and b!5789484 c!1025116) b!5789479))

(assert (= (and b!5789484 (not c!1025116)) b!5789485))

(assert (= (and b!5789485 c!1025114) b!5789483))

(assert (= (and b!5789485 (not c!1025114)) b!5789477))

(assert (= (or b!5789483 b!5789477) bm!450886))

(assert (= (or b!5789479 bm!450886) bm!450885))

(assert (= (or b!5789480 bm!450885) bm!450887))

(assert (= (or b!5789480 b!5789483) bm!450888))

(assert (=> bm!450887 m!6732924))

(declare-fun m!6733238 () Bool)

(assert (=> bm!450887 m!6733238))

(declare-fun m!6733240 () Bool)

(assert (=> d!1823884 m!6733240))

(assert (=> d!1823884 m!6732628))

(assert (=> bm!450888 m!6732924))

(declare-fun m!6733242 () Bool)

(assert (=> bm!450888 m!6733242))

(assert (=> b!5789485 m!6732942))

(assert (=> b!5789139 d!1823884))

(assert (=> b!5789139 d!1823792))

(assert (=> b!5789139 d!1823790))

(assert (=> b!5789199 d!1823752))

(declare-fun b!5789487 () Bool)

(declare-fun res!2442838 () Bool)

(declare-fun e!3555580 () Bool)

(assert (=> b!5789487 (=> (not res!2442838) (not e!3555580))))

(declare-fun call!450896 () Bool)

(assert (=> b!5789487 (= res!2442838 call!450896)))

(declare-fun e!3555576 () Bool)

(assert (=> b!5789487 (= e!3555576 e!3555580)))

(declare-fun d!1823886 () Bool)

(declare-fun res!2442837 () Bool)

(declare-fun e!3555581 () Bool)

(assert (=> d!1823886 (=> res!2442837 e!3555581)))

(assert (=> d!1823886 (= res!2442837 ((_ is ElementMatch!15801) lt!2296850))))

(assert (=> d!1823886 (= (validRegex!7537 lt!2296850) e!3555581)))

(declare-fun bm!450889 () Bool)

(declare-fun call!450895 () Bool)

(declare-fun c!1025119 () Bool)

(declare-fun c!1025120 () Bool)

(assert (=> bm!450889 (= call!450895 (validRegex!7537 (ite c!1025120 (reg!16130 lt!2296850) (ite c!1025119 (regOne!32115 lt!2296850) (regOne!32114 lt!2296850)))))))

(declare-fun b!5789488 () Bool)

(declare-fun call!450894 () Bool)

(assert (=> b!5789488 (= e!3555580 call!450894)))

(declare-fun bm!450890 () Bool)

(assert (=> bm!450890 (= call!450894 (validRegex!7537 (ite c!1025119 (regTwo!32115 lt!2296850) (regTwo!32114 lt!2296850))))))

(declare-fun b!5789489 () Bool)

(declare-fun e!3555577 () Bool)

(assert (=> b!5789489 (= e!3555577 call!450895)))

(declare-fun b!5789490 () Bool)

(declare-fun e!3555579 () Bool)

(assert (=> b!5789490 (= e!3555579 e!3555576)))

(assert (=> b!5789490 (= c!1025119 ((_ is Union!15801) lt!2296850))))

(declare-fun b!5789491 () Bool)

(declare-fun res!2442836 () Bool)

(declare-fun e!3555582 () Bool)

(assert (=> b!5789491 (=> res!2442836 e!3555582)))

(assert (=> b!5789491 (= res!2442836 (not ((_ is Concat!24646) lt!2296850)))))

(assert (=> b!5789491 (= e!3555576 e!3555582)))

(declare-fun bm!450891 () Bool)

(assert (=> bm!450891 (= call!450896 call!450895)))

(declare-fun b!5789492 () Bool)

(assert (=> b!5789492 (= e!3555579 e!3555577)))

(declare-fun res!2442840 () Bool)

(assert (=> b!5789492 (= res!2442840 (not (nullable!5833 (reg!16130 lt!2296850))))))

(assert (=> b!5789492 (=> (not res!2442840) (not e!3555577))))

(declare-fun b!5789493 () Bool)

(declare-fun e!3555578 () Bool)

(assert (=> b!5789493 (= e!3555578 call!450894)))

(declare-fun b!5789494 () Bool)

(assert (=> b!5789494 (= e!3555581 e!3555579)))

(assert (=> b!5789494 (= c!1025120 ((_ is Star!15801) lt!2296850))))

(declare-fun b!5789495 () Bool)

(assert (=> b!5789495 (= e!3555582 e!3555578)))

(declare-fun res!2442839 () Bool)

(assert (=> b!5789495 (=> (not res!2442839) (not e!3555578))))

(assert (=> b!5789495 (= res!2442839 call!450896)))

(assert (= (and d!1823886 (not res!2442837)) b!5789494))

(assert (= (and b!5789494 c!1025120) b!5789492))

(assert (= (and b!5789494 (not c!1025120)) b!5789490))

(assert (= (and b!5789492 res!2442840) b!5789489))

(assert (= (and b!5789490 c!1025119) b!5789487))

(assert (= (and b!5789490 (not c!1025119)) b!5789491))

(assert (= (and b!5789487 res!2442838) b!5789488))

(assert (= (and b!5789491 (not res!2442836)) b!5789495))

(assert (= (and b!5789495 res!2442839) b!5789493))

(assert (= (or b!5789488 b!5789493) bm!450890))

(assert (= (or b!5789487 b!5789495) bm!450891))

(assert (= (or b!5789489 bm!450891) bm!450889))

(declare-fun m!6733244 () Bool)

(assert (=> bm!450889 m!6733244))

(declare-fun m!6733246 () Bool)

(assert (=> bm!450890 m!6733246))

(declare-fun m!6733248 () Bool)

(assert (=> b!5789492 m!6733248))

(assert (=> d!1823726 d!1823886))

(declare-fun d!1823888 () Bool)

(declare-fun res!2442841 () Bool)

(declare-fun e!3555583 () Bool)

(assert (=> d!1823888 (=> res!2442841 e!3555583)))

(assert (=> d!1823888 (= res!2442841 ((_ is Nil!63578) (exprs!5685 (h!70027 zl!343))))))

(assert (=> d!1823888 (= (forall!14915 (exprs!5685 (h!70027 zl!343)) lambda!315647) e!3555583)))

(declare-fun b!5789496 () Bool)

(declare-fun e!3555584 () Bool)

(assert (=> b!5789496 (= e!3555583 e!3555584)))

(declare-fun res!2442842 () Bool)

(assert (=> b!5789496 (=> (not res!2442842) (not e!3555584))))

(assert (=> b!5789496 (= res!2442842 (dynLambda!24893 lambda!315647 (h!70026 (exprs!5685 (h!70027 zl!343)))))))

(declare-fun b!5789497 () Bool)

(assert (=> b!5789497 (= e!3555584 (forall!14915 (t!377045 (exprs!5685 (h!70027 zl!343))) lambda!315647))))

(assert (= (and d!1823888 (not res!2442841)) b!5789496))

(assert (= (and b!5789496 res!2442842) b!5789497))

(declare-fun b_lambda!218247 () Bool)

(assert (=> (not b_lambda!218247) (not b!5789496)))

(declare-fun m!6733250 () Bool)

(assert (=> b!5789496 m!6733250))

(declare-fun m!6733252 () Bool)

(assert (=> b!5789497 m!6733252))

(assert (=> d!1823726 d!1823888))

(declare-fun d!1823890 () Bool)

(assert (=> d!1823890 (= (isDefined!12513 lt!2296882) (not (isEmpty!35488 lt!2296882)))))

(declare-fun bs!1366743 () Bool)

(assert (= bs!1366743 d!1823890))

(declare-fun m!6733254 () Bool)

(assert (=> bs!1366743 m!6733254))

(assert (=> b!5789201 d!1823890))

(declare-fun c!1025121 () Bool)

(declare-fun bm!450892 () Bool)

(declare-fun call!450899 () List!63702)

(declare-fun call!450898 () (InoxSet Context!10370))

(assert (=> bm!450892 (= call!450898 (derivationStepZipperDown!1139 (ite c!1025121 (regOne!32115 (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292)))))) (regOne!32114 (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292))))))) (ite c!1025121 (ite (or c!1024987 c!1024988) (Context!10371 lt!2296787) (Context!10371 call!450821)) (Context!10371 call!450899)) (h!70028 s!2326)))))

(declare-fun b!5789498 () Bool)

(declare-fun e!3555586 () (InoxSet Context!10370))

(declare-fun e!3555589 () (InoxSet Context!10370))

(assert (=> b!5789498 (= e!3555586 e!3555589)))

(assert (=> b!5789498 (= c!1025121 ((_ is Union!15801) (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292)))))))))

(declare-fun d!1823892 () Bool)

(declare-fun c!1025123 () Bool)

(assert (=> d!1823892 (= c!1025123 (and ((_ is ElementMatch!15801) (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292)))))) (= (c!1024863 (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292)))))) (h!70028 s!2326))))))

(assert (=> d!1823892 (= (derivationStepZipperDown!1139 (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292))))) (ite (or c!1024987 c!1024988) (Context!10371 lt!2296787) (Context!10371 call!450821)) (h!70028 s!2326)) e!3555586)))

(declare-fun c!1025122 () Bool)

(declare-fun bm!450893 () Bool)

(declare-fun call!450900 () List!63702)

(declare-fun call!450897 () (InoxSet Context!10370))

(declare-fun c!1025124 () Bool)

(assert (=> bm!450893 (= call!450897 (derivationStepZipperDown!1139 (ite c!1025121 (regTwo!32115 (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292)))))) (ite c!1025122 (regTwo!32114 (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292)))))) (ite c!1025124 (regOne!32114 (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292)))))) (reg!16130 (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292))))))))) (ite (or c!1025121 c!1025122) (ite (or c!1024987 c!1024988) (Context!10371 lt!2296787) (Context!10371 call!450821)) (Context!10371 call!450900)) (h!70028 s!2326)))))

(declare-fun b!5789499 () Bool)

(declare-fun e!3555587 () (InoxSet Context!10370))

(declare-fun call!450902 () (InoxSet Context!10370))

(assert (=> b!5789499 (= e!3555587 ((_ map or) call!450898 call!450902))))

(declare-fun b!5789500 () Bool)

(declare-fun c!1025125 () Bool)

(assert (=> b!5789500 (= c!1025125 ((_ is Star!15801) (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292)))))))))

(declare-fun e!3555590 () (InoxSet Context!10370))

(declare-fun e!3555588 () (InoxSet Context!10370))

(assert (=> b!5789500 (= e!3555590 e!3555588)))

(declare-fun bm!450894 () Bool)

(declare-fun call!450901 () (InoxSet Context!10370))

(assert (=> bm!450894 (= call!450901 call!450902)))

(declare-fun b!5789501 () Bool)

(assert (=> b!5789501 (= e!3555588 call!450901)))

(declare-fun b!5789502 () Bool)

(assert (=> b!5789502 (= e!3555588 ((as const (Array Context!10370 Bool)) false))))

(declare-fun bm!450895 () Bool)

(assert (=> bm!450895 (= call!450899 ($colon$colon!1788 (exprs!5685 (ite (or c!1024987 c!1024988) (Context!10371 lt!2296787) (Context!10371 call!450821))) (ite (or c!1025122 c!1025124) (regTwo!32114 (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292)))))) (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292))))))))))

(declare-fun b!5789503 () Bool)

(declare-fun e!3555585 () Bool)

(assert (=> b!5789503 (= e!3555585 (nullable!5833 (regOne!32114 (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292))))))))))

(declare-fun b!5789504 () Bool)

(assert (=> b!5789504 (= c!1025122 e!3555585)))

(declare-fun res!2442843 () Bool)

(assert (=> b!5789504 (=> (not res!2442843) (not e!3555585))))

(assert (=> b!5789504 (= res!2442843 ((_ is Concat!24646) (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292)))))))))

(assert (=> b!5789504 (= e!3555589 e!3555587)))

(declare-fun b!5789505 () Bool)

(assert (=> b!5789505 (= e!3555590 call!450901)))

(declare-fun b!5789506 () Bool)

(assert (=> b!5789506 (= e!3555587 e!3555590)))

(assert (=> b!5789506 (= c!1025124 ((_ is Concat!24646) (ite c!1024987 (regTwo!32115 (reg!16130 r!7292)) (ite c!1024988 (regTwo!32114 (reg!16130 r!7292)) (ite c!1024990 (regOne!32114 (reg!16130 r!7292)) (reg!16130 (reg!16130 r!7292)))))))))

(declare-fun b!5789507 () Bool)

(assert (=> b!5789507 (= e!3555586 (store ((as const (Array Context!10370 Bool)) false) (ite (or c!1024987 c!1024988) (Context!10371 lt!2296787) (Context!10371 call!450821)) true))))

(declare-fun bm!450896 () Bool)

(assert (=> bm!450896 (= call!450902 call!450897)))

(declare-fun bm!450897 () Bool)

(assert (=> bm!450897 (= call!450900 call!450899)))

(declare-fun b!5789508 () Bool)

(assert (=> b!5789508 (= e!3555589 ((_ map or) call!450898 call!450897))))

(assert (= (and d!1823892 c!1025123) b!5789507))

(assert (= (and d!1823892 (not c!1025123)) b!5789498))

(assert (= (and b!5789498 c!1025121) b!5789508))

(assert (= (and b!5789498 (not c!1025121)) b!5789504))

(assert (= (and b!5789504 res!2442843) b!5789503))

(assert (= (and b!5789504 c!1025122) b!5789499))

(assert (= (and b!5789504 (not c!1025122)) b!5789506))

(assert (= (and b!5789506 c!1025124) b!5789505))

(assert (= (and b!5789506 (not c!1025124)) b!5789500))

(assert (= (and b!5789500 c!1025125) b!5789501))

(assert (= (and b!5789500 (not c!1025125)) b!5789502))

(assert (= (or b!5789505 b!5789501) bm!450897))

(assert (= (or b!5789505 b!5789501) bm!450894))

(assert (= (or b!5789499 bm!450897) bm!450895))

(assert (= (or b!5789499 bm!450894) bm!450896))

(assert (= (or b!5789508 bm!450896) bm!450893))

(assert (= (or b!5789508 b!5789499) bm!450892))

(declare-fun m!6733256 () Bool)

(assert (=> b!5789507 m!6733256))

(declare-fun m!6733258 () Bool)

(assert (=> b!5789503 m!6733258))

(declare-fun m!6733260 () Bool)

(assert (=> bm!450893 m!6733260))

(declare-fun m!6733262 () Bool)

(assert (=> bm!450892 m!6733262))

(declare-fun m!6733264 () Bool)

(assert (=> bm!450895 m!6733264))

(assert (=> bm!450814 d!1823892))

(declare-fun d!1823894 () Bool)

(assert (=> d!1823894 (= (Exists!2901 lambda!315668) (choose!43961 lambda!315668))))

(declare-fun bs!1366744 () Bool)

(assert (= bs!1366744 d!1823894))

(declare-fun m!6733266 () Bool)

(assert (=> bs!1366744 m!6733266))

(assert (=> d!1823768 d!1823894))

(declare-fun d!1823896 () Bool)

(assert (=> d!1823896 (= (Exists!2901 lambda!315669) (choose!43961 lambda!315669))))

(declare-fun bs!1366745 () Bool)

(assert (= bs!1366745 d!1823896))

(declare-fun m!6733268 () Bool)

(assert (=> bs!1366745 m!6733268))

(assert (=> d!1823768 d!1823896))

(declare-fun bs!1366746 () Bool)

(declare-fun d!1823898 () Bool)

(assert (= bs!1366746 (and d!1823898 b!5788529)))

(declare-fun lambda!315690 () Int)

(assert (=> bs!1366746 (not (= lambda!315690 lambda!315603))))

(declare-fun bs!1366747 () Bool)

(assert (= bs!1366747 (and d!1823898 b!5789095)))

(assert (=> bs!1366747 (not (= lambda!315690 lambda!315658))))

(declare-fun bs!1366748 () Bool)

(assert (= bs!1366748 (and d!1823898 d!1823768)))

(assert (=> bs!1366748 (= lambda!315690 lambda!315668)))

(declare-fun bs!1366749 () Bool)

(assert (= bs!1366749 (and d!1823898 b!5789378)))

(assert (=> bs!1366749 (not (= lambda!315690 lambda!315682))))

(declare-fun bs!1366750 () Bool)

(assert (= bs!1366750 (and d!1823898 b!5789094)))

(assert (=> bs!1366750 (not (= lambda!315690 lambda!315659))))

(assert (=> bs!1366748 (not (= lambda!315690 lambda!315669))))

(declare-fun bs!1366751 () Bool)

(assert (= bs!1366751 (and d!1823898 b!5789435)))

(assert (=> bs!1366751 (not (= lambda!315690 lambda!315685))))

(declare-fun bs!1366752 () Bool)

(assert (= bs!1366752 (and d!1823898 b!5789436)))

(assert (=> bs!1366752 (not (= lambda!315690 lambda!315684))))

(assert (=> bs!1366746 (= lambda!315690 lambda!315601)))

(declare-fun bs!1366753 () Bool)

(assert (= bs!1366753 (and d!1823898 d!1823770)))

(assert (=> bs!1366753 (not (= lambda!315690 lambda!315675))))

(declare-fun bs!1366754 () Bool)

(assert (= bs!1366754 (and d!1823898 b!5789379)))

(assert (=> bs!1366754 (not (= lambda!315690 lambda!315681))))

(assert (=> bs!1366746 (not (= lambda!315690 lambda!315602))))

(declare-fun bs!1366755 () Bool)

(assert (= bs!1366755 (and d!1823898 d!1823780)))

(assert (=> bs!1366755 (= lambda!315690 lambda!315678)))

(assert (=> bs!1366753 (= (= r!7292 (Star!15801 (reg!16130 r!7292))) (= lambda!315690 lambda!315674))))

(assert (=> d!1823898 true))

(assert (=> d!1823898 true))

(assert (=> d!1823898 true))

(declare-fun lambda!315691 () Int)

(assert (=> bs!1366747 (not (= lambda!315691 lambda!315658))))

(assert (=> bs!1366748 (not (= lambda!315691 lambda!315668))))

(assert (=> bs!1366749 (= (and (= (reg!16130 r!7292) (regOne!32114 (regTwo!32115 r!7292))) (= r!7292 (regTwo!32114 (regTwo!32115 r!7292)))) (= lambda!315691 lambda!315682))))

(assert (=> bs!1366750 (= (and (= (reg!16130 r!7292) (regOne!32114 r!7292)) (= r!7292 (regTwo!32114 r!7292))) (= lambda!315691 lambda!315659))))

(assert (=> bs!1366748 (= lambda!315691 lambda!315669)))

(assert (=> bs!1366751 (= (and (= (reg!16130 r!7292) (regOne!32114 (regOne!32115 r!7292))) (= r!7292 (regTwo!32114 (regOne!32115 r!7292)))) (= lambda!315691 lambda!315685))))

(assert (=> bs!1366752 (not (= lambda!315691 lambda!315684))))

(assert (=> bs!1366746 (not (= lambda!315691 lambda!315601))))

(assert (=> bs!1366753 (not (= lambda!315691 lambda!315675))))

(assert (=> bs!1366754 (not (= lambda!315691 lambda!315681))))

(assert (=> bs!1366746 (not (= lambda!315691 lambda!315602))))

(assert (=> bs!1366755 (not (= lambda!315691 lambda!315678))))

(assert (=> bs!1366753 (not (= lambda!315691 lambda!315674))))

(declare-fun bs!1366756 () Bool)

(assert (= bs!1366756 d!1823898))

(assert (=> bs!1366756 (not (= lambda!315691 lambda!315690))))

(assert (=> bs!1366746 (= lambda!315691 lambda!315603)))

(assert (=> d!1823898 true))

(assert (=> d!1823898 true))

(assert (=> d!1823898 true))

(assert (=> d!1823898 (= (Exists!2901 lambda!315690) (Exists!2901 lambda!315691))))

(assert (=> d!1823898 true))

(declare-fun _$90!1533 () Unit!156862)

(assert (=> d!1823898 (= (choose!43963 (reg!16130 r!7292) r!7292 s!2326) _$90!1533)))

(declare-fun m!6733270 () Bool)

(assert (=> bs!1366756 m!6733270))

(declare-fun m!6733272 () Bool)

(assert (=> bs!1366756 m!6733272))

(assert (=> d!1823768 d!1823898))

(declare-fun b!5789517 () Bool)

(declare-fun res!2442854 () Bool)

(declare-fun e!3555599 () Bool)

(assert (=> b!5789517 (=> (not res!2442854) (not e!3555599))))

(declare-fun call!450905 () Bool)

(assert (=> b!5789517 (= res!2442854 call!450905)))

(declare-fun e!3555595 () Bool)

(assert (=> b!5789517 (= e!3555595 e!3555599)))

(declare-fun d!1823900 () Bool)

(declare-fun res!2442853 () Bool)

(declare-fun e!3555600 () Bool)

(assert (=> d!1823900 (=> res!2442853 e!3555600)))

(assert (=> d!1823900 (= res!2442853 ((_ is ElementMatch!15801) (reg!16130 r!7292)))))

(assert (=> d!1823900 (= (validRegex!7537 (reg!16130 r!7292)) e!3555600)))

(declare-fun c!1025127 () Bool)

(declare-fun c!1025126 () Bool)

(declare-fun call!450904 () Bool)

(declare-fun bm!450898 () Bool)

(assert (=> bm!450898 (= call!450904 (validRegex!7537 (ite c!1025127 (reg!16130 (reg!16130 r!7292)) (ite c!1025126 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292))))))))

(declare-fun b!5789518 () Bool)

(declare-fun call!450903 () Bool)

(assert (=> b!5789518 (= e!3555599 call!450903)))

(declare-fun bm!450899 () Bool)

(assert (=> bm!450899 (= call!450903 (validRegex!7537 (ite c!1025126 (regTwo!32115 (reg!16130 r!7292)) (regTwo!32114 (reg!16130 r!7292)))))))

(declare-fun b!5789519 () Bool)

(declare-fun e!3555596 () Bool)

(assert (=> b!5789519 (= e!3555596 call!450904)))

(declare-fun b!5789520 () Bool)

(declare-fun e!3555598 () Bool)

(assert (=> b!5789520 (= e!3555598 e!3555595)))

(assert (=> b!5789520 (= c!1025126 ((_ is Union!15801) (reg!16130 r!7292)))))

(declare-fun b!5789521 () Bool)

(declare-fun res!2442852 () Bool)

(declare-fun e!3555601 () Bool)

(assert (=> b!5789521 (=> res!2442852 e!3555601)))

(assert (=> b!5789521 (= res!2442852 (not ((_ is Concat!24646) (reg!16130 r!7292))))))

(assert (=> b!5789521 (= e!3555595 e!3555601)))

(declare-fun bm!450900 () Bool)

(assert (=> bm!450900 (= call!450905 call!450904)))

(declare-fun b!5789522 () Bool)

(assert (=> b!5789522 (= e!3555598 e!3555596)))

(declare-fun res!2442856 () Bool)

(assert (=> b!5789522 (= res!2442856 (not (nullable!5833 (reg!16130 (reg!16130 r!7292)))))))

(assert (=> b!5789522 (=> (not res!2442856) (not e!3555596))))

(declare-fun b!5789523 () Bool)

(declare-fun e!3555597 () Bool)

(assert (=> b!5789523 (= e!3555597 call!450903)))

(declare-fun b!5789524 () Bool)

(assert (=> b!5789524 (= e!3555600 e!3555598)))

(assert (=> b!5789524 (= c!1025127 ((_ is Star!15801) (reg!16130 r!7292)))))

(declare-fun b!5789525 () Bool)

(assert (=> b!5789525 (= e!3555601 e!3555597)))

(declare-fun res!2442855 () Bool)

(assert (=> b!5789525 (=> (not res!2442855) (not e!3555597))))

(assert (=> b!5789525 (= res!2442855 call!450905)))

(assert (= (and d!1823900 (not res!2442853)) b!5789524))

(assert (= (and b!5789524 c!1025127) b!5789522))

(assert (= (and b!5789524 (not c!1025127)) b!5789520))

(assert (= (and b!5789522 res!2442856) b!5789519))

(assert (= (and b!5789520 c!1025126) b!5789517))

(assert (= (and b!5789520 (not c!1025126)) b!5789521))

(assert (= (and b!5789517 res!2442854) b!5789518))

(assert (= (and b!5789521 (not res!2442852)) b!5789525))

(assert (= (and b!5789525 res!2442855) b!5789523))

(assert (= (or b!5789518 b!5789523) bm!450899))

(assert (= (or b!5789517 b!5789525) bm!450900))

(assert (= (or b!5789519 bm!450900) bm!450898))

(declare-fun m!6733274 () Bool)

(assert (=> bm!450898 m!6733274))

(declare-fun m!6733276 () Bool)

(assert (=> bm!450899 m!6733276))

(declare-fun m!6733278 () Bool)

(assert (=> b!5789522 m!6733278))

(assert (=> d!1823768 d!1823900))

(declare-fun d!1823902 () Bool)

(assert (=> d!1823902 (= (nullable!5833 (regOne!32114 r!7292)) (nullableFct!1865 (regOne!32114 r!7292)))))

(declare-fun bs!1366757 () Bool)

(assert (= bs!1366757 d!1823902))

(declare-fun m!6733280 () Bool)

(assert (=> bs!1366757 m!6733280))

(assert (=> b!5789149 d!1823902))

(declare-fun d!1823904 () Bool)

(assert (=> d!1823904 (= (Exists!2901 (ite c!1025022 lambda!315658 lambda!315659)) (choose!43961 (ite c!1025022 lambda!315658 lambda!315659)))))

(declare-fun bs!1366758 () Bool)

(assert (= bs!1366758 d!1823904))

(declare-fun m!6733282 () Bool)

(assert (=> bs!1366758 m!6733282))

(assert (=> bm!450825 d!1823904))

(declare-fun d!1823906 () Bool)

(assert (=> d!1823906 (= (Exists!2901 lambda!315678) (choose!43961 lambda!315678))))

(declare-fun bs!1366759 () Bool)

(assert (= bs!1366759 d!1823906))

(declare-fun m!6733284 () Bool)

(assert (=> bs!1366759 m!6733284))

(assert (=> d!1823780 d!1823906))

(assert (=> d!1823780 d!1823766))

(declare-fun bs!1366760 () Bool)

(declare-fun d!1823908 () Bool)

(assert (= bs!1366760 (and d!1823908 b!5789095)))

(declare-fun lambda!315694 () Int)

(assert (=> bs!1366760 (not (= lambda!315694 lambda!315658))))

(declare-fun bs!1366761 () Bool)

(assert (= bs!1366761 (and d!1823908 d!1823768)))

(assert (=> bs!1366761 (= lambda!315694 lambda!315668)))

(declare-fun bs!1366762 () Bool)

(assert (= bs!1366762 (and d!1823908 b!5789378)))

(assert (=> bs!1366762 (not (= lambda!315694 lambda!315682))))

(declare-fun bs!1366763 () Bool)

(assert (= bs!1366763 (and d!1823908 b!5789094)))

(assert (=> bs!1366763 (not (= lambda!315694 lambda!315659))))

(assert (=> bs!1366761 (not (= lambda!315694 lambda!315669))))

(declare-fun bs!1366764 () Bool)

(assert (= bs!1366764 (and d!1823908 b!5789435)))

(assert (=> bs!1366764 (not (= lambda!315694 lambda!315685))))

(declare-fun bs!1366765 () Bool)

(assert (= bs!1366765 (and d!1823908 b!5788529)))

(assert (=> bs!1366765 (= lambda!315694 lambda!315601)))

(declare-fun bs!1366766 () Bool)

(assert (= bs!1366766 (and d!1823908 d!1823770)))

(assert (=> bs!1366766 (not (= lambda!315694 lambda!315675))))

(declare-fun bs!1366767 () Bool)

(assert (= bs!1366767 (and d!1823908 b!5789379)))

(assert (=> bs!1366767 (not (= lambda!315694 lambda!315681))))

(assert (=> bs!1366765 (not (= lambda!315694 lambda!315602))))

(declare-fun bs!1366768 () Bool)

(assert (= bs!1366768 (and d!1823908 d!1823780)))

(assert (=> bs!1366768 (= lambda!315694 lambda!315678)))

(assert (=> bs!1366766 (= (= r!7292 (Star!15801 (reg!16130 r!7292))) (= lambda!315694 lambda!315674))))

(declare-fun bs!1366769 () Bool)

(assert (= bs!1366769 (and d!1823908 d!1823898)))

(assert (=> bs!1366769 (= lambda!315694 lambda!315690)))

(assert (=> bs!1366765 (not (= lambda!315694 lambda!315603))))

(assert (=> bs!1366769 (not (= lambda!315694 lambda!315691))))

(declare-fun bs!1366770 () Bool)

(assert (= bs!1366770 (and d!1823908 b!5789436)))

(assert (=> bs!1366770 (not (= lambda!315694 lambda!315684))))

(assert (=> d!1823908 true))

(assert (=> d!1823908 true))

(assert (=> d!1823908 true))

(assert (=> d!1823908 (= (isDefined!12513 (findConcatSeparation!2224 (reg!16130 r!7292) r!7292 Nil!63580 s!2326 s!2326)) (Exists!2901 lambda!315694))))

(assert (=> d!1823908 true))

(declare-fun _$89!1909 () Unit!156862)

(assert (=> d!1823908 (= (choose!43965 (reg!16130 r!7292) r!7292 s!2326) _$89!1909)))

(declare-fun bs!1366771 () Bool)

(assert (= bs!1366771 d!1823908))

(assert (=> bs!1366771 m!6732594))

(assert (=> bs!1366771 m!6732594))

(assert (=> bs!1366771 m!6732598))

(declare-fun m!6733286 () Bool)

(assert (=> bs!1366771 m!6733286))

(assert (=> d!1823780 d!1823908))

(assert (=> d!1823780 d!1823778))

(assert (=> d!1823780 d!1823900))

(declare-fun d!1823910 () Bool)

(assert (=> d!1823910 (= (isEmpty!35485 (tail!11320 (exprs!5685 (h!70027 zl!343)))) ((_ is Nil!63578) (tail!11320 (exprs!5685 (h!70027 zl!343)))))))

(assert (=> b!5788966 d!1823910))

(declare-fun d!1823912 () Bool)

(assert (=> d!1823912 (= (tail!11320 (exprs!5685 (h!70027 zl!343))) (t!377045 (exprs!5685 (h!70027 zl!343))))))

(assert (=> b!5788966 d!1823912))

(declare-fun d!1823914 () Bool)

(declare-fun res!2442861 () Bool)

(declare-fun e!3555604 () Bool)

(assert (=> d!1823914 (=> res!2442861 e!3555604)))

(assert (=> d!1823914 (= res!2442861 ((_ is Nil!63578) (exprs!5685 setElem!38900)))))

(assert (=> d!1823914 (= (forall!14915 (exprs!5685 setElem!38900) lambda!315660) e!3555604)))

(declare-fun b!5789530 () Bool)

(declare-fun e!3555605 () Bool)

(assert (=> b!5789530 (= e!3555604 e!3555605)))

(declare-fun res!2442862 () Bool)

(assert (=> b!5789530 (=> (not res!2442862) (not e!3555605))))

(assert (=> b!5789530 (= res!2442862 (dynLambda!24893 lambda!315660 (h!70026 (exprs!5685 setElem!38900))))))

(declare-fun b!5789531 () Bool)

(assert (=> b!5789531 (= e!3555605 (forall!14915 (t!377045 (exprs!5685 setElem!38900)) lambda!315660))))

(assert (= (and d!1823914 (not res!2442861)) b!5789530))

(assert (= (and b!5789530 res!2442862) b!5789531))

(declare-fun b_lambda!218249 () Bool)

(assert (=> (not b_lambda!218249) (not b!5789530)))

(declare-fun m!6733288 () Bool)

(assert (=> b!5789530 m!6733288))

(declare-fun m!6733290 () Bool)

(assert (=> b!5789531 m!6733290))

(assert (=> d!1823756 d!1823914))

(assert (=> bm!450824 d!1823774))

(declare-fun d!1823916 () Bool)

(assert (=> d!1823916 (= (isEmpty!35485 (t!377045 (unfocusZipperList!1229 zl!343))) ((_ is Nil!63578) (t!377045 (unfocusZipperList!1229 zl!343))))))

(assert (=> b!5788678 d!1823916))

(declare-fun b!5789532 () Bool)

(declare-fun res!2442865 () Bool)

(declare-fun e!3555610 () Bool)

(assert (=> b!5789532 (=> (not res!2442865) (not e!3555610))))

(declare-fun call!450908 () Bool)

(assert (=> b!5789532 (= res!2442865 call!450908)))

(declare-fun e!3555606 () Bool)

(assert (=> b!5789532 (= e!3555606 e!3555610)))

(declare-fun d!1823918 () Bool)

(declare-fun res!2442864 () Bool)

(declare-fun e!3555611 () Bool)

(assert (=> d!1823918 (=> res!2442864 e!3555611)))

(assert (=> d!1823918 (= res!2442864 ((_ is ElementMatch!15801) (ite c!1024883 (reg!16130 r!7292) (ite c!1024882 (regOne!32115 r!7292) (regOne!32114 r!7292)))))))

(assert (=> d!1823918 (= (validRegex!7537 (ite c!1024883 (reg!16130 r!7292) (ite c!1024882 (regOne!32115 r!7292) (regOne!32114 r!7292)))) e!3555611)))

(declare-fun bm!450901 () Bool)

(declare-fun call!450907 () Bool)

(declare-fun c!1025128 () Bool)

(declare-fun c!1025129 () Bool)

(assert (=> bm!450901 (= call!450907 (validRegex!7537 (ite c!1025129 (reg!16130 (ite c!1024883 (reg!16130 r!7292) (ite c!1024882 (regOne!32115 r!7292) (regOne!32114 r!7292)))) (ite c!1025128 (regOne!32115 (ite c!1024883 (reg!16130 r!7292) (ite c!1024882 (regOne!32115 r!7292) (regOne!32114 r!7292)))) (regOne!32114 (ite c!1024883 (reg!16130 r!7292) (ite c!1024882 (regOne!32115 r!7292) (regOne!32114 r!7292))))))))))

(declare-fun b!5789533 () Bool)

(declare-fun call!450906 () Bool)

(assert (=> b!5789533 (= e!3555610 call!450906)))

(declare-fun bm!450902 () Bool)

(assert (=> bm!450902 (= call!450906 (validRegex!7537 (ite c!1025128 (regTwo!32115 (ite c!1024883 (reg!16130 r!7292) (ite c!1024882 (regOne!32115 r!7292) (regOne!32114 r!7292)))) (regTwo!32114 (ite c!1024883 (reg!16130 r!7292) (ite c!1024882 (regOne!32115 r!7292) (regOne!32114 r!7292)))))))))

(declare-fun b!5789534 () Bool)

(declare-fun e!3555607 () Bool)

(assert (=> b!5789534 (= e!3555607 call!450907)))

(declare-fun b!5789535 () Bool)

(declare-fun e!3555609 () Bool)

(assert (=> b!5789535 (= e!3555609 e!3555606)))

(assert (=> b!5789535 (= c!1025128 ((_ is Union!15801) (ite c!1024883 (reg!16130 r!7292) (ite c!1024882 (regOne!32115 r!7292) (regOne!32114 r!7292)))))))

(declare-fun b!5789536 () Bool)

(declare-fun res!2442863 () Bool)

(declare-fun e!3555612 () Bool)

(assert (=> b!5789536 (=> res!2442863 e!3555612)))

(assert (=> b!5789536 (= res!2442863 (not ((_ is Concat!24646) (ite c!1024883 (reg!16130 r!7292) (ite c!1024882 (regOne!32115 r!7292) (regOne!32114 r!7292))))))))

(assert (=> b!5789536 (= e!3555606 e!3555612)))

(declare-fun bm!450903 () Bool)

(assert (=> bm!450903 (= call!450908 call!450907)))

(declare-fun b!5789537 () Bool)

(assert (=> b!5789537 (= e!3555609 e!3555607)))

(declare-fun res!2442867 () Bool)

(assert (=> b!5789537 (= res!2442867 (not (nullable!5833 (reg!16130 (ite c!1024883 (reg!16130 r!7292) (ite c!1024882 (regOne!32115 r!7292) (regOne!32114 r!7292)))))))))

(assert (=> b!5789537 (=> (not res!2442867) (not e!3555607))))

(declare-fun b!5789538 () Bool)

(declare-fun e!3555608 () Bool)

(assert (=> b!5789538 (= e!3555608 call!450906)))

(declare-fun b!5789539 () Bool)

(assert (=> b!5789539 (= e!3555611 e!3555609)))

(assert (=> b!5789539 (= c!1025129 ((_ is Star!15801) (ite c!1024883 (reg!16130 r!7292) (ite c!1024882 (regOne!32115 r!7292) (regOne!32114 r!7292)))))))

(declare-fun b!5789540 () Bool)

(assert (=> b!5789540 (= e!3555612 e!3555608)))

(declare-fun res!2442866 () Bool)

(assert (=> b!5789540 (=> (not res!2442866) (not e!3555608))))

(assert (=> b!5789540 (= res!2442866 call!450908)))

(assert (= (and d!1823918 (not res!2442864)) b!5789539))

(assert (= (and b!5789539 c!1025129) b!5789537))

(assert (= (and b!5789539 (not c!1025129)) b!5789535))

(assert (= (and b!5789537 res!2442867) b!5789534))

(assert (= (and b!5789535 c!1025128) b!5789532))

(assert (= (and b!5789535 (not c!1025128)) b!5789536))

(assert (= (and b!5789532 res!2442865) b!5789533))

(assert (= (and b!5789536 (not res!2442863)) b!5789540))

(assert (= (and b!5789540 res!2442866) b!5789538))

(assert (= (or b!5789533 b!5789538) bm!450902))

(assert (= (or b!5789532 b!5789540) bm!450903))

(assert (= (or b!5789534 bm!450903) bm!450901))

(declare-fun m!6733292 () Bool)

(assert (=> bm!450901 m!6733292))

(declare-fun m!6733294 () Bool)

(assert (=> bm!450902 m!6733294))

(declare-fun m!6733296 () Bool)

(assert (=> b!5789537 m!6733296))

(assert (=> bm!450757 d!1823918))

(declare-fun call!450909 () (InoxSet Context!10370))

(declare-fun b!5789541 () Bool)

(declare-fun e!3555613 () (InoxSet Context!10370))

(assert (=> b!5789541 (= e!3555613 ((_ map or) call!450909 (derivationStepZipperUp!1065 (Context!10371 (t!377045 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 (h!70027 zl!343))))))) (h!70028 s!2326))))))

(declare-fun bm!450904 () Bool)

(assert (=> bm!450904 (= call!450909 (derivationStepZipperDown!1139 (h!70026 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 (h!70027 zl!343)))))) (Context!10371 (t!377045 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 (h!70027 zl!343))))))) (h!70028 s!2326)))))

(declare-fun b!5789542 () Bool)

(declare-fun e!3555614 () (InoxSet Context!10370))

(assert (=> b!5789542 (= e!3555614 ((as const (Array Context!10370 Bool)) false))))

(declare-fun b!5789544 () Bool)

(declare-fun e!3555615 () Bool)

(assert (=> b!5789544 (= e!3555615 (nullable!5833 (h!70026 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 (h!70027 zl!343))))))))))

(declare-fun b!5789545 () Bool)

(assert (=> b!5789545 (= e!3555614 call!450909)))

(declare-fun d!1823920 () Bool)

(declare-fun c!1025131 () Bool)

(assert (=> d!1823920 (= c!1025131 e!3555615)))

(declare-fun res!2442868 () Bool)

(assert (=> d!1823920 (=> (not res!2442868) (not e!3555615))))

(assert (=> d!1823920 (= res!2442868 ((_ is Cons!63578) (exprs!5685 (Context!10371 (t!377045 (exprs!5685 (h!70027 zl!343)))))))))

(assert (=> d!1823920 (= (derivationStepZipperUp!1065 (Context!10371 (t!377045 (exprs!5685 (h!70027 zl!343)))) (h!70028 s!2326)) e!3555613)))

(declare-fun b!5789543 () Bool)

(assert (=> b!5789543 (= e!3555613 e!3555614)))

(declare-fun c!1025130 () Bool)

(assert (=> b!5789543 (= c!1025130 ((_ is Cons!63578) (exprs!5685 (Context!10371 (t!377045 (exprs!5685 (h!70027 zl!343)))))))))

(assert (= (and d!1823920 res!2442868) b!5789544))

(assert (= (and d!1823920 c!1025131) b!5789541))

(assert (= (and d!1823920 (not c!1025131)) b!5789543))

(assert (= (and b!5789543 c!1025130) b!5789545))

(assert (= (and b!5789543 (not c!1025130)) b!5789542))

(assert (= (or b!5789541 b!5789545) bm!450904))

(declare-fun m!6733298 () Bool)

(assert (=> b!5789541 m!6733298))

(declare-fun m!6733300 () Bool)

(assert (=> bm!450904 m!6733300))

(declare-fun m!6733302 () Bool)

(assert (=> b!5789544 m!6733302))

(assert (=> b!5788809 d!1823920))

(declare-fun d!1823922 () Bool)

(assert (=> d!1823922 (= (flatMap!1408 z!1189 lambda!315663) (choose!43955 z!1189 lambda!315663))))

(declare-fun bs!1366772 () Bool)

(assert (= bs!1366772 d!1823922))

(declare-fun m!6733304 () Bool)

(assert (=> bs!1366772 m!6733304))

(assert (=> d!1823762 d!1823922))

(declare-fun d!1823924 () Bool)

(declare-fun res!2442873 () Bool)

(declare-fun e!3555620 () Bool)

(assert (=> d!1823924 (=> res!2442873 e!3555620)))

(assert (=> d!1823924 (= res!2442873 ((_ is Nil!63579) lt!2296820))))

(assert (=> d!1823924 (= (noDuplicate!1702 lt!2296820) e!3555620)))

(declare-fun b!5789550 () Bool)

(declare-fun e!3555621 () Bool)

(assert (=> b!5789550 (= e!3555620 e!3555621)))

(declare-fun res!2442874 () Bool)

(assert (=> b!5789550 (=> (not res!2442874) (not e!3555621))))

(declare-fun contains!19875 (List!63703 Context!10370) Bool)

(assert (=> b!5789550 (= res!2442874 (not (contains!19875 (t!377046 lt!2296820) (h!70027 lt!2296820))))))

(declare-fun b!5789551 () Bool)

(assert (=> b!5789551 (= e!3555621 (noDuplicate!1702 (t!377046 lt!2296820)))))

(assert (= (and d!1823924 (not res!2442873)) b!5789550))

(assert (= (and b!5789550 res!2442874) b!5789551))

(declare-fun m!6733306 () Bool)

(assert (=> b!5789550 m!6733306))

(declare-fun m!6733308 () Bool)

(assert (=> b!5789551 m!6733308))

(assert (=> d!1823682 d!1823924))

(declare-fun d!1823926 () Bool)

(declare-fun e!3555629 () Bool)

(assert (=> d!1823926 e!3555629))

(declare-fun res!2442880 () Bool)

(assert (=> d!1823926 (=> (not res!2442880) (not e!3555629))))

(declare-fun res!2442879 () List!63703)

(assert (=> d!1823926 (= res!2442880 (noDuplicate!1702 res!2442879))))

(declare-fun e!3555628 () Bool)

(assert (=> d!1823926 e!3555628))

(assert (=> d!1823926 (= (choose!43954 z!1189) res!2442879)))

(declare-fun b!5789559 () Bool)

(declare-fun e!3555630 () Bool)

(declare-fun tp!1597120 () Bool)

(assert (=> b!5789559 (= e!3555630 tp!1597120)))

(declare-fun b!5789558 () Bool)

(declare-fun tp!1597119 () Bool)

(assert (=> b!5789558 (= e!3555628 (and (inv!82749 (h!70027 res!2442879)) e!3555630 tp!1597119))))

(declare-fun b!5789560 () Bool)

(assert (=> b!5789560 (= e!3555629 (= (content!11629 res!2442879) z!1189))))

(assert (= b!5789558 b!5789559))

(assert (= (and d!1823926 ((_ is Cons!63579) res!2442879)) b!5789558))

(assert (= (and d!1823926 res!2442880) b!5789560))

(declare-fun m!6733310 () Bool)

(assert (=> d!1823926 m!6733310))

(declare-fun m!6733312 () Bool)

(assert (=> b!5789558 m!6733312))

(declare-fun m!6733314 () Bool)

(assert (=> b!5789560 m!6733314))

(assert (=> d!1823682 d!1823926))

(declare-fun d!1823928 () Bool)

(assert (=> d!1823928 (= ($colon$colon!1788 (exprs!5685 (Context!10371 lt!2296787)) (ite (or c!1024988 c!1024990) (regTwo!32114 (reg!16130 r!7292)) (reg!16130 r!7292))) (Cons!63578 (ite (or c!1024988 c!1024990) (regTwo!32114 (reg!16130 r!7292)) (reg!16130 r!7292)) (exprs!5685 (Context!10371 lt!2296787))))))

(assert (=> bm!450816 d!1823928))

(declare-fun d!1823930 () Bool)

(assert (=> d!1823930 true))

(assert (=> d!1823930 true))

(declare-fun res!2442881 () Bool)

(assert (=> d!1823930 (= (choose!43961 lambda!315601) res!2442881)))

(assert (=> d!1823776 d!1823930))

(declare-fun call!450912 () List!63702)

(declare-fun bm!450905 () Bool)

(declare-fun call!450911 () (InoxSet Context!10370))

(declare-fun c!1025132 () Bool)

(assert (=> bm!450905 (= call!450911 (derivationStepZipperDown!1139 (ite c!1025132 (regOne!32115 (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) (regOne!32114 (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578)))))) (ite c!1025132 (Context!10371 (t!377045 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) (Context!10371 call!450912)) (h!70028 s!2326)))))

(declare-fun b!5789561 () Bool)

(declare-fun e!3555632 () (InoxSet Context!10370))

(declare-fun e!3555635 () (InoxSet Context!10370))

(assert (=> b!5789561 (= e!3555632 e!3555635)))

(assert (=> b!5789561 (= c!1025132 ((_ is Union!15801) (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))))))

(declare-fun d!1823932 () Bool)

(declare-fun c!1025134 () Bool)

(assert (=> d!1823932 (= c!1025134 (and ((_ is ElementMatch!15801) (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) (= (c!1024863 (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) (h!70028 s!2326))))))

(assert (=> d!1823932 (= (derivationStepZipperDown!1139 (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578)))) (Context!10371 (t!377045 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) (h!70028 s!2326)) e!3555632)))

(declare-fun c!1025135 () Bool)

(declare-fun call!450913 () List!63702)

(declare-fun call!450910 () (InoxSet Context!10370))

(declare-fun c!1025133 () Bool)

(declare-fun bm!450906 () Bool)

(assert (=> bm!450906 (= call!450910 (derivationStepZipperDown!1139 (ite c!1025132 (regTwo!32115 (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) (ite c!1025133 (regTwo!32114 (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) (ite c!1025135 (regOne!32114 (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) (reg!16130 (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578)))))))) (ite (or c!1025132 c!1025133) (Context!10371 (t!377045 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) (Context!10371 call!450913)) (h!70028 s!2326)))))

(declare-fun b!5789562 () Bool)

(declare-fun e!3555633 () (InoxSet Context!10370))

(declare-fun call!450915 () (InoxSet Context!10370))

(assert (=> b!5789562 (= e!3555633 ((_ map or) call!450911 call!450915))))

(declare-fun b!5789563 () Bool)

(declare-fun c!1025136 () Bool)

(assert (=> b!5789563 (= c!1025136 ((_ is Star!15801) (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))))))

(declare-fun e!3555636 () (InoxSet Context!10370))

(declare-fun e!3555634 () (InoxSet Context!10370))

(assert (=> b!5789563 (= e!3555636 e!3555634)))

(declare-fun bm!450907 () Bool)

(declare-fun call!450914 () (InoxSet Context!10370))

(assert (=> bm!450907 (= call!450914 call!450915)))

(declare-fun b!5789564 () Bool)

(assert (=> b!5789564 (= e!3555634 call!450914)))

(declare-fun b!5789565 () Bool)

(assert (=> b!5789565 (= e!3555634 ((as const (Array Context!10370 Bool)) false))))

(declare-fun bm!450908 () Bool)

(assert (=> bm!450908 (= call!450912 ($colon$colon!1788 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578)))))) (ite (or c!1025133 c!1025135) (regTwo!32114 (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578)))))))))

(declare-fun b!5789566 () Bool)

(declare-fun e!3555631 () Bool)

(assert (=> b!5789566 (= e!3555631 (nullable!5833 (regOne!32114 (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578)))))))))

(declare-fun b!5789567 () Bool)

(assert (=> b!5789567 (= c!1025133 e!3555631)))

(declare-fun res!2442882 () Bool)

(assert (=> b!5789567 (=> (not res!2442882) (not e!3555631))))

(assert (=> b!5789567 (= res!2442882 ((_ is Concat!24646) (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))))))

(assert (=> b!5789567 (= e!3555635 e!3555633)))

(declare-fun b!5789568 () Bool)

(assert (=> b!5789568 (= e!3555636 call!450914)))

(declare-fun b!5789569 () Bool)

(assert (=> b!5789569 (= e!3555633 e!3555636)))

(assert (=> b!5789569 (= c!1025135 ((_ is Concat!24646) (h!70026 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))))))

(declare-fun b!5789570 () Bool)

(assert (=> b!5789570 (= e!3555632 (store ((as const (Array Context!10370 Bool)) false) (Context!10371 (t!377045 (exprs!5685 (Context!10371 (Cons!63578 r!7292 Nil!63578))))) true))))

(declare-fun bm!450909 () Bool)

(assert (=> bm!450909 (= call!450915 call!450910)))

(declare-fun bm!450910 () Bool)

(assert (=> bm!450910 (= call!450913 call!450912)))

(declare-fun b!5789571 () Bool)

(assert (=> b!5789571 (= e!3555635 ((_ map or) call!450911 call!450910))))

(assert (= (and d!1823932 c!1025134) b!5789570))

(assert (= (and d!1823932 (not c!1025134)) b!5789561))

(assert (= (and b!5789561 c!1025132) b!5789571))

(assert (= (and b!5789561 (not c!1025132)) b!5789567))

(assert (= (and b!5789567 res!2442882) b!5789566))

(assert (= (and b!5789567 c!1025133) b!5789562))

(assert (= (and b!5789567 (not c!1025133)) b!5789569))

(assert (= (and b!5789569 c!1025135) b!5789568))

(assert (= (and b!5789569 (not c!1025135)) b!5789563))

(assert (= (and b!5789563 c!1025136) b!5789564))

(assert (= (and b!5789563 (not c!1025136)) b!5789565))

(assert (= (or b!5789568 b!5789564) bm!450910))

(assert (= (or b!5789568 b!5789564) bm!450907))

(assert (= (or b!5789562 bm!450910) bm!450908))

(assert (= (or b!5789562 bm!450907) bm!450909))

(assert (= (or b!5789571 bm!450909) bm!450906))

(assert (= (or b!5789571 b!5789562) bm!450905))

(declare-fun m!6733316 () Bool)

(assert (=> b!5789570 m!6733316))

(declare-fun m!6733318 () Bool)

(assert (=> b!5789566 m!6733318))

(declare-fun m!6733320 () Bool)

(assert (=> bm!450906 m!6733320))

(declare-fun m!6733322 () Bool)

(assert (=> bm!450905 m!6733322))

(declare-fun m!6733324 () Bool)

(assert (=> bm!450908 m!6733324))

(assert (=> bm!450835 d!1823932))

(declare-fun d!1823934 () Bool)

(assert (=> d!1823934 (= (isEmpty!35485 (exprs!5685 (h!70027 zl!343))) ((_ is Nil!63578) (exprs!5685 (h!70027 zl!343))))))

(assert (=> b!5788971 d!1823934))

(declare-fun d!1823936 () Bool)

(assert (=> d!1823936 (= (isEmpty!35488 (findConcatSeparation!2224 (reg!16130 r!7292) r!7292 Nil!63580 s!2326 s!2326)) (not ((_ is Some!15809) (findConcatSeparation!2224 (reg!16130 r!7292) r!7292 Nil!63580 s!2326 s!2326))))))

(assert (=> d!1823766 d!1823936))

(declare-fun d!1823938 () Bool)

(assert (=> d!1823938 (= (isEmptyLang!1289 lt!2296809) ((_ is EmptyLang!15801) lt!2296809))))

(assert (=> b!5788683 d!1823938))

(declare-fun bs!1366773 () Bool)

(declare-fun d!1823940 () Bool)

(assert (= bs!1366773 (and d!1823940 d!1823664)))

(declare-fun lambda!315695 () Int)

(assert (=> bs!1366773 (= lambda!315695 lambda!315610)))

(declare-fun bs!1366774 () Bool)

(assert (= bs!1366774 (and d!1823940 d!1823740)))

(assert (=> bs!1366774 (= lambda!315695 lambda!315650)))

(declare-fun bs!1366775 () Bool)

(assert (= bs!1366775 (and d!1823940 d!1823726)))

(assert (=> bs!1366775 (= lambda!315695 lambda!315647)))

(declare-fun bs!1366776 () Bool)

(assert (= bs!1366776 (and d!1823940 d!1823676)))

(assert (=> bs!1366776 (= lambda!315695 lambda!315618)))

(declare-fun bs!1366777 () Bool)

(assert (= bs!1366777 (and d!1823940 d!1823852)))

(assert (=> bs!1366777 (= lambda!315695 lambda!315683)))

(declare-fun bs!1366778 () Bool)

(assert (= bs!1366778 (and d!1823940 d!1823756)))

(assert (=> bs!1366778 (= lambda!315695 lambda!315660)))

(declare-fun bs!1366779 () Bool)

(assert (= bs!1366779 (and d!1823940 d!1823816)))

(assert (=> bs!1366779 (= lambda!315695 lambda!315680)))

(declare-fun bs!1366780 () Bool)

(assert (= bs!1366780 (and d!1823940 d!1823804)))

(assert (=> bs!1366780 (= lambda!315695 lambda!315679)))

(declare-fun b!5789572 () Bool)

(declare-fun e!3555641 () Regex!15801)

(declare-fun e!3555637 () Regex!15801)

(assert (=> b!5789572 (= e!3555641 e!3555637)))

(declare-fun c!1025137 () Bool)

(assert (=> b!5789572 (= c!1025137 ((_ is Cons!63578) (t!377045 (exprs!5685 (h!70027 zl!343)))))))

(declare-fun b!5789573 () Bool)

(declare-fun e!3555639 () Bool)

(assert (=> b!5789573 (= e!3555639 (isEmpty!35485 (t!377045 (t!377045 (exprs!5685 (h!70027 zl!343))))))))

(declare-fun b!5789574 () Bool)

(declare-fun e!3555640 () Bool)

(declare-fun e!3555638 () Bool)

(assert (=> b!5789574 (= e!3555640 e!3555638)))

(declare-fun c!1025139 () Bool)

(assert (=> b!5789574 (= c!1025139 (isEmpty!35485 (tail!11320 (t!377045 (exprs!5685 (h!70027 zl!343))))))))

(declare-fun b!5789575 () Bool)

(assert (=> b!5789575 (= e!3555637 (Concat!24646 (h!70026 (t!377045 (exprs!5685 (h!70027 zl!343)))) (generalisedConcat!1416 (t!377045 (t!377045 (exprs!5685 (h!70027 zl!343)))))))))

(declare-fun b!5789576 () Bool)

(declare-fun lt!2296905 () Regex!15801)

(assert (=> b!5789576 (= e!3555638 (= lt!2296905 (head!12225 (t!377045 (exprs!5685 (h!70027 zl!343))))))))

(declare-fun e!3555642 () Bool)

(assert (=> d!1823940 e!3555642))

(declare-fun res!2442883 () Bool)

(assert (=> d!1823940 (=> (not res!2442883) (not e!3555642))))

(assert (=> d!1823940 (= res!2442883 (validRegex!7537 lt!2296905))))

(assert (=> d!1823940 (= lt!2296905 e!3555641)))

(declare-fun c!1025140 () Bool)

(assert (=> d!1823940 (= c!1025140 e!3555639)))

(declare-fun res!2442884 () Bool)

(assert (=> d!1823940 (=> (not res!2442884) (not e!3555639))))

(assert (=> d!1823940 (= res!2442884 ((_ is Cons!63578) (t!377045 (exprs!5685 (h!70027 zl!343)))))))

(assert (=> d!1823940 (forall!14915 (t!377045 (exprs!5685 (h!70027 zl!343))) lambda!315695)))

(assert (=> d!1823940 (= (generalisedConcat!1416 (t!377045 (exprs!5685 (h!70027 zl!343)))) lt!2296905)))

(declare-fun b!5789577 () Bool)

(assert (=> b!5789577 (= e!3555637 EmptyExpr!15801)))

(declare-fun b!5789578 () Bool)

(assert (=> b!5789578 (= e!3555638 (isConcat!804 lt!2296905))))

(declare-fun b!5789579 () Bool)

(assert (=> b!5789579 (= e!3555642 e!3555640)))

(declare-fun c!1025138 () Bool)

(assert (=> b!5789579 (= c!1025138 (isEmpty!35485 (t!377045 (exprs!5685 (h!70027 zl!343)))))))

(declare-fun b!5789580 () Bool)

(assert (=> b!5789580 (= e!3555640 (isEmptyExpr!1281 lt!2296905))))

(declare-fun b!5789581 () Bool)

(assert (=> b!5789581 (= e!3555641 (h!70026 (t!377045 (exprs!5685 (h!70027 zl!343)))))))

(assert (= (and d!1823940 res!2442884) b!5789573))

(assert (= (and d!1823940 c!1025140) b!5789581))

(assert (= (and d!1823940 (not c!1025140)) b!5789572))

(assert (= (and b!5789572 c!1025137) b!5789575))

(assert (= (and b!5789572 (not c!1025137)) b!5789577))

(assert (= (and d!1823940 res!2442883) b!5789579))

(assert (= (and b!5789579 c!1025138) b!5789580))

(assert (= (and b!5789579 (not c!1025138)) b!5789574))

(assert (= (and b!5789574 c!1025139) b!5789576))

(assert (= (and b!5789574 (not c!1025139)) b!5789578))

(declare-fun m!6733326 () Bool)

(assert (=> b!5789573 m!6733326))

(declare-fun m!6733328 () Bool)

(assert (=> b!5789574 m!6733328))

(assert (=> b!5789574 m!6733328))

(declare-fun m!6733330 () Bool)

(assert (=> b!5789574 m!6733330))

(declare-fun m!6733332 () Bool)

(assert (=> b!5789580 m!6733332))

(declare-fun m!6733334 () Bool)

(assert (=> b!5789576 m!6733334))

(assert (=> b!5789579 m!6732868))

(declare-fun m!6733336 () Bool)

(assert (=> b!5789575 m!6733336))

(declare-fun m!6733338 () Bool)

(assert (=> d!1823940 m!6733338))

(declare-fun m!6733340 () Bool)

(assert (=> d!1823940 m!6733340))

(declare-fun m!6733342 () Bool)

(assert (=> b!5789578 m!6733342))

(assert (=> b!5788967 d!1823940))

(assert (=> d!1823778 d!1823890))

(declare-fun d!1823942 () Bool)

(declare-fun e!3555648 () Bool)

(assert (=> d!1823942 e!3555648))

(declare-fun c!1025143 () Bool)

(assert (=> d!1823942 (= c!1025143 ((_ is EmptyExpr!15801) (reg!16130 r!7292)))))

(declare-fun lt!2296906 () Bool)

(declare-fun e!3555647 () Bool)

(assert (=> d!1823942 (= lt!2296906 e!3555647)))

(declare-fun c!1025141 () Bool)

(assert (=> d!1823942 (= c!1025141 (isEmpty!35484 Nil!63580))))

(assert (=> d!1823942 (validRegex!7537 (reg!16130 r!7292))))

(assert (=> d!1823942 (= (matchR!7986 (reg!16130 r!7292) Nil!63580) lt!2296906)))

(declare-fun b!5789582 () Bool)

(declare-fun res!2442889 () Bool)

(declare-fun e!3555649 () Bool)

(assert (=> b!5789582 (=> res!2442889 e!3555649)))

(assert (=> b!5789582 (= res!2442889 (not ((_ is ElementMatch!15801) (reg!16130 r!7292))))))

(declare-fun e!3555644 () Bool)

(assert (=> b!5789582 (= e!3555644 e!3555649)))

(declare-fun b!5789583 () Bool)

(declare-fun res!2442886 () Bool)

(declare-fun e!3555646 () Bool)

(assert (=> b!5789583 (=> (not res!2442886) (not e!3555646))))

(declare-fun call!450916 () Bool)

(assert (=> b!5789583 (= res!2442886 (not call!450916))))

(declare-fun b!5789584 () Bool)

(declare-fun res!2442892 () Bool)

(declare-fun e!3555645 () Bool)

(assert (=> b!5789584 (=> res!2442892 e!3555645)))

(assert (=> b!5789584 (= res!2442892 (not (isEmpty!35484 (tail!11322 Nil!63580))))))

(declare-fun b!5789585 () Bool)

(declare-fun e!3555643 () Bool)

(assert (=> b!5789585 (= e!3555643 e!3555645)))

(declare-fun res!2442891 () Bool)

(assert (=> b!5789585 (=> res!2442891 e!3555645)))

(assert (=> b!5789585 (= res!2442891 call!450916)))

(declare-fun b!5789586 () Bool)

(assert (=> b!5789586 (= e!3555646 (= (head!12227 Nil!63580) (c!1024863 (reg!16130 r!7292))))))

(declare-fun b!5789587 () Bool)

(assert (=> b!5789587 (= e!3555649 e!3555643)))

(declare-fun res!2442887 () Bool)

(assert (=> b!5789587 (=> (not res!2442887) (not e!3555643))))

(assert (=> b!5789587 (= res!2442887 (not lt!2296906))))

(declare-fun b!5789588 () Bool)

(assert (=> b!5789588 (= e!3555648 (= lt!2296906 call!450916))))

(declare-fun b!5789589 () Bool)

(assert (=> b!5789589 (= e!3555648 e!3555644)))

(declare-fun c!1025142 () Bool)

(assert (=> b!5789589 (= c!1025142 ((_ is EmptyLang!15801) (reg!16130 r!7292)))))

(declare-fun b!5789590 () Bool)

(assert (=> b!5789590 (= e!3555647 (nullable!5833 (reg!16130 r!7292)))))

(declare-fun b!5789591 () Bool)

(assert (=> b!5789591 (= e!3555647 (matchR!7986 (derivativeStep!4576 (reg!16130 r!7292) (head!12227 Nil!63580)) (tail!11322 Nil!63580)))))

(declare-fun b!5789592 () Bool)

(declare-fun res!2442888 () Bool)

(assert (=> b!5789592 (=> res!2442888 e!3555649)))

(assert (=> b!5789592 (= res!2442888 e!3555646)))

(declare-fun res!2442885 () Bool)

(assert (=> b!5789592 (=> (not res!2442885) (not e!3555646))))

(assert (=> b!5789592 (= res!2442885 lt!2296906)))

(declare-fun b!5789593 () Bool)

(assert (=> b!5789593 (= e!3555644 (not lt!2296906))))

(declare-fun b!5789594 () Bool)

(declare-fun res!2442890 () Bool)

(assert (=> b!5789594 (=> (not res!2442890) (not e!3555646))))

(assert (=> b!5789594 (= res!2442890 (isEmpty!35484 (tail!11322 Nil!63580)))))

(declare-fun bm!450911 () Bool)

(assert (=> bm!450911 (= call!450916 (isEmpty!35484 Nil!63580))))

(declare-fun b!5789595 () Bool)

(assert (=> b!5789595 (= e!3555645 (not (= (head!12227 Nil!63580) (c!1024863 (reg!16130 r!7292)))))))

(assert (= (and d!1823942 c!1025141) b!5789590))

(assert (= (and d!1823942 (not c!1025141)) b!5789591))

(assert (= (and d!1823942 c!1025143) b!5789588))

(assert (= (and d!1823942 (not c!1025143)) b!5789589))

(assert (= (and b!5789589 c!1025142) b!5789593))

(assert (= (and b!5789589 (not c!1025142)) b!5789582))

(assert (= (and b!5789582 (not res!2442889)) b!5789592))

(assert (= (and b!5789592 res!2442885) b!5789583))

(assert (= (and b!5789583 res!2442886) b!5789594))

(assert (= (and b!5789594 res!2442890) b!5789586))

(assert (= (and b!5789592 (not res!2442888)) b!5789587))

(assert (= (and b!5789587 res!2442887) b!5789585))

(assert (= (and b!5789585 (not res!2442891)) b!5789584))

(assert (= (and b!5789584 (not res!2442892)) b!5789595))

(assert (= (or b!5789588 b!5789583 b!5789585) bm!450911))

(declare-fun m!6733344 () Bool)

(assert (=> b!5789586 m!6733344))

(declare-fun m!6733346 () Bool)

(assert (=> b!5789594 m!6733346))

(assert (=> b!5789594 m!6733346))

(declare-fun m!6733348 () Bool)

(assert (=> b!5789594 m!6733348))

(assert (=> b!5789595 m!6733344))

(assert (=> b!5789591 m!6733344))

(assert (=> b!5789591 m!6733344))

(declare-fun m!6733350 () Bool)

(assert (=> b!5789591 m!6733350))

(assert (=> b!5789591 m!6733346))

(assert (=> b!5789591 m!6733350))

(assert (=> b!5789591 m!6733346))

(declare-fun m!6733352 () Bool)

(assert (=> b!5789591 m!6733352))

(assert (=> b!5789584 m!6733346))

(assert (=> b!5789584 m!6733346))

(assert (=> b!5789584 m!6733348))

(assert (=> b!5789590 m!6732648))

(declare-fun m!6733354 () Bool)

(assert (=> d!1823942 m!6733354))

(assert (=> d!1823942 m!6732968))

(assert (=> bm!450911 m!6733354))

(assert (=> d!1823778 d!1823942))

(assert (=> d!1823778 d!1823900))

(declare-fun d!1823944 () Bool)

(declare-fun c!1025146 () Bool)

(assert (=> d!1823944 (= c!1025146 ((_ is Nil!63579) lt!2296820))))

(declare-fun e!3555652 () (InoxSet Context!10370))

(assert (=> d!1823944 (= (content!11629 lt!2296820) e!3555652)))

(declare-fun b!5789600 () Bool)

(assert (=> b!5789600 (= e!3555652 ((as const (Array Context!10370 Bool)) false))))

(declare-fun b!5789601 () Bool)

(assert (=> b!5789601 (= e!3555652 ((_ map or) (store ((as const (Array Context!10370 Bool)) false) (h!70027 lt!2296820) true) (content!11629 (t!377046 lt!2296820))))))

(assert (= (and d!1823944 c!1025146) b!5789600))

(assert (= (and d!1823944 (not c!1025146)) b!5789601))

(declare-fun m!6733356 () Bool)

(assert (=> b!5789601 m!6733356))

(declare-fun m!6733358 () Bool)

(assert (=> b!5789601 m!6733358))

(assert (=> b!5788766 d!1823944))

(assert (=> bs!1366682 d!1823722))

(declare-fun d!1823946 () Bool)

(assert (=> d!1823946 true))

(assert (=> d!1823946 true))

(declare-fun res!2442893 () Bool)

(assert (=> d!1823946 (= (choose!43961 lambda!315603) res!2442893)))

(assert (=> d!1823772 d!1823946))

(assert (=> d!1823754 d!1823752))

(assert (=> d!1823754 d!1823742))

(declare-fun d!1823948 () Bool)

(assert (=> d!1823948 (= (matchR!7986 r!7292 s!2326) (matchRSpec!2904 r!7292 s!2326))))

(assert (=> d!1823948 true))

(declare-fun _$88!4103 () Unit!156862)

(assert (=> d!1823948 (= (choose!43960 r!7292 s!2326) _$88!4103)))

(declare-fun bs!1366781 () Bool)

(assert (= bs!1366781 d!1823948))

(assert (=> bs!1366781 m!6732622))

(assert (=> bs!1366781 m!6732620))

(assert (=> d!1823754 d!1823948))

(assert (=> d!1823754 d!1823656))

(declare-fun c!1025147 () Bool)

(declare-fun bm!450912 () Bool)

(declare-fun call!450918 () (InoxSet Context!10370))

(declare-fun call!450919 () List!63702)

(assert (=> bm!450912 (= call!450918 (derivationStepZipperDown!1139 (ite c!1025147 (regOne!32115 (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292)))) (regOne!32114 (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292))))) (ite c!1025147 (ite c!1024987 (Context!10371 lt!2296787) (Context!10371 call!450820)) (Context!10371 call!450919)) (h!70028 s!2326)))))

(declare-fun b!5789602 () Bool)

(declare-fun e!3555654 () (InoxSet Context!10370))

(declare-fun e!3555657 () (InoxSet Context!10370))

(assert (=> b!5789602 (= e!3555654 e!3555657)))

(assert (=> b!5789602 (= c!1025147 ((_ is Union!15801) (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292)))))))

(declare-fun c!1025149 () Bool)

(declare-fun d!1823950 () Bool)

(assert (=> d!1823950 (= c!1025149 (and ((_ is ElementMatch!15801) (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292)))) (= (c!1024863 (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292)))) (h!70028 s!2326))))))

(assert (=> d!1823950 (= (derivationStepZipperDown!1139 (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292))) (ite c!1024987 (Context!10371 lt!2296787) (Context!10371 call!450820)) (h!70028 s!2326)) e!3555654)))

(declare-fun c!1025148 () Bool)

(declare-fun call!450920 () List!63702)

(declare-fun c!1025150 () Bool)

(declare-fun call!450917 () (InoxSet Context!10370))

(declare-fun bm!450913 () Bool)

(assert (=> bm!450913 (= call!450917 (derivationStepZipperDown!1139 (ite c!1025147 (regTwo!32115 (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292)))) (ite c!1025148 (regTwo!32114 (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292)))) (ite c!1025150 (regOne!32114 (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292)))) (reg!16130 (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292))))))) (ite (or c!1025147 c!1025148) (ite c!1024987 (Context!10371 lt!2296787) (Context!10371 call!450820)) (Context!10371 call!450920)) (h!70028 s!2326)))))

(declare-fun b!5789603 () Bool)

(declare-fun e!3555655 () (InoxSet Context!10370))

(declare-fun call!450922 () (InoxSet Context!10370))

(assert (=> b!5789603 (= e!3555655 ((_ map or) call!450918 call!450922))))

(declare-fun b!5789604 () Bool)

(declare-fun c!1025151 () Bool)

(assert (=> b!5789604 (= c!1025151 ((_ is Star!15801) (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292)))))))

(declare-fun e!3555658 () (InoxSet Context!10370))

(declare-fun e!3555656 () (InoxSet Context!10370))

(assert (=> b!5789604 (= e!3555658 e!3555656)))

(declare-fun bm!450914 () Bool)

(declare-fun call!450921 () (InoxSet Context!10370))

(assert (=> bm!450914 (= call!450921 call!450922)))

(declare-fun b!5789605 () Bool)

(assert (=> b!5789605 (= e!3555656 call!450921)))

(declare-fun b!5789606 () Bool)

(assert (=> b!5789606 (= e!3555656 ((as const (Array Context!10370 Bool)) false))))

(declare-fun bm!450915 () Bool)

(assert (=> bm!450915 (= call!450919 ($colon$colon!1788 (exprs!5685 (ite c!1024987 (Context!10371 lt!2296787) (Context!10371 call!450820))) (ite (or c!1025148 c!1025150) (regTwo!32114 (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292)))) (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292))))))))

(declare-fun b!5789607 () Bool)

(declare-fun e!3555653 () Bool)

(assert (=> b!5789607 (= e!3555653 (nullable!5833 (regOne!32114 (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292))))))))

(declare-fun b!5789608 () Bool)

(assert (=> b!5789608 (= c!1025148 e!3555653)))

(declare-fun res!2442894 () Bool)

(assert (=> b!5789608 (=> (not res!2442894) (not e!3555653))))

(assert (=> b!5789608 (= res!2442894 ((_ is Concat!24646) (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292)))))))

(assert (=> b!5789608 (= e!3555657 e!3555655)))

(declare-fun b!5789609 () Bool)

(assert (=> b!5789609 (= e!3555658 call!450921)))

(declare-fun b!5789610 () Bool)

(assert (=> b!5789610 (= e!3555655 e!3555658)))

(assert (=> b!5789610 (= c!1025150 ((_ is Concat!24646) (ite c!1024987 (regOne!32115 (reg!16130 r!7292)) (regOne!32114 (reg!16130 r!7292)))))))

(declare-fun b!5789611 () Bool)

(assert (=> b!5789611 (= e!3555654 (store ((as const (Array Context!10370 Bool)) false) (ite c!1024987 (Context!10371 lt!2296787) (Context!10371 call!450820)) true))))

(declare-fun bm!450916 () Bool)

(assert (=> bm!450916 (= call!450922 call!450917)))

(declare-fun bm!450917 () Bool)

(assert (=> bm!450917 (= call!450920 call!450919)))

(declare-fun b!5789612 () Bool)

(assert (=> b!5789612 (= e!3555657 ((_ map or) call!450918 call!450917))))

(assert (= (and d!1823950 c!1025149) b!5789611))

(assert (= (and d!1823950 (not c!1025149)) b!5789602))

(assert (= (and b!5789602 c!1025147) b!5789612))

(assert (= (and b!5789602 (not c!1025147)) b!5789608))

(assert (= (and b!5789608 res!2442894) b!5789607))

(assert (= (and b!5789608 c!1025148) b!5789603))

(assert (= (and b!5789608 (not c!1025148)) b!5789610))

(assert (= (and b!5789610 c!1025150) b!5789609))

(assert (= (and b!5789610 (not c!1025150)) b!5789604))

(assert (= (and b!5789604 c!1025151) b!5789605))

(assert (= (and b!5789604 (not c!1025151)) b!5789606))

(assert (= (or b!5789609 b!5789605) bm!450917))

(assert (= (or b!5789609 b!5789605) bm!450914))

(assert (= (or b!5789603 bm!450917) bm!450915))

(assert (= (or b!5789603 bm!450914) bm!450916))

(assert (= (or b!5789612 bm!450916) bm!450913))

(assert (= (or b!5789612 b!5789603) bm!450912))

(declare-fun m!6733360 () Bool)

(assert (=> b!5789611 m!6733360))

(declare-fun m!6733362 () Bool)

(assert (=> b!5789607 m!6733362))

(declare-fun m!6733364 () Bool)

(assert (=> bm!450913 m!6733364))

(declare-fun m!6733366 () Bool)

(assert (=> bm!450912 m!6733366))

(declare-fun m!6733368 () Bool)

(assert (=> bm!450915 m!6733368))

(assert (=> bm!450813 d!1823950))

(declare-fun d!1823952 () Bool)

(assert (=> d!1823952 true))

(declare-fun setRes!38910 () Bool)

(assert (=> d!1823952 setRes!38910))

(declare-fun condSetEmpty!38910 () Bool)

(declare-fun res!2442895 () (InoxSet Context!10370))

(assert (=> d!1823952 (= condSetEmpty!38910 (= res!2442895 ((as const (Array Context!10370 Bool)) false)))))

(assert (=> d!1823952 (= (choose!43955 z!1189 lambda!315604) res!2442895)))

(declare-fun setIsEmpty!38910 () Bool)

(assert (=> setIsEmpty!38910 setRes!38910))

(declare-fun setNonEmpty!38910 () Bool)

(declare-fun e!3555659 () Bool)

(declare-fun setElem!38910 () Context!10370)

(declare-fun tp!1597122 () Bool)

(assert (=> setNonEmpty!38910 (= setRes!38910 (and tp!1597122 (inv!82749 setElem!38910) e!3555659))))

(declare-fun setRest!38910 () (InoxSet Context!10370))

(assert (=> setNonEmpty!38910 (= res!2442895 ((_ map or) (store ((as const (Array Context!10370 Bool)) false) setElem!38910 true) setRest!38910))))

(declare-fun b!5789613 () Bool)

(declare-fun tp!1597121 () Bool)

(assert (=> b!5789613 (= e!3555659 tp!1597121)))

(assert (= (and d!1823952 condSetEmpty!38910) setIsEmpty!38910))

(assert (= (and d!1823952 (not condSetEmpty!38910)) setNonEmpty!38910))

(assert (= setNonEmpty!38910 b!5789613))

(declare-fun m!6733370 () Bool)

(assert (=> setNonEmpty!38910 m!6733370))

(assert (=> d!1823684 d!1823952))

(declare-fun d!1823954 () Bool)

(assert (=> d!1823954 (= (Exists!2901 lambda!315674) (choose!43961 lambda!315674))))

(declare-fun bs!1366782 () Bool)

(assert (= bs!1366782 d!1823954))

(declare-fun m!6733372 () Bool)

(assert (=> bs!1366782 m!6733372))

(assert (=> d!1823770 d!1823954))

(declare-fun d!1823956 () Bool)

(assert (=> d!1823956 (= (Exists!2901 lambda!315675) (choose!43961 lambda!315675))))

(declare-fun bs!1366783 () Bool)

(assert (= bs!1366783 d!1823956))

(declare-fun m!6733374 () Bool)

(assert (=> bs!1366783 m!6733374))

(assert (=> d!1823770 d!1823956))

(declare-fun bs!1366784 () Bool)

(declare-fun d!1823958 () Bool)

(assert (= bs!1366784 (and d!1823958 b!5789095)))

(declare-fun lambda!315700 () Int)

(assert (=> bs!1366784 (not (= lambda!315700 lambda!315658))))

(declare-fun bs!1366785 () Bool)

(assert (= bs!1366785 (and d!1823958 d!1823768)))

(assert (=> bs!1366785 (= (= (Star!15801 (reg!16130 r!7292)) r!7292) (= lambda!315700 lambda!315668))))

(declare-fun bs!1366786 () Bool)

(assert (= bs!1366786 (and d!1823958 b!5789378)))

(assert (=> bs!1366786 (not (= lambda!315700 lambda!315682))))

(declare-fun bs!1366787 () Bool)

(assert (= bs!1366787 (and d!1823958 b!5789094)))

(assert (=> bs!1366787 (not (= lambda!315700 lambda!315659))))

(assert (=> bs!1366785 (not (= lambda!315700 lambda!315669))))

(declare-fun bs!1366788 () Bool)

(assert (= bs!1366788 (and d!1823958 b!5789435)))

(assert (=> bs!1366788 (not (= lambda!315700 lambda!315685))))

(declare-fun bs!1366789 () Bool)

(assert (= bs!1366789 (and d!1823958 b!5788529)))

(assert (=> bs!1366789 (= (= (Star!15801 (reg!16130 r!7292)) r!7292) (= lambda!315700 lambda!315601))))

(declare-fun bs!1366790 () Bool)

(assert (= bs!1366790 (and d!1823958 d!1823770)))

(assert (=> bs!1366790 (not (= lambda!315700 lambda!315675))))

(declare-fun bs!1366791 () Bool)

(assert (= bs!1366791 (and d!1823958 b!5789379)))

(assert (=> bs!1366791 (not (= lambda!315700 lambda!315681))))

(declare-fun bs!1366792 () Bool)

(assert (= bs!1366792 (and d!1823958 d!1823908)))

(assert (=> bs!1366792 (= (= (Star!15801 (reg!16130 r!7292)) r!7292) (= lambda!315700 lambda!315694))))

(assert (=> bs!1366789 (not (= lambda!315700 lambda!315602))))

(declare-fun bs!1366793 () Bool)

(assert (= bs!1366793 (and d!1823958 d!1823780)))

(assert (=> bs!1366793 (= (= (Star!15801 (reg!16130 r!7292)) r!7292) (= lambda!315700 lambda!315678))))

(assert (=> bs!1366790 (= lambda!315700 lambda!315674)))

(declare-fun bs!1366794 () Bool)

(assert (= bs!1366794 (and d!1823958 d!1823898)))

(assert (=> bs!1366794 (= (= (Star!15801 (reg!16130 r!7292)) r!7292) (= lambda!315700 lambda!315690))))

(assert (=> bs!1366789 (not (= lambda!315700 lambda!315603))))

(assert (=> bs!1366794 (not (= lambda!315700 lambda!315691))))

(declare-fun bs!1366795 () Bool)

(assert (= bs!1366795 (and d!1823958 b!5789436)))

(assert (=> bs!1366795 (not (= lambda!315700 lambda!315684))))

(assert (=> d!1823958 true))

(assert (=> d!1823958 true))

(declare-fun lambda!315701 () Int)

(assert (=> bs!1366784 (= (= (Star!15801 (reg!16130 r!7292)) r!7292) (= lambda!315701 lambda!315658))))

(assert (=> bs!1366785 (not (= lambda!315701 lambda!315668))))

(assert (=> bs!1366786 (not (= lambda!315701 lambda!315682))))

(assert (=> bs!1366787 (not (= lambda!315701 lambda!315659))))

(assert (=> bs!1366785 (not (= lambda!315701 lambda!315669))))

(declare-fun bs!1366796 () Bool)

(assert (= bs!1366796 d!1823958))

(assert (=> bs!1366796 (not (= lambda!315701 lambda!315700))))

(assert (=> bs!1366788 (not (= lambda!315701 lambda!315685))))

(assert (=> bs!1366789 (not (= lambda!315701 lambda!315601))))

(assert (=> bs!1366790 (= lambda!315701 lambda!315675)))

(assert (=> bs!1366791 (= (and (= (reg!16130 r!7292) (reg!16130 (regTwo!32115 r!7292))) (= (Star!15801 (reg!16130 r!7292)) (regTwo!32115 r!7292))) (= lambda!315701 lambda!315681))))

(assert (=> bs!1366792 (not (= lambda!315701 lambda!315694))))

(assert (=> bs!1366789 (= (= (Star!15801 (reg!16130 r!7292)) r!7292) (= lambda!315701 lambda!315602))))

(assert (=> bs!1366793 (not (= lambda!315701 lambda!315678))))

(assert (=> bs!1366790 (not (= lambda!315701 lambda!315674))))

(assert (=> bs!1366794 (not (= lambda!315701 lambda!315690))))

(assert (=> bs!1366789 (not (= lambda!315701 lambda!315603))))

(assert (=> bs!1366794 (not (= lambda!315701 lambda!315691))))

(assert (=> bs!1366795 (= (and (= (reg!16130 r!7292) (reg!16130 (regOne!32115 r!7292))) (= (Star!15801 (reg!16130 r!7292)) (regOne!32115 r!7292))) (= lambda!315701 lambda!315684))))

(assert (=> d!1823958 true))

(assert (=> d!1823958 true))

(assert (=> d!1823958 (= (Exists!2901 lambda!315700) (Exists!2901 lambda!315701))))

(assert (=> d!1823958 true))

(declare-fun _$91!536 () Unit!156862)

(assert (=> d!1823958 (= (choose!43964 (reg!16130 r!7292) s!2326) _$91!536)))

(declare-fun m!6733376 () Bool)

(assert (=> bs!1366796 m!6733376))

(declare-fun m!6733378 () Bool)

(assert (=> bs!1366796 m!6733378))

(assert (=> d!1823770 d!1823958))

(assert (=> d!1823770 d!1823900))

(assert (=> b!5788734 d!1823726))

(declare-fun bs!1366797 () Bool)

(declare-fun d!1823960 () Bool)

(assert (= bs!1366797 (and d!1823960 d!1823664)))

(declare-fun lambda!315702 () Int)

(assert (=> bs!1366797 (= lambda!315702 lambda!315610)))

(declare-fun bs!1366798 () Bool)

(assert (= bs!1366798 (and d!1823960 d!1823740)))

(assert (=> bs!1366798 (= lambda!315702 lambda!315650)))

(declare-fun bs!1366799 () Bool)

(assert (= bs!1366799 (and d!1823960 d!1823726)))

(assert (=> bs!1366799 (= lambda!315702 lambda!315647)))

(declare-fun bs!1366800 () Bool)

(assert (= bs!1366800 (and d!1823960 d!1823676)))

(assert (=> bs!1366800 (= lambda!315702 lambda!315618)))

(declare-fun bs!1366801 () Bool)

(assert (= bs!1366801 (and d!1823960 d!1823852)))

(assert (=> bs!1366801 (= lambda!315702 lambda!315683)))

(declare-fun bs!1366802 () Bool)

(assert (= bs!1366802 (and d!1823960 d!1823940)))

(assert (=> bs!1366802 (= lambda!315702 lambda!315695)))

(declare-fun bs!1366803 () Bool)

(assert (= bs!1366803 (and d!1823960 d!1823756)))

(assert (=> bs!1366803 (= lambda!315702 lambda!315660)))

(declare-fun bs!1366804 () Bool)

(assert (= bs!1366804 (and d!1823960 d!1823816)))

(assert (=> bs!1366804 (= lambda!315702 lambda!315680)))

(declare-fun bs!1366805 () Bool)

(assert (= bs!1366805 (and d!1823960 d!1823804)))

(assert (=> bs!1366805 (= lambda!315702 lambda!315679)))

(declare-fun lt!2296907 () List!63702)

(assert (=> d!1823960 (forall!14915 lt!2296907 lambda!315702)))

(declare-fun e!3555664 () List!63702)

(assert (=> d!1823960 (= lt!2296907 e!3555664)))

(declare-fun c!1025152 () Bool)

(assert (=> d!1823960 (= c!1025152 ((_ is Cons!63579) (t!377046 zl!343)))))

(assert (=> d!1823960 (= (unfocusZipperList!1229 (t!377046 zl!343)) lt!2296907)))

(declare-fun b!5789624 () Bool)

(assert (=> b!5789624 (= e!3555664 (Cons!63578 (generalisedConcat!1416 (exprs!5685 (h!70027 (t!377046 zl!343)))) (unfocusZipperList!1229 (t!377046 (t!377046 zl!343)))))))

(declare-fun b!5789625 () Bool)

(assert (=> b!5789625 (= e!3555664 Nil!63578)))

(assert (= (and d!1823960 c!1025152) b!5789624))

(assert (= (and d!1823960 (not c!1025152)) b!5789625))

(declare-fun m!6733380 () Bool)

(assert (=> d!1823960 m!6733380))

(declare-fun m!6733382 () Bool)

(assert (=> b!5789624 m!6733382))

(declare-fun m!6733384 () Bool)

(assert (=> b!5789624 m!6733384))

(assert (=> b!5788734 d!1823960))

(declare-fun call!450923 () (InoxSet Context!10370))

(declare-fun e!3555665 () (InoxSet Context!10370))

(declare-fun b!5789626 () Bool)

(assert (=> b!5789626 (= e!3555665 ((_ map or) call!450923 (derivationStepZipperUp!1065 (Context!10371 (t!377045 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 lt!2296789)))))) (h!70028 s!2326))))))

(declare-fun bm!450918 () Bool)

(assert (=> bm!450918 (= call!450923 (derivationStepZipperDown!1139 (h!70026 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 lt!2296789))))) (Context!10371 (t!377045 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 lt!2296789)))))) (h!70028 s!2326)))))

(declare-fun b!5789627 () Bool)

(declare-fun e!3555666 () (InoxSet Context!10370))

(assert (=> b!5789627 (= e!3555666 ((as const (Array Context!10370 Bool)) false))))

(declare-fun b!5789629 () Bool)

(declare-fun e!3555667 () Bool)

(assert (=> b!5789629 (= e!3555667 (nullable!5833 (h!70026 (exprs!5685 (Context!10371 (t!377045 (exprs!5685 lt!2296789)))))))))

(declare-fun b!5789630 () Bool)

(assert (=> b!5789630 (= e!3555666 call!450923)))

(declare-fun d!1823962 () Bool)

(declare-fun c!1025154 () Bool)

(assert (=> d!1823962 (= c!1025154 e!3555667)))

(declare-fun res!2442906 () Bool)

(assert (=> d!1823962 (=> (not res!2442906) (not e!3555667))))

(assert (=> d!1823962 (= res!2442906 ((_ is Cons!63578) (exprs!5685 (Context!10371 (t!377045 (exprs!5685 lt!2296789))))))))

(assert (=> d!1823962 (= (derivationStepZipperUp!1065 (Context!10371 (t!377045 (exprs!5685 lt!2296789))) (h!70028 s!2326)) e!3555665)))

(declare-fun b!5789628 () Bool)

(assert (=> b!5789628 (= e!3555665 e!3555666)))

(declare-fun c!1025153 () Bool)

(assert (=> b!5789628 (= c!1025153 ((_ is Cons!63578) (exprs!5685 (Context!10371 (t!377045 (exprs!5685 lt!2296789))))))))

(assert (= (and d!1823962 res!2442906) b!5789629))

(assert (= (and d!1823962 c!1025154) b!5789626))

(assert (= (and d!1823962 (not c!1025154)) b!5789628))

(assert (= (and b!5789628 c!1025153) b!5789630))

(assert (= (and b!5789628 (not c!1025153)) b!5789627))

(assert (= (or b!5789626 b!5789630) bm!450918))

(declare-fun m!6733386 () Bool)

(assert (=> b!5789626 m!6733386))

(declare-fun m!6733388 () Bool)

(assert (=> bm!450918 m!6733388))

(declare-fun m!6733390 () Bool)

(assert (=> b!5789629 m!6733390))

(assert (=> b!5788929 d!1823962))

(declare-fun b!5789631 () Bool)

(declare-fun e!3555668 () Bool)

(assert (=> b!5789631 (= e!3555668 tp_is_empty!40855)))

(declare-fun b!5789634 () Bool)

(declare-fun tp!1597123 () Bool)

(declare-fun tp!1597125 () Bool)

(assert (=> b!5789634 (= e!3555668 (and tp!1597123 tp!1597125))))

(declare-fun b!5789633 () Bool)

(declare-fun tp!1597124 () Bool)

(assert (=> b!5789633 (= e!3555668 tp!1597124)))

(assert (=> b!5789260 (= tp!1597099 e!3555668)))

(declare-fun b!5789632 () Bool)

(declare-fun tp!1597126 () Bool)

(declare-fun tp!1597127 () Bool)

(assert (=> b!5789632 (= e!3555668 (and tp!1597126 tp!1597127))))

(assert (= (and b!5789260 ((_ is ElementMatch!15801) (regOne!32115 (regOne!32115 r!7292)))) b!5789631))

(assert (= (and b!5789260 ((_ is Concat!24646) (regOne!32115 (regOne!32115 r!7292)))) b!5789632))

(assert (= (and b!5789260 ((_ is Star!15801) (regOne!32115 (regOne!32115 r!7292)))) b!5789633))

(assert (= (and b!5789260 ((_ is Union!15801) (regOne!32115 (regOne!32115 r!7292)))) b!5789634))

(declare-fun b!5789635 () Bool)

(declare-fun e!3555669 () Bool)

(assert (=> b!5789635 (= e!3555669 tp_is_empty!40855)))

(declare-fun b!5789638 () Bool)

(declare-fun tp!1597128 () Bool)

(declare-fun tp!1597130 () Bool)

(assert (=> b!5789638 (= e!3555669 (and tp!1597128 tp!1597130))))

(declare-fun b!5789637 () Bool)

(declare-fun tp!1597129 () Bool)

(assert (=> b!5789637 (= e!3555669 tp!1597129)))

(assert (=> b!5789260 (= tp!1597101 e!3555669)))

(declare-fun b!5789636 () Bool)

(declare-fun tp!1597131 () Bool)

(declare-fun tp!1597132 () Bool)

(assert (=> b!5789636 (= e!3555669 (and tp!1597131 tp!1597132))))

(assert (= (and b!5789260 ((_ is ElementMatch!15801) (regTwo!32115 (regOne!32115 r!7292)))) b!5789635))

(assert (= (and b!5789260 ((_ is Concat!24646) (regTwo!32115 (regOne!32115 r!7292)))) b!5789636))

(assert (= (and b!5789260 ((_ is Star!15801) (regTwo!32115 (regOne!32115 r!7292)))) b!5789637))

(assert (= (and b!5789260 ((_ is Union!15801) (regTwo!32115 (regOne!32115 r!7292)))) b!5789638))

(declare-fun b!5789639 () Bool)

(declare-fun e!3555670 () Bool)

(declare-fun tp!1597133 () Bool)

(declare-fun tp!1597134 () Bool)

(assert (=> b!5789639 (= e!3555670 (and tp!1597133 tp!1597134))))

(assert (=> b!5789223 (= tp!1597058 e!3555670)))

(assert (= (and b!5789223 ((_ is Cons!63578) (exprs!5685 (h!70027 (t!377046 zl!343))))) b!5789639))

(declare-fun b!5789640 () Bool)

(declare-fun e!3555671 () Bool)

(assert (=> b!5789640 (= e!3555671 tp_is_empty!40855)))

(declare-fun b!5789643 () Bool)

(declare-fun tp!1597135 () Bool)

(declare-fun tp!1597137 () Bool)

(assert (=> b!5789643 (= e!3555671 (and tp!1597135 tp!1597137))))

(declare-fun b!5789642 () Bool)

(declare-fun tp!1597136 () Bool)

(assert (=> b!5789642 (= e!3555671 tp!1597136)))

(assert (=> b!5789251 (= tp!1597090 e!3555671)))

(declare-fun b!5789641 () Bool)

(declare-fun tp!1597138 () Bool)

(declare-fun tp!1597139 () Bool)

(assert (=> b!5789641 (= e!3555671 (and tp!1597138 tp!1597139))))

(assert (= (and b!5789251 ((_ is ElementMatch!15801) (reg!16130 (regOne!32114 r!7292)))) b!5789640))

(assert (= (and b!5789251 ((_ is Concat!24646) (reg!16130 (regOne!32114 r!7292)))) b!5789641))

(assert (= (and b!5789251 ((_ is Star!15801) (reg!16130 (regOne!32114 r!7292)))) b!5789642))

(assert (= (and b!5789251 ((_ is Union!15801) (reg!16130 (regOne!32114 r!7292)))) b!5789643))

(declare-fun b!5789644 () Bool)

(declare-fun e!3555672 () Bool)

(assert (=> b!5789644 (= e!3555672 tp_is_empty!40855)))

(declare-fun b!5789647 () Bool)

(declare-fun tp!1597140 () Bool)

(declare-fun tp!1597142 () Bool)

(assert (=> b!5789647 (= e!3555672 (and tp!1597140 tp!1597142))))

(declare-fun b!5789646 () Bool)

(declare-fun tp!1597141 () Bool)

(assert (=> b!5789646 (= e!3555672 tp!1597141)))

(assert (=> b!5789252 (= tp!1597089 e!3555672)))

(declare-fun b!5789645 () Bool)

(declare-fun tp!1597143 () Bool)

(declare-fun tp!1597144 () Bool)

(assert (=> b!5789645 (= e!3555672 (and tp!1597143 tp!1597144))))

(assert (= (and b!5789252 ((_ is ElementMatch!15801) (regOne!32115 (regOne!32114 r!7292)))) b!5789644))

(assert (= (and b!5789252 ((_ is Concat!24646) (regOne!32115 (regOne!32114 r!7292)))) b!5789645))

(assert (= (and b!5789252 ((_ is Star!15801) (regOne!32115 (regOne!32114 r!7292)))) b!5789646))

(assert (= (and b!5789252 ((_ is Union!15801) (regOne!32115 (regOne!32114 r!7292)))) b!5789647))

(declare-fun b!5789648 () Bool)

(declare-fun e!3555673 () Bool)

(assert (=> b!5789648 (= e!3555673 tp_is_empty!40855)))

(declare-fun b!5789651 () Bool)

(declare-fun tp!1597145 () Bool)

(declare-fun tp!1597147 () Bool)

(assert (=> b!5789651 (= e!3555673 (and tp!1597145 tp!1597147))))

(declare-fun b!5789650 () Bool)

(declare-fun tp!1597146 () Bool)

(assert (=> b!5789650 (= e!3555673 tp!1597146)))

(assert (=> b!5789252 (= tp!1597091 e!3555673)))

(declare-fun b!5789649 () Bool)

(declare-fun tp!1597148 () Bool)

(declare-fun tp!1597149 () Bool)

(assert (=> b!5789649 (= e!3555673 (and tp!1597148 tp!1597149))))

(assert (= (and b!5789252 ((_ is ElementMatch!15801) (regTwo!32115 (regOne!32114 r!7292)))) b!5789648))

(assert (= (and b!5789252 ((_ is Concat!24646) (regTwo!32115 (regOne!32114 r!7292)))) b!5789649))

(assert (= (and b!5789252 ((_ is Star!15801) (regTwo!32115 (regOne!32114 r!7292)))) b!5789650))

(assert (= (and b!5789252 ((_ is Union!15801) (regTwo!32115 (regOne!32114 r!7292)))) b!5789651))

(declare-fun b!5789652 () Bool)

(declare-fun e!3555674 () Bool)

(assert (=> b!5789652 (= e!3555674 tp_is_empty!40855)))

(declare-fun b!5789655 () Bool)

(declare-fun tp!1597150 () Bool)

(declare-fun tp!1597152 () Bool)

(assert (=> b!5789655 (= e!3555674 (and tp!1597150 tp!1597152))))

(declare-fun b!5789654 () Bool)

(declare-fun tp!1597151 () Bool)

(assert (=> b!5789654 (= e!3555674 tp!1597151)))

(assert (=> b!5789258 (= tp!1597102 e!3555674)))

(declare-fun b!5789653 () Bool)

(declare-fun tp!1597153 () Bool)

(declare-fun tp!1597154 () Bool)

(assert (=> b!5789653 (= e!3555674 (and tp!1597153 tp!1597154))))

(assert (= (and b!5789258 ((_ is ElementMatch!15801) (regOne!32114 (regOne!32115 r!7292)))) b!5789652))

(assert (= (and b!5789258 ((_ is Concat!24646) (regOne!32114 (regOne!32115 r!7292)))) b!5789653))

(assert (= (and b!5789258 ((_ is Star!15801) (regOne!32114 (regOne!32115 r!7292)))) b!5789654))

(assert (= (and b!5789258 ((_ is Union!15801) (regOne!32114 (regOne!32115 r!7292)))) b!5789655))

(declare-fun b!5789656 () Bool)

(declare-fun e!3555675 () Bool)

(assert (=> b!5789656 (= e!3555675 tp_is_empty!40855)))

(declare-fun b!5789659 () Bool)

(declare-fun tp!1597155 () Bool)

(declare-fun tp!1597157 () Bool)

(assert (=> b!5789659 (= e!3555675 (and tp!1597155 tp!1597157))))

(declare-fun b!5789658 () Bool)

(declare-fun tp!1597156 () Bool)

(assert (=> b!5789658 (= e!3555675 tp!1597156)))

(assert (=> b!5789258 (= tp!1597103 e!3555675)))

(declare-fun b!5789657 () Bool)

(declare-fun tp!1597158 () Bool)

(declare-fun tp!1597159 () Bool)

(assert (=> b!5789657 (= e!3555675 (and tp!1597158 tp!1597159))))

(assert (= (and b!5789258 ((_ is ElementMatch!15801) (regTwo!32114 (regOne!32115 r!7292)))) b!5789656))

(assert (= (and b!5789258 ((_ is Concat!24646) (regTwo!32114 (regOne!32115 r!7292)))) b!5789657))

(assert (= (and b!5789258 ((_ is Star!15801) (regTwo!32114 (regOne!32115 r!7292)))) b!5789658))

(assert (= (and b!5789258 ((_ is Union!15801) (regTwo!32114 (regOne!32115 r!7292)))) b!5789659))

(declare-fun b!5789660 () Bool)

(declare-fun e!3555676 () Bool)

(declare-fun tp!1597160 () Bool)

(assert (=> b!5789660 (= e!3555676 (and tp_is_empty!40855 tp!1597160))))

(assert (=> b!5789215 (= tp!1597053 e!3555676)))

(assert (= (and b!5789215 ((_ is Cons!63580) (t!377047 (t!377047 s!2326)))) b!5789660))

(declare-fun b!5789661 () Bool)

(declare-fun e!3555677 () Bool)

(assert (=> b!5789661 (= e!3555677 tp_is_empty!40855)))

(declare-fun b!5789664 () Bool)

(declare-fun tp!1597161 () Bool)

(declare-fun tp!1597163 () Bool)

(assert (=> b!5789664 (= e!3555677 (and tp!1597161 tp!1597163))))

(declare-fun b!5789663 () Bool)

(declare-fun tp!1597162 () Bool)

(assert (=> b!5789663 (= e!3555677 tp!1597162)))

(assert (=> b!5789250 (= tp!1597092 e!3555677)))

(declare-fun b!5789662 () Bool)

(declare-fun tp!1597164 () Bool)

(declare-fun tp!1597165 () Bool)

(assert (=> b!5789662 (= e!3555677 (and tp!1597164 tp!1597165))))

(assert (= (and b!5789250 ((_ is ElementMatch!15801) (regOne!32114 (regOne!32114 r!7292)))) b!5789661))

(assert (= (and b!5789250 ((_ is Concat!24646) (regOne!32114 (regOne!32114 r!7292)))) b!5789662))

(assert (= (and b!5789250 ((_ is Star!15801) (regOne!32114 (regOne!32114 r!7292)))) b!5789663))

(assert (= (and b!5789250 ((_ is Union!15801) (regOne!32114 (regOne!32114 r!7292)))) b!5789664))

(declare-fun b!5789665 () Bool)

(declare-fun e!3555678 () Bool)

(assert (=> b!5789665 (= e!3555678 tp_is_empty!40855)))

(declare-fun b!5789668 () Bool)

(declare-fun tp!1597166 () Bool)

(declare-fun tp!1597168 () Bool)

(assert (=> b!5789668 (= e!3555678 (and tp!1597166 tp!1597168))))

(declare-fun b!5789667 () Bool)

(declare-fun tp!1597167 () Bool)

(assert (=> b!5789667 (= e!3555678 tp!1597167)))

(assert (=> b!5789250 (= tp!1597093 e!3555678)))

(declare-fun b!5789666 () Bool)

(declare-fun tp!1597169 () Bool)

(declare-fun tp!1597170 () Bool)

(assert (=> b!5789666 (= e!3555678 (and tp!1597169 tp!1597170))))

(assert (= (and b!5789250 ((_ is ElementMatch!15801) (regTwo!32114 (regOne!32114 r!7292)))) b!5789665))

(assert (= (and b!5789250 ((_ is Concat!24646) (regTwo!32114 (regOne!32114 r!7292)))) b!5789666))

(assert (= (and b!5789250 ((_ is Star!15801) (regTwo!32114 (regOne!32114 r!7292)))) b!5789667))

(assert (= (and b!5789250 ((_ is Union!15801) (regTwo!32114 (regOne!32114 r!7292)))) b!5789668))

(declare-fun b!5789669 () Bool)

(declare-fun e!3555679 () Bool)

(assert (=> b!5789669 (= e!3555679 tp_is_empty!40855)))

(declare-fun b!5789672 () Bool)

(declare-fun tp!1597171 () Bool)

(declare-fun tp!1597173 () Bool)

(assert (=> b!5789672 (= e!3555679 (and tp!1597171 tp!1597173))))

(declare-fun b!5789671 () Bool)

(declare-fun tp!1597172 () Bool)

(assert (=> b!5789671 (= e!3555679 tp!1597172)))

(assert (=> b!5789259 (= tp!1597100 e!3555679)))

(declare-fun b!5789670 () Bool)

(declare-fun tp!1597174 () Bool)

(declare-fun tp!1597175 () Bool)

(assert (=> b!5789670 (= e!3555679 (and tp!1597174 tp!1597175))))

(assert (= (and b!5789259 ((_ is ElementMatch!15801) (reg!16130 (regOne!32115 r!7292)))) b!5789669))

(assert (= (and b!5789259 ((_ is Concat!24646) (reg!16130 (regOne!32115 r!7292)))) b!5789670))

(assert (= (and b!5789259 ((_ is Star!15801) (reg!16130 (regOne!32115 r!7292)))) b!5789671))

(assert (= (and b!5789259 ((_ is Union!15801) (reg!16130 (regOne!32115 r!7292)))) b!5789672))

(declare-fun b!5789674 () Bool)

(declare-fun e!3555681 () Bool)

(declare-fun tp!1597176 () Bool)

(assert (=> b!5789674 (= e!3555681 tp!1597176)))

(declare-fun e!3555680 () Bool)

(declare-fun tp!1597177 () Bool)

(declare-fun b!5789673 () Bool)

(assert (=> b!5789673 (= e!3555680 (and (inv!82749 (h!70027 (t!377046 (t!377046 zl!343)))) e!3555681 tp!1597177))))

(assert (=> b!5789222 (= tp!1597059 e!3555680)))

(assert (= b!5789673 b!5789674))

(assert (= (and b!5789222 ((_ is Cons!63579) (t!377046 (t!377046 zl!343)))) b!5789673))

(declare-fun m!6733392 () Bool)

(assert (=> b!5789673 m!6733392))

(declare-fun condSetEmpty!38911 () Bool)

(assert (=> setNonEmpty!38906 (= condSetEmpty!38911 (= setRest!38906 ((as const (Array Context!10370 Bool)) false)))))

(declare-fun setRes!38911 () Bool)

(assert (=> setNonEmpty!38906 (= tp!1597086 setRes!38911)))

(declare-fun setIsEmpty!38911 () Bool)

(assert (=> setIsEmpty!38911 setRes!38911))

(declare-fun tp!1597179 () Bool)

(declare-fun setNonEmpty!38911 () Bool)

(declare-fun setElem!38911 () Context!10370)

(declare-fun e!3555682 () Bool)

(assert (=> setNonEmpty!38911 (= setRes!38911 (and tp!1597179 (inv!82749 setElem!38911) e!3555682))))

(declare-fun setRest!38911 () (InoxSet Context!10370))

(assert (=> setNonEmpty!38911 (= setRest!38906 ((_ map or) (store ((as const (Array Context!10370 Bool)) false) setElem!38911 true) setRest!38911))))

(declare-fun b!5789675 () Bool)

(declare-fun tp!1597178 () Bool)

(assert (=> b!5789675 (= e!3555682 tp!1597178)))

(assert (= (and setNonEmpty!38906 condSetEmpty!38911) setIsEmpty!38911))

(assert (= (and setNonEmpty!38906 (not condSetEmpty!38911)) setNonEmpty!38911))

(assert (= setNonEmpty!38911 b!5789675))

(declare-fun m!6733394 () Bool)

(assert (=> setNonEmpty!38911 m!6733394))

(declare-fun b!5789676 () Bool)

(declare-fun e!3555683 () Bool)

(declare-fun tp!1597180 () Bool)

(declare-fun tp!1597181 () Bool)

(assert (=> b!5789676 (= e!3555683 (and tp!1597180 tp!1597181))))

(assert (=> b!5789247 (= tp!1597085 e!3555683)))

(assert (= (and b!5789247 ((_ is Cons!63578) (exprs!5685 setElem!38906))) b!5789676))

(declare-fun b!5789677 () Bool)

(declare-fun e!3555684 () Bool)

(assert (=> b!5789677 (= e!3555684 tp_is_empty!40855)))

(declare-fun b!5789680 () Bool)

(declare-fun tp!1597182 () Bool)

(declare-fun tp!1597184 () Bool)

(assert (=> b!5789680 (= e!3555684 (and tp!1597182 tp!1597184))))

(declare-fun b!5789679 () Bool)

(declare-fun tp!1597183 () Bool)

(assert (=> b!5789679 (= e!3555684 tp!1597183)))

(assert (=> b!5789256 (= tp!1597094 e!3555684)))

(declare-fun b!5789678 () Bool)

(declare-fun tp!1597185 () Bool)

(declare-fun tp!1597186 () Bool)

(assert (=> b!5789678 (= e!3555684 (and tp!1597185 tp!1597186))))

(assert (= (and b!5789256 ((_ is ElementMatch!15801) (regOne!32115 (regTwo!32114 r!7292)))) b!5789677))

(assert (= (and b!5789256 ((_ is Concat!24646) (regOne!32115 (regTwo!32114 r!7292)))) b!5789678))

(assert (= (and b!5789256 ((_ is Star!15801) (regOne!32115 (regTwo!32114 r!7292)))) b!5789679))

(assert (= (and b!5789256 ((_ is Union!15801) (regOne!32115 (regTwo!32114 r!7292)))) b!5789680))

(declare-fun b!5789681 () Bool)

(declare-fun e!3555685 () Bool)

(assert (=> b!5789681 (= e!3555685 tp_is_empty!40855)))

(declare-fun b!5789684 () Bool)

(declare-fun tp!1597187 () Bool)

(declare-fun tp!1597189 () Bool)

(assert (=> b!5789684 (= e!3555685 (and tp!1597187 tp!1597189))))

(declare-fun b!5789683 () Bool)

(declare-fun tp!1597188 () Bool)

(assert (=> b!5789683 (= e!3555685 tp!1597188)))

(assert (=> b!5789256 (= tp!1597096 e!3555685)))

(declare-fun b!5789682 () Bool)

(declare-fun tp!1597190 () Bool)

(declare-fun tp!1597191 () Bool)

(assert (=> b!5789682 (= e!3555685 (and tp!1597190 tp!1597191))))

(assert (= (and b!5789256 ((_ is ElementMatch!15801) (regTwo!32115 (regTwo!32114 r!7292)))) b!5789681))

(assert (= (and b!5789256 ((_ is Concat!24646) (regTwo!32115 (regTwo!32114 r!7292)))) b!5789682))

(assert (= (and b!5789256 ((_ is Star!15801) (regTwo!32115 (regTwo!32114 r!7292)))) b!5789683))

(assert (= (and b!5789256 ((_ is Union!15801) (regTwo!32115 (regTwo!32114 r!7292)))) b!5789684))

(declare-fun b!5789685 () Bool)

(declare-fun e!3555686 () Bool)

(assert (=> b!5789685 (= e!3555686 tp_is_empty!40855)))

(declare-fun b!5789688 () Bool)

(declare-fun tp!1597192 () Bool)

(declare-fun tp!1597194 () Bool)

(assert (=> b!5789688 (= e!3555686 (and tp!1597192 tp!1597194))))

(declare-fun b!5789687 () Bool)

(declare-fun tp!1597193 () Bool)

(assert (=> b!5789687 (= e!3555686 tp!1597193)))

(assert (=> b!5789248 (= tp!1597087 e!3555686)))

(declare-fun b!5789686 () Bool)

(declare-fun tp!1597195 () Bool)

(declare-fun tp!1597196 () Bool)

(assert (=> b!5789686 (= e!3555686 (and tp!1597195 tp!1597196))))

(assert (= (and b!5789248 ((_ is ElementMatch!15801) (h!70026 (exprs!5685 setElem!38900)))) b!5789685))

(assert (= (and b!5789248 ((_ is Concat!24646) (h!70026 (exprs!5685 setElem!38900)))) b!5789686))

(assert (= (and b!5789248 ((_ is Star!15801) (h!70026 (exprs!5685 setElem!38900)))) b!5789687))

(assert (= (and b!5789248 ((_ is Union!15801) (h!70026 (exprs!5685 setElem!38900)))) b!5789688))

(declare-fun b!5789689 () Bool)

(declare-fun e!3555687 () Bool)

(declare-fun tp!1597197 () Bool)

(declare-fun tp!1597198 () Bool)

(assert (=> b!5789689 (= e!3555687 (and tp!1597197 tp!1597198))))

(assert (=> b!5789248 (= tp!1597088 e!3555687)))

(assert (= (and b!5789248 ((_ is Cons!63578) (t!377045 (exprs!5685 setElem!38900)))) b!5789689))

(declare-fun b!5789690 () Bool)

(declare-fun e!3555688 () Bool)

(assert (=> b!5789690 (= e!3555688 tp_is_empty!40855)))

(declare-fun b!5789693 () Bool)

(declare-fun tp!1597199 () Bool)

(declare-fun tp!1597201 () Bool)

(assert (=> b!5789693 (= e!3555688 (and tp!1597199 tp!1597201))))

(declare-fun b!5789692 () Bool)

(declare-fun tp!1597200 () Bool)

(assert (=> b!5789692 (= e!3555688 tp!1597200)))

(assert (=> b!5789263 (= tp!1597105 e!3555688)))

(declare-fun b!5789691 () Bool)

(declare-fun tp!1597202 () Bool)

(declare-fun tp!1597203 () Bool)

(assert (=> b!5789691 (= e!3555688 (and tp!1597202 tp!1597203))))

(assert (= (and b!5789263 ((_ is ElementMatch!15801) (reg!16130 (regTwo!32115 r!7292)))) b!5789690))

(assert (= (and b!5789263 ((_ is Concat!24646) (reg!16130 (regTwo!32115 r!7292)))) b!5789691))

(assert (= (and b!5789263 ((_ is Star!15801) (reg!16130 (regTwo!32115 r!7292)))) b!5789692))

(assert (= (and b!5789263 ((_ is Union!15801) (reg!16130 (regTwo!32115 r!7292)))) b!5789693))

(declare-fun b!5789694 () Bool)

(declare-fun e!3555689 () Bool)

(assert (=> b!5789694 (= e!3555689 tp_is_empty!40855)))

(declare-fun b!5789697 () Bool)

(declare-fun tp!1597204 () Bool)

(declare-fun tp!1597206 () Bool)

(assert (=> b!5789697 (= e!3555689 (and tp!1597204 tp!1597206))))

(declare-fun b!5789696 () Bool)

(declare-fun tp!1597205 () Bool)

(assert (=> b!5789696 (= e!3555689 tp!1597205)))

(assert (=> b!5789262 (= tp!1597107 e!3555689)))

(declare-fun b!5789695 () Bool)

(declare-fun tp!1597207 () Bool)

(declare-fun tp!1597208 () Bool)

(assert (=> b!5789695 (= e!3555689 (and tp!1597207 tp!1597208))))

(assert (= (and b!5789262 ((_ is ElementMatch!15801) (regOne!32114 (regTwo!32115 r!7292)))) b!5789694))

(assert (= (and b!5789262 ((_ is Concat!24646) (regOne!32114 (regTwo!32115 r!7292)))) b!5789695))

(assert (= (and b!5789262 ((_ is Star!15801) (regOne!32114 (regTwo!32115 r!7292)))) b!5789696))

(assert (= (and b!5789262 ((_ is Union!15801) (regOne!32114 (regTwo!32115 r!7292)))) b!5789697))

(declare-fun b!5789698 () Bool)

(declare-fun e!3555690 () Bool)

(assert (=> b!5789698 (= e!3555690 tp_is_empty!40855)))

(declare-fun b!5789701 () Bool)

(declare-fun tp!1597209 () Bool)

(declare-fun tp!1597211 () Bool)

(assert (=> b!5789701 (= e!3555690 (and tp!1597209 tp!1597211))))

(declare-fun b!5789700 () Bool)

(declare-fun tp!1597210 () Bool)

(assert (=> b!5789700 (= e!3555690 tp!1597210)))

(assert (=> b!5789262 (= tp!1597108 e!3555690)))

(declare-fun b!5789699 () Bool)

(declare-fun tp!1597212 () Bool)

(declare-fun tp!1597213 () Bool)

(assert (=> b!5789699 (= e!3555690 (and tp!1597212 tp!1597213))))

(assert (= (and b!5789262 ((_ is ElementMatch!15801) (regTwo!32114 (regTwo!32115 r!7292)))) b!5789698))

(assert (= (and b!5789262 ((_ is Concat!24646) (regTwo!32114 (regTwo!32115 r!7292)))) b!5789699))

(assert (= (and b!5789262 ((_ is Star!15801) (regTwo!32114 (regTwo!32115 r!7292)))) b!5789700))

(assert (= (and b!5789262 ((_ is Union!15801) (regTwo!32114 (regTwo!32115 r!7292)))) b!5789701))

(declare-fun b!5789702 () Bool)

(declare-fun e!3555691 () Bool)

(assert (=> b!5789702 (= e!3555691 tp_is_empty!40855)))

(declare-fun b!5789705 () Bool)

(declare-fun tp!1597214 () Bool)

(declare-fun tp!1597216 () Bool)

(assert (=> b!5789705 (= e!3555691 (and tp!1597214 tp!1597216))))

(declare-fun b!5789704 () Bool)

(declare-fun tp!1597215 () Bool)

(assert (=> b!5789704 (= e!3555691 tp!1597215)))

(assert (=> b!5789264 (= tp!1597104 e!3555691)))

(declare-fun b!5789703 () Bool)

(declare-fun tp!1597217 () Bool)

(declare-fun tp!1597218 () Bool)

(assert (=> b!5789703 (= e!3555691 (and tp!1597217 tp!1597218))))

(assert (= (and b!5789264 ((_ is ElementMatch!15801) (regOne!32115 (regTwo!32115 r!7292)))) b!5789702))

(assert (= (and b!5789264 ((_ is Concat!24646) (regOne!32115 (regTwo!32115 r!7292)))) b!5789703))

(assert (= (and b!5789264 ((_ is Star!15801) (regOne!32115 (regTwo!32115 r!7292)))) b!5789704))

(assert (= (and b!5789264 ((_ is Union!15801) (regOne!32115 (regTwo!32115 r!7292)))) b!5789705))

(declare-fun b!5789706 () Bool)

(declare-fun e!3555692 () Bool)

(assert (=> b!5789706 (= e!3555692 tp_is_empty!40855)))

(declare-fun b!5789709 () Bool)

(declare-fun tp!1597219 () Bool)

(declare-fun tp!1597221 () Bool)

(assert (=> b!5789709 (= e!3555692 (and tp!1597219 tp!1597221))))

(declare-fun b!5789708 () Bool)

(declare-fun tp!1597220 () Bool)

(assert (=> b!5789708 (= e!3555692 tp!1597220)))

(assert (=> b!5789264 (= tp!1597106 e!3555692)))

(declare-fun b!5789707 () Bool)

(declare-fun tp!1597222 () Bool)

(declare-fun tp!1597223 () Bool)

(assert (=> b!5789707 (= e!3555692 (and tp!1597222 tp!1597223))))

(assert (= (and b!5789264 ((_ is ElementMatch!15801) (regTwo!32115 (regTwo!32115 r!7292)))) b!5789706))

(assert (= (and b!5789264 ((_ is Concat!24646) (regTwo!32115 (regTwo!32115 r!7292)))) b!5789707))

(assert (= (and b!5789264 ((_ is Star!15801) (regTwo!32115 (regTwo!32115 r!7292)))) b!5789708))

(assert (= (and b!5789264 ((_ is Union!15801) (regTwo!32115 (regTwo!32115 r!7292)))) b!5789709))

(declare-fun b!5789710 () Bool)

(declare-fun e!3555693 () Bool)

(assert (=> b!5789710 (= e!3555693 tp_is_empty!40855)))

(declare-fun b!5789713 () Bool)

(declare-fun tp!1597224 () Bool)

(declare-fun tp!1597226 () Bool)

(assert (=> b!5789713 (= e!3555693 (and tp!1597224 tp!1597226))))

(declare-fun b!5789712 () Bool)

(declare-fun tp!1597225 () Bool)

(assert (=> b!5789712 (= e!3555693 tp!1597225)))

(assert (=> b!5789255 (= tp!1597095 e!3555693)))

(declare-fun b!5789711 () Bool)

(declare-fun tp!1597227 () Bool)

(declare-fun tp!1597228 () Bool)

(assert (=> b!5789711 (= e!3555693 (and tp!1597227 tp!1597228))))

(assert (= (and b!5789255 ((_ is ElementMatch!15801) (reg!16130 (regTwo!32114 r!7292)))) b!5789710))

(assert (= (and b!5789255 ((_ is Concat!24646) (reg!16130 (regTwo!32114 r!7292)))) b!5789711))

(assert (= (and b!5789255 ((_ is Star!15801) (reg!16130 (regTwo!32114 r!7292)))) b!5789712))

(assert (= (and b!5789255 ((_ is Union!15801) (reg!16130 (regTwo!32114 r!7292)))) b!5789713))

(declare-fun b!5789714 () Bool)

(declare-fun e!3555694 () Bool)

(assert (=> b!5789714 (= e!3555694 tp_is_empty!40855)))

(declare-fun b!5789717 () Bool)

(declare-fun tp!1597229 () Bool)

(declare-fun tp!1597231 () Bool)

(assert (=> b!5789717 (= e!3555694 (and tp!1597229 tp!1597231))))

(declare-fun b!5789716 () Bool)

(declare-fun tp!1597230 () Bool)

(assert (=> b!5789716 (= e!3555694 tp!1597230)))

(assert (=> b!5789254 (= tp!1597097 e!3555694)))

(declare-fun b!5789715 () Bool)

(declare-fun tp!1597232 () Bool)

(declare-fun tp!1597233 () Bool)

(assert (=> b!5789715 (= e!3555694 (and tp!1597232 tp!1597233))))

(assert (= (and b!5789254 ((_ is ElementMatch!15801) (regOne!32114 (regTwo!32114 r!7292)))) b!5789714))

(assert (= (and b!5789254 ((_ is Concat!24646) (regOne!32114 (regTwo!32114 r!7292)))) b!5789715))

(assert (= (and b!5789254 ((_ is Star!15801) (regOne!32114 (regTwo!32114 r!7292)))) b!5789716))

(assert (= (and b!5789254 ((_ is Union!15801) (regOne!32114 (regTwo!32114 r!7292)))) b!5789717))

(declare-fun b!5789718 () Bool)

(declare-fun e!3555695 () Bool)

(assert (=> b!5789718 (= e!3555695 tp_is_empty!40855)))

(declare-fun b!5789721 () Bool)

(declare-fun tp!1597234 () Bool)

(declare-fun tp!1597236 () Bool)

(assert (=> b!5789721 (= e!3555695 (and tp!1597234 tp!1597236))))

(declare-fun b!5789720 () Bool)

(declare-fun tp!1597235 () Bool)

(assert (=> b!5789720 (= e!3555695 tp!1597235)))

(assert (=> b!5789254 (= tp!1597098 e!3555695)))

(declare-fun b!5789719 () Bool)

(declare-fun tp!1597237 () Bool)

(declare-fun tp!1597238 () Bool)

(assert (=> b!5789719 (= e!3555695 (and tp!1597237 tp!1597238))))

(assert (= (and b!5789254 ((_ is ElementMatch!15801) (regTwo!32114 (regTwo!32114 r!7292)))) b!5789718))

(assert (= (and b!5789254 ((_ is Concat!24646) (regTwo!32114 (regTwo!32114 r!7292)))) b!5789719))

(assert (= (and b!5789254 ((_ is Star!15801) (regTwo!32114 (regTwo!32114 r!7292)))) b!5789720))

(assert (= (and b!5789254 ((_ is Union!15801) (regTwo!32114 (regTwo!32114 r!7292)))) b!5789721))

(declare-fun b!5789722 () Bool)

(declare-fun e!3555696 () Bool)

(assert (=> b!5789722 (= e!3555696 tp_is_empty!40855)))

(declare-fun b!5789725 () Bool)

(declare-fun tp!1597239 () Bool)

(declare-fun tp!1597241 () Bool)

(assert (=> b!5789725 (= e!3555696 (and tp!1597239 tp!1597241))))

(declare-fun b!5789724 () Bool)

(declare-fun tp!1597240 () Bool)

(assert (=> b!5789724 (= e!3555696 tp!1597240)))

(assert (=> b!5789237 (= tp!1597070 e!3555696)))

(declare-fun b!5789723 () Bool)

(declare-fun tp!1597242 () Bool)

(declare-fun tp!1597243 () Bool)

(assert (=> b!5789723 (= e!3555696 (and tp!1597242 tp!1597243))))

(assert (= (and b!5789237 ((_ is ElementMatch!15801) (regOne!32115 (reg!16130 r!7292)))) b!5789722))

(assert (= (and b!5789237 ((_ is Concat!24646) (regOne!32115 (reg!16130 r!7292)))) b!5789723))

(assert (= (and b!5789237 ((_ is Star!15801) (regOne!32115 (reg!16130 r!7292)))) b!5789724))

(assert (= (and b!5789237 ((_ is Union!15801) (regOne!32115 (reg!16130 r!7292)))) b!5789725))

(declare-fun b!5789726 () Bool)

(declare-fun e!3555697 () Bool)

(assert (=> b!5789726 (= e!3555697 tp_is_empty!40855)))

(declare-fun b!5789729 () Bool)

(declare-fun tp!1597244 () Bool)

(declare-fun tp!1597246 () Bool)

(assert (=> b!5789729 (= e!3555697 (and tp!1597244 tp!1597246))))

(declare-fun b!5789728 () Bool)

(declare-fun tp!1597245 () Bool)

(assert (=> b!5789728 (= e!3555697 tp!1597245)))

(assert (=> b!5789237 (= tp!1597072 e!3555697)))

(declare-fun b!5789727 () Bool)

(declare-fun tp!1597247 () Bool)

(declare-fun tp!1597248 () Bool)

(assert (=> b!5789727 (= e!3555697 (and tp!1597247 tp!1597248))))

(assert (= (and b!5789237 ((_ is ElementMatch!15801) (regTwo!32115 (reg!16130 r!7292)))) b!5789726))

(assert (= (and b!5789237 ((_ is Concat!24646) (regTwo!32115 (reg!16130 r!7292)))) b!5789727))

(assert (= (and b!5789237 ((_ is Star!15801) (regTwo!32115 (reg!16130 r!7292)))) b!5789728))

(assert (= (and b!5789237 ((_ is Union!15801) (regTwo!32115 (reg!16130 r!7292)))) b!5789729))

(declare-fun b!5789730 () Bool)

(declare-fun e!3555698 () Bool)

(assert (=> b!5789730 (= e!3555698 tp_is_empty!40855)))

(declare-fun b!5789733 () Bool)

(declare-fun tp!1597249 () Bool)

(declare-fun tp!1597251 () Bool)

(assert (=> b!5789733 (= e!3555698 (and tp!1597249 tp!1597251))))

(declare-fun b!5789732 () Bool)

(declare-fun tp!1597250 () Bool)

(assert (=> b!5789732 (= e!3555698 tp!1597250)))

(assert (=> b!5789242 (= tp!1597079 e!3555698)))

(declare-fun b!5789731 () Bool)

(declare-fun tp!1597252 () Bool)

(declare-fun tp!1597253 () Bool)

(assert (=> b!5789731 (= e!3555698 (and tp!1597252 tp!1597253))))

(assert (= (and b!5789242 ((_ is ElementMatch!15801) (h!70026 (exprs!5685 (h!70027 zl!343))))) b!5789730))

(assert (= (and b!5789242 ((_ is Concat!24646) (h!70026 (exprs!5685 (h!70027 zl!343))))) b!5789731))

(assert (= (and b!5789242 ((_ is Star!15801) (h!70026 (exprs!5685 (h!70027 zl!343))))) b!5789732))

(assert (= (and b!5789242 ((_ is Union!15801) (h!70026 (exprs!5685 (h!70027 zl!343))))) b!5789733))

(declare-fun b!5789734 () Bool)

(declare-fun e!3555699 () Bool)

(declare-fun tp!1597254 () Bool)

(declare-fun tp!1597255 () Bool)

(assert (=> b!5789734 (= e!3555699 (and tp!1597254 tp!1597255))))

(assert (=> b!5789242 (= tp!1597080 e!3555699)))

(assert (= (and b!5789242 ((_ is Cons!63578) (t!377045 (exprs!5685 (h!70027 zl!343))))) b!5789734))

(declare-fun b!5789735 () Bool)

(declare-fun e!3555700 () Bool)

(assert (=> b!5789735 (= e!3555700 tp_is_empty!40855)))

(declare-fun b!5789738 () Bool)

(declare-fun tp!1597256 () Bool)

(declare-fun tp!1597258 () Bool)

(assert (=> b!5789738 (= e!3555700 (and tp!1597256 tp!1597258))))

(declare-fun b!5789737 () Bool)

(declare-fun tp!1597257 () Bool)

(assert (=> b!5789737 (= e!3555700 tp!1597257)))

(assert (=> b!5789236 (= tp!1597071 e!3555700)))

(declare-fun b!5789736 () Bool)

(declare-fun tp!1597259 () Bool)

(declare-fun tp!1597260 () Bool)

(assert (=> b!5789736 (= e!3555700 (and tp!1597259 tp!1597260))))

(assert (= (and b!5789236 ((_ is ElementMatch!15801) (reg!16130 (reg!16130 r!7292)))) b!5789735))

(assert (= (and b!5789236 ((_ is Concat!24646) (reg!16130 (reg!16130 r!7292)))) b!5789736))

(assert (= (and b!5789236 ((_ is Star!15801) (reg!16130 (reg!16130 r!7292)))) b!5789737))

(assert (= (and b!5789236 ((_ is Union!15801) (reg!16130 (reg!16130 r!7292)))) b!5789738))

(declare-fun b!5789739 () Bool)

(declare-fun e!3555701 () Bool)

(assert (=> b!5789739 (= e!3555701 tp_is_empty!40855)))

(declare-fun b!5789742 () Bool)

(declare-fun tp!1597261 () Bool)

(declare-fun tp!1597263 () Bool)

(assert (=> b!5789742 (= e!3555701 (and tp!1597261 tp!1597263))))

(declare-fun b!5789741 () Bool)

(declare-fun tp!1597262 () Bool)

(assert (=> b!5789741 (= e!3555701 tp!1597262)))

(assert (=> b!5789235 (= tp!1597073 e!3555701)))

(declare-fun b!5789740 () Bool)

(declare-fun tp!1597264 () Bool)

(declare-fun tp!1597265 () Bool)

(assert (=> b!5789740 (= e!3555701 (and tp!1597264 tp!1597265))))

(assert (= (and b!5789235 ((_ is ElementMatch!15801) (regOne!32114 (reg!16130 r!7292)))) b!5789739))

(assert (= (and b!5789235 ((_ is Concat!24646) (regOne!32114 (reg!16130 r!7292)))) b!5789740))

(assert (= (and b!5789235 ((_ is Star!15801) (regOne!32114 (reg!16130 r!7292)))) b!5789741))

(assert (= (and b!5789235 ((_ is Union!15801) (regOne!32114 (reg!16130 r!7292)))) b!5789742))

(declare-fun b!5789743 () Bool)

(declare-fun e!3555702 () Bool)

(assert (=> b!5789743 (= e!3555702 tp_is_empty!40855)))

(declare-fun b!5789746 () Bool)

(declare-fun tp!1597266 () Bool)

(declare-fun tp!1597268 () Bool)

(assert (=> b!5789746 (= e!3555702 (and tp!1597266 tp!1597268))))

(declare-fun b!5789745 () Bool)

(declare-fun tp!1597267 () Bool)

(assert (=> b!5789745 (= e!3555702 tp!1597267)))

(assert (=> b!5789235 (= tp!1597074 e!3555702)))

(declare-fun b!5789744 () Bool)

(declare-fun tp!1597269 () Bool)

(declare-fun tp!1597270 () Bool)

(assert (=> b!5789744 (= e!3555702 (and tp!1597269 tp!1597270))))

(assert (= (and b!5789235 ((_ is ElementMatch!15801) (regTwo!32114 (reg!16130 r!7292)))) b!5789743))

(assert (= (and b!5789235 ((_ is Concat!24646) (regTwo!32114 (reg!16130 r!7292)))) b!5789744))

(assert (= (and b!5789235 ((_ is Star!15801) (regTwo!32114 (reg!16130 r!7292)))) b!5789745))

(assert (= (and b!5789235 ((_ is Union!15801) (regTwo!32114 (reg!16130 r!7292)))) b!5789746))

(declare-fun b_lambda!218251 () Bool)

(assert (= b_lambda!218237 (or d!1823740 b_lambda!218251)))

(declare-fun bs!1366806 () Bool)

(declare-fun d!1823964 () Bool)

(assert (= bs!1366806 (and d!1823964 d!1823740)))

(assert (=> bs!1366806 (= (dynLambda!24893 lambda!315650 (h!70026 (exprs!5685 (h!70027 zl!343)))) (validRegex!7537 (h!70026 (exprs!5685 (h!70027 zl!343)))))))

(declare-fun m!6733396 () Bool)

(assert (=> bs!1366806 m!6733396))

(assert (=> b!5789269 d!1823964))

(declare-fun b_lambda!218253 () Bool)

(assert (= b_lambda!218243 (or d!1823676 b_lambda!218253)))

(declare-fun bs!1366807 () Bool)

(declare-fun d!1823966 () Bool)

(assert (= bs!1366807 (and d!1823966 d!1823676)))

(assert (=> bs!1366807 (= (dynLambda!24893 lambda!315618 (h!70026 lt!2296812)) (validRegex!7537 (h!70026 lt!2296812)))))

(declare-fun m!6733398 () Bool)

(assert (=> bs!1366807 m!6733398))

(assert (=> b!5789401 d!1823966))

(declare-fun b_lambda!218255 () Bool)

(assert (= b_lambda!218247 (or d!1823726 b_lambda!218255)))

(declare-fun bs!1366808 () Bool)

(declare-fun d!1823968 () Bool)

(assert (= bs!1366808 (and d!1823968 d!1823726)))

(assert (=> bs!1366808 (= (dynLambda!24893 lambda!315647 (h!70026 (exprs!5685 (h!70027 zl!343)))) (validRegex!7537 (h!70026 (exprs!5685 (h!70027 zl!343)))))))

(assert (=> bs!1366808 m!6733396))

(assert (=> b!5789496 d!1823968))

(declare-fun b_lambda!218257 () Bool)

(assert (= b_lambda!218241 (or b!5788534 b_lambda!218257)))

(assert (=> d!1823856 d!1823784))

(declare-fun b_lambda!218259 () Bool)

(assert (= b_lambda!218249 (or d!1823756 b_lambda!218259)))

(declare-fun bs!1366809 () Bool)

(declare-fun d!1823970 () Bool)

(assert (= bs!1366809 (and d!1823970 d!1823756)))

(assert (=> bs!1366809 (= (dynLambda!24893 lambda!315660 (h!70026 (exprs!5685 setElem!38900))) (validRegex!7537 (h!70026 (exprs!5685 setElem!38900))))))

(declare-fun m!6733400 () Bool)

(assert (=> bs!1366809 m!6733400))

(assert (=> b!5789530 d!1823970))

(declare-fun b_lambda!218261 () Bool)

(assert (= b_lambda!218245 (or d!1823664 b_lambda!218261)))

(declare-fun bs!1366810 () Bool)

(declare-fun d!1823972 () Bool)

(assert (= bs!1366810 (and d!1823972 d!1823664)))

(assert (=> bs!1366810 (= (dynLambda!24893 lambda!315610 (h!70026 (unfocusZipperList!1229 zl!343))) (validRegex!7537 (h!70026 (unfocusZipperList!1229 zl!343))))))

(declare-fun m!6733402 () Bool)

(assert (=> bs!1366810 m!6733402))

(assert (=> b!5789412 d!1823972))

(declare-fun b_lambda!218263 () Bool)

(assert (= b_lambda!218239 (or b!5788534 b_lambda!218263)))

(assert (=> d!1823808 d!1823786))

(check-sat (not b!5789653) (not b!5789716) (not b!5789492) (not d!1823958) (not b!5789734) (not bm!450875) (not b!5789680) (not bm!450893) (not d!1823902) (not d!1823922) (not b!5789541) (not d!1823904) (not b_lambda!218259) (not b_lambda!218233) (not setNonEmpty!38910) (not b!5789579) (not b!5789689) (not b!5789696) (not b!5789558) (not b!5789276) (not bm!450898) (not b!5789732) (not d!1823926) (not b!5789439) (not d!1823810) (not d!1823906) (not b!5789701) (not b!5789675) (not b!5789728) (not b!5789724) (not b!5789295) (not b!5789651) (not d!1823884) (not b!5789413) (not b!5789711) (not b_lambda!218235) (not b!5789646) (not b!5789667) (not b!5789643) (not b!5789601) (not b_lambda!218257) (not b!5789368) (not b!5789700) (not b!5789729) (not b!5789670) (not b_lambda!218255) (not bm!450848) (not b!5789367) (not b!5789682) (not bs!1366806) (not b!5789683) (not b!5789393) (not b!5789384) (not b!5789544) (not b!5789624) (not bm!450874) (not b!5789659) (not bm!450888) (not d!1823868) (not bm!450912) (not b!5789594) (not b!5789575) (not b!5789398) (not b!5789574) (not b!5789573) (not b!5789305) (not b!5789372) (not bm!450895) (not b!5789673) (not bm!450868) (not b!5789638) (not b_lambda!218251) (not d!1823940) (not b!5789364) (not b!5789633) (not b!5789737) (not b!5789613) (not b!5789663) (not b!5789591) (not b!5789338) (not d!1823800) (not b!5789723) (not b!5789662) (not bm!450858) (not bm!450911) (not bm!450906) (not b!5789382) (not d!1823856) (not d!1823828) (not b!5789733) (not d!1823844) (not b!5789397) (not b!5789306) (not b!5789672) (not b!5789396) (not b!5789629) (not b!5789408) (not b!5789578) (not b!5789674) (not b!5789445) (not bm!450918) (not setNonEmpty!38911) (not bm!450855) (not b!5789374) (not bm!450865) (not d!1823852) (not bm!450899) (not b!5789626) (not bm!450836) (not b!5789705) (not b!5789647) (not b!5789369) (not b!5789725) (not b!5789666) (not b!5789632) (not b!5789576) (not b!5789590) (not b!5789344) (not b!5789441) (not b!5789691) (not d!1823896) (not b!5789363) (not b!5789676) (not b_lambda!218263) (not b!5789392) (not b!5789419) (not b!5789742) (not b!5789537) (not b!5789687) (not bm!450869) (not b!5789287) (not bm!450862) (not b!5789746) (not b!5789586) (not b!5789688) (not b!5789707) (not bs!1366807) (not b!5789607) (not d!1823894) (not d!1823942) (not b!5789531) (not d!1823960) (not b!5789655) (not b!5789550) (not d!1823808) (not b!5789715) (not d!1823956) (not b!5789560) (not d!1823898) (not b!5789485) (not b!5789697) (not b!5789727) (not b!5789391) (not b!5789642) (not bm!450839) (not b!5789452) (not b!5789639) (not b!5789740) (not setNonEmpty!38909) (not bm!450876) (not b!5789731) (not d!1823816) (not b!5789451) (not d!1823870) (not b!5789721) (not d!1823826) (not bm!450901) (not d!1823830) (not b!5789704) (not b!5789402) (not b_lambda!218253) (not b!5789301) tp_is_empty!40855 (not b!5789713) (not d!1823832) (not b!5789366) (not d!1823908) (not b!5789426) (not b!5789712) (not bm!450908) (not d!1823854) (not bm!450902) (not bs!1366808) (not b!5789497) (not b!5789431) (not bm!450866) (not bm!450887) (not b!5789360) (not bm!450890) (not b!5789720) (not b!5789708) (not b!5789671) (not b!5789692) (not bm!450845) (not b!5789566) (not b!5789634) (not b!5789686) (not d!1823890) (not b!5789693) (not b!5789741) (not b!5789645) (not b!5789332) (not bm!450837) (not b!5789699) (not bm!450892) (not b!5789580) (not b!5789679) (not b!5789348) (not b!5789684) (not b!5789744) (not d!1823948) (not b!5789745) (not b!5789678) (not b!5789664) (not b!5789400) (not bm!450889) (not bm!450852) (not b!5789349) (not d!1823872) (not d!1823882) (not b!5789389) (not b!5789386) (not bm!450842) (not b!5789522) (not b!5789636) (not b!5789695) (not b_lambda!218261) (not d!1823824) (not bm!450864) (not b!5789359) (not bs!1366809) (not b!5789637) (not bm!450849) (not b!5789650) (not b!5789584) (not b!5789703) (not b!5789658) (not b!5789302) (not b!5789654) (not b!5789340) (not bs!1366810) (not bm!450843) (not b!5789447) (not b!5789719) (not b!5789456) (not d!1823880) (not d!1823804) (not b!5789641) (not b!5789657) (not b!5789427) (not bm!450853) (not bm!450913) (not b!5789595) (not b!5789551) (not b!5789321) (not bm!450859) (not b!5789717) (not bm!450904) (not bm!450905) (not b!5789660) (not b!5789559) (not b!5789297) (not b!5789736) (not b!5789709) (not bm!450863) (not b!5789649) (not b!5789270) (not bm!450871) (not bm!450861) (not b!5789312) (not bm!450850) (not b!5789503) (not d!1823954) (not b!5789738) (not bm!450915) (not b!5789668) (not b!5789345) (not b!5789455))
(check-sat)
