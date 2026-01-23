; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!584326 () Bool)

(assert start!584326)

(declare-fun b!5649757 () Bool)

(assert (=> b!5649757 true))

(assert (=> b!5649757 true))

(declare-fun lambda!303760 () Int)

(declare-fun lambda!303759 () Int)

(assert (=> b!5649757 (not (= lambda!303760 lambda!303759))))

(assert (=> b!5649757 true))

(assert (=> b!5649757 true))

(declare-fun b!5649768 () Bool)

(assert (=> b!5649768 true))

(declare-fun bs!1314413 () Bool)

(declare-fun b!5649748 () Bool)

(assert (= bs!1314413 (and b!5649748 b!5649757)))

(declare-fun lambda!303762 () Int)

(declare-datatypes ((C!31536 0))(
  ( (C!31537 (val!25470 Int)) )
))
(declare-datatypes ((Regex!15633 0))(
  ( (ElementMatch!15633 (c!993043 C!31536)) (Concat!24478 (regOne!31778 Regex!15633) (regTwo!31778 Regex!15633)) (EmptyExpr!15633) (Star!15633 (reg!15962 Regex!15633)) (EmptyLang!15633) (Union!15633 (regOne!31779 Regex!15633) (regTwo!31779 Regex!15633)) )
))
(declare-fun r!7292 () Regex!15633)

(declare-fun lt!2264853 () Regex!15633)

(assert (=> bs!1314413 (= (and (= (regOne!31778 (regOne!31778 r!7292)) (regOne!31778 r!7292)) (= lt!2264853 (regTwo!31778 r!7292))) (= lambda!303762 lambda!303759))))

(assert (=> bs!1314413 (not (= lambda!303762 lambda!303760))))

(assert (=> b!5649748 true))

(assert (=> b!5649748 true))

(assert (=> b!5649748 true))

(declare-fun lambda!303763 () Int)

(assert (=> bs!1314413 (not (= lambda!303763 lambda!303759))))

(assert (=> bs!1314413 (= (and (= (regOne!31778 (regOne!31778 r!7292)) (regOne!31778 r!7292)) (= lt!2264853 (regTwo!31778 r!7292))) (= lambda!303763 lambda!303760))))

(assert (=> b!5649748 (not (= lambda!303763 lambda!303762))))

(assert (=> b!5649748 true))

(assert (=> b!5649748 true))

(assert (=> b!5649748 true))

(declare-fun lt!2264830 () Regex!15633)

(declare-fun lambda!303764 () Int)

(assert (=> bs!1314413 (= (and (= (regTwo!31778 (regOne!31778 r!7292)) (regOne!31778 r!7292)) (= lt!2264830 (regTwo!31778 r!7292))) (= lambda!303764 lambda!303759))))

(assert (=> bs!1314413 (not (= lambda!303764 lambda!303760))))

(assert (=> b!5649748 (= (and (= (regTwo!31778 (regOne!31778 r!7292)) (regOne!31778 (regOne!31778 r!7292))) (= lt!2264830 lt!2264853)) (= lambda!303764 lambda!303762))))

(assert (=> b!5649748 (not (= lambda!303764 lambda!303763))))

(assert (=> b!5649748 true))

(assert (=> b!5649748 true))

(assert (=> b!5649748 true))

(declare-fun lambda!303765 () Int)

(assert (=> b!5649748 (not (= lambda!303765 lambda!303764))))

(assert (=> b!5649748 (not (= lambda!303765 lambda!303762))))

(assert (=> bs!1314413 (not (= lambda!303765 lambda!303759))))

(assert (=> b!5649748 (= (and (= (regTwo!31778 (regOne!31778 r!7292)) (regOne!31778 (regOne!31778 r!7292))) (= lt!2264830 lt!2264853)) (= lambda!303765 lambda!303763))))

(assert (=> bs!1314413 (= (and (= (regTwo!31778 (regOne!31778 r!7292)) (regOne!31778 r!7292)) (= lt!2264830 (regTwo!31778 r!7292))) (= lambda!303765 lambda!303760))))

(assert (=> b!5649748 true))

(assert (=> b!5649748 true))

(assert (=> b!5649748 true))

(declare-fun b!5649744 () Bool)

(declare-fun e!3480250 () Bool)

(declare-fun tp!1565553 () Bool)

(declare-fun tp!1565546 () Bool)

(assert (=> b!5649744 (= e!3480250 (and tp!1565553 tp!1565546))))

(declare-fun b!5649745 () Bool)

(declare-fun res!2389788 () Bool)

(declare-fun e!3480233 () Bool)

(assert (=> b!5649745 (=> res!2389788 e!3480233)))

(declare-datatypes ((List!63198 0))(
  ( (Nil!63074) (Cons!63074 (h!69522 Regex!15633) (t!376498 List!63198)) )
))
(declare-datatypes ((Context!10034 0))(
  ( (Context!10035 (exprs!5517 List!63198)) )
))
(declare-datatypes ((List!63199 0))(
  ( (Nil!63075) (Cons!63075 (h!69523 Context!10034) (t!376499 List!63199)) )
))
(declare-fun zl!343 () List!63199)

(declare-fun isEmpty!34921 (List!63198) Bool)

(assert (=> b!5649745 (= res!2389788 (isEmpty!34921 (t!376498 (exprs!5517 (h!69523 zl!343)))))))

(declare-fun b!5649746 () Bool)

(declare-fun res!2389770 () Bool)

(declare-fun e!3480234 () Bool)

(assert (=> b!5649746 (=> res!2389770 e!3480234)))

(get-info :version)

