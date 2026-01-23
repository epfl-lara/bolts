; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573406 () Bool)

(assert start!573406)

(declare-fun b!5482751 () Bool)

(assert (=> b!5482751 true))

(assert (=> b!5482751 true))

(declare-fun lambda!292845 () Int)

(declare-fun lambda!292844 () Int)

(assert (=> b!5482751 (not (= lambda!292845 lambda!292844))))

(assert (=> b!5482751 true))

(assert (=> b!5482751 true))

(declare-fun lambda!292846 () Int)

(assert (=> b!5482751 (not (= lambda!292846 lambda!292844))))

(assert (=> b!5482751 (not (= lambda!292846 lambda!292845))))

(assert (=> b!5482751 true))

(assert (=> b!5482751 true))

(declare-fun b!5482748 () Bool)

(assert (=> b!5482748 true))

(declare-fun b!5482753 () Bool)

(assert (=> b!5482753 true))

(declare-fun b!5482738 () Bool)

(declare-fun e!3393070 () Bool)

(declare-fun e!3393057 () Bool)

(assert (=> b!5482738 (= e!3393070 e!3393057)))

(declare-fun res!2337702 () Bool)

(assert (=> b!5482738 (=> res!2337702 e!3393057)))

(declare-fun lt!2239486 () Bool)

(assert (=> b!5482738 (= res!2337702 lt!2239486)))

(declare-datatypes ((C!31020 0))(
  ( (C!31021 (val!25212 Int)) )
))
(declare-datatypes ((Regex!15375 0))(
  ( (ElementMatch!15375 (c!957957 C!31020)) (Concat!24220 (regOne!31262 Regex!15375) (regTwo!31262 Regex!15375)) (EmptyExpr!15375) (Star!15375 (reg!15704 Regex!15375)) (EmptyLang!15375) (Union!15375 (regOne!31263 Regex!15375) (regTwo!31263 Regex!15375)) )
))
(declare-fun lt!2239470 () Regex!15375)

(declare-datatypes ((List!62424 0))(
  ( (Nil!62300) (Cons!62300 (h!68748 C!31020) (t!375655 List!62424)) )
))
(declare-fun s!2326 () List!62424)

(declare-fun matchRSpec!2478 (Regex!15375 List!62424) Bool)

(assert (=> b!5482738 (= lt!2239486 (matchRSpec!2478 lt!2239470 s!2326))))

(declare-fun matchR!7560 (Regex!15375 List!62424) Bool)

(assert (=> b!5482738 (= lt!2239486 (matchR!7560 lt!2239470 s!2326))))

(declare-datatypes ((Unit!155200 0))(
  ( (Unit!155201) )
))
(declare-fun lt!2239472 () Unit!155200)

(declare-fun mainMatchTheorem!2478 (Regex!15375 List!62424) Unit!155200)

(assert (=> b!5482738 (= lt!2239472 (mainMatchTheorem!2478 lt!2239470 s!2326))))

(declare-fun b!5482739 () Bool)

(declare-fun e!3393055 () Bool)

(declare-fun tp!1506630 () Bool)

(declare-fun tp!1506631 () Bool)

(assert (=> b!5482739 (= e!3393055 (and tp!1506630 tp!1506631))))

(declare-fun b!5482740 () Bool)

(declare-fun res!2337698 () Bool)

(declare-fun e!3393056 () Bool)

(assert (=> b!5482740 (=> res!2337698 e!3393056)))

(declare-fun r!7292 () Regex!15375)

(declare-datatypes ((List!62425 0))(
  ( (Nil!62301) (Cons!62301 (h!68749 Regex!15375) (t!375656 List!62425)) )
))
(declare-datatypes ((Context!9518 0))(
  ( (Context!9519 (exprs!5259 List!62425)) )
))
(declare-datatypes ((List!62426 0))(
  ( (Nil!62302) (Cons!62302 (h!68750 Context!9518) (t!375657 List!62426)) )
))
(declare-fun zl!343 () List!62426)

(declare-fun generalisedUnion!1304 (List!62425) Regex!15375)

(declare-fun unfocusZipperList!817 (List!62426) List!62425)

(assert (=> b!5482740 (= res!2337698 (not (= r!7292 (generalisedUnion!1304 (unfocusZipperList!817 zl!343)))))))

(declare-fun b!5482741 () Bool)

(declare-fun e!3393064 () Bool)

(declare-fun e!3393065 () Bool)

(assert (=> b!5482741 (= e!3393064 e!3393065)))

(declare-fun res!2337699 () Bool)

(assert (=> b!5482741 (=> res!2337699 e!3393065)))

(declare-fun lt!2239499 () Context!9518)

(declare-fun unfocusZipper!1117 (List!62426) Regex!15375)

(assert (=> b!5482741 (= res!2337699 (not (= (unfocusZipper!1117 (Cons!62302 lt!2239499 Nil!62302)) lt!2239470)))))

(assert (=> b!5482741 (= lt!2239470 (Concat!24220 (reg!15704 r!7292) r!7292))))

(declare-fun b!5482742 () Bool)

(declare-fun e!3393061 () Bool)

(assert (=> b!5482742 (= e!3393061 e!3393070)))

(declare-fun res!2337696 () Bool)

(assert (=> b!5482742 (=> res!2337696 e!3393070)))

(declare-fun lt!2239473 () List!62426)

(assert (=> b!5482742 (= res!2337696 (not (= (unfocusZipper!1117 lt!2239473) r!7292)))))

(declare-fun lt!2239503 () Context!9518)

(assert (=> b!5482742 (= lt!2239473 (Cons!62302 lt!2239503 Nil!62302))))

(declare-fun b!5482743 () Bool)

(declare-fun res!2337709 () Bool)

(assert (=> b!5482743 (=> res!2337709 e!3393056)))

(declare-fun generalisedConcat!1044 (List!62425) Regex!15375)

(assert (=> b!5482743 (= res!2337709 (not (= r!7292 (generalisedConcat!1044 (exprs!5259 (h!68750 zl!343))))))))

(declare-fun setIsEmpty!36075 () Bool)

(declare-fun setRes!36075 () Bool)

(assert (=> setIsEmpty!36075 setRes!36075))

(declare-fun res!2337717 () Bool)

(declare-fun e!3393059 () Bool)

(assert (=> start!573406 (=> (not res!2337717) (not e!3393059))))

(declare-fun validRegex!7111 (Regex!15375) Bool)

(assert (=> start!573406 (= res!2337717 (validRegex!7111 r!7292))))

(assert (=> start!573406 e!3393059))

(assert (=> start!573406 e!3393055))

(declare-fun condSetEmpty!36075 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9518))

(assert (=> start!573406 (= condSetEmpty!36075 (= z!1189 ((as const (Array Context!9518 Bool)) false)))))

(assert (=> start!573406 setRes!36075))

(declare-fun e!3393068 () Bool)

(assert (=> start!573406 e!3393068))

(declare-fun e!3393063 () Bool)

(assert (=> start!573406 e!3393063))

(declare-fun b!5482744 () Bool)

(declare-fun res!2337712 () Bool)

(assert (=> b!5482744 (=> res!2337712 e!3393064)))

(declare-fun lt!2239501 () (InoxSet Context!9518))

(declare-fun matchZipper!1593 ((InoxSet Context!9518) List!62424) Bool)

(declare-fun derivationStepZipper!1570 ((InoxSet Context!9518) C!31020) (InoxSet Context!9518))

(assert (=> b!5482744 (= res!2337712 (not (= (matchZipper!1593 lt!2239501 s!2326) (matchZipper!1593 (derivationStepZipper!1570 lt!2239501 (h!68748 s!2326)) (t!375655 s!2326)))))))

(declare-fun b!5482745 () Bool)

(declare-fun e!3393067 () Bool)

(declare-fun tp!1506626 () Bool)

(declare-fun inv!81684 (Context!9518) Bool)

(assert (=> b!5482745 (= e!3393068 (and (inv!81684 (h!68750 zl!343)) e!3393067 tp!1506626))))

(declare-fun b!5482746 () Bool)

(declare-fun e!3393072 () Bool)

(assert (=> b!5482746 (= e!3393065 e!3393072)))

(declare-fun res!2337706 () Bool)

(assert (=> b!5482746 (=> res!2337706 e!3393072)))

(declare-fun lt!2239490 () (InoxSet Context!9518))

(declare-fun lt!2239507 () (InoxSet Context!9518))

(assert (=> b!5482746 (= res!2337706 (not (= lt!2239507 (derivationStepZipper!1570 lt!2239490 (h!68748 s!2326)))))))

(declare-fun lambda!292847 () Int)

(declare-fun flatMap!1078 ((InoxSet Context!9518) Int) (InoxSet Context!9518))

(declare-fun derivationStepZipperUp!727 (Context!9518 C!31020) (InoxSet Context!9518))

(assert (=> b!5482746 (= (flatMap!1078 lt!2239490 lambda!292847) (derivationStepZipperUp!727 lt!2239503 (h!68748 s!2326)))))

(declare-fun lt!2239478 () Unit!155200)

(declare-fun lemmaFlatMapOnSingletonSet!610 ((InoxSet Context!9518) Context!9518 Int) Unit!155200)

(assert (=> b!5482746 (= lt!2239478 (lemmaFlatMapOnSingletonSet!610 lt!2239490 lt!2239503 lambda!292847))))

(declare-fun lt!2239485 () Context!9518)

(declare-fun lt!2239496 () (InoxSet Context!9518))

(assert (=> b!5482746 (= (flatMap!1078 lt!2239496 lambda!292847) (derivationStepZipperUp!727 lt!2239485 (h!68748 s!2326)))))

(declare-fun lt!2239479 () Unit!155200)

(assert (=> b!5482746 (= lt!2239479 (lemmaFlatMapOnSingletonSet!610 lt!2239496 lt!2239485 lambda!292847))))

(declare-fun lt!2239484 () (InoxSet Context!9518))

(assert (=> b!5482746 (= lt!2239484 (derivationStepZipperUp!727 lt!2239503 (h!68748 s!2326)))))

(declare-fun lt!2239480 () (InoxSet Context!9518))

(assert (=> b!5482746 (= lt!2239480 (derivationStepZipperUp!727 lt!2239485 (h!68748 s!2326)))))

(assert (=> b!5482746 (= lt!2239490 (store ((as const (Array Context!9518 Bool)) false) lt!2239503 true))))

(assert (=> b!5482746 (= lt!2239496 (store ((as const (Array Context!9518 Bool)) false) lt!2239485 true))))

(declare-fun lt!2239483 () List!62425)

(assert (=> b!5482746 (= lt!2239485 (Context!9519 lt!2239483))))

(assert (=> b!5482746 (= lt!2239483 (Cons!62301 (reg!15704 r!7292) Nil!62301))))

(declare-fun b!5482747 () Bool)

(declare-fun res!2337695 () Bool)

(assert (=> b!5482747 (=> (not res!2337695) (not e!3393059))))

(declare-fun toList!9159 ((InoxSet Context!9518)) List!62426)

(assert (=> b!5482747 (= res!2337695 (= (toList!9159 z!1189) zl!343))))

(declare-fun e!3393069 () Bool)

(declare-fun e!3393060 () Bool)

(assert (=> b!5482748 (= e!3393069 e!3393060)))

(declare-fun res!2337700 () Bool)

(assert (=> b!5482748 (=> res!2337700 e!3393060)))

(declare-fun lt!2239475 () (InoxSet Context!9518))

(assert (=> b!5482748 (= res!2337700 (not (= lt!2239507 lt!2239475)))))

(assert (=> b!5482748 (= (flatMap!1078 z!1189 lambda!292847) (derivationStepZipperUp!727 (h!68750 zl!343) (h!68748 s!2326)))))

(declare-fun lt!2239497 () Unit!155200)

(assert (=> b!5482748 (= lt!2239497 (lemmaFlatMapOnSingletonSet!610 z!1189 (h!68750 zl!343) lambda!292847))))

(declare-fun b!5482749 () Bool)

(declare-fun tp_is_empty!40003 () Bool)

(assert (=> b!5482749 (= e!3393055 tp_is_empty!40003)))

(declare-fun b!5482750 () Bool)

(declare-fun res!2337711 () Bool)

(assert (=> b!5482750 (=> res!2337711 e!3393064)))

(declare-fun lt!2239489 () Regex!15375)

(assert (=> b!5482750 (= res!2337711 (or (not (= lt!2239489 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun e!3393054 () Bool)

(assert (=> b!5482751 (= e!3393056 e!3393054)))

(declare-fun res!2337716 () Bool)

(assert (=> b!5482751 (=> res!2337716 e!3393054)))

(declare-fun lt!2239506 () Bool)

(declare-fun e!3393058 () Bool)

(assert (=> b!5482751 (= res!2337716 (not (= lt!2239506 e!3393058)))))

(declare-fun res!2337705 () Bool)

(assert (=> b!5482751 (=> res!2337705 e!3393058)))

(declare-fun isEmpty!34246 (List!62424) Bool)

(assert (=> b!5482751 (= res!2337705 (isEmpty!34246 s!2326))))

(declare-fun Exists!2554 (Int) Bool)

(assert (=> b!5482751 (= (Exists!2554 lambda!292844) (Exists!2554 lambda!292846))))

(declare-fun lt!2239498 () Unit!155200)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1204 (Regex!15375 Regex!15375 List!62424) Unit!155200)

(assert (=> b!5482751 (= lt!2239498 (lemmaExistCutMatchRandMatchRSpecEquivalent!1204 (reg!15704 r!7292) r!7292 s!2326))))

(assert (=> b!5482751 (= (Exists!2554 lambda!292844) (Exists!2554 lambda!292845))))

(declare-fun lt!2239481 () Unit!155200)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!528 (Regex!15375 List!62424) Unit!155200)

(assert (=> b!5482751 (= lt!2239481 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!528 (reg!15704 r!7292) s!2326))))

(declare-fun lt!2239492 () Bool)

(assert (=> b!5482751 (= lt!2239492 (Exists!2554 lambda!292844))))

(declare-datatypes ((tuple2!65144 0))(
  ( (tuple2!65145 (_1!35875 List!62424) (_2!35875 List!62424)) )
))
(declare-datatypes ((Option!15484 0))(
  ( (None!15483) (Some!15483 (v!51512 tuple2!65144)) )
))
(declare-fun isDefined!12187 (Option!15484) Bool)

(declare-fun findConcatSeparation!1898 (Regex!15375 Regex!15375 List!62424 List!62424 List!62424) Option!15484)

(assert (=> b!5482751 (= lt!2239492 (isDefined!12187 (findConcatSeparation!1898 (reg!15704 r!7292) r!7292 Nil!62300 s!2326 s!2326)))))

(declare-fun lt!2239476 () Unit!155200)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1662 (Regex!15375 Regex!15375 List!62424) Unit!155200)

(assert (=> b!5482751 (= lt!2239476 (lemmaFindConcatSeparationEquivalentToExists!1662 (reg!15704 r!7292) r!7292 s!2326))))

(declare-fun b!5482752 () Bool)

(declare-fun res!2337704 () Bool)

(assert (=> b!5482752 (=> res!2337704 e!3393054)))

(get-info :version)

(assert (=> b!5482752 (= res!2337704 ((_ is Nil!62300) s!2326))))

(declare-fun e!3393071 () Bool)

(assert (=> b!5482753 (= e!3393057 e!3393071)))

(declare-fun res!2337703 () Bool)

(assert (=> b!5482753 (=> res!2337703 e!3393071)))

(declare-fun appendTo!94 ((InoxSet Context!9518) Context!9518) (InoxSet Context!9518))

(assert (=> b!5482753 (= res!2337703 (not (= (appendTo!94 lt!2239496 lt!2239503) lt!2239501)))))

(declare-fun lt!2239477 () List!62425)

(declare-fun lambda!292848 () Int)

(declare-fun map!14319 ((InoxSet Context!9518) Int) (InoxSet Context!9518))

(declare-fun ++!13723 (List!62425 List!62425) List!62425)

(assert (=> b!5482753 (= (map!14319 lt!2239496 lambda!292848) (store ((as const (Array Context!9518 Bool)) false) (Context!9519 (++!13723 lt!2239483 lt!2239477)) true))))

(declare-fun lambda!292849 () Int)

(declare-fun lt!2239482 () Unit!155200)

(declare-fun lemmaConcatPreservesForall!276 (List!62425 List!62425 Int) Unit!155200)

(assert (=> b!5482753 (= lt!2239482 (lemmaConcatPreservesForall!276 lt!2239483 lt!2239477 lambda!292849))))

(declare-fun lt!2239487 () Unit!155200)

(declare-fun lemmaMapOnSingletonSet!106 ((InoxSet Context!9518) Context!9518 Int) Unit!155200)

(assert (=> b!5482753 (= lt!2239487 (lemmaMapOnSingletonSet!106 lt!2239496 lt!2239485 lambda!292848))))

(declare-fun b!5482754 () Bool)

(declare-fun tp!1506629 () Bool)

(assert (=> b!5482754 (= e!3393055 tp!1506629)))

(declare-fun b!5482755 () Bool)

(assert (=> b!5482755 (= e!3393060 e!3393064)))

(declare-fun res!2337697 () Bool)

(assert (=> b!5482755 (=> res!2337697 e!3393064)))

(declare-fun derivationStepZipperDown!801 (Regex!15375 Context!9518 C!31020) (InoxSet Context!9518))

(assert (=> b!5482755 (= res!2337697 (not (= lt!2239507 (derivationStepZipperDown!801 (reg!15704 r!7292) lt!2239503 (h!68748 s!2326)))))))

(assert (=> b!5482755 (= lt!2239503 (Context!9519 lt!2239477))))

(assert (=> b!5482755 (= (flatMap!1078 lt!2239501 lambda!292847) (derivationStepZipperUp!727 lt!2239499 (h!68748 s!2326)))))

(declare-fun lt!2239471 () Unit!155200)

(assert (=> b!5482755 (= lt!2239471 (lemmaFlatMapOnSingletonSet!610 lt!2239501 lt!2239499 lambda!292847))))

(declare-fun lt!2239500 () (InoxSet Context!9518))

(assert (=> b!5482755 (= lt!2239500 (derivationStepZipperUp!727 lt!2239499 (h!68748 s!2326)))))

(assert (=> b!5482755 (= lt!2239501 (store ((as const (Array Context!9518 Bool)) false) lt!2239499 true))))

(assert (=> b!5482755 (= lt!2239499 (Context!9519 (Cons!62301 (reg!15704 r!7292) lt!2239477)))))

(assert (=> b!5482755 (= lt!2239477 (Cons!62301 r!7292 Nil!62301))))

(declare-fun b!5482756 () Bool)

(declare-fun e!3393053 () Bool)

(assert (=> b!5482756 (= e!3393071 e!3393053)))

(declare-fun res!2337715 () Bool)

(assert (=> b!5482756 (=> res!2337715 e!3393053)))

(declare-fun lt!2239488 () List!62424)

(assert (=> b!5482756 (= res!2337715 (not (= s!2326 lt!2239488)))))

(declare-fun lt!2239508 () tuple2!65144)

(declare-fun ++!13724 (List!62424 List!62424) List!62424)

(assert (=> b!5482756 (= lt!2239488 (++!13724 (_1!35875 lt!2239508) (_2!35875 lt!2239508)))))

(declare-fun lt!2239474 () Option!15484)

(declare-fun get!21487 (Option!15484) tuple2!65144)

(assert (=> b!5482756 (= lt!2239508 (get!21487 lt!2239474))))

(assert (=> b!5482756 (isDefined!12187 lt!2239474)))

(declare-fun findConcatSeparationZippers!102 ((InoxSet Context!9518) (InoxSet Context!9518) List!62424 List!62424 List!62424) Option!15484)

(assert (=> b!5482756 (= lt!2239474 (findConcatSeparationZippers!102 lt!2239496 lt!2239490 Nil!62300 s!2326 s!2326))))

(declare-fun lt!2239493 () Unit!155200)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!102 ((InoxSet Context!9518) Context!9518 List!62424) Unit!155200)

(assert (=> b!5482756 (= lt!2239493 (lemmaConcatZipperMatchesStringThenFindConcatDefined!102 lt!2239496 lt!2239503 s!2326))))

(declare-fun b!5482757 () Bool)

(declare-fun e!3393066 () Bool)

(declare-fun tp!1506627 () Bool)

(assert (=> b!5482757 (= e!3393066 tp!1506627)))

(declare-fun b!5482758 () Bool)

(assert (=> b!5482758 (= e!3393072 e!3393061)))

(declare-fun res!2337713 () Bool)

(assert (=> b!5482758 (=> res!2337713 e!3393061)))

(declare-fun lt!2239502 () List!62426)

(assert (=> b!5482758 (= res!2337713 (not (= (unfocusZipper!1117 lt!2239502) (reg!15704 r!7292))))))

(assert (=> b!5482758 (= lt!2239502 (Cons!62302 lt!2239485 Nil!62302))))

(declare-fun b!5482759 () Bool)

(declare-fun res!2337708 () Bool)

(assert (=> b!5482759 (=> res!2337708 e!3393056)))

(declare-fun isEmpty!34247 (List!62426) Bool)

(assert (=> b!5482759 (= res!2337708 (not (isEmpty!34247 (t!375657 zl!343))))))

(declare-fun b!5482760 () Bool)

(declare-fun tp!1506628 () Bool)

(assert (=> b!5482760 (= e!3393063 (and tp_is_empty!40003 tp!1506628))))

(declare-fun b!5482761 () Bool)

(declare-fun res!2337720 () Bool)

(assert (=> b!5482761 (=> res!2337720 e!3393056)))

(assert (=> b!5482761 (= res!2337720 (or ((_ is EmptyExpr!15375) r!7292) ((_ is EmptyLang!15375) r!7292) ((_ is ElementMatch!15375) r!7292) ((_ is Union!15375) r!7292) ((_ is Concat!24220) r!7292)))))

(declare-fun b!5482762 () Bool)

(assert (=> b!5482762 (= e!3393054 e!3393069)))

(declare-fun res!2337714 () Bool)

(assert (=> b!5482762 (=> res!2337714 e!3393069)))

(declare-fun lt!2239494 () (InoxSet Context!9518))

(assert (=> b!5482762 (= res!2337714 (not (= lt!2239494 lt!2239475)))))

(assert (=> b!5482762 (= lt!2239475 (derivationStepZipperDown!801 r!7292 (Context!9519 Nil!62301) (h!68748 s!2326)))))

(assert (=> b!5482762 (= lt!2239494 (derivationStepZipperUp!727 (Context!9519 (Cons!62301 r!7292 Nil!62301)) (h!68748 s!2326)))))

(assert (=> b!5482762 (= lt!2239507 (derivationStepZipper!1570 z!1189 (h!68748 s!2326)))))

(declare-fun b!5482763 () Bool)

(declare-fun e!3393062 () Bool)

(assert (=> b!5482763 (= e!3393062 (not e!3393056))))

(declare-fun res!2337707 () Bool)

(assert (=> b!5482763 (=> res!2337707 e!3393056)))

(assert (=> b!5482763 (= res!2337707 (not ((_ is Cons!62302) zl!343)))))

(assert (=> b!5482763 (= lt!2239506 (matchRSpec!2478 r!7292 s!2326))))

(assert (=> b!5482763 (= lt!2239506 (matchR!7560 r!7292 s!2326))))

(declare-fun lt!2239491 () Unit!155200)

(assert (=> b!5482763 (= lt!2239491 (mainMatchTheorem!2478 r!7292 s!2326))))

(declare-fun b!5482764 () Bool)

(declare-fun tp!1506625 () Bool)

(assert (=> b!5482764 (= e!3393067 tp!1506625)))

(declare-fun b!5482765 () Bool)

(declare-fun tp!1506622 () Bool)

(declare-fun tp!1506624 () Bool)

(assert (=> b!5482765 (= e!3393055 (and tp!1506622 tp!1506624))))

(declare-fun b!5482766 () Bool)

(declare-fun res!2337718 () Bool)

(assert (=> b!5482766 (=> res!2337718 e!3393053)))

(assert (=> b!5482766 (= res!2337718 (not (matchZipper!1593 lt!2239490 (_2!35875 lt!2239508))))))

(declare-fun b!5482767 () Bool)

(declare-fun res!2337694 () Bool)

(assert (=> b!5482767 (=> res!2337694 e!3393057)))

(assert (=> b!5482767 (= res!2337694 (not (matchZipper!1593 z!1189 s!2326)))))

(declare-fun b!5482768 () Bool)

(assert (=> b!5482768 (= e!3393053 (validRegex!7111 (reg!15704 r!7292)))))

(assert (=> b!5482768 (matchR!7560 r!7292 (_2!35875 lt!2239508))))

(declare-fun lt!2239509 () Unit!155200)

(declare-fun theoremZipperRegexEquiv!583 ((InoxSet Context!9518) List!62426 Regex!15375 List!62424) Unit!155200)

(assert (=> b!5482768 (= lt!2239509 (theoremZipperRegexEquiv!583 lt!2239490 lt!2239473 r!7292 (_2!35875 lt!2239508)))))

(assert (=> b!5482768 (matchR!7560 (reg!15704 r!7292) (_1!35875 lt!2239508))))

(declare-fun lt!2239505 () Unit!155200)

(assert (=> b!5482768 (= lt!2239505 (theoremZipperRegexEquiv!583 lt!2239496 lt!2239502 (reg!15704 r!7292) (_1!35875 lt!2239508)))))

(assert (=> b!5482768 (matchZipper!1593 (store ((as const (Array Context!9518 Bool)) false) (Context!9519 (++!13723 lt!2239483 lt!2239477)) true) lt!2239488)))

(declare-fun lt!2239504 () Unit!155200)

(assert (=> b!5482768 (= lt!2239504 (lemmaConcatPreservesForall!276 lt!2239483 lt!2239477 lambda!292849))))

(declare-fun lt!2239495 () Unit!155200)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!116 (Context!9518 Context!9518 List!62424 List!62424) Unit!155200)

(assert (=> b!5482768 (= lt!2239495 (lemmaConcatenateContextMatchesConcatOfStrings!116 lt!2239485 lt!2239503 (_1!35875 lt!2239508) (_2!35875 lt!2239508)))))

(declare-fun tp!1506623 () Bool)

(declare-fun setElem!36075 () Context!9518)

(declare-fun setNonEmpty!36075 () Bool)

(assert (=> setNonEmpty!36075 (= setRes!36075 (and tp!1506623 (inv!81684 setElem!36075) e!3393066))))

(declare-fun setRest!36075 () (InoxSet Context!9518))

(assert (=> setNonEmpty!36075 (= z!1189 ((_ map or) (store ((as const (Array Context!9518 Bool)) false) setElem!36075 true) setRest!36075))))

(declare-fun b!5482769 () Bool)

(declare-fun res!2337710 () Bool)

(assert (=> b!5482769 (=> res!2337710 e!3393056)))

(assert (=> b!5482769 (= res!2337710 (not ((_ is Cons!62301) (exprs!5259 (h!68750 zl!343)))))))

