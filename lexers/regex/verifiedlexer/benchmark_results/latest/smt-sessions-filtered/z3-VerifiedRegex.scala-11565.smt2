; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!638606 () Bool)

(assert start!638606)

(declare-fun b!6499872 () Bool)

(assert (=> b!6499872 true))

(assert (=> b!6499872 true))

(declare-fun lambda!360175 () Int)

(declare-fun lambda!360174 () Int)

(assert (=> b!6499872 (not (= lambda!360175 lambda!360174))))

(assert (=> b!6499872 true))

(assert (=> b!6499872 true))

(declare-fun b!6499858 () Bool)

(assert (=> b!6499858 true))

(declare-fun b!6499842 () Bool)

(declare-fun e!3938657 () Bool)

(declare-datatypes ((C!33024 0))(
  ( (C!33025 (val!26214 Int)) )
))
(declare-datatypes ((Regex!16377 0))(
  ( (ElementMatch!16377 (c!1191679 C!33024)) (Concat!25222 (regOne!33266 Regex!16377) (regTwo!33266 Regex!16377)) (EmptyExpr!16377) (Star!16377 (reg!16706 Regex!16377)) (EmptyLang!16377) (Union!16377 (regOne!33267 Regex!16377) (regTwo!33267 Regex!16377)) )
))
(declare-datatypes ((List!65430 0))(
  ( (Nil!65306) (Cons!65306 (h!71754 Regex!16377) (t!379064 List!65430)) )
))
(declare-datatypes ((Context!11522 0))(
  ( (Context!11523 (exprs!6261 List!65430)) )
))
(declare-fun lt!2391372 () Context!11522)

(declare-fun inv!84189 (Context!11522) Bool)

(assert (=> b!6499842 (= e!3938657 (inv!84189 lt!2391372))))

(declare-fun b!6499843 () Bool)

(declare-fun e!3938662 () Bool)

(declare-fun e!3938659 () Bool)

(assert (=> b!6499843 (= e!3938662 e!3938659)))

(declare-fun res!2669321 () Bool)

(assert (=> b!6499843 (=> res!2669321 e!3938659)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2391384 () (InoxSet Context!11522))

(declare-fun lt!2391371 () (InoxSet Context!11522))

(assert (=> b!6499843 (= res!2669321 (not (= lt!2391384 lt!2391371)))))

(declare-datatypes ((List!65431 0))(
  ( (Nil!65307) (Cons!65307 (h!71755 C!33024) (t!379065 List!65431)) )
))
(declare-fun s!2326 () List!65431)

(declare-fun lt!2391379 () (InoxSet Context!11522))

(declare-fun lt!2391368 () Context!11522)

(declare-fun lambda!360176 () Int)

(declare-fun flatMap!1882 ((InoxSet Context!11522) Int) (InoxSet Context!11522))

(declare-fun derivationStepZipperUp!1551 (Context!11522 C!33024) (InoxSet Context!11522))

(assert (=> b!6499843 (= (flatMap!1882 lt!2391379 lambda!360176) (derivationStepZipperUp!1551 lt!2391368 (h!71755 s!2326)))))

(declare-datatypes ((Unit!158843 0))(
  ( (Unit!158844) )
))
(declare-fun lt!2391391 () Unit!158843)

(declare-fun lemmaFlatMapOnSingletonSet!1408 ((InoxSet Context!11522) Context!11522 Int) Unit!158843)

(assert (=> b!6499843 (= lt!2391391 (lemmaFlatMapOnSingletonSet!1408 lt!2391379 lt!2391368 lambda!360176))))

(declare-fun lt!2391378 () (InoxSet Context!11522))

(assert (=> b!6499843 (= lt!2391378 (derivationStepZipperUp!1551 lt!2391368 (h!71755 s!2326)))))

(declare-fun derivationStepZipper!2343 ((InoxSet Context!11522) C!33024) (InoxSet Context!11522))

(assert (=> b!6499843 (= lt!2391384 (derivationStepZipper!2343 lt!2391379 (h!71755 s!2326)))))

(assert (=> b!6499843 (= lt!2391379 (store ((as const (Array Context!11522 Bool)) false) lt!2391368 true))))

(declare-fun r!7292 () Regex!16377)

(declare-fun lt!2391380 () List!65430)

(assert (=> b!6499843 (= lt!2391368 (Context!11523 (Cons!65306 (reg!16706 (regOne!33266 r!7292)) lt!2391380)))))

(declare-fun setIsEmpty!44303 () Bool)

(declare-fun setRes!44303 () Bool)

(assert (=> setIsEmpty!44303 setRes!44303))

(declare-fun b!6499844 () Bool)

(declare-fun e!3938661 () Bool)

(declare-fun nullable!6370 (Regex!16377) Bool)

(assert (=> b!6499844 (= e!3938661 (nullable!6370 (regOne!33266 (regOne!33266 r!7292))))))

(declare-fun b!6499845 () Bool)

(declare-fun e!3938656 () Bool)

(declare-fun tp!1798275 () Bool)

(assert (=> b!6499845 (= e!3938656 tp!1798275)))

(declare-fun b!6499846 () Bool)

(declare-fun res!2669349 () Bool)

(declare-fun e!3938665 () Bool)

(assert (=> b!6499846 (=> res!2669349 e!3938665)))

(declare-fun lt!2391402 () Regex!16377)

(assert (=> b!6499846 (= res!2669349 (not (= lt!2391402 r!7292)))))

(declare-fun b!6499847 () Bool)

(declare-fun e!3938663 () Bool)

(assert (=> b!6499847 (= e!3938663 e!3938657)))

(declare-fun res!2669338 () Bool)

(assert (=> b!6499847 (=> res!2669338 e!3938657)))

(declare-fun e!3938669 () Bool)

(assert (=> b!6499847 (= res!2669338 e!3938669)))

(declare-fun res!2669328 () Bool)

(assert (=> b!6499847 (=> (not res!2669328) (not e!3938669))))

(declare-fun lt!2391376 () Bool)

(assert (=> b!6499847 (= res!2669328 (not lt!2391376))))

(declare-fun lt!2391398 () (InoxSet Context!11522))

(declare-fun matchZipper!2389 ((InoxSet Context!11522) List!65431) Bool)

(assert (=> b!6499847 (= lt!2391376 (matchZipper!2389 lt!2391398 (t!379065 s!2326)))))

(declare-fun b!6499848 () Bool)

(declare-fun res!2669329 () Bool)

(declare-fun e!3938668 () Bool)

(assert (=> b!6499848 (=> res!2669329 e!3938668)))

(get-info :version)

(assert (=> b!6499848 (= res!2669329 (or ((_ is EmptyExpr!16377) r!7292) ((_ is EmptyLang!16377) r!7292) ((_ is ElementMatch!16377) r!7292) ((_ is Union!16377) r!7292) (not ((_ is Concat!25222) r!7292))))))

(declare-fun b!6499849 () Bool)

(assert (=> b!6499849 (= e!3938659 e!3938665)))

(declare-fun res!2669339 () Bool)

(assert (=> b!6499849 (=> res!2669339 e!3938665)))

(declare-fun lt!2391397 () Bool)

(assert (=> b!6499849 (= res!2669339 (not (= lt!2391397 (matchZipper!2389 lt!2391384 (t!379065 s!2326)))))))

(assert (=> b!6499849 (= lt!2391397 (matchZipper!2389 lt!2391379 s!2326))))

(declare-fun b!6499850 () Bool)

(declare-fun res!2669346 () Bool)

(assert (=> b!6499850 (=> res!2669346 e!3938668)))

(declare-datatypes ((List!65432 0))(
  ( (Nil!65308) (Cons!65308 (h!71756 Context!11522) (t!379066 List!65432)) )
))
(declare-fun zl!343 () List!65432)

(declare-fun generalisedUnion!2221 (List!65430) Regex!16377)

(declare-fun unfocusZipperList!1798 (List!65432) List!65430)

(assert (=> b!6499850 (= res!2669346 (not (= r!7292 (generalisedUnion!2221 (unfocusZipperList!1798 zl!343)))))))

(declare-fun b!6499851 () Bool)

(declare-fun e!3938652 () Bool)

(assert (=> b!6499851 (= e!3938665 e!3938652)))

(declare-fun res!2669337 () Bool)

(assert (=> b!6499851 (=> res!2669337 e!3938652)))

(declare-fun lt!2391377 () Regex!16377)

(assert (=> b!6499851 (= res!2669337 (not (= r!7292 lt!2391377)))))

(declare-fun lt!2391383 () Regex!16377)

(assert (=> b!6499851 (= lt!2391377 (Concat!25222 lt!2391383 (regTwo!33266 r!7292)))))

(declare-fun b!6499852 () Bool)

(declare-fun res!2669336 () Bool)

(assert (=> b!6499852 (=> res!2669336 e!3938668)))

(declare-fun generalisedConcat!1974 (List!65430) Regex!16377)

(assert (=> b!6499852 (= res!2669336 (not (= r!7292 (generalisedConcat!1974 (exprs!6261 (h!71756 zl!343))))))))

(declare-fun b!6499853 () Bool)

(declare-fun res!2669332 () Bool)

(declare-fun e!3938654 () Bool)

(assert (=> b!6499853 (=> (not res!2669332) (not e!3938654))))

(declare-fun z!1189 () (InoxSet Context!11522))

(declare-fun toList!10161 ((InoxSet Context!11522)) List!65432)

(assert (=> b!6499853 (= res!2669332 (= (toList!10161 z!1189) zl!343))))

(declare-fun b!6499854 () Bool)

(declare-fun e!3938670 () Bool)

(assert (=> b!6499854 (= e!3938670 (not e!3938668))))

(declare-fun res!2669345 () Bool)

(assert (=> b!6499854 (=> res!2669345 e!3938668)))

(assert (=> b!6499854 (= res!2669345 (not ((_ is Cons!65308) zl!343)))))

(declare-fun lt!2391374 () Bool)

(declare-fun matchRSpec!3478 (Regex!16377 List!65431) Bool)

(assert (=> b!6499854 (= lt!2391374 (matchRSpec!3478 r!7292 s!2326))))

(declare-fun matchR!8560 (Regex!16377 List!65431) Bool)

(assert (=> b!6499854 (= lt!2391374 (matchR!8560 r!7292 s!2326))))

(declare-fun lt!2391401 () Unit!158843)

(declare-fun mainMatchTheorem!3478 (Regex!16377 List!65431) Unit!158843)

(assert (=> b!6499854 (= lt!2391401 (mainMatchTheorem!3478 r!7292 s!2326))))

(declare-fun b!6499855 () Bool)

(declare-fun e!3938666 () Bool)

(declare-fun tp!1798277 () Bool)

(assert (=> b!6499855 (= e!3938666 tp!1798277)))

(declare-fun b!6499856 () Bool)

(declare-fun tp_is_empty!42007 () Bool)

(assert (=> b!6499856 (= e!3938666 tp_is_empty!42007)))

(declare-fun b!6499857 () Bool)

(declare-fun lt!2391370 () (InoxSet Context!11522))

(assert (=> b!6499857 (= e!3938669 (not (matchZipper!2389 lt!2391370 (t!379065 s!2326))))))

(declare-fun res!2669324 () Bool)

(assert (=> start!638606 (=> (not res!2669324) (not e!3938654))))

(declare-fun validRegex!8113 (Regex!16377) Bool)

(assert (=> start!638606 (= res!2669324 (validRegex!8113 r!7292))))

(assert (=> start!638606 e!3938654))

(assert (=> start!638606 e!3938666))

(declare-fun condSetEmpty!44303 () Bool)

(assert (=> start!638606 (= condSetEmpty!44303 (= z!1189 ((as const (Array Context!11522 Bool)) false)))))

(assert (=> start!638606 setRes!44303))

(declare-fun e!3938667 () Bool)

(assert (=> start!638606 e!3938667))

(declare-fun e!3938658 () Bool)

(assert (=> start!638606 e!3938658))

(declare-fun e!3938660 () Bool)

(declare-fun e!3938655 () Bool)

(assert (=> b!6499858 (= e!3938660 e!3938655)))

(declare-fun res!2669342 () Bool)

(assert (=> b!6499858 (=> res!2669342 e!3938655)))

(assert (=> b!6499858 (= res!2669342 (or (and ((_ is ElementMatch!16377) (regOne!33266 r!7292)) (= (c!1191679 (regOne!33266 r!7292)) (h!71755 s!2326))) ((_ is Union!16377) (regOne!33266 r!7292))))))

(declare-fun lt!2391385 () Unit!158843)

(declare-fun e!3938651 () Unit!158843)

(assert (=> b!6499858 (= lt!2391385 e!3938651)))

(declare-fun c!1191678 () Bool)

(declare-fun lt!2391393 () Bool)

(assert (=> b!6499858 (= c!1191678 lt!2391393)))

(assert (=> b!6499858 (= lt!2391393 (nullable!6370 (h!71754 (exprs!6261 (h!71756 zl!343)))))))

(assert (=> b!6499858 (= (flatMap!1882 z!1189 lambda!360176) (derivationStepZipperUp!1551 (h!71756 zl!343) (h!71755 s!2326)))))

(declare-fun lt!2391387 () Unit!158843)

(assert (=> b!6499858 (= lt!2391387 (lemmaFlatMapOnSingletonSet!1408 z!1189 (h!71756 zl!343) lambda!360176))))

(declare-fun lt!2391382 () Context!11522)

(assert (=> b!6499858 (= lt!2391370 (derivationStepZipperUp!1551 lt!2391382 (h!71755 s!2326)))))

(declare-fun derivationStepZipperDown!1625 (Regex!16377 Context!11522 C!33024) (InoxSet Context!11522))

(assert (=> b!6499858 (= lt!2391398 (derivationStepZipperDown!1625 (h!71754 (exprs!6261 (h!71756 zl!343))) lt!2391382 (h!71755 s!2326)))))

(assert (=> b!6499858 (= lt!2391382 (Context!11523 (t!379064 (exprs!6261 (h!71756 zl!343)))))))

(declare-fun lt!2391369 () (InoxSet Context!11522))

(assert (=> b!6499858 (= lt!2391369 (derivationStepZipperUp!1551 (Context!11523 (Cons!65306 (h!71754 (exprs!6261 (h!71756 zl!343))) (t!379064 (exprs!6261 (h!71756 zl!343))))) (h!71755 s!2326)))))

(declare-fun b!6499859 () Bool)

(declare-fun tp!1798276 () Bool)

(declare-fun tp!1798280 () Bool)

(assert (=> b!6499859 (= e!3938666 (and tp!1798276 tp!1798280))))

(declare-fun b!6499860 () Bool)

(declare-fun Unit!158845 () Unit!158843)

(assert (=> b!6499860 (= e!3938651 Unit!158845)))

(declare-fun lt!2391389 () Unit!158843)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1208 ((InoxSet Context!11522) (InoxSet Context!11522) List!65431) Unit!158843)

(assert (=> b!6499860 (= lt!2391389 (lemmaZipperConcatMatchesSameAsBothZippers!1208 lt!2391398 lt!2391370 (t!379065 s!2326)))))

(declare-fun res!2669323 () Bool)

(assert (=> b!6499860 (= res!2669323 (matchZipper!2389 lt!2391398 (t!379065 s!2326)))))

(declare-fun e!3938649 () Bool)

(assert (=> b!6499860 (=> res!2669323 e!3938649)))

(assert (=> b!6499860 (= (matchZipper!2389 ((_ map or) lt!2391398 lt!2391370) (t!379065 s!2326)) e!3938649)))

(declare-fun b!6499861 () Bool)

(declare-fun res!2669334 () Bool)

(declare-fun e!3938650 () Bool)

(assert (=> b!6499861 (=> res!2669334 e!3938650)))

(declare-fun unfocusZipper!2119 (List!65432) Regex!16377)

(assert (=> b!6499861 (= res!2669334 (not (= (unfocusZipper!2119 (Cons!65308 lt!2391372 Nil!65308)) lt!2391377)))))

(declare-fun b!6499862 () Bool)

(declare-fun e!3938653 () Bool)

(declare-fun tp!1798271 () Bool)

(assert (=> b!6499862 (= e!3938653 tp!1798271)))

(declare-fun b!6499863 () Bool)

(declare-fun tp!1798278 () Bool)

(assert (=> b!6499863 (= e!3938658 (and tp_is_empty!42007 tp!1798278))))

(declare-fun b!6499864 () Bool)

(declare-fun res!2669333 () Bool)

(assert (=> b!6499864 (=> res!2669333 e!3938655)))

(assert (=> b!6499864 (= res!2669333 e!3938661)))

(declare-fun res!2669327 () Bool)

(assert (=> b!6499864 (=> (not res!2669327) (not e!3938661))))

(assert (=> b!6499864 (= res!2669327 ((_ is Concat!25222) (regOne!33266 r!7292)))))

(declare-fun b!6499865 () Bool)

(assert (=> b!6499865 (= e!3938649 (matchZipper!2389 lt!2391370 (t!379065 s!2326)))))

(declare-fun b!6499866 () Bool)

(declare-fun res!2669340 () Bool)

(assert (=> b!6499866 (=> res!2669340 e!3938660)))

(declare-fun isEmpty!37505 (List!65430) Bool)

(assert (=> b!6499866 (= res!2669340 (isEmpty!37505 (t!379064 (exprs!6261 (h!71756 zl!343)))))))

(declare-fun b!6499867 () Bool)

(declare-fun res!2669322 () Bool)

(assert (=> b!6499867 (=> res!2669322 e!3938668)))

(declare-fun isEmpty!37506 (List!65432) Bool)

(assert (=> b!6499867 (= res!2669322 (not (isEmpty!37506 (t!379066 zl!343))))))

(declare-fun b!6499868 () Bool)

(declare-fun res!2669326 () Bool)

(assert (=> b!6499868 (=> res!2669326 e!3938663)))

(assert (=> b!6499868 (= res!2669326 (not (matchZipper!2389 z!1189 s!2326)))))

(declare-fun b!6499869 () Bool)

(declare-fun e!3938664 () Bool)

(assert (=> b!6499869 (= e!3938664 e!3938650)))

(declare-fun res!2669335 () Bool)

(assert (=> b!6499869 (=> res!2669335 e!3938650)))

(declare-fun lt!2391399 () Context!11522)

(assert (=> b!6499869 (= res!2669335 (not (= (unfocusZipper!2119 (Cons!65308 lt!2391399 Nil!65308)) (reg!16706 (regOne!33266 r!7292)))))))

(declare-fun lt!2391396 () (InoxSet Context!11522))

(assert (=> b!6499869 (= (flatMap!1882 lt!2391396 lambda!360176) (derivationStepZipperUp!1551 lt!2391372 (h!71755 s!2326)))))

(declare-fun lt!2391373 () Unit!158843)

(assert (=> b!6499869 (= lt!2391373 (lemmaFlatMapOnSingletonSet!1408 lt!2391396 lt!2391372 lambda!360176))))

(declare-fun lt!2391381 () (InoxSet Context!11522))

(assert (=> b!6499869 (= (flatMap!1882 lt!2391381 lambda!360176) (derivationStepZipperUp!1551 lt!2391399 (h!71755 s!2326)))))

(declare-fun lt!2391386 () Unit!158843)

(assert (=> b!6499869 (= lt!2391386 (lemmaFlatMapOnSingletonSet!1408 lt!2391381 lt!2391399 lambda!360176))))

(declare-fun lt!2391395 () (InoxSet Context!11522))

(assert (=> b!6499869 (= lt!2391395 (derivationStepZipperUp!1551 lt!2391372 (h!71755 s!2326)))))

(declare-fun lt!2391392 () (InoxSet Context!11522))

(assert (=> b!6499869 (= lt!2391392 (derivationStepZipperUp!1551 lt!2391399 (h!71755 s!2326)))))

(assert (=> b!6499869 (= lt!2391396 (store ((as const (Array Context!11522 Bool)) false) lt!2391372 true))))

(assert (=> b!6499869 (= lt!2391381 (store ((as const (Array Context!11522 Bool)) false) lt!2391399 true))))

(assert (=> b!6499869 (= lt!2391399 (Context!11523 (Cons!65306 (reg!16706 (regOne!33266 r!7292)) Nil!65306)))))

(declare-fun setElem!44303 () Context!11522)

(declare-fun tp!1798273 () Bool)

(declare-fun setNonEmpty!44303 () Bool)

(assert (=> setNonEmpty!44303 (= setRes!44303 (and tp!1798273 (inv!84189 setElem!44303) e!3938653))))

(declare-fun setRest!44303 () (InoxSet Context!11522))

(assert (=> setNonEmpty!44303 (= z!1189 ((_ map or) (store ((as const (Array Context!11522 Bool)) false) setElem!44303 true) setRest!44303))))

(declare-fun b!6499870 () Bool)

(assert (=> b!6499870 (= e!3938654 e!3938670)))

(declare-fun res!2669347 () Bool)

(assert (=> b!6499870 (=> (not res!2669347) (not e!3938670))))

(assert (=> b!6499870 (= res!2669347 (= r!7292 lt!2391402))))

(assert (=> b!6499870 (= lt!2391402 (unfocusZipper!2119 zl!343))))

(declare-fun b!6499871 () Bool)

(assert (=> b!6499871 (= e!3938650 e!3938663)))

(declare-fun res!2669344 () Bool)

(assert (=> b!6499871 (=> res!2669344 e!3938663)))