(assert (=> b!5649746 (= res!2389770 (or ((_ is EmptyExpr!15633) r!7292) ((_ is EmptyLang!15633) r!7292) ((_ is ElementMatch!15633) r!7292) ((_ is Union!15633) r!7292) (not ((_ is Concat!24478) r!7292))))))

(declare-fun b!5649747 () Bool)

(declare-fun res!2389781 () Bool)

(declare-fun e!3480247 () Bool)

(assert (=> b!5649747 (=> res!2389781 e!3480247)))

(declare-fun lt!2264814 () List!63199)

(declare-fun zipperDepth!210 (List!63199) Int)

(assert (=> b!5649747 (= res!2389781 (> (zipperDepth!210 lt!2264814) (zipperDepth!210 zl!343)))))

(declare-fun lt!2264829 () Bool)

(declare-fun lt!2264845 () Bool)

(declare-fun lt!2264815 () Bool)

(declare-fun lt!2264855 () Bool)

(declare-fun lt!2264823 () Bool)

(assert (=> b!5649748 (= e!3480247 (or (not (= lt!2264823 (or lt!2264829 lt!2264855))) (= lt!2264823 (or lt!2264815 lt!2264845))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10034))

(declare-datatypes ((List!63200 0))(
  ( (Nil!63076) (Cons!63076 (h!69524 C!31536) (t!376500 List!63200)) )
))
(declare-fun s!2326 () List!63200)

(declare-fun matchZipper!1771 ((InoxSet Context!10034) List!63200) Bool)

(assert (=> b!5649748 (= lt!2264823 (matchZipper!1771 z!1189 s!2326))))

(declare-fun Exists!2733 (Int) Bool)

(assert (=> b!5649748 (= (Exists!2733 lambda!303764) (Exists!2733 lambda!303765))))

(declare-datatypes ((Unit!156064 0))(
  ( (Unit!156065) )
))
(declare-fun lt!2264819 () Unit!156064)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1362 (Regex!15633 Regex!15633 List!63200) Unit!156064)

(assert (=> b!5649748 (= lt!2264819 (lemmaExistCutMatchRandMatchRSpecEquivalent!1362 (regTwo!31778 (regOne!31778 r!7292)) lt!2264830 s!2326))))

(declare-datatypes ((tuple2!65460 0))(
  ( (tuple2!65461 (_1!36033 List!63200) (_2!36033 List!63200)) )
))
(declare-datatypes ((Option!15642 0))(
  ( (None!15641) (Some!15641 (v!51688 tuple2!65460)) )
))
(declare-fun isDefined!12345 (Option!15642) Bool)

(declare-fun findConcatSeparation!2056 (Regex!15633 Regex!15633 List!63200 List!63200 List!63200) Option!15642)

(assert (=> b!5649748 (= (isDefined!12345 (findConcatSeparation!2056 (regTwo!31778 (regOne!31778 r!7292)) lt!2264830 Nil!63076 s!2326 s!2326)) (Exists!2733 lambda!303764))))

(declare-fun lt!2264831 () Unit!156064)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1820 (Regex!15633 Regex!15633 List!63200) Unit!156064)

(assert (=> b!5649748 (= lt!2264831 (lemmaFindConcatSeparationEquivalentToExists!1820 (regTwo!31778 (regOne!31778 r!7292)) lt!2264830 s!2326))))

(declare-fun generalisedConcat!1248 (List!63198) Regex!15633)

(assert (=> b!5649748 (= lt!2264830 (generalisedConcat!1248 (t!376498 (exprs!5517 (h!69523 zl!343)))))))

(declare-fun matchRSpec!2736 (Regex!15633 List!63200) Bool)

(assert (=> b!5649748 (= lt!2264845 (matchRSpec!2736 lt!2264853 s!2326))))

(declare-fun lt!2264813 () Unit!156064)

(declare-fun mainMatchTheorem!2736 (Regex!15633 List!63200) Unit!156064)

(assert (=> b!5649748 (= lt!2264813 (mainMatchTheorem!2736 lt!2264853 s!2326))))

(assert (=> b!5649748 (= (Exists!2733 lambda!303762) (Exists!2733 lambda!303763))))

(declare-fun lt!2264834 () Unit!156064)

(assert (=> b!5649748 (= lt!2264834 (lemmaExistCutMatchRandMatchRSpecEquivalent!1362 (regOne!31778 (regOne!31778 r!7292)) lt!2264853 s!2326))))

(assert (=> b!5649748 (= (isDefined!12345 (findConcatSeparation!2056 (regOne!31778 (regOne!31778 r!7292)) lt!2264853 Nil!63076 s!2326 s!2326)) (Exists!2733 lambda!303762))))

(declare-fun lt!2264835 () Unit!156064)

(assert (=> b!5649748 (= lt!2264835 (lemmaFindConcatSeparationEquivalentToExists!1820 (regOne!31778 (regOne!31778 r!7292)) lt!2264853 s!2326))))

(declare-fun lt!2264843 () Regex!15633)

(assert (=> b!5649748 (= lt!2264815 (matchRSpec!2736 lt!2264843 s!2326))))

(declare-fun lt!2264842 () Unit!156064)

(assert (=> b!5649748 (= lt!2264842 (mainMatchTheorem!2736 lt!2264843 s!2326))))

(assert (=> b!5649748 (= lt!2264845 lt!2264855)))

(declare-fun lt!2264847 () (InoxSet Context!10034))

(assert (=> b!5649748 (= lt!2264855 (matchZipper!1771 lt!2264847 s!2326))))

(declare-fun matchR!7818 (Regex!15633 List!63200) Bool)

(assert (=> b!5649748 (= lt!2264845 (matchR!7818 lt!2264853 s!2326))))

(declare-fun lt!2264820 () Context!10034)

(declare-fun lt!2264839 () Unit!156064)

