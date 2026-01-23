; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!617358 () Bool)

(assert start!617358)

(declare-fun b!6189558 () Bool)

(assert (=> b!6189558 true))

(assert (=> b!6189558 true))

(declare-fun lambda!337984 () Int)

(declare-fun lambda!337983 () Int)

(assert (=> b!6189558 (not (= lambda!337984 lambda!337983))))

(assert (=> b!6189558 true))

(assert (=> b!6189558 true))

(declare-fun b!6189536 () Bool)

(assert (=> b!6189536 true))

(declare-fun b!6189529 () Bool)

(declare-datatypes ((Unit!157811 0))(
  ( (Unit!157812) )
))
(declare-fun e!3769568 () Unit!157811)

(declare-fun Unit!157813 () Unit!157811)

(assert (=> b!6189529 (= e!3769568 Unit!157813)))

(declare-datatypes ((C!32528 0))(
  ( (C!32529 (val!25966 Int)) )
))
(declare-datatypes ((List!64686 0))(
  ( (Nil!64562) (Cons!64562 (h!71010 C!32528) (t!378196 List!64686)) )
))
(declare-fun s!2326 () List!64686)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16129 0))(
  ( (ElementMatch!16129 (c!1116552 C!32528)) (Concat!24974 (regOne!32770 Regex!16129) (regTwo!32770 Regex!16129)) (EmptyExpr!16129) (Star!16129 (reg!16458 Regex!16129)) (EmptyLang!16129) (Union!16129 (regOne!32771 Regex!16129) (regTwo!32771 Regex!16129)) )
))
(declare-datatypes ((List!64687 0))(
  ( (Nil!64563) (Cons!64563 (h!71011 Regex!16129) (t!378197 List!64687)) )
))
(declare-datatypes ((Context!11026 0))(
  ( (Context!11027 (exprs!6013 List!64687)) )
))
(declare-fun lt!2340698 () (InoxSet Context!11026))

(declare-fun lt!2340724 () Unit!157811)

(declare-fun lt!2340723 () (InoxSet Context!11026))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!960 ((InoxSet Context!11026) (InoxSet Context!11026) List!64686) Unit!157811)

(assert (=> b!6189529 (= lt!2340724 (lemmaZipperConcatMatchesSameAsBothZippers!960 lt!2340698 lt!2340723 (t!378196 s!2326)))))

(declare-fun res!2560705 () Bool)

(declare-fun matchZipper!2141 ((InoxSet Context!11026) List!64686) Bool)

(assert (=> b!6189529 (= res!2560705 (matchZipper!2141 lt!2340698 (t!378196 s!2326)))))

(declare-fun e!3769565 () Bool)

(assert (=> b!6189529 (=> res!2560705 e!3769565)))

(assert (=> b!6189529 (= (matchZipper!2141 ((_ map or) lt!2340698 lt!2340723) (t!378196 s!2326)) e!3769565)))

(declare-fun b!6189530 () Bool)

(declare-fun e!3769550 () Bool)

(declare-fun tp!1727383 () Bool)

(assert (=> b!6189530 (= e!3769550 tp!1727383)))

(declare-fun b!6189531 () Bool)

(declare-fun e!3769557 () Bool)

(declare-fun lt!2340714 () (InoxSet Context!11026))

(assert (=> b!6189531 (= e!3769557 (not (matchZipper!2141 lt!2340714 (t!378196 s!2326))))))

(declare-fun b!6189532 () Bool)

(declare-fun e!3769546 () Bool)

(declare-fun tp!1727384 () Bool)

(declare-fun tp!1727385 () Bool)

(assert (=> b!6189532 (= e!3769546 (and tp!1727384 tp!1727385))))

(declare-fun b!6189533 () Bool)

(declare-fun Unit!157814 () Unit!157811)

(assert (=> b!6189533 (= e!3769568 Unit!157814)))

(declare-fun res!2560711 () Bool)

(declare-fun e!3769547 () Bool)

(assert (=> start!617358 (=> (not res!2560711) (not e!3769547))))

(declare-fun r!7292 () Regex!16129)

(declare-fun validRegex!7865 (Regex!16129) Bool)

(assert (=> start!617358 (= res!2560711 (validRegex!7865 r!7292))))

(assert (=> start!617358 e!3769547))

(assert (=> start!617358 e!3769546))

(declare-fun condSetEmpty!41986 () Bool)

(declare-fun z!1189 () (InoxSet Context!11026))

(assert (=> start!617358 (= condSetEmpty!41986 (= z!1189 ((as const (Array Context!11026 Bool)) false)))))

(declare-fun setRes!41986 () Bool)

(assert (=> start!617358 setRes!41986))

(declare-fun e!3769556 () Bool)

(assert (=> start!617358 e!3769556))

(declare-fun e!3769554 () Bool)

(assert (=> start!617358 e!3769554))

(declare-fun b!6189534 () Bool)

(declare-fun e!3769545 () Bool)

(declare-fun tp!1727386 () Bool)

(assert (=> b!6189534 (= e!3769545 tp!1727386)))

(declare-fun b!6189535 () Bool)

(declare-fun e!3769555 () Bool)

(declare-fun e!3769552 () Bool)

(assert (=> b!6189535 (= e!3769555 e!3769552)))

(declare-fun res!2560691 () Bool)

(assert (=> b!6189535 (=> res!2560691 e!3769552)))

(declare-fun lt!2340702 () Regex!16129)

(declare-fun lt!2340715 () Regex!16129)

(declare-fun lt!2340713 () Regex!16129)

(assert (=> b!6189535 (= res!2560691 (or (not (= lt!2340713 (Concat!24974 (regOne!32771 (regOne!32770 r!7292)) lt!2340715))) (not (= lt!2340702 (Concat!24974 (regTwo!32771 (regOne!32770 r!7292)) lt!2340715))) (not (= (regTwo!32770 r!7292) lt!2340715))))))

(declare-datatypes ((List!64688 0))(
  ( (Nil!64564) (Cons!64564 (h!71012 Context!11026) (t!378198 List!64688)) )
))
(declare-fun zl!343 () List!64688)

(declare-fun generalisedConcat!1726 (List!64687) Regex!16129)

(assert (=> b!6189535 (= lt!2340715 (generalisedConcat!1726 (t!378197 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun e!3769549 () Bool)

(declare-fun e!3769564 () Bool)

(assert (=> b!6189536 (= e!3769549 e!3769564)))

(declare-fun res!2560700 () Bool)

(assert (=> b!6189536 (=> res!2560700 e!3769564)))

(get-info :version)

(assert (=> b!6189536 (= res!2560700 (or (and ((_ is ElementMatch!16129) (regOne!32770 r!7292)) (= (c!1116552 (regOne!32770 r!7292)) (h!71010 s!2326))) (not ((_ is Union!16129) (regOne!32770 r!7292)))))))

(declare-fun lt!2340708 () Unit!157811)

(assert (=> b!6189536 (= lt!2340708 e!3769568)))

(declare-fun c!1116550 () Bool)

(declare-fun nullable!6122 (Regex!16129) Bool)

(assert (=> b!6189536 (= c!1116550 (nullable!6122 (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun lambda!337985 () Int)

(declare-fun flatMap!1634 ((InoxSet Context!11026) Int) (InoxSet Context!11026))

(declare-fun derivationStepZipperUp!1303 (Context!11026 C!32528) (InoxSet Context!11026))

(assert (=> b!6189536 (= (flatMap!1634 z!1189 lambda!337985) (derivationStepZipperUp!1303 (h!71012 zl!343) (h!71010 s!2326)))))

(declare-fun lt!2340729 () Unit!157811)

(declare-fun lemmaFlatMapOnSingletonSet!1160 ((InoxSet Context!11026) Context!11026 Int) Unit!157811)

(assert (=> b!6189536 (= lt!2340729 (lemmaFlatMapOnSingletonSet!1160 z!1189 (h!71012 zl!343) lambda!337985))))

(declare-fun lt!2340688 () Context!11026)

(assert (=> b!6189536 (= lt!2340723 (derivationStepZipperUp!1303 lt!2340688 (h!71010 s!2326)))))

(declare-fun derivationStepZipperDown!1377 (Regex!16129 Context!11026 C!32528) (InoxSet Context!11026))

(assert (=> b!6189536 (= lt!2340698 (derivationStepZipperDown!1377 (h!71011 (exprs!6013 (h!71012 zl!343))) lt!2340688 (h!71010 s!2326)))))

(assert (=> b!6189536 (= lt!2340688 (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun lt!2340711 () (InoxSet Context!11026))

(assert (=> b!6189536 (= lt!2340711 (derivationStepZipperUp!1303 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))) (h!71010 s!2326)))))

(declare-fun b!6189537 () Bool)

(declare-fun tp_is_empty!41511 () Bool)

(assert (=> b!6189537 (= e!3769546 tp_is_empty!41511)))

(declare-fun b!6189538 () Bool)

(declare-fun res!2560693 () Bool)

(declare-fun e!3769548 () Bool)

(assert (=> b!6189538 (=> res!2560693 e!3769548)))

(declare-fun lt!2340717 () Regex!16129)

(assert (=> b!6189538 (= res!2560693 (or (not (= lt!2340717 r!7292)) (not (= (exprs!6013 (h!71012 zl!343)) (Cons!64563 (regOne!32770 r!7292) (t!378197 (exprs!6013 (h!71012 zl!343))))))))))

(declare-fun setIsEmpty!41986 () Bool)

(assert (=> setIsEmpty!41986 setRes!41986))

(declare-fun b!6189539 () Bool)

(declare-fun e!3769563 () Bool)

(assert (=> b!6189539 (= e!3769563 e!3769548)))

(declare-fun res!2560710 () Bool)

(assert (=> b!6189539 (=> res!2560710 e!3769548)))

(declare-fun lt!2340720 () Bool)

(declare-fun e!3769561 () Bool)

(assert (=> b!6189539 (= res!2560710 (not (= lt!2340720 e!3769561)))))

(declare-fun res!2560690 () Bool)

(assert (=> b!6189539 (=> res!2560690 e!3769561)))

(declare-fun lt!2340689 () Bool)

(assert (=> b!6189539 (= res!2560690 lt!2340689)))

(assert (=> b!6189539 (= lt!2340720 (matchZipper!2141 z!1189 s!2326))))

(declare-fun lt!2340690 () (InoxSet Context!11026))

(assert (=> b!6189539 (= lt!2340689 (matchZipper!2141 lt!2340690 s!2326))))

(declare-fun lt!2340725 () Unit!157811)

(declare-fun e!3769562 () Unit!157811)

(assert (=> b!6189539 (= lt!2340725 e!3769562)))

(declare-fun c!1116549 () Bool)

(assert (=> b!6189539 (= c!1116549 (nullable!6122 (regTwo!32771 (regOne!32770 r!7292))))))

(declare-fun lt!2340697 () Context!11026)

(declare-fun lt!2340699 () (InoxSet Context!11026))

(assert (=> b!6189539 (= (flatMap!1634 lt!2340699 lambda!337985) (derivationStepZipperUp!1303 lt!2340697 (h!71010 s!2326)))))

(declare-fun lt!2340712 () Unit!157811)

(assert (=> b!6189539 (= lt!2340712 (lemmaFlatMapOnSingletonSet!1160 lt!2340699 lt!2340697 lambda!337985))))

(declare-fun lt!2340727 () (InoxSet Context!11026))

(assert (=> b!6189539 (= lt!2340727 (derivationStepZipperUp!1303 lt!2340697 (h!71010 s!2326)))))

(declare-fun lt!2340719 () Unit!157811)

(declare-fun e!3769544 () Unit!157811)

(assert (=> b!6189539 (= lt!2340719 e!3769544)))

(declare-fun c!1116551 () Bool)

(assert (=> b!6189539 (= c!1116551 (nullable!6122 (regOne!32771 (regOne!32770 r!7292))))))

(declare-fun lt!2340703 () Context!11026)

(assert (=> b!6189539 (= (flatMap!1634 lt!2340690 lambda!337985) (derivationStepZipperUp!1303 lt!2340703 (h!71010 s!2326)))))

(declare-fun lt!2340706 () Unit!157811)

(assert (=> b!6189539 (= lt!2340706 (lemmaFlatMapOnSingletonSet!1160 lt!2340690 lt!2340703 lambda!337985))))

(declare-fun lt!2340722 () (InoxSet Context!11026))

(assert (=> b!6189539 (= lt!2340722 (derivationStepZipperUp!1303 lt!2340703 (h!71010 s!2326)))))

(assert (=> b!6189539 (= lt!2340699 (store ((as const (Array Context!11026 Bool)) false) lt!2340697 true))))

(declare-fun lt!2340726 () List!64687)

(assert (=> b!6189539 (= lt!2340697 (Context!11027 lt!2340726))))

(assert (=> b!6189539 (= lt!2340726 (Cons!64563 (regTwo!32771 (regOne!32770 r!7292)) (t!378197 (exprs!6013 (h!71012 zl!343)))))))

(assert (=> b!6189539 (= lt!2340690 (store ((as const (Array Context!11026 Bool)) false) lt!2340703 true))))

(declare-fun lt!2340694 () List!64687)

(assert (=> b!6189539 (= lt!2340703 (Context!11027 lt!2340694))))

(assert (=> b!6189539 (= lt!2340694 (Cons!64563 (regOne!32771 (regOne!32770 r!7292)) (t!378197 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun tp!1727388 () Bool)

(declare-fun b!6189540 () Bool)

(declare-fun inv!83569 (Context!11026) Bool)

(assert (=> b!6189540 (= e!3769556 (and (inv!83569 (h!71012 zl!343)) e!3769550 tp!1727388))))

(declare-fun b!6189541 () Bool)

(assert (=> b!6189541 (= e!3769561 (matchZipper!2141 lt!2340699 s!2326))))

(declare-fun setNonEmpty!41986 () Bool)

(declare-fun setElem!41986 () Context!11026)

(declare-fun tp!1727381 () Bool)

(assert (=> setNonEmpty!41986 (= setRes!41986 (and tp!1727381 (inv!83569 setElem!41986) e!3769545))))

(declare-fun setRest!41986 () (InoxSet Context!11026))

(assert (=> setNonEmpty!41986 (= z!1189 ((_ map or) (store ((as const (Array Context!11026 Bool)) false) setElem!41986 true) setRest!41986))))

(declare-fun b!6189542 () Bool)

(declare-fun res!2560704 () Bool)

(declare-fun e!3769559 () Bool)

(assert (=> b!6189542 (=> res!2560704 e!3769559)))

(declare-fun isEmpty!36546 (List!64688) Bool)

(assert (=> b!6189542 (= res!2560704 (not (isEmpty!36546 (t!378198 zl!343))))))

(declare-fun b!6189543 () Bool)

(declare-fun Unit!157815 () Unit!157811)

(assert (=> b!6189543 (= e!3769544 Unit!157815)))

(declare-fun lt!2340709 () (InoxSet Context!11026))

(declare-fun lt!2340693 () Unit!157811)

(assert (=> b!6189543 (= lt!2340693 (lemmaZipperConcatMatchesSameAsBothZippers!960 lt!2340709 lt!2340723 (t!378196 s!2326)))))

(declare-fun res!2560688 () Bool)

(declare-fun lt!2340716 () Bool)

(assert (=> b!6189543 (= res!2560688 lt!2340716)))

(declare-fun e!3769567 () Bool)

(assert (=> b!6189543 (=> res!2560688 e!3769567)))

(assert (=> b!6189543 (= (matchZipper!2141 ((_ map or) lt!2340709 lt!2340723) (t!378196 s!2326)) e!3769567)))

(declare-fun b!6189544 () Bool)

(declare-fun e!3769558 () Bool)

(assert (=> b!6189544 (= e!3769558 e!3769563)))

(declare-fun res!2560697 () Bool)

(assert (=> b!6189544 (=> res!2560697 e!3769563)))

(assert (=> b!6189544 (= res!2560697 e!3769557)))

(declare-fun res!2560695 () Bool)

(assert (=> b!6189544 (=> (not res!2560695) (not e!3769557))))

(assert (=> b!6189544 (= res!2560695 (not (= (matchZipper!2141 lt!2340698 (t!378196 s!2326)) lt!2340716)))))

(declare-fun lt!2340701 () (InoxSet Context!11026))

(declare-fun e!3769566 () Bool)

(assert (=> b!6189544 (= (matchZipper!2141 lt!2340701 (t!378196 s!2326)) e!3769566)))

(declare-fun res!2560709 () Bool)

(assert (=> b!6189544 (=> res!2560709 e!3769566)))

(assert (=> b!6189544 (= res!2560709 lt!2340716)))

(assert (=> b!6189544 (= lt!2340716 (matchZipper!2141 lt!2340709 (t!378196 s!2326)))))

(declare-fun lt!2340704 () Unit!157811)

(assert (=> b!6189544 (= lt!2340704 (lemmaZipperConcatMatchesSameAsBothZippers!960 lt!2340709 lt!2340714 (t!378196 s!2326)))))

(declare-fun b!6189545 () Bool)

(declare-fun res!2560708 () Bool)

(assert (=> b!6189545 (=> (not res!2560708) (not e!3769547))))

(declare-fun toList!9913 ((InoxSet Context!11026)) List!64688)

(assert (=> b!6189545 (= res!2560708 (= (toList!9913 z!1189) zl!343))))

(declare-fun b!6189546 () Bool)

(declare-fun e!3769560 () Bool)

(assert (=> b!6189546 (= e!3769560 e!3769555)))

(declare-fun res!2560696 () Bool)

(assert (=> b!6189546 (=> res!2560696 e!3769555)))

(declare-fun lt!2340705 () Bool)

(declare-fun lt!2340692 () Bool)

(assert (=> b!6189546 (= res!2560696 (or (and (not (= lt!2340720 lt!2340692)) (not lt!2340705)) (not (= r!7292 (Concat!24974 (Union!16129 (regOne!32771 (regOne!32770 r!7292)) (regTwo!32771 (regOne!32770 r!7292))) (regTwo!32770 r!7292))))))))

(declare-fun matchRSpec!3230 (Regex!16129 List!64686) Bool)

(assert (=> b!6189546 (= lt!2340705 (matchRSpec!3230 lt!2340702 s!2326))))

(declare-fun lt!2340686 () Unit!157811)

(declare-fun mainMatchTheorem!3230 (Regex!16129 List!64686) Unit!157811)

(assert (=> b!6189546 (= lt!2340686 (mainMatchTheorem!3230 lt!2340702 s!2326))))

(assert (=> b!6189546 (= lt!2340692 (matchRSpec!3230 lt!2340713 s!2326))))

(declare-fun lt!2340728 () Unit!157811)

(assert (=> b!6189546 (= lt!2340728 (mainMatchTheorem!3230 lt!2340713 s!2326))))

(assert (=> b!6189546 (= lt!2340705 (matchZipper!2141 lt!2340699 s!2326))))

(declare-fun matchR!8312 (Regex!16129 List!64686) Bool)

(assert (=> b!6189546 (= lt!2340705 (matchR!8312 lt!2340702 s!2326))))

(declare-fun lt!2340691 () List!64688)

(declare-fun lt!2340710 () Unit!157811)

(declare-fun theoremZipperRegexEquiv!741 ((InoxSet Context!11026) List!64688 Regex!16129 List!64686) Unit!157811)

(assert (=> b!6189546 (= lt!2340710 (theoremZipperRegexEquiv!741 lt!2340699 lt!2340691 lt!2340702 s!2326))))

(assert (=> b!6189546 (= lt!2340702 (generalisedConcat!1726 lt!2340726))))

(assert (=> b!6189546 (= lt!2340692 lt!2340689)))

(assert (=> b!6189546 (= lt!2340692 (matchR!8312 lt!2340713 s!2326))))

(declare-fun lt!2340700 () List!64688)

(declare-fun lt!2340721 () Unit!157811)

(assert (=> b!6189546 (= lt!2340721 (theoremZipperRegexEquiv!741 lt!2340690 lt!2340700 lt!2340713 s!2326))))

(assert (=> b!6189546 (= lt!2340713 (generalisedConcat!1726 lt!2340694))))

(declare-fun b!6189547 () Bool)

(declare-fun e!3769569 () Bool)

(assert (=> b!6189547 (= e!3769569 (matchZipper!2141 lt!2340723 (t!378196 s!2326)))))

(declare-fun b!6189548 () Bool)

(declare-fun res!2560689 () Bool)

(assert (=> b!6189548 (=> res!2560689 e!3769549)))

(declare-fun isEmpty!36547 (List!64687) Bool)

(assert (=> b!6189548 (= res!2560689 (isEmpty!36547 (t!378197 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun b!6189549 () Bool)

(assert (=> b!6189549 (= e!3769564 e!3769558)))

(declare-fun res!2560694 () Bool)

(assert (=> b!6189549 (=> res!2560694 e!3769558)))

(assert (=> b!6189549 (= res!2560694 (not (= lt!2340698 lt!2340701)))))

(assert (=> b!6189549 (= lt!2340701 ((_ map or) lt!2340709 lt!2340714))))

(assert (=> b!6189549 (= lt!2340714 (derivationStepZipperDown!1377 (regTwo!32771 (regOne!32770 r!7292)) lt!2340688 (h!71010 s!2326)))))

(assert (=> b!6189549 (= lt!2340709 (derivationStepZipperDown!1377 (regOne!32771 (regOne!32770 r!7292)) lt!2340688 (h!71010 s!2326)))))

(declare-fun b!6189550 () Bool)

(assert (=> b!6189550 (= e!3769566 (matchZipper!2141 lt!2340714 (t!378196 s!2326)))))

(declare-fun b!6189551 () Bool)

(assert (=> b!6189551 (= e!3769567 (matchZipper!2141 lt!2340723 (t!378196 s!2326)))))

(declare-fun b!6189552 () Bool)

(declare-fun Unit!157816 () Unit!157811)

(assert (=> b!6189552 (= e!3769562 Unit!157816)))

(declare-fun lt!2340707 () Unit!157811)

(assert (=> b!6189552 (= lt!2340707 (lemmaZipperConcatMatchesSameAsBothZippers!960 lt!2340714 lt!2340723 (t!378196 s!2326)))))

(declare-fun res!2560699 () Bool)

(assert (=> b!6189552 (= res!2560699 (matchZipper!2141 lt!2340714 (t!378196 s!2326)))))

(assert (=> b!6189552 (=> res!2560699 e!3769569)))

(assert (=> b!6189552 (= (matchZipper!2141 ((_ map or) lt!2340714 lt!2340723) (t!378196 s!2326)) e!3769569)))

(declare-fun b!6189553 () Bool)

(assert (=> b!6189553 (= e!3769565 (matchZipper!2141 lt!2340723 (t!378196 s!2326)))))

(declare-fun b!6189554 () Bool)

(declare-fun e!3769553 () Bool)

(assert (=> b!6189554 (= e!3769548 e!3769553)))

(declare-fun res!2560702 () Bool)

(assert (=> b!6189554 (=> res!2560702 e!3769553)))

(declare-fun lt!2340685 () Int)

(declare-fun lt!2340730 () Int)

(assert (=> b!6189554 (= res!2560702 (>= lt!2340685 lt!2340730))))

(declare-fun zipperDepthTotal!312 (List!64688) Int)

(assert (=> b!6189554 (= lt!2340730 (zipperDepthTotal!312 zl!343))))

(assert (=> b!6189554 (= lt!2340685 (zipperDepthTotal!312 lt!2340700))))

(assert (=> b!6189554 (= lt!2340700 (Cons!64564 lt!2340703 Nil!64564))))

(declare-fun b!6189555 () Bool)

(declare-fun e!3769551 () Bool)

(assert (=> b!6189555 (= e!3769547 e!3769551)))

(declare-fun res!2560707 () Bool)

(assert (=> b!6189555 (=> (not res!2560707) (not e!3769551))))

(assert (=> b!6189555 (= res!2560707 (= r!7292 lt!2340717))))

(declare-fun unfocusZipper!1871 (List!64688) Regex!16129)

(assert (=> b!6189555 (= lt!2340717 (unfocusZipper!1871 zl!343))))

(declare-fun b!6189556 () Bool)

(declare-fun Unit!157817 () Unit!157811)

(assert (=> b!6189556 (= e!3769544 Unit!157817)))

(declare-fun b!6189557 () Bool)

(assert (=> b!6189557 (= e!3769552 (validRegex!7865 (regOne!32771 (regOne!32770 r!7292))))))

(assert (=> b!6189558 (= e!3769559 e!3769549)))

(declare-fun res!2560713 () Bool)

(assert (=> b!6189558 (=> res!2560713 e!3769549)))

(declare-fun lt!2340696 () Bool)

(declare-fun lt!2340718 () Bool)

(assert (=> b!6189558 (= res!2560713 (or (not (= lt!2340696 lt!2340718)) ((_ is Nil!64562) s!2326)))))

(declare-fun Exists!3199 (Int) Bool)

(assert (=> b!6189558 (= (Exists!3199 lambda!337983) (Exists!3199 lambda!337984))))

(declare-fun lt!2340687 () Unit!157811)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1736 (Regex!16129 Regex!16129 List!64686) Unit!157811)

(assert (=> b!6189558 (= lt!2340687 (lemmaExistCutMatchRandMatchRSpecEquivalent!1736 (regOne!32770 r!7292) (regTwo!32770 r!7292) s!2326))))

(assert (=> b!6189558 (= lt!2340718 (Exists!3199 lambda!337983))))

(declare-datatypes ((tuple2!66216 0))(
  ( (tuple2!66217 (_1!36411 List!64686) (_2!36411 List!64686)) )
))
(declare-datatypes ((Option!16020 0))(
  ( (None!16019) (Some!16019 (v!52162 tuple2!66216)) )
))
(declare-fun isDefined!12723 (Option!16020) Bool)

(declare-fun findConcatSeparation!2434 (Regex!16129 Regex!16129 List!64686 List!64686 List!64686) Option!16020)

(assert (=> b!6189558 (= lt!2340718 (isDefined!12723 (findConcatSeparation!2434 (regOne!32770 r!7292) (regTwo!32770 r!7292) Nil!64562 s!2326 s!2326)))))

(declare-fun lt!2340695 () Unit!157811)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2198 (Regex!16129 Regex!16129 List!64686) Unit!157811)

(assert (=> b!6189558 (= lt!2340695 (lemmaFindConcatSeparationEquivalentToExists!2198 (regOne!32770 r!7292) (regTwo!32770 r!7292) s!2326))))

(declare-fun b!6189559 () Bool)

(declare-fun tp!1727387 () Bool)

(assert (=> b!6189559 (= e!3769546 tp!1727387)))

(declare-fun b!6189560 () Bool)

(declare-fun Unit!157818 () Unit!157811)

(assert (=> b!6189560 (= e!3769562 Unit!157818)))

(declare-fun b!6189561 () Bool)

(declare-fun res!2560698 () Bool)

(assert (=> b!6189561 (=> res!2560698 e!3769559)))

(declare-fun generalisedUnion!1973 (List!64687) Regex!16129)

(declare-fun unfocusZipperList!1550 (List!64688) List!64687)

(assert (=> b!6189561 (= res!2560698 (not (= r!7292 (generalisedUnion!1973 (unfocusZipperList!1550 zl!343)))))))

(declare-fun b!6189562 () Bool)

(declare-fun res!2560712 () Bool)

(assert (=> b!6189562 (=> res!2560712 e!3769559)))

(assert (=> b!6189562 (= res!2560712 (or ((_ is EmptyExpr!16129) r!7292) ((_ is EmptyLang!16129) r!7292) ((_ is ElementMatch!16129) r!7292) ((_ is Union!16129) r!7292) (not ((_ is Concat!24974) r!7292))))))

(declare-fun b!6189563 () Bool)

(declare-fun tp!1727389 () Bool)

(assert (=> b!6189563 (= e!3769554 (and tp_is_empty!41511 tp!1727389))))

(declare-fun b!6189564 () Bool)

(assert (=> b!6189564 (= e!3769553 e!3769560)))

(declare-fun res!2560703 () Bool)

(assert (=> b!6189564 (=> res!2560703 e!3769560)))

(assert (=> b!6189564 (= res!2560703 (>= (zipperDepthTotal!312 lt!2340691) lt!2340730))))

(assert (=> b!6189564 (= lt!2340691 (Cons!64564 lt!2340697 Nil!64564))))

(declare-fun b!6189565 () Bool)

(declare-fun tp!1727390 () Bool)

(declare-fun tp!1727382 () Bool)

(assert (=> b!6189565 (= e!3769546 (and tp!1727390 tp!1727382))))

(declare-fun b!6189566 () Bool)

(declare-fun res!2560701 () Bool)

(assert (=> b!6189566 (=> res!2560701 e!3769559)))

(assert (=> b!6189566 (= res!2560701 (not ((_ is Cons!64563) (exprs!6013 (h!71012 zl!343)))))))

(declare-fun b!6189567 () Bool)

(declare-fun res!2560706 () Bool)

(assert (=> b!6189567 (=> res!2560706 e!3769559)))

(assert (=> b!6189567 (= res!2560706 (not (= r!7292 (generalisedConcat!1726 (exprs!6013 (h!71012 zl!343))))))))

(declare-fun b!6189568 () Bool)

(assert (=> b!6189568 (= e!3769551 (not e!3769559))))

(declare-fun res!2560692 () Bool)

(assert (=> b!6189568 (=> res!2560692 e!3769559)))

(assert (=> b!6189568 (= res!2560692 (not ((_ is Cons!64564) zl!343)))))

(assert (=> b!6189568 (= lt!2340696 (matchRSpec!3230 r!7292 s!2326))))

(assert (=> b!6189568 (= lt!2340696 (matchR!8312 r!7292 s!2326))))

(declare-fun lt!2340684 () Unit!157811)

(assert (=> b!6189568 (= lt!2340684 (mainMatchTheorem!3230 r!7292 s!2326))))

(assert (= (and start!617358 res!2560711) b!6189545))

(assert (= (and b!6189545 res!2560708) b!6189555))

(assert (= (and b!6189555 res!2560707) b!6189568))

(assert (= (and b!6189568 (not res!2560692)) b!6189542))

(assert (= (and b!6189542 (not res!2560704)) b!6189567))

(assert (= (and b!6189567 (not res!2560706)) b!6189566))

(assert (= (and b!6189566 (not res!2560701)) b!6189561))

(assert (= (and b!6189561 (not res!2560698)) b!6189562))

(assert (= (and b!6189562 (not res!2560712)) b!6189558))

(assert (= (and b!6189558 (not res!2560713)) b!6189548))

(assert (= (and b!6189548 (not res!2560689)) b!6189536))

(assert (= (and b!6189536 c!1116550) b!6189529))

(assert (= (and b!6189536 (not c!1116550)) b!6189533))

(assert (= (and b!6189529 (not res!2560705)) b!6189553))

(assert (= (and b!6189536 (not res!2560700)) b!6189549))

(assert (= (and b!6189549 (not res!2560694)) b!6189544))

(assert (= (and b!6189544 (not res!2560709)) b!6189550))

(assert (= (and b!6189544 res!2560695) b!6189531))

(assert (= (and b!6189544 (not res!2560697)) b!6189539))

(assert (= (and b!6189539 c!1116551) b!6189543))

(assert (= (and b!6189539 (not c!1116551)) b!6189556))

(assert (= (and b!6189543 (not res!2560688)) b!6189551))

(assert (= (and b!6189539 c!1116549) b!6189552))

(assert (= (and b!6189539 (not c!1116549)) b!6189560))

(assert (= (and b!6189552 (not res!2560699)) b!6189547))

(assert (= (and b!6189539 (not res!2560690)) b!6189541))

(assert (= (and b!6189539 (not res!2560710)) b!6189538))

(assert (= (and b!6189538 (not res!2560693)) b!6189554))

(assert (= (and b!6189554 (not res!2560702)) b!6189564))

(assert (= (and b!6189564 (not res!2560703)) b!6189546))

(assert (= (and b!6189546 (not res!2560696)) b!6189535))

(assert (= (and b!6189535 (not res!2560691)) b!6189557))

(assert (= (and start!617358 ((_ is ElementMatch!16129) r!7292)) b!6189537))

(assert (= (and start!617358 ((_ is Concat!24974) r!7292)) b!6189565))

(assert (= (and start!617358 ((_ is Star!16129) r!7292)) b!6189559))

(assert (= (and start!617358 ((_ is Union!16129) r!7292)) b!6189532))

(assert (= (and start!617358 condSetEmpty!41986) setIsEmpty!41986))

(assert (= (and start!617358 (not condSetEmpty!41986)) setNonEmpty!41986))

(assert (= setNonEmpty!41986 b!6189534))

(assert (= b!6189540 b!6189530))

(assert (= (and start!617358 ((_ is Cons!64564) zl!343)) b!6189540))

(assert (= (and start!617358 ((_ is Cons!64562) s!2326)) b!6189563))

(declare-fun m!7023838 () Bool)

(assert (=> b!6189548 m!7023838))

(declare-fun m!7023840 () Bool)

(assert (=> b!6189552 m!7023840))

(declare-fun m!7023842 () Bool)

(assert (=> b!6189552 m!7023842))

(declare-fun m!7023844 () Bool)

(assert (=> b!6189552 m!7023844))

(declare-fun m!7023846 () Bool)

(assert (=> b!6189554 m!7023846))

(declare-fun m!7023848 () Bool)

(assert (=> b!6189554 m!7023848))

(declare-fun m!7023850 () Bool)

(assert (=> b!6189558 m!7023850))

(declare-fun m!7023852 () Bool)

(assert (=> b!6189558 m!7023852))

(declare-fun m!7023854 () Bool)

(assert (=> b!6189558 m!7023854))

(declare-fun m!7023856 () Bool)

(assert (=> b!6189558 m!7023856))

(assert (=> b!6189558 m!7023856))

(declare-fun m!7023858 () Bool)

(assert (=> b!6189558 m!7023858))

(assert (=> b!6189558 m!7023850))

(declare-fun m!7023860 () Bool)

(assert (=> b!6189558 m!7023860))

(declare-fun m!7023862 () Bool)

(assert (=> b!6189568 m!7023862))

(declare-fun m!7023864 () Bool)

(assert (=> b!6189568 m!7023864))

(declare-fun m!7023866 () Bool)

(assert (=> b!6189568 m!7023866))

(declare-fun m!7023868 () Bool)

(assert (=> b!6189536 m!7023868))

(declare-fun m!7023870 () Bool)

(assert (=> b!6189536 m!7023870))

(declare-fun m!7023872 () Bool)

(assert (=> b!6189536 m!7023872))

(declare-fun m!7023874 () Bool)

(assert (=> b!6189536 m!7023874))

(declare-fun m!7023876 () Bool)

(assert (=> b!6189536 m!7023876))

(declare-fun m!7023878 () Bool)

(assert (=> b!6189536 m!7023878))

(declare-fun m!7023880 () Bool)

(assert (=> b!6189536 m!7023880))

(assert (=> b!6189531 m!7023842))

(declare-fun m!7023882 () Bool)

(assert (=> b!6189557 m!7023882))

(declare-fun m!7023884 () Bool)

(assert (=> b!6189551 m!7023884))

(assert (=> b!6189547 m!7023884))

(declare-fun m!7023886 () Bool)

(assert (=> b!6189529 m!7023886))

(declare-fun m!7023888 () Bool)

(assert (=> b!6189529 m!7023888))

(declare-fun m!7023890 () Bool)

(assert (=> b!6189529 m!7023890))

(declare-fun m!7023892 () Bool)

(assert (=> b!6189542 m!7023892))

(declare-fun m!7023894 () Bool)

(assert (=> b!6189540 m!7023894))

(declare-fun m!7023896 () Bool)

(assert (=> b!6189567 m!7023896))

(declare-fun m!7023898 () Bool)

(assert (=> b!6189561 m!7023898))

(assert (=> b!6189561 m!7023898))

(declare-fun m!7023900 () Bool)

(assert (=> b!6189561 m!7023900))

(declare-fun m!7023902 () Bool)

(assert (=> b!6189543 m!7023902))

(declare-fun m!7023904 () Bool)

(assert (=> b!6189543 m!7023904))

(declare-fun m!7023906 () Bool)

(assert (=> b!6189564 m!7023906))

(assert (=> b!6189550 m!7023842))

(declare-fun m!7023908 () Bool)

(assert (=> b!6189535 m!7023908))

(assert (=> b!6189544 m!7023888))

(declare-fun m!7023910 () Bool)

(assert (=> b!6189544 m!7023910))

(declare-fun m!7023912 () Bool)

(assert (=> b!6189544 m!7023912))

(declare-fun m!7023914 () Bool)

(assert (=> b!6189544 m!7023914))

(declare-fun m!7023916 () Bool)

(assert (=> b!6189539 m!7023916))

(declare-fun m!7023918 () Bool)

(assert (=> b!6189539 m!7023918))

(declare-fun m!7023920 () Bool)

(assert (=> b!6189539 m!7023920))

(declare-fun m!7023922 () Bool)

(assert (=> b!6189539 m!7023922))

(declare-fun m!7023924 () Bool)

(assert (=> b!6189539 m!7023924))

(declare-fun m!7023926 () Bool)

(assert (=> b!6189539 m!7023926))

(declare-fun m!7023928 () Bool)

(assert (=> b!6189539 m!7023928))

(declare-fun m!7023930 () Bool)

(assert (=> b!6189539 m!7023930))

(declare-fun m!7023932 () Bool)

(assert (=> b!6189539 m!7023932))

(declare-fun m!7023934 () Bool)

(assert (=> b!6189539 m!7023934))

(declare-fun m!7023936 () Bool)

(assert (=> b!6189539 m!7023936))

(declare-fun m!7023938 () Bool)

(assert (=> b!6189539 m!7023938))

(declare-fun m!7023940 () Bool)

(assert (=> b!6189545 m!7023940))

(declare-fun m!7023942 () Bool)

(assert (=> b!6189541 m!7023942))

(declare-fun m!7023944 () Bool)

(assert (=> b!6189546 m!7023944))

(declare-fun m!7023946 () Bool)

(assert (=> b!6189546 m!7023946))

(declare-fun m!7023948 () Bool)

(assert (=> b!6189546 m!7023948))

(declare-fun m!7023950 () Bool)

(assert (=> b!6189546 m!7023950))

(declare-fun m!7023952 () Bool)

(assert (=> b!6189546 m!7023952))

(declare-fun m!7023954 () Bool)

(assert (=> b!6189546 m!7023954))

(declare-fun m!7023956 () Bool)

(assert (=> b!6189546 m!7023956))

(declare-fun m!7023958 () Bool)

(assert (=> b!6189546 m!7023958))

(declare-fun m!7023960 () Bool)

(assert (=> b!6189546 m!7023960))

(assert (=> b!6189546 m!7023942))

(declare-fun m!7023962 () Bool)

(assert (=> b!6189546 m!7023962))

(declare-fun m!7023964 () Bool)

(assert (=> setNonEmpty!41986 m!7023964))

(declare-fun m!7023966 () Bool)

(assert (=> b!6189549 m!7023966))

(declare-fun m!7023968 () Bool)

(assert (=> b!6189549 m!7023968))

(declare-fun m!7023970 () Bool)

(assert (=> start!617358 m!7023970))

(assert (=> b!6189553 m!7023884))

(declare-fun m!7023972 () Bool)

(assert (=> b!6189555 m!7023972))

(check-sat (not b!6189563) (not b!6189544) (not b!6189553) (not b!6189534) (not b!6189555) (not b!6189546) (not b!6189550) (not b!6189567) (not b!6189542) (not b!6189557) (not b!6189568) (not b!6189549) (not b!6189539) (not b!6189554) (not b!6189530) (not b!6189552) (not start!617358) (not b!6189559) (not b!6189564) (not b!6189543) (not b!6189545) (not b!6189529) (not b!6189551) (not setNonEmpty!41986) (not b!6189536) (not b!6189540) (not b!6189531) (not b!6189565) (not b!6189535) (not b!6189558) (not b!6189532) (not b!6189548) (not b!6189547) tp_is_empty!41511 (not b!6189541) (not b!6189561))
(check-sat)
(get-model)

(declare-fun b!6190090 () Bool)

(declare-fun e!3769867 () Bool)

(declare-fun lt!2340796 () Regex!16129)

(declare-fun isConcat!1064 (Regex!16129) Bool)

(assert (=> b!6190090 (= e!3769867 (isConcat!1064 lt!2340796))))

(declare-fun b!6190091 () Bool)

(declare-fun e!3769868 () Regex!16129)

(declare-fun e!3769864 () Regex!16129)

(assert (=> b!6190091 (= e!3769868 e!3769864)))

(declare-fun c!1116709 () Bool)

(assert (=> b!6190091 (= c!1116709 ((_ is Cons!64563) (exprs!6013 (h!71012 zl!343))))))

(declare-fun b!6190092 () Bool)

(declare-fun e!3769865 () Bool)

(assert (=> b!6190092 (= e!3769865 e!3769867)))

(declare-fun c!1116707 () Bool)

(declare-fun tail!11855 (List!64687) List!64687)

(assert (=> b!6190092 (= c!1116707 (isEmpty!36547 (tail!11855 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun b!6190093 () Bool)

(declare-fun isEmptyExpr!1541 (Regex!16129) Bool)

(assert (=> b!6190093 (= e!3769865 (isEmptyExpr!1541 lt!2340796))))

(declare-fun b!6190094 () Bool)

(declare-fun e!3769866 () Bool)

(assert (=> b!6190094 (= e!3769866 e!3769865)))

(declare-fun c!1116706 () Bool)

(assert (=> b!6190094 (= c!1116706 (isEmpty!36547 (exprs!6013 (h!71012 zl!343))))))

(declare-fun b!6190095 () Bool)

(declare-fun head!12770 (List!64687) Regex!16129)

(assert (=> b!6190095 (= e!3769867 (= lt!2340796 (head!12770 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun d!1940474 () Bool)

(assert (=> d!1940474 e!3769866))

(declare-fun res!2560869 () Bool)

(assert (=> d!1940474 (=> (not res!2560869) (not e!3769866))))

(assert (=> d!1940474 (= res!2560869 (validRegex!7865 lt!2340796))))

(assert (=> d!1940474 (= lt!2340796 e!3769868)))

(declare-fun c!1116708 () Bool)

(declare-fun e!3769863 () Bool)

(assert (=> d!1940474 (= c!1116708 e!3769863)))

(declare-fun res!2560870 () Bool)

(assert (=> d!1940474 (=> (not res!2560870) (not e!3769863))))

(assert (=> d!1940474 (= res!2560870 ((_ is Cons!64563) (exprs!6013 (h!71012 zl!343))))))

(declare-fun lambda!338023 () Int)

(declare-fun forall!15245 (List!64687 Int) Bool)

(assert (=> d!1940474 (forall!15245 (exprs!6013 (h!71012 zl!343)) lambda!338023)))

(assert (=> d!1940474 (= (generalisedConcat!1726 (exprs!6013 (h!71012 zl!343))) lt!2340796)))

(declare-fun b!6190096 () Bool)

(assert (=> b!6190096 (= e!3769864 EmptyExpr!16129)))

(declare-fun b!6190097 () Bool)

(assert (=> b!6190097 (= e!3769863 (isEmpty!36547 (t!378197 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun b!6190098 () Bool)

(assert (=> b!6190098 (= e!3769864 (Concat!24974 (h!71011 (exprs!6013 (h!71012 zl!343))) (generalisedConcat!1726 (t!378197 (exprs!6013 (h!71012 zl!343))))))))

(declare-fun b!6190099 () Bool)

(assert (=> b!6190099 (= e!3769868 (h!71011 (exprs!6013 (h!71012 zl!343))))))

(assert (= (and d!1940474 res!2560870) b!6190097))

(assert (= (and d!1940474 c!1116708) b!6190099))

(assert (= (and d!1940474 (not c!1116708)) b!6190091))

(assert (= (and b!6190091 c!1116709) b!6190098))

(assert (= (and b!6190091 (not c!1116709)) b!6190096))

(assert (= (and d!1940474 res!2560869) b!6190094))

(assert (= (and b!6190094 c!1116706) b!6190093))

(assert (= (and b!6190094 (not c!1116706)) b!6190092))

(assert (= (and b!6190092 c!1116707) b!6190095))

(assert (= (and b!6190092 (not c!1116707)) b!6190090))

(assert (=> b!6190098 m!7023908))

(declare-fun m!7024372 () Bool)

(assert (=> b!6190095 m!7024372))

(declare-fun m!7024374 () Bool)

(assert (=> b!6190092 m!7024374))

(assert (=> b!6190092 m!7024374))

(declare-fun m!7024376 () Bool)

(assert (=> b!6190092 m!7024376))

(assert (=> b!6190097 m!7023838))

(declare-fun m!7024378 () Bool)

(assert (=> d!1940474 m!7024378))

(declare-fun m!7024380 () Bool)

(assert (=> d!1940474 m!7024380))

(declare-fun m!7024382 () Bool)

(assert (=> b!6190090 m!7024382))

(declare-fun m!7024384 () Bool)

(assert (=> b!6190094 m!7024384))

(declare-fun m!7024386 () Bool)

(assert (=> b!6190093 m!7024386))

(assert (=> b!6189567 d!1940474))

(declare-fun d!1940476 () Bool)

(declare-fun c!1116712 () Bool)

(declare-fun isEmpty!36550 (List!64686) Bool)

(assert (=> d!1940476 (= c!1116712 (isEmpty!36550 s!2326))))

(declare-fun e!3769871 () Bool)

(assert (=> d!1940476 (= (matchZipper!2141 lt!2340699 s!2326) e!3769871)))

(declare-fun b!6190104 () Bool)

(declare-fun nullableZipper!1905 ((InoxSet Context!11026)) Bool)

(assert (=> b!6190104 (= e!3769871 (nullableZipper!1905 lt!2340699))))

(declare-fun b!6190105 () Bool)

(declare-fun derivationStepZipper!2097 ((InoxSet Context!11026) C!32528) (InoxSet Context!11026))

(declare-fun head!12771 (List!64686) C!32528)

(declare-fun tail!11856 (List!64686) List!64686)

(assert (=> b!6190105 (= e!3769871 (matchZipper!2141 (derivationStepZipper!2097 lt!2340699 (head!12771 s!2326)) (tail!11856 s!2326)))))

(assert (= (and d!1940476 c!1116712) b!6190104))

(assert (= (and d!1940476 (not c!1116712)) b!6190105))

(declare-fun m!7024388 () Bool)

(assert (=> d!1940476 m!7024388))

(declare-fun m!7024390 () Bool)

(assert (=> b!6190104 m!7024390))

(declare-fun m!7024392 () Bool)

(assert (=> b!6190105 m!7024392))

(assert (=> b!6190105 m!7024392))

(declare-fun m!7024394 () Bool)

(assert (=> b!6190105 m!7024394))

(declare-fun m!7024396 () Bool)

(assert (=> b!6190105 m!7024396))

(assert (=> b!6190105 m!7024394))

(assert (=> b!6190105 m!7024396))

(declare-fun m!7024398 () Bool)

(assert (=> b!6190105 m!7024398))

(assert (=> b!6189546 d!1940476))

(declare-fun bs!1535415 () Bool)

(declare-fun b!6190141 () Bool)

(assert (= bs!1535415 (and b!6190141 b!6189558)))

(declare-fun lambda!338028 () Int)

(assert (=> bs!1535415 (not (= lambda!338028 lambda!337983))))

(assert (=> bs!1535415 (not (= lambda!338028 lambda!337984))))

(assert (=> b!6190141 true))

(assert (=> b!6190141 true))

(declare-fun bs!1535416 () Bool)

(declare-fun b!6190139 () Bool)

(assert (= bs!1535416 (and b!6190139 b!6189558)))

(declare-fun lambda!338029 () Int)

(assert (=> bs!1535416 (not (= lambda!338029 lambda!337983))))

(assert (=> bs!1535416 (= (and (= (regOne!32770 lt!2340702) (regOne!32770 r!7292)) (= (regTwo!32770 lt!2340702) (regTwo!32770 r!7292))) (= lambda!338029 lambda!337984))))

(declare-fun bs!1535417 () Bool)

(assert (= bs!1535417 (and b!6190139 b!6190141)))

(assert (=> bs!1535417 (not (= lambda!338029 lambda!338028))))

(assert (=> b!6190139 true))

(assert (=> b!6190139 true))

(declare-fun b!6190138 () Bool)

(declare-fun e!3769895 () Bool)

(assert (=> b!6190138 (= e!3769895 (= s!2326 (Cons!64562 (c!1116552 lt!2340702) Nil!64562)))))

(declare-fun e!3769893 () Bool)

(declare-fun call!517500 () Bool)

(assert (=> b!6190139 (= e!3769893 call!517500)))

(declare-fun b!6190140 () Bool)

(declare-fun c!1116722 () Bool)

(assert (=> b!6190140 (= c!1116722 ((_ is ElementMatch!16129) lt!2340702))))

(declare-fun e!3769894 () Bool)

(assert (=> b!6190140 (= e!3769894 e!3769895)))

(declare-fun e!3769892 () Bool)

(assert (=> b!6190141 (= e!3769892 call!517500)))

(declare-fun b!6190142 () Bool)

(declare-fun e!3769891 () Bool)

(declare-fun call!517499 () Bool)

(assert (=> b!6190142 (= e!3769891 call!517499)))

(declare-fun bm!517494 () Bool)

(assert (=> bm!517494 (= call!517499 (isEmpty!36550 s!2326))))

(declare-fun b!6190143 () Bool)

(assert (=> b!6190143 (= e!3769891 e!3769894)))

(declare-fun res!2560889 () Bool)

(assert (=> b!6190143 (= res!2560889 (not ((_ is EmptyLang!16129) lt!2340702)))))

(assert (=> b!6190143 (=> (not res!2560889) (not e!3769894))))

(declare-fun b!6190144 () Bool)

(declare-fun e!3769896 () Bool)

(assert (=> b!6190144 (= e!3769896 e!3769893)))

(declare-fun c!1116723 () Bool)

(assert (=> b!6190144 (= c!1116723 ((_ is Star!16129) lt!2340702))))

(declare-fun b!6190145 () Bool)

(declare-fun e!3769890 () Bool)

(assert (=> b!6190145 (= e!3769896 e!3769890)))

(declare-fun res!2560887 () Bool)

(assert (=> b!6190145 (= res!2560887 (matchRSpec!3230 (regOne!32771 lt!2340702) s!2326))))

(assert (=> b!6190145 (=> res!2560887 e!3769890)))

(declare-fun b!6190146 () Bool)

(declare-fun res!2560888 () Bool)

(assert (=> b!6190146 (=> res!2560888 e!3769892)))

(assert (=> b!6190146 (= res!2560888 call!517499)))

(assert (=> b!6190146 (= e!3769893 e!3769892)))

(declare-fun b!6190147 () Bool)

(declare-fun c!1116721 () Bool)

(assert (=> b!6190147 (= c!1116721 ((_ is Union!16129) lt!2340702))))

(assert (=> b!6190147 (= e!3769895 e!3769896)))

(declare-fun b!6190148 () Bool)

(assert (=> b!6190148 (= e!3769890 (matchRSpec!3230 (regTwo!32771 lt!2340702) s!2326))))

(declare-fun bm!517495 () Bool)

(assert (=> bm!517495 (= call!517500 (Exists!3199 (ite c!1116723 lambda!338028 lambda!338029)))))

(declare-fun d!1940478 () Bool)

(declare-fun c!1116724 () Bool)

(assert (=> d!1940478 (= c!1116724 ((_ is EmptyExpr!16129) lt!2340702))))

(assert (=> d!1940478 (= (matchRSpec!3230 lt!2340702 s!2326) e!3769891)))

(assert (= (and d!1940478 c!1116724) b!6190142))

(assert (= (and d!1940478 (not c!1116724)) b!6190143))

(assert (= (and b!6190143 res!2560889) b!6190140))

(assert (= (and b!6190140 c!1116722) b!6190138))

(assert (= (and b!6190140 (not c!1116722)) b!6190147))

(assert (= (and b!6190147 c!1116721) b!6190145))

(assert (= (and b!6190147 (not c!1116721)) b!6190144))

(assert (= (and b!6190145 (not res!2560887)) b!6190148))

(assert (= (and b!6190144 c!1116723) b!6190146))

(assert (= (and b!6190144 (not c!1116723)) b!6190139))

(assert (= (and b!6190146 (not res!2560888)) b!6190141))

(assert (= (or b!6190141 b!6190139) bm!517495))

(assert (= (or b!6190142 b!6190146) bm!517494))

(assert (=> bm!517494 m!7024388))

(declare-fun m!7024400 () Bool)

(assert (=> b!6190145 m!7024400))

(declare-fun m!7024402 () Bool)

(assert (=> b!6190148 m!7024402))

(declare-fun m!7024404 () Bool)

(assert (=> bm!517495 m!7024404))

(assert (=> b!6189546 d!1940478))

(declare-fun b!6190177 () Bool)

(declare-fun e!3769911 () Bool)

(declare-fun e!3769915 () Bool)

(assert (=> b!6190177 (= e!3769911 e!3769915)))

(declare-fun c!1116731 () Bool)

(assert (=> b!6190177 (= c!1116731 ((_ is EmptyLang!16129) lt!2340702))))

(declare-fun b!6190178 () Bool)

(declare-fun e!3769913 () Bool)

(declare-fun e!3769914 () Bool)

(assert (=> b!6190178 (= e!3769913 e!3769914)))

(declare-fun res!2560911 () Bool)

(assert (=> b!6190178 (=> (not res!2560911) (not e!3769914))))

(declare-fun lt!2340799 () Bool)

(assert (=> b!6190178 (= res!2560911 (not lt!2340799))))

(declare-fun b!6190179 () Bool)

(declare-fun res!2560906 () Bool)

(assert (=> b!6190179 (=> res!2560906 e!3769913)))

(assert (=> b!6190179 (= res!2560906 (not ((_ is ElementMatch!16129) lt!2340702)))))

(assert (=> b!6190179 (= e!3769915 e!3769913)))

(declare-fun d!1940480 () Bool)

(assert (=> d!1940480 e!3769911))

(declare-fun c!1116733 () Bool)

(assert (=> d!1940480 (= c!1116733 ((_ is EmptyExpr!16129) lt!2340702))))

(declare-fun e!3769912 () Bool)

(assert (=> d!1940480 (= lt!2340799 e!3769912)))

(declare-fun c!1116732 () Bool)

(assert (=> d!1940480 (= c!1116732 (isEmpty!36550 s!2326))))

(assert (=> d!1940480 (validRegex!7865 lt!2340702)))

(assert (=> d!1940480 (= (matchR!8312 lt!2340702 s!2326) lt!2340799)))

(declare-fun b!6190180 () Bool)

(assert (=> b!6190180 (= e!3769912 (nullable!6122 lt!2340702))))

(declare-fun b!6190181 () Bool)

(declare-fun e!3769917 () Bool)

(assert (=> b!6190181 (= e!3769917 (= (head!12771 s!2326) (c!1116552 lt!2340702)))))

(declare-fun b!6190182 () Bool)

(declare-fun res!2560909 () Bool)

(assert (=> b!6190182 (=> (not res!2560909) (not e!3769917))))

(declare-fun call!517503 () Bool)

(assert (=> b!6190182 (= res!2560909 (not call!517503))))

(declare-fun b!6190183 () Bool)

(declare-fun res!2560907 () Bool)

(assert (=> b!6190183 (=> (not res!2560907) (not e!3769917))))

(assert (=> b!6190183 (= res!2560907 (isEmpty!36550 (tail!11856 s!2326)))))

(declare-fun b!6190184 () Bool)

(assert (=> b!6190184 (= e!3769911 (= lt!2340799 call!517503))))

(declare-fun b!6190185 () Bool)

(declare-fun derivativeStep!4844 (Regex!16129 C!32528) Regex!16129)

(assert (=> b!6190185 (= e!3769912 (matchR!8312 (derivativeStep!4844 lt!2340702 (head!12771 s!2326)) (tail!11856 s!2326)))))

(declare-fun bm!517498 () Bool)

(assert (=> bm!517498 (= call!517503 (isEmpty!36550 s!2326))))

(declare-fun b!6190186 () Bool)

(declare-fun e!3769916 () Bool)

(assert (=> b!6190186 (= e!3769914 e!3769916)))

(declare-fun res!2560913 () Bool)

(assert (=> b!6190186 (=> res!2560913 e!3769916)))

(assert (=> b!6190186 (= res!2560913 call!517503)))

(declare-fun b!6190187 () Bool)

(declare-fun res!2560908 () Bool)

(assert (=> b!6190187 (=> res!2560908 e!3769913)))

(assert (=> b!6190187 (= res!2560908 e!3769917)))

(declare-fun res!2560912 () Bool)

(assert (=> b!6190187 (=> (not res!2560912) (not e!3769917))))

(assert (=> b!6190187 (= res!2560912 lt!2340799)))

(declare-fun b!6190188 () Bool)

(assert (=> b!6190188 (= e!3769916 (not (= (head!12771 s!2326) (c!1116552 lt!2340702))))))

(declare-fun b!6190189 () Bool)

(declare-fun res!2560910 () Bool)

(assert (=> b!6190189 (=> res!2560910 e!3769916)))

(assert (=> b!6190189 (= res!2560910 (not (isEmpty!36550 (tail!11856 s!2326))))))

(declare-fun b!6190190 () Bool)

(assert (=> b!6190190 (= e!3769915 (not lt!2340799))))

(assert (= (and d!1940480 c!1116732) b!6190180))

(assert (= (and d!1940480 (not c!1116732)) b!6190185))

(assert (= (and d!1940480 c!1116733) b!6190184))

(assert (= (and d!1940480 (not c!1116733)) b!6190177))

(assert (= (and b!6190177 c!1116731) b!6190190))

(assert (= (and b!6190177 (not c!1116731)) b!6190179))

(assert (= (and b!6190179 (not res!2560906)) b!6190187))

(assert (= (and b!6190187 res!2560912) b!6190182))

(assert (= (and b!6190182 res!2560909) b!6190183))

(assert (= (and b!6190183 res!2560907) b!6190181))

(assert (= (and b!6190187 (not res!2560908)) b!6190178))

(assert (= (and b!6190178 res!2560911) b!6190186))

(assert (= (and b!6190186 (not res!2560913)) b!6190189))

(assert (= (and b!6190189 (not res!2560910)) b!6190188))

(assert (= (or b!6190184 b!6190182 b!6190186) bm!517498))

(assert (=> bm!517498 m!7024388))

(assert (=> b!6190183 m!7024396))

(assert (=> b!6190183 m!7024396))

(declare-fun m!7024406 () Bool)

(assert (=> b!6190183 m!7024406))

(assert (=> b!6190189 m!7024396))

(assert (=> b!6190189 m!7024396))

(assert (=> b!6190189 m!7024406))

(assert (=> b!6190185 m!7024392))

(assert (=> b!6190185 m!7024392))

(declare-fun m!7024408 () Bool)

(assert (=> b!6190185 m!7024408))

(assert (=> b!6190185 m!7024396))

(assert (=> b!6190185 m!7024408))

(assert (=> b!6190185 m!7024396))

(declare-fun m!7024410 () Bool)

(assert (=> b!6190185 m!7024410))

(assert (=> b!6190181 m!7024392))

(assert (=> d!1940480 m!7024388))

(declare-fun m!7024412 () Bool)

(assert (=> d!1940480 m!7024412))

(assert (=> b!6190188 m!7024392))

(declare-fun m!7024414 () Bool)

(assert (=> b!6190180 m!7024414))

(assert (=> b!6189546 d!1940480))

(declare-fun d!1940482 () Bool)

(assert (=> d!1940482 (= (matchR!8312 lt!2340702 s!2326) (matchRSpec!3230 lt!2340702 s!2326))))

(declare-fun lt!2340802 () Unit!157811)

(declare-fun choose!45989 (Regex!16129 List!64686) Unit!157811)

(assert (=> d!1940482 (= lt!2340802 (choose!45989 lt!2340702 s!2326))))

(assert (=> d!1940482 (validRegex!7865 lt!2340702)))

(assert (=> d!1940482 (= (mainMatchTheorem!3230 lt!2340702 s!2326) lt!2340802)))

(declare-fun bs!1535418 () Bool)

(assert (= bs!1535418 d!1940482))

(assert (=> bs!1535418 m!7023956))

(assert (=> bs!1535418 m!7023948))

(declare-fun m!7024416 () Bool)

(assert (=> bs!1535418 m!7024416))

(assert (=> bs!1535418 m!7024412))

(assert (=> b!6189546 d!1940482))

(declare-fun d!1940484 () Bool)

(assert (=> d!1940484 (= (matchR!8312 lt!2340702 s!2326) (matchZipper!2141 lt!2340699 s!2326))))

(declare-fun lt!2340805 () Unit!157811)

(declare-fun choose!45990 ((InoxSet Context!11026) List!64688 Regex!16129 List!64686) Unit!157811)

(assert (=> d!1940484 (= lt!2340805 (choose!45990 lt!2340699 lt!2340691 lt!2340702 s!2326))))

(assert (=> d!1940484 (validRegex!7865 lt!2340702)))

(assert (=> d!1940484 (= (theoremZipperRegexEquiv!741 lt!2340699 lt!2340691 lt!2340702 s!2326) lt!2340805)))

(declare-fun bs!1535419 () Bool)

(assert (= bs!1535419 d!1940484))

(assert (=> bs!1535419 m!7023956))

(assert (=> bs!1535419 m!7023942))

(declare-fun m!7024418 () Bool)

(assert (=> bs!1535419 m!7024418))

(assert (=> bs!1535419 m!7024412))

(assert (=> b!6189546 d!1940484))

(declare-fun d!1940486 () Bool)

(assert (=> d!1940486 (= (matchR!8312 lt!2340713 s!2326) (matchZipper!2141 lt!2340690 s!2326))))

(declare-fun lt!2340806 () Unit!157811)

(assert (=> d!1940486 (= lt!2340806 (choose!45990 lt!2340690 lt!2340700 lt!2340713 s!2326))))

(assert (=> d!1940486 (validRegex!7865 lt!2340713)))

(assert (=> d!1940486 (= (theoremZipperRegexEquiv!741 lt!2340690 lt!2340700 lt!2340713 s!2326) lt!2340806)))

(declare-fun bs!1535420 () Bool)

(assert (= bs!1535420 d!1940486))

(assert (=> bs!1535420 m!7023954))

(assert (=> bs!1535420 m!7023926))

(declare-fun m!7024420 () Bool)

(assert (=> bs!1535420 m!7024420))

(declare-fun m!7024422 () Bool)

(assert (=> bs!1535420 m!7024422))

(assert (=> b!6189546 d!1940486))

(declare-fun d!1940488 () Bool)

(assert (=> d!1940488 (= (matchR!8312 lt!2340713 s!2326) (matchRSpec!3230 lt!2340713 s!2326))))

(declare-fun lt!2340807 () Unit!157811)

(assert (=> d!1940488 (= lt!2340807 (choose!45989 lt!2340713 s!2326))))

(assert (=> d!1940488 (validRegex!7865 lt!2340713)))

(assert (=> d!1940488 (= (mainMatchTheorem!3230 lt!2340713 s!2326) lt!2340807)))

(declare-fun bs!1535421 () Bool)

(assert (= bs!1535421 d!1940488))

(assert (=> bs!1535421 m!7023954))

(assert (=> bs!1535421 m!7023952))

(declare-fun m!7024424 () Bool)

(assert (=> bs!1535421 m!7024424))

(assert (=> bs!1535421 m!7024422))

(assert (=> b!6189546 d!1940488))

(declare-fun b!6190191 () Bool)

(declare-fun e!3769918 () Bool)

(declare-fun e!3769922 () Bool)

(assert (=> b!6190191 (= e!3769918 e!3769922)))

(declare-fun c!1116734 () Bool)

(assert (=> b!6190191 (= c!1116734 ((_ is EmptyLang!16129) lt!2340713))))

(declare-fun b!6190192 () Bool)

(declare-fun e!3769920 () Bool)

(declare-fun e!3769921 () Bool)

(assert (=> b!6190192 (= e!3769920 e!3769921)))

(declare-fun res!2560919 () Bool)

(assert (=> b!6190192 (=> (not res!2560919) (not e!3769921))))

(declare-fun lt!2340808 () Bool)

(assert (=> b!6190192 (= res!2560919 (not lt!2340808))))

(declare-fun b!6190193 () Bool)

(declare-fun res!2560914 () Bool)

(assert (=> b!6190193 (=> res!2560914 e!3769920)))

(assert (=> b!6190193 (= res!2560914 (not ((_ is ElementMatch!16129) lt!2340713)))))

(assert (=> b!6190193 (= e!3769922 e!3769920)))

(declare-fun d!1940490 () Bool)

(assert (=> d!1940490 e!3769918))

(declare-fun c!1116736 () Bool)

(assert (=> d!1940490 (= c!1116736 ((_ is EmptyExpr!16129) lt!2340713))))

(declare-fun e!3769919 () Bool)

(assert (=> d!1940490 (= lt!2340808 e!3769919)))

(declare-fun c!1116735 () Bool)

(assert (=> d!1940490 (= c!1116735 (isEmpty!36550 s!2326))))

(assert (=> d!1940490 (validRegex!7865 lt!2340713)))

(assert (=> d!1940490 (= (matchR!8312 lt!2340713 s!2326) lt!2340808)))

(declare-fun b!6190194 () Bool)

(assert (=> b!6190194 (= e!3769919 (nullable!6122 lt!2340713))))

(declare-fun b!6190195 () Bool)

(declare-fun e!3769924 () Bool)

(assert (=> b!6190195 (= e!3769924 (= (head!12771 s!2326) (c!1116552 lt!2340713)))))

(declare-fun b!6190196 () Bool)

(declare-fun res!2560917 () Bool)

(assert (=> b!6190196 (=> (not res!2560917) (not e!3769924))))

(declare-fun call!517504 () Bool)

(assert (=> b!6190196 (= res!2560917 (not call!517504))))

(declare-fun b!6190197 () Bool)

(declare-fun res!2560915 () Bool)

(assert (=> b!6190197 (=> (not res!2560915) (not e!3769924))))

(assert (=> b!6190197 (= res!2560915 (isEmpty!36550 (tail!11856 s!2326)))))

(declare-fun b!6190198 () Bool)

(assert (=> b!6190198 (= e!3769918 (= lt!2340808 call!517504))))

(declare-fun b!6190199 () Bool)

(assert (=> b!6190199 (= e!3769919 (matchR!8312 (derivativeStep!4844 lt!2340713 (head!12771 s!2326)) (tail!11856 s!2326)))))

(declare-fun bm!517499 () Bool)

(assert (=> bm!517499 (= call!517504 (isEmpty!36550 s!2326))))

(declare-fun b!6190200 () Bool)

(declare-fun e!3769923 () Bool)

(assert (=> b!6190200 (= e!3769921 e!3769923)))

(declare-fun res!2560921 () Bool)

(assert (=> b!6190200 (=> res!2560921 e!3769923)))

(assert (=> b!6190200 (= res!2560921 call!517504)))

(declare-fun b!6190201 () Bool)

(declare-fun res!2560916 () Bool)

(assert (=> b!6190201 (=> res!2560916 e!3769920)))

(assert (=> b!6190201 (= res!2560916 e!3769924)))

(declare-fun res!2560920 () Bool)

(assert (=> b!6190201 (=> (not res!2560920) (not e!3769924))))

(assert (=> b!6190201 (= res!2560920 lt!2340808)))

(declare-fun b!6190202 () Bool)

(assert (=> b!6190202 (= e!3769923 (not (= (head!12771 s!2326) (c!1116552 lt!2340713))))))

(declare-fun b!6190203 () Bool)

(declare-fun res!2560918 () Bool)

(assert (=> b!6190203 (=> res!2560918 e!3769923)))

(assert (=> b!6190203 (= res!2560918 (not (isEmpty!36550 (tail!11856 s!2326))))))

(declare-fun b!6190204 () Bool)

(assert (=> b!6190204 (= e!3769922 (not lt!2340808))))

(assert (= (and d!1940490 c!1116735) b!6190194))

(assert (= (and d!1940490 (not c!1116735)) b!6190199))

(assert (= (and d!1940490 c!1116736) b!6190198))

(assert (= (and d!1940490 (not c!1116736)) b!6190191))

(assert (= (and b!6190191 c!1116734) b!6190204))

(assert (= (and b!6190191 (not c!1116734)) b!6190193))

(assert (= (and b!6190193 (not res!2560914)) b!6190201))

(assert (= (and b!6190201 res!2560920) b!6190196))

(assert (= (and b!6190196 res!2560917) b!6190197))

(assert (= (and b!6190197 res!2560915) b!6190195))

(assert (= (and b!6190201 (not res!2560916)) b!6190192))

(assert (= (and b!6190192 res!2560919) b!6190200))

(assert (= (and b!6190200 (not res!2560921)) b!6190203))

(assert (= (and b!6190203 (not res!2560918)) b!6190202))

(assert (= (or b!6190198 b!6190196 b!6190200) bm!517499))

(assert (=> bm!517499 m!7024388))

(assert (=> b!6190197 m!7024396))

(assert (=> b!6190197 m!7024396))

(assert (=> b!6190197 m!7024406))

(assert (=> b!6190203 m!7024396))

(assert (=> b!6190203 m!7024396))

(assert (=> b!6190203 m!7024406))

(assert (=> b!6190199 m!7024392))

(assert (=> b!6190199 m!7024392))

(declare-fun m!7024426 () Bool)

(assert (=> b!6190199 m!7024426))

(assert (=> b!6190199 m!7024396))

(assert (=> b!6190199 m!7024426))

(assert (=> b!6190199 m!7024396))

(declare-fun m!7024428 () Bool)

(assert (=> b!6190199 m!7024428))

(assert (=> b!6190195 m!7024392))

(assert (=> d!1940490 m!7024388))

(assert (=> d!1940490 m!7024422))

(assert (=> b!6190202 m!7024392))

(declare-fun m!7024430 () Bool)

(assert (=> b!6190194 m!7024430))

(assert (=> b!6189546 d!1940490))

(declare-fun bs!1535422 () Bool)

(declare-fun d!1940492 () Bool)

(assert (= bs!1535422 (and d!1940492 d!1940474)))

(declare-fun lambda!338030 () Int)

(assert (=> bs!1535422 (= lambda!338030 lambda!338023)))

(declare-fun b!6190205 () Bool)

(declare-fun e!3769929 () Bool)

(declare-fun lt!2340809 () Regex!16129)

(assert (=> b!6190205 (= e!3769929 (isConcat!1064 lt!2340809))))

(declare-fun b!6190206 () Bool)

(declare-fun e!3769930 () Regex!16129)

(declare-fun e!3769926 () Regex!16129)

(assert (=> b!6190206 (= e!3769930 e!3769926)))

(declare-fun c!1116740 () Bool)

(assert (=> b!6190206 (= c!1116740 ((_ is Cons!64563) lt!2340694))))

(declare-fun b!6190207 () Bool)

(declare-fun e!3769927 () Bool)

(assert (=> b!6190207 (= e!3769927 e!3769929)))

(declare-fun c!1116738 () Bool)

(assert (=> b!6190207 (= c!1116738 (isEmpty!36547 (tail!11855 lt!2340694)))))

(declare-fun b!6190208 () Bool)

(assert (=> b!6190208 (= e!3769927 (isEmptyExpr!1541 lt!2340809))))

(declare-fun b!6190209 () Bool)

(declare-fun e!3769928 () Bool)

(assert (=> b!6190209 (= e!3769928 e!3769927)))

(declare-fun c!1116737 () Bool)

(assert (=> b!6190209 (= c!1116737 (isEmpty!36547 lt!2340694))))

(declare-fun b!6190210 () Bool)

(assert (=> b!6190210 (= e!3769929 (= lt!2340809 (head!12770 lt!2340694)))))

(assert (=> d!1940492 e!3769928))

(declare-fun res!2560922 () Bool)

(assert (=> d!1940492 (=> (not res!2560922) (not e!3769928))))

(assert (=> d!1940492 (= res!2560922 (validRegex!7865 lt!2340809))))

(assert (=> d!1940492 (= lt!2340809 e!3769930)))

(declare-fun c!1116739 () Bool)

(declare-fun e!3769925 () Bool)

(assert (=> d!1940492 (= c!1116739 e!3769925)))

(declare-fun res!2560923 () Bool)

(assert (=> d!1940492 (=> (not res!2560923) (not e!3769925))))

(assert (=> d!1940492 (= res!2560923 ((_ is Cons!64563) lt!2340694))))

(assert (=> d!1940492 (forall!15245 lt!2340694 lambda!338030)))

(assert (=> d!1940492 (= (generalisedConcat!1726 lt!2340694) lt!2340809)))

(declare-fun b!6190211 () Bool)

(assert (=> b!6190211 (= e!3769926 EmptyExpr!16129)))

(declare-fun b!6190212 () Bool)

(assert (=> b!6190212 (= e!3769925 (isEmpty!36547 (t!378197 lt!2340694)))))

(declare-fun b!6190213 () Bool)

(assert (=> b!6190213 (= e!3769926 (Concat!24974 (h!71011 lt!2340694) (generalisedConcat!1726 (t!378197 lt!2340694))))))

(declare-fun b!6190214 () Bool)

(assert (=> b!6190214 (= e!3769930 (h!71011 lt!2340694))))

(assert (= (and d!1940492 res!2560923) b!6190212))

(assert (= (and d!1940492 c!1116739) b!6190214))

(assert (= (and d!1940492 (not c!1116739)) b!6190206))

(assert (= (and b!6190206 c!1116740) b!6190213))

(assert (= (and b!6190206 (not c!1116740)) b!6190211))

(assert (= (and d!1940492 res!2560922) b!6190209))

(assert (= (and b!6190209 c!1116737) b!6190208))

(assert (= (and b!6190209 (not c!1116737)) b!6190207))

(assert (= (and b!6190207 c!1116738) b!6190210))

(assert (= (and b!6190207 (not c!1116738)) b!6190205))

(declare-fun m!7024432 () Bool)

(assert (=> b!6190213 m!7024432))

(declare-fun m!7024434 () Bool)

(assert (=> b!6190210 m!7024434))

(declare-fun m!7024436 () Bool)

(assert (=> b!6190207 m!7024436))

(assert (=> b!6190207 m!7024436))

(declare-fun m!7024438 () Bool)

(assert (=> b!6190207 m!7024438))

(declare-fun m!7024440 () Bool)

(assert (=> b!6190212 m!7024440))

(declare-fun m!7024442 () Bool)

(assert (=> d!1940492 m!7024442))

(declare-fun m!7024444 () Bool)

(assert (=> d!1940492 m!7024444))

(declare-fun m!7024446 () Bool)

(assert (=> b!6190205 m!7024446))

(declare-fun m!7024448 () Bool)

(assert (=> b!6190209 m!7024448))

(declare-fun m!7024450 () Bool)

(assert (=> b!6190208 m!7024450))

(assert (=> b!6189546 d!1940492))

(declare-fun bs!1535423 () Bool)

(declare-fun d!1940494 () Bool)

(assert (= bs!1535423 (and d!1940494 d!1940474)))

(declare-fun lambda!338031 () Int)

(assert (=> bs!1535423 (= lambda!338031 lambda!338023)))

(declare-fun bs!1535424 () Bool)

(assert (= bs!1535424 (and d!1940494 d!1940492)))

(assert (=> bs!1535424 (= lambda!338031 lambda!338030)))

(declare-fun b!6190215 () Bool)

(declare-fun e!3769935 () Bool)

(declare-fun lt!2340810 () Regex!16129)

(assert (=> b!6190215 (= e!3769935 (isConcat!1064 lt!2340810))))

(declare-fun b!6190216 () Bool)

(declare-fun e!3769936 () Regex!16129)

(declare-fun e!3769932 () Regex!16129)

(assert (=> b!6190216 (= e!3769936 e!3769932)))

(declare-fun c!1116744 () Bool)

(assert (=> b!6190216 (= c!1116744 ((_ is Cons!64563) lt!2340726))))

(declare-fun b!6190217 () Bool)

(declare-fun e!3769933 () Bool)

(assert (=> b!6190217 (= e!3769933 e!3769935)))

(declare-fun c!1116742 () Bool)

(assert (=> b!6190217 (= c!1116742 (isEmpty!36547 (tail!11855 lt!2340726)))))

(declare-fun b!6190218 () Bool)

(assert (=> b!6190218 (= e!3769933 (isEmptyExpr!1541 lt!2340810))))

(declare-fun b!6190219 () Bool)

(declare-fun e!3769934 () Bool)

(assert (=> b!6190219 (= e!3769934 e!3769933)))

(declare-fun c!1116741 () Bool)

(assert (=> b!6190219 (= c!1116741 (isEmpty!36547 lt!2340726))))

(declare-fun b!6190220 () Bool)

(assert (=> b!6190220 (= e!3769935 (= lt!2340810 (head!12770 lt!2340726)))))

(assert (=> d!1940494 e!3769934))

(declare-fun res!2560924 () Bool)

(assert (=> d!1940494 (=> (not res!2560924) (not e!3769934))))

(assert (=> d!1940494 (= res!2560924 (validRegex!7865 lt!2340810))))

(assert (=> d!1940494 (= lt!2340810 e!3769936)))

(declare-fun c!1116743 () Bool)

(declare-fun e!3769931 () Bool)

(assert (=> d!1940494 (= c!1116743 e!3769931)))

(declare-fun res!2560925 () Bool)

(assert (=> d!1940494 (=> (not res!2560925) (not e!3769931))))

(assert (=> d!1940494 (= res!2560925 ((_ is Cons!64563) lt!2340726))))

(assert (=> d!1940494 (forall!15245 lt!2340726 lambda!338031)))

(assert (=> d!1940494 (= (generalisedConcat!1726 lt!2340726) lt!2340810)))

(declare-fun b!6190221 () Bool)

(assert (=> b!6190221 (= e!3769932 EmptyExpr!16129)))

(declare-fun b!6190222 () Bool)

(assert (=> b!6190222 (= e!3769931 (isEmpty!36547 (t!378197 lt!2340726)))))

(declare-fun b!6190223 () Bool)

(assert (=> b!6190223 (= e!3769932 (Concat!24974 (h!71011 lt!2340726) (generalisedConcat!1726 (t!378197 lt!2340726))))))

(declare-fun b!6190224 () Bool)

(assert (=> b!6190224 (= e!3769936 (h!71011 lt!2340726))))

(assert (= (and d!1940494 res!2560925) b!6190222))

(assert (= (and d!1940494 c!1116743) b!6190224))

(assert (= (and d!1940494 (not c!1116743)) b!6190216))

(assert (= (and b!6190216 c!1116744) b!6190223))

(assert (= (and b!6190216 (not c!1116744)) b!6190221))

(assert (= (and d!1940494 res!2560924) b!6190219))

(assert (= (and b!6190219 c!1116741) b!6190218))

(assert (= (and b!6190219 (not c!1116741)) b!6190217))

(assert (= (and b!6190217 c!1116742) b!6190220))

(assert (= (and b!6190217 (not c!1116742)) b!6190215))

(declare-fun m!7024452 () Bool)

(assert (=> b!6190223 m!7024452))

(declare-fun m!7024454 () Bool)

(assert (=> b!6190220 m!7024454))

(declare-fun m!7024456 () Bool)

(assert (=> b!6190217 m!7024456))

(assert (=> b!6190217 m!7024456))

(declare-fun m!7024458 () Bool)

(assert (=> b!6190217 m!7024458))

(declare-fun m!7024460 () Bool)

(assert (=> b!6190222 m!7024460))

(declare-fun m!7024462 () Bool)

(assert (=> d!1940494 m!7024462))

(declare-fun m!7024464 () Bool)

(assert (=> d!1940494 m!7024464))

(declare-fun m!7024466 () Bool)

(assert (=> b!6190215 m!7024466))

(declare-fun m!7024468 () Bool)

(assert (=> b!6190219 m!7024468))

(declare-fun m!7024470 () Bool)

(assert (=> b!6190218 m!7024470))

(assert (=> b!6189546 d!1940494))

(declare-fun bs!1535425 () Bool)

(declare-fun b!6190228 () Bool)

(assert (= bs!1535425 (and b!6190228 b!6189558)))

(declare-fun lambda!338032 () Int)

(assert (=> bs!1535425 (not (= lambda!338032 lambda!337983))))

(assert (=> bs!1535425 (not (= lambda!338032 lambda!337984))))

(declare-fun bs!1535426 () Bool)

(assert (= bs!1535426 (and b!6190228 b!6190141)))

(assert (=> bs!1535426 (= (and (= (reg!16458 lt!2340713) (reg!16458 lt!2340702)) (= lt!2340713 lt!2340702)) (= lambda!338032 lambda!338028))))

(declare-fun bs!1535427 () Bool)

(assert (= bs!1535427 (and b!6190228 b!6190139)))

(assert (=> bs!1535427 (not (= lambda!338032 lambda!338029))))

(assert (=> b!6190228 true))

(assert (=> b!6190228 true))

(declare-fun bs!1535428 () Bool)

(declare-fun b!6190226 () Bool)

(assert (= bs!1535428 (and b!6190226 b!6190228)))

(declare-fun lambda!338033 () Int)

(assert (=> bs!1535428 (not (= lambda!338033 lambda!338032))))

(declare-fun bs!1535429 () Bool)

(assert (= bs!1535429 (and b!6190226 b!6189558)))

(assert (=> bs!1535429 (not (= lambda!338033 lambda!337983))))

(declare-fun bs!1535430 () Bool)

(assert (= bs!1535430 (and b!6190226 b!6190141)))

(assert (=> bs!1535430 (not (= lambda!338033 lambda!338028))))

(declare-fun bs!1535431 () Bool)

(assert (= bs!1535431 (and b!6190226 b!6190139)))

(assert (=> bs!1535431 (= (and (= (regOne!32770 lt!2340713) (regOne!32770 lt!2340702)) (= (regTwo!32770 lt!2340713) (regTwo!32770 lt!2340702))) (= lambda!338033 lambda!338029))))

(assert (=> bs!1535429 (= (and (= (regOne!32770 lt!2340713) (regOne!32770 r!7292)) (= (regTwo!32770 lt!2340713) (regTwo!32770 r!7292))) (= lambda!338033 lambda!337984))))

(assert (=> b!6190226 true))

(assert (=> b!6190226 true))

(declare-fun b!6190225 () Bool)

(declare-fun e!3769942 () Bool)

(assert (=> b!6190225 (= e!3769942 (= s!2326 (Cons!64562 (c!1116552 lt!2340713) Nil!64562)))))

(declare-fun e!3769940 () Bool)

(declare-fun call!517506 () Bool)

(assert (=> b!6190226 (= e!3769940 call!517506)))

(declare-fun b!6190227 () Bool)

(declare-fun c!1116746 () Bool)

(assert (=> b!6190227 (= c!1116746 ((_ is ElementMatch!16129) lt!2340713))))

(declare-fun e!3769941 () Bool)

(assert (=> b!6190227 (= e!3769941 e!3769942)))

(declare-fun e!3769939 () Bool)

(assert (=> b!6190228 (= e!3769939 call!517506)))

(declare-fun b!6190229 () Bool)

(declare-fun e!3769938 () Bool)

(declare-fun call!517505 () Bool)

(assert (=> b!6190229 (= e!3769938 call!517505)))

(declare-fun bm!517500 () Bool)

(assert (=> bm!517500 (= call!517505 (isEmpty!36550 s!2326))))

(declare-fun b!6190230 () Bool)

(assert (=> b!6190230 (= e!3769938 e!3769941)))

(declare-fun res!2560928 () Bool)

(assert (=> b!6190230 (= res!2560928 (not ((_ is EmptyLang!16129) lt!2340713)))))

(assert (=> b!6190230 (=> (not res!2560928) (not e!3769941))))

(declare-fun b!6190231 () Bool)

(declare-fun e!3769943 () Bool)

(assert (=> b!6190231 (= e!3769943 e!3769940)))

(declare-fun c!1116747 () Bool)

(assert (=> b!6190231 (= c!1116747 ((_ is Star!16129) lt!2340713))))

(declare-fun b!6190232 () Bool)

(declare-fun e!3769937 () Bool)

(assert (=> b!6190232 (= e!3769943 e!3769937)))

(declare-fun res!2560926 () Bool)

(assert (=> b!6190232 (= res!2560926 (matchRSpec!3230 (regOne!32771 lt!2340713) s!2326))))

(assert (=> b!6190232 (=> res!2560926 e!3769937)))

(declare-fun b!6190233 () Bool)

(declare-fun res!2560927 () Bool)

(assert (=> b!6190233 (=> res!2560927 e!3769939)))

(assert (=> b!6190233 (= res!2560927 call!517505)))

(assert (=> b!6190233 (= e!3769940 e!3769939)))

(declare-fun b!6190234 () Bool)

(declare-fun c!1116745 () Bool)

(assert (=> b!6190234 (= c!1116745 ((_ is Union!16129) lt!2340713))))

(assert (=> b!6190234 (= e!3769942 e!3769943)))

(declare-fun b!6190235 () Bool)

(assert (=> b!6190235 (= e!3769937 (matchRSpec!3230 (regTwo!32771 lt!2340713) s!2326))))

(declare-fun bm!517501 () Bool)

(assert (=> bm!517501 (= call!517506 (Exists!3199 (ite c!1116747 lambda!338032 lambda!338033)))))

(declare-fun d!1940496 () Bool)

(declare-fun c!1116748 () Bool)

(assert (=> d!1940496 (= c!1116748 ((_ is EmptyExpr!16129) lt!2340713))))

(assert (=> d!1940496 (= (matchRSpec!3230 lt!2340713 s!2326) e!3769938)))

(assert (= (and d!1940496 c!1116748) b!6190229))

(assert (= (and d!1940496 (not c!1116748)) b!6190230))

(assert (= (and b!6190230 res!2560928) b!6190227))

(assert (= (and b!6190227 c!1116746) b!6190225))

(assert (= (and b!6190227 (not c!1116746)) b!6190234))

(assert (= (and b!6190234 c!1116745) b!6190232))

(assert (= (and b!6190234 (not c!1116745)) b!6190231))

(assert (= (and b!6190232 (not res!2560926)) b!6190235))

(assert (= (and b!6190231 c!1116747) b!6190233))

(assert (= (and b!6190231 (not c!1116747)) b!6190226))

(assert (= (and b!6190233 (not res!2560927)) b!6190228))

(assert (= (or b!6190228 b!6190226) bm!517501))

(assert (= (or b!6190229 b!6190233) bm!517500))

(assert (=> bm!517500 m!7024388))

(declare-fun m!7024472 () Bool)

(assert (=> b!6190232 m!7024472))

(declare-fun m!7024474 () Bool)

(assert (=> b!6190235 m!7024474))

(declare-fun m!7024476 () Bool)

(assert (=> bm!517501 m!7024476))

(assert (=> b!6189546 d!1940496))

(declare-fun d!1940498 () Bool)

(declare-fun c!1116749 () Bool)

(assert (=> d!1940498 (= c!1116749 (isEmpty!36550 (t!378196 s!2326)))))

(declare-fun e!3769944 () Bool)

(assert (=> d!1940498 (= (matchZipper!2141 lt!2340698 (t!378196 s!2326)) e!3769944)))

(declare-fun b!6190236 () Bool)

(assert (=> b!6190236 (= e!3769944 (nullableZipper!1905 lt!2340698))))

(declare-fun b!6190237 () Bool)

(assert (=> b!6190237 (= e!3769944 (matchZipper!2141 (derivationStepZipper!2097 lt!2340698 (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))))))

(assert (= (and d!1940498 c!1116749) b!6190236))

(assert (= (and d!1940498 (not c!1116749)) b!6190237))

(declare-fun m!7024478 () Bool)

(assert (=> d!1940498 m!7024478))

(declare-fun m!7024480 () Bool)

(assert (=> b!6190236 m!7024480))

(declare-fun m!7024482 () Bool)

(assert (=> b!6190237 m!7024482))

(assert (=> b!6190237 m!7024482))

(declare-fun m!7024484 () Bool)

(assert (=> b!6190237 m!7024484))

(declare-fun m!7024486 () Bool)

(assert (=> b!6190237 m!7024486))

(assert (=> b!6190237 m!7024484))

(assert (=> b!6190237 m!7024486))

(declare-fun m!7024488 () Bool)

(assert (=> b!6190237 m!7024488))

(assert (=> b!6189544 d!1940498))

(declare-fun d!1940500 () Bool)

(declare-fun c!1116750 () Bool)

(assert (=> d!1940500 (= c!1116750 (isEmpty!36550 (t!378196 s!2326)))))

(declare-fun e!3769945 () Bool)

(assert (=> d!1940500 (= (matchZipper!2141 lt!2340701 (t!378196 s!2326)) e!3769945)))

(declare-fun b!6190238 () Bool)

(assert (=> b!6190238 (= e!3769945 (nullableZipper!1905 lt!2340701))))

(declare-fun b!6190239 () Bool)

(assert (=> b!6190239 (= e!3769945 (matchZipper!2141 (derivationStepZipper!2097 lt!2340701 (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))))))

(assert (= (and d!1940500 c!1116750) b!6190238))

(assert (= (and d!1940500 (not c!1116750)) b!6190239))

(assert (=> d!1940500 m!7024478))

(declare-fun m!7024490 () Bool)

(assert (=> b!6190238 m!7024490))

(assert (=> b!6190239 m!7024482))

(assert (=> b!6190239 m!7024482))

(declare-fun m!7024492 () Bool)

(assert (=> b!6190239 m!7024492))

(assert (=> b!6190239 m!7024486))

(assert (=> b!6190239 m!7024492))

(assert (=> b!6190239 m!7024486))

(declare-fun m!7024494 () Bool)

(assert (=> b!6190239 m!7024494))

(assert (=> b!6189544 d!1940500))

(declare-fun d!1940502 () Bool)

(declare-fun c!1116751 () Bool)

(assert (=> d!1940502 (= c!1116751 (isEmpty!36550 (t!378196 s!2326)))))

(declare-fun e!3769946 () Bool)

(assert (=> d!1940502 (= (matchZipper!2141 lt!2340709 (t!378196 s!2326)) e!3769946)))

(declare-fun b!6190240 () Bool)

(assert (=> b!6190240 (= e!3769946 (nullableZipper!1905 lt!2340709))))

(declare-fun b!6190241 () Bool)

(assert (=> b!6190241 (= e!3769946 (matchZipper!2141 (derivationStepZipper!2097 lt!2340709 (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))))))

(assert (= (and d!1940502 c!1116751) b!6190240))

(assert (= (and d!1940502 (not c!1116751)) b!6190241))

(assert (=> d!1940502 m!7024478))

(declare-fun m!7024496 () Bool)

(assert (=> b!6190240 m!7024496))

(assert (=> b!6190241 m!7024482))

(assert (=> b!6190241 m!7024482))

(declare-fun m!7024498 () Bool)

(assert (=> b!6190241 m!7024498))

(assert (=> b!6190241 m!7024486))

(assert (=> b!6190241 m!7024498))

(assert (=> b!6190241 m!7024486))

(declare-fun m!7024500 () Bool)

(assert (=> b!6190241 m!7024500))

(assert (=> b!6189544 d!1940502))

(declare-fun e!3769949 () Bool)

(declare-fun d!1940504 () Bool)

(assert (=> d!1940504 (= (matchZipper!2141 ((_ map or) lt!2340709 lt!2340714) (t!378196 s!2326)) e!3769949)))

(declare-fun res!2560931 () Bool)

(assert (=> d!1940504 (=> res!2560931 e!3769949)))

(assert (=> d!1940504 (= res!2560931 (matchZipper!2141 lt!2340709 (t!378196 s!2326)))))

(declare-fun lt!2340813 () Unit!157811)

(declare-fun choose!45991 ((InoxSet Context!11026) (InoxSet Context!11026) List!64686) Unit!157811)

(assert (=> d!1940504 (= lt!2340813 (choose!45991 lt!2340709 lt!2340714 (t!378196 s!2326)))))

(assert (=> d!1940504 (= (lemmaZipperConcatMatchesSameAsBothZippers!960 lt!2340709 lt!2340714 (t!378196 s!2326)) lt!2340813)))

(declare-fun b!6190244 () Bool)

(assert (=> b!6190244 (= e!3769949 (matchZipper!2141 lt!2340714 (t!378196 s!2326)))))

(assert (= (and d!1940504 (not res!2560931)) b!6190244))

(declare-fun m!7024502 () Bool)

(assert (=> d!1940504 m!7024502))

(assert (=> d!1940504 m!7023912))

(declare-fun m!7024504 () Bool)

(assert (=> d!1940504 m!7024504))

(assert (=> b!6190244 m!7023842))

(assert (=> b!6189544 d!1940504))

(declare-fun d!1940506 () Bool)

(declare-fun e!3769952 () Bool)

(assert (=> d!1940506 e!3769952))

(declare-fun res!2560934 () Bool)

(assert (=> d!1940506 (=> (not res!2560934) (not e!3769952))))

(declare-fun lt!2340816 () List!64688)

(declare-fun noDuplicate!1969 (List!64688) Bool)

(assert (=> d!1940506 (= res!2560934 (noDuplicate!1969 lt!2340816))))

(declare-fun choose!45992 ((InoxSet Context!11026)) List!64688)

(assert (=> d!1940506 (= lt!2340816 (choose!45992 z!1189))))

(assert (=> d!1940506 (= (toList!9913 z!1189) lt!2340816)))

(declare-fun b!6190247 () Bool)

(declare-fun content!12060 (List!64688) (InoxSet Context!11026))

(assert (=> b!6190247 (= e!3769952 (= (content!12060 lt!2340816) z!1189))))

(assert (= (and d!1940506 res!2560934) b!6190247))

(declare-fun m!7024506 () Bool)

(assert (=> d!1940506 m!7024506))

(declare-fun m!7024508 () Bool)

(assert (=> d!1940506 m!7024508))

(declare-fun m!7024510 () Bool)

(assert (=> b!6190247 m!7024510))

(assert (=> b!6189545 d!1940506))

(declare-fun d!1940508 () Bool)

(assert (=> d!1940508 (= (isEmpty!36547 (t!378197 (exprs!6013 (h!71012 zl!343)))) ((_ is Nil!64563) (t!378197 (exprs!6013 (h!71012 zl!343)))))))

(assert (=> b!6189548 d!1940508))

(declare-fun e!3769953 () Bool)

(declare-fun d!1940510 () Bool)

(assert (=> d!1940510 (= (matchZipper!2141 ((_ map or) lt!2340698 lt!2340723) (t!378196 s!2326)) e!3769953)))

(declare-fun res!2560935 () Bool)

(assert (=> d!1940510 (=> res!2560935 e!3769953)))

(assert (=> d!1940510 (= res!2560935 (matchZipper!2141 lt!2340698 (t!378196 s!2326)))))

(declare-fun lt!2340817 () Unit!157811)

(assert (=> d!1940510 (= lt!2340817 (choose!45991 lt!2340698 lt!2340723 (t!378196 s!2326)))))

(assert (=> d!1940510 (= (lemmaZipperConcatMatchesSameAsBothZippers!960 lt!2340698 lt!2340723 (t!378196 s!2326)) lt!2340817)))

(declare-fun b!6190248 () Bool)

(assert (=> b!6190248 (= e!3769953 (matchZipper!2141 lt!2340723 (t!378196 s!2326)))))

(assert (= (and d!1940510 (not res!2560935)) b!6190248))

(assert (=> d!1940510 m!7023890))

(assert (=> d!1940510 m!7023888))

(declare-fun m!7024512 () Bool)

(assert (=> d!1940510 m!7024512))

(assert (=> b!6190248 m!7023884))

(assert (=> b!6189529 d!1940510))

(assert (=> b!6189529 d!1940498))

(declare-fun d!1940512 () Bool)

(declare-fun c!1116752 () Bool)

(assert (=> d!1940512 (= c!1116752 (isEmpty!36550 (t!378196 s!2326)))))

(declare-fun e!3769954 () Bool)

(assert (=> d!1940512 (= (matchZipper!2141 ((_ map or) lt!2340698 lt!2340723) (t!378196 s!2326)) e!3769954)))

(declare-fun b!6190249 () Bool)

(assert (=> b!6190249 (= e!3769954 (nullableZipper!1905 ((_ map or) lt!2340698 lt!2340723)))))

(declare-fun b!6190250 () Bool)

(assert (=> b!6190250 (= e!3769954 (matchZipper!2141 (derivationStepZipper!2097 ((_ map or) lt!2340698 lt!2340723) (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))))))

(assert (= (and d!1940512 c!1116752) b!6190249))

(assert (= (and d!1940512 (not c!1116752)) b!6190250))

(assert (=> d!1940512 m!7024478))

(declare-fun m!7024514 () Bool)

(assert (=> b!6190249 m!7024514))

(assert (=> b!6190250 m!7024482))

(assert (=> b!6190250 m!7024482))

(declare-fun m!7024516 () Bool)

(assert (=> b!6190250 m!7024516))

(assert (=> b!6190250 m!7024486))

(assert (=> b!6190250 m!7024516))

(assert (=> b!6190250 m!7024486))

(declare-fun m!7024518 () Bool)

(assert (=> b!6190250 m!7024518))

(assert (=> b!6189529 d!1940512))

(declare-fun b!6190273 () Bool)

(declare-fun c!1116766 () Bool)

(assert (=> b!6190273 (= c!1116766 ((_ is Star!16129) (regTwo!32771 (regOne!32770 r!7292))))))

(declare-fun e!3769967 () (InoxSet Context!11026))

(declare-fun e!3769970 () (InoxSet Context!11026))

(assert (=> b!6190273 (= e!3769967 e!3769970)))

(declare-fun b!6190274 () Bool)

(assert (=> b!6190274 (= e!3769970 ((as const (Array Context!11026 Bool)) false))))

(declare-fun bm!517514 () Bool)

(declare-fun call!517520 () (InoxSet Context!11026))

(declare-fun call!517522 () (InoxSet Context!11026))

(assert (=> bm!517514 (= call!517520 call!517522)))

(declare-fun bm!517515 () Bool)

(declare-fun call!517524 () List!64687)

(declare-fun call!517523 () List!64687)

(assert (=> bm!517515 (= call!517524 call!517523)))

(declare-fun b!6190275 () Bool)

(declare-fun e!3769968 () (InoxSet Context!11026))

(declare-fun call!517519 () (InoxSet Context!11026))

(declare-fun call!517521 () (InoxSet Context!11026))

(assert (=> b!6190275 (= e!3769968 ((_ map or) call!517519 call!517521))))

(declare-fun b!6190276 () Bool)

(declare-fun e!3769972 () (InoxSet Context!11026))

(assert (=> b!6190276 (= e!3769972 e!3769967)))

(declare-fun c!1116764 () Bool)

(assert (=> b!6190276 (= c!1116764 ((_ is Concat!24974) (regTwo!32771 (regOne!32770 r!7292))))))

(declare-fun bm!517516 () Bool)

(declare-fun c!1116767 () Bool)

(declare-fun $colon$colon!2000 (List!64687 Regex!16129) List!64687)

(assert (=> bm!517516 (= call!517523 ($colon$colon!2000 (exprs!6013 lt!2340688) (ite (or c!1116767 c!1116764) (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (regTwo!32771 (regOne!32770 r!7292)))))))

(declare-fun bm!517517 () Bool)

(declare-fun c!1116763 () Bool)

(assert (=> bm!517517 (= call!517519 (derivationStepZipperDown!1377 (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292)))) (ite c!1116763 lt!2340688 (Context!11027 call!517523)) (h!71010 s!2326)))))

(declare-fun bm!517518 () Bool)

(assert (=> bm!517518 (= call!517522 call!517521)))

(declare-fun b!6190277 () Bool)

(declare-fun e!3769969 () Bool)

(assert (=> b!6190277 (= e!3769969 (nullable!6122 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292)))))))

(declare-fun bm!517519 () Bool)

(assert (=> bm!517519 (= call!517521 (derivationStepZipperDown!1377 (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292)))))) (ite (or c!1116763 c!1116767) lt!2340688 (Context!11027 call!517524)) (h!71010 s!2326)))))

(declare-fun b!6190278 () Bool)

(assert (=> b!6190278 (= c!1116767 e!3769969)))

(declare-fun res!2560938 () Bool)

(assert (=> b!6190278 (=> (not res!2560938) (not e!3769969))))

(assert (=> b!6190278 (= res!2560938 ((_ is Concat!24974) (regTwo!32771 (regOne!32770 r!7292))))))

(assert (=> b!6190278 (= e!3769968 e!3769972)))

(declare-fun d!1940514 () Bool)

(declare-fun c!1116765 () Bool)

(assert (=> d!1940514 (= c!1116765 (and ((_ is ElementMatch!16129) (regTwo!32771 (regOne!32770 r!7292))) (= (c!1116552 (regTwo!32771 (regOne!32770 r!7292))) (h!71010 s!2326))))))

(declare-fun e!3769971 () (InoxSet Context!11026))

(assert (=> d!1940514 (= (derivationStepZipperDown!1377 (regTwo!32771 (regOne!32770 r!7292)) lt!2340688 (h!71010 s!2326)) e!3769971)))

(declare-fun b!6190279 () Bool)

(assert (=> b!6190279 (= e!3769967 call!517520)))

(declare-fun b!6190280 () Bool)

(assert (=> b!6190280 (= e!3769970 call!517520)))

(declare-fun b!6190281 () Bool)

(assert (=> b!6190281 (= e!3769971 (store ((as const (Array Context!11026 Bool)) false) lt!2340688 true))))

(declare-fun b!6190282 () Bool)

(assert (=> b!6190282 (= e!3769972 ((_ map or) call!517519 call!517522))))

(declare-fun b!6190283 () Bool)

(assert (=> b!6190283 (= e!3769971 e!3769968)))

(assert (=> b!6190283 (= c!1116763 ((_ is Union!16129) (regTwo!32771 (regOne!32770 r!7292))))))

(assert (= (and d!1940514 c!1116765) b!6190281))

(assert (= (and d!1940514 (not c!1116765)) b!6190283))

(assert (= (and b!6190283 c!1116763) b!6190275))

(assert (= (and b!6190283 (not c!1116763)) b!6190278))

(assert (= (and b!6190278 res!2560938) b!6190277))

(assert (= (and b!6190278 c!1116767) b!6190282))

(assert (= (and b!6190278 (not c!1116767)) b!6190276))

(assert (= (and b!6190276 c!1116764) b!6190279))

(assert (= (and b!6190276 (not c!1116764)) b!6190273))

(assert (= (and b!6190273 c!1116766) b!6190280))

(assert (= (and b!6190273 (not c!1116766)) b!6190274))

(assert (= (or b!6190279 b!6190280) bm!517515))

(assert (= (or b!6190279 b!6190280) bm!517514))

(assert (= (or b!6190282 bm!517515) bm!517516))

(assert (= (or b!6190282 bm!517514) bm!517518))

(assert (= (or b!6190275 bm!517518) bm!517519))

(assert (= (or b!6190275 b!6190282) bm!517517))

(declare-fun m!7024520 () Bool)

(assert (=> b!6190281 m!7024520))

(declare-fun m!7024522 () Bool)

(assert (=> bm!517516 m!7024522))

(declare-fun m!7024524 () Bool)

(assert (=> b!6190277 m!7024524))

(declare-fun m!7024526 () Bool)

(assert (=> bm!517519 m!7024526))

(declare-fun m!7024528 () Bool)

(assert (=> bm!517517 m!7024528))

(assert (=> b!6189549 d!1940514))

(declare-fun b!6190284 () Bool)

(declare-fun c!1116771 () Bool)

(assert (=> b!6190284 (= c!1116771 ((_ is Star!16129) (regOne!32771 (regOne!32770 r!7292))))))

(declare-fun e!3769973 () (InoxSet Context!11026))

(declare-fun e!3769976 () (InoxSet Context!11026))

(assert (=> b!6190284 (= e!3769973 e!3769976)))

(declare-fun b!6190285 () Bool)

(assert (=> b!6190285 (= e!3769976 ((as const (Array Context!11026 Bool)) false))))

(declare-fun bm!517520 () Bool)

(declare-fun call!517526 () (InoxSet Context!11026))

(declare-fun call!517528 () (InoxSet Context!11026))

(assert (=> bm!517520 (= call!517526 call!517528)))

(declare-fun bm!517521 () Bool)

(declare-fun call!517530 () List!64687)

(declare-fun call!517529 () List!64687)

(assert (=> bm!517521 (= call!517530 call!517529)))

(declare-fun b!6190286 () Bool)

(declare-fun e!3769974 () (InoxSet Context!11026))

(declare-fun call!517525 () (InoxSet Context!11026))

(declare-fun call!517527 () (InoxSet Context!11026))

(assert (=> b!6190286 (= e!3769974 ((_ map or) call!517525 call!517527))))

(declare-fun b!6190287 () Bool)

(declare-fun e!3769978 () (InoxSet Context!11026))

(assert (=> b!6190287 (= e!3769978 e!3769973)))

(declare-fun c!1116769 () Bool)

(assert (=> b!6190287 (= c!1116769 ((_ is Concat!24974) (regOne!32771 (regOne!32770 r!7292))))))

(declare-fun c!1116772 () Bool)

(declare-fun bm!517522 () Bool)

(assert (=> bm!517522 (= call!517529 ($colon$colon!2000 (exprs!6013 lt!2340688) (ite (or c!1116772 c!1116769) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (regOne!32771 (regOne!32770 r!7292)))))))

(declare-fun bm!517523 () Bool)

(declare-fun c!1116768 () Bool)

(assert (=> bm!517523 (= call!517525 (derivationStepZipperDown!1377 (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292)))) (ite c!1116768 lt!2340688 (Context!11027 call!517529)) (h!71010 s!2326)))))

(declare-fun bm!517524 () Bool)

(assert (=> bm!517524 (= call!517528 call!517527)))

(declare-fun b!6190288 () Bool)

(declare-fun e!3769975 () Bool)

(assert (=> b!6190288 (= e!3769975 (nullable!6122 (regOne!32770 (regOne!32771 (regOne!32770 r!7292)))))))

(declare-fun bm!517525 () Bool)

(assert (=> bm!517525 (= call!517527 (derivationStepZipperDown!1377 (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292)))))) (ite (or c!1116768 c!1116772) lt!2340688 (Context!11027 call!517530)) (h!71010 s!2326)))))

(declare-fun b!6190289 () Bool)

(assert (=> b!6190289 (= c!1116772 e!3769975)))

(declare-fun res!2560939 () Bool)

(assert (=> b!6190289 (=> (not res!2560939) (not e!3769975))))

(assert (=> b!6190289 (= res!2560939 ((_ is Concat!24974) (regOne!32771 (regOne!32770 r!7292))))))

(assert (=> b!6190289 (= e!3769974 e!3769978)))

(declare-fun d!1940516 () Bool)

(declare-fun c!1116770 () Bool)

(assert (=> d!1940516 (= c!1116770 (and ((_ is ElementMatch!16129) (regOne!32771 (regOne!32770 r!7292))) (= (c!1116552 (regOne!32771 (regOne!32770 r!7292))) (h!71010 s!2326))))))

(declare-fun e!3769977 () (InoxSet Context!11026))

(assert (=> d!1940516 (= (derivationStepZipperDown!1377 (regOne!32771 (regOne!32770 r!7292)) lt!2340688 (h!71010 s!2326)) e!3769977)))

(declare-fun b!6190290 () Bool)

(assert (=> b!6190290 (= e!3769973 call!517526)))

(declare-fun b!6190291 () Bool)

(assert (=> b!6190291 (= e!3769976 call!517526)))

(declare-fun b!6190292 () Bool)

(assert (=> b!6190292 (= e!3769977 (store ((as const (Array Context!11026 Bool)) false) lt!2340688 true))))

(declare-fun b!6190293 () Bool)

(assert (=> b!6190293 (= e!3769978 ((_ map or) call!517525 call!517528))))

(declare-fun b!6190294 () Bool)

(assert (=> b!6190294 (= e!3769977 e!3769974)))

(assert (=> b!6190294 (= c!1116768 ((_ is Union!16129) (regOne!32771 (regOne!32770 r!7292))))))

(assert (= (and d!1940516 c!1116770) b!6190292))

(assert (= (and d!1940516 (not c!1116770)) b!6190294))

(assert (= (and b!6190294 c!1116768) b!6190286))

(assert (= (and b!6190294 (not c!1116768)) b!6190289))

(assert (= (and b!6190289 res!2560939) b!6190288))

(assert (= (and b!6190289 c!1116772) b!6190293))

(assert (= (and b!6190289 (not c!1116772)) b!6190287))

(assert (= (and b!6190287 c!1116769) b!6190290))

(assert (= (and b!6190287 (not c!1116769)) b!6190284))

(assert (= (and b!6190284 c!1116771) b!6190291))

(assert (= (and b!6190284 (not c!1116771)) b!6190285))

(assert (= (or b!6190290 b!6190291) bm!517521))

(assert (= (or b!6190290 b!6190291) bm!517520))

(assert (= (or b!6190293 bm!517521) bm!517522))

(assert (= (or b!6190293 bm!517520) bm!517524))

(assert (= (or b!6190286 bm!517524) bm!517525))

(assert (= (or b!6190286 b!6190293) bm!517523))

(assert (=> b!6190292 m!7024520))

(declare-fun m!7024530 () Bool)

(assert (=> bm!517522 m!7024530))

(declare-fun m!7024532 () Bool)

(assert (=> b!6190288 m!7024532))

(declare-fun m!7024534 () Bool)

(assert (=> bm!517525 m!7024534))

(declare-fun m!7024536 () Bool)

(assert (=> bm!517523 m!7024536))

(assert (=> b!6189549 d!1940516))

(declare-fun bs!1535432 () Bool)

(declare-fun b!6190298 () Bool)

(assert (= bs!1535432 (and b!6190298 b!6190228)))

(declare-fun lambda!338034 () Int)

(assert (=> bs!1535432 (= (and (= (reg!16458 r!7292) (reg!16458 lt!2340713)) (= r!7292 lt!2340713)) (= lambda!338034 lambda!338032))))

(declare-fun bs!1535433 () Bool)

(assert (= bs!1535433 (and b!6190298 b!6189558)))

(assert (=> bs!1535433 (not (= lambda!338034 lambda!337983))))

(declare-fun bs!1535434 () Bool)

(assert (= bs!1535434 (and b!6190298 b!6190141)))

(assert (=> bs!1535434 (= (and (= (reg!16458 r!7292) (reg!16458 lt!2340702)) (= r!7292 lt!2340702)) (= lambda!338034 lambda!338028))))

(declare-fun bs!1535435 () Bool)

(assert (= bs!1535435 (and b!6190298 b!6190139)))

(assert (=> bs!1535435 (not (= lambda!338034 lambda!338029))))

(declare-fun bs!1535436 () Bool)

(assert (= bs!1535436 (and b!6190298 b!6190226)))

(assert (=> bs!1535436 (not (= lambda!338034 lambda!338033))))

(assert (=> bs!1535433 (not (= lambda!338034 lambda!337984))))

(assert (=> b!6190298 true))

(assert (=> b!6190298 true))

(declare-fun bs!1535437 () Bool)

(declare-fun b!6190296 () Bool)

(assert (= bs!1535437 (and b!6190296 b!6190228)))

(declare-fun lambda!338035 () Int)

(assert (=> bs!1535437 (not (= lambda!338035 lambda!338032))))

(declare-fun bs!1535438 () Bool)

(assert (= bs!1535438 (and b!6190296 b!6190298)))

(assert (=> bs!1535438 (not (= lambda!338035 lambda!338034))))

(declare-fun bs!1535439 () Bool)

(assert (= bs!1535439 (and b!6190296 b!6189558)))

(assert (=> bs!1535439 (not (= lambda!338035 lambda!337983))))

(declare-fun bs!1535440 () Bool)

(assert (= bs!1535440 (and b!6190296 b!6190141)))

(assert (=> bs!1535440 (not (= lambda!338035 lambda!338028))))

(declare-fun bs!1535441 () Bool)

(assert (= bs!1535441 (and b!6190296 b!6190139)))

(assert (=> bs!1535441 (= (and (= (regOne!32770 r!7292) (regOne!32770 lt!2340702)) (= (regTwo!32770 r!7292) (regTwo!32770 lt!2340702))) (= lambda!338035 lambda!338029))))

(declare-fun bs!1535442 () Bool)

(assert (= bs!1535442 (and b!6190296 b!6190226)))

(assert (=> bs!1535442 (= (and (= (regOne!32770 r!7292) (regOne!32770 lt!2340713)) (= (regTwo!32770 r!7292) (regTwo!32770 lt!2340713))) (= lambda!338035 lambda!338033))))

(assert (=> bs!1535439 (= lambda!338035 lambda!337984)))

(assert (=> b!6190296 true))

(assert (=> b!6190296 true))

(declare-fun b!6190295 () Bool)

(declare-fun e!3769984 () Bool)

(assert (=> b!6190295 (= e!3769984 (= s!2326 (Cons!64562 (c!1116552 r!7292) Nil!64562)))))

(declare-fun e!3769982 () Bool)

(declare-fun call!517532 () Bool)

(assert (=> b!6190296 (= e!3769982 call!517532)))

(declare-fun b!6190297 () Bool)

(declare-fun c!1116774 () Bool)

(assert (=> b!6190297 (= c!1116774 ((_ is ElementMatch!16129) r!7292))))

(declare-fun e!3769983 () Bool)

(assert (=> b!6190297 (= e!3769983 e!3769984)))

(declare-fun e!3769981 () Bool)

(assert (=> b!6190298 (= e!3769981 call!517532)))

(declare-fun b!6190299 () Bool)

(declare-fun e!3769980 () Bool)

(declare-fun call!517531 () Bool)

(assert (=> b!6190299 (= e!3769980 call!517531)))

(declare-fun bm!517526 () Bool)

(assert (=> bm!517526 (= call!517531 (isEmpty!36550 s!2326))))

(declare-fun b!6190300 () Bool)

(assert (=> b!6190300 (= e!3769980 e!3769983)))

(declare-fun res!2560942 () Bool)

(assert (=> b!6190300 (= res!2560942 (not ((_ is EmptyLang!16129) r!7292)))))

(assert (=> b!6190300 (=> (not res!2560942) (not e!3769983))))

(declare-fun b!6190301 () Bool)

(declare-fun e!3769985 () Bool)

(assert (=> b!6190301 (= e!3769985 e!3769982)))

(declare-fun c!1116775 () Bool)

(assert (=> b!6190301 (= c!1116775 ((_ is Star!16129) r!7292))))

(declare-fun b!6190302 () Bool)

(declare-fun e!3769979 () Bool)

(assert (=> b!6190302 (= e!3769985 e!3769979)))

(declare-fun res!2560940 () Bool)

(assert (=> b!6190302 (= res!2560940 (matchRSpec!3230 (regOne!32771 r!7292) s!2326))))

(assert (=> b!6190302 (=> res!2560940 e!3769979)))

(declare-fun b!6190303 () Bool)

(declare-fun res!2560941 () Bool)

(assert (=> b!6190303 (=> res!2560941 e!3769981)))

(assert (=> b!6190303 (= res!2560941 call!517531)))

(assert (=> b!6190303 (= e!3769982 e!3769981)))

(declare-fun b!6190304 () Bool)

(declare-fun c!1116773 () Bool)

(assert (=> b!6190304 (= c!1116773 ((_ is Union!16129) r!7292))))

(assert (=> b!6190304 (= e!3769984 e!3769985)))

(declare-fun b!6190305 () Bool)

(assert (=> b!6190305 (= e!3769979 (matchRSpec!3230 (regTwo!32771 r!7292) s!2326))))

(declare-fun bm!517527 () Bool)

(assert (=> bm!517527 (= call!517532 (Exists!3199 (ite c!1116775 lambda!338034 lambda!338035)))))

(declare-fun d!1940518 () Bool)

(declare-fun c!1116776 () Bool)

(assert (=> d!1940518 (= c!1116776 ((_ is EmptyExpr!16129) r!7292))))

(assert (=> d!1940518 (= (matchRSpec!3230 r!7292 s!2326) e!3769980)))

(assert (= (and d!1940518 c!1116776) b!6190299))

(assert (= (and d!1940518 (not c!1116776)) b!6190300))

(assert (= (and b!6190300 res!2560942) b!6190297))

(assert (= (and b!6190297 c!1116774) b!6190295))

(assert (= (and b!6190297 (not c!1116774)) b!6190304))

(assert (= (and b!6190304 c!1116773) b!6190302))

(assert (= (and b!6190304 (not c!1116773)) b!6190301))

(assert (= (and b!6190302 (not res!2560940)) b!6190305))

(assert (= (and b!6190301 c!1116775) b!6190303))

(assert (= (and b!6190301 (not c!1116775)) b!6190296))

(assert (= (and b!6190303 (not res!2560941)) b!6190298))

(assert (= (or b!6190298 b!6190296) bm!517527))

(assert (= (or b!6190299 b!6190303) bm!517526))

(assert (=> bm!517526 m!7024388))

(declare-fun m!7024538 () Bool)

(assert (=> b!6190302 m!7024538))

(declare-fun m!7024540 () Bool)

(assert (=> b!6190305 m!7024540))

(declare-fun m!7024542 () Bool)

(assert (=> bm!517527 m!7024542))

(assert (=> b!6189568 d!1940518))

(declare-fun b!6190306 () Bool)

(declare-fun e!3769986 () Bool)

(declare-fun e!3769990 () Bool)

(assert (=> b!6190306 (= e!3769986 e!3769990)))

(declare-fun c!1116777 () Bool)

(assert (=> b!6190306 (= c!1116777 ((_ is EmptyLang!16129) r!7292))))

(declare-fun b!6190307 () Bool)

(declare-fun e!3769988 () Bool)

(declare-fun e!3769989 () Bool)

(assert (=> b!6190307 (= e!3769988 e!3769989)))

(declare-fun res!2560948 () Bool)

(assert (=> b!6190307 (=> (not res!2560948) (not e!3769989))))

(declare-fun lt!2340818 () Bool)

(assert (=> b!6190307 (= res!2560948 (not lt!2340818))))

(declare-fun b!6190308 () Bool)

(declare-fun res!2560943 () Bool)

(assert (=> b!6190308 (=> res!2560943 e!3769988)))

(assert (=> b!6190308 (= res!2560943 (not ((_ is ElementMatch!16129) r!7292)))))

(assert (=> b!6190308 (= e!3769990 e!3769988)))

(declare-fun d!1940520 () Bool)

(assert (=> d!1940520 e!3769986))

(declare-fun c!1116779 () Bool)

(assert (=> d!1940520 (= c!1116779 ((_ is EmptyExpr!16129) r!7292))))

(declare-fun e!3769987 () Bool)

(assert (=> d!1940520 (= lt!2340818 e!3769987)))

(declare-fun c!1116778 () Bool)

(assert (=> d!1940520 (= c!1116778 (isEmpty!36550 s!2326))))

(assert (=> d!1940520 (validRegex!7865 r!7292)))

(assert (=> d!1940520 (= (matchR!8312 r!7292 s!2326) lt!2340818)))

(declare-fun b!6190309 () Bool)

(assert (=> b!6190309 (= e!3769987 (nullable!6122 r!7292))))

(declare-fun b!6190310 () Bool)

(declare-fun e!3769992 () Bool)

(assert (=> b!6190310 (= e!3769992 (= (head!12771 s!2326) (c!1116552 r!7292)))))

(declare-fun b!6190311 () Bool)

(declare-fun res!2560946 () Bool)

(assert (=> b!6190311 (=> (not res!2560946) (not e!3769992))))

(declare-fun call!517533 () Bool)

(assert (=> b!6190311 (= res!2560946 (not call!517533))))

(declare-fun b!6190312 () Bool)

(declare-fun res!2560944 () Bool)

(assert (=> b!6190312 (=> (not res!2560944) (not e!3769992))))

(assert (=> b!6190312 (= res!2560944 (isEmpty!36550 (tail!11856 s!2326)))))

(declare-fun b!6190313 () Bool)

(assert (=> b!6190313 (= e!3769986 (= lt!2340818 call!517533))))

(declare-fun b!6190314 () Bool)

(assert (=> b!6190314 (= e!3769987 (matchR!8312 (derivativeStep!4844 r!7292 (head!12771 s!2326)) (tail!11856 s!2326)))))

(declare-fun bm!517528 () Bool)

(assert (=> bm!517528 (= call!517533 (isEmpty!36550 s!2326))))

(declare-fun b!6190315 () Bool)

(declare-fun e!3769991 () Bool)

(assert (=> b!6190315 (= e!3769989 e!3769991)))

(declare-fun res!2560950 () Bool)

(assert (=> b!6190315 (=> res!2560950 e!3769991)))

(assert (=> b!6190315 (= res!2560950 call!517533)))

(declare-fun b!6190316 () Bool)

(declare-fun res!2560945 () Bool)

(assert (=> b!6190316 (=> res!2560945 e!3769988)))

(assert (=> b!6190316 (= res!2560945 e!3769992)))

(declare-fun res!2560949 () Bool)

(assert (=> b!6190316 (=> (not res!2560949) (not e!3769992))))

(assert (=> b!6190316 (= res!2560949 lt!2340818)))

(declare-fun b!6190317 () Bool)

(assert (=> b!6190317 (= e!3769991 (not (= (head!12771 s!2326) (c!1116552 r!7292))))))

(declare-fun b!6190318 () Bool)

(declare-fun res!2560947 () Bool)

(assert (=> b!6190318 (=> res!2560947 e!3769991)))

(assert (=> b!6190318 (= res!2560947 (not (isEmpty!36550 (tail!11856 s!2326))))))

(declare-fun b!6190319 () Bool)

(assert (=> b!6190319 (= e!3769990 (not lt!2340818))))

(assert (= (and d!1940520 c!1116778) b!6190309))

(assert (= (and d!1940520 (not c!1116778)) b!6190314))

(assert (= (and d!1940520 c!1116779) b!6190313))

(assert (= (and d!1940520 (not c!1116779)) b!6190306))

(assert (= (and b!6190306 c!1116777) b!6190319))

(assert (= (and b!6190306 (not c!1116777)) b!6190308))

(assert (= (and b!6190308 (not res!2560943)) b!6190316))

(assert (= (and b!6190316 res!2560949) b!6190311))

(assert (= (and b!6190311 res!2560946) b!6190312))

(assert (= (and b!6190312 res!2560944) b!6190310))

(assert (= (and b!6190316 (not res!2560945)) b!6190307))

(assert (= (and b!6190307 res!2560948) b!6190315))

(assert (= (and b!6190315 (not res!2560950)) b!6190318))

(assert (= (and b!6190318 (not res!2560947)) b!6190317))

(assert (= (or b!6190313 b!6190311 b!6190315) bm!517528))

(assert (=> bm!517528 m!7024388))

(assert (=> b!6190312 m!7024396))

(assert (=> b!6190312 m!7024396))

(assert (=> b!6190312 m!7024406))

(assert (=> b!6190318 m!7024396))

(assert (=> b!6190318 m!7024396))

(assert (=> b!6190318 m!7024406))

(assert (=> b!6190314 m!7024392))

(assert (=> b!6190314 m!7024392))

(declare-fun m!7024544 () Bool)

(assert (=> b!6190314 m!7024544))

(assert (=> b!6190314 m!7024396))

(assert (=> b!6190314 m!7024544))

(assert (=> b!6190314 m!7024396))

(declare-fun m!7024546 () Bool)

(assert (=> b!6190314 m!7024546))

(assert (=> b!6190310 m!7024392))

(assert (=> d!1940520 m!7024388))

(assert (=> d!1940520 m!7023970))

(assert (=> b!6190317 m!7024392))

(declare-fun m!7024548 () Bool)

(assert (=> b!6190309 m!7024548))

(assert (=> b!6189568 d!1940520))

(declare-fun d!1940522 () Bool)

(assert (=> d!1940522 (= (matchR!8312 r!7292 s!2326) (matchRSpec!3230 r!7292 s!2326))))

(declare-fun lt!2340819 () Unit!157811)

(assert (=> d!1940522 (= lt!2340819 (choose!45989 r!7292 s!2326))))

(assert (=> d!1940522 (validRegex!7865 r!7292)))

(assert (=> d!1940522 (= (mainMatchTheorem!3230 r!7292 s!2326) lt!2340819)))

(declare-fun bs!1535443 () Bool)

(assert (= bs!1535443 d!1940522))

(assert (=> bs!1535443 m!7023864))

(assert (=> bs!1535443 m!7023862))

(declare-fun m!7024550 () Bool)

(assert (=> bs!1535443 m!7024550))

(assert (=> bs!1535443 m!7023970))

(assert (=> b!6189568 d!1940522))

(declare-fun d!1940524 () Bool)

(declare-fun c!1116780 () Bool)

(assert (=> d!1940524 (= c!1116780 (isEmpty!36550 (t!378196 s!2326)))))

(declare-fun e!3769993 () Bool)

(assert (=> d!1940524 (= (matchZipper!2141 lt!2340723 (t!378196 s!2326)) e!3769993)))

(declare-fun b!6190320 () Bool)

(assert (=> b!6190320 (= e!3769993 (nullableZipper!1905 lt!2340723))))

(declare-fun b!6190321 () Bool)

(assert (=> b!6190321 (= e!3769993 (matchZipper!2141 (derivationStepZipper!2097 lt!2340723 (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))))))

(assert (= (and d!1940524 c!1116780) b!6190320))

(assert (= (and d!1940524 (not c!1116780)) b!6190321))

(assert (=> d!1940524 m!7024478))

(declare-fun m!7024552 () Bool)

(assert (=> b!6190320 m!7024552))

(assert (=> b!6190321 m!7024482))

(assert (=> b!6190321 m!7024482))

(declare-fun m!7024554 () Bool)

(assert (=> b!6190321 m!7024554))

(assert (=> b!6190321 m!7024486))

(assert (=> b!6190321 m!7024554))

(assert (=> b!6190321 m!7024486))

(declare-fun m!7024556 () Bool)

(assert (=> b!6190321 m!7024556))

(assert (=> b!6189547 d!1940524))

(assert (=> b!6189541 d!1940476))

(declare-fun bs!1535444 () Bool)

(declare-fun d!1940526 () Bool)

(assert (= bs!1535444 (and d!1940526 d!1940474)))

(declare-fun lambda!338038 () Int)

(assert (=> bs!1535444 (= lambda!338038 lambda!338023)))

(declare-fun bs!1535445 () Bool)

(assert (= bs!1535445 (and d!1940526 d!1940492)))

(assert (=> bs!1535445 (= lambda!338038 lambda!338030)))

(declare-fun bs!1535446 () Bool)

(assert (= bs!1535446 (and d!1940526 d!1940494)))

(assert (=> bs!1535446 (= lambda!338038 lambda!338031)))

(assert (=> d!1940526 (= (inv!83569 setElem!41986) (forall!15245 (exprs!6013 setElem!41986) lambda!338038))))

(declare-fun bs!1535447 () Bool)

(assert (= bs!1535447 d!1940526))

(declare-fun m!7024558 () Bool)

(assert (=> bs!1535447 m!7024558))

(assert (=> setNonEmpty!41986 d!1940526))

(declare-fun bs!1535448 () Bool)

(declare-fun d!1940528 () Bool)

(assert (= bs!1535448 (and d!1940528 d!1940474)))

(declare-fun lambda!338039 () Int)

(assert (=> bs!1535448 (= lambda!338039 lambda!338023)))

(declare-fun bs!1535449 () Bool)

(assert (= bs!1535449 (and d!1940528 d!1940492)))

(assert (=> bs!1535449 (= lambda!338039 lambda!338030)))

(declare-fun bs!1535450 () Bool)

(assert (= bs!1535450 (and d!1940528 d!1940494)))

(assert (=> bs!1535450 (= lambda!338039 lambda!338031)))

(declare-fun bs!1535451 () Bool)

(assert (= bs!1535451 (and d!1940528 d!1940526)))

(assert (=> bs!1535451 (= lambda!338039 lambda!338038)))

(assert (=> d!1940528 (= (inv!83569 (h!71012 zl!343)) (forall!15245 (exprs!6013 (h!71012 zl!343)) lambda!338039))))

(declare-fun bs!1535452 () Bool)

(assert (= bs!1535452 d!1940528))

(declare-fun m!7024560 () Bool)

(assert (=> bs!1535452 m!7024560))

(assert (=> b!6189540 d!1940528))

(declare-fun bs!1535453 () Bool)

(declare-fun d!1940530 () Bool)

(assert (= bs!1535453 (and d!1940530 d!1940474)))

(declare-fun lambda!338042 () Int)

(assert (=> bs!1535453 (= lambda!338042 lambda!338023)))

(declare-fun bs!1535454 () Bool)

(assert (= bs!1535454 (and d!1940530 d!1940526)))

(assert (=> bs!1535454 (= lambda!338042 lambda!338038)))

(declare-fun bs!1535455 () Bool)

(assert (= bs!1535455 (and d!1940530 d!1940492)))

(assert (=> bs!1535455 (= lambda!338042 lambda!338030)))

(declare-fun bs!1535456 () Bool)

(assert (= bs!1535456 (and d!1940530 d!1940528)))

(assert (=> bs!1535456 (= lambda!338042 lambda!338039)))

(declare-fun bs!1535457 () Bool)

(assert (= bs!1535457 (and d!1940530 d!1940494)))

(assert (=> bs!1535457 (= lambda!338042 lambda!338031)))

(declare-fun b!6190342 () Bool)

(declare-fun e!3770007 () Regex!16129)

(assert (=> b!6190342 (= e!3770007 (h!71011 (unfocusZipperList!1550 zl!343)))))

(declare-fun b!6190343 () Bool)

(declare-fun e!3770010 () Bool)

(declare-fun e!3770006 () Bool)

(assert (=> b!6190343 (= e!3770010 e!3770006)))

(declare-fun c!1116789 () Bool)

(assert (=> b!6190343 (= c!1116789 (isEmpty!36547 (unfocusZipperList!1550 zl!343)))))

(declare-fun b!6190344 () Bool)

(declare-fun e!3770011 () Bool)

(declare-fun lt!2340822 () Regex!16129)

(declare-fun isUnion!980 (Regex!16129) Bool)

(assert (=> b!6190344 (= e!3770011 (isUnion!980 lt!2340822))))

(declare-fun b!6190345 () Bool)

(assert (=> b!6190345 (= e!3770011 (= lt!2340822 (head!12770 (unfocusZipperList!1550 zl!343))))))

(declare-fun b!6190346 () Bool)

(declare-fun e!3770008 () Bool)

(assert (=> b!6190346 (= e!3770008 (isEmpty!36547 (t!378197 (unfocusZipperList!1550 zl!343))))))

(declare-fun b!6190347 () Bool)

(declare-fun e!3770009 () Regex!16129)

(assert (=> b!6190347 (= e!3770007 e!3770009)))

(declare-fun c!1116792 () Bool)

(assert (=> b!6190347 (= c!1116792 ((_ is Cons!64563) (unfocusZipperList!1550 zl!343)))))

(declare-fun b!6190348 () Bool)

(assert (=> b!6190348 (= e!3770009 EmptyLang!16129)))

(declare-fun b!6190349 () Bool)

(assert (=> b!6190349 (= e!3770006 e!3770011)))

(declare-fun c!1116791 () Bool)

(assert (=> b!6190349 (= c!1116791 (isEmpty!36547 (tail!11855 (unfocusZipperList!1550 zl!343))))))

(declare-fun b!6190350 () Bool)

(assert (=> b!6190350 (= e!3770009 (Union!16129 (h!71011 (unfocusZipperList!1550 zl!343)) (generalisedUnion!1973 (t!378197 (unfocusZipperList!1550 zl!343)))))))

(assert (=> d!1940530 e!3770010))

(declare-fun res!2560955 () Bool)

(assert (=> d!1940530 (=> (not res!2560955) (not e!3770010))))

(assert (=> d!1940530 (= res!2560955 (validRegex!7865 lt!2340822))))

(assert (=> d!1940530 (= lt!2340822 e!3770007)))

(declare-fun c!1116790 () Bool)

(assert (=> d!1940530 (= c!1116790 e!3770008)))

(declare-fun res!2560956 () Bool)

(assert (=> d!1940530 (=> (not res!2560956) (not e!3770008))))

(assert (=> d!1940530 (= res!2560956 ((_ is Cons!64563) (unfocusZipperList!1550 zl!343)))))

(assert (=> d!1940530 (forall!15245 (unfocusZipperList!1550 zl!343) lambda!338042)))

(assert (=> d!1940530 (= (generalisedUnion!1973 (unfocusZipperList!1550 zl!343)) lt!2340822)))

(declare-fun b!6190351 () Bool)

(declare-fun isEmptyLang!1550 (Regex!16129) Bool)

(assert (=> b!6190351 (= e!3770006 (isEmptyLang!1550 lt!2340822))))

(assert (= (and d!1940530 res!2560956) b!6190346))

(assert (= (and d!1940530 c!1116790) b!6190342))

(assert (= (and d!1940530 (not c!1116790)) b!6190347))

(assert (= (and b!6190347 c!1116792) b!6190350))

(assert (= (and b!6190347 (not c!1116792)) b!6190348))

(assert (= (and d!1940530 res!2560955) b!6190343))

(assert (= (and b!6190343 c!1116789) b!6190351))

(assert (= (and b!6190343 (not c!1116789)) b!6190349))

(assert (= (and b!6190349 c!1116791) b!6190345))

(assert (= (and b!6190349 (not c!1116791)) b!6190344))

(declare-fun m!7024562 () Bool)

(assert (=> b!6190344 m!7024562))

(declare-fun m!7024564 () Bool)

(assert (=> b!6190351 m!7024564))

(assert (=> b!6190343 m!7023898))

(declare-fun m!7024566 () Bool)

(assert (=> b!6190343 m!7024566))

(declare-fun m!7024568 () Bool)

(assert (=> d!1940530 m!7024568))

(assert (=> d!1940530 m!7023898))

(declare-fun m!7024570 () Bool)

(assert (=> d!1940530 m!7024570))

(declare-fun m!7024572 () Bool)

(assert (=> b!6190350 m!7024572))

(assert (=> b!6190349 m!7023898))

(declare-fun m!7024574 () Bool)

(assert (=> b!6190349 m!7024574))

(assert (=> b!6190349 m!7024574))

(declare-fun m!7024576 () Bool)

(assert (=> b!6190349 m!7024576))

(assert (=> b!6190345 m!7023898))

(declare-fun m!7024578 () Bool)

(assert (=> b!6190345 m!7024578))

(declare-fun m!7024580 () Bool)

(assert (=> b!6190346 m!7024580))

(assert (=> b!6189561 d!1940530))

(declare-fun bs!1535458 () Bool)

(declare-fun d!1940532 () Bool)

(assert (= bs!1535458 (and d!1940532 d!1940474)))

(declare-fun lambda!338045 () Int)

(assert (=> bs!1535458 (= lambda!338045 lambda!338023)))

(declare-fun bs!1535459 () Bool)

(assert (= bs!1535459 (and d!1940532 d!1940526)))

(assert (=> bs!1535459 (= lambda!338045 lambda!338038)))

(declare-fun bs!1535460 () Bool)

(assert (= bs!1535460 (and d!1940532 d!1940492)))

(assert (=> bs!1535460 (= lambda!338045 lambda!338030)))

(declare-fun bs!1535461 () Bool)

(assert (= bs!1535461 (and d!1940532 d!1940530)))

(assert (=> bs!1535461 (= lambda!338045 lambda!338042)))

(declare-fun bs!1535462 () Bool)

(assert (= bs!1535462 (and d!1940532 d!1940528)))

(assert (=> bs!1535462 (= lambda!338045 lambda!338039)))

(declare-fun bs!1535463 () Bool)

(assert (= bs!1535463 (and d!1940532 d!1940494)))

(assert (=> bs!1535463 (= lambda!338045 lambda!338031)))

(declare-fun lt!2340825 () List!64687)

(assert (=> d!1940532 (forall!15245 lt!2340825 lambda!338045)))

(declare-fun e!3770014 () List!64687)

(assert (=> d!1940532 (= lt!2340825 e!3770014)))

(declare-fun c!1116795 () Bool)

(assert (=> d!1940532 (= c!1116795 ((_ is Cons!64564) zl!343))))

(assert (=> d!1940532 (= (unfocusZipperList!1550 zl!343) lt!2340825)))

(declare-fun b!6190356 () Bool)

(assert (=> b!6190356 (= e!3770014 (Cons!64563 (generalisedConcat!1726 (exprs!6013 (h!71012 zl!343))) (unfocusZipperList!1550 (t!378198 zl!343))))))

(declare-fun b!6190357 () Bool)

(assert (=> b!6190357 (= e!3770014 Nil!64563)))

(assert (= (and d!1940532 c!1116795) b!6190356))

(assert (= (and d!1940532 (not c!1116795)) b!6190357))

(declare-fun m!7024582 () Bool)

(assert (=> d!1940532 m!7024582))

(assert (=> b!6190356 m!7023896))

(declare-fun m!7024584 () Bool)

(assert (=> b!6190356 m!7024584))

(assert (=> b!6189561 d!1940532))

(declare-fun d!1940534 () Bool)

(declare-fun lt!2340828 () Int)

(assert (=> d!1940534 (>= lt!2340828 0)))

(declare-fun e!3770017 () Int)

(assert (=> d!1940534 (= lt!2340828 e!3770017)))

(declare-fun c!1116798 () Bool)

(assert (=> d!1940534 (= c!1116798 ((_ is Cons!64564) lt!2340691))))

(assert (=> d!1940534 (= (zipperDepthTotal!312 lt!2340691) lt!2340828)))

(declare-fun b!6190362 () Bool)

(declare-fun contextDepthTotal!282 (Context!11026) Int)

(assert (=> b!6190362 (= e!3770017 (+ (contextDepthTotal!282 (h!71012 lt!2340691)) (zipperDepthTotal!312 (t!378198 lt!2340691))))))

(declare-fun b!6190363 () Bool)

(assert (=> b!6190363 (= e!3770017 0)))

(assert (= (and d!1940534 c!1116798) b!6190362))

(assert (= (and d!1940534 (not c!1116798)) b!6190363))

(declare-fun m!7024586 () Bool)

(assert (=> b!6190362 m!7024586))

(declare-fun m!7024588 () Bool)

(assert (=> b!6190362 m!7024588))

(assert (=> b!6189564 d!1940534))

(declare-fun d!1940536 () Bool)

(declare-fun e!3770018 () Bool)

(assert (=> d!1940536 (= (matchZipper!2141 ((_ map or) lt!2340709 lt!2340723) (t!378196 s!2326)) e!3770018)))

(declare-fun res!2560957 () Bool)

(assert (=> d!1940536 (=> res!2560957 e!3770018)))

(assert (=> d!1940536 (= res!2560957 (matchZipper!2141 lt!2340709 (t!378196 s!2326)))))

(declare-fun lt!2340829 () Unit!157811)

(assert (=> d!1940536 (= lt!2340829 (choose!45991 lt!2340709 lt!2340723 (t!378196 s!2326)))))

(assert (=> d!1940536 (= (lemmaZipperConcatMatchesSameAsBothZippers!960 lt!2340709 lt!2340723 (t!378196 s!2326)) lt!2340829)))

(declare-fun b!6190364 () Bool)

(assert (=> b!6190364 (= e!3770018 (matchZipper!2141 lt!2340723 (t!378196 s!2326)))))

(assert (= (and d!1940536 (not res!2560957)) b!6190364))

(assert (=> d!1940536 m!7023904))

(assert (=> d!1940536 m!7023912))

(declare-fun m!7024590 () Bool)

(assert (=> d!1940536 m!7024590))

(assert (=> b!6190364 m!7023884))

(assert (=> b!6189543 d!1940536))

(declare-fun d!1940538 () Bool)

(declare-fun c!1116799 () Bool)

(assert (=> d!1940538 (= c!1116799 (isEmpty!36550 (t!378196 s!2326)))))

(declare-fun e!3770019 () Bool)

(assert (=> d!1940538 (= (matchZipper!2141 ((_ map or) lt!2340709 lt!2340723) (t!378196 s!2326)) e!3770019)))

(declare-fun b!6190365 () Bool)

(assert (=> b!6190365 (= e!3770019 (nullableZipper!1905 ((_ map or) lt!2340709 lt!2340723)))))

(declare-fun b!6190366 () Bool)

(assert (=> b!6190366 (= e!3770019 (matchZipper!2141 (derivationStepZipper!2097 ((_ map or) lt!2340709 lt!2340723) (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))))))

(assert (= (and d!1940538 c!1116799) b!6190365))

(assert (= (and d!1940538 (not c!1116799)) b!6190366))

(assert (=> d!1940538 m!7024478))

(declare-fun m!7024592 () Bool)

(assert (=> b!6190365 m!7024592))

(assert (=> b!6190366 m!7024482))

(assert (=> b!6190366 m!7024482))

(declare-fun m!7024594 () Bool)

(assert (=> b!6190366 m!7024594))

(assert (=> b!6190366 m!7024486))

(assert (=> b!6190366 m!7024594))

(assert (=> b!6190366 m!7024486))

(declare-fun m!7024596 () Bool)

(assert (=> b!6190366 m!7024596))

(assert (=> b!6189543 d!1940538))

(declare-fun d!1940540 () Bool)

(assert (=> d!1940540 (= (isEmpty!36546 (t!378198 zl!343)) ((_ is Nil!64564) (t!378198 zl!343)))))

(assert (=> b!6189542 d!1940540))

(declare-fun bm!517535 () Bool)

(declare-fun call!517542 () Bool)

(declare-fun c!1116805 () Bool)

(assert (=> bm!517535 (= call!517542 (validRegex!7865 (ite c!1116805 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))))))

(declare-fun b!6190385 () Bool)

(declare-fun e!3770035 () Bool)

(declare-fun call!517541 () Bool)

(assert (=> b!6190385 (= e!3770035 call!517541)))

(declare-fun d!1940542 () Bool)

(declare-fun res!2560970 () Bool)

(declare-fun e!3770037 () Bool)

(assert (=> d!1940542 (=> res!2560970 e!3770037)))

(assert (=> d!1940542 (= res!2560970 ((_ is ElementMatch!16129) (regOne!32771 (regOne!32770 r!7292))))))

(assert (=> d!1940542 (= (validRegex!7865 (regOne!32771 (regOne!32770 r!7292))) e!3770037)))

(declare-fun bm!517536 () Bool)

(declare-fun call!517540 () Bool)

(assert (=> bm!517536 (= call!517540 call!517541)))

(declare-fun c!1116804 () Bool)

(declare-fun bm!517537 () Bool)

(assert (=> bm!517537 (= call!517541 (validRegex!7865 (ite c!1116804 (reg!16458 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116805 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292)))))))))

(declare-fun b!6190386 () Bool)

(declare-fun e!3770040 () Bool)

(assert (=> b!6190386 (= e!3770040 call!517540)))

(declare-fun b!6190387 () Bool)

(declare-fun e!3770034 () Bool)

(assert (=> b!6190387 (= e!3770034 e!3770035)))

(declare-fun res!2560969 () Bool)

(assert (=> b!6190387 (= res!2560969 (not (nullable!6122 (reg!16458 (regOne!32771 (regOne!32770 r!7292))))))))

(assert (=> b!6190387 (=> (not res!2560969) (not e!3770035))))

(declare-fun b!6190388 () Bool)

(declare-fun e!3770036 () Bool)

(assert (=> b!6190388 (= e!3770036 call!517540)))

(declare-fun b!6190389 () Bool)

(assert (=> b!6190389 (= e!3770037 e!3770034)))

(assert (=> b!6190389 (= c!1116804 ((_ is Star!16129) (regOne!32771 (regOne!32770 r!7292))))))

(declare-fun b!6190390 () Bool)

(declare-fun res!2560968 () Bool)

(declare-fun e!3770039 () Bool)

(assert (=> b!6190390 (=> res!2560968 e!3770039)))

(assert (=> b!6190390 (= res!2560968 (not ((_ is Concat!24974) (regOne!32771 (regOne!32770 r!7292)))))))

(declare-fun e!3770038 () Bool)

(assert (=> b!6190390 (= e!3770038 e!3770039)))

(declare-fun b!6190391 () Bool)

(assert (=> b!6190391 (= e!3770039 e!3770040)))

(declare-fun res!2560972 () Bool)

(assert (=> b!6190391 (=> (not res!2560972) (not e!3770040))))

(assert (=> b!6190391 (= res!2560972 call!517542)))

(declare-fun b!6190392 () Bool)

(assert (=> b!6190392 (= e!3770034 e!3770038)))

(assert (=> b!6190392 (= c!1116805 ((_ is Union!16129) (regOne!32771 (regOne!32770 r!7292))))))

(declare-fun b!6190393 () Bool)

(declare-fun res!2560971 () Bool)

(assert (=> b!6190393 (=> (not res!2560971) (not e!3770036))))

(assert (=> b!6190393 (= res!2560971 call!517542)))

(assert (=> b!6190393 (= e!3770038 e!3770036)))

(assert (= (and d!1940542 (not res!2560970)) b!6190389))

(assert (= (and b!6190389 c!1116804) b!6190387))

(assert (= (and b!6190389 (not c!1116804)) b!6190392))

(assert (= (and b!6190387 res!2560969) b!6190385))

(assert (= (and b!6190392 c!1116805) b!6190393))

(assert (= (and b!6190392 (not c!1116805)) b!6190390))

(assert (= (and b!6190393 res!2560971) b!6190388))

(assert (= (and b!6190390 (not res!2560968)) b!6190391))

(assert (= (and b!6190391 res!2560972) b!6190386))

(assert (= (or b!6190388 b!6190386) bm!517536))

(assert (= (or b!6190393 b!6190391) bm!517535))

(assert (= (or b!6190385 bm!517536) bm!517537))

(declare-fun m!7024598 () Bool)

(assert (=> bm!517535 m!7024598))

(declare-fun m!7024600 () Bool)

(assert (=> bm!517537 m!7024600))

(declare-fun m!7024602 () Bool)

(assert (=> b!6190387 m!7024602))

(assert (=> b!6189557 d!1940542))

(declare-fun d!1940544 () Bool)

(declare-fun lt!2340832 () Regex!16129)

(assert (=> d!1940544 (validRegex!7865 lt!2340832)))

(assert (=> d!1940544 (= lt!2340832 (generalisedUnion!1973 (unfocusZipperList!1550 zl!343)))))

(assert (=> d!1940544 (= (unfocusZipper!1871 zl!343) lt!2340832)))

(declare-fun bs!1535464 () Bool)

(assert (= bs!1535464 d!1940544))

(declare-fun m!7024604 () Bool)

(assert (=> bs!1535464 m!7024604))

(assert (=> bs!1535464 m!7023898))

(assert (=> bs!1535464 m!7023898))

(assert (=> bs!1535464 m!7023900))

(assert (=> b!6189555 d!1940544))

(declare-fun b!6190394 () Bool)

(declare-fun c!1116809 () Bool)

(assert (=> b!6190394 (= c!1116809 ((_ is Star!16129) (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun e!3770041 () (InoxSet Context!11026))

(declare-fun e!3770044 () (InoxSet Context!11026))

(assert (=> b!6190394 (= e!3770041 e!3770044)))

(declare-fun b!6190395 () Bool)

(assert (=> b!6190395 (= e!3770044 ((as const (Array Context!11026 Bool)) false))))

(declare-fun bm!517538 () Bool)

(declare-fun call!517544 () (InoxSet Context!11026))

(declare-fun call!517546 () (InoxSet Context!11026))

(assert (=> bm!517538 (= call!517544 call!517546)))

(declare-fun bm!517539 () Bool)

(declare-fun call!517548 () List!64687)

(declare-fun call!517547 () List!64687)

(assert (=> bm!517539 (= call!517548 call!517547)))

(declare-fun b!6190396 () Bool)

(declare-fun e!3770042 () (InoxSet Context!11026))

(declare-fun call!517543 () (InoxSet Context!11026))

(declare-fun call!517545 () (InoxSet Context!11026))

(assert (=> b!6190396 (= e!3770042 ((_ map or) call!517543 call!517545))))

(declare-fun b!6190397 () Bool)

(declare-fun e!3770046 () (InoxSet Context!11026))

(assert (=> b!6190397 (= e!3770046 e!3770041)))

(declare-fun c!1116807 () Bool)

(assert (=> b!6190397 (= c!1116807 ((_ is Concat!24974) (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun bm!517540 () Bool)

(declare-fun c!1116810 () Bool)

(assert (=> bm!517540 (= call!517547 ($colon$colon!2000 (exprs!6013 lt!2340688) (ite (or c!1116810 c!1116807) (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (h!71011 (exprs!6013 (h!71012 zl!343))))))))

(declare-fun bm!517541 () Bool)

(declare-fun c!1116806 () Bool)

(assert (=> bm!517541 (= call!517543 (derivationStepZipperDown!1377 (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343))))) (ite c!1116806 lt!2340688 (Context!11027 call!517547)) (h!71010 s!2326)))))

(declare-fun bm!517542 () Bool)

(assert (=> bm!517542 (= call!517546 call!517545)))

(declare-fun b!6190398 () Bool)

(declare-fun e!3770043 () Bool)

(assert (=> b!6190398 (= e!3770043 (nullable!6122 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343))))))))

(declare-fun bm!517543 () Bool)

(assert (=> bm!517543 (= call!517545 (derivationStepZipperDown!1377 (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343))))))) (ite (or c!1116806 c!1116810) lt!2340688 (Context!11027 call!517548)) (h!71010 s!2326)))))

(declare-fun b!6190399 () Bool)

(assert (=> b!6190399 (= c!1116810 e!3770043)))

(declare-fun res!2560973 () Bool)

(assert (=> b!6190399 (=> (not res!2560973) (not e!3770043))))

(assert (=> b!6190399 (= res!2560973 ((_ is Concat!24974) (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(assert (=> b!6190399 (= e!3770042 e!3770046)))

(declare-fun d!1940546 () Bool)

(declare-fun c!1116808 () Bool)

(assert (=> d!1940546 (= c!1116808 (and ((_ is ElementMatch!16129) (h!71011 (exprs!6013 (h!71012 zl!343)))) (= (c!1116552 (h!71011 (exprs!6013 (h!71012 zl!343)))) (h!71010 s!2326))))))

(declare-fun e!3770045 () (InoxSet Context!11026))

(assert (=> d!1940546 (= (derivationStepZipperDown!1377 (h!71011 (exprs!6013 (h!71012 zl!343))) lt!2340688 (h!71010 s!2326)) e!3770045)))

(declare-fun b!6190400 () Bool)

(assert (=> b!6190400 (= e!3770041 call!517544)))

(declare-fun b!6190401 () Bool)

(assert (=> b!6190401 (= e!3770044 call!517544)))

(declare-fun b!6190402 () Bool)

(assert (=> b!6190402 (= e!3770045 (store ((as const (Array Context!11026 Bool)) false) lt!2340688 true))))

(declare-fun b!6190403 () Bool)

(assert (=> b!6190403 (= e!3770046 ((_ map or) call!517543 call!517546))))

(declare-fun b!6190404 () Bool)

(assert (=> b!6190404 (= e!3770045 e!3770042)))

(assert (=> b!6190404 (= c!1116806 ((_ is Union!16129) (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(assert (= (and d!1940546 c!1116808) b!6190402))

(assert (= (and d!1940546 (not c!1116808)) b!6190404))

(assert (= (and b!6190404 c!1116806) b!6190396))

(assert (= (and b!6190404 (not c!1116806)) b!6190399))

(assert (= (and b!6190399 res!2560973) b!6190398))

(assert (= (and b!6190399 c!1116810) b!6190403))

(assert (= (and b!6190399 (not c!1116810)) b!6190397))

(assert (= (and b!6190397 c!1116807) b!6190400))

(assert (= (and b!6190397 (not c!1116807)) b!6190394))

(assert (= (and b!6190394 c!1116809) b!6190401))

(assert (= (and b!6190394 (not c!1116809)) b!6190395))

(assert (= (or b!6190400 b!6190401) bm!517539))

(assert (= (or b!6190400 b!6190401) bm!517538))

(assert (= (or b!6190403 bm!517539) bm!517540))

(assert (= (or b!6190403 bm!517538) bm!517542))

(assert (= (or b!6190396 bm!517542) bm!517543))

(assert (= (or b!6190396 b!6190403) bm!517541))

(assert (=> b!6190402 m!7024520))

(declare-fun m!7024606 () Bool)

(assert (=> bm!517540 m!7024606))

(declare-fun m!7024608 () Bool)

(assert (=> b!6190398 m!7024608))

(declare-fun m!7024610 () Bool)

(assert (=> bm!517543 m!7024610))

(declare-fun m!7024612 () Bool)

(assert (=> bm!517541 m!7024612))

(assert (=> b!6189536 d!1940546))

(declare-fun d!1940548 () Bool)

(declare-fun nullableFct!2080 (Regex!16129) Bool)

(assert (=> d!1940548 (= (nullable!6122 (h!71011 (exprs!6013 (h!71012 zl!343)))) (nullableFct!2080 (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun bs!1535465 () Bool)

(assert (= bs!1535465 d!1940548))

(declare-fun m!7024614 () Bool)

(assert (=> bs!1535465 m!7024614))

(assert (=> b!6189536 d!1940548))

(declare-fun d!1940550 () Bool)

(declare-fun c!1116815 () Bool)

(declare-fun e!3770055 () Bool)

(assert (=> d!1940550 (= c!1116815 e!3770055)))

(declare-fun res!2560976 () Bool)

(assert (=> d!1940550 (=> (not res!2560976) (not e!3770055))))

(assert (=> d!1940550 (= res!2560976 ((_ is Cons!64563) (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))))))))

(declare-fun e!3770053 () (InoxSet Context!11026))

(assert (=> d!1940550 (= (derivationStepZipperUp!1303 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))) (h!71010 s!2326)) e!3770053)))

(declare-fun b!6190415 () Bool)

(declare-fun e!3770054 () (InoxSet Context!11026))

(assert (=> b!6190415 (= e!3770054 ((as const (Array Context!11026 Bool)) false))))

(declare-fun b!6190416 () Bool)

(assert (=> b!6190416 (= e!3770053 e!3770054)))

(declare-fun c!1116816 () Bool)

(assert (=> b!6190416 (= c!1116816 ((_ is Cons!64563) (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))))))))

(declare-fun b!6190417 () Bool)

(assert (=> b!6190417 (= e!3770055 (nullable!6122 (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))))))

(declare-fun bm!517546 () Bool)

(declare-fun call!517551 () (InoxSet Context!11026))

(assert (=> bm!517546 (= call!517551 (derivationStepZipperDown!1377 (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))))) (Context!11027 (t!378197 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) (h!71010 s!2326)))))

(declare-fun b!6190418 () Bool)

(assert (=> b!6190418 (= e!3770054 call!517551)))

(declare-fun b!6190419 () Bool)

(assert (=> b!6190419 (= e!3770053 ((_ map or) call!517551 (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) (h!71010 s!2326))))))

(assert (= (and d!1940550 res!2560976) b!6190417))

(assert (= (and d!1940550 c!1116815) b!6190419))

(assert (= (and d!1940550 (not c!1116815)) b!6190416))

(assert (= (and b!6190416 c!1116816) b!6190418))

(assert (= (and b!6190416 (not c!1116816)) b!6190415))

(assert (= (or b!6190419 b!6190418) bm!517546))

(declare-fun m!7024616 () Bool)

(assert (=> b!6190417 m!7024616))

(declare-fun m!7024618 () Bool)

(assert (=> bm!517546 m!7024618))

(declare-fun m!7024620 () Bool)

(assert (=> b!6190419 m!7024620))

(assert (=> b!6189536 d!1940550))

(declare-fun d!1940552 () Bool)

(declare-fun choose!45993 ((InoxSet Context!11026) Int) (InoxSet Context!11026))

(assert (=> d!1940552 (= (flatMap!1634 z!1189 lambda!337985) (choose!45993 z!1189 lambda!337985))))

(declare-fun bs!1535466 () Bool)

(assert (= bs!1535466 d!1940552))

(declare-fun m!7024622 () Bool)

(assert (=> bs!1535466 m!7024622))

(assert (=> b!6189536 d!1940552))

(declare-fun d!1940554 () Bool)

(declare-fun c!1116817 () Bool)

(declare-fun e!3770058 () Bool)

(assert (=> d!1940554 (= c!1116817 e!3770058)))

(declare-fun res!2560977 () Bool)

(assert (=> d!1940554 (=> (not res!2560977) (not e!3770058))))

(assert (=> d!1940554 (= res!2560977 ((_ is Cons!64563) (exprs!6013 (h!71012 zl!343))))))

(declare-fun e!3770056 () (InoxSet Context!11026))

(assert (=> d!1940554 (= (derivationStepZipperUp!1303 (h!71012 zl!343) (h!71010 s!2326)) e!3770056)))

(declare-fun b!6190420 () Bool)

(declare-fun e!3770057 () (InoxSet Context!11026))

(assert (=> b!6190420 (= e!3770057 ((as const (Array Context!11026 Bool)) false))))

(declare-fun b!6190421 () Bool)

(assert (=> b!6190421 (= e!3770056 e!3770057)))

(declare-fun c!1116818 () Bool)

(assert (=> b!6190421 (= c!1116818 ((_ is Cons!64563) (exprs!6013 (h!71012 zl!343))))))

(declare-fun b!6190422 () Bool)

(assert (=> b!6190422 (= e!3770058 (nullable!6122 (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun bm!517547 () Bool)

(declare-fun call!517552 () (InoxSet Context!11026))

(assert (=> bm!517547 (= call!517552 (derivationStepZipperDown!1377 (h!71011 (exprs!6013 (h!71012 zl!343))) (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343)))) (h!71010 s!2326)))))

(declare-fun b!6190423 () Bool)

(assert (=> b!6190423 (= e!3770057 call!517552)))

(declare-fun b!6190424 () Bool)

(assert (=> b!6190424 (= e!3770056 ((_ map or) call!517552 (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343)))) (h!71010 s!2326))))))

(assert (= (and d!1940554 res!2560977) b!6190422))

(assert (= (and d!1940554 c!1116817) b!6190424))

(assert (= (and d!1940554 (not c!1116817)) b!6190421))

(assert (= (and b!6190421 c!1116818) b!6190423))

(assert (= (and b!6190421 (not c!1116818)) b!6190420))

(assert (= (or b!6190424 b!6190423) bm!517547))

(assert (=> b!6190422 m!7023878))

(declare-fun m!7024624 () Bool)

(assert (=> bm!517547 m!7024624))

(declare-fun m!7024626 () Bool)

(assert (=> b!6190424 m!7024626))

(assert (=> b!6189536 d!1940554))

(declare-fun d!1940556 () Bool)

(declare-fun c!1116819 () Bool)

(declare-fun e!3770061 () Bool)

(assert (=> d!1940556 (= c!1116819 e!3770061)))

(declare-fun res!2560978 () Bool)

(assert (=> d!1940556 (=> (not res!2560978) (not e!3770061))))

(assert (=> d!1940556 (= res!2560978 ((_ is Cons!64563) (exprs!6013 lt!2340688)))))

(declare-fun e!3770059 () (InoxSet Context!11026))

(assert (=> d!1940556 (= (derivationStepZipperUp!1303 lt!2340688 (h!71010 s!2326)) e!3770059)))

(declare-fun b!6190425 () Bool)

(declare-fun e!3770060 () (InoxSet Context!11026))

(assert (=> b!6190425 (= e!3770060 ((as const (Array Context!11026 Bool)) false))))

(declare-fun b!6190426 () Bool)

(assert (=> b!6190426 (= e!3770059 e!3770060)))

(declare-fun c!1116820 () Bool)

(assert (=> b!6190426 (= c!1116820 ((_ is Cons!64563) (exprs!6013 lt!2340688)))))

(declare-fun b!6190427 () Bool)

(assert (=> b!6190427 (= e!3770061 (nullable!6122 (h!71011 (exprs!6013 lt!2340688))))))

(declare-fun bm!517548 () Bool)

(declare-fun call!517553 () (InoxSet Context!11026))

(assert (=> bm!517548 (= call!517553 (derivationStepZipperDown!1377 (h!71011 (exprs!6013 lt!2340688)) (Context!11027 (t!378197 (exprs!6013 lt!2340688))) (h!71010 s!2326)))))

(declare-fun b!6190428 () Bool)

(assert (=> b!6190428 (= e!3770060 call!517553)))

(declare-fun b!6190429 () Bool)

(assert (=> b!6190429 (= e!3770059 ((_ map or) call!517553 (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 lt!2340688))) (h!71010 s!2326))))))

(assert (= (and d!1940556 res!2560978) b!6190427))

(assert (= (and d!1940556 c!1116819) b!6190429))

(assert (= (and d!1940556 (not c!1116819)) b!6190426))

(assert (= (and b!6190426 c!1116820) b!6190428))

(assert (= (and b!6190426 (not c!1116820)) b!6190425))

(assert (= (or b!6190429 b!6190428) bm!517548))

(declare-fun m!7024628 () Bool)

(assert (=> b!6190427 m!7024628))

(declare-fun m!7024630 () Bool)

(assert (=> bm!517548 m!7024630))

(declare-fun m!7024632 () Bool)

(assert (=> b!6190429 m!7024632))

(assert (=> b!6189536 d!1940556))

(declare-fun d!1940558 () Bool)

(declare-fun dynLambda!25459 (Int Context!11026) (InoxSet Context!11026))

(assert (=> d!1940558 (= (flatMap!1634 z!1189 lambda!337985) (dynLambda!25459 lambda!337985 (h!71012 zl!343)))))

(declare-fun lt!2340835 () Unit!157811)

(declare-fun choose!45994 ((InoxSet Context!11026) Context!11026 Int) Unit!157811)

(assert (=> d!1940558 (= lt!2340835 (choose!45994 z!1189 (h!71012 zl!343) lambda!337985))))

(assert (=> d!1940558 (= z!1189 (store ((as const (Array Context!11026 Bool)) false) (h!71012 zl!343) true))))

(assert (=> d!1940558 (= (lemmaFlatMapOnSingletonSet!1160 z!1189 (h!71012 zl!343) lambda!337985) lt!2340835)))

(declare-fun b_lambda!235505 () Bool)

(assert (=> (not b_lambda!235505) (not d!1940558)))

(declare-fun bs!1535467 () Bool)

(assert (= bs!1535467 d!1940558))

(assert (=> bs!1535467 m!7023876))

(declare-fun m!7024634 () Bool)

(assert (=> bs!1535467 m!7024634))

(declare-fun m!7024636 () Bool)

(assert (=> bs!1535467 m!7024636))

(declare-fun m!7024638 () Bool)

(assert (=> bs!1535467 m!7024638))

(assert (=> b!6189536 d!1940558))

(declare-fun d!1940560 () Bool)

(assert (=> d!1940560 (= (flatMap!1634 lt!2340699 lambda!337985) (dynLambda!25459 lambda!337985 lt!2340697))))

(declare-fun lt!2340836 () Unit!157811)

(assert (=> d!1940560 (= lt!2340836 (choose!45994 lt!2340699 lt!2340697 lambda!337985))))

(assert (=> d!1940560 (= lt!2340699 (store ((as const (Array Context!11026 Bool)) false) lt!2340697 true))))

(assert (=> d!1940560 (= (lemmaFlatMapOnSingletonSet!1160 lt!2340699 lt!2340697 lambda!337985) lt!2340836)))

(declare-fun b_lambda!235507 () Bool)

(assert (=> (not b_lambda!235507) (not d!1940560)))

(declare-fun bs!1535468 () Bool)

(assert (= bs!1535468 d!1940560))

(assert (=> bs!1535468 m!7023924))

(declare-fun m!7024640 () Bool)

(assert (=> bs!1535468 m!7024640))

(declare-fun m!7024642 () Bool)

(assert (=> bs!1535468 m!7024642))

(assert (=> bs!1535468 m!7023938))

(assert (=> b!6189539 d!1940560))

(declare-fun d!1940562 () Bool)

(assert (=> d!1940562 (= (nullable!6122 (regTwo!32771 (regOne!32770 r!7292))) (nullableFct!2080 (regTwo!32771 (regOne!32770 r!7292))))))

(declare-fun bs!1535469 () Bool)

(assert (= bs!1535469 d!1940562))

(declare-fun m!7024644 () Bool)

(assert (=> bs!1535469 m!7024644))

(assert (=> b!6189539 d!1940562))

(declare-fun d!1940564 () Bool)

(declare-fun c!1116821 () Bool)

(assert (=> d!1940564 (= c!1116821 (isEmpty!36550 s!2326))))

(declare-fun e!3770062 () Bool)

(assert (=> d!1940564 (= (matchZipper!2141 lt!2340690 s!2326) e!3770062)))

(declare-fun b!6190430 () Bool)

(assert (=> b!6190430 (= e!3770062 (nullableZipper!1905 lt!2340690))))

(declare-fun b!6190431 () Bool)

(assert (=> b!6190431 (= e!3770062 (matchZipper!2141 (derivationStepZipper!2097 lt!2340690 (head!12771 s!2326)) (tail!11856 s!2326)))))

(assert (= (and d!1940564 c!1116821) b!6190430))

(assert (= (and d!1940564 (not c!1116821)) b!6190431))

(assert (=> d!1940564 m!7024388))

(declare-fun m!7024646 () Bool)

(assert (=> b!6190430 m!7024646))

(assert (=> b!6190431 m!7024392))

(assert (=> b!6190431 m!7024392))

(declare-fun m!7024648 () Bool)

(assert (=> b!6190431 m!7024648))

(assert (=> b!6190431 m!7024396))

(assert (=> b!6190431 m!7024648))

(assert (=> b!6190431 m!7024396))

(declare-fun m!7024650 () Bool)

(assert (=> b!6190431 m!7024650))

(assert (=> b!6189539 d!1940564))

(declare-fun d!1940566 () Bool)

(declare-fun c!1116822 () Bool)

(declare-fun e!3770065 () Bool)

(assert (=> d!1940566 (= c!1116822 e!3770065)))

(declare-fun res!2560979 () Bool)

(assert (=> d!1940566 (=> (not res!2560979) (not e!3770065))))

(assert (=> d!1940566 (= res!2560979 ((_ is Cons!64563) (exprs!6013 lt!2340697)))))

(declare-fun e!3770063 () (InoxSet Context!11026))

(assert (=> d!1940566 (= (derivationStepZipperUp!1303 lt!2340697 (h!71010 s!2326)) e!3770063)))

(declare-fun b!6190432 () Bool)

(declare-fun e!3770064 () (InoxSet Context!11026))

(assert (=> b!6190432 (= e!3770064 ((as const (Array Context!11026 Bool)) false))))

(declare-fun b!6190433 () Bool)

(assert (=> b!6190433 (= e!3770063 e!3770064)))

(declare-fun c!1116823 () Bool)

(assert (=> b!6190433 (= c!1116823 ((_ is Cons!64563) (exprs!6013 lt!2340697)))))

(declare-fun b!6190434 () Bool)

(assert (=> b!6190434 (= e!3770065 (nullable!6122 (h!71011 (exprs!6013 lt!2340697))))))

(declare-fun bm!517549 () Bool)

(declare-fun call!517554 () (InoxSet Context!11026))

(assert (=> bm!517549 (= call!517554 (derivationStepZipperDown!1377 (h!71011 (exprs!6013 lt!2340697)) (Context!11027 (t!378197 (exprs!6013 lt!2340697))) (h!71010 s!2326)))))

(declare-fun b!6190435 () Bool)

(assert (=> b!6190435 (= e!3770064 call!517554)))

(declare-fun b!6190436 () Bool)

(assert (=> b!6190436 (= e!3770063 ((_ map or) call!517554 (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 lt!2340697))) (h!71010 s!2326))))))

(assert (= (and d!1940566 res!2560979) b!6190434))

(assert (= (and d!1940566 c!1116822) b!6190436))

(assert (= (and d!1940566 (not c!1116822)) b!6190433))

(assert (= (and b!6190433 c!1116823) b!6190435))

(assert (= (and b!6190433 (not c!1116823)) b!6190432))

(assert (= (or b!6190436 b!6190435) bm!517549))

(declare-fun m!7024652 () Bool)

(assert (=> b!6190434 m!7024652))

(declare-fun m!7024654 () Bool)

(assert (=> bm!517549 m!7024654))

(declare-fun m!7024656 () Bool)

(assert (=> b!6190436 m!7024656))

(assert (=> b!6189539 d!1940566))

(declare-fun d!1940568 () Bool)

(assert (=> d!1940568 (= (nullable!6122 (regOne!32771 (regOne!32770 r!7292))) (nullableFct!2080 (regOne!32771 (regOne!32770 r!7292))))))

(declare-fun bs!1535470 () Bool)

(assert (= bs!1535470 d!1940568))

(declare-fun m!7024658 () Bool)

(assert (=> bs!1535470 m!7024658))

(assert (=> b!6189539 d!1940568))

(declare-fun d!1940570 () Bool)

(assert (=> d!1940570 (= (flatMap!1634 lt!2340690 lambda!337985) (dynLambda!25459 lambda!337985 lt!2340703))))

(declare-fun lt!2340837 () Unit!157811)

(assert (=> d!1940570 (= lt!2340837 (choose!45994 lt!2340690 lt!2340703 lambda!337985))))

(assert (=> d!1940570 (= lt!2340690 (store ((as const (Array Context!11026 Bool)) false) lt!2340703 true))))

(assert (=> d!1940570 (= (lemmaFlatMapOnSingletonSet!1160 lt!2340690 lt!2340703 lambda!337985) lt!2340837)))

(declare-fun b_lambda!235509 () Bool)

(assert (=> (not b_lambda!235509) (not d!1940570)))

(declare-fun bs!1535471 () Bool)

(assert (= bs!1535471 d!1940570))

(assert (=> bs!1535471 m!7023920))

(declare-fun m!7024660 () Bool)

(assert (=> bs!1535471 m!7024660))

(declare-fun m!7024662 () Bool)

(assert (=> bs!1535471 m!7024662))

(assert (=> bs!1535471 m!7023936))

(assert (=> b!6189539 d!1940570))

(declare-fun d!1940572 () Bool)

(assert (=> d!1940572 (= (flatMap!1634 lt!2340690 lambda!337985) (choose!45993 lt!2340690 lambda!337985))))

(declare-fun bs!1535472 () Bool)

(assert (= bs!1535472 d!1940572))

(declare-fun m!7024664 () Bool)

(assert (=> bs!1535472 m!7024664))

(assert (=> b!6189539 d!1940572))

(declare-fun d!1940574 () Bool)

(declare-fun c!1116824 () Bool)

(declare-fun e!3770068 () Bool)

(assert (=> d!1940574 (= c!1116824 e!3770068)))

(declare-fun res!2560980 () Bool)

(assert (=> d!1940574 (=> (not res!2560980) (not e!3770068))))

(assert (=> d!1940574 (= res!2560980 ((_ is Cons!64563) (exprs!6013 lt!2340703)))))

(declare-fun e!3770066 () (InoxSet Context!11026))

(assert (=> d!1940574 (= (derivationStepZipperUp!1303 lt!2340703 (h!71010 s!2326)) e!3770066)))

(declare-fun b!6190437 () Bool)

(declare-fun e!3770067 () (InoxSet Context!11026))

(assert (=> b!6190437 (= e!3770067 ((as const (Array Context!11026 Bool)) false))))

(declare-fun b!6190438 () Bool)

(assert (=> b!6190438 (= e!3770066 e!3770067)))

(declare-fun c!1116825 () Bool)

(assert (=> b!6190438 (= c!1116825 ((_ is Cons!64563) (exprs!6013 lt!2340703)))))

(declare-fun b!6190439 () Bool)

(assert (=> b!6190439 (= e!3770068 (nullable!6122 (h!71011 (exprs!6013 lt!2340703))))))

(declare-fun bm!517550 () Bool)

(declare-fun call!517555 () (InoxSet Context!11026))

(assert (=> bm!517550 (= call!517555 (derivationStepZipperDown!1377 (h!71011 (exprs!6013 lt!2340703)) (Context!11027 (t!378197 (exprs!6013 lt!2340703))) (h!71010 s!2326)))))

(declare-fun b!6190440 () Bool)

(assert (=> b!6190440 (= e!3770067 call!517555)))

(declare-fun b!6190441 () Bool)

(assert (=> b!6190441 (= e!3770066 ((_ map or) call!517555 (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 lt!2340703))) (h!71010 s!2326))))))

(assert (= (and d!1940574 res!2560980) b!6190439))

(assert (= (and d!1940574 c!1116824) b!6190441))

(assert (= (and d!1940574 (not c!1116824)) b!6190438))

(assert (= (and b!6190438 c!1116825) b!6190440))

(assert (= (and b!6190438 (not c!1116825)) b!6190437))

(assert (= (or b!6190441 b!6190440) bm!517550))

(declare-fun m!7024666 () Bool)

(assert (=> b!6190439 m!7024666))

(declare-fun m!7024668 () Bool)

(assert (=> bm!517550 m!7024668))

(declare-fun m!7024670 () Bool)

(assert (=> b!6190441 m!7024670))

(assert (=> b!6189539 d!1940574))

(declare-fun d!1940576 () Bool)

(assert (=> d!1940576 (= (flatMap!1634 lt!2340699 lambda!337985) (choose!45993 lt!2340699 lambda!337985))))

(declare-fun bs!1535473 () Bool)

(assert (= bs!1535473 d!1940576))

(declare-fun m!7024672 () Bool)

(assert (=> bs!1535473 m!7024672))

(assert (=> b!6189539 d!1940576))

(declare-fun d!1940578 () Bool)

(declare-fun c!1116826 () Bool)

(assert (=> d!1940578 (= c!1116826 (isEmpty!36550 s!2326))))

(declare-fun e!3770069 () Bool)

(assert (=> d!1940578 (= (matchZipper!2141 z!1189 s!2326) e!3770069)))

(declare-fun b!6190442 () Bool)

(assert (=> b!6190442 (= e!3770069 (nullableZipper!1905 z!1189))))

(declare-fun b!6190443 () Bool)

(assert (=> b!6190443 (= e!3770069 (matchZipper!2141 (derivationStepZipper!2097 z!1189 (head!12771 s!2326)) (tail!11856 s!2326)))))

(assert (= (and d!1940578 c!1116826) b!6190442))

(assert (= (and d!1940578 (not c!1116826)) b!6190443))

(assert (=> d!1940578 m!7024388))

(declare-fun m!7024674 () Bool)

(assert (=> b!6190442 m!7024674))

(assert (=> b!6190443 m!7024392))

(assert (=> b!6190443 m!7024392))

(declare-fun m!7024676 () Bool)

(assert (=> b!6190443 m!7024676))

(assert (=> b!6190443 m!7024396))

(assert (=> b!6190443 m!7024676))

(assert (=> b!6190443 m!7024396))

(declare-fun m!7024678 () Bool)

(assert (=> b!6190443 m!7024678))

(assert (=> b!6189539 d!1940578))

(declare-fun b!6190462 () Bool)

(declare-fun res!2560994 () Bool)

(declare-fun e!3770084 () Bool)

(assert (=> b!6190462 (=> (not res!2560994) (not e!3770084))))

(declare-fun lt!2340844 () Option!16020)

(declare-fun get!22289 (Option!16020) tuple2!66216)

(assert (=> b!6190462 (= res!2560994 (matchR!8312 (regOne!32770 r!7292) (_1!36411 (get!22289 lt!2340844))))))

(declare-fun b!6190463 () Bool)

(declare-fun e!3770081 () Option!16020)

(assert (=> b!6190463 (= e!3770081 None!16019)))

(declare-fun b!6190464 () Bool)

(declare-fun e!3770083 () Bool)

(assert (=> b!6190464 (= e!3770083 (not (isDefined!12723 lt!2340844)))))

(declare-fun b!6190465 () Bool)

(declare-fun e!3770082 () Option!16020)

(assert (=> b!6190465 (= e!3770082 (Some!16019 (tuple2!66217 Nil!64562 s!2326)))))

(declare-fun b!6190466 () Bool)

(declare-fun ++!14209 (List!64686 List!64686) List!64686)

(assert (=> b!6190466 (= e!3770084 (= (++!14209 (_1!36411 (get!22289 lt!2340844)) (_2!36411 (get!22289 lt!2340844))) s!2326))))

(declare-fun d!1940580 () Bool)

(assert (=> d!1940580 e!3770083))

(declare-fun res!2560993 () Bool)

(assert (=> d!1940580 (=> res!2560993 e!3770083)))

(assert (=> d!1940580 (= res!2560993 e!3770084)))

(declare-fun res!2560992 () Bool)

(assert (=> d!1940580 (=> (not res!2560992) (not e!3770084))))

(assert (=> d!1940580 (= res!2560992 (isDefined!12723 lt!2340844))))

(assert (=> d!1940580 (= lt!2340844 e!3770082)))

(declare-fun c!1116831 () Bool)

(declare-fun e!3770080 () Bool)

(assert (=> d!1940580 (= c!1116831 e!3770080)))

(declare-fun res!2560995 () Bool)

(assert (=> d!1940580 (=> (not res!2560995) (not e!3770080))))

(assert (=> d!1940580 (= res!2560995 (matchR!8312 (regOne!32770 r!7292) Nil!64562))))

(assert (=> d!1940580 (validRegex!7865 (regOne!32770 r!7292))))

(assert (=> d!1940580 (= (findConcatSeparation!2434 (regOne!32770 r!7292) (regTwo!32770 r!7292) Nil!64562 s!2326 s!2326) lt!2340844)))

(declare-fun b!6190467 () Bool)

(assert (=> b!6190467 (= e!3770080 (matchR!8312 (regTwo!32770 r!7292) s!2326))))

(declare-fun b!6190468 () Bool)

(assert (=> b!6190468 (= e!3770082 e!3770081)))

(declare-fun c!1116832 () Bool)

(assert (=> b!6190468 (= c!1116832 ((_ is Nil!64562) s!2326))))

(declare-fun b!6190469 () Bool)

(declare-fun lt!2340846 () Unit!157811)

(declare-fun lt!2340845 () Unit!157811)

(assert (=> b!6190469 (= lt!2340846 lt!2340845)))

(assert (=> b!6190469 (= (++!14209 (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562)) (t!378196 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2304 (List!64686 C!32528 List!64686 List!64686) Unit!157811)

(assert (=> b!6190469 (= lt!2340845 (lemmaMoveElementToOtherListKeepsConcatEq!2304 Nil!64562 (h!71010 s!2326) (t!378196 s!2326) s!2326))))

(assert (=> b!6190469 (= e!3770081 (findConcatSeparation!2434 (regOne!32770 r!7292) (regTwo!32770 r!7292) (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562)) (t!378196 s!2326) s!2326))))

(declare-fun b!6190470 () Bool)

(declare-fun res!2560991 () Bool)

(assert (=> b!6190470 (=> (not res!2560991) (not e!3770084))))

(assert (=> b!6190470 (= res!2560991 (matchR!8312 (regTwo!32770 r!7292) (_2!36411 (get!22289 lt!2340844))))))

(assert (= (and d!1940580 res!2560995) b!6190467))

(assert (= (and d!1940580 c!1116831) b!6190465))

(assert (= (and d!1940580 (not c!1116831)) b!6190468))

(assert (= (and b!6190468 c!1116832) b!6190463))

(assert (= (and b!6190468 (not c!1116832)) b!6190469))

(assert (= (and d!1940580 res!2560992) b!6190462))

(assert (= (and b!6190462 res!2560994) b!6190470))

(assert (= (and b!6190470 res!2560991) b!6190466))

(assert (= (and d!1940580 (not res!2560993)) b!6190464))

(declare-fun m!7024680 () Bool)

(assert (=> b!6190466 m!7024680))

(declare-fun m!7024682 () Bool)

(assert (=> b!6190466 m!7024682))

(declare-fun m!7024684 () Bool)

(assert (=> b!6190464 m!7024684))

(declare-fun m!7024686 () Bool)

(assert (=> b!6190469 m!7024686))

(assert (=> b!6190469 m!7024686))

(declare-fun m!7024688 () Bool)

(assert (=> b!6190469 m!7024688))

(declare-fun m!7024690 () Bool)

(assert (=> b!6190469 m!7024690))

(assert (=> b!6190469 m!7024686))

(declare-fun m!7024692 () Bool)

(assert (=> b!6190469 m!7024692))

(assert (=> b!6190462 m!7024680))

(declare-fun m!7024694 () Bool)

(assert (=> b!6190462 m!7024694))

(assert (=> b!6190470 m!7024680))

(declare-fun m!7024696 () Bool)

(assert (=> b!6190470 m!7024696))

(assert (=> d!1940580 m!7024684))

(declare-fun m!7024698 () Bool)

(assert (=> d!1940580 m!7024698))

(declare-fun m!7024700 () Bool)

(assert (=> d!1940580 m!7024700))

(declare-fun m!7024702 () Bool)

(assert (=> b!6190467 m!7024702))

(assert (=> b!6189558 d!1940580))

(declare-fun d!1940582 () Bool)

(declare-fun choose!45995 (Int) Bool)

(assert (=> d!1940582 (= (Exists!3199 lambda!337984) (choose!45995 lambda!337984))))

(declare-fun bs!1535474 () Bool)

(assert (= bs!1535474 d!1940582))

(declare-fun m!7024704 () Bool)

(assert (=> bs!1535474 m!7024704))

(assert (=> b!6189558 d!1940582))

(declare-fun d!1940584 () Bool)

(assert (=> d!1940584 (= (Exists!3199 lambda!337983) (choose!45995 lambda!337983))))

(declare-fun bs!1535475 () Bool)

(assert (= bs!1535475 d!1940584))

(declare-fun m!7024706 () Bool)

(assert (=> bs!1535475 m!7024706))

(assert (=> b!6189558 d!1940584))

(declare-fun bs!1535476 () Bool)

(declare-fun d!1940586 () Bool)

(assert (= bs!1535476 (and d!1940586 b!6190228)))

(declare-fun lambda!338048 () Int)

(assert (=> bs!1535476 (not (= lambda!338048 lambda!338032))))

(declare-fun bs!1535477 () Bool)

(assert (= bs!1535477 (and d!1940586 b!6190298)))

(assert (=> bs!1535477 (not (= lambda!338048 lambda!338034))))

(declare-fun bs!1535478 () Bool)

(assert (= bs!1535478 (and d!1940586 b!6189558)))

(assert (=> bs!1535478 (= lambda!338048 lambda!337983)))

(declare-fun bs!1535479 () Bool)

(assert (= bs!1535479 (and d!1940586 b!6190141)))

(assert (=> bs!1535479 (not (= lambda!338048 lambda!338028))))

(declare-fun bs!1535480 () Bool)

(assert (= bs!1535480 (and d!1940586 b!6190139)))

(assert (=> bs!1535480 (not (= lambda!338048 lambda!338029))))

(declare-fun bs!1535481 () Bool)

(assert (= bs!1535481 (and d!1940586 b!6190296)))

(assert (=> bs!1535481 (not (= lambda!338048 lambda!338035))))

(declare-fun bs!1535482 () Bool)

(assert (= bs!1535482 (and d!1940586 b!6190226)))

(assert (=> bs!1535482 (not (= lambda!338048 lambda!338033))))

(assert (=> bs!1535478 (not (= lambda!338048 lambda!337984))))

(assert (=> d!1940586 true))

(assert (=> d!1940586 true))

(assert (=> d!1940586 true))

(assert (=> d!1940586 (= (isDefined!12723 (findConcatSeparation!2434 (regOne!32770 r!7292) (regTwo!32770 r!7292) Nil!64562 s!2326 s!2326)) (Exists!3199 lambda!338048))))

(declare-fun lt!2340849 () Unit!157811)

(declare-fun choose!45996 (Regex!16129 Regex!16129 List!64686) Unit!157811)

(assert (=> d!1940586 (= lt!2340849 (choose!45996 (regOne!32770 r!7292) (regTwo!32770 r!7292) s!2326))))

(assert (=> d!1940586 (validRegex!7865 (regOne!32770 r!7292))))

(assert (=> d!1940586 (= (lemmaFindConcatSeparationEquivalentToExists!2198 (regOne!32770 r!7292) (regTwo!32770 r!7292) s!2326) lt!2340849)))

(declare-fun bs!1535483 () Bool)

(assert (= bs!1535483 d!1940586))

(assert (=> bs!1535483 m!7023850))

(declare-fun m!7024708 () Bool)

(assert (=> bs!1535483 m!7024708))

(assert (=> bs!1535483 m!7024700))

(declare-fun m!7024710 () Bool)

(assert (=> bs!1535483 m!7024710))

(assert (=> bs!1535483 m!7023850))

(assert (=> bs!1535483 m!7023852))

(assert (=> b!6189558 d!1940586))

(declare-fun bs!1535484 () Bool)

(declare-fun d!1940588 () Bool)

(assert (= bs!1535484 (and d!1940588 b!6190228)))

(declare-fun lambda!338053 () Int)

(assert (=> bs!1535484 (not (= lambda!338053 lambda!338032))))

(declare-fun bs!1535485 () Bool)

(assert (= bs!1535485 (and d!1940588 b!6190298)))

(assert (=> bs!1535485 (not (= lambda!338053 lambda!338034))))

(declare-fun bs!1535486 () Bool)

(assert (= bs!1535486 (and d!1940588 b!6189558)))

(assert (=> bs!1535486 (= lambda!338053 lambda!337983)))

(declare-fun bs!1535487 () Bool)

(assert (= bs!1535487 (and d!1940588 b!6190141)))

(assert (=> bs!1535487 (not (= lambda!338053 lambda!338028))))

(declare-fun bs!1535488 () Bool)

(assert (= bs!1535488 (and d!1940588 b!6190139)))

(assert (=> bs!1535488 (not (= lambda!338053 lambda!338029))))

(declare-fun bs!1535489 () Bool)

(assert (= bs!1535489 (and d!1940588 b!6190296)))

(assert (=> bs!1535489 (not (= lambda!338053 lambda!338035))))

(declare-fun bs!1535490 () Bool)

(assert (= bs!1535490 (and d!1940588 d!1940586)))

(assert (=> bs!1535490 (= lambda!338053 lambda!338048)))

(declare-fun bs!1535491 () Bool)

(assert (= bs!1535491 (and d!1940588 b!6190226)))

(assert (=> bs!1535491 (not (= lambda!338053 lambda!338033))))

(assert (=> bs!1535486 (not (= lambda!338053 lambda!337984))))

(assert (=> d!1940588 true))

(assert (=> d!1940588 true))

(assert (=> d!1940588 true))

(declare-fun bs!1535492 () Bool)

(assert (= bs!1535492 d!1940588))

(declare-fun lambda!338054 () Int)

(assert (=> bs!1535492 (not (= lambda!338054 lambda!338053))))

(assert (=> bs!1535484 (not (= lambda!338054 lambda!338032))))

(assert (=> bs!1535485 (not (= lambda!338054 lambda!338034))))

(assert (=> bs!1535486 (not (= lambda!338054 lambda!337983))))

(assert (=> bs!1535487 (not (= lambda!338054 lambda!338028))))

(assert (=> bs!1535488 (= (and (= (regOne!32770 r!7292) (regOne!32770 lt!2340702)) (= (regTwo!32770 r!7292) (regTwo!32770 lt!2340702))) (= lambda!338054 lambda!338029))))

(assert (=> bs!1535489 (= lambda!338054 lambda!338035)))

(assert (=> bs!1535490 (not (= lambda!338054 lambda!338048))))

(assert (=> bs!1535491 (= (and (= (regOne!32770 r!7292) (regOne!32770 lt!2340713)) (= (regTwo!32770 r!7292) (regTwo!32770 lt!2340713))) (= lambda!338054 lambda!338033))))

(assert (=> bs!1535486 (= lambda!338054 lambda!337984)))

(assert (=> d!1940588 true))

(assert (=> d!1940588 true))

(assert (=> d!1940588 true))

(assert (=> d!1940588 (= (Exists!3199 lambda!338053) (Exists!3199 lambda!338054))))

(declare-fun lt!2340852 () Unit!157811)

(declare-fun choose!45997 (Regex!16129 Regex!16129 List!64686) Unit!157811)

(assert (=> d!1940588 (= lt!2340852 (choose!45997 (regOne!32770 r!7292) (regTwo!32770 r!7292) s!2326))))

(assert (=> d!1940588 (validRegex!7865 (regOne!32770 r!7292))))

(assert (=> d!1940588 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1736 (regOne!32770 r!7292) (regTwo!32770 r!7292) s!2326) lt!2340852)))

(declare-fun m!7024712 () Bool)

(assert (=> bs!1535492 m!7024712))

(declare-fun m!7024714 () Bool)

(assert (=> bs!1535492 m!7024714))

(declare-fun m!7024716 () Bool)

(assert (=> bs!1535492 m!7024716))

(assert (=> bs!1535492 m!7024700))

(assert (=> b!6189558 d!1940588))

(declare-fun d!1940590 () Bool)

(declare-fun isEmpty!36551 (Option!16020) Bool)

(assert (=> d!1940590 (= (isDefined!12723 (findConcatSeparation!2434 (regOne!32770 r!7292) (regTwo!32770 r!7292) Nil!64562 s!2326 s!2326)) (not (isEmpty!36551 (findConcatSeparation!2434 (regOne!32770 r!7292) (regTwo!32770 r!7292) Nil!64562 s!2326 s!2326))))))

(declare-fun bs!1535493 () Bool)

(assert (= bs!1535493 d!1940590))

(assert (=> bs!1535493 m!7023850))

(declare-fun m!7024718 () Bool)

(assert (=> bs!1535493 m!7024718))

(assert (=> b!6189558 d!1940590))

(assert (=> b!6189551 d!1940524))

(declare-fun d!1940592 () Bool)

(declare-fun c!1116833 () Bool)

(assert (=> d!1940592 (= c!1116833 (isEmpty!36550 (t!378196 s!2326)))))

(declare-fun e!3770091 () Bool)

(assert (=> d!1940592 (= (matchZipper!2141 lt!2340714 (t!378196 s!2326)) e!3770091)))

(declare-fun b!6190483 () Bool)

(assert (=> b!6190483 (= e!3770091 (nullableZipper!1905 lt!2340714))))

(declare-fun b!6190484 () Bool)

(assert (=> b!6190484 (= e!3770091 (matchZipper!2141 (derivationStepZipper!2097 lt!2340714 (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))))))

(assert (= (and d!1940592 c!1116833) b!6190483))

(assert (= (and d!1940592 (not c!1116833)) b!6190484))

(assert (=> d!1940592 m!7024478))

(declare-fun m!7024720 () Bool)

(assert (=> b!6190483 m!7024720))

(assert (=> b!6190484 m!7024482))

(assert (=> b!6190484 m!7024482))

(declare-fun m!7024722 () Bool)

(assert (=> b!6190484 m!7024722))

(assert (=> b!6190484 m!7024486))

(assert (=> b!6190484 m!7024722))

(assert (=> b!6190484 m!7024486))

(declare-fun m!7024724 () Bool)

(assert (=> b!6190484 m!7024724))

(assert (=> b!6189550 d!1940592))

(declare-fun bm!517551 () Bool)

(declare-fun call!517558 () Bool)

(declare-fun c!1116835 () Bool)

(assert (=> bm!517551 (= call!517558 (validRegex!7865 (ite c!1116835 (regOne!32771 r!7292) (regOne!32770 r!7292))))))

(declare-fun b!6190485 () Bool)

(declare-fun e!3770093 () Bool)

(declare-fun call!517557 () Bool)

(assert (=> b!6190485 (= e!3770093 call!517557)))

(declare-fun d!1940594 () Bool)

(declare-fun res!2561010 () Bool)

(declare-fun e!3770095 () Bool)

(assert (=> d!1940594 (=> res!2561010 e!3770095)))

(assert (=> d!1940594 (= res!2561010 ((_ is ElementMatch!16129) r!7292))))

(assert (=> d!1940594 (= (validRegex!7865 r!7292) e!3770095)))

(declare-fun bm!517552 () Bool)

(declare-fun call!517556 () Bool)

(assert (=> bm!517552 (= call!517556 call!517557)))

(declare-fun c!1116834 () Bool)

(declare-fun bm!517553 () Bool)

(assert (=> bm!517553 (= call!517557 (validRegex!7865 (ite c!1116834 (reg!16458 r!7292) (ite c!1116835 (regTwo!32771 r!7292) (regTwo!32770 r!7292)))))))

(declare-fun b!6190486 () Bool)

(declare-fun e!3770098 () Bool)

(assert (=> b!6190486 (= e!3770098 call!517556)))

(declare-fun b!6190487 () Bool)

(declare-fun e!3770092 () Bool)

(assert (=> b!6190487 (= e!3770092 e!3770093)))

(declare-fun res!2561009 () Bool)

(assert (=> b!6190487 (= res!2561009 (not (nullable!6122 (reg!16458 r!7292))))))

(assert (=> b!6190487 (=> (not res!2561009) (not e!3770093))))

(declare-fun b!6190488 () Bool)

(declare-fun e!3770094 () Bool)

(assert (=> b!6190488 (= e!3770094 call!517556)))

(declare-fun b!6190489 () Bool)

(assert (=> b!6190489 (= e!3770095 e!3770092)))

(assert (=> b!6190489 (= c!1116834 ((_ is Star!16129) r!7292))))

(declare-fun b!6190490 () Bool)

(declare-fun res!2561008 () Bool)

(declare-fun e!3770097 () Bool)

(assert (=> b!6190490 (=> res!2561008 e!3770097)))

(assert (=> b!6190490 (= res!2561008 (not ((_ is Concat!24974) r!7292)))))

(declare-fun e!3770096 () Bool)

(assert (=> b!6190490 (= e!3770096 e!3770097)))

(declare-fun b!6190491 () Bool)

(assert (=> b!6190491 (= e!3770097 e!3770098)))

(declare-fun res!2561012 () Bool)

(assert (=> b!6190491 (=> (not res!2561012) (not e!3770098))))

(assert (=> b!6190491 (= res!2561012 call!517558)))

(declare-fun b!6190492 () Bool)

(assert (=> b!6190492 (= e!3770092 e!3770096)))

(assert (=> b!6190492 (= c!1116835 ((_ is Union!16129) r!7292))))

(declare-fun b!6190493 () Bool)

(declare-fun res!2561011 () Bool)

(assert (=> b!6190493 (=> (not res!2561011) (not e!3770094))))

(assert (=> b!6190493 (= res!2561011 call!517558)))

(assert (=> b!6190493 (= e!3770096 e!3770094)))

(assert (= (and d!1940594 (not res!2561010)) b!6190489))

(assert (= (and b!6190489 c!1116834) b!6190487))

(assert (= (and b!6190489 (not c!1116834)) b!6190492))

(assert (= (and b!6190487 res!2561009) b!6190485))

(assert (= (and b!6190492 c!1116835) b!6190493))

(assert (= (and b!6190492 (not c!1116835)) b!6190490))

(assert (= (and b!6190493 res!2561011) b!6190488))

(assert (= (and b!6190490 (not res!2561008)) b!6190491))

(assert (= (and b!6190491 res!2561012) b!6190486))

(assert (= (or b!6190488 b!6190486) bm!517552))

(assert (= (or b!6190493 b!6190491) bm!517551))

(assert (= (or b!6190485 bm!517552) bm!517553))

(declare-fun m!7024726 () Bool)

(assert (=> bm!517551 m!7024726))

(declare-fun m!7024728 () Bool)

(assert (=> bm!517553 m!7024728))

(declare-fun m!7024730 () Bool)

(assert (=> b!6190487 m!7024730))

(assert (=> start!617358 d!1940594))

(assert (=> b!6189531 d!1940592))

(declare-fun d!1940596 () Bool)

(declare-fun lt!2340853 () Int)

(assert (=> d!1940596 (>= lt!2340853 0)))

(declare-fun e!3770099 () Int)

(assert (=> d!1940596 (= lt!2340853 e!3770099)))

(declare-fun c!1116836 () Bool)

(assert (=> d!1940596 (= c!1116836 ((_ is Cons!64564) zl!343))))

(assert (=> d!1940596 (= (zipperDepthTotal!312 zl!343) lt!2340853)))

(declare-fun b!6190494 () Bool)

(assert (=> b!6190494 (= e!3770099 (+ (contextDepthTotal!282 (h!71012 zl!343)) (zipperDepthTotal!312 (t!378198 zl!343))))))

(declare-fun b!6190495 () Bool)

(assert (=> b!6190495 (= e!3770099 0)))

(assert (= (and d!1940596 c!1116836) b!6190494))

(assert (= (and d!1940596 (not c!1116836)) b!6190495))

(declare-fun m!7024732 () Bool)

(assert (=> b!6190494 m!7024732))

(declare-fun m!7024734 () Bool)

(assert (=> b!6190494 m!7024734))

(assert (=> b!6189554 d!1940596))

(declare-fun d!1940598 () Bool)

(declare-fun lt!2340854 () Int)

(assert (=> d!1940598 (>= lt!2340854 0)))

(declare-fun e!3770100 () Int)

(assert (=> d!1940598 (= lt!2340854 e!3770100)))

(declare-fun c!1116837 () Bool)

(assert (=> d!1940598 (= c!1116837 ((_ is Cons!64564) lt!2340700))))

(assert (=> d!1940598 (= (zipperDepthTotal!312 lt!2340700) lt!2340854)))

(declare-fun b!6190496 () Bool)

(assert (=> b!6190496 (= e!3770100 (+ (contextDepthTotal!282 (h!71012 lt!2340700)) (zipperDepthTotal!312 (t!378198 lt!2340700))))))

(declare-fun b!6190497 () Bool)

(assert (=> b!6190497 (= e!3770100 0)))

(assert (= (and d!1940598 c!1116837) b!6190496))

(assert (= (and d!1940598 (not c!1116837)) b!6190497))

(declare-fun m!7024736 () Bool)

(assert (=> b!6190496 m!7024736))

(declare-fun m!7024738 () Bool)

(assert (=> b!6190496 m!7024738))

(assert (=> b!6189554 d!1940598))

(declare-fun bs!1535494 () Bool)

(declare-fun d!1940600 () Bool)

(assert (= bs!1535494 (and d!1940600 d!1940474)))

(declare-fun lambda!338055 () Int)

(assert (=> bs!1535494 (= lambda!338055 lambda!338023)))

(declare-fun bs!1535495 () Bool)

(assert (= bs!1535495 (and d!1940600 d!1940526)))

(assert (=> bs!1535495 (= lambda!338055 lambda!338038)))

(declare-fun bs!1535496 () Bool)

(assert (= bs!1535496 (and d!1940600 d!1940492)))

(assert (=> bs!1535496 (= lambda!338055 lambda!338030)))

(declare-fun bs!1535497 () Bool)

(assert (= bs!1535497 (and d!1940600 d!1940530)))

(assert (=> bs!1535497 (= lambda!338055 lambda!338042)))

(declare-fun bs!1535498 () Bool)

(assert (= bs!1535498 (and d!1940600 d!1940532)))

(assert (=> bs!1535498 (= lambda!338055 lambda!338045)))

(declare-fun bs!1535499 () Bool)

(assert (= bs!1535499 (and d!1940600 d!1940528)))

(assert (=> bs!1535499 (= lambda!338055 lambda!338039)))

(declare-fun bs!1535500 () Bool)

(assert (= bs!1535500 (and d!1940600 d!1940494)))

(assert (=> bs!1535500 (= lambda!338055 lambda!338031)))

(declare-fun b!6190498 () Bool)

(declare-fun e!3770105 () Bool)

(declare-fun lt!2340855 () Regex!16129)

(assert (=> b!6190498 (= e!3770105 (isConcat!1064 lt!2340855))))

(declare-fun b!6190499 () Bool)

(declare-fun e!3770106 () Regex!16129)

(declare-fun e!3770102 () Regex!16129)

(assert (=> b!6190499 (= e!3770106 e!3770102)))

(declare-fun c!1116841 () Bool)

(assert (=> b!6190499 (= c!1116841 ((_ is Cons!64563) (t!378197 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun b!6190500 () Bool)

(declare-fun e!3770103 () Bool)

(assert (=> b!6190500 (= e!3770103 e!3770105)))

(declare-fun c!1116839 () Bool)

(assert (=> b!6190500 (= c!1116839 (isEmpty!36547 (tail!11855 (t!378197 (exprs!6013 (h!71012 zl!343))))))))

(declare-fun b!6190501 () Bool)

(assert (=> b!6190501 (= e!3770103 (isEmptyExpr!1541 lt!2340855))))

(declare-fun b!6190502 () Bool)

(declare-fun e!3770104 () Bool)

(assert (=> b!6190502 (= e!3770104 e!3770103)))

(declare-fun c!1116838 () Bool)

(assert (=> b!6190502 (= c!1116838 (isEmpty!36547 (t!378197 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun b!6190503 () Bool)

(assert (=> b!6190503 (= e!3770105 (= lt!2340855 (head!12770 (t!378197 (exprs!6013 (h!71012 zl!343))))))))

(assert (=> d!1940600 e!3770104))

(declare-fun res!2561013 () Bool)

(assert (=> d!1940600 (=> (not res!2561013) (not e!3770104))))

(assert (=> d!1940600 (= res!2561013 (validRegex!7865 lt!2340855))))

(assert (=> d!1940600 (= lt!2340855 e!3770106)))

(declare-fun c!1116840 () Bool)

(declare-fun e!3770101 () Bool)

(assert (=> d!1940600 (= c!1116840 e!3770101)))

(declare-fun res!2561014 () Bool)

(assert (=> d!1940600 (=> (not res!2561014) (not e!3770101))))

(assert (=> d!1940600 (= res!2561014 ((_ is Cons!64563) (t!378197 (exprs!6013 (h!71012 zl!343)))))))

(assert (=> d!1940600 (forall!15245 (t!378197 (exprs!6013 (h!71012 zl!343))) lambda!338055)))

(assert (=> d!1940600 (= (generalisedConcat!1726 (t!378197 (exprs!6013 (h!71012 zl!343)))) lt!2340855)))

(declare-fun b!6190504 () Bool)

(assert (=> b!6190504 (= e!3770102 EmptyExpr!16129)))

(declare-fun b!6190505 () Bool)

(assert (=> b!6190505 (= e!3770101 (isEmpty!36547 (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343))))))))

(declare-fun b!6190506 () Bool)

(assert (=> b!6190506 (= e!3770102 (Concat!24974 (h!71011 (t!378197 (exprs!6013 (h!71012 zl!343)))) (generalisedConcat!1726 (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343)))))))))

(declare-fun b!6190507 () Bool)

(assert (=> b!6190507 (= e!3770106 (h!71011 (t!378197 (exprs!6013 (h!71012 zl!343)))))))

(assert (= (and d!1940600 res!2561014) b!6190505))

(assert (= (and d!1940600 c!1116840) b!6190507))

(assert (= (and d!1940600 (not c!1116840)) b!6190499))

(assert (= (and b!6190499 c!1116841) b!6190506))

(assert (= (and b!6190499 (not c!1116841)) b!6190504))

(assert (= (and d!1940600 res!2561013) b!6190502))

(assert (= (and b!6190502 c!1116838) b!6190501))

(assert (= (and b!6190502 (not c!1116838)) b!6190500))

(assert (= (and b!6190500 c!1116839) b!6190503))

(assert (= (and b!6190500 (not c!1116839)) b!6190498))

(declare-fun m!7024740 () Bool)

(assert (=> b!6190506 m!7024740))

(declare-fun m!7024742 () Bool)

(assert (=> b!6190503 m!7024742))

(declare-fun m!7024744 () Bool)

(assert (=> b!6190500 m!7024744))

(assert (=> b!6190500 m!7024744))

(declare-fun m!7024746 () Bool)

(assert (=> b!6190500 m!7024746))

(declare-fun m!7024748 () Bool)

(assert (=> b!6190505 m!7024748))

(declare-fun m!7024750 () Bool)

(assert (=> d!1940600 m!7024750))

(declare-fun m!7024752 () Bool)

(assert (=> d!1940600 m!7024752))

(declare-fun m!7024754 () Bool)

(assert (=> b!6190498 m!7024754))

(assert (=> b!6190502 m!7023838))

(declare-fun m!7024756 () Bool)

(assert (=> b!6190501 m!7024756))

(assert (=> b!6189535 d!1940600))

(declare-fun d!1940602 () Bool)

(declare-fun e!3770107 () Bool)

(assert (=> d!1940602 (= (matchZipper!2141 ((_ map or) lt!2340714 lt!2340723) (t!378196 s!2326)) e!3770107)))

(declare-fun res!2561015 () Bool)

(assert (=> d!1940602 (=> res!2561015 e!3770107)))

(assert (=> d!1940602 (= res!2561015 (matchZipper!2141 lt!2340714 (t!378196 s!2326)))))

(declare-fun lt!2340856 () Unit!157811)

(assert (=> d!1940602 (= lt!2340856 (choose!45991 lt!2340714 lt!2340723 (t!378196 s!2326)))))

(assert (=> d!1940602 (= (lemmaZipperConcatMatchesSameAsBothZippers!960 lt!2340714 lt!2340723 (t!378196 s!2326)) lt!2340856)))

(declare-fun b!6190508 () Bool)

(assert (=> b!6190508 (= e!3770107 (matchZipper!2141 lt!2340723 (t!378196 s!2326)))))

(assert (= (and d!1940602 (not res!2561015)) b!6190508))

(assert (=> d!1940602 m!7023844))

(assert (=> d!1940602 m!7023842))

(declare-fun m!7024758 () Bool)

(assert (=> d!1940602 m!7024758))

(assert (=> b!6190508 m!7023884))

(assert (=> b!6189552 d!1940602))

(assert (=> b!6189552 d!1940592))

(declare-fun d!1940604 () Bool)

(declare-fun c!1116842 () Bool)

(assert (=> d!1940604 (= c!1116842 (isEmpty!36550 (t!378196 s!2326)))))

(declare-fun e!3770108 () Bool)

(assert (=> d!1940604 (= (matchZipper!2141 ((_ map or) lt!2340714 lt!2340723) (t!378196 s!2326)) e!3770108)))

(declare-fun b!6190509 () Bool)

(assert (=> b!6190509 (= e!3770108 (nullableZipper!1905 ((_ map or) lt!2340714 lt!2340723)))))

(declare-fun b!6190510 () Bool)

(assert (=> b!6190510 (= e!3770108 (matchZipper!2141 (derivationStepZipper!2097 ((_ map or) lt!2340714 lt!2340723) (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))))))

(assert (= (and d!1940604 c!1116842) b!6190509))

(assert (= (and d!1940604 (not c!1116842)) b!6190510))

(assert (=> d!1940604 m!7024478))

(declare-fun m!7024760 () Bool)

(assert (=> b!6190509 m!7024760))

(assert (=> b!6190510 m!7024482))

(assert (=> b!6190510 m!7024482))

(declare-fun m!7024762 () Bool)

(assert (=> b!6190510 m!7024762))

(assert (=> b!6190510 m!7024486))

(assert (=> b!6190510 m!7024762))

(assert (=> b!6190510 m!7024486))

(declare-fun m!7024764 () Bool)

(assert (=> b!6190510 m!7024764))

(assert (=> b!6189552 d!1940604))

(assert (=> b!6189553 d!1940524))

(declare-fun b!6190522 () Bool)

(declare-fun e!3770111 () Bool)

(declare-fun tp!1727463 () Bool)

(declare-fun tp!1727462 () Bool)

(assert (=> b!6190522 (= e!3770111 (and tp!1727463 tp!1727462))))

(declare-fun b!6190523 () Bool)

(declare-fun tp!1727460 () Bool)

(assert (=> b!6190523 (= e!3770111 tp!1727460)))

(assert (=> b!6189532 (= tp!1727384 e!3770111)))

(declare-fun b!6190524 () Bool)

(declare-fun tp!1727459 () Bool)

(declare-fun tp!1727461 () Bool)

(assert (=> b!6190524 (= e!3770111 (and tp!1727459 tp!1727461))))

(declare-fun b!6190521 () Bool)

(assert (=> b!6190521 (= e!3770111 tp_is_empty!41511)))

(assert (= (and b!6189532 ((_ is ElementMatch!16129) (regOne!32771 r!7292))) b!6190521))

(assert (= (and b!6189532 ((_ is Concat!24974) (regOne!32771 r!7292))) b!6190522))

(assert (= (and b!6189532 ((_ is Star!16129) (regOne!32771 r!7292))) b!6190523))

(assert (= (and b!6189532 ((_ is Union!16129) (regOne!32771 r!7292))) b!6190524))

(declare-fun b!6190526 () Bool)

(declare-fun e!3770112 () Bool)

(declare-fun tp!1727468 () Bool)

(declare-fun tp!1727467 () Bool)

(assert (=> b!6190526 (= e!3770112 (and tp!1727468 tp!1727467))))

(declare-fun b!6190527 () Bool)

(declare-fun tp!1727465 () Bool)

(assert (=> b!6190527 (= e!3770112 tp!1727465)))

(assert (=> b!6189532 (= tp!1727385 e!3770112)))

(declare-fun b!6190528 () Bool)

(declare-fun tp!1727464 () Bool)

(declare-fun tp!1727466 () Bool)

(assert (=> b!6190528 (= e!3770112 (and tp!1727464 tp!1727466))))

(declare-fun b!6190525 () Bool)

(assert (=> b!6190525 (= e!3770112 tp_is_empty!41511)))

(assert (= (and b!6189532 ((_ is ElementMatch!16129) (regTwo!32771 r!7292))) b!6190525))

(assert (= (and b!6189532 ((_ is Concat!24974) (regTwo!32771 r!7292))) b!6190526))

(assert (= (and b!6189532 ((_ is Star!16129) (regTwo!32771 r!7292))) b!6190527))

(assert (= (and b!6189532 ((_ is Union!16129) (regTwo!32771 r!7292))) b!6190528))

(declare-fun condSetEmpty!41992 () Bool)

(assert (=> setNonEmpty!41986 (= condSetEmpty!41992 (= setRest!41986 ((as const (Array Context!11026 Bool)) false)))))

(declare-fun setRes!41992 () Bool)

(assert (=> setNonEmpty!41986 (= tp!1727381 setRes!41992)))

(declare-fun setIsEmpty!41992 () Bool)

(assert (=> setIsEmpty!41992 setRes!41992))

(declare-fun tp!1727474 () Bool)

(declare-fun setNonEmpty!41992 () Bool)

(declare-fun e!3770115 () Bool)

(declare-fun setElem!41992 () Context!11026)

(assert (=> setNonEmpty!41992 (= setRes!41992 (and tp!1727474 (inv!83569 setElem!41992) e!3770115))))

(declare-fun setRest!41992 () (InoxSet Context!11026))

(assert (=> setNonEmpty!41992 (= setRest!41986 ((_ map or) (store ((as const (Array Context!11026 Bool)) false) setElem!41992 true) setRest!41992))))

(declare-fun b!6190533 () Bool)

(declare-fun tp!1727473 () Bool)

(assert (=> b!6190533 (= e!3770115 tp!1727473)))

(assert (= (and setNonEmpty!41986 condSetEmpty!41992) setIsEmpty!41992))

(assert (= (and setNonEmpty!41986 (not condSetEmpty!41992)) setNonEmpty!41992))

(assert (= setNonEmpty!41992 b!6190533))

(declare-fun m!7024766 () Bool)

(assert (=> setNonEmpty!41992 m!7024766))

(declare-fun b!6190538 () Bool)

(declare-fun e!3770118 () Bool)

(declare-fun tp!1727479 () Bool)

(declare-fun tp!1727480 () Bool)

(assert (=> b!6190538 (= e!3770118 (and tp!1727479 tp!1727480))))

(assert (=> b!6189530 (= tp!1727383 e!3770118)))

(assert (= (and b!6189530 ((_ is Cons!64563) (exprs!6013 (h!71012 zl!343)))) b!6190538))

(declare-fun b!6190546 () Bool)

(declare-fun e!3770124 () Bool)

(declare-fun tp!1727485 () Bool)

(assert (=> b!6190546 (= e!3770124 tp!1727485)))

(declare-fun b!6190545 () Bool)

(declare-fun tp!1727486 () Bool)

(declare-fun e!3770123 () Bool)

(assert (=> b!6190545 (= e!3770123 (and (inv!83569 (h!71012 (t!378198 zl!343))) e!3770124 tp!1727486))))

(assert (=> b!6189540 (= tp!1727388 e!3770123)))

(assert (= b!6190545 b!6190546))

(assert (= (and b!6189540 ((_ is Cons!64564) (t!378198 zl!343))) b!6190545))

(declare-fun m!7024768 () Bool)

(assert (=> b!6190545 m!7024768))

(declare-fun b!6190547 () Bool)

(declare-fun e!3770125 () Bool)

(declare-fun tp!1727487 () Bool)

(declare-fun tp!1727488 () Bool)

(assert (=> b!6190547 (= e!3770125 (and tp!1727487 tp!1727488))))

(assert (=> b!6189534 (= tp!1727386 e!3770125)))

(assert (= (and b!6189534 ((_ is Cons!64563) (exprs!6013 setElem!41986))) b!6190547))

(declare-fun b!6190549 () Bool)

(declare-fun e!3770126 () Bool)

(declare-fun tp!1727493 () Bool)

(declare-fun tp!1727492 () Bool)

(assert (=> b!6190549 (= e!3770126 (and tp!1727493 tp!1727492))))

(declare-fun b!6190550 () Bool)

(declare-fun tp!1727490 () Bool)

(assert (=> b!6190550 (= e!3770126 tp!1727490)))

(assert (=> b!6189559 (= tp!1727387 e!3770126)))

(declare-fun b!6190551 () Bool)

(declare-fun tp!1727489 () Bool)

(declare-fun tp!1727491 () Bool)

(assert (=> b!6190551 (= e!3770126 (and tp!1727489 tp!1727491))))

(declare-fun b!6190548 () Bool)

(assert (=> b!6190548 (= e!3770126 tp_is_empty!41511)))

(assert (= (and b!6189559 ((_ is ElementMatch!16129) (reg!16458 r!7292))) b!6190548))

(assert (= (and b!6189559 ((_ is Concat!24974) (reg!16458 r!7292))) b!6190549))

(assert (= (and b!6189559 ((_ is Star!16129) (reg!16458 r!7292))) b!6190550))

(assert (= (and b!6189559 ((_ is Union!16129) (reg!16458 r!7292))) b!6190551))

(declare-fun b!6190553 () Bool)

(declare-fun e!3770127 () Bool)

(declare-fun tp!1727498 () Bool)

(declare-fun tp!1727497 () Bool)

(assert (=> b!6190553 (= e!3770127 (and tp!1727498 tp!1727497))))

(declare-fun b!6190554 () Bool)

(declare-fun tp!1727495 () Bool)

(assert (=> b!6190554 (= e!3770127 tp!1727495)))

(assert (=> b!6189565 (= tp!1727390 e!3770127)))

(declare-fun b!6190555 () Bool)

(declare-fun tp!1727494 () Bool)

(declare-fun tp!1727496 () Bool)

(assert (=> b!6190555 (= e!3770127 (and tp!1727494 tp!1727496))))

(declare-fun b!6190552 () Bool)

(assert (=> b!6190552 (= e!3770127 tp_is_empty!41511)))

(assert (= (and b!6189565 ((_ is ElementMatch!16129) (regOne!32770 r!7292))) b!6190552))

(assert (= (and b!6189565 ((_ is Concat!24974) (regOne!32770 r!7292))) b!6190553))

(assert (= (and b!6189565 ((_ is Star!16129) (regOne!32770 r!7292))) b!6190554))

(assert (= (and b!6189565 ((_ is Union!16129) (regOne!32770 r!7292))) b!6190555))

(declare-fun b!6190557 () Bool)

(declare-fun e!3770128 () Bool)

(declare-fun tp!1727503 () Bool)

(declare-fun tp!1727502 () Bool)

(assert (=> b!6190557 (= e!3770128 (and tp!1727503 tp!1727502))))

(declare-fun b!6190558 () Bool)

(declare-fun tp!1727500 () Bool)

(assert (=> b!6190558 (= e!3770128 tp!1727500)))

(assert (=> b!6189565 (= tp!1727382 e!3770128)))

(declare-fun b!6190559 () Bool)

(declare-fun tp!1727499 () Bool)

(declare-fun tp!1727501 () Bool)

(assert (=> b!6190559 (= e!3770128 (and tp!1727499 tp!1727501))))

(declare-fun b!6190556 () Bool)

(assert (=> b!6190556 (= e!3770128 tp_is_empty!41511)))

(assert (= (and b!6189565 ((_ is ElementMatch!16129) (regTwo!32770 r!7292))) b!6190556))

(assert (= (and b!6189565 ((_ is Concat!24974) (regTwo!32770 r!7292))) b!6190557))

(assert (= (and b!6189565 ((_ is Star!16129) (regTwo!32770 r!7292))) b!6190558))

(assert (= (and b!6189565 ((_ is Union!16129) (regTwo!32770 r!7292))) b!6190559))

(declare-fun b!6190564 () Bool)

(declare-fun e!3770131 () Bool)

(declare-fun tp!1727506 () Bool)

(assert (=> b!6190564 (= e!3770131 (and tp_is_empty!41511 tp!1727506))))

(assert (=> b!6189563 (= tp!1727389 e!3770131)))

(assert (= (and b!6189563 ((_ is Cons!64562) (t!378196 s!2326))) b!6190564))

(declare-fun b_lambda!235511 () Bool)

(assert (= b_lambda!235507 (or b!6189536 b_lambda!235511)))

(declare-fun bs!1535501 () Bool)

(declare-fun d!1940606 () Bool)

(assert (= bs!1535501 (and d!1940606 b!6189536)))

(assert (=> bs!1535501 (= (dynLambda!25459 lambda!337985 lt!2340697) (derivationStepZipperUp!1303 lt!2340697 (h!71010 s!2326)))))

(assert (=> bs!1535501 m!7023928))

(assert (=> d!1940560 d!1940606))

(declare-fun b_lambda!235513 () Bool)

(assert (= b_lambda!235505 (or b!6189536 b_lambda!235513)))

(declare-fun bs!1535502 () Bool)

(declare-fun d!1940608 () Bool)

(assert (= bs!1535502 (and d!1940608 b!6189536)))

(assert (=> bs!1535502 (= (dynLambda!25459 lambda!337985 (h!71012 zl!343)) (derivationStepZipperUp!1303 (h!71012 zl!343) (h!71010 s!2326)))))

(assert (=> bs!1535502 m!7023872))

(assert (=> d!1940558 d!1940608))

(declare-fun b_lambda!235515 () Bool)

(assert (= b_lambda!235509 (or b!6189536 b_lambda!235515)))

(declare-fun bs!1535503 () Bool)

(declare-fun d!1940610 () Bool)

(assert (= bs!1535503 (and d!1940610 b!6189536)))

(assert (=> bs!1535503 (= (dynLambda!25459 lambda!337985 lt!2340703) (derivationStepZipperUp!1303 lt!2340703 (h!71010 s!2326)))))

(assert (=> bs!1535503 m!7023932))

(assert (=> d!1940570 d!1940610))

(check-sat (not b!6190554) (not b!6190547) (not b!6190419) (not b!6190439) (not b!6190232) (not b!6190247) (not b!6190469) (not b!6190528) (not bm!517553) (not d!1940600) (not b_lambda!235511) (not b!6190305) (not d!1940512) (not b!6190235) (not bm!517495) (not b!6190500) (not b!6190483) (not b!6190208) (not b!6190277) (not d!1940580) (not b!6190366) (not b!6190431) (not b!6190349) (not b!6190222) (not b!6190498) (not d!1940586) (not b!6190318) (not b!6190427) (not setNonEmpty!41992) (not b!6190239) (not b!6190217) (not d!1940510) (not b!6190194) (not b!6190387) (not d!1940544) (not b!6190564) (not b!6190545) (not bm!517540) (not b!6190212) (not b!6190199) (not b!6190487) (not d!1940494) (not bm!517548) (not b!6190218) (not b!6190210) (not b!6190365) (not b!6190238) (not b!6190362) (not d!1940590) (not d!1940584) (not bm!517549) (not b!6190197) (not bm!517546) (not b!6190443) (not b!6190526) (not b!6190320) (not bm!517519) (not bm!517517) (not b_lambda!235513) (not b!6190189) (not bm!517550) (not b!6190442) (not d!1940532) (not b!6190470) (not b!6190523) (not b!6190092) (not bm!517526) (not b!6190310) (not bm!517516) (not b!6190398) (not b!6190314) (not d!1940560) (not b!6190558) (not bm!517494) (not b!6190219) (not b!6190546) (not b!6190557) (not b!6190288) (not b!6190244) (not b!6190550) (not b!6190553) (not b!6190505) (not b!6190223) (not b!6190148) (not bm!517498) (not b!6190522) (not b!6190506) (not bs!1535501) (not b!6190430) (not b!6190429) (not b!6190549) (not b!6190346) (not d!1940504) (not d!1940526) (not b!6190345) (not b!6190344) (not b!6190250) (not b!6190236) (not b!6190215) (not b!6190321) (not bm!517537) (not b!6190559) (not b!6190097) (not d!1940530) (not b!6190237) (not d!1940476) (not d!1940474) (not b!6190503) (not b!6190220) (not d!1940488) (not b!6190209) tp_is_empty!41511 (not b!6190094) (not b!6190462) (not d!1940490) (not d!1940568) (not b!6190095) (not d!1940562) (not b!6190203) (not d!1940592) (not b!6190551) (not b!6190185) (not bm!517527) (not b!6190213) (not d!1940552) (not b!6190436) (not d!1940588) (not b!6190312) (not b!6190467) (not d!1940576) (not d!1940528) (not d!1940522) (not b!6190105) (not b!6190098) (not b!6190181) (not d!1940572) (not bm!517525) (not b!6190104) (not b!6190195) (not b!6190496) (not bm!517528) (not bm!517522) (not b!6190524) (not d!1940484) (not d!1940582) (not b!6190351) (not b!6190494) (not b!6190180) (not d!1940538) (not b!6190188) (not d!1940548) (not b!6190441) (not bm!517523) (not bm!517500) (not b!6190248) (not bm!517535) (not d!1940536) (not b!6190509) (not bm!517501) (not d!1940604) (not b!6190538) (not d!1940558) (not b!6190533) (not bm!517499) (not d!1940498) (not d!1940502) (not b!6190508) (not b!6190241) (not b!6190510) (not d!1940520) (not d!1940578) (not b!6190464) (not b!6190356) (not b!6190434) (not d!1940500) (not b!6190422) (not b_lambda!235515) (not b!6190527) (not b!6190502) (not d!1940482) (not b!6190249) (not b!6190302) (not b!6190317) (not d!1940506) (not bs!1535503) (not b!6190090) (not d!1940492) (not b!6190093) (not bm!517547) (not d!1940602) (not bs!1535502) (not b!6190240) (not bm!517551) (not b!6190202) (not d!1940486) (not d!1940480) (not b!6190555) (not d!1940524) (not b!6190364) (not b!6190424) (not b!6190309) (not b!6190343) (not b!6190350) (not b!6190183) (not b!6190205) (not b!6190417) (not b!6190501) (not b!6190484) (not bm!517541) (not b!6190466) (not b!6190145) (not bm!517543) (not d!1940564) (not b!6190207) (not d!1940570))
(check-sat)
(get-model)

(declare-fun d!1940612 () Bool)

(assert (=> d!1940612 (= (nullable!6122 (h!71011 (exprs!6013 lt!2340697))) (nullableFct!2080 (h!71011 (exprs!6013 lt!2340697))))))

(declare-fun bs!1535504 () Bool)

(assert (= bs!1535504 d!1940612))

(declare-fun m!7024770 () Bool)

(assert (=> bs!1535504 m!7024770))

(assert (=> b!6190434 d!1940612))

(declare-fun d!1940614 () Bool)

(assert (=> d!1940614 (= (isEmpty!36550 s!2326) ((_ is Nil!64562) s!2326))))

(assert (=> d!1940490 d!1940614))

(declare-fun bm!517554 () Bool)

(declare-fun call!517561 () Bool)

(declare-fun c!1116844 () Bool)

(assert (=> bm!517554 (= call!517561 (validRegex!7865 (ite c!1116844 (regOne!32771 lt!2340713) (regOne!32770 lt!2340713))))))

(declare-fun b!6190565 () Bool)

(declare-fun e!3770133 () Bool)

(declare-fun call!517560 () Bool)

(assert (=> b!6190565 (= e!3770133 call!517560)))

(declare-fun d!1940616 () Bool)

(declare-fun res!2561018 () Bool)

(declare-fun e!3770135 () Bool)

(assert (=> d!1940616 (=> res!2561018 e!3770135)))

(assert (=> d!1940616 (= res!2561018 ((_ is ElementMatch!16129) lt!2340713))))

(assert (=> d!1940616 (= (validRegex!7865 lt!2340713) e!3770135)))

(declare-fun bm!517555 () Bool)

(declare-fun call!517559 () Bool)

(assert (=> bm!517555 (= call!517559 call!517560)))

(declare-fun bm!517556 () Bool)

(declare-fun c!1116843 () Bool)

(assert (=> bm!517556 (= call!517560 (validRegex!7865 (ite c!1116843 (reg!16458 lt!2340713) (ite c!1116844 (regTwo!32771 lt!2340713) (regTwo!32770 lt!2340713)))))))

(declare-fun b!6190566 () Bool)

(declare-fun e!3770138 () Bool)

(assert (=> b!6190566 (= e!3770138 call!517559)))

(declare-fun b!6190567 () Bool)

(declare-fun e!3770132 () Bool)

(assert (=> b!6190567 (= e!3770132 e!3770133)))

(declare-fun res!2561017 () Bool)

(assert (=> b!6190567 (= res!2561017 (not (nullable!6122 (reg!16458 lt!2340713))))))

(assert (=> b!6190567 (=> (not res!2561017) (not e!3770133))))

(declare-fun b!6190568 () Bool)

(declare-fun e!3770134 () Bool)

(assert (=> b!6190568 (= e!3770134 call!517559)))

(declare-fun b!6190569 () Bool)

(assert (=> b!6190569 (= e!3770135 e!3770132)))

(assert (=> b!6190569 (= c!1116843 ((_ is Star!16129) lt!2340713))))

(declare-fun b!6190570 () Bool)

(declare-fun res!2561016 () Bool)

(declare-fun e!3770137 () Bool)

(assert (=> b!6190570 (=> res!2561016 e!3770137)))

(assert (=> b!6190570 (= res!2561016 (not ((_ is Concat!24974) lt!2340713)))))

(declare-fun e!3770136 () Bool)

(assert (=> b!6190570 (= e!3770136 e!3770137)))

(declare-fun b!6190571 () Bool)

(assert (=> b!6190571 (= e!3770137 e!3770138)))

(declare-fun res!2561020 () Bool)

(assert (=> b!6190571 (=> (not res!2561020) (not e!3770138))))

(assert (=> b!6190571 (= res!2561020 call!517561)))

(declare-fun b!6190572 () Bool)

(assert (=> b!6190572 (= e!3770132 e!3770136)))

(assert (=> b!6190572 (= c!1116844 ((_ is Union!16129) lt!2340713))))

(declare-fun b!6190573 () Bool)

(declare-fun res!2561019 () Bool)

(assert (=> b!6190573 (=> (not res!2561019) (not e!3770134))))

(assert (=> b!6190573 (= res!2561019 call!517561)))

(assert (=> b!6190573 (= e!3770136 e!3770134)))

(assert (= (and d!1940616 (not res!2561018)) b!6190569))

(assert (= (and b!6190569 c!1116843) b!6190567))

(assert (= (and b!6190569 (not c!1116843)) b!6190572))

(assert (= (and b!6190567 res!2561017) b!6190565))

(assert (= (and b!6190572 c!1116844) b!6190573))

(assert (= (and b!6190572 (not c!1116844)) b!6190570))

(assert (= (and b!6190573 res!2561019) b!6190568))

(assert (= (and b!6190570 (not res!2561016)) b!6190571))

(assert (= (and b!6190571 res!2561020) b!6190566))

(assert (= (or b!6190568 b!6190566) bm!517555))

(assert (= (or b!6190573 b!6190571) bm!517554))

(assert (= (or b!6190565 bm!517555) bm!517556))

(declare-fun m!7024772 () Bool)

(assert (=> bm!517554 m!7024772))

(declare-fun m!7024774 () Bool)

(assert (=> bm!517556 m!7024774))

(declare-fun m!7024776 () Bool)

(assert (=> b!6190567 m!7024776))

(assert (=> d!1940490 d!1940616))

(declare-fun d!1940618 () Bool)

(assert (=> d!1940618 true))

(declare-fun setRes!41995 () Bool)

(assert (=> d!1940618 setRes!41995))

(declare-fun condSetEmpty!41995 () Bool)

(declare-fun res!2561023 () (InoxSet Context!11026))

(assert (=> d!1940618 (= condSetEmpty!41995 (= res!2561023 ((as const (Array Context!11026 Bool)) false)))))

(assert (=> d!1940618 (= (choose!45993 z!1189 lambda!337985) res!2561023)))

(declare-fun setIsEmpty!41995 () Bool)

(assert (=> setIsEmpty!41995 setRes!41995))

(declare-fun setNonEmpty!41995 () Bool)

(declare-fun setElem!41995 () Context!11026)

(declare-fun e!3770141 () Bool)

(declare-fun tp!1727512 () Bool)

(assert (=> setNonEmpty!41995 (= setRes!41995 (and tp!1727512 (inv!83569 setElem!41995) e!3770141))))

(declare-fun setRest!41995 () (InoxSet Context!11026))

(assert (=> setNonEmpty!41995 (= res!2561023 ((_ map or) (store ((as const (Array Context!11026 Bool)) false) setElem!41995 true) setRest!41995))))

(declare-fun b!6190576 () Bool)

(declare-fun tp!1727511 () Bool)

(assert (=> b!6190576 (= e!3770141 tp!1727511)))

(assert (= (and d!1940618 condSetEmpty!41995) setIsEmpty!41995))

(assert (= (and d!1940618 (not condSetEmpty!41995)) setNonEmpty!41995))

(assert (= setNonEmpty!41995 b!6190576))

(declare-fun m!7024778 () Bool)

(assert (=> setNonEmpty!41995 m!7024778))

(assert (=> d!1940552 d!1940618))

(declare-fun d!1940620 () Bool)

(assert (=> d!1940620 (= (nullable!6122 lt!2340702) (nullableFct!2080 lt!2340702))))

(declare-fun bs!1535505 () Bool)

(assert (= bs!1535505 d!1940620))

(declare-fun m!7024780 () Bool)

(assert (=> bs!1535505 m!7024780))

(assert (=> b!6190180 d!1940620))

(declare-fun d!1940622 () Bool)

(declare-fun c!1116845 () Bool)

(assert (=> d!1940622 (= c!1116845 (isEmpty!36550 (tail!11856 s!2326)))))

(declare-fun e!3770142 () Bool)

(assert (=> d!1940622 (= (matchZipper!2141 (derivationStepZipper!2097 lt!2340699 (head!12771 s!2326)) (tail!11856 s!2326)) e!3770142)))

(declare-fun b!6190577 () Bool)

(assert (=> b!6190577 (= e!3770142 (nullableZipper!1905 (derivationStepZipper!2097 lt!2340699 (head!12771 s!2326))))))

(declare-fun b!6190578 () Bool)

(assert (=> b!6190578 (= e!3770142 (matchZipper!2141 (derivationStepZipper!2097 (derivationStepZipper!2097 lt!2340699 (head!12771 s!2326)) (head!12771 (tail!11856 s!2326))) (tail!11856 (tail!11856 s!2326))))))

(assert (= (and d!1940622 c!1116845) b!6190577))

(assert (= (and d!1940622 (not c!1116845)) b!6190578))

(assert (=> d!1940622 m!7024396))

(assert (=> d!1940622 m!7024406))

(assert (=> b!6190577 m!7024394))

(declare-fun m!7024782 () Bool)

(assert (=> b!6190577 m!7024782))

(assert (=> b!6190578 m!7024396))

(declare-fun m!7024784 () Bool)

(assert (=> b!6190578 m!7024784))

(assert (=> b!6190578 m!7024394))

(assert (=> b!6190578 m!7024784))

(declare-fun m!7024786 () Bool)

(assert (=> b!6190578 m!7024786))

(assert (=> b!6190578 m!7024396))

(declare-fun m!7024788 () Bool)

(assert (=> b!6190578 m!7024788))

(assert (=> b!6190578 m!7024786))

(assert (=> b!6190578 m!7024788))

(declare-fun m!7024790 () Bool)

(assert (=> b!6190578 m!7024790))

(assert (=> b!6190105 d!1940622))

(declare-fun bs!1535506 () Bool)

(declare-fun d!1940624 () Bool)

(assert (= bs!1535506 (and d!1940624 b!6189536)))

(declare-fun lambda!338058 () Int)

(assert (=> bs!1535506 (= (= (head!12771 s!2326) (h!71010 s!2326)) (= lambda!338058 lambda!337985))))

(assert (=> d!1940624 true))

(assert (=> d!1940624 (= (derivationStepZipper!2097 lt!2340699 (head!12771 s!2326)) (flatMap!1634 lt!2340699 lambda!338058))))

(declare-fun bs!1535507 () Bool)

(assert (= bs!1535507 d!1940624))

(declare-fun m!7024792 () Bool)

(assert (=> bs!1535507 m!7024792))

(assert (=> b!6190105 d!1940624))

(declare-fun d!1940626 () Bool)

(assert (=> d!1940626 (= (head!12771 s!2326) (h!71010 s!2326))))

(assert (=> b!6190105 d!1940626))

(declare-fun d!1940628 () Bool)

(assert (=> d!1940628 (= (tail!11856 s!2326) (t!378196 s!2326))))

(assert (=> b!6190105 d!1940628))

(declare-fun c!1116851 () Bool)

(declare-fun b!6190581 () Bool)

(assert (=> b!6190581 (= c!1116851 ((_ is Star!16129) (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292))))))))))

(declare-fun e!3770143 () (InoxSet Context!11026))

(declare-fun e!3770146 () (InoxSet Context!11026))

(assert (=> b!6190581 (= e!3770143 e!3770146)))

(declare-fun b!6190582 () Bool)

(assert (=> b!6190582 (= e!3770146 ((as const (Array Context!11026 Bool)) false))))

(declare-fun bm!517557 () Bool)

(declare-fun call!517563 () (InoxSet Context!11026))

(declare-fun call!517565 () (InoxSet Context!11026))

(assert (=> bm!517557 (= call!517563 call!517565)))

(declare-fun bm!517558 () Bool)

(declare-fun call!517567 () List!64687)

(declare-fun call!517566 () List!64687)

(assert (=> bm!517558 (= call!517567 call!517566)))

(declare-fun b!6190583 () Bool)

(declare-fun e!3770144 () (InoxSet Context!11026))

(declare-fun call!517562 () (InoxSet Context!11026))

(declare-fun call!517564 () (InoxSet Context!11026))

(assert (=> b!6190583 (= e!3770144 ((_ map or) call!517562 call!517564))))

(declare-fun b!6190584 () Bool)

(declare-fun e!3770148 () (InoxSet Context!11026))

(assert (=> b!6190584 (= e!3770148 e!3770143)))

(declare-fun c!1116849 () Bool)

(assert (=> b!6190584 (= c!1116849 ((_ is Concat!24974) (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292))))))))))

(declare-fun c!1116852 () Bool)

(declare-fun bm!517559 () Bool)

(assert (=> bm!517559 (= call!517566 ($colon$colon!2000 (exprs!6013 (ite (or c!1116768 c!1116772) lt!2340688 (Context!11027 call!517530))) (ite (or c!1116852 c!1116849) (regTwo!32770 (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292))))))) (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292)))))))))))

(declare-fun bm!517560 () Bool)

(declare-fun c!1116848 () Bool)

(assert (=> bm!517560 (= call!517562 (derivationStepZipperDown!1377 (ite c!1116848 (regOne!32771 (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292))))))) (regOne!32770 (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292)))))))) (ite c!1116848 (ite (or c!1116768 c!1116772) lt!2340688 (Context!11027 call!517530)) (Context!11027 call!517566)) (h!71010 s!2326)))))

(declare-fun bm!517561 () Bool)

(assert (=> bm!517561 (= call!517565 call!517564)))

(declare-fun b!6190585 () Bool)

(declare-fun e!3770145 () Bool)

(assert (=> b!6190585 (= e!3770145 (nullable!6122 (regOne!32770 (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292)))))))))))

(declare-fun bm!517562 () Bool)

(assert (=> bm!517562 (= call!517564 (derivationStepZipperDown!1377 (ite c!1116848 (regTwo!32771 (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292))))))) (ite c!1116852 (regTwo!32770 (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292))))))) (ite c!1116849 (regOne!32770 (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292))))))) (reg!16458 (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292)))))))))) (ite (or c!1116848 c!1116852) (ite (or c!1116768 c!1116772) lt!2340688 (Context!11027 call!517530)) (Context!11027 call!517567)) (h!71010 s!2326)))))

(declare-fun b!6190586 () Bool)

(assert (=> b!6190586 (= c!1116852 e!3770145)))

(declare-fun res!2561024 () Bool)

(assert (=> b!6190586 (=> (not res!2561024) (not e!3770145))))

(assert (=> b!6190586 (= res!2561024 ((_ is Concat!24974) (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292))))))))))

(assert (=> b!6190586 (= e!3770144 e!3770148)))

(declare-fun c!1116850 () Bool)

(declare-fun d!1940630 () Bool)

(assert (=> d!1940630 (= c!1116850 (and ((_ is ElementMatch!16129) (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292))))))) (= (c!1116552 (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292))))))) (h!71010 s!2326))))))

(declare-fun e!3770147 () (InoxSet Context!11026))

(assert (=> d!1940630 (= (derivationStepZipperDown!1377 (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292)))))) (ite (or c!1116768 c!1116772) lt!2340688 (Context!11027 call!517530)) (h!71010 s!2326)) e!3770147)))

(declare-fun b!6190587 () Bool)

(assert (=> b!6190587 (= e!3770143 call!517563)))

(declare-fun b!6190588 () Bool)

(assert (=> b!6190588 (= e!3770146 call!517563)))

(declare-fun b!6190589 () Bool)

(assert (=> b!6190589 (= e!3770147 (store ((as const (Array Context!11026 Bool)) false) (ite (or c!1116768 c!1116772) lt!2340688 (Context!11027 call!517530)) true))))

(declare-fun b!6190590 () Bool)

(assert (=> b!6190590 (= e!3770148 ((_ map or) call!517562 call!517565))))

(declare-fun b!6190591 () Bool)

(assert (=> b!6190591 (= e!3770147 e!3770144)))

(assert (=> b!6190591 (= c!1116848 ((_ is Union!16129) (ite c!1116768 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116772 (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116769 (regOne!32770 (regOne!32771 (regOne!32770 r!7292))) (reg!16458 (regOne!32771 (regOne!32770 r!7292))))))))))

(assert (= (and d!1940630 c!1116850) b!6190589))

(assert (= (and d!1940630 (not c!1116850)) b!6190591))

(assert (= (and b!6190591 c!1116848) b!6190583))

(assert (= (and b!6190591 (not c!1116848)) b!6190586))

(assert (= (and b!6190586 res!2561024) b!6190585))

(assert (= (and b!6190586 c!1116852) b!6190590))

(assert (= (and b!6190586 (not c!1116852)) b!6190584))

(assert (= (and b!6190584 c!1116849) b!6190587))

(assert (= (and b!6190584 (not c!1116849)) b!6190581))

(assert (= (and b!6190581 c!1116851) b!6190588))

(assert (= (and b!6190581 (not c!1116851)) b!6190582))

(assert (= (or b!6190587 b!6190588) bm!517558))

(assert (= (or b!6190587 b!6190588) bm!517557))

(assert (= (or b!6190590 bm!517558) bm!517559))

(assert (= (or b!6190590 bm!517557) bm!517561))

(assert (= (or b!6190583 bm!517561) bm!517562))

(assert (= (or b!6190583 b!6190590) bm!517560))

(declare-fun m!7024794 () Bool)

(assert (=> b!6190589 m!7024794))

(declare-fun m!7024796 () Bool)

(assert (=> bm!517559 m!7024796))

(declare-fun m!7024798 () Bool)

(assert (=> b!6190585 m!7024798))

(declare-fun m!7024800 () Bool)

(assert (=> bm!517562 m!7024800))

(declare-fun m!7024802 () Bool)

(assert (=> bm!517560 m!7024802))

(assert (=> bm!517525 d!1940630))

(declare-fun d!1940632 () Bool)

(assert (=> d!1940632 (= (isConcat!1064 lt!2340855) ((_ is Concat!24974) lt!2340855))))

(assert (=> b!6190498 d!1940632))

(declare-fun d!1940634 () Bool)

(declare-fun lt!2340859 () Int)

(assert (=> d!1940634 (>= lt!2340859 0)))

(declare-fun e!3770151 () Int)

(assert (=> d!1940634 (= lt!2340859 e!3770151)))

(declare-fun c!1116856 () Bool)

(assert (=> d!1940634 (= c!1116856 ((_ is Cons!64563) (exprs!6013 (h!71012 lt!2340700))))))

(assert (=> d!1940634 (= (contextDepthTotal!282 (h!71012 lt!2340700)) lt!2340859)))

(declare-fun b!6190596 () Bool)

(declare-fun regexDepthTotal!140 (Regex!16129) Int)

(assert (=> b!6190596 (= e!3770151 (+ (regexDepthTotal!140 (h!71011 (exprs!6013 (h!71012 lt!2340700)))) (contextDepthTotal!282 (Context!11027 (t!378197 (exprs!6013 (h!71012 lt!2340700)))))))))

(declare-fun b!6190597 () Bool)

(assert (=> b!6190597 (= e!3770151 1)))

(assert (= (and d!1940634 c!1116856) b!6190596))

(assert (= (and d!1940634 (not c!1116856)) b!6190597))

(declare-fun m!7024804 () Bool)

(assert (=> b!6190596 m!7024804))

(declare-fun m!7024806 () Bool)

(assert (=> b!6190596 m!7024806))

(assert (=> b!6190496 d!1940634))

(declare-fun d!1940636 () Bool)

(declare-fun lt!2340860 () Int)

(assert (=> d!1940636 (>= lt!2340860 0)))

(declare-fun e!3770152 () Int)

(assert (=> d!1940636 (= lt!2340860 e!3770152)))

(declare-fun c!1116857 () Bool)

(assert (=> d!1940636 (= c!1116857 ((_ is Cons!64564) (t!378198 lt!2340700)))))

(assert (=> d!1940636 (= (zipperDepthTotal!312 (t!378198 lt!2340700)) lt!2340860)))

(declare-fun b!6190598 () Bool)

(assert (=> b!6190598 (= e!3770152 (+ (contextDepthTotal!282 (h!71012 (t!378198 lt!2340700))) (zipperDepthTotal!312 (t!378198 (t!378198 lt!2340700)))))))

(declare-fun b!6190599 () Bool)

(assert (=> b!6190599 (= e!3770152 0)))

(assert (= (and d!1940636 c!1116857) b!6190598))

(assert (= (and d!1940636 (not c!1116857)) b!6190599))

(declare-fun m!7024808 () Bool)

(assert (=> b!6190598 m!7024808))

(declare-fun m!7024810 () Bool)

(assert (=> b!6190598 m!7024810))

(assert (=> b!6190496 d!1940636))

(declare-fun d!1940638 () Bool)

(assert (=> d!1940638 (= (isEmptyExpr!1541 lt!2340796) ((_ is EmptyExpr!16129) lt!2340796))))

(assert (=> b!6190093 d!1940638))

(declare-fun d!1940640 () Bool)

(assert (=> d!1940640 (= (isEmpty!36547 lt!2340726) ((_ is Nil!64563) lt!2340726))))

(assert (=> b!6190219 d!1940640))

(assert (=> b!6190195 d!1940626))

(assert (=> d!1940522 d!1940520))

(assert (=> d!1940522 d!1940518))

(declare-fun d!1940642 () Bool)

(assert (=> d!1940642 (= (matchR!8312 r!7292 s!2326) (matchRSpec!3230 r!7292 s!2326))))

(assert (=> d!1940642 true))

(declare-fun _$88!4764 () Unit!157811)

(assert (=> d!1940642 (= (choose!45989 r!7292 s!2326) _$88!4764)))

(declare-fun bs!1535508 () Bool)

(assert (= bs!1535508 d!1940642))

(assert (=> bs!1535508 m!7023864))

(assert (=> bs!1535508 m!7023862))

(assert (=> d!1940522 d!1940642))

(assert (=> d!1940522 d!1940594))

(declare-fun b!6190609 () Bool)

(declare-fun c!1116863 () Bool)

(assert (=> b!6190609 (= c!1116863 ((_ is Star!16129) (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))))))))

(declare-fun e!3770160 () (InoxSet Context!11026))

(declare-fun e!3770163 () (InoxSet Context!11026))

(assert (=> b!6190609 (= e!3770160 e!3770163)))

(declare-fun b!6190610 () Bool)

(assert (=> b!6190610 (= e!3770163 ((as const (Array Context!11026 Bool)) false))))

(declare-fun bm!517566 () Bool)

(declare-fun call!517572 () (InoxSet Context!11026))

(declare-fun call!517574 () (InoxSet Context!11026))

(assert (=> bm!517566 (= call!517572 call!517574)))

(declare-fun bm!517567 () Bool)

(declare-fun call!517576 () List!64687)

(declare-fun call!517575 () List!64687)

(assert (=> bm!517567 (= call!517576 call!517575)))

(declare-fun b!6190611 () Bool)

(declare-fun e!3770161 () (InoxSet Context!11026))

(declare-fun call!517571 () (InoxSet Context!11026))

(declare-fun call!517573 () (InoxSet Context!11026))

(assert (=> b!6190611 (= e!3770161 ((_ map or) call!517571 call!517573))))

(declare-fun b!6190612 () Bool)

(declare-fun e!3770165 () (InoxSet Context!11026))

(assert (=> b!6190612 (= e!3770165 e!3770160)))

(declare-fun c!1116861 () Bool)

(assert (=> b!6190612 (= c!1116861 ((_ is Concat!24974) (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))))))))

(declare-fun bm!517568 () Bool)

(declare-fun c!1116864 () Bool)

(assert (=> bm!517568 (= call!517575 ($colon$colon!2000 (exprs!6013 (ite c!1116763 lt!2340688 (Context!11027 call!517523))) (ite (or c!1116864 c!1116861) (regTwo!32770 (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))))) (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292)))))))))

(declare-fun c!1116860 () Bool)

(declare-fun bm!517569 () Bool)

(assert (=> bm!517569 (= call!517571 (derivationStepZipperDown!1377 (ite c!1116860 (regOne!32771 (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))))) (regOne!32770 (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292)))))) (ite c!1116860 (ite c!1116763 lt!2340688 (Context!11027 call!517523)) (Context!11027 call!517575)) (h!71010 s!2326)))))

(declare-fun bm!517570 () Bool)

(assert (=> bm!517570 (= call!517574 call!517573)))

(declare-fun b!6190613 () Bool)

(declare-fun e!3770162 () Bool)

(assert (=> b!6190613 (= e!3770162 (nullable!6122 (regOne!32770 (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292)))))))))

(declare-fun bm!517571 () Bool)

(assert (=> bm!517571 (= call!517573 (derivationStepZipperDown!1377 (ite c!1116860 (regTwo!32771 (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))))) (ite c!1116864 (regTwo!32770 (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))))) (ite c!1116861 (regOne!32770 (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))))) (reg!16458 (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292)))))))) (ite (or c!1116860 c!1116864) (ite c!1116763 lt!2340688 (Context!11027 call!517523)) (Context!11027 call!517576)) (h!71010 s!2326)))))

(declare-fun b!6190614 () Bool)

(assert (=> b!6190614 (= c!1116864 e!3770162)))

(declare-fun res!2561030 () Bool)

(assert (=> b!6190614 (=> (not res!2561030) (not e!3770162))))

(assert (=> b!6190614 (= res!2561030 ((_ is Concat!24974) (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))))))))

(assert (=> b!6190614 (= e!3770161 e!3770165)))

(declare-fun c!1116862 () Bool)

(declare-fun d!1940646 () Bool)

(assert (=> d!1940646 (= c!1116862 (and ((_ is ElementMatch!16129) (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))))) (= (c!1116552 (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))))) (h!71010 s!2326))))))

(declare-fun e!3770164 () (InoxSet Context!11026))

(assert (=> d!1940646 (= (derivationStepZipperDown!1377 (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292)))) (ite c!1116763 lt!2340688 (Context!11027 call!517523)) (h!71010 s!2326)) e!3770164)))

(declare-fun b!6190615 () Bool)

(assert (=> b!6190615 (= e!3770160 call!517572)))

(declare-fun b!6190616 () Bool)

(assert (=> b!6190616 (= e!3770163 call!517572)))

(declare-fun b!6190617 () Bool)

(assert (=> b!6190617 (= e!3770164 (store ((as const (Array Context!11026 Bool)) false) (ite c!1116763 lt!2340688 (Context!11027 call!517523)) true))))

(declare-fun b!6190618 () Bool)

(assert (=> b!6190618 (= e!3770165 ((_ map or) call!517571 call!517574))))

(declare-fun b!6190619 () Bool)

(assert (=> b!6190619 (= e!3770164 e!3770161)))

(assert (=> b!6190619 (= c!1116860 ((_ is Union!16129) (ite c!1116763 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))))))))

(assert (= (and d!1940646 c!1116862) b!6190617))

(assert (= (and d!1940646 (not c!1116862)) b!6190619))

(assert (= (and b!6190619 c!1116860) b!6190611))

(assert (= (and b!6190619 (not c!1116860)) b!6190614))

(assert (= (and b!6190614 res!2561030) b!6190613))

(assert (= (and b!6190614 c!1116864) b!6190618))

(assert (= (and b!6190614 (not c!1116864)) b!6190612))

(assert (= (and b!6190612 c!1116861) b!6190615))

(assert (= (and b!6190612 (not c!1116861)) b!6190609))

(assert (= (and b!6190609 c!1116863) b!6190616))

(assert (= (and b!6190609 (not c!1116863)) b!6190610))

(assert (= (or b!6190615 b!6190616) bm!517567))

(assert (= (or b!6190615 b!6190616) bm!517566))

(assert (= (or b!6190618 bm!517567) bm!517568))

(assert (= (or b!6190618 bm!517566) bm!517570))

(assert (= (or b!6190611 bm!517570) bm!517571))

(assert (= (or b!6190611 b!6190618) bm!517569))

(declare-fun m!7024818 () Bool)

(assert (=> b!6190617 m!7024818))

(declare-fun m!7024820 () Bool)

(assert (=> bm!517568 m!7024820))

(declare-fun m!7024822 () Bool)

(assert (=> b!6190613 m!7024822))

(declare-fun m!7024824 () Bool)

(assert (=> bm!517571 m!7024824))

(declare-fun m!7024826 () Bool)

(assert (=> bm!517569 m!7024826))

(assert (=> bm!517517 d!1940646))

(declare-fun d!1940650 () Bool)

(assert (=> d!1940650 (= (isEmpty!36547 (tail!11855 (unfocusZipperList!1550 zl!343))) ((_ is Nil!64563) (tail!11855 (unfocusZipperList!1550 zl!343))))))

(assert (=> b!6190349 d!1940650))

(declare-fun d!1940652 () Bool)

(assert (=> d!1940652 (= (tail!11855 (unfocusZipperList!1550 zl!343)) (t!378197 (unfocusZipperList!1550 zl!343)))))

(assert (=> b!6190349 d!1940652))

(declare-fun d!1940654 () Bool)

(assert (=> d!1940654 (= (nullable!6122 (reg!16458 r!7292)) (nullableFct!2080 (reg!16458 r!7292)))))

(declare-fun bs!1535509 () Bool)

(assert (= bs!1535509 d!1940654))

(declare-fun m!7024828 () Bool)

(assert (=> bs!1535509 m!7024828))

(assert (=> b!6190487 d!1940654))

(declare-fun bs!1535510 () Bool)

(declare-fun b!6190623 () Bool)

(assert (= bs!1535510 (and b!6190623 d!1940588)))

(declare-fun lambda!338059 () Int)

(assert (=> bs!1535510 (not (= lambda!338059 lambda!338053))))

(declare-fun bs!1535511 () Bool)

(assert (= bs!1535511 (and b!6190623 b!6190228)))

(assert (=> bs!1535511 (= (and (= (reg!16458 (regOne!32771 lt!2340713)) (reg!16458 lt!2340713)) (= (regOne!32771 lt!2340713) lt!2340713)) (= lambda!338059 lambda!338032))))

(declare-fun bs!1535512 () Bool)

(assert (= bs!1535512 (and b!6190623 b!6190298)))

(assert (=> bs!1535512 (= (and (= (reg!16458 (regOne!32771 lt!2340713)) (reg!16458 r!7292)) (= (regOne!32771 lt!2340713) r!7292)) (= lambda!338059 lambda!338034))))

(assert (=> bs!1535510 (not (= lambda!338059 lambda!338054))))

(declare-fun bs!1535513 () Bool)

(assert (= bs!1535513 (and b!6190623 b!6189558)))

(assert (=> bs!1535513 (not (= lambda!338059 lambda!337983))))

(declare-fun bs!1535514 () Bool)

(assert (= bs!1535514 (and b!6190623 b!6190141)))

(assert (=> bs!1535514 (= (and (= (reg!16458 (regOne!32771 lt!2340713)) (reg!16458 lt!2340702)) (= (regOne!32771 lt!2340713) lt!2340702)) (= lambda!338059 lambda!338028))))

(declare-fun bs!1535515 () Bool)

(assert (= bs!1535515 (and b!6190623 b!6190139)))

(assert (=> bs!1535515 (not (= lambda!338059 lambda!338029))))

(declare-fun bs!1535516 () Bool)

(assert (= bs!1535516 (and b!6190623 b!6190296)))

(assert (=> bs!1535516 (not (= lambda!338059 lambda!338035))))

(declare-fun bs!1535517 () Bool)

(assert (= bs!1535517 (and b!6190623 d!1940586)))

(assert (=> bs!1535517 (not (= lambda!338059 lambda!338048))))

(declare-fun bs!1535518 () Bool)

(assert (= bs!1535518 (and b!6190623 b!6190226)))

(assert (=> bs!1535518 (not (= lambda!338059 lambda!338033))))

(assert (=> bs!1535513 (not (= lambda!338059 lambda!337984))))

(assert (=> b!6190623 true))

(assert (=> b!6190623 true))

(declare-fun bs!1535519 () Bool)

(declare-fun b!6190621 () Bool)

(assert (= bs!1535519 (and b!6190621 d!1940588)))

(declare-fun lambda!338060 () Int)

(assert (=> bs!1535519 (not (= lambda!338060 lambda!338053))))

(declare-fun bs!1535520 () Bool)

(assert (= bs!1535520 (and b!6190621 b!6190228)))

(assert (=> bs!1535520 (not (= lambda!338060 lambda!338032))))

(declare-fun bs!1535521 () Bool)

(assert (= bs!1535521 (and b!6190621 b!6190298)))

(assert (=> bs!1535521 (not (= lambda!338060 lambda!338034))))

(assert (=> bs!1535519 (= (and (= (regOne!32770 (regOne!32771 lt!2340713)) (regOne!32770 r!7292)) (= (regTwo!32770 (regOne!32771 lt!2340713)) (regTwo!32770 r!7292))) (= lambda!338060 lambda!338054))))

(declare-fun bs!1535522 () Bool)

(assert (= bs!1535522 (and b!6190621 b!6190623)))

(assert (=> bs!1535522 (not (= lambda!338060 lambda!338059))))

(declare-fun bs!1535523 () Bool)

(assert (= bs!1535523 (and b!6190621 b!6189558)))

(assert (=> bs!1535523 (not (= lambda!338060 lambda!337983))))

(declare-fun bs!1535524 () Bool)

(assert (= bs!1535524 (and b!6190621 b!6190141)))

(assert (=> bs!1535524 (not (= lambda!338060 lambda!338028))))

(declare-fun bs!1535525 () Bool)

(assert (= bs!1535525 (and b!6190621 b!6190139)))

(assert (=> bs!1535525 (= (and (= (regOne!32770 (regOne!32771 lt!2340713)) (regOne!32770 lt!2340702)) (= (regTwo!32770 (regOne!32771 lt!2340713)) (regTwo!32770 lt!2340702))) (= lambda!338060 lambda!338029))))

(declare-fun bs!1535526 () Bool)

(assert (= bs!1535526 (and b!6190621 b!6190296)))

(assert (=> bs!1535526 (= (and (= (regOne!32770 (regOne!32771 lt!2340713)) (regOne!32770 r!7292)) (= (regTwo!32770 (regOne!32771 lt!2340713)) (regTwo!32770 r!7292))) (= lambda!338060 lambda!338035))))

(declare-fun bs!1535527 () Bool)

(assert (= bs!1535527 (and b!6190621 d!1940586)))

(assert (=> bs!1535527 (not (= lambda!338060 lambda!338048))))

(declare-fun bs!1535528 () Bool)

(assert (= bs!1535528 (and b!6190621 b!6190226)))

(assert (=> bs!1535528 (= (and (= (regOne!32770 (regOne!32771 lt!2340713)) (regOne!32770 lt!2340713)) (= (regTwo!32770 (regOne!32771 lt!2340713)) (regTwo!32770 lt!2340713))) (= lambda!338060 lambda!338033))))

(assert (=> bs!1535523 (= (and (= (regOne!32770 (regOne!32771 lt!2340713)) (regOne!32770 r!7292)) (= (regTwo!32770 (regOne!32771 lt!2340713)) (regTwo!32770 r!7292))) (= lambda!338060 lambda!337984))))

(assert (=> b!6190621 true))

(assert (=> b!6190621 true))

(declare-fun b!6190620 () Bool)

(declare-fun e!3770171 () Bool)

(assert (=> b!6190620 (= e!3770171 (= s!2326 (Cons!64562 (c!1116552 (regOne!32771 lt!2340713)) Nil!64562)))))

(declare-fun e!3770169 () Bool)

(declare-fun call!517578 () Bool)

(assert (=> b!6190621 (= e!3770169 call!517578)))

(declare-fun b!6190622 () Bool)

(declare-fun c!1116866 () Bool)

(assert (=> b!6190622 (= c!1116866 ((_ is ElementMatch!16129) (regOne!32771 lt!2340713)))))

(declare-fun e!3770170 () Bool)

(assert (=> b!6190622 (= e!3770170 e!3770171)))

(declare-fun e!3770168 () Bool)

(assert (=> b!6190623 (= e!3770168 call!517578)))

(declare-fun b!6190624 () Bool)

(declare-fun e!3770167 () Bool)

(declare-fun call!517577 () Bool)

(assert (=> b!6190624 (= e!3770167 call!517577)))

(declare-fun bm!517572 () Bool)

(assert (=> bm!517572 (= call!517577 (isEmpty!36550 s!2326))))

(declare-fun b!6190625 () Bool)

(assert (=> b!6190625 (= e!3770167 e!3770170)))

(declare-fun res!2561033 () Bool)

(assert (=> b!6190625 (= res!2561033 (not ((_ is EmptyLang!16129) (regOne!32771 lt!2340713))))))

(assert (=> b!6190625 (=> (not res!2561033) (not e!3770170))))

(declare-fun b!6190626 () Bool)

(declare-fun e!3770172 () Bool)

(assert (=> b!6190626 (= e!3770172 e!3770169)))

(declare-fun c!1116867 () Bool)

(assert (=> b!6190626 (= c!1116867 ((_ is Star!16129) (regOne!32771 lt!2340713)))))

(declare-fun b!6190627 () Bool)

(declare-fun e!3770166 () Bool)

(assert (=> b!6190627 (= e!3770172 e!3770166)))

(declare-fun res!2561031 () Bool)

(assert (=> b!6190627 (= res!2561031 (matchRSpec!3230 (regOne!32771 (regOne!32771 lt!2340713)) s!2326))))

(assert (=> b!6190627 (=> res!2561031 e!3770166)))

(declare-fun b!6190628 () Bool)

(declare-fun res!2561032 () Bool)

(assert (=> b!6190628 (=> res!2561032 e!3770168)))

(assert (=> b!6190628 (= res!2561032 call!517577)))

(assert (=> b!6190628 (= e!3770169 e!3770168)))

(declare-fun b!6190629 () Bool)

(declare-fun c!1116865 () Bool)

(assert (=> b!6190629 (= c!1116865 ((_ is Union!16129) (regOne!32771 lt!2340713)))))

(assert (=> b!6190629 (= e!3770171 e!3770172)))

(declare-fun b!6190630 () Bool)

(assert (=> b!6190630 (= e!3770166 (matchRSpec!3230 (regTwo!32771 (regOne!32771 lt!2340713)) s!2326))))

(declare-fun bm!517573 () Bool)

(assert (=> bm!517573 (= call!517578 (Exists!3199 (ite c!1116867 lambda!338059 lambda!338060)))))

(declare-fun d!1940658 () Bool)

(declare-fun c!1116868 () Bool)

(assert (=> d!1940658 (= c!1116868 ((_ is EmptyExpr!16129) (regOne!32771 lt!2340713)))))

(assert (=> d!1940658 (= (matchRSpec!3230 (regOne!32771 lt!2340713) s!2326) e!3770167)))

(assert (= (and d!1940658 c!1116868) b!6190624))

(assert (= (and d!1940658 (not c!1116868)) b!6190625))

(assert (= (and b!6190625 res!2561033) b!6190622))

(assert (= (and b!6190622 c!1116866) b!6190620))

(assert (= (and b!6190622 (not c!1116866)) b!6190629))

(assert (= (and b!6190629 c!1116865) b!6190627))

(assert (= (and b!6190629 (not c!1116865)) b!6190626))

(assert (= (and b!6190627 (not res!2561031)) b!6190630))

(assert (= (and b!6190626 c!1116867) b!6190628))

(assert (= (and b!6190626 (not c!1116867)) b!6190621))

(assert (= (and b!6190628 (not res!2561032)) b!6190623))

(assert (= (or b!6190623 b!6190621) bm!517573))

(assert (= (or b!6190624 b!6190628) bm!517572))

(assert (=> bm!517572 m!7024388))

(declare-fun m!7024836 () Bool)

(assert (=> b!6190627 m!7024836))

(declare-fun m!7024838 () Bool)

(assert (=> b!6190630 m!7024838))

(declare-fun m!7024840 () Bool)

(assert (=> bm!517573 m!7024840))

(assert (=> b!6190232 d!1940658))

(declare-fun c!1116872 () Bool)

(declare-fun bm!517577 () Bool)

(declare-fun call!517584 () Bool)

(assert (=> bm!517577 (= call!517584 (validRegex!7865 (ite c!1116872 (regOne!32771 (ite c!1116805 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))) (regOne!32770 (ite c!1116805 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))))))))

(declare-fun b!6190644 () Bool)

(declare-fun e!3770185 () Bool)

(declare-fun call!517583 () Bool)

(assert (=> b!6190644 (= e!3770185 call!517583)))

(declare-fun d!1940664 () Bool)

(declare-fun res!2561045 () Bool)

(declare-fun e!3770187 () Bool)

(assert (=> d!1940664 (=> res!2561045 e!3770187)))

(assert (=> d!1940664 (= res!2561045 ((_ is ElementMatch!16129) (ite c!1116805 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))))))

(assert (=> d!1940664 (= (validRegex!7865 (ite c!1116805 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))) e!3770187)))

(declare-fun bm!517578 () Bool)

(declare-fun call!517582 () Bool)

(assert (=> bm!517578 (= call!517582 call!517583)))

(declare-fun bm!517579 () Bool)

(declare-fun c!1116871 () Bool)

(assert (=> bm!517579 (= call!517583 (validRegex!7865 (ite c!1116871 (reg!16458 (ite c!1116805 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))) (ite c!1116872 (regTwo!32771 (ite c!1116805 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))) (regTwo!32770 (ite c!1116805 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292)))))))))))

(declare-fun b!6190645 () Bool)

(declare-fun e!3770190 () Bool)

(assert (=> b!6190645 (= e!3770190 call!517582)))

(declare-fun b!6190646 () Bool)

(declare-fun e!3770184 () Bool)

(assert (=> b!6190646 (= e!3770184 e!3770185)))

(declare-fun res!2561044 () Bool)

(assert (=> b!6190646 (= res!2561044 (not (nullable!6122 (reg!16458 (ite c!1116805 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))))))))

(assert (=> b!6190646 (=> (not res!2561044) (not e!3770185))))

(declare-fun b!6190647 () Bool)

(declare-fun e!3770186 () Bool)

(assert (=> b!6190647 (= e!3770186 call!517582)))

(declare-fun b!6190648 () Bool)

(assert (=> b!6190648 (= e!3770187 e!3770184)))

(assert (=> b!6190648 (= c!1116871 ((_ is Star!16129) (ite c!1116805 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))))))

(declare-fun b!6190649 () Bool)

(declare-fun res!2561043 () Bool)

(declare-fun e!3770189 () Bool)

(assert (=> b!6190649 (=> res!2561043 e!3770189)))

(assert (=> b!6190649 (= res!2561043 (not ((_ is Concat!24974) (ite c!1116805 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292)))))))))

(declare-fun e!3770188 () Bool)

(assert (=> b!6190649 (= e!3770188 e!3770189)))

(declare-fun b!6190650 () Bool)

(assert (=> b!6190650 (= e!3770189 e!3770190)))

(declare-fun res!2561047 () Bool)

(assert (=> b!6190650 (=> (not res!2561047) (not e!3770190))))

(assert (=> b!6190650 (= res!2561047 call!517584)))

(declare-fun b!6190651 () Bool)

(assert (=> b!6190651 (= e!3770184 e!3770188)))

(assert (=> b!6190651 (= c!1116872 ((_ is Union!16129) (ite c!1116805 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))))))

(declare-fun b!6190652 () Bool)

(declare-fun res!2561046 () Bool)

(assert (=> b!6190652 (=> (not res!2561046) (not e!3770186))))

(assert (=> b!6190652 (= res!2561046 call!517584)))

(assert (=> b!6190652 (= e!3770188 e!3770186)))

(assert (= (and d!1940664 (not res!2561045)) b!6190648))

(assert (= (and b!6190648 c!1116871) b!6190646))

(assert (= (and b!6190648 (not c!1116871)) b!6190651))

(assert (= (and b!6190646 res!2561044) b!6190644))

(assert (= (and b!6190651 c!1116872) b!6190652))

(assert (= (and b!6190651 (not c!1116872)) b!6190649))

(assert (= (and b!6190652 res!2561046) b!6190647))

(assert (= (and b!6190649 (not res!2561043)) b!6190650))

(assert (= (and b!6190650 res!2561047) b!6190645))

(assert (= (or b!6190647 b!6190645) bm!517578))

(assert (= (or b!6190652 b!6190650) bm!517577))

(assert (= (or b!6190644 bm!517578) bm!517579))

(declare-fun m!7024842 () Bool)

(assert (=> bm!517577 m!7024842))

(declare-fun m!7024844 () Bool)

(assert (=> bm!517579 m!7024844))

(declare-fun m!7024846 () Bool)

(assert (=> b!6190646 m!7024846))

(assert (=> bm!517535 d!1940664))

(declare-fun d!1940666 () Bool)

(assert (=> d!1940666 (= (isEmpty!36547 (tail!11855 lt!2340694)) ((_ is Nil!64563) (tail!11855 lt!2340694)))))

(assert (=> b!6190207 d!1940666))

(declare-fun d!1940668 () Bool)

(assert (=> d!1940668 (= (tail!11855 lt!2340694) (t!378197 lt!2340694))))

(assert (=> b!6190207 d!1940668))

(declare-fun d!1940670 () Bool)

(declare-fun res!2561059 () Bool)

(declare-fun e!3770204 () Bool)

(assert (=> d!1940670 (=> res!2561059 e!3770204)))

(assert (=> d!1940670 (= res!2561059 ((_ is Nil!64563) (exprs!6013 (h!71012 zl!343))))))

(assert (=> d!1940670 (= (forall!15245 (exprs!6013 (h!71012 zl!343)) lambda!338039) e!3770204)))

(declare-fun b!6190668 () Bool)

(declare-fun e!3770205 () Bool)

(assert (=> b!6190668 (= e!3770204 e!3770205)))

(declare-fun res!2561060 () Bool)

(assert (=> b!6190668 (=> (not res!2561060) (not e!3770205))))

(declare-fun dynLambda!25460 (Int Regex!16129) Bool)

(assert (=> b!6190668 (= res!2561060 (dynLambda!25460 lambda!338039 (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun b!6190669 () Bool)

(assert (=> b!6190669 (= e!3770205 (forall!15245 (t!378197 (exprs!6013 (h!71012 zl!343))) lambda!338039))))

(assert (= (and d!1940670 (not res!2561059)) b!6190668))

(assert (= (and b!6190668 res!2561060) b!6190669))

(declare-fun b_lambda!235519 () Bool)

(assert (=> (not b_lambda!235519) (not b!6190668)))

(declare-fun m!7024852 () Bool)

(assert (=> b!6190668 m!7024852))

(declare-fun m!7024854 () Bool)

(assert (=> b!6190669 m!7024854))

(assert (=> d!1940528 d!1940670))

(declare-fun d!1940674 () Bool)

(assert (=> d!1940674 (= (nullable!6122 (h!71011 (exprs!6013 lt!2340688))) (nullableFct!2080 (h!71011 (exprs!6013 lt!2340688))))))

(declare-fun bs!1535529 () Bool)

(assert (= bs!1535529 d!1940674))

(declare-fun m!7024858 () Bool)

(assert (=> bs!1535529 m!7024858))

(assert (=> b!6190427 d!1940674))

(assert (=> bm!517526 d!1940614))

(declare-fun d!1940676 () Bool)

(declare-fun e!3770218 () Bool)

(assert (=> d!1940676 e!3770218))

(declare-fun res!2561071 () Bool)

(assert (=> d!1940676 (=> (not res!2561071) (not e!3770218))))

(declare-fun lt!2340863 () List!64686)

(declare-fun content!12061 (List!64686) (InoxSet C!32528))

(assert (=> d!1940676 (= res!2561071 (= (content!12061 lt!2340863) ((_ map or) (content!12061 (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562))) (content!12061 (t!378196 s!2326)))))))

(declare-fun e!3770217 () List!64686)

(assert (=> d!1940676 (= lt!2340863 e!3770217)))

(declare-fun c!1116879 () Bool)

(assert (=> d!1940676 (= c!1116879 ((_ is Nil!64562) (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562))))))

(assert (=> d!1940676 (= (++!14209 (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562)) (t!378196 s!2326)) lt!2340863)))

(declare-fun b!6190689 () Bool)

(declare-fun res!2561070 () Bool)

(assert (=> b!6190689 (=> (not res!2561070) (not e!3770218))))

(declare-fun size!40261 (List!64686) Int)

(assert (=> b!6190689 (= res!2561070 (= (size!40261 lt!2340863) (+ (size!40261 (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562))) (size!40261 (t!378196 s!2326)))))))

(declare-fun b!6190687 () Bool)

(assert (=> b!6190687 (= e!3770217 (t!378196 s!2326))))

(declare-fun b!6190688 () Bool)

(assert (=> b!6190688 (= e!3770217 (Cons!64562 (h!71010 (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562))) (++!14209 (t!378196 (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562))) (t!378196 s!2326))))))

(declare-fun b!6190690 () Bool)

(assert (=> b!6190690 (= e!3770218 (or (not (= (t!378196 s!2326) Nil!64562)) (= lt!2340863 (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562)))))))

(assert (= (and d!1940676 c!1116879) b!6190687))

(assert (= (and d!1940676 (not c!1116879)) b!6190688))

(assert (= (and d!1940676 res!2561071) b!6190689))

(assert (= (and b!6190689 res!2561070) b!6190690))

(declare-fun m!7024872 () Bool)

(assert (=> d!1940676 m!7024872))

(assert (=> d!1940676 m!7024686))

(declare-fun m!7024874 () Bool)

(assert (=> d!1940676 m!7024874))

(declare-fun m!7024876 () Bool)

(assert (=> d!1940676 m!7024876))

(declare-fun m!7024878 () Bool)

(assert (=> b!6190689 m!7024878))

(assert (=> b!6190689 m!7024686))

(declare-fun m!7024880 () Bool)

(assert (=> b!6190689 m!7024880))

(declare-fun m!7024882 () Bool)

(assert (=> b!6190689 m!7024882))

(declare-fun m!7024884 () Bool)

(assert (=> b!6190688 m!7024884))

(assert (=> b!6190469 d!1940676))

(declare-fun d!1940690 () Bool)

(declare-fun e!3770220 () Bool)

(assert (=> d!1940690 e!3770220))

(declare-fun res!2561073 () Bool)

(assert (=> d!1940690 (=> (not res!2561073) (not e!3770220))))

(declare-fun lt!2340864 () List!64686)

(assert (=> d!1940690 (= res!2561073 (= (content!12061 lt!2340864) ((_ map or) (content!12061 Nil!64562) (content!12061 (Cons!64562 (h!71010 s!2326) Nil!64562)))))))

(declare-fun e!3770219 () List!64686)

(assert (=> d!1940690 (= lt!2340864 e!3770219)))

(declare-fun c!1116880 () Bool)

(assert (=> d!1940690 (= c!1116880 ((_ is Nil!64562) Nil!64562))))

(assert (=> d!1940690 (= (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562)) lt!2340864)))

(declare-fun b!6190693 () Bool)

(declare-fun res!2561072 () Bool)

(assert (=> b!6190693 (=> (not res!2561072) (not e!3770220))))

(assert (=> b!6190693 (= res!2561072 (= (size!40261 lt!2340864) (+ (size!40261 Nil!64562) (size!40261 (Cons!64562 (h!71010 s!2326) Nil!64562)))))))

(declare-fun b!6190691 () Bool)

(assert (=> b!6190691 (= e!3770219 (Cons!64562 (h!71010 s!2326) Nil!64562))))

(declare-fun b!6190692 () Bool)

(assert (=> b!6190692 (= e!3770219 (Cons!64562 (h!71010 Nil!64562) (++!14209 (t!378196 Nil!64562) (Cons!64562 (h!71010 s!2326) Nil!64562))))))

(declare-fun b!6190694 () Bool)

(assert (=> b!6190694 (= e!3770220 (or (not (= (Cons!64562 (h!71010 s!2326) Nil!64562) Nil!64562)) (= lt!2340864 Nil!64562)))))

(assert (= (and d!1940690 c!1116880) b!6190691))

(assert (= (and d!1940690 (not c!1116880)) b!6190692))

(assert (= (and d!1940690 res!2561073) b!6190693))

(assert (= (and b!6190693 res!2561072) b!6190694))

(declare-fun m!7024886 () Bool)

(assert (=> d!1940690 m!7024886))

(declare-fun m!7024888 () Bool)

(assert (=> d!1940690 m!7024888))

(declare-fun m!7024890 () Bool)

(assert (=> d!1940690 m!7024890))

(declare-fun m!7024892 () Bool)

(assert (=> b!6190693 m!7024892))

(declare-fun m!7024894 () Bool)

(assert (=> b!6190693 m!7024894))

(declare-fun m!7024896 () Bool)

(assert (=> b!6190693 m!7024896))

(declare-fun m!7024898 () Bool)

(assert (=> b!6190692 m!7024898))

(assert (=> b!6190469 d!1940690))

(declare-fun d!1940692 () Bool)

(assert (=> d!1940692 (= (++!14209 (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562)) (t!378196 s!2326)) s!2326)))

(declare-fun lt!2340867 () Unit!157811)

(declare-fun choose!45998 (List!64686 C!32528 List!64686 List!64686) Unit!157811)

(assert (=> d!1940692 (= lt!2340867 (choose!45998 Nil!64562 (h!71010 s!2326) (t!378196 s!2326) s!2326))))

(assert (=> d!1940692 (= (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) (t!378196 s!2326))) s!2326)))

(assert (=> d!1940692 (= (lemmaMoveElementToOtherListKeepsConcatEq!2304 Nil!64562 (h!71010 s!2326) (t!378196 s!2326) s!2326) lt!2340867)))

(declare-fun bs!1535531 () Bool)

(assert (= bs!1535531 d!1940692))

(assert (=> bs!1535531 m!7024686))

(assert (=> bs!1535531 m!7024686))

(assert (=> bs!1535531 m!7024688))

(declare-fun m!7024900 () Bool)

(assert (=> bs!1535531 m!7024900))

(declare-fun m!7024902 () Bool)

(assert (=> bs!1535531 m!7024902))

(assert (=> b!6190469 d!1940692))

(declare-fun b!6190695 () Bool)

(declare-fun res!2561077 () Bool)

(declare-fun e!3770225 () Bool)

(assert (=> b!6190695 (=> (not res!2561077) (not e!3770225))))

(declare-fun lt!2340868 () Option!16020)

(assert (=> b!6190695 (= res!2561077 (matchR!8312 (regOne!32770 r!7292) (_1!36411 (get!22289 lt!2340868))))))

(declare-fun b!6190696 () Bool)

(declare-fun e!3770222 () Option!16020)

(assert (=> b!6190696 (= e!3770222 None!16019)))

(declare-fun b!6190697 () Bool)

(declare-fun e!3770224 () Bool)

(assert (=> b!6190697 (= e!3770224 (not (isDefined!12723 lt!2340868)))))

(declare-fun b!6190698 () Bool)

(declare-fun e!3770223 () Option!16020)

(assert (=> b!6190698 (= e!3770223 (Some!16019 (tuple2!66217 (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562)) (t!378196 s!2326))))))

(declare-fun b!6190699 () Bool)

(assert (=> b!6190699 (= e!3770225 (= (++!14209 (_1!36411 (get!22289 lt!2340868)) (_2!36411 (get!22289 lt!2340868))) s!2326))))

(declare-fun d!1940694 () Bool)

(assert (=> d!1940694 e!3770224))

(declare-fun res!2561076 () Bool)

(assert (=> d!1940694 (=> res!2561076 e!3770224)))

(assert (=> d!1940694 (= res!2561076 e!3770225)))

(declare-fun res!2561075 () Bool)

(assert (=> d!1940694 (=> (not res!2561075) (not e!3770225))))

(assert (=> d!1940694 (= res!2561075 (isDefined!12723 lt!2340868))))

(assert (=> d!1940694 (= lt!2340868 e!3770223)))

(declare-fun c!1116881 () Bool)

(declare-fun e!3770221 () Bool)

(assert (=> d!1940694 (= c!1116881 e!3770221)))

(declare-fun res!2561078 () Bool)

(assert (=> d!1940694 (=> (not res!2561078) (not e!3770221))))

(assert (=> d!1940694 (= res!2561078 (matchR!8312 (regOne!32770 r!7292) (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562))))))

(assert (=> d!1940694 (validRegex!7865 (regOne!32770 r!7292))))

(assert (=> d!1940694 (= (findConcatSeparation!2434 (regOne!32770 r!7292) (regTwo!32770 r!7292) (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562)) (t!378196 s!2326) s!2326) lt!2340868)))

(declare-fun b!6190700 () Bool)

(assert (=> b!6190700 (= e!3770221 (matchR!8312 (regTwo!32770 r!7292) (t!378196 s!2326)))))

(declare-fun b!6190701 () Bool)

(assert (=> b!6190701 (= e!3770223 e!3770222)))

(declare-fun c!1116882 () Bool)

(assert (=> b!6190701 (= c!1116882 ((_ is Nil!64562) (t!378196 s!2326)))))

(declare-fun b!6190702 () Bool)

(declare-fun lt!2340870 () Unit!157811)

(declare-fun lt!2340869 () Unit!157811)

(assert (=> b!6190702 (= lt!2340870 lt!2340869)))

(assert (=> b!6190702 (= (++!14209 (++!14209 (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562)) (Cons!64562 (h!71010 (t!378196 s!2326)) Nil!64562)) (t!378196 (t!378196 s!2326))) s!2326)))

(assert (=> b!6190702 (= lt!2340869 (lemmaMoveElementToOtherListKeepsConcatEq!2304 (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562)) (h!71010 (t!378196 s!2326)) (t!378196 (t!378196 s!2326)) s!2326))))

(assert (=> b!6190702 (= e!3770222 (findConcatSeparation!2434 (regOne!32770 r!7292) (regTwo!32770 r!7292) (++!14209 (++!14209 Nil!64562 (Cons!64562 (h!71010 s!2326) Nil!64562)) (Cons!64562 (h!71010 (t!378196 s!2326)) Nil!64562)) (t!378196 (t!378196 s!2326)) s!2326))))

(declare-fun b!6190703 () Bool)

(declare-fun res!2561074 () Bool)

(assert (=> b!6190703 (=> (not res!2561074) (not e!3770225))))

(assert (=> b!6190703 (= res!2561074 (matchR!8312 (regTwo!32770 r!7292) (_2!36411 (get!22289 lt!2340868))))))

(assert (= (and d!1940694 res!2561078) b!6190700))

(assert (= (and d!1940694 c!1116881) b!6190698))

(assert (= (and d!1940694 (not c!1116881)) b!6190701))

(assert (= (and b!6190701 c!1116882) b!6190696))

(assert (= (and b!6190701 (not c!1116882)) b!6190702))

(assert (= (and d!1940694 res!2561075) b!6190695))

(assert (= (and b!6190695 res!2561077) b!6190703))

(assert (= (and b!6190703 res!2561074) b!6190699))

(assert (= (and d!1940694 (not res!2561076)) b!6190697))

(declare-fun m!7024904 () Bool)

(assert (=> b!6190699 m!7024904))

(declare-fun m!7024906 () Bool)

(assert (=> b!6190699 m!7024906))

(declare-fun m!7024908 () Bool)

(assert (=> b!6190697 m!7024908))

(assert (=> b!6190702 m!7024686))

(declare-fun m!7024910 () Bool)

(assert (=> b!6190702 m!7024910))

(assert (=> b!6190702 m!7024910))

(declare-fun m!7024912 () Bool)

(assert (=> b!6190702 m!7024912))

(assert (=> b!6190702 m!7024686))

(declare-fun m!7024914 () Bool)

(assert (=> b!6190702 m!7024914))

(assert (=> b!6190702 m!7024910))

(declare-fun m!7024916 () Bool)

(assert (=> b!6190702 m!7024916))

(assert (=> b!6190695 m!7024904))

(declare-fun m!7024918 () Bool)

(assert (=> b!6190695 m!7024918))

(assert (=> b!6190703 m!7024904))

(declare-fun m!7024920 () Bool)

(assert (=> b!6190703 m!7024920))

(assert (=> d!1940694 m!7024908))

(assert (=> d!1940694 m!7024686))

(declare-fun m!7024922 () Bool)

(assert (=> d!1940694 m!7024922))

(assert (=> d!1940694 m!7024700))

(declare-fun m!7024924 () Bool)

(assert (=> b!6190700 m!7024924))

(assert (=> b!6190469 d!1940694))

(declare-fun d!1940696 () Bool)

(assert (=> d!1940696 (= ($colon$colon!2000 (exprs!6013 lt!2340688) (ite (or c!1116772 c!1116769) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (regOne!32771 (regOne!32770 r!7292)))) (Cons!64563 (ite (or c!1116772 c!1116769) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))) (regOne!32771 (regOne!32770 r!7292))) (exprs!6013 lt!2340688)))))

(assert (=> bm!517522 d!1940696))

(declare-fun d!1940698 () Bool)

(declare-fun c!1116883 () Bool)

(assert (=> d!1940698 (= c!1116883 (isEmpty!36550 (tail!11856 (t!378196 s!2326))))))

(declare-fun e!3770226 () Bool)

(assert (=> d!1940698 (= (matchZipper!2141 (derivationStepZipper!2097 lt!2340698 (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))) e!3770226)))

(declare-fun b!6190704 () Bool)

(assert (=> b!6190704 (= e!3770226 (nullableZipper!1905 (derivationStepZipper!2097 lt!2340698 (head!12771 (t!378196 s!2326)))))))

(declare-fun b!6190705 () Bool)

(assert (=> b!6190705 (= e!3770226 (matchZipper!2141 (derivationStepZipper!2097 (derivationStepZipper!2097 lt!2340698 (head!12771 (t!378196 s!2326))) (head!12771 (tail!11856 (t!378196 s!2326)))) (tail!11856 (tail!11856 (t!378196 s!2326)))))))

(assert (= (and d!1940698 c!1116883) b!6190704))

(assert (= (and d!1940698 (not c!1116883)) b!6190705))

(assert (=> d!1940698 m!7024486))

(declare-fun m!7024926 () Bool)

(assert (=> d!1940698 m!7024926))

(assert (=> b!6190704 m!7024484))

(declare-fun m!7024928 () Bool)

(assert (=> b!6190704 m!7024928))

(assert (=> b!6190705 m!7024486))

(declare-fun m!7024930 () Bool)

(assert (=> b!6190705 m!7024930))

(assert (=> b!6190705 m!7024484))

(assert (=> b!6190705 m!7024930))

(declare-fun m!7024932 () Bool)

(assert (=> b!6190705 m!7024932))

(assert (=> b!6190705 m!7024486))

(declare-fun m!7024934 () Bool)

(assert (=> b!6190705 m!7024934))

(assert (=> b!6190705 m!7024932))

(assert (=> b!6190705 m!7024934))

(declare-fun m!7024936 () Bool)

(assert (=> b!6190705 m!7024936))

(assert (=> b!6190237 d!1940698))

(declare-fun bs!1535532 () Bool)

(declare-fun d!1940700 () Bool)

(assert (= bs!1535532 (and d!1940700 b!6189536)))

(declare-fun lambda!338061 () Int)

(assert (=> bs!1535532 (= (= (head!12771 (t!378196 s!2326)) (h!71010 s!2326)) (= lambda!338061 lambda!337985))))

(declare-fun bs!1535533 () Bool)

(assert (= bs!1535533 (and d!1940700 d!1940624)))

(assert (=> bs!1535533 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338061 lambda!338058))))

(assert (=> d!1940700 true))

(assert (=> d!1940700 (= (derivationStepZipper!2097 lt!2340698 (head!12771 (t!378196 s!2326))) (flatMap!1634 lt!2340698 lambda!338061))))

(declare-fun bs!1535534 () Bool)

(assert (= bs!1535534 d!1940700))

(declare-fun m!7024938 () Bool)

(assert (=> bs!1535534 m!7024938))

(assert (=> b!6190237 d!1940700))

(declare-fun d!1940702 () Bool)

(assert (=> d!1940702 (= (head!12771 (t!378196 s!2326)) (h!71010 (t!378196 s!2326)))))

(assert (=> b!6190237 d!1940702))

(declare-fun d!1940704 () Bool)

(assert (=> d!1940704 (= (tail!11856 (t!378196 s!2326)) (t!378196 (t!378196 s!2326)))))

(assert (=> b!6190237 d!1940704))

(declare-fun d!1940706 () Bool)

(assert (=> d!1940706 (= (Exists!3199 (ite c!1116747 lambda!338032 lambda!338033)) (choose!45995 (ite c!1116747 lambda!338032 lambda!338033)))))

(declare-fun bs!1535535 () Bool)

(assert (= bs!1535535 d!1940706))

(declare-fun m!7024940 () Bool)

(assert (=> bs!1535535 m!7024940))

(assert (=> bm!517501 d!1940706))

(declare-fun d!1940708 () Bool)

(assert (=> d!1940708 (= (isConcat!1064 lt!2340810) ((_ is Concat!24974) lt!2340810))))

(assert (=> b!6190215 d!1940708))

(declare-fun b!6190706 () Bool)

(declare-fun c!1116887 () Bool)

(assert (=> b!6190706 (= c!1116887 ((_ is Star!16129) (h!71011 (exprs!6013 lt!2340703))))))

(declare-fun e!3770227 () (InoxSet Context!11026))

(declare-fun e!3770230 () (InoxSet Context!11026))

(assert (=> b!6190706 (= e!3770227 e!3770230)))

(declare-fun b!6190707 () Bool)

(assert (=> b!6190707 (= e!3770230 ((as const (Array Context!11026 Bool)) false))))

(declare-fun bm!517586 () Bool)

(declare-fun call!517592 () (InoxSet Context!11026))

(declare-fun call!517594 () (InoxSet Context!11026))

(assert (=> bm!517586 (= call!517592 call!517594)))

(declare-fun bm!517587 () Bool)

(declare-fun call!517596 () List!64687)

(declare-fun call!517595 () List!64687)

(assert (=> bm!517587 (= call!517596 call!517595)))

(declare-fun b!6190708 () Bool)

(declare-fun e!3770228 () (InoxSet Context!11026))

(declare-fun call!517591 () (InoxSet Context!11026))

(declare-fun call!517593 () (InoxSet Context!11026))

(assert (=> b!6190708 (= e!3770228 ((_ map or) call!517591 call!517593))))

(declare-fun b!6190709 () Bool)

(declare-fun e!3770232 () (InoxSet Context!11026))

(assert (=> b!6190709 (= e!3770232 e!3770227)))

(declare-fun c!1116885 () Bool)

(assert (=> b!6190709 (= c!1116885 ((_ is Concat!24974) (h!71011 (exprs!6013 lt!2340703))))))

(declare-fun c!1116888 () Bool)

(declare-fun bm!517588 () Bool)

(assert (=> bm!517588 (= call!517595 ($colon$colon!2000 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340703)))) (ite (or c!1116888 c!1116885) (regTwo!32770 (h!71011 (exprs!6013 lt!2340703))) (h!71011 (exprs!6013 lt!2340703)))))))

(declare-fun bm!517589 () Bool)

(declare-fun c!1116884 () Bool)

(assert (=> bm!517589 (= call!517591 (derivationStepZipperDown!1377 (ite c!1116884 (regOne!32771 (h!71011 (exprs!6013 lt!2340703))) (regOne!32770 (h!71011 (exprs!6013 lt!2340703)))) (ite c!1116884 (Context!11027 (t!378197 (exprs!6013 lt!2340703))) (Context!11027 call!517595)) (h!71010 s!2326)))))

(declare-fun bm!517590 () Bool)

(assert (=> bm!517590 (= call!517594 call!517593)))

(declare-fun b!6190710 () Bool)

(declare-fun e!3770229 () Bool)

(assert (=> b!6190710 (= e!3770229 (nullable!6122 (regOne!32770 (h!71011 (exprs!6013 lt!2340703)))))))

(declare-fun bm!517591 () Bool)

(assert (=> bm!517591 (= call!517593 (derivationStepZipperDown!1377 (ite c!1116884 (regTwo!32771 (h!71011 (exprs!6013 lt!2340703))) (ite c!1116888 (regTwo!32770 (h!71011 (exprs!6013 lt!2340703))) (ite c!1116885 (regOne!32770 (h!71011 (exprs!6013 lt!2340703))) (reg!16458 (h!71011 (exprs!6013 lt!2340703)))))) (ite (or c!1116884 c!1116888) (Context!11027 (t!378197 (exprs!6013 lt!2340703))) (Context!11027 call!517596)) (h!71010 s!2326)))))

(declare-fun b!6190711 () Bool)

(assert (=> b!6190711 (= c!1116888 e!3770229)))

(declare-fun res!2561079 () Bool)

(assert (=> b!6190711 (=> (not res!2561079) (not e!3770229))))

(assert (=> b!6190711 (= res!2561079 ((_ is Concat!24974) (h!71011 (exprs!6013 lt!2340703))))))

(assert (=> b!6190711 (= e!3770228 e!3770232)))

(declare-fun d!1940710 () Bool)

(declare-fun c!1116886 () Bool)

(assert (=> d!1940710 (= c!1116886 (and ((_ is ElementMatch!16129) (h!71011 (exprs!6013 lt!2340703))) (= (c!1116552 (h!71011 (exprs!6013 lt!2340703))) (h!71010 s!2326))))))

(declare-fun e!3770231 () (InoxSet Context!11026))

(assert (=> d!1940710 (= (derivationStepZipperDown!1377 (h!71011 (exprs!6013 lt!2340703)) (Context!11027 (t!378197 (exprs!6013 lt!2340703))) (h!71010 s!2326)) e!3770231)))

(declare-fun b!6190712 () Bool)

(assert (=> b!6190712 (= e!3770227 call!517592)))

(declare-fun b!6190713 () Bool)

(assert (=> b!6190713 (= e!3770230 call!517592)))

(declare-fun b!6190714 () Bool)

(assert (=> b!6190714 (= e!3770231 (store ((as const (Array Context!11026 Bool)) false) (Context!11027 (t!378197 (exprs!6013 lt!2340703))) true))))

(declare-fun b!6190715 () Bool)

(assert (=> b!6190715 (= e!3770232 ((_ map or) call!517591 call!517594))))

(declare-fun b!6190716 () Bool)

(assert (=> b!6190716 (= e!3770231 e!3770228)))

(assert (=> b!6190716 (= c!1116884 ((_ is Union!16129) (h!71011 (exprs!6013 lt!2340703))))))

(assert (= (and d!1940710 c!1116886) b!6190714))

(assert (= (and d!1940710 (not c!1116886)) b!6190716))

(assert (= (and b!6190716 c!1116884) b!6190708))

(assert (= (and b!6190716 (not c!1116884)) b!6190711))

(assert (= (and b!6190711 res!2561079) b!6190710))

(assert (= (and b!6190711 c!1116888) b!6190715))

(assert (= (and b!6190711 (not c!1116888)) b!6190709))

(assert (= (and b!6190709 c!1116885) b!6190712))

(assert (= (and b!6190709 (not c!1116885)) b!6190706))

(assert (= (and b!6190706 c!1116887) b!6190713))

(assert (= (and b!6190706 (not c!1116887)) b!6190707))

(assert (= (or b!6190712 b!6190713) bm!517587))

(assert (= (or b!6190712 b!6190713) bm!517586))

(assert (= (or b!6190715 bm!517587) bm!517588))

(assert (= (or b!6190715 bm!517586) bm!517590))

(assert (= (or b!6190708 bm!517590) bm!517591))

(assert (= (or b!6190708 b!6190715) bm!517589))

(declare-fun m!7024942 () Bool)

(assert (=> b!6190714 m!7024942))

(declare-fun m!7024944 () Bool)

(assert (=> bm!517588 m!7024944))

(declare-fun m!7024946 () Bool)

(assert (=> b!6190710 m!7024946))

(declare-fun m!7024948 () Bool)

(assert (=> bm!517591 m!7024948))

(declare-fun m!7024950 () Bool)

(assert (=> bm!517589 m!7024950))

(assert (=> bm!517550 d!1940710))

(assert (=> b!6190244 d!1940592))

(assert (=> b!6190188 d!1940626))

(declare-fun b!6190721 () Bool)

(declare-fun c!1116892 () Bool)

(assert (=> b!6190721 (= c!1116892 ((_ is Star!16129) (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343)))))))))))

(declare-fun e!3770235 () (InoxSet Context!11026))

(declare-fun e!3770238 () (InoxSet Context!11026))

(assert (=> b!6190721 (= e!3770235 e!3770238)))

(declare-fun b!6190722 () Bool)

(assert (=> b!6190722 (= e!3770238 ((as const (Array Context!11026 Bool)) false))))

(declare-fun bm!517592 () Bool)

(declare-fun call!517598 () (InoxSet Context!11026))

(declare-fun call!517600 () (InoxSet Context!11026))

(assert (=> bm!517592 (= call!517598 call!517600)))

(declare-fun bm!517593 () Bool)

(declare-fun call!517602 () List!64687)

(declare-fun call!517601 () List!64687)

(assert (=> bm!517593 (= call!517602 call!517601)))

(declare-fun b!6190723 () Bool)

(declare-fun e!3770236 () (InoxSet Context!11026))

(declare-fun call!517597 () (InoxSet Context!11026))

(declare-fun call!517599 () (InoxSet Context!11026))

(assert (=> b!6190723 (= e!3770236 ((_ map or) call!517597 call!517599))))

(declare-fun b!6190724 () Bool)

(declare-fun e!3770240 () (InoxSet Context!11026))

(assert (=> b!6190724 (= e!3770240 e!3770235)))

(declare-fun c!1116890 () Bool)

(assert (=> b!6190724 (= c!1116890 ((_ is Concat!24974) (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343)))))))))))

(declare-fun bm!517594 () Bool)

(declare-fun c!1116893 () Bool)

(assert (=> bm!517594 (= call!517601 ($colon$colon!2000 (exprs!6013 (ite (or c!1116806 c!1116810) lt!2340688 (Context!11027 call!517548))) (ite (or c!1116893 c!1116890) (regTwo!32770 (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343)))))))) (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343))))))))))))

(declare-fun c!1116889 () Bool)

(declare-fun bm!517595 () Bool)

(assert (=> bm!517595 (= call!517597 (derivationStepZipperDown!1377 (ite c!1116889 (regOne!32771 (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343)))))))) (regOne!32770 (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343))))))))) (ite c!1116889 (ite (or c!1116806 c!1116810) lt!2340688 (Context!11027 call!517548)) (Context!11027 call!517601)) (h!71010 s!2326)))))

(declare-fun bm!517596 () Bool)

(assert (=> bm!517596 (= call!517600 call!517599)))

(declare-fun b!6190725 () Bool)

(declare-fun e!3770237 () Bool)

(assert (=> b!6190725 (= e!3770237 (nullable!6122 (regOne!32770 (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343))))))))))))

(declare-fun bm!517597 () Bool)

(assert (=> bm!517597 (= call!517599 (derivationStepZipperDown!1377 (ite c!1116889 (regTwo!32771 (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343)))))))) (ite c!1116893 (regTwo!32770 (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343)))))))) (ite c!1116890 (regOne!32770 (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343)))))))) (reg!16458 (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343))))))))))) (ite (or c!1116889 c!1116893) (ite (or c!1116806 c!1116810) lt!2340688 (Context!11027 call!517548)) (Context!11027 call!517602)) (h!71010 s!2326)))))

(declare-fun b!6190726 () Bool)

(assert (=> b!6190726 (= c!1116893 e!3770237)))

(declare-fun res!2561084 () Bool)

(assert (=> b!6190726 (=> (not res!2561084) (not e!3770237))))

(assert (=> b!6190726 (= res!2561084 ((_ is Concat!24974) (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343)))))))))))

(assert (=> b!6190726 (= e!3770236 e!3770240)))

(declare-fun c!1116891 () Bool)

(declare-fun d!1940712 () Bool)

(assert (=> d!1940712 (= c!1116891 (and ((_ is ElementMatch!16129) (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343)))))))) (= (c!1116552 (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343)))))))) (h!71010 s!2326))))))

(declare-fun e!3770239 () (InoxSet Context!11026))

(assert (=> d!1940712 (= (derivationStepZipperDown!1377 (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343))))))) (ite (or c!1116806 c!1116810) lt!2340688 (Context!11027 call!517548)) (h!71010 s!2326)) e!3770239)))

(declare-fun b!6190727 () Bool)

(assert (=> b!6190727 (= e!3770235 call!517598)))

(declare-fun b!6190728 () Bool)

(assert (=> b!6190728 (= e!3770238 call!517598)))

(declare-fun b!6190729 () Bool)

(assert (=> b!6190729 (= e!3770239 (store ((as const (Array Context!11026 Bool)) false) (ite (or c!1116806 c!1116810) lt!2340688 (Context!11027 call!517548)) true))))

(declare-fun b!6190730 () Bool)

(assert (=> b!6190730 (= e!3770240 ((_ map or) call!517597 call!517600))))

(declare-fun b!6190731 () Bool)

(assert (=> b!6190731 (= e!3770239 e!3770236)))

(assert (=> b!6190731 (= c!1116889 ((_ is Union!16129) (ite c!1116806 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116810 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116807 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343)))))))))))

(assert (= (and d!1940712 c!1116891) b!6190729))

(assert (= (and d!1940712 (not c!1116891)) b!6190731))

(assert (= (and b!6190731 c!1116889) b!6190723))

(assert (= (and b!6190731 (not c!1116889)) b!6190726))

(assert (= (and b!6190726 res!2561084) b!6190725))

(assert (= (and b!6190726 c!1116893) b!6190730))

(assert (= (and b!6190726 (not c!1116893)) b!6190724))

(assert (= (and b!6190724 c!1116890) b!6190727))

(assert (= (and b!6190724 (not c!1116890)) b!6190721))

(assert (= (and b!6190721 c!1116892) b!6190728))

(assert (= (and b!6190721 (not c!1116892)) b!6190722))

(assert (= (or b!6190727 b!6190728) bm!517593))

(assert (= (or b!6190727 b!6190728) bm!517592))

(assert (= (or b!6190730 bm!517593) bm!517594))

(assert (= (or b!6190730 bm!517592) bm!517596))

(assert (= (or b!6190723 bm!517596) bm!517597))

(assert (= (or b!6190723 b!6190730) bm!517595))

(declare-fun m!7024952 () Bool)

(assert (=> b!6190729 m!7024952))

(declare-fun m!7024954 () Bool)

(assert (=> bm!517594 m!7024954))

(declare-fun m!7024956 () Bool)

(assert (=> b!6190725 m!7024956))

(declare-fun m!7024958 () Bool)

(assert (=> bm!517597 m!7024958))

(declare-fun m!7024960 () Bool)

(assert (=> bm!517595 m!7024960))

(assert (=> bm!517543 d!1940712))

(declare-fun d!1940714 () Bool)

(assert (=> d!1940714 (= (head!12770 (unfocusZipperList!1550 zl!343)) (h!71011 (unfocusZipperList!1550 zl!343)))))

(assert (=> b!6190345 d!1940714))

(declare-fun d!1940716 () Bool)

(declare-fun lambda!338066 () Int)

(declare-fun exists!2466 ((InoxSet Context!11026) Int) Bool)

(assert (=> d!1940716 (= (nullableZipper!1905 lt!2340723) (exists!2466 lt!2340723 lambda!338066))))

(declare-fun bs!1535536 () Bool)

(assert (= bs!1535536 d!1940716))

(declare-fun m!7024962 () Bool)

(assert (=> bs!1535536 m!7024962))

(assert (=> b!6190320 d!1940716))

(declare-fun d!1940718 () Bool)

(assert (=> d!1940718 (= (isEmpty!36550 (tail!11856 s!2326)) ((_ is Nil!64562) (tail!11856 s!2326)))))

(assert (=> b!6190203 d!1940718))

(assert (=> b!6190203 d!1940628))

(declare-fun d!1940720 () Bool)

(declare-fun c!1116896 () Bool)

(assert (=> d!1940720 (= c!1116896 (isEmpty!36550 (tail!11856 (t!378196 s!2326))))))

(declare-fun e!3770241 () Bool)

(assert (=> d!1940720 (= (matchZipper!2141 (derivationStepZipper!2097 ((_ map or) lt!2340698 lt!2340723) (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))) e!3770241)))

(declare-fun b!6190732 () Bool)

(assert (=> b!6190732 (= e!3770241 (nullableZipper!1905 (derivationStepZipper!2097 ((_ map or) lt!2340698 lt!2340723) (head!12771 (t!378196 s!2326)))))))

(declare-fun b!6190733 () Bool)

(assert (=> b!6190733 (= e!3770241 (matchZipper!2141 (derivationStepZipper!2097 (derivationStepZipper!2097 ((_ map or) lt!2340698 lt!2340723) (head!12771 (t!378196 s!2326))) (head!12771 (tail!11856 (t!378196 s!2326)))) (tail!11856 (tail!11856 (t!378196 s!2326)))))))

(assert (= (and d!1940720 c!1116896) b!6190732))

(assert (= (and d!1940720 (not c!1116896)) b!6190733))

(assert (=> d!1940720 m!7024486))

(assert (=> d!1940720 m!7024926))

(assert (=> b!6190732 m!7024516))

(declare-fun m!7024964 () Bool)

(assert (=> b!6190732 m!7024964))

(assert (=> b!6190733 m!7024486))

(assert (=> b!6190733 m!7024930))

(assert (=> b!6190733 m!7024516))

(assert (=> b!6190733 m!7024930))

(declare-fun m!7024966 () Bool)

(assert (=> b!6190733 m!7024966))

(assert (=> b!6190733 m!7024486))

(assert (=> b!6190733 m!7024934))

(assert (=> b!6190733 m!7024966))

(assert (=> b!6190733 m!7024934))

(declare-fun m!7024968 () Bool)

(assert (=> b!6190733 m!7024968))

(assert (=> b!6190250 d!1940720))

(declare-fun bs!1535538 () Bool)

(declare-fun d!1940722 () Bool)

(assert (= bs!1535538 (and d!1940722 b!6189536)))

(declare-fun lambda!338068 () Int)

(assert (=> bs!1535538 (= (= (head!12771 (t!378196 s!2326)) (h!71010 s!2326)) (= lambda!338068 lambda!337985))))

(declare-fun bs!1535539 () Bool)

(assert (= bs!1535539 (and d!1940722 d!1940624)))

(assert (=> bs!1535539 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338068 lambda!338058))))

(declare-fun bs!1535541 () Bool)

(assert (= bs!1535541 (and d!1940722 d!1940700)))

(assert (=> bs!1535541 (= lambda!338068 lambda!338061)))

(assert (=> d!1940722 true))

(assert (=> d!1940722 (= (derivationStepZipper!2097 ((_ map or) lt!2340698 lt!2340723) (head!12771 (t!378196 s!2326))) (flatMap!1634 ((_ map or) lt!2340698 lt!2340723) lambda!338068))))

(declare-fun bs!1535542 () Bool)

(assert (= bs!1535542 d!1940722))

(declare-fun m!7024970 () Bool)

(assert (=> bs!1535542 m!7024970))

(assert (=> b!6190250 d!1940722))

(assert (=> b!6190250 d!1940702))

(assert (=> b!6190250 d!1940704))

(declare-fun d!1940724 () Bool)

(declare-fun c!1116897 () Bool)

(assert (=> d!1940724 (= c!1116897 (isEmpty!36550 (t!378196 s!2326)))))

(declare-fun e!3770242 () Bool)

(assert (=> d!1940724 (= (matchZipper!2141 ((_ map or) lt!2340709 lt!2340714) (t!378196 s!2326)) e!3770242)))

(declare-fun b!6190734 () Bool)

(assert (=> b!6190734 (= e!3770242 (nullableZipper!1905 ((_ map or) lt!2340709 lt!2340714)))))

(declare-fun b!6190735 () Bool)

(assert (=> b!6190735 (= e!3770242 (matchZipper!2141 (derivationStepZipper!2097 ((_ map or) lt!2340709 lt!2340714) (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))))))

(assert (= (and d!1940724 c!1116897) b!6190734))

(assert (= (and d!1940724 (not c!1116897)) b!6190735))

(assert (=> d!1940724 m!7024478))

(declare-fun m!7024972 () Bool)

(assert (=> b!6190734 m!7024972))

(assert (=> b!6190735 m!7024482))

(assert (=> b!6190735 m!7024482))

(declare-fun m!7024974 () Bool)

(assert (=> b!6190735 m!7024974))

(assert (=> b!6190735 m!7024486))

(assert (=> b!6190735 m!7024974))

(assert (=> b!6190735 m!7024486))

(declare-fun m!7024976 () Bool)

(assert (=> b!6190735 m!7024976))

(assert (=> d!1940504 d!1940724))

(assert (=> d!1940504 d!1940502))

(declare-fun d!1940726 () Bool)

(declare-fun e!3770245 () Bool)

(assert (=> d!1940726 (= (matchZipper!2141 ((_ map or) lt!2340709 lt!2340714) (t!378196 s!2326)) e!3770245)))

(declare-fun res!2561088 () Bool)

(assert (=> d!1940726 (=> res!2561088 e!3770245)))

(assert (=> d!1940726 (= res!2561088 (matchZipper!2141 lt!2340709 (t!378196 s!2326)))))

(assert (=> d!1940726 true))

(declare-fun _$48!1815 () Unit!157811)

(assert (=> d!1940726 (= (choose!45991 lt!2340709 lt!2340714 (t!378196 s!2326)) _$48!1815)))

(declare-fun b!6190738 () Bool)

(assert (=> b!6190738 (= e!3770245 (matchZipper!2141 lt!2340714 (t!378196 s!2326)))))

(assert (= (and d!1940726 (not res!2561088)) b!6190738))

(assert (=> d!1940726 m!7024502))

(assert (=> d!1940726 m!7023912))

(assert (=> b!6190738 m!7023842))

(assert (=> d!1940504 d!1940726))

(declare-fun d!1940730 () Bool)

(declare-fun c!1116901 () Bool)

(declare-fun e!3770255 () Bool)

(assert (=> d!1940730 (= c!1116901 e!3770255)))

(declare-fun res!2561096 () Bool)

(assert (=> d!1940730 (=> (not res!2561096) (not e!3770255))))

(assert (=> d!1940730 (= res!2561096 ((_ is Cons!64563) (exprs!6013 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))))))))

(declare-fun e!3770253 () (InoxSet Context!11026))

(assert (=> d!1940730 (= (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) (h!71010 s!2326)) e!3770253)))

(declare-fun b!6190753 () Bool)

(declare-fun e!3770254 () (InoxSet Context!11026))

(assert (=> b!6190753 (= e!3770254 ((as const (Array Context!11026 Bool)) false))))

(declare-fun b!6190754 () Bool)

(assert (=> b!6190754 (= e!3770253 e!3770254)))

(declare-fun c!1116902 () Bool)

(assert (=> b!6190754 (= c!1116902 ((_ is Cons!64563) (exprs!6013 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))))))))

(declare-fun b!6190755 () Bool)

(assert (=> b!6190755 (= e!3770255 (nullable!6122 (h!71011 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))))))))))))

(declare-fun bm!517599 () Bool)

(declare-fun call!517604 () (InoxSet Context!11026))

(assert (=> bm!517599 (= call!517604 (derivationStepZipperDown!1377 (h!71011 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))))) (Context!11027 (t!378197 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))))))))) (h!71010 s!2326)))))

(declare-fun b!6190756 () Bool)

(assert (=> b!6190756 (= e!3770254 call!517604)))

(declare-fun b!6190757 () Bool)

(assert (=> b!6190757 (= e!3770253 ((_ map or) call!517604 (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))))))))) (h!71010 s!2326))))))

(assert (= (and d!1940730 res!2561096) b!6190755))

(assert (= (and d!1940730 c!1116901) b!6190757))

(assert (= (and d!1940730 (not c!1116901)) b!6190754))

(assert (= (and b!6190754 c!1116902) b!6190756))

(assert (= (and b!6190754 (not c!1116902)) b!6190753))

(assert (= (or b!6190757 b!6190756) bm!517599))

(declare-fun m!7024980 () Bool)

(assert (=> b!6190755 m!7024980))

(declare-fun m!7024982 () Bool)

(assert (=> bm!517599 m!7024982))

(declare-fun m!7024984 () Bool)

(assert (=> b!6190757 m!7024984))

(assert (=> b!6190419 d!1940730))

(declare-fun d!1940732 () Bool)

(assert (=> d!1940732 (= (isEmpty!36550 (t!378196 s!2326)) ((_ is Nil!64562) (t!378196 s!2326)))))

(assert (=> d!1940498 d!1940732))

(declare-fun bs!1535551 () Bool)

(declare-fun d!1940734 () Bool)

(assert (= bs!1535551 (and d!1940734 d!1940716)))

(declare-fun lambda!338069 () Int)

(assert (=> bs!1535551 (= lambda!338069 lambda!338066)))

(assert (=> d!1940734 (= (nullableZipper!1905 lt!2340701) (exists!2466 lt!2340701 lambda!338069))))

(declare-fun bs!1535552 () Bool)

(assert (= bs!1535552 d!1940734))

(declare-fun m!7024986 () Bool)

(assert (=> bs!1535552 m!7024986))

(assert (=> b!6190238 d!1940734))

(assert (=> d!1940560 d!1940576))

(declare-fun d!1940736 () Bool)

(assert (=> d!1940736 (= (flatMap!1634 lt!2340699 lambda!337985) (dynLambda!25459 lambda!337985 lt!2340697))))

(assert (=> d!1940736 true))

(declare-fun _$13!3177 () Unit!157811)

(assert (=> d!1940736 (= (choose!45994 lt!2340699 lt!2340697 lambda!337985) _$13!3177)))

(declare-fun b_lambda!235521 () Bool)

(assert (=> (not b_lambda!235521) (not d!1940736)))

(declare-fun bs!1535553 () Bool)

(assert (= bs!1535553 d!1940736))

(assert (=> bs!1535553 m!7023924))

(assert (=> bs!1535553 m!7024640))

(assert (=> d!1940560 d!1940736))

(assert (=> b!6190248 d!1940524))

(assert (=> d!1940538 d!1940732))

(declare-fun d!1940740 () Bool)

(declare-fun c!1116903 () Bool)

(assert (=> d!1940740 (= c!1116903 (isEmpty!36550 (tail!11856 (t!378196 s!2326))))))

(declare-fun e!3770256 () Bool)

(assert (=> d!1940740 (= (matchZipper!2141 (derivationStepZipper!2097 lt!2340709 (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))) e!3770256)))

(declare-fun b!6190758 () Bool)

(assert (=> b!6190758 (= e!3770256 (nullableZipper!1905 (derivationStepZipper!2097 lt!2340709 (head!12771 (t!378196 s!2326)))))))

(declare-fun b!6190759 () Bool)

(assert (=> b!6190759 (= e!3770256 (matchZipper!2141 (derivationStepZipper!2097 (derivationStepZipper!2097 lt!2340709 (head!12771 (t!378196 s!2326))) (head!12771 (tail!11856 (t!378196 s!2326)))) (tail!11856 (tail!11856 (t!378196 s!2326)))))))

(assert (= (and d!1940740 c!1116903) b!6190758))

(assert (= (and d!1940740 (not c!1116903)) b!6190759))

(assert (=> d!1940740 m!7024486))

(assert (=> d!1940740 m!7024926))

(assert (=> b!6190758 m!7024498))

(declare-fun m!7024996 () Bool)

(assert (=> b!6190758 m!7024996))

(assert (=> b!6190759 m!7024486))

(assert (=> b!6190759 m!7024930))

(assert (=> b!6190759 m!7024498))

(assert (=> b!6190759 m!7024930))

(declare-fun m!7024998 () Bool)

(assert (=> b!6190759 m!7024998))

(assert (=> b!6190759 m!7024486))

(assert (=> b!6190759 m!7024934))

(assert (=> b!6190759 m!7024998))

(assert (=> b!6190759 m!7024934))

(declare-fun m!7025000 () Bool)

(assert (=> b!6190759 m!7025000))

(assert (=> b!6190241 d!1940740))

(declare-fun bs!1535554 () Bool)

(declare-fun d!1940742 () Bool)

(assert (= bs!1535554 (and d!1940742 b!6189536)))

(declare-fun lambda!338070 () Int)

(assert (=> bs!1535554 (= (= (head!12771 (t!378196 s!2326)) (h!71010 s!2326)) (= lambda!338070 lambda!337985))))

(declare-fun bs!1535555 () Bool)

(assert (= bs!1535555 (and d!1940742 d!1940624)))

(assert (=> bs!1535555 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338070 lambda!338058))))

(declare-fun bs!1535556 () Bool)

(assert (= bs!1535556 (and d!1940742 d!1940700)))

(assert (=> bs!1535556 (= lambda!338070 lambda!338061)))

(declare-fun bs!1535557 () Bool)

(assert (= bs!1535557 (and d!1940742 d!1940722)))

(assert (=> bs!1535557 (= lambda!338070 lambda!338068)))

(assert (=> d!1940742 true))

(assert (=> d!1940742 (= (derivationStepZipper!2097 lt!2340709 (head!12771 (t!378196 s!2326))) (flatMap!1634 lt!2340709 lambda!338070))))

(declare-fun bs!1535558 () Bool)

(assert (= bs!1535558 d!1940742))

(declare-fun m!7025002 () Bool)

(assert (=> bs!1535558 m!7025002))

(assert (=> b!6190241 d!1940742))

(assert (=> b!6190241 d!1940702))

(assert (=> b!6190241 d!1940704))

(declare-fun d!1940744 () Bool)

(assert (=> d!1940744 (= (head!12770 (t!378197 (exprs!6013 (h!71012 zl!343)))) (h!71011 (t!378197 (exprs!6013 (h!71012 zl!343)))))))

(assert (=> b!6190503 d!1940744))

(declare-fun b!6190760 () Bool)

(declare-fun e!3770257 () Bool)

(declare-fun e!3770261 () Bool)

(assert (=> b!6190760 (= e!3770257 e!3770261)))

(declare-fun c!1116904 () Bool)

(assert (=> b!6190760 (= c!1116904 ((_ is EmptyLang!16129) (derivativeStep!4844 lt!2340702 (head!12771 s!2326))))))

(declare-fun b!6190761 () Bool)

(declare-fun e!3770259 () Bool)

(declare-fun e!3770260 () Bool)

(assert (=> b!6190761 (= e!3770259 e!3770260)))

(declare-fun res!2561104 () Bool)

(assert (=> b!6190761 (=> (not res!2561104) (not e!3770260))))

(declare-fun lt!2340872 () Bool)

(assert (=> b!6190761 (= res!2561104 (not lt!2340872))))

(declare-fun b!6190762 () Bool)

(declare-fun res!2561099 () Bool)

(assert (=> b!6190762 (=> res!2561099 e!3770259)))

(assert (=> b!6190762 (= res!2561099 (not ((_ is ElementMatch!16129) (derivativeStep!4844 lt!2340702 (head!12771 s!2326)))))))

(assert (=> b!6190762 (= e!3770261 e!3770259)))

(declare-fun d!1940746 () Bool)

(assert (=> d!1940746 e!3770257))

(declare-fun c!1116906 () Bool)

(assert (=> d!1940746 (= c!1116906 ((_ is EmptyExpr!16129) (derivativeStep!4844 lt!2340702 (head!12771 s!2326))))))

(declare-fun e!3770258 () Bool)

(assert (=> d!1940746 (= lt!2340872 e!3770258)))

(declare-fun c!1116905 () Bool)

(assert (=> d!1940746 (= c!1116905 (isEmpty!36550 (tail!11856 s!2326)))))

(assert (=> d!1940746 (validRegex!7865 (derivativeStep!4844 lt!2340702 (head!12771 s!2326)))))

(assert (=> d!1940746 (= (matchR!8312 (derivativeStep!4844 lt!2340702 (head!12771 s!2326)) (tail!11856 s!2326)) lt!2340872)))

(declare-fun b!6190763 () Bool)

(assert (=> b!6190763 (= e!3770258 (nullable!6122 (derivativeStep!4844 lt!2340702 (head!12771 s!2326))))))

(declare-fun b!6190764 () Bool)

(declare-fun e!3770263 () Bool)

(assert (=> b!6190764 (= e!3770263 (= (head!12771 (tail!11856 s!2326)) (c!1116552 (derivativeStep!4844 lt!2340702 (head!12771 s!2326)))))))

(declare-fun b!6190765 () Bool)

(declare-fun res!2561102 () Bool)

(assert (=> b!6190765 (=> (not res!2561102) (not e!3770263))))

(declare-fun call!517605 () Bool)

(assert (=> b!6190765 (= res!2561102 (not call!517605))))

(declare-fun b!6190766 () Bool)

(declare-fun res!2561100 () Bool)

(assert (=> b!6190766 (=> (not res!2561100) (not e!3770263))))

(assert (=> b!6190766 (= res!2561100 (isEmpty!36550 (tail!11856 (tail!11856 s!2326))))))

(declare-fun b!6190767 () Bool)

(assert (=> b!6190767 (= e!3770257 (= lt!2340872 call!517605))))

(declare-fun b!6190768 () Bool)

(assert (=> b!6190768 (= e!3770258 (matchR!8312 (derivativeStep!4844 (derivativeStep!4844 lt!2340702 (head!12771 s!2326)) (head!12771 (tail!11856 s!2326))) (tail!11856 (tail!11856 s!2326))))))

(declare-fun bm!517600 () Bool)

(assert (=> bm!517600 (= call!517605 (isEmpty!36550 (tail!11856 s!2326)))))

(declare-fun b!6190769 () Bool)

(declare-fun e!3770262 () Bool)

(assert (=> b!6190769 (= e!3770260 e!3770262)))

(declare-fun res!2561106 () Bool)

(assert (=> b!6190769 (=> res!2561106 e!3770262)))

(assert (=> b!6190769 (= res!2561106 call!517605)))

(declare-fun b!6190770 () Bool)

(declare-fun res!2561101 () Bool)

(assert (=> b!6190770 (=> res!2561101 e!3770259)))

(assert (=> b!6190770 (= res!2561101 e!3770263)))

(declare-fun res!2561105 () Bool)

(assert (=> b!6190770 (=> (not res!2561105) (not e!3770263))))

(assert (=> b!6190770 (= res!2561105 lt!2340872)))

(declare-fun b!6190771 () Bool)

(assert (=> b!6190771 (= e!3770262 (not (= (head!12771 (tail!11856 s!2326)) (c!1116552 (derivativeStep!4844 lt!2340702 (head!12771 s!2326))))))))

(declare-fun b!6190772 () Bool)

(declare-fun res!2561103 () Bool)

(assert (=> b!6190772 (=> res!2561103 e!3770262)))

(assert (=> b!6190772 (= res!2561103 (not (isEmpty!36550 (tail!11856 (tail!11856 s!2326)))))))

(declare-fun b!6190773 () Bool)

(assert (=> b!6190773 (= e!3770261 (not lt!2340872))))

(assert (= (and d!1940746 c!1116905) b!6190763))

(assert (= (and d!1940746 (not c!1116905)) b!6190768))

(assert (= (and d!1940746 c!1116906) b!6190767))

(assert (= (and d!1940746 (not c!1116906)) b!6190760))

(assert (= (and b!6190760 c!1116904) b!6190773))

(assert (= (and b!6190760 (not c!1116904)) b!6190762))

(assert (= (and b!6190762 (not res!2561099)) b!6190770))

(assert (= (and b!6190770 res!2561105) b!6190765))

(assert (= (and b!6190765 res!2561102) b!6190766))

(assert (= (and b!6190766 res!2561100) b!6190764))

(assert (= (and b!6190770 (not res!2561101)) b!6190761))

(assert (= (and b!6190761 res!2561104) b!6190769))

(assert (= (and b!6190769 (not res!2561106)) b!6190772))

(assert (= (and b!6190772 (not res!2561103)) b!6190771))

(assert (= (or b!6190767 b!6190765 b!6190769) bm!517600))

(assert (=> bm!517600 m!7024396))

(assert (=> bm!517600 m!7024406))

(assert (=> b!6190766 m!7024396))

(assert (=> b!6190766 m!7024788))

(assert (=> b!6190766 m!7024788))

(declare-fun m!7025004 () Bool)

(assert (=> b!6190766 m!7025004))

(assert (=> b!6190772 m!7024396))

(assert (=> b!6190772 m!7024788))

(assert (=> b!6190772 m!7024788))

(assert (=> b!6190772 m!7025004))

(assert (=> b!6190768 m!7024396))

(assert (=> b!6190768 m!7024784))

(assert (=> b!6190768 m!7024408))

(assert (=> b!6190768 m!7024784))

(declare-fun m!7025006 () Bool)

(assert (=> b!6190768 m!7025006))

(assert (=> b!6190768 m!7024396))

(assert (=> b!6190768 m!7024788))

(assert (=> b!6190768 m!7025006))

(assert (=> b!6190768 m!7024788))

(declare-fun m!7025008 () Bool)

(assert (=> b!6190768 m!7025008))

(assert (=> b!6190764 m!7024396))

(assert (=> b!6190764 m!7024784))

(assert (=> d!1940746 m!7024396))

(assert (=> d!1940746 m!7024406))

(assert (=> d!1940746 m!7024408))

(declare-fun m!7025010 () Bool)

(assert (=> d!1940746 m!7025010))

(assert (=> b!6190771 m!7024396))

(assert (=> b!6190771 m!7024784))

(assert (=> b!6190763 m!7024408))

(declare-fun m!7025012 () Bool)

(assert (=> b!6190763 m!7025012))

(assert (=> b!6190185 d!1940746))

(declare-fun bm!517612 () Bool)

(declare-fun call!517617 () Regex!16129)

(declare-fun call!517618 () Regex!16129)

(assert (=> bm!517612 (= call!517617 call!517618)))

(declare-fun b!6190809 () Bool)

(declare-fun e!3770289 () Regex!16129)

(declare-fun call!517620 () Regex!16129)

(assert (=> b!6190809 (= e!3770289 (Concat!24974 call!517620 lt!2340702))))

(declare-fun b!6190810 () Bool)

(declare-fun e!3770288 () Regex!16129)

(assert (=> b!6190810 (= e!3770288 e!3770289)))

(declare-fun c!1116926 () Bool)

(assert (=> b!6190810 (= c!1116926 ((_ is Star!16129) lt!2340702))))

(declare-fun b!6190811 () Bool)

(declare-fun call!517619 () Regex!16129)

(assert (=> b!6190811 (= e!3770288 (Union!16129 call!517618 call!517619))))

(declare-fun b!6190812 () Bool)

(declare-fun e!3770286 () Regex!16129)

(assert (=> b!6190812 (= e!3770286 EmptyLang!16129)))

(declare-fun b!6190813 () Bool)

(declare-fun c!1116923 () Bool)

(assert (=> b!6190813 (= c!1116923 ((_ is Union!16129) lt!2340702))))

(declare-fun e!3770285 () Regex!16129)

(assert (=> b!6190813 (= e!3770285 e!3770288)))

(declare-fun b!6190814 () Bool)

(declare-fun c!1116925 () Bool)

(assert (=> b!6190814 (= c!1116925 (nullable!6122 (regOne!32770 lt!2340702)))))

(declare-fun e!3770287 () Regex!16129)

(assert (=> b!6190814 (= e!3770289 e!3770287)))

(declare-fun bm!517613 () Bool)

(assert (=> bm!517613 (= call!517620 call!517619)))

(declare-fun bm!517614 () Bool)

(assert (=> bm!517614 (= call!517619 (derivativeStep!4844 (ite c!1116923 (regTwo!32771 lt!2340702) (ite c!1116926 (reg!16458 lt!2340702) (regOne!32770 lt!2340702))) (head!12771 s!2326)))))

(declare-fun b!6190815 () Bool)

(assert (=> b!6190815 (= e!3770286 e!3770285)))

(declare-fun c!1116924 () Bool)

(assert (=> b!6190815 (= c!1116924 ((_ is ElementMatch!16129) lt!2340702))))

(declare-fun b!6190816 () Bool)

(assert (=> b!6190816 (= e!3770287 (Union!16129 (Concat!24974 call!517617 (regTwo!32770 lt!2340702)) EmptyLang!16129))))

(declare-fun b!6190817 () Bool)

(assert (=> b!6190817 (= e!3770285 (ite (= (head!12771 s!2326) (c!1116552 lt!2340702)) EmptyExpr!16129 EmptyLang!16129))))

(declare-fun b!6190818 () Bool)

(assert (=> b!6190818 (= e!3770287 (Union!16129 (Concat!24974 call!517620 (regTwo!32770 lt!2340702)) call!517617))))

(declare-fun bm!517615 () Bool)

(assert (=> bm!517615 (= call!517618 (derivativeStep!4844 (ite c!1116923 (regOne!32771 lt!2340702) (ite c!1116925 (regTwo!32770 lt!2340702) (regOne!32770 lt!2340702))) (head!12771 s!2326)))))

(declare-fun d!1940750 () Bool)

(declare-fun lt!2340877 () Regex!16129)

(assert (=> d!1940750 (validRegex!7865 lt!2340877)))

(assert (=> d!1940750 (= lt!2340877 e!3770286)))

(declare-fun c!1116922 () Bool)

(assert (=> d!1940750 (= c!1116922 (or ((_ is EmptyExpr!16129) lt!2340702) ((_ is EmptyLang!16129) lt!2340702)))))

(assert (=> d!1940750 (validRegex!7865 lt!2340702)))

(assert (=> d!1940750 (= (derivativeStep!4844 lt!2340702 (head!12771 s!2326)) lt!2340877)))

(assert (= (and d!1940750 c!1116922) b!6190812))

(assert (= (and d!1940750 (not c!1116922)) b!6190815))

(assert (= (and b!6190815 c!1116924) b!6190817))

(assert (= (and b!6190815 (not c!1116924)) b!6190813))

(assert (= (and b!6190813 c!1116923) b!6190811))

(assert (= (and b!6190813 (not c!1116923)) b!6190810))

(assert (= (and b!6190810 c!1116926) b!6190809))

(assert (= (and b!6190810 (not c!1116926)) b!6190814))

(assert (= (and b!6190814 c!1116925) b!6190818))

(assert (= (and b!6190814 (not c!1116925)) b!6190816))

(assert (= (or b!6190818 b!6190816) bm!517612))

(assert (= (or b!6190809 b!6190818) bm!517613))

(assert (= (or b!6190811 bm!517613) bm!517614))

(assert (= (or b!6190811 bm!517612) bm!517615))

(declare-fun m!7025026 () Bool)

(assert (=> b!6190814 m!7025026))

(assert (=> bm!517614 m!7024392))

(declare-fun m!7025028 () Bool)

(assert (=> bm!517614 m!7025028))

(assert (=> bm!517615 m!7024392))

(declare-fun m!7025030 () Bool)

(assert (=> bm!517615 m!7025030))

(declare-fun m!7025032 () Bool)

(assert (=> d!1940750 m!7025032))

(assert (=> d!1940750 m!7024412))

(assert (=> b!6190185 d!1940750))

(assert (=> b!6190185 d!1940626))

(assert (=> b!6190185 d!1940628))

(declare-fun d!1940764 () Bool)

(assert (=> d!1940764 (= ($colon$colon!2000 (exprs!6013 lt!2340688) (ite (or c!1116810 c!1116807) (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (h!71011 (exprs!6013 (h!71012 zl!343))))) (Cons!64563 (ite (or c!1116810 c!1116807) (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (h!71011 (exprs!6013 (h!71012 zl!343)))) (exprs!6013 lt!2340688)))))

(assert (=> bm!517540 d!1940764))

(assert (=> b!6190098 d!1940600))

(declare-fun d!1940766 () Bool)

(declare-fun c!1116931 () Bool)

(assert (=> d!1940766 (= c!1116931 ((_ is Nil!64564) lt!2340816))))

(declare-fun e!3770294 () (InoxSet Context!11026))

(assert (=> d!1940766 (= (content!12060 lt!2340816) e!3770294)))

(declare-fun b!6190827 () Bool)

(assert (=> b!6190827 (= e!3770294 ((as const (Array Context!11026 Bool)) false))))

(declare-fun b!6190828 () Bool)

(assert (=> b!6190828 (= e!3770294 ((_ map or) (store ((as const (Array Context!11026 Bool)) false) (h!71012 lt!2340816) true) (content!12060 (t!378198 lt!2340816))))))

(assert (= (and d!1940766 c!1116931) b!6190827))

(assert (= (and d!1940766 (not c!1116931)) b!6190828))

(declare-fun m!7025042 () Bool)

(assert (=> b!6190828 m!7025042))

(declare-fun m!7025044 () Bool)

(assert (=> b!6190828 m!7025044))

(assert (=> b!6190247 d!1940766))

(assert (=> bm!517499 d!1940614))

(assert (=> b!6190312 d!1940718))

(assert (=> b!6190312 d!1940628))

(assert (=> d!1940512 d!1940732))

(declare-fun d!1940772 () Bool)

(declare-fun c!1116932 () Bool)

(assert (=> d!1940772 (= c!1116932 (isEmpty!36550 (tail!11856 (t!378196 s!2326))))))

(declare-fun e!3770295 () Bool)

(assert (=> d!1940772 (= (matchZipper!2141 (derivationStepZipper!2097 ((_ map or) lt!2340709 lt!2340723) (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))) e!3770295)))

(declare-fun b!6190829 () Bool)

(assert (=> b!6190829 (= e!3770295 (nullableZipper!1905 (derivationStepZipper!2097 ((_ map or) lt!2340709 lt!2340723) (head!12771 (t!378196 s!2326)))))))

(declare-fun b!6190830 () Bool)

(assert (=> b!6190830 (= e!3770295 (matchZipper!2141 (derivationStepZipper!2097 (derivationStepZipper!2097 ((_ map or) lt!2340709 lt!2340723) (head!12771 (t!378196 s!2326))) (head!12771 (tail!11856 (t!378196 s!2326)))) (tail!11856 (tail!11856 (t!378196 s!2326)))))))

(assert (= (and d!1940772 c!1116932) b!6190829))

(assert (= (and d!1940772 (not c!1116932)) b!6190830))

(assert (=> d!1940772 m!7024486))

(assert (=> d!1940772 m!7024926))

(assert (=> b!6190829 m!7024594))

(declare-fun m!7025046 () Bool)

(assert (=> b!6190829 m!7025046))

(assert (=> b!6190830 m!7024486))

(assert (=> b!6190830 m!7024930))

(assert (=> b!6190830 m!7024594))

(assert (=> b!6190830 m!7024930))

(declare-fun m!7025048 () Bool)

(assert (=> b!6190830 m!7025048))

(assert (=> b!6190830 m!7024486))

(assert (=> b!6190830 m!7024934))

(assert (=> b!6190830 m!7025048))

(assert (=> b!6190830 m!7024934))

(declare-fun m!7025050 () Bool)

(assert (=> b!6190830 m!7025050))

(assert (=> b!6190366 d!1940772))

(declare-fun bs!1535560 () Bool)

(declare-fun d!1940774 () Bool)

(assert (= bs!1535560 (and d!1940774 d!1940722)))

(declare-fun lambda!338071 () Int)

(assert (=> bs!1535560 (= lambda!338071 lambda!338068)))

(declare-fun bs!1535561 () Bool)

(assert (= bs!1535561 (and d!1940774 d!1940742)))

(assert (=> bs!1535561 (= lambda!338071 lambda!338070)))

(declare-fun bs!1535562 () Bool)

(assert (= bs!1535562 (and d!1940774 d!1940700)))

(assert (=> bs!1535562 (= lambda!338071 lambda!338061)))

(declare-fun bs!1535563 () Bool)

(assert (= bs!1535563 (and d!1940774 b!6189536)))

(assert (=> bs!1535563 (= (= (head!12771 (t!378196 s!2326)) (h!71010 s!2326)) (= lambda!338071 lambda!337985))))

(declare-fun bs!1535564 () Bool)

(assert (= bs!1535564 (and d!1940774 d!1940624)))

(assert (=> bs!1535564 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338071 lambda!338058))))

(assert (=> d!1940774 true))

(assert (=> d!1940774 (= (derivationStepZipper!2097 ((_ map or) lt!2340709 lt!2340723) (head!12771 (t!378196 s!2326))) (flatMap!1634 ((_ map or) lt!2340709 lt!2340723) lambda!338071))))

(declare-fun bs!1535565 () Bool)

(assert (= bs!1535565 d!1940774))

(declare-fun m!7025052 () Bool)

(assert (=> bs!1535565 m!7025052))

(assert (=> b!6190366 d!1940774))

(assert (=> b!6190366 d!1940702))

(assert (=> b!6190366 d!1940704))

(declare-fun d!1940776 () Bool)

(declare-fun c!1116933 () Bool)

(declare-fun e!3770298 () Bool)

(assert (=> d!1940776 (= c!1116933 e!3770298)))

(declare-fun res!2561115 () Bool)

(assert (=> d!1940776 (=> (not res!2561115) (not e!3770298))))

(assert (=> d!1940776 (= res!2561115 ((_ is Cons!64563) (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340688))))))))

(declare-fun e!3770296 () (InoxSet Context!11026))

(assert (=> d!1940776 (= (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 lt!2340688))) (h!71010 s!2326)) e!3770296)))

(declare-fun b!6190831 () Bool)

(declare-fun e!3770297 () (InoxSet Context!11026))

(assert (=> b!6190831 (= e!3770297 ((as const (Array Context!11026 Bool)) false))))

(declare-fun b!6190832 () Bool)

(assert (=> b!6190832 (= e!3770296 e!3770297)))

(declare-fun c!1116934 () Bool)

(assert (=> b!6190832 (= c!1116934 ((_ is Cons!64563) (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340688))))))))

(declare-fun b!6190833 () Bool)

(assert (=> b!6190833 (= e!3770298 (nullable!6122 (h!71011 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340688)))))))))

(declare-fun bm!517616 () Bool)

(declare-fun call!517621 () (InoxSet Context!11026))

(assert (=> bm!517616 (= call!517621 (derivationStepZipperDown!1377 (h!71011 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340688))))) (Context!11027 (t!378197 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340688)))))) (h!71010 s!2326)))))

(declare-fun b!6190834 () Bool)

(assert (=> b!6190834 (= e!3770297 call!517621)))

(declare-fun b!6190835 () Bool)

(assert (=> b!6190835 (= e!3770296 ((_ map or) call!517621 (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340688)))))) (h!71010 s!2326))))))

(assert (= (and d!1940776 res!2561115) b!6190833))

(assert (= (and d!1940776 c!1116933) b!6190835))

(assert (= (and d!1940776 (not c!1116933)) b!6190832))

(assert (= (and b!6190832 c!1116934) b!6190834))

(assert (= (and b!6190832 (not c!1116934)) b!6190831))

(assert (= (or b!6190835 b!6190834) bm!517616))

(declare-fun m!7025054 () Bool)

(assert (=> b!6190833 m!7025054))

(declare-fun m!7025056 () Bool)

(assert (=> bm!517616 m!7025056))

(declare-fun m!7025058 () Bool)

(assert (=> b!6190835 m!7025058))

(assert (=> b!6190429 d!1940776))

(declare-fun b!6190836 () Bool)

(declare-fun c!1116940 () Bool)

(assert (=> b!6190836 (= c!1116940 ((_ is Star!16129) (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun e!3770299 () (InoxSet Context!11026))

(declare-fun e!3770302 () (InoxSet Context!11026))

(assert (=> b!6190836 (= e!3770299 e!3770302)))

(declare-fun b!6190837 () Bool)

(assert (=> b!6190837 (= e!3770302 ((as const (Array Context!11026 Bool)) false))))

(declare-fun bm!517617 () Bool)

(declare-fun call!517623 () (InoxSet Context!11026))

(declare-fun call!517625 () (InoxSet Context!11026))

(assert (=> bm!517617 (= call!517623 call!517625)))

(declare-fun bm!517618 () Bool)

(declare-fun call!517627 () List!64687)

(declare-fun call!517626 () List!64687)

(assert (=> bm!517618 (= call!517627 call!517626)))

(declare-fun b!6190838 () Bool)

(declare-fun e!3770300 () (InoxSet Context!11026))

(declare-fun call!517622 () (InoxSet Context!11026))

(declare-fun call!517624 () (InoxSet Context!11026))

(assert (=> b!6190838 (= e!3770300 ((_ map or) call!517622 call!517624))))

(declare-fun b!6190839 () Bool)

(declare-fun e!3770304 () (InoxSet Context!11026))

(assert (=> b!6190839 (= e!3770304 e!3770299)))

(declare-fun c!1116938 () Bool)

(assert (=> b!6190839 (= c!1116938 ((_ is Concat!24974) (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun c!1116941 () Bool)

(declare-fun bm!517619 () Bool)

(assert (=> bm!517619 (= call!517626 ($colon$colon!2000 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343))))) (ite (or c!1116941 c!1116938) (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (h!71011 (exprs!6013 (h!71012 zl!343))))))))

(declare-fun c!1116937 () Bool)

(declare-fun bm!517620 () Bool)

(assert (=> bm!517620 (= call!517622 (derivationStepZipperDown!1377 (ite c!1116937 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343))))) (ite c!1116937 (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343)))) (Context!11027 call!517626)) (h!71010 s!2326)))))

(declare-fun bm!517621 () Bool)

(assert (=> bm!517621 (= call!517625 call!517624)))

(declare-fun b!6190840 () Bool)

(declare-fun e!3770301 () Bool)

(assert (=> b!6190840 (= e!3770301 (nullable!6122 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343))))))))

(declare-fun bm!517622 () Bool)

(assert (=> bm!517622 (= call!517624 (derivationStepZipperDown!1377 (ite c!1116937 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116941 (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (ite c!1116938 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))) (reg!16458 (h!71011 (exprs!6013 (h!71012 zl!343))))))) (ite (or c!1116937 c!1116941) (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343)))) (Context!11027 call!517627)) (h!71010 s!2326)))))

(declare-fun b!6190841 () Bool)

(assert (=> b!6190841 (= c!1116941 e!3770301)))

(declare-fun res!2561116 () Bool)

(assert (=> b!6190841 (=> (not res!2561116) (not e!3770301))))

(assert (=> b!6190841 (= res!2561116 ((_ is Concat!24974) (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(assert (=> b!6190841 (= e!3770300 e!3770304)))

(declare-fun d!1940778 () Bool)

(declare-fun c!1116939 () Bool)

(assert (=> d!1940778 (= c!1116939 (and ((_ is ElementMatch!16129) (h!71011 (exprs!6013 (h!71012 zl!343)))) (= (c!1116552 (h!71011 (exprs!6013 (h!71012 zl!343)))) (h!71010 s!2326))))))

(declare-fun e!3770303 () (InoxSet Context!11026))

(assert (=> d!1940778 (= (derivationStepZipperDown!1377 (h!71011 (exprs!6013 (h!71012 zl!343))) (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343)))) (h!71010 s!2326)) e!3770303)))

(declare-fun b!6190842 () Bool)

(assert (=> b!6190842 (= e!3770299 call!517623)))

(declare-fun b!6190843 () Bool)

(assert (=> b!6190843 (= e!3770302 call!517623)))

(declare-fun b!6190844 () Bool)

(assert (=> b!6190844 (= e!3770303 (store ((as const (Array Context!11026 Bool)) false) (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343)))) true))))

(declare-fun b!6190845 () Bool)

(assert (=> b!6190845 (= e!3770304 ((_ map or) call!517622 call!517625))))

(declare-fun b!6190846 () Bool)

(assert (=> b!6190846 (= e!3770303 e!3770300)))

(assert (=> b!6190846 (= c!1116937 ((_ is Union!16129) (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(assert (= (and d!1940778 c!1116939) b!6190844))

(assert (= (and d!1940778 (not c!1116939)) b!6190846))

(assert (= (and b!6190846 c!1116937) b!6190838))

(assert (= (and b!6190846 (not c!1116937)) b!6190841))

(assert (= (and b!6190841 res!2561116) b!6190840))

(assert (= (and b!6190841 c!1116941) b!6190845))

(assert (= (and b!6190841 (not c!1116941)) b!6190839))

(assert (= (and b!6190839 c!1116938) b!6190842))

(assert (= (and b!6190839 (not c!1116938)) b!6190836))

(assert (= (and b!6190836 c!1116940) b!6190843))

(assert (= (and b!6190836 (not c!1116940)) b!6190837))

(assert (= (or b!6190842 b!6190843) bm!517618))

(assert (= (or b!6190842 b!6190843) bm!517617))

(assert (= (or b!6190845 bm!517618) bm!517619))

(assert (= (or b!6190845 bm!517617) bm!517621))

(assert (= (or b!6190838 bm!517621) bm!517622))

(assert (= (or b!6190838 b!6190845) bm!517620))

(declare-fun m!7025060 () Bool)

(assert (=> b!6190844 m!7025060))

(declare-fun m!7025062 () Bool)

(assert (=> bm!517619 m!7025062))

(assert (=> b!6190840 m!7024608))

(declare-fun m!7025064 () Bool)

(assert (=> bm!517622 m!7025064))

(declare-fun m!7025066 () Bool)

(assert (=> bm!517620 m!7025066))

(assert (=> bm!517547 d!1940778))

(assert (=> b!6190508 d!1940524))

(declare-fun bs!1535567 () Bool)

(declare-fun b!6190850 () Bool)

(assert (= bs!1535567 (and b!6190850 d!1940588)))

(declare-fun lambda!338075 () Int)

(assert (=> bs!1535567 (not (= lambda!338075 lambda!338053))))

(declare-fun bs!1535568 () Bool)

(assert (= bs!1535568 (and b!6190850 b!6190228)))

(assert (=> bs!1535568 (= (and (= (reg!16458 (regOne!32771 r!7292)) (reg!16458 lt!2340713)) (= (regOne!32771 r!7292) lt!2340713)) (= lambda!338075 lambda!338032))))

(declare-fun bs!1535569 () Bool)

(assert (= bs!1535569 (and b!6190850 b!6190298)))

(assert (=> bs!1535569 (= (and (= (reg!16458 (regOne!32771 r!7292)) (reg!16458 r!7292)) (= (regOne!32771 r!7292) r!7292)) (= lambda!338075 lambda!338034))))

(assert (=> bs!1535567 (not (= lambda!338075 lambda!338054))))

(declare-fun bs!1535570 () Bool)

(assert (= bs!1535570 (and b!6190850 b!6190623)))

(assert (=> bs!1535570 (= (and (= (reg!16458 (regOne!32771 r!7292)) (reg!16458 (regOne!32771 lt!2340713))) (= (regOne!32771 r!7292) (regOne!32771 lt!2340713))) (= lambda!338075 lambda!338059))))

(declare-fun bs!1535571 () Bool)

(assert (= bs!1535571 (and b!6190850 b!6189558)))

(assert (=> bs!1535571 (not (= lambda!338075 lambda!337983))))

(declare-fun bs!1535572 () Bool)

(assert (= bs!1535572 (and b!6190850 b!6190141)))

(assert (=> bs!1535572 (= (and (= (reg!16458 (regOne!32771 r!7292)) (reg!16458 lt!2340702)) (= (regOne!32771 r!7292) lt!2340702)) (= lambda!338075 lambda!338028))))

(declare-fun bs!1535573 () Bool)

(assert (= bs!1535573 (and b!6190850 b!6190621)))

(assert (=> bs!1535573 (not (= lambda!338075 lambda!338060))))

(declare-fun bs!1535574 () Bool)

(assert (= bs!1535574 (and b!6190850 b!6190139)))

(assert (=> bs!1535574 (not (= lambda!338075 lambda!338029))))

(declare-fun bs!1535575 () Bool)

(assert (= bs!1535575 (and b!6190850 b!6190296)))

(assert (=> bs!1535575 (not (= lambda!338075 lambda!338035))))

(declare-fun bs!1535576 () Bool)

(assert (= bs!1535576 (and b!6190850 d!1940586)))

(assert (=> bs!1535576 (not (= lambda!338075 lambda!338048))))

(declare-fun bs!1535577 () Bool)

(assert (= bs!1535577 (and b!6190850 b!6190226)))

(assert (=> bs!1535577 (not (= lambda!338075 lambda!338033))))

(assert (=> bs!1535571 (not (= lambda!338075 lambda!337984))))

(assert (=> b!6190850 true))

(assert (=> b!6190850 true))

(declare-fun bs!1535578 () Bool)

(declare-fun b!6190848 () Bool)

(assert (= bs!1535578 (and b!6190848 d!1940588)))

(declare-fun lambda!338076 () Int)

(assert (=> bs!1535578 (not (= lambda!338076 lambda!338053))))

(declare-fun bs!1535579 () Bool)

(assert (= bs!1535579 (and b!6190848 b!6190228)))

(assert (=> bs!1535579 (not (= lambda!338076 lambda!338032))))

(declare-fun bs!1535580 () Bool)

(assert (= bs!1535580 (and b!6190848 b!6190298)))

(assert (=> bs!1535580 (not (= lambda!338076 lambda!338034))))

(assert (=> bs!1535578 (= (and (= (regOne!32770 (regOne!32771 r!7292)) (regOne!32770 r!7292)) (= (regTwo!32770 (regOne!32771 r!7292)) (regTwo!32770 r!7292))) (= lambda!338076 lambda!338054))))

(declare-fun bs!1535581 () Bool)

(assert (= bs!1535581 (and b!6190848 b!6189558)))

(assert (=> bs!1535581 (not (= lambda!338076 lambda!337983))))

(declare-fun bs!1535582 () Bool)

(assert (= bs!1535582 (and b!6190848 b!6190141)))

(assert (=> bs!1535582 (not (= lambda!338076 lambda!338028))))

(declare-fun bs!1535583 () Bool)

(assert (= bs!1535583 (and b!6190848 b!6190621)))

(assert (=> bs!1535583 (= (and (= (regOne!32770 (regOne!32771 r!7292)) (regOne!32770 (regOne!32771 lt!2340713))) (= (regTwo!32770 (regOne!32771 r!7292)) (regTwo!32770 (regOne!32771 lt!2340713)))) (= lambda!338076 lambda!338060))))

(declare-fun bs!1535584 () Bool)

(assert (= bs!1535584 (and b!6190848 b!6190139)))

(assert (=> bs!1535584 (= (and (= (regOne!32770 (regOne!32771 r!7292)) (regOne!32770 lt!2340702)) (= (regTwo!32770 (regOne!32771 r!7292)) (regTwo!32770 lt!2340702))) (= lambda!338076 lambda!338029))))

(declare-fun bs!1535586 () Bool)

(assert (= bs!1535586 (and b!6190848 b!6190296)))

(assert (=> bs!1535586 (= (and (= (regOne!32770 (regOne!32771 r!7292)) (regOne!32770 r!7292)) (= (regTwo!32770 (regOne!32771 r!7292)) (regTwo!32770 r!7292))) (= lambda!338076 lambda!338035))))

(declare-fun bs!1535587 () Bool)

(assert (= bs!1535587 (and b!6190848 d!1940586)))

(assert (=> bs!1535587 (not (= lambda!338076 lambda!338048))))

(declare-fun bs!1535588 () Bool)

(assert (= bs!1535588 (and b!6190848 b!6190850)))

(assert (=> bs!1535588 (not (= lambda!338076 lambda!338075))))

(declare-fun bs!1535590 () Bool)

(assert (= bs!1535590 (and b!6190848 b!6190623)))

(assert (=> bs!1535590 (not (= lambda!338076 lambda!338059))))

(declare-fun bs!1535591 () Bool)

(assert (= bs!1535591 (and b!6190848 b!6190226)))

(assert (=> bs!1535591 (= (and (= (regOne!32770 (regOne!32771 r!7292)) (regOne!32770 lt!2340713)) (= (regTwo!32770 (regOne!32771 r!7292)) (regTwo!32770 lt!2340713))) (= lambda!338076 lambda!338033))))

(assert (=> bs!1535581 (= (and (= (regOne!32770 (regOne!32771 r!7292)) (regOne!32770 r!7292)) (= (regTwo!32770 (regOne!32771 r!7292)) (regTwo!32770 r!7292))) (= lambda!338076 lambda!337984))))

(assert (=> b!6190848 true))

(assert (=> b!6190848 true))

(declare-fun b!6190847 () Bool)

(declare-fun e!3770310 () Bool)

(assert (=> b!6190847 (= e!3770310 (= s!2326 (Cons!64562 (c!1116552 (regOne!32771 r!7292)) Nil!64562)))))

(declare-fun e!3770308 () Bool)

(declare-fun call!517629 () Bool)

(assert (=> b!6190848 (= e!3770308 call!517629)))

(declare-fun b!6190849 () Bool)

(declare-fun c!1116943 () Bool)

(assert (=> b!6190849 (= c!1116943 ((_ is ElementMatch!16129) (regOne!32771 r!7292)))))

(declare-fun e!3770309 () Bool)

(assert (=> b!6190849 (= e!3770309 e!3770310)))

(declare-fun e!3770307 () Bool)

(assert (=> b!6190850 (= e!3770307 call!517629)))

(declare-fun b!6190851 () Bool)

(declare-fun e!3770306 () Bool)

(declare-fun call!517628 () Bool)

(assert (=> b!6190851 (= e!3770306 call!517628)))

(declare-fun bm!517623 () Bool)

(assert (=> bm!517623 (= call!517628 (isEmpty!36550 s!2326))))

(declare-fun b!6190852 () Bool)

(assert (=> b!6190852 (= e!3770306 e!3770309)))

(declare-fun res!2561119 () Bool)

(assert (=> b!6190852 (= res!2561119 (not ((_ is EmptyLang!16129) (regOne!32771 r!7292))))))

(assert (=> b!6190852 (=> (not res!2561119) (not e!3770309))))

(declare-fun b!6190853 () Bool)

(declare-fun e!3770311 () Bool)

(assert (=> b!6190853 (= e!3770311 e!3770308)))

(declare-fun c!1116944 () Bool)

(assert (=> b!6190853 (= c!1116944 ((_ is Star!16129) (regOne!32771 r!7292)))))

(declare-fun b!6190854 () Bool)

(declare-fun e!3770305 () Bool)

(assert (=> b!6190854 (= e!3770311 e!3770305)))

(declare-fun res!2561117 () Bool)

(assert (=> b!6190854 (= res!2561117 (matchRSpec!3230 (regOne!32771 (regOne!32771 r!7292)) s!2326))))

(assert (=> b!6190854 (=> res!2561117 e!3770305)))

(declare-fun b!6190855 () Bool)

(declare-fun res!2561118 () Bool)

(assert (=> b!6190855 (=> res!2561118 e!3770307)))

(assert (=> b!6190855 (= res!2561118 call!517628)))

(assert (=> b!6190855 (= e!3770308 e!3770307)))

(declare-fun b!6190856 () Bool)

(declare-fun c!1116942 () Bool)

(assert (=> b!6190856 (= c!1116942 ((_ is Union!16129) (regOne!32771 r!7292)))))

(assert (=> b!6190856 (= e!3770310 e!3770311)))

(declare-fun b!6190857 () Bool)

(assert (=> b!6190857 (= e!3770305 (matchRSpec!3230 (regTwo!32771 (regOne!32771 r!7292)) s!2326))))

(declare-fun bm!517624 () Bool)

(assert (=> bm!517624 (= call!517629 (Exists!3199 (ite c!1116944 lambda!338075 lambda!338076)))))

(declare-fun d!1940780 () Bool)

(declare-fun c!1116945 () Bool)

(assert (=> d!1940780 (= c!1116945 ((_ is EmptyExpr!16129) (regOne!32771 r!7292)))))

(assert (=> d!1940780 (= (matchRSpec!3230 (regOne!32771 r!7292) s!2326) e!3770306)))

(assert (= (and d!1940780 c!1116945) b!6190851))

(assert (= (and d!1940780 (not c!1116945)) b!6190852))

(assert (= (and b!6190852 res!2561119) b!6190849))

(assert (= (and b!6190849 c!1116943) b!6190847))

(assert (= (and b!6190849 (not c!1116943)) b!6190856))

(assert (= (and b!6190856 c!1116942) b!6190854))

(assert (= (and b!6190856 (not c!1116942)) b!6190853))

(assert (= (and b!6190854 (not res!2561117)) b!6190857))

(assert (= (and b!6190853 c!1116944) b!6190855))

(assert (= (and b!6190853 (not c!1116944)) b!6190848))

(assert (= (and b!6190855 (not res!2561118)) b!6190850))

(assert (= (or b!6190850 b!6190848) bm!517624))

(assert (= (or b!6190851 b!6190855) bm!517623))

(assert (=> bm!517623 m!7024388))

(declare-fun m!7025076 () Bool)

(assert (=> b!6190854 m!7025076))

(declare-fun m!7025078 () Bool)

(assert (=> b!6190857 m!7025078))

(declare-fun m!7025080 () Bool)

(assert (=> bm!517624 m!7025080))

(assert (=> b!6190302 d!1940780))

(declare-fun bs!1535592 () Bool)

(declare-fun d!1940794 () Bool)

(assert (= bs!1535592 (and d!1940794 d!1940716)))

(declare-fun lambda!338078 () Int)

(assert (=> bs!1535592 (= lambda!338078 lambda!338066)))

(declare-fun bs!1535593 () Bool)

(assert (= bs!1535593 (and d!1940794 d!1940734)))

(assert (=> bs!1535593 (= lambda!338078 lambda!338069)))

(assert (=> d!1940794 (= (nullableZipper!1905 lt!2340699) (exists!2466 lt!2340699 lambda!338078))))

(declare-fun bs!1535594 () Bool)

(assert (= bs!1535594 d!1940794))

(declare-fun m!7025082 () Bool)

(assert (=> bs!1535594 m!7025082))

(assert (=> b!6190104 d!1940794))

(declare-fun d!1940800 () Bool)

(assert (=> d!1940800 (= (nullable!6122 (regOne!32770 (regOne!32771 (regOne!32770 r!7292)))) (nullableFct!2080 (regOne!32770 (regOne!32771 (regOne!32770 r!7292)))))))

(declare-fun bs!1535595 () Bool)

(assert (= bs!1535595 d!1940800))

(declare-fun m!7025084 () Bool)

(assert (=> bs!1535595 m!7025084))

(assert (=> b!6190288 d!1940800))

(declare-fun d!1940802 () Bool)

(assert (=> d!1940802 (= (isEmpty!36547 (tail!11855 (exprs!6013 (h!71012 zl!343)))) ((_ is Nil!64563) (tail!11855 (exprs!6013 (h!71012 zl!343)))))))

(assert (=> b!6190092 d!1940802))

(declare-fun d!1940804 () Bool)

(assert (=> d!1940804 (= (tail!11855 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))))

(assert (=> b!6190092 d!1940804))

(assert (=> d!1940592 d!1940732))

(declare-fun d!1940806 () Bool)

(assert (=> d!1940806 (= (isEmptyExpr!1541 lt!2340810) ((_ is EmptyExpr!16129) lt!2340810))))

(assert (=> b!6190218 d!1940806))

(declare-fun d!1940808 () Bool)

(declare-fun c!1116946 () Bool)

(declare-fun e!3770316 () Bool)

(assert (=> d!1940808 (= c!1116946 e!3770316)))

(declare-fun res!2561122 () Bool)

(assert (=> d!1940808 (=> (not res!2561122) (not e!3770316))))

(assert (=> d!1940808 (= res!2561122 ((_ is Cons!64563) (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340697))))))))

(declare-fun e!3770314 () (InoxSet Context!11026))

(assert (=> d!1940808 (= (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 lt!2340697))) (h!71010 s!2326)) e!3770314)))

(declare-fun b!6190860 () Bool)

(declare-fun e!3770315 () (InoxSet Context!11026))

(assert (=> b!6190860 (= e!3770315 ((as const (Array Context!11026 Bool)) false))))

(declare-fun b!6190861 () Bool)

(assert (=> b!6190861 (= e!3770314 e!3770315)))

(declare-fun c!1116947 () Bool)

(assert (=> b!6190861 (= c!1116947 ((_ is Cons!64563) (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340697))))))))

(declare-fun b!6190862 () Bool)

(assert (=> b!6190862 (= e!3770316 (nullable!6122 (h!71011 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340697)))))))))

(declare-fun bm!517625 () Bool)

(declare-fun call!517630 () (InoxSet Context!11026))

(assert (=> bm!517625 (= call!517630 (derivationStepZipperDown!1377 (h!71011 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340697))))) (Context!11027 (t!378197 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340697)))))) (h!71010 s!2326)))))

(declare-fun b!6190863 () Bool)

(assert (=> b!6190863 (= e!3770315 call!517630)))

(declare-fun b!6190864 () Bool)

(assert (=> b!6190864 (= e!3770314 ((_ map or) call!517630 (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340697)))))) (h!71010 s!2326))))))

(assert (= (and d!1940808 res!2561122) b!6190862))

(assert (= (and d!1940808 c!1116946) b!6190864))

(assert (= (and d!1940808 (not c!1116946)) b!6190861))

(assert (= (and b!6190861 c!1116947) b!6190863))

(assert (= (and b!6190861 (not c!1116947)) b!6190860))

(assert (= (or b!6190864 b!6190863) bm!517625))

(declare-fun m!7025086 () Bool)

(assert (=> b!6190862 m!7025086))

(declare-fun m!7025088 () Bool)

(assert (=> bm!517625 m!7025088))

(declare-fun m!7025090 () Bool)

(assert (=> b!6190864 m!7025090))

(assert (=> b!6190436 d!1940808))

(declare-fun d!1940812 () Bool)

(declare-fun c!1116949 () Bool)

(assert (=> d!1940812 (= c!1116949 (isEmpty!36550 (tail!11856 s!2326)))))

(declare-fun e!3770318 () Bool)

(assert (=> d!1940812 (= (matchZipper!2141 (derivationStepZipper!2097 lt!2340690 (head!12771 s!2326)) (tail!11856 s!2326)) e!3770318)))

(declare-fun b!6190867 () Bool)

(assert (=> b!6190867 (= e!3770318 (nullableZipper!1905 (derivationStepZipper!2097 lt!2340690 (head!12771 s!2326))))))

(declare-fun b!6190868 () Bool)

(assert (=> b!6190868 (= e!3770318 (matchZipper!2141 (derivationStepZipper!2097 (derivationStepZipper!2097 lt!2340690 (head!12771 s!2326)) (head!12771 (tail!11856 s!2326))) (tail!11856 (tail!11856 s!2326))))))

(assert (= (and d!1940812 c!1116949) b!6190867))

(assert (= (and d!1940812 (not c!1116949)) b!6190868))

(assert (=> d!1940812 m!7024396))

(assert (=> d!1940812 m!7024406))

(assert (=> b!6190867 m!7024648))

(declare-fun m!7025092 () Bool)

(assert (=> b!6190867 m!7025092))

(assert (=> b!6190868 m!7024396))

(assert (=> b!6190868 m!7024784))

(assert (=> b!6190868 m!7024648))

(assert (=> b!6190868 m!7024784))

(declare-fun m!7025094 () Bool)

(assert (=> b!6190868 m!7025094))

(assert (=> b!6190868 m!7024396))

(assert (=> b!6190868 m!7024788))

(assert (=> b!6190868 m!7025094))

(assert (=> b!6190868 m!7024788))

(declare-fun m!7025098 () Bool)

(assert (=> b!6190868 m!7025098))

(assert (=> b!6190431 d!1940812))

(declare-fun bs!1535596 () Bool)

(declare-fun d!1940814 () Bool)

(assert (= bs!1535596 (and d!1940814 d!1940774)))

(declare-fun lambda!338079 () Int)

(assert (=> bs!1535596 (= (= (head!12771 s!2326) (head!12771 (t!378196 s!2326))) (= lambda!338079 lambda!338071))))

(declare-fun bs!1535597 () Bool)

(assert (= bs!1535597 (and d!1940814 d!1940722)))

(assert (=> bs!1535597 (= (= (head!12771 s!2326) (head!12771 (t!378196 s!2326))) (= lambda!338079 lambda!338068))))

(declare-fun bs!1535598 () Bool)

(assert (= bs!1535598 (and d!1940814 d!1940742)))

(assert (=> bs!1535598 (= (= (head!12771 s!2326) (head!12771 (t!378196 s!2326))) (= lambda!338079 lambda!338070))))

(declare-fun bs!1535599 () Bool)

(assert (= bs!1535599 (and d!1940814 d!1940700)))

(assert (=> bs!1535599 (= (= (head!12771 s!2326) (head!12771 (t!378196 s!2326))) (= lambda!338079 lambda!338061))))

(declare-fun bs!1535600 () Bool)

(assert (= bs!1535600 (and d!1940814 b!6189536)))

(assert (=> bs!1535600 (= (= (head!12771 s!2326) (h!71010 s!2326)) (= lambda!338079 lambda!337985))))

(declare-fun bs!1535601 () Bool)

(assert (= bs!1535601 (and d!1940814 d!1940624)))

(assert (=> bs!1535601 (= lambda!338079 lambda!338058)))

(assert (=> d!1940814 true))

(assert (=> d!1940814 (= (derivationStepZipper!2097 lt!2340690 (head!12771 s!2326)) (flatMap!1634 lt!2340690 lambda!338079))))

(declare-fun bs!1535602 () Bool)

(assert (= bs!1535602 d!1940814))

(declare-fun m!7025108 () Bool)

(assert (=> bs!1535602 m!7025108))

(assert (=> b!6190431 d!1940814))

(assert (=> b!6190431 d!1940626))

(assert (=> b!6190431 d!1940628))

(assert (=> d!1940520 d!1940614))

(assert (=> d!1940520 d!1940594))

(declare-fun d!1940818 () Bool)

(assert (=> d!1940818 (= (nullable!6122 lt!2340713) (nullableFct!2080 lt!2340713))))

(declare-fun bs!1535603 () Bool)

(assert (= bs!1535603 d!1940818))

(declare-fun m!7025110 () Bool)

(assert (=> bs!1535603 m!7025110))

(assert (=> b!6190194 d!1940818))

(assert (=> d!1940604 d!1940732))

(declare-fun d!1940820 () Bool)

(assert (=> d!1940820 (= (Exists!3199 (ite c!1116775 lambda!338034 lambda!338035)) (choose!45995 (ite c!1116775 lambda!338034 lambda!338035)))))

(declare-fun bs!1535604 () Bool)

(assert (= bs!1535604 d!1940820))

(declare-fun m!7025112 () Bool)

(assert (=> bs!1535604 m!7025112))

(assert (=> bm!517527 d!1940820))

(declare-fun d!1940822 () Bool)

(assert (=> d!1940822 (= (isEmptyExpr!1541 lt!2340855) ((_ is EmptyExpr!16129) lt!2340855))))

(assert (=> b!6190501 d!1940822))

(assert (=> d!1940570 d!1940572))

(declare-fun d!1940824 () Bool)

(assert (=> d!1940824 (= (flatMap!1634 lt!2340690 lambda!337985) (dynLambda!25459 lambda!337985 lt!2340703))))

(assert (=> d!1940824 true))

(declare-fun _$13!3178 () Unit!157811)

(assert (=> d!1940824 (= (choose!45994 lt!2340690 lt!2340703 lambda!337985) _$13!3178)))

(declare-fun b_lambda!235527 () Bool)

(assert (=> (not b_lambda!235527) (not d!1940824)))

(declare-fun bs!1535605 () Bool)

(assert (= bs!1535605 d!1940824))

(assert (=> bs!1535605 m!7023920))

(assert (=> bs!1535605 m!7024660))

(assert (=> d!1940570 d!1940824))

(assert (=> b!6190318 d!1940718))

(assert (=> b!6190318 d!1940628))

(declare-fun d!1940826 () Bool)

(assert (=> d!1940826 (= (Exists!3199 lambda!338053) (choose!45995 lambda!338053))))

(declare-fun bs!1535606 () Bool)

(assert (= bs!1535606 d!1940826))

(declare-fun m!7025114 () Bool)

(assert (=> bs!1535606 m!7025114))

(assert (=> d!1940588 d!1940826))

(declare-fun d!1940828 () Bool)

(assert (=> d!1940828 (= (Exists!3199 lambda!338054) (choose!45995 lambda!338054))))

(declare-fun bs!1535607 () Bool)

(assert (= bs!1535607 d!1940828))

(declare-fun m!7025116 () Bool)

(assert (=> bs!1535607 m!7025116))

(assert (=> d!1940588 d!1940828))

(declare-fun bs!1535611 () Bool)

(declare-fun d!1940830 () Bool)

(assert (= bs!1535611 (and d!1940830 d!1940588)))

(declare-fun lambda!338087 () Int)

(assert (=> bs!1535611 (= lambda!338087 lambda!338053)))

(declare-fun bs!1535612 () Bool)

(assert (= bs!1535612 (and d!1940830 b!6190228)))

(assert (=> bs!1535612 (not (= lambda!338087 lambda!338032))))

(declare-fun bs!1535613 () Bool)

(assert (= bs!1535613 (and d!1940830 b!6190298)))

(assert (=> bs!1535613 (not (= lambda!338087 lambda!338034))))

(assert (=> bs!1535611 (not (= lambda!338087 lambda!338054))))

(declare-fun bs!1535614 () Bool)

(assert (= bs!1535614 (and d!1940830 b!6190848)))

(assert (=> bs!1535614 (not (= lambda!338087 lambda!338076))))

(declare-fun bs!1535615 () Bool)

(assert (= bs!1535615 (and d!1940830 b!6189558)))

(assert (=> bs!1535615 (= lambda!338087 lambda!337983)))

(declare-fun bs!1535616 () Bool)

(assert (= bs!1535616 (and d!1940830 b!6190141)))

(assert (=> bs!1535616 (not (= lambda!338087 lambda!338028))))

(declare-fun bs!1535617 () Bool)

(assert (= bs!1535617 (and d!1940830 b!6190621)))

(assert (=> bs!1535617 (not (= lambda!338087 lambda!338060))))

(declare-fun bs!1535618 () Bool)

(assert (= bs!1535618 (and d!1940830 b!6190139)))

(assert (=> bs!1535618 (not (= lambda!338087 lambda!338029))))

(declare-fun bs!1535619 () Bool)

(assert (= bs!1535619 (and d!1940830 b!6190296)))

(assert (=> bs!1535619 (not (= lambda!338087 lambda!338035))))

(declare-fun bs!1535620 () Bool)

(assert (= bs!1535620 (and d!1940830 d!1940586)))

(assert (=> bs!1535620 (= lambda!338087 lambda!338048)))

(declare-fun bs!1535621 () Bool)

(assert (= bs!1535621 (and d!1940830 b!6190850)))

(assert (=> bs!1535621 (not (= lambda!338087 lambda!338075))))

(declare-fun bs!1535622 () Bool)

(assert (= bs!1535622 (and d!1940830 b!6190623)))

(assert (=> bs!1535622 (not (= lambda!338087 lambda!338059))))

(declare-fun bs!1535623 () Bool)

(assert (= bs!1535623 (and d!1940830 b!6190226)))

(assert (=> bs!1535623 (not (= lambda!338087 lambda!338033))))

(assert (=> bs!1535615 (not (= lambda!338087 lambda!337984))))

(assert (=> d!1940830 true))

(assert (=> d!1940830 true))

(assert (=> d!1940830 true))

(declare-fun lambda!338089 () Int)

(assert (=> bs!1535611 (not (= lambda!338089 lambda!338053))))

(assert (=> bs!1535612 (not (= lambda!338089 lambda!338032))))

(assert (=> bs!1535613 (not (= lambda!338089 lambda!338034))))

(assert (=> bs!1535611 (= lambda!338089 lambda!338054)))

(assert (=> bs!1535614 (= (and (= (regOne!32770 r!7292) (regOne!32770 (regOne!32771 r!7292))) (= (regTwo!32770 r!7292) (regTwo!32770 (regOne!32771 r!7292)))) (= lambda!338089 lambda!338076))))

(assert (=> bs!1535615 (not (= lambda!338089 lambda!337983))))

(assert (=> bs!1535616 (not (= lambda!338089 lambda!338028))))

(assert (=> bs!1535617 (= (and (= (regOne!32770 r!7292) (regOne!32770 (regOne!32771 lt!2340713))) (= (regTwo!32770 r!7292) (regTwo!32770 (regOne!32771 lt!2340713)))) (= lambda!338089 lambda!338060))))

(assert (=> bs!1535618 (= (and (= (regOne!32770 r!7292) (regOne!32770 lt!2340702)) (= (regTwo!32770 r!7292) (regTwo!32770 lt!2340702))) (= lambda!338089 lambda!338029))))

(assert (=> bs!1535619 (= lambda!338089 lambda!338035)))

(assert (=> bs!1535620 (not (= lambda!338089 lambda!338048))))

(assert (=> bs!1535621 (not (= lambda!338089 lambda!338075))))

(assert (=> bs!1535622 (not (= lambda!338089 lambda!338059))))

(assert (=> bs!1535623 (= (and (= (regOne!32770 r!7292) (regOne!32770 lt!2340713)) (= (regTwo!32770 r!7292) (regTwo!32770 lt!2340713))) (= lambda!338089 lambda!338033))))

(declare-fun bs!1535631 () Bool)

(assert (= bs!1535631 d!1940830))

(assert (=> bs!1535631 (not (= lambda!338089 lambda!338087))))

(assert (=> bs!1535615 (= lambda!338089 lambda!337984)))

(assert (=> d!1940830 true))

(assert (=> d!1940830 true))

(assert (=> d!1940830 true))

(assert (=> d!1940830 (= (Exists!3199 lambda!338087) (Exists!3199 lambda!338089))))

(assert (=> d!1940830 true))

(declare-fun _$90!1950 () Unit!157811)

(assert (=> d!1940830 (= (choose!45997 (regOne!32770 r!7292) (regTwo!32770 r!7292) s!2326) _$90!1950)))

(declare-fun m!7025126 () Bool)

(assert (=> bs!1535631 m!7025126))

(declare-fun m!7025128 () Bool)

(assert (=> bs!1535631 m!7025128))

(assert (=> d!1940588 d!1940830))

(declare-fun bm!517631 () Bool)

(declare-fun call!517638 () Bool)

(declare-fun c!1116959 () Bool)

(assert (=> bm!517631 (= call!517638 (validRegex!7865 (ite c!1116959 (regOne!32771 (regOne!32770 r!7292)) (regOne!32770 (regOne!32770 r!7292)))))))

(declare-fun b!6190899 () Bool)

(declare-fun e!3770338 () Bool)

(declare-fun call!517637 () Bool)

(assert (=> b!6190899 (= e!3770338 call!517637)))

(declare-fun d!1940840 () Bool)

(declare-fun res!2561141 () Bool)

(declare-fun e!3770340 () Bool)

(assert (=> d!1940840 (=> res!2561141 e!3770340)))

(assert (=> d!1940840 (= res!2561141 ((_ is ElementMatch!16129) (regOne!32770 r!7292)))))

(assert (=> d!1940840 (= (validRegex!7865 (regOne!32770 r!7292)) e!3770340)))

(declare-fun bm!517632 () Bool)

(declare-fun call!517636 () Bool)

(assert (=> bm!517632 (= call!517636 call!517637)))

(declare-fun c!1116958 () Bool)

(declare-fun bm!517633 () Bool)

(assert (=> bm!517633 (= call!517637 (validRegex!7865 (ite c!1116958 (reg!16458 (regOne!32770 r!7292)) (ite c!1116959 (regTwo!32771 (regOne!32770 r!7292)) (regTwo!32770 (regOne!32770 r!7292))))))))

(declare-fun b!6190900 () Bool)

(declare-fun e!3770343 () Bool)

(assert (=> b!6190900 (= e!3770343 call!517636)))

(declare-fun b!6190901 () Bool)

(declare-fun e!3770337 () Bool)

(assert (=> b!6190901 (= e!3770337 e!3770338)))

(declare-fun res!2561140 () Bool)

(assert (=> b!6190901 (= res!2561140 (not (nullable!6122 (reg!16458 (regOne!32770 r!7292)))))))

(assert (=> b!6190901 (=> (not res!2561140) (not e!3770338))))

(declare-fun b!6190902 () Bool)

(declare-fun e!3770339 () Bool)

(assert (=> b!6190902 (= e!3770339 call!517636)))

(declare-fun b!6190903 () Bool)

(assert (=> b!6190903 (= e!3770340 e!3770337)))

(assert (=> b!6190903 (= c!1116958 ((_ is Star!16129) (regOne!32770 r!7292)))))

(declare-fun b!6190904 () Bool)

(declare-fun res!2561139 () Bool)

(declare-fun e!3770342 () Bool)

(assert (=> b!6190904 (=> res!2561139 e!3770342)))

(assert (=> b!6190904 (= res!2561139 (not ((_ is Concat!24974) (regOne!32770 r!7292))))))

(declare-fun e!3770341 () Bool)

(assert (=> b!6190904 (= e!3770341 e!3770342)))

(declare-fun b!6190905 () Bool)

(assert (=> b!6190905 (= e!3770342 e!3770343)))

(declare-fun res!2561143 () Bool)

(assert (=> b!6190905 (=> (not res!2561143) (not e!3770343))))

(assert (=> b!6190905 (= res!2561143 call!517638)))

(declare-fun b!6190906 () Bool)

(assert (=> b!6190906 (= e!3770337 e!3770341)))

(assert (=> b!6190906 (= c!1116959 ((_ is Union!16129) (regOne!32770 r!7292)))))

(declare-fun b!6190907 () Bool)

(declare-fun res!2561142 () Bool)

(assert (=> b!6190907 (=> (not res!2561142) (not e!3770339))))

(assert (=> b!6190907 (= res!2561142 call!517638)))

(assert (=> b!6190907 (= e!3770341 e!3770339)))

(assert (= (and d!1940840 (not res!2561141)) b!6190903))

(assert (= (and b!6190903 c!1116958) b!6190901))

(assert (= (and b!6190903 (not c!1116958)) b!6190906))

(assert (= (and b!6190901 res!2561140) b!6190899))

(assert (= (and b!6190906 c!1116959) b!6190907))

(assert (= (and b!6190906 (not c!1116959)) b!6190904))

(assert (= (and b!6190907 res!2561142) b!6190902))

(assert (= (and b!6190904 (not res!2561139)) b!6190905))

(assert (= (and b!6190905 res!2561143) b!6190900))

(assert (= (or b!6190902 b!6190900) bm!517632))

(assert (= (or b!6190907 b!6190905) bm!517631))

(assert (= (or b!6190899 bm!517632) bm!517633))

(declare-fun m!7025130 () Bool)

(assert (=> bm!517631 m!7025130))

(declare-fun m!7025132 () Bool)

(assert (=> bm!517633 m!7025132))

(declare-fun m!7025134 () Bool)

(assert (=> b!6190901 m!7025134))

(assert (=> d!1940588 d!1940840))

(assert (=> d!1940602 d!1940604))

(assert (=> d!1940602 d!1940592))

(declare-fun d!1940842 () Bool)

(declare-fun e!3770344 () Bool)

(assert (=> d!1940842 (= (matchZipper!2141 ((_ map or) lt!2340714 lt!2340723) (t!378196 s!2326)) e!3770344)))

(declare-fun res!2561144 () Bool)

(assert (=> d!1940842 (=> res!2561144 e!3770344)))

(assert (=> d!1940842 (= res!2561144 (matchZipper!2141 lt!2340714 (t!378196 s!2326)))))

(assert (=> d!1940842 true))

(declare-fun _$48!1816 () Unit!157811)

(assert (=> d!1940842 (= (choose!45991 lt!2340714 lt!2340723 (t!378196 s!2326)) _$48!1816)))

(declare-fun b!6190908 () Bool)

(assert (=> b!6190908 (= e!3770344 (matchZipper!2141 lt!2340723 (t!378196 s!2326)))))

(assert (= (and d!1940842 (not res!2561144)) b!6190908))

(assert (=> d!1940842 m!7023844))

(assert (=> d!1940842 m!7023842))

(assert (=> b!6190908 m!7023884))

(assert (=> d!1940602 d!1940842))

(declare-fun bs!1535638 () Bool)

(declare-fun b!6190912 () Bool)

(assert (= bs!1535638 (and b!6190912 d!1940588)))

(declare-fun lambda!338091 () Int)

(assert (=> bs!1535638 (not (= lambda!338091 lambda!338053))))

(declare-fun bs!1535640 () Bool)

(assert (= bs!1535640 (and b!6190912 b!6190228)))

(assert (=> bs!1535640 (= (and (= (reg!16458 (regTwo!32771 lt!2340713)) (reg!16458 lt!2340713)) (= (regTwo!32771 lt!2340713) lt!2340713)) (= lambda!338091 lambda!338032))))

(declare-fun bs!1535641 () Bool)

(assert (= bs!1535641 (and b!6190912 b!6190298)))

(assert (=> bs!1535641 (= (and (= (reg!16458 (regTwo!32771 lt!2340713)) (reg!16458 r!7292)) (= (regTwo!32771 lt!2340713) r!7292)) (= lambda!338091 lambda!338034))))

(assert (=> bs!1535638 (not (= lambda!338091 lambda!338054))))

(declare-fun bs!1535643 () Bool)

(assert (= bs!1535643 (and b!6190912 b!6190848)))

(assert (=> bs!1535643 (not (= lambda!338091 lambda!338076))))

(declare-fun bs!1535645 () Bool)

(assert (= bs!1535645 (and b!6190912 b!6189558)))

(assert (=> bs!1535645 (not (= lambda!338091 lambda!337983))))

(declare-fun bs!1535646 () Bool)

(assert (= bs!1535646 (and b!6190912 b!6190141)))

(assert (=> bs!1535646 (= (and (= (reg!16458 (regTwo!32771 lt!2340713)) (reg!16458 lt!2340702)) (= (regTwo!32771 lt!2340713) lt!2340702)) (= lambda!338091 lambda!338028))))

(declare-fun bs!1535647 () Bool)

(assert (= bs!1535647 (and b!6190912 b!6190621)))

(assert (=> bs!1535647 (not (= lambda!338091 lambda!338060))))

(declare-fun bs!1535649 () Bool)

(assert (= bs!1535649 (and b!6190912 b!6190139)))

(assert (=> bs!1535649 (not (= lambda!338091 lambda!338029))))

(declare-fun bs!1535650 () Bool)

(assert (= bs!1535650 (and b!6190912 d!1940830)))

(assert (=> bs!1535650 (not (= lambda!338091 lambda!338089))))

(declare-fun bs!1535652 () Bool)

(assert (= bs!1535652 (and b!6190912 b!6190296)))

(assert (=> bs!1535652 (not (= lambda!338091 lambda!338035))))

(declare-fun bs!1535653 () Bool)

(assert (= bs!1535653 (and b!6190912 d!1940586)))

(assert (=> bs!1535653 (not (= lambda!338091 lambda!338048))))

(declare-fun bs!1535654 () Bool)

(assert (= bs!1535654 (and b!6190912 b!6190850)))

(assert (=> bs!1535654 (= (and (= (reg!16458 (regTwo!32771 lt!2340713)) (reg!16458 (regOne!32771 r!7292))) (= (regTwo!32771 lt!2340713) (regOne!32771 r!7292))) (= lambda!338091 lambda!338075))))

(declare-fun bs!1535655 () Bool)

(assert (= bs!1535655 (and b!6190912 b!6190623)))

(assert (=> bs!1535655 (= (and (= (reg!16458 (regTwo!32771 lt!2340713)) (reg!16458 (regOne!32771 lt!2340713))) (= (regTwo!32771 lt!2340713) (regOne!32771 lt!2340713))) (= lambda!338091 lambda!338059))))

(declare-fun bs!1535657 () Bool)

(assert (= bs!1535657 (and b!6190912 b!6190226)))

(assert (=> bs!1535657 (not (= lambda!338091 lambda!338033))))

(assert (=> bs!1535650 (not (= lambda!338091 lambda!338087))))

(assert (=> bs!1535645 (not (= lambda!338091 lambda!337984))))

(assert (=> b!6190912 true))

(assert (=> b!6190912 true))

(declare-fun bs!1535660 () Bool)

(declare-fun b!6190910 () Bool)

(assert (= bs!1535660 (and b!6190910 d!1940588)))

(declare-fun lambda!338092 () Int)

(assert (=> bs!1535660 (not (= lambda!338092 lambda!338053))))

(declare-fun bs!1535661 () Bool)

(assert (= bs!1535661 (and b!6190910 b!6190228)))

(assert (=> bs!1535661 (not (= lambda!338092 lambda!338032))))

(declare-fun bs!1535662 () Bool)

(assert (= bs!1535662 (and b!6190910 b!6190298)))

(assert (=> bs!1535662 (not (= lambda!338092 lambda!338034))))

(declare-fun bs!1535663 () Bool)

(assert (= bs!1535663 (and b!6190910 b!6190848)))

(assert (=> bs!1535663 (= (and (= (regOne!32770 (regTwo!32771 lt!2340713)) (regOne!32770 (regOne!32771 r!7292))) (= (regTwo!32770 (regTwo!32771 lt!2340713)) (regTwo!32770 (regOne!32771 r!7292)))) (= lambda!338092 lambda!338076))))

(declare-fun bs!1535664 () Bool)

(assert (= bs!1535664 (and b!6190910 b!6189558)))

(assert (=> bs!1535664 (not (= lambda!338092 lambda!337983))))

(declare-fun bs!1535665 () Bool)

(assert (= bs!1535665 (and b!6190910 b!6190141)))

(assert (=> bs!1535665 (not (= lambda!338092 lambda!338028))))

(declare-fun bs!1535666 () Bool)

(assert (= bs!1535666 (and b!6190910 b!6190621)))

(assert (=> bs!1535666 (= (and (= (regOne!32770 (regTwo!32771 lt!2340713)) (regOne!32770 (regOne!32771 lt!2340713))) (= (regTwo!32770 (regTwo!32771 lt!2340713)) (regTwo!32770 (regOne!32771 lt!2340713)))) (= lambda!338092 lambda!338060))))

(declare-fun bs!1535667 () Bool)

(assert (= bs!1535667 (and b!6190910 b!6190139)))

(assert (=> bs!1535667 (= (and (= (regOne!32770 (regTwo!32771 lt!2340713)) (regOne!32770 lt!2340702)) (= (regTwo!32770 (regTwo!32771 lt!2340713)) (regTwo!32770 lt!2340702))) (= lambda!338092 lambda!338029))))

(declare-fun bs!1535668 () Bool)

(assert (= bs!1535668 (and b!6190910 d!1940830)))

(assert (=> bs!1535668 (= (and (= (regOne!32770 (regTwo!32771 lt!2340713)) (regOne!32770 r!7292)) (= (regTwo!32770 (regTwo!32771 lt!2340713)) (regTwo!32770 r!7292))) (= lambda!338092 lambda!338089))))

(declare-fun bs!1535669 () Bool)

(assert (= bs!1535669 (and b!6190910 b!6190296)))

(assert (=> bs!1535669 (= (and (= (regOne!32770 (regTwo!32771 lt!2340713)) (regOne!32770 r!7292)) (= (regTwo!32770 (regTwo!32771 lt!2340713)) (regTwo!32770 r!7292))) (= lambda!338092 lambda!338035))))

(declare-fun bs!1535670 () Bool)

(assert (= bs!1535670 (and b!6190910 d!1940586)))

(assert (=> bs!1535670 (not (= lambda!338092 lambda!338048))))

(declare-fun bs!1535671 () Bool)

(assert (= bs!1535671 (and b!6190910 b!6190912)))

(assert (=> bs!1535671 (not (= lambda!338092 lambda!338091))))

(assert (=> bs!1535660 (= (and (= (regOne!32770 (regTwo!32771 lt!2340713)) (regOne!32770 r!7292)) (= (regTwo!32770 (regTwo!32771 lt!2340713)) (regTwo!32770 r!7292))) (= lambda!338092 lambda!338054))))

(declare-fun bs!1535672 () Bool)

(assert (= bs!1535672 (and b!6190910 b!6190850)))

(assert (=> bs!1535672 (not (= lambda!338092 lambda!338075))))

(declare-fun bs!1535673 () Bool)

(assert (= bs!1535673 (and b!6190910 b!6190623)))

(assert (=> bs!1535673 (not (= lambda!338092 lambda!338059))))

(declare-fun bs!1535674 () Bool)

(assert (= bs!1535674 (and b!6190910 b!6190226)))

(assert (=> bs!1535674 (= (and (= (regOne!32770 (regTwo!32771 lt!2340713)) (regOne!32770 lt!2340713)) (= (regTwo!32770 (regTwo!32771 lt!2340713)) (regTwo!32770 lt!2340713))) (= lambda!338092 lambda!338033))))

(assert (=> bs!1535668 (not (= lambda!338092 lambda!338087))))

(assert (=> bs!1535664 (= (and (= (regOne!32770 (regTwo!32771 lt!2340713)) (regOne!32770 r!7292)) (= (regTwo!32770 (regTwo!32771 lt!2340713)) (regTwo!32770 r!7292))) (= lambda!338092 lambda!337984))))

(assert (=> b!6190910 true))

(assert (=> b!6190910 true))

(declare-fun b!6190909 () Bool)

(declare-fun e!3770350 () Bool)

(assert (=> b!6190909 (= e!3770350 (= s!2326 (Cons!64562 (c!1116552 (regTwo!32771 lt!2340713)) Nil!64562)))))

(declare-fun e!3770348 () Bool)

(declare-fun call!517640 () Bool)

(assert (=> b!6190910 (= e!3770348 call!517640)))

(declare-fun b!6190911 () Bool)

(declare-fun c!1116961 () Bool)

(assert (=> b!6190911 (= c!1116961 ((_ is ElementMatch!16129) (regTwo!32771 lt!2340713)))))

(declare-fun e!3770349 () Bool)

(assert (=> b!6190911 (= e!3770349 e!3770350)))

(declare-fun e!3770347 () Bool)

(assert (=> b!6190912 (= e!3770347 call!517640)))

(declare-fun b!6190913 () Bool)

(declare-fun e!3770346 () Bool)

(declare-fun call!517639 () Bool)

(assert (=> b!6190913 (= e!3770346 call!517639)))

(declare-fun bm!517634 () Bool)

(assert (=> bm!517634 (= call!517639 (isEmpty!36550 s!2326))))

(declare-fun b!6190914 () Bool)

(assert (=> b!6190914 (= e!3770346 e!3770349)))

(declare-fun res!2561147 () Bool)

(assert (=> b!6190914 (= res!2561147 (not ((_ is EmptyLang!16129) (regTwo!32771 lt!2340713))))))

(assert (=> b!6190914 (=> (not res!2561147) (not e!3770349))))

(declare-fun b!6190915 () Bool)

(declare-fun e!3770351 () Bool)

(assert (=> b!6190915 (= e!3770351 e!3770348)))

(declare-fun c!1116962 () Bool)

(assert (=> b!6190915 (= c!1116962 ((_ is Star!16129) (regTwo!32771 lt!2340713)))))

(declare-fun b!6190916 () Bool)

(declare-fun e!3770345 () Bool)

(assert (=> b!6190916 (= e!3770351 e!3770345)))

(declare-fun res!2561145 () Bool)

(assert (=> b!6190916 (= res!2561145 (matchRSpec!3230 (regOne!32771 (regTwo!32771 lt!2340713)) s!2326))))

(assert (=> b!6190916 (=> res!2561145 e!3770345)))

(declare-fun b!6190917 () Bool)

(declare-fun res!2561146 () Bool)

(assert (=> b!6190917 (=> res!2561146 e!3770347)))

(assert (=> b!6190917 (= res!2561146 call!517639)))

(assert (=> b!6190917 (= e!3770348 e!3770347)))

(declare-fun b!6190918 () Bool)

(declare-fun c!1116960 () Bool)

(assert (=> b!6190918 (= c!1116960 ((_ is Union!16129) (regTwo!32771 lt!2340713)))))

(assert (=> b!6190918 (= e!3770350 e!3770351)))

(declare-fun b!6190919 () Bool)

(assert (=> b!6190919 (= e!3770345 (matchRSpec!3230 (regTwo!32771 (regTwo!32771 lt!2340713)) s!2326))))

(declare-fun bm!517635 () Bool)

(assert (=> bm!517635 (= call!517640 (Exists!3199 (ite c!1116962 lambda!338091 lambda!338092)))))

(declare-fun d!1940844 () Bool)

(declare-fun c!1116963 () Bool)

(assert (=> d!1940844 (= c!1116963 ((_ is EmptyExpr!16129) (regTwo!32771 lt!2340713)))))

(assert (=> d!1940844 (= (matchRSpec!3230 (regTwo!32771 lt!2340713) s!2326) e!3770346)))

(assert (= (and d!1940844 c!1116963) b!6190913))

(assert (= (and d!1940844 (not c!1116963)) b!6190914))

(assert (= (and b!6190914 res!2561147) b!6190911))

(assert (= (and b!6190911 c!1116961) b!6190909))

(assert (= (and b!6190911 (not c!1116961)) b!6190918))

(assert (= (and b!6190918 c!1116960) b!6190916))

(assert (= (and b!6190918 (not c!1116960)) b!6190915))

(assert (= (and b!6190916 (not res!2561145)) b!6190919))

(assert (= (and b!6190915 c!1116962) b!6190917))

(assert (= (and b!6190915 (not c!1116962)) b!6190910))

(assert (= (and b!6190917 (not res!2561146)) b!6190912))

(assert (= (or b!6190912 b!6190910) bm!517635))

(assert (= (or b!6190913 b!6190917) bm!517634))

(assert (=> bm!517634 m!7024388))

(declare-fun m!7025142 () Bool)

(assert (=> b!6190916 m!7025142))

(declare-fun m!7025144 () Bool)

(assert (=> b!6190919 m!7025144))

(declare-fun m!7025146 () Bool)

(assert (=> bm!517635 m!7025146))

(assert (=> b!6190235 d!1940844))

(declare-fun bs!1535678 () Bool)

(declare-fun d!1940848 () Bool)

(assert (= bs!1535678 (and d!1940848 d!1940716)))

(declare-fun lambda!338094 () Int)

(assert (=> bs!1535678 (= lambda!338094 lambda!338066)))

(declare-fun bs!1535679 () Bool)

(assert (= bs!1535679 (and d!1940848 d!1940734)))

(assert (=> bs!1535679 (= lambda!338094 lambda!338069)))

(declare-fun bs!1535680 () Bool)

(assert (= bs!1535680 (and d!1940848 d!1940794)))

(assert (=> bs!1535680 (= lambda!338094 lambda!338078)))

(assert (=> d!1940848 (= (nullableZipper!1905 lt!2340698) (exists!2466 lt!2340698 lambda!338094))))

(declare-fun bs!1535682 () Bool)

(assert (= bs!1535682 d!1940848))

(declare-fun m!7025148 () Bool)

(assert (=> bs!1535682 m!7025148))

(assert (=> b!6190236 d!1940848))

(declare-fun c!1116971 () Bool)

(declare-fun b!6190931 () Bool)

(assert (=> b!6190931 (= c!1116971 ((_ is Star!16129) (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292))))))))))

(declare-fun e!3770359 () (InoxSet Context!11026))

(declare-fun e!3770362 () (InoxSet Context!11026))

(assert (=> b!6190931 (= e!3770359 e!3770362)))

(declare-fun b!6190932 () Bool)

(assert (=> b!6190932 (= e!3770362 ((as const (Array Context!11026 Bool)) false))))

(declare-fun bm!517638 () Bool)

(declare-fun call!517644 () (InoxSet Context!11026))

(declare-fun call!517646 () (InoxSet Context!11026))

(assert (=> bm!517638 (= call!517644 call!517646)))

(declare-fun bm!517639 () Bool)

(declare-fun call!517648 () List!64687)

(declare-fun call!517647 () List!64687)

(assert (=> bm!517639 (= call!517648 call!517647)))

(declare-fun b!6190933 () Bool)

(declare-fun e!3770360 () (InoxSet Context!11026))

(declare-fun call!517643 () (InoxSet Context!11026))

(declare-fun call!517645 () (InoxSet Context!11026))

(assert (=> b!6190933 (= e!3770360 ((_ map or) call!517643 call!517645))))

(declare-fun b!6190934 () Bool)

(declare-fun e!3770364 () (InoxSet Context!11026))

(assert (=> b!6190934 (= e!3770364 e!3770359)))

(declare-fun c!1116969 () Bool)

(assert (=> b!6190934 (= c!1116969 ((_ is Concat!24974) (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292))))))))))

(declare-fun c!1116972 () Bool)

(declare-fun bm!517640 () Bool)

(assert (=> bm!517640 (= call!517647 ($colon$colon!2000 (exprs!6013 (ite (or c!1116763 c!1116767) lt!2340688 (Context!11027 call!517524))) (ite (or c!1116972 c!1116969) (regTwo!32770 (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292))))))) (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292)))))))))))

(declare-fun bm!517641 () Bool)

(declare-fun c!1116968 () Bool)

(assert (=> bm!517641 (= call!517643 (derivationStepZipperDown!1377 (ite c!1116968 (regOne!32771 (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292))))))) (regOne!32770 (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292)))))))) (ite c!1116968 (ite (or c!1116763 c!1116767) lt!2340688 (Context!11027 call!517524)) (Context!11027 call!517647)) (h!71010 s!2326)))))

(declare-fun bm!517642 () Bool)

(assert (=> bm!517642 (= call!517646 call!517645)))

(declare-fun b!6190935 () Bool)

(declare-fun e!3770361 () Bool)

(assert (=> b!6190935 (= e!3770361 (nullable!6122 (regOne!32770 (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292)))))))))))

(declare-fun bm!517643 () Bool)

(assert (=> bm!517643 (= call!517645 (derivationStepZipperDown!1377 (ite c!1116968 (regTwo!32771 (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292))))))) (ite c!1116972 (regTwo!32770 (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292))))))) (ite c!1116969 (regOne!32770 (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292))))))) (reg!16458 (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292)))))))))) (ite (or c!1116968 c!1116972) (ite (or c!1116763 c!1116767) lt!2340688 (Context!11027 call!517524)) (Context!11027 call!517648)) (h!71010 s!2326)))))

(declare-fun b!6190936 () Bool)

(assert (=> b!6190936 (= c!1116972 e!3770361)))

(declare-fun res!2561151 () Bool)

(assert (=> b!6190936 (=> (not res!2561151) (not e!3770361))))

(assert (=> b!6190936 (= res!2561151 ((_ is Concat!24974) (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292))))))))))

(assert (=> b!6190936 (= e!3770360 e!3770364)))

(declare-fun c!1116970 () Bool)

(declare-fun d!1940850 () Bool)

(assert (=> d!1940850 (= c!1116970 (and ((_ is ElementMatch!16129) (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292))))))) (= (c!1116552 (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292))))))) (h!71010 s!2326))))))

(declare-fun e!3770363 () (InoxSet Context!11026))

(assert (=> d!1940850 (= (derivationStepZipperDown!1377 (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292)))))) (ite (or c!1116763 c!1116767) lt!2340688 (Context!11027 call!517524)) (h!71010 s!2326)) e!3770363)))

(declare-fun b!6190937 () Bool)

(assert (=> b!6190937 (= e!3770359 call!517644)))

(declare-fun b!6190938 () Bool)

(assert (=> b!6190938 (= e!3770362 call!517644)))

(declare-fun b!6190939 () Bool)

(assert (=> b!6190939 (= e!3770363 (store ((as const (Array Context!11026 Bool)) false) (ite (or c!1116763 c!1116767) lt!2340688 (Context!11027 call!517524)) true))))

(declare-fun b!6190940 () Bool)

(assert (=> b!6190940 (= e!3770364 ((_ map or) call!517643 call!517646))))

(declare-fun b!6190941 () Bool)

(assert (=> b!6190941 (= e!3770363 e!3770360)))

(assert (=> b!6190941 (= c!1116968 ((_ is Union!16129) (ite c!1116763 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116767 (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (ite c!1116764 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))) (reg!16458 (regTwo!32771 (regOne!32770 r!7292))))))))))

(assert (= (and d!1940850 c!1116970) b!6190939))

(assert (= (and d!1940850 (not c!1116970)) b!6190941))

(assert (= (and b!6190941 c!1116968) b!6190933))

(assert (= (and b!6190941 (not c!1116968)) b!6190936))

(assert (= (and b!6190936 res!2561151) b!6190935))

(assert (= (and b!6190936 c!1116972) b!6190940))

(assert (= (and b!6190936 (not c!1116972)) b!6190934))

(assert (= (and b!6190934 c!1116969) b!6190937))

(assert (= (and b!6190934 (not c!1116969)) b!6190931))

(assert (= (and b!6190931 c!1116971) b!6190938))

(assert (= (and b!6190931 (not c!1116971)) b!6190932))

(assert (= (or b!6190937 b!6190938) bm!517639))

(assert (= (or b!6190937 b!6190938) bm!517638))

(assert (= (or b!6190940 bm!517639) bm!517640))

(assert (= (or b!6190940 bm!517638) bm!517642))

(assert (= (or b!6190933 bm!517642) bm!517643))

(assert (= (or b!6190933 b!6190940) bm!517641))

(declare-fun m!7025150 () Bool)

(assert (=> b!6190939 m!7025150))

(declare-fun m!7025152 () Bool)

(assert (=> bm!517640 m!7025152))

(declare-fun m!7025154 () Bool)

(assert (=> b!6190935 m!7025154))

(declare-fun m!7025156 () Bool)

(assert (=> bm!517643 m!7025156))

(declare-fun m!7025158 () Bool)

(assert (=> bm!517641 m!7025158))

(assert (=> bm!517519 d!1940850))

(declare-fun d!1940852 () Bool)

(assert (=> d!1940852 (= (nullable!6122 (h!71011 (exprs!6013 lt!2340703))) (nullableFct!2080 (h!71011 (exprs!6013 lt!2340703))))))

(declare-fun bs!1535689 () Bool)

(assert (= bs!1535689 d!1940852))

(declare-fun m!7025160 () Bool)

(assert (=> bs!1535689 m!7025160))

(assert (=> b!6190439 d!1940852))

(declare-fun call!517651 () Bool)

(declare-fun bm!517644 () Bool)

(declare-fun c!1116974 () Bool)

(assert (=> bm!517644 (= call!517651 (validRegex!7865 (ite c!1116974 (regOne!32771 (ite c!1116804 (reg!16458 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116805 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292)))))) (regOne!32770 (ite c!1116804 (reg!16458 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116805 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292)))))))))))

(declare-fun b!6190942 () Bool)

(declare-fun e!3770366 () Bool)

(declare-fun call!517650 () Bool)

(assert (=> b!6190942 (= e!3770366 call!517650)))

(declare-fun d!1940854 () Bool)

(declare-fun res!2561154 () Bool)

(declare-fun e!3770368 () Bool)

(assert (=> d!1940854 (=> res!2561154 e!3770368)))

(assert (=> d!1940854 (= res!2561154 ((_ is ElementMatch!16129) (ite c!1116804 (reg!16458 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116805 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292)))))))))

(assert (=> d!1940854 (= (validRegex!7865 (ite c!1116804 (reg!16458 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116805 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292)))))) e!3770368)))

(declare-fun bm!517645 () Bool)

(declare-fun call!517649 () Bool)

(assert (=> bm!517645 (= call!517649 call!517650)))

(declare-fun c!1116973 () Bool)

(declare-fun bm!517646 () Bool)

(assert (=> bm!517646 (= call!517650 (validRegex!7865 (ite c!1116973 (reg!16458 (ite c!1116804 (reg!16458 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116805 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292)))))) (ite c!1116974 (regTwo!32771 (ite c!1116804 (reg!16458 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116805 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292)))))) (regTwo!32770 (ite c!1116804 (reg!16458 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116805 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))))))))))))

(declare-fun b!6190943 () Bool)

(declare-fun e!3770371 () Bool)

(assert (=> b!6190943 (= e!3770371 call!517649)))

(declare-fun b!6190944 () Bool)

(declare-fun e!3770365 () Bool)

(assert (=> b!6190944 (= e!3770365 e!3770366)))

(declare-fun res!2561153 () Bool)

(assert (=> b!6190944 (= res!2561153 (not (nullable!6122 (reg!16458 (ite c!1116804 (reg!16458 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116805 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292)))))))))))

(assert (=> b!6190944 (=> (not res!2561153) (not e!3770366))))

(declare-fun b!6190945 () Bool)

(declare-fun e!3770367 () Bool)

(assert (=> b!6190945 (= e!3770367 call!517649)))

(declare-fun b!6190946 () Bool)

(assert (=> b!6190946 (= e!3770368 e!3770365)))

(assert (=> b!6190946 (= c!1116973 ((_ is Star!16129) (ite c!1116804 (reg!16458 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116805 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292)))))))))

(declare-fun b!6190947 () Bool)

(declare-fun res!2561152 () Bool)

(declare-fun e!3770370 () Bool)

(assert (=> b!6190947 (=> res!2561152 e!3770370)))

(assert (=> b!6190947 (= res!2561152 (not ((_ is Concat!24974) (ite c!1116804 (reg!16458 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116805 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))))))))))

(declare-fun e!3770369 () Bool)

(assert (=> b!6190947 (= e!3770369 e!3770370)))

(declare-fun b!6190948 () Bool)

(assert (=> b!6190948 (= e!3770370 e!3770371)))

(declare-fun res!2561156 () Bool)

(assert (=> b!6190948 (=> (not res!2561156) (not e!3770371))))

(assert (=> b!6190948 (= res!2561156 call!517651)))

(declare-fun b!6190949 () Bool)

(assert (=> b!6190949 (= e!3770365 e!3770369)))

(assert (=> b!6190949 (= c!1116974 ((_ is Union!16129) (ite c!1116804 (reg!16458 (regOne!32771 (regOne!32770 r!7292))) (ite c!1116805 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292)))))))))

(declare-fun b!6190950 () Bool)

(declare-fun res!2561155 () Bool)

(assert (=> b!6190950 (=> (not res!2561155) (not e!3770367))))

(assert (=> b!6190950 (= res!2561155 call!517651)))

(assert (=> b!6190950 (= e!3770369 e!3770367)))

(assert (= (and d!1940854 (not res!2561154)) b!6190946))

(assert (= (and b!6190946 c!1116973) b!6190944))

(assert (= (and b!6190946 (not c!1116973)) b!6190949))

(assert (= (and b!6190944 res!2561153) b!6190942))

(assert (= (and b!6190949 c!1116974) b!6190950))

(assert (= (and b!6190949 (not c!1116974)) b!6190947))

(assert (= (and b!6190950 res!2561155) b!6190945))

(assert (= (and b!6190947 (not res!2561152)) b!6190948))

(assert (= (and b!6190948 res!2561156) b!6190943))

(assert (= (or b!6190945 b!6190943) bm!517645))

(assert (= (or b!6190950 b!6190948) bm!517644))

(assert (= (or b!6190942 bm!517645) bm!517646))

(declare-fun m!7025162 () Bool)

(assert (=> bm!517644 m!7025162))

(declare-fun m!7025164 () Bool)

(assert (=> bm!517646 m!7025164))

(declare-fun m!7025166 () Bool)

(assert (=> b!6190944 m!7025166))

(assert (=> bm!517537 d!1940854))

(assert (=> d!1940564 d!1940614))

(declare-fun d!1940856 () Bool)

(assert (=> d!1940856 (= (head!12770 lt!2340694) (h!71011 lt!2340694))))

(assert (=> b!6190210 d!1940856))

(assert (=> bs!1535501 d!1940566))

(declare-fun d!1940858 () Bool)

(assert (=> d!1940858 (= (nullable!6122 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343))))) (nullableFct!2080 (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343))))))))

(declare-fun bs!1535692 () Bool)

(assert (= bs!1535692 d!1940858))

(declare-fun m!7025168 () Bool)

(assert (=> bs!1535692 m!7025168))

(assert (=> b!6190398 d!1940858))

(declare-fun d!1940860 () Bool)

(assert (=> d!1940860 (= (isUnion!980 lt!2340822) ((_ is Union!16129) lt!2340822))))

(assert (=> b!6190344 d!1940860))

(declare-fun call!517654 () Bool)

(declare-fun c!1116976 () Bool)

(declare-fun bm!517647 () Bool)

(assert (=> bm!517647 (= call!517654 (validRegex!7865 (ite c!1116976 (regOne!32771 (ite c!1116835 (regOne!32771 r!7292) (regOne!32770 r!7292))) (regOne!32770 (ite c!1116835 (regOne!32771 r!7292) (regOne!32770 r!7292))))))))

(declare-fun b!6190951 () Bool)

(declare-fun e!3770373 () Bool)

(declare-fun call!517653 () Bool)

(assert (=> b!6190951 (= e!3770373 call!517653)))

(declare-fun d!1940862 () Bool)

(declare-fun res!2561159 () Bool)

(declare-fun e!3770375 () Bool)

(assert (=> d!1940862 (=> res!2561159 e!3770375)))

(assert (=> d!1940862 (= res!2561159 ((_ is ElementMatch!16129) (ite c!1116835 (regOne!32771 r!7292) (regOne!32770 r!7292))))))

(assert (=> d!1940862 (= (validRegex!7865 (ite c!1116835 (regOne!32771 r!7292) (regOne!32770 r!7292))) e!3770375)))

(declare-fun bm!517648 () Bool)

(declare-fun call!517652 () Bool)

(assert (=> bm!517648 (= call!517652 call!517653)))

(declare-fun c!1116975 () Bool)

(declare-fun bm!517649 () Bool)

(assert (=> bm!517649 (= call!517653 (validRegex!7865 (ite c!1116975 (reg!16458 (ite c!1116835 (regOne!32771 r!7292) (regOne!32770 r!7292))) (ite c!1116976 (regTwo!32771 (ite c!1116835 (regOne!32771 r!7292) (regOne!32770 r!7292))) (regTwo!32770 (ite c!1116835 (regOne!32771 r!7292) (regOne!32770 r!7292)))))))))

(declare-fun b!6190952 () Bool)

(declare-fun e!3770378 () Bool)

(assert (=> b!6190952 (= e!3770378 call!517652)))

(declare-fun b!6190953 () Bool)

(declare-fun e!3770372 () Bool)

(assert (=> b!6190953 (= e!3770372 e!3770373)))

(declare-fun res!2561158 () Bool)

(assert (=> b!6190953 (= res!2561158 (not (nullable!6122 (reg!16458 (ite c!1116835 (regOne!32771 r!7292) (regOne!32770 r!7292))))))))

(assert (=> b!6190953 (=> (not res!2561158) (not e!3770373))))

(declare-fun b!6190954 () Bool)

(declare-fun e!3770374 () Bool)

(assert (=> b!6190954 (= e!3770374 call!517652)))

(declare-fun b!6190955 () Bool)

(assert (=> b!6190955 (= e!3770375 e!3770372)))

(assert (=> b!6190955 (= c!1116975 ((_ is Star!16129) (ite c!1116835 (regOne!32771 r!7292) (regOne!32770 r!7292))))))

(declare-fun b!6190956 () Bool)

(declare-fun res!2561157 () Bool)

(declare-fun e!3770377 () Bool)

(assert (=> b!6190956 (=> res!2561157 e!3770377)))

(assert (=> b!6190956 (= res!2561157 (not ((_ is Concat!24974) (ite c!1116835 (regOne!32771 r!7292) (regOne!32770 r!7292)))))))

(declare-fun e!3770376 () Bool)

(assert (=> b!6190956 (= e!3770376 e!3770377)))

(declare-fun b!6190957 () Bool)

(assert (=> b!6190957 (= e!3770377 e!3770378)))

(declare-fun res!2561161 () Bool)

(assert (=> b!6190957 (=> (not res!2561161) (not e!3770378))))

(assert (=> b!6190957 (= res!2561161 call!517654)))

(declare-fun b!6190958 () Bool)

(assert (=> b!6190958 (= e!3770372 e!3770376)))

(assert (=> b!6190958 (= c!1116976 ((_ is Union!16129) (ite c!1116835 (regOne!32771 r!7292) (regOne!32770 r!7292))))))

(declare-fun b!6190959 () Bool)

(declare-fun res!2561160 () Bool)

(assert (=> b!6190959 (=> (not res!2561160) (not e!3770374))))

(assert (=> b!6190959 (= res!2561160 call!517654)))

(assert (=> b!6190959 (= e!3770376 e!3770374)))

(assert (= (and d!1940862 (not res!2561159)) b!6190955))

(assert (= (and b!6190955 c!1116975) b!6190953))

(assert (= (and b!6190955 (not c!1116975)) b!6190958))

(assert (= (and b!6190953 res!2561158) b!6190951))

(assert (= (and b!6190958 c!1116976) b!6190959))

(assert (= (and b!6190958 (not c!1116976)) b!6190956))

(assert (= (and b!6190959 res!2561160) b!6190954))

(assert (= (and b!6190956 (not res!2561157)) b!6190957))

(assert (= (and b!6190957 res!2561161) b!6190952))

(assert (= (or b!6190954 b!6190952) bm!517648))

(assert (= (or b!6190959 b!6190957) bm!517647))

(assert (= (or b!6190951 bm!517648) bm!517649))

(declare-fun m!7025170 () Bool)

(assert (=> bm!517647 m!7025170))

(declare-fun m!7025172 () Bool)

(assert (=> bm!517649 m!7025172))

(declare-fun m!7025174 () Bool)

(assert (=> b!6190953 m!7025174))

(assert (=> bm!517551 d!1940862))

(assert (=> bm!517494 d!1940614))

(declare-fun bs!1535698 () Bool)

(declare-fun d!1940864 () Bool)

(assert (= bs!1535698 (and d!1940864 d!1940474)))

(declare-fun lambda!338096 () Int)

(assert (=> bs!1535698 (= lambda!338096 lambda!338023)))

(declare-fun bs!1535700 () Bool)

(assert (= bs!1535700 (and d!1940864 d!1940526)))

(assert (=> bs!1535700 (= lambda!338096 lambda!338038)))

(declare-fun bs!1535701 () Bool)

(assert (= bs!1535701 (and d!1940864 d!1940492)))

(assert (=> bs!1535701 (= lambda!338096 lambda!338030)))

(declare-fun bs!1535702 () Bool)

(assert (= bs!1535702 (and d!1940864 d!1940600)))

(assert (=> bs!1535702 (= lambda!338096 lambda!338055)))

(declare-fun bs!1535703 () Bool)

(assert (= bs!1535703 (and d!1940864 d!1940530)))

(assert (=> bs!1535703 (= lambda!338096 lambda!338042)))

(declare-fun bs!1535705 () Bool)

(assert (= bs!1535705 (and d!1940864 d!1940532)))

(assert (=> bs!1535705 (= lambda!338096 lambda!338045)))

(declare-fun bs!1535706 () Bool)

(assert (= bs!1535706 (and d!1940864 d!1940528)))

(assert (=> bs!1535706 (= lambda!338096 lambda!338039)))

(declare-fun bs!1535707 () Bool)

(assert (= bs!1535707 (and d!1940864 d!1940494)))

(assert (=> bs!1535707 (= lambda!338096 lambda!338031)))

(assert (=> d!1940864 (= (inv!83569 setElem!41992) (forall!15245 (exprs!6013 setElem!41992) lambda!338096))))

(declare-fun bs!1535708 () Bool)

(assert (= bs!1535708 d!1940864))

(declare-fun m!7025176 () Bool)

(assert (=> bs!1535708 m!7025176))

(assert (=> setNonEmpty!41992 d!1940864))

(assert (=> b!6190202 d!1940626))

(assert (=> bm!517528 d!1940614))

(declare-fun bs!1535710 () Bool)

(declare-fun d!1940866 () Bool)

(assert (= bs!1535710 (and d!1940866 d!1940716)))

(declare-fun lambda!338097 () Int)

(assert (=> bs!1535710 (= lambda!338097 lambda!338066)))

(declare-fun bs!1535712 () Bool)

(assert (= bs!1535712 (and d!1940866 d!1940734)))

(assert (=> bs!1535712 (= lambda!338097 lambda!338069)))

(declare-fun bs!1535713 () Bool)

(assert (= bs!1535713 (and d!1940866 d!1940794)))

(assert (=> bs!1535713 (= lambda!338097 lambda!338078)))

(declare-fun bs!1535714 () Bool)

(assert (= bs!1535714 (and d!1940866 d!1940848)))

(assert (=> bs!1535714 (= lambda!338097 lambda!338094)))

(assert (=> d!1940866 (= (nullableZipper!1905 ((_ map or) lt!2340698 lt!2340723)) (exists!2466 ((_ map or) lt!2340698 lt!2340723) lambda!338097))))

(declare-fun bs!1535716 () Bool)

(assert (= bs!1535716 d!1940866))

(declare-fun m!7025178 () Bool)

(assert (=> bs!1535716 m!7025178))

(assert (=> b!6190249 d!1940866))

(declare-fun d!1940868 () Bool)

(assert (=> d!1940868 (= (isDefined!12723 lt!2340844) (not (isEmpty!36551 lt!2340844)))))

(declare-fun bs!1535717 () Bool)

(assert (= bs!1535717 d!1940868))

(declare-fun m!7025180 () Bool)

(assert (=> bs!1535717 m!7025180))

(assert (=> b!6190464 d!1940868))

(declare-fun d!1940870 () Bool)

(assert (=> d!1940870 (= ($colon$colon!2000 (exprs!6013 lt!2340688) (ite (or c!1116767 c!1116764) (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (regTwo!32771 (regOne!32770 r!7292)))) (Cons!64563 (ite (or c!1116767 c!1116764) (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))) (regTwo!32771 (regOne!32770 r!7292))) (exprs!6013 lt!2340688)))))

(assert (=> bm!517516 d!1940870))

(declare-fun d!1940872 () Bool)

(assert (=> d!1940872 (= (isEmpty!36551 (findConcatSeparation!2434 (regOne!32770 r!7292) (regTwo!32770 r!7292) Nil!64562 s!2326 s!2326)) (not ((_ is Some!16019) (findConcatSeparation!2434 (regOne!32770 r!7292) (regTwo!32770 r!7292) Nil!64562 s!2326 s!2326))))))

(assert (=> d!1940590 d!1940872))

(assert (=> b!6190502 d!1940508))

(declare-fun bs!1535721 () Bool)

(declare-fun d!1940874 () Bool)

(assert (= bs!1535721 (and d!1940874 d!1940716)))

(declare-fun lambda!338098 () Int)

(assert (=> bs!1535721 (= lambda!338098 lambda!338066)))

(declare-fun bs!1535722 () Bool)

(assert (= bs!1535722 (and d!1940874 d!1940794)))

(assert (=> bs!1535722 (= lambda!338098 lambda!338078)))

(declare-fun bs!1535723 () Bool)

(assert (= bs!1535723 (and d!1940874 d!1940848)))

(assert (=> bs!1535723 (= lambda!338098 lambda!338094)))

(declare-fun bs!1535724 () Bool)

(assert (= bs!1535724 (and d!1940874 d!1940734)))

(assert (=> bs!1535724 (= lambda!338098 lambda!338069)))

(declare-fun bs!1535725 () Bool)

(assert (= bs!1535725 (and d!1940874 d!1940866)))

(assert (=> bs!1535725 (= lambda!338098 lambda!338097)))

(assert (=> d!1940874 (= (nullableZipper!1905 lt!2340709) (exists!2466 lt!2340709 lambda!338098))))

(declare-fun bs!1535726 () Bool)

(assert (= bs!1535726 d!1940874))

(declare-fun m!7025182 () Bool)

(assert (=> bs!1535726 m!7025182))

(assert (=> b!6190240 d!1940874))

(assert (=> b!6190097 d!1940508))

(declare-fun b!6190988 () Bool)

(declare-fun e!3770399 () Bool)

(declare-fun call!517660 () Bool)

(assert (=> b!6190988 (= e!3770399 call!517660)))

(declare-fun bm!517655 () Bool)

(declare-fun call!517661 () Bool)

(declare-fun c!1116982 () Bool)

(assert (=> bm!517655 (= call!517661 (nullable!6122 (ite c!1116982 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))))))))

(declare-fun b!6190989 () Bool)

(declare-fun e!3770401 () Bool)

(declare-fun e!3770403 () Bool)

(assert (=> b!6190989 (= e!3770401 e!3770403)))

(declare-fun res!2561183 () Bool)

(assert (=> b!6190989 (= res!2561183 call!517661)))

(assert (=> b!6190989 (=> res!2561183 e!3770403)))

(declare-fun b!6190990 () Bool)

(declare-fun e!3770400 () Bool)

(assert (=> b!6190990 (= e!3770400 e!3770401)))

(assert (=> b!6190990 (= c!1116982 ((_ is Union!16129) (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun b!6190991 () Bool)

(assert (=> b!6190991 (= e!3770401 e!3770399)))

(declare-fun res!2561181 () Bool)

(assert (=> b!6190991 (= res!2561181 call!517661)))

(assert (=> b!6190991 (=> (not res!2561181) (not e!3770399))))

(declare-fun b!6190992 () Bool)

(declare-fun e!3770398 () Bool)

(declare-fun e!3770402 () Bool)

(assert (=> b!6190992 (= e!3770398 e!3770402)))

(declare-fun res!2561182 () Bool)

(assert (=> b!6190992 (=> (not res!2561182) (not e!3770402))))

(assert (=> b!6190992 (= res!2561182 (and (not ((_ is EmptyLang!16129) (h!71011 (exprs!6013 (h!71012 zl!343))))) (not ((_ is ElementMatch!16129) (h!71011 (exprs!6013 (h!71012 zl!343)))))))))

(declare-fun bm!517656 () Bool)

(assert (=> bm!517656 (= call!517660 (nullable!6122 (ite c!1116982 (regTwo!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regTwo!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))))))))

(declare-fun b!6190993 () Bool)

(assert (=> b!6190993 (= e!3770403 call!517660)))

(declare-fun d!1940876 () Bool)

(declare-fun res!2561184 () Bool)

(assert (=> d!1940876 (=> res!2561184 e!3770398)))

(assert (=> d!1940876 (= res!2561184 ((_ is EmptyExpr!16129) (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(assert (=> d!1940876 (= (nullableFct!2080 (h!71011 (exprs!6013 (h!71012 zl!343)))) e!3770398)))

(declare-fun b!6190994 () Bool)

(assert (=> b!6190994 (= e!3770402 e!3770400)))

(declare-fun res!2561180 () Bool)

(assert (=> b!6190994 (=> res!2561180 e!3770400)))

(assert (=> b!6190994 (= res!2561180 ((_ is Star!16129) (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(assert (= (and d!1940876 (not res!2561184)) b!6190992))

(assert (= (and b!6190992 res!2561182) b!6190994))

(assert (= (and b!6190994 (not res!2561180)) b!6190990))

(assert (= (and b!6190990 c!1116982) b!6190989))

(assert (= (and b!6190990 (not c!1116982)) b!6190991))

(assert (= (and b!6190989 (not res!2561183)) b!6190993))

(assert (= (and b!6190991 res!2561181) b!6190988))

(assert (= (or b!6190993 b!6190988) bm!517656))

(assert (= (or b!6190989 b!6190991) bm!517655))

(declare-fun m!7025206 () Bool)

(assert (=> bm!517655 m!7025206))

(declare-fun m!7025208 () Bool)

(assert (=> bm!517656 m!7025208))

(assert (=> d!1940548 d!1940876))

(assert (=> d!1940476 d!1940614))

(declare-fun bs!1535728 () Bool)

(declare-fun d!1940884 () Bool)

(assert (= bs!1535728 (and d!1940884 d!1940474)))

(declare-fun lambda!338099 () Int)

(assert (=> bs!1535728 (= lambda!338099 lambda!338023)))

(declare-fun bs!1535729 () Bool)

(assert (= bs!1535729 (and d!1940884 d!1940526)))

(assert (=> bs!1535729 (= lambda!338099 lambda!338038)))

(declare-fun bs!1535730 () Bool)

(assert (= bs!1535730 (and d!1940884 d!1940492)))

(assert (=> bs!1535730 (= lambda!338099 lambda!338030)))

(declare-fun bs!1535731 () Bool)

(assert (= bs!1535731 (and d!1940884 d!1940600)))

(assert (=> bs!1535731 (= lambda!338099 lambda!338055)))

(declare-fun bs!1535732 () Bool)

(assert (= bs!1535732 (and d!1940884 d!1940530)))

(assert (=> bs!1535732 (= lambda!338099 lambda!338042)))

(declare-fun bs!1535733 () Bool)

(assert (= bs!1535733 (and d!1940884 d!1940532)))

(assert (=> bs!1535733 (= lambda!338099 lambda!338045)))

(declare-fun bs!1535734 () Bool)

(assert (= bs!1535734 (and d!1940884 d!1940864)))

(assert (=> bs!1535734 (= lambda!338099 lambda!338096)))

(declare-fun bs!1535735 () Bool)

(assert (= bs!1535735 (and d!1940884 d!1940528)))

(assert (=> bs!1535735 (= lambda!338099 lambda!338039)))

(declare-fun bs!1535736 () Bool)

(assert (= bs!1535736 (and d!1940884 d!1940494)))

(assert (=> bs!1535736 (= lambda!338099 lambda!338031)))

(declare-fun b!6190995 () Bool)

(declare-fun e!3770408 () Bool)

(declare-fun lt!2340881 () Regex!16129)

(assert (=> b!6190995 (= e!3770408 (isConcat!1064 lt!2340881))))

(declare-fun b!6190996 () Bool)

(declare-fun e!3770409 () Regex!16129)

(declare-fun e!3770405 () Regex!16129)

(assert (=> b!6190996 (= e!3770409 e!3770405)))

(declare-fun c!1116986 () Bool)

(assert (=> b!6190996 (= c!1116986 ((_ is Cons!64563) (t!378197 lt!2340726)))))

(declare-fun b!6190997 () Bool)

(declare-fun e!3770406 () Bool)

(assert (=> b!6190997 (= e!3770406 e!3770408)))

(declare-fun c!1116984 () Bool)

(assert (=> b!6190997 (= c!1116984 (isEmpty!36547 (tail!11855 (t!378197 lt!2340726))))))

(declare-fun b!6190998 () Bool)

(assert (=> b!6190998 (= e!3770406 (isEmptyExpr!1541 lt!2340881))))

(declare-fun b!6190999 () Bool)

(declare-fun e!3770407 () Bool)

(assert (=> b!6190999 (= e!3770407 e!3770406)))

(declare-fun c!1116983 () Bool)

(assert (=> b!6190999 (= c!1116983 (isEmpty!36547 (t!378197 lt!2340726)))))

(declare-fun b!6191000 () Bool)

(assert (=> b!6191000 (= e!3770408 (= lt!2340881 (head!12770 (t!378197 lt!2340726))))))

(assert (=> d!1940884 e!3770407))

(declare-fun res!2561185 () Bool)

(assert (=> d!1940884 (=> (not res!2561185) (not e!3770407))))

(assert (=> d!1940884 (= res!2561185 (validRegex!7865 lt!2340881))))

(assert (=> d!1940884 (= lt!2340881 e!3770409)))

(declare-fun c!1116985 () Bool)

(declare-fun e!3770404 () Bool)

(assert (=> d!1940884 (= c!1116985 e!3770404)))

(declare-fun res!2561186 () Bool)

(assert (=> d!1940884 (=> (not res!2561186) (not e!3770404))))

(assert (=> d!1940884 (= res!2561186 ((_ is Cons!64563) (t!378197 lt!2340726)))))

(assert (=> d!1940884 (forall!15245 (t!378197 lt!2340726) lambda!338099)))

(assert (=> d!1940884 (= (generalisedConcat!1726 (t!378197 lt!2340726)) lt!2340881)))

(declare-fun b!6191001 () Bool)

(assert (=> b!6191001 (= e!3770405 EmptyExpr!16129)))

(declare-fun b!6191002 () Bool)

(assert (=> b!6191002 (= e!3770404 (isEmpty!36547 (t!378197 (t!378197 lt!2340726))))))

(declare-fun b!6191003 () Bool)

(assert (=> b!6191003 (= e!3770405 (Concat!24974 (h!71011 (t!378197 lt!2340726)) (generalisedConcat!1726 (t!378197 (t!378197 lt!2340726)))))))

(declare-fun b!6191004 () Bool)

(assert (=> b!6191004 (= e!3770409 (h!71011 (t!378197 lt!2340726)))))

(assert (= (and d!1940884 res!2561186) b!6191002))

(assert (= (and d!1940884 c!1116985) b!6191004))

(assert (= (and d!1940884 (not c!1116985)) b!6190996))

(assert (= (and b!6190996 c!1116986) b!6191003))

(assert (= (and b!6190996 (not c!1116986)) b!6191001))

(assert (= (and d!1940884 res!2561185) b!6190999))

(assert (= (and b!6190999 c!1116983) b!6190998))

(assert (= (and b!6190999 (not c!1116983)) b!6190997))

(assert (= (and b!6190997 c!1116984) b!6191000))

(assert (= (and b!6190997 (not c!1116984)) b!6190995))

(declare-fun m!7025210 () Bool)

(assert (=> b!6191003 m!7025210))

(declare-fun m!7025212 () Bool)

(assert (=> b!6191000 m!7025212))

(declare-fun m!7025214 () Bool)

(assert (=> b!6190997 m!7025214))

(assert (=> b!6190997 m!7025214))

(declare-fun m!7025216 () Bool)

(assert (=> b!6190997 m!7025216))

(declare-fun m!7025218 () Bool)

(assert (=> b!6191002 m!7025218))

(declare-fun m!7025220 () Bool)

(assert (=> d!1940884 m!7025220))

(declare-fun m!7025222 () Bool)

(assert (=> d!1940884 m!7025222))

(declare-fun m!7025224 () Bool)

(assert (=> b!6190995 m!7025224))

(assert (=> b!6190999 m!7024460))

(declare-fun m!7025226 () Bool)

(assert (=> b!6190998 m!7025226))

(assert (=> b!6190223 d!1940884))

(declare-fun b!6191019 () Bool)

(declare-fun e!3770422 () Bool)

(declare-fun e!3770426 () Bool)

(assert (=> b!6191019 (= e!3770422 e!3770426)))

(declare-fun c!1116989 () Bool)

(assert (=> b!6191019 (= c!1116989 ((_ is EmptyLang!16129) (derivativeStep!4844 lt!2340713 (head!12771 s!2326))))))

(declare-fun b!6191020 () Bool)

(declare-fun e!3770424 () Bool)

(declare-fun e!3770425 () Bool)

(assert (=> b!6191020 (= e!3770424 e!3770425)))

(declare-fun res!2561202 () Bool)

(assert (=> b!6191020 (=> (not res!2561202) (not e!3770425))))

(declare-fun lt!2340882 () Bool)

(assert (=> b!6191020 (= res!2561202 (not lt!2340882))))

(declare-fun b!6191021 () Bool)

(declare-fun res!2561197 () Bool)

(assert (=> b!6191021 (=> res!2561197 e!3770424)))

(assert (=> b!6191021 (= res!2561197 (not ((_ is ElementMatch!16129) (derivativeStep!4844 lt!2340713 (head!12771 s!2326)))))))

(assert (=> b!6191021 (= e!3770426 e!3770424)))

(declare-fun d!1940886 () Bool)

(assert (=> d!1940886 e!3770422))

(declare-fun c!1116991 () Bool)

(assert (=> d!1940886 (= c!1116991 ((_ is EmptyExpr!16129) (derivativeStep!4844 lt!2340713 (head!12771 s!2326))))))

(declare-fun e!3770423 () Bool)

(assert (=> d!1940886 (= lt!2340882 e!3770423)))

(declare-fun c!1116990 () Bool)

(assert (=> d!1940886 (= c!1116990 (isEmpty!36550 (tail!11856 s!2326)))))

(assert (=> d!1940886 (validRegex!7865 (derivativeStep!4844 lt!2340713 (head!12771 s!2326)))))

(assert (=> d!1940886 (= (matchR!8312 (derivativeStep!4844 lt!2340713 (head!12771 s!2326)) (tail!11856 s!2326)) lt!2340882)))

(declare-fun b!6191022 () Bool)

(assert (=> b!6191022 (= e!3770423 (nullable!6122 (derivativeStep!4844 lt!2340713 (head!12771 s!2326))))))

(declare-fun b!6191023 () Bool)

(declare-fun e!3770428 () Bool)

(assert (=> b!6191023 (= e!3770428 (= (head!12771 (tail!11856 s!2326)) (c!1116552 (derivativeStep!4844 lt!2340713 (head!12771 s!2326)))))))

(declare-fun b!6191024 () Bool)

(declare-fun res!2561200 () Bool)

(assert (=> b!6191024 (=> (not res!2561200) (not e!3770428))))

(declare-fun call!517664 () Bool)

(assert (=> b!6191024 (= res!2561200 (not call!517664))))

(declare-fun b!6191025 () Bool)

(declare-fun res!2561198 () Bool)

(assert (=> b!6191025 (=> (not res!2561198) (not e!3770428))))

(assert (=> b!6191025 (= res!2561198 (isEmpty!36550 (tail!11856 (tail!11856 s!2326))))))

(declare-fun b!6191026 () Bool)

(assert (=> b!6191026 (= e!3770422 (= lt!2340882 call!517664))))

(declare-fun b!6191027 () Bool)

(assert (=> b!6191027 (= e!3770423 (matchR!8312 (derivativeStep!4844 (derivativeStep!4844 lt!2340713 (head!12771 s!2326)) (head!12771 (tail!11856 s!2326))) (tail!11856 (tail!11856 s!2326))))))

(declare-fun bm!517659 () Bool)

(assert (=> bm!517659 (= call!517664 (isEmpty!36550 (tail!11856 s!2326)))))

(declare-fun b!6191028 () Bool)

(declare-fun e!3770427 () Bool)

(assert (=> b!6191028 (= e!3770425 e!3770427)))

(declare-fun res!2561204 () Bool)

(assert (=> b!6191028 (=> res!2561204 e!3770427)))

(assert (=> b!6191028 (= res!2561204 call!517664)))

(declare-fun b!6191029 () Bool)

(declare-fun res!2561199 () Bool)

(assert (=> b!6191029 (=> res!2561199 e!3770424)))

(assert (=> b!6191029 (= res!2561199 e!3770428)))

(declare-fun res!2561203 () Bool)

(assert (=> b!6191029 (=> (not res!2561203) (not e!3770428))))

(assert (=> b!6191029 (= res!2561203 lt!2340882)))

(declare-fun b!6191030 () Bool)

(assert (=> b!6191030 (= e!3770427 (not (= (head!12771 (tail!11856 s!2326)) (c!1116552 (derivativeStep!4844 lt!2340713 (head!12771 s!2326))))))))

(declare-fun b!6191031 () Bool)

(declare-fun res!2561201 () Bool)

(assert (=> b!6191031 (=> res!2561201 e!3770427)))

(assert (=> b!6191031 (= res!2561201 (not (isEmpty!36550 (tail!11856 (tail!11856 s!2326)))))))

(declare-fun b!6191032 () Bool)

(assert (=> b!6191032 (= e!3770426 (not lt!2340882))))

(assert (= (and d!1940886 c!1116990) b!6191022))

(assert (= (and d!1940886 (not c!1116990)) b!6191027))

(assert (= (and d!1940886 c!1116991) b!6191026))

(assert (= (and d!1940886 (not c!1116991)) b!6191019))

(assert (= (and b!6191019 c!1116989) b!6191032))

(assert (= (and b!6191019 (not c!1116989)) b!6191021))

(assert (= (and b!6191021 (not res!2561197)) b!6191029))

(assert (= (and b!6191029 res!2561203) b!6191024))

(assert (= (and b!6191024 res!2561200) b!6191025))

(assert (= (and b!6191025 res!2561198) b!6191023))

(assert (= (and b!6191029 (not res!2561199)) b!6191020))

(assert (= (and b!6191020 res!2561202) b!6191028))

(assert (= (and b!6191028 (not res!2561204)) b!6191031))

(assert (= (and b!6191031 (not res!2561201)) b!6191030))

(assert (= (or b!6191026 b!6191024 b!6191028) bm!517659))

(assert (=> bm!517659 m!7024396))

(assert (=> bm!517659 m!7024406))

(assert (=> b!6191025 m!7024396))

(assert (=> b!6191025 m!7024788))

(assert (=> b!6191025 m!7024788))

(assert (=> b!6191025 m!7025004))

(assert (=> b!6191031 m!7024396))

(assert (=> b!6191031 m!7024788))

(assert (=> b!6191031 m!7024788))

(assert (=> b!6191031 m!7025004))

(assert (=> b!6191027 m!7024396))

(assert (=> b!6191027 m!7024784))

(assert (=> b!6191027 m!7024426))

(assert (=> b!6191027 m!7024784))

(declare-fun m!7025228 () Bool)

(assert (=> b!6191027 m!7025228))

(assert (=> b!6191027 m!7024396))

(assert (=> b!6191027 m!7024788))

(assert (=> b!6191027 m!7025228))

(assert (=> b!6191027 m!7024788))

(declare-fun m!7025230 () Bool)

(assert (=> b!6191027 m!7025230))

(assert (=> b!6191023 m!7024396))

(assert (=> b!6191023 m!7024784))

(assert (=> d!1940886 m!7024396))

(assert (=> d!1940886 m!7024406))

(assert (=> d!1940886 m!7024426))

(declare-fun m!7025232 () Bool)

(assert (=> d!1940886 m!7025232))

(assert (=> b!6191030 m!7024396))

(assert (=> b!6191030 m!7024784))

(assert (=> b!6191022 m!7024426))

(declare-fun m!7025234 () Bool)

(assert (=> b!6191022 m!7025234))

(assert (=> b!6190199 d!1940886))

(declare-fun bm!517662 () Bool)

(declare-fun call!517667 () Regex!16129)

(declare-fun call!517668 () Regex!16129)

(assert (=> bm!517662 (= call!517667 call!517668)))

(declare-fun b!6191033 () Bool)

(declare-fun e!3770433 () Regex!16129)

(declare-fun call!517670 () Regex!16129)

(assert (=> b!6191033 (= e!3770433 (Concat!24974 call!517670 lt!2340713))))

(declare-fun b!6191034 () Bool)

(declare-fun e!3770432 () Regex!16129)

(assert (=> b!6191034 (= e!3770432 e!3770433)))

(declare-fun c!1116996 () Bool)

(assert (=> b!6191034 (= c!1116996 ((_ is Star!16129) lt!2340713))))

(declare-fun b!6191035 () Bool)

(declare-fun call!517669 () Regex!16129)

(assert (=> b!6191035 (= e!3770432 (Union!16129 call!517668 call!517669))))

(declare-fun b!6191036 () Bool)

(declare-fun e!3770430 () Regex!16129)

(assert (=> b!6191036 (= e!3770430 EmptyLang!16129)))

(declare-fun b!6191037 () Bool)

(declare-fun c!1116993 () Bool)

(assert (=> b!6191037 (= c!1116993 ((_ is Union!16129) lt!2340713))))

(declare-fun e!3770429 () Regex!16129)

(assert (=> b!6191037 (= e!3770429 e!3770432)))

(declare-fun b!6191038 () Bool)

(declare-fun c!1116995 () Bool)

(assert (=> b!6191038 (= c!1116995 (nullable!6122 (regOne!32770 lt!2340713)))))

(declare-fun e!3770431 () Regex!16129)

(assert (=> b!6191038 (= e!3770433 e!3770431)))

(declare-fun bm!517663 () Bool)

(assert (=> bm!517663 (= call!517670 call!517669)))

(declare-fun bm!517664 () Bool)

(assert (=> bm!517664 (= call!517669 (derivativeStep!4844 (ite c!1116993 (regTwo!32771 lt!2340713) (ite c!1116996 (reg!16458 lt!2340713) (regOne!32770 lt!2340713))) (head!12771 s!2326)))))

(declare-fun b!6191039 () Bool)

(assert (=> b!6191039 (= e!3770430 e!3770429)))

(declare-fun c!1116994 () Bool)

(assert (=> b!6191039 (= c!1116994 ((_ is ElementMatch!16129) lt!2340713))))

(declare-fun b!6191040 () Bool)

(assert (=> b!6191040 (= e!3770431 (Union!16129 (Concat!24974 call!517667 (regTwo!32770 lt!2340713)) EmptyLang!16129))))

(declare-fun b!6191041 () Bool)

(assert (=> b!6191041 (= e!3770429 (ite (= (head!12771 s!2326) (c!1116552 lt!2340713)) EmptyExpr!16129 EmptyLang!16129))))

(declare-fun b!6191042 () Bool)

(assert (=> b!6191042 (= e!3770431 (Union!16129 (Concat!24974 call!517670 (regTwo!32770 lt!2340713)) call!517667))))

(declare-fun bm!517665 () Bool)

(assert (=> bm!517665 (= call!517668 (derivativeStep!4844 (ite c!1116993 (regOne!32771 lt!2340713) (ite c!1116995 (regTwo!32770 lt!2340713) (regOne!32770 lt!2340713))) (head!12771 s!2326)))))

(declare-fun d!1940888 () Bool)

(declare-fun lt!2340883 () Regex!16129)

(assert (=> d!1940888 (validRegex!7865 lt!2340883)))

(assert (=> d!1940888 (= lt!2340883 e!3770430)))

(declare-fun c!1116992 () Bool)

(assert (=> d!1940888 (= c!1116992 (or ((_ is EmptyExpr!16129) lt!2340713) ((_ is EmptyLang!16129) lt!2340713)))))

(assert (=> d!1940888 (validRegex!7865 lt!2340713)))

(assert (=> d!1940888 (= (derivativeStep!4844 lt!2340713 (head!12771 s!2326)) lt!2340883)))

(assert (= (and d!1940888 c!1116992) b!6191036))

(assert (= (and d!1940888 (not c!1116992)) b!6191039))

(assert (= (and b!6191039 c!1116994) b!6191041))

(assert (= (and b!6191039 (not c!1116994)) b!6191037))

(assert (= (and b!6191037 c!1116993) b!6191035))

(assert (= (and b!6191037 (not c!1116993)) b!6191034))

(assert (= (and b!6191034 c!1116996) b!6191033))

(assert (= (and b!6191034 (not c!1116996)) b!6191038))

(assert (= (and b!6191038 c!1116995) b!6191042))

(assert (= (and b!6191038 (not c!1116995)) b!6191040))

(assert (= (or b!6191042 b!6191040) bm!517662))

(assert (= (or b!6191033 b!6191042) bm!517663))

(assert (= (or b!6191035 bm!517663) bm!517664))

(assert (= (or b!6191035 bm!517662) bm!517665))

(declare-fun m!7025236 () Bool)

(assert (=> b!6191038 m!7025236))

(assert (=> bm!517664 m!7024392))

(declare-fun m!7025238 () Bool)

(assert (=> bm!517664 m!7025238))

(assert (=> bm!517665 m!7024392))

(declare-fun m!7025240 () Bool)

(assert (=> bm!517665 m!7025240))

(declare-fun m!7025242 () Bool)

(assert (=> d!1940888 m!7025242))

(assert (=> d!1940888 m!7024422))

(assert (=> b!6190199 d!1940888))

(assert (=> b!6190199 d!1940626))

(assert (=> b!6190199 d!1940628))

(declare-fun bs!1535737 () Bool)

(declare-fun d!1940890 () Bool)

(assert (= bs!1535737 (and d!1940890 d!1940716)))

(declare-fun lambda!338100 () Int)

(assert (=> bs!1535737 (= lambda!338100 lambda!338066)))

(declare-fun bs!1535738 () Bool)

(assert (= bs!1535738 (and d!1940890 d!1940794)))

(assert (=> bs!1535738 (= lambda!338100 lambda!338078)))

(declare-fun bs!1535739 () Bool)

(assert (= bs!1535739 (and d!1940890 d!1940874)))

(assert (=> bs!1535739 (= lambda!338100 lambda!338098)))

(declare-fun bs!1535740 () Bool)

(assert (= bs!1535740 (and d!1940890 d!1940848)))

(assert (=> bs!1535740 (= lambda!338100 lambda!338094)))

(declare-fun bs!1535741 () Bool)

(assert (= bs!1535741 (and d!1940890 d!1940734)))

(assert (=> bs!1535741 (= lambda!338100 lambda!338069)))

(declare-fun bs!1535742 () Bool)

(assert (= bs!1535742 (and d!1940890 d!1940866)))

(assert (=> bs!1535742 (= lambda!338100 lambda!338097)))

(assert (=> d!1940890 (= (nullableZipper!1905 ((_ map or) lt!2340709 lt!2340723)) (exists!2466 ((_ map or) lt!2340709 lt!2340723) lambda!338100))))

(declare-fun bs!1535743 () Bool)

(assert (= bs!1535743 d!1940890))

(declare-fun m!7025244 () Bool)

(assert (=> bs!1535743 m!7025244))

(assert (=> b!6190365 d!1940890))

(declare-fun bs!1535744 () Bool)

(declare-fun d!1940892 () Bool)

(assert (= bs!1535744 (and d!1940892 d!1940474)))

(declare-fun lambda!338101 () Int)

(assert (=> bs!1535744 (= lambda!338101 lambda!338023)))

(declare-fun bs!1535745 () Bool)

(assert (= bs!1535745 (and d!1940892 d!1940526)))

(assert (=> bs!1535745 (= lambda!338101 lambda!338038)))

(declare-fun bs!1535746 () Bool)

(assert (= bs!1535746 (and d!1940892 d!1940492)))

(assert (=> bs!1535746 (= lambda!338101 lambda!338030)))

(declare-fun bs!1535747 () Bool)

(assert (= bs!1535747 (and d!1940892 d!1940600)))

(assert (=> bs!1535747 (= lambda!338101 lambda!338055)))

(declare-fun bs!1535748 () Bool)

(assert (= bs!1535748 (and d!1940892 d!1940884)))

(assert (=> bs!1535748 (= lambda!338101 lambda!338099)))

(declare-fun bs!1535749 () Bool)

(assert (= bs!1535749 (and d!1940892 d!1940530)))

(assert (=> bs!1535749 (= lambda!338101 lambda!338042)))

(declare-fun bs!1535750 () Bool)

(assert (= bs!1535750 (and d!1940892 d!1940532)))

(assert (=> bs!1535750 (= lambda!338101 lambda!338045)))

(declare-fun bs!1535751 () Bool)

(assert (= bs!1535751 (and d!1940892 d!1940864)))

(assert (=> bs!1535751 (= lambda!338101 lambda!338096)))

(declare-fun bs!1535752 () Bool)

(assert (= bs!1535752 (and d!1940892 d!1940528)))

(assert (=> bs!1535752 (= lambda!338101 lambda!338039)))

(declare-fun bs!1535753 () Bool)

(assert (= bs!1535753 (and d!1940892 d!1940494)))

(assert (=> bs!1535753 (= lambda!338101 lambda!338031)))

(declare-fun b!6191043 () Bool)

(declare-fun e!3770438 () Bool)

(declare-fun lt!2340884 () Regex!16129)

(assert (=> b!6191043 (= e!3770438 (isConcat!1064 lt!2340884))))

(declare-fun b!6191044 () Bool)

(declare-fun e!3770439 () Regex!16129)

(declare-fun e!3770435 () Regex!16129)

(assert (=> b!6191044 (= e!3770439 e!3770435)))

(declare-fun c!1117000 () Bool)

(assert (=> b!6191044 (= c!1117000 ((_ is Cons!64563) (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343))))))))

(declare-fun b!6191045 () Bool)

(declare-fun e!3770436 () Bool)

(assert (=> b!6191045 (= e!3770436 e!3770438)))

(declare-fun c!1116998 () Bool)

(assert (=> b!6191045 (= c!1116998 (isEmpty!36547 (tail!11855 (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343)))))))))

(declare-fun b!6191046 () Bool)

(assert (=> b!6191046 (= e!3770436 (isEmptyExpr!1541 lt!2340884))))

(declare-fun b!6191047 () Bool)

(declare-fun e!3770437 () Bool)

(assert (=> b!6191047 (= e!3770437 e!3770436)))

(declare-fun c!1116997 () Bool)

(assert (=> b!6191047 (= c!1116997 (isEmpty!36547 (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343))))))))

(declare-fun b!6191048 () Bool)

(assert (=> b!6191048 (= e!3770438 (= lt!2340884 (head!12770 (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343)))))))))

(assert (=> d!1940892 e!3770437))

(declare-fun res!2561205 () Bool)

(assert (=> d!1940892 (=> (not res!2561205) (not e!3770437))))

(assert (=> d!1940892 (= res!2561205 (validRegex!7865 lt!2340884))))

(assert (=> d!1940892 (= lt!2340884 e!3770439)))

(declare-fun c!1116999 () Bool)

(declare-fun e!3770434 () Bool)

(assert (=> d!1940892 (= c!1116999 e!3770434)))

(declare-fun res!2561206 () Bool)

(assert (=> d!1940892 (=> (not res!2561206) (not e!3770434))))

(assert (=> d!1940892 (= res!2561206 ((_ is Cons!64563) (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343))))))))

(assert (=> d!1940892 (forall!15245 (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343)))) lambda!338101)))

(assert (=> d!1940892 (= (generalisedConcat!1726 (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343))))) lt!2340884)))

(declare-fun b!6191049 () Bool)

(assert (=> b!6191049 (= e!3770435 EmptyExpr!16129)))

(declare-fun b!6191050 () Bool)

(assert (=> b!6191050 (= e!3770434 (isEmpty!36547 (t!378197 (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343)))))))))

(declare-fun b!6191051 () Bool)

(assert (=> b!6191051 (= e!3770435 (Concat!24974 (h!71011 (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343))))) (generalisedConcat!1726 (t!378197 (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343))))))))))

(declare-fun b!6191052 () Bool)

(assert (=> b!6191052 (= e!3770439 (h!71011 (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343))))))))

(assert (= (and d!1940892 res!2561206) b!6191050))

(assert (= (and d!1940892 c!1116999) b!6191052))

(assert (= (and d!1940892 (not c!1116999)) b!6191044))

(assert (= (and b!6191044 c!1117000) b!6191051))

(assert (= (and b!6191044 (not c!1117000)) b!6191049))

(assert (= (and d!1940892 res!2561205) b!6191047))

(assert (= (and b!6191047 c!1116997) b!6191046))

(assert (= (and b!6191047 (not c!1116997)) b!6191045))

(assert (= (and b!6191045 c!1116998) b!6191048))

(assert (= (and b!6191045 (not c!1116998)) b!6191043))

(declare-fun m!7025246 () Bool)

(assert (=> b!6191051 m!7025246))

(declare-fun m!7025248 () Bool)

(assert (=> b!6191048 m!7025248))

(declare-fun m!7025250 () Bool)

(assert (=> b!6191045 m!7025250))

(assert (=> b!6191045 m!7025250))

(declare-fun m!7025252 () Bool)

(assert (=> b!6191045 m!7025252))

(declare-fun m!7025254 () Bool)

(assert (=> b!6191050 m!7025254))

(declare-fun m!7025256 () Bool)

(assert (=> d!1940892 m!7025256))

(declare-fun m!7025258 () Bool)

(assert (=> d!1940892 m!7025258))

(declare-fun m!7025260 () Bool)

(assert (=> b!6191043 m!7025260))

(assert (=> b!6191047 m!7024748))

(declare-fun m!7025262 () Bool)

(assert (=> b!6191046 m!7025262))

(assert (=> b!6190506 d!1940892))

(declare-fun d!1940894 () Bool)

(assert (=> d!1940894 (= (isEmpty!36547 (tail!11855 lt!2340726)) ((_ is Nil!64563) (tail!11855 lt!2340726)))))

(assert (=> b!6190217 d!1940894))

(declare-fun d!1940896 () Bool)

(assert (=> d!1940896 (= (tail!11855 lt!2340726) (t!378197 lt!2340726))))

(assert (=> b!6190217 d!1940896))

(declare-fun d!1940898 () Bool)

(declare-fun c!1117002 () Bool)

(declare-fun e!3770448 () Bool)

(assert (=> d!1940898 (= c!1117002 e!3770448)))

(declare-fun res!2561212 () Bool)

(assert (=> d!1940898 (=> (not res!2561212) (not e!3770448))))

(assert (=> d!1940898 (= res!2561212 ((_ is Cons!64563) (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340703))))))))

(declare-fun e!3770446 () (InoxSet Context!11026))

(assert (=> d!1940898 (= (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 lt!2340703))) (h!71010 s!2326)) e!3770446)))

(declare-fun b!6191060 () Bool)

(declare-fun e!3770447 () (InoxSet Context!11026))

(assert (=> b!6191060 (= e!3770447 ((as const (Array Context!11026 Bool)) false))))

(declare-fun b!6191061 () Bool)

(assert (=> b!6191061 (= e!3770446 e!3770447)))

(declare-fun c!1117003 () Bool)

(assert (=> b!6191061 (= c!1117003 ((_ is Cons!64563) (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340703))))))))

(declare-fun b!6191062 () Bool)

(assert (=> b!6191062 (= e!3770448 (nullable!6122 (h!71011 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340703)))))))))

(declare-fun bm!517668 () Bool)

(declare-fun call!517673 () (InoxSet Context!11026))

(assert (=> bm!517668 (= call!517673 (derivationStepZipperDown!1377 (h!71011 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340703))))) (Context!11027 (t!378197 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340703)))))) (h!71010 s!2326)))))

(declare-fun b!6191063 () Bool)

(assert (=> b!6191063 (= e!3770447 call!517673)))

(declare-fun b!6191064 () Bool)

(assert (=> b!6191064 (= e!3770446 ((_ map or) call!517673 (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340703)))))) (h!71010 s!2326))))))

(assert (= (and d!1940898 res!2561212) b!6191062))

(assert (= (and d!1940898 c!1117002) b!6191064))

(assert (= (and d!1940898 (not c!1117002)) b!6191061))

(assert (= (and b!6191061 c!1117003) b!6191063))

(assert (= (and b!6191061 (not c!1117003)) b!6191060))

(assert (= (or b!6191064 b!6191063) bm!517668))

(declare-fun m!7025268 () Bool)

(assert (=> b!6191062 m!7025268))

(declare-fun m!7025270 () Bool)

(assert (=> bm!517668 m!7025270))

(declare-fun m!7025272 () Bool)

(assert (=> b!6191064 m!7025272))

(assert (=> b!6190441 d!1940898))

(declare-fun bs!1535755 () Bool)

(declare-fun d!1940902 () Bool)

(assert (= bs!1535755 (and d!1940902 d!1940474)))

(declare-fun lambda!338103 () Int)

(assert (=> bs!1535755 (= lambda!338103 lambda!338023)))

(declare-fun bs!1535757 () Bool)

(assert (= bs!1535757 (and d!1940902 d!1940526)))

(assert (=> bs!1535757 (= lambda!338103 lambda!338038)))

(declare-fun bs!1535758 () Bool)

(assert (= bs!1535758 (and d!1940902 d!1940492)))

(assert (=> bs!1535758 (= lambda!338103 lambda!338030)))

(declare-fun bs!1535759 () Bool)

(assert (= bs!1535759 (and d!1940902 d!1940600)))

(assert (=> bs!1535759 (= lambda!338103 lambda!338055)))

(declare-fun bs!1535760 () Bool)

(assert (= bs!1535760 (and d!1940902 d!1940884)))

(assert (=> bs!1535760 (= lambda!338103 lambda!338099)))

(declare-fun bs!1535762 () Bool)

(assert (= bs!1535762 (and d!1940902 d!1940530)))

(assert (=> bs!1535762 (= lambda!338103 lambda!338042)))

(declare-fun bs!1535763 () Bool)

(assert (= bs!1535763 (and d!1940902 d!1940892)))

(assert (=> bs!1535763 (= lambda!338103 lambda!338101)))

(declare-fun bs!1535764 () Bool)

(assert (= bs!1535764 (and d!1940902 d!1940532)))

(assert (=> bs!1535764 (= lambda!338103 lambda!338045)))

(declare-fun bs!1535765 () Bool)

(assert (= bs!1535765 (and d!1940902 d!1940864)))

(assert (=> bs!1535765 (= lambda!338103 lambda!338096)))

(declare-fun bs!1535767 () Bool)

(assert (= bs!1535767 (and d!1940902 d!1940528)))

(assert (=> bs!1535767 (= lambda!338103 lambda!338039)))

(declare-fun bs!1535768 () Bool)

(assert (= bs!1535768 (and d!1940902 d!1940494)))

(assert (=> bs!1535768 (= lambda!338103 lambda!338031)))

(declare-fun b!6191065 () Bool)

(declare-fun e!3770453 () Bool)

(declare-fun lt!2340885 () Regex!16129)

(assert (=> b!6191065 (= e!3770453 (isConcat!1064 lt!2340885))))

(declare-fun b!6191066 () Bool)

(declare-fun e!3770454 () Regex!16129)

(declare-fun e!3770450 () Regex!16129)

(assert (=> b!6191066 (= e!3770454 e!3770450)))

(declare-fun c!1117007 () Bool)

(assert (=> b!6191066 (= c!1117007 ((_ is Cons!64563) (t!378197 lt!2340694)))))

(declare-fun b!6191067 () Bool)

(declare-fun e!3770451 () Bool)

(assert (=> b!6191067 (= e!3770451 e!3770453)))

(declare-fun c!1117005 () Bool)

(assert (=> b!6191067 (= c!1117005 (isEmpty!36547 (tail!11855 (t!378197 lt!2340694))))))

(declare-fun b!6191068 () Bool)

(assert (=> b!6191068 (= e!3770451 (isEmptyExpr!1541 lt!2340885))))

(declare-fun b!6191069 () Bool)

(declare-fun e!3770452 () Bool)

(assert (=> b!6191069 (= e!3770452 e!3770451)))

(declare-fun c!1117004 () Bool)

(assert (=> b!6191069 (= c!1117004 (isEmpty!36547 (t!378197 lt!2340694)))))

(declare-fun b!6191070 () Bool)

(assert (=> b!6191070 (= e!3770453 (= lt!2340885 (head!12770 (t!378197 lt!2340694))))))

(assert (=> d!1940902 e!3770452))

(declare-fun res!2561213 () Bool)

(assert (=> d!1940902 (=> (not res!2561213) (not e!3770452))))

(assert (=> d!1940902 (= res!2561213 (validRegex!7865 lt!2340885))))

(assert (=> d!1940902 (= lt!2340885 e!3770454)))

(declare-fun c!1117006 () Bool)

(declare-fun e!3770449 () Bool)

(assert (=> d!1940902 (= c!1117006 e!3770449)))

(declare-fun res!2561214 () Bool)

(assert (=> d!1940902 (=> (not res!2561214) (not e!3770449))))

(assert (=> d!1940902 (= res!2561214 ((_ is Cons!64563) (t!378197 lt!2340694)))))

(assert (=> d!1940902 (forall!15245 (t!378197 lt!2340694) lambda!338103)))

(assert (=> d!1940902 (= (generalisedConcat!1726 (t!378197 lt!2340694)) lt!2340885)))

(declare-fun b!6191071 () Bool)

(assert (=> b!6191071 (= e!3770450 EmptyExpr!16129)))

(declare-fun b!6191072 () Bool)

(assert (=> b!6191072 (= e!3770449 (isEmpty!36547 (t!378197 (t!378197 lt!2340694))))))

(declare-fun b!6191073 () Bool)

(assert (=> b!6191073 (= e!3770450 (Concat!24974 (h!71011 (t!378197 lt!2340694)) (generalisedConcat!1726 (t!378197 (t!378197 lt!2340694)))))))

(declare-fun b!6191074 () Bool)

(assert (=> b!6191074 (= e!3770454 (h!71011 (t!378197 lt!2340694)))))

(assert (= (and d!1940902 res!2561214) b!6191072))

(assert (= (and d!1940902 c!1117006) b!6191074))

(assert (= (and d!1940902 (not c!1117006)) b!6191066))

(assert (= (and b!6191066 c!1117007) b!6191073))

(assert (= (and b!6191066 (not c!1117007)) b!6191071))

(assert (= (and d!1940902 res!2561213) b!6191069))

(assert (= (and b!6191069 c!1117004) b!6191068))

(assert (= (and b!6191069 (not c!1117004)) b!6191067))

(assert (= (and b!6191067 c!1117005) b!6191070))

(assert (= (and b!6191067 (not c!1117005)) b!6191065))

(declare-fun m!7025278 () Bool)

(assert (=> b!6191073 m!7025278))

(declare-fun m!7025280 () Bool)

(assert (=> b!6191070 m!7025280))

(declare-fun m!7025282 () Bool)

(assert (=> b!6191067 m!7025282))

(assert (=> b!6191067 m!7025282))

(declare-fun m!7025286 () Bool)

(assert (=> b!6191067 m!7025286))

(declare-fun m!7025288 () Bool)

(assert (=> b!6191072 m!7025288))

(declare-fun m!7025290 () Bool)

(assert (=> d!1940902 m!7025290))

(declare-fun m!7025292 () Bool)

(assert (=> d!1940902 m!7025292))

(declare-fun m!7025294 () Bool)

(assert (=> b!6191065 m!7025294))

(assert (=> b!6191069 m!7024440))

(declare-fun m!7025296 () Bool)

(assert (=> b!6191068 m!7025296))

(assert (=> b!6190213 d!1940902))

(declare-fun bs!1535769 () Bool)

(declare-fun d!1940908 () Bool)

(assert (= bs!1535769 (and d!1940908 d!1940716)))

(declare-fun lambda!338104 () Int)

(assert (=> bs!1535769 (= lambda!338104 lambda!338066)))

(declare-fun bs!1535770 () Bool)

(assert (= bs!1535770 (and d!1940908 d!1940794)))

(assert (=> bs!1535770 (= lambda!338104 lambda!338078)))

(declare-fun bs!1535771 () Bool)

(assert (= bs!1535771 (and d!1940908 d!1940874)))

(assert (=> bs!1535771 (= lambda!338104 lambda!338098)))

(declare-fun bs!1535772 () Bool)

(assert (= bs!1535772 (and d!1940908 d!1940848)))

(assert (=> bs!1535772 (= lambda!338104 lambda!338094)))

(declare-fun bs!1535773 () Bool)

(assert (= bs!1535773 (and d!1940908 d!1940734)))

(assert (=> bs!1535773 (= lambda!338104 lambda!338069)))

(declare-fun bs!1535774 () Bool)

(assert (= bs!1535774 (and d!1940908 d!1940890)))

(assert (=> bs!1535774 (= lambda!338104 lambda!338100)))

(declare-fun bs!1535775 () Bool)

(assert (= bs!1535775 (and d!1940908 d!1940866)))

(assert (=> bs!1535775 (= lambda!338104 lambda!338097)))

(assert (=> d!1940908 (= (nullableZipper!1905 lt!2340690) (exists!2466 lt!2340690 lambda!338104))))

(declare-fun bs!1535776 () Bool)

(assert (= bs!1535776 d!1940908))

(declare-fun m!7025300 () Bool)

(assert (=> bs!1535776 m!7025300))

(assert (=> b!6190430 d!1940908))

(declare-fun bs!1535777 () Bool)

(declare-fun b!6191080 () Bool)

(assert (= bs!1535777 (and b!6191080 d!1940588)))

(declare-fun lambda!338105 () Int)

(assert (=> bs!1535777 (not (= lambda!338105 lambda!338053))))

(declare-fun bs!1535778 () Bool)

(assert (= bs!1535778 (and b!6191080 b!6190228)))

(assert (=> bs!1535778 (= (and (= (reg!16458 (regTwo!32771 r!7292)) (reg!16458 lt!2340713)) (= (regTwo!32771 r!7292) lt!2340713)) (= lambda!338105 lambda!338032))))

(declare-fun bs!1535779 () Bool)

(assert (= bs!1535779 (and b!6191080 b!6190298)))

(assert (=> bs!1535779 (= (and (= (reg!16458 (regTwo!32771 r!7292)) (reg!16458 r!7292)) (= (regTwo!32771 r!7292) r!7292)) (= lambda!338105 lambda!338034))))

(declare-fun bs!1535780 () Bool)

(assert (= bs!1535780 (and b!6191080 b!6190848)))

(assert (=> bs!1535780 (not (= lambda!338105 lambda!338076))))

(declare-fun bs!1535781 () Bool)

(assert (= bs!1535781 (and b!6191080 b!6189558)))

(assert (=> bs!1535781 (not (= lambda!338105 lambda!337983))))

(declare-fun bs!1535782 () Bool)

(assert (= bs!1535782 (and b!6191080 b!6190621)))

(assert (=> bs!1535782 (not (= lambda!338105 lambda!338060))))

(declare-fun bs!1535783 () Bool)

(assert (= bs!1535783 (and b!6191080 b!6190139)))

(assert (=> bs!1535783 (not (= lambda!338105 lambda!338029))))

(declare-fun bs!1535784 () Bool)

(assert (= bs!1535784 (and b!6191080 d!1940830)))

(assert (=> bs!1535784 (not (= lambda!338105 lambda!338089))))

(declare-fun bs!1535785 () Bool)

(assert (= bs!1535785 (and b!6191080 b!6190296)))

(assert (=> bs!1535785 (not (= lambda!338105 lambda!338035))))

(declare-fun bs!1535786 () Bool)

(assert (= bs!1535786 (and b!6191080 d!1940586)))

(assert (=> bs!1535786 (not (= lambda!338105 lambda!338048))))

(declare-fun bs!1535787 () Bool)

(assert (= bs!1535787 (and b!6191080 b!6190912)))

(assert (=> bs!1535787 (= (and (= (reg!16458 (regTwo!32771 r!7292)) (reg!16458 (regTwo!32771 lt!2340713))) (= (regTwo!32771 r!7292) (regTwo!32771 lt!2340713))) (= lambda!338105 lambda!338091))))

(assert (=> bs!1535777 (not (= lambda!338105 lambda!338054))))

(declare-fun bs!1535788 () Bool)

(assert (= bs!1535788 (and b!6191080 b!6190850)))

(assert (=> bs!1535788 (= (and (= (reg!16458 (regTwo!32771 r!7292)) (reg!16458 (regOne!32771 r!7292))) (= (regTwo!32771 r!7292) (regOne!32771 r!7292))) (= lambda!338105 lambda!338075))))

(declare-fun bs!1535789 () Bool)

(assert (= bs!1535789 (and b!6191080 b!6190623)))

(assert (=> bs!1535789 (= (and (= (reg!16458 (regTwo!32771 r!7292)) (reg!16458 (regOne!32771 lt!2340713))) (= (regTwo!32771 r!7292) (regOne!32771 lt!2340713))) (= lambda!338105 lambda!338059))))

(declare-fun bs!1535790 () Bool)

(assert (= bs!1535790 (and b!6191080 b!6190141)))

(assert (=> bs!1535790 (= (and (= (reg!16458 (regTwo!32771 r!7292)) (reg!16458 lt!2340702)) (= (regTwo!32771 r!7292) lt!2340702)) (= lambda!338105 lambda!338028))))

(declare-fun bs!1535791 () Bool)

(assert (= bs!1535791 (and b!6191080 b!6190910)))

(assert (=> bs!1535791 (not (= lambda!338105 lambda!338092))))

(declare-fun bs!1535792 () Bool)

(assert (= bs!1535792 (and b!6191080 b!6190226)))

(assert (=> bs!1535792 (not (= lambda!338105 lambda!338033))))

(assert (=> bs!1535784 (not (= lambda!338105 lambda!338087))))

(assert (=> bs!1535781 (not (= lambda!338105 lambda!337984))))

(assert (=> b!6191080 true))

(assert (=> b!6191080 true))

(declare-fun bs!1535793 () Bool)

(declare-fun b!6191078 () Bool)

(assert (= bs!1535793 (and b!6191078 d!1940588)))

(declare-fun lambda!338106 () Int)

(assert (=> bs!1535793 (not (= lambda!338106 lambda!338053))))

(declare-fun bs!1535794 () Bool)

(assert (= bs!1535794 (and b!6191078 b!6190228)))

(assert (=> bs!1535794 (not (= lambda!338106 lambda!338032))))

(declare-fun bs!1535795 () Bool)

(assert (= bs!1535795 (and b!6191078 b!6190298)))

(assert (=> bs!1535795 (not (= lambda!338106 lambda!338034))))

(declare-fun bs!1535796 () Bool)

(assert (= bs!1535796 (and b!6191078 b!6190848)))

(assert (=> bs!1535796 (= (and (= (regOne!32770 (regTwo!32771 r!7292)) (regOne!32770 (regOne!32771 r!7292))) (= (regTwo!32770 (regTwo!32771 r!7292)) (regTwo!32770 (regOne!32771 r!7292)))) (= lambda!338106 lambda!338076))))

(declare-fun bs!1535797 () Bool)

(assert (= bs!1535797 (and b!6191078 b!6189558)))

(assert (=> bs!1535797 (not (= lambda!338106 lambda!337983))))

(declare-fun bs!1535798 () Bool)

(assert (= bs!1535798 (and b!6191078 b!6190621)))

(assert (=> bs!1535798 (= (and (= (regOne!32770 (regTwo!32771 r!7292)) (regOne!32770 (regOne!32771 lt!2340713))) (= (regTwo!32770 (regTwo!32771 r!7292)) (regTwo!32770 (regOne!32771 lt!2340713)))) (= lambda!338106 lambda!338060))))

(declare-fun bs!1535799 () Bool)

(assert (= bs!1535799 (and b!6191078 b!6190139)))

(assert (=> bs!1535799 (= (and (= (regOne!32770 (regTwo!32771 r!7292)) (regOne!32770 lt!2340702)) (= (regTwo!32770 (regTwo!32771 r!7292)) (regTwo!32770 lt!2340702))) (= lambda!338106 lambda!338029))))

(declare-fun bs!1535800 () Bool)

(assert (= bs!1535800 (and b!6191078 d!1940830)))

(assert (=> bs!1535800 (= (and (= (regOne!32770 (regTwo!32771 r!7292)) (regOne!32770 r!7292)) (= (regTwo!32770 (regTwo!32771 r!7292)) (regTwo!32770 r!7292))) (= lambda!338106 lambda!338089))))

(declare-fun bs!1535801 () Bool)

(assert (= bs!1535801 (and b!6191078 b!6190296)))

(assert (=> bs!1535801 (= (and (= (regOne!32770 (regTwo!32771 r!7292)) (regOne!32770 r!7292)) (= (regTwo!32770 (regTwo!32771 r!7292)) (regTwo!32770 r!7292))) (= lambda!338106 lambda!338035))))

(declare-fun bs!1535802 () Bool)

(assert (= bs!1535802 (and b!6191078 d!1940586)))

(assert (=> bs!1535802 (not (= lambda!338106 lambda!338048))))

(declare-fun bs!1535803 () Bool)

(assert (= bs!1535803 (and b!6191078 b!6191080)))

(assert (=> bs!1535803 (not (= lambda!338106 lambda!338105))))

(declare-fun bs!1535804 () Bool)

(assert (= bs!1535804 (and b!6191078 b!6190912)))

(assert (=> bs!1535804 (not (= lambda!338106 lambda!338091))))

(assert (=> bs!1535793 (= (and (= (regOne!32770 (regTwo!32771 r!7292)) (regOne!32770 r!7292)) (= (regTwo!32770 (regTwo!32771 r!7292)) (regTwo!32770 r!7292))) (= lambda!338106 lambda!338054))))

(declare-fun bs!1535805 () Bool)

(assert (= bs!1535805 (and b!6191078 b!6190850)))

(assert (=> bs!1535805 (not (= lambda!338106 lambda!338075))))

(declare-fun bs!1535806 () Bool)

(assert (= bs!1535806 (and b!6191078 b!6190623)))

(assert (=> bs!1535806 (not (= lambda!338106 lambda!338059))))

(declare-fun bs!1535807 () Bool)

(assert (= bs!1535807 (and b!6191078 b!6190141)))

(assert (=> bs!1535807 (not (= lambda!338106 lambda!338028))))

(declare-fun bs!1535808 () Bool)

(assert (= bs!1535808 (and b!6191078 b!6190910)))

(assert (=> bs!1535808 (= (and (= (regOne!32770 (regTwo!32771 r!7292)) (regOne!32770 (regTwo!32771 lt!2340713))) (= (regTwo!32770 (regTwo!32771 r!7292)) (regTwo!32770 (regTwo!32771 lt!2340713)))) (= lambda!338106 lambda!338092))))

(declare-fun bs!1535809 () Bool)

(assert (= bs!1535809 (and b!6191078 b!6190226)))

(assert (=> bs!1535809 (= (and (= (regOne!32770 (regTwo!32771 r!7292)) (regOne!32770 lt!2340713)) (= (regTwo!32770 (regTwo!32771 r!7292)) (regTwo!32770 lt!2340713))) (= lambda!338106 lambda!338033))))

(assert (=> bs!1535800 (not (= lambda!338106 lambda!338087))))

(assert (=> bs!1535797 (= (and (= (regOne!32770 (regTwo!32771 r!7292)) (regOne!32770 r!7292)) (= (regTwo!32770 (regTwo!32771 r!7292)) (regTwo!32770 r!7292))) (= lambda!338106 lambda!337984))))

(assert (=> b!6191078 true))

(assert (=> b!6191078 true))

(declare-fun b!6191077 () Bool)

(declare-fun e!3770461 () Bool)

(assert (=> b!6191077 (= e!3770461 (= s!2326 (Cons!64562 (c!1116552 (regTwo!32771 r!7292)) Nil!64562)))))

(declare-fun e!3770459 () Bool)

(declare-fun call!517675 () Bool)

(assert (=> b!6191078 (= e!3770459 call!517675)))

(declare-fun b!6191079 () Bool)

(declare-fun c!1117010 () Bool)

(assert (=> b!6191079 (= c!1117010 ((_ is ElementMatch!16129) (regTwo!32771 r!7292)))))

(declare-fun e!3770460 () Bool)

(assert (=> b!6191079 (= e!3770460 e!3770461)))

(declare-fun e!3770458 () Bool)

(assert (=> b!6191080 (= e!3770458 call!517675)))

(declare-fun b!6191081 () Bool)

(declare-fun e!3770457 () Bool)

(declare-fun call!517674 () Bool)

(assert (=> b!6191081 (= e!3770457 call!517674)))

(declare-fun bm!517669 () Bool)

(assert (=> bm!517669 (= call!517674 (isEmpty!36550 s!2326))))

(declare-fun b!6191082 () Bool)

(assert (=> b!6191082 (= e!3770457 e!3770460)))

(declare-fun res!2561217 () Bool)

(assert (=> b!6191082 (= res!2561217 (not ((_ is EmptyLang!16129) (regTwo!32771 r!7292))))))

(assert (=> b!6191082 (=> (not res!2561217) (not e!3770460))))

(declare-fun b!6191083 () Bool)

(declare-fun e!3770462 () Bool)

(assert (=> b!6191083 (= e!3770462 e!3770459)))

(declare-fun c!1117011 () Bool)

(assert (=> b!6191083 (= c!1117011 ((_ is Star!16129) (regTwo!32771 r!7292)))))

(declare-fun b!6191084 () Bool)

(declare-fun e!3770456 () Bool)

(assert (=> b!6191084 (= e!3770462 e!3770456)))

(declare-fun res!2561215 () Bool)

(assert (=> b!6191084 (= res!2561215 (matchRSpec!3230 (regOne!32771 (regTwo!32771 r!7292)) s!2326))))

(assert (=> b!6191084 (=> res!2561215 e!3770456)))

(declare-fun b!6191085 () Bool)

(declare-fun res!2561216 () Bool)

(assert (=> b!6191085 (=> res!2561216 e!3770458)))

(assert (=> b!6191085 (= res!2561216 call!517674)))

(assert (=> b!6191085 (= e!3770459 e!3770458)))

(declare-fun b!6191086 () Bool)

(declare-fun c!1117009 () Bool)

(assert (=> b!6191086 (= c!1117009 ((_ is Union!16129) (regTwo!32771 r!7292)))))

(assert (=> b!6191086 (= e!3770461 e!3770462)))

(declare-fun b!6191087 () Bool)

(assert (=> b!6191087 (= e!3770456 (matchRSpec!3230 (regTwo!32771 (regTwo!32771 r!7292)) s!2326))))

(declare-fun bm!517670 () Bool)

(assert (=> bm!517670 (= call!517675 (Exists!3199 (ite c!1117011 lambda!338105 lambda!338106)))))

(declare-fun d!1940912 () Bool)

(declare-fun c!1117012 () Bool)

(assert (=> d!1940912 (= c!1117012 ((_ is EmptyExpr!16129) (regTwo!32771 r!7292)))))

(assert (=> d!1940912 (= (matchRSpec!3230 (regTwo!32771 r!7292) s!2326) e!3770457)))

(assert (= (and d!1940912 c!1117012) b!6191081))

(assert (= (and d!1940912 (not c!1117012)) b!6191082))

(assert (= (and b!6191082 res!2561217) b!6191079))

(assert (= (and b!6191079 c!1117010) b!6191077))

(assert (= (and b!6191079 (not c!1117010)) b!6191086))

(assert (= (and b!6191086 c!1117009) b!6191084))

(assert (= (and b!6191086 (not c!1117009)) b!6191083))

(assert (= (and b!6191084 (not res!2561215)) b!6191087))

(assert (= (and b!6191083 c!1117011) b!6191085))

(assert (= (and b!6191083 (not c!1117011)) b!6191078))

(assert (= (and b!6191085 (not res!2561216)) b!6191080))

(assert (= (or b!6191080 b!6191078) bm!517670))

(assert (= (or b!6191081 b!6191085) bm!517669))

(assert (=> bm!517669 m!7024388))

(declare-fun m!7025302 () Bool)

(assert (=> b!6191084 m!7025302))

(declare-fun m!7025304 () Bool)

(assert (=> b!6191087 m!7025304))

(declare-fun m!7025306 () Bool)

(assert (=> bm!517670 m!7025306))

(assert (=> b!6190305 d!1940912))

(declare-fun d!1940918 () Bool)

(assert (=> d!1940918 true))

(assert (=> d!1940918 true))

(declare-fun res!2561225 () Bool)

(assert (=> d!1940918 (= (choose!45995 lambda!337984) res!2561225)))

(assert (=> d!1940582 d!1940918))

(declare-fun d!1940924 () Bool)

(assert (=> d!1940924 (= (isEmpty!36547 (tail!11855 (t!378197 (exprs!6013 (h!71012 zl!343))))) ((_ is Nil!64563) (tail!11855 (t!378197 (exprs!6013 (h!71012 zl!343))))))))

(assert (=> b!6190500 d!1940924))

(declare-fun d!1940926 () Bool)

(assert (=> d!1940926 (= (tail!11855 (t!378197 (exprs!6013 (h!71012 zl!343)))) (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343)))))))

(assert (=> b!6190500 d!1940926))

(assert (=> d!1940482 d!1940480))

(assert (=> d!1940482 d!1940478))

(declare-fun d!1940928 () Bool)

(assert (=> d!1940928 (= (matchR!8312 lt!2340702 s!2326) (matchRSpec!3230 lt!2340702 s!2326))))

(assert (=> d!1940928 true))

(declare-fun _$88!4769 () Unit!157811)

(assert (=> d!1940928 (= (choose!45989 lt!2340702 s!2326) _$88!4769)))

(declare-fun bs!1535816 () Bool)

(assert (= bs!1535816 d!1940928))

(assert (=> bs!1535816 m!7023956))

(assert (=> bs!1535816 m!7023948))

(assert (=> d!1940482 d!1940928))

(declare-fun bm!517671 () Bool)

(declare-fun call!517678 () Bool)

(declare-fun c!1117018 () Bool)

(assert (=> bm!517671 (= call!517678 (validRegex!7865 (ite c!1117018 (regOne!32771 lt!2340702) (regOne!32770 lt!2340702))))))

(declare-fun b!6191101 () Bool)

(declare-fun e!3770473 () Bool)

(declare-fun call!517677 () Bool)

(assert (=> b!6191101 (= e!3770473 call!517677)))

(declare-fun d!1940930 () Bool)

(declare-fun res!2561228 () Bool)

(declare-fun e!3770475 () Bool)

(assert (=> d!1940930 (=> res!2561228 e!3770475)))

(assert (=> d!1940930 (= res!2561228 ((_ is ElementMatch!16129) lt!2340702))))

(assert (=> d!1940930 (= (validRegex!7865 lt!2340702) e!3770475)))

(declare-fun bm!517672 () Bool)

(declare-fun call!517676 () Bool)

(assert (=> bm!517672 (= call!517676 call!517677)))

(declare-fun c!1117017 () Bool)

(declare-fun bm!517673 () Bool)

(assert (=> bm!517673 (= call!517677 (validRegex!7865 (ite c!1117017 (reg!16458 lt!2340702) (ite c!1117018 (regTwo!32771 lt!2340702) (regTwo!32770 lt!2340702)))))))

(declare-fun b!6191102 () Bool)

(declare-fun e!3770478 () Bool)

(assert (=> b!6191102 (= e!3770478 call!517676)))

(declare-fun b!6191103 () Bool)

(declare-fun e!3770472 () Bool)

(assert (=> b!6191103 (= e!3770472 e!3770473)))

(declare-fun res!2561227 () Bool)

(assert (=> b!6191103 (= res!2561227 (not (nullable!6122 (reg!16458 lt!2340702))))))

(assert (=> b!6191103 (=> (not res!2561227) (not e!3770473))))

(declare-fun b!6191104 () Bool)

(declare-fun e!3770474 () Bool)

(assert (=> b!6191104 (= e!3770474 call!517676)))

(declare-fun b!6191105 () Bool)

(assert (=> b!6191105 (= e!3770475 e!3770472)))

(assert (=> b!6191105 (= c!1117017 ((_ is Star!16129) lt!2340702))))

(declare-fun b!6191106 () Bool)

(declare-fun res!2561226 () Bool)

(declare-fun e!3770477 () Bool)

(assert (=> b!6191106 (=> res!2561226 e!3770477)))

(assert (=> b!6191106 (= res!2561226 (not ((_ is Concat!24974) lt!2340702)))))

(declare-fun e!3770476 () Bool)

(assert (=> b!6191106 (= e!3770476 e!3770477)))

(declare-fun b!6191107 () Bool)

(assert (=> b!6191107 (= e!3770477 e!3770478)))

(declare-fun res!2561230 () Bool)

(assert (=> b!6191107 (=> (not res!2561230) (not e!3770478))))

(assert (=> b!6191107 (= res!2561230 call!517678)))

(declare-fun b!6191108 () Bool)

(assert (=> b!6191108 (= e!3770472 e!3770476)))

(assert (=> b!6191108 (= c!1117018 ((_ is Union!16129) lt!2340702))))

(declare-fun b!6191109 () Bool)

(declare-fun res!2561229 () Bool)

(assert (=> b!6191109 (=> (not res!2561229) (not e!3770474))))

(assert (=> b!6191109 (= res!2561229 call!517678)))

(assert (=> b!6191109 (= e!3770476 e!3770474)))

(assert (= (and d!1940930 (not res!2561228)) b!6191105))

(assert (= (and b!6191105 c!1117017) b!6191103))

(assert (= (and b!6191105 (not c!1117017)) b!6191108))

(assert (= (and b!6191103 res!2561227) b!6191101))

(assert (= (and b!6191108 c!1117018) b!6191109))

(assert (= (and b!6191108 (not c!1117018)) b!6191106))

(assert (= (and b!6191109 res!2561229) b!6191104))

(assert (= (and b!6191106 (not res!2561226)) b!6191107))

(assert (= (and b!6191107 res!2561230) b!6191102))

(assert (= (or b!6191104 b!6191102) bm!517672))

(assert (= (or b!6191109 b!6191107) bm!517671))

(assert (= (or b!6191101 bm!517672) bm!517673))

(declare-fun m!7025312 () Bool)

(assert (=> bm!517671 m!7025312))

(declare-fun m!7025314 () Bool)

(assert (=> bm!517673 m!7025314))

(declare-fun m!7025316 () Bool)

(assert (=> b!6191103 m!7025316))

(assert (=> d!1940482 d!1940930))

(declare-fun d!1940932 () Bool)

(assert (=> d!1940932 (= (head!12770 (exprs!6013 (h!71012 zl!343))) (h!71011 (exprs!6013 (h!71012 zl!343))))))

(assert (=> b!6190095 d!1940932))

(assert (=> d!1940580 d!1940868))

(declare-fun b!6191110 () Bool)

(declare-fun e!3770479 () Bool)

(declare-fun e!3770483 () Bool)

(assert (=> b!6191110 (= e!3770479 e!3770483)))

(declare-fun c!1117019 () Bool)

(assert (=> b!6191110 (= c!1117019 ((_ is EmptyLang!16129) (regOne!32770 r!7292)))))

(declare-fun b!6191111 () Bool)

(declare-fun e!3770481 () Bool)

(declare-fun e!3770482 () Bool)

(assert (=> b!6191111 (= e!3770481 e!3770482)))

(declare-fun res!2561236 () Bool)

(assert (=> b!6191111 (=> (not res!2561236) (not e!3770482))))

(declare-fun lt!2340887 () Bool)

(assert (=> b!6191111 (= res!2561236 (not lt!2340887))))

(declare-fun b!6191112 () Bool)

(declare-fun res!2561231 () Bool)

(assert (=> b!6191112 (=> res!2561231 e!3770481)))

(assert (=> b!6191112 (= res!2561231 (not ((_ is ElementMatch!16129) (regOne!32770 r!7292))))))

(assert (=> b!6191112 (= e!3770483 e!3770481)))

(declare-fun d!1940934 () Bool)

(assert (=> d!1940934 e!3770479))

(declare-fun c!1117021 () Bool)

(assert (=> d!1940934 (= c!1117021 ((_ is EmptyExpr!16129) (regOne!32770 r!7292)))))

(declare-fun e!3770480 () Bool)

(assert (=> d!1940934 (= lt!2340887 e!3770480)))

(declare-fun c!1117020 () Bool)

(assert (=> d!1940934 (= c!1117020 (isEmpty!36550 Nil!64562))))

(assert (=> d!1940934 (validRegex!7865 (regOne!32770 r!7292))))

(assert (=> d!1940934 (= (matchR!8312 (regOne!32770 r!7292) Nil!64562) lt!2340887)))

(declare-fun b!6191113 () Bool)

(assert (=> b!6191113 (= e!3770480 (nullable!6122 (regOne!32770 r!7292)))))

(declare-fun b!6191114 () Bool)

(declare-fun e!3770485 () Bool)

(assert (=> b!6191114 (= e!3770485 (= (head!12771 Nil!64562) (c!1116552 (regOne!32770 r!7292))))))

(declare-fun b!6191115 () Bool)

(declare-fun res!2561234 () Bool)

(assert (=> b!6191115 (=> (not res!2561234) (not e!3770485))))

(declare-fun call!517679 () Bool)

(assert (=> b!6191115 (= res!2561234 (not call!517679))))

(declare-fun b!6191116 () Bool)

(declare-fun res!2561232 () Bool)

(assert (=> b!6191116 (=> (not res!2561232) (not e!3770485))))

(assert (=> b!6191116 (= res!2561232 (isEmpty!36550 (tail!11856 Nil!64562)))))

(declare-fun b!6191117 () Bool)

(assert (=> b!6191117 (= e!3770479 (= lt!2340887 call!517679))))

(declare-fun b!6191118 () Bool)

(assert (=> b!6191118 (= e!3770480 (matchR!8312 (derivativeStep!4844 (regOne!32770 r!7292) (head!12771 Nil!64562)) (tail!11856 Nil!64562)))))

(declare-fun bm!517674 () Bool)

(assert (=> bm!517674 (= call!517679 (isEmpty!36550 Nil!64562))))

(declare-fun b!6191119 () Bool)

(declare-fun e!3770484 () Bool)

(assert (=> b!6191119 (= e!3770482 e!3770484)))

(declare-fun res!2561238 () Bool)

(assert (=> b!6191119 (=> res!2561238 e!3770484)))

(assert (=> b!6191119 (= res!2561238 call!517679)))

(declare-fun b!6191120 () Bool)

(declare-fun res!2561233 () Bool)

(assert (=> b!6191120 (=> res!2561233 e!3770481)))

(assert (=> b!6191120 (= res!2561233 e!3770485)))

(declare-fun res!2561237 () Bool)

(assert (=> b!6191120 (=> (not res!2561237) (not e!3770485))))

(assert (=> b!6191120 (= res!2561237 lt!2340887)))

(declare-fun b!6191121 () Bool)

(assert (=> b!6191121 (= e!3770484 (not (= (head!12771 Nil!64562) (c!1116552 (regOne!32770 r!7292)))))))

(declare-fun b!6191122 () Bool)

(declare-fun res!2561235 () Bool)

(assert (=> b!6191122 (=> res!2561235 e!3770484)))

(assert (=> b!6191122 (= res!2561235 (not (isEmpty!36550 (tail!11856 Nil!64562))))))

(declare-fun b!6191123 () Bool)

(assert (=> b!6191123 (= e!3770483 (not lt!2340887))))

(assert (= (and d!1940934 c!1117020) b!6191113))

(assert (= (and d!1940934 (not c!1117020)) b!6191118))

(assert (= (and d!1940934 c!1117021) b!6191117))

(assert (= (and d!1940934 (not c!1117021)) b!6191110))

(assert (= (and b!6191110 c!1117019) b!6191123))

(assert (= (and b!6191110 (not c!1117019)) b!6191112))

(assert (= (and b!6191112 (not res!2561231)) b!6191120))

(assert (= (and b!6191120 res!2561237) b!6191115))

(assert (= (and b!6191115 res!2561234) b!6191116))

(assert (= (and b!6191116 res!2561232) b!6191114))

(assert (= (and b!6191120 (not res!2561233)) b!6191111))

(assert (= (and b!6191111 res!2561236) b!6191119))

(assert (= (and b!6191119 (not res!2561238)) b!6191122))

(assert (= (and b!6191122 (not res!2561235)) b!6191121))

(assert (= (or b!6191117 b!6191115 b!6191119) bm!517674))

(declare-fun m!7025320 () Bool)

(assert (=> bm!517674 m!7025320))

(declare-fun m!7025324 () Bool)

(assert (=> b!6191116 m!7025324))

(assert (=> b!6191116 m!7025324))

(declare-fun m!7025328 () Bool)

(assert (=> b!6191116 m!7025328))

(assert (=> b!6191122 m!7025324))

(assert (=> b!6191122 m!7025324))

(assert (=> b!6191122 m!7025328))

(declare-fun m!7025334 () Bool)

(assert (=> b!6191118 m!7025334))

(assert (=> b!6191118 m!7025334))

(declare-fun m!7025336 () Bool)

(assert (=> b!6191118 m!7025336))

(assert (=> b!6191118 m!7025324))

(assert (=> b!6191118 m!7025336))

(assert (=> b!6191118 m!7025324))

(declare-fun m!7025342 () Bool)

(assert (=> b!6191118 m!7025342))

(assert (=> b!6191114 m!7025334))

(assert (=> d!1940934 m!7025320))

(assert (=> d!1940934 m!7024700))

(assert (=> b!6191121 m!7025334))

(declare-fun m!7025346 () Bool)

(assert (=> b!6191113 m!7025346))

(assert (=> d!1940580 d!1940934))

(assert (=> d!1940580 d!1940840))

(assert (=> b!6190317 d!1940626))

(assert (=> d!1940586 d!1940580))

(declare-fun d!1940936 () Bool)

(assert (=> d!1940936 (= (Exists!3199 lambda!338048) (choose!45995 lambda!338048))))

(declare-fun bs!1535821 () Bool)

(assert (= bs!1535821 d!1940936))

(declare-fun m!7025350 () Bool)

(assert (=> bs!1535821 m!7025350))

(assert (=> d!1940586 d!1940936))

(assert (=> d!1940586 d!1940840))

(assert (=> d!1940586 d!1940590))

(declare-fun bs!1535823 () Bool)

(declare-fun d!1940940 () Bool)

(assert (= bs!1535823 (and d!1940940 d!1940588)))

(declare-fun lambda!338110 () Int)

(assert (=> bs!1535823 (= lambda!338110 lambda!338053)))

(declare-fun bs!1535824 () Bool)

(assert (= bs!1535824 (and d!1940940 b!6190298)))

(assert (=> bs!1535824 (not (= lambda!338110 lambda!338034))))

(declare-fun bs!1535825 () Bool)

(assert (= bs!1535825 (and d!1940940 b!6190848)))

(assert (=> bs!1535825 (not (= lambda!338110 lambda!338076))))

(declare-fun bs!1535826 () Bool)

(assert (= bs!1535826 (and d!1940940 b!6189558)))

(assert (=> bs!1535826 (= lambda!338110 lambda!337983)))

(declare-fun bs!1535828 () Bool)

(assert (= bs!1535828 (and d!1940940 b!6190621)))

(assert (=> bs!1535828 (not (= lambda!338110 lambda!338060))))

(declare-fun bs!1535830 () Bool)

(assert (= bs!1535830 (and d!1940940 b!6190139)))

(assert (=> bs!1535830 (not (= lambda!338110 lambda!338029))))

(declare-fun bs!1535831 () Bool)

(assert (= bs!1535831 (and d!1940940 d!1940830)))

(assert (=> bs!1535831 (not (= lambda!338110 lambda!338089))))

(declare-fun bs!1535832 () Bool)

(assert (= bs!1535832 (and d!1940940 b!6190296)))

(assert (=> bs!1535832 (not (= lambda!338110 lambda!338035))))

(declare-fun bs!1535833 () Bool)

(assert (= bs!1535833 (and d!1940940 d!1940586)))

(assert (=> bs!1535833 (= lambda!338110 lambda!338048)))

(declare-fun bs!1535834 () Bool)

(assert (= bs!1535834 (and d!1940940 b!6191080)))

(assert (=> bs!1535834 (not (= lambda!338110 lambda!338105))))

(declare-fun bs!1535835 () Bool)

(assert (= bs!1535835 (and d!1940940 b!6190228)))

(assert (=> bs!1535835 (not (= lambda!338110 lambda!338032))))

(declare-fun bs!1535836 () Bool)

(assert (= bs!1535836 (and d!1940940 b!6191078)))

(assert (=> bs!1535836 (not (= lambda!338110 lambda!338106))))

(declare-fun bs!1535837 () Bool)

(assert (= bs!1535837 (and d!1940940 b!6190912)))

(assert (=> bs!1535837 (not (= lambda!338110 lambda!338091))))

(assert (=> bs!1535823 (not (= lambda!338110 lambda!338054))))

(declare-fun bs!1535838 () Bool)

(assert (= bs!1535838 (and d!1940940 b!6190850)))

(assert (=> bs!1535838 (not (= lambda!338110 lambda!338075))))

(declare-fun bs!1535839 () Bool)

(assert (= bs!1535839 (and d!1940940 b!6190623)))

(assert (=> bs!1535839 (not (= lambda!338110 lambda!338059))))

(declare-fun bs!1535840 () Bool)

(assert (= bs!1535840 (and d!1940940 b!6190141)))

(assert (=> bs!1535840 (not (= lambda!338110 lambda!338028))))

(declare-fun bs!1535841 () Bool)

(assert (= bs!1535841 (and d!1940940 b!6190910)))

(assert (=> bs!1535841 (not (= lambda!338110 lambda!338092))))

(declare-fun bs!1535842 () Bool)

(assert (= bs!1535842 (and d!1940940 b!6190226)))

(assert (=> bs!1535842 (not (= lambda!338110 lambda!338033))))

(assert (=> bs!1535831 (= lambda!338110 lambda!338087)))

(assert (=> bs!1535826 (not (= lambda!338110 lambda!337984))))

(assert (=> d!1940940 true))

(assert (=> d!1940940 true))

(assert (=> d!1940940 true))

(assert (=> d!1940940 (= (isDefined!12723 (findConcatSeparation!2434 (regOne!32770 r!7292) (regTwo!32770 r!7292) Nil!64562 s!2326 s!2326)) (Exists!3199 lambda!338110))))

(assert (=> d!1940940 true))

(declare-fun _$89!2329 () Unit!157811)

(assert (=> d!1940940 (= (choose!45996 (regOne!32770 r!7292) (regTwo!32770 r!7292) s!2326) _$89!2329)))

(declare-fun bs!1535843 () Bool)

(assert (= bs!1535843 d!1940940))

(assert (=> bs!1535843 m!7023850))

(assert (=> bs!1535843 m!7023850))

(assert (=> bs!1535843 m!7023852))

(declare-fun m!7025384 () Bool)

(assert (=> bs!1535843 m!7025384))

(assert (=> d!1940586 d!1940940))

(assert (=> d!1940488 d!1940490))

(assert (=> d!1940488 d!1940496))

(declare-fun d!1940958 () Bool)

(assert (=> d!1940958 (= (matchR!8312 lt!2340713 s!2326) (matchRSpec!3230 lt!2340713 s!2326))))

(assert (=> d!1940958 true))

(declare-fun _$88!4770 () Unit!157811)

(assert (=> d!1940958 (= (choose!45989 lt!2340713 s!2326) _$88!4770)))

(declare-fun bs!1535844 () Bool)

(assert (= bs!1535844 d!1940958))

(assert (=> bs!1535844 m!7023954))

(assert (=> bs!1535844 m!7023952))

(assert (=> d!1940488 d!1940958))

(assert (=> d!1940488 d!1940616))

(declare-fun d!1940960 () Bool)

(declare-fun res!2561265 () Bool)

(declare-fun e!3770513 () Bool)

(assert (=> d!1940960 (=> res!2561265 e!3770513)))

(assert (=> d!1940960 (= res!2561265 ((_ is Nil!64564) lt!2340816))))

(assert (=> d!1940960 (= (noDuplicate!1969 lt!2340816) e!3770513)))

(declare-fun b!6191168 () Bool)

(declare-fun e!3770514 () Bool)

(assert (=> b!6191168 (= e!3770513 e!3770514)))

(declare-fun res!2561266 () Bool)

(assert (=> b!6191168 (=> (not res!2561266) (not e!3770514))))

(declare-fun contains!20076 (List!64688 Context!11026) Bool)

(assert (=> b!6191168 (= res!2561266 (not (contains!20076 (t!378198 lt!2340816) (h!71012 lt!2340816))))))

(declare-fun b!6191169 () Bool)

(assert (=> b!6191169 (= e!3770514 (noDuplicate!1969 (t!378198 lt!2340816)))))

(assert (= (and d!1940960 (not res!2561265)) b!6191168))

(assert (= (and b!6191168 res!2561266) b!6191169))

(declare-fun m!7025386 () Bool)

(assert (=> b!6191168 m!7025386))

(declare-fun m!7025388 () Bool)

(assert (=> b!6191169 m!7025388))

(assert (=> d!1940506 d!1940960))

(declare-fun d!1940962 () Bool)

(declare-fun e!3770523 () Bool)

(assert (=> d!1940962 e!3770523))

(declare-fun res!2561276 () Bool)

(assert (=> d!1940962 (=> (not res!2561276) (not e!3770523))))

(declare-fun res!2561275 () List!64688)

(assert (=> d!1940962 (= res!2561276 (noDuplicate!1969 res!2561275))))

(declare-fun e!3770525 () Bool)

(assert (=> d!1940962 e!3770525))

(assert (=> d!1940962 (= (choose!45992 z!1189) res!2561275)))

(declare-fun b!6191181 () Bool)

(declare-fun e!3770524 () Bool)

(declare-fun tp!1727517 () Bool)

(assert (=> b!6191181 (= e!3770524 tp!1727517)))

(declare-fun tp!1727518 () Bool)

(declare-fun b!6191180 () Bool)

(assert (=> b!6191180 (= e!3770525 (and (inv!83569 (h!71012 res!2561275)) e!3770524 tp!1727518))))

(declare-fun b!6191182 () Bool)

(assert (=> b!6191182 (= e!3770523 (= (content!12060 res!2561275) z!1189))))

(assert (= b!6191180 b!6191181))

(assert (= (and d!1940962 ((_ is Cons!64564) res!2561275)) b!6191180))

(assert (= (and d!1940962 res!2561276) b!6191182))

(declare-fun m!7025390 () Bool)

(assert (=> d!1940962 m!7025390))

(declare-fun m!7025392 () Bool)

(assert (=> b!6191180 m!7025392))

(declare-fun m!7025394 () Bool)

(assert (=> b!6191182 m!7025394))

(assert (=> d!1940506 d!1940962))

(declare-fun b!6191183 () Bool)

(declare-fun e!3770526 () Bool)

(declare-fun e!3770530 () Bool)

(assert (=> b!6191183 (= e!3770526 e!3770530)))

(declare-fun c!1117031 () Bool)

(assert (=> b!6191183 (= c!1117031 ((_ is EmptyLang!16129) (regTwo!32770 r!7292)))))

(declare-fun b!6191184 () Bool)

(declare-fun e!3770528 () Bool)

(declare-fun e!3770529 () Bool)

(assert (=> b!6191184 (= e!3770528 e!3770529)))

(declare-fun res!2561282 () Bool)

(assert (=> b!6191184 (=> (not res!2561282) (not e!3770529))))

(declare-fun lt!2340889 () Bool)

(assert (=> b!6191184 (= res!2561282 (not lt!2340889))))

(declare-fun b!6191185 () Bool)

(declare-fun res!2561277 () Bool)

(assert (=> b!6191185 (=> res!2561277 e!3770528)))

(assert (=> b!6191185 (= res!2561277 (not ((_ is ElementMatch!16129) (regTwo!32770 r!7292))))))

(assert (=> b!6191185 (= e!3770530 e!3770528)))

(declare-fun d!1940964 () Bool)

(assert (=> d!1940964 e!3770526))

(declare-fun c!1117033 () Bool)

(assert (=> d!1940964 (= c!1117033 ((_ is EmptyExpr!16129) (regTwo!32770 r!7292)))))

(declare-fun e!3770527 () Bool)

(assert (=> d!1940964 (= lt!2340889 e!3770527)))

(declare-fun c!1117032 () Bool)

(assert (=> d!1940964 (= c!1117032 (isEmpty!36550 s!2326))))

(assert (=> d!1940964 (validRegex!7865 (regTwo!32770 r!7292))))

(assert (=> d!1940964 (= (matchR!8312 (regTwo!32770 r!7292) s!2326) lt!2340889)))

(declare-fun b!6191186 () Bool)

(assert (=> b!6191186 (= e!3770527 (nullable!6122 (regTwo!32770 r!7292)))))

(declare-fun b!6191187 () Bool)

(declare-fun e!3770532 () Bool)

(assert (=> b!6191187 (= e!3770532 (= (head!12771 s!2326) (c!1116552 (regTwo!32770 r!7292))))))

(declare-fun b!6191188 () Bool)

(declare-fun res!2561280 () Bool)

(assert (=> b!6191188 (=> (not res!2561280) (not e!3770532))))

(declare-fun call!517689 () Bool)

(assert (=> b!6191188 (= res!2561280 (not call!517689))))

(declare-fun b!6191189 () Bool)

(declare-fun res!2561278 () Bool)

(assert (=> b!6191189 (=> (not res!2561278) (not e!3770532))))

(assert (=> b!6191189 (= res!2561278 (isEmpty!36550 (tail!11856 s!2326)))))

(declare-fun b!6191190 () Bool)

(assert (=> b!6191190 (= e!3770526 (= lt!2340889 call!517689))))

(declare-fun b!6191191 () Bool)

(assert (=> b!6191191 (= e!3770527 (matchR!8312 (derivativeStep!4844 (regTwo!32770 r!7292) (head!12771 s!2326)) (tail!11856 s!2326)))))

(declare-fun bm!517684 () Bool)

(assert (=> bm!517684 (= call!517689 (isEmpty!36550 s!2326))))

(declare-fun b!6191192 () Bool)

(declare-fun e!3770531 () Bool)

(assert (=> b!6191192 (= e!3770529 e!3770531)))

(declare-fun res!2561284 () Bool)

(assert (=> b!6191192 (=> res!2561284 e!3770531)))

(assert (=> b!6191192 (= res!2561284 call!517689)))

(declare-fun b!6191193 () Bool)

(declare-fun res!2561279 () Bool)

(assert (=> b!6191193 (=> res!2561279 e!3770528)))

(assert (=> b!6191193 (= res!2561279 e!3770532)))

(declare-fun res!2561283 () Bool)

(assert (=> b!6191193 (=> (not res!2561283) (not e!3770532))))

(assert (=> b!6191193 (= res!2561283 lt!2340889)))

(declare-fun b!6191194 () Bool)

(assert (=> b!6191194 (= e!3770531 (not (= (head!12771 s!2326) (c!1116552 (regTwo!32770 r!7292)))))))

(declare-fun b!6191195 () Bool)

(declare-fun res!2561281 () Bool)

(assert (=> b!6191195 (=> res!2561281 e!3770531)))

(assert (=> b!6191195 (= res!2561281 (not (isEmpty!36550 (tail!11856 s!2326))))))

(declare-fun b!6191196 () Bool)

(assert (=> b!6191196 (= e!3770530 (not lt!2340889))))

(assert (= (and d!1940964 c!1117032) b!6191186))

(assert (= (and d!1940964 (not c!1117032)) b!6191191))

(assert (= (and d!1940964 c!1117033) b!6191190))

(assert (= (and d!1940964 (not c!1117033)) b!6191183))

(assert (= (and b!6191183 c!1117031) b!6191196))

(assert (= (and b!6191183 (not c!1117031)) b!6191185))

(assert (= (and b!6191185 (not res!2561277)) b!6191193))

(assert (= (and b!6191193 res!2561283) b!6191188))

(assert (= (and b!6191188 res!2561280) b!6191189))

(assert (= (and b!6191189 res!2561278) b!6191187))

(assert (= (and b!6191193 (not res!2561279)) b!6191184))

(assert (= (and b!6191184 res!2561282) b!6191192))

(assert (= (and b!6191192 (not res!2561284)) b!6191195))

(assert (= (and b!6191195 (not res!2561281)) b!6191194))

(assert (= (or b!6191190 b!6191188 b!6191192) bm!517684))

(assert (=> bm!517684 m!7024388))

(assert (=> b!6191189 m!7024396))

(assert (=> b!6191189 m!7024396))

(assert (=> b!6191189 m!7024406))

(assert (=> b!6191195 m!7024396))

(assert (=> b!6191195 m!7024396))

(assert (=> b!6191195 m!7024406))

(assert (=> b!6191191 m!7024392))

(assert (=> b!6191191 m!7024392))

(declare-fun m!7025396 () Bool)

(assert (=> b!6191191 m!7025396))

(assert (=> b!6191191 m!7024396))

(assert (=> b!6191191 m!7025396))

(assert (=> b!6191191 m!7024396))

(declare-fun m!7025398 () Bool)

(assert (=> b!6191191 m!7025398))

(assert (=> b!6191187 m!7024392))

(assert (=> d!1940964 m!7024388))

(declare-fun m!7025400 () Bool)

(assert (=> d!1940964 m!7025400))

(assert (=> b!6191194 m!7024392))

(declare-fun m!7025402 () Bool)

(assert (=> b!6191186 m!7025402))

(assert (=> b!6190467 d!1940964))

(declare-fun d!1940966 () Bool)

(assert (=> d!1940966 (= (nullable!6122 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292)))) (nullableFct!2080 (regOne!32770 (regTwo!32771 (regOne!32770 r!7292)))))))

(declare-fun bs!1535850 () Bool)

(assert (= bs!1535850 d!1940966))

(declare-fun m!7025404 () Bool)

(assert (=> bs!1535850 m!7025404))

(assert (=> b!6190277 d!1940966))

(declare-fun d!1940968 () Bool)

(assert (=> d!1940968 (= (isEmptyLang!1550 lt!2340822) ((_ is EmptyLang!16129) lt!2340822))))

(assert (=> b!6190351 d!1940968))

(declare-fun d!1940970 () Bool)

(declare-fun c!1117034 () Bool)

(assert (=> d!1940970 (= c!1117034 (isEmpty!36550 (tail!11856 s!2326)))))

(declare-fun e!3770533 () Bool)

(assert (=> d!1940970 (= (matchZipper!2141 (derivationStepZipper!2097 z!1189 (head!12771 s!2326)) (tail!11856 s!2326)) e!3770533)))

(declare-fun b!6191197 () Bool)

(assert (=> b!6191197 (= e!3770533 (nullableZipper!1905 (derivationStepZipper!2097 z!1189 (head!12771 s!2326))))))

(declare-fun b!6191198 () Bool)

(assert (=> b!6191198 (= e!3770533 (matchZipper!2141 (derivationStepZipper!2097 (derivationStepZipper!2097 z!1189 (head!12771 s!2326)) (head!12771 (tail!11856 s!2326))) (tail!11856 (tail!11856 s!2326))))))

(assert (= (and d!1940970 c!1117034) b!6191197))

(assert (= (and d!1940970 (not c!1117034)) b!6191198))

(assert (=> d!1940970 m!7024396))

(assert (=> d!1940970 m!7024406))

(assert (=> b!6191197 m!7024676))

(declare-fun m!7025406 () Bool)

(assert (=> b!6191197 m!7025406))

(assert (=> b!6191198 m!7024396))

(assert (=> b!6191198 m!7024784))

(assert (=> b!6191198 m!7024676))

(assert (=> b!6191198 m!7024784))

(declare-fun m!7025408 () Bool)

(assert (=> b!6191198 m!7025408))

(assert (=> b!6191198 m!7024396))

(assert (=> b!6191198 m!7024788))

(assert (=> b!6191198 m!7025408))

(assert (=> b!6191198 m!7024788))

(declare-fun m!7025410 () Bool)

(assert (=> b!6191198 m!7025410))

(assert (=> b!6190443 d!1940970))

(declare-fun bs!1535860 () Bool)

(declare-fun d!1940972 () Bool)

(assert (= bs!1535860 (and d!1940972 d!1940814)))

(declare-fun lambda!338116 () Int)

(assert (=> bs!1535860 (= lambda!338116 lambda!338079)))

(declare-fun bs!1535861 () Bool)

(assert (= bs!1535861 (and d!1940972 d!1940774)))

(assert (=> bs!1535861 (= (= (head!12771 s!2326) (head!12771 (t!378196 s!2326))) (= lambda!338116 lambda!338071))))

(declare-fun bs!1535862 () Bool)

(assert (= bs!1535862 (and d!1940972 d!1940722)))

(assert (=> bs!1535862 (= (= (head!12771 s!2326) (head!12771 (t!378196 s!2326))) (= lambda!338116 lambda!338068))))

(declare-fun bs!1535863 () Bool)

(assert (= bs!1535863 (and d!1940972 d!1940742)))

(assert (=> bs!1535863 (= (= (head!12771 s!2326) (head!12771 (t!378196 s!2326))) (= lambda!338116 lambda!338070))))

(declare-fun bs!1535864 () Bool)

(assert (= bs!1535864 (and d!1940972 d!1940700)))

(assert (=> bs!1535864 (= (= (head!12771 s!2326) (head!12771 (t!378196 s!2326))) (= lambda!338116 lambda!338061))))

(declare-fun bs!1535865 () Bool)

(assert (= bs!1535865 (and d!1940972 b!6189536)))

(assert (=> bs!1535865 (= (= (head!12771 s!2326) (h!71010 s!2326)) (= lambda!338116 lambda!337985))))

(declare-fun bs!1535866 () Bool)

(assert (= bs!1535866 (and d!1940972 d!1940624)))

(assert (=> bs!1535866 (= lambda!338116 lambda!338058)))

(assert (=> d!1940972 true))

(assert (=> d!1940972 (= (derivationStepZipper!2097 z!1189 (head!12771 s!2326)) (flatMap!1634 z!1189 lambda!338116))))

(declare-fun bs!1535867 () Bool)

(assert (= bs!1535867 d!1940972))

(declare-fun m!7025412 () Bool)

(assert (=> bs!1535867 m!7025412))

(assert (=> b!6190443 d!1940972))

(assert (=> b!6190443 d!1940626))

(assert (=> b!6190443 d!1940628))

(declare-fun d!1940974 () Bool)

(assert (=> d!1940974 (= (isEmpty!36547 lt!2340694) ((_ is Nil!64563) lt!2340694))))

(assert (=> b!6190209 d!1940974))

(declare-fun d!1940976 () Bool)

(assert (=> d!1940976 (= (Exists!3199 (ite c!1116723 lambda!338028 lambda!338029)) (choose!45995 (ite c!1116723 lambda!338028 lambda!338029)))))

(declare-fun bs!1535868 () Bool)

(assert (= bs!1535868 d!1940976))

(declare-fun m!7025414 () Bool)

(assert (=> bs!1535868 m!7025414))

(assert (=> bm!517495 d!1940976))

(assert (=> b!6190422 d!1940548))

(assert (=> d!1940480 d!1940614))

(assert (=> d!1940480 d!1940930))

(declare-fun b!6191199 () Bool)

(declare-fun e!3770535 () Bool)

(declare-fun call!517690 () Bool)

(assert (=> b!6191199 (= e!3770535 call!517690)))

(declare-fun bm!517685 () Bool)

(declare-fun call!517691 () Bool)

(declare-fun c!1117035 () Bool)

(assert (=> bm!517685 (= call!517691 (nullable!6122 (ite c!1117035 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))))))

(declare-fun b!6191200 () Bool)

(declare-fun e!3770537 () Bool)

(declare-fun e!3770539 () Bool)

(assert (=> b!6191200 (= e!3770537 e!3770539)))

(declare-fun res!2561288 () Bool)

(assert (=> b!6191200 (= res!2561288 call!517691)))

(assert (=> b!6191200 (=> res!2561288 e!3770539)))

(declare-fun b!6191201 () Bool)

(declare-fun e!3770536 () Bool)

(assert (=> b!6191201 (= e!3770536 e!3770537)))

(assert (=> b!6191201 (= c!1117035 ((_ is Union!16129) (regOne!32771 (regOne!32770 r!7292))))))

(declare-fun b!6191202 () Bool)

(assert (=> b!6191202 (= e!3770537 e!3770535)))

(declare-fun res!2561286 () Bool)

(assert (=> b!6191202 (= res!2561286 call!517691)))

(assert (=> b!6191202 (=> (not res!2561286) (not e!3770535))))

(declare-fun b!6191203 () Bool)

(declare-fun e!3770534 () Bool)

(declare-fun e!3770538 () Bool)

(assert (=> b!6191203 (= e!3770534 e!3770538)))

(declare-fun res!2561287 () Bool)

(assert (=> b!6191203 (=> (not res!2561287) (not e!3770538))))

(assert (=> b!6191203 (= res!2561287 (and (not ((_ is EmptyLang!16129) (regOne!32771 (regOne!32770 r!7292)))) (not ((_ is ElementMatch!16129) (regOne!32771 (regOne!32770 r!7292))))))))

(declare-fun bm!517686 () Bool)

(assert (=> bm!517686 (= call!517690 (nullable!6122 (ite c!1117035 (regTwo!32771 (regOne!32771 (regOne!32770 r!7292))) (regTwo!32770 (regOne!32771 (regOne!32770 r!7292))))))))

(declare-fun b!6191204 () Bool)

(assert (=> b!6191204 (= e!3770539 call!517690)))

(declare-fun d!1940978 () Bool)

(declare-fun res!2561289 () Bool)

(assert (=> d!1940978 (=> res!2561289 e!3770534)))

(assert (=> d!1940978 (= res!2561289 ((_ is EmptyExpr!16129) (regOne!32771 (regOne!32770 r!7292))))))

(assert (=> d!1940978 (= (nullableFct!2080 (regOne!32771 (regOne!32770 r!7292))) e!3770534)))

(declare-fun b!6191205 () Bool)

(assert (=> b!6191205 (= e!3770538 e!3770536)))

(declare-fun res!2561285 () Bool)

(assert (=> b!6191205 (=> res!2561285 e!3770536)))

(assert (=> b!6191205 (= res!2561285 ((_ is Star!16129) (regOne!32771 (regOne!32770 r!7292))))))

(assert (= (and d!1940978 (not res!2561289)) b!6191203))

(assert (= (and b!6191203 res!2561287) b!6191205))

(assert (= (and b!6191205 (not res!2561285)) b!6191201))

(assert (= (and b!6191201 c!1117035) b!6191200))

(assert (= (and b!6191201 (not c!1117035)) b!6191202))

(assert (= (and b!6191200 (not res!2561288)) b!6191204))

(assert (= (and b!6191202 res!2561286) b!6191199))

(assert (= (or b!6191204 b!6191199) bm!517686))

(assert (= (or b!6191200 b!6191202) bm!517685))

(declare-fun m!7025416 () Bool)

(assert (=> bm!517685 m!7025416))

(declare-fun m!7025418 () Bool)

(assert (=> bm!517686 m!7025418))

(assert (=> d!1940568 d!1940978))

(declare-fun b!6191206 () Bool)

(declare-fun e!3770540 () Bool)

(declare-fun e!3770544 () Bool)

(assert (=> b!6191206 (= e!3770540 e!3770544)))

(declare-fun c!1117036 () Bool)

(assert (=> b!6191206 (= c!1117036 ((_ is EmptyLang!16129) (derivativeStep!4844 r!7292 (head!12771 s!2326))))))

(declare-fun b!6191207 () Bool)

(declare-fun e!3770542 () Bool)

(declare-fun e!3770543 () Bool)

(assert (=> b!6191207 (= e!3770542 e!3770543)))

(declare-fun res!2561295 () Bool)

(assert (=> b!6191207 (=> (not res!2561295) (not e!3770543))))

(declare-fun lt!2340890 () Bool)

(assert (=> b!6191207 (= res!2561295 (not lt!2340890))))

(declare-fun b!6191208 () Bool)

(declare-fun res!2561290 () Bool)

(assert (=> b!6191208 (=> res!2561290 e!3770542)))

(assert (=> b!6191208 (= res!2561290 (not ((_ is ElementMatch!16129) (derivativeStep!4844 r!7292 (head!12771 s!2326)))))))

(assert (=> b!6191208 (= e!3770544 e!3770542)))

(declare-fun d!1940980 () Bool)

(assert (=> d!1940980 e!3770540))

(declare-fun c!1117038 () Bool)

(assert (=> d!1940980 (= c!1117038 ((_ is EmptyExpr!16129) (derivativeStep!4844 r!7292 (head!12771 s!2326))))))

(declare-fun e!3770541 () Bool)

(assert (=> d!1940980 (= lt!2340890 e!3770541)))

(declare-fun c!1117037 () Bool)

(assert (=> d!1940980 (= c!1117037 (isEmpty!36550 (tail!11856 s!2326)))))

(assert (=> d!1940980 (validRegex!7865 (derivativeStep!4844 r!7292 (head!12771 s!2326)))))

(assert (=> d!1940980 (= (matchR!8312 (derivativeStep!4844 r!7292 (head!12771 s!2326)) (tail!11856 s!2326)) lt!2340890)))

(declare-fun b!6191209 () Bool)

(assert (=> b!6191209 (= e!3770541 (nullable!6122 (derivativeStep!4844 r!7292 (head!12771 s!2326))))))

(declare-fun b!6191210 () Bool)

(declare-fun e!3770546 () Bool)

(assert (=> b!6191210 (= e!3770546 (= (head!12771 (tail!11856 s!2326)) (c!1116552 (derivativeStep!4844 r!7292 (head!12771 s!2326)))))))

(declare-fun b!6191211 () Bool)

(declare-fun res!2561293 () Bool)

(assert (=> b!6191211 (=> (not res!2561293) (not e!3770546))))

(declare-fun call!517692 () Bool)

(assert (=> b!6191211 (= res!2561293 (not call!517692))))

(declare-fun b!6191212 () Bool)

(declare-fun res!2561291 () Bool)

(assert (=> b!6191212 (=> (not res!2561291) (not e!3770546))))

(assert (=> b!6191212 (= res!2561291 (isEmpty!36550 (tail!11856 (tail!11856 s!2326))))))

(declare-fun b!6191213 () Bool)

(assert (=> b!6191213 (= e!3770540 (= lt!2340890 call!517692))))

(declare-fun b!6191214 () Bool)

(assert (=> b!6191214 (= e!3770541 (matchR!8312 (derivativeStep!4844 (derivativeStep!4844 r!7292 (head!12771 s!2326)) (head!12771 (tail!11856 s!2326))) (tail!11856 (tail!11856 s!2326))))))

(declare-fun bm!517687 () Bool)

(assert (=> bm!517687 (= call!517692 (isEmpty!36550 (tail!11856 s!2326)))))

(declare-fun b!6191215 () Bool)

(declare-fun e!3770545 () Bool)

(assert (=> b!6191215 (= e!3770543 e!3770545)))

(declare-fun res!2561297 () Bool)

(assert (=> b!6191215 (=> res!2561297 e!3770545)))

(assert (=> b!6191215 (= res!2561297 call!517692)))

(declare-fun b!6191216 () Bool)

(declare-fun res!2561292 () Bool)

(assert (=> b!6191216 (=> res!2561292 e!3770542)))

(assert (=> b!6191216 (= res!2561292 e!3770546)))

(declare-fun res!2561296 () Bool)

(assert (=> b!6191216 (=> (not res!2561296) (not e!3770546))))

(assert (=> b!6191216 (= res!2561296 lt!2340890)))

(declare-fun b!6191217 () Bool)

(assert (=> b!6191217 (= e!3770545 (not (= (head!12771 (tail!11856 s!2326)) (c!1116552 (derivativeStep!4844 r!7292 (head!12771 s!2326))))))))

(declare-fun b!6191218 () Bool)

(declare-fun res!2561294 () Bool)

(assert (=> b!6191218 (=> res!2561294 e!3770545)))

(assert (=> b!6191218 (= res!2561294 (not (isEmpty!36550 (tail!11856 (tail!11856 s!2326)))))))

(declare-fun b!6191219 () Bool)

(assert (=> b!6191219 (= e!3770544 (not lt!2340890))))

(assert (= (and d!1940980 c!1117037) b!6191209))

(assert (= (and d!1940980 (not c!1117037)) b!6191214))

(assert (= (and d!1940980 c!1117038) b!6191213))

(assert (= (and d!1940980 (not c!1117038)) b!6191206))

(assert (= (and b!6191206 c!1117036) b!6191219))

(assert (= (and b!6191206 (not c!1117036)) b!6191208))

(assert (= (and b!6191208 (not res!2561290)) b!6191216))

(assert (= (and b!6191216 res!2561296) b!6191211))

(assert (= (and b!6191211 res!2561293) b!6191212))

(assert (= (and b!6191212 res!2561291) b!6191210))

(assert (= (and b!6191216 (not res!2561292)) b!6191207))

(assert (= (and b!6191207 res!2561295) b!6191215))

(assert (= (and b!6191215 (not res!2561297)) b!6191218))

(assert (= (and b!6191218 (not res!2561294)) b!6191217))

(assert (= (or b!6191213 b!6191211 b!6191215) bm!517687))

(assert (=> bm!517687 m!7024396))

(assert (=> bm!517687 m!7024406))

(assert (=> b!6191212 m!7024396))

(assert (=> b!6191212 m!7024788))

(assert (=> b!6191212 m!7024788))

(assert (=> b!6191212 m!7025004))

(assert (=> b!6191218 m!7024396))

(assert (=> b!6191218 m!7024788))

(assert (=> b!6191218 m!7024788))

(assert (=> b!6191218 m!7025004))

(assert (=> b!6191214 m!7024396))

(assert (=> b!6191214 m!7024784))

(assert (=> b!6191214 m!7024544))

(assert (=> b!6191214 m!7024784))

(declare-fun m!7025424 () Bool)

(assert (=> b!6191214 m!7025424))

(assert (=> b!6191214 m!7024396))

(assert (=> b!6191214 m!7024788))

(assert (=> b!6191214 m!7025424))

(assert (=> b!6191214 m!7024788))

(declare-fun m!7025426 () Bool)

(assert (=> b!6191214 m!7025426))

(assert (=> b!6191210 m!7024396))

(assert (=> b!6191210 m!7024784))

(assert (=> d!1940980 m!7024396))

(assert (=> d!1940980 m!7024406))

(assert (=> d!1940980 m!7024544))

(declare-fun m!7025428 () Bool)

(assert (=> d!1940980 m!7025428))

(assert (=> b!6191217 m!7024396))

(assert (=> b!6191217 m!7024784))

(assert (=> b!6191209 m!7024544))

(declare-fun m!7025430 () Bool)

(assert (=> b!6191209 m!7025430))

(assert (=> b!6190314 d!1940980))

(declare-fun bm!517691 () Bool)

(declare-fun call!517696 () Regex!16129)

(declare-fun call!517697 () Regex!16129)

(assert (=> bm!517691 (= call!517696 call!517697)))

(declare-fun b!6191229 () Bool)

(declare-fun e!3770558 () Regex!16129)

(declare-fun call!517699 () Regex!16129)

(assert (=> b!6191229 (= e!3770558 (Concat!24974 call!517699 r!7292))))

(declare-fun b!6191230 () Bool)

(declare-fun e!3770557 () Regex!16129)

(assert (=> b!6191230 (= e!3770557 e!3770558)))

(declare-fun c!1117045 () Bool)

(assert (=> b!6191230 (= c!1117045 ((_ is Star!16129) r!7292))))

(declare-fun b!6191231 () Bool)

(declare-fun call!517698 () Regex!16129)

(assert (=> b!6191231 (= e!3770557 (Union!16129 call!517697 call!517698))))

(declare-fun b!6191232 () Bool)

(declare-fun e!3770555 () Regex!16129)

(assert (=> b!6191232 (= e!3770555 EmptyLang!16129)))

(declare-fun b!6191233 () Bool)

(declare-fun c!1117042 () Bool)

(assert (=> b!6191233 (= c!1117042 ((_ is Union!16129) r!7292))))

(declare-fun e!3770554 () Regex!16129)

(assert (=> b!6191233 (= e!3770554 e!3770557)))

(declare-fun b!6191234 () Bool)

(declare-fun c!1117044 () Bool)

(assert (=> b!6191234 (= c!1117044 (nullable!6122 (regOne!32770 r!7292)))))

(declare-fun e!3770556 () Regex!16129)

(assert (=> b!6191234 (= e!3770558 e!3770556)))

(declare-fun bm!517692 () Bool)

(assert (=> bm!517692 (= call!517699 call!517698)))

(declare-fun bm!517693 () Bool)

(assert (=> bm!517693 (= call!517698 (derivativeStep!4844 (ite c!1117042 (regTwo!32771 r!7292) (ite c!1117045 (reg!16458 r!7292) (regOne!32770 r!7292))) (head!12771 s!2326)))))

(declare-fun b!6191235 () Bool)

(assert (=> b!6191235 (= e!3770555 e!3770554)))

(declare-fun c!1117043 () Bool)

(assert (=> b!6191235 (= c!1117043 ((_ is ElementMatch!16129) r!7292))))

(declare-fun b!6191236 () Bool)

(assert (=> b!6191236 (= e!3770556 (Union!16129 (Concat!24974 call!517696 (regTwo!32770 r!7292)) EmptyLang!16129))))

(declare-fun b!6191237 () Bool)

(assert (=> b!6191237 (= e!3770554 (ite (= (head!12771 s!2326) (c!1116552 r!7292)) EmptyExpr!16129 EmptyLang!16129))))

(declare-fun b!6191238 () Bool)

(assert (=> b!6191238 (= e!3770556 (Union!16129 (Concat!24974 call!517699 (regTwo!32770 r!7292)) call!517696))))

(declare-fun bm!517694 () Bool)

(assert (=> bm!517694 (= call!517697 (derivativeStep!4844 (ite c!1117042 (regOne!32771 r!7292) (ite c!1117044 (regTwo!32770 r!7292) (regOne!32770 r!7292))) (head!12771 s!2326)))))

(declare-fun d!1940986 () Bool)

(declare-fun lt!2340891 () Regex!16129)

(assert (=> d!1940986 (validRegex!7865 lt!2340891)))

(assert (=> d!1940986 (= lt!2340891 e!3770555)))

(declare-fun c!1117041 () Bool)

(assert (=> d!1940986 (= c!1117041 (or ((_ is EmptyExpr!16129) r!7292) ((_ is EmptyLang!16129) r!7292)))))

(assert (=> d!1940986 (validRegex!7865 r!7292)))

(assert (=> d!1940986 (= (derivativeStep!4844 r!7292 (head!12771 s!2326)) lt!2340891)))

(assert (= (and d!1940986 c!1117041) b!6191232))

(assert (= (and d!1940986 (not c!1117041)) b!6191235))

(assert (= (and b!6191235 c!1117043) b!6191237))

(assert (= (and b!6191235 (not c!1117043)) b!6191233))

(assert (= (and b!6191233 c!1117042) b!6191231))

(assert (= (and b!6191233 (not c!1117042)) b!6191230))

(assert (= (and b!6191230 c!1117045) b!6191229))

(assert (= (and b!6191230 (not c!1117045)) b!6191234))

(assert (= (and b!6191234 c!1117044) b!6191238))

(assert (= (and b!6191234 (not c!1117044)) b!6191236))

(assert (= (or b!6191238 b!6191236) bm!517691))

(assert (= (or b!6191229 b!6191238) bm!517692))

(assert (= (or b!6191231 bm!517692) bm!517693))

(assert (= (or b!6191231 bm!517691) bm!517694))

(assert (=> b!6191234 m!7025346))

(assert (=> bm!517693 m!7024392))

(declare-fun m!7025438 () Bool)

(assert (=> bm!517693 m!7025438))

(assert (=> bm!517694 m!7024392))

(declare-fun m!7025440 () Bool)

(assert (=> bm!517694 m!7025440))

(declare-fun m!7025442 () Bool)

(assert (=> d!1940986 m!7025442))

(assert (=> d!1940986 m!7023970))

(assert (=> b!6190314 d!1940986))

(assert (=> b!6190314 d!1940626))

(assert (=> b!6190314 d!1940628))

(declare-fun d!1940990 () Bool)

(declare-fun lt!2340892 () Int)

(assert (=> d!1940990 (>= lt!2340892 0)))

(declare-fun e!3770561 () Int)

(assert (=> d!1940990 (= lt!2340892 e!3770561)))

(declare-fun c!1117046 () Bool)

(assert (=> d!1940990 (= c!1117046 ((_ is Cons!64563) (exprs!6013 (h!71012 lt!2340691))))))

(assert (=> d!1940990 (= (contextDepthTotal!282 (h!71012 lt!2340691)) lt!2340892)))

(declare-fun b!6191241 () Bool)

(assert (=> b!6191241 (= e!3770561 (+ (regexDepthTotal!140 (h!71011 (exprs!6013 (h!71012 lt!2340691)))) (contextDepthTotal!282 (Context!11027 (t!378197 (exprs!6013 (h!71012 lt!2340691)))))))))

(declare-fun b!6191242 () Bool)

(assert (=> b!6191242 (= e!3770561 1)))

(assert (= (and d!1940990 c!1117046) b!6191241))

(assert (= (and d!1940990 (not c!1117046)) b!6191242))

(declare-fun m!7025448 () Bool)

(assert (=> b!6191241 m!7025448))

(declare-fun m!7025450 () Bool)

(assert (=> b!6191241 m!7025450))

(assert (=> b!6190362 d!1940990))

(declare-fun d!1940994 () Bool)

(declare-fun lt!2340893 () Int)

(assert (=> d!1940994 (>= lt!2340893 0)))

(declare-fun e!3770563 () Int)

(assert (=> d!1940994 (= lt!2340893 e!3770563)))

(declare-fun c!1117048 () Bool)

(assert (=> d!1940994 (= c!1117048 ((_ is Cons!64564) (t!378198 lt!2340691)))))

(assert (=> d!1940994 (= (zipperDepthTotal!312 (t!378198 lt!2340691)) lt!2340893)))

(declare-fun b!6191245 () Bool)

(assert (=> b!6191245 (= e!3770563 (+ (contextDepthTotal!282 (h!71012 (t!378198 lt!2340691))) (zipperDepthTotal!312 (t!378198 (t!378198 lt!2340691)))))))

(declare-fun b!6191246 () Bool)

(assert (=> b!6191246 (= e!3770563 0)))

(assert (= (and d!1940994 c!1117048) b!6191245))

(assert (= (and d!1940994 (not c!1117048)) b!6191246))

(declare-fun m!7025456 () Bool)

(assert (=> b!6191245 m!7025456))

(declare-fun m!7025458 () Bool)

(assert (=> b!6191245 m!7025458))

(assert (=> b!6190362 d!1940994))

(declare-fun b!6191247 () Bool)

(declare-fun c!1117052 () Bool)

(assert (=> b!6191247 (= c!1117052 ((_ is Star!16129) (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))))))

(declare-fun e!3770564 () (InoxSet Context!11026))

(declare-fun e!3770567 () (InoxSet Context!11026))

(assert (=> b!6191247 (= e!3770564 e!3770567)))

(declare-fun b!6191248 () Bool)

(assert (=> b!6191248 (= e!3770567 ((as const (Array Context!11026 Bool)) false))))

(declare-fun bm!517695 () Bool)

(declare-fun call!517701 () (InoxSet Context!11026))

(declare-fun call!517703 () (InoxSet Context!11026))

(assert (=> bm!517695 (= call!517701 call!517703)))

(declare-fun bm!517696 () Bool)

(declare-fun call!517705 () List!64687)

(declare-fun call!517704 () List!64687)

(assert (=> bm!517696 (= call!517705 call!517704)))

(declare-fun b!6191249 () Bool)

(declare-fun e!3770565 () (InoxSet Context!11026))

(declare-fun call!517700 () (InoxSet Context!11026))

(declare-fun call!517702 () (InoxSet Context!11026))

(assert (=> b!6191249 (= e!3770565 ((_ map or) call!517700 call!517702))))

(declare-fun b!6191250 () Bool)

(declare-fun e!3770569 () (InoxSet Context!11026))

(assert (=> b!6191250 (= e!3770569 e!3770564)))

(declare-fun c!1117050 () Bool)

(assert (=> b!6191250 (= c!1117050 ((_ is Concat!24974) (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))))))

(declare-fun bm!517697 () Bool)

(declare-fun c!1117053 () Bool)

(assert (=> bm!517697 (= call!517704 ($colon$colon!2000 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))))))) (ite (or c!1117053 c!1117050) (regTwo!32770 (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))))))))))

(declare-fun c!1117049 () Bool)

(declare-fun bm!517698 () Bool)

(assert (=> bm!517698 (= call!517700 (derivationStepZipperDown!1377 (ite c!1117049 (regOne!32771 (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) (regOne!32770 (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))))))) (ite c!1117049 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) (Context!11027 call!517704)) (h!71010 s!2326)))))

(declare-fun bm!517699 () Bool)

(assert (=> bm!517699 (= call!517703 call!517702)))

(declare-fun b!6191251 () Bool)

(declare-fun e!3770566 () Bool)

(assert (=> b!6191251 (= e!3770566 (nullable!6122 (regOne!32770 (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))))))))))

(declare-fun bm!517700 () Bool)

(assert (=> bm!517700 (= call!517702 (derivationStepZipperDown!1377 (ite c!1117049 (regTwo!32771 (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) (ite c!1117053 (regTwo!32770 (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) (ite c!1117050 (regOne!32770 (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) (reg!16458 (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))))))))) (ite (or c!1117049 c!1117053) (Context!11027 (t!378197 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) (Context!11027 call!517705)) (h!71010 s!2326)))))

(declare-fun b!6191252 () Bool)

(assert (=> b!6191252 (= c!1117053 e!3770566)))

(declare-fun res!2561305 () Bool)

(assert (=> b!6191252 (=> (not res!2561305) (not e!3770566))))

(assert (=> b!6191252 (= res!2561305 ((_ is Concat!24974) (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))))))

(assert (=> b!6191252 (= e!3770565 e!3770569)))

(declare-fun d!1940996 () Bool)

(declare-fun c!1117051 () Bool)

(assert (=> d!1940996 (= c!1117051 (and ((_ is ElementMatch!16129) (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) (= (c!1116552 (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) (h!71010 s!2326))))))

(declare-fun e!3770568 () (InoxSet Context!11026))

(assert (=> d!1940996 (= (derivationStepZipperDown!1377 (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343))))))) (Context!11027 (t!378197 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) (h!71010 s!2326)) e!3770568)))

(declare-fun b!6191253 () Bool)

(assert (=> b!6191253 (= e!3770564 call!517701)))

(declare-fun b!6191254 () Bool)

(assert (=> b!6191254 (= e!3770567 call!517701)))

(declare-fun b!6191255 () Bool)

(assert (=> b!6191255 (= e!3770568 (store ((as const (Array Context!11026 Bool)) false) (Context!11027 (t!378197 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) true))))

(declare-fun b!6191256 () Bool)

(assert (=> b!6191256 (= e!3770569 ((_ map or) call!517700 call!517703))))

(declare-fun b!6191257 () Bool)

(assert (=> b!6191257 (= e!3770568 e!3770565)))

(assert (=> b!6191257 (= c!1117049 ((_ is Union!16129) (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))))))

(assert (= (and d!1940996 c!1117051) b!6191255))

(assert (= (and d!1940996 (not c!1117051)) b!6191257))

(assert (= (and b!6191257 c!1117049) b!6191249))

(assert (= (and b!6191257 (not c!1117049)) b!6191252))

(assert (= (and b!6191252 res!2561305) b!6191251))

(assert (= (and b!6191252 c!1117053) b!6191256))

(assert (= (and b!6191252 (not c!1117053)) b!6191250))

(assert (= (and b!6191250 c!1117050) b!6191253))

(assert (= (and b!6191250 (not c!1117050)) b!6191247))

(assert (= (and b!6191247 c!1117052) b!6191254))

(assert (= (and b!6191247 (not c!1117052)) b!6191248))

(assert (= (or b!6191253 b!6191254) bm!517696))

(assert (= (or b!6191253 b!6191254) bm!517695))

(assert (= (or b!6191256 bm!517696) bm!517697))

(assert (= (or b!6191256 bm!517695) bm!517699))

(assert (= (or b!6191249 bm!517699) bm!517700))

(assert (= (or b!6191249 b!6191256) bm!517698))

(declare-fun m!7025464 () Bool)

(assert (=> b!6191255 m!7025464))

(declare-fun m!7025466 () Bool)

(assert (=> bm!517697 m!7025466))

(declare-fun m!7025468 () Bool)

(assert (=> b!6191251 m!7025468))

(declare-fun m!7025470 () Bool)

(assert (=> bm!517700 m!7025470))

(declare-fun m!7025472 () Bool)

(assert (=> bm!517698 m!7025472))

(assert (=> bm!517546 d!1940996))

(declare-fun call!517708 () Bool)

(declare-fun bm!517701 () Bool)

(declare-fun c!1117055 () Bool)

(assert (=> bm!517701 (= call!517708 (validRegex!7865 (ite c!1117055 (regOne!32771 (ite c!1116834 (reg!16458 r!7292) (ite c!1116835 (regTwo!32771 r!7292) (regTwo!32770 r!7292)))) (regOne!32770 (ite c!1116834 (reg!16458 r!7292) (ite c!1116835 (regTwo!32771 r!7292) (regTwo!32770 r!7292)))))))))

(declare-fun b!6191258 () Bool)

(declare-fun e!3770571 () Bool)

(declare-fun call!517707 () Bool)

(assert (=> b!6191258 (= e!3770571 call!517707)))

(declare-fun d!1941006 () Bool)

(declare-fun res!2561308 () Bool)

(declare-fun e!3770573 () Bool)

(assert (=> d!1941006 (=> res!2561308 e!3770573)))

(assert (=> d!1941006 (= res!2561308 ((_ is ElementMatch!16129) (ite c!1116834 (reg!16458 r!7292) (ite c!1116835 (regTwo!32771 r!7292) (regTwo!32770 r!7292)))))))

(assert (=> d!1941006 (= (validRegex!7865 (ite c!1116834 (reg!16458 r!7292) (ite c!1116835 (regTwo!32771 r!7292) (regTwo!32770 r!7292)))) e!3770573)))

(declare-fun bm!517702 () Bool)

(declare-fun call!517706 () Bool)

(assert (=> bm!517702 (= call!517706 call!517707)))

(declare-fun bm!517703 () Bool)

(declare-fun c!1117054 () Bool)

(assert (=> bm!517703 (= call!517707 (validRegex!7865 (ite c!1117054 (reg!16458 (ite c!1116834 (reg!16458 r!7292) (ite c!1116835 (regTwo!32771 r!7292) (regTwo!32770 r!7292)))) (ite c!1117055 (regTwo!32771 (ite c!1116834 (reg!16458 r!7292) (ite c!1116835 (regTwo!32771 r!7292) (regTwo!32770 r!7292)))) (regTwo!32770 (ite c!1116834 (reg!16458 r!7292) (ite c!1116835 (regTwo!32771 r!7292) (regTwo!32770 r!7292))))))))))

(declare-fun b!6191259 () Bool)

(declare-fun e!3770576 () Bool)

(assert (=> b!6191259 (= e!3770576 call!517706)))

(declare-fun b!6191260 () Bool)

(declare-fun e!3770570 () Bool)

(assert (=> b!6191260 (= e!3770570 e!3770571)))

(declare-fun res!2561307 () Bool)

(assert (=> b!6191260 (= res!2561307 (not (nullable!6122 (reg!16458 (ite c!1116834 (reg!16458 r!7292) (ite c!1116835 (regTwo!32771 r!7292) (regTwo!32770 r!7292)))))))))

(assert (=> b!6191260 (=> (not res!2561307) (not e!3770571))))

(declare-fun b!6191261 () Bool)

(declare-fun e!3770572 () Bool)

(assert (=> b!6191261 (= e!3770572 call!517706)))

(declare-fun b!6191262 () Bool)

(assert (=> b!6191262 (= e!3770573 e!3770570)))

(assert (=> b!6191262 (= c!1117054 ((_ is Star!16129) (ite c!1116834 (reg!16458 r!7292) (ite c!1116835 (regTwo!32771 r!7292) (regTwo!32770 r!7292)))))))

(declare-fun b!6191263 () Bool)

(declare-fun res!2561306 () Bool)

(declare-fun e!3770575 () Bool)

(assert (=> b!6191263 (=> res!2561306 e!3770575)))

(assert (=> b!6191263 (= res!2561306 (not ((_ is Concat!24974) (ite c!1116834 (reg!16458 r!7292) (ite c!1116835 (regTwo!32771 r!7292) (regTwo!32770 r!7292))))))))

(declare-fun e!3770574 () Bool)

(assert (=> b!6191263 (= e!3770574 e!3770575)))

(declare-fun b!6191264 () Bool)

(assert (=> b!6191264 (= e!3770575 e!3770576)))

(declare-fun res!2561310 () Bool)

(assert (=> b!6191264 (=> (not res!2561310) (not e!3770576))))

(assert (=> b!6191264 (= res!2561310 call!517708)))

(declare-fun b!6191265 () Bool)

(assert (=> b!6191265 (= e!3770570 e!3770574)))

(assert (=> b!6191265 (= c!1117055 ((_ is Union!16129) (ite c!1116834 (reg!16458 r!7292) (ite c!1116835 (regTwo!32771 r!7292) (regTwo!32770 r!7292)))))))

(declare-fun b!6191266 () Bool)

(declare-fun res!2561309 () Bool)

(assert (=> b!6191266 (=> (not res!2561309) (not e!3770572))))

(assert (=> b!6191266 (= res!2561309 call!517708)))

(assert (=> b!6191266 (= e!3770574 e!3770572)))

(assert (= (and d!1941006 (not res!2561308)) b!6191262))

(assert (= (and b!6191262 c!1117054) b!6191260))

(assert (= (and b!6191262 (not c!1117054)) b!6191265))

(assert (= (and b!6191260 res!2561307) b!6191258))

(assert (= (and b!6191265 c!1117055) b!6191266))

(assert (= (and b!6191265 (not c!1117055)) b!6191263))

(assert (= (and b!6191266 res!2561309) b!6191261))

(assert (= (and b!6191263 (not res!2561306)) b!6191264))

(assert (= (and b!6191264 res!2561310) b!6191259))

(assert (= (or b!6191261 b!6191259) bm!517702))

(assert (= (or b!6191266 b!6191264) bm!517701))

(assert (= (or b!6191258 bm!517702) bm!517703))

(declare-fun m!7025474 () Bool)

(assert (=> bm!517701 m!7025474))

(declare-fun m!7025476 () Bool)

(assert (=> bm!517703 m!7025476))

(declare-fun m!7025478 () Bool)

(assert (=> b!6191260 m!7025478))

(assert (=> bm!517553 d!1941006))

(assert (=> d!1940578 d!1940614))

(declare-fun bm!517707 () Bool)

(declare-fun call!517714 () Bool)

(declare-fun c!1117059 () Bool)

(assert (=> bm!517707 (= call!517714 (validRegex!7865 (ite c!1117059 (regOne!32771 lt!2340832) (regOne!32770 lt!2340832))))))

(declare-fun b!6191276 () Bool)

(declare-fun e!3770585 () Bool)

(declare-fun call!517713 () Bool)

(assert (=> b!6191276 (= e!3770585 call!517713)))

(declare-fun d!1941014 () Bool)

(declare-fun res!2561318 () Bool)

(declare-fun e!3770587 () Bool)

(assert (=> d!1941014 (=> res!2561318 e!3770587)))

(assert (=> d!1941014 (= res!2561318 ((_ is ElementMatch!16129) lt!2340832))))

(assert (=> d!1941014 (= (validRegex!7865 lt!2340832) e!3770587)))

(declare-fun bm!517708 () Bool)

(declare-fun call!517712 () Bool)

(assert (=> bm!517708 (= call!517712 call!517713)))

(declare-fun c!1117058 () Bool)

(declare-fun bm!517709 () Bool)

(assert (=> bm!517709 (= call!517713 (validRegex!7865 (ite c!1117058 (reg!16458 lt!2340832) (ite c!1117059 (regTwo!32771 lt!2340832) (regTwo!32770 lt!2340832)))))))

(declare-fun b!6191277 () Bool)

(declare-fun e!3770590 () Bool)

(assert (=> b!6191277 (= e!3770590 call!517712)))

(declare-fun b!6191278 () Bool)

(declare-fun e!3770584 () Bool)

(assert (=> b!6191278 (= e!3770584 e!3770585)))

(declare-fun res!2561317 () Bool)

(assert (=> b!6191278 (= res!2561317 (not (nullable!6122 (reg!16458 lt!2340832))))))

(assert (=> b!6191278 (=> (not res!2561317) (not e!3770585))))

(declare-fun b!6191279 () Bool)

(declare-fun e!3770586 () Bool)

(assert (=> b!6191279 (= e!3770586 call!517712)))

(declare-fun b!6191280 () Bool)

(assert (=> b!6191280 (= e!3770587 e!3770584)))

(assert (=> b!6191280 (= c!1117058 ((_ is Star!16129) lt!2340832))))

(declare-fun b!6191281 () Bool)

(declare-fun res!2561316 () Bool)

(declare-fun e!3770589 () Bool)

(assert (=> b!6191281 (=> res!2561316 e!3770589)))

(assert (=> b!6191281 (= res!2561316 (not ((_ is Concat!24974) lt!2340832)))))

(declare-fun e!3770588 () Bool)

(assert (=> b!6191281 (= e!3770588 e!3770589)))

(declare-fun b!6191282 () Bool)

(assert (=> b!6191282 (= e!3770589 e!3770590)))

(declare-fun res!2561320 () Bool)

(assert (=> b!6191282 (=> (not res!2561320) (not e!3770590))))

(assert (=> b!6191282 (= res!2561320 call!517714)))

(declare-fun b!6191283 () Bool)

(assert (=> b!6191283 (= e!3770584 e!3770588)))

(assert (=> b!6191283 (= c!1117059 ((_ is Union!16129) lt!2340832))))

(declare-fun b!6191284 () Bool)

(declare-fun res!2561319 () Bool)

(assert (=> b!6191284 (=> (not res!2561319) (not e!3770586))))

(assert (=> b!6191284 (= res!2561319 call!517714)))

(assert (=> b!6191284 (= e!3770588 e!3770586)))

(assert (= (and d!1941014 (not res!2561318)) b!6191280))

(assert (= (and b!6191280 c!1117058) b!6191278))

(assert (= (and b!6191280 (not c!1117058)) b!6191283))

(assert (= (and b!6191278 res!2561317) b!6191276))

(assert (= (and b!6191283 c!1117059) b!6191284))

(assert (= (and b!6191283 (not c!1117059)) b!6191281))

(assert (= (and b!6191284 res!2561319) b!6191279))

(assert (= (and b!6191281 (not res!2561316)) b!6191282))

(assert (= (and b!6191282 res!2561320) b!6191277))

(assert (= (or b!6191279 b!6191277) bm!517708))

(assert (= (or b!6191284 b!6191282) bm!517707))

(assert (= (or b!6191276 bm!517708) bm!517709))

(declare-fun m!7025486 () Bool)

(assert (=> bm!517707 m!7025486))

(declare-fun m!7025488 () Bool)

(assert (=> bm!517709 m!7025488))

(declare-fun m!7025490 () Bool)

(assert (=> b!6191278 m!7025490))

(assert (=> d!1940544 d!1941014))

(assert (=> d!1940544 d!1940530))

(assert (=> d!1940544 d!1940532))

(declare-fun d!1941018 () Bool)

(assert (=> d!1941018 (= (isConcat!1064 lt!2340809) ((_ is Concat!24974) lt!2340809))))

(assert (=> b!6190205 d!1941018))

(declare-fun bs!1535874 () Bool)

(declare-fun b!6191288 () Bool)

(assert (= bs!1535874 (and b!6191288 d!1940588)))

(declare-fun lambda!338119 () Int)

(assert (=> bs!1535874 (not (= lambda!338119 lambda!338053))))

(declare-fun bs!1535875 () Bool)

(assert (= bs!1535875 (and b!6191288 b!6190298)))

(assert (=> bs!1535875 (= (and (= (reg!16458 (regOne!32771 lt!2340702)) (reg!16458 r!7292)) (= (regOne!32771 lt!2340702) r!7292)) (= lambda!338119 lambda!338034))))

(declare-fun bs!1535876 () Bool)

(assert (= bs!1535876 (and b!6191288 b!6190848)))

(assert (=> bs!1535876 (not (= lambda!338119 lambda!338076))))

(declare-fun bs!1535877 () Bool)

(assert (= bs!1535877 (and b!6191288 b!6189558)))

(assert (=> bs!1535877 (not (= lambda!338119 lambda!337983))))

(declare-fun bs!1535878 () Bool)

(assert (= bs!1535878 (and b!6191288 b!6190621)))

(assert (=> bs!1535878 (not (= lambda!338119 lambda!338060))))

(declare-fun bs!1535879 () Bool)

(assert (= bs!1535879 (and b!6191288 b!6190139)))

(assert (=> bs!1535879 (not (= lambda!338119 lambda!338029))))

(declare-fun bs!1535880 () Bool)

(assert (= bs!1535880 (and b!6191288 d!1940830)))

(assert (=> bs!1535880 (not (= lambda!338119 lambda!338089))))

(declare-fun bs!1535881 () Bool)

(assert (= bs!1535881 (and b!6191288 b!6190296)))

(assert (=> bs!1535881 (not (= lambda!338119 lambda!338035))))

(declare-fun bs!1535882 () Bool)

(assert (= bs!1535882 (and b!6191288 d!1940586)))

(assert (=> bs!1535882 (not (= lambda!338119 lambda!338048))))

(declare-fun bs!1535883 () Bool)

(assert (= bs!1535883 (and b!6191288 b!6191080)))

(assert (=> bs!1535883 (= (and (= (reg!16458 (regOne!32771 lt!2340702)) (reg!16458 (regTwo!32771 r!7292))) (= (regOne!32771 lt!2340702) (regTwo!32771 r!7292))) (= lambda!338119 lambda!338105))))

(declare-fun bs!1535884 () Bool)

(assert (= bs!1535884 (and b!6191288 b!6190228)))

(assert (=> bs!1535884 (= (and (= (reg!16458 (regOne!32771 lt!2340702)) (reg!16458 lt!2340713)) (= (regOne!32771 lt!2340702) lt!2340713)) (= lambda!338119 lambda!338032))))

(declare-fun bs!1535885 () Bool)

(assert (= bs!1535885 (and b!6191288 b!6191078)))

(assert (=> bs!1535885 (not (= lambda!338119 lambda!338106))))

(declare-fun bs!1535886 () Bool)

(assert (= bs!1535886 (and b!6191288 b!6190912)))

(assert (=> bs!1535886 (= (and (= (reg!16458 (regOne!32771 lt!2340702)) (reg!16458 (regTwo!32771 lt!2340713))) (= (regOne!32771 lt!2340702) (regTwo!32771 lt!2340713))) (= lambda!338119 lambda!338091))))

(assert (=> bs!1535874 (not (= lambda!338119 lambda!338054))))

(declare-fun bs!1535887 () Bool)

(assert (= bs!1535887 (and b!6191288 b!6190850)))

(assert (=> bs!1535887 (= (and (= (reg!16458 (regOne!32771 lt!2340702)) (reg!16458 (regOne!32771 r!7292))) (= (regOne!32771 lt!2340702) (regOne!32771 r!7292))) (= lambda!338119 lambda!338075))))

(declare-fun bs!1535888 () Bool)

(assert (= bs!1535888 (and b!6191288 b!6190623)))

(assert (=> bs!1535888 (= (and (= (reg!16458 (regOne!32771 lt!2340702)) (reg!16458 (regOne!32771 lt!2340713))) (= (regOne!32771 lt!2340702) (regOne!32771 lt!2340713))) (= lambda!338119 lambda!338059))))

(declare-fun bs!1535889 () Bool)

(assert (= bs!1535889 (and b!6191288 b!6190141)))

(assert (=> bs!1535889 (= (and (= (reg!16458 (regOne!32771 lt!2340702)) (reg!16458 lt!2340702)) (= (regOne!32771 lt!2340702) lt!2340702)) (= lambda!338119 lambda!338028))))

(declare-fun bs!1535890 () Bool)

(assert (= bs!1535890 (and b!6191288 b!6190910)))

(assert (=> bs!1535890 (not (= lambda!338119 lambda!338092))))

(declare-fun bs!1535891 () Bool)

(assert (= bs!1535891 (and b!6191288 b!6190226)))

(assert (=> bs!1535891 (not (= lambda!338119 lambda!338033))))

(assert (=> bs!1535880 (not (= lambda!338119 lambda!338087))))

(assert (=> bs!1535877 (not (= lambda!338119 lambda!337984))))

(declare-fun bs!1535892 () Bool)

(assert (= bs!1535892 (and b!6191288 d!1940940)))

(assert (=> bs!1535892 (not (= lambda!338119 lambda!338110))))

(assert (=> b!6191288 true))

(assert (=> b!6191288 true))

(declare-fun bs!1535893 () Bool)

(declare-fun b!6191286 () Bool)

(assert (= bs!1535893 (and b!6191286 d!1940588)))

(declare-fun lambda!338120 () Int)

(assert (=> bs!1535893 (not (= lambda!338120 lambda!338053))))

(declare-fun bs!1535894 () Bool)

(assert (= bs!1535894 (and b!6191286 b!6190298)))

(assert (=> bs!1535894 (not (= lambda!338120 lambda!338034))))

(declare-fun bs!1535896 () Bool)

(assert (= bs!1535896 (and b!6191286 b!6190848)))

(assert (=> bs!1535896 (= (and (= (regOne!32770 (regOne!32771 lt!2340702)) (regOne!32770 (regOne!32771 r!7292))) (= (regTwo!32770 (regOne!32771 lt!2340702)) (regTwo!32770 (regOne!32771 r!7292)))) (= lambda!338120 lambda!338076))))

(declare-fun bs!1535897 () Bool)

(assert (= bs!1535897 (and b!6191286 b!6189558)))

(assert (=> bs!1535897 (not (= lambda!338120 lambda!337983))))

(declare-fun bs!1535898 () Bool)

(assert (= bs!1535898 (and b!6191286 b!6190621)))

(assert (=> bs!1535898 (= (and (= (regOne!32770 (regOne!32771 lt!2340702)) (regOne!32770 (regOne!32771 lt!2340713))) (= (regTwo!32770 (regOne!32771 lt!2340702)) (regTwo!32770 (regOne!32771 lt!2340713)))) (= lambda!338120 lambda!338060))))

(declare-fun bs!1535899 () Bool)

(assert (= bs!1535899 (and b!6191286 b!6190139)))

(assert (=> bs!1535899 (= (and (= (regOne!32770 (regOne!32771 lt!2340702)) (regOne!32770 lt!2340702)) (= (regTwo!32770 (regOne!32771 lt!2340702)) (regTwo!32770 lt!2340702))) (= lambda!338120 lambda!338029))))

(declare-fun bs!1535900 () Bool)

(assert (= bs!1535900 (and b!6191286 d!1940830)))

(assert (=> bs!1535900 (= (and (= (regOne!32770 (regOne!32771 lt!2340702)) (regOne!32770 r!7292)) (= (regTwo!32770 (regOne!32771 lt!2340702)) (regTwo!32770 r!7292))) (= lambda!338120 lambda!338089))))

(declare-fun bs!1535901 () Bool)

(assert (= bs!1535901 (and b!6191286 b!6190296)))

(assert (=> bs!1535901 (= (and (= (regOne!32770 (regOne!32771 lt!2340702)) (regOne!32770 r!7292)) (= (regTwo!32770 (regOne!32771 lt!2340702)) (regTwo!32770 r!7292))) (= lambda!338120 lambda!338035))))

(declare-fun bs!1535902 () Bool)

(assert (= bs!1535902 (and b!6191286 b!6191288)))

(assert (=> bs!1535902 (not (= lambda!338120 lambda!338119))))

(declare-fun bs!1535903 () Bool)

(assert (= bs!1535903 (and b!6191286 d!1940586)))

(assert (=> bs!1535903 (not (= lambda!338120 lambda!338048))))

(declare-fun bs!1535904 () Bool)

(assert (= bs!1535904 (and b!6191286 b!6191080)))

(assert (=> bs!1535904 (not (= lambda!338120 lambda!338105))))

(declare-fun bs!1535905 () Bool)

(assert (= bs!1535905 (and b!6191286 b!6190228)))

(assert (=> bs!1535905 (not (= lambda!338120 lambda!338032))))

(declare-fun bs!1535906 () Bool)

(assert (= bs!1535906 (and b!6191286 b!6191078)))

(assert (=> bs!1535906 (= (and (= (regOne!32770 (regOne!32771 lt!2340702)) (regOne!32770 (regTwo!32771 r!7292))) (= (regTwo!32770 (regOne!32771 lt!2340702)) (regTwo!32770 (regTwo!32771 r!7292)))) (= lambda!338120 lambda!338106))))

(declare-fun bs!1535907 () Bool)

(assert (= bs!1535907 (and b!6191286 b!6190912)))

(assert (=> bs!1535907 (not (= lambda!338120 lambda!338091))))

(assert (=> bs!1535893 (= (and (= (regOne!32770 (regOne!32771 lt!2340702)) (regOne!32770 r!7292)) (= (regTwo!32770 (regOne!32771 lt!2340702)) (regTwo!32770 r!7292))) (= lambda!338120 lambda!338054))))

(declare-fun bs!1535908 () Bool)

(assert (= bs!1535908 (and b!6191286 b!6190850)))

(assert (=> bs!1535908 (not (= lambda!338120 lambda!338075))))

(declare-fun bs!1535909 () Bool)

(assert (= bs!1535909 (and b!6191286 b!6190623)))

(assert (=> bs!1535909 (not (= lambda!338120 lambda!338059))))

(declare-fun bs!1535910 () Bool)

(assert (= bs!1535910 (and b!6191286 b!6190141)))

(assert (=> bs!1535910 (not (= lambda!338120 lambda!338028))))

(declare-fun bs!1535911 () Bool)

(assert (= bs!1535911 (and b!6191286 b!6190910)))

(assert (=> bs!1535911 (= (and (= (regOne!32770 (regOne!32771 lt!2340702)) (regOne!32770 (regTwo!32771 lt!2340713))) (= (regTwo!32770 (regOne!32771 lt!2340702)) (regTwo!32770 (regTwo!32771 lt!2340713)))) (= lambda!338120 lambda!338092))))

(declare-fun bs!1535912 () Bool)

(assert (= bs!1535912 (and b!6191286 b!6190226)))

(assert (=> bs!1535912 (= (and (= (regOne!32770 (regOne!32771 lt!2340702)) (regOne!32770 lt!2340713)) (= (regTwo!32770 (regOne!32771 lt!2340702)) (regTwo!32770 lt!2340713))) (= lambda!338120 lambda!338033))))

(assert (=> bs!1535900 (not (= lambda!338120 lambda!338087))))

(assert (=> bs!1535897 (= (and (= (regOne!32770 (regOne!32771 lt!2340702)) (regOne!32770 r!7292)) (= (regTwo!32770 (regOne!32771 lt!2340702)) (regTwo!32770 r!7292))) (= lambda!338120 lambda!337984))))

(declare-fun bs!1535913 () Bool)

(assert (= bs!1535913 (and b!6191286 d!1940940)))

(assert (=> bs!1535913 (not (= lambda!338120 lambda!338110))))

(assert (=> b!6191286 true))

(assert (=> b!6191286 true))

(declare-fun b!6191285 () Bool)

(declare-fun e!3770596 () Bool)

(assert (=> b!6191285 (= e!3770596 (= s!2326 (Cons!64562 (c!1116552 (regOne!32771 lt!2340702)) Nil!64562)))))

(declare-fun e!3770594 () Bool)

(declare-fun call!517716 () Bool)

(assert (=> b!6191286 (= e!3770594 call!517716)))

(declare-fun b!6191287 () Bool)

(declare-fun c!1117061 () Bool)

(assert (=> b!6191287 (= c!1117061 ((_ is ElementMatch!16129) (regOne!32771 lt!2340702)))))

(declare-fun e!3770595 () Bool)

(assert (=> b!6191287 (= e!3770595 e!3770596)))

(declare-fun e!3770593 () Bool)

(assert (=> b!6191288 (= e!3770593 call!517716)))

(declare-fun b!6191289 () Bool)

(declare-fun e!3770592 () Bool)

(declare-fun call!517715 () Bool)

(assert (=> b!6191289 (= e!3770592 call!517715)))

(declare-fun bm!517710 () Bool)

(assert (=> bm!517710 (= call!517715 (isEmpty!36550 s!2326))))

(declare-fun b!6191290 () Bool)

(assert (=> b!6191290 (= e!3770592 e!3770595)))

(declare-fun res!2561323 () Bool)

(assert (=> b!6191290 (= res!2561323 (not ((_ is EmptyLang!16129) (regOne!32771 lt!2340702))))))

(assert (=> b!6191290 (=> (not res!2561323) (not e!3770595))))

(declare-fun b!6191291 () Bool)

(declare-fun e!3770597 () Bool)

(assert (=> b!6191291 (= e!3770597 e!3770594)))

(declare-fun c!1117062 () Bool)

(assert (=> b!6191291 (= c!1117062 ((_ is Star!16129) (regOne!32771 lt!2340702)))))

(declare-fun b!6191292 () Bool)

(declare-fun e!3770591 () Bool)

(assert (=> b!6191292 (= e!3770597 e!3770591)))

(declare-fun res!2561321 () Bool)

(assert (=> b!6191292 (= res!2561321 (matchRSpec!3230 (regOne!32771 (regOne!32771 lt!2340702)) s!2326))))

(assert (=> b!6191292 (=> res!2561321 e!3770591)))

(declare-fun b!6191293 () Bool)

(declare-fun res!2561322 () Bool)

(assert (=> b!6191293 (=> res!2561322 e!3770593)))

(assert (=> b!6191293 (= res!2561322 call!517715)))

(assert (=> b!6191293 (= e!3770594 e!3770593)))

(declare-fun b!6191294 () Bool)

(declare-fun c!1117060 () Bool)

(assert (=> b!6191294 (= c!1117060 ((_ is Union!16129) (regOne!32771 lt!2340702)))))

(assert (=> b!6191294 (= e!3770596 e!3770597)))

(declare-fun b!6191295 () Bool)

(assert (=> b!6191295 (= e!3770591 (matchRSpec!3230 (regTwo!32771 (regOne!32771 lt!2340702)) s!2326))))

(declare-fun bm!517711 () Bool)

(assert (=> bm!517711 (= call!517716 (Exists!3199 (ite c!1117062 lambda!338119 lambda!338120)))))

(declare-fun d!1941020 () Bool)

(declare-fun c!1117063 () Bool)

(assert (=> d!1941020 (= c!1117063 ((_ is EmptyExpr!16129) (regOne!32771 lt!2340702)))))

(assert (=> d!1941020 (= (matchRSpec!3230 (regOne!32771 lt!2340702) s!2326) e!3770592)))

(assert (= (and d!1941020 c!1117063) b!6191289))

(assert (= (and d!1941020 (not c!1117063)) b!6191290))

(assert (= (and b!6191290 res!2561323) b!6191287))

(assert (= (and b!6191287 c!1117061) b!6191285))

(assert (= (and b!6191287 (not c!1117061)) b!6191294))

(assert (= (and b!6191294 c!1117060) b!6191292))

(assert (= (and b!6191294 (not c!1117060)) b!6191291))

(assert (= (and b!6191292 (not res!2561321)) b!6191295))

(assert (= (and b!6191291 c!1117062) b!6191293))

(assert (= (and b!6191291 (not c!1117062)) b!6191286))

(assert (= (and b!6191293 (not res!2561322)) b!6191288))

(assert (= (or b!6191288 b!6191286) bm!517711))

(assert (= (or b!6191289 b!6191293) bm!517710))

(assert (=> bm!517710 m!7024388))

(declare-fun m!7025514 () Bool)

(assert (=> b!6191292 m!7025514))

(declare-fun m!7025516 () Bool)

(assert (=> b!6191295 m!7025516))

(declare-fun m!7025518 () Bool)

(assert (=> bm!517711 m!7025518))

(assert (=> b!6190145 d!1941020))

(declare-fun b!6191325 () Bool)

(declare-fun e!3770621 () Bool)

(declare-fun call!517718 () Bool)

(assert (=> b!6191325 (= e!3770621 call!517718)))

(declare-fun bm!517713 () Bool)

(declare-fun call!517719 () Bool)

(declare-fun c!1117067 () Bool)

(assert (=> bm!517713 (= call!517719 (nullable!6122 (ite c!1117067 (regOne!32771 (regTwo!32771 (regOne!32770 r!7292))) (regOne!32770 (regTwo!32771 (regOne!32770 r!7292))))))))

(declare-fun b!6191326 () Bool)

(declare-fun e!3770623 () Bool)

(declare-fun e!3770625 () Bool)

(assert (=> b!6191326 (= e!3770623 e!3770625)))

(declare-fun res!2561347 () Bool)

(assert (=> b!6191326 (= res!2561347 call!517719)))

(assert (=> b!6191326 (=> res!2561347 e!3770625)))

(declare-fun b!6191327 () Bool)

(declare-fun e!3770622 () Bool)

(assert (=> b!6191327 (= e!3770622 e!3770623)))

(assert (=> b!6191327 (= c!1117067 ((_ is Union!16129) (regTwo!32771 (regOne!32770 r!7292))))))

(declare-fun b!6191328 () Bool)

(assert (=> b!6191328 (= e!3770623 e!3770621)))

(declare-fun res!2561345 () Bool)

(assert (=> b!6191328 (= res!2561345 call!517719)))

(assert (=> b!6191328 (=> (not res!2561345) (not e!3770621))))

(declare-fun b!6191329 () Bool)

(declare-fun e!3770620 () Bool)

(declare-fun e!3770624 () Bool)

(assert (=> b!6191329 (= e!3770620 e!3770624)))

(declare-fun res!2561346 () Bool)

(assert (=> b!6191329 (=> (not res!2561346) (not e!3770624))))

(assert (=> b!6191329 (= res!2561346 (and (not ((_ is EmptyLang!16129) (regTwo!32771 (regOne!32770 r!7292)))) (not ((_ is ElementMatch!16129) (regTwo!32771 (regOne!32770 r!7292))))))))

(declare-fun bm!517714 () Bool)

(assert (=> bm!517714 (= call!517718 (nullable!6122 (ite c!1117067 (regTwo!32771 (regTwo!32771 (regOne!32770 r!7292))) (regTwo!32770 (regTwo!32771 (regOne!32770 r!7292))))))))

(declare-fun b!6191330 () Bool)

(assert (=> b!6191330 (= e!3770625 call!517718)))

(declare-fun d!1941030 () Bool)

(declare-fun res!2561348 () Bool)

(assert (=> d!1941030 (=> res!2561348 e!3770620)))

(assert (=> d!1941030 (= res!2561348 ((_ is EmptyExpr!16129) (regTwo!32771 (regOne!32770 r!7292))))))

(assert (=> d!1941030 (= (nullableFct!2080 (regTwo!32771 (regOne!32770 r!7292))) e!3770620)))

(declare-fun b!6191331 () Bool)

(assert (=> b!6191331 (= e!3770624 e!3770622)))

(declare-fun res!2561344 () Bool)

(assert (=> b!6191331 (=> res!2561344 e!3770622)))

(assert (=> b!6191331 (= res!2561344 ((_ is Star!16129) (regTwo!32771 (regOne!32770 r!7292))))))

(assert (= (and d!1941030 (not res!2561348)) b!6191329))

(assert (= (and b!6191329 res!2561346) b!6191331))

(assert (= (and b!6191331 (not res!2561344)) b!6191327))

(assert (= (and b!6191327 c!1117067) b!6191326))

(assert (= (and b!6191327 (not c!1117067)) b!6191328))

(assert (= (and b!6191326 (not res!2561347)) b!6191330))

(assert (= (and b!6191328 res!2561345) b!6191325))

(assert (= (or b!6191330 b!6191325) bm!517714))

(assert (= (or b!6191326 b!6191328) bm!517713))

(declare-fun m!7025520 () Bool)

(assert (=> bm!517713 m!7025520))

(declare-fun m!7025522 () Bool)

(assert (=> bm!517714 m!7025522))

(assert (=> d!1940562 d!1941030))

(assert (=> b!6190183 d!1940718))

(assert (=> b!6190183 d!1940628))

(declare-fun d!1941032 () Bool)

(declare-fun c!1117068 () Bool)

(assert (=> d!1941032 (= c!1117068 (isEmpty!36550 (tail!11856 (t!378196 s!2326))))))

(declare-fun e!3770626 () Bool)

(assert (=> d!1941032 (= (matchZipper!2141 (derivationStepZipper!2097 lt!2340714 (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))) e!3770626)))

(declare-fun b!6191332 () Bool)

(assert (=> b!6191332 (= e!3770626 (nullableZipper!1905 (derivationStepZipper!2097 lt!2340714 (head!12771 (t!378196 s!2326)))))))

(declare-fun b!6191333 () Bool)

(assert (=> b!6191333 (= e!3770626 (matchZipper!2141 (derivationStepZipper!2097 (derivationStepZipper!2097 lt!2340714 (head!12771 (t!378196 s!2326))) (head!12771 (tail!11856 (t!378196 s!2326)))) (tail!11856 (tail!11856 (t!378196 s!2326)))))))

(assert (= (and d!1941032 c!1117068) b!6191332))

(assert (= (and d!1941032 (not c!1117068)) b!6191333))

(assert (=> d!1941032 m!7024486))

(assert (=> d!1941032 m!7024926))

(assert (=> b!6191332 m!7024722))

(declare-fun m!7025524 () Bool)

(assert (=> b!6191332 m!7025524))

(assert (=> b!6191333 m!7024486))

(assert (=> b!6191333 m!7024930))

(assert (=> b!6191333 m!7024722))

(assert (=> b!6191333 m!7024930))

(declare-fun m!7025526 () Bool)

(assert (=> b!6191333 m!7025526))

(assert (=> b!6191333 m!7024486))

(assert (=> b!6191333 m!7024934))

(assert (=> b!6191333 m!7025526))

(assert (=> b!6191333 m!7024934))

(declare-fun m!7025528 () Bool)

(assert (=> b!6191333 m!7025528))

(assert (=> b!6190484 d!1941032))

(declare-fun bs!1535914 () Bool)

(declare-fun d!1941034 () Bool)

(assert (= bs!1535914 (and d!1941034 d!1940814)))

(declare-fun lambda!338121 () Int)

(assert (=> bs!1535914 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338121 lambda!338079))))

(declare-fun bs!1535915 () Bool)

(assert (= bs!1535915 (and d!1941034 d!1940972)))

(assert (=> bs!1535915 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338121 lambda!338116))))

(declare-fun bs!1535916 () Bool)

(assert (= bs!1535916 (and d!1941034 d!1940774)))

(assert (=> bs!1535916 (= lambda!338121 lambda!338071)))

(declare-fun bs!1535917 () Bool)

(assert (= bs!1535917 (and d!1941034 d!1940722)))

(assert (=> bs!1535917 (= lambda!338121 lambda!338068)))

(declare-fun bs!1535918 () Bool)

(assert (= bs!1535918 (and d!1941034 d!1940742)))

(assert (=> bs!1535918 (= lambda!338121 lambda!338070)))

(declare-fun bs!1535919 () Bool)

(assert (= bs!1535919 (and d!1941034 d!1940700)))

(assert (=> bs!1535919 (= lambda!338121 lambda!338061)))

(declare-fun bs!1535920 () Bool)

(assert (= bs!1535920 (and d!1941034 b!6189536)))

(assert (=> bs!1535920 (= (= (head!12771 (t!378196 s!2326)) (h!71010 s!2326)) (= lambda!338121 lambda!337985))))

(declare-fun bs!1535921 () Bool)

(assert (= bs!1535921 (and d!1941034 d!1940624)))

(assert (=> bs!1535921 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338121 lambda!338058))))

(assert (=> d!1941034 true))

(assert (=> d!1941034 (= (derivationStepZipper!2097 lt!2340714 (head!12771 (t!378196 s!2326))) (flatMap!1634 lt!2340714 lambda!338121))))

(declare-fun bs!1535922 () Bool)

(assert (= bs!1535922 d!1941034))

(declare-fun m!7025530 () Bool)

(assert (=> bs!1535922 m!7025530))

(assert (=> b!6190484 d!1941034))

(assert (=> b!6190484 d!1940702))

(assert (=> b!6190484 d!1940704))

(declare-fun bm!517715 () Bool)

(declare-fun call!517722 () Bool)

(declare-fun c!1117070 () Bool)

(assert (=> bm!517715 (= call!517722 (validRegex!7865 (ite c!1117070 (regOne!32771 lt!2340810) (regOne!32770 lt!2340810))))))

(declare-fun b!6191334 () Bool)

(declare-fun e!3770628 () Bool)

(declare-fun call!517721 () Bool)

(assert (=> b!6191334 (= e!3770628 call!517721)))

(declare-fun d!1941036 () Bool)

(declare-fun res!2561351 () Bool)

(declare-fun e!3770630 () Bool)

(assert (=> d!1941036 (=> res!2561351 e!3770630)))

(assert (=> d!1941036 (= res!2561351 ((_ is ElementMatch!16129) lt!2340810))))

(assert (=> d!1941036 (= (validRegex!7865 lt!2340810) e!3770630)))

(declare-fun bm!517716 () Bool)

(declare-fun call!517720 () Bool)

(assert (=> bm!517716 (= call!517720 call!517721)))

(declare-fun c!1117069 () Bool)

(declare-fun bm!517717 () Bool)

(assert (=> bm!517717 (= call!517721 (validRegex!7865 (ite c!1117069 (reg!16458 lt!2340810) (ite c!1117070 (regTwo!32771 lt!2340810) (regTwo!32770 lt!2340810)))))))

(declare-fun b!6191335 () Bool)

(declare-fun e!3770633 () Bool)

(assert (=> b!6191335 (= e!3770633 call!517720)))

(declare-fun b!6191336 () Bool)

(declare-fun e!3770627 () Bool)

(assert (=> b!6191336 (= e!3770627 e!3770628)))

(declare-fun res!2561350 () Bool)

(assert (=> b!6191336 (= res!2561350 (not (nullable!6122 (reg!16458 lt!2340810))))))

(assert (=> b!6191336 (=> (not res!2561350) (not e!3770628))))

(declare-fun b!6191337 () Bool)

(declare-fun e!3770629 () Bool)

(assert (=> b!6191337 (= e!3770629 call!517720)))

(declare-fun b!6191338 () Bool)

(assert (=> b!6191338 (= e!3770630 e!3770627)))

(assert (=> b!6191338 (= c!1117069 ((_ is Star!16129) lt!2340810))))

(declare-fun b!6191339 () Bool)

(declare-fun res!2561349 () Bool)

(declare-fun e!3770632 () Bool)

(assert (=> b!6191339 (=> res!2561349 e!3770632)))

(assert (=> b!6191339 (= res!2561349 (not ((_ is Concat!24974) lt!2340810)))))

(declare-fun e!3770631 () Bool)

(assert (=> b!6191339 (= e!3770631 e!3770632)))

(declare-fun b!6191340 () Bool)

(assert (=> b!6191340 (= e!3770632 e!3770633)))

(declare-fun res!2561353 () Bool)

(assert (=> b!6191340 (=> (not res!2561353) (not e!3770633))))

(assert (=> b!6191340 (= res!2561353 call!517722)))

(declare-fun b!6191341 () Bool)

(assert (=> b!6191341 (= e!3770627 e!3770631)))

(assert (=> b!6191341 (= c!1117070 ((_ is Union!16129) lt!2340810))))

(declare-fun b!6191342 () Bool)

(declare-fun res!2561352 () Bool)

(assert (=> b!6191342 (=> (not res!2561352) (not e!3770629))))

(assert (=> b!6191342 (= res!2561352 call!517722)))

(assert (=> b!6191342 (= e!3770631 e!3770629)))

(assert (= (and d!1941036 (not res!2561351)) b!6191338))

(assert (= (and b!6191338 c!1117069) b!6191336))

(assert (= (and b!6191338 (not c!1117069)) b!6191341))

(assert (= (and b!6191336 res!2561350) b!6191334))

(assert (= (and b!6191341 c!1117070) b!6191342))

(assert (= (and b!6191341 (not c!1117070)) b!6191339))

(assert (= (and b!6191342 res!2561352) b!6191337))

(assert (= (and b!6191339 (not res!2561349)) b!6191340))

(assert (= (and b!6191340 res!2561353) b!6191335))

(assert (= (or b!6191337 b!6191335) bm!517716))

(assert (= (or b!6191342 b!6191340) bm!517715))

(assert (= (or b!6191334 bm!517716) bm!517717))

(declare-fun m!7025532 () Bool)

(assert (=> bm!517715 m!7025532))

(declare-fun m!7025534 () Bool)

(assert (=> bm!517717 m!7025534))

(declare-fun m!7025536 () Bool)

(assert (=> b!6191336 m!7025536))

(assert (=> d!1940494 d!1941036))

(declare-fun d!1941038 () Bool)

(declare-fun res!2561354 () Bool)

(declare-fun e!3770638 () Bool)

(assert (=> d!1941038 (=> res!2561354 e!3770638)))

(assert (=> d!1941038 (= res!2561354 ((_ is Nil!64563) lt!2340726))))

(assert (=> d!1941038 (= (forall!15245 lt!2340726 lambda!338031) e!3770638)))

(declare-fun b!6191351 () Bool)

(declare-fun e!3770639 () Bool)

(assert (=> b!6191351 (= e!3770638 e!3770639)))

(declare-fun res!2561355 () Bool)

(assert (=> b!6191351 (=> (not res!2561355) (not e!3770639))))

(assert (=> b!6191351 (= res!2561355 (dynLambda!25460 lambda!338031 (h!71011 lt!2340726)))))

(declare-fun b!6191352 () Bool)

(assert (=> b!6191352 (= e!3770639 (forall!15245 (t!378197 lt!2340726) lambda!338031))))

(assert (= (and d!1941038 (not res!2561354)) b!6191351))

(assert (= (and b!6191351 res!2561355) b!6191352))

(declare-fun b_lambda!235533 () Bool)

(assert (=> (not b_lambda!235533) (not b!6191351)))

(declare-fun m!7025538 () Bool)

(assert (=> b!6191351 m!7025538))

(declare-fun m!7025540 () Bool)

(assert (=> b!6191352 m!7025540))

(assert (=> d!1940494 d!1941038))

(declare-fun d!1941040 () Bool)

(assert (=> d!1941040 (= (isEmpty!36547 (t!378197 lt!2340726)) ((_ is Nil!64563) (t!378197 lt!2340726)))))

(assert (=> b!6190222 d!1941040))

(assert (=> bs!1535502 d!1940554))

(assert (=> d!1940558 d!1940552))

(declare-fun d!1941042 () Bool)

(assert (=> d!1941042 (= (flatMap!1634 z!1189 lambda!337985) (dynLambda!25459 lambda!337985 (h!71012 zl!343)))))

(assert (=> d!1941042 true))

(declare-fun _$13!3182 () Unit!157811)

(assert (=> d!1941042 (= (choose!45994 z!1189 (h!71012 zl!343) lambda!337985) _$13!3182)))

(declare-fun b_lambda!235535 () Bool)

(assert (=> (not b_lambda!235535) (not d!1941042)))

(declare-fun bs!1535923 () Bool)

(assert (= bs!1535923 d!1941042))

(assert (=> bs!1535923 m!7023876))

(assert (=> bs!1535923 m!7024634))

(assert (=> d!1940558 d!1941042))

(assert (=> b!6190310 d!1940626))

(declare-fun d!1941044 () Bool)

(declare-fun c!1117081 () Bool)

(assert (=> d!1941044 (= c!1117081 (isEmpty!36550 (tail!11856 (t!378196 s!2326))))))

(declare-fun e!3770646 () Bool)

(assert (=> d!1941044 (= (matchZipper!2141 (derivationStepZipper!2097 ((_ map or) lt!2340714 lt!2340723) (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))) e!3770646)))

(declare-fun b!6191365 () Bool)

(assert (=> b!6191365 (= e!3770646 (nullableZipper!1905 (derivationStepZipper!2097 ((_ map or) lt!2340714 lt!2340723) (head!12771 (t!378196 s!2326)))))))

(declare-fun b!6191366 () Bool)

(assert (=> b!6191366 (= e!3770646 (matchZipper!2141 (derivationStepZipper!2097 (derivationStepZipper!2097 ((_ map or) lt!2340714 lt!2340723) (head!12771 (t!378196 s!2326))) (head!12771 (tail!11856 (t!378196 s!2326)))) (tail!11856 (tail!11856 (t!378196 s!2326)))))))

(assert (= (and d!1941044 c!1117081) b!6191365))

(assert (= (and d!1941044 (not c!1117081)) b!6191366))

(assert (=> d!1941044 m!7024486))

(assert (=> d!1941044 m!7024926))

(assert (=> b!6191365 m!7024762))

(declare-fun m!7025542 () Bool)

(assert (=> b!6191365 m!7025542))

(assert (=> b!6191366 m!7024486))

(assert (=> b!6191366 m!7024930))

(assert (=> b!6191366 m!7024762))

(assert (=> b!6191366 m!7024930))

(declare-fun m!7025544 () Bool)

(assert (=> b!6191366 m!7025544))

(assert (=> b!6191366 m!7024486))

(assert (=> b!6191366 m!7024934))

(assert (=> b!6191366 m!7025544))

(assert (=> b!6191366 m!7024934))

(declare-fun m!7025546 () Bool)

(assert (=> b!6191366 m!7025546))

(assert (=> b!6190510 d!1941044))

(declare-fun bs!1535924 () Bool)

(declare-fun d!1941046 () Bool)

(assert (= bs!1535924 (and d!1941046 d!1941034)))

(declare-fun lambda!338122 () Int)

(assert (=> bs!1535924 (= lambda!338122 lambda!338121)))

(declare-fun bs!1535925 () Bool)

(assert (= bs!1535925 (and d!1941046 d!1940814)))

(assert (=> bs!1535925 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338122 lambda!338079))))

(declare-fun bs!1535926 () Bool)

(assert (= bs!1535926 (and d!1941046 d!1940972)))

(assert (=> bs!1535926 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338122 lambda!338116))))

(declare-fun bs!1535927 () Bool)

(assert (= bs!1535927 (and d!1941046 d!1940774)))

(assert (=> bs!1535927 (= lambda!338122 lambda!338071)))

(declare-fun bs!1535928 () Bool)

(assert (= bs!1535928 (and d!1941046 d!1940722)))

(assert (=> bs!1535928 (= lambda!338122 lambda!338068)))

(declare-fun bs!1535929 () Bool)

(assert (= bs!1535929 (and d!1941046 d!1940742)))

(assert (=> bs!1535929 (= lambda!338122 lambda!338070)))

(declare-fun bs!1535930 () Bool)

(assert (= bs!1535930 (and d!1941046 d!1940700)))

(assert (=> bs!1535930 (= lambda!338122 lambda!338061)))

(declare-fun bs!1535931 () Bool)

(assert (= bs!1535931 (and d!1941046 b!6189536)))

(assert (=> bs!1535931 (= (= (head!12771 (t!378196 s!2326)) (h!71010 s!2326)) (= lambda!338122 lambda!337985))))

(declare-fun bs!1535932 () Bool)

(assert (= bs!1535932 (and d!1941046 d!1940624)))

(assert (=> bs!1535932 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338122 lambda!338058))))

(assert (=> d!1941046 true))

(assert (=> d!1941046 (= (derivationStepZipper!2097 ((_ map or) lt!2340714 lt!2340723) (head!12771 (t!378196 s!2326))) (flatMap!1634 ((_ map or) lt!2340714 lt!2340723) lambda!338122))))

(declare-fun bs!1535933 () Bool)

(assert (= bs!1535933 d!1941046))

(declare-fun m!7025548 () Bool)

(assert (=> bs!1535933 m!7025548))

(assert (=> b!6190510 d!1941046))

(assert (=> b!6190510 d!1940702))

(assert (=> b!6190510 d!1940704))

(assert (=> d!1940486 d!1940490))

(assert (=> d!1940486 d!1940564))

(declare-fun d!1941048 () Bool)

(assert (=> d!1941048 (= (matchR!8312 lt!2340713 s!2326) (matchZipper!2141 lt!2340690 s!2326))))

(assert (=> d!1941048 true))

(declare-fun _$44!1563 () Unit!157811)

(assert (=> d!1941048 (= (choose!45990 lt!2340690 lt!2340700 lt!2340713 s!2326) _$44!1563)))

(declare-fun bs!1535934 () Bool)

(assert (= bs!1535934 d!1941048))

(assert (=> bs!1535934 m!7023954))

(assert (=> bs!1535934 m!7023926))

(assert (=> d!1940486 d!1941048))

(assert (=> d!1940486 d!1940616))

(declare-fun d!1941050 () Bool)

(assert (=> d!1941050 (= (isEmpty!36547 (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343))))) ((_ is Nil!64563) (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343))))))))

(assert (=> b!6190505 d!1941050))

(declare-fun bm!517730 () Bool)

(declare-fun call!517737 () Bool)

(declare-fun c!1117088 () Bool)

(assert (=> bm!517730 (= call!517737 (validRegex!7865 (ite c!1117088 (regOne!32771 lt!2340855) (regOne!32770 lt!2340855))))))

(declare-fun b!6191379 () Bool)

(declare-fun e!3770655 () Bool)

(declare-fun call!517736 () Bool)

(assert (=> b!6191379 (= e!3770655 call!517736)))

(declare-fun d!1941054 () Bool)

(declare-fun res!2561360 () Bool)

(declare-fun e!3770657 () Bool)

(assert (=> d!1941054 (=> res!2561360 e!3770657)))

(assert (=> d!1941054 (= res!2561360 ((_ is ElementMatch!16129) lt!2340855))))

(assert (=> d!1941054 (= (validRegex!7865 lt!2340855) e!3770657)))

(declare-fun bm!517731 () Bool)

(declare-fun call!517735 () Bool)

(assert (=> bm!517731 (= call!517735 call!517736)))

(declare-fun bm!517732 () Bool)

(declare-fun c!1117087 () Bool)

(assert (=> bm!517732 (= call!517736 (validRegex!7865 (ite c!1117087 (reg!16458 lt!2340855) (ite c!1117088 (regTwo!32771 lt!2340855) (regTwo!32770 lt!2340855)))))))

(declare-fun b!6191380 () Bool)

(declare-fun e!3770660 () Bool)

(assert (=> b!6191380 (= e!3770660 call!517735)))

(declare-fun b!6191381 () Bool)

(declare-fun e!3770652 () Bool)

(assert (=> b!6191381 (= e!3770652 e!3770655)))

(declare-fun res!2561359 () Bool)

(assert (=> b!6191381 (= res!2561359 (not (nullable!6122 (reg!16458 lt!2340855))))))

(assert (=> b!6191381 (=> (not res!2561359) (not e!3770655))))

(declare-fun b!6191382 () Bool)

(declare-fun e!3770656 () Bool)

(assert (=> b!6191382 (= e!3770656 call!517735)))

(declare-fun b!6191383 () Bool)

(assert (=> b!6191383 (= e!3770657 e!3770652)))

(assert (=> b!6191383 (= c!1117087 ((_ is Star!16129) lt!2340855))))

(declare-fun b!6191384 () Bool)

(declare-fun res!2561356 () Bool)

(declare-fun e!3770659 () Bool)

(assert (=> b!6191384 (=> res!2561356 e!3770659)))

(assert (=> b!6191384 (= res!2561356 (not ((_ is Concat!24974) lt!2340855)))))

(declare-fun e!3770658 () Bool)

(assert (=> b!6191384 (= e!3770658 e!3770659)))

(declare-fun b!6191385 () Bool)

(assert (=> b!6191385 (= e!3770659 e!3770660)))

(declare-fun res!2561362 () Bool)

(assert (=> b!6191385 (=> (not res!2561362) (not e!3770660))))

(assert (=> b!6191385 (= res!2561362 call!517737)))

(declare-fun b!6191386 () Bool)

(assert (=> b!6191386 (= e!3770652 e!3770658)))

(assert (=> b!6191386 (= c!1117088 ((_ is Union!16129) lt!2340855))))

(declare-fun b!6191387 () Bool)

(declare-fun res!2561361 () Bool)

(assert (=> b!6191387 (=> (not res!2561361) (not e!3770656))))

(assert (=> b!6191387 (= res!2561361 call!517737)))

(assert (=> b!6191387 (= e!3770658 e!3770656)))

(assert (= (and d!1941054 (not res!2561360)) b!6191383))

(assert (= (and b!6191383 c!1117087) b!6191381))

(assert (= (and b!6191383 (not c!1117087)) b!6191386))

(assert (= (and b!6191381 res!2561359) b!6191379))

(assert (= (and b!6191386 c!1117088) b!6191387))

(assert (= (and b!6191386 (not c!1117088)) b!6191384))

(assert (= (and b!6191387 res!2561361) b!6191382))

(assert (= (and b!6191384 (not res!2561356)) b!6191385))

(assert (= (and b!6191385 res!2561362) b!6191380))

(assert (= (or b!6191382 b!6191380) bm!517731))

(assert (= (or b!6191387 b!6191385) bm!517730))

(assert (= (or b!6191379 bm!517731) bm!517732))

(declare-fun m!7025562 () Bool)

(assert (=> bm!517730 m!7025562))

(declare-fun m!7025564 () Bool)

(assert (=> bm!517732 m!7025564))

(declare-fun m!7025566 () Bool)

(assert (=> b!6191381 m!7025566))

(assert (=> d!1940600 d!1941054))

(declare-fun d!1941058 () Bool)

(declare-fun res!2561364 () Bool)

(declare-fun e!3770667 () Bool)

(assert (=> d!1941058 (=> res!2561364 e!3770667)))

(assert (=> d!1941058 (= res!2561364 ((_ is Nil!64563) (t!378197 (exprs!6013 (h!71012 zl!343)))))))

(assert (=> d!1941058 (= (forall!15245 (t!378197 (exprs!6013 (h!71012 zl!343))) lambda!338055) e!3770667)))

(declare-fun b!6191399 () Bool)

(declare-fun e!3770668 () Bool)

(assert (=> b!6191399 (= e!3770667 e!3770668)))

(declare-fun res!2561365 () Bool)

(assert (=> b!6191399 (=> (not res!2561365) (not e!3770668))))

(assert (=> b!6191399 (= res!2561365 (dynLambda!25460 lambda!338055 (h!71011 (t!378197 (exprs!6013 (h!71012 zl!343))))))))

(declare-fun b!6191400 () Bool)

(assert (=> b!6191400 (= e!3770668 (forall!15245 (t!378197 (t!378197 (exprs!6013 (h!71012 zl!343)))) lambda!338055))))

(assert (= (and d!1941058 (not res!2561364)) b!6191399))

(assert (= (and b!6191399 res!2561365) b!6191400))

(declare-fun b_lambda!235539 () Bool)

(assert (=> (not b_lambda!235539) (not b!6191399)))

(declare-fun m!7025568 () Bool)

(assert (=> b!6191399 m!7025568))

(declare-fun m!7025570 () Bool)

(assert (=> b!6191400 m!7025570))

(assert (=> d!1940600 d!1941058))

(declare-fun d!1941060 () Bool)

(assert (=> d!1941060 (= (isEmpty!36547 (unfocusZipperList!1550 zl!343)) ((_ is Nil!64563) (unfocusZipperList!1550 zl!343)))))

(assert (=> b!6190343 d!1941060))

(declare-fun d!1941062 () Bool)

(assert (=> d!1941062 (= (isConcat!1064 lt!2340796) ((_ is Concat!24974) lt!2340796))))

(assert (=> b!6190090 d!1941062))

(declare-fun d!1941064 () Bool)

(assert (=> d!1941064 (= (nullable!6122 (reg!16458 (regOne!32771 (regOne!32770 r!7292)))) (nullableFct!2080 (reg!16458 (regOne!32771 (regOne!32770 r!7292)))))))

(declare-fun bs!1535935 () Bool)

(assert (= bs!1535935 d!1941064))

(declare-fun m!7025572 () Bool)

(assert (=> bs!1535935 m!7025572))

(assert (=> b!6190387 d!1941064))

(declare-fun b!6191401 () Bool)

(declare-fun c!1117097 () Bool)

(assert (=> b!6191401 (= c!1117097 ((_ is Star!16129) (h!71011 (exprs!6013 lt!2340697))))))

(declare-fun e!3770669 () (InoxSet Context!11026))

(declare-fun e!3770672 () (InoxSet Context!11026))

(assert (=> b!6191401 (= e!3770669 e!3770672)))

(declare-fun b!6191402 () Bool)

(assert (=> b!6191402 (= e!3770672 ((as const (Array Context!11026 Bool)) false))))

(declare-fun bm!517739 () Bool)

(declare-fun call!517745 () (InoxSet Context!11026))

(declare-fun call!517747 () (InoxSet Context!11026))

(assert (=> bm!517739 (= call!517745 call!517747)))

(declare-fun bm!517740 () Bool)

(declare-fun call!517749 () List!64687)

(declare-fun call!517748 () List!64687)

(assert (=> bm!517740 (= call!517749 call!517748)))

(declare-fun b!6191403 () Bool)

(declare-fun e!3770670 () (InoxSet Context!11026))

(declare-fun call!517744 () (InoxSet Context!11026))

(declare-fun call!517746 () (InoxSet Context!11026))

(assert (=> b!6191403 (= e!3770670 ((_ map or) call!517744 call!517746))))

(declare-fun b!6191404 () Bool)

(declare-fun e!3770674 () (InoxSet Context!11026))

(assert (=> b!6191404 (= e!3770674 e!3770669)))

(declare-fun c!1117095 () Bool)

(assert (=> b!6191404 (= c!1117095 ((_ is Concat!24974) (h!71011 (exprs!6013 lt!2340697))))))

(declare-fun bm!517741 () Bool)

(declare-fun c!1117098 () Bool)

(assert (=> bm!517741 (= call!517748 ($colon$colon!2000 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340697)))) (ite (or c!1117098 c!1117095) (regTwo!32770 (h!71011 (exprs!6013 lt!2340697))) (h!71011 (exprs!6013 lt!2340697)))))))

(declare-fun bm!517742 () Bool)

(declare-fun c!1117094 () Bool)

(assert (=> bm!517742 (= call!517744 (derivationStepZipperDown!1377 (ite c!1117094 (regOne!32771 (h!71011 (exprs!6013 lt!2340697))) (regOne!32770 (h!71011 (exprs!6013 lt!2340697)))) (ite c!1117094 (Context!11027 (t!378197 (exprs!6013 lt!2340697))) (Context!11027 call!517748)) (h!71010 s!2326)))))

(declare-fun bm!517743 () Bool)

(assert (=> bm!517743 (= call!517747 call!517746)))

(declare-fun b!6191405 () Bool)

(declare-fun e!3770671 () Bool)

(assert (=> b!6191405 (= e!3770671 (nullable!6122 (regOne!32770 (h!71011 (exprs!6013 lt!2340697)))))))

(declare-fun bm!517744 () Bool)

(assert (=> bm!517744 (= call!517746 (derivationStepZipperDown!1377 (ite c!1117094 (regTwo!32771 (h!71011 (exprs!6013 lt!2340697))) (ite c!1117098 (regTwo!32770 (h!71011 (exprs!6013 lt!2340697))) (ite c!1117095 (regOne!32770 (h!71011 (exprs!6013 lt!2340697))) (reg!16458 (h!71011 (exprs!6013 lt!2340697)))))) (ite (or c!1117094 c!1117098) (Context!11027 (t!378197 (exprs!6013 lt!2340697))) (Context!11027 call!517749)) (h!71010 s!2326)))))

(declare-fun b!6191406 () Bool)

(assert (=> b!6191406 (= c!1117098 e!3770671)))

(declare-fun res!2561366 () Bool)

(assert (=> b!6191406 (=> (not res!2561366) (not e!3770671))))

(assert (=> b!6191406 (= res!2561366 ((_ is Concat!24974) (h!71011 (exprs!6013 lt!2340697))))))

(assert (=> b!6191406 (= e!3770670 e!3770674)))

(declare-fun d!1941066 () Bool)

(declare-fun c!1117096 () Bool)

(assert (=> d!1941066 (= c!1117096 (and ((_ is ElementMatch!16129) (h!71011 (exprs!6013 lt!2340697))) (= (c!1116552 (h!71011 (exprs!6013 lt!2340697))) (h!71010 s!2326))))))

(declare-fun e!3770673 () (InoxSet Context!11026))

(assert (=> d!1941066 (= (derivationStepZipperDown!1377 (h!71011 (exprs!6013 lt!2340697)) (Context!11027 (t!378197 (exprs!6013 lt!2340697))) (h!71010 s!2326)) e!3770673)))

(declare-fun b!6191407 () Bool)

(assert (=> b!6191407 (= e!3770669 call!517745)))

(declare-fun b!6191408 () Bool)

(assert (=> b!6191408 (= e!3770672 call!517745)))

(declare-fun b!6191409 () Bool)

(assert (=> b!6191409 (= e!3770673 (store ((as const (Array Context!11026 Bool)) false) (Context!11027 (t!378197 (exprs!6013 lt!2340697))) true))))

(declare-fun b!6191410 () Bool)

(assert (=> b!6191410 (= e!3770674 ((_ map or) call!517744 call!517747))))

(declare-fun b!6191411 () Bool)

(assert (=> b!6191411 (= e!3770673 e!3770670)))

(assert (=> b!6191411 (= c!1117094 ((_ is Union!16129) (h!71011 (exprs!6013 lt!2340697))))))

(assert (= (and d!1941066 c!1117096) b!6191409))

(assert (= (and d!1941066 (not c!1117096)) b!6191411))

(assert (= (and b!6191411 c!1117094) b!6191403))

(assert (= (and b!6191411 (not c!1117094)) b!6191406))

(assert (= (and b!6191406 res!2561366) b!6191405))

(assert (= (and b!6191406 c!1117098) b!6191410))

(assert (= (and b!6191406 (not c!1117098)) b!6191404))

(assert (= (and b!6191404 c!1117095) b!6191407))

(assert (= (and b!6191404 (not c!1117095)) b!6191401))

(assert (= (and b!6191401 c!1117097) b!6191408))

(assert (= (and b!6191401 (not c!1117097)) b!6191402))

(assert (= (or b!6191407 b!6191408) bm!517740))

(assert (= (or b!6191407 b!6191408) bm!517739))

(assert (= (or b!6191410 bm!517740) bm!517741))

(assert (= (or b!6191410 bm!517739) bm!517743))

(assert (= (or b!6191403 bm!517743) bm!517744))

(assert (= (or b!6191403 b!6191410) bm!517742))

(declare-fun m!7025596 () Bool)

(assert (=> b!6191409 m!7025596))

(declare-fun m!7025598 () Bool)

(assert (=> bm!517741 m!7025598))

(declare-fun m!7025600 () Bool)

(assert (=> b!6191405 m!7025600))

(declare-fun m!7025602 () Bool)

(assert (=> bm!517744 m!7025602))

(declare-fun m!7025604 () Bool)

(assert (=> bm!517742 m!7025604))

(assert (=> bm!517549 d!1941066))

(declare-fun bm!517745 () Bool)

(declare-fun call!517752 () Bool)

(declare-fun c!1117101 () Bool)

(assert (=> bm!517745 (= call!517752 (validRegex!7865 (ite c!1117101 (regOne!32771 lt!2340809) (regOne!32770 lt!2340809))))))

(declare-fun b!6191414 () Bool)

(declare-fun e!3770677 () Bool)

(declare-fun call!517751 () Bool)

(assert (=> b!6191414 (= e!3770677 call!517751)))

(declare-fun d!1941072 () Bool)

(declare-fun res!2561369 () Bool)

(declare-fun e!3770679 () Bool)

(assert (=> d!1941072 (=> res!2561369 e!3770679)))

(assert (=> d!1941072 (= res!2561369 ((_ is ElementMatch!16129) lt!2340809))))

(assert (=> d!1941072 (= (validRegex!7865 lt!2340809) e!3770679)))

(declare-fun bm!517746 () Bool)

(declare-fun call!517750 () Bool)

(assert (=> bm!517746 (= call!517750 call!517751)))

(declare-fun bm!517747 () Bool)

(declare-fun c!1117100 () Bool)

(assert (=> bm!517747 (= call!517751 (validRegex!7865 (ite c!1117100 (reg!16458 lt!2340809) (ite c!1117101 (regTwo!32771 lt!2340809) (regTwo!32770 lt!2340809)))))))

(declare-fun b!6191415 () Bool)

(declare-fun e!3770682 () Bool)

(assert (=> b!6191415 (= e!3770682 call!517750)))

(declare-fun b!6191416 () Bool)

(declare-fun e!3770676 () Bool)

(assert (=> b!6191416 (= e!3770676 e!3770677)))

(declare-fun res!2561368 () Bool)

(assert (=> b!6191416 (= res!2561368 (not (nullable!6122 (reg!16458 lt!2340809))))))

(assert (=> b!6191416 (=> (not res!2561368) (not e!3770677))))

(declare-fun b!6191417 () Bool)

(declare-fun e!3770678 () Bool)

(assert (=> b!6191417 (= e!3770678 call!517750)))

(declare-fun b!6191418 () Bool)

(assert (=> b!6191418 (= e!3770679 e!3770676)))

(assert (=> b!6191418 (= c!1117100 ((_ is Star!16129) lt!2340809))))

(declare-fun b!6191419 () Bool)

(declare-fun res!2561367 () Bool)

(declare-fun e!3770681 () Bool)

(assert (=> b!6191419 (=> res!2561367 e!3770681)))

(assert (=> b!6191419 (= res!2561367 (not ((_ is Concat!24974) lt!2340809)))))

(declare-fun e!3770680 () Bool)

(assert (=> b!6191419 (= e!3770680 e!3770681)))

(declare-fun b!6191420 () Bool)

(assert (=> b!6191420 (= e!3770681 e!3770682)))

(declare-fun res!2561371 () Bool)

(assert (=> b!6191420 (=> (not res!2561371) (not e!3770682))))

(assert (=> b!6191420 (= res!2561371 call!517752)))

(declare-fun b!6191421 () Bool)

(assert (=> b!6191421 (= e!3770676 e!3770680)))

(assert (=> b!6191421 (= c!1117101 ((_ is Union!16129) lt!2340809))))

(declare-fun b!6191422 () Bool)

(declare-fun res!2561370 () Bool)

(assert (=> b!6191422 (=> (not res!2561370) (not e!3770678))))

(assert (=> b!6191422 (= res!2561370 call!517752)))

(assert (=> b!6191422 (= e!3770680 e!3770678)))

(assert (= (and d!1941072 (not res!2561369)) b!6191418))

(assert (= (and b!6191418 c!1117100) b!6191416))

(assert (= (and b!6191418 (not c!1117100)) b!6191421))

(assert (= (and b!6191416 res!2561368) b!6191414))

(assert (= (and b!6191421 c!1117101) b!6191422))

(assert (= (and b!6191421 (not c!1117101)) b!6191419))

(assert (= (and b!6191422 res!2561370) b!6191417))

(assert (= (and b!6191419 (not res!2561367)) b!6191420))

(assert (= (and b!6191420 res!2561371) b!6191415))

(assert (= (or b!6191417 b!6191415) bm!517746))

(assert (= (or b!6191422 b!6191420) bm!517745))

(assert (= (or b!6191414 bm!517746) bm!517747))

(declare-fun m!7025608 () Bool)

(assert (=> bm!517745 m!7025608))

(declare-fun m!7025610 () Bool)

(assert (=> bm!517747 m!7025610))

(declare-fun m!7025612 () Bool)

(assert (=> b!6191416 m!7025612))

(assert (=> d!1940492 d!1941072))

(declare-fun d!1941080 () Bool)

(declare-fun res!2561372 () Bool)

(declare-fun e!3770684 () Bool)

(assert (=> d!1941080 (=> res!2561372 e!3770684)))

(assert (=> d!1941080 (= res!2561372 ((_ is Nil!64563) lt!2340694))))

(assert (=> d!1941080 (= (forall!15245 lt!2340694 lambda!338030) e!3770684)))

(declare-fun b!6191425 () Bool)

(declare-fun e!3770685 () Bool)

(assert (=> b!6191425 (= e!3770684 e!3770685)))

(declare-fun res!2561373 () Bool)

(assert (=> b!6191425 (=> (not res!2561373) (not e!3770685))))

(assert (=> b!6191425 (= res!2561373 (dynLambda!25460 lambda!338030 (h!71011 lt!2340694)))))

(declare-fun b!6191426 () Bool)

(assert (=> b!6191426 (= e!3770685 (forall!15245 (t!378197 lt!2340694) lambda!338030))))

(assert (= (and d!1941080 (not res!2561372)) b!6191425))

(assert (= (and b!6191425 res!2561373) b!6191426))

(declare-fun b_lambda!235541 () Bool)

(assert (=> (not b_lambda!235541) (not b!6191425)))

(declare-fun m!7025614 () Bool)

(assert (=> b!6191425 m!7025614))

(declare-fun m!7025616 () Bool)

(assert (=> b!6191426 m!7025616))

(assert (=> d!1940492 d!1941080))

(declare-fun d!1941082 () Bool)

(assert (=> d!1941082 (= (isEmpty!36547 (t!378197 lt!2340694)) ((_ is Nil!64563) (t!378197 lt!2340694)))))

(assert (=> b!6190212 d!1941082))

(declare-fun d!1941084 () Bool)

(declare-fun res!2561374 () Bool)

(declare-fun e!3770686 () Bool)

(assert (=> d!1941084 (=> res!2561374 e!3770686)))

(assert (=> d!1941084 (= res!2561374 ((_ is Nil!64563) (exprs!6013 setElem!41986)))))

(assert (=> d!1941084 (= (forall!15245 (exprs!6013 setElem!41986) lambda!338038) e!3770686)))

(declare-fun b!6191427 () Bool)

(declare-fun e!3770687 () Bool)

(assert (=> b!6191427 (= e!3770686 e!3770687)))

(declare-fun res!2561375 () Bool)

(assert (=> b!6191427 (=> (not res!2561375) (not e!3770687))))

(assert (=> b!6191427 (= res!2561375 (dynLambda!25460 lambda!338038 (h!71011 (exprs!6013 setElem!41986))))))

(declare-fun b!6191428 () Bool)

(assert (=> b!6191428 (= e!3770687 (forall!15245 (t!378197 (exprs!6013 setElem!41986)) lambda!338038))))

(assert (= (and d!1941084 (not res!2561374)) b!6191427))

(assert (= (and b!6191427 res!2561375) b!6191428))

(declare-fun b_lambda!235543 () Bool)

(assert (=> (not b_lambda!235543) (not b!6191427)))

(declare-fun m!7025618 () Bool)

(assert (=> b!6191427 m!7025618))

(declare-fun m!7025620 () Bool)

(assert (=> b!6191428 m!7025620))

(assert (=> d!1940526 d!1941084))

(assert (=> d!1940510 d!1940512))

(assert (=> d!1940510 d!1940498))

(declare-fun e!3770688 () Bool)

(declare-fun d!1941086 () Bool)

(assert (=> d!1941086 (= (matchZipper!2141 ((_ map or) lt!2340698 lt!2340723) (t!378196 s!2326)) e!3770688)))

(declare-fun res!2561376 () Bool)

(assert (=> d!1941086 (=> res!2561376 e!3770688)))

(assert (=> d!1941086 (= res!2561376 (matchZipper!2141 lt!2340698 (t!378196 s!2326)))))

(assert (=> d!1941086 true))

(declare-fun _$48!1820 () Unit!157811)

(assert (=> d!1941086 (= (choose!45991 lt!2340698 lt!2340723 (t!378196 s!2326)) _$48!1820)))

(declare-fun b!6191429 () Bool)

(assert (=> b!6191429 (= e!3770688 (matchZipper!2141 lt!2340723 (t!378196 s!2326)))))

(assert (= (and d!1941086 (not res!2561376)) b!6191429))

(assert (=> d!1941086 m!7023890))

(assert (=> d!1941086 m!7023888))

(assert (=> b!6191429 m!7023884))

(assert (=> d!1940510 d!1941086))

(declare-fun d!1941088 () Bool)

(declare-fun c!1117103 () Bool)

(declare-fun e!3770691 () Bool)

(assert (=> d!1941088 (= c!1117103 e!3770691)))

(declare-fun res!2561377 () Bool)

(assert (=> d!1941088 (=> (not res!2561377) (not e!3770691))))

(assert (=> d!1941088 (= res!2561377 ((_ is Cons!64563) (exprs!6013 (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343)))))))))

(declare-fun e!3770689 () (InoxSet Context!11026))

(assert (=> d!1941088 (= (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343)))) (h!71010 s!2326)) e!3770689)))

(declare-fun b!6191430 () Bool)

(declare-fun e!3770690 () (InoxSet Context!11026))

(assert (=> b!6191430 (= e!3770690 ((as const (Array Context!11026 Bool)) false))))

(declare-fun b!6191431 () Bool)

(assert (=> b!6191431 (= e!3770689 e!3770690)))

(declare-fun c!1117105 () Bool)

(assert (=> b!6191431 (= c!1117105 ((_ is Cons!64563) (exprs!6013 (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343)))))))))

(declare-fun b!6191432 () Bool)

(assert (=> b!6191432 (= e!3770691 (nullable!6122 (h!71011 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343))))))))))

(declare-fun bm!517748 () Bool)

(declare-fun call!517753 () (InoxSet Context!11026))

(assert (=> bm!517748 (= call!517753 (derivationStepZipperDown!1377 (h!71011 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343)))))) (Context!11027 (t!378197 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343))))))) (h!71010 s!2326)))))

(declare-fun b!6191433 () Bool)

(assert (=> b!6191433 (= e!3770690 call!517753)))

(declare-fun b!6191434 () Bool)

(assert (=> b!6191434 (= e!3770689 ((_ map or) call!517753 (derivationStepZipperUp!1303 (Context!11027 (t!378197 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343))))))) (h!71010 s!2326))))))

(assert (= (and d!1941088 res!2561377) b!6191432))

(assert (= (and d!1941088 c!1117103) b!6191434))

(assert (= (and d!1941088 (not c!1117103)) b!6191431))

(assert (= (and b!6191431 c!1117105) b!6191433))

(assert (= (and b!6191431 (not c!1117105)) b!6191430))

(assert (= (or b!6191434 b!6191433) bm!517748))

(declare-fun m!7025628 () Bool)

(assert (=> b!6191432 m!7025628))

(declare-fun m!7025630 () Bool)

(assert (=> bm!517748 m!7025630))

(declare-fun m!7025632 () Bool)

(assert (=> b!6191434 m!7025632))

(assert (=> b!6190424 d!1941088))

(assert (=> b!6190364 d!1940524))

(assert (=> d!1940502 d!1940732))

(assert (=> b!6190356 d!1940474))

(declare-fun bs!1535957 () Bool)

(declare-fun d!1941092 () Bool)

(assert (= bs!1535957 (and d!1941092 d!1940474)))

(declare-fun lambda!338126 () Int)

(assert (=> bs!1535957 (= lambda!338126 lambda!338023)))

(declare-fun bs!1535960 () Bool)

(assert (= bs!1535960 (and d!1941092 d!1940526)))

(assert (=> bs!1535960 (= lambda!338126 lambda!338038)))

(declare-fun bs!1535961 () Bool)

(assert (= bs!1535961 (and d!1941092 d!1940492)))

(assert (=> bs!1535961 (= lambda!338126 lambda!338030)))

(declare-fun bs!1535962 () Bool)

(assert (= bs!1535962 (and d!1941092 d!1940600)))

(assert (=> bs!1535962 (= lambda!338126 lambda!338055)))

(declare-fun bs!1535963 () Bool)

(assert (= bs!1535963 (and d!1941092 d!1940884)))

(assert (=> bs!1535963 (= lambda!338126 lambda!338099)))

(declare-fun bs!1535964 () Bool)

(assert (= bs!1535964 (and d!1941092 d!1940902)))

(assert (=> bs!1535964 (= lambda!338126 lambda!338103)))

(declare-fun bs!1535965 () Bool)

(assert (= bs!1535965 (and d!1941092 d!1940530)))

(assert (=> bs!1535965 (= lambda!338126 lambda!338042)))

(declare-fun bs!1535966 () Bool)

(assert (= bs!1535966 (and d!1941092 d!1940892)))

(assert (=> bs!1535966 (= lambda!338126 lambda!338101)))

(declare-fun bs!1535967 () Bool)

(assert (= bs!1535967 (and d!1941092 d!1940532)))

(assert (=> bs!1535967 (= lambda!338126 lambda!338045)))

(declare-fun bs!1535968 () Bool)

(assert (= bs!1535968 (and d!1941092 d!1940864)))

(assert (=> bs!1535968 (= lambda!338126 lambda!338096)))

(declare-fun bs!1535969 () Bool)

(assert (= bs!1535969 (and d!1941092 d!1940528)))

(assert (=> bs!1535969 (= lambda!338126 lambda!338039)))

(declare-fun bs!1535970 () Bool)

(assert (= bs!1535970 (and d!1941092 d!1940494)))

(assert (=> bs!1535970 (= lambda!338126 lambda!338031)))

(declare-fun lt!2340900 () List!64687)

(assert (=> d!1941092 (forall!15245 lt!2340900 lambda!338126)))

(declare-fun e!3770698 () List!64687)

(assert (=> d!1941092 (= lt!2340900 e!3770698)))

(declare-fun c!1117109 () Bool)

(assert (=> d!1941092 (= c!1117109 ((_ is Cons!64564) (t!378198 zl!343)))))

(assert (=> d!1941092 (= (unfocusZipperList!1550 (t!378198 zl!343)) lt!2340900)))

(declare-fun b!6191445 () Bool)

(assert (=> b!6191445 (= e!3770698 (Cons!64563 (generalisedConcat!1726 (exprs!6013 (h!71012 (t!378198 zl!343)))) (unfocusZipperList!1550 (t!378198 (t!378198 zl!343)))))))

(declare-fun b!6191446 () Bool)

(assert (=> b!6191446 (= e!3770698 Nil!64563)))

(assert (= (and d!1941092 c!1117109) b!6191445))

(assert (= (and d!1941092 (not c!1117109)) b!6191446))

(declare-fun m!7025652 () Bool)

(assert (=> d!1941092 m!7025652))

(declare-fun m!7025654 () Bool)

(assert (=> b!6191445 m!7025654))

(declare-fun m!7025656 () Bool)

(assert (=> b!6191445 m!7025656))

(assert (=> b!6190356 d!1941092))

(declare-fun d!1941096 () Bool)

(declare-fun res!2561383 () Bool)

(declare-fun e!3770706 () Bool)

(assert (=> d!1941096 (=> res!2561383 e!3770706)))

(assert (=> d!1941096 (= res!2561383 ((_ is Nil!64563) lt!2340825))))

(assert (=> d!1941096 (= (forall!15245 lt!2340825 lambda!338045) e!3770706)))

(declare-fun b!6191458 () Bool)

(declare-fun e!3770707 () Bool)

(assert (=> b!6191458 (= e!3770706 e!3770707)))

(declare-fun res!2561384 () Bool)

(assert (=> b!6191458 (=> (not res!2561384) (not e!3770707))))

(assert (=> b!6191458 (= res!2561384 (dynLambda!25460 lambda!338045 (h!71011 lt!2340825)))))

(declare-fun b!6191459 () Bool)

(assert (=> b!6191459 (= e!3770707 (forall!15245 (t!378197 lt!2340825) lambda!338045))))

(assert (= (and d!1941096 (not res!2561383)) b!6191458))

(assert (= (and b!6191458 res!2561384) b!6191459))

(declare-fun b_lambda!235545 () Bool)

(assert (=> (not b_lambda!235545) (not b!6191458)))

(declare-fun m!7025658 () Bool)

(assert (=> b!6191458 m!7025658))

(declare-fun m!7025660 () Bool)

(assert (=> b!6191459 m!7025660))

(assert (=> d!1940532 d!1941096))

(assert (=> b!6190181 d!1940626))

(declare-fun d!1941098 () Bool)

(assert (=> d!1941098 (= (isEmpty!36547 (exprs!6013 (h!71012 zl!343))) ((_ is Nil!64563) (exprs!6013 (h!71012 zl!343))))))

(assert (=> b!6190094 d!1941098))

(declare-fun d!1941100 () Bool)

(assert (=> d!1941100 true))

(declare-fun setRes!41996 () Bool)

(assert (=> d!1941100 setRes!41996))

(declare-fun condSetEmpty!41996 () Bool)

(declare-fun res!2561385 () (InoxSet Context!11026))

(assert (=> d!1941100 (= condSetEmpty!41996 (= res!2561385 ((as const (Array Context!11026 Bool)) false)))))

(assert (=> d!1941100 (= (choose!45993 lt!2340690 lambda!337985) res!2561385)))

(declare-fun setIsEmpty!41996 () Bool)

(assert (=> setIsEmpty!41996 setRes!41996))

(declare-fun e!3770708 () Bool)

(declare-fun setNonEmpty!41996 () Bool)

(declare-fun setElem!41996 () Context!11026)

(declare-fun tp!1727526 () Bool)

(assert (=> setNonEmpty!41996 (= setRes!41996 (and tp!1727526 (inv!83569 setElem!41996) e!3770708))))

(declare-fun setRest!41996 () (InoxSet Context!11026))

(assert (=> setNonEmpty!41996 (= res!2561385 ((_ map or) (store ((as const (Array Context!11026 Bool)) false) setElem!41996 true) setRest!41996))))

(declare-fun b!6191460 () Bool)

(declare-fun tp!1727525 () Bool)

(assert (=> b!6191460 (= e!3770708 tp!1727525)))

(assert (= (and d!1941100 condSetEmpty!41996) setIsEmpty!41996))

(assert (= (and d!1941100 (not condSetEmpty!41996)) setNonEmpty!41996))

(assert (= setNonEmpty!41996 b!6191460))

(declare-fun m!7025662 () Bool)

(assert (=> setNonEmpty!41996 m!7025662))

(assert (=> d!1940572 d!1941100))

(assert (=> bs!1535503 d!1940574))

(declare-fun d!1941102 () Bool)

(assert (=> d!1941102 (= (head!12770 lt!2340726) (h!71011 lt!2340726))))

(assert (=> b!6190220 d!1941102))

(declare-fun d!1941104 () Bool)

(declare-fun c!1117114 () Bool)

(assert (=> d!1941104 (= c!1117114 (isEmpty!36550 (tail!11856 (t!378196 s!2326))))))

(declare-fun e!3770709 () Bool)

(assert (=> d!1941104 (= (matchZipper!2141 (derivationStepZipper!2097 lt!2340701 (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))) e!3770709)))

(declare-fun b!6191461 () Bool)

(assert (=> b!6191461 (= e!3770709 (nullableZipper!1905 (derivationStepZipper!2097 lt!2340701 (head!12771 (t!378196 s!2326)))))))

(declare-fun b!6191462 () Bool)

(assert (=> b!6191462 (= e!3770709 (matchZipper!2141 (derivationStepZipper!2097 (derivationStepZipper!2097 lt!2340701 (head!12771 (t!378196 s!2326))) (head!12771 (tail!11856 (t!378196 s!2326)))) (tail!11856 (tail!11856 (t!378196 s!2326)))))))

(assert (= (and d!1941104 c!1117114) b!6191461))

(assert (= (and d!1941104 (not c!1117114)) b!6191462))

(assert (=> d!1941104 m!7024486))

(assert (=> d!1941104 m!7024926))

(assert (=> b!6191461 m!7024492))

(declare-fun m!7025664 () Bool)

(assert (=> b!6191461 m!7025664))

(assert (=> b!6191462 m!7024486))

(assert (=> b!6191462 m!7024930))

(assert (=> b!6191462 m!7024492))

(assert (=> b!6191462 m!7024930))

(declare-fun m!7025666 () Bool)

(assert (=> b!6191462 m!7025666))

(assert (=> b!6191462 m!7024486))

(assert (=> b!6191462 m!7024934))

(assert (=> b!6191462 m!7025666))

(assert (=> b!6191462 m!7024934))

(declare-fun m!7025668 () Bool)

(assert (=> b!6191462 m!7025668))

(assert (=> b!6190239 d!1941104))

(declare-fun bs!1535979 () Bool)

(declare-fun d!1941106 () Bool)

(assert (= bs!1535979 (and d!1941106 d!1941034)))

(declare-fun lambda!338128 () Int)

(assert (=> bs!1535979 (= lambda!338128 lambda!338121)))

(declare-fun bs!1535980 () Bool)

(assert (= bs!1535980 (and d!1941106 d!1940814)))

(assert (=> bs!1535980 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338128 lambda!338079))))

(declare-fun bs!1535981 () Bool)

(assert (= bs!1535981 (and d!1941106 d!1940972)))

(assert (=> bs!1535981 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338128 lambda!338116))))

(declare-fun bs!1535983 () Bool)

(assert (= bs!1535983 (and d!1941106 d!1940774)))

(assert (=> bs!1535983 (= lambda!338128 lambda!338071)))

(declare-fun bs!1535985 () Bool)

(assert (= bs!1535985 (and d!1941106 d!1940722)))

(assert (=> bs!1535985 (= lambda!338128 lambda!338068)))

(declare-fun bs!1535986 () Bool)

(assert (= bs!1535986 (and d!1941106 d!1941046)))

(assert (=> bs!1535986 (= lambda!338128 lambda!338122)))

(declare-fun bs!1535988 () Bool)

(assert (= bs!1535988 (and d!1941106 d!1940742)))

(assert (=> bs!1535988 (= lambda!338128 lambda!338070)))

(declare-fun bs!1535989 () Bool)

(assert (= bs!1535989 (and d!1941106 d!1940700)))

(assert (=> bs!1535989 (= lambda!338128 lambda!338061)))

(declare-fun bs!1535990 () Bool)

(assert (= bs!1535990 (and d!1941106 b!6189536)))

(assert (=> bs!1535990 (= (= (head!12771 (t!378196 s!2326)) (h!71010 s!2326)) (= lambda!338128 lambda!337985))))

(declare-fun bs!1535992 () Bool)

(assert (= bs!1535992 (and d!1941106 d!1940624)))

(assert (=> bs!1535992 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338128 lambda!338058))))

(assert (=> d!1941106 true))

(assert (=> d!1941106 (= (derivationStepZipper!2097 lt!2340701 (head!12771 (t!378196 s!2326))) (flatMap!1634 lt!2340701 lambda!338128))))

(declare-fun bs!1535994 () Bool)

(assert (= bs!1535994 d!1941106))

(declare-fun m!7025670 () Bool)

(assert (=> bs!1535994 m!7025670))

(assert (=> b!6190239 d!1941106))

(assert (=> b!6190239 d!1940702))

(assert (=> b!6190239 d!1940704))

(declare-fun d!1941108 () Bool)

(declare-fun e!3770711 () Bool)

(assert (=> d!1941108 e!3770711))

(declare-fun res!2561387 () Bool)

(assert (=> d!1941108 (=> (not res!2561387) (not e!3770711))))

(declare-fun lt!2340901 () List!64686)

(assert (=> d!1941108 (= res!2561387 (= (content!12061 lt!2340901) ((_ map or) (content!12061 (_1!36411 (get!22289 lt!2340844))) (content!12061 (_2!36411 (get!22289 lt!2340844))))))))

(declare-fun e!3770710 () List!64686)

(assert (=> d!1941108 (= lt!2340901 e!3770710)))

(declare-fun c!1117115 () Bool)

(assert (=> d!1941108 (= c!1117115 ((_ is Nil!64562) (_1!36411 (get!22289 lt!2340844))))))

(assert (=> d!1941108 (= (++!14209 (_1!36411 (get!22289 lt!2340844)) (_2!36411 (get!22289 lt!2340844))) lt!2340901)))

(declare-fun b!6191465 () Bool)

(declare-fun res!2561386 () Bool)

(assert (=> b!6191465 (=> (not res!2561386) (not e!3770711))))

(assert (=> b!6191465 (= res!2561386 (= (size!40261 lt!2340901) (+ (size!40261 (_1!36411 (get!22289 lt!2340844))) (size!40261 (_2!36411 (get!22289 lt!2340844))))))))

(declare-fun b!6191463 () Bool)

(assert (=> b!6191463 (= e!3770710 (_2!36411 (get!22289 lt!2340844)))))

(declare-fun b!6191464 () Bool)

(assert (=> b!6191464 (= e!3770710 (Cons!64562 (h!71010 (_1!36411 (get!22289 lt!2340844))) (++!14209 (t!378196 (_1!36411 (get!22289 lt!2340844))) (_2!36411 (get!22289 lt!2340844)))))))

(declare-fun b!6191466 () Bool)

(assert (=> b!6191466 (= e!3770711 (or (not (= (_2!36411 (get!22289 lt!2340844)) Nil!64562)) (= lt!2340901 (_1!36411 (get!22289 lt!2340844)))))))

(assert (= (and d!1941108 c!1117115) b!6191463))

(assert (= (and d!1941108 (not c!1117115)) b!6191464))

(assert (= (and d!1941108 res!2561387) b!6191465))

(assert (= (and b!6191465 res!2561386) b!6191466))

(declare-fun m!7025672 () Bool)

(assert (=> d!1941108 m!7025672))

(declare-fun m!7025674 () Bool)

(assert (=> d!1941108 m!7025674))

(declare-fun m!7025676 () Bool)

(assert (=> d!1941108 m!7025676))

(declare-fun m!7025678 () Bool)

(assert (=> b!6191465 m!7025678))

(declare-fun m!7025680 () Bool)

(assert (=> b!6191465 m!7025680))

(declare-fun m!7025682 () Bool)

(assert (=> b!6191465 m!7025682))

(declare-fun m!7025684 () Bool)

(assert (=> b!6191464 m!7025684))

(assert (=> b!6190466 d!1941108))

(declare-fun d!1941110 () Bool)

(assert (=> d!1941110 (= (get!22289 lt!2340844) (v!52162 lt!2340844))))

(assert (=> b!6190466 d!1941110))

(assert (=> d!1940484 d!1940480))

(assert (=> d!1940484 d!1940476))

(declare-fun d!1941112 () Bool)

(assert (=> d!1941112 (= (matchR!8312 lt!2340702 s!2326) (matchZipper!2141 lt!2340699 s!2326))))

(assert (=> d!1941112 true))

(declare-fun _$44!1564 () Unit!157811)

(assert (=> d!1941112 (= (choose!45990 lt!2340699 lt!2340691 lt!2340702 s!2326) _$44!1564)))

(declare-fun bs!1536002 () Bool)

(assert (= bs!1536002 d!1941112))

(assert (=> bs!1536002 m!7023956))

(assert (=> bs!1536002 m!7023942))

(assert (=> d!1940484 d!1941112))

(assert (=> d!1940484 d!1940930))

(declare-fun bs!1536006 () Bool)

(declare-fun d!1941114 () Bool)

(assert (= bs!1536006 (and d!1941114 d!1940474)))

(declare-fun lambda!338130 () Int)

(assert (=> bs!1536006 (= lambda!338130 lambda!338023)))

(declare-fun bs!1536007 () Bool)

(assert (= bs!1536007 (and d!1941114 d!1940526)))

(assert (=> bs!1536007 (= lambda!338130 lambda!338038)))

(declare-fun bs!1536009 () Bool)

(assert (= bs!1536009 (and d!1941114 d!1940492)))

(assert (=> bs!1536009 (= lambda!338130 lambda!338030)))

(declare-fun bs!1536011 () Bool)

(assert (= bs!1536011 (and d!1941114 d!1940600)))

(assert (=> bs!1536011 (= lambda!338130 lambda!338055)))

(declare-fun bs!1536012 () Bool)

(assert (= bs!1536012 (and d!1941114 d!1940884)))

(assert (=> bs!1536012 (= lambda!338130 lambda!338099)))

(declare-fun bs!1536013 () Bool)

(assert (= bs!1536013 (and d!1941114 d!1941092)))

(assert (=> bs!1536013 (= lambda!338130 lambda!338126)))

(declare-fun bs!1536014 () Bool)

(assert (= bs!1536014 (and d!1941114 d!1940902)))

(assert (=> bs!1536014 (= lambda!338130 lambda!338103)))

(declare-fun bs!1536016 () Bool)

(assert (= bs!1536016 (and d!1941114 d!1940530)))

(assert (=> bs!1536016 (= lambda!338130 lambda!338042)))

(declare-fun bs!1536017 () Bool)

(assert (= bs!1536017 (and d!1941114 d!1940892)))

(assert (=> bs!1536017 (= lambda!338130 lambda!338101)))

(declare-fun bs!1536019 () Bool)

(assert (= bs!1536019 (and d!1941114 d!1940532)))

(assert (=> bs!1536019 (= lambda!338130 lambda!338045)))

(declare-fun bs!1536021 () Bool)

(assert (= bs!1536021 (and d!1941114 d!1940864)))

(assert (=> bs!1536021 (= lambda!338130 lambda!338096)))

(declare-fun bs!1536022 () Bool)

(assert (= bs!1536022 (and d!1941114 d!1940528)))

(assert (=> bs!1536022 (= lambda!338130 lambda!338039)))

(declare-fun bs!1536024 () Bool)

(assert (= bs!1536024 (and d!1941114 d!1940494)))

(assert (=> bs!1536024 (= lambda!338130 lambda!338031)))

(declare-fun b!6191467 () Bool)

(declare-fun e!3770713 () Regex!16129)

(assert (=> b!6191467 (= e!3770713 (h!71011 (t!378197 (unfocusZipperList!1550 zl!343))))))

(declare-fun b!6191468 () Bool)

(declare-fun e!3770716 () Bool)

(declare-fun e!3770712 () Bool)

(assert (=> b!6191468 (= e!3770716 e!3770712)))

(declare-fun c!1117116 () Bool)

(assert (=> b!6191468 (= c!1117116 (isEmpty!36547 (t!378197 (unfocusZipperList!1550 zl!343))))))

(declare-fun b!6191469 () Bool)

(declare-fun e!3770717 () Bool)

(declare-fun lt!2340902 () Regex!16129)

(assert (=> b!6191469 (= e!3770717 (isUnion!980 lt!2340902))))

(declare-fun b!6191470 () Bool)

(assert (=> b!6191470 (= e!3770717 (= lt!2340902 (head!12770 (t!378197 (unfocusZipperList!1550 zl!343)))))))

(declare-fun b!6191471 () Bool)

(declare-fun e!3770714 () Bool)

(assert (=> b!6191471 (= e!3770714 (isEmpty!36547 (t!378197 (t!378197 (unfocusZipperList!1550 zl!343)))))))

(declare-fun b!6191472 () Bool)

(declare-fun e!3770715 () Regex!16129)

(assert (=> b!6191472 (= e!3770713 e!3770715)))

(declare-fun c!1117119 () Bool)

(assert (=> b!6191472 (= c!1117119 ((_ is Cons!64563) (t!378197 (unfocusZipperList!1550 zl!343))))))

(declare-fun b!6191473 () Bool)

(assert (=> b!6191473 (= e!3770715 EmptyLang!16129)))

(declare-fun b!6191474 () Bool)

(assert (=> b!6191474 (= e!3770712 e!3770717)))

(declare-fun c!1117118 () Bool)

(assert (=> b!6191474 (= c!1117118 (isEmpty!36547 (tail!11855 (t!378197 (unfocusZipperList!1550 zl!343)))))))

(declare-fun b!6191475 () Bool)

(assert (=> b!6191475 (= e!3770715 (Union!16129 (h!71011 (t!378197 (unfocusZipperList!1550 zl!343))) (generalisedUnion!1973 (t!378197 (t!378197 (unfocusZipperList!1550 zl!343))))))))

(assert (=> d!1941114 e!3770716))

(declare-fun res!2561388 () Bool)

(assert (=> d!1941114 (=> (not res!2561388) (not e!3770716))))

(assert (=> d!1941114 (= res!2561388 (validRegex!7865 lt!2340902))))

(assert (=> d!1941114 (= lt!2340902 e!3770713)))

(declare-fun c!1117117 () Bool)

(assert (=> d!1941114 (= c!1117117 e!3770714)))

(declare-fun res!2561389 () Bool)

(assert (=> d!1941114 (=> (not res!2561389) (not e!3770714))))

(assert (=> d!1941114 (= res!2561389 ((_ is Cons!64563) (t!378197 (unfocusZipperList!1550 zl!343))))))

(assert (=> d!1941114 (forall!15245 (t!378197 (unfocusZipperList!1550 zl!343)) lambda!338130)))

(assert (=> d!1941114 (= (generalisedUnion!1973 (t!378197 (unfocusZipperList!1550 zl!343))) lt!2340902)))

(declare-fun b!6191476 () Bool)

(assert (=> b!6191476 (= e!3770712 (isEmptyLang!1550 lt!2340902))))

(assert (= (and d!1941114 res!2561389) b!6191471))

(assert (= (and d!1941114 c!1117117) b!6191467))

(assert (= (and d!1941114 (not c!1117117)) b!6191472))

(assert (= (and b!6191472 c!1117119) b!6191475))

(assert (= (and b!6191472 (not c!1117119)) b!6191473))

(assert (= (and d!1941114 res!2561388) b!6191468))

(assert (= (and b!6191468 c!1117116) b!6191476))

(assert (= (and b!6191468 (not c!1117116)) b!6191474))

(assert (= (and b!6191474 c!1117118) b!6191470))

(assert (= (and b!6191474 (not c!1117118)) b!6191469))

(declare-fun m!7025686 () Bool)

(assert (=> b!6191469 m!7025686))

(declare-fun m!7025688 () Bool)

(assert (=> b!6191476 m!7025688))

(assert (=> b!6191468 m!7024580))

(declare-fun m!7025690 () Bool)

(assert (=> d!1941114 m!7025690))

(declare-fun m!7025692 () Bool)

(assert (=> d!1941114 m!7025692))

(declare-fun m!7025694 () Bool)

(assert (=> b!6191475 m!7025694))

(declare-fun m!7025696 () Bool)

(assert (=> b!6191474 m!7025696))

(assert (=> b!6191474 m!7025696))

(declare-fun m!7025698 () Bool)

(assert (=> b!6191474 m!7025698))

(declare-fun m!7025700 () Bool)

(assert (=> b!6191470 m!7025700))

(declare-fun m!7025702 () Bool)

(assert (=> b!6191471 m!7025702))

(assert (=> b!6190350 d!1941114))

(declare-fun bs!1536027 () Bool)

(declare-fun d!1941116 () Bool)

(assert (= bs!1536027 (and d!1941116 d!1940908)))

(declare-fun lambda!338131 () Int)

(assert (=> bs!1536027 (= lambda!338131 lambda!338104)))

(declare-fun bs!1536028 () Bool)

(assert (= bs!1536028 (and d!1941116 d!1940716)))

(assert (=> bs!1536028 (= lambda!338131 lambda!338066)))

(declare-fun bs!1536029 () Bool)

(assert (= bs!1536029 (and d!1941116 d!1940794)))

(assert (=> bs!1536029 (= lambda!338131 lambda!338078)))

(declare-fun bs!1536030 () Bool)

(assert (= bs!1536030 (and d!1941116 d!1940874)))

(assert (=> bs!1536030 (= lambda!338131 lambda!338098)))

(declare-fun bs!1536031 () Bool)

(assert (= bs!1536031 (and d!1941116 d!1940848)))

(assert (=> bs!1536031 (= lambda!338131 lambda!338094)))

(declare-fun bs!1536032 () Bool)

(assert (= bs!1536032 (and d!1941116 d!1940734)))

(assert (=> bs!1536032 (= lambda!338131 lambda!338069)))

(declare-fun bs!1536033 () Bool)

(assert (= bs!1536033 (and d!1941116 d!1940890)))

(assert (=> bs!1536033 (= lambda!338131 lambda!338100)))

(declare-fun bs!1536034 () Bool)

(assert (= bs!1536034 (and d!1941116 d!1940866)))

(assert (=> bs!1536034 (= lambda!338131 lambda!338097)))

(assert (=> d!1941116 (= (nullableZipper!1905 z!1189) (exists!2466 z!1189 lambda!338131))))

(declare-fun bs!1536035 () Bool)

(assert (= bs!1536035 d!1941116))

(declare-fun m!7025710 () Bool)

(assert (=> bs!1536035 m!7025710))

(assert (=> b!6190442 d!1941116))

(declare-fun bs!1536036 () Bool)

(declare-fun b!6191494 () Bool)

(assert (= bs!1536036 (and b!6191494 d!1940588)))

(declare-fun lambda!338132 () Int)

(assert (=> bs!1536036 (not (= lambda!338132 lambda!338053))))

(declare-fun bs!1536037 () Bool)

(assert (= bs!1536037 (and b!6191494 b!6190298)))

(assert (=> bs!1536037 (= (and (= (reg!16458 (regTwo!32771 lt!2340702)) (reg!16458 r!7292)) (= (regTwo!32771 lt!2340702) r!7292)) (= lambda!338132 lambda!338034))))

(declare-fun bs!1536038 () Bool)

(assert (= bs!1536038 (and b!6191494 b!6190848)))

(assert (=> bs!1536038 (not (= lambda!338132 lambda!338076))))

(declare-fun bs!1536039 () Bool)

(assert (= bs!1536039 (and b!6191494 b!6190621)))

(assert (=> bs!1536039 (not (= lambda!338132 lambda!338060))))

(declare-fun bs!1536040 () Bool)

(assert (= bs!1536040 (and b!6191494 b!6190139)))

(assert (=> bs!1536040 (not (= lambda!338132 lambda!338029))))

(declare-fun bs!1536041 () Bool)

(assert (= bs!1536041 (and b!6191494 d!1940830)))

(assert (=> bs!1536041 (not (= lambda!338132 lambda!338089))))

(declare-fun bs!1536042 () Bool)

(assert (= bs!1536042 (and b!6191494 b!6190296)))

(assert (=> bs!1536042 (not (= lambda!338132 lambda!338035))))

(declare-fun bs!1536043 () Bool)

(assert (= bs!1536043 (and b!6191494 b!6191288)))

(assert (=> bs!1536043 (= (and (= (reg!16458 (regTwo!32771 lt!2340702)) (reg!16458 (regOne!32771 lt!2340702))) (= (regTwo!32771 lt!2340702) (regOne!32771 lt!2340702))) (= lambda!338132 lambda!338119))))

(declare-fun bs!1536044 () Bool)

(assert (= bs!1536044 (and b!6191494 d!1940586)))

(assert (=> bs!1536044 (not (= lambda!338132 lambda!338048))))

(declare-fun bs!1536045 () Bool)

(assert (= bs!1536045 (and b!6191494 b!6191080)))

(assert (=> bs!1536045 (= (and (= (reg!16458 (regTwo!32771 lt!2340702)) (reg!16458 (regTwo!32771 r!7292))) (= (regTwo!32771 lt!2340702) (regTwo!32771 r!7292))) (= lambda!338132 lambda!338105))))

(declare-fun bs!1536046 () Bool)

(assert (= bs!1536046 (and b!6191494 b!6190228)))

(assert (=> bs!1536046 (= (and (= (reg!16458 (regTwo!32771 lt!2340702)) (reg!16458 lt!2340713)) (= (regTwo!32771 lt!2340702) lt!2340713)) (= lambda!338132 lambda!338032))))

(declare-fun bs!1536047 () Bool)

(assert (= bs!1536047 (and b!6191494 b!6191078)))

(assert (=> bs!1536047 (not (= lambda!338132 lambda!338106))))

(declare-fun bs!1536048 () Bool)

(assert (= bs!1536048 (and b!6191494 b!6190912)))

(assert (=> bs!1536048 (= (and (= (reg!16458 (regTwo!32771 lt!2340702)) (reg!16458 (regTwo!32771 lt!2340713))) (= (regTwo!32771 lt!2340702) (regTwo!32771 lt!2340713))) (= lambda!338132 lambda!338091))))

(assert (=> bs!1536036 (not (= lambda!338132 lambda!338054))))

(declare-fun bs!1536049 () Bool)

(assert (= bs!1536049 (and b!6191494 b!6190850)))

(assert (=> bs!1536049 (= (and (= (reg!16458 (regTwo!32771 lt!2340702)) (reg!16458 (regOne!32771 r!7292))) (= (regTwo!32771 lt!2340702) (regOne!32771 r!7292))) (= lambda!338132 lambda!338075))))

(declare-fun bs!1536050 () Bool)

(assert (= bs!1536050 (and b!6191494 b!6190623)))

(assert (=> bs!1536050 (= (and (= (reg!16458 (regTwo!32771 lt!2340702)) (reg!16458 (regOne!32771 lt!2340713))) (= (regTwo!32771 lt!2340702) (regOne!32771 lt!2340713))) (= lambda!338132 lambda!338059))))

(declare-fun bs!1536051 () Bool)

(assert (= bs!1536051 (and b!6191494 b!6191286)))

(assert (=> bs!1536051 (not (= lambda!338132 lambda!338120))))

(declare-fun bs!1536052 () Bool)

(assert (= bs!1536052 (and b!6191494 b!6189558)))

(assert (=> bs!1536052 (not (= lambda!338132 lambda!337983))))

(declare-fun bs!1536053 () Bool)

(assert (= bs!1536053 (and b!6191494 b!6190141)))

(assert (=> bs!1536053 (= (and (= (reg!16458 (regTwo!32771 lt!2340702)) (reg!16458 lt!2340702)) (= (regTwo!32771 lt!2340702) lt!2340702)) (= lambda!338132 lambda!338028))))

(declare-fun bs!1536054 () Bool)

(assert (= bs!1536054 (and b!6191494 b!6190910)))

(assert (=> bs!1536054 (not (= lambda!338132 lambda!338092))))

(declare-fun bs!1536056 () Bool)

(assert (= bs!1536056 (and b!6191494 b!6190226)))

(assert (=> bs!1536056 (not (= lambda!338132 lambda!338033))))

(assert (=> bs!1536041 (not (= lambda!338132 lambda!338087))))

(assert (=> bs!1536052 (not (= lambda!338132 lambda!337984))))

(declare-fun bs!1536060 () Bool)

(assert (= bs!1536060 (and b!6191494 d!1940940)))

(assert (=> bs!1536060 (not (= lambda!338132 lambda!338110))))

(assert (=> b!6191494 true))

(assert (=> b!6191494 true))

(declare-fun bs!1536061 () Bool)

(declare-fun b!6191492 () Bool)

(assert (= bs!1536061 (and b!6191492 d!1940588)))

(declare-fun lambda!338134 () Int)

(assert (=> bs!1536061 (not (= lambda!338134 lambda!338053))))

(declare-fun bs!1536062 () Bool)

(assert (= bs!1536062 (and b!6191492 b!6190298)))

(assert (=> bs!1536062 (not (= lambda!338134 lambda!338034))))

(declare-fun bs!1536063 () Bool)

(assert (= bs!1536063 (and b!6191492 b!6191494)))

(assert (=> bs!1536063 (not (= lambda!338134 lambda!338132))))

(declare-fun bs!1536064 () Bool)

(assert (= bs!1536064 (and b!6191492 b!6190848)))

(assert (=> bs!1536064 (= (and (= (regOne!32770 (regTwo!32771 lt!2340702)) (regOne!32770 (regOne!32771 r!7292))) (= (regTwo!32770 (regTwo!32771 lt!2340702)) (regTwo!32770 (regOne!32771 r!7292)))) (= lambda!338134 lambda!338076))))

(declare-fun bs!1536065 () Bool)

(assert (= bs!1536065 (and b!6191492 b!6190621)))

(assert (=> bs!1536065 (= (and (= (regOne!32770 (regTwo!32771 lt!2340702)) (regOne!32770 (regOne!32771 lt!2340713))) (= (regTwo!32770 (regTwo!32771 lt!2340702)) (regTwo!32770 (regOne!32771 lt!2340713)))) (= lambda!338134 lambda!338060))))

(declare-fun bs!1536066 () Bool)

(assert (= bs!1536066 (and b!6191492 b!6190139)))

(assert (=> bs!1536066 (= (and (= (regOne!32770 (regTwo!32771 lt!2340702)) (regOne!32770 lt!2340702)) (= (regTwo!32770 (regTwo!32771 lt!2340702)) (regTwo!32770 lt!2340702))) (= lambda!338134 lambda!338029))))

(declare-fun bs!1536067 () Bool)

(assert (= bs!1536067 (and b!6191492 d!1940830)))

(assert (=> bs!1536067 (= (and (= (regOne!32770 (regTwo!32771 lt!2340702)) (regOne!32770 r!7292)) (= (regTwo!32770 (regTwo!32771 lt!2340702)) (regTwo!32770 r!7292))) (= lambda!338134 lambda!338089))))

(declare-fun bs!1536068 () Bool)

(assert (= bs!1536068 (and b!6191492 b!6190296)))

(assert (=> bs!1536068 (= (and (= (regOne!32770 (regTwo!32771 lt!2340702)) (regOne!32770 r!7292)) (= (regTwo!32770 (regTwo!32771 lt!2340702)) (regTwo!32770 r!7292))) (= lambda!338134 lambda!338035))))

(declare-fun bs!1536069 () Bool)

(assert (= bs!1536069 (and b!6191492 b!6191288)))

(assert (=> bs!1536069 (not (= lambda!338134 lambda!338119))))

(declare-fun bs!1536070 () Bool)

(assert (= bs!1536070 (and b!6191492 d!1940586)))

(assert (=> bs!1536070 (not (= lambda!338134 lambda!338048))))

(declare-fun bs!1536071 () Bool)

(assert (= bs!1536071 (and b!6191492 b!6191080)))

(assert (=> bs!1536071 (not (= lambda!338134 lambda!338105))))

(declare-fun bs!1536072 () Bool)

(assert (= bs!1536072 (and b!6191492 b!6190228)))

(assert (=> bs!1536072 (not (= lambda!338134 lambda!338032))))

(declare-fun bs!1536073 () Bool)

(assert (= bs!1536073 (and b!6191492 b!6191078)))

(assert (=> bs!1536073 (= (and (= (regOne!32770 (regTwo!32771 lt!2340702)) (regOne!32770 (regTwo!32771 r!7292))) (= (regTwo!32770 (regTwo!32771 lt!2340702)) (regTwo!32770 (regTwo!32771 r!7292)))) (= lambda!338134 lambda!338106))))

(declare-fun bs!1536074 () Bool)

(assert (= bs!1536074 (and b!6191492 b!6190912)))

(assert (=> bs!1536074 (not (= lambda!338134 lambda!338091))))

(assert (=> bs!1536061 (= (and (= (regOne!32770 (regTwo!32771 lt!2340702)) (regOne!32770 r!7292)) (= (regTwo!32770 (regTwo!32771 lt!2340702)) (regTwo!32770 r!7292))) (= lambda!338134 lambda!338054))))

(declare-fun bs!1536075 () Bool)

(assert (= bs!1536075 (and b!6191492 b!6190850)))

(assert (=> bs!1536075 (not (= lambda!338134 lambda!338075))))

(declare-fun bs!1536076 () Bool)

(assert (= bs!1536076 (and b!6191492 b!6190623)))

(assert (=> bs!1536076 (not (= lambda!338134 lambda!338059))))

(declare-fun bs!1536077 () Bool)

(assert (= bs!1536077 (and b!6191492 b!6191286)))

(assert (=> bs!1536077 (= (and (= (regOne!32770 (regTwo!32771 lt!2340702)) (regOne!32770 (regOne!32771 lt!2340702))) (= (regTwo!32770 (regTwo!32771 lt!2340702)) (regTwo!32770 (regOne!32771 lt!2340702)))) (= lambda!338134 lambda!338120))))

(declare-fun bs!1536078 () Bool)

(assert (= bs!1536078 (and b!6191492 b!6189558)))

(assert (=> bs!1536078 (not (= lambda!338134 lambda!337983))))

(declare-fun bs!1536079 () Bool)

(assert (= bs!1536079 (and b!6191492 b!6190141)))

(assert (=> bs!1536079 (not (= lambda!338134 lambda!338028))))

(declare-fun bs!1536080 () Bool)

(assert (= bs!1536080 (and b!6191492 b!6190910)))

(assert (=> bs!1536080 (= (and (= (regOne!32770 (regTwo!32771 lt!2340702)) (regOne!32770 (regTwo!32771 lt!2340713))) (= (regTwo!32770 (regTwo!32771 lt!2340702)) (regTwo!32770 (regTwo!32771 lt!2340713)))) (= lambda!338134 lambda!338092))))

(declare-fun bs!1536081 () Bool)

(assert (= bs!1536081 (and b!6191492 b!6190226)))

(assert (=> bs!1536081 (= (and (= (regOne!32770 (regTwo!32771 lt!2340702)) (regOne!32770 lt!2340713)) (= (regTwo!32770 (regTwo!32771 lt!2340702)) (regTwo!32770 lt!2340713))) (= lambda!338134 lambda!338033))))

(assert (=> bs!1536067 (not (= lambda!338134 lambda!338087))))

(assert (=> bs!1536078 (= (and (= (regOne!32770 (regTwo!32771 lt!2340702)) (regOne!32770 r!7292)) (= (regTwo!32770 (regTwo!32771 lt!2340702)) (regTwo!32770 r!7292))) (= lambda!338134 lambda!337984))))

(declare-fun bs!1536082 () Bool)

(assert (= bs!1536082 (and b!6191492 d!1940940)))

(assert (=> bs!1536082 (not (= lambda!338134 lambda!338110))))

(assert (=> b!6191492 true))

(assert (=> b!6191492 true))

(declare-fun b!6191491 () Bool)

(declare-fun e!3770730 () Bool)

(assert (=> b!6191491 (= e!3770730 (= s!2326 (Cons!64562 (c!1116552 (regTwo!32771 lt!2340702)) Nil!64562)))))

(declare-fun e!3770728 () Bool)

(declare-fun call!517758 () Bool)

(assert (=> b!6191492 (= e!3770728 call!517758)))

(declare-fun b!6191493 () Bool)

(declare-fun c!1117124 () Bool)

(assert (=> b!6191493 (= c!1117124 ((_ is ElementMatch!16129) (regTwo!32771 lt!2340702)))))

(declare-fun e!3770729 () Bool)

(assert (=> b!6191493 (= e!3770729 e!3770730)))

(declare-fun e!3770727 () Bool)

(assert (=> b!6191494 (= e!3770727 call!517758)))

(declare-fun b!6191495 () Bool)

(declare-fun e!3770726 () Bool)

(declare-fun call!517757 () Bool)

(assert (=> b!6191495 (= e!3770726 call!517757)))

(declare-fun bm!517752 () Bool)

(assert (=> bm!517752 (= call!517757 (isEmpty!36550 s!2326))))

(declare-fun b!6191496 () Bool)

(assert (=> b!6191496 (= e!3770726 e!3770729)))

(declare-fun res!2561400 () Bool)

(assert (=> b!6191496 (= res!2561400 (not ((_ is EmptyLang!16129) (regTwo!32771 lt!2340702))))))

(assert (=> b!6191496 (=> (not res!2561400) (not e!3770729))))

(declare-fun b!6191497 () Bool)

(declare-fun e!3770731 () Bool)

(assert (=> b!6191497 (= e!3770731 e!3770728)))

(declare-fun c!1117125 () Bool)

(assert (=> b!6191497 (= c!1117125 ((_ is Star!16129) (regTwo!32771 lt!2340702)))))

(declare-fun b!6191498 () Bool)

(declare-fun e!3770725 () Bool)

(assert (=> b!6191498 (= e!3770731 e!3770725)))

(declare-fun res!2561398 () Bool)

(assert (=> b!6191498 (= res!2561398 (matchRSpec!3230 (regOne!32771 (regTwo!32771 lt!2340702)) s!2326))))

(assert (=> b!6191498 (=> res!2561398 e!3770725)))

(declare-fun b!6191499 () Bool)

(declare-fun res!2561399 () Bool)

(assert (=> b!6191499 (=> res!2561399 e!3770727)))

(assert (=> b!6191499 (= res!2561399 call!517757)))

(assert (=> b!6191499 (= e!3770728 e!3770727)))

(declare-fun b!6191500 () Bool)

(declare-fun c!1117123 () Bool)

(assert (=> b!6191500 (= c!1117123 ((_ is Union!16129) (regTwo!32771 lt!2340702)))))

(assert (=> b!6191500 (= e!3770730 e!3770731)))

(declare-fun b!6191501 () Bool)

(assert (=> b!6191501 (= e!3770725 (matchRSpec!3230 (regTwo!32771 (regTwo!32771 lt!2340702)) s!2326))))

(declare-fun bm!517753 () Bool)

(assert (=> bm!517753 (= call!517758 (Exists!3199 (ite c!1117125 lambda!338132 lambda!338134)))))

(declare-fun d!1941120 () Bool)

(declare-fun c!1117126 () Bool)

(assert (=> d!1941120 (= c!1117126 ((_ is EmptyExpr!16129) (regTwo!32771 lt!2340702)))))

(assert (=> d!1941120 (= (matchRSpec!3230 (regTwo!32771 lt!2340702) s!2326) e!3770726)))

(assert (= (and d!1941120 c!1117126) b!6191495))

(assert (= (and d!1941120 (not c!1117126)) b!6191496))

(assert (= (and b!6191496 res!2561400) b!6191493))

(assert (= (and b!6191493 c!1117124) b!6191491))

(assert (= (and b!6191493 (not c!1117124)) b!6191500))

(assert (= (and b!6191500 c!1117123) b!6191498))

(assert (= (and b!6191500 (not c!1117123)) b!6191497))

(assert (= (and b!6191498 (not res!2561398)) b!6191501))

(assert (= (and b!6191497 c!1117125) b!6191499))

(assert (= (and b!6191497 (not c!1117125)) b!6191492))

(assert (= (and b!6191499 (not res!2561399)) b!6191494))

(assert (= (or b!6191494 b!6191492) bm!517753))

(assert (= (or b!6191495 b!6191499) bm!517752))

(assert (=> bm!517752 m!7024388))

(declare-fun m!7025754 () Bool)

(assert (=> b!6191498 m!7025754))

(declare-fun m!7025756 () Bool)

(assert (=> b!6191501 m!7025756))

(declare-fun m!7025758 () Bool)

(assert (=> bm!517753 m!7025758))

(assert (=> b!6190148 d!1941120))

(declare-fun d!1941146 () Bool)

(assert (=> d!1941146 (= (isEmptyExpr!1541 lt!2340809) ((_ is EmptyExpr!16129) lt!2340809))))

(assert (=> b!6190208 d!1941146))

(declare-fun b!6191525 () Bool)

(declare-fun c!1117138 () Bool)

(assert (=> b!6191525 (= c!1117138 ((_ is Star!16129) (h!71011 (exprs!6013 lt!2340688))))))

(declare-fun e!3770747 () (InoxSet Context!11026))

(declare-fun e!3770750 () (InoxSet Context!11026))

(assert (=> b!6191525 (= e!3770747 e!3770750)))

(declare-fun b!6191526 () Bool)

(assert (=> b!6191526 (= e!3770750 ((as const (Array Context!11026 Bool)) false))))

(declare-fun bm!517757 () Bool)

(declare-fun call!517763 () (InoxSet Context!11026))

(declare-fun call!517765 () (InoxSet Context!11026))

(assert (=> bm!517757 (= call!517763 call!517765)))

(declare-fun bm!517758 () Bool)

(declare-fun call!517767 () List!64687)

(declare-fun call!517766 () List!64687)

(assert (=> bm!517758 (= call!517767 call!517766)))

(declare-fun b!6191527 () Bool)

(declare-fun e!3770748 () (InoxSet Context!11026))

(declare-fun call!517762 () (InoxSet Context!11026))

(declare-fun call!517764 () (InoxSet Context!11026))

(assert (=> b!6191527 (= e!3770748 ((_ map or) call!517762 call!517764))))

(declare-fun b!6191528 () Bool)

(declare-fun e!3770752 () (InoxSet Context!11026))

(assert (=> b!6191528 (= e!3770752 e!3770747)))

(declare-fun c!1117136 () Bool)

(assert (=> b!6191528 (= c!1117136 ((_ is Concat!24974) (h!71011 (exprs!6013 lt!2340688))))))

(declare-fun bm!517759 () Bool)

(declare-fun c!1117139 () Bool)

(assert (=> bm!517759 (= call!517766 ($colon$colon!2000 (exprs!6013 (Context!11027 (t!378197 (exprs!6013 lt!2340688)))) (ite (or c!1117139 c!1117136) (regTwo!32770 (h!71011 (exprs!6013 lt!2340688))) (h!71011 (exprs!6013 lt!2340688)))))))

(declare-fun bm!517760 () Bool)

(declare-fun c!1117135 () Bool)

(assert (=> bm!517760 (= call!517762 (derivationStepZipperDown!1377 (ite c!1117135 (regOne!32771 (h!71011 (exprs!6013 lt!2340688))) (regOne!32770 (h!71011 (exprs!6013 lt!2340688)))) (ite c!1117135 (Context!11027 (t!378197 (exprs!6013 lt!2340688))) (Context!11027 call!517766)) (h!71010 s!2326)))))

(declare-fun bm!517761 () Bool)

(assert (=> bm!517761 (= call!517765 call!517764)))

(declare-fun b!6191529 () Bool)

(declare-fun e!3770749 () Bool)

(assert (=> b!6191529 (= e!3770749 (nullable!6122 (regOne!32770 (h!71011 (exprs!6013 lt!2340688)))))))

(declare-fun bm!517762 () Bool)

(assert (=> bm!517762 (= call!517764 (derivationStepZipperDown!1377 (ite c!1117135 (regTwo!32771 (h!71011 (exprs!6013 lt!2340688))) (ite c!1117139 (regTwo!32770 (h!71011 (exprs!6013 lt!2340688))) (ite c!1117136 (regOne!32770 (h!71011 (exprs!6013 lt!2340688))) (reg!16458 (h!71011 (exprs!6013 lt!2340688)))))) (ite (or c!1117135 c!1117139) (Context!11027 (t!378197 (exprs!6013 lt!2340688))) (Context!11027 call!517767)) (h!71010 s!2326)))))

(declare-fun b!6191530 () Bool)

(assert (=> b!6191530 (= c!1117139 e!3770749)))

(declare-fun res!2561408 () Bool)

(assert (=> b!6191530 (=> (not res!2561408) (not e!3770749))))

(assert (=> b!6191530 (= res!2561408 ((_ is Concat!24974) (h!71011 (exprs!6013 lt!2340688))))))

(assert (=> b!6191530 (= e!3770748 e!3770752)))

(declare-fun d!1941148 () Bool)

(declare-fun c!1117137 () Bool)

(assert (=> d!1941148 (= c!1117137 (and ((_ is ElementMatch!16129) (h!71011 (exprs!6013 lt!2340688))) (= (c!1116552 (h!71011 (exprs!6013 lt!2340688))) (h!71010 s!2326))))))

(declare-fun e!3770751 () (InoxSet Context!11026))

(assert (=> d!1941148 (= (derivationStepZipperDown!1377 (h!71011 (exprs!6013 lt!2340688)) (Context!11027 (t!378197 (exprs!6013 lt!2340688))) (h!71010 s!2326)) e!3770751)))

(declare-fun b!6191531 () Bool)

(assert (=> b!6191531 (= e!3770747 call!517763)))

(declare-fun b!6191532 () Bool)

(assert (=> b!6191532 (= e!3770750 call!517763)))

(declare-fun b!6191533 () Bool)

(assert (=> b!6191533 (= e!3770751 (store ((as const (Array Context!11026 Bool)) false) (Context!11027 (t!378197 (exprs!6013 lt!2340688))) true))))

(declare-fun b!6191534 () Bool)

(assert (=> b!6191534 (= e!3770752 ((_ map or) call!517762 call!517765))))

(declare-fun b!6191535 () Bool)

(assert (=> b!6191535 (= e!3770751 e!3770748)))

(assert (=> b!6191535 (= c!1117135 ((_ is Union!16129) (h!71011 (exprs!6013 lt!2340688))))))

(assert (= (and d!1941148 c!1117137) b!6191533))

(assert (= (and d!1941148 (not c!1117137)) b!6191535))

(assert (= (and b!6191535 c!1117135) b!6191527))

(assert (= (and b!6191535 (not c!1117135)) b!6191530))

(assert (= (and b!6191530 res!2561408) b!6191529))

(assert (= (and b!6191530 c!1117139) b!6191534))

(assert (= (and b!6191530 (not c!1117139)) b!6191528))

(assert (= (and b!6191528 c!1117136) b!6191531))

(assert (= (and b!6191528 (not c!1117136)) b!6191525))

(assert (= (and b!6191525 c!1117138) b!6191532))

(assert (= (and b!6191525 (not c!1117138)) b!6191526))

(assert (= (or b!6191531 b!6191532) bm!517758))

(assert (= (or b!6191531 b!6191532) bm!517757))

(assert (= (or b!6191534 bm!517758) bm!517759))

(assert (= (or b!6191534 bm!517757) bm!517761))

(assert (= (or b!6191527 bm!517761) bm!517762))

(assert (= (or b!6191527 b!6191534) bm!517760))

(declare-fun m!7025760 () Bool)

(assert (=> b!6191533 m!7025760))

(declare-fun m!7025762 () Bool)

(assert (=> bm!517759 m!7025762))

(declare-fun m!7025764 () Bool)

(assert (=> b!6191529 m!7025764))

(declare-fun m!7025766 () Bool)

(assert (=> bm!517762 m!7025766))

(declare-fun m!7025768 () Bool)

(assert (=> bm!517760 m!7025768))

(assert (=> bm!517548 d!1941148))

(assert (=> d!1940536 d!1940538))

(assert (=> d!1940536 d!1940502))

(declare-fun e!3770753 () Bool)

(declare-fun d!1941150 () Bool)

(assert (=> d!1941150 (= (matchZipper!2141 ((_ map or) lt!2340709 lt!2340723) (t!378196 s!2326)) e!3770753)))

(declare-fun res!2561409 () Bool)

(assert (=> d!1941150 (=> res!2561409 e!3770753)))

(assert (=> d!1941150 (= res!2561409 (matchZipper!2141 lt!2340709 (t!378196 s!2326)))))

(assert (=> d!1941150 true))

(declare-fun _$48!1822 () Unit!157811)

(assert (=> d!1941150 (= (choose!45991 lt!2340709 lt!2340723 (t!378196 s!2326)) _$48!1822)))

(declare-fun b!6191536 () Bool)

(assert (=> b!6191536 (= e!3770753 (matchZipper!2141 lt!2340723 (t!378196 s!2326)))))

(assert (= (and d!1941150 (not res!2561409)) b!6191536))

(assert (=> d!1941150 m!7023904))

(assert (=> d!1941150 m!7023912))

(assert (=> b!6191536 m!7023884))

(assert (=> d!1940536 d!1941150))

(declare-fun b!6191537 () Bool)

(declare-fun e!3770754 () Bool)

(declare-fun e!3770758 () Bool)

(assert (=> b!6191537 (= e!3770754 e!3770758)))

(declare-fun c!1117140 () Bool)

(assert (=> b!6191537 (= c!1117140 ((_ is EmptyLang!16129) (regTwo!32770 r!7292)))))

(declare-fun b!6191538 () Bool)

(declare-fun e!3770756 () Bool)

(declare-fun e!3770757 () Bool)

(assert (=> b!6191538 (= e!3770756 e!3770757)))

(declare-fun res!2561415 () Bool)

(assert (=> b!6191538 (=> (not res!2561415) (not e!3770757))))

(declare-fun lt!2340906 () Bool)

(assert (=> b!6191538 (= res!2561415 (not lt!2340906))))

(declare-fun b!6191539 () Bool)

(declare-fun res!2561410 () Bool)

(assert (=> b!6191539 (=> res!2561410 e!3770756)))

(assert (=> b!6191539 (= res!2561410 (not ((_ is ElementMatch!16129) (regTwo!32770 r!7292))))))

(assert (=> b!6191539 (= e!3770758 e!3770756)))

(declare-fun d!1941152 () Bool)

(assert (=> d!1941152 e!3770754))

(declare-fun c!1117142 () Bool)

(assert (=> d!1941152 (= c!1117142 ((_ is EmptyExpr!16129) (regTwo!32770 r!7292)))))

(declare-fun e!3770755 () Bool)

(assert (=> d!1941152 (= lt!2340906 e!3770755)))

(declare-fun c!1117141 () Bool)

(assert (=> d!1941152 (= c!1117141 (isEmpty!36550 (_2!36411 (get!22289 lt!2340844))))))

(assert (=> d!1941152 (validRegex!7865 (regTwo!32770 r!7292))))

(assert (=> d!1941152 (= (matchR!8312 (regTwo!32770 r!7292) (_2!36411 (get!22289 lt!2340844))) lt!2340906)))

(declare-fun b!6191540 () Bool)

(assert (=> b!6191540 (= e!3770755 (nullable!6122 (regTwo!32770 r!7292)))))

(declare-fun b!6191541 () Bool)

(declare-fun e!3770760 () Bool)

(assert (=> b!6191541 (= e!3770760 (= (head!12771 (_2!36411 (get!22289 lt!2340844))) (c!1116552 (regTwo!32770 r!7292))))))

(declare-fun b!6191542 () Bool)

(declare-fun res!2561413 () Bool)

(assert (=> b!6191542 (=> (not res!2561413) (not e!3770760))))

(declare-fun call!517768 () Bool)

(assert (=> b!6191542 (= res!2561413 (not call!517768))))

(declare-fun b!6191543 () Bool)

(declare-fun res!2561411 () Bool)

(assert (=> b!6191543 (=> (not res!2561411) (not e!3770760))))

(assert (=> b!6191543 (= res!2561411 (isEmpty!36550 (tail!11856 (_2!36411 (get!22289 lt!2340844)))))))

(declare-fun b!6191544 () Bool)

(assert (=> b!6191544 (= e!3770754 (= lt!2340906 call!517768))))

(declare-fun b!6191545 () Bool)

(assert (=> b!6191545 (= e!3770755 (matchR!8312 (derivativeStep!4844 (regTwo!32770 r!7292) (head!12771 (_2!36411 (get!22289 lt!2340844)))) (tail!11856 (_2!36411 (get!22289 lt!2340844)))))))

(declare-fun bm!517763 () Bool)

(assert (=> bm!517763 (= call!517768 (isEmpty!36550 (_2!36411 (get!22289 lt!2340844))))))

(declare-fun b!6191546 () Bool)

(declare-fun e!3770759 () Bool)

(assert (=> b!6191546 (= e!3770757 e!3770759)))

(declare-fun res!2561417 () Bool)

(assert (=> b!6191546 (=> res!2561417 e!3770759)))

(assert (=> b!6191546 (= res!2561417 call!517768)))

(declare-fun b!6191547 () Bool)

(declare-fun res!2561412 () Bool)

(assert (=> b!6191547 (=> res!2561412 e!3770756)))

(assert (=> b!6191547 (= res!2561412 e!3770760)))

(declare-fun res!2561416 () Bool)

(assert (=> b!6191547 (=> (not res!2561416) (not e!3770760))))

(assert (=> b!6191547 (= res!2561416 lt!2340906)))

(declare-fun b!6191548 () Bool)

(assert (=> b!6191548 (= e!3770759 (not (= (head!12771 (_2!36411 (get!22289 lt!2340844))) (c!1116552 (regTwo!32770 r!7292)))))))

(declare-fun b!6191549 () Bool)

(declare-fun res!2561414 () Bool)

(assert (=> b!6191549 (=> res!2561414 e!3770759)))

(assert (=> b!6191549 (= res!2561414 (not (isEmpty!36550 (tail!11856 (_2!36411 (get!22289 lt!2340844))))))))

(declare-fun b!6191550 () Bool)

(assert (=> b!6191550 (= e!3770758 (not lt!2340906))))

(assert (= (and d!1941152 c!1117141) b!6191540))

(assert (= (and d!1941152 (not c!1117141)) b!6191545))

(assert (= (and d!1941152 c!1117142) b!6191544))

(assert (= (and d!1941152 (not c!1117142)) b!6191537))

(assert (= (and b!6191537 c!1117140) b!6191550))

(assert (= (and b!6191537 (not c!1117140)) b!6191539))

(assert (= (and b!6191539 (not res!2561410)) b!6191547))

(assert (= (and b!6191547 res!2561416) b!6191542))

(assert (= (and b!6191542 res!2561413) b!6191543))

(assert (= (and b!6191543 res!2561411) b!6191541))

(assert (= (and b!6191547 (not res!2561412)) b!6191538))

(assert (= (and b!6191538 res!2561415) b!6191546))

(assert (= (and b!6191546 (not res!2561417)) b!6191549))

(assert (= (and b!6191549 (not res!2561414)) b!6191548))

(assert (= (or b!6191544 b!6191542 b!6191546) bm!517763))

(declare-fun m!7025770 () Bool)

(assert (=> bm!517763 m!7025770))

(declare-fun m!7025772 () Bool)

(assert (=> b!6191543 m!7025772))

(assert (=> b!6191543 m!7025772))

(declare-fun m!7025774 () Bool)

(assert (=> b!6191543 m!7025774))

(assert (=> b!6191549 m!7025772))

(assert (=> b!6191549 m!7025772))

(assert (=> b!6191549 m!7025774))

(declare-fun m!7025776 () Bool)

(assert (=> b!6191545 m!7025776))

(assert (=> b!6191545 m!7025776))

(declare-fun m!7025778 () Bool)

(assert (=> b!6191545 m!7025778))

(assert (=> b!6191545 m!7025772))

(assert (=> b!6191545 m!7025778))

(assert (=> b!6191545 m!7025772))

(declare-fun m!7025780 () Bool)

(assert (=> b!6191545 m!7025780))

(assert (=> b!6191541 m!7025776))

(assert (=> d!1941152 m!7025770))

(assert (=> d!1941152 m!7025400))

(assert (=> b!6191548 m!7025776))

(assert (=> b!6191540 m!7025402))

(assert (=> b!6190470 d!1941152))

(assert (=> b!6190470 d!1941110))

(declare-fun b!6191560 () Bool)

(declare-fun c!1117148 () Bool)

(assert (=> b!6191560 (= c!1117148 ((_ is Star!16129) (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))))))

(declare-fun e!3770768 () (InoxSet Context!11026))

(declare-fun e!3770771 () (InoxSet Context!11026))

(assert (=> b!6191560 (= e!3770768 e!3770771)))

(declare-fun b!6191561 () Bool)

(assert (=> b!6191561 (= e!3770771 ((as const (Array Context!11026 Bool)) false))))

(declare-fun bm!517767 () Bool)

(declare-fun call!517773 () (InoxSet Context!11026))

(declare-fun call!517775 () (InoxSet Context!11026))

(assert (=> bm!517767 (= call!517773 call!517775)))

(declare-fun bm!517768 () Bool)

(declare-fun call!517777 () List!64687)

(declare-fun call!517776 () List!64687)

(assert (=> bm!517768 (= call!517777 call!517776)))

(declare-fun b!6191562 () Bool)

(declare-fun e!3770769 () (InoxSet Context!11026))

(declare-fun call!517772 () (InoxSet Context!11026))

(declare-fun call!517774 () (InoxSet Context!11026))

(assert (=> b!6191562 (= e!3770769 ((_ map or) call!517772 call!517774))))

(declare-fun b!6191563 () Bool)

(declare-fun e!3770773 () (InoxSet Context!11026))

(assert (=> b!6191563 (= e!3770773 e!3770768)))

(declare-fun c!1117146 () Bool)

(assert (=> b!6191563 (= c!1117146 ((_ is Concat!24974) (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))))))

(declare-fun c!1117149 () Bool)

(declare-fun bm!517769 () Bool)

(assert (=> bm!517769 (= call!517776 ($colon$colon!2000 (exprs!6013 (ite c!1116768 lt!2340688 (Context!11027 call!517529))) (ite (or c!1117149 c!1117146) (regTwo!32770 (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))) (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292)))))))))

(declare-fun bm!517770 () Bool)

(declare-fun c!1117145 () Bool)

(assert (=> bm!517770 (= call!517772 (derivationStepZipperDown!1377 (ite c!1117145 (regOne!32771 (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))) (regOne!32770 (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292)))))) (ite c!1117145 (ite c!1116768 lt!2340688 (Context!11027 call!517529)) (Context!11027 call!517776)) (h!71010 s!2326)))))

(declare-fun bm!517771 () Bool)

(assert (=> bm!517771 (= call!517775 call!517774)))

(declare-fun b!6191564 () Bool)

(declare-fun e!3770770 () Bool)

(assert (=> b!6191564 (= e!3770770 (nullable!6122 (regOne!32770 (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292)))))))))

(declare-fun bm!517772 () Bool)

(assert (=> bm!517772 (= call!517774 (derivationStepZipperDown!1377 (ite c!1117145 (regTwo!32771 (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))) (ite c!1117149 (regTwo!32770 (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))) (ite c!1117146 (regOne!32770 (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))) (reg!16458 (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292)))))))) (ite (or c!1117145 c!1117149) (ite c!1116768 lt!2340688 (Context!11027 call!517529)) (Context!11027 call!517777)) (h!71010 s!2326)))))

(declare-fun b!6191565 () Bool)

(assert (=> b!6191565 (= c!1117149 e!3770770)))

(declare-fun res!2561423 () Bool)

(assert (=> b!6191565 (=> (not res!2561423) (not e!3770770))))

(assert (=> b!6191565 (= res!2561423 ((_ is Concat!24974) (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))))))

(assert (=> b!6191565 (= e!3770769 e!3770773)))

(declare-fun d!1941156 () Bool)

(declare-fun c!1117147 () Bool)

(assert (=> d!1941156 (= c!1117147 (and ((_ is ElementMatch!16129) (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))) (= (c!1116552 (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))) (h!71010 s!2326))))))

(declare-fun e!3770772 () (InoxSet Context!11026))

(assert (=> d!1941156 (= (derivationStepZipperDown!1377 (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292)))) (ite c!1116768 lt!2340688 (Context!11027 call!517529)) (h!71010 s!2326)) e!3770772)))

(declare-fun b!6191566 () Bool)

(assert (=> b!6191566 (= e!3770768 call!517773)))

(declare-fun b!6191567 () Bool)

(assert (=> b!6191567 (= e!3770771 call!517773)))

(declare-fun b!6191568 () Bool)

(assert (=> b!6191568 (= e!3770772 (store ((as const (Array Context!11026 Bool)) false) (ite c!1116768 lt!2340688 (Context!11027 call!517529)) true))))

(declare-fun b!6191569 () Bool)

(assert (=> b!6191569 (= e!3770773 ((_ map or) call!517772 call!517775))))

(declare-fun b!6191570 () Bool)

(assert (=> b!6191570 (= e!3770772 e!3770769)))

(assert (=> b!6191570 (= c!1117145 ((_ is Union!16129) (ite c!1116768 (regOne!32771 (regOne!32771 (regOne!32770 r!7292))) (regOne!32770 (regOne!32771 (regOne!32770 r!7292))))))))

(assert (= (and d!1941156 c!1117147) b!6191568))

(assert (= (and d!1941156 (not c!1117147)) b!6191570))

(assert (= (and b!6191570 c!1117145) b!6191562))

(assert (= (and b!6191570 (not c!1117145)) b!6191565))

(assert (= (and b!6191565 res!2561423) b!6191564))

(assert (= (and b!6191565 c!1117149) b!6191569))

(assert (= (and b!6191565 (not c!1117149)) b!6191563))

(assert (= (and b!6191563 c!1117146) b!6191566))

(assert (= (and b!6191563 (not c!1117146)) b!6191560))

(assert (= (and b!6191560 c!1117148) b!6191567))

(assert (= (and b!6191560 (not c!1117148)) b!6191561))

(assert (= (or b!6191566 b!6191567) bm!517768))

(assert (= (or b!6191566 b!6191567) bm!517767))

(assert (= (or b!6191569 bm!517768) bm!517769))

(assert (= (or b!6191569 bm!517767) bm!517771))

(assert (= (or b!6191562 bm!517771) bm!517772))

(assert (= (or b!6191562 b!6191569) bm!517770))

(declare-fun m!7025790 () Bool)

(assert (=> b!6191568 m!7025790))

(declare-fun m!7025792 () Bool)

(assert (=> bm!517769 m!7025792))

(declare-fun m!7025796 () Bool)

(assert (=> b!6191564 m!7025796))

(declare-fun m!7025798 () Bool)

(assert (=> bm!517772 m!7025798))

(declare-fun m!7025800 () Bool)

(assert (=> bm!517770 m!7025800))

(assert (=> bm!517523 d!1941156))

(assert (=> d!1940524 d!1940732))

(declare-fun d!1941166 () Bool)

(assert (=> d!1941166 true))

(assert (=> d!1941166 true))

(declare-fun res!2561424 () Bool)

(assert (=> d!1941166 (= (choose!45995 lambda!337983) res!2561424)))

(assert (=> d!1940584 d!1941166))

(assert (=> b!6190189 d!1940718))

(assert (=> b!6190189 d!1940628))

(assert (=> d!1940500 d!1940732))

(declare-fun d!1941168 () Bool)

(assert (=> d!1941168 (= (nullable!6122 (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))) (nullableFct!2080 (h!71011 (exprs!6013 (Context!11027 (Cons!64563 (h!71011 (exprs!6013 (h!71012 zl!343))) (t!378197 (exprs!6013 (h!71012 zl!343)))))))))))

(declare-fun bs!1536093 () Bool)

(assert (= bs!1536093 d!1941168))

(declare-fun m!7025802 () Bool)

(assert (=> bs!1536093 m!7025802))

(assert (=> b!6190417 d!1941168))

(declare-fun b!6191571 () Bool)

(declare-fun e!3770774 () Bool)

(declare-fun e!3770778 () Bool)

(assert (=> b!6191571 (= e!3770774 e!3770778)))

(declare-fun c!1117150 () Bool)

(assert (=> b!6191571 (= c!1117150 ((_ is EmptyLang!16129) (regOne!32770 r!7292)))))

(declare-fun b!6191572 () Bool)

(declare-fun e!3770776 () Bool)

(declare-fun e!3770777 () Bool)

(assert (=> b!6191572 (= e!3770776 e!3770777)))

(declare-fun res!2561430 () Bool)

(assert (=> b!6191572 (=> (not res!2561430) (not e!3770777))))

(declare-fun lt!2340907 () Bool)

(assert (=> b!6191572 (= res!2561430 (not lt!2340907))))

(declare-fun b!6191573 () Bool)

(declare-fun res!2561425 () Bool)

(assert (=> b!6191573 (=> res!2561425 e!3770776)))

(assert (=> b!6191573 (= res!2561425 (not ((_ is ElementMatch!16129) (regOne!32770 r!7292))))))

(assert (=> b!6191573 (= e!3770778 e!3770776)))

(declare-fun d!1941170 () Bool)

(assert (=> d!1941170 e!3770774))

(declare-fun c!1117152 () Bool)

(assert (=> d!1941170 (= c!1117152 ((_ is EmptyExpr!16129) (regOne!32770 r!7292)))))

(declare-fun e!3770775 () Bool)

(assert (=> d!1941170 (= lt!2340907 e!3770775)))

(declare-fun c!1117151 () Bool)

(assert (=> d!1941170 (= c!1117151 (isEmpty!36550 (_1!36411 (get!22289 lt!2340844))))))

(assert (=> d!1941170 (validRegex!7865 (regOne!32770 r!7292))))

(assert (=> d!1941170 (= (matchR!8312 (regOne!32770 r!7292) (_1!36411 (get!22289 lt!2340844))) lt!2340907)))

(declare-fun b!6191574 () Bool)

(assert (=> b!6191574 (= e!3770775 (nullable!6122 (regOne!32770 r!7292)))))

(declare-fun b!6191575 () Bool)

(declare-fun e!3770780 () Bool)

(assert (=> b!6191575 (= e!3770780 (= (head!12771 (_1!36411 (get!22289 lt!2340844))) (c!1116552 (regOne!32770 r!7292))))))

(declare-fun b!6191576 () Bool)

(declare-fun res!2561428 () Bool)

(assert (=> b!6191576 (=> (not res!2561428) (not e!3770780))))

(declare-fun call!517778 () Bool)

(assert (=> b!6191576 (= res!2561428 (not call!517778))))

(declare-fun b!6191577 () Bool)

(declare-fun res!2561426 () Bool)

(assert (=> b!6191577 (=> (not res!2561426) (not e!3770780))))

(assert (=> b!6191577 (= res!2561426 (isEmpty!36550 (tail!11856 (_1!36411 (get!22289 lt!2340844)))))))

(declare-fun b!6191578 () Bool)

(assert (=> b!6191578 (= e!3770774 (= lt!2340907 call!517778))))

(declare-fun b!6191579 () Bool)

(assert (=> b!6191579 (= e!3770775 (matchR!8312 (derivativeStep!4844 (regOne!32770 r!7292) (head!12771 (_1!36411 (get!22289 lt!2340844)))) (tail!11856 (_1!36411 (get!22289 lt!2340844)))))))

(declare-fun bm!517773 () Bool)

(assert (=> bm!517773 (= call!517778 (isEmpty!36550 (_1!36411 (get!22289 lt!2340844))))))

(declare-fun b!6191580 () Bool)

(declare-fun e!3770779 () Bool)

(assert (=> b!6191580 (= e!3770777 e!3770779)))

(declare-fun res!2561432 () Bool)

(assert (=> b!6191580 (=> res!2561432 e!3770779)))

(assert (=> b!6191580 (= res!2561432 call!517778)))

(declare-fun b!6191581 () Bool)

(declare-fun res!2561427 () Bool)

(assert (=> b!6191581 (=> res!2561427 e!3770776)))

(assert (=> b!6191581 (= res!2561427 e!3770780)))

(declare-fun res!2561431 () Bool)

(assert (=> b!6191581 (=> (not res!2561431) (not e!3770780))))

(assert (=> b!6191581 (= res!2561431 lt!2340907)))

(declare-fun b!6191582 () Bool)

(assert (=> b!6191582 (= e!3770779 (not (= (head!12771 (_1!36411 (get!22289 lt!2340844))) (c!1116552 (regOne!32770 r!7292)))))))

(declare-fun b!6191583 () Bool)

(declare-fun res!2561429 () Bool)

(assert (=> b!6191583 (=> res!2561429 e!3770779)))

(assert (=> b!6191583 (= res!2561429 (not (isEmpty!36550 (tail!11856 (_1!36411 (get!22289 lt!2340844))))))))

(declare-fun b!6191584 () Bool)

(assert (=> b!6191584 (= e!3770778 (not lt!2340907))))

(assert (= (and d!1941170 c!1117151) b!6191574))

(assert (= (and d!1941170 (not c!1117151)) b!6191579))

(assert (= (and d!1941170 c!1117152) b!6191578))

(assert (= (and d!1941170 (not c!1117152)) b!6191571))

(assert (= (and b!6191571 c!1117150) b!6191584))

(assert (= (and b!6191571 (not c!1117150)) b!6191573))

(assert (= (and b!6191573 (not res!2561425)) b!6191581))

(assert (= (and b!6191581 res!2561431) b!6191576))

(assert (= (and b!6191576 res!2561428) b!6191577))

(assert (= (and b!6191577 res!2561426) b!6191575))

(assert (= (and b!6191581 (not res!2561427)) b!6191572))

(assert (= (and b!6191572 res!2561430) b!6191580))

(assert (= (and b!6191580 (not res!2561432)) b!6191583))

(assert (= (and b!6191583 (not res!2561429)) b!6191582))

(assert (= (or b!6191578 b!6191576 b!6191580) bm!517773))

(declare-fun m!7025806 () Bool)

(assert (=> bm!517773 m!7025806))

(declare-fun m!7025808 () Bool)

(assert (=> b!6191577 m!7025808))

(assert (=> b!6191577 m!7025808))

(declare-fun m!7025810 () Bool)

(assert (=> b!6191577 m!7025810))

(assert (=> b!6191583 m!7025808))

(assert (=> b!6191583 m!7025808))

(assert (=> b!6191583 m!7025810))

(declare-fun m!7025812 () Bool)

(assert (=> b!6191579 m!7025812))

(assert (=> b!6191579 m!7025812))

(declare-fun m!7025814 () Bool)

(assert (=> b!6191579 m!7025814))

(assert (=> b!6191579 m!7025808))

(assert (=> b!6191579 m!7025814))

(assert (=> b!6191579 m!7025808))

(declare-fun m!7025816 () Bool)

(assert (=> b!6191579 m!7025816))

(assert (=> b!6191575 m!7025812))

(assert (=> d!1941170 m!7025806))

(assert (=> d!1941170 m!7024700))

(assert (=> b!6191582 m!7025812))

(assert (=> b!6191574 m!7025346))

(assert (=> b!6190462 d!1941170))

(assert (=> b!6190462 d!1941110))

(assert (=> bm!517500 d!1940614))

(declare-fun d!1941176 () Bool)

(declare-fun lt!2340908 () Int)

(assert (=> d!1941176 (>= lt!2340908 0)))

(declare-fun e!3770788 () Int)

(assert (=> d!1941176 (= lt!2340908 e!3770788)))

(declare-fun c!1117157 () Bool)

(assert (=> d!1941176 (= c!1117157 ((_ is Cons!64563) (exprs!6013 (h!71012 zl!343))))))

(assert (=> d!1941176 (= (contextDepthTotal!282 (h!71012 zl!343)) lt!2340908)))

(declare-fun b!6191596 () Bool)

(assert (=> b!6191596 (= e!3770788 (+ (regexDepthTotal!140 (h!71011 (exprs!6013 (h!71012 zl!343)))) (contextDepthTotal!282 (Context!11027 (t!378197 (exprs!6013 (h!71012 zl!343)))))))))

(declare-fun b!6191597 () Bool)

(assert (=> b!6191597 (= e!3770788 1)))

(assert (= (and d!1941176 c!1117157) b!6191596))

(assert (= (and d!1941176 (not c!1117157)) b!6191597))

(declare-fun m!7025818 () Bool)

(assert (=> b!6191596 m!7025818))

(declare-fun m!7025820 () Bool)

(assert (=> b!6191596 m!7025820))

(assert (=> b!6190494 d!1941176))

(declare-fun d!1941178 () Bool)

(declare-fun lt!2340909 () Int)

(assert (=> d!1941178 (>= lt!2340909 0)))

(declare-fun e!3770789 () Int)

(assert (=> d!1941178 (= lt!2340909 e!3770789)))

(declare-fun c!1117158 () Bool)

(assert (=> d!1941178 (= c!1117158 ((_ is Cons!64564) (t!378198 zl!343)))))

(assert (=> d!1941178 (= (zipperDepthTotal!312 (t!378198 zl!343)) lt!2340909)))

(declare-fun b!6191598 () Bool)

(assert (=> b!6191598 (= e!3770789 (+ (contextDepthTotal!282 (h!71012 (t!378198 zl!343))) (zipperDepthTotal!312 (t!378198 (t!378198 zl!343)))))))

(declare-fun b!6191599 () Bool)

(assert (=> b!6191599 (= e!3770789 0)))

(assert (= (and d!1941178 c!1117158) b!6191598))

(assert (= (and d!1941178 (not c!1117158)) b!6191599))

(declare-fun m!7025822 () Bool)

(assert (=> b!6191598 m!7025822))

(declare-fun m!7025824 () Bool)

(assert (=> b!6191598 m!7025824))

(assert (=> b!6190494 d!1941178))

(declare-fun d!1941180 () Bool)

(assert (=> d!1941180 (= (isEmpty!36547 (t!378197 (unfocusZipperList!1550 zl!343))) ((_ is Nil!64563) (t!378197 (unfocusZipperList!1550 zl!343))))))

(assert (=> b!6190346 d!1941180))

(declare-fun bs!1536107 () Bool)

(declare-fun d!1941182 () Bool)

(assert (= bs!1536107 (and d!1941182 d!1940474)))

(declare-fun lambda!338137 () Int)

(assert (=> bs!1536107 (= lambda!338137 lambda!338023)))

(declare-fun bs!1536109 () Bool)

(assert (= bs!1536109 (and d!1941182 d!1940526)))

(assert (=> bs!1536109 (= lambda!338137 lambda!338038)))

(declare-fun bs!1536110 () Bool)

(assert (= bs!1536110 (and d!1941182 d!1940492)))

(assert (=> bs!1536110 (= lambda!338137 lambda!338030)))

(declare-fun bs!1536112 () Bool)

(assert (= bs!1536112 (and d!1941182 d!1940600)))

(assert (=> bs!1536112 (= lambda!338137 lambda!338055)))

(declare-fun bs!1536113 () Bool)

(assert (= bs!1536113 (and d!1941182 d!1940884)))

(assert (=> bs!1536113 (= lambda!338137 lambda!338099)))

(declare-fun bs!1536115 () Bool)

(assert (= bs!1536115 (and d!1941182 d!1941114)))

(assert (=> bs!1536115 (= lambda!338137 lambda!338130)))

(declare-fun bs!1536116 () Bool)

(assert (= bs!1536116 (and d!1941182 d!1941092)))

(assert (=> bs!1536116 (= lambda!338137 lambda!338126)))

(declare-fun bs!1536118 () Bool)

(assert (= bs!1536118 (and d!1941182 d!1940902)))

(assert (=> bs!1536118 (= lambda!338137 lambda!338103)))

(declare-fun bs!1536119 () Bool)

(assert (= bs!1536119 (and d!1941182 d!1940530)))

(assert (=> bs!1536119 (= lambda!338137 lambda!338042)))

(declare-fun bs!1536120 () Bool)

(assert (= bs!1536120 (and d!1941182 d!1940892)))

(assert (=> bs!1536120 (= lambda!338137 lambda!338101)))

(declare-fun bs!1536122 () Bool)

(assert (= bs!1536122 (and d!1941182 d!1940532)))

(assert (=> bs!1536122 (= lambda!338137 lambda!338045)))

(declare-fun bs!1536123 () Bool)

(assert (= bs!1536123 (and d!1941182 d!1940864)))

(assert (=> bs!1536123 (= lambda!338137 lambda!338096)))

(declare-fun bs!1536125 () Bool)

(assert (= bs!1536125 (and d!1941182 d!1940528)))

(assert (=> bs!1536125 (= lambda!338137 lambda!338039)))

(declare-fun bs!1536126 () Bool)

(assert (= bs!1536126 (and d!1941182 d!1940494)))

(assert (=> bs!1536126 (= lambda!338137 lambda!338031)))

(assert (=> d!1941182 (= (inv!83569 (h!71012 (t!378198 zl!343))) (forall!15245 (exprs!6013 (h!71012 (t!378198 zl!343))) lambda!338137))))

(declare-fun bs!1536129 () Bool)

(assert (= bs!1536129 d!1941182))

(declare-fun m!7025826 () Bool)

(assert (=> bs!1536129 m!7025826))

(assert (=> b!6190545 d!1941182))

(declare-fun bm!517776 () Bool)

(declare-fun call!517783 () Bool)

(declare-fun c!1117160 () Bool)

(assert (=> bm!517776 (= call!517783 (validRegex!7865 (ite c!1117160 (regOne!32771 lt!2340796) (regOne!32770 lt!2340796))))))

(declare-fun b!6191600 () Bool)

(declare-fun e!3770791 () Bool)

(declare-fun call!517782 () Bool)

(assert (=> b!6191600 (= e!3770791 call!517782)))

(declare-fun d!1941184 () Bool)

(declare-fun res!2561438 () Bool)

(declare-fun e!3770793 () Bool)

(assert (=> d!1941184 (=> res!2561438 e!3770793)))

(assert (=> d!1941184 (= res!2561438 ((_ is ElementMatch!16129) lt!2340796))))

(assert (=> d!1941184 (= (validRegex!7865 lt!2340796) e!3770793)))

(declare-fun bm!517777 () Bool)

(declare-fun call!517781 () Bool)

(assert (=> bm!517777 (= call!517781 call!517782)))

(declare-fun c!1117159 () Bool)

(declare-fun bm!517778 () Bool)

(assert (=> bm!517778 (= call!517782 (validRegex!7865 (ite c!1117159 (reg!16458 lt!2340796) (ite c!1117160 (regTwo!32771 lt!2340796) (regTwo!32770 lt!2340796)))))))

(declare-fun b!6191601 () Bool)

(declare-fun e!3770796 () Bool)

(assert (=> b!6191601 (= e!3770796 call!517781)))

(declare-fun b!6191602 () Bool)

(declare-fun e!3770790 () Bool)

(assert (=> b!6191602 (= e!3770790 e!3770791)))

(declare-fun res!2561437 () Bool)

(assert (=> b!6191602 (= res!2561437 (not (nullable!6122 (reg!16458 lt!2340796))))))

(assert (=> b!6191602 (=> (not res!2561437) (not e!3770791))))

(declare-fun b!6191603 () Bool)

(declare-fun e!3770792 () Bool)

(assert (=> b!6191603 (= e!3770792 call!517781)))

(declare-fun b!6191604 () Bool)

(assert (=> b!6191604 (= e!3770793 e!3770790)))

(assert (=> b!6191604 (= c!1117159 ((_ is Star!16129) lt!2340796))))

(declare-fun b!6191605 () Bool)

(declare-fun res!2561436 () Bool)

(declare-fun e!3770795 () Bool)

(assert (=> b!6191605 (=> res!2561436 e!3770795)))

(assert (=> b!6191605 (= res!2561436 (not ((_ is Concat!24974) lt!2340796)))))

(declare-fun e!3770794 () Bool)

(assert (=> b!6191605 (= e!3770794 e!3770795)))

(declare-fun b!6191606 () Bool)

(assert (=> b!6191606 (= e!3770795 e!3770796)))

(declare-fun res!2561440 () Bool)

(assert (=> b!6191606 (=> (not res!2561440) (not e!3770796))))

(assert (=> b!6191606 (= res!2561440 call!517783)))

(declare-fun b!6191607 () Bool)

(assert (=> b!6191607 (= e!3770790 e!3770794)))

(assert (=> b!6191607 (= c!1117160 ((_ is Union!16129) lt!2340796))))

(declare-fun b!6191608 () Bool)

(declare-fun res!2561439 () Bool)

(assert (=> b!6191608 (=> (not res!2561439) (not e!3770792))))

(assert (=> b!6191608 (= res!2561439 call!517783)))

(assert (=> b!6191608 (= e!3770794 e!3770792)))

(assert (= (and d!1941184 (not res!2561438)) b!6191604))

(assert (= (and b!6191604 c!1117159) b!6191602))

(assert (= (and b!6191604 (not c!1117159)) b!6191607))

(assert (= (and b!6191602 res!2561437) b!6191600))

(assert (= (and b!6191607 c!1117160) b!6191608))

(assert (= (and b!6191607 (not c!1117160)) b!6191605))

(assert (= (and b!6191608 res!2561439) b!6191603))

(assert (= (and b!6191605 (not res!2561436)) b!6191606))

(assert (= (and b!6191606 res!2561440) b!6191601))

(assert (= (or b!6191603 b!6191601) bm!517777))

(assert (= (or b!6191608 b!6191606) bm!517776))

(assert (= (or b!6191600 bm!517777) bm!517778))

(declare-fun m!7025828 () Bool)

(assert (=> bm!517776 m!7025828))

(declare-fun m!7025830 () Bool)

(assert (=> bm!517778 m!7025830))

(declare-fun m!7025832 () Bool)

(assert (=> b!6191602 m!7025832))

(assert (=> d!1940474 d!1941184))

(declare-fun d!1941186 () Bool)

(declare-fun res!2561441 () Bool)

(declare-fun e!3770797 () Bool)

(assert (=> d!1941186 (=> res!2561441 e!3770797)))

(assert (=> d!1941186 (= res!2561441 ((_ is Nil!64563) (exprs!6013 (h!71012 zl!343))))))

(assert (=> d!1941186 (= (forall!15245 (exprs!6013 (h!71012 zl!343)) lambda!338023) e!3770797)))

(declare-fun b!6191609 () Bool)

(declare-fun e!3770798 () Bool)

(assert (=> b!6191609 (= e!3770797 e!3770798)))

(declare-fun res!2561442 () Bool)

(assert (=> b!6191609 (=> (not res!2561442) (not e!3770798))))

(assert (=> b!6191609 (= res!2561442 (dynLambda!25460 lambda!338023 (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun b!6191610 () Bool)

(assert (=> b!6191610 (= e!3770798 (forall!15245 (t!378197 (exprs!6013 (h!71012 zl!343))) lambda!338023))))

(assert (= (and d!1941186 (not res!2561441)) b!6191609))

(assert (= (and b!6191609 res!2561442) b!6191610))

(declare-fun b_lambda!235547 () Bool)

(assert (=> (not b_lambda!235547) (not b!6191609)))

(declare-fun m!7025834 () Bool)

(assert (=> b!6191609 m!7025834))

(declare-fun m!7025836 () Bool)

(assert (=> b!6191610 m!7025836))

(assert (=> d!1940474 d!1941186))

(declare-fun d!1941188 () Bool)

(declare-fun c!1117161 () Bool)

(assert (=> d!1941188 (= c!1117161 (isEmpty!36550 (tail!11856 (t!378196 s!2326))))))

(declare-fun e!3770799 () Bool)

(assert (=> d!1941188 (= (matchZipper!2141 (derivationStepZipper!2097 lt!2340723 (head!12771 (t!378196 s!2326))) (tail!11856 (t!378196 s!2326))) e!3770799)))

(declare-fun b!6191611 () Bool)

(assert (=> b!6191611 (= e!3770799 (nullableZipper!1905 (derivationStepZipper!2097 lt!2340723 (head!12771 (t!378196 s!2326)))))))

(declare-fun b!6191612 () Bool)

(assert (=> b!6191612 (= e!3770799 (matchZipper!2141 (derivationStepZipper!2097 (derivationStepZipper!2097 lt!2340723 (head!12771 (t!378196 s!2326))) (head!12771 (tail!11856 (t!378196 s!2326)))) (tail!11856 (tail!11856 (t!378196 s!2326)))))))

(assert (= (and d!1941188 c!1117161) b!6191611))

(assert (= (and d!1941188 (not c!1117161)) b!6191612))

(assert (=> d!1941188 m!7024486))

(assert (=> d!1941188 m!7024926))

(assert (=> b!6191611 m!7024554))

(declare-fun m!7025838 () Bool)

(assert (=> b!6191611 m!7025838))

(assert (=> b!6191612 m!7024486))

(assert (=> b!6191612 m!7024930))

(assert (=> b!6191612 m!7024554))

(assert (=> b!6191612 m!7024930))

(declare-fun m!7025840 () Bool)

(assert (=> b!6191612 m!7025840))

(assert (=> b!6191612 m!7024486))

(assert (=> b!6191612 m!7024934))

(assert (=> b!6191612 m!7025840))

(assert (=> b!6191612 m!7024934))

(declare-fun m!7025842 () Bool)

(assert (=> b!6191612 m!7025842))

(assert (=> b!6190321 d!1941188))

(declare-fun bs!1536140 () Bool)

(declare-fun d!1941190 () Bool)

(assert (= bs!1536140 (and d!1941190 d!1941034)))

(declare-fun lambda!338139 () Int)

(assert (=> bs!1536140 (= lambda!338139 lambda!338121)))

(declare-fun bs!1536141 () Bool)

(assert (= bs!1536141 (and d!1941190 d!1940814)))

(assert (=> bs!1536141 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338139 lambda!338079))))

(declare-fun bs!1536143 () Bool)

(assert (= bs!1536143 (and d!1941190 d!1940972)))

(assert (=> bs!1536143 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338139 lambda!338116))))

(declare-fun bs!1536144 () Bool)

(assert (= bs!1536144 (and d!1941190 d!1941106)))

(assert (=> bs!1536144 (= lambda!338139 lambda!338128)))

(declare-fun bs!1536146 () Bool)

(assert (= bs!1536146 (and d!1941190 d!1940774)))

(assert (=> bs!1536146 (= lambda!338139 lambda!338071)))

(declare-fun bs!1536148 () Bool)

(assert (= bs!1536148 (and d!1941190 d!1940722)))

(assert (=> bs!1536148 (= lambda!338139 lambda!338068)))

(declare-fun bs!1536149 () Bool)

(assert (= bs!1536149 (and d!1941190 d!1941046)))

(assert (=> bs!1536149 (= lambda!338139 lambda!338122)))

(declare-fun bs!1536150 () Bool)

(assert (= bs!1536150 (and d!1941190 d!1940742)))

(assert (=> bs!1536150 (= lambda!338139 lambda!338070)))

(declare-fun bs!1536152 () Bool)

(assert (= bs!1536152 (and d!1941190 d!1940700)))

(assert (=> bs!1536152 (= lambda!338139 lambda!338061)))

(declare-fun bs!1536153 () Bool)

(assert (= bs!1536153 (and d!1941190 b!6189536)))

(assert (=> bs!1536153 (= (= (head!12771 (t!378196 s!2326)) (h!71010 s!2326)) (= lambda!338139 lambda!337985))))

(declare-fun bs!1536155 () Bool)

(assert (= bs!1536155 (and d!1941190 d!1940624)))

(assert (=> bs!1536155 (= (= (head!12771 (t!378196 s!2326)) (head!12771 s!2326)) (= lambda!338139 lambda!338058))))

(assert (=> d!1941190 true))

(assert (=> d!1941190 (= (derivationStepZipper!2097 lt!2340723 (head!12771 (t!378196 s!2326))) (flatMap!1634 lt!2340723 lambda!338139))))

(declare-fun bs!1536157 () Bool)

(assert (= bs!1536157 d!1941190))

(declare-fun m!7025844 () Bool)

(assert (=> bs!1536157 m!7025844))

(assert (=> b!6190321 d!1941190))

(assert (=> b!6190321 d!1940702))

(assert (=> b!6190321 d!1940704))

(declare-fun bs!1536160 () Bool)

(declare-fun d!1941192 () Bool)

(assert (= bs!1536160 (and d!1941192 d!1940716)))

(declare-fun lambda!338140 () Int)

(assert (=> bs!1536160 (= lambda!338140 lambda!338066)))

(declare-fun bs!1536162 () Bool)

(assert (= bs!1536162 (and d!1941192 d!1940794)))

(assert (=> bs!1536162 (= lambda!338140 lambda!338078)))

(declare-fun bs!1536163 () Bool)

(assert (= bs!1536163 (and d!1941192 d!1940874)))

(assert (=> bs!1536163 (= lambda!338140 lambda!338098)))

(declare-fun bs!1536165 () Bool)

(assert (= bs!1536165 (and d!1941192 d!1940848)))

(assert (=> bs!1536165 (= lambda!338140 lambda!338094)))

(declare-fun bs!1536166 () Bool)

(assert (= bs!1536166 (and d!1941192 d!1940734)))

(assert (=> bs!1536166 (= lambda!338140 lambda!338069)))

(declare-fun bs!1536167 () Bool)

(assert (= bs!1536167 (and d!1941192 d!1940890)))

(assert (=> bs!1536167 (= lambda!338140 lambda!338100)))

(declare-fun bs!1536168 () Bool)

(assert (= bs!1536168 (and d!1941192 d!1940866)))

(assert (=> bs!1536168 (= lambda!338140 lambda!338097)))

(declare-fun bs!1536169 () Bool)

(assert (= bs!1536169 (and d!1941192 d!1941116)))

(assert (=> bs!1536169 (= lambda!338140 lambda!338131)))

(declare-fun bs!1536170 () Bool)

(assert (= bs!1536170 (and d!1941192 d!1940908)))

(assert (=> bs!1536170 (= lambda!338140 lambda!338104)))

(assert (=> d!1941192 (= (nullableZipper!1905 lt!2340714) (exists!2466 lt!2340714 lambda!338140))))

(declare-fun bs!1536171 () Bool)

(assert (= bs!1536171 d!1941192))

(declare-fun m!7025846 () Bool)

(assert (=> bs!1536171 m!7025846))

(assert (=> b!6190483 d!1941192))

(declare-fun bm!517779 () Bool)

(declare-fun call!517786 () Bool)

(declare-fun c!1117163 () Bool)

(assert (=> bm!517779 (= call!517786 (validRegex!7865 (ite c!1117163 (regOne!32771 lt!2340822) (regOne!32770 lt!2340822))))))

(declare-fun b!6191613 () Bool)

(declare-fun e!3770801 () Bool)

(declare-fun call!517785 () Bool)

(assert (=> b!6191613 (= e!3770801 call!517785)))

(declare-fun d!1941194 () Bool)

(declare-fun res!2561445 () Bool)

(declare-fun e!3770803 () Bool)

(assert (=> d!1941194 (=> res!2561445 e!3770803)))

(assert (=> d!1941194 (= res!2561445 ((_ is ElementMatch!16129) lt!2340822))))

(assert (=> d!1941194 (= (validRegex!7865 lt!2340822) e!3770803)))

(declare-fun bm!517780 () Bool)

(declare-fun call!517784 () Bool)

(assert (=> bm!517780 (= call!517784 call!517785)))

(declare-fun bm!517781 () Bool)

(declare-fun c!1117162 () Bool)

(assert (=> bm!517781 (= call!517785 (validRegex!7865 (ite c!1117162 (reg!16458 lt!2340822) (ite c!1117163 (regTwo!32771 lt!2340822) (regTwo!32770 lt!2340822)))))))

(declare-fun b!6191614 () Bool)

(declare-fun e!3770806 () Bool)

(assert (=> b!6191614 (= e!3770806 call!517784)))

(declare-fun b!6191615 () Bool)

(declare-fun e!3770800 () Bool)

(assert (=> b!6191615 (= e!3770800 e!3770801)))

(declare-fun res!2561444 () Bool)

(assert (=> b!6191615 (= res!2561444 (not (nullable!6122 (reg!16458 lt!2340822))))))

(assert (=> b!6191615 (=> (not res!2561444) (not e!3770801))))

(declare-fun b!6191616 () Bool)

(declare-fun e!3770802 () Bool)

(assert (=> b!6191616 (= e!3770802 call!517784)))

(declare-fun b!6191617 () Bool)

(assert (=> b!6191617 (= e!3770803 e!3770800)))

(assert (=> b!6191617 (= c!1117162 ((_ is Star!16129) lt!2340822))))

(declare-fun b!6191618 () Bool)

(declare-fun res!2561443 () Bool)

(declare-fun e!3770805 () Bool)

(assert (=> b!6191618 (=> res!2561443 e!3770805)))

(assert (=> b!6191618 (= res!2561443 (not ((_ is Concat!24974) lt!2340822)))))

(declare-fun e!3770804 () Bool)

(assert (=> b!6191618 (= e!3770804 e!3770805)))

(declare-fun b!6191619 () Bool)

(assert (=> b!6191619 (= e!3770805 e!3770806)))

(declare-fun res!2561447 () Bool)

(assert (=> b!6191619 (=> (not res!2561447) (not e!3770806))))

(assert (=> b!6191619 (= res!2561447 call!517786)))

(declare-fun b!6191620 () Bool)

(assert (=> b!6191620 (= e!3770800 e!3770804)))

(assert (=> b!6191620 (= c!1117163 ((_ is Union!16129) lt!2340822))))

(declare-fun b!6191621 () Bool)

(declare-fun res!2561446 () Bool)

(assert (=> b!6191621 (=> (not res!2561446) (not e!3770802))))

(assert (=> b!6191621 (= res!2561446 call!517786)))

(assert (=> b!6191621 (= e!3770804 e!3770802)))

(assert (= (and d!1941194 (not res!2561445)) b!6191617))

(assert (= (and b!6191617 c!1117162) b!6191615))

(assert (= (and b!6191617 (not c!1117162)) b!6191620))

(assert (= (and b!6191615 res!2561444) b!6191613))

(assert (= (and b!6191620 c!1117163) b!6191621))

(assert (= (and b!6191620 (not c!1117163)) b!6191618))

(assert (= (and b!6191621 res!2561446) b!6191616))

(assert (= (and b!6191618 (not res!2561443)) b!6191619))

(assert (= (and b!6191619 res!2561447) b!6191614))

(assert (= (or b!6191616 b!6191614) bm!517780))

(assert (= (or b!6191621 b!6191619) bm!517779))

(assert (= (or b!6191613 bm!517780) bm!517781))

(declare-fun m!7025854 () Bool)

(assert (=> bm!517779 m!7025854))

(declare-fun m!7025856 () Bool)

(assert (=> bm!517781 m!7025856))

(declare-fun m!7025858 () Bool)

(assert (=> b!6191615 m!7025858))

(assert (=> d!1940530 d!1941194))

(declare-fun d!1941198 () Bool)

(declare-fun res!2561448 () Bool)

(declare-fun e!3770807 () Bool)

(assert (=> d!1941198 (=> res!2561448 e!3770807)))

(assert (=> d!1941198 (= res!2561448 ((_ is Nil!64563) (unfocusZipperList!1550 zl!343)))))

(assert (=> d!1941198 (= (forall!15245 (unfocusZipperList!1550 zl!343) lambda!338042) e!3770807)))

(declare-fun b!6191622 () Bool)

(declare-fun e!3770808 () Bool)

(assert (=> b!6191622 (= e!3770807 e!3770808)))

(declare-fun res!2561449 () Bool)

(assert (=> b!6191622 (=> (not res!2561449) (not e!3770808))))

(assert (=> b!6191622 (= res!2561449 (dynLambda!25460 lambda!338042 (h!71011 (unfocusZipperList!1550 zl!343))))))

(declare-fun b!6191623 () Bool)

(assert (=> b!6191623 (= e!3770808 (forall!15245 (t!378197 (unfocusZipperList!1550 zl!343)) lambda!338042))))

(assert (= (and d!1941198 (not res!2561448)) b!6191622))

(assert (= (and b!6191622 res!2561449) b!6191623))

(declare-fun b_lambda!235549 () Bool)

(assert (=> (not b_lambda!235549) (not b!6191622)))

(declare-fun m!7025862 () Bool)

(assert (=> b!6191622 m!7025862))

(declare-fun m!7025864 () Bool)

(assert (=> b!6191623 m!7025864))

(assert (=> d!1940530 d!1941198))

(assert (=> b!6190197 d!1940718))

(assert (=> b!6190197 d!1940628))

(declare-fun d!1941204 () Bool)

(assert (=> d!1941204 (= (nullable!6122 r!7292) (nullableFct!2080 r!7292))))

(declare-fun bs!1536177 () Bool)

(assert (= bs!1536177 d!1941204))

(declare-fun m!7025866 () Bool)

(assert (=> bs!1536177 m!7025866))

(assert (=> b!6190309 d!1941204))

(declare-fun bs!1536178 () Bool)

(declare-fun d!1941206 () Bool)

(assert (= bs!1536178 (and d!1941206 d!1940716)))

(declare-fun lambda!338142 () Int)

(assert (=> bs!1536178 (= lambda!338142 lambda!338066)))

(declare-fun bs!1536179 () Bool)

(assert (= bs!1536179 (and d!1941206 d!1940794)))

(assert (=> bs!1536179 (= lambda!338142 lambda!338078)))

(declare-fun bs!1536180 () Bool)

(assert (= bs!1536180 (and d!1941206 d!1940874)))

(assert (=> bs!1536180 (= lambda!338142 lambda!338098)))

(declare-fun bs!1536181 () Bool)

(assert (= bs!1536181 (and d!1941206 d!1940848)))

(assert (=> bs!1536181 (= lambda!338142 lambda!338094)))

(declare-fun bs!1536182 () Bool)

(assert (= bs!1536182 (and d!1941206 d!1940734)))

(assert (=> bs!1536182 (= lambda!338142 lambda!338069)))

(declare-fun bs!1536183 () Bool)

(assert (= bs!1536183 (and d!1941206 d!1940890)))

(assert (=> bs!1536183 (= lambda!338142 lambda!338100)))

(declare-fun bs!1536184 () Bool)

(assert (= bs!1536184 (and d!1941206 d!1940866)))

(assert (=> bs!1536184 (= lambda!338142 lambda!338097)))

(declare-fun bs!1536185 () Bool)

(assert (= bs!1536185 (and d!1941206 d!1941192)))

(assert (=> bs!1536185 (= lambda!338142 lambda!338140)))

(declare-fun bs!1536186 () Bool)

(assert (= bs!1536186 (and d!1941206 d!1941116)))

(assert (=> bs!1536186 (= lambda!338142 lambda!338131)))

(declare-fun bs!1536187 () Bool)

(assert (= bs!1536187 (and d!1941206 d!1940908)))

(assert (=> bs!1536187 (= lambda!338142 lambda!338104)))

(assert (=> d!1941206 (= (nullableZipper!1905 ((_ map or) lt!2340714 lt!2340723)) (exists!2466 ((_ map or) lt!2340714 lt!2340723) lambda!338142))))

(declare-fun bs!1536188 () Bool)

(assert (= bs!1536188 d!1941206))

(declare-fun m!7025878 () Bool)

(assert (=> bs!1536188 m!7025878))

(assert (=> b!6190509 d!1941206))

(assert (=> bm!517498 d!1940614))

(declare-fun b!6191637 () Bool)

(declare-fun c!1117170 () Bool)

(assert (=> b!6191637 (= c!1117170 ((_ is Star!16129) (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))))))))

(declare-fun e!3770819 () (InoxSet Context!11026))

(declare-fun e!3770822 () (InoxSet Context!11026))

(assert (=> b!6191637 (= e!3770819 e!3770822)))

(declare-fun b!6191638 () Bool)

(assert (=> b!6191638 (= e!3770822 ((as const (Array Context!11026 Bool)) false))))

(declare-fun bm!517785 () Bool)

(declare-fun call!517791 () (InoxSet Context!11026))

(declare-fun call!517793 () (InoxSet Context!11026))

(assert (=> bm!517785 (= call!517791 call!517793)))

(declare-fun bm!517786 () Bool)

(declare-fun call!517795 () List!64687)

(declare-fun call!517794 () List!64687)

(assert (=> bm!517786 (= call!517795 call!517794)))

(declare-fun b!6191639 () Bool)

(declare-fun e!3770820 () (InoxSet Context!11026))

(declare-fun call!517790 () (InoxSet Context!11026))

(declare-fun call!517792 () (InoxSet Context!11026))

(assert (=> b!6191639 (= e!3770820 ((_ map or) call!517790 call!517792))))

(declare-fun b!6191640 () Bool)

(declare-fun e!3770824 () (InoxSet Context!11026))

(assert (=> b!6191640 (= e!3770824 e!3770819)))

(declare-fun c!1117168 () Bool)

(assert (=> b!6191640 (= c!1117168 ((_ is Concat!24974) (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))))))))

(declare-fun bm!517787 () Bool)

(declare-fun c!1117171 () Bool)

(assert (=> bm!517787 (= call!517794 ($colon$colon!2000 (exprs!6013 (ite c!1116806 lt!2340688 (Context!11027 call!517547))) (ite (or c!1117171 c!1117168) (regTwo!32770 (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))))) (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343))))))))))

(declare-fun c!1117167 () Bool)

(declare-fun bm!517788 () Bool)

(assert (=> bm!517788 (= call!517790 (derivationStepZipperDown!1377 (ite c!1117167 (regOne!32771 (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))))) (regOne!32770 (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343))))))) (ite c!1117167 (ite c!1116806 lt!2340688 (Context!11027 call!517547)) (Context!11027 call!517794)) (h!71010 s!2326)))))

(declare-fun bm!517789 () Bool)

(assert (=> bm!517789 (= call!517793 call!517792)))

(declare-fun b!6191641 () Bool)

(declare-fun e!3770821 () Bool)

(assert (=> b!6191641 (= e!3770821 (nullable!6122 (regOne!32770 (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343))))))))))

(declare-fun bm!517790 () Bool)

(assert (=> bm!517790 (= call!517792 (derivationStepZipperDown!1377 (ite c!1117167 (regTwo!32771 (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))))) (ite c!1117171 (regTwo!32770 (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))))) (ite c!1117168 (regOne!32770 (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))))) (reg!16458 (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343))))))))) (ite (or c!1117167 c!1117171) (ite c!1116806 lt!2340688 (Context!11027 call!517547)) (Context!11027 call!517795)) (h!71010 s!2326)))))

(declare-fun b!6191642 () Bool)

(assert (=> b!6191642 (= c!1117171 e!3770821)))

(declare-fun res!2561457 () Bool)

(assert (=> b!6191642 (=> (not res!2561457) (not e!3770821))))

(assert (=> b!6191642 (= res!2561457 ((_ is Concat!24974) (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))))))))

(assert (=> b!6191642 (= e!3770820 e!3770824)))

(declare-fun d!1941212 () Bool)

(declare-fun c!1117169 () Bool)

(assert (=> d!1941212 (= c!1117169 (and ((_ is ElementMatch!16129) (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))))) (= (c!1116552 (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))))) (h!71010 s!2326))))))

(declare-fun e!3770823 () (InoxSet Context!11026))

(assert (=> d!1941212 (= (derivationStepZipperDown!1377 (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343))))) (ite c!1116806 lt!2340688 (Context!11027 call!517547)) (h!71010 s!2326)) e!3770823)))

(declare-fun b!6191643 () Bool)

(assert (=> b!6191643 (= e!3770819 call!517791)))

(declare-fun b!6191644 () Bool)

(assert (=> b!6191644 (= e!3770822 call!517791)))

(declare-fun b!6191645 () Bool)

(assert (=> b!6191645 (= e!3770823 (store ((as const (Array Context!11026 Bool)) false) (ite c!1116806 lt!2340688 (Context!11027 call!517547)) true))))

(declare-fun b!6191646 () Bool)

(assert (=> b!6191646 (= e!3770824 ((_ map or) call!517790 call!517793))))

(declare-fun b!6191647 () Bool)

(assert (=> b!6191647 (= e!3770823 e!3770820)))

(assert (=> b!6191647 (= c!1117167 ((_ is Union!16129) (ite c!1116806 (regOne!32771 (h!71011 (exprs!6013 (h!71012 zl!343)))) (regOne!32770 (h!71011 (exprs!6013 (h!71012 zl!343)))))))))

(assert (= (and d!1941212 c!1117169) b!6191645))

(assert (= (and d!1941212 (not c!1117169)) b!6191647))

(assert (= (and b!6191647 c!1117167) b!6191639))

(assert (= (and b!6191647 (not c!1117167)) b!6191642))

(assert (= (and b!6191642 res!2561457) b!6191641))

(assert (= (and b!6191642 c!1117171) b!6191646))

(assert (= (and b!6191642 (not c!1117171)) b!6191640))

(assert (= (and b!6191640 c!1117168) b!6191643))

(assert (= (and b!6191640 (not c!1117168)) b!6191637))

(assert (= (and b!6191637 c!1117170) b!6191644))

(assert (= (and b!6191637 (not c!1117170)) b!6191638))

(assert (= (or b!6191643 b!6191644) bm!517786))

(assert (= (or b!6191643 b!6191644) bm!517785))

(assert (= (or b!6191646 bm!517786) bm!517787))

(assert (= (or b!6191646 bm!517785) bm!517789))

(assert (= (or b!6191639 bm!517789) bm!517790))

(assert (= (or b!6191639 b!6191646) bm!517788))

(declare-fun m!7025888 () Bool)

(assert (=> b!6191645 m!7025888))

(declare-fun m!7025890 () Bool)

(assert (=> bm!517787 m!7025890))

(declare-fun m!7025892 () Bool)

(assert (=> b!6191641 m!7025892))

(declare-fun m!7025894 () Bool)

(assert (=> bm!517790 m!7025894))

(declare-fun m!7025896 () Bool)

(assert (=> bm!517788 m!7025896))

(assert (=> bm!517541 d!1941212))

(declare-fun d!1941218 () Bool)

(assert (=> d!1941218 true))

(declare-fun setRes!42000 () Bool)

(assert (=> d!1941218 setRes!42000))

(declare-fun condSetEmpty!42000 () Bool)

(declare-fun res!2561458 () (InoxSet Context!11026))

(assert (=> d!1941218 (= condSetEmpty!42000 (= res!2561458 ((as const (Array Context!11026 Bool)) false)))))

(assert (=> d!1941218 (= (choose!45993 lt!2340699 lambda!337985) res!2561458)))

(declare-fun setIsEmpty!42000 () Bool)

(assert (=> setIsEmpty!42000 setRes!42000))

(declare-fun e!3770825 () Bool)

(declare-fun setElem!42000 () Context!11026)

(declare-fun tp!1727534 () Bool)

(declare-fun setNonEmpty!42000 () Bool)

(assert (=> setNonEmpty!42000 (= setRes!42000 (and tp!1727534 (inv!83569 setElem!42000) e!3770825))))

(declare-fun setRest!42000 () (InoxSet Context!11026))

(assert (=> setNonEmpty!42000 (= res!2561458 ((_ map or) (store ((as const (Array Context!11026 Bool)) false) setElem!42000 true) setRest!42000))))

(declare-fun b!6191648 () Bool)

(declare-fun tp!1727533 () Bool)

(assert (=> b!6191648 (= e!3770825 tp!1727533)))

(assert (= (and d!1941218 condSetEmpty!42000) setIsEmpty!42000))

(assert (= (and d!1941218 (not condSetEmpty!42000)) setNonEmpty!42000))

(assert (= setNonEmpty!42000 b!6191648))

(declare-fun m!7025898 () Bool)

(assert (=> setNonEmpty!42000 m!7025898))

(assert (=> d!1940576 d!1941218))

(declare-fun b!6191664 () Bool)

(declare-fun e!3770833 () Bool)

(declare-fun tp!1727539 () Bool)

(declare-fun tp!1727538 () Bool)

(assert (=> b!6191664 (= e!3770833 (and tp!1727539 tp!1727538))))

(declare-fun b!6191665 () Bool)

(declare-fun tp!1727536 () Bool)

(assert (=> b!6191665 (= e!3770833 tp!1727536)))

(assert (=> b!6190526 (= tp!1727468 e!3770833)))

(declare-fun b!6191666 () Bool)

(declare-fun tp!1727535 () Bool)

(declare-fun tp!1727537 () Bool)

(assert (=> b!6191666 (= e!3770833 (and tp!1727535 tp!1727537))))

(declare-fun b!6191663 () Bool)

(assert (=> b!6191663 (= e!3770833 tp_is_empty!41511)))

(assert (= (and b!6190526 ((_ is ElementMatch!16129) (regOne!32770 (regTwo!32771 r!7292)))) b!6191663))

(assert (= (and b!6190526 ((_ is Concat!24974) (regOne!32770 (regTwo!32771 r!7292)))) b!6191664))

(assert (= (and b!6190526 ((_ is Star!16129) (regOne!32770 (regTwo!32771 r!7292)))) b!6191665))

(assert (= (and b!6190526 ((_ is Union!16129) (regOne!32770 (regTwo!32771 r!7292)))) b!6191666))

(declare-fun b!6191668 () Bool)

(declare-fun e!3770834 () Bool)

(declare-fun tp!1727544 () Bool)

(declare-fun tp!1727543 () Bool)

(assert (=> b!6191668 (= e!3770834 (and tp!1727544 tp!1727543))))

(declare-fun b!6191669 () Bool)

(declare-fun tp!1727541 () Bool)

(assert (=> b!6191669 (= e!3770834 tp!1727541)))

(assert (=> b!6190526 (= tp!1727467 e!3770834)))

(declare-fun b!6191670 () Bool)

(declare-fun tp!1727540 () Bool)

(declare-fun tp!1727542 () Bool)

(assert (=> b!6191670 (= e!3770834 (and tp!1727540 tp!1727542))))

(declare-fun b!6191667 () Bool)

(assert (=> b!6191667 (= e!3770834 tp_is_empty!41511)))

(assert (= (and b!6190526 ((_ is ElementMatch!16129) (regTwo!32770 (regTwo!32771 r!7292)))) b!6191667))

(assert (= (and b!6190526 ((_ is Concat!24974) (regTwo!32770 (regTwo!32771 r!7292)))) b!6191668))

(assert (= (and b!6190526 ((_ is Star!16129) (regTwo!32770 (regTwo!32771 r!7292)))) b!6191669))

(assert (= (and b!6190526 ((_ is Union!16129) (regTwo!32770 (regTwo!32771 r!7292)))) b!6191670))

(declare-fun b!6191672 () Bool)

(declare-fun e!3770835 () Bool)

(declare-fun tp!1727549 () Bool)

(declare-fun tp!1727548 () Bool)

(assert (=> b!6191672 (= e!3770835 (and tp!1727549 tp!1727548))))

(declare-fun b!6191673 () Bool)

(declare-fun tp!1727546 () Bool)

(assert (=> b!6191673 (= e!3770835 tp!1727546)))

(assert (=> b!6190553 (= tp!1727498 e!3770835)))

(declare-fun b!6191674 () Bool)

(declare-fun tp!1727545 () Bool)

(declare-fun tp!1727547 () Bool)

(assert (=> b!6191674 (= e!3770835 (and tp!1727545 tp!1727547))))

(declare-fun b!6191671 () Bool)

(assert (=> b!6191671 (= e!3770835 tp_is_empty!41511)))

(assert (= (and b!6190553 ((_ is ElementMatch!16129) (regOne!32770 (regOne!32770 r!7292)))) b!6191671))

(assert (= (and b!6190553 ((_ is Concat!24974) (regOne!32770 (regOne!32770 r!7292)))) b!6191672))

(assert (= (and b!6190553 ((_ is Star!16129) (regOne!32770 (regOne!32770 r!7292)))) b!6191673))

(assert (= (and b!6190553 ((_ is Union!16129) (regOne!32770 (regOne!32770 r!7292)))) b!6191674))

(declare-fun b!6191676 () Bool)

(declare-fun e!3770836 () Bool)

(declare-fun tp!1727554 () Bool)

(declare-fun tp!1727553 () Bool)

(assert (=> b!6191676 (= e!3770836 (and tp!1727554 tp!1727553))))

(declare-fun b!6191677 () Bool)

(declare-fun tp!1727551 () Bool)

(assert (=> b!6191677 (= e!3770836 tp!1727551)))

(assert (=> b!6190553 (= tp!1727497 e!3770836)))

(declare-fun b!6191678 () Bool)

(declare-fun tp!1727550 () Bool)

(declare-fun tp!1727552 () Bool)

(assert (=> b!6191678 (= e!3770836 (and tp!1727550 tp!1727552))))

(declare-fun b!6191675 () Bool)

(assert (=> b!6191675 (= e!3770836 tp_is_empty!41511)))

(assert (= (and b!6190553 ((_ is ElementMatch!16129) (regTwo!32770 (regOne!32770 r!7292)))) b!6191675))

(assert (= (and b!6190553 ((_ is Concat!24974) (regTwo!32770 (regOne!32770 r!7292)))) b!6191676))

(assert (= (and b!6190553 ((_ is Star!16129) (regTwo!32770 (regOne!32770 r!7292)))) b!6191677))

(assert (= (and b!6190553 ((_ is Union!16129) (regTwo!32770 (regOne!32770 r!7292)))) b!6191678))

(declare-fun b!6191680 () Bool)

(declare-fun e!3770837 () Bool)

(declare-fun tp!1727559 () Bool)

(declare-fun tp!1727558 () Bool)

(assert (=> b!6191680 (= e!3770837 (and tp!1727559 tp!1727558))))

(declare-fun b!6191681 () Bool)

(declare-fun tp!1727556 () Bool)

(assert (=> b!6191681 (= e!3770837 tp!1727556)))

(assert (=> b!6190527 (= tp!1727465 e!3770837)))

(declare-fun b!6191682 () Bool)

(declare-fun tp!1727555 () Bool)

(declare-fun tp!1727557 () Bool)

(assert (=> b!6191682 (= e!3770837 (and tp!1727555 tp!1727557))))

(declare-fun b!6191679 () Bool)

(assert (=> b!6191679 (= e!3770837 tp_is_empty!41511)))

(assert (= (and b!6190527 ((_ is ElementMatch!16129) (reg!16458 (regTwo!32771 r!7292)))) b!6191679))

(assert (= (and b!6190527 ((_ is Concat!24974) (reg!16458 (regTwo!32771 r!7292)))) b!6191680))

(assert (= (and b!6190527 ((_ is Star!16129) (reg!16458 (regTwo!32771 r!7292)))) b!6191681))

(assert (= (and b!6190527 ((_ is Union!16129) (reg!16458 (regTwo!32771 r!7292)))) b!6191682))

(declare-fun b!6191684 () Bool)

(declare-fun e!3770838 () Bool)

(declare-fun tp!1727564 () Bool)

(declare-fun tp!1727563 () Bool)

(assert (=> b!6191684 (= e!3770838 (and tp!1727564 tp!1727563))))

(declare-fun b!6191685 () Bool)

(declare-fun tp!1727561 () Bool)

(assert (=> b!6191685 (= e!3770838 tp!1727561)))

(assert (=> b!6190554 (= tp!1727495 e!3770838)))

(declare-fun b!6191686 () Bool)

(declare-fun tp!1727560 () Bool)

(declare-fun tp!1727562 () Bool)

(assert (=> b!6191686 (= e!3770838 (and tp!1727560 tp!1727562))))

(declare-fun b!6191683 () Bool)

(assert (=> b!6191683 (= e!3770838 tp_is_empty!41511)))

(assert (= (and b!6190554 ((_ is ElementMatch!16129) (reg!16458 (regOne!32770 r!7292)))) b!6191683))

(assert (= (and b!6190554 ((_ is Concat!24974) (reg!16458 (regOne!32770 r!7292)))) b!6191684))

(assert (= (and b!6190554 ((_ is Star!16129) (reg!16458 (regOne!32770 r!7292)))) b!6191685))

(assert (= (and b!6190554 ((_ is Union!16129) (reg!16458 (regOne!32770 r!7292)))) b!6191686))

(declare-fun b!6191688 () Bool)

(declare-fun e!3770839 () Bool)

(declare-fun tp!1727569 () Bool)

(declare-fun tp!1727568 () Bool)

(assert (=> b!6191688 (= e!3770839 (and tp!1727569 tp!1727568))))

(declare-fun b!6191689 () Bool)

(declare-fun tp!1727566 () Bool)

(assert (=> b!6191689 (= e!3770839 tp!1727566)))

(assert (=> b!6190528 (= tp!1727464 e!3770839)))

(declare-fun b!6191690 () Bool)

(declare-fun tp!1727565 () Bool)

(declare-fun tp!1727567 () Bool)

(assert (=> b!6191690 (= e!3770839 (and tp!1727565 tp!1727567))))

(declare-fun b!6191687 () Bool)

(assert (=> b!6191687 (= e!3770839 tp_is_empty!41511)))

(assert (= (and b!6190528 ((_ is ElementMatch!16129) (regOne!32771 (regTwo!32771 r!7292)))) b!6191687))

(assert (= (and b!6190528 ((_ is Concat!24974) (regOne!32771 (regTwo!32771 r!7292)))) b!6191688))

(assert (= (and b!6190528 ((_ is Star!16129) (regOne!32771 (regTwo!32771 r!7292)))) b!6191689))

(assert (= (and b!6190528 ((_ is Union!16129) (regOne!32771 (regTwo!32771 r!7292)))) b!6191690))

(declare-fun b!6191702 () Bool)

(declare-fun e!3770845 () Bool)

(declare-fun tp!1727574 () Bool)

(declare-fun tp!1727573 () Bool)

(assert (=> b!6191702 (= e!3770845 (and tp!1727574 tp!1727573))))

(declare-fun b!6191703 () Bool)

(declare-fun tp!1727571 () Bool)

(assert (=> b!6191703 (= e!3770845 tp!1727571)))

(assert (=> b!6190528 (= tp!1727466 e!3770845)))

(declare-fun b!6191704 () Bool)

(declare-fun tp!1727570 () Bool)

(declare-fun tp!1727572 () Bool)

(assert (=> b!6191704 (= e!3770845 (and tp!1727570 tp!1727572))))

(declare-fun b!6191701 () Bool)

(assert (=> b!6191701 (= e!3770845 tp_is_empty!41511)))

(assert (= (and b!6190528 ((_ is ElementMatch!16129) (regTwo!32771 (regTwo!32771 r!7292)))) b!6191701))

(assert (= (and b!6190528 ((_ is Concat!24974) (regTwo!32771 (regTwo!32771 r!7292)))) b!6191702))

(assert (= (and b!6190528 ((_ is Star!16129) (regTwo!32771 (regTwo!32771 r!7292)))) b!6191703))

(assert (= (and b!6190528 ((_ is Union!16129) (regTwo!32771 (regTwo!32771 r!7292)))) b!6191704))

(declare-fun b!6191706 () Bool)

(declare-fun e!3770846 () Bool)

(declare-fun tp!1727579 () Bool)

(declare-fun tp!1727578 () Bool)

(assert (=> b!6191706 (= e!3770846 (and tp!1727579 tp!1727578))))

(declare-fun b!6191707 () Bool)

(declare-fun tp!1727576 () Bool)

(assert (=> b!6191707 (= e!3770846 tp!1727576)))

(assert (=> b!6190555 (= tp!1727494 e!3770846)))

(declare-fun b!6191708 () Bool)

(declare-fun tp!1727575 () Bool)

(declare-fun tp!1727577 () Bool)

(assert (=> b!6191708 (= e!3770846 (and tp!1727575 tp!1727577))))

(declare-fun b!6191705 () Bool)

(assert (=> b!6191705 (= e!3770846 tp_is_empty!41511)))

(assert (= (and b!6190555 ((_ is ElementMatch!16129) (regOne!32771 (regOne!32770 r!7292)))) b!6191705))

(assert (= (and b!6190555 ((_ is Concat!24974) (regOne!32771 (regOne!32770 r!7292)))) b!6191706))

(assert (= (and b!6190555 ((_ is Star!16129) (regOne!32771 (regOne!32770 r!7292)))) b!6191707))

(assert (= (and b!6190555 ((_ is Union!16129) (regOne!32771 (regOne!32770 r!7292)))) b!6191708))

(declare-fun b!6191710 () Bool)

(declare-fun e!3770847 () Bool)

(declare-fun tp!1727584 () Bool)

(declare-fun tp!1727583 () Bool)

(assert (=> b!6191710 (= e!3770847 (and tp!1727584 tp!1727583))))

(declare-fun b!6191711 () Bool)

(declare-fun tp!1727581 () Bool)

(assert (=> b!6191711 (= e!3770847 tp!1727581)))

(assert (=> b!6190555 (= tp!1727496 e!3770847)))

(declare-fun b!6191712 () Bool)

(declare-fun tp!1727580 () Bool)

(declare-fun tp!1727582 () Bool)

(assert (=> b!6191712 (= e!3770847 (and tp!1727580 tp!1727582))))

(declare-fun b!6191709 () Bool)

(assert (=> b!6191709 (= e!3770847 tp_is_empty!41511)))

(assert (= (and b!6190555 ((_ is ElementMatch!16129) (regTwo!32771 (regOne!32770 r!7292)))) b!6191709))

(assert (= (and b!6190555 ((_ is Concat!24974) (regTwo!32771 (regOne!32770 r!7292)))) b!6191710))

(assert (= (and b!6190555 ((_ is Star!16129) (regTwo!32771 (regOne!32770 r!7292)))) b!6191711))

(assert (= (and b!6190555 ((_ is Union!16129) (regTwo!32771 (regOne!32770 r!7292)))) b!6191712))

(declare-fun b!6191713 () Bool)

(declare-fun e!3770848 () Bool)

(declare-fun tp!1727585 () Bool)

(assert (=> b!6191713 (= e!3770848 (and tp_is_empty!41511 tp!1727585))))

(assert (=> b!6190564 (= tp!1727506 e!3770848)))

(assert (= (and b!6190564 ((_ is Cons!64562) (t!378196 (t!378196 s!2326)))) b!6191713))

(declare-fun b!6191715 () Bool)

(declare-fun e!3770849 () Bool)

(declare-fun tp!1727590 () Bool)

(declare-fun tp!1727589 () Bool)

(assert (=> b!6191715 (= e!3770849 (and tp!1727590 tp!1727589))))

(declare-fun b!6191716 () Bool)

(declare-fun tp!1727587 () Bool)

(assert (=> b!6191716 (= e!3770849 tp!1727587)))

(assert (=> b!6190547 (= tp!1727487 e!3770849)))

(declare-fun b!6191717 () Bool)

(declare-fun tp!1727586 () Bool)

(declare-fun tp!1727588 () Bool)

(assert (=> b!6191717 (= e!3770849 (and tp!1727586 tp!1727588))))

(declare-fun b!6191714 () Bool)

(assert (=> b!6191714 (= e!3770849 tp_is_empty!41511)))

(assert (= (and b!6190547 ((_ is ElementMatch!16129) (h!71011 (exprs!6013 setElem!41986)))) b!6191714))

(assert (= (and b!6190547 ((_ is Concat!24974) (h!71011 (exprs!6013 setElem!41986)))) b!6191715))

(assert (= (and b!6190547 ((_ is Star!16129) (h!71011 (exprs!6013 setElem!41986)))) b!6191716))

(assert (= (and b!6190547 ((_ is Union!16129) (h!71011 (exprs!6013 setElem!41986)))) b!6191717))

(declare-fun b!6191718 () Bool)

(declare-fun e!3770850 () Bool)

(declare-fun tp!1727591 () Bool)

(declare-fun tp!1727592 () Bool)

(assert (=> b!6191718 (= e!3770850 (and tp!1727591 tp!1727592))))

(assert (=> b!6190547 (= tp!1727488 e!3770850)))

(assert (= (and b!6190547 ((_ is Cons!64563) (t!378197 (exprs!6013 setElem!41986)))) b!6191718))

(declare-fun b!6191720 () Bool)

(declare-fun e!3770851 () Bool)

(declare-fun tp!1727597 () Bool)

(declare-fun tp!1727596 () Bool)

(assert (=> b!6191720 (= e!3770851 (and tp!1727597 tp!1727596))))

(declare-fun b!6191721 () Bool)

(declare-fun tp!1727594 () Bool)

(assert (=> b!6191721 (= e!3770851 tp!1727594)))

(assert (=> b!6190538 (= tp!1727479 e!3770851)))

(declare-fun b!6191722 () Bool)

(declare-fun tp!1727593 () Bool)

(declare-fun tp!1727595 () Bool)

(assert (=> b!6191722 (= e!3770851 (and tp!1727593 tp!1727595))))

(declare-fun b!6191719 () Bool)

(assert (=> b!6191719 (= e!3770851 tp_is_empty!41511)))

(assert (= (and b!6190538 ((_ is ElementMatch!16129) (h!71011 (exprs!6013 (h!71012 zl!343))))) b!6191719))

(assert (= (and b!6190538 ((_ is Concat!24974) (h!71011 (exprs!6013 (h!71012 zl!343))))) b!6191720))

(assert (= (and b!6190538 ((_ is Star!16129) (h!71011 (exprs!6013 (h!71012 zl!343))))) b!6191721))

(assert (= (and b!6190538 ((_ is Union!16129) (h!71011 (exprs!6013 (h!71012 zl!343))))) b!6191722))

(declare-fun b!6191725 () Bool)

(declare-fun e!3770853 () Bool)

(declare-fun tp!1727598 () Bool)

(declare-fun tp!1727599 () Bool)

(assert (=> b!6191725 (= e!3770853 (and tp!1727598 tp!1727599))))

(assert (=> b!6190538 (= tp!1727480 e!3770853)))

(assert (= (and b!6190538 ((_ is Cons!64563) (t!378197 (exprs!6013 (h!71012 zl!343))))) b!6191725))

(declare-fun condSetEmpty!42001 () Bool)

(assert (=> setNonEmpty!41992 (= condSetEmpty!42001 (= setRest!41992 ((as const (Array Context!11026 Bool)) false)))))

(declare-fun setRes!42001 () Bool)

(assert (=> setNonEmpty!41992 (= tp!1727474 setRes!42001)))

(declare-fun setIsEmpty!42001 () Bool)

(assert (=> setIsEmpty!42001 setRes!42001))

(declare-fun e!3770854 () Bool)

(declare-fun tp!1727601 () Bool)

(declare-fun setElem!42001 () Context!11026)

(declare-fun setNonEmpty!42001 () Bool)

(assert (=> setNonEmpty!42001 (= setRes!42001 (and tp!1727601 (inv!83569 setElem!42001) e!3770854))))

(declare-fun setRest!42001 () (InoxSet Context!11026))

(assert (=> setNonEmpty!42001 (= setRest!41992 ((_ map or) (store ((as const (Array Context!11026 Bool)) false) setElem!42001 true) setRest!42001))))

(declare-fun b!6191726 () Bool)

(declare-fun tp!1727600 () Bool)

(assert (=> b!6191726 (= e!3770854 tp!1727600)))

(assert (= (and setNonEmpty!41992 condSetEmpty!42001) setIsEmpty!42001))

(assert (= (and setNonEmpty!41992 (not condSetEmpty!42001)) setNonEmpty!42001))

(assert (= setNonEmpty!42001 b!6191726))

(declare-fun m!7025922 () Bool)

(assert (=> setNonEmpty!42001 m!7025922))

(declare-fun b!6191727 () Bool)

(declare-fun e!3770855 () Bool)

(declare-fun tp!1727602 () Bool)

(declare-fun tp!1727603 () Bool)

(assert (=> b!6191727 (= e!3770855 (and tp!1727602 tp!1727603))))

(assert (=> b!6190533 (= tp!1727473 e!3770855)))

(assert (= (and b!6190533 ((_ is Cons!64563) (exprs!6013 setElem!41992))) b!6191727))

(declare-fun b!6191729 () Bool)

(declare-fun e!3770857 () Bool)

(declare-fun tp!1727604 () Bool)

(assert (=> b!6191729 (= e!3770857 tp!1727604)))

(declare-fun b!6191728 () Bool)

(declare-fun tp!1727605 () Bool)

(declare-fun e!3770856 () Bool)

(assert (=> b!6191728 (= e!3770856 (and (inv!83569 (h!71012 (t!378198 (t!378198 zl!343)))) e!3770857 tp!1727605))))

(assert (=> b!6190545 (= tp!1727486 e!3770856)))

(assert (= b!6191728 b!6191729))

(assert (= (and b!6190545 ((_ is Cons!64564) (t!378198 (t!378198 zl!343)))) b!6191728))

(declare-fun m!7025926 () Bool)

(assert (=> b!6191728 m!7025926))

(declare-fun b!6191730 () Bool)

(declare-fun e!3770858 () Bool)

(declare-fun tp!1727606 () Bool)

(declare-fun tp!1727607 () Bool)

(assert (=> b!6191730 (= e!3770858 (and tp!1727606 tp!1727607))))

(assert (=> b!6190546 (= tp!1727485 e!3770858)))

(assert (= (and b!6190546 ((_ is Cons!64563) (exprs!6013 (h!71012 (t!378198 zl!343))))) b!6191730))

(declare-fun b!6191732 () Bool)

(declare-fun e!3770859 () Bool)

(declare-fun tp!1727612 () Bool)

(declare-fun tp!1727611 () Bool)

(assert (=> b!6191732 (= e!3770859 (and tp!1727612 tp!1727611))))

(declare-fun b!6191733 () Bool)

(declare-fun tp!1727609 () Bool)

(assert (=> b!6191733 (= e!3770859 tp!1727609)))

(assert (=> b!6190557 (= tp!1727503 e!3770859)))

(declare-fun b!6191734 () Bool)

(declare-fun tp!1727608 () Bool)

(declare-fun tp!1727610 () Bool)

(assert (=> b!6191734 (= e!3770859 (and tp!1727608 tp!1727610))))

(declare-fun b!6191731 () Bool)

(assert (=> b!6191731 (= e!3770859 tp_is_empty!41511)))

(assert (= (and b!6190557 ((_ is ElementMatch!16129) (regOne!32770 (regTwo!32770 r!7292)))) b!6191731))

(assert (= (and b!6190557 ((_ is Concat!24974) (regOne!32770 (regTwo!32770 r!7292)))) b!6191732))

(assert (= (and b!6190557 ((_ is Star!16129) (regOne!32770 (regTwo!32770 r!7292)))) b!6191733))

(assert (= (and b!6190557 ((_ is Union!16129) (regOne!32770 (regTwo!32770 r!7292)))) b!6191734))

(declare-fun b!6191736 () Bool)

(declare-fun e!3770860 () Bool)

(declare-fun tp!1727617 () Bool)

(declare-fun tp!1727616 () Bool)

(assert (=> b!6191736 (= e!3770860 (and tp!1727617 tp!1727616))))

(declare-fun b!6191737 () Bool)

(declare-fun tp!1727614 () Bool)

(assert (=> b!6191737 (= e!3770860 tp!1727614)))

(assert (=> b!6190557 (= tp!1727502 e!3770860)))

(declare-fun b!6191738 () Bool)

(declare-fun tp!1727613 () Bool)

(declare-fun tp!1727615 () Bool)

(assert (=> b!6191738 (= e!3770860 (and tp!1727613 tp!1727615))))

(declare-fun b!6191735 () Bool)

(assert (=> b!6191735 (= e!3770860 tp_is_empty!41511)))

(assert (= (and b!6190557 ((_ is ElementMatch!16129) (regTwo!32770 (regTwo!32770 r!7292)))) b!6191735))

(assert (= (and b!6190557 ((_ is Concat!24974) (regTwo!32770 (regTwo!32770 r!7292)))) b!6191736))

(assert (= (and b!6190557 ((_ is Star!16129) (regTwo!32770 (regTwo!32770 r!7292)))) b!6191737))

(assert (= (and b!6190557 ((_ is Union!16129) (regTwo!32770 (regTwo!32770 r!7292)))) b!6191738))

(declare-fun b!6191740 () Bool)

(declare-fun e!3770861 () Bool)

(declare-fun tp!1727622 () Bool)

(declare-fun tp!1727621 () Bool)

(assert (=> b!6191740 (= e!3770861 (and tp!1727622 tp!1727621))))

(declare-fun b!6191741 () Bool)

(declare-fun tp!1727619 () Bool)

(assert (=> b!6191741 (= e!3770861 tp!1727619)))

(assert (=> b!6190558 (= tp!1727500 e!3770861)))

(declare-fun b!6191742 () Bool)

(declare-fun tp!1727618 () Bool)

(declare-fun tp!1727620 () Bool)

(assert (=> b!6191742 (= e!3770861 (and tp!1727618 tp!1727620))))

(declare-fun b!6191739 () Bool)

(assert (=> b!6191739 (= e!3770861 tp_is_empty!41511)))

(assert (= (and b!6190558 ((_ is ElementMatch!16129) (reg!16458 (regTwo!32770 r!7292)))) b!6191739))

(assert (= (and b!6190558 ((_ is Concat!24974) (reg!16458 (regTwo!32770 r!7292)))) b!6191740))

(assert (= (and b!6190558 ((_ is Star!16129) (reg!16458 (regTwo!32770 r!7292)))) b!6191741))

(assert (= (and b!6190558 ((_ is Union!16129) (reg!16458 (regTwo!32770 r!7292)))) b!6191742))

(declare-fun b!6191744 () Bool)

(declare-fun e!3770862 () Bool)

(declare-fun tp!1727627 () Bool)

(declare-fun tp!1727626 () Bool)

(assert (=> b!6191744 (= e!3770862 (and tp!1727627 tp!1727626))))

(declare-fun b!6191745 () Bool)

(declare-fun tp!1727624 () Bool)

(assert (=> b!6191745 (= e!3770862 tp!1727624)))

(assert (=> b!6190522 (= tp!1727463 e!3770862)))

(declare-fun b!6191746 () Bool)

(declare-fun tp!1727623 () Bool)

(declare-fun tp!1727625 () Bool)

(assert (=> b!6191746 (= e!3770862 (and tp!1727623 tp!1727625))))

(declare-fun b!6191743 () Bool)

(assert (=> b!6191743 (= e!3770862 tp_is_empty!41511)))

(assert (= (and b!6190522 ((_ is ElementMatch!16129) (regOne!32770 (regOne!32771 r!7292)))) b!6191743))

(assert (= (and b!6190522 ((_ is Concat!24974) (regOne!32770 (regOne!32771 r!7292)))) b!6191744))

(assert (= (and b!6190522 ((_ is Star!16129) (regOne!32770 (regOne!32771 r!7292)))) b!6191745))

(assert (= (and b!6190522 ((_ is Union!16129) (regOne!32770 (regOne!32771 r!7292)))) b!6191746))

(declare-fun b!6191748 () Bool)

(declare-fun e!3770863 () Bool)

(declare-fun tp!1727632 () Bool)

(declare-fun tp!1727631 () Bool)

(assert (=> b!6191748 (= e!3770863 (and tp!1727632 tp!1727631))))

(declare-fun b!6191749 () Bool)

(declare-fun tp!1727629 () Bool)

(assert (=> b!6191749 (= e!3770863 tp!1727629)))

(assert (=> b!6190522 (= tp!1727462 e!3770863)))

(declare-fun b!6191750 () Bool)

(declare-fun tp!1727628 () Bool)

(declare-fun tp!1727630 () Bool)

(assert (=> b!6191750 (= e!3770863 (and tp!1727628 tp!1727630))))

(declare-fun b!6191747 () Bool)

(assert (=> b!6191747 (= e!3770863 tp_is_empty!41511)))

(assert (= (and b!6190522 ((_ is ElementMatch!16129) (regTwo!32770 (regOne!32771 r!7292)))) b!6191747))

(assert (= (and b!6190522 ((_ is Concat!24974) (regTwo!32770 (regOne!32771 r!7292)))) b!6191748))

(assert (= (and b!6190522 ((_ is Star!16129) (regTwo!32770 (regOne!32771 r!7292)))) b!6191749))

(assert (= (and b!6190522 ((_ is Union!16129) (regTwo!32770 (regOne!32771 r!7292)))) b!6191750))

(declare-fun b!6191752 () Bool)

(declare-fun e!3770869 () Bool)

(declare-fun tp!1727637 () Bool)

(declare-fun tp!1727636 () Bool)

(assert (=> b!6191752 (= e!3770869 (and tp!1727637 tp!1727636))))

(declare-fun b!6191753 () Bool)

(declare-fun tp!1727634 () Bool)

(assert (=> b!6191753 (= e!3770869 tp!1727634)))

(assert (=> b!6190549 (= tp!1727493 e!3770869)))

(declare-fun b!6191754 () Bool)

(declare-fun tp!1727633 () Bool)

(declare-fun tp!1727635 () Bool)

(assert (=> b!6191754 (= e!3770869 (and tp!1727633 tp!1727635))))

(declare-fun b!6191751 () Bool)

(assert (=> b!6191751 (= e!3770869 tp_is_empty!41511)))

(assert (= (and b!6190549 ((_ is ElementMatch!16129) (regOne!32770 (reg!16458 r!7292)))) b!6191751))

(assert (= (and b!6190549 ((_ is Concat!24974) (regOne!32770 (reg!16458 r!7292)))) b!6191752))

(assert (= (and b!6190549 ((_ is Star!16129) (regOne!32770 (reg!16458 r!7292)))) b!6191753))

(assert (= (and b!6190549 ((_ is Union!16129) (regOne!32770 (reg!16458 r!7292)))) b!6191754))

(declare-fun b!6191767 () Bool)

(declare-fun e!3770871 () Bool)

(declare-fun tp!1727642 () Bool)

(declare-fun tp!1727641 () Bool)

(assert (=> b!6191767 (= e!3770871 (and tp!1727642 tp!1727641))))

(declare-fun b!6191768 () Bool)

(declare-fun tp!1727639 () Bool)

(assert (=> b!6191768 (= e!3770871 tp!1727639)))

(assert (=> b!6190549 (= tp!1727492 e!3770871)))

(declare-fun b!6191769 () Bool)

(declare-fun tp!1727638 () Bool)

(declare-fun tp!1727640 () Bool)

(assert (=> b!6191769 (= e!3770871 (and tp!1727638 tp!1727640))))

(declare-fun b!6191766 () Bool)

(assert (=> b!6191766 (= e!3770871 tp_is_empty!41511)))

(assert (= (and b!6190549 ((_ is ElementMatch!16129) (regTwo!32770 (reg!16458 r!7292)))) b!6191766))

(assert (= (and b!6190549 ((_ is Concat!24974) (regTwo!32770 (reg!16458 r!7292)))) b!6191767))

(assert (= (and b!6190549 ((_ is Star!16129) (regTwo!32770 (reg!16458 r!7292)))) b!6191768))

(assert (= (and b!6190549 ((_ is Union!16129) (regTwo!32770 (reg!16458 r!7292)))) b!6191769))

(declare-fun b!6191771 () Bool)

(declare-fun e!3770872 () Bool)

(declare-fun tp!1727647 () Bool)

(declare-fun tp!1727646 () Bool)

(assert (=> b!6191771 (= e!3770872 (and tp!1727647 tp!1727646))))

(declare-fun b!6191772 () Bool)

(declare-fun tp!1727644 () Bool)

(assert (=> b!6191772 (= e!3770872 tp!1727644)))

(assert (=> b!6190559 (= tp!1727499 e!3770872)))

(declare-fun b!6191773 () Bool)

(declare-fun tp!1727643 () Bool)

(declare-fun tp!1727645 () Bool)

(assert (=> b!6191773 (= e!3770872 (and tp!1727643 tp!1727645))))

(declare-fun b!6191770 () Bool)

(assert (=> b!6191770 (= e!3770872 tp_is_empty!41511)))

(assert (= (and b!6190559 ((_ is ElementMatch!16129) (regOne!32771 (regTwo!32770 r!7292)))) b!6191770))

(assert (= (and b!6190559 ((_ is Concat!24974) (regOne!32771 (regTwo!32770 r!7292)))) b!6191771))

(assert (= (and b!6190559 ((_ is Star!16129) (regOne!32771 (regTwo!32770 r!7292)))) b!6191772))

(assert (= (and b!6190559 ((_ is Union!16129) (regOne!32771 (regTwo!32770 r!7292)))) b!6191773))

(declare-fun b!6191775 () Bool)

(declare-fun e!3770873 () Bool)

(declare-fun tp!1727652 () Bool)

(declare-fun tp!1727651 () Bool)

(assert (=> b!6191775 (= e!3770873 (and tp!1727652 tp!1727651))))

(declare-fun b!6191776 () Bool)

(declare-fun tp!1727649 () Bool)

(assert (=> b!6191776 (= e!3770873 tp!1727649)))

(assert (=> b!6190559 (= tp!1727501 e!3770873)))

(declare-fun b!6191777 () Bool)

(declare-fun tp!1727648 () Bool)

(declare-fun tp!1727650 () Bool)

(assert (=> b!6191777 (= e!3770873 (and tp!1727648 tp!1727650))))

(declare-fun b!6191774 () Bool)

(assert (=> b!6191774 (= e!3770873 tp_is_empty!41511)))

(assert (= (and b!6190559 ((_ is ElementMatch!16129) (regTwo!32771 (regTwo!32770 r!7292)))) b!6191774))

(assert (= (and b!6190559 ((_ is Concat!24974) (regTwo!32771 (regTwo!32770 r!7292)))) b!6191775))

(assert (= (and b!6190559 ((_ is Star!16129) (regTwo!32771 (regTwo!32770 r!7292)))) b!6191776))

(assert (= (and b!6190559 ((_ is Union!16129) (regTwo!32771 (regTwo!32770 r!7292)))) b!6191777))

(declare-fun b!6191779 () Bool)

(declare-fun e!3770874 () Bool)

(declare-fun tp!1727657 () Bool)

(declare-fun tp!1727656 () Bool)

(assert (=> b!6191779 (= e!3770874 (and tp!1727657 tp!1727656))))

(declare-fun b!6191780 () Bool)

(declare-fun tp!1727654 () Bool)

(assert (=> b!6191780 (= e!3770874 tp!1727654)))

(assert (=> b!6190523 (= tp!1727460 e!3770874)))

(declare-fun b!6191781 () Bool)

(declare-fun tp!1727653 () Bool)

(declare-fun tp!1727655 () Bool)

(assert (=> b!6191781 (= e!3770874 (and tp!1727653 tp!1727655))))

(declare-fun b!6191778 () Bool)

(assert (=> b!6191778 (= e!3770874 tp_is_empty!41511)))

(assert (= (and b!6190523 ((_ is ElementMatch!16129) (reg!16458 (regOne!32771 r!7292)))) b!6191778))

(assert (= (and b!6190523 ((_ is Concat!24974) (reg!16458 (regOne!32771 r!7292)))) b!6191779))

(assert (= (and b!6190523 ((_ is Star!16129) (reg!16458 (regOne!32771 r!7292)))) b!6191780))

(assert (= (and b!6190523 ((_ is Union!16129) (reg!16458 (regOne!32771 r!7292)))) b!6191781))

(declare-fun b!6191783 () Bool)

(declare-fun e!3770875 () Bool)

(declare-fun tp!1727662 () Bool)

(declare-fun tp!1727661 () Bool)

(assert (=> b!6191783 (= e!3770875 (and tp!1727662 tp!1727661))))

(declare-fun b!6191784 () Bool)

(declare-fun tp!1727659 () Bool)

(assert (=> b!6191784 (= e!3770875 tp!1727659)))

(assert (=> b!6190550 (= tp!1727490 e!3770875)))

(declare-fun b!6191785 () Bool)

(declare-fun tp!1727658 () Bool)

(declare-fun tp!1727660 () Bool)

(assert (=> b!6191785 (= e!3770875 (and tp!1727658 tp!1727660))))

(declare-fun b!6191782 () Bool)

(assert (=> b!6191782 (= e!3770875 tp_is_empty!41511)))

(assert (= (and b!6190550 ((_ is ElementMatch!16129) (reg!16458 (reg!16458 r!7292)))) b!6191782))

(assert (= (and b!6190550 ((_ is Concat!24974) (reg!16458 (reg!16458 r!7292)))) b!6191783))

(assert (= (and b!6190550 ((_ is Star!16129) (reg!16458 (reg!16458 r!7292)))) b!6191784))

(assert (= (and b!6190550 ((_ is Union!16129) (reg!16458 (reg!16458 r!7292)))) b!6191785))

(declare-fun b!6191787 () Bool)

(declare-fun e!3770876 () Bool)

(declare-fun tp!1727667 () Bool)

(declare-fun tp!1727666 () Bool)

(assert (=> b!6191787 (= e!3770876 (and tp!1727667 tp!1727666))))

(declare-fun b!6191788 () Bool)

(declare-fun tp!1727664 () Bool)

(assert (=> b!6191788 (= e!3770876 tp!1727664)))

(assert (=> b!6190524 (= tp!1727459 e!3770876)))

(declare-fun b!6191789 () Bool)

(declare-fun tp!1727663 () Bool)

(declare-fun tp!1727665 () Bool)

(assert (=> b!6191789 (= e!3770876 (and tp!1727663 tp!1727665))))

(declare-fun b!6191786 () Bool)

(assert (=> b!6191786 (= e!3770876 tp_is_empty!41511)))

(assert (= (and b!6190524 ((_ is ElementMatch!16129) (regOne!32771 (regOne!32771 r!7292)))) b!6191786))

(assert (= (and b!6190524 ((_ is Concat!24974) (regOne!32771 (regOne!32771 r!7292)))) b!6191787))

(assert (= (and b!6190524 ((_ is Star!16129) (regOne!32771 (regOne!32771 r!7292)))) b!6191788))

(assert (= (and b!6190524 ((_ is Union!16129) (regOne!32771 (regOne!32771 r!7292)))) b!6191789))

(declare-fun b!6191791 () Bool)

(declare-fun e!3770877 () Bool)

(declare-fun tp!1727672 () Bool)

(declare-fun tp!1727671 () Bool)

(assert (=> b!6191791 (= e!3770877 (and tp!1727672 tp!1727671))))

(declare-fun b!6191792 () Bool)

(declare-fun tp!1727669 () Bool)

(assert (=> b!6191792 (= e!3770877 tp!1727669)))

(assert (=> b!6190524 (= tp!1727461 e!3770877)))

(declare-fun b!6191793 () Bool)

(declare-fun tp!1727668 () Bool)

(declare-fun tp!1727670 () Bool)

(assert (=> b!6191793 (= e!3770877 (and tp!1727668 tp!1727670))))

(declare-fun b!6191790 () Bool)

(assert (=> b!6191790 (= e!3770877 tp_is_empty!41511)))

(assert (= (and b!6190524 ((_ is ElementMatch!16129) (regTwo!32771 (regOne!32771 r!7292)))) b!6191790))

(assert (= (and b!6190524 ((_ is Concat!24974) (regTwo!32771 (regOne!32771 r!7292)))) b!6191791))

(assert (= (and b!6190524 ((_ is Star!16129) (regTwo!32771 (regOne!32771 r!7292)))) b!6191792))

(assert (= (and b!6190524 ((_ is Union!16129) (regTwo!32771 (regOne!32771 r!7292)))) b!6191793))

(declare-fun b!6191795 () Bool)

(declare-fun e!3770878 () Bool)

(declare-fun tp!1727677 () Bool)

(declare-fun tp!1727676 () Bool)

(assert (=> b!6191795 (= e!3770878 (and tp!1727677 tp!1727676))))

(declare-fun b!6191796 () Bool)

(declare-fun tp!1727674 () Bool)

(assert (=> b!6191796 (= e!3770878 tp!1727674)))

(assert (=> b!6190551 (= tp!1727489 e!3770878)))

(declare-fun b!6191797 () Bool)

(declare-fun tp!1727673 () Bool)

(declare-fun tp!1727675 () Bool)

(assert (=> b!6191797 (= e!3770878 (and tp!1727673 tp!1727675))))

(declare-fun b!6191794 () Bool)

(assert (=> b!6191794 (= e!3770878 tp_is_empty!41511)))

(assert (= (and b!6190551 ((_ is ElementMatch!16129) (regOne!32771 (reg!16458 r!7292)))) b!6191794))

(assert (= (and b!6190551 ((_ is Concat!24974) (regOne!32771 (reg!16458 r!7292)))) b!6191795))

(assert (= (and b!6190551 ((_ is Star!16129) (regOne!32771 (reg!16458 r!7292)))) b!6191796))

(assert (= (and b!6190551 ((_ is Union!16129) (regOne!32771 (reg!16458 r!7292)))) b!6191797))

(declare-fun b!6191799 () Bool)

(declare-fun e!3770879 () Bool)

(declare-fun tp!1727682 () Bool)

(declare-fun tp!1727681 () Bool)

(assert (=> b!6191799 (= e!3770879 (and tp!1727682 tp!1727681))))

(declare-fun b!6191800 () Bool)

(declare-fun tp!1727679 () Bool)

(assert (=> b!6191800 (= e!3770879 tp!1727679)))

(assert (=> b!6190551 (= tp!1727491 e!3770879)))

(declare-fun b!6191801 () Bool)

(declare-fun tp!1727678 () Bool)

(declare-fun tp!1727680 () Bool)

(assert (=> b!6191801 (= e!3770879 (and tp!1727678 tp!1727680))))

(declare-fun b!6191798 () Bool)

(assert (=> b!6191798 (= e!3770879 tp_is_empty!41511)))

(assert (= (and b!6190551 ((_ is ElementMatch!16129) (regTwo!32771 (reg!16458 r!7292)))) b!6191798))

(assert (= (and b!6190551 ((_ is Concat!24974) (regTwo!32771 (reg!16458 r!7292)))) b!6191799))

(assert (= (and b!6190551 ((_ is Star!16129) (regTwo!32771 (reg!16458 r!7292)))) b!6191800))

(assert (= (and b!6190551 ((_ is Union!16129) (regTwo!32771 (reg!16458 r!7292)))) b!6191801))

(declare-fun b_lambda!235553 () Bool)

(assert (= b_lambda!235541 (or d!1940492 b_lambda!235553)))

(declare-fun bs!1536218 () Bool)

(declare-fun d!1941238 () Bool)

(assert (= bs!1536218 (and d!1941238 d!1940492)))

(assert (=> bs!1536218 (= (dynLambda!25460 lambda!338030 (h!71011 lt!2340694)) (validRegex!7865 (h!71011 lt!2340694)))))

(declare-fun m!7025940 () Bool)

(assert (=> bs!1536218 m!7025940))

(assert (=> b!6191425 d!1941238))

(declare-fun b_lambda!235555 () Bool)

(assert (= b_lambda!235521 (or b!6189536 b_lambda!235555)))

(assert (=> d!1940736 d!1940606))

(declare-fun b_lambda!235557 () Bool)

(assert (= b_lambda!235535 (or b!6189536 b_lambda!235557)))

(assert (=> d!1941042 d!1940608))

(declare-fun b_lambda!235559 () Bool)

(assert (= b_lambda!235527 (or b!6189536 b_lambda!235559)))

(assert (=> d!1940824 d!1940610))

(declare-fun b_lambda!235561 () Bool)

(assert (= b_lambda!235543 (or d!1940526 b_lambda!235561)))

(declare-fun bs!1536222 () Bool)

(declare-fun d!1941240 () Bool)

(assert (= bs!1536222 (and d!1941240 d!1940526)))

(assert (=> bs!1536222 (= (dynLambda!25460 lambda!338038 (h!71011 (exprs!6013 setElem!41986))) (validRegex!7865 (h!71011 (exprs!6013 setElem!41986))))))

(declare-fun m!7025942 () Bool)

(assert (=> bs!1536222 m!7025942))

(assert (=> b!6191427 d!1941240))

(declare-fun b_lambda!235563 () Bool)

(assert (= b_lambda!235547 (or d!1940474 b_lambda!235563)))

(declare-fun bs!1536225 () Bool)

(declare-fun d!1941242 () Bool)

(assert (= bs!1536225 (and d!1941242 d!1940474)))

(assert (=> bs!1536225 (= (dynLambda!25460 lambda!338023 (h!71011 (exprs!6013 (h!71012 zl!343)))) (validRegex!7865 (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(declare-fun m!7025944 () Bool)

(assert (=> bs!1536225 m!7025944))

(assert (=> b!6191609 d!1941242))

(declare-fun b_lambda!235565 () Bool)

(assert (= b_lambda!235545 (or d!1940532 b_lambda!235565)))

(declare-fun bs!1536227 () Bool)

(declare-fun d!1941244 () Bool)

(assert (= bs!1536227 (and d!1941244 d!1940532)))

(assert (=> bs!1536227 (= (dynLambda!25460 lambda!338045 (h!71011 lt!2340825)) (validRegex!7865 (h!71011 lt!2340825)))))

(declare-fun m!7025946 () Bool)

(assert (=> bs!1536227 m!7025946))

(assert (=> b!6191458 d!1941244))

(declare-fun b_lambda!235567 () Bool)

(assert (= b_lambda!235539 (or d!1940600 b_lambda!235567)))

(declare-fun bs!1536230 () Bool)

(declare-fun d!1941246 () Bool)

(assert (= bs!1536230 (and d!1941246 d!1940600)))

(assert (=> bs!1536230 (= (dynLambda!25460 lambda!338055 (h!71011 (t!378197 (exprs!6013 (h!71012 zl!343))))) (validRegex!7865 (h!71011 (t!378197 (exprs!6013 (h!71012 zl!343))))))))

(declare-fun m!7025948 () Bool)

(assert (=> bs!1536230 m!7025948))

(assert (=> b!6191399 d!1941246))

(declare-fun b_lambda!235569 () Bool)

(assert (= b_lambda!235549 (or d!1940530 b_lambda!235569)))

(declare-fun bs!1536231 () Bool)

(declare-fun d!1941248 () Bool)

(assert (= bs!1536231 (and d!1941248 d!1940530)))

(assert (=> bs!1536231 (= (dynLambda!25460 lambda!338042 (h!71011 (unfocusZipperList!1550 zl!343))) (validRegex!7865 (h!71011 (unfocusZipperList!1550 zl!343))))))

(declare-fun m!7025950 () Bool)

(assert (=> bs!1536231 m!7025950))

(assert (=> b!6191622 d!1941248))

(declare-fun b_lambda!235571 () Bool)

(assert (= b_lambda!235533 (or d!1940494 b_lambda!235571)))

(declare-fun bs!1536232 () Bool)

(declare-fun d!1941250 () Bool)

(assert (= bs!1536232 (and d!1941250 d!1940494)))

(assert (=> bs!1536232 (= (dynLambda!25460 lambda!338031 (h!71011 lt!2340726)) (validRegex!7865 (h!71011 lt!2340726)))))

(declare-fun m!7025952 () Bool)

(assert (=> bs!1536232 m!7025952))

(assert (=> b!6191351 d!1941250))

(declare-fun b_lambda!235573 () Bool)

(assert (= b_lambda!235519 (or d!1940528 b_lambda!235573)))

(declare-fun bs!1536233 () Bool)

(declare-fun d!1941252 () Bool)

(assert (= bs!1536233 (and d!1941252 d!1940528)))

(assert (=> bs!1536233 (= (dynLambda!25460 lambda!338039 (h!71011 (exprs!6013 (h!71012 zl!343)))) (validRegex!7865 (h!71011 (exprs!6013 (h!71012 zl!343)))))))

(assert (=> bs!1536233 m!7025944))

(assert (=> b!6190668 d!1941252))

(check-sat (not d!1940814) (not b!6191797) (not b!6191789) (not d!1941048) (not d!1940800) (not b!6191707) (not b_lambda!235565) (not b!6191073) (not bm!517673) (not d!1941152) (not b!6190835) (not b_lambda!235511) (not b!6191740) (not d!1940940) (not b!6191217) (not b!6190758) (not bm!517742) (not bm!517698) (not b!6190759) (not b!6191529) (not d!1940888) (not bm!517649) (not b!6190627) (not bm!517709) (not d!1941034) (not b!6191459) (not b!6191602) (not b!6191469) (not b!6191623) (not bm!517769) (not b!6191087) (not b!6191536) (not b!6191461) (not bm!517687) (not b!6191381) (not b!6190763) (not b!6191787) (not b!6190840) (not b!6191118) (not b!6191476) (not bm!517594) (not b!6191465) (not d!1940674) (not b!6190828) (not b!6190585) (not bm!517616) (not b!6191598) (not b!6191067) (not d!1941170) (not bm!517772) (not b!6191678) (not b!6191336) (not b!6191116) (not b!6191733) (not b!6191746) (not d!1940726) (not b!6191686) (not b!6190567) (not b!6190854) (not b!6191122) (not b!6191195) (not b!6191429) (not bm!517781) (not b!6191684) (not bm!517619) (not b!6191729) (not b!6191400) (not b!6191681) (not b!6191047) (not b!6191332) (not b!6191717) (not b!6191781) (not d!1940842) (not bs!1536222) (not bm!517556) (not b!6191295) (not bm!517635) (not b!6191713) (not b!6191768) (not b!6191738) (not b!6191181) (not d!1941114) (not bm!517624) (not bm!517571) (not d!1940890) (not b!6191703) (not bm!517732) (not b!6190710) (not b!6191725) (not bm!517713) (not b!6191615) (not d!1940676) (not b_lambda!235561) (not b!6191721) (not d!1940986) (not b!6190999) (not bm!517665) (not b!6191434) (not b_lambda!235567) (not b!6190766) (not d!1940734) (not bm!517788) (not b!6191801) (not d!1940830) (not b!6190738) (not b_lambda!235513) (not bm!517745) (not bm!517656) (not d!1940928) (not d!1940740) (not bm!517588) (not d!1940722) (not b_lambda!235557) (not b!6191708) (not b!6190689) (not b!6191046) (not b!6190830) (not b!6191710) (not d!1940736) (not d!1941032) (not b!6191685) (not b!6191788) (not bm!517700) (not b!6191718) (not b!6190692) (not bm!517664) (not b!6191800) (not d!1940970) (not b!6190768) (not bm!517773) (not bm!517674) (not b!6191194) (not d!1941042) (not d!1940654) (not b!6191777) (not bm!517715) (not b!6191113) (not b!6191673) (not bm!517625) (not b_lambda!235555) (not bm!517701) (not b!6191722) (not b!6191182) (not d!1940958) (not d!1940972) (not d!1941092) (not b!6191169) (not b!6191468) (not b!6190935) (not b!6191540) (not bm!517640) (not b!6191741) (not b!6191209) (not b!6191795) (not b!6191726) (not bm!517778) (not b!6191574) (not d!1940964) (not bm!517659) (not d!1940690) (not d!1941204) (not b!6190576) (not b!6190814) (not b!6191022) (not b!6191366) (not b!6191744) (not b!6190705) (not b!6191769) (not b!6191241) (not d!1941116) (not b!6190704) (not d!1940622) (not b!6191736) (not d!1941086) (not bm!517554) (not bm!517730) (not b!6191445) (not bm!517643) (not b!6191333) (not b!6191772) (not d!1940698) (not b!6191745) (not bm!517568) (not b!6190613) (not b!6191189) (not bm!517668) (not b!6191541) (not b!6191416) (not b!6190578) (not b!6191610) (not b!6191670) (not bm!517787) (not d!1940742) (not b!6190771) (not b!6191023) (not b!6190833) (not setNonEmpty!41996) (not b!6191779) (not b!6191776) (not d!1941044) (not b!6191749) (not b!6191471) (not b!6191688) (not d!1940884) tp_is_empty!41511 (not bm!517669) (not d!1940852) (not bm!517597) (not b!6191045) (not b!6190646) (not bm!517633) (not b!6191030) (not d!1940772) (not b!6191002) (not bm!517711) (not d!1940976) (not b!6191720) (not d!1940700) (not d!1940902) (not d!1940828) (not bm!517646) (not b!6191648) (not b!6191734) (not b!6190901) (not bm!517790) (not d!1940720) (not b!6191062) (not b!6191000) (not b!6191680) (not d!1941106) (not bm!517569) (not b!6191051) (not b!6191690) (not bm!517615) (not b!6190944) (not bm!517631) (not b!6191501) (not bm!517644) (not b!6190908) (not bm!517717) (not b!6191470) (not bm!517573) (not b!6191702) (not b!6191732) (not b!6191214) (not b!6190699) (not d!1940724) (not d!1941064) (not b!6190703) (not b!6191068) (not bm!517655) (not b!6191712) (not bm!517776) (not b!6191543) (not d!1940612) (not b!6191278) (not b_lambda!235553) (not bm!517685) (not d!1940892) (not b!6190733) (not bm!517697) (not d!1940866) (not d!1940966) (not b!6191668) (not d!1940864) (not b!6191773) (not b!6191474) (not bm!517748) (not b_lambda!235571) (not bm!517759) (not b!6190688) (not b!6191191) (not d!1940824) (not b!6191475) (not bm!517744) (not bm!517753) (not b!6191187) (not b!6190757) (not setNonEmpty!41995) (not b!6190732) (not d!1941046) (not b!6191582) (not bs!1536231) (not bm!517572) (not b_lambda!235563) (not d!1941104) (not b!6191715) (not bm!517741) (not b!6191711) (not b!6191180) (not b!6190693) (not d!1940716) (not bm!517600) (not b!6191728) (not b!6190630) (not b!6191575) (not b!6190669) (not b!6191070) (not b!6191785) (not b!6191121) (not d!1940936) (not b!6191737) (not b!6190995) (not b!6191792) (not b!6191716) (not bm!517614) (not b!6191064) (not b!6190919) (not b!6190868) (not b!6191084) (not b!6191038) (not b!6191748) (not d!1940962) (not bm!517707) (not d!1941108) (not b!6191031) (not b!6190735) (not b!6191260) (not b_lambda!235569) (not d!1941112) (not b!6191003) (not b!6191674) (not bm!517779) (not d!1940908) (not bm!517770) (not bm!517763) (not bm!517599) (not d!1940706) (not b!6191428) (not b!6191027) (not bm!517686) (not b!6191352) (not b!6191186) (not b_lambda!235559) (not b!6191043) (not b!6190997) (not b!6191050) (not b!6190864) (not b!6191730) (not d!1940694) (not b!6191462) (not d!1941168) (not bm!517622) (not b!6191664) (not b!6191577) (not b!6191564) (not b!6191704) (not b!6190596) (not b!6191212) (not bm!517762) (not b!6191775) (not b!6191796) (not d!1940858) (not b!6191405) (not b!6191048) (not bm!517714) (not b!6190998) (not b!6190755) (not b!6191426) (not b_lambda!235573) (not b!6191793) (not b!6191799) (not d!1940826) (not b!6190697) (not b!6190702) (not d!1940868) (not bs!1536232) (not d!1940794) (not bm!517684) (not b!6191706) (not b!6191666) (not b!6191365) (not d!1940620) (not b!6191689) (not b!6191460) (not b!6190867) (not b!6191198) (not bm!517623) (not bm!517562) (not d!1940812) (not bm!517620) (not d!1941188) (not bm!517671) (not d!1940692) (not bm!517641) (not b!6190857) (not b!6191025) (not d!1940642) (not b!6191783) (not b_lambda!235515) (not bm!517710) (not b!6191197) (not b!6191682) (not b!6191583) (not b!6191579) (not d!1941182) (not bm!517703) (not d!1940848) (not bm!517591) (not d!1941190) (not b!6191072) (not b!6191103) (not bm!517647) (not b!6191742) (not b!6191767) (not d!1940818) (not d!1940624) (not b!6190725) (not bm!517560) (not bm!517747) (not b!6191750) (not b!6191676) (not bm!517670) (not b!6190700) (not b!6191234) (not b!6191210) (not b!6191612) (not b!6190916) (not bm!517752) (not bs!1536227) (not b!6191432) (not b!6191549) (not b!6191065) (not bm!517693) (not setNonEmpty!42001) (not bs!1536230) (not b!6191292) (not b!6191754) (not bm!517559) (not bm!517694) (not bs!1536233) (not d!1940886) (not bs!1536225) (not b!6190734) (not b!6191596) (not b!6191669) (not b!6191548) (not b!6191752) (not bs!1536218) (not bm!517760) (not b!6191727) (not d!1940746) (not b!6191641) (not d!1941150) (not b!6191545) (not d!1940750) (not d!1940874) (not d!1941192) (not b!6191791) (not bm!517595) (not d!1940980) (not b!6191251) (not d!1940820) (not b!6190862) (not b!6191771) (not b!6190598) (not setNonEmpty!42000) (not b!6191784) (not b!6191114) (not bm!517634) (not bm!517589) (not d!1940934) (not b!6190695) (not b!6191069) (not b!6191168) (not b!6191753) (not b!6191672) (not b!6191677) (not b!6191218) (not b!6190772) (not b!6190953) (not b!6191464) (not b!6191780) (not b!6191498) (not b!6190577) (not d!1940774) (not bm!517577) (not b!6191611) (not b!6191665) (not b!6190829) (not b!6191245) (not bm!517579) (not d!1941206) (not b!6190764))
(check-sat)