(declare-fun b!5482770 () Bool)

(assert (=> b!5482770 (= e!3393059 e!3393062)))

(declare-fun res!2337719 () Bool)

(assert (=> b!5482770 (=> (not res!2337719) (not e!3393062))))

(assert (=> b!5482770 (= res!2337719 (= r!7292 lt!2239489))))

(assert (=> b!5482770 (= lt!2239489 (unfocusZipper!1117 zl!343))))

(declare-fun b!5482771 () Bool)

(declare-fun res!2337701 () Bool)

(assert (=> b!5482771 (=> res!2337701 e!3393053)))

(assert (=> b!5482771 (= res!2337701 (not (matchZipper!1593 lt!2239496 (_1!35875 lt!2239508))))))

(declare-fun b!5482772 () Bool)

(assert (=> b!5482772 (= e!3393058 lt!2239492)))

(assert (= (and start!573406 res!2337717) b!5482747))

(assert (= (and b!5482747 res!2337695) b!5482770))

(assert (= (and b!5482770 res!2337719) b!5482763))

(assert (= (and b!5482763 (not res!2337707)) b!5482759))

(assert (= (and b!5482759 (not res!2337708)) b!5482743))

(assert (= (and b!5482743 (not res!2337709)) b!5482769))

(assert (= (and b!5482769 (not res!2337710)) b!5482740))

(assert (= (and b!5482740 (not res!2337698)) b!5482761))

(assert (= (and b!5482761 (not res!2337720)) b!5482751))

(assert (= (and b!5482751 (not res!2337705)) b!5482772))

(assert (= (and b!5482751 (not res!2337716)) b!5482752))

(assert (= (and b!5482752 (not res!2337704)) b!5482762))

(assert (= (and b!5482762 (not res!2337714)) b!5482748))

(assert (= (and b!5482748 (not res!2337700)) b!5482755))

(assert (= (and b!5482755 (not res!2337697)) b!5482744))

(assert (= (and b!5482744 (not res!2337712)) b!5482750))

(assert (= (and b!5482750 (not res!2337711)) b!5482741))

(assert (= (and b!5482741 (not res!2337699)) b!5482746))

(assert (= (and b!5482746 (not res!2337706)) b!5482758))

(assert (= (and b!5482758 (not res!2337713)) b!5482742))

(assert (= (and b!5482742 (not res!2337696)) b!5482738))

(assert (= (and b!5482738 (not res!2337702)) b!5482767))

(assert (= (and b!5482767 (not res!2337694)) b!5482753))

(assert (= (and b!5482753 (not res!2337703)) b!5482756))

(assert (= (and b!5482756 (not res!2337715)) b!5482771))

(assert (= (and b!5482771 (not res!2337701)) b!5482766))

(assert (= (and b!5482766 (not res!2337718)) b!5482768))

(assert (= (and start!573406 ((_ is ElementMatch!15375) r!7292)) b!5482749))

(assert (= (and start!573406 ((_ is Concat!24220) r!7292)) b!5482739))

(assert (= (and start!573406 ((_ is Star!15375) r!7292)) b!5482754))

(assert (= (and start!573406 ((_ is Union!15375) r!7292)) b!5482765))

(assert (= (and start!573406 condSetEmpty!36075) setIsEmpty!36075))

(assert (= (and start!573406 (not condSetEmpty!36075)) setNonEmpty!36075))

(assert (= setNonEmpty!36075 b!5482757))

(assert (= b!5482745 b!5482764))

(assert (= (and start!573406 ((_ is Cons!62302) zl!343)) b!5482745))

(assert (= (and start!573406 ((_ is Cons!62300) s!2326)) b!5482760))

(declare-fun m!6498338 () Bool)

(assert (=> b!5482742 m!6498338))

(declare-fun m!6498340 () Bool)

(assert (=> b!5482747 m!6498340))

(declare-fun m!6498342 () Bool)

(assert (=> b!5482766 m!6498342))

(declare-fun m!6498344 () Bool)

(assert (=> b!5482753 m!6498344))

(declare-fun m!6498346 () Bool)

(assert (=> b!5482753 m!6498346))

(declare-fun m!6498348 () Bool)

(assert (=> b!5482753 m!6498348))

(declare-fun m!6498350 () Bool)

(assert (=> b!5482753 m!6498350))

(declare-fun m!6498352 () Bool)

(assert (=> b!5482753 m!6498352))

(declare-fun m!6498354 () Bool)

(assert (=> b!5482753 m!6498354))

(declare-fun m!6498356 () Bool)

(assert (=> b!5482771 m!6498356))

(declare-fun m!6498358 () Bool)

(assert (=> b!5482768 m!6498358))

(declare-fun m!6498360 () Bool)

(assert (=> b!5482768 m!6498360))

(assert (=> b!5482768 m!6498350))

(declare-fun m!6498362 () Bool)

(assert (=> b!5482768 m!6498362))

(declare-fun m!6498364 () Bool)

(assert (=> b!5482768 m!6498364))

(declare-fun m!6498366 () Bool)

(assert (=> b!5482768 m!6498366))

(assert (=> b!5482768 m!6498344))

(assert (=> b!5482768 m!6498350))

(assert (=> b!5482768 m!6498354))

(declare-fun m!6498368 () Bool)

(assert (=> b!5482768 m!6498368))

(declare-fun m!6498370 () Bool)

(assert (=> b!5482768 m!6498370))

(declare-fun m!6498372 () Bool)

(assert (=> b!5482770 m!6498372))

(declare-fun m!6498374 () Bool)

(assert (=> b!5482748 m!6498374))

(declare-fun m!6498376 () Bool)

(assert (=> b!5482748 m!6498376))

(declare-fun m!6498378 () Bool)

(assert (=> b!5482748 m!6498378))

(declare-fun m!6498380 () Bool)

(assert (=> b!5482746 m!6498380))

(declare-fun m!6498382 () Bool)

(assert (=> b!5482746 m!6498382))

(declare-fun m!6498384 () Bool)

(assert (=> b!5482746 m!6498384))

(declare-fun m!6498386 () Bool)

(assert (=> b!5482746 m!6498386))

(declare-fun m!6498388 () Bool)

(assert (=> b!5482746 m!6498388))

(declare-fun m!6498390 () Bool)

(assert (=> b!5482746 m!6498390))

(declare-fun m!6498392 () Bool)

(assert (=> b!5482746 m!6498392))

(declare-fun m!6498394 () Bool)

(assert (=> b!5482746 m!6498394))

(declare-fun m!6498396 () Bool)

(assert (=> b!5482746 m!6498396))

(declare-fun m!6498398 () Bool)

(assert (=> setNonEmpty!36075 m!6498398))

(declare-fun m!6498400 () Bool)

(assert (=> b!5482744 m!6498400))

(declare-fun m!6498402 () Bool)

(assert (=> b!5482744 m!6498402))

(assert (=> b!5482744 m!6498402))

(declare-fun m!6498404 () Bool)

(assert (=> b!5482744 m!6498404))

(declare-fun m!6498406 () Bool)

(assert (=> b!5482763 m!6498406))

(declare-fun m!6498408 () Bool)

(assert (=> b!5482763 m!6498408))

(declare-fun m!6498410 () Bool)

(assert (=> b!5482763 m!6498410))

(declare-fun m!6498412 () Bool)

(assert (=> b!5482758 m!6498412))

(declare-fun m!6498414 () Bool)

(assert (=> b!5482745 m!6498414))

(declare-fun m!6498416 () Bool)

(assert (=> b!5482740 m!6498416))

(assert (=> b!5482740 m!6498416))

(declare-fun m!6498418 () Bool)

(assert (=> b!5482740 m!6498418))

(declare-fun m!6498420 () Bool)

(assert (=> b!5482759 m!6498420))

(declare-fun m!6498422 () Bool)

(assert (=> b!5482751 m!6498422))

(declare-fun m!6498424 () Bool)

(assert (=> b!5482751 m!6498424))

(declare-fun m!6498426 () Bool)

(assert (=> b!5482751 m!6498426))

(declare-fun m!6498428 () Bool)

(assert (=> b!5482751 m!6498428))

(assert (=> b!5482751 m!6498424))

(declare-fun m!6498430 () Bool)

(assert (=> b!5482751 m!6498430))

(declare-fun m!6498432 () Bool)

(assert (=> b!5482751 m!6498432))

(declare-fun m!6498434 () Bool)

(assert (=> b!5482751 m!6498434))

(declare-fun m!6498436 () Bool)

(assert (=> b!5482751 m!6498436))

(declare-fun m!6498438 () Bool)

(assert (=> b!5482751 m!6498438))

(assert (=> b!5482751 m!6498430))

(assert (=> b!5482751 m!6498424))

(declare-fun m!6498440 () Bool)

(assert (=> b!5482741 m!6498440))

(declare-fun m!6498442 () Bool)

(assert (=> b!5482756 m!6498442))

(declare-fun m!6498444 () Bool)

(assert (=> b!5482756 m!6498444))

(declare-fun m!6498446 () Bool)

(assert (=> b!5482756 m!6498446))

(declare-fun m!6498448 () Bool)

(assert (=> b!5482756 m!6498448))

(declare-fun m!6498450 () Bool)

(assert (=> b!5482756 m!6498450))

(declare-fun m!6498452 () Bool)

(assert (=> b!5482738 m!6498452))

(declare-fun m!6498454 () Bool)

(assert (=> b!5482738 m!6498454))

(declare-fun m!6498456 () Bool)

(assert (=> b!5482738 m!6498456))

(declare-fun m!6498458 () Bool)

(assert (=> start!573406 m!6498458))

(declare-fun m!6498460 () Bool)

(assert (=> b!5482755 m!6498460))

(declare-fun m!6498462 () Bool)

(assert (=> b!5482755 m!6498462))

(declare-fun m!6498464 () Bool)

(assert (=> b!5482755 m!6498464))

(declare-fun m!6498466 () Bool)

(assert (=> b!5482755 m!6498466))

(declare-fun m!6498468 () Bool)

(assert (=> b!5482755 m!6498468))

(declare-fun m!6498470 () Bool)

(assert (=> b!5482767 m!6498470))

(declare-fun m!6498472 () Bool)

(assert (=> b!5482762 m!6498472))

(declare-fun m!6498474 () Bool)

(assert (=> b!5482762 m!6498474))

(declare-fun m!6498476 () Bool)

(assert (=> b!5482762 m!6498476))

(declare-fun m!6498478 () Bool)

(assert (=> b!5482743 m!6498478))

(check-sat (not b!5482753) (not setNonEmpty!36075) (not start!573406) (not b!5482740) tp_is_empty!40003 (not b!5482763) (not b!5482746) (not b!5482757) (not b!5482768) (not b!5482764) (not b!5482755) (not b!5482743) (not b!5482751) (not b!5482744) (not b!5482738) (not b!5482771) (not b!5482762) (not b!5482742) (not b!5482760) (not b!5482766) (not b!5482756) (not b!5482765) (not b!5482747) (not b!5482767) (not b!5482748) (not b!5482754) (not b!5482739) (not b!5482741) (not b!5482770) (not b!5482759) (not b!5482758) (not b!5482745))
(check-sat)
(get-model)

(declare-fun bm!404581 () Bool)

(declare-fun call!404588 () Bool)

(declare-fun call!404587 () Bool)

(assert (=> bm!404581 (= call!404588 call!404587)))

(declare-fun b!5482802 () Bool)

(declare-fun e!3393096 () Bool)

(declare-fun e!3393094 () Bool)

(assert (=> b!5482802 (= e!3393096 e!3393094)))

(declare-fun c!957963 () Bool)

(assert (=> b!5482802 (= c!957963 ((_ is Star!15375) r!7292))))

(declare-fun b!5482803 () Bool)

(declare-fun res!2337740 () Bool)

(declare-fun e!3393090 () Bool)

(assert (=> b!5482803 (=> res!2337740 e!3393090)))

(assert (=> b!5482803 (= res!2337740 (not ((_ is Concat!24220) r!7292)))))

(declare-fun e!3393092 () Bool)

(assert (=> b!5482803 (= e!3393092 e!3393090)))

(declare-fun b!5482804 () Bool)

(assert (=> b!5482804 (= e!3393094 e!3393092)))

(declare-fun c!957962 () Bool)

(assert (=> b!5482804 (= c!957962 ((_ is Union!15375) r!7292))))

(declare-fun d!1741203 () Bool)

(declare-fun res!2337736 () Bool)

(assert (=> d!1741203 (=> res!2337736 e!3393096)))

(assert (=> d!1741203 (= res!2337736 ((_ is ElementMatch!15375) r!7292))))

(assert (=> d!1741203 (= (validRegex!7111 r!7292) e!3393096)))

(declare-fun b!5482805 () Bool)

(declare-fun e!3393091 () Bool)

(assert (=> b!5482805 (= e!3393091 call!404587)))

(declare-fun b!5482806 () Bool)

(declare-fun res!2337738 () Bool)

(declare-fun e!3393093 () Bool)

(assert (=> b!5482806 (=> (not res!2337738) (not e!3393093))))

(assert (=> b!5482806 (= res!2337738 call!404588)))

(assert (=> b!5482806 (= e!3393092 e!3393093)))

(declare-fun b!5482807 () Bool)

(declare-fun e!3393095 () Bool)

(declare-fun call!404586 () Bool)

(assert (=> b!5482807 (= e!3393095 call!404586)))

(declare-fun b!5482808 () Bool)

(assert (=> b!5482808 (= e!3393090 e!3393095)))

(declare-fun res!2337739 () Bool)

(assert (=> b!5482808 (=> (not res!2337739) (not e!3393095))))

(assert (=> b!5482808 (= res!2337739 call!404588)))

(declare-fun b!5482809 () Bool)

(assert (=> b!5482809 (= e!3393093 call!404586)))

(declare-fun bm!404582 () Bool)

(assert (=> bm!404582 (= call!404586 (validRegex!7111 (ite c!957962 (regTwo!31263 r!7292) (regTwo!31262 r!7292))))))

(declare-fun b!5482810 () Bool)

(assert (=> b!5482810 (= e!3393094 e!3393091)))

(declare-fun res!2337737 () Bool)

(declare-fun nullable!5489 (Regex!15375) Bool)

(assert (=> b!5482810 (= res!2337737 (not (nullable!5489 (reg!15704 r!7292))))))

(assert (=> b!5482810 (=> (not res!2337737) (not e!3393091))))

(declare-fun bm!404583 () Bool)

(assert (=> bm!404583 (= call!404587 (validRegex!7111 (ite c!957963 (reg!15704 r!7292) (ite c!957962 (regOne!31263 r!7292) (regOne!31262 r!7292)))))))

(assert (= (and d!1741203 (not res!2337736)) b!5482802))

(assert (= (and b!5482802 c!957963) b!5482810))

(assert (= (and b!5482802 (not c!957963)) b!5482804))

(assert (= (and b!5482810 res!2337737) b!5482805))

(assert (= (and b!5482804 c!957962) b!5482806))

(assert (= (and b!5482804 (not c!957962)) b!5482803))

(assert (= (and b!5482806 res!2337738) b!5482809))

(assert (= (and b!5482803 (not res!2337740)) b!5482808))

(assert (= (and b!5482808 res!2337739) b!5482807))

(assert (= (or b!5482809 b!5482807) bm!404582))

(assert (= (or b!5482806 b!5482808) bm!404581))

(assert (= (or b!5482805 bm!404581) bm!404583))

(declare-fun m!6498498 () Bool)

(assert (=> bm!404582 m!6498498))

(declare-fun m!6498500 () Bool)

(assert (=> b!5482810 m!6498500))

(declare-fun m!6498502 () Bool)

(assert (=> bm!404583 m!6498502))

(assert (=> start!573406 d!1741203))

(declare-fun bs!1266727 () Bool)

(declare-fun d!1741217 () Bool)

(assert (= bs!1266727 (and d!1741217 b!5482753)))

(declare-fun lambda!292858 () Int)

(assert (=> bs!1266727 (= lambda!292858 lambda!292849)))

(declare-fun e!3393118 () Bool)

(assert (=> d!1741217 e!3393118))

(declare-fun res!2337754 () Bool)

(assert (=> d!1741217 (=> (not res!2337754) (not e!3393118))))

(declare-fun lt!2239521 () Regex!15375)

(assert (=> d!1741217 (= res!2337754 (validRegex!7111 lt!2239521))))

(declare-fun e!3393113 () Regex!15375)

(assert (=> d!1741217 (= lt!2239521 e!3393113)))

(declare-fun c!957973 () Bool)

(declare-fun e!3393117 () Bool)

(assert (=> d!1741217 (= c!957973 e!3393117)))

(declare-fun res!2337753 () Bool)

(assert (=> d!1741217 (=> (not res!2337753) (not e!3393117))))

(assert (=> d!1741217 (= res!2337753 ((_ is Cons!62301) (exprs!5259 (h!68750 zl!343))))))

(declare-fun forall!14619 (List!62425 Int) Bool)

(assert (=> d!1741217 (forall!14619 (exprs!5259 (h!68750 zl!343)) lambda!292858)))

(assert (=> d!1741217 (= (generalisedConcat!1044 (exprs!5259 (h!68750 zl!343))) lt!2239521)))

(declare-fun b!5482839 () Bool)

(declare-fun e!3393114 () Regex!15375)

(assert (=> b!5482839 (= e!3393114 (Concat!24220 (h!68749 (exprs!5259 (h!68750 zl!343))) (generalisedConcat!1044 (t!375656 (exprs!5259 (h!68750 zl!343))))))))

(declare-fun b!5482840 () Bool)

(declare-fun e!3393116 () Bool)

(declare-fun isConcat!568 (Regex!15375) Bool)

(assert (=> b!5482840 (= e!3393116 (isConcat!568 lt!2239521))))

(declare-fun b!5482841 () Bool)

(declare-fun e!3393115 () Bool)

(declare-fun isEmptyExpr!1045 (Regex!15375) Bool)

(assert (=> b!5482841 (= e!3393115 (isEmptyExpr!1045 lt!2239521))))

(declare-fun b!5482842 () Bool)

(assert (=> b!5482842 (= e!3393113 (h!68749 (exprs!5259 (h!68750 zl!343))))))

(declare-fun b!5482843 () Bool)

(declare-fun head!11743 (List!62425) Regex!15375)

(assert (=> b!5482843 (= e!3393116 (= lt!2239521 (head!11743 (exprs!5259 (h!68750 zl!343)))))))

(declare-fun b!5482844 () Bool)

(assert (=> b!5482844 (= e!3393114 EmptyExpr!15375)))

(declare-fun b!5482845 () Bool)

(assert (=> b!5482845 (= e!3393115 e!3393116)))

(declare-fun c!957974 () Bool)

(declare-fun isEmpty!34249 (List!62425) Bool)

(declare-fun tail!10840 (List!62425) List!62425)

(assert (=> b!5482845 (= c!957974 (isEmpty!34249 (tail!10840 (exprs!5259 (h!68750 zl!343)))))))

(declare-fun b!5482846 () Bool)

(assert (=> b!5482846 (= e!3393118 e!3393115)))

(declare-fun c!957975 () Bool)

(assert (=> b!5482846 (= c!957975 (isEmpty!34249 (exprs!5259 (h!68750 zl!343))))))

(declare-fun b!5482847 () Bool)

(assert (=> b!5482847 (= e!3393113 e!3393114)))

(declare-fun c!957972 () Bool)

(assert (=> b!5482847 (= c!957972 ((_ is Cons!62301) (exprs!5259 (h!68750 zl!343))))))

(declare-fun b!5482848 () Bool)

(assert (=> b!5482848 (= e!3393117 (isEmpty!34249 (t!375656 (exprs!5259 (h!68750 zl!343)))))))

(assert (= (and d!1741217 res!2337753) b!5482848))

(assert (= (and d!1741217 c!957973) b!5482842))

(assert (= (and d!1741217 (not c!957973)) b!5482847))

(assert (= (and b!5482847 c!957972) b!5482839))

(assert (= (and b!5482847 (not c!957972)) b!5482844))

(assert (= (and d!1741217 res!2337754) b!5482846))

(assert (= (and b!5482846 c!957975) b!5482841))

(assert (= (and b!5482846 (not c!957975)) b!5482845))

(assert (= (and b!5482845 c!957974) b!5482843))

(assert (= (and b!5482845 (not c!957974)) b!5482840))

(declare-fun m!6498510 () Bool)

(assert (=> b!5482840 m!6498510))

(declare-fun m!6498512 () Bool)

(assert (=> b!5482846 m!6498512))

(declare-fun m!6498514 () Bool)

(assert (=> b!5482839 m!6498514))

(declare-fun m!6498516 () Bool)

(assert (=> b!5482848 m!6498516))

(declare-fun m!6498518 () Bool)

(assert (=> b!5482845 m!6498518))

(assert (=> b!5482845 m!6498518))

(declare-fun m!6498520 () Bool)

(assert (=> b!5482845 m!6498520))

(declare-fun m!6498522 () Bool)

(assert (=> b!5482841 m!6498522))

(declare-fun m!6498524 () Bool)

(assert (=> b!5482843 m!6498524))

(declare-fun m!6498526 () Bool)

(assert (=> d!1741217 m!6498526))

(declare-fun m!6498528 () Bool)

(assert (=> d!1741217 m!6498528))

(assert (=> b!5482743 d!1741217))

(declare-fun bs!1266732 () Bool)

(declare-fun b!5482891 () Bool)

(assert (= bs!1266732 (and b!5482891 b!5482751)))

(declare-fun lambda!292869 () Int)

(assert (=> bs!1266732 (not (= lambda!292869 lambda!292844))))

(assert (=> bs!1266732 (= lambda!292869 lambda!292845)))

(assert (=> bs!1266732 (not (= lambda!292869 lambda!292846))))

(assert (=> b!5482891 true))

(assert (=> b!5482891 true))

(declare-fun bs!1266733 () Bool)

(declare-fun b!5482895 () Bool)

(assert (= bs!1266733 (and b!5482895 b!5482751)))

(declare-fun lambda!292870 () Int)

(assert (=> bs!1266733 (not (= lambda!292870 lambda!292844))))

(assert (=> bs!1266733 (not (= lambda!292870 lambda!292845))))

(assert (=> bs!1266733 (= (and (= (regOne!31262 r!7292) (reg!15704 r!7292)) (= (regTwo!31262 r!7292) r!7292)) (= lambda!292870 lambda!292846))))

(declare-fun bs!1266734 () Bool)

(assert (= bs!1266734 (and b!5482895 b!5482891)))

(assert (=> bs!1266734 (not (= lambda!292870 lambda!292869))))

(assert (=> b!5482895 true))

(assert (=> b!5482895 true))

(declare-fun e!3393145 () Bool)

(declare-fun call!404593 () Bool)

(assert (=> b!5482891 (= e!3393145 call!404593)))

(declare-fun b!5482892 () Bool)

(declare-fun e!3393143 () Bool)

(declare-fun e!3393144 () Bool)

(assert (=> b!5482892 (= e!3393143 e!3393144)))

(declare-fun c!957984 () Bool)

(assert (=> b!5482892 (= c!957984 ((_ is Star!15375) r!7292))))

(declare-fun b!5482893 () Bool)

(declare-fun e!3393147 () Bool)

(assert (=> b!5482893 (= e!3393143 e!3393147)))

(declare-fun res!2337783 () Bool)

(assert (=> b!5482893 (= res!2337783 (matchRSpec!2478 (regOne!31263 r!7292) s!2326))))

(assert (=> b!5482893 (=> res!2337783 e!3393147)))

(declare-fun d!1741221 () Bool)

(declare-fun c!957987 () Bool)

(assert (=> d!1741221 (= c!957987 ((_ is EmptyExpr!15375) r!7292))))

(declare-fun e!3393142 () Bool)

(assert (=> d!1741221 (= (matchRSpec!2478 r!7292 s!2326) e!3393142)))

(declare-fun b!5482894 () Bool)

(declare-fun e!3393141 () Bool)

(assert (=> b!5482894 (= e!3393141 (= s!2326 (Cons!62300 (c!957957 r!7292) Nil!62300)))))

(declare-fun bm!404588 () Bool)

(declare-fun call!404594 () Bool)

(assert (=> bm!404588 (= call!404594 (isEmpty!34246 s!2326))))

(assert (=> b!5482895 (= e!3393144 call!404593)))

(declare-fun bm!404589 () Bool)

(assert (=> bm!404589 (= call!404593 (Exists!2554 (ite c!957984 lambda!292869 lambda!292870)))))

(declare-fun b!5482896 () Bool)

(declare-fun c!957986 () Bool)

(assert (=> b!5482896 (= c!957986 ((_ is Union!15375) r!7292))))

(assert (=> b!5482896 (= e!3393141 e!3393143)))

(declare-fun b!5482897 () Bool)

(assert (=> b!5482897 (= e!3393147 (matchRSpec!2478 (regTwo!31263 r!7292) s!2326))))

(declare-fun b!5482898 () Bool)

(assert (=> b!5482898 (= e!3393142 call!404594)))

(declare-fun b!5482899 () Bool)

(declare-fun e!3393146 () Bool)

(assert (=> b!5482899 (= e!3393142 e!3393146)))

(declare-fun res!2337782 () Bool)

(assert (=> b!5482899 (= res!2337782 (not ((_ is EmptyLang!15375) r!7292)))))

(assert (=> b!5482899 (=> (not res!2337782) (not e!3393146))))

(declare-fun b!5482900 () Bool)

(declare-fun res!2337781 () Bool)

(assert (=> b!5482900 (=> res!2337781 e!3393145)))

(assert (=> b!5482900 (= res!2337781 call!404594)))

(assert (=> b!5482900 (= e!3393144 e!3393145)))

(declare-fun b!5482901 () Bool)

(declare-fun c!957985 () Bool)

(assert (=> b!5482901 (= c!957985 ((_ is ElementMatch!15375) r!7292))))

(assert (=> b!5482901 (= e!3393146 e!3393141)))

(assert (= (and d!1741221 c!957987) b!5482898))

(assert (= (and d!1741221 (not c!957987)) b!5482899))

(assert (= (and b!5482899 res!2337782) b!5482901))

(assert (= (and b!5482901 c!957985) b!5482894))

(assert (= (and b!5482901 (not c!957985)) b!5482896))

(assert (= (and b!5482896 c!957986) b!5482893))

(assert (= (and b!5482896 (not c!957986)) b!5482892))

(assert (= (and b!5482893 (not res!2337783)) b!5482897))

(assert (= (and b!5482892 c!957984) b!5482900))

(assert (= (and b!5482892 (not c!957984)) b!5482895))

(assert (= (and b!5482900 (not res!2337781)) b!5482891))

(assert (= (or b!5482891 b!5482895) bm!404589))

(assert (= (or b!5482898 b!5482900) bm!404588))

(declare-fun m!6498538 () Bool)

(assert (=> b!5482893 m!6498538))

(assert (=> bm!404588 m!6498422))

(declare-fun m!6498540 () Bool)