(declare-fun theoremZipperRegexEquiv!629 ((InoxSet Context!10034) List!63199 Regex!15633 List!63200) Unit!156064)

(assert (=> b!5649748 (= lt!2264839 (theoremZipperRegexEquiv!629 lt!2264847 (Cons!63075 lt!2264820 Nil!63075) lt!2264853 s!2326))))

(declare-fun lt!2264826 () List!63198)

(assert (=> b!5649748 (= lt!2264853 (generalisedConcat!1248 lt!2264826))))

(assert (=> b!5649748 (= lt!2264815 lt!2264829)))

(declare-fun lt!2264856 () (InoxSet Context!10034))

(assert (=> b!5649748 (= lt!2264829 (matchZipper!1771 lt!2264856 s!2326))))

(assert (=> b!5649748 (= lt!2264815 (matchR!7818 lt!2264843 s!2326))))

(declare-fun lt!2264825 () Unit!156064)

(assert (=> b!5649748 (= lt!2264825 (theoremZipperRegexEquiv!629 lt!2264856 lt!2264814 lt!2264843 s!2326))))

(declare-fun lt!2264848 () List!63198)

(assert (=> b!5649748 (= lt!2264843 (generalisedConcat!1248 lt!2264848))))

(declare-fun b!5649749 () Bool)

(declare-fun tp_is_empty!40519 () Bool)

(assert (=> b!5649749 (= e!3480250 tp_is_empty!40519)))

(declare-fun b!5649750 () Bool)

(declare-fun e!3480241 () Bool)

(declare-fun tp!1565551 () Bool)

(assert (=> b!5649750 (= e!3480241 (and tp_is_empty!40519 tp!1565551))))

(declare-fun setElem!37736 () Context!10034)

(declare-fun setNonEmpty!37736 () Bool)

(declare-fun setRes!37736 () Bool)

(declare-fun e!3480235 () Bool)

(declare-fun tp!1565552 () Bool)

(declare-fun inv!82329 (Context!10034) Bool)

(assert (=> setNonEmpty!37736 (= setRes!37736 (and tp!1565552 (inv!82329 setElem!37736) e!3480235))))

(declare-fun setRest!37736 () (InoxSet Context!10034))

(assert (=> setNonEmpty!37736 (= z!1189 ((_ map or) (store ((as const (Array Context!10034 Bool)) false) setElem!37736 true) setRest!37736))))

(declare-fun res!2389771 () Bool)

(declare-fun e!3480245 () Bool)

(assert (=> start!584326 (=> (not res!2389771) (not e!3480245))))

(declare-fun validRegex!7369 (Regex!15633) Bool)

(assert (=> start!584326 (= res!2389771 (validRegex!7369 r!7292))))

(assert (=> start!584326 e!3480245))

(assert (=> start!584326 e!3480250))

(declare-fun condSetEmpty!37736 () Bool)

(assert (=> start!584326 (= condSetEmpty!37736 (= z!1189 ((as const (Array Context!10034 Bool)) false)))))

(assert (=> start!584326 setRes!37736))

(declare-fun e!3480243 () Bool)

(assert (=> start!584326 e!3480243))

(assert (=> start!584326 e!3480241))

(declare-fun b!5649751 () Bool)

(declare-fun tp!1565549 () Bool)

(assert (=> b!5649751 (= e!3480250 tp!1565549)))

(declare-fun b!5649752 () Bool)

(declare-fun res!2389769 () Bool)

(assert (=> b!5649752 (=> res!2389769 e!3480234)))

(declare-fun isEmpty!34922 (List!63199) Bool)

(assert (=> b!5649752 (= res!2389769 (not (isEmpty!34922 (t!376499 zl!343))))))

(declare-fun b!5649753 () Bool)

(declare-fun e!3480240 () Bool)

(declare-fun lt!2264818 () (InoxSet Context!10034))

(assert (=> b!5649753 (= e!3480240 (matchZipper!1771 lt!2264818 (t!376500 s!2326)))))

(declare-fun b!5649754 () Bool)

(declare-fun e!3480248 () Bool)

(assert (=> b!5649754 (= e!3480248 e!3480247)))

(declare-fun res!2389772 () Bool)

(assert (=> b!5649754 (=> res!2389772 e!3480247)))

(declare-fun zipperDepthTotal!242 (List!63199) Int)

(assert (=> b!5649754 (= res!2389772 (>= (zipperDepthTotal!242 lt!2264814) (zipperDepthTotal!242 zl!343)))))

(declare-fun lt!2264844 () Context!10034)

(assert (=> b!5649754 (= lt!2264814 (Cons!63075 lt!2264844 Nil!63075))))

(declare-fun b!5649755 () Bool)

(declare-fun e!3480252 () Bool)

(declare-fun derivationStepZipper!1720 ((InoxSet Context!10034) C!31536) (InoxSet Context!10034))

(assert (=> b!5649755 (= e!3480252 (not (matchZipper!1771 (derivationStepZipper!1720 lt!2264847 (h!69524 s!2326)) (t!376500 s!2326))))))

(declare-fun b!5649756 () Bool)

(declare-fun e!3480242 () Bool)

(declare-fun e!3480246 () Bool)

(assert (=> b!5649756 (= e!3480242 e!3480246)))

(declare-fun res!2389791 () Bool)

(assert (=> b!5649756 (=> res!2389791 e!3480246)))

(declare-fun lt!2264851 () (InoxSet Context!10034))

(declare-fun lt!2264836 () (InoxSet Context!10034))

(assert (=> b!5649756 (= res!2389791 (not (= lt!2264851 lt!2264836)))))

(declare-fun lt!2264846 () (InoxSet Context!10034))

(declare-fun lt!2264838 () (InoxSet Context!10034))

