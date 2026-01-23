; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!595260 () Bool)

(assert start!595260)

(declare-fun b!5809409 () Bool)

(assert (=> b!5809409 true))

(assert (=> b!5809409 true))

(declare-fun lambda!317250 () Int)

(declare-fun lambda!317249 () Int)

(assert (=> b!5809409 (not (= lambda!317250 lambda!317249))))

(assert (=> b!5809409 true))

(assert (=> b!5809409 true))

(declare-fun lambda!317251 () Int)

(assert (=> b!5809409 (not (= lambda!317251 lambda!317249))))

(assert (=> b!5809409 (not (= lambda!317251 lambda!317250))))

(assert (=> b!5809409 true))

(assert (=> b!5809409 true))

(declare-fun b!5809390 () Bool)

(assert (=> b!5809390 true))

(declare-fun b!5809382 () Bool)

(declare-fun res!2449844 () Bool)

(declare-fun e!3566038 () Bool)

(assert (=> b!5809382 (=> res!2449844 e!3566038)))

(declare-datatypes ((C!31920 0))(
  ( (C!31921 (val!25662 Int)) )
))
(declare-datatypes ((Regex!15825 0))(
  ( (ElementMatch!15825 (c!1029305 C!31920)) (Concat!24670 (regOne!32162 Regex!15825) (regTwo!32162 Regex!15825)) (EmptyExpr!15825) (Star!15825 (reg!16154 Regex!15825)) (EmptyLang!15825) (Union!15825 (regOne!32163 Regex!15825) (regTwo!32163 Regex!15825)) )
))
(declare-datatypes ((List!63774 0))(
  ( (Nil!63650) (Cons!63650 (h!70098 Regex!15825) (t!377127 List!63774)) )
))
(declare-datatypes ((Context!10418 0))(
  ( (Context!10419 (exprs!5709 List!63774)) )
))
(declare-datatypes ((List!63775 0))(
  ( (Nil!63651) (Cons!63651 (h!70099 Context!10418) (t!377128 List!63775)) )
))
(declare-fun zl!343 () List!63775)

(declare-fun isEmpty!35567 (List!63775) Bool)

(assert (=> b!5809382 (= res!2449844 (not (isEmpty!35567 (t!377128 zl!343))))))

(declare-fun b!5809383 () Bool)

(declare-fun e!3566037 () Bool)

(declare-fun e!3566034 () Bool)

(assert (=> b!5809383 (= e!3566037 e!3566034)))

(declare-fun res!2449849 () Bool)