(assert (=> b!6499871 (= res!2669344 lt!2391374)))

(declare-fun lt!2391400 () Regex!16377)

(assert (=> b!6499871 (= (matchR!8560 lt!2391400 s!2326) (matchRSpec!3478 lt!2391400 s!2326))))

(declare-fun lt!2391390 () Unit!158843)

(assert (=> b!6499871 (= lt!2391390 (mainMatchTheorem!3478 lt!2391400 s!2326))))

(assert (=> b!6499872 (= e!3938668 e!3938660)))

(declare-fun res!2669325 () Bool)

(assert (=> b!6499872 (=> res!2669325 e!3938660)))

(declare-fun lt!2391375 () Bool)

(assert (=> b!6499872 (= res!2669325 (or (not (= lt!2391374 lt!2391375)) ((_ is Nil!65307) s!2326)))))

(declare-fun Exists!3447 (Int) Bool)

(assert (=> b!6499872 (= (Exists!3447 lambda!360174) (Exists!3447 lambda!360175))))

(declare-fun lt!2391394 () Unit!158843)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1984 (Regex!16377 Regex!16377 List!65431) Unit!158843)

(assert (=> b!6499872 (= lt!2391394 (lemmaExistCutMatchRandMatchRSpecEquivalent!1984 (regOne!33266 r!7292) (regTwo!33266 r!7292) s!2326))))

(assert (=> b!6499872 (= lt!2391375 (Exists!3447 lambda!360174))))

(declare-datatypes ((tuple2!66712 0))(
  ( (tuple2!66713 (_1!36659 List!65431) (_2!36659 List!65431)) )
))
(declare-datatypes ((Option!16268 0))(
  ( (None!16267) (Some!16267 (v!52446 tuple2!66712)) )
))
(declare-fun isDefined!12971 (Option!16268) Bool)

(declare-fun findConcatSeparation!2682 (Regex!16377 Regex!16377 List!65431 List!65431 List!65431) Option!16268)

(assert (=> b!6499872 (= lt!2391375 (isDefined!12971 (findConcatSeparation!2682 (regOne!33266 r!7292) (regTwo!33266 r!7292) Nil!65307 s!2326 s!2326)))))

(declare-fun lt!2391388 () Unit!158843)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2446 (Regex!16377 Regex!16377 List!65431) Unit!158843)

(assert (=> b!6499872 (= lt!2391388 (lemmaFindConcatSeparationEquivalentToExists!2446 (regOne!33266 r!7292) (regTwo!33266 r!7292) s!2326))))

(declare-fun b!6499873 () Bool)

(declare-fun res!2669343 () Bool)

(assert (=> b!6499873 (=> res!2669343 e!3938655)))

(assert (=> b!6499873 (= res!2669343 (or ((_ is Concat!25222) (regOne!33266 r!7292)) (not ((_ is Star!16377) (regOne!33266 r!7292)))))))

(declare-fun b!6499874 () Bool)

(assert (=> b!6499874 (= e!3938652 e!3938664)))

(declare-fun res!2669350 () Bool)

(assert (=> b!6499874 (=> res!2669350 e!3938664)))

(assert (=> b!6499874 (= res!2669350 (not (= (unfocusZipper!2119 (Cons!65308 lt!2391368 Nil!65308)) lt!2391400)))))

(assert (=> b!6499874 (= lt!2391400 (Concat!25222 (reg!16706 (regOne!33266 r!7292)) lt!2391377))))

(declare-fun b!6499875 () Bool)

(declare-fun tp!1798272 () Bool)

(assert (=> b!6499875 (= e!3938667 (and (inv!84189 (h!71756 zl!343)) e!3938656 tp!1798272))))

(declare-fun b!6499876 () Bool)

(declare-fun res!2669348 () Bool)

(assert (=> b!6499876 (=> res!2669348 e!3938668)))

(assert (=> b!6499876 (= res!2669348 (not ((_ is Cons!65306) (exprs!6261 (h!71756 zl!343)))))))

(declare-fun b!6499877 () Bool)

(assert (=> b!6499877 (= e!3938655 e!3938662)))

(declare-fun res!2669330 () Bool)

(assert (=> b!6499877 (=> res!2669330 e!3938662)))

(assert (=> b!6499877 (= res!2669330 (not (= lt!2391398 lt!2391371)))))

(assert (=> b!6499877 (= lt!2391371 (derivationStepZipperDown!1625 (reg!16706 (regOne!33266 r!7292)) lt!2391372 (h!71755 s!2326)))))

(assert (=> b!6499877 (= lt!2391372 (Context!11523 lt!2391380))))

(assert (=> b!6499877 (= lt!2391380 (Cons!65306 lt!2391383 (t!379064 (exprs!6261 (h!71756 zl!343)))))))

(assert (=> b!6499877 (= lt!2391383 (Star!16377 (reg!16706 (regOne!33266 r!7292))))))

(declare-fun b!6499878 () Bool)

(declare-fun res!2669341 () Bool)

(assert (=> b!6499878 (=> res!2669341 e!3938663)))

(assert (=> b!6499878 (= res!2669341 (not lt!2391393))))

(declare-fun b!6499879 () Bool)

(declare-fun Unit!158846 () Unit!158843)

(assert (=> b!6499879 (= e!3938651 Unit!158846)))

(declare-fun b!6499880 () Bool)

(declare-fun res!2669331 () Bool)

(assert (=> b!6499880 (=> res!2669331 e!3938657)))

(assert (=> b!6499880 (= res!2669331 (or (not lt!2391376) (not lt!2391397)))))

(declare-fun b!6499881 () Bool)

(declare-fun tp!1798274 () Bool)

(declare-fun tp!1798279 () Bool)

(assert (=> b!6499881 (= e!3938666 (and tp!1798274 tp!1798279))))

(assert (= (and start!638606 res!2669324) b!6499853))

(assert (= (and b!6499853 res!2669332) b!6499870))

(assert (= (and b!6499870 res!2669347) b!6499854))

(assert (= (and b!6499854 (not res!2669345)) b!6499867))

(assert (= (and b!6499867 (not res!2669322)) b!6499852))

(assert (= (and b!6499852 (not res!2669336)) b!6499876))

(assert (= (and b!6499876 (not res!2669348)) b!6499850))

(assert (= (and b!6499850 (not res!2669346)) b!6499848))

(assert (= (and b!6499848 (not res!2669329)) b!6499872))

(assert (= (and b!6499872 (not res!2669325)) b!6499866))

(assert (= (and b!6499866 (not res!2669340)) b!6499858))

(assert (= (and b!6499858 c!1191678) b!6499860))

(assert (= (and b!6499858 (not c!1191678)) b!6499879))

(assert (= (and b!6499860 (not res!2669323)) b!6499865))

(assert (= (and b!6499858 (not res!2669342)) b!6499864))

(assert (= (and b!6499864 res!2669327) b!6499844))

(assert (= (and b!6499864 (not res!2669333)) b!6499873))

(assert (= (and b!6499873 (not res!2669343)) b!6499877))

(assert (= (and b!6499877 (not res!2669330)) b!6499843))

(assert (= (and b!6499843 (not res!2669321)) b!6499849))

(assert (= (and b!6499849 (not res!2669339)) b!6499846))

(assert (= (and b!6499846 (not res!2669349)) b!6499851))

(assert (= (and b!6499851 (not res!2669337)) b!6499874))

(assert (= (and b!6499874 (not res!2669350)) b!6499869))

(assert (= (and b!6499869 (not res!2669335)) b!6499861))

(assert (= (and b!6499861 (not res!2669334)) b!6499871))

(assert (= (and b!6499871 (not res!2669344)) b!6499868))

(assert (= (and b!6499868 (not res!2669326)) b!6499878))

(assert (= (and b!6499878 (not res!2669341)) b!6499847))

(assert (= (and b!6499847 res!2669328) b!6499857))

(assert (= (and b!6499847 (not res!2669338)) b!6499880))

(assert (= (and b!6499880 (not res!2669331)) b!6499842))

(assert (= (and start!638606 ((_ is ElementMatch!16377) r!7292)) b!6499856))

(assert (= (and start!638606 ((_ is Concat!25222) r!7292)) b!6499881))

(assert (= (and start!638606 ((_ is Star!16377) r!7292)) b!6499855))

(assert (= (and start!638606 ((_ is Union!16377) r!7292)) b!6499859))

(assert (= (and start!638606 condSetEmpty!44303) setIsEmpty!44303))

(assert (= (and start!638606 (not condSetEmpty!44303)) setNonEmpty!44303))

(assert (= setNonEmpty!44303 b!6499862))

(assert (= b!6499875 b!6499845))

(assert (= (and start!638606 ((_ is Cons!65308) zl!343)) b!6499875))

(assert (= (and start!638606 ((_ is Cons!65307) s!2326)) b!6499863))

(declare-fun m!7287870 () Bool)

(assert (=> b!6499850 m!7287870))

(assert (=> b!6499850 m!7287870))

(declare-fun m!7287872 () Bool)

(assert (=> b!6499850 m!7287872))

(declare-fun m!7287874 () Bool)

(assert (=> b!6499875 m!7287874))

(declare-fun m!7287876 () Bool)

(assert (=> b!6499867 m!7287876))

(declare-fun m!7287878 () Bool)

(assert (=> b!6499865 m!7287878))

(declare-fun m!7287880 () Bool)

(assert (=> b!6499866 m!7287880))

(declare-fun m!7287882 () Bool)

(assert (=> b!6499871 m!7287882))

(declare-fun m!7287884 () Bool)

(assert (=> b!6499871 m!7287884))

(declare-fun m!7287886 () Bool)

(assert (=> b!6499871 m!7287886))

(declare-fun m!7287888 () Bool)

(assert (=> b!6499872 m!7287888))

(declare-fun m!7287890 () Bool)

(assert (=> b!6499872 m!7287890))

(declare-fun m!7287892 () Bool)

(assert (=> b!6499872 m!7287892))

(declare-fun m!7287894 () Bool)

(assert (=> b!6499872 m!7287894))

(assert (=> b!6499872 m!7287894))

(declare-fun m!7287896 () Bool)

(assert (=> b!6499872 m!7287896))

(assert (=> b!6499872 m!7287890))

(declare-fun m!7287898 () Bool)

(assert (=> b!6499872 m!7287898))

(declare-fun m!7287900 () Bool)

(assert (=> b!6499853 m!7287900))

(declare-fun m!7287902 () Bool)

(assert (=> b!6499843 m!7287902))

(declare-fun m!7287904 () Bool)

(assert (=> b!6499843 m!7287904))

(declare-fun m!7287906 () Bool)

(assert (=> b!6499843 m!7287906))

(declare-fun m!7287908 () Bool)

(assert (=> b!6499843 m!7287908))

(declare-fun m!7287910 () Bool)

(assert (=> b!6499843 m!7287910))

(declare-fun m!7287912 () Bool)

(assert (=> b!6499849 m!7287912))

(declare-fun m!7287914 () Bool)

(assert (=> b!6499849 m!7287914))

(declare-fun m!7287916 () Bool)

(assert (=> start!638606 m!7287916))

(declare-fun m!7287918 () Bool)

(assert (=> setNonEmpty!44303 m!7287918))

(declare-fun m!7287920 () Bool)

(assert (=> b!6499842 m!7287920))

(declare-fun m!7287922 () Bool)

(assert (=> b!6499847 m!7287922))

(declare-fun m!7287924 () Bool)

(assert (=> b!6499874 m!7287924))

(declare-fun m!7287926 () Bool)

(assert (=> b!6499844 m!7287926))

(declare-fun m!7287928 () Bool)

(assert (=> b!6499870 m!7287928))

(declare-fun m!7287930 () Bool)

(assert (=> b!6499868 m!7287930))

(declare-fun m!7287932 () Bool)

(assert (=> b!6499877 m!7287932))

(declare-fun m!7287934 () Bool)

(assert (=> b!6499869 m!7287934))

(declare-fun m!7287936 () Bool)

(assert (=> b!6499869 m!7287936))

(declare-fun m!7287938 () Bool)

(assert (=> b!6499869 m!7287938))

(declare-fun m!7287940 () Bool)

(assert (=> b!6499869 m!7287940))

(declare-fun m!7287942 () Bool)

(assert (=> b!6499869 m!7287942))

(declare-fun m!7287944 () Bool)

(assert (=> b!6499869 m!7287944))

(declare-fun m!7287946 () Bool)

(assert (=> b!6499869 m!7287946))

(declare-fun m!7287948 () Bool)

(assert (=> b!6499869 m!7287948))

(declare-fun m!7287950 () Bool)

(assert (=> b!6499869 m!7287950))

(declare-fun m!7287952 () Bool)

(assert (=> b!6499861 m!7287952))

(declare-fun m!7287954 () Bool)

(assert (=> b!6499852 m!7287954))

(assert (=> b!6499857 m!7287878))

(declare-fun m!7287956 () Bool)

(assert (=> b!6499858 m!7287956))

(declare-fun m!7287958 () Bool)

(assert (=> b!6499858 m!7287958))

(declare-fun m!7287960 () Bool)

(assert (=> b!6499858 m!7287960))

(declare-fun m!7287962 () Bool)

(assert (=> b!6499858 m!7287962))

(declare-fun m!7287964 () Bool)

(assert (=> b!6499858 m!7287964))

(declare-fun m!7287966 () Bool)

(assert (=> b!6499858 m!7287966))

(declare-fun m!7287968 () Bool)

(assert (=> b!6499858 m!7287968))

(declare-fun m!7287970 () Bool)

(assert (=> b!6499854 m!7287970))

(declare-fun m!7287972 () Bool)

(assert (=> b!6499854 m!7287972))

(declare-fun m!7287974 () Bool)

(assert (=> b!6499854 m!7287974))

(declare-fun m!7287976 () Bool)

(assert (=> b!6499860 m!7287976))

(assert (=> b!6499860 m!7287922))

(declare-fun m!7287978 () Bool)

(assert (=> b!6499860 m!7287978))

(check-sat (not b!6499860) (not b!6499849) (not b!6499858) (not start!638606) (not b!6499881) (not b!6499872) (not b!6499847) (not b!6499865) (not b!6499862) (not b!6499859) (not b!6499843) (not b!6499866) (not b!6499867) (not b!6499844) (not b!6499854) (not setNonEmpty!44303) (not b!6499855) (not b!6499868) (not b!6499842) (not b!6499874) (not b!6499869) (not b!6499863) (not b!6499871) (not b!6499853) (not b!6499852) (not b!6499861) (not b!6499850) (not b!6499877) (not b!6499845) (not b!6499875) tp_is_empty!42007 (not b!6499857) (not b!6499870))
(check-sat)
(get-model)

(declare-fun d!2039610 () Bool)

(declare-fun c!1191682 () Bool)

(declare-fun isEmpty!37507 (List!65431) Bool)

(assert (=> d!2039610 (= c!1191682 (isEmpty!37507 s!2326))))

(declare-fun e!3938673 () Bool)

(assert (=> d!2039610 (= (matchZipper!2389 z!1189 s!2326) e!3938673)))

(declare-fun b!6499892 () Bool)

(declare-fun nullableZipper!2131 ((InoxSet Context!11522)) Bool)

(assert (=> b!6499892 (= e!3938673 (nullableZipper!2131 z!1189))))

(declare-fun b!6499893 () Bool)

(declare-fun head!13223 (List!65431) C!33024)

(declare-fun tail!12308 (List!65431) List!65431)

(assert (=> b!6499893 (= e!3938673 (matchZipper!2389 (derivationStepZipper!2343 z!1189 (head!13223 s!2326)) (tail!12308 s!2326)))))

(assert (= (and d!2039610 c!1191682) b!6499892))

(assert (= (and d!2039610 (not c!1191682)) b!6499893))

(declare-fun m!7287980 () Bool)

(assert (=> d!2039610 m!7287980))

(declare-fun m!7287982 () Bool)

(assert (=> b!6499892 m!7287982))

(declare-fun m!7287984 () Bool)

(assert (=> b!6499893 m!7287984))

(assert (=> b!6499893 m!7287984))

(declare-fun m!7287986 () Bool)

(assert (=> b!6499893 m!7287986))

(declare-fun m!7287988 () Bool)

(assert (=> b!6499893 m!7287988))

(assert (=> b!6499893 m!7287986))

(assert (=> b!6499893 m!7287988))

(declare-fun m!7287990 () Bool)

(assert (=> b!6499893 m!7287990))

(assert (=> b!6499868 d!2039610))

(declare-fun d!2039612 () Bool)

(declare-fun c!1191683 () Bool)

(assert (=> d!2039612 (= c!1191683 (isEmpty!37507 (t!379065 s!2326)))))

(declare-fun e!3938674 () Bool)

(assert (=> d!2039612 (= (matchZipper!2389 lt!2391398 (t!379065 s!2326)) e!3938674)))

(declare-fun b!6499894 () Bool)

(assert (=> b!6499894 (= e!3938674 (nullableZipper!2131 lt!2391398))))

(declare-fun b!6499895 () Bool)

(assert (=> b!6499895 (= e!3938674 (matchZipper!2389 (derivationStepZipper!2343 lt!2391398 (head!13223 (t!379065 s!2326))) (tail!12308 (t!379065 s!2326))))))

(assert (= (and d!2039612 c!1191683) b!6499894))

(assert (= (and d!2039612 (not c!1191683)) b!6499895))

(declare-fun m!7287992 () Bool)

(assert (=> d!2039612 m!7287992))

(declare-fun m!7287994 () Bool)

(assert (=> b!6499894 m!7287994))

(declare-fun m!7287996 () Bool)

(assert (=> b!6499895 m!7287996))

(assert (=> b!6499895 m!7287996))

(declare-fun m!7287998 () Bool)

(assert (=> b!6499895 m!7287998))

(declare-fun m!7288000 () Bool)

(assert (=> b!6499895 m!7288000))

(assert (=> b!6499895 m!7287998))

(assert (=> b!6499895 m!7288000))

(declare-fun m!7288002 () Bool)

(assert (=> b!6499895 m!7288002))

(assert (=> b!6499847 d!2039612))

(declare-fun d!2039614 () Bool)

(assert (=> d!2039614 (= (isEmpty!37505 (t!379064 (exprs!6261 (h!71756 zl!343)))) ((_ is Nil!65306) (t!379064 (exprs!6261 (h!71756 zl!343)))))))

(assert (=> b!6499866 d!2039614))

(declare-fun d!2039616 () Bool)

(assert (=> d!2039616 (= (isEmpty!37506 (t!379066 zl!343)) ((_ is Nil!65308) (t!379066 zl!343)))))

(assert (=> b!6499867 d!2039616))

(declare-fun d!2039618 () Bool)

(declare-fun c!1191684 () Bool)

(assert (=> d!2039618 (= c!1191684 (isEmpty!37507 (t!379065 s!2326)))))

(declare-fun e!3938675 () Bool)

(assert (=> d!2039618 (= (matchZipper!2389 lt!2391370 (t!379065 s!2326)) e!3938675)))

(declare-fun b!6499896 () Bool)

(assert (=> b!6499896 (= e!3938675 (nullableZipper!2131 lt!2391370))))

(declare-fun b!6499897 () Bool)

(assert (=> b!6499897 (= e!3938675 (matchZipper!2389 (derivationStepZipper!2343 lt!2391370 (head!13223 (t!379065 s!2326))) (tail!12308 (t!379065 s!2326))))))

(assert (= (and d!2039618 c!1191684) b!6499896))

(assert (= (and d!2039618 (not c!1191684)) b!6499897))

(assert (=> d!2039618 m!7287992))

(declare-fun m!7288004 () Bool)

(assert (=> b!6499896 m!7288004))

(assert (=> b!6499897 m!7287996))

(assert (=> b!6499897 m!7287996))

(declare-fun m!7288006 () Bool)

(assert (=> b!6499897 m!7288006))

(assert (=> b!6499897 m!7288000))

(assert (=> b!6499897 m!7288006))

(assert (=> b!6499897 m!7288000))

(declare-fun m!7288008 () Bool)

(assert (=> b!6499897 m!7288008))

(assert (=> b!6499865 d!2039618))

(declare-fun d!2039620 () Bool)

(declare-fun nullableFct!2305 (Regex!16377) Bool)

(assert (=> d!2039620 (= (nullable!6370 (regOne!33266 (regOne!33266 r!7292))) (nullableFct!2305 (regOne!33266 (regOne!33266 r!7292))))))

(declare-fun bs!1651192 () Bool)

(assert (= bs!1651192 d!2039620))

(declare-fun m!7288010 () Bool)

(assert (=> bs!1651192 m!7288010))

(assert (=> b!6499844 d!2039620))

(declare-fun d!2039622 () Bool)

(declare-fun choose!48239 ((InoxSet Context!11522) Int) (InoxSet Context!11522))

(assert (=> d!2039622 (= (flatMap!1882 lt!2391379 lambda!360176) (choose!48239 lt!2391379 lambda!360176))))

(declare-fun bs!1651193 () Bool)

(assert (= bs!1651193 d!2039622))

(declare-fun m!7288012 () Bool)

(assert (=> bs!1651193 m!7288012))

(assert (=> b!6499843 d!2039622))

(declare-fun b!6499908 () Bool)

(declare-fun e!3938682 () (InoxSet Context!11522))

(declare-fun call!563192 () (InoxSet Context!11522))

(assert (=> b!6499908 (= e!3938682 call!563192)))