(assert (=> bm!404589 m!6498540))

(declare-fun m!6498542 () Bool)

(assert (=> b!5482897 m!6498542))

(assert (=> b!5482763 d!1741221))

(declare-fun b!5482961 () Bool)

(declare-fun e!3393181 () Bool)

(declare-fun head!11744 (List!62424) C!31020)

(assert (=> b!5482961 (= e!3393181 (= (head!11744 s!2326) (c!957957 r!7292)))))

(declare-fun b!5482962 () Bool)

(declare-fun e!3393183 () Bool)

(declare-fun e!3393185 () Bool)

(assert (=> b!5482962 (= e!3393183 e!3393185)))

(declare-fun res!2337821 () Bool)

(assert (=> b!5482962 (=> (not res!2337821) (not e!3393185))))

(declare-fun lt!2239538 () Bool)

(assert (=> b!5482962 (= res!2337821 (not lt!2239538))))

(declare-fun b!5482963 () Bool)

(declare-fun res!2337823 () Bool)

(assert (=> b!5482963 (=> (not res!2337823) (not e!3393181))))

(declare-fun call!404597 () Bool)

(assert (=> b!5482963 (= res!2337823 (not call!404597))))

(declare-fun b!5482964 () Bool)

(declare-fun res!2337824 () Bool)

(assert (=> b!5482964 (=> res!2337824 e!3393183)))

(assert (=> b!5482964 (= res!2337824 e!3393181)))

(declare-fun res!2337820 () Bool)

(assert (=> b!5482964 (=> (not res!2337820) (not e!3393181))))

(assert (=> b!5482964 (= res!2337820 lt!2239538)))

(declare-fun bm!404592 () Bool)

(assert (=> bm!404592 (= call!404597 (isEmpty!34246 s!2326))))

(declare-fun b!5482966 () Bool)

(declare-fun e!3393182 () Bool)

(assert (=> b!5482966 (= e!3393182 (not (= (head!11744 s!2326) (c!957957 r!7292))))))

(declare-fun b!5482967 () Bool)

(assert (=> b!5482967 (= e!3393185 e!3393182)))

(declare-fun res!2337826 () Bool)

(assert (=> b!5482967 (=> res!2337826 e!3393182)))

(assert (=> b!5482967 (= res!2337826 call!404597)))

(declare-fun b!5482968 () Bool)

(declare-fun e!3393184 () Bool)

(assert (=> b!5482968 (= e!3393184 (not lt!2239538))))

(declare-fun b!5482969 () Bool)

(declare-fun e!3393180 () Bool)

(assert (=> b!5482969 (= e!3393180 (= lt!2239538 call!404597))))

(declare-fun b!5482965 () Bool)

(declare-fun res!2337825 () Bool)

(assert (=> b!5482965 (=> res!2337825 e!3393182)))

(declare-fun tail!10841 (List!62424) List!62424)

(assert (=> b!5482965 (= res!2337825 (not (isEmpty!34246 (tail!10841 s!2326))))))

(declare-fun d!1741229 () Bool)

(assert (=> d!1741229 e!3393180))

(declare-fun c!958000 () Bool)

(assert (=> d!1741229 (= c!958000 ((_ is EmptyExpr!15375) r!7292))))

(declare-fun e!3393179 () Bool)

(assert (=> d!1741229 (= lt!2239538 e!3393179)))

(declare-fun c!958002 () Bool)

(assert (=> d!1741229 (= c!958002 (isEmpty!34246 s!2326))))

(assert (=> d!1741229 (validRegex!7111 r!7292)))

(assert (=> d!1741229 (= (matchR!7560 r!7292 s!2326) lt!2239538)))

(declare-fun b!5482970 () Bool)

(assert (=> b!5482970 (= e!3393179 (nullable!5489 r!7292))))

(declare-fun b!5482971 () Bool)

(declare-fun res!2337819 () Bool)

(assert (=> b!5482971 (=> (not res!2337819) (not e!3393181))))

(assert (=> b!5482971 (= res!2337819 (isEmpty!34246 (tail!10841 s!2326)))))

(declare-fun b!5482972 () Bool)

(assert (=> b!5482972 (= e!3393180 e!3393184)))

(declare-fun c!958001 () Bool)

(assert (=> b!5482972 (= c!958001 ((_ is EmptyLang!15375) r!7292))))

(declare-fun b!5482973 () Bool)

(declare-fun res!2337822 () Bool)

(assert (=> b!5482973 (=> res!2337822 e!3393183)))

(assert (=> b!5482973 (= res!2337822 (not ((_ is ElementMatch!15375) r!7292)))))

(assert (=> b!5482973 (= e!3393184 e!3393183)))

(declare-fun b!5482974 () Bool)

(declare-fun derivativeStep!4334 (Regex!15375 C!31020) Regex!15375)

(assert (=> b!5482974 (= e!3393179 (matchR!7560 (derivativeStep!4334 r!7292 (head!11744 s!2326)) (tail!10841 s!2326)))))

(assert (= (and d!1741229 c!958002) b!5482970))

(assert (= (and d!1741229 (not c!958002)) b!5482974))

(assert (= (and d!1741229 c!958000) b!5482969))

(assert (= (and d!1741229 (not c!958000)) b!5482972))

(assert (= (and b!5482972 c!958001) b!5482968))

(assert (= (and b!5482972 (not c!958001)) b!5482973))

(assert (= (and b!5482973 (not res!2337822)) b!5482964))

(assert (= (and b!5482964 res!2337820) b!5482963))

(assert (= (and b!5482963 res!2337823) b!5482971))

(assert (= (and b!5482971 res!2337819) b!5482961))

(assert (= (and b!5482964 (not res!2337824)) b!5482962))

(assert (= (and b!5482962 res!2337821) b!5482967))

(assert (= (and b!5482967 (not res!2337826)) b!5482965))

(assert (= (and b!5482965 (not res!2337825)) b!5482966))

(assert (= (or b!5482969 b!5482963 b!5482967) bm!404592))

(assert (=> bm!404592 m!6498422))

(declare-fun m!6498564 () Bool)

(assert (=> b!5482974 m!6498564))

(assert (=> b!5482974 m!6498564))

(declare-fun m!6498566 () Bool)

(assert (=> b!5482974 m!6498566))

(declare-fun m!6498568 () Bool)

(assert (=> b!5482974 m!6498568))

(assert (=> b!5482974 m!6498566))

(assert (=> b!5482974 m!6498568))

(declare-fun m!6498570 () Bool)

(assert (=> b!5482974 m!6498570))

(assert (=> b!5482961 m!6498564))

(assert (=> b!5482966 m!6498564))

(assert (=> b!5482965 m!6498568))

(assert (=> b!5482965 m!6498568))

(declare-fun m!6498572 () Bool)

(assert (=> b!5482965 m!6498572))

(assert (=> b!5482971 m!6498568))

(assert (=> b!5482971 m!6498568))

(assert (=> b!5482971 m!6498572))

(declare-fun m!6498574 () Bool)

(assert (=> b!5482970 m!6498574))

(assert (=> d!1741229 m!6498422))

(assert (=> d!1741229 m!6498458))

(assert (=> b!5482763 d!1741229))

(declare-fun d!1741233 () Bool)

(assert (=> d!1741233 (= (matchR!7560 r!7292 s!2326) (matchRSpec!2478 r!7292 s!2326))))

(declare-fun lt!2239544 () Unit!155200)

(declare-fun choose!41723 (Regex!15375 List!62424) Unit!155200)

(assert (=> d!1741233 (= lt!2239544 (choose!41723 r!7292 s!2326))))

(assert (=> d!1741233 (validRegex!7111 r!7292)))

(assert (=> d!1741233 (= (mainMatchTheorem!2478 r!7292 s!2326) lt!2239544)))

(declare-fun bs!1266739 () Bool)

(assert (= bs!1266739 d!1741233))

(assert (=> bs!1266739 m!6498408))

(assert (=> bs!1266739 m!6498406))

(declare-fun m!6498580 () Bool)

(assert (=> bs!1266739 m!6498580))

(assert (=> bs!1266739 m!6498458))

(assert (=> b!5482763 d!1741233))

(declare-fun d!1741237 () Bool)

(declare-fun lt!2239548 () Regex!15375)

(assert (=> d!1741237 (validRegex!7111 lt!2239548)))

(assert (=> d!1741237 (= lt!2239548 (generalisedUnion!1304 (unfocusZipperList!817 lt!2239473)))))

(assert (=> d!1741237 (= (unfocusZipper!1117 lt!2239473) lt!2239548)))

(declare-fun bs!1266740 () Bool)

(assert (= bs!1266740 d!1741237))

(declare-fun m!6498596 () Bool)

(assert (=> bs!1266740 m!6498596))

(declare-fun m!6498598 () Bool)

(assert (=> bs!1266740 m!6498598))

(assert (=> bs!1266740 m!6498598))

(declare-fun m!6498600 () Bool)

(assert (=> bs!1266740 m!6498600))

(assert (=> b!5482742 d!1741237))

(declare-fun d!1741243 () Bool)

(declare-fun c!958008 () Bool)

(assert (=> d!1741243 (= c!958008 (isEmpty!34246 (_2!35875 lt!2239508)))))

(declare-fun e!3393194 () Bool)

(assert (=> d!1741243 (= (matchZipper!1593 lt!2239490 (_2!35875 lt!2239508)) e!3393194)))

(declare-fun b!5482991 () Bool)

(declare-fun nullableZipper!1510 ((InoxSet Context!9518)) Bool)

(assert (=> b!5482991 (= e!3393194 (nullableZipper!1510 lt!2239490))))

(declare-fun b!5482992 () Bool)

(assert (=> b!5482992 (= e!3393194 (matchZipper!1593 (derivationStepZipper!1570 lt!2239490 (head!11744 (_2!35875 lt!2239508))) (tail!10841 (_2!35875 lt!2239508))))))

(assert (= (and d!1741243 c!958008) b!5482991))

(assert (= (and d!1741243 (not c!958008)) b!5482992))

(declare-fun m!6498602 () Bool)

(assert (=> d!1741243 m!6498602))

(declare-fun m!6498604 () Bool)

(assert (=> b!5482991 m!6498604))

(declare-fun m!6498606 () Bool)

(assert (=> b!5482992 m!6498606))

(assert (=> b!5482992 m!6498606))

(declare-fun m!6498608 () Bool)

(assert (=> b!5482992 m!6498608))

(declare-fun m!6498610 () Bool)

(assert (=> b!5482992 m!6498610))

(assert (=> b!5482992 m!6498608))

(assert (=> b!5482992 m!6498610))

(declare-fun m!6498612 () Bool)

(assert (=> b!5482992 m!6498612))

(assert (=> b!5482766 d!1741243))

(declare-fun d!1741245 () Bool)

(declare-fun c!958009 () Bool)

(assert (=> d!1741245 (= c!958009 (isEmpty!34246 s!2326))))

(declare-fun e!3393195 () Bool)

(assert (=> d!1741245 (= (matchZipper!1593 lt!2239501 s!2326) e!3393195)))

(declare-fun b!5482993 () Bool)

(assert (=> b!5482993 (= e!3393195 (nullableZipper!1510 lt!2239501))))

(declare-fun b!5482994 () Bool)

(assert (=> b!5482994 (= e!3393195 (matchZipper!1593 (derivationStepZipper!1570 lt!2239501 (head!11744 s!2326)) (tail!10841 s!2326)))))

(assert (= (and d!1741245 c!958009) b!5482993))

(assert (= (and d!1741245 (not c!958009)) b!5482994))

(assert (=> d!1741245 m!6498422))

(declare-fun m!6498614 () Bool)

(assert (=> b!5482993 m!6498614))

(assert (=> b!5482994 m!6498564))

(assert (=> b!5482994 m!6498564))

(declare-fun m!6498616 () Bool)

(assert (=> b!5482994 m!6498616))

(assert (=> b!5482994 m!6498568))

(assert (=> b!5482994 m!6498616))

(assert (=> b!5482994 m!6498568))

(declare-fun m!6498618 () Bool)

(assert (=> b!5482994 m!6498618))

(assert (=> b!5482744 d!1741245))

(declare-fun d!1741247 () Bool)

(declare-fun c!958010 () Bool)

(assert (=> d!1741247 (= c!958010 (isEmpty!34246 (t!375655 s!2326)))))

(declare-fun e!3393196 () Bool)

(assert (=> d!1741247 (= (matchZipper!1593 (derivationStepZipper!1570 lt!2239501 (h!68748 s!2326)) (t!375655 s!2326)) e!3393196)))

(declare-fun b!5482995 () Bool)

(assert (=> b!5482995 (= e!3393196 (nullableZipper!1510 (derivationStepZipper!1570 lt!2239501 (h!68748 s!2326))))))

(declare-fun b!5482996 () Bool)

(assert (=> b!5482996 (= e!3393196 (matchZipper!1593 (derivationStepZipper!1570 (derivationStepZipper!1570 lt!2239501 (h!68748 s!2326)) (head!11744 (t!375655 s!2326))) (tail!10841 (t!375655 s!2326))))))

(assert (= (and d!1741247 c!958010) b!5482995))

(assert (= (and d!1741247 (not c!958010)) b!5482996))

(declare-fun m!6498628 () Bool)

(assert (=> d!1741247 m!6498628))

(assert (=> b!5482995 m!6498402))

(declare-fun m!6498630 () Bool)

(assert (=> b!5482995 m!6498630))

(declare-fun m!6498632 () Bool)

(assert (=> b!5482996 m!6498632))

(assert (=> b!5482996 m!6498402))

(assert (=> b!5482996 m!6498632))

(declare-fun m!6498636 () Bool)

(assert (=> b!5482996 m!6498636))

(declare-fun m!6498638 () Bool)

(assert (=> b!5482996 m!6498638))

(assert (=> b!5482996 m!6498636))

(assert (=> b!5482996 m!6498638))

(declare-fun m!6498640 () Bool)

(assert (=> b!5482996 m!6498640))

(assert (=> b!5482744 d!1741247))

(declare-fun bs!1266743 () Bool)

(declare-fun d!1741253 () Bool)

(assert (= bs!1266743 (and d!1741253 b!5482748)))

(declare-fun lambda!292876 () Int)

(assert (=> bs!1266743 (= lambda!292876 lambda!292847)))

(assert (=> d!1741253 true))

(assert (=> d!1741253 (= (derivationStepZipper!1570 lt!2239501 (h!68748 s!2326)) (flatMap!1078 lt!2239501 lambda!292876))))

(declare-fun bs!1266744 () Bool)

(assert (= bs!1266744 d!1741253))

(declare-fun m!6498642 () Bool)

(assert (=> bs!1266744 m!6498642))

(assert (=> b!5482744 d!1741253))

(declare-fun e!3393204 () (InoxSet Context!9518))

(declare-fun call!404600 () (InoxSet Context!9518))

(declare-fun b!5483009 () Bool)

(assert (=> b!5483009 (= e!3393204 ((_ map or) call!404600 (derivationStepZipperUp!727 (Context!9519 (t!375656 (exprs!5259 lt!2239503))) (h!68748 s!2326))))))

(declare-fun bm!404595 () Bool)

(assert (=> bm!404595 (= call!404600 (derivationStepZipperDown!801 (h!68749 (exprs!5259 lt!2239503)) (Context!9519 (t!375656 (exprs!5259 lt!2239503))) (h!68748 s!2326)))))

(declare-fun b!5483010 () Bool)

(declare-fun e!3393203 () (InoxSet Context!9518))

(assert (=> b!5483010 (= e!3393203 ((as const (Array Context!9518 Bool)) false))))

(declare-fun b!5483011 () Bool)

(assert (=> b!5483011 (= e!3393204 e!3393203)))

(declare-fun c!958018 () Bool)

(assert (=> b!5483011 (= c!958018 ((_ is Cons!62301) (exprs!5259 lt!2239503)))))

(declare-fun d!1741255 () Bool)

(declare-fun c!958017 () Bool)

(declare-fun e!3393205 () Bool)

(assert (=> d!1741255 (= c!958017 e!3393205)))

(declare-fun res!2337835 () Bool)

(assert (=> d!1741255 (=> (not res!2337835) (not e!3393205))))

(assert (=> d!1741255 (= res!2337835 ((_ is Cons!62301) (exprs!5259 lt!2239503)))))

(assert (=> d!1741255 (= (derivationStepZipperUp!727 lt!2239503 (h!68748 s!2326)) e!3393204)))

(declare-fun b!5483012 () Bool)

(assert (=> b!5483012 (= e!3393205 (nullable!5489 (h!68749 (exprs!5259 lt!2239503))))))

(declare-fun b!5483013 () Bool)

(assert (=> b!5483013 (= e!3393203 call!404600)))

(assert (= (and d!1741255 res!2337835) b!5483012))

(assert (= (and d!1741255 c!958017) b!5483009))

(assert (= (and d!1741255 (not c!958017)) b!5483011))

(assert (= (and b!5483011 c!958018) b!5483013))

(assert (= (and b!5483011 (not c!958018)) b!5483010))

(assert (= (or b!5483009 b!5483013) bm!404595))

(declare-fun m!6498644 () Bool)

(assert (=> b!5483009 m!6498644))

(declare-fun m!6498646 () Bool)

(assert (=> bm!404595 m!6498646))

(declare-fun m!6498648 () Bool)

(assert (=> b!5483012 m!6498648))

(assert (=> b!5482746 d!1741255))

(declare-fun d!1741257 () Bool)

(declare-fun choose!41724 ((InoxSet Context!9518) Int) (InoxSet Context!9518))

(assert (=> d!1741257 (= (flatMap!1078 lt!2239490 lambda!292847) (choose!41724 lt!2239490 lambda!292847))))

(declare-fun bs!1266745 () Bool)

(assert (= bs!1266745 d!1741257))

(declare-fun m!6498650 () Bool)

(assert (=> bs!1266745 m!6498650))

(assert (=> b!5482746 d!1741257))

(declare-fun e!3393207 () (InoxSet Context!9518))

(declare-fun call!404601 () (InoxSet Context!9518))

(declare-fun b!5483014 () Bool)

(assert (=> b!5483014 (= e!3393207 ((_ map or) call!404601 (derivationStepZipperUp!727 (Context!9519 (t!375656 (exprs!5259 lt!2239485))) (h!68748 s!2326))))))

(declare-fun bm!404596 () Bool)

(assert (=> bm!404596 (= call!404601 (derivationStepZipperDown!801 (h!68749 (exprs!5259 lt!2239485)) (Context!9519 (t!375656 (exprs!5259 lt!2239485))) (h!68748 s!2326)))))

(declare-fun b!5483015 () Bool)

(declare-fun e!3393206 () (InoxSet Context!9518))

(assert (=> b!5483015 (= e!3393206 ((as const (Array Context!9518 Bool)) false))))

(declare-fun b!5483016 () Bool)

(assert (=> b!5483016 (= e!3393207 e!3393206)))

(declare-fun c!958020 () Bool)

(assert (=> b!5483016 (= c!958020 ((_ is Cons!62301) (exprs!5259 lt!2239485)))))

(declare-fun d!1741259 () Bool)

(declare-fun c!958019 () Bool)

(declare-fun e!3393208 () Bool)

(assert (=> d!1741259 (= c!958019 e!3393208)))

(declare-fun res!2337836 () Bool)

(assert (=> d!1741259 (=> (not res!2337836) (not e!3393208))))

(assert (=> d!1741259 (= res!2337836 ((_ is Cons!62301) (exprs!5259 lt!2239485)))))

(assert (=> d!1741259 (= (derivationStepZipperUp!727 lt!2239485 (h!68748 s!2326)) e!3393207)))

(declare-fun b!5483017 () Bool)

(assert (=> b!5483017 (= e!3393208 (nullable!5489 (h!68749 (exprs!5259 lt!2239485))))))

(declare-fun b!5483018 () Bool)

(assert (=> b!5483018 (= e!3393206 call!404601)))

(assert (= (and d!1741259 res!2337836) b!5483017))

(assert (= (and d!1741259 c!958019) b!5483014))

(assert (= (and d!1741259 (not c!958019)) b!5483016))

(assert (= (and b!5483016 c!958020) b!5483018))

(assert (= (and b!5483016 (not c!958020)) b!5483015))

(assert (= (or b!5483014 b!5483018) bm!404596))

(declare-fun m!6498652 () Bool)

(assert (=> b!5483014 m!6498652))

(declare-fun m!6498654 () Bool)

(assert (=> bm!404596 m!6498654))

(declare-fun m!6498656 () Bool)

(assert (=> b!5483017 m!6498656))

(assert (=> b!5482746 d!1741259))

(declare-fun d!1741261 () Bool)

(assert (=> d!1741261 (= (flatMap!1078 lt!2239496 lambda!292847) (choose!41724 lt!2239496 lambda!292847))))

(declare-fun bs!1266746 () Bool)

(assert (= bs!1266746 d!1741261))

(declare-fun m!6498658 () Bool)

(assert (=> bs!1266746 m!6498658))

(assert (=> b!5482746 d!1741261))

(declare-fun d!1741263 () Bool)

(declare-fun dynLambda!24442 (Int Context!9518) (InoxSet Context!9518))

(assert (=> d!1741263 (= (flatMap!1078 lt!2239490 lambda!292847) (dynLambda!24442 lambda!292847 lt!2239503))))

(declare-fun lt!2239560 () Unit!155200)

(declare-fun choose!41725 ((InoxSet Context!9518) Context!9518 Int) Unit!155200)

(assert (=> d!1741263 (= lt!2239560 (choose!41725 lt!2239490 lt!2239503 lambda!292847))))

(assert (=> d!1741263 (= lt!2239490 (store ((as const (Array Context!9518 Bool)) false) lt!2239503 true))))

(assert (=> d!1741263 (= (lemmaFlatMapOnSingletonSet!610 lt!2239490 lt!2239503 lambda!292847) lt!2239560)))

(declare-fun b_lambda!208299 () Bool)

(assert (=> (not b_lambda!208299) (not d!1741263)))

(declare-fun bs!1266747 () Bool)

(assert (= bs!1266747 d!1741263))

(assert (=> bs!1266747 m!6498390))

(declare-fun m!6498660 () Bool)

(assert (=> bs!1266747 m!6498660))

(declare-fun m!6498662 () Bool)

(assert (=> bs!1266747 m!6498662))

(assert (=> bs!1266747 m!6498396))

(assert (=> b!5482746 d!1741263))

(declare-fun bs!1266748 () Bool)

(declare-fun d!1741265 () Bool)

(assert (= bs!1266748 (and d!1741265 b!5482748)))

(declare-fun lambda!292877 () Int)

(assert (=> bs!1266748 (= lambda!292877 lambda!292847)))

(declare-fun bs!1266749 () Bool)

(assert (= bs!1266749 (and d!1741265 d!1741253)))

(assert (=> bs!1266749 (= lambda!292877 lambda!292876)))

(assert (=> d!1741265 true))

(assert (=> d!1741265 (= (derivationStepZipper!1570 lt!2239490 (h!68748 s!2326)) (flatMap!1078 lt!2239490 lambda!292877))))

(declare-fun bs!1266750 () Bool)

(assert (= bs!1266750 d!1741265))

(declare-fun m!6498664 () Bool)

(assert (=> bs!1266750 m!6498664))

(assert (=> b!5482746 d!1741265))

(declare-fun d!1741267 () Bool)

(assert (=> d!1741267 (= (flatMap!1078 lt!2239496 lambda!292847) (dynLambda!24442 lambda!292847 lt!2239485))))

(declare-fun lt!2239561 () Unit!155200)

(assert (=> d!1741267 (= lt!2239561 (choose!41725 lt!2239496 lt!2239485 lambda!292847))))

(assert (=> d!1741267 (= lt!2239496 (store ((as const (Array Context!9518 Bool)) false) lt!2239485 true))))

(assert (=> d!1741267 (= (lemmaFlatMapOnSingletonSet!610 lt!2239496 lt!2239485 lambda!292847) lt!2239561)))

(declare-fun b_lambda!208301 () Bool)

(assert (=> (not b_lambda!208301) (not d!1741267)))

(declare-fun bs!1266751 () Bool)

(assert (= bs!1266751 d!1741267))

(assert (=> bs!1266751 m!6498388))

(declare-fun m!6498666 () Bool)

(assert (=> bs!1266751 m!6498666))

(declare-fun m!6498668 () Bool)

(assert (=> bs!1266751 m!6498668))

(assert (=> bs!1266751 m!6498384))

(assert (=> b!5482746 d!1741267))

(declare-fun d!1741269 () Bool)

(declare-fun c!958025 () Bool)

(assert (=> d!1741269 (= c!958025 (isEmpty!34246 s!2326))))

(declare-fun e!3393219 () Bool)

(assert (=> d!1741269 (= (matchZipper!1593 z!1189 s!2326) e!3393219)))

(declare-fun b!5483037 () Bool)

(assert (=> b!5483037 (= e!3393219 (nullableZipper!1510 z!1189))))

(declare-fun b!5483038 () Bool)

(assert (=> b!5483038 (= e!3393219 (matchZipper!1593 (derivationStepZipper!1570 z!1189 (head!11744 s!2326)) (tail!10841 s!2326)))))

(assert (= (and d!1741269 c!958025) b!5483037))

(assert (= (and d!1741269 (not c!958025)) b!5483038))

(assert (=> d!1741269 m!6498422))

(declare-fun m!6498670 () Bool)

(assert (=> b!5483037 m!6498670))

(assert (=> b!5483038 m!6498564))

(assert (=> b!5483038 m!6498564))

(declare-fun m!6498672 () Bool)

(assert (=> b!5483038 m!6498672))

(assert (=> b!5483038 m!6498568))

(assert (=> b!5483038 m!6498672))

(assert (=> b!5483038 m!6498568))

(declare-fun m!6498674 () Bool)

(assert (=> b!5483038 m!6498674))

(assert (=> b!5482767 d!1741269))

(declare-fun bs!1266752 () Bool)

(declare-fun d!1741271 () Bool)

(assert (= bs!1266752 (and d!1741271 b!5482753)))

(declare-fun lambda!292880 () Int)

(assert (=> bs!1266752 (= lambda!292880 lambda!292849)))

(declare-fun bs!1266753 () Bool)

(assert (= bs!1266753 (and d!1741271 d!1741217)))

(assert (=> bs!1266753 (= lambda!292880 lambda!292858)))

(assert (=> d!1741271 (= (inv!81684 (h!68750 zl!343)) (forall!14619 (exprs!5259 (h!68750 zl!343)) lambda!292880))))

(declare-fun bs!1266754 () Bool)

(assert (= bs!1266754 d!1741271))

(declare-fun m!6498690 () Bool)

(assert (=> bs!1266754 m!6498690))

(assert (=> b!5482745 d!1741271))

(declare-fun d!1741273 () Bool)

(declare-fun e!3393227 () Bool)

(assert (=> d!1741273 e!3393227))

(declare-fun res!2337854 () Bool)

(assert (=> d!1741273 (=> (not res!2337854) (not e!3393227))))

