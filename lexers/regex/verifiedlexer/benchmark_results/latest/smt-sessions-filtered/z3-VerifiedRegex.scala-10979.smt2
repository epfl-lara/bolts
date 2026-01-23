; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!569098 () Bool)

(assert start!569098)

(declare-fun b!5420758 () Bool)

(assert (=> b!5420758 true))

(assert (=> b!5420758 true))

(declare-fun lambda!283879 () Int)

(declare-fun lambda!283878 () Int)

(assert (=> b!5420758 (not (= lambda!283879 lambda!283878))))

(assert (=> b!5420758 true))

(assert (=> b!5420758 true))

(declare-fun b!5420761 () Bool)

(assert (=> b!5420761 true))

(declare-fun b!5420733 () Bool)

(assert (=> b!5420733 true))

(declare-fun bs!1252316 () Bool)

(declare-fun b!5420770 () Bool)

(assert (= bs!1252316 (and b!5420770 b!5420758)))

(declare-datatypes ((C!30680 0))(
  ( (C!30681 (val!25042 Int)) )
))
(declare-datatypes ((Regex!15205 0))(
  ( (ElementMatch!15205 (c!945345 C!30680)) (Concat!24050 (regOne!30922 Regex!15205) (regTwo!30922 Regex!15205)) (EmptyExpr!15205) (Star!15205 (reg!15534 Regex!15205)) (EmptyLang!15205) (Union!15205 (regOne!30923 Regex!15205) (regTwo!30923 Regex!15205)) )
))
(declare-fun r!7292 () Regex!15205)

(declare-fun lambda!283883 () Int)

(declare-fun lt!2210852 () Regex!15205)

(assert (=> bs!1252316 (= (= lt!2210852 (regOne!30922 r!7292)) (= lambda!283883 lambda!283878))))

(assert (=> bs!1252316 (not (= lambda!283883 lambda!283879))))

(assert (=> b!5420770 true))

(assert (=> b!5420770 true))

(assert (=> b!5420770 true))

(declare-fun lambda!283884 () Int)

(assert (=> bs!1252316 (not (= lambda!283884 lambda!283878))))

(assert (=> bs!1252316 (= (= lt!2210852 (regOne!30922 r!7292)) (= lambda!283884 lambda!283879))))

(assert (=> b!5420770 (not (= lambda!283884 lambda!283883))))

(assert (=> b!5420770 true))

(assert (=> b!5420770 true))

(assert (=> b!5420770 true))

(declare-fun bs!1252317 () Bool)

(declare-fun b!5420765 () Bool)

(assert (= bs!1252317 (and b!5420765 b!5420758)))

(declare-datatypes ((List!61914 0))(
  ( (Nil!61790) (Cons!61790 (h!68238 C!30680) (t!375137 List!61914)) )
))
(declare-fun s!2326 () List!61914)

(declare-fun lambda!283885 () Int)

(declare-fun lt!2210832 () Regex!15205)

(declare-datatypes ((tuple2!64808 0))(
  ( (tuple2!64809 (_1!35707 List!61914) (_2!35707 List!61914)) )
))
(declare-fun lt!2210854 () tuple2!64808)

(assert (=> bs!1252317 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) (regOne!30922 r!7292)) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283885 lambda!283878))))

(assert (=> bs!1252317 (not (= lambda!283885 lambda!283879))))

(declare-fun bs!1252318 () Bool)

(assert (= bs!1252318 (and b!5420765 b!5420770)))

(assert (=> bs!1252318 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) lt!2210852) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283885 lambda!283883))))

(assert (=> bs!1252318 (not (= lambda!283885 lambda!283884))))

(assert (=> b!5420765 true))

(assert (=> b!5420765 true))

(assert (=> b!5420765 true))

(declare-fun lambda!283886 () Int)

(assert (=> bs!1252317 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) (regOne!30922 r!7292)) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283886 lambda!283879))))

(assert (=> b!5420765 (not (= lambda!283886 lambda!283885))))

(assert (=> bs!1252318 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) lt!2210852) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283886 lambda!283884))))

(assert (=> bs!1252318 (not (= lambda!283886 lambda!283883))))

(assert (=> bs!1252317 (not (= lambda!283886 lambda!283878))))

(assert (=> b!5420765 true))

(assert (=> b!5420765 true))

(assert (=> b!5420765 true))

(declare-fun lambda!283887 () Int)

(assert (=> b!5420765 (not (= lambda!283887 lambda!283886))))

(assert (=> bs!1252317 (not (= lambda!283887 lambda!283879))))

(assert (=> b!5420765 (not (= lambda!283887 lambda!283885))))

(assert (=> bs!1252318 (not (= lambda!283887 lambda!283884))))

(assert (=> bs!1252318 (not (= lambda!283887 lambda!283883))))

(assert (=> bs!1252317 (not (= lambda!283887 lambda!283878))))

(assert (=> b!5420765 true))

(assert (=> b!5420765 true))

(assert (=> b!5420765 true))

(declare-fun b!5420728 () Bool)

(declare-fun res!2306370 () Bool)

(declare-fun e!3359596 () Bool)

(assert (=> b!5420728 (=> res!2306370 e!3359596)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61915 0))(
  ( (Nil!61791) (Cons!61791 (h!68239 Regex!15205) (t!375138 List!61915)) )
))
(declare-datatypes ((Context!9178 0))(
  ( (Context!9179 (exprs!5089 List!61915)) )
))
(declare-fun z!1189 () (InoxSet Context!9178))

(declare-fun matchZipper!1449 ((InoxSet Context!9178) List!61914) Bool)

(assert (=> b!5420728 (= res!2306370 (not (matchZipper!1449 z!1189 s!2326)))))

(declare-fun b!5420729 () Bool)

(declare-fun res!2306346 () Bool)

(declare-fun e!3359605 () Bool)

(assert (=> b!5420729 (=> res!2306346 e!3359605)))

(get-info :version)

(assert (=> b!5420729 (= res!2306346 (or ((_ is Concat!24050) (regOne!30922 r!7292)) (not ((_ is Star!15205) (regOne!30922 r!7292)))))))

(declare-fun b!5420730 () Bool)

(declare-fun res!2306361 () Bool)

(assert (=> b!5420730 (=> res!2306361 e!3359596)))

(declare-fun lt!2210846 () Bool)

(assert (=> b!5420730 (= res!2306361 (not lt!2210846))))

(declare-fun b!5420731 () Bool)

(declare-fun e!3359600 () Bool)

(assert (=> b!5420731 (= e!3359596 e!3359600)))

(declare-fun res!2306360 () Bool)

(assert (=> b!5420731 (=> res!2306360 e!3359600)))

(declare-fun e!3359582 () Bool)

(assert (=> b!5420731 (= res!2306360 e!3359582)))

(declare-fun res!2306357 () Bool)

(assert (=> b!5420731 (=> (not res!2306357) (not e!3359582))))

(declare-fun lt!2210813 () Bool)

(assert (=> b!5420731 (= res!2306357 (not lt!2210813))))

(declare-fun lt!2210849 () (InoxSet Context!9178))

(assert (=> b!5420731 (= lt!2210813 (matchZipper!1449 lt!2210849 (t!375137 s!2326)))))

(declare-fun b!5420732 () Bool)

(declare-fun e!3359589 () Bool)

(declare-fun tp_is_empty!39663 () Bool)

(declare-fun tp!1496787 () Bool)

(assert (=> b!5420732 (= e!3359589 (and tp_is_empty!39663 tp!1496787))))

(declare-fun e!3359604 () Bool)

(assert (=> b!5420733 (= e!3359600 e!3359604)))

(declare-fun res!2306348 () Bool)

(assert (=> b!5420733 (=> res!2306348 e!3359604)))

(declare-fun lt!2210818 () (InoxSet Context!9178))

(declare-fun lt!2210863 () (InoxSet Context!9178))

(declare-fun lt!2210810 () Context!9178)

(declare-fun appendTo!64 ((InoxSet Context!9178) Context!9178) (InoxSet Context!9178))

(assert (=> b!5420733 (= res!2306348 (not (= (appendTo!64 lt!2210818 lt!2210810) lt!2210863)))))

(declare-fun lambda!283881 () Int)

(declare-fun lt!2210841 () List!61915)

(declare-fun lt!2210850 () List!61915)

(declare-fun map!14192 ((InoxSet Context!9178) Int) (InoxSet Context!9178))

(declare-fun ++!13583 (List!61915 List!61915) List!61915)

(assert (=> b!5420733 (= (map!14192 lt!2210818 lambda!283881) (store ((as const (Array Context!9178 Bool)) false) (Context!9179 (++!13583 lt!2210841 lt!2210850)) true))))

(declare-fun lambda!283882 () Int)

(declare-datatypes ((Unit!154342 0))(
  ( (Unit!154343) )
))
(declare-fun lt!2210822 () Unit!154342)

(declare-fun lemmaConcatPreservesForall!230 (List!61915 List!61915 Int) Unit!154342)

(assert (=> b!5420733 (= lt!2210822 (lemmaConcatPreservesForall!230 lt!2210841 lt!2210850 lambda!283882))))

(declare-fun lt!2210853 () Context!9178)

(declare-fun lt!2210840 () Unit!154342)

(declare-fun lemmaMapOnSingletonSet!64 ((InoxSet Context!9178) Context!9178 Int) Unit!154342)

(assert (=> b!5420733 (= lt!2210840 (lemmaMapOnSingletonSet!64 lt!2210818 lt!2210853 lambda!283881))))

(declare-fun b!5420734 () Bool)

(declare-fun res!2306358 () Bool)

(declare-fun e!3359583 () Bool)

(assert (=> b!5420734 (=> res!2306358 e!3359583)))

(declare-fun lt!2210868 () (InoxSet Context!9178))

(declare-fun lt!2210826 () tuple2!64808)

(assert (=> b!5420734 (= res!2306358 (not (matchZipper!1449 lt!2210868 (_2!35707 lt!2210826))))))

(declare-fun b!5420735 () Bool)

(declare-fun e!3359594 () Bool)

(declare-fun e!3359587 () Bool)

(assert (=> b!5420735 (= e!3359594 e!3359587)))

(declare-fun res!2306368 () Bool)

(assert (=> b!5420735 (=> res!2306368 e!3359587)))

(declare-fun lt!2210821 () Context!9178)

(declare-fun lt!2210839 () Regex!15205)

(declare-datatypes ((List!61916 0))(
  ( (Nil!61792) (Cons!61792 (h!68240 Context!9178) (t!375139 List!61916)) )
))
(declare-fun unfocusZipper!947 (List!61916) Regex!15205)

(assert (=> b!5420735 (= res!2306368 (not (= (unfocusZipper!947 (Cons!61792 lt!2210821 Nil!61792)) lt!2210839)))))

(declare-fun lt!2210809 () Regex!15205)

(assert (=> b!5420735 (= lt!2210839 (Concat!24050 (reg!15534 (regOne!30922 r!7292)) lt!2210809))))

(declare-fun b!5420736 () Bool)

(declare-fun res!2306372 () Bool)

(declare-fun e!3359584 () Bool)

(assert (=> b!5420736 (=> res!2306372 e!3359584)))

(declare-fun zl!343 () List!61916)

(declare-fun generalisedUnion!1134 (List!61915) Regex!15205)

(declare-fun unfocusZipperList!647 (List!61916) List!61915)

(assert (=> b!5420736 (= res!2306372 (not (= r!7292 (generalisedUnion!1134 (unfocusZipperList!647 zl!343)))))))

(declare-fun b!5420737 () Bool)

(declare-fun res!2306362 () Bool)

(assert (=> b!5420737 (=> res!2306362 e!3359584)))

(assert (=> b!5420737 (= res!2306362 (not ((_ is Cons!61791) (exprs!5089 (h!68240 zl!343)))))))

(declare-fun b!5420738 () Bool)

(declare-fun e!3359599 () Bool)

(declare-fun nullable!5374 (Regex!15205) Bool)

(assert (=> b!5420738 (= e!3359599 (nullable!5374 (regOne!30922 (regOne!30922 r!7292))))))

(declare-fun b!5420739 () Bool)

(declare-fun e!3359585 () Bool)

(assert (=> b!5420739 (= e!3359585 tp_is_empty!39663)))

(declare-fun b!5420740 () Bool)

(declare-fun e!3359597 () Bool)

(declare-fun tp!1496785 () Bool)

(assert (=> b!5420740 (= e!3359597 tp!1496785)))

(declare-fun setRes!35327 () Bool)

(declare-fun setElem!35327 () Context!9178)

(declare-fun tp!1496780 () Bool)

(declare-fun e!3359598 () Bool)

(declare-fun setNonEmpty!35327 () Bool)

(declare-fun inv!81259 (Context!9178) Bool)

(assert (=> setNonEmpty!35327 (= setRes!35327 (and tp!1496780 (inv!81259 setElem!35327) e!3359598))))

(declare-fun setRest!35327 () (InoxSet Context!9178))

(assert (=> setNonEmpty!35327 (= z!1189 ((_ map or) (store ((as const (Array Context!9178 Bool)) false) setElem!35327 true) setRest!35327))))

(declare-fun b!5420741 () Bool)

(declare-fun res!2306355 () Bool)

(assert (=> b!5420741 (=> res!2306355 e!3359584)))

(declare-fun isEmpty!33788 (List!61916) Bool)

(assert (=> b!5420741 (= res!2306355 (not (isEmpty!33788 (t!375139 zl!343))))))

(declare-fun setIsEmpty!35327 () Bool)

(assert (=> setIsEmpty!35327 setRes!35327))

(declare-fun b!5420742 () Bool)

(declare-fun e!3359591 () Bool)

(declare-fun e!3359593 () Bool)

(assert (=> b!5420742 (= e!3359591 e!3359593)))

(declare-fun res!2306373 () Bool)

(assert (=> b!5420742 (=> res!2306373 e!3359593)))

(declare-fun lt!2210808 () Bool)

(declare-fun lt!2210814 () (InoxSet Context!9178))

(assert (=> b!5420742 (= res!2306373 (not (= lt!2210808 (matchZipper!1449 lt!2210814 (t!375137 s!2326)))))))

(assert (=> b!5420742 (= lt!2210808 (matchZipper!1449 lt!2210863 s!2326))))

(declare-fun b!5420743 () Bool)

(declare-fun e!3359602 () Unit!154342)

(declare-fun Unit!154344 () Unit!154342)

(assert (=> b!5420743 (= e!3359602 Unit!154344)))

(declare-fun lt!2210856 () Unit!154342)

(declare-fun lt!2210831 () (InoxSet Context!9178))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!442 ((InoxSet Context!9178) (InoxSet Context!9178) List!61914) Unit!154342)

(assert (=> b!5420743 (= lt!2210856 (lemmaZipperConcatMatchesSameAsBothZippers!442 lt!2210849 lt!2210831 (t!375137 s!2326)))))

(declare-fun res!2306371 () Bool)

(assert (=> b!5420743 (= res!2306371 (matchZipper!1449 lt!2210849 (t!375137 s!2326)))))

(declare-fun e!3359579 () Bool)

(assert (=> b!5420743 (=> res!2306371 e!3359579)))

(assert (=> b!5420743 (= (matchZipper!1449 ((_ map or) lt!2210849 lt!2210831) (t!375137 s!2326)) e!3359579)))

(declare-fun b!5420744 () Bool)

(declare-fun res!2306344 () Bool)

(assert (=> b!5420744 (=> res!2306344 e!3359600)))

(assert (=> b!5420744 (= res!2306344 (or (not lt!2210813) (not lt!2210808)))))

(declare-fun b!5420745 () Bool)

(declare-fun res!2306347 () Bool)

(assert (=> b!5420745 (=> res!2306347 e!3359605)))

(assert (=> b!5420745 (= res!2306347 e!3359599)))

(declare-fun res!2306375 () Bool)

(assert (=> b!5420745 (=> (not res!2306375) (not e!3359599))))

(assert (=> b!5420745 (= res!2306375 ((_ is Concat!24050) (regOne!30922 r!7292)))))

(declare-fun b!5420746 () Bool)

(declare-fun e!3359592 () Bool)

(declare-fun lt!2210806 () Bool)

(assert (=> b!5420746 (= e!3359592 lt!2210806)))

(declare-fun b!5420747 () Bool)

(assert (=> b!5420747 (= e!3359604 e!3359583)))

(declare-fun res!2306359 () Bool)

(assert (=> b!5420747 (=> res!2306359 e!3359583)))

(declare-fun lt!2210859 () List!61914)

(assert (=> b!5420747 (= res!2306359 (not (= s!2326 lt!2210859)))))

(declare-fun ++!13584 (List!61914 List!61914) List!61914)

(assert (=> b!5420747 (= lt!2210859 (++!13584 (_1!35707 lt!2210826) (_2!35707 lt!2210826)))))

(declare-datatypes ((Option!15316 0))(
  ( (None!15315) (Some!15315 (v!51344 tuple2!64808)) )
))
(declare-fun lt!2210862 () Option!15316)

(declare-fun get!21310 (Option!15316) tuple2!64808)

(assert (=> b!5420747 (= lt!2210826 (get!21310 lt!2210862))))

(declare-fun isDefined!12019 (Option!15316) Bool)

(assert (=> b!5420747 (isDefined!12019 lt!2210862)))

(declare-fun findConcatSeparationZippers!62 ((InoxSet Context!9178) (InoxSet Context!9178) List!61914 List!61914 List!61914) Option!15316)

(assert (=> b!5420747 (= lt!2210862 (findConcatSeparationZippers!62 lt!2210818 lt!2210868 Nil!61790 s!2326 s!2326))))

(declare-fun lt!2210837 () Unit!154342)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!62 ((InoxSet Context!9178) Context!9178 List!61914) Unit!154342)

(assert (=> b!5420747 (= lt!2210837 (lemmaConcatZipperMatchesStringThenFindConcatDefined!62 lt!2210818 lt!2210810 s!2326))))

(declare-fun b!5420748 () Bool)

(assert (=> b!5420748 (= e!3359582 (not (matchZipper!1449 lt!2210831 (t!375137 s!2326))))))

(declare-fun b!5420749 () Bool)

(declare-fun e!3359601 () Bool)

(assert (=> b!5420749 (= e!3359601 e!3359591)))

(declare-fun res!2306351 () Bool)

(assert (=> b!5420749 (=> res!2306351 e!3359591)))

(declare-fun lt!2210865 () (InoxSet Context!9178))

(assert (=> b!5420749 (= res!2306351 (not (= lt!2210814 lt!2210865)))))

(declare-fun lambda!283880 () Int)

(declare-fun flatMap!932 ((InoxSet Context!9178) Int) (InoxSet Context!9178))

(declare-fun derivationStepZipperUp!577 (Context!9178 C!30680) (InoxSet Context!9178))

(assert (=> b!5420749 (= (flatMap!932 lt!2210863 lambda!283880) (derivationStepZipperUp!577 lt!2210821 (h!68238 s!2326)))))

(declare-fun lt!2210851 () Unit!154342)

(declare-fun lemmaFlatMapOnSingletonSet!464 ((InoxSet Context!9178) Context!9178 Int) Unit!154342)

(assert (=> b!5420749 (= lt!2210851 (lemmaFlatMapOnSingletonSet!464 lt!2210863 lt!2210821 lambda!283880))))

(declare-fun lt!2210855 () (InoxSet Context!9178))

(assert (=> b!5420749 (= lt!2210855 (derivationStepZipperUp!577 lt!2210821 (h!68238 s!2326)))))

(declare-fun derivationStepZipper!1444 ((InoxSet Context!9178) C!30680) (InoxSet Context!9178))

(assert (=> b!5420749 (= lt!2210814 (derivationStepZipper!1444 lt!2210863 (h!68238 s!2326)))))

(assert (=> b!5420749 (= lt!2210863 (store ((as const (Array Context!9178 Bool)) false) lt!2210821 true))))

(assert (=> b!5420749 (= lt!2210821 (Context!9179 (Cons!61791 (reg!15534 (regOne!30922 r!7292)) lt!2210850)))))

(declare-fun b!5420750 () Bool)

(declare-fun res!2306356 () Bool)

(declare-fun e!3359580 () Bool)

(assert (=> b!5420750 (=> res!2306356 e!3359580)))

(declare-fun lt!2210866 () tuple2!64808)

(declare-fun matchR!7390 (Regex!15205 List!61914) Bool)

(assert (=> b!5420750 (= res!2306356 (not (matchR!7390 lt!2210832 (_2!35707 lt!2210866))))))

(declare-fun b!5420751 () Bool)

(declare-fun e!3359586 () Bool)

(assert (=> b!5420751 (= e!3359586 (not e!3359584))))

(declare-fun res!2306365 () Bool)

(assert (=> b!5420751 (=> res!2306365 e!3359584)))

(assert (=> b!5420751 (= res!2306365 (not ((_ is Cons!61792) zl!343)))))

(declare-fun lt!2210825 () Bool)

(declare-fun matchRSpec!2308 (Regex!15205 List!61914) Bool)

(assert (=> b!5420751 (= lt!2210825 (matchRSpec!2308 r!7292 s!2326))))

(assert (=> b!5420751 (= lt!2210825 (matchR!7390 r!7292 s!2326))))

(declare-fun lt!2210817 () Unit!154342)

(declare-fun mainMatchTheorem!2308 (Regex!15205 List!61914) Unit!154342)

(assert (=> b!5420751 (= lt!2210817 (mainMatchTheorem!2308 r!7292 s!2326))))

(declare-fun b!5420752 () Bool)

(declare-fun tp!1496782 () Bool)

(assert (=> b!5420752 (= e!3359598 tp!1496782)))

(declare-fun b!5420753 () Bool)

(declare-fun e!3359581 () Bool)

(declare-fun e!3359595 () Bool)

(assert (=> b!5420753 (= e!3359581 e!3359595)))

(declare-fun res!2306378 () Bool)

(assert (=> b!5420753 (=> res!2306378 e!3359595)))

(declare-fun lt!2210803 () List!61916)

(assert (=> b!5420753 (= res!2306378 (not (= (unfocusZipper!947 lt!2210803) lt!2210809)))))

(assert (=> b!5420753 (= lt!2210803 (Cons!61792 lt!2210810 Nil!61792))))

(declare-fun tp!1496788 () Bool)

(declare-fun b!5420754 () Bool)

(declare-fun e!3359603 () Bool)

(assert (=> b!5420754 (= e!3359603 (and (inv!81259 (h!68240 zl!343)) e!3359597 tp!1496788))))

(declare-fun b!5420755 () Bool)

(declare-fun tp!1496783 () Bool)

(declare-fun tp!1496781 () Bool)

(assert (=> b!5420755 (= e!3359585 (and tp!1496783 tp!1496781))))

(declare-fun res!2306374 () Bool)

(declare-fun e!3359588 () Bool)

(assert (=> start!569098 (=> (not res!2306374) (not e!3359588))))

(declare-fun validRegex!6941 (Regex!15205) Bool)

(assert (=> start!569098 (= res!2306374 (validRegex!6941 r!7292))))

(assert (=> start!569098 e!3359588))

(assert (=> start!569098 e!3359585))

(declare-fun condSetEmpty!35327 () Bool)

(assert (=> start!569098 (= condSetEmpty!35327 (= z!1189 ((as const (Array Context!9178 Bool)) false)))))

(assert (=> start!569098 setRes!35327))

(assert (=> start!569098 e!3359603))

(assert (=> start!569098 e!3359589))

(declare-fun b!5420756 () Bool)

(declare-fun tp!1496786 () Bool)

(declare-fun tp!1496784 () Bool)

(assert (=> b!5420756 (= e!3359585 (and tp!1496786 tp!1496784))))

(declare-fun b!5420757 () Bool)

(declare-fun res!2306369 () Bool)

(assert (=> b!5420757 (=> (not res!2306369) (not e!3359588))))

(declare-fun toList!8989 ((InoxSet Context!9178)) List!61916)

(assert (=> b!5420757 (= res!2306369 (= (toList!8989 z!1189) zl!343))))

(declare-fun e!3359590 () Bool)

(assert (=> b!5420758 (= e!3359584 e!3359590)))

(declare-fun res!2306353 () Bool)

(assert (=> b!5420758 (=> res!2306353 e!3359590)))

(declare-fun lt!2210864 () Bool)

(assert (=> b!5420758 (= res!2306353 (or (not (= lt!2210825 lt!2210864)) ((_ is Nil!61790) s!2326)))))

(declare-fun Exists!2386 (Int) Bool)

(assert (=> b!5420758 (= (Exists!2386 lambda!283878) (Exists!2386 lambda!283879))))

(declare-fun lt!2210830 () Unit!154342)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1040 (Regex!15205 Regex!15205 List!61914) Unit!154342)

(assert (=> b!5420758 (= lt!2210830 (lemmaExistCutMatchRandMatchRSpecEquivalent!1040 (regOne!30922 r!7292) (regTwo!30922 r!7292) s!2326))))

(assert (=> b!5420758 (= lt!2210864 (Exists!2386 lambda!283878))))

(declare-fun findConcatSeparation!1730 (Regex!15205 Regex!15205 List!61914 List!61914 List!61914) Option!15316)

(assert (=> b!5420758 (= lt!2210864 (isDefined!12019 (findConcatSeparation!1730 (regOne!30922 r!7292) (regTwo!30922 r!7292) Nil!61790 s!2326 s!2326)))))

(declare-fun lt!2210848 () Unit!154342)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1494 (Regex!15205 Regex!15205 List!61914) Unit!154342)

(assert (=> b!5420758 (= lt!2210848 (lemmaFindConcatSeparationEquivalentToExists!1494 (regOne!30922 r!7292) (regTwo!30922 r!7292) s!2326))))

(declare-fun b!5420759 () Bool)

(assert (=> b!5420759 (= e!3359579 (matchZipper!1449 lt!2210831 (t!375137 s!2326)))))

(declare-fun b!5420760 () Bool)

(assert (=> b!5420760 (= e!3359580 (validRegex!6941 lt!2210832))))

(declare-fun lt!2210867 () List!61914)

(assert (=> b!5420760 (matchR!7390 lt!2210832 lt!2210867)))

(declare-fun lt!2210843 () Unit!154342)

(declare-fun lemmaStarApp!58 (Regex!15205 List!61914 List!61914) Unit!154342)

(assert (=> b!5420760 (= lt!2210843 (lemmaStarApp!58 (reg!15534 (regOne!30922 r!7292)) (_1!35707 lt!2210866) (_2!35707 lt!2210866)))))

(assert (=> b!5420761 (= e!3359590 e!3359605)))

(declare-fun res!2306376 () Bool)

(assert (=> b!5420761 (=> res!2306376 e!3359605)))

(assert (=> b!5420761 (= res!2306376 (or (and ((_ is ElementMatch!15205) (regOne!30922 r!7292)) (= (c!945345 (regOne!30922 r!7292)) (h!68238 s!2326))) ((_ is Union!15205) (regOne!30922 r!7292))))))

(declare-fun lt!2210807 () Unit!154342)

(assert (=> b!5420761 (= lt!2210807 e!3359602)))

(declare-fun c!945344 () Bool)

(assert (=> b!5420761 (= c!945344 lt!2210846)))

(assert (=> b!5420761 (= lt!2210846 (nullable!5374 (h!68239 (exprs!5089 (h!68240 zl!343)))))))

(assert (=> b!5420761 (= (flatMap!932 z!1189 lambda!283880) (derivationStepZipperUp!577 (h!68240 zl!343) (h!68238 s!2326)))))

(declare-fun lt!2210857 () Unit!154342)

(assert (=> b!5420761 (= lt!2210857 (lemmaFlatMapOnSingletonSet!464 z!1189 (h!68240 zl!343) lambda!283880))))

(declare-fun lt!2210804 () Context!9178)

(assert (=> b!5420761 (= lt!2210831 (derivationStepZipperUp!577 lt!2210804 (h!68238 s!2326)))))

(declare-fun derivationStepZipperDown!653 (Regex!15205 Context!9178 C!30680) (InoxSet Context!9178))

(assert (=> b!5420761 (= lt!2210849 (derivationStepZipperDown!653 (h!68239 (exprs!5089 (h!68240 zl!343))) lt!2210804 (h!68238 s!2326)))))

(assert (=> b!5420761 (= lt!2210804 (Context!9179 (t!375138 (exprs!5089 (h!68240 zl!343)))))))

(declare-fun lt!2210827 () (InoxSet Context!9178))

(assert (=> b!5420761 (= lt!2210827 (derivationStepZipperUp!577 (Context!9179 (Cons!61791 (h!68239 (exprs!5089 (h!68240 zl!343))) (t!375138 (exprs!5089 (h!68240 zl!343))))) (h!68238 s!2326)))))

(declare-fun b!5420762 () Bool)

(declare-fun res!2306379 () Bool)

(assert (=> b!5420762 (=> res!2306379 e!3359593)))

(declare-fun lt!2210844 () Regex!15205)

(assert (=> b!5420762 (= res!2306379 (not (= lt!2210844 r!7292)))))

(declare-fun b!5420763 () Bool)

(declare-fun res!2306354 () Bool)

(assert (=> b!5420763 (=> res!2306354 e!3359583)))

(assert (=> b!5420763 (= res!2306354 (not (matchZipper!1449 lt!2210818 (_1!35707 lt!2210826))))))

(declare-fun b!5420764 () Bool)

(assert (=> b!5420764 (= e!3359587 e!3359581)))

(declare-fun res!2306364 () Bool)

(assert (=> b!5420764 (=> res!2306364 e!3359581)))

(declare-fun lt!2210811 () List!61916)

(assert (=> b!5420764 (= res!2306364 (not (= (unfocusZipper!947 lt!2210811) (reg!15534 (regOne!30922 r!7292)))))))

(assert (=> b!5420764 (= lt!2210811 (Cons!61792 lt!2210853 Nil!61792))))

(assert (=> b!5420764 (= (flatMap!932 lt!2210868 lambda!283880) (derivationStepZipperUp!577 lt!2210810 (h!68238 s!2326)))))

(declare-fun lt!2210819 () Unit!154342)

(assert (=> b!5420764 (= lt!2210819 (lemmaFlatMapOnSingletonSet!464 lt!2210868 lt!2210810 lambda!283880))))

(assert (=> b!5420764 (= (flatMap!932 lt!2210818 lambda!283880) (derivationStepZipperUp!577 lt!2210853 (h!68238 s!2326)))))

(declare-fun lt!2210834 () Unit!154342)

(assert (=> b!5420764 (= lt!2210834 (lemmaFlatMapOnSingletonSet!464 lt!2210818 lt!2210853 lambda!283880))))

(declare-fun lt!2210824 () (InoxSet Context!9178))

(assert (=> b!5420764 (= lt!2210824 (derivationStepZipperUp!577 lt!2210810 (h!68238 s!2326)))))

(declare-fun lt!2210815 () (InoxSet Context!9178))

(assert (=> b!5420764 (= lt!2210815 (derivationStepZipperUp!577 lt!2210853 (h!68238 s!2326)))))

(assert (=> b!5420764 (= lt!2210868 (store ((as const (Array Context!9178 Bool)) false) lt!2210810 true))))

(assert (=> b!5420764 (= lt!2210818 (store ((as const (Array Context!9178 Bool)) false) lt!2210853 true))))

(assert (=> b!5420764 (= lt!2210853 (Context!9179 lt!2210841))))

(assert (=> b!5420764 (= lt!2210841 (Cons!61791 (reg!15534 (regOne!30922 r!7292)) Nil!61791))))

(declare-fun e!3359606 () Bool)

(assert (=> b!5420765 (= e!3359606 e!3359580)))

(declare-fun res!2306381 () Bool)

(assert (=> b!5420765 (=> res!2306381 e!3359580)))

(assert (=> b!5420765 (= res!2306381 (not (matchR!7390 (reg!15534 (regOne!30922 r!7292)) (_1!35707 lt!2210866))))))

(assert (=> b!5420765 (= (++!13584 lt!2210867 (_2!35707 lt!2210854)) (++!13584 (_1!35707 lt!2210866) (++!13584 (_2!35707 lt!2210866) (_2!35707 lt!2210854))))))

(assert (=> b!5420765 (= lt!2210867 (++!13584 (_1!35707 lt!2210866) (_2!35707 lt!2210866)))))

(declare-fun lt!2210842 () Unit!154342)

(declare-fun lemmaConcatAssociativity!2840 (List!61914 List!61914 List!61914) Unit!154342)

(assert (=> b!5420765 (= lt!2210842 (lemmaConcatAssociativity!2840 (_1!35707 lt!2210866) (_2!35707 lt!2210866) (_2!35707 lt!2210854)))))

(declare-fun lt!2210812 () Option!15316)

(assert (=> b!5420765 (= lt!2210866 (get!21310 lt!2210812))))

(assert (=> b!5420765 (= (Exists!2386 lambda!283885) (Exists!2386 lambda!283887))))

(declare-fun lt!2210833 () Unit!154342)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!416 (Regex!15205 List!61914) Unit!154342)

(assert (=> b!5420765 (= lt!2210833 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!416 (reg!15534 (regOne!30922 r!7292)) (_1!35707 lt!2210854)))))

(assert (=> b!5420765 (= (Exists!2386 lambda!283885) (Exists!2386 lambda!283886))))

(declare-fun lt!2210805 () Unit!154342)

(assert (=> b!5420765 (= lt!2210805 (lemmaExistCutMatchRandMatchRSpecEquivalent!1040 (reg!15534 (regOne!30922 r!7292)) lt!2210832 (_1!35707 lt!2210854)))))

(assert (=> b!5420765 (= (isDefined!12019 lt!2210812) (Exists!2386 lambda!283885))))

(assert (=> b!5420765 (= lt!2210812 (findConcatSeparation!1730 (reg!15534 (regOne!30922 r!7292)) lt!2210832 Nil!61790 (_1!35707 lt!2210854) (_1!35707 lt!2210854)))))

(declare-fun lt!2210829 () Unit!154342)

(assert (=> b!5420765 (= lt!2210829 (lemmaFindConcatSeparationEquivalentToExists!1494 (reg!15534 (regOne!30922 r!7292)) lt!2210832 (_1!35707 lt!2210854)))))

(assert (=> b!5420765 (matchRSpec!2308 lt!2210852 (_1!35707 lt!2210854))))

(declare-fun lt!2210847 () Unit!154342)

(assert (=> b!5420765 (= lt!2210847 (mainMatchTheorem!2308 lt!2210852 (_1!35707 lt!2210854)))))

(declare-fun b!5420766 () Bool)

(declare-fun res!2306350 () Bool)

(assert (=> b!5420766 (=> res!2306350 e!3359584)))

(declare-fun generalisedConcat!874 (List!61915) Regex!15205)

(assert (=> b!5420766 (= res!2306350 (not (= r!7292 (generalisedConcat!874 (exprs!5089 (h!68240 zl!343))))))))

(declare-fun b!5420767 () Bool)

(assert (=> b!5420767 (= e!3359593 e!3359594)))

(declare-fun res!2306349 () Bool)

(assert (=> b!5420767 (=> res!2306349 e!3359594)))

(assert (=> b!5420767 (= res!2306349 (not (= r!7292 lt!2210809)))))

(assert (=> b!5420767 (= lt!2210809 (Concat!24050 lt!2210832 (regTwo!30922 r!7292)))))

(declare-fun b!5420768 () Bool)

(assert (=> b!5420768 (= e!3359605 e!3359601)))

(declare-fun res!2306352 () Bool)

(assert (=> b!5420768 (=> res!2306352 e!3359601)))

(assert (=> b!5420768 (= res!2306352 (not (= lt!2210849 lt!2210865)))))

(assert (=> b!5420768 (= lt!2210865 (derivationStepZipperDown!653 (reg!15534 (regOne!30922 r!7292)) lt!2210810 (h!68238 s!2326)))))

(assert (=> b!5420768 (= lt!2210810 (Context!9179 lt!2210850))))

(assert (=> b!5420768 (= lt!2210850 (Cons!61791 lt!2210832 (t!375138 (exprs!5089 (h!68240 zl!343)))))))

(assert (=> b!5420768 (= lt!2210832 (Star!15205 (reg!15534 (regOne!30922 r!7292))))))

(declare-fun b!5420769 () Bool)

(declare-fun res!2306363 () Bool)

(assert (=> b!5420769 (=> res!2306363 e!3359584)))

(assert (=> b!5420769 (= res!2306363 (or ((_ is EmptyExpr!15205) r!7292) ((_ is EmptyLang!15205) r!7292) ((_ is ElementMatch!15205) r!7292) ((_ is Union!15205) r!7292) (not ((_ is Concat!24050) r!7292))))))

(assert (=> b!5420770 (= e!3359583 e!3359606)))

(declare-fun res!2306367 () Bool)

(assert (=> b!5420770 (=> res!2306367 e!3359606)))

(assert (=> b!5420770 (= res!2306367 (not (matchR!7390 lt!2210852 (_1!35707 lt!2210854))))))

(declare-fun lt!2210820 () Option!15316)

(assert (=> b!5420770 (= lt!2210854 (get!21310 lt!2210820))))

(assert (=> b!5420770 (= (Exists!2386 lambda!283883) (Exists!2386 lambda!283884))))

(declare-fun lt!2210858 () Unit!154342)

(assert (=> b!5420770 (= lt!2210858 (lemmaExistCutMatchRandMatchRSpecEquivalent!1040 lt!2210852 (regTwo!30922 r!7292) s!2326))))

(assert (=> b!5420770 (= (isDefined!12019 lt!2210820) (Exists!2386 lambda!283883))))

(assert (=> b!5420770 (= lt!2210820 (findConcatSeparation!1730 lt!2210852 (regTwo!30922 r!7292) Nil!61790 s!2326 s!2326))))

(declare-fun lt!2210861 () Unit!154342)

(assert (=> b!5420770 (= lt!2210861 (lemmaFindConcatSeparationEquivalentToExists!1494 lt!2210852 (regTwo!30922 r!7292) s!2326))))

(declare-fun lt!2210816 () Regex!15205)

(assert (=> b!5420770 (matchRSpec!2308 lt!2210816 s!2326)))

(declare-fun lt!2210860 () Unit!154342)

(assert (=> b!5420770 (= lt!2210860 (mainMatchTheorem!2308 lt!2210816 s!2326))))

(assert (=> b!5420770 (matchR!7390 lt!2210816 s!2326)))

(assert (=> b!5420770 (= lt!2210816 (Concat!24050 lt!2210852 (regTwo!30922 r!7292)))))

(assert (=> b!5420770 (= lt!2210852 (Concat!24050 (reg!15534 (regOne!30922 r!7292)) lt!2210832))))

(declare-fun lt!2210845 () Unit!154342)

(declare-fun lemmaConcatAssociative!58 (Regex!15205 Regex!15205 Regex!15205 List!61914) Unit!154342)

(assert (=> b!5420770 (= lt!2210845 (lemmaConcatAssociative!58 (reg!15534 (regOne!30922 r!7292)) lt!2210832 (regTwo!30922 r!7292) s!2326))))

(assert (=> b!5420770 e!3359592))

(declare-fun res!2306380 () Bool)

(assert (=> b!5420770 (=> (not res!2306380) (not e!3359592))))

(assert (=> b!5420770 (= res!2306380 (matchR!7390 lt!2210839 lt!2210859))))

(declare-fun lt!2210838 () Unit!154342)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!228 (Regex!15205 Regex!15205 List!61914 List!61914) Unit!154342)

(assert (=> b!5420770 (= lt!2210838 (lemmaTwoRegexMatchThenConcatMatchesConcatString!228 (reg!15534 (regOne!30922 r!7292)) lt!2210809 (_1!35707 lt!2210826) (_2!35707 lt!2210826)))))

(assert (=> b!5420770 (matchR!7390 lt!2210809 (_2!35707 lt!2210826))))

(declare-fun lt!2210836 () Unit!154342)

(declare-fun theoremZipperRegexEquiv!519 ((InoxSet Context!9178) List!61916 Regex!15205 List!61914) Unit!154342)

(assert (=> b!5420770 (= lt!2210836 (theoremZipperRegexEquiv!519 lt!2210868 lt!2210803 lt!2210809 (_2!35707 lt!2210826)))))

(assert (=> b!5420770 (matchR!7390 (reg!15534 (regOne!30922 r!7292)) (_1!35707 lt!2210826))))

(declare-fun lt!2210835 () Unit!154342)

(assert (=> b!5420770 (= lt!2210835 (theoremZipperRegexEquiv!519 lt!2210818 lt!2210811 (reg!15534 (regOne!30922 r!7292)) (_1!35707 lt!2210826)))))

(assert (=> b!5420770 (matchZipper!1449 (store ((as const (Array Context!9178 Bool)) false) (Context!9179 (++!13583 lt!2210841 lt!2210850)) true) lt!2210859)))

(declare-fun lt!2210828 () Unit!154342)

(assert (=> b!5420770 (= lt!2210828 (lemmaConcatPreservesForall!230 lt!2210841 lt!2210850 lambda!283882))))

(declare-fun lt!2210823 () Unit!154342)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!78 (Context!9178 Context!9178 List!61914 List!61914) Unit!154342)

(assert (=> b!5420770 (= lt!2210823 (lemmaConcatenateContextMatchesConcatOfStrings!78 lt!2210853 lt!2210810 (_1!35707 lt!2210826) (_2!35707 lt!2210826)))))

(declare-fun b!5420771 () Bool)

(declare-fun Unit!154345 () Unit!154342)

(assert (=> b!5420771 (= e!3359602 Unit!154345)))

(declare-fun b!5420772 () Bool)

(declare-fun tp!1496789 () Bool)

(assert (=> b!5420772 (= e!3359585 tp!1496789)))

(declare-fun b!5420773 () Bool)

(assert (=> b!5420773 (= e!3359588 e!3359586)))

(declare-fun res!2306366 () Bool)

(assert (=> b!5420773 (=> (not res!2306366) (not e!3359586))))

(assert (=> b!5420773 (= res!2306366 (= r!7292 lt!2210844))))

(assert (=> b!5420773 (= lt!2210844 (unfocusZipper!947 zl!343))))

(declare-fun b!5420774 () Bool)

(declare-fun res!2306377 () Bool)

(assert (=> b!5420774 (=> res!2306377 e!3359590)))

(declare-fun isEmpty!33789 (List!61915) Bool)

(assert (=> b!5420774 (= res!2306377 (isEmpty!33789 (t!375138 (exprs!5089 (h!68240 zl!343)))))))

(declare-fun b!5420775 () Bool)

(assert (=> b!5420775 (= e!3359595 e!3359596)))

(declare-fun res!2306345 () Bool)

(assert (=> b!5420775 (=> res!2306345 e!3359596)))

(assert (=> b!5420775 (= res!2306345 lt!2210825)))

(assert (=> b!5420775 (= lt!2210806 (matchRSpec!2308 lt!2210839 s!2326))))

(assert (=> b!5420775 (= lt!2210806 (matchR!7390 lt!2210839 s!2326))))

(declare-fun lt!2210802 () Unit!154342)

(assert (=> b!5420775 (= lt!2210802 (mainMatchTheorem!2308 lt!2210839 s!2326))))

(assert (= (and start!569098 res!2306374) b!5420757))

(assert (= (and b!5420757 res!2306369) b!5420773))

(assert (= (and b!5420773 res!2306366) b!5420751))

(assert (= (and b!5420751 (not res!2306365)) b!5420741))

(assert (= (and b!5420741 (not res!2306355)) b!5420766))

(assert (= (and b!5420766 (not res!2306350)) b!5420737))

(assert (= (and b!5420737 (not res!2306362)) b!5420736))

(assert (= (and b!5420736 (not res!2306372)) b!5420769))

(assert (= (and b!5420769 (not res!2306363)) b!5420758))

(assert (= (and b!5420758 (not res!2306353)) b!5420774))

(assert (= (and b!5420774 (not res!2306377)) b!5420761))

(assert (= (and b!5420761 c!945344) b!5420743))

(assert (= (and b!5420761 (not c!945344)) b!5420771))

(assert (= (and b!5420743 (not res!2306371)) b!5420759))

(assert (= (and b!5420761 (not res!2306376)) b!5420745))

(assert (= (and b!5420745 res!2306375) b!5420738))

(assert (= (and b!5420745 (not res!2306347)) b!5420729))

(assert (= (and b!5420729 (not res!2306346)) b!5420768))

(assert (= (and b!5420768 (not res!2306352)) b!5420749))

(assert (= (and b!5420749 (not res!2306351)) b!5420742))

(assert (= (and b!5420742 (not res!2306373)) b!5420762))

(assert (= (and b!5420762 (not res!2306379)) b!5420767))

(assert (= (and b!5420767 (not res!2306349)) b!5420735))

(assert (= (and b!5420735 (not res!2306368)) b!5420764))

(assert (= (and b!5420764 (not res!2306364)) b!5420753))

(assert (= (and b!5420753 (not res!2306378)) b!5420775))

(assert (= (and b!5420775 (not res!2306345)) b!5420728))

(assert (= (and b!5420728 (not res!2306370)) b!5420730))

(assert (= (and b!5420730 (not res!2306361)) b!5420731))

(assert (= (and b!5420731 res!2306357) b!5420748))

(assert (= (and b!5420731 (not res!2306360)) b!5420744))

(assert (= (and b!5420744 (not res!2306344)) b!5420733))

(assert (= (and b!5420733 (not res!2306348)) b!5420747))

(assert (= (and b!5420747 (not res!2306359)) b!5420763))

(assert (= (and b!5420763 (not res!2306354)) b!5420734))

(assert (= (and b!5420734 (not res!2306358)) b!5420770))

(assert (= (and b!5420770 res!2306380) b!5420746))

(assert (= (and b!5420770 (not res!2306367)) b!5420765))

(assert (= (and b!5420765 (not res!2306381)) b!5420750))

(assert (= (and b!5420750 (not res!2306356)) b!5420760))

(assert (= (and start!569098 ((_ is ElementMatch!15205) r!7292)) b!5420739))

(assert (= (and start!569098 ((_ is Concat!24050) r!7292)) b!5420756))

(assert (= (and start!569098 ((_ is Star!15205) r!7292)) b!5420772))

(assert (= (and start!569098 ((_ is Union!15205) r!7292)) b!5420755))

(assert (= (and start!569098 condSetEmpty!35327) setIsEmpty!35327))

(assert (= (and start!569098 (not condSetEmpty!35327)) setNonEmpty!35327))

(assert (= setNonEmpty!35327 b!5420752))

(assert (= b!5420754 b!5420740))

(assert (= (and start!569098 ((_ is Cons!61792) zl!343)) b!5420754))

(assert (= (and start!569098 ((_ is Cons!61790) s!2326)) b!5420732))

(declare-fun m!6444704 () Bool)

(assert (=> b!5420764 m!6444704))

(declare-fun m!6444706 () Bool)

(assert (=> b!5420764 m!6444706))

(declare-fun m!6444708 () Bool)

(assert (=> b!5420764 m!6444708))

(declare-fun m!6444710 () Bool)

(assert (=> b!5420764 m!6444710))

(declare-fun m!6444712 () Bool)

(assert (=> b!5420764 m!6444712))

(declare-fun m!6444714 () Bool)

(assert (=> b!5420764 m!6444714))

(declare-fun m!6444716 () Bool)

(assert (=> b!5420764 m!6444716))

(declare-fun m!6444718 () Bool)

(assert (=> b!5420764 m!6444718))

(declare-fun m!6444720 () Bool)

(assert (=> b!5420764 m!6444720))

(declare-fun m!6444722 () Bool)

(assert (=> b!5420750 m!6444722))

(declare-fun m!6444724 () Bool)

(assert (=> b!5420757 m!6444724))

(declare-fun m!6444726 () Bool)

(assert (=> b!5420736 m!6444726))

(assert (=> b!5420736 m!6444726))

(declare-fun m!6444728 () Bool)

(assert (=> b!5420736 m!6444728))

(declare-fun m!6444730 () Bool)

(assert (=> b!5420751 m!6444730))

(declare-fun m!6444732 () Bool)

(assert (=> b!5420751 m!6444732))

(declare-fun m!6444734 () Bool)

(assert (=> b!5420751 m!6444734))

(declare-fun m!6444736 () Bool)

(assert (=> b!5420741 m!6444736))

(declare-fun m!6444738 () Bool)

(assert (=> b!5420734 m!6444738))

(declare-fun m!6444740 () Bool)

(assert (=> start!569098 m!6444740))

(declare-fun m!6444742 () Bool)

(assert (=> b!5420775 m!6444742))

(declare-fun m!6444744 () Bool)

(assert (=> b!5420775 m!6444744))

(declare-fun m!6444746 () Bool)

(assert (=> b!5420775 m!6444746))

(declare-fun m!6444748 () Bool)

(assert (=> b!5420753 m!6444748))

(declare-fun m!6444750 () Bool)

(assert (=> b!5420766 m!6444750))

(declare-fun m!6444752 () Bool)

(assert (=> b!5420742 m!6444752))

(declare-fun m!6444754 () Bool)

(assert (=> b!5420742 m!6444754))

(declare-fun m!6444756 () Bool)

(assert (=> b!5420760 m!6444756))

(declare-fun m!6444758 () Bool)

(assert (=> b!5420760 m!6444758))

(declare-fun m!6444760 () Bool)

(assert (=> b!5420760 m!6444760))

(declare-fun m!6444762 () Bool)

(assert (=> b!5420763 m!6444762))

(declare-fun m!6444764 () Bool)

(assert (=> b!5420759 m!6444764))

(declare-fun m!6444766 () Bool)

(assert (=> b!5420735 m!6444766))

(declare-fun m!6444768 () Bool)

(assert (=> b!5420738 m!6444768))

(declare-fun m!6444770 () Bool)

(assert (=> b!5420754 m!6444770))

(declare-fun m!6444772 () Bool)

(assert (=> b!5420773 m!6444772))

(declare-fun m!6444774 () Bool)

(assert (=> setNonEmpty!35327 m!6444774))

(declare-fun m!6444776 () Bool)

(assert (=> b!5420758 m!6444776))

(declare-fun m!6444778 () Bool)

(assert (=> b!5420758 m!6444778))

(declare-fun m!6444780 () Bool)

(assert (=> b!5420758 m!6444780))

(declare-fun m!6444782 () Bool)

(assert (=> b!5420758 m!6444782))

(assert (=> b!5420758 m!6444782))

(declare-fun m!6444784 () Bool)

(assert (=> b!5420758 m!6444784))

(assert (=> b!5420758 m!6444778))

(declare-fun m!6444786 () Bool)

(assert (=> b!5420758 m!6444786))

(declare-fun m!6444788 () Bool)

(assert (=> b!5420731 m!6444788))

(declare-fun m!6444790 () Bool)

(assert (=> b!5420765 m!6444790))

(declare-fun m!6444792 () Bool)

(assert (=> b!5420765 m!6444792))

(declare-fun m!6444794 () Bool)

(assert (=> b!5420765 m!6444794))

(declare-fun m!6444796 () Bool)

(assert (=> b!5420765 m!6444796))

(declare-fun m!6444798 () Bool)

(assert (=> b!5420765 m!6444798))

(declare-fun m!6444800 () Bool)

(assert (=> b!5420765 m!6444800))

(declare-fun m!6444802 () Bool)

(assert (=> b!5420765 m!6444802))

(declare-fun m!6444804 () Bool)

(assert (=> b!5420765 m!6444804))

(assert (=> b!5420765 m!6444792))

(declare-fun m!6444806 () Bool)

(assert (=> b!5420765 m!6444806))

(declare-fun m!6444808 () Bool)

(assert (=> b!5420765 m!6444808))

(declare-fun m!6444810 () Bool)

(assert (=> b!5420765 m!6444810))

(declare-fun m!6444812 () Bool)

(assert (=> b!5420765 m!6444812))

(declare-fun m!6444814 () Bool)

(assert (=> b!5420765 m!6444814))

(declare-fun m!6444816 () Bool)

(assert (=> b!5420765 m!6444816))

(assert (=> b!5420765 m!6444798))

(declare-fun m!6444818 () Bool)

(assert (=> b!5420765 m!6444818))

(declare-fun m!6444820 () Bool)

(assert (=> b!5420765 m!6444820))

(assert (=> b!5420765 m!6444798))

(declare-fun m!6444822 () Bool)

(assert (=> b!5420765 m!6444822))

(declare-fun m!6444824 () Bool)

(assert (=> b!5420749 m!6444824))

(declare-fun m!6444826 () Bool)

(assert (=> b!5420749 m!6444826))

(declare-fun m!6444828 () Bool)

(assert (=> b!5420749 m!6444828))

(declare-fun m!6444830 () Bool)

(assert (=> b!5420749 m!6444830))

(declare-fun m!6444832 () Bool)

(assert (=> b!5420749 m!6444832))

(declare-fun m!6444834 () Bool)

(assert (=> b!5420770 m!6444834))

(declare-fun m!6444836 () Bool)

(assert (=> b!5420770 m!6444836))

(declare-fun m!6444838 () Bool)

(assert (=> b!5420770 m!6444838))

(declare-fun m!6444840 () Bool)

(assert (=> b!5420770 m!6444840))

(declare-fun m!6444842 () Bool)

(assert (=> b!5420770 m!6444842))

(declare-fun m!6444844 () Bool)

(assert (=> b!5420770 m!6444844))

(declare-fun m!6444846 () Bool)

(assert (=> b!5420770 m!6444846))

(declare-fun m!6444848 () Bool)

(assert (=> b!5420770 m!6444848))

(declare-fun m!6444850 () Bool)

(assert (=> b!5420770 m!6444850))

(declare-fun m!6444852 () Bool)

(assert (=> b!5420770 m!6444852))

(declare-fun m!6444854 () Bool)

(assert (=> b!5420770 m!6444854))

(declare-fun m!6444856 () Bool)

(assert (=> b!5420770 m!6444856))

(declare-fun m!6444858 () Bool)

(assert (=> b!5420770 m!6444858))

(declare-fun m!6444860 () Bool)

(assert (=> b!5420770 m!6444860))

(declare-fun m!6444862 () Bool)

(assert (=> b!5420770 m!6444862))

(declare-fun m!6444864 () Bool)

(assert (=> b!5420770 m!6444864))

(assert (=> b!5420770 m!6444854))

(declare-fun m!6444866 () Bool)

(assert (=> b!5420770 m!6444866))

(declare-fun m!6444868 () Bool)

(assert (=> b!5420770 m!6444868))

(assert (=> b!5420770 m!6444848))

(declare-fun m!6444870 () Bool)

(assert (=> b!5420770 m!6444870))

(declare-fun m!6444872 () Bool)

(assert (=> b!5420770 m!6444872))

(declare-fun m!6444874 () Bool)

(assert (=> b!5420770 m!6444874))

(declare-fun m!6444876 () Bool)

(assert (=> b!5420770 m!6444876))

(declare-fun m!6444878 () Bool)

(assert (=> b!5420770 m!6444878))

(assert (=> b!5420748 m!6444764))

(declare-fun m!6444880 () Bool)

(assert (=> b!5420774 m!6444880))

(declare-fun m!6444882 () Bool)

(assert (=> b!5420743 m!6444882))

(assert (=> b!5420743 m!6444788))

(declare-fun m!6444884 () Bool)

(assert (=> b!5420743 m!6444884))

(declare-fun m!6444886 () Bool)

(assert (=> b!5420768 m!6444886))

(assert (=> b!5420733 m!6444838))

(declare-fun m!6444888 () Bool)

(assert (=> b!5420733 m!6444888))

(declare-fun m!6444890 () Bool)

(assert (=> b!5420733 m!6444890))

(assert (=> b!5420733 m!6444848))

(declare-fun m!6444892 () Bool)

(assert (=> b!5420733 m!6444892))

(assert (=> b!5420733 m!6444836))

(declare-fun m!6444894 () Bool)

(assert (=> b!5420728 m!6444894))

(declare-fun m!6444896 () Bool)

(assert (=> b!5420761 m!6444896))

(declare-fun m!6444898 () Bool)

(assert (=> b!5420761 m!6444898))

(declare-fun m!6444900 () Bool)

(assert (=> b!5420761 m!6444900))

(declare-fun m!6444902 () Bool)

(assert (=> b!5420761 m!6444902))

(declare-fun m!6444904 () Bool)

(assert (=> b!5420761 m!6444904))

(declare-fun m!6444906 () Bool)

(assert (=> b!5420761 m!6444906))

(declare-fun m!6444908 () Bool)

(assert (=> b!5420761 m!6444908))

(declare-fun m!6444910 () Bool)

(assert (=> b!5420747 m!6444910))

(declare-fun m!6444912 () Bool)

(assert (=> b!5420747 m!6444912))

(declare-fun m!6444914 () Bool)

(assert (=> b!5420747 m!6444914))

(declare-fun m!6444916 () Bool)

(assert (=> b!5420747 m!6444916))

(declare-fun m!6444918 () Bool)

(assert (=> b!5420747 m!6444918))

(check-sat (not b!5420755) (not b!5420748) (not b!5420731) (not b!5420775) (not b!5420728) (not start!569098) (not b!5420768) (not b!5420756) (not b!5420734) (not b!5420750) (not b!5420749) (not b!5420764) (not b!5420747) (not b!5420754) (not b!5420753) (not b!5420742) (not b!5420770) (not b!5420741) tp_is_empty!39663 (not b!5420774) (not b!5420740) (not b!5420751) (not setNonEmpty!35327) (not b!5420761) (not b!5420752) (not b!5420738) (not b!5420743) (not b!5420763) (not b!5420765) (not b!5420773) (not b!5420760) (not b!5420735) (not b!5420758) (not b!5420733) (not b!5420757) (not b!5420736) (not b!5420772) (not b!5420766) (not b!5420732) (not b!5420759))
(check-sat)
(get-model)

(declare-fun bs!1252320 () Bool)

(declare-fun d!1729276 () Bool)

(assert (= bs!1252320 (and d!1729276 b!5420733)))

(declare-fun lambda!283893 () Int)

(assert (=> bs!1252320 (= lambda!283893 lambda!283882)))

(declare-fun b!5420870 () Bool)

(declare-fun e!3359658 () Bool)

(assert (=> b!5420870 (= e!3359658 (isEmpty!33789 (t!375138 (exprs!5089 (h!68240 zl!343)))))))

(declare-fun b!5420871 () Bool)

(declare-fun e!3359655 () Regex!15205)

(assert (=> b!5420871 (= e!3359655 EmptyExpr!15205)))

(declare-fun b!5420872 () Bool)

(declare-fun e!3359657 () Bool)

(declare-fun e!3359659 () Bool)

(assert (=> b!5420872 (= e!3359657 e!3359659)))

(declare-fun c!945384 () Bool)

(declare-fun tail!10726 (List!61915) List!61915)

(assert (=> b!5420872 (= c!945384 (isEmpty!33789 (tail!10726 (exprs!5089 (h!68240 zl!343)))))))

(declare-fun b!5420873 () Bool)

(declare-fun lt!2210874 () Regex!15205)

(declare-fun isEmptyExpr!988 (Regex!15205) Bool)

(assert (=> b!5420873 (= e!3359657 (isEmptyExpr!988 lt!2210874))))

(declare-fun b!5420874 () Bool)

(assert (=> b!5420874 (= e!3359655 (Concat!24050 (h!68239 (exprs!5089 (h!68240 zl!343))) (generalisedConcat!874 (t!375138 (exprs!5089 (h!68240 zl!343))))))))

(declare-fun b!5420875 () Bool)

(declare-fun e!3359656 () Regex!15205)

(assert (=> b!5420875 (= e!3359656 e!3359655)))

(declare-fun c!945381 () Bool)

(assert (=> b!5420875 (= c!945381 ((_ is Cons!61791) (exprs!5089 (h!68240 zl!343))))))

(declare-fun b!5420876 () Bool)

(assert (=> b!5420876 (= e!3359656 (h!68239 (exprs!5089 (h!68240 zl!343))))))

(declare-fun b!5420869 () Bool)

(declare-fun head!11629 (List!61915) Regex!15205)

(assert (=> b!5420869 (= e!3359659 (= lt!2210874 (head!11629 (exprs!5089 (h!68240 zl!343)))))))

(declare-fun e!3359660 () Bool)

(assert (=> d!1729276 e!3359660))

(declare-fun res!2306398 () Bool)

(assert (=> d!1729276 (=> (not res!2306398) (not e!3359660))))

(assert (=> d!1729276 (= res!2306398 (validRegex!6941 lt!2210874))))

(assert (=> d!1729276 (= lt!2210874 e!3359656)))

(declare-fun c!945382 () Bool)

(assert (=> d!1729276 (= c!945382 e!3359658)))

(declare-fun res!2306397 () Bool)

(assert (=> d!1729276 (=> (not res!2306397) (not e!3359658))))

(assert (=> d!1729276 (= res!2306397 ((_ is Cons!61791) (exprs!5089 (h!68240 zl!343))))))

(declare-fun forall!14549 (List!61915 Int) Bool)

(assert (=> d!1729276 (forall!14549 (exprs!5089 (h!68240 zl!343)) lambda!283893)))

(assert (=> d!1729276 (= (generalisedConcat!874 (exprs!5089 (h!68240 zl!343))) lt!2210874)))

(declare-fun b!5420877 () Bool)

(declare-fun isConcat!511 (Regex!15205) Bool)

(assert (=> b!5420877 (= e!3359659 (isConcat!511 lt!2210874))))

(declare-fun b!5420878 () Bool)

(assert (=> b!5420878 (= e!3359660 e!3359657)))

(declare-fun c!945383 () Bool)

(assert (=> b!5420878 (= c!945383 (isEmpty!33789 (exprs!5089 (h!68240 zl!343))))))

(assert (= (and d!1729276 res!2306397) b!5420870))

(assert (= (and d!1729276 c!945382) b!5420876))

(assert (= (and d!1729276 (not c!945382)) b!5420875))

(assert (= (and b!5420875 c!945381) b!5420874))

(assert (= (and b!5420875 (not c!945381)) b!5420871))

(assert (= (and d!1729276 res!2306398) b!5420878))

(assert (= (and b!5420878 c!945383) b!5420873))

(assert (= (and b!5420878 (not c!945383)) b!5420872))

(assert (= (and b!5420872 c!945384) b!5420869))

(assert (= (and b!5420872 (not c!945384)) b!5420877))

(declare-fun m!6444946 () Bool)

(assert (=> b!5420878 m!6444946))

(declare-fun m!6444948 () Bool)

(assert (=> b!5420874 m!6444948))

(assert (=> b!5420870 m!6444880))

(declare-fun m!6444950 () Bool)

(assert (=> d!1729276 m!6444950))

(declare-fun m!6444954 () Bool)

(assert (=> d!1729276 m!6444954))

(declare-fun m!6444956 () Bool)

(assert (=> b!5420872 m!6444956))

(assert (=> b!5420872 m!6444956))

(declare-fun m!6444958 () Bool)

(assert (=> b!5420872 m!6444958))

(declare-fun m!6444960 () Bool)

(assert (=> b!5420869 m!6444960))

(declare-fun m!6444962 () Bool)

(assert (=> b!5420877 m!6444962))

(declare-fun m!6444964 () Bool)

(assert (=> b!5420873 m!6444964))

(assert (=> b!5420766 d!1729276))

(declare-fun d!1729286 () Bool)

(declare-fun c!945395 () Bool)

(declare-fun isEmpty!33791 (List!61914) Bool)

(assert (=> d!1729286 (= c!945395 (isEmpty!33791 (t!375137 s!2326)))))

(declare-fun e!3359677 () Bool)

(assert (=> d!1729286 (= (matchZipper!1449 lt!2210831 (t!375137 s!2326)) e!3359677)))

(declare-fun b!5420905 () Bool)

(declare-fun nullableZipper!1455 ((InoxSet Context!9178)) Bool)

(assert (=> b!5420905 (= e!3359677 (nullableZipper!1455 lt!2210831))))

(declare-fun b!5420906 () Bool)

(declare-fun head!11630 (List!61914) C!30680)

(declare-fun tail!10727 (List!61914) List!61914)

(assert (=> b!5420906 (= e!3359677 (matchZipper!1449 (derivationStepZipper!1444 lt!2210831 (head!11630 (t!375137 s!2326))) (tail!10727 (t!375137 s!2326))))))

(assert (= (and d!1729286 c!945395) b!5420905))

(assert (= (and d!1729286 (not c!945395)) b!5420906))

(declare-fun m!6444968 () Bool)

(assert (=> d!1729286 m!6444968))

(declare-fun m!6444970 () Bool)

(assert (=> b!5420905 m!6444970))

(declare-fun m!6444972 () Bool)

(assert (=> b!5420906 m!6444972))

(assert (=> b!5420906 m!6444972))

(declare-fun m!6444974 () Bool)

(assert (=> b!5420906 m!6444974))

(declare-fun m!6444976 () Bool)

(assert (=> b!5420906 m!6444976))

(assert (=> b!5420906 m!6444974))

(assert (=> b!5420906 m!6444976))

(declare-fun m!6444978 () Bool)

(assert (=> b!5420906 m!6444978))

(assert (=> b!5420748 d!1729286))

(declare-fun bs!1252332 () Bool)

(declare-fun d!1729290 () Bool)

(assert (= bs!1252332 (and d!1729290 b!5420765)))

(declare-fun lambda!283907 () Int)

(assert (=> bs!1252332 (not (= lambda!283907 lambda!283886))))

(declare-fun bs!1252333 () Bool)

(assert (= bs!1252333 (and d!1729290 b!5420758)))

(assert (=> bs!1252333 (not (= lambda!283907 lambda!283879))))

(assert (=> bs!1252332 (= (and (= s!2326 (_1!35707 lt!2210854)) (= lt!2210852 (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) lt!2210832)) (= lambda!283907 lambda!283885))))

(declare-fun bs!1252334 () Bool)

(assert (= bs!1252334 (and d!1729290 b!5420770)))

(assert (=> bs!1252334 (= lambda!283907 lambda!283883)))

(assert (=> bs!1252333 (= (= lt!2210852 (regOne!30922 r!7292)) (= lambda!283907 lambda!283878))))

(assert (=> bs!1252332 (not (= lambda!283907 lambda!283887))))

(assert (=> bs!1252334 (not (= lambda!283907 lambda!283884))))

(assert (=> d!1729290 true))

(assert (=> d!1729290 true))

(assert (=> d!1729290 true))

(declare-fun bs!1252337 () Bool)

(assert (= bs!1252337 d!1729290))

(declare-fun lambda!283908 () Int)

(assert (=> bs!1252337 (not (= lambda!283908 lambda!283907))))

(assert (=> bs!1252332 (= (and (= s!2326 (_1!35707 lt!2210854)) (= lt!2210852 (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) lt!2210832)) (= lambda!283908 lambda!283886))))

(assert (=> bs!1252333 (= (= lt!2210852 (regOne!30922 r!7292)) (= lambda!283908 lambda!283879))))

(assert (=> bs!1252332 (not (= lambda!283908 lambda!283885))))

(assert (=> bs!1252334 (not (= lambda!283908 lambda!283883))))

(assert (=> bs!1252333 (not (= lambda!283908 lambda!283878))))

(assert (=> bs!1252332 (not (= lambda!283908 lambda!283887))))

(assert (=> bs!1252334 (= lambda!283908 lambda!283884)))

(assert (=> d!1729290 true))

(assert (=> d!1729290 true))

(assert (=> d!1729290 true))

(assert (=> d!1729290 (= (Exists!2386 lambda!283907) (Exists!2386 lambda!283908))))

(declare-fun lt!2210883 () Unit!154342)

(declare-fun choose!41059 (Regex!15205 Regex!15205 List!61914) Unit!154342)

(assert (=> d!1729290 (= lt!2210883 (choose!41059 lt!2210852 (regTwo!30922 r!7292) s!2326))))

(assert (=> d!1729290 (validRegex!6941 lt!2210852)))

(assert (=> d!1729290 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1040 lt!2210852 (regTwo!30922 r!7292) s!2326) lt!2210883)))

(declare-fun m!6445016 () Bool)

(assert (=> bs!1252337 m!6445016))

(declare-fun m!6445018 () Bool)

(assert (=> bs!1252337 m!6445018))

(declare-fun m!6445020 () Bool)

(assert (=> bs!1252337 m!6445020))

(declare-fun m!6445022 () Bool)

(assert (=> bs!1252337 m!6445022))

(assert (=> b!5420770 d!1729290))

(declare-fun bs!1252343 () Bool)

(declare-fun d!1729302 () Bool)

(assert (= bs!1252343 (and d!1729302 b!5420733)))

(declare-fun lambda!283916 () Int)

(assert (=> bs!1252343 (= lambda!283916 lambda!283882)))

(declare-fun bs!1252344 () Bool)

(assert (= bs!1252344 (and d!1729302 d!1729276)))

(assert (=> bs!1252344 (= lambda!283916 lambda!283893)))

(assert (=> d!1729302 (matchZipper!1449 (store ((as const (Array Context!9178 Bool)) false) (Context!9179 (++!13583 (exprs!5089 lt!2210853) (exprs!5089 lt!2210810))) true) (++!13584 (_1!35707 lt!2210826) (_2!35707 lt!2210826)))))

(declare-fun lt!2210904 () Unit!154342)

(assert (=> d!1729302 (= lt!2210904 (lemmaConcatPreservesForall!230 (exprs!5089 lt!2210853) (exprs!5089 lt!2210810) lambda!283916))))

(declare-fun lt!2210903 () Unit!154342)

(declare-fun choose!41060 (Context!9178 Context!9178 List!61914 List!61914) Unit!154342)

(assert (=> d!1729302 (= lt!2210903 (choose!41060 lt!2210853 lt!2210810 (_1!35707 lt!2210826) (_2!35707 lt!2210826)))))

(assert (=> d!1729302 (matchZipper!1449 (store ((as const (Array Context!9178 Bool)) false) lt!2210853 true) (_1!35707 lt!2210826))))

(assert (=> d!1729302 (= (lemmaConcatenateContextMatchesConcatOfStrings!78 lt!2210853 lt!2210810 (_1!35707 lt!2210826) (_2!35707 lt!2210826)) lt!2210903)))

(declare-fun bs!1252345 () Bool)

(assert (= bs!1252345 d!1729302))

(declare-fun m!6445048 () Bool)

(assert (=> bs!1252345 m!6445048))

(declare-fun m!6445050 () Bool)

(assert (=> bs!1252345 m!6445050))

(assert (=> bs!1252345 m!6444916))

(declare-fun m!6445052 () Bool)

(assert (=> bs!1252345 m!6445052))

(assert (=> bs!1252345 m!6445050))

(declare-fun m!6445054 () Bool)

(assert (=> bs!1252345 m!6445054))

(assert (=> bs!1252345 m!6444716))

(assert (=> bs!1252345 m!6444716))

(declare-fun m!6445056 () Bool)

(assert (=> bs!1252345 m!6445056))

(assert (=> bs!1252345 m!6444916))

(declare-fun m!6445058 () Bool)

(assert (=> bs!1252345 m!6445058))

(assert (=> b!5420770 d!1729302))

(declare-fun b!5421055 () Bool)

(declare-fun res!2306494 () Bool)

(declare-fun e!3359755 () Bool)

(assert (=> b!5421055 (=> res!2306494 e!3359755)))

(assert (=> b!5421055 (= res!2306494 (not (isEmpty!33791 (tail!10727 s!2326))))))

(declare-fun b!5421056 () Bool)

(declare-fun e!3359754 () Bool)

(declare-fun derivativeStep!4277 (Regex!15205 C!30680) Regex!15205)

(assert (=> b!5421056 (= e!3359754 (matchR!7390 (derivativeStep!4277 lt!2210816 (head!11630 s!2326)) (tail!10727 s!2326)))))

(declare-fun d!1729312 () Bool)

(declare-fun e!3359753 () Bool)

(assert (=> d!1729312 e!3359753))

(declare-fun c!945431 () Bool)

(assert (=> d!1729312 (= c!945431 ((_ is EmptyExpr!15205) lt!2210816))))

(declare-fun lt!2210916 () Bool)

(assert (=> d!1729312 (= lt!2210916 e!3359754)))

(declare-fun c!945429 () Bool)

(assert (=> d!1729312 (= c!945429 (isEmpty!33791 s!2326))))

(assert (=> d!1729312 (validRegex!6941 lt!2210816)))

(assert (=> d!1729312 (= (matchR!7390 lt!2210816 s!2326) lt!2210916)))

(declare-fun b!5421057 () Bool)

(declare-fun e!3359758 () Bool)

(assert (=> b!5421057 (= e!3359758 e!3359755)))

(declare-fun res!2306488 () Bool)

(assert (=> b!5421057 (=> res!2306488 e!3359755)))

(declare-fun call!387956 () Bool)

(assert (=> b!5421057 (= res!2306488 call!387956)))

(declare-fun b!5421058 () Bool)

(declare-fun e!3359759 () Bool)

(assert (=> b!5421058 (= e!3359759 (not lt!2210916))))

(declare-fun b!5421059 () Bool)

(declare-fun res!2306489 () Bool)

(declare-fun e!3359756 () Bool)

(assert (=> b!5421059 (=> res!2306489 e!3359756)))

(declare-fun e!3359757 () Bool)

(assert (=> b!5421059 (= res!2306489 e!3359757)))

(declare-fun res!2306491 () Bool)

(assert (=> b!5421059 (=> (not res!2306491) (not e!3359757))))

(assert (=> b!5421059 (= res!2306491 lt!2210916)))

(declare-fun b!5421060 () Bool)

(declare-fun res!2306490 () Bool)

(assert (=> b!5421060 (=> res!2306490 e!3359756)))

(assert (=> b!5421060 (= res!2306490 (not ((_ is ElementMatch!15205) lt!2210816)))))

(assert (=> b!5421060 (= e!3359759 e!3359756)))

(declare-fun b!5421061 () Bool)

(assert (=> b!5421061 (= e!3359754 (nullable!5374 lt!2210816))))

(declare-fun b!5421062 () Bool)

(assert (=> b!5421062 (= e!3359757 (= (head!11630 s!2326) (c!945345 lt!2210816)))))

(declare-fun b!5421063 () Bool)

(assert (=> b!5421063 (= e!3359756 e!3359758)))

(declare-fun res!2306487 () Bool)

(assert (=> b!5421063 (=> (not res!2306487) (not e!3359758))))

(assert (=> b!5421063 (= res!2306487 (not lt!2210916))))

(declare-fun b!5421064 () Bool)

(assert (=> b!5421064 (= e!3359753 e!3359759)))

(declare-fun c!945430 () Bool)

(assert (=> b!5421064 (= c!945430 ((_ is EmptyLang!15205) lt!2210816))))

(declare-fun b!5421065 () Bool)

(assert (=> b!5421065 (= e!3359755 (not (= (head!11630 s!2326) (c!945345 lt!2210816))))))

(declare-fun b!5421066 () Bool)

(assert (=> b!5421066 (= e!3359753 (= lt!2210916 call!387956))))

(declare-fun b!5421067 () Bool)

(declare-fun res!2306492 () Bool)

(assert (=> b!5421067 (=> (not res!2306492) (not e!3359757))))

(assert (=> b!5421067 (= res!2306492 (not call!387956))))

(declare-fun bm!387951 () Bool)

(assert (=> bm!387951 (= call!387956 (isEmpty!33791 s!2326))))

(declare-fun b!5421068 () Bool)

(declare-fun res!2306493 () Bool)

(assert (=> b!5421068 (=> (not res!2306493) (not e!3359757))))

(assert (=> b!5421068 (= res!2306493 (isEmpty!33791 (tail!10727 s!2326)))))

(assert (= (and d!1729312 c!945429) b!5421061))

(assert (= (and d!1729312 (not c!945429)) b!5421056))

(assert (= (and d!1729312 c!945431) b!5421066))

(assert (= (and d!1729312 (not c!945431)) b!5421064))

(assert (= (and b!5421064 c!945430) b!5421058))

(assert (= (and b!5421064 (not c!945430)) b!5421060))

(assert (= (and b!5421060 (not res!2306490)) b!5421059))

(assert (= (and b!5421059 res!2306491) b!5421067))

(assert (= (and b!5421067 res!2306492) b!5421068))

(assert (= (and b!5421068 res!2306493) b!5421062))

(assert (= (and b!5421059 (not res!2306489)) b!5421063))

(assert (= (and b!5421063 res!2306487) b!5421057))

(assert (= (and b!5421057 (not res!2306488)) b!5421055))

(assert (= (and b!5421055 (not res!2306494)) b!5421065))

(assert (= (or b!5421066 b!5421067 b!5421057) bm!387951))

(declare-fun m!6445106 () Bool)

(assert (=> b!5421061 m!6445106))

(declare-fun m!6445108 () Bool)

(assert (=> b!5421068 m!6445108))

(assert (=> b!5421068 m!6445108))

(declare-fun m!6445110 () Bool)

(assert (=> b!5421068 m!6445110))

(declare-fun m!6445112 () Bool)

(assert (=> b!5421056 m!6445112))

(assert (=> b!5421056 m!6445112))

(declare-fun m!6445114 () Bool)

(assert (=> b!5421056 m!6445114))

(assert (=> b!5421056 m!6445108))

(assert (=> b!5421056 m!6445114))

(assert (=> b!5421056 m!6445108))

(declare-fun m!6445116 () Bool)

(assert (=> b!5421056 m!6445116))

(declare-fun m!6445118 () Bool)

(assert (=> d!1729312 m!6445118))

(declare-fun m!6445120 () Bool)

(assert (=> d!1729312 m!6445120))

(assert (=> b!5421055 m!6445108))

(assert (=> b!5421055 m!6445108))

(assert (=> b!5421055 m!6445110))

(assert (=> b!5421065 m!6445112))

(assert (=> b!5421062 m!6445112))

(assert (=> bm!387951 m!6445118))

(assert (=> b!5420770 d!1729312))

(declare-fun b!5421081 () Bool)

(declare-fun e!3359766 () List!61915)

(assert (=> b!5421081 (= e!3359766 lt!2210850)))

(declare-fun b!5421082 () Bool)

(assert (=> b!5421082 (= e!3359766 (Cons!61791 (h!68239 lt!2210841) (++!13583 (t!375138 lt!2210841) lt!2210850)))))

(declare-fun d!1729324 () Bool)

(declare-fun e!3359767 () Bool)

(assert (=> d!1729324 e!3359767))

(declare-fun res!2306504 () Bool)

(assert (=> d!1729324 (=> (not res!2306504) (not e!3359767))))

(declare-fun lt!2210922 () List!61915)

(declare-fun content!11113 (List!61915) (InoxSet Regex!15205))

(assert (=> d!1729324 (= res!2306504 (= (content!11113 lt!2210922) ((_ map or) (content!11113 lt!2210841) (content!11113 lt!2210850))))))

(assert (=> d!1729324 (= lt!2210922 e!3359766)))

(declare-fun c!945434 () Bool)

(assert (=> d!1729324 (= c!945434 ((_ is Nil!61791) lt!2210841))))

(assert (=> d!1729324 (= (++!13583 lt!2210841 lt!2210850) lt!2210922)))

(declare-fun b!5421083 () Bool)

(declare-fun res!2306503 () Bool)

(assert (=> b!5421083 (=> (not res!2306503) (not e!3359767))))

(declare-fun size!39878 (List!61915) Int)

(assert (=> b!5421083 (= res!2306503 (= (size!39878 lt!2210922) (+ (size!39878 lt!2210841) (size!39878 lt!2210850))))))

(declare-fun b!5421084 () Bool)

(assert (=> b!5421084 (= e!3359767 (or (not (= lt!2210850 Nil!61791)) (= lt!2210922 lt!2210841)))))

(assert (= (and d!1729324 c!945434) b!5421081))

(assert (= (and d!1729324 (not c!945434)) b!5421082))

(assert (= (and d!1729324 res!2306504) b!5421083))

(assert (= (and b!5421083 res!2306503) b!5421084))

(declare-fun m!6445126 () Bool)

(assert (=> b!5421082 m!6445126))

(declare-fun m!6445128 () Bool)

(assert (=> d!1729324 m!6445128))

(declare-fun m!6445130 () Bool)

(assert (=> d!1729324 m!6445130))

(declare-fun m!6445132 () Bool)

(assert (=> d!1729324 m!6445132))

(declare-fun m!6445134 () Bool)

(assert (=> b!5421083 m!6445134))

(declare-fun m!6445136 () Bool)

(assert (=> b!5421083 m!6445136))

(declare-fun m!6445138 () Bool)

(assert (=> b!5421083 m!6445138))

(assert (=> b!5420770 d!1729324))

(declare-fun d!1729328 () Bool)

(assert (=> d!1729328 (= (matchR!7390 (reg!15534 (regOne!30922 r!7292)) (_1!35707 lt!2210826)) (matchZipper!1449 lt!2210818 (_1!35707 lt!2210826)))))

(declare-fun lt!2210928 () Unit!154342)

(declare-fun choose!41063 ((InoxSet Context!9178) List!61916 Regex!15205 List!61914) Unit!154342)

(assert (=> d!1729328 (= lt!2210928 (choose!41063 lt!2210818 lt!2210811 (reg!15534 (regOne!30922 r!7292)) (_1!35707 lt!2210826)))))

(assert (=> d!1729328 (validRegex!6941 (reg!15534 (regOne!30922 r!7292)))))

(assert (=> d!1729328 (= (theoremZipperRegexEquiv!519 lt!2210818 lt!2210811 (reg!15534 (regOne!30922 r!7292)) (_1!35707 lt!2210826)) lt!2210928)))

(declare-fun bs!1252361 () Bool)

(assert (= bs!1252361 d!1729328))

(assert (=> bs!1252361 m!6444864))

(assert (=> bs!1252361 m!6444762))

(declare-fun m!6445146 () Bool)

(assert (=> bs!1252361 m!6445146))

(declare-fun m!6445148 () Bool)

(assert (=> bs!1252361 m!6445148))

(assert (=> b!5420770 d!1729328))

(declare-fun d!1729332 () Bool)

(assert (=> d!1729332 (= (matchR!7390 (Concat!24050 (Concat!24050 (reg!15534 (regOne!30922 r!7292)) lt!2210832) (regTwo!30922 r!7292)) s!2326) (matchR!7390 (Concat!24050 (reg!15534 (regOne!30922 r!7292)) (Concat!24050 lt!2210832 (regTwo!30922 r!7292))) s!2326))))

(declare-fun lt!2210934 () Unit!154342)

(declare-fun choose!41064 (Regex!15205 Regex!15205 Regex!15205 List!61914) Unit!154342)

(assert (=> d!1729332 (= lt!2210934 (choose!41064 (reg!15534 (regOne!30922 r!7292)) lt!2210832 (regTwo!30922 r!7292) s!2326))))

(declare-fun e!3359781 () Bool)

(assert (=> d!1729332 e!3359781))

(declare-fun res!2306520 () Bool)

(assert (=> d!1729332 (=> (not res!2306520) (not e!3359781))))

(assert (=> d!1729332 (= res!2306520 (validRegex!6941 (reg!15534 (regOne!30922 r!7292))))))

(assert (=> d!1729332 (= (lemmaConcatAssociative!58 (reg!15534 (regOne!30922 r!7292)) lt!2210832 (regTwo!30922 r!7292) s!2326) lt!2210934)))

(declare-fun b!5421108 () Bool)

(declare-fun res!2306521 () Bool)

(assert (=> b!5421108 (=> (not res!2306521) (not e!3359781))))

(assert (=> b!5421108 (= res!2306521 (validRegex!6941 lt!2210832))))

(declare-fun b!5421109 () Bool)

(assert (=> b!5421109 (= e!3359781 (validRegex!6941 (regTwo!30922 r!7292)))))

(assert (= (and d!1729332 res!2306520) b!5421108))

(assert (= (and b!5421108 res!2306521) b!5421109))

(declare-fun m!6445184 () Bool)

(assert (=> d!1729332 m!6445184))

(declare-fun m!6445186 () Bool)

(assert (=> d!1729332 m!6445186))

(declare-fun m!6445188 () Bool)

(assert (=> d!1729332 m!6445188))

(assert (=> d!1729332 m!6445148))

(assert (=> b!5421108 m!6444756))

(declare-fun m!6445190 () Bool)

(assert (=> b!5421109 m!6445190))

(assert (=> b!5420770 d!1729332))

(declare-fun d!1729346 () Bool)

(declare-fun choose!41066 (Int) Bool)

(assert (=> d!1729346 (= (Exists!2386 lambda!283884) (choose!41066 lambda!283884))))

(declare-fun bs!1252363 () Bool)

(assert (= bs!1252363 d!1729346))

(declare-fun m!6445192 () Bool)

(assert (=> bs!1252363 m!6445192))

(assert (=> b!5420770 d!1729346))

(declare-fun d!1729348 () Bool)

(assert (=> d!1729348 (= (get!21310 lt!2210820) (v!51344 lt!2210820))))

(assert (=> b!5420770 d!1729348))

(declare-fun d!1729350 () Bool)

(declare-fun isEmpty!33793 (Option!15316) Bool)

(assert (=> d!1729350 (= (isDefined!12019 lt!2210820) (not (isEmpty!33793 lt!2210820)))))

(declare-fun bs!1252364 () Bool)

(assert (= bs!1252364 d!1729350))

(declare-fun m!6445194 () Bool)

(assert (=> bs!1252364 m!6445194))

(assert (=> b!5420770 d!1729350))

(declare-fun d!1729352 () Bool)

(assert (=> d!1729352 (matchR!7390 (Concat!24050 (reg!15534 (regOne!30922 r!7292)) lt!2210809) (++!13584 (_1!35707 lt!2210826) (_2!35707 lt!2210826)))))

(declare-fun lt!2210939 () Unit!154342)

(declare-fun choose!41067 (Regex!15205 Regex!15205 List!61914 List!61914) Unit!154342)

(assert (=> d!1729352 (= lt!2210939 (choose!41067 (reg!15534 (regOne!30922 r!7292)) lt!2210809 (_1!35707 lt!2210826) (_2!35707 lt!2210826)))))

(declare-fun e!3359796 () Bool)

(assert (=> d!1729352 e!3359796))

(declare-fun res!2306528 () Bool)

(assert (=> d!1729352 (=> (not res!2306528) (not e!3359796))))

(assert (=> d!1729352 (= res!2306528 (validRegex!6941 (reg!15534 (regOne!30922 r!7292))))))

(assert (=> d!1729352 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!228 (reg!15534 (regOne!30922 r!7292)) lt!2210809 (_1!35707 lt!2210826) (_2!35707 lt!2210826)) lt!2210939)))

(declare-fun b!5421132 () Bool)

(assert (=> b!5421132 (= e!3359796 (validRegex!6941 lt!2210809))))

(assert (= (and d!1729352 res!2306528) b!5421132))

(assert (=> d!1729352 m!6444916))

(assert (=> d!1729352 m!6444916))

(declare-fun m!6445196 () Bool)

(assert (=> d!1729352 m!6445196))

(declare-fun m!6445198 () Bool)

(assert (=> d!1729352 m!6445198))

(assert (=> d!1729352 m!6445148))

(declare-fun m!6445200 () Bool)

(assert (=> b!5421132 m!6445200))

(assert (=> b!5420770 d!1729352))

(declare-fun d!1729354 () Bool)

(declare-fun c!945447 () Bool)

(assert (=> d!1729354 (= c!945447 (isEmpty!33791 lt!2210859))))

(declare-fun e!3359797 () Bool)

(assert (=> d!1729354 (= (matchZipper!1449 (store ((as const (Array Context!9178 Bool)) false) (Context!9179 (++!13583 lt!2210841 lt!2210850)) true) lt!2210859) e!3359797)))

(declare-fun b!5421133 () Bool)

(assert (=> b!5421133 (= e!3359797 (nullableZipper!1455 (store ((as const (Array Context!9178 Bool)) false) (Context!9179 (++!13583 lt!2210841 lt!2210850)) true)))))

(declare-fun b!5421134 () Bool)

(assert (=> b!5421134 (= e!3359797 (matchZipper!1449 (derivationStepZipper!1444 (store ((as const (Array Context!9178 Bool)) false) (Context!9179 (++!13583 lt!2210841 lt!2210850)) true) (head!11630 lt!2210859)) (tail!10727 lt!2210859)))))

(assert (= (and d!1729354 c!945447) b!5421133))

(assert (= (and d!1729354 (not c!945447)) b!5421134))

(declare-fun m!6445202 () Bool)

(assert (=> d!1729354 m!6445202))

(assert (=> b!5421133 m!6444848))

(declare-fun m!6445204 () Bool)

(assert (=> b!5421133 m!6445204))

(declare-fun m!6445206 () Bool)

(assert (=> b!5421134 m!6445206))

(assert (=> b!5421134 m!6444848))

(assert (=> b!5421134 m!6445206))

(declare-fun m!6445208 () Bool)

(assert (=> b!5421134 m!6445208))

(declare-fun m!6445210 () Bool)

(assert (=> b!5421134 m!6445210))

(assert (=> b!5421134 m!6445208))

(assert (=> b!5421134 m!6445210))

(declare-fun m!6445212 () Bool)

(assert (=> b!5421134 m!6445212))

(assert (=> b!5420770 d!1729354))

(declare-fun b!5421135 () Bool)

(declare-fun res!2306536 () Bool)

(declare-fun e!3359800 () Bool)

(assert (=> b!5421135 (=> res!2306536 e!3359800)))

(assert (=> b!5421135 (= res!2306536 (not (isEmpty!33791 (tail!10727 (_1!35707 lt!2210854)))))))

(declare-fun b!5421136 () Bool)

(declare-fun e!3359799 () Bool)

(assert (=> b!5421136 (= e!3359799 (matchR!7390 (derivativeStep!4277 lt!2210852 (head!11630 (_1!35707 lt!2210854))) (tail!10727 (_1!35707 lt!2210854))))))

(declare-fun d!1729356 () Bool)

(declare-fun e!3359798 () Bool)

(assert (=> d!1729356 e!3359798))

(declare-fun c!945450 () Bool)

(assert (=> d!1729356 (= c!945450 ((_ is EmptyExpr!15205) lt!2210852))))

(declare-fun lt!2210940 () Bool)

(assert (=> d!1729356 (= lt!2210940 e!3359799)))

(declare-fun c!945448 () Bool)

(assert (=> d!1729356 (= c!945448 (isEmpty!33791 (_1!35707 lt!2210854)))))

(assert (=> d!1729356 (validRegex!6941 lt!2210852)))

(assert (=> d!1729356 (= (matchR!7390 lt!2210852 (_1!35707 lt!2210854)) lt!2210940)))

(declare-fun b!5421137 () Bool)

(declare-fun e!3359803 () Bool)

(assert (=> b!5421137 (= e!3359803 e!3359800)))

(declare-fun res!2306530 () Bool)

(assert (=> b!5421137 (=> res!2306530 e!3359800)))

(declare-fun call!387957 () Bool)

(assert (=> b!5421137 (= res!2306530 call!387957)))

(declare-fun b!5421138 () Bool)

(declare-fun e!3359804 () Bool)

(assert (=> b!5421138 (= e!3359804 (not lt!2210940))))

(declare-fun b!5421139 () Bool)

(declare-fun res!2306531 () Bool)

(declare-fun e!3359801 () Bool)

(assert (=> b!5421139 (=> res!2306531 e!3359801)))

(declare-fun e!3359802 () Bool)

(assert (=> b!5421139 (= res!2306531 e!3359802)))

(declare-fun res!2306533 () Bool)

(assert (=> b!5421139 (=> (not res!2306533) (not e!3359802))))

(assert (=> b!5421139 (= res!2306533 lt!2210940)))

(declare-fun b!5421140 () Bool)

(declare-fun res!2306532 () Bool)

(assert (=> b!5421140 (=> res!2306532 e!3359801)))

(assert (=> b!5421140 (= res!2306532 (not ((_ is ElementMatch!15205) lt!2210852)))))

(assert (=> b!5421140 (= e!3359804 e!3359801)))

(declare-fun b!5421141 () Bool)

(assert (=> b!5421141 (= e!3359799 (nullable!5374 lt!2210852))))

(declare-fun b!5421142 () Bool)

(assert (=> b!5421142 (= e!3359802 (= (head!11630 (_1!35707 lt!2210854)) (c!945345 lt!2210852)))))

(declare-fun b!5421143 () Bool)

(assert (=> b!5421143 (= e!3359801 e!3359803)))

(declare-fun res!2306529 () Bool)

(assert (=> b!5421143 (=> (not res!2306529) (not e!3359803))))

(assert (=> b!5421143 (= res!2306529 (not lt!2210940))))

(declare-fun b!5421144 () Bool)

(assert (=> b!5421144 (= e!3359798 e!3359804)))

(declare-fun c!945449 () Bool)

(assert (=> b!5421144 (= c!945449 ((_ is EmptyLang!15205) lt!2210852))))

(declare-fun b!5421145 () Bool)

(assert (=> b!5421145 (= e!3359800 (not (= (head!11630 (_1!35707 lt!2210854)) (c!945345 lt!2210852))))))

(declare-fun b!5421146 () Bool)

(assert (=> b!5421146 (= e!3359798 (= lt!2210940 call!387957))))

(declare-fun b!5421147 () Bool)

(declare-fun res!2306534 () Bool)

(assert (=> b!5421147 (=> (not res!2306534) (not e!3359802))))

(assert (=> b!5421147 (= res!2306534 (not call!387957))))

(declare-fun bm!387952 () Bool)

(assert (=> bm!387952 (= call!387957 (isEmpty!33791 (_1!35707 lt!2210854)))))

(declare-fun b!5421148 () Bool)

(declare-fun res!2306535 () Bool)

(assert (=> b!5421148 (=> (not res!2306535) (not e!3359802))))

(assert (=> b!5421148 (= res!2306535 (isEmpty!33791 (tail!10727 (_1!35707 lt!2210854))))))

(assert (= (and d!1729356 c!945448) b!5421141))

(assert (= (and d!1729356 (not c!945448)) b!5421136))

(assert (= (and d!1729356 c!945450) b!5421146))

(assert (= (and d!1729356 (not c!945450)) b!5421144))

(assert (= (and b!5421144 c!945449) b!5421138))

(assert (= (and b!5421144 (not c!945449)) b!5421140))

(assert (= (and b!5421140 (not res!2306532)) b!5421139))

(assert (= (and b!5421139 res!2306533) b!5421147))

(assert (= (and b!5421147 res!2306534) b!5421148))

(assert (= (and b!5421148 res!2306535) b!5421142))

(assert (= (and b!5421139 (not res!2306531)) b!5421143))

(assert (= (and b!5421143 res!2306529) b!5421137))

(assert (= (and b!5421137 (not res!2306530)) b!5421135))

(assert (= (and b!5421135 (not res!2306536)) b!5421145))

(assert (= (or b!5421146 b!5421147 b!5421137) bm!387952))

(declare-fun m!6445214 () Bool)

(assert (=> b!5421141 m!6445214))

(declare-fun m!6445216 () Bool)

(assert (=> b!5421148 m!6445216))

(assert (=> b!5421148 m!6445216))

(declare-fun m!6445218 () Bool)

(assert (=> b!5421148 m!6445218))

(declare-fun m!6445220 () Bool)

(assert (=> b!5421136 m!6445220))

(assert (=> b!5421136 m!6445220))

(declare-fun m!6445222 () Bool)

(assert (=> b!5421136 m!6445222))

(assert (=> b!5421136 m!6445216))

(assert (=> b!5421136 m!6445222))

(assert (=> b!5421136 m!6445216))

(declare-fun m!6445224 () Bool)

(assert (=> b!5421136 m!6445224))

(declare-fun m!6445226 () Bool)

(assert (=> d!1729356 m!6445226))

(assert (=> d!1729356 m!6445022))

(assert (=> b!5421135 m!6445216))

(assert (=> b!5421135 m!6445216))

(assert (=> b!5421135 m!6445218))

(assert (=> b!5421145 m!6445220))

(assert (=> b!5421142 m!6445220))

(assert (=> bm!387952 m!6445226))

(assert (=> b!5420770 d!1729356))

(declare-fun d!1729358 () Bool)

(assert (=> d!1729358 (= (Exists!2386 lambda!283883) (choose!41066 lambda!283883))))

(declare-fun bs!1252368 () Bool)

(assert (= bs!1252368 d!1729358))

(declare-fun m!6445228 () Bool)

(assert (=> bs!1252368 m!6445228))

(assert (=> b!5420770 d!1729358))

(declare-fun d!1729360 () Bool)

(assert (=> d!1729360 (forall!14549 (++!13583 lt!2210841 lt!2210850) lambda!283882)))

(declare-fun lt!2210944 () Unit!154342)

(declare-fun choose!41069 (List!61915 List!61915 Int) Unit!154342)

(assert (=> d!1729360 (= lt!2210944 (choose!41069 lt!2210841 lt!2210850 lambda!283882))))

(assert (=> d!1729360 (forall!14549 lt!2210841 lambda!283882)))

(assert (=> d!1729360 (= (lemmaConcatPreservesForall!230 lt!2210841 lt!2210850 lambda!283882) lt!2210944)))

(declare-fun bs!1252369 () Bool)

(assert (= bs!1252369 d!1729360))

(assert (=> bs!1252369 m!6444838))

(assert (=> bs!1252369 m!6444838))

(declare-fun m!6445250 () Bool)

(assert (=> bs!1252369 m!6445250))

(declare-fun m!6445252 () Bool)

(assert (=> bs!1252369 m!6445252))

(declare-fun m!6445254 () Bool)

(assert (=> bs!1252369 m!6445254))

(assert (=> b!5420770 d!1729360))

(declare-fun b!5421163 () Bool)

(declare-fun res!2306546 () Bool)

(declare-fun e!3359815 () Bool)

(assert (=> b!5421163 (=> res!2306546 e!3359815)))

(assert (=> b!5421163 (= res!2306546 (not (isEmpty!33791 (tail!10727 (_1!35707 lt!2210826)))))))

(declare-fun b!5421164 () Bool)

(declare-fun e!3359814 () Bool)

(assert (=> b!5421164 (= e!3359814 (matchR!7390 (derivativeStep!4277 (reg!15534 (regOne!30922 r!7292)) (head!11630 (_1!35707 lt!2210826))) (tail!10727 (_1!35707 lt!2210826))))))

(declare-fun d!1729364 () Bool)

(declare-fun e!3359813 () Bool)

(assert (=> d!1729364 e!3359813))

(declare-fun c!945459 () Bool)

(assert (=> d!1729364 (= c!945459 ((_ is EmptyExpr!15205) (reg!15534 (regOne!30922 r!7292))))))

(declare-fun lt!2210947 () Bool)

(assert (=> d!1729364 (= lt!2210947 e!3359814)))

(declare-fun c!945457 () Bool)

(assert (=> d!1729364 (= c!945457 (isEmpty!33791 (_1!35707 lt!2210826)))))

(assert (=> d!1729364 (validRegex!6941 (reg!15534 (regOne!30922 r!7292)))))

(assert (=> d!1729364 (= (matchR!7390 (reg!15534 (regOne!30922 r!7292)) (_1!35707 lt!2210826)) lt!2210947)))

(declare-fun b!5421165 () Bool)

(declare-fun e!3359818 () Bool)

(assert (=> b!5421165 (= e!3359818 e!3359815)))

(declare-fun res!2306540 () Bool)

(assert (=> b!5421165 (=> res!2306540 e!3359815)))

(declare-fun call!387958 () Bool)

(assert (=> b!5421165 (= res!2306540 call!387958)))

(declare-fun b!5421166 () Bool)

(declare-fun e!3359819 () Bool)

(assert (=> b!5421166 (= e!3359819 (not lt!2210947))))

(declare-fun b!5421167 () Bool)

(declare-fun res!2306541 () Bool)

(declare-fun e!3359816 () Bool)

(assert (=> b!5421167 (=> res!2306541 e!3359816)))

(declare-fun e!3359817 () Bool)

(assert (=> b!5421167 (= res!2306541 e!3359817)))

(declare-fun res!2306543 () Bool)

(assert (=> b!5421167 (=> (not res!2306543) (not e!3359817))))

(assert (=> b!5421167 (= res!2306543 lt!2210947)))

(declare-fun b!5421168 () Bool)

(declare-fun res!2306542 () Bool)

(assert (=> b!5421168 (=> res!2306542 e!3359816)))

(assert (=> b!5421168 (= res!2306542 (not ((_ is ElementMatch!15205) (reg!15534 (regOne!30922 r!7292)))))))

(assert (=> b!5421168 (= e!3359819 e!3359816)))

(declare-fun b!5421169 () Bool)

(assert (=> b!5421169 (= e!3359814 (nullable!5374 (reg!15534 (regOne!30922 r!7292))))))

(declare-fun b!5421170 () Bool)

(assert (=> b!5421170 (= e!3359817 (= (head!11630 (_1!35707 lt!2210826)) (c!945345 (reg!15534 (regOne!30922 r!7292)))))))

(declare-fun b!5421171 () Bool)

(assert (=> b!5421171 (= e!3359816 e!3359818)))

(declare-fun res!2306539 () Bool)

(assert (=> b!5421171 (=> (not res!2306539) (not e!3359818))))

(assert (=> b!5421171 (= res!2306539 (not lt!2210947))))

(declare-fun b!5421172 () Bool)

(assert (=> b!5421172 (= e!3359813 e!3359819)))

(declare-fun c!945458 () Bool)

(assert (=> b!5421172 (= c!945458 ((_ is EmptyLang!15205) (reg!15534 (regOne!30922 r!7292))))))

(declare-fun b!5421173 () Bool)

(assert (=> b!5421173 (= e!3359815 (not (= (head!11630 (_1!35707 lt!2210826)) (c!945345 (reg!15534 (regOne!30922 r!7292))))))))

(declare-fun b!5421174 () Bool)

(assert (=> b!5421174 (= e!3359813 (= lt!2210947 call!387958))))

(declare-fun b!5421175 () Bool)

(declare-fun res!2306544 () Bool)

(assert (=> b!5421175 (=> (not res!2306544) (not e!3359817))))

(assert (=> b!5421175 (= res!2306544 (not call!387958))))

(declare-fun bm!387953 () Bool)

(assert (=> bm!387953 (= call!387958 (isEmpty!33791 (_1!35707 lt!2210826)))))

(declare-fun b!5421176 () Bool)

(declare-fun res!2306545 () Bool)

(assert (=> b!5421176 (=> (not res!2306545) (not e!3359817))))

(assert (=> b!5421176 (= res!2306545 (isEmpty!33791 (tail!10727 (_1!35707 lt!2210826))))))

(assert (= (and d!1729364 c!945457) b!5421169))

(assert (= (and d!1729364 (not c!945457)) b!5421164))

(assert (= (and d!1729364 c!945459) b!5421174))

(assert (= (and d!1729364 (not c!945459)) b!5421172))

(assert (= (and b!5421172 c!945458) b!5421166))

(assert (= (and b!5421172 (not c!945458)) b!5421168))

(assert (= (and b!5421168 (not res!2306542)) b!5421167))

(assert (= (and b!5421167 res!2306543) b!5421175))

(assert (= (and b!5421175 res!2306544) b!5421176))

(assert (= (and b!5421176 res!2306545) b!5421170))

(assert (= (and b!5421167 (not res!2306541)) b!5421171))

(assert (= (and b!5421171 res!2306539) b!5421165))

(assert (= (and b!5421165 (not res!2306540)) b!5421163))

(assert (= (and b!5421163 (not res!2306546)) b!5421173))

(assert (= (or b!5421174 b!5421175 b!5421165) bm!387953))

(declare-fun m!6445256 () Bool)

(assert (=> b!5421169 m!6445256))

(declare-fun m!6445258 () Bool)

(assert (=> b!5421176 m!6445258))

(assert (=> b!5421176 m!6445258))

(declare-fun m!6445260 () Bool)

(assert (=> b!5421176 m!6445260))

(declare-fun m!6445262 () Bool)

(assert (=> b!5421164 m!6445262))

(assert (=> b!5421164 m!6445262))

(declare-fun m!6445264 () Bool)

(assert (=> b!5421164 m!6445264))

(assert (=> b!5421164 m!6445258))

(assert (=> b!5421164 m!6445264))

(assert (=> b!5421164 m!6445258))

(declare-fun m!6445266 () Bool)

(assert (=> b!5421164 m!6445266))

(declare-fun m!6445268 () Bool)

(assert (=> d!1729364 m!6445268))

(assert (=> d!1729364 m!6445148))

(assert (=> b!5421163 m!6445258))

(assert (=> b!5421163 m!6445258))

(assert (=> b!5421163 m!6445260))

(assert (=> b!5421173 m!6445262))

(assert (=> b!5421170 m!6445262))

(assert (=> bm!387953 m!6445268))

(assert (=> b!5420770 d!1729364))

(declare-fun b!5421177 () Bool)

(declare-fun res!2306554 () Bool)

(declare-fun e!3359822 () Bool)

(assert (=> b!5421177 (=> res!2306554 e!3359822)))

(assert (=> b!5421177 (= res!2306554 (not (isEmpty!33791 (tail!10727 (_2!35707 lt!2210826)))))))

(declare-fun b!5421178 () Bool)

(declare-fun e!3359821 () Bool)

(assert (=> b!5421178 (= e!3359821 (matchR!7390 (derivativeStep!4277 lt!2210809 (head!11630 (_2!35707 lt!2210826))) (tail!10727 (_2!35707 lt!2210826))))))

(declare-fun d!1729366 () Bool)

(declare-fun e!3359820 () Bool)

(assert (=> d!1729366 e!3359820))

(declare-fun c!945462 () Bool)

(assert (=> d!1729366 (= c!945462 ((_ is EmptyExpr!15205) lt!2210809))))

(declare-fun lt!2210948 () Bool)

(assert (=> d!1729366 (= lt!2210948 e!3359821)))

(declare-fun c!945460 () Bool)

(assert (=> d!1729366 (= c!945460 (isEmpty!33791 (_2!35707 lt!2210826)))))

(assert (=> d!1729366 (validRegex!6941 lt!2210809)))

(assert (=> d!1729366 (= (matchR!7390 lt!2210809 (_2!35707 lt!2210826)) lt!2210948)))

(declare-fun b!5421179 () Bool)

(declare-fun e!3359825 () Bool)

(assert (=> b!5421179 (= e!3359825 e!3359822)))

(declare-fun res!2306548 () Bool)

(assert (=> b!5421179 (=> res!2306548 e!3359822)))

(declare-fun call!387959 () Bool)

(assert (=> b!5421179 (= res!2306548 call!387959)))

(declare-fun b!5421180 () Bool)

(declare-fun e!3359826 () Bool)

(assert (=> b!5421180 (= e!3359826 (not lt!2210948))))

(declare-fun b!5421181 () Bool)

(declare-fun res!2306549 () Bool)

(declare-fun e!3359823 () Bool)

(assert (=> b!5421181 (=> res!2306549 e!3359823)))

(declare-fun e!3359824 () Bool)

(assert (=> b!5421181 (= res!2306549 e!3359824)))

(declare-fun res!2306551 () Bool)

(assert (=> b!5421181 (=> (not res!2306551) (not e!3359824))))

(assert (=> b!5421181 (= res!2306551 lt!2210948)))

(declare-fun b!5421182 () Bool)

(declare-fun res!2306550 () Bool)

(assert (=> b!5421182 (=> res!2306550 e!3359823)))

(assert (=> b!5421182 (= res!2306550 (not ((_ is ElementMatch!15205) lt!2210809)))))

(assert (=> b!5421182 (= e!3359826 e!3359823)))

(declare-fun b!5421183 () Bool)

(assert (=> b!5421183 (= e!3359821 (nullable!5374 lt!2210809))))

(declare-fun b!5421184 () Bool)

(assert (=> b!5421184 (= e!3359824 (= (head!11630 (_2!35707 lt!2210826)) (c!945345 lt!2210809)))))

(declare-fun b!5421185 () Bool)

(assert (=> b!5421185 (= e!3359823 e!3359825)))

(declare-fun res!2306547 () Bool)

(assert (=> b!5421185 (=> (not res!2306547) (not e!3359825))))

(assert (=> b!5421185 (= res!2306547 (not lt!2210948))))

(declare-fun b!5421186 () Bool)

(assert (=> b!5421186 (= e!3359820 e!3359826)))

(declare-fun c!945461 () Bool)

(assert (=> b!5421186 (= c!945461 ((_ is EmptyLang!15205) lt!2210809))))

(declare-fun b!5421187 () Bool)

(assert (=> b!5421187 (= e!3359822 (not (= (head!11630 (_2!35707 lt!2210826)) (c!945345 lt!2210809))))))

(declare-fun b!5421188 () Bool)

(assert (=> b!5421188 (= e!3359820 (= lt!2210948 call!387959))))

(declare-fun b!5421189 () Bool)

(declare-fun res!2306552 () Bool)

(assert (=> b!5421189 (=> (not res!2306552) (not e!3359824))))

(assert (=> b!5421189 (= res!2306552 (not call!387959))))

(declare-fun bm!387954 () Bool)

(assert (=> bm!387954 (= call!387959 (isEmpty!33791 (_2!35707 lt!2210826)))))

(declare-fun b!5421190 () Bool)

(declare-fun res!2306553 () Bool)

(assert (=> b!5421190 (=> (not res!2306553) (not e!3359824))))

(assert (=> b!5421190 (= res!2306553 (isEmpty!33791 (tail!10727 (_2!35707 lt!2210826))))))

(assert (= (and d!1729366 c!945460) b!5421183))

(assert (= (and d!1729366 (not c!945460)) b!5421178))

(assert (= (and d!1729366 c!945462) b!5421188))

(assert (= (and d!1729366 (not c!945462)) b!5421186))

(assert (= (and b!5421186 c!945461) b!5421180))

(assert (= (and b!5421186 (not c!945461)) b!5421182))

(assert (= (and b!5421182 (not res!2306550)) b!5421181))

(assert (= (and b!5421181 res!2306551) b!5421189))

(assert (= (and b!5421189 res!2306552) b!5421190))

(assert (= (and b!5421190 res!2306553) b!5421184))

(assert (= (and b!5421181 (not res!2306549)) b!5421185))

(assert (= (and b!5421185 res!2306547) b!5421179))

(assert (= (and b!5421179 (not res!2306548)) b!5421177))

(assert (= (and b!5421177 (not res!2306554)) b!5421187))

(assert (= (or b!5421188 b!5421189 b!5421179) bm!387954))

(declare-fun m!6445270 () Bool)

(assert (=> b!5421183 m!6445270))

(declare-fun m!6445272 () Bool)

(assert (=> b!5421190 m!6445272))

(assert (=> b!5421190 m!6445272))

(declare-fun m!6445274 () Bool)

(assert (=> b!5421190 m!6445274))

(declare-fun m!6445278 () Bool)

(assert (=> b!5421178 m!6445278))

(assert (=> b!5421178 m!6445278))

(declare-fun m!6445280 () Bool)

(assert (=> b!5421178 m!6445280))

(assert (=> b!5421178 m!6445272))

(assert (=> b!5421178 m!6445280))

(assert (=> b!5421178 m!6445272))

(declare-fun m!6445284 () Bool)

(assert (=> b!5421178 m!6445284))

(declare-fun m!6445286 () Bool)

(assert (=> d!1729366 m!6445286))

(assert (=> d!1729366 m!6445200))

(assert (=> b!5421177 m!6445272))

(assert (=> b!5421177 m!6445272))

(assert (=> b!5421177 m!6445274))

(assert (=> b!5421187 m!6445278))

(assert (=> b!5421184 m!6445278))

(assert (=> bm!387954 m!6445286))

(assert (=> b!5420770 d!1729366))

(declare-fun b!5421193 () Bool)

(declare-fun res!2306562 () Bool)

(declare-fun e!3359830 () Bool)

(assert (=> b!5421193 (=> res!2306562 e!3359830)))

(assert (=> b!5421193 (= res!2306562 (not (isEmpty!33791 (tail!10727 lt!2210859))))))

(declare-fun b!5421194 () Bool)

(declare-fun e!3359829 () Bool)

(assert (=> b!5421194 (= e!3359829 (matchR!7390 (derivativeStep!4277 lt!2210839 (head!11630 lt!2210859)) (tail!10727 lt!2210859)))))

(declare-fun d!1729370 () Bool)

(declare-fun e!3359828 () Bool)

(assert (=> d!1729370 e!3359828))

(declare-fun c!945466 () Bool)

(assert (=> d!1729370 (= c!945466 ((_ is EmptyExpr!15205) lt!2210839))))

(declare-fun lt!2210950 () Bool)

(assert (=> d!1729370 (= lt!2210950 e!3359829)))

(declare-fun c!945464 () Bool)

(assert (=> d!1729370 (= c!945464 (isEmpty!33791 lt!2210859))))

(assert (=> d!1729370 (validRegex!6941 lt!2210839)))

(assert (=> d!1729370 (= (matchR!7390 lt!2210839 lt!2210859) lt!2210950)))

(declare-fun b!5421195 () Bool)

(declare-fun e!3359833 () Bool)

(assert (=> b!5421195 (= e!3359833 e!3359830)))

(declare-fun res!2306556 () Bool)

(assert (=> b!5421195 (=> res!2306556 e!3359830)))

(declare-fun call!387960 () Bool)

(assert (=> b!5421195 (= res!2306556 call!387960)))

(declare-fun b!5421196 () Bool)

(declare-fun e!3359834 () Bool)

(assert (=> b!5421196 (= e!3359834 (not lt!2210950))))

(declare-fun b!5421197 () Bool)

(declare-fun res!2306557 () Bool)

(declare-fun e!3359831 () Bool)

(assert (=> b!5421197 (=> res!2306557 e!3359831)))

(declare-fun e!3359832 () Bool)

(assert (=> b!5421197 (= res!2306557 e!3359832)))

(declare-fun res!2306559 () Bool)

(assert (=> b!5421197 (=> (not res!2306559) (not e!3359832))))

(assert (=> b!5421197 (= res!2306559 lt!2210950)))

(declare-fun b!5421198 () Bool)

(declare-fun res!2306558 () Bool)

(assert (=> b!5421198 (=> res!2306558 e!3359831)))

(assert (=> b!5421198 (= res!2306558 (not ((_ is ElementMatch!15205) lt!2210839)))))

(assert (=> b!5421198 (= e!3359834 e!3359831)))

(declare-fun b!5421199 () Bool)

(assert (=> b!5421199 (= e!3359829 (nullable!5374 lt!2210839))))

(declare-fun b!5421200 () Bool)

(assert (=> b!5421200 (= e!3359832 (= (head!11630 lt!2210859) (c!945345 lt!2210839)))))

(declare-fun b!5421201 () Bool)

(assert (=> b!5421201 (= e!3359831 e!3359833)))

(declare-fun res!2306555 () Bool)

(assert (=> b!5421201 (=> (not res!2306555) (not e!3359833))))

(assert (=> b!5421201 (= res!2306555 (not lt!2210950))))

(declare-fun b!5421202 () Bool)

(assert (=> b!5421202 (= e!3359828 e!3359834)))

(declare-fun c!945465 () Bool)

(assert (=> b!5421202 (= c!945465 ((_ is EmptyLang!15205) lt!2210839))))

(declare-fun b!5421203 () Bool)

(assert (=> b!5421203 (= e!3359830 (not (= (head!11630 lt!2210859) (c!945345 lt!2210839))))))

(declare-fun b!5421204 () Bool)

(assert (=> b!5421204 (= e!3359828 (= lt!2210950 call!387960))))

(declare-fun b!5421205 () Bool)

(declare-fun res!2306560 () Bool)

(assert (=> b!5421205 (=> (not res!2306560) (not e!3359832))))

(assert (=> b!5421205 (= res!2306560 (not call!387960))))

(declare-fun bm!387955 () Bool)

(assert (=> bm!387955 (= call!387960 (isEmpty!33791 lt!2210859))))

(declare-fun b!5421206 () Bool)

(declare-fun res!2306561 () Bool)

(assert (=> b!5421206 (=> (not res!2306561) (not e!3359832))))

(assert (=> b!5421206 (= res!2306561 (isEmpty!33791 (tail!10727 lt!2210859)))))

(assert (= (and d!1729370 c!945464) b!5421199))

(assert (= (and d!1729370 (not c!945464)) b!5421194))

(assert (= (and d!1729370 c!945466) b!5421204))

(assert (= (and d!1729370 (not c!945466)) b!5421202))

(assert (= (and b!5421202 c!945465) b!5421196))

(assert (= (and b!5421202 (not c!945465)) b!5421198))

(assert (= (and b!5421198 (not res!2306558)) b!5421197))

(assert (= (and b!5421197 res!2306559) b!5421205))

(assert (= (and b!5421205 res!2306560) b!5421206))

(assert (= (and b!5421206 res!2306561) b!5421200))

(assert (= (and b!5421197 (not res!2306557)) b!5421201))

(assert (= (and b!5421201 res!2306555) b!5421195))

(assert (= (and b!5421195 (not res!2306556)) b!5421193))

(assert (= (and b!5421193 (not res!2306562)) b!5421203))

(assert (= (or b!5421204 b!5421205 b!5421195) bm!387955))

(declare-fun m!6445288 () Bool)

(assert (=> b!5421199 m!6445288))

(assert (=> b!5421206 m!6445210))

(assert (=> b!5421206 m!6445210))

(declare-fun m!6445290 () Bool)

(assert (=> b!5421206 m!6445290))

(assert (=> b!5421194 m!6445206))

(assert (=> b!5421194 m!6445206))

(declare-fun m!6445292 () Bool)

(assert (=> b!5421194 m!6445292))

(assert (=> b!5421194 m!6445210))

(assert (=> b!5421194 m!6445292))

(assert (=> b!5421194 m!6445210))

(declare-fun m!6445294 () Bool)

(assert (=> b!5421194 m!6445294))

(assert (=> d!1729370 m!6445202))

(declare-fun m!6445296 () Bool)

(assert (=> d!1729370 m!6445296))

(assert (=> b!5421193 m!6445210))

(assert (=> b!5421193 m!6445210))

(assert (=> b!5421193 m!6445290))

(assert (=> b!5421203 m!6445206))

(assert (=> b!5421200 m!6445206))

(assert (=> bm!387955 m!6445202))

(assert (=> b!5420770 d!1729370))

(declare-fun bs!1252377 () Bool)

(declare-fun b!5421297 () Bool)

(assert (= bs!1252377 (and b!5421297 d!1729290)))

(declare-fun lambda!283936 () Int)

(assert (=> bs!1252377 (not (= lambda!283936 lambda!283908))))

(assert (=> bs!1252377 (not (= lambda!283936 lambda!283907))))

(declare-fun bs!1252378 () Bool)

(assert (= bs!1252378 (and b!5421297 b!5420765)))

(assert (=> bs!1252378 (not (= lambda!283936 lambda!283886))))

(declare-fun bs!1252379 () Bool)

(assert (= bs!1252379 (and b!5421297 b!5420758)))

(assert (=> bs!1252379 (not (= lambda!283936 lambda!283879))))

(assert (=> bs!1252378 (not (= lambda!283936 lambda!283885))))

(declare-fun bs!1252380 () Bool)

(assert (= bs!1252380 (and b!5421297 b!5420770)))

(assert (=> bs!1252380 (not (= lambda!283936 lambda!283883))))

(assert (=> bs!1252379 (not (= lambda!283936 lambda!283878))))

(assert (=> bs!1252378 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (reg!15534 lt!2210816) (reg!15534 (regOne!30922 r!7292))) (= lt!2210816 lt!2210832)) (= lambda!283936 lambda!283887))))

(assert (=> bs!1252380 (not (= lambda!283936 lambda!283884))))

(assert (=> b!5421297 true))

(assert (=> b!5421297 true))

(declare-fun bs!1252381 () Bool)

(declare-fun b!5421295 () Bool)

(assert (= bs!1252381 (and b!5421295 d!1729290)))

(declare-fun lambda!283937 () Int)

(assert (=> bs!1252381 (= (and (= (regOne!30922 lt!2210816) lt!2210852) (= (regTwo!30922 lt!2210816) (regTwo!30922 r!7292))) (= lambda!283937 lambda!283908))))

(assert (=> bs!1252381 (not (= lambda!283937 lambda!283907))))

(declare-fun bs!1252382 () Bool)

(assert (= bs!1252382 (and b!5421295 b!5420765)))

(assert (=> bs!1252382 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 lt!2210816) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 lt!2210816) lt!2210832)) (= lambda!283937 lambda!283886))))

(declare-fun bs!1252383 () Bool)

(assert (= bs!1252383 (and b!5421295 b!5420758)))

(assert (=> bs!1252383 (= (and (= (regOne!30922 lt!2210816) (regOne!30922 r!7292)) (= (regTwo!30922 lt!2210816) (regTwo!30922 r!7292))) (= lambda!283937 lambda!283879))))

(assert (=> bs!1252382 (not (= lambda!283937 lambda!283885))))

(declare-fun bs!1252384 () Bool)

(assert (= bs!1252384 (and b!5421295 b!5420770)))

(assert (=> bs!1252384 (not (= lambda!283937 lambda!283883))))

(declare-fun bs!1252385 () Bool)

(assert (= bs!1252385 (and b!5421295 b!5421297)))

(assert (=> bs!1252385 (not (= lambda!283937 lambda!283936))))

(assert (=> bs!1252383 (not (= lambda!283937 lambda!283878))))

(assert (=> bs!1252382 (not (= lambda!283937 lambda!283887))))

(assert (=> bs!1252384 (= (and (= (regOne!30922 lt!2210816) lt!2210852) (= (regTwo!30922 lt!2210816) (regTwo!30922 r!7292))) (= lambda!283937 lambda!283884))))

(assert (=> b!5421295 true))

(assert (=> b!5421295 true))

(declare-fun b!5421293 () Bool)

(declare-fun e!3359891 () Bool)

(assert (=> b!5421293 (= e!3359891 (= s!2326 (Cons!61790 (c!945345 lt!2210816) Nil!61790)))))

(declare-fun b!5421294 () Bool)

(declare-fun res!2306595 () Bool)

(declare-fun e!3359892 () Bool)

(assert (=> b!5421294 (=> res!2306595 e!3359892)))

(declare-fun call!387982 () Bool)

(assert (=> b!5421294 (= res!2306595 call!387982)))

(declare-fun e!3359889 () Bool)

(assert (=> b!5421294 (= e!3359889 e!3359892)))

(declare-fun call!387983 () Bool)

(assert (=> b!5421295 (= e!3359889 call!387983)))

(declare-fun b!5421296 () Bool)

(declare-fun c!945495 () Bool)

(assert (=> b!5421296 (= c!945495 ((_ is Union!15205) lt!2210816))))

(declare-fun e!3359894 () Bool)

(assert (=> b!5421296 (= e!3359891 e!3359894)))

(assert (=> b!5421297 (= e!3359892 call!387983)))

(declare-fun b!5421298 () Bool)

(declare-fun e!3359888 () Bool)

(declare-fun e!3359890 () Bool)

(assert (=> b!5421298 (= e!3359888 e!3359890)))

(declare-fun res!2306597 () Bool)

(assert (=> b!5421298 (= res!2306597 (not ((_ is EmptyLang!15205) lt!2210816)))))

(assert (=> b!5421298 (=> (not res!2306597) (not e!3359890))))

(declare-fun b!5421299 () Bool)

(assert (=> b!5421299 (= e!3359888 call!387982)))

(declare-fun d!1729374 () Bool)

(declare-fun c!945497 () Bool)

(assert (=> d!1729374 (= c!945497 ((_ is EmptyExpr!15205) lt!2210816))))

(assert (=> d!1729374 (= (matchRSpec!2308 lt!2210816 s!2326) e!3359888)))

(declare-fun b!5421300 () Bool)

(declare-fun e!3359893 () Bool)

(assert (=> b!5421300 (= e!3359893 (matchRSpec!2308 (regTwo!30923 lt!2210816) s!2326))))

(declare-fun b!5421301 () Bool)

(assert (=> b!5421301 (= e!3359894 e!3359889)))

(declare-fun c!945494 () Bool)

(assert (=> b!5421301 (= c!945494 ((_ is Star!15205) lt!2210816))))

(declare-fun bm!387977 () Bool)

(assert (=> bm!387977 (= call!387982 (isEmpty!33791 s!2326))))

(declare-fun bm!387978 () Bool)

(assert (=> bm!387978 (= call!387983 (Exists!2386 (ite c!945494 lambda!283936 lambda!283937)))))

(declare-fun b!5421302 () Bool)

(assert (=> b!5421302 (= e!3359894 e!3359893)))

(declare-fun res!2306596 () Bool)

(assert (=> b!5421302 (= res!2306596 (matchRSpec!2308 (regOne!30923 lt!2210816) s!2326))))

(assert (=> b!5421302 (=> res!2306596 e!3359893)))

(declare-fun b!5421303 () Bool)

(declare-fun c!945496 () Bool)

(assert (=> b!5421303 (= c!945496 ((_ is ElementMatch!15205) lt!2210816))))

(assert (=> b!5421303 (= e!3359890 e!3359891)))

(assert (= (and d!1729374 c!945497) b!5421299))

(assert (= (and d!1729374 (not c!945497)) b!5421298))

(assert (= (and b!5421298 res!2306597) b!5421303))

(assert (= (and b!5421303 c!945496) b!5421293))

(assert (= (and b!5421303 (not c!945496)) b!5421296))

(assert (= (and b!5421296 c!945495) b!5421302))

(assert (= (and b!5421296 (not c!945495)) b!5421301))

(assert (= (and b!5421302 (not res!2306596)) b!5421300))

(assert (= (and b!5421301 c!945494) b!5421294))

(assert (= (and b!5421301 (not c!945494)) b!5421295))

(assert (= (and b!5421294 (not res!2306595)) b!5421297))

(assert (= (or b!5421297 b!5421295) bm!387978))

(assert (= (or b!5421299 b!5421294) bm!387977))

(declare-fun m!6445354 () Bool)

(assert (=> b!5421300 m!6445354))

(assert (=> bm!387977 m!6445118))

(declare-fun m!6445356 () Bool)

(assert (=> bm!387978 m!6445356))

(declare-fun m!6445358 () Bool)

(assert (=> b!5421302 m!6445358))

(assert (=> b!5420770 d!1729374))

(declare-fun d!1729394 () Bool)

(assert (=> d!1729394 (= (matchR!7390 lt!2210816 s!2326) (matchRSpec!2308 lt!2210816 s!2326))))

(declare-fun lt!2210960 () Unit!154342)

(declare-fun choose!41072 (Regex!15205 List!61914) Unit!154342)

(assert (=> d!1729394 (= lt!2210960 (choose!41072 lt!2210816 s!2326))))

(assert (=> d!1729394 (validRegex!6941 lt!2210816)))

(assert (=> d!1729394 (= (mainMatchTheorem!2308 lt!2210816 s!2326) lt!2210960)))

(declare-fun bs!1252387 () Bool)

(assert (= bs!1252387 d!1729394))

(assert (=> bs!1252387 m!6444870))

(assert (=> bs!1252387 m!6444846))

(declare-fun m!6445366 () Bool)

(assert (=> bs!1252387 m!6445366))

(assert (=> bs!1252387 m!6445120))

(assert (=> b!5420770 d!1729394))

(declare-fun d!1729398 () Bool)

(assert (=> d!1729398 (= (matchR!7390 lt!2210809 (_2!35707 lt!2210826)) (matchZipper!1449 lt!2210868 (_2!35707 lt!2210826)))))

(declare-fun lt!2210962 () Unit!154342)

(assert (=> d!1729398 (= lt!2210962 (choose!41063 lt!2210868 lt!2210803 lt!2210809 (_2!35707 lt!2210826)))))

(assert (=> d!1729398 (validRegex!6941 lt!2210809)))

(assert (=> d!1729398 (= (theoremZipperRegexEquiv!519 lt!2210868 lt!2210803 lt!2210809 (_2!35707 lt!2210826)) lt!2210962)))

(declare-fun bs!1252389 () Bool)

(assert (= bs!1252389 d!1729398))

(assert (=> bs!1252389 m!6444876))

(assert (=> bs!1252389 m!6444738))

(declare-fun m!6445374 () Bool)

(assert (=> bs!1252389 m!6445374))

(assert (=> bs!1252389 m!6445200))

(assert (=> b!5420770 d!1729398))

(declare-fun bs!1252390 () Bool)

(declare-fun d!1729402 () Bool)

(assert (= bs!1252390 (and d!1729402 d!1729290)))

(declare-fun lambda!283940 () Int)

(assert (=> bs!1252390 (not (= lambda!283940 lambda!283908))))

(assert (=> bs!1252390 (= lambda!283940 lambda!283907)))

(declare-fun bs!1252391 () Bool)

(assert (= bs!1252391 (and d!1729402 b!5420765)))

(assert (=> bs!1252391 (not (= lambda!283940 lambda!283886))))

(declare-fun bs!1252392 () Bool)

(assert (= bs!1252392 (and d!1729402 b!5420758)))

(assert (=> bs!1252392 (not (= lambda!283940 lambda!283879))))

(assert (=> bs!1252391 (= (and (= s!2326 (_1!35707 lt!2210854)) (= lt!2210852 (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) lt!2210832)) (= lambda!283940 lambda!283885))))

(declare-fun bs!1252393 () Bool)

(assert (= bs!1252393 (and d!1729402 b!5420770)))

(assert (=> bs!1252393 (= lambda!283940 lambda!283883)))

(declare-fun bs!1252394 () Bool)

(assert (= bs!1252394 (and d!1729402 b!5421295)))

(assert (=> bs!1252394 (not (= lambda!283940 lambda!283937))))

(declare-fun bs!1252395 () Bool)

(assert (= bs!1252395 (and d!1729402 b!5421297)))

(assert (=> bs!1252395 (not (= lambda!283940 lambda!283936))))

(assert (=> bs!1252392 (= (= lt!2210852 (regOne!30922 r!7292)) (= lambda!283940 lambda!283878))))

(assert (=> bs!1252391 (not (= lambda!283940 lambda!283887))))

(assert (=> bs!1252393 (not (= lambda!283940 lambda!283884))))

(assert (=> d!1729402 true))

(assert (=> d!1729402 true))

(assert (=> d!1729402 true))

(assert (=> d!1729402 (= (isDefined!12019 (findConcatSeparation!1730 lt!2210852 (regTwo!30922 r!7292) Nil!61790 s!2326 s!2326)) (Exists!2386 lambda!283940))))

(declare-fun lt!2210968 () Unit!154342)

(declare-fun choose!41073 (Regex!15205 Regex!15205 List!61914) Unit!154342)

(assert (=> d!1729402 (= lt!2210968 (choose!41073 lt!2210852 (regTwo!30922 r!7292) s!2326))))

(assert (=> d!1729402 (validRegex!6941 lt!2210852)))

(assert (=> d!1729402 (= (lemmaFindConcatSeparationEquivalentToExists!1494 lt!2210852 (regTwo!30922 r!7292) s!2326) lt!2210968)))

(declare-fun bs!1252396 () Bool)

(assert (= bs!1252396 d!1729402))

(assert (=> bs!1252396 m!6445022))

(assert (=> bs!1252396 m!6444834))

(declare-fun m!6445390 () Bool)

(assert (=> bs!1252396 m!6445390))

(assert (=> bs!1252396 m!6444834))

(declare-fun m!6445392 () Bool)

(assert (=> bs!1252396 m!6445392))

(declare-fun m!6445394 () Bool)

(assert (=> bs!1252396 m!6445394))

(assert (=> b!5420770 d!1729402))

(declare-fun b!5421379 () Bool)

(declare-fun res!2306643 () Bool)

(declare-fun e!3359938 () Bool)

(assert (=> b!5421379 (=> (not res!2306643) (not e!3359938))))

(declare-fun lt!2210986 () Option!15316)

(assert (=> b!5421379 (= res!2306643 (matchR!7390 (regTwo!30922 r!7292) (_2!35707 (get!21310 lt!2210986))))))

(declare-fun b!5421380 () Bool)

(declare-fun res!2306642 () Bool)

(assert (=> b!5421380 (=> (not res!2306642) (not e!3359938))))

(assert (=> b!5421380 (= res!2306642 (matchR!7390 lt!2210852 (_1!35707 (get!21310 lt!2210986))))))

(declare-fun b!5421381 () Bool)

(declare-fun lt!2210985 () Unit!154342)

(declare-fun lt!2210984 () Unit!154342)

(assert (=> b!5421381 (= lt!2210985 lt!2210984)))

(assert (=> b!5421381 (= (++!13584 (++!13584 Nil!61790 (Cons!61790 (h!68238 s!2326) Nil!61790)) (t!375137 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1851 (List!61914 C!30680 List!61914 List!61914) Unit!154342)

(assert (=> b!5421381 (= lt!2210984 (lemmaMoveElementToOtherListKeepsConcatEq!1851 Nil!61790 (h!68238 s!2326) (t!375137 s!2326) s!2326))))

(declare-fun e!3359939 () Option!15316)

(assert (=> b!5421381 (= e!3359939 (findConcatSeparation!1730 lt!2210852 (regTwo!30922 r!7292) (++!13584 Nil!61790 (Cons!61790 (h!68238 s!2326) Nil!61790)) (t!375137 s!2326) s!2326))))

(declare-fun b!5421382 () Bool)

(assert (=> b!5421382 (= e!3359938 (= (++!13584 (_1!35707 (get!21310 lt!2210986)) (_2!35707 (get!21310 lt!2210986))) s!2326))))

(declare-fun b!5421383 () Bool)

(declare-fun e!3359941 () Bool)

(assert (=> b!5421383 (= e!3359941 (matchR!7390 (regTwo!30922 r!7292) s!2326))))

(declare-fun b!5421384 () Bool)

(declare-fun e!3359937 () Bool)

(assert (=> b!5421384 (= e!3359937 (not (isDefined!12019 lt!2210986)))))

(declare-fun d!1729406 () Bool)

(assert (=> d!1729406 e!3359937))

(declare-fun res!2306645 () Bool)

(assert (=> d!1729406 (=> res!2306645 e!3359937)))

(assert (=> d!1729406 (= res!2306645 e!3359938)))

(declare-fun res!2306644 () Bool)

(assert (=> d!1729406 (=> (not res!2306644) (not e!3359938))))

(assert (=> d!1729406 (= res!2306644 (isDefined!12019 lt!2210986))))

(declare-fun e!3359940 () Option!15316)

(assert (=> d!1729406 (= lt!2210986 e!3359940)))

(declare-fun c!945514 () Bool)

(assert (=> d!1729406 (= c!945514 e!3359941)))

(declare-fun res!2306641 () Bool)

(assert (=> d!1729406 (=> (not res!2306641) (not e!3359941))))

(assert (=> d!1729406 (= res!2306641 (matchR!7390 lt!2210852 Nil!61790))))

(assert (=> d!1729406 (validRegex!6941 lt!2210852)))

(assert (=> d!1729406 (= (findConcatSeparation!1730 lt!2210852 (regTwo!30922 r!7292) Nil!61790 s!2326 s!2326) lt!2210986)))

(declare-fun b!5421385 () Bool)

(assert (=> b!5421385 (= e!3359939 None!15315)))

(declare-fun b!5421386 () Bool)

(assert (=> b!5421386 (= e!3359940 e!3359939)))

(declare-fun c!945515 () Bool)

(assert (=> b!5421386 (= c!945515 ((_ is Nil!61790) s!2326))))

(declare-fun b!5421387 () Bool)

(assert (=> b!5421387 (= e!3359940 (Some!15315 (tuple2!64809 Nil!61790 s!2326)))))

(assert (= (and d!1729406 res!2306641) b!5421383))

(assert (= (and d!1729406 c!945514) b!5421387))

(assert (= (and d!1729406 (not c!945514)) b!5421386))

(assert (= (and b!5421386 c!945515) b!5421385))

(assert (= (and b!5421386 (not c!945515)) b!5421381))

(assert (= (and d!1729406 res!2306644) b!5421380))

(assert (= (and b!5421380 res!2306642) b!5421379))

(assert (= (and b!5421379 res!2306643) b!5421382))

(assert (= (and d!1729406 (not res!2306645)) b!5421384))

(declare-fun m!6445404 () Bool)

(assert (=> d!1729406 m!6445404))

(declare-fun m!6445406 () Bool)

(assert (=> d!1729406 m!6445406))

(assert (=> d!1729406 m!6445022))

(declare-fun m!6445408 () Bool)

(assert (=> b!5421381 m!6445408))

(assert (=> b!5421381 m!6445408))

(declare-fun m!6445410 () Bool)

(assert (=> b!5421381 m!6445410))

(declare-fun m!6445412 () Bool)

(assert (=> b!5421381 m!6445412))

(assert (=> b!5421381 m!6445408))

(declare-fun m!6445414 () Bool)

(assert (=> b!5421381 m!6445414))

(declare-fun m!6445416 () Bool)

(assert (=> b!5421379 m!6445416))

(declare-fun m!6445418 () Bool)

(assert (=> b!5421379 m!6445418))

(assert (=> b!5421382 m!6445416))

(declare-fun m!6445420 () Bool)

(assert (=> b!5421382 m!6445420))

(assert (=> b!5421384 m!6445404))

(declare-fun m!6445422 () Bool)

(assert (=> b!5421383 m!6445422))

(assert (=> b!5421380 m!6445416))

(declare-fun m!6445424 () Bool)

(assert (=> b!5421380 m!6445424))

(assert (=> b!5420770 d!1729406))

(declare-fun d!1729410 () Bool)

(declare-fun choose!41075 ((InoxSet Context!9178) Int) (InoxSet Context!9178))

(assert (=> d!1729410 (= (flatMap!932 lt!2210863 lambda!283880) (choose!41075 lt!2210863 lambda!283880))))

(declare-fun bs!1252398 () Bool)

(assert (= bs!1252398 d!1729410))

(declare-fun m!6445426 () Bool)

(assert (=> bs!1252398 m!6445426))

(assert (=> b!5420749 d!1729410))

(declare-fun b!5421418 () Bool)

(declare-fun e!3359961 () (InoxSet Context!9178))

(declare-fun e!3359962 () (InoxSet Context!9178))

(assert (=> b!5421418 (= e!3359961 e!3359962)))

(declare-fun c!945527 () Bool)

(assert (=> b!5421418 (= c!945527 ((_ is Cons!61791) (exprs!5089 lt!2210821)))))

(declare-fun b!5421419 () Bool)

(assert (=> b!5421419 (= e!3359962 ((as const (Array Context!9178 Bool)) false))))

(declare-fun d!1729412 () Bool)

(declare-fun c!945526 () Bool)

(declare-fun e!3359960 () Bool)

(assert (=> d!1729412 (= c!945526 e!3359960)))

(declare-fun res!2306656 () Bool)

(assert (=> d!1729412 (=> (not res!2306656) (not e!3359960))))

(assert (=> d!1729412 (= res!2306656 ((_ is Cons!61791) (exprs!5089 lt!2210821)))))

(assert (=> d!1729412 (= (derivationStepZipperUp!577 lt!2210821 (h!68238 s!2326)) e!3359961)))

(declare-fun b!5421420 () Bool)

(assert (=> b!5421420 (= e!3359960 (nullable!5374 (h!68239 (exprs!5089 lt!2210821))))))

(declare-fun b!5421421 () Bool)

(declare-fun call!387992 () (InoxSet Context!9178))

(assert (=> b!5421421 (= e!3359961 ((_ map or) call!387992 (derivationStepZipperUp!577 (Context!9179 (t!375138 (exprs!5089 lt!2210821))) (h!68238 s!2326))))))

(declare-fun b!5421422 () Bool)

(assert (=> b!5421422 (= e!3359962 call!387992)))

(declare-fun bm!387987 () Bool)

(assert (=> bm!387987 (= call!387992 (derivationStepZipperDown!653 (h!68239 (exprs!5089 lt!2210821)) (Context!9179 (t!375138 (exprs!5089 lt!2210821))) (h!68238 s!2326)))))

(assert (= (and d!1729412 res!2306656) b!5421420))

(assert (= (and d!1729412 c!945526) b!5421421))

(assert (= (and d!1729412 (not c!945526)) b!5421418))

(assert (= (and b!5421418 c!945527) b!5421422))

(assert (= (and b!5421418 (not c!945527)) b!5421419))

(assert (= (or b!5421421 b!5421422) bm!387987))

(declare-fun m!6445448 () Bool)

(assert (=> b!5421420 m!6445448))

(declare-fun m!6445450 () Bool)

(assert (=> b!5421421 m!6445450))

(declare-fun m!6445452 () Bool)

(assert (=> bm!387987 m!6445452))

(assert (=> b!5420749 d!1729412))

(declare-fun d!1729420 () Bool)

(declare-fun dynLambda!24351 (Int Context!9178) (InoxSet Context!9178))

(assert (=> d!1729420 (= (flatMap!932 lt!2210863 lambda!283880) (dynLambda!24351 lambda!283880 lt!2210821))))

(declare-fun lt!2210992 () Unit!154342)

(declare-fun choose!41077 ((InoxSet Context!9178) Context!9178 Int) Unit!154342)

(assert (=> d!1729420 (= lt!2210992 (choose!41077 lt!2210863 lt!2210821 lambda!283880))))

(assert (=> d!1729420 (= lt!2210863 (store ((as const (Array Context!9178 Bool)) false) lt!2210821 true))))

(assert (=> d!1729420 (= (lemmaFlatMapOnSingletonSet!464 lt!2210863 lt!2210821 lambda!283880) lt!2210992)))

(declare-fun b_lambda!206913 () Bool)

(assert (=> (not b_lambda!206913) (not d!1729420)))

(declare-fun bs!1252415 () Bool)

(assert (= bs!1252415 d!1729420))

(assert (=> bs!1252415 m!6444826))

(declare-fun m!6445454 () Bool)

(assert (=> bs!1252415 m!6445454))

(declare-fun m!6445456 () Bool)

(assert (=> bs!1252415 m!6445456))

(assert (=> bs!1252415 m!6444830))

(assert (=> b!5420749 d!1729420))

(declare-fun bs!1252417 () Bool)

(declare-fun d!1729422 () Bool)

(assert (= bs!1252417 (and d!1729422 b!5420761)))

(declare-fun lambda!283945 () Int)

(assert (=> bs!1252417 (= lambda!283945 lambda!283880)))

(assert (=> d!1729422 true))

(assert (=> d!1729422 (= (derivationStepZipper!1444 lt!2210863 (h!68238 s!2326)) (flatMap!932 lt!2210863 lambda!283945))))

(declare-fun bs!1252418 () Bool)

(assert (= bs!1252418 d!1729422))

(declare-fun m!6445472 () Bool)

(assert (=> bs!1252418 m!6445472))

(assert (=> b!5420749 d!1729422))

(declare-fun b!5421492 () Bool)

(declare-fun c!945553 () Bool)

(declare-fun e!3360004 () Bool)

(assert (=> b!5421492 (= c!945553 e!3360004)))

(declare-fun res!2306686 () Bool)

(assert (=> b!5421492 (=> (not res!2306686) (not e!3360004))))

(assert (=> b!5421492 (= res!2306686 ((_ is Concat!24050) (reg!15534 (regOne!30922 r!7292))))))

(declare-fun e!3359999 () (InoxSet Context!9178))

(declare-fun e!3360002 () (InoxSet Context!9178))

(assert (=> b!5421492 (= e!3359999 e!3360002)))

(declare-fun b!5421493 () Bool)

(declare-fun call!388009 () (InoxSet Context!9178))

(declare-fun call!388010 () (InoxSet Context!9178))

(assert (=> b!5421493 (= e!3359999 ((_ map or) call!388009 call!388010))))

(declare-fun bm!388003 () Bool)

(declare-fun call!388013 () List!61915)

(declare-fun call!388008 () List!61915)

(assert (=> bm!388003 (= call!388013 call!388008)))

(declare-fun b!5421494 () Bool)

(declare-fun c!945552 () Bool)

(assert (=> b!5421494 (= c!945552 ((_ is Star!15205) (reg!15534 (regOne!30922 r!7292))))))

(declare-fun e!3360000 () (InoxSet Context!9178))

(declare-fun e!3360003 () (InoxSet Context!9178))

(assert (=> b!5421494 (= e!3360000 e!3360003)))

(declare-fun bm!388004 () Bool)

(declare-fun c!945549 () Bool)

(declare-fun c!945550 () Bool)

(assert (=> bm!388004 (= call!388009 (derivationStepZipperDown!653 (ite c!945549 (regOne!30923 (reg!15534 (regOne!30922 r!7292))) (ite c!945553 (regTwo!30922 (reg!15534 (regOne!30922 r!7292))) (ite c!945550 (regOne!30922 (reg!15534 (regOne!30922 r!7292))) (reg!15534 (reg!15534 (regOne!30922 r!7292)))))) (ite (or c!945549 c!945553) lt!2210810 (Context!9179 call!388013)) (h!68238 s!2326)))))

(declare-fun b!5421495 () Bool)

(assert (=> b!5421495 (= e!3360002 e!3360000)))

(assert (=> b!5421495 (= c!945550 ((_ is Concat!24050) (reg!15534 (regOne!30922 r!7292))))))

(declare-fun b!5421496 () Bool)

(assert (=> b!5421496 (= e!3360004 (nullable!5374 (regOne!30922 (reg!15534 (regOne!30922 r!7292)))))))

(declare-fun b!5421497 () Bool)

(declare-fun call!388011 () (InoxSet Context!9178))

(assert (=> b!5421497 (= e!3360002 ((_ map or) call!388010 call!388011))))

(declare-fun b!5421498 () Bool)

(assert (=> b!5421498 (= e!3360003 ((as const (Array Context!9178 Bool)) false))))

(declare-fun b!5421499 () Bool)

(declare-fun call!388012 () (InoxSet Context!9178))

(assert (=> b!5421499 (= e!3360003 call!388012)))

(declare-fun b!5421500 () Bool)

(assert (=> b!5421500 (= e!3360000 call!388012)))

(declare-fun b!5421501 () Bool)

(declare-fun e!3360001 () (InoxSet Context!9178))

(assert (=> b!5421501 (= e!3360001 e!3359999)))

(assert (=> b!5421501 (= c!945549 ((_ is Union!15205) (reg!15534 (regOne!30922 r!7292))))))

(declare-fun bm!388005 () Bool)

(declare-fun $colon$colon!1506 (List!61915 Regex!15205) List!61915)

(assert (=> bm!388005 (= call!388008 ($colon$colon!1506 (exprs!5089 lt!2210810) (ite (or c!945553 c!945550) (regTwo!30922 (reg!15534 (regOne!30922 r!7292))) (reg!15534 (regOne!30922 r!7292)))))))

(declare-fun bm!388006 () Bool)

(assert (=> bm!388006 (= call!388012 call!388011)))

(declare-fun bm!388007 () Bool)

(assert (=> bm!388007 (= call!388010 (derivationStepZipperDown!653 (ite c!945549 (regTwo!30923 (reg!15534 (regOne!30922 r!7292))) (regOne!30922 (reg!15534 (regOne!30922 r!7292)))) (ite c!945549 lt!2210810 (Context!9179 call!388008)) (h!68238 s!2326)))))

(declare-fun d!1729430 () Bool)

(declare-fun c!945551 () Bool)

(assert (=> d!1729430 (= c!945551 (and ((_ is ElementMatch!15205) (reg!15534 (regOne!30922 r!7292))) (= (c!945345 (reg!15534 (regOne!30922 r!7292))) (h!68238 s!2326))))))

(assert (=> d!1729430 (= (derivationStepZipperDown!653 (reg!15534 (regOne!30922 r!7292)) lt!2210810 (h!68238 s!2326)) e!3360001)))

(declare-fun bm!388008 () Bool)

(assert (=> bm!388008 (= call!388011 call!388009)))

(declare-fun b!5421502 () Bool)

(assert (=> b!5421502 (= e!3360001 (store ((as const (Array Context!9178 Bool)) false) lt!2210810 true))))

(assert (= (and d!1729430 c!945551) b!5421502))

(assert (= (and d!1729430 (not c!945551)) b!5421501))

(assert (= (and b!5421501 c!945549) b!5421493))

(assert (= (and b!5421501 (not c!945549)) b!5421492))

(assert (= (and b!5421492 res!2306686) b!5421496))

(assert (= (and b!5421492 c!945553) b!5421497))

(assert (= (and b!5421492 (not c!945553)) b!5421495))

(assert (= (and b!5421495 c!945550) b!5421500))

(assert (= (and b!5421495 (not c!945550)) b!5421494))

(assert (= (and b!5421494 c!945552) b!5421499))

(assert (= (and b!5421494 (not c!945552)) b!5421498))

(assert (= (or b!5421500 b!5421499) bm!388003))

(assert (= (or b!5421500 b!5421499) bm!388006))

(assert (= (or b!5421497 bm!388003) bm!388005))

(assert (= (or b!5421497 bm!388006) bm!388008))

(assert (= (or b!5421493 b!5421497) bm!388007))

(assert (= (or b!5421493 bm!388008) bm!388004))

(declare-fun m!6445514 () Bool)

(assert (=> b!5421496 m!6445514))

(declare-fun m!6445516 () Bool)

(assert (=> bm!388004 m!6445516))

(assert (=> b!5421502 m!6444704))

(declare-fun m!6445518 () Bool)

(assert (=> bm!388007 m!6445518))

(declare-fun m!6445520 () Bool)

(assert (=> bm!388005 m!6445520))

(assert (=> b!5420768 d!1729430))

(declare-fun d!1729444 () Bool)

(assert (=> d!1729444 (= (isDefined!12019 lt!2210862) (not (isEmpty!33793 lt!2210862)))))

(declare-fun bs!1252430 () Bool)

(assert (= bs!1252430 d!1729444))

(declare-fun m!6445522 () Bool)

(assert (=> bs!1252430 m!6445522))

(assert (=> b!5420747 d!1729444))

(declare-fun b!5421511 () Bool)

(declare-fun e!3360009 () List!61914)

(assert (=> b!5421511 (= e!3360009 (_2!35707 lt!2210826))))

(declare-fun b!5421512 () Bool)

(assert (=> b!5421512 (= e!3360009 (Cons!61790 (h!68238 (_1!35707 lt!2210826)) (++!13584 (t!375137 (_1!35707 lt!2210826)) (_2!35707 lt!2210826))))))

(declare-fun b!5421514 () Bool)

(declare-fun e!3360010 () Bool)

(declare-fun lt!2211009 () List!61914)

(assert (=> b!5421514 (= e!3360010 (or (not (= (_2!35707 lt!2210826) Nil!61790)) (= lt!2211009 (_1!35707 lt!2210826))))))

(declare-fun d!1729446 () Bool)

(assert (=> d!1729446 e!3360010))

(declare-fun res!2306692 () Bool)

(assert (=> d!1729446 (=> (not res!2306692) (not e!3360010))))

(declare-fun content!11115 (List!61914) (InoxSet C!30680))

(assert (=> d!1729446 (= res!2306692 (= (content!11115 lt!2211009) ((_ map or) (content!11115 (_1!35707 lt!2210826)) (content!11115 (_2!35707 lt!2210826)))))))

(assert (=> d!1729446 (= lt!2211009 e!3360009)))

(declare-fun c!945556 () Bool)

(assert (=> d!1729446 (= c!945556 ((_ is Nil!61790) (_1!35707 lt!2210826)))))

(assert (=> d!1729446 (= (++!13584 (_1!35707 lt!2210826) (_2!35707 lt!2210826)) lt!2211009)))

(declare-fun b!5421513 () Bool)

(declare-fun res!2306691 () Bool)

(assert (=> b!5421513 (=> (not res!2306691) (not e!3360010))))

(declare-fun size!39880 (List!61914) Int)

(assert (=> b!5421513 (= res!2306691 (= (size!39880 lt!2211009) (+ (size!39880 (_1!35707 lt!2210826)) (size!39880 (_2!35707 lt!2210826)))))))

(assert (= (and d!1729446 c!945556) b!5421511))

(assert (= (and d!1729446 (not c!945556)) b!5421512))

(assert (= (and d!1729446 res!2306692) b!5421513))

(assert (= (and b!5421513 res!2306691) b!5421514))

(declare-fun m!6445536 () Bool)

(assert (=> b!5421512 m!6445536))

(declare-fun m!6445538 () Bool)

(assert (=> d!1729446 m!6445538))

(declare-fun m!6445540 () Bool)

(assert (=> d!1729446 m!6445540))

(declare-fun m!6445542 () Bool)

(assert (=> d!1729446 m!6445542))

(declare-fun m!6445544 () Bool)

(assert (=> b!5421513 m!6445544))

(declare-fun m!6445546 () Bool)

(assert (=> b!5421513 m!6445546))

(declare-fun m!6445548 () Bool)

(assert (=> b!5421513 m!6445548))

(assert (=> b!5420747 d!1729446))

(declare-fun b!5421550 () Bool)

(declare-fun e!3360034 () Option!15316)

(declare-fun e!3360031 () Option!15316)

(assert (=> b!5421550 (= e!3360034 e!3360031)))

(declare-fun c!945566 () Bool)

(assert (=> b!5421550 (= c!945566 ((_ is Nil!61790) s!2326))))

(declare-fun b!5421551 () Bool)

(declare-fun e!3360033 () Bool)

(declare-fun lt!2211021 () Option!15316)

(assert (=> b!5421551 (= e!3360033 (not (isDefined!12019 lt!2211021)))))

(declare-fun b!5421552 () Bool)

(declare-fun e!3360032 () Bool)

(assert (=> b!5421552 (= e!3360032 (= (++!13584 (_1!35707 (get!21310 lt!2211021)) (_2!35707 (get!21310 lt!2211021))) s!2326))))

(declare-fun d!1729450 () Bool)

(assert (=> d!1729450 e!3360033))

(declare-fun res!2306715 () Bool)

(assert (=> d!1729450 (=> res!2306715 e!3360033)))

(assert (=> d!1729450 (= res!2306715 e!3360032)))

(declare-fun res!2306716 () Bool)

(assert (=> d!1729450 (=> (not res!2306716) (not e!3360032))))

(assert (=> d!1729450 (= res!2306716 (isDefined!12019 lt!2211021))))

(assert (=> d!1729450 (= lt!2211021 e!3360034)))

(declare-fun c!945565 () Bool)

(declare-fun e!3360035 () Bool)

(assert (=> d!1729450 (= c!945565 e!3360035)))

(declare-fun res!2306712 () Bool)

(assert (=> d!1729450 (=> (not res!2306712) (not e!3360035))))

(assert (=> d!1729450 (= res!2306712 (matchZipper!1449 lt!2210818 Nil!61790))))

(assert (=> d!1729450 (= (++!13584 Nil!61790 s!2326) s!2326)))

(assert (=> d!1729450 (= (findConcatSeparationZippers!62 lt!2210818 lt!2210868 Nil!61790 s!2326 s!2326) lt!2211021)))

(declare-fun b!5421553 () Bool)

(declare-fun res!2306714 () Bool)

(assert (=> b!5421553 (=> (not res!2306714) (not e!3360032))))

(assert (=> b!5421553 (= res!2306714 (matchZipper!1449 lt!2210868 (_2!35707 (get!21310 lt!2211021))))))

(declare-fun b!5421554 () Bool)

(declare-fun lt!2211022 () Unit!154342)

(declare-fun lt!2211023 () Unit!154342)

(assert (=> b!5421554 (= lt!2211022 lt!2211023)))

(assert (=> b!5421554 (= (++!13584 (++!13584 Nil!61790 (Cons!61790 (h!68238 s!2326) Nil!61790)) (t!375137 s!2326)) s!2326)))

(assert (=> b!5421554 (= lt!2211023 (lemmaMoveElementToOtherListKeepsConcatEq!1851 Nil!61790 (h!68238 s!2326) (t!375137 s!2326) s!2326))))

(assert (=> b!5421554 (= e!3360031 (findConcatSeparationZippers!62 lt!2210818 lt!2210868 (++!13584 Nil!61790 (Cons!61790 (h!68238 s!2326) Nil!61790)) (t!375137 s!2326) s!2326))))

(declare-fun b!5421555 () Bool)

(assert (=> b!5421555 (= e!3360034 (Some!15315 (tuple2!64809 Nil!61790 s!2326)))))

(declare-fun b!5421556 () Bool)

(assert (=> b!5421556 (= e!3360031 None!15315)))

(declare-fun b!5421557 () Bool)

(declare-fun res!2306713 () Bool)

(assert (=> b!5421557 (=> (not res!2306713) (not e!3360032))))

(assert (=> b!5421557 (= res!2306713 (matchZipper!1449 lt!2210818 (_1!35707 (get!21310 lt!2211021))))))

(declare-fun b!5421558 () Bool)

(assert (=> b!5421558 (= e!3360035 (matchZipper!1449 lt!2210868 s!2326))))

(assert (= (and d!1729450 res!2306712) b!5421558))

(assert (= (and d!1729450 c!945565) b!5421555))

(assert (= (and d!1729450 (not c!945565)) b!5421550))

(assert (= (and b!5421550 c!945566) b!5421556))

(assert (= (and b!5421550 (not c!945566)) b!5421554))

(assert (= (and d!1729450 res!2306716) b!5421557))

(assert (= (and b!5421557 res!2306713) b!5421553))

(assert (= (and b!5421553 res!2306714) b!5421552))

(assert (= (and d!1729450 (not res!2306715)) b!5421551))

(declare-fun m!6445578 () Bool)

(assert (=> b!5421557 m!6445578))

(declare-fun m!6445580 () Bool)

(assert (=> b!5421557 m!6445580))

(assert (=> b!5421552 m!6445578))

(declare-fun m!6445582 () Bool)

(assert (=> b!5421552 m!6445582))

(assert (=> b!5421554 m!6445408))

(assert (=> b!5421554 m!6445408))

(assert (=> b!5421554 m!6445410))

(assert (=> b!5421554 m!6445412))

(assert (=> b!5421554 m!6445408))

(declare-fun m!6445586 () Bool)

(assert (=> b!5421554 m!6445586))

(assert (=> b!5421553 m!6445578))

(declare-fun m!6445588 () Bool)

(assert (=> b!5421553 m!6445588))

(declare-fun m!6445590 () Bool)

(assert (=> d!1729450 m!6445590))

(declare-fun m!6445592 () Bool)

(assert (=> d!1729450 m!6445592))

(declare-fun m!6445594 () Bool)

(assert (=> d!1729450 m!6445594))

(declare-fun m!6445596 () Bool)

(assert (=> b!5421558 m!6445596))

(assert (=> b!5421551 m!6445590))

(assert (=> b!5420747 d!1729450))

(declare-fun d!1729462 () Bool)

(assert (=> d!1729462 (isDefined!12019 (findConcatSeparationZippers!62 lt!2210818 (store ((as const (Array Context!9178 Bool)) false) lt!2210810 true) Nil!61790 s!2326 s!2326))))

(declare-fun lt!2211030 () Unit!154342)

(declare-fun choose!41078 ((InoxSet Context!9178) Context!9178 List!61914) Unit!154342)

(assert (=> d!1729462 (= lt!2211030 (choose!41078 lt!2210818 lt!2210810 s!2326))))

(assert (=> d!1729462 (matchZipper!1449 (appendTo!64 lt!2210818 lt!2210810) s!2326)))

(assert (=> d!1729462 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!62 lt!2210818 lt!2210810 s!2326) lt!2211030)))

(declare-fun bs!1252473 () Bool)

(assert (= bs!1252473 d!1729462))

(assert (=> bs!1252473 m!6444892))

(declare-fun m!6445610 () Bool)

(assert (=> bs!1252473 m!6445610))

(assert (=> bs!1252473 m!6444892))

(assert (=> bs!1252473 m!6444704))

(declare-fun m!6445612 () Bool)

(assert (=> bs!1252473 m!6445612))

(declare-fun m!6445614 () Bool)

(assert (=> bs!1252473 m!6445614))

(assert (=> bs!1252473 m!6445612))

(declare-fun m!6445616 () Bool)

(assert (=> bs!1252473 m!6445616))

(assert (=> bs!1252473 m!6444704))

(assert (=> b!5420747 d!1729462))

(declare-fun d!1729468 () Bool)

(assert (=> d!1729468 (= (get!21310 lt!2210862) (v!51344 lt!2210862))))

(assert (=> b!5420747 d!1729468))

(declare-fun d!1729470 () Bool)

(declare-fun c!945574 () Bool)

(assert (=> d!1729470 (= c!945574 (isEmpty!33791 s!2326))))

(declare-fun e!3360051 () Bool)

(assert (=> d!1729470 (= (matchZipper!1449 z!1189 s!2326) e!3360051)))

(declare-fun b!5421589 () Bool)

(assert (=> b!5421589 (= e!3360051 (nullableZipper!1455 z!1189))))

(declare-fun b!5421590 () Bool)

(assert (=> b!5421590 (= e!3360051 (matchZipper!1449 (derivationStepZipper!1444 z!1189 (head!11630 s!2326)) (tail!10727 s!2326)))))

(assert (= (and d!1729470 c!945574) b!5421589))

(assert (= (and d!1729470 (not c!945574)) b!5421590))

(assert (=> d!1729470 m!6445118))

(declare-fun m!6445618 () Bool)

(assert (=> b!5421589 m!6445618))

(assert (=> b!5421590 m!6445112))

(assert (=> b!5421590 m!6445112))

(declare-fun m!6445620 () Bool)

(assert (=> b!5421590 m!6445620))

(assert (=> b!5421590 m!6445108))

(assert (=> b!5421590 m!6445620))

(assert (=> b!5421590 m!6445108))

(declare-fun m!6445624 () Bool)

(assert (=> b!5421590 m!6445624))

(assert (=> b!5420728 d!1729470))

(declare-fun d!1729472 () Bool)

(assert (=> d!1729472 (= (isEmpty!33788 (t!375139 zl!343)) ((_ is Nil!61792) (t!375139 zl!343)))))

(assert (=> b!5420741 d!1729472))

(declare-fun d!1729476 () Bool)

(declare-fun res!2306773 () Bool)

(declare-fun e!3360097 () Bool)

(assert (=> d!1729476 (=> res!2306773 e!3360097)))

(assert (=> d!1729476 (= res!2306773 ((_ is ElementMatch!15205) lt!2210832))))

(assert (=> d!1729476 (= (validRegex!6941 lt!2210832) e!3360097)))

(declare-fun bm!388024 () Bool)

(declare-fun call!388030 () Bool)

(declare-fun call!388031 () Bool)

(assert (=> bm!388024 (= call!388030 call!388031)))

(declare-fun b!5421657 () Bool)

(declare-fun e!3360095 () Bool)

(assert (=> b!5421657 (= e!3360095 call!388030)))

(declare-fun bm!388025 () Bool)

(declare-fun c!945591 () Bool)

(declare-fun c!945590 () Bool)

(assert (=> bm!388025 (= call!388031 (validRegex!6941 (ite c!945590 (reg!15534 lt!2210832) (ite c!945591 (regTwo!30923 lt!2210832) (regTwo!30922 lt!2210832)))))))

(declare-fun b!5421658 () Bool)

(declare-fun e!3360096 () Bool)

(declare-fun e!3360093 () Bool)

(assert (=> b!5421658 (= e!3360096 e!3360093)))

(assert (=> b!5421658 (= c!945591 ((_ is Union!15205) lt!2210832))))

(declare-fun bm!388026 () Bool)

(declare-fun call!388029 () Bool)

(assert (=> bm!388026 (= call!388029 (validRegex!6941 (ite c!945591 (regOne!30923 lt!2210832) (regOne!30922 lt!2210832))))))

(declare-fun b!5421659 () Bool)

(declare-fun e!3360098 () Bool)

(assert (=> b!5421659 (= e!3360096 e!3360098)))

(declare-fun res!2306769 () Bool)

(assert (=> b!5421659 (= res!2306769 (not (nullable!5374 (reg!15534 lt!2210832))))))

(assert (=> b!5421659 (=> (not res!2306769) (not e!3360098))))

(declare-fun b!5421660 () Bool)

(declare-fun res!2306772 () Bool)

(declare-fun e!3360094 () Bool)

(assert (=> b!5421660 (=> (not res!2306772) (not e!3360094))))

(assert (=> b!5421660 (= res!2306772 call!388029)))

(assert (=> b!5421660 (= e!3360093 e!3360094)))

(declare-fun b!5421661 () Bool)

(assert (=> b!5421661 (= e!3360097 e!3360096)))

(assert (=> b!5421661 (= c!945590 ((_ is Star!15205) lt!2210832))))

(declare-fun b!5421662 () Bool)

(declare-fun e!3360099 () Bool)

(assert (=> b!5421662 (= e!3360099 e!3360095)))

(declare-fun res!2306771 () Bool)

(assert (=> b!5421662 (=> (not res!2306771) (not e!3360095))))

(assert (=> b!5421662 (= res!2306771 call!388029)))

(declare-fun b!5421663 () Bool)

(assert (=> b!5421663 (= e!3360094 call!388030)))

(declare-fun b!5421664 () Bool)

(declare-fun res!2306770 () Bool)

(assert (=> b!5421664 (=> res!2306770 e!3360099)))

(assert (=> b!5421664 (= res!2306770 (not ((_ is Concat!24050) lt!2210832)))))

(assert (=> b!5421664 (= e!3360093 e!3360099)))

(declare-fun b!5421665 () Bool)

(assert (=> b!5421665 (= e!3360098 call!388031)))

(assert (= (and d!1729476 (not res!2306773)) b!5421661))

(assert (= (and b!5421661 c!945590) b!5421659))

(assert (= (and b!5421661 (not c!945590)) b!5421658))

(assert (= (and b!5421659 res!2306769) b!5421665))

(assert (= (and b!5421658 c!945591) b!5421660))

(assert (= (and b!5421658 (not c!945591)) b!5421664))

(assert (= (and b!5421660 res!2306772) b!5421663))

(assert (= (and b!5421664 (not res!2306770)) b!5421662))

(assert (= (and b!5421662 res!2306771) b!5421657))

(assert (= (or b!5421663 b!5421657) bm!388024))

(assert (= (or b!5421660 b!5421662) bm!388026))

(assert (= (or b!5421665 bm!388024) bm!388025))

(declare-fun m!6445690 () Bool)

(assert (=> bm!388025 m!6445690))

(declare-fun m!6445692 () Bool)

(assert (=> bm!388026 m!6445692))

(declare-fun m!6445694 () Bool)

(assert (=> b!5421659 m!6445694))

(assert (=> b!5420760 d!1729476))

(declare-fun b!5421666 () Bool)

(declare-fun res!2306781 () Bool)

(declare-fun e!3360102 () Bool)

(assert (=> b!5421666 (=> res!2306781 e!3360102)))

(assert (=> b!5421666 (= res!2306781 (not (isEmpty!33791 (tail!10727 lt!2210867))))))

(declare-fun b!5421667 () Bool)

(declare-fun e!3360101 () Bool)

(assert (=> b!5421667 (= e!3360101 (matchR!7390 (derivativeStep!4277 lt!2210832 (head!11630 lt!2210867)) (tail!10727 lt!2210867)))))

(declare-fun d!1729494 () Bool)

(declare-fun e!3360100 () Bool)

(assert (=> d!1729494 e!3360100))

(declare-fun c!945594 () Bool)

(assert (=> d!1729494 (= c!945594 ((_ is EmptyExpr!15205) lt!2210832))))

(declare-fun lt!2211039 () Bool)

(assert (=> d!1729494 (= lt!2211039 e!3360101)))

(declare-fun c!945592 () Bool)

(assert (=> d!1729494 (= c!945592 (isEmpty!33791 lt!2210867))))

(assert (=> d!1729494 (validRegex!6941 lt!2210832)))

(assert (=> d!1729494 (= (matchR!7390 lt!2210832 lt!2210867) lt!2211039)))

(declare-fun b!5421668 () Bool)

(declare-fun e!3360105 () Bool)

(assert (=> b!5421668 (= e!3360105 e!3360102)))

(declare-fun res!2306775 () Bool)

(assert (=> b!5421668 (=> res!2306775 e!3360102)))

(declare-fun call!388032 () Bool)

(assert (=> b!5421668 (= res!2306775 call!388032)))

(declare-fun b!5421669 () Bool)

(declare-fun e!3360106 () Bool)

(assert (=> b!5421669 (= e!3360106 (not lt!2211039))))

(declare-fun b!5421670 () Bool)

(declare-fun res!2306776 () Bool)

(declare-fun e!3360103 () Bool)

(assert (=> b!5421670 (=> res!2306776 e!3360103)))

(declare-fun e!3360104 () Bool)

(assert (=> b!5421670 (= res!2306776 e!3360104)))

(declare-fun res!2306778 () Bool)

(assert (=> b!5421670 (=> (not res!2306778) (not e!3360104))))

(assert (=> b!5421670 (= res!2306778 lt!2211039)))

(declare-fun b!5421671 () Bool)

(declare-fun res!2306777 () Bool)

(assert (=> b!5421671 (=> res!2306777 e!3360103)))

(assert (=> b!5421671 (= res!2306777 (not ((_ is ElementMatch!15205) lt!2210832)))))

(assert (=> b!5421671 (= e!3360106 e!3360103)))

(declare-fun b!5421672 () Bool)

(assert (=> b!5421672 (= e!3360101 (nullable!5374 lt!2210832))))

(declare-fun b!5421673 () Bool)

(assert (=> b!5421673 (= e!3360104 (= (head!11630 lt!2210867) (c!945345 lt!2210832)))))

(declare-fun b!5421674 () Bool)

(assert (=> b!5421674 (= e!3360103 e!3360105)))

(declare-fun res!2306774 () Bool)

(assert (=> b!5421674 (=> (not res!2306774) (not e!3360105))))

(assert (=> b!5421674 (= res!2306774 (not lt!2211039))))

(declare-fun b!5421675 () Bool)

(assert (=> b!5421675 (= e!3360100 e!3360106)))

(declare-fun c!945593 () Bool)

(assert (=> b!5421675 (= c!945593 ((_ is EmptyLang!15205) lt!2210832))))

(declare-fun b!5421676 () Bool)

(assert (=> b!5421676 (= e!3360102 (not (= (head!11630 lt!2210867) (c!945345 lt!2210832))))))

(declare-fun b!5421677 () Bool)

(assert (=> b!5421677 (= e!3360100 (= lt!2211039 call!388032))))

(declare-fun b!5421678 () Bool)

(declare-fun res!2306779 () Bool)

(assert (=> b!5421678 (=> (not res!2306779) (not e!3360104))))

(assert (=> b!5421678 (= res!2306779 (not call!388032))))

(declare-fun bm!388027 () Bool)

(assert (=> bm!388027 (= call!388032 (isEmpty!33791 lt!2210867))))

(declare-fun b!5421679 () Bool)

(declare-fun res!2306780 () Bool)

(assert (=> b!5421679 (=> (not res!2306780) (not e!3360104))))

(assert (=> b!5421679 (= res!2306780 (isEmpty!33791 (tail!10727 lt!2210867)))))

(assert (= (and d!1729494 c!945592) b!5421672))

(assert (= (and d!1729494 (not c!945592)) b!5421667))

(assert (= (and d!1729494 c!945594) b!5421677))

(assert (= (and d!1729494 (not c!945594)) b!5421675))

(assert (= (and b!5421675 c!945593) b!5421669))

(assert (= (and b!5421675 (not c!945593)) b!5421671))

(assert (= (and b!5421671 (not res!2306777)) b!5421670))

(assert (= (and b!5421670 res!2306778) b!5421678))

(assert (= (and b!5421678 res!2306779) b!5421679))

(assert (= (and b!5421679 res!2306780) b!5421673))

(assert (= (and b!5421670 (not res!2306776)) b!5421674))

(assert (= (and b!5421674 res!2306774) b!5421668))

(assert (= (and b!5421668 (not res!2306775)) b!5421666))

(assert (= (and b!5421666 (not res!2306781)) b!5421676))

(assert (= (or b!5421677 b!5421678 b!5421668) bm!388027))

(declare-fun m!6445696 () Bool)

(assert (=> b!5421672 m!6445696))

(declare-fun m!6445698 () Bool)

(assert (=> b!5421679 m!6445698))

(assert (=> b!5421679 m!6445698))

(declare-fun m!6445700 () Bool)

(assert (=> b!5421679 m!6445700))

(declare-fun m!6445702 () Bool)

(assert (=> b!5421667 m!6445702))

(assert (=> b!5421667 m!6445702))

(declare-fun m!6445704 () Bool)

(assert (=> b!5421667 m!6445704))

(assert (=> b!5421667 m!6445698))

(assert (=> b!5421667 m!6445704))

(assert (=> b!5421667 m!6445698))

(declare-fun m!6445706 () Bool)

(assert (=> b!5421667 m!6445706))

(declare-fun m!6445708 () Bool)

(assert (=> d!1729494 m!6445708))

(assert (=> d!1729494 m!6444756))

(assert (=> b!5421666 m!6445698))

(assert (=> b!5421666 m!6445698))

(assert (=> b!5421666 m!6445700))

(assert (=> b!5421676 m!6445702))

(assert (=> b!5421673 m!6445702))

(assert (=> bm!388027 m!6445708))

(assert (=> b!5420760 d!1729494))

(declare-fun d!1729496 () Bool)

(assert (=> d!1729496 (matchR!7390 (Star!15205 (reg!15534 (regOne!30922 r!7292))) (++!13584 (_1!35707 lt!2210866) (_2!35707 lt!2210866)))))

(declare-fun lt!2211044 () Unit!154342)

(declare-fun choose!41079 (Regex!15205 List!61914 List!61914) Unit!154342)

(assert (=> d!1729496 (= lt!2211044 (choose!41079 (reg!15534 (regOne!30922 r!7292)) (_1!35707 lt!2210866) (_2!35707 lt!2210866)))))

(assert (=> d!1729496 (validRegex!6941 (Star!15205 (reg!15534 (regOne!30922 r!7292))))))

(assert (=> d!1729496 (= (lemmaStarApp!58 (reg!15534 (regOne!30922 r!7292)) (_1!35707 lt!2210866) (_2!35707 lt!2210866)) lt!2211044)))

(declare-fun bs!1252491 () Bool)

(assert (= bs!1252491 d!1729496))

(assert (=> bs!1252491 m!6444796))

(assert (=> bs!1252491 m!6444796))

(declare-fun m!6445742 () Bool)

(assert (=> bs!1252491 m!6445742))

(declare-fun m!6445744 () Bool)

(assert (=> bs!1252491 m!6445744))

(declare-fun m!6445746 () Bool)

(assert (=> bs!1252491 m!6445746))

(assert (=> b!5420760 d!1729496))

(declare-fun bs!1252492 () Bool)

(declare-fun d!1729504 () Bool)

(assert (= bs!1252492 (and d!1729504 b!5420733)))

(declare-fun lambda!283957 () Int)

(assert (=> bs!1252492 (= lambda!283957 lambda!283882)))

(declare-fun bs!1252493 () Bool)

(assert (= bs!1252493 (and d!1729504 d!1729276)))

(assert (=> bs!1252493 (= lambda!283957 lambda!283893)))

(declare-fun bs!1252494 () Bool)

(assert (= bs!1252494 (and d!1729504 d!1729302)))

(assert (=> bs!1252494 (= lambda!283957 lambda!283916)))

(assert (=> d!1729504 (= (inv!81259 setElem!35327) (forall!14549 (exprs!5089 setElem!35327) lambda!283957))))

(declare-fun bs!1252495 () Bool)

(assert (= bs!1252495 d!1729504))

(declare-fun m!6445748 () Bool)

(assert (=> bs!1252495 m!6445748))

(assert (=> setNonEmpty!35327 d!1729504))

(declare-fun d!1729506 () Bool)

(declare-fun res!2306796 () Bool)

(declare-fun e!3360120 () Bool)

(assert (=> d!1729506 (=> res!2306796 e!3360120)))

(assert (=> d!1729506 (= res!2306796 ((_ is ElementMatch!15205) r!7292))))

(assert (=> d!1729506 (= (validRegex!6941 r!7292) e!3360120)))

(declare-fun bm!388029 () Bool)

(declare-fun call!388035 () Bool)

(declare-fun call!388036 () Bool)

(assert (=> bm!388029 (= call!388035 call!388036)))

(declare-fun b!5421698 () Bool)

(declare-fun e!3360118 () Bool)

(assert (=> b!5421698 (= e!3360118 call!388035)))

(declare-fun c!945600 () Bool)

(declare-fun c!945599 () Bool)

(declare-fun bm!388030 () Bool)

(assert (=> bm!388030 (= call!388036 (validRegex!6941 (ite c!945599 (reg!15534 r!7292) (ite c!945600 (regTwo!30923 r!7292) (regTwo!30922 r!7292)))))))

(declare-fun b!5421699 () Bool)

(declare-fun e!3360119 () Bool)

(declare-fun e!3360116 () Bool)

(assert (=> b!5421699 (= e!3360119 e!3360116)))

(assert (=> b!5421699 (= c!945600 ((_ is Union!15205) r!7292))))

(declare-fun bm!388031 () Bool)

(declare-fun call!388034 () Bool)

(assert (=> bm!388031 (= call!388034 (validRegex!6941 (ite c!945600 (regOne!30923 r!7292) (regOne!30922 r!7292))))))

(declare-fun b!5421700 () Bool)

(declare-fun e!3360121 () Bool)

(assert (=> b!5421700 (= e!3360119 e!3360121)))

(declare-fun res!2306792 () Bool)

(assert (=> b!5421700 (= res!2306792 (not (nullable!5374 (reg!15534 r!7292))))))

(assert (=> b!5421700 (=> (not res!2306792) (not e!3360121))))

(declare-fun b!5421701 () Bool)

(declare-fun res!2306795 () Bool)

(declare-fun e!3360117 () Bool)

(assert (=> b!5421701 (=> (not res!2306795) (not e!3360117))))

(assert (=> b!5421701 (= res!2306795 call!388034)))

(assert (=> b!5421701 (= e!3360116 e!3360117)))

(declare-fun b!5421702 () Bool)

(assert (=> b!5421702 (= e!3360120 e!3360119)))

(assert (=> b!5421702 (= c!945599 ((_ is Star!15205) r!7292))))

(declare-fun b!5421703 () Bool)

(declare-fun e!3360122 () Bool)

(assert (=> b!5421703 (= e!3360122 e!3360118)))

(declare-fun res!2306794 () Bool)

(assert (=> b!5421703 (=> (not res!2306794) (not e!3360118))))

(assert (=> b!5421703 (= res!2306794 call!388034)))

(declare-fun b!5421704 () Bool)

(assert (=> b!5421704 (= e!3360117 call!388035)))

(declare-fun b!5421705 () Bool)

(declare-fun res!2306793 () Bool)

(assert (=> b!5421705 (=> res!2306793 e!3360122)))

(assert (=> b!5421705 (= res!2306793 (not ((_ is Concat!24050) r!7292)))))

(assert (=> b!5421705 (= e!3360116 e!3360122)))

(declare-fun b!5421706 () Bool)

(assert (=> b!5421706 (= e!3360121 call!388036)))

(assert (= (and d!1729506 (not res!2306796)) b!5421702))

(assert (= (and b!5421702 c!945599) b!5421700))

(assert (= (and b!5421702 (not c!945599)) b!5421699))

(assert (= (and b!5421700 res!2306792) b!5421706))

(assert (= (and b!5421699 c!945600) b!5421701))

(assert (= (and b!5421699 (not c!945600)) b!5421705))

(assert (= (and b!5421701 res!2306795) b!5421704))

(assert (= (and b!5421705 (not res!2306793)) b!5421703))

(assert (= (and b!5421703 res!2306794) b!5421698))

(assert (= (or b!5421704 b!5421698) bm!388029))

(assert (= (or b!5421701 b!5421703) bm!388031))

(assert (= (or b!5421706 bm!388029) bm!388030))

(declare-fun m!6445750 () Bool)

(assert (=> bm!388030 m!6445750))

(declare-fun m!6445752 () Bool)

(assert (=> bm!388031 m!6445752))

(declare-fun m!6445754 () Bool)

(assert (=> b!5421700 m!6445754))

(assert (=> start!569098 d!1729506))

(declare-fun d!1729508 () Bool)

(assert (=> d!1729508 (= (flatMap!932 z!1189 lambda!283880) (choose!41075 z!1189 lambda!283880))))

(declare-fun bs!1252496 () Bool)

(assert (= bs!1252496 d!1729508))

(declare-fun m!6445756 () Bool)

(assert (=> bs!1252496 m!6445756))

(assert (=> b!5420761 d!1729508))

(declare-fun d!1729510 () Bool)

(assert (=> d!1729510 (= (flatMap!932 z!1189 lambda!283880) (dynLambda!24351 lambda!283880 (h!68240 zl!343)))))

(declare-fun lt!2211045 () Unit!154342)

(assert (=> d!1729510 (= lt!2211045 (choose!41077 z!1189 (h!68240 zl!343) lambda!283880))))

(assert (=> d!1729510 (= z!1189 (store ((as const (Array Context!9178 Bool)) false) (h!68240 zl!343) true))))

(assert (=> d!1729510 (= (lemmaFlatMapOnSingletonSet!464 z!1189 (h!68240 zl!343) lambda!283880) lt!2211045)))

(declare-fun b_lambda!206915 () Bool)

(assert (=> (not b_lambda!206915) (not d!1729510)))

(declare-fun bs!1252497 () Bool)

(assert (= bs!1252497 d!1729510))

(assert (=> bs!1252497 m!6444904))

(declare-fun m!6445758 () Bool)

(assert (=> bs!1252497 m!6445758))

(declare-fun m!6445760 () Bool)

(assert (=> bs!1252497 m!6445760))

(declare-fun m!6445762 () Bool)

(assert (=> bs!1252497 m!6445762))

(assert (=> b!5420761 d!1729510))

(declare-fun d!1729512 () Bool)

(declare-fun nullableFct!1607 (Regex!15205) Bool)

(assert (=> d!1729512 (= (nullable!5374 (h!68239 (exprs!5089 (h!68240 zl!343)))) (nullableFct!1607 (h!68239 (exprs!5089 (h!68240 zl!343)))))))

(declare-fun bs!1252498 () Bool)

(assert (= bs!1252498 d!1729512))

(declare-fun m!6445764 () Bool)

(assert (=> bs!1252498 m!6445764))

(assert (=> b!5420761 d!1729512))

(declare-fun b!5421707 () Bool)

(declare-fun e!3360124 () (InoxSet Context!9178))

(declare-fun e!3360125 () (InoxSet Context!9178))

(assert (=> b!5421707 (= e!3360124 e!3360125)))

(declare-fun c!945602 () Bool)

(assert (=> b!5421707 (= c!945602 ((_ is Cons!61791) (exprs!5089 (Context!9179 (Cons!61791 (h!68239 (exprs!5089 (h!68240 zl!343))) (t!375138 (exprs!5089 (h!68240 zl!343))))))))))

(declare-fun b!5421708 () Bool)

(assert (=> b!5421708 (= e!3360125 ((as const (Array Context!9178 Bool)) false))))

(declare-fun d!1729514 () Bool)

(declare-fun c!945601 () Bool)

(declare-fun e!3360123 () Bool)

(assert (=> d!1729514 (= c!945601 e!3360123)))

(declare-fun res!2306797 () Bool)

(assert (=> d!1729514 (=> (not res!2306797) (not e!3360123))))

(assert (=> d!1729514 (= res!2306797 ((_ is Cons!61791) (exprs!5089 (Context!9179 (Cons!61791 (h!68239 (exprs!5089 (h!68240 zl!343))) (t!375138 (exprs!5089 (h!68240 zl!343))))))))))

(assert (=> d!1729514 (= (derivationStepZipperUp!577 (Context!9179 (Cons!61791 (h!68239 (exprs!5089 (h!68240 zl!343))) (t!375138 (exprs!5089 (h!68240 zl!343))))) (h!68238 s!2326)) e!3360124)))

(declare-fun b!5421709 () Bool)

(assert (=> b!5421709 (= e!3360123 (nullable!5374 (h!68239 (exprs!5089 (Context!9179 (Cons!61791 (h!68239 (exprs!5089 (h!68240 zl!343))) (t!375138 (exprs!5089 (h!68240 zl!343)))))))))))

(declare-fun b!5421710 () Bool)

(declare-fun call!388037 () (InoxSet Context!9178))

(assert (=> b!5421710 (= e!3360124 ((_ map or) call!388037 (derivationStepZipperUp!577 (Context!9179 (t!375138 (exprs!5089 (Context!9179 (Cons!61791 (h!68239 (exprs!5089 (h!68240 zl!343))) (t!375138 (exprs!5089 (h!68240 zl!343)))))))) (h!68238 s!2326))))))

(declare-fun b!5421711 () Bool)

(assert (=> b!5421711 (= e!3360125 call!388037)))

(declare-fun bm!388032 () Bool)

(assert (=> bm!388032 (= call!388037 (derivationStepZipperDown!653 (h!68239 (exprs!5089 (Context!9179 (Cons!61791 (h!68239 (exprs!5089 (h!68240 zl!343))) (t!375138 (exprs!5089 (h!68240 zl!343))))))) (Context!9179 (t!375138 (exprs!5089 (Context!9179 (Cons!61791 (h!68239 (exprs!5089 (h!68240 zl!343))) (t!375138 (exprs!5089 (h!68240 zl!343)))))))) (h!68238 s!2326)))))

(assert (= (and d!1729514 res!2306797) b!5421709))

(assert (= (and d!1729514 c!945601) b!5421710))

(assert (= (and d!1729514 (not c!945601)) b!5421707))

(assert (= (and b!5421707 c!945602) b!5421711))

(assert (= (and b!5421707 (not c!945602)) b!5421708))

(assert (= (or b!5421710 b!5421711) bm!388032))

(declare-fun m!6445766 () Bool)

(assert (=> b!5421709 m!6445766))

(declare-fun m!6445768 () Bool)

(assert (=> b!5421710 m!6445768))

(declare-fun m!6445770 () Bool)

(assert (=> bm!388032 m!6445770))

(assert (=> b!5420761 d!1729514))

(declare-fun b!5421712 () Bool)

(declare-fun e!3360127 () (InoxSet Context!9178))

(declare-fun e!3360128 () (InoxSet Context!9178))

(assert (=> b!5421712 (= e!3360127 e!3360128)))

(declare-fun c!945604 () Bool)

(assert (=> b!5421712 (= c!945604 ((_ is Cons!61791) (exprs!5089 (h!68240 zl!343))))))

(declare-fun b!5421713 () Bool)

(assert (=> b!5421713 (= e!3360128 ((as const (Array Context!9178 Bool)) false))))

(declare-fun d!1729516 () Bool)

(declare-fun c!945603 () Bool)

(declare-fun e!3360126 () Bool)

(assert (=> d!1729516 (= c!945603 e!3360126)))

(declare-fun res!2306798 () Bool)

(assert (=> d!1729516 (=> (not res!2306798) (not e!3360126))))

(assert (=> d!1729516 (= res!2306798 ((_ is Cons!61791) (exprs!5089 (h!68240 zl!343))))))

(assert (=> d!1729516 (= (derivationStepZipperUp!577 (h!68240 zl!343) (h!68238 s!2326)) e!3360127)))

(declare-fun b!5421714 () Bool)

(assert (=> b!5421714 (= e!3360126 (nullable!5374 (h!68239 (exprs!5089 (h!68240 zl!343)))))))

(declare-fun b!5421715 () Bool)

(declare-fun call!388038 () (InoxSet Context!9178))

(assert (=> b!5421715 (= e!3360127 ((_ map or) call!388038 (derivationStepZipperUp!577 (Context!9179 (t!375138 (exprs!5089 (h!68240 zl!343)))) (h!68238 s!2326))))))

(declare-fun b!5421716 () Bool)

(assert (=> b!5421716 (= e!3360128 call!388038)))

(declare-fun bm!388033 () Bool)

(assert (=> bm!388033 (= call!388038 (derivationStepZipperDown!653 (h!68239 (exprs!5089 (h!68240 zl!343))) (Context!9179 (t!375138 (exprs!5089 (h!68240 zl!343)))) (h!68238 s!2326)))))

(assert (= (and d!1729516 res!2306798) b!5421714))

(assert (= (and d!1729516 c!945603) b!5421715))

(assert (= (and d!1729516 (not c!945603)) b!5421712))

(assert (= (and b!5421712 c!945604) b!5421716))

(assert (= (and b!5421712 (not c!945604)) b!5421713))

(assert (= (or b!5421715 b!5421716) bm!388033))

(assert (=> b!5421714 m!6444902))

(declare-fun m!6445772 () Bool)

(assert (=> b!5421715 m!6445772))

(declare-fun m!6445774 () Bool)

(assert (=> bm!388033 m!6445774))

(assert (=> b!5420761 d!1729516))

(declare-fun b!5421717 () Bool)

(declare-fun e!3360130 () (InoxSet Context!9178))

(declare-fun e!3360131 () (InoxSet Context!9178))

(assert (=> b!5421717 (= e!3360130 e!3360131)))

(declare-fun c!945606 () Bool)

(assert (=> b!5421717 (= c!945606 ((_ is Cons!61791) (exprs!5089 lt!2210804)))))

(declare-fun b!5421718 () Bool)

(assert (=> b!5421718 (= e!3360131 ((as const (Array Context!9178 Bool)) false))))

(declare-fun d!1729518 () Bool)

(declare-fun c!945605 () Bool)

(declare-fun e!3360129 () Bool)

(assert (=> d!1729518 (= c!945605 e!3360129)))

(declare-fun res!2306799 () Bool)

(assert (=> d!1729518 (=> (not res!2306799) (not e!3360129))))

(assert (=> d!1729518 (= res!2306799 ((_ is Cons!61791) (exprs!5089 lt!2210804)))))

(assert (=> d!1729518 (= (derivationStepZipperUp!577 lt!2210804 (h!68238 s!2326)) e!3360130)))

(declare-fun b!5421719 () Bool)

(assert (=> b!5421719 (= e!3360129 (nullable!5374 (h!68239 (exprs!5089 lt!2210804))))))

(declare-fun call!388039 () (InoxSet Context!9178))

(declare-fun b!5421720 () Bool)

(assert (=> b!5421720 (= e!3360130 ((_ map or) call!388039 (derivationStepZipperUp!577 (Context!9179 (t!375138 (exprs!5089 lt!2210804))) (h!68238 s!2326))))))

(declare-fun b!5421721 () Bool)

(assert (=> b!5421721 (= e!3360131 call!388039)))

(declare-fun bm!388034 () Bool)

(assert (=> bm!388034 (= call!388039 (derivationStepZipperDown!653 (h!68239 (exprs!5089 lt!2210804)) (Context!9179 (t!375138 (exprs!5089 lt!2210804))) (h!68238 s!2326)))))

(assert (= (and d!1729518 res!2306799) b!5421719))

(assert (= (and d!1729518 c!945605) b!5421720))

(assert (= (and d!1729518 (not c!945605)) b!5421717))

(assert (= (and b!5421717 c!945606) b!5421721))

(assert (= (and b!5421717 (not c!945606)) b!5421718))

(assert (= (or b!5421720 b!5421721) bm!388034))

(declare-fun m!6445776 () Bool)

(assert (=> b!5421719 m!6445776))

(declare-fun m!6445778 () Bool)

(assert (=> b!5421720 m!6445778))

(declare-fun m!6445780 () Bool)

(assert (=> bm!388034 m!6445780))

(assert (=> b!5420761 d!1729518))

(declare-fun b!5421722 () Bool)

(declare-fun c!945611 () Bool)

(declare-fun e!3360137 () Bool)

(assert (=> b!5421722 (= c!945611 e!3360137)))

(declare-fun res!2306800 () Bool)

(assert (=> b!5421722 (=> (not res!2306800) (not e!3360137))))

(assert (=> b!5421722 (= res!2306800 ((_ is Concat!24050) (h!68239 (exprs!5089 (h!68240 zl!343)))))))

(declare-fun e!3360132 () (InoxSet Context!9178))

(declare-fun e!3360135 () (InoxSet Context!9178))

(assert (=> b!5421722 (= e!3360132 e!3360135)))

(declare-fun b!5421723 () Bool)

(declare-fun call!388041 () (InoxSet Context!9178))

(declare-fun call!388042 () (InoxSet Context!9178))

(assert (=> b!5421723 (= e!3360132 ((_ map or) call!388041 call!388042))))

(declare-fun bm!388035 () Bool)

(declare-fun call!388045 () List!61915)

(declare-fun call!388040 () List!61915)

(assert (=> bm!388035 (= call!388045 call!388040)))

(declare-fun b!5421724 () Bool)

(declare-fun c!945610 () Bool)

(assert (=> b!5421724 (= c!945610 ((_ is Star!15205) (h!68239 (exprs!5089 (h!68240 zl!343)))))))

(declare-fun e!3360133 () (InoxSet Context!9178))

(declare-fun e!3360136 () (InoxSet Context!9178))

(assert (=> b!5421724 (= e!3360133 e!3360136)))

(declare-fun c!945607 () Bool)

(declare-fun bm!388036 () Bool)

(declare-fun c!945608 () Bool)

(assert (=> bm!388036 (= call!388041 (derivationStepZipperDown!653 (ite c!945607 (regOne!30923 (h!68239 (exprs!5089 (h!68240 zl!343)))) (ite c!945611 (regTwo!30922 (h!68239 (exprs!5089 (h!68240 zl!343)))) (ite c!945608 (regOne!30922 (h!68239 (exprs!5089 (h!68240 zl!343)))) (reg!15534 (h!68239 (exprs!5089 (h!68240 zl!343))))))) (ite (or c!945607 c!945611) lt!2210804 (Context!9179 call!388045)) (h!68238 s!2326)))))

(declare-fun b!5421725 () Bool)

(assert (=> b!5421725 (= e!3360135 e!3360133)))

(assert (=> b!5421725 (= c!945608 ((_ is Concat!24050) (h!68239 (exprs!5089 (h!68240 zl!343)))))))

(declare-fun b!5421726 () Bool)

(assert (=> b!5421726 (= e!3360137 (nullable!5374 (regOne!30922 (h!68239 (exprs!5089 (h!68240 zl!343))))))))

(declare-fun b!5421727 () Bool)

(declare-fun call!388043 () (InoxSet Context!9178))

(assert (=> b!5421727 (= e!3360135 ((_ map or) call!388042 call!388043))))

(declare-fun b!5421728 () Bool)

(assert (=> b!5421728 (= e!3360136 ((as const (Array Context!9178 Bool)) false))))

(declare-fun b!5421729 () Bool)

(declare-fun call!388044 () (InoxSet Context!9178))

(assert (=> b!5421729 (= e!3360136 call!388044)))

(declare-fun b!5421730 () Bool)

(assert (=> b!5421730 (= e!3360133 call!388044)))

(declare-fun b!5421731 () Bool)

(declare-fun e!3360134 () (InoxSet Context!9178))

(assert (=> b!5421731 (= e!3360134 e!3360132)))

(assert (=> b!5421731 (= c!945607 ((_ is Union!15205) (h!68239 (exprs!5089 (h!68240 zl!343)))))))

(declare-fun bm!388037 () Bool)

(assert (=> bm!388037 (= call!388040 ($colon$colon!1506 (exprs!5089 lt!2210804) (ite (or c!945611 c!945608) (regTwo!30922 (h!68239 (exprs!5089 (h!68240 zl!343)))) (h!68239 (exprs!5089 (h!68240 zl!343))))))))

(declare-fun bm!388038 () Bool)

(assert (=> bm!388038 (= call!388044 call!388043)))

(declare-fun bm!388039 () Bool)

(assert (=> bm!388039 (= call!388042 (derivationStepZipperDown!653 (ite c!945607 (regTwo!30923 (h!68239 (exprs!5089 (h!68240 zl!343)))) (regOne!30922 (h!68239 (exprs!5089 (h!68240 zl!343))))) (ite c!945607 lt!2210804 (Context!9179 call!388040)) (h!68238 s!2326)))))

(declare-fun d!1729520 () Bool)

(declare-fun c!945609 () Bool)

(assert (=> d!1729520 (= c!945609 (and ((_ is ElementMatch!15205) (h!68239 (exprs!5089 (h!68240 zl!343)))) (= (c!945345 (h!68239 (exprs!5089 (h!68240 zl!343)))) (h!68238 s!2326))))))

(assert (=> d!1729520 (= (derivationStepZipperDown!653 (h!68239 (exprs!5089 (h!68240 zl!343))) lt!2210804 (h!68238 s!2326)) e!3360134)))

(declare-fun bm!388040 () Bool)

(assert (=> bm!388040 (= call!388043 call!388041)))

(declare-fun b!5421732 () Bool)

(assert (=> b!5421732 (= e!3360134 (store ((as const (Array Context!9178 Bool)) false) lt!2210804 true))))

(assert (= (and d!1729520 c!945609) b!5421732))

(assert (= (and d!1729520 (not c!945609)) b!5421731))

(assert (= (and b!5421731 c!945607) b!5421723))

(assert (= (and b!5421731 (not c!945607)) b!5421722))

(assert (= (and b!5421722 res!2306800) b!5421726))

(assert (= (and b!5421722 c!945611) b!5421727))

(assert (= (and b!5421722 (not c!945611)) b!5421725))

(assert (= (and b!5421725 c!945608) b!5421730))

(assert (= (and b!5421725 (not c!945608)) b!5421724))

(assert (= (and b!5421724 c!945610) b!5421729))

(assert (= (and b!5421724 (not c!945610)) b!5421728))

(assert (= (or b!5421730 b!5421729) bm!388035))

(assert (= (or b!5421730 b!5421729) bm!388038))

(assert (= (or b!5421727 bm!388035) bm!388037))

(assert (= (or b!5421727 bm!388038) bm!388040))

(assert (= (or b!5421723 b!5421727) bm!388039))

(assert (= (or b!5421723 bm!388040) bm!388036))

(declare-fun m!6445782 () Bool)

(assert (=> b!5421726 m!6445782))

(declare-fun m!6445784 () Bool)

(assert (=> bm!388036 m!6445784))

(declare-fun m!6445786 () Bool)

(assert (=> b!5421732 m!6445786))

(declare-fun m!6445788 () Bool)

(assert (=> bm!388039 m!6445788))

(declare-fun m!6445790 () Bool)

(assert (=> bm!388037 m!6445790))

(assert (=> b!5420761 d!1729520))

(declare-fun d!1729522 () Bool)

(assert (=> d!1729522 (= (flatMap!932 lt!2210868 lambda!283880) (choose!41075 lt!2210868 lambda!283880))))

(declare-fun bs!1252499 () Bool)

(assert (= bs!1252499 d!1729522))

(declare-fun m!6445792 () Bool)

(assert (=> bs!1252499 m!6445792))

(assert (=> b!5420764 d!1729522))

(declare-fun d!1729524 () Bool)

(declare-fun lt!2211050 () Regex!15205)

(assert (=> d!1729524 (validRegex!6941 lt!2211050)))

(assert (=> d!1729524 (= lt!2211050 (generalisedUnion!1134 (unfocusZipperList!647 lt!2210811)))))

(assert (=> d!1729524 (= (unfocusZipper!947 lt!2210811) lt!2211050)))

(declare-fun bs!1252500 () Bool)

(assert (= bs!1252500 d!1729524))

(declare-fun m!6445794 () Bool)

(assert (=> bs!1252500 m!6445794))

(declare-fun m!6445796 () Bool)

(assert (=> bs!1252500 m!6445796))

(assert (=> bs!1252500 m!6445796))

(declare-fun m!6445798 () Bool)

(assert (=> bs!1252500 m!6445798))

(assert (=> b!5420764 d!1729524))

(declare-fun b!5421743 () Bool)

(declare-fun e!3360143 () (InoxSet Context!9178))

(declare-fun e!3360144 () (InoxSet Context!9178))

(assert (=> b!5421743 (= e!3360143 e!3360144)))

(declare-fun c!945613 () Bool)

(assert (=> b!5421743 (= c!945613 ((_ is Cons!61791) (exprs!5089 lt!2210810)))))

(declare-fun b!5421744 () Bool)

(assert (=> b!5421744 (= e!3360144 ((as const (Array Context!9178 Bool)) false))))

(declare-fun d!1729526 () Bool)

(declare-fun c!945612 () Bool)

(declare-fun e!3360142 () Bool)

(assert (=> d!1729526 (= c!945612 e!3360142)))

(declare-fun res!2306811 () Bool)

(assert (=> d!1729526 (=> (not res!2306811) (not e!3360142))))

(assert (=> d!1729526 (= res!2306811 ((_ is Cons!61791) (exprs!5089 lt!2210810)))))

(assert (=> d!1729526 (= (derivationStepZipperUp!577 lt!2210810 (h!68238 s!2326)) e!3360143)))

(declare-fun b!5421745 () Bool)

(assert (=> b!5421745 (= e!3360142 (nullable!5374 (h!68239 (exprs!5089 lt!2210810))))))

(declare-fun b!5421746 () Bool)

(declare-fun call!388046 () (InoxSet Context!9178))

(assert (=> b!5421746 (= e!3360143 ((_ map or) call!388046 (derivationStepZipperUp!577 (Context!9179 (t!375138 (exprs!5089 lt!2210810))) (h!68238 s!2326))))))

(declare-fun b!5421747 () Bool)

(assert (=> b!5421747 (= e!3360144 call!388046)))

(declare-fun bm!388041 () Bool)

(assert (=> bm!388041 (= call!388046 (derivationStepZipperDown!653 (h!68239 (exprs!5089 lt!2210810)) (Context!9179 (t!375138 (exprs!5089 lt!2210810))) (h!68238 s!2326)))))

(assert (= (and d!1729526 res!2306811) b!5421745))

(assert (= (and d!1729526 c!945612) b!5421746))

(assert (= (and d!1729526 (not c!945612)) b!5421743))

(assert (= (and b!5421743 c!945613) b!5421747))

(assert (= (and b!5421743 (not c!945613)) b!5421744))

(assert (= (or b!5421746 b!5421747) bm!388041))

(declare-fun m!6445800 () Bool)

(assert (=> b!5421745 m!6445800))

(declare-fun m!6445802 () Bool)

(assert (=> b!5421746 m!6445802))

(declare-fun m!6445804 () Bool)

(assert (=> bm!388041 m!6445804))

(assert (=> b!5420764 d!1729526))

(declare-fun d!1729528 () Bool)

(assert (=> d!1729528 (= (flatMap!932 lt!2210868 lambda!283880) (dynLambda!24351 lambda!283880 lt!2210810))))

(declare-fun lt!2211051 () Unit!154342)

(assert (=> d!1729528 (= lt!2211051 (choose!41077 lt!2210868 lt!2210810 lambda!283880))))

(assert (=> d!1729528 (= lt!2210868 (store ((as const (Array Context!9178 Bool)) false) lt!2210810 true))))

(assert (=> d!1729528 (= (lemmaFlatMapOnSingletonSet!464 lt!2210868 lt!2210810 lambda!283880) lt!2211051)))

(declare-fun b_lambda!206917 () Bool)

(assert (=> (not b_lambda!206917) (not d!1729528)))

(declare-fun bs!1252501 () Bool)

(assert (= bs!1252501 d!1729528))

(assert (=> bs!1252501 m!6444710))

(declare-fun m!6445806 () Bool)

(assert (=> bs!1252501 m!6445806))

(declare-fun m!6445808 () Bool)

(assert (=> bs!1252501 m!6445808))

(assert (=> bs!1252501 m!6444704))

(assert (=> b!5420764 d!1729528))

(declare-fun d!1729530 () Bool)

(assert (=> d!1729530 (= (flatMap!932 lt!2210818 lambda!283880) (dynLambda!24351 lambda!283880 lt!2210853))))

(declare-fun lt!2211052 () Unit!154342)

(assert (=> d!1729530 (= lt!2211052 (choose!41077 lt!2210818 lt!2210853 lambda!283880))))

(assert (=> d!1729530 (= lt!2210818 (store ((as const (Array Context!9178 Bool)) false) lt!2210853 true))))

(assert (=> d!1729530 (= (lemmaFlatMapOnSingletonSet!464 lt!2210818 lt!2210853 lambda!283880) lt!2211052)))

(declare-fun b_lambda!206919 () Bool)

(assert (=> (not b_lambda!206919) (not d!1729530)))

(declare-fun bs!1252502 () Bool)

(assert (= bs!1252502 d!1729530))

(assert (=> bs!1252502 m!6444712))

(declare-fun m!6445810 () Bool)

(assert (=> bs!1252502 m!6445810))

(declare-fun m!6445812 () Bool)

(assert (=> bs!1252502 m!6445812))

(assert (=> bs!1252502 m!6444716))

(assert (=> b!5420764 d!1729530))

(declare-fun b!5421748 () Bool)

(declare-fun e!3360146 () (InoxSet Context!9178))

(declare-fun e!3360147 () (InoxSet Context!9178))

(assert (=> b!5421748 (= e!3360146 e!3360147)))

(declare-fun c!945615 () Bool)

(assert (=> b!5421748 (= c!945615 ((_ is Cons!61791) (exprs!5089 lt!2210853)))))

(declare-fun b!5421749 () Bool)

(assert (=> b!5421749 (= e!3360147 ((as const (Array Context!9178 Bool)) false))))

(declare-fun d!1729532 () Bool)

(declare-fun c!945614 () Bool)

(declare-fun e!3360145 () Bool)

(assert (=> d!1729532 (= c!945614 e!3360145)))

(declare-fun res!2306812 () Bool)

(assert (=> d!1729532 (=> (not res!2306812) (not e!3360145))))

(assert (=> d!1729532 (= res!2306812 ((_ is Cons!61791) (exprs!5089 lt!2210853)))))

(assert (=> d!1729532 (= (derivationStepZipperUp!577 lt!2210853 (h!68238 s!2326)) e!3360146)))

(declare-fun b!5421750 () Bool)

(assert (=> b!5421750 (= e!3360145 (nullable!5374 (h!68239 (exprs!5089 lt!2210853))))))

(declare-fun b!5421751 () Bool)

(declare-fun call!388047 () (InoxSet Context!9178))

(assert (=> b!5421751 (= e!3360146 ((_ map or) call!388047 (derivationStepZipperUp!577 (Context!9179 (t!375138 (exprs!5089 lt!2210853))) (h!68238 s!2326))))))

(declare-fun b!5421752 () Bool)

(assert (=> b!5421752 (= e!3360147 call!388047)))

(declare-fun bm!388042 () Bool)

(assert (=> bm!388042 (= call!388047 (derivationStepZipperDown!653 (h!68239 (exprs!5089 lt!2210853)) (Context!9179 (t!375138 (exprs!5089 lt!2210853))) (h!68238 s!2326)))))

(assert (= (and d!1729532 res!2306812) b!5421750))

(assert (= (and d!1729532 c!945614) b!5421751))

(assert (= (and d!1729532 (not c!945614)) b!5421748))

(assert (= (and b!5421748 c!945615) b!5421752))

(assert (= (and b!5421748 (not c!945615)) b!5421749))

(assert (= (or b!5421751 b!5421752) bm!388042))

(declare-fun m!6445814 () Bool)

(assert (=> b!5421750 m!6445814))

(declare-fun m!6445816 () Bool)

(assert (=> b!5421751 m!6445816))

(declare-fun m!6445818 () Bool)

(assert (=> bm!388042 m!6445818))

(assert (=> b!5420764 d!1729532))

(declare-fun d!1729534 () Bool)

(assert (=> d!1729534 (= (flatMap!932 lt!2210818 lambda!283880) (choose!41075 lt!2210818 lambda!283880))))

(declare-fun bs!1252504 () Bool)

(assert (= bs!1252504 d!1729534))

(declare-fun m!6445820 () Bool)

(assert (=> bs!1252504 m!6445820))

(assert (=> b!5420764 d!1729534))

(declare-fun d!1729536 () Bool)

(declare-fun e!3360150 () Bool)

(assert (=> d!1729536 (= (matchZipper!1449 ((_ map or) lt!2210849 lt!2210831) (t!375137 s!2326)) e!3360150)))

(declare-fun res!2306815 () Bool)

(assert (=> d!1729536 (=> res!2306815 e!3360150)))

(assert (=> d!1729536 (= res!2306815 (matchZipper!1449 lt!2210849 (t!375137 s!2326)))))

(declare-fun lt!2211056 () Unit!154342)

(declare-fun choose!41084 ((InoxSet Context!9178) (InoxSet Context!9178) List!61914) Unit!154342)

(assert (=> d!1729536 (= lt!2211056 (choose!41084 lt!2210849 lt!2210831 (t!375137 s!2326)))))

(assert (=> d!1729536 (= (lemmaZipperConcatMatchesSameAsBothZippers!442 lt!2210849 lt!2210831 (t!375137 s!2326)) lt!2211056)))

(declare-fun b!5421755 () Bool)

(assert (=> b!5421755 (= e!3360150 (matchZipper!1449 lt!2210831 (t!375137 s!2326)))))

(assert (= (and d!1729536 (not res!2306815)) b!5421755))

(assert (=> d!1729536 m!6444884))

(assert (=> d!1729536 m!6444788))

(declare-fun m!6445822 () Bool)

(assert (=> d!1729536 m!6445822))

(assert (=> b!5421755 m!6444764))

(assert (=> b!5420743 d!1729536))

(declare-fun d!1729538 () Bool)

(declare-fun c!945616 () Bool)

(assert (=> d!1729538 (= c!945616 (isEmpty!33791 (t!375137 s!2326)))))

(declare-fun e!3360151 () Bool)

(assert (=> d!1729538 (= (matchZipper!1449 lt!2210849 (t!375137 s!2326)) e!3360151)))

(declare-fun b!5421756 () Bool)

(assert (=> b!5421756 (= e!3360151 (nullableZipper!1455 lt!2210849))))

(declare-fun b!5421757 () Bool)

(assert (=> b!5421757 (= e!3360151 (matchZipper!1449 (derivationStepZipper!1444 lt!2210849 (head!11630 (t!375137 s!2326))) (tail!10727 (t!375137 s!2326))))))

(assert (= (and d!1729538 c!945616) b!5421756))

(assert (= (and d!1729538 (not c!945616)) b!5421757))

(assert (=> d!1729538 m!6444968))

(declare-fun m!6445824 () Bool)

(assert (=> b!5421756 m!6445824))

(assert (=> b!5421757 m!6444972))

(assert (=> b!5421757 m!6444972))

(declare-fun m!6445826 () Bool)

(assert (=> b!5421757 m!6445826))

(assert (=> b!5421757 m!6444976))

(assert (=> b!5421757 m!6445826))

(assert (=> b!5421757 m!6444976))

(declare-fun m!6445828 () Bool)

(assert (=> b!5421757 m!6445828))

(assert (=> b!5420743 d!1729538))

(declare-fun d!1729540 () Bool)

(declare-fun c!945617 () Bool)

(assert (=> d!1729540 (= c!945617 (isEmpty!33791 (t!375137 s!2326)))))

(declare-fun e!3360152 () Bool)

(assert (=> d!1729540 (= (matchZipper!1449 ((_ map or) lt!2210849 lt!2210831) (t!375137 s!2326)) e!3360152)))

(declare-fun b!5421758 () Bool)

(assert (=> b!5421758 (= e!3360152 (nullableZipper!1455 ((_ map or) lt!2210849 lt!2210831)))))

(declare-fun b!5421759 () Bool)

(assert (=> b!5421759 (= e!3360152 (matchZipper!1449 (derivationStepZipper!1444 ((_ map or) lt!2210849 lt!2210831) (head!11630 (t!375137 s!2326))) (tail!10727 (t!375137 s!2326))))))

(assert (= (and d!1729540 c!945617) b!5421758))

(assert (= (and d!1729540 (not c!945617)) b!5421759))

(assert (=> d!1729540 m!6444968))

(declare-fun m!6445830 () Bool)

(assert (=> b!5421758 m!6445830))

(assert (=> b!5421759 m!6444972))

(assert (=> b!5421759 m!6444972))

(declare-fun m!6445832 () Bool)

(assert (=> b!5421759 m!6445832))

(assert (=> b!5421759 m!6444976))

(assert (=> b!5421759 m!6445832))

(assert (=> b!5421759 m!6444976))

(declare-fun m!6445834 () Bool)

(assert (=> b!5421759 m!6445834))

(assert (=> b!5420743 d!1729540))

(declare-fun d!1729542 () Bool)

(assert (=> d!1729542 (= (matchR!7390 lt!2210852 (_1!35707 lt!2210854)) (matchRSpec!2308 lt!2210852 (_1!35707 lt!2210854)))))

(declare-fun lt!2211057 () Unit!154342)

(assert (=> d!1729542 (= lt!2211057 (choose!41072 lt!2210852 (_1!35707 lt!2210854)))))

(assert (=> d!1729542 (validRegex!6941 lt!2210852)))

(assert (=> d!1729542 (= (mainMatchTheorem!2308 lt!2210852 (_1!35707 lt!2210854)) lt!2211057)))

(declare-fun bs!1252519 () Bool)

(assert (= bs!1252519 d!1729542))

(assert (=> bs!1252519 m!6444842))

(assert (=> bs!1252519 m!6444812))

(declare-fun m!6445836 () Bool)

(assert (=> bs!1252519 m!6445836))

(assert (=> bs!1252519 m!6445022))

(assert (=> b!5420765 d!1729542))

(declare-fun d!1729544 () Bool)

(assert (=> d!1729544 (= (Exists!2386 lambda!283885) (choose!41066 lambda!283885))))

(declare-fun bs!1252520 () Bool)

(assert (= bs!1252520 d!1729544))

(declare-fun m!6445838 () Bool)

(assert (=> bs!1252520 m!6445838))

(assert (=> b!5420765 d!1729544))

(declare-fun b!5421760 () Bool)

(declare-fun e!3360153 () List!61914)

(assert (=> b!5421760 (= e!3360153 (_2!35707 lt!2210866))))

(declare-fun b!5421761 () Bool)

(assert (=> b!5421761 (= e!3360153 (Cons!61790 (h!68238 (_1!35707 lt!2210866)) (++!13584 (t!375137 (_1!35707 lt!2210866)) (_2!35707 lt!2210866))))))

(declare-fun b!5421763 () Bool)

(declare-fun e!3360154 () Bool)

(declare-fun lt!2211058 () List!61914)

(assert (=> b!5421763 (= e!3360154 (or (not (= (_2!35707 lt!2210866) Nil!61790)) (= lt!2211058 (_1!35707 lt!2210866))))))

(declare-fun d!1729546 () Bool)

(assert (=> d!1729546 e!3360154))

(declare-fun res!2306817 () Bool)

(assert (=> d!1729546 (=> (not res!2306817) (not e!3360154))))

(assert (=> d!1729546 (= res!2306817 (= (content!11115 lt!2211058) ((_ map or) (content!11115 (_1!35707 lt!2210866)) (content!11115 (_2!35707 lt!2210866)))))))

(assert (=> d!1729546 (= lt!2211058 e!3360153)))

(declare-fun c!945618 () Bool)

(assert (=> d!1729546 (= c!945618 ((_ is Nil!61790) (_1!35707 lt!2210866)))))

(assert (=> d!1729546 (= (++!13584 (_1!35707 lt!2210866) (_2!35707 lt!2210866)) lt!2211058)))

(declare-fun b!5421762 () Bool)

(declare-fun res!2306816 () Bool)

(assert (=> b!5421762 (=> (not res!2306816) (not e!3360154))))

(assert (=> b!5421762 (= res!2306816 (= (size!39880 lt!2211058) (+ (size!39880 (_1!35707 lt!2210866)) (size!39880 (_2!35707 lt!2210866)))))))

(assert (= (and d!1729546 c!945618) b!5421760))

(assert (= (and d!1729546 (not c!945618)) b!5421761))

(assert (= (and d!1729546 res!2306817) b!5421762))

(assert (= (and b!5421762 res!2306816) b!5421763))

(declare-fun m!6445848 () Bool)

(assert (=> b!5421761 m!6445848))

(declare-fun m!6445850 () Bool)

(assert (=> d!1729546 m!6445850))

(declare-fun m!6445852 () Bool)

(assert (=> d!1729546 m!6445852))

(declare-fun m!6445854 () Bool)

(assert (=> d!1729546 m!6445854))

(declare-fun m!6445858 () Bool)

(assert (=> b!5421762 m!6445858))

(declare-fun m!6445860 () Bool)

(assert (=> b!5421762 m!6445860))

(declare-fun m!6445862 () Bool)

(assert (=> b!5421762 m!6445862))

(assert (=> b!5420765 d!1729546))

(declare-fun d!1729554 () Bool)

(assert (=> d!1729554 (= (get!21310 lt!2210812) (v!51344 lt!2210812))))

(assert (=> b!5420765 d!1729554))

(declare-fun b!5421768 () Bool)

(declare-fun res!2306827 () Bool)

(declare-fun e!3360159 () Bool)

(assert (=> b!5421768 (=> res!2306827 e!3360159)))

(assert (=> b!5421768 (= res!2306827 (not (isEmpty!33791 (tail!10727 (_1!35707 lt!2210866)))))))

(declare-fun b!5421769 () Bool)

(declare-fun e!3360158 () Bool)

(assert (=> b!5421769 (= e!3360158 (matchR!7390 (derivativeStep!4277 (reg!15534 (regOne!30922 r!7292)) (head!11630 (_1!35707 lt!2210866))) (tail!10727 (_1!35707 lt!2210866))))))

(declare-fun d!1729556 () Bool)

(declare-fun e!3360157 () Bool)

(assert (=> d!1729556 e!3360157))

(declare-fun c!945622 () Bool)

(assert (=> d!1729556 (= c!945622 ((_ is EmptyExpr!15205) (reg!15534 (regOne!30922 r!7292))))))

(declare-fun lt!2211061 () Bool)

(assert (=> d!1729556 (= lt!2211061 e!3360158)))

(declare-fun c!945620 () Bool)

(assert (=> d!1729556 (= c!945620 (isEmpty!33791 (_1!35707 lt!2210866)))))

(assert (=> d!1729556 (validRegex!6941 (reg!15534 (regOne!30922 r!7292)))))

(assert (=> d!1729556 (= (matchR!7390 (reg!15534 (regOne!30922 r!7292)) (_1!35707 lt!2210866)) lt!2211061)))

(declare-fun b!5421770 () Bool)

(declare-fun e!3360162 () Bool)

(assert (=> b!5421770 (= e!3360162 e!3360159)))

(declare-fun res!2306821 () Bool)

(assert (=> b!5421770 (=> res!2306821 e!3360159)))

(declare-fun call!388048 () Bool)

(assert (=> b!5421770 (= res!2306821 call!388048)))

(declare-fun b!5421771 () Bool)

(declare-fun e!3360163 () Bool)

(assert (=> b!5421771 (= e!3360163 (not lt!2211061))))

(declare-fun b!5421772 () Bool)

(declare-fun res!2306822 () Bool)

(declare-fun e!3360160 () Bool)

(assert (=> b!5421772 (=> res!2306822 e!3360160)))

(declare-fun e!3360161 () Bool)

(assert (=> b!5421772 (= res!2306822 e!3360161)))

(declare-fun res!2306824 () Bool)

(assert (=> b!5421772 (=> (not res!2306824) (not e!3360161))))

(assert (=> b!5421772 (= res!2306824 lt!2211061)))

(declare-fun b!5421773 () Bool)

(declare-fun res!2306823 () Bool)

(assert (=> b!5421773 (=> res!2306823 e!3360160)))

(assert (=> b!5421773 (= res!2306823 (not ((_ is ElementMatch!15205) (reg!15534 (regOne!30922 r!7292)))))))

(assert (=> b!5421773 (= e!3360163 e!3360160)))

(declare-fun b!5421774 () Bool)

(assert (=> b!5421774 (= e!3360158 (nullable!5374 (reg!15534 (regOne!30922 r!7292))))))

(declare-fun b!5421775 () Bool)

(assert (=> b!5421775 (= e!3360161 (= (head!11630 (_1!35707 lt!2210866)) (c!945345 (reg!15534 (regOne!30922 r!7292)))))))

(declare-fun b!5421776 () Bool)

(assert (=> b!5421776 (= e!3360160 e!3360162)))

(declare-fun res!2306820 () Bool)

(assert (=> b!5421776 (=> (not res!2306820) (not e!3360162))))

(assert (=> b!5421776 (= res!2306820 (not lt!2211061))))

(declare-fun b!5421777 () Bool)

(assert (=> b!5421777 (= e!3360157 e!3360163)))

(declare-fun c!945621 () Bool)

(assert (=> b!5421777 (= c!945621 ((_ is EmptyLang!15205) (reg!15534 (regOne!30922 r!7292))))))

(declare-fun b!5421778 () Bool)

(assert (=> b!5421778 (= e!3360159 (not (= (head!11630 (_1!35707 lt!2210866)) (c!945345 (reg!15534 (regOne!30922 r!7292))))))))

(declare-fun b!5421779 () Bool)

(assert (=> b!5421779 (= e!3360157 (= lt!2211061 call!388048))))

(declare-fun b!5421780 () Bool)

(declare-fun res!2306825 () Bool)

(assert (=> b!5421780 (=> (not res!2306825) (not e!3360161))))

(assert (=> b!5421780 (= res!2306825 (not call!388048))))

(declare-fun bm!388043 () Bool)

(assert (=> bm!388043 (= call!388048 (isEmpty!33791 (_1!35707 lt!2210866)))))

(declare-fun b!5421781 () Bool)

(declare-fun res!2306826 () Bool)

(assert (=> b!5421781 (=> (not res!2306826) (not e!3360161))))

(assert (=> b!5421781 (= res!2306826 (isEmpty!33791 (tail!10727 (_1!35707 lt!2210866))))))

(assert (= (and d!1729556 c!945620) b!5421774))

(assert (= (and d!1729556 (not c!945620)) b!5421769))

(assert (= (and d!1729556 c!945622) b!5421779))

(assert (= (and d!1729556 (not c!945622)) b!5421777))

(assert (= (and b!5421777 c!945621) b!5421771))

(assert (= (and b!5421777 (not c!945621)) b!5421773))

(assert (= (and b!5421773 (not res!2306823)) b!5421772))

(assert (= (and b!5421772 res!2306824) b!5421780))

(assert (= (and b!5421780 res!2306825) b!5421781))

(assert (= (and b!5421781 res!2306826) b!5421775))

(assert (= (and b!5421772 (not res!2306822)) b!5421776))

(assert (= (and b!5421776 res!2306820) b!5421770))

(assert (= (and b!5421770 (not res!2306821)) b!5421768))

(assert (= (and b!5421768 (not res!2306827)) b!5421778))

(assert (= (or b!5421779 b!5421780 b!5421770) bm!388043))

(assert (=> b!5421774 m!6445256))

(declare-fun m!6445880 () Bool)

(assert (=> b!5421781 m!6445880))

(assert (=> b!5421781 m!6445880))

(declare-fun m!6445882 () Bool)

(assert (=> b!5421781 m!6445882))

(declare-fun m!6445884 () Bool)

(assert (=> b!5421769 m!6445884))

(assert (=> b!5421769 m!6445884))

(declare-fun m!6445886 () Bool)

(assert (=> b!5421769 m!6445886))

(assert (=> b!5421769 m!6445880))

(assert (=> b!5421769 m!6445886))

(assert (=> b!5421769 m!6445880))

(declare-fun m!6445888 () Bool)

(assert (=> b!5421769 m!6445888))

(declare-fun m!6445890 () Bool)

(assert (=> d!1729556 m!6445890))

(assert (=> d!1729556 m!6445148))

(assert (=> b!5421768 m!6445880))

(assert (=> b!5421768 m!6445880))

(assert (=> b!5421768 m!6445882))

(assert (=> b!5421778 m!6445884))

(assert (=> b!5421775 m!6445884))

(assert (=> bm!388043 m!6445890))

(assert (=> b!5420765 d!1729556))

(declare-fun b!5421791 () Bool)

(declare-fun res!2306835 () Bool)

(declare-fun e!3360170 () Bool)

(assert (=> b!5421791 (=> (not res!2306835) (not e!3360170))))

(declare-fun lt!2211067 () Option!15316)

(assert (=> b!5421791 (= res!2306835 (matchR!7390 lt!2210832 (_2!35707 (get!21310 lt!2211067))))))

(declare-fun b!5421792 () Bool)

(declare-fun res!2306834 () Bool)

(assert (=> b!5421792 (=> (not res!2306834) (not e!3360170))))

(assert (=> b!5421792 (= res!2306834 (matchR!7390 (reg!15534 (regOne!30922 r!7292)) (_1!35707 (get!21310 lt!2211067))))))

(declare-fun b!5421793 () Bool)

(declare-fun lt!2211066 () Unit!154342)

(declare-fun lt!2211065 () Unit!154342)

(assert (=> b!5421793 (= lt!2211066 lt!2211065)))

(assert (=> b!5421793 (= (++!13584 (++!13584 Nil!61790 (Cons!61790 (h!68238 (_1!35707 lt!2210854)) Nil!61790)) (t!375137 (_1!35707 lt!2210854))) (_1!35707 lt!2210854))))

(assert (=> b!5421793 (= lt!2211065 (lemmaMoveElementToOtherListKeepsConcatEq!1851 Nil!61790 (h!68238 (_1!35707 lt!2210854)) (t!375137 (_1!35707 lt!2210854)) (_1!35707 lt!2210854)))))

(declare-fun e!3360171 () Option!15316)

(assert (=> b!5421793 (= e!3360171 (findConcatSeparation!1730 (reg!15534 (regOne!30922 r!7292)) lt!2210832 (++!13584 Nil!61790 (Cons!61790 (h!68238 (_1!35707 lt!2210854)) Nil!61790)) (t!375137 (_1!35707 lt!2210854)) (_1!35707 lt!2210854)))))

(declare-fun b!5421794 () Bool)

(assert (=> b!5421794 (= e!3360170 (= (++!13584 (_1!35707 (get!21310 lt!2211067)) (_2!35707 (get!21310 lt!2211067))) (_1!35707 lt!2210854)))))

(declare-fun b!5421795 () Bool)

(declare-fun e!3360173 () Bool)

(assert (=> b!5421795 (= e!3360173 (matchR!7390 lt!2210832 (_1!35707 lt!2210854)))))

(declare-fun b!5421796 () Bool)

(declare-fun e!3360169 () Bool)

(assert (=> b!5421796 (= e!3360169 (not (isDefined!12019 lt!2211067)))))

(declare-fun d!1729564 () Bool)

(assert (=> d!1729564 e!3360169))

(declare-fun res!2306837 () Bool)

(assert (=> d!1729564 (=> res!2306837 e!3360169)))

(assert (=> d!1729564 (= res!2306837 e!3360170)))

(declare-fun res!2306836 () Bool)

(assert (=> d!1729564 (=> (not res!2306836) (not e!3360170))))

(assert (=> d!1729564 (= res!2306836 (isDefined!12019 lt!2211067))))

(declare-fun e!3360172 () Option!15316)

(assert (=> d!1729564 (= lt!2211067 e!3360172)))

(declare-fun c!945625 () Bool)

(assert (=> d!1729564 (= c!945625 e!3360173)))

(declare-fun res!2306833 () Bool)

(assert (=> d!1729564 (=> (not res!2306833) (not e!3360173))))

(assert (=> d!1729564 (= res!2306833 (matchR!7390 (reg!15534 (regOne!30922 r!7292)) Nil!61790))))

(assert (=> d!1729564 (validRegex!6941 (reg!15534 (regOne!30922 r!7292)))))

(assert (=> d!1729564 (= (findConcatSeparation!1730 (reg!15534 (regOne!30922 r!7292)) lt!2210832 Nil!61790 (_1!35707 lt!2210854) (_1!35707 lt!2210854)) lt!2211067)))

(declare-fun b!5421797 () Bool)

(assert (=> b!5421797 (= e!3360171 None!15315)))

(declare-fun b!5421798 () Bool)

(assert (=> b!5421798 (= e!3360172 e!3360171)))

(declare-fun c!945626 () Bool)

(assert (=> b!5421798 (= c!945626 ((_ is Nil!61790) (_1!35707 lt!2210854)))))

(declare-fun b!5421799 () Bool)

(assert (=> b!5421799 (= e!3360172 (Some!15315 (tuple2!64809 Nil!61790 (_1!35707 lt!2210854))))))

(assert (= (and d!1729564 res!2306833) b!5421795))

(assert (= (and d!1729564 c!945625) b!5421799))

(assert (= (and d!1729564 (not c!945625)) b!5421798))

(assert (= (and b!5421798 c!945626) b!5421797))

(assert (= (and b!5421798 (not c!945626)) b!5421793))

(assert (= (and d!1729564 res!2306836) b!5421792))

(assert (= (and b!5421792 res!2306834) b!5421791))

(assert (= (and b!5421791 res!2306835) b!5421794))

(assert (= (and d!1729564 (not res!2306837)) b!5421796))

(declare-fun m!6445914 () Bool)

(assert (=> d!1729564 m!6445914))

(declare-fun m!6445916 () Bool)

(assert (=> d!1729564 m!6445916))

(assert (=> d!1729564 m!6445148))

(declare-fun m!6445918 () Bool)

(assert (=> b!5421793 m!6445918))

(assert (=> b!5421793 m!6445918))

(declare-fun m!6445922 () Bool)

(assert (=> b!5421793 m!6445922))

(declare-fun m!6445924 () Bool)

(assert (=> b!5421793 m!6445924))

(assert (=> b!5421793 m!6445918))

(declare-fun m!6445926 () Bool)

(assert (=> b!5421793 m!6445926))

(declare-fun m!6445928 () Bool)

(assert (=> b!5421791 m!6445928))

(declare-fun m!6445930 () Bool)

(assert (=> b!5421791 m!6445930))

(assert (=> b!5421794 m!6445928))

(declare-fun m!6445932 () Bool)

(assert (=> b!5421794 m!6445932))

(assert (=> b!5421796 m!6445914))

(declare-fun m!6445934 () Bool)

(assert (=> b!5421795 m!6445934))

(assert (=> b!5421792 m!6445928))

(declare-fun m!6445936 () Bool)

(assert (=> b!5421792 m!6445936))

(assert (=> b!5420765 d!1729564))

(declare-fun d!1729570 () Bool)

(assert (=> d!1729570 (= (Exists!2386 lambda!283886) (choose!41066 lambda!283886))))

(declare-fun bs!1252525 () Bool)

(assert (= bs!1252525 d!1729570))

(declare-fun m!6445948 () Bool)

(assert (=> bs!1252525 m!6445948))

(assert (=> b!5420765 d!1729570))

(declare-fun bs!1252527 () Bool)

(declare-fun d!1729574 () Bool)

(assert (= bs!1252527 (and d!1729574 d!1729290)))

(declare-fun lambda!283964 () Int)

(assert (=> bs!1252527 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) lt!2210852) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283964 lambda!283907))))

(declare-fun bs!1252528 () Bool)

(assert (= bs!1252528 (and d!1729574 b!5420765)))

(assert (=> bs!1252528 (not (= lambda!283964 lambda!283886))))

(declare-fun bs!1252529 () Bool)

(assert (= bs!1252529 (and d!1729574 b!5420758)))

(assert (=> bs!1252529 (not (= lambda!283964 lambda!283879))))

(assert (=> bs!1252528 (= lambda!283964 lambda!283885)))

(declare-fun bs!1252530 () Bool)

(assert (= bs!1252530 (and d!1729574 b!5420770)))

(assert (=> bs!1252530 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) lt!2210852) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283964 lambda!283883))))

(declare-fun bs!1252531 () Bool)

(assert (= bs!1252531 (and d!1729574 b!5421295)))

(assert (=> bs!1252531 (not (= lambda!283964 lambda!283937))))

(declare-fun bs!1252532 () Bool)

(assert (= bs!1252532 (and d!1729574 b!5421297)))

(assert (=> bs!1252532 (not (= lambda!283964 lambda!283936))))

(assert (=> bs!1252529 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) (regOne!30922 r!7292)) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283964 lambda!283878))))

(declare-fun bs!1252533 () Bool)

(assert (= bs!1252533 (and d!1729574 d!1729402)))

(assert (=> bs!1252533 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) lt!2210852) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283964 lambda!283940))))

(assert (=> bs!1252527 (not (= lambda!283964 lambda!283908))))

(assert (=> bs!1252528 (not (= lambda!283964 lambda!283887))))

(assert (=> bs!1252530 (not (= lambda!283964 lambda!283884))))

(assert (=> d!1729574 true))

(assert (=> d!1729574 true))

(assert (=> d!1729574 true))

(assert (=> d!1729574 (= (isDefined!12019 (findConcatSeparation!1730 (reg!15534 (regOne!30922 r!7292)) lt!2210832 Nil!61790 (_1!35707 lt!2210854) (_1!35707 lt!2210854))) (Exists!2386 lambda!283964))))

(declare-fun lt!2211069 () Unit!154342)

(assert (=> d!1729574 (= lt!2211069 (choose!41073 (reg!15534 (regOne!30922 r!7292)) lt!2210832 (_1!35707 lt!2210854)))))

(assert (=> d!1729574 (validRegex!6941 (reg!15534 (regOne!30922 r!7292)))))

(assert (=> d!1729574 (= (lemmaFindConcatSeparationEquivalentToExists!1494 (reg!15534 (regOne!30922 r!7292)) lt!2210832 (_1!35707 lt!2210854)) lt!2211069)))

(declare-fun bs!1252535 () Bool)

(assert (= bs!1252535 d!1729574))

(assert (=> bs!1252535 m!6445148))

(assert (=> bs!1252535 m!6444794))

(declare-fun m!6445954 () Bool)

(assert (=> bs!1252535 m!6445954))

(assert (=> bs!1252535 m!6444794))

(declare-fun m!6445958 () Bool)

(assert (=> bs!1252535 m!6445958))

(declare-fun m!6445960 () Bool)

(assert (=> bs!1252535 m!6445960))

(assert (=> b!5420765 d!1729574))

(declare-fun b!5421815 () Bool)

(declare-fun e!3360183 () List!61914)

(assert (=> b!5421815 (= e!3360183 (_2!35707 lt!2210854))))

(declare-fun b!5421816 () Bool)

(assert (=> b!5421816 (= e!3360183 (Cons!61790 (h!68238 (_2!35707 lt!2210866)) (++!13584 (t!375137 (_2!35707 lt!2210866)) (_2!35707 lt!2210854))))))

(declare-fun lt!2211073 () List!61914)

(declare-fun b!5421818 () Bool)

(declare-fun e!3360184 () Bool)

(assert (=> b!5421818 (= e!3360184 (or (not (= (_2!35707 lt!2210854) Nil!61790)) (= lt!2211073 (_2!35707 lt!2210866))))))

(declare-fun d!1729580 () Bool)

(assert (=> d!1729580 e!3360184))

(declare-fun res!2306844 () Bool)

(assert (=> d!1729580 (=> (not res!2306844) (not e!3360184))))

(assert (=> d!1729580 (= res!2306844 (= (content!11115 lt!2211073) ((_ map or) (content!11115 (_2!35707 lt!2210866)) (content!11115 (_2!35707 lt!2210854)))))))

(assert (=> d!1729580 (= lt!2211073 e!3360183)))

(declare-fun c!945632 () Bool)

(assert (=> d!1729580 (= c!945632 ((_ is Nil!61790) (_2!35707 lt!2210866)))))

(assert (=> d!1729580 (= (++!13584 (_2!35707 lt!2210866) (_2!35707 lt!2210854)) lt!2211073)))

(declare-fun b!5421817 () Bool)

(declare-fun res!2306843 () Bool)

(assert (=> b!5421817 (=> (not res!2306843) (not e!3360184))))

(assert (=> b!5421817 (= res!2306843 (= (size!39880 lt!2211073) (+ (size!39880 (_2!35707 lt!2210866)) (size!39880 (_2!35707 lt!2210854)))))))

(assert (= (and d!1729580 c!945632) b!5421815))

(assert (= (and d!1729580 (not c!945632)) b!5421816))

(assert (= (and d!1729580 res!2306844) b!5421817))

(assert (= (and b!5421817 res!2306843) b!5421818))

(declare-fun m!6445962 () Bool)

(assert (=> b!5421816 m!6445962))

(declare-fun m!6445964 () Bool)

(assert (=> d!1729580 m!6445964))

(assert (=> d!1729580 m!6445854))

(declare-fun m!6445966 () Bool)

(assert (=> d!1729580 m!6445966))

(declare-fun m!6445968 () Bool)

(assert (=> b!5421817 m!6445968))

(assert (=> b!5421817 m!6445862))

(declare-fun m!6445970 () Bool)

(assert (=> b!5421817 m!6445970))

(assert (=> b!5420765 d!1729580))

(declare-fun b!5421819 () Bool)

(declare-fun e!3360185 () List!61914)

(assert (=> b!5421819 (= e!3360185 (++!13584 (_2!35707 lt!2210866) (_2!35707 lt!2210854)))))

(declare-fun b!5421820 () Bool)

(assert (=> b!5421820 (= e!3360185 (Cons!61790 (h!68238 (_1!35707 lt!2210866)) (++!13584 (t!375137 (_1!35707 lt!2210866)) (++!13584 (_2!35707 lt!2210866) (_2!35707 lt!2210854)))))))

(declare-fun lt!2211074 () List!61914)

(declare-fun b!5421822 () Bool)

(declare-fun e!3360186 () Bool)

(assert (=> b!5421822 (= e!3360186 (or (not (= (++!13584 (_2!35707 lt!2210866) (_2!35707 lt!2210854)) Nil!61790)) (= lt!2211074 (_1!35707 lt!2210866))))))

(declare-fun d!1729582 () Bool)

(assert (=> d!1729582 e!3360186))

(declare-fun res!2306846 () Bool)

(assert (=> d!1729582 (=> (not res!2306846) (not e!3360186))))

(assert (=> d!1729582 (= res!2306846 (= (content!11115 lt!2211074) ((_ map or) (content!11115 (_1!35707 lt!2210866)) (content!11115 (++!13584 (_2!35707 lt!2210866) (_2!35707 lt!2210854))))))))

(assert (=> d!1729582 (= lt!2211074 e!3360185)))

(declare-fun c!945633 () Bool)

(assert (=> d!1729582 (= c!945633 ((_ is Nil!61790) (_1!35707 lt!2210866)))))

(assert (=> d!1729582 (= (++!13584 (_1!35707 lt!2210866) (++!13584 (_2!35707 lt!2210866) (_2!35707 lt!2210854))) lt!2211074)))

(declare-fun b!5421821 () Bool)

(declare-fun res!2306845 () Bool)

(assert (=> b!5421821 (=> (not res!2306845) (not e!3360186))))

(assert (=> b!5421821 (= res!2306845 (= (size!39880 lt!2211074) (+ (size!39880 (_1!35707 lt!2210866)) (size!39880 (++!13584 (_2!35707 lt!2210866) (_2!35707 lt!2210854))))))))

(assert (= (and d!1729582 c!945633) b!5421819))

(assert (= (and d!1729582 (not c!945633)) b!5421820))

(assert (= (and d!1729582 res!2306846) b!5421821))

(assert (= (and b!5421821 res!2306845) b!5421822))

(assert (=> b!5421820 m!6444792))

(declare-fun m!6445972 () Bool)

(assert (=> b!5421820 m!6445972))

(declare-fun m!6445974 () Bool)

(assert (=> d!1729582 m!6445974))

(assert (=> d!1729582 m!6445852))

(assert (=> d!1729582 m!6444792))

(declare-fun m!6445976 () Bool)

(assert (=> d!1729582 m!6445976))

(declare-fun m!6445978 () Bool)

(assert (=> b!5421821 m!6445978))

(assert (=> b!5421821 m!6445860))

(assert (=> b!5421821 m!6444792))

(declare-fun m!6445980 () Bool)

(assert (=> b!5421821 m!6445980))

(assert (=> b!5420765 d!1729582))

(declare-fun b!5421823 () Bool)

(declare-fun e!3360187 () List!61914)

(assert (=> b!5421823 (= e!3360187 (_2!35707 lt!2210854))))

(declare-fun b!5421824 () Bool)

(assert (=> b!5421824 (= e!3360187 (Cons!61790 (h!68238 lt!2210867) (++!13584 (t!375137 lt!2210867) (_2!35707 lt!2210854))))))

(declare-fun e!3360188 () Bool)

(declare-fun lt!2211075 () List!61914)

(declare-fun b!5421826 () Bool)

(assert (=> b!5421826 (= e!3360188 (or (not (= (_2!35707 lt!2210854) Nil!61790)) (= lt!2211075 lt!2210867)))))

(declare-fun d!1729584 () Bool)

(assert (=> d!1729584 e!3360188))

(declare-fun res!2306848 () Bool)

(assert (=> d!1729584 (=> (not res!2306848) (not e!3360188))))

(assert (=> d!1729584 (= res!2306848 (= (content!11115 lt!2211075) ((_ map or) (content!11115 lt!2210867) (content!11115 (_2!35707 lt!2210854)))))))

(assert (=> d!1729584 (= lt!2211075 e!3360187)))

(declare-fun c!945634 () Bool)

(assert (=> d!1729584 (= c!945634 ((_ is Nil!61790) lt!2210867))))

(assert (=> d!1729584 (= (++!13584 lt!2210867 (_2!35707 lt!2210854)) lt!2211075)))

(declare-fun b!5421825 () Bool)

(declare-fun res!2306847 () Bool)

(assert (=> b!5421825 (=> (not res!2306847) (not e!3360188))))

(assert (=> b!5421825 (= res!2306847 (= (size!39880 lt!2211075) (+ (size!39880 lt!2210867) (size!39880 (_2!35707 lt!2210854)))))))

(assert (= (and d!1729584 c!945634) b!5421823))

(assert (= (and d!1729584 (not c!945634)) b!5421824))

(assert (= (and d!1729584 res!2306848) b!5421825))

(assert (= (and b!5421825 res!2306847) b!5421826))

(declare-fun m!6445982 () Bool)

(assert (=> b!5421824 m!6445982))

(declare-fun m!6445984 () Bool)

(assert (=> d!1729584 m!6445984))

(declare-fun m!6445986 () Bool)

(assert (=> d!1729584 m!6445986))

(assert (=> d!1729584 m!6445966))

(declare-fun m!6445988 () Bool)

(assert (=> b!5421825 m!6445988))

(declare-fun m!6445990 () Bool)

(assert (=> b!5421825 m!6445990))

(assert (=> b!5421825 m!6445970))

(assert (=> b!5420765 d!1729584))

(declare-fun bs!1252584 () Bool)

(declare-fun d!1729586 () Bool)

(assert (= bs!1252584 (and d!1729586 d!1729290)))

(declare-fun lambda!283973 () Int)

(assert (=> bs!1252584 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) lt!2210852) (= (Star!15205 (reg!15534 (regOne!30922 r!7292))) (regTwo!30922 r!7292))) (= lambda!283973 lambda!283907))))

(declare-fun bs!1252586 () Bool)

(assert (= bs!1252586 (and d!1729586 b!5420765)))

(assert (=> bs!1252586 (not (= lambda!283973 lambda!283886))))

(declare-fun bs!1252587 () Bool)

(assert (= bs!1252587 (and d!1729586 b!5420758)))

(assert (=> bs!1252587 (not (= lambda!283973 lambda!283879))))

(assert (=> bs!1252586 (= (= (Star!15205 (reg!15534 (regOne!30922 r!7292))) lt!2210832) (= lambda!283973 lambda!283885))))

(declare-fun bs!1252588 () Bool)

(assert (= bs!1252588 (and d!1729586 b!5420770)))

(assert (=> bs!1252588 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) lt!2210852) (= (Star!15205 (reg!15534 (regOne!30922 r!7292))) (regTwo!30922 r!7292))) (= lambda!283973 lambda!283883))))

(declare-fun bs!1252589 () Bool)

(assert (= bs!1252589 (and d!1729586 b!5421295)))

(assert (=> bs!1252589 (not (= lambda!283973 lambda!283937))))

(declare-fun bs!1252590 () Bool)

(assert (= bs!1252590 (and d!1729586 b!5421297)))

(assert (=> bs!1252590 (not (= lambda!283973 lambda!283936))))

(assert (=> bs!1252587 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) (regOne!30922 r!7292)) (= (Star!15205 (reg!15534 (regOne!30922 r!7292))) (regTwo!30922 r!7292))) (= lambda!283973 lambda!283878))))

(declare-fun bs!1252591 () Bool)

(assert (= bs!1252591 (and d!1729586 d!1729574)))

(assert (=> bs!1252591 (= (= (Star!15205 (reg!15534 (regOne!30922 r!7292))) lt!2210832) (= lambda!283973 lambda!283964))))

(declare-fun bs!1252592 () Bool)

(assert (= bs!1252592 (and d!1729586 d!1729402)))

(assert (=> bs!1252592 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) lt!2210852) (= (Star!15205 (reg!15534 (regOne!30922 r!7292))) (regTwo!30922 r!7292))) (= lambda!283973 lambda!283940))))

(assert (=> bs!1252584 (not (= lambda!283973 lambda!283908))))

(assert (=> bs!1252586 (not (= lambda!283973 lambda!283887))))

(assert (=> bs!1252588 (not (= lambda!283973 lambda!283884))))

(assert (=> d!1729586 true))

(assert (=> d!1729586 true))

(declare-fun lambda!283974 () Int)

(assert (=> bs!1252584 (not (= lambda!283974 lambda!283907))))

(assert (=> bs!1252586 (not (= lambda!283974 lambda!283886))))

(assert (=> bs!1252587 (not (= lambda!283974 lambda!283879))))

(declare-fun bs!1252593 () Bool)

(assert (= bs!1252593 d!1729586))

(assert (=> bs!1252593 (not (= lambda!283974 lambda!283973))))

(assert (=> bs!1252586 (not (= lambda!283974 lambda!283885))))

(assert (=> bs!1252588 (not (= lambda!283974 lambda!283883))))

(assert (=> bs!1252589 (not (= lambda!283974 lambda!283937))))

(assert (=> bs!1252590 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) (reg!15534 lt!2210816)) (= (Star!15205 (reg!15534 (regOne!30922 r!7292))) lt!2210816)) (= lambda!283974 lambda!283936))))

(assert (=> bs!1252587 (not (= lambda!283974 lambda!283878))))

(assert (=> bs!1252591 (not (= lambda!283974 lambda!283964))))

(assert (=> bs!1252592 (not (= lambda!283974 lambda!283940))))

(assert (=> bs!1252584 (not (= lambda!283974 lambda!283908))))

(assert (=> bs!1252586 (= (= (Star!15205 (reg!15534 (regOne!30922 r!7292))) lt!2210832) (= lambda!283974 lambda!283887))))

(assert (=> bs!1252588 (not (= lambda!283974 lambda!283884))))

(assert (=> d!1729586 true))

(assert (=> d!1729586 true))

(assert (=> d!1729586 (= (Exists!2386 lambda!283973) (Exists!2386 lambda!283974))))

(declare-fun lt!2211080 () Unit!154342)

(declare-fun choose!41085 (Regex!15205 List!61914) Unit!154342)

(assert (=> d!1729586 (= lt!2211080 (choose!41085 (reg!15534 (regOne!30922 r!7292)) (_1!35707 lt!2210854)))))

(assert (=> d!1729586 (validRegex!6941 (reg!15534 (regOne!30922 r!7292)))))

(assert (=> d!1729586 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!416 (reg!15534 (regOne!30922 r!7292)) (_1!35707 lt!2210854)) lt!2211080)))

(declare-fun m!6446010 () Bool)

(assert (=> bs!1252593 m!6446010))

(declare-fun m!6446012 () Bool)

(assert (=> bs!1252593 m!6446012))

(declare-fun m!6446014 () Bool)

(assert (=> bs!1252593 m!6446014))

(assert (=> bs!1252593 m!6445148))

(assert (=> b!5420765 d!1729586))

(declare-fun bs!1252594 () Bool)

(declare-fun d!1729594 () Bool)

(assert (= bs!1252594 (and d!1729594 d!1729290)))

(declare-fun lambda!283975 () Int)

(assert (=> bs!1252594 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) lt!2210852) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283975 lambda!283907))))

(declare-fun bs!1252596 () Bool)

(assert (= bs!1252596 (and d!1729594 b!5420765)))

(assert (=> bs!1252596 (not (= lambda!283975 lambda!283886))))

(declare-fun bs!1252597 () Bool)

(assert (= bs!1252597 (and d!1729594 b!5420758)))

(assert (=> bs!1252597 (not (= lambda!283975 lambda!283879))))

(declare-fun bs!1252598 () Bool)

(assert (= bs!1252598 (and d!1729594 d!1729586)))

(assert (=> bs!1252598 (= (= lt!2210832 (Star!15205 (reg!15534 (regOne!30922 r!7292)))) (= lambda!283975 lambda!283973))))

(assert (=> bs!1252596 (= lambda!283975 lambda!283885)))

(declare-fun bs!1252599 () Bool)

(assert (= bs!1252599 (and d!1729594 b!5420770)))

(assert (=> bs!1252599 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) lt!2210852) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283975 lambda!283883))))

(assert (=> bs!1252598 (not (= lambda!283975 lambda!283974))))

(declare-fun bs!1252601 () Bool)

(assert (= bs!1252601 (and d!1729594 b!5421295)))

(assert (=> bs!1252601 (not (= lambda!283975 lambda!283937))))

(declare-fun bs!1252602 () Bool)

(assert (= bs!1252602 (and d!1729594 b!5421297)))

(assert (=> bs!1252602 (not (= lambda!283975 lambda!283936))))

(assert (=> bs!1252597 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) (regOne!30922 r!7292)) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283975 lambda!283878))))

(declare-fun bs!1252603 () Bool)

(assert (= bs!1252603 (and d!1729594 d!1729574)))

(assert (=> bs!1252603 (= lambda!283975 lambda!283964)))

(declare-fun bs!1252604 () Bool)

(assert (= bs!1252604 (and d!1729594 d!1729402)))

(assert (=> bs!1252604 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) lt!2210852) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283975 lambda!283940))))

(assert (=> bs!1252594 (not (= lambda!283975 lambda!283908))))

(assert (=> bs!1252596 (not (= lambda!283975 lambda!283887))))

(assert (=> bs!1252599 (not (= lambda!283975 lambda!283884))))

(assert (=> d!1729594 true))

(assert (=> d!1729594 true))

(assert (=> d!1729594 true))

(declare-fun lambda!283976 () Int)

(assert (=> bs!1252594 (not (= lambda!283976 lambda!283907))))

(assert (=> bs!1252596 (= lambda!283976 lambda!283886)))

(assert (=> bs!1252597 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) (regOne!30922 r!7292)) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283976 lambda!283879))))

(assert (=> bs!1252598 (not (= lambda!283976 lambda!283973))))

(assert (=> bs!1252596 (not (= lambda!283976 lambda!283885))))

(assert (=> bs!1252599 (not (= lambda!283976 lambda!283883))))

(assert (=> bs!1252598 (not (= lambda!283976 lambda!283974))))

(assert (=> bs!1252601 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) (regOne!30922 lt!2210816)) (= lt!2210832 (regTwo!30922 lt!2210816))) (= lambda!283976 lambda!283937))))

(assert (=> bs!1252602 (not (= lambda!283976 lambda!283936))))

(assert (=> bs!1252597 (not (= lambda!283976 lambda!283878))))

(declare-fun bs!1252606 () Bool)

(assert (= bs!1252606 d!1729594))

(assert (=> bs!1252606 (not (= lambda!283976 lambda!283975))))

(assert (=> bs!1252603 (not (= lambda!283976 lambda!283964))))

(assert (=> bs!1252604 (not (= lambda!283976 lambda!283940))))

(assert (=> bs!1252594 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) lt!2210852) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283976 lambda!283908))))

(assert (=> bs!1252596 (not (= lambda!283976 lambda!283887))))

(assert (=> bs!1252599 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 (regOne!30922 r!7292)) lt!2210852) (= lt!2210832 (regTwo!30922 r!7292))) (= lambda!283976 lambda!283884))))

(assert (=> d!1729594 true))

(assert (=> d!1729594 true))

(assert (=> d!1729594 true))

(assert (=> d!1729594 (= (Exists!2386 lambda!283975) (Exists!2386 lambda!283976))))

(declare-fun lt!2211083 () Unit!154342)

(assert (=> d!1729594 (= lt!2211083 (choose!41059 (reg!15534 (regOne!30922 r!7292)) lt!2210832 (_1!35707 lt!2210854)))))

(assert (=> d!1729594 (validRegex!6941 (reg!15534 (regOne!30922 r!7292)))))

(assert (=> d!1729594 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1040 (reg!15534 (regOne!30922 r!7292)) lt!2210832 (_1!35707 lt!2210854)) lt!2211083)))

(declare-fun m!6446044 () Bool)

(assert (=> bs!1252606 m!6446044))

(declare-fun m!6446046 () Bool)

(assert (=> bs!1252606 m!6446046))

(declare-fun m!6446048 () Bool)

(assert (=> bs!1252606 m!6446048))

(assert (=> bs!1252606 m!6445148))

(assert (=> b!5420765 d!1729594))

(declare-fun d!1729610 () Bool)

(assert (=> d!1729610 (= (isDefined!12019 lt!2210812) (not (isEmpty!33793 lt!2210812)))))

(declare-fun bs!1252613 () Bool)

(assert (= bs!1252613 d!1729610))

(declare-fun m!6446050 () Bool)

(assert (=> bs!1252613 m!6446050))

(assert (=> b!5420765 d!1729610))

(declare-fun bs!1252619 () Bool)

(declare-fun b!5421857 () Bool)

(assert (= bs!1252619 (and b!5421857 d!1729290)))

(declare-fun lambda!283981 () Int)

(assert (=> bs!1252619 (not (= lambda!283981 lambda!283907))))

(declare-fun bs!1252620 () Bool)

(assert (= bs!1252620 (and b!5421857 b!5420765)))

(assert (=> bs!1252620 (not (= lambda!283981 lambda!283886))))

(declare-fun bs!1252621 () Bool)

(assert (= bs!1252621 (and b!5421857 b!5420758)))

(assert (=> bs!1252621 (not (= lambda!283981 lambda!283879))))

(declare-fun bs!1252622 () Bool)

(assert (= bs!1252622 (and b!5421857 d!1729586)))

(assert (=> bs!1252622 (not (= lambda!283981 lambda!283973))))

(assert (=> bs!1252620 (not (= lambda!283981 lambda!283885))))

(declare-fun bs!1252623 () Bool)

(assert (= bs!1252623 (and b!5421857 b!5420770)))

(assert (=> bs!1252623 (not (= lambda!283981 lambda!283883))))

(assert (=> bs!1252622 (= (and (= (reg!15534 lt!2210852) (reg!15534 (regOne!30922 r!7292))) (= lt!2210852 (Star!15205 (reg!15534 (regOne!30922 r!7292))))) (= lambda!283981 lambda!283974))))

(declare-fun bs!1252624 () Bool)

(assert (= bs!1252624 (and b!5421857 b!5421297)))

(assert (=> bs!1252624 (= (and (= (_1!35707 lt!2210854) s!2326) (= (reg!15534 lt!2210852) (reg!15534 lt!2210816)) (= lt!2210852 lt!2210816)) (= lambda!283981 lambda!283936))))

(assert (=> bs!1252621 (not (= lambda!283981 lambda!283878))))

(declare-fun bs!1252626 () Bool)

(assert (= bs!1252626 (and b!5421857 d!1729594)))

(assert (=> bs!1252626 (not (= lambda!283981 lambda!283975))))

(declare-fun bs!1252627 () Bool)

(assert (= bs!1252627 (and b!5421857 d!1729574)))

(assert (=> bs!1252627 (not (= lambda!283981 lambda!283964))))

(declare-fun bs!1252629 () Bool)

(assert (= bs!1252629 (and b!5421857 d!1729402)))

(assert (=> bs!1252629 (not (= lambda!283981 lambda!283940))))

(assert (=> bs!1252619 (not (= lambda!283981 lambda!283908))))

(assert (=> bs!1252620 (= (and (= (reg!15534 lt!2210852) (reg!15534 (regOne!30922 r!7292))) (= lt!2210852 lt!2210832)) (= lambda!283981 lambda!283887))))

(assert (=> bs!1252623 (not (= lambda!283981 lambda!283884))))

(assert (=> bs!1252626 (not (= lambda!283981 lambda!283976))))

(declare-fun bs!1252631 () Bool)

(assert (= bs!1252631 (and b!5421857 b!5421295)))

(assert (=> bs!1252631 (not (= lambda!283981 lambda!283937))))

(assert (=> b!5421857 true))

(assert (=> b!5421857 true))

(declare-fun bs!1252632 () Bool)

(declare-fun b!5421855 () Bool)

(assert (= bs!1252632 (and b!5421855 d!1729290)))

(declare-fun lambda!283982 () Int)

(assert (=> bs!1252632 (not (= lambda!283982 lambda!283907))))

(declare-fun bs!1252633 () Bool)

(assert (= bs!1252633 (and b!5421855 b!5421857)))

(assert (=> bs!1252633 (not (= lambda!283982 lambda!283981))))

(declare-fun bs!1252634 () Bool)

(assert (= bs!1252634 (and b!5421855 b!5420765)))

(assert (=> bs!1252634 (= (and (= (regOne!30922 lt!2210852) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 lt!2210852) lt!2210832)) (= lambda!283982 lambda!283886))))

(declare-fun bs!1252635 () Bool)

(assert (= bs!1252635 (and b!5421855 b!5420758)))

(assert (=> bs!1252635 (= (and (= (_1!35707 lt!2210854) s!2326) (= (regOne!30922 lt!2210852) (regOne!30922 r!7292)) (= (regTwo!30922 lt!2210852) (regTwo!30922 r!7292))) (= lambda!283982 lambda!283879))))

(declare-fun bs!1252636 () Bool)

(assert (= bs!1252636 (and b!5421855 d!1729586)))

(assert (=> bs!1252636 (not (= lambda!283982 lambda!283973))))

(assert (=> bs!1252634 (not (= lambda!283982 lambda!283885))))

(declare-fun bs!1252637 () Bool)

(assert (= bs!1252637 (and b!5421855 b!5420770)))

(assert (=> bs!1252637 (not (= lambda!283982 lambda!283883))))

(assert (=> bs!1252636 (not (= lambda!283982 lambda!283974))))

(declare-fun bs!1252638 () Bool)

(assert (= bs!1252638 (and b!5421855 b!5421297)))

(assert (=> bs!1252638 (not (= lambda!283982 lambda!283936))))

(assert (=> bs!1252635 (not (= lambda!283982 lambda!283878))))

(declare-fun bs!1252639 () Bool)

(assert (= bs!1252639 (and b!5421855 d!1729594)))

(assert (=> bs!1252639 (not (= lambda!283982 lambda!283975))))

(declare-fun bs!1252640 () Bool)

(assert (= bs!1252640 (and b!5421855 d!1729574)))

(assert (=> bs!1252640 (not (= lambda!283982 lambda!283964))))

(declare-fun bs!1252641 () Bool)

(assert (= bs!1252641 (and b!5421855 d!1729402)))

(assert (=> bs!1252641 (not (= lambda!283982 lambda!283940))))

(assert (=> bs!1252632 (= (and (= (_1!35707 lt!2210854) s!2326) (= (regOne!30922 lt!2210852) lt!2210852) (= (regTwo!30922 lt!2210852) (regTwo!30922 r!7292))) (= lambda!283982 lambda!283908))))

(assert (=> bs!1252634 (not (= lambda!283982 lambda!283887))))

(assert (=> bs!1252637 (= (and (= (_1!35707 lt!2210854) s!2326) (= (regOne!30922 lt!2210852) lt!2210852) (= (regTwo!30922 lt!2210852) (regTwo!30922 r!7292))) (= lambda!283982 lambda!283884))))

(assert (=> bs!1252639 (= (and (= (regOne!30922 lt!2210852) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 lt!2210852) lt!2210832)) (= lambda!283982 lambda!283976))))

(declare-fun bs!1252642 () Bool)

(assert (= bs!1252642 (and b!5421855 b!5421295)))

(assert (=> bs!1252642 (= (and (= (_1!35707 lt!2210854) s!2326) (= (regOne!30922 lt!2210852) (regOne!30922 lt!2210816)) (= (regTwo!30922 lt!2210852) (regTwo!30922 lt!2210816))) (= lambda!283982 lambda!283937))))

(assert (=> b!5421855 true))

(assert (=> b!5421855 true))

(declare-fun b!5421853 () Bool)

(declare-fun e!3360205 () Bool)

(assert (=> b!5421853 (= e!3360205 (= (_1!35707 lt!2210854) (Cons!61790 (c!945345 lt!2210852) Nil!61790)))))

(declare-fun b!5421854 () Bool)

(declare-fun res!2306865 () Bool)

(declare-fun e!3360206 () Bool)

(assert (=> b!5421854 (=> res!2306865 e!3360206)))

(declare-fun call!388052 () Bool)

(assert (=> b!5421854 (= res!2306865 call!388052)))

(declare-fun e!3360203 () Bool)

(assert (=> b!5421854 (= e!3360203 e!3360206)))

(declare-fun call!388053 () Bool)

(assert (=> b!5421855 (= e!3360203 call!388053)))

(declare-fun b!5421856 () Bool)

(declare-fun c!945642 () Bool)

(assert (=> b!5421856 (= c!945642 ((_ is Union!15205) lt!2210852))))

(declare-fun e!3360208 () Bool)

(assert (=> b!5421856 (= e!3360205 e!3360208)))

(assert (=> b!5421857 (= e!3360206 call!388053)))

(declare-fun b!5421858 () Bool)

(declare-fun e!3360202 () Bool)

(declare-fun e!3360204 () Bool)

(assert (=> b!5421858 (= e!3360202 e!3360204)))

(declare-fun res!2306867 () Bool)

(assert (=> b!5421858 (= res!2306867 (not ((_ is EmptyLang!15205) lt!2210852)))))

(assert (=> b!5421858 (=> (not res!2306867) (not e!3360204))))

(declare-fun b!5421859 () Bool)

(assert (=> b!5421859 (= e!3360202 call!388052)))

(declare-fun d!1729612 () Bool)

(declare-fun c!945644 () Bool)

(assert (=> d!1729612 (= c!945644 ((_ is EmptyExpr!15205) lt!2210852))))

(assert (=> d!1729612 (= (matchRSpec!2308 lt!2210852 (_1!35707 lt!2210854)) e!3360202)))

(declare-fun b!5421860 () Bool)

(declare-fun e!3360207 () Bool)

(assert (=> b!5421860 (= e!3360207 (matchRSpec!2308 (regTwo!30923 lt!2210852) (_1!35707 lt!2210854)))))

(declare-fun b!5421861 () Bool)

(assert (=> b!5421861 (= e!3360208 e!3360203)))

(declare-fun c!945641 () Bool)

(assert (=> b!5421861 (= c!945641 ((_ is Star!15205) lt!2210852))))

(declare-fun bm!388047 () Bool)

(assert (=> bm!388047 (= call!388052 (isEmpty!33791 (_1!35707 lt!2210854)))))

(declare-fun bm!388048 () Bool)

(assert (=> bm!388048 (= call!388053 (Exists!2386 (ite c!945641 lambda!283981 lambda!283982)))))

(declare-fun b!5421862 () Bool)

(assert (=> b!5421862 (= e!3360208 e!3360207)))

(declare-fun res!2306866 () Bool)

(assert (=> b!5421862 (= res!2306866 (matchRSpec!2308 (regOne!30923 lt!2210852) (_1!35707 lt!2210854)))))

(assert (=> b!5421862 (=> res!2306866 e!3360207)))

(declare-fun b!5421863 () Bool)

(declare-fun c!945643 () Bool)

(assert (=> b!5421863 (= c!945643 ((_ is ElementMatch!15205) lt!2210852))))

(assert (=> b!5421863 (= e!3360204 e!3360205)))

(assert (= (and d!1729612 c!945644) b!5421859))

(assert (= (and d!1729612 (not c!945644)) b!5421858))

(assert (= (and b!5421858 res!2306867) b!5421863))

(assert (= (and b!5421863 c!945643) b!5421853))

(assert (= (and b!5421863 (not c!945643)) b!5421856))

(assert (= (and b!5421856 c!945642) b!5421862))

(assert (= (and b!5421856 (not c!945642)) b!5421861))

(assert (= (and b!5421862 (not res!2306866)) b!5421860))

(assert (= (and b!5421861 c!945641) b!5421854))

(assert (= (and b!5421861 (not c!945641)) b!5421855))

(assert (= (and b!5421854 (not res!2306865)) b!5421857))

(assert (= (or b!5421857 b!5421855) bm!388048))

(assert (= (or b!5421859 b!5421854) bm!388047))

(declare-fun m!6446086 () Bool)

(assert (=> b!5421860 m!6446086))

(assert (=> bm!388047 m!6445226))

(declare-fun m!6446088 () Bool)

(assert (=> bm!388048 m!6446088))

(declare-fun m!6446090 () Bool)

(assert (=> b!5421862 m!6446090))

(assert (=> b!5420765 d!1729612))

(declare-fun d!1729628 () Bool)

(assert (=> d!1729628 (= (Exists!2386 lambda!283887) (choose!41066 lambda!283887))))

(declare-fun bs!1252643 () Bool)

(assert (= bs!1252643 d!1729628))

(declare-fun m!6446092 () Bool)

(assert (=> bs!1252643 m!6446092))

(assert (=> b!5420765 d!1729628))

(declare-fun d!1729630 () Bool)

(assert (=> d!1729630 (= (++!13584 (++!13584 (_1!35707 lt!2210866) (_2!35707 lt!2210866)) (_2!35707 lt!2210854)) (++!13584 (_1!35707 lt!2210866) (++!13584 (_2!35707 lt!2210866) (_2!35707 lt!2210854))))))

(declare-fun lt!2211092 () Unit!154342)

(declare-fun choose!41086 (List!61914 List!61914 List!61914) Unit!154342)

(assert (=> d!1729630 (= lt!2211092 (choose!41086 (_1!35707 lt!2210866) (_2!35707 lt!2210866) (_2!35707 lt!2210854)))))

(assert (=> d!1729630 (= (lemmaConcatAssociativity!2840 (_1!35707 lt!2210866) (_2!35707 lt!2210866) (_2!35707 lt!2210854)) lt!2211092)))

(declare-fun bs!1252649 () Bool)

(assert (= bs!1252649 d!1729630))

(assert (=> bs!1252649 m!6444796))

(assert (=> bs!1252649 m!6444796))

(declare-fun m!6446096 () Bool)

(assert (=> bs!1252649 m!6446096))

(declare-fun m!6446098 () Bool)

(assert (=> bs!1252649 m!6446098))

(assert (=> bs!1252649 m!6444792))

(assert (=> bs!1252649 m!6444792))

(assert (=> bs!1252649 m!6444806))

(assert (=> b!5420765 d!1729630))

(declare-fun d!1729642 () Bool)

(declare-fun c!945649 () Bool)

(assert (=> d!1729642 (= c!945649 (isEmpty!33791 (_1!35707 lt!2210826)))))

(declare-fun e!3360238 () Bool)

(assert (=> d!1729642 (= (matchZipper!1449 lt!2210818 (_1!35707 lt!2210826)) e!3360238)))

(declare-fun b!5421928 () Bool)

(assert (=> b!5421928 (= e!3360238 (nullableZipper!1455 lt!2210818))))

(declare-fun b!5421929 () Bool)

(assert (=> b!5421929 (= e!3360238 (matchZipper!1449 (derivationStepZipper!1444 lt!2210818 (head!11630 (_1!35707 lt!2210826))) (tail!10727 (_1!35707 lt!2210826))))))

(assert (= (and d!1729642 c!945649) b!5421928))

(assert (= (and d!1729642 (not c!945649)) b!5421929))

(assert (=> d!1729642 m!6445268))

(declare-fun m!6446104 () Bool)

(assert (=> b!5421928 m!6446104))

(assert (=> b!5421929 m!6445262))

(assert (=> b!5421929 m!6445262))

(declare-fun m!6446106 () Bool)

(assert (=> b!5421929 m!6446106))

(assert (=> b!5421929 m!6445258))

(assert (=> b!5421929 m!6446106))

(assert (=> b!5421929 m!6445258))

(declare-fun m!6446108 () Bool)

(assert (=> b!5421929 m!6446108))

(assert (=> b!5420763 d!1729642))

(declare-fun d!1729644 () Bool)

(declare-fun c!945650 () Bool)

(assert (=> d!1729644 (= c!945650 (isEmpty!33791 (t!375137 s!2326)))))

(declare-fun e!3360239 () Bool)

(assert (=> d!1729644 (= (matchZipper!1449 lt!2210814 (t!375137 s!2326)) e!3360239)))

(declare-fun b!5421930 () Bool)

(assert (=> b!5421930 (= e!3360239 (nullableZipper!1455 lt!2210814))))

(declare-fun b!5421931 () Bool)

(assert (=> b!5421931 (= e!3360239 (matchZipper!1449 (derivationStepZipper!1444 lt!2210814 (head!11630 (t!375137 s!2326))) (tail!10727 (t!375137 s!2326))))))

(assert (= (and d!1729644 c!945650) b!5421930))

(assert (= (and d!1729644 (not c!945650)) b!5421931))

(assert (=> d!1729644 m!6444968))

(declare-fun m!6446110 () Bool)

(assert (=> b!5421930 m!6446110))

(assert (=> b!5421931 m!6444972))

(assert (=> b!5421931 m!6444972))

(declare-fun m!6446112 () Bool)

(assert (=> b!5421931 m!6446112))

(assert (=> b!5421931 m!6444976))

(assert (=> b!5421931 m!6446112))

(assert (=> b!5421931 m!6444976))

(declare-fun m!6446114 () Bool)

(assert (=> b!5421931 m!6446114))

(assert (=> b!5420742 d!1729644))

(declare-fun d!1729646 () Bool)

(declare-fun c!945651 () Bool)

(assert (=> d!1729646 (= c!945651 (isEmpty!33791 s!2326))))

(declare-fun e!3360240 () Bool)

(assert (=> d!1729646 (= (matchZipper!1449 lt!2210863 s!2326) e!3360240)))

(declare-fun b!5421932 () Bool)

(assert (=> b!5421932 (= e!3360240 (nullableZipper!1455 lt!2210863))))

(declare-fun b!5421933 () Bool)

(assert (=> b!5421933 (= e!3360240 (matchZipper!1449 (derivationStepZipper!1444 lt!2210863 (head!11630 s!2326)) (tail!10727 s!2326)))))

(assert (= (and d!1729646 c!945651) b!5421932))

(assert (= (and d!1729646 (not c!945651)) b!5421933))

(assert (=> d!1729646 m!6445118))

(declare-fun m!6446116 () Bool)

(assert (=> b!5421932 m!6446116))

(assert (=> b!5421933 m!6445112))

(assert (=> b!5421933 m!6445112))

(declare-fun m!6446118 () Bool)

(assert (=> b!5421933 m!6446118))

(assert (=> b!5421933 m!6445108))

(assert (=> b!5421933 m!6446118))

(assert (=> b!5421933 m!6445108))

(declare-fun m!6446120 () Bool)

(assert (=> b!5421933 m!6446120))

(assert (=> b!5420742 d!1729646))

(declare-fun d!1729648 () Bool)

(declare-fun e!3360243 () Bool)

(assert (=> d!1729648 e!3360243))

(declare-fun res!2306872 () Bool)

(assert (=> d!1729648 (=> (not res!2306872) (not e!3360243))))

(declare-fun lt!2211095 () List!61916)

(declare-fun noDuplicate!1405 (List!61916) Bool)

(assert (=> d!1729648 (= res!2306872 (noDuplicate!1405 lt!2211095))))

(declare-fun choose!41087 ((InoxSet Context!9178)) List!61916)

(assert (=> d!1729648 (= lt!2211095 (choose!41087 z!1189))))

(assert (=> d!1729648 (= (toList!8989 z!1189) lt!2211095)))

(declare-fun b!5421936 () Bool)

(declare-fun content!11116 (List!61916) (InoxSet Context!9178))

(assert (=> b!5421936 (= e!3360243 (= (content!11116 lt!2211095) z!1189))))

(assert (= (and d!1729648 res!2306872) b!5421936))

(declare-fun m!6446122 () Bool)

(assert (=> d!1729648 m!6446122))

(declare-fun m!6446124 () Bool)

(assert (=> d!1729648 m!6446124))

(declare-fun m!6446126 () Bool)

(assert (=> b!5421936 m!6446126))

(assert (=> b!5420757 d!1729648))

(declare-fun bs!1252650 () Bool)

(declare-fun d!1729650 () Bool)

(assert (= bs!1252650 (and d!1729650 b!5420733)))

(declare-fun lambda!283985 () Int)

(assert (=> bs!1252650 (= lambda!283985 lambda!283882)))

(declare-fun bs!1252651 () Bool)

(assert (= bs!1252651 (and d!1729650 d!1729276)))

(assert (=> bs!1252651 (= lambda!283985 lambda!283893)))

(declare-fun bs!1252652 () Bool)

(assert (= bs!1252652 (and d!1729650 d!1729302)))

(assert (=> bs!1252652 (= lambda!283985 lambda!283916)))

(declare-fun bs!1252653 () Bool)

(assert (= bs!1252653 (and d!1729650 d!1729504)))

(assert (=> bs!1252653 (= lambda!283985 lambda!283957)))

(declare-fun b!5421957 () Bool)

(declare-fun e!3360259 () Regex!15205)

(declare-fun e!3360256 () Regex!15205)

(assert (=> b!5421957 (= e!3360259 e!3360256)))

(declare-fun c!945661 () Bool)

(assert (=> b!5421957 (= c!945661 ((_ is Cons!61791) (unfocusZipperList!647 zl!343)))))

(declare-fun b!5421958 () Bool)

(assert (=> b!5421958 (= e!3360259 (h!68239 (unfocusZipperList!647 zl!343)))))

(declare-fun b!5421959 () Bool)

(declare-fun e!3360257 () Bool)

(declare-fun e!3360261 () Bool)

(assert (=> b!5421959 (= e!3360257 e!3360261)))

(declare-fun c!945662 () Bool)

(assert (=> b!5421959 (= c!945662 (isEmpty!33789 (tail!10726 (unfocusZipperList!647 zl!343))))))

(declare-fun b!5421961 () Bool)

(declare-fun lt!2211098 () Regex!15205)

(declare-fun isEmptyLang!997 (Regex!15205) Bool)

(assert (=> b!5421961 (= e!3360257 (isEmptyLang!997 lt!2211098))))

(declare-fun b!5421962 () Bool)

(declare-fun isUnion!429 (Regex!15205) Bool)

(assert (=> b!5421962 (= e!3360261 (isUnion!429 lt!2211098))))

(declare-fun b!5421963 () Bool)

(assert (=> b!5421963 (= e!3360256 EmptyLang!15205)))

(declare-fun b!5421964 () Bool)

(declare-fun e!3360258 () Bool)

(assert (=> b!5421964 (= e!3360258 (isEmpty!33789 (t!375138 (unfocusZipperList!647 zl!343))))))

(declare-fun b!5421965 () Bool)

(assert (=> b!5421965 (= e!3360256 (Union!15205 (h!68239 (unfocusZipperList!647 zl!343)) (generalisedUnion!1134 (t!375138 (unfocusZipperList!647 zl!343)))))))

(declare-fun b!5421966 () Bool)

(declare-fun e!3360260 () Bool)

(assert (=> b!5421966 (= e!3360260 e!3360257)))

(declare-fun c!945663 () Bool)

(assert (=> b!5421966 (= c!945663 (isEmpty!33789 (unfocusZipperList!647 zl!343)))))

(assert (=> d!1729650 e!3360260))

(declare-fun res!2306877 () Bool)

(assert (=> d!1729650 (=> (not res!2306877) (not e!3360260))))

(assert (=> d!1729650 (= res!2306877 (validRegex!6941 lt!2211098))))

(assert (=> d!1729650 (= lt!2211098 e!3360259)))

(declare-fun c!945660 () Bool)

(assert (=> d!1729650 (= c!945660 e!3360258)))

(declare-fun res!2306878 () Bool)

(assert (=> d!1729650 (=> (not res!2306878) (not e!3360258))))

(assert (=> d!1729650 (= res!2306878 ((_ is Cons!61791) (unfocusZipperList!647 zl!343)))))

(assert (=> d!1729650 (forall!14549 (unfocusZipperList!647 zl!343) lambda!283985)))

(assert (=> d!1729650 (= (generalisedUnion!1134 (unfocusZipperList!647 zl!343)) lt!2211098)))

(declare-fun b!5421960 () Bool)

(assert (=> b!5421960 (= e!3360261 (= lt!2211098 (head!11629 (unfocusZipperList!647 zl!343))))))

(assert (= (and d!1729650 res!2306878) b!5421964))

(assert (= (and d!1729650 c!945660) b!5421958))

(assert (= (and d!1729650 (not c!945660)) b!5421957))

(assert (= (and b!5421957 c!945661) b!5421965))

(assert (= (and b!5421957 (not c!945661)) b!5421963))

(assert (= (and d!1729650 res!2306877) b!5421966))

(assert (= (and b!5421966 c!945663) b!5421961))

(assert (= (and b!5421966 (not c!945663)) b!5421959))

(assert (= (and b!5421959 c!945662) b!5421960))

(assert (= (and b!5421959 (not c!945662)) b!5421962))

(declare-fun m!6446128 () Bool)

(assert (=> b!5421961 m!6446128))

(assert (=> b!5421960 m!6444726))

(declare-fun m!6446130 () Bool)

(assert (=> b!5421960 m!6446130))

(declare-fun m!6446132 () Bool)

(assert (=> b!5421962 m!6446132))

(assert (=> b!5421959 m!6444726))

(declare-fun m!6446134 () Bool)

(assert (=> b!5421959 m!6446134))

(assert (=> b!5421959 m!6446134))

(declare-fun m!6446136 () Bool)

(assert (=> b!5421959 m!6446136))

(declare-fun m!6446138 () Bool)

(assert (=> b!5421964 m!6446138))

(assert (=> b!5421966 m!6444726))

(declare-fun m!6446140 () Bool)

(assert (=> b!5421966 m!6446140))

(declare-fun m!6446142 () Bool)

(assert (=> d!1729650 m!6446142))

(assert (=> d!1729650 m!6444726))

(declare-fun m!6446144 () Bool)

(assert (=> d!1729650 m!6446144))

(declare-fun m!6446146 () Bool)

(assert (=> b!5421965 m!6446146))

(assert (=> b!5420736 d!1729650))

(declare-fun bs!1252654 () Bool)

(declare-fun d!1729652 () Bool)

(assert (= bs!1252654 (and d!1729652 d!1729504)))

(declare-fun lambda!283988 () Int)

(assert (=> bs!1252654 (= lambda!283988 lambda!283957)))

(declare-fun bs!1252655 () Bool)

(assert (= bs!1252655 (and d!1729652 d!1729276)))

(assert (=> bs!1252655 (= lambda!283988 lambda!283893)))

(declare-fun bs!1252656 () Bool)

(assert (= bs!1252656 (and d!1729652 b!5420733)))

(assert (=> bs!1252656 (= lambda!283988 lambda!283882)))

(declare-fun bs!1252657 () Bool)

(assert (= bs!1252657 (and d!1729652 d!1729650)))

(assert (=> bs!1252657 (= lambda!283988 lambda!283985)))

(declare-fun bs!1252658 () Bool)

(assert (= bs!1252658 (and d!1729652 d!1729302)))

(assert (=> bs!1252658 (= lambda!283988 lambda!283916)))

(declare-fun lt!2211101 () List!61915)

(assert (=> d!1729652 (forall!14549 lt!2211101 lambda!283988)))

(declare-fun e!3360264 () List!61915)

(assert (=> d!1729652 (= lt!2211101 e!3360264)))

(declare-fun c!945666 () Bool)

(assert (=> d!1729652 (= c!945666 ((_ is Cons!61792) zl!343))))

(assert (=> d!1729652 (= (unfocusZipperList!647 zl!343) lt!2211101)))

(declare-fun b!5421971 () Bool)

(assert (=> b!5421971 (= e!3360264 (Cons!61791 (generalisedConcat!874 (exprs!5089 (h!68240 zl!343))) (unfocusZipperList!647 (t!375139 zl!343))))))

(declare-fun b!5421972 () Bool)

(assert (=> b!5421972 (= e!3360264 Nil!61791)))

(assert (= (and d!1729652 c!945666) b!5421971))

(assert (= (and d!1729652 (not c!945666)) b!5421972))

(declare-fun m!6446148 () Bool)

(assert (=> d!1729652 m!6446148))

(assert (=> b!5421971 m!6444750))

(declare-fun m!6446150 () Bool)

(assert (=> b!5421971 m!6446150))

(assert (=> b!5420736 d!1729652))

(assert (=> b!5420759 d!1729286))

(declare-fun d!1729654 () Bool)

(assert (=> d!1729654 (= (nullable!5374 (regOne!30922 (regOne!30922 r!7292))) (nullableFct!1607 (regOne!30922 (regOne!30922 r!7292))))))

(declare-fun bs!1252659 () Bool)

(assert (= bs!1252659 d!1729654))

(declare-fun m!6446152 () Bool)

(assert (=> bs!1252659 m!6446152))

(assert (=> b!5420738 d!1729654))

(declare-fun b!5421973 () Bool)

(declare-fun res!2306881 () Bool)

(declare-fun e!3360266 () Bool)

(assert (=> b!5421973 (=> (not res!2306881) (not e!3360266))))

(declare-fun lt!2211104 () Option!15316)

(assert (=> b!5421973 (= res!2306881 (matchR!7390 (regTwo!30922 r!7292) (_2!35707 (get!21310 lt!2211104))))))

(declare-fun b!5421974 () Bool)

(declare-fun res!2306880 () Bool)

(assert (=> b!5421974 (=> (not res!2306880) (not e!3360266))))

(assert (=> b!5421974 (= res!2306880 (matchR!7390 (regOne!30922 r!7292) (_1!35707 (get!21310 lt!2211104))))))

(declare-fun b!5421975 () Bool)

(declare-fun lt!2211103 () Unit!154342)

(declare-fun lt!2211102 () Unit!154342)

(assert (=> b!5421975 (= lt!2211103 lt!2211102)))

(assert (=> b!5421975 (= (++!13584 (++!13584 Nil!61790 (Cons!61790 (h!68238 s!2326) Nil!61790)) (t!375137 s!2326)) s!2326)))

(assert (=> b!5421975 (= lt!2211102 (lemmaMoveElementToOtherListKeepsConcatEq!1851 Nil!61790 (h!68238 s!2326) (t!375137 s!2326) s!2326))))

(declare-fun e!3360267 () Option!15316)

(assert (=> b!5421975 (= e!3360267 (findConcatSeparation!1730 (regOne!30922 r!7292) (regTwo!30922 r!7292) (++!13584 Nil!61790 (Cons!61790 (h!68238 s!2326) Nil!61790)) (t!375137 s!2326) s!2326))))

(declare-fun b!5421976 () Bool)

(assert (=> b!5421976 (= e!3360266 (= (++!13584 (_1!35707 (get!21310 lt!2211104)) (_2!35707 (get!21310 lt!2211104))) s!2326))))

(declare-fun b!5421977 () Bool)

(declare-fun e!3360269 () Bool)

(assert (=> b!5421977 (= e!3360269 (matchR!7390 (regTwo!30922 r!7292) s!2326))))

(declare-fun b!5421978 () Bool)

(declare-fun e!3360265 () Bool)

(assert (=> b!5421978 (= e!3360265 (not (isDefined!12019 lt!2211104)))))

(declare-fun d!1729656 () Bool)

(assert (=> d!1729656 e!3360265))

(declare-fun res!2306883 () Bool)

(assert (=> d!1729656 (=> res!2306883 e!3360265)))

(assert (=> d!1729656 (= res!2306883 e!3360266)))

(declare-fun res!2306882 () Bool)

(assert (=> d!1729656 (=> (not res!2306882) (not e!3360266))))

(assert (=> d!1729656 (= res!2306882 (isDefined!12019 lt!2211104))))

(declare-fun e!3360268 () Option!15316)

(assert (=> d!1729656 (= lt!2211104 e!3360268)))

(declare-fun c!945667 () Bool)

(assert (=> d!1729656 (= c!945667 e!3360269)))

(declare-fun res!2306879 () Bool)

(assert (=> d!1729656 (=> (not res!2306879) (not e!3360269))))

(assert (=> d!1729656 (= res!2306879 (matchR!7390 (regOne!30922 r!7292) Nil!61790))))

(assert (=> d!1729656 (validRegex!6941 (regOne!30922 r!7292))))

(assert (=> d!1729656 (= (findConcatSeparation!1730 (regOne!30922 r!7292) (regTwo!30922 r!7292) Nil!61790 s!2326 s!2326) lt!2211104)))

(declare-fun b!5421979 () Bool)

(assert (=> b!5421979 (= e!3360267 None!15315)))

(declare-fun b!5421980 () Bool)

(assert (=> b!5421980 (= e!3360268 e!3360267)))

(declare-fun c!945668 () Bool)

(assert (=> b!5421980 (= c!945668 ((_ is Nil!61790) s!2326))))

(declare-fun b!5421981 () Bool)

(assert (=> b!5421981 (= e!3360268 (Some!15315 (tuple2!64809 Nil!61790 s!2326)))))

(assert (= (and d!1729656 res!2306879) b!5421977))

(assert (= (and d!1729656 c!945667) b!5421981))

(assert (= (and d!1729656 (not c!945667)) b!5421980))

(assert (= (and b!5421980 c!945668) b!5421979))

(assert (= (and b!5421980 (not c!945668)) b!5421975))

(assert (= (and d!1729656 res!2306882) b!5421974))

(assert (= (and b!5421974 res!2306880) b!5421973))

(assert (= (and b!5421973 res!2306881) b!5421976))

(assert (= (and d!1729656 (not res!2306883)) b!5421978))

(declare-fun m!6446154 () Bool)

(assert (=> d!1729656 m!6446154))

(declare-fun m!6446156 () Bool)

(assert (=> d!1729656 m!6446156))

(declare-fun m!6446158 () Bool)

(assert (=> d!1729656 m!6446158))

(assert (=> b!5421975 m!6445408))

(assert (=> b!5421975 m!6445408))

(assert (=> b!5421975 m!6445410))

(assert (=> b!5421975 m!6445412))

(assert (=> b!5421975 m!6445408))

(declare-fun m!6446160 () Bool)

(assert (=> b!5421975 m!6446160))

(declare-fun m!6446162 () Bool)

(assert (=> b!5421973 m!6446162))

(declare-fun m!6446164 () Bool)

(assert (=> b!5421973 m!6446164))

(assert (=> b!5421976 m!6446162))

(declare-fun m!6446166 () Bool)

(assert (=> b!5421976 m!6446166))

(assert (=> b!5421978 m!6446154))

(assert (=> b!5421977 m!6445422))

(assert (=> b!5421974 m!6446162))

(declare-fun m!6446168 () Bool)

(assert (=> b!5421974 m!6446168))

(assert (=> b!5420758 d!1729656))

(declare-fun d!1729658 () Bool)

(assert (=> d!1729658 (= (Exists!2386 lambda!283879) (choose!41066 lambda!283879))))

(declare-fun bs!1252660 () Bool)

(assert (= bs!1252660 d!1729658))

(declare-fun m!6446170 () Bool)

(assert (=> bs!1252660 m!6446170))

(assert (=> b!5420758 d!1729658))

(declare-fun d!1729660 () Bool)

(assert (=> d!1729660 (= (Exists!2386 lambda!283878) (choose!41066 lambda!283878))))

(declare-fun bs!1252661 () Bool)

(assert (= bs!1252661 d!1729660))

(declare-fun m!6446172 () Bool)

(assert (=> bs!1252661 m!6446172))

(assert (=> b!5420758 d!1729660))

(declare-fun bs!1252662 () Bool)

(declare-fun d!1729662 () Bool)

(assert (= bs!1252662 (and d!1729662 d!1729290)))

(declare-fun lambda!283989 () Int)

(assert (=> bs!1252662 (= (= (regOne!30922 r!7292) lt!2210852) (= lambda!283989 lambda!283907))))

(declare-fun bs!1252663 () Bool)

(assert (= bs!1252663 (and d!1729662 b!5421857)))

(assert (=> bs!1252663 (not (= lambda!283989 lambda!283981))))

(declare-fun bs!1252664 () Bool)

(assert (= bs!1252664 (and d!1729662 b!5420758)))

(assert (=> bs!1252664 (not (= lambda!283989 lambda!283879))))

(declare-fun bs!1252665 () Bool)

(assert (= bs!1252665 (and d!1729662 d!1729586)))

(assert (=> bs!1252665 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 r!7292) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) (Star!15205 (reg!15534 (regOne!30922 r!7292))))) (= lambda!283989 lambda!283973))))

(declare-fun bs!1252666 () Bool)

(assert (= bs!1252666 (and d!1729662 b!5420765)))

(assert (=> bs!1252666 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 r!7292) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) lt!2210832)) (= lambda!283989 lambda!283885))))

(declare-fun bs!1252667 () Bool)

(assert (= bs!1252667 (and d!1729662 b!5420770)))

(assert (=> bs!1252667 (= (= (regOne!30922 r!7292) lt!2210852) (= lambda!283989 lambda!283883))))

(assert (=> bs!1252665 (not (= lambda!283989 lambda!283974))))

(declare-fun bs!1252668 () Bool)

(assert (= bs!1252668 (and d!1729662 b!5421297)))

(assert (=> bs!1252668 (not (= lambda!283989 lambda!283936))))

(assert (=> bs!1252664 (= lambda!283989 lambda!283878)))

(declare-fun bs!1252669 () Bool)

(assert (= bs!1252669 (and d!1729662 d!1729594)))

(assert (=> bs!1252669 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 r!7292) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) lt!2210832)) (= lambda!283989 lambda!283975))))

(declare-fun bs!1252670 () Bool)

(assert (= bs!1252670 (and d!1729662 d!1729574)))

(assert (=> bs!1252670 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 r!7292) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) lt!2210832)) (= lambda!283989 lambda!283964))))

(declare-fun bs!1252671 () Bool)

(assert (= bs!1252671 (and d!1729662 d!1729402)))

(assert (=> bs!1252671 (= (= (regOne!30922 r!7292) lt!2210852) (= lambda!283989 lambda!283940))))

(assert (=> bs!1252662 (not (= lambda!283989 lambda!283908))))

(assert (=> bs!1252666 (not (= lambda!283989 lambda!283886))))

(declare-fun bs!1252672 () Bool)

(assert (= bs!1252672 (and d!1729662 b!5421855)))

(assert (=> bs!1252672 (not (= lambda!283989 lambda!283982))))

(assert (=> bs!1252666 (not (= lambda!283989 lambda!283887))))

(assert (=> bs!1252667 (not (= lambda!283989 lambda!283884))))

(assert (=> bs!1252669 (not (= lambda!283989 lambda!283976))))

(declare-fun bs!1252673 () Bool)

(assert (= bs!1252673 (and d!1729662 b!5421295)))

(assert (=> bs!1252673 (not (= lambda!283989 lambda!283937))))

(assert (=> d!1729662 true))

(assert (=> d!1729662 true))

(assert (=> d!1729662 true))

(assert (=> d!1729662 (= (isDefined!12019 (findConcatSeparation!1730 (regOne!30922 r!7292) (regTwo!30922 r!7292) Nil!61790 s!2326 s!2326)) (Exists!2386 lambda!283989))))

(declare-fun lt!2211105 () Unit!154342)

(assert (=> d!1729662 (= lt!2211105 (choose!41073 (regOne!30922 r!7292) (regTwo!30922 r!7292) s!2326))))

(assert (=> d!1729662 (validRegex!6941 (regOne!30922 r!7292))))

(assert (=> d!1729662 (= (lemmaFindConcatSeparationEquivalentToExists!1494 (regOne!30922 r!7292) (regTwo!30922 r!7292) s!2326) lt!2211105)))

(declare-fun bs!1252674 () Bool)

(assert (= bs!1252674 d!1729662))

(assert (=> bs!1252674 m!6446158))

(assert (=> bs!1252674 m!6444778))

(assert (=> bs!1252674 m!6444780))

(assert (=> bs!1252674 m!6444778))

(declare-fun m!6446174 () Bool)

(assert (=> bs!1252674 m!6446174))

(declare-fun m!6446176 () Bool)

(assert (=> bs!1252674 m!6446176))

(assert (=> b!5420758 d!1729662))

(declare-fun bs!1252675 () Bool)

(declare-fun d!1729664 () Bool)

(assert (= bs!1252675 (and d!1729664 d!1729290)))

(declare-fun lambda!283990 () Int)

(assert (=> bs!1252675 (= (= (regOne!30922 r!7292) lt!2210852) (= lambda!283990 lambda!283907))))

(declare-fun bs!1252676 () Bool)

(assert (= bs!1252676 (and d!1729664 b!5421857)))

(assert (=> bs!1252676 (not (= lambda!283990 lambda!283981))))

(declare-fun bs!1252677 () Bool)

(assert (= bs!1252677 (and d!1729664 d!1729662)))

(assert (=> bs!1252677 (= lambda!283990 lambda!283989)))

(declare-fun bs!1252678 () Bool)

(assert (= bs!1252678 (and d!1729664 b!5420758)))

(assert (=> bs!1252678 (not (= lambda!283990 lambda!283879))))

(declare-fun bs!1252679 () Bool)

(assert (= bs!1252679 (and d!1729664 d!1729586)))

(assert (=> bs!1252679 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 r!7292) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) (Star!15205 (reg!15534 (regOne!30922 r!7292))))) (= lambda!283990 lambda!283973))))

(declare-fun bs!1252680 () Bool)

(assert (= bs!1252680 (and d!1729664 b!5420765)))

(assert (=> bs!1252680 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 r!7292) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) lt!2210832)) (= lambda!283990 lambda!283885))))

(declare-fun bs!1252681 () Bool)

(assert (= bs!1252681 (and d!1729664 b!5420770)))

(assert (=> bs!1252681 (= (= (regOne!30922 r!7292) lt!2210852) (= lambda!283990 lambda!283883))))

(assert (=> bs!1252679 (not (= lambda!283990 lambda!283974))))

(declare-fun bs!1252682 () Bool)

(assert (= bs!1252682 (and d!1729664 b!5421297)))

(assert (=> bs!1252682 (not (= lambda!283990 lambda!283936))))

(assert (=> bs!1252678 (= lambda!283990 lambda!283878)))

(declare-fun bs!1252683 () Bool)

(assert (= bs!1252683 (and d!1729664 d!1729594)))

(assert (=> bs!1252683 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 r!7292) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) lt!2210832)) (= lambda!283990 lambda!283975))))

(declare-fun bs!1252684 () Bool)

(assert (= bs!1252684 (and d!1729664 d!1729574)))

(assert (=> bs!1252684 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 r!7292) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) lt!2210832)) (= lambda!283990 lambda!283964))))

(declare-fun bs!1252685 () Bool)

(assert (= bs!1252685 (and d!1729664 d!1729402)))

(assert (=> bs!1252685 (= (= (regOne!30922 r!7292) lt!2210852) (= lambda!283990 lambda!283940))))

(assert (=> bs!1252675 (not (= lambda!283990 lambda!283908))))

(assert (=> bs!1252680 (not (= lambda!283990 lambda!283886))))

(declare-fun bs!1252686 () Bool)

(assert (= bs!1252686 (and d!1729664 b!5421855)))

(assert (=> bs!1252686 (not (= lambda!283990 lambda!283982))))

(assert (=> bs!1252680 (not (= lambda!283990 lambda!283887))))

(assert (=> bs!1252681 (not (= lambda!283990 lambda!283884))))

(assert (=> bs!1252683 (not (= lambda!283990 lambda!283976))))

(declare-fun bs!1252687 () Bool)

(assert (= bs!1252687 (and d!1729664 b!5421295)))

(assert (=> bs!1252687 (not (= lambda!283990 lambda!283937))))

(assert (=> d!1729664 true))

(assert (=> d!1729664 true))

(assert (=> d!1729664 true))

(declare-fun lambda!283991 () Int)

(assert (=> bs!1252675 (not (= lambda!283991 lambda!283907))))

(assert (=> bs!1252676 (not (= lambda!283991 lambda!283981))))

(assert (=> bs!1252677 (not (= lambda!283991 lambda!283989))))

(assert (=> bs!1252679 (not (= lambda!283991 lambda!283973))))

(assert (=> bs!1252680 (not (= lambda!283991 lambda!283885))))

(assert (=> bs!1252681 (not (= lambda!283991 lambda!283883))))

(assert (=> bs!1252679 (not (= lambda!283991 lambda!283974))))

(assert (=> bs!1252682 (not (= lambda!283991 lambda!283936))))

(assert (=> bs!1252678 (not (= lambda!283991 lambda!283878))))

(assert (=> bs!1252683 (not (= lambda!283991 lambda!283975))))

(assert (=> bs!1252684 (not (= lambda!283991 lambda!283964))))

(assert (=> bs!1252685 (not (= lambda!283991 lambda!283940))))

(assert (=> bs!1252675 (= (= (regOne!30922 r!7292) lt!2210852) (= lambda!283991 lambda!283908))))

(assert (=> bs!1252680 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 r!7292) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) lt!2210832)) (= lambda!283991 lambda!283886))))

(assert (=> bs!1252686 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 r!7292) (regOne!30922 lt!2210852)) (= (regTwo!30922 r!7292) (regTwo!30922 lt!2210852))) (= lambda!283991 lambda!283982))))

(assert (=> bs!1252678 (= lambda!283991 lambda!283879)))

(declare-fun bs!1252688 () Bool)

(assert (= bs!1252688 d!1729664))

(assert (=> bs!1252688 (not (= lambda!283991 lambda!283990))))

(assert (=> bs!1252680 (not (= lambda!283991 lambda!283887))))

(assert (=> bs!1252681 (= (= (regOne!30922 r!7292) lt!2210852) (= lambda!283991 lambda!283884))))

(assert (=> bs!1252683 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 r!7292) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) lt!2210832)) (= lambda!283991 lambda!283976))))

(assert (=> bs!1252687 (= (and (= (regOne!30922 r!7292) (regOne!30922 lt!2210816)) (= (regTwo!30922 r!7292) (regTwo!30922 lt!2210816))) (= lambda!283991 lambda!283937))))

(assert (=> d!1729664 true))

(assert (=> d!1729664 true))

(assert (=> d!1729664 true))

(assert (=> d!1729664 (= (Exists!2386 lambda!283990) (Exists!2386 lambda!283991))))

(declare-fun lt!2211106 () Unit!154342)

(assert (=> d!1729664 (= lt!2211106 (choose!41059 (regOne!30922 r!7292) (regTwo!30922 r!7292) s!2326))))

(assert (=> d!1729664 (validRegex!6941 (regOne!30922 r!7292))))

(assert (=> d!1729664 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1040 (regOne!30922 r!7292) (regTwo!30922 r!7292) s!2326) lt!2211106)))

(declare-fun m!6446178 () Bool)

(assert (=> bs!1252688 m!6446178))

(declare-fun m!6446180 () Bool)

(assert (=> bs!1252688 m!6446180))

(declare-fun m!6446182 () Bool)

(assert (=> bs!1252688 m!6446182))

(assert (=> bs!1252688 m!6446158))

(assert (=> b!5420758 d!1729664))

(declare-fun d!1729666 () Bool)

(assert (=> d!1729666 (= (isDefined!12019 (findConcatSeparation!1730 (regOne!30922 r!7292) (regTwo!30922 r!7292) Nil!61790 s!2326 s!2326)) (not (isEmpty!33793 (findConcatSeparation!1730 (regOne!30922 r!7292) (regTwo!30922 r!7292) Nil!61790 s!2326 s!2326))))))

(declare-fun bs!1252689 () Bool)

(assert (= bs!1252689 d!1729666))

(assert (=> bs!1252689 m!6444778))

(declare-fun m!6446184 () Bool)

(assert (=> bs!1252689 m!6446184))

(assert (=> b!5420758 d!1729666))

(declare-fun bs!1252690 () Bool)

(declare-fun b!5421986 () Bool)

(assert (= bs!1252690 (and b!5421986 d!1729290)))

(declare-fun lambda!283992 () Int)

(assert (=> bs!1252690 (not (= lambda!283992 lambda!283907))))

(declare-fun bs!1252691 () Bool)

(assert (= bs!1252691 (and b!5421986 b!5421857)))

(assert (=> bs!1252691 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (reg!15534 r!7292) (reg!15534 lt!2210852)) (= r!7292 lt!2210852)) (= lambda!283992 lambda!283981))))

(declare-fun bs!1252692 () Bool)

(assert (= bs!1252692 (and b!5421986 d!1729662)))

(assert (=> bs!1252692 (not (= lambda!283992 lambda!283989))))

(declare-fun bs!1252693 () Bool)

(assert (= bs!1252693 (and b!5421986 d!1729586)))

(assert (=> bs!1252693 (not (= lambda!283992 lambda!283973))))

(declare-fun bs!1252694 () Bool)

(assert (= bs!1252694 (and b!5421986 b!5420770)))

(assert (=> bs!1252694 (not (= lambda!283992 lambda!283883))))

(assert (=> bs!1252693 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (reg!15534 r!7292) (reg!15534 (regOne!30922 r!7292))) (= r!7292 (Star!15205 (reg!15534 (regOne!30922 r!7292))))) (= lambda!283992 lambda!283974))))

(declare-fun bs!1252695 () Bool)

(assert (= bs!1252695 (and b!5421986 b!5421297)))

(assert (=> bs!1252695 (= (and (= (reg!15534 r!7292) (reg!15534 lt!2210816)) (= r!7292 lt!2210816)) (= lambda!283992 lambda!283936))))

(declare-fun bs!1252696 () Bool)

(assert (= bs!1252696 (and b!5421986 b!5420758)))

(assert (=> bs!1252696 (not (= lambda!283992 lambda!283878))))

(declare-fun bs!1252697 () Bool)

(assert (= bs!1252697 (and b!5421986 d!1729594)))

(assert (=> bs!1252697 (not (= lambda!283992 lambda!283975))))

(declare-fun bs!1252698 () Bool)

(assert (= bs!1252698 (and b!5421986 d!1729574)))

(assert (=> bs!1252698 (not (= lambda!283992 lambda!283964))))

(declare-fun bs!1252699 () Bool)

(assert (= bs!1252699 (and b!5421986 d!1729402)))

(assert (=> bs!1252699 (not (= lambda!283992 lambda!283940))))

(assert (=> bs!1252690 (not (= lambda!283992 lambda!283908))))

(declare-fun bs!1252700 () Bool)

(assert (= bs!1252700 (and b!5421986 b!5420765)))

(assert (=> bs!1252700 (not (= lambda!283992 lambda!283886))))

(declare-fun bs!1252701 () Bool)

(assert (= bs!1252701 (and b!5421986 b!5421855)))

(assert (=> bs!1252701 (not (= lambda!283992 lambda!283982))))

(assert (=> bs!1252696 (not (= lambda!283992 lambda!283879))))

(declare-fun bs!1252702 () Bool)

(assert (= bs!1252702 (and b!5421986 d!1729664)))

(assert (=> bs!1252702 (not (= lambda!283992 lambda!283990))))

(assert (=> bs!1252700 (not (= lambda!283992 lambda!283885))))

(assert (=> bs!1252702 (not (= lambda!283992 lambda!283991))))

(assert (=> bs!1252700 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (reg!15534 r!7292) (reg!15534 (regOne!30922 r!7292))) (= r!7292 lt!2210832)) (= lambda!283992 lambda!283887))))

(assert (=> bs!1252694 (not (= lambda!283992 lambda!283884))))

(assert (=> bs!1252697 (not (= lambda!283992 lambda!283976))))

(declare-fun bs!1252703 () Bool)

(assert (= bs!1252703 (and b!5421986 b!5421295)))

(assert (=> bs!1252703 (not (= lambda!283992 lambda!283937))))

(assert (=> b!5421986 true))

(assert (=> b!5421986 true))

(declare-fun bs!1252704 () Bool)

(declare-fun b!5421984 () Bool)

(assert (= bs!1252704 (and b!5421984 d!1729290)))

(declare-fun lambda!283993 () Int)

(assert (=> bs!1252704 (not (= lambda!283993 lambda!283907))))

(declare-fun bs!1252705 () Bool)

(assert (= bs!1252705 (and b!5421984 b!5421857)))

(assert (=> bs!1252705 (not (= lambda!283993 lambda!283981))))

(declare-fun bs!1252706 () Bool)

(assert (= bs!1252706 (and b!5421984 d!1729662)))

(assert (=> bs!1252706 (not (= lambda!283993 lambda!283989))))

(declare-fun bs!1252707 () Bool)

(assert (= bs!1252707 (and b!5421984 d!1729586)))

(assert (=> bs!1252707 (not (= lambda!283993 lambda!283973))))

(assert (=> bs!1252707 (not (= lambda!283993 lambda!283974))))

(declare-fun bs!1252708 () Bool)

(assert (= bs!1252708 (and b!5421984 b!5421297)))

(assert (=> bs!1252708 (not (= lambda!283993 lambda!283936))))

(declare-fun bs!1252709 () Bool)

(assert (= bs!1252709 (and b!5421984 b!5420758)))

(assert (=> bs!1252709 (not (= lambda!283993 lambda!283878))))

(declare-fun bs!1252710 () Bool)

(assert (= bs!1252710 (and b!5421984 d!1729594)))

(assert (=> bs!1252710 (not (= lambda!283993 lambda!283975))))

(declare-fun bs!1252711 () Bool)

(assert (= bs!1252711 (and b!5421984 d!1729574)))

(assert (=> bs!1252711 (not (= lambda!283993 lambda!283964))))

(declare-fun bs!1252712 () Bool)

(assert (= bs!1252712 (and b!5421984 d!1729402)))

(assert (=> bs!1252712 (not (= lambda!283993 lambda!283940))))

(assert (=> bs!1252704 (= (= (regOne!30922 r!7292) lt!2210852) (= lambda!283993 lambda!283908))))

(declare-fun bs!1252713 () Bool)

(assert (= bs!1252713 (and b!5421984 b!5420765)))

(assert (=> bs!1252713 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 r!7292) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) lt!2210832)) (= lambda!283993 lambda!283886))))

(declare-fun bs!1252714 () Bool)

(assert (= bs!1252714 (and b!5421984 b!5421855)))

(assert (=> bs!1252714 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 r!7292) (regOne!30922 lt!2210852)) (= (regTwo!30922 r!7292) (regTwo!30922 lt!2210852))) (= lambda!283993 lambda!283982))))

(assert (=> bs!1252709 (= lambda!283993 lambda!283879)))

(declare-fun bs!1252715 () Bool)

(assert (= bs!1252715 (and b!5421984 d!1729664)))

(assert (=> bs!1252715 (not (= lambda!283993 lambda!283990))))

(assert (=> bs!1252713 (not (= lambda!283993 lambda!283885))))

(assert (=> bs!1252715 (= lambda!283993 lambda!283991)))

(assert (=> bs!1252713 (not (= lambda!283993 lambda!283887))))

(declare-fun bs!1252716 () Bool)

(assert (= bs!1252716 (and b!5421984 b!5420770)))

(assert (=> bs!1252716 (= (= (regOne!30922 r!7292) lt!2210852) (= lambda!283993 lambda!283884))))

(declare-fun bs!1252717 () Bool)

(assert (= bs!1252717 (and b!5421984 b!5421986)))

(assert (=> bs!1252717 (not (= lambda!283993 lambda!283992))))

(assert (=> bs!1252716 (not (= lambda!283993 lambda!283883))))

(assert (=> bs!1252710 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 r!7292) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 r!7292) lt!2210832)) (= lambda!283993 lambda!283976))))

(declare-fun bs!1252718 () Bool)

(assert (= bs!1252718 (and b!5421984 b!5421295)))

(assert (=> bs!1252718 (= (and (= (regOne!30922 r!7292) (regOne!30922 lt!2210816)) (= (regTwo!30922 r!7292) (regTwo!30922 lt!2210816))) (= lambda!283993 lambda!283937))))

(assert (=> b!5421984 true))

(assert (=> b!5421984 true))

(declare-fun b!5421982 () Bool)

(declare-fun e!3360273 () Bool)

(assert (=> b!5421982 (= e!3360273 (= s!2326 (Cons!61790 (c!945345 r!7292) Nil!61790)))))

(declare-fun b!5421983 () Bool)

(declare-fun res!2306884 () Bool)

(declare-fun e!3360274 () Bool)

(assert (=> b!5421983 (=> res!2306884 e!3360274)))

(declare-fun call!388056 () Bool)

(assert (=> b!5421983 (= res!2306884 call!388056)))

(declare-fun e!3360271 () Bool)

(assert (=> b!5421983 (= e!3360271 e!3360274)))

(declare-fun call!388057 () Bool)

(assert (=> b!5421984 (= e!3360271 call!388057)))

(declare-fun b!5421985 () Bool)

(declare-fun c!945670 () Bool)

(assert (=> b!5421985 (= c!945670 ((_ is Union!15205) r!7292))))

(declare-fun e!3360276 () Bool)

(assert (=> b!5421985 (= e!3360273 e!3360276)))

(assert (=> b!5421986 (= e!3360274 call!388057)))

(declare-fun b!5421987 () Bool)

(declare-fun e!3360270 () Bool)

(declare-fun e!3360272 () Bool)

(assert (=> b!5421987 (= e!3360270 e!3360272)))

(declare-fun res!2306886 () Bool)

(assert (=> b!5421987 (= res!2306886 (not ((_ is EmptyLang!15205) r!7292)))))

(assert (=> b!5421987 (=> (not res!2306886) (not e!3360272))))

(declare-fun b!5421988 () Bool)

(assert (=> b!5421988 (= e!3360270 call!388056)))

(declare-fun d!1729668 () Bool)

(declare-fun c!945672 () Bool)

(assert (=> d!1729668 (= c!945672 ((_ is EmptyExpr!15205) r!7292))))

(assert (=> d!1729668 (= (matchRSpec!2308 r!7292 s!2326) e!3360270)))

(declare-fun b!5421989 () Bool)

(declare-fun e!3360275 () Bool)

(assert (=> b!5421989 (= e!3360275 (matchRSpec!2308 (regTwo!30923 r!7292) s!2326))))

(declare-fun b!5421990 () Bool)

(assert (=> b!5421990 (= e!3360276 e!3360271)))

(declare-fun c!945669 () Bool)

(assert (=> b!5421990 (= c!945669 ((_ is Star!15205) r!7292))))

(declare-fun bm!388051 () Bool)

(assert (=> bm!388051 (= call!388056 (isEmpty!33791 s!2326))))

(declare-fun bm!388052 () Bool)

(assert (=> bm!388052 (= call!388057 (Exists!2386 (ite c!945669 lambda!283992 lambda!283993)))))

(declare-fun b!5421991 () Bool)

(assert (=> b!5421991 (= e!3360276 e!3360275)))

(declare-fun res!2306885 () Bool)

(assert (=> b!5421991 (= res!2306885 (matchRSpec!2308 (regOne!30923 r!7292) s!2326))))

(assert (=> b!5421991 (=> res!2306885 e!3360275)))

(declare-fun b!5421992 () Bool)

(declare-fun c!945671 () Bool)

(assert (=> b!5421992 (= c!945671 ((_ is ElementMatch!15205) r!7292))))

(assert (=> b!5421992 (= e!3360272 e!3360273)))

(assert (= (and d!1729668 c!945672) b!5421988))

(assert (= (and d!1729668 (not c!945672)) b!5421987))

(assert (= (and b!5421987 res!2306886) b!5421992))

(assert (= (and b!5421992 c!945671) b!5421982))

(assert (= (and b!5421992 (not c!945671)) b!5421985))

(assert (= (and b!5421985 c!945670) b!5421991))

(assert (= (and b!5421985 (not c!945670)) b!5421990))

(assert (= (and b!5421991 (not res!2306885)) b!5421989))

(assert (= (and b!5421990 c!945669) b!5421983))

(assert (= (and b!5421990 (not c!945669)) b!5421984))

(assert (= (and b!5421983 (not res!2306884)) b!5421986))

(assert (= (or b!5421986 b!5421984) bm!388052))

(assert (= (or b!5421988 b!5421983) bm!388051))

(declare-fun m!6446186 () Bool)

(assert (=> b!5421989 m!6446186))

(assert (=> bm!388051 m!6445118))

(declare-fun m!6446188 () Bool)

(assert (=> bm!388052 m!6446188))

(declare-fun m!6446190 () Bool)

(assert (=> b!5421991 m!6446190))

(assert (=> b!5420751 d!1729668))

(declare-fun b!5421993 () Bool)

(declare-fun res!2306894 () Bool)

(declare-fun e!3360279 () Bool)

(assert (=> b!5421993 (=> res!2306894 e!3360279)))

(assert (=> b!5421993 (= res!2306894 (not (isEmpty!33791 (tail!10727 s!2326))))))

(declare-fun b!5421994 () Bool)

(declare-fun e!3360278 () Bool)

(assert (=> b!5421994 (= e!3360278 (matchR!7390 (derivativeStep!4277 r!7292 (head!11630 s!2326)) (tail!10727 s!2326)))))

(declare-fun d!1729670 () Bool)

(declare-fun e!3360277 () Bool)

(assert (=> d!1729670 e!3360277))

(declare-fun c!945675 () Bool)

(assert (=> d!1729670 (= c!945675 ((_ is EmptyExpr!15205) r!7292))))

(declare-fun lt!2211107 () Bool)

(assert (=> d!1729670 (= lt!2211107 e!3360278)))

(declare-fun c!945673 () Bool)

(assert (=> d!1729670 (= c!945673 (isEmpty!33791 s!2326))))

(assert (=> d!1729670 (validRegex!6941 r!7292)))

(assert (=> d!1729670 (= (matchR!7390 r!7292 s!2326) lt!2211107)))

(declare-fun b!5421995 () Bool)

(declare-fun e!3360282 () Bool)

(assert (=> b!5421995 (= e!3360282 e!3360279)))

(declare-fun res!2306888 () Bool)

(assert (=> b!5421995 (=> res!2306888 e!3360279)))

(declare-fun call!388058 () Bool)

(assert (=> b!5421995 (= res!2306888 call!388058)))

(declare-fun b!5421996 () Bool)

(declare-fun e!3360283 () Bool)

(assert (=> b!5421996 (= e!3360283 (not lt!2211107))))

(declare-fun b!5421997 () Bool)

(declare-fun res!2306889 () Bool)

(declare-fun e!3360280 () Bool)

(assert (=> b!5421997 (=> res!2306889 e!3360280)))

(declare-fun e!3360281 () Bool)

(assert (=> b!5421997 (= res!2306889 e!3360281)))

(declare-fun res!2306891 () Bool)

(assert (=> b!5421997 (=> (not res!2306891) (not e!3360281))))

(assert (=> b!5421997 (= res!2306891 lt!2211107)))

(declare-fun b!5421998 () Bool)

(declare-fun res!2306890 () Bool)

(assert (=> b!5421998 (=> res!2306890 e!3360280)))

(assert (=> b!5421998 (= res!2306890 (not ((_ is ElementMatch!15205) r!7292)))))

(assert (=> b!5421998 (= e!3360283 e!3360280)))

(declare-fun b!5421999 () Bool)

(assert (=> b!5421999 (= e!3360278 (nullable!5374 r!7292))))

(declare-fun b!5422000 () Bool)

(assert (=> b!5422000 (= e!3360281 (= (head!11630 s!2326) (c!945345 r!7292)))))

(declare-fun b!5422001 () Bool)

(assert (=> b!5422001 (= e!3360280 e!3360282)))

(declare-fun res!2306887 () Bool)

(assert (=> b!5422001 (=> (not res!2306887) (not e!3360282))))

(assert (=> b!5422001 (= res!2306887 (not lt!2211107))))

(declare-fun b!5422002 () Bool)

(assert (=> b!5422002 (= e!3360277 e!3360283)))

(declare-fun c!945674 () Bool)

(assert (=> b!5422002 (= c!945674 ((_ is EmptyLang!15205) r!7292))))

(declare-fun b!5422003 () Bool)

(assert (=> b!5422003 (= e!3360279 (not (= (head!11630 s!2326) (c!945345 r!7292))))))

(declare-fun b!5422004 () Bool)

(assert (=> b!5422004 (= e!3360277 (= lt!2211107 call!388058))))

(declare-fun b!5422005 () Bool)

(declare-fun res!2306892 () Bool)

(assert (=> b!5422005 (=> (not res!2306892) (not e!3360281))))

(assert (=> b!5422005 (= res!2306892 (not call!388058))))

(declare-fun bm!388053 () Bool)

(assert (=> bm!388053 (= call!388058 (isEmpty!33791 s!2326))))

(declare-fun b!5422006 () Bool)

(declare-fun res!2306893 () Bool)

(assert (=> b!5422006 (=> (not res!2306893) (not e!3360281))))

(assert (=> b!5422006 (= res!2306893 (isEmpty!33791 (tail!10727 s!2326)))))

(assert (= (and d!1729670 c!945673) b!5421999))

(assert (= (and d!1729670 (not c!945673)) b!5421994))

(assert (= (and d!1729670 c!945675) b!5422004))

(assert (= (and d!1729670 (not c!945675)) b!5422002))

(assert (= (and b!5422002 c!945674) b!5421996))

(assert (= (and b!5422002 (not c!945674)) b!5421998))

(assert (= (and b!5421998 (not res!2306890)) b!5421997))

(assert (= (and b!5421997 res!2306891) b!5422005))

(assert (= (and b!5422005 res!2306892) b!5422006))

(assert (= (and b!5422006 res!2306893) b!5422000))

(assert (= (and b!5421997 (not res!2306889)) b!5422001))

(assert (= (and b!5422001 res!2306887) b!5421995))

(assert (= (and b!5421995 (not res!2306888)) b!5421993))

(assert (= (and b!5421993 (not res!2306894)) b!5422003))

(assert (= (or b!5422004 b!5422005 b!5421995) bm!388053))

(declare-fun m!6446192 () Bool)

(assert (=> b!5421999 m!6446192))

(assert (=> b!5422006 m!6445108))

(assert (=> b!5422006 m!6445108))

(assert (=> b!5422006 m!6445110))

(assert (=> b!5421994 m!6445112))

(assert (=> b!5421994 m!6445112))

(declare-fun m!6446194 () Bool)

(assert (=> b!5421994 m!6446194))

(assert (=> b!5421994 m!6445108))

(assert (=> b!5421994 m!6446194))

(assert (=> b!5421994 m!6445108))

(declare-fun m!6446196 () Bool)

(assert (=> b!5421994 m!6446196))

(assert (=> d!1729670 m!6445118))

(assert (=> d!1729670 m!6444740))

(assert (=> b!5421993 m!6445108))

(assert (=> b!5421993 m!6445108))

(assert (=> b!5421993 m!6445110))

(assert (=> b!5422003 m!6445112))

(assert (=> b!5422000 m!6445112))

(assert (=> bm!388053 m!6445118))

(assert (=> b!5420751 d!1729670))

(declare-fun d!1729672 () Bool)

(assert (=> d!1729672 (= (matchR!7390 r!7292 s!2326) (matchRSpec!2308 r!7292 s!2326))))

(declare-fun lt!2211108 () Unit!154342)

(assert (=> d!1729672 (= lt!2211108 (choose!41072 r!7292 s!2326))))

(assert (=> d!1729672 (validRegex!6941 r!7292)))

(assert (=> d!1729672 (= (mainMatchTheorem!2308 r!7292 s!2326) lt!2211108)))

(declare-fun bs!1252719 () Bool)

(assert (= bs!1252719 d!1729672))

(assert (=> bs!1252719 m!6444732))

(assert (=> bs!1252719 m!6444730))

(declare-fun m!6446198 () Bool)

(assert (=> bs!1252719 m!6446198))

(assert (=> bs!1252719 m!6444740))

(assert (=> b!5420751 d!1729672))

(declare-fun d!1729674 () Bool)

(declare-fun lt!2211109 () Regex!15205)

(assert (=> d!1729674 (validRegex!6941 lt!2211109)))

(assert (=> d!1729674 (= lt!2211109 (generalisedUnion!1134 (unfocusZipperList!647 zl!343)))))

(assert (=> d!1729674 (= (unfocusZipper!947 zl!343) lt!2211109)))

(declare-fun bs!1252720 () Bool)

(assert (= bs!1252720 d!1729674))

(declare-fun m!6446200 () Bool)

(assert (=> bs!1252720 m!6446200))

(assert (=> bs!1252720 m!6444726))

(assert (=> bs!1252720 m!6444726))

(assert (=> bs!1252720 m!6444728))

(assert (=> b!5420773 d!1729674))

(declare-fun b!5422007 () Bool)

(declare-fun res!2306902 () Bool)

(declare-fun e!3360286 () Bool)

(assert (=> b!5422007 (=> res!2306902 e!3360286)))

(assert (=> b!5422007 (= res!2306902 (not (isEmpty!33791 (tail!10727 (_2!35707 lt!2210866)))))))

(declare-fun b!5422008 () Bool)

(declare-fun e!3360285 () Bool)

(assert (=> b!5422008 (= e!3360285 (matchR!7390 (derivativeStep!4277 lt!2210832 (head!11630 (_2!35707 lt!2210866))) (tail!10727 (_2!35707 lt!2210866))))))

(declare-fun d!1729676 () Bool)

(declare-fun e!3360284 () Bool)

(assert (=> d!1729676 e!3360284))

(declare-fun c!945678 () Bool)

(assert (=> d!1729676 (= c!945678 ((_ is EmptyExpr!15205) lt!2210832))))

(declare-fun lt!2211110 () Bool)

(assert (=> d!1729676 (= lt!2211110 e!3360285)))

(declare-fun c!945676 () Bool)

(assert (=> d!1729676 (= c!945676 (isEmpty!33791 (_2!35707 lt!2210866)))))

(assert (=> d!1729676 (validRegex!6941 lt!2210832)))

(assert (=> d!1729676 (= (matchR!7390 lt!2210832 (_2!35707 lt!2210866)) lt!2211110)))

(declare-fun b!5422009 () Bool)

(declare-fun e!3360289 () Bool)

(assert (=> b!5422009 (= e!3360289 e!3360286)))

(declare-fun res!2306896 () Bool)

(assert (=> b!5422009 (=> res!2306896 e!3360286)))

(declare-fun call!388059 () Bool)

(assert (=> b!5422009 (= res!2306896 call!388059)))

(declare-fun b!5422010 () Bool)

(declare-fun e!3360290 () Bool)

(assert (=> b!5422010 (= e!3360290 (not lt!2211110))))

(declare-fun b!5422011 () Bool)

(declare-fun res!2306897 () Bool)

(declare-fun e!3360287 () Bool)

(assert (=> b!5422011 (=> res!2306897 e!3360287)))

(declare-fun e!3360288 () Bool)

(assert (=> b!5422011 (= res!2306897 e!3360288)))

(declare-fun res!2306899 () Bool)

(assert (=> b!5422011 (=> (not res!2306899) (not e!3360288))))

(assert (=> b!5422011 (= res!2306899 lt!2211110)))

(declare-fun b!5422012 () Bool)

(declare-fun res!2306898 () Bool)

(assert (=> b!5422012 (=> res!2306898 e!3360287)))

(assert (=> b!5422012 (= res!2306898 (not ((_ is ElementMatch!15205) lt!2210832)))))

(assert (=> b!5422012 (= e!3360290 e!3360287)))

(declare-fun b!5422013 () Bool)

(assert (=> b!5422013 (= e!3360285 (nullable!5374 lt!2210832))))

(declare-fun b!5422014 () Bool)

(assert (=> b!5422014 (= e!3360288 (= (head!11630 (_2!35707 lt!2210866)) (c!945345 lt!2210832)))))

(declare-fun b!5422015 () Bool)

(assert (=> b!5422015 (= e!3360287 e!3360289)))

(declare-fun res!2306895 () Bool)

(assert (=> b!5422015 (=> (not res!2306895) (not e!3360289))))

(assert (=> b!5422015 (= res!2306895 (not lt!2211110))))

(declare-fun b!5422016 () Bool)

(assert (=> b!5422016 (= e!3360284 e!3360290)))

(declare-fun c!945677 () Bool)

(assert (=> b!5422016 (= c!945677 ((_ is EmptyLang!15205) lt!2210832))))

(declare-fun b!5422017 () Bool)

(assert (=> b!5422017 (= e!3360286 (not (= (head!11630 (_2!35707 lt!2210866)) (c!945345 lt!2210832))))))

(declare-fun b!5422018 () Bool)

(assert (=> b!5422018 (= e!3360284 (= lt!2211110 call!388059))))

(declare-fun b!5422019 () Bool)

(declare-fun res!2306900 () Bool)

(assert (=> b!5422019 (=> (not res!2306900) (not e!3360288))))

(assert (=> b!5422019 (= res!2306900 (not call!388059))))

(declare-fun bm!388054 () Bool)

(assert (=> bm!388054 (= call!388059 (isEmpty!33791 (_2!35707 lt!2210866)))))

(declare-fun b!5422020 () Bool)

(declare-fun res!2306901 () Bool)

(assert (=> b!5422020 (=> (not res!2306901) (not e!3360288))))

(assert (=> b!5422020 (= res!2306901 (isEmpty!33791 (tail!10727 (_2!35707 lt!2210866))))))

(assert (= (and d!1729676 c!945676) b!5422013))

(assert (= (and d!1729676 (not c!945676)) b!5422008))

(assert (= (and d!1729676 c!945678) b!5422018))

(assert (= (and d!1729676 (not c!945678)) b!5422016))

(assert (= (and b!5422016 c!945677) b!5422010))

(assert (= (and b!5422016 (not c!945677)) b!5422012))

(assert (= (and b!5422012 (not res!2306898)) b!5422011))

(assert (= (and b!5422011 res!2306899) b!5422019))

(assert (= (and b!5422019 res!2306900) b!5422020))

(assert (= (and b!5422020 res!2306901) b!5422014))

(assert (= (and b!5422011 (not res!2306897)) b!5422015))

(assert (= (and b!5422015 res!2306895) b!5422009))

(assert (= (and b!5422009 (not res!2306896)) b!5422007))

(assert (= (and b!5422007 (not res!2306902)) b!5422017))

(assert (= (or b!5422018 b!5422019 b!5422009) bm!388054))

(assert (=> b!5422013 m!6445696))

(declare-fun m!6446202 () Bool)

(assert (=> b!5422020 m!6446202))

(assert (=> b!5422020 m!6446202))

(declare-fun m!6446204 () Bool)

(assert (=> b!5422020 m!6446204))

(declare-fun m!6446206 () Bool)

(assert (=> b!5422008 m!6446206))

(assert (=> b!5422008 m!6446206))

(declare-fun m!6446208 () Bool)

(assert (=> b!5422008 m!6446208))

(assert (=> b!5422008 m!6446202))

(assert (=> b!5422008 m!6446208))

(assert (=> b!5422008 m!6446202))

(declare-fun m!6446210 () Bool)

(assert (=> b!5422008 m!6446210))

(declare-fun m!6446212 () Bool)

(assert (=> d!1729676 m!6446212))

(assert (=> d!1729676 m!6444756))

(assert (=> b!5422007 m!6446202))

(assert (=> b!5422007 m!6446202))

(assert (=> b!5422007 m!6446204))

(assert (=> b!5422017 m!6446206))

(assert (=> b!5422014 m!6446206))

(assert (=> bm!388054 m!6446212))

(assert (=> b!5420750 d!1729676))

(assert (=> b!5420731 d!1729538))

(declare-fun d!1729678 () Bool)

(declare-fun c!945679 () Bool)

(assert (=> d!1729678 (= c!945679 (isEmpty!33791 (_2!35707 lt!2210826)))))

(declare-fun e!3360291 () Bool)

(assert (=> d!1729678 (= (matchZipper!1449 lt!2210868 (_2!35707 lt!2210826)) e!3360291)))

(declare-fun b!5422021 () Bool)

(assert (=> b!5422021 (= e!3360291 (nullableZipper!1455 lt!2210868))))

(declare-fun b!5422022 () Bool)

(assert (=> b!5422022 (= e!3360291 (matchZipper!1449 (derivationStepZipper!1444 lt!2210868 (head!11630 (_2!35707 lt!2210826))) (tail!10727 (_2!35707 lt!2210826))))))

(assert (= (and d!1729678 c!945679) b!5422021))

(assert (= (and d!1729678 (not c!945679)) b!5422022))

(assert (=> d!1729678 m!6445286))

(declare-fun m!6446214 () Bool)

(assert (=> b!5422021 m!6446214))

(assert (=> b!5422022 m!6445278))

(assert (=> b!5422022 m!6445278))

(declare-fun m!6446216 () Bool)

(assert (=> b!5422022 m!6446216))

(assert (=> b!5422022 m!6445272))

(assert (=> b!5422022 m!6446216))

(assert (=> b!5422022 m!6445272))

(declare-fun m!6446218 () Bool)

(assert (=> b!5422022 m!6446218))

(assert (=> b!5420734 d!1729678))

(declare-fun bs!1252721 () Bool)

(declare-fun b!5422027 () Bool)

(assert (= bs!1252721 (and b!5422027 d!1729290)))

(declare-fun lambda!283994 () Int)

(assert (=> bs!1252721 (not (= lambda!283994 lambda!283907))))

(declare-fun bs!1252722 () Bool)

(assert (= bs!1252722 (and b!5422027 d!1729662)))

(assert (=> bs!1252722 (not (= lambda!283994 lambda!283989))))

(declare-fun bs!1252723 () Bool)

(assert (= bs!1252723 (and b!5422027 d!1729586)))

(assert (=> bs!1252723 (not (= lambda!283994 lambda!283973))))

(assert (=> bs!1252723 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (reg!15534 lt!2210839) (reg!15534 (regOne!30922 r!7292))) (= lt!2210839 (Star!15205 (reg!15534 (regOne!30922 r!7292))))) (= lambda!283994 lambda!283974))))

(declare-fun bs!1252724 () Bool)

(assert (= bs!1252724 (and b!5422027 b!5421297)))

(assert (=> bs!1252724 (= (and (= (reg!15534 lt!2210839) (reg!15534 lt!2210816)) (= lt!2210839 lt!2210816)) (= lambda!283994 lambda!283936))))

(declare-fun bs!1252725 () Bool)

(assert (= bs!1252725 (and b!5422027 b!5420758)))

(assert (=> bs!1252725 (not (= lambda!283994 lambda!283878))))

(declare-fun bs!1252726 () Bool)

(assert (= bs!1252726 (and b!5422027 d!1729594)))

(assert (=> bs!1252726 (not (= lambda!283994 lambda!283975))))

(declare-fun bs!1252727 () Bool)

(assert (= bs!1252727 (and b!5422027 d!1729574)))

(assert (=> bs!1252727 (not (= lambda!283994 lambda!283964))))

(declare-fun bs!1252728 () Bool)

(assert (= bs!1252728 (and b!5422027 d!1729402)))

(assert (=> bs!1252728 (not (= lambda!283994 lambda!283940))))

(assert (=> bs!1252721 (not (= lambda!283994 lambda!283908))))

(declare-fun bs!1252729 () Bool)

(assert (= bs!1252729 (and b!5422027 b!5421984)))

(assert (=> bs!1252729 (not (= lambda!283994 lambda!283993))))

(declare-fun bs!1252730 () Bool)

(assert (= bs!1252730 (and b!5422027 b!5421857)))

(assert (=> bs!1252730 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (reg!15534 lt!2210839) (reg!15534 lt!2210852)) (= lt!2210839 lt!2210852)) (= lambda!283994 lambda!283981))))

(declare-fun bs!1252731 () Bool)

(assert (= bs!1252731 (and b!5422027 b!5420765)))

(assert (=> bs!1252731 (not (= lambda!283994 lambda!283886))))

(declare-fun bs!1252732 () Bool)

(assert (= bs!1252732 (and b!5422027 b!5421855)))

(assert (=> bs!1252732 (not (= lambda!283994 lambda!283982))))

(assert (=> bs!1252725 (not (= lambda!283994 lambda!283879))))

(declare-fun bs!1252733 () Bool)

(assert (= bs!1252733 (and b!5422027 d!1729664)))

(assert (=> bs!1252733 (not (= lambda!283994 lambda!283990))))

(assert (=> bs!1252731 (not (= lambda!283994 lambda!283885))))

(assert (=> bs!1252733 (not (= lambda!283994 lambda!283991))))

(assert (=> bs!1252731 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (reg!15534 lt!2210839) (reg!15534 (regOne!30922 r!7292))) (= lt!2210839 lt!2210832)) (= lambda!283994 lambda!283887))))

(declare-fun bs!1252734 () Bool)

(assert (= bs!1252734 (and b!5422027 b!5420770)))

(assert (=> bs!1252734 (not (= lambda!283994 lambda!283884))))

(declare-fun bs!1252735 () Bool)

(assert (= bs!1252735 (and b!5422027 b!5421986)))

(assert (=> bs!1252735 (= (and (= (reg!15534 lt!2210839) (reg!15534 r!7292)) (= lt!2210839 r!7292)) (= lambda!283994 lambda!283992))))

(assert (=> bs!1252734 (not (= lambda!283994 lambda!283883))))

(assert (=> bs!1252726 (not (= lambda!283994 lambda!283976))))

(declare-fun bs!1252736 () Bool)

(assert (= bs!1252736 (and b!5422027 b!5421295)))

(assert (=> bs!1252736 (not (= lambda!283994 lambda!283937))))

(assert (=> b!5422027 true))

(assert (=> b!5422027 true))

(declare-fun bs!1252737 () Bool)

(declare-fun b!5422025 () Bool)

(assert (= bs!1252737 (and b!5422025 d!1729290)))

(declare-fun lambda!283995 () Int)

(assert (=> bs!1252737 (not (= lambda!283995 lambda!283907))))

(declare-fun bs!1252738 () Bool)

(assert (= bs!1252738 (and b!5422025 d!1729662)))

(assert (=> bs!1252738 (not (= lambda!283995 lambda!283989))))

(declare-fun bs!1252739 () Bool)

(assert (= bs!1252739 (and b!5422025 b!5422027)))

(assert (=> bs!1252739 (not (= lambda!283995 lambda!283994))))

(declare-fun bs!1252740 () Bool)

(assert (= bs!1252740 (and b!5422025 d!1729586)))

(assert (=> bs!1252740 (not (= lambda!283995 lambda!283973))))

(assert (=> bs!1252740 (not (= lambda!283995 lambda!283974))))

(declare-fun bs!1252741 () Bool)

(assert (= bs!1252741 (and b!5422025 b!5421297)))

(assert (=> bs!1252741 (not (= lambda!283995 lambda!283936))))

(declare-fun bs!1252742 () Bool)

(assert (= bs!1252742 (and b!5422025 b!5420758)))

(assert (=> bs!1252742 (not (= lambda!283995 lambda!283878))))

(declare-fun bs!1252743 () Bool)

(assert (= bs!1252743 (and b!5422025 d!1729594)))

(assert (=> bs!1252743 (not (= lambda!283995 lambda!283975))))

(declare-fun bs!1252744 () Bool)

(assert (= bs!1252744 (and b!5422025 d!1729574)))

(assert (=> bs!1252744 (not (= lambda!283995 lambda!283964))))

(declare-fun bs!1252745 () Bool)

(assert (= bs!1252745 (and b!5422025 d!1729402)))

(assert (=> bs!1252745 (not (= lambda!283995 lambda!283940))))

(assert (=> bs!1252737 (= (and (= (regOne!30922 lt!2210839) lt!2210852) (= (regTwo!30922 lt!2210839) (regTwo!30922 r!7292))) (= lambda!283995 lambda!283908))))

(declare-fun bs!1252746 () Bool)

(assert (= bs!1252746 (and b!5422025 b!5421984)))

(assert (=> bs!1252746 (= (and (= (regOne!30922 lt!2210839) (regOne!30922 r!7292)) (= (regTwo!30922 lt!2210839) (regTwo!30922 r!7292))) (= lambda!283995 lambda!283993))))

(declare-fun bs!1252747 () Bool)

(assert (= bs!1252747 (and b!5422025 b!5421857)))

(assert (=> bs!1252747 (not (= lambda!283995 lambda!283981))))

(declare-fun bs!1252748 () Bool)

(assert (= bs!1252748 (and b!5422025 b!5420765)))

(assert (=> bs!1252748 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 lt!2210839) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 lt!2210839) lt!2210832)) (= lambda!283995 lambda!283886))))

(declare-fun bs!1252749 () Bool)

(assert (= bs!1252749 (and b!5422025 b!5421855)))

(assert (=> bs!1252749 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 lt!2210839) (regOne!30922 lt!2210852)) (= (regTwo!30922 lt!2210839) (regTwo!30922 lt!2210852))) (= lambda!283995 lambda!283982))))

(assert (=> bs!1252742 (= (and (= (regOne!30922 lt!2210839) (regOne!30922 r!7292)) (= (regTwo!30922 lt!2210839) (regTwo!30922 r!7292))) (= lambda!283995 lambda!283879))))

(declare-fun bs!1252750 () Bool)

(assert (= bs!1252750 (and b!5422025 d!1729664)))

(assert (=> bs!1252750 (not (= lambda!283995 lambda!283990))))

(assert (=> bs!1252748 (not (= lambda!283995 lambda!283885))))

(assert (=> bs!1252750 (= (and (= (regOne!30922 lt!2210839) (regOne!30922 r!7292)) (= (regTwo!30922 lt!2210839) (regTwo!30922 r!7292))) (= lambda!283995 lambda!283991))))

(assert (=> bs!1252748 (not (= lambda!283995 lambda!283887))))

(declare-fun bs!1252751 () Bool)

(assert (= bs!1252751 (and b!5422025 b!5420770)))

(assert (=> bs!1252751 (= (and (= (regOne!30922 lt!2210839) lt!2210852) (= (regTwo!30922 lt!2210839) (regTwo!30922 r!7292))) (= lambda!283995 lambda!283884))))

(declare-fun bs!1252752 () Bool)

(assert (= bs!1252752 (and b!5422025 b!5421986)))

(assert (=> bs!1252752 (not (= lambda!283995 lambda!283992))))

(assert (=> bs!1252751 (not (= lambda!283995 lambda!283883))))

(assert (=> bs!1252743 (= (and (= s!2326 (_1!35707 lt!2210854)) (= (regOne!30922 lt!2210839) (reg!15534 (regOne!30922 r!7292))) (= (regTwo!30922 lt!2210839) lt!2210832)) (= lambda!283995 lambda!283976))))

(declare-fun bs!1252753 () Bool)

(assert (= bs!1252753 (and b!5422025 b!5421295)))

(assert (=> bs!1252753 (= (and (= (regOne!30922 lt!2210839) (regOne!30922 lt!2210816)) (= (regTwo!30922 lt!2210839) (regTwo!30922 lt!2210816))) (= lambda!283995 lambda!283937))))

(assert (=> b!5422025 true))

(assert (=> b!5422025 true))

(declare-fun b!5422023 () Bool)

(declare-fun e!3360295 () Bool)

(assert (=> b!5422023 (= e!3360295 (= s!2326 (Cons!61790 (c!945345 lt!2210839) Nil!61790)))))

(declare-fun b!5422024 () Bool)

(declare-fun res!2306903 () Bool)

(declare-fun e!3360296 () Bool)

(assert (=> b!5422024 (=> res!2306903 e!3360296)))

(declare-fun call!388060 () Bool)

(assert (=> b!5422024 (= res!2306903 call!388060)))

(declare-fun e!3360293 () Bool)

(assert (=> b!5422024 (= e!3360293 e!3360296)))

(declare-fun call!388061 () Bool)

(assert (=> b!5422025 (= e!3360293 call!388061)))

(declare-fun b!5422026 () Bool)

(declare-fun c!945681 () Bool)

(assert (=> b!5422026 (= c!945681 ((_ is Union!15205) lt!2210839))))

(declare-fun e!3360298 () Bool)

(assert (=> b!5422026 (= e!3360295 e!3360298)))

(assert (=> b!5422027 (= e!3360296 call!388061)))

(declare-fun b!5422028 () Bool)

(declare-fun e!3360292 () Bool)

(declare-fun e!3360294 () Bool)

(assert (=> b!5422028 (= e!3360292 e!3360294)))

(declare-fun res!2306905 () Bool)

(assert (=> b!5422028 (= res!2306905 (not ((_ is EmptyLang!15205) lt!2210839)))))

(assert (=> b!5422028 (=> (not res!2306905) (not e!3360294))))

(declare-fun b!5422029 () Bool)

(assert (=> b!5422029 (= e!3360292 call!388060)))

(declare-fun d!1729680 () Bool)

(declare-fun c!945683 () Bool)

(assert (=> d!1729680 (= c!945683 ((_ is EmptyExpr!15205) lt!2210839))))

(assert (=> d!1729680 (= (matchRSpec!2308 lt!2210839 s!2326) e!3360292)))

(declare-fun b!5422030 () Bool)

(declare-fun e!3360297 () Bool)

(assert (=> b!5422030 (= e!3360297 (matchRSpec!2308 (regTwo!30923 lt!2210839) s!2326))))

(declare-fun b!5422031 () Bool)

(assert (=> b!5422031 (= e!3360298 e!3360293)))

(declare-fun c!945680 () Bool)

(assert (=> b!5422031 (= c!945680 ((_ is Star!15205) lt!2210839))))

(declare-fun bm!388055 () Bool)

(assert (=> bm!388055 (= call!388060 (isEmpty!33791 s!2326))))

(declare-fun bm!388056 () Bool)

(assert (=> bm!388056 (= call!388061 (Exists!2386 (ite c!945680 lambda!283994 lambda!283995)))))

(declare-fun b!5422032 () Bool)

(assert (=> b!5422032 (= e!3360298 e!3360297)))

(declare-fun res!2306904 () Bool)

(assert (=> b!5422032 (= res!2306904 (matchRSpec!2308 (regOne!30923 lt!2210839) s!2326))))

(assert (=> b!5422032 (=> res!2306904 e!3360297)))

(declare-fun b!5422033 () Bool)

(declare-fun c!945682 () Bool)

(assert (=> b!5422033 (= c!945682 ((_ is ElementMatch!15205) lt!2210839))))

(assert (=> b!5422033 (= e!3360294 e!3360295)))

(assert (= (and d!1729680 c!945683) b!5422029))

(assert (= (and d!1729680 (not c!945683)) b!5422028))

(assert (= (and b!5422028 res!2306905) b!5422033))

(assert (= (and b!5422033 c!945682) b!5422023))

(assert (= (and b!5422033 (not c!945682)) b!5422026))

(assert (= (and b!5422026 c!945681) b!5422032))

(assert (= (and b!5422026 (not c!945681)) b!5422031))

(assert (= (and b!5422032 (not res!2306904)) b!5422030))

(assert (= (and b!5422031 c!945680) b!5422024))

(assert (= (and b!5422031 (not c!945680)) b!5422025))

(assert (= (and b!5422024 (not res!2306903)) b!5422027))

(assert (= (or b!5422027 b!5422025) bm!388056))

(assert (= (or b!5422029 b!5422024) bm!388055))

(declare-fun m!6446220 () Bool)

(assert (=> b!5422030 m!6446220))

(assert (=> bm!388055 m!6445118))

(declare-fun m!6446222 () Bool)

(assert (=> bm!388056 m!6446222))

(declare-fun m!6446224 () Bool)

(assert (=> b!5422032 m!6446224))

(assert (=> b!5420775 d!1729680))

(declare-fun b!5422034 () Bool)

(declare-fun res!2306913 () Bool)

(declare-fun e!3360301 () Bool)

(assert (=> b!5422034 (=> res!2306913 e!3360301)))

(assert (=> b!5422034 (= res!2306913 (not (isEmpty!33791 (tail!10727 s!2326))))))

(declare-fun b!5422035 () Bool)

(declare-fun e!3360300 () Bool)

(assert (=> b!5422035 (= e!3360300 (matchR!7390 (derivativeStep!4277 lt!2210839 (head!11630 s!2326)) (tail!10727 s!2326)))))

(declare-fun d!1729682 () Bool)

(declare-fun e!3360299 () Bool)

(assert (=> d!1729682 e!3360299))

(declare-fun c!945686 () Bool)

(assert (=> d!1729682 (= c!945686 ((_ is EmptyExpr!15205) lt!2210839))))

(declare-fun lt!2211111 () Bool)

(assert (=> d!1729682 (= lt!2211111 e!3360300)))

(declare-fun c!945684 () Bool)

(assert (=> d!1729682 (= c!945684 (isEmpty!33791 s!2326))))

(assert (=> d!1729682 (validRegex!6941 lt!2210839)))

(assert (=> d!1729682 (= (matchR!7390 lt!2210839 s!2326) lt!2211111)))

(declare-fun b!5422036 () Bool)

(declare-fun e!3360304 () Bool)

(assert (=> b!5422036 (= e!3360304 e!3360301)))

(declare-fun res!2306907 () Bool)

(assert (=> b!5422036 (=> res!2306907 e!3360301)))

(declare-fun call!388062 () Bool)

(assert (=> b!5422036 (= res!2306907 call!388062)))

(declare-fun b!5422037 () Bool)

(declare-fun e!3360305 () Bool)

(assert (=> b!5422037 (= e!3360305 (not lt!2211111))))

(declare-fun b!5422038 () Bool)

(declare-fun res!2306908 () Bool)

(declare-fun e!3360302 () Bool)

(assert (=> b!5422038 (=> res!2306908 e!3360302)))

(declare-fun e!3360303 () Bool)

(assert (=> b!5422038 (= res!2306908 e!3360303)))

(declare-fun res!2306910 () Bool)

(assert (=> b!5422038 (=> (not res!2306910) (not e!3360303))))

(assert (=> b!5422038 (= res!2306910 lt!2211111)))

(declare-fun b!5422039 () Bool)

(declare-fun res!2306909 () Bool)

(assert (=> b!5422039 (=> res!2306909 e!3360302)))

(assert (=> b!5422039 (= res!2306909 (not ((_ is ElementMatch!15205) lt!2210839)))))

(assert (=> b!5422039 (= e!3360305 e!3360302)))

(declare-fun b!5422040 () Bool)

(assert (=> b!5422040 (= e!3360300 (nullable!5374 lt!2210839))))

(declare-fun b!5422041 () Bool)

(assert (=> b!5422041 (= e!3360303 (= (head!11630 s!2326) (c!945345 lt!2210839)))))

(declare-fun b!5422042 () Bool)

(assert (=> b!5422042 (= e!3360302 e!3360304)))

(declare-fun res!2306906 () Bool)

(assert (=> b!5422042 (=> (not res!2306906) (not e!3360304))))

(assert (=> b!5422042 (= res!2306906 (not lt!2211111))))

(declare-fun b!5422043 () Bool)

(assert (=> b!5422043 (= e!3360299 e!3360305)))

(declare-fun c!945685 () Bool)

(assert (=> b!5422043 (= c!945685 ((_ is EmptyLang!15205) lt!2210839))))

(declare-fun b!5422044 () Bool)

(assert (=> b!5422044 (= e!3360301 (not (= (head!11630 s!2326) (c!945345 lt!2210839))))))

(declare-fun b!5422045 () Bool)

(assert (=> b!5422045 (= e!3360299 (= lt!2211111 call!388062))))

(declare-fun b!5422046 () Bool)

(declare-fun res!2306911 () Bool)

(assert (=> b!5422046 (=> (not res!2306911) (not e!3360303))))

(assert (=> b!5422046 (= res!2306911 (not call!388062))))

(declare-fun bm!388057 () Bool)

(assert (=> bm!388057 (= call!388062 (isEmpty!33791 s!2326))))

(declare-fun b!5422047 () Bool)

(declare-fun res!2306912 () Bool)

(assert (=> b!5422047 (=> (not res!2306912) (not e!3360303))))

(assert (=> b!5422047 (= res!2306912 (isEmpty!33791 (tail!10727 s!2326)))))

(assert (= (and d!1729682 c!945684) b!5422040))

(assert (= (and d!1729682 (not c!945684)) b!5422035))

(assert (= (and d!1729682 c!945686) b!5422045))

(assert (= (and d!1729682 (not c!945686)) b!5422043))

(assert (= (and b!5422043 c!945685) b!5422037))

(assert (= (and b!5422043 (not c!945685)) b!5422039))

(assert (= (and b!5422039 (not res!2306909)) b!5422038))

(assert (= (and b!5422038 res!2306910) b!5422046))

(assert (= (and b!5422046 res!2306911) b!5422047))

(assert (= (and b!5422047 res!2306912) b!5422041))

(assert (= (and b!5422038 (not res!2306908)) b!5422042))

(assert (= (and b!5422042 res!2306906) b!5422036))

(assert (= (and b!5422036 (not res!2306907)) b!5422034))

(assert (= (and b!5422034 (not res!2306913)) b!5422044))

(assert (= (or b!5422045 b!5422046 b!5422036) bm!388057))

(assert (=> b!5422040 m!6445288))

(assert (=> b!5422047 m!6445108))

(assert (=> b!5422047 m!6445108))

(assert (=> b!5422047 m!6445110))

(assert (=> b!5422035 m!6445112))

(assert (=> b!5422035 m!6445112))

(declare-fun m!6446226 () Bool)

(assert (=> b!5422035 m!6446226))

(assert (=> b!5422035 m!6445108))

(assert (=> b!5422035 m!6446226))

(assert (=> b!5422035 m!6445108))

(declare-fun m!6446228 () Bool)

(assert (=> b!5422035 m!6446228))

(assert (=> d!1729682 m!6445118))

(assert (=> d!1729682 m!6445296))

(assert (=> b!5422034 m!6445108))

(assert (=> b!5422034 m!6445108))

(assert (=> b!5422034 m!6445110))

(assert (=> b!5422044 m!6445112))

(assert (=> b!5422041 m!6445112))

(assert (=> bm!388057 m!6445118))

(assert (=> b!5420775 d!1729682))

(declare-fun d!1729684 () Bool)

(assert (=> d!1729684 (= (matchR!7390 lt!2210839 s!2326) (matchRSpec!2308 lt!2210839 s!2326))))

(declare-fun lt!2211112 () Unit!154342)

(assert (=> d!1729684 (= lt!2211112 (choose!41072 lt!2210839 s!2326))))

(assert (=> d!1729684 (validRegex!6941 lt!2210839)))

(assert (=> d!1729684 (= (mainMatchTheorem!2308 lt!2210839 s!2326) lt!2211112)))

(declare-fun bs!1252754 () Bool)

(assert (= bs!1252754 d!1729684))

(assert (=> bs!1252754 m!6444744))

(assert (=> bs!1252754 m!6444742))

(declare-fun m!6446230 () Bool)

(assert (=> bs!1252754 m!6446230))

(assert (=> bs!1252754 m!6445296))

(assert (=> b!5420775 d!1729684))

(declare-fun bs!1252755 () Bool)

(declare-fun d!1729686 () Bool)

(assert (= bs!1252755 (and d!1729686 d!1729504)))

(declare-fun lambda!283996 () Int)

(assert (=> bs!1252755 (= lambda!283996 lambda!283957)))

(declare-fun bs!1252756 () Bool)

(assert (= bs!1252756 (and d!1729686 d!1729652)))

(assert (=> bs!1252756 (= lambda!283996 lambda!283988)))

(declare-fun bs!1252757 () Bool)

(assert (= bs!1252757 (and d!1729686 d!1729276)))

(assert (=> bs!1252757 (= lambda!283996 lambda!283893)))

(declare-fun bs!1252758 () Bool)

(assert (= bs!1252758 (and d!1729686 b!5420733)))

(assert (=> bs!1252758 (= lambda!283996 lambda!283882)))

(declare-fun bs!1252759 () Bool)

(assert (= bs!1252759 (and d!1729686 d!1729650)))

(assert (=> bs!1252759 (= lambda!283996 lambda!283985)))

(declare-fun bs!1252760 () Bool)

(assert (= bs!1252760 (and d!1729686 d!1729302)))

(assert (=> bs!1252760 (= lambda!283996 lambda!283916)))

(assert (=> d!1729686 (= (inv!81259 (h!68240 zl!343)) (forall!14549 (exprs!5089 (h!68240 zl!343)) lambda!283996))))

(declare-fun bs!1252761 () Bool)

(assert (= bs!1252761 d!1729686))

(declare-fun m!6446232 () Bool)

(assert (=> bs!1252761 m!6446232))

(assert (=> b!5420754 d!1729686))

(declare-fun d!1729688 () Bool)

(declare-fun lt!2211113 () Regex!15205)

(assert (=> d!1729688 (validRegex!6941 lt!2211113)))

(assert (=> d!1729688 (= lt!2211113 (generalisedUnion!1134 (unfocusZipperList!647 (Cons!61792 lt!2210821 Nil!61792))))))

(assert (=> d!1729688 (= (unfocusZipper!947 (Cons!61792 lt!2210821 Nil!61792)) lt!2211113)))

(declare-fun bs!1252762 () Bool)

(assert (= bs!1252762 d!1729688))

(declare-fun m!6446234 () Bool)

(assert (=> bs!1252762 m!6446234))

(declare-fun m!6446236 () Bool)

(assert (=> bs!1252762 m!6446236))

(assert (=> bs!1252762 m!6446236))

(declare-fun m!6446238 () Bool)

(assert (=> bs!1252762 m!6446238))

(assert (=> b!5420735 d!1729688))

(declare-fun d!1729690 () Bool)

(declare-fun choose!41091 ((InoxSet Context!9178) Int) (InoxSet Context!9178))

(assert (=> d!1729690 (= (map!14192 lt!2210818 lambda!283881) (choose!41091 lt!2210818 lambda!283881))))

(declare-fun bs!1252763 () Bool)

(assert (= bs!1252763 d!1729690))

(declare-fun m!6446240 () Bool)

(assert (=> bs!1252763 m!6446240))

(assert (=> b!5420733 d!1729690))

(assert (=> b!5420733 d!1729324))

(assert (=> b!5420733 d!1729360))

(declare-fun d!1729692 () Bool)

(declare-fun dynLambda!24352 (Int Context!9178) Context!9178)

(assert (=> d!1729692 (= (map!14192 lt!2210818 lambda!283881) (store ((as const (Array Context!9178 Bool)) false) (dynLambda!24352 lambda!283881 lt!2210853) true))))

(declare-fun lt!2211116 () Unit!154342)

(declare-fun choose!41092 ((InoxSet Context!9178) Context!9178 Int) Unit!154342)

(assert (=> d!1729692 (= lt!2211116 (choose!41092 lt!2210818 lt!2210853 lambda!283881))))

(assert (=> d!1729692 (= lt!2210818 (store ((as const (Array Context!9178 Bool)) false) lt!2210853 true))))

(assert (=> d!1729692 (= (lemmaMapOnSingletonSet!64 lt!2210818 lt!2210853 lambda!283881) lt!2211116)))

(declare-fun b_lambda!206937 () Bool)

(assert (=> (not b_lambda!206937) (not d!1729692)))

(declare-fun bs!1252764 () Bool)

(assert (= bs!1252764 d!1729692))

(assert (=> bs!1252764 m!6444888))

(assert (=> bs!1252764 m!6444716))

(declare-fun m!6446242 () Bool)

(assert (=> bs!1252764 m!6446242))

(declare-fun m!6446244 () Bool)

(assert (=> bs!1252764 m!6446244))

(assert (=> bs!1252764 m!6446242))

(declare-fun m!6446246 () Bool)

(assert (=> bs!1252764 m!6446246))

(assert (=> b!5420733 d!1729692))

(declare-fun bs!1252765 () Bool)

(declare-fun d!1729694 () Bool)

(assert (= bs!1252765 (and d!1729694 b!5420733)))

(declare-fun lambda!284001 () Int)

(assert (=> bs!1252765 (= (= (exprs!5089 lt!2210810) lt!2210850) (= lambda!284001 lambda!283881))))

(assert (=> d!1729694 true))

(assert (=> d!1729694 (= (appendTo!64 lt!2210818 lt!2210810) (map!14192 lt!2210818 lambda!284001))))

(declare-fun bs!1252766 () Bool)

(assert (= bs!1252766 d!1729694))

(declare-fun m!6446248 () Bool)

(assert (=> bs!1252766 m!6446248))

(assert (=> b!5420733 d!1729694))

(declare-fun d!1729696 () Bool)

(assert (=> d!1729696 (= (isEmpty!33789 (t!375138 (exprs!5089 (h!68240 zl!343)))) ((_ is Nil!61791) (t!375138 (exprs!5089 (h!68240 zl!343)))))))

(assert (=> b!5420774 d!1729696))

(declare-fun d!1729698 () Bool)

(declare-fun lt!2211119 () Regex!15205)

(assert (=> d!1729698 (validRegex!6941 lt!2211119)))

(assert (=> d!1729698 (= lt!2211119 (generalisedUnion!1134 (unfocusZipperList!647 lt!2210803)))))

(assert (=> d!1729698 (= (unfocusZipper!947 lt!2210803) lt!2211119)))

(declare-fun bs!1252767 () Bool)

(assert (= bs!1252767 d!1729698))

(declare-fun m!6446250 () Bool)

(assert (=> bs!1252767 m!6446250))

(declare-fun m!6446252 () Bool)

(assert (=> bs!1252767 m!6446252))

(assert (=> bs!1252767 m!6446252))

(declare-fun m!6446254 () Bool)

(assert (=> bs!1252767 m!6446254))

(assert (=> b!5420753 d!1729698))

(declare-fun b!5422060 () Bool)

(declare-fun e!3360308 () Bool)

(assert (=> b!5422060 (= e!3360308 tp_is_empty!39663)))

(declare-fun b!5422063 () Bool)

(declare-fun tp!1496860 () Bool)

(declare-fun tp!1496858 () Bool)

(assert (=> b!5422063 (= e!3360308 (and tp!1496860 tp!1496858))))

(assert (=> b!5420756 (= tp!1496786 e!3360308)))

(declare-fun b!5422062 () Bool)

(declare-fun tp!1496861 () Bool)

(assert (=> b!5422062 (= e!3360308 tp!1496861)))

(declare-fun b!5422061 () Bool)

(declare-fun tp!1496862 () Bool)

(declare-fun tp!1496859 () Bool)

(assert (=> b!5422061 (= e!3360308 (and tp!1496862 tp!1496859))))

(assert (= (and b!5420756 ((_ is ElementMatch!15205) (regOne!30922 r!7292))) b!5422060))

(assert (= (and b!5420756 ((_ is Concat!24050) (regOne!30922 r!7292))) b!5422061))

(assert (= (and b!5420756 ((_ is Star!15205) (regOne!30922 r!7292))) b!5422062))

(assert (= (and b!5420756 ((_ is Union!15205) (regOne!30922 r!7292))) b!5422063))

(declare-fun b!5422064 () Bool)

(declare-fun e!3360309 () Bool)

(assert (=> b!5422064 (= e!3360309 tp_is_empty!39663)))

(declare-fun b!5422067 () Bool)

(declare-fun tp!1496865 () Bool)

(declare-fun tp!1496863 () Bool)

(assert (=> b!5422067 (= e!3360309 (and tp!1496865 tp!1496863))))

(assert (=> b!5420756 (= tp!1496784 e!3360309)))

(declare-fun b!5422066 () Bool)

(declare-fun tp!1496866 () Bool)

(assert (=> b!5422066 (= e!3360309 tp!1496866)))

(declare-fun b!5422065 () Bool)

(declare-fun tp!1496867 () Bool)

(declare-fun tp!1496864 () Bool)

(assert (=> b!5422065 (= e!3360309 (and tp!1496867 tp!1496864))))

(assert (= (and b!5420756 ((_ is ElementMatch!15205) (regTwo!30922 r!7292))) b!5422064))

(assert (= (and b!5420756 ((_ is Concat!24050) (regTwo!30922 r!7292))) b!5422065))

(assert (= (and b!5420756 ((_ is Star!15205) (regTwo!30922 r!7292))) b!5422066))

(assert (= (and b!5420756 ((_ is Union!15205) (regTwo!30922 r!7292))) b!5422067))

(declare-fun b!5422068 () Bool)

(declare-fun e!3360310 () Bool)

(assert (=> b!5422068 (= e!3360310 tp_is_empty!39663)))

(declare-fun b!5422071 () Bool)

(declare-fun tp!1496870 () Bool)

(declare-fun tp!1496868 () Bool)

(assert (=> b!5422071 (= e!3360310 (and tp!1496870 tp!1496868))))

(assert (=> b!5420772 (= tp!1496789 e!3360310)))

(declare-fun b!5422070 () Bool)

(declare-fun tp!1496871 () Bool)

(assert (=> b!5422070 (= e!3360310 tp!1496871)))

(declare-fun b!5422069 () Bool)

(declare-fun tp!1496872 () Bool)

(declare-fun tp!1496869 () Bool)

(assert (=> b!5422069 (= e!3360310 (and tp!1496872 tp!1496869))))

(assert (= (and b!5420772 ((_ is ElementMatch!15205) (reg!15534 r!7292))) b!5422068))

(assert (= (and b!5420772 ((_ is Concat!24050) (reg!15534 r!7292))) b!5422069))

(assert (= (and b!5420772 ((_ is Star!15205) (reg!15534 r!7292))) b!5422070))

(assert (= (and b!5420772 ((_ is Union!15205) (reg!15534 r!7292))) b!5422071))

(declare-fun b!5422076 () Bool)

(declare-fun e!3360313 () Bool)

(declare-fun tp!1496875 () Bool)

(assert (=> b!5422076 (= e!3360313 (and tp_is_empty!39663 tp!1496875))))

(assert (=> b!5420732 (= tp!1496787 e!3360313)))

(assert (= (and b!5420732 ((_ is Cons!61790) (t!375137 s!2326))) b!5422076))

(declare-fun condSetEmpty!35333 () Bool)

(assert (=> setNonEmpty!35327 (= condSetEmpty!35333 (= setRest!35327 ((as const (Array Context!9178 Bool)) false)))))

(declare-fun setRes!35333 () Bool)

(assert (=> setNonEmpty!35327 (= tp!1496780 setRes!35333)))

(declare-fun setIsEmpty!35333 () Bool)

(assert (=> setIsEmpty!35333 setRes!35333))

(declare-fun setNonEmpty!35333 () Bool)

(declare-fun e!3360316 () Bool)

(declare-fun tp!1496880 () Bool)

(declare-fun setElem!35333 () Context!9178)

(assert (=> setNonEmpty!35333 (= setRes!35333 (and tp!1496880 (inv!81259 setElem!35333) e!3360316))))

(declare-fun setRest!35333 () (InoxSet Context!9178))

(assert (=> setNonEmpty!35333 (= setRest!35327 ((_ map or) (store ((as const (Array Context!9178 Bool)) false) setElem!35333 true) setRest!35333))))

(declare-fun b!5422081 () Bool)

(declare-fun tp!1496881 () Bool)

(assert (=> b!5422081 (= e!3360316 tp!1496881)))

(assert (= (and setNonEmpty!35327 condSetEmpty!35333) setIsEmpty!35333))

(assert (= (and setNonEmpty!35327 (not condSetEmpty!35333)) setNonEmpty!35333))

(assert (= setNonEmpty!35333 b!5422081))

(declare-fun m!6446256 () Bool)

(assert (=> setNonEmpty!35333 m!6446256))

(declare-fun b!5422082 () Bool)

(declare-fun e!3360317 () Bool)

(assert (=> b!5422082 (= e!3360317 tp_is_empty!39663)))

(declare-fun b!5422085 () Bool)

(declare-fun tp!1496884 () Bool)

(declare-fun tp!1496882 () Bool)

(assert (=> b!5422085 (= e!3360317 (and tp!1496884 tp!1496882))))

(assert (=> b!5420755 (= tp!1496783 e!3360317)))

(declare-fun b!5422084 () Bool)

(declare-fun tp!1496885 () Bool)

(assert (=> b!5422084 (= e!3360317 tp!1496885)))

(declare-fun b!5422083 () Bool)

(declare-fun tp!1496886 () Bool)

(declare-fun tp!1496883 () Bool)

(assert (=> b!5422083 (= e!3360317 (and tp!1496886 tp!1496883))))

(assert (= (and b!5420755 ((_ is ElementMatch!15205) (regOne!30923 r!7292))) b!5422082))

(assert (= (and b!5420755 ((_ is Concat!24050) (regOne!30923 r!7292))) b!5422083))

(assert (= (and b!5420755 ((_ is Star!15205) (regOne!30923 r!7292))) b!5422084))

(assert (= (and b!5420755 ((_ is Union!15205) (regOne!30923 r!7292))) b!5422085))

(declare-fun b!5422086 () Bool)

(declare-fun e!3360318 () Bool)

(assert (=> b!5422086 (= e!3360318 tp_is_empty!39663)))

(declare-fun b!5422089 () Bool)

(declare-fun tp!1496889 () Bool)

(declare-fun tp!1496887 () Bool)

(assert (=> b!5422089 (= e!3360318 (and tp!1496889 tp!1496887))))

(assert (=> b!5420755 (= tp!1496781 e!3360318)))

(declare-fun b!5422088 () Bool)

(declare-fun tp!1496890 () Bool)

(assert (=> b!5422088 (= e!3360318 tp!1496890)))

(declare-fun b!5422087 () Bool)

(declare-fun tp!1496891 () Bool)

(declare-fun tp!1496888 () Bool)

(assert (=> b!5422087 (= e!3360318 (and tp!1496891 tp!1496888))))

(assert (= (and b!5420755 ((_ is ElementMatch!15205) (regTwo!30923 r!7292))) b!5422086))

(assert (= (and b!5420755 ((_ is Concat!24050) (regTwo!30923 r!7292))) b!5422087))

(assert (= (and b!5420755 ((_ is Star!15205) (regTwo!30923 r!7292))) b!5422088))

(assert (= (and b!5420755 ((_ is Union!15205) (regTwo!30923 r!7292))) b!5422089))

(declare-fun b!5422094 () Bool)

(declare-fun e!3360321 () Bool)

(declare-fun tp!1496896 () Bool)

(declare-fun tp!1496897 () Bool)

(assert (=> b!5422094 (= e!3360321 (and tp!1496896 tp!1496897))))

(assert (=> b!5420740 (= tp!1496785 e!3360321)))

(assert (= (and b!5420740 ((_ is Cons!61791) (exprs!5089 (h!68240 zl!343)))) b!5422094))

(declare-fun b!5422102 () Bool)

(declare-fun e!3360327 () Bool)

(declare-fun tp!1496902 () Bool)

(assert (=> b!5422102 (= e!3360327 tp!1496902)))

(declare-fun b!5422101 () Bool)

(declare-fun tp!1496903 () Bool)

(declare-fun e!3360326 () Bool)

(assert (=> b!5422101 (= e!3360326 (and (inv!81259 (h!68240 (t!375139 zl!343))) e!3360327 tp!1496903))))

(assert (=> b!5420754 (= tp!1496788 e!3360326)))

(assert (= b!5422101 b!5422102))

(assert (= (and b!5420754 ((_ is Cons!61792) (t!375139 zl!343))) b!5422101))

(declare-fun m!6446258 () Bool)

(assert (=> b!5422101 m!6446258))

(declare-fun b!5422103 () Bool)

(declare-fun e!3360328 () Bool)

(declare-fun tp!1496904 () Bool)

(declare-fun tp!1496905 () Bool)

(assert (=> b!5422103 (= e!3360328 (and tp!1496904 tp!1496905))))

(assert (=> b!5420752 (= tp!1496782 e!3360328)))

(assert (= (and b!5420752 ((_ is Cons!61791) (exprs!5089 setElem!35327))) b!5422103))

(declare-fun b_lambda!206939 () Bool)

(assert (= b_lambda!206915 (or b!5420761 b_lambda!206939)))

(declare-fun bs!1252768 () Bool)

(declare-fun d!1729700 () Bool)

(assert (= bs!1252768 (and d!1729700 b!5420761)))

(assert (=> bs!1252768 (= (dynLambda!24351 lambda!283880 (h!68240 zl!343)) (derivationStepZipperUp!577 (h!68240 zl!343) (h!68238 s!2326)))))

(assert (=> bs!1252768 m!6444900))

(assert (=> d!1729510 d!1729700))

(declare-fun b_lambda!206941 () Bool)

(assert (= b_lambda!206919 (or b!5420761 b_lambda!206941)))

(declare-fun bs!1252769 () Bool)

(declare-fun d!1729702 () Bool)

(assert (= bs!1252769 (and d!1729702 b!5420761)))

(assert (=> bs!1252769 (= (dynLambda!24351 lambda!283880 lt!2210853) (derivationStepZipperUp!577 lt!2210853 (h!68238 s!2326)))))

(assert (=> bs!1252769 m!6444714))

(assert (=> d!1729530 d!1729702))

(declare-fun b_lambda!206943 () Bool)

(assert (= b_lambda!206937 (or b!5420733 b_lambda!206943)))

(declare-fun bs!1252770 () Bool)

(declare-fun d!1729704 () Bool)

(assert (= bs!1252770 (and d!1729704 b!5420733)))

(declare-fun lt!2211120 () Unit!154342)

(assert (=> bs!1252770 (= lt!2211120 (lemmaConcatPreservesForall!230 (exprs!5089 lt!2210853) lt!2210850 lambda!283882))))

(assert (=> bs!1252770 (= (dynLambda!24352 lambda!283881 lt!2210853) (Context!9179 (++!13583 (exprs!5089 lt!2210853) lt!2210850)))))

(declare-fun m!6446260 () Bool)

(assert (=> bs!1252770 m!6446260))

(declare-fun m!6446262 () Bool)

(assert (=> bs!1252770 m!6446262))

(assert (=> d!1729692 d!1729704))

(declare-fun b_lambda!206945 () Bool)

(assert (= b_lambda!206913 (or b!5420761 b_lambda!206945)))

(declare-fun bs!1252771 () Bool)

(declare-fun d!1729706 () Bool)

(assert (= bs!1252771 (and d!1729706 b!5420761)))

(assert (=> bs!1252771 (= (dynLambda!24351 lambda!283880 lt!2210821) (derivationStepZipperUp!577 lt!2210821 (h!68238 s!2326)))))

(assert (=> bs!1252771 m!6444824))

(assert (=> d!1729420 d!1729706))

(declare-fun b_lambda!206947 () Bool)

(assert (= b_lambda!206917 (or b!5420761 b_lambda!206947)))

(declare-fun bs!1252772 () Bool)

(declare-fun d!1729708 () Bool)

(assert (= bs!1252772 (and d!1729708 b!5420761)))

(assert (=> bs!1252772 (= (dynLambda!24351 lambda!283880 lt!2210810) (derivationStepZipperUp!577 lt!2210810 (h!68238 s!2326)))))

(assert (=> bs!1252772 m!6444708))

(assert (=> d!1729528 d!1729708))

(check-sat (not b!5421795) (not d!1729496) (not d!1729690) (not d!1729694) (not b!5421666) (not b!5421781) (not d!1729666) (not b!5422063) (not b!5422032) (not b!5421715) (not b!5421558) (not d!1729654) (not b!5421960) (not bm!388056) (not b!5422020) (not b!5421962) (not b!5420873) (not bm!388034) (not b_lambda!206947) (not b!5421821) (not b!5421108) (not b!5421976) (not b!5420878) (not d!1729542) (not b!5422066) (not b!5422069) (not b!5421145) (not b!5421659) (not b!5421667) (not d!1729584) (not b!5422022) (not b!5421964) (not bm!388027) (not b!5421791) (not b!5420869) (not b!5421135) (not b!5421768) (not b!5422067) (not d!1729676) (not b!5421203) (not b!5421183) (not bm!388026) (not bs!1252770) (not b!5421975) (not b!5421590) (not bs!1252772) (not bm!388039) (not b!5421792) (not d!1729648) (not bm!388048) (not b!5421176) (not d!1729328) (not d!1729660) (not b!5421142) (not b!5421061) (not d!1729642) (not b!5421068) (not d!1729570) (not bs!1252769) (not b!5421163) (not b!5422084) (not b!5420877) (not d!1729580) (not b!5422021) (not d!1729658) (not b!5422085) (not bs!1252771) (not b!5422030) (not b!5421989) (not d!1729672) (not b!5421761) (not b!5421774) (not bm!388052) (not b!5421082) (not bm!388054) (not b!5422047) (not b!5421673) (not d!1729522) (not b!5421929) (not d!1729446) (not d!1729358) (not b!5421816) (not d!1729688) (not d!1729534) (not b!5421965) (not b!5421083) (not d!1729544) (not b!5422008) (not b!5421169) (not b!5421757) (not b!5421164) (not b!5421136) (not b!5421750) (not bm!387953) (not b!5421794) (not b!5421769) (not b!5421200) (not b!5421109) (not b!5422101) (not setNonEmpty!35333) (not d!1729350) (not b!5420874) (not d!1729494) (not b!5421994) (not b!5421759) (not b!5422017) (not b!5422035) (not b!5421862) (not d!1729470) (not b!5421751) (not b!5421062) (not b!5422014) (not b!5421194) tp_is_empty!39663 (not b!5422041) (not d!1729512) (not d!1729646) (not d!1729594) (not b!5421933) (not b!5422071) (not b!5421193) (not d!1729504) (not d!1729546) (not b!5421557) (not b!5421148) (not b!5421756) (not b!5420906) (not bm!387955) (not d!1729538) (not b!5421974) (not bm!388041) (not b!5421133) (not b!5421302) (not bm!388031) (not d!1729360) (not d!1729324) (not bm!388025) (not b!5422034) (not b!5421928) (not b!5421961) (not d!1729364) (not b!5422061) (not b!5421726) (not b!5421496) (not b!5421553) (not bm!387978) (not b!5421710) (not b!5421554) (not d!1729662) (not bm!388042) (not b!5421513) (not b!5421379) (not d!1729630) (not b!5421793) (not d!1729524) (not d!1729302) (not d!1729276) (not b!5421758) (not b!5421421) (not bm!387951) (not b!5421796) (not b!5421746) (not b!5421178) (not d!1729530) (not b!5421745) (not bm!388043) (not b!5421141) (not d!1729556) (not bm!388005) (not bm!387977) (not d!1729650) (not d!1729528) (not b_lambda!206943) (not d!1729684) (not b_lambda!206939) (not d!1729586) (not b!5421380) (not d!1729656) (not b!5421978) (not d!1729398) (not b!5421971) (not bm!387952) (not b!5421187) (not b!5421932) (not b!5421817) (not bm!388004) (not bm!388055) (not b!5421512) (not b!5421714) (not bm!388032) (not d!1729370) (not b!5421778) (not b!5421383) (not b!5421959) (not b!5421775) (not d!1729682) (not b!5421973) (not d!1729394) (not b!5421860) (not b_lambda!206941) (not bm!388057) (not b!5421173) (not d!1729628) (not b!5422102) (not d!1729670) (not b!5421551) (not b!5420905) (not d!1729366) (not b!5422094) (not b!5421055) (not d!1729356) (not b!5421065) (not d!1729312) (not b!5421700) (not b!5422003) (not b!5421589) (not bm!388037) (not b!5421977) (not b!5422076) (not d!1729422) (not d!1729346) (not b!5421709) (not b!5421420) (not b!5421384) (not d!1729574) (not b!5421056) (not d!1729462) (not b!5422089) (not b!5422006) (not d!1729678) (not bm!388030) (not b!5421132) (not b!5421993) (not b!5421720) (not b!5422000) (not b!5421134) (not d!1729652) (not d!1729406) (not b!5421382) (not d!1729692) (not b!5421755) (not b!5420870) (not bm!388033) (not bm!387987) (not d!1729610) (not d!1729286) (not d!1729410) (not b!5421206) (not d!1729444) (not b!5421820) (not d!1729674) (not b!5421170) (not b!5421381) (not b!5422044) (not bm!388053) (not d!1729582) (not bm!388051) (not b!5421999) (not d!1729686) (not d!1729664) (not b!5422040) (not b!5421936) (not b!5421552) (not d!1729354) (not b!5422065) (not bm!388036) (not bm!387954) (not b!5422007) (not b!5421300) (not bs!1252768) (not b!5422087) (not b!5421184) (not b!5422103) (not d!1729352) (not b_lambda!206945) (not b!5420872) (not d!1729508) (not b!5422013) (not d!1729540) (not d!1729332) (not d!1729420) (not b!5421672) (not b!5422062) (not b!5422081) (not d!1729644) (not b!5421719) (not b!5421199) (not d!1729536) (not bm!388007) (not b!5421762) (not b!5421930) (not b!5421177) (not b!5421825) (not b!5421824) (not b!5422070) (not b!5421676) (not bm!388047) (not b!5421991) (not d!1729698) (not b!5421190) (not d!1729290) (not d!1729450) (not d!1729564) (not d!1729402) (not b!5421966) (not b!5422083) (not b!5421679) (not b!5421931) (not d!1729510) (not b!5422088))
(check-sat)
