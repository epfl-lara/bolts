; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!553222 () Bool)

(assert start!553222)

(declare-fun b!5231833 () Bool)

(assert (=> b!5231833 true))

(assert (=> b!5231833 true))

(declare-fun lambda!262853 () Int)

(declare-fun lambda!262852 () Int)

(assert (=> b!5231833 (not (= lambda!262853 lambda!262852))))

(assert (=> b!5231833 true))

(assert (=> b!5231833 true))

(declare-fun b!5231809 () Bool)

(assert (=> b!5231809 true))

(declare-fun b!5231798 () Bool)

(declare-fun e!3255813 () Bool)

(declare-fun e!3255800 () Bool)

(assert (=> b!5231798 (= e!3255813 e!3255800)))

(declare-fun res!2220849 () Bool)

(assert (=> b!5231798 (=> res!2220849 e!3255800)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29920 0))(
  ( (C!29921 (val!24662 Int)) )
))
(declare-datatypes ((Regex!14825 0))(
  ( (ElementMatch!14825 (c!903601 C!29920)) (Concat!23670 (regOne!30162 Regex!14825) (regTwo!30162 Regex!14825)) (EmptyExpr!14825) (Star!14825 (reg!15154 Regex!14825)) (EmptyLang!14825) (Union!14825 (regOne!30163 Regex!14825) (regTwo!30163 Regex!14825)) )
))
(declare-datatypes ((List!60774 0))(
  ( (Nil!60650) (Cons!60650 (h!67098 Regex!14825) (t!373953 List!60774)) )
))
(declare-datatypes ((Context!8418 0))(
  ( (Context!8419 (exprs!4709 List!60774)) )
))
(declare-fun lt!2145576 () (InoxSet Context!8418))

(declare-fun lt!2145580 () (InoxSet Context!8418))

(assert (=> b!5231798 (= res!2220849 (not (= lt!2145576 lt!2145580)))))

(declare-fun lt!2145567 () (InoxSet Context!8418))

(declare-fun lt!2145591 () (InoxSet Context!8418))

(assert (=> b!5231798 (= lt!2145580 ((_ map or) lt!2145567 lt!2145591))))

(declare-fun r!7292 () Regex!14825)

(declare-datatypes ((List!60775 0))(
  ( (Nil!60651) (Cons!60651 (h!67099 C!29920) (t!373954 List!60775)) )
))
(declare-fun s!2326 () List!60775)

(declare-fun lt!2145585 () Context!8418)

(declare-fun derivationStepZipperDown!273 (Regex!14825 Context!8418 C!29920) (InoxSet Context!8418))

(assert (=> b!5231798 (= lt!2145591 (derivationStepZipperDown!273 (regTwo!30163 (regOne!30162 r!7292)) lt!2145585 (h!67099 s!2326)))))

(assert (=> b!5231798 (= lt!2145567 (derivationStepZipperDown!273 (regOne!30163 (regOne!30162 r!7292)) lt!2145585 (h!67099 s!2326)))))

(declare-fun b!5231799 () Bool)

(declare-fun res!2220834 () Bool)

(declare-fun e!3255806 () Bool)

(assert (=> b!5231799 (=> res!2220834 e!3255806)))

(declare-datatypes ((List!60776 0))(
  ( (Nil!60652) (Cons!60652 (h!67100 Context!8418) (t!373955 List!60776)) )
))
(declare-fun zl!343 () List!60776)

(declare-fun isEmpty!32575 (List!60774) Bool)

(assert (=> b!5231799 (= res!2220834 (isEmpty!32575 (t!373953 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5231800 () Bool)

(declare-fun res!2220838 () Bool)

(declare-fun e!3255809 () Bool)

(assert (=> b!5231800 (=> res!2220838 e!3255809)))

(declare-fun lt!2145561 () Context!8418)

(declare-fun lt!2145574 () Int)

(declare-fun zipperDepthTotal!6 (List!60776) Int)

(assert (=> b!5231800 (= res!2220838 (>= (zipperDepthTotal!6 (Cons!60652 lt!2145561 Nil!60652)) lt!2145574))))

(declare-fun b!5231801 () Bool)

(declare-fun e!3255807 () Bool)

(declare-fun matchZipper!1069 ((InoxSet Context!8418) List!60775) Bool)

(assert (=> b!5231801 (= e!3255807 (not (matchZipper!1069 lt!2145591 (t!373954 s!2326))))))

(declare-fun b!5231802 () Bool)

(declare-fun res!2220830 () Bool)

(declare-fun e!3255799 () Bool)

(assert (=> b!5231802 (=> res!2220830 e!3255799)))

(declare-fun lt!2145562 () Regex!14825)

(assert (=> b!5231802 (= res!2220830 (or (not (= lt!2145562 r!7292)) (not (= (exprs!4709 (h!67100 zl!343)) (Cons!60650 (regOne!30162 r!7292) (t!373953 (exprs!4709 (h!67100 zl!343))))))))))

(declare-fun b!5231803 () Bool)

(declare-fun e!3255803 () Bool)

(declare-fun lt!2145570 () (InoxSet Context!8418))

(assert (=> b!5231803 (= e!3255803 (matchZipper!1069 lt!2145570 (t!373954 s!2326)))))

(declare-fun b!5231805 () Bool)

(declare-fun e!3255798 () Bool)

(assert (=> b!5231805 (= e!3255798 (matchZipper!1069 lt!2145570 (t!373954 s!2326)))))

(declare-fun b!5231806 () Bool)

(declare-datatypes ((Unit!152614 0))(
  ( (Unit!152615) )
))
(declare-fun e!3255793 () Unit!152614)

(declare-fun Unit!152616 () Unit!152614)

(assert (=> b!5231806 (= e!3255793 Unit!152616)))

(declare-fun lt!2145581 () Unit!152614)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!62 ((InoxSet Context!8418) (InoxSet Context!8418) List!60775) Unit!152614)

(assert (=> b!5231806 (= lt!2145581 (lemmaZipperConcatMatchesSameAsBothZippers!62 lt!2145576 lt!2145570 (t!373954 s!2326)))))

(declare-fun res!2220835 () Bool)

(assert (=> b!5231806 (= res!2220835 (matchZipper!1069 lt!2145576 (t!373954 s!2326)))))

(assert (=> b!5231806 (=> res!2220835 e!3255798)))

(assert (=> b!5231806 (= (matchZipper!1069 ((_ map or) lt!2145576 lt!2145570) (t!373954 s!2326)) e!3255798)))

(declare-fun b!5231807 () Bool)

(declare-fun e!3255812 () Unit!152614)

(declare-fun Unit!152617 () Unit!152614)

(assert (=> b!5231807 (= e!3255812 Unit!152617)))

(declare-fun b!5231808 () Bool)

(declare-fun res!2220851 () Bool)

(declare-fun e!3255792 () Bool)

(assert (=> b!5231808 (=> res!2220851 e!3255792)))

(get-info :version)

(assert (=> b!5231808 (= res!2220851 (not ((_ is Cons!60650) (exprs!4709 (h!67100 zl!343)))))))

(assert (=> b!5231809 (= e!3255806 e!3255813)))

(declare-fun res!2220837 () Bool)

(assert (=> b!5231809 (=> res!2220837 e!3255813)))

(assert (=> b!5231809 (= res!2220837 (or (and ((_ is ElementMatch!14825) (regOne!30162 r!7292)) (= (c!903601 (regOne!30162 r!7292)) (h!67099 s!2326))) (not ((_ is Union!14825) (regOne!30162 r!7292)))))))

(declare-fun lt!2145579 () Unit!152614)

(assert (=> b!5231809 (= lt!2145579 e!3255793)))

(declare-fun c!903599 () Bool)

(declare-fun nullable!4994 (Regex!14825) Bool)

(assert (=> b!5231809 (= c!903599 (nullable!4994 (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!8418))

(declare-fun lambda!262854 () Int)

(declare-fun flatMap!552 ((InoxSet Context!8418) Int) (InoxSet Context!8418))

(declare-fun derivationStepZipperUp!197 (Context!8418 C!29920) (InoxSet Context!8418))

(assert (=> b!5231809 (= (flatMap!552 z!1189 lambda!262854) (derivationStepZipperUp!197 (h!67100 zl!343) (h!67099 s!2326)))))

(declare-fun lt!2145563 () Unit!152614)

(declare-fun lemmaFlatMapOnSingletonSet!84 ((InoxSet Context!8418) Context!8418 Int) Unit!152614)

(assert (=> b!5231809 (= lt!2145563 (lemmaFlatMapOnSingletonSet!84 z!1189 (h!67100 zl!343) lambda!262854))))

(assert (=> b!5231809 (= lt!2145570 (derivationStepZipperUp!197 lt!2145585 (h!67099 s!2326)))))

(assert (=> b!5231809 (= lt!2145576 (derivationStepZipperDown!273 (h!67098 (exprs!4709 (h!67100 zl!343))) lt!2145585 (h!67099 s!2326)))))

(assert (=> b!5231809 (= lt!2145585 (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun lt!2145572 () (InoxSet Context!8418))

(assert (=> b!5231809 (= lt!2145572 (derivationStepZipperUp!197 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))) (h!67099 s!2326)))))

(declare-fun b!5231810 () Bool)

(declare-fun Unit!152618 () Unit!152614)

(assert (=> b!5231810 (= e!3255812 Unit!152618)))

(declare-fun lt!2145588 () Unit!152614)

(assert (=> b!5231810 (= lt!2145588 (lemmaZipperConcatMatchesSameAsBothZippers!62 lt!2145567 lt!2145570 (t!373954 s!2326)))))

(declare-fun res!2220847 () Bool)

(declare-fun lt!2145569 () Bool)

(assert (=> b!5231810 (= res!2220847 lt!2145569)))

(assert (=> b!5231810 (=> res!2220847 e!3255803)))

(assert (=> b!5231810 (= (matchZipper!1069 ((_ map or) lt!2145567 lt!2145570) (t!373954 s!2326)) e!3255803)))

(declare-fun b!5231811 () Bool)

(declare-fun e!3255808 () Bool)

(declare-fun tp!1466040 () Bool)

(assert (=> b!5231811 (= e!3255808 tp!1466040)))

(declare-fun b!5231812 () Bool)

(declare-fun e!3255802 () Bool)

(assert (=> b!5231812 (= e!3255802 (matchZipper!1069 lt!2145591 (t!373954 s!2326)))))

(declare-fun b!5231813 () Bool)

(declare-fun Unit!152619 () Unit!152614)

(assert (=> b!5231813 (= e!3255793 Unit!152619)))

(declare-fun b!5231814 () Bool)

(declare-fun e!3255811 () Bool)

(declare-fun lt!2145566 () (InoxSet Context!8418))

(assert (=> b!5231814 (= e!3255811 (matchZipper!1069 lt!2145566 s!2326))))

(declare-fun b!5231815 () Bool)

(declare-fun res!2220846 () Bool)

(assert (=> b!5231815 (=> res!2220846 e!3255792)))

(declare-fun isEmpty!32576 (List!60776) Bool)

(assert (=> b!5231815 (= res!2220846 (not (isEmpty!32576 (t!373955 zl!343))))))

(declare-fun b!5231816 () Bool)

(declare-fun e!3255801 () Bool)

(assert (=> b!5231816 (= e!3255800 e!3255801)))

(declare-fun res!2220842 () Bool)

(assert (=> b!5231816 (=> res!2220842 e!3255801)))

(assert (=> b!5231816 (= res!2220842 e!3255807)))

(declare-fun res!2220844 () Bool)

(assert (=> b!5231816 (=> (not res!2220844) (not e!3255807))))

(assert (=> b!5231816 (= res!2220844 (not (= (matchZipper!1069 lt!2145576 (t!373954 s!2326)) lt!2145569)))))

(assert (=> b!5231816 (= (matchZipper!1069 lt!2145580 (t!373954 s!2326)) e!3255802)))

(declare-fun res!2220845 () Bool)

(assert (=> b!5231816 (=> res!2220845 e!3255802)))

(assert (=> b!5231816 (= res!2220845 lt!2145569)))

(assert (=> b!5231816 (= lt!2145569 (matchZipper!1069 lt!2145567 (t!373954 s!2326)))))

(declare-fun lt!2145571 () Unit!152614)

(assert (=> b!5231816 (= lt!2145571 (lemmaZipperConcatMatchesSameAsBothZippers!62 lt!2145567 lt!2145591 (t!373954 s!2326)))))

(declare-fun b!5231817 () Bool)

(declare-fun tp!1466036 () Bool)

(declare-fun tp!1466041 () Bool)

(assert (=> b!5231817 (= e!3255808 (and tp!1466036 tp!1466041))))

(declare-fun setIsEmpty!33329 () Bool)

(declare-fun setRes!33329 () Bool)

(assert (=> setIsEmpty!33329 setRes!33329))

(declare-fun b!5231818 () Bool)

(declare-fun tp_is_empty!38903 () Bool)

(assert (=> b!5231818 (= e!3255808 tp_is_empty!38903)))

(declare-fun b!5231819 () Bool)

(declare-fun res!2220848 () Bool)

(assert (=> b!5231819 (=> res!2220848 e!3255792)))

(declare-fun generalisedConcat!494 (List!60774) Regex!14825)

(assert (=> b!5231819 (= res!2220848 (not (= r!7292 (generalisedConcat!494 (exprs!4709 (h!67100 zl!343))))))))

(declare-fun b!5231820 () Bool)

(declare-fun e!3255805 () Bool)

(assert (=> b!5231820 (= e!3255805 (not e!3255792))))

(declare-fun res!2220850 () Bool)

(assert (=> b!5231820 (=> res!2220850 e!3255792)))

(assert (=> b!5231820 (= res!2220850 (not ((_ is Cons!60652) zl!343)))))

(declare-fun lt!2145590 () Bool)

(declare-fun matchRSpec!1928 (Regex!14825 List!60775) Bool)

(assert (=> b!5231820 (= lt!2145590 (matchRSpec!1928 r!7292 s!2326))))

(declare-fun matchR!7010 (Regex!14825 List!60775) Bool)

(assert (=> b!5231820 (= lt!2145590 (matchR!7010 r!7292 s!2326))))

(declare-fun lt!2145583 () Unit!152614)

(declare-fun mainMatchTheorem!1928 (Regex!14825 List!60775) Unit!152614)

(assert (=> b!5231820 (= lt!2145583 (mainMatchTheorem!1928 r!7292 s!2326))))

(declare-fun b!5231821 () Bool)

(declare-fun res!2220829 () Bool)

(assert (=> b!5231821 (=> res!2220829 e!3255792)))

(assert (=> b!5231821 (= res!2220829 (or ((_ is EmptyExpr!14825) r!7292) ((_ is EmptyLang!14825) r!7292) ((_ is ElementMatch!14825) r!7292) ((_ is Union!14825) r!7292) (not ((_ is Concat!23670) r!7292))))))

(declare-fun b!5231822 () Bool)

(declare-fun e!3255794 () Bool)

(declare-fun tp!1466037 () Bool)

(assert (=> b!5231822 (= e!3255794 tp!1466037)))

(declare-fun b!5231823 () Bool)

(declare-fun e!3255795 () Unit!152614)

(declare-fun Unit!152620 () Unit!152614)

(assert (=> b!5231823 (= e!3255795 Unit!152620)))

(declare-fun lt!2145577 () Unit!152614)

(assert (=> b!5231823 (= lt!2145577 (lemmaZipperConcatMatchesSameAsBothZippers!62 lt!2145591 lt!2145570 (t!373954 s!2326)))))

(declare-fun res!2220841 () Bool)

(assert (=> b!5231823 (= res!2220841 (matchZipper!1069 lt!2145591 (t!373954 s!2326)))))

(declare-fun e!3255814 () Bool)

(assert (=> b!5231823 (=> res!2220841 e!3255814)))

(assert (=> b!5231823 (= (matchZipper!1069 ((_ map or) lt!2145591 lt!2145570) (t!373954 s!2326)) e!3255814)))

(declare-fun b!5231824 () Bool)

(declare-fun res!2220836 () Bool)

(declare-fun e!3255804 () Bool)

(assert (=> b!5231824 (=> (not res!2220836) (not e!3255804))))

(declare-fun toList!8609 ((InoxSet Context!8418)) List!60776)

(assert (=> b!5231824 (= res!2220836 (= (toList!8609 z!1189) zl!343))))

(declare-fun b!5231825 () Bool)

(declare-fun lt!2145584 () List!60774)

(declare-fun lambda!262855 () Int)

(declare-fun forall!14255 (List!60774 Int) Bool)

(assert (=> b!5231825 (= e!3255809 (forall!14255 lt!2145584 lambda!262855))))

(declare-fun lt!2145560 () Regex!14825)

(declare-fun lt!2145586 () Bool)

(assert (=> b!5231825 (= (matchR!7010 lt!2145560 s!2326) lt!2145586)))

(declare-fun lt!2145596 () Unit!152614)

(declare-fun lt!2145587 () (InoxSet Context!8418))

(declare-fun lt!2145578 () List!60776)

(declare-fun theoremZipperRegexEquiv!259 ((InoxSet Context!8418) List!60776 Regex!14825 List!60775) Unit!152614)

(assert (=> b!5231825 (= lt!2145596 (theoremZipperRegexEquiv!259 lt!2145587 lt!2145578 lt!2145560 s!2326))))

(declare-fun lt!2145568 () List!60774)

(assert (=> b!5231825 (= lt!2145560 (generalisedConcat!494 lt!2145568))))

(declare-fun b!5231826 () Bool)

(assert (=> b!5231826 (= e!3255804 e!3255805)))

(declare-fun res!2220843 () Bool)

(assert (=> b!5231826 (=> (not res!2220843) (not e!3255805))))

(assert (=> b!5231826 (= res!2220843 (= r!7292 lt!2145562))))

(declare-fun unfocusZipper!567 (List!60776) Regex!14825)

(assert (=> b!5231826 (= lt!2145562 (unfocusZipper!567 zl!343))))

(declare-fun e!3255810 () Bool)

(declare-fun e!3255797 () Bool)

(declare-fun tp!1466042 () Bool)

(declare-fun b!5231827 () Bool)

(declare-fun inv!80309 (Context!8418) Bool)

(assert (=> b!5231827 (= e!3255797 (and (inv!80309 (h!67100 zl!343)) e!3255810 tp!1466042))))

(declare-fun b!5231828 () Bool)

(assert (=> b!5231828 (= e!3255799 e!3255809)))

(declare-fun res!2220833 () Bool)

(assert (=> b!5231828 (=> res!2220833 e!3255809)))

(declare-fun lt!2145573 () Int)

(assert (=> b!5231828 (= res!2220833 (>= lt!2145573 lt!2145574))))

(assert (=> b!5231828 (= lt!2145574 (zipperDepthTotal!6 zl!343))))

(assert (=> b!5231828 (= lt!2145573 (zipperDepthTotal!6 lt!2145578))))

(declare-fun lt!2145593 () Context!8418)

(assert (=> b!5231828 (= lt!2145578 (Cons!60652 lt!2145593 Nil!60652))))

(declare-fun b!5231829 () Bool)

(assert (=> b!5231829 (= e!3255814 (matchZipper!1069 lt!2145570 (t!373954 s!2326)))))

(declare-fun tp!1466043 () Bool)

(declare-fun setNonEmpty!33329 () Bool)

(declare-fun setElem!33329 () Context!8418)

(assert (=> setNonEmpty!33329 (= setRes!33329 (and tp!1466043 (inv!80309 setElem!33329) e!3255794))))

(declare-fun setRest!33329 () (InoxSet Context!8418))

(assert (=> setNonEmpty!33329 (= z!1189 ((_ map or) (store ((as const (Array Context!8418 Bool)) false) setElem!33329 true) setRest!33329))))

(declare-fun b!5231830 () Bool)

(declare-fun res!2220839 () Bool)

(assert (=> b!5231830 (=> res!2220839 e!3255792)))

(declare-fun generalisedUnion!754 (List!60774) Regex!14825)

(declare-fun unfocusZipperList!267 (List!60776) List!60774)

(assert (=> b!5231830 (= res!2220839 (not (= r!7292 (generalisedUnion!754 (unfocusZipperList!267 zl!343)))))))

(declare-fun b!5231831 () Bool)

(declare-fun tp!1466044 () Bool)

(declare-fun tp!1466045 () Bool)

(assert (=> b!5231831 (= e!3255808 (and tp!1466044 tp!1466045))))

(declare-fun b!5231832 () Bool)

(declare-fun e!3255796 () Bool)

(declare-fun tp!1466039 () Bool)

(assert (=> b!5231832 (= e!3255796 (and tp_is_empty!38903 tp!1466039))))

(assert (=> b!5231833 (= e!3255792 e!3255806)))

(declare-fun res!2220828 () Bool)

(assert (=> b!5231833 (=> res!2220828 e!3255806)))

(declare-fun lt!2145589 () Bool)

(assert (=> b!5231833 (= res!2220828 (or (not (= lt!2145590 lt!2145589)) ((_ is Nil!60651) s!2326)))))

(declare-fun Exists!2006 (Int) Bool)

(assert (=> b!5231833 (= (Exists!2006 lambda!262852) (Exists!2006 lambda!262853))))

(declare-fun lt!2145595 () Unit!152614)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!660 (Regex!14825 Regex!14825 List!60775) Unit!152614)

(assert (=> b!5231833 (= lt!2145595 (lemmaExistCutMatchRandMatchRSpecEquivalent!660 (regOne!30162 r!7292) (regTwo!30162 r!7292) s!2326))))

(assert (=> b!5231833 (= lt!2145589 (Exists!2006 lambda!262852))))

(declare-datatypes ((tuple2!64048 0))(
  ( (tuple2!64049 (_1!35327 List!60775) (_2!35327 List!60775)) )
))
(declare-datatypes ((Option!14936 0))(
  ( (None!14935) (Some!14935 (v!50964 tuple2!64048)) )
))
(declare-fun isDefined!11639 (Option!14936) Bool)

(declare-fun findConcatSeparation!1350 (Regex!14825 Regex!14825 List!60775 List!60775 List!60775) Option!14936)

(assert (=> b!5231833 (= lt!2145589 (isDefined!11639 (findConcatSeparation!1350 (regOne!30162 r!7292) (regTwo!30162 r!7292) Nil!60651 s!2326 s!2326)))))

(declare-fun lt!2145559 () Unit!152614)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1114 (Regex!14825 Regex!14825 List!60775) Unit!152614)

(assert (=> b!5231833 (= lt!2145559 (lemmaFindConcatSeparationEquivalentToExists!1114 (regOne!30162 r!7292) (regTwo!30162 r!7292) s!2326))))

(declare-fun res!2220832 () Bool)

(assert (=> start!553222 (=> (not res!2220832) (not e!3255804))))

(declare-fun validRegex!6561 (Regex!14825) Bool)

(assert (=> start!553222 (= res!2220832 (validRegex!6561 r!7292))))

(assert (=> start!553222 e!3255804))

(assert (=> start!553222 e!3255808))

(declare-fun condSetEmpty!33329 () Bool)

(assert (=> start!553222 (= condSetEmpty!33329 (= z!1189 ((as const (Array Context!8418 Bool)) false)))))

(assert (=> start!553222 setRes!33329))

(assert (=> start!553222 e!3255797))

(assert (=> start!553222 e!3255796))

(declare-fun b!5231804 () Bool)

(declare-fun tp!1466038 () Bool)

(assert (=> b!5231804 (= e!3255810 tp!1466038)))

(declare-fun b!5231834 () Bool)

(assert (=> b!5231834 (= e!3255801 e!3255799)))

(declare-fun res!2220840 () Bool)

(assert (=> b!5231834 (=> res!2220840 e!3255799)))

(assert (=> b!5231834 (= res!2220840 (not (= (matchZipper!1069 z!1189 s!2326) e!3255811)))))

(declare-fun res!2220831 () Bool)

(assert (=> b!5231834 (=> res!2220831 e!3255811)))

(assert (=> b!5231834 (= res!2220831 lt!2145586)))

(assert (=> b!5231834 (= lt!2145586 (matchZipper!1069 lt!2145587 s!2326))))

(declare-fun lt!2145592 () Unit!152614)

(assert (=> b!5231834 (= lt!2145592 e!3255795)))

(declare-fun c!903598 () Bool)

(assert (=> b!5231834 (= c!903598 (nullable!4994 (regTwo!30163 (regOne!30162 r!7292))))))

(assert (=> b!5231834 (= (flatMap!552 lt!2145566 lambda!262854) (derivationStepZipperUp!197 lt!2145561 (h!67099 s!2326)))))

(declare-fun lt!2145594 () Unit!152614)

(assert (=> b!5231834 (= lt!2145594 (lemmaFlatMapOnSingletonSet!84 lt!2145566 lt!2145561 lambda!262854))))

(declare-fun lt!2145565 () (InoxSet Context!8418))

(assert (=> b!5231834 (= lt!2145565 (derivationStepZipperUp!197 lt!2145561 (h!67099 s!2326)))))

(declare-fun lt!2145582 () Unit!152614)

(assert (=> b!5231834 (= lt!2145582 e!3255812)))

(declare-fun c!903600 () Bool)

(assert (=> b!5231834 (= c!903600 (nullable!4994 (regOne!30163 (regOne!30162 r!7292))))))

(assert (=> b!5231834 (= (flatMap!552 lt!2145587 lambda!262854) (derivationStepZipperUp!197 lt!2145593 (h!67099 s!2326)))))

(declare-fun lt!2145575 () Unit!152614)

(assert (=> b!5231834 (= lt!2145575 (lemmaFlatMapOnSingletonSet!84 lt!2145587 lt!2145593 lambda!262854))))

(declare-fun lt!2145564 () (InoxSet Context!8418))

(assert (=> b!5231834 (= lt!2145564 (derivationStepZipperUp!197 lt!2145593 (h!67099 s!2326)))))

(assert (=> b!5231834 (= lt!2145566 (store ((as const (Array Context!8418 Bool)) false) lt!2145561 true))))

(assert (=> b!5231834 (= lt!2145561 (Context!8419 lt!2145584))))

(assert (=> b!5231834 (= lt!2145584 (Cons!60650 (regTwo!30163 (regOne!30162 r!7292)) (t!373953 (exprs!4709 (h!67100 zl!343)))))))

(assert (=> b!5231834 (= lt!2145587 (store ((as const (Array Context!8418 Bool)) false) lt!2145593 true))))

(assert (=> b!5231834 (= lt!2145593 (Context!8419 lt!2145568))))

(assert (=> b!5231834 (= lt!2145568 (Cons!60650 (regOne!30163 (regOne!30162 r!7292)) (t!373953 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5231835 () Bool)

(declare-fun Unit!152621 () Unit!152614)

(assert (=> b!5231835 (= e!3255795 Unit!152621)))

(assert (= (and start!553222 res!2220832) b!5231824))

(assert (= (and b!5231824 res!2220836) b!5231826))

(assert (= (and b!5231826 res!2220843) b!5231820))

(assert (= (and b!5231820 (not res!2220850)) b!5231815))

(assert (= (and b!5231815 (not res!2220846)) b!5231819))

(assert (= (and b!5231819 (not res!2220848)) b!5231808))

(assert (= (and b!5231808 (not res!2220851)) b!5231830))

(assert (= (and b!5231830 (not res!2220839)) b!5231821))

(assert (= (and b!5231821 (not res!2220829)) b!5231833))

(assert (= (and b!5231833 (not res!2220828)) b!5231799))

(assert (= (and b!5231799 (not res!2220834)) b!5231809))

(assert (= (and b!5231809 c!903599) b!5231806))

(assert (= (and b!5231809 (not c!903599)) b!5231813))

(assert (= (and b!5231806 (not res!2220835)) b!5231805))

(assert (= (and b!5231809 (not res!2220837)) b!5231798))

(assert (= (and b!5231798 (not res!2220849)) b!5231816))

(assert (= (and b!5231816 (not res!2220845)) b!5231812))

(assert (= (and b!5231816 res!2220844) b!5231801))

(assert (= (and b!5231816 (not res!2220842)) b!5231834))

(assert (= (and b!5231834 c!903600) b!5231810))

(assert (= (and b!5231834 (not c!903600)) b!5231807))

(assert (= (and b!5231810 (not res!2220847)) b!5231803))

(assert (= (and b!5231834 c!903598) b!5231823))

(assert (= (and b!5231834 (not c!903598)) b!5231835))

(assert (= (and b!5231823 (not res!2220841)) b!5231829))

(assert (= (and b!5231834 (not res!2220831)) b!5231814))

(assert (= (and b!5231834 (not res!2220840)) b!5231802))

(assert (= (and b!5231802 (not res!2220830)) b!5231828))

(assert (= (and b!5231828 (not res!2220833)) b!5231800))

(assert (= (and b!5231800 (not res!2220838)) b!5231825))

(assert (= (and start!553222 ((_ is ElementMatch!14825) r!7292)) b!5231818))

(assert (= (and start!553222 ((_ is Concat!23670) r!7292)) b!5231831))

(assert (= (and start!553222 ((_ is Star!14825) r!7292)) b!5231811))

(assert (= (and start!553222 ((_ is Union!14825) r!7292)) b!5231817))

(assert (= (and start!553222 condSetEmpty!33329) setIsEmpty!33329))

(assert (= (and start!553222 (not condSetEmpty!33329)) setNonEmpty!33329))

(assert (= setNonEmpty!33329 b!5231822))

(assert (= b!5231827 b!5231804))

(assert (= (and start!553222 ((_ is Cons!60652) zl!343)) b!5231827))

(assert (= (and start!553222 ((_ is Cons!60651) s!2326)) b!5231832))

(declare-fun m!6277524 () Bool)

(assert (=> b!5231824 m!6277524))

(declare-fun m!6277526 () Bool)

(assert (=> start!553222 m!6277526))

(declare-fun m!6277528 () Bool)

(assert (=> b!5231833 m!6277528))

(declare-fun m!6277530 () Bool)

(assert (=> b!5231833 m!6277530))

(declare-fun m!6277532 () Bool)

(assert (=> b!5231833 m!6277532))

(assert (=> b!5231833 m!6277532))

(declare-fun m!6277534 () Bool)

(assert (=> b!5231833 m!6277534))

(declare-fun m!6277536 () Bool)

(assert (=> b!5231833 m!6277536))

(assert (=> b!5231833 m!6277528))

(declare-fun m!6277538 () Bool)

(assert (=> b!5231833 m!6277538))

(declare-fun m!6277540 () Bool)

(assert (=> b!5231820 m!6277540))

(declare-fun m!6277542 () Bool)

(assert (=> b!5231820 m!6277542))

(declare-fun m!6277544 () Bool)

(assert (=> b!5231820 m!6277544))

(declare-fun m!6277546 () Bool)

(assert (=> b!5231803 m!6277546))

(declare-fun m!6277548 () Bool)

(assert (=> b!5231819 m!6277548))

(declare-fun m!6277550 () Bool)

(assert (=> b!5231834 m!6277550))

(declare-fun m!6277552 () Bool)

(assert (=> b!5231834 m!6277552))

(declare-fun m!6277554 () Bool)

(assert (=> b!5231834 m!6277554))

(declare-fun m!6277556 () Bool)

(assert (=> b!5231834 m!6277556))

(declare-fun m!6277558 () Bool)

(assert (=> b!5231834 m!6277558))

(declare-fun m!6277560 () Bool)

(assert (=> b!5231834 m!6277560))

(declare-fun m!6277562 () Bool)

(assert (=> b!5231834 m!6277562))

(declare-fun m!6277564 () Bool)

(assert (=> b!5231834 m!6277564))

(declare-fun m!6277566 () Bool)

(assert (=> b!5231834 m!6277566))

(declare-fun m!6277568 () Bool)

(assert (=> b!5231834 m!6277568))

(declare-fun m!6277570 () Bool)

(assert (=> b!5231834 m!6277570))

(declare-fun m!6277572 () Bool)

(assert (=> b!5231834 m!6277572))

(declare-fun m!6277574 () Bool)

(assert (=> b!5231826 m!6277574))

(declare-fun m!6277576 () Bool)

(assert (=> b!5231800 m!6277576))

(declare-fun m!6277578 () Bool)

(assert (=> b!5231816 m!6277578))

(declare-fun m!6277580 () Bool)

(assert (=> b!5231816 m!6277580))

(declare-fun m!6277582 () Bool)

(assert (=> b!5231816 m!6277582))

(declare-fun m!6277584 () Bool)

(assert (=> b!5231816 m!6277584))

(declare-fun m!6277586 () Bool)

(assert (=> b!5231823 m!6277586))

(declare-fun m!6277588 () Bool)

(assert (=> b!5231823 m!6277588))

(declare-fun m!6277590 () Bool)

(assert (=> b!5231823 m!6277590))

(assert (=> b!5231801 m!6277588))

(declare-fun m!6277592 () Bool)

(assert (=> b!5231806 m!6277592))

(assert (=> b!5231806 m!6277578))

(declare-fun m!6277594 () Bool)

(assert (=> b!5231806 m!6277594))

(declare-fun m!6277596 () Bool)

(assert (=> b!5231815 m!6277596))

(declare-fun m!6277598 () Bool)

(assert (=> b!5231825 m!6277598))

(declare-fun m!6277600 () Bool)

(assert (=> b!5231825 m!6277600))

(declare-fun m!6277602 () Bool)

(assert (=> b!5231825 m!6277602))

(declare-fun m!6277604 () Bool)

(assert (=> b!5231825 m!6277604))

(declare-fun m!6277606 () Bool)

(assert (=> setNonEmpty!33329 m!6277606))

(assert (=> b!5231812 m!6277588))

(declare-fun m!6277608 () Bool)

(assert (=> b!5231828 m!6277608))

(declare-fun m!6277610 () Bool)

(assert (=> b!5231828 m!6277610))

(declare-fun m!6277612 () Bool)

(assert (=> b!5231799 m!6277612))

(declare-fun m!6277614 () Bool)

(assert (=> b!5231809 m!6277614))

(declare-fun m!6277616 () Bool)

(assert (=> b!5231809 m!6277616))

(declare-fun m!6277618 () Bool)

(assert (=> b!5231809 m!6277618))

(declare-fun m!6277620 () Bool)

(assert (=> b!5231809 m!6277620))

(declare-fun m!6277622 () Bool)

(assert (=> b!5231809 m!6277622))

(declare-fun m!6277624 () Bool)

(assert (=> b!5231809 m!6277624))

(declare-fun m!6277626 () Bool)

(assert (=> b!5231809 m!6277626))

(assert (=> b!5231805 m!6277546))

(assert (=> b!5231829 m!6277546))

(declare-fun m!6277628 () Bool)

(assert (=> b!5231830 m!6277628))

(assert (=> b!5231830 m!6277628))

(declare-fun m!6277630 () Bool)

(assert (=> b!5231830 m!6277630))

(declare-fun m!6277632 () Bool)

(assert (=> b!5231798 m!6277632))

(declare-fun m!6277634 () Bool)

(assert (=> b!5231798 m!6277634))

(declare-fun m!6277636 () Bool)

(assert (=> b!5231810 m!6277636))

(declare-fun m!6277638 () Bool)

(assert (=> b!5231810 m!6277638))

(declare-fun m!6277640 () Bool)

(assert (=> b!5231827 m!6277640))

(declare-fun m!6277642 () Bool)

(assert (=> b!5231814 m!6277642))

(check-sat (not b!5231815) (not b!5231827) (not start!553222) (not b!5231831) (not b!5231817) (not b!5231799) (not b!5231832) (not b!5231820) (not b!5231810) (not b!5231806) (not b!5231826) (not b!5231828) (not b!5231834) (not b!5231833) (not b!5231804) (not b!5231809) (not b!5231800) (not b!5231816) (not b!5231825) (not b!5231814) (not b!5231819) (not b!5231824) (not b!5231803) (not b!5231812) tp_is_empty!38903 (not b!5231823) (not b!5231830) (not b!5231798) (not b!5231822) (not b!5231805) (not b!5231801) (not b!5231811) (not b!5231829) (not setNonEmpty!33329))
(check-sat)
(get-model)

(declare-fun bs!1214566 () Bool)

(declare-fun d!1686658 () Bool)

(assert (= bs!1214566 (and d!1686658 b!5231825)))

(declare-fun lambda!262886 () Int)

(assert (=> bs!1214566 (= lambda!262886 lambda!262855)))

(declare-fun b!5232241 () Bool)

(declare-fun e!3256050 () Bool)

(declare-fun e!3256048 () Bool)

(assert (=> b!5232241 (= e!3256050 e!3256048)))

(declare-fun c!903737 () Bool)

(declare-fun tail!10308 (List!60774) List!60774)

(assert (=> b!5232241 (= c!903737 (isEmpty!32575 (tail!10308 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5232242 () Bool)

(declare-fun lt!2145653 () Regex!14825)

(declare-fun isConcat!305 (Regex!14825) Bool)

(assert (=> b!5232242 (= e!3256048 (isConcat!305 lt!2145653))))

(declare-fun b!5232243 () Bool)

(declare-fun e!3256051 () Regex!14825)

(assert (=> b!5232243 (= e!3256051 (h!67098 (exprs!4709 (h!67100 zl!343))))))

(declare-fun b!5232244 () Bool)

(declare-fun e!3256053 () Bool)

(assert (=> b!5232244 (= e!3256053 (isEmpty!32575 (t!373953 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5232245 () Bool)

(declare-fun e!3256049 () Regex!14825)

(assert (=> b!5232245 (= e!3256051 e!3256049)))

(declare-fun c!903736 () Bool)

(assert (=> b!5232245 (= c!903736 ((_ is Cons!60650) (exprs!4709 (h!67100 zl!343))))))

(declare-fun b!5232246 () Bool)

(assert (=> b!5232246 (= e!3256049 EmptyExpr!14825)))

(declare-fun e!3256052 () Bool)

(assert (=> d!1686658 e!3256052))

(declare-fun res!2220987 () Bool)

(assert (=> d!1686658 (=> (not res!2220987) (not e!3256052))))

(assert (=> d!1686658 (= res!2220987 (validRegex!6561 lt!2145653))))

(assert (=> d!1686658 (= lt!2145653 e!3256051)))

(declare-fun c!903734 () Bool)

(assert (=> d!1686658 (= c!903734 e!3256053)))

(declare-fun res!2220988 () Bool)

(assert (=> d!1686658 (=> (not res!2220988) (not e!3256053))))

(assert (=> d!1686658 (= res!2220988 ((_ is Cons!60650) (exprs!4709 (h!67100 zl!343))))))

(assert (=> d!1686658 (forall!14255 (exprs!4709 (h!67100 zl!343)) lambda!262886)))

(assert (=> d!1686658 (= (generalisedConcat!494 (exprs!4709 (h!67100 zl!343))) lt!2145653)))

(declare-fun b!5232247 () Bool)

(declare-fun isEmptyExpr!782 (Regex!14825) Bool)

(assert (=> b!5232247 (= e!3256050 (isEmptyExpr!782 lt!2145653))))

(declare-fun b!5232248 () Bool)

(declare-fun head!11211 (List!60774) Regex!14825)

(assert (=> b!5232248 (= e!3256048 (= lt!2145653 (head!11211 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5232249 () Bool)

(assert (=> b!5232249 (= e!3256052 e!3256050)))

(declare-fun c!903735 () Bool)

(assert (=> b!5232249 (= c!903735 (isEmpty!32575 (exprs!4709 (h!67100 zl!343))))))

(declare-fun b!5232250 () Bool)

(assert (=> b!5232250 (= e!3256049 (Concat!23670 (h!67098 (exprs!4709 (h!67100 zl!343))) (generalisedConcat!494 (t!373953 (exprs!4709 (h!67100 zl!343))))))))

(assert (= (and d!1686658 res!2220988) b!5232244))

(assert (= (and d!1686658 c!903734) b!5232243))

(assert (= (and d!1686658 (not c!903734)) b!5232245))

(assert (= (and b!5232245 c!903736) b!5232250))

(assert (= (and b!5232245 (not c!903736)) b!5232246))

(assert (= (and d!1686658 res!2220987) b!5232249))

(assert (= (and b!5232249 c!903735) b!5232247))

(assert (= (and b!5232249 (not c!903735)) b!5232241))

(assert (= (and b!5232241 c!903737) b!5232248))

(assert (= (and b!5232241 (not c!903737)) b!5232242))

(declare-fun m!6277972 () Bool)

(assert (=> b!5232241 m!6277972))

(assert (=> b!5232241 m!6277972))

(declare-fun m!6277974 () Bool)

(assert (=> b!5232241 m!6277974))

(declare-fun m!6277976 () Bool)

(assert (=> b!5232249 m!6277976))

(declare-fun m!6277978 () Bool)

(assert (=> d!1686658 m!6277978))

(declare-fun m!6277980 () Bool)

(assert (=> d!1686658 m!6277980))

(assert (=> b!5232244 m!6277612))

(declare-fun m!6277982 () Bool)

(assert (=> b!5232247 m!6277982))

(declare-fun m!6277984 () Bool)

(assert (=> b!5232248 m!6277984))

(declare-fun m!6277986 () Bool)

(assert (=> b!5232250 m!6277986))

(declare-fun m!6277988 () Bool)

(assert (=> b!5232242 m!6277988))

(assert (=> b!5231819 d!1686658))

(declare-fun b!5232330 () Bool)

(declare-fun e!3256096 () (InoxSet Context!8418))

(declare-fun e!3256097 () (InoxSet Context!8418))

(assert (=> b!5232330 (= e!3256096 e!3256097)))

(declare-fun c!903750 () Bool)

(assert (=> b!5232330 (= c!903750 ((_ is Concat!23670) (regTwo!30163 (regOne!30162 r!7292))))))

(declare-fun b!5232331 () Bool)

(declare-fun call!370087 () (InoxSet Context!8418))

(assert (=> b!5232331 (= e!3256097 call!370087)))

(declare-fun bm!370082 () Bool)

(declare-fun call!370088 () (InoxSet Context!8418))

(declare-fun call!370092 () (InoxSet Context!8418))

(assert (=> bm!370082 (= call!370088 call!370092)))

(declare-fun d!1686678 () Bool)

(declare-fun c!903752 () Bool)

(assert (=> d!1686678 (= c!903752 (and ((_ is ElementMatch!14825) (regTwo!30163 (regOne!30162 r!7292))) (= (c!903601 (regTwo!30163 (regOne!30162 r!7292))) (h!67099 s!2326))))))

(declare-fun e!3256092 () (InoxSet Context!8418))

(assert (=> d!1686678 (= (derivationStepZipperDown!273 (regTwo!30163 (regOne!30162 r!7292)) lt!2145585 (h!67099 s!2326)) e!3256092)))

(declare-fun b!5232332 () Bool)

(declare-fun c!903749 () Bool)

(assert (=> b!5232332 (= c!903749 ((_ is Star!14825) (regTwo!30163 (regOne!30162 r!7292))))))

(declare-fun e!3256094 () (InoxSet Context!8418))

(assert (=> b!5232332 (= e!3256097 e!3256094)))

(declare-fun b!5232333 () Bool)

(declare-fun c!903748 () Bool)

(declare-fun e!3256095 () Bool)

(assert (=> b!5232333 (= c!903748 e!3256095)))

(declare-fun res!2220994 () Bool)

(assert (=> b!5232333 (=> (not res!2220994) (not e!3256095))))

(assert (=> b!5232333 (= res!2220994 ((_ is Concat!23670) (regTwo!30163 (regOne!30162 r!7292))))))

(declare-fun e!3256093 () (InoxSet Context!8418))

(assert (=> b!5232333 (= e!3256093 e!3256096)))

(declare-fun b!5232334 () Bool)

(assert (=> b!5232334 (= e!3256092 (store ((as const (Array Context!8418 Bool)) false) lt!2145585 true))))

(declare-fun b!5232335 () Bool)

(declare-fun call!370091 () (InoxSet Context!8418))

(assert (=> b!5232335 (= e!3256096 ((_ map or) call!370091 call!370088))))

(declare-fun call!370089 () List!60774)

(declare-fun bm!370083 () Bool)

(declare-fun $colon$colon!1296 (List!60774 Regex!14825) List!60774)

(assert (=> bm!370083 (= call!370089 ($colon$colon!1296 (exprs!4709 lt!2145585) (ite (or c!903748 c!903750) (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (regTwo!30163 (regOne!30162 r!7292)))))))

(declare-fun b!5232336 () Bool)

(assert (=> b!5232336 (= e!3256095 (nullable!4994 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292)))))))

(declare-fun b!5232337 () Bool)

(assert (=> b!5232337 (= e!3256092 e!3256093)))

(declare-fun c!903751 () Bool)

(assert (=> b!5232337 (= c!903751 ((_ is Union!14825) (regTwo!30163 (regOne!30162 r!7292))))))

(declare-fun b!5232338 () Bool)

(assert (=> b!5232338 (= e!3256093 ((_ map or) call!370092 call!370091))))

(declare-fun b!5232339 () Bool)

(assert (=> b!5232339 (= e!3256094 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5232340 () Bool)

(assert (=> b!5232340 (= e!3256094 call!370087)))

(declare-fun call!370090 () List!60774)

(declare-fun bm!370084 () Bool)

(assert (=> bm!370084 (= call!370092 (derivationStepZipperDown!273 (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292)))))) (ite (or c!903751 c!903748) lt!2145585 (Context!8419 call!370090)) (h!67099 s!2326)))))

(declare-fun bm!370085 () Bool)

(assert (=> bm!370085 (= call!370090 call!370089)))

(declare-fun bm!370086 () Bool)

(assert (=> bm!370086 (= call!370087 call!370088)))

(declare-fun bm!370087 () Bool)

(assert (=> bm!370087 (= call!370091 (derivationStepZipperDown!273 (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292)))) (ite c!903751 lt!2145585 (Context!8419 call!370089)) (h!67099 s!2326)))))

(assert (= (and d!1686678 c!903752) b!5232334))

(assert (= (and d!1686678 (not c!903752)) b!5232337))

(assert (= (and b!5232337 c!903751) b!5232338))

(assert (= (and b!5232337 (not c!903751)) b!5232333))

(assert (= (and b!5232333 res!2220994) b!5232336))

(assert (= (and b!5232333 c!903748) b!5232335))

(assert (= (and b!5232333 (not c!903748)) b!5232330))

(assert (= (and b!5232330 c!903750) b!5232331))

(assert (= (and b!5232330 (not c!903750)) b!5232332))

(assert (= (and b!5232332 c!903749) b!5232340))

(assert (= (and b!5232332 (not c!903749)) b!5232339))

(assert (= (or b!5232331 b!5232340) bm!370085))

(assert (= (or b!5232331 b!5232340) bm!370086))

(assert (= (or b!5232335 bm!370085) bm!370083))

(assert (= (or b!5232335 bm!370086) bm!370082))

(assert (= (or b!5232338 b!5232335) bm!370087))

(assert (= (or b!5232338 bm!370082) bm!370084))

(declare-fun m!6277998 () Bool)

(assert (=> b!5232334 m!6277998))

(declare-fun m!6278000 () Bool)

(assert (=> b!5232336 m!6278000))

(declare-fun m!6278002 () Bool)

(assert (=> bm!370087 m!6278002))

(declare-fun m!6278004 () Bool)

(assert (=> bm!370083 m!6278004))

(declare-fun m!6278006 () Bool)

(assert (=> bm!370084 m!6278006))

(assert (=> b!5231798 d!1686678))

(declare-fun b!5232341 () Bool)

(declare-fun e!3256102 () (InoxSet Context!8418))

(declare-fun e!3256103 () (InoxSet Context!8418))

(assert (=> b!5232341 (= e!3256102 e!3256103)))

(declare-fun c!903755 () Bool)

(assert (=> b!5232341 (= c!903755 ((_ is Concat!23670) (regOne!30163 (regOne!30162 r!7292))))))

(declare-fun b!5232342 () Bool)

(declare-fun call!370093 () (InoxSet Context!8418))

(assert (=> b!5232342 (= e!3256103 call!370093)))

(declare-fun bm!370088 () Bool)

(declare-fun call!370094 () (InoxSet Context!8418))

(declare-fun call!370098 () (InoxSet Context!8418))

(assert (=> bm!370088 (= call!370094 call!370098)))

(declare-fun d!1686688 () Bool)

(declare-fun c!903757 () Bool)

(assert (=> d!1686688 (= c!903757 (and ((_ is ElementMatch!14825) (regOne!30163 (regOne!30162 r!7292))) (= (c!903601 (regOne!30163 (regOne!30162 r!7292))) (h!67099 s!2326))))))

(declare-fun e!3256098 () (InoxSet Context!8418))

(assert (=> d!1686688 (= (derivationStepZipperDown!273 (regOne!30163 (regOne!30162 r!7292)) lt!2145585 (h!67099 s!2326)) e!3256098)))

(declare-fun b!5232343 () Bool)

(declare-fun c!903754 () Bool)

(assert (=> b!5232343 (= c!903754 ((_ is Star!14825) (regOne!30163 (regOne!30162 r!7292))))))

(declare-fun e!3256100 () (InoxSet Context!8418))

(assert (=> b!5232343 (= e!3256103 e!3256100)))

(declare-fun b!5232344 () Bool)

(declare-fun c!903753 () Bool)

(declare-fun e!3256101 () Bool)

(assert (=> b!5232344 (= c!903753 e!3256101)))

(declare-fun res!2220995 () Bool)

(assert (=> b!5232344 (=> (not res!2220995) (not e!3256101))))

(assert (=> b!5232344 (= res!2220995 ((_ is Concat!23670) (regOne!30163 (regOne!30162 r!7292))))))

(declare-fun e!3256099 () (InoxSet Context!8418))

(assert (=> b!5232344 (= e!3256099 e!3256102)))

(declare-fun b!5232345 () Bool)

(assert (=> b!5232345 (= e!3256098 (store ((as const (Array Context!8418 Bool)) false) lt!2145585 true))))

(declare-fun b!5232346 () Bool)

(declare-fun call!370097 () (InoxSet Context!8418))

(assert (=> b!5232346 (= e!3256102 ((_ map or) call!370097 call!370094))))

(declare-fun call!370095 () List!60774)

(declare-fun bm!370089 () Bool)

(assert (=> bm!370089 (= call!370095 ($colon$colon!1296 (exprs!4709 lt!2145585) (ite (or c!903753 c!903755) (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (regOne!30163 (regOne!30162 r!7292)))))))

(declare-fun b!5232347 () Bool)

(assert (=> b!5232347 (= e!3256101 (nullable!4994 (regOne!30162 (regOne!30163 (regOne!30162 r!7292)))))))

(declare-fun b!5232348 () Bool)

(assert (=> b!5232348 (= e!3256098 e!3256099)))

(declare-fun c!903756 () Bool)

(assert (=> b!5232348 (= c!903756 ((_ is Union!14825) (regOne!30163 (regOne!30162 r!7292))))))

(declare-fun b!5232349 () Bool)

(assert (=> b!5232349 (= e!3256099 ((_ map or) call!370098 call!370097))))

(declare-fun b!5232350 () Bool)

(assert (=> b!5232350 (= e!3256100 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5232351 () Bool)

(assert (=> b!5232351 (= e!3256100 call!370093)))

(declare-fun call!370096 () List!60774)

(declare-fun bm!370090 () Bool)

(assert (=> bm!370090 (= call!370098 (derivationStepZipperDown!273 (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292)))))) (ite (or c!903756 c!903753) lt!2145585 (Context!8419 call!370096)) (h!67099 s!2326)))))

(declare-fun bm!370091 () Bool)

(assert (=> bm!370091 (= call!370096 call!370095)))

(declare-fun bm!370092 () Bool)

(assert (=> bm!370092 (= call!370093 call!370094)))

(declare-fun bm!370093 () Bool)

(assert (=> bm!370093 (= call!370097 (derivationStepZipperDown!273 (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292)))) (ite c!903756 lt!2145585 (Context!8419 call!370095)) (h!67099 s!2326)))))

(assert (= (and d!1686688 c!903757) b!5232345))

(assert (= (and d!1686688 (not c!903757)) b!5232348))

(assert (= (and b!5232348 c!903756) b!5232349))

(assert (= (and b!5232348 (not c!903756)) b!5232344))

(assert (= (and b!5232344 res!2220995) b!5232347))

(assert (= (and b!5232344 c!903753) b!5232346))

(assert (= (and b!5232344 (not c!903753)) b!5232341))

(assert (= (and b!5232341 c!903755) b!5232342))

(assert (= (and b!5232341 (not c!903755)) b!5232343))

(assert (= (and b!5232343 c!903754) b!5232351))

(assert (= (and b!5232343 (not c!903754)) b!5232350))

(assert (= (or b!5232342 b!5232351) bm!370091))

(assert (= (or b!5232342 b!5232351) bm!370092))

(assert (= (or b!5232346 bm!370091) bm!370089))

(assert (= (or b!5232346 bm!370092) bm!370088))

(assert (= (or b!5232349 b!5232346) bm!370093))

(assert (= (or b!5232349 bm!370088) bm!370090))

(assert (=> b!5232345 m!6277998))

(declare-fun m!6278008 () Bool)

(assert (=> b!5232347 m!6278008))

(declare-fun m!6278010 () Bool)

(assert (=> bm!370093 m!6278010))

(declare-fun m!6278012 () Bool)

(assert (=> bm!370089 m!6278012))

(declare-fun m!6278014 () Bool)

(assert (=> bm!370090 m!6278014))

(assert (=> b!5231798 d!1686688))

(declare-fun d!1686690 () Bool)

(declare-fun lt!2145659 () Int)

(assert (=> d!1686690 (>= lt!2145659 0)))

(declare-fun e!3256106 () Int)

(assert (=> d!1686690 (= lt!2145659 e!3256106)))

(declare-fun c!903760 () Bool)

(assert (=> d!1686690 (= c!903760 ((_ is Cons!60652) (Cons!60652 lt!2145561 Nil!60652)))))

(assert (=> d!1686690 (= (zipperDepthTotal!6 (Cons!60652 lt!2145561 Nil!60652)) lt!2145659)))

(declare-fun b!5232356 () Bool)

(declare-fun contextDepthTotal!4 (Context!8418) Int)

(assert (=> b!5232356 (= e!3256106 (+ (contextDepthTotal!4 (h!67100 (Cons!60652 lt!2145561 Nil!60652))) (zipperDepthTotal!6 (t!373955 (Cons!60652 lt!2145561 Nil!60652)))))))

(declare-fun b!5232357 () Bool)

(assert (=> b!5232357 (= e!3256106 0)))

(assert (= (and d!1686690 c!903760) b!5232356))

(assert (= (and d!1686690 (not c!903760)) b!5232357))

(declare-fun m!6278016 () Bool)

(assert (=> b!5232356 m!6278016))

(declare-fun m!6278018 () Bool)

(assert (=> b!5232356 m!6278018))

(assert (=> b!5231800 d!1686690))

(declare-fun bs!1214578 () Bool)

(declare-fun b!5232393 () Bool)

(assert (= bs!1214578 (and b!5232393 b!5231833)))

(declare-fun lambda!262892 () Int)

(assert (=> bs!1214578 (not (= lambda!262892 lambda!262852))))

(assert (=> bs!1214578 (not (= lambda!262892 lambda!262853))))

(assert (=> b!5232393 true))

(assert (=> b!5232393 true))

(declare-fun bs!1214579 () Bool)

(declare-fun b!5232398 () Bool)

(assert (= bs!1214579 (and b!5232398 b!5231833)))

(declare-fun lambda!262893 () Int)

(assert (=> bs!1214579 (not (= lambda!262893 lambda!262852))))

(assert (=> bs!1214579 (= lambda!262893 lambda!262853)))

(declare-fun bs!1214580 () Bool)

(assert (= bs!1214580 (and b!5232398 b!5232393)))

(assert (=> bs!1214580 (not (= lambda!262893 lambda!262892))))

(assert (=> b!5232398 true))

(assert (=> b!5232398 true))

(declare-fun b!5232390 () Bool)

(declare-fun e!3256131 () Bool)

(declare-fun e!3256129 () Bool)

(assert (=> b!5232390 (= e!3256131 e!3256129)))

(declare-fun c!903772 () Bool)

(assert (=> b!5232390 (= c!903772 ((_ is Star!14825) r!7292))))

(declare-fun bm!370098 () Bool)

(declare-fun call!370103 () Bool)

(assert (=> bm!370098 (= call!370103 (Exists!2006 (ite c!903772 lambda!262892 lambda!262893)))))

(declare-fun b!5232391 () Bool)

(declare-fun e!3256127 () Bool)

(declare-fun e!3256128 () Bool)

(assert (=> b!5232391 (= e!3256127 e!3256128)))

(declare-fun res!2221014 () Bool)

(assert (=> b!5232391 (= res!2221014 (not ((_ is EmptyLang!14825) r!7292)))))

(assert (=> b!5232391 (=> (not res!2221014) (not e!3256128))))

(declare-fun b!5232392 () Bool)

(declare-fun e!3256126 () Bool)

(assert (=> b!5232392 (= e!3256126 (= s!2326 (Cons!60651 (c!903601 r!7292) Nil!60651)))))

(declare-fun e!3256130 () Bool)

(assert (=> b!5232393 (= e!3256130 call!370103)))

(declare-fun b!5232394 () Bool)

(declare-fun c!903771 () Bool)

(assert (=> b!5232394 (= c!903771 ((_ is ElementMatch!14825) r!7292))))

(assert (=> b!5232394 (= e!3256128 e!3256126)))

(declare-fun b!5232395 () Bool)

(declare-fun res!2221012 () Bool)

(assert (=> b!5232395 (=> res!2221012 e!3256130)))

(declare-fun call!370104 () Bool)

(assert (=> b!5232395 (= res!2221012 call!370104)))

(assert (=> b!5232395 (= e!3256129 e!3256130)))

(declare-fun bm!370099 () Bool)

(declare-fun isEmpty!32579 (List!60775) Bool)

(assert (=> bm!370099 (= call!370104 (isEmpty!32579 s!2326))))

(declare-fun b!5232396 () Bool)

(declare-fun c!903770 () Bool)

(assert (=> b!5232396 (= c!903770 ((_ is Union!14825) r!7292))))

(assert (=> b!5232396 (= e!3256126 e!3256131)))

(declare-fun b!5232397 () Bool)

(assert (=> b!5232397 (= e!3256127 call!370104)))

(assert (=> b!5232398 (= e!3256129 call!370103)))

(declare-fun d!1686692 () Bool)

(declare-fun c!903769 () Bool)

(assert (=> d!1686692 (= c!903769 ((_ is EmptyExpr!14825) r!7292))))

(assert (=> d!1686692 (= (matchRSpec!1928 r!7292 s!2326) e!3256127)))

(declare-fun b!5232399 () Bool)

(declare-fun e!3256125 () Bool)

(assert (=> b!5232399 (= e!3256125 (matchRSpec!1928 (regTwo!30163 r!7292) s!2326))))

(declare-fun b!5232400 () Bool)

(assert (=> b!5232400 (= e!3256131 e!3256125)))

(declare-fun res!2221013 () Bool)

(assert (=> b!5232400 (= res!2221013 (matchRSpec!1928 (regOne!30163 r!7292) s!2326))))

(assert (=> b!5232400 (=> res!2221013 e!3256125)))

(assert (= (and d!1686692 c!903769) b!5232397))

(assert (= (and d!1686692 (not c!903769)) b!5232391))

(assert (= (and b!5232391 res!2221014) b!5232394))

(assert (= (and b!5232394 c!903771) b!5232392))

(assert (= (and b!5232394 (not c!903771)) b!5232396))

(assert (= (and b!5232396 c!903770) b!5232400))

(assert (= (and b!5232396 (not c!903770)) b!5232390))

(assert (= (and b!5232400 (not res!2221013)) b!5232399))

(assert (= (and b!5232390 c!903772) b!5232395))

(assert (= (and b!5232390 (not c!903772)) b!5232398))

(assert (= (and b!5232395 (not res!2221012)) b!5232393))

(assert (= (or b!5232393 b!5232398) bm!370098))

(assert (= (or b!5232397 b!5232395) bm!370099))

(declare-fun m!6278020 () Bool)

(assert (=> bm!370098 m!6278020))

(declare-fun m!6278022 () Bool)

(assert (=> bm!370099 m!6278022))

(declare-fun m!6278024 () Bool)

(assert (=> b!5232399 m!6278024))

(declare-fun m!6278026 () Bool)

(assert (=> b!5232400 m!6278026))

(assert (=> b!5231820 d!1686692))

(declare-fun b!5232429 () Bool)

(declare-fun res!2221034 () Bool)

(declare-fun e!3256148 () Bool)

(assert (=> b!5232429 (=> res!2221034 e!3256148)))

(declare-fun e!3256151 () Bool)

(assert (=> b!5232429 (= res!2221034 e!3256151)))

(declare-fun res!2221036 () Bool)

(assert (=> b!5232429 (=> (not res!2221036) (not e!3256151))))

(declare-fun lt!2145662 () Bool)

(assert (=> b!5232429 (= res!2221036 lt!2145662)))

(declare-fun b!5232430 () Bool)

(declare-fun e!3256147 () Bool)

(declare-fun derivativeStep!4068 (Regex!14825 C!29920) Regex!14825)

(declare-fun head!11212 (List!60775) C!29920)

(declare-fun tail!10309 (List!60775) List!60775)

(assert (=> b!5232430 (= e!3256147 (matchR!7010 (derivativeStep!4068 r!7292 (head!11212 s!2326)) (tail!10309 s!2326)))))

(declare-fun bm!370102 () Bool)

(declare-fun call!370107 () Bool)

(assert (=> bm!370102 (= call!370107 (isEmpty!32579 s!2326))))

(declare-fun b!5232431 () Bool)

(declare-fun res!2221038 () Bool)

(assert (=> b!5232431 (=> (not res!2221038) (not e!3256151))))

(assert (=> b!5232431 (= res!2221038 (not call!370107))))

(declare-fun b!5232432 () Bool)

(declare-fun e!3256149 () Bool)

(declare-fun e!3256146 () Bool)

(assert (=> b!5232432 (= e!3256149 e!3256146)))

(declare-fun res!2221031 () Bool)

(assert (=> b!5232432 (=> res!2221031 e!3256146)))

(assert (=> b!5232432 (= res!2221031 call!370107)))

(declare-fun b!5232433 () Bool)

(assert (=> b!5232433 (= e!3256148 e!3256149)))

(declare-fun res!2221035 () Bool)

(assert (=> b!5232433 (=> (not res!2221035) (not e!3256149))))

(assert (=> b!5232433 (= res!2221035 (not lt!2145662))))

(declare-fun b!5232434 () Bool)

(declare-fun res!2221032 () Bool)

(assert (=> b!5232434 (=> (not res!2221032) (not e!3256151))))

(assert (=> b!5232434 (= res!2221032 (isEmpty!32579 (tail!10309 s!2326)))))

(declare-fun b!5232435 () Bool)

(declare-fun res!2221033 () Bool)

(assert (=> b!5232435 (=> res!2221033 e!3256148)))

(assert (=> b!5232435 (= res!2221033 (not ((_ is ElementMatch!14825) r!7292)))))

(declare-fun e!3256150 () Bool)

(assert (=> b!5232435 (= e!3256150 e!3256148)))

(declare-fun b!5232436 () Bool)

(declare-fun res!2221037 () Bool)

(assert (=> b!5232436 (=> res!2221037 e!3256146)))

(assert (=> b!5232436 (= res!2221037 (not (isEmpty!32579 (tail!10309 s!2326))))))

(declare-fun b!5232437 () Bool)

(assert (=> b!5232437 (= e!3256150 (not lt!2145662))))

(declare-fun b!5232438 () Bool)

(assert (=> b!5232438 (= e!3256151 (= (head!11212 s!2326) (c!903601 r!7292)))))

(declare-fun b!5232439 () Bool)

(declare-fun e!3256152 () Bool)

(assert (=> b!5232439 (= e!3256152 e!3256150)))

(declare-fun c!903781 () Bool)

(assert (=> b!5232439 (= c!903781 ((_ is EmptyLang!14825) r!7292))))

(declare-fun d!1686694 () Bool)

(assert (=> d!1686694 e!3256152))

(declare-fun c!903780 () Bool)

(assert (=> d!1686694 (= c!903780 ((_ is EmptyExpr!14825) r!7292))))

(assert (=> d!1686694 (= lt!2145662 e!3256147)))

(declare-fun c!903779 () Bool)

(assert (=> d!1686694 (= c!903779 (isEmpty!32579 s!2326))))

(assert (=> d!1686694 (validRegex!6561 r!7292)))

(assert (=> d!1686694 (= (matchR!7010 r!7292 s!2326) lt!2145662)))

(declare-fun b!5232440 () Bool)

(assert (=> b!5232440 (= e!3256146 (not (= (head!11212 s!2326) (c!903601 r!7292))))))

(declare-fun b!5232441 () Bool)

(assert (=> b!5232441 (= e!3256147 (nullable!4994 r!7292))))

(declare-fun b!5232442 () Bool)

(assert (=> b!5232442 (= e!3256152 (= lt!2145662 call!370107))))

(assert (= (and d!1686694 c!903779) b!5232441))

(assert (= (and d!1686694 (not c!903779)) b!5232430))

(assert (= (and d!1686694 c!903780) b!5232442))

(assert (= (and d!1686694 (not c!903780)) b!5232439))

(assert (= (and b!5232439 c!903781) b!5232437))

(assert (= (and b!5232439 (not c!903781)) b!5232435))

(assert (= (and b!5232435 (not res!2221033)) b!5232429))

(assert (= (and b!5232429 res!2221036) b!5232431))

(assert (= (and b!5232431 res!2221038) b!5232434))

(assert (= (and b!5232434 res!2221032) b!5232438))

(assert (= (and b!5232429 (not res!2221034)) b!5232433))

(assert (= (and b!5232433 res!2221035) b!5232432))

(assert (= (and b!5232432 (not res!2221031)) b!5232436))

(assert (= (and b!5232436 (not res!2221037)) b!5232440))

(assert (= (or b!5232442 b!5232431 b!5232432) bm!370102))

(declare-fun m!6278028 () Bool)

(assert (=> b!5232441 m!6278028))

(declare-fun m!6278030 () Bool)

(assert (=> b!5232430 m!6278030))

(assert (=> b!5232430 m!6278030))

(declare-fun m!6278032 () Bool)

(assert (=> b!5232430 m!6278032))

(declare-fun m!6278034 () Bool)

(assert (=> b!5232430 m!6278034))

(assert (=> b!5232430 m!6278032))

(assert (=> b!5232430 m!6278034))

(declare-fun m!6278036 () Bool)

(assert (=> b!5232430 m!6278036))

(assert (=> b!5232436 m!6278034))

(assert (=> b!5232436 m!6278034))

(declare-fun m!6278038 () Bool)

(assert (=> b!5232436 m!6278038))

(assert (=> bm!370102 m!6278022))

(assert (=> b!5232434 m!6278034))

(assert (=> b!5232434 m!6278034))

(assert (=> b!5232434 m!6278038))

(assert (=> b!5232438 m!6278030))

(assert (=> d!1686694 m!6278022))

(assert (=> d!1686694 m!6277526))

(assert (=> b!5232440 m!6278030))

(assert (=> b!5231820 d!1686694))

(declare-fun d!1686696 () Bool)

(assert (=> d!1686696 (= (matchR!7010 r!7292 s!2326) (matchRSpec!1928 r!7292 s!2326))))

(declare-fun lt!2145665 () Unit!152614)

(declare-fun choose!38917 (Regex!14825 List!60775) Unit!152614)

(assert (=> d!1686696 (= lt!2145665 (choose!38917 r!7292 s!2326))))

(assert (=> d!1686696 (validRegex!6561 r!7292)))

(assert (=> d!1686696 (= (mainMatchTheorem!1928 r!7292 s!2326) lt!2145665)))

(declare-fun bs!1214581 () Bool)

(assert (= bs!1214581 d!1686696))

(assert (=> bs!1214581 m!6277542))

(assert (=> bs!1214581 m!6277540))

(declare-fun m!6278040 () Bool)

(assert (=> bs!1214581 m!6278040))

(assert (=> bs!1214581 m!6277526))

(assert (=> b!5231820 d!1686696))

(declare-fun d!1686698 () Bool)

(assert (=> d!1686698 (= (isEmpty!32575 (t!373953 (exprs!4709 (h!67100 zl!343)))) ((_ is Nil!60650) (t!373953 (exprs!4709 (h!67100 zl!343)))))))

(assert (=> b!5231799 d!1686698))

(declare-fun d!1686700 () Bool)

(declare-fun c!903784 () Bool)

(assert (=> d!1686700 (= c!903784 (isEmpty!32579 (t!373954 s!2326)))))

(declare-fun e!3256155 () Bool)

(assert (=> d!1686700 (= (matchZipper!1069 lt!2145591 (t!373954 s!2326)) e!3256155)))

(declare-fun b!5232447 () Bool)

(declare-fun nullableZipper!1246 ((InoxSet Context!8418)) Bool)

(assert (=> b!5232447 (= e!3256155 (nullableZipper!1246 lt!2145591))))

(declare-fun b!5232448 () Bool)

(declare-fun derivationStepZipper!1090 ((InoxSet Context!8418) C!29920) (InoxSet Context!8418))

(assert (=> b!5232448 (= e!3256155 (matchZipper!1069 (derivationStepZipper!1090 lt!2145591 (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))))))

(assert (= (and d!1686700 c!903784) b!5232447))

(assert (= (and d!1686700 (not c!903784)) b!5232448))

(declare-fun m!6278042 () Bool)

(assert (=> d!1686700 m!6278042))

(declare-fun m!6278044 () Bool)

(assert (=> b!5232447 m!6278044))

(declare-fun m!6278046 () Bool)

(assert (=> b!5232448 m!6278046))

(assert (=> b!5232448 m!6278046))

(declare-fun m!6278048 () Bool)

(assert (=> b!5232448 m!6278048))

(declare-fun m!6278050 () Bool)

(assert (=> b!5232448 m!6278050))

(assert (=> b!5232448 m!6278048))

(assert (=> b!5232448 m!6278050))

(declare-fun m!6278052 () Bool)

(assert (=> b!5232448 m!6278052))

(assert (=> b!5231801 d!1686700))

(declare-fun e!3256158 () Bool)

(declare-fun d!1686702 () Bool)

(assert (=> d!1686702 (= (matchZipper!1069 ((_ map or) lt!2145591 lt!2145570) (t!373954 s!2326)) e!3256158)))

(declare-fun res!2221041 () Bool)

(assert (=> d!1686702 (=> res!2221041 e!3256158)))

(assert (=> d!1686702 (= res!2221041 (matchZipper!1069 lt!2145591 (t!373954 s!2326)))))

(declare-fun lt!2145668 () Unit!152614)

(declare-fun choose!38918 ((InoxSet Context!8418) (InoxSet Context!8418) List!60775) Unit!152614)

(assert (=> d!1686702 (= lt!2145668 (choose!38918 lt!2145591 lt!2145570 (t!373954 s!2326)))))

(assert (=> d!1686702 (= (lemmaZipperConcatMatchesSameAsBothZippers!62 lt!2145591 lt!2145570 (t!373954 s!2326)) lt!2145668)))

(declare-fun b!5232451 () Bool)

(assert (=> b!5232451 (= e!3256158 (matchZipper!1069 lt!2145570 (t!373954 s!2326)))))

(assert (= (and d!1686702 (not res!2221041)) b!5232451))

(assert (=> d!1686702 m!6277590))

(assert (=> d!1686702 m!6277588))

(declare-fun m!6278054 () Bool)

(assert (=> d!1686702 m!6278054))

(assert (=> b!5232451 m!6277546))

(assert (=> b!5231823 d!1686702))

(assert (=> b!5231823 d!1686700))

(declare-fun d!1686704 () Bool)

(declare-fun c!903785 () Bool)

(assert (=> d!1686704 (= c!903785 (isEmpty!32579 (t!373954 s!2326)))))

(declare-fun e!3256159 () Bool)

(assert (=> d!1686704 (= (matchZipper!1069 ((_ map or) lt!2145591 lt!2145570) (t!373954 s!2326)) e!3256159)))

(declare-fun b!5232452 () Bool)

(assert (=> b!5232452 (= e!3256159 (nullableZipper!1246 ((_ map or) lt!2145591 lt!2145570)))))

(declare-fun b!5232453 () Bool)

(assert (=> b!5232453 (= e!3256159 (matchZipper!1069 (derivationStepZipper!1090 ((_ map or) lt!2145591 lt!2145570) (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))))))

(assert (= (and d!1686704 c!903785) b!5232452))

(assert (= (and d!1686704 (not c!903785)) b!5232453))

(assert (=> d!1686704 m!6278042))

(declare-fun m!6278056 () Bool)

(assert (=> b!5232452 m!6278056))

(assert (=> b!5232453 m!6278046))

(assert (=> b!5232453 m!6278046))

(declare-fun m!6278058 () Bool)

(assert (=> b!5232453 m!6278058))

(assert (=> b!5232453 m!6278050))

(assert (=> b!5232453 m!6278058))

(assert (=> b!5232453 m!6278050))

(declare-fun m!6278060 () Bool)

(assert (=> b!5232453 m!6278060))

(assert (=> b!5231823 d!1686704))

(declare-fun d!1686706 () Bool)

(declare-fun e!3256162 () Bool)

(assert (=> d!1686706 e!3256162))

(declare-fun res!2221044 () Bool)

(assert (=> d!1686706 (=> (not res!2221044) (not e!3256162))))

(declare-fun lt!2145671 () List!60776)

(declare-fun noDuplicate!1202 (List!60776) Bool)

(assert (=> d!1686706 (= res!2221044 (noDuplicate!1202 lt!2145671))))

(declare-fun choose!38919 ((InoxSet Context!8418)) List!60776)

(assert (=> d!1686706 (= lt!2145671 (choose!38919 z!1189))))

(assert (=> d!1686706 (= (toList!8609 z!1189) lt!2145671)))

(declare-fun b!5232456 () Bool)

(declare-fun content!10765 (List!60776) (InoxSet Context!8418))

(assert (=> b!5232456 (= e!3256162 (= (content!10765 lt!2145671) z!1189))))

(assert (= (and d!1686706 res!2221044) b!5232456))

(declare-fun m!6278062 () Bool)

(assert (=> d!1686706 m!6278062))

(declare-fun m!6278064 () Bool)

(assert (=> d!1686706 m!6278064))

(declare-fun m!6278066 () Bool)

(assert (=> b!5232456 m!6278066))

(assert (=> b!5231824 d!1686706))

(declare-fun d!1686708 () Bool)

(declare-fun c!903786 () Bool)

(assert (=> d!1686708 (= c!903786 (isEmpty!32579 (t!373954 s!2326)))))

(declare-fun e!3256163 () Bool)

(assert (=> d!1686708 (= (matchZipper!1069 lt!2145570 (t!373954 s!2326)) e!3256163)))

(declare-fun b!5232457 () Bool)

(assert (=> b!5232457 (= e!3256163 (nullableZipper!1246 lt!2145570))))

(declare-fun b!5232458 () Bool)

(assert (=> b!5232458 (= e!3256163 (matchZipper!1069 (derivationStepZipper!1090 lt!2145570 (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))))))

(assert (= (and d!1686708 c!903786) b!5232457))

(assert (= (and d!1686708 (not c!903786)) b!5232458))

(assert (=> d!1686708 m!6278042))

(declare-fun m!6278068 () Bool)

(assert (=> b!5232457 m!6278068))

(assert (=> b!5232458 m!6278046))

(assert (=> b!5232458 m!6278046))

(declare-fun m!6278070 () Bool)

(assert (=> b!5232458 m!6278070))

(assert (=> b!5232458 m!6278050))

(assert (=> b!5232458 m!6278070))

(assert (=> b!5232458 m!6278050))

(declare-fun m!6278072 () Bool)

(assert (=> b!5232458 m!6278072))

(assert (=> b!5231803 d!1686708))

(assert (=> b!5231805 d!1686708))

(declare-fun d!1686710 () Bool)

(declare-fun res!2221049 () Bool)

(declare-fun e!3256168 () Bool)

(assert (=> d!1686710 (=> res!2221049 e!3256168)))

(assert (=> d!1686710 (= res!2221049 ((_ is Nil!60650) lt!2145584))))

(assert (=> d!1686710 (= (forall!14255 lt!2145584 lambda!262855) e!3256168)))

(declare-fun b!5232463 () Bool)

(declare-fun e!3256169 () Bool)

(assert (=> b!5232463 (= e!3256168 e!3256169)))

(declare-fun res!2221050 () Bool)

(assert (=> b!5232463 (=> (not res!2221050) (not e!3256169))))

(declare-fun dynLambda!23967 (Int Regex!14825) Bool)

(assert (=> b!5232463 (= res!2221050 (dynLambda!23967 lambda!262855 (h!67098 lt!2145584)))))

(declare-fun b!5232464 () Bool)

(assert (=> b!5232464 (= e!3256169 (forall!14255 (t!373953 lt!2145584) lambda!262855))))

(assert (= (and d!1686710 (not res!2221049)) b!5232463))

(assert (= (and b!5232463 res!2221050) b!5232464))

(declare-fun b_lambda!202293 () Bool)

(assert (=> (not b_lambda!202293) (not b!5232463)))

(declare-fun m!6278074 () Bool)

(assert (=> b!5232463 m!6278074))

(declare-fun m!6278076 () Bool)

(assert (=> b!5232464 m!6278076))

(assert (=> b!5231825 d!1686710))

(declare-fun b!5232465 () Bool)

(declare-fun res!2221054 () Bool)

(declare-fun e!3256172 () Bool)

(assert (=> b!5232465 (=> res!2221054 e!3256172)))

(declare-fun e!3256175 () Bool)

(assert (=> b!5232465 (= res!2221054 e!3256175)))

(declare-fun res!2221056 () Bool)

(assert (=> b!5232465 (=> (not res!2221056) (not e!3256175))))

(declare-fun lt!2145672 () Bool)

(assert (=> b!5232465 (= res!2221056 lt!2145672)))

(declare-fun b!5232466 () Bool)

(declare-fun e!3256171 () Bool)

(assert (=> b!5232466 (= e!3256171 (matchR!7010 (derivativeStep!4068 lt!2145560 (head!11212 s!2326)) (tail!10309 s!2326)))))

(declare-fun bm!370103 () Bool)

(declare-fun call!370108 () Bool)

(assert (=> bm!370103 (= call!370108 (isEmpty!32579 s!2326))))

(declare-fun b!5232467 () Bool)

(declare-fun res!2221058 () Bool)

(assert (=> b!5232467 (=> (not res!2221058) (not e!3256175))))

(assert (=> b!5232467 (= res!2221058 (not call!370108))))

(declare-fun b!5232468 () Bool)

(declare-fun e!3256173 () Bool)

(declare-fun e!3256170 () Bool)

(assert (=> b!5232468 (= e!3256173 e!3256170)))

(declare-fun res!2221051 () Bool)

(assert (=> b!5232468 (=> res!2221051 e!3256170)))

(assert (=> b!5232468 (= res!2221051 call!370108)))

(declare-fun b!5232469 () Bool)

(assert (=> b!5232469 (= e!3256172 e!3256173)))

(declare-fun res!2221055 () Bool)

(assert (=> b!5232469 (=> (not res!2221055) (not e!3256173))))

(assert (=> b!5232469 (= res!2221055 (not lt!2145672))))

(declare-fun b!5232470 () Bool)

(declare-fun res!2221052 () Bool)

(assert (=> b!5232470 (=> (not res!2221052) (not e!3256175))))

(assert (=> b!5232470 (= res!2221052 (isEmpty!32579 (tail!10309 s!2326)))))

(declare-fun b!5232471 () Bool)

(declare-fun res!2221053 () Bool)

(assert (=> b!5232471 (=> res!2221053 e!3256172)))

(assert (=> b!5232471 (= res!2221053 (not ((_ is ElementMatch!14825) lt!2145560)))))

(declare-fun e!3256174 () Bool)

(assert (=> b!5232471 (= e!3256174 e!3256172)))

(declare-fun b!5232472 () Bool)

(declare-fun res!2221057 () Bool)

(assert (=> b!5232472 (=> res!2221057 e!3256170)))

(assert (=> b!5232472 (= res!2221057 (not (isEmpty!32579 (tail!10309 s!2326))))))

(declare-fun b!5232473 () Bool)

(assert (=> b!5232473 (= e!3256174 (not lt!2145672))))

(declare-fun b!5232474 () Bool)

(assert (=> b!5232474 (= e!3256175 (= (head!11212 s!2326) (c!903601 lt!2145560)))))

(declare-fun b!5232475 () Bool)

(declare-fun e!3256176 () Bool)

(assert (=> b!5232475 (= e!3256176 e!3256174)))

(declare-fun c!903789 () Bool)

(assert (=> b!5232475 (= c!903789 ((_ is EmptyLang!14825) lt!2145560))))

(declare-fun d!1686712 () Bool)

(assert (=> d!1686712 e!3256176))

(declare-fun c!903788 () Bool)

(assert (=> d!1686712 (= c!903788 ((_ is EmptyExpr!14825) lt!2145560))))

(assert (=> d!1686712 (= lt!2145672 e!3256171)))

(declare-fun c!903787 () Bool)

(assert (=> d!1686712 (= c!903787 (isEmpty!32579 s!2326))))

(assert (=> d!1686712 (validRegex!6561 lt!2145560)))

(assert (=> d!1686712 (= (matchR!7010 lt!2145560 s!2326) lt!2145672)))

(declare-fun b!5232476 () Bool)

(assert (=> b!5232476 (= e!3256170 (not (= (head!11212 s!2326) (c!903601 lt!2145560))))))

(declare-fun b!5232477 () Bool)

(assert (=> b!5232477 (= e!3256171 (nullable!4994 lt!2145560))))

(declare-fun b!5232478 () Bool)

(assert (=> b!5232478 (= e!3256176 (= lt!2145672 call!370108))))

(assert (= (and d!1686712 c!903787) b!5232477))

(assert (= (and d!1686712 (not c!903787)) b!5232466))

(assert (= (and d!1686712 c!903788) b!5232478))

(assert (= (and d!1686712 (not c!903788)) b!5232475))

(assert (= (and b!5232475 c!903789) b!5232473))

(assert (= (and b!5232475 (not c!903789)) b!5232471))

(assert (= (and b!5232471 (not res!2221053)) b!5232465))

(assert (= (and b!5232465 res!2221056) b!5232467))

(assert (= (and b!5232467 res!2221058) b!5232470))

(assert (= (and b!5232470 res!2221052) b!5232474))

(assert (= (and b!5232465 (not res!2221054)) b!5232469))

(assert (= (and b!5232469 res!2221055) b!5232468))

(assert (= (and b!5232468 (not res!2221051)) b!5232472))

(assert (= (and b!5232472 (not res!2221057)) b!5232476))

(assert (= (or b!5232478 b!5232467 b!5232468) bm!370103))

(declare-fun m!6278078 () Bool)

(assert (=> b!5232477 m!6278078))

(assert (=> b!5232466 m!6278030))

(assert (=> b!5232466 m!6278030))

(declare-fun m!6278080 () Bool)

(assert (=> b!5232466 m!6278080))

(assert (=> b!5232466 m!6278034))

(assert (=> b!5232466 m!6278080))

(assert (=> b!5232466 m!6278034))

(declare-fun m!6278082 () Bool)

(assert (=> b!5232466 m!6278082))

(assert (=> b!5232472 m!6278034))

(assert (=> b!5232472 m!6278034))

(assert (=> b!5232472 m!6278038))

(assert (=> bm!370103 m!6278022))

(assert (=> b!5232470 m!6278034))

(assert (=> b!5232470 m!6278034))

(assert (=> b!5232470 m!6278038))

(assert (=> b!5232474 m!6278030))

(assert (=> d!1686712 m!6278022))

(declare-fun m!6278084 () Bool)

(assert (=> d!1686712 m!6278084))

(assert (=> b!5232476 m!6278030))

(assert (=> b!5231825 d!1686712))

(declare-fun d!1686714 () Bool)

(assert (=> d!1686714 (= (matchR!7010 lt!2145560 s!2326) (matchZipper!1069 lt!2145587 s!2326))))

(declare-fun lt!2145675 () Unit!152614)

(declare-fun choose!38920 ((InoxSet Context!8418) List!60776 Regex!14825 List!60775) Unit!152614)

(assert (=> d!1686714 (= lt!2145675 (choose!38920 lt!2145587 lt!2145578 lt!2145560 s!2326))))

(assert (=> d!1686714 (validRegex!6561 lt!2145560)))

(assert (=> d!1686714 (= (theoremZipperRegexEquiv!259 lt!2145587 lt!2145578 lt!2145560 s!2326) lt!2145675)))

(declare-fun bs!1214582 () Bool)

(assert (= bs!1214582 d!1686714))

(assert (=> bs!1214582 m!6277600))

(assert (=> bs!1214582 m!6277562))

(declare-fun m!6278086 () Bool)

(assert (=> bs!1214582 m!6278086))

(assert (=> bs!1214582 m!6278084))

(assert (=> b!5231825 d!1686714))

(declare-fun bs!1214583 () Bool)

(declare-fun d!1686716 () Bool)

(assert (= bs!1214583 (and d!1686716 b!5231825)))

(declare-fun lambda!262894 () Int)

(assert (=> bs!1214583 (= lambda!262894 lambda!262855)))

(declare-fun bs!1214584 () Bool)

(assert (= bs!1214584 (and d!1686716 d!1686658)))

(assert (=> bs!1214584 (= lambda!262894 lambda!262886)))

(declare-fun b!5232479 () Bool)

(declare-fun e!3256179 () Bool)

(declare-fun e!3256177 () Bool)

(assert (=> b!5232479 (= e!3256179 e!3256177)))

(declare-fun c!903793 () Bool)

(assert (=> b!5232479 (= c!903793 (isEmpty!32575 (tail!10308 lt!2145568)))))

(declare-fun b!5232480 () Bool)

(declare-fun lt!2145676 () Regex!14825)

(assert (=> b!5232480 (= e!3256177 (isConcat!305 lt!2145676))))

(declare-fun b!5232481 () Bool)

(declare-fun e!3256180 () Regex!14825)

(assert (=> b!5232481 (= e!3256180 (h!67098 lt!2145568))))

(declare-fun b!5232482 () Bool)

(declare-fun e!3256182 () Bool)

(assert (=> b!5232482 (= e!3256182 (isEmpty!32575 (t!373953 lt!2145568)))))

(declare-fun b!5232483 () Bool)

(declare-fun e!3256178 () Regex!14825)

(assert (=> b!5232483 (= e!3256180 e!3256178)))

(declare-fun c!903792 () Bool)

(assert (=> b!5232483 (= c!903792 ((_ is Cons!60650) lt!2145568))))

(declare-fun b!5232484 () Bool)

(assert (=> b!5232484 (= e!3256178 EmptyExpr!14825)))

(declare-fun e!3256181 () Bool)

(assert (=> d!1686716 e!3256181))

(declare-fun res!2221059 () Bool)

(assert (=> d!1686716 (=> (not res!2221059) (not e!3256181))))

(assert (=> d!1686716 (= res!2221059 (validRegex!6561 lt!2145676))))

(assert (=> d!1686716 (= lt!2145676 e!3256180)))

(declare-fun c!903790 () Bool)

(assert (=> d!1686716 (= c!903790 e!3256182)))

(declare-fun res!2221060 () Bool)

(assert (=> d!1686716 (=> (not res!2221060) (not e!3256182))))

(assert (=> d!1686716 (= res!2221060 ((_ is Cons!60650) lt!2145568))))

(assert (=> d!1686716 (forall!14255 lt!2145568 lambda!262894)))

(assert (=> d!1686716 (= (generalisedConcat!494 lt!2145568) lt!2145676)))

(declare-fun b!5232485 () Bool)

(assert (=> b!5232485 (= e!3256179 (isEmptyExpr!782 lt!2145676))))

(declare-fun b!5232486 () Bool)

(assert (=> b!5232486 (= e!3256177 (= lt!2145676 (head!11211 lt!2145568)))))

(declare-fun b!5232487 () Bool)

(assert (=> b!5232487 (= e!3256181 e!3256179)))

(declare-fun c!903791 () Bool)

(assert (=> b!5232487 (= c!903791 (isEmpty!32575 lt!2145568))))

(declare-fun b!5232488 () Bool)

(assert (=> b!5232488 (= e!3256178 (Concat!23670 (h!67098 lt!2145568) (generalisedConcat!494 (t!373953 lt!2145568))))))

(assert (= (and d!1686716 res!2221060) b!5232482))

(assert (= (and d!1686716 c!903790) b!5232481))

(assert (= (and d!1686716 (not c!903790)) b!5232483))

(assert (= (and b!5232483 c!903792) b!5232488))

(assert (= (and b!5232483 (not c!903792)) b!5232484))

(assert (= (and d!1686716 res!2221059) b!5232487))

(assert (= (and b!5232487 c!903791) b!5232485))

(assert (= (and b!5232487 (not c!903791)) b!5232479))

(assert (= (and b!5232479 c!903793) b!5232486))

(assert (= (and b!5232479 (not c!903793)) b!5232480))

(declare-fun m!6278088 () Bool)

(assert (=> b!5232479 m!6278088))

(assert (=> b!5232479 m!6278088))

(declare-fun m!6278090 () Bool)

(assert (=> b!5232479 m!6278090))

(declare-fun m!6278092 () Bool)

(assert (=> b!5232487 m!6278092))

(declare-fun m!6278094 () Bool)

(assert (=> d!1686716 m!6278094))

(declare-fun m!6278096 () Bool)

(assert (=> d!1686716 m!6278096))

(declare-fun m!6278098 () Bool)

(assert (=> b!5232482 m!6278098))

(declare-fun m!6278100 () Bool)

(assert (=> b!5232485 m!6278100))

(declare-fun m!6278102 () Bool)

(assert (=> b!5232486 m!6278102))

(declare-fun m!6278104 () Bool)

(assert (=> b!5232488 m!6278104))

(declare-fun m!6278106 () Bool)

(assert (=> b!5232480 m!6278106))

(assert (=> b!5231825 d!1686716))

(declare-fun bs!1214585 () Bool)

(declare-fun d!1686718 () Bool)

(assert (= bs!1214585 (and d!1686718 b!5231825)))

(declare-fun lambda!262897 () Int)

(assert (=> bs!1214585 (= lambda!262897 lambda!262855)))

(declare-fun bs!1214586 () Bool)

(assert (= bs!1214586 (and d!1686718 d!1686658)))

(assert (=> bs!1214586 (= lambda!262897 lambda!262886)))

(declare-fun bs!1214587 () Bool)

(assert (= bs!1214587 (and d!1686718 d!1686716)))

(assert (=> bs!1214587 (= lambda!262897 lambda!262894)))

(assert (=> d!1686718 (= (inv!80309 (h!67100 zl!343)) (forall!14255 (exprs!4709 (h!67100 zl!343)) lambda!262897))))

(declare-fun bs!1214588 () Bool)

(assert (= bs!1214588 d!1686718))

(declare-fun m!6278108 () Bool)

(assert (=> bs!1214588 m!6278108))

(assert (=> b!5231827 d!1686718))

(declare-fun e!3256183 () Bool)

(declare-fun d!1686720 () Bool)

(assert (=> d!1686720 (= (matchZipper!1069 ((_ map or) lt!2145576 lt!2145570) (t!373954 s!2326)) e!3256183)))

(declare-fun res!2221061 () Bool)

(assert (=> d!1686720 (=> res!2221061 e!3256183)))

(assert (=> d!1686720 (= res!2221061 (matchZipper!1069 lt!2145576 (t!373954 s!2326)))))

(declare-fun lt!2145677 () Unit!152614)

(assert (=> d!1686720 (= lt!2145677 (choose!38918 lt!2145576 lt!2145570 (t!373954 s!2326)))))

(assert (=> d!1686720 (= (lemmaZipperConcatMatchesSameAsBothZippers!62 lt!2145576 lt!2145570 (t!373954 s!2326)) lt!2145677)))

(declare-fun b!5232489 () Bool)

(assert (=> b!5232489 (= e!3256183 (matchZipper!1069 lt!2145570 (t!373954 s!2326)))))

(assert (= (and d!1686720 (not res!2221061)) b!5232489))

(assert (=> d!1686720 m!6277594))

(assert (=> d!1686720 m!6277578))

(declare-fun m!6278110 () Bool)

(assert (=> d!1686720 m!6278110))

(assert (=> b!5232489 m!6277546))

(assert (=> b!5231806 d!1686720))

(declare-fun d!1686722 () Bool)

(declare-fun c!903794 () Bool)

(assert (=> d!1686722 (= c!903794 (isEmpty!32579 (t!373954 s!2326)))))

(declare-fun e!3256184 () Bool)

(assert (=> d!1686722 (= (matchZipper!1069 lt!2145576 (t!373954 s!2326)) e!3256184)))

(declare-fun b!5232490 () Bool)

(assert (=> b!5232490 (= e!3256184 (nullableZipper!1246 lt!2145576))))

(declare-fun b!5232491 () Bool)

(assert (=> b!5232491 (= e!3256184 (matchZipper!1069 (derivationStepZipper!1090 lt!2145576 (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))))))

(assert (= (and d!1686722 c!903794) b!5232490))

(assert (= (and d!1686722 (not c!903794)) b!5232491))

(assert (=> d!1686722 m!6278042))

(declare-fun m!6278112 () Bool)

(assert (=> b!5232490 m!6278112))

(assert (=> b!5232491 m!6278046))

(assert (=> b!5232491 m!6278046))

(declare-fun m!6278114 () Bool)

(assert (=> b!5232491 m!6278114))

(assert (=> b!5232491 m!6278050))

(assert (=> b!5232491 m!6278114))

(assert (=> b!5232491 m!6278050))

(declare-fun m!6278116 () Bool)

(assert (=> b!5232491 m!6278116))

(assert (=> b!5231806 d!1686722))

(declare-fun d!1686724 () Bool)

(declare-fun c!903795 () Bool)

(assert (=> d!1686724 (= c!903795 (isEmpty!32579 (t!373954 s!2326)))))

(declare-fun e!3256185 () Bool)

(assert (=> d!1686724 (= (matchZipper!1069 ((_ map or) lt!2145576 lt!2145570) (t!373954 s!2326)) e!3256185)))

(declare-fun b!5232492 () Bool)

(assert (=> b!5232492 (= e!3256185 (nullableZipper!1246 ((_ map or) lt!2145576 lt!2145570)))))

(declare-fun b!5232493 () Bool)

(assert (=> b!5232493 (= e!3256185 (matchZipper!1069 (derivationStepZipper!1090 ((_ map or) lt!2145576 lt!2145570) (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))))))

(assert (= (and d!1686724 c!903795) b!5232492))

(assert (= (and d!1686724 (not c!903795)) b!5232493))

(assert (=> d!1686724 m!6278042))

(declare-fun m!6278118 () Bool)

(assert (=> b!5232492 m!6278118))

(assert (=> b!5232493 m!6278046))

(assert (=> b!5232493 m!6278046))

(declare-fun m!6278120 () Bool)

(assert (=> b!5232493 m!6278120))

(assert (=> b!5232493 m!6278050))

(assert (=> b!5232493 m!6278120))

(assert (=> b!5232493 m!6278050))

(declare-fun m!6278122 () Bool)

(assert (=> b!5232493 m!6278122))

(assert (=> b!5231806 d!1686724))

(declare-fun d!1686726 () Bool)

(declare-fun lt!2145680 () Regex!14825)

(assert (=> d!1686726 (validRegex!6561 lt!2145680)))

(assert (=> d!1686726 (= lt!2145680 (generalisedUnion!754 (unfocusZipperList!267 zl!343)))))

(assert (=> d!1686726 (= (unfocusZipper!567 zl!343) lt!2145680)))

(declare-fun bs!1214589 () Bool)

(assert (= bs!1214589 d!1686726))

(declare-fun m!6278124 () Bool)

(assert (=> bs!1214589 m!6278124))

(assert (=> bs!1214589 m!6277628))

(assert (=> bs!1214589 m!6277628))

(assert (=> bs!1214589 m!6277630))

(assert (=> b!5231826 d!1686726))

(declare-fun d!1686728 () Bool)

(declare-fun lt!2145681 () Int)

(assert (=> d!1686728 (>= lt!2145681 0)))

(declare-fun e!3256186 () Int)

(assert (=> d!1686728 (= lt!2145681 e!3256186)))

(declare-fun c!903796 () Bool)

(assert (=> d!1686728 (= c!903796 ((_ is Cons!60652) zl!343))))

(assert (=> d!1686728 (= (zipperDepthTotal!6 zl!343) lt!2145681)))

(declare-fun b!5232494 () Bool)

(assert (=> b!5232494 (= e!3256186 (+ (contextDepthTotal!4 (h!67100 zl!343)) (zipperDepthTotal!6 (t!373955 zl!343))))))

(declare-fun b!5232495 () Bool)

(assert (=> b!5232495 (= e!3256186 0)))

(assert (= (and d!1686728 c!903796) b!5232494))

(assert (= (and d!1686728 (not c!903796)) b!5232495))

(declare-fun m!6278126 () Bool)

(assert (=> b!5232494 m!6278126))

(declare-fun m!6278128 () Bool)

(assert (=> b!5232494 m!6278128))

(assert (=> b!5231828 d!1686728))

(declare-fun d!1686730 () Bool)

(declare-fun lt!2145682 () Int)

(assert (=> d!1686730 (>= lt!2145682 0)))

(declare-fun e!3256187 () Int)

(assert (=> d!1686730 (= lt!2145682 e!3256187)))

(declare-fun c!903797 () Bool)

(assert (=> d!1686730 (= c!903797 ((_ is Cons!60652) lt!2145578))))

(assert (=> d!1686730 (= (zipperDepthTotal!6 lt!2145578) lt!2145682)))

(declare-fun b!5232496 () Bool)

(assert (=> b!5232496 (= e!3256187 (+ (contextDepthTotal!4 (h!67100 lt!2145578)) (zipperDepthTotal!6 (t!373955 lt!2145578))))))

(declare-fun b!5232497 () Bool)

(assert (=> b!5232497 (= e!3256187 0)))

(assert (= (and d!1686730 c!903797) b!5232496))

(assert (= (and d!1686730 (not c!903797)) b!5232497))

(declare-fun m!6278130 () Bool)

(assert (=> b!5232496 m!6278130))

(declare-fun m!6278132 () Bool)

(assert (=> b!5232496 m!6278132))

(assert (=> b!5231828 d!1686730))

(declare-fun b!5232498 () Bool)

(declare-fun e!3256192 () (InoxSet Context!8418))

(declare-fun e!3256193 () (InoxSet Context!8418))

(assert (=> b!5232498 (= e!3256192 e!3256193)))

(declare-fun c!903800 () Bool)

(assert (=> b!5232498 (= c!903800 ((_ is Concat!23670) (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5232499 () Bool)

(declare-fun call!370109 () (InoxSet Context!8418))

(assert (=> b!5232499 (= e!3256193 call!370109)))

(declare-fun bm!370104 () Bool)

(declare-fun call!370110 () (InoxSet Context!8418))

(declare-fun call!370114 () (InoxSet Context!8418))

(assert (=> bm!370104 (= call!370110 call!370114)))

(declare-fun d!1686732 () Bool)

(declare-fun c!903802 () Bool)

(assert (=> d!1686732 (= c!903802 (and ((_ is ElementMatch!14825) (h!67098 (exprs!4709 (h!67100 zl!343)))) (= (c!903601 (h!67098 (exprs!4709 (h!67100 zl!343)))) (h!67099 s!2326))))))

(declare-fun e!3256188 () (InoxSet Context!8418))

(assert (=> d!1686732 (= (derivationStepZipperDown!273 (h!67098 (exprs!4709 (h!67100 zl!343))) lt!2145585 (h!67099 s!2326)) e!3256188)))

(declare-fun b!5232500 () Bool)

(declare-fun c!903799 () Bool)

(assert (=> b!5232500 (= c!903799 ((_ is Star!14825) (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun e!3256190 () (InoxSet Context!8418))

(assert (=> b!5232500 (= e!3256193 e!3256190)))

(declare-fun b!5232501 () Bool)

(declare-fun c!903798 () Bool)

(declare-fun e!3256191 () Bool)

(assert (=> b!5232501 (= c!903798 e!3256191)))

(declare-fun res!2221062 () Bool)

(assert (=> b!5232501 (=> (not res!2221062) (not e!3256191))))

(assert (=> b!5232501 (= res!2221062 ((_ is Concat!23670) (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun e!3256189 () (InoxSet Context!8418))

(assert (=> b!5232501 (= e!3256189 e!3256192)))

(declare-fun b!5232502 () Bool)

(assert (=> b!5232502 (= e!3256188 (store ((as const (Array Context!8418 Bool)) false) lt!2145585 true))))

(declare-fun b!5232503 () Bool)

(declare-fun call!370113 () (InoxSet Context!8418))

(assert (=> b!5232503 (= e!3256192 ((_ map or) call!370113 call!370110))))

(declare-fun call!370111 () List!60774)

(declare-fun bm!370105 () Bool)

(assert (=> bm!370105 (= call!370111 ($colon$colon!1296 (exprs!4709 lt!2145585) (ite (or c!903798 c!903800) (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (h!67098 (exprs!4709 (h!67100 zl!343))))))))

(declare-fun b!5232504 () Bool)

(assert (=> b!5232504 (= e!3256191 (nullable!4994 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343))))))))

(declare-fun b!5232505 () Bool)

(assert (=> b!5232505 (= e!3256188 e!3256189)))

(declare-fun c!903801 () Bool)

(assert (=> b!5232505 (= c!903801 ((_ is Union!14825) (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5232506 () Bool)

(assert (=> b!5232506 (= e!3256189 ((_ map or) call!370114 call!370113))))

(declare-fun b!5232507 () Bool)

(assert (=> b!5232507 (= e!3256190 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5232508 () Bool)

(assert (=> b!5232508 (= e!3256190 call!370109)))

(declare-fun bm!370106 () Bool)

(declare-fun call!370112 () List!60774)

(assert (=> bm!370106 (= call!370114 (derivationStepZipperDown!273 (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343))))))) (ite (or c!903801 c!903798) lt!2145585 (Context!8419 call!370112)) (h!67099 s!2326)))))

(declare-fun bm!370107 () Bool)

(assert (=> bm!370107 (= call!370112 call!370111)))

(declare-fun bm!370108 () Bool)

(assert (=> bm!370108 (= call!370109 call!370110)))

(declare-fun bm!370109 () Bool)

(assert (=> bm!370109 (= call!370113 (derivationStepZipperDown!273 (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343))))) (ite c!903801 lt!2145585 (Context!8419 call!370111)) (h!67099 s!2326)))))

(assert (= (and d!1686732 c!903802) b!5232502))

(assert (= (and d!1686732 (not c!903802)) b!5232505))

(assert (= (and b!5232505 c!903801) b!5232506))

(assert (= (and b!5232505 (not c!903801)) b!5232501))

(assert (= (and b!5232501 res!2221062) b!5232504))

(assert (= (and b!5232501 c!903798) b!5232503))

(assert (= (and b!5232501 (not c!903798)) b!5232498))

(assert (= (and b!5232498 c!903800) b!5232499))

(assert (= (and b!5232498 (not c!903800)) b!5232500))

(assert (= (and b!5232500 c!903799) b!5232508))

(assert (= (and b!5232500 (not c!903799)) b!5232507))

(assert (= (or b!5232499 b!5232508) bm!370107))

(assert (= (or b!5232499 b!5232508) bm!370108))

(assert (= (or b!5232503 bm!370107) bm!370105))

(assert (= (or b!5232503 bm!370108) bm!370104))

(assert (= (or b!5232506 b!5232503) bm!370109))

(assert (= (or b!5232506 bm!370104) bm!370106))

(assert (=> b!5232502 m!6277998))

(declare-fun m!6278134 () Bool)

(assert (=> b!5232504 m!6278134))

(declare-fun m!6278136 () Bool)

(assert (=> bm!370109 m!6278136))

(declare-fun m!6278138 () Bool)

(assert (=> bm!370105 m!6278138))

(declare-fun m!6278140 () Bool)

(assert (=> bm!370106 m!6278140))

(assert (=> b!5231809 d!1686732))

(declare-fun b!5232519 () Bool)

(declare-fun e!3256200 () (InoxSet Context!8418))

(assert (=> b!5232519 (= e!3256200 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5232520 () Bool)

(declare-fun call!370117 () (InoxSet Context!8418))

(assert (=> b!5232520 (= e!3256200 call!370117)))

(declare-fun b!5232521 () Bool)

(declare-fun e!3256201 () (InoxSet Context!8418))

(assert (=> b!5232521 (= e!3256201 ((_ map or) call!370117 (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 lt!2145585))) (h!67099 s!2326))))))

(declare-fun b!5232522 () Bool)

(assert (=> b!5232522 (= e!3256201 e!3256200)))

(declare-fun c!903808 () Bool)

(assert (=> b!5232522 (= c!903808 ((_ is Cons!60650) (exprs!4709 lt!2145585)))))

(declare-fun b!5232523 () Bool)

(declare-fun e!3256202 () Bool)

(assert (=> b!5232523 (= e!3256202 (nullable!4994 (h!67098 (exprs!4709 lt!2145585))))))

(declare-fun d!1686734 () Bool)

(declare-fun c!903807 () Bool)

(assert (=> d!1686734 (= c!903807 e!3256202)))

(declare-fun res!2221065 () Bool)

(assert (=> d!1686734 (=> (not res!2221065) (not e!3256202))))

(assert (=> d!1686734 (= res!2221065 ((_ is Cons!60650) (exprs!4709 lt!2145585)))))

(assert (=> d!1686734 (= (derivationStepZipperUp!197 lt!2145585 (h!67099 s!2326)) e!3256201)))

(declare-fun bm!370112 () Bool)

(assert (=> bm!370112 (= call!370117 (derivationStepZipperDown!273 (h!67098 (exprs!4709 lt!2145585)) (Context!8419 (t!373953 (exprs!4709 lt!2145585))) (h!67099 s!2326)))))

(assert (= (and d!1686734 res!2221065) b!5232523))

(assert (= (and d!1686734 c!903807) b!5232521))

(assert (= (and d!1686734 (not c!903807)) b!5232522))

(assert (= (and b!5232522 c!903808) b!5232520))

(assert (= (and b!5232522 (not c!903808)) b!5232519))

(assert (= (or b!5232521 b!5232520) bm!370112))

(declare-fun m!6278142 () Bool)

(assert (=> b!5232521 m!6278142))

(declare-fun m!6278144 () Bool)

(assert (=> b!5232523 m!6278144))

(declare-fun m!6278146 () Bool)

(assert (=> bm!370112 m!6278146))

(assert (=> b!5231809 d!1686734))

(declare-fun d!1686736 () Bool)

(declare-fun nullableFct!1398 (Regex!14825) Bool)

(assert (=> d!1686736 (= (nullable!4994 (h!67098 (exprs!4709 (h!67100 zl!343)))) (nullableFct!1398 (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun bs!1214590 () Bool)

(assert (= bs!1214590 d!1686736))

(declare-fun m!6278148 () Bool)

(assert (=> bs!1214590 m!6278148))

(assert (=> b!5231809 d!1686736))

(declare-fun b!5232524 () Bool)

(declare-fun e!3256203 () (InoxSet Context!8418))

(assert (=> b!5232524 (= e!3256203 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5232525 () Bool)

(declare-fun call!370118 () (InoxSet Context!8418))

(assert (=> b!5232525 (= e!3256203 call!370118)))

(declare-fun b!5232526 () Bool)

(declare-fun e!3256204 () (InoxSet Context!8418))

(assert (=> b!5232526 (= e!3256204 ((_ map or) call!370118 (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) (h!67099 s!2326))))))

(declare-fun b!5232527 () Bool)

(assert (=> b!5232527 (= e!3256204 e!3256203)))

(declare-fun c!903810 () Bool)

(assert (=> b!5232527 (= c!903810 ((_ is Cons!60650) (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))))))))

(declare-fun b!5232528 () Bool)

(declare-fun e!3256205 () Bool)

(assert (=> b!5232528 (= e!3256205 (nullable!4994 (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))))))

(declare-fun d!1686738 () Bool)

(declare-fun c!903809 () Bool)

(assert (=> d!1686738 (= c!903809 e!3256205)))

(declare-fun res!2221066 () Bool)

(assert (=> d!1686738 (=> (not res!2221066) (not e!3256205))))

(assert (=> d!1686738 (= res!2221066 ((_ is Cons!60650) (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))))))))

(assert (=> d!1686738 (= (derivationStepZipperUp!197 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))) (h!67099 s!2326)) e!3256204)))

(declare-fun bm!370113 () Bool)

(assert (=> bm!370113 (= call!370118 (derivationStepZipperDown!273 (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))))) (Context!8419 (t!373953 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) (h!67099 s!2326)))))

(assert (= (and d!1686738 res!2221066) b!5232528))

(assert (= (and d!1686738 c!903809) b!5232526))

(assert (= (and d!1686738 (not c!903809)) b!5232527))

(assert (= (and b!5232527 c!903810) b!5232525))

(assert (= (and b!5232527 (not c!903810)) b!5232524))

(assert (= (or b!5232526 b!5232525) bm!370113))

(declare-fun m!6278150 () Bool)

(assert (=> b!5232526 m!6278150))

(declare-fun m!6278152 () Bool)

(assert (=> b!5232528 m!6278152))

(declare-fun m!6278154 () Bool)

(assert (=> bm!370113 m!6278154))

(assert (=> b!5231809 d!1686738))

(declare-fun d!1686740 () Bool)

(declare-fun dynLambda!23968 (Int Context!8418) (InoxSet Context!8418))

(assert (=> d!1686740 (= (flatMap!552 z!1189 lambda!262854) (dynLambda!23968 lambda!262854 (h!67100 zl!343)))))

(declare-fun lt!2145685 () Unit!152614)

(declare-fun choose!38921 ((InoxSet Context!8418) Context!8418 Int) Unit!152614)

(assert (=> d!1686740 (= lt!2145685 (choose!38921 z!1189 (h!67100 zl!343) lambda!262854))))

(assert (=> d!1686740 (= z!1189 (store ((as const (Array Context!8418 Bool)) false) (h!67100 zl!343) true))))

(assert (=> d!1686740 (= (lemmaFlatMapOnSingletonSet!84 z!1189 (h!67100 zl!343) lambda!262854) lt!2145685)))

(declare-fun b_lambda!202295 () Bool)

(assert (=> (not b_lambda!202295) (not d!1686740)))

(declare-fun bs!1214591 () Bool)

(assert (= bs!1214591 d!1686740))

(assert (=> bs!1214591 m!6277618))

(declare-fun m!6278156 () Bool)

(assert (=> bs!1214591 m!6278156))

(declare-fun m!6278158 () Bool)

(assert (=> bs!1214591 m!6278158))

(declare-fun m!6278160 () Bool)

(assert (=> bs!1214591 m!6278160))

(assert (=> b!5231809 d!1686740))

(declare-fun d!1686742 () Bool)

(declare-fun choose!38922 ((InoxSet Context!8418) Int) (InoxSet Context!8418))

(assert (=> d!1686742 (= (flatMap!552 z!1189 lambda!262854) (choose!38922 z!1189 lambda!262854))))

(declare-fun bs!1214592 () Bool)

(assert (= bs!1214592 d!1686742))

(declare-fun m!6278162 () Bool)

(assert (=> bs!1214592 m!6278162))

(assert (=> b!5231809 d!1686742))

(declare-fun b!5232529 () Bool)

(declare-fun e!3256206 () (InoxSet Context!8418))

(assert (=> b!5232529 (= e!3256206 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5232530 () Bool)

(declare-fun call!370119 () (InoxSet Context!8418))

(assert (=> b!5232530 (= e!3256206 call!370119)))

(declare-fun b!5232531 () Bool)

(declare-fun e!3256207 () (InoxSet Context!8418))

(assert (=> b!5232531 (= e!3256207 ((_ map or) call!370119 (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343)))) (h!67099 s!2326))))))

(declare-fun b!5232532 () Bool)

(assert (=> b!5232532 (= e!3256207 e!3256206)))

(declare-fun c!903812 () Bool)

(assert (=> b!5232532 (= c!903812 ((_ is Cons!60650) (exprs!4709 (h!67100 zl!343))))))

(declare-fun b!5232533 () Bool)

(declare-fun e!3256208 () Bool)

(assert (=> b!5232533 (= e!3256208 (nullable!4994 (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun d!1686744 () Bool)

(declare-fun c!903811 () Bool)

(assert (=> d!1686744 (= c!903811 e!3256208)))

(declare-fun res!2221067 () Bool)

(assert (=> d!1686744 (=> (not res!2221067) (not e!3256208))))

(assert (=> d!1686744 (= res!2221067 ((_ is Cons!60650) (exprs!4709 (h!67100 zl!343))))))

(assert (=> d!1686744 (= (derivationStepZipperUp!197 (h!67100 zl!343) (h!67099 s!2326)) e!3256207)))

(declare-fun bm!370114 () Bool)

(assert (=> bm!370114 (= call!370119 (derivationStepZipperDown!273 (h!67098 (exprs!4709 (h!67100 zl!343))) (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343)))) (h!67099 s!2326)))))

(assert (= (and d!1686744 res!2221067) b!5232533))

(assert (= (and d!1686744 c!903811) b!5232531))

(assert (= (and d!1686744 (not c!903811)) b!5232532))

(assert (= (and b!5232532 c!903812) b!5232530))

(assert (= (and b!5232532 (not c!903812)) b!5232529))

(assert (= (or b!5232531 b!5232530) bm!370114))

(declare-fun m!6278164 () Bool)

(assert (=> b!5232531 m!6278164))

(assert (=> b!5232533 m!6277622))

(declare-fun m!6278166 () Bool)

(assert (=> bm!370114 m!6278166))

(assert (=> b!5231809 d!1686744))

(assert (=> b!5231829 d!1686708))

(declare-fun bs!1214593 () Bool)

(declare-fun d!1686746 () Bool)

(assert (= bs!1214593 (and d!1686746 b!5231825)))

(declare-fun lambda!262900 () Int)

(assert (=> bs!1214593 (= lambda!262900 lambda!262855)))

(declare-fun bs!1214594 () Bool)

(assert (= bs!1214594 (and d!1686746 d!1686658)))

(assert (=> bs!1214594 (= lambda!262900 lambda!262886)))

(declare-fun bs!1214595 () Bool)

(assert (= bs!1214595 (and d!1686746 d!1686716)))

(assert (=> bs!1214595 (= lambda!262900 lambda!262894)))

(declare-fun bs!1214596 () Bool)

(assert (= bs!1214596 (and d!1686746 d!1686718)))

(assert (=> bs!1214596 (= lambda!262900 lambda!262897)))

(declare-fun b!5232554 () Bool)

(declare-fun e!3256221 () Regex!14825)

(assert (=> b!5232554 (= e!3256221 EmptyLang!14825)))

(declare-fun b!5232555 () Bool)

(declare-fun e!3256226 () Bool)

(declare-fun e!3256224 () Bool)

(assert (=> b!5232555 (= e!3256226 e!3256224)))

(declare-fun c!903821 () Bool)

(assert (=> b!5232555 (= c!903821 (isEmpty!32575 (tail!10308 (unfocusZipperList!267 zl!343))))))

(declare-fun b!5232556 () Bool)

(declare-fun e!3256223 () Bool)

(assert (=> b!5232556 (= e!3256223 (isEmpty!32575 (t!373953 (unfocusZipperList!267 zl!343))))))

(declare-fun b!5232557 () Bool)

(declare-fun lt!2145688 () Regex!14825)

(declare-fun isUnion!223 (Regex!14825) Bool)

(assert (=> b!5232557 (= e!3256224 (isUnion!223 lt!2145688))))

(declare-fun b!5232558 () Bool)

(declare-fun isEmptyLang!791 (Regex!14825) Bool)

(assert (=> b!5232558 (= e!3256226 (isEmptyLang!791 lt!2145688))))

(declare-fun b!5232559 () Bool)

(assert (=> b!5232559 (= e!3256224 (= lt!2145688 (head!11211 (unfocusZipperList!267 zl!343))))))

(declare-fun b!5232560 () Bool)

(declare-fun e!3256225 () Bool)

(assert (=> b!5232560 (= e!3256225 e!3256226)))

(declare-fun c!903822 () Bool)

(assert (=> b!5232560 (= c!903822 (isEmpty!32575 (unfocusZipperList!267 zl!343)))))

(declare-fun b!5232561 () Bool)

(assert (=> b!5232561 (= e!3256221 (Union!14825 (h!67098 (unfocusZipperList!267 zl!343)) (generalisedUnion!754 (t!373953 (unfocusZipperList!267 zl!343)))))))

(declare-fun b!5232562 () Bool)

(declare-fun e!3256222 () Regex!14825)

(assert (=> b!5232562 (= e!3256222 e!3256221)))

(declare-fun c!903823 () Bool)

(assert (=> b!5232562 (= c!903823 ((_ is Cons!60650) (unfocusZipperList!267 zl!343)))))

(assert (=> d!1686746 e!3256225))

(declare-fun res!2221072 () Bool)

(assert (=> d!1686746 (=> (not res!2221072) (not e!3256225))))

(assert (=> d!1686746 (= res!2221072 (validRegex!6561 lt!2145688))))

(assert (=> d!1686746 (= lt!2145688 e!3256222)))

(declare-fun c!903824 () Bool)

(assert (=> d!1686746 (= c!903824 e!3256223)))

(declare-fun res!2221073 () Bool)

(assert (=> d!1686746 (=> (not res!2221073) (not e!3256223))))

(assert (=> d!1686746 (= res!2221073 ((_ is Cons!60650) (unfocusZipperList!267 zl!343)))))

(assert (=> d!1686746 (forall!14255 (unfocusZipperList!267 zl!343) lambda!262900)))

(assert (=> d!1686746 (= (generalisedUnion!754 (unfocusZipperList!267 zl!343)) lt!2145688)))

(declare-fun b!5232563 () Bool)

(assert (=> b!5232563 (= e!3256222 (h!67098 (unfocusZipperList!267 zl!343)))))

(assert (= (and d!1686746 res!2221073) b!5232556))

(assert (= (and d!1686746 c!903824) b!5232563))

(assert (= (and d!1686746 (not c!903824)) b!5232562))

(assert (= (and b!5232562 c!903823) b!5232561))

(assert (= (and b!5232562 (not c!903823)) b!5232554))

(assert (= (and d!1686746 res!2221072) b!5232560))

(assert (= (and b!5232560 c!903822) b!5232558))

(assert (= (and b!5232560 (not c!903822)) b!5232555))

(assert (= (and b!5232555 c!903821) b!5232559))

(assert (= (and b!5232555 (not c!903821)) b!5232557))

(assert (=> b!5232555 m!6277628))

(declare-fun m!6278168 () Bool)

(assert (=> b!5232555 m!6278168))

(assert (=> b!5232555 m!6278168))

(declare-fun m!6278170 () Bool)

(assert (=> b!5232555 m!6278170))

(declare-fun m!6278172 () Bool)

(assert (=> b!5232561 m!6278172))

(assert (=> b!5232560 m!6277628))

(declare-fun m!6278174 () Bool)

(assert (=> b!5232560 m!6278174))

(declare-fun m!6278176 () Bool)

(assert (=> b!5232558 m!6278176))

(declare-fun m!6278178 () Bool)

(assert (=> d!1686746 m!6278178))

(assert (=> d!1686746 m!6277628))

(declare-fun m!6278180 () Bool)

(assert (=> d!1686746 m!6278180))

(declare-fun m!6278182 () Bool)

(assert (=> b!5232556 m!6278182))

(assert (=> b!5232559 m!6277628))

(declare-fun m!6278184 () Bool)

(assert (=> b!5232559 m!6278184))

(declare-fun m!6278186 () Bool)

(assert (=> b!5232557 m!6278186))

(assert (=> b!5231830 d!1686746))

(declare-fun bs!1214597 () Bool)

(declare-fun d!1686748 () Bool)

(assert (= bs!1214597 (and d!1686748 d!1686716)))

(declare-fun lambda!262903 () Int)

(assert (=> bs!1214597 (= lambda!262903 lambda!262894)))

(declare-fun bs!1214598 () Bool)

(assert (= bs!1214598 (and d!1686748 d!1686746)))

(assert (=> bs!1214598 (= lambda!262903 lambda!262900)))

(declare-fun bs!1214599 () Bool)

(assert (= bs!1214599 (and d!1686748 b!5231825)))

(assert (=> bs!1214599 (= lambda!262903 lambda!262855)))

(declare-fun bs!1214600 () Bool)

(assert (= bs!1214600 (and d!1686748 d!1686718)))

(assert (=> bs!1214600 (= lambda!262903 lambda!262897)))

(declare-fun bs!1214601 () Bool)

(assert (= bs!1214601 (and d!1686748 d!1686658)))

(assert (=> bs!1214601 (= lambda!262903 lambda!262886)))

(declare-fun lt!2145691 () List!60774)

(assert (=> d!1686748 (forall!14255 lt!2145691 lambda!262903)))

(declare-fun e!3256229 () List!60774)

(assert (=> d!1686748 (= lt!2145691 e!3256229)))

(declare-fun c!903827 () Bool)

(assert (=> d!1686748 (= c!903827 ((_ is Cons!60652) zl!343))))

(assert (=> d!1686748 (= (unfocusZipperList!267 zl!343) lt!2145691)))

(declare-fun b!5232568 () Bool)

(assert (=> b!5232568 (= e!3256229 (Cons!60650 (generalisedConcat!494 (exprs!4709 (h!67100 zl!343))) (unfocusZipperList!267 (t!373955 zl!343))))))

(declare-fun b!5232569 () Bool)

(assert (=> b!5232569 (= e!3256229 Nil!60650)))

(assert (= (and d!1686748 c!903827) b!5232568))

(assert (= (and d!1686748 (not c!903827)) b!5232569))

(declare-fun m!6278188 () Bool)

(assert (=> d!1686748 m!6278188))

(assert (=> b!5232568 m!6277548))

(declare-fun m!6278190 () Bool)

(assert (=> b!5232568 m!6278190))

(assert (=> b!5231830 d!1686748))

(declare-fun d!1686750 () Bool)

(declare-fun e!3256230 () Bool)

(assert (=> d!1686750 (= (matchZipper!1069 ((_ map or) lt!2145567 lt!2145570) (t!373954 s!2326)) e!3256230)))

(declare-fun res!2221074 () Bool)

(assert (=> d!1686750 (=> res!2221074 e!3256230)))

(assert (=> d!1686750 (= res!2221074 (matchZipper!1069 lt!2145567 (t!373954 s!2326)))))

(declare-fun lt!2145692 () Unit!152614)

(assert (=> d!1686750 (= lt!2145692 (choose!38918 lt!2145567 lt!2145570 (t!373954 s!2326)))))

(assert (=> d!1686750 (= (lemmaZipperConcatMatchesSameAsBothZippers!62 lt!2145567 lt!2145570 (t!373954 s!2326)) lt!2145692)))

(declare-fun b!5232570 () Bool)

(assert (=> b!5232570 (= e!3256230 (matchZipper!1069 lt!2145570 (t!373954 s!2326)))))

(assert (= (and d!1686750 (not res!2221074)) b!5232570))

(assert (=> d!1686750 m!6277638))

(assert (=> d!1686750 m!6277582))

(declare-fun m!6278192 () Bool)

(assert (=> d!1686750 m!6278192))

(assert (=> b!5232570 m!6277546))

(assert (=> b!5231810 d!1686750))

(declare-fun d!1686752 () Bool)

(declare-fun c!903828 () Bool)

(assert (=> d!1686752 (= c!903828 (isEmpty!32579 (t!373954 s!2326)))))

(declare-fun e!3256231 () Bool)

(assert (=> d!1686752 (= (matchZipper!1069 ((_ map or) lt!2145567 lt!2145570) (t!373954 s!2326)) e!3256231)))

(declare-fun b!5232571 () Bool)

(assert (=> b!5232571 (= e!3256231 (nullableZipper!1246 ((_ map or) lt!2145567 lt!2145570)))))

(declare-fun b!5232572 () Bool)

(assert (=> b!5232572 (= e!3256231 (matchZipper!1069 (derivationStepZipper!1090 ((_ map or) lt!2145567 lt!2145570) (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))))))

(assert (= (and d!1686752 c!903828) b!5232571))

(assert (= (and d!1686752 (not c!903828)) b!5232572))

(assert (=> d!1686752 m!6278042))

(declare-fun m!6278194 () Bool)

(assert (=> b!5232571 m!6278194))

(assert (=> b!5232572 m!6278046))

(assert (=> b!5232572 m!6278046))

(declare-fun m!6278196 () Bool)

(assert (=> b!5232572 m!6278196))

(assert (=> b!5232572 m!6278050))

(assert (=> b!5232572 m!6278196))

(assert (=> b!5232572 m!6278050))

(declare-fun m!6278198 () Bool)

(assert (=> b!5232572 m!6278198))

(assert (=> b!5231810 d!1686752))

(declare-fun bs!1214602 () Bool)

(declare-fun d!1686754 () Bool)

(assert (= bs!1214602 (and d!1686754 d!1686716)))

(declare-fun lambda!262904 () Int)

(assert (=> bs!1214602 (= lambda!262904 lambda!262894)))

(declare-fun bs!1214603 () Bool)

(assert (= bs!1214603 (and d!1686754 b!5231825)))

(assert (=> bs!1214603 (= lambda!262904 lambda!262855)))

(declare-fun bs!1214604 () Bool)

(assert (= bs!1214604 (and d!1686754 d!1686718)))

(assert (=> bs!1214604 (= lambda!262904 lambda!262897)))

(declare-fun bs!1214605 () Bool)

(assert (= bs!1214605 (and d!1686754 d!1686658)))

(assert (=> bs!1214605 (= lambda!262904 lambda!262886)))

(declare-fun bs!1214606 () Bool)

(assert (= bs!1214606 (and d!1686754 d!1686748)))

(assert (=> bs!1214606 (= lambda!262904 lambda!262903)))

(declare-fun bs!1214607 () Bool)

(assert (= bs!1214607 (and d!1686754 d!1686746)))

(assert (=> bs!1214607 (= lambda!262904 lambda!262900)))

(assert (=> d!1686754 (= (inv!80309 setElem!33329) (forall!14255 (exprs!4709 setElem!33329) lambda!262904))))

(declare-fun bs!1214608 () Bool)

(assert (= bs!1214608 d!1686754))

(declare-fun m!6278200 () Bool)

(assert (=> bs!1214608 m!6278200))

(assert (=> setNonEmpty!33329 d!1686754))

(assert (=> b!5231812 d!1686700))

(declare-fun d!1686756 () Bool)

(assert (=> d!1686756 (= (nullable!4994 (regTwo!30163 (regOne!30162 r!7292))) (nullableFct!1398 (regTwo!30163 (regOne!30162 r!7292))))))

(declare-fun bs!1214609 () Bool)

(assert (= bs!1214609 d!1686756))

(declare-fun m!6278202 () Bool)

(assert (=> bs!1214609 m!6278202))

(assert (=> b!5231834 d!1686756))

(declare-fun b!5232573 () Bool)

(declare-fun e!3256232 () (InoxSet Context!8418))

(assert (=> b!5232573 (= e!3256232 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5232574 () Bool)

(declare-fun call!370120 () (InoxSet Context!8418))

(assert (=> b!5232574 (= e!3256232 call!370120)))

(declare-fun b!5232575 () Bool)

(declare-fun e!3256233 () (InoxSet Context!8418))

(assert (=> b!5232575 (= e!3256233 ((_ map or) call!370120 (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 lt!2145593))) (h!67099 s!2326))))))

(declare-fun b!5232576 () Bool)

(assert (=> b!5232576 (= e!3256233 e!3256232)))

(declare-fun c!903830 () Bool)

(assert (=> b!5232576 (= c!903830 ((_ is Cons!60650) (exprs!4709 lt!2145593)))))

(declare-fun b!5232577 () Bool)

(declare-fun e!3256234 () Bool)

(assert (=> b!5232577 (= e!3256234 (nullable!4994 (h!67098 (exprs!4709 lt!2145593))))))

(declare-fun d!1686758 () Bool)

(declare-fun c!903829 () Bool)

(assert (=> d!1686758 (= c!903829 e!3256234)))

(declare-fun res!2221075 () Bool)

(assert (=> d!1686758 (=> (not res!2221075) (not e!3256234))))

(assert (=> d!1686758 (= res!2221075 ((_ is Cons!60650) (exprs!4709 lt!2145593)))))

(assert (=> d!1686758 (= (derivationStepZipperUp!197 lt!2145593 (h!67099 s!2326)) e!3256233)))

(declare-fun bm!370115 () Bool)

(assert (=> bm!370115 (= call!370120 (derivationStepZipperDown!273 (h!67098 (exprs!4709 lt!2145593)) (Context!8419 (t!373953 (exprs!4709 lt!2145593))) (h!67099 s!2326)))))

(assert (= (and d!1686758 res!2221075) b!5232577))

(assert (= (and d!1686758 c!903829) b!5232575))

(assert (= (and d!1686758 (not c!903829)) b!5232576))

(assert (= (and b!5232576 c!903830) b!5232574))

(assert (= (and b!5232576 (not c!903830)) b!5232573))

(assert (= (or b!5232575 b!5232574) bm!370115))

(declare-fun m!6278204 () Bool)

(assert (=> b!5232575 m!6278204))

(declare-fun m!6278206 () Bool)

(assert (=> b!5232577 m!6278206))

(declare-fun m!6278208 () Bool)

(assert (=> bm!370115 m!6278208))

(assert (=> b!5231834 d!1686758))

(declare-fun d!1686760 () Bool)

(declare-fun c!903831 () Bool)

(assert (=> d!1686760 (= c!903831 (isEmpty!32579 s!2326))))

(declare-fun e!3256235 () Bool)

(assert (=> d!1686760 (= (matchZipper!1069 z!1189 s!2326) e!3256235)))

(declare-fun b!5232578 () Bool)

(assert (=> b!5232578 (= e!3256235 (nullableZipper!1246 z!1189))))

(declare-fun b!5232579 () Bool)

(assert (=> b!5232579 (= e!3256235 (matchZipper!1069 (derivationStepZipper!1090 z!1189 (head!11212 s!2326)) (tail!10309 s!2326)))))

(assert (= (and d!1686760 c!903831) b!5232578))

(assert (= (and d!1686760 (not c!903831)) b!5232579))

(assert (=> d!1686760 m!6278022))

(declare-fun m!6278210 () Bool)

(assert (=> b!5232578 m!6278210))

(assert (=> b!5232579 m!6278030))

(assert (=> b!5232579 m!6278030))

(declare-fun m!6278212 () Bool)

(assert (=> b!5232579 m!6278212))

(assert (=> b!5232579 m!6278034))

(assert (=> b!5232579 m!6278212))

(assert (=> b!5232579 m!6278034))

(declare-fun m!6278214 () Bool)

(assert (=> b!5232579 m!6278214))

(assert (=> b!5231834 d!1686760))

(declare-fun d!1686762 () Bool)

(assert (=> d!1686762 (= (flatMap!552 lt!2145566 lambda!262854) (dynLambda!23968 lambda!262854 lt!2145561))))

(declare-fun lt!2145693 () Unit!152614)

(assert (=> d!1686762 (= lt!2145693 (choose!38921 lt!2145566 lt!2145561 lambda!262854))))

(assert (=> d!1686762 (= lt!2145566 (store ((as const (Array Context!8418 Bool)) false) lt!2145561 true))))

(assert (=> d!1686762 (= (lemmaFlatMapOnSingletonSet!84 lt!2145566 lt!2145561 lambda!262854) lt!2145693)))

(declare-fun b_lambda!202297 () Bool)

(assert (=> (not b_lambda!202297) (not d!1686762)))

(declare-fun bs!1214610 () Bool)

(assert (= bs!1214610 d!1686762))

(assert (=> bs!1214610 m!6277570))

(declare-fun m!6278216 () Bool)

(assert (=> bs!1214610 m!6278216))

(declare-fun m!6278218 () Bool)

(assert (=> bs!1214610 m!6278218))

(assert (=> bs!1214610 m!6277568))

(assert (=> b!5231834 d!1686762))

(declare-fun d!1686764 () Bool)

(assert (=> d!1686764 (= (flatMap!552 lt!2145566 lambda!262854) (choose!38922 lt!2145566 lambda!262854))))

(declare-fun bs!1214611 () Bool)

(assert (= bs!1214611 d!1686764))

(declare-fun m!6278220 () Bool)

(assert (=> bs!1214611 m!6278220))

(assert (=> b!5231834 d!1686764))

(declare-fun d!1686766 () Bool)

(assert (=> d!1686766 (= (flatMap!552 lt!2145587 lambda!262854) (dynLambda!23968 lambda!262854 lt!2145593))))

(declare-fun lt!2145694 () Unit!152614)

(assert (=> d!1686766 (= lt!2145694 (choose!38921 lt!2145587 lt!2145593 lambda!262854))))

(assert (=> d!1686766 (= lt!2145587 (store ((as const (Array Context!8418 Bool)) false) lt!2145593 true))))

(assert (=> d!1686766 (= (lemmaFlatMapOnSingletonSet!84 lt!2145587 lt!2145593 lambda!262854) lt!2145694)))

(declare-fun b_lambda!202299 () Bool)

(assert (=> (not b_lambda!202299) (not d!1686766)))

(declare-fun bs!1214612 () Bool)

(assert (= bs!1214612 d!1686766))

(assert (=> bs!1214612 m!6277556))

(declare-fun m!6278222 () Bool)

(assert (=> bs!1214612 m!6278222))

(declare-fun m!6278224 () Bool)

(assert (=> bs!1214612 m!6278224))

(assert (=> bs!1214612 m!6277572))

(assert (=> b!5231834 d!1686766))

(declare-fun b!5232580 () Bool)

(declare-fun e!3256236 () (InoxSet Context!8418))

(assert (=> b!5232580 (= e!3256236 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5232581 () Bool)

(declare-fun call!370121 () (InoxSet Context!8418))

(assert (=> b!5232581 (= e!3256236 call!370121)))

(declare-fun b!5232582 () Bool)

(declare-fun e!3256237 () (InoxSet Context!8418))

(assert (=> b!5232582 (= e!3256237 ((_ map or) call!370121 (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 lt!2145561))) (h!67099 s!2326))))))

(declare-fun b!5232583 () Bool)

(assert (=> b!5232583 (= e!3256237 e!3256236)))

(declare-fun c!903833 () Bool)

(assert (=> b!5232583 (= c!903833 ((_ is Cons!60650) (exprs!4709 lt!2145561)))))

(declare-fun b!5232584 () Bool)

(declare-fun e!3256238 () Bool)

(assert (=> b!5232584 (= e!3256238 (nullable!4994 (h!67098 (exprs!4709 lt!2145561))))))

(declare-fun d!1686768 () Bool)

(declare-fun c!903832 () Bool)

(assert (=> d!1686768 (= c!903832 e!3256238)))

(declare-fun res!2221076 () Bool)

(assert (=> d!1686768 (=> (not res!2221076) (not e!3256238))))

(assert (=> d!1686768 (= res!2221076 ((_ is Cons!60650) (exprs!4709 lt!2145561)))))

(assert (=> d!1686768 (= (derivationStepZipperUp!197 lt!2145561 (h!67099 s!2326)) e!3256237)))

(declare-fun bm!370116 () Bool)

(assert (=> bm!370116 (= call!370121 (derivationStepZipperDown!273 (h!67098 (exprs!4709 lt!2145561)) (Context!8419 (t!373953 (exprs!4709 lt!2145561))) (h!67099 s!2326)))))

(assert (= (and d!1686768 res!2221076) b!5232584))

(assert (= (and d!1686768 c!903832) b!5232582))

(assert (= (and d!1686768 (not c!903832)) b!5232583))

(assert (= (and b!5232583 c!903833) b!5232581))

(assert (= (and b!5232583 (not c!903833)) b!5232580))

(assert (= (or b!5232582 b!5232581) bm!370116))

(declare-fun m!6278226 () Bool)

(assert (=> b!5232582 m!6278226))

(declare-fun m!6278228 () Bool)

(assert (=> b!5232584 m!6278228))

(declare-fun m!6278230 () Bool)

(assert (=> bm!370116 m!6278230))

(assert (=> b!5231834 d!1686768))

(declare-fun d!1686770 () Bool)

(assert (=> d!1686770 (= (flatMap!552 lt!2145587 lambda!262854) (choose!38922 lt!2145587 lambda!262854))))

(declare-fun bs!1214613 () Bool)

(assert (= bs!1214613 d!1686770))

(declare-fun m!6278232 () Bool)

(assert (=> bs!1214613 m!6278232))

(assert (=> b!5231834 d!1686770))

(declare-fun d!1686772 () Bool)

(declare-fun c!903834 () Bool)

(assert (=> d!1686772 (= c!903834 (isEmpty!32579 s!2326))))

(declare-fun e!3256239 () Bool)

(assert (=> d!1686772 (= (matchZipper!1069 lt!2145587 s!2326) e!3256239)))

(declare-fun b!5232585 () Bool)

(assert (=> b!5232585 (= e!3256239 (nullableZipper!1246 lt!2145587))))

(declare-fun b!5232586 () Bool)

(assert (=> b!5232586 (= e!3256239 (matchZipper!1069 (derivationStepZipper!1090 lt!2145587 (head!11212 s!2326)) (tail!10309 s!2326)))))

(assert (= (and d!1686772 c!903834) b!5232585))

(assert (= (and d!1686772 (not c!903834)) b!5232586))

(assert (=> d!1686772 m!6278022))

(declare-fun m!6278234 () Bool)

(assert (=> b!5232585 m!6278234))

(assert (=> b!5232586 m!6278030))

(assert (=> b!5232586 m!6278030))

(declare-fun m!6278236 () Bool)

(assert (=> b!5232586 m!6278236))

(assert (=> b!5232586 m!6278034))

(assert (=> b!5232586 m!6278236))

(assert (=> b!5232586 m!6278034))

(declare-fun m!6278238 () Bool)

(assert (=> b!5232586 m!6278238))

(assert (=> b!5231834 d!1686772))

(declare-fun d!1686774 () Bool)

(assert (=> d!1686774 (= (nullable!4994 (regOne!30163 (regOne!30162 r!7292))) (nullableFct!1398 (regOne!30163 (regOne!30162 r!7292))))))

(declare-fun bs!1214614 () Bool)

(assert (= bs!1214614 d!1686774))

(declare-fun m!6278240 () Bool)

(assert (=> bs!1214614 m!6278240))

(assert (=> b!5231834 d!1686774))

(declare-fun d!1686776 () Bool)

(declare-fun c!903835 () Bool)

(assert (=> d!1686776 (= c!903835 (isEmpty!32579 s!2326))))

(declare-fun e!3256240 () Bool)

(assert (=> d!1686776 (= (matchZipper!1069 lt!2145566 s!2326) e!3256240)))

(declare-fun b!5232587 () Bool)

(assert (=> b!5232587 (= e!3256240 (nullableZipper!1246 lt!2145566))))

(declare-fun b!5232588 () Bool)

(assert (=> b!5232588 (= e!3256240 (matchZipper!1069 (derivationStepZipper!1090 lt!2145566 (head!11212 s!2326)) (tail!10309 s!2326)))))

(assert (= (and d!1686776 c!903835) b!5232587))

(assert (= (and d!1686776 (not c!903835)) b!5232588))

(assert (=> d!1686776 m!6278022))

(declare-fun m!6278242 () Bool)

(assert (=> b!5232587 m!6278242))

(assert (=> b!5232588 m!6278030))

(assert (=> b!5232588 m!6278030))

(declare-fun m!6278244 () Bool)

(assert (=> b!5232588 m!6278244))

(assert (=> b!5232588 m!6278034))

(assert (=> b!5232588 m!6278244))

(assert (=> b!5232588 m!6278034))

(declare-fun m!6278246 () Bool)

(assert (=> b!5232588 m!6278246))

(assert (=> b!5231814 d!1686776))

(declare-fun b!5232607 () Bool)

(declare-fun res!2221089 () Bool)

(declare-fun e!3256252 () Bool)

(assert (=> b!5232607 (=> (not res!2221089) (not e!3256252))))

(declare-fun lt!2145702 () Option!14936)

(declare-fun get!20844 (Option!14936) tuple2!64048)

(assert (=> b!5232607 (= res!2221089 (matchR!7010 (regOne!30162 r!7292) (_1!35327 (get!20844 lt!2145702))))))

(declare-fun b!5232608 () Bool)

(declare-fun e!3256254 () Bool)

(assert (=> b!5232608 (= e!3256254 (matchR!7010 (regTwo!30162 r!7292) s!2326))))

(declare-fun b!5232609 () Bool)

(declare-fun e!3256253 () Option!14936)

(declare-fun e!3256255 () Option!14936)

(assert (=> b!5232609 (= e!3256253 e!3256255)))

(declare-fun c!903840 () Bool)

(assert (=> b!5232609 (= c!903840 ((_ is Nil!60651) s!2326))))

(declare-fun b!5232610 () Bool)

(assert (=> b!5232610 (= e!3256255 None!14935)))

(declare-fun b!5232612 () Bool)

(assert (=> b!5232612 (= e!3256253 (Some!14935 (tuple2!64049 Nil!60651 s!2326)))))

(declare-fun b!5232613 () Bool)

(declare-fun e!3256251 () Bool)

(assert (=> b!5232613 (= e!3256251 (not (isDefined!11639 lt!2145702)))))

(declare-fun b!5232614 () Bool)

(declare-fun lt!2145701 () Unit!152614)

(declare-fun lt!2145703 () Unit!152614)

(assert (=> b!5232614 (= lt!2145701 lt!2145703)))

(declare-fun ++!13226 (List!60775 List!60775) List!60775)

(assert (=> b!5232614 (= (++!13226 (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651)) (t!373954 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1641 (List!60775 C!29920 List!60775 List!60775) Unit!152614)

(assert (=> b!5232614 (= lt!2145703 (lemmaMoveElementToOtherListKeepsConcatEq!1641 Nil!60651 (h!67099 s!2326) (t!373954 s!2326) s!2326))))

(assert (=> b!5232614 (= e!3256255 (findConcatSeparation!1350 (regOne!30162 r!7292) (regTwo!30162 r!7292) (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651)) (t!373954 s!2326) s!2326))))

(declare-fun b!5232615 () Bool)

(assert (=> b!5232615 (= e!3256252 (= (++!13226 (_1!35327 (get!20844 lt!2145702)) (_2!35327 (get!20844 lt!2145702))) s!2326))))

(declare-fun b!5232611 () Bool)

(declare-fun res!2221090 () Bool)

(assert (=> b!5232611 (=> (not res!2221090) (not e!3256252))))

(assert (=> b!5232611 (= res!2221090 (matchR!7010 (regTwo!30162 r!7292) (_2!35327 (get!20844 lt!2145702))))))

(declare-fun d!1686778 () Bool)

(assert (=> d!1686778 e!3256251))

(declare-fun res!2221091 () Bool)

(assert (=> d!1686778 (=> res!2221091 e!3256251)))

(assert (=> d!1686778 (= res!2221091 e!3256252)))

(declare-fun res!2221088 () Bool)

(assert (=> d!1686778 (=> (not res!2221088) (not e!3256252))))

(assert (=> d!1686778 (= res!2221088 (isDefined!11639 lt!2145702))))

(assert (=> d!1686778 (= lt!2145702 e!3256253)))

(declare-fun c!903841 () Bool)

(assert (=> d!1686778 (= c!903841 e!3256254)))

(declare-fun res!2221087 () Bool)

(assert (=> d!1686778 (=> (not res!2221087) (not e!3256254))))

(assert (=> d!1686778 (= res!2221087 (matchR!7010 (regOne!30162 r!7292) Nil!60651))))

(assert (=> d!1686778 (validRegex!6561 (regOne!30162 r!7292))))

(assert (=> d!1686778 (= (findConcatSeparation!1350 (regOne!30162 r!7292) (regTwo!30162 r!7292) Nil!60651 s!2326 s!2326) lt!2145702)))

(assert (= (and d!1686778 res!2221087) b!5232608))

(assert (= (and d!1686778 c!903841) b!5232612))

(assert (= (and d!1686778 (not c!903841)) b!5232609))

(assert (= (and b!5232609 c!903840) b!5232610))

(assert (= (and b!5232609 (not c!903840)) b!5232614))

(assert (= (and d!1686778 res!2221088) b!5232607))

(assert (= (and b!5232607 res!2221089) b!5232611))

(assert (= (and b!5232611 res!2221090) b!5232615))

(assert (= (and d!1686778 (not res!2221091)) b!5232613))

(declare-fun m!6278248 () Bool)

(assert (=> b!5232615 m!6278248))

(declare-fun m!6278250 () Bool)

(assert (=> b!5232615 m!6278250))

(assert (=> b!5232611 m!6278248))

(declare-fun m!6278252 () Bool)

(assert (=> b!5232611 m!6278252))

(declare-fun m!6278254 () Bool)

(assert (=> b!5232613 m!6278254))

(declare-fun m!6278256 () Bool)

(assert (=> b!5232608 m!6278256))

(assert (=> b!5232607 m!6278248))

(declare-fun m!6278258 () Bool)

(assert (=> b!5232607 m!6278258))

(assert (=> d!1686778 m!6278254))

(declare-fun m!6278260 () Bool)

(assert (=> d!1686778 m!6278260))

(declare-fun m!6278262 () Bool)

(assert (=> d!1686778 m!6278262))

(declare-fun m!6278264 () Bool)

(assert (=> b!5232614 m!6278264))

(assert (=> b!5232614 m!6278264))

(declare-fun m!6278266 () Bool)

(assert (=> b!5232614 m!6278266))

(declare-fun m!6278268 () Bool)

(assert (=> b!5232614 m!6278268))

(assert (=> b!5232614 m!6278264))

(declare-fun m!6278270 () Bool)

(assert (=> b!5232614 m!6278270))

(assert (=> b!5231833 d!1686778))

(declare-fun d!1686780 () Bool)

(declare-fun choose!38923 (Int) Bool)

(assert (=> d!1686780 (= (Exists!2006 lambda!262853) (choose!38923 lambda!262853))))

(declare-fun bs!1214615 () Bool)

(assert (= bs!1214615 d!1686780))

(declare-fun m!6278272 () Bool)

(assert (=> bs!1214615 m!6278272))

(assert (=> b!5231833 d!1686780))

(declare-fun d!1686782 () Bool)

(assert (=> d!1686782 (= (Exists!2006 lambda!262852) (choose!38923 lambda!262852))))

(declare-fun bs!1214616 () Bool)

(assert (= bs!1214616 d!1686782))

(declare-fun m!6278274 () Bool)

(assert (=> bs!1214616 m!6278274))

(assert (=> b!5231833 d!1686782))

(declare-fun bs!1214617 () Bool)

(declare-fun d!1686784 () Bool)

(assert (= bs!1214617 (and d!1686784 b!5231833)))

(declare-fun lambda!262907 () Int)

(assert (=> bs!1214617 (= lambda!262907 lambda!262852)))

(assert (=> bs!1214617 (not (= lambda!262907 lambda!262853))))

(declare-fun bs!1214618 () Bool)

(assert (= bs!1214618 (and d!1686784 b!5232393)))

(assert (=> bs!1214618 (not (= lambda!262907 lambda!262892))))

(declare-fun bs!1214619 () Bool)

(assert (= bs!1214619 (and d!1686784 b!5232398)))

(assert (=> bs!1214619 (not (= lambda!262907 lambda!262893))))

(assert (=> d!1686784 true))

(assert (=> d!1686784 true))

(assert (=> d!1686784 true))

(assert (=> d!1686784 (= (isDefined!11639 (findConcatSeparation!1350 (regOne!30162 r!7292) (regTwo!30162 r!7292) Nil!60651 s!2326 s!2326)) (Exists!2006 lambda!262907))))

(declare-fun lt!2145706 () Unit!152614)

(declare-fun choose!38924 (Regex!14825 Regex!14825 List!60775) Unit!152614)

(assert (=> d!1686784 (= lt!2145706 (choose!38924 (regOne!30162 r!7292) (regTwo!30162 r!7292) s!2326))))

(assert (=> d!1686784 (validRegex!6561 (regOne!30162 r!7292))))

(assert (=> d!1686784 (= (lemmaFindConcatSeparationEquivalentToExists!1114 (regOne!30162 r!7292) (regTwo!30162 r!7292) s!2326) lt!2145706)))

(declare-fun bs!1214620 () Bool)

(assert (= bs!1214620 d!1686784))

(declare-fun m!6278276 () Bool)

(assert (=> bs!1214620 m!6278276))

(assert (=> bs!1214620 m!6278262))

(declare-fun m!6278278 () Bool)

(assert (=> bs!1214620 m!6278278))

(assert (=> bs!1214620 m!6277528))

(assert (=> bs!1214620 m!6277530))

(assert (=> bs!1214620 m!6277528))

(assert (=> b!5231833 d!1686784))

(declare-fun bs!1214621 () Bool)

(declare-fun d!1686786 () Bool)

(assert (= bs!1214621 (and d!1686786 d!1686784)))

(declare-fun lambda!262912 () Int)

(assert (=> bs!1214621 (= lambda!262912 lambda!262907)))

(declare-fun bs!1214622 () Bool)

(assert (= bs!1214622 (and d!1686786 b!5232398)))

(assert (=> bs!1214622 (not (= lambda!262912 lambda!262893))))

(declare-fun bs!1214623 () Bool)

(assert (= bs!1214623 (and d!1686786 b!5231833)))

(assert (=> bs!1214623 (= lambda!262912 lambda!262852)))

(assert (=> bs!1214623 (not (= lambda!262912 lambda!262853))))

(declare-fun bs!1214624 () Bool)

(assert (= bs!1214624 (and d!1686786 b!5232393)))

(assert (=> bs!1214624 (not (= lambda!262912 lambda!262892))))

(assert (=> d!1686786 true))

(assert (=> d!1686786 true))

(assert (=> d!1686786 true))

(declare-fun lambda!262913 () Int)

(assert (=> bs!1214621 (not (= lambda!262913 lambda!262907))))

(declare-fun bs!1214625 () Bool)

(assert (= bs!1214625 d!1686786))

(assert (=> bs!1214625 (not (= lambda!262913 lambda!262912))))

(assert (=> bs!1214622 (= lambda!262913 lambda!262893)))

(assert (=> bs!1214623 (not (= lambda!262913 lambda!262852))))

(assert (=> bs!1214623 (= lambda!262913 lambda!262853)))

(assert (=> bs!1214624 (not (= lambda!262913 lambda!262892))))

(assert (=> d!1686786 true))

(assert (=> d!1686786 true))

(assert (=> d!1686786 true))

(assert (=> d!1686786 (= (Exists!2006 lambda!262912) (Exists!2006 lambda!262913))))

(declare-fun lt!2145709 () Unit!152614)

(declare-fun choose!38925 (Regex!14825 Regex!14825 List!60775) Unit!152614)

(assert (=> d!1686786 (= lt!2145709 (choose!38925 (regOne!30162 r!7292) (regTwo!30162 r!7292) s!2326))))

(assert (=> d!1686786 (validRegex!6561 (regOne!30162 r!7292))))

(assert (=> d!1686786 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!660 (regOne!30162 r!7292) (regTwo!30162 r!7292) s!2326) lt!2145709)))

(declare-fun m!6278280 () Bool)

(assert (=> bs!1214625 m!6278280))

(declare-fun m!6278282 () Bool)

(assert (=> bs!1214625 m!6278282))

(declare-fun m!6278284 () Bool)

(assert (=> bs!1214625 m!6278284))

(assert (=> bs!1214625 m!6278262))

(assert (=> b!5231833 d!1686786))

(declare-fun d!1686788 () Bool)

(declare-fun isEmpty!32580 (Option!14936) Bool)

(assert (=> d!1686788 (= (isDefined!11639 (findConcatSeparation!1350 (regOne!30162 r!7292) (regTwo!30162 r!7292) Nil!60651 s!2326 s!2326)) (not (isEmpty!32580 (findConcatSeparation!1350 (regOne!30162 r!7292) (regTwo!30162 r!7292) Nil!60651 s!2326 s!2326))))))

(declare-fun bs!1214626 () Bool)

(assert (= bs!1214626 d!1686788))

(assert (=> bs!1214626 m!6277528))

(declare-fun m!6278286 () Bool)

(assert (=> bs!1214626 m!6278286))

(assert (=> b!5231833 d!1686788))

(assert (=> b!5231816 d!1686722))

(declare-fun d!1686790 () Bool)

(declare-fun c!903842 () Bool)

(assert (=> d!1686790 (= c!903842 (isEmpty!32579 (t!373954 s!2326)))))

(declare-fun e!3256262 () Bool)

(assert (=> d!1686790 (= (matchZipper!1069 lt!2145580 (t!373954 s!2326)) e!3256262)))

(declare-fun b!5232628 () Bool)

(assert (=> b!5232628 (= e!3256262 (nullableZipper!1246 lt!2145580))))

(declare-fun b!5232629 () Bool)

(assert (=> b!5232629 (= e!3256262 (matchZipper!1069 (derivationStepZipper!1090 lt!2145580 (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))))))

(assert (= (and d!1686790 c!903842) b!5232628))

(assert (= (and d!1686790 (not c!903842)) b!5232629))

(assert (=> d!1686790 m!6278042))

(declare-fun m!6278288 () Bool)

(assert (=> b!5232628 m!6278288))

(assert (=> b!5232629 m!6278046))

(assert (=> b!5232629 m!6278046))

(declare-fun m!6278290 () Bool)

(assert (=> b!5232629 m!6278290))

(assert (=> b!5232629 m!6278050))

(assert (=> b!5232629 m!6278290))

(assert (=> b!5232629 m!6278050))

(declare-fun m!6278292 () Bool)

(assert (=> b!5232629 m!6278292))

(assert (=> b!5231816 d!1686790))

(declare-fun d!1686792 () Bool)

(declare-fun c!903843 () Bool)

(assert (=> d!1686792 (= c!903843 (isEmpty!32579 (t!373954 s!2326)))))

(declare-fun e!3256263 () Bool)

(assert (=> d!1686792 (= (matchZipper!1069 lt!2145567 (t!373954 s!2326)) e!3256263)))

(declare-fun b!5232630 () Bool)

(assert (=> b!5232630 (= e!3256263 (nullableZipper!1246 lt!2145567))))

(declare-fun b!5232631 () Bool)

(assert (=> b!5232631 (= e!3256263 (matchZipper!1069 (derivationStepZipper!1090 lt!2145567 (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))))))

(assert (= (and d!1686792 c!903843) b!5232630))

(assert (= (and d!1686792 (not c!903843)) b!5232631))

(assert (=> d!1686792 m!6278042))

(declare-fun m!6278294 () Bool)

(assert (=> b!5232630 m!6278294))

(assert (=> b!5232631 m!6278046))

(assert (=> b!5232631 m!6278046))

(declare-fun m!6278296 () Bool)

(assert (=> b!5232631 m!6278296))

(assert (=> b!5232631 m!6278050))

(assert (=> b!5232631 m!6278296))

(assert (=> b!5232631 m!6278050))

(declare-fun m!6278298 () Bool)

(assert (=> b!5232631 m!6278298))

(assert (=> b!5231816 d!1686792))

(declare-fun d!1686794 () Bool)

(declare-fun e!3256264 () Bool)

(assert (=> d!1686794 (= (matchZipper!1069 ((_ map or) lt!2145567 lt!2145591) (t!373954 s!2326)) e!3256264)))

(declare-fun res!2221104 () Bool)

(assert (=> d!1686794 (=> res!2221104 e!3256264)))

(assert (=> d!1686794 (= res!2221104 (matchZipper!1069 lt!2145567 (t!373954 s!2326)))))

(declare-fun lt!2145710 () Unit!152614)

(assert (=> d!1686794 (= lt!2145710 (choose!38918 lt!2145567 lt!2145591 (t!373954 s!2326)))))

(assert (=> d!1686794 (= (lemmaZipperConcatMatchesSameAsBothZippers!62 lt!2145567 lt!2145591 (t!373954 s!2326)) lt!2145710)))

(declare-fun b!5232632 () Bool)

(assert (=> b!5232632 (= e!3256264 (matchZipper!1069 lt!2145591 (t!373954 s!2326)))))

(assert (= (and d!1686794 (not res!2221104)) b!5232632))

(declare-fun m!6278300 () Bool)

(assert (=> d!1686794 m!6278300))

(assert (=> d!1686794 m!6277582))

(declare-fun m!6278302 () Bool)

(assert (=> d!1686794 m!6278302))

(assert (=> b!5232632 m!6277588))

(assert (=> b!5231816 d!1686794))

(declare-fun d!1686796 () Bool)

(assert (=> d!1686796 (= (isEmpty!32576 (t!373955 zl!343)) ((_ is Nil!60652) (t!373955 zl!343)))))

(assert (=> b!5231815 d!1686796))

(declare-fun bm!370123 () Bool)

(declare-fun call!370130 () Bool)

(declare-fun c!903849 () Bool)

(assert (=> bm!370123 (= call!370130 (validRegex!6561 (ite c!903849 (regTwo!30163 r!7292) (regTwo!30162 r!7292))))))

(declare-fun b!5232651 () Bool)

(declare-fun e!3256280 () Bool)

(declare-fun e!3256279 () Bool)

(assert (=> b!5232651 (= e!3256280 e!3256279)))

(declare-fun c!903848 () Bool)

(assert (=> b!5232651 (= c!903848 ((_ is Star!14825) r!7292))))

(declare-fun b!5232652 () Bool)

(declare-fun e!3256282 () Bool)

(assert (=> b!5232652 (= e!3256282 call!370130)))

(declare-fun b!5232653 () Bool)

(declare-fun e!3256285 () Bool)

(assert (=> b!5232653 (= e!3256285 call!370130)))

(declare-fun b!5232654 () Bool)

(declare-fun e!3256284 () Bool)

(assert (=> b!5232654 (= e!3256279 e!3256284)))

(assert (=> b!5232654 (= c!903849 ((_ is Union!14825) r!7292))))

(declare-fun bm!370124 () Bool)

(declare-fun call!370129 () Bool)

(assert (=> bm!370124 (= call!370129 (validRegex!6561 (ite c!903848 (reg!15154 r!7292) (ite c!903849 (regOne!30163 r!7292) (regOne!30162 r!7292)))))))

(declare-fun b!5232655 () Bool)

(declare-fun e!3256281 () Bool)

(assert (=> b!5232655 (= e!3256281 call!370129)))

(declare-fun b!5232656 () Bool)

(declare-fun res!2221115 () Bool)

(declare-fun e!3256283 () Bool)

(assert (=> b!5232656 (=> res!2221115 e!3256283)))

(assert (=> b!5232656 (= res!2221115 (not ((_ is Concat!23670) r!7292)))))

(assert (=> b!5232656 (= e!3256284 e!3256283)))

(declare-fun b!5232657 () Bool)

(assert (=> b!5232657 (= e!3256279 e!3256281)))

(declare-fun res!2221118 () Bool)

(assert (=> b!5232657 (= res!2221118 (not (nullable!4994 (reg!15154 r!7292))))))

(assert (=> b!5232657 (=> (not res!2221118) (not e!3256281))))

(declare-fun b!5232658 () Bool)

(assert (=> b!5232658 (= e!3256283 e!3256285)))

(declare-fun res!2221116 () Bool)

(assert (=> b!5232658 (=> (not res!2221116) (not e!3256285))))

(declare-fun call!370128 () Bool)

(assert (=> b!5232658 (= res!2221116 call!370128)))

(declare-fun bm!370125 () Bool)

(assert (=> bm!370125 (= call!370128 call!370129)))

(declare-fun d!1686798 () Bool)

(declare-fun res!2221117 () Bool)

(assert (=> d!1686798 (=> res!2221117 e!3256280)))

(assert (=> d!1686798 (= res!2221117 ((_ is ElementMatch!14825) r!7292))))

(assert (=> d!1686798 (= (validRegex!6561 r!7292) e!3256280)))

(declare-fun b!5232659 () Bool)

(declare-fun res!2221119 () Bool)

(assert (=> b!5232659 (=> (not res!2221119) (not e!3256282))))

(assert (=> b!5232659 (= res!2221119 call!370128)))

(assert (=> b!5232659 (= e!3256284 e!3256282)))

(assert (= (and d!1686798 (not res!2221117)) b!5232651))

(assert (= (and b!5232651 c!903848) b!5232657))

(assert (= (and b!5232651 (not c!903848)) b!5232654))

(assert (= (and b!5232657 res!2221118) b!5232655))

(assert (= (and b!5232654 c!903849) b!5232659))

(assert (= (and b!5232654 (not c!903849)) b!5232656))

(assert (= (and b!5232659 res!2221119) b!5232652))

(assert (= (and b!5232656 (not res!2221115)) b!5232658))

(assert (= (and b!5232658 res!2221116) b!5232653))

(assert (= (or b!5232652 b!5232653) bm!370123))

(assert (= (or b!5232659 b!5232658) bm!370125))

(assert (= (or b!5232655 bm!370125) bm!370124))

(declare-fun m!6278304 () Bool)

(assert (=> bm!370123 m!6278304))

(declare-fun m!6278306 () Bool)

(assert (=> bm!370124 m!6278306))

(declare-fun m!6278308 () Bool)

(assert (=> b!5232657 m!6278308))

(assert (=> start!553222 d!1686798))

(declare-fun b!5232664 () Bool)

(declare-fun e!3256288 () Bool)

(declare-fun tp!1466108 () Bool)

(declare-fun tp!1466109 () Bool)

(assert (=> b!5232664 (= e!3256288 (and tp!1466108 tp!1466109))))

(assert (=> b!5231804 (= tp!1466038 e!3256288)))

(assert (= (and b!5231804 ((_ is Cons!60650) (exprs!4709 (h!67100 zl!343)))) b!5232664))

(declare-fun condSetEmpty!33335 () Bool)

(assert (=> setNonEmpty!33329 (= condSetEmpty!33335 (= setRest!33329 ((as const (Array Context!8418 Bool)) false)))))

(declare-fun setRes!33335 () Bool)

(assert (=> setNonEmpty!33329 (= tp!1466043 setRes!33335)))

(declare-fun setIsEmpty!33335 () Bool)

(assert (=> setIsEmpty!33335 setRes!33335))

(declare-fun tp!1466115 () Bool)

(declare-fun e!3256291 () Bool)

(declare-fun setElem!33335 () Context!8418)

(declare-fun setNonEmpty!33335 () Bool)

(assert (=> setNonEmpty!33335 (= setRes!33335 (and tp!1466115 (inv!80309 setElem!33335) e!3256291))))

(declare-fun setRest!33335 () (InoxSet Context!8418))

(assert (=> setNonEmpty!33335 (= setRest!33329 ((_ map or) (store ((as const (Array Context!8418 Bool)) false) setElem!33335 true) setRest!33335))))

(declare-fun b!5232669 () Bool)

(declare-fun tp!1466114 () Bool)

(assert (=> b!5232669 (= e!3256291 tp!1466114)))

(assert (= (and setNonEmpty!33329 condSetEmpty!33335) setIsEmpty!33335))

(assert (= (and setNonEmpty!33329 (not condSetEmpty!33335)) setNonEmpty!33335))

(assert (= setNonEmpty!33335 b!5232669))

(declare-fun m!6278310 () Bool)

(assert (=> setNonEmpty!33335 m!6278310))

(declare-fun b!5232677 () Bool)

(declare-fun e!3256297 () Bool)

(declare-fun tp!1466120 () Bool)

(assert (=> b!5232677 (= e!3256297 tp!1466120)))

(declare-fun tp!1466121 () Bool)

(declare-fun b!5232676 () Bool)

(declare-fun e!3256296 () Bool)

(assert (=> b!5232676 (= e!3256296 (and (inv!80309 (h!67100 (t!373955 zl!343))) e!3256297 tp!1466121))))

(assert (=> b!5231827 (= tp!1466042 e!3256296)))

(assert (= b!5232676 b!5232677))

(assert (= (and b!5231827 ((_ is Cons!60652) (t!373955 zl!343))) b!5232676))

(declare-fun m!6278312 () Bool)

(assert (=> b!5232676 m!6278312))

(declare-fun b!5232688 () Bool)

(declare-fun e!3256300 () Bool)

(assert (=> b!5232688 (= e!3256300 tp_is_empty!38903)))

(declare-fun b!5232691 () Bool)

(declare-fun tp!1466132 () Bool)

(declare-fun tp!1466136 () Bool)

(assert (=> b!5232691 (= e!3256300 (and tp!1466132 tp!1466136))))

(assert (=> b!5231831 (= tp!1466044 e!3256300)))

(declare-fun b!5232690 () Bool)

(declare-fun tp!1466133 () Bool)

(assert (=> b!5232690 (= e!3256300 tp!1466133)))

(declare-fun b!5232689 () Bool)

(declare-fun tp!1466134 () Bool)

(declare-fun tp!1466135 () Bool)

(assert (=> b!5232689 (= e!3256300 (and tp!1466134 tp!1466135))))

(assert (= (and b!5231831 ((_ is ElementMatch!14825) (regOne!30162 r!7292))) b!5232688))

(assert (= (and b!5231831 ((_ is Concat!23670) (regOne!30162 r!7292))) b!5232689))

(assert (= (and b!5231831 ((_ is Star!14825) (regOne!30162 r!7292))) b!5232690))

(assert (= (and b!5231831 ((_ is Union!14825) (regOne!30162 r!7292))) b!5232691))

(declare-fun b!5232692 () Bool)

(declare-fun e!3256301 () Bool)

(assert (=> b!5232692 (= e!3256301 tp_is_empty!38903)))

(declare-fun b!5232695 () Bool)

(declare-fun tp!1466137 () Bool)

(declare-fun tp!1466141 () Bool)

(assert (=> b!5232695 (= e!3256301 (and tp!1466137 tp!1466141))))

(assert (=> b!5231831 (= tp!1466045 e!3256301)))

(declare-fun b!5232694 () Bool)

(declare-fun tp!1466138 () Bool)

(assert (=> b!5232694 (= e!3256301 tp!1466138)))

(declare-fun b!5232693 () Bool)

(declare-fun tp!1466139 () Bool)

(declare-fun tp!1466140 () Bool)

(assert (=> b!5232693 (= e!3256301 (and tp!1466139 tp!1466140))))

(assert (= (and b!5231831 ((_ is ElementMatch!14825) (regTwo!30162 r!7292))) b!5232692))

(assert (= (and b!5231831 ((_ is Concat!23670) (regTwo!30162 r!7292))) b!5232693))

(assert (= (and b!5231831 ((_ is Star!14825) (regTwo!30162 r!7292))) b!5232694))

(assert (= (and b!5231831 ((_ is Union!14825) (regTwo!30162 r!7292))) b!5232695))

(declare-fun b!5232696 () Bool)

(declare-fun e!3256302 () Bool)

(assert (=> b!5232696 (= e!3256302 tp_is_empty!38903)))

(declare-fun b!5232699 () Bool)

(declare-fun tp!1466142 () Bool)

(declare-fun tp!1466146 () Bool)

(assert (=> b!5232699 (= e!3256302 (and tp!1466142 tp!1466146))))

(assert (=> b!5231817 (= tp!1466036 e!3256302)))

(declare-fun b!5232698 () Bool)

(declare-fun tp!1466143 () Bool)

(assert (=> b!5232698 (= e!3256302 tp!1466143)))

(declare-fun b!5232697 () Bool)

(declare-fun tp!1466144 () Bool)

(declare-fun tp!1466145 () Bool)

(assert (=> b!5232697 (= e!3256302 (and tp!1466144 tp!1466145))))

(assert (= (and b!5231817 ((_ is ElementMatch!14825) (regOne!30163 r!7292))) b!5232696))

(assert (= (and b!5231817 ((_ is Concat!23670) (regOne!30163 r!7292))) b!5232697))

(assert (= (and b!5231817 ((_ is Star!14825) (regOne!30163 r!7292))) b!5232698))

(assert (= (and b!5231817 ((_ is Union!14825) (regOne!30163 r!7292))) b!5232699))

(declare-fun b!5232700 () Bool)

(declare-fun e!3256303 () Bool)

(assert (=> b!5232700 (= e!3256303 tp_is_empty!38903)))

(declare-fun b!5232703 () Bool)

(declare-fun tp!1466147 () Bool)

(declare-fun tp!1466151 () Bool)

(assert (=> b!5232703 (= e!3256303 (and tp!1466147 tp!1466151))))

(assert (=> b!5231817 (= tp!1466041 e!3256303)))

(declare-fun b!5232702 () Bool)

(declare-fun tp!1466148 () Bool)

(assert (=> b!5232702 (= e!3256303 tp!1466148)))

(declare-fun b!5232701 () Bool)

(declare-fun tp!1466149 () Bool)

(declare-fun tp!1466150 () Bool)

(assert (=> b!5232701 (= e!3256303 (and tp!1466149 tp!1466150))))

(assert (= (and b!5231817 ((_ is ElementMatch!14825) (regTwo!30163 r!7292))) b!5232700))

(assert (= (and b!5231817 ((_ is Concat!23670) (regTwo!30163 r!7292))) b!5232701))

(assert (= (and b!5231817 ((_ is Star!14825) (regTwo!30163 r!7292))) b!5232702))

(assert (= (and b!5231817 ((_ is Union!14825) (regTwo!30163 r!7292))) b!5232703))

(declare-fun b!5232704 () Bool)

(declare-fun e!3256304 () Bool)

(assert (=> b!5232704 (= e!3256304 tp_is_empty!38903)))

(declare-fun b!5232707 () Bool)

(declare-fun tp!1466152 () Bool)

(declare-fun tp!1466156 () Bool)

(assert (=> b!5232707 (= e!3256304 (and tp!1466152 tp!1466156))))

(assert (=> b!5231811 (= tp!1466040 e!3256304)))

(declare-fun b!5232706 () Bool)

(declare-fun tp!1466153 () Bool)

(assert (=> b!5232706 (= e!3256304 tp!1466153)))

(declare-fun b!5232705 () Bool)

(declare-fun tp!1466154 () Bool)

(declare-fun tp!1466155 () Bool)

(assert (=> b!5232705 (= e!3256304 (and tp!1466154 tp!1466155))))

(assert (= (and b!5231811 ((_ is ElementMatch!14825) (reg!15154 r!7292))) b!5232704))

(assert (= (and b!5231811 ((_ is Concat!23670) (reg!15154 r!7292))) b!5232705))

(assert (= (and b!5231811 ((_ is Star!14825) (reg!15154 r!7292))) b!5232706))

(assert (= (and b!5231811 ((_ is Union!14825) (reg!15154 r!7292))) b!5232707))

(declare-fun b!5232712 () Bool)

(declare-fun e!3256307 () Bool)

(declare-fun tp!1466159 () Bool)

(assert (=> b!5232712 (= e!3256307 (and tp_is_empty!38903 tp!1466159))))

(assert (=> b!5231832 (= tp!1466039 e!3256307)))

(assert (= (and b!5231832 ((_ is Cons!60651) (t!373954 s!2326))) b!5232712))

(declare-fun b!5232713 () Bool)

(declare-fun e!3256308 () Bool)

(declare-fun tp!1466160 () Bool)

(declare-fun tp!1466161 () Bool)

(assert (=> b!5232713 (= e!3256308 (and tp!1466160 tp!1466161))))

(assert (=> b!5231822 (= tp!1466037 e!3256308)))

(assert (= (and b!5231822 ((_ is Cons!60650) (exprs!4709 setElem!33329))) b!5232713))

(declare-fun b_lambda!202301 () Bool)

(assert (= b_lambda!202295 (or b!5231809 b_lambda!202301)))

(declare-fun bs!1214627 () Bool)

(declare-fun d!1686800 () Bool)

(assert (= bs!1214627 (and d!1686800 b!5231809)))

(assert (=> bs!1214627 (= (dynLambda!23968 lambda!262854 (h!67100 zl!343)) (derivationStepZipperUp!197 (h!67100 zl!343) (h!67099 s!2326)))))

(assert (=> bs!1214627 m!6277626))

(assert (=> d!1686740 d!1686800))

(declare-fun b_lambda!202303 () Bool)

(assert (= b_lambda!202299 (or b!5231809 b_lambda!202303)))

(declare-fun bs!1214628 () Bool)

(declare-fun d!1686802 () Bool)

(assert (= bs!1214628 (and d!1686802 b!5231809)))

(assert (=> bs!1214628 (= (dynLambda!23968 lambda!262854 lt!2145593) (derivationStepZipperUp!197 lt!2145593 (h!67099 s!2326)))))

(assert (=> bs!1214628 m!6277554))

(assert (=> d!1686766 d!1686802))

(declare-fun b_lambda!202305 () Bool)

(assert (= b_lambda!202297 (or b!5231809 b_lambda!202305)))

(declare-fun bs!1214629 () Bool)

(declare-fun d!1686804 () Bool)

(assert (= bs!1214629 (and d!1686804 b!5231809)))

(assert (=> bs!1214629 (= (dynLambda!23968 lambda!262854 lt!2145561) (derivationStepZipperUp!197 lt!2145561 (h!67099 s!2326)))))

(assert (=> bs!1214629 m!6277566))

(assert (=> d!1686762 d!1686804))

(declare-fun b_lambda!202307 () Bool)

(assert (= b_lambda!202293 (or b!5231825 b_lambda!202307)))

(declare-fun bs!1214630 () Bool)

(declare-fun d!1686806 () Bool)

(assert (= bs!1214630 (and d!1686806 b!5231825)))

(assert (=> bs!1214630 (= (dynLambda!23967 lambda!262855 (h!67098 lt!2145584)) (validRegex!6561 (h!67098 lt!2145584)))))

(declare-fun m!6278314 () Bool)

(assert (=> bs!1214630 m!6278314))

(assert (=> b!5232463 d!1686806))

(check-sat (not b!5232707) (not bm!370099) (not b!5232695) (not b!5232575) (not d!1686712) (not d!1686792) (not b!5232434) (not d!1686760) (not b!5232693) (not b!5232587) (not b!5232706) (not bm!370115) (not b!5232694) (not bm!370113) (not bm!370089) (not d!1686782) (not d!1686766) (not b!5232521) (not b!5232441) (not b!5232336) (not b!5232561) (not b!5232611) (not b!5232430) (not b_lambda!202305) (not d!1686778) (not d!1686694) (not bm!370124) (not b!5232664) (not d!1686772) (not d!1686780) (not d!1686754) (not b!5232474) (not bm!370105) (not b!5232691) (not b!5232247) (not b!5232490) (not b!5232689) (not b!5232249) (not b!5232250) (not b!5232479) (not b!5232487) (not b!5232629) (not b!5232712) (not d!1686774) (not b!5232400) (not d!1686750) (not b!5232356) (not d!1686748) (not b!5232399) (not b!5232504) (not d!1686788) (not b!5232476) (not bm!370093) (not d!1686704) (not b!5232470) (not b!5232436) (not bm!370123) (not d!1686740) (not d!1686700) (not b!5232560) (not d!1686658) (not d!1686714) (not b!5232559) (not b!5232631) (not b!5232632) (not bm!370090) (not b!5232456) (not b!5232578) (not bs!1214629) (not b!5232699) (not b!5232556) (not d!1686752) (not b!5232528) (not b!5232702) (not b!5232584) (not d!1686696) (not b!5232614) (not b!5232457) (not b!5232248) (not d!1686726) (not bs!1214628) (not b!5232555) (not b!5232585) (not b!5232571) (not b!5232557) (not b!5232628) (not b!5232579) (not d!1686708) (not b!5232698) (not b_lambda!202307) (not b!5232568) (not b!5232588) (not b!5232496) (not bm!370098) (not bm!370083) (not d!1686706) (not b!5232451) (not b!5232570) (not b!5232242) (not d!1686764) (not d!1686794) (not d!1686722) (not b!5232613) (not b!5232533) (not b!5232582) tp_is_empty!38903 (not b!5232489) (not b!5232713) (not bm!370084) (not b!5232488) (not b!5232677) (not d!1686784) (not b!5232486) (not bm!370109) (not b!5232492) (not b!5232448) (not b!5232586) (not b!5232440) (not d!1686746) (not b!5232466) (not b!5232703) (not b!5232630) (not b!5232608) (not b!5232482) (not b!5232477) (not bm!370102) (not b!5232244) (not bm!370106) (not b!5232447) (not bm!370103) (not bs!1214627) (not setNonEmpty!33335) (not b!5232697) (not d!1686702) (not b!5232607) (not d!1686720) (not b_lambda!202301) (not b!5232494) (not d!1686736) (not bs!1214630) (not d!1686776) (not b!5232523) (not b!5232558) (not b!5232458) (not b!5232701) (not b!5232491) (not b!5232347) (not b!5232572) (not b!5232241) (not d!1686770) (not bm!370087) (not b!5232453) (not b!5232452) (not b!5232480) (not b!5232657) (not b_lambda!202303) (not bm!370114) (not d!1686790) (not d!1686742) (not b!5232531) (not b!5232690) (not b!5232676) (not b!5232438) (not b!5232705) (not b!5232472) (not b!5232669) (not b!5232493) (not b!5232615) (not b!5232464) (not d!1686724) (not d!1686762) (not bm!370116) (not d!1686716) (not d!1686718) (not b!5232526) (not d!1686756) (not b!5232577) (not bm!370112) (not d!1686786) (not b!5232485))
(check-sat)
(get-model)

(assert (=> d!1686766 d!1686770))

(declare-fun d!1687146 () Bool)

(assert (=> d!1687146 (= (flatMap!552 lt!2145587 lambda!262854) (dynLambda!23968 lambda!262854 lt!2145593))))

(assert (=> d!1687146 true))

(declare-fun _$13!1766 () Unit!152614)

(assert (=> d!1687146 (= (choose!38921 lt!2145587 lt!2145593 lambda!262854) _$13!1766)))

(declare-fun b_lambda!202349 () Bool)

(assert (=> (not b_lambda!202349) (not d!1687146)))

(declare-fun bs!1214908 () Bool)

(assert (= bs!1214908 d!1687146))

(assert (=> bs!1214908 m!6277556))

(assert (=> bs!1214908 m!6278222))

(assert (=> d!1686766 d!1687146))

(declare-fun d!1687148 () Bool)

(assert (=> d!1687148 (= (isConcat!305 lt!2145653) ((_ is Concat!23670) lt!2145653))))

(assert (=> b!5232242 d!1687148))

(declare-fun b!5233399 () Bool)

(declare-fun e!3256697 () (InoxSet Context!8418))

(assert (=> b!5233399 (= e!3256697 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233400 () Bool)

(declare-fun call!370265 () (InoxSet Context!8418))

(assert (=> b!5233400 (= e!3256697 call!370265)))

(declare-fun e!3256698 () (InoxSet Context!8418))

(declare-fun b!5233401 () Bool)

(assert (=> b!5233401 (= e!3256698 ((_ map or) call!370265 (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343))))))) (h!67099 s!2326))))))

(declare-fun b!5233402 () Bool)

(assert (=> b!5233402 (= e!3256698 e!3256697)))

(declare-fun c!904033 () Bool)

(assert (=> b!5233402 (= c!904033 ((_ is Cons!60650) (exprs!4709 (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343)))))))))

(declare-fun b!5233403 () Bool)

(declare-fun e!3256699 () Bool)

(assert (=> b!5233403 (= e!3256699 (nullable!4994 (h!67098 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343))))))))))

(declare-fun d!1687150 () Bool)

(declare-fun c!904032 () Bool)

(assert (=> d!1687150 (= c!904032 e!3256699)))

(declare-fun res!2221334 () Bool)

(assert (=> d!1687150 (=> (not res!2221334) (not e!3256699))))

(assert (=> d!1687150 (= res!2221334 ((_ is Cons!60650) (exprs!4709 (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343)))))))))

(assert (=> d!1687150 (= (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343)))) (h!67099 s!2326)) e!3256698)))

(declare-fun bm!370260 () Bool)

(assert (=> bm!370260 (= call!370265 (derivationStepZipperDown!273 (h!67098 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343)))))) (Context!8419 (t!373953 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343))))))) (h!67099 s!2326)))))

(assert (= (and d!1687150 res!2221334) b!5233403))

(assert (= (and d!1687150 c!904032) b!5233401))

(assert (= (and d!1687150 (not c!904032)) b!5233402))

(assert (= (and b!5233402 c!904033) b!5233400))

(assert (= (and b!5233402 (not c!904033)) b!5233399))

(assert (= (or b!5233401 b!5233400) bm!370260))

(declare-fun m!6278992 () Bool)

(assert (=> b!5233401 m!6278992))

(declare-fun m!6278994 () Bool)

(assert (=> b!5233403 m!6278994))

(declare-fun m!6278996 () Bool)

(assert (=> bm!370260 m!6278996))

(assert (=> b!5232531 d!1687150))

(declare-fun b!5233404 () Bool)

(declare-fun e!3256704 () (InoxSet Context!8418))

(declare-fun e!3256705 () (InoxSet Context!8418))

(assert (=> b!5233404 (= e!3256704 e!3256705)))

(declare-fun c!904036 () Bool)

(assert (=> b!5233404 (= c!904036 ((_ is Concat!23670) (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292))))))))

(declare-fun b!5233405 () Bool)

(declare-fun call!370266 () (InoxSet Context!8418))

(assert (=> b!5233405 (= e!3256705 call!370266)))

(declare-fun bm!370261 () Bool)

(declare-fun call!370267 () (InoxSet Context!8418))

(declare-fun call!370271 () (InoxSet Context!8418))

(assert (=> bm!370261 (= call!370267 call!370271)))

(declare-fun c!904038 () Bool)

(declare-fun d!1687152 () Bool)

(assert (=> d!1687152 (= c!904038 (and ((_ is ElementMatch!14825) (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292))))) (= (c!903601 (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292))))) (h!67099 s!2326))))))

(declare-fun e!3256700 () (InoxSet Context!8418))

(assert (=> d!1687152 (= (derivationStepZipperDown!273 (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292)))) (ite c!903756 lt!2145585 (Context!8419 call!370095)) (h!67099 s!2326)) e!3256700)))

(declare-fun b!5233406 () Bool)

(declare-fun c!904035 () Bool)

(assert (=> b!5233406 (= c!904035 ((_ is Star!14825) (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292))))))))

(declare-fun e!3256702 () (InoxSet Context!8418))

(assert (=> b!5233406 (= e!3256705 e!3256702)))

(declare-fun b!5233407 () Bool)

(declare-fun c!904034 () Bool)

(declare-fun e!3256703 () Bool)

(assert (=> b!5233407 (= c!904034 e!3256703)))

(declare-fun res!2221335 () Bool)

(assert (=> b!5233407 (=> (not res!2221335) (not e!3256703))))

(assert (=> b!5233407 (= res!2221335 ((_ is Concat!23670) (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292))))))))

(declare-fun e!3256701 () (InoxSet Context!8418))

(assert (=> b!5233407 (= e!3256701 e!3256704)))

(declare-fun b!5233408 () Bool)

(assert (=> b!5233408 (= e!3256700 (store ((as const (Array Context!8418 Bool)) false) (ite c!903756 lt!2145585 (Context!8419 call!370095)) true))))

(declare-fun b!5233409 () Bool)

(declare-fun call!370270 () (InoxSet Context!8418))

(assert (=> b!5233409 (= e!3256704 ((_ map or) call!370270 call!370267))))

(declare-fun bm!370262 () Bool)

(declare-fun call!370268 () List!60774)

(assert (=> bm!370262 (= call!370268 ($colon$colon!1296 (exprs!4709 (ite c!903756 lt!2145585 (Context!8419 call!370095))) (ite (or c!904034 c!904036) (regTwo!30162 (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292))))) (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292)))))))))

(declare-fun b!5233410 () Bool)

(assert (=> b!5233410 (= e!3256703 (nullable!4994 (regOne!30162 (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292)))))))))

(declare-fun b!5233411 () Bool)

(assert (=> b!5233411 (= e!3256700 e!3256701)))

(declare-fun c!904037 () Bool)

(assert (=> b!5233411 (= c!904037 ((_ is Union!14825) (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292))))))))

(declare-fun b!5233412 () Bool)

(assert (=> b!5233412 (= e!3256701 ((_ map or) call!370271 call!370270))))

(declare-fun b!5233413 () Bool)

(assert (=> b!5233413 (= e!3256702 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233414 () Bool)

(assert (=> b!5233414 (= e!3256702 call!370266)))

(declare-fun bm!370263 () Bool)

(declare-fun call!370269 () List!60774)

(assert (=> bm!370263 (= call!370271 (derivationStepZipperDown!273 (ite c!904037 (regOne!30163 (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292))))) (ite c!904034 (regTwo!30162 (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292))))) (ite c!904036 (regOne!30162 (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292))))) (reg!15154 (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292)))))))) (ite (or c!904037 c!904034) (ite c!903756 lt!2145585 (Context!8419 call!370095)) (Context!8419 call!370269)) (h!67099 s!2326)))))

(declare-fun bm!370264 () Bool)

(assert (=> bm!370264 (= call!370269 call!370268)))

(declare-fun bm!370265 () Bool)

(assert (=> bm!370265 (= call!370266 call!370267)))

(declare-fun bm!370266 () Bool)

(assert (=> bm!370266 (= call!370270 (derivationStepZipperDown!273 (ite c!904037 (regTwo!30163 (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292))))) (regOne!30162 (ite c!903756 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292)))))) (ite c!904037 (ite c!903756 lt!2145585 (Context!8419 call!370095)) (Context!8419 call!370268)) (h!67099 s!2326)))))

(assert (= (and d!1687152 c!904038) b!5233408))

(assert (= (and d!1687152 (not c!904038)) b!5233411))

(assert (= (and b!5233411 c!904037) b!5233412))

(assert (= (and b!5233411 (not c!904037)) b!5233407))

(assert (= (and b!5233407 res!2221335) b!5233410))

(assert (= (and b!5233407 c!904034) b!5233409))

(assert (= (and b!5233407 (not c!904034)) b!5233404))

(assert (= (and b!5233404 c!904036) b!5233405))

(assert (= (and b!5233404 (not c!904036)) b!5233406))

(assert (= (and b!5233406 c!904035) b!5233414))

(assert (= (and b!5233406 (not c!904035)) b!5233413))

(assert (= (or b!5233405 b!5233414) bm!370264))

(assert (= (or b!5233405 b!5233414) bm!370265))

(assert (= (or b!5233409 bm!370264) bm!370262))

(assert (= (or b!5233409 bm!370265) bm!370261))

(assert (= (or b!5233412 b!5233409) bm!370266))

(assert (= (or b!5233412 bm!370261) bm!370263))

(declare-fun m!6278998 () Bool)

(assert (=> b!5233408 m!6278998))

(declare-fun m!6279000 () Bool)

(assert (=> b!5233410 m!6279000))

(declare-fun m!6279002 () Bool)

(assert (=> bm!370266 m!6279002))

(declare-fun m!6279004 () Bool)

(assert (=> bm!370262 m!6279004))

(declare-fun m!6279006 () Bool)

(assert (=> bm!370263 m!6279006))

(assert (=> bm!370093 d!1687152))

(declare-fun d!1687154 () Bool)

(assert (=> d!1687154 (= (isEmptyExpr!782 lt!2145676) ((_ is EmptyExpr!14825) lt!2145676))))

(assert (=> b!5232485 d!1687154))

(assert (=> d!1686740 d!1686742))

(declare-fun d!1687156 () Bool)

(assert (=> d!1687156 (= (flatMap!552 z!1189 lambda!262854) (dynLambda!23968 lambda!262854 (h!67100 zl!343)))))

(assert (=> d!1687156 true))

(declare-fun _$13!1767 () Unit!152614)

(assert (=> d!1687156 (= (choose!38921 z!1189 (h!67100 zl!343) lambda!262854) _$13!1767)))

(declare-fun b_lambda!202351 () Bool)

(assert (=> (not b_lambda!202351) (not d!1687156)))

(declare-fun bs!1214909 () Bool)

(assert (= bs!1214909 d!1687156))

(assert (=> bs!1214909 m!6277618))

(assert (=> bs!1214909 m!6278156))

(assert (=> d!1686740 d!1687156))

(declare-fun b!5233423 () Bool)

(declare-fun e!3256711 () List!60775)

(assert (=> b!5233423 (= e!3256711 (t!373954 s!2326))))

(declare-fun b!5233424 () Bool)

(assert (=> b!5233424 (= e!3256711 (Cons!60651 (h!67099 (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651))) (++!13226 (t!373954 (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651))) (t!373954 s!2326))))))

(declare-fun b!5233426 () Bool)

(declare-fun e!3256710 () Bool)

(declare-fun lt!2145746 () List!60775)

(assert (=> b!5233426 (= e!3256710 (or (not (= (t!373954 s!2326) Nil!60651)) (= lt!2145746 (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651)))))))

(declare-fun b!5233425 () Bool)

(declare-fun res!2221341 () Bool)

(assert (=> b!5233425 (=> (not res!2221341) (not e!3256710))))

(declare-fun size!39734 (List!60775) Int)

(assert (=> b!5233425 (= res!2221341 (= (size!39734 lt!2145746) (+ (size!39734 (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651))) (size!39734 (t!373954 s!2326)))))))

(declare-fun d!1687158 () Bool)

(assert (=> d!1687158 e!3256710))

(declare-fun res!2221340 () Bool)

(assert (=> d!1687158 (=> (not res!2221340) (not e!3256710))))

(declare-fun content!10767 (List!60775) (InoxSet C!29920))

(assert (=> d!1687158 (= res!2221340 (= (content!10767 lt!2145746) ((_ map or) (content!10767 (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651))) (content!10767 (t!373954 s!2326)))))))

(assert (=> d!1687158 (= lt!2145746 e!3256711)))

(declare-fun c!904041 () Bool)

(assert (=> d!1687158 (= c!904041 ((_ is Nil!60651) (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651))))))

(assert (=> d!1687158 (= (++!13226 (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651)) (t!373954 s!2326)) lt!2145746)))

(assert (= (and d!1687158 c!904041) b!5233423))

(assert (= (and d!1687158 (not c!904041)) b!5233424))

(assert (= (and d!1687158 res!2221340) b!5233425))

(assert (= (and b!5233425 res!2221341) b!5233426))

(declare-fun m!6279008 () Bool)

(assert (=> b!5233424 m!6279008))

(declare-fun m!6279010 () Bool)

(assert (=> b!5233425 m!6279010))

(assert (=> b!5233425 m!6278264))

(declare-fun m!6279012 () Bool)

(assert (=> b!5233425 m!6279012))

(declare-fun m!6279014 () Bool)

(assert (=> b!5233425 m!6279014))

(declare-fun m!6279016 () Bool)

(assert (=> d!1687158 m!6279016))

(assert (=> d!1687158 m!6278264))

(declare-fun m!6279018 () Bool)

(assert (=> d!1687158 m!6279018))

(declare-fun m!6279020 () Bool)

(assert (=> d!1687158 m!6279020))

(assert (=> b!5232614 d!1687158))

(declare-fun b!5233427 () Bool)

(declare-fun e!3256713 () List!60775)

(assert (=> b!5233427 (= e!3256713 (Cons!60651 (h!67099 s!2326) Nil!60651))))

(declare-fun b!5233428 () Bool)

(assert (=> b!5233428 (= e!3256713 (Cons!60651 (h!67099 Nil!60651) (++!13226 (t!373954 Nil!60651) (Cons!60651 (h!67099 s!2326) Nil!60651))))))

(declare-fun b!5233430 () Bool)

(declare-fun e!3256712 () Bool)

(declare-fun lt!2145747 () List!60775)

(assert (=> b!5233430 (= e!3256712 (or (not (= (Cons!60651 (h!67099 s!2326) Nil!60651) Nil!60651)) (= lt!2145747 Nil!60651)))))

(declare-fun b!5233429 () Bool)

(declare-fun res!2221343 () Bool)

(assert (=> b!5233429 (=> (not res!2221343) (not e!3256712))))

(assert (=> b!5233429 (= res!2221343 (= (size!39734 lt!2145747) (+ (size!39734 Nil!60651) (size!39734 (Cons!60651 (h!67099 s!2326) Nil!60651)))))))

(declare-fun d!1687160 () Bool)

(assert (=> d!1687160 e!3256712))

(declare-fun res!2221342 () Bool)

(assert (=> d!1687160 (=> (not res!2221342) (not e!3256712))))

(assert (=> d!1687160 (= res!2221342 (= (content!10767 lt!2145747) ((_ map or) (content!10767 Nil!60651) (content!10767 (Cons!60651 (h!67099 s!2326) Nil!60651)))))))

(assert (=> d!1687160 (= lt!2145747 e!3256713)))

(declare-fun c!904042 () Bool)

(assert (=> d!1687160 (= c!904042 ((_ is Nil!60651) Nil!60651))))

(assert (=> d!1687160 (= (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651)) lt!2145747)))

(assert (= (and d!1687160 c!904042) b!5233427))

(assert (= (and d!1687160 (not c!904042)) b!5233428))

(assert (= (and d!1687160 res!2221342) b!5233429))

(assert (= (and b!5233429 res!2221343) b!5233430))

(declare-fun m!6279022 () Bool)

(assert (=> b!5233428 m!6279022))

(declare-fun m!6279024 () Bool)

(assert (=> b!5233429 m!6279024))

(declare-fun m!6279026 () Bool)

(assert (=> b!5233429 m!6279026))

(declare-fun m!6279028 () Bool)

(assert (=> b!5233429 m!6279028))

(declare-fun m!6279030 () Bool)

(assert (=> d!1687160 m!6279030))

(declare-fun m!6279032 () Bool)

(assert (=> d!1687160 m!6279032))

(declare-fun m!6279034 () Bool)

(assert (=> d!1687160 m!6279034))

(assert (=> b!5232614 d!1687160))

(declare-fun d!1687162 () Bool)

(assert (=> d!1687162 (= (++!13226 (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651)) (t!373954 s!2326)) s!2326)))

(declare-fun lt!2145750 () Unit!152614)

(declare-fun choose!38926 (List!60775 C!29920 List!60775 List!60775) Unit!152614)

(assert (=> d!1687162 (= lt!2145750 (choose!38926 Nil!60651 (h!67099 s!2326) (t!373954 s!2326) s!2326))))

(assert (=> d!1687162 (= (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) (t!373954 s!2326))) s!2326)))

(assert (=> d!1687162 (= (lemmaMoveElementToOtherListKeepsConcatEq!1641 Nil!60651 (h!67099 s!2326) (t!373954 s!2326) s!2326) lt!2145750)))

(declare-fun bs!1214910 () Bool)

(assert (= bs!1214910 d!1687162))

(assert (=> bs!1214910 m!6278264))

(assert (=> bs!1214910 m!6278264))

(assert (=> bs!1214910 m!6278266))

(declare-fun m!6279036 () Bool)

(assert (=> bs!1214910 m!6279036))

(declare-fun m!6279038 () Bool)

(assert (=> bs!1214910 m!6279038))

(assert (=> b!5232614 d!1687162))

(declare-fun b!5233431 () Bool)

(declare-fun res!2221346 () Bool)

(declare-fun e!3256715 () Bool)

(assert (=> b!5233431 (=> (not res!2221346) (not e!3256715))))

(declare-fun lt!2145752 () Option!14936)

(assert (=> b!5233431 (= res!2221346 (matchR!7010 (regOne!30162 r!7292) (_1!35327 (get!20844 lt!2145752))))))

(declare-fun b!5233432 () Bool)

(declare-fun e!3256717 () Bool)

(assert (=> b!5233432 (= e!3256717 (matchR!7010 (regTwo!30162 r!7292) (t!373954 s!2326)))))

(declare-fun b!5233433 () Bool)

(declare-fun e!3256716 () Option!14936)

(declare-fun e!3256718 () Option!14936)

(assert (=> b!5233433 (= e!3256716 e!3256718)))

(declare-fun c!904043 () Bool)

(assert (=> b!5233433 (= c!904043 ((_ is Nil!60651) (t!373954 s!2326)))))

(declare-fun b!5233434 () Bool)

(assert (=> b!5233434 (= e!3256718 None!14935)))

(declare-fun b!5233436 () Bool)

(assert (=> b!5233436 (= e!3256716 (Some!14935 (tuple2!64049 (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651)) (t!373954 s!2326))))))

(declare-fun b!5233437 () Bool)

(declare-fun e!3256714 () Bool)

(assert (=> b!5233437 (= e!3256714 (not (isDefined!11639 lt!2145752)))))

(declare-fun b!5233438 () Bool)

(declare-fun lt!2145751 () Unit!152614)

(declare-fun lt!2145753 () Unit!152614)

(assert (=> b!5233438 (= lt!2145751 lt!2145753)))

(assert (=> b!5233438 (= (++!13226 (++!13226 (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651)) (Cons!60651 (h!67099 (t!373954 s!2326)) Nil!60651)) (t!373954 (t!373954 s!2326))) s!2326)))

(assert (=> b!5233438 (= lt!2145753 (lemmaMoveElementToOtherListKeepsConcatEq!1641 (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651)) (h!67099 (t!373954 s!2326)) (t!373954 (t!373954 s!2326)) s!2326))))

(assert (=> b!5233438 (= e!3256718 (findConcatSeparation!1350 (regOne!30162 r!7292) (regTwo!30162 r!7292) (++!13226 (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651)) (Cons!60651 (h!67099 (t!373954 s!2326)) Nil!60651)) (t!373954 (t!373954 s!2326)) s!2326))))

(declare-fun b!5233439 () Bool)

(assert (=> b!5233439 (= e!3256715 (= (++!13226 (_1!35327 (get!20844 lt!2145752)) (_2!35327 (get!20844 lt!2145752))) s!2326))))

(declare-fun b!5233435 () Bool)

(declare-fun res!2221347 () Bool)

(assert (=> b!5233435 (=> (not res!2221347) (not e!3256715))))

(assert (=> b!5233435 (= res!2221347 (matchR!7010 (regTwo!30162 r!7292) (_2!35327 (get!20844 lt!2145752))))))

(declare-fun d!1687164 () Bool)

(assert (=> d!1687164 e!3256714))

(declare-fun res!2221348 () Bool)

(assert (=> d!1687164 (=> res!2221348 e!3256714)))

(assert (=> d!1687164 (= res!2221348 e!3256715)))

(declare-fun res!2221345 () Bool)

(assert (=> d!1687164 (=> (not res!2221345) (not e!3256715))))

(assert (=> d!1687164 (= res!2221345 (isDefined!11639 lt!2145752))))

(assert (=> d!1687164 (= lt!2145752 e!3256716)))

(declare-fun c!904044 () Bool)

(assert (=> d!1687164 (= c!904044 e!3256717)))

(declare-fun res!2221344 () Bool)

(assert (=> d!1687164 (=> (not res!2221344) (not e!3256717))))

(assert (=> d!1687164 (= res!2221344 (matchR!7010 (regOne!30162 r!7292) (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651))))))

(assert (=> d!1687164 (validRegex!6561 (regOne!30162 r!7292))))

(assert (=> d!1687164 (= (findConcatSeparation!1350 (regOne!30162 r!7292) (regTwo!30162 r!7292) (++!13226 Nil!60651 (Cons!60651 (h!67099 s!2326) Nil!60651)) (t!373954 s!2326) s!2326) lt!2145752)))

(assert (= (and d!1687164 res!2221344) b!5233432))

(assert (= (and d!1687164 c!904044) b!5233436))

(assert (= (and d!1687164 (not c!904044)) b!5233433))

(assert (= (and b!5233433 c!904043) b!5233434))

(assert (= (and b!5233433 (not c!904043)) b!5233438))

(assert (= (and d!1687164 res!2221345) b!5233431))

(assert (= (and b!5233431 res!2221346) b!5233435))

(assert (= (and b!5233435 res!2221347) b!5233439))

(assert (= (and d!1687164 (not res!2221348)) b!5233437))

(declare-fun m!6279040 () Bool)

(assert (=> b!5233439 m!6279040))

(declare-fun m!6279042 () Bool)

(assert (=> b!5233439 m!6279042))

(assert (=> b!5233435 m!6279040))

(declare-fun m!6279044 () Bool)

(assert (=> b!5233435 m!6279044))

(declare-fun m!6279046 () Bool)

(assert (=> b!5233437 m!6279046))

(declare-fun m!6279048 () Bool)

(assert (=> b!5233432 m!6279048))

(assert (=> b!5233431 m!6279040))

(declare-fun m!6279050 () Bool)

(assert (=> b!5233431 m!6279050))

(assert (=> d!1687164 m!6279046))

(assert (=> d!1687164 m!6278264))

(declare-fun m!6279052 () Bool)

(assert (=> d!1687164 m!6279052))

(assert (=> d!1687164 m!6278262))

(assert (=> b!5233438 m!6278264))

(declare-fun m!6279054 () Bool)

(assert (=> b!5233438 m!6279054))

(assert (=> b!5233438 m!6279054))

(declare-fun m!6279056 () Bool)

(assert (=> b!5233438 m!6279056))

(assert (=> b!5233438 m!6278264))

(declare-fun m!6279058 () Bool)

(assert (=> b!5233438 m!6279058))

(assert (=> b!5233438 m!6279054))

(declare-fun m!6279060 () Bool)

(assert (=> b!5233438 m!6279060))

(assert (=> b!5232614 d!1687164))

(declare-fun d!1687166 () Bool)

(assert (=> d!1687166 (= (Exists!2006 (ite c!903772 lambda!262892 lambda!262893)) (choose!38923 (ite c!903772 lambda!262892 lambda!262893)))))

(declare-fun bs!1214911 () Bool)

(assert (= bs!1214911 d!1687166))

(declare-fun m!6279062 () Bool)

(assert (=> bs!1214911 m!6279062))

(assert (=> bm!370098 d!1687166))

(declare-fun d!1687168 () Bool)

(declare-fun lambda!262961 () Int)

(declare-fun exists!1979 ((InoxSet Context!8418) Int) Bool)

(assert (=> d!1687168 (= (nullableZipper!1246 ((_ map or) lt!2145576 lt!2145570)) (exists!1979 ((_ map or) lt!2145576 lt!2145570) lambda!262961))))

(declare-fun bs!1214912 () Bool)

(assert (= bs!1214912 d!1687168))

(declare-fun m!6279064 () Bool)

(assert (=> bs!1214912 m!6279064))

(assert (=> b!5232492 d!1687168))

(declare-fun bs!1214913 () Bool)

(declare-fun d!1687170 () Bool)

(assert (= bs!1214913 (and d!1687170 d!1686716)))

(declare-fun lambda!262962 () Int)

(assert (=> bs!1214913 (= lambda!262962 lambda!262894)))

(declare-fun bs!1214914 () Bool)

(assert (= bs!1214914 (and d!1687170 b!5231825)))

(assert (=> bs!1214914 (= lambda!262962 lambda!262855)))

(declare-fun bs!1214915 () Bool)

(assert (= bs!1214915 (and d!1687170 d!1686718)))

(assert (=> bs!1214915 (= lambda!262962 lambda!262897)))

(declare-fun bs!1214916 () Bool)

(assert (= bs!1214916 (and d!1687170 d!1686748)))

(assert (=> bs!1214916 (= lambda!262962 lambda!262903)))

(declare-fun bs!1214917 () Bool)

(assert (= bs!1214917 (and d!1687170 d!1686746)))

(assert (=> bs!1214917 (= lambda!262962 lambda!262900)))

(declare-fun bs!1214918 () Bool)

(assert (= bs!1214918 (and d!1687170 d!1686754)))

(assert (=> bs!1214918 (= lambda!262962 lambda!262904)))

(declare-fun bs!1214919 () Bool)

(assert (= bs!1214919 (and d!1687170 d!1686658)))

(assert (=> bs!1214919 (= lambda!262962 lambda!262886)))

(declare-fun b!5233440 () Bool)

(declare-fun e!3256721 () Bool)

(declare-fun e!3256719 () Bool)

(assert (=> b!5233440 (= e!3256721 e!3256719)))

(declare-fun c!904050 () Bool)

(assert (=> b!5233440 (= c!904050 (isEmpty!32575 (tail!10308 (t!373953 (exprs!4709 (h!67100 zl!343))))))))

(declare-fun b!5233441 () Bool)

(declare-fun lt!2145754 () Regex!14825)

(assert (=> b!5233441 (= e!3256719 (isConcat!305 lt!2145754))))

(declare-fun b!5233442 () Bool)

(declare-fun e!3256722 () Regex!14825)

(assert (=> b!5233442 (= e!3256722 (h!67098 (t!373953 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5233443 () Bool)

(declare-fun e!3256724 () Bool)

(assert (=> b!5233443 (= e!3256724 (isEmpty!32575 (t!373953 (t!373953 (exprs!4709 (h!67100 zl!343))))))))

(declare-fun b!5233444 () Bool)

(declare-fun e!3256720 () Regex!14825)

(assert (=> b!5233444 (= e!3256722 e!3256720)))

(declare-fun c!904049 () Bool)

(assert (=> b!5233444 (= c!904049 ((_ is Cons!60650) (t!373953 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5233445 () Bool)

(assert (=> b!5233445 (= e!3256720 EmptyExpr!14825)))

(declare-fun e!3256723 () Bool)

(assert (=> d!1687170 e!3256723))

(declare-fun res!2221349 () Bool)

(assert (=> d!1687170 (=> (not res!2221349) (not e!3256723))))

(assert (=> d!1687170 (= res!2221349 (validRegex!6561 lt!2145754))))

(assert (=> d!1687170 (= lt!2145754 e!3256722)))

(declare-fun c!904047 () Bool)

(assert (=> d!1687170 (= c!904047 e!3256724)))

(declare-fun res!2221350 () Bool)

(assert (=> d!1687170 (=> (not res!2221350) (not e!3256724))))

(assert (=> d!1687170 (= res!2221350 ((_ is Cons!60650) (t!373953 (exprs!4709 (h!67100 zl!343)))))))

(assert (=> d!1687170 (forall!14255 (t!373953 (exprs!4709 (h!67100 zl!343))) lambda!262962)))

(assert (=> d!1687170 (= (generalisedConcat!494 (t!373953 (exprs!4709 (h!67100 zl!343)))) lt!2145754)))

(declare-fun b!5233446 () Bool)

(assert (=> b!5233446 (= e!3256721 (isEmptyExpr!782 lt!2145754))))

(declare-fun b!5233447 () Bool)

(assert (=> b!5233447 (= e!3256719 (= lt!2145754 (head!11211 (t!373953 (exprs!4709 (h!67100 zl!343))))))))

(declare-fun b!5233448 () Bool)

(assert (=> b!5233448 (= e!3256723 e!3256721)))

(declare-fun c!904048 () Bool)

(assert (=> b!5233448 (= c!904048 (isEmpty!32575 (t!373953 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5233449 () Bool)

(assert (=> b!5233449 (= e!3256720 (Concat!23670 (h!67098 (t!373953 (exprs!4709 (h!67100 zl!343)))) (generalisedConcat!494 (t!373953 (t!373953 (exprs!4709 (h!67100 zl!343)))))))))

(assert (= (and d!1687170 res!2221350) b!5233443))

(assert (= (and d!1687170 c!904047) b!5233442))

(assert (= (and d!1687170 (not c!904047)) b!5233444))

(assert (= (and b!5233444 c!904049) b!5233449))

(assert (= (and b!5233444 (not c!904049)) b!5233445))

(assert (= (and d!1687170 res!2221349) b!5233448))

(assert (= (and b!5233448 c!904048) b!5233446))

(assert (= (and b!5233448 (not c!904048)) b!5233440))

(assert (= (and b!5233440 c!904050) b!5233447))

(assert (= (and b!5233440 (not c!904050)) b!5233441))

(declare-fun m!6279066 () Bool)

(assert (=> b!5233440 m!6279066))

(assert (=> b!5233440 m!6279066))

(declare-fun m!6279068 () Bool)

(assert (=> b!5233440 m!6279068))

(assert (=> b!5233448 m!6277612))

(declare-fun m!6279070 () Bool)

(assert (=> d!1687170 m!6279070))

(declare-fun m!6279072 () Bool)

(assert (=> d!1687170 m!6279072))

(declare-fun m!6279074 () Bool)

(assert (=> b!5233443 m!6279074))

(declare-fun m!6279076 () Bool)

(assert (=> b!5233446 m!6279076))

(declare-fun m!6279078 () Bool)

(assert (=> b!5233447 m!6279078))

(declare-fun m!6279080 () Bool)

(assert (=> b!5233449 m!6279080))

(declare-fun m!6279082 () Bool)

(assert (=> b!5233441 m!6279082))

(assert (=> b!5232250 d!1687170))

(assert (=> d!1686714 d!1686712))

(assert (=> d!1686714 d!1686772))

(declare-fun d!1687172 () Bool)

(assert (=> d!1687172 (= (matchR!7010 lt!2145560 s!2326) (matchZipper!1069 lt!2145587 s!2326))))

(assert (=> d!1687172 true))

(declare-fun _$44!1374 () Unit!152614)

(assert (=> d!1687172 (= (choose!38920 lt!2145587 lt!2145578 lt!2145560 s!2326) _$44!1374)))

(declare-fun bs!1214920 () Bool)

(assert (= bs!1214920 d!1687172))

(assert (=> bs!1214920 m!6277600))

(assert (=> bs!1214920 m!6277562))

(assert (=> d!1686714 d!1687172))

(declare-fun bm!370267 () Bool)

(declare-fun call!370274 () Bool)

(declare-fun c!904052 () Bool)

(assert (=> bm!370267 (= call!370274 (validRegex!6561 (ite c!904052 (regTwo!30163 lt!2145560) (regTwo!30162 lt!2145560))))))

(declare-fun b!5233450 () Bool)

(declare-fun e!3256726 () Bool)

(declare-fun e!3256725 () Bool)

(assert (=> b!5233450 (= e!3256726 e!3256725)))

(declare-fun c!904051 () Bool)

(assert (=> b!5233450 (= c!904051 ((_ is Star!14825) lt!2145560))))

(declare-fun b!5233451 () Bool)

(declare-fun e!3256728 () Bool)

(assert (=> b!5233451 (= e!3256728 call!370274)))

(declare-fun b!5233452 () Bool)

(declare-fun e!3256731 () Bool)

(assert (=> b!5233452 (= e!3256731 call!370274)))

(declare-fun b!5233453 () Bool)

(declare-fun e!3256730 () Bool)

(assert (=> b!5233453 (= e!3256725 e!3256730)))

(assert (=> b!5233453 (= c!904052 ((_ is Union!14825) lt!2145560))))

(declare-fun bm!370268 () Bool)

(declare-fun call!370273 () Bool)

(assert (=> bm!370268 (= call!370273 (validRegex!6561 (ite c!904051 (reg!15154 lt!2145560) (ite c!904052 (regOne!30163 lt!2145560) (regOne!30162 lt!2145560)))))))

(declare-fun b!5233454 () Bool)

(declare-fun e!3256727 () Bool)

(assert (=> b!5233454 (= e!3256727 call!370273)))

(declare-fun b!5233455 () Bool)

(declare-fun res!2221351 () Bool)

(declare-fun e!3256729 () Bool)

(assert (=> b!5233455 (=> res!2221351 e!3256729)))

(assert (=> b!5233455 (= res!2221351 (not ((_ is Concat!23670) lt!2145560)))))

(assert (=> b!5233455 (= e!3256730 e!3256729)))

(declare-fun b!5233456 () Bool)

(assert (=> b!5233456 (= e!3256725 e!3256727)))

(declare-fun res!2221354 () Bool)

(assert (=> b!5233456 (= res!2221354 (not (nullable!4994 (reg!15154 lt!2145560))))))

(assert (=> b!5233456 (=> (not res!2221354) (not e!3256727))))

(declare-fun b!5233457 () Bool)

(assert (=> b!5233457 (= e!3256729 e!3256731)))

(declare-fun res!2221352 () Bool)

(assert (=> b!5233457 (=> (not res!2221352) (not e!3256731))))

(declare-fun call!370272 () Bool)

(assert (=> b!5233457 (= res!2221352 call!370272)))

(declare-fun bm!370269 () Bool)

(assert (=> bm!370269 (= call!370272 call!370273)))

(declare-fun d!1687174 () Bool)

(declare-fun res!2221353 () Bool)

(assert (=> d!1687174 (=> res!2221353 e!3256726)))

(assert (=> d!1687174 (= res!2221353 ((_ is ElementMatch!14825) lt!2145560))))

(assert (=> d!1687174 (= (validRegex!6561 lt!2145560) e!3256726)))

(declare-fun b!5233458 () Bool)

(declare-fun res!2221355 () Bool)

(assert (=> b!5233458 (=> (not res!2221355) (not e!3256728))))

(assert (=> b!5233458 (= res!2221355 call!370272)))

(assert (=> b!5233458 (= e!3256730 e!3256728)))

(assert (= (and d!1687174 (not res!2221353)) b!5233450))

(assert (= (and b!5233450 c!904051) b!5233456))

(assert (= (and b!5233450 (not c!904051)) b!5233453))

(assert (= (and b!5233456 res!2221354) b!5233454))

(assert (= (and b!5233453 c!904052) b!5233458))

(assert (= (and b!5233453 (not c!904052)) b!5233455))

(assert (= (and b!5233458 res!2221355) b!5233451))

(assert (= (and b!5233455 (not res!2221351)) b!5233457))

(assert (= (and b!5233457 res!2221352) b!5233452))

(assert (= (or b!5233451 b!5233452) bm!370267))

(assert (= (or b!5233458 b!5233457) bm!370269))

(assert (= (or b!5233454 bm!370269) bm!370268))

(declare-fun m!6279084 () Bool)

(assert (=> bm!370267 m!6279084))

(declare-fun m!6279086 () Bool)

(assert (=> bm!370268 m!6279086))

(declare-fun m!6279088 () Bool)

(assert (=> b!5233456 m!6279088))

(assert (=> d!1686714 d!1687174))

(assert (=> bs!1214627 d!1686744))

(declare-fun d!1687176 () Bool)

(assert (=> d!1687176 (= (nullable!4994 (h!67098 (exprs!4709 lt!2145585))) (nullableFct!1398 (h!67098 (exprs!4709 lt!2145585))))))

(declare-fun bs!1214921 () Bool)

(assert (= bs!1214921 d!1687176))

(declare-fun m!6279090 () Bool)

(assert (=> bs!1214921 m!6279090))

(assert (=> b!5232523 d!1687176))

(declare-fun d!1687178 () Bool)

(assert (=> d!1687178 (= (nullable!4994 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292)))) (nullableFct!1398 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292)))))))

(declare-fun bs!1214922 () Bool)

(assert (= bs!1214922 d!1687178))

(declare-fun m!6279092 () Bool)

(assert (=> bs!1214922 m!6279092))

(assert (=> b!5232336 d!1687178))

(declare-fun bs!1214923 () Bool)

(declare-fun d!1687180 () Bool)

(assert (= bs!1214923 (and d!1687180 d!1687168)))

(declare-fun lambda!262963 () Int)

(assert (=> bs!1214923 (= lambda!262963 lambda!262961)))

(assert (=> d!1687180 (= (nullableZipper!1246 lt!2145570) (exists!1979 lt!2145570 lambda!262963))))

(declare-fun bs!1214924 () Bool)

(assert (= bs!1214924 d!1687180))

(declare-fun m!6279094 () Bool)

(assert (=> bs!1214924 m!6279094))

(assert (=> b!5232457 d!1687180))

(assert (=> b!5232451 d!1686708))

(declare-fun d!1687182 () Bool)

(declare-fun lt!2145757 () Int)

(assert (=> d!1687182 (>= lt!2145757 0)))

(declare-fun e!3256734 () Int)

(assert (=> d!1687182 (= lt!2145757 e!3256734)))

(declare-fun c!904056 () Bool)

(assert (=> d!1687182 (= c!904056 ((_ is Cons!60650) (exprs!4709 (h!67100 zl!343))))))

(assert (=> d!1687182 (= (contextDepthTotal!4 (h!67100 zl!343)) lt!2145757)))

(declare-fun b!5233463 () Bool)

(declare-fun regexDepthTotal!4 (Regex!14825) Int)

(assert (=> b!5233463 (= e!3256734 (+ (regexDepthTotal!4 (h!67098 (exprs!4709 (h!67100 zl!343)))) (contextDepthTotal!4 (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343)))))))))

(declare-fun b!5233464 () Bool)

(assert (=> b!5233464 (= e!3256734 1)))

(assert (= (and d!1687182 c!904056) b!5233463))

(assert (= (and d!1687182 (not c!904056)) b!5233464))

(declare-fun m!6279096 () Bool)

(assert (=> b!5233463 m!6279096))

(declare-fun m!6279098 () Bool)

(assert (=> b!5233463 m!6279098))

(assert (=> b!5232494 d!1687182))

(declare-fun d!1687184 () Bool)

(declare-fun lt!2145758 () Int)

(assert (=> d!1687184 (>= lt!2145758 0)))

(declare-fun e!3256735 () Int)

(assert (=> d!1687184 (= lt!2145758 e!3256735)))

(declare-fun c!904057 () Bool)

(assert (=> d!1687184 (= c!904057 ((_ is Cons!60652) (t!373955 zl!343)))))

(assert (=> d!1687184 (= (zipperDepthTotal!6 (t!373955 zl!343)) lt!2145758)))

(declare-fun b!5233465 () Bool)

(assert (=> b!5233465 (= e!3256735 (+ (contextDepthTotal!4 (h!67100 (t!373955 zl!343))) (zipperDepthTotal!6 (t!373955 (t!373955 zl!343)))))))

(declare-fun b!5233466 () Bool)

(assert (=> b!5233466 (= e!3256735 0)))

(assert (= (and d!1687184 c!904057) b!5233465))

(assert (= (and d!1687184 (not c!904057)) b!5233466))

(declare-fun m!6279100 () Bool)

(assert (=> b!5233465 m!6279100))

(declare-fun m!6279102 () Bool)

(assert (=> b!5233465 m!6279102))

(assert (=> b!5232494 d!1687184))

(declare-fun bs!1214925 () Bool)

(declare-fun d!1687186 () Bool)

(assert (= bs!1214925 (and d!1687186 d!1686716)))

(declare-fun lambda!262964 () Int)

(assert (=> bs!1214925 (= lambda!262964 lambda!262894)))

(declare-fun bs!1214926 () Bool)

(assert (= bs!1214926 (and d!1687186 b!5231825)))

(assert (=> bs!1214926 (= lambda!262964 lambda!262855)))

(declare-fun bs!1214927 () Bool)

(assert (= bs!1214927 (and d!1687186 d!1687170)))

(assert (=> bs!1214927 (= lambda!262964 lambda!262962)))

(declare-fun bs!1214928 () Bool)

(assert (= bs!1214928 (and d!1687186 d!1686718)))

(assert (=> bs!1214928 (= lambda!262964 lambda!262897)))

(declare-fun bs!1214929 () Bool)

(assert (= bs!1214929 (and d!1687186 d!1686748)))

(assert (=> bs!1214929 (= lambda!262964 lambda!262903)))

(declare-fun bs!1214930 () Bool)

(assert (= bs!1214930 (and d!1687186 d!1686746)))

(assert (=> bs!1214930 (= lambda!262964 lambda!262900)))

(declare-fun bs!1214931 () Bool)

(assert (= bs!1214931 (and d!1687186 d!1686754)))

(assert (=> bs!1214931 (= lambda!262964 lambda!262904)))

(declare-fun bs!1214932 () Bool)

(assert (= bs!1214932 (and d!1687186 d!1686658)))

(assert (=> bs!1214932 (= lambda!262964 lambda!262886)))

(assert (=> d!1687186 (= (inv!80309 (h!67100 (t!373955 zl!343))) (forall!14255 (exprs!4709 (h!67100 (t!373955 zl!343))) lambda!262964))))

(declare-fun bs!1214933 () Bool)

(assert (= bs!1214933 d!1687186))

(declare-fun m!6279104 () Bool)

(assert (=> bs!1214933 m!6279104))

(assert (=> b!5232676 d!1687186))

(declare-fun d!1687188 () Bool)

(assert (=> d!1687188 (= (isEmpty!32579 (tail!10309 s!2326)) ((_ is Nil!60651) (tail!10309 s!2326)))))

(assert (=> b!5232436 d!1687188))

(declare-fun d!1687190 () Bool)

(assert (=> d!1687190 (= (tail!10309 s!2326) (t!373954 s!2326))))

(assert (=> b!5232436 d!1687190))

(declare-fun d!1687192 () Bool)

(assert (=> d!1687192 (= ($colon$colon!1296 (exprs!4709 lt!2145585) (ite (or c!903753 c!903755) (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (regOne!30163 (regOne!30162 r!7292)))) (Cons!60650 (ite (or c!903753 c!903755) (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (regOne!30163 (regOne!30162 r!7292))) (exprs!4709 lt!2145585)))))

(assert (=> bm!370089 d!1687192))

(declare-fun d!1687194 () Bool)

(assert (=> d!1687194 (= (nullable!4994 (reg!15154 r!7292)) (nullableFct!1398 (reg!15154 r!7292)))))

(declare-fun bs!1214934 () Bool)

(assert (= bs!1214934 d!1687194))

(declare-fun m!6279106 () Bool)

(assert (=> bs!1214934 m!6279106))

(assert (=> b!5232657 d!1687194))

(declare-fun d!1687196 () Bool)

(assert (=> d!1687196 (= (isEmpty!32579 (t!373954 s!2326)) ((_ is Nil!60651) (t!373954 s!2326)))))

(assert (=> d!1686704 d!1687196))

(declare-fun d!1687198 () Bool)

(assert (=> d!1687198 (= (isUnion!223 lt!2145688) ((_ is Union!14825) lt!2145688))))

(assert (=> b!5232557 d!1687198))

(declare-fun d!1687200 () Bool)

(assert (=> d!1687200 (= (Exists!2006 lambda!262912) (choose!38923 lambda!262912))))

(declare-fun bs!1214935 () Bool)

(assert (= bs!1214935 d!1687200))

(declare-fun m!6279108 () Bool)

(assert (=> bs!1214935 m!6279108))

(assert (=> d!1686786 d!1687200))

(declare-fun d!1687202 () Bool)

(assert (=> d!1687202 (= (Exists!2006 lambda!262913) (choose!38923 lambda!262913))))

(declare-fun bs!1214936 () Bool)

(assert (= bs!1214936 d!1687202))

(declare-fun m!6279110 () Bool)

(assert (=> bs!1214936 m!6279110))

(assert (=> d!1686786 d!1687202))

(declare-fun bs!1214937 () Bool)

(declare-fun d!1687204 () Bool)

(assert (= bs!1214937 (and d!1687204 d!1686784)))

(declare-fun lambda!262969 () Int)

(assert (=> bs!1214937 (= lambda!262969 lambda!262907)))

(declare-fun bs!1214938 () Bool)

(assert (= bs!1214938 (and d!1687204 d!1686786)))

(assert (=> bs!1214938 (= lambda!262969 lambda!262912)))

(assert (=> bs!1214938 (not (= lambda!262969 lambda!262913))))

(declare-fun bs!1214939 () Bool)

(assert (= bs!1214939 (and d!1687204 b!5232398)))

(assert (=> bs!1214939 (not (= lambda!262969 lambda!262893))))

(declare-fun bs!1214940 () Bool)

(assert (= bs!1214940 (and d!1687204 b!5231833)))

(assert (=> bs!1214940 (= lambda!262969 lambda!262852)))

(assert (=> bs!1214940 (not (= lambda!262969 lambda!262853))))

(declare-fun bs!1214941 () Bool)

(assert (= bs!1214941 (and d!1687204 b!5232393)))

(assert (=> bs!1214941 (not (= lambda!262969 lambda!262892))))

(assert (=> d!1687204 true))

(assert (=> d!1687204 true))

(assert (=> d!1687204 true))

(declare-fun lambda!262970 () Int)

(assert (=> bs!1214937 (not (= lambda!262970 lambda!262907))))

(assert (=> bs!1214938 (not (= lambda!262970 lambda!262912))))

(assert (=> bs!1214938 (= lambda!262970 lambda!262913)))

(assert (=> bs!1214939 (= lambda!262970 lambda!262893)))

(assert (=> bs!1214940 (not (= lambda!262970 lambda!262852))))

(declare-fun bs!1214942 () Bool)

(assert (= bs!1214942 d!1687204))

(assert (=> bs!1214942 (not (= lambda!262970 lambda!262969))))

(assert (=> bs!1214940 (= lambda!262970 lambda!262853)))

(assert (=> bs!1214941 (not (= lambda!262970 lambda!262892))))

(assert (=> d!1687204 true))

(assert (=> d!1687204 true))

(assert (=> d!1687204 true))

(assert (=> d!1687204 (= (Exists!2006 lambda!262969) (Exists!2006 lambda!262970))))

(assert (=> d!1687204 true))

(declare-fun _$90!1048 () Unit!152614)

(assert (=> d!1687204 (= (choose!38925 (regOne!30162 r!7292) (regTwo!30162 r!7292) s!2326) _$90!1048)))

(declare-fun m!6279112 () Bool)

(assert (=> bs!1214942 m!6279112))

(declare-fun m!6279114 () Bool)

(assert (=> bs!1214942 m!6279114))

(assert (=> d!1686786 d!1687204))

(declare-fun bm!370270 () Bool)

(declare-fun call!370277 () Bool)

(declare-fun c!904059 () Bool)

(assert (=> bm!370270 (= call!370277 (validRegex!6561 (ite c!904059 (regTwo!30163 (regOne!30162 r!7292)) (regTwo!30162 (regOne!30162 r!7292)))))))

(declare-fun b!5233475 () Bool)

(declare-fun e!3256741 () Bool)

(declare-fun e!3256740 () Bool)

(assert (=> b!5233475 (= e!3256741 e!3256740)))

(declare-fun c!904058 () Bool)

(assert (=> b!5233475 (= c!904058 ((_ is Star!14825) (regOne!30162 r!7292)))))

(declare-fun b!5233476 () Bool)

(declare-fun e!3256743 () Bool)

(assert (=> b!5233476 (= e!3256743 call!370277)))

(declare-fun b!5233477 () Bool)

(declare-fun e!3256746 () Bool)

(assert (=> b!5233477 (= e!3256746 call!370277)))

(declare-fun b!5233478 () Bool)

(declare-fun e!3256745 () Bool)

(assert (=> b!5233478 (= e!3256740 e!3256745)))

(assert (=> b!5233478 (= c!904059 ((_ is Union!14825) (regOne!30162 r!7292)))))

(declare-fun call!370276 () Bool)

(declare-fun bm!370271 () Bool)

(assert (=> bm!370271 (= call!370276 (validRegex!6561 (ite c!904058 (reg!15154 (regOne!30162 r!7292)) (ite c!904059 (regOne!30163 (regOne!30162 r!7292)) (regOne!30162 (regOne!30162 r!7292))))))))

(declare-fun b!5233479 () Bool)

(declare-fun e!3256742 () Bool)

(assert (=> b!5233479 (= e!3256742 call!370276)))

(declare-fun b!5233480 () Bool)

(declare-fun res!2221364 () Bool)

(declare-fun e!3256744 () Bool)

(assert (=> b!5233480 (=> res!2221364 e!3256744)))

(assert (=> b!5233480 (= res!2221364 (not ((_ is Concat!23670) (regOne!30162 r!7292))))))

(assert (=> b!5233480 (= e!3256745 e!3256744)))

(declare-fun b!5233481 () Bool)

(assert (=> b!5233481 (= e!3256740 e!3256742)))

(declare-fun res!2221367 () Bool)

(assert (=> b!5233481 (= res!2221367 (not (nullable!4994 (reg!15154 (regOne!30162 r!7292)))))))

(assert (=> b!5233481 (=> (not res!2221367) (not e!3256742))))

(declare-fun b!5233482 () Bool)

(assert (=> b!5233482 (= e!3256744 e!3256746)))

(declare-fun res!2221365 () Bool)

(assert (=> b!5233482 (=> (not res!2221365) (not e!3256746))))

(declare-fun call!370275 () Bool)

(assert (=> b!5233482 (= res!2221365 call!370275)))

(declare-fun bm!370272 () Bool)

(assert (=> bm!370272 (= call!370275 call!370276)))

(declare-fun d!1687206 () Bool)

(declare-fun res!2221366 () Bool)

(assert (=> d!1687206 (=> res!2221366 e!3256741)))

(assert (=> d!1687206 (= res!2221366 ((_ is ElementMatch!14825) (regOne!30162 r!7292)))))

(assert (=> d!1687206 (= (validRegex!6561 (regOne!30162 r!7292)) e!3256741)))

(declare-fun b!5233483 () Bool)

(declare-fun res!2221368 () Bool)

(assert (=> b!5233483 (=> (not res!2221368) (not e!3256743))))

(assert (=> b!5233483 (= res!2221368 call!370275)))

(assert (=> b!5233483 (= e!3256745 e!3256743)))

(assert (= (and d!1687206 (not res!2221366)) b!5233475))

(assert (= (and b!5233475 c!904058) b!5233481))

(assert (= (and b!5233475 (not c!904058)) b!5233478))

(assert (= (and b!5233481 res!2221367) b!5233479))

(assert (= (and b!5233478 c!904059) b!5233483))

(assert (= (and b!5233478 (not c!904059)) b!5233480))

(assert (= (and b!5233483 res!2221368) b!5233476))

(assert (= (and b!5233480 (not res!2221364)) b!5233482))

(assert (= (and b!5233482 res!2221365) b!5233477))

(assert (= (or b!5233476 b!5233477) bm!370270))

(assert (= (or b!5233483 b!5233482) bm!370272))

(assert (= (or b!5233479 bm!370272) bm!370271))

(declare-fun m!6279116 () Bool)

(assert (=> bm!370270 m!6279116))

(declare-fun m!6279118 () Bool)

(assert (=> bm!370271 m!6279118))

(declare-fun m!6279120 () Bool)

(assert (=> b!5233481 m!6279120))

(assert (=> d!1686786 d!1687206))

(assert (=> d!1686702 d!1686704))

(assert (=> d!1686702 d!1686700))

(declare-fun d!1687208 () Bool)

(declare-fun e!3256749 () Bool)

(assert (=> d!1687208 (= (matchZipper!1069 ((_ map or) lt!2145591 lt!2145570) (t!373954 s!2326)) e!3256749)))

(declare-fun res!2221371 () Bool)

(assert (=> d!1687208 (=> res!2221371 e!3256749)))

(assert (=> d!1687208 (= res!2221371 (matchZipper!1069 lt!2145591 (t!373954 s!2326)))))

(assert (=> d!1687208 true))

(declare-fun _$48!875 () Unit!152614)

(assert (=> d!1687208 (= (choose!38918 lt!2145591 lt!2145570 (t!373954 s!2326)) _$48!875)))

(declare-fun b!5233486 () Bool)

(assert (=> b!5233486 (= e!3256749 (matchZipper!1069 lt!2145570 (t!373954 s!2326)))))

(assert (= (and d!1687208 (not res!2221371)) b!5233486))

(assert (=> d!1687208 m!6277590))

(assert (=> d!1687208 m!6277588))

(assert (=> b!5233486 m!6277546))

(assert (=> d!1686702 d!1687208))

(declare-fun d!1687210 () Bool)

(assert (=> d!1687210 (= (head!11212 s!2326) (h!67099 s!2326))))

(assert (=> b!5232440 d!1687210))

(declare-fun d!1687212 () Bool)

(assert (=> d!1687212 (= (nullable!4994 (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) (nullableFct!1398 (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))))))

(declare-fun bs!1214943 () Bool)

(assert (= bs!1214943 d!1687212))

(declare-fun m!6279122 () Bool)

(assert (=> bs!1214943 m!6279122))

(assert (=> b!5232528 d!1687212))

(declare-fun b!5233487 () Bool)

(declare-fun e!3256754 () (InoxSet Context!8418))

(declare-fun e!3256755 () (InoxSet Context!8418))

(assert (=> b!5233487 (= e!3256754 e!3256755)))

(declare-fun c!904062 () Bool)

(assert (=> b!5233487 (= c!904062 ((_ is Concat!23670) (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))))))))

(declare-fun b!5233488 () Bool)

(declare-fun call!370278 () (InoxSet Context!8418))

(assert (=> b!5233488 (= e!3256755 call!370278)))

(declare-fun bm!370273 () Bool)

(declare-fun call!370279 () (InoxSet Context!8418))

(declare-fun call!370283 () (InoxSet Context!8418))

(assert (=> bm!370273 (= call!370279 call!370283)))

(declare-fun d!1687214 () Bool)

(declare-fun c!904064 () Bool)

(assert (=> d!1687214 (= c!904064 (and ((_ is ElementMatch!14825) (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))))) (= (c!903601 (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))))) (h!67099 s!2326))))))

(declare-fun e!3256750 () (InoxSet Context!8418))

(assert (=> d!1687214 (= (derivationStepZipperDown!273 (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292)))) (ite c!903751 lt!2145585 (Context!8419 call!370089)) (h!67099 s!2326)) e!3256750)))

(declare-fun b!5233489 () Bool)

(declare-fun c!904061 () Bool)

(assert (=> b!5233489 (= c!904061 ((_ is Star!14825) (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))))))))

(declare-fun e!3256752 () (InoxSet Context!8418))

(assert (=> b!5233489 (= e!3256755 e!3256752)))

(declare-fun b!5233490 () Bool)

(declare-fun c!904060 () Bool)

(declare-fun e!3256753 () Bool)

(assert (=> b!5233490 (= c!904060 e!3256753)))

(declare-fun res!2221372 () Bool)

(assert (=> b!5233490 (=> (not res!2221372) (not e!3256753))))

(assert (=> b!5233490 (= res!2221372 ((_ is Concat!23670) (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))))))))

(declare-fun e!3256751 () (InoxSet Context!8418))

(assert (=> b!5233490 (= e!3256751 e!3256754)))

(declare-fun b!5233491 () Bool)

(assert (=> b!5233491 (= e!3256750 (store ((as const (Array Context!8418 Bool)) false) (ite c!903751 lt!2145585 (Context!8419 call!370089)) true))))

(declare-fun b!5233492 () Bool)

(declare-fun call!370282 () (InoxSet Context!8418))

(assert (=> b!5233492 (= e!3256754 ((_ map or) call!370282 call!370279))))

(declare-fun bm!370274 () Bool)

(declare-fun call!370280 () List!60774)

(assert (=> bm!370274 (= call!370280 ($colon$colon!1296 (exprs!4709 (ite c!903751 lt!2145585 (Context!8419 call!370089))) (ite (or c!904060 c!904062) (regTwo!30162 (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))))) (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292)))))))))

(declare-fun b!5233493 () Bool)

(assert (=> b!5233493 (= e!3256753 (nullable!4994 (regOne!30162 (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292)))))))))

(declare-fun b!5233494 () Bool)

(assert (=> b!5233494 (= e!3256750 e!3256751)))

(declare-fun c!904063 () Bool)

(assert (=> b!5233494 (= c!904063 ((_ is Union!14825) (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))))))))

(declare-fun b!5233495 () Bool)

(assert (=> b!5233495 (= e!3256751 ((_ map or) call!370283 call!370282))))

(declare-fun b!5233496 () Bool)

(assert (=> b!5233496 (= e!3256752 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233497 () Bool)

(assert (=> b!5233497 (= e!3256752 call!370278)))

(declare-fun call!370281 () List!60774)

(declare-fun bm!370275 () Bool)

(assert (=> bm!370275 (= call!370283 (derivationStepZipperDown!273 (ite c!904063 (regOne!30163 (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))))) (ite c!904060 (regTwo!30162 (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))))) (ite c!904062 (regOne!30162 (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))))) (reg!15154 (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292)))))))) (ite (or c!904063 c!904060) (ite c!903751 lt!2145585 (Context!8419 call!370089)) (Context!8419 call!370281)) (h!67099 s!2326)))))

(declare-fun bm!370276 () Bool)

(assert (=> bm!370276 (= call!370281 call!370280)))

(declare-fun bm!370277 () Bool)

(assert (=> bm!370277 (= call!370278 call!370279)))

(declare-fun bm!370278 () Bool)

(assert (=> bm!370278 (= call!370282 (derivationStepZipperDown!273 (ite c!904063 (regTwo!30163 (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))))) (regOne!30162 (ite c!903751 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292)))))) (ite c!904063 (ite c!903751 lt!2145585 (Context!8419 call!370089)) (Context!8419 call!370280)) (h!67099 s!2326)))))

(assert (= (and d!1687214 c!904064) b!5233491))

(assert (= (and d!1687214 (not c!904064)) b!5233494))

(assert (= (and b!5233494 c!904063) b!5233495))

(assert (= (and b!5233494 (not c!904063)) b!5233490))

(assert (= (and b!5233490 res!2221372) b!5233493))

(assert (= (and b!5233490 c!904060) b!5233492))

(assert (= (and b!5233490 (not c!904060)) b!5233487))

(assert (= (and b!5233487 c!904062) b!5233488))

(assert (= (and b!5233487 (not c!904062)) b!5233489))

(assert (= (and b!5233489 c!904061) b!5233497))

(assert (= (and b!5233489 (not c!904061)) b!5233496))

(assert (= (or b!5233488 b!5233497) bm!370276))

(assert (= (or b!5233488 b!5233497) bm!370277))

(assert (= (or b!5233492 bm!370276) bm!370274))

(assert (= (or b!5233492 bm!370277) bm!370273))

(assert (= (or b!5233495 b!5233492) bm!370278))

(assert (= (or b!5233495 bm!370273) bm!370275))

(declare-fun m!6279124 () Bool)

(assert (=> b!5233491 m!6279124))

(declare-fun m!6279126 () Bool)

(assert (=> b!5233493 m!6279126))

(declare-fun m!6279128 () Bool)

(assert (=> bm!370278 m!6279128))

(declare-fun m!6279130 () Bool)

(assert (=> bm!370274 m!6279130))

(declare-fun m!6279132 () Bool)

(assert (=> bm!370275 m!6279132))

(assert (=> bm!370087 d!1687214))

(assert (=> d!1686750 d!1686752))

(assert (=> d!1686750 d!1686792))

(declare-fun e!3256756 () Bool)

(declare-fun d!1687216 () Bool)

(assert (=> d!1687216 (= (matchZipper!1069 ((_ map or) lt!2145567 lt!2145570) (t!373954 s!2326)) e!3256756)))

(declare-fun res!2221373 () Bool)

(assert (=> d!1687216 (=> res!2221373 e!3256756)))

(assert (=> d!1687216 (= res!2221373 (matchZipper!1069 lt!2145567 (t!373954 s!2326)))))

(assert (=> d!1687216 true))

(declare-fun _$48!876 () Unit!152614)

(assert (=> d!1687216 (= (choose!38918 lt!2145567 lt!2145570 (t!373954 s!2326)) _$48!876)))

(declare-fun b!5233498 () Bool)

(assert (=> b!5233498 (= e!3256756 (matchZipper!1069 lt!2145570 (t!373954 s!2326)))))

(assert (= (and d!1687216 (not res!2221373)) b!5233498))

(assert (=> d!1687216 m!6277638))

(assert (=> d!1687216 m!6277582))

(assert (=> b!5233498 m!6277546))

(assert (=> d!1686750 d!1687216))

(declare-fun b!5233499 () Bool)

(declare-fun e!3256761 () (InoxSet Context!8418))

(declare-fun e!3256762 () (InoxSet Context!8418))

(assert (=> b!5233499 (= e!3256761 e!3256762)))

(declare-fun c!904067 () Bool)

(assert (=> b!5233499 (= c!904067 ((_ is Concat!23670) (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343)))))))))))

(declare-fun b!5233500 () Bool)

(declare-fun call!370284 () (InoxSet Context!8418))

(assert (=> b!5233500 (= e!3256762 call!370284)))

(declare-fun bm!370279 () Bool)

(declare-fun call!370285 () (InoxSet Context!8418))

(declare-fun call!370289 () (InoxSet Context!8418))

(assert (=> bm!370279 (= call!370285 call!370289)))

(declare-fun c!904069 () Bool)

(declare-fun d!1687218 () Bool)

(assert (=> d!1687218 (= c!904069 (and ((_ is ElementMatch!14825) (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343)))))))) (= (c!903601 (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343)))))))) (h!67099 s!2326))))))

(declare-fun e!3256757 () (InoxSet Context!8418))

(assert (=> d!1687218 (= (derivationStepZipperDown!273 (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343))))))) (ite (or c!903801 c!903798) lt!2145585 (Context!8419 call!370112)) (h!67099 s!2326)) e!3256757)))

(declare-fun c!904066 () Bool)

(declare-fun b!5233501 () Bool)

(assert (=> b!5233501 (= c!904066 ((_ is Star!14825) (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343)))))))))))

(declare-fun e!3256759 () (InoxSet Context!8418))

(assert (=> b!5233501 (= e!3256762 e!3256759)))

(declare-fun b!5233502 () Bool)

(declare-fun c!904065 () Bool)

(declare-fun e!3256760 () Bool)

(assert (=> b!5233502 (= c!904065 e!3256760)))

(declare-fun res!2221374 () Bool)

(assert (=> b!5233502 (=> (not res!2221374) (not e!3256760))))

(assert (=> b!5233502 (= res!2221374 ((_ is Concat!23670) (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343)))))))))))

(declare-fun e!3256758 () (InoxSet Context!8418))

(assert (=> b!5233502 (= e!3256758 e!3256761)))

(declare-fun b!5233503 () Bool)

(assert (=> b!5233503 (= e!3256757 (store ((as const (Array Context!8418 Bool)) false) (ite (or c!903801 c!903798) lt!2145585 (Context!8419 call!370112)) true))))

(declare-fun b!5233504 () Bool)

(declare-fun call!370288 () (InoxSet Context!8418))

(assert (=> b!5233504 (= e!3256761 ((_ map or) call!370288 call!370285))))

(declare-fun call!370286 () List!60774)

(declare-fun bm!370280 () Bool)

(assert (=> bm!370280 (= call!370286 ($colon$colon!1296 (exprs!4709 (ite (or c!903801 c!903798) lt!2145585 (Context!8419 call!370112))) (ite (or c!904065 c!904067) (regTwo!30162 (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343)))))))) (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343))))))))))))

(declare-fun b!5233505 () Bool)

(assert (=> b!5233505 (= e!3256760 (nullable!4994 (regOne!30162 (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343))))))))))))

(declare-fun b!5233506 () Bool)

(assert (=> b!5233506 (= e!3256757 e!3256758)))

(declare-fun c!904068 () Bool)

(assert (=> b!5233506 (= c!904068 ((_ is Union!14825) (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343)))))))))))

(declare-fun b!5233507 () Bool)

(assert (=> b!5233507 (= e!3256758 ((_ map or) call!370289 call!370288))))

(declare-fun b!5233508 () Bool)

(assert (=> b!5233508 (= e!3256759 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233509 () Bool)

(assert (=> b!5233509 (= e!3256759 call!370284)))

(declare-fun call!370287 () List!60774)

(declare-fun bm!370281 () Bool)

(assert (=> bm!370281 (= call!370289 (derivationStepZipperDown!273 (ite c!904068 (regOne!30163 (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343)))))))) (ite c!904065 (regTwo!30162 (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343)))))))) (ite c!904067 (regOne!30162 (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343)))))))) (reg!15154 (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343))))))))))) (ite (or c!904068 c!904065) (ite (or c!903801 c!903798) lt!2145585 (Context!8419 call!370112)) (Context!8419 call!370287)) (h!67099 s!2326)))))

(declare-fun bm!370282 () Bool)

(assert (=> bm!370282 (= call!370287 call!370286)))

(declare-fun bm!370283 () Bool)

(assert (=> bm!370283 (= call!370284 call!370285)))

(declare-fun bm!370284 () Bool)

(assert (=> bm!370284 (= call!370288 (derivationStepZipperDown!273 (ite c!904068 (regTwo!30163 (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343)))))))) (regOne!30162 (ite c!903801 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903798 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!903800 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343))))))))) (ite c!904068 (ite (or c!903801 c!903798) lt!2145585 (Context!8419 call!370112)) (Context!8419 call!370286)) (h!67099 s!2326)))))

(assert (= (and d!1687218 c!904069) b!5233503))

(assert (= (and d!1687218 (not c!904069)) b!5233506))

(assert (= (and b!5233506 c!904068) b!5233507))

(assert (= (and b!5233506 (not c!904068)) b!5233502))

(assert (= (and b!5233502 res!2221374) b!5233505))

(assert (= (and b!5233502 c!904065) b!5233504))

(assert (= (and b!5233502 (not c!904065)) b!5233499))

(assert (= (and b!5233499 c!904067) b!5233500))

(assert (= (and b!5233499 (not c!904067)) b!5233501))

(assert (= (and b!5233501 c!904066) b!5233509))

(assert (= (and b!5233501 (not c!904066)) b!5233508))

(assert (= (or b!5233500 b!5233509) bm!370282))

(assert (= (or b!5233500 b!5233509) bm!370283))

(assert (= (or b!5233504 bm!370282) bm!370280))

(assert (= (or b!5233504 bm!370283) bm!370279))

(assert (= (or b!5233507 b!5233504) bm!370284))

(assert (= (or b!5233507 bm!370279) bm!370281))

(declare-fun m!6279134 () Bool)

(assert (=> b!5233503 m!6279134))

(declare-fun m!6279136 () Bool)

(assert (=> b!5233505 m!6279136))

(declare-fun m!6279138 () Bool)

(assert (=> bm!370284 m!6279138))

(declare-fun m!6279140 () Bool)

(assert (=> bm!370280 m!6279140))

(declare-fun m!6279142 () Bool)

(assert (=> bm!370281 m!6279142))

(assert (=> bm!370106 d!1687218))

(declare-fun d!1687220 () Bool)

(declare-fun c!904070 () Bool)

(assert (=> d!1687220 (= c!904070 (isEmpty!32579 (tail!10309 (t!373954 s!2326))))))

(declare-fun e!3256763 () Bool)

(assert (=> d!1687220 (= (matchZipper!1069 (derivationStepZipper!1090 ((_ map or) lt!2145591 lt!2145570) (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))) e!3256763)))

(declare-fun b!5233510 () Bool)

(assert (=> b!5233510 (= e!3256763 (nullableZipper!1246 (derivationStepZipper!1090 ((_ map or) lt!2145591 lt!2145570) (head!11212 (t!373954 s!2326)))))))

(declare-fun b!5233511 () Bool)

(assert (=> b!5233511 (= e!3256763 (matchZipper!1069 (derivationStepZipper!1090 (derivationStepZipper!1090 ((_ map or) lt!2145591 lt!2145570) (head!11212 (t!373954 s!2326))) (head!11212 (tail!10309 (t!373954 s!2326)))) (tail!10309 (tail!10309 (t!373954 s!2326)))))))

(assert (= (and d!1687220 c!904070) b!5233510))

(assert (= (and d!1687220 (not c!904070)) b!5233511))

(assert (=> d!1687220 m!6278050))

(declare-fun m!6279144 () Bool)

(assert (=> d!1687220 m!6279144))

(assert (=> b!5233510 m!6278058))

(declare-fun m!6279146 () Bool)

(assert (=> b!5233510 m!6279146))

(assert (=> b!5233511 m!6278050))

(declare-fun m!6279148 () Bool)

(assert (=> b!5233511 m!6279148))

(assert (=> b!5233511 m!6278058))

(assert (=> b!5233511 m!6279148))

(declare-fun m!6279150 () Bool)

(assert (=> b!5233511 m!6279150))

(assert (=> b!5233511 m!6278050))

(declare-fun m!6279152 () Bool)

(assert (=> b!5233511 m!6279152))

(assert (=> b!5233511 m!6279150))

(assert (=> b!5233511 m!6279152))

(declare-fun m!6279154 () Bool)

(assert (=> b!5233511 m!6279154))

(assert (=> b!5232453 d!1687220))

(declare-fun bs!1214944 () Bool)

(declare-fun d!1687222 () Bool)

(assert (= bs!1214944 (and d!1687222 b!5231809)))

(declare-fun lambda!262973 () Int)

(assert (=> bs!1214944 (= (= (head!11212 (t!373954 s!2326)) (h!67099 s!2326)) (= lambda!262973 lambda!262854))))

(assert (=> d!1687222 true))

(assert (=> d!1687222 (= (derivationStepZipper!1090 ((_ map or) lt!2145591 lt!2145570) (head!11212 (t!373954 s!2326))) (flatMap!552 ((_ map or) lt!2145591 lt!2145570) lambda!262973))))

(declare-fun bs!1214945 () Bool)

(assert (= bs!1214945 d!1687222))

(declare-fun m!6279156 () Bool)

(assert (=> bs!1214945 m!6279156))

(assert (=> b!5232453 d!1687222))

(declare-fun d!1687224 () Bool)

(assert (=> d!1687224 (= (head!11212 (t!373954 s!2326)) (h!67099 (t!373954 s!2326)))))

(assert (=> b!5232453 d!1687224))

(declare-fun d!1687226 () Bool)

(assert (=> d!1687226 (= (tail!10309 (t!373954 s!2326)) (t!373954 (t!373954 s!2326)))))

(assert (=> b!5232453 d!1687226))

(declare-fun bs!1214946 () Bool)

(declare-fun d!1687228 () Bool)

(assert (= bs!1214946 (and d!1687228 d!1686716)))

(declare-fun lambda!262974 () Int)

(assert (=> bs!1214946 (= lambda!262974 lambda!262894)))

(declare-fun bs!1214947 () Bool)

(assert (= bs!1214947 (and d!1687228 b!5231825)))

(assert (=> bs!1214947 (= lambda!262974 lambda!262855)))

(declare-fun bs!1214948 () Bool)

(assert (= bs!1214948 (and d!1687228 d!1687170)))

(assert (=> bs!1214948 (= lambda!262974 lambda!262962)))

(declare-fun bs!1214949 () Bool)

(assert (= bs!1214949 (and d!1687228 d!1686718)))

(assert (=> bs!1214949 (= lambda!262974 lambda!262897)))

(declare-fun bs!1214950 () Bool)

(assert (= bs!1214950 (and d!1687228 d!1687186)))

(assert (=> bs!1214950 (= lambda!262974 lambda!262964)))

(declare-fun bs!1214951 () Bool)

(assert (= bs!1214951 (and d!1687228 d!1686748)))

(assert (=> bs!1214951 (= lambda!262974 lambda!262903)))

(declare-fun bs!1214952 () Bool)

(assert (= bs!1214952 (and d!1687228 d!1686746)))

(assert (=> bs!1214952 (= lambda!262974 lambda!262900)))

(declare-fun bs!1214953 () Bool)

(assert (= bs!1214953 (and d!1687228 d!1686754)))

(assert (=> bs!1214953 (= lambda!262974 lambda!262904)))

(declare-fun bs!1214954 () Bool)

(assert (= bs!1214954 (and d!1687228 d!1686658)))

(assert (=> bs!1214954 (= lambda!262974 lambda!262886)))

(declare-fun b!5233514 () Bool)

(declare-fun e!3256764 () Regex!14825)

(assert (=> b!5233514 (= e!3256764 EmptyLang!14825)))

(declare-fun b!5233515 () Bool)

(declare-fun e!3256769 () Bool)

(declare-fun e!3256767 () Bool)

(assert (=> b!5233515 (= e!3256769 e!3256767)))

(declare-fun c!904073 () Bool)

(assert (=> b!5233515 (= c!904073 (isEmpty!32575 (tail!10308 (t!373953 (unfocusZipperList!267 zl!343)))))))

(declare-fun b!5233516 () Bool)

(declare-fun e!3256766 () Bool)

(assert (=> b!5233516 (= e!3256766 (isEmpty!32575 (t!373953 (t!373953 (unfocusZipperList!267 zl!343)))))))

(declare-fun b!5233517 () Bool)

(declare-fun lt!2145759 () Regex!14825)

(assert (=> b!5233517 (= e!3256767 (isUnion!223 lt!2145759))))

(declare-fun b!5233518 () Bool)

(assert (=> b!5233518 (= e!3256769 (isEmptyLang!791 lt!2145759))))

(declare-fun b!5233519 () Bool)

(assert (=> b!5233519 (= e!3256767 (= lt!2145759 (head!11211 (t!373953 (unfocusZipperList!267 zl!343)))))))

(declare-fun b!5233520 () Bool)

(declare-fun e!3256768 () Bool)

(assert (=> b!5233520 (= e!3256768 e!3256769)))

(declare-fun c!904074 () Bool)

(assert (=> b!5233520 (= c!904074 (isEmpty!32575 (t!373953 (unfocusZipperList!267 zl!343))))))

(declare-fun b!5233521 () Bool)

(assert (=> b!5233521 (= e!3256764 (Union!14825 (h!67098 (t!373953 (unfocusZipperList!267 zl!343))) (generalisedUnion!754 (t!373953 (t!373953 (unfocusZipperList!267 zl!343))))))))

(declare-fun b!5233522 () Bool)

(declare-fun e!3256765 () Regex!14825)

(assert (=> b!5233522 (= e!3256765 e!3256764)))

(declare-fun c!904075 () Bool)

(assert (=> b!5233522 (= c!904075 ((_ is Cons!60650) (t!373953 (unfocusZipperList!267 zl!343))))))

(assert (=> d!1687228 e!3256768))

(declare-fun res!2221375 () Bool)

(assert (=> d!1687228 (=> (not res!2221375) (not e!3256768))))

(assert (=> d!1687228 (= res!2221375 (validRegex!6561 lt!2145759))))

(assert (=> d!1687228 (= lt!2145759 e!3256765)))

(declare-fun c!904076 () Bool)

(assert (=> d!1687228 (= c!904076 e!3256766)))

(declare-fun res!2221376 () Bool)

(assert (=> d!1687228 (=> (not res!2221376) (not e!3256766))))

(assert (=> d!1687228 (= res!2221376 ((_ is Cons!60650) (t!373953 (unfocusZipperList!267 zl!343))))))

(assert (=> d!1687228 (forall!14255 (t!373953 (unfocusZipperList!267 zl!343)) lambda!262974)))

(assert (=> d!1687228 (= (generalisedUnion!754 (t!373953 (unfocusZipperList!267 zl!343))) lt!2145759)))

(declare-fun b!5233523 () Bool)

(assert (=> b!5233523 (= e!3256765 (h!67098 (t!373953 (unfocusZipperList!267 zl!343))))))

(assert (= (and d!1687228 res!2221376) b!5233516))

(assert (= (and d!1687228 c!904076) b!5233523))

(assert (= (and d!1687228 (not c!904076)) b!5233522))

(assert (= (and b!5233522 c!904075) b!5233521))

(assert (= (and b!5233522 (not c!904075)) b!5233514))

(assert (= (and d!1687228 res!2221375) b!5233520))

(assert (= (and b!5233520 c!904074) b!5233518))

(assert (= (and b!5233520 (not c!904074)) b!5233515))

(assert (= (and b!5233515 c!904073) b!5233519))

(assert (= (and b!5233515 (not c!904073)) b!5233517))

(declare-fun m!6279158 () Bool)

(assert (=> b!5233515 m!6279158))

(assert (=> b!5233515 m!6279158))

(declare-fun m!6279160 () Bool)

(assert (=> b!5233515 m!6279160))

(declare-fun m!6279162 () Bool)

(assert (=> b!5233521 m!6279162))

(assert (=> b!5233520 m!6278182))

(declare-fun m!6279164 () Bool)

(assert (=> b!5233518 m!6279164))

(declare-fun m!6279166 () Bool)

(assert (=> d!1687228 m!6279166))

(declare-fun m!6279168 () Bool)

(assert (=> d!1687228 m!6279168))

(declare-fun m!6279170 () Bool)

(assert (=> b!5233516 m!6279170))

(declare-fun m!6279172 () Bool)

(assert (=> b!5233519 m!6279172))

(declare-fun m!6279174 () Bool)

(assert (=> b!5233517 m!6279174))

(assert (=> b!5232561 d!1687228))

(declare-fun d!1687230 () Bool)

(assert (=> d!1687230 (= (isEmpty!32575 (tail!10308 (exprs!4709 (h!67100 zl!343)))) ((_ is Nil!60650) (tail!10308 (exprs!4709 (h!67100 zl!343)))))))

(assert (=> b!5232241 d!1687230))

(declare-fun d!1687232 () Bool)

(assert (=> d!1687232 (= (tail!10308 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))))

(assert (=> b!5232241 d!1687232))

(declare-fun d!1687234 () Bool)

(assert (=> d!1687234 (= (nullable!4994 (h!67098 (exprs!4709 lt!2145561))) (nullableFct!1398 (h!67098 (exprs!4709 lt!2145561))))))

(declare-fun bs!1214955 () Bool)

(assert (= bs!1214955 d!1687234))

(declare-fun m!6279176 () Bool)

(assert (=> bs!1214955 m!6279176))

(assert (=> b!5232584 d!1687234))

(declare-fun bs!1214956 () Bool)

(declare-fun d!1687236 () Bool)

(assert (= bs!1214956 (and d!1687236 d!1687168)))

(declare-fun lambda!262975 () Int)

(assert (=> bs!1214956 (= lambda!262975 lambda!262961)))

(declare-fun bs!1214957 () Bool)

(assert (= bs!1214957 (and d!1687236 d!1687180)))

(assert (=> bs!1214957 (= lambda!262975 lambda!262963)))

(assert (=> d!1687236 (= (nullableZipper!1246 lt!2145567) (exists!1979 lt!2145567 lambda!262975))))

(declare-fun bs!1214958 () Bool)

(assert (= bs!1214958 d!1687236))

(declare-fun m!6279178 () Bool)

(assert (=> bs!1214958 m!6279178))

(assert (=> b!5232630 d!1687236))

(declare-fun d!1687238 () Bool)

(assert (=> d!1687238 (= (isConcat!305 lt!2145676) ((_ is Concat!23670) lt!2145676))))

(assert (=> b!5232480 d!1687238))

(declare-fun bm!370285 () Bool)

(declare-fun call!370292 () Bool)

(declare-fun c!904078 () Bool)

(assert (=> bm!370285 (= call!370292 (validRegex!6561 (ite c!904078 (regTwo!30163 (h!67098 lt!2145584)) (regTwo!30162 (h!67098 lt!2145584)))))))

(declare-fun b!5233524 () Bool)

(declare-fun e!3256771 () Bool)

(declare-fun e!3256770 () Bool)

(assert (=> b!5233524 (= e!3256771 e!3256770)))

(declare-fun c!904077 () Bool)

(assert (=> b!5233524 (= c!904077 ((_ is Star!14825) (h!67098 lt!2145584)))))

(declare-fun b!5233525 () Bool)

(declare-fun e!3256773 () Bool)

(assert (=> b!5233525 (= e!3256773 call!370292)))

(declare-fun b!5233526 () Bool)

(declare-fun e!3256776 () Bool)

(assert (=> b!5233526 (= e!3256776 call!370292)))

(declare-fun b!5233527 () Bool)

(declare-fun e!3256775 () Bool)

(assert (=> b!5233527 (= e!3256770 e!3256775)))

(assert (=> b!5233527 (= c!904078 ((_ is Union!14825) (h!67098 lt!2145584)))))

(declare-fun call!370291 () Bool)

(declare-fun bm!370286 () Bool)

(assert (=> bm!370286 (= call!370291 (validRegex!6561 (ite c!904077 (reg!15154 (h!67098 lt!2145584)) (ite c!904078 (regOne!30163 (h!67098 lt!2145584)) (regOne!30162 (h!67098 lt!2145584))))))))

(declare-fun b!5233528 () Bool)

(declare-fun e!3256772 () Bool)

(assert (=> b!5233528 (= e!3256772 call!370291)))

(declare-fun b!5233529 () Bool)

(declare-fun res!2221377 () Bool)

(declare-fun e!3256774 () Bool)

(assert (=> b!5233529 (=> res!2221377 e!3256774)))

(assert (=> b!5233529 (= res!2221377 (not ((_ is Concat!23670) (h!67098 lt!2145584))))))

(assert (=> b!5233529 (= e!3256775 e!3256774)))

(declare-fun b!5233530 () Bool)

(assert (=> b!5233530 (= e!3256770 e!3256772)))

(declare-fun res!2221380 () Bool)

(assert (=> b!5233530 (= res!2221380 (not (nullable!4994 (reg!15154 (h!67098 lt!2145584)))))))

(assert (=> b!5233530 (=> (not res!2221380) (not e!3256772))))

(declare-fun b!5233531 () Bool)

(assert (=> b!5233531 (= e!3256774 e!3256776)))

(declare-fun res!2221378 () Bool)

(assert (=> b!5233531 (=> (not res!2221378) (not e!3256776))))

(declare-fun call!370290 () Bool)

(assert (=> b!5233531 (= res!2221378 call!370290)))

(declare-fun bm!370287 () Bool)

(assert (=> bm!370287 (= call!370290 call!370291)))

(declare-fun d!1687240 () Bool)

(declare-fun res!2221379 () Bool)

(assert (=> d!1687240 (=> res!2221379 e!3256771)))

(assert (=> d!1687240 (= res!2221379 ((_ is ElementMatch!14825) (h!67098 lt!2145584)))))

(assert (=> d!1687240 (= (validRegex!6561 (h!67098 lt!2145584)) e!3256771)))

(declare-fun b!5233532 () Bool)

(declare-fun res!2221381 () Bool)

(assert (=> b!5233532 (=> (not res!2221381) (not e!3256773))))

(assert (=> b!5233532 (= res!2221381 call!370290)))

(assert (=> b!5233532 (= e!3256775 e!3256773)))

(assert (= (and d!1687240 (not res!2221379)) b!5233524))

(assert (= (and b!5233524 c!904077) b!5233530))

(assert (= (and b!5233524 (not c!904077)) b!5233527))

(assert (= (and b!5233530 res!2221380) b!5233528))

(assert (= (and b!5233527 c!904078) b!5233532))

(assert (= (and b!5233527 (not c!904078)) b!5233529))

(assert (= (and b!5233532 res!2221381) b!5233525))

(assert (= (and b!5233529 (not res!2221377)) b!5233531))

(assert (= (and b!5233531 res!2221378) b!5233526))

(assert (= (or b!5233525 b!5233526) bm!370285))

(assert (= (or b!5233532 b!5233531) bm!370287))

(assert (= (or b!5233528 bm!370287) bm!370286))

(declare-fun m!6279180 () Bool)

(assert (=> bm!370285 m!6279180))

(declare-fun m!6279182 () Bool)

(assert (=> bm!370286 m!6279182))

(declare-fun m!6279184 () Bool)

(assert (=> b!5233530 m!6279184))

(assert (=> bs!1214630 d!1687240))

(declare-fun c!904080 () Bool)

(declare-fun bm!370288 () Bool)

(declare-fun call!370295 () Bool)

(assert (=> bm!370288 (= call!370295 (validRegex!6561 (ite c!904080 (regTwo!30163 (ite c!903849 (regTwo!30163 r!7292) (regTwo!30162 r!7292))) (regTwo!30162 (ite c!903849 (regTwo!30163 r!7292) (regTwo!30162 r!7292))))))))

(declare-fun b!5233533 () Bool)

(declare-fun e!3256778 () Bool)

(declare-fun e!3256777 () Bool)

(assert (=> b!5233533 (= e!3256778 e!3256777)))

(declare-fun c!904079 () Bool)

(assert (=> b!5233533 (= c!904079 ((_ is Star!14825) (ite c!903849 (regTwo!30163 r!7292) (regTwo!30162 r!7292))))))

(declare-fun b!5233534 () Bool)

(declare-fun e!3256780 () Bool)

(assert (=> b!5233534 (= e!3256780 call!370295)))

(declare-fun b!5233535 () Bool)

(declare-fun e!3256783 () Bool)

(assert (=> b!5233535 (= e!3256783 call!370295)))

(declare-fun b!5233536 () Bool)

(declare-fun e!3256782 () Bool)

(assert (=> b!5233536 (= e!3256777 e!3256782)))

(assert (=> b!5233536 (= c!904080 ((_ is Union!14825) (ite c!903849 (regTwo!30163 r!7292) (regTwo!30162 r!7292))))))

(declare-fun bm!370289 () Bool)

(declare-fun call!370294 () Bool)

(assert (=> bm!370289 (= call!370294 (validRegex!6561 (ite c!904079 (reg!15154 (ite c!903849 (regTwo!30163 r!7292) (regTwo!30162 r!7292))) (ite c!904080 (regOne!30163 (ite c!903849 (regTwo!30163 r!7292) (regTwo!30162 r!7292))) (regOne!30162 (ite c!903849 (regTwo!30163 r!7292) (regTwo!30162 r!7292)))))))))

(declare-fun b!5233537 () Bool)

(declare-fun e!3256779 () Bool)

(assert (=> b!5233537 (= e!3256779 call!370294)))

(declare-fun b!5233538 () Bool)

(declare-fun res!2221382 () Bool)

(declare-fun e!3256781 () Bool)

(assert (=> b!5233538 (=> res!2221382 e!3256781)))

(assert (=> b!5233538 (= res!2221382 (not ((_ is Concat!23670) (ite c!903849 (regTwo!30163 r!7292) (regTwo!30162 r!7292)))))))

(assert (=> b!5233538 (= e!3256782 e!3256781)))

(declare-fun b!5233539 () Bool)

(assert (=> b!5233539 (= e!3256777 e!3256779)))

(declare-fun res!2221385 () Bool)

(assert (=> b!5233539 (= res!2221385 (not (nullable!4994 (reg!15154 (ite c!903849 (regTwo!30163 r!7292) (regTwo!30162 r!7292))))))))

(assert (=> b!5233539 (=> (not res!2221385) (not e!3256779))))

(declare-fun b!5233540 () Bool)

(assert (=> b!5233540 (= e!3256781 e!3256783)))

(declare-fun res!2221383 () Bool)

(assert (=> b!5233540 (=> (not res!2221383) (not e!3256783))))

(declare-fun call!370293 () Bool)

(assert (=> b!5233540 (= res!2221383 call!370293)))

(declare-fun bm!370290 () Bool)

(assert (=> bm!370290 (= call!370293 call!370294)))

(declare-fun d!1687242 () Bool)

(declare-fun res!2221384 () Bool)

(assert (=> d!1687242 (=> res!2221384 e!3256778)))

(assert (=> d!1687242 (= res!2221384 ((_ is ElementMatch!14825) (ite c!903849 (regTwo!30163 r!7292) (regTwo!30162 r!7292))))))

(assert (=> d!1687242 (= (validRegex!6561 (ite c!903849 (regTwo!30163 r!7292) (regTwo!30162 r!7292))) e!3256778)))

(declare-fun b!5233541 () Bool)

(declare-fun res!2221386 () Bool)

(assert (=> b!5233541 (=> (not res!2221386) (not e!3256780))))

(assert (=> b!5233541 (= res!2221386 call!370293)))

(assert (=> b!5233541 (= e!3256782 e!3256780)))

(assert (= (and d!1687242 (not res!2221384)) b!5233533))

(assert (= (and b!5233533 c!904079) b!5233539))

(assert (= (and b!5233533 (not c!904079)) b!5233536))

(assert (= (and b!5233539 res!2221385) b!5233537))

(assert (= (and b!5233536 c!904080) b!5233541))

(assert (= (and b!5233536 (not c!904080)) b!5233538))

(assert (= (and b!5233541 res!2221386) b!5233534))

(assert (= (and b!5233538 (not res!2221382)) b!5233540))

(assert (= (and b!5233540 res!2221383) b!5233535))

(assert (= (or b!5233534 b!5233535) bm!370288))

(assert (= (or b!5233541 b!5233540) bm!370290))

(assert (= (or b!5233537 bm!370290) bm!370289))

(declare-fun m!6279186 () Bool)

(assert (=> bm!370288 m!6279186))

(declare-fun m!6279188 () Bool)

(assert (=> bm!370289 m!6279188))

(declare-fun m!6279190 () Bool)

(assert (=> b!5233539 m!6279190))

(assert (=> bm!370123 d!1687242))

(declare-fun bs!1214959 () Bool)

(declare-fun d!1687244 () Bool)

(assert (= bs!1214959 (and d!1687244 d!1687168)))

(declare-fun lambda!262976 () Int)

(assert (=> bs!1214959 (= lambda!262976 lambda!262961)))

(declare-fun bs!1214960 () Bool)

(assert (= bs!1214960 (and d!1687244 d!1687180)))

(assert (=> bs!1214960 (= lambda!262976 lambda!262963)))

(declare-fun bs!1214961 () Bool)

(assert (= bs!1214961 (and d!1687244 d!1687236)))

(assert (=> bs!1214961 (= lambda!262976 lambda!262975)))

(assert (=> d!1687244 (= (nullableZipper!1246 z!1189) (exists!1979 z!1189 lambda!262976))))

(declare-fun bs!1214962 () Bool)

(assert (= bs!1214962 d!1687244))

(declare-fun m!6279192 () Bool)

(assert (=> bs!1214962 m!6279192))

(assert (=> b!5232578 d!1687244))

(declare-fun b!5233542 () Bool)

(declare-fun e!3256788 () (InoxSet Context!8418))

(declare-fun e!3256789 () (InoxSet Context!8418))

(assert (=> b!5233542 (= e!3256788 e!3256789)))

(declare-fun c!904083 () Bool)

(assert (=> b!5233542 (= c!904083 ((_ is Concat!23670) (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5233543 () Bool)

(declare-fun call!370296 () (InoxSet Context!8418))

(assert (=> b!5233543 (= e!3256789 call!370296)))

(declare-fun bm!370291 () Bool)

(declare-fun call!370297 () (InoxSet Context!8418))

(declare-fun call!370301 () (InoxSet Context!8418))

(assert (=> bm!370291 (= call!370297 call!370301)))

(declare-fun d!1687246 () Bool)

(declare-fun c!904085 () Bool)

(assert (=> d!1687246 (= c!904085 (and ((_ is ElementMatch!14825) (h!67098 (exprs!4709 (h!67100 zl!343)))) (= (c!903601 (h!67098 (exprs!4709 (h!67100 zl!343)))) (h!67099 s!2326))))))

(declare-fun e!3256784 () (InoxSet Context!8418))

(assert (=> d!1687246 (= (derivationStepZipperDown!273 (h!67098 (exprs!4709 (h!67100 zl!343))) (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343)))) (h!67099 s!2326)) e!3256784)))

(declare-fun b!5233544 () Bool)

(declare-fun c!904082 () Bool)

(assert (=> b!5233544 (= c!904082 ((_ is Star!14825) (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun e!3256786 () (InoxSet Context!8418))

(assert (=> b!5233544 (= e!3256789 e!3256786)))

(declare-fun b!5233545 () Bool)

(declare-fun c!904081 () Bool)

(declare-fun e!3256787 () Bool)

(assert (=> b!5233545 (= c!904081 e!3256787)))

(declare-fun res!2221387 () Bool)

(assert (=> b!5233545 (=> (not res!2221387) (not e!3256787))))

(assert (=> b!5233545 (= res!2221387 ((_ is Concat!23670) (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun e!3256785 () (InoxSet Context!8418))

(assert (=> b!5233545 (= e!3256785 e!3256788)))

(declare-fun b!5233546 () Bool)

(assert (=> b!5233546 (= e!3256784 (store ((as const (Array Context!8418 Bool)) false) (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343)))) true))))

(declare-fun b!5233547 () Bool)

(declare-fun call!370300 () (InoxSet Context!8418))

(assert (=> b!5233547 (= e!3256788 ((_ map or) call!370300 call!370297))))

(declare-fun call!370298 () List!60774)

(declare-fun bm!370292 () Bool)

(assert (=> bm!370292 (= call!370298 ($colon$colon!1296 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343))))) (ite (or c!904081 c!904083) (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (h!67098 (exprs!4709 (h!67100 zl!343))))))))

(declare-fun b!5233548 () Bool)

(assert (=> b!5233548 (= e!3256787 (nullable!4994 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343))))))))

(declare-fun b!5233549 () Bool)

(assert (=> b!5233549 (= e!3256784 e!3256785)))

(declare-fun c!904084 () Bool)

(assert (=> b!5233549 (= c!904084 ((_ is Union!14825) (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5233550 () Bool)

(assert (=> b!5233550 (= e!3256785 ((_ map or) call!370301 call!370300))))

(declare-fun b!5233551 () Bool)

(assert (=> b!5233551 (= e!3256786 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233552 () Bool)

(assert (=> b!5233552 (= e!3256786 call!370296)))

(declare-fun bm!370293 () Bool)

(declare-fun call!370299 () List!60774)

(assert (=> bm!370293 (= call!370301 (derivationStepZipperDown!273 (ite c!904084 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!904081 (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (ite c!904083 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (reg!15154 (h!67098 (exprs!4709 (h!67100 zl!343))))))) (ite (or c!904084 c!904081) (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343)))) (Context!8419 call!370299)) (h!67099 s!2326)))))

(declare-fun bm!370294 () Bool)

(assert (=> bm!370294 (= call!370299 call!370298)))

(declare-fun bm!370295 () Bool)

(assert (=> bm!370295 (= call!370296 call!370297)))

(declare-fun bm!370296 () Bool)

(assert (=> bm!370296 (= call!370300 (derivationStepZipperDown!273 (ite c!904084 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343))))) (ite c!904084 (Context!8419 (t!373953 (exprs!4709 (h!67100 zl!343)))) (Context!8419 call!370298)) (h!67099 s!2326)))))

(assert (= (and d!1687246 c!904085) b!5233546))

(assert (= (and d!1687246 (not c!904085)) b!5233549))

(assert (= (and b!5233549 c!904084) b!5233550))

(assert (= (and b!5233549 (not c!904084)) b!5233545))

(assert (= (and b!5233545 res!2221387) b!5233548))

(assert (= (and b!5233545 c!904081) b!5233547))

(assert (= (and b!5233545 (not c!904081)) b!5233542))

(assert (= (and b!5233542 c!904083) b!5233543))

(assert (= (and b!5233542 (not c!904083)) b!5233544))

(assert (= (and b!5233544 c!904082) b!5233552))

(assert (= (and b!5233544 (not c!904082)) b!5233551))

(assert (= (or b!5233543 b!5233552) bm!370294))

(assert (= (or b!5233543 b!5233552) bm!370295))

(assert (= (or b!5233547 bm!370294) bm!370292))

(assert (= (or b!5233547 bm!370295) bm!370291))

(assert (= (or b!5233550 b!5233547) bm!370296))

(assert (= (or b!5233550 bm!370291) bm!370293))

(declare-fun m!6279194 () Bool)

(assert (=> b!5233546 m!6279194))

(assert (=> b!5233548 m!6278134))

(declare-fun m!6279196 () Bool)

(assert (=> bm!370296 m!6279196))

(declare-fun m!6279198 () Bool)

(assert (=> bm!370292 m!6279198))

(declare-fun m!6279200 () Bool)

(assert (=> bm!370293 m!6279200))

(assert (=> bm!370114 d!1687246))

(declare-fun bs!1214963 () Bool)

(declare-fun d!1687248 () Bool)

(assert (= bs!1214963 (and d!1687248 d!1687168)))

(declare-fun lambda!262977 () Int)

(assert (=> bs!1214963 (= lambda!262977 lambda!262961)))

(declare-fun bs!1214964 () Bool)

(assert (= bs!1214964 (and d!1687248 d!1687180)))

(assert (=> bs!1214964 (= lambda!262977 lambda!262963)))

(declare-fun bs!1214965 () Bool)

(assert (= bs!1214965 (and d!1687248 d!1687236)))

(assert (=> bs!1214965 (= lambda!262977 lambda!262975)))

(declare-fun bs!1214966 () Bool)

(assert (= bs!1214966 (and d!1687248 d!1687244)))

(assert (=> bs!1214966 (= lambda!262977 lambda!262976)))

(assert (=> d!1687248 (= (nullableZipper!1246 lt!2145587) (exists!1979 lt!2145587 lambda!262977))))

(declare-fun bs!1214967 () Bool)

(assert (= bs!1214967 d!1687248))

(declare-fun m!6279202 () Bool)

(assert (=> bs!1214967 m!6279202))

(assert (=> b!5232585 d!1687248))

(declare-fun b!5233553 () Bool)

(declare-fun e!3256791 () List!60775)

(assert (=> b!5233553 (= e!3256791 (_2!35327 (get!20844 lt!2145702)))))

(declare-fun b!5233554 () Bool)

(assert (=> b!5233554 (= e!3256791 (Cons!60651 (h!67099 (_1!35327 (get!20844 lt!2145702))) (++!13226 (t!373954 (_1!35327 (get!20844 lt!2145702))) (_2!35327 (get!20844 lt!2145702)))))))

(declare-fun b!5233556 () Bool)

(declare-fun e!3256790 () Bool)

(declare-fun lt!2145760 () List!60775)

(assert (=> b!5233556 (= e!3256790 (or (not (= (_2!35327 (get!20844 lt!2145702)) Nil!60651)) (= lt!2145760 (_1!35327 (get!20844 lt!2145702)))))))

(declare-fun b!5233555 () Bool)

(declare-fun res!2221389 () Bool)

(assert (=> b!5233555 (=> (not res!2221389) (not e!3256790))))

(assert (=> b!5233555 (= res!2221389 (= (size!39734 lt!2145760) (+ (size!39734 (_1!35327 (get!20844 lt!2145702))) (size!39734 (_2!35327 (get!20844 lt!2145702))))))))

(declare-fun d!1687250 () Bool)

(assert (=> d!1687250 e!3256790))

(declare-fun res!2221388 () Bool)

(assert (=> d!1687250 (=> (not res!2221388) (not e!3256790))))

(assert (=> d!1687250 (= res!2221388 (= (content!10767 lt!2145760) ((_ map or) (content!10767 (_1!35327 (get!20844 lt!2145702))) (content!10767 (_2!35327 (get!20844 lt!2145702))))))))

(assert (=> d!1687250 (= lt!2145760 e!3256791)))

(declare-fun c!904086 () Bool)

(assert (=> d!1687250 (= c!904086 ((_ is Nil!60651) (_1!35327 (get!20844 lt!2145702))))))

(assert (=> d!1687250 (= (++!13226 (_1!35327 (get!20844 lt!2145702)) (_2!35327 (get!20844 lt!2145702))) lt!2145760)))

(assert (= (and d!1687250 c!904086) b!5233553))

(assert (= (and d!1687250 (not c!904086)) b!5233554))

(assert (= (and d!1687250 res!2221388) b!5233555))

(assert (= (and b!5233555 res!2221389) b!5233556))

(declare-fun m!6279204 () Bool)

(assert (=> b!5233554 m!6279204))

(declare-fun m!6279206 () Bool)

(assert (=> b!5233555 m!6279206))

(declare-fun m!6279208 () Bool)

(assert (=> b!5233555 m!6279208))

(declare-fun m!6279210 () Bool)

(assert (=> b!5233555 m!6279210))

(declare-fun m!6279212 () Bool)

(assert (=> d!1687250 m!6279212))

(declare-fun m!6279214 () Bool)

(assert (=> d!1687250 m!6279214))

(declare-fun m!6279216 () Bool)

(assert (=> d!1687250 m!6279216))

(assert (=> b!5232615 d!1687250))

(declare-fun d!1687252 () Bool)

(assert (=> d!1687252 (= (get!20844 lt!2145702) (v!50964 lt!2145702))))

(assert (=> b!5232615 d!1687252))

(assert (=> b!5232568 d!1686658))

(declare-fun bs!1214968 () Bool)

(declare-fun d!1687254 () Bool)

(assert (= bs!1214968 (and d!1687254 d!1686716)))

(declare-fun lambda!262978 () Int)

(assert (=> bs!1214968 (= lambda!262978 lambda!262894)))

(declare-fun bs!1214969 () Bool)

(assert (= bs!1214969 (and d!1687254 b!5231825)))

(assert (=> bs!1214969 (= lambda!262978 lambda!262855)))

(declare-fun bs!1214970 () Bool)

(assert (= bs!1214970 (and d!1687254 d!1687170)))

(assert (=> bs!1214970 (= lambda!262978 lambda!262962)))

(declare-fun bs!1214971 () Bool)

(assert (= bs!1214971 (and d!1687254 d!1686718)))

(assert (=> bs!1214971 (= lambda!262978 lambda!262897)))

(declare-fun bs!1214972 () Bool)

(assert (= bs!1214972 (and d!1687254 d!1687228)))

(assert (=> bs!1214972 (= lambda!262978 lambda!262974)))

(declare-fun bs!1214973 () Bool)

(assert (= bs!1214973 (and d!1687254 d!1687186)))

(assert (=> bs!1214973 (= lambda!262978 lambda!262964)))

(declare-fun bs!1214974 () Bool)

(assert (= bs!1214974 (and d!1687254 d!1686748)))

(assert (=> bs!1214974 (= lambda!262978 lambda!262903)))

(declare-fun bs!1214975 () Bool)

(assert (= bs!1214975 (and d!1687254 d!1686746)))

(assert (=> bs!1214975 (= lambda!262978 lambda!262900)))

(declare-fun bs!1214976 () Bool)

(assert (= bs!1214976 (and d!1687254 d!1686754)))

(assert (=> bs!1214976 (= lambda!262978 lambda!262904)))

(declare-fun bs!1214977 () Bool)

(assert (= bs!1214977 (and d!1687254 d!1686658)))

(assert (=> bs!1214977 (= lambda!262978 lambda!262886)))

(declare-fun lt!2145761 () List!60774)

(assert (=> d!1687254 (forall!14255 lt!2145761 lambda!262978)))

(declare-fun e!3256792 () List!60774)

(assert (=> d!1687254 (= lt!2145761 e!3256792)))

(declare-fun c!904087 () Bool)

(assert (=> d!1687254 (= c!904087 ((_ is Cons!60652) (t!373955 zl!343)))))

(assert (=> d!1687254 (= (unfocusZipperList!267 (t!373955 zl!343)) lt!2145761)))

(declare-fun b!5233557 () Bool)

(assert (=> b!5233557 (= e!3256792 (Cons!60650 (generalisedConcat!494 (exprs!4709 (h!67100 (t!373955 zl!343)))) (unfocusZipperList!267 (t!373955 (t!373955 zl!343)))))))

(declare-fun b!5233558 () Bool)

(assert (=> b!5233558 (= e!3256792 Nil!60650)))

(assert (= (and d!1687254 c!904087) b!5233557))

(assert (= (and d!1687254 (not c!904087)) b!5233558))

(declare-fun m!6279218 () Bool)

(assert (=> d!1687254 m!6279218))

(declare-fun m!6279220 () Bool)

(assert (=> b!5233557 m!6279220))

(declare-fun m!6279222 () Bool)

(assert (=> b!5233557 m!6279222))

(assert (=> b!5232568 d!1687254))

(declare-fun d!1687256 () Bool)

(declare-fun res!2221390 () Bool)

(declare-fun e!3256793 () Bool)

(assert (=> d!1687256 (=> res!2221390 e!3256793)))

(assert (=> d!1687256 (= res!2221390 ((_ is Nil!60650) lt!2145691))))

(assert (=> d!1687256 (= (forall!14255 lt!2145691 lambda!262903) e!3256793)))

(declare-fun b!5233559 () Bool)

(declare-fun e!3256794 () Bool)

(assert (=> b!5233559 (= e!3256793 e!3256794)))

(declare-fun res!2221391 () Bool)

(assert (=> b!5233559 (=> (not res!2221391) (not e!3256794))))

(assert (=> b!5233559 (= res!2221391 (dynLambda!23967 lambda!262903 (h!67098 lt!2145691)))))

(declare-fun b!5233560 () Bool)

(assert (=> b!5233560 (= e!3256794 (forall!14255 (t!373953 lt!2145691) lambda!262903))))

(assert (= (and d!1687256 (not res!2221390)) b!5233559))

(assert (= (and b!5233559 res!2221391) b!5233560))

(declare-fun b_lambda!202353 () Bool)

(assert (=> (not b_lambda!202353) (not b!5233559)))

(declare-fun m!6279224 () Bool)

(assert (=> b!5233559 m!6279224))

(declare-fun m!6279226 () Bool)

(assert (=> b!5233560 m!6279226))

(assert (=> d!1686748 d!1687256))

(declare-fun d!1687258 () Bool)

(declare-fun res!2221396 () Bool)

(declare-fun e!3256799 () Bool)

(assert (=> d!1687258 (=> res!2221396 e!3256799)))

(assert (=> d!1687258 (= res!2221396 ((_ is Nil!60652) lt!2145671))))

(assert (=> d!1687258 (= (noDuplicate!1202 lt!2145671) e!3256799)))

(declare-fun b!5233565 () Bool)

(declare-fun e!3256800 () Bool)

(assert (=> b!5233565 (= e!3256799 e!3256800)))

(declare-fun res!2221397 () Bool)

(assert (=> b!5233565 (=> (not res!2221397) (not e!3256800))))

(declare-fun contains!19681 (List!60776 Context!8418) Bool)

(assert (=> b!5233565 (= res!2221397 (not (contains!19681 (t!373955 lt!2145671) (h!67100 lt!2145671))))))

(declare-fun b!5233566 () Bool)

(assert (=> b!5233566 (= e!3256800 (noDuplicate!1202 (t!373955 lt!2145671)))))

(assert (= (and d!1687258 (not res!2221396)) b!5233565))

(assert (= (and b!5233565 res!2221397) b!5233566))

(declare-fun m!6279228 () Bool)

(assert (=> b!5233565 m!6279228))

(declare-fun m!6279230 () Bool)

(assert (=> b!5233566 m!6279230))

(assert (=> d!1686706 d!1687258))

(declare-fun d!1687260 () Bool)

(declare-fun e!3256808 () Bool)

(assert (=> d!1687260 e!3256808))

(declare-fun res!2221402 () Bool)

(assert (=> d!1687260 (=> (not res!2221402) (not e!3256808))))

(declare-fun res!2221403 () List!60776)

(assert (=> d!1687260 (= res!2221402 (noDuplicate!1202 res!2221403))))

(declare-fun e!3256807 () Bool)

(assert (=> d!1687260 e!3256807))

(assert (=> d!1687260 (= (choose!38919 z!1189) res!2221403)))

(declare-fun b!5233574 () Bool)

(declare-fun e!3256809 () Bool)

(declare-fun tp!1466330 () Bool)

(assert (=> b!5233574 (= e!3256809 tp!1466330)))

(declare-fun b!5233573 () Bool)

(declare-fun tp!1466331 () Bool)

(assert (=> b!5233573 (= e!3256807 (and (inv!80309 (h!67100 res!2221403)) e!3256809 tp!1466331))))

(declare-fun b!5233575 () Bool)

(assert (=> b!5233575 (= e!3256808 (= (content!10765 res!2221403) z!1189))))

(assert (= b!5233573 b!5233574))

(assert (= (and d!1687260 ((_ is Cons!60652) res!2221403)) b!5233573))

(assert (= (and d!1687260 res!2221402) b!5233575))

(declare-fun m!6279232 () Bool)

(assert (=> d!1687260 m!6279232))

(declare-fun m!6279234 () Bool)

(assert (=> b!5233573 m!6279234))

(declare-fun m!6279236 () Bool)

(assert (=> b!5233575 m!6279236))

(assert (=> d!1686706 d!1687260))

(declare-fun d!1687262 () Bool)

(assert (=> d!1687262 (= (isEmpty!32575 (exprs!4709 (h!67100 zl!343))) ((_ is Nil!60650) (exprs!4709 (h!67100 zl!343))))))

(assert (=> b!5232249 d!1687262))

(assert (=> d!1686700 d!1687196))

(declare-fun bs!1214978 () Bool)

(declare-fun d!1687264 () Bool)

(assert (= bs!1214978 (and d!1687264 d!1686716)))

(declare-fun lambda!262979 () Int)

(assert (=> bs!1214978 (= lambda!262979 lambda!262894)))

(declare-fun bs!1214979 () Bool)

(assert (= bs!1214979 (and d!1687264 d!1687254)))

(assert (=> bs!1214979 (= lambda!262979 lambda!262978)))

(declare-fun bs!1214980 () Bool)

(assert (= bs!1214980 (and d!1687264 b!5231825)))

(assert (=> bs!1214980 (= lambda!262979 lambda!262855)))

(declare-fun bs!1214981 () Bool)

(assert (= bs!1214981 (and d!1687264 d!1687170)))

(assert (=> bs!1214981 (= lambda!262979 lambda!262962)))

(declare-fun bs!1214982 () Bool)

(assert (= bs!1214982 (and d!1687264 d!1686718)))

(assert (=> bs!1214982 (= lambda!262979 lambda!262897)))

(declare-fun bs!1214983 () Bool)

(assert (= bs!1214983 (and d!1687264 d!1687228)))

(assert (=> bs!1214983 (= lambda!262979 lambda!262974)))

(declare-fun bs!1214984 () Bool)

(assert (= bs!1214984 (and d!1687264 d!1687186)))

(assert (=> bs!1214984 (= lambda!262979 lambda!262964)))

(declare-fun bs!1214985 () Bool)

(assert (= bs!1214985 (and d!1687264 d!1686748)))

(assert (=> bs!1214985 (= lambda!262979 lambda!262903)))

(declare-fun bs!1214986 () Bool)

(assert (= bs!1214986 (and d!1687264 d!1686746)))

(assert (=> bs!1214986 (= lambda!262979 lambda!262900)))

(declare-fun bs!1214987 () Bool)

(assert (= bs!1214987 (and d!1687264 d!1686754)))

(assert (=> bs!1214987 (= lambda!262979 lambda!262904)))

(declare-fun bs!1214988 () Bool)

(assert (= bs!1214988 (and d!1687264 d!1686658)))

(assert (=> bs!1214988 (= lambda!262979 lambda!262886)))

(declare-fun b!5233576 () Bool)

(declare-fun e!3256812 () Bool)

(declare-fun e!3256810 () Bool)

(assert (=> b!5233576 (= e!3256812 e!3256810)))

(declare-fun c!904091 () Bool)

(assert (=> b!5233576 (= c!904091 (isEmpty!32575 (tail!10308 (t!373953 lt!2145568))))))

(declare-fun b!5233577 () Bool)

(declare-fun lt!2145762 () Regex!14825)

(assert (=> b!5233577 (= e!3256810 (isConcat!305 lt!2145762))))

(declare-fun b!5233578 () Bool)

(declare-fun e!3256813 () Regex!14825)

(assert (=> b!5233578 (= e!3256813 (h!67098 (t!373953 lt!2145568)))))

(declare-fun b!5233579 () Bool)

(declare-fun e!3256815 () Bool)

(assert (=> b!5233579 (= e!3256815 (isEmpty!32575 (t!373953 (t!373953 lt!2145568))))))

(declare-fun b!5233580 () Bool)

(declare-fun e!3256811 () Regex!14825)

(assert (=> b!5233580 (= e!3256813 e!3256811)))

(declare-fun c!904090 () Bool)

(assert (=> b!5233580 (= c!904090 ((_ is Cons!60650) (t!373953 lt!2145568)))))

(declare-fun b!5233581 () Bool)

(assert (=> b!5233581 (= e!3256811 EmptyExpr!14825)))

(declare-fun e!3256814 () Bool)

(assert (=> d!1687264 e!3256814))

(declare-fun res!2221404 () Bool)

(assert (=> d!1687264 (=> (not res!2221404) (not e!3256814))))

(assert (=> d!1687264 (= res!2221404 (validRegex!6561 lt!2145762))))

(assert (=> d!1687264 (= lt!2145762 e!3256813)))

(declare-fun c!904088 () Bool)

(assert (=> d!1687264 (= c!904088 e!3256815)))

(declare-fun res!2221405 () Bool)

(assert (=> d!1687264 (=> (not res!2221405) (not e!3256815))))

(assert (=> d!1687264 (= res!2221405 ((_ is Cons!60650) (t!373953 lt!2145568)))))

(assert (=> d!1687264 (forall!14255 (t!373953 lt!2145568) lambda!262979)))

(assert (=> d!1687264 (= (generalisedConcat!494 (t!373953 lt!2145568)) lt!2145762)))

(declare-fun b!5233582 () Bool)

(assert (=> b!5233582 (= e!3256812 (isEmptyExpr!782 lt!2145762))))

(declare-fun b!5233583 () Bool)

(assert (=> b!5233583 (= e!3256810 (= lt!2145762 (head!11211 (t!373953 lt!2145568))))))

(declare-fun b!5233584 () Bool)

(assert (=> b!5233584 (= e!3256814 e!3256812)))

(declare-fun c!904089 () Bool)

(assert (=> b!5233584 (= c!904089 (isEmpty!32575 (t!373953 lt!2145568)))))

(declare-fun b!5233585 () Bool)

(assert (=> b!5233585 (= e!3256811 (Concat!23670 (h!67098 (t!373953 lt!2145568)) (generalisedConcat!494 (t!373953 (t!373953 lt!2145568)))))))

(assert (= (and d!1687264 res!2221405) b!5233579))

(assert (= (and d!1687264 c!904088) b!5233578))

(assert (= (and d!1687264 (not c!904088)) b!5233580))

(assert (= (and b!5233580 c!904090) b!5233585))

(assert (= (and b!5233580 (not c!904090)) b!5233581))

(assert (= (and d!1687264 res!2221404) b!5233584))

(assert (= (and b!5233584 c!904089) b!5233582))

(assert (= (and b!5233584 (not c!904089)) b!5233576))

(assert (= (and b!5233576 c!904091) b!5233583))

(assert (= (and b!5233576 (not c!904091)) b!5233577))

(declare-fun m!6279238 () Bool)

(assert (=> b!5233576 m!6279238))

(assert (=> b!5233576 m!6279238))

(declare-fun m!6279240 () Bool)

(assert (=> b!5233576 m!6279240))

(assert (=> b!5233584 m!6278098))

(declare-fun m!6279242 () Bool)

(assert (=> d!1687264 m!6279242))

(declare-fun m!6279244 () Bool)

(assert (=> d!1687264 m!6279244))

(declare-fun m!6279246 () Bool)

(assert (=> b!5233579 m!6279246))

(declare-fun m!6279248 () Bool)

(assert (=> b!5233582 m!6279248))

(declare-fun m!6279250 () Bool)

(assert (=> b!5233583 m!6279250))

(declare-fun m!6279252 () Bool)

(assert (=> b!5233585 m!6279252))

(declare-fun m!6279254 () Bool)

(assert (=> b!5233577 m!6279254))

(assert (=> b!5232488 d!1687264))

(assert (=> b!5232632 d!1686700))

(declare-fun bs!1214989 () Bool)

(declare-fun d!1687266 () Bool)

(assert (= bs!1214989 (and d!1687266 d!1687168)))

(declare-fun lambda!262980 () Int)

(assert (=> bs!1214989 (= lambda!262980 lambda!262961)))

(declare-fun bs!1214990 () Bool)

(assert (= bs!1214990 (and d!1687266 d!1687248)))

(assert (=> bs!1214990 (= lambda!262980 lambda!262977)))

(declare-fun bs!1214991 () Bool)

(assert (= bs!1214991 (and d!1687266 d!1687236)))

(assert (=> bs!1214991 (= lambda!262980 lambda!262975)))

(declare-fun bs!1214992 () Bool)

(assert (= bs!1214992 (and d!1687266 d!1687244)))

(assert (=> bs!1214992 (= lambda!262980 lambda!262976)))

(declare-fun bs!1214993 () Bool)

(assert (= bs!1214993 (and d!1687266 d!1687180)))

(assert (=> bs!1214993 (= lambda!262980 lambda!262963)))

(assert (=> d!1687266 (= (nullableZipper!1246 lt!2145566) (exists!1979 lt!2145566 lambda!262980))))

(declare-fun bs!1214994 () Bool)

(assert (= bs!1214994 d!1687266))

(declare-fun m!6279256 () Bool)

(assert (=> bs!1214994 m!6279256))

(assert (=> b!5232587 d!1687266))

(declare-fun d!1687268 () Bool)

(assert (=> d!1687268 (= (isEmpty!32579 s!2326) ((_ is Nil!60651) s!2326))))

(assert (=> bm!370103 d!1687268))

(declare-fun d!1687270 () Bool)

(assert (=> d!1687270 (= ($colon$colon!1296 (exprs!4709 lt!2145585) (ite (or c!903748 c!903750) (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (regTwo!30163 (regOne!30162 r!7292)))) (Cons!60650 (ite (or c!903748 c!903750) (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (regTwo!30163 (regOne!30162 r!7292))) (exprs!4709 lt!2145585)))))

(assert (=> bm!370083 d!1687270))

(declare-fun b!5233586 () Bool)

(declare-fun res!2221409 () Bool)

(declare-fun e!3256818 () Bool)

(assert (=> b!5233586 (=> res!2221409 e!3256818)))

(declare-fun e!3256821 () Bool)

(assert (=> b!5233586 (= res!2221409 e!3256821)))

(declare-fun res!2221411 () Bool)

(assert (=> b!5233586 (=> (not res!2221411) (not e!3256821))))

(declare-fun lt!2145763 () Bool)

(assert (=> b!5233586 (= res!2221411 lt!2145763)))

(declare-fun b!5233587 () Bool)

(declare-fun e!3256817 () Bool)

(assert (=> b!5233587 (= e!3256817 (matchR!7010 (derivativeStep!4068 (regTwo!30162 r!7292) (head!11212 (_2!35327 (get!20844 lt!2145702)))) (tail!10309 (_2!35327 (get!20844 lt!2145702)))))))

(declare-fun bm!370297 () Bool)

(declare-fun call!370302 () Bool)

(assert (=> bm!370297 (= call!370302 (isEmpty!32579 (_2!35327 (get!20844 lt!2145702))))))

(declare-fun b!5233588 () Bool)

(declare-fun res!2221413 () Bool)

(assert (=> b!5233588 (=> (not res!2221413) (not e!3256821))))

(assert (=> b!5233588 (= res!2221413 (not call!370302))))

(declare-fun b!5233589 () Bool)

(declare-fun e!3256819 () Bool)

(declare-fun e!3256816 () Bool)

(assert (=> b!5233589 (= e!3256819 e!3256816)))

(declare-fun res!2221406 () Bool)

(assert (=> b!5233589 (=> res!2221406 e!3256816)))

(assert (=> b!5233589 (= res!2221406 call!370302)))

(declare-fun b!5233590 () Bool)

(assert (=> b!5233590 (= e!3256818 e!3256819)))

(declare-fun res!2221410 () Bool)

(assert (=> b!5233590 (=> (not res!2221410) (not e!3256819))))

(assert (=> b!5233590 (= res!2221410 (not lt!2145763))))

(declare-fun b!5233591 () Bool)

(declare-fun res!2221407 () Bool)

(assert (=> b!5233591 (=> (not res!2221407) (not e!3256821))))

(assert (=> b!5233591 (= res!2221407 (isEmpty!32579 (tail!10309 (_2!35327 (get!20844 lt!2145702)))))))

(declare-fun b!5233592 () Bool)

(declare-fun res!2221408 () Bool)

(assert (=> b!5233592 (=> res!2221408 e!3256818)))

(assert (=> b!5233592 (= res!2221408 (not ((_ is ElementMatch!14825) (regTwo!30162 r!7292))))))

(declare-fun e!3256820 () Bool)

(assert (=> b!5233592 (= e!3256820 e!3256818)))

(declare-fun b!5233593 () Bool)

(declare-fun res!2221412 () Bool)

(assert (=> b!5233593 (=> res!2221412 e!3256816)))

(assert (=> b!5233593 (= res!2221412 (not (isEmpty!32579 (tail!10309 (_2!35327 (get!20844 lt!2145702))))))))

(declare-fun b!5233594 () Bool)

(assert (=> b!5233594 (= e!3256820 (not lt!2145763))))

(declare-fun b!5233595 () Bool)

(assert (=> b!5233595 (= e!3256821 (= (head!11212 (_2!35327 (get!20844 lt!2145702))) (c!903601 (regTwo!30162 r!7292))))))

(declare-fun b!5233596 () Bool)

(declare-fun e!3256822 () Bool)

(assert (=> b!5233596 (= e!3256822 e!3256820)))

(declare-fun c!904094 () Bool)

(assert (=> b!5233596 (= c!904094 ((_ is EmptyLang!14825) (regTwo!30162 r!7292)))))

(declare-fun d!1687272 () Bool)

(assert (=> d!1687272 e!3256822))

(declare-fun c!904093 () Bool)

(assert (=> d!1687272 (= c!904093 ((_ is EmptyExpr!14825) (regTwo!30162 r!7292)))))

(assert (=> d!1687272 (= lt!2145763 e!3256817)))

(declare-fun c!904092 () Bool)

(assert (=> d!1687272 (= c!904092 (isEmpty!32579 (_2!35327 (get!20844 lt!2145702))))))

(assert (=> d!1687272 (validRegex!6561 (regTwo!30162 r!7292))))

(assert (=> d!1687272 (= (matchR!7010 (regTwo!30162 r!7292) (_2!35327 (get!20844 lt!2145702))) lt!2145763)))

(declare-fun b!5233597 () Bool)

(assert (=> b!5233597 (= e!3256816 (not (= (head!11212 (_2!35327 (get!20844 lt!2145702))) (c!903601 (regTwo!30162 r!7292)))))))

(declare-fun b!5233598 () Bool)

(assert (=> b!5233598 (= e!3256817 (nullable!4994 (regTwo!30162 r!7292)))))

(declare-fun b!5233599 () Bool)

(assert (=> b!5233599 (= e!3256822 (= lt!2145763 call!370302))))

(assert (= (and d!1687272 c!904092) b!5233598))

(assert (= (and d!1687272 (not c!904092)) b!5233587))

(assert (= (and d!1687272 c!904093) b!5233599))

(assert (= (and d!1687272 (not c!904093)) b!5233596))

(assert (= (and b!5233596 c!904094) b!5233594))

(assert (= (and b!5233596 (not c!904094)) b!5233592))

(assert (= (and b!5233592 (not res!2221408)) b!5233586))

(assert (= (and b!5233586 res!2221411) b!5233588))

(assert (= (and b!5233588 res!2221413) b!5233591))

(assert (= (and b!5233591 res!2221407) b!5233595))

(assert (= (and b!5233586 (not res!2221409)) b!5233590))

(assert (= (and b!5233590 res!2221410) b!5233589))

(assert (= (and b!5233589 (not res!2221406)) b!5233593))

(assert (= (and b!5233593 (not res!2221412)) b!5233597))

(assert (= (or b!5233599 b!5233588 b!5233589) bm!370297))

(declare-fun m!6279258 () Bool)

(assert (=> b!5233598 m!6279258))

(declare-fun m!6279260 () Bool)

(assert (=> b!5233587 m!6279260))

(assert (=> b!5233587 m!6279260))

(declare-fun m!6279262 () Bool)

(assert (=> b!5233587 m!6279262))

(declare-fun m!6279264 () Bool)

(assert (=> b!5233587 m!6279264))

(assert (=> b!5233587 m!6279262))

(assert (=> b!5233587 m!6279264))

(declare-fun m!6279266 () Bool)

(assert (=> b!5233587 m!6279266))

(assert (=> b!5233593 m!6279264))

(assert (=> b!5233593 m!6279264))

(declare-fun m!6279268 () Bool)

(assert (=> b!5233593 m!6279268))

(declare-fun m!6279270 () Bool)

(assert (=> bm!370297 m!6279270))

(assert (=> b!5233591 m!6279264))

(assert (=> b!5233591 m!6279264))

(assert (=> b!5233591 m!6279268))

(assert (=> b!5233595 m!6279260))

(assert (=> d!1687272 m!6279270))

(declare-fun m!6279272 () Bool)

(assert (=> d!1687272 m!6279272))

(assert (=> b!5233597 m!6279260))

(assert (=> b!5232611 d!1687272))

(assert (=> b!5232611 d!1687252))

(declare-fun bs!1214995 () Bool)

(declare-fun d!1687274 () Bool)

(assert (= bs!1214995 (and d!1687274 d!1687248)))

(declare-fun lambda!262981 () Int)

(assert (=> bs!1214995 (= lambda!262981 lambda!262977)))

(declare-fun bs!1214996 () Bool)

(assert (= bs!1214996 (and d!1687274 d!1687236)))

(assert (=> bs!1214996 (= lambda!262981 lambda!262975)))

(declare-fun bs!1214997 () Bool)

(assert (= bs!1214997 (and d!1687274 d!1687244)))

(assert (=> bs!1214997 (= lambda!262981 lambda!262976)))

(declare-fun bs!1214998 () Bool)

(assert (= bs!1214998 (and d!1687274 d!1687180)))

(assert (=> bs!1214998 (= lambda!262981 lambda!262963)))

(declare-fun bs!1214999 () Bool)

(assert (= bs!1214999 (and d!1687274 d!1687266)))

(assert (=> bs!1214999 (= lambda!262981 lambda!262980)))

(declare-fun bs!1215000 () Bool)

(assert (= bs!1215000 (and d!1687274 d!1687168)))

(assert (=> bs!1215000 (= lambda!262981 lambda!262961)))

(assert (=> d!1687274 (= (nullableZipper!1246 ((_ map or) lt!2145567 lt!2145570)) (exists!1979 ((_ map or) lt!2145567 lt!2145570) lambda!262981))))

(declare-fun bs!1215001 () Bool)

(assert (= bs!1215001 d!1687274))

(declare-fun m!6279274 () Bool)

(assert (=> bs!1215001 m!6279274))

(assert (=> b!5232571 d!1687274))

(declare-fun bm!370302 () Bool)

(declare-fun call!370307 () Bool)

(declare-fun c!904097 () Bool)

(assert (=> bm!370302 (= call!370307 (nullable!4994 (ite c!904097 (regTwo!30163 (regTwo!30163 (regOne!30162 r!7292))) (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))))))))

(declare-fun bm!370303 () Bool)

(declare-fun call!370308 () Bool)

(assert (=> bm!370303 (= call!370308 (nullable!4994 (ite c!904097 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))))))))

(declare-fun b!5233614 () Bool)

(declare-fun e!3256837 () Bool)

(declare-fun e!3256835 () Bool)

(assert (=> b!5233614 (= e!3256837 e!3256835)))

(declare-fun res!2221425 () Bool)

(assert (=> b!5233614 (= res!2221425 call!370308)))

(assert (=> b!5233614 (=> (not res!2221425) (not e!3256835))))

(declare-fun b!5233615 () Bool)

(declare-fun e!3256840 () Bool)

(declare-fun e!3256836 () Bool)

(assert (=> b!5233615 (= e!3256840 e!3256836)))

(declare-fun res!2221428 () Bool)

(assert (=> b!5233615 (=> (not res!2221428) (not e!3256836))))

(assert (=> b!5233615 (= res!2221428 (and (not ((_ is EmptyLang!14825) (regTwo!30163 (regOne!30162 r!7292)))) (not ((_ is ElementMatch!14825) (regTwo!30163 (regOne!30162 r!7292))))))))

(declare-fun b!5233616 () Bool)

(declare-fun e!3256839 () Bool)

(assert (=> b!5233616 (= e!3256836 e!3256839)))

(declare-fun res!2221427 () Bool)

(assert (=> b!5233616 (=> res!2221427 e!3256839)))

(assert (=> b!5233616 (= res!2221427 ((_ is Star!14825) (regTwo!30163 (regOne!30162 r!7292))))))

(declare-fun b!5233617 () Bool)

(assert (=> b!5233617 (= e!3256839 e!3256837)))

(assert (=> b!5233617 (= c!904097 ((_ is Union!14825) (regTwo!30163 (regOne!30162 r!7292))))))

(declare-fun b!5233618 () Bool)

(assert (=> b!5233618 (= e!3256835 call!370307)))

(declare-fun b!5233619 () Bool)

(declare-fun e!3256838 () Bool)

(assert (=> b!5233619 (= e!3256838 call!370307)))

(declare-fun d!1687276 () Bool)

(declare-fun res!2221426 () Bool)

(assert (=> d!1687276 (=> res!2221426 e!3256840)))

(assert (=> d!1687276 (= res!2221426 ((_ is EmptyExpr!14825) (regTwo!30163 (regOne!30162 r!7292))))))

(assert (=> d!1687276 (= (nullableFct!1398 (regTwo!30163 (regOne!30162 r!7292))) e!3256840)))

(declare-fun b!5233620 () Bool)

(assert (=> b!5233620 (= e!3256837 e!3256838)))

(declare-fun res!2221424 () Bool)

(assert (=> b!5233620 (= res!2221424 call!370308)))

(assert (=> b!5233620 (=> res!2221424 e!3256838)))

(assert (= (and d!1687276 (not res!2221426)) b!5233615))

(assert (= (and b!5233615 res!2221428) b!5233616))

(assert (= (and b!5233616 (not res!2221427)) b!5233617))

(assert (= (and b!5233617 c!904097) b!5233620))

(assert (= (and b!5233617 (not c!904097)) b!5233614))

(assert (= (and b!5233620 (not res!2221424)) b!5233619))

(assert (= (and b!5233614 res!2221425) b!5233618))

(assert (= (or b!5233619 b!5233618) bm!370302))

(assert (= (or b!5233620 b!5233614) bm!370303))

(declare-fun m!6279276 () Bool)

(assert (=> bm!370302 m!6279276))

(declare-fun m!6279278 () Bool)

(assert (=> bm!370303 m!6279278))

(assert (=> d!1686756 d!1687276))

(assert (=> d!1686696 d!1686694))

(assert (=> d!1686696 d!1686692))

(declare-fun d!1687278 () Bool)

(assert (=> d!1687278 (= (matchR!7010 r!7292 s!2326) (matchRSpec!1928 r!7292 s!2326))))

(assert (=> d!1687278 true))

(declare-fun _$88!3516 () Unit!152614)

(assert (=> d!1687278 (= (choose!38917 r!7292 s!2326) _$88!3516)))

(declare-fun bs!1215002 () Bool)

(assert (= bs!1215002 d!1687278))

(assert (=> bs!1215002 m!6277542))

(assert (=> bs!1215002 m!6277540))

(assert (=> d!1686696 d!1687278))

(assert (=> d!1686696 d!1686798))

(declare-fun d!1687280 () Bool)

(declare-fun res!2221429 () Bool)

(declare-fun e!3256841 () Bool)

(assert (=> d!1687280 (=> res!2221429 e!3256841)))

(assert (=> d!1687280 (= res!2221429 ((_ is Nil!60650) (exprs!4709 (h!67100 zl!343))))))

(assert (=> d!1687280 (= (forall!14255 (exprs!4709 (h!67100 zl!343)) lambda!262897) e!3256841)))

(declare-fun b!5233621 () Bool)

(declare-fun e!3256842 () Bool)

(assert (=> b!5233621 (= e!3256841 e!3256842)))

(declare-fun res!2221430 () Bool)

(assert (=> b!5233621 (=> (not res!2221430) (not e!3256842))))

(assert (=> b!5233621 (= res!2221430 (dynLambda!23967 lambda!262897 (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5233622 () Bool)

(assert (=> b!5233622 (= e!3256842 (forall!14255 (t!373953 (exprs!4709 (h!67100 zl!343))) lambda!262897))))

(assert (= (and d!1687280 (not res!2221429)) b!5233621))

(assert (= (and b!5233621 res!2221430) b!5233622))

(declare-fun b_lambda!202355 () Bool)

(assert (=> (not b_lambda!202355) (not b!5233621)))

(declare-fun m!6279280 () Bool)

(assert (=> b!5233621 m!6279280))

(declare-fun m!6279282 () Bool)

(assert (=> b!5233622 m!6279282))

(assert (=> d!1686718 d!1687280))

(declare-fun bs!1215003 () Bool)

(declare-fun d!1687282 () Bool)

(assert (= bs!1215003 (and d!1687282 d!1687248)))

(declare-fun lambda!262982 () Int)

(assert (=> bs!1215003 (= lambda!262982 lambda!262977)))

(declare-fun bs!1215004 () Bool)

(assert (= bs!1215004 (and d!1687282 d!1687236)))

(assert (=> bs!1215004 (= lambda!262982 lambda!262975)))

(declare-fun bs!1215005 () Bool)

(assert (= bs!1215005 (and d!1687282 d!1687244)))

(assert (=> bs!1215005 (= lambda!262982 lambda!262976)))

(declare-fun bs!1215006 () Bool)

(assert (= bs!1215006 (and d!1687282 d!1687180)))

(assert (=> bs!1215006 (= lambda!262982 lambda!262963)))

(declare-fun bs!1215007 () Bool)

(assert (= bs!1215007 (and d!1687282 d!1687274)))

(assert (=> bs!1215007 (= lambda!262982 lambda!262981)))

(declare-fun bs!1215008 () Bool)

(assert (= bs!1215008 (and d!1687282 d!1687266)))

(assert (=> bs!1215008 (= lambda!262982 lambda!262980)))

(declare-fun bs!1215009 () Bool)

(assert (= bs!1215009 (and d!1687282 d!1687168)))

(assert (=> bs!1215009 (= lambda!262982 lambda!262961)))

(assert (=> d!1687282 (= (nullableZipper!1246 lt!2145580) (exists!1979 lt!2145580 lambda!262982))))

(declare-fun bs!1215010 () Bool)

(assert (= bs!1215010 d!1687282))

(declare-fun m!6279284 () Bool)

(assert (=> bs!1215010 m!6279284))

(assert (=> b!5232628 d!1687282))

(declare-fun d!1687284 () Bool)

(assert (=> d!1687284 true))

(declare-fun setRes!33344 () Bool)

(assert (=> d!1687284 setRes!33344))

(declare-fun condSetEmpty!33344 () Bool)

(declare-fun res!2221433 () (InoxSet Context!8418))

(assert (=> d!1687284 (= condSetEmpty!33344 (= res!2221433 ((as const (Array Context!8418 Bool)) false)))))

(assert (=> d!1687284 (= (choose!38922 lt!2145587 lambda!262854) res!2221433)))

(declare-fun setIsEmpty!33344 () Bool)

(assert (=> setIsEmpty!33344 setRes!33344))

(declare-fun setNonEmpty!33344 () Bool)

(declare-fun e!3256845 () Bool)

(declare-fun tp!1466336 () Bool)

(declare-fun setElem!33344 () Context!8418)

(assert (=> setNonEmpty!33344 (= setRes!33344 (and tp!1466336 (inv!80309 setElem!33344) e!3256845))))

(declare-fun setRest!33344 () (InoxSet Context!8418))

(assert (=> setNonEmpty!33344 (= res!2221433 ((_ map or) (store ((as const (Array Context!8418 Bool)) false) setElem!33344 true) setRest!33344))))

(declare-fun b!5233625 () Bool)

(declare-fun tp!1466337 () Bool)

(assert (=> b!5233625 (= e!3256845 tp!1466337)))

(assert (= (and d!1687284 condSetEmpty!33344) setIsEmpty!33344))

(assert (= (and d!1687284 (not condSetEmpty!33344)) setNonEmpty!33344))

(assert (= setNonEmpty!33344 b!5233625))

(declare-fun m!6279286 () Bool)

(assert (=> setNonEmpty!33344 m!6279286))

(assert (=> d!1686770 d!1687284))

(declare-fun d!1687286 () Bool)

(declare-fun c!904098 () Bool)

(assert (=> d!1687286 (= c!904098 (isEmpty!32579 (t!373954 s!2326)))))

(declare-fun e!3256846 () Bool)

(assert (=> d!1687286 (= (matchZipper!1069 ((_ map or) lt!2145567 lt!2145591) (t!373954 s!2326)) e!3256846)))

(declare-fun b!5233626 () Bool)

(assert (=> b!5233626 (= e!3256846 (nullableZipper!1246 ((_ map or) lt!2145567 lt!2145591)))))

(declare-fun b!5233627 () Bool)

(assert (=> b!5233627 (= e!3256846 (matchZipper!1069 (derivationStepZipper!1090 ((_ map or) lt!2145567 lt!2145591) (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))))))

(assert (= (and d!1687286 c!904098) b!5233626))

(assert (= (and d!1687286 (not c!904098)) b!5233627))

(assert (=> d!1687286 m!6278042))

(declare-fun m!6279288 () Bool)

(assert (=> b!5233626 m!6279288))

(assert (=> b!5233627 m!6278046))

(assert (=> b!5233627 m!6278046))

(declare-fun m!6279290 () Bool)

(assert (=> b!5233627 m!6279290))

(assert (=> b!5233627 m!6278050))

(assert (=> b!5233627 m!6279290))

(assert (=> b!5233627 m!6278050))

(declare-fun m!6279292 () Bool)

(assert (=> b!5233627 m!6279292))

(assert (=> d!1686794 d!1687286))

(assert (=> d!1686794 d!1686792))

(declare-fun d!1687288 () Bool)

(declare-fun e!3256847 () Bool)

(assert (=> d!1687288 (= (matchZipper!1069 ((_ map or) lt!2145567 lt!2145591) (t!373954 s!2326)) e!3256847)))

(declare-fun res!2221434 () Bool)

(assert (=> d!1687288 (=> res!2221434 e!3256847)))

(assert (=> d!1687288 (= res!2221434 (matchZipper!1069 lt!2145567 (t!373954 s!2326)))))

(assert (=> d!1687288 true))

(declare-fun _$48!877 () Unit!152614)

(assert (=> d!1687288 (= (choose!38918 lt!2145567 lt!2145591 (t!373954 s!2326)) _$48!877)))

(declare-fun b!5233628 () Bool)

(assert (=> b!5233628 (= e!3256847 (matchZipper!1069 lt!2145591 (t!373954 s!2326)))))

(assert (= (and d!1687288 (not res!2221434)) b!5233628))

(assert (=> d!1687288 m!6278300))

(assert (=> d!1687288 m!6277582))

(assert (=> b!5233628 m!6277588))

(assert (=> d!1686794 d!1687288))

(assert (=> b!5232470 d!1687188))

(assert (=> b!5232470 d!1687190))

(declare-fun b!5233629 () Bool)

(declare-fun res!2221438 () Bool)

(declare-fun e!3256850 () Bool)

(assert (=> b!5233629 (=> res!2221438 e!3256850)))

(declare-fun e!3256853 () Bool)

(assert (=> b!5233629 (= res!2221438 e!3256853)))

(declare-fun res!2221440 () Bool)

(assert (=> b!5233629 (=> (not res!2221440) (not e!3256853))))

(declare-fun lt!2145764 () Bool)

(assert (=> b!5233629 (= res!2221440 lt!2145764)))

(declare-fun b!5233630 () Bool)

(declare-fun e!3256849 () Bool)

(assert (=> b!5233630 (= e!3256849 (matchR!7010 (derivativeStep!4068 (regOne!30162 r!7292) (head!11212 (_1!35327 (get!20844 lt!2145702)))) (tail!10309 (_1!35327 (get!20844 lt!2145702)))))))

(declare-fun bm!370304 () Bool)

(declare-fun call!370309 () Bool)

(assert (=> bm!370304 (= call!370309 (isEmpty!32579 (_1!35327 (get!20844 lt!2145702))))))

(declare-fun b!5233631 () Bool)

(declare-fun res!2221442 () Bool)

(assert (=> b!5233631 (=> (not res!2221442) (not e!3256853))))

(assert (=> b!5233631 (= res!2221442 (not call!370309))))

(declare-fun b!5233632 () Bool)

(declare-fun e!3256851 () Bool)

(declare-fun e!3256848 () Bool)

(assert (=> b!5233632 (= e!3256851 e!3256848)))

(declare-fun res!2221435 () Bool)

(assert (=> b!5233632 (=> res!2221435 e!3256848)))

(assert (=> b!5233632 (= res!2221435 call!370309)))

(declare-fun b!5233633 () Bool)

(assert (=> b!5233633 (= e!3256850 e!3256851)))

(declare-fun res!2221439 () Bool)

(assert (=> b!5233633 (=> (not res!2221439) (not e!3256851))))

(assert (=> b!5233633 (= res!2221439 (not lt!2145764))))

(declare-fun b!5233634 () Bool)

(declare-fun res!2221436 () Bool)

(assert (=> b!5233634 (=> (not res!2221436) (not e!3256853))))

(assert (=> b!5233634 (= res!2221436 (isEmpty!32579 (tail!10309 (_1!35327 (get!20844 lt!2145702)))))))

(declare-fun b!5233635 () Bool)

(declare-fun res!2221437 () Bool)

(assert (=> b!5233635 (=> res!2221437 e!3256850)))

(assert (=> b!5233635 (= res!2221437 (not ((_ is ElementMatch!14825) (regOne!30162 r!7292))))))

(declare-fun e!3256852 () Bool)

(assert (=> b!5233635 (= e!3256852 e!3256850)))

(declare-fun b!5233636 () Bool)

(declare-fun res!2221441 () Bool)

(assert (=> b!5233636 (=> res!2221441 e!3256848)))

(assert (=> b!5233636 (= res!2221441 (not (isEmpty!32579 (tail!10309 (_1!35327 (get!20844 lt!2145702))))))))

(declare-fun b!5233637 () Bool)

(assert (=> b!5233637 (= e!3256852 (not lt!2145764))))

(declare-fun b!5233638 () Bool)

(assert (=> b!5233638 (= e!3256853 (= (head!11212 (_1!35327 (get!20844 lt!2145702))) (c!903601 (regOne!30162 r!7292))))))

(declare-fun b!5233639 () Bool)

(declare-fun e!3256854 () Bool)

(assert (=> b!5233639 (= e!3256854 e!3256852)))

(declare-fun c!904101 () Bool)

(assert (=> b!5233639 (= c!904101 ((_ is EmptyLang!14825) (regOne!30162 r!7292)))))

(declare-fun d!1687290 () Bool)

(assert (=> d!1687290 e!3256854))

(declare-fun c!904100 () Bool)

(assert (=> d!1687290 (= c!904100 ((_ is EmptyExpr!14825) (regOne!30162 r!7292)))))

(assert (=> d!1687290 (= lt!2145764 e!3256849)))

(declare-fun c!904099 () Bool)

(assert (=> d!1687290 (= c!904099 (isEmpty!32579 (_1!35327 (get!20844 lt!2145702))))))

(assert (=> d!1687290 (validRegex!6561 (regOne!30162 r!7292))))

(assert (=> d!1687290 (= (matchR!7010 (regOne!30162 r!7292) (_1!35327 (get!20844 lt!2145702))) lt!2145764)))

(declare-fun b!5233640 () Bool)

(assert (=> b!5233640 (= e!3256848 (not (= (head!11212 (_1!35327 (get!20844 lt!2145702))) (c!903601 (regOne!30162 r!7292)))))))

(declare-fun b!5233641 () Bool)

(assert (=> b!5233641 (= e!3256849 (nullable!4994 (regOne!30162 r!7292)))))

(declare-fun b!5233642 () Bool)

(assert (=> b!5233642 (= e!3256854 (= lt!2145764 call!370309))))

(assert (= (and d!1687290 c!904099) b!5233641))

(assert (= (and d!1687290 (not c!904099)) b!5233630))

(assert (= (and d!1687290 c!904100) b!5233642))

(assert (= (and d!1687290 (not c!904100)) b!5233639))

(assert (= (and b!5233639 c!904101) b!5233637))

(assert (= (and b!5233639 (not c!904101)) b!5233635))

(assert (= (and b!5233635 (not res!2221437)) b!5233629))

(assert (= (and b!5233629 res!2221440) b!5233631))

(assert (= (and b!5233631 res!2221442) b!5233634))

(assert (= (and b!5233634 res!2221436) b!5233638))

(assert (= (and b!5233629 (not res!2221438)) b!5233633))

(assert (= (and b!5233633 res!2221439) b!5233632))

(assert (= (and b!5233632 (not res!2221435)) b!5233636))

(assert (= (and b!5233636 (not res!2221441)) b!5233640))

(assert (= (or b!5233642 b!5233631 b!5233632) bm!370304))

(declare-fun m!6279294 () Bool)

(assert (=> b!5233641 m!6279294))

(declare-fun m!6279296 () Bool)

(assert (=> b!5233630 m!6279296))

(assert (=> b!5233630 m!6279296))

(declare-fun m!6279298 () Bool)

(assert (=> b!5233630 m!6279298))

(declare-fun m!6279300 () Bool)

(assert (=> b!5233630 m!6279300))

(assert (=> b!5233630 m!6279298))

(assert (=> b!5233630 m!6279300))

(declare-fun m!6279302 () Bool)

(assert (=> b!5233630 m!6279302))

(assert (=> b!5233636 m!6279300))

(assert (=> b!5233636 m!6279300))

(declare-fun m!6279304 () Bool)

(assert (=> b!5233636 m!6279304))

(declare-fun m!6279306 () Bool)

(assert (=> bm!370304 m!6279306))

(assert (=> b!5233634 m!6279300))

(assert (=> b!5233634 m!6279300))

(assert (=> b!5233634 m!6279304))

(assert (=> b!5233638 m!6279296))

(assert (=> d!1687290 m!6279306))

(assert (=> d!1687290 m!6278262))

(assert (=> b!5233640 m!6279296))

(assert (=> b!5232607 d!1687290))

(assert (=> b!5232607 d!1687252))

(declare-fun d!1687292 () Bool)

(assert (=> d!1687292 (= (nullable!4994 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343))))) (nullableFct!1398 (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343))))))))

(declare-fun bs!1215011 () Bool)

(assert (= bs!1215011 d!1687292))

(declare-fun m!6279308 () Bool)

(assert (=> bs!1215011 m!6279308))

(assert (=> b!5232504 d!1687292))

(declare-fun d!1687294 () Bool)

(assert (=> d!1687294 true))

(assert (=> d!1687294 true))

(declare-fun res!2221445 () Bool)

(assert (=> d!1687294 (= (choose!38923 lambda!262852) res!2221445)))

(assert (=> d!1686782 d!1687294))

(declare-fun d!1687296 () Bool)

(assert (=> d!1687296 (= (isEmpty!32575 (t!373953 (unfocusZipperList!267 zl!343))) ((_ is Nil!60650) (t!373953 (unfocusZipperList!267 zl!343))))))

(assert (=> b!5232556 d!1687296))

(declare-fun d!1687298 () Bool)

(assert (=> d!1687298 (= (nullable!4994 (h!67098 (exprs!4709 lt!2145593))) (nullableFct!1398 (h!67098 (exprs!4709 lt!2145593))))))

(declare-fun bs!1215012 () Bool)

(assert (= bs!1215012 d!1687298))

(declare-fun m!6279310 () Bool)

(assert (=> bs!1215012 m!6279310))

(assert (=> b!5232577 d!1687298))

(assert (=> d!1686762 d!1686764))

(declare-fun d!1687300 () Bool)

(assert (=> d!1687300 (= (flatMap!552 lt!2145566 lambda!262854) (dynLambda!23968 lambda!262854 lt!2145561))))

(assert (=> d!1687300 true))

(declare-fun _$13!1768 () Unit!152614)

(assert (=> d!1687300 (= (choose!38921 lt!2145566 lt!2145561 lambda!262854) _$13!1768)))

(declare-fun b_lambda!202357 () Bool)

(assert (=> (not b_lambda!202357) (not d!1687300)))

(declare-fun bs!1215013 () Bool)

(assert (= bs!1215013 d!1687300))

(assert (=> bs!1215013 m!6277570))

(assert (=> bs!1215013 m!6278216))

(assert (=> d!1686762 d!1687300))

(declare-fun bm!370305 () Bool)

(declare-fun call!370310 () Bool)

(declare-fun c!904102 () Bool)

(assert (=> bm!370305 (= call!370310 (nullable!4994 (ite c!904102 (regTwo!30163 (regOne!30163 (regOne!30162 r!7292))) (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))))))))

(declare-fun bm!370306 () Bool)

(declare-fun call!370311 () Bool)

(assert (=> bm!370306 (= call!370311 (nullable!4994 (ite c!904102 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (regOne!30162 (regOne!30163 (regOne!30162 r!7292))))))))

(declare-fun b!5233643 () Bool)

(declare-fun e!3256857 () Bool)

(declare-fun e!3256855 () Bool)

(assert (=> b!5233643 (= e!3256857 e!3256855)))

(declare-fun res!2221447 () Bool)

(assert (=> b!5233643 (= res!2221447 call!370311)))

(assert (=> b!5233643 (=> (not res!2221447) (not e!3256855))))

(declare-fun b!5233644 () Bool)

(declare-fun e!3256860 () Bool)

(declare-fun e!3256856 () Bool)

(assert (=> b!5233644 (= e!3256860 e!3256856)))

(declare-fun res!2221450 () Bool)

(assert (=> b!5233644 (=> (not res!2221450) (not e!3256856))))

(assert (=> b!5233644 (= res!2221450 (and (not ((_ is EmptyLang!14825) (regOne!30163 (regOne!30162 r!7292)))) (not ((_ is ElementMatch!14825) (regOne!30163 (regOne!30162 r!7292))))))))

(declare-fun b!5233645 () Bool)

(declare-fun e!3256859 () Bool)

(assert (=> b!5233645 (= e!3256856 e!3256859)))

(declare-fun res!2221449 () Bool)

(assert (=> b!5233645 (=> res!2221449 e!3256859)))

(assert (=> b!5233645 (= res!2221449 ((_ is Star!14825) (regOne!30163 (regOne!30162 r!7292))))))

(declare-fun b!5233646 () Bool)

(assert (=> b!5233646 (= e!3256859 e!3256857)))

(assert (=> b!5233646 (= c!904102 ((_ is Union!14825) (regOne!30163 (regOne!30162 r!7292))))))

(declare-fun b!5233647 () Bool)

(assert (=> b!5233647 (= e!3256855 call!370310)))

(declare-fun b!5233648 () Bool)

(declare-fun e!3256858 () Bool)

(assert (=> b!5233648 (= e!3256858 call!370310)))

(declare-fun d!1687302 () Bool)

(declare-fun res!2221448 () Bool)

(assert (=> d!1687302 (=> res!2221448 e!3256860)))

(assert (=> d!1687302 (= res!2221448 ((_ is EmptyExpr!14825) (regOne!30163 (regOne!30162 r!7292))))))

(assert (=> d!1687302 (= (nullableFct!1398 (regOne!30163 (regOne!30162 r!7292))) e!3256860)))

(declare-fun b!5233649 () Bool)

(assert (=> b!5233649 (= e!3256857 e!3256858)))

(declare-fun res!2221446 () Bool)

(assert (=> b!5233649 (= res!2221446 call!370311)))

(assert (=> b!5233649 (=> res!2221446 e!3256858)))

(assert (= (and d!1687302 (not res!2221448)) b!5233644))

(assert (= (and b!5233644 res!2221450) b!5233645))

(assert (= (and b!5233645 (not res!2221449)) b!5233646))

(assert (= (and b!5233646 c!904102) b!5233649))

(assert (= (and b!5233646 (not c!904102)) b!5233643))

(assert (= (and b!5233649 (not res!2221446)) b!5233648))

(assert (= (and b!5233643 res!2221447) b!5233647))

(assert (= (or b!5233648 b!5233647) bm!370305))

(assert (= (or b!5233649 b!5233643) bm!370306))

(declare-fun m!6279312 () Bool)

(assert (=> bm!370305 m!6279312))

(declare-fun m!6279314 () Bool)

(assert (=> bm!370306 m!6279314))

(assert (=> d!1686774 d!1687302))

(assert (=> b!5232474 d!1687210))

(declare-fun call!370314 () Bool)

(declare-fun c!904104 () Bool)

(declare-fun bm!370307 () Bool)

(assert (=> bm!370307 (= call!370314 (validRegex!6561 (ite c!904104 (regTwo!30163 (ite c!903848 (reg!15154 r!7292) (ite c!903849 (regOne!30163 r!7292) (regOne!30162 r!7292)))) (regTwo!30162 (ite c!903848 (reg!15154 r!7292) (ite c!903849 (regOne!30163 r!7292) (regOne!30162 r!7292)))))))))

(declare-fun b!5233650 () Bool)

(declare-fun e!3256862 () Bool)

(declare-fun e!3256861 () Bool)

(assert (=> b!5233650 (= e!3256862 e!3256861)))

(declare-fun c!904103 () Bool)

(assert (=> b!5233650 (= c!904103 ((_ is Star!14825) (ite c!903848 (reg!15154 r!7292) (ite c!903849 (regOne!30163 r!7292) (regOne!30162 r!7292)))))))

(declare-fun b!5233651 () Bool)

(declare-fun e!3256864 () Bool)

(assert (=> b!5233651 (= e!3256864 call!370314)))

(declare-fun b!5233652 () Bool)

(declare-fun e!3256867 () Bool)

(assert (=> b!5233652 (= e!3256867 call!370314)))

(declare-fun b!5233653 () Bool)

(declare-fun e!3256866 () Bool)

(assert (=> b!5233653 (= e!3256861 e!3256866)))

(assert (=> b!5233653 (= c!904104 ((_ is Union!14825) (ite c!903848 (reg!15154 r!7292) (ite c!903849 (regOne!30163 r!7292) (regOne!30162 r!7292)))))))

(declare-fun call!370313 () Bool)

(declare-fun bm!370308 () Bool)

(assert (=> bm!370308 (= call!370313 (validRegex!6561 (ite c!904103 (reg!15154 (ite c!903848 (reg!15154 r!7292) (ite c!903849 (regOne!30163 r!7292) (regOne!30162 r!7292)))) (ite c!904104 (regOne!30163 (ite c!903848 (reg!15154 r!7292) (ite c!903849 (regOne!30163 r!7292) (regOne!30162 r!7292)))) (regOne!30162 (ite c!903848 (reg!15154 r!7292) (ite c!903849 (regOne!30163 r!7292) (regOne!30162 r!7292))))))))))

(declare-fun b!5233654 () Bool)

(declare-fun e!3256863 () Bool)

(assert (=> b!5233654 (= e!3256863 call!370313)))

(declare-fun b!5233655 () Bool)

(declare-fun res!2221451 () Bool)

(declare-fun e!3256865 () Bool)

(assert (=> b!5233655 (=> res!2221451 e!3256865)))

(assert (=> b!5233655 (= res!2221451 (not ((_ is Concat!23670) (ite c!903848 (reg!15154 r!7292) (ite c!903849 (regOne!30163 r!7292) (regOne!30162 r!7292))))))))

(assert (=> b!5233655 (= e!3256866 e!3256865)))

(declare-fun b!5233656 () Bool)

(assert (=> b!5233656 (= e!3256861 e!3256863)))

(declare-fun res!2221454 () Bool)

(assert (=> b!5233656 (= res!2221454 (not (nullable!4994 (reg!15154 (ite c!903848 (reg!15154 r!7292) (ite c!903849 (regOne!30163 r!7292) (regOne!30162 r!7292)))))))))

(assert (=> b!5233656 (=> (not res!2221454) (not e!3256863))))

(declare-fun b!5233657 () Bool)

(assert (=> b!5233657 (= e!3256865 e!3256867)))

(declare-fun res!2221452 () Bool)

(assert (=> b!5233657 (=> (not res!2221452) (not e!3256867))))

(declare-fun call!370312 () Bool)

(assert (=> b!5233657 (= res!2221452 call!370312)))

(declare-fun bm!370309 () Bool)

(assert (=> bm!370309 (= call!370312 call!370313)))

(declare-fun d!1687304 () Bool)

(declare-fun res!2221453 () Bool)

(assert (=> d!1687304 (=> res!2221453 e!3256862)))

(assert (=> d!1687304 (= res!2221453 ((_ is ElementMatch!14825) (ite c!903848 (reg!15154 r!7292) (ite c!903849 (regOne!30163 r!7292) (regOne!30162 r!7292)))))))

(assert (=> d!1687304 (= (validRegex!6561 (ite c!903848 (reg!15154 r!7292) (ite c!903849 (regOne!30163 r!7292) (regOne!30162 r!7292)))) e!3256862)))

(declare-fun b!5233658 () Bool)

(declare-fun res!2221455 () Bool)

(assert (=> b!5233658 (=> (not res!2221455) (not e!3256864))))

(assert (=> b!5233658 (= res!2221455 call!370312)))

(assert (=> b!5233658 (= e!3256866 e!3256864)))

(assert (= (and d!1687304 (not res!2221453)) b!5233650))

(assert (= (and b!5233650 c!904103) b!5233656))

(assert (= (and b!5233650 (not c!904103)) b!5233653))

(assert (= (and b!5233656 res!2221454) b!5233654))

(assert (= (and b!5233653 c!904104) b!5233658))

(assert (= (and b!5233653 (not c!904104)) b!5233655))

(assert (= (and b!5233658 res!2221455) b!5233651))

(assert (= (and b!5233655 (not res!2221451)) b!5233657))

(assert (= (and b!5233657 res!2221452) b!5233652))

(assert (= (or b!5233651 b!5233652) bm!370307))

(assert (= (or b!5233658 b!5233657) bm!370309))

(assert (= (or b!5233654 bm!370309) bm!370308))

(declare-fun m!6279316 () Bool)

(assert (=> bm!370307 m!6279316))

(declare-fun m!6279318 () Bool)

(assert (=> bm!370308 m!6279318))

(declare-fun m!6279320 () Bool)

(assert (=> b!5233656 m!6279320))

(assert (=> bm!370124 d!1687304))

(declare-fun bs!1215014 () Bool)

(declare-fun b!5233662 () Bool)

(assert (= bs!1215014 (and b!5233662 d!1686784)))

(declare-fun lambda!262983 () Int)

(assert (=> bs!1215014 (not (= lambda!262983 lambda!262907))))

(declare-fun bs!1215015 () Bool)

(assert (= bs!1215015 (and b!5233662 d!1686786)))

(assert (=> bs!1215015 (not (= lambda!262983 lambda!262912))))

(assert (=> bs!1215015 (not (= lambda!262983 lambda!262913))))

(declare-fun bs!1215016 () Bool)

(assert (= bs!1215016 (and b!5233662 b!5232398)))

(assert (=> bs!1215016 (not (= lambda!262983 lambda!262893))))

(declare-fun bs!1215017 () Bool)

(assert (= bs!1215017 (and b!5233662 b!5231833)))

(assert (=> bs!1215017 (not (= lambda!262983 lambda!262852))))

(declare-fun bs!1215018 () Bool)

(assert (= bs!1215018 (and b!5233662 d!1687204)))

(assert (=> bs!1215018 (not (= lambda!262983 lambda!262970))))

(assert (=> bs!1215018 (not (= lambda!262983 lambda!262969))))

(assert (=> bs!1215017 (not (= lambda!262983 lambda!262853))))

(declare-fun bs!1215019 () Bool)

(assert (= bs!1215019 (and b!5233662 b!5232393)))

(assert (=> bs!1215019 (= (and (= (reg!15154 (regOne!30163 r!7292)) (reg!15154 r!7292)) (= (regOne!30163 r!7292) r!7292)) (= lambda!262983 lambda!262892))))

(assert (=> b!5233662 true))

(assert (=> b!5233662 true))

(declare-fun bs!1215020 () Bool)

(declare-fun b!5233667 () Bool)

(assert (= bs!1215020 (and b!5233667 d!1686784)))

(declare-fun lambda!262984 () Int)

(assert (=> bs!1215020 (not (= lambda!262984 lambda!262907))))

(declare-fun bs!1215021 () Bool)

(assert (= bs!1215021 (and b!5233667 d!1686786)))

(assert (=> bs!1215021 (not (= lambda!262984 lambda!262912))))

(assert (=> bs!1215021 (= (and (= (regOne!30162 (regOne!30163 r!7292)) (regOne!30162 r!7292)) (= (regTwo!30162 (regOne!30163 r!7292)) (regTwo!30162 r!7292))) (= lambda!262984 lambda!262913))))

(declare-fun bs!1215022 () Bool)

(assert (= bs!1215022 (and b!5233667 b!5233662)))

(assert (=> bs!1215022 (not (= lambda!262984 lambda!262983))))

(declare-fun bs!1215023 () Bool)

(assert (= bs!1215023 (and b!5233667 b!5232398)))

(assert (=> bs!1215023 (= (and (= (regOne!30162 (regOne!30163 r!7292)) (regOne!30162 r!7292)) (= (regTwo!30162 (regOne!30163 r!7292)) (regTwo!30162 r!7292))) (= lambda!262984 lambda!262893))))

(declare-fun bs!1215024 () Bool)

(assert (= bs!1215024 (and b!5233667 b!5231833)))

(assert (=> bs!1215024 (not (= lambda!262984 lambda!262852))))

(declare-fun bs!1215025 () Bool)

(assert (= bs!1215025 (and b!5233667 d!1687204)))

(assert (=> bs!1215025 (= (and (= (regOne!30162 (regOne!30163 r!7292)) (regOne!30162 r!7292)) (= (regTwo!30162 (regOne!30163 r!7292)) (regTwo!30162 r!7292))) (= lambda!262984 lambda!262970))))

(assert (=> bs!1215025 (not (= lambda!262984 lambda!262969))))

(assert (=> bs!1215024 (= (and (= (regOne!30162 (regOne!30163 r!7292)) (regOne!30162 r!7292)) (= (regTwo!30162 (regOne!30163 r!7292)) (regTwo!30162 r!7292))) (= lambda!262984 lambda!262853))))

(declare-fun bs!1215026 () Bool)

(assert (= bs!1215026 (and b!5233667 b!5232393)))

(assert (=> bs!1215026 (not (= lambda!262984 lambda!262892))))

(assert (=> b!5233667 true))

(assert (=> b!5233667 true))

(declare-fun b!5233659 () Bool)

(declare-fun e!3256874 () Bool)

(declare-fun e!3256872 () Bool)

(assert (=> b!5233659 (= e!3256874 e!3256872)))

(declare-fun c!904108 () Bool)

(assert (=> b!5233659 (= c!904108 ((_ is Star!14825) (regOne!30163 r!7292)))))

(declare-fun bm!370310 () Bool)

(declare-fun call!370315 () Bool)

(assert (=> bm!370310 (= call!370315 (Exists!2006 (ite c!904108 lambda!262983 lambda!262984)))))

(declare-fun b!5233660 () Bool)

(declare-fun e!3256870 () Bool)

(declare-fun e!3256871 () Bool)

(assert (=> b!5233660 (= e!3256870 e!3256871)))

(declare-fun res!2221458 () Bool)

(assert (=> b!5233660 (= res!2221458 (not ((_ is EmptyLang!14825) (regOne!30163 r!7292))))))

(assert (=> b!5233660 (=> (not res!2221458) (not e!3256871))))

(declare-fun b!5233661 () Bool)

(declare-fun e!3256869 () Bool)

(assert (=> b!5233661 (= e!3256869 (= s!2326 (Cons!60651 (c!903601 (regOne!30163 r!7292)) Nil!60651)))))

(declare-fun e!3256873 () Bool)

(assert (=> b!5233662 (= e!3256873 call!370315)))

(declare-fun b!5233663 () Bool)

(declare-fun c!904107 () Bool)

(assert (=> b!5233663 (= c!904107 ((_ is ElementMatch!14825) (regOne!30163 r!7292)))))

(assert (=> b!5233663 (= e!3256871 e!3256869)))

(declare-fun b!5233664 () Bool)

(declare-fun res!2221456 () Bool)

(assert (=> b!5233664 (=> res!2221456 e!3256873)))

(declare-fun call!370316 () Bool)

(assert (=> b!5233664 (= res!2221456 call!370316)))

(assert (=> b!5233664 (= e!3256872 e!3256873)))

(declare-fun bm!370311 () Bool)

(assert (=> bm!370311 (= call!370316 (isEmpty!32579 s!2326))))

(declare-fun b!5233665 () Bool)

(declare-fun c!904106 () Bool)

(assert (=> b!5233665 (= c!904106 ((_ is Union!14825) (regOne!30163 r!7292)))))

(assert (=> b!5233665 (= e!3256869 e!3256874)))

(declare-fun b!5233666 () Bool)

(assert (=> b!5233666 (= e!3256870 call!370316)))

(assert (=> b!5233667 (= e!3256872 call!370315)))

(declare-fun d!1687306 () Bool)

(declare-fun c!904105 () Bool)

(assert (=> d!1687306 (= c!904105 ((_ is EmptyExpr!14825) (regOne!30163 r!7292)))))

(assert (=> d!1687306 (= (matchRSpec!1928 (regOne!30163 r!7292) s!2326) e!3256870)))

(declare-fun b!5233668 () Bool)

(declare-fun e!3256868 () Bool)

(assert (=> b!5233668 (= e!3256868 (matchRSpec!1928 (regTwo!30163 (regOne!30163 r!7292)) s!2326))))

(declare-fun b!5233669 () Bool)

(assert (=> b!5233669 (= e!3256874 e!3256868)))

(declare-fun res!2221457 () Bool)

(assert (=> b!5233669 (= res!2221457 (matchRSpec!1928 (regOne!30163 (regOne!30163 r!7292)) s!2326))))

(assert (=> b!5233669 (=> res!2221457 e!3256868)))

(assert (= (and d!1687306 c!904105) b!5233666))

(assert (= (and d!1687306 (not c!904105)) b!5233660))

(assert (= (and b!5233660 res!2221458) b!5233663))

(assert (= (and b!5233663 c!904107) b!5233661))

(assert (= (and b!5233663 (not c!904107)) b!5233665))

(assert (= (and b!5233665 c!904106) b!5233669))

(assert (= (and b!5233665 (not c!904106)) b!5233659))

(assert (= (and b!5233669 (not res!2221457)) b!5233668))

(assert (= (and b!5233659 c!904108) b!5233664))

(assert (= (and b!5233659 (not c!904108)) b!5233667))

(assert (= (and b!5233664 (not res!2221456)) b!5233662))

(assert (= (or b!5233662 b!5233667) bm!370310))

(assert (= (or b!5233666 b!5233664) bm!370311))

(declare-fun m!6279322 () Bool)

(assert (=> bm!370310 m!6279322))

(assert (=> bm!370311 m!6278022))

(declare-fun m!6279324 () Bool)

(assert (=> b!5233668 m!6279324))

(declare-fun m!6279326 () Bool)

(assert (=> b!5233669 m!6279326))

(assert (=> b!5232400 d!1687306))

(declare-fun bs!1215027 () Bool)

(declare-fun d!1687308 () Bool)

(assert (= bs!1215027 (and d!1687308 d!1687248)))

(declare-fun lambda!262985 () Int)

(assert (=> bs!1215027 (= lambda!262985 lambda!262977)))

(declare-fun bs!1215028 () Bool)

(assert (= bs!1215028 (and d!1687308 d!1687236)))

(assert (=> bs!1215028 (= lambda!262985 lambda!262975)))

(declare-fun bs!1215029 () Bool)

(assert (= bs!1215029 (and d!1687308 d!1687244)))

(assert (=> bs!1215029 (= lambda!262985 lambda!262976)))

(declare-fun bs!1215030 () Bool)

(assert (= bs!1215030 (and d!1687308 d!1687180)))

(assert (=> bs!1215030 (= lambda!262985 lambda!262963)))

(declare-fun bs!1215031 () Bool)

(assert (= bs!1215031 (and d!1687308 d!1687266)))

(assert (=> bs!1215031 (= lambda!262985 lambda!262980)))

(declare-fun bs!1215032 () Bool)

(assert (= bs!1215032 (and d!1687308 d!1687168)))

(assert (=> bs!1215032 (= lambda!262985 lambda!262961)))

(declare-fun bs!1215033 () Bool)

(assert (= bs!1215033 (and d!1687308 d!1687282)))

(assert (=> bs!1215033 (= lambda!262985 lambda!262982)))

(declare-fun bs!1215034 () Bool)

(assert (= bs!1215034 (and d!1687308 d!1687274)))

(assert (=> bs!1215034 (= lambda!262985 lambda!262981)))

(assert (=> d!1687308 (= (nullableZipper!1246 ((_ map or) lt!2145591 lt!2145570)) (exists!1979 ((_ map or) lt!2145591 lt!2145570) lambda!262985))))

(declare-fun bs!1215035 () Bool)

(assert (= bs!1215035 d!1687308))

(declare-fun m!6279328 () Bool)

(assert (=> bs!1215035 m!6279328))

(assert (=> b!5232452 d!1687308))

(declare-fun d!1687310 () Bool)

(assert (=> d!1687310 (= (isEmpty!32575 (unfocusZipperList!267 zl!343)) ((_ is Nil!60650) (unfocusZipperList!267 zl!343)))))

(assert (=> b!5232560 d!1687310))

(declare-fun b!5233670 () Bool)

(declare-fun e!3256879 () (InoxSet Context!8418))

(declare-fun e!3256880 () (InoxSet Context!8418))

(assert (=> b!5233670 (= e!3256879 e!3256880)))

(declare-fun c!904111 () Bool)

(assert (=> b!5233670 (= c!904111 ((_ is Concat!23670) (h!67098 (exprs!4709 lt!2145561))))))

(declare-fun b!5233671 () Bool)

(declare-fun call!370317 () (InoxSet Context!8418))

(assert (=> b!5233671 (= e!3256880 call!370317)))

(declare-fun bm!370312 () Bool)

(declare-fun call!370318 () (InoxSet Context!8418))

(declare-fun call!370322 () (InoxSet Context!8418))

(assert (=> bm!370312 (= call!370318 call!370322)))

(declare-fun d!1687312 () Bool)

(declare-fun c!904113 () Bool)

(assert (=> d!1687312 (= c!904113 (and ((_ is ElementMatch!14825) (h!67098 (exprs!4709 lt!2145561))) (= (c!903601 (h!67098 (exprs!4709 lt!2145561))) (h!67099 s!2326))))))

(declare-fun e!3256875 () (InoxSet Context!8418))

(assert (=> d!1687312 (= (derivationStepZipperDown!273 (h!67098 (exprs!4709 lt!2145561)) (Context!8419 (t!373953 (exprs!4709 lt!2145561))) (h!67099 s!2326)) e!3256875)))

(declare-fun b!5233672 () Bool)

(declare-fun c!904110 () Bool)

(assert (=> b!5233672 (= c!904110 ((_ is Star!14825) (h!67098 (exprs!4709 lt!2145561))))))

(declare-fun e!3256877 () (InoxSet Context!8418))

(assert (=> b!5233672 (= e!3256880 e!3256877)))

(declare-fun b!5233673 () Bool)

(declare-fun c!904109 () Bool)

(declare-fun e!3256878 () Bool)

(assert (=> b!5233673 (= c!904109 e!3256878)))

(declare-fun res!2221459 () Bool)

(assert (=> b!5233673 (=> (not res!2221459) (not e!3256878))))

(assert (=> b!5233673 (= res!2221459 ((_ is Concat!23670) (h!67098 (exprs!4709 lt!2145561))))))

(declare-fun e!3256876 () (InoxSet Context!8418))

(assert (=> b!5233673 (= e!3256876 e!3256879)))

(declare-fun b!5233674 () Bool)

(assert (=> b!5233674 (= e!3256875 (store ((as const (Array Context!8418 Bool)) false) (Context!8419 (t!373953 (exprs!4709 lt!2145561))) true))))

(declare-fun b!5233675 () Bool)

(declare-fun call!370321 () (InoxSet Context!8418))

(assert (=> b!5233675 (= e!3256879 ((_ map or) call!370321 call!370318))))

(declare-fun call!370319 () List!60774)

(declare-fun bm!370313 () Bool)

(assert (=> bm!370313 (= call!370319 ($colon$colon!1296 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145561)))) (ite (or c!904109 c!904111) (regTwo!30162 (h!67098 (exprs!4709 lt!2145561))) (h!67098 (exprs!4709 lt!2145561)))))))

(declare-fun b!5233676 () Bool)

(assert (=> b!5233676 (= e!3256878 (nullable!4994 (regOne!30162 (h!67098 (exprs!4709 lt!2145561)))))))

(declare-fun b!5233677 () Bool)

(assert (=> b!5233677 (= e!3256875 e!3256876)))

(declare-fun c!904112 () Bool)

(assert (=> b!5233677 (= c!904112 ((_ is Union!14825) (h!67098 (exprs!4709 lt!2145561))))))

(declare-fun b!5233678 () Bool)

(assert (=> b!5233678 (= e!3256876 ((_ map or) call!370322 call!370321))))

(declare-fun b!5233679 () Bool)

(assert (=> b!5233679 (= e!3256877 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233680 () Bool)

(assert (=> b!5233680 (= e!3256877 call!370317)))

(declare-fun call!370320 () List!60774)

(declare-fun bm!370314 () Bool)

(assert (=> bm!370314 (= call!370322 (derivationStepZipperDown!273 (ite c!904112 (regOne!30163 (h!67098 (exprs!4709 lt!2145561))) (ite c!904109 (regTwo!30162 (h!67098 (exprs!4709 lt!2145561))) (ite c!904111 (regOne!30162 (h!67098 (exprs!4709 lt!2145561))) (reg!15154 (h!67098 (exprs!4709 lt!2145561)))))) (ite (or c!904112 c!904109) (Context!8419 (t!373953 (exprs!4709 lt!2145561))) (Context!8419 call!370320)) (h!67099 s!2326)))))

(declare-fun bm!370315 () Bool)

(assert (=> bm!370315 (= call!370320 call!370319)))

(declare-fun bm!370316 () Bool)

(assert (=> bm!370316 (= call!370317 call!370318)))

(declare-fun bm!370317 () Bool)

(assert (=> bm!370317 (= call!370321 (derivationStepZipperDown!273 (ite c!904112 (regTwo!30163 (h!67098 (exprs!4709 lt!2145561))) (regOne!30162 (h!67098 (exprs!4709 lt!2145561)))) (ite c!904112 (Context!8419 (t!373953 (exprs!4709 lt!2145561))) (Context!8419 call!370319)) (h!67099 s!2326)))))

(assert (= (and d!1687312 c!904113) b!5233674))

(assert (= (and d!1687312 (not c!904113)) b!5233677))

(assert (= (and b!5233677 c!904112) b!5233678))

(assert (= (and b!5233677 (not c!904112)) b!5233673))

(assert (= (and b!5233673 res!2221459) b!5233676))

(assert (= (and b!5233673 c!904109) b!5233675))

(assert (= (and b!5233673 (not c!904109)) b!5233670))

(assert (= (and b!5233670 c!904111) b!5233671))

(assert (= (and b!5233670 (not c!904111)) b!5233672))

(assert (= (and b!5233672 c!904110) b!5233680))

(assert (= (and b!5233672 (not c!904110)) b!5233679))

(assert (= (or b!5233671 b!5233680) bm!370315))

(assert (= (or b!5233671 b!5233680) bm!370316))

(assert (= (or b!5233675 bm!370315) bm!370313))

(assert (= (or b!5233675 bm!370316) bm!370312))

(assert (= (or b!5233678 b!5233675) bm!370317))

(assert (= (or b!5233678 bm!370312) bm!370314))

(declare-fun m!6279330 () Bool)

(assert (=> b!5233674 m!6279330))

(declare-fun m!6279332 () Bool)

(assert (=> b!5233676 m!6279332))

(declare-fun m!6279334 () Bool)

(assert (=> bm!370317 m!6279334))

(declare-fun m!6279336 () Bool)

(assert (=> bm!370313 m!6279336))

(declare-fun m!6279338 () Bool)

(assert (=> bm!370314 m!6279338))

(assert (=> bm!370116 d!1687312))

(declare-fun d!1687314 () Bool)

(declare-fun c!904114 () Bool)

(assert (=> d!1687314 (= c!904114 (isEmpty!32579 (tail!10309 (t!373954 s!2326))))))

(declare-fun e!3256881 () Bool)

(assert (=> d!1687314 (= (matchZipper!1069 (derivationStepZipper!1090 lt!2145567 (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))) e!3256881)))

(declare-fun b!5233681 () Bool)

(assert (=> b!5233681 (= e!3256881 (nullableZipper!1246 (derivationStepZipper!1090 lt!2145567 (head!11212 (t!373954 s!2326)))))))

(declare-fun b!5233682 () Bool)

(assert (=> b!5233682 (= e!3256881 (matchZipper!1069 (derivationStepZipper!1090 (derivationStepZipper!1090 lt!2145567 (head!11212 (t!373954 s!2326))) (head!11212 (tail!10309 (t!373954 s!2326)))) (tail!10309 (tail!10309 (t!373954 s!2326)))))))

(assert (= (and d!1687314 c!904114) b!5233681))

(assert (= (and d!1687314 (not c!904114)) b!5233682))

(assert (=> d!1687314 m!6278050))

(assert (=> d!1687314 m!6279144))

(assert (=> b!5233681 m!6278296))

(declare-fun m!6279340 () Bool)

(assert (=> b!5233681 m!6279340))

(assert (=> b!5233682 m!6278050))

(assert (=> b!5233682 m!6279148))

(assert (=> b!5233682 m!6278296))

(assert (=> b!5233682 m!6279148))

(declare-fun m!6279342 () Bool)

(assert (=> b!5233682 m!6279342))

(assert (=> b!5233682 m!6278050))

(assert (=> b!5233682 m!6279152))

(assert (=> b!5233682 m!6279342))

(assert (=> b!5233682 m!6279152))

(declare-fun m!6279344 () Bool)

(assert (=> b!5233682 m!6279344))

(assert (=> b!5232631 d!1687314))

(declare-fun bs!1215036 () Bool)

(declare-fun d!1687316 () Bool)

(assert (= bs!1215036 (and d!1687316 b!5231809)))

(declare-fun lambda!262986 () Int)

(assert (=> bs!1215036 (= (= (head!11212 (t!373954 s!2326)) (h!67099 s!2326)) (= lambda!262986 lambda!262854))))

(declare-fun bs!1215037 () Bool)

(assert (= bs!1215037 (and d!1687316 d!1687222)))

(assert (=> bs!1215037 (= lambda!262986 lambda!262973)))

(assert (=> d!1687316 true))

(assert (=> d!1687316 (= (derivationStepZipper!1090 lt!2145567 (head!11212 (t!373954 s!2326))) (flatMap!552 lt!2145567 lambda!262986))))

(declare-fun bs!1215038 () Bool)

(assert (= bs!1215038 d!1687316))

(declare-fun m!6279346 () Bool)

(assert (=> bs!1215038 m!6279346))

(assert (=> b!5232631 d!1687316))

(assert (=> b!5232631 d!1687224))

(assert (=> b!5232631 d!1687226))

(declare-fun d!1687318 () Bool)

(assert (=> d!1687318 (= (isEmpty!32575 (tail!10308 lt!2145568)) ((_ is Nil!60650) (tail!10308 lt!2145568)))))

(assert (=> b!5232479 d!1687318))

(declare-fun d!1687320 () Bool)

(assert (=> d!1687320 (= (tail!10308 lt!2145568) (t!373953 lt!2145568))))

(assert (=> b!5232479 d!1687320))

(declare-fun d!1687322 () Bool)

(assert (=> d!1687322 (= (isDefined!11639 lt!2145702) (not (isEmpty!32580 lt!2145702)))))

(declare-fun bs!1215039 () Bool)

(assert (= bs!1215039 d!1687322))

(declare-fun m!6279348 () Bool)

(assert (=> bs!1215039 m!6279348))

(assert (=> d!1686778 d!1687322))

(declare-fun b!5233683 () Bool)

(declare-fun res!2221463 () Bool)

(declare-fun e!3256884 () Bool)

(assert (=> b!5233683 (=> res!2221463 e!3256884)))

(declare-fun e!3256887 () Bool)

(assert (=> b!5233683 (= res!2221463 e!3256887)))

(declare-fun res!2221465 () Bool)

(assert (=> b!5233683 (=> (not res!2221465) (not e!3256887))))

(declare-fun lt!2145765 () Bool)

(assert (=> b!5233683 (= res!2221465 lt!2145765)))

(declare-fun b!5233684 () Bool)

(declare-fun e!3256883 () Bool)

(assert (=> b!5233684 (= e!3256883 (matchR!7010 (derivativeStep!4068 (regOne!30162 r!7292) (head!11212 Nil!60651)) (tail!10309 Nil!60651)))))

(declare-fun bm!370318 () Bool)

(declare-fun call!370323 () Bool)

(assert (=> bm!370318 (= call!370323 (isEmpty!32579 Nil!60651))))

(declare-fun b!5233685 () Bool)

(declare-fun res!2221467 () Bool)

(assert (=> b!5233685 (=> (not res!2221467) (not e!3256887))))

(assert (=> b!5233685 (= res!2221467 (not call!370323))))

(declare-fun b!5233686 () Bool)

(declare-fun e!3256885 () Bool)

(declare-fun e!3256882 () Bool)

(assert (=> b!5233686 (= e!3256885 e!3256882)))

(declare-fun res!2221460 () Bool)

(assert (=> b!5233686 (=> res!2221460 e!3256882)))

(assert (=> b!5233686 (= res!2221460 call!370323)))

(declare-fun b!5233687 () Bool)

(assert (=> b!5233687 (= e!3256884 e!3256885)))

(declare-fun res!2221464 () Bool)

(assert (=> b!5233687 (=> (not res!2221464) (not e!3256885))))

(assert (=> b!5233687 (= res!2221464 (not lt!2145765))))

(declare-fun b!5233688 () Bool)

(declare-fun res!2221461 () Bool)

(assert (=> b!5233688 (=> (not res!2221461) (not e!3256887))))

(assert (=> b!5233688 (= res!2221461 (isEmpty!32579 (tail!10309 Nil!60651)))))

(declare-fun b!5233689 () Bool)

(declare-fun res!2221462 () Bool)

(assert (=> b!5233689 (=> res!2221462 e!3256884)))

(assert (=> b!5233689 (= res!2221462 (not ((_ is ElementMatch!14825) (regOne!30162 r!7292))))))

(declare-fun e!3256886 () Bool)

(assert (=> b!5233689 (= e!3256886 e!3256884)))

(declare-fun b!5233690 () Bool)

(declare-fun res!2221466 () Bool)

(assert (=> b!5233690 (=> res!2221466 e!3256882)))

(assert (=> b!5233690 (= res!2221466 (not (isEmpty!32579 (tail!10309 Nil!60651))))))

(declare-fun b!5233691 () Bool)

(assert (=> b!5233691 (= e!3256886 (not lt!2145765))))

(declare-fun b!5233692 () Bool)

(assert (=> b!5233692 (= e!3256887 (= (head!11212 Nil!60651) (c!903601 (regOne!30162 r!7292))))))

(declare-fun b!5233693 () Bool)

(declare-fun e!3256888 () Bool)

(assert (=> b!5233693 (= e!3256888 e!3256886)))

(declare-fun c!904117 () Bool)

(assert (=> b!5233693 (= c!904117 ((_ is EmptyLang!14825) (regOne!30162 r!7292)))))

(declare-fun d!1687324 () Bool)

(assert (=> d!1687324 e!3256888))

(declare-fun c!904116 () Bool)

(assert (=> d!1687324 (= c!904116 ((_ is EmptyExpr!14825) (regOne!30162 r!7292)))))

(assert (=> d!1687324 (= lt!2145765 e!3256883)))

(declare-fun c!904115 () Bool)

(assert (=> d!1687324 (= c!904115 (isEmpty!32579 Nil!60651))))

(assert (=> d!1687324 (validRegex!6561 (regOne!30162 r!7292))))

(assert (=> d!1687324 (= (matchR!7010 (regOne!30162 r!7292) Nil!60651) lt!2145765)))

(declare-fun b!5233694 () Bool)

(assert (=> b!5233694 (= e!3256882 (not (= (head!11212 Nil!60651) (c!903601 (regOne!30162 r!7292)))))))

(declare-fun b!5233695 () Bool)

(assert (=> b!5233695 (= e!3256883 (nullable!4994 (regOne!30162 r!7292)))))

(declare-fun b!5233696 () Bool)

(assert (=> b!5233696 (= e!3256888 (= lt!2145765 call!370323))))

(assert (= (and d!1687324 c!904115) b!5233695))

(assert (= (and d!1687324 (not c!904115)) b!5233684))

(assert (= (and d!1687324 c!904116) b!5233696))

(assert (= (and d!1687324 (not c!904116)) b!5233693))

(assert (= (and b!5233693 c!904117) b!5233691))

(assert (= (and b!5233693 (not c!904117)) b!5233689))

(assert (= (and b!5233689 (not res!2221462)) b!5233683))

(assert (= (and b!5233683 res!2221465) b!5233685))

(assert (= (and b!5233685 res!2221467) b!5233688))

(assert (= (and b!5233688 res!2221461) b!5233692))

(assert (= (and b!5233683 (not res!2221463)) b!5233687))

(assert (= (and b!5233687 res!2221464) b!5233686))

(assert (= (and b!5233686 (not res!2221460)) b!5233690))

(assert (= (and b!5233690 (not res!2221466)) b!5233694))

(assert (= (or b!5233696 b!5233685 b!5233686) bm!370318))

(assert (=> b!5233695 m!6279294))

(declare-fun m!6279350 () Bool)

(assert (=> b!5233684 m!6279350))

(assert (=> b!5233684 m!6279350))

(declare-fun m!6279352 () Bool)

(assert (=> b!5233684 m!6279352))

(declare-fun m!6279354 () Bool)

(assert (=> b!5233684 m!6279354))

(assert (=> b!5233684 m!6279352))

(assert (=> b!5233684 m!6279354))

(declare-fun m!6279356 () Bool)

(assert (=> b!5233684 m!6279356))

(assert (=> b!5233690 m!6279354))

(assert (=> b!5233690 m!6279354))

(declare-fun m!6279358 () Bool)

(assert (=> b!5233690 m!6279358))

(declare-fun m!6279360 () Bool)

(assert (=> bm!370318 m!6279360))

(assert (=> b!5233688 m!6279354))

(assert (=> b!5233688 m!6279354))

(assert (=> b!5233688 m!6279358))

(assert (=> b!5233692 m!6279350))

(assert (=> d!1687324 m!6279360))

(assert (=> d!1687324 m!6278262))

(assert (=> b!5233694 m!6279350))

(assert (=> d!1686778 d!1687324))

(assert (=> d!1686778 d!1687206))

(declare-fun b!5233697 () Bool)

(declare-fun e!3256893 () (InoxSet Context!8418))

(declare-fun e!3256894 () (InoxSet Context!8418))

(assert (=> b!5233697 (= e!3256893 e!3256894)))

(declare-fun c!904120 () Bool)

(assert (=> b!5233697 (= c!904120 ((_ is Concat!23670) (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))))))))

(declare-fun b!5233698 () Bool)

(declare-fun call!370324 () (InoxSet Context!8418))

(assert (=> b!5233698 (= e!3256894 call!370324)))

(declare-fun bm!370319 () Bool)

(declare-fun call!370325 () (InoxSet Context!8418))

(declare-fun call!370329 () (InoxSet Context!8418))

(assert (=> bm!370319 (= call!370325 call!370329)))

(declare-fun d!1687326 () Bool)

(declare-fun c!904122 () Bool)

(assert (=> d!1687326 (= c!904122 (and ((_ is ElementMatch!14825) (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))))) (= (c!903601 (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))))) (h!67099 s!2326))))))

(declare-fun e!3256889 () (InoxSet Context!8418))

(assert (=> d!1687326 (= (derivationStepZipperDown!273 (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343))))) (ite c!903801 lt!2145585 (Context!8419 call!370111)) (h!67099 s!2326)) e!3256889)))

(declare-fun b!5233699 () Bool)

(declare-fun c!904119 () Bool)

(assert (=> b!5233699 (= c!904119 ((_ is Star!14825) (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))))))))

(declare-fun e!3256891 () (InoxSet Context!8418))

(assert (=> b!5233699 (= e!3256894 e!3256891)))

(declare-fun b!5233700 () Bool)

(declare-fun c!904118 () Bool)

(declare-fun e!3256892 () Bool)

(assert (=> b!5233700 (= c!904118 e!3256892)))

(declare-fun res!2221468 () Bool)

(assert (=> b!5233700 (=> (not res!2221468) (not e!3256892))))

(assert (=> b!5233700 (= res!2221468 ((_ is Concat!23670) (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))))))))

(declare-fun e!3256890 () (InoxSet Context!8418))

(assert (=> b!5233700 (= e!3256890 e!3256893)))

(declare-fun b!5233701 () Bool)

(assert (=> b!5233701 (= e!3256889 (store ((as const (Array Context!8418 Bool)) false) (ite c!903801 lt!2145585 (Context!8419 call!370111)) true))))

(declare-fun b!5233702 () Bool)

(declare-fun call!370328 () (InoxSet Context!8418))

(assert (=> b!5233702 (= e!3256893 ((_ map or) call!370328 call!370325))))

(declare-fun call!370326 () List!60774)

(declare-fun bm!370320 () Bool)

(assert (=> bm!370320 (= call!370326 ($colon$colon!1296 (exprs!4709 (ite c!903801 lt!2145585 (Context!8419 call!370111))) (ite (or c!904118 c!904120) (regTwo!30162 (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))))) (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343))))))))))

(declare-fun b!5233703 () Bool)

(assert (=> b!5233703 (= e!3256892 (nullable!4994 (regOne!30162 (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343))))))))))

(declare-fun b!5233704 () Bool)

(assert (=> b!5233704 (= e!3256889 e!3256890)))

(declare-fun c!904121 () Bool)

(assert (=> b!5233704 (= c!904121 ((_ is Union!14825) (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))))))))

(declare-fun b!5233705 () Bool)

(assert (=> b!5233705 (= e!3256890 ((_ map or) call!370329 call!370328))))

(declare-fun b!5233706 () Bool)

(assert (=> b!5233706 (= e!3256891 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233707 () Bool)

(assert (=> b!5233707 (= e!3256891 call!370324)))

(declare-fun bm!370321 () Bool)

(declare-fun call!370327 () List!60774)

(assert (=> bm!370321 (= call!370329 (derivationStepZipperDown!273 (ite c!904121 (regOne!30163 (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))))) (ite c!904118 (regTwo!30162 (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))))) (ite c!904120 (regOne!30162 (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))))) (reg!15154 (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343))))))))) (ite (or c!904121 c!904118) (ite c!903801 lt!2145585 (Context!8419 call!370111)) (Context!8419 call!370327)) (h!67099 s!2326)))))

(declare-fun bm!370322 () Bool)

(assert (=> bm!370322 (= call!370327 call!370326)))

(declare-fun bm!370323 () Bool)

(assert (=> bm!370323 (= call!370324 call!370325)))

(declare-fun bm!370324 () Bool)

(assert (=> bm!370324 (= call!370328 (derivationStepZipperDown!273 (ite c!904121 (regTwo!30163 (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))))) (regOne!30162 (ite c!903801 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343))))))) (ite c!904121 (ite c!903801 lt!2145585 (Context!8419 call!370111)) (Context!8419 call!370326)) (h!67099 s!2326)))))

(assert (= (and d!1687326 c!904122) b!5233701))

(assert (= (and d!1687326 (not c!904122)) b!5233704))

(assert (= (and b!5233704 c!904121) b!5233705))

(assert (= (and b!5233704 (not c!904121)) b!5233700))

(assert (= (and b!5233700 res!2221468) b!5233703))

(assert (= (and b!5233700 c!904118) b!5233702))

(assert (= (and b!5233700 (not c!904118)) b!5233697))

(assert (= (and b!5233697 c!904120) b!5233698))

(assert (= (and b!5233697 (not c!904120)) b!5233699))

(assert (= (and b!5233699 c!904119) b!5233707))

(assert (= (and b!5233699 (not c!904119)) b!5233706))

(assert (= (or b!5233698 b!5233707) bm!370322))

(assert (= (or b!5233698 b!5233707) bm!370323))

(assert (= (or b!5233702 bm!370322) bm!370320))

(assert (= (or b!5233702 bm!370323) bm!370319))

(assert (= (or b!5233705 b!5233702) bm!370324))

(assert (= (or b!5233705 bm!370319) bm!370321))

(declare-fun m!6279362 () Bool)

(assert (=> b!5233701 m!6279362))

(declare-fun m!6279364 () Bool)

(assert (=> b!5233703 m!6279364))

(declare-fun m!6279366 () Bool)

(assert (=> bm!370324 m!6279366))

(declare-fun m!6279368 () Bool)

(assert (=> bm!370320 m!6279368))

(declare-fun m!6279370 () Bool)

(assert (=> bm!370321 m!6279370))

(assert (=> bm!370109 d!1687326))

(declare-fun d!1687328 () Bool)

(assert (=> d!1687328 true))

(assert (=> d!1687328 true))

(declare-fun res!2221469 () Bool)

(assert (=> d!1687328 (= (choose!38923 lambda!262853) res!2221469)))

(assert (=> d!1686780 d!1687328))

(declare-fun d!1687330 () Bool)

(declare-fun res!2221470 () Bool)

(declare-fun e!3256895 () Bool)

(assert (=> d!1687330 (=> res!2221470 e!3256895)))

(assert (=> d!1687330 (= res!2221470 ((_ is Nil!60650) (exprs!4709 setElem!33329)))))

(assert (=> d!1687330 (= (forall!14255 (exprs!4709 setElem!33329) lambda!262904) e!3256895)))

(declare-fun b!5233708 () Bool)

(declare-fun e!3256896 () Bool)

(assert (=> b!5233708 (= e!3256895 e!3256896)))

(declare-fun res!2221471 () Bool)

(assert (=> b!5233708 (=> (not res!2221471) (not e!3256896))))

(assert (=> b!5233708 (= res!2221471 (dynLambda!23967 lambda!262904 (h!67098 (exprs!4709 setElem!33329))))))

(declare-fun b!5233709 () Bool)

(assert (=> b!5233709 (= e!3256896 (forall!14255 (t!373953 (exprs!4709 setElem!33329)) lambda!262904))))

(assert (= (and d!1687330 (not res!2221470)) b!5233708))

(assert (= (and b!5233708 res!2221471) b!5233709))

(declare-fun b_lambda!202359 () Bool)

(assert (=> (not b_lambda!202359) (not b!5233708)))

(declare-fun m!6279372 () Bool)

(assert (=> b!5233708 m!6279372))

(declare-fun m!6279374 () Bool)

(assert (=> b!5233709 m!6279374))

(assert (=> d!1686754 d!1687330))

(declare-fun d!1687332 () Bool)

(declare-fun lt!2145766 () Int)

(assert (=> d!1687332 (>= lt!2145766 0)))

(declare-fun e!3256897 () Int)

(assert (=> d!1687332 (= lt!2145766 e!3256897)))

(declare-fun c!904123 () Bool)

(assert (=> d!1687332 (= c!904123 ((_ is Cons!60650) (exprs!4709 (h!67100 lt!2145578))))))

(assert (=> d!1687332 (= (contextDepthTotal!4 (h!67100 lt!2145578)) lt!2145766)))

(declare-fun b!5233710 () Bool)

(assert (=> b!5233710 (= e!3256897 (+ (regexDepthTotal!4 (h!67098 (exprs!4709 (h!67100 lt!2145578)))) (contextDepthTotal!4 (Context!8419 (t!373953 (exprs!4709 (h!67100 lt!2145578)))))))))

(declare-fun b!5233711 () Bool)

(assert (=> b!5233711 (= e!3256897 1)))

(assert (= (and d!1687332 c!904123) b!5233710))

(assert (= (and d!1687332 (not c!904123)) b!5233711))

(declare-fun m!6279376 () Bool)

(assert (=> b!5233710 m!6279376))

(declare-fun m!6279378 () Bool)

(assert (=> b!5233710 m!6279378))

(assert (=> b!5232496 d!1687332))

(declare-fun d!1687334 () Bool)

(declare-fun lt!2145767 () Int)

(assert (=> d!1687334 (>= lt!2145767 0)))

(declare-fun e!3256898 () Int)

(assert (=> d!1687334 (= lt!2145767 e!3256898)))

(declare-fun c!904124 () Bool)

(assert (=> d!1687334 (= c!904124 ((_ is Cons!60652) (t!373955 lt!2145578)))))

(assert (=> d!1687334 (= (zipperDepthTotal!6 (t!373955 lt!2145578)) lt!2145767)))

(declare-fun b!5233712 () Bool)

(assert (=> b!5233712 (= e!3256898 (+ (contextDepthTotal!4 (h!67100 (t!373955 lt!2145578))) (zipperDepthTotal!6 (t!373955 (t!373955 lt!2145578)))))))

(declare-fun b!5233713 () Bool)

(assert (=> b!5233713 (= e!3256898 0)))

(assert (= (and d!1687334 c!904124) b!5233712))

(assert (= (and d!1687334 (not c!904124)) b!5233713))

(declare-fun m!6279380 () Bool)

(assert (=> b!5233712 m!6279380))

(declare-fun m!6279382 () Bool)

(assert (=> b!5233712 m!6279382))

(assert (=> b!5232496 d!1687334))

(declare-fun d!1687336 () Bool)

(declare-fun c!904125 () Bool)

(assert (=> d!1687336 (= c!904125 (isEmpty!32579 (tail!10309 s!2326)))))

(declare-fun e!3256899 () Bool)

(assert (=> d!1687336 (= (matchZipper!1069 (derivationStepZipper!1090 z!1189 (head!11212 s!2326)) (tail!10309 s!2326)) e!3256899)))

(declare-fun b!5233714 () Bool)

(assert (=> b!5233714 (= e!3256899 (nullableZipper!1246 (derivationStepZipper!1090 z!1189 (head!11212 s!2326))))))

(declare-fun b!5233715 () Bool)

(assert (=> b!5233715 (= e!3256899 (matchZipper!1069 (derivationStepZipper!1090 (derivationStepZipper!1090 z!1189 (head!11212 s!2326)) (head!11212 (tail!10309 s!2326))) (tail!10309 (tail!10309 s!2326))))))

(assert (= (and d!1687336 c!904125) b!5233714))

(assert (= (and d!1687336 (not c!904125)) b!5233715))

(assert (=> d!1687336 m!6278034))

(assert (=> d!1687336 m!6278038))

(assert (=> b!5233714 m!6278212))

(declare-fun m!6279384 () Bool)

(assert (=> b!5233714 m!6279384))

(assert (=> b!5233715 m!6278034))

(declare-fun m!6279386 () Bool)

(assert (=> b!5233715 m!6279386))

(assert (=> b!5233715 m!6278212))

(assert (=> b!5233715 m!6279386))

(declare-fun m!6279388 () Bool)

(assert (=> b!5233715 m!6279388))

(assert (=> b!5233715 m!6278034))

(declare-fun m!6279390 () Bool)

(assert (=> b!5233715 m!6279390))

(assert (=> b!5233715 m!6279388))

(assert (=> b!5233715 m!6279390))

(declare-fun m!6279392 () Bool)

(assert (=> b!5233715 m!6279392))

(assert (=> b!5232579 d!1687336))

(declare-fun bs!1215040 () Bool)

(declare-fun d!1687338 () Bool)

(assert (= bs!1215040 (and d!1687338 b!5231809)))

(declare-fun lambda!262987 () Int)

(assert (=> bs!1215040 (= (= (head!11212 s!2326) (h!67099 s!2326)) (= lambda!262987 lambda!262854))))

(declare-fun bs!1215041 () Bool)

(assert (= bs!1215041 (and d!1687338 d!1687222)))

(assert (=> bs!1215041 (= (= (head!11212 s!2326) (head!11212 (t!373954 s!2326))) (= lambda!262987 lambda!262973))))

(declare-fun bs!1215042 () Bool)

(assert (= bs!1215042 (and d!1687338 d!1687316)))

(assert (=> bs!1215042 (= (= (head!11212 s!2326) (head!11212 (t!373954 s!2326))) (= lambda!262987 lambda!262986))))

(assert (=> d!1687338 true))

(assert (=> d!1687338 (= (derivationStepZipper!1090 z!1189 (head!11212 s!2326)) (flatMap!552 z!1189 lambda!262987))))

(declare-fun bs!1215043 () Bool)

(assert (= bs!1215043 d!1687338))

(declare-fun m!6279394 () Bool)

(assert (=> bs!1215043 m!6279394))

(assert (=> b!5232579 d!1687338))

(assert (=> b!5232579 d!1687210))

(assert (=> b!5232579 d!1687190))

(declare-fun d!1687340 () Bool)

(declare-fun c!904126 () Bool)

(assert (=> d!1687340 (= c!904126 (isEmpty!32579 (tail!10309 (t!373954 s!2326))))))

(declare-fun e!3256900 () Bool)

(assert (=> d!1687340 (= (matchZipper!1069 (derivationStepZipper!1090 lt!2145591 (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))) e!3256900)))

(declare-fun b!5233716 () Bool)

(assert (=> b!5233716 (= e!3256900 (nullableZipper!1246 (derivationStepZipper!1090 lt!2145591 (head!11212 (t!373954 s!2326)))))))

(declare-fun b!5233717 () Bool)

(assert (=> b!5233717 (= e!3256900 (matchZipper!1069 (derivationStepZipper!1090 (derivationStepZipper!1090 lt!2145591 (head!11212 (t!373954 s!2326))) (head!11212 (tail!10309 (t!373954 s!2326)))) (tail!10309 (tail!10309 (t!373954 s!2326)))))))

(assert (= (and d!1687340 c!904126) b!5233716))

(assert (= (and d!1687340 (not c!904126)) b!5233717))

(assert (=> d!1687340 m!6278050))

(assert (=> d!1687340 m!6279144))

(assert (=> b!5233716 m!6278048))

(declare-fun m!6279396 () Bool)

(assert (=> b!5233716 m!6279396))

(assert (=> b!5233717 m!6278050))

(assert (=> b!5233717 m!6279148))

(assert (=> b!5233717 m!6278048))

(assert (=> b!5233717 m!6279148))

(declare-fun m!6279398 () Bool)

(assert (=> b!5233717 m!6279398))

(assert (=> b!5233717 m!6278050))

(assert (=> b!5233717 m!6279152))

(assert (=> b!5233717 m!6279398))

(assert (=> b!5233717 m!6279152))

(declare-fun m!6279400 () Bool)

(assert (=> b!5233717 m!6279400))

(assert (=> b!5232448 d!1687340))

(declare-fun bs!1215044 () Bool)

(declare-fun d!1687342 () Bool)

(assert (= bs!1215044 (and d!1687342 b!5231809)))

(declare-fun lambda!262988 () Int)

(assert (=> bs!1215044 (= (= (head!11212 (t!373954 s!2326)) (h!67099 s!2326)) (= lambda!262988 lambda!262854))))

(declare-fun bs!1215045 () Bool)

(assert (= bs!1215045 (and d!1687342 d!1687222)))

(assert (=> bs!1215045 (= lambda!262988 lambda!262973)))

(declare-fun bs!1215046 () Bool)

(assert (= bs!1215046 (and d!1687342 d!1687316)))

(assert (=> bs!1215046 (= lambda!262988 lambda!262986)))

(declare-fun bs!1215047 () Bool)

(assert (= bs!1215047 (and d!1687342 d!1687338)))

(assert (=> bs!1215047 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!262988 lambda!262987))))

(assert (=> d!1687342 true))

(assert (=> d!1687342 (= (derivationStepZipper!1090 lt!2145591 (head!11212 (t!373954 s!2326))) (flatMap!552 lt!2145591 lambda!262988))))

(declare-fun bs!1215048 () Bool)

(assert (= bs!1215048 d!1687342))

(declare-fun m!6279402 () Bool)

(assert (=> bs!1215048 m!6279402))

(assert (=> b!5232448 d!1687342))

(assert (=> b!5232448 d!1687224))

(assert (=> b!5232448 d!1687226))

(assert (=> b!5232244 d!1686698))

(assert (=> b!5232533 d!1686736))

(assert (=> d!1686792 d!1687196))

(declare-fun d!1687344 () Bool)

(declare-fun c!904127 () Bool)

(assert (=> d!1687344 (= c!904127 (isEmpty!32579 (tail!10309 s!2326)))))

(declare-fun e!3256901 () Bool)

(assert (=> d!1687344 (= (matchZipper!1069 (derivationStepZipper!1090 lt!2145587 (head!11212 s!2326)) (tail!10309 s!2326)) e!3256901)))

(declare-fun b!5233718 () Bool)

(assert (=> b!5233718 (= e!3256901 (nullableZipper!1246 (derivationStepZipper!1090 lt!2145587 (head!11212 s!2326))))))

(declare-fun b!5233719 () Bool)

(assert (=> b!5233719 (= e!3256901 (matchZipper!1069 (derivationStepZipper!1090 (derivationStepZipper!1090 lt!2145587 (head!11212 s!2326)) (head!11212 (tail!10309 s!2326))) (tail!10309 (tail!10309 s!2326))))))

(assert (= (and d!1687344 c!904127) b!5233718))

(assert (= (and d!1687344 (not c!904127)) b!5233719))

(assert (=> d!1687344 m!6278034))

(assert (=> d!1687344 m!6278038))

(assert (=> b!5233718 m!6278236))

(declare-fun m!6279404 () Bool)

(assert (=> b!5233718 m!6279404))

(assert (=> b!5233719 m!6278034))

(assert (=> b!5233719 m!6279386))

(assert (=> b!5233719 m!6278236))

(assert (=> b!5233719 m!6279386))

(declare-fun m!6279406 () Bool)

(assert (=> b!5233719 m!6279406))

(assert (=> b!5233719 m!6278034))

(assert (=> b!5233719 m!6279390))

(assert (=> b!5233719 m!6279406))

(assert (=> b!5233719 m!6279390))

(declare-fun m!6279408 () Bool)

(assert (=> b!5233719 m!6279408))

(assert (=> b!5232586 d!1687344))

(declare-fun bs!1215049 () Bool)

(declare-fun d!1687346 () Bool)

(assert (= bs!1215049 (and d!1687346 d!1687316)))

(declare-fun lambda!262989 () Int)

(assert (=> bs!1215049 (= (= (head!11212 s!2326) (head!11212 (t!373954 s!2326))) (= lambda!262989 lambda!262986))))

(declare-fun bs!1215050 () Bool)

(assert (= bs!1215050 (and d!1687346 d!1687342)))

(assert (=> bs!1215050 (= (= (head!11212 s!2326) (head!11212 (t!373954 s!2326))) (= lambda!262989 lambda!262988))))

(declare-fun bs!1215051 () Bool)

(assert (= bs!1215051 (and d!1687346 b!5231809)))

(assert (=> bs!1215051 (= (= (head!11212 s!2326) (h!67099 s!2326)) (= lambda!262989 lambda!262854))))

(declare-fun bs!1215052 () Bool)

(assert (= bs!1215052 (and d!1687346 d!1687222)))

(assert (=> bs!1215052 (= (= (head!11212 s!2326) (head!11212 (t!373954 s!2326))) (= lambda!262989 lambda!262973))))

(declare-fun bs!1215053 () Bool)

(assert (= bs!1215053 (and d!1687346 d!1687338)))

(assert (=> bs!1215053 (= lambda!262989 lambda!262987)))

(assert (=> d!1687346 true))

(assert (=> d!1687346 (= (derivationStepZipper!1090 lt!2145587 (head!11212 s!2326)) (flatMap!552 lt!2145587 lambda!262989))))

(declare-fun bs!1215054 () Bool)

(assert (= bs!1215054 d!1687346))

(declare-fun m!6279410 () Bool)

(assert (=> bs!1215054 m!6279410))

(assert (=> b!5232586 d!1687346))

(assert (=> b!5232586 d!1687210))

(assert (=> b!5232586 d!1687190))

(declare-fun d!1687348 () Bool)

(assert (=> d!1687348 true))

(declare-fun setRes!33345 () Bool)

(assert (=> d!1687348 setRes!33345))

(declare-fun condSetEmpty!33345 () Bool)

(declare-fun res!2221472 () (InoxSet Context!8418))

(assert (=> d!1687348 (= condSetEmpty!33345 (= res!2221472 ((as const (Array Context!8418 Bool)) false)))))

(assert (=> d!1687348 (= (choose!38922 z!1189 lambda!262854) res!2221472)))

(declare-fun setIsEmpty!33345 () Bool)

(assert (=> setIsEmpty!33345 setRes!33345))

(declare-fun tp!1466338 () Bool)

(declare-fun e!3256902 () Bool)

(declare-fun setElem!33345 () Context!8418)

(declare-fun setNonEmpty!33345 () Bool)

(assert (=> setNonEmpty!33345 (= setRes!33345 (and tp!1466338 (inv!80309 setElem!33345) e!3256902))))

(declare-fun setRest!33345 () (InoxSet Context!8418))

(assert (=> setNonEmpty!33345 (= res!2221472 ((_ map or) (store ((as const (Array Context!8418 Bool)) false) setElem!33345 true) setRest!33345))))

(declare-fun b!5233720 () Bool)

(declare-fun tp!1466339 () Bool)

(assert (=> b!5233720 (= e!3256902 tp!1466339)))

(assert (= (and d!1687348 condSetEmpty!33345) setIsEmpty!33345))

(assert (= (and d!1687348 (not condSetEmpty!33345)) setNonEmpty!33345))

(assert (= setNonEmpty!33345 b!5233720))

(declare-fun m!6279412 () Bool)

(assert (=> setNonEmpty!33345 m!6279412))

(assert (=> d!1686742 d!1687348))

(assert (=> bs!1214629 d!1686768))

(assert (=> d!1686760 d!1687268))

(declare-fun d!1687350 () Bool)

(assert (=> d!1687350 (= (head!11211 (exprs!4709 (h!67100 zl!343))) (h!67098 (exprs!4709 (h!67100 zl!343))))))

(assert (=> b!5232248 d!1687350))

(assert (=> d!1686720 d!1686724))

(assert (=> d!1686720 d!1686722))

(declare-fun e!3256903 () Bool)

(declare-fun d!1687352 () Bool)

(assert (=> d!1687352 (= (matchZipper!1069 ((_ map or) lt!2145576 lt!2145570) (t!373954 s!2326)) e!3256903)))

(declare-fun res!2221473 () Bool)

(assert (=> d!1687352 (=> res!2221473 e!3256903)))

(assert (=> d!1687352 (= res!2221473 (matchZipper!1069 lt!2145576 (t!373954 s!2326)))))

(assert (=> d!1687352 true))

(declare-fun _$48!878 () Unit!152614)

(assert (=> d!1687352 (= (choose!38918 lt!2145576 lt!2145570 (t!373954 s!2326)) _$48!878)))

(declare-fun b!5233721 () Bool)

(assert (=> b!5233721 (= e!3256903 (matchZipper!1069 lt!2145570 (t!373954 s!2326)))))

(assert (= (and d!1687352 (not res!2221473)) b!5233721))

(assert (=> d!1687352 m!6277594))

(assert (=> d!1687352 m!6277578))

(assert (=> b!5233721 m!6277546))

(assert (=> d!1686720 d!1687352))

(assert (=> d!1686772 d!1687268))

(assert (=> bm!370102 d!1687268))

(declare-fun d!1687354 () Bool)

(declare-fun lt!2145768 () Int)

(assert (=> d!1687354 (>= lt!2145768 0)))

(declare-fun e!3256904 () Int)

(assert (=> d!1687354 (= lt!2145768 e!3256904)))

(declare-fun c!904128 () Bool)

(assert (=> d!1687354 (= c!904128 ((_ is Cons!60650) (exprs!4709 (h!67100 (Cons!60652 lt!2145561 Nil!60652)))))))

(assert (=> d!1687354 (= (contextDepthTotal!4 (h!67100 (Cons!60652 lt!2145561 Nil!60652))) lt!2145768)))

(declare-fun b!5233722 () Bool)

(assert (=> b!5233722 (= e!3256904 (+ (regexDepthTotal!4 (h!67098 (exprs!4709 (h!67100 (Cons!60652 lt!2145561 Nil!60652))))) (contextDepthTotal!4 (Context!8419 (t!373953 (exprs!4709 (h!67100 (Cons!60652 lt!2145561 Nil!60652))))))))))

(declare-fun b!5233723 () Bool)

(assert (=> b!5233723 (= e!3256904 1)))

(assert (= (and d!1687354 c!904128) b!5233722))

(assert (= (and d!1687354 (not c!904128)) b!5233723))

(declare-fun m!6279414 () Bool)

(assert (=> b!5233722 m!6279414))

(declare-fun m!6279416 () Bool)

(assert (=> b!5233722 m!6279416))

(assert (=> b!5232356 d!1687354))

(declare-fun d!1687356 () Bool)

(declare-fun lt!2145769 () Int)

(assert (=> d!1687356 (>= lt!2145769 0)))

(declare-fun e!3256905 () Int)

(assert (=> d!1687356 (= lt!2145769 e!3256905)))

(declare-fun c!904129 () Bool)

(assert (=> d!1687356 (= c!904129 ((_ is Cons!60652) (t!373955 (Cons!60652 lt!2145561 Nil!60652))))))

(assert (=> d!1687356 (= (zipperDepthTotal!6 (t!373955 (Cons!60652 lt!2145561 Nil!60652))) lt!2145769)))

(declare-fun b!5233724 () Bool)

(assert (=> b!5233724 (= e!3256905 (+ (contextDepthTotal!4 (h!67100 (t!373955 (Cons!60652 lt!2145561 Nil!60652)))) (zipperDepthTotal!6 (t!373955 (t!373955 (Cons!60652 lt!2145561 Nil!60652))))))))

(declare-fun b!5233725 () Bool)

(assert (=> b!5233725 (= e!3256905 0)))

(assert (= (and d!1687356 c!904129) b!5233724))

(assert (= (and d!1687356 (not c!904129)) b!5233725))

(declare-fun m!6279418 () Bool)

(assert (=> b!5233724 m!6279418))

(declare-fun m!6279420 () Bool)

(assert (=> b!5233724 m!6279420))

(assert (=> b!5232356 d!1687356))

(declare-fun d!1687358 () Bool)

(assert (=> d!1687358 (= (isEmpty!32575 lt!2145568) ((_ is Nil!60650) lt!2145568))))

(assert (=> b!5232487 d!1687358))

(declare-fun d!1687360 () Bool)

(declare-fun c!904130 () Bool)

(assert (=> d!1687360 (= c!904130 (isEmpty!32579 (tail!10309 s!2326)))))

(declare-fun e!3256906 () Bool)

(assert (=> d!1687360 (= (matchZipper!1069 (derivationStepZipper!1090 lt!2145566 (head!11212 s!2326)) (tail!10309 s!2326)) e!3256906)))

(declare-fun b!5233726 () Bool)

(assert (=> b!5233726 (= e!3256906 (nullableZipper!1246 (derivationStepZipper!1090 lt!2145566 (head!11212 s!2326))))))

(declare-fun b!5233727 () Bool)

(assert (=> b!5233727 (= e!3256906 (matchZipper!1069 (derivationStepZipper!1090 (derivationStepZipper!1090 lt!2145566 (head!11212 s!2326)) (head!11212 (tail!10309 s!2326))) (tail!10309 (tail!10309 s!2326))))))

(assert (= (and d!1687360 c!904130) b!5233726))

(assert (= (and d!1687360 (not c!904130)) b!5233727))

(assert (=> d!1687360 m!6278034))

(assert (=> d!1687360 m!6278038))

(assert (=> b!5233726 m!6278244))

(declare-fun m!6279422 () Bool)

(assert (=> b!5233726 m!6279422))

(assert (=> b!5233727 m!6278034))

(assert (=> b!5233727 m!6279386))

(assert (=> b!5233727 m!6278244))

(assert (=> b!5233727 m!6279386))

(declare-fun m!6279424 () Bool)

(assert (=> b!5233727 m!6279424))

(assert (=> b!5233727 m!6278034))

(assert (=> b!5233727 m!6279390))

(assert (=> b!5233727 m!6279424))

(assert (=> b!5233727 m!6279390))

(declare-fun m!6279426 () Bool)

(assert (=> b!5233727 m!6279426))

(assert (=> b!5232588 d!1687360))

(declare-fun bs!1215055 () Bool)

(declare-fun d!1687362 () Bool)

(assert (= bs!1215055 (and d!1687362 d!1687316)))

(declare-fun lambda!262990 () Int)

(assert (=> bs!1215055 (= (= (head!11212 s!2326) (head!11212 (t!373954 s!2326))) (= lambda!262990 lambda!262986))))

(declare-fun bs!1215056 () Bool)

(assert (= bs!1215056 (and d!1687362 d!1687342)))

(assert (=> bs!1215056 (= (= (head!11212 s!2326) (head!11212 (t!373954 s!2326))) (= lambda!262990 lambda!262988))))

(declare-fun bs!1215057 () Bool)

(assert (= bs!1215057 (and d!1687362 d!1687346)))

(assert (=> bs!1215057 (= lambda!262990 lambda!262989)))

(declare-fun bs!1215058 () Bool)

(assert (= bs!1215058 (and d!1687362 b!5231809)))

(assert (=> bs!1215058 (= (= (head!11212 s!2326) (h!67099 s!2326)) (= lambda!262990 lambda!262854))))

(declare-fun bs!1215059 () Bool)

(assert (= bs!1215059 (and d!1687362 d!1687222)))

(assert (=> bs!1215059 (= (= (head!11212 s!2326) (head!11212 (t!373954 s!2326))) (= lambda!262990 lambda!262973))))

(declare-fun bs!1215060 () Bool)

(assert (= bs!1215060 (and d!1687362 d!1687338)))

(assert (=> bs!1215060 (= lambda!262990 lambda!262987)))

(assert (=> d!1687362 true))

(assert (=> d!1687362 (= (derivationStepZipper!1090 lt!2145566 (head!11212 s!2326)) (flatMap!552 lt!2145566 lambda!262990))))

(declare-fun bs!1215061 () Bool)

(assert (= bs!1215061 d!1687362))

(declare-fun m!6279428 () Bool)

(assert (=> bs!1215061 m!6279428))

(assert (=> b!5232588 d!1687362))

(assert (=> b!5232588 d!1687210))

(assert (=> b!5232588 d!1687190))

(declare-fun b!5233728 () Bool)

(declare-fun e!3256907 () (InoxSet Context!8418))

(assert (=> b!5233728 (= e!3256907 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233729 () Bool)

(declare-fun call!370330 () (InoxSet Context!8418))

(assert (=> b!5233729 (= e!3256907 call!370330)))

(declare-fun b!5233730 () Bool)

(declare-fun e!3256908 () (InoxSet Context!8418))

(assert (=> b!5233730 (= e!3256908 ((_ map or) call!370330 (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145585)))))) (h!67099 s!2326))))))

(declare-fun b!5233731 () Bool)

(assert (=> b!5233731 (= e!3256908 e!3256907)))

(declare-fun c!904132 () Bool)

(assert (=> b!5233731 (= c!904132 ((_ is Cons!60650) (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145585))))))))

(declare-fun b!5233732 () Bool)

(declare-fun e!3256909 () Bool)

(assert (=> b!5233732 (= e!3256909 (nullable!4994 (h!67098 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145585)))))))))

(declare-fun d!1687364 () Bool)

(declare-fun c!904131 () Bool)

(assert (=> d!1687364 (= c!904131 e!3256909)))

(declare-fun res!2221474 () Bool)

(assert (=> d!1687364 (=> (not res!2221474) (not e!3256909))))

(assert (=> d!1687364 (= res!2221474 ((_ is Cons!60650) (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145585))))))))

(assert (=> d!1687364 (= (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 lt!2145585))) (h!67099 s!2326)) e!3256908)))

(declare-fun bm!370325 () Bool)

(assert (=> bm!370325 (= call!370330 (derivationStepZipperDown!273 (h!67098 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145585))))) (Context!8419 (t!373953 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145585)))))) (h!67099 s!2326)))))

(assert (= (and d!1687364 res!2221474) b!5233732))

(assert (= (and d!1687364 c!904131) b!5233730))

(assert (= (and d!1687364 (not c!904131)) b!5233731))

(assert (= (and b!5233731 c!904132) b!5233729))

(assert (= (and b!5233731 (not c!904132)) b!5233728))

(assert (= (or b!5233730 b!5233729) bm!370325))

(declare-fun m!6279430 () Bool)

(assert (=> b!5233730 m!6279430))

(declare-fun m!6279432 () Bool)

(assert (=> b!5233732 m!6279432))

(declare-fun m!6279434 () Bool)

(assert (=> bm!370325 m!6279434))

(assert (=> b!5232521 d!1687364))

(declare-fun b!5233733 () Bool)

(declare-fun res!2221478 () Bool)

(declare-fun e!3256912 () Bool)

(assert (=> b!5233733 (=> res!2221478 e!3256912)))

(declare-fun e!3256915 () Bool)

(assert (=> b!5233733 (= res!2221478 e!3256915)))

(declare-fun res!2221480 () Bool)

(assert (=> b!5233733 (=> (not res!2221480) (not e!3256915))))

(declare-fun lt!2145770 () Bool)

(assert (=> b!5233733 (= res!2221480 lt!2145770)))

(declare-fun b!5233734 () Bool)

(declare-fun e!3256911 () Bool)

(assert (=> b!5233734 (= e!3256911 (matchR!7010 (derivativeStep!4068 (derivativeStep!4068 lt!2145560 (head!11212 s!2326)) (head!11212 (tail!10309 s!2326))) (tail!10309 (tail!10309 s!2326))))))

(declare-fun bm!370326 () Bool)

(declare-fun call!370331 () Bool)

(assert (=> bm!370326 (= call!370331 (isEmpty!32579 (tail!10309 s!2326)))))

(declare-fun b!5233735 () Bool)

(declare-fun res!2221482 () Bool)

(assert (=> b!5233735 (=> (not res!2221482) (not e!3256915))))

(assert (=> b!5233735 (= res!2221482 (not call!370331))))

(declare-fun b!5233736 () Bool)

(declare-fun e!3256913 () Bool)

(declare-fun e!3256910 () Bool)

(assert (=> b!5233736 (= e!3256913 e!3256910)))

(declare-fun res!2221475 () Bool)

(assert (=> b!5233736 (=> res!2221475 e!3256910)))

(assert (=> b!5233736 (= res!2221475 call!370331)))

(declare-fun b!5233737 () Bool)

(assert (=> b!5233737 (= e!3256912 e!3256913)))

(declare-fun res!2221479 () Bool)

(assert (=> b!5233737 (=> (not res!2221479) (not e!3256913))))

(assert (=> b!5233737 (= res!2221479 (not lt!2145770))))

(declare-fun b!5233738 () Bool)

(declare-fun res!2221476 () Bool)

(assert (=> b!5233738 (=> (not res!2221476) (not e!3256915))))

(assert (=> b!5233738 (= res!2221476 (isEmpty!32579 (tail!10309 (tail!10309 s!2326))))))

(declare-fun b!5233739 () Bool)

(declare-fun res!2221477 () Bool)

(assert (=> b!5233739 (=> res!2221477 e!3256912)))

(assert (=> b!5233739 (= res!2221477 (not ((_ is ElementMatch!14825) (derivativeStep!4068 lt!2145560 (head!11212 s!2326)))))))

(declare-fun e!3256914 () Bool)

(assert (=> b!5233739 (= e!3256914 e!3256912)))

(declare-fun b!5233740 () Bool)

(declare-fun res!2221481 () Bool)

(assert (=> b!5233740 (=> res!2221481 e!3256910)))

(assert (=> b!5233740 (= res!2221481 (not (isEmpty!32579 (tail!10309 (tail!10309 s!2326)))))))

(declare-fun b!5233741 () Bool)

(assert (=> b!5233741 (= e!3256914 (not lt!2145770))))

(declare-fun b!5233742 () Bool)

(assert (=> b!5233742 (= e!3256915 (= (head!11212 (tail!10309 s!2326)) (c!903601 (derivativeStep!4068 lt!2145560 (head!11212 s!2326)))))))

(declare-fun b!5233743 () Bool)

(declare-fun e!3256916 () Bool)

(assert (=> b!5233743 (= e!3256916 e!3256914)))

(declare-fun c!904135 () Bool)

(assert (=> b!5233743 (= c!904135 ((_ is EmptyLang!14825) (derivativeStep!4068 lt!2145560 (head!11212 s!2326))))))

(declare-fun d!1687366 () Bool)

(assert (=> d!1687366 e!3256916))

(declare-fun c!904134 () Bool)

(assert (=> d!1687366 (= c!904134 ((_ is EmptyExpr!14825) (derivativeStep!4068 lt!2145560 (head!11212 s!2326))))))

(assert (=> d!1687366 (= lt!2145770 e!3256911)))

(declare-fun c!904133 () Bool)

(assert (=> d!1687366 (= c!904133 (isEmpty!32579 (tail!10309 s!2326)))))

(assert (=> d!1687366 (validRegex!6561 (derivativeStep!4068 lt!2145560 (head!11212 s!2326)))))

(assert (=> d!1687366 (= (matchR!7010 (derivativeStep!4068 lt!2145560 (head!11212 s!2326)) (tail!10309 s!2326)) lt!2145770)))

(declare-fun b!5233744 () Bool)

(assert (=> b!5233744 (= e!3256910 (not (= (head!11212 (tail!10309 s!2326)) (c!903601 (derivativeStep!4068 lt!2145560 (head!11212 s!2326))))))))

(declare-fun b!5233745 () Bool)

(assert (=> b!5233745 (= e!3256911 (nullable!4994 (derivativeStep!4068 lt!2145560 (head!11212 s!2326))))))

(declare-fun b!5233746 () Bool)

(assert (=> b!5233746 (= e!3256916 (= lt!2145770 call!370331))))

(assert (= (and d!1687366 c!904133) b!5233745))

(assert (= (and d!1687366 (not c!904133)) b!5233734))

(assert (= (and d!1687366 c!904134) b!5233746))

(assert (= (and d!1687366 (not c!904134)) b!5233743))

(assert (= (and b!5233743 c!904135) b!5233741))

(assert (= (and b!5233743 (not c!904135)) b!5233739))

(assert (= (and b!5233739 (not res!2221477)) b!5233733))

(assert (= (and b!5233733 res!2221480) b!5233735))

(assert (= (and b!5233735 res!2221482) b!5233738))

(assert (= (and b!5233738 res!2221476) b!5233742))

(assert (= (and b!5233733 (not res!2221478)) b!5233737))

(assert (= (and b!5233737 res!2221479) b!5233736))

(assert (= (and b!5233736 (not res!2221475)) b!5233740))

(assert (= (and b!5233740 (not res!2221481)) b!5233744))

(assert (= (or b!5233746 b!5233735 b!5233736) bm!370326))

(assert (=> b!5233745 m!6278080))

(declare-fun m!6279436 () Bool)

(assert (=> b!5233745 m!6279436))

(assert (=> b!5233734 m!6278034))

(assert (=> b!5233734 m!6279386))

(assert (=> b!5233734 m!6278080))

(assert (=> b!5233734 m!6279386))

(declare-fun m!6279438 () Bool)

(assert (=> b!5233734 m!6279438))

(assert (=> b!5233734 m!6278034))

(assert (=> b!5233734 m!6279390))

(assert (=> b!5233734 m!6279438))

(assert (=> b!5233734 m!6279390))

(declare-fun m!6279440 () Bool)

(assert (=> b!5233734 m!6279440))

(assert (=> b!5233740 m!6278034))

(assert (=> b!5233740 m!6279390))

(assert (=> b!5233740 m!6279390))

(declare-fun m!6279442 () Bool)

(assert (=> b!5233740 m!6279442))

(assert (=> bm!370326 m!6278034))

(assert (=> bm!370326 m!6278038))

(assert (=> b!5233738 m!6278034))

(assert (=> b!5233738 m!6279390))

(assert (=> b!5233738 m!6279390))

(assert (=> b!5233738 m!6279442))

(assert (=> b!5233742 m!6278034))

(assert (=> b!5233742 m!6279386))

(assert (=> d!1687366 m!6278034))

(assert (=> d!1687366 m!6278038))

(assert (=> d!1687366 m!6278080))

(declare-fun m!6279444 () Bool)

(assert (=> d!1687366 m!6279444))

(assert (=> b!5233744 m!6278034))

(assert (=> b!5233744 m!6279386))

(assert (=> b!5232466 d!1687366))

(declare-fun b!5233767 () Bool)

(declare-fun c!904150 () Bool)

(assert (=> b!5233767 (= c!904150 ((_ is Union!14825) lt!2145560))))

(declare-fun e!3256931 () Regex!14825)

(declare-fun e!3256929 () Regex!14825)

(assert (=> b!5233767 (= e!3256931 e!3256929)))

(declare-fun bm!370335 () Bool)

(declare-fun call!370341 () Regex!14825)

(assert (=> bm!370335 (= call!370341 (derivativeStep!4068 (ite c!904150 (regOne!30163 lt!2145560) (regOne!30162 lt!2145560)) (head!11212 s!2326)))))

(declare-fun bm!370336 () Bool)

(declare-fun call!370343 () Regex!14825)

(declare-fun call!370340 () Regex!14825)

(assert (=> bm!370336 (= call!370343 call!370340)))

(declare-fun b!5233768 () Bool)

(assert (=> b!5233768 (= e!3256931 (ite (= (head!11212 s!2326) (c!903601 lt!2145560)) EmptyExpr!14825 EmptyLang!14825))))

(declare-fun b!5233769 () Bool)

(declare-fun e!3256927 () Regex!14825)

(assert (=> b!5233769 (= e!3256927 (Union!14825 (Concat!23670 call!370343 (regTwo!30162 lt!2145560)) EmptyLang!14825))))

(declare-fun bm!370337 () Bool)

(declare-fun call!370342 () Regex!14825)

(assert (=> bm!370337 (= call!370340 call!370342)))

(declare-fun b!5233770 () Bool)

(declare-fun e!3256928 () Regex!14825)

(assert (=> b!5233770 (= e!3256928 e!3256931)))

(declare-fun c!904148 () Bool)

(assert (=> b!5233770 (= c!904148 ((_ is ElementMatch!14825) lt!2145560))))

(declare-fun b!5233771 () Bool)

(declare-fun e!3256930 () Regex!14825)

(assert (=> b!5233771 (= e!3256930 (Concat!23670 call!370340 lt!2145560))))

(declare-fun d!1687368 () Bool)

(declare-fun lt!2145773 () Regex!14825)

(assert (=> d!1687368 (validRegex!6561 lt!2145773)))

(assert (=> d!1687368 (= lt!2145773 e!3256928)))

(declare-fun c!904146 () Bool)

(assert (=> d!1687368 (= c!904146 (or ((_ is EmptyExpr!14825) lt!2145560) ((_ is EmptyLang!14825) lt!2145560)))))

(assert (=> d!1687368 (validRegex!6561 lt!2145560)))

(assert (=> d!1687368 (= (derivativeStep!4068 lt!2145560 (head!11212 s!2326)) lt!2145773)))

(declare-fun b!5233772 () Bool)

(assert (=> b!5233772 (= e!3256928 EmptyLang!14825)))

(declare-fun b!5233773 () Bool)

(declare-fun c!904147 () Bool)

(assert (=> b!5233773 (= c!904147 (nullable!4994 (regOne!30162 lt!2145560)))))

(assert (=> b!5233773 (= e!3256930 e!3256927)))

(declare-fun b!5233774 () Bool)

(assert (=> b!5233774 (= e!3256927 (Union!14825 (Concat!23670 call!370341 (regTwo!30162 lt!2145560)) call!370343))))

(declare-fun b!5233775 () Bool)

(assert (=> b!5233775 (= e!3256929 (Union!14825 call!370341 call!370342))))

(declare-fun bm!370338 () Bool)

(declare-fun c!904149 () Bool)

(assert (=> bm!370338 (= call!370342 (derivativeStep!4068 (ite c!904150 (regTwo!30163 lt!2145560) (ite c!904149 (reg!15154 lt!2145560) (ite c!904147 (regTwo!30162 lt!2145560) (regOne!30162 lt!2145560)))) (head!11212 s!2326)))))

(declare-fun b!5233776 () Bool)

(assert (=> b!5233776 (= e!3256929 e!3256930)))

(assert (=> b!5233776 (= c!904149 ((_ is Star!14825) lt!2145560))))

(assert (= (and d!1687368 c!904146) b!5233772))

(assert (= (and d!1687368 (not c!904146)) b!5233770))

(assert (= (and b!5233770 c!904148) b!5233768))

(assert (= (and b!5233770 (not c!904148)) b!5233767))

(assert (= (and b!5233767 c!904150) b!5233775))

(assert (= (and b!5233767 (not c!904150)) b!5233776))

(assert (= (and b!5233776 c!904149) b!5233771))

(assert (= (and b!5233776 (not c!904149)) b!5233773))

(assert (= (and b!5233773 c!904147) b!5233774))

(assert (= (and b!5233773 (not c!904147)) b!5233769))

(assert (= (or b!5233774 b!5233769) bm!370336))

(assert (= (or b!5233771 bm!370336) bm!370337))

(assert (= (or b!5233775 bm!370337) bm!370338))

(assert (= (or b!5233775 b!5233774) bm!370335))

(assert (=> bm!370335 m!6278030))

(declare-fun m!6279446 () Bool)

(assert (=> bm!370335 m!6279446))

(declare-fun m!6279448 () Bool)

(assert (=> d!1687368 m!6279448))

(assert (=> d!1687368 m!6278084))

(declare-fun m!6279450 () Bool)

(assert (=> b!5233773 m!6279450))

(assert (=> bm!370338 m!6278030))

(declare-fun m!6279452 () Bool)

(assert (=> bm!370338 m!6279452))

(assert (=> b!5232466 d!1687368))

(assert (=> b!5232466 d!1687210))

(assert (=> b!5232466 d!1687190))

(assert (=> d!1686784 d!1686778))

(assert (=> d!1686784 d!1687206))

(assert (=> d!1686784 d!1686788))

(declare-fun d!1687370 () Bool)

(assert (=> d!1687370 (= (Exists!2006 lambda!262907) (choose!38923 lambda!262907))))

(declare-fun bs!1215062 () Bool)

(assert (= bs!1215062 d!1687370))

(declare-fun m!6279454 () Bool)

(assert (=> bs!1215062 m!6279454))

(assert (=> d!1686784 d!1687370))

(declare-fun bs!1215063 () Bool)

(declare-fun d!1687372 () Bool)

(assert (= bs!1215063 (and d!1687372 d!1686784)))

(declare-fun lambda!262993 () Int)

(assert (=> bs!1215063 (= lambda!262993 lambda!262907)))

(declare-fun bs!1215064 () Bool)

(assert (= bs!1215064 (and d!1687372 d!1686786)))

(assert (=> bs!1215064 (= lambda!262993 lambda!262912)))

(assert (=> bs!1215064 (not (= lambda!262993 lambda!262913))))

(declare-fun bs!1215065 () Bool)

(assert (= bs!1215065 (and d!1687372 b!5232398)))

(assert (=> bs!1215065 (not (= lambda!262993 lambda!262893))))

(declare-fun bs!1215066 () Bool)

(assert (= bs!1215066 (and d!1687372 b!5231833)))

(assert (=> bs!1215066 (= lambda!262993 lambda!262852)))

(declare-fun bs!1215067 () Bool)

(assert (= bs!1215067 (and d!1687372 d!1687204)))

(assert (=> bs!1215067 (not (= lambda!262993 lambda!262970))))

(assert (=> bs!1215067 (= lambda!262993 lambda!262969)))

(assert (=> bs!1215066 (not (= lambda!262993 lambda!262853))))

(declare-fun bs!1215068 () Bool)

(assert (= bs!1215068 (and d!1687372 b!5232393)))

(assert (=> bs!1215068 (not (= lambda!262993 lambda!262892))))

(declare-fun bs!1215069 () Bool)

(assert (= bs!1215069 (and d!1687372 b!5233667)))

(assert (=> bs!1215069 (not (= lambda!262993 lambda!262984))))

(declare-fun bs!1215070 () Bool)

(assert (= bs!1215070 (and d!1687372 b!5233662)))

(assert (=> bs!1215070 (not (= lambda!262993 lambda!262983))))

(assert (=> d!1687372 true))

(assert (=> d!1687372 true))

(assert (=> d!1687372 true))

(assert (=> d!1687372 (= (isDefined!11639 (findConcatSeparation!1350 (regOne!30162 r!7292) (regTwo!30162 r!7292) Nil!60651 s!2326 s!2326)) (Exists!2006 lambda!262993))))

(assert (=> d!1687372 true))

(declare-fun _$89!1424 () Unit!152614)

(assert (=> d!1687372 (= (choose!38924 (regOne!30162 r!7292) (regTwo!30162 r!7292) s!2326) _$89!1424)))

(declare-fun bs!1215071 () Bool)

(assert (= bs!1215071 d!1687372))

(assert (=> bs!1215071 m!6277528))

(assert (=> bs!1215071 m!6277528))

(assert (=> bs!1215071 m!6277530))

(declare-fun m!6279456 () Bool)

(assert (=> bs!1215071 m!6279456))

(assert (=> d!1686784 d!1687372))

(declare-fun d!1687374 () Bool)

(declare-fun c!904151 () Bool)

(assert (=> d!1687374 (= c!904151 (isEmpty!32579 (tail!10309 (t!373954 s!2326))))))

(declare-fun e!3256934 () Bool)

(assert (=> d!1687374 (= (matchZipper!1069 (derivationStepZipper!1090 ((_ map or) lt!2145567 lt!2145570) (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))) e!3256934)))

(declare-fun b!5233781 () Bool)

(assert (=> b!5233781 (= e!3256934 (nullableZipper!1246 (derivationStepZipper!1090 ((_ map or) lt!2145567 lt!2145570) (head!11212 (t!373954 s!2326)))))))

(declare-fun b!5233782 () Bool)

(assert (=> b!5233782 (= e!3256934 (matchZipper!1069 (derivationStepZipper!1090 (derivationStepZipper!1090 ((_ map or) lt!2145567 lt!2145570) (head!11212 (t!373954 s!2326))) (head!11212 (tail!10309 (t!373954 s!2326)))) (tail!10309 (tail!10309 (t!373954 s!2326)))))))

(assert (= (and d!1687374 c!904151) b!5233781))

(assert (= (and d!1687374 (not c!904151)) b!5233782))

(assert (=> d!1687374 m!6278050))

(assert (=> d!1687374 m!6279144))

(assert (=> b!5233781 m!6278196))

(declare-fun m!6279458 () Bool)

(assert (=> b!5233781 m!6279458))

(assert (=> b!5233782 m!6278050))

(assert (=> b!5233782 m!6279148))

(assert (=> b!5233782 m!6278196))

(assert (=> b!5233782 m!6279148))

(declare-fun m!6279460 () Bool)

(assert (=> b!5233782 m!6279460))

(assert (=> b!5233782 m!6278050))

(assert (=> b!5233782 m!6279152))

(assert (=> b!5233782 m!6279460))

(assert (=> b!5233782 m!6279152))

(declare-fun m!6279462 () Bool)

(assert (=> b!5233782 m!6279462))

(assert (=> b!5232572 d!1687374))

(declare-fun bs!1215072 () Bool)

(declare-fun d!1687376 () Bool)

(assert (= bs!1215072 (and d!1687376 d!1687362)))

(declare-fun lambda!262994 () Int)

(assert (=> bs!1215072 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!262994 lambda!262990))))

(declare-fun bs!1215073 () Bool)

(assert (= bs!1215073 (and d!1687376 d!1687316)))

(assert (=> bs!1215073 (= lambda!262994 lambda!262986)))

(declare-fun bs!1215074 () Bool)

(assert (= bs!1215074 (and d!1687376 d!1687342)))

(assert (=> bs!1215074 (= lambda!262994 lambda!262988)))

(declare-fun bs!1215075 () Bool)

(assert (= bs!1215075 (and d!1687376 d!1687346)))

(assert (=> bs!1215075 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!262994 lambda!262989))))

(declare-fun bs!1215076 () Bool)

(assert (= bs!1215076 (and d!1687376 b!5231809)))

(assert (=> bs!1215076 (= (= (head!11212 (t!373954 s!2326)) (h!67099 s!2326)) (= lambda!262994 lambda!262854))))

(declare-fun bs!1215077 () Bool)

(assert (= bs!1215077 (and d!1687376 d!1687222)))

(assert (=> bs!1215077 (= lambda!262994 lambda!262973)))

(declare-fun bs!1215078 () Bool)

(assert (= bs!1215078 (and d!1687376 d!1687338)))

(assert (=> bs!1215078 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!262994 lambda!262987))))

(assert (=> d!1687376 true))

(assert (=> d!1687376 (= (derivationStepZipper!1090 ((_ map or) lt!2145567 lt!2145570) (head!11212 (t!373954 s!2326))) (flatMap!552 ((_ map or) lt!2145567 lt!2145570) lambda!262994))))

(declare-fun bs!1215079 () Bool)

(assert (= bs!1215079 d!1687376))

(declare-fun m!6279464 () Bool)

(assert (=> bs!1215079 m!6279464))

(assert (=> b!5232572 d!1687376))

(assert (=> b!5232572 d!1687224))

(assert (=> b!5232572 d!1687226))

(assert (=> b!5232489 d!1686708))

(declare-fun d!1687378 () Bool)

(declare-fun c!904152 () Bool)

(assert (=> d!1687378 (= c!904152 (isEmpty!32579 (tail!10309 (t!373954 s!2326))))))

(declare-fun e!3256935 () Bool)

(assert (=> d!1687378 (= (matchZipper!1069 (derivationStepZipper!1090 lt!2145580 (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))) e!3256935)))

(declare-fun b!5233783 () Bool)

(assert (=> b!5233783 (= e!3256935 (nullableZipper!1246 (derivationStepZipper!1090 lt!2145580 (head!11212 (t!373954 s!2326)))))))

(declare-fun b!5233784 () Bool)

(assert (=> b!5233784 (= e!3256935 (matchZipper!1069 (derivationStepZipper!1090 (derivationStepZipper!1090 lt!2145580 (head!11212 (t!373954 s!2326))) (head!11212 (tail!10309 (t!373954 s!2326)))) (tail!10309 (tail!10309 (t!373954 s!2326)))))))

(assert (= (and d!1687378 c!904152) b!5233783))

(assert (= (and d!1687378 (not c!904152)) b!5233784))

(assert (=> d!1687378 m!6278050))

(assert (=> d!1687378 m!6279144))

(assert (=> b!5233783 m!6278290))

(declare-fun m!6279466 () Bool)

(assert (=> b!5233783 m!6279466))

(assert (=> b!5233784 m!6278050))

(assert (=> b!5233784 m!6279148))

(assert (=> b!5233784 m!6278290))

(assert (=> b!5233784 m!6279148))

(declare-fun m!6279468 () Bool)

(assert (=> b!5233784 m!6279468))

(assert (=> b!5233784 m!6278050))

(assert (=> b!5233784 m!6279152))

(assert (=> b!5233784 m!6279468))

(assert (=> b!5233784 m!6279152))

(declare-fun m!6279470 () Bool)

(assert (=> b!5233784 m!6279470))

(assert (=> b!5232629 d!1687378))

(declare-fun bs!1215080 () Bool)

(declare-fun d!1687380 () Bool)

(assert (= bs!1215080 (and d!1687380 d!1687362)))

(declare-fun lambda!262995 () Int)

(assert (=> bs!1215080 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!262995 lambda!262990))))

(declare-fun bs!1215081 () Bool)

(assert (= bs!1215081 (and d!1687380 d!1687342)))

(assert (=> bs!1215081 (= lambda!262995 lambda!262988)))

(declare-fun bs!1215082 () Bool)

(assert (= bs!1215082 (and d!1687380 d!1687346)))

(assert (=> bs!1215082 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!262995 lambda!262989))))

(declare-fun bs!1215083 () Bool)

(assert (= bs!1215083 (and d!1687380 b!5231809)))

(assert (=> bs!1215083 (= (= (head!11212 (t!373954 s!2326)) (h!67099 s!2326)) (= lambda!262995 lambda!262854))))

(declare-fun bs!1215084 () Bool)

(assert (= bs!1215084 (and d!1687380 d!1687222)))

(assert (=> bs!1215084 (= lambda!262995 lambda!262973)))

(declare-fun bs!1215085 () Bool)

(assert (= bs!1215085 (and d!1687380 d!1687338)))

(assert (=> bs!1215085 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!262995 lambda!262987))))

(declare-fun bs!1215086 () Bool)

(assert (= bs!1215086 (and d!1687380 d!1687376)))

(assert (=> bs!1215086 (= lambda!262995 lambda!262994)))

(declare-fun bs!1215087 () Bool)

(assert (= bs!1215087 (and d!1687380 d!1687316)))

(assert (=> bs!1215087 (= lambda!262995 lambda!262986)))

(assert (=> d!1687380 true))

(assert (=> d!1687380 (= (derivationStepZipper!1090 lt!2145580 (head!11212 (t!373954 s!2326))) (flatMap!552 lt!2145580 lambda!262995))))

(declare-fun bs!1215088 () Bool)

(assert (= bs!1215088 d!1687380))

(declare-fun m!6279472 () Bool)

(assert (=> bs!1215088 m!6279472))

(assert (=> b!5232629 d!1687380))

(assert (=> b!5232629 d!1687224))

(assert (=> b!5232629 d!1687226))

(assert (=> b!5232434 d!1687188))

(assert (=> b!5232434 d!1687190))

(assert (=> d!1686776 d!1687268))

(declare-fun b!5233785 () Bool)

(declare-fun res!2221490 () Bool)

(declare-fun e!3256938 () Bool)

(assert (=> b!5233785 (=> res!2221490 e!3256938)))

(declare-fun e!3256941 () Bool)

(assert (=> b!5233785 (= res!2221490 e!3256941)))

(declare-fun res!2221492 () Bool)

(assert (=> b!5233785 (=> (not res!2221492) (not e!3256941))))

(declare-fun lt!2145774 () Bool)

(assert (=> b!5233785 (= res!2221492 lt!2145774)))

(declare-fun b!5233786 () Bool)

(declare-fun e!3256937 () Bool)

(assert (=> b!5233786 (= e!3256937 (matchR!7010 (derivativeStep!4068 (regTwo!30162 r!7292) (head!11212 s!2326)) (tail!10309 s!2326)))))

(declare-fun bm!370339 () Bool)

(declare-fun call!370344 () Bool)

(assert (=> bm!370339 (= call!370344 (isEmpty!32579 s!2326))))

(declare-fun b!5233787 () Bool)

(declare-fun res!2221494 () Bool)

(assert (=> b!5233787 (=> (not res!2221494) (not e!3256941))))

(assert (=> b!5233787 (= res!2221494 (not call!370344))))

(declare-fun b!5233788 () Bool)

(declare-fun e!3256939 () Bool)

(declare-fun e!3256936 () Bool)

(assert (=> b!5233788 (= e!3256939 e!3256936)))

(declare-fun res!2221487 () Bool)

(assert (=> b!5233788 (=> res!2221487 e!3256936)))

(assert (=> b!5233788 (= res!2221487 call!370344)))

(declare-fun b!5233789 () Bool)

(assert (=> b!5233789 (= e!3256938 e!3256939)))

(declare-fun res!2221491 () Bool)

(assert (=> b!5233789 (=> (not res!2221491) (not e!3256939))))

(assert (=> b!5233789 (= res!2221491 (not lt!2145774))))

(declare-fun b!5233790 () Bool)

(declare-fun res!2221488 () Bool)

(assert (=> b!5233790 (=> (not res!2221488) (not e!3256941))))

(assert (=> b!5233790 (= res!2221488 (isEmpty!32579 (tail!10309 s!2326)))))

(declare-fun b!5233791 () Bool)

(declare-fun res!2221489 () Bool)

(assert (=> b!5233791 (=> res!2221489 e!3256938)))

(assert (=> b!5233791 (= res!2221489 (not ((_ is ElementMatch!14825) (regTwo!30162 r!7292))))))

(declare-fun e!3256940 () Bool)

(assert (=> b!5233791 (= e!3256940 e!3256938)))

(declare-fun b!5233792 () Bool)

(declare-fun res!2221493 () Bool)

(assert (=> b!5233792 (=> res!2221493 e!3256936)))

(assert (=> b!5233792 (= res!2221493 (not (isEmpty!32579 (tail!10309 s!2326))))))

(declare-fun b!5233793 () Bool)

(assert (=> b!5233793 (= e!3256940 (not lt!2145774))))

(declare-fun b!5233794 () Bool)

(assert (=> b!5233794 (= e!3256941 (= (head!11212 s!2326) (c!903601 (regTwo!30162 r!7292))))))

(declare-fun b!5233795 () Bool)

(declare-fun e!3256942 () Bool)

(assert (=> b!5233795 (= e!3256942 e!3256940)))

(declare-fun c!904155 () Bool)

(assert (=> b!5233795 (= c!904155 ((_ is EmptyLang!14825) (regTwo!30162 r!7292)))))

(declare-fun d!1687382 () Bool)

(assert (=> d!1687382 e!3256942))

(declare-fun c!904154 () Bool)

(assert (=> d!1687382 (= c!904154 ((_ is EmptyExpr!14825) (regTwo!30162 r!7292)))))

(assert (=> d!1687382 (= lt!2145774 e!3256937)))

(declare-fun c!904153 () Bool)

(assert (=> d!1687382 (= c!904153 (isEmpty!32579 s!2326))))

(assert (=> d!1687382 (validRegex!6561 (regTwo!30162 r!7292))))

(assert (=> d!1687382 (= (matchR!7010 (regTwo!30162 r!7292) s!2326) lt!2145774)))

(declare-fun b!5233796 () Bool)

(assert (=> b!5233796 (= e!3256936 (not (= (head!11212 s!2326) (c!903601 (regTwo!30162 r!7292)))))))

(declare-fun b!5233797 () Bool)

(assert (=> b!5233797 (= e!3256937 (nullable!4994 (regTwo!30162 r!7292)))))

(declare-fun b!5233798 () Bool)

(assert (=> b!5233798 (= e!3256942 (= lt!2145774 call!370344))))

(assert (= (and d!1687382 c!904153) b!5233797))

(assert (= (and d!1687382 (not c!904153)) b!5233786))

(assert (= (and d!1687382 c!904154) b!5233798))

(assert (= (and d!1687382 (not c!904154)) b!5233795))

(assert (= (and b!5233795 c!904155) b!5233793))

(assert (= (and b!5233795 (not c!904155)) b!5233791))

(assert (= (and b!5233791 (not res!2221489)) b!5233785))

(assert (= (and b!5233785 res!2221492) b!5233787))

(assert (= (and b!5233787 res!2221494) b!5233790))

(assert (= (and b!5233790 res!2221488) b!5233794))

(assert (= (and b!5233785 (not res!2221490)) b!5233789))

(assert (= (and b!5233789 res!2221491) b!5233788))

(assert (= (and b!5233788 (not res!2221487)) b!5233792))

(assert (= (and b!5233792 (not res!2221493)) b!5233796))

(assert (= (or b!5233798 b!5233787 b!5233788) bm!370339))

(assert (=> b!5233797 m!6279258))

(assert (=> b!5233786 m!6278030))

(assert (=> b!5233786 m!6278030))

(declare-fun m!6279474 () Bool)

(assert (=> b!5233786 m!6279474))

(assert (=> b!5233786 m!6278034))

(assert (=> b!5233786 m!6279474))

(assert (=> b!5233786 m!6278034))

(declare-fun m!6279476 () Bool)

(assert (=> b!5233786 m!6279476))

(assert (=> b!5233792 m!6278034))

(assert (=> b!5233792 m!6278034))

(assert (=> b!5233792 m!6278038))

(assert (=> bm!370339 m!6278022))

(assert (=> b!5233790 m!6278034))

(assert (=> b!5233790 m!6278034))

(assert (=> b!5233790 m!6278038))

(assert (=> b!5233794 m!6278030))

(assert (=> d!1687382 m!6278022))

(assert (=> d!1687382 m!6279272))

(assert (=> b!5233796 m!6278030))

(assert (=> b!5232608 d!1687382))

(assert (=> bm!370099 d!1687268))

(declare-fun d!1687384 () Bool)

(assert (=> d!1687384 (= ($colon$colon!1296 (exprs!4709 lt!2145585) (ite (or c!903798 c!903800) (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (h!67098 (exprs!4709 (h!67100 zl!343))))) (Cons!60650 (ite (or c!903798 c!903800) (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))) (h!67098 (exprs!4709 (h!67100 zl!343)))) (exprs!4709 lt!2145585)))))

(assert (=> bm!370105 d!1687384))

(assert (=> d!1686752 d!1687196))

(declare-fun d!1687386 () Bool)

(assert (=> d!1687386 (= (isEmpty!32575 (tail!10308 (unfocusZipperList!267 zl!343))) ((_ is Nil!60650) (tail!10308 (unfocusZipperList!267 zl!343))))))

(assert (=> b!5232555 d!1687386))

(declare-fun d!1687388 () Bool)

(assert (=> d!1687388 (= (tail!10308 (unfocusZipperList!267 zl!343)) (t!373953 (unfocusZipperList!267 zl!343)))))

(assert (=> b!5232555 d!1687388))

(declare-fun b!5233799 () Bool)

(declare-fun e!3256947 () (InoxSet Context!8418))

(declare-fun e!3256948 () (InoxSet Context!8418))

(assert (=> b!5233799 (= e!3256947 e!3256948)))

(declare-fun c!904158 () Bool)

(assert (=> b!5233799 (= c!904158 ((_ is Concat!23670) (h!67098 (exprs!4709 lt!2145593))))))

(declare-fun b!5233800 () Bool)

(declare-fun call!370345 () (InoxSet Context!8418))

(assert (=> b!5233800 (= e!3256948 call!370345)))

(declare-fun bm!370340 () Bool)

(declare-fun call!370346 () (InoxSet Context!8418))

(declare-fun call!370350 () (InoxSet Context!8418))

(assert (=> bm!370340 (= call!370346 call!370350)))

(declare-fun d!1687390 () Bool)

(declare-fun c!904160 () Bool)

(assert (=> d!1687390 (= c!904160 (and ((_ is ElementMatch!14825) (h!67098 (exprs!4709 lt!2145593))) (= (c!903601 (h!67098 (exprs!4709 lt!2145593))) (h!67099 s!2326))))))

(declare-fun e!3256943 () (InoxSet Context!8418))

(assert (=> d!1687390 (= (derivationStepZipperDown!273 (h!67098 (exprs!4709 lt!2145593)) (Context!8419 (t!373953 (exprs!4709 lt!2145593))) (h!67099 s!2326)) e!3256943)))

(declare-fun b!5233801 () Bool)

(declare-fun c!904157 () Bool)

(assert (=> b!5233801 (= c!904157 ((_ is Star!14825) (h!67098 (exprs!4709 lt!2145593))))))

(declare-fun e!3256945 () (InoxSet Context!8418))

(assert (=> b!5233801 (= e!3256948 e!3256945)))

(declare-fun b!5233802 () Bool)

(declare-fun c!904156 () Bool)

(declare-fun e!3256946 () Bool)

(assert (=> b!5233802 (= c!904156 e!3256946)))

(declare-fun res!2221495 () Bool)

(assert (=> b!5233802 (=> (not res!2221495) (not e!3256946))))

(assert (=> b!5233802 (= res!2221495 ((_ is Concat!23670) (h!67098 (exprs!4709 lt!2145593))))))

(declare-fun e!3256944 () (InoxSet Context!8418))

(assert (=> b!5233802 (= e!3256944 e!3256947)))

(declare-fun b!5233803 () Bool)

(assert (=> b!5233803 (= e!3256943 (store ((as const (Array Context!8418 Bool)) false) (Context!8419 (t!373953 (exprs!4709 lt!2145593))) true))))

(declare-fun b!5233804 () Bool)

(declare-fun call!370349 () (InoxSet Context!8418))

(assert (=> b!5233804 (= e!3256947 ((_ map or) call!370349 call!370346))))

(declare-fun call!370347 () List!60774)

(declare-fun bm!370341 () Bool)

(assert (=> bm!370341 (= call!370347 ($colon$colon!1296 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145593)))) (ite (or c!904156 c!904158) (regTwo!30162 (h!67098 (exprs!4709 lt!2145593))) (h!67098 (exprs!4709 lt!2145593)))))))

(declare-fun b!5233805 () Bool)

(assert (=> b!5233805 (= e!3256946 (nullable!4994 (regOne!30162 (h!67098 (exprs!4709 lt!2145593)))))))

(declare-fun b!5233806 () Bool)

(assert (=> b!5233806 (= e!3256943 e!3256944)))

(declare-fun c!904159 () Bool)

(assert (=> b!5233806 (= c!904159 ((_ is Union!14825) (h!67098 (exprs!4709 lt!2145593))))))

(declare-fun b!5233807 () Bool)

(assert (=> b!5233807 (= e!3256944 ((_ map or) call!370350 call!370349))))

(declare-fun b!5233808 () Bool)

(assert (=> b!5233808 (= e!3256945 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233809 () Bool)

(assert (=> b!5233809 (= e!3256945 call!370345)))

(declare-fun bm!370342 () Bool)

(declare-fun call!370348 () List!60774)

(assert (=> bm!370342 (= call!370350 (derivationStepZipperDown!273 (ite c!904159 (regOne!30163 (h!67098 (exprs!4709 lt!2145593))) (ite c!904156 (regTwo!30162 (h!67098 (exprs!4709 lt!2145593))) (ite c!904158 (regOne!30162 (h!67098 (exprs!4709 lt!2145593))) (reg!15154 (h!67098 (exprs!4709 lt!2145593)))))) (ite (or c!904159 c!904156) (Context!8419 (t!373953 (exprs!4709 lt!2145593))) (Context!8419 call!370348)) (h!67099 s!2326)))))

(declare-fun bm!370343 () Bool)

(assert (=> bm!370343 (= call!370348 call!370347)))

(declare-fun bm!370344 () Bool)

(assert (=> bm!370344 (= call!370345 call!370346)))

(declare-fun bm!370345 () Bool)

(assert (=> bm!370345 (= call!370349 (derivationStepZipperDown!273 (ite c!904159 (regTwo!30163 (h!67098 (exprs!4709 lt!2145593))) (regOne!30162 (h!67098 (exprs!4709 lt!2145593)))) (ite c!904159 (Context!8419 (t!373953 (exprs!4709 lt!2145593))) (Context!8419 call!370347)) (h!67099 s!2326)))))

(assert (= (and d!1687390 c!904160) b!5233803))

(assert (= (and d!1687390 (not c!904160)) b!5233806))

(assert (= (and b!5233806 c!904159) b!5233807))

(assert (= (and b!5233806 (not c!904159)) b!5233802))

(assert (= (and b!5233802 res!2221495) b!5233805))

(assert (= (and b!5233802 c!904156) b!5233804))

(assert (= (and b!5233802 (not c!904156)) b!5233799))

(assert (= (and b!5233799 c!904158) b!5233800))

(assert (= (and b!5233799 (not c!904158)) b!5233801))

(assert (= (and b!5233801 c!904157) b!5233809))

(assert (= (and b!5233801 (not c!904157)) b!5233808))

(assert (= (or b!5233800 b!5233809) bm!370343))

(assert (= (or b!5233800 b!5233809) bm!370344))

(assert (= (or b!5233804 bm!370343) bm!370341))

(assert (= (or b!5233804 bm!370344) bm!370340))

(assert (= (or b!5233807 b!5233804) bm!370345))

(assert (= (or b!5233807 bm!370340) bm!370342))

(declare-fun m!6279478 () Bool)

(assert (=> b!5233803 m!6279478))

(declare-fun m!6279480 () Bool)

(assert (=> b!5233805 m!6279480))

(declare-fun m!6279482 () Bool)

(assert (=> bm!370345 m!6279482))

(declare-fun m!6279484 () Bool)

(assert (=> bm!370341 m!6279484))

(declare-fun m!6279486 () Bool)

(assert (=> bm!370342 m!6279486))

(assert (=> bm!370115 d!1687390))

(assert (=> d!1686722 d!1687196))

(assert (=> d!1686790 d!1687196))

(assert (=> b!5232438 d!1687210))

(declare-fun b!5233810 () Bool)

(declare-fun e!3256949 () (InoxSet Context!8418))

(assert (=> b!5233810 (= e!3256949 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233811 () Bool)

(declare-fun call!370351 () (InoxSet Context!8418))

(assert (=> b!5233811 (= e!3256949 call!370351)))

(declare-fun b!5233812 () Bool)

(declare-fun e!3256950 () (InoxSet Context!8418))

(assert (=> b!5233812 (= e!3256950 ((_ map or) call!370351 (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))))))))) (h!67099 s!2326))))))

(declare-fun b!5233813 () Bool)

(assert (=> b!5233813 (= e!3256950 e!3256949)))

(declare-fun c!904162 () Bool)

(assert (=> b!5233813 (= c!904162 ((_ is Cons!60650) (exprs!4709 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))))))))

(declare-fun b!5233814 () Bool)

(declare-fun e!3256951 () Bool)

(assert (=> b!5233814 (= e!3256951 (nullable!4994 (h!67098 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))))))))))))

(declare-fun d!1687392 () Bool)

(declare-fun c!904161 () Bool)

(assert (=> d!1687392 (= c!904161 e!3256951)))

(declare-fun res!2221496 () Bool)

(assert (=> d!1687392 (=> (not res!2221496) (not e!3256951))))

(assert (=> d!1687392 (= res!2221496 ((_ is Cons!60650) (exprs!4709 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))))))))

(assert (=> d!1687392 (= (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) (h!67099 s!2326)) e!3256950)))

(declare-fun bm!370346 () Bool)

(assert (=> bm!370346 (= call!370351 (derivationStepZipperDown!273 (h!67098 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))))) (Context!8419 (t!373953 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))))))))) (h!67099 s!2326)))))

(assert (= (and d!1687392 res!2221496) b!5233814))

(assert (= (and d!1687392 c!904161) b!5233812))

(assert (= (and d!1687392 (not c!904161)) b!5233813))

(assert (= (and b!5233813 c!904162) b!5233811))

(assert (= (and b!5233813 (not c!904162)) b!5233810))

(assert (= (or b!5233812 b!5233811) bm!370346))

(declare-fun m!6279488 () Bool)

(assert (=> b!5233812 m!6279488))

(declare-fun m!6279490 () Bool)

(assert (=> b!5233814 m!6279490))

(declare-fun m!6279492 () Bool)

(assert (=> bm!370346 m!6279492))

(assert (=> b!5232526 d!1687392))

(declare-fun bs!1215089 () Bool)

(declare-fun b!5233818 () Bool)

(assert (= bs!1215089 (and b!5233818 d!1686784)))

(declare-fun lambda!262996 () Int)

(assert (=> bs!1215089 (not (= lambda!262996 lambda!262907))))

(declare-fun bs!1215090 () Bool)

(assert (= bs!1215090 (and b!5233818 d!1686786)))

(assert (=> bs!1215090 (not (= lambda!262996 lambda!262912))))

(assert (=> bs!1215090 (not (= lambda!262996 lambda!262913))))

(declare-fun bs!1215091 () Bool)

(assert (= bs!1215091 (and b!5233818 b!5232398)))

(assert (=> bs!1215091 (not (= lambda!262996 lambda!262893))))

(declare-fun bs!1215092 () Bool)

(assert (= bs!1215092 (and b!5233818 b!5231833)))

(assert (=> bs!1215092 (not (= lambda!262996 lambda!262852))))

(declare-fun bs!1215093 () Bool)

(assert (= bs!1215093 (and b!5233818 d!1687204)))

(assert (=> bs!1215093 (not (= lambda!262996 lambda!262970))))

(assert (=> bs!1215093 (not (= lambda!262996 lambda!262969))))

(assert (=> bs!1215092 (not (= lambda!262996 lambda!262853))))

(declare-fun bs!1215094 () Bool)

(assert (= bs!1215094 (and b!5233818 b!5232393)))

(assert (=> bs!1215094 (= (and (= (reg!15154 (regTwo!30163 r!7292)) (reg!15154 r!7292)) (= (regTwo!30163 r!7292) r!7292)) (= lambda!262996 lambda!262892))))

(declare-fun bs!1215095 () Bool)

(assert (= bs!1215095 (and b!5233818 d!1687372)))

(assert (=> bs!1215095 (not (= lambda!262996 lambda!262993))))

(declare-fun bs!1215096 () Bool)

(assert (= bs!1215096 (and b!5233818 b!5233667)))

(assert (=> bs!1215096 (not (= lambda!262996 lambda!262984))))

(declare-fun bs!1215097 () Bool)

(assert (= bs!1215097 (and b!5233818 b!5233662)))

(assert (=> bs!1215097 (= (and (= (reg!15154 (regTwo!30163 r!7292)) (reg!15154 (regOne!30163 r!7292))) (= (regTwo!30163 r!7292) (regOne!30163 r!7292))) (= lambda!262996 lambda!262983))))

(assert (=> b!5233818 true))

(assert (=> b!5233818 true))

(declare-fun bs!1215098 () Bool)

(declare-fun b!5233823 () Bool)

(assert (= bs!1215098 (and b!5233823 d!1686786)))

(declare-fun lambda!262997 () Int)

(assert (=> bs!1215098 (not (= lambda!262997 lambda!262912))))

(assert (=> bs!1215098 (= (and (= (regOne!30162 (regTwo!30163 r!7292)) (regOne!30162 r!7292)) (= (regTwo!30162 (regTwo!30163 r!7292)) (regTwo!30162 r!7292))) (= lambda!262997 lambda!262913))))

(declare-fun bs!1215099 () Bool)

(assert (= bs!1215099 (and b!5233823 b!5232398)))

(assert (=> bs!1215099 (= (and (= (regOne!30162 (regTwo!30163 r!7292)) (regOne!30162 r!7292)) (= (regTwo!30162 (regTwo!30163 r!7292)) (regTwo!30162 r!7292))) (= lambda!262997 lambda!262893))))

(declare-fun bs!1215100 () Bool)

(assert (= bs!1215100 (and b!5233823 b!5231833)))

(assert (=> bs!1215100 (not (= lambda!262997 lambda!262852))))

(declare-fun bs!1215101 () Bool)

(assert (= bs!1215101 (and b!5233823 d!1687204)))

(assert (=> bs!1215101 (= (and (= (regOne!30162 (regTwo!30163 r!7292)) (regOne!30162 r!7292)) (= (regTwo!30162 (regTwo!30163 r!7292)) (regTwo!30162 r!7292))) (= lambda!262997 lambda!262970))))

(assert (=> bs!1215101 (not (= lambda!262997 lambda!262969))))

(assert (=> bs!1215100 (= (and (= (regOne!30162 (regTwo!30163 r!7292)) (regOne!30162 r!7292)) (= (regTwo!30162 (regTwo!30163 r!7292)) (regTwo!30162 r!7292))) (= lambda!262997 lambda!262853))))

(declare-fun bs!1215102 () Bool)

(assert (= bs!1215102 (and b!5233823 b!5232393)))

(assert (=> bs!1215102 (not (= lambda!262997 lambda!262892))))

(declare-fun bs!1215103 () Bool)

(assert (= bs!1215103 (and b!5233823 d!1687372)))

(assert (=> bs!1215103 (not (= lambda!262997 lambda!262993))))

(declare-fun bs!1215104 () Bool)

(assert (= bs!1215104 (and b!5233823 d!1686784)))

(assert (=> bs!1215104 (not (= lambda!262997 lambda!262907))))

(declare-fun bs!1215105 () Bool)

(assert (= bs!1215105 (and b!5233823 b!5233818)))

(assert (=> bs!1215105 (not (= lambda!262997 lambda!262996))))

(declare-fun bs!1215106 () Bool)

(assert (= bs!1215106 (and b!5233823 b!5233667)))

(assert (=> bs!1215106 (= (and (= (regOne!30162 (regTwo!30163 r!7292)) (regOne!30162 (regOne!30163 r!7292))) (= (regTwo!30162 (regTwo!30163 r!7292)) (regTwo!30162 (regOne!30163 r!7292)))) (= lambda!262997 lambda!262984))))

(declare-fun bs!1215107 () Bool)

(assert (= bs!1215107 (and b!5233823 b!5233662)))

(assert (=> bs!1215107 (not (= lambda!262997 lambda!262983))))

(assert (=> b!5233823 true))

(assert (=> b!5233823 true))

(declare-fun b!5233815 () Bool)

(declare-fun e!3256958 () Bool)

(declare-fun e!3256956 () Bool)

(assert (=> b!5233815 (= e!3256958 e!3256956)))

(declare-fun c!904166 () Bool)

(assert (=> b!5233815 (= c!904166 ((_ is Star!14825) (regTwo!30163 r!7292)))))

(declare-fun call!370352 () Bool)

(declare-fun bm!370347 () Bool)

(assert (=> bm!370347 (= call!370352 (Exists!2006 (ite c!904166 lambda!262996 lambda!262997)))))

(declare-fun b!5233816 () Bool)

(declare-fun e!3256954 () Bool)

(declare-fun e!3256955 () Bool)

(assert (=> b!5233816 (= e!3256954 e!3256955)))

(declare-fun res!2221499 () Bool)

(assert (=> b!5233816 (= res!2221499 (not ((_ is EmptyLang!14825) (regTwo!30163 r!7292))))))

(assert (=> b!5233816 (=> (not res!2221499) (not e!3256955))))

(declare-fun b!5233817 () Bool)

(declare-fun e!3256953 () Bool)

(assert (=> b!5233817 (= e!3256953 (= s!2326 (Cons!60651 (c!903601 (regTwo!30163 r!7292)) Nil!60651)))))

(declare-fun e!3256957 () Bool)

(assert (=> b!5233818 (= e!3256957 call!370352)))

(declare-fun b!5233819 () Bool)

(declare-fun c!904165 () Bool)

(assert (=> b!5233819 (= c!904165 ((_ is ElementMatch!14825) (regTwo!30163 r!7292)))))

(assert (=> b!5233819 (= e!3256955 e!3256953)))

(declare-fun b!5233820 () Bool)

(declare-fun res!2221497 () Bool)

(assert (=> b!5233820 (=> res!2221497 e!3256957)))

(declare-fun call!370353 () Bool)

(assert (=> b!5233820 (= res!2221497 call!370353)))

(assert (=> b!5233820 (= e!3256956 e!3256957)))

(declare-fun bm!370348 () Bool)

(assert (=> bm!370348 (= call!370353 (isEmpty!32579 s!2326))))

(declare-fun b!5233821 () Bool)

(declare-fun c!904164 () Bool)

(assert (=> b!5233821 (= c!904164 ((_ is Union!14825) (regTwo!30163 r!7292)))))

(assert (=> b!5233821 (= e!3256953 e!3256958)))

(declare-fun b!5233822 () Bool)

(assert (=> b!5233822 (= e!3256954 call!370353)))

(assert (=> b!5233823 (= e!3256956 call!370352)))

(declare-fun d!1687394 () Bool)

(declare-fun c!904163 () Bool)

(assert (=> d!1687394 (= c!904163 ((_ is EmptyExpr!14825) (regTwo!30163 r!7292)))))

(assert (=> d!1687394 (= (matchRSpec!1928 (regTwo!30163 r!7292) s!2326) e!3256954)))

(declare-fun b!5233824 () Bool)

(declare-fun e!3256952 () Bool)

(assert (=> b!5233824 (= e!3256952 (matchRSpec!1928 (regTwo!30163 (regTwo!30163 r!7292)) s!2326))))

(declare-fun b!5233825 () Bool)

(assert (=> b!5233825 (= e!3256958 e!3256952)))

(declare-fun res!2221498 () Bool)

(assert (=> b!5233825 (= res!2221498 (matchRSpec!1928 (regOne!30163 (regTwo!30163 r!7292)) s!2326))))

(assert (=> b!5233825 (=> res!2221498 e!3256952)))

(assert (= (and d!1687394 c!904163) b!5233822))

(assert (= (and d!1687394 (not c!904163)) b!5233816))

(assert (= (and b!5233816 res!2221499) b!5233819))

(assert (= (and b!5233819 c!904165) b!5233817))

(assert (= (and b!5233819 (not c!904165)) b!5233821))

(assert (= (and b!5233821 c!904164) b!5233825))

(assert (= (and b!5233821 (not c!904164)) b!5233815))

(assert (= (and b!5233825 (not res!2221498)) b!5233824))

(assert (= (and b!5233815 c!904166) b!5233820))

(assert (= (and b!5233815 (not c!904166)) b!5233823))

(assert (= (and b!5233820 (not res!2221497)) b!5233818))

(assert (= (or b!5233818 b!5233823) bm!370347))

(assert (= (or b!5233822 b!5233820) bm!370348))

(declare-fun m!6279494 () Bool)

(assert (=> bm!370347 m!6279494))

(assert (=> bm!370348 m!6278022))

(declare-fun m!6279496 () Bool)

(assert (=> b!5233824 m!6279496))

(declare-fun m!6279498 () Bool)

(assert (=> b!5233825 m!6279498))

(assert (=> b!5232399 d!1687394))

(assert (=> b!5232570 d!1686708))

(declare-fun d!1687396 () Bool)

(assert (=> d!1687396 (= (head!11211 (unfocusZipperList!267 zl!343)) (h!67098 (unfocusZipperList!267 zl!343)))))

(assert (=> b!5232559 d!1687396))

(declare-fun d!1687398 () Bool)

(declare-fun c!904167 () Bool)

(assert (=> d!1687398 (= c!904167 (isEmpty!32579 (tail!10309 (t!373954 s!2326))))))

(declare-fun e!3256959 () Bool)

(assert (=> d!1687398 (= (matchZipper!1069 (derivationStepZipper!1090 lt!2145576 (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))) e!3256959)))

(declare-fun b!5233826 () Bool)

(assert (=> b!5233826 (= e!3256959 (nullableZipper!1246 (derivationStepZipper!1090 lt!2145576 (head!11212 (t!373954 s!2326)))))))

(declare-fun b!5233827 () Bool)

(assert (=> b!5233827 (= e!3256959 (matchZipper!1069 (derivationStepZipper!1090 (derivationStepZipper!1090 lt!2145576 (head!11212 (t!373954 s!2326))) (head!11212 (tail!10309 (t!373954 s!2326)))) (tail!10309 (tail!10309 (t!373954 s!2326)))))))

(assert (= (and d!1687398 c!904167) b!5233826))

(assert (= (and d!1687398 (not c!904167)) b!5233827))

(assert (=> d!1687398 m!6278050))

(assert (=> d!1687398 m!6279144))

(assert (=> b!5233826 m!6278114))

(declare-fun m!6279500 () Bool)

(assert (=> b!5233826 m!6279500))

(assert (=> b!5233827 m!6278050))

(assert (=> b!5233827 m!6279148))

(assert (=> b!5233827 m!6278114))

(assert (=> b!5233827 m!6279148))

(declare-fun m!6279502 () Bool)

(assert (=> b!5233827 m!6279502))

(assert (=> b!5233827 m!6278050))

(assert (=> b!5233827 m!6279152))

(assert (=> b!5233827 m!6279502))

(assert (=> b!5233827 m!6279152))

(declare-fun m!6279504 () Bool)

(assert (=> b!5233827 m!6279504))

(assert (=> b!5232491 d!1687398))

(declare-fun bs!1215108 () Bool)

(declare-fun d!1687400 () Bool)

(assert (= bs!1215108 (and d!1687400 d!1687362)))

(declare-fun lambda!262998 () Int)

(assert (=> bs!1215108 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!262998 lambda!262990))))

(declare-fun bs!1215109 () Bool)

(assert (= bs!1215109 (and d!1687400 d!1687342)))

(assert (=> bs!1215109 (= lambda!262998 lambda!262988)))

(declare-fun bs!1215110 () Bool)

(assert (= bs!1215110 (and d!1687400 d!1687380)))

(assert (=> bs!1215110 (= lambda!262998 lambda!262995)))

(declare-fun bs!1215111 () Bool)

(assert (= bs!1215111 (and d!1687400 d!1687346)))

(assert (=> bs!1215111 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!262998 lambda!262989))))

(declare-fun bs!1215112 () Bool)

(assert (= bs!1215112 (and d!1687400 b!5231809)))

(assert (=> bs!1215112 (= (= (head!11212 (t!373954 s!2326)) (h!67099 s!2326)) (= lambda!262998 lambda!262854))))

(declare-fun bs!1215113 () Bool)

(assert (= bs!1215113 (and d!1687400 d!1687222)))

(assert (=> bs!1215113 (= lambda!262998 lambda!262973)))

(declare-fun bs!1215114 () Bool)

(assert (= bs!1215114 (and d!1687400 d!1687338)))

(assert (=> bs!1215114 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!262998 lambda!262987))))

(declare-fun bs!1215115 () Bool)

(assert (= bs!1215115 (and d!1687400 d!1687376)))

(assert (=> bs!1215115 (= lambda!262998 lambda!262994)))

(declare-fun bs!1215116 () Bool)

(assert (= bs!1215116 (and d!1687400 d!1687316)))

(assert (=> bs!1215116 (= lambda!262998 lambda!262986)))

(assert (=> d!1687400 true))

(assert (=> d!1687400 (= (derivationStepZipper!1090 lt!2145576 (head!11212 (t!373954 s!2326))) (flatMap!552 lt!2145576 lambda!262998))))

(declare-fun bs!1215117 () Bool)

(assert (= bs!1215117 d!1687400))

(declare-fun m!6279506 () Bool)

(assert (=> bs!1215117 m!6279506))

(assert (=> b!5232491 d!1687400))

(assert (=> b!5232491 d!1687224))

(assert (=> b!5232491 d!1687226))

(declare-fun b!5233828 () Bool)

(declare-fun e!3256964 () (InoxSet Context!8418))

(declare-fun e!3256965 () (InoxSet Context!8418))

(assert (=> b!5233828 (= e!3256964 e!3256965)))

(declare-fun c!904170 () Bool)

(assert (=> b!5233828 (= c!904170 ((_ is Concat!23670) (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292))))))))))

(declare-fun b!5233829 () Bool)

(declare-fun call!370354 () (InoxSet Context!8418))

(assert (=> b!5233829 (= e!3256965 call!370354)))

(declare-fun bm!370349 () Bool)

(declare-fun call!370355 () (InoxSet Context!8418))

(declare-fun call!370359 () (InoxSet Context!8418))

(assert (=> bm!370349 (= call!370355 call!370359)))

(declare-fun d!1687402 () Bool)

(declare-fun c!904172 () Bool)

(assert (=> d!1687402 (= c!904172 (and ((_ is ElementMatch!14825) (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292))))))) (= (c!903601 (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292))))))) (h!67099 s!2326))))))

(declare-fun e!3256960 () (InoxSet Context!8418))

(assert (=> d!1687402 (= (derivationStepZipperDown!273 (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292)))))) (ite (or c!903756 c!903753) lt!2145585 (Context!8419 call!370096)) (h!67099 s!2326)) e!3256960)))

(declare-fun c!904169 () Bool)

(declare-fun b!5233830 () Bool)

(assert (=> b!5233830 (= c!904169 ((_ is Star!14825) (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292))))))))))

(declare-fun e!3256962 () (InoxSet Context!8418))

(assert (=> b!5233830 (= e!3256965 e!3256962)))

(declare-fun b!5233831 () Bool)

(declare-fun c!904168 () Bool)

(declare-fun e!3256963 () Bool)

(assert (=> b!5233831 (= c!904168 e!3256963)))

(declare-fun res!2221500 () Bool)

(assert (=> b!5233831 (=> (not res!2221500) (not e!3256963))))

(assert (=> b!5233831 (= res!2221500 ((_ is Concat!23670) (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292))))))))))

(declare-fun e!3256961 () (InoxSet Context!8418))

(assert (=> b!5233831 (= e!3256961 e!3256964)))

(declare-fun b!5233832 () Bool)

(assert (=> b!5233832 (= e!3256960 (store ((as const (Array Context!8418 Bool)) false) (ite (or c!903756 c!903753) lt!2145585 (Context!8419 call!370096)) true))))

(declare-fun b!5233833 () Bool)

(declare-fun call!370358 () (InoxSet Context!8418))

(assert (=> b!5233833 (= e!3256964 ((_ map or) call!370358 call!370355))))

(declare-fun bm!370350 () Bool)

(declare-fun call!370356 () List!60774)

(assert (=> bm!370350 (= call!370356 ($colon$colon!1296 (exprs!4709 (ite (or c!903756 c!903753) lt!2145585 (Context!8419 call!370096))) (ite (or c!904168 c!904170) (regTwo!30162 (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292))))))) (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292)))))))))))

(declare-fun b!5233834 () Bool)

(assert (=> b!5233834 (= e!3256963 (nullable!4994 (regOne!30162 (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292)))))))))))

(declare-fun b!5233835 () Bool)

(assert (=> b!5233835 (= e!3256960 e!3256961)))

(declare-fun c!904171 () Bool)

(assert (=> b!5233835 (= c!904171 ((_ is Union!14825) (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292))))))))))

(declare-fun b!5233836 () Bool)

(assert (=> b!5233836 (= e!3256961 ((_ map or) call!370359 call!370358))))

(declare-fun b!5233837 () Bool)

(assert (=> b!5233837 (= e!3256962 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233838 () Bool)

(assert (=> b!5233838 (= e!3256962 call!370354)))

(declare-fun call!370357 () List!60774)

(declare-fun bm!370351 () Bool)

(assert (=> bm!370351 (= call!370359 (derivationStepZipperDown!273 (ite c!904171 (regOne!30163 (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292))))))) (ite c!904168 (regTwo!30162 (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292))))))) (ite c!904170 (regOne!30162 (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292))))))) (reg!15154 (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292)))))))))) (ite (or c!904171 c!904168) (ite (or c!903756 c!903753) lt!2145585 (Context!8419 call!370096)) (Context!8419 call!370357)) (h!67099 s!2326)))))

(declare-fun bm!370352 () Bool)

(assert (=> bm!370352 (= call!370357 call!370356)))

(declare-fun bm!370353 () Bool)

(assert (=> bm!370353 (= call!370354 call!370355)))

(declare-fun bm!370354 () Bool)

(assert (=> bm!370354 (= call!370358 (derivationStepZipperDown!273 (ite c!904171 (regTwo!30163 (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292))))))) (regOne!30162 (ite c!903756 (regOne!30163 (regOne!30163 (regOne!30162 r!7292))) (ite c!903753 (regTwo!30162 (regOne!30163 (regOne!30162 r!7292))) (ite c!903755 (regOne!30162 (regOne!30163 (regOne!30162 r!7292))) (reg!15154 (regOne!30163 (regOne!30162 r!7292)))))))) (ite c!904171 (ite (or c!903756 c!903753) lt!2145585 (Context!8419 call!370096)) (Context!8419 call!370356)) (h!67099 s!2326)))))

(assert (= (and d!1687402 c!904172) b!5233832))

(assert (= (and d!1687402 (not c!904172)) b!5233835))

(assert (= (and b!5233835 c!904171) b!5233836))

(assert (= (and b!5233835 (not c!904171)) b!5233831))

(assert (= (and b!5233831 res!2221500) b!5233834))

(assert (= (and b!5233831 c!904168) b!5233833))

(assert (= (and b!5233831 (not c!904168)) b!5233828))

(assert (= (and b!5233828 c!904170) b!5233829))

(assert (= (and b!5233828 (not c!904170)) b!5233830))

(assert (= (and b!5233830 c!904169) b!5233838))

(assert (= (and b!5233830 (not c!904169)) b!5233837))

(assert (= (or b!5233829 b!5233838) bm!370352))

(assert (= (or b!5233829 b!5233838) bm!370353))

(assert (= (or b!5233833 bm!370352) bm!370350))

(assert (= (or b!5233833 bm!370353) bm!370349))

(assert (= (or b!5233836 b!5233833) bm!370354))

(assert (= (or b!5233836 bm!370349) bm!370351))

(declare-fun m!6279508 () Bool)

(assert (=> b!5233832 m!6279508))

(declare-fun m!6279510 () Bool)

(assert (=> b!5233834 m!6279510))

(declare-fun m!6279512 () Bool)

(assert (=> bm!370354 m!6279512))

(declare-fun m!6279514 () Bool)

(assert (=> bm!370350 m!6279514))

(declare-fun m!6279516 () Bool)

(assert (=> bm!370351 m!6279516))

(assert (=> bm!370090 d!1687402))

(declare-fun d!1687404 () Bool)

(assert (=> d!1687404 (= (nullable!4994 lt!2145560) (nullableFct!1398 lt!2145560))))

(declare-fun bs!1215118 () Bool)

(assert (= bs!1215118 d!1687404))

(declare-fun m!6279518 () Bool)

(assert (=> bs!1215118 m!6279518))

(assert (=> b!5232477 d!1687404))

(declare-fun d!1687406 () Bool)

(declare-fun res!2221501 () Bool)

(declare-fun e!3256966 () Bool)

(assert (=> d!1687406 (=> res!2221501 e!3256966)))

(assert (=> d!1687406 (= res!2221501 ((_ is Nil!60650) (t!373953 lt!2145584)))))

(assert (=> d!1687406 (= (forall!14255 (t!373953 lt!2145584) lambda!262855) e!3256966)))

(declare-fun b!5233839 () Bool)

(declare-fun e!3256967 () Bool)

(assert (=> b!5233839 (= e!3256966 e!3256967)))

(declare-fun res!2221502 () Bool)

(assert (=> b!5233839 (=> (not res!2221502) (not e!3256967))))

(assert (=> b!5233839 (= res!2221502 (dynLambda!23967 lambda!262855 (h!67098 (t!373953 lt!2145584))))))

(declare-fun b!5233840 () Bool)

(assert (=> b!5233840 (= e!3256967 (forall!14255 (t!373953 (t!373953 lt!2145584)) lambda!262855))))

(assert (= (and d!1687406 (not res!2221501)) b!5233839))

(assert (= (and b!5233839 res!2221502) b!5233840))

(declare-fun b_lambda!202361 () Bool)

(assert (=> (not b_lambda!202361) (not b!5233839)))

(declare-fun m!6279520 () Bool)

(assert (=> b!5233839 m!6279520))

(declare-fun m!6279522 () Bool)

(assert (=> b!5233840 m!6279522))

(assert (=> b!5232464 d!1687406))

(declare-fun bm!370355 () Bool)

(declare-fun call!370362 () Bool)

(declare-fun c!904174 () Bool)

(assert (=> bm!370355 (= call!370362 (validRegex!6561 (ite c!904174 (regTwo!30163 lt!2145653) (regTwo!30162 lt!2145653))))))

(declare-fun b!5233841 () Bool)

(declare-fun e!3256969 () Bool)

(declare-fun e!3256968 () Bool)

(assert (=> b!5233841 (= e!3256969 e!3256968)))

(declare-fun c!904173 () Bool)

(assert (=> b!5233841 (= c!904173 ((_ is Star!14825) lt!2145653))))

(declare-fun b!5233842 () Bool)

(declare-fun e!3256971 () Bool)

(assert (=> b!5233842 (= e!3256971 call!370362)))

(declare-fun b!5233843 () Bool)

(declare-fun e!3256974 () Bool)

(assert (=> b!5233843 (= e!3256974 call!370362)))

(declare-fun b!5233844 () Bool)

(declare-fun e!3256973 () Bool)

(assert (=> b!5233844 (= e!3256968 e!3256973)))

(assert (=> b!5233844 (= c!904174 ((_ is Union!14825) lt!2145653))))

(declare-fun call!370361 () Bool)

(declare-fun bm!370356 () Bool)

(assert (=> bm!370356 (= call!370361 (validRegex!6561 (ite c!904173 (reg!15154 lt!2145653) (ite c!904174 (regOne!30163 lt!2145653) (regOne!30162 lt!2145653)))))))

(declare-fun b!5233845 () Bool)

(declare-fun e!3256970 () Bool)

(assert (=> b!5233845 (= e!3256970 call!370361)))

(declare-fun b!5233846 () Bool)

(declare-fun res!2221503 () Bool)

(declare-fun e!3256972 () Bool)

(assert (=> b!5233846 (=> res!2221503 e!3256972)))

(assert (=> b!5233846 (= res!2221503 (not ((_ is Concat!23670) lt!2145653)))))

(assert (=> b!5233846 (= e!3256973 e!3256972)))

(declare-fun b!5233847 () Bool)

(assert (=> b!5233847 (= e!3256968 e!3256970)))

(declare-fun res!2221506 () Bool)

(assert (=> b!5233847 (= res!2221506 (not (nullable!4994 (reg!15154 lt!2145653))))))

(assert (=> b!5233847 (=> (not res!2221506) (not e!3256970))))

(declare-fun b!5233848 () Bool)

(assert (=> b!5233848 (= e!3256972 e!3256974)))

(declare-fun res!2221504 () Bool)

(assert (=> b!5233848 (=> (not res!2221504) (not e!3256974))))

(declare-fun call!370360 () Bool)

(assert (=> b!5233848 (= res!2221504 call!370360)))

(declare-fun bm!370357 () Bool)

(assert (=> bm!370357 (= call!370360 call!370361)))

(declare-fun d!1687408 () Bool)

(declare-fun res!2221505 () Bool)

(assert (=> d!1687408 (=> res!2221505 e!3256969)))

(assert (=> d!1687408 (= res!2221505 ((_ is ElementMatch!14825) lt!2145653))))

(assert (=> d!1687408 (= (validRegex!6561 lt!2145653) e!3256969)))

(declare-fun b!5233849 () Bool)

(declare-fun res!2221507 () Bool)

(assert (=> b!5233849 (=> (not res!2221507) (not e!3256971))))

(assert (=> b!5233849 (= res!2221507 call!370360)))

(assert (=> b!5233849 (= e!3256973 e!3256971)))

(assert (= (and d!1687408 (not res!2221505)) b!5233841))

(assert (= (and b!5233841 c!904173) b!5233847))

(assert (= (and b!5233841 (not c!904173)) b!5233844))

(assert (= (and b!5233847 res!2221506) b!5233845))

(assert (= (and b!5233844 c!904174) b!5233849))

(assert (= (and b!5233844 (not c!904174)) b!5233846))

(assert (= (and b!5233849 res!2221507) b!5233842))

(assert (= (and b!5233846 (not res!2221503)) b!5233848))

(assert (= (and b!5233848 res!2221504) b!5233843))

(assert (= (or b!5233842 b!5233843) bm!370355))

(assert (= (or b!5233849 b!5233848) bm!370357))

(assert (= (or b!5233845 bm!370357) bm!370356))

(declare-fun m!6279524 () Bool)

(assert (=> bm!370355 m!6279524))

(declare-fun m!6279526 () Bool)

(assert (=> bm!370356 m!6279526))

(declare-fun m!6279528 () Bool)

(assert (=> b!5233847 m!6279528))

(assert (=> d!1686658 d!1687408))

(declare-fun d!1687410 () Bool)

(declare-fun res!2221508 () Bool)

(declare-fun e!3256975 () Bool)

(assert (=> d!1687410 (=> res!2221508 e!3256975)))

(assert (=> d!1687410 (= res!2221508 ((_ is Nil!60650) (exprs!4709 (h!67100 zl!343))))))

(assert (=> d!1687410 (= (forall!14255 (exprs!4709 (h!67100 zl!343)) lambda!262886) e!3256975)))

(declare-fun b!5233850 () Bool)

(declare-fun e!3256976 () Bool)

(assert (=> b!5233850 (= e!3256975 e!3256976)))

(declare-fun res!2221509 () Bool)

(assert (=> b!5233850 (=> (not res!2221509) (not e!3256976))))

(assert (=> b!5233850 (= res!2221509 (dynLambda!23967 lambda!262886 (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5233851 () Bool)

(assert (=> b!5233851 (= e!3256976 (forall!14255 (t!373953 (exprs!4709 (h!67100 zl!343))) lambda!262886))))

(assert (= (and d!1687410 (not res!2221508)) b!5233850))

(assert (= (and b!5233850 res!2221509) b!5233851))

(declare-fun b_lambda!202363 () Bool)

(assert (=> (not b_lambda!202363) (not b!5233850)))

(declare-fun m!6279530 () Bool)

(assert (=> b!5233850 m!6279530))

(declare-fun m!6279532 () Bool)

(assert (=> b!5233851 m!6279532))

(assert (=> d!1686658 d!1687410))

(declare-fun d!1687412 () Bool)

(declare-fun c!904177 () Bool)

(assert (=> d!1687412 (= c!904177 ((_ is Nil!60652) lt!2145671))))

(declare-fun e!3256979 () (InoxSet Context!8418))

(assert (=> d!1687412 (= (content!10765 lt!2145671) e!3256979)))

(declare-fun b!5233856 () Bool)

(assert (=> b!5233856 (= e!3256979 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233857 () Bool)

(assert (=> b!5233857 (= e!3256979 ((_ map or) (store ((as const (Array Context!8418 Bool)) false) (h!67100 lt!2145671) true) (content!10765 (t!373955 lt!2145671))))))

(assert (= (and d!1687412 c!904177) b!5233856))

(assert (= (and d!1687412 (not c!904177)) b!5233857))

(declare-fun m!6279534 () Bool)

(assert (=> b!5233857 m!6279534))

(declare-fun m!6279536 () Bool)

(assert (=> b!5233857 m!6279536))

(assert (=> b!5232456 d!1687412))

(declare-fun bs!1215119 () Bool)

(declare-fun d!1687414 () Bool)

(assert (= bs!1215119 (and d!1687414 d!1687248)))

(declare-fun lambda!262999 () Int)

(assert (=> bs!1215119 (= lambda!262999 lambda!262977)))

(declare-fun bs!1215120 () Bool)

(assert (= bs!1215120 (and d!1687414 d!1687236)))

(assert (=> bs!1215120 (= lambda!262999 lambda!262975)))

(declare-fun bs!1215121 () Bool)

(assert (= bs!1215121 (and d!1687414 d!1687244)))

(assert (=> bs!1215121 (= lambda!262999 lambda!262976)))

(declare-fun bs!1215122 () Bool)

(assert (= bs!1215122 (and d!1687414 d!1687180)))

(assert (=> bs!1215122 (= lambda!262999 lambda!262963)))

(declare-fun bs!1215123 () Bool)

(assert (= bs!1215123 (and d!1687414 d!1687308)))

(assert (=> bs!1215123 (= lambda!262999 lambda!262985)))

(declare-fun bs!1215124 () Bool)

(assert (= bs!1215124 (and d!1687414 d!1687266)))

(assert (=> bs!1215124 (= lambda!262999 lambda!262980)))

(declare-fun bs!1215125 () Bool)

(assert (= bs!1215125 (and d!1687414 d!1687168)))

(assert (=> bs!1215125 (= lambda!262999 lambda!262961)))

(declare-fun bs!1215126 () Bool)

(assert (= bs!1215126 (and d!1687414 d!1687282)))

(assert (=> bs!1215126 (= lambda!262999 lambda!262982)))

(declare-fun bs!1215127 () Bool)

(assert (= bs!1215127 (and d!1687414 d!1687274)))

(assert (=> bs!1215127 (= lambda!262999 lambda!262981)))

(assert (=> d!1687414 (= (nullableZipper!1246 lt!2145591) (exists!1979 lt!2145591 lambda!262999))))

(declare-fun bs!1215128 () Bool)

(assert (= bs!1215128 d!1687414))

(declare-fun m!6279538 () Bool)

(assert (=> bs!1215128 m!6279538))

(assert (=> b!5232447 d!1687414))

(declare-fun d!1687416 () Bool)

(assert (=> d!1687416 (= (isEmpty!32580 (findConcatSeparation!1350 (regOne!30162 r!7292) (regTwo!30162 r!7292) Nil!60651 s!2326 s!2326)) (not ((_ is Some!14935) (findConcatSeparation!1350 (regOne!30162 r!7292) (regTwo!30162 r!7292) Nil!60651 s!2326 s!2326))))))

(assert (=> d!1686788 d!1687416))

(declare-fun b!5233858 () Bool)

(declare-fun e!3256980 () (InoxSet Context!8418))

(assert (=> b!5233858 (= e!3256980 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233859 () Bool)

(declare-fun call!370363 () (InoxSet Context!8418))

(assert (=> b!5233859 (= e!3256980 call!370363)))

(declare-fun e!3256981 () (InoxSet Context!8418))

(declare-fun b!5233860 () Bool)

(assert (=> b!5233860 (= e!3256981 ((_ map or) call!370363 (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145561)))))) (h!67099 s!2326))))))

(declare-fun b!5233861 () Bool)

(assert (=> b!5233861 (= e!3256981 e!3256980)))

(declare-fun c!904179 () Bool)

(assert (=> b!5233861 (= c!904179 ((_ is Cons!60650) (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145561))))))))

(declare-fun b!5233862 () Bool)

(declare-fun e!3256982 () Bool)

(assert (=> b!5233862 (= e!3256982 (nullable!4994 (h!67098 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145561)))))))))

(declare-fun d!1687418 () Bool)

(declare-fun c!904178 () Bool)

(assert (=> d!1687418 (= c!904178 e!3256982)))

(declare-fun res!2221510 () Bool)

(assert (=> d!1687418 (=> (not res!2221510) (not e!3256982))))

(assert (=> d!1687418 (= res!2221510 ((_ is Cons!60650) (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145561))))))))

(assert (=> d!1687418 (= (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 lt!2145561))) (h!67099 s!2326)) e!3256981)))

(declare-fun bm!370358 () Bool)

(assert (=> bm!370358 (= call!370363 (derivationStepZipperDown!273 (h!67098 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145561))))) (Context!8419 (t!373953 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145561)))))) (h!67099 s!2326)))))

(assert (= (and d!1687418 res!2221510) b!5233862))

(assert (= (and d!1687418 c!904178) b!5233860))

(assert (= (and d!1687418 (not c!904178)) b!5233861))

(assert (= (and b!5233861 c!904179) b!5233859))

(assert (= (and b!5233861 (not c!904179)) b!5233858))

(assert (= (or b!5233860 b!5233859) bm!370358))

(declare-fun m!6279540 () Bool)

(assert (=> b!5233860 m!6279540))

(declare-fun m!6279542 () Bool)

(assert (=> b!5233862 m!6279542))

(declare-fun m!6279544 () Bool)

(assert (=> bm!370358 m!6279544))

(assert (=> b!5232582 d!1687418))

(declare-fun d!1687420 () Bool)

(assert (=> d!1687420 (= (isEmpty!32575 (t!373953 lt!2145568)) ((_ is Nil!60650) (t!373953 lt!2145568)))))

(assert (=> b!5232482 d!1687420))

(declare-fun d!1687422 () Bool)

(assert (=> d!1687422 (= (isEmptyExpr!782 lt!2145653) ((_ is EmptyExpr!14825) lt!2145653))))

(assert (=> b!5232247 d!1687422))

(assert (=> d!1686724 d!1687196))

(declare-fun d!1687424 () Bool)

(assert (=> d!1687424 true))

(declare-fun setRes!33346 () Bool)

(assert (=> d!1687424 setRes!33346))

(declare-fun condSetEmpty!33346 () Bool)

(declare-fun res!2221511 () (InoxSet Context!8418))

(assert (=> d!1687424 (= condSetEmpty!33346 (= res!2221511 ((as const (Array Context!8418 Bool)) false)))))

(assert (=> d!1687424 (= (choose!38922 lt!2145566 lambda!262854) res!2221511)))

(declare-fun setIsEmpty!33346 () Bool)

(assert (=> setIsEmpty!33346 setRes!33346))

(declare-fun setNonEmpty!33346 () Bool)

(declare-fun setElem!33346 () Context!8418)

(declare-fun e!3256983 () Bool)

(declare-fun tp!1466340 () Bool)

(assert (=> setNonEmpty!33346 (= setRes!33346 (and tp!1466340 (inv!80309 setElem!33346) e!3256983))))

(declare-fun setRest!33346 () (InoxSet Context!8418))

(assert (=> setNonEmpty!33346 (= res!2221511 ((_ map or) (store ((as const (Array Context!8418 Bool)) false) setElem!33346 true) setRest!33346))))

(declare-fun b!5233863 () Bool)

(declare-fun tp!1466341 () Bool)

(assert (=> b!5233863 (= e!3256983 tp!1466341)))

(assert (= (and d!1687424 condSetEmpty!33346) setIsEmpty!33346))

(assert (= (and d!1687424 (not condSetEmpty!33346)) setNonEmpty!33346))

(assert (= setNonEmpty!33346 b!5233863))

(declare-fun m!6279546 () Bool)

(assert (=> setNonEmpty!33346 m!6279546))

(assert (=> d!1686764 d!1687424))

(declare-fun b!5233864 () Bool)

(declare-fun res!2221515 () Bool)

(declare-fun e!3256986 () Bool)

(assert (=> b!5233864 (=> res!2221515 e!3256986)))

(declare-fun e!3256989 () Bool)

(assert (=> b!5233864 (= res!2221515 e!3256989)))

(declare-fun res!2221517 () Bool)

(assert (=> b!5233864 (=> (not res!2221517) (not e!3256989))))

(declare-fun lt!2145775 () Bool)

(assert (=> b!5233864 (= res!2221517 lt!2145775)))

(declare-fun b!5233865 () Bool)

(declare-fun e!3256985 () Bool)

(assert (=> b!5233865 (= e!3256985 (matchR!7010 (derivativeStep!4068 (derivativeStep!4068 r!7292 (head!11212 s!2326)) (head!11212 (tail!10309 s!2326))) (tail!10309 (tail!10309 s!2326))))))

(declare-fun bm!370359 () Bool)

(declare-fun call!370364 () Bool)

(assert (=> bm!370359 (= call!370364 (isEmpty!32579 (tail!10309 s!2326)))))

(declare-fun b!5233866 () Bool)

(declare-fun res!2221519 () Bool)

(assert (=> b!5233866 (=> (not res!2221519) (not e!3256989))))

(assert (=> b!5233866 (= res!2221519 (not call!370364))))

(declare-fun b!5233867 () Bool)

(declare-fun e!3256987 () Bool)

(declare-fun e!3256984 () Bool)

(assert (=> b!5233867 (= e!3256987 e!3256984)))

(declare-fun res!2221512 () Bool)

(assert (=> b!5233867 (=> res!2221512 e!3256984)))

(assert (=> b!5233867 (= res!2221512 call!370364)))

(declare-fun b!5233868 () Bool)

(assert (=> b!5233868 (= e!3256986 e!3256987)))

(declare-fun res!2221516 () Bool)

(assert (=> b!5233868 (=> (not res!2221516) (not e!3256987))))

(assert (=> b!5233868 (= res!2221516 (not lt!2145775))))

(declare-fun b!5233869 () Bool)

(declare-fun res!2221513 () Bool)

(assert (=> b!5233869 (=> (not res!2221513) (not e!3256989))))

(assert (=> b!5233869 (= res!2221513 (isEmpty!32579 (tail!10309 (tail!10309 s!2326))))))

(declare-fun b!5233870 () Bool)

(declare-fun res!2221514 () Bool)

(assert (=> b!5233870 (=> res!2221514 e!3256986)))

(assert (=> b!5233870 (= res!2221514 (not ((_ is ElementMatch!14825) (derivativeStep!4068 r!7292 (head!11212 s!2326)))))))

(declare-fun e!3256988 () Bool)

(assert (=> b!5233870 (= e!3256988 e!3256986)))

(declare-fun b!5233871 () Bool)

(declare-fun res!2221518 () Bool)

(assert (=> b!5233871 (=> res!2221518 e!3256984)))

(assert (=> b!5233871 (= res!2221518 (not (isEmpty!32579 (tail!10309 (tail!10309 s!2326)))))))

(declare-fun b!5233872 () Bool)

(assert (=> b!5233872 (= e!3256988 (not lt!2145775))))

(declare-fun b!5233873 () Bool)

(assert (=> b!5233873 (= e!3256989 (= (head!11212 (tail!10309 s!2326)) (c!903601 (derivativeStep!4068 r!7292 (head!11212 s!2326)))))))

(declare-fun b!5233874 () Bool)

(declare-fun e!3256990 () Bool)

(assert (=> b!5233874 (= e!3256990 e!3256988)))

(declare-fun c!904182 () Bool)

(assert (=> b!5233874 (= c!904182 ((_ is EmptyLang!14825) (derivativeStep!4068 r!7292 (head!11212 s!2326))))))

(declare-fun d!1687426 () Bool)

(assert (=> d!1687426 e!3256990))

(declare-fun c!904181 () Bool)

(assert (=> d!1687426 (= c!904181 ((_ is EmptyExpr!14825) (derivativeStep!4068 r!7292 (head!11212 s!2326))))))

(assert (=> d!1687426 (= lt!2145775 e!3256985)))

(declare-fun c!904180 () Bool)

(assert (=> d!1687426 (= c!904180 (isEmpty!32579 (tail!10309 s!2326)))))

(assert (=> d!1687426 (validRegex!6561 (derivativeStep!4068 r!7292 (head!11212 s!2326)))))

(assert (=> d!1687426 (= (matchR!7010 (derivativeStep!4068 r!7292 (head!11212 s!2326)) (tail!10309 s!2326)) lt!2145775)))

(declare-fun b!5233875 () Bool)

(assert (=> b!5233875 (= e!3256984 (not (= (head!11212 (tail!10309 s!2326)) (c!903601 (derivativeStep!4068 r!7292 (head!11212 s!2326))))))))

(declare-fun b!5233876 () Bool)

(assert (=> b!5233876 (= e!3256985 (nullable!4994 (derivativeStep!4068 r!7292 (head!11212 s!2326))))))

(declare-fun b!5233877 () Bool)

(assert (=> b!5233877 (= e!3256990 (= lt!2145775 call!370364))))

(assert (= (and d!1687426 c!904180) b!5233876))

(assert (= (and d!1687426 (not c!904180)) b!5233865))

(assert (= (and d!1687426 c!904181) b!5233877))

(assert (= (and d!1687426 (not c!904181)) b!5233874))

(assert (= (and b!5233874 c!904182) b!5233872))

(assert (= (and b!5233874 (not c!904182)) b!5233870))

(assert (= (and b!5233870 (not res!2221514)) b!5233864))

(assert (= (and b!5233864 res!2221517) b!5233866))

(assert (= (and b!5233866 res!2221519) b!5233869))

(assert (= (and b!5233869 res!2221513) b!5233873))

(assert (= (and b!5233864 (not res!2221515)) b!5233868))

(assert (= (and b!5233868 res!2221516) b!5233867))

(assert (= (and b!5233867 (not res!2221512)) b!5233871))

(assert (= (and b!5233871 (not res!2221518)) b!5233875))

(assert (= (or b!5233877 b!5233866 b!5233867) bm!370359))

(assert (=> b!5233876 m!6278032))

(declare-fun m!6279548 () Bool)

(assert (=> b!5233876 m!6279548))

(assert (=> b!5233865 m!6278034))

(assert (=> b!5233865 m!6279386))

(assert (=> b!5233865 m!6278032))

(assert (=> b!5233865 m!6279386))

(declare-fun m!6279550 () Bool)

(assert (=> b!5233865 m!6279550))

(assert (=> b!5233865 m!6278034))

(assert (=> b!5233865 m!6279390))

(assert (=> b!5233865 m!6279550))

(assert (=> b!5233865 m!6279390))

(declare-fun m!6279552 () Bool)

(assert (=> b!5233865 m!6279552))

(assert (=> b!5233871 m!6278034))

(assert (=> b!5233871 m!6279390))

(assert (=> b!5233871 m!6279390))

(assert (=> b!5233871 m!6279442))

(assert (=> bm!370359 m!6278034))

(assert (=> bm!370359 m!6278038))

(assert (=> b!5233869 m!6278034))

(assert (=> b!5233869 m!6279390))

(assert (=> b!5233869 m!6279390))

(assert (=> b!5233869 m!6279442))

(assert (=> b!5233873 m!6278034))

(assert (=> b!5233873 m!6279386))

(assert (=> d!1687426 m!6278034))

(assert (=> d!1687426 m!6278038))

(assert (=> d!1687426 m!6278032))

(declare-fun m!6279554 () Bool)

(assert (=> d!1687426 m!6279554))

(assert (=> b!5233875 m!6278034))

(assert (=> b!5233875 m!6279386))

(assert (=> b!5232430 d!1687426))

(declare-fun b!5233878 () Bool)

(declare-fun c!904187 () Bool)

(assert (=> b!5233878 (= c!904187 ((_ is Union!14825) r!7292))))

(declare-fun e!3256995 () Regex!14825)

(declare-fun e!3256993 () Regex!14825)

(assert (=> b!5233878 (= e!3256995 e!3256993)))

(declare-fun call!370366 () Regex!14825)

(declare-fun bm!370360 () Bool)

(assert (=> bm!370360 (= call!370366 (derivativeStep!4068 (ite c!904187 (regOne!30163 r!7292) (regOne!30162 r!7292)) (head!11212 s!2326)))))

(declare-fun bm!370361 () Bool)

(declare-fun call!370368 () Regex!14825)

(declare-fun call!370365 () Regex!14825)

(assert (=> bm!370361 (= call!370368 call!370365)))

(declare-fun b!5233879 () Bool)

(assert (=> b!5233879 (= e!3256995 (ite (= (head!11212 s!2326) (c!903601 r!7292)) EmptyExpr!14825 EmptyLang!14825))))

(declare-fun b!5233880 () Bool)

(declare-fun e!3256991 () Regex!14825)

(assert (=> b!5233880 (= e!3256991 (Union!14825 (Concat!23670 call!370368 (regTwo!30162 r!7292)) EmptyLang!14825))))

(declare-fun bm!370362 () Bool)

(declare-fun call!370367 () Regex!14825)

(assert (=> bm!370362 (= call!370365 call!370367)))

(declare-fun b!5233881 () Bool)

(declare-fun e!3256992 () Regex!14825)

(assert (=> b!5233881 (= e!3256992 e!3256995)))

(declare-fun c!904185 () Bool)

(assert (=> b!5233881 (= c!904185 ((_ is ElementMatch!14825) r!7292))))

(declare-fun b!5233882 () Bool)

(declare-fun e!3256994 () Regex!14825)

(assert (=> b!5233882 (= e!3256994 (Concat!23670 call!370365 r!7292))))

(declare-fun d!1687428 () Bool)

(declare-fun lt!2145776 () Regex!14825)

(assert (=> d!1687428 (validRegex!6561 lt!2145776)))

(assert (=> d!1687428 (= lt!2145776 e!3256992)))

(declare-fun c!904183 () Bool)

(assert (=> d!1687428 (= c!904183 (or ((_ is EmptyExpr!14825) r!7292) ((_ is EmptyLang!14825) r!7292)))))

(assert (=> d!1687428 (validRegex!6561 r!7292)))

(assert (=> d!1687428 (= (derivativeStep!4068 r!7292 (head!11212 s!2326)) lt!2145776)))

(declare-fun b!5233883 () Bool)

(assert (=> b!5233883 (= e!3256992 EmptyLang!14825)))

(declare-fun b!5233884 () Bool)

(declare-fun c!904184 () Bool)

(assert (=> b!5233884 (= c!904184 (nullable!4994 (regOne!30162 r!7292)))))

(assert (=> b!5233884 (= e!3256994 e!3256991)))

(declare-fun b!5233885 () Bool)

(assert (=> b!5233885 (= e!3256991 (Union!14825 (Concat!23670 call!370366 (regTwo!30162 r!7292)) call!370368))))

(declare-fun b!5233886 () Bool)

(assert (=> b!5233886 (= e!3256993 (Union!14825 call!370366 call!370367))))

(declare-fun c!904186 () Bool)

(declare-fun bm!370363 () Bool)

(assert (=> bm!370363 (= call!370367 (derivativeStep!4068 (ite c!904187 (regTwo!30163 r!7292) (ite c!904186 (reg!15154 r!7292) (ite c!904184 (regTwo!30162 r!7292) (regOne!30162 r!7292)))) (head!11212 s!2326)))))

(declare-fun b!5233887 () Bool)

(assert (=> b!5233887 (= e!3256993 e!3256994)))

(assert (=> b!5233887 (= c!904186 ((_ is Star!14825) r!7292))))

(assert (= (and d!1687428 c!904183) b!5233883))

(assert (= (and d!1687428 (not c!904183)) b!5233881))

(assert (= (and b!5233881 c!904185) b!5233879))

(assert (= (and b!5233881 (not c!904185)) b!5233878))

(assert (= (and b!5233878 c!904187) b!5233886))

(assert (= (and b!5233878 (not c!904187)) b!5233887))

(assert (= (and b!5233887 c!904186) b!5233882))

(assert (= (and b!5233887 (not c!904186)) b!5233884))

(assert (= (and b!5233884 c!904184) b!5233885))

(assert (= (and b!5233884 (not c!904184)) b!5233880))

(assert (= (or b!5233885 b!5233880) bm!370361))

(assert (= (or b!5233882 bm!370361) bm!370362))

(assert (= (or b!5233886 bm!370362) bm!370363))

(assert (= (or b!5233886 b!5233885) bm!370360))

(assert (=> bm!370360 m!6278030))

(declare-fun m!6279556 () Bool)

(assert (=> bm!370360 m!6279556))

(declare-fun m!6279558 () Bool)

(assert (=> d!1687428 m!6279558))

(assert (=> d!1687428 m!6277526))

(assert (=> b!5233884 m!6279294))

(assert (=> bm!370363 m!6278030))

(declare-fun m!6279560 () Bool)

(assert (=> bm!370363 m!6279560))

(assert (=> b!5232430 d!1687428))

(assert (=> b!5232430 d!1687210))

(assert (=> b!5232430 d!1687190))

(declare-fun d!1687430 () Bool)

(assert (=> d!1687430 (= (head!11211 lt!2145568) (h!67098 lt!2145568))))

(assert (=> b!5232486 d!1687430))

(declare-fun bm!370364 () Bool)

(declare-fun call!370371 () Bool)

(declare-fun c!904189 () Bool)

(assert (=> bm!370364 (= call!370371 (validRegex!6561 (ite c!904189 (regTwo!30163 lt!2145676) (regTwo!30162 lt!2145676))))))

(declare-fun b!5233888 () Bool)

(declare-fun e!3256997 () Bool)

(declare-fun e!3256996 () Bool)

(assert (=> b!5233888 (= e!3256997 e!3256996)))

(declare-fun c!904188 () Bool)

(assert (=> b!5233888 (= c!904188 ((_ is Star!14825) lt!2145676))))

(declare-fun b!5233889 () Bool)

(declare-fun e!3256999 () Bool)

(assert (=> b!5233889 (= e!3256999 call!370371)))

(declare-fun b!5233890 () Bool)

(declare-fun e!3257002 () Bool)

(assert (=> b!5233890 (= e!3257002 call!370371)))

(declare-fun b!5233891 () Bool)

(declare-fun e!3257001 () Bool)

(assert (=> b!5233891 (= e!3256996 e!3257001)))

(assert (=> b!5233891 (= c!904189 ((_ is Union!14825) lt!2145676))))

(declare-fun call!370370 () Bool)

(declare-fun bm!370365 () Bool)

(assert (=> bm!370365 (= call!370370 (validRegex!6561 (ite c!904188 (reg!15154 lt!2145676) (ite c!904189 (regOne!30163 lt!2145676) (regOne!30162 lt!2145676)))))))

(declare-fun b!5233892 () Bool)

(declare-fun e!3256998 () Bool)

(assert (=> b!5233892 (= e!3256998 call!370370)))

(declare-fun b!5233893 () Bool)

(declare-fun res!2221520 () Bool)

(declare-fun e!3257000 () Bool)

(assert (=> b!5233893 (=> res!2221520 e!3257000)))

(assert (=> b!5233893 (= res!2221520 (not ((_ is Concat!23670) lt!2145676)))))

(assert (=> b!5233893 (= e!3257001 e!3257000)))

(declare-fun b!5233894 () Bool)

(assert (=> b!5233894 (= e!3256996 e!3256998)))

(declare-fun res!2221523 () Bool)

(assert (=> b!5233894 (= res!2221523 (not (nullable!4994 (reg!15154 lt!2145676))))))

(assert (=> b!5233894 (=> (not res!2221523) (not e!3256998))))

(declare-fun b!5233895 () Bool)

(assert (=> b!5233895 (= e!3257000 e!3257002)))

(declare-fun res!2221521 () Bool)

(assert (=> b!5233895 (=> (not res!2221521) (not e!3257002))))

(declare-fun call!370369 () Bool)

(assert (=> b!5233895 (= res!2221521 call!370369)))

(declare-fun bm!370366 () Bool)

(assert (=> bm!370366 (= call!370369 call!370370)))

(declare-fun d!1687432 () Bool)

(declare-fun res!2221522 () Bool)

(assert (=> d!1687432 (=> res!2221522 e!3256997)))

(assert (=> d!1687432 (= res!2221522 ((_ is ElementMatch!14825) lt!2145676))))

(assert (=> d!1687432 (= (validRegex!6561 lt!2145676) e!3256997)))

(declare-fun b!5233896 () Bool)

(declare-fun res!2221524 () Bool)

(assert (=> b!5233896 (=> (not res!2221524) (not e!3256999))))

(assert (=> b!5233896 (= res!2221524 call!370369)))

(assert (=> b!5233896 (= e!3257001 e!3256999)))

(assert (= (and d!1687432 (not res!2221522)) b!5233888))

(assert (= (and b!5233888 c!904188) b!5233894))

(assert (= (and b!5233888 (not c!904188)) b!5233891))

(assert (= (and b!5233894 res!2221523) b!5233892))

(assert (= (and b!5233891 c!904189) b!5233896))

(assert (= (and b!5233891 (not c!904189)) b!5233893))

(assert (= (and b!5233896 res!2221524) b!5233889))

(assert (= (and b!5233893 (not res!2221520)) b!5233895))

(assert (= (and b!5233895 res!2221521) b!5233890))

(assert (= (or b!5233889 b!5233890) bm!370364))

(assert (= (or b!5233896 b!5233895) bm!370366))

(assert (= (or b!5233892 bm!370366) bm!370365))

(declare-fun m!6279562 () Bool)

(assert (=> bm!370364 m!6279562))

(declare-fun m!6279564 () Bool)

(assert (=> bm!370365 m!6279564))

(declare-fun m!6279566 () Bool)

(assert (=> b!5233894 m!6279566))

(assert (=> d!1686716 d!1687432))

(declare-fun d!1687434 () Bool)

(declare-fun res!2221525 () Bool)

(declare-fun e!3257003 () Bool)

(assert (=> d!1687434 (=> res!2221525 e!3257003)))

(assert (=> d!1687434 (= res!2221525 ((_ is Nil!60650) lt!2145568))))

(assert (=> d!1687434 (= (forall!14255 lt!2145568 lambda!262894) e!3257003)))

(declare-fun b!5233897 () Bool)

(declare-fun e!3257004 () Bool)

(assert (=> b!5233897 (= e!3257003 e!3257004)))

(declare-fun res!2221526 () Bool)

(assert (=> b!5233897 (=> (not res!2221526) (not e!3257004))))

(assert (=> b!5233897 (= res!2221526 (dynLambda!23967 lambda!262894 (h!67098 lt!2145568)))))

(declare-fun b!5233898 () Bool)

(assert (=> b!5233898 (= e!3257004 (forall!14255 (t!373953 lt!2145568) lambda!262894))))

(assert (= (and d!1687434 (not res!2221525)) b!5233897))

(assert (= (and b!5233897 res!2221526) b!5233898))

(declare-fun b_lambda!202365 () Bool)

(assert (=> (not b_lambda!202365) (not b!5233897)))

(declare-fun m!6279568 () Bool)

(assert (=> b!5233897 m!6279568))

(declare-fun m!6279570 () Bool)

(assert (=> b!5233898 m!6279570))

(assert (=> d!1686716 d!1687434))

(assert (=> bs!1214628 d!1686758))

(assert (=> d!1686712 d!1687268))

(assert (=> d!1686712 d!1687174))

(assert (=> b!5232613 d!1687322))

(assert (=> d!1686708 d!1687196))

(declare-fun d!1687436 () Bool)

(declare-fun c!904190 () Bool)

(assert (=> d!1687436 (= c!904190 (isEmpty!32579 (tail!10309 (t!373954 s!2326))))))

(declare-fun e!3257005 () Bool)

(assert (=> d!1687436 (= (matchZipper!1069 (derivationStepZipper!1090 ((_ map or) lt!2145576 lt!2145570) (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))) e!3257005)))

(declare-fun b!5233899 () Bool)

(assert (=> b!5233899 (= e!3257005 (nullableZipper!1246 (derivationStepZipper!1090 ((_ map or) lt!2145576 lt!2145570) (head!11212 (t!373954 s!2326)))))))

(declare-fun b!5233900 () Bool)

(assert (=> b!5233900 (= e!3257005 (matchZipper!1069 (derivationStepZipper!1090 (derivationStepZipper!1090 ((_ map or) lt!2145576 lt!2145570) (head!11212 (t!373954 s!2326))) (head!11212 (tail!10309 (t!373954 s!2326)))) (tail!10309 (tail!10309 (t!373954 s!2326)))))))

(assert (= (and d!1687436 c!904190) b!5233899))

(assert (= (and d!1687436 (not c!904190)) b!5233900))

(assert (=> d!1687436 m!6278050))

(assert (=> d!1687436 m!6279144))

(assert (=> b!5233899 m!6278120))

(declare-fun m!6279572 () Bool)

(assert (=> b!5233899 m!6279572))

(assert (=> b!5233900 m!6278050))

(assert (=> b!5233900 m!6279148))

(assert (=> b!5233900 m!6278120))

(assert (=> b!5233900 m!6279148))

(declare-fun m!6279574 () Bool)

(assert (=> b!5233900 m!6279574))

(assert (=> b!5233900 m!6278050))

(assert (=> b!5233900 m!6279152))

(assert (=> b!5233900 m!6279574))

(assert (=> b!5233900 m!6279152))

(declare-fun m!6279576 () Bool)

(assert (=> b!5233900 m!6279576))

(assert (=> b!5232493 d!1687436))

(declare-fun bs!1215129 () Bool)

(declare-fun d!1687438 () Bool)

(assert (= bs!1215129 (and d!1687438 d!1687362)))

(declare-fun lambda!263000 () Int)

(assert (=> bs!1215129 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!263000 lambda!262990))))

(declare-fun bs!1215130 () Bool)

(assert (= bs!1215130 (and d!1687438 d!1687400)))

(assert (=> bs!1215130 (= lambda!263000 lambda!262998)))

(declare-fun bs!1215131 () Bool)

(assert (= bs!1215131 (and d!1687438 d!1687342)))

(assert (=> bs!1215131 (= lambda!263000 lambda!262988)))

(declare-fun bs!1215132 () Bool)

(assert (= bs!1215132 (and d!1687438 d!1687380)))

(assert (=> bs!1215132 (= lambda!263000 lambda!262995)))

(declare-fun bs!1215133 () Bool)

(assert (= bs!1215133 (and d!1687438 d!1687346)))

(assert (=> bs!1215133 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!263000 lambda!262989))))

(declare-fun bs!1215134 () Bool)

(assert (= bs!1215134 (and d!1687438 b!5231809)))

(assert (=> bs!1215134 (= (= (head!11212 (t!373954 s!2326)) (h!67099 s!2326)) (= lambda!263000 lambda!262854))))

(declare-fun bs!1215135 () Bool)

(assert (= bs!1215135 (and d!1687438 d!1687222)))

(assert (=> bs!1215135 (= lambda!263000 lambda!262973)))

(declare-fun bs!1215136 () Bool)

(assert (= bs!1215136 (and d!1687438 d!1687338)))

(assert (=> bs!1215136 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!263000 lambda!262987))))

(declare-fun bs!1215137 () Bool)

(assert (= bs!1215137 (and d!1687438 d!1687376)))

(assert (=> bs!1215137 (= lambda!263000 lambda!262994)))

(declare-fun bs!1215138 () Bool)

(assert (= bs!1215138 (and d!1687438 d!1687316)))

(assert (=> bs!1215138 (= lambda!263000 lambda!262986)))

(assert (=> d!1687438 true))

(assert (=> d!1687438 (= (derivationStepZipper!1090 ((_ map or) lt!2145576 lt!2145570) (head!11212 (t!373954 s!2326))) (flatMap!552 ((_ map or) lt!2145576 lt!2145570) lambda!263000))))

(declare-fun bs!1215139 () Bool)

(assert (= bs!1215139 d!1687438))

(declare-fun m!6279578 () Bool)

(assert (=> bs!1215139 m!6279578))

(assert (=> b!5232493 d!1687438))

(assert (=> b!5232493 d!1687224))

(assert (=> b!5232493 d!1687226))

(declare-fun bm!370367 () Bool)

(declare-fun call!370374 () Bool)

(declare-fun c!904192 () Bool)

(assert (=> bm!370367 (= call!370374 (validRegex!6561 (ite c!904192 (regTwo!30163 lt!2145688) (regTwo!30162 lt!2145688))))))

(declare-fun b!5233901 () Bool)

(declare-fun e!3257007 () Bool)

(declare-fun e!3257006 () Bool)

(assert (=> b!5233901 (= e!3257007 e!3257006)))

(declare-fun c!904191 () Bool)

(assert (=> b!5233901 (= c!904191 ((_ is Star!14825) lt!2145688))))

(declare-fun b!5233902 () Bool)

(declare-fun e!3257009 () Bool)

(assert (=> b!5233902 (= e!3257009 call!370374)))

(declare-fun b!5233903 () Bool)

(declare-fun e!3257012 () Bool)

(assert (=> b!5233903 (= e!3257012 call!370374)))

(declare-fun b!5233904 () Bool)

(declare-fun e!3257011 () Bool)

(assert (=> b!5233904 (= e!3257006 e!3257011)))

(assert (=> b!5233904 (= c!904192 ((_ is Union!14825) lt!2145688))))

(declare-fun bm!370368 () Bool)

(declare-fun call!370373 () Bool)

(assert (=> bm!370368 (= call!370373 (validRegex!6561 (ite c!904191 (reg!15154 lt!2145688) (ite c!904192 (regOne!30163 lt!2145688) (regOne!30162 lt!2145688)))))))

(declare-fun b!5233905 () Bool)

(declare-fun e!3257008 () Bool)

(assert (=> b!5233905 (= e!3257008 call!370373)))

(declare-fun b!5233906 () Bool)

(declare-fun res!2221527 () Bool)

(declare-fun e!3257010 () Bool)

(assert (=> b!5233906 (=> res!2221527 e!3257010)))

(assert (=> b!5233906 (= res!2221527 (not ((_ is Concat!23670) lt!2145688)))))

(assert (=> b!5233906 (= e!3257011 e!3257010)))

(declare-fun b!5233907 () Bool)

(assert (=> b!5233907 (= e!3257006 e!3257008)))

(declare-fun res!2221530 () Bool)

(assert (=> b!5233907 (= res!2221530 (not (nullable!4994 (reg!15154 lt!2145688))))))

(assert (=> b!5233907 (=> (not res!2221530) (not e!3257008))))

(declare-fun b!5233908 () Bool)

(assert (=> b!5233908 (= e!3257010 e!3257012)))

(declare-fun res!2221528 () Bool)

(assert (=> b!5233908 (=> (not res!2221528) (not e!3257012))))

(declare-fun call!370372 () Bool)

(assert (=> b!5233908 (= res!2221528 call!370372)))

(declare-fun bm!370369 () Bool)

(assert (=> bm!370369 (= call!370372 call!370373)))

(declare-fun d!1687440 () Bool)

(declare-fun res!2221529 () Bool)

(assert (=> d!1687440 (=> res!2221529 e!3257007)))

(assert (=> d!1687440 (= res!2221529 ((_ is ElementMatch!14825) lt!2145688))))

(assert (=> d!1687440 (= (validRegex!6561 lt!2145688) e!3257007)))

(declare-fun b!5233909 () Bool)

(declare-fun res!2221531 () Bool)

(assert (=> b!5233909 (=> (not res!2221531) (not e!3257009))))

(assert (=> b!5233909 (= res!2221531 call!370372)))

(assert (=> b!5233909 (= e!3257011 e!3257009)))

(assert (= (and d!1687440 (not res!2221529)) b!5233901))

(assert (= (and b!5233901 c!904191) b!5233907))

(assert (= (and b!5233901 (not c!904191)) b!5233904))

(assert (= (and b!5233907 res!2221530) b!5233905))

(assert (= (and b!5233904 c!904192) b!5233909))

(assert (= (and b!5233904 (not c!904192)) b!5233906))

(assert (= (and b!5233909 res!2221531) b!5233902))

(assert (= (and b!5233906 (not res!2221527)) b!5233908))

(assert (= (and b!5233908 res!2221528) b!5233903))

(assert (= (or b!5233902 b!5233903) bm!370367))

(assert (= (or b!5233909 b!5233908) bm!370369))

(assert (= (or b!5233905 bm!370369) bm!370368))

(declare-fun m!6279580 () Bool)

(assert (=> bm!370367 m!6279580))

(declare-fun m!6279582 () Bool)

(assert (=> bm!370368 m!6279582))

(declare-fun m!6279584 () Bool)

(assert (=> b!5233907 m!6279584))

(assert (=> d!1686746 d!1687440))

(declare-fun d!1687442 () Bool)

(declare-fun res!2221532 () Bool)

(declare-fun e!3257013 () Bool)

(assert (=> d!1687442 (=> res!2221532 e!3257013)))

(assert (=> d!1687442 (= res!2221532 ((_ is Nil!60650) (unfocusZipperList!267 zl!343)))))

(assert (=> d!1687442 (= (forall!14255 (unfocusZipperList!267 zl!343) lambda!262900) e!3257013)))

(declare-fun b!5233910 () Bool)

(declare-fun e!3257014 () Bool)

(assert (=> b!5233910 (= e!3257013 e!3257014)))

(declare-fun res!2221533 () Bool)

(assert (=> b!5233910 (=> (not res!2221533) (not e!3257014))))

(assert (=> b!5233910 (= res!2221533 (dynLambda!23967 lambda!262900 (h!67098 (unfocusZipperList!267 zl!343))))))

(declare-fun b!5233911 () Bool)

(assert (=> b!5233911 (= e!3257014 (forall!14255 (t!373953 (unfocusZipperList!267 zl!343)) lambda!262900))))

(assert (= (and d!1687442 (not res!2221532)) b!5233910))

(assert (= (and b!5233910 res!2221533) b!5233911))

(declare-fun b_lambda!202367 () Bool)

(assert (=> (not b_lambda!202367) (not b!5233910)))

(declare-fun m!6279586 () Bool)

(assert (=> b!5233910 m!6279586))

(declare-fun m!6279588 () Bool)

(assert (=> b!5233911 m!6279588))

(assert (=> d!1686746 d!1687442))

(declare-fun b!5233912 () Bool)

(declare-fun e!3257019 () (InoxSet Context!8418))

(declare-fun e!3257020 () (InoxSet Context!8418))

(assert (=> b!5233912 (= e!3257019 e!3257020)))

(declare-fun c!904195 () Bool)

(assert (=> b!5233912 (= c!904195 ((_ is Concat!23670) (h!67098 (exprs!4709 lt!2145585))))))

(declare-fun b!5233913 () Bool)

(declare-fun call!370375 () (InoxSet Context!8418))

(assert (=> b!5233913 (= e!3257020 call!370375)))

(declare-fun bm!370370 () Bool)

(declare-fun call!370376 () (InoxSet Context!8418))

(declare-fun call!370380 () (InoxSet Context!8418))

(assert (=> bm!370370 (= call!370376 call!370380)))

(declare-fun d!1687444 () Bool)

(declare-fun c!904197 () Bool)

(assert (=> d!1687444 (= c!904197 (and ((_ is ElementMatch!14825) (h!67098 (exprs!4709 lt!2145585))) (= (c!903601 (h!67098 (exprs!4709 lt!2145585))) (h!67099 s!2326))))))

(declare-fun e!3257015 () (InoxSet Context!8418))

(assert (=> d!1687444 (= (derivationStepZipperDown!273 (h!67098 (exprs!4709 lt!2145585)) (Context!8419 (t!373953 (exprs!4709 lt!2145585))) (h!67099 s!2326)) e!3257015)))

(declare-fun b!5233914 () Bool)

(declare-fun c!904194 () Bool)

(assert (=> b!5233914 (= c!904194 ((_ is Star!14825) (h!67098 (exprs!4709 lt!2145585))))))

(declare-fun e!3257017 () (InoxSet Context!8418))

(assert (=> b!5233914 (= e!3257020 e!3257017)))

(declare-fun b!5233915 () Bool)

(declare-fun c!904193 () Bool)

(declare-fun e!3257018 () Bool)

(assert (=> b!5233915 (= c!904193 e!3257018)))

(declare-fun res!2221534 () Bool)

(assert (=> b!5233915 (=> (not res!2221534) (not e!3257018))))

(assert (=> b!5233915 (= res!2221534 ((_ is Concat!23670) (h!67098 (exprs!4709 lt!2145585))))))

(declare-fun e!3257016 () (InoxSet Context!8418))

(assert (=> b!5233915 (= e!3257016 e!3257019)))

(declare-fun b!5233916 () Bool)

(assert (=> b!5233916 (= e!3257015 (store ((as const (Array Context!8418 Bool)) false) (Context!8419 (t!373953 (exprs!4709 lt!2145585))) true))))

(declare-fun b!5233917 () Bool)

(declare-fun call!370379 () (InoxSet Context!8418))

(assert (=> b!5233917 (= e!3257019 ((_ map or) call!370379 call!370376))))

(declare-fun call!370377 () List!60774)

(declare-fun bm!370371 () Bool)

(assert (=> bm!370371 (= call!370377 ($colon$colon!1296 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145585)))) (ite (or c!904193 c!904195) (regTwo!30162 (h!67098 (exprs!4709 lt!2145585))) (h!67098 (exprs!4709 lt!2145585)))))))

(declare-fun b!5233918 () Bool)

(assert (=> b!5233918 (= e!3257018 (nullable!4994 (regOne!30162 (h!67098 (exprs!4709 lt!2145585)))))))

(declare-fun b!5233919 () Bool)

(assert (=> b!5233919 (= e!3257015 e!3257016)))

(declare-fun c!904196 () Bool)

(assert (=> b!5233919 (= c!904196 ((_ is Union!14825) (h!67098 (exprs!4709 lt!2145585))))))

(declare-fun b!5233920 () Bool)

(assert (=> b!5233920 (= e!3257016 ((_ map or) call!370380 call!370379))))

(declare-fun b!5233921 () Bool)

(assert (=> b!5233921 (= e!3257017 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233922 () Bool)

(assert (=> b!5233922 (= e!3257017 call!370375)))

(declare-fun call!370378 () List!60774)

(declare-fun bm!370372 () Bool)

(assert (=> bm!370372 (= call!370380 (derivationStepZipperDown!273 (ite c!904196 (regOne!30163 (h!67098 (exprs!4709 lt!2145585))) (ite c!904193 (regTwo!30162 (h!67098 (exprs!4709 lt!2145585))) (ite c!904195 (regOne!30162 (h!67098 (exprs!4709 lt!2145585))) (reg!15154 (h!67098 (exprs!4709 lt!2145585)))))) (ite (or c!904196 c!904193) (Context!8419 (t!373953 (exprs!4709 lt!2145585))) (Context!8419 call!370378)) (h!67099 s!2326)))))

(declare-fun bm!370373 () Bool)

(assert (=> bm!370373 (= call!370378 call!370377)))

(declare-fun bm!370374 () Bool)

(assert (=> bm!370374 (= call!370375 call!370376)))

(declare-fun bm!370375 () Bool)

(assert (=> bm!370375 (= call!370379 (derivationStepZipperDown!273 (ite c!904196 (regTwo!30163 (h!67098 (exprs!4709 lt!2145585))) (regOne!30162 (h!67098 (exprs!4709 lt!2145585)))) (ite c!904196 (Context!8419 (t!373953 (exprs!4709 lt!2145585))) (Context!8419 call!370377)) (h!67099 s!2326)))))

(assert (= (and d!1687444 c!904197) b!5233916))

(assert (= (and d!1687444 (not c!904197)) b!5233919))

(assert (= (and b!5233919 c!904196) b!5233920))

(assert (= (and b!5233919 (not c!904196)) b!5233915))

(assert (= (and b!5233915 res!2221534) b!5233918))

(assert (= (and b!5233915 c!904193) b!5233917))

(assert (= (and b!5233915 (not c!904193)) b!5233912))

(assert (= (and b!5233912 c!904195) b!5233913))

(assert (= (and b!5233912 (not c!904195)) b!5233914))

(assert (= (and b!5233914 c!904194) b!5233922))

(assert (= (and b!5233914 (not c!904194)) b!5233921))

(assert (= (or b!5233913 b!5233922) bm!370373))

(assert (= (or b!5233913 b!5233922) bm!370374))

(assert (= (or b!5233917 bm!370373) bm!370371))

(assert (= (or b!5233917 bm!370374) bm!370370))

(assert (= (or b!5233920 b!5233917) bm!370375))

(assert (= (or b!5233920 bm!370370) bm!370372))

(declare-fun m!6279590 () Bool)

(assert (=> b!5233916 m!6279590))

(declare-fun m!6279592 () Bool)

(assert (=> b!5233918 m!6279592))

(declare-fun m!6279594 () Bool)

(assert (=> bm!370375 m!6279594))

(declare-fun m!6279596 () Bool)

(assert (=> bm!370371 m!6279596))

(declare-fun m!6279598 () Bool)

(assert (=> bm!370372 m!6279598))

(assert (=> bm!370112 d!1687444))

(declare-fun d!1687446 () Bool)

(declare-fun c!904198 () Bool)

(assert (=> d!1687446 (= c!904198 (isEmpty!32579 (tail!10309 (t!373954 s!2326))))))

(declare-fun e!3257021 () Bool)

(assert (=> d!1687446 (= (matchZipper!1069 (derivationStepZipper!1090 lt!2145570 (head!11212 (t!373954 s!2326))) (tail!10309 (t!373954 s!2326))) e!3257021)))

(declare-fun b!5233923 () Bool)

(assert (=> b!5233923 (= e!3257021 (nullableZipper!1246 (derivationStepZipper!1090 lt!2145570 (head!11212 (t!373954 s!2326)))))))

(declare-fun b!5233924 () Bool)

(assert (=> b!5233924 (= e!3257021 (matchZipper!1069 (derivationStepZipper!1090 (derivationStepZipper!1090 lt!2145570 (head!11212 (t!373954 s!2326))) (head!11212 (tail!10309 (t!373954 s!2326)))) (tail!10309 (tail!10309 (t!373954 s!2326)))))))

(assert (= (and d!1687446 c!904198) b!5233923))

(assert (= (and d!1687446 (not c!904198)) b!5233924))

(assert (=> d!1687446 m!6278050))

(assert (=> d!1687446 m!6279144))

(assert (=> b!5233923 m!6278070))

(declare-fun m!6279600 () Bool)

(assert (=> b!5233923 m!6279600))

(assert (=> b!5233924 m!6278050))

(assert (=> b!5233924 m!6279148))

(assert (=> b!5233924 m!6278070))

(assert (=> b!5233924 m!6279148))

(declare-fun m!6279602 () Bool)

(assert (=> b!5233924 m!6279602))

(assert (=> b!5233924 m!6278050))

(assert (=> b!5233924 m!6279152))

(assert (=> b!5233924 m!6279602))

(assert (=> b!5233924 m!6279152))

(declare-fun m!6279604 () Bool)

(assert (=> b!5233924 m!6279604))

(assert (=> b!5232458 d!1687446))

(declare-fun bs!1215140 () Bool)

(declare-fun d!1687448 () Bool)

(assert (= bs!1215140 (and d!1687448 d!1687362)))

(declare-fun lambda!263001 () Int)

(assert (=> bs!1215140 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!263001 lambda!262990))))

(declare-fun bs!1215141 () Bool)

(assert (= bs!1215141 (and d!1687448 d!1687400)))

(assert (=> bs!1215141 (= lambda!263001 lambda!262998)))

(declare-fun bs!1215142 () Bool)

(assert (= bs!1215142 (and d!1687448 d!1687342)))

(assert (=> bs!1215142 (= lambda!263001 lambda!262988)))

(declare-fun bs!1215143 () Bool)

(assert (= bs!1215143 (and d!1687448 d!1687380)))

(assert (=> bs!1215143 (= lambda!263001 lambda!262995)))

(declare-fun bs!1215144 () Bool)

(assert (= bs!1215144 (and d!1687448 d!1687438)))

(assert (=> bs!1215144 (= lambda!263001 lambda!263000)))

(declare-fun bs!1215145 () Bool)

(assert (= bs!1215145 (and d!1687448 d!1687346)))

(assert (=> bs!1215145 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!263001 lambda!262989))))

(declare-fun bs!1215146 () Bool)

(assert (= bs!1215146 (and d!1687448 b!5231809)))

(assert (=> bs!1215146 (= (= (head!11212 (t!373954 s!2326)) (h!67099 s!2326)) (= lambda!263001 lambda!262854))))

(declare-fun bs!1215147 () Bool)

(assert (= bs!1215147 (and d!1687448 d!1687222)))

(assert (=> bs!1215147 (= lambda!263001 lambda!262973)))

(declare-fun bs!1215148 () Bool)

(assert (= bs!1215148 (and d!1687448 d!1687338)))

(assert (=> bs!1215148 (= (= (head!11212 (t!373954 s!2326)) (head!11212 s!2326)) (= lambda!263001 lambda!262987))))

(declare-fun bs!1215149 () Bool)

(assert (= bs!1215149 (and d!1687448 d!1687376)))

(assert (=> bs!1215149 (= lambda!263001 lambda!262994)))

(declare-fun bs!1215150 () Bool)

(assert (= bs!1215150 (and d!1687448 d!1687316)))

(assert (=> bs!1215150 (= lambda!263001 lambda!262986)))

(assert (=> d!1687448 true))

(assert (=> d!1687448 (= (derivationStepZipper!1090 lt!2145570 (head!11212 (t!373954 s!2326))) (flatMap!552 lt!2145570 lambda!263001))))

(declare-fun bs!1215151 () Bool)

(assert (= bs!1215151 d!1687448))

(declare-fun m!6279606 () Bool)

(assert (=> bs!1215151 m!6279606))

(assert (=> b!5232458 d!1687448))

(assert (=> b!5232458 d!1687224))

(assert (=> b!5232458 d!1687226))

(declare-fun d!1687450 () Bool)

(assert (=> d!1687450 (= (nullable!4994 (regOne!30162 (regOne!30163 (regOne!30162 r!7292)))) (nullableFct!1398 (regOne!30162 (regOne!30163 (regOne!30162 r!7292)))))))

(declare-fun bs!1215152 () Bool)

(assert (= bs!1215152 d!1687450))

(declare-fun m!6279608 () Bool)

(assert (=> bs!1215152 m!6279608))

(assert (=> b!5232347 d!1687450))

(assert (=> b!5232472 d!1687188))

(assert (=> b!5232472 d!1687190))

(declare-fun b!5233925 () Bool)

(declare-fun e!3257026 () (InoxSet Context!8418))

(declare-fun e!3257027 () (InoxSet Context!8418))

(assert (=> b!5233925 (= e!3257026 e!3257027)))

(declare-fun c!904201 () Bool)

(assert (=> b!5233925 (= c!904201 ((_ is Concat!23670) (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292))))))))))

(declare-fun b!5233926 () Bool)

(declare-fun call!370381 () (InoxSet Context!8418))

(assert (=> b!5233926 (= e!3257027 call!370381)))

(declare-fun bm!370376 () Bool)

(declare-fun call!370382 () (InoxSet Context!8418))

(declare-fun call!370386 () (InoxSet Context!8418))

(assert (=> bm!370376 (= call!370382 call!370386)))

(declare-fun c!904203 () Bool)

(declare-fun d!1687452 () Bool)

(assert (=> d!1687452 (= c!904203 (and ((_ is ElementMatch!14825) (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292))))))) (= (c!903601 (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292))))))) (h!67099 s!2326))))))

(declare-fun e!3257022 () (InoxSet Context!8418))

(assert (=> d!1687452 (= (derivationStepZipperDown!273 (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292)))))) (ite (or c!903751 c!903748) lt!2145585 (Context!8419 call!370090)) (h!67099 s!2326)) e!3257022)))

(declare-fun c!904200 () Bool)

(declare-fun b!5233927 () Bool)

(assert (=> b!5233927 (= c!904200 ((_ is Star!14825) (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292))))))))))

(declare-fun e!3257024 () (InoxSet Context!8418))

(assert (=> b!5233927 (= e!3257027 e!3257024)))

(declare-fun b!5233928 () Bool)

(declare-fun c!904199 () Bool)

(declare-fun e!3257025 () Bool)

(assert (=> b!5233928 (= c!904199 e!3257025)))

(declare-fun res!2221535 () Bool)

(assert (=> b!5233928 (=> (not res!2221535) (not e!3257025))))

(assert (=> b!5233928 (= res!2221535 ((_ is Concat!23670) (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292))))))))))

(declare-fun e!3257023 () (InoxSet Context!8418))

(assert (=> b!5233928 (= e!3257023 e!3257026)))

(declare-fun b!5233929 () Bool)

(assert (=> b!5233929 (= e!3257022 (store ((as const (Array Context!8418 Bool)) false) (ite (or c!903751 c!903748) lt!2145585 (Context!8419 call!370090)) true))))

(declare-fun b!5233930 () Bool)

(declare-fun call!370385 () (InoxSet Context!8418))

(assert (=> b!5233930 (= e!3257026 ((_ map or) call!370385 call!370382))))

(declare-fun bm!370377 () Bool)

(declare-fun call!370383 () List!60774)

(assert (=> bm!370377 (= call!370383 ($colon$colon!1296 (exprs!4709 (ite (or c!903751 c!903748) lt!2145585 (Context!8419 call!370090))) (ite (or c!904199 c!904201) (regTwo!30162 (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292))))))) (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292)))))))))))

(declare-fun b!5233931 () Bool)

(assert (=> b!5233931 (= e!3257025 (nullable!4994 (regOne!30162 (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292)))))))))))

(declare-fun b!5233932 () Bool)

(assert (=> b!5233932 (= e!3257022 e!3257023)))

(declare-fun c!904202 () Bool)

(assert (=> b!5233932 (= c!904202 ((_ is Union!14825) (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292))))))))))

(declare-fun b!5233933 () Bool)

(assert (=> b!5233933 (= e!3257023 ((_ map or) call!370386 call!370385))))

(declare-fun b!5233934 () Bool)

(assert (=> b!5233934 (= e!3257024 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233935 () Bool)

(assert (=> b!5233935 (= e!3257024 call!370381)))

(declare-fun call!370384 () List!60774)

(declare-fun bm!370378 () Bool)

(assert (=> bm!370378 (= call!370386 (derivationStepZipperDown!273 (ite c!904202 (regOne!30163 (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292))))))) (ite c!904199 (regTwo!30162 (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292))))))) (ite c!904201 (regOne!30162 (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292))))))) (reg!15154 (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292)))))))))) (ite (or c!904202 c!904199) (ite (or c!903751 c!903748) lt!2145585 (Context!8419 call!370090)) (Context!8419 call!370384)) (h!67099 s!2326)))))

(declare-fun bm!370379 () Bool)

(assert (=> bm!370379 (= call!370384 call!370383)))

(declare-fun bm!370380 () Bool)

(assert (=> bm!370380 (= call!370381 call!370382)))

(declare-fun bm!370381 () Bool)

(assert (=> bm!370381 (= call!370385 (derivationStepZipperDown!273 (ite c!904202 (regTwo!30163 (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292))))))) (regOne!30162 (ite c!903751 (regOne!30163 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903748 (regTwo!30162 (regTwo!30163 (regOne!30162 r!7292))) (ite c!903750 (regOne!30162 (regTwo!30163 (regOne!30162 r!7292))) (reg!15154 (regTwo!30163 (regOne!30162 r!7292)))))))) (ite c!904202 (ite (or c!903751 c!903748) lt!2145585 (Context!8419 call!370090)) (Context!8419 call!370383)) (h!67099 s!2326)))))

(assert (= (and d!1687452 c!904203) b!5233929))

(assert (= (and d!1687452 (not c!904203)) b!5233932))

(assert (= (and b!5233932 c!904202) b!5233933))

(assert (= (and b!5233932 (not c!904202)) b!5233928))

(assert (= (and b!5233928 res!2221535) b!5233931))

(assert (= (and b!5233928 c!904199) b!5233930))

(assert (= (and b!5233928 (not c!904199)) b!5233925))

(assert (= (and b!5233925 c!904201) b!5233926))

(assert (= (and b!5233925 (not c!904201)) b!5233927))

(assert (= (and b!5233927 c!904200) b!5233935))

(assert (= (and b!5233927 (not c!904200)) b!5233934))

(assert (= (or b!5233926 b!5233935) bm!370379))

(assert (= (or b!5233926 b!5233935) bm!370380))

(assert (= (or b!5233930 bm!370379) bm!370377))

(assert (= (or b!5233930 bm!370380) bm!370376))

(assert (= (or b!5233933 b!5233930) bm!370381))

(assert (= (or b!5233933 bm!370376) bm!370378))

(declare-fun m!6279610 () Bool)

(assert (=> b!5233929 m!6279610))

(declare-fun m!6279612 () Bool)

(assert (=> b!5233931 m!6279612))

(declare-fun m!6279614 () Bool)

(assert (=> bm!370381 m!6279614))

(declare-fun m!6279616 () Bool)

(assert (=> bm!370377 m!6279616))

(declare-fun m!6279618 () Bool)

(assert (=> bm!370378 m!6279618))

(assert (=> bm!370084 d!1687452))

(assert (=> d!1686694 d!1687268))

(assert (=> d!1686694 d!1686798))

(declare-fun d!1687454 () Bool)

(assert (=> d!1687454 (= (isEmptyLang!791 lt!2145688) ((_ is EmptyLang!14825) lt!2145688))))

(assert (=> b!5232558 d!1687454))

(declare-fun b!5233936 () Bool)

(declare-fun e!3257028 () (InoxSet Context!8418))

(assert (=> b!5233936 (= e!3257028 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233937 () Bool)

(declare-fun call!370387 () (InoxSet Context!8418))

(assert (=> b!5233937 (= e!3257028 call!370387)))

(declare-fun e!3257029 () (InoxSet Context!8418))

(declare-fun b!5233938 () Bool)

(assert (=> b!5233938 (= e!3257029 ((_ map or) call!370387 (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145593)))))) (h!67099 s!2326))))))

(declare-fun b!5233939 () Bool)

(assert (=> b!5233939 (= e!3257029 e!3257028)))

(declare-fun c!904205 () Bool)

(assert (=> b!5233939 (= c!904205 ((_ is Cons!60650) (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145593))))))))

(declare-fun b!5233940 () Bool)

(declare-fun e!3257030 () Bool)

(assert (=> b!5233940 (= e!3257030 (nullable!4994 (h!67098 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145593)))))))))

(declare-fun d!1687456 () Bool)

(declare-fun c!904204 () Bool)

(assert (=> d!1687456 (= c!904204 e!3257030)))

(declare-fun res!2221536 () Bool)

(assert (=> d!1687456 (=> (not res!2221536) (not e!3257030))))

(assert (=> d!1687456 (= res!2221536 ((_ is Cons!60650) (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145593))))))))

(assert (=> d!1687456 (= (derivationStepZipperUp!197 (Context!8419 (t!373953 (exprs!4709 lt!2145593))) (h!67099 s!2326)) e!3257029)))

(declare-fun bm!370382 () Bool)

(assert (=> bm!370382 (= call!370387 (derivationStepZipperDown!273 (h!67098 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145593))))) (Context!8419 (t!373953 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 lt!2145593)))))) (h!67099 s!2326)))))

(assert (= (and d!1687456 res!2221536) b!5233940))

(assert (= (and d!1687456 c!904204) b!5233938))

(assert (= (and d!1687456 (not c!904204)) b!5233939))

(assert (= (and b!5233939 c!904205) b!5233937))

(assert (= (and b!5233939 (not c!904205)) b!5233936))

(assert (= (or b!5233938 b!5233937) bm!370382))

(declare-fun m!6279620 () Bool)

(assert (=> b!5233938 m!6279620))

(declare-fun m!6279622 () Bool)

(assert (=> b!5233940 m!6279622))

(declare-fun m!6279624 () Bool)

(assert (=> bm!370382 m!6279624))

(assert (=> b!5232575 d!1687456))

(declare-fun bs!1215153 () Bool)

(declare-fun d!1687458 () Bool)

(assert (= bs!1215153 (and d!1687458 d!1686716)))

(declare-fun lambda!263002 () Int)

(assert (=> bs!1215153 (= lambda!263002 lambda!262894)))

(declare-fun bs!1215154 () Bool)

(assert (= bs!1215154 (and d!1687458 d!1687254)))

(assert (=> bs!1215154 (= lambda!263002 lambda!262978)))

(declare-fun bs!1215155 () Bool)

(assert (= bs!1215155 (and d!1687458 b!5231825)))

(assert (=> bs!1215155 (= lambda!263002 lambda!262855)))

(declare-fun bs!1215156 () Bool)

(assert (= bs!1215156 (and d!1687458 d!1687170)))

(assert (=> bs!1215156 (= lambda!263002 lambda!262962)))

(declare-fun bs!1215157 () Bool)

(assert (= bs!1215157 (and d!1687458 d!1686718)))

(assert (=> bs!1215157 (= lambda!263002 lambda!262897)))

(declare-fun bs!1215158 () Bool)

(assert (= bs!1215158 (and d!1687458 d!1687228)))

(assert (=> bs!1215158 (= lambda!263002 lambda!262974)))

(declare-fun bs!1215159 () Bool)

(assert (= bs!1215159 (and d!1687458 d!1687186)))

(assert (=> bs!1215159 (= lambda!263002 lambda!262964)))

(declare-fun bs!1215160 () Bool)

(assert (= bs!1215160 (and d!1687458 d!1687264)))

(assert (=> bs!1215160 (= lambda!263002 lambda!262979)))

(declare-fun bs!1215161 () Bool)

(assert (= bs!1215161 (and d!1687458 d!1686748)))

(assert (=> bs!1215161 (= lambda!263002 lambda!262903)))

(declare-fun bs!1215162 () Bool)

(assert (= bs!1215162 (and d!1687458 d!1686746)))

(assert (=> bs!1215162 (= lambda!263002 lambda!262900)))

(declare-fun bs!1215163 () Bool)

(assert (= bs!1215163 (and d!1687458 d!1686754)))

(assert (=> bs!1215163 (= lambda!263002 lambda!262904)))

(declare-fun bs!1215164 () Bool)

(assert (= bs!1215164 (and d!1687458 d!1686658)))

(assert (=> bs!1215164 (= lambda!263002 lambda!262886)))

(assert (=> d!1687458 (= (inv!80309 setElem!33335) (forall!14255 (exprs!4709 setElem!33335) lambda!263002))))

(declare-fun bs!1215165 () Bool)

(assert (= bs!1215165 d!1687458))

(declare-fun m!6279626 () Bool)

(assert (=> bs!1215165 m!6279626))

(assert (=> setNonEmpty!33335 d!1687458))

(declare-fun bm!370383 () Bool)

(declare-fun call!370390 () Bool)

(declare-fun c!904207 () Bool)

(assert (=> bm!370383 (= call!370390 (validRegex!6561 (ite c!904207 (regTwo!30163 lt!2145680) (regTwo!30162 lt!2145680))))))

(declare-fun b!5233941 () Bool)

(declare-fun e!3257032 () Bool)

(declare-fun e!3257031 () Bool)

(assert (=> b!5233941 (= e!3257032 e!3257031)))

(declare-fun c!904206 () Bool)

(assert (=> b!5233941 (= c!904206 ((_ is Star!14825) lt!2145680))))

(declare-fun b!5233942 () Bool)

(declare-fun e!3257034 () Bool)

(assert (=> b!5233942 (= e!3257034 call!370390)))

(declare-fun b!5233943 () Bool)

(declare-fun e!3257037 () Bool)

(assert (=> b!5233943 (= e!3257037 call!370390)))

(declare-fun b!5233944 () Bool)

(declare-fun e!3257036 () Bool)

(assert (=> b!5233944 (= e!3257031 e!3257036)))

(assert (=> b!5233944 (= c!904207 ((_ is Union!14825) lt!2145680))))

(declare-fun bm!370384 () Bool)

(declare-fun call!370389 () Bool)

(assert (=> bm!370384 (= call!370389 (validRegex!6561 (ite c!904206 (reg!15154 lt!2145680) (ite c!904207 (regOne!30163 lt!2145680) (regOne!30162 lt!2145680)))))))

(declare-fun b!5233945 () Bool)

(declare-fun e!3257033 () Bool)

(assert (=> b!5233945 (= e!3257033 call!370389)))

(declare-fun b!5233946 () Bool)

(declare-fun res!2221537 () Bool)

(declare-fun e!3257035 () Bool)

(assert (=> b!5233946 (=> res!2221537 e!3257035)))

(assert (=> b!5233946 (= res!2221537 (not ((_ is Concat!23670) lt!2145680)))))

(assert (=> b!5233946 (= e!3257036 e!3257035)))

(declare-fun b!5233947 () Bool)

(assert (=> b!5233947 (= e!3257031 e!3257033)))

(declare-fun res!2221540 () Bool)

(assert (=> b!5233947 (= res!2221540 (not (nullable!4994 (reg!15154 lt!2145680))))))

(assert (=> b!5233947 (=> (not res!2221540) (not e!3257033))))

(declare-fun b!5233948 () Bool)

(assert (=> b!5233948 (= e!3257035 e!3257037)))

(declare-fun res!2221538 () Bool)

(assert (=> b!5233948 (=> (not res!2221538) (not e!3257037))))

(declare-fun call!370388 () Bool)

(assert (=> b!5233948 (= res!2221538 call!370388)))

(declare-fun bm!370385 () Bool)

(assert (=> bm!370385 (= call!370388 call!370389)))

(declare-fun d!1687460 () Bool)

(declare-fun res!2221539 () Bool)

(assert (=> d!1687460 (=> res!2221539 e!3257032)))

(assert (=> d!1687460 (= res!2221539 ((_ is ElementMatch!14825) lt!2145680))))

(assert (=> d!1687460 (= (validRegex!6561 lt!2145680) e!3257032)))

(declare-fun b!5233949 () Bool)

(declare-fun res!2221541 () Bool)

(assert (=> b!5233949 (=> (not res!2221541) (not e!3257034))))

(assert (=> b!5233949 (= res!2221541 call!370388)))

(assert (=> b!5233949 (= e!3257036 e!3257034)))

(assert (= (and d!1687460 (not res!2221539)) b!5233941))

(assert (= (and b!5233941 c!904206) b!5233947))

(assert (= (and b!5233941 (not c!904206)) b!5233944))

(assert (= (and b!5233947 res!2221540) b!5233945))

(assert (= (and b!5233944 c!904207) b!5233949))

(assert (= (and b!5233944 (not c!904207)) b!5233946))

(assert (= (and b!5233949 res!2221541) b!5233942))

(assert (= (and b!5233946 (not res!2221537)) b!5233948))

(assert (= (and b!5233948 res!2221538) b!5233943))

(assert (= (or b!5233942 b!5233943) bm!370383))

(assert (= (or b!5233949 b!5233948) bm!370385))

(assert (= (or b!5233945 bm!370385) bm!370384))

(declare-fun m!6279628 () Bool)

(assert (=> bm!370383 m!6279628))

(declare-fun m!6279630 () Bool)

(assert (=> bm!370384 m!6279630))

(declare-fun m!6279632 () Bool)

(assert (=> b!5233947 m!6279632))

(assert (=> d!1686726 d!1687460))

(assert (=> d!1686726 d!1686746))

(assert (=> d!1686726 d!1686748))

(declare-fun bs!1215166 () Bool)

(declare-fun d!1687462 () Bool)

(assert (= bs!1215166 (and d!1687462 d!1687248)))

(declare-fun lambda!263003 () Int)

(assert (=> bs!1215166 (= lambda!263003 lambda!262977)))

(declare-fun bs!1215167 () Bool)

(assert (= bs!1215167 (and d!1687462 d!1687236)))

(assert (=> bs!1215167 (= lambda!263003 lambda!262975)))

(declare-fun bs!1215168 () Bool)

(assert (= bs!1215168 (and d!1687462 d!1687244)))

(assert (=> bs!1215168 (= lambda!263003 lambda!262976)))

(declare-fun bs!1215169 () Bool)

(assert (= bs!1215169 (and d!1687462 d!1687180)))

(assert (=> bs!1215169 (= lambda!263003 lambda!262963)))

(declare-fun bs!1215170 () Bool)

(assert (= bs!1215170 (and d!1687462 d!1687414)))

(assert (=> bs!1215170 (= lambda!263003 lambda!262999)))

(declare-fun bs!1215171 () Bool)

(assert (= bs!1215171 (and d!1687462 d!1687308)))

(assert (=> bs!1215171 (= lambda!263003 lambda!262985)))

(declare-fun bs!1215172 () Bool)

(assert (= bs!1215172 (and d!1687462 d!1687266)))

(assert (=> bs!1215172 (= lambda!263003 lambda!262980)))

(declare-fun bs!1215173 () Bool)

(assert (= bs!1215173 (and d!1687462 d!1687168)))

(assert (=> bs!1215173 (= lambda!263003 lambda!262961)))

(declare-fun bs!1215174 () Bool)

(assert (= bs!1215174 (and d!1687462 d!1687282)))

(assert (=> bs!1215174 (= lambda!263003 lambda!262982)))

(declare-fun bs!1215175 () Bool)

(assert (= bs!1215175 (and d!1687462 d!1687274)))

(assert (=> bs!1215175 (= lambda!263003 lambda!262981)))

(assert (=> d!1687462 (= (nullableZipper!1246 lt!2145576) (exists!1979 lt!2145576 lambda!263003))))

(declare-fun bs!1215176 () Bool)

(assert (= bs!1215176 d!1687462))

(declare-fun m!6279634 () Bool)

(assert (=> bs!1215176 m!6279634))

(assert (=> b!5232490 d!1687462))

(declare-fun d!1687464 () Bool)

(assert (=> d!1687464 (= (nullable!4994 r!7292) (nullableFct!1398 r!7292))))

(declare-fun bs!1215177 () Bool)

(assert (= bs!1215177 d!1687464))

(declare-fun m!6279636 () Bool)

(assert (=> bs!1215177 m!6279636))

(assert (=> b!5232441 d!1687464))

(declare-fun b!5233950 () Bool)

(declare-fun e!3257042 () (InoxSet Context!8418))

(declare-fun e!3257043 () (InoxSet Context!8418))

(assert (=> b!5233950 (= e!3257042 e!3257043)))

(declare-fun c!904210 () Bool)

(assert (=> b!5233950 (= c!904210 ((_ is Concat!23670) (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))))))

(declare-fun b!5233951 () Bool)

(declare-fun call!370391 () (InoxSet Context!8418))

(assert (=> b!5233951 (= e!3257043 call!370391)))

(declare-fun bm!370386 () Bool)

(declare-fun call!370392 () (InoxSet Context!8418))

(declare-fun call!370396 () (InoxSet Context!8418))

(assert (=> bm!370386 (= call!370392 call!370396)))

(declare-fun d!1687466 () Bool)

(declare-fun c!904212 () Bool)

(assert (=> d!1687466 (= c!904212 (and ((_ is ElementMatch!14825) (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) (= (c!903601 (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) (h!67099 s!2326))))))

(declare-fun e!3257038 () (InoxSet Context!8418))

(assert (=> d!1687466 (= (derivationStepZipperDown!273 (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))))) (Context!8419 (t!373953 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) (h!67099 s!2326)) e!3257038)))

(declare-fun b!5233952 () Bool)

(declare-fun c!904209 () Bool)

(assert (=> b!5233952 (= c!904209 ((_ is Star!14825) (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))))))

(declare-fun e!3257040 () (InoxSet Context!8418))

(assert (=> b!5233952 (= e!3257043 e!3257040)))

(declare-fun b!5233953 () Bool)

(declare-fun c!904208 () Bool)

(declare-fun e!3257041 () Bool)

(assert (=> b!5233953 (= c!904208 e!3257041)))

(declare-fun res!2221542 () Bool)

(assert (=> b!5233953 (=> (not res!2221542) (not e!3257041))))

(assert (=> b!5233953 (= res!2221542 ((_ is Concat!23670) (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))))))

(declare-fun e!3257039 () (InoxSet Context!8418))

(assert (=> b!5233953 (= e!3257039 e!3257042)))

(declare-fun b!5233954 () Bool)

(assert (=> b!5233954 (= e!3257038 (store ((as const (Array Context!8418 Bool)) false) (Context!8419 (t!373953 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) true))))

(declare-fun b!5233955 () Bool)

(declare-fun call!370395 () (InoxSet Context!8418))

(assert (=> b!5233955 (= e!3257042 ((_ map or) call!370395 call!370392))))

(declare-fun call!370393 () List!60774)

(declare-fun bm!370387 () Bool)

(assert (=> bm!370387 (= call!370393 ($colon$colon!1296 (exprs!4709 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))))))) (ite (or c!904208 c!904210) (regTwo!30162 (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))))))))))

(declare-fun b!5233956 () Bool)

(assert (=> b!5233956 (= e!3257041 (nullable!4994 (regOne!30162 (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))))))))))

(declare-fun b!5233957 () Bool)

(assert (=> b!5233957 (= e!3257038 e!3257039)))

(declare-fun c!904211 () Bool)

(assert (=> b!5233957 (= c!904211 ((_ is Union!14825) (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))))))

(declare-fun b!5233958 () Bool)

(assert (=> b!5233958 (= e!3257039 ((_ map or) call!370396 call!370395))))

(declare-fun b!5233959 () Bool)

(assert (=> b!5233959 (= e!3257040 ((as const (Array Context!8418 Bool)) false))))

(declare-fun b!5233960 () Bool)

(assert (=> b!5233960 (= e!3257040 call!370391)))

(declare-fun call!370394 () List!60774)

(declare-fun bm!370388 () Bool)

(assert (=> bm!370388 (= call!370396 (derivationStepZipperDown!273 (ite c!904211 (regOne!30163 (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) (ite c!904208 (regTwo!30162 (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) (ite c!904210 (regOne!30162 (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) (reg!15154 (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))))))))) (ite (or c!904211 c!904208) (Context!8419 (t!373953 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) (Context!8419 call!370394)) (h!67099 s!2326)))))

(declare-fun bm!370389 () Bool)

(assert (=> bm!370389 (= call!370394 call!370393)))

(declare-fun bm!370390 () Bool)

(assert (=> bm!370390 (= call!370391 call!370392)))

(declare-fun bm!370391 () Bool)

(assert (=> bm!370391 (= call!370395 (derivationStepZipperDown!273 (ite c!904211 (regTwo!30163 (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) (regOne!30162 (h!67098 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343))))))))) (ite c!904211 (Context!8419 (t!373953 (exprs!4709 (Context!8419 (Cons!60650 (h!67098 (exprs!4709 (h!67100 zl!343))) (t!373953 (exprs!4709 (h!67100 zl!343)))))))) (Context!8419 call!370393)) (h!67099 s!2326)))))

(assert (= (and d!1687466 c!904212) b!5233954))

(assert (= (and d!1687466 (not c!904212)) b!5233957))

(assert (= (and b!5233957 c!904211) b!5233958))

(assert (= (and b!5233957 (not c!904211)) b!5233953))

(assert (= (and b!5233953 res!2221542) b!5233956))

(assert (= (and b!5233953 c!904208) b!5233955))

(assert (= (and b!5233953 (not c!904208)) b!5233950))

(assert (= (and b!5233950 c!904210) b!5233951))

(assert (= (and b!5233950 (not c!904210)) b!5233952))

(assert (= (and b!5233952 c!904209) b!5233960))

(assert (= (and b!5233952 (not c!904209)) b!5233959))

(assert (= (or b!5233951 b!5233960) bm!370389))

(assert (= (or b!5233951 b!5233960) bm!370390))

(assert (= (or b!5233955 bm!370389) bm!370387))

(assert (= (or b!5233955 bm!370390) bm!370386))

(assert (= (or b!5233958 b!5233955) bm!370391))

(assert (= (or b!5233958 bm!370386) bm!370388))

(declare-fun m!6279638 () Bool)

(assert (=> b!5233954 m!6279638))

(declare-fun m!6279640 () Bool)

(assert (=> b!5233956 m!6279640))

(declare-fun m!6279642 () Bool)

(assert (=> bm!370391 m!6279642))

(declare-fun m!6279644 () Bool)

(assert (=> bm!370387 m!6279644))

(declare-fun m!6279646 () Bool)

(assert (=> bm!370388 m!6279646))

(assert (=> bm!370113 d!1687466))

(declare-fun bm!370392 () Bool)

(declare-fun call!370397 () Bool)

(declare-fun c!904213 () Bool)

(assert (=> bm!370392 (= call!370397 (nullable!4994 (ite c!904213 (regTwo!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regTwo!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))))))))

(declare-fun bm!370393 () Bool)

(declare-fun call!370398 () Bool)

(assert (=> bm!370393 (= call!370398 (nullable!4994 (ite c!904213 (regOne!30163 (h!67098 (exprs!4709 (h!67100 zl!343)))) (regOne!30162 (h!67098 (exprs!4709 (h!67100 zl!343)))))))))

(declare-fun b!5233961 () Bool)

(declare-fun e!3257046 () Bool)

(declare-fun e!3257044 () Bool)

(assert (=> b!5233961 (= e!3257046 e!3257044)))

(declare-fun res!2221544 () Bool)

(assert (=> b!5233961 (= res!2221544 call!370398)))

(assert (=> b!5233961 (=> (not res!2221544) (not e!3257044))))

(declare-fun b!5233962 () Bool)

(declare-fun e!3257049 () Bool)

(declare-fun e!3257045 () Bool)

(assert (=> b!5233962 (= e!3257049 e!3257045)))

(declare-fun res!2221547 () Bool)

(assert (=> b!5233962 (=> (not res!2221547) (not e!3257045))))

(assert (=> b!5233962 (= res!2221547 (and (not ((_ is EmptyLang!14825) (h!67098 (exprs!4709 (h!67100 zl!343))))) (not ((_ is ElementMatch!14825) (h!67098 (exprs!4709 (h!67100 zl!343)))))))))

(declare-fun b!5233963 () Bool)

(declare-fun e!3257048 () Bool)

(assert (=> b!5233963 (= e!3257045 e!3257048)))

(declare-fun res!2221546 () Bool)

(assert (=> b!5233963 (=> res!2221546 e!3257048)))

(assert (=> b!5233963 (= res!2221546 ((_ is Star!14825) (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5233964 () Bool)

(assert (=> b!5233964 (= e!3257048 e!3257046)))

(assert (=> b!5233964 (= c!904213 ((_ is Union!14825) (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun b!5233965 () Bool)

(assert (=> b!5233965 (= e!3257044 call!370397)))

(declare-fun b!5233966 () Bool)

(declare-fun e!3257047 () Bool)

(assert (=> b!5233966 (= e!3257047 call!370397)))

(declare-fun d!1687468 () Bool)

(declare-fun res!2221545 () Bool)

(assert (=> d!1687468 (=> res!2221545 e!3257049)))

(assert (=> d!1687468 (= res!2221545 ((_ is EmptyExpr!14825) (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(assert (=> d!1687468 (= (nullableFct!1398 (h!67098 (exprs!4709 (h!67100 zl!343)))) e!3257049)))

(declare-fun b!5233967 () Bool)

(assert (=> b!5233967 (= e!3257046 e!3257047)))

(declare-fun res!2221543 () Bool)

(assert (=> b!5233967 (= res!2221543 call!370398)))

(assert (=> b!5233967 (=> res!2221543 e!3257047)))

(assert (= (and d!1687468 (not res!2221545)) b!5233962))

(assert (= (and b!5233962 res!2221547) b!5233963))

(assert (= (and b!5233963 (not res!2221546)) b!5233964))

(assert (= (and b!5233964 c!904213) b!5233967))

(assert (= (and b!5233964 (not c!904213)) b!5233961))

(assert (= (and b!5233967 (not res!2221543)) b!5233966))

(assert (= (and b!5233961 res!2221544) b!5233965))

(assert (= (or b!5233966 b!5233965) bm!370392))

(assert (= (or b!5233967 b!5233961) bm!370393))

(declare-fun m!6279648 () Bool)

(assert (=> bm!370392 m!6279648))

(declare-fun m!6279650 () Bool)

(assert (=> bm!370393 m!6279650))

(assert (=> d!1686736 d!1687468))

(assert (=> b!5232476 d!1687210))

(declare-fun b!5233968 () Bool)

(declare-fun e!3257050 () Bool)

(assert (=> b!5233968 (= e!3257050 tp_is_empty!38903)))

(declare-fun b!5233971 () Bool)

(declare-fun tp!1466342 () Bool)

(declare-fun tp!1466346 () Bool)

(assert (=> b!5233971 (= e!3257050 (and tp!1466342 tp!1466346))))

(assert (=> b!5232705 (= tp!1466154 e!3257050)))

(declare-fun b!5233970 () Bool)

(declare-fun tp!1466343 () Bool)

(assert (=> b!5233970 (= e!3257050 tp!1466343)))

(declare-fun b!5233969 () Bool)

(declare-fun tp!1466344 () Bool)

(declare-fun tp!1466345 () Bool)

(assert (=> b!5233969 (= e!3257050 (and tp!1466344 tp!1466345))))

(assert (= (and b!5232705 ((_ is ElementMatch!14825) (regOne!30162 (reg!15154 r!7292)))) b!5233968))

(assert (= (and b!5232705 ((_ is Concat!23670) (regOne!30162 (reg!15154 r!7292)))) b!5233969))

(assert (= (and b!5232705 ((_ is Star!14825) (regOne!30162 (reg!15154 r!7292)))) b!5233970))

(assert (= (and b!5232705 ((_ is Union!14825) (regOne!30162 (reg!15154 r!7292)))) b!5233971))

(declare-fun b!5233972 () Bool)

(declare-fun e!3257051 () Bool)

(assert (=> b!5233972 (= e!3257051 tp_is_empty!38903)))

(declare-fun b!5233975 () Bool)

(declare-fun tp!1466347 () Bool)

(declare-fun tp!1466351 () Bool)

(assert (=> b!5233975 (= e!3257051 (and tp!1466347 tp!1466351))))

(assert (=> b!5232705 (= tp!1466155 e!3257051)))

(declare-fun b!5233974 () Bool)

(declare-fun tp!1466348 () Bool)

(assert (=> b!5233974 (= e!3257051 tp!1466348)))

(declare-fun b!5233973 () Bool)

(declare-fun tp!1466349 () Bool)

(declare-fun tp!1466350 () Bool)

(assert (=> b!5233973 (= e!3257051 (and tp!1466349 tp!1466350))))

(assert (= (and b!5232705 ((_ is ElementMatch!14825) (regTwo!30162 (reg!15154 r!7292)))) b!5233972))

(assert (= (and b!5232705 ((_ is Concat!23670) (regTwo!30162 (reg!15154 r!7292)))) b!5233973))

(assert (= (and b!5232705 ((_ is Star!14825) (regTwo!30162 (reg!15154 r!7292)))) b!5233974))

(assert (= (and b!5232705 ((_ is Union!14825) (regTwo!30162 (reg!15154 r!7292)))) b!5233975))

(declare-fun b!5233976 () Bool)

(declare-fun e!3257052 () Bool)

(assert (=> b!5233976 (= e!3257052 tp_is_empty!38903)))

(declare-fun b!5233979 () Bool)

(declare-fun tp!1466352 () Bool)

(declare-fun tp!1466356 () Bool)

(assert (=> b!5233979 (= e!3257052 (and tp!1466352 tp!1466356))))

(assert (=> b!5232713 (= tp!1466160 e!3257052)))

(declare-fun b!5233978 () Bool)

(declare-fun tp!1466353 () Bool)

(assert (=> b!5233978 (= e!3257052 tp!1466353)))

(declare-fun b!5233977 () Bool)

(declare-fun tp!1466354 () Bool)

(declare-fun tp!1466355 () Bool)

(assert (=> b!5233977 (= e!3257052 (and tp!1466354 tp!1466355))))

(assert (= (and b!5232713 ((_ is ElementMatch!14825) (h!67098 (exprs!4709 setElem!33329)))) b!5233976))

(assert (= (and b!5232713 ((_ is Concat!23670) (h!67098 (exprs!4709 setElem!33329)))) b!5233977))

(assert (= (and b!5232713 ((_ is Star!14825) (h!67098 (exprs!4709 setElem!33329)))) b!5233978))

(assert (= (and b!5232713 ((_ is Union!14825) (h!67098 (exprs!4709 setElem!33329)))) b!5233979))

(declare-fun b!5233980 () Bool)

(declare-fun e!3257053 () Bool)

(declare-fun tp!1466357 () Bool)

(declare-fun tp!1466358 () Bool)

(assert (=> b!5233980 (= e!3257053 (and tp!1466357 tp!1466358))))

(assert (=> b!5232713 (= tp!1466161 e!3257053)))

(assert (= (and b!5232713 ((_ is Cons!60650) (t!373953 (exprs!4709 setElem!33329)))) b!5233980))

(declare-fun b!5233981 () Bool)

(declare-fun e!3257054 () Bool)

(declare-fun tp!1466359 () Bool)

(assert (=> b!5233981 (= e!3257054 (and tp_is_empty!38903 tp!1466359))))

(assert (=> b!5232712 (= tp!1466159 e!3257054)))

(assert (= (and b!5232712 ((_ is Cons!60651) (t!373954 (t!373954 s!2326)))) b!5233981))

(declare-fun b!5233982 () Bool)

(declare-fun e!3257055 () Bool)

(assert (=> b!5233982 (= e!3257055 tp_is_empty!38903)))

(declare-fun b!5233985 () Bool)

(declare-fun tp!1466360 () Bool)

(declare-fun tp!1466364 () Bool)

(assert (=> b!5233985 (= e!3257055 (and tp!1466360 tp!1466364))))

(assert (=> b!5232695 (= tp!1466137 e!3257055)))

(declare-fun b!5233984 () Bool)

(declare-fun tp!1466361 () Bool)

(assert (=> b!5233984 (= e!3257055 tp!1466361)))

(declare-fun b!5233983 () Bool)

(declare-fun tp!1466362 () Bool)

(declare-fun tp!1466363 () Bool)

(assert (=> b!5233983 (= e!3257055 (and tp!1466362 tp!1466363))))

(assert (= (and b!5232695 ((_ is ElementMatch!14825) (regOne!30163 (regTwo!30162 r!7292)))) b!5233982))

(assert (= (and b!5232695 ((_ is Concat!23670) (regOne!30163 (regTwo!30162 r!7292)))) b!5233983))

(assert (= (and b!5232695 ((_ is Star!14825) (regOne!30163 (regTwo!30162 r!7292)))) b!5233984))

(assert (= (and b!5232695 ((_ is Union!14825) (regOne!30163 (regTwo!30162 r!7292)))) b!5233985))

(declare-fun b!5233986 () Bool)

(declare-fun e!3257056 () Bool)

(assert (=> b!5233986 (= e!3257056 tp_is_empty!38903)))

(declare-fun b!5233989 () Bool)

(declare-fun tp!1466365 () Bool)

(declare-fun tp!1466369 () Bool)

(assert (=> b!5233989 (= e!3257056 (and tp!1466365 tp!1466369))))

(assert (=> b!5232695 (= tp!1466141 e!3257056)))

(declare-fun b!5233988 () Bool)

(declare-fun tp!1466366 () Bool)

(assert (=> b!5233988 (= e!3257056 tp!1466366)))

(declare-fun b!5233987 () Bool)

(declare-fun tp!1466367 () Bool)

(declare-fun tp!1466368 () Bool)

(assert (=> b!5233987 (= e!3257056 (and tp!1466367 tp!1466368))))

(assert (= (and b!5232695 ((_ is ElementMatch!14825) (regTwo!30163 (regTwo!30162 r!7292)))) b!5233986))

(assert (= (and b!5232695 ((_ is Concat!23670) (regTwo!30163 (regTwo!30162 r!7292)))) b!5233987))

(assert (= (and b!5232695 ((_ is Star!14825) (regTwo!30163 (regTwo!30162 r!7292)))) b!5233988))

(assert (= (and b!5232695 ((_ is Union!14825) (regTwo!30163 (regTwo!30162 r!7292)))) b!5233989))

(declare-fun b!5233990 () Bool)

(declare-fun e!3257057 () Bool)

(assert (=> b!5233990 (= e!3257057 tp_is_empty!38903)))

(declare-fun b!5233993 () Bool)

(declare-fun tp!1466370 () Bool)

(declare-fun tp!1466374 () Bool)

(assert (=> b!5233993 (= e!3257057 (and tp!1466370 tp!1466374))))

(assert (=> b!5232694 (= tp!1466138 e!3257057)))

(declare-fun b!5233992 () Bool)

(declare-fun tp!1466371 () Bool)

(assert (=> b!5233992 (= e!3257057 tp!1466371)))

(declare-fun b!5233991 () Bool)

(declare-fun tp!1466372 () Bool)

(declare-fun tp!1466373 () Bool)

(assert (=> b!5233991 (= e!3257057 (and tp!1466372 tp!1466373))))

(assert (= (and b!5232694 ((_ is ElementMatch!14825) (reg!15154 (regTwo!30162 r!7292)))) b!5233990))

(assert (= (and b!5232694 ((_ is Concat!23670) (reg!15154 (regTwo!30162 r!7292)))) b!5233991))

(assert (= (and b!5232694 ((_ is Star!14825) (reg!15154 (regTwo!30162 r!7292)))) b!5233992))

(assert (= (and b!5232694 ((_ is Union!14825) (reg!15154 (regTwo!30162 r!7292)))) b!5233993))

(declare-fun b!5233994 () Bool)

(declare-fun e!3257058 () Bool)

(assert (=> b!5233994 (= e!3257058 tp_is_empty!38903)))

(declare-fun b!5233997 () Bool)

(declare-fun tp!1466375 () Bool)

(declare-fun tp!1466379 () Bool)

(assert (=> b!5233997 (= e!3257058 (and tp!1466375 tp!1466379))))

(assert (=> b!5232703 (= tp!1466147 e!3257058)))

(declare-fun b!5233996 () Bool)

(declare-fun tp!1466376 () Bool)

(assert (=> b!5233996 (= e!3257058 tp!1466376)))

(declare-fun b!5233995 () Bool)

(declare-fun tp!1466377 () Bool)

(declare-fun tp!1466378 () Bool)

(assert (=> b!5233995 (= e!3257058 (and tp!1466377 tp!1466378))))

(assert (= (and b!5232703 ((_ is ElementMatch!14825) (regOne!30163 (regTwo!30163 r!7292)))) b!5233994))

(assert (= (and b!5232703 ((_ is Concat!23670) (regOne!30163 (regTwo!30163 r!7292)))) b!5233995))

(assert (= (and b!5232703 ((_ is Star!14825) (regOne!30163 (regTwo!30163 r!7292)))) b!5233996))

(assert (= (and b!5232703 ((_ is Union!14825) (regOne!30163 (regTwo!30163 r!7292)))) b!5233997))

(declare-fun b!5233998 () Bool)

(declare-fun e!3257059 () Bool)

(assert (=> b!5233998 (= e!3257059 tp_is_empty!38903)))

(declare-fun b!5234001 () Bool)

(declare-fun tp!1466380 () Bool)

(declare-fun tp!1466384 () Bool)

(assert (=> b!5234001 (= e!3257059 (and tp!1466380 tp!1466384))))

(assert (=> b!5232703 (= tp!1466151 e!3257059)))

(declare-fun b!5234000 () Bool)

(declare-fun tp!1466381 () Bool)

(assert (=> b!5234000 (= e!3257059 tp!1466381)))

(declare-fun b!5233999 () Bool)

(declare-fun tp!1466382 () Bool)

(declare-fun tp!1466383 () Bool)

(assert (=> b!5233999 (= e!3257059 (and tp!1466382 tp!1466383))))

(assert (= (and b!5232703 ((_ is ElementMatch!14825) (regTwo!30163 (regTwo!30163 r!7292)))) b!5233998))

(assert (= (and b!5232703 ((_ is Concat!23670) (regTwo!30163 (regTwo!30163 r!7292)))) b!5233999))

(assert (= (and b!5232703 ((_ is Star!14825) (regTwo!30163 (regTwo!30163 r!7292)))) b!5234000))

(assert (= (and b!5232703 ((_ is Union!14825) (regTwo!30163 (regTwo!30163 r!7292)))) b!5234001))

(declare-fun b!5234002 () Bool)

(declare-fun e!3257060 () Bool)

(assert (=> b!5234002 (= e!3257060 tp_is_empty!38903)))

(declare-fun b!5234005 () Bool)

(declare-fun tp!1466385 () Bool)

(declare-fun tp!1466389 () Bool)

(assert (=> b!5234005 (= e!3257060 (and tp!1466385 tp!1466389))))

(assert (=> b!5232693 (= tp!1466139 e!3257060)))

(declare-fun b!5234004 () Bool)

(declare-fun tp!1466386 () Bool)

(assert (=> b!5234004 (= e!3257060 tp!1466386)))

(declare-fun b!5234003 () Bool)

(declare-fun tp!1466387 () Bool)

(declare-fun tp!1466388 () Bool)

(assert (=> b!5234003 (= e!3257060 (and tp!1466387 tp!1466388))))

(assert (= (and b!5232693 ((_ is ElementMatch!14825) (regOne!30162 (regTwo!30162 r!7292)))) b!5234002))

(assert (= (and b!5232693 ((_ is Concat!23670) (regOne!30162 (regTwo!30162 r!7292)))) b!5234003))

(assert (= (and b!5232693 ((_ is Star!14825) (regOne!30162 (regTwo!30162 r!7292)))) b!5234004))

(assert (= (and b!5232693 ((_ is Union!14825) (regOne!30162 (regTwo!30162 r!7292)))) b!5234005))

(declare-fun b!5234006 () Bool)

(declare-fun e!3257061 () Bool)

(assert (=> b!5234006 (= e!3257061 tp_is_empty!38903)))

(declare-fun b!5234009 () Bool)

(declare-fun tp!1466390 () Bool)

(declare-fun tp!1466394 () Bool)

(assert (=> b!5234009 (= e!3257061 (and tp!1466390 tp!1466394))))

(assert (=> b!5232693 (= tp!1466140 e!3257061)))

(declare-fun b!5234008 () Bool)

(declare-fun tp!1466391 () Bool)

(assert (=> b!5234008 (= e!3257061 tp!1466391)))

(declare-fun b!5234007 () Bool)

(declare-fun tp!1466392 () Bool)

(declare-fun tp!1466393 () Bool)

(assert (=> b!5234007 (= e!3257061 (and tp!1466392 tp!1466393))))

(assert (= (and b!5232693 ((_ is ElementMatch!14825) (regTwo!30162 (regTwo!30162 r!7292)))) b!5234006))

(assert (= (and b!5232693 ((_ is Concat!23670) (regTwo!30162 (regTwo!30162 r!7292)))) b!5234007))

(assert (= (and b!5232693 ((_ is Star!14825) (regTwo!30162 (regTwo!30162 r!7292)))) b!5234008))

(assert (= (and b!5232693 ((_ is Union!14825) (regTwo!30162 (regTwo!30162 r!7292)))) b!5234009))

(declare-fun b!5234010 () Bool)

(declare-fun e!3257062 () Bool)

(assert (=> b!5234010 (= e!3257062 tp_is_empty!38903)))

(declare-fun b!5234013 () Bool)

(declare-fun tp!1466395 () Bool)

(declare-fun tp!1466399 () Bool)

(assert (=> b!5234013 (= e!3257062 (and tp!1466395 tp!1466399))))

(assert (=> b!5232702 (= tp!1466148 e!3257062)))

(declare-fun b!5234012 () Bool)

(declare-fun tp!1466396 () Bool)

(assert (=> b!5234012 (= e!3257062 tp!1466396)))

(declare-fun b!5234011 () Bool)

(declare-fun tp!1466397 () Bool)

(declare-fun tp!1466398 () Bool)

(assert (=> b!5234011 (= e!3257062 (and tp!1466397 tp!1466398))))

(assert (= (and b!5232702 ((_ is ElementMatch!14825) (reg!15154 (regTwo!30163 r!7292)))) b!5234010))

(assert (= (and b!5232702 ((_ is Concat!23670) (reg!15154 (regTwo!30163 r!7292)))) b!5234011))

(assert (= (and b!5232702 ((_ is Star!14825) (reg!15154 (regTwo!30163 r!7292)))) b!5234012))

(assert (= (and b!5232702 ((_ is Union!14825) (reg!15154 (regTwo!30163 r!7292)))) b!5234013))

(declare-fun b!5234014 () Bool)

(declare-fun e!3257063 () Bool)

(assert (=> b!5234014 (= e!3257063 tp_is_empty!38903)))

(declare-fun b!5234017 () Bool)

(declare-fun tp!1466400 () Bool)

(declare-fun tp!1466404 () Bool)

(assert (=> b!5234017 (= e!3257063 (and tp!1466400 tp!1466404))))

(assert (=> b!5232664 (= tp!1466108 e!3257063)))

(declare-fun b!5234016 () Bool)

(declare-fun tp!1466401 () Bool)

(assert (=> b!5234016 (= e!3257063 tp!1466401)))

(declare-fun b!5234015 () Bool)

(declare-fun tp!1466402 () Bool)

(declare-fun tp!1466403 () Bool)

(assert (=> b!5234015 (= e!3257063 (and tp!1466402 tp!1466403))))

(assert (= (and b!5232664 ((_ is ElementMatch!14825) (h!67098 (exprs!4709 (h!67100 zl!343))))) b!5234014))

(assert (= (and b!5232664 ((_ is Concat!23670) (h!67098 (exprs!4709 (h!67100 zl!343))))) b!5234015))

(assert (= (and b!5232664 ((_ is Star!14825) (h!67098 (exprs!4709 (h!67100 zl!343))))) b!5234016))

(assert (= (and b!5232664 ((_ is Union!14825) (h!67098 (exprs!4709 (h!67100 zl!343))))) b!5234017))

(declare-fun b!5234018 () Bool)

(declare-fun e!3257064 () Bool)

(declare-fun tp!1466405 () Bool)

(declare-fun tp!1466406 () Bool)

(assert (=> b!5234018 (= e!3257064 (and tp!1466405 tp!1466406))))

(assert (=> b!5232664 (= tp!1466109 e!3257064)))

(assert (= (and b!5232664 ((_ is Cons!60650) (t!373953 (exprs!4709 (h!67100 zl!343))))) b!5234018))

(declare-fun b!5234019 () Bool)

(declare-fun e!3257065 () Bool)

(assert (=> b!5234019 (= e!3257065 tp_is_empty!38903)))

(declare-fun b!5234022 () Bool)

(declare-fun tp!1466407 () Bool)

(declare-fun tp!1466411 () Bool)

(assert (=> b!5234022 (= e!3257065 (and tp!1466407 tp!1466411))))

(assert (=> b!5232701 (= tp!1466149 e!3257065)))

(declare-fun b!5234021 () Bool)

(declare-fun tp!1466408 () Bool)

(assert (=> b!5234021 (= e!3257065 tp!1466408)))

(declare-fun b!5234020 () Bool)

(declare-fun tp!1466409 () Bool)

(declare-fun tp!1466410 () Bool)

(assert (=> b!5234020 (= e!3257065 (and tp!1466409 tp!1466410))))

(assert (= (and b!5232701 ((_ is ElementMatch!14825) (regOne!30162 (regTwo!30163 r!7292)))) b!5234019))

(assert (= (and b!5232701 ((_ is Concat!23670) (regOne!30162 (regTwo!30163 r!7292)))) b!5234020))

(assert (= (and b!5232701 ((_ is Star!14825) (regOne!30162 (regTwo!30163 r!7292)))) b!5234021))

(assert (= (and b!5232701 ((_ is Union!14825) (regOne!30162 (regTwo!30163 r!7292)))) b!5234022))

(declare-fun b!5234023 () Bool)

(declare-fun e!3257066 () Bool)

(assert (=> b!5234023 (= e!3257066 tp_is_empty!38903)))

(declare-fun b!5234026 () Bool)

(declare-fun tp!1466412 () Bool)

(declare-fun tp!1466416 () Bool)

(assert (=> b!5234026 (= e!3257066 (and tp!1466412 tp!1466416))))

(assert (=> b!5232701 (= tp!1466150 e!3257066)))

(declare-fun b!5234025 () Bool)

(declare-fun tp!1466413 () Bool)

(assert (=> b!5234025 (= e!3257066 tp!1466413)))

(declare-fun b!5234024 () Bool)

(declare-fun tp!1466414 () Bool)

(declare-fun tp!1466415 () Bool)

(assert (=> b!5234024 (= e!3257066 (and tp!1466414 tp!1466415))))

(assert (= (and b!5232701 ((_ is ElementMatch!14825) (regTwo!30162 (regTwo!30163 r!7292)))) b!5234023))

(assert (= (and b!5232701 ((_ is Concat!23670) (regTwo!30162 (regTwo!30163 r!7292)))) b!5234024))

(assert (= (and b!5232701 ((_ is Star!14825) (regTwo!30162 (regTwo!30163 r!7292)))) b!5234025))

(assert (= (and b!5232701 ((_ is Union!14825) (regTwo!30162 (regTwo!30163 r!7292)))) b!5234026))

(declare-fun b!5234027 () Bool)

(declare-fun e!3257067 () Bool)

(declare-fun tp!1466417 () Bool)

(declare-fun tp!1466418 () Bool)

(assert (=> b!5234027 (= e!3257067 (and tp!1466417 tp!1466418))))

(assert (=> b!5232677 (= tp!1466120 e!3257067)))

(assert (= (and b!5232677 ((_ is Cons!60650) (exprs!4709 (h!67100 (t!373955 zl!343))))) b!5234027))

(declare-fun b!5234029 () Bool)

(declare-fun e!3257069 () Bool)

(declare-fun tp!1466419 () Bool)

(assert (=> b!5234029 (= e!3257069 tp!1466419)))

(declare-fun e!3257068 () Bool)

(declare-fun tp!1466420 () Bool)

(declare-fun b!5234028 () Bool)

(assert (=> b!5234028 (= e!3257068 (and (inv!80309 (h!67100 (t!373955 (t!373955 zl!343)))) e!3257069 tp!1466420))))

(assert (=> b!5232676 (= tp!1466121 e!3257068)))

(assert (= b!5234028 b!5234029))

(assert (= (and b!5232676 ((_ is Cons!60652) (t!373955 (t!373955 zl!343)))) b!5234028))

(declare-fun m!6279652 () Bool)

(assert (=> b!5234028 m!6279652))

(declare-fun b!5234030 () Bool)

(declare-fun e!3257070 () Bool)

(declare-fun tp!1466421 () Bool)

(declare-fun tp!1466422 () Bool)

(assert (=> b!5234030 (= e!3257070 (and tp!1466421 tp!1466422))))

(assert (=> b!5232669 (= tp!1466114 e!3257070)))

(assert (= (and b!5232669 ((_ is Cons!60650) (exprs!4709 setElem!33335))) b!5234030))

(declare-fun b!5234031 () Bool)

(declare-fun e!3257071 () Bool)

(assert (=> b!5234031 (= e!3257071 tp_is_empty!38903)))

(declare-fun b!5234034 () Bool)

(declare-fun tp!1466423 () Bool)

(declare-fun tp!1466427 () Bool)

(assert (=> b!5234034 (= e!3257071 (and tp!1466423 tp!1466427))))

(assert (=> b!5232691 (= tp!1466132 e!3257071)))

(declare-fun b!5234033 () Bool)

(declare-fun tp!1466424 () Bool)

(assert (=> b!5234033 (= e!3257071 tp!1466424)))

(declare-fun b!5234032 () Bool)

(declare-fun tp!1466425 () Bool)

(declare-fun tp!1466426 () Bool)

(assert (=> b!5234032 (= e!3257071 (and tp!1466425 tp!1466426))))

(assert (= (and b!5232691 ((_ is ElementMatch!14825) (regOne!30163 (regOne!30162 r!7292)))) b!5234031))

(assert (= (and b!5232691 ((_ is Concat!23670) (regOne!30163 (regOne!30162 r!7292)))) b!5234032))

(assert (= (and b!5232691 ((_ is Star!14825) (regOne!30163 (regOne!30162 r!7292)))) b!5234033))

(assert (= (and b!5232691 ((_ is Union!14825) (regOne!30163 (regOne!30162 r!7292)))) b!5234034))

(declare-fun b!5234035 () Bool)

(declare-fun e!3257072 () Bool)

(assert (=> b!5234035 (= e!3257072 tp_is_empty!38903)))

(declare-fun b!5234038 () Bool)

(declare-fun tp!1466428 () Bool)

(declare-fun tp!1466432 () Bool)

(assert (=> b!5234038 (= e!3257072 (and tp!1466428 tp!1466432))))

(assert (=> b!5232691 (= tp!1466136 e!3257072)))

(declare-fun b!5234037 () Bool)

(declare-fun tp!1466429 () Bool)

(assert (=> b!5234037 (= e!3257072 tp!1466429)))

(declare-fun b!5234036 () Bool)

(declare-fun tp!1466430 () Bool)

(declare-fun tp!1466431 () Bool)

(assert (=> b!5234036 (= e!3257072 (and tp!1466430 tp!1466431))))

(assert (= (and b!5232691 ((_ is ElementMatch!14825) (regTwo!30163 (regOne!30162 r!7292)))) b!5234035))

(assert (= (and b!5232691 ((_ is Concat!23670) (regTwo!30163 (regOne!30162 r!7292)))) b!5234036))

(assert (= (and b!5232691 ((_ is Star!14825) (regTwo!30163 (regOne!30162 r!7292)))) b!5234037))

(assert (= (and b!5232691 ((_ is Union!14825) (regTwo!30163 (regOne!30162 r!7292)))) b!5234038))

(declare-fun condSetEmpty!33347 () Bool)

(assert (=> setNonEmpty!33335 (= condSetEmpty!33347 (= setRest!33335 ((as const (Array Context!8418 Bool)) false)))))

(declare-fun setRes!33347 () Bool)

(assert (=> setNonEmpty!33335 (= tp!1466115 setRes!33347)))

(declare-fun setIsEmpty!33347 () Bool)

(assert (=> setIsEmpty!33347 setRes!33347))

(declare-fun setElem!33347 () Context!8418)

(declare-fun e!3257073 () Bool)

(declare-fun tp!1466434 () Bool)

(declare-fun setNonEmpty!33347 () Bool)

(assert (=> setNonEmpty!33347 (= setRes!33347 (and tp!1466434 (inv!80309 setElem!33347) e!3257073))))

(declare-fun setRest!33347 () (InoxSet Context!8418))

(assert (=> setNonEmpty!33347 (= setRest!33335 ((_ map or) (store ((as const (Array Context!8418 Bool)) false) setElem!33347 true) setRest!33347))))

(declare-fun b!5234039 () Bool)

(declare-fun tp!1466433 () Bool)

(assert (=> b!5234039 (= e!3257073 tp!1466433)))

(assert (= (and setNonEmpty!33335 condSetEmpty!33347) setIsEmpty!33347))

(assert (= (and setNonEmpty!33335 (not condSetEmpty!33347)) setNonEmpty!33347))

(assert (= setNonEmpty!33347 b!5234039))

(declare-fun m!6279654 () Bool)

(assert (=> setNonEmpty!33347 m!6279654))

(declare-fun b!5234040 () Bool)

(declare-fun e!3257074 () Bool)

(assert (=> b!5234040 (= e!3257074 tp_is_empty!38903)))

(declare-fun b!5234043 () Bool)

(declare-fun tp!1466435 () Bool)

(declare-fun tp!1466439 () Bool)

(assert (=> b!5234043 (= e!3257074 (and tp!1466435 tp!1466439))))

(assert (=> b!5232690 (= tp!1466133 e!3257074)))

(declare-fun b!5234042 () Bool)

(declare-fun tp!1466436 () Bool)

(assert (=> b!5234042 (= e!3257074 tp!1466436)))

(declare-fun b!5234041 () Bool)

(declare-fun tp!1466437 () Bool)

(declare-fun tp!1466438 () Bool)

(assert (=> b!5234041 (= e!3257074 (and tp!1466437 tp!1466438))))

(assert (= (and b!5232690 ((_ is ElementMatch!14825) (reg!15154 (regOne!30162 r!7292)))) b!5234040))

(assert (= (and b!5232690 ((_ is Concat!23670) (reg!15154 (regOne!30162 r!7292)))) b!5234041))

(assert (= (and b!5232690 ((_ is Star!14825) (reg!15154 (regOne!30162 r!7292)))) b!5234042))

(assert (= (and b!5232690 ((_ is Union!14825) (reg!15154 (regOne!30162 r!7292)))) b!5234043))

(declare-fun b!5234044 () Bool)

(declare-fun e!3257075 () Bool)

(assert (=> b!5234044 (= e!3257075 tp_is_empty!38903)))

(declare-fun b!5234047 () Bool)

(declare-fun tp!1466440 () Bool)

(declare-fun tp!1466444 () Bool)

(assert (=> b!5234047 (= e!3257075 (and tp!1466440 tp!1466444))))

(assert (=> b!5232699 (= tp!1466142 e!3257075)))

(declare-fun b!5234046 () Bool)

(declare-fun tp!1466441 () Bool)

(assert (=> b!5234046 (= e!3257075 tp!1466441)))

(declare-fun b!5234045 () Bool)

(declare-fun tp!1466442 () Bool)

(declare-fun tp!1466443 () Bool)

(assert (=> b!5234045 (= e!3257075 (and tp!1466442 tp!1466443))))

(assert (= (and b!5232699 ((_ is ElementMatch!14825) (regOne!30163 (regOne!30163 r!7292)))) b!5234044))

(assert (= (and b!5232699 ((_ is Concat!23670) (regOne!30163 (regOne!30163 r!7292)))) b!5234045))

(assert (= (and b!5232699 ((_ is Star!14825) (regOne!30163 (regOne!30163 r!7292)))) b!5234046))

(assert (= (and b!5232699 ((_ is Union!14825) (regOne!30163 (regOne!30163 r!7292)))) b!5234047))

(declare-fun b!5234048 () Bool)

(declare-fun e!3257076 () Bool)

(assert (=> b!5234048 (= e!3257076 tp_is_empty!38903)))

(declare-fun b!5234051 () Bool)

(declare-fun tp!1466445 () Bool)

(declare-fun tp!1466449 () Bool)

(assert (=> b!5234051 (= e!3257076 (and tp!1466445 tp!1466449))))

(assert (=> b!5232699 (= tp!1466146 e!3257076)))

(declare-fun b!5234050 () Bool)

(declare-fun tp!1466446 () Bool)

(assert (=> b!5234050 (= e!3257076 tp!1466446)))

(declare-fun b!5234049 () Bool)

(declare-fun tp!1466447 () Bool)

(declare-fun tp!1466448 () Bool)

(assert (=> b!5234049 (= e!3257076 (and tp!1466447 tp!1466448))))

(assert (= (and b!5232699 ((_ is ElementMatch!14825) (regTwo!30163 (regOne!30163 r!7292)))) b!5234048))

(assert (= (and b!5232699 ((_ is Concat!23670) (regTwo!30163 (regOne!30163 r!7292)))) b!5234049))

(assert (= (and b!5232699 ((_ is Star!14825) (regTwo!30163 (regOne!30163 r!7292)))) b!5234050))

(assert (= (and b!5232699 ((_ is Union!14825) (regTwo!30163 (regOne!30163 r!7292)))) b!5234051))

(declare-fun b!5234052 () Bool)

(declare-fun e!3257077 () Bool)

(assert (=> b!5234052 (= e!3257077 tp_is_empty!38903)))

(declare-fun b!5234055 () Bool)

(declare-fun tp!1466450 () Bool)

(declare-fun tp!1466454 () Bool)

(assert (=> b!5234055 (= e!3257077 (and tp!1466450 tp!1466454))))

(assert (=> b!5232689 (= tp!1466134 e!3257077)))

(declare-fun b!5234054 () Bool)

(declare-fun tp!1466451 () Bool)

(assert (=> b!5234054 (= e!3257077 tp!1466451)))

(declare-fun b!5234053 () Bool)

(declare-fun tp!1466452 () Bool)

(declare-fun tp!1466453 () Bool)

(assert (=> b!5234053 (= e!3257077 (and tp!1466452 tp!1466453))))

(assert (= (and b!5232689 ((_ is ElementMatch!14825) (regOne!30162 (regOne!30162 r!7292)))) b!5234052))

(assert (= (and b!5232689 ((_ is Concat!23670) (regOne!30162 (regOne!30162 r!7292)))) b!5234053))

(assert (= (and b!5232689 ((_ is Star!14825) (regOne!30162 (regOne!30162 r!7292)))) b!5234054))

(assert (= (and b!5232689 ((_ is Union!14825) (regOne!30162 (regOne!30162 r!7292)))) b!5234055))

(declare-fun b!5234056 () Bool)

(declare-fun e!3257078 () Bool)

(assert (=> b!5234056 (= e!3257078 tp_is_empty!38903)))

(declare-fun b!5234059 () Bool)

(declare-fun tp!1466455 () Bool)

(declare-fun tp!1466459 () Bool)

(assert (=> b!5234059 (= e!3257078 (and tp!1466455 tp!1466459))))

(assert (=> b!5232689 (= tp!1466135 e!3257078)))

(declare-fun b!5234058 () Bool)

(declare-fun tp!1466456 () Bool)

(assert (=> b!5234058 (= e!3257078 tp!1466456)))

(declare-fun b!5234057 () Bool)

(declare-fun tp!1466457 () Bool)

(declare-fun tp!1466458 () Bool)

(assert (=> b!5234057 (= e!3257078 (and tp!1466457 tp!1466458))))

(assert (= (and b!5232689 ((_ is ElementMatch!14825) (regTwo!30162 (regOne!30162 r!7292)))) b!5234056))

(assert (= (and b!5232689 ((_ is Concat!23670) (regTwo!30162 (regOne!30162 r!7292)))) b!5234057))

(assert (= (and b!5232689 ((_ is Star!14825) (regTwo!30162 (regOne!30162 r!7292)))) b!5234058))

(assert (= (and b!5232689 ((_ is Union!14825) (regTwo!30162 (regOne!30162 r!7292)))) b!5234059))

(declare-fun b!5234060 () Bool)

(declare-fun e!3257079 () Bool)

(assert (=> b!5234060 (= e!3257079 tp_is_empty!38903)))

(declare-fun b!5234063 () Bool)

(declare-fun tp!1466460 () Bool)

(declare-fun tp!1466464 () Bool)

(assert (=> b!5234063 (= e!3257079 (and tp!1466460 tp!1466464))))

(assert (=> b!5232698 (= tp!1466143 e!3257079)))

(declare-fun b!5234062 () Bool)

(declare-fun tp!1466461 () Bool)

(assert (=> b!5234062 (= e!3257079 tp!1466461)))

(declare-fun b!5234061 () Bool)

(declare-fun tp!1466462 () Bool)

(declare-fun tp!1466463 () Bool)

(assert (=> b!5234061 (= e!3257079 (and tp!1466462 tp!1466463))))

(assert (= (and b!5232698 ((_ is ElementMatch!14825) (reg!15154 (regOne!30163 r!7292)))) b!5234060))

(assert (= (and b!5232698 ((_ is Concat!23670) (reg!15154 (regOne!30163 r!7292)))) b!5234061))

(assert (= (and b!5232698 ((_ is Star!14825) (reg!15154 (regOne!30163 r!7292)))) b!5234062))

(assert (= (and b!5232698 ((_ is Union!14825) (reg!15154 (regOne!30163 r!7292)))) b!5234063))

(declare-fun b!5234064 () Bool)

(declare-fun e!3257080 () Bool)

(assert (=> b!5234064 (= e!3257080 tp_is_empty!38903)))

(declare-fun b!5234067 () Bool)

(declare-fun tp!1466465 () Bool)

(declare-fun tp!1466469 () Bool)

(assert (=> b!5234067 (= e!3257080 (and tp!1466465 tp!1466469))))

(assert (=> b!5232707 (= tp!1466152 e!3257080)))

(declare-fun b!5234066 () Bool)

(declare-fun tp!1466466 () Bool)

(assert (=> b!5234066 (= e!3257080 tp!1466466)))

(declare-fun b!5234065 () Bool)

(declare-fun tp!1466467 () Bool)

(declare-fun tp!1466468 () Bool)

(assert (=> b!5234065 (= e!3257080 (and tp!1466467 tp!1466468))))

(assert (= (and b!5232707 ((_ is ElementMatch!14825) (regOne!30163 (reg!15154 r!7292)))) b!5234064))

(assert (= (and b!5232707 ((_ is Concat!23670) (regOne!30163 (reg!15154 r!7292)))) b!5234065))

(assert (= (and b!5232707 ((_ is Star!14825) (regOne!30163 (reg!15154 r!7292)))) b!5234066))

(assert (= (and b!5232707 ((_ is Union!14825) (regOne!30163 (reg!15154 r!7292)))) b!5234067))

(declare-fun b!5234068 () Bool)

(declare-fun e!3257081 () Bool)

(assert (=> b!5234068 (= e!3257081 tp_is_empty!38903)))

(declare-fun b!5234071 () Bool)

(declare-fun tp!1466470 () Bool)

(declare-fun tp!1466474 () Bool)

(assert (=> b!5234071 (= e!3257081 (and tp!1466470 tp!1466474))))

(assert (=> b!5232707 (= tp!1466156 e!3257081)))

(declare-fun b!5234070 () Bool)

(declare-fun tp!1466471 () Bool)

(assert (=> b!5234070 (= e!3257081 tp!1466471)))

(declare-fun b!5234069 () Bool)

(declare-fun tp!1466472 () Bool)

(declare-fun tp!1466473 () Bool)

(assert (=> b!5234069 (= e!3257081 (and tp!1466472 tp!1466473))))

(assert (= (and b!5232707 ((_ is ElementMatch!14825) (regTwo!30163 (reg!15154 r!7292)))) b!5234068))

(assert (= (and b!5232707 ((_ is Concat!23670) (regTwo!30163 (reg!15154 r!7292)))) b!5234069))

(assert (= (and b!5232707 ((_ is Star!14825) (regTwo!30163 (reg!15154 r!7292)))) b!5234070))

(assert (= (and b!5232707 ((_ is Union!14825) (regTwo!30163 (reg!15154 r!7292)))) b!5234071))

(declare-fun b!5234072 () Bool)

(declare-fun e!3257082 () Bool)

(assert (=> b!5234072 (= e!3257082 tp_is_empty!38903)))

(declare-fun b!5234075 () Bool)

(declare-fun tp!1466475 () Bool)

(declare-fun tp!1466479 () Bool)

(assert (=> b!5234075 (= e!3257082 (and tp!1466475 tp!1466479))))

(assert (=> b!5232697 (= tp!1466144 e!3257082)))

(declare-fun b!5234074 () Bool)

(declare-fun tp!1466476 () Bool)

(assert (=> b!5234074 (= e!3257082 tp!1466476)))

(declare-fun b!5234073 () Bool)

(declare-fun tp!1466477 () Bool)

(declare-fun tp!1466478 () Bool)

(assert (=> b!5234073 (= e!3257082 (and tp!1466477 tp!1466478))))

(assert (= (and b!5232697 ((_ is ElementMatch!14825) (regOne!30162 (regOne!30163 r!7292)))) b!5234072))

(assert (= (and b!5232697 ((_ is Concat!23670) (regOne!30162 (regOne!30163 r!7292)))) b!5234073))

(assert (= (and b!5232697 ((_ is Star!14825) (regOne!30162 (regOne!30163 r!7292)))) b!5234074))

(assert (= (and b!5232697 ((_ is Union!14825) (regOne!30162 (regOne!30163 r!7292)))) b!5234075))

(declare-fun b!5234076 () Bool)

(declare-fun e!3257083 () Bool)

(assert (=> b!5234076 (= e!3257083 tp_is_empty!38903)))

(declare-fun b!5234079 () Bool)

(declare-fun tp!1466480 () Bool)

(declare-fun tp!1466484 () Bool)

(assert (=> b!5234079 (= e!3257083 (and tp!1466480 tp!1466484))))

(assert (=> b!5232697 (= tp!1466145 e!3257083)))

(declare-fun b!5234078 () Bool)

(declare-fun tp!1466481 () Bool)

(assert (=> b!5234078 (= e!3257083 tp!1466481)))

(declare-fun b!5234077 () Bool)

(declare-fun tp!1466482 () Bool)

(declare-fun tp!1466483 () Bool)

(assert (=> b!5234077 (= e!3257083 (and tp!1466482 tp!1466483))))

(assert (= (and b!5232697 ((_ is ElementMatch!14825) (regTwo!30162 (regOne!30163 r!7292)))) b!5234076))

(assert (= (and b!5232697 ((_ is Concat!23670) (regTwo!30162 (regOne!30163 r!7292)))) b!5234077))

(assert (= (and b!5232697 ((_ is Star!14825) (regTwo!30162 (regOne!30163 r!7292)))) b!5234078))

(assert (= (and b!5232697 ((_ is Union!14825) (regTwo!30162 (regOne!30163 r!7292)))) b!5234079))

(declare-fun b!5234080 () Bool)

(declare-fun e!3257084 () Bool)

(assert (=> b!5234080 (= e!3257084 tp_is_empty!38903)))

(declare-fun b!5234083 () Bool)

(declare-fun tp!1466485 () Bool)

(declare-fun tp!1466489 () Bool)

(assert (=> b!5234083 (= e!3257084 (and tp!1466485 tp!1466489))))

(assert (=> b!5232706 (= tp!1466153 e!3257084)))

(declare-fun b!5234082 () Bool)

(declare-fun tp!1466486 () Bool)

(assert (=> b!5234082 (= e!3257084 tp!1466486)))

(declare-fun b!5234081 () Bool)

(declare-fun tp!1466487 () Bool)

(declare-fun tp!1466488 () Bool)

(assert (=> b!5234081 (= e!3257084 (and tp!1466487 tp!1466488))))

(assert (= (and b!5232706 ((_ is ElementMatch!14825) (reg!15154 (reg!15154 r!7292)))) b!5234080))

(assert (= (and b!5232706 ((_ is Concat!23670) (reg!15154 (reg!15154 r!7292)))) b!5234081))

(assert (= (and b!5232706 ((_ is Star!14825) (reg!15154 (reg!15154 r!7292)))) b!5234082))

(assert (= (and b!5232706 ((_ is Union!14825) (reg!15154 (reg!15154 r!7292)))) b!5234083))

(declare-fun b_lambda!202369 () Bool)

(assert (= b_lambda!202353 (or d!1686748 b_lambda!202369)))

(declare-fun bs!1215178 () Bool)

(declare-fun d!1687470 () Bool)

(assert (= bs!1215178 (and d!1687470 d!1686748)))

(assert (=> bs!1215178 (= (dynLambda!23967 lambda!262903 (h!67098 lt!2145691)) (validRegex!6561 (h!67098 lt!2145691)))))

(declare-fun m!6279656 () Bool)

(assert (=> bs!1215178 m!6279656))

(assert (=> b!5233559 d!1687470))

(declare-fun b_lambda!202371 () Bool)

(assert (= b_lambda!202363 (or d!1686658 b_lambda!202371)))

(declare-fun bs!1215179 () Bool)

(declare-fun d!1687472 () Bool)

(assert (= bs!1215179 (and d!1687472 d!1686658)))

(assert (=> bs!1215179 (= (dynLambda!23967 lambda!262886 (h!67098 (exprs!4709 (h!67100 zl!343)))) (validRegex!6561 (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(declare-fun m!6279658 () Bool)

(assert (=> bs!1215179 m!6279658))

(assert (=> b!5233850 d!1687472))

(declare-fun b_lambda!202373 () Bool)

(assert (= b_lambda!202365 (or d!1686716 b_lambda!202373)))

(declare-fun bs!1215180 () Bool)

(declare-fun d!1687474 () Bool)

(assert (= bs!1215180 (and d!1687474 d!1686716)))

(assert (=> bs!1215180 (= (dynLambda!23967 lambda!262894 (h!67098 lt!2145568)) (validRegex!6561 (h!67098 lt!2145568)))))

(declare-fun m!6279660 () Bool)

(assert (=> bs!1215180 m!6279660))

(assert (=> b!5233897 d!1687474))

(declare-fun b_lambda!202375 () Bool)

(assert (= b_lambda!202361 (or b!5231825 b_lambda!202375)))

(declare-fun bs!1215181 () Bool)

(declare-fun d!1687476 () Bool)

(assert (= bs!1215181 (and d!1687476 b!5231825)))

(assert (=> bs!1215181 (= (dynLambda!23967 lambda!262855 (h!67098 (t!373953 lt!2145584))) (validRegex!6561 (h!67098 (t!373953 lt!2145584))))))

(declare-fun m!6279662 () Bool)

(assert (=> bs!1215181 m!6279662))

(assert (=> b!5233839 d!1687476))

(declare-fun b_lambda!202377 () Bool)

(assert (= b_lambda!202351 (or b!5231809 b_lambda!202377)))

(assert (=> d!1687156 d!1686800))

(declare-fun b_lambda!202379 () Bool)

(assert (= b_lambda!202349 (or b!5231809 b_lambda!202379)))

(assert (=> d!1687146 d!1686802))

(declare-fun b_lambda!202381 () Bool)

(assert (= b_lambda!202357 (or b!5231809 b_lambda!202381)))

(assert (=> d!1687300 d!1686804))

(declare-fun b_lambda!202383 () Bool)

(assert (= b_lambda!202359 (or d!1686754 b_lambda!202383)))

(declare-fun bs!1215182 () Bool)

(declare-fun d!1687478 () Bool)

(assert (= bs!1215182 (and d!1687478 d!1686754)))

(assert (=> bs!1215182 (= (dynLambda!23967 lambda!262904 (h!67098 (exprs!4709 setElem!33329))) (validRegex!6561 (h!67098 (exprs!4709 setElem!33329))))))

(declare-fun m!6279664 () Bool)

(assert (=> bs!1215182 m!6279664))

(assert (=> b!5233708 d!1687478))

(declare-fun b_lambda!202385 () Bool)

(assert (= b_lambda!202367 (or d!1686746 b_lambda!202385)))

(declare-fun bs!1215183 () Bool)

(declare-fun d!1687480 () Bool)

(assert (= bs!1215183 (and d!1687480 d!1686746)))

(assert (=> bs!1215183 (= (dynLambda!23967 lambda!262900 (h!67098 (unfocusZipperList!267 zl!343))) (validRegex!6561 (h!67098 (unfocusZipperList!267 zl!343))))))

(declare-fun m!6279666 () Bool)

(assert (=> bs!1215183 m!6279666))

(assert (=> b!5233910 d!1687480))

(declare-fun b_lambda!202387 () Bool)

(assert (= b_lambda!202355 (or d!1686718 b_lambda!202387)))

(declare-fun bs!1215184 () Bool)

(declare-fun d!1687482 () Bool)

(assert (= bs!1215184 (and d!1687482 d!1686718)))

(assert (=> bs!1215184 (= (dynLambda!23967 lambda!262897 (h!67098 (exprs!4709 (h!67100 zl!343)))) (validRegex!6561 (h!67098 (exprs!4709 (h!67100 zl!343)))))))

(assert (=> bs!1215184 m!6279658))

(assert (=> b!5233621 d!1687482))

(check-sat (not b!5234077) (not b!5234069) (not b!5233794) (not bm!370320) (not bm!370372) (not bm!370367) (not b!5233923) (not b!5233956) (not b!5233676) (not b!5233684) (not b!5234018) (not b!5233730) (not bm!370324) (not bm!370345) (not b!5233716) (not d!1687168) (not b!5233690) (not b!5234032) (not bm!370280) (not d!1687286) (not b!5234051) (not d!1687266) (not b!5233630) (not b!5234008) (not b!5233625) (not b!5233595) (not b_lambda!202383) (not b!5233709) (not b!5233447) (not b!5234046) (not bm!370364) (not d!1687368) (not bm!370318) (not b!5233992) (not d!1687236) (not b!5234065) (not b!5233981) (not b!5233984) (not b!5233911) (not b!5233598) (not b!5233985) (not d!1687366) (not bm!370313) (not d!1687398) (not b!5233401) (not b!5233591) (not bm!370271) (not b!5234024) (not b!5233703) (not b!5233463) (not b!5233869) (not b!5234021) (not b!5233834) (not bm!370387) (not d!1687216) (not b!5233875) (not b!5233973) (not b!5233826) (not b!5233995) (not bm!370346) (not d!1687282) (not b!5233940) (not b!5233721) (not d!1687376) (not b!5233993) (not b!5233977) (not b!5234066) (not b!5234036) (not d!1687248) (not d!1687378) (not b!5233783) (not bm!370365) (not b_lambda!202305) (not d!1687260) (not b_lambda!202369) (not b!5233628) (not b!5233520) (not d!1687178) (not b!5233975) (not d!1687158) (not b!5233435) (not bm!370321) (not bm!370356) (not b!5233734) (not bs!1215179) (not b!5233439) (not bs!1215183) (not d!1687292) (not b!5234004) (not b!5234047) (not bm!370307) (not b!5233576) (not bm!370348) (not d!1687250) (not b!5233511) (not bm!370382) (not b!5233717) (not b!5233692) (not d!1687336) (not b!5234026) (not bm!370263) (not b_lambda!202387) (not b!5234039) (not b!5233557) (not b!5233565) (not bm!370375) (not b!5233726) (not b!5233732) (not b!5233573) (not b!5233449) (not b!5233718) (not bm!370308) (not bm!370310) (not bm!370305) (not b!5234081) (not b!5233403) (not setNonEmpty!33344) (not b!5233825) (not d!1687464) (not b!5233884) (not b!5233978) (not b!5233997) (not bm!370278) (not b!5233918) (not b!5233738) (not b!5233627) (not b!5233584) (not b!5234009) (not b!5234000) (not b!5233931) (not b!5234049) (not b!5233871) (not b!5233521) (not setNonEmpty!33345) (not bm!370270) (not d!1687382) (not setNonEmpty!33347) (not b!5234054) (not b!5234079) (not b!5234063) (not b!5233622) (not bm!370338) (not b!5233847) (not b!5233481) (not b!5233987) (not b!5233924) (not d!1687300) (not b!5234083) (not b!5234033) (not d!1687162) (not b!5233773) (not d!1687450) (not b!5234011) (not b!5233431) (not b_lambda!202377) (not b!5233745) (not bm!370293) (not bm!370381) (not b!5233898) (not b!5233983) (not d!1687204) (not bs!1215181) (not b!5234012) (not b!5233656) (not d!1687220) (not b!5233792) (not bm!370262) (not d!1687202) (not bm!370266) (not b!5234041) (not d!1687288) (not bm!370393) (not d!1687298) (not b!5233519) (not d!1687146) (not d!1687446) (not b!5233744) (not d!1687166) (not b!5233991) (not b!5234001) (not b!5234058) (not b!5234005) (not b!5233907) (not b!5233894) (not b!5233640) (not bm!370281) (not b!5233510) (not b!5233443) (not d!1687156) (not bs!1215180) (not bm!370274) (not bm!370286) (not b!5233782) (not b!5233719) (not b!5234038) (not d!1687264) (not b!5233437) (not d!1687462) (not bm!370339) (not b!5233530) (not bm!370325) (not b!5233947) (not b!5233669) (not bm!370260) (not b!5234034) (not b!5233574) (not b!5234050) (not d!1687324) (not bm!370360) (not d!1687322) (not d!1687316) (not d!1687346) (not b_lambda!202307) (not bm!370311) (not d!1687314) (not bm!370347) (not b!5233796) (not b!5233429) (not b!5233410) (not b!5234062) (not b!5234053) (not d!1687228) (not b!5233974) (not d!1687438) (not b!5233996) (not b!5233593) (not b!5233626) (not b!5233566) (not b!5234055) (not b!5233857) (not b!5233641) (not bm!370368) (not b_lambda!202385) (not b!5233970) (not bm!370383) (not bm!370358) (not b!5233432) (not d!1687360) (not b!5233980) (not d!1687176) (not bm!370267) (not b!5233493) (not d!1687352) (not b!5233575) (not b!5233971) tp_is_empty!38903 (not b!5233428) (not b!5234057) (not b!5233812) (not b!5234071) (not b!5233585) (not b_lambda!202375) (not b!5233587) (not d!1687308) (not bm!370304) (not b!5234015) (not bs!1215182) (not b!5234070) (not b!5234043) (not bm!370314) (not bm!370351) (not b!5234061) (not b!5233722) (not b!5234037) (not bm!370341) (not b!5233560) (not d!1687170) (not b!5234075) (not b!5233790) (not b!5234074) (not bm!370378) (not b!5234067) (not d!1687436) (not d!1687458) (not d!1687278) (not b!5233979) (not b!5233814) (not b!5234025) (not b!5233498) (not bm!370391) (not b!5233681) (not bm!370317) (not bm!370377) (not d!1687164) (not d!1687172) (not b!5234029) (not b!5233786) (not bm!370326) (not d!1687212) (not b!5233465) (not bm!370371) (not b!5233554) (not d!1687370) (not b!5233638) (not b!5234027) (not b!5233862) (not b!5233863) (not b!5233634) (not bm!370275) (not b!5233715) (not bm!370297) (not bm!370303) (not d!1687180) (not b!5233720) (not bm!370296) (not bm!370359) (not d!1687186) (not b!5233516) (not b!5234073) (not b!5233668) (not b!5233781) (not d!1687194) (not d!1687374) (not d!1687362) (not b!5233900) (not b!5233548) (not b!5233873) (not b!5233579) (not b!5233824) (not b!5234022) (not setNonEmpty!33346) (not d!1687222) (not b!5233583) (not b!5233938) (not b!5233515) (not b!5233695) (not b_lambda!202373) (not bm!370350) (not b!5234020) (not b!5233827) (not b!5233710) (not b!5233539) (not b!5233727) (not bm!370392) (not b_lambda!202381) (not b!5234017) (not d!1687372) (not bm!370268) (not b!5234003) (not b_lambda!202301) (not bm!370306) (not d!1687404) (not b!5233865) (not b!5234042) (not b!5233724) (not b!5233517) (not d!1687160) (not b!5233797) (not b!5233438) (not b!5233518) (not bm!370384) (not b!5233969) (not bm!370355) (not b!5233682) (not b!5233424) (not b_lambda!202379) (not bm!370354) (not b!5233805) (not bm!370363) (not bm!370292) (not b!5233456) (not b!5233688) (not d!1687344) (not b_lambda!202303) (not b!5233999) (not b!5234028) (not b!5233784) (not b!5233740) (not d!1687244) (not d!1687290) (not bm!370289) (not d!1687414) (not b!5233577) (not b!5233851) (not b!5233989) (not b!5234059) (not b!5233714) (not b!5233440) (not bm!370342) (not b!5233486) (not b!5234082) (not d!1687274) (not b!5233441) (not bm!370302) (not b!5233899) (not b!5233446) (not d!1687208) (not d!1687380) (not d!1687234) (not d!1687426) (not b!5233582) (not b!5233425) (not b!5233876) (not b!5233742) (not b!5233505) (not bs!1215178) (not d!1687254) (not d!1687400) (not d!1687338) (not bm!370388) (not b!5234030) (not b!5233840) (not d!1687448) (not bm!370288) (not d!1687428) (not b!5233860) (not b!5234013) (not d!1687342) (not bm!370285) (not bm!370335) (not b!5233694) (not b!5233597) (not b!5233555) (not b!5234007) (not bm!370284) (not d!1687340) (not b_lambda!202371) (not bs!1215184) (not b!5233712) (not d!1687272) (not b!5234016) (not b!5233636) (not b!5234078) (not b!5233988) (not b!5234045) (not b!5233448) (not d!1687200))
(check-sat)