(assert (=> b!5649756 (= lt!2264836 ((_ map or) lt!2264846 lt!2264838))))

(declare-fun derivationStepZipperUp!901 (Context!10034 C!31536) (InoxSet Context!10034))

(assert (=> b!5649756 (= lt!2264838 (derivationStepZipperUp!901 lt!2264820 (h!69524 s!2326)))))

(declare-fun lambda!303761 () Int)

(declare-fun flatMap!1246 ((InoxSet Context!10034) Int) (InoxSet Context!10034))

(assert (=> b!5649756 (= (flatMap!1246 lt!2264856 lambda!303761) (derivationStepZipperUp!901 lt!2264844 (h!69524 s!2326)))))

(declare-fun lt!2264858 () Unit!156064)

(declare-fun lemmaFlatMapOnSingletonSet!778 ((InoxSet Context!10034) Context!10034 Int) Unit!156064)

(assert (=> b!5649756 (= lt!2264858 (lemmaFlatMapOnSingletonSet!778 lt!2264856 lt!2264844 lambda!303761))))

(declare-fun lt!2264850 () (InoxSet Context!10034))

(assert (=> b!5649756 (= lt!2264850 (derivationStepZipperUp!901 lt!2264844 (h!69524 s!2326)))))

(assert (=> b!5649756 (= lt!2264851 (derivationStepZipper!1720 lt!2264856 (h!69524 s!2326)))))

(assert (=> b!5649756 (= lt!2264847 (store ((as const (Array Context!10034 Bool)) false) lt!2264820 true))))

(assert (=> b!5649756 (= lt!2264856 (store ((as const (Array Context!10034 Bool)) false) lt!2264844 true))))

(assert (=> b!5649756 (= lt!2264844 (Context!10035 lt!2264848))))

(assert (=> b!5649756 (= lt!2264848 (Cons!63074 (regOne!31778 (regOne!31778 r!7292)) lt!2264826))))

(declare-fun setIsEmpty!37736 () Bool)

(assert (=> setIsEmpty!37736 setRes!37736))

(assert (=> b!5649757 (= e!3480234 e!3480233)))

(declare-fun res!2389786 () Bool)

(assert (=> b!5649757 (=> res!2389786 e!3480233)))

(declare-fun lt!2264849 () Bool)

(declare-fun lt!2264833 () Bool)

(assert (=> b!5649757 (= res!2389786 (or (not (= lt!2264849 lt!2264833)) ((_ is Nil!63076) s!2326)))))

(assert (=> b!5649757 (= (Exists!2733 lambda!303759) (Exists!2733 lambda!303760))))

(declare-fun lt!2264854 () Unit!156064)

(assert (=> b!5649757 (= lt!2264854 (lemmaExistCutMatchRandMatchRSpecEquivalent!1362 (regOne!31778 r!7292) (regTwo!31778 r!7292) s!2326))))

(assert (=> b!5649757 (= lt!2264833 (Exists!2733 lambda!303759))))

(assert (=> b!5649757 (= lt!2264833 (isDefined!12345 (findConcatSeparation!2056 (regOne!31778 r!7292) (regTwo!31778 r!7292) Nil!63076 s!2326 s!2326)))))

(declare-fun lt!2264840 () Unit!156064)

(assert (=> b!5649757 (= lt!2264840 (lemmaFindConcatSeparationEquivalentToExists!1820 (regOne!31778 r!7292) (regTwo!31778 r!7292) s!2326))))

(declare-fun b!5649758 () Bool)

(declare-fun e!3480238 () Bool)

(assert (=> b!5649758 (= e!3480238 e!3480242)))

(declare-fun res!2389792 () Bool)

(assert (=> b!5649758 (=> res!2389792 e!3480242)))

(declare-fun e!3480237 () Bool)

(assert (=> b!5649758 (= res!2389792 e!3480237)))

(declare-fun res!2389794 () Bool)

(assert (=> b!5649758 (=> (not res!2389794) (not e!3480237))))

(declare-fun lt!2264859 () Bool)

(declare-fun lt!2264822 () Bool)

(assert (=> b!5649758 (= res!2389794 (not (= lt!2264859 lt!2264822)))))

(declare-fun lt!2264817 () (InoxSet Context!10034))

(assert (=> b!5649758 (= lt!2264859 (matchZipper!1771 lt!2264817 (t!376500 s!2326)))))

(declare-fun lt!2264837 () (InoxSet Context!10034))

(assert (=> b!5649758 (= (matchZipper!1771 lt!2264837 (t!376500 s!2326)) e!3480240)))

(declare-fun res!2389782 () Bool)

(assert (=> b!5649758 (=> res!2389782 e!3480240)))

(assert (=> b!5649758 (= res!2389782 lt!2264822)))

(assert (=> b!5649758 (= lt!2264822 (matchZipper!1771 lt!2264846 (t!376500 s!2326)))))

(declare-fun lt!2264821 () Unit!156064)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!658 ((InoxSet Context!10034) (InoxSet Context!10034) List!63200) Unit!156064)

(assert (=> b!5649758 (= lt!2264821 (lemmaZipperConcatMatchesSameAsBothZippers!658 lt!2264846 lt!2264818 (t!376500 s!2326)))))

(declare-fun b!5649759 () Bool)

(declare-fun e!3480249 () Bool)

(declare-fun lt!2264832 () (InoxSet Context!10034))

(assert (=> b!5649759 (= e!3480249 (matchZipper!1771 lt!2264832 (t!376500 s!2326)))))

(declare-fun b!5649760 () Bool)

(declare-fun res!2389783 () Bool)

(declare-fun e!3480251 () Bool)

(assert (=> b!5649760 (=> res!2389783 e!3480251)))