(declare-fun b!6499909 () Bool)

(assert (=> b!6499909 (= e!3938682 ((as const (Array Context!11522 Bool)) false))))

(declare-fun d!2039624 () Bool)

(declare-fun c!1191690 () Bool)

(declare-fun e!3938683 () Bool)

(assert (=> d!2039624 (= c!1191690 e!3938683)))

(declare-fun res!2669353 () Bool)

(assert (=> d!2039624 (=> (not res!2669353) (not e!3938683))))

(assert (=> d!2039624 (= res!2669353 ((_ is Cons!65306) (exprs!6261 lt!2391368)))))

(declare-fun e!3938684 () (InoxSet Context!11522))

(assert (=> d!2039624 (= (derivationStepZipperUp!1551 lt!2391368 (h!71755 s!2326)) e!3938684)))

(declare-fun b!6499910 () Bool)

(assert (=> b!6499910 (= e!3938684 ((_ map or) call!563192 (derivationStepZipperUp!1551 (Context!11523 (t!379064 (exprs!6261 lt!2391368))) (h!71755 s!2326))))))

(declare-fun bm!563187 () Bool)

(assert (=> bm!563187 (= call!563192 (derivationStepZipperDown!1625 (h!71754 (exprs!6261 lt!2391368)) (Context!11523 (t!379064 (exprs!6261 lt!2391368))) (h!71755 s!2326)))))

(declare-fun b!6499911 () Bool)

(assert (=> b!6499911 (= e!3938683 (nullable!6370 (h!71754 (exprs!6261 lt!2391368))))))

(declare-fun b!6499912 () Bool)

(assert (=> b!6499912 (= e!3938684 e!3938682)))

(declare-fun c!1191689 () Bool)

(assert (=> b!6499912 (= c!1191689 ((_ is Cons!65306) (exprs!6261 lt!2391368)))))

(assert (= (and d!2039624 res!2669353) b!6499911))

(assert (= (and d!2039624 c!1191690) b!6499910))

(assert (= (and d!2039624 (not c!1191690)) b!6499912))

(assert (= (and b!6499912 c!1191689) b!6499908))

(assert (= (and b!6499912 (not c!1191689)) b!6499909))

(assert (= (or b!6499910 b!6499908) bm!563187))

(declare-fun m!7288014 () Bool)

(assert (=> b!6499910 m!7288014))

(declare-fun m!7288016 () Bool)

(assert (=> bm!563187 m!7288016))

(declare-fun m!7288018 () Bool)

(assert (=> b!6499911 m!7288018))

(assert (=> b!6499843 d!2039624))

(declare-fun d!2039626 () Bool)

(declare-fun dynLambda!25942 (Int Context!11522) (InoxSet Context!11522))

(assert (=> d!2039626 (= (flatMap!1882 lt!2391379 lambda!360176) (dynLambda!25942 lambda!360176 lt!2391368))))

(declare-fun lt!2391405 () Unit!158843)

(declare-fun choose!48240 ((InoxSet Context!11522) Context!11522 Int) Unit!158843)

(assert (=> d!2039626 (= lt!2391405 (choose!48240 lt!2391379 lt!2391368 lambda!360176))))

(assert (=> d!2039626 (= lt!2391379 (store ((as const (Array Context!11522 Bool)) false) lt!2391368 true))))

(assert (=> d!2039626 (= (lemmaFlatMapOnSingletonSet!1408 lt!2391379 lt!2391368 lambda!360176) lt!2391405)))

(declare-fun b_lambda!246073 () Bool)

(assert (=> (not b_lambda!246073) (not d!2039626)))

(declare-fun bs!1651194 () Bool)

(assert (= bs!1651194 d!2039626))

(assert (=> bs!1651194 m!7287906))

(declare-fun m!7288020 () Bool)

(assert (=> bs!1651194 m!7288020))

(declare-fun m!7288022 () Bool)

(assert (=> bs!1651194 m!7288022))

(assert (=> bs!1651194 m!7287904))

(assert (=> b!6499843 d!2039626))

(declare-fun bs!1651195 () Bool)

(declare-fun d!2039628 () Bool)

(assert (= bs!1651195 (and d!2039628 b!6499858)))

(declare-fun lambda!360179 () Int)

(assert (=> bs!1651195 (= lambda!360179 lambda!360176)))

(assert (=> d!2039628 true))

(assert (=> d!2039628 (= (derivationStepZipper!2343 lt!2391379 (h!71755 s!2326)) (flatMap!1882 lt!2391379 lambda!360179))))

(declare-fun bs!1651196 () Bool)

(assert (= bs!1651196 d!2039628))

(declare-fun m!7288024 () Bool)

(assert (=> bs!1651196 m!7288024))

(assert (=> b!6499843 d!2039628))

(declare-fun d!2039630 () Bool)

(declare-fun lambda!360182 () Int)

(declare-fun forall!15557 (List!65430 Int) Bool)

(assert (=> d!2039630 (= (inv!84189 lt!2391372) (forall!15557 (exprs!6261 lt!2391372) lambda!360182))))

(declare-fun bs!1651197 () Bool)

(assert (= bs!1651197 d!2039630))

(declare-fun m!7288026 () Bool)

(assert (=> bs!1651197 m!7288026))

(assert (=> b!6499842 d!2039630))

(declare-fun d!2039632 () Bool)

(declare-fun lt!2391408 () Regex!16377)

(assert (=> d!2039632 (validRegex!8113 lt!2391408)))

(assert (=> d!2039632 (= lt!2391408 (generalisedUnion!2221 (unfocusZipperList!1798 (Cons!65308 lt!2391372 Nil!65308))))))

(assert (=> d!2039632 (= (unfocusZipper!2119 (Cons!65308 lt!2391372 Nil!65308)) lt!2391408)))

(declare-fun bs!1651198 () Bool)

(assert (= bs!1651198 d!2039632))

(declare-fun m!7288028 () Bool)

(assert (=> bs!1651198 m!7288028))

(declare-fun m!7288030 () Bool)

(assert (=> bs!1651198 m!7288030))

(assert (=> bs!1651198 m!7288030))

(declare-fun m!7288032 () Bool)

(assert (=> bs!1651198 m!7288032))

(assert (=> b!6499861 d!2039632))

(declare-fun d!2039634 () Bool)

(declare-fun e!3938687 () Bool)

(assert (=> d!2039634 (= (matchZipper!2389 ((_ map or) lt!2391398 lt!2391370) (t!379065 s!2326)) e!3938687)))

(declare-fun res!2669356 () Bool)

(assert (=> d!2039634 (=> res!2669356 e!3938687)))

(assert (=> d!2039634 (= res!2669356 (matchZipper!2389 lt!2391398 (t!379065 s!2326)))))

(declare-fun lt!2391411 () Unit!158843)

(declare-fun choose!48241 ((InoxSet Context!11522) (InoxSet Context!11522) List!65431) Unit!158843)

(assert (=> d!2039634 (= lt!2391411 (choose!48241 lt!2391398 lt!2391370 (t!379065 s!2326)))))

(assert (=> d!2039634 (= (lemmaZipperConcatMatchesSameAsBothZippers!1208 lt!2391398 lt!2391370 (t!379065 s!2326)) lt!2391411)))

(declare-fun b!6499917 () Bool)

(assert (=> b!6499917 (= e!3938687 (matchZipper!2389 lt!2391370 (t!379065 s!2326)))))

(assert (= (and d!2039634 (not res!2669356)) b!6499917))

(assert (=> d!2039634 m!7287978))

(assert (=> d!2039634 m!7287922))

(declare-fun m!7288034 () Bool)

(assert (=> d!2039634 m!7288034))

(assert (=> b!6499917 m!7287878))

(assert (=> b!6499860 d!2039634))

(assert (=> b!6499860 d!2039612))

(declare-fun d!2039636 () Bool)

(declare-fun c!1191693 () Bool)

(assert (=> d!2039636 (= c!1191693 (isEmpty!37507 (t!379065 s!2326)))))

(declare-fun e!3938688 () Bool)

(assert (=> d!2039636 (= (matchZipper!2389 ((_ map or) lt!2391398 lt!2391370) (t!379065 s!2326)) e!3938688)))

(declare-fun b!6499918 () Bool)

(assert (=> b!6499918 (= e!3938688 (nullableZipper!2131 ((_ map or) lt!2391398 lt!2391370)))))

(declare-fun b!6499919 () Bool)

(assert (=> b!6499919 (= e!3938688 (matchZipper!2389 (derivationStepZipper!2343 ((_ map or) lt!2391398 lt!2391370) (head!13223 (t!379065 s!2326))) (tail!12308 (t!379065 s!2326))))))

(assert (= (and d!2039636 c!1191693) b!6499918))

(assert (= (and d!2039636 (not c!1191693)) b!6499919))

(assert (=> d!2039636 m!7287992))

(declare-fun m!7288036 () Bool)

(assert (=> b!6499918 m!7288036))

(assert (=> b!6499919 m!7287996))

(assert (=> b!6499919 m!7287996))

(declare-fun m!7288038 () Bool)

(assert (=> b!6499919 m!7288038))

(assert (=> b!6499919 m!7288000))

(assert (=> b!6499919 m!7288038))

(assert (=> b!6499919 m!7288000))

(declare-fun m!7288040 () Bool)

(assert (=> b!6499919 m!7288040))

(assert (=> b!6499860 d!2039636))

(declare-fun b!6499942 () Bool)

(declare-fun e!3938706 () (InoxSet Context!11522))

(assert (=> b!6499942 (= e!3938706 (store ((as const (Array Context!11522 Bool)) false) lt!2391382 true))))

(declare-fun b!6499943 () Bool)

(declare-fun e!3938705 () (InoxSet Context!11522))

(declare-fun e!3938703 () (InoxSet Context!11522))

(assert (=> b!6499943 (= e!3938705 e!3938703)))

(declare-fun c!1191707 () Bool)

(assert (=> b!6499943 (= c!1191707 ((_ is Concat!25222) (h!71754 (exprs!6261 (h!71756 zl!343)))))))

(declare-fun b!6499944 () Bool)

(declare-fun e!3938704 () Bool)

(assert (=> b!6499944 (= e!3938704 (nullable!6370 (regOne!33266 (h!71754 (exprs!6261 (h!71756 zl!343))))))))

(declare-fun b!6499945 () Bool)

(declare-fun call!563206 () (InoxSet Context!11522))

(declare-fun call!563209 () (InoxSet Context!11522))

(assert (=> b!6499945 (= e!3938705 ((_ map or) call!563206 call!563209))))

(declare-fun b!6499946 () Bool)

(declare-fun e!3938702 () (InoxSet Context!11522))

(declare-fun call!563205 () (InoxSet Context!11522))

(assert (=> b!6499946 (= e!3938702 ((_ map or) call!563206 call!563205))))

(declare-fun bm!563200 () Bool)

(declare-fun call!563210 () (InoxSet Context!11522))

(assert (=> bm!563200 (= call!563210 call!563209)))

(declare-fun b!6499947 () Bool)

(assert (=> b!6499947 (= e!3938706 e!3938702)))

(declare-fun c!1191708 () Bool)

(assert (=> b!6499947 (= c!1191708 ((_ is Union!16377) (h!71754 (exprs!6261 (h!71756 zl!343)))))))

(declare-fun d!2039638 () Bool)

(declare-fun c!1191704 () Bool)

(assert (=> d!2039638 (= c!1191704 (and ((_ is ElementMatch!16377) (h!71754 (exprs!6261 (h!71756 zl!343)))) (= (c!1191679 (h!71754 (exprs!6261 (h!71756 zl!343)))) (h!71755 s!2326))))))

(assert (=> d!2039638 (= (derivationStepZipperDown!1625 (h!71754 (exprs!6261 (h!71756 zl!343))) lt!2391382 (h!71755 s!2326)) e!3938706)))

(declare-fun call!563207 () List!65430)

(declare-fun bm!563201 () Bool)

(assert (=> bm!563201 (= call!563206 (derivationStepZipperDown!1625 (ite c!1191708 (regOne!33267 (h!71754 (exprs!6261 (h!71756 zl!343)))) (regOne!33266 (h!71754 (exprs!6261 (h!71756 zl!343))))) (ite c!1191708 lt!2391382 (Context!11523 call!563207)) (h!71755 s!2326)))))

(declare-fun b!6499948 () Bool)

(declare-fun c!1191706 () Bool)

(assert (=> b!6499948 (= c!1191706 e!3938704)))

(declare-fun res!2669359 () Bool)

(assert (=> b!6499948 (=> (not res!2669359) (not e!3938704))))

(assert (=> b!6499948 (= res!2669359 ((_ is Concat!25222) (h!71754 (exprs!6261 (h!71756 zl!343)))))))

(assert (=> b!6499948 (= e!3938702 e!3938705)))

(declare-fun bm!563202 () Bool)

(assert (=> bm!563202 (= call!563209 call!563205)))

(declare-fun b!6499949 () Bool)

(declare-fun c!1191705 () Bool)

(assert (=> b!6499949 (= c!1191705 ((_ is Star!16377) (h!71754 (exprs!6261 (h!71756 zl!343)))))))

(declare-fun e!3938701 () (InoxSet Context!11522))

(assert (=> b!6499949 (= e!3938703 e!3938701)))

(declare-fun bm!563203 () Bool)

(declare-fun $colon$colon!2227 (List!65430 Regex!16377) List!65430)

(assert (=> bm!563203 (= call!563207 ($colon$colon!2227 (exprs!6261 lt!2391382) (ite (or c!1191706 c!1191707) (regTwo!33266 (h!71754 (exprs!6261 (h!71756 zl!343)))) (h!71754 (exprs!6261 (h!71756 zl!343))))))))

(declare-fun b!6499950 () Bool)

(assert (=> b!6499950 (= e!3938701 call!563210)))

(declare-fun call!563208 () List!65430)

(declare-fun bm!563204 () Bool)

(assert (=> bm!563204 (= call!563205 (derivationStepZipperDown!1625 (ite c!1191708 (regTwo!33267 (h!71754 (exprs!6261 (h!71756 zl!343)))) (ite c!1191706 (regTwo!33266 (h!71754 (exprs!6261 (h!71756 zl!343)))) (ite c!1191707 (regOne!33266 (h!71754 (exprs!6261 (h!71756 zl!343)))) (reg!16706 (h!71754 (exprs!6261 (h!71756 zl!343))))))) (ite (or c!1191708 c!1191706) lt!2391382 (Context!11523 call!563208)) (h!71755 s!2326)))))

(declare-fun b!6499951 () Bool)

(assert (=> b!6499951 (= e!3938701 ((as const (Array Context!11522 Bool)) false))))

(declare-fun bm!563205 () Bool)

(assert (=> bm!563205 (= call!563208 call!563207)))

(declare-fun b!6499952 () Bool)

(assert (=> b!6499952 (= e!3938703 call!563210)))

(assert (= (and d!2039638 c!1191704) b!6499942))

(assert (= (and d!2039638 (not c!1191704)) b!6499947))

(assert (= (and b!6499947 c!1191708) b!6499946))

(assert (= (and b!6499947 (not c!1191708)) b!6499948))

(assert (= (and b!6499948 res!2669359) b!6499944))

(assert (= (and b!6499948 c!1191706) b!6499945))

(assert (= (and b!6499948 (not c!1191706)) b!6499943))

(assert (= (and b!6499943 c!1191707) b!6499952))

(assert (= (and b!6499943 (not c!1191707)) b!6499949))

(assert (= (and b!6499949 c!1191705) b!6499950))

(assert (= (and b!6499949 (not c!1191705)) b!6499951))

(assert (= (or b!6499952 b!6499950) bm!563205))

(assert (= (or b!6499952 b!6499950) bm!563200))

(assert (= (or b!6499945 bm!563205) bm!563203))

(assert (= (or b!6499945 bm!563200) bm!563202))

(assert (= (or b!6499946 bm!563202) bm!563204))

(assert (= (or b!6499946 b!6499945) bm!563201))

(declare-fun m!7288042 () Bool)

(assert (=> bm!563203 m!7288042))

(declare-fun m!7288044 () Bool)

(assert (=> b!6499944 m!7288044))

(declare-fun m!7288046 () Bool)

(assert (=> bm!563201 m!7288046))

(declare-fun m!7288048 () Bool)

(assert (=> bm!563204 m!7288048))

(declare-fun m!7288050 () Bool)

(assert (=> b!6499942 m!7288050))

(assert (=> b!6499858 d!2039638))

(declare-fun b!6499953 () Bool)

(declare-fun e!3938707 () (InoxSet Context!11522))

(declare-fun call!563211 () (InoxSet Context!11522))

(assert (=> b!6499953 (= e!3938707 call!563211)))

(declare-fun b!6499954 () Bool)

(assert (=> b!6499954 (= e!3938707 ((as const (Array Context!11522 Bool)) false))))

(declare-fun d!2039642 () Bool)

(declare-fun c!1191710 () Bool)

(declare-fun e!3938708 () Bool)

(assert (=> d!2039642 (= c!1191710 e!3938708)))

(declare-fun res!2669360 () Bool)

(assert (=> d!2039642 (=> (not res!2669360) (not e!3938708))))

(assert (=> d!2039642 (= res!2669360 ((_ is Cons!65306) (exprs!6261 lt!2391382)))))

(declare-fun e!3938709 () (InoxSet Context!11522))

(assert (=> d!2039642 (= (derivationStepZipperUp!1551 lt!2391382 (h!71755 s!2326)) e!3938709)))

(declare-fun b!6499955 () Bool)

(assert (=> b!6499955 (= e!3938709 ((_ map or) call!563211 (derivationStepZipperUp!1551 (Context!11523 (t!379064 (exprs!6261 lt!2391382))) (h!71755 s!2326))))))

(declare-fun bm!563206 () Bool)

(assert (=> bm!563206 (= call!563211 (derivationStepZipperDown!1625 (h!71754 (exprs!6261 lt!2391382)) (Context!11523 (t!379064 (exprs!6261 lt!2391382))) (h!71755 s!2326)))))

(declare-fun b!6499956 () Bool)

(assert (=> b!6499956 (= e!3938708 (nullable!6370 (h!71754 (exprs!6261 lt!2391382))))))

(declare-fun b!6499957 () Bool)

(assert (=> b!6499957 (= e!3938709 e!3938707)))

(declare-fun c!1191709 () Bool)

(assert (=> b!6499957 (= c!1191709 ((_ is Cons!65306) (exprs!6261 lt!2391382)))))

(assert (= (and d!2039642 res!2669360) b!6499956))

(assert (= (and d!2039642 c!1191710) b!6499955))

(assert (= (and d!2039642 (not c!1191710)) b!6499957))

(assert (= (and b!6499957 c!1191709) b!6499953))

(assert (= (and b!6499957 (not c!1191709)) b!6499954))

(assert (= (or b!6499955 b!6499953) bm!563206))

(declare-fun m!7288052 () Bool)

(assert (=> b!6499955 m!7288052))

(declare-fun m!7288054 () Bool)

(assert (=> bm!563206 m!7288054))

(declare-fun m!7288056 () Bool)

(assert (=> b!6499956 m!7288056))

(assert (=> b!6499858 d!2039642))

(declare-fun d!2039644 () Bool)

(assert (=> d!2039644 (= (nullable!6370 (h!71754 (exprs!6261 (h!71756 zl!343)))) (nullableFct!2305 (h!71754 (exprs!6261 (h!71756 zl!343)))))))

(declare-fun bs!1651199 () Bool)

(assert (= bs!1651199 d!2039644))

(declare-fun m!7288058 () Bool)

(assert (=> bs!1651199 m!7288058))

(assert (=> b!6499858 d!2039644))

(declare-fun b!6499958 () Bool)

(declare-fun e!3938710 () (InoxSet Context!11522))

(declare-fun call!563212 () (InoxSet Context!11522))

(assert (=> b!6499958 (= e!3938710 call!563212)))

(declare-fun b!6499959 () Bool)

(assert (=> b!6499959 (= e!3938710 ((as const (Array Context!11522 Bool)) false))))

(declare-fun d!2039646 () Bool)

(declare-fun c!1191712 () Bool)

(declare-fun e!3938711 () Bool)

(assert (=> d!2039646 (= c!1191712 e!3938711)))

(declare-fun res!2669361 () Bool)

(assert (=> d!2039646 (=> (not res!2669361) (not e!3938711))))

(assert (=> d!2039646 (= res!2669361 ((_ is Cons!65306) (exprs!6261 (h!71756 zl!343))))))

(declare-fun e!3938712 () (InoxSet Context!11522))

(assert (=> d!2039646 (= (derivationStepZipperUp!1551 (h!71756 zl!343) (h!71755 s!2326)) e!3938712)))

(declare-fun b!6499960 () Bool)

(assert (=> b!6499960 (= e!3938712 ((_ map or) call!563212 (derivationStepZipperUp!1551 (Context!11523 (t!379064 (exprs!6261 (h!71756 zl!343)))) (h!71755 s!2326))))))

(declare-fun bm!563207 () Bool)

(assert (=> bm!563207 (= call!563212 (derivationStepZipperDown!1625 (h!71754 (exprs!6261 (h!71756 zl!343))) (Context!11523 (t!379064 (exprs!6261 (h!71756 zl!343)))) (h!71755 s!2326)))))

(declare-fun b!6499961 () Bool)

(assert (=> b!6499961 (= e!3938711 (nullable!6370 (h!71754 (exprs!6261 (h!71756 zl!343)))))))