(declare-fun lt!2239567 () List!62426)

(declare-fun noDuplicate!1464 (List!62426) Bool)

(assert (=> d!1741273 (= res!2337854 (noDuplicate!1464 lt!2239567))))

(declare-fun choose!41727 ((InoxSet Context!9518)) List!62426)

(assert (=> d!1741273 (= lt!2239567 (choose!41727 z!1189))))

(assert (=> d!1741273 (= (toList!9159 z!1189) lt!2239567)))

(declare-fun b!5483050 () Bool)

(declare-fun content!11215 (List!62426) (InoxSet Context!9518))

(assert (=> b!5483050 (= e!3393227 (= (content!11215 lt!2239567) z!1189))))

(assert (= (and d!1741273 res!2337854) b!5483050))

(declare-fun m!6498696 () Bool)

(assert (=> d!1741273 m!6498696))

(declare-fun m!6498698 () Bool)

(assert (=> d!1741273 m!6498698))

(declare-fun m!6498700 () Bool)

(assert (=> b!5483050 m!6498700))

(assert (=> b!5482747 d!1741273))

(declare-fun b!5483051 () Bool)

(declare-fun e!3393230 () Bool)

(assert (=> b!5483051 (= e!3393230 (= (head!11744 (_1!35875 lt!2239508)) (c!957957 (reg!15704 r!7292))))))

(declare-fun b!5483052 () Bool)

(declare-fun e!3393232 () Bool)

(declare-fun e!3393234 () Bool)

(assert (=> b!5483052 (= e!3393232 e!3393234)))

(declare-fun res!2337857 () Bool)

(assert (=> b!5483052 (=> (not res!2337857) (not e!3393234))))

(declare-fun lt!2239568 () Bool)

(assert (=> b!5483052 (= res!2337857 (not lt!2239568))))

(declare-fun b!5483053 () Bool)

(declare-fun res!2337859 () Bool)

(assert (=> b!5483053 (=> (not res!2337859) (not e!3393230))))

(declare-fun call!404602 () Bool)

(assert (=> b!5483053 (= res!2337859 (not call!404602))))

(declare-fun b!5483054 () Bool)

(declare-fun res!2337860 () Bool)

(assert (=> b!5483054 (=> res!2337860 e!3393232)))

(assert (=> b!5483054 (= res!2337860 e!3393230)))

(declare-fun res!2337856 () Bool)

(assert (=> b!5483054 (=> (not res!2337856) (not e!3393230))))

(assert (=> b!5483054 (= res!2337856 lt!2239568)))

(declare-fun bm!404597 () Bool)

(assert (=> bm!404597 (= call!404602 (isEmpty!34246 (_1!35875 lt!2239508)))))

(declare-fun b!5483056 () Bool)

(declare-fun e!3393231 () Bool)

(assert (=> b!5483056 (= e!3393231 (not (= (head!11744 (_1!35875 lt!2239508)) (c!957957 (reg!15704 r!7292)))))))

(declare-fun b!5483057 () Bool)

(assert (=> b!5483057 (= e!3393234 e!3393231)))

(declare-fun res!2337862 () Bool)

(assert (=> b!5483057 (=> res!2337862 e!3393231)))

(assert (=> b!5483057 (= res!2337862 call!404602)))

(declare-fun b!5483058 () Bool)

(declare-fun e!3393233 () Bool)

(assert (=> b!5483058 (= e!3393233 (not lt!2239568))))

(declare-fun b!5483059 () Bool)

(declare-fun e!3393229 () Bool)

(assert (=> b!5483059 (= e!3393229 (= lt!2239568 call!404602))))

(declare-fun b!5483055 () Bool)

(declare-fun res!2337861 () Bool)

(assert (=> b!5483055 (=> res!2337861 e!3393231)))

(assert (=> b!5483055 (= res!2337861 (not (isEmpty!34246 (tail!10841 (_1!35875 lt!2239508)))))))

(declare-fun d!1741277 () Bool)

(assert (=> d!1741277 e!3393229))

(declare-fun c!958028 () Bool)

(assert (=> d!1741277 (= c!958028 ((_ is EmptyExpr!15375) (reg!15704 r!7292)))))

(declare-fun e!3393228 () Bool)

(assert (=> d!1741277 (= lt!2239568 e!3393228)))

(declare-fun c!958030 () Bool)

(assert (=> d!1741277 (= c!958030 (isEmpty!34246 (_1!35875 lt!2239508)))))

(assert (=> d!1741277 (validRegex!7111 (reg!15704 r!7292))))

(assert (=> d!1741277 (= (matchR!7560 (reg!15704 r!7292) (_1!35875 lt!2239508)) lt!2239568)))

(declare-fun b!5483060 () Bool)

(assert (=> b!5483060 (= e!3393228 (nullable!5489 (reg!15704 r!7292)))))

(declare-fun b!5483061 () Bool)

(declare-fun res!2337855 () Bool)

(assert (=> b!5483061 (=> (not res!2337855) (not e!3393230))))

(assert (=> b!5483061 (= res!2337855 (isEmpty!34246 (tail!10841 (_1!35875 lt!2239508))))))

(declare-fun b!5483062 () Bool)

(assert (=> b!5483062 (= e!3393229 e!3393233)))

(declare-fun c!958029 () Bool)

(assert (=> b!5483062 (= c!958029 ((_ is EmptyLang!15375) (reg!15704 r!7292)))))

(declare-fun b!5483063 () Bool)

(declare-fun res!2337858 () Bool)

(assert (=> b!5483063 (=> res!2337858 e!3393232)))

(assert (=> b!5483063 (= res!2337858 (not ((_ is ElementMatch!15375) (reg!15704 r!7292))))))

(assert (=> b!5483063 (= e!3393233 e!3393232)))

(declare-fun b!5483064 () Bool)

(assert (=> b!5483064 (= e!3393228 (matchR!7560 (derivativeStep!4334 (reg!15704 r!7292) (head!11744 (_1!35875 lt!2239508))) (tail!10841 (_1!35875 lt!2239508))))))

(assert (= (and d!1741277 c!958030) b!5483060))

(assert (= (and d!1741277 (not c!958030)) b!5483064))

(assert (= (and d!1741277 c!958028) b!5483059))

(assert (= (and d!1741277 (not c!958028)) b!5483062))

(assert (= (and b!5483062 c!958029) b!5483058))

(assert (= (and b!5483062 (not c!958029)) b!5483063))

(assert (= (and b!5483063 (not res!2337858)) b!5483054))

(assert (= (and b!5483054 res!2337856) b!5483053))

(assert (= (and b!5483053 res!2337859) b!5483061))

(assert (= (and b!5483061 res!2337855) b!5483051))

(assert (= (and b!5483054 (not res!2337860)) b!5483052))

(assert (= (and b!5483052 res!2337857) b!5483057))

(assert (= (and b!5483057 (not res!2337862)) b!5483055))

(assert (= (and b!5483055 (not res!2337861)) b!5483056))

(assert (= (or b!5483059 b!5483053 b!5483057) bm!404597))

(declare-fun m!6498702 () Bool)

(assert (=> bm!404597 m!6498702))

(declare-fun m!6498704 () Bool)

(assert (=> b!5483064 m!6498704))

(assert (=> b!5483064 m!6498704))

(declare-fun m!6498706 () Bool)

(assert (=> b!5483064 m!6498706))

(declare-fun m!6498708 () Bool)

(assert (=> b!5483064 m!6498708))

(assert (=> b!5483064 m!6498706))

(assert (=> b!5483064 m!6498708))

(declare-fun m!6498710 () Bool)

(assert (=> b!5483064 m!6498710))

(assert (=> b!5483051 m!6498704))

(assert (=> b!5483056 m!6498704))

(assert (=> b!5483055 m!6498708))

(assert (=> b!5483055 m!6498708))

(declare-fun m!6498712 () Bool)

(assert (=> b!5483055 m!6498712))

(assert (=> b!5483061 m!6498708))

(assert (=> b!5483061 m!6498708))

(assert (=> b!5483061 m!6498712))

(assert (=> b!5483060 m!6498500))

(assert (=> d!1741277 m!6498702))

(assert (=> d!1741277 m!6498364))

(assert (=> b!5482768 d!1741277))

(declare-fun d!1741279 () Bool)

(declare-fun c!958031 () Bool)

(assert (=> d!1741279 (= c!958031 (isEmpty!34246 lt!2239488))))

(declare-fun e!3393235 () Bool)

(assert (=> d!1741279 (= (matchZipper!1593 (store ((as const (Array Context!9518 Bool)) false) (Context!9519 (++!13723 lt!2239483 lt!2239477)) true) lt!2239488) e!3393235)))

(declare-fun b!5483065 () Bool)

(assert (=> b!5483065 (= e!3393235 (nullableZipper!1510 (store ((as const (Array Context!9518 Bool)) false) (Context!9519 (++!13723 lt!2239483 lt!2239477)) true)))))

(declare-fun b!5483066 () Bool)

(assert (=> b!5483066 (= e!3393235 (matchZipper!1593 (derivationStepZipper!1570 (store ((as const (Array Context!9518 Bool)) false) (Context!9519 (++!13723 lt!2239483 lt!2239477)) true) (head!11744 lt!2239488)) (tail!10841 lt!2239488)))))

(assert (= (and d!1741279 c!958031) b!5483065))

(assert (= (and d!1741279 (not c!958031)) b!5483066))

(declare-fun m!6498714 () Bool)

(assert (=> d!1741279 m!6498714))

(assert (=> b!5483065 m!6498350))

(declare-fun m!6498716 () Bool)

(assert (=> b!5483065 m!6498716))

(declare-fun m!6498718 () Bool)

(assert (=> b!5483066 m!6498718))

(assert (=> b!5483066 m!6498350))

(assert (=> b!5483066 m!6498718))

(declare-fun m!6498720 () Bool)

(assert (=> b!5483066 m!6498720))

(declare-fun m!6498722 () Bool)

(assert (=> b!5483066 m!6498722))

(assert (=> b!5483066 m!6498720))

(assert (=> b!5483066 m!6498722))

(declare-fun m!6498724 () Bool)

(assert (=> b!5483066 m!6498724))

(assert (=> b!5482768 d!1741279))

(declare-fun d!1741281 () Bool)

(assert (=> d!1741281 (forall!14619 (++!13723 lt!2239483 lt!2239477) lambda!292849)))

(declare-fun lt!2239573 () Unit!155200)

(declare-fun choose!41729 (List!62425 List!62425 Int) Unit!155200)

(assert (=> d!1741281 (= lt!2239573 (choose!41729 lt!2239483 lt!2239477 lambda!292849))))

(assert (=> d!1741281 (forall!14619 lt!2239483 lambda!292849)))

(assert (=> d!1741281 (= (lemmaConcatPreservesForall!276 lt!2239483 lt!2239477 lambda!292849) lt!2239573)))

(declare-fun bs!1266755 () Bool)

(assert (= bs!1266755 d!1741281))

(assert (=> bs!1266755 m!6498354))

(assert (=> bs!1266755 m!6498354))

(declare-fun m!6498726 () Bool)

(assert (=> bs!1266755 m!6498726))

(declare-fun m!6498728 () Bool)

(assert (=> bs!1266755 m!6498728))

(declare-fun m!6498730 () Bool)

(assert (=> bs!1266755 m!6498730))

(assert (=> b!5482768 d!1741281))

(declare-fun b!5483087 () Bool)

(declare-fun e!3393250 () Bool)

(assert (=> b!5483087 (= e!3393250 (= (head!11744 (_2!35875 lt!2239508)) (c!957957 r!7292)))))

(declare-fun b!5483088 () Bool)

(declare-fun e!3393252 () Bool)

(declare-fun e!3393254 () Bool)

(assert (=> b!5483088 (= e!3393252 e!3393254)))

(declare-fun res!2337869 () Bool)

(assert (=> b!5483088 (=> (not res!2337869) (not e!3393254))))

(declare-fun lt!2239574 () Bool)

(assert (=> b!5483088 (= res!2337869 (not lt!2239574))))

(declare-fun b!5483089 () Bool)

(declare-fun res!2337871 () Bool)

(assert (=> b!5483089 (=> (not res!2337871) (not e!3393250))))

(declare-fun call!404603 () Bool)

(assert (=> b!5483089 (= res!2337871 (not call!404603))))

(declare-fun b!5483090 () Bool)

(declare-fun res!2337872 () Bool)

(assert (=> b!5483090 (=> res!2337872 e!3393252)))

(assert (=> b!5483090 (= res!2337872 e!3393250)))

(declare-fun res!2337868 () Bool)

(assert (=> b!5483090 (=> (not res!2337868) (not e!3393250))))

(assert (=> b!5483090 (= res!2337868 lt!2239574)))

(declare-fun bm!404598 () Bool)

(assert (=> bm!404598 (= call!404603 (isEmpty!34246 (_2!35875 lt!2239508)))))

(declare-fun b!5483092 () Bool)

(declare-fun e!3393251 () Bool)

(assert (=> b!5483092 (= e!3393251 (not (= (head!11744 (_2!35875 lt!2239508)) (c!957957 r!7292))))))

(declare-fun b!5483093 () Bool)

(assert (=> b!5483093 (= e!3393254 e!3393251)))

(declare-fun res!2337874 () Bool)

(assert (=> b!5483093 (=> res!2337874 e!3393251)))

(assert (=> b!5483093 (= res!2337874 call!404603)))

(declare-fun b!5483094 () Bool)

(declare-fun e!3393253 () Bool)

(assert (=> b!5483094 (= e!3393253 (not lt!2239574))))

(declare-fun b!5483095 () Bool)

(declare-fun e!3393249 () Bool)

(assert (=> b!5483095 (= e!3393249 (= lt!2239574 call!404603))))

(declare-fun b!5483091 () Bool)

(declare-fun res!2337873 () Bool)

(assert (=> b!5483091 (=> res!2337873 e!3393251)))

(assert (=> b!5483091 (= res!2337873 (not (isEmpty!34246 (tail!10841 (_2!35875 lt!2239508)))))))

(declare-fun d!1741283 () Bool)

(assert (=> d!1741283 e!3393249))

(declare-fun c!958040 () Bool)

(assert (=> d!1741283 (= c!958040 ((_ is EmptyExpr!15375) r!7292))))

(declare-fun e!3393248 () Bool)

(assert (=> d!1741283 (= lt!2239574 e!3393248)))

(declare-fun c!958042 () Bool)

(assert (=> d!1741283 (= c!958042 (isEmpty!34246 (_2!35875 lt!2239508)))))

(assert (=> d!1741283 (validRegex!7111 r!7292)))

(assert (=> d!1741283 (= (matchR!7560 r!7292 (_2!35875 lt!2239508)) lt!2239574)))

(declare-fun b!5483096 () Bool)

(assert (=> b!5483096 (= e!3393248 (nullable!5489 r!7292))))

(declare-fun b!5483097 () Bool)

(declare-fun res!2337867 () Bool)

(assert (=> b!5483097 (=> (not res!2337867) (not e!3393250))))

(assert (=> b!5483097 (= res!2337867 (isEmpty!34246 (tail!10841 (_2!35875 lt!2239508))))))

(declare-fun b!5483098 () Bool)

(assert (=> b!5483098 (= e!3393249 e!3393253)))

(declare-fun c!958041 () Bool)

(assert (=> b!5483098 (= c!958041 ((_ is EmptyLang!15375) r!7292))))

(declare-fun b!5483099 () Bool)

(declare-fun res!2337870 () Bool)

(assert (=> b!5483099 (=> res!2337870 e!3393252)))

(assert (=> b!5483099 (= res!2337870 (not ((_ is ElementMatch!15375) r!7292)))))

(assert (=> b!5483099 (= e!3393253 e!3393252)))

(declare-fun b!5483100 () Bool)

(assert (=> b!5483100 (= e!3393248 (matchR!7560 (derivativeStep!4334 r!7292 (head!11744 (_2!35875 lt!2239508))) (tail!10841 (_2!35875 lt!2239508))))))

(assert (= (and d!1741283 c!958042) b!5483096))

(assert (= (and d!1741283 (not c!958042)) b!5483100))

(assert (= (and d!1741283 c!958040) b!5483095))

(assert (= (and d!1741283 (not c!958040)) b!5483098))

(assert (= (and b!5483098 c!958041) b!5483094))

(assert (= (and b!5483098 (not c!958041)) b!5483099))

(assert (= (and b!5483099 (not res!2337870)) b!5483090))

(assert (= (and b!5483090 res!2337868) b!5483089))

(assert (= (and b!5483089 res!2337871) b!5483097))

(assert (= (and b!5483097 res!2337867) b!5483087))

(assert (= (and b!5483090 (not res!2337872)) b!5483088))

(assert (= (and b!5483088 res!2337869) b!5483093))

(assert (= (and b!5483093 (not res!2337874)) b!5483091))

(assert (= (and b!5483091 (not res!2337873)) b!5483092))

(assert (= (or b!5483095 b!5483089 b!5483093) bm!404598))

(assert (=> bm!404598 m!6498602))

(assert (=> b!5483100 m!6498606))

(assert (=> b!5483100 m!6498606))

(declare-fun m!6498732 () Bool)

(assert (=> b!5483100 m!6498732))

(assert (=> b!5483100 m!6498610))

(assert (=> b!5483100 m!6498732))

(assert (=> b!5483100 m!6498610))

(declare-fun m!6498734 () Bool)

(assert (=> b!5483100 m!6498734))

(assert (=> b!5483087 m!6498606))

(assert (=> b!5483092 m!6498606))

(assert (=> b!5483091 m!6498610))

(assert (=> b!5483091 m!6498610))

(declare-fun m!6498736 () Bool)

(assert (=> b!5483091 m!6498736))

(assert (=> b!5483097 m!6498610))

(assert (=> b!5483097 m!6498610))

(assert (=> b!5483097 m!6498736))

(assert (=> b!5483096 m!6498574))

(assert (=> d!1741283 m!6498602))

(assert (=> d!1741283 m!6498458))

(assert (=> b!5482768 d!1741283))

(declare-fun d!1741285 () Bool)

(assert (=> d!1741285 (= (matchR!7560 r!7292 (_2!35875 lt!2239508)) (matchZipper!1593 lt!2239490 (_2!35875 lt!2239508)))))

(declare-fun lt!2239580 () Unit!155200)

(declare-fun choose!41730 ((InoxSet Context!9518) List!62426 Regex!15375 List!62424) Unit!155200)

(assert (=> d!1741285 (= lt!2239580 (choose!41730 lt!2239490 lt!2239473 r!7292 (_2!35875 lt!2239508)))))

(assert (=> d!1741285 (validRegex!7111 r!7292)))

(assert (=> d!1741285 (= (theoremZipperRegexEquiv!583 lt!2239490 lt!2239473 r!7292 (_2!35875 lt!2239508)) lt!2239580)))

(declare-fun bs!1266757 () Bool)

(assert (= bs!1266757 d!1741285))

(assert (=> bs!1266757 m!6498366))

(assert (=> bs!1266757 m!6498342))

(declare-fun m!6498758 () Bool)

(assert (=> bs!1266757 m!6498758))

(assert (=> bs!1266757 m!6498458))

(assert (=> b!5482768 d!1741285))

(declare-fun bs!1266760 () Bool)

(declare-fun d!1741289 () Bool)

(assert (= bs!1266760 (and d!1741289 b!5482753)))

(declare-fun lambda!292891 () Int)

(assert (=> bs!1266760 (= lambda!292891 lambda!292849)))

(declare-fun bs!1266761 () Bool)

(assert (= bs!1266761 (and d!1741289 d!1741217)))

(assert (=> bs!1266761 (= lambda!292891 lambda!292858)))

(declare-fun bs!1266762 () Bool)

(assert (= bs!1266762 (and d!1741289 d!1741271)))

(assert (=> bs!1266762 (= lambda!292891 lambda!292880)))

(assert (=> d!1741289 (matchZipper!1593 (store ((as const (Array Context!9518 Bool)) false) (Context!9519 (++!13723 (exprs!5259 lt!2239485) (exprs!5259 lt!2239503))) true) (++!13724 (_1!35875 lt!2239508) (_2!35875 lt!2239508)))))

(declare-fun lt!2239589 () Unit!155200)

(assert (=> d!1741289 (= lt!2239589 (lemmaConcatPreservesForall!276 (exprs!5259 lt!2239485) (exprs!5259 lt!2239503) lambda!292891))))

(declare-fun lt!2239588 () Unit!155200)

(declare-fun choose!41731 (Context!9518 Context!9518 List!62424 List!62424) Unit!155200)

(assert (=> d!1741289 (= lt!2239588 (choose!41731 lt!2239485 lt!2239503 (_1!35875 lt!2239508) (_2!35875 lt!2239508)))))

(assert (=> d!1741289 (matchZipper!1593 (store ((as const (Array Context!9518 Bool)) false) lt!2239485 true) (_1!35875 lt!2239508))))

(assert (=> d!1741289 (= (lemmaConcatenateContextMatchesConcatOfStrings!116 lt!2239485 lt!2239503 (_1!35875 lt!2239508) (_2!35875 lt!2239508)) lt!2239588)))

(declare-fun bs!1266763 () Bool)

(assert (= bs!1266763 d!1741289))

(declare-fun m!6498764 () Bool)

(assert (=> bs!1266763 m!6498764))

(declare-fun m!6498766 () Bool)

(assert (=> bs!1266763 m!6498766))

(declare-fun m!6498768 () Bool)

(assert (=> bs!1266763 m!6498768))

(assert (=> bs!1266763 m!6498444))

(declare-fun m!6498770 () Bool)

(assert (=> bs!1266763 m!6498770))

(assert (=> bs!1266763 m!6498384))

(assert (=> bs!1266763 m!6498444))

(assert (=> bs!1266763 m!6498768))

(assert (=> bs!1266763 m!6498384))

(declare-fun m!6498772 () Bool)

(assert (=> bs!1266763 m!6498772))

(declare-fun m!6498774 () Bool)

(assert (=> bs!1266763 m!6498774))

(assert (=> b!5482768 d!1741289))

(declare-fun bm!404599 () Bool)

(declare-fun call!404606 () Bool)

(declare-fun call!404605 () Bool)

(assert (=> bm!404599 (= call!404606 call!404605)))

(declare-fun b!5483137 () Bool)

(declare-fun e!3393282 () Bool)

(declare-fun e!3393280 () Bool)

(assert (=> b!5483137 (= e!3393282 e!3393280)))

(declare-fun c!958059 () Bool)

(assert (=> b!5483137 (= c!958059 ((_ is Star!15375) (reg!15704 r!7292)))))

(declare-fun b!5483138 () Bool)

(declare-fun res!2337885 () Bool)

(declare-fun e!3393276 () Bool)

(assert (=> b!5483138 (=> res!2337885 e!3393276)))

(assert (=> b!5483138 (= res!2337885 (not ((_ is Concat!24220) (reg!15704 r!7292))))))

(declare-fun e!3393278 () Bool)

(assert (=> b!5483138 (= e!3393278 e!3393276)))

(declare-fun b!5483139 () Bool)

(assert (=> b!5483139 (= e!3393280 e!3393278)))

(declare-fun c!958058 () Bool)

(assert (=> b!5483139 (= c!958058 ((_ is Union!15375) (reg!15704 r!7292)))))

(declare-fun d!1741293 () Bool)

(declare-fun res!2337881 () Bool)

(assert (=> d!1741293 (=> res!2337881 e!3393282)))

(assert (=> d!1741293 (= res!2337881 ((_ is ElementMatch!15375) (reg!15704 r!7292)))))

(assert (=> d!1741293 (= (validRegex!7111 (reg!15704 r!7292)) e!3393282)))

(declare-fun b!5483140 () Bool)

(declare-fun e!3393277 () Bool)

(assert (=> b!5483140 (= e!3393277 call!404605)))

(declare-fun b!5483141 () Bool)

(declare-fun res!2337883 () Bool)

(declare-fun e!3393279 () Bool)

(assert (=> b!5483141 (=> (not res!2337883) (not e!3393279))))

(assert (=> b!5483141 (= res!2337883 call!404606)))

(assert (=> b!5483141 (= e!3393278 e!3393279)))

(declare-fun b!5483142 () Bool)

(declare-fun e!3393281 () Bool)

(declare-fun call!404604 () Bool)

(assert (=> b!5483142 (= e!3393281 call!404604)))

(declare-fun b!5483143 () Bool)

(assert (=> b!5483143 (= e!3393276 e!3393281)))

(declare-fun res!2337884 () Bool)

(assert (=> b!5483143 (=> (not res!2337884) (not e!3393281))))

(assert (=> b!5483143 (= res!2337884 call!404606)))

(declare-fun b!5483144 () Bool)

(assert (=> b!5483144 (= e!3393279 call!404604)))

(declare-fun bm!404600 () Bool)

(assert (=> bm!404600 (= call!404604 (validRegex!7111 (ite c!958058 (regTwo!31263 (reg!15704 r!7292)) (regTwo!31262 (reg!15704 r!7292)))))))

(declare-fun b!5483145 () Bool)

(assert (=> b!5483145 (= e!3393280 e!3393277)))

(declare-fun res!2337882 () Bool)

(assert (=> b!5483145 (= res!2337882 (not (nullable!5489 (reg!15704 (reg!15704 r!7292)))))))

(assert (=> b!5483145 (=> (not res!2337882) (not e!3393277))))

(declare-fun bm!404601 () Bool)

(assert (=> bm!404601 (= call!404605 (validRegex!7111 (ite c!958059 (reg!15704 (reg!15704 r!7292)) (ite c!958058 (regOne!31263 (reg!15704 r!7292)) (regOne!31262 (reg!15704 r!7292))))))))

(assert (= (and d!1741293 (not res!2337881)) b!5483137))

(assert (= (and b!5483137 c!958059) b!5483145))

(assert (= (and b!5483137 (not c!958059)) b!5483139))

(assert (= (and b!5483145 res!2337882) b!5483140))

(assert (= (and b!5483139 c!958058) b!5483141))

(assert (= (and b!5483139 (not c!958058)) b!5483138))

(assert (= (and b!5483141 res!2337883) b!5483144))

(assert (= (and b!5483138 (not res!2337885)) b!5483143))

(assert (= (and b!5483143 res!2337884) b!5483142))

(assert (= (or b!5483144 b!5483142) bm!404600))

(assert (= (or b!5483141 b!5483143) bm!404599))

(assert (= (or b!5483140 bm!404599) bm!404601))

(declare-fun m!6498776 () Bool)

(assert (=> bm!404600 m!6498776))

(declare-fun m!6498778 () Bool)

(assert (=> b!5483145 m!6498778))

(declare-fun m!6498780 () Bool)

(assert (=> bm!404601 m!6498780))

(assert (=> b!5482768 d!1741293))

(declare-fun b!5483168 () Bool)

(declare-fun e!3393296 () List!62425)

(assert (=> b!5483168 (= e!3393296 lt!2239477)))

(declare-fun b!5483170 () Bool)

(declare-fun res!2337892 () Bool)