(declare-fun nullable!5665 (Regex!15633) Bool)

(assert (=> b!5649760 (= res!2389783 (not (nullable!5665 (regOne!31778 (regOne!31778 r!7292)))))))

(declare-fun b!5649761 () Bool)

(declare-fun res!2389774 () Bool)

(assert (=> b!5649761 (=> res!2389774 e!3480234)))

(assert (=> b!5649761 (= res!2389774 (not (= r!7292 (generalisedConcat!1248 (exprs!5517 (h!69523 zl!343))))))))

(declare-fun b!5649762 () Bool)

(declare-fun res!2389777 () Bool)

(assert (=> b!5649762 (=> res!2389777 e!3480248)))

(declare-fun contextDepthTotal!218 (Context!10034) Int)

(assert (=> b!5649762 (= res!2389777 (>= (contextDepthTotal!218 lt!2264844) (contextDepthTotal!218 (h!69523 zl!343))))))

(declare-fun b!5649763 () Bool)

(declare-fun res!2389785 () Bool)

(assert (=> b!5649763 (=> (not res!2389785) (not e!3480245))))

(declare-fun unfocusZipper!1375 (List!63199) Regex!15633)

(assert (=> b!5649763 (= res!2389785 (= r!7292 (unfocusZipper!1375 zl!343)))))

(declare-fun b!5649764 () Bool)

(declare-fun res!2389776 () Bool)

(assert (=> b!5649764 (=> (not res!2389776) (not e!3480245))))

(declare-fun toList!9417 ((InoxSet Context!10034)) List!63199)

(assert (=> b!5649764 (= res!2389776 (= (toList!9417 z!1189) zl!343))))

(declare-fun b!5649765 () Bool)

(declare-fun tp!1565548 () Bool)

(declare-fun tp!1565545 () Bool)

(assert (=> b!5649765 (= e!3480250 (and tp!1565548 tp!1565545))))

(declare-fun b!5649766 () Bool)

(assert (=> b!5649766 (= e!3480246 e!3480248)))

(declare-fun res!2389787 () Bool)

(assert (=> b!5649766 (=> res!2389787 e!3480248)))

(assert (=> b!5649766 (= res!2389787 e!3480252)))

(declare-fun res!2389793 () Bool)

(assert (=> b!5649766 (=> (not res!2389793) (not e!3480252))))

(assert (=> b!5649766 (= res!2389793 (not (= lt!2264859 (matchZipper!1771 lt!2264851 (t!376500 s!2326)))))))

(declare-fun e!3480236 () Bool)

(assert (=> b!5649766 (= (matchZipper!1771 lt!2264836 (t!376500 s!2326)) e!3480236)))

(declare-fun res!2389784 () Bool)

(assert (=> b!5649766 (=> res!2389784 e!3480236)))

(assert (=> b!5649766 (= res!2389784 lt!2264822)))

(declare-fun lt!2264841 () Unit!156064)

(assert (=> b!5649766 (= lt!2264841 (lemmaZipperConcatMatchesSameAsBothZippers!658 lt!2264846 lt!2264838 (t!376500 s!2326)))))

(assert (=> b!5649766 (= (flatMap!1246 lt!2264847 lambda!303761) (derivationStepZipperUp!901 lt!2264820 (h!69524 s!2326)))))

(declare-fun lt!2264857 () Unit!156064)

(assert (=> b!5649766 (= lt!2264857 (lemmaFlatMapOnSingletonSet!778 lt!2264847 lt!2264820 lambda!303761))))

(declare-fun b!5649767 () Bool)

(declare-fun res!2389780 () Bool)

(assert (=> b!5649767 (=> res!2389780 e!3480248)))

(assert (=> b!5649767 (= res!2389780 (not (= (exprs!5517 (h!69523 zl!343)) (Cons!63074 (Concat!24478 (regOne!31778 (regOne!31778 r!7292)) (regTwo!31778 (regOne!31778 r!7292))) (t!376498 (exprs!5517 (h!69523 zl!343)))))))))

(assert (=> b!5649768 (= e!3480233 e!3480251)))

(declare-fun res!2389789 () Bool)

(assert (=> b!5649768 (=> res!2389789 e!3480251)))

(assert (=> b!5649768 (= res!2389789 (or (and ((_ is ElementMatch!15633) (regOne!31778 r!7292)) (= (c!993043 (regOne!31778 r!7292)) (h!69524 s!2326))) ((_ is Union!15633) (regOne!31778 r!7292)) (not ((_ is Concat!24478) (regOne!31778 r!7292)))))))

(declare-fun lt!2264827 () Unit!156064)

(declare-fun e!3480239 () Unit!156064)

(assert (=> b!5649768 (= lt!2264827 e!3480239)))

(declare-fun c!993042 () Bool)

(assert (=> b!5649768 (= c!993042 (nullable!5665 (h!69522 (exprs!5517 (h!69523 zl!343)))))))

(assert (=> b!5649768 (= (flatMap!1246 z!1189 lambda!303761) (derivationStepZipperUp!901 (h!69523 zl!343) (h!69524 s!2326)))))

(declare-fun lt!2264860 () Unit!156064)

(assert (=> b!5649768 (= lt!2264860 (lemmaFlatMapOnSingletonSet!778 z!1189 (h!69523 zl!343) lambda!303761))))

(declare-fun lt!2264828 () Context!10034)

(assert (=> b!5649768 (= lt!2264832 (derivationStepZipperUp!901 lt!2264828 (h!69524 s!2326)))))

(declare-fun derivationStepZipperDown!975 (Regex!15633 Context!10034 C!31536) (InoxSet Context!10034))