(declare-fun b!6499962 () Bool)

(assert (=> b!6499962 (= e!3938712 e!3938710)))

(declare-fun c!1191711 () Bool)

(assert (=> b!6499962 (= c!1191711 ((_ is Cons!65306) (exprs!6261 (h!71756 zl!343))))))

(assert (= (and d!2039646 res!2669361) b!6499961))

(assert (= (and d!2039646 c!1191712) b!6499960))

(assert (= (and d!2039646 (not c!1191712)) b!6499962))

(assert (= (and b!6499962 c!1191711) b!6499958))

(assert (= (and b!6499962 (not c!1191711)) b!6499959))

(assert (= (or b!6499960 b!6499958) bm!563207))

(declare-fun m!7288060 () Bool)

(assert (=> b!6499960 m!7288060))

(declare-fun m!7288062 () Bool)

(assert (=> bm!563207 m!7288062))

(assert (=> b!6499961 m!7287968))

(assert (=> b!6499858 d!2039646))

(declare-fun d!2039648 () Bool)

(assert (=> d!2039648 (= (flatMap!1882 z!1189 lambda!360176) (dynLambda!25942 lambda!360176 (h!71756 zl!343)))))

(declare-fun lt!2391412 () Unit!158843)

(assert (=> d!2039648 (= lt!2391412 (choose!48240 z!1189 (h!71756 zl!343) lambda!360176))))

(assert (=> d!2039648 (= z!1189 (store ((as const (Array Context!11522 Bool)) false) (h!71756 zl!343) true))))

(assert (=> d!2039648 (= (lemmaFlatMapOnSingletonSet!1408 z!1189 (h!71756 zl!343) lambda!360176) lt!2391412)))

(declare-fun b_lambda!246075 () Bool)

(assert (=> (not b_lambda!246075) (not d!2039648)))

(declare-fun bs!1651200 () Bool)

(assert (= bs!1651200 d!2039648))

(assert (=> bs!1651200 m!7287962))

(declare-fun m!7288064 () Bool)

(assert (=> bs!1651200 m!7288064))

(declare-fun m!7288066 () Bool)

(assert (=> bs!1651200 m!7288066))

(declare-fun m!7288068 () Bool)

(assert (=> bs!1651200 m!7288068))

(assert (=> b!6499858 d!2039648))

(declare-fun b!6499963 () Bool)

(declare-fun e!3938713 () (InoxSet Context!11522))

(declare-fun call!563213 () (InoxSet Context!11522))

(assert (=> b!6499963 (= e!3938713 call!563213)))

(declare-fun b!6499964 () Bool)

(assert (=> b!6499964 (= e!3938713 ((as const (Array Context!11522 Bool)) false))))

(declare-fun d!2039650 () Bool)

(declare-fun c!1191714 () Bool)

(declare-fun e!3938714 () Bool)

(assert (=> d!2039650 (= c!1191714 e!3938714)))

(declare-fun res!2669362 () Bool)

(assert (=> d!2039650 (=> (not res!2669362) (not e!3938714))))

(assert (=> d!2039650 (= res!2669362 ((_ is Cons!65306) (exprs!6261 (Context!11523 (Cons!65306 (h!71754 (exprs!6261 (h!71756 zl!343))) (t!379064 (exprs!6261 (h!71756 zl!343))))))))))

(declare-fun e!3938715 () (InoxSet Context!11522))

(assert (=> d!2039650 (= (derivationStepZipperUp!1551 (Context!11523 (Cons!65306 (h!71754 (exprs!6261 (h!71756 zl!343))) (t!379064 (exprs!6261 (h!71756 zl!343))))) (h!71755 s!2326)) e!3938715)))

(declare-fun b!6499965 () Bool)

(assert (=> b!6499965 (= e!3938715 ((_ map or) call!563213 (derivationStepZipperUp!1551 (Context!11523 (t!379064 (exprs!6261 (Context!11523 (Cons!65306 (h!71754 (exprs!6261 (h!71756 zl!343))) (t!379064 (exprs!6261 (h!71756 zl!343)))))))) (h!71755 s!2326))))))

(declare-fun bm!563208 () Bool)

(assert (=> bm!563208 (= call!563213 (derivationStepZipperDown!1625 (h!71754 (exprs!6261 (Context!11523 (Cons!65306 (h!71754 (exprs!6261 (h!71756 zl!343))) (t!379064 (exprs!6261 (h!71756 zl!343))))))) (Context!11523 (t!379064 (exprs!6261 (Context!11523 (Cons!65306 (h!71754 (exprs!6261 (h!71756 zl!343))) (t!379064 (exprs!6261 (h!71756 zl!343)))))))) (h!71755 s!2326)))))

(declare-fun b!6499966 () Bool)

(assert (=> b!6499966 (= e!3938714 (nullable!6370 (h!71754 (exprs!6261 (Context!11523 (Cons!65306 (h!71754 (exprs!6261 (h!71756 zl!343))) (t!379064 (exprs!6261 (h!71756 zl!343)))))))))))

(declare-fun b!6499967 () Bool)

(assert (=> b!6499967 (= e!3938715 e!3938713)))

(declare-fun c!1191713 () Bool)

(assert (=> b!6499967 (= c!1191713 ((_ is Cons!65306) (exprs!6261 (Context!11523 (Cons!65306 (h!71754 (exprs!6261 (h!71756 zl!343))) (t!379064 (exprs!6261 (h!71756 zl!343))))))))))

(assert (= (and d!2039650 res!2669362) b!6499966))

(assert (= (and d!2039650 c!1191714) b!6499965))

(assert (= (and d!2039650 (not c!1191714)) b!6499967))

(assert (= (and b!6499967 c!1191713) b!6499963))

(assert (= (and b!6499967 (not c!1191713)) b!6499964))

(assert (= (or b!6499965 b!6499963) bm!563208))

(declare-fun m!7288070 () Bool)

(assert (=> b!6499965 m!7288070))

(declare-fun m!7288072 () Bool)

(assert (=> bm!563208 m!7288072))

(declare-fun m!7288074 () Bool)

(assert (=> b!6499966 m!7288074))

(assert (=> b!6499858 d!2039650))

(declare-fun d!2039652 () Bool)

(assert (=> d!2039652 (= (flatMap!1882 z!1189 lambda!360176) (choose!48239 z!1189 lambda!360176))))

(declare-fun bs!1651201 () Bool)

(assert (= bs!1651201 d!2039652))

(declare-fun m!7288076 () Bool)

(assert (=> bs!1651201 m!7288076))

(assert (=> b!6499858 d!2039652))

(declare-fun b!6500004 () Bool)

(declare-fun res!2669387 () Bool)

(declare-fun e!3938742 () Bool)

(assert (=> b!6500004 (=> res!2669387 e!3938742)))

(assert (=> b!6500004 (= res!2669387 (not ((_ is Concat!25222) r!7292)))))

(declare-fun e!3938740 () Bool)

(assert (=> b!6500004 (= e!3938740 e!3938742)))

(declare-fun b!6500005 () Bool)

(declare-fun e!3938741 () Bool)

(declare-fun e!3938744 () Bool)

(assert (=> b!6500005 (= e!3938741 e!3938744)))

(declare-fun res!2669386 () Bool)

(assert (=> b!6500005 (= res!2669386 (not (nullable!6370 (reg!16706 r!7292))))))

(assert (=> b!6500005 (=> (not res!2669386) (not e!3938744))))

(declare-fun b!6500006 () Bool)

(declare-fun e!3938746 () Bool)

(assert (=> b!6500006 (= e!3938742 e!3938746)))

(declare-fun res!2669384 () Bool)

(assert (=> b!6500006 (=> (not res!2669384) (not e!3938746))))

(declare-fun call!563222 () Bool)

(assert (=> b!6500006 (= res!2669384 call!563222)))

(declare-fun bm!563215 () Bool)

(declare-fun c!1191723 () Bool)

(declare-fun call!563220 () Bool)

(declare-fun c!1191724 () Bool)

(assert (=> bm!563215 (= call!563220 (validRegex!8113 (ite c!1191724 (reg!16706 r!7292) (ite c!1191723 (regOne!33267 r!7292) (regOne!33266 r!7292)))))))

(declare-fun b!6500007 () Bool)

(declare-fun e!3938745 () Bool)

(declare-fun call!563221 () Bool)

(assert (=> b!6500007 (= e!3938745 call!563221)))

(declare-fun b!6500008 () Bool)

(assert (=> b!6500008 (= e!3938746 call!563221)))

(declare-fun d!2039654 () Bool)

(declare-fun res!2669385 () Bool)

(declare-fun e!3938743 () Bool)

(assert (=> d!2039654 (=> res!2669385 e!3938743)))

(assert (=> d!2039654 (= res!2669385 ((_ is ElementMatch!16377) r!7292))))

(assert (=> d!2039654 (= (validRegex!8113 r!7292) e!3938743)))

(declare-fun b!6500009 () Bool)

(assert (=> b!6500009 (= e!3938743 e!3938741)))

(assert (=> b!6500009 (= c!1191724 ((_ is Star!16377) r!7292))))

(declare-fun bm!563216 () Bool)

(assert (=> bm!563216 (= call!563222 call!563220)))

(declare-fun b!6500010 () Bool)

(assert (=> b!6500010 (= e!3938744 call!563220)))

(declare-fun b!6500011 () Bool)

(declare-fun res!2669383 () Bool)

(assert (=> b!6500011 (=> (not res!2669383) (not e!3938745))))

(assert (=> b!6500011 (= res!2669383 call!563222)))

(assert (=> b!6500011 (= e!3938740 e!3938745)))

(declare-fun bm!563217 () Bool)

(assert (=> bm!563217 (= call!563221 (validRegex!8113 (ite c!1191723 (regTwo!33267 r!7292) (regTwo!33266 r!7292))))))

(declare-fun b!6500012 () Bool)

(assert (=> b!6500012 (= e!3938741 e!3938740)))

(assert (=> b!6500012 (= c!1191723 ((_ is Union!16377) r!7292))))

(assert (= (and d!2039654 (not res!2669385)) b!6500009))

(assert (= (and b!6500009 c!1191724) b!6500005))

(assert (= (and b!6500009 (not c!1191724)) b!6500012))

(assert (= (and b!6500005 res!2669386) b!6500010))

(assert (= (and b!6500012 c!1191723) b!6500011))

(assert (= (and b!6500012 (not c!1191723)) b!6500004))

(assert (= (and b!6500011 res!2669383) b!6500007))

(assert (= (and b!6500004 (not res!2669387)) b!6500006))

(assert (= (and b!6500006 res!2669384) b!6500008))

(assert (= (or b!6500007 b!6500008) bm!563217))

(assert (= (or b!6500011 b!6500006) bm!563216))

(assert (= (or b!6500010 bm!563216) bm!563215))

(declare-fun m!7288078 () Bool)

(assert (=> b!6500005 m!7288078))

(declare-fun m!7288080 () Bool)

(assert (=> bm!563215 m!7288080))

(declare-fun m!7288082 () Bool)

(assert (=> bm!563217 m!7288082))

(assert (=> start!638606 d!2039654))

(declare-fun b!6500013 () Bool)

(declare-fun e!3938752 () (InoxSet Context!11522))

(assert (=> b!6500013 (= e!3938752 (store ((as const (Array Context!11522 Bool)) false) lt!2391372 true))))

(declare-fun b!6500014 () Bool)

(declare-fun e!3938751 () (InoxSet Context!11522))

(declare-fun e!3938749 () (InoxSet Context!11522))

(assert (=> b!6500014 (= e!3938751 e!3938749)))

(declare-fun c!1191728 () Bool)

(assert (=> b!6500014 (= c!1191728 ((_ is Concat!25222) (reg!16706 (regOne!33266 r!7292))))))

(declare-fun b!6500015 () Bool)

(declare-fun e!3938750 () Bool)

(assert (=> b!6500015 (= e!3938750 (nullable!6370 (regOne!33266 (reg!16706 (regOne!33266 r!7292)))))))

(declare-fun b!6500016 () Bool)

(declare-fun call!563224 () (InoxSet Context!11522))

(declare-fun call!563227 () (InoxSet Context!11522))

(assert (=> b!6500016 (= e!3938751 ((_ map or) call!563224 call!563227))))

(declare-fun b!6500017 () Bool)

(declare-fun e!3938748 () (InoxSet Context!11522))

(declare-fun call!563223 () (InoxSet Context!11522))

(assert (=> b!6500017 (= e!3938748 ((_ map or) call!563224 call!563223))))

(declare-fun bm!563218 () Bool)

(declare-fun call!563228 () (InoxSet Context!11522))

(assert (=> bm!563218 (= call!563228 call!563227)))

(declare-fun b!6500018 () Bool)

(assert (=> b!6500018 (= e!3938752 e!3938748)))

(declare-fun c!1191729 () Bool)

(assert (=> b!6500018 (= c!1191729 ((_ is Union!16377) (reg!16706 (regOne!33266 r!7292))))))

(declare-fun d!2039656 () Bool)

(declare-fun c!1191725 () Bool)

(assert (=> d!2039656 (= c!1191725 (and ((_ is ElementMatch!16377) (reg!16706 (regOne!33266 r!7292))) (= (c!1191679 (reg!16706 (regOne!33266 r!7292))) (h!71755 s!2326))))))

(assert (=> d!2039656 (= (derivationStepZipperDown!1625 (reg!16706 (regOne!33266 r!7292)) lt!2391372 (h!71755 s!2326)) e!3938752)))

(declare-fun bm!563219 () Bool)

(declare-fun call!563225 () List!65430)

(assert (=> bm!563219 (= call!563224 (derivationStepZipperDown!1625 (ite c!1191729 (regOne!33267 (reg!16706 (regOne!33266 r!7292))) (regOne!33266 (reg!16706 (regOne!33266 r!7292)))) (ite c!1191729 lt!2391372 (Context!11523 call!563225)) (h!71755 s!2326)))))

(declare-fun b!6500019 () Bool)

(declare-fun c!1191727 () Bool)

(assert (=> b!6500019 (= c!1191727 e!3938750)))

(declare-fun res!2669388 () Bool)

(assert (=> b!6500019 (=> (not res!2669388) (not e!3938750))))

(assert (=> b!6500019 (= res!2669388 ((_ is Concat!25222) (reg!16706 (regOne!33266 r!7292))))))

(assert (=> b!6500019 (= e!3938748 e!3938751)))

(declare-fun bm!563220 () Bool)

(assert (=> bm!563220 (= call!563227 call!563223)))

(declare-fun b!6500020 () Bool)

(declare-fun c!1191726 () Bool)

(assert (=> b!6500020 (= c!1191726 ((_ is Star!16377) (reg!16706 (regOne!33266 r!7292))))))

(declare-fun e!3938747 () (InoxSet Context!11522))

(assert (=> b!6500020 (= e!3938749 e!3938747)))

(declare-fun bm!563221 () Bool)

(assert (=> bm!563221 (= call!563225 ($colon$colon!2227 (exprs!6261 lt!2391372) (ite (or c!1191727 c!1191728) (regTwo!33266 (reg!16706 (regOne!33266 r!7292))) (reg!16706 (regOne!33266 r!7292)))))))

(declare-fun b!6500021 () Bool)

(assert (=> b!6500021 (= e!3938747 call!563228)))

(declare-fun call!563226 () List!65430)

(declare-fun bm!563222 () Bool)

(assert (=> bm!563222 (= call!563223 (derivationStepZipperDown!1625 (ite c!1191729 (regTwo!33267 (reg!16706 (regOne!33266 r!7292))) (ite c!1191727 (regTwo!33266 (reg!16706 (regOne!33266 r!7292))) (ite c!1191728 (regOne!33266 (reg!16706 (regOne!33266 r!7292))) (reg!16706 (reg!16706 (regOne!33266 r!7292)))))) (ite (or c!1191729 c!1191727) lt!2391372 (Context!11523 call!563226)) (h!71755 s!2326)))))

(declare-fun b!6500022 () Bool)

(assert (=> b!6500022 (= e!3938747 ((as const (Array Context!11522 Bool)) false))))

(declare-fun bm!563223 () Bool)

(assert (=> bm!563223 (= call!563226 call!563225)))

(declare-fun b!6500023 () Bool)

(assert (=> b!6500023 (= e!3938749 call!563228)))

(assert (= (and d!2039656 c!1191725) b!6500013))

(assert (= (and d!2039656 (not c!1191725)) b!6500018))

(assert (= (and b!6500018 c!1191729) b!6500017))

(assert (= (and b!6500018 (not c!1191729)) b!6500019))

(assert (= (and b!6500019 res!2669388) b!6500015))

(assert (= (and b!6500019 c!1191727) b!6500016))

(assert (= (and b!6500019 (not c!1191727)) b!6500014))

(assert (= (and b!6500014 c!1191728) b!6500023))

(assert (= (and b!6500014 (not c!1191728)) b!6500020))

(assert (= (and b!6500020 c!1191726) b!6500021))

(assert (= (and b!6500020 (not c!1191726)) b!6500022))

(assert (= (or b!6500023 b!6500021) bm!563223))

(assert (= (or b!6500023 b!6500021) bm!563218))

(assert (= (or b!6500016 bm!563223) bm!563221))

(assert (= (or b!6500016 bm!563218) bm!563220))

(assert (= (or b!6500017 bm!563220) bm!563222))

(assert (= (or b!6500017 b!6500016) bm!563219))

(declare-fun m!7288084 () Bool)

(assert (=> bm!563221 m!7288084))

(declare-fun m!7288086 () Bool)

(assert (=> b!6500015 m!7288086))

(declare-fun m!7288088 () Bool)

(assert (=> bm!563219 m!7288088))

(declare-fun m!7288090 () Bool)

(assert (=> bm!563222 m!7288090))

(assert (=> b!6500013 m!7287938))

(assert (=> b!6499877 d!2039656))

(assert (=> b!6499857 d!2039618))

(declare-fun bs!1651206 () Bool)

(declare-fun b!6500079 () Bool)

(assert (= bs!1651206 (and b!6500079 b!6499872)))

(declare-fun lambda!360190 () Int)

(assert (=> bs!1651206 (not (= lambda!360190 lambda!360174))))

(assert (=> bs!1651206 (not (= lambda!360190 lambda!360175))))

(assert (=> b!6500079 true))

(assert (=> b!6500079 true))

(declare-fun bs!1651207 () Bool)

(declare-fun b!6500074 () Bool)

(assert (= bs!1651207 (and b!6500074 b!6499872)))

(declare-fun lambda!360191 () Int)

(assert (=> bs!1651207 (not (= lambda!360191 lambda!360174))))

(assert (=> bs!1651207 (= lambda!360191 lambda!360175)))

(declare-fun bs!1651208 () Bool)

(assert (= bs!1651208 (and b!6500074 b!6500079)))

(assert (=> bs!1651208 (not (= lambda!360191 lambda!360190))))

(assert (=> b!6500074 true))

(assert (=> b!6500074 true))

(declare-fun d!2039658 () Bool)

(declare-fun c!1191741 () Bool)

(assert (=> d!2039658 (= c!1191741 ((_ is EmptyExpr!16377) r!7292))))

(declare-fun e!3938784 () Bool)

(assert (=> d!2039658 (= (matchRSpec!3478 r!7292 s!2326) e!3938784)))

(declare-fun b!6500069 () Bool)

(declare-fun e!3938780 () Bool)

(assert (=> b!6500069 (= e!3938780 (= s!2326 (Cons!65307 (c!1191679 r!7292) Nil!65307)))))

(declare-fun b!6500070 () Bool)

(declare-fun e!3938778 () Bool)

(assert (=> b!6500070 (= e!3938778 (matchRSpec!3478 (regTwo!33267 r!7292) s!2326))))

(declare-fun b!6500071 () Bool)

(declare-fun e!3938781 () Bool)

(declare-fun e!3938779 () Bool)

(assert (=> b!6500071 (= e!3938781 e!3938779)))

(declare-fun c!1191743 () Bool)

(assert (=> b!6500071 (= c!1191743 ((_ is Star!16377) r!7292))))

(declare-fun b!6500072 () Bool)

(declare-fun call!563233 () Bool)

(assert (=> b!6500072 (= e!3938784 call!563233)))

(declare-fun b!6500073 () Bool)

(declare-fun res!2669415 () Bool)

(declare-fun e!3938783 () Bool)

(assert (=> b!6500073 (=> res!2669415 e!3938783)))

(assert (=> b!6500073 (= res!2669415 call!563233)))

(assert (=> b!6500073 (= e!3938779 e!3938783)))

(declare-fun bm!563228 () Bool)

(assert (=> bm!563228 (= call!563233 (isEmpty!37507 s!2326))))

(declare-fun call!563234 () Bool)

(assert (=> b!6500074 (= e!3938779 call!563234)))

(declare-fun b!6500075 () Bool)

(declare-fun e!3938782 () Bool)

(assert (=> b!6500075 (= e!3938784 e!3938782)))

(declare-fun res!2669414 () Bool)

(assert (=> b!6500075 (= res!2669414 (not ((_ is EmptyLang!16377) r!7292)))))

(assert (=> b!6500075 (=> (not res!2669414) (not e!3938782))))

(declare-fun b!6500076 () Bool)

(declare-fun c!1191742 () Bool)

(assert (=> b!6500076 (= c!1191742 ((_ is ElementMatch!16377) r!7292))))