(declare-fun e!3393295 () Bool)

(assert (=> b!5483170 (=> (not res!2337892) (not e!3393295))))

(declare-fun lt!2239594 () List!62425)

(declare-fun size!39921 (List!62425) Int)

(assert (=> b!5483170 (= res!2337892 (= (size!39921 lt!2239594) (+ (size!39921 lt!2239483) (size!39921 lt!2239477))))))

(declare-fun d!1741295 () Bool)

(assert (=> d!1741295 e!3393295))

(declare-fun res!2337893 () Bool)

(assert (=> d!1741295 (=> (not res!2337893) (not e!3393295))))

(declare-fun content!11216 (List!62425) (InoxSet Regex!15375))

(assert (=> d!1741295 (= res!2337893 (= (content!11216 lt!2239594) ((_ map or) (content!11216 lt!2239483) (content!11216 lt!2239477))))))

(assert (=> d!1741295 (= lt!2239594 e!3393296)))

(declare-fun c!958068 () Bool)

(assert (=> d!1741295 (= c!958068 ((_ is Nil!62301) lt!2239483))))

(assert (=> d!1741295 (= (++!13723 lt!2239483 lt!2239477) lt!2239594)))

(declare-fun b!5483171 () Bool)

(assert (=> b!5483171 (= e!3393295 (or (not (= lt!2239477 Nil!62301)) (= lt!2239594 lt!2239483)))))

(declare-fun b!5483169 () Bool)

(assert (=> b!5483169 (= e!3393296 (Cons!62301 (h!68749 lt!2239483) (++!13723 (t!375656 lt!2239483) lt!2239477)))))

(assert (= (and d!1741295 c!958068) b!5483168))

(assert (= (and d!1741295 (not c!958068)) b!5483169))

(assert (= (and d!1741295 res!2337893) b!5483170))

(assert (= (and b!5483170 res!2337892) b!5483171))

(declare-fun m!6498808 () Bool)

(assert (=> b!5483170 m!6498808))

(declare-fun m!6498810 () Bool)

(assert (=> b!5483170 m!6498810))

(declare-fun m!6498812 () Bool)

(assert (=> b!5483170 m!6498812))

(declare-fun m!6498814 () Bool)

(assert (=> d!1741295 m!6498814))

(declare-fun m!6498816 () Bool)

(assert (=> d!1741295 m!6498816))

(declare-fun m!6498818 () Bool)

(assert (=> d!1741295 m!6498818))

(declare-fun m!6498820 () Bool)

(assert (=> b!5483169 m!6498820))

(assert (=> b!5482768 d!1741295))

(declare-fun d!1741301 () Bool)

(assert (=> d!1741301 (= (matchR!7560 (reg!15704 r!7292) (_1!35875 lt!2239508)) (matchZipper!1593 lt!2239496 (_1!35875 lt!2239508)))))

(declare-fun lt!2239595 () Unit!155200)

(assert (=> d!1741301 (= lt!2239595 (choose!41730 lt!2239496 lt!2239502 (reg!15704 r!7292) (_1!35875 lt!2239508)))))

(assert (=> d!1741301 (validRegex!7111 (reg!15704 r!7292))))

(assert (=> d!1741301 (= (theoremZipperRegexEquiv!583 lt!2239496 lt!2239502 (reg!15704 r!7292) (_1!35875 lt!2239508)) lt!2239595)))

(declare-fun bs!1266768 () Bool)

(assert (= bs!1266768 d!1741301))

(assert (=> bs!1266768 m!6498358))

(assert (=> bs!1266768 m!6498356))

(declare-fun m!6498832 () Bool)

(assert (=> bs!1266768 m!6498832))

(assert (=> bs!1266768 m!6498364))

(assert (=> b!5482768 d!1741301))

(declare-fun d!1741305 () Bool)

(assert (=> d!1741305 (= (flatMap!1078 z!1189 lambda!292847) (choose!41724 z!1189 lambda!292847))))

(declare-fun bs!1266769 () Bool)

(assert (= bs!1266769 d!1741305))

(declare-fun m!6498840 () Bool)

(assert (=> bs!1266769 m!6498840))

(assert (=> b!5482748 d!1741305))

(declare-fun e!3393300 () (InoxSet Context!9518))

(declare-fun b!5483176 () Bool)

(declare-fun call!404607 () (InoxSet Context!9518))

(assert (=> b!5483176 (= e!3393300 ((_ map or) call!404607 (derivationStepZipperUp!727 (Context!9519 (t!375656 (exprs!5259 (h!68750 zl!343)))) (h!68748 s!2326))))))

(declare-fun bm!404602 () Bool)

(assert (=> bm!404602 (= call!404607 (derivationStepZipperDown!801 (h!68749 (exprs!5259 (h!68750 zl!343))) (Context!9519 (t!375656 (exprs!5259 (h!68750 zl!343)))) (h!68748 s!2326)))))

(declare-fun b!5483177 () Bool)

(declare-fun e!3393299 () (InoxSet Context!9518))

(assert (=> b!5483177 (= e!3393299 ((as const (Array Context!9518 Bool)) false))))

(declare-fun b!5483178 () Bool)

(assert (=> b!5483178 (= e!3393300 e!3393299)))

(declare-fun c!958072 () Bool)

(assert (=> b!5483178 (= c!958072 ((_ is Cons!62301) (exprs!5259 (h!68750 zl!343))))))

(declare-fun d!1741307 () Bool)

(declare-fun c!958071 () Bool)

(declare-fun e!3393301 () Bool)

(assert (=> d!1741307 (= c!958071 e!3393301)))

(declare-fun res!2337894 () Bool)

(assert (=> d!1741307 (=> (not res!2337894) (not e!3393301))))

(assert (=> d!1741307 (= res!2337894 ((_ is Cons!62301) (exprs!5259 (h!68750 zl!343))))))

(assert (=> d!1741307 (= (derivationStepZipperUp!727 (h!68750 zl!343) (h!68748 s!2326)) e!3393300)))

(declare-fun b!5483179 () Bool)

(assert (=> b!5483179 (= e!3393301 (nullable!5489 (h!68749 (exprs!5259 (h!68750 zl!343)))))))

(declare-fun b!5483180 () Bool)

(assert (=> b!5483180 (= e!3393299 call!404607)))

(assert (= (and d!1741307 res!2337894) b!5483179))

(assert (= (and d!1741307 c!958071) b!5483176))

(assert (= (and d!1741307 (not c!958071)) b!5483178))

(assert (= (and b!5483178 c!958072) b!5483180))

(assert (= (and b!5483178 (not c!958072)) b!5483177))

(assert (= (or b!5483176 b!5483180) bm!404602))

(declare-fun m!6498848 () Bool)

(assert (=> b!5483176 m!6498848))

(declare-fun m!6498850 () Bool)

(assert (=> bm!404602 m!6498850))

(declare-fun m!6498852 () Bool)

(assert (=> b!5483179 m!6498852))

(assert (=> b!5482748 d!1741307))

(declare-fun d!1741311 () Bool)

(assert (=> d!1741311 (= (flatMap!1078 z!1189 lambda!292847) (dynLambda!24442 lambda!292847 (h!68750 zl!343)))))

(declare-fun lt!2239596 () Unit!155200)

(assert (=> d!1741311 (= lt!2239596 (choose!41725 z!1189 (h!68750 zl!343) lambda!292847))))

(assert (=> d!1741311 (= z!1189 (store ((as const (Array Context!9518 Bool)) false) (h!68750 zl!343) true))))

(assert (=> d!1741311 (= (lemmaFlatMapOnSingletonSet!610 z!1189 (h!68750 zl!343) lambda!292847) lt!2239596)))

(declare-fun b_lambda!208303 () Bool)

(assert (=> (not b_lambda!208303) (not d!1741311)))

(declare-fun bs!1266770 () Bool)

(assert (= bs!1266770 d!1741311))

(assert (=> bs!1266770 m!6498374))

(declare-fun m!6498854 () Bool)

(assert (=> bs!1266770 m!6498854))

(declare-fun m!6498856 () Bool)

(assert (=> bs!1266770 m!6498856))

(declare-fun m!6498858 () Bool)

(assert (=> bs!1266770 m!6498858))

(assert (=> b!5482748 d!1741311))

(declare-fun bs!1266771 () Bool)

(declare-fun d!1741313 () Bool)

(assert (= bs!1266771 (and d!1741313 b!5482753)))

(declare-fun lambda!292893 () Int)

(assert (=> bs!1266771 (= lambda!292893 lambda!292849)))

(declare-fun bs!1266772 () Bool)

(assert (= bs!1266772 (and d!1741313 d!1741217)))

(assert (=> bs!1266772 (= lambda!292893 lambda!292858)))

(declare-fun bs!1266773 () Bool)

(assert (= bs!1266773 (and d!1741313 d!1741271)))

(assert (=> bs!1266773 (= lambda!292893 lambda!292880)))

(declare-fun bs!1266774 () Bool)

(assert (= bs!1266774 (and d!1741313 d!1741289)))

(assert (=> bs!1266774 (= lambda!292893 lambda!292891)))

(assert (=> d!1741313 (= (inv!81684 setElem!36075) (forall!14619 (exprs!5259 setElem!36075) lambda!292893))))

(declare-fun bs!1266775 () Bool)

(assert (= bs!1266775 d!1741313))

(declare-fun m!6498860 () Bool)

(assert (=> bs!1266775 m!6498860))

(assert (=> setNonEmpty!36075 d!1741313))

(declare-fun d!1741315 () Bool)

(declare-fun lt!2239597 () Regex!15375)

(assert (=> d!1741315 (validRegex!7111 lt!2239597)))

(assert (=> d!1741315 (= lt!2239597 (generalisedUnion!1304 (unfocusZipperList!817 zl!343)))))

(assert (=> d!1741315 (= (unfocusZipper!1117 zl!343) lt!2239597)))

(declare-fun bs!1266776 () Bool)

(assert (= bs!1266776 d!1741315))

(declare-fun m!6498862 () Bool)

(assert (=> bs!1266776 m!6498862))

(assert (=> bs!1266776 m!6498416))

(assert (=> bs!1266776 m!6498416))

(assert (=> bs!1266776 m!6498418))

(assert (=> b!5482770 d!1741315))

(declare-fun d!1741317 () Bool)

(declare-fun isEmpty!34251 (Option!15484) Bool)

(assert (=> d!1741317 (= (isDefined!12187 (findConcatSeparation!1898 (reg!15704 r!7292) r!7292 Nil!62300 s!2326 s!2326)) (not (isEmpty!34251 (findConcatSeparation!1898 (reg!15704 r!7292) r!7292 Nil!62300 s!2326 s!2326))))))

(declare-fun bs!1266779 () Bool)

(assert (= bs!1266779 d!1741317))

(assert (=> bs!1266779 m!6498430))

(declare-fun m!6498866 () Bool)

(assert (=> bs!1266779 m!6498866))

(assert (=> b!5482751 d!1741317))

(declare-fun bs!1266780 () Bool)

(declare-fun d!1741321 () Bool)

(assert (= bs!1266780 (and d!1741321 b!5482751)))

(declare-fun lambda!292901 () Int)

(assert (=> bs!1266780 (= lambda!292901 lambda!292844)))

(declare-fun bs!1266781 () Bool)

(assert (= bs!1266781 (and d!1741321 b!5482895)))

(assert (=> bs!1266781 (not (= lambda!292901 lambda!292870))))

(assert (=> bs!1266780 (not (= lambda!292901 lambda!292845))))

(declare-fun bs!1266782 () Bool)

(assert (= bs!1266782 (and d!1741321 b!5482891)))

(assert (=> bs!1266782 (not (= lambda!292901 lambda!292869))))

(assert (=> bs!1266780 (not (= lambda!292901 lambda!292846))))

(assert (=> d!1741321 true))

(assert (=> d!1741321 true))

(assert (=> d!1741321 true))

(declare-fun lambda!292902 () Int)

(assert (=> bs!1266780 (not (= lambda!292902 lambda!292844))))

(declare-fun bs!1266783 () Bool)

(assert (= bs!1266783 d!1741321))

(assert (=> bs!1266783 (not (= lambda!292902 lambda!292901))))

(assert (=> bs!1266781 (= (and (= (reg!15704 r!7292) (regOne!31262 r!7292)) (= r!7292 (regTwo!31262 r!7292))) (= lambda!292902 lambda!292870))))

(assert (=> bs!1266780 (not (= lambda!292902 lambda!292845))))

(assert (=> bs!1266782 (not (= lambda!292902 lambda!292869))))

(assert (=> bs!1266780 (= lambda!292902 lambda!292846)))

(assert (=> d!1741321 true))

(assert (=> d!1741321 true))

(assert (=> d!1741321 true))

(assert (=> d!1741321 (= (Exists!2554 lambda!292901) (Exists!2554 lambda!292902))))

(declare-fun lt!2239600 () Unit!155200)

(declare-fun choose!41733 (Regex!15375 Regex!15375 List!62424) Unit!155200)

(assert (=> d!1741321 (= lt!2239600 (choose!41733 (reg!15704 r!7292) r!7292 s!2326))))

(assert (=> d!1741321 (validRegex!7111 (reg!15704 r!7292))))

(assert (=> d!1741321 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1204 (reg!15704 r!7292) r!7292 s!2326) lt!2239600)))

(declare-fun m!6498876 () Bool)

(assert (=> bs!1266783 m!6498876))

(declare-fun m!6498878 () Bool)

(assert (=> bs!1266783 m!6498878))

(declare-fun m!6498880 () Bool)

(assert (=> bs!1266783 m!6498880))

(assert (=> bs!1266783 m!6498364))

(assert (=> b!5482751 d!1741321))

(declare-fun d!1741325 () Bool)

(assert (=> d!1741325 (= (isEmpty!34246 s!2326) ((_ is Nil!62300) s!2326))))

(assert (=> b!5482751 d!1741325))

(declare-fun d!1741329 () Bool)

(declare-fun choose!41734 (Int) Bool)

(assert (=> d!1741329 (= (Exists!2554 lambda!292846) (choose!41734 lambda!292846))))

(declare-fun bs!1266785 () Bool)

(assert (= bs!1266785 d!1741329))

(declare-fun m!6498884 () Bool)

(assert (=> bs!1266785 m!6498884))

(assert (=> b!5482751 d!1741329))

(declare-fun d!1741331 () Bool)

(assert (=> d!1741331 (= (Exists!2554 lambda!292844) (choose!41734 lambda!292844))))

(declare-fun bs!1266786 () Bool)

(assert (= bs!1266786 d!1741331))

(declare-fun m!6498886 () Bool)

(assert (=> bs!1266786 m!6498886))

(assert (=> b!5482751 d!1741331))

(declare-fun d!1741333 () Bool)

(assert (=> d!1741333 (= (Exists!2554 lambda!292845) (choose!41734 lambda!292845))))

(declare-fun bs!1266787 () Bool)

(assert (= bs!1266787 d!1741333))

(declare-fun m!6498888 () Bool)

(assert (=> bs!1266787 m!6498888))

(assert (=> b!5482751 d!1741333))

(declare-fun bs!1266789 () Bool)

(declare-fun d!1741335 () Bool)

(assert (= bs!1266789 (and d!1741335 d!1741321)))

(declare-fun lambda!292907 () Int)

(assert (=> bs!1266789 (not (= lambda!292907 lambda!292902))))

(declare-fun bs!1266790 () Bool)

(assert (= bs!1266790 (and d!1741335 b!5482751)))

(assert (=> bs!1266790 (= (= (Star!15375 (reg!15704 r!7292)) r!7292) (= lambda!292907 lambda!292844))))

(assert (=> bs!1266789 (= (= (Star!15375 (reg!15704 r!7292)) r!7292) (= lambda!292907 lambda!292901))))

(declare-fun bs!1266791 () Bool)

(assert (= bs!1266791 (and d!1741335 b!5482895)))

(assert (=> bs!1266791 (not (= lambda!292907 lambda!292870))))

(assert (=> bs!1266790 (not (= lambda!292907 lambda!292845))))

(declare-fun bs!1266792 () Bool)

(assert (= bs!1266792 (and d!1741335 b!5482891)))

(assert (=> bs!1266792 (not (= lambda!292907 lambda!292869))))

(assert (=> bs!1266790 (not (= lambda!292907 lambda!292846))))

(assert (=> d!1741335 true))

(assert (=> d!1741335 true))

(declare-fun bs!1266793 () Bool)

(assert (= bs!1266793 d!1741335))

(declare-fun lambda!292908 () Int)

(assert (=> bs!1266793 (not (= lambda!292908 lambda!292907))))

(assert (=> bs!1266789 (not (= lambda!292908 lambda!292902))))

(assert (=> bs!1266790 (not (= lambda!292908 lambda!292844))))

(assert (=> bs!1266789 (not (= lambda!292908 lambda!292901))))

(assert (=> bs!1266791 (not (= lambda!292908 lambda!292870))))

(assert (=> bs!1266790 (= (= (Star!15375 (reg!15704 r!7292)) r!7292) (= lambda!292908 lambda!292845))))

(assert (=> bs!1266792 (= (= (Star!15375 (reg!15704 r!7292)) r!7292) (= lambda!292908 lambda!292869))))

(assert (=> bs!1266790 (not (= lambda!292908 lambda!292846))))

(assert (=> d!1741335 true))

(assert (=> d!1741335 true))

(assert (=> d!1741335 (= (Exists!2554 lambda!292907) (Exists!2554 lambda!292908))))

(declare-fun lt!2239606 () Unit!155200)

(declare-fun choose!41735 (Regex!15375 List!62424) Unit!155200)

(assert (=> d!1741335 (= lt!2239606 (choose!41735 (reg!15704 r!7292) s!2326))))

(assert (=> d!1741335 (validRegex!7111 (reg!15704 r!7292))))

(assert (=> d!1741335 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!528 (reg!15704 r!7292) s!2326) lt!2239606)))

(declare-fun m!6498916 () Bool)

(assert (=> bs!1266793 m!6498916))

(declare-fun m!6498918 () Bool)

(assert (=> bs!1266793 m!6498918))

(declare-fun m!6498920 () Bool)

(assert (=> bs!1266793 m!6498920))

(assert (=> bs!1266793 m!6498364))

(assert (=> b!5482751 d!1741335))

(declare-fun d!1741349 () Bool)

(declare-fun e!3393394 () Bool)

(assert (=> d!1741349 e!3393394))

(declare-fun res!2337963 () Bool)

(assert (=> d!1741349 (=> res!2337963 e!3393394)))

(declare-fun e!3393393 () Bool)

(assert (=> d!1741349 (= res!2337963 e!3393393)))

(declare-fun res!2337962 () Bool)

(assert (=> d!1741349 (=> (not res!2337962) (not e!3393393))))

(declare-fun lt!2239617 () Option!15484)

(assert (=> d!1741349 (= res!2337962 (isDefined!12187 lt!2239617))))

(declare-fun e!3393391 () Option!15484)

(assert (=> d!1741349 (= lt!2239617 e!3393391)))

(declare-fun c!958117 () Bool)

(declare-fun e!3393390 () Bool)

(assert (=> d!1741349 (= c!958117 e!3393390)))

(declare-fun res!2337964 () Bool)

(assert (=> d!1741349 (=> (not res!2337964) (not e!3393390))))

(assert (=> d!1741349 (= res!2337964 (matchR!7560 (reg!15704 r!7292) Nil!62300))))

(assert (=> d!1741349 (validRegex!7111 (reg!15704 r!7292))))

(assert (=> d!1741349 (= (findConcatSeparation!1898 (reg!15704 r!7292) r!7292 Nil!62300 s!2326 s!2326) lt!2239617)))

(declare-fun b!5483333 () Bool)

(declare-fun lt!2239616 () Unit!155200)

(declare-fun lt!2239615 () Unit!155200)

(assert (=> b!5483333 (= lt!2239616 lt!2239615)))