(assert (=> b!5649768 (= lt!2264817 (derivationStepZipperDown!975 (h!69522 (exprs!5517 (h!69523 zl!343))) lt!2264828 (h!69524 s!2326)))))

(assert (=> b!5649768 (= lt!2264828 (Context!10035 (t!376498 (exprs!5517 (h!69523 zl!343)))))))

(declare-fun lt!2264824 () (InoxSet Context!10034))

(assert (=> b!5649768 (= lt!2264824 (derivationStepZipperUp!901 (Context!10035 (Cons!63074 (h!69522 (exprs!5517 (h!69523 zl!343))) (t!376498 (exprs!5517 (h!69523 zl!343))))) (h!69524 s!2326)))))

(declare-fun b!5649769 () Bool)

(declare-fun tp!1565544 () Bool)

(assert (=> b!5649769 (= e!3480235 tp!1565544)))

(declare-fun b!5649770 () Bool)

(assert (=> b!5649770 (= e!3480236 (matchZipper!1771 lt!2264838 (t!376500 s!2326)))))

(declare-fun b!5649771 () Bool)

(declare-fun res!2389779 () Bool)

(assert (=> b!5649771 (=> res!2389779 e!3480234)))

(declare-fun generalisedUnion!1496 (List!63198) Regex!15633)

(declare-fun unfocusZipperList!1061 (List!63199) List!63198)

(assert (=> b!5649771 (= res!2389779 (not (= r!7292 (generalisedUnion!1496 (unfocusZipperList!1061 zl!343)))))))

(declare-fun tp!1565547 () Bool)

(declare-fun e!3480244 () Bool)

(declare-fun b!5649772 () Bool)

(assert (=> b!5649772 (= e!3480243 (and (inv!82329 (h!69523 zl!343)) e!3480244 tp!1565547))))

(declare-fun b!5649773 () Bool)

(assert (=> b!5649773 (= e!3480237 (not (matchZipper!1771 lt!2264818 (t!376500 s!2326))))))

(declare-fun b!5649774 () Bool)

(assert (=> b!5649774 (= e!3480245 (not e!3480234))))

(declare-fun res!2389775 () Bool)

(assert (=> b!5649774 (=> res!2389775 e!3480234)))

(assert (=> b!5649774 (= res!2389775 (not ((_ is Cons!63075) zl!343)))))

(assert (=> b!5649774 (= lt!2264849 (matchRSpec!2736 r!7292 s!2326))))

(assert (=> b!5649774 (= lt!2264849 (matchR!7818 r!7292 s!2326))))

(declare-fun lt!2264852 () Unit!156064)

(assert (=> b!5649774 (= lt!2264852 (mainMatchTheorem!2736 r!7292 s!2326))))

(declare-fun b!5649775 () Bool)

(declare-fun tp!1565550 () Bool)

(assert (=> b!5649775 (= e!3480244 tp!1565550)))

(declare-fun b!5649776 () Bool)

(declare-fun Unit!156066 () Unit!156064)

(assert (=> b!5649776 (= e!3480239 Unit!156066)))

(declare-fun lt!2264816 () Unit!156064)

(assert (=> b!5649776 (= lt!2264816 (lemmaZipperConcatMatchesSameAsBothZippers!658 lt!2264817 lt!2264832 (t!376500 s!2326)))))

(declare-fun res!2389778 () Bool)

(assert (=> b!5649776 (= res!2389778 (matchZipper!1771 lt!2264817 (t!376500 s!2326)))))

(assert (=> b!5649776 (=> res!2389778 e!3480249)))

(assert (=> b!5649776 (= (matchZipper!1771 ((_ map or) lt!2264817 lt!2264832) (t!376500 s!2326)) e!3480249)))

(declare-fun b!5649777 () Bool)

(declare-fun res!2389790 () Bool)

(assert (=> b!5649777 (=> res!2389790 e!3480234)))

(assert (=> b!5649777 (= res!2389790 (not ((_ is Cons!63074) (exprs!5517 (h!69523 zl!343)))))))

(declare-fun b!5649778 () Bool)

(declare-fun Unit!156067 () Unit!156064)

(assert (=> b!5649778 (= e!3480239 Unit!156067)))

(declare-fun b!5649779 () Bool)

(assert (=> b!5649779 (= e!3480251 e!3480238)))

(declare-fun res!2389773 () Bool)

(assert (=> b!5649779 (=> res!2389773 e!3480238)))

(assert (=> b!5649779 (= res!2389773 (not (= lt!2264817 lt!2264837)))))

(assert (=> b!5649779 (= lt!2264837 ((_ map or) lt!2264846 lt!2264818))))

(assert (=> b!5649779 (= lt!2264818 (derivationStepZipperDown!975 (regTwo!31778 (regOne!31778 r!7292)) lt!2264828 (h!69524 s!2326)))))

(assert (=> b!5649779 (= lt!2264846 (derivationStepZipperDown!975 (regOne!31778 (regOne!31778 r!7292)) lt!2264820 (h!69524 s!2326)))))

(assert (=> b!5649779 (= lt!2264820 (Context!10035 lt!2264826))))

(assert (=> b!5649779 (= lt!2264826 (Cons!63074 (regTwo!31778 (regOne!31778 r!7292)) (t!376498 (exprs!5517 (h!69523 zl!343)))))))

(assert (= (and start!584326 res!2389771) b!5649764))

(assert (= (and b!5649764 res!2389776) b!5649763))

(assert (= (and b!5649763 res!2389785) b!5649774))

(assert (= (and b!5649774 (not res!2389775)) b!5649752))

(assert (= (and b!5649752 (not res!2389769)) b!5649761))

(assert (= (and b!5649761 (not res!2389774)) b!5649777))

(assert (= (and b!5649777 (not res!2389790)) b!5649771))