(assert (=> b!6500076 (= e!3938782 e!3938780)))

(declare-fun bm!563229 () Bool)

(assert (=> bm!563229 (= call!563234 (Exists!3447 (ite c!1191743 lambda!360190 lambda!360191)))))

(declare-fun b!6500077 () Bool)

(declare-fun c!1191740 () Bool)

(assert (=> b!6500077 (= c!1191740 ((_ is Union!16377) r!7292))))

(assert (=> b!6500077 (= e!3938780 e!3938781)))

(declare-fun b!6500078 () Bool)

(assert (=> b!6500078 (= e!3938781 e!3938778)))

(declare-fun res!2669416 () Bool)

(assert (=> b!6500078 (= res!2669416 (matchRSpec!3478 (regOne!33267 r!7292) s!2326))))

(assert (=> b!6500078 (=> res!2669416 e!3938778)))

(assert (=> b!6500079 (= e!3938783 call!563234)))

(assert (= (and d!2039658 c!1191741) b!6500072))

(assert (= (and d!2039658 (not c!1191741)) b!6500075))

(assert (= (and b!6500075 res!2669414) b!6500076))

(assert (= (and b!6500076 c!1191742) b!6500069))

(assert (= (and b!6500076 (not c!1191742)) b!6500077))

(assert (= (and b!6500077 c!1191740) b!6500078))

(assert (= (and b!6500077 (not c!1191740)) b!6500071))

(assert (= (and b!6500078 (not res!2669416)) b!6500070))

(assert (= (and b!6500071 c!1191743) b!6500073))

(assert (= (and b!6500071 (not c!1191743)) b!6500074))

(assert (= (and b!6500073 (not res!2669415)) b!6500079))

(assert (= (or b!6500079 b!6500074) bm!563229))

(assert (= (or b!6500072 b!6500073) bm!563228))

(declare-fun m!7288124 () Bool)

(assert (=> b!6500070 m!7288124))

(assert (=> bm!563228 m!7287980))

(declare-fun m!7288126 () Bool)

(assert (=> bm!563229 m!7288126))

(declare-fun m!7288128 () Bool)

(assert (=> b!6500078 m!7288128))

(assert (=> b!6499854 d!2039658))

(declare-fun b!6500116 () Bool)

(declare-fun e!3938807 () Bool)

(declare-fun derivativeStep!5071 (Regex!16377 C!33024) Regex!16377)

(assert (=> b!6500116 (= e!3938807 (matchR!8560 (derivativeStep!5071 r!7292 (head!13223 s!2326)) (tail!12308 s!2326)))))

(declare-fun d!2039668 () Bool)

(declare-fun e!3938806 () Bool)

(assert (=> d!2039668 e!3938806))

(declare-fun c!1191750 () Bool)

(assert (=> d!2039668 (= c!1191750 ((_ is EmptyExpr!16377) r!7292))))

(declare-fun lt!2391430 () Bool)

(assert (=> d!2039668 (= lt!2391430 e!3938807)))

(declare-fun c!1191751 () Bool)

(assert (=> d!2039668 (= c!1191751 (isEmpty!37507 s!2326))))

(assert (=> d!2039668 (validRegex!8113 r!7292)))

(assert (=> d!2039668 (= (matchR!8560 r!7292 s!2326) lt!2391430)))

(declare-fun b!6500117 () Bool)

(declare-fun call!563237 () Bool)

(assert (=> b!6500117 (= e!3938806 (= lt!2391430 call!563237))))

(declare-fun b!6500118 () Bool)

(declare-fun e!3938808 () Bool)

(assert (=> b!6500118 (= e!3938808 (not (= (head!13223 s!2326) (c!1191679 r!7292))))))

(declare-fun b!6500119 () Bool)

(declare-fun res!2669441 () Bool)

(declare-fun e!3938803 () Bool)

(assert (=> b!6500119 (=> res!2669441 e!3938803)))

(declare-fun e!3938804 () Bool)

(assert (=> b!6500119 (= res!2669441 e!3938804)))

(declare-fun res!2669445 () Bool)

(assert (=> b!6500119 (=> (not res!2669445) (not e!3938804))))

(assert (=> b!6500119 (= res!2669445 lt!2391430)))

(declare-fun bm!563232 () Bool)

(assert (=> bm!563232 (= call!563237 (isEmpty!37507 s!2326))))

(declare-fun b!6500120 () Bool)

(declare-fun e!3938809 () Bool)

(assert (=> b!6500120 (= e!3938809 e!3938808)))

(declare-fun res!2669448 () Bool)

(assert (=> b!6500120 (=> res!2669448 e!3938808)))

(assert (=> b!6500120 (= res!2669448 call!563237)))

(declare-fun b!6500121 () Bool)

(declare-fun e!3938805 () Bool)

(assert (=> b!6500121 (= e!3938805 (not lt!2391430))))

(declare-fun b!6500122 () Bool)

(declare-fun res!2669444 () Bool)

(assert (=> b!6500122 (=> res!2669444 e!3938803)))

(assert (=> b!6500122 (= res!2669444 (not ((_ is ElementMatch!16377) r!7292)))))

(assert (=> b!6500122 (= e!3938805 e!3938803)))

(declare-fun b!6500123 () Bool)

(declare-fun res!2669442 () Bool)

(assert (=> b!6500123 (=> res!2669442 e!3938808)))

(assert (=> b!6500123 (= res!2669442 (not (isEmpty!37507 (tail!12308 s!2326))))))

(declare-fun b!6500124 () Bool)

(declare-fun res!2669446 () Bool)

(assert (=> b!6500124 (=> (not res!2669446) (not e!3938804))))

(assert (=> b!6500124 (= res!2669446 (not call!563237))))

(declare-fun b!6500125 () Bool)

(declare-fun res!2669447 () Bool)

(assert (=> b!6500125 (=> (not res!2669447) (not e!3938804))))

(assert (=> b!6500125 (= res!2669447 (isEmpty!37507 (tail!12308 s!2326)))))

(declare-fun b!6500126 () Bool)

(assert (=> b!6500126 (= e!3938804 (= (head!13223 s!2326) (c!1191679 r!7292)))))

(declare-fun b!6500127 () Bool)

(assert (=> b!6500127 (= e!3938803 e!3938809)))

(declare-fun res!2669443 () Bool)

(assert (=> b!6500127 (=> (not res!2669443) (not e!3938809))))

(assert (=> b!6500127 (= res!2669443 (not lt!2391430))))

(declare-fun b!6500128 () Bool)

(assert (=> b!6500128 (= e!3938807 (nullable!6370 r!7292))))

(declare-fun b!6500129 () Bool)

(assert (=> b!6500129 (= e!3938806 e!3938805)))

(declare-fun c!1191752 () Bool)

(assert (=> b!6500129 (= c!1191752 ((_ is EmptyLang!16377) r!7292))))

(assert (= (and d!2039668 c!1191751) b!6500128))

(assert (= (and d!2039668 (not c!1191751)) b!6500116))

(assert (= (and d!2039668 c!1191750) b!6500117))

(assert (= (and d!2039668 (not c!1191750)) b!6500129))

(assert (= (and b!6500129 c!1191752) b!6500121))

(assert (= (and b!6500129 (not c!1191752)) b!6500122))

(assert (= (and b!6500122 (not res!2669444)) b!6500119))

(assert (= (and b!6500119 res!2669445) b!6500124))

(assert (= (and b!6500124 res!2669446) b!6500125))

(assert (= (and b!6500125 res!2669447) b!6500126))

(assert (= (and b!6500119 (not res!2669441)) b!6500127))

(assert (= (and b!6500127 res!2669443) b!6500120))

(assert (= (and b!6500120 (not res!2669448)) b!6500123))

(assert (= (and b!6500123 (not res!2669442)) b!6500118))

(assert (= (or b!6500117 b!6500120 b!6500124) bm!563232))

(assert (=> bm!563232 m!7287980))

(assert (=> b!6500123 m!7287988))

(assert (=> b!6500123 m!7287988))

(declare-fun m!7288138 () Bool)

(assert (=> b!6500123 m!7288138))

(assert (=> b!6500126 m!7287984))

(assert (=> b!6500116 m!7287984))

(assert (=> b!6500116 m!7287984))

(declare-fun m!7288140 () Bool)

(assert (=> b!6500116 m!7288140))

(assert (=> b!6500116 m!7287988))

(assert (=> b!6500116 m!7288140))

(assert (=> b!6500116 m!7287988))

(declare-fun m!7288142 () Bool)

(assert (=> b!6500116 m!7288142))

(assert (=> b!6500118 m!7287984))

(declare-fun m!7288144 () Bool)

(assert (=> b!6500128 m!7288144))

(assert (=> d!2039668 m!7287980))

(assert (=> d!2039668 m!7287916))

(assert (=> b!6500125 m!7287988))

(assert (=> b!6500125 m!7287988))

(assert (=> b!6500125 m!7288138))

(assert (=> b!6499854 d!2039668))

(declare-fun d!2039674 () Bool)

(assert (=> d!2039674 (= (matchR!8560 r!7292 s!2326) (matchRSpec!3478 r!7292 s!2326))))

(declare-fun lt!2391433 () Unit!158843)

(declare-fun choose!48245 (Regex!16377 List!65431) Unit!158843)

(assert (=> d!2039674 (= lt!2391433 (choose!48245 r!7292 s!2326))))

(assert (=> d!2039674 (validRegex!8113 r!7292)))

(assert (=> d!2039674 (= (mainMatchTheorem!3478 r!7292 s!2326) lt!2391433)))

(declare-fun bs!1651213 () Bool)

(assert (= bs!1651213 d!2039674))

(assert (=> bs!1651213 m!7287972))

(assert (=> bs!1651213 m!7287970))

(declare-fun m!7288146 () Bool)

(assert (=> bs!1651213 m!7288146))

(assert (=> bs!1651213 m!7287916))

(assert (=> b!6499854 d!2039674))

(declare-fun bs!1651214 () Bool)

(declare-fun d!2039676 () Bool)

(assert (= bs!1651214 (and d!2039676 d!2039630)))

(declare-fun lambda!360200 () Int)

(assert (=> bs!1651214 (= lambda!360200 lambda!360182)))

(assert (=> d!2039676 (= (inv!84189 (h!71756 zl!343)) (forall!15557 (exprs!6261 (h!71756 zl!343)) lambda!360200))))

(declare-fun bs!1651215 () Bool)

(assert (= bs!1651215 d!2039676))

(declare-fun m!7288148 () Bool)

(assert (=> bs!1651215 m!7288148))

(assert (=> b!6499875 d!2039676))

(declare-fun d!2039678 () Bool)

(declare-fun e!3938830 () Bool)

(assert (=> d!2039678 e!3938830))

(declare-fun res!2669467 () Bool)

(assert (=> d!2039678 (=> (not res!2669467) (not e!3938830))))

(declare-fun lt!2391436 () List!65432)

(declare-fun noDuplicate!2194 (List!65432) Bool)

(assert (=> d!2039678 (= res!2669467 (noDuplicate!2194 lt!2391436))))

(declare-fun choose!48247 ((InoxSet Context!11522)) List!65432)

(assert (=> d!2039678 (= lt!2391436 (choose!48247 z!1189))))

(assert (=> d!2039678 (= (toList!10161 z!1189) lt!2391436)))

(declare-fun b!6500164 () Bool)

(declare-fun content!12455 (List!65432) (InoxSet Context!11522))

(assert (=> b!6500164 (= e!3938830 (= (content!12455 lt!2391436) z!1189))))

(assert (= (and d!2039678 res!2669467) b!6500164))

(declare-fun m!7288150 () Bool)

(assert (=> d!2039678 m!7288150))

(declare-fun m!7288152 () Bool)

(assert (=> d!2039678 m!7288152))

(declare-fun m!7288154 () Bool)

(assert (=> b!6500164 m!7288154))

(assert (=> b!6499853 d!2039678))

(declare-fun d!2039680 () Bool)

(declare-fun lt!2391437 () Regex!16377)

(assert (=> d!2039680 (validRegex!8113 lt!2391437)))

(assert (=> d!2039680 (= lt!2391437 (generalisedUnion!2221 (unfocusZipperList!1798 (Cons!65308 lt!2391368 Nil!65308))))))

(assert (=> d!2039680 (= (unfocusZipper!2119 (Cons!65308 lt!2391368 Nil!65308)) lt!2391437)))

(declare-fun bs!1651216 () Bool)

(assert (= bs!1651216 d!2039680))

(declare-fun m!7288156 () Bool)

(assert (=> bs!1651216 m!7288156))

(declare-fun m!7288158 () Bool)

(assert (=> bs!1651216 m!7288158))

(assert (=> bs!1651216 m!7288158))

(declare-fun m!7288160 () Bool)

(assert (=> bs!1651216 m!7288160))

(assert (=> b!6499874 d!2039680))

(declare-fun b!6500222 () Bool)

(declare-fun lt!2391446 () Unit!158843)

(declare-fun lt!2391448 () Unit!158843)

(assert (=> b!6500222 (= lt!2391446 lt!2391448)))

(declare-fun ++!14459 (List!65431 List!65431) List!65431)