(assert (=> b!5483333 (= (++!13724 (++!13724 Nil!62300 (Cons!62300 (h!68748 s!2326) Nil!62300)) (t!375655 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1909 (List!62424 C!31020 List!62424 List!62424) Unit!155200)

(assert (=> b!5483333 (= lt!2239615 (lemmaMoveElementToOtherListKeepsConcatEq!1909 Nil!62300 (h!68748 s!2326) (t!375655 s!2326) s!2326))))

(declare-fun e!3393392 () Option!15484)

(assert (=> b!5483333 (= e!3393392 (findConcatSeparation!1898 (reg!15704 r!7292) r!7292 (++!13724 Nil!62300 (Cons!62300 (h!68748 s!2326) Nil!62300)) (t!375655 s!2326) s!2326))))

(declare-fun b!5483334 () Bool)

(assert (=> b!5483334 (= e!3393393 (= (++!13724 (_1!35875 (get!21487 lt!2239617)) (_2!35875 (get!21487 lt!2239617))) s!2326))))

(declare-fun b!5483335 () Bool)

(assert (=> b!5483335 (= e!3393391 (Some!15483 (tuple2!65145 Nil!62300 s!2326)))))

(declare-fun b!5483336 () Bool)

(declare-fun res!2337965 () Bool)

(assert (=> b!5483336 (=> (not res!2337965) (not e!3393393))))

(assert (=> b!5483336 (= res!2337965 (matchR!7560 (reg!15704 r!7292) (_1!35875 (get!21487 lt!2239617))))))

(declare-fun b!5483337 () Bool)

(assert (=> b!5483337 (= e!3393394 (not (isDefined!12187 lt!2239617)))))

(declare-fun b!5483338 () Bool)

(declare-fun res!2337961 () Bool)

(assert (=> b!5483338 (=> (not res!2337961) (not e!3393393))))

(assert (=> b!5483338 (= res!2337961 (matchR!7560 r!7292 (_2!35875 (get!21487 lt!2239617))))))

(declare-fun b!5483339 () Bool)

(assert (=> b!5483339 (= e!3393392 None!15483)))

(declare-fun b!5483340 () Bool)

(assert (=> b!5483340 (= e!3393391 e!3393392)))

(declare-fun c!958118 () Bool)

(assert (=> b!5483340 (= c!958118 ((_ is Nil!62300) s!2326))))

(declare-fun b!5483341 () Bool)

(assert (=> b!5483341 (= e!3393390 (matchR!7560 r!7292 s!2326))))

(assert (= (and d!1741349 res!2337964) b!5483341))

(assert (= (and d!1741349 c!958117) b!5483335))

(assert (= (and d!1741349 (not c!958117)) b!5483340))

(assert (= (and b!5483340 c!958118) b!5483339))

(assert (= (and b!5483340 (not c!958118)) b!5483333))

(assert (= (and d!1741349 res!2337962) b!5483336))

(assert (= (and b!5483336 res!2337965) b!5483338))

(assert (= (and b!5483338 res!2337961) b!5483334))

(assert (= (and d!1741349 (not res!2337963)) b!5483337))

(declare-fun m!6498934 () Bool)

(assert (=> b!5483336 m!6498934))

(declare-fun m!6498936 () Bool)

(assert (=> b!5483336 m!6498936))

(assert (=> b!5483338 m!6498934))

(declare-fun m!6498938 () Bool)

(assert (=> b!5483338 m!6498938))

(declare-fun m!6498940 () Bool)

(assert (=> d!1741349 m!6498940))

(declare-fun m!6498942 () Bool)

(assert (=> d!1741349 m!6498942))

(assert (=> d!1741349 m!6498364))

(assert (=> b!5483337 m!6498940))

(declare-fun m!6498944 () Bool)

(assert (=> b!5483333 m!6498944))

(assert (=> b!5483333 m!6498944))

(declare-fun m!6498946 () Bool)

(assert (=> b!5483333 m!6498946))

(declare-fun m!6498948 () Bool)

(assert (=> b!5483333 m!6498948))

(assert (=> b!5483333 m!6498944))

(declare-fun m!6498950 () Bool)

(assert (=> b!5483333 m!6498950))

(assert (=> b!5483341 m!6498408))

(assert (=> b!5483334 m!6498934))

(declare-fun m!6498952 () Bool)

(assert (=> b!5483334 m!6498952))

(assert (=> b!5482751 d!1741349))

(declare-fun bs!1266806 () Bool)

(declare-fun d!1741355 () Bool)

(assert (= bs!1266806 (and d!1741355 d!1741321)))

(declare-fun lambda!292917 () Int)

(assert (=> bs!1266806 (not (= lambda!292917 lambda!292902))))

(declare-fun bs!1266807 () Bool)

(assert (= bs!1266807 (and d!1741355 b!5482751)))

(assert (=> bs!1266807 (= lambda!292917 lambda!292844)))

(assert (=> bs!1266806 (= lambda!292917 lambda!292901)))

(declare-fun bs!1266808 () Bool)

(assert (= bs!1266808 (and d!1741355 b!5482895)))

(assert (=> bs!1266808 (not (= lambda!292917 lambda!292870))))

(declare-fun bs!1266809 () Bool)

(assert (= bs!1266809 (and d!1741355 d!1741335)))

(assert (=> bs!1266809 (not (= lambda!292917 lambda!292908))))

(assert (=> bs!1266809 (= (= r!7292 (Star!15375 (reg!15704 r!7292))) (= lambda!292917 lambda!292907))))

(assert (=> bs!1266807 (not (= lambda!292917 lambda!292845))))

(declare-fun bs!1266810 () Bool)

(assert (= bs!1266810 (and d!1741355 b!5482891)))

(assert (=> bs!1266810 (not (= lambda!292917 lambda!292869))))

(assert (=> bs!1266807 (not (= lambda!292917 lambda!292846))))

(assert (=> d!1741355 true))

(assert (=> d!1741355 true))

(assert (=> d!1741355 true))

(assert (=> d!1741355 (= (isDefined!12187 (findConcatSeparation!1898 (reg!15704 r!7292) r!7292 Nil!62300 s!2326 s!2326)) (Exists!2554 lambda!292917))))

(declare-fun lt!2239620 () Unit!155200)

(declare-fun choose!41736 (Regex!15375 Regex!15375 List!62424) Unit!155200)

(assert (=> d!1741355 (= lt!2239620 (choose!41736 (reg!15704 r!7292) r!7292 s!2326))))

(assert (=> d!1741355 (validRegex!7111 (reg!15704 r!7292))))

(assert (=> d!1741355 (= (lemmaFindConcatSeparationEquivalentToExists!1662 (reg!15704 r!7292) r!7292 s!2326) lt!2239620)))

(declare-fun bs!1266811 () Bool)

(assert (= bs!1266811 d!1741355))

(declare-fun m!6498960 () Bool)

(assert (=> bs!1266811 m!6498960))

(assert (=> bs!1266811 m!6498430))

(declare-fun m!6498962 () Bool)

(assert (=> bs!1266811 m!6498962))

(assert (=> bs!1266811 m!6498430))

(assert (=> bs!1266811 m!6498432))

(assert (=> bs!1266811 m!6498364))

(assert (=> b!5482751 d!1741355))

(declare-fun d!1741359 () Bool)

(declare-fun c!958125 () Bool)

(assert (=> d!1741359 (= c!958125 (isEmpty!34246 (_1!35875 lt!2239508)))))

(declare-fun e!3393406 () Bool)

(assert (=> d!1741359 (= (matchZipper!1593 lt!2239496 (_1!35875 lt!2239508)) e!3393406)))

(declare-fun b!5483361 () Bool)

(assert (=> b!5483361 (= e!3393406 (nullableZipper!1510 lt!2239496))))

(declare-fun b!5483362 () Bool)

(assert (=> b!5483362 (= e!3393406 (matchZipper!1593 (derivationStepZipper!1570 lt!2239496 (head!11744 (_1!35875 lt!2239508))) (tail!10841 (_1!35875 lt!2239508))))))

(assert (= (and d!1741359 c!958125) b!5483361))

(assert (= (and d!1741359 (not c!958125)) b!5483362))

(assert (=> d!1741359 m!6498702))

(declare-fun m!6498964 () Bool)

(assert (=> b!5483361 m!6498964))

(assert (=> b!5483362 m!6498704))

(assert (=> b!5483362 m!6498704))

(declare-fun m!6498966 () Bool)

(assert (=> b!5483362 m!6498966))

(assert (=> b!5483362 m!6498708))

(assert (=> b!5483362 m!6498966))

(assert (=> b!5483362 m!6498708))

(declare-fun m!6498968 () Bool)

(assert (=> b!5483362 m!6498968))

(assert (=> b!5482771 d!1741359))

(assert (=> b!5482753 d!1741281))

(assert (=> b!5482753 d!1741295))

(declare-fun bs!1266812 () Bool)

(declare-fun d!1741361 () Bool)

(assert (= bs!1266812 (and d!1741361 b!5482753)))

(declare-fun lambda!292922 () Int)

(assert (=> bs!1266812 (= (= (exprs!5259 lt!2239503) lt!2239477) (= lambda!292922 lambda!292848))))

(assert (=> d!1741361 true))

(assert (=> d!1741361 (= (appendTo!94 lt!2239496 lt!2239503) (map!14319 lt!2239496 lambda!292922))))

(declare-fun bs!1266813 () Bool)

(assert (= bs!1266813 d!1741361))

(declare-fun m!6498970 () Bool)

(assert (=> bs!1266813 m!6498970))

(assert (=> b!5482753 d!1741361))

(declare-fun d!1741363 () Bool)

(declare-fun choose!41737 ((InoxSet Context!9518) Int) (InoxSet Context!9518))

(assert (=> d!1741363 (= (map!14319 lt!2239496 lambda!292848) (choose!41737 lt!2239496 lambda!292848))))

(declare-fun bs!1266814 () Bool)

(assert (= bs!1266814 d!1741363))

(declare-fun m!6498972 () Bool)

(assert (=> bs!1266814 m!6498972))

(assert (=> b!5482753 d!1741363))

(declare-fun d!1741365 () Bool)

(declare-fun dynLambda!24444 (Int Context!9518) Context!9518)

(assert (=> d!1741365 (= (map!14319 lt!2239496 lambda!292848) (store ((as const (Array Context!9518 Bool)) false) (dynLambda!24444 lambda!292848 lt!2239485) true))))

(declare-fun lt!2239628 () Unit!155200)

(declare-fun choose!41738 ((InoxSet Context!9518) Context!9518 Int) Unit!155200)

(assert (=> d!1741365 (= lt!2239628 (choose!41738 lt!2239496 lt!2239485 lambda!292848))))

(assert (=> d!1741365 (= lt!2239496 (store ((as const (Array Context!9518 Bool)) false) lt!2239485 true))))

(assert (=> d!1741365 (= (lemmaMapOnSingletonSet!106 lt!2239496 lt!2239485 lambda!292848) lt!2239628)))

(declare-fun b_lambda!208309 () Bool)

(assert (=> (not b_lambda!208309) (not d!1741365)))

(declare-fun bs!1266815 () Bool)

(assert (= bs!1266815 d!1741365))

(declare-fun m!6498984 () Bool)

(assert (=> bs!1266815 m!6498984))

(assert (=> bs!1266815 m!6498348))

(declare-fun m!6498986 () Bool)

(assert (=> bs!1266815 m!6498986))

(assert (=> bs!1266815 m!6498984))

(declare-fun m!6498988 () Bool)

(assert (=> bs!1266815 m!6498988))

(assert (=> bs!1266815 m!6498384))

(assert (=> b!5482753 d!1741365))

(declare-fun b!5483466 () Bool)

(declare-fun c!958162 () Bool)

(assert (=> b!5483466 (= c!958162 ((_ is Star!15375) (reg!15704 r!7292)))))

(declare-fun e!3393465 () (InoxSet Context!9518))

(declare-fun e!3393463 () (InoxSet Context!9518))

(assert (=> b!5483466 (= e!3393465 e!3393463)))

(declare-fun b!5483467 () Bool)

(declare-fun e!3393466 () (InoxSet Context!9518))

(declare-fun call!404675 () (InoxSet Context!9518))

(declare-fun call!404671 () (InoxSet Context!9518))

(assert (=> b!5483467 (= e!3393466 ((_ map or) call!404675 call!404671))))

(declare-fun call!404672 () List!62425)

(declare-fun c!958159 () Bool)

(declare-fun bm!404665 () Bool)

(assert (=> bm!404665 (= call!404675 (derivationStepZipperDown!801 (ite c!958159 (regOne!31263 (reg!15704 r!7292)) (regOne!31262 (reg!15704 r!7292))) (ite c!958159 lt!2239503 (Context!9519 call!404672)) (h!68748 s!2326)))))

(declare-fun bm!404666 () Bool)

(declare-fun call!404673 () List!62425)

(assert (=> bm!404666 (= call!404673 call!404672)))

(declare-fun d!1741369 () Bool)

(declare-fun c!958158 () Bool)

(assert (=> d!1741369 (= c!958158 (and ((_ is ElementMatch!15375) (reg!15704 r!7292)) (= (c!957957 (reg!15704 r!7292)) (h!68748 s!2326))))))

(declare-fun e!3393464 () (InoxSet Context!9518))

(assert (=> d!1741369 (= (derivationStepZipperDown!801 (reg!15704 r!7292) lt!2239503 (h!68748 s!2326)) e!3393464)))

(declare-fun b!5483468 () Bool)

(assert (=> b!5483468 (= e!3393463 ((as const (Array Context!9518 Bool)) false))))

(declare-fun bm!404667 () Bool)

(declare-fun call!404674 () (InoxSet Context!9518))

(declare-fun call!404670 () (InoxSet Context!9518))

(assert (=> bm!404667 (= call!404674 call!404670)))

(declare-fun b!5483469 () Bool)

(assert (=> b!5483469 (= e!3393463 call!404674)))

(declare-fun bm!404668 () Bool)

(declare-fun c!958160 () Bool)

(declare-fun c!958161 () Bool)

(assert (=> bm!404668 (= call!404671 (derivationStepZipperDown!801 (ite c!958159 (regTwo!31263 (reg!15704 r!7292)) (ite c!958160 (regTwo!31262 (reg!15704 r!7292)) (ite c!958161 (regOne!31262 (reg!15704 r!7292)) (reg!15704 (reg!15704 r!7292))))) (ite (or c!958159 c!958160) lt!2239503 (Context!9519 call!404673)) (h!68748 s!2326)))))

(declare-fun b!5483470 () Bool)

(assert (=> b!5483470 (= e!3393464 (store ((as const (Array Context!9518 Bool)) false) lt!2239503 true))))

(declare-fun b!5483471 () Bool)

(assert (=> b!5483471 (= e!3393465 call!404674)))

(declare-fun b!5483472 () Bool)

(declare-fun e!3393461 () Bool)

(assert (=> b!5483472 (= c!958160 e!3393461)))

(declare-fun res!2338012 () Bool)

(assert (=> b!5483472 (=> (not res!2338012) (not e!3393461))))

(assert (=> b!5483472 (= res!2338012 ((_ is Concat!24220) (reg!15704 r!7292)))))

(declare-fun e!3393462 () (InoxSet Context!9518))

(assert (=> b!5483472 (= e!3393466 e!3393462)))

(declare-fun b!5483473 () Bool)

(assert (=> b!5483473 (= e!3393461 (nullable!5489 (regOne!31262 (reg!15704 r!7292))))))

(declare-fun b!5483474 () Bool)

(assert (=> b!5483474 (= e!3393462 ((_ map or) call!404675 call!404670))))

(declare-fun bm!404669 () Bool)

(declare-fun $colon$colon!1560 (List!62425 Regex!15375) List!62425)

(assert (=> bm!404669 (= call!404672 ($colon$colon!1560 (exprs!5259 lt!2239503) (ite (or c!958160 c!958161) (regTwo!31262 (reg!15704 r!7292)) (reg!15704 r!7292))))))

(declare-fun b!5483475 () Bool)

(assert (=> b!5483475 (= e!3393464 e!3393466)))

(assert (=> b!5483475 (= c!958159 ((_ is Union!15375) (reg!15704 r!7292)))))

(declare-fun b!5483476 () Bool)

(assert (=> b!5483476 (= e!3393462 e!3393465)))

(assert (=> b!5483476 (= c!958161 ((_ is Concat!24220) (reg!15704 r!7292)))))

(declare-fun bm!404670 () Bool)

(assert (=> bm!404670 (= call!404670 call!404671)))

(assert (= (and d!1741369 c!958158) b!5483470))

(assert (= (and d!1741369 (not c!958158)) b!5483475))

(assert (= (and b!5483475 c!958159) b!5483467))

(assert (= (and b!5483475 (not c!958159)) b!5483472))

(assert (= (and b!5483472 res!2338012) b!5483473))

(assert (= (and b!5483472 c!958160) b!5483474))

(assert (= (and b!5483472 (not c!958160)) b!5483476))

(assert (= (and b!5483476 c!958161) b!5483471))

(assert (= (and b!5483476 (not c!958161)) b!5483466))

(assert (= (and b!5483466 c!958162) b!5483469))

(assert (= (and b!5483466 (not c!958162)) b!5483468))

(assert (= (or b!5483471 b!5483469) bm!404666))

(assert (= (or b!5483471 b!5483469) bm!404667))

(assert (= (or b!5483474 bm!404666) bm!404669))

(assert (= (or b!5483474 bm!404667) bm!404670))

(assert (= (or b!5483467 bm!404670) bm!404668))

(assert (= (or b!5483467 b!5483474) bm!404665))

(declare-fun m!6499024 () Bool)

(assert (=> b!5483473 m!6499024))

(declare-fun m!6499026 () Bool)

(assert (=> bm!404668 m!6499026))

(declare-fun m!6499028 () Bool)

(assert (=> bm!404669 m!6499028))

(declare-fun m!6499030 () Bool)

(assert (=> bm!404665 m!6499030))

(assert (=> b!5483470 m!6498396))

(assert (=> b!5482755 d!1741369))

(declare-fun d!1741387 () Bool)

(assert (=> d!1741387 (= (flatMap!1078 lt!2239501 lambda!292847) (choose!41724 lt!2239501 lambda!292847))))

(declare-fun bs!1266834 () Bool)

(assert (= bs!1266834 d!1741387))

(declare-fun m!6499032 () Bool)

(assert (=> bs!1266834 m!6499032))

(assert (=> b!5482755 d!1741387))

(declare-fun e!3393468 () (InoxSet Context!9518))

(declare-fun b!5483477 () Bool)

(declare-fun call!404676 () (InoxSet Context!9518))

(assert (=> b!5483477 (= e!3393468 ((_ map or) call!404676 (derivationStepZipperUp!727 (Context!9519 (t!375656 (exprs!5259 lt!2239499))) (h!68748 s!2326))))))

(declare-fun bm!404671 () Bool)

(assert (=> bm!404671 (= call!404676 (derivationStepZipperDown!801 (h!68749 (exprs!5259 lt!2239499)) (Context!9519 (t!375656 (exprs!5259 lt!2239499))) (h!68748 s!2326)))))

(declare-fun b!5483478 () Bool)

(declare-fun e!3393467 () (InoxSet Context!9518))

(assert (=> b!5483478 (= e!3393467 ((as const (Array Context!9518 Bool)) false))))

(declare-fun b!5483479 () Bool)

(assert (=> b!5483479 (= e!3393468 e!3393467)))

(declare-fun c!958164 () Bool)

(assert (=> b!5483479 (= c!958164 ((_ is Cons!62301) (exprs!5259 lt!2239499)))))

(declare-fun d!1741389 () Bool)

(declare-fun c!958163 () Bool)

(declare-fun e!3393469 () Bool)

(assert (=> d!1741389 (= c!958163 e!3393469)))

(declare-fun res!2338013 () Bool)

(assert (=> d!1741389 (=> (not res!2338013) (not e!3393469))))

(assert (=> d!1741389 (= res!2338013 ((_ is Cons!62301) (exprs!5259 lt!2239499)))))

(assert (=> d!1741389 (= (derivationStepZipperUp!727 lt!2239499 (h!68748 s!2326)) e!3393468)))

(declare-fun b!5483480 () Bool)

(assert (=> b!5483480 (= e!3393469 (nullable!5489 (h!68749 (exprs!5259 lt!2239499))))))

(declare-fun b!5483481 () Bool)

(assert (=> b!5483481 (= e!3393467 call!404676)))

(assert (= (and d!1741389 res!2338013) b!5483480))

(assert (= (and d!1741389 c!958163) b!5483477))

(assert (= (and d!1741389 (not c!958163)) b!5483479))

(assert (= (and b!5483479 c!958164) b!5483481))

(assert (= (and b!5483479 (not c!958164)) b!5483478))

(assert (= (or b!5483477 b!5483481) bm!404671))

(declare-fun m!6499034 () Bool)

(assert (=> b!5483477 m!6499034))

(declare-fun m!6499036 () Bool)

(assert (=> bm!404671 m!6499036))

(declare-fun m!6499038 () Bool)

(assert (=> b!5483480 m!6499038))

(assert (=> b!5482755 d!1741389))

(declare-fun d!1741391 () Bool)

(assert (=> d!1741391 (= (flatMap!1078 lt!2239501 lambda!292847) (dynLambda!24442 lambda!292847 lt!2239499))))

(declare-fun lt!2239634 () Unit!155200)

(assert (=> d!1741391 (= lt!2239634 (choose!41725 lt!2239501 lt!2239499 lambda!292847))))

(assert (=> d!1741391 (= lt!2239501 (store ((as const (Array Context!9518 Bool)) false) lt!2239499 true))))

(assert (=> d!1741391 (= (lemmaFlatMapOnSingletonSet!610 lt!2239501 lt!2239499 lambda!292847) lt!2239634)))

(declare-fun b_lambda!208311 () Bool)

(assert (=> (not b_lambda!208311) (not d!1741391)))

(declare-fun bs!1266840 () Bool)

(assert (= bs!1266840 d!1741391))

(assert (=> bs!1266840 m!6498462))

(declare-fun m!6499042 () Bool)

(assert (=> bs!1266840 m!6499042))

(declare-fun m!6499044 () Bool)

(assert (=> bs!1266840 m!6499044))

(assert (=> bs!1266840 m!6498464))

(assert (=> b!5482755 d!1741391))

(declare-fun d!1741395 () Bool)

(assert (=> d!1741395 (= (isDefined!12187 lt!2239474) (not (isEmpty!34251 lt!2239474)))))

(declare-fun bs!1266841 () Bool)

(assert (= bs!1266841 d!1741395))

(declare-fun m!6499056 () Bool)

(assert (=> bs!1266841 m!6499056))

(assert (=> b!5482756 d!1741395))

(declare-fun d!1741397 () Bool)

(assert (=> d!1741397 (isDefined!12187 (findConcatSeparationZippers!102 lt!2239496 (store ((as const (Array Context!9518 Bool)) false) lt!2239503 true) Nil!62300 s!2326 s!2326))))

(declare-fun lt!2239643 () Unit!155200)

(declare-fun choose!41742 ((InoxSet Context!9518) Context!9518 List!62424) Unit!155200)

(assert (=> d!1741397 (= lt!2239643 (choose!41742 lt!2239496 lt!2239503 s!2326))))

(assert (=> d!1741397 (matchZipper!1593 (appendTo!94 lt!2239496 lt!2239503) s!2326)))

(assert (=> d!1741397 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!102 lt!2239496 lt!2239503 s!2326) lt!2239643)))

(declare-fun bs!1266845 () Bool)

(assert (= bs!1266845 d!1741397))

(assert (=> bs!1266845 m!6498396))

(declare-fun m!6499074 () Bool)

(assert (=> bs!1266845 m!6499074))

(assert (=> bs!1266845 m!6499074))

(declare-fun m!6499076 () Bool)

(assert (=> bs!1266845 m!6499076))

(declare-fun m!6499078 () Bool)

(assert (=> bs!1266845 m!6499078))

(assert (=> bs!1266845 m!6498352))

(declare-fun m!6499080 () Bool)

(assert (=> bs!1266845 m!6499080))

(assert (=> bs!1266845 m!6498352))

(assert (=> bs!1266845 m!6498396))

(assert (=> b!5482756 d!1741397))

(declare-fun b!5483544 () Bool)

(declare-fun e!3393503 () Bool)

(declare-fun lt!2239660 () Option!15484)

(assert (=> b!5483544 (= e!3393503 (= (++!13724 (_1!35875 (get!21487 lt!2239660)) (_2!35875 (get!21487 lt!2239660))) s!2326))))

(declare-fun b!5483545 () Bool)

(declare-fun e!3393505 () Option!15484)

(assert (=> b!5483545 (= e!3393505 (Some!15483 (tuple2!65145 Nil!62300 s!2326)))))

(declare-fun b!5483546 () Bool)

(declare-fun e!3393504 () Option!15484)

(assert (=> b!5483546 (= e!3393504 None!15483)))

(declare-fun b!5483547 () Bool)

(declare-fun lt!2239659 () Unit!155200)

(declare-fun lt!2239661 () Unit!155200)

(assert (=> b!5483547 (= lt!2239659 lt!2239661)))

(assert (=> b!5483547 (= (++!13724 (++!13724 Nil!62300 (Cons!62300 (h!68748 s!2326) Nil!62300)) (t!375655 s!2326)) s!2326)))

(assert (=> b!5483547 (= lt!2239661 (lemmaMoveElementToOtherListKeepsConcatEq!1909 Nil!62300 (h!68748 s!2326) (t!375655 s!2326) s!2326))))

(assert (=> b!5483547 (= e!3393504 (findConcatSeparationZippers!102 lt!2239496 lt!2239490 (++!13724 Nil!62300 (Cons!62300 (h!68748 s!2326) Nil!62300)) (t!375655 s!2326) s!2326))))

(declare-fun b!5483548 () Bool)

(declare-fun e!3393502 () Bool)

(assert (=> b!5483548 (= e!3393502 (matchZipper!1593 lt!2239490 s!2326))))

(declare-fun d!1741407 () Bool)

(declare-fun e!3393506 () Bool)

(assert (=> d!1741407 e!3393506))

(declare-fun res!2338044 () Bool)

(assert (=> d!1741407 (=> res!2338044 e!3393506)))

(assert (=> d!1741407 (= res!2338044 e!3393503)))

(declare-fun res!2338040 () Bool)

(assert (=> d!1741407 (=> (not res!2338040) (not e!3393503))))

(assert (=> d!1741407 (= res!2338040 (isDefined!12187 lt!2239660))))

(assert (=> d!1741407 (= lt!2239660 e!3393505)))

(declare-fun c!958184 () Bool)

(assert (=> d!1741407 (= c!958184 e!3393502)))

(declare-fun res!2338042 () Bool)

(assert (=> d!1741407 (=> (not res!2338042) (not e!3393502))))

(assert (=> d!1741407 (= res!2338042 (matchZipper!1593 lt!2239496 Nil!62300))))

(assert (=> d!1741407 (= (++!13724 Nil!62300 s!2326) s!2326)))

(assert (=> d!1741407 (= (findConcatSeparationZippers!102 lt!2239496 lt!2239490 Nil!62300 s!2326 s!2326) lt!2239660)))

(declare-fun b!5483549 () Bool)

(assert (=> b!5483549 (= e!3393506 (not (isDefined!12187 lt!2239660)))))

(declare-fun b!5483550 () Bool)

(declare-fun res!2338043 () Bool)

(assert (=> b!5483550 (=> (not res!2338043) (not e!3393503))))

(assert (=> b!5483550 (= res!2338043 (matchZipper!1593 lt!2239496 (_1!35875 (get!21487 lt!2239660))))))

(declare-fun b!5483551 () Bool)

(declare-fun res!2338041 () Bool)

(assert (=> b!5483551 (=> (not res!2338041) (not e!3393503))))

(assert (=> b!5483551 (= res!2338041 (matchZipper!1593 lt!2239490 (_2!35875 (get!21487 lt!2239660))))))

(declare-fun b!5483552 () Bool)

(assert (=> b!5483552 (= e!3393505 e!3393504)))

(declare-fun c!958183 () Bool)

(assert (=> b!5483552 (= c!958183 ((_ is Nil!62300) s!2326))))

(assert (= (and d!1741407 res!2338042) b!5483548))

(assert (= (and d!1741407 c!958184) b!5483545))

(assert (= (and d!1741407 (not c!958184)) b!5483552))

(assert (= (and b!5483552 c!958183) b!5483546))

(assert (= (and b!5483552 (not c!958183)) b!5483547))

(assert (= (and d!1741407 res!2338040) b!5483550))

(assert (= (and b!5483550 res!2338043) b!5483551))

(assert (= (and b!5483551 res!2338041) b!5483544))

(assert (= (and d!1741407 (not res!2338044)) b!5483549))

(declare-fun m!6499160 () Bool)

(assert (=> b!5483549 m!6499160))

(assert (=> d!1741407 m!6499160))

(declare-fun m!6499162 () Bool)

(assert (=> d!1741407 m!6499162))

(declare-fun m!6499164 () Bool)

(assert (=> d!1741407 m!6499164))

(declare-fun m!6499166 () Bool)

(assert (=> b!5483551 m!6499166))

(declare-fun m!6499168 () Bool)

(assert (=> b!5483551 m!6499168))

(declare-fun m!6499170 () Bool)

(assert (=> b!5483548 m!6499170))

(assert (=> b!5483544 m!6499166))

(declare-fun m!6499172 () Bool)

(assert (=> b!5483544 m!6499172))

(assert (=> b!5483550 m!6499166))

(declare-fun m!6499174 () Bool)

(assert (=> b!5483550 m!6499174))

(assert (=> b!5483547 m!6498944))

(assert (=> b!5483547 m!6498944))

(assert (=> b!5483547 m!6498946))

(assert (=> b!5483547 m!6498948))

(assert (=> b!5483547 m!6498944))

(declare-fun m!6499176 () Bool)

(assert (=> b!5483547 m!6499176))

(assert (=> b!5482756 d!1741407))

(declare-fun d!1741435 () Bool)

(assert (=> d!1741435 (= (get!21487 lt!2239474) (v!51512 lt!2239474))))

(assert (=> b!5482756 d!1741435))

(declare-fun b!5483562 () Bool)

(declare-fun e!3393512 () List!62424)

(assert (=> b!5483562 (= e!3393512 (Cons!62300 (h!68748 (_1!35875 lt!2239508)) (++!13724 (t!375655 (_1!35875 lt!2239508)) (_2!35875 lt!2239508))))))

(declare-fun b!5483563 () Bool)

(declare-fun res!2338050 () Bool)

(declare-fun e!3393511 () Bool)

(assert (=> b!5483563 (=> (not res!2338050) (not e!3393511))))

(declare-fun lt!2239670 () List!62424)

(declare-fun size!39923 (List!62424) Int)

(assert (=> b!5483563 (= res!2338050 (= (size!39923 lt!2239670) (+ (size!39923 (_1!35875 lt!2239508)) (size!39923 (_2!35875 lt!2239508)))))))

(declare-fun b!5483561 () Bool)

(assert (=> b!5483561 (= e!3393512 (_2!35875 lt!2239508))))

(declare-fun d!1741437 () Bool)

(assert (=> d!1741437 e!3393511))

(declare-fun res!2338049 () Bool)

(assert (=> d!1741437 (=> (not res!2338049) (not e!3393511))))

(declare-fun content!11218 (List!62424) (InoxSet C!31020))

(assert (=> d!1741437 (= res!2338049 (= (content!11218 lt!2239670) ((_ map or) (content!11218 (_1!35875 lt!2239508)) (content!11218 (_2!35875 lt!2239508)))))))

(assert (=> d!1741437 (= lt!2239670 e!3393512)))

(declare-fun c!958187 () Bool)

(assert (=> d!1741437 (= c!958187 ((_ is Nil!62300) (_1!35875 lt!2239508)))))

(assert (=> d!1741437 (= (++!13724 (_1!35875 lt!2239508) (_2!35875 lt!2239508)) lt!2239670)))

(declare-fun b!5483564 () Bool)

(assert (=> b!5483564 (= e!3393511 (or (not (= (_2!35875 lt!2239508) Nil!62300)) (= lt!2239670 (_1!35875 lt!2239508))))))

(assert (= (and d!1741437 c!958187) b!5483561))

(assert (= (and d!1741437 (not c!958187)) b!5483562))

(assert (= (and d!1741437 res!2338049) b!5483563))

(assert (= (and b!5483563 res!2338050) b!5483564))

(declare-fun m!6499190 () Bool)

(assert (=> b!5483562 m!6499190))

(declare-fun m!6499192 () Bool)

(assert (=> b!5483563 m!6499192))

(declare-fun m!6499194 () Bool)

(assert (=> b!5483563 m!6499194))

(declare-fun m!6499196 () Bool)

(assert (=> b!5483563 m!6499196))

(declare-fun m!6499198 () Bool)

(assert (=> d!1741437 m!6499198))

(declare-fun m!6499200 () Bool)

(assert (=> d!1741437 m!6499200))

(declare-fun m!6499202 () Bool)

(assert (=> d!1741437 m!6499202))

(assert (=> b!5482756 d!1741437))

(declare-fun d!1741441 () Bool)

(declare-fun lt!2239672 () Regex!15375)

(assert (=> d!1741441 (validRegex!7111 lt!2239672)))

(assert (=> d!1741441 (= lt!2239672 (generalisedUnion!1304 (unfocusZipperList!817 lt!2239502)))))

(assert (=> d!1741441 (= (unfocusZipper!1117 lt!2239502) lt!2239672)))

(declare-fun bs!1266863 () Bool)

(assert (= bs!1266863 d!1741441))

(declare-fun m!6499204 () Bool)

(assert (=> bs!1266863 m!6499204))

(declare-fun m!6499206 () Bool)

(assert (=> bs!1266863 m!6499206))

(assert (=> bs!1266863 m!6499206))

(declare-fun m!6499208 () Bool)

(assert (=> bs!1266863 m!6499208))

(assert (=> b!5482758 d!1741441))

(declare-fun d!1741443 () Bool)

(assert (=> d!1741443 (= (isEmpty!34247 (t!375657 zl!343)) ((_ is Nil!62302) (t!375657 zl!343)))))

(assert (=> b!5482759 d!1741443))

(declare-fun bs!1266864 () Bool)

(declare-fun b!5483579 () Bool)

(assert (= bs!1266864 (and b!5483579 d!1741321)))

(declare-fun lambda!292938 () Int)

(assert (=> bs!1266864 (not (= lambda!292938 lambda!292902))))

(declare-fun bs!1266865 () Bool)

(assert (= bs!1266865 (and b!5483579 b!5482751)))

(assert (=> bs!1266865 (not (= lambda!292938 lambda!292844))))

(assert (=> bs!1266864 (not (= lambda!292938 lambda!292901))))

(declare-fun bs!1266866 () Bool)

(assert (= bs!1266866 (and b!5483579 b!5482895)))

(assert (=> bs!1266866 (not (= lambda!292938 lambda!292870))))

(declare-fun bs!1266867 () Bool)

(assert (= bs!1266867 (and b!5483579 d!1741355)))

(assert (=> bs!1266867 (not (= lambda!292938 lambda!292917))))

(declare-fun bs!1266868 () Bool)

(assert (= bs!1266868 (and b!5483579 d!1741335)))

(assert (=> bs!1266868 (= (and (= (reg!15704 lt!2239470) (reg!15704 r!7292)) (= lt!2239470 (Star!15375 (reg!15704 r!7292)))) (= lambda!292938 lambda!292908))))

(assert (=> bs!1266868 (not (= lambda!292938 lambda!292907))))

(assert (=> bs!1266865 (= (and (= (reg!15704 lt!2239470) (reg!15704 r!7292)) (= lt!2239470 r!7292)) (= lambda!292938 lambda!292845))))

(declare-fun bs!1266869 () Bool)

(assert (= bs!1266869 (and b!5483579 b!5482891)))

(assert (=> bs!1266869 (= (and (= (reg!15704 lt!2239470) (reg!15704 r!7292)) (= lt!2239470 r!7292)) (= lambda!292938 lambda!292869))))

(assert (=> bs!1266865 (not (= lambda!292938 lambda!292846))))

(assert (=> b!5483579 true))

(assert (=> b!5483579 true))

(declare-fun bs!1266870 () Bool)

(declare-fun b!5483583 () Bool)

(assert (= bs!1266870 (and b!5483583 d!1741321)))

(declare-fun lambda!292939 () Int)

(assert (=> bs!1266870 (= (and (= (regOne!31262 lt!2239470) (reg!15704 r!7292)) (= (regTwo!31262 lt!2239470) r!7292)) (= lambda!292939 lambda!292902))))

(declare-fun bs!1266871 () Bool)

(assert (= bs!1266871 (and b!5483583 b!5482751)))

(assert (=> bs!1266871 (not (= lambda!292939 lambda!292844))))

(assert (=> bs!1266870 (not (= lambda!292939 lambda!292901))))

(declare-fun bs!1266872 () Bool)

(assert (= bs!1266872 (and b!5483583 b!5482895)))

(assert (=> bs!1266872 (= (and (= (regOne!31262 lt!2239470) (regOne!31262 r!7292)) (= (regTwo!31262 lt!2239470) (regTwo!31262 r!7292))) (= lambda!292939 lambda!292870))))

(declare-fun bs!1266873 () Bool)

(assert (= bs!1266873 (and b!5483583 d!1741355)))

(assert (=> bs!1266873 (not (= lambda!292939 lambda!292917))))

(declare-fun bs!1266874 () Bool)

(assert (= bs!1266874 (and b!5483583 d!1741335)))

(assert (=> bs!1266874 (not (= lambda!292939 lambda!292908))))

(assert (=> bs!1266874 (not (= lambda!292939 lambda!292907))))

(declare-fun bs!1266875 () Bool)

(assert (= bs!1266875 (and b!5483583 b!5483579)))

(assert (=> bs!1266875 (not (= lambda!292939 lambda!292938))))

(assert (=> bs!1266871 (not (= lambda!292939 lambda!292845))))

(declare-fun bs!1266876 () Bool)

(assert (= bs!1266876 (and b!5483583 b!5482891)))

(assert (=> bs!1266876 (not (= lambda!292939 lambda!292869))))

(assert (=> bs!1266871 (= (and (= (regOne!31262 lt!2239470) (reg!15704 r!7292)) (= (regTwo!31262 lt!2239470) r!7292)) (= lambda!292939 lambda!292846))))

(assert (=> b!5483583 true))

(assert (=> b!5483583 true))

(declare-fun e!3393524 () Bool)

(declare-fun call!404681 () Bool)

(assert (=> b!5483579 (= e!3393524 call!404681)))

(declare-fun b!5483580 () Bool)

(declare-fun e!3393522 () Bool)

(declare-fun e!3393523 () Bool)

(assert (=> b!5483580 (= e!3393522 e!3393523)))

(declare-fun c!958191 () Bool)

(assert (=> b!5483580 (= c!958191 ((_ is Star!15375) lt!2239470))))

(declare-fun b!5483581 () Bool)

(declare-fun e!3393526 () Bool)

(assert (=> b!5483581 (= e!3393522 e!3393526)))

(declare-fun res!2338061 () Bool)

(assert (=> b!5483581 (= res!2338061 (matchRSpec!2478 (regOne!31263 lt!2239470) s!2326))))

(assert (=> b!5483581 (=> res!2338061 e!3393526)))

(declare-fun d!1741445 () Bool)

(declare-fun c!958194 () Bool)

(assert (=> d!1741445 (= c!958194 ((_ is EmptyExpr!15375) lt!2239470))))

(declare-fun e!3393521 () Bool)

(assert (=> d!1741445 (= (matchRSpec!2478 lt!2239470 s!2326) e!3393521)))

(declare-fun b!5483582 () Bool)

(declare-fun e!3393520 () Bool)

(assert (=> b!5483582 (= e!3393520 (= s!2326 (Cons!62300 (c!957957 lt!2239470) Nil!62300)))))

(declare-fun bm!404676 () Bool)

(declare-fun call!404682 () Bool)

(assert (=> bm!404676 (= call!404682 (isEmpty!34246 s!2326))))

(assert (=> b!5483583 (= e!3393523 call!404681)))

(declare-fun bm!404677 () Bool)

(assert (=> bm!404677 (= call!404681 (Exists!2554 (ite c!958191 lambda!292938 lambda!292939)))))

(declare-fun b!5483584 () Bool)

(declare-fun c!958193 () Bool)

(assert (=> b!5483584 (= c!958193 ((_ is Union!15375) lt!2239470))))

(assert (=> b!5483584 (= e!3393520 e!3393522)))

(declare-fun b!5483585 () Bool)

(assert (=> b!5483585 (= e!3393526 (matchRSpec!2478 (regTwo!31263 lt!2239470) s!2326))))

(declare-fun b!5483586 () Bool)

(assert (=> b!5483586 (= e!3393521 call!404682)))

(declare-fun b!5483587 () Bool)

(declare-fun e!3393525 () Bool)

(assert (=> b!5483587 (= e!3393521 e!3393525)))

(declare-fun res!2338060 () Bool)

(assert (=> b!5483587 (= res!2338060 (not ((_ is EmptyLang!15375) lt!2239470)))))

(assert (=> b!5483587 (=> (not res!2338060) (not e!3393525))))

(declare-fun b!5483588 () Bool)

(declare-fun res!2338059 () Bool)

(assert (=> b!5483588 (=> res!2338059 e!3393524)))

(assert (=> b!5483588 (= res!2338059 call!404682)))

(assert (=> b!5483588 (= e!3393523 e!3393524)))

(declare-fun b!5483589 () Bool)

(declare-fun c!958192 () Bool)

(assert (=> b!5483589 (= c!958192 ((_ is ElementMatch!15375) lt!2239470))))

(assert (=> b!5483589 (= e!3393525 e!3393520)))

(assert (= (and d!1741445 c!958194) b!5483586))

(assert (= (and d!1741445 (not c!958194)) b!5483587))

(assert (= (and b!5483587 res!2338060) b!5483589))

(assert (= (and b!5483589 c!958192) b!5483582))

(assert (= (and b!5483589 (not c!958192)) b!5483584))

(assert (= (and b!5483584 c!958193) b!5483581))

(assert (= (and b!5483584 (not c!958193)) b!5483580))

(assert (= (and b!5483581 (not res!2338061)) b!5483585))

(assert (= (and b!5483580 c!958191) b!5483588))

(assert (= (and b!5483580 (not c!958191)) b!5483583))

(assert (= (and b!5483588 (not res!2338059)) b!5483579))

(assert (= (or b!5483579 b!5483583) bm!404677))

(assert (= (or b!5483586 b!5483588) bm!404676))

(declare-fun m!6499216 () Bool)

(assert (=> b!5483581 m!6499216))

(assert (=> bm!404676 m!6498422))

(declare-fun m!6499218 () Bool)

(assert (=> bm!404677 m!6499218))

(declare-fun m!6499220 () Bool)

(assert (=> b!5483585 m!6499220))

(assert (=> b!5482738 d!1741445))

(declare-fun b!5483590 () Bool)

(declare-fun e!3393529 () Bool)

(assert (=> b!5483590 (= e!3393529 (= (head!11744 s!2326) (c!957957 lt!2239470)))))

(declare-fun b!5483591 () Bool)

(declare-fun e!3393531 () Bool)

(declare-fun e!3393533 () Bool)

(assert (=> b!5483591 (= e!3393531 e!3393533)))

(declare-fun res!2338064 () Bool)

(assert (=> b!5483591 (=> (not res!2338064) (not e!3393533))))

(declare-fun lt!2239675 () Bool)

(assert (=> b!5483591 (= res!2338064 (not lt!2239675))))

(declare-fun b!5483592 () Bool)

(declare-fun res!2338066 () Bool)

(assert (=> b!5483592 (=> (not res!2338066) (not e!3393529))))

(declare-fun call!404683 () Bool)

(assert (=> b!5483592 (= res!2338066 (not call!404683))))

(declare-fun b!5483593 () Bool)

(declare-fun res!2338067 () Bool)

(assert (=> b!5483593 (=> res!2338067 e!3393531)))

(assert (=> b!5483593 (= res!2338067 e!3393529)))

(declare-fun res!2338063 () Bool)

(assert (=> b!5483593 (=> (not res!2338063) (not e!3393529))))

(assert (=> b!5483593 (= res!2338063 lt!2239675)))

(declare-fun bm!404678 () Bool)

(assert (=> bm!404678 (= call!404683 (isEmpty!34246 s!2326))))

(declare-fun b!5483595 () Bool)

(declare-fun e!3393530 () Bool)

(assert (=> b!5483595 (= e!3393530 (not (= (head!11744 s!2326) (c!957957 lt!2239470))))))

(declare-fun b!5483596 () Bool)

(assert (=> b!5483596 (= e!3393533 e!3393530)))

(declare-fun res!2338069 () Bool)

(assert (=> b!5483596 (=> res!2338069 e!3393530)))

(assert (=> b!5483596 (= res!2338069 call!404683)))

(declare-fun b!5483597 () Bool)

(declare-fun e!3393532 () Bool)

(assert (=> b!5483597 (= e!3393532 (not lt!2239675))))

(declare-fun b!5483598 () Bool)

(declare-fun e!3393528 () Bool)

(assert (=> b!5483598 (= e!3393528 (= lt!2239675 call!404683))))

(declare-fun b!5483594 () Bool)

(declare-fun res!2338068 () Bool)

(assert (=> b!5483594 (=> res!2338068 e!3393530)))

(assert (=> b!5483594 (= res!2338068 (not (isEmpty!34246 (tail!10841 s!2326))))))

(declare-fun d!1741449 () Bool)

(assert (=> d!1741449 e!3393528))

(declare-fun c!958195 () Bool)

(assert (=> d!1741449 (= c!958195 ((_ is EmptyExpr!15375) lt!2239470))))

(declare-fun e!3393527 () Bool)

(assert (=> d!1741449 (= lt!2239675 e!3393527)))

(declare-fun c!958197 () Bool)

(assert (=> d!1741449 (= c!958197 (isEmpty!34246 s!2326))))

(assert (=> d!1741449 (validRegex!7111 lt!2239470)))

(assert (=> d!1741449 (= (matchR!7560 lt!2239470 s!2326) lt!2239675)))

(declare-fun b!5483599 () Bool)

(assert (=> b!5483599 (= e!3393527 (nullable!5489 lt!2239470))))

(declare-fun b!5483600 () Bool)

(declare-fun res!2338062 () Bool)

(assert (=> b!5483600 (=> (not res!2338062) (not e!3393529))))

(assert (=> b!5483600 (= res!2338062 (isEmpty!34246 (tail!10841 s!2326)))))

(declare-fun b!5483601 () Bool)

(assert (=> b!5483601 (= e!3393528 e!3393532)))

(declare-fun c!958196 () Bool)

(assert (=> b!5483601 (= c!958196 ((_ is EmptyLang!15375) lt!2239470))))

(declare-fun b!5483602 () Bool)

(declare-fun res!2338065 () Bool)

(assert (=> b!5483602 (=> res!2338065 e!3393531)))

(assert (=> b!5483602 (= res!2338065 (not ((_ is ElementMatch!15375) lt!2239470)))))

(assert (=> b!5483602 (= e!3393532 e!3393531)))

(declare-fun b!5483603 () Bool)

(assert (=> b!5483603 (= e!3393527 (matchR!7560 (derivativeStep!4334 lt!2239470 (head!11744 s!2326)) (tail!10841 s!2326)))))

(assert (= (and d!1741449 c!958197) b!5483599))

(assert (= (and d!1741449 (not c!958197)) b!5483603))

(assert (= (and d!1741449 c!958195) b!5483598))

(assert (= (and d!1741449 (not c!958195)) b!5483601))

(assert (= (and b!5483601 c!958196) b!5483597))

(assert (= (and b!5483601 (not c!958196)) b!5483602))

(assert (= (and b!5483602 (not res!2338065)) b!5483593))

(assert (= (and b!5483593 res!2338063) b!5483592))

(assert (= (and b!5483592 res!2338066) b!5483600))

(assert (= (and b!5483600 res!2338062) b!5483590))

(assert (= (and b!5483593 (not res!2338067)) b!5483591))

(assert (= (and b!5483591 res!2338064) b!5483596))

(assert (= (and b!5483596 (not res!2338069)) b!5483594))

(assert (= (and b!5483594 (not res!2338068)) b!5483595))

(assert (= (or b!5483598 b!5483592 b!5483596) bm!404678))

(assert (=> bm!404678 m!6498422))

(assert (=> b!5483603 m!6498564))

(assert (=> b!5483603 m!6498564))

(declare-fun m!6499226 () Bool)

(assert (=> b!5483603 m!6499226))

(assert (=> b!5483603 m!6498568))

(assert (=> b!5483603 m!6499226))

(assert (=> b!5483603 m!6498568))

(declare-fun m!6499228 () Bool)

(assert (=> b!5483603 m!6499228))

(assert (=> b!5483590 m!6498564))

(assert (=> b!5483595 m!6498564))

(assert (=> b!5483594 m!6498568))

(assert (=> b!5483594 m!6498568))

(assert (=> b!5483594 m!6498572))

(assert (=> b!5483600 m!6498568))

(assert (=> b!5483600 m!6498568))

(assert (=> b!5483600 m!6498572))

(declare-fun m!6499230 () Bool)

(assert (=> b!5483599 m!6499230))

(assert (=> d!1741449 m!6498422))

(declare-fun m!6499232 () Bool)

(assert (=> d!1741449 m!6499232))

(assert (=> b!5482738 d!1741449))

(declare-fun d!1741455 () Bool)

(assert (=> d!1741455 (= (matchR!7560 lt!2239470 s!2326) (matchRSpec!2478 lt!2239470 s!2326))))

(declare-fun lt!2239678 () Unit!155200)

(assert (=> d!1741455 (= lt!2239678 (choose!41723 lt!2239470 s!2326))))

(assert (=> d!1741455 (validRegex!7111 lt!2239470)))

(assert (=> d!1741455 (= (mainMatchTheorem!2478 lt!2239470 s!2326) lt!2239678)))

(declare-fun bs!1266879 () Bool)

(assert (= bs!1266879 d!1741455))

(assert (=> bs!1266879 m!6498454))

(assert (=> bs!1266879 m!6498452))

(declare-fun m!6499234 () Bool)

(assert (=> bs!1266879 m!6499234))

(assert (=> bs!1266879 m!6499232))

(assert (=> b!5482738 d!1741455))

(declare-fun bs!1266892 () Bool)

(declare-fun d!1741457 () Bool)

(assert (= bs!1266892 (and d!1741457 b!5482753)))

(declare-fun lambda!292943 () Int)

(assert (=> bs!1266892 (= lambda!292943 lambda!292849)))

(declare-fun bs!1266893 () Bool)

(assert (= bs!1266893 (and d!1741457 d!1741217)))

(assert (=> bs!1266893 (= lambda!292943 lambda!292858)))

(declare-fun bs!1266894 () Bool)

(assert (= bs!1266894 (and d!1741457 d!1741313)))

(assert (=> bs!1266894 (= lambda!292943 lambda!292893)))

(declare-fun bs!1266895 () Bool)

(assert (= bs!1266895 (and d!1741457 d!1741271)))

(assert (=> bs!1266895 (= lambda!292943 lambda!292880)))

(declare-fun bs!1266896 () Bool)

(assert (= bs!1266896 (and d!1741457 d!1741289)))

(assert (=> bs!1266896 (= lambda!292943 lambda!292891)))

(declare-fun b!5483687 () Bool)

(declare-fun e!3393581 () Regex!15375)

(assert (=> b!5483687 (= e!3393581 EmptyLang!15375)))

(declare-fun b!5483688 () Bool)

(declare-fun e!3393580 () Bool)

(declare-fun lt!2239682 () Regex!15375)

(declare-fun isUnion!487 (Regex!15375) Bool)

(assert (=> b!5483688 (= e!3393580 (isUnion!487 lt!2239682))))

(declare-fun b!5483689 () Bool)

(declare-fun e!3393579 () Bool)

(declare-fun e!3393577 () Bool)

(assert (=> b!5483689 (= e!3393579 e!3393577)))

(declare-fun c!958211 () Bool)

(assert (=> b!5483689 (= c!958211 (isEmpty!34249 (unfocusZipperList!817 zl!343)))))

(declare-fun b!5483691 () Bool)

(declare-fun e!3393578 () Regex!15375)

(assert (=> b!5483691 (= e!3393578 e!3393581)))

(declare-fun c!958208 () Bool)

(assert (=> b!5483691 (= c!958208 ((_ is Cons!62301) (unfocusZipperList!817 zl!343)))))

(declare-fun b!5483692 () Bool)

(assert (=> b!5483692 (= e!3393580 (= lt!2239682 (head!11743 (unfocusZipperList!817 zl!343))))))

(declare-fun b!5483693 () Bool)

(assert (=> b!5483693 (= e!3393578 (h!68749 (unfocusZipperList!817 zl!343)))))

(declare-fun b!5483694 () Bool)

(assert (=> b!5483694 (= e!3393577 e!3393580)))

(declare-fun c!958209 () Bool)

(assert (=> b!5483694 (= c!958209 (isEmpty!34249 (tail!10840 (unfocusZipperList!817 zl!343))))))

(declare-fun b!5483695 () Bool)

(declare-fun e!3393576 () Bool)

(assert (=> b!5483695 (= e!3393576 (isEmpty!34249 (t!375656 (unfocusZipperList!817 zl!343))))))

(declare-fun b!5483696 () Bool)

(assert (=> b!5483696 (= e!3393581 (Union!15375 (h!68749 (unfocusZipperList!817 zl!343)) (generalisedUnion!1304 (t!375656 (unfocusZipperList!817 zl!343)))))))

(declare-fun b!5483690 () Bool)

(declare-fun isEmptyLang!1055 (Regex!15375) Bool)

(assert (=> b!5483690 (= e!3393577 (isEmptyLang!1055 lt!2239682))))

(assert (=> d!1741457 e!3393579))

(declare-fun res!2338080 () Bool)

(assert (=> d!1741457 (=> (not res!2338080) (not e!3393579))))

(assert (=> d!1741457 (= res!2338080 (validRegex!7111 lt!2239682))))

(assert (=> d!1741457 (= lt!2239682 e!3393578)))

(declare-fun c!958210 () Bool)

(assert (=> d!1741457 (= c!958210 e!3393576)))

(declare-fun res!2338079 () Bool)

(assert (=> d!1741457 (=> (not res!2338079) (not e!3393576))))

(assert (=> d!1741457 (= res!2338079 ((_ is Cons!62301) (unfocusZipperList!817 zl!343)))))

(assert (=> d!1741457 (forall!14619 (unfocusZipperList!817 zl!343) lambda!292943)))

(assert (=> d!1741457 (= (generalisedUnion!1304 (unfocusZipperList!817 zl!343)) lt!2239682)))

(assert (= (and d!1741457 res!2338079) b!5483695))

(assert (= (and d!1741457 c!958210) b!5483693))

(assert (= (and d!1741457 (not c!958210)) b!5483691))

(assert (= (and b!5483691 c!958208) b!5483696))

(assert (= (and b!5483691 (not c!958208)) b!5483687))

(assert (= (and d!1741457 res!2338080) b!5483689))

(assert (= (and b!5483689 c!958211) b!5483690))

(assert (= (and b!5483689 (not c!958211)) b!5483694))

(assert (= (and b!5483694 c!958209) b!5483692))

(assert (= (and b!5483694 (not c!958209)) b!5483688))

(declare-fun m!6499252 () Bool)

(assert (=> b!5483695 m!6499252))

(assert (=> b!5483692 m!6498416))

(declare-fun m!6499254 () Bool)

(assert (=> b!5483692 m!6499254))

(declare-fun m!6499256 () Bool)

(assert (=> b!5483696 m!6499256))

(declare-fun m!6499258 () Bool)

(assert (=> b!5483688 m!6499258))

(assert (=> b!5483694 m!6498416))

(declare-fun m!6499260 () Bool)

(assert (=> b!5483694 m!6499260))

(assert (=> b!5483694 m!6499260))

(declare-fun m!6499262 () Bool)

(assert (=> b!5483694 m!6499262))

(declare-fun m!6499264 () Bool)

(assert (=> b!5483690 m!6499264))

(assert (=> b!5483689 m!6498416))

(declare-fun m!6499266 () Bool)

(assert (=> b!5483689 m!6499266))

(declare-fun m!6499268 () Bool)

(assert (=> d!1741457 m!6499268))

(assert (=> d!1741457 m!6498416))

(declare-fun m!6499270 () Bool)

(assert (=> d!1741457 m!6499270))

(assert (=> b!5482740 d!1741457))

(declare-fun bs!1266897 () Bool)

(declare-fun d!1741471 () Bool)

(assert (= bs!1266897 (and d!1741471 b!5482753)))

(declare-fun lambda!292946 () Int)

(assert (=> bs!1266897 (= lambda!292946 lambda!292849)))

(declare-fun bs!1266898 () Bool)

(assert (= bs!1266898 (and d!1741471 d!1741217)))

(assert (=> bs!1266898 (= lambda!292946 lambda!292858)))

(declare-fun bs!1266899 () Bool)

(assert (= bs!1266899 (and d!1741471 d!1741457)))

(assert (=> bs!1266899 (= lambda!292946 lambda!292943)))

(declare-fun bs!1266900 () Bool)

(assert (= bs!1266900 (and d!1741471 d!1741313)))

(assert (=> bs!1266900 (= lambda!292946 lambda!292893)))

(declare-fun bs!1266901 () Bool)

(assert (= bs!1266901 (and d!1741471 d!1741271)))

(assert (=> bs!1266901 (= lambda!292946 lambda!292880)))

(declare-fun bs!1266902 () Bool)

(assert (= bs!1266902 (and d!1741471 d!1741289)))

(assert (=> bs!1266902 (= lambda!292946 lambda!292891)))

(declare-fun lt!2239685 () List!62425)

(assert (=> d!1741471 (forall!14619 lt!2239685 lambda!292946)))

(declare-fun e!3393584 () List!62425)

(assert (=> d!1741471 (= lt!2239685 e!3393584)))

(declare-fun c!958214 () Bool)

(assert (=> d!1741471 (= c!958214 ((_ is Cons!62302) zl!343))))

(assert (=> d!1741471 (= (unfocusZipperList!817 zl!343) lt!2239685)))

(declare-fun b!5483701 () Bool)

(assert (=> b!5483701 (= e!3393584 (Cons!62301 (generalisedConcat!1044 (exprs!5259 (h!68750 zl!343))) (unfocusZipperList!817 (t!375657 zl!343))))))

(declare-fun b!5483702 () Bool)

(assert (=> b!5483702 (= e!3393584 Nil!62301)))

(assert (= (and d!1741471 c!958214) b!5483701))

(assert (= (and d!1741471 (not c!958214)) b!5483702))

(declare-fun m!6499272 () Bool)

(assert (=> d!1741471 m!6499272))

(assert (=> b!5483701 m!6498478))

(declare-fun m!6499274 () Bool)

(assert (=> b!5483701 m!6499274))

(assert (=> b!5482740 d!1741471))

(declare-fun b!5483703 () Bool)

(declare-fun c!958219 () Bool)

(assert (=> b!5483703 (= c!958219 ((_ is Star!15375) r!7292))))

(declare-fun e!3393589 () (InoxSet Context!9518))

(declare-fun e!3393587 () (InoxSet Context!9518))

(assert (=> b!5483703 (= e!3393589 e!3393587)))

(declare-fun b!5483704 () Bool)

(declare-fun e!3393590 () (InoxSet Context!9518))

(declare-fun call!404692 () (InoxSet Context!9518))

(declare-fun call!404688 () (InoxSet Context!9518))

(assert (=> b!5483704 (= e!3393590 ((_ map or) call!404692 call!404688))))

(declare-fun bm!404682 () Bool)

(declare-fun c!958216 () Bool)

(declare-fun call!404689 () List!62425)

(assert (=> bm!404682 (= call!404692 (derivationStepZipperDown!801 (ite c!958216 (regOne!31263 r!7292) (regOne!31262 r!7292)) (ite c!958216 (Context!9519 Nil!62301) (Context!9519 call!404689)) (h!68748 s!2326)))))

(declare-fun bm!404683 () Bool)

(declare-fun call!404690 () List!62425)

(assert (=> bm!404683 (= call!404690 call!404689)))

(declare-fun d!1741473 () Bool)

(declare-fun c!958215 () Bool)

(assert (=> d!1741473 (= c!958215 (and ((_ is ElementMatch!15375) r!7292) (= (c!957957 r!7292) (h!68748 s!2326))))))

(declare-fun e!3393588 () (InoxSet Context!9518))

(assert (=> d!1741473 (= (derivationStepZipperDown!801 r!7292 (Context!9519 Nil!62301) (h!68748 s!2326)) e!3393588)))

(declare-fun b!5483705 () Bool)

(assert (=> b!5483705 (= e!3393587 ((as const (Array Context!9518 Bool)) false))))

(declare-fun bm!404684 () Bool)

(declare-fun call!404691 () (InoxSet Context!9518))

(declare-fun call!404687 () (InoxSet Context!9518))

(assert (=> bm!404684 (= call!404691 call!404687)))

(declare-fun b!5483706 () Bool)

(assert (=> b!5483706 (= e!3393587 call!404691)))

(declare-fun c!958218 () Bool)

(declare-fun bm!404685 () Bool)

(declare-fun c!958217 () Bool)

(assert (=> bm!404685 (= call!404688 (derivationStepZipperDown!801 (ite c!958216 (regTwo!31263 r!7292) (ite c!958217 (regTwo!31262 r!7292) (ite c!958218 (regOne!31262 r!7292) (reg!15704 r!7292)))) (ite (or c!958216 c!958217) (Context!9519 Nil!62301) (Context!9519 call!404690)) (h!68748 s!2326)))))

(declare-fun b!5483707 () Bool)

(assert (=> b!5483707 (= e!3393588 (store ((as const (Array Context!9518 Bool)) false) (Context!9519 Nil!62301) true))))

(declare-fun b!5483708 () Bool)

(assert (=> b!5483708 (= e!3393589 call!404691)))

(declare-fun b!5483709 () Bool)

(declare-fun e!3393585 () Bool)

(assert (=> b!5483709 (= c!958217 e!3393585)))

(declare-fun res!2338081 () Bool)

(assert (=> b!5483709 (=> (not res!2338081) (not e!3393585))))

(assert (=> b!5483709 (= res!2338081 ((_ is Concat!24220) r!7292))))

(declare-fun e!3393586 () (InoxSet Context!9518))

(assert (=> b!5483709 (= e!3393590 e!3393586)))

(declare-fun b!5483710 () Bool)

(assert (=> b!5483710 (= e!3393585 (nullable!5489 (regOne!31262 r!7292)))))

(declare-fun b!5483711 () Bool)

(assert (=> b!5483711 (= e!3393586 ((_ map or) call!404692 call!404687))))

(declare-fun bm!404686 () Bool)

(assert (=> bm!404686 (= call!404689 ($colon$colon!1560 (exprs!5259 (Context!9519 Nil!62301)) (ite (or c!958217 c!958218) (regTwo!31262 r!7292) r!7292)))))

(declare-fun b!5483712 () Bool)

(assert (=> b!5483712 (= e!3393588 e!3393590)))

(assert (=> b!5483712 (= c!958216 ((_ is Union!15375) r!7292))))

(declare-fun b!5483713 () Bool)

(assert (=> b!5483713 (= e!3393586 e!3393589)))

(assert (=> b!5483713 (= c!958218 ((_ is Concat!24220) r!7292))))

(declare-fun bm!404687 () Bool)

(assert (=> bm!404687 (= call!404687 call!404688)))

(assert (= (and d!1741473 c!958215) b!5483707))

(assert (= (and d!1741473 (not c!958215)) b!5483712))

(assert (= (and b!5483712 c!958216) b!5483704))

(assert (= (and b!5483712 (not c!958216)) b!5483709))

(assert (= (and b!5483709 res!2338081) b!5483710))

(assert (= (and b!5483709 c!958217) b!5483711))

(assert (= (and b!5483709 (not c!958217)) b!5483713))

(assert (= (and b!5483713 c!958218) b!5483708))

(assert (= (and b!5483713 (not c!958218)) b!5483703))

(assert (= (and b!5483703 c!958219) b!5483706))

(assert (= (and b!5483703 (not c!958219)) b!5483705))

(assert (= (or b!5483708 b!5483706) bm!404683))

(assert (= (or b!5483708 b!5483706) bm!404684))

(assert (= (or b!5483711 bm!404683) bm!404686))

(assert (= (or b!5483711 bm!404684) bm!404687))

(assert (= (or b!5483704 bm!404687) bm!404685))

(assert (= (or b!5483704 b!5483711) bm!404682))

(declare-fun m!6499276 () Bool)

(assert (=> b!5483710 m!6499276))

(declare-fun m!6499278 () Bool)

(assert (=> bm!404685 m!6499278))

(declare-fun m!6499280 () Bool)

(assert (=> bm!404686 m!6499280))

(declare-fun m!6499282 () Bool)

(assert (=> bm!404682 m!6499282))

(declare-fun m!6499284 () Bool)

(assert (=> b!5483707 m!6499284))

(assert (=> b!5482762 d!1741473))

(declare-fun b!5483714 () Bool)

(declare-fun call!404693 () (InoxSet Context!9518))

(declare-fun e!3393592 () (InoxSet Context!9518))

(assert (=> b!5483714 (= e!3393592 ((_ map or) call!404693 (derivationStepZipperUp!727 (Context!9519 (t!375656 (exprs!5259 (Context!9519 (Cons!62301 r!7292 Nil!62301))))) (h!68748 s!2326))))))

(declare-fun bm!404688 () Bool)

(assert (=> bm!404688 (= call!404693 (derivationStepZipperDown!801 (h!68749 (exprs!5259 (Context!9519 (Cons!62301 r!7292 Nil!62301)))) (Context!9519 (t!375656 (exprs!5259 (Context!9519 (Cons!62301 r!7292 Nil!62301))))) (h!68748 s!2326)))))

(declare-fun b!5483715 () Bool)

(declare-fun e!3393591 () (InoxSet Context!9518))

(assert (=> b!5483715 (= e!3393591 ((as const (Array Context!9518 Bool)) false))))

(declare-fun b!5483716 () Bool)

(assert (=> b!5483716 (= e!3393592 e!3393591)))

(declare-fun c!958221 () Bool)

(assert (=> b!5483716 (= c!958221 ((_ is Cons!62301) (exprs!5259 (Context!9519 (Cons!62301 r!7292 Nil!62301)))))))

(declare-fun d!1741475 () Bool)

(declare-fun c!958220 () Bool)

(declare-fun e!3393593 () Bool)

(assert (=> d!1741475 (= c!958220 e!3393593)))

(declare-fun res!2338082 () Bool)

(assert (=> d!1741475 (=> (not res!2338082) (not e!3393593))))

(assert (=> d!1741475 (= res!2338082 ((_ is Cons!62301) (exprs!5259 (Context!9519 (Cons!62301 r!7292 Nil!62301)))))))

(assert (=> d!1741475 (= (derivationStepZipperUp!727 (Context!9519 (Cons!62301 r!7292 Nil!62301)) (h!68748 s!2326)) e!3393592)))

(declare-fun b!5483717 () Bool)

(assert (=> b!5483717 (= e!3393593 (nullable!5489 (h!68749 (exprs!5259 (Context!9519 (Cons!62301 r!7292 Nil!62301))))))))

(declare-fun b!5483718 () Bool)

(assert (=> b!5483718 (= e!3393591 call!404693)))

(assert (= (and d!1741475 res!2338082) b!5483717))

(assert (= (and d!1741475 c!958220) b!5483714))

(assert (= (and d!1741475 (not c!958220)) b!5483716))

(assert (= (and b!5483716 c!958221) b!5483718))

(assert (= (and b!5483716 (not c!958221)) b!5483715))

(assert (= (or b!5483714 b!5483718) bm!404688))

(declare-fun m!6499286 () Bool)

(assert (=> b!5483714 m!6499286))

(declare-fun m!6499288 () Bool)

(assert (=> bm!404688 m!6499288))

(declare-fun m!6499290 () Bool)

(assert (=> b!5483717 m!6499290))

(assert (=> b!5482762 d!1741475))

(declare-fun bs!1266903 () Bool)

(declare-fun d!1741477 () Bool)

(assert (= bs!1266903 (and d!1741477 b!5482748)))

(declare-fun lambda!292947 () Int)

(assert (=> bs!1266903 (= lambda!292947 lambda!292847)))

(declare-fun bs!1266904 () Bool)

(assert (= bs!1266904 (and d!1741477 d!1741253)))

(assert (=> bs!1266904 (= lambda!292947 lambda!292876)))

(declare-fun bs!1266905 () Bool)

(assert (= bs!1266905 (and d!1741477 d!1741265)))

(assert (=> bs!1266905 (= lambda!292947 lambda!292877)))

(assert (=> d!1741477 true))

(assert (=> d!1741477 (= (derivationStepZipper!1570 z!1189 (h!68748 s!2326)) (flatMap!1078 z!1189 lambda!292947))))

(declare-fun bs!1266906 () Bool)

(assert (= bs!1266906 d!1741477))

(declare-fun m!6499292 () Bool)

(assert (=> bs!1266906 m!6499292))

(assert (=> b!5482762 d!1741477))

(declare-fun d!1741479 () Bool)

(declare-fun lt!2239686 () Regex!15375)

(assert (=> d!1741479 (validRegex!7111 lt!2239686)))

(assert (=> d!1741479 (= lt!2239686 (generalisedUnion!1304 (unfocusZipperList!817 (Cons!62302 lt!2239499 Nil!62302))))))

(assert (=> d!1741479 (= (unfocusZipper!1117 (Cons!62302 lt!2239499 Nil!62302)) lt!2239686)))

(declare-fun bs!1266907 () Bool)

(assert (= bs!1266907 d!1741479))

(declare-fun m!6499294 () Bool)

(assert (=> bs!1266907 m!6499294))

(declare-fun m!6499296 () Bool)

(assert (=> bs!1266907 m!6499296))

(assert (=> bs!1266907 m!6499296))

(declare-fun m!6499298 () Bool)

(assert (=> bs!1266907 m!6499298))

(assert (=> b!5482741 d!1741479))

(declare-fun b!5483723 () Bool)

(declare-fun e!3393596 () Bool)

(declare-fun tp!1506694 () Bool)

(declare-fun tp!1506695 () Bool)

(assert (=> b!5483723 (= e!3393596 (and tp!1506694 tp!1506695))))

(assert (=> b!5482757 (= tp!1506627 e!3393596)))

(assert (= (and b!5482757 ((_ is Cons!62301) (exprs!5259 setElem!36075))) b!5483723))

(declare-fun b!5483734 () Bool)

(declare-fun e!3393599 () Bool)

(assert (=> b!5483734 (= e!3393599 tp_is_empty!40003)))

(declare-fun b!5483736 () Bool)

(declare-fun tp!1506709 () Bool)

(assert (=> b!5483736 (= e!3393599 tp!1506709)))

(declare-fun b!5483737 () Bool)

(declare-fun tp!1506708 () Bool)

(declare-fun tp!1506707 () Bool)

(assert (=> b!5483737 (= e!3393599 (and tp!1506708 tp!1506707))))

(assert (=> b!5482754 (= tp!1506629 e!3393599)))

(declare-fun b!5483735 () Bool)

(declare-fun tp!1506706 () Bool)

(declare-fun tp!1506710 () Bool)

(assert (=> b!5483735 (= e!3393599 (and tp!1506706 tp!1506710))))

(assert (= (and b!5482754 ((_ is ElementMatch!15375) (reg!15704 r!7292))) b!5483734))

(assert (= (and b!5482754 ((_ is Concat!24220) (reg!15704 r!7292))) b!5483735))

(assert (= (and b!5482754 ((_ is Star!15375) (reg!15704 r!7292))) b!5483736))

(assert (= (and b!5482754 ((_ is Union!15375) (reg!15704 r!7292))) b!5483737))

(declare-fun b!5483738 () Bool)

(declare-fun e!3393600 () Bool)

(assert (=> b!5483738 (= e!3393600 tp_is_empty!40003)))

(declare-fun b!5483740 () Bool)

(declare-fun tp!1506714 () Bool)

(assert (=> b!5483740 (= e!3393600 tp!1506714)))

(declare-fun b!5483741 () Bool)

(declare-fun tp!1506713 () Bool)

(declare-fun tp!1506712 () Bool)

(assert (=> b!5483741 (= e!3393600 (and tp!1506713 tp!1506712))))

(assert (=> b!5482739 (= tp!1506630 e!3393600)))

(declare-fun b!5483739 () Bool)

(declare-fun tp!1506711 () Bool)

(declare-fun tp!1506715 () Bool)

(assert (=> b!5483739 (= e!3393600 (and tp!1506711 tp!1506715))))

(assert (= (and b!5482739 ((_ is ElementMatch!15375) (regOne!31262 r!7292))) b!5483738))

(assert (= (and b!5482739 ((_ is Concat!24220) (regOne!31262 r!7292))) b!5483739))

(assert (= (and b!5482739 ((_ is Star!15375) (regOne!31262 r!7292))) b!5483740))

(assert (= (and b!5482739 ((_ is Union!15375) (regOne!31262 r!7292))) b!5483741))

(declare-fun b!5483742 () Bool)

(declare-fun e!3393601 () Bool)

(assert (=> b!5483742 (= e!3393601 tp_is_empty!40003)))

(declare-fun b!5483744 () Bool)

(declare-fun tp!1506719 () Bool)

(assert (=> b!5483744 (= e!3393601 tp!1506719)))

(declare-fun b!5483745 () Bool)

(declare-fun tp!1506718 () Bool)

(declare-fun tp!1506717 () Bool)

(assert (=> b!5483745 (= e!3393601 (and tp!1506718 tp!1506717))))

(assert (=> b!5482739 (= tp!1506631 e!3393601)))

(declare-fun b!5483743 () Bool)

(declare-fun tp!1506716 () Bool)

(declare-fun tp!1506720 () Bool)

(assert (=> b!5483743 (= e!3393601 (and tp!1506716 tp!1506720))))

(assert (= (and b!5482739 ((_ is ElementMatch!15375) (regTwo!31262 r!7292))) b!5483742))

(assert (= (and b!5482739 ((_ is Concat!24220) (regTwo!31262 r!7292))) b!5483743))

(assert (= (and b!5482739 ((_ is Star!15375) (regTwo!31262 r!7292))) b!5483744))

(assert (= (and b!5482739 ((_ is Union!15375) (regTwo!31262 r!7292))) b!5483745))

(declare-fun b!5483746 () Bool)

(declare-fun e!3393602 () Bool)

(declare-fun tp!1506721 () Bool)

(declare-fun tp!1506722 () Bool)

(assert (=> b!5483746 (= e!3393602 (and tp!1506721 tp!1506722))))

(assert (=> b!5482764 (= tp!1506625 e!3393602)))

(assert (= (and b!5482764 ((_ is Cons!62301) (exprs!5259 (h!68750 zl!343)))) b!5483746))

(declare-fun condSetEmpty!36081 () Bool)

(assert (=> setNonEmpty!36075 (= condSetEmpty!36081 (= setRest!36075 ((as const (Array Context!9518 Bool)) false)))))

(declare-fun setRes!36081 () Bool)

(assert (=> setNonEmpty!36075 (= tp!1506623 setRes!36081)))

(declare-fun setIsEmpty!36081 () Bool)

(assert (=> setIsEmpty!36081 setRes!36081))

(declare-fun tp!1506728 () Bool)

(declare-fun setElem!36081 () Context!9518)

(declare-fun e!3393605 () Bool)

(declare-fun setNonEmpty!36081 () Bool)

(assert (=> setNonEmpty!36081 (= setRes!36081 (and tp!1506728 (inv!81684 setElem!36081) e!3393605))))

(declare-fun setRest!36081 () (InoxSet Context!9518))

(assert (=> setNonEmpty!36081 (= setRest!36075 ((_ map or) (store ((as const (Array Context!9518 Bool)) false) setElem!36081 true) setRest!36081))))

(declare-fun b!5483751 () Bool)

(declare-fun tp!1506727 () Bool)

(assert (=> b!5483751 (= e!3393605 tp!1506727)))

(assert (= (and setNonEmpty!36075 condSetEmpty!36081) setIsEmpty!36081))

(assert (= (and setNonEmpty!36075 (not condSetEmpty!36081)) setNonEmpty!36081))

(assert (= setNonEmpty!36081 b!5483751))

(declare-fun m!6499300 () Bool)

(assert (=> setNonEmpty!36081 m!6499300))

(declare-fun b!5483756 () Bool)

(declare-fun e!3393608 () Bool)

(declare-fun tp!1506731 () Bool)

(assert (=> b!5483756 (= e!3393608 (and tp_is_empty!40003 tp!1506731))))

(assert (=> b!5482760 (= tp!1506628 e!3393608)))

(assert (= (and b!5482760 ((_ is Cons!62300) (t!375655 s!2326))) b!5483756))

(declare-fun b!5483757 () Bool)

(declare-fun e!3393609 () Bool)

(assert (=> b!5483757 (= e!3393609 tp_is_empty!40003)))

(declare-fun b!5483759 () Bool)

(declare-fun tp!1506735 () Bool)

(assert (=> b!5483759 (= e!3393609 tp!1506735)))

(declare-fun b!5483760 () Bool)

(declare-fun tp!1506734 () Bool)

(declare-fun tp!1506733 () Bool)

(assert (=> b!5483760 (= e!3393609 (and tp!1506734 tp!1506733))))

(assert (=> b!5482765 (= tp!1506622 e!3393609)))

(declare-fun b!5483758 () Bool)

(declare-fun tp!1506732 () Bool)

(declare-fun tp!1506736 () Bool)

(assert (=> b!5483758 (= e!3393609 (and tp!1506732 tp!1506736))))

(assert (= (and b!5482765 ((_ is ElementMatch!15375) (regOne!31263 r!7292))) b!5483757))

(assert (= (and b!5482765 ((_ is Concat!24220) (regOne!31263 r!7292))) b!5483758))

(assert (= (and b!5482765 ((_ is Star!15375) (regOne!31263 r!7292))) b!5483759))

(assert (= (and b!5482765 ((_ is Union!15375) (regOne!31263 r!7292))) b!5483760))

(declare-fun b!5483761 () Bool)

(declare-fun e!3393610 () Bool)

(assert (=> b!5483761 (= e!3393610 tp_is_empty!40003)))

(declare-fun b!5483763 () Bool)

(declare-fun tp!1506740 () Bool)

(assert (=> b!5483763 (= e!3393610 tp!1506740)))

(declare-fun b!5483764 () Bool)

(declare-fun tp!1506739 () Bool)

(declare-fun tp!1506738 () Bool)

(assert (=> b!5483764 (= e!3393610 (and tp!1506739 tp!1506738))))

(assert (=> b!5482765 (= tp!1506624 e!3393610)))

(declare-fun b!5483762 () Bool)

(declare-fun tp!1506737 () Bool)

(declare-fun tp!1506741 () Bool)

(assert (=> b!5483762 (= e!3393610 (and tp!1506737 tp!1506741))))

(assert (= (and b!5482765 ((_ is ElementMatch!15375) (regTwo!31263 r!7292))) b!5483761))

(assert (= (and b!5482765 ((_ is Concat!24220) (regTwo!31263 r!7292))) b!5483762))

(assert (= (and b!5482765 ((_ is Star!15375) (regTwo!31263 r!7292))) b!5483763))

(assert (= (and b!5482765 ((_ is Union!15375) (regTwo!31263 r!7292))) b!5483764))

(declare-fun b!5483772 () Bool)

(declare-fun e!3393616 () Bool)

(declare-fun tp!1506746 () Bool)

(assert (=> b!5483772 (= e!3393616 tp!1506746)))

(declare-fun tp!1506747 () Bool)

(declare-fun b!5483771 () Bool)

(declare-fun e!3393615 () Bool)

(assert (=> b!5483771 (= e!3393615 (and (inv!81684 (h!68750 (t!375657 zl!343))) e!3393616 tp!1506747))))

(assert (=> b!5482745 (= tp!1506626 e!3393615)))

(assert (= b!5483771 b!5483772))

(assert (= (and b!5482745 ((_ is Cons!62302) (t!375657 zl!343))) b!5483771))

(declare-fun m!6499302 () Bool)

(assert (=> b!5483771 m!6499302))

(declare-fun b_lambda!208329 () Bool)

(assert (= b_lambda!208301 (or b!5482748 b_lambda!208329)))

(declare-fun bs!1266908 () Bool)

(declare-fun d!1741481 () Bool)

(assert (= bs!1266908 (and d!1741481 b!5482748)))

(assert (=> bs!1266908 (= (dynLambda!24442 lambda!292847 lt!2239485) (derivationStepZipperUp!727 lt!2239485 (h!68748 s!2326)))))

(assert (=> bs!1266908 m!6498382))

(assert (=> d!1741267 d!1741481))

(declare-fun b_lambda!208331 () Bool)

(assert (= b_lambda!208299 (or b!5482748 b_lambda!208331)))

(declare-fun bs!1266909 () Bool)

(declare-fun d!1741483 () Bool)

(assert (= bs!1266909 (and d!1741483 b!5482748)))

(assert (=> bs!1266909 (= (dynLambda!24442 lambda!292847 lt!2239503) (derivationStepZipperUp!727 lt!2239503 (h!68748 s!2326)))))

(assert (=> bs!1266909 m!6498380))

(assert (=> d!1741263 d!1741483))

(declare-fun b_lambda!208333 () Bool)

(assert (= b_lambda!208309 (or b!5482753 b_lambda!208333)))

(declare-fun bs!1266910 () Bool)

(declare-fun d!1741485 () Bool)

(assert (= bs!1266910 (and d!1741485 b!5482753)))

(declare-fun lt!2239687 () Unit!155200)

(assert (=> bs!1266910 (= lt!2239687 (lemmaConcatPreservesForall!276 (exprs!5259 lt!2239485) lt!2239477 lambda!292849))))

(assert (=> bs!1266910 (= (dynLambda!24444 lambda!292848 lt!2239485) (Context!9519 (++!13723 (exprs!5259 lt!2239485) lt!2239477)))))

(declare-fun m!6499304 () Bool)

(assert (=> bs!1266910 m!6499304))

(declare-fun m!6499306 () Bool)

(assert (=> bs!1266910 m!6499306))

(assert (=> d!1741365 d!1741485))

(declare-fun b_lambda!208335 () Bool)

(assert (= b_lambda!208311 (or b!5482748 b_lambda!208335)))

(declare-fun bs!1266911 () Bool)

(declare-fun d!1741487 () Bool)

(assert (= bs!1266911 (and d!1741487 b!5482748)))

(assert (=> bs!1266911 (= (dynLambda!24442 lambda!292847 lt!2239499) (derivationStepZipperUp!727 lt!2239499 (h!68748 s!2326)))))

(assert (=> bs!1266911 m!6498460))

(assert (=> d!1741391 d!1741487))

(declare-fun b_lambda!208337 () Bool)

(assert (= b_lambda!208303 (or b!5482748 b_lambda!208337)))

(declare-fun bs!1266912 () Bool)

(declare-fun d!1741489 () Bool)

(assert (= bs!1266912 (and d!1741489 b!5482748)))

(assert (=> bs!1266912 (= (dynLambda!24442 lambda!292847 (h!68750 zl!343)) (derivationStepZipperUp!727 (h!68750 zl!343) (h!68748 s!2326)))))

(assert (=> bs!1266912 m!6498376))

(assert (=> d!1741311 d!1741489))

(check-sat (not b!5483736) (not b!5482843) (not bm!404583) (not b!5483097) (not d!1741247) (not d!1741311) (not b!5483334) (not b!5483051) (not b!5483014) (not bm!404601) (not b!5483746) (not b!5482994) (not b!5483333) (not b!5483756) (not bm!404596) (not d!1741329) (not bm!404682) (not bs!1266910) (not b!5482992) (not d!1741315) (not bm!404685) (not bm!404592) (not bm!404668) (not b!5483744) (not d!1741277) (not d!1741349) (not b!5483692) (not b!5482846) (not d!1741243) (not b!5483337) (not b!5482965) (not b!5482961) (not d!1741257) (not b!5483092) (not d!1741267) (not bm!404665) (not b!5483055) (not b!5483338) (not d!1741237) (not d!1741245) (not d!1741455) (not b!5482974) (not bm!404686) (not b!5483087) (not b_lambda!208329) (not b!5482810) (not b!5482893) (not b!5483689) (not d!1741317) (not b!5483701) (not d!1741387) (not b!5483038) (not b!5482993) (not b!5483547) (not b!5483066) (not b!5483772) (not b!5483710) (not b!5483737) (not d!1741263) (not b!5483717) tp_is_empty!40003 (not d!1741283) (not d!1741265) (not b!5483694) (not d!1741391) (not b!5483751) (not bs!1266911) (not d!1741397) (not b!5482848) (not d!1741269) (not b_lambda!208337) (not b!5483017) (not b!5483064) (not b!5483594) (not b!5483065) (not d!1741273) (not b!5483361) (not d!1741363) (not b!5483145) (not bs!1266909) (not b!5482995) (not b!5483714) (not b!5483100) (not b_lambda!208331) (not b!5483595) (not bm!404588) (not b!5483759) (not d!1741441) (not d!1741271) (not b!5482971) (not b!5483739) (not d!1741477) (not d!1741285) (not b!5483170) (not bm!404676) (not b!5482991) (not d!1741449) (not d!1741261) (not bm!404595) (not d!1741253) (not b!5483169) (not d!1741361) (not b!5483764) (not bm!404688) (not b!5482839) (not b!5483763) (not b!5483009) (not d!1741229) (not b!5483762) (not bm!404589) (not b!5483771) (not b!5483477) (not d!1741217) (not b!5483600) (not d!1741365) (not b!5483060) (not d!1741279) (not b!5483012) (not bm!404600) (not d!1741321) (not b!5483758) (not b!5483581) (not b!5483688) (not b!5483176) (not b!5483551) (not b!5483735) (not d!1741233) (not bm!404669) (not b!5482841) (not d!1741333) (not bm!404677) (not b!5483590) (not b!5482845) (not d!1741471) (not b!5483473) (not b!5483050) (not b!5483091) (not bm!404597) (not b!5483056) (not d!1741301) (not b!5483096) (not bs!1266908) (not d!1741359) (not d!1741355) (not bm!404602) (not b!5483585) (not setNonEmpty!36081) (not b!5483037) (not b!5483760) (not d!1741457) (not d!1741437) (not b!5483562) (not b!5482897) (not b!5483723) (not b!5483690) (not d!1741407) (not bm!404678) (not d!1741281) (not d!1741479) (not b!5483563) (not b_lambda!208335) (not d!1741289) (not b!5483548) (not b!5483544) (not b!5483603) (not d!1741335) (not b!5483550) (not bm!404582) (not b!5482840) (not b!5482996) (not b!5483743) (not b_lambda!208333) (not d!1741295) (not d!1741305) (not b!5483362) (not b!5483549) (not d!1741395) (not bm!404671) (not b!5483696) (not bm!404598) (not b!5483061) (not d!1741313) (not b!5483740) (not b!5482970) (not b!5482966) (not b!5483480) (not b!5483695) (not d!1741331) (not bs!1266912) (not b!5483179) (not b!5483336) (not b!5483741) (not b!5483341) (not b!5483599) (not b!5483745))
(check-sat)