(assert (= (and b!5649771 (not res!2389779)) b!5649746))

(assert (= (and b!5649746 (not res!2389770)) b!5649757))

(assert (= (and b!5649757 (not res!2389786)) b!5649745))

(assert (= (and b!5649745 (not res!2389788)) b!5649768))

(assert (= (and b!5649768 c!993042) b!5649776))

(assert (= (and b!5649768 (not c!993042)) b!5649778))

(assert (= (and b!5649776 (not res!2389778)) b!5649759))

(assert (= (and b!5649768 (not res!2389789)) b!5649760))

(assert (= (and b!5649760 (not res!2389783)) b!5649779))

(assert (= (and b!5649779 (not res!2389773)) b!5649758))

(assert (= (and b!5649758 (not res!2389782)) b!5649753))

(assert (= (and b!5649758 res!2389794) b!5649773))

(assert (= (and b!5649758 (not res!2389792)) b!5649756))

(assert (= (and b!5649756 (not res!2389791)) b!5649766))

(assert (= (and b!5649766 (not res!2389784)) b!5649770))

(assert (= (and b!5649766 res!2389793) b!5649755))

(assert (= (and b!5649766 (not res!2389787)) b!5649767))

(assert (= (and b!5649767 (not res!2389780)) b!5649762))

(assert (= (and b!5649762 (not res!2389777)) b!5649754))

(assert (= (and b!5649754 (not res!2389772)) b!5649747))

(assert (= (and b!5649747 (not res!2389781)) b!5649748))

(assert (= (and start!584326 ((_ is ElementMatch!15633) r!7292)) b!5649749))

(assert (= (and start!584326 ((_ is Concat!24478) r!7292)) b!5649744))

(assert (= (and start!584326 ((_ is Star!15633) r!7292)) b!5649751))

(assert (= (and start!584326 ((_ is Union!15633) r!7292)) b!5649765))

(assert (= (and start!584326 condSetEmpty!37736) setIsEmpty!37736))

(assert (= (and start!584326 (not condSetEmpty!37736)) setNonEmpty!37736))

(assert (= setNonEmpty!37736 b!5649769))

(assert (= b!5649772 b!5649775))

(assert (= (and start!584326 ((_ is Cons!63075) zl!343)) b!5649772))

(assert (= (and start!584326 ((_ is Cons!63076) s!2326)) b!5649750))

(declare-fun m!6617020 () Bool)

(assert (=> b!5649755 m!6617020))

(assert (=> b!5649755 m!6617020))

(declare-fun m!6617022 () Bool)

(assert (=> b!5649755 m!6617022))

(declare-fun m!6617024 () Bool)

(assert (=> b!5649745 m!6617024))

(declare-fun m!6617026 () Bool)

(assert (=> b!5649779 m!6617026))

(declare-fun m!6617028 () Bool)

(assert (=> b!5649779 m!6617028))

(declare-fun m!6617030 () Bool)

(assert (=> b!5649771 m!6617030))

(assert (=> b!5649771 m!6617030))

(declare-fun m!6617032 () Bool)

(assert (=> b!5649771 m!6617032))

(declare-fun m!6617034 () Bool)

(assert (=> b!5649776 m!6617034))

(declare-fun m!6617036 () Bool)

(assert (=> b!5649776 m!6617036))

(declare-fun m!6617038 () Bool)

(assert (=> b!5649776 m!6617038))

(declare-fun m!6617040 () Bool)

(assert (=> b!5649753 m!6617040))

(assert (=> b!5649758 m!6617036))

(declare-fun m!6617042 () Bool)

(assert (=> b!5649758 m!6617042))

(declare-fun m!6617044 () Bool)

(assert (=> b!5649758 m!6617044))

(declare-fun m!6617046 () Bool)

(assert (=> b!5649758 m!6617046))

(declare-fun m!6617048 () Bool)

(assert (=> setNonEmpty!37736 m!6617048))

(declare-fun m!6617050 () Bool)

(assert (=> b!5649747 m!6617050))

(declare-fun m!6617052 () Bool)

(assert (=> b!5649747 m!6617052))

(declare-fun m!6617054 () Bool)

(assert (=> b!5649759 m!6617054))

(declare-fun m!6617056 () Bool)

(assert (=> b!5649766 m!6617056))

(declare-fun m!6617058 () Bool)

(assert (=> b!5649766 m!6617058))

(declare-fun m!6617060 () Bool)

(assert (=> b!5649766 m!6617060))

(declare-fun m!6617062 () Bool)

(assert (=> b!5649766 m!6617062))

(declare-fun m!6617064 () Bool)

(assert (=> b!5649766 m!6617064))

(declare-fun m!6617066 () Bool)

(assert (=> b!5649766 m!6617066))

(declare-fun m!6617068 () Bool)

(assert (=> b!5649761 m!6617068))

(declare-fun m!6617070 () Bool)

(assert (=> b!5649770 m!6617070))

(declare-fun m!6617072 () Bool)

(assert (=> b!5649774 m!6617072))

(declare-fun m!6617074 () Bool)

(assert (=> b!5649774 m!6617074))

(declare-fun m!6617076 () Bool)

(assert (=> b!5649774 m!6617076))

(declare-fun m!6617078 () Bool)

(assert (=> b!5649768 m!6617078))

(declare-fun m!6617080 () Bool)

(assert (=> b!5649768 m!6617080))

(declare-fun m!6617082 () Bool)

(assert (=> b!5649768 m!6617082))

(declare-fun m!6617084 () Bool)

(assert (=> b!5649768 m!6617084))

(declare-fun m!6617086 () Bool)

(assert (=> b!5649768 m!6617086))

(declare-fun m!6617088 () Bool)