(assert (=> b!6500222 (= (++!14459 (++!14459 Nil!65307 (Cons!65307 (h!71755 s!2326) Nil!65307)) (t!379065 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2530 (List!65431 C!33024 List!65431 List!65431) Unit!158843)

(assert (=> b!6500222 (= lt!2391448 (lemmaMoveElementToOtherListKeepsConcatEq!2530 Nil!65307 (h!71755 s!2326) (t!379065 s!2326) s!2326))))

(declare-fun e!3938862 () Option!16268)

(assert (=> b!6500222 (= e!3938862 (findConcatSeparation!2682 (regOne!33266 r!7292) (regTwo!33266 r!7292) (++!14459 Nil!65307 (Cons!65307 (h!71755 s!2326) Nil!65307)) (t!379065 s!2326) s!2326))))

(declare-fun b!6500223 () Bool)

(declare-fun e!3938863 () Bool)

(declare-fun lt!2391447 () Option!16268)

(declare-fun get!22649 (Option!16268) tuple2!66712)

(assert (=> b!6500223 (= e!3938863 (= (++!14459 (_1!36659 (get!22649 lt!2391447)) (_2!36659 (get!22649 lt!2391447))) s!2326))))

(declare-fun b!6500224 () Bool)

(declare-fun e!3938864 () Option!16268)

(assert (=> b!6500224 (= e!3938864 (Some!16267 (tuple2!66713 Nil!65307 s!2326)))))

(declare-fun d!2039682 () Bool)

(declare-fun e!3938865 () Bool)

(assert (=> d!2039682 e!3938865))

(declare-fun res!2669498 () Bool)

(assert (=> d!2039682 (=> res!2669498 e!3938865)))

(assert (=> d!2039682 (= res!2669498 e!3938863)))

(declare-fun res!2669501 () Bool)

(assert (=> d!2039682 (=> (not res!2669501) (not e!3938863))))

(assert (=> d!2039682 (= res!2669501 (isDefined!12971 lt!2391447))))

(assert (=> d!2039682 (= lt!2391447 e!3938864)))

(declare-fun c!1191776 () Bool)

(declare-fun e!3938866 () Bool)

(assert (=> d!2039682 (= c!1191776 e!3938866)))

(declare-fun res!2669500 () Bool)

(assert (=> d!2039682 (=> (not res!2669500) (not e!3938866))))

(assert (=> d!2039682 (= res!2669500 (matchR!8560 (regOne!33266 r!7292) Nil!65307))))

(assert (=> d!2039682 (validRegex!8113 (regOne!33266 r!7292))))

(assert (=> d!2039682 (= (findConcatSeparation!2682 (regOne!33266 r!7292) (regTwo!33266 r!7292) Nil!65307 s!2326 s!2326) lt!2391447)))

(declare-fun b!6500225 () Bool)

(declare-fun res!2669499 () Bool)

(assert (=> b!6500225 (=> (not res!2669499) (not e!3938863))))

(assert (=> b!6500225 (= res!2669499 (matchR!8560 (regOne!33266 r!7292) (_1!36659 (get!22649 lt!2391447))))))

(declare-fun b!6500226 () Bool)

(assert (=> b!6500226 (= e!3938866 (matchR!8560 (regTwo!33266 r!7292) s!2326))))

(declare-fun b!6500227 () Bool)

(assert (=> b!6500227 (= e!3938865 (not (isDefined!12971 lt!2391447)))))

(declare-fun b!6500228 () Bool)

(assert (=> b!6500228 (= e!3938862 None!16267)))

(declare-fun b!6500229 () Bool)

(assert (=> b!6500229 (= e!3938864 e!3938862)))

(declare-fun c!1191775 () Bool)

(assert (=> b!6500229 (= c!1191775 ((_ is Nil!65307) s!2326))))

(declare-fun b!6500230 () Bool)

(declare-fun res!2669497 () Bool)

(assert (=> b!6500230 (=> (not res!2669497) (not e!3938863))))

(assert (=> b!6500230 (= res!2669497 (matchR!8560 (regTwo!33266 r!7292) (_2!36659 (get!22649 lt!2391447))))))

(assert (= (and d!2039682 res!2669500) b!6500226))

(assert (= (and d!2039682 c!1191776) b!6500224))

(assert (= (and d!2039682 (not c!1191776)) b!6500229))

(assert (= (and b!6500229 c!1191775) b!6500228))

(assert (= (and b!6500229 (not c!1191775)) b!6500222))

(assert (= (and d!2039682 res!2669501) b!6500225))

(assert (= (and b!6500225 res!2669499) b!6500230))

(assert (= (and b!6500230 res!2669497) b!6500223))

(assert (= (and d!2039682 (not res!2669498)) b!6500227))

(declare-fun m!7288170 () Bool)

(assert (=> b!6500226 m!7288170))

(declare-fun m!7288172 () Bool)

(assert (=> b!6500227 m!7288172))

(declare-fun m!7288174 () Bool)

(assert (=> b!6500230 m!7288174))

(declare-fun m!7288176 () Bool)

(assert (=> b!6500230 m!7288176))

(assert (=> b!6500223 m!7288174))

(declare-fun m!7288178 () Bool)

(assert (=> b!6500223 m!7288178))

(assert (=> d!2039682 m!7288172))

(declare-fun m!7288180 () Bool)

(assert (=> d!2039682 m!7288180))

(declare-fun m!7288182 () Bool)

(assert (=> d!2039682 m!7288182))

(declare-fun m!7288184 () Bool)

(assert (=> b!6500222 m!7288184))

(assert (=> b!6500222 m!7288184))

(declare-fun m!7288186 () Bool)

(assert (=> b!6500222 m!7288186))

(declare-fun m!7288188 () Bool)

(assert (=> b!6500222 m!7288188))

(assert (=> b!6500222 m!7288184))

(declare-fun m!7288190 () Bool)

(assert (=> b!6500222 m!7288190))

(assert (=> b!6500225 m!7288174))

(declare-fun m!7288192 () Bool)

(assert (=> b!6500225 m!7288192))

(assert (=> b!6499872 d!2039682))

(declare-fun d!2039686 () Bool)

(declare-fun choose!48249 (Int) Bool)

(assert (=> d!2039686 (= (Exists!3447 lambda!360174) (choose!48249 lambda!360174))))

(declare-fun bs!1651224 () Bool)

(assert (= bs!1651224 d!2039686))

(declare-fun m!7288194 () Bool)

(assert (=> bs!1651224 m!7288194))

(assert (=> b!6499872 d!2039686))

(declare-fun d!2039688 () Bool)

(assert (=> d!2039688 (= (Exists!3447 lambda!360175) (choose!48249 lambda!360175))))

(declare-fun bs!1651225 () Bool)

(assert (= bs!1651225 d!2039688))

(declare-fun m!7288196 () Bool)

(assert (=> bs!1651225 m!7288196))

(assert (=> b!6499872 d!2039688))

(declare-fun bs!1651227 () Bool)

(declare-fun d!2039690 () Bool)

(assert (= bs!1651227 (and d!2039690 b!6499872)))

(declare-fun lambda!360207 () Int)

(assert (=> bs!1651227 (= lambda!360207 lambda!360174)))

(assert (=> bs!1651227 (not (= lambda!360207 lambda!360175))))

(declare-fun bs!1651228 () Bool)

(assert (= bs!1651228 (and d!2039690 b!6500079)))

(assert (=> bs!1651228 (not (= lambda!360207 lambda!360190))))

(declare-fun bs!1651229 () Bool)

(assert (= bs!1651229 (and d!2039690 b!6500074)))

(assert (=> bs!1651229 (not (= lambda!360207 lambda!360191))))

(assert (=> d!2039690 true))

(assert (=> d!2039690 true))

(assert (=> d!2039690 true))

(assert (=> d!2039690 (= (isDefined!12971 (findConcatSeparation!2682 (regOne!33266 r!7292) (regTwo!33266 r!7292) Nil!65307 s!2326 s!2326)) (Exists!3447 lambda!360207))))

(declare-fun lt!2391455 () Unit!158843)

(declare-fun choose!48250 (Regex!16377 Regex!16377 List!65431) Unit!158843)

(assert (=> d!2039690 (= lt!2391455 (choose!48250 (regOne!33266 r!7292) (regTwo!33266 r!7292) s!2326))))

(assert (=> d!2039690 (validRegex!8113 (regOne!33266 r!7292))))

(assert (=> d!2039690 (= (lemmaFindConcatSeparationEquivalentToExists!2446 (regOne!33266 r!7292) (regTwo!33266 r!7292) s!2326) lt!2391455)))

(declare-fun bs!1651230 () Bool)

(assert (= bs!1651230 d!2039690))

(assert (=> bs!1651230 m!7287890))

(assert (=> bs!1651230 m!7288182))

(declare-fun m!7288212 () Bool)

(assert (=> bs!1651230 m!7288212))

(assert (=> bs!1651230 m!7287890))

(assert (=> bs!1651230 m!7287892))

(declare-fun m!7288214 () Bool)

(assert (=> bs!1651230 m!7288214))

(assert (=> b!6499872 d!2039690))

(declare-fun bs!1651232 () Bool)

(declare-fun d!2039698 () Bool)

(assert (= bs!1651232 (and d!2039698 d!2039690)))

(declare-fun lambda!360214 () Int)

(assert (=> bs!1651232 (= lambda!360214 lambda!360207)))

(declare-fun bs!1651233 () Bool)

(assert (= bs!1651233 (and d!2039698 b!6500079)))

(assert (=> bs!1651233 (not (= lambda!360214 lambda!360190))))

(declare-fun bs!1651234 () Bool)

(assert (= bs!1651234 (and d!2039698 b!6500074)))

(assert (=> bs!1651234 (not (= lambda!360214 lambda!360191))))

(declare-fun bs!1651235 () Bool)

(assert (= bs!1651235 (and d!2039698 b!6499872)))

(assert (=> bs!1651235 (not (= lambda!360214 lambda!360175))))

(assert (=> bs!1651235 (= lambda!360214 lambda!360174)))

(assert (=> d!2039698 true))

(assert (=> d!2039698 true))

(assert (=> d!2039698 true))

(declare-fun lambda!360215 () Int)

(assert (=> bs!1651233 (not (= lambda!360215 lambda!360190))))

(assert (=> bs!1651234 (= lambda!360215 lambda!360191)))

(assert (=> bs!1651235 (= lambda!360215 lambda!360175)))

(assert (=> bs!1651235 (not (= lambda!360215 lambda!360174))))

(assert (=> bs!1651232 (not (= lambda!360215 lambda!360207))))

(declare-fun bs!1651236 () Bool)

(assert (= bs!1651236 d!2039698))

(assert (=> bs!1651236 (not (= lambda!360215 lambda!360214))))

(assert (=> d!2039698 true))

(assert (=> d!2039698 true))

(assert (=> d!2039698 true))

(assert (=> d!2039698 (= (Exists!3447 lambda!360214) (Exists!3447 lambda!360215))))

(declare-fun lt!2391461 () Unit!158843)

(declare-fun choose!48251 (Regex!16377 Regex!16377 List!65431) Unit!158843)

(assert (=> d!2039698 (= lt!2391461 (choose!48251 (regOne!33266 r!7292) (regTwo!33266 r!7292) s!2326))))

(assert (=> d!2039698 (validRegex!8113 (regOne!33266 r!7292))))

(assert (=> d!2039698 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1984 (regOne!33266 r!7292) (regTwo!33266 r!7292) s!2326) lt!2391461)))

(declare-fun m!7288238 () Bool)

(assert (=> bs!1651236 m!7288238))

(declare-fun m!7288240 () Bool)

(assert (=> bs!1651236 m!7288240))

(declare-fun m!7288242 () Bool)

(assert (=> bs!1651236 m!7288242))

(assert (=> bs!1651236 m!7288182))

(assert (=> b!6499872 d!2039698))

(declare-fun d!2039708 () Bool)

(declare-fun isEmpty!37510 (Option!16268) Bool)

(assert (=> d!2039708 (= (isDefined!12971 (findConcatSeparation!2682 (regOne!33266 r!7292) (regTwo!33266 r!7292) Nil!65307 s!2326 s!2326)) (not (isEmpty!37510 (findConcatSeparation!2682 (regOne!33266 r!7292) (regTwo!33266 r!7292) Nil!65307 s!2326 s!2326))))))

(declare-fun bs!1651237 () Bool)

(assert (= bs!1651237 d!2039708))

(assert (=> bs!1651237 m!7287890))

(declare-fun m!7288244 () Bool)

(assert (=> bs!1651237 m!7288244))

(assert (=> b!6499872 d!2039708))

(declare-fun bs!1651240 () Bool)

(declare-fun d!2039710 () Bool)

(assert (= bs!1651240 (and d!2039710 d!2039630)))

(declare-fun lambda!360222 () Int)

(assert (=> bs!1651240 (= lambda!360222 lambda!360182)))

(declare-fun bs!1651241 () Bool)

(assert (= bs!1651241 (and d!2039710 d!2039676)))

(assert (=> bs!1651241 (= lambda!360222 lambda!360200)))

(declare-fun b!6500324 () Bool)

(declare-fun e!3938924 () Bool)

(declare-fun e!3938920 () Bool)

(assert (=> b!6500324 (= e!3938924 e!3938920)))

(declare-fun c!1191809 () Bool)

(declare-fun tail!12311 (List!65430) List!65430)

(assert (=> b!6500324 (= c!1191809 (isEmpty!37505 (tail!12311 (exprs!6261 (h!71756 zl!343)))))))

(declare-fun e!3938925 () Bool)

(assert (=> d!2039710 e!3938925))

(declare-fun res!2669535 () Bool)

(assert (=> d!2039710 (=> (not res!2669535) (not e!3938925))))

(declare-fun lt!2391473 () Regex!16377)

(assert (=> d!2039710 (= res!2669535 (validRegex!8113 lt!2391473))))

(declare-fun e!3938923 () Regex!16377)

(assert (=> d!2039710 (= lt!2391473 e!3938923)))

(declare-fun c!1191807 () Bool)

(declare-fun e!3938922 () Bool)

(assert (=> d!2039710 (= c!1191807 e!3938922)))

(declare-fun res!2669536 () Bool)

(assert (=> d!2039710 (=> (not res!2669536) (not e!3938922))))

(assert (=> d!2039710 (= res!2669536 ((_ is Cons!65306) (exprs!6261 (h!71756 zl!343))))))

(assert (=> d!2039710 (forall!15557 (exprs!6261 (h!71756 zl!343)) lambda!360222)))

(assert (=> d!2039710 (= (generalisedConcat!1974 (exprs!6261 (h!71756 zl!343))) lt!2391473)))

(declare-fun b!6500325 () Bool)

(declare-fun head!13226 (List!65430) Regex!16377)

(assert (=> b!6500325 (= e!3938920 (= lt!2391473 (head!13226 (exprs!6261 (h!71756 zl!343)))))))

(declare-fun b!6500326 () Bool)

(declare-fun e!3938921 () Regex!16377)

(assert (=> b!6500326 (= e!3938923 e!3938921)))

(declare-fun c!1191810 () Bool)

(assert (=> b!6500326 (= c!1191810 ((_ is Cons!65306) (exprs!6261 (h!71756 zl!343))))))

(declare-fun b!6500327 () Bool)

(assert (=> b!6500327 (= e!3938923 (h!71754 (exprs!6261 (h!71756 zl!343))))))

(declare-fun b!6500328 () Bool)

(declare-fun isConcat!1289 (Regex!16377) Bool)

(assert (=> b!6500328 (= e!3938920 (isConcat!1289 lt!2391473))))

(declare-fun b!6500329 () Bool)

(assert (=> b!6500329 (= e!3938921 EmptyExpr!16377)))

(declare-fun b!6500330 () Bool)

(assert (=> b!6500330 (= e!3938925 e!3938924)))

(declare-fun c!1191808 () Bool)

(assert (=> b!6500330 (= c!1191808 (isEmpty!37505 (exprs!6261 (h!71756 zl!343))))))

(declare-fun b!6500331 () Bool)

(assert (=> b!6500331 (= e!3938922 (isEmpty!37505 (t!379064 (exprs!6261 (h!71756 zl!343)))))))

(declare-fun b!6500332 () Bool)

(declare-fun isEmptyExpr!1766 (Regex!16377) Bool)

(assert (=> b!6500332 (= e!3938924 (isEmptyExpr!1766 lt!2391473))))

(declare-fun b!6500333 () Bool)

(assert (=> b!6500333 (= e!3938921 (Concat!25222 (h!71754 (exprs!6261 (h!71756 zl!343))) (generalisedConcat!1974 (t!379064 (exprs!6261 (h!71756 zl!343))))))))

(assert (= (and d!2039710 res!2669536) b!6500331))

(assert (= (and d!2039710 c!1191807) b!6500327))

(assert (= (and d!2039710 (not c!1191807)) b!6500326))

(assert (= (and b!6500326 c!1191810) b!6500333))

(assert (= (and b!6500326 (not c!1191810)) b!6500329))

(assert (= (and d!2039710 res!2669535) b!6500330))

(assert (= (and b!6500330 c!1191808) b!6500332))

(assert (= (and b!6500330 (not c!1191808)) b!6500324))

(assert (= (and b!6500324 c!1191809) b!6500325))

(assert (= (and b!6500324 (not c!1191809)) b!6500328))

(declare-fun m!7288272 () Bool)

(assert (=> b!6500332 m!7288272))

(declare-fun m!7288274 () Bool)

(assert (=> b!6500324 m!7288274))

(assert (=> b!6500324 m!7288274))

(declare-fun m!7288276 () Bool)

(assert (=> b!6500324 m!7288276))

(declare-fun m!7288278 () Bool)

(assert (=> b!6500333 m!7288278))

(declare-fun m!7288280 () Bool)

(assert (=> d!2039710 m!7288280))

(declare-fun m!7288282 () Bool)

(assert (=> d!2039710 m!7288282))

(declare-fun m!7288284 () Bool)

(assert (=> b!6500325 m!7288284))

(declare-fun m!7288286 () Bool)

(assert (=> b!6500328 m!7288286))

(assert (=> b!6500331 m!7287880))

(declare-fun m!7288288 () Bool)

(assert (=> b!6500330 m!7288288))

(assert (=> b!6499852 d!2039710))

(declare-fun bs!1651245 () Bool)

(declare-fun d!2039718 () Bool)

(assert (= bs!1651245 (and d!2039718 d!2039630)))

(declare-fun lambda!360228 () Int)

(assert (=> bs!1651245 (= lambda!360228 lambda!360182)))

(declare-fun bs!1651246 () Bool)

(assert (= bs!1651246 (and d!2039718 d!2039676)))

(assert (=> bs!1651246 (= lambda!360228 lambda!360200)))

(declare-fun bs!1651247 () Bool)

(assert (= bs!1651247 (and d!2039718 d!2039710)))

(assert (=> bs!1651247 (= lambda!360228 lambda!360222)))

(declare-fun b!6500406 () Bool)

(declare-fun e!3938973 () Regex!16377)

(assert (=> b!6500406 (= e!3938973 EmptyLang!16377)))

(declare-fun b!6500407 () Bool)

(declare-fun e!3938977 () Bool)

(declare-fun lt!2391477 () Regex!16377)

(assert (=> b!6500407 (= e!3938977 (= lt!2391477 (head!13226 (unfocusZipperList!1798 zl!343))))))

(declare-fun e!3938975 () Bool)

(assert (=> d!2039718 e!3938975))

(declare-fun res!2669567 () Bool)

(assert (=> d!2039718 (=> (not res!2669567) (not e!3938975))))

(assert (=> d!2039718 (= res!2669567 (validRegex!8113 lt!2391477))))

(declare-fun e!3938978 () Regex!16377)

(assert (=> d!2039718 (= lt!2391477 e!3938978)))

(declare-fun c!1191834 () Bool)

(declare-fun e!3938976 () Bool)

(assert (=> d!2039718 (= c!1191834 e!3938976)))

(declare-fun res!2669568 () Bool)

(assert (=> d!2039718 (=> (not res!2669568) (not e!3938976))))

(assert (=> d!2039718 (= res!2669568 ((_ is Cons!65306) (unfocusZipperList!1798 zl!343)))))

(assert (=> d!2039718 (forall!15557 (unfocusZipperList!1798 zl!343) lambda!360228)))

(assert (=> d!2039718 (= (generalisedUnion!2221 (unfocusZipperList!1798 zl!343)) lt!2391477)))

(declare-fun b!6500408 () Bool)

(assert (=> b!6500408 (= e!3938978 (h!71754 (unfocusZipperList!1798 zl!343)))))

(declare-fun b!6500409 () Bool)

(declare-fun e!3938974 () Bool)

(declare-fun isEmptyLang!1775 (Regex!16377) Bool)

(assert (=> b!6500409 (= e!3938974 (isEmptyLang!1775 lt!2391477))))

(declare-fun b!6500410 () Bool)

(declare-fun isUnion!1205 (Regex!16377) Bool)

(assert (=> b!6500410 (= e!3938977 (isUnion!1205 lt!2391477))))

(declare-fun b!6500411 () Bool)

(assert (=> b!6500411 (= e!3938976 (isEmpty!37505 (t!379064 (unfocusZipperList!1798 zl!343))))))

(declare-fun b!6500412 () Bool)

(assert (=> b!6500412 (= e!3938975 e!3938974)))

(declare-fun c!1191833 () Bool)

(assert (=> b!6500412 (= c!1191833 (isEmpty!37505 (unfocusZipperList!1798 zl!343)))))

(declare-fun b!6500413 () Bool)

(assert (=> b!6500413 (= e!3938978 e!3938973)))

(declare-fun c!1191835 () Bool)

(assert (=> b!6500413 (= c!1191835 ((_ is Cons!65306) (unfocusZipperList!1798 zl!343)))))

(declare-fun b!6500414 () Bool)

(assert (=> b!6500414 (= e!3938973 (Union!16377 (h!71754 (unfocusZipperList!1798 zl!343)) (generalisedUnion!2221 (t!379064 (unfocusZipperList!1798 zl!343)))))))

(declare-fun b!6500415 () Bool)

(assert (=> b!6500415 (= e!3938974 e!3938977)))

(declare-fun c!1191832 () Bool)

(assert (=> b!6500415 (= c!1191832 (isEmpty!37505 (tail!12311 (unfocusZipperList!1798 zl!343))))))

(assert (= (and d!2039718 res!2669568) b!6500411))

(assert (= (and d!2039718 c!1191834) b!6500408))

(assert (= (and d!2039718 (not c!1191834)) b!6500413))

(assert (= (and b!6500413 c!1191835) b!6500414))

(assert (= (and b!6500413 (not c!1191835)) b!6500406))

(assert (= (and d!2039718 res!2669567) b!6500412))

(assert (= (and b!6500412 c!1191833) b!6500409))

(assert (= (and b!6500412 (not c!1191833)) b!6500415))

(assert (= (and b!6500415 c!1191832) b!6500407))

(assert (= (and b!6500415 (not c!1191832)) b!6500410))

(declare-fun m!7288306 () Bool)

(assert (=> b!6500411 m!7288306))

(assert (=> b!6500415 m!7287870))

(declare-fun m!7288308 () Bool)

(assert (=> b!6500415 m!7288308))

(assert (=> b!6500415 m!7288308))

(declare-fun m!7288310 () Bool)

(assert (=> b!6500415 m!7288310))

(declare-fun m!7288312 () Bool)

(assert (=> b!6500410 m!7288312))

(assert (=> b!6500412 m!7287870))

(declare-fun m!7288314 () Bool)

(assert (=> b!6500412 m!7288314))

(assert (=> b!6500407 m!7287870))

(declare-fun m!7288316 () Bool)

(assert (=> b!6500407 m!7288316))

(declare-fun m!7288318 () Bool)

(assert (=> b!6500409 m!7288318))

(declare-fun m!7288320 () Bool)

(assert (=> d!2039718 m!7288320))

(assert (=> d!2039718 m!7287870))

(declare-fun m!7288322 () Bool)

(assert (=> d!2039718 m!7288322))

(declare-fun m!7288324 () Bool)

(assert (=> b!6500414 m!7288324))

(assert (=> b!6499850 d!2039718))

(declare-fun bs!1651265 () Bool)

(declare-fun d!2039726 () Bool)

(assert (= bs!1651265 (and d!2039726 d!2039630)))

(declare-fun lambda!360234 () Int)

(assert (=> bs!1651265 (= lambda!360234 lambda!360182)))

(declare-fun bs!1651266 () Bool)

(assert (= bs!1651266 (and d!2039726 d!2039676)))

(assert (=> bs!1651266 (= lambda!360234 lambda!360200)))

(declare-fun bs!1651267 () Bool)

(assert (= bs!1651267 (and d!2039726 d!2039710)))

(assert (=> bs!1651267 (= lambda!360234 lambda!360222)))

(declare-fun bs!1651268 () Bool)

(assert (= bs!1651268 (and d!2039726 d!2039718)))

(assert (=> bs!1651268 (= lambda!360234 lambda!360228)))

(declare-fun lt!2391482 () List!65430)

(assert (=> d!2039726 (forall!15557 lt!2391482 lambda!360234)))

(declare-fun e!3938981 () List!65430)

(assert (=> d!2039726 (= lt!2391482 e!3938981)))

(declare-fun c!1191838 () Bool)

(assert (=> d!2039726 (= c!1191838 ((_ is Cons!65308) zl!343))))

(assert (=> d!2039726 (= (unfocusZipperList!1798 zl!343) lt!2391482)))

(declare-fun b!6500420 () Bool)

(assert (=> b!6500420 (= e!3938981 (Cons!65306 (generalisedConcat!1974 (exprs!6261 (h!71756 zl!343))) (unfocusZipperList!1798 (t!379066 zl!343))))))

(declare-fun b!6500421 () Bool)

(assert (=> b!6500421 (= e!3938981 Nil!65306)))

(assert (= (and d!2039726 c!1191838) b!6500420))

(assert (= (and d!2039726 (not c!1191838)) b!6500421))

(declare-fun m!7288348 () Bool)

(assert (=> d!2039726 m!7288348))

(assert (=> b!6500420 m!7287954))

(declare-fun m!7288350 () Bool)

(assert (=> b!6500420 m!7288350))

(assert (=> b!6499850 d!2039726))

(declare-fun b!6500424 () Bool)

(declare-fun e!3938987 () Bool)

(assert (=> b!6500424 (= e!3938987 (matchR!8560 (derivativeStep!5071 lt!2391400 (head!13223 s!2326)) (tail!12308 s!2326)))))

(declare-fun d!2039740 () Bool)

(declare-fun e!3938986 () Bool)

(assert (=> d!2039740 e!3938986))

(declare-fun c!1191840 () Bool)

(assert (=> d!2039740 (= c!1191840 ((_ is EmptyExpr!16377) lt!2391400))))

(declare-fun lt!2391483 () Bool)

(assert (=> d!2039740 (= lt!2391483 e!3938987)))

(declare-fun c!1191841 () Bool)

(assert (=> d!2039740 (= c!1191841 (isEmpty!37507 s!2326))))

(assert (=> d!2039740 (validRegex!8113 lt!2391400)))

(assert (=> d!2039740 (= (matchR!8560 lt!2391400 s!2326) lt!2391483)))

(declare-fun b!6500425 () Bool)

(declare-fun call!563259 () Bool)

(assert (=> b!6500425 (= e!3938986 (= lt!2391483 call!563259))))

(declare-fun b!6500426 () Bool)

(declare-fun e!3938988 () Bool)

(assert (=> b!6500426 (= e!3938988 (not (= (head!13223 s!2326) (c!1191679 lt!2391400))))))

(declare-fun b!6500427 () Bool)

(declare-fun res!2669569 () Bool)

(declare-fun e!3938983 () Bool)

(assert (=> b!6500427 (=> res!2669569 e!3938983)))

(declare-fun e!3938984 () Bool)

(assert (=> b!6500427 (= res!2669569 e!3938984)))

(declare-fun res!2669573 () Bool)

(assert (=> b!6500427 (=> (not res!2669573) (not e!3938984))))

(assert (=> b!6500427 (= res!2669573 lt!2391483)))

(declare-fun bm!563254 () Bool)

(assert (=> bm!563254 (= call!563259 (isEmpty!37507 s!2326))))

(declare-fun b!6500428 () Bool)

(declare-fun e!3938989 () Bool)

(assert (=> b!6500428 (= e!3938989 e!3938988)))

(declare-fun res!2669576 () Bool)

(assert (=> b!6500428 (=> res!2669576 e!3938988)))

(assert (=> b!6500428 (= res!2669576 call!563259)))

(declare-fun b!6500429 () Bool)

(declare-fun e!3938985 () Bool)

(assert (=> b!6500429 (= e!3938985 (not lt!2391483))))

(declare-fun b!6500430 () Bool)

(declare-fun res!2669572 () Bool)

(assert (=> b!6500430 (=> res!2669572 e!3938983)))

(assert (=> b!6500430 (= res!2669572 (not ((_ is ElementMatch!16377) lt!2391400)))))

(assert (=> b!6500430 (= e!3938985 e!3938983)))

(declare-fun b!6500431 () Bool)

(declare-fun res!2669570 () Bool)

(assert (=> b!6500431 (=> res!2669570 e!3938988)))

(assert (=> b!6500431 (= res!2669570 (not (isEmpty!37507 (tail!12308 s!2326))))))

(declare-fun b!6500432 () Bool)

(declare-fun res!2669574 () Bool)

(assert (=> b!6500432 (=> (not res!2669574) (not e!3938984))))

(assert (=> b!6500432 (= res!2669574 (not call!563259))))

(declare-fun b!6500433 () Bool)

(declare-fun res!2669575 () Bool)

(assert (=> b!6500433 (=> (not res!2669575) (not e!3938984))))

(assert (=> b!6500433 (= res!2669575 (isEmpty!37507 (tail!12308 s!2326)))))

(declare-fun b!6500434 () Bool)

(assert (=> b!6500434 (= e!3938984 (= (head!13223 s!2326) (c!1191679 lt!2391400)))))

(declare-fun b!6500435 () Bool)

(assert (=> b!6500435 (= e!3938983 e!3938989)))

(declare-fun res!2669571 () Bool)

(assert (=> b!6500435 (=> (not res!2669571) (not e!3938989))))

(assert (=> b!6500435 (= res!2669571 (not lt!2391483))))

(declare-fun b!6500436 () Bool)

(assert (=> b!6500436 (= e!3938987 (nullable!6370 lt!2391400))))

(declare-fun b!6500437 () Bool)

(assert (=> b!6500437 (= e!3938986 e!3938985)))

(declare-fun c!1191842 () Bool)

(assert (=> b!6500437 (= c!1191842 ((_ is EmptyLang!16377) lt!2391400))))

(assert (= (and d!2039740 c!1191841) b!6500436))

(assert (= (and d!2039740 (not c!1191841)) b!6500424))

(assert (= (and d!2039740 c!1191840) b!6500425))

(assert (= (and d!2039740 (not c!1191840)) b!6500437))

(assert (= (and b!6500437 c!1191842) b!6500429))

(assert (= (and b!6500437 (not c!1191842)) b!6500430))

(assert (= (and b!6500430 (not res!2669572)) b!6500427))

(assert (= (and b!6500427 res!2669573) b!6500432))

(assert (= (and b!6500432 res!2669574) b!6500433))

(assert (= (and b!6500433 res!2669575) b!6500434))

(assert (= (and b!6500427 (not res!2669569)) b!6500435))

(assert (= (and b!6500435 res!2669571) b!6500428))

(assert (= (and b!6500428 (not res!2669576)) b!6500431))

(assert (= (and b!6500431 (not res!2669570)) b!6500426))

(assert (= (or b!6500425 b!6500428 b!6500432) bm!563254))

(assert (=> bm!563254 m!7287980))

(assert (=> b!6500431 m!7287988))

(assert (=> b!6500431 m!7287988))

(assert (=> b!6500431 m!7288138))

(assert (=> b!6500434 m!7287984))

(assert (=> b!6500424 m!7287984))

(assert (=> b!6500424 m!7287984))

(declare-fun m!7288352 () Bool)

(assert (=> b!6500424 m!7288352))

(assert (=> b!6500424 m!7287988))

(assert (=> b!6500424 m!7288352))

(assert (=> b!6500424 m!7287988))

(declare-fun m!7288354 () Bool)

(assert (=> b!6500424 m!7288354))

(assert (=> b!6500426 m!7287984))

(declare-fun m!7288356 () Bool)

(assert (=> b!6500436 m!7288356))

(assert (=> d!2039740 m!7287980))

(declare-fun m!7288358 () Bool)

(assert (=> d!2039740 m!7288358))

(assert (=> b!6500433 m!7287988))

(assert (=> b!6500433 m!7287988))

(assert (=> b!6500433 m!7288138))

(assert (=> b!6499871 d!2039740))

(declare-fun bs!1651269 () Bool)

(declare-fun b!6500448 () Bool)

(assert (= bs!1651269 (and b!6500448 b!6500079)))

(declare-fun lambda!360235 () Int)

(assert (=> bs!1651269 (= (and (= (reg!16706 lt!2391400) (reg!16706 r!7292)) (= lt!2391400 r!7292)) (= lambda!360235 lambda!360190))))

(declare-fun bs!1651270 () Bool)

(assert (= bs!1651270 (and b!6500448 b!6500074)))

(assert (=> bs!1651270 (not (= lambda!360235 lambda!360191))))

(declare-fun bs!1651271 () Bool)

(assert (= bs!1651271 (and b!6500448 b!6499872)))

(assert (=> bs!1651271 (not (= lambda!360235 lambda!360175))))

(declare-fun bs!1651272 () Bool)

(assert (= bs!1651272 (and b!6500448 d!2039698)))

(assert (=> bs!1651272 (not (= lambda!360235 lambda!360215))))

(assert (=> bs!1651271 (not (= lambda!360235 lambda!360174))))

(declare-fun bs!1651273 () Bool)

(assert (= bs!1651273 (and b!6500448 d!2039690)))

(assert (=> bs!1651273 (not (= lambda!360235 lambda!360207))))

(assert (=> bs!1651272 (not (= lambda!360235 lambda!360214))))

(assert (=> b!6500448 true))

(assert (=> b!6500448 true))

(declare-fun bs!1651274 () Bool)

(declare-fun b!6500443 () Bool)

(assert (= bs!1651274 (and b!6500443 b!6500079)))

(declare-fun lambda!360236 () Int)

(assert (=> bs!1651274 (not (= lambda!360236 lambda!360190))))

(declare-fun bs!1651275 () Bool)

(assert (= bs!1651275 (and b!6500443 b!6500074)))

(assert (=> bs!1651275 (= (and (= (regOne!33266 lt!2391400) (regOne!33266 r!7292)) (= (regTwo!33266 lt!2391400) (regTwo!33266 r!7292))) (= lambda!360236 lambda!360191))))

(declare-fun bs!1651276 () Bool)

(assert (= bs!1651276 (and b!6500443 b!6499872)))

(assert (=> bs!1651276 (= (and (= (regOne!33266 lt!2391400) (regOne!33266 r!7292)) (= (regTwo!33266 lt!2391400) (regTwo!33266 r!7292))) (= lambda!360236 lambda!360175))))

(declare-fun bs!1651277 () Bool)

(assert (= bs!1651277 (and b!6500443 d!2039698)))

(assert (=> bs!1651277 (= (and (= (regOne!33266 lt!2391400) (regOne!33266 r!7292)) (= (regTwo!33266 lt!2391400) (regTwo!33266 r!7292))) (= lambda!360236 lambda!360215))))

(declare-fun bs!1651278 () Bool)

(assert (= bs!1651278 (and b!6500443 b!6500448)))

(assert (=> bs!1651278 (not (= lambda!360236 lambda!360235))))

(assert (=> bs!1651276 (not (= lambda!360236 lambda!360174))))

(declare-fun bs!1651279 () Bool)

(assert (= bs!1651279 (and b!6500443 d!2039690)))

(assert (=> bs!1651279 (not (= lambda!360236 lambda!360207))))

(assert (=> bs!1651277 (not (= lambda!360236 lambda!360214))))

(assert (=> b!6500443 true))

(assert (=> b!6500443 true))

(declare-fun d!2039742 () Bool)

(declare-fun c!1191844 () Bool)

(assert (=> d!2039742 (= c!1191844 ((_ is EmptyExpr!16377) lt!2391400))))

(declare-fun e!3938996 () Bool)

(assert (=> d!2039742 (= (matchRSpec!3478 lt!2391400 s!2326) e!3938996)))

(declare-fun b!6500438 () Bool)

(declare-fun e!3938992 () Bool)

(assert (=> b!6500438 (= e!3938992 (= s!2326 (Cons!65307 (c!1191679 lt!2391400) Nil!65307)))))

(declare-fun b!6500439 () Bool)

(declare-fun e!3938990 () Bool)

(assert (=> b!6500439 (= e!3938990 (matchRSpec!3478 (regTwo!33267 lt!2391400) s!2326))))

(declare-fun b!6500440 () Bool)

(declare-fun e!3938993 () Bool)

(declare-fun e!3938991 () Bool)

(assert (=> b!6500440 (= e!3938993 e!3938991)))

(declare-fun c!1191846 () Bool)

(assert (=> b!6500440 (= c!1191846 ((_ is Star!16377) lt!2391400))))

(declare-fun b!6500441 () Bool)

(declare-fun call!563260 () Bool)

(assert (=> b!6500441 (= e!3938996 call!563260)))

(declare-fun b!6500442 () Bool)

(declare-fun res!2669578 () Bool)

(declare-fun e!3938995 () Bool)

(assert (=> b!6500442 (=> res!2669578 e!3938995)))

(assert (=> b!6500442 (= res!2669578 call!563260)))

(assert (=> b!6500442 (= e!3938991 e!3938995)))

(declare-fun bm!563255 () Bool)

(assert (=> bm!563255 (= call!563260 (isEmpty!37507 s!2326))))

(declare-fun call!563261 () Bool)

(assert (=> b!6500443 (= e!3938991 call!563261)))

(declare-fun b!6500444 () Bool)

(declare-fun e!3938994 () Bool)

(assert (=> b!6500444 (= e!3938996 e!3938994)))

(declare-fun res!2669577 () Bool)

(assert (=> b!6500444 (= res!2669577 (not ((_ is EmptyLang!16377) lt!2391400)))))

(assert (=> b!6500444 (=> (not res!2669577) (not e!3938994))))

(declare-fun b!6500445 () Bool)

(declare-fun c!1191845 () Bool)

(assert (=> b!6500445 (= c!1191845 ((_ is ElementMatch!16377) lt!2391400))))

(assert (=> b!6500445 (= e!3938994 e!3938992)))

(declare-fun bm!563256 () Bool)

(assert (=> bm!563256 (= call!563261 (Exists!3447 (ite c!1191846 lambda!360235 lambda!360236)))))

(declare-fun b!6500446 () Bool)

(declare-fun c!1191843 () Bool)

(assert (=> b!6500446 (= c!1191843 ((_ is Union!16377) lt!2391400))))

(assert (=> b!6500446 (= e!3938992 e!3938993)))

(declare-fun b!6500447 () Bool)

(assert (=> b!6500447 (= e!3938993 e!3938990)))

(declare-fun res!2669579 () Bool)

(assert (=> b!6500447 (= res!2669579 (matchRSpec!3478 (regOne!33267 lt!2391400) s!2326))))

(assert (=> b!6500447 (=> res!2669579 e!3938990)))

(assert (=> b!6500448 (= e!3938995 call!563261)))

(assert (= (and d!2039742 c!1191844) b!6500441))

(assert (= (and d!2039742 (not c!1191844)) b!6500444))

(assert (= (and b!6500444 res!2669577) b!6500445))

(assert (= (and b!6500445 c!1191845) b!6500438))

(assert (= (and b!6500445 (not c!1191845)) b!6500446))

(assert (= (and b!6500446 c!1191843) b!6500447))

(assert (= (and b!6500446 (not c!1191843)) b!6500440))

(assert (= (and b!6500447 (not res!2669579)) b!6500439))

(assert (= (and b!6500440 c!1191846) b!6500442))

(assert (= (and b!6500440 (not c!1191846)) b!6500443))

(assert (= (and b!6500442 (not res!2669578)) b!6500448))

(assert (= (or b!6500448 b!6500443) bm!563256))

(assert (= (or b!6500441 b!6500442) bm!563255))

(declare-fun m!7288368 () Bool)

(assert (=> b!6500439 m!7288368))

(assert (=> bm!563255 m!7287980))

(declare-fun m!7288372 () Bool)

(assert (=> bm!563256 m!7288372))

(declare-fun m!7288374 () Bool)

(assert (=> b!6500447 m!7288374))

(assert (=> b!6499871 d!2039742))

(declare-fun d!2039750 () Bool)

(assert (=> d!2039750 (= (matchR!8560 lt!2391400 s!2326) (matchRSpec!3478 lt!2391400 s!2326))))

(declare-fun lt!2391484 () Unit!158843)

(assert (=> d!2039750 (= lt!2391484 (choose!48245 lt!2391400 s!2326))))

(assert (=> d!2039750 (validRegex!8113 lt!2391400)))

(assert (=> d!2039750 (= (mainMatchTheorem!3478 lt!2391400 s!2326) lt!2391484)))

(declare-fun bs!1651282 () Bool)

(assert (= bs!1651282 d!2039750))

(assert (=> bs!1651282 m!7287882))

(assert (=> bs!1651282 m!7287884))

(declare-fun m!7288376 () Bool)

(assert (=> bs!1651282 m!7288376))

(assert (=> bs!1651282 m!7288358))

(assert (=> b!6499871 d!2039750))

(declare-fun bs!1651283 () Bool)

(declare-fun d!2039752 () Bool)

(assert (= bs!1651283 (and d!2039752 d!2039726)))

(declare-fun lambda!360237 () Int)

(assert (=> bs!1651283 (= lambda!360237 lambda!360234)))

(declare-fun bs!1651284 () Bool)

(assert (= bs!1651284 (and d!2039752 d!2039710)))

(assert (=> bs!1651284 (= lambda!360237 lambda!360222)))

(declare-fun bs!1651285 () Bool)

(assert (= bs!1651285 (and d!2039752 d!2039676)))

(assert (=> bs!1651285 (= lambda!360237 lambda!360200)))

(declare-fun bs!1651286 () Bool)

(assert (= bs!1651286 (and d!2039752 d!2039718)))

(assert (=> bs!1651286 (= lambda!360237 lambda!360228)))

(declare-fun bs!1651287 () Bool)

(assert (= bs!1651287 (and d!2039752 d!2039630)))

(assert (=> bs!1651287 (= lambda!360237 lambda!360182)))

(assert (=> d!2039752 (= (inv!84189 setElem!44303) (forall!15557 (exprs!6261 setElem!44303) lambda!360237))))

(declare-fun bs!1651288 () Bool)

(assert (= bs!1651288 d!2039752))

(declare-fun m!7288378 () Bool)

(assert (=> bs!1651288 m!7288378))

(assert (=> setNonEmpty!44303 d!2039752))

(declare-fun d!2039754 () Bool)

(declare-fun c!1191853 () Bool)

(assert (=> d!2039754 (= c!1191853 (isEmpty!37507 (t!379065 s!2326)))))

(declare-fun e!3939006 () Bool)

(assert (=> d!2039754 (= (matchZipper!2389 lt!2391384 (t!379065 s!2326)) e!3939006)))

(declare-fun b!6500464 () Bool)

(assert (=> b!6500464 (= e!3939006 (nullableZipper!2131 lt!2391384))))

(declare-fun b!6500465 () Bool)

(assert (=> b!6500465 (= e!3939006 (matchZipper!2389 (derivationStepZipper!2343 lt!2391384 (head!13223 (t!379065 s!2326))) (tail!12308 (t!379065 s!2326))))))

(assert (= (and d!2039754 c!1191853) b!6500464))

(assert (= (and d!2039754 (not c!1191853)) b!6500465))

(assert (=> d!2039754 m!7287992))

(declare-fun m!7288380 () Bool)

(assert (=> b!6500464 m!7288380))

(assert (=> b!6500465 m!7287996))

(assert (=> b!6500465 m!7287996))

(declare-fun m!7288382 () Bool)

(assert (=> b!6500465 m!7288382))

(assert (=> b!6500465 m!7288000))

(assert (=> b!6500465 m!7288382))

(assert (=> b!6500465 m!7288000))

(declare-fun m!7288384 () Bool)

(assert (=> b!6500465 m!7288384))

(assert (=> b!6499849 d!2039754))

(declare-fun d!2039756 () Bool)

(declare-fun c!1191854 () Bool)

(assert (=> d!2039756 (= c!1191854 (isEmpty!37507 s!2326))))

(declare-fun e!3939007 () Bool)

(assert (=> d!2039756 (= (matchZipper!2389 lt!2391379 s!2326) e!3939007)))

(declare-fun b!6500466 () Bool)

(assert (=> b!6500466 (= e!3939007 (nullableZipper!2131 lt!2391379))))

(declare-fun b!6500467 () Bool)

(assert (=> b!6500467 (= e!3939007 (matchZipper!2389 (derivationStepZipper!2343 lt!2391379 (head!13223 s!2326)) (tail!12308 s!2326)))))

(assert (= (and d!2039756 c!1191854) b!6500466))

(assert (= (and d!2039756 (not c!1191854)) b!6500467))

(assert (=> d!2039756 m!7287980))

(declare-fun m!7288386 () Bool)

(assert (=> b!6500466 m!7288386))

(assert (=> b!6500467 m!7287984))

(assert (=> b!6500467 m!7287984))

(declare-fun m!7288388 () Bool)

(assert (=> b!6500467 m!7288388))

(assert (=> b!6500467 m!7287988))

(assert (=> b!6500467 m!7288388))

(assert (=> b!6500467 m!7287988))

(declare-fun m!7288390 () Bool)

(assert (=> b!6500467 m!7288390))

(assert (=> b!6499849 d!2039756))

(declare-fun d!2039758 () Bool)

(declare-fun lt!2391487 () Regex!16377)

(assert (=> d!2039758 (validRegex!8113 lt!2391487)))

(assert (=> d!2039758 (= lt!2391487 (generalisedUnion!2221 (unfocusZipperList!1798 zl!343)))))

(assert (=> d!2039758 (= (unfocusZipper!2119 zl!343) lt!2391487)))

(declare-fun bs!1651289 () Bool)

(assert (= bs!1651289 d!2039758))

(declare-fun m!7288392 () Bool)

(assert (=> bs!1651289 m!7288392))

(assert (=> bs!1651289 m!7287870))

(assert (=> bs!1651289 m!7287870))

(assert (=> bs!1651289 m!7287872))

(assert (=> b!6499870 d!2039758))

(declare-fun d!2039760 () Bool)

(declare-fun lt!2391488 () Regex!16377)

(assert (=> d!2039760 (validRegex!8113 lt!2391488)))

(assert (=> d!2039760 (= lt!2391488 (generalisedUnion!2221 (unfocusZipperList!1798 (Cons!65308 lt!2391399 Nil!65308))))))

(assert (=> d!2039760 (= (unfocusZipper!2119 (Cons!65308 lt!2391399 Nil!65308)) lt!2391488)))

(declare-fun bs!1651290 () Bool)

(assert (= bs!1651290 d!2039760))

(declare-fun m!7288394 () Bool)

(assert (=> bs!1651290 m!7288394))

(declare-fun m!7288396 () Bool)

(assert (=> bs!1651290 m!7288396))

(assert (=> bs!1651290 m!7288396))

(declare-fun m!7288398 () Bool)

(assert (=> bs!1651290 m!7288398))

(assert (=> b!6499869 d!2039760))

(declare-fun d!2039762 () Bool)

(assert (=> d!2039762 (= (flatMap!1882 lt!2391396 lambda!360176) (dynLambda!25942 lambda!360176 lt!2391372))))

(declare-fun lt!2391490 () Unit!158843)

(assert (=> d!2039762 (= lt!2391490 (choose!48240 lt!2391396 lt!2391372 lambda!360176))))

(assert (=> d!2039762 (= lt!2391396 (store ((as const (Array Context!11522 Bool)) false) lt!2391372 true))))

(assert (=> d!2039762 (= (lemmaFlatMapOnSingletonSet!1408 lt!2391396 lt!2391372 lambda!360176) lt!2391490)))

(declare-fun b_lambda!246079 () Bool)

(assert (=> (not b_lambda!246079) (not d!2039762)))

(declare-fun bs!1651292 () Bool)

(assert (= bs!1651292 d!2039762))

(assert (=> bs!1651292 m!7287950))

(declare-fun m!7288404 () Bool)

(assert (=> bs!1651292 m!7288404))

(declare-fun m!7288406 () Bool)

(assert (=> bs!1651292 m!7288406))

(assert (=> bs!1651292 m!7287938))

(assert (=> b!6499869 d!2039762))

(declare-fun b!6500473 () Bool)

(declare-fun e!3939011 () (InoxSet Context!11522))

(declare-fun call!563266 () (InoxSet Context!11522))

(assert (=> b!6500473 (= e!3939011 call!563266)))

(declare-fun b!6500474 () Bool)

(assert (=> b!6500474 (= e!3939011 ((as const (Array Context!11522 Bool)) false))))

(declare-fun d!2039766 () Bool)

(declare-fun c!1191858 () Bool)

(declare-fun e!3939012 () Bool)

(assert (=> d!2039766 (= c!1191858 e!3939012)))

(declare-fun res!2669584 () Bool)

(assert (=> d!2039766 (=> (not res!2669584) (not e!3939012))))

(assert (=> d!2039766 (= res!2669584 ((_ is Cons!65306) (exprs!6261 lt!2391399)))))

(declare-fun e!3939013 () (InoxSet Context!11522))

(assert (=> d!2039766 (= (derivationStepZipperUp!1551 lt!2391399 (h!71755 s!2326)) e!3939013)))

(declare-fun b!6500475 () Bool)

(assert (=> b!6500475 (= e!3939013 ((_ map or) call!563266 (derivationStepZipperUp!1551 (Context!11523 (t!379064 (exprs!6261 lt!2391399))) (h!71755 s!2326))))))

(declare-fun bm!563261 () Bool)

(assert (=> bm!563261 (= call!563266 (derivationStepZipperDown!1625 (h!71754 (exprs!6261 lt!2391399)) (Context!11523 (t!379064 (exprs!6261 lt!2391399))) (h!71755 s!2326)))))

(declare-fun b!6500476 () Bool)

(assert (=> b!6500476 (= e!3939012 (nullable!6370 (h!71754 (exprs!6261 lt!2391399))))))

(declare-fun b!6500477 () Bool)

(assert (=> b!6500477 (= e!3939013 e!3939011)))

(declare-fun c!1191857 () Bool)

(assert (=> b!6500477 (= c!1191857 ((_ is Cons!65306) (exprs!6261 lt!2391399)))))

(assert (= (and d!2039766 res!2669584) b!6500476))

(assert (= (and d!2039766 c!1191858) b!6500475))

(assert (= (and d!2039766 (not c!1191858)) b!6500477))

(assert (= (and b!6500477 c!1191857) b!6500473))

(assert (= (and b!6500477 (not c!1191857)) b!6500474))

(assert (= (or b!6500475 b!6500473) bm!563261))

(declare-fun m!7288410 () Bool)

(assert (=> b!6500475 m!7288410))

(declare-fun m!7288414 () Bool)

(assert (=> bm!563261 m!7288414))

(declare-fun m!7288418 () Bool)

(assert (=> b!6500476 m!7288418))

(assert (=> b!6499869 d!2039766))

(declare-fun d!2039768 () Bool)

(assert (=> d!2039768 (= (flatMap!1882 lt!2391396 lambda!360176) (choose!48239 lt!2391396 lambda!360176))))

(declare-fun bs!1651294 () Bool)

(assert (= bs!1651294 d!2039768))

(declare-fun m!7288420 () Bool)

(assert (=> bs!1651294 m!7288420))

(assert (=> b!6499869 d!2039768))

(declare-fun d!2039772 () Bool)

(assert (=> d!2039772 (= (flatMap!1882 lt!2391381 lambda!360176) (choose!48239 lt!2391381 lambda!360176))))

(declare-fun bs!1651295 () Bool)

(assert (= bs!1651295 d!2039772))

(declare-fun m!7288428 () Bool)

(assert (=> bs!1651295 m!7288428))

(assert (=> b!6499869 d!2039772))

(declare-fun d!2039776 () Bool)

(assert (=> d!2039776 (= (flatMap!1882 lt!2391381 lambda!360176) (dynLambda!25942 lambda!360176 lt!2391399))))

(declare-fun lt!2391493 () Unit!158843)

(assert (=> d!2039776 (= lt!2391493 (choose!48240 lt!2391381 lt!2391399 lambda!360176))))

(assert (=> d!2039776 (= lt!2391381 (store ((as const (Array Context!11522 Bool)) false) lt!2391399 true))))

(assert (=> d!2039776 (= (lemmaFlatMapOnSingletonSet!1408 lt!2391381 lt!2391399 lambda!360176) lt!2391493)))

(declare-fun b_lambda!246083 () Bool)

(assert (=> (not b_lambda!246083) (not d!2039776)))

(declare-fun bs!1651297 () Bool)

(assert (= bs!1651297 d!2039776))

(assert (=> bs!1651297 m!7287948))

(declare-fun m!7288432 () Bool)

(assert (=> bs!1651297 m!7288432))

(declare-fun m!7288436 () Bool)

(assert (=> bs!1651297 m!7288436))

(assert (=> bs!1651297 m!7287942))

(assert (=> b!6499869 d!2039776))

(declare-fun b!6500478 () Bool)

(declare-fun e!3939014 () (InoxSet Context!11522))

(declare-fun call!563267 () (InoxSet Context!11522))

(assert (=> b!6500478 (= e!3939014 call!563267)))

(declare-fun b!6500479 () Bool)

(assert (=> b!6500479 (= e!3939014 ((as const (Array Context!11522 Bool)) false))))

(declare-fun d!2039780 () Bool)

(declare-fun c!1191860 () Bool)

(declare-fun e!3939015 () Bool)

(assert (=> d!2039780 (= c!1191860 e!3939015)))

(declare-fun res!2669585 () Bool)

(assert (=> d!2039780 (=> (not res!2669585) (not e!3939015))))

(assert (=> d!2039780 (= res!2669585 ((_ is Cons!65306) (exprs!6261 lt!2391372)))))

(declare-fun e!3939016 () (InoxSet Context!11522))

(assert (=> d!2039780 (= (derivationStepZipperUp!1551 lt!2391372 (h!71755 s!2326)) e!3939016)))

(declare-fun b!6500480 () Bool)

(assert (=> b!6500480 (= e!3939016 ((_ map or) call!563267 (derivationStepZipperUp!1551 (Context!11523 (t!379064 (exprs!6261 lt!2391372))) (h!71755 s!2326))))))

(declare-fun bm!563262 () Bool)

(assert (=> bm!563262 (= call!563267 (derivationStepZipperDown!1625 (h!71754 (exprs!6261 lt!2391372)) (Context!11523 (t!379064 (exprs!6261 lt!2391372))) (h!71755 s!2326)))))

(declare-fun b!6500481 () Bool)

(assert (=> b!6500481 (= e!3939015 (nullable!6370 (h!71754 (exprs!6261 lt!2391372))))))

(declare-fun b!6500482 () Bool)

(assert (=> b!6500482 (= e!3939016 e!3939014)))

(declare-fun c!1191859 () Bool)

(assert (=> b!6500482 (= c!1191859 ((_ is Cons!65306) (exprs!6261 lt!2391372)))))

(assert (= (and d!2039780 res!2669585) b!6500481))

(assert (= (and d!2039780 c!1191860) b!6500480))

(assert (= (and d!2039780 (not c!1191860)) b!6500482))

(assert (= (and b!6500482 c!1191859) b!6500478))

(assert (= (and b!6500482 (not c!1191859)) b!6500479))

(assert (= (or b!6500480 b!6500478) bm!563262))

(declare-fun m!7288438 () Bool)

(assert (=> b!6500480 m!7288438))

(declare-fun m!7288440 () Bool)

(assert (=> bm!563262 m!7288440))

(declare-fun m!7288442 () Bool)

(assert (=> b!6500481 m!7288442))

(assert (=> b!6499869 d!2039780))

(declare-fun b!6500487 () Bool)

(declare-fun e!3939019 () Bool)

(declare-fun tp!1798285 () Bool)

(declare-fun tp!1798286 () Bool)

(assert (=> b!6500487 (= e!3939019 (and tp!1798285 tp!1798286))))

(assert (=> b!6499862 (= tp!1798271 e!3939019)))

(assert (= (and b!6499862 ((_ is Cons!65306) (exprs!6261 setElem!44303))) b!6500487))

(declare-fun b!6500492 () Bool)

(declare-fun e!3939022 () Bool)

(declare-fun tp!1798289 () Bool)

(assert (=> b!6500492 (= e!3939022 (and tp_is_empty!42007 tp!1798289))))

(assert (=> b!6499863 (= tp!1798278 e!3939022)))

(assert (= (and b!6499863 ((_ is Cons!65307) (t!379065 s!2326))) b!6500492))

(declare-fun b!6500503 () Bool)

(declare-fun e!3939025 () Bool)

(assert (=> b!6500503 (= e!3939025 tp_is_empty!42007)))

(assert (=> b!6499881 (= tp!1798274 e!3939025)))

(declare-fun b!6500506 () Bool)

(declare-fun tp!1798301 () Bool)

(declare-fun tp!1798304 () Bool)

(assert (=> b!6500506 (= e!3939025 (and tp!1798301 tp!1798304))))

(declare-fun b!6500504 () Bool)

(declare-fun tp!1798303 () Bool)

(declare-fun tp!1798300 () Bool)

(assert (=> b!6500504 (= e!3939025 (and tp!1798303 tp!1798300))))

(declare-fun b!6500505 () Bool)

(declare-fun tp!1798302 () Bool)

(assert (=> b!6500505 (= e!3939025 tp!1798302)))

(assert (= (and b!6499881 ((_ is ElementMatch!16377) (regOne!33266 r!7292))) b!6500503))

(assert (= (and b!6499881 ((_ is Concat!25222) (regOne!33266 r!7292))) b!6500504))

(assert (= (and b!6499881 ((_ is Star!16377) (regOne!33266 r!7292))) b!6500505))

(assert (= (and b!6499881 ((_ is Union!16377) (regOne!33266 r!7292))) b!6500506))

(declare-fun b!6500507 () Bool)

(declare-fun e!3939026 () Bool)

(assert (=> b!6500507 (= e!3939026 tp_is_empty!42007)))

(assert (=> b!6499881 (= tp!1798279 e!3939026)))

(declare-fun b!6500510 () Bool)

(declare-fun tp!1798306 () Bool)

(declare-fun tp!1798309 () Bool)

(assert (=> b!6500510 (= e!3939026 (and tp!1798306 tp!1798309))))

(declare-fun b!6500508 () Bool)

(declare-fun tp!1798308 () Bool)

(declare-fun tp!1798305 () Bool)

(assert (=> b!6500508 (= e!3939026 (and tp!1798308 tp!1798305))))

(declare-fun b!6500509 () Bool)

(declare-fun tp!1798307 () Bool)

(assert (=> b!6500509 (= e!3939026 tp!1798307)))

(assert (= (and b!6499881 ((_ is ElementMatch!16377) (regTwo!33266 r!7292))) b!6500507))

(assert (= (and b!6499881 ((_ is Concat!25222) (regTwo!33266 r!7292))) b!6500508))

(assert (= (and b!6499881 ((_ is Star!16377) (regTwo!33266 r!7292))) b!6500509))

(assert (= (and b!6499881 ((_ is Union!16377) (regTwo!33266 r!7292))) b!6500510))

(declare-fun b!6500511 () Bool)

(declare-fun e!3939027 () Bool)

(declare-fun tp!1798310 () Bool)

(declare-fun tp!1798311 () Bool)

(assert (=> b!6500511 (= e!3939027 (and tp!1798310 tp!1798311))))

(assert (=> b!6499845 (= tp!1798275 e!3939027)))

(assert (= (and b!6499845 ((_ is Cons!65306) (exprs!6261 (h!71756 zl!343)))) b!6500511))

(declare-fun condSetEmpty!44306 () Bool)

(assert (=> setNonEmpty!44303 (= condSetEmpty!44306 (= setRest!44303 ((as const (Array Context!11522 Bool)) false)))))

(declare-fun setRes!44306 () Bool)

(assert (=> setNonEmpty!44303 (= tp!1798273 setRes!44306)))

(declare-fun setIsEmpty!44306 () Bool)

(assert (=> setIsEmpty!44306 setRes!44306))

(declare-fun tp!1798316 () Bool)

(declare-fun setElem!44306 () Context!11522)

(declare-fun e!3939032 () Bool)

(declare-fun setNonEmpty!44306 () Bool)

(assert (=> setNonEmpty!44306 (= setRes!44306 (and tp!1798316 (inv!84189 setElem!44306) e!3939032))))

(declare-fun setRest!44306 () (InoxSet Context!11522))

(assert (=> setNonEmpty!44306 (= setRest!44303 ((_ map or) (store ((as const (Array Context!11522 Bool)) false) setElem!44306 true) setRest!44306))))

(declare-fun b!6500523 () Bool)

(declare-fun tp!1798317 () Bool)

(assert (=> b!6500523 (= e!3939032 tp!1798317)))

(assert (= (and setNonEmpty!44303 condSetEmpty!44306) setIsEmpty!44306))

(assert (= (and setNonEmpty!44303 (not condSetEmpty!44306)) setNonEmpty!44306))

(assert (= setNonEmpty!44306 b!6500523))

(declare-fun m!7288444 () Bool)

(assert (=> setNonEmpty!44306 m!7288444))

(declare-fun b!6500546 () Bool)

(declare-fun e!3939048 () Bool)

(declare-fun tp!1798322 () Bool)

(assert (=> b!6500546 (= e!3939048 tp!1798322)))

(declare-fun b!6500545 () Bool)

(declare-fun e!3939047 () Bool)

(declare-fun tp!1798323 () Bool)

(assert (=> b!6500545 (= e!3939047 (and (inv!84189 (h!71756 (t!379066 zl!343))) e!3939048 tp!1798323))))

(assert (=> b!6499875 (= tp!1798272 e!3939047)))

(assert (= b!6500545 b!6500546))

(assert (= (and b!6499875 ((_ is Cons!65308) (t!379066 zl!343))) b!6500545))

(declare-fun m!7288446 () Bool)

(assert (=> b!6500545 m!7288446))

(declare-fun b!6500547 () Bool)

(declare-fun e!3939049 () Bool)

(assert (=> b!6500547 (= e!3939049 tp_is_empty!42007)))

(assert (=> b!6499855 (= tp!1798277 e!3939049)))

(declare-fun b!6500550 () Bool)

(declare-fun tp!1798325 () Bool)

(declare-fun tp!1798328 () Bool)

(assert (=> b!6500550 (= e!3939049 (and tp!1798325 tp!1798328))))

(declare-fun b!6500548 () Bool)

(declare-fun tp!1798327 () Bool)

(declare-fun tp!1798324 () Bool)

(assert (=> b!6500548 (= e!3939049 (and tp!1798327 tp!1798324))))

(declare-fun b!6500549 () Bool)

(declare-fun tp!1798326 () Bool)

(assert (=> b!6500549 (= e!3939049 tp!1798326)))

(assert (= (and b!6499855 ((_ is ElementMatch!16377) (reg!16706 r!7292))) b!6500547))

(assert (= (and b!6499855 ((_ is Concat!25222) (reg!16706 r!7292))) b!6500548))

(assert (= (and b!6499855 ((_ is Star!16377) (reg!16706 r!7292))) b!6500549))

(assert (= (and b!6499855 ((_ is Union!16377) (reg!16706 r!7292))) b!6500550))

(declare-fun b!6500551 () Bool)

(declare-fun e!3939050 () Bool)

(assert (=> b!6500551 (= e!3939050 tp_is_empty!42007)))

(assert (=> b!6499859 (= tp!1798276 e!3939050)))

(declare-fun b!6500554 () Bool)

(declare-fun tp!1798330 () Bool)

(declare-fun tp!1798333 () Bool)

(assert (=> b!6500554 (= e!3939050 (and tp!1798330 tp!1798333))))

(declare-fun b!6500552 () Bool)

(declare-fun tp!1798332 () Bool)

(declare-fun tp!1798329 () Bool)

(assert (=> b!6500552 (= e!3939050 (and tp!1798332 tp!1798329))))

(declare-fun b!6500553 () Bool)

(declare-fun tp!1798331 () Bool)

(assert (=> b!6500553 (= e!3939050 tp!1798331)))

(assert (= (and b!6499859 ((_ is ElementMatch!16377) (regOne!33267 r!7292))) b!6500551))

(assert (= (and b!6499859 ((_ is Concat!25222) (regOne!33267 r!7292))) b!6500552))

(assert (= (and b!6499859 ((_ is Star!16377) (regOne!33267 r!7292))) b!6500553))

(assert (= (and b!6499859 ((_ is Union!16377) (regOne!33267 r!7292))) b!6500554))

(declare-fun b!6500555 () Bool)

(declare-fun e!3939051 () Bool)

(assert (=> b!6500555 (= e!3939051 tp_is_empty!42007)))

(assert (=> b!6499859 (= tp!1798280 e!3939051)))

(declare-fun b!6500558 () Bool)

(declare-fun tp!1798335 () Bool)

(declare-fun tp!1798338 () Bool)

(assert (=> b!6500558 (= e!3939051 (and tp!1798335 tp!1798338))))

(declare-fun b!6500556 () Bool)

(declare-fun tp!1798337 () Bool)

(declare-fun tp!1798334 () Bool)

(assert (=> b!6500556 (= e!3939051 (and tp!1798337 tp!1798334))))

(declare-fun b!6500557 () Bool)

(declare-fun tp!1798336 () Bool)

(assert (=> b!6500557 (= e!3939051 tp!1798336)))

(assert (= (and b!6499859 ((_ is ElementMatch!16377) (regTwo!33267 r!7292))) b!6500555))

(assert (= (and b!6499859 ((_ is Concat!25222) (regTwo!33267 r!7292))) b!6500556))

(assert (= (and b!6499859 ((_ is Star!16377) (regTwo!33267 r!7292))) b!6500557))

(assert (= (and b!6499859 ((_ is Union!16377) (regTwo!33267 r!7292))) b!6500558))

(declare-fun b_lambda!246085 () Bool)

(assert (= b_lambda!246075 (or b!6499858 b_lambda!246085)))

(declare-fun bs!1651298 () Bool)

(declare-fun d!2039782 () Bool)

(assert (= bs!1651298 (and d!2039782 b!6499858)))

(assert (=> bs!1651298 (= (dynLambda!25942 lambda!360176 (h!71756 zl!343)) (derivationStepZipperUp!1551 (h!71756 zl!343) (h!71755 s!2326)))))

(assert (=> bs!1651298 m!7287960))

(assert (=> d!2039648 d!2039782))

(declare-fun b_lambda!246087 () Bool)

(assert (= b_lambda!246083 (or b!6499858 b_lambda!246087)))

(declare-fun bs!1651299 () Bool)

(declare-fun d!2039784 () Bool)

(assert (= bs!1651299 (and d!2039784 b!6499858)))

(assert (=> bs!1651299 (= (dynLambda!25942 lambda!360176 lt!2391399) (derivationStepZipperUp!1551 lt!2391399 (h!71755 s!2326)))))

(assert (=> bs!1651299 m!7287940))

(assert (=> d!2039776 d!2039784))

(declare-fun b_lambda!246089 () Bool)

(assert (= b_lambda!246073 (or b!6499858 b_lambda!246089)))

(declare-fun bs!1651300 () Bool)

(declare-fun d!2039786 () Bool)

(assert (= bs!1651300 (and d!2039786 b!6499858)))

(assert (=> bs!1651300 (= (dynLambda!25942 lambda!360176 lt!2391368) (derivationStepZipperUp!1551 lt!2391368 (h!71755 s!2326)))))

(assert (=> bs!1651300 m!7287908))

(assert (=> d!2039626 d!2039786))

(declare-fun b_lambda!246091 () Bool)

(assert (= b_lambda!246079 (or b!6499858 b_lambda!246091)))

(declare-fun bs!1651301 () Bool)

(declare-fun d!2039788 () Bool)

(assert (= bs!1651301 (and d!2039788 b!6499858)))

(assert (=> bs!1651301 (= (dynLambda!25942 lambda!360176 lt!2391372) (derivationStepZipperUp!1551 lt!2391372 (h!71755 s!2326)))))

(assert (=> bs!1651301 m!7287934))

(assert (=> d!2039762 d!2039788))

(check-sat (not bs!1651299) (not b!6500480) (not bm!563217) (not b!6500510) (not bs!1651301) (not b!6500476) (not b!6500420) (not b!6500128) (not b!6500005) (not b!6500409) (not bm!563204) (not b!6500431) (not d!2039726) (not d!2039668) (not bm!563256) (not b!6500415) (not d!2039674) (not b!6500505) (not b_lambda!246085) (not b!6499918) (not bm!563221) (not d!2039648) (not b!6500550) (not b!6499917) (not b!6500466) (not d!2039768) (not b!6499956) (not d!2039756) (not b_lambda!246089) (not bm!563262) (not d!2039708) (not b!6500332) (not b!6500410) (not b!6500426) (not d!2039754) (not bm!563201) (not b!6500447) (not d!2039630) (not b!6500509) (not b!6499895) (not b!6500116) (not b!6500333) (not b!6500504) (not b!6499919) (not b!6499955) (not b!6500433) (not bm!563187) (not bs!1651300) (not b!6500548) (not b!6500227) (not b!6500407) (not bm!563208) (not b!6499911) (not bm!563203) (not b!6500487) (not b!6500465) (not bm!563254) (not bm!563215) (not d!2039636) (not b!6499965) (not b!6500506) (not b!6500552) (not b!6500439) (not d!2039772) (not b!6499910) (not b!6500508) (not b!6500558) (not b!6500554) (not d!2039610) (not setNonEmpty!44306) (not b!6500325) (not b!6499897) (not b!6499966) (not bm!563206) (not b!6500414) (not d!2039632) (not b!6499960) (not b!6500015) (not b!6500523) (not bm!563261) (not b!6500511) (not bm!563232) (not b!6499896) (not d!2039690) (not bm!563222) (not d!2039628) (not bm!563228) (not b!6500330) (not d!2039688) (not b!6500424) (not b!6500545) (not d!2039710) (not b!6500226) (not b!6499961) (not b!6500464) (not b!6500553) (not b!6500078) (not bm!563229) (not b!6500225) (not b!6500328) (not b!6499892) (not d!2039682) (not b!6500118) (not bm!563207) (not bm!563255) (not d!2039680) (not b!6500557) (not d!2039698) (not bm!563219) (not bs!1651298) (not d!2039620) (not b!6499893) (not b!6500546) (not d!2039644) (not b!6500222) (not b!6500556) (not b!6500436) (not d!2039686) (not b!6500434) (not d!2039634) (not b!6500123) (not d!2039762) (not b!6500331) (not b!6499944) (not b!6500230) (not d!2039740) (not b!6499894) (not d!2039676) (not b!6500324) (not b!6500549) (not d!2039626) (not d!2039622) (not b!6500126) (not b!6500070) (not d!2039752) (not b!6500492) (not d!2039776) (not d!2039718) (not b_lambda!246087) (not b!6500223) (not b!6500467) (not d!2039750) (not d!2039612) (not d!2039618) (not d!2039758) tp_is_empty!42007 (not d!2039652) (not b!6500481) (not d!2039678) (not b!6500411) (not b!6500412) (not d!2039760) (not b!6500164) (not b_lambda!246091) (not b!6500475) (not b!6500125))
(check-sat)