(assert (=> b!5809383 (=> res!2449849 e!3566034)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2299684 () (InoxSet Context!10418))

(declare-fun lt!2299660 () (InoxSet Context!10418))

(assert (=> b!5809383 (= res!2449849 (not (= lt!2299684 lt!2299660)))))

(declare-fun r!7292 () Regex!15825)

(declare-datatypes ((List!63776 0))(
  ( (Nil!63652) (Cons!63652 (h!70100 C!31920) (t!377129 List!63776)) )
))
(declare-fun s!2326 () List!63776)

(declare-fun derivationStepZipperDown!1163 (Regex!15825 Context!10418 C!31920) (InoxSet Context!10418))

(assert (=> b!5809383 (= lt!2299660 (derivationStepZipperDown!1163 r!7292 (Context!10419 Nil!63650) (h!70100 s!2326)))))

(declare-fun derivationStepZipperUp!1089 (Context!10418 C!31920) (InoxSet Context!10418))

(assert (=> b!5809383 (= lt!2299684 (derivationStepZipperUp!1089 (Context!10419 (Cons!63650 r!7292 Nil!63650)) (h!70100 s!2326)))))

(declare-fun lt!2299670 () (InoxSet Context!10418))

(declare-fun z!1189 () (InoxSet Context!10418))

(declare-fun derivationStepZipper!1894 ((InoxSet Context!10418) C!31920) (InoxSet Context!10418))

(assert (=> b!5809383 (= lt!2299670 (derivationStepZipper!1894 z!1189 (h!70100 s!2326)))))

(declare-fun b!5809384 () Bool)

(declare-fun res!2449841 () Bool)

(assert (=> b!5809384 (=> res!2449841 e!3566038)))

(declare-fun generalisedUnion!1688 (List!63774) Regex!15825)

(declare-fun unfocusZipperList!1253 (List!63775) List!63774)

(assert (=> b!5809384 (= res!2449841 (not (= r!7292 (generalisedUnion!1688 (unfocusZipperList!1253 zl!343)))))))

(declare-fun b!5809385 () Bool)

(declare-fun e!3566044 () Bool)

(declare-fun tp_is_empty!40903 () Bool)

(assert (=> b!5809385 (= e!3566044 tp_is_empty!40903)))

(declare-fun setIsEmpty!39110 () Bool)

(declare-fun setRes!39110 () Bool)

(assert (=> setIsEmpty!39110 setRes!39110))

(declare-fun b!5809386 () Bool)

(declare-fun e!3566040 () Bool)

(declare-fun tp!1603316 () Bool)

(assert (=> b!5809386 (= e!3566040 tp!1603316)))

(declare-fun b!5809387 () Bool)

(declare-fun res!2449851 () Bool)

(declare-fun e!3566045 () Bool)

(assert (=> b!5809387 (=> res!2449851 e!3566045)))

(declare-fun lt!2299661 () Context!10418)

(declare-fun unfocusZipper!1567 (List!63775) Regex!15825)

(assert (=> b!5809387 (= res!2449851 (not (= (unfocusZipper!1567 (Cons!63651 lt!2299661 Nil!63651)) (reg!16154 r!7292))))))

(declare-fun b!5809388 () Bool)

(declare-fun tp!1603315 () Bool)

(assert (=> b!5809388 (= e!3566044 tp!1603315)))

(declare-fun b!5809389 () Bool)

(declare-fun res!2449833 () Bool)

(declare-fun e!3566039 () Bool)

(assert (=> b!5809389 (=> res!2449833 e!3566039)))

(declare-fun lt!2299666 () Regex!15825)

(assert (=> b!5809389 (= res!2449833 (or (not (= lt!2299666 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun e!3566031 () Bool)

(assert (=> b!5809390 (= e!3566034 e!3566031)))

(declare-fun res!2449850 () Bool)

(assert (=> b!5809390 (=> res!2449850 e!3566031)))

(assert (=> b!5809390 (= res!2449850 (not (= lt!2299670 lt!2299660)))))

(declare-fun lambda!317252 () Int)

(declare-fun flatMap!1432 ((InoxSet Context!10418) Int) (InoxSet Context!10418))

(assert (=> b!5809390 (= (flatMap!1432 z!1189 lambda!317252) (derivationStepZipperUp!1089 (h!70099 zl!343) (h!70100 s!2326)))))

(declare-datatypes ((Unit!156910 0))(
  ( (Unit!156911) )
))
(declare-fun lt!2299676 () Unit!156910)

(declare-fun lemmaFlatMapOnSingletonSet!964 ((InoxSet Context!10418) Context!10418 Int) Unit!156910)

(assert (=> b!5809390 (= lt!2299676 (lemmaFlatMapOnSingletonSet!964 z!1189 (h!70099 zl!343) lambda!317252))))

(declare-fun b!5809391 () Bool)

(declare-fun res!2449848 () Bool)

(assert (=> b!5809391 (=> res!2449848 e!3566045)))

(declare-fun lt!2299662 () Context!10418)

(assert (=> b!5809391 (= res!2449848 (not (= (unfocusZipper!1567 (Cons!63651 lt!2299662 Nil!63651)) r!7292)))))

(declare-fun b!5809392 () Bool)

(declare-fun e!3566042 () Bool)

(declare-fun e!3566032 () Bool)

(assert (=> b!5809392 (= e!3566042 e!3566032)))

(declare-fun res!2449832 () Bool)

(assert (=> b!5809392 (=> (not res!2449832) (not e!3566032))))

(assert (=> b!5809392 (= res!2449832 (= r!7292 lt!2299666))))

(assert (=> b!5809392 (= lt!2299666 (unfocusZipper!1567 zl!343))))

(declare-fun tp!1603317 () Bool)

(declare-fun e!3566041 () Bool)

(declare-fun b!5809393 () Bool)

(declare-fun inv!82809 (Context!10418) Bool)

(assert (=> b!5809393 (= e!3566041 (and (inv!82809 (h!70099 zl!343)) e!3566040 tp!1603317))))

(declare-fun b!5809394 () Bool)

(assert (=> b!5809394 (= e!3566031 e!3566039)))

(declare-fun res!2449839 () Bool)

(assert (=> b!5809394 (=> res!2449839 e!3566039)))

(assert (=> b!5809394 (= res!2449839 (not (= lt!2299670 (derivationStepZipperDown!1163 (reg!16154 r!7292) lt!2299662 (h!70100 s!2326)))))))

(declare-fun lt!2299664 () List!63774)

(assert (=> b!5809394 (= lt!2299662 (Context!10419 lt!2299664))))

(declare-fun lt!2299675 () Context!10418)

(declare-fun lt!2299673 () (InoxSet Context!10418))

(assert (=> b!5809394 (= (flatMap!1432 lt!2299673 lambda!317252) (derivationStepZipperUp!1089 lt!2299675 (h!70100 s!2326)))))

(declare-fun lt!2299671 () Unit!156910)

(assert (=> b!5809394 (= lt!2299671 (lemmaFlatMapOnSingletonSet!964 lt!2299673 lt!2299675 lambda!317252))))

(declare-fun lt!2299663 () (InoxSet Context!10418))

(assert (=> b!5809394 (= lt!2299663 (derivationStepZipperUp!1089 lt!2299675 (h!70100 s!2326)))))

(assert (=> b!5809394 (= lt!2299673 (store ((as const (Array Context!10418 Bool)) false) lt!2299675 true))))

(assert (=> b!5809394 (= lt!2299675 (Context!10419 (Cons!63650 (reg!16154 r!7292) lt!2299664)))))

(assert (=> b!5809394 (= lt!2299664 (Cons!63650 r!7292 Nil!63650))))

(declare-fun b!5809396 () Bool)

(assert (=> b!5809396 (= e!3566032 (not e!3566038))))

(declare-fun res!2449842 () Bool)

(assert (=> b!5809396 (=> res!2449842 e!3566038)))

(get-info :version)

(assert (=> b!5809396 (= res!2449842 (not ((_ is Cons!63651) zl!343)))))

(declare-fun lt!2299668 () Bool)

(declare-fun matchRSpec!2928 (Regex!15825 List!63776) Bool)

(assert (=> b!5809396 (= lt!2299668 (matchRSpec!2928 r!7292 s!2326))))

(declare-fun matchR!8010 (Regex!15825 List!63776) Bool)

(assert (=> b!5809396 (= lt!2299668 (matchR!8010 r!7292 s!2326))))

(declare-fun lt!2299678 () Unit!156910)

(declare-fun mainMatchTheorem!2928 (Regex!15825 List!63776) Unit!156910)

(assert (=> b!5809396 (= lt!2299678 (mainMatchTheorem!2928 r!7292 s!2326))))

(declare-fun b!5809395 () Bool)

(declare-fun tp!1603321 () Bool)

(declare-fun tp!1603318 () Bool)

(assert (=> b!5809395 (= e!3566044 (and tp!1603321 tp!1603318))))

(declare-fun res!2449845 () Bool)

(assert (=> start!595260 (=> (not res!2449845) (not e!3566042))))

(declare-fun validRegex!7561 (Regex!15825) Bool)

(assert (=> start!595260 (= res!2449845 (validRegex!7561 r!7292))))

(assert (=> start!595260 e!3566042))

(assert (=> start!595260 e!3566044))

(declare-fun condSetEmpty!39110 () Bool)

(assert (=> start!595260 (= condSetEmpty!39110 (= z!1189 ((as const (Array Context!10418 Bool)) false)))))

(assert (=> start!595260 setRes!39110))

(assert (=> start!595260 e!3566041))

(declare-fun e!3566033 () Bool)

(assert (=> start!595260 e!3566033))

(declare-fun b!5809397 () Bool)

(declare-fun e!3566036 () Bool)

(assert (=> b!5809397 (= e!3566039 e!3566036)))

(declare-fun res!2449852 () Bool)

(assert (=> b!5809397 (=> res!2449852 e!3566036)))

(declare-fun lt!2299681 () Regex!15825)

(assert (=> b!5809397 (= res!2449852 (not (= (unfocusZipper!1567 (Cons!63651 lt!2299675 Nil!63651)) lt!2299681)))))

(assert (=> b!5809397 (= lt!2299681 (Concat!24670 (reg!16154 r!7292) r!7292))))

(declare-fun b!5809398 () Bool)

(declare-fun e!3566035 () Bool)

(declare-fun lt!2299674 () Bool)

(assert (=> b!5809398 (= e!3566035 lt!2299674)))

(declare-fun b!5809399 () Bool)

(declare-fun res!2449843 () Bool)

(assert (=> b!5809399 (=> res!2449843 e!3566039)))

(declare-fun matchZipper!1953 ((InoxSet Context!10418) List!63776) Bool)

(assert (=> b!5809399 (= res!2449843 (not (= (matchZipper!1953 lt!2299673 s!2326) (matchZipper!1953 (derivationStepZipper!1894 lt!2299673 (h!70100 s!2326)) (t!377129 s!2326)))))))

(declare-fun b!5809400 () Bool)

(declare-fun tp!1603324 () Bool)

(assert (=> b!5809400 (= e!3566033 (and tp_is_empty!40903 tp!1603324))))

(declare-fun b!5809401 () Bool)

(assert (=> b!5809401 (= e!3566036 e!3566045)))

(declare-fun res!2449846 () Bool)

(assert (=> b!5809401 (=> res!2449846 e!3566045)))

(declare-fun lt!2299669 () (InoxSet Context!10418))

(assert (=> b!5809401 (= res!2449846 (not (= lt!2299670 (derivationStepZipper!1894 lt!2299669 (h!70100 s!2326)))))))

(assert (=> b!5809401 (= (flatMap!1432 lt!2299669 lambda!317252) (derivationStepZipperUp!1089 lt!2299662 (h!70100 s!2326)))))

(declare-fun lt!2299680 () Unit!156910)

(assert (=> b!5809401 (= lt!2299680 (lemmaFlatMapOnSingletonSet!964 lt!2299669 lt!2299662 lambda!317252))))

(declare-fun lt!2299679 () (InoxSet Context!10418))

(assert (=> b!5809401 (= (flatMap!1432 lt!2299679 lambda!317252) (derivationStepZipperUp!1089 lt!2299661 (h!70100 s!2326)))))

(declare-fun lt!2299672 () Unit!156910)

(assert (=> b!5809401 (= lt!2299672 (lemmaFlatMapOnSingletonSet!964 lt!2299679 lt!2299661 lambda!317252))))

(declare-fun lt!2299683 () (InoxSet Context!10418))

(assert (=> b!5809401 (= lt!2299683 (derivationStepZipperUp!1089 lt!2299662 (h!70100 s!2326)))))

(declare-fun lt!2299682 () (InoxSet Context!10418))

(assert (=> b!5809401 (= lt!2299682 (derivationStepZipperUp!1089 lt!2299661 (h!70100 s!2326)))))

(assert (=> b!5809401 (= lt!2299669 (store ((as const (Array Context!10418 Bool)) false) lt!2299662 true))))

(assert (=> b!5809401 (= lt!2299679 (store ((as const (Array Context!10418 Bool)) false) lt!2299661 true))))

(assert (=> b!5809401 (= lt!2299661 (Context!10419 (Cons!63650 (reg!16154 r!7292) Nil!63650)))))

(declare-fun e!3566043 () Bool)

(declare-fun setNonEmpty!39110 () Bool)

(declare-fun setElem!39110 () Context!10418)

(declare-fun tp!1603320 () Bool)

(assert (=> setNonEmpty!39110 (= setRes!39110 (and tp!1603320 (inv!82809 setElem!39110) e!3566043))))

(declare-fun setRest!39110 () (InoxSet Context!10418))

(assert (=> setNonEmpty!39110 (= z!1189 ((_ map or) (store ((as const (Array Context!10418 Bool)) false) setElem!39110 true) setRest!39110))))

(declare-fun b!5809402 () Bool)

(declare-fun res!2449847 () Bool)

(assert (=> b!5809402 (=> res!2449847 e!3566037)))

(assert (=> b!5809402 (= res!2449847 ((_ is Nil!63652) s!2326))))

(declare-fun b!5809403 () Bool)

(declare-fun res!2449834 () Bool)

(assert (=> b!5809403 (=> (not res!2449834) (not e!3566042))))

(declare-fun toList!9609 ((InoxSet Context!10418)) List!63775)

(assert (=> b!5809403 (= res!2449834 (= (toList!9609 z!1189) zl!343))))

(declare-fun b!5809404 () Bool)

(declare-fun res!2449835 () Bool)

(assert (=> b!5809404 (=> res!2449835 e!3566038)))

(assert (=> b!5809404 (= res!2449835 (or ((_ is EmptyExpr!15825) r!7292) ((_ is EmptyLang!15825) r!7292) ((_ is ElementMatch!15825) r!7292) ((_ is Union!15825) r!7292) ((_ is Concat!24670) r!7292)))))

(declare-fun b!5809405 () Bool)

(assert (=> b!5809405 (= e!3566045 true)))

(assert (=> b!5809405 (= (matchR!8010 lt!2299681 s!2326) (matchRSpec!2928 lt!2299681 s!2326))))

(declare-fun lt!2299665 () Unit!156910)

(assert (=> b!5809405 (= lt!2299665 (mainMatchTheorem!2928 lt!2299681 s!2326))))

(declare-fun b!5809406 () Bool)

(declare-fun tp!1603319 () Bool)

(assert (=> b!5809406 (= e!3566043 tp!1603319)))

(declare-fun b!5809407 () Bool)

(declare-fun res!2449837 () Bool)

(assert (=> b!5809407 (=> res!2449837 e!3566038)))

(assert (=> b!5809407 (= res!2449837 (not ((_ is Cons!63650) (exprs!5709 (h!70099 zl!343)))))))

(declare-fun b!5809408 () Bool)

(declare-fun res!2449838 () Bool)

(assert (=> b!5809408 (=> res!2449838 e!3566038)))

(declare-fun generalisedConcat!1440 (List!63774) Regex!15825)

(assert (=> b!5809408 (= res!2449838 (not (= r!7292 (generalisedConcat!1440 (exprs!5709 (h!70099 zl!343))))))))

(assert (=> b!5809409 (= e!3566038 e!3566037)))

(declare-fun res!2449836 () Bool)

(assert (=> b!5809409 (=> res!2449836 e!3566037)))

(assert (=> b!5809409 (= res!2449836 (not (= lt!2299668 e!3566035)))))

(declare-fun res!2449840 () Bool)

(assert (=> b!5809409 (=> res!2449840 e!3566035)))

(declare-fun isEmpty!35568 (List!63776) Bool)

(assert (=> b!5809409 (= res!2449840 (isEmpty!35568 s!2326))))

(declare-fun Exists!2925 (Int) Bool)

(assert (=> b!5809409 (= (Exists!2925 lambda!317249) (Exists!2925 lambda!317251))))

(declare-fun lt!2299677 () Unit!156910)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1554 (Regex!15825 Regex!15825 List!63776) Unit!156910)

(assert (=> b!5809409 (= lt!2299677 (lemmaExistCutMatchRandMatchRSpecEquivalent!1554 (reg!16154 r!7292) r!7292 s!2326))))

(assert (=> b!5809409 (= (Exists!2925 lambda!317249) (Exists!2925 lambda!317250))))

(declare-fun lt!2299659 () Unit!156910)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!606 (Regex!15825 List!63776) Unit!156910)

(assert (=> b!5809409 (= lt!2299659 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!606 (reg!16154 r!7292) s!2326))))

(assert (=> b!5809409 (= lt!2299674 (Exists!2925 lambda!317249))))

(declare-datatypes ((tuple2!65844 0))(
  ( (tuple2!65845 (_1!36225 List!63776) (_2!36225 List!63776)) )
))
(declare-datatypes ((Option!15834 0))(
  ( (None!15833) (Some!15833 (v!51897 tuple2!65844)) )
))
(declare-fun isDefined!12537 (Option!15834) Bool)

(declare-fun findConcatSeparation!2248 (Regex!15825 Regex!15825 List!63776 List!63776 List!63776) Option!15834)

(assert (=> b!5809409 (= lt!2299674 (isDefined!12537 (findConcatSeparation!2248 (reg!16154 r!7292) r!7292 Nil!63652 s!2326 s!2326)))))

(declare-fun lt!2299667 () Unit!156910)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2012 (Regex!15825 Regex!15825 List!63776) Unit!156910)

(assert (=> b!5809409 (= lt!2299667 (lemmaFindConcatSeparationEquivalentToExists!2012 (reg!16154 r!7292) r!7292 s!2326))))

(declare-fun b!5809410 () Bool)

(declare-fun tp!1603323 () Bool)

(declare-fun tp!1603322 () Bool)

(assert (=> b!5809410 (= e!3566044 (and tp!1603323 tp!1603322))))

(assert (= (and start!595260 res!2449845) b!5809403))

(assert (= (and b!5809403 res!2449834) b!5809392))

(assert (= (and b!5809392 res!2449832) b!5809396))

(assert (= (and b!5809396 (not res!2449842)) b!5809382))

(assert (= (and b!5809382 (not res!2449844)) b!5809408))

(assert (= (and b!5809408 (not res!2449838)) b!5809407))

(assert (= (and b!5809407 (not res!2449837)) b!5809384))

(assert (= (and b!5809384 (not res!2449841)) b!5809404))

(assert (= (and b!5809404 (not res!2449835)) b!5809409))

(assert (= (and b!5809409 (not res!2449840)) b!5809398))

(assert (= (and b!5809409 (not res!2449836)) b!5809402))

(assert (= (and b!5809402 (not res!2449847)) b!5809383))

(assert (= (and b!5809383 (not res!2449849)) b!5809390))

(assert (= (and b!5809390 (not res!2449850)) b!5809394))

(assert (= (and b!5809394 (not res!2449839)) b!5809399))

(assert (= (and b!5809399 (not res!2449843)) b!5809389))

(assert (= (and b!5809389 (not res!2449833)) b!5809397))

(assert (= (and b!5809397 (not res!2449852)) b!5809401))

(assert (= (and b!5809401 (not res!2449846)) b!5809387))

(assert (= (and b!5809387 (not res!2449851)) b!5809391))

(assert (= (and b!5809391 (not res!2449848)) b!5809405))

(assert (= (and start!595260 ((_ is ElementMatch!15825) r!7292)) b!5809385))

(assert (= (and start!595260 ((_ is Concat!24670) r!7292)) b!5809395))

(assert (= (and start!595260 ((_ is Star!15825) r!7292)) b!5809388))

(assert (= (and start!595260 ((_ is Union!15825) r!7292)) b!5809410))

(assert (= (and start!595260 condSetEmpty!39110) setIsEmpty!39110))

(assert (= (and start!595260 (not condSetEmpty!39110)) setNonEmpty!39110))

(assert (= setNonEmpty!39110 b!5809406))

(assert (= b!5809393 b!5809386))

(assert (= (and start!595260 ((_ is Cons!63651) zl!343)) b!5809393))

(assert (= (and start!595260 ((_ is Cons!63652) s!2326)) b!5809400))

(declare-fun m!6747892 () Bool)

(assert (=> b!5809391 m!6747892))

(declare-fun m!6747894 () Bool)

(assert (=> setNonEmpty!39110 m!6747894))

(declare-fun m!6747896 () Bool)

(assert (=> b!5809387 m!6747896))

(declare-fun m!6747898 () Bool)

(assert (=> start!595260 m!6747898))

(declare-fun m!6747900 () Bool)

(assert (=> b!5809394 m!6747900))

(declare-fun m!6747902 () Bool)

(assert (=> b!5809394 m!6747902))

(declare-fun m!6747904 () Bool)

(assert (=> b!5809394 m!6747904))

(declare-fun m!6747906 () Bool)

(assert (=> b!5809394 m!6747906))

(declare-fun m!6747908 () Bool)

(assert (=> b!5809394 m!6747908))

(declare-fun m!6747910 () Bool)

(assert (=> b!5809403 m!6747910))

(declare-fun m!6747912 () Bool)

(assert (=> b!5809408 m!6747912))

(declare-fun m!6747914 () Bool)

(assert (=> b!5809396 m!6747914))

(declare-fun m!6747916 () Bool)

(assert (=> b!5809396 m!6747916))

(declare-fun m!6747918 () Bool)

(assert (=> b!5809396 m!6747918))

(declare-fun m!6747920 () Bool)

(assert (=> b!5809401 m!6747920))

(declare-fun m!6747922 () Bool)

(assert (=> b!5809401 m!6747922))

(declare-fun m!6747924 () Bool)

(assert (=> b!5809401 m!6747924))

(declare-fun m!6747926 () Bool)

(assert (=> b!5809401 m!6747926))

(declare-fun m!6747928 () Bool)

(assert (=> b!5809401 m!6747928))

(declare-fun m!6747930 () Bool)

(assert (=> b!5809401 m!6747930))

(declare-fun m!6747932 () Bool)

(assert (=> b!5809401 m!6747932))

(declare-fun m!6747934 () Bool)

(assert (=> b!5809401 m!6747934))

(declare-fun m!6747936 () Bool)

(assert (=> b!5809401 m!6747936))

(declare-fun m!6747938 () Bool)

(assert (=> b!5809399 m!6747938))

(declare-fun m!6747940 () Bool)

(assert (=> b!5809399 m!6747940))

(assert (=> b!5809399 m!6747940))

(declare-fun m!6747942 () Bool)

(assert (=> b!5809399 m!6747942))

(declare-fun m!6747944 () Bool)

(assert (=> b!5809392 m!6747944))

(declare-fun m!6747946 () Bool)

(assert (=> b!5809397 m!6747946))

(declare-fun m!6747948 () Bool)

(assert (=> b!5809405 m!6747948))

(declare-fun m!6747950 () Bool)

(assert (=> b!5809405 m!6747950))

(declare-fun m!6747952 () Bool)

(assert (=> b!5809405 m!6747952))

(declare-fun m!6747954 () Bool)

(assert (=> b!5809382 m!6747954))

(declare-fun m!6747956 () Bool)

(assert (=> b!5809384 m!6747956))

(assert (=> b!5809384 m!6747956))

(declare-fun m!6747958 () Bool)

(assert (=> b!5809384 m!6747958))

(declare-fun m!6747960 () Bool)

(assert (=> b!5809393 m!6747960))

(declare-fun m!6747962 () Bool)

(assert (=> b!5809390 m!6747962))

(declare-fun m!6747964 () Bool)

(assert (=> b!5809390 m!6747964))

(declare-fun m!6747966 () Bool)

(assert (=> b!5809390 m!6747966))

(declare-fun m!6747968 () Bool)

(assert (=> b!5809409 m!6747968))

(declare-fun m!6747970 () Bool)

(assert (=> b!5809409 m!6747970))

(declare-fun m!6747972 () Bool)

(assert (=> b!5809409 m!6747972))

(declare-fun m!6747974 () Bool)

(assert (=> b!5809409 m!6747974))

(declare-fun m!6747976 () Bool)

(assert (=> b!5809409 m!6747976))

(declare-fun m!6747978 () Bool)

(assert (=> b!5809409 m!6747978))

(declare-fun m!6747980 () Bool)

(assert (=> b!5809409 m!6747980))

(assert (=> b!5809409 m!6747976))

(assert (=> b!5809409 m!6747980))

(declare-fun m!6747982 () Bool)

(assert (=> b!5809409 m!6747982))

(declare-fun m!6747984 () Bool)

(assert (=> b!5809409 m!6747984))

(assert (=> b!5809409 m!6747976))

(declare-fun m!6747986 () Bool)

(assert (=> b!5809383 m!6747986))

(declare-fun m!6747988 () Bool)

(assert (=> b!5809383 m!6747988))

(declare-fun m!6747990 () Bool)

(assert (=> b!5809383 m!6747990))

(check-sat (not b!5809401) (not b!5809409) (not setNonEmpty!39110) (not b!5809406) (not b!5809387) (not b!5809391) (not b!5809408) (not b!5809383) (not b!5809397) (not b!5809392) (not b!5809388) (not b!5809393) (not start!595260) (not b!5809390) (not b!5809386) tp_is_empty!40903 (not b!5809403) (not b!5809384) (not b!5809394) (not b!5809382) (not b!5809410) (not b!5809405) (not b!5809395) (not b!5809396) (not b!5809400) (not b!5809399))
(check-sat)