(assert (=> b!5649768 m!6617088))

(declare-fun m!6617090 () Bool)

(assert (=> b!5649768 m!6617090))

(declare-fun m!6617092 () Bool)

(assert (=> start!584326 m!6617092))

(declare-fun m!6617094 () Bool)

(assert (=> b!5649762 m!6617094))

(declare-fun m!6617096 () Bool)

(assert (=> b!5649762 m!6617096))

(declare-fun m!6617098 () Bool)

(assert (=> b!5649757 m!6617098))

(declare-fun m!6617100 () Bool)

(assert (=> b!5649757 m!6617100))

(declare-fun m!6617102 () Bool)

(assert (=> b!5649757 m!6617102))

(declare-fun m!6617104 () Bool)

(assert (=> b!5649757 m!6617104))

(assert (=> b!5649757 m!6617098))

(declare-fun m!6617106 () Bool)

(assert (=> b!5649757 m!6617106))

(assert (=> b!5649757 m!6617100))

(declare-fun m!6617108 () Bool)

(assert (=> b!5649757 m!6617108))

(declare-fun m!6617110 () Bool)

(assert (=> b!5649752 m!6617110))

(assert (=> b!5649773 m!6617040))

(declare-fun m!6617112 () Bool)

(assert (=> b!5649763 m!6617112))

(declare-fun m!6617114 () Bool)

(assert (=> b!5649772 m!6617114))

(declare-fun m!6617116 () Bool)

(assert (=> b!5649754 m!6617116))

(declare-fun m!6617118 () Bool)

(assert (=> b!5649754 m!6617118))

(declare-fun m!6617120 () Bool)

(assert (=> b!5649764 m!6617120))

(declare-fun m!6617122 () Bool)

(assert (=> b!5649756 m!6617122))

(assert (=> b!5649756 m!6617056))

(declare-fun m!6617124 () Bool)

(assert (=> b!5649756 m!6617124))

(declare-fun m!6617126 () Bool)

(assert (=> b!5649756 m!6617126))

(declare-fun m!6617128 () Bool)

(assert (=> b!5649756 m!6617128))

(declare-fun m!6617130 () Bool)

(assert (=> b!5649756 m!6617130))

(declare-fun m!6617132 () Bool)

(assert (=> b!5649756 m!6617132))

(declare-fun m!6617134 () Bool)

(assert (=> b!5649748 m!6617134))

(declare-fun m!6617136 () Bool)

(assert (=> b!5649748 m!6617136))

(declare-fun m!6617138 () Bool)

(assert (=> b!5649748 m!6617138))

(declare-fun m!6617140 () Bool)

(assert (=> b!5649748 m!6617140))

(declare-fun m!6617142 () Bool)

(assert (=> b!5649748 m!6617142))

(declare-fun m!6617144 () Bool)

(assert (=> b!5649748 m!6617144))

(declare-fun m!6617146 () Bool)

(assert (=> b!5649748 m!6617146))

(declare-fun m!6617148 () Bool)

(assert (=> b!5649748 m!6617148))

(declare-fun m!6617150 () Bool)

(assert (=> b!5649748 m!6617150))

(assert (=> b!5649748 m!6617138))

(declare-fun m!6617152 () Bool)

(assert (=> b!5649748 m!6617152))

(declare-fun m!6617154 () Bool)

(assert (=> b!5649748 m!6617154))

(declare-fun m!6617156 () Bool)

(assert (=> b!5649748 m!6617156))

(declare-fun m!6617158 () Bool)

(assert (=> b!5649748 m!6617158))

(declare-fun m!6617160 () Bool)

(assert (=> b!5649748 m!6617160))

(declare-fun m!6617162 () Bool)

(assert (=> b!5649748 m!6617162))

(declare-fun m!6617164 () Bool)

(assert (=> b!5649748 m!6617164))

(declare-fun m!6617166 () Bool)

(assert (=> b!5649748 m!6617166))

(declare-fun m!6617168 () Bool)

(assert (=> b!5649748 m!6617168))

(declare-fun m!6617170 () Bool)

(assert (=> b!5649748 m!6617170))

(declare-fun m!6617172 () Bool)

(assert (=> b!5649748 m!6617172))

(assert (=> b!5649748 m!6617162))

(declare-fun m!6617174 () Bool)

(assert (=> b!5649748 m!6617174))

(declare-fun m!6617176 () Bool)

(assert (=> b!5649748 m!6617176))

(declare-fun m!6617178 () Bool)

(assert (=> b!5649748 m!6617178))

(declare-fun m!6617180 () Bool)

(assert (=> b!5649748 m!6617180))

(assert (=> b!5649748 m!6617150))

(declare-fun m!6617182 () Bool)

(assert (=> b!5649748 m!6617182))

(assert (=> b!5649748 m!6617164))

(declare-fun m!6617184 () Bool)

(assert (=> b!5649748 m!6617184))

(declare-fun m!6617186 () Bool)

(assert (=> b!5649760 m!6617186))

(check-sat (not b!5649775) (not b!5649770) (not b!5649771) (not b!5649753) (not b!5649779) (not b!5649748) (not b!5649769) (not b!5649774) (not b!5649768) (not b!5649773) (not b!5649761) (not b!5649745) (not b!5649754) tp_is_empty!40519 (not b!5649764) (not b!5649758) (not b!5649757) (not b!5649760) (not b!5649751) (not setNonEmpty!37736) (not start!584326) (not b!5649759) (not b!5649766) (not b!5649772) (not b!5649755) (not b!5649744) (not b!5649763) (not b!5649750) (not b!5649776) (not b!5649756) (not b!5649752) (not b!5649747) (not b!5649762) (not b!5649765))
(check-sat)
