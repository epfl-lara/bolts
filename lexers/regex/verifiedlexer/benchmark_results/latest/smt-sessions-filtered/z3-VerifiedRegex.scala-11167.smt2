; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!580892 () Bool)

(assert start!580892)

(declare-fun b!5593022 () Bool)

(assert (=> b!5593022 true))

(assert (=> b!5593022 true))

(declare-fun lambda!300241 () Int)

(declare-fun lambda!300240 () Int)

(assert (=> b!5593022 (not (= lambda!300241 lambda!300240))))

(assert (=> b!5593022 true))

(assert (=> b!5593022 true))

(declare-fun b!5593035 () Bool)

(assert (=> b!5593035 true))

(declare-fun setIsEmpty!37285 () Bool)

(declare-fun setRes!37285 () Bool)

(assert (=> setIsEmpty!37285 setRes!37285))

(declare-fun b!5593008 () Bool)

(declare-fun res!2372797 () Bool)

(declare-fun e!3450399 () Bool)

(assert (=> b!5593008 (=> (not res!2372797) (not e!3450399))))

(declare-datatypes ((C!31432 0))(
  ( (C!31433 (val!25418 Int)) )
))
(declare-datatypes ((Regex!15581 0))(
  ( (ElementMatch!15581 (c!980214 C!31432)) (Concat!24426 (regOne!31674 Regex!15581) (regTwo!31674 Regex!15581)) (EmptyExpr!15581) (Star!15581 (reg!15910 Regex!15581)) (EmptyLang!15581) (Union!15581 (regOne!31675 Regex!15581) (regTwo!31675 Regex!15581)) )
))
(declare-fun r!7292 () Regex!15581)

(declare-datatypes ((List!63042 0))(
  ( (Nil!62918) (Cons!62918 (h!69366 Regex!15581) (t!376322 List!63042)) )
))
(declare-datatypes ((Context!9930 0))(
  ( (Context!9931 (exprs!5465 List!63042)) )
))
(declare-datatypes ((List!63043 0))(
  ( (Nil!62919) (Cons!62919 (h!69367 Context!9930) (t!376323 List!63043)) )
))
(declare-fun zl!343 () List!63043)

(declare-fun unfocusZipper!1323 (List!63043) Regex!15581)

(assert (=> b!5593008 (= res!2372797 (= r!7292 (unfocusZipper!1323 zl!343)))))

(declare-fun b!5593009 () Bool)

(declare-fun res!2372812 () Bool)

(declare-fun e!3450411 () Bool)

(assert (=> b!5593009 (=> res!2372812 e!3450411)))

(get-info :version)

(assert (=> b!5593009 (= res!2372812 (not ((_ is Cons!62918) (exprs!5465 (h!69367 zl!343)))))))

(declare-fun b!5593010 () Bool)

(declare-datatypes ((Unit!155740 0))(
  ( (Unit!155741) )
))
(declare-fun e!3450414 () Unit!155740)

(declare-fun Unit!155742 () Unit!155740)

(assert (=> b!5593010 (= e!3450414 Unit!155742)))

(declare-fun b!5593011 () Bool)

(declare-fun e!3450404 () Bool)

(declare-fun tp!1546827 () Bool)

(declare-fun tp!1546832 () Bool)

(assert (=> b!5593011 (= e!3450404 (and tp!1546827 tp!1546832))))

(declare-fun b!5593012 () Bool)

(declare-fun e!3450408 () Bool)

(declare-fun tp!1546830 () Bool)

(assert (=> b!5593012 (= e!3450408 tp!1546830)))

(declare-fun b!5593013 () Bool)

(declare-fun e!3450402 () Bool)

(declare-fun tp!1546829 () Bool)

(assert (=> b!5593013 (= e!3450402 tp!1546829)))

(declare-fun b!5593014 () Bool)

(assert (=> b!5593014 (= e!3450399 (not e!3450411))))

(declare-fun res!2372804 () Bool)

(assert (=> b!5593014 (=> res!2372804 e!3450411)))

(assert (=> b!5593014 (= res!2372804 (not ((_ is Cons!62919) zl!343)))))

(declare-fun lt!2255846 () Bool)

(declare-datatypes ((List!63044 0))(
  ( (Nil!62920) (Cons!62920 (h!69368 C!31432) (t!376324 List!63044)) )
))
(declare-fun s!2326 () List!63044)

(declare-fun matchRSpec!2684 (Regex!15581 List!63044) Bool)

(assert (=> b!5593014 (= lt!2255846 (matchRSpec!2684 r!7292 s!2326))))

(declare-fun matchR!7766 (Regex!15581 List!63044) Bool)

(assert (=> b!5593014 (= lt!2255846 (matchR!7766 r!7292 s!2326))))

(declare-fun lt!2255860 () Unit!155740)

(declare-fun mainMatchTheorem!2684 (Regex!15581 List!63044) Unit!155740)

(assert (=> b!5593014 (= lt!2255860 (mainMatchTheorem!2684 r!7292 s!2326))))

(declare-fun b!5593015 () Bool)

(declare-fun tp!1546828 () Bool)

(declare-fun tp!1546835 () Bool)

(assert (=> b!5593015 (= e!3450404 (and tp!1546828 tp!1546835))))

(declare-fun b!5593016 () Bool)

(declare-fun tp_is_empty!40415 () Bool)

(assert (=> b!5593016 (= e!3450404 tp_is_empty!40415)))

(declare-fun b!5593017 () Bool)

(declare-fun e!3450405 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2255866 () (InoxSet Context!9930))

(declare-fun matchZipper!1719 ((InoxSet Context!9930) List!63044) Bool)

(assert (=> b!5593017 (= e!3450405 (matchZipper!1719 lt!2255866 (t!376324 s!2326)))))

(declare-fun b!5593018 () Bool)

(declare-fun e!3450401 () Unit!155740)

(declare-fun Unit!155743 () Unit!155740)

(assert (=> b!5593018 (= e!3450401 Unit!155743)))

(declare-fun lt!2255868 () (InoxSet Context!9930))

(declare-fun lt!2255873 () Unit!155740)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!606 ((InoxSet Context!9930) (InoxSet Context!9930) List!63044) Unit!155740)

(assert (=> b!5593018 (= lt!2255873 (lemmaZipperConcatMatchesSameAsBothZippers!606 lt!2255868 lt!2255866 (t!376324 s!2326)))))

(declare-fun res!2372815 () Bool)

(declare-fun lt!2255848 () Bool)

(assert (=> b!5593018 (= res!2372815 lt!2255848)))

(assert (=> b!5593018 (=> res!2372815 e!3450405)))

(assert (=> b!5593018 (= (matchZipper!1719 ((_ map or) lt!2255868 lt!2255866) (t!376324 s!2326)) e!3450405)))

(declare-fun res!2372802 () Bool)

(assert (=> start!580892 (=> (not res!2372802) (not e!3450399))))

(declare-fun validRegex!7317 (Regex!15581) Bool)

(assert (=> start!580892 (= res!2372802 (validRegex!7317 r!7292))))

(assert (=> start!580892 e!3450399))

(assert (=> start!580892 e!3450404))

(declare-fun condSetEmpty!37285 () Bool)

(declare-fun z!1189 () (InoxSet Context!9930))

(assert (=> start!580892 (= condSetEmpty!37285 (= z!1189 ((as const (Array Context!9930 Bool)) false)))))

(assert (=> start!580892 setRes!37285))

(declare-fun e!3450400 () Bool)

(assert (=> start!580892 e!3450400))

(declare-fun e!3450403 () Bool)

(assert (=> start!580892 e!3450403))

(declare-fun b!5593019 () Bool)

(declare-fun tp!1546834 () Bool)

(assert (=> b!5593019 (= e!3450403 (and tp_is_empty!40415 tp!1546834))))

(declare-fun b!5593020 () Bool)

(declare-fun tp!1546831 () Bool)

(assert (=> b!5593020 (= e!3450404 tp!1546831)))

(declare-fun b!5593021 () Bool)

(declare-fun res!2372808 () Bool)

(assert (=> b!5593021 (=> res!2372808 e!3450411)))

(declare-fun generalisedUnion!1444 (List!63042) Regex!15581)

(declare-fun unfocusZipperList!1009 (List!63043) List!63042)

(assert (=> b!5593021 (= res!2372808 (not (= r!7292 (generalisedUnion!1444 (unfocusZipperList!1009 zl!343)))))))

(declare-fun e!3450395 () Bool)

(assert (=> b!5593022 (= e!3450411 e!3450395)))

(declare-fun res!2372805 () Bool)

(assert (=> b!5593022 (=> res!2372805 e!3450395)))

(declare-fun lt!2255867 () Bool)

(assert (=> b!5593022 (= res!2372805 (or (not (= lt!2255846 lt!2255867)) ((_ is Nil!62920) s!2326)))))

(declare-fun Exists!2681 (Int) Bool)

(assert (=> b!5593022 (= (Exists!2681 lambda!300240) (Exists!2681 lambda!300241))))

(declare-fun lt!2255855 () Unit!155740)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1310 (Regex!15581 Regex!15581 List!63044) Unit!155740)

(assert (=> b!5593022 (= lt!2255855 (lemmaExistCutMatchRandMatchRSpecEquivalent!1310 (regOne!31674 r!7292) (regTwo!31674 r!7292) s!2326))))

(assert (=> b!5593022 (= lt!2255867 (Exists!2681 lambda!300240))))

(declare-datatypes ((tuple2!65356 0))(
  ( (tuple2!65357 (_1!35981 List!63044) (_2!35981 List!63044)) )
))
(declare-datatypes ((Option!15590 0))(
  ( (None!15589) (Some!15589 (v!51630 tuple2!65356)) )
))
(declare-fun isDefined!12293 (Option!15590) Bool)

(declare-fun findConcatSeparation!2004 (Regex!15581 Regex!15581 List!63044 List!63044 List!63044) Option!15590)

(assert (=> b!5593022 (= lt!2255867 (isDefined!12293 (findConcatSeparation!2004 (regOne!31674 r!7292) (regTwo!31674 r!7292) Nil!62920 s!2326 s!2326)))))

(declare-fun lt!2255851 () Unit!155740)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1768 (Regex!15581 Regex!15581 List!63044) Unit!155740)

(assert (=> b!5593022 (= lt!2255851 (lemmaFindConcatSeparationEquivalentToExists!1768 (regOne!31674 r!7292) (regTwo!31674 r!7292) s!2326))))

(declare-fun b!5593023 () Bool)

(declare-fun e!3450398 () Bool)

(declare-fun lt!2255856 () (InoxSet Context!9930))

(assert (=> b!5593023 (= e!3450398 (not (matchZipper!1719 lt!2255856 (t!376324 s!2326))))))

(declare-fun b!5593024 () Bool)

(declare-fun e!3450410 () Bool)

(declare-fun e!3450397 () Bool)

(assert (=> b!5593024 (= e!3450410 e!3450397)))

(declare-fun res!2372806 () Bool)

(assert (=> b!5593024 (=> res!2372806 e!3450397)))

(assert (=> b!5593024 (= res!2372806 e!3450398)))

(declare-fun res!2372801 () Bool)

(assert (=> b!5593024 (=> (not res!2372801) (not e!3450398))))

(declare-fun lt!2255857 () (InoxSet Context!9930))

(assert (=> b!5593024 (= res!2372801 (not (= (matchZipper!1719 lt!2255857 (t!376324 s!2326)) lt!2255848)))))

(declare-fun lt!2255844 () (InoxSet Context!9930))

(declare-fun e!3450409 () Bool)

(assert (=> b!5593024 (= (matchZipper!1719 lt!2255844 (t!376324 s!2326)) e!3450409)))

(declare-fun res!2372811 () Bool)

(assert (=> b!5593024 (=> res!2372811 e!3450409)))

(assert (=> b!5593024 (= res!2372811 lt!2255848)))

(assert (=> b!5593024 (= lt!2255848 (matchZipper!1719 lt!2255868 (t!376324 s!2326)))))

(declare-fun lt!2255865 () Unit!155740)

(assert (=> b!5593024 (= lt!2255865 (lemmaZipperConcatMatchesSameAsBothZippers!606 lt!2255868 lt!2255856 (t!376324 s!2326)))))

(declare-fun b!5593025 () Bool)

(declare-fun tp!1546826 () Bool)

(declare-fun inv!82199 (Context!9930) Bool)

(assert (=> b!5593025 (= e!3450400 (and (inv!82199 (h!69367 zl!343)) e!3450402 tp!1546826))))

(declare-fun b!5593026 () Bool)

(declare-fun res!2372809 () Bool)

(assert (=> b!5593026 (=> (not res!2372809) (not e!3450399))))

(declare-fun toList!9365 ((InoxSet Context!9930)) List!63043)

(assert (=> b!5593026 (= res!2372809 (= (toList!9365 z!1189) zl!343))))

(declare-fun b!5593027 () Bool)

(declare-fun res!2372814 () Bool)

(assert (=> b!5593027 (=> res!2372814 e!3450411)))

(assert (=> b!5593027 (= res!2372814 (or ((_ is EmptyExpr!15581) r!7292) ((_ is EmptyLang!15581) r!7292) ((_ is ElementMatch!15581) r!7292) ((_ is Union!15581) r!7292) (not ((_ is Concat!24426) r!7292))))))

(declare-fun b!5593028 () Bool)

(declare-fun Unit!155744 () Unit!155740)

(assert (=> b!5593028 (= e!3450414 Unit!155744)))

(declare-fun lt!2255862 () Unit!155740)

(assert (=> b!5593028 (= lt!2255862 (lemmaZipperConcatMatchesSameAsBothZippers!606 lt!2255857 lt!2255866 (t!376324 s!2326)))))

(declare-fun res!2372807 () Bool)

(assert (=> b!5593028 (= res!2372807 (matchZipper!1719 lt!2255857 (t!376324 s!2326)))))

(declare-fun e!3450396 () Bool)

(assert (=> b!5593028 (=> res!2372807 e!3450396)))

(assert (=> b!5593028 (= (matchZipper!1719 ((_ map or) lt!2255857 lt!2255866) (t!376324 s!2326)) e!3450396)))

(declare-fun b!5593029 () Bool)

(declare-fun res!2372813 () Bool)

(assert (=> b!5593029 (=> res!2372813 e!3450411)))

(declare-fun generalisedConcat!1196 (List!63042) Regex!15581)

(assert (=> b!5593029 (= res!2372813 (not (= r!7292 (generalisedConcat!1196 (exprs!5465 (h!69367 zl!343))))))))

(declare-fun b!5593030 () Bool)

(assert (=> b!5593030 (= e!3450409 (matchZipper!1719 lt!2255856 (t!376324 s!2326)))))

(declare-fun b!5593031 () Bool)

(declare-fun e!3450412 () Unit!155740)

(declare-fun Unit!155745 () Unit!155740)

(assert (=> b!5593031 (= e!3450412 Unit!155745)))

(declare-fun lt!2255861 () Unit!155740)

(assert (=> b!5593031 (= lt!2255861 (lemmaZipperConcatMatchesSameAsBothZippers!606 lt!2255856 lt!2255866 (t!376324 s!2326)))))

(declare-fun res!2372798 () Bool)

(assert (=> b!5593031 (= res!2372798 (matchZipper!1719 lt!2255856 (t!376324 s!2326)))))

(declare-fun e!3450406 () Bool)

(assert (=> b!5593031 (=> res!2372798 e!3450406)))

(assert (=> b!5593031 (= (matchZipper!1719 ((_ map or) lt!2255856 lt!2255866) (t!376324 s!2326)) e!3450406)))

(declare-fun b!5593032 () Bool)

(declare-fun e!3450413 () Bool)

(declare-fun lt!2255852 () Bool)

(declare-fun lt!2255859 () Bool)

(assert (=> b!5593032 (= e!3450413 (and (not lt!2255852) (not lt!2255859)))))

(declare-fun b!5593033 () Bool)

(declare-fun Unit!155746 () Unit!155740)

(assert (=> b!5593033 (= e!3450401 Unit!155746)))

(declare-fun b!5593034 () Bool)

(assert (=> b!5593034 (= e!3450397 e!3450413)))

(declare-fun res!2372803 () Bool)

(assert (=> b!5593034 (=> res!2372803 e!3450413)))

(declare-fun nullable!5613 (Regex!15581) Bool)

(assert (=> b!5593034 (= res!2372803 (nullable!5613 (regOne!31674 r!7292)))))

(declare-fun lt!2255850 () Unit!155740)

(assert (=> b!5593034 (= lt!2255850 e!3450412)))

(declare-fun c!980211 () Bool)

(assert (=> b!5593034 (= c!980211 lt!2255859)))

(assert (=> b!5593034 (= lt!2255859 (nullable!5613 (regTwo!31675 (regOne!31674 r!7292))))))

(declare-fun lt!2255869 () Context!9930)

(declare-fun lt!2255854 () (InoxSet Context!9930))

(declare-fun lambda!300242 () Int)

(declare-fun flatMap!1194 ((InoxSet Context!9930) Int) (InoxSet Context!9930))

(declare-fun derivationStepZipperUp!849 (Context!9930 C!31432) (InoxSet Context!9930))

(assert (=> b!5593034 (= (flatMap!1194 lt!2255854 lambda!300242) (derivationStepZipperUp!849 lt!2255869 (h!69368 s!2326)))))

(declare-fun lt!2255863 () Unit!155740)

(declare-fun lemmaFlatMapOnSingletonSet!726 ((InoxSet Context!9930) Context!9930 Int) Unit!155740)

(assert (=> b!5593034 (= lt!2255863 (lemmaFlatMapOnSingletonSet!726 lt!2255854 lt!2255869 lambda!300242))))

(declare-fun lt!2255853 () (InoxSet Context!9930))

(assert (=> b!5593034 (= lt!2255853 (derivationStepZipperUp!849 lt!2255869 (h!69368 s!2326)))))

(declare-fun lt!2255864 () Unit!155740)

(assert (=> b!5593034 (= lt!2255864 e!3450401)))

(declare-fun c!980213 () Bool)

(assert (=> b!5593034 (= c!980213 lt!2255852)))

(assert (=> b!5593034 (= lt!2255852 (nullable!5613 (regOne!31675 (regOne!31674 r!7292))))))

(declare-fun lt!2255874 () (InoxSet Context!9930))

(declare-fun lt!2255849 () Context!9930)

(assert (=> b!5593034 (= (flatMap!1194 lt!2255874 lambda!300242) (derivationStepZipperUp!849 lt!2255849 (h!69368 s!2326)))))

(declare-fun lt!2255871 () Unit!155740)

(assert (=> b!5593034 (= lt!2255871 (lemmaFlatMapOnSingletonSet!726 lt!2255874 lt!2255849 lambda!300242))))

(declare-fun lt!2255870 () (InoxSet Context!9930))

(assert (=> b!5593034 (= lt!2255870 (derivationStepZipperUp!849 lt!2255849 (h!69368 s!2326)))))

(assert (=> b!5593034 (= lt!2255854 (store ((as const (Array Context!9930 Bool)) false) lt!2255869 true))))

(assert (=> b!5593034 (= lt!2255869 (Context!9931 (Cons!62918 (regTwo!31675 (regOne!31674 r!7292)) (t!376322 (exprs!5465 (h!69367 zl!343))))))))

(assert (=> b!5593034 (= lt!2255874 (store ((as const (Array Context!9930 Bool)) false) lt!2255849 true))))

(assert (=> b!5593034 (= lt!2255849 (Context!9931 (Cons!62918 (regOne!31675 (regOne!31674 r!7292)) (t!376322 (exprs!5465 (h!69367 zl!343))))))))

(declare-fun e!3450407 () Bool)

(assert (=> b!5593035 (= e!3450395 e!3450407)))

(declare-fun res!2372810 () Bool)

(assert (=> b!5593035 (=> res!2372810 e!3450407)))

(assert (=> b!5593035 (= res!2372810 (or (and ((_ is ElementMatch!15581) (regOne!31674 r!7292)) (= (c!980214 (regOne!31674 r!7292)) (h!69368 s!2326))) (not ((_ is Union!15581) (regOne!31674 r!7292)))))))

(declare-fun lt!2255858 () Unit!155740)

(assert (=> b!5593035 (= lt!2255858 e!3450414)))

(declare-fun c!980212 () Bool)

(assert (=> b!5593035 (= c!980212 (nullable!5613 (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(assert (=> b!5593035 (= (flatMap!1194 z!1189 lambda!300242) (derivationStepZipperUp!849 (h!69367 zl!343) (h!69368 s!2326)))))

(declare-fun lt!2255872 () Unit!155740)

(assert (=> b!5593035 (= lt!2255872 (lemmaFlatMapOnSingletonSet!726 z!1189 (h!69367 zl!343) lambda!300242))))

(declare-fun lt!2255845 () Context!9930)

(assert (=> b!5593035 (= lt!2255866 (derivationStepZipperUp!849 lt!2255845 (h!69368 s!2326)))))

(declare-fun derivationStepZipperDown!923 (Regex!15581 Context!9930 C!31432) (InoxSet Context!9930))

(assert (=> b!5593035 (= lt!2255857 (derivationStepZipperDown!923 (h!69366 (exprs!5465 (h!69367 zl!343))) lt!2255845 (h!69368 s!2326)))))

(assert (=> b!5593035 (= lt!2255845 (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun lt!2255847 () (InoxSet Context!9930))

(assert (=> b!5593035 (= lt!2255847 (derivationStepZipperUp!849 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))) (h!69368 s!2326)))))

(declare-fun b!5593036 () Bool)

(declare-fun Unit!155747 () Unit!155740)

(assert (=> b!5593036 (= e!3450412 Unit!155747)))

(declare-fun b!5593037 () Bool)

(declare-fun res!2372799 () Bool)

(assert (=> b!5593037 (=> res!2372799 e!3450395)))

(declare-fun isEmpty!34738 (List!63042) Bool)

(assert (=> b!5593037 (= res!2372799 (isEmpty!34738 (t!376322 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun b!5593038 () Bool)

(assert (=> b!5593038 (= e!3450396 (matchZipper!1719 lt!2255866 (t!376324 s!2326)))))

(declare-fun b!5593039 () Bool)

(assert (=> b!5593039 (= e!3450406 (matchZipper!1719 lt!2255866 (t!376324 s!2326)))))

(declare-fun b!5593040 () Bool)

(declare-fun res!2372800 () Bool)

(assert (=> b!5593040 (=> res!2372800 e!3450411)))

(declare-fun isEmpty!34739 (List!63043) Bool)

(assert (=> b!5593040 (= res!2372800 (not (isEmpty!34739 (t!376323 zl!343))))))

(declare-fun tp!1546833 () Bool)

(declare-fun setElem!37285 () Context!9930)

(declare-fun setNonEmpty!37285 () Bool)

(assert (=> setNonEmpty!37285 (= setRes!37285 (and tp!1546833 (inv!82199 setElem!37285) e!3450408))))

(declare-fun setRest!37285 () (InoxSet Context!9930))

(assert (=> setNonEmpty!37285 (= z!1189 ((_ map or) (store ((as const (Array Context!9930 Bool)) false) setElem!37285 true) setRest!37285))))

(declare-fun b!5593041 () Bool)

(assert (=> b!5593041 (= e!3450407 e!3450410)))

(declare-fun res!2372816 () Bool)

(assert (=> b!5593041 (=> res!2372816 e!3450410)))

(assert (=> b!5593041 (= res!2372816 (not (= lt!2255857 lt!2255844)))))

(assert (=> b!5593041 (= lt!2255844 ((_ map or) lt!2255868 lt!2255856))))

(assert (=> b!5593041 (= lt!2255856 (derivationStepZipperDown!923 (regTwo!31675 (regOne!31674 r!7292)) lt!2255845 (h!69368 s!2326)))))

(assert (=> b!5593041 (= lt!2255868 (derivationStepZipperDown!923 (regOne!31675 (regOne!31674 r!7292)) lt!2255845 (h!69368 s!2326)))))

(assert (= (and start!580892 res!2372802) b!5593026))

(assert (= (and b!5593026 res!2372809) b!5593008))

(assert (= (and b!5593008 res!2372797) b!5593014))

(assert (= (and b!5593014 (not res!2372804)) b!5593040))

(assert (= (and b!5593040 (not res!2372800)) b!5593029))

(assert (= (and b!5593029 (not res!2372813)) b!5593009))

(assert (= (and b!5593009 (not res!2372812)) b!5593021))

(assert (= (and b!5593021 (not res!2372808)) b!5593027))

(assert (= (and b!5593027 (not res!2372814)) b!5593022))

(assert (= (and b!5593022 (not res!2372805)) b!5593037))

(assert (= (and b!5593037 (not res!2372799)) b!5593035))

(assert (= (and b!5593035 c!980212) b!5593028))

(assert (= (and b!5593035 (not c!980212)) b!5593010))

(assert (= (and b!5593028 (not res!2372807)) b!5593038))

(assert (= (and b!5593035 (not res!2372810)) b!5593041))

(assert (= (and b!5593041 (not res!2372816)) b!5593024))

(assert (= (and b!5593024 (not res!2372811)) b!5593030))

(assert (= (and b!5593024 res!2372801) b!5593023))

(assert (= (and b!5593024 (not res!2372806)) b!5593034))

(assert (= (and b!5593034 c!980213) b!5593018))

(assert (= (and b!5593034 (not c!980213)) b!5593033))

(assert (= (and b!5593018 (not res!2372815)) b!5593017))

(assert (= (and b!5593034 c!980211) b!5593031))

(assert (= (and b!5593034 (not c!980211)) b!5593036))

(assert (= (and b!5593031 (not res!2372798)) b!5593039))

(assert (= (and b!5593034 (not res!2372803)) b!5593032))

(assert (= (and start!580892 ((_ is ElementMatch!15581) r!7292)) b!5593016))

(assert (= (and start!580892 ((_ is Concat!24426) r!7292)) b!5593011))

(assert (= (and start!580892 ((_ is Star!15581) r!7292)) b!5593020))

(assert (= (and start!580892 ((_ is Union!15581) r!7292)) b!5593015))

(assert (= (and start!580892 condSetEmpty!37285) setIsEmpty!37285))

(assert (= (and start!580892 (not condSetEmpty!37285)) setNonEmpty!37285))

(assert (= setNonEmpty!37285 b!5593012))

(assert (= b!5593025 b!5593013))

(assert (= (and start!580892 ((_ is Cons!62919) zl!343)) b!5593025))

(assert (= (and start!580892 ((_ is Cons!62920) s!2326)) b!5593019))

(declare-fun m!6572684 () Bool)

(assert (=> b!5593041 m!6572684))

(declare-fun m!6572686 () Bool)

(assert (=> b!5593041 m!6572686))

(declare-fun m!6572688 () Bool)

(assert (=> b!5593018 m!6572688))

(declare-fun m!6572690 () Bool)

(assert (=> b!5593018 m!6572690))

(declare-fun m!6572692 () Bool)

(assert (=> b!5593008 m!6572692))

(declare-fun m!6572694 () Bool)

(assert (=> b!5593024 m!6572694))

(declare-fun m!6572696 () Bool)

(assert (=> b!5593024 m!6572696))

(declare-fun m!6572698 () Bool)

(assert (=> b!5593024 m!6572698))

(declare-fun m!6572700 () Bool)

(assert (=> b!5593024 m!6572700))

(declare-fun m!6572702 () Bool)

(assert (=> b!5593025 m!6572702))

(declare-fun m!6572704 () Bool)

(assert (=> b!5593038 m!6572704))

(declare-fun m!6572706 () Bool)

(assert (=> b!5593022 m!6572706))

(declare-fun m!6572708 () Bool)

(assert (=> b!5593022 m!6572708))

(declare-fun m!6572710 () Bool)

(assert (=> b!5593022 m!6572710))

(declare-fun m!6572712 () Bool)

(assert (=> b!5593022 m!6572712))

(assert (=> b!5593022 m!6572710))

(declare-fun m!6572714 () Bool)

(assert (=> b!5593022 m!6572714))

(assert (=> b!5593022 m!6572706))

(declare-fun m!6572716 () Bool)

(assert (=> b!5593022 m!6572716))

(declare-fun m!6572718 () Bool)

(assert (=> b!5593014 m!6572718))

(declare-fun m!6572720 () Bool)

(assert (=> b!5593014 m!6572720))

(declare-fun m!6572722 () Bool)

(assert (=> b!5593014 m!6572722))

(declare-fun m!6572724 () Bool)

(assert (=> b!5593037 m!6572724))

(declare-fun m!6572726 () Bool)

(assert (=> b!5593030 m!6572726))

(assert (=> b!5593039 m!6572704))

(declare-fun m!6572728 () Bool)

(assert (=> b!5593034 m!6572728))

(declare-fun m!6572730 () Bool)

(assert (=> b!5593034 m!6572730))

(declare-fun m!6572732 () Bool)

(assert (=> b!5593034 m!6572732))

(declare-fun m!6572734 () Bool)

(assert (=> b!5593034 m!6572734))

(declare-fun m!6572736 () Bool)

(assert (=> b!5593034 m!6572736))

(declare-fun m!6572738 () Bool)

(assert (=> b!5593034 m!6572738))

(declare-fun m!6572740 () Bool)

(assert (=> b!5593034 m!6572740))

(declare-fun m!6572742 () Bool)

(assert (=> b!5593034 m!6572742))

(declare-fun m!6572744 () Bool)

(assert (=> b!5593034 m!6572744))

(declare-fun m!6572746 () Bool)

(assert (=> b!5593034 m!6572746))

(declare-fun m!6572748 () Bool)

(assert (=> b!5593034 m!6572748))

(declare-fun m!6572750 () Bool)

(assert (=> b!5593028 m!6572750))

(assert (=> b!5593028 m!6572694))

(declare-fun m!6572752 () Bool)

(assert (=> b!5593028 m!6572752))

(declare-fun m!6572754 () Bool)

(assert (=> b!5593031 m!6572754))

(assert (=> b!5593031 m!6572726))

(declare-fun m!6572756 () Bool)

(assert (=> b!5593031 m!6572756))

(declare-fun m!6572758 () Bool)

(assert (=> start!580892 m!6572758))

(assert (=> b!5593017 m!6572704))

(declare-fun m!6572760 () Bool)

(assert (=> b!5593029 m!6572760))

(declare-fun m!6572762 () Bool)

(assert (=> b!5593021 m!6572762))

(assert (=> b!5593021 m!6572762))

(declare-fun m!6572764 () Bool)

(assert (=> b!5593021 m!6572764))

(declare-fun m!6572766 () Bool)

(assert (=> b!5593026 m!6572766))

(declare-fun m!6572768 () Bool)

(assert (=> b!5593040 m!6572768))

(assert (=> b!5593023 m!6572726))

(declare-fun m!6572770 () Bool)

(assert (=> b!5593035 m!6572770))

(declare-fun m!6572772 () Bool)

(assert (=> b!5593035 m!6572772))

(declare-fun m!6572774 () Bool)

(assert (=> b!5593035 m!6572774))

(declare-fun m!6572776 () Bool)

(assert (=> b!5593035 m!6572776))

(declare-fun m!6572778 () Bool)

(assert (=> b!5593035 m!6572778))

(declare-fun m!6572780 () Bool)

(assert (=> b!5593035 m!6572780))

(declare-fun m!6572782 () Bool)

(assert (=> b!5593035 m!6572782))

(declare-fun m!6572784 () Bool)

(assert (=> setNonEmpty!37285 m!6572784))

(check-sat (not b!5593041) (not start!580892) (not b!5593019) (not b!5593020) (not b!5593022) (not b!5593013) (not setNonEmpty!37285) (not b!5593015) (not b!5593028) (not b!5593017) (not b!5593038) (not b!5593018) (not b!5593008) tp_is_empty!40415 (not b!5593021) (not b!5593029) (not b!5593023) (not b!5593034) (not b!5593030) (not b!5593035) (not b!5593039) (not b!5593011) (not b!5593025) (not b!5593037) (not b!5593012) (not b!5593031) (not b!5593014) (not b!5593040) (not b!5593026) (not b!5593024))
(check-sat)
(get-model)

(declare-fun b!5593271 () Bool)

(declare-fun e!3450546 () Regex!15581)

(declare-fun e!3450543 () Regex!15581)

(assert (=> b!5593271 (= e!3450546 e!3450543)))

(declare-fun c!980294 () Bool)

(assert (=> b!5593271 (= c!980294 ((_ is Cons!62918) (unfocusZipperList!1009 zl!343)))))

(declare-fun b!5593273 () Bool)

(assert (=> b!5593273 (= e!3450543 EmptyLang!15581)))

(declare-fun b!5593274 () Bool)

(declare-fun e!3450545 () Bool)

(declare-fun lt!2255898 () Regex!15581)

(declare-fun isEmptyLang!1144 (Regex!15581) Bool)

(assert (=> b!5593274 (= e!3450545 (isEmptyLang!1144 lt!2255898))))

(declare-fun b!5593275 () Bool)

(assert (=> b!5593275 (= e!3450546 (h!69366 (unfocusZipperList!1009 zl!343)))))

(declare-fun b!5593276 () Bool)

(assert (=> b!5593276 (= e!3450543 (Union!15581 (h!69366 (unfocusZipperList!1009 zl!343)) (generalisedUnion!1444 (t!376322 (unfocusZipperList!1009 zl!343)))))))

(declare-fun b!5593277 () Bool)

(declare-fun e!3450547 () Bool)

(assert (=> b!5593277 (= e!3450547 (isEmpty!34738 (t!376322 (unfocusZipperList!1009 zl!343))))))

(declare-fun b!5593278 () Bool)

(declare-fun e!3450544 () Bool)

(assert (=> b!5593278 (= e!3450544 e!3450545)))

(declare-fun c!980292 () Bool)

(assert (=> b!5593278 (= c!980292 (isEmpty!34738 (unfocusZipperList!1009 zl!343)))))

(declare-fun b!5593279 () Bool)

(declare-fun e!3450548 () Bool)

(declare-fun head!11930 (List!63042) Regex!15581)

(assert (=> b!5593279 (= e!3450548 (= lt!2255898 (head!11930 (unfocusZipperList!1009 zl!343))))))

(declare-fun b!5593280 () Bool)

(assert (=> b!5593280 (= e!3450545 e!3450548)))

(declare-fun c!980293 () Bool)

(declare-fun tail!11025 (List!63042) List!63042)

(assert (=> b!5593280 (= c!980293 (isEmpty!34738 (tail!11025 (unfocusZipperList!1009 zl!343))))))

(declare-fun b!5593272 () Bool)

(declare-fun isUnion!574 (Regex!15581) Bool)

(assert (=> b!5593272 (= e!3450548 (isUnion!574 lt!2255898))))

(declare-fun d!1767852 () Bool)

(assert (=> d!1767852 e!3450544))

(declare-fun res!2372886 () Bool)

(assert (=> d!1767852 (=> (not res!2372886) (not e!3450544))))

(assert (=> d!1767852 (= res!2372886 (validRegex!7317 lt!2255898))))

(assert (=> d!1767852 (= lt!2255898 e!3450546)))

(declare-fun c!980295 () Bool)

(assert (=> d!1767852 (= c!980295 e!3450547)))

(declare-fun res!2372887 () Bool)

(assert (=> d!1767852 (=> (not res!2372887) (not e!3450547))))

(assert (=> d!1767852 (= res!2372887 ((_ is Cons!62918) (unfocusZipperList!1009 zl!343)))))

(declare-fun lambda!300254 () Int)

(declare-fun forall!14746 (List!63042 Int) Bool)

(assert (=> d!1767852 (forall!14746 (unfocusZipperList!1009 zl!343) lambda!300254)))

(assert (=> d!1767852 (= (generalisedUnion!1444 (unfocusZipperList!1009 zl!343)) lt!2255898)))

(assert (= (and d!1767852 res!2372887) b!5593277))

(assert (= (and d!1767852 c!980295) b!5593275))

(assert (= (and d!1767852 (not c!980295)) b!5593271))

(assert (= (and b!5593271 c!980294) b!5593276))

(assert (= (and b!5593271 (not c!980294)) b!5593273))

(assert (= (and d!1767852 res!2372886) b!5593278))

(assert (= (and b!5593278 c!980292) b!5593274))

(assert (= (and b!5593278 (not c!980292)) b!5593280))

(assert (= (and b!5593280 c!980293) b!5593279))

(assert (= (and b!5593280 (not c!980293)) b!5593272))

(declare-fun m!6572928 () Bool)

(assert (=> b!5593277 m!6572928))

(declare-fun m!6572930 () Bool)

(assert (=> b!5593274 m!6572930))

(assert (=> b!5593279 m!6572762))

(declare-fun m!6572932 () Bool)

(assert (=> b!5593279 m!6572932))

(assert (=> b!5593278 m!6572762))

(declare-fun m!6572934 () Bool)

(assert (=> b!5593278 m!6572934))

(declare-fun m!6572936 () Bool)

(assert (=> b!5593276 m!6572936))

(assert (=> b!5593280 m!6572762))

(declare-fun m!6572938 () Bool)

(assert (=> b!5593280 m!6572938))

(assert (=> b!5593280 m!6572938))

(declare-fun m!6572940 () Bool)

(assert (=> b!5593280 m!6572940))

(declare-fun m!6572942 () Bool)

(assert (=> d!1767852 m!6572942))

(assert (=> d!1767852 m!6572762))

(declare-fun m!6572944 () Bool)

(assert (=> d!1767852 m!6572944))

(declare-fun m!6572946 () Bool)

(assert (=> b!5593272 m!6572946))

(assert (=> b!5593021 d!1767852))

(declare-fun bs!1293251 () Bool)

(declare-fun d!1767858 () Bool)

(assert (= bs!1293251 (and d!1767858 d!1767852)))

(declare-fun lambda!300257 () Int)

(assert (=> bs!1293251 (= lambda!300257 lambda!300254)))

(declare-fun lt!2255901 () List!63042)

(assert (=> d!1767858 (forall!14746 lt!2255901 lambda!300257)))

(declare-fun e!3450551 () List!63042)

(assert (=> d!1767858 (= lt!2255901 e!3450551)))

(declare-fun c!980298 () Bool)

(assert (=> d!1767858 (= c!980298 ((_ is Cons!62919) zl!343))))

(assert (=> d!1767858 (= (unfocusZipperList!1009 zl!343) lt!2255901)))

(declare-fun b!5593285 () Bool)

(assert (=> b!5593285 (= e!3450551 (Cons!62918 (generalisedConcat!1196 (exprs!5465 (h!69367 zl!343))) (unfocusZipperList!1009 (t!376323 zl!343))))))

(declare-fun b!5593286 () Bool)

(assert (=> b!5593286 (= e!3450551 Nil!62918)))

(assert (= (and d!1767858 c!980298) b!5593285))

(assert (= (and d!1767858 (not c!980298)) b!5593286))

(declare-fun m!6572948 () Bool)

(assert (=> d!1767858 m!6572948))

(assert (=> b!5593285 m!6572760))

(declare-fun m!6572950 () Bool)

(assert (=> b!5593285 m!6572950))

(assert (=> b!5593021 d!1767858))

(declare-fun c!980318 () Bool)

(declare-fun bm!419147 () Bool)

(declare-fun call!419155 () List!63042)

(declare-fun c!980315 () Bool)

(declare-fun $colon$colon!1643 (List!63042 Regex!15581) List!63042)

(assert (=> bm!419147 (= call!419155 ($colon$colon!1643 (exprs!5465 lt!2255845) (ite (or c!980318 c!980315) (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (regTwo!31675 (regOne!31674 r!7292)))))))

(declare-fun b!5593337 () Bool)

(declare-fun e!3450583 () (InoxSet Context!9930))

(declare-fun call!419152 () (InoxSet Context!9930))

(declare-fun call!419153 () (InoxSet Context!9930))

(assert (=> b!5593337 (= e!3450583 ((_ map or) call!419152 call!419153))))

(declare-fun b!5593338 () Bool)

(declare-fun e!3450584 () (InoxSet Context!9930))

(declare-fun call!419157 () (InoxSet Context!9930))

(assert (=> b!5593338 (= e!3450584 ((_ map or) call!419152 call!419157))))

(declare-fun b!5593339 () Bool)

(declare-fun e!3450581 () (InoxSet Context!9930))

(assert (=> b!5593339 (= e!3450581 e!3450584)))

(declare-fun c!980319 () Bool)

(assert (=> b!5593339 (= c!980319 ((_ is Union!15581) (regTwo!31675 (regOne!31674 r!7292))))))

(declare-fun b!5593340 () Bool)

(declare-fun c!980317 () Bool)

(assert (=> b!5593340 (= c!980317 ((_ is Star!15581) (regTwo!31675 (regOne!31674 r!7292))))))

(declare-fun e!3450580 () (InoxSet Context!9930))

(declare-fun e!3450582 () (InoxSet Context!9930))

(assert (=> b!5593340 (= e!3450580 e!3450582)))

(declare-fun b!5593341 () Bool)

(declare-fun e!3450579 () Bool)

(assert (=> b!5593341 (= e!3450579 (nullable!5613 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292)))))))

(declare-fun bm!419148 () Bool)

(assert (=> bm!419148 (= call!419153 call!419157)))

(declare-fun call!419154 () List!63042)

(declare-fun bm!419149 () Bool)

(assert (=> bm!419149 (= call!419157 (derivationStepZipperDown!923 (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292)))))) (ite (or c!980319 c!980318) lt!2255845 (Context!9931 call!419154)) (h!69368 s!2326)))))

(declare-fun b!5593342 () Bool)

(assert (=> b!5593342 (= e!3450583 e!3450580)))

(assert (=> b!5593342 (= c!980315 ((_ is Concat!24426) (regTwo!31675 (regOne!31674 r!7292))))))

(declare-fun d!1767860 () Bool)

(declare-fun c!980316 () Bool)

(assert (=> d!1767860 (= c!980316 (and ((_ is ElementMatch!15581) (regTwo!31675 (regOne!31674 r!7292))) (= (c!980214 (regTwo!31675 (regOne!31674 r!7292))) (h!69368 s!2326))))))

(assert (=> d!1767860 (= (derivationStepZipperDown!923 (regTwo!31675 (regOne!31674 r!7292)) lt!2255845 (h!69368 s!2326)) e!3450581)))

(declare-fun b!5593336 () Bool)

(declare-fun call!419156 () (InoxSet Context!9930))

(assert (=> b!5593336 (= e!3450580 call!419156)))

(declare-fun bm!419150 () Bool)

(assert (=> bm!419150 (= call!419156 call!419153)))

(declare-fun bm!419151 () Bool)

(assert (=> bm!419151 (= call!419152 (derivationStepZipperDown!923 (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292)))) (ite c!980319 lt!2255845 (Context!9931 call!419155)) (h!69368 s!2326)))))

(declare-fun b!5593343 () Bool)

(assert (=> b!5593343 (= c!980318 e!3450579)))

(declare-fun res!2372905 () Bool)

(assert (=> b!5593343 (=> (not res!2372905) (not e!3450579))))

(assert (=> b!5593343 (= res!2372905 ((_ is Concat!24426) (regTwo!31675 (regOne!31674 r!7292))))))

(assert (=> b!5593343 (= e!3450584 e!3450583)))

(declare-fun b!5593344 () Bool)

(assert (=> b!5593344 (= e!3450582 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5593345 () Bool)

(assert (=> b!5593345 (= e!3450581 (store ((as const (Array Context!9930 Bool)) false) lt!2255845 true))))

(declare-fun bm!419152 () Bool)

(assert (=> bm!419152 (= call!419154 call!419155)))

(declare-fun b!5593346 () Bool)

(assert (=> b!5593346 (= e!3450582 call!419156)))

(assert (= (and d!1767860 c!980316) b!5593345))

(assert (= (and d!1767860 (not c!980316)) b!5593339))

(assert (= (and b!5593339 c!980319) b!5593338))

(assert (= (and b!5593339 (not c!980319)) b!5593343))

(assert (= (and b!5593343 res!2372905) b!5593341))

(assert (= (and b!5593343 c!980318) b!5593337))

(assert (= (and b!5593343 (not c!980318)) b!5593342))

(assert (= (and b!5593342 c!980315) b!5593336))

(assert (= (and b!5593342 (not c!980315)) b!5593340))

(assert (= (and b!5593340 c!980317) b!5593346))

(assert (= (and b!5593340 (not c!980317)) b!5593344))

(assert (= (or b!5593336 b!5593346) bm!419152))

(assert (= (or b!5593336 b!5593346) bm!419150))

(assert (= (or b!5593337 bm!419152) bm!419147))

(assert (= (or b!5593337 bm!419150) bm!419148))

(assert (= (or b!5593338 bm!419148) bm!419149))

(assert (= (or b!5593338 b!5593337) bm!419151))

(declare-fun m!6572980 () Bool)

(assert (=> bm!419151 m!6572980))

(declare-fun m!6572982 () Bool)

(assert (=> bm!419149 m!6572982))

(declare-fun m!6572984 () Bool)

(assert (=> bm!419147 m!6572984))

(declare-fun m!6572986 () Bool)

(assert (=> b!5593341 m!6572986))

(declare-fun m!6572988 () Bool)

(assert (=> b!5593345 m!6572988))

(assert (=> b!5593041 d!1767860))

(declare-fun bm!419153 () Bool)

(declare-fun c!980323 () Bool)

(declare-fun c!980320 () Bool)

(declare-fun call!419161 () List!63042)

(assert (=> bm!419153 (= call!419161 ($colon$colon!1643 (exprs!5465 lt!2255845) (ite (or c!980323 c!980320) (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (regOne!31675 (regOne!31674 r!7292)))))))

(declare-fun b!5593348 () Bool)

(declare-fun e!3450589 () (InoxSet Context!9930))

(declare-fun call!419158 () (InoxSet Context!9930))

(declare-fun call!419159 () (InoxSet Context!9930))

(assert (=> b!5593348 (= e!3450589 ((_ map or) call!419158 call!419159))))

(declare-fun b!5593349 () Bool)

(declare-fun e!3450590 () (InoxSet Context!9930))

(declare-fun call!419163 () (InoxSet Context!9930))

(assert (=> b!5593349 (= e!3450590 ((_ map or) call!419158 call!419163))))

(declare-fun b!5593350 () Bool)

(declare-fun e!3450587 () (InoxSet Context!9930))

(assert (=> b!5593350 (= e!3450587 e!3450590)))

(declare-fun c!980324 () Bool)

(assert (=> b!5593350 (= c!980324 ((_ is Union!15581) (regOne!31675 (regOne!31674 r!7292))))))

(declare-fun b!5593351 () Bool)

(declare-fun c!980322 () Bool)

(assert (=> b!5593351 (= c!980322 ((_ is Star!15581) (regOne!31675 (regOne!31674 r!7292))))))

(declare-fun e!3450586 () (InoxSet Context!9930))

(declare-fun e!3450588 () (InoxSet Context!9930))

(assert (=> b!5593351 (= e!3450586 e!3450588)))

(declare-fun b!5593352 () Bool)

(declare-fun e!3450585 () Bool)

(assert (=> b!5593352 (= e!3450585 (nullable!5613 (regOne!31674 (regOne!31675 (regOne!31674 r!7292)))))))

(declare-fun bm!419154 () Bool)

(assert (=> bm!419154 (= call!419159 call!419163)))

(declare-fun call!419160 () List!63042)

(declare-fun bm!419155 () Bool)

(assert (=> bm!419155 (= call!419163 (derivationStepZipperDown!923 (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292)))))) (ite (or c!980324 c!980323) lt!2255845 (Context!9931 call!419160)) (h!69368 s!2326)))))

(declare-fun b!5593353 () Bool)

(assert (=> b!5593353 (= e!3450589 e!3450586)))

(assert (=> b!5593353 (= c!980320 ((_ is Concat!24426) (regOne!31675 (regOne!31674 r!7292))))))

(declare-fun d!1767868 () Bool)

(declare-fun c!980321 () Bool)

(assert (=> d!1767868 (= c!980321 (and ((_ is ElementMatch!15581) (regOne!31675 (regOne!31674 r!7292))) (= (c!980214 (regOne!31675 (regOne!31674 r!7292))) (h!69368 s!2326))))))

(assert (=> d!1767868 (= (derivationStepZipperDown!923 (regOne!31675 (regOne!31674 r!7292)) lt!2255845 (h!69368 s!2326)) e!3450587)))

(declare-fun b!5593347 () Bool)

(declare-fun call!419162 () (InoxSet Context!9930))

(assert (=> b!5593347 (= e!3450586 call!419162)))

(declare-fun bm!419156 () Bool)

(assert (=> bm!419156 (= call!419162 call!419159)))

(declare-fun bm!419157 () Bool)

(assert (=> bm!419157 (= call!419158 (derivationStepZipperDown!923 (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292)))) (ite c!980324 lt!2255845 (Context!9931 call!419161)) (h!69368 s!2326)))))

(declare-fun b!5593354 () Bool)

(assert (=> b!5593354 (= c!980323 e!3450585)))

(declare-fun res!2372906 () Bool)

(assert (=> b!5593354 (=> (not res!2372906) (not e!3450585))))

(assert (=> b!5593354 (= res!2372906 ((_ is Concat!24426) (regOne!31675 (regOne!31674 r!7292))))))

(assert (=> b!5593354 (= e!3450590 e!3450589)))

(declare-fun b!5593355 () Bool)

(assert (=> b!5593355 (= e!3450588 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5593356 () Bool)

(assert (=> b!5593356 (= e!3450587 (store ((as const (Array Context!9930 Bool)) false) lt!2255845 true))))

(declare-fun bm!419158 () Bool)

(assert (=> bm!419158 (= call!419160 call!419161)))

(declare-fun b!5593357 () Bool)

(assert (=> b!5593357 (= e!3450588 call!419162)))

(assert (= (and d!1767868 c!980321) b!5593356))

(assert (= (and d!1767868 (not c!980321)) b!5593350))

(assert (= (and b!5593350 c!980324) b!5593349))

(assert (= (and b!5593350 (not c!980324)) b!5593354))

(assert (= (and b!5593354 res!2372906) b!5593352))

(assert (= (and b!5593354 c!980323) b!5593348))

(assert (= (and b!5593354 (not c!980323)) b!5593353))

(assert (= (and b!5593353 c!980320) b!5593347))

(assert (= (and b!5593353 (not c!980320)) b!5593351))

(assert (= (and b!5593351 c!980322) b!5593357))

(assert (= (and b!5593351 (not c!980322)) b!5593355))

(assert (= (or b!5593347 b!5593357) bm!419158))

(assert (= (or b!5593347 b!5593357) bm!419156))

(assert (= (or b!5593348 bm!419158) bm!419153))

(assert (= (or b!5593348 bm!419156) bm!419154))

(assert (= (or b!5593349 bm!419154) bm!419155))

(assert (= (or b!5593349 b!5593348) bm!419157))

(declare-fun m!6572990 () Bool)

(assert (=> bm!419157 m!6572990))

(declare-fun m!6572992 () Bool)

(assert (=> bm!419155 m!6572992))

(declare-fun m!6572994 () Bool)

(assert (=> bm!419153 m!6572994))

(declare-fun m!6572996 () Bool)

(assert (=> b!5593352 m!6572996))

(assert (=> b!5593356 m!6572988))

(assert (=> b!5593041 d!1767868))

(declare-fun d!1767870 () Bool)

(declare-fun c!980327 () Bool)

(declare-fun isEmpty!34741 (List!63044) Bool)

(assert (=> d!1767870 (= c!980327 (isEmpty!34741 (t!376324 s!2326)))))

(declare-fun e!3450595 () Bool)

(assert (=> d!1767870 (= (matchZipper!1719 lt!2255856 (t!376324 s!2326)) e!3450595)))

(declare-fun b!5593366 () Bool)

(declare-fun nullableZipper!1576 ((InoxSet Context!9930)) Bool)

(assert (=> b!5593366 (= e!3450595 (nullableZipper!1576 lt!2255856))))

(declare-fun b!5593367 () Bool)

(declare-fun derivationStepZipper!1680 ((InoxSet Context!9930) C!31432) (InoxSet Context!9930))

(declare-fun head!11931 (List!63044) C!31432)

(declare-fun tail!11026 (List!63044) List!63044)

(assert (=> b!5593367 (= e!3450595 (matchZipper!1719 (derivationStepZipper!1680 lt!2255856 (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))))))

(assert (= (and d!1767870 c!980327) b!5593366))

(assert (= (and d!1767870 (not c!980327)) b!5593367))

(declare-fun m!6573000 () Bool)

(assert (=> d!1767870 m!6573000))

(declare-fun m!6573002 () Bool)

(assert (=> b!5593366 m!6573002))

(declare-fun m!6573004 () Bool)

(assert (=> b!5593367 m!6573004))

(assert (=> b!5593367 m!6573004))

(declare-fun m!6573006 () Bool)

(assert (=> b!5593367 m!6573006))

(declare-fun m!6573008 () Bool)

(assert (=> b!5593367 m!6573008))

(assert (=> b!5593367 m!6573006))

(assert (=> b!5593367 m!6573008))

(declare-fun m!6573012 () Bool)

(assert (=> b!5593367 m!6573012))

(assert (=> b!5593023 d!1767870))

(declare-fun b!5593394 () Bool)

(declare-fun e!3450613 () Option!15590)

(assert (=> b!5593394 (= e!3450613 None!15589)))

(declare-fun b!5593395 () Bool)

(declare-fun e!3450611 () Bool)

(declare-fun lt!2255927 () Option!15590)

(declare-fun ++!13809 (List!63044 List!63044) List!63044)

(declare-fun get!21667 (Option!15590) tuple2!65356)

(assert (=> b!5593395 (= e!3450611 (= (++!13809 (_1!35981 (get!21667 lt!2255927)) (_2!35981 (get!21667 lt!2255927))) s!2326))))

(declare-fun d!1767874 () Bool)

(declare-fun e!3450610 () Bool)

(assert (=> d!1767874 e!3450610))

(declare-fun res!2372929 () Bool)

(assert (=> d!1767874 (=> res!2372929 e!3450610)))

(assert (=> d!1767874 (= res!2372929 e!3450611)))

(declare-fun res!2372931 () Bool)

(assert (=> d!1767874 (=> (not res!2372931) (not e!3450611))))

(assert (=> d!1767874 (= res!2372931 (isDefined!12293 lt!2255927))))

(declare-fun e!3450612 () Option!15590)

(assert (=> d!1767874 (= lt!2255927 e!3450612)))

(declare-fun c!980333 () Bool)

(declare-fun e!3450614 () Bool)

(assert (=> d!1767874 (= c!980333 e!3450614)))

(declare-fun res!2372933 () Bool)

(assert (=> d!1767874 (=> (not res!2372933) (not e!3450614))))

(assert (=> d!1767874 (= res!2372933 (matchR!7766 (regOne!31674 r!7292) Nil!62920))))

(assert (=> d!1767874 (validRegex!7317 (regOne!31674 r!7292))))

(assert (=> d!1767874 (= (findConcatSeparation!2004 (regOne!31674 r!7292) (regTwo!31674 r!7292) Nil!62920 s!2326 s!2326) lt!2255927)))

(declare-fun b!5593396 () Bool)

(assert (=> b!5593396 (= e!3450612 e!3450613)))

(declare-fun c!980332 () Bool)

(assert (=> b!5593396 (= c!980332 ((_ is Nil!62920) s!2326))))

(declare-fun b!5593397 () Bool)

(assert (=> b!5593397 (= e!3450612 (Some!15589 (tuple2!65357 Nil!62920 s!2326)))))

(declare-fun b!5593398 () Bool)

(declare-fun res!2372930 () Bool)

(assert (=> b!5593398 (=> (not res!2372930) (not e!3450611))))

(assert (=> b!5593398 (= res!2372930 (matchR!7766 (regOne!31674 r!7292) (_1!35981 (get!21667 lt!2255927))))))

(declare-fun b!5593399 () Bool)

(assert (=> b!5593399 (= e!3450610 (not (isDefined!12293 lt!2255927)))))

(declare-fun b!5593400 () Bool)

(assert (=> b!5593400 (= e!3450614 (matchR!7766 (regTwo!31674 r!7292) s!2326))))

(declare-fun b!5593401 () Bool)

(declare-fun res!2372932 () Bool)

(assert (=> b!5593401 (=> (not res!2372932) (not e!3450611))))

(assert (=> b!5593401 (= res!2372932 (matchR!7766 (regTwo!31674 r!7292) (_2!35981 (get!21667 lt!2255927))))))

(declare-fun b!5593402 () Bool)

(declare-fun lt!2255928 () Unit!155740)

(declare-fun lt!2255926 () Unit!155740)

(assert (=> b!5593402 (= lt!2255928 lt!2255926)))

(assert (=> b!5593402 (= (++!13809 (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920)) (t!376324 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1978 (List!63044 C!31432 List!63044 List!63044) Unit!155740)

(assert (=> b!5593402 (= lt!2255926 (lemmaMoveElementToOtherListKeepsConcatEq!1978 Nil!62920 (h!69368 s!2326) (t!376324 s!2326) s!2326))))

(assert (=> b!5593402 (= e!3450613 (findConcatSeparation!2004 (regOne!31674 r!7292) (regTwo!31674 r!7292) (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920)) (t!376324 s!2326) s!2326))))

(assert (= (and d!1767874 res!2372933) b!5593400))

(assert (= (and d!1767874 c!980333) b!5593397))

(assert (= (and d!1767874 (not c!980333)) b!5593396))

(assert (= (and b!5593396 c!980332) b!5593394))

(assert (= (and b!5593396 (not c!980332)) b!5593402))

(assert (= (and d!1767874 res!2372931) b!5593398))

(assert (= (and b!5593398 res!2372930) b!5593401))

(assert (= (and b!5593401 res!2372932) b!5593395))

(assert (= (and d!1767874 (not res!2372929)) b!5593399))

(declare-fun m!6573024 () Bool)

(assert (=> b!5593400 m!6573024))

(declare-fun m!6573026 () Bool)

(assert (=> b!5593401 m!6573026))

(declare-fun m!6573028 () Bool)

(assert (=> b!5593401 m!6573028))

(declare-fun m!6573030 () Bool)

(assert (=> d!1767874 m!6573030))

(declare-fun m!6573032 () Bool)

(assert (=> d!1767874 m!6573032))

(declare-fun m!6573034 () Bool)

(assert (=> d!1767874 m!6573034))

(declare-fun m!6573036 () Bool)

(assert (=> b!5593402 m!6573036))

(assert (=> b!5593402 m!6573036))

(declare-fun m!6573038 () Bool)

(assert (=> b!5593402 m!6573038))

(declare-fun m!6573040 () Bool)

(assert (=> b!5593402 m!6573040))

(assert (=> b!5593402 m!6573036))

(declare-fun m!6573042 () Bool)

(assert (=> b!5593402 m!6573042))

(assert (=> b!5593395 m!6573026))

(declare-fun m!6573044 () Bool)

(assert (=> b!5593395 m!6573044))

(assert (=> b!5593399 m!6573030))

(assert (=> b!5593398 m!6573026))

(declare-fun m!6573046 () Bool)

(assert (=> b!5593398 m!6573046))

(assert (=> b!5593022 d!1767874))

(declare-fun d!1767882 () Bool)

(declare-fun choose!42415 (Int) Bool)

(assert (=> d!1767882 (= (Exists!2681 lambda!300241) (choose!42415 lambda!300241))))

(declare-fun bs!1293265 () Bool)

(assert (= bs!1293265 d!1767882))

(declare-fun m!6573048 () Bool)

(assert (=> bs!1293265 m!6573048))

(assert (=> b!5593022 d!1767882))

(declare-fun d!1767884 () Bool)

(assert (=> d!1767884 (= (Exists!2681 lambda!300240) (choose!42415 lambda!300240))))

(declare-fun bs!1293266 () Bool)

(assert (= bs!1293266 d!1767884))

(declare-fun m!6573050 () Bool)

(assert (=> bs!1293266 m!6573050))

(assert (=> b!5593022 d!1767884))

(declare-fun bs!1293268 () Bool)

(declare-fun d!1767886 () Bool)

(assert (= bs!1293268 (and d!1767886 b!5593022)))

(declare-fun lambda!300272 () Int)

(assert (=> bs!1293268 (= lambda!300272 lambda!300240)))

(assert (=> bs!1293268 (not (= lambda!300272 lambda!300241))))

(assert (=> d!1767886 true))

(assert (=> d!1767886 true))

(assert (=> d!1767886 true))

(assert (=> d!1767886 (= (isDefined!12293 (findConcatSeparation!2004 (regOne!31674 r!7292) (regTwo!31674 r!7292) Nil!62920 s!2326 s!2326)) (Exists!2681 lambda!300272))))

(declare-fun lt!2255934 () Unit!155740)

(declare-fun choose!42416 (Regex!15581 Regex!15581 List!63044) Unit!155740)

(assert (=> d!1767886 (= lt!2255934 (choose!42416 (regOne!31674 r!7292) (regTwo!31674 r!7292) s!2326))))

(assert (=> d!1767886 (validRegex!7317 (regOne!31674 r!7292))))

(assert (=> d!1767886 (= (lemmaFindConcatSeparationEquivalentToExists!1768 (regOne!31674 r!7292) (regTwo!31674 r!7292) s!2326) lt!2255934)))

(declare-fun bs!1293269 () Bool)

(assert (= bs!1293269 d!1767886))

(assert (=> bs!1293269 m!6572706))

(assert (=> bs!1293269 m!6572706))

(assert (=> bs!1293269 m!6572708))

(declare-fun m!6573072 () Bool)

(assert (=> bs!1293269 m!6573072))

(declare-fun m!6573074 () Bool)

(assert (=> bs!1293269 m!6573074))

(assert (=> bs!1293269 m!6573034))

(assert (=> b!5593022 d!1767886))

(declare-fun bs!1293275 () Bool)

(declare-fun d!1767890 () Bool)

(assert (= bs!1293275 (and d!1767890 b!5593022)))

(declare-fun lambda!300280 () Int)

(assert (=> bs!1293275 (= lambda!300280 lambda!300240)))

(assert (=> bs!1293275 (not (= lambda!300280 lambda!300241))))

(declare-fun bs!1293276 () Bool)

(assert (= bs!1293276 (and d!1767890 d!1767886)))

(assert (=> bs!1293276 (= lambda!300280 lambda!300272)))

(assert (=> d!1767890 true))

(assert (=> d!1767890 true))

(assert (=> d!1767890 true))

(declare-fun lambda!300281 () Int)

(assert (=> bs!1293275 (not (= lambda!300281 lambda!300240))))

(assert (=> bs!1293275 (= lambda!300281 lambda!300241)))

(assert (=> bs!1293276 (not (= lambda!300281 lambda!300272))))

(declare-fun bs!1293277 () Bool)

(assert (= bs!1293277 d!1767890))

(assert (=> bs!1293277 (not (= lambda!300281 lambda!300280))))

(assert (=> d!1767890 true))

(assert (=> d!1767890 true))

(assert (=> d!1767890 true))

(assert (=> d!1767890 (= (Exists!2681 lambda!300280) (Exists!2681 lambda!300281))))

(declare-fun lt!2255941 () Unit!155740)

(declare-fun choose!42417 (Regex!15581 Regex!15581 List!63044) Unit!155740)

(assert (=> d!1767890 (= lt!2255941 (choose!42417 (regOne!31674 r!7292) (regTwo!31674 r!7292) s!2326))))

(assert (=> d!1767890 (validRegex!7317 (regOne!31674 r!7292))))

(assert (=> d!1767890 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1310 (regOne!31674 r!7292) (regTwo!31674 r!7292) s!2326) lt!2255941)))

(declare-fun m!6573114 () Bool)

(assert (=> bs!1293277 m!6573114))

(declare-fun m!6573116 () Bool)

(assert (=> bs!1293277 m!6573116))

(declare-fun m!6573118 () Bool)

(assert (=> bs!1293277 m!6573118))

(assert (=> bs!1293277 m!6573034))

(assert (=> b!5593022 d!1767890))

(declare-fun d!1767908 () Bool)

(declare-fun isEmpty!34742 (Option!15590) Bool)

(assert (=> d!1767908 (= (isDefined!12293 (findConcatSeparation!2004 (regOne!31674 r!7292) (regTwo!31674 r!7292) Nil!62920 s!2326 s!2326)) (not (isEmpty!34742 (findConcatSeparation!2004 (regOne!31674 r!7292) (regTwo!31674 r!7292) Nil!62920 s!2326 s!2326))))))

(declare-fun bs!1293278 () Bool)

(assert (= bs!1293278 d!1767908))

(assert (=> bs!1293278 m!6572706))

(declare-fun m!6573132 () Bool)

(assert (=> bs!1293278 m!6573132))

(assert (=> b!5593022 d!1767908))

(declare-fun d!1767914 () Bool)

(declare-fun nullableFct!1722 (Regex!15581) Bool)

(assert (=> d!1767914 (= (nullable!5613 (h!69366 (exprs!5465 (h!69367 zl!343)))) (nullableFct!1722 (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun bs!1293279 () Bool)

(assert (= bs!1293279 d!1767914))

(declare-fun m!6573144 () Bool)

(assert (=> bs!1293279 m!6573144))

(assert (=> b!5593035 d!1767914))

(declare-fun b!5593546 () Bool)

(declare-fun e!3450698 () (InoxSet Context!9930))

(declare-fun call!419184 () (InoxSet Context!9930))

(assert (=> b!5593546 (= e!3450698 ((_ map or) call!419184 (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) (h!69368 s!2326))))))

(declare-fun b!5593547 () Bool)

(declare-fun e!3450696 () Bool)

(assert (=> b!5593547 (= e!3450696 (nullable!5613 (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))))))

(declare-fun bm!419179 () Bool)

(assert (=> bm!419179 (= call!419184 (derivationStepZipperDown!923 (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))))) (Context!9931 (t!376322 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) (h!69368 s!2326)))))

(declare-fun b!5593549 () Bool)

(declare-fun e!3450697 () (InoxSet Context!9930))

(assert (=> b!5593549 (= e!3450697 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5593550 () Bool)

(assert (=> b!5593550 (= e!3450698 e!3450697)))

(declare-fun c!980372 () Bool)

(assert (=> b!5593550 (= c!980372 ((_ is Cons!62918) (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))))))))

(declare-fun b!5593548 () Bool)

(assert (=> b!5593548 (= e!3450697 call!419184)))

(declare-fun d!1767920 () Bool)

(declare-fun c!980373 () Bool)

(assert (=> d!1767920 (= c!980373 e!3450696)))

(declare-fun res!2372974 () Bool)

(assert (=> d!1767920 (=> (not res!2372974) (not e!3450696))))

(assert (=> d!1767920 (= res!2372974 ((_ is Cons!62918) (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))))))))

(assert (=> d!1767920 (= (derivationStepZipperUp!849 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))) (h!69368 s!2326)) e!3450698)))

(assert (= (and d!1767920 res!2372974) b!5593547))

(assert (= (and d!1767920 c!980373) b!5593546))

(assert (= (and d!1767920 (not c!980373)) b!5593550))

(assert (= (and b!5593550 c!980372) b!5593548))

(assert (= (and b!5593550 (not c!980372)) b!5593549))

(assert (= (or b!5593546 b!5593548) bm!419179))

(declare-fun m!6573150 () Bool)

(assert (=> b!5593546 m!6573150))

(declare-fun m!6573152 () Bool)

(assert (=> b!5593547 m!6573152))

(declare-fun m!6573154 () Bool)

(assert (=> bm!419179 m!6573154))

(assert (=> b!5593035 d!1767920))

(declare-fun c!980374 () Bool)

(declare-fun c!980377 () Bool)

(declare-fun bm!419180 () Bool)

(declare-fun call!419188 () List!63042)

(assert (=> bm!419180 (= call!419188 ($colon$colon!1643 (exprs!5465 lt!2255845) (ite (or c!980377 c!980374) (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (h!69366 (exprs!5465 (h!69367 zl!343))))))))

(declare-fun b!5593566 () Bool)

(declare-fun e!3450708 () (InoxSet Context!9930))

(declare-fun call!419185 () (InoxSet Context!9930))

(declare-fun call!419186 () (InoxSet Context!9930))

(assert (=> b!5593566 (= e!3450708 ((_ map or) call!419185 call!419186))))

(declare-fun b!5593567 () Bool)

(declare-fun e!3450709 () (InoxSet Context!9930))

(declare-fun call!419190 () (InoxSet Context!9930))

(assert (=> b!5593567 (= e!3450709 ((_ map or) call!419185 call!419190))))

(declare-fun b!5593568 () Bool)

(declare-fun e!3450706 () (InoxSet Context!9930))

(assert (=> b!5593568 (= e!3450706 e!3450709)))

(declare-fun c!980378 () Bool)

(assert (=> b!5593568 (= c!980378 ((_ is Union!15581) (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun b!5593569 () Bool)

(declare-fun c!980376 () Bool)

(assert (=> b!5593569 (= c!980376 ((_ is Star!15581) (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun e!3450705 () (InoxSet Context!9930))

(declare-fun e!3450707 () (InoxSet Context!9930))

(assert (=> b!5593569 (= e!3450705 e!3450707)))

(declare-fun b!5593570 () Bool)

(declare-fun e!3450704 () Bool)

(assert (=> b!5593570 (= e!3450704 (nullable!5613 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343))))))))

(declare-fun bm!419181 () Bool)

(assert (=> bm!419181 (= call!419186 call!419190)))

(declare-fun call!419187 () List!63042)

(declare-fun bm!419182 () Bool)

(assert (=> bm!419182 (= call!419190 (derivationStepZipperDown!923 (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343))))))) (ite (or c!980378 c!980377) lt!2255845 (Context!9931 call!419187)) (h!69368 s!2326)))))

(declare-fun b!5593571 () Bool)

(assert (=> b!5593571 (= e!3450708 e!3450705)))

(assert (=> b!5593571 (= c!980374 ((_ is Concat!24426) (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun d!1767924 () Bool)

(declare-fun c!980375 () Bool)

(assert (=> d!1767924 (= c!980375 (and ((_ is ElementMatch!15581) (h!69366 (exprs!5465 (h!69367 zl!343)))) (= (c!980214 (h!69366 (exprs!5465 (h!69367 zl!343)))) (h!69368 s!2326))))))

(assert (=> d!1767924 (= (derivationStepZipperDown!923 (h!69366 (exprs!5465 (h!69367 zl!343))) lt!2255845 (h!69368 s!2326)) e!3450706)))

(declare-fun b!5593565 () Bool)

(declare-fun call!419189 () (InoxSet Context!9930))

(assert (=> b!5593565 (= e!3450705 call!419189)))

(declare-fun bm!419183 () Bool)

(assert (=> bm!419183 (= call!419189 call!419186)))

(declare-fun bm!419184 () Bool)

(assert (=> bm!419184 (= call!419185 (derivationStepZipperDown!923 (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343))))) (ite c!980378 lt!2255845 (Context!9931 call!419188)) (h!69368 s!2326)))))

(declare-fun b!5593572 () Bool)

(assert (=> b!5593572 (= c!980377 e!3450704)))

(declare-fun res!2372975 () Bool)

(assert (=> b!5593572 (=> (not res!2372975) (not e!3450704))))

(assert (=> b!5593572 (= res!2372975 ((_ is Concat!24426) (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(assert (=> b!5593572 (= e!3450709 e!3450708)))

(declare-fun b!5593573 () Bool)

(assert (=> b!5593573 (= e!3450707 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5593574 () Bool)

(assert (=> b!5593574 (= e!3450706 (store ((as const (Array Context!9930 Bool)) false) lt!2255845 true))))

(declare-fun bm!419185 () Bool)

(assert (=> bm!419185 (= call!419187 call!419188)))

(declare-fun b!5593575 () Bool)

(assert (=> b!5593575 (= e!3450707 call!419189)))

(assert (= (and d!1767924 c!980375) b!5593574))

(assert (= (and d!1767924 (not c!980375)) b!5593568))

(assert (= (and b!5593568 c!980378) b!5593567))

(assert (= (and b!5593568 (not c!980378)) b!5593572))

(assert (= (and b!5593572 res!2372975) b!5593570))

(assert (= (and b!5593572 c!980377) b!5593566))

(assert (= (and b!5593572 (not c!980377)) b!5593571))

(assert (= (and b!5593571 c!980374) b!5593565))

(assert (= (and b!5593571 (not c!980374)) b!5593569))

(assert (= (and b!5593569 c!980376) b!5593575))

(assert (= (and b!5593569 (not c!980376)) b!5593573))

(assert (= (or b!5593565 b!5593575) bm!419185))

(assert (= (or b!5593565 b!5593575) bm!419183))

(assert (= (or b!5593566 bm!419185) bm!419180))

(assert (= (or b!5593566 bm!419183) bm!419181))

(assert (= (or b!5593567 bm!419181) bm!419182))

(assert (= (or b!5593567 b!5593566) bm!419184))

(declare-fun m!6573156 () Bool)

(assert (=> bm!419184 m!6573156))

(declare-fun m!6573160 () Bool)

(assert (=> bm!419182 m!6573160))

(declare-fun m!6573162 () Bool)

(assert (=> bm!419180 m!6573162))

(declare-fun m!6573164 () Bool)

(assert (=> b!5593570 m!6573164))

(assert (=> b!5593574 m!6572988))

(assert (=> b!5593035 d!1767924))

(declare-fun d!1767926 () Bool)

(declare-fun choose!42419 ((InoxSet Context!9930) Int) (InoxSet Context!9930))

(assert (=> d!1767926 (= (flatMap!1194 z!1189 lambda!300242) (choose!42419 z!1189 lambda!300242))))

(declare-fun bs!1293289 () Bool)

(assert (= bs!1293289 d!1767926))

(declare-fun m!6573166 () Bool)

(assert (=> bs!1293289 m!6573166))

(assert (=> b!5593035 d!1767926))

(declare-fun e!3450721 () (InoxSet Context!9930))

(declare-fun call!419191 () (InoxSet Context!9930))

(declare-fun b!5593589 () Bool)

(assert (=> b!5593589 (= e!3450721 ((_ map or) call!419191 (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343)))) (h!69368 s!2326))))))

(declare-fun b!5593590 () Bool)

(declare-fun e!3450719 () Bool)

(assert (=> b!5593590 (= e!3450719 (nullable!5613 (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun bm!419186 () Bool)

(assert (=> bm!419186 (= call!419191 (derivationStepZipperDown!923 (h!69366 (exprs!5465 (h!69367 zl!343))) (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343)))) (h!69368 s!2326)))))

(declare-fun b!5593592 () Bool)

(declare-fun e!3450720 () (InoxSet Context!9930))

(assert (=> b!5593592 (= e!3450720 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5593593 () Bool)

(assert (=> b!5593593 (= e!3450721 e!3450720)))

(declare-fun c!980379 () Bool)

(assert (=> b!5593593 (= c!980379 ((_ is Cons!62918) (exprs!5465 (h!69367 zl!343))))))

(declare-fun b!5593591 () Bool)

(assert (=> b!5593591 (= e!3450720 call!419191)))

(declare-fun d!1767928 () Bool)

(declare-fun c!980380 () Bool)

(assert (=> d!1767928 (= c!980380 e!3450719)))

(declare-fun res!2372976 () Bool)

(assert (=> d!1767928 (=> (not res!2372976) (not e!3450719))))

(assert (=> d!1767928 (= res!2372976 ((_ is Cons!62918) (exprs!5465 (h!69367 zl!343))))))

(assert (=> d!1767928 (= (derivationStepZipperUp!849 (h!69367 zl!343) (h!69368 s!2326)) e!3450721)))

(assert (= (and d!1767928 res!2372976) b!5593590))

(assert (= (and d!1767928 c!980380) b!5593589))

(assert (= (and d!1767928 (not c!980380)) b!5593593))

(assert (= (and b!5593593 c!980379) b!5593591))

(assert (= (and b!5593593 (not c!980379)) b!5593592))

(assert (= (or b!5593589 b!5593591) bm!419186))

(declare-fun m!6573170 () Bool)

(assert (=> b!5593589 m!6573170))

(assert (=> b!5593590 m!6572778))

(declare-fun m!6573172 () Bool)

(assert (=> bm!419186 m!6573172))

(assert (=> b!5593035 d!1767928))

(declare-fun d!1767936 () Bool)

(declare-fun dynLambda!24609 (Int Context!9930) (InoxSet Context!9930))

(assert (=> d!1767936 (= (flatMap!1194 z!1189 lambda!300242) (dynLambda!24609 lambda!300242 (h!69367 zl!343)))))

(declare-fun lt!2255945 () Unit!155740)

(declare-fun choose!42421 ((InoxSet Context!9930) Context!9930 Int) Unit!155740)

(assert (=> d!1767936 (= lt!2255945 (choose!42421 z!1189 (h!69367 zl!343) lambda!300242))))

(assert (=> d!1767936 (= z!1189 (store ((as const (Array Context!9930 Bool)) false) (h!69367 zl!343) true))))

(assert (=> d!1767936 (= (lemmaFlatMapOnSingletonSet!726 z!1189 (h!69367 zl!343) lambda!300242) lt!2255945)))

(declare-fun b_lambda!211951 () Bool)

(assert (=> (not b_lambda!211951) (not d!1767936)))

(declare-fun bs!1293293 () Bool)

(assert (= bs!1293293 d!1767936))

(assert (=> bs!1293293 m!6572772))

(declare-fun m!6573174 () Bool)

(assert (=> bs!1293293 m!6573174))

(declare-fun m!6573176 () Bool)

(assert (=> bs!1293293 m!6573176))

(declare-fun m!6573178 () Bool)

(assert (=> bs!1293293 m!6573178))

(assert (=> b!5593035 d!1767936))

(declare-fun e!3450724 () (InoxSet Context!9930))

(declare-fun b!5593594 () Bool)

(declare-fun call!419192 () (InoxSet Context!9930))

(assert (=> b!5593594 (= e!3450724 ((_ map or) call!419192 (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 lt!2255845))) (h!69368 s!2326))))))

(declare-fun b!5593595 () Bool)

(declare-fun e!3450722 () Bool)

(assert (=> b!5593595 (= e!3450722 (nullable!5613 (h!69366 (exprs!5465 lt!2255845))))))

(declare-fun bm!419187 () Bool)

(assert (=> bm!419187 (= call!419192 (derivationStepZipperDown!923 (h!69366 (exprs!5465 lt!2255845)) (Context!9931 (t!376322 (exprs!5465 lt!2255845))) (h!69368 s!2326)))))

(declare-fun b!5593597 () Bool)

(declare-fun e!3450723 () (InoxSet Context!9930))

(assert (=> b!5593597 (= e!3450723 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5593598 () Bool)

(assert (=> b!5593598 (= e!3450724 e!3450723)))

(declare-fun c!980381 () Bool)

(assert (=> b!5593598 (= c!980381 ((_ is Cons!62918) (exprs!5465 lt!2255845)))))

(declare-fun b!5593596 () Bool)

(assert (=> b!5593596 (= e!3450723 call!419192)))

(declare-fun d!1767938 () Bool)

(declare-fun c!980382 () Bool)

(assert (=> d!1767938 (= c!980382 e!3450722)))

(declare-fun res!2372977 () Bool)

(assert (=> d!1767938 (=> (not res!2372977) (not e!3450722))))

(assert (=> d!1767938 (= res!2372977 ((_ is Cons!62918) (exprs!5465 lt!2255845)))))

(assert (=> d!1767938 (= (derivationStepZipperUp!849 lt!2255845 (h!69368 s!2326)) e!3450724)))

(assert (= (and d!1767938 res!2372977) b!5593595))

(assert (= (and d!1767938 c!980382) b!5593594))

(assert (= (and d!1767938 (not c!980382)) b!5593598))

(assert (= (and b!5593598 c!980381) b!5593596))

(assert (= (and b!5593598 (not c!980381)) b!5593597))

(assert (= (or b!5593594 b!5593596) bm!419187))

(declare-fun m!6573180 () Bool)

(assert (=> b!5593594 m!6573180))

(declare-fun m!6573182 () Bool)

(assert (=> b!5593595 m!6573182))

(declare-fun m!6573184 () Bool)

(assert (=> bm!419187 m!6573184))

(assert (=> b!5593035 d!1767938))

(declare-fun d!1767940 () Bool)

(declare-fun c!980383 () Bool)

(assert (=> d!1767940 (= c!980383 (isEmpty!34741 (t!376324 s!2326)))))

(declare-fun e!3450725 () Bool)

(assert (=> d!1767940 (= (matchZipper!1719 lt!2255857 (t!376324 s!2326)) e!3450725)))

(declare-fun b!5593599 () Bool)

(assert (=> b!5593599 (= e!3450725 (nullableZipper!1576 lt!2255857))))

(declare-fun b!5593600 () Bool)

(assert (=> b!5593600 (= e!3450725 (matchZipper!1719 (derivationStepZipper!1680 lt!2255857 (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))))))

(assert (= (and d!1767940 c!980383) b!5593599))

(assert (= (and d!1767940 (not c!980383)) b!5593600))

(assert (=> d!1767940 m!6573000))

(declare-fun m!6573186 () Bool)

(assert (=> b!5593599 m!6573186))

(assert (=> b!5593600 m!6573004))

(assert (=> b!5593600 m!6573004))

(declare-fun m!6573188 () Bool)

(assert (=> b!5593600 m!6573188))

(assert (=> b!5593600 m!6573008))

(assert (=> b!5593600 m!6573188))

(assert (=> b!5593600 m!6573008))

(declare-fun m!6573190 () Bool)

(assert (=> b!5593600 m!6573190))

(assert (=> b!5593024 d!1767940))

(declare-fun d!1767942 () Bool)

(declare-fun c!980384 () Bool)

(assert (=> d!1767942 (= c!980384 (isEmpty!34741 (t!376324 s!2326)))))

(declare-fun e!3450726 () Bool)

(assert (=> d!1767942 (= (matchZipper!1719 lt!2255844 (t!376324 s!2326)) e!3450726)))

(declare-fun b!5593601 () Bool)

(assert (=> b!5593601 (= e!3450726 (nullableZipper!1576 lt!2255844))))

(declare-fun b!5593602 () Bool)

(assert (=> b!5593602 (= e!3450726 (matchZipper!1719 (derivationStepZipper!1680 lt!2255844 (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))))))

(assert (= (and d!1767942 c!980384) b!5593601))

(assert (= (and d!1767942 (not c!980384)) b!5593602))

(assert (=> d!1767942 m!6573000))

(declare-fun m!6573192 () Bool)

(assert (=> b!5593601 m!6573192))

(assert (=> b!5593602 m!6573004))

(assert (=> b!5593602 m!6573004))

(declare-fun m!6573194 () Bool)

(assert (=> b!5593602 m!6573194))

(assert (=> b!5593602 m!6573008))

(assert (=> b!5593602 m!6573194))

(assert (=> b!5593602 m!6573008))

(declare-fun m!6573196 () Bool)

(assert (=> b!5593602 m!6573196))

(assert (=> b!5593024 d!1767942))

(declare-fun d!1767944 () Bool)

(declare-fun c!980385 () Bool)

(assert (=> d!1767944 (= c!980385 (isEmpty!34741 (t!376324 s!2326)))))

(declare-fun e!3450727 () Bool)

(assert (=> d!1767944 (= (matchZipper!1719 lt!2255868 (t!376324 s!2326)) e!3450727)))

(declare-fun b!5593603 () Bool)

(assert (=> b!5593603 (= e!3450727 (nullableZipper!1576 lt!2255868))))

(declare-fun b!5593604 () Bool)

(assert (=> b!5593604 (= e!3450727 (matchZipper!1719 (derivationStepZipper!1680 lt!2255868 (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))))))

(assert (= (and d!1767944 c!980385) b!5593603))

(assert (= (and d!1767944 (not c!980385)) b!5593604))

(assert (=> d!1767944 m!6573000))

(declare-fun m!6573198 () Bool)

(assert (=> b!5593603 m!6573198))

(assert (=> b!5593604 m!6573004))

(assert (=> b!5593604 m!6573004))

(declare-fun m!6573200 () Bool)

(assert (=> b!5593604 m!6573200))

(assert (=> b!5593604 m!6573008))

(assert (=> b!5593604 m!6573200))

(assert (=> b!5593604 m!6573008))

(declare-fun m!6573202 () Bool)

(assert (=> b!5593604 m!6573202))

(assert (=> b!5593024 d!1767944))

(declare-fun d!1767946 () Bool)

(declare-fun e!3450730 () Bool)

(assert (=> d!1767946 (= (matchZipper!1719 ((_ map or) lt!2255868 lt!2255856) (t!376324 s!2326)) e!3450730)))

(declare-fun res!2372980 () Bool)

(assert (=> d!1767946 (=> res!2372980 e!3450730)))

(assert (=> d!1767946 (= res!2372980 (matchZipper!1719 lt!2255868 (t!376324 s!2326)))))

(declare-fun lt!2255948 () Unit!155740)

(declare-fun choose!42423 ((InoxSet Context!9930) (InoxSet Context!9930) List!63044) Unit!155740)

(assert (=> d!1767946 (= lt!2255948 (choose!42423 lt!2255868 lt!2255856 (t!376324 s!2326)))))

(assert (=> d!1767946 (= (lemmaZipperConcatMatchesSameAsBothZippers!606 lt!2255868 lt!2255856 (t!376324 s!2326)) lt!2255948)))

(declare-fun b!5593607 () Bool)

(assert (=> b!5593607 (= e!3450730 (matchZipper!1719 lt!2255856 (t!376324 s!2326)))))

(assert (= (and d!1767946 (not res!2372980)) b!5593607))

(declare-fun m!6573204 () Bool)

(assert (=> d!1767946 m!6573204))

(assert (=> d!1767946 m!6572698))

(declare-fun m!6573206 () Bool)

(assert (=> d!1767946 m!6573206))

(assert (=> b!5593607 m!6572726))

(assert (=> b!5593024 d!1767946))

(declare-fun d!1767948 () Bool)

(assert (=> d!1767948 (= (flatMap!1194 lt!2255854 lambda!300242) (dynLambda!24609 lambda!300242 lt!2255869))))

(declare-fun lt!2255949 () Unit!155740)

(assert (=> d!1767948 (= lt!2255949 (choose!42421 lt!2255854 lt!2255869 lambda!300242))))

(assert (=> d!1767948 (= lt!2255854 (store ((as const (Array Context!9930 Bool)) false) lt!2255869 true))))

(assert (=> d!1767948 (= (lemmaFlatMapOnSingletonSet!726 lt!2255854 lt!2255869 lambda!300242) lt!2255949)))

(declare-fun b_lambda!211953 () Bool)

(assert (=> (not b_lambda!211953) (not d!1767948)))

(declare-fun bs!1293294 () Bool)

(assert (= bs!1293294 d!1767948))

(assert (=> bs!1293294 m!6572736))

(declare-fun m!6573208 () Bool)

(assert (=> bs!1293294 m!6573208))

(declare-fun m!6573210 () Bool)

(assert (=> bs!1293294 m!6573210))

(assert (=> bs!1293294 m!6572732))

(assert (=> b!5593034 d!1767948))

(declare-fun d!1767950 () Bool)

(assert (=> d!1767950 (= (nullable!5613 (regOne!31674 r!7292)) (nullableFct!1722 (regOne!31674 r!7292)))))

(declare-fun bs!1293295 () Bool)

(assert (= bs!1293295 d!1767950))

(declare-fun m!6573212 () Bool)

(assert (=> bs!1293295 m!6573212))

(assert (=> b!5593034 d!1767950))

(declare-fun d!1767952 () Bool)

(assert (=> d!1767952 (= (flatMap!1194 lt!2255874 lambda!300242) (choose!42419 lt!2255874 lambda!300242))))

(declare-fun bs!1293296 () Bool)

(assert (= bs!1293296 d!1767952))

(declare-fun m!6573214 () Bool)

(assert (=> bs!1293296 m!6573214))

(assert (=> b!5593034 d!1767952))

(declare-fun e!3450733 () (InoxSet Context!9930))

(declare-fun call!419193 () (InoxSet Context!9930))

(declare-fun b!5593608 () Bool)

(assert (=> b!5593608 (= e!3450733 ((_ map or) call!419193 (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 lt!2255849))) (h!69368 s!2326))))))

(declare-fun b!5593609 () Bool)

(declare-fun e!3450731 () Bool)

(assert (=> b!5593609 (= e!3450731 (nullable!5613 (h!69366 (exprs!5465 lt!2255849))))))

(declare-fun bm!419188 () Bool)

(assert (=> bm!419188 (= call!419193 (derivationStepZipperDown!923 (h!69366 (exprs!5465 lt!2255849)) (Context!9931 (t!376322 (exprs!5465 lt!2255849))) (h!69368 s!2326)))))

(declare-fun b!5593611 () Bool)

(declare-fun e!3450732 () (InoxSet Context!9930))

(assert (=> b!5593611 (= e!3450732 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5593612 () Bool)

(assert (=> b!5593612 (= e!3450733 e!3450732)))

(declare-fun c!980386 () Bool)

(assert (=> b!5593612 (= c!980386 ((_ is Cons!62918) (exprs!5465 lt!2255849)))))

(declare-fun b!5593610 () Bool)

(assert (=> b!5593610 (= e!3450732 call!419193)))

(declare-fun d!1767954 () Bool)

(declare-fun c!980387 () Bool)

(assert (=> d!1767954 (= c!980387 e!3450731)))

(declare-fun res!2372981 () Bool)

(assert (=> d!1767954 (=> (not res!2372981) (not e!3450731))))

(assert (=> d!1767954 (= res!2372981 ((_ is Cons!62918) (exprs!5465 lt!2255849)))))

(assert (=> d!1767954 (= (derivationStepZipperUp!849 lt!2255849 (h!69368 s!2326)) e!3450733)))

(assert (= (and d!1767954 res!2372981) b!5593609))

(assert (= (and d!1767954 c!980387) b!5593608))

(assert (= (and d!1767954 (not c!980387)) b!5593612))

(assert (= (and b!5593612 c!980386) b!5593610))

(assert (= (and b!5593612 (not c!980386)) b!5593611))

(assert (= (or b!5593608 b!5593610) bm!419188))

(declare-fun m!6573216 () Bool)

(assert (=> b!5593608 m!6573216))

(declare-fun m!6573218 () Bool)

(assert (=> b!5593609 m!6573218))

(declare-fun m!6573220 () Bool)

(assert (=> bm!419188 m!6573220))

(assert (=> b!5593034 d!1767954))

(declare-fun b!5593613 () Bool)

(declare-fun e!3450736 () (InoxSet Context!9930))

(declare-fun call!419194 () (InoxSet Context!9930))

(assert (=> b!5593613 (= e!3450736 ((_ map or) call!419194 (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 lt!2255869))) (h!69368 s!2326))))))

(declare-fun b!5593614 () Bool)

(declare-fun e!3450734 () Bool)

(assert (=> b!5593614 (= e!3450734 (nullable!5613 (h!69366 (exprs!5465 lt!2255869))))))

(declare-fun bm!419189 () Bool)

(assert (=> bm!419189 (= call!419194 (derivationStepZipperDown!923 (h!69366 (exprs!5465 lt!2255869)) (Context!9931 (t!376322 (exprs!5465 lt!2255869))) (h!69368 s!2326)))))

(declare-fun b!5593616 () Bool)

(declare-fun e!3450735 () (InoxSet Context!9930))

(assert (=> b!5593616 (= e!3450735 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5593617 () Bool)

(assert (=> b!5593617 (= e!3450736 e!3450735)))

(declare-fun c!980388 () Bool)

(assert (=> b!5593617 (= c!980388 ((_ is Cons!62918) (exprs!5465 lt!2255869)))))

(declare-fun b!5593615 () Bool)

(assert (=> b!5593615 (= e!3450735 call!419194)))

(declare-fun d!1767956 () Bool)

(declare-fun c!980389 () Bool)

(assert (=> d!1767956 (= c!980389 e!3450734)))

(declare-fun res!2372982 () Bool)

(assert (=> d!1767956 (=> (not res!2372982) (not e!3450734))))

(assert (=> d!1767956 (= res!2372982 ((_ is Cons!62918) (exprs!5465 lt!2255869)))))

(assert (=> d!1767956 (= (derivationStepZipperUp!849 lt!2255869 (h!69368 s!2326)) e!3450736)))

(assert (= (and d!1767956 res!2372982) b!5593614))

(assert (= (and d!1767956 c!980389) b!5593613))

(assert (= (and d!1767956 (not c!980389)) b!5593617))

(assert (= (and b!5593617 c!980388) b!5593615))

(assert (= (and b!5593617 (not c!980388)) b!5593616))

(assert (= (or b!5593613 b!5593615) bm!419189))

(declare-fun m!6573222 () Bool)

(assert (=> b!5593613 m!6573222))

(declare-fun m!6573224 () Bool)

(assert (=> b!5593614 m!6573224))

(declare-fun m!6573226 () Bool)

(assert (=> bm!419189 m!6573226))

(assert (=> b!5593034 d!1767956))

(declare-fun d!1767958 () Bool)

(assert (=> d!1767958 (= (flatMap!1194 lt!2255854 lambda!300242) (choose!42419 lt!2255854 lambda!300242))))

(declare-fun bs!1293297 () Bool)

(assert (= bs!1293297 d!1767958))

(declare-fun m!6573228 () Bool)

(assert (=> bs!1293297 m!6573228))

(assert (=> b!5593034 d!1767958))

(declare-fun d!1767960 () Bool)

(assert (=> d!1767960 (= (nullable!5613 (regOne!31675 (regOne!31674 r!7292))) (nullableFct!1722 (regOne!31675 (regOne!31674 r!7292))))))

(declare-fun bs!1293298 () Bool)

(assert (= bs!1293298 d!1767960))

(declare-fun m!6573230 () Bool)

(assert (=> bs!1293298 m!6573230))

(assert (=> b!5593034 d!1767960))

(declare-fun d!1767962 () Bool)

(assert (=> d!1767962 (= (nullable!5613 (regTwo!31675 (regOne!31674 r!7292))) (nullableFct!1722 (regTwo!31675 (regOne!31674 r!7292))))))

(declare-fun bs!1293299 () Bool)

(assert (= bs!1293299 d!1767962))

(declare-fun m!6573232 () Bool)

(assert (=> bs!1293299 m!6573232))

(assert (=> b!5593034 d!1767962))

(declare-fun d!1767964 () Bool)

(assert (=> d!1767964 (= (flatMap!1194 lt!2255874 lambda!300242) (dynLambda!24609 lambda!300242 lt!2255849))))

(declare-fun lt!2255950 () Unit!155740)

(assert (=> d!1767964 (= lt!2255950 (choose!42421 lt!2255874 lt!2255849 lambda!300242))))

(assert (=> d!1767964 (= lt!2255874 (store ((as const (Array Context!9930 Bool)) false) lt!2255849 true))))

(assert (=> d!1767964 (= (lemmaFlatMapOnSingletonSet!726 lt!2255874 lt!2255849 lambda!300242) lt!2255950)))

(declare-fun b_lambda!211955 () Bool)

(assert (=> (not b_lambda!211955) (not d!1767964)))

(declare-fun bs!1293300 () Bool)

(assert (= bs!1293300 d!1767964))

(assert (=> bs!1293300 m!6572730))

(declare-fun m!6573234 () Bool)

(assert (=> bs!1293300 m!6573234))

(declare-fun m!6573236 () Bool)

(assert (=> bs!1293300 m!6573236))

(assert (=> bs!1293300 m!6572740))

(assert (=> b!5593034 d!1767964))

(declare-fun bs!1293301 () Bool)

(declare-fun d!1767966 () Bool)

(assert (= bs!1293301 (and d!1767966 d!1767852)))

(declare-fun lambda!300288 () Int)

(assert (=> bs!1293301 (= lambda!300288 lambda!300254)))

(declare-fun bs!1293302 () Bool)

(assert (= bs!1293302 (and d!1767966 d!1767858)))

(assert (=> bs!1293302 (= lambda!300288 lambda!300257)))

(assert (=> d!1767966 (= (inv!82199 (h!69367 zl!343)) (forall!14746 (exprs!5465 (h!69367 zl!343)) lambda!300288))))

(declare-fun bs!1293303 () Bool)

(assert (= bs!1293303 d!1767966))

(declare-fun m!6573238 () Bool)

(assert (=> bs!1293303 m!6573238))

(assert (=> b!5593025 d!1767966))

(declare-fun bs!1293304 () Bool)

(declare-fun b!5593659 () Bool)

(assert (= bs!1293304 (and b!5593659 d!1767890)))

(declare-fun lambda!300293 () Int)

(assert (=> bs!1293304 (not (= lambda!300293 lambda!300280))))

(assert (=> bs!1293304 (not (= lambda!300293 lambda!300281))))

(declare-fun bs!1293305 () Bool)

(assert (= bs!1293305 (and b!5593659 b!5593022)))

(assert (=> bs!1293305 (not (= lambda!300293 lambda!300241))))

(declare-fun bs!1293306 () Bool)

(assert (= bs!1293306 (and b!5593659 d!1767886)))

(assert (=> bs!1293306 (not (= lambda!300293 lambda!300272))))

(assert (=> bs!1293305 (not (= lambda!300293 lambda!300240))))

(assert (=> b!5593659 true))

(assert (=> b!5593659 true))

(declare-fun bs!1293307 () Bool)

(declare-fun b!5593653 () Bool)

(assert (= bs!1293307 (and b!5593653 d!1767890)))

(declare-fun lambda!300294 () Int)

(assert (=> bs!1293307 (not (= lambda!300294 lambda!300280))))

(assert (=> bs!1293307 (= lambda!300294 lambda!300281)))

(declare-fun bs!1293308 () Bool)

(assert (= bs!1293308 (and b!5593653 b!5593659)))

(assert (=> bs!1293308 (not (= lambda!300294 lambda!300293))))

(declare-fun bs!1293309 () Bool)

(assert (= bs!1293309 (and b!5593653 b!5593022)))

(assert (=> bs!1293309 (= lambda!300294 lambda!300241)))

(declare-fun bs!1293310 () Bool)

(assert (= bs!1293310 (and b!5593653 d!1767886)))

(assert (=> bs!1293310 (not (= lambda!300294 lambda!300272))))

(assert (=> bs!1293309 (not (= lambda!300294 lambda!300240))))

(assert (=> b!5593653 true))

(assert (=> b!5593653 true))

(declare-fun b!5593650 () Bool)

(declare-fun c!980400 () Bool)

(assert (=> b!5593650 (= c!980400 ((_ is Union!15581) r!7292))))

(declare-fun e!3450761 () Bool)

(declare-fun e!3450756 () Bool)

(assert (=> b!5593650 (= e!3450761 e!3450756)))

(declare-fun b!5593651 () Bool)

(declare-fun c!980401 () Bool)

(assert (=> b!5593651 (= c!980401 ((_ is ElementMatch!15581) r!7292))))

(declare-fun e!3450759 () Bool)

(assert (=> b!5593651 (= e!3450759 e!3450761)))

(declare-fun b!5593652 () Bool)

(assert (=> b!5593652 (= e!3450761 (= s!2326 (Cons!62920 (c!980214 r!7292) Nil!62920)))))

(declare-fun d!1767968 () Bool)

(declare-fun c!980399 () Bool)

(assert (=> d!1767968 (= c!980399 ((_ is EmptyExpr!15581) r!7292))))

(declare-fun e!3450758 () Bool)

(assert (=> d!1767968 (= (matchRSpec!2684 r!7292 s!2326) e!3450758)))

(declare-fun e!3450757 () Bool)

(declare-fun call!419199 () Bool)

(assert (=> b!5593653 (= e!3450757 call!419199)))

(declare-fun bm!419194 () Bool)

(declare-fun call!419200 () Bool)

(assert (=> bm!419194 (= call!419200 (isEmpty!34741 s!2326))))

(declare-fun b!5593654 () Bool)

(assert (=> b!5593654 (= e!3450758 e!3450759)))

(declare-fun res!2372999 () Bool)

(assert (=> b!5593654 (= res!2372999 (not ((_ is EmptyLang!15581) r!7292)))))

(assert (=> b!5593654 (=> (not res!2372999) (not e!3450759))))

(declare-fun b!5593655 () Bool)

(declare-fun e!3450755 () Bool)

(assert (=> b!5593655 (= e!3450755 (matchRSpec!2684 (regTwo!31675 r!7292) s!2326))))

(declare-fun b!5593656 () Bool)

(assert (=> b!5593656 (= e!3450758 call!419200)))

(declare-fun bm!419195 () Bool)

(declare-fun c!980398 () Bool)

(assert (=> bm!419195 (= call!419199 (Exists!2681 (ite c!980398 lambda!300293 lambda!300294)))))

(declare-fun b!5593657 () Bool)

(declare-fun res!2373001 () Bool)

(declare-fun e!3450760 () Bool)

(assert (=> b!5593657 (=> res!2373001 e!3450760)))

(assert (=> b!5593657 (= res!2373001 call!419200)))

(assert (=> b!5593657 (= e!3450757 e!3450760)))

(declare-fun b!5593658 () Bool)

(assert (=> b!5593658 (= e!3450756 e!3450757)))

(assert (=> b!5593658 (= c!980398 ((_ is Star!15581) r!7292))))

(assert (=> b!5593659 (= e!3450760 call!419199)))

(declare-fun b!5593660 () Bool)

(assert (=> b!5593660 (= e!3450756 e!3450755)))

(declare-fun res!2373000 () Bool)

(assert (=> b!5593660 (= res!2373000 (matchRSpec!2684 (regOne!31675 r!7292) s!2326))))

(assert (=> b!5593660 (=> res!2373000 e!3450755)))

(assert (= (and d!1767968 c!980399) b!5593656))

(assert (= (and d!1767968 (not c!980399)) b!5593654))

(assert (= (and b!5593654 res!2372999) b!5593651))

(assert (= (and b!5593651 c!980401) b!5593652))

(assert (= (and b!5593651 (not c!980401)) b!5593650))

(assert (= (and b!5593650 c!980400) b!5593660))

(assert (= (and b!5593650 (not c!980400)) b!5593658))

(assert (= (and b!5593660 (not res!2373000)) b!5593655))

(assert (= (and b!5593658 c!980398) b!5593657))

(assert (= (and b!5593658 (not c!980398)) b!5593653))

(assert (= (and b!5593657 (not res!2373001)) b!5593659))

(assert (= (or b!5593659 b!5593653) bm!419195))

(assert (= (or b!5593656 b!5593657) bm!419194))

(declare-fun m!6573240 () Bool)

(assert (=> bm!419194 m!6573240))

(declare-fun m!6573242 () Bool)

(assert (=> b!5593655 m!6573242))

(declare-fun m!6573244 () Bool)

(assert (=> bm!419195 m!6573244))

(declare-fun m!6573246 () Bool)

(assert (=> b!5593660 m!6573246))

(assert (=> b!5593014 d!1767968))

(declare-fun d!1767970 () Bool)

(declare-fun e!3450777 () Bool)

(assert (=> d!1767970 e!3450777))

(declare-fun c!980410 () Bool)

(assert (=> d!1767970 (= c!980410 ((_ is EmptyExpr!15581) r!7292))))

(declare-fun lt!2255953 () Bool)

(declare-fun e!3450781 () Bool)

(assert (=> d!1767970 (= lt!2255953 e!3450781)))

(declare-fun c!980409 () Bool)

(assert (=> d!1767970 (= c!980409 (isEmpty!34741 s!2326))))

(assert (=> d!1767970 (validRegex!7317 r!7292)))

(assert (=> d!1767970 (= (matchR!7766 r!7292 s!2326) lt!2255953)))

(declare-fun b!5593689 () Bool)

(declare-fun derivativeStep!4429 (Regex!15581 C!31432) Regex!15581)

(assert (=> b!5593689 (= e!3450781 (matchR!7766 (derivativeStep!4429 r!7292 (head!11931 s!2326)) (tail!11026 s!2326)))))

(declare-fun b!5593690 () Bool)

(declare-fun e!3450776 () Bool)

(assert (=> b!5593690 (= e!3450776 (not (= (head!11931 s!2326) (c!980214 r!7292))))))

(declare-fun b!5593691 () Bool)

(declare-fun res!2373018 () Bool)

(declare-fun e!3450778 () Bool)

(assert (=> b!5593691 (=> res!2373018 e!3450778)))

(declare-fun e!3450780 () Bool)

(assert (=> b!5593691 (= res!2373018 e!3450780)))

(declare-fun res!2373021 () Bool)

(assert (=> b!5593691 (=> (not res!2373021) (not e!3450780))))

(assert (=> b!5593691 (= res!2373021 lt!2255953)))

(declare-fun b!5593692 () Bool)

(declare-fun res!2373020 () Bool)

(assert (=> b!5593692 (=> res!2373020 e!3450776)))

(assert (=> b!5593692 (= res!2373020 (not (isEmpty!34741 (tail!11026 s!2326))))))

(declare-fun bm!419198 () Bool)

(declare-fun call!419203 () Bool)

(assert (=> bm!419198 (= call!419203 (isEmpty!34741 s!2326))))

(declare-fun b!5593693 () Bool)

(declare-fun e!3450779 () Bool)

(assert (=> b!5593693 (= e!3450779 (not lt!2255953))))

(declare-fun b!5593694 () Bool)

(declare-fun e!3450782 () Bool)

(assert (=> b!5593694 (= e!3450782 e!3450776)))

(declare-fun res!2373019 () Bool)

(assert (=> b!5593694 (=> res!2373019 e!3450776)))

(assert (=> b!5593694 (= res!2373019 call!419203)))

(declare-fun b!5593695 () Bool)

(declare-fun res!2373025 () Bool)

(assert (=> b!5593695 (=> res!2373025 e!3450778)))

(assert (=> b!5593695 (= res!2373025 (not ((_ is ElementMatch!15581) r!7292)))))

(assert (=> b!5593695 (= e!3450779 e!3450778)))

(declare-fun b!5593696 () Bool)

(assert (=> b!5593696 (= e!3450777 (= lt!2255953 call!419203))))

(declare-fun b!5593697 () Bool)

(assert (=> b!5593697 (= e!3450780 (= (head!11931 s!2326) (c!980214 r!7292)))))

(declare-fun b!5593698 () Bool)

(declare-fun res!2373023 () Bool)

(assert (=> b!5593698 (=> (not res!2373023) (not e!3450780))))

(assert (=> b!5593698 (= res!2373023 (not call!419203))))

(declare-fun b!5593699 () Bool)

(assert (=> b!5593699 (= e!3450781 (nullable!5613 r!7292))))

(declare-fun b!5593700 () Bool)

(declare-fun res!2373024 () Bool)

(assert (=> b!5593700 (=> (not res!2373024) (not e!3450780))))

(assert (=> b!5593700 (= res!2373024 (isEmpty!34741 (tail!11026 s!2326)))))

(declare-fun b!5593701 () Bool)

(assert (=> b!5593701 (= e!3450777 e!3450779)))

(declare-fun c!980408 () Bool)

(assert (=> b!5593701 (= c!980408 ((_ is EmptyLang!15581) r!7292))))

(declare-fun b!5593702 () Bool)

(assert (=> b!5593702 (= e!3450778 e!3450782)))

(declare-fun res!2373022 () Bool)

(assert (=> b!5593702 (=> (not res!2373022) (not e!3450782))))

(assert (=> b!5593702 (= res!2373022 (not lt!2255953))))

(assert (= (and d!1767970 c!980409) b!5593699))

(assert (= (and d!1767970 (not c!980409)) b!5593689))

(assert (= (and d!1767970 c!980410) b!5593696))

(assert (= (and d!1767970 (not c!980410)) b!5593701))

(assert (= (and b!5593701 c!980408) b!5593693))

(assert (= (and b!5593701 (not c!980408)) b!5593695))

(assert (= (and b!5593695 (not res!2373025)) b!5593691))

(assert (= (and b!5593691 res!2373021) b!5593698))

(assert (= (and b!5593698 res!2373023) b!5593700))

(assert (= (and b!5593700 res!2373024) b!5593697))

(assert (= (and b!5593691 (not res!2373018)) b!5593702))

(assert (= (and b!5593702 res!2373022) b!5593694))

(assert (= (and b!5593694 (not res!2373019)) b!5593692))

(assert (= (and b!5593692 (not res!2373020)) b!5593690))

(assert (= (or b!5593696 b!5593694 b!5593698) bm!419198))

(declare-fun m!6573248 () Bool)

(assert (=> b!5593699 m!6573248))

(declare-fun m!6573250 () Bool)

(assert (=> b!5593697 m!6573250))

(assert (=> b!5593690 m!6573250))

(assert (=> d!1767970 m!6573240))

(assert (=> d!1767970 m!6572758))

(declare-fun m!6573252 () Bool)

(assert (=> b!5593692 m!6573252))

(assert (=> b!5593692 m!6573252))

(declare-fun m!6573254 () Bool)

(assert (=> b!5593692 m!6573254))

(assert (=> bm!419198 m!6573240))

(assert (=> b!5593700 m!6573252))

(assert (=> b!5593700 m!6573252))

(assert (=> b!5593700 m!6573254))

(assert (=> b!5593689 m!6573250))

(assert (=> b!5593689 m!6573250))

(declare-fun m!6573256 () Bool)

(assert (=> b!5593689 m!6573256))

(assert (=> b!5593689 m!6573252))

(assert (=> b!5593689 m!6573256))

(assert (=> b!5593689 m!6573252))

(declare-fun m!6573258 () Bool)

(assert (=> b!5593689 m!6573258))

(assert (=> b!5593014 d!1767970))

(declare-fun d!1767972 () Bool)

(assert (=> d!1767972 (= (matchR!7766 r!7292 s!2326) (matchRSpec!2684 r!7292 s!2326))))

(declare-fun lt!2255956 () Unit!155740)

(declare-fun choose!42424 (Regex!15581 List!63044) Unit!155740)

(assert (=> d!1767972 (= lt!2255956 (choose!42424 r!7292 s!2326))))

(assert (=> d!1767972 (validRegex!7317 r!7292)))

(assert (=> d!1767972 (= (mainMatchTheorem!2684 r!7292 s!2326) lt!2255956)))

(declare-fun bs!1293311 () Bool)

(assert (= bs!1293311 d!1767972))

(assert (=> bs!1293311 m!6572720))

(assert (=> bs!1293311 m!6572718))

(declare-fun m!6573260 () Bool)

(assert (=> bs!1293311 m!6573260))

(assert (=> bs!1293311 m!6572758))

(assert (=> b!5593014 d!1767972))

(declare-fun d!1767974 () Bool)

(assert (=> d!1767974 (= (isEmpty!34738 (t!376322 (exprs!5465 (h!69367 zl!343)))) ((_ is Nil!62918) (t!376322 (exprs!5465 (h!69367 zl!343)))))))

(assert (=> b!5593037 d!1767974))

(declare-fun d!1767976 () Bool)

(declare-fun e!3450785 () Bool)

(assert (=> d!1767976 e!3450785))

(declare-fun res!2373028 () Bool)

(assert (=> d!1767976 (=> (not res!2373028) (not e!3450785))))

(declare-fun lt!2255959 () List!63043)

(declare-fun noDuplicate!1557 (List!63043) Bool)

(assert (=> d!1767976 (= res!2373028 (noDuplicate!1557 lt!2255959))))

(declare-fun choose!42425 ((InoxSet Context!9930)) List!63043)

(assert (=> d!1767976 (= lt!2255959 (choose!42425 z!1189))))

(assert (=> d!1767976 (= (toList!9365 z!1189) lt!2255959)))

(declare-fun b!5593705 () Bool)

(declare-fun content!11356 (List!63043) (InoxSet Context!9930))

(assert (=> b!5593705 (= e!3450785 (= (content!11356 lt!2255959) z!1189))))

(assert (= (and d!1767976 res!2373028) b!5593705))

(declare-fun m!6573262 () Bool)

(assert (=> d!1767976 m!6573262))

(declare-fun m!6573264 () Bool)

(assert (=> d!1767976 m!6573264))

(declare-fun m!6573266 () Bool)

(assert (=> b!5593705 m!6573266))

(assert (=> b!5593026 d!1767976))

(declare-fun d!1767978 () Bool)

(declare-fun c!980411 () Bool)

(assert (=> d!1767978 (= c!980411 (isEmpty!34741 (t!376324 s!2326)))))

(declare-fun e!3450786 () Bool)

(assert (=> d!1767978 (= (matchZipper!1719 lt!2255866 (t!376324 s!2326)) e!3450786)))

(declare-fun b!5593706 () Bool)

(assert (=> b!5593706 (= e!3450786 (nullableZipper!1576 lt!2255866))))

(declare-fun b!5593707 () Bool)

(assert (=> b!5593707 (= e!3450786 (matchZipper!1719 (derivationStepZipper!1680 lt!2255866 (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))))))

(assert (= (and d!1767978 c!980411) b!5593706))

(assert (= (and d!1767978 (not c!980411)) b!5593707))

(assert (=> d!1767978 m!6573000))

(declare-fun m!6573268 () Bool)

(assert (=> b!5593706 m!6573268))

(assert (=> b!5593707 m!6573004))

(assert (=> b!5593707 m!6573004))

(declare-fun m!6573270 () Bool)

(assert (=> b!5593707 m!6573270))

(assert (=> b!5593707 m!6573008))

(assert (=> b!5593707 m!6573270))

(assert (=> b!5593707 m!6573008))

(declare-fun m!6573272 () Bool)

(assert (=> b!5593707 m!6573272))

(assert (=> b!5593039 d!1767978))

(declare-fun e!3450787 () Bool)

(declare-fun d!1767980 () Bool)

(assert (=> d!1767980 (= (matchZipper!1719 ((_ map or) lt!2255857 lt!2255866) (t!376324 s!2326)) e!3450787)))

(declare-fun res!2373029 () Bool)

(assert (=> d!1767980 (=> res!2373029 e!3450787)))

(assert (=> d!1767980 (= res!2373029 (matchZipper!1719 lt!2255857 (t!376324 s!2326)))))

(declare-fun lt!2255960 () Unit!155740)

(assert (=> d!1767980 (= lt!2255960 (choose!42423 lt!2255857 lt!2255866 (t!376324 s!2326)))))

(assert (=> d!1767980 (= (lemmaZipperConcatMatchesSameAsBothZippers!606 lt!2255857 lt!2255866 (t!376324 s!2326)) lt!2255960)))

(declare-fun b!5593708 () Bool)

(assert (=> b!5593708 (= e!3450787 (matchZipper!1719 lt!2255866 (t!376324 s!2326)))))

(assert (= (and d!1767980 (not res!2373029)) b!5593708))

(assert (=> d!1767980 m!6572752))

(assert (=> d!1767980 m!6572694))

(declare-fun m!6573274 () Bool)

(assert (=> d!1767980 m!6573274))

(assert (=> b!5593708 m!6572704))

(assert (=> b!5593028 d!1767980))

(assert (=> b!5593028 d!1767940))

(declare-fun d!1767982 () Bool)

(declare-fun c!980412 () Bool)

(assert (=> d!1767982 (= c!980412 (isEmpty!34741 (t!376324 s!2326)))))

(declare-fun e!3450788 () Bool)

(assert (=> d!1767982 (= (matchZipper!1719 ((_ map or) lt!2255857 lt!2255866) (t!376324 s!2326)) e!3450788)))

(declare-fun b!5593709 () Bool)

(assert (=> b!5593709 (= e!3450788 (nullableZipper!1576 ((_ map or) lt!2255857 lt!2255866)))))

(declare-fun b!5593710 () Bool)

(assert (=> b!5593710 (= e!3450788 (matchZipper!1719 (derivationStepZipper!1680 ((_ map or) lt!2255857 lt!2255866) (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))))))

(assert (= (and d!1767982 c!980412) b!5593709))

(assert (= (and d!1767982 (not c!980412)) b!5593710))

(assert (=> d!1767982 m!6573000))

(declare-fun m!6573276 () Bool)

(assert (=> b!5593709 m!6573276))

(assert (=> b!5593710 m!6573004))

(assert (=> b!5593710 m!6573004))

(declare-fun m!6573278 () Bool)

(assert (=> b!5593710 m!6573278))

(assert (=> b!5593710 m!6573008))

(assert (=> b!5593710 m!6573278))

(assert (=> b!5593710 m!6573008))

(declare-fun m!6573280 () Bool)

(assert (=> b!5593710 m!6573280))

(assert (=> b!5593028 d!1767982))

(assert (=> b!5593017 d!1767978))

(assert (=> b!5593038 d!1767978))

(declare-fun b!5593729 () Bool)

(declare-fun e!3450807 () Bool)

(declare-fun e!3450805 () Bool)

(assert (=> b!5593729 (= e!3450807 e!3450805)))

(declare-fun res!2373044 () Bool)

(assert (=> b!5593729 (= res!2373044 (not (nullable!5613 (reg!15910 r!7292))))))

(assert (=> b!5593729 (=> (not res!2373044) (not e!3450805))))

(declare-fun b!5593730 () Bool)

(declare-fun call!419212 () Bool)

(assert (=> b!5593730 (= e!3450805 call!419212)))

(declare-fun b!5593731 () Bool)

(declare-fun e!3450808 () Bool)

(assert (=> b!5593731 (= e!3450808 e!3450807)))

(declare-fun c!980418 () Bool)

(assert (=> b!5593731 (= c!980418 ((_ is Star!15581) r!7292))))

(declare-fun bm!419205 () Bool)

(declare-fun call!419210 () Bool)

(assert (=> bm!419205 (= call!419210 call!419212)))

(declare-fun d!1767984 () Bool)

(declare-fun res!2373041 () Bool)

(assert (=> d!1767984 (=> res!2373041 e!3450808)))

(assert (=> d!1767984 (= res!2373041 ((_ is ElementMatch!15581) r!7292))))

(assert (=> d!1767984 (= (validRegex!7317 r!7292) e!3450808)))

(declare-fun bm!419206 () Bool)

(declare-fun call!419211 () Bool)

(declare-fun c!980417 () Bool)

(assert (=> bm!419206 (= call!419211 (validRegex!7317 (ite c!980417 (regOne!31675 r!7292) (regOne!31674 r!7292))))))

(declare-fun bm!419207 () Bool)

(assert (=> bm!419207 (= call!419212 (validRegex!7317 (ite c!980418 (reg!15910 r!7292) (ite c!980417 (regTwo!31675 r!7292) (regTwo!31674 r!7292)))))))

(declare-fun b!5593732 () Bool)

(declare-fun res!2373040 () Bool)

(declare-fun e!3450809 () Bool)

(assert (=> b!5593732 (=> (not res!2373040) (not e!3450809))))

(assert (=> b!5593732 (= res!2373040 call!419211)))

(declare-fun e!3450804 () Bool)

(assert (=> b!5593732 (= e!3450804 e!3450809)))

(declare-fun b!5593733 () Bool)

(declare-fun e!3450803 () Bool)

(declare-fun e!3450806 () Bool)

(assert (=> b!5593733 (= e!3450803 e!3450806)))

(declare-fun res!2373042 () Bool)

(assert (=> b!5593733 (=> (not res!2373042) (not e!3450806))))

(assert (=> b!5593733 (= res!2373042 call!419211)))

(declare-fun b!5593734 () Bool)

(declare-fun res!2373043 () Bool)

(assert (=> b!5593734 (=> res!2373043 e!3450803)))

(assert (=> b!5593734 (= res!2373043 (not ((_ is Concat!24426) r!7292)))))

(assert (=> b!5593734 (= e!3450804 e!3450803)))

(declare-fun b!5593735 () Bool)

(assert (=> b!5593735 (= e!3450806 call!419210)))

(declare-fun b!5593736 () Bool)

(assert (=> b!5593736 (= e!3450809 call!419210)))

(declare-fun b!5593737 () Bool)

(assert (=> b!5593737 (= e!3450807 e!3450804)))

(assert (=> b!5593737 (= c!980417 ((_ is Union!15581) r!7292))))

(assert (= (and d!1767984 (not res!2373041)) b!5593731))

(assert (= (and b!5593731 c!980418) b!5593729))

(assert (= (and b!5593731 (not c!980418)) b!5593737))

(assert (= (and b!5593729 res!2373044) b!5593730))

(assert (= (and b!5593737 c!980417) b!5593732))

(assert (= (and b!5593737 (not c!980417)) b!5593734))

(assert (= (and b!5593732 res!2373040) b!5593736))

(assert (= (and b!5593734 (not res!2373043)) b!5593733))

(assert (= (and b!5593733 res!2373042) b!5593735))

(assert (= (or b!5593736 b!5593735) bm!419205))

(assert (= (or b!5593732 b!5593733) bm!419206))

(assert (= (or b!5593730 bm!419205) bm!419207))

(declare-fun m!6573282 () Bool)

(assert (=> b!5593729 m!6573282))

(declare-fun m!6573284 () Bool)

(assert (=> bm!419206 m!6573284))

(declare-fun m!6573286 () Bool)

(assert (=> bm!419207 m!6573286))

(assert (=> start!580892 d!1767984))

(declare-fun d!1767986 () Bool)

(assert (=> d!1767986 (= (isEmpty!34739 (t!376323 zl!343)) ((_ is Nil!62919) (t!376323 zl!343)))))

(assert (=> b!5593040 d!1767986))

(declare-fun d!1767988 () Bool)

(declare-fun lt!2255963 () Regex!15581)

(assert (=> d!1767988 (validRegex!7317 lt!2255963)))

(assert (=> d!1767988 (= lt!2255963 (generalisedUnion!1444 (unfocusZipperList!1009 zl!343)))))

(assert (=> d!1767988 (= (unfocusZipper!1323 zl!343) lt!2255963)))

(declare-fun bs!1293312 () Bool)

(assert (= bs!1293312 d!1767988))

(declare-fun m!6573288 () Bool)

(assert (=> bs!1293312 m!6573288))

(assert (=> bs!1293312 m!6572762))

(assert (=> bs!1293312 m!6572762))

(assert (=> bs!1293312 m!6572764))

(assert (=> b!5593008 d!1767988))

(declare-fun bs!1293313 () Bool)

(declare-fun d!1767990 () Bool)

(assert (= bs!1293313 (and d!1767990 d!1767852)))

(declare-fun lambda!300297 () Int)

(assert (=> bs!1293313 (= lambda!300297 lambda!300254)))

(declare-fun bs!1293314 () Bool)

(assert (= bs!1293314 (and d!1767990 d!1767858)))

(assert (=> bs!1293314 (= lambda!300297 lambda!300257)))

(declare-fun bs!1293315 () Bool)

(assert (= bs!1293315 (and d!1767990 d!1767966)))

(assert (=> bs!1293315 (= lambda!300297 lambda!300288)))

(declare-fun b!5593758 () Bool)

(declare-fun e!3450823 () Bool)

(declare-fun lt!2255966 () Regex!15581)

(declare-fun isConcat!658 (Regex!15581) Bool)

(assert (=> b!5593758 (= e!3450823 (isConcat!658 lt!2255966))))

(declare-fun b!5593759 () Bool)

(assert (=> b!5593759 (= e!3450823 (= lt!2255966 (head!11930 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun b!5593760 () Bool)

(declare-fun e!3450822 () Regex!15581)

(declare-fun e!3450826 () Regex!15581)

(assert (=> b!5593760 (= e!3450822 e!3450826)))

(declare-fun c!980430 () Bool)

(assert (=> b!5593760 (= c!980430 ((_ is Cons!62918) (exprs!5465 (h!69367 zl!343))))))

(declare-fun b!5593761 () Bool)

(assert (=> b!5593761 (= e!3450822 (h!69366 (exprs!5465 (h!69367 zl!343))))))

(declare-fun e!3450825 () Bool)

(assert (=> d!1767990 e!3450825))

(declare-fun res!2373050 () Bool)

(assert (=> d!1767990 (=> (not res!2373050) (not e!3450825))))

(assert (=> d!1767990 (= res!2373050 (validRegex!7317 lt!2255966))))

(assert (=> d!1767990 (= lt!2255966 e!3450822)))

(declare-fun c!980428 () Bool)

(declare-fun e!3450824 () Bool)

(assert (=> d!1767990 (= c!980428 e!3450824)))

(declare-fun res!2373049 () Bool)

(assert (=> d!1767990 (=> (not res!2373049) (not e!3450824))))

(assert (=> d!1767990 (= res!2373049 ((_ is Cons!62918) (exprs!5465 (h!69367 zl!343))))))

(assert (=> d!1767990 (forall!14746 (exprs!5465 (h!69367 zl!343)) lambda!300297)))

(assert (=> d!1767990 (= (generalisedConcat!1196 (exprs!5465 (h!69367 zl!343))) lt!2255966)))

(declare-fun b!5593762 () Bool)

(declare-fun e!3450827 () Bool)

(assert (=> b!5593762 (= e!3450825 e!3450827)))

(declare-fun c!980429 () Bool)

(assert (=> b!5593762 (= c!980429 (isEmpty!34738 (exprs!5465 (h!69367 zl!343))))))

(declare-fun b!5593763 () Bool)

(assert (=> b!5593763 (= e!3450827 e!3450823)))

(declare-fun c!980427 () Bool)

(assert (=> b!5593763 (= c!980427 (isEmpty!34738 (tail!11025 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun b!5593764 () Bool)

(assert (=> b!5593764 (= e!3450824 (isEmpty!34738 (t!376322 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun b!5593765 () Bool)

(declare-fun isEmptyExpr!1135 (Regex!15581) Bool)

(assert (=> b!5593765 (= e!3450827 (isEmptyExpr!1135 lt!2255966))))

(declare-fun b!5593766 () Bool)

(assert (=> b!5593766 (= e!3450826 EmptyExpr!15581)))

(declare-fun b!5593767 () Bool)

(assert (=> b!5593767 (= e!3450826 (Concat!24426 (h!69366 (exprs!5465 (h!69367 zl!343))) (generalisedConcat!1196 (t!376322 (exprs!5465 (h!69367 zl!343))))))))

(assert (= (and d!1767990 res!2373049) b!5593764))

(assert (= (and d!1767990 c!980428) b!5593761))

(assert (= (and d!1767990 (not c!980428)) b!5593760))

(assert (= (and b!5593760 c!980430) b!5593767))

(assert (= (and b!5593760 (not c!980430)) b!5593766))

(assert (= (and d!1767990 res!2373050) b!5593762))

(assert (= (and b!5593762 c!980429) b!5593765))

(assert (= (and b!5593762 (not c!980429)) b!5593763))

(assert (= (and b!5593763 c!980427) b!5593759))

(assert (= (and b!5593763 (not c!980427)) b!5593758))

(declare-fun m!6573290 () Bool)

(assert (=> b!5593765 m!6573290))

(declare-fun m!6573292 () Bool)

(assert (=> d!1767990 m!6573292))

(declare-fun m!6573294 () Bool)

(assert (=> d!1767990 m!6573294))

(declare-fun m!6573296 () Bool)

(assert (=> b!5593767 m!6573296))

(declare-fun m!6573298 () Bool)

(assert (=> b!5593758 m!6573298))

(declare-fun m!6573300 () Bool)

(assert (=> b!5593759 m!6573300))

(declare-fun m!6573302 () Bool)

(assert (=> b!5593762 m!6573302))

(declare-fun m!6573304 () Bool)

(assert (=> b!5593763 m!6573304))

(assert (=> b!5593763 m!6573304))

(declare-fun m!6573306 () Bool)

(assert (=> b!5593763 m!6573306))

(assert (=> b!5593764 m!6572724))

(assert (=> b!5593029 d!1767990))

(declare-fun e!3450828 () Bool)

(declare-fun d!1767992 () Bool)

(assert (=> d!1767992 (= (matchZipper!1719 ((_ map or) lt!2255868 lt!2255866) (t!376324 s!2326)) e!3450828)))

(declare-fun res!2373051 () Bool)

(assert (=> d!1767992 (=> res!2373051 e!3450828)))

(assert (=> d!1767992 (= res!2373051 (matchZipper!1719 lt!2255868 (t!376324 s!2326)))))

(declare-fun lt!2255967 () Unit!155740)

(assert (=> d!1767992 (= lt!2255967 (choose!42423 lt!2255868 lt!2255866 (t!376324 s!2326)))))

(assert (=> d!1767992 (= (lemmaZipperConcatMatchesSameAsBothZippers!606 lt!2255868 lt!2255866 (t!376324 s!2326)) lt!2255967)))

(declare-fun b!5593768 () Bool)

(assert (=> b!5593768 (= e!3450828 (matchZipper!1719 lt!2255866 (t!376324 s!2326)))))

(assert (= (and d!1767992 (not res!2373051)) b!5593768))

(assert (=> d!1767992 m!6572690))

(assert (=> d!1767992 m!6572698))

(declare-fun m!6573308 () Bool)

(assert (=> d!1767992 m!6573308))

(assert (=> b!5593768 m!6572704))

(assert (=> b!5593018 d!1767992))

(declare-fun d!1767994 () Bool)

(declare-fun c!980431 () Bool)

(assert (=> d!1767994 (= c!980431 (isEmpty!34741 (t!376324 s!2326)))))

(declare-fun e!3450829 () Bool)

(assert (=> d!1767994 (= (matchZipper!1719 ((_ map or) lt!2255868 lt!2255866) (t!376324 s!2326)) e!3450829)))

(declare-fun b!5593769 () Bool)

(assert (=> b!5593769 (= e!3450829 (nullableZipper!1576 ((_ map or) lt!2255868 lt!2255866)))))

(declare-fun b!5593770 () Bool)

(assert (=> b!5593770 (= e!3450829 (matchZipper!1719 (derivationStepZipper!1680 ((_ map or) lt!2255868 lt!2255866) (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))))))

(assert (= (and d!1767994 c!980431) b!5593769))

(assert (= (and d!1767994 (not c!980431)) b!5593770))

(assert (=> d!1767994 m!6573000))

(declare-fun m!6573310 () Bool)

(assert (=> b!5593769 m!6573310))

(assert (=> b!5593770 m!6573004))

(assert (=> b!5593770 m!6573004))

(declare-fun m!6573312 () Bool)

(assert (=> b!5593770 m!6573312))

(assert (=> b!5593770 m!6573008))

(assert (=> b!5593770 m!6573312))

(assert (=> b!5593770 m!6573008))

(declare-fun m!6573314 () Bool)

(assert (=> b!5593770 m!6573314))

(assert (=> b!5593018 d!1767994))

(declare-fun d!1767996 () Bool)

(declare-fun e!3450830 () Bool)

(assert (=> d!1767996 (= (matchZipper!1719 ((_ map or) lt!2255856 lt!2255866) (t!376324 s!2326)) e!3450830)))

(declare-fun res!2373052 () Bool)

(assert (=> d!1767996 (=> res!2373052 e!3450830)))

(assert (=> d!1767996 (= res!2373052 (matchZipper!1719 lt!2255856 (t!376324 s!2326)))))

(declare-fun lt!2255968 () Unit!155740)

(assert (=> d!1767996 (= lt!2255968 (choose!42423 lt!2255856 lt!2255866 (t!376324 s!2326)))))

(assert (=> d!1767996 (= (lemmaZipperConcatMatchesSameAsBothZippers!606 lt!2255856 lt!2255866 (t!376324 s!2326)) lt!2255968)))

(declare-fun b!5593771 () Bool)

(assert (=> b!5593771 (= e!3450830 (matchZipper!1719 lt!2255866 (t!376324 s!2326)))))

(assert (= (and d!1767996 (not res!2373052)) b!5593771))

(assert (=> d!1767996 m!6572756))

(assert (=> d!1767996 m!6572726))

(declare-fun m!6573316 () Bool)

(assert (=> d!1767996 m!6573316))

(assert (=> b!5593771 m!6572704))

(assert (=> b!5593031 d!1767996))

(assert (=> b!5593031 d!1767870))

(declare-fun d!1767998 () Bool)

(declare-fun c!980432 () Bool)

(assert (=> d!1767998 (= c!980432 (isEmpty!34741 (t!376324 s!2326)))))

(declare-fun e!3450831 () Bool)

(assert (=> d!1767998 (= (matchZipper!1719 ((_ map or) lt!2255856 lt!2255866) (t!376324 s!2326)) e!3450831)))

(declare-fun b!5593772 () Bool)

(assert (=> b!5593772 (= e!3450831 (nullableZipper!1576 ((_ map or) lt!2255856 lt!2255866)))))

(declare-fun b!5593773 () Bool)

(assert (=> b!5593773 (= e!3450831 (matchZipper!1719 (derivationStepZipper!1680 ((_ map or) lt!2255856 lt!2255866) (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))))))

(assert (= (and d!1767998 c!980432) b!5593772))

(assert (= (and d!1767998 (not c!980432)) b!5593773))

(assert (=> d!1767998 m!6573000))

(declare-fun m!6573318 () Bool)

(assert (=> b!5593772 m!6573318))

(assert (=> b!5593773 m!6573004))

(assert (=> b!5593773 m!6573004))

(declare-fun m!6573320 () Bool)

(assert (=> b!5593773 m!6573320))

(assert (=> b!5593773 m!6573008))

(assert (=> b!5593773 m!6573320))

(assert (=> b!5593773 m!6573008))

(declare-fun m!6573322 () Bool)

(assert (=> b!5593773 m!6573322))

(assert (=> b!5593031 d!1767998))

(declare-fun bs!1293316 () Bool)

(declare-fun d!1768000 () Bool)

(assert (= bs!1293316 (and d!1768000 d!1767852)))

(declare-fun lambda!300298 () Int)

(assert (=> bs!1293316 (= lambda!300298 lambda!300254)))

(declare-fun bs!1293317 () Bool)

(assert (= bs!1293317 (and d!1768000 d!1767858)))

(assert (=> bs!1293317 (= lambda!300298 lambda!300257)))

(declare-fun bs!1293318 () Bool)

(assert (= bs!1293318 (and d!1768000 d!1767966)))

(assert (=> bs!1293318 (= lambda!300298 lambda!300288)))

(declare-fun bs!1293319 () Bool)

(assert (= bs!1293319 (and d!1768000 d!1767990)))

(assert (=> bs!1293319 (= lambda!300298 lambda!300297)))

(assert (=> d!1768000 (= (inv!82199 setElem!37285) (forall!14746 (exprs!5465 setElem!37285) lambda!300298))))

(declare-fun bs!1293320 () Bool)

(assert (= bs!1293320 d!1768000))

(declare-fun m!6573324 () Bool)

(assert (=> bs!1293320 m!6573324))

(assert (=> setNonEmpty!37285 d!1768000))

(assert (=> b!5593030 d!1767870))

(declare-fun e!3450834 () Bool)

(assert (=> b!5593011 (= tp!1546827 e!3450834)))

(declare-fun b!5593786 () Bool)

(declare-fun tp!1546907 () Bool)

(assert (=> b!5593786 (= e!3450834 tp!1546907)))

(declare-fun b!5593784 () Bool)

(assert (=> b!5593784 (= e!3450834 tp_is_empty!40415)))

(declare-fun b!5593785 () Bool)

(declare-fun tp!1546904 () Bool)

(declare-fun tp!1546905 () Bool)

(assert (=> b!5593785 (= e!3450834 (and tp!1546904 tp!1546905))))

(declare-fun b!5593787 () Bool)

(declare-fun tp!1546908 () Bool)

(declare-fun tp!1546906 () Bool)

(assert (=> b!5593787 (= e!3450834 (and tp!1546908 tp!1546906))))

(assert (= (and b!5593011 ((_ is ElementMatch!15581) (regOne!31674 r!7292))) b!5593784))

(assert (= (and b!5593011 ((_ is Concat!24426) (regOne!31674 r!7292))) b!5593785))

(assert (= (and b!5593011 ((_ is Star!15581) (regOne!31674 r!7292))) b!5593786))

(assert (= (and b!5593011 ((_ is Union!15581) (regOne!31674 r!7292))) b!5593787))

(declare-fun e!3450835 () Bool)

(assert (=> b!5593011 (= tp!1546832 e!3450835)))

(declare-fun b!5593790 () Bool)

(declare-fun tp!1546912 () Bool)

(assert (=> b!5593790 (= e!3450835 tp!1546912)))

(declare-fun b!5593788 () Bool)

(assert (=> b!5593788 (= e!3450835 tp_is_empty!40415)))

(declare-fun b!5593789 () Bool)

(declare-fun tp!1546909 () Bool)

(declare-fun tp!1546910 () Bool)

(assert (=> b!5593789 (= e!3450835 (and tp!1546909 tp!1546910))))

(declare-fun b!5593791 () Bool)

(declare-fun tp!1546913 () Bool)

(declare-fun tp!1546911 () Bool)

(assert (=> b!5593791 (= e!3450835 (and tp!1546913 tp!1546911))))

(assert (= (and b!5593011 ((_ is ElementMatch!15581) (regTwo!31674 r!7292))) b!5593788))

(assert (= (and b!5593011 ((_ is Concat!24426) (regTwo!31674 r!7292))) b!5593789))

(assert (= (and b!5593011 ((_ is Star!15581) (regTwo!31674 r!7292))) b!5593790))

(assert (= (and b!5593011 ((_ is Union!15581) (regTwo!31674 r!7292))) b!5593791))

(declare-fun b!5593796 () Bool)

(declare-fun e!3450838 () Bool)

(declare-fun tp!1546918 () Bool)

(declare-fun tp!1546919 () Bool)

(assert (=> b!5593796 (= e!3450838 (and tp!1546918 tp!1546919))))

(assert (=> b!5593012 (= tp!1546830 e!3450838)))

(assert (= (and b!5593012 ((_ is Cons!62918) (exprs!5465 setElem!37285))) b!5593796))

(declare-fun b!5593801 () Bool)

(declare-fun e!3450841 () Bool)

(declare-fun tp!1546922 () Bool)

(assert (=> b!5593801 (= e!3450841 (and tp_is_empty!40415 tp!1546922))))

(assert (=> b!5593019 (= tp!1546834 e!3450841)))

(assert (= (and b!5593019 ((_ is Cons!62920) (t!376324 s!2326))) b!5593801))

(declare-fun b!5593802 () Bool)

(declare-fun e!3450842 () Bool)

(declare-fun tp!1546923 () Bool)

(declare-fun tp!1546924 () Bool)

(assert (=> b!5593802 (= e!3450842 (and tp!1546923 tp!1546924))))

(assert (=> b!5593013 (= tp!1546829 e!3450842)))

(assert (= (and b!5593013 ((_ is Cons!62918) (exprs!5465 (h!69367 zl!343)))) b!5593802))

(declare-fun e!3450843 () Bool)

(assert (=> b!5593015 (= tp!1546828 e!3450843)))

(declare-fun b!5593805 () Bool)

(declare-fun tp!1546928 () Bool)

(assert (=> b!5593805 (= e!3450843 tp!1546928)))

(declare-fun b!5593803 () Bool)

(assert (=> b!5593803 (= e!3450843 tp_is_empty!40415)))

(declare-fun b!5593804 () Bool)

(declare-fun tp!1546925 () Bool)

(declare-fun tp!1546926 () Bool)

(assert (=> b!5593804 (= e!3450843 (and tp!1546925 tp!1546926))))

(declare-fun b!5593806 () Bool)

(declare-fun tp!1546929 () Bool)

(declare-fun tp!1546927 () Bool)

(assert (=> b!5593806 (= e!3450843 (and tp!1546929 tp!1546927))))

(assert (= (and b!5593015 ((_ is ElementMatch!15581) (regOne!31675 r!7292))) b!5593803))

(assert (= (and b!5593015 ((_ is Concat!24426) (regOne!31675 r!7292))) b!5593804))

(assert (= (and b!5593015 ((_ is Star!15581) (regOne!31675 r!7292))) b!5593805))

(assert (= (and b!5593015 ((_ is Union!15581) (regOne!31675 r!7292))) b!5593806))

(declare-fun e!3450844 () Bool)

(assert (=> b!5593015 (= tp!1546835 e!3450844)))

(declare-fun b!5593809 () Bool)

(declare-fun tp!1546933 () Bool)

(assert (=> b!5593809 (= e!3450844 tp!1546933)))

(declare-fun b!5593807 () Bool)

(assert (=> b!5593807 (= e!3450844 tp_is_empty!40415)))

(declare-fun b!5593808 () Bool)

(declare-fun tp!1546930 () Bool)

(declare-fun tp!1546931 () Bool)

(assert (=> b!5593808 (= e!3450844 (and tp!1546930 tp!1546931))))

(declare-fun b!5593810 () Bool)

(declare-fun tp!1546934 () Bool)

(declare-fun tp!1546932 () Bool)

(assert (=> b!5593810 (= e!3450844 (and tp!1546934 tp!1546932))))

(assert (= (and b!5593015 ((_ is ElementMatch!15581) (regTwo!31675 r!7292))) b!5593807))

(assert (= (and b!5593015 ((_ is Concat!24426) (regTwo!31675 r!7292))) b!5593808))

(assert (= (and b!5593015 ((_ is Star!15581) (regTwo!31675 r!7292))) b!5593809))

(assert (= (and b!5593015 ((_ is Union!15581) (regTwo!31675 r!7292))) b!5593810))

(declare-fun e!3450845 () Bool)

(assert (=> b!5593020 (= tp!1546831 e!3450845)))

(declare-fun b!5593813 () Bool)

(declare-fun tp!1546938 () Bool)

(assert (=> b!5593813 (= e!3450845 tp!1546938)))

(declare-fun b!5593811 () Bool)

(assert (=> b!5593811 (= e!3450845 tp_is_empty!40415)))

(declare-fun b!5593812 () Bool)

(declare-fun tp!1546935 () Bool)

(declare-fun tp!1546936 () Bool)

(assert (=> b!5593812 (= e!3450845 (and tp!1546935 tp!1546936))))

(declare-fun b!5593814 () Bool)

(declare-fun tp!1546939 () Bool)

(declare-fun tp!1546937 () Bool)

(assert (=> b!5593814 (= e!3450845 (and tp!1546939 tp!1546937))))

(assert (= (and b!5593020 ((_ is ElementMatch!15581) (reg!15910 r!7292))) b!5593811))

(assert (= (and b!5593020 ((_ is Concat!24426) (reg!15910 r!7292))) b!5593812))

(assert (= (and b!5593020 ((_ is Star!15581) (reg!15910 r!7292))) b!5593813))

(assert (= (and b!5593020 ((_ is Union!15581) (reg!15910 r!7292))) b!5593814))

(declare-fun condSetEmpty!37291 () Bool)

(assert (=> setNonEmpty!37285 (= condSetEmpty!37291 (= setRest!37285 ((as const (Array Context!9930 Bool)) false)))))

(declare-fun setRes!37291 () Bool)

(assert (=> setNonEmpty!37285 (= tp!1546833 setRes!37291)))

(declare-fun setIsEmpty!37291 () Bool)

(assert (=> setIsEmpty!37291 setRes!37291))

(declare-fun tp!1546945 () Bool)

(declare-fun e!3450848 () Bool)

(declare-fun setNonEmpty!37291 () Bool)

(declare-fun setElem!37291 () Context!9930)

(assert (=> setNonEmpty!37291 (= setRes!37291 (and tp!1546945 (inv!82199 setElem!37291) e!3450848))))

(declare-fun setRest!37291 () (InoxSet Context!9930))

(assert (=> setNonEmpty!37291 (= setRest!37285 ((_ map or) (store ((as const (Array Context!9930 Bool)) false) setElem!37291 true) setRest!37291))))

(declare-fun b!5593819 () Bool)

(declare-fun tp!1546944 () Bool)

(assert (=> b!5593819 (= e!3450848 tp!1546944)))

(assert (= (and setNonEmpty!37285 condSetEmpty!37291) setIsEmpty!37291))

(assert (= (and setNonEmpty!37285 (not condSetEmpty!37291)) setNonEmpty!37291))

(assert (= setNonEmpty!37291 b!5593819))

(declare-fun m!6573326 () Bool)

(assert (=> setNonEmpty!37291 m!6573326))

(declare-fun b!5593827 () Bool)

(declare-fun e!3450854 () Bool)

(declare-fun tp!1546950 () Bool)

(assert (=> b!5593827 (= e!3450854 tp!1546950)))

(declare-fun tp!1546951 () Bool)

(declare-fun e!3450853 () Bool)

(declare-fun b!5593826 () Bool)

(assert (=> b!5593826 (= e!3450853 (and (inv!82199 (h!69367 (t!376323 zl!343))) e!3450854 tp!1546951))))

(assert (=> b!5593025 (= tp!1546826 e!3450853)))

(assert (= b!5593826 b!5593827))

(assert (= (and b!5593025 ((_ is Cons!62919) (t!376323 zl!343))) b!5593826))

(declare-fun m!6573328 () Bool)

(assert (=> b!5593826 m!6573328))

(declare-fun b_lambda!211957 () Bool)

(assert (= b_lambda!211953 (or b!5593035 b_lambda!211957)))

(declare-fun bs!1293321 () Bool)

(declare-fun d!1768002 () Bool)

(assert (= bs!1293321 (and d!1768002 b!5593035)))

(assert (=> bs!1293321 (= (dynLambda!24609 lambda!300242 lt!2255869) (derivationStepZipperUp!849 lt!2255869 (h!69368 s!2326)))))

(assert (=> bs!1293321 m!6572734))

(assert (=> d!1767948 d!1768002))

(declare-fun b_lambda!211959 () Bool)

(assert (= b_lambda!211955 (or b!5593035 b_lambda!211959)))

(declare-fun bs!1293322 () Bool)

(declare-fun d!1768004 () Bool)

(assert (= bs!1293322 (and d!1768004 b!5593035)))

(assert (=> bs!1293322 (= (dynLambda!24609 lambda!300242 lt!2255849) (derivationStepZipperUp!849 lt!2255849 (h!69368 s!2326)))))

(assert (=> bs!1293322 m!6572746))

(assert (=> d!1767964 d!1768004))

(declare-fun b_lambda!211961 () Bool)

(assert (= b_lambda!211951 (or b!5593035 b_lambda!211961)))

(declare-fun bs!1293323 () Bool)

(declare-fun d!1768006 () Bool)

(assert (= bs!1293323 (and d!1768006 b!5593035)))

(assert (=> bs!1293323 (= (dynLambda!24609 lambda!300242 (h!69367 zl!343)) (derivationStepZipperUp!849 (h!69367 zl!343) (h!69368 s!2326)))))

(assert (=> bs!1293323 m!6572774))

(assert (=> d!1767936 d!1768006))

(check-sat (not d!1767976) (not d!1767908) (not b!5593276) (not bm!419189) (not b_lambda!211961) tp_is_empty!40415 (not b!5593660) (not b!5593277) (not d!1767962) (not d!1767858) (not b!5593278) (not b!5593759) (not b!5593772) (not b!5593806) (not b!5593710) (not b!5593590) (not bm!419188) (not b!5593614) (not b!5593697) (not d!1767874) (not d!1767960) (not b!5593791) (not b!5593547) (not b!5593689) (not d!1767944) (not b!5593352) (not b!5593771) (not b!5593599) (not d!1767952) (not b!5593285) (not d!1767890) (not d!1767982) (not b!5593729) (not b!5593609) (not d!1767990) (not b!5593395) (not d!1767942) (not d!1767948) (not b!5593690) (not b!5593773) (not b!5593608) (not d!1767926) (not b_lambda!211957) (not bm!419149) (not b!5593758) (not b!5593601) (not b!5593801) (not b!5593341) (not b!5593810) (not b!5593366) (not d!1767870) (not b!5593402) (not b!5593763) (not d!1767972) (not b!5593827) (not d!1767966) (not bm!419195) (not bm!419207) (not b!5593769) (not b!5593546) (not d!1767980) (not b!5593796) (not b!5593400) (not bm!419206) (not b!5593786) (not bm!419187) (not b!5593594) (not bm!419182) (not b!5593699) (not d!1767964) (not b!5593589) (not b!5593707) (not d!1767950) (not b!5593602) (not bm!419157) (not bm!419147) (not d!1767958) (not b!5593280) (not b!5593398) (not b!5593655) (not b!5593570) (not b!5593809) (not d!1767998) (not b!5593762) (not d!1767970) (not setNonEmpty!37291) (not d!1767946) (not b!5593692) (not b_lambda!211959) (not b!5593790) (not d!1767886) (not bs!1293321) (not b!5593767) (not d!1767884) (not b!5593814) (not b!5593826) (not b!5593764) (not b!5593787) (not b!5593812) (not b!5593819) (not b!5593804) (not b!5593272) (not d!1767978) (not d!1767914) (not b!5593700) (not b!5593399) (not d!1767988) (not b!5593765) (not b!5593805) (not b!5593604) (not b!5593705) (not bm!419155) (not b!5593274) (not b!5593279) (not b!5593785) (not b!5593607) (not b!5593789) (not b!5593367) (not b!5593768) (not bm!419184) (not b!5593706) (not bm!419194) (not bm!419151) (not bm!419198) (not bs!1293322) (not b!5593708) (not b!5593613) (not d!1767882) (not bm!419186) (not bm!419180) (not b!5593770) (not d!1768000) (not b!5593603) (not d!1767996) (not bm!419179) (not b!5593595) (not b!5593808) (not d!1767936) (not b!5593802) (not d!1767994) (not bs!1293323) (not d!1767852) (not d!1767992) (not b!5593401) (not b!5593600) (not b!5593813) (not d!1767940) (not b!5593709) (not bm!419153))
(check-sat)
(get-model)

(declare-fun d!1768280 () Bool)

(assert (=> d!1768280 (= (nullable!5613 (h!69366 (exprs!5465 lt!2255845))) (nullableFct!1722 (h!69366 (exprs!5465 lt!2255845))))))

(declare-fun bs!1293512 () Bool)

(assert (= bs!1293512 d!1768280))

(declare-fun m!6573888 () Bool)

(assert (=> bs!1293512 m!6573888))

(assert (=> b!5593595 d!1768280))

(assert (=> b!5593771 d!1767978))

(assert (=> b!5593768 d!1767978))

(declare-fun d!1768282 () Bool)

(assert (=> d!1768282 (= (isEmpty!34741 (t!376324 s!2326)) ((_ is Nil!62920) (t!376324 s!2326)))))

(assert (=> d!1767978 d!1768282))

(declare-fun bs!1293513 () Bool)

(declare-fun d!1768284 () Bool)

(assert (= bs!1293513 (and d!1768284 d!1768000)))

(declare-fun lambda!300337 () Int)

(assert (=> bs!1293513 (= lambda!300337 lambda!300298)))

(declare-fun bs!1293514 () Bool)

(assert (= bs!1293514 (and d!1768284 d!1767858)))

(assert (=> bs!1293514 (= lambda!300337 lambda!300257)))

(declare-fun bs!1293515 () Bool)

(assert (= bs!1293515 (and d!1768284 d!1767990)))

(assert (=> bs!1293515 (= lambda!300337 lambda!300297)))

(declare-fun bs!1293516 () Bool)

(assert (= bs!1293516 (and d!1768284 d!1767966)))

(assert (=> bs!1293516 (= lambda!300337 lambda!300288)))

(declare-fun bs!1293517 () Bool)

(assert (= bs!1293517 (and d!1768284 d!1767852)))

(assert (=> bs!1293517 (= lambda!300337 lambda!300254)))

(assert (=> d!1768284 (= (inv!82199 setElem!37291) (forall!14746 (exprs!5465 setElem!37291) lambda!300337))))

(declare-fun bs!1293518 () Bool)

(assert (= bs!1293518 d!1768284))

(declare-fun m!6573890 () Bool)

(assert (=> bs!1293518 m!6573890))

(assert (=> setNonEmpty!37291 d!1768284))

(declare-fun d!1768286 () Bool)

(assert (=> d!1768286 (= (nullable!5613 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292)))) (nullableFct!1722 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292)))))))

(declare-fun bs!1293519 () Bool)

(assert (= bs!1293519 d!1768286))

(declare-fun m!6573892 () Bool)

(assert (=> bs!1293519 m!6573892))

(assert (=> b!5593341 d!1768286))

(declare-fun d!1768288 () Bool)

(assert (=> d!1768288 (= (isEmptyLang!1144 lt!2255898) ((_ is EmptyLang!15581) lt!2255898))))

(assert (=> b!5593274 d!1768288))

(declare-fun call!419335 () (InoxSet Context!9930))

(declare-fun e!3451201 () (InoxSet Context!9930))

(declare-fun b!5594437 () Bool)

(assert (=> b!5594437 (= e!3451201 ((_ map or) call!419335 (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))))))))) (h!69368 s!2326))))))

(declare-fun b!5594438 () Bool)

(declare-fun e!3451199 () Bool)

(assert (=> b!5594438 (= e!3451199 (nullable!5613 (h!69366 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))))))))))))

(declare-fun bm!419330 () Bool)

(assert (=> bm!419330 (= call!419335 (derivationStepZipperDown!923 (h!69366 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))))) (Context!9931 (t!376322 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))))))))) (h!69368 s!2326)))))

(declare-fun b!5594440 () Bool)

(declare-fun e!3451200 () (InoxSet Context!9930))

(assert (=> b!5594440 (= e!3451200 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594441 () Bool)

(assert (=> b!5594441 (= e!3451201 e!3451200)))

(declare-fun c!980586 () Bool)

(assert (=> b!5594441 (= c!980586 ((_ is Cons!62918) (exprs!5465 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))))))))

(declare-fun b!5594439 () Bool)

(assert (=> b!5594439 (= e!3451200 call!419335)))

(declare-fun d!1768290 () Bool)

(declare-fun c!980587 () Bool)

(assert (=> d!1768290 (= c!980587 e!3451199)))

(declare-fun res!2373247 () Bool)

(assert (=> d!1768290 (=> (not res!2373247) (not e!3451199))))

(assert (=> d!1768290 (= res!2373247 ((_ is Cons!62918) (exprs!5465 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))))))))

(assert (=> d!1768290 (= (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) (h!69368 s!2326)) e!3451201)))

(assert (= (and d!1768290 res!2373247) b!5594438))

(assert (= (and d!1768290 c!980587) b!5594437))

(assert (= (and d!1768290 (not c!980587)) b!5594441))

(assert (= (and b!5594441 c!980586) b!5594439))

(assert (= (and b!5594441 (not c!980586)) b!5594440))

(assert (= (or b!5594437 b!5594439) bm!419330))

(declare-fun m!6573894 () Bool)

(assert (=> b!5594437 m!6573894))

(declare-fun m!6573896 () Bool)

(assert (=> b!5594438 m!6573896))

(declare-fun m!6573898 () Bool)

(assert (=> bm!419330 m!6573898))

(assert (=> b!5593546 d!1768290))

(assert (=> d!1767998 d!1768282))

(assert (=> d!1767994 d!1768282))

(declare-fun d!1768292 () Bool)

(declare-fun c!980588 () Bool)

(assert (=> d!1768292 (= c!980588 (isEmpty!34741 (tail!11026 (t!376324 s!2326))))))

(declare-fun e!3451202 () Bool)

(assert (=> d!1768292 (= (matchZipper!1719 (derivationStepZipper!1680 lt!2255866 (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))) e!3451202)))

(declare-fun b!5594442 () Bool)

(assert (=> b!5594442 (= e!3451202 (nullableZipper!1576 (derivationStepZipper!1680 lt!2255866 (head!11931 (t!376324 s!2326)))))))

(declare-fun b!5594443 () Bool)

(assert (=> b!5594443 (= e!3451202 (matchZipper!1719 (derivationStepZipper!1680 (derivationStepZipper!1680 lt!2255866 (head!11931 (t!376324 s!2326))) (head!11931 (tail!11026 (t!376324 s!2326)))) (tail!11026 (tail!11026 (t!376324 s!2326)))))))

(assert (= (and d!1768292 c!980588) b!5594442))

(assert (= (and d!1768292 (not c!980588)) b!5594443))

(assert (=> d!1768292 m!6573008))

(declare-fun m!6573900 () Bool)

(assert (=> d!1768292 m!6573900))

(assert (=> b!5594442 m!6573270))

(declare-fun m!6573902 () Bool)

(assert (=> b!5594442 m!6573902))

(assert (=> b!5594443 m!6573008))

(declare-fun m!6573904 () Bool)

(assert (=> b!5594443 m!6573904))

(assert (=> b!5594443 m!6573270))

(assert (=> b!5594443 m!6573904))

(declare-fun m!6573906 () Bool)

(assert (=> b!5594443 m!6573906))

(assert (=> b!5594443 m!6573008))

(declare-fun m!6573908 () Bool)

(assert (=> b!5594443 m!6573908))

(assert (=> b!5594443 m!6573906))

(assert (=> b!5594443 m!6573908))

(declare-fun m!6573910 () Bool)

(assert (=> b!5594443 m!6573910))

(assert (=> b!5593707 d!1768292))

(declare-fun bs!1293520 () Bool)

(declare-fun d!1768294 () Bool)

(assert (= bs!1293520 (and d!1768294 b!5593035)))

(declare-fun lambda!300340 () Int)

(assert (=> bs!1293520 (= (= (head!11931 (t!376324 s!2326)) (h!69368 s!2326)) (= lambda!300340 lambda!300242))))

(assert (=> d!1768294 true))

(assert (=> d!1768294 (= (derivationStepZipper!1680 lt!2255866 (head!11931 (t!376324 s!2326))) (flatMap!1194 lt!2255866 lambda!300340))))

(declare-fun bs!1293521 () Bool)

(assert (= bs!1293521 d!1768294))

(declare-fun m!6573912 () Bool)

(assert (=> bs!1293521 m!6573912))

(assert (=> b!5593707 d!1768294))

(declare-fun d!1768296 () Bool)

(assert (=> d!1768296 (= (head!11931 (t!376324 s!2326)) (h!69368 (t!376324 s!2326)))))

(assert (=> b!5593707 d!1768296))

(declare-fun d!1768298 () Bool)

(assert (=> d!1768298 (= (tail!11026 (t!376324 s!2326)) (t!376324 (t!376324 s!2326)))))

(assert (=> b!5593707 d!1768298))

(declare-fun d!1768300 () Bool)

(declare-fun e!3451204 () Bool)

(assert (=> d!1768300 e!3451204))

(declare-fun c!980593 () Bool)

(assert (=> d!1768300 (= c!980593 ((_ is EmptyExpr!15581) (regTwo!31674 r!7292)))))

(declare-fun lt!2255991 () Bool)

(declare-fun e!3451208 () Bool)

(assert (=> d!1768300 (= lt!2255991 e!3451208)))

(declare-fun c!980592 () Bool)

(assert (=> d!1768300 (= c!980592 (isEmpty!34741 s!2326))))

(assert (=> d!1768300 (validRegex!7317 (regTwo!31674 r!7292))))

(assert (=> d!1768300 (= (matchR!7766 (regTwo!31674 r!7292) s!2326) lt!2255991)))

(declare-fun b!5594446 () Bool)

(assert (=> b!5594446 (= e!3451208 (matchR!7766 (derivativeStep!4429 (regTwo!31674 r!7292) (head!11931 s!2326)) (tail!11026 s!2326)))))

(declare-fun b!5594447 () Bool)

(declare-fun e!3451203 () Bool)

(assert (=> b!5594447 (= e!3451203 (not (= (head!11931 s!2326) (c!980214 (regTwo!31674 r!7292)))))))

(declare-fun b!5594448 () Bool)

(declare-fun res!2373248 () Bool)

(declare-fun e!3451205 () Bool)

(assert (=> b!5594448 (=> res!2373248 e!3451205)))

(declare-fun e!3451207 () Bool)

(assert (=> b!5594448 (= res!2373248 e!3451207)))

(declare-fun res!2373251 () Bool)

(assert (=> b!5594448 (=> (not res!2373251) (not e!3451207))))

(assert (=> b!5594448 (= res!2373251 lt!2255991)))

(declare-fun b!5594449 () Bool)

(declare-fun res!2373250 () Bool)

(assert (=> b!5594449 (=> res!2373250 e!3451203)))

(assert (=> b!5594449 (= res!2373250 (not (isEmpty!34741 (tail!11026 s!2326))))))

(declare-fun bm!419331 () Bool)

(declare-fun call!419336 () Bool)

(assert (=> bm!419331 (= call!419336 (isEmpty!34741 s!2326))))

(declare-fun b!5594450 () Bool)

(declare-fun e!3451206 () Bool)

(assert (=> b!5594450 (= e!3451206 (not lt!2255991))))

(declare-fun b!5594451 () Bool)

(declare-fun e!3451209 () Bool)

(assert (=> b!5594451 (= e!3451209 e!3451203)))

(declare-fun res!2373249 () Bool)

(assert (=> b!5594451 (=> res!2373249 e!3451203)))

(assert (=> b!5594451 (= res!2373249 call!419336)))

(declare-fun b!5594452 () Bool)

(declare-fun res!2373255 () Bool)

(assert (=> b!5594452 (=> res!2373255 e!3451205)))

(assert (=> b!5594452 (= res!2373255 (not ((_ is ElementMatch!15581) (regTwo!31674 r!7292))))))

(assert (=> b!5594452 (= e!3451206 e!3451205)))

(declare-fun b!5594453 () Bool)

(assert (=> b!5594453 (= e!3451204 (= lt!2255991 call!419336))))

(declare-fun b!5594454 () Bool)

(assert (=> b!5594454 (= e!3451207 (= (head!11931 s!2326) (c!980214 (regTwo!31674 r!7292))))))

(declare-fun b!5594455 () Bool)

(declare-fun res!2373253 () Bool)

(assert (=> b!5594455 (=> (not res!2373253) (not e!3451207))))

(assert (=> b!5594455 (= res!2373253 (not call!419336))))

(declare-fun b!5594456 () Bool)

(assert (=> b!5594456 (= e!3451208 (nullable!5613 (regTwo!31674 r!7292)))))

(declare-fun b!5594457 () Bool)

(declare-fun res!2373254 () Bool)

(assert (=> b!5594457 (=> (not res!2373254) (not e!3451207))))

(assert (=> b!5594457 (= res!2373254 (isEmpty!34741 (tail!11026 s!2326)))))

(declare-fun b!5594458 () Bool)

(assert (=> b!5594458 (= e!3451204 e!3451206)))

(declare-fun c!980591 () Bool)

(assert (=> b!5594458 (= c!980591 ((_ is EmptyLang!15581) (regTwo!31674 r!7292)))))

(declare-fun b!5594459 () Bool)

(assert (=> b!5594459 (= e!3451205 e!3451209)))

(declare-fun res!2373252 () Bool)

(assert (=> b!5594459 (=> (not res!2373252) (not e!3451209))))

(assert (=> b!5594459 (= res!2373252 (not lt!2255991))))

(assert (= (and d!1768300 c!980592) b!5594456))

(assert (= (and d!1768300 (not c!980592)) b!5594446))

(assert (= (and d!1768300 c!980593) b!5594453))

(assert (= (and d!1768300 (not c!980593)) b!5594458))

(assert (= (and b!5594458 c!980591) b!5594450))

(assert (= (and b!5594458 (not c!980591)) b!5594452))

(assert (= (and b!5594452 (not res!2373255)) b!5594448))

(assert (= (and b!5594448 res!2373251) b!5594455))

(assert (= (and b!5594455 res!2373253) b!5594457))

(assert (= (and b!5594457 res!2373254) b!5594454))

(assert (= (and b!5594448 (not res!2373248)) b!5594459))

(assert (= (and b!5594459 res!2373252) b!5594451))

(assert (= (and b!5594451 (not res!2373249)) b!5594449))

(assert (= (and b!5594449 (not res!2373250)) b!5594447))

(assert (= (or b!5594453 b!5594451 b!5594455) bm!419331))

(declare-fun m!6573914 () Bool)

(assert (=> b!5594456 m!6573914))

(assert (=> b!5594454 m!6573250))

(assert (=> b!5594447 m!6573250))

(assert (=> d!1768300 m!6573240))

(declare-fun m!6573916 () Bool)

(assert (=> d!1768300 m!6573916))

(assert (=> b!5594449 m!6573252))

(assert (=> b!5594449 m!6573252))

(assert (=> b!5594449 m!6573254))

(assert (=> bm!419331 m!6573240))

(assert (=> b!5594457 m!6573252))

(assert (=> b!5594457 m!6573252))

(assert (=> b!5594457 m!6573254))

(assert (=> b!5594446 m!6573250))

(assert (=> b!5594446 m!6573250))

(declare-fun m!6573918 () Bool)

(assert (=> b!5594446 m!6573918))

(assert (=> b!5594446 m!6573252))

(assert (=> b!5594446 m!6573918))

(assert (=> b!5594446 m!6573252))

(declare-fun m!6573920 () Bool)

(assert (=> b!5594446 m!6573920))

(assert (=> b!5593400 d!1768300))

(declare-fun d!1768302 () Bool)

(assert (=> d!1768302 (= (isEmpty!34738 (unfocusZipperList!1009 zl!343)) ((_ is Nil!62918) (unfocusZipperList!1009 zl!343)))))

(assert (=> b!5593278 d!1768302))

(declare-fun d!1768304 () Bool)

(declare-fun c!980594 () Bool)

(assert (=> d!1768304 (= c!980594 (isEmpty!34741 (tail!11026 (t!376324 s!2326))))))

(declare-fun e!3451210 () Bool)

(assert (=> d!1768304 (= (matchZipper!1719 (derivationStepZipper!1680 ((_ map or) lt!2255856 lt!2255866) (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))) e!3451210)))

(declare-fun b!5594460 () Bool)

(assert (=> b!5594460 (= e!3451210 (nullableZipper!1576 (derivationStepZipper!1680 ((_ map or) lt!2255856 lt!2255866) (head!11931 (t!376324 s!2326)))))))

(declare-fun b!5594461 () Bool)

(assert (=> b!5594461 (= e!3451210 (matchZipper!1719 (derivationStepZipper!1680 (derivationStepZipper!1680 ((_ map or) lt!2255856 lt!2255866) (head!11931 (t!376324 s!2326))) (head!11931 (tail!11026 (t!376324 s!2326)))) (tail!11026 (tail!11026 (t!376324 s!2326)))))))

(assert (= (and d!1768304 c!980594) b!5594460))

(assert (= (and d!1768304 (not c!980594)) b!5594461))

(assert (=> d!1768304 m!6573008))

(assert (=> d!1768304 m!6573900))

(assert (=> b!5594460 m!6573320))

(declare-fun m!6573922 () Bool)

(assert (=> b!5594460 m!6573922))

(assert (=> b!5594461 m!6573008))

(assert (=> b!5594461 m!6573904))

(assert (=> b!5594461 m!6573320))

(assert (=> b!5594461 m!6573904))

(declare-fun m!6573924 () Bool)

(assert (=> b!5594461 m!6573924))

(assert (=> b!5594461 m!6573008))

(assert (=> b!5594461 m!6573908))

(assert (=> b!5594461 m!6573924))

(assert (=> b!5594461 m!6573908))

(declare-fun m!6573926 () Bool)

(assert (=> b!5594461 m!6573926))

(assert (=> b!5593773 d!1768304))

(declare-fun bs!1293522 () Bool)

(declare-fun d!1768306 () Bool)

(assert (= bs!1293522 (and d!1768306 b!5593035)))

(declare-fun lambda!300341 () Int)

(assert (=> bs!1293522 (= (= (head!11931 (t!376324 s!2326)) (h!69368 s!2326)) (= lambda!300341 lambda!300242))))

(declare-fun bs!1293523 () Bool)

(assert (= bs!1293523 (and d!1768306 d!1768294)))

(assert (=> bs!1293523 (= lambda!300341 lambda!300340)))

(assert (=> d!1768306 true))

(assert (=> d!1768306 (= (derivationStepZipper!1680 ((_ map or) lt!2255856 lt!2255866) (head!11931 (t!376324 s!2326))) (flatMap!1194 ((_ map or) lt!2255856 lt!2255866) lambda!300341))))

(declare-fun bs!1293524 () Bool)

(assert (= bs!1293524 d!1768306))

(declare-fun m!6573928 () Bool)

(assert (=> bs!1293524 m!6573928))

(assert (=> b!5593773 d!1768306))

(assert (=> b!5593773 d!1768296))

(assert (=> b!5593773 d!1768298))

(declare-fun d!1768308 () Bool)

(declare-fun c!980595 () Bool)

(assert (=> d!1768308 (= c!980595 (isEmpty!34741 (tail!11026 (t!376324 s!2326))))))

(declare-fun e!3451211 () Bool)

(assert (=> d!1768308 (= (matchZipper!1719 (derivationStepZipper!1680 ((_ map or) lt!2255868 lt!2255866) (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))) e!3451211)))

(declare-fun b!5594462 () Bool)

(assert (=> b!5594462 (= e!3451211 (nullableZipper!1576 (derivationStepZipper!1680 ((_ map or) lt!2255868 lt!2255866) (head!11931 (t!376324 s!2326)))))))

(declare-fun b!5594463 () Bool)

(assert (=> b!5594463 (= e!3451211 (matchZipper!1719 (derivationStepZipper!1680 (derivationStepZipper!1680 ((_ map or) lt!2255868 lt!2255866) (head!11931 (t!376324 s!2326))) (head!11931 (tail!11026 (t!376324 s!2326)))) (tail!11026 (tail!11026 (t!376324 s!2326)))))))

(assert (= (and d!1768308 c!980595) b!5594462))

(assert (= (and d!1768308 (not c!980595)) b!5594463))

(assert (=> d!1768308 m!6573008))

(assert (=> d!1768308 m!6573900))

(assert (=> b!5594462 m!6573312))

(declare-fun m!6573930 () Bool)

(assert (=> b!5594462 m!6573930))

(assert (=> b!5594463 m!6573008))

(assert (=> b!5594463 m!6573904))

(assert (=> b!5594463 m!6573312))

(assert (=> b!5594463 m!6573904))

(declare-fun m!6573932 () Bool)

(assert (=> b!5594463 m!6573932))

(assert (=> b!5594463 m!6573008))

(assert (=> b!5594463 m!6573908))

(assert (=> b!5594463 m!6573932))

(assert (=> b!5594463 m!6573908))

(declare-fun m!6573934 () Bool)

(assert (=> b!5594463 m!6573934))

(assert (=> b!5593770 d!1768308))

(declare-fun bs!1293525 () Bool)

(declare-fun d!1768310 () Bool)

(assert (= bs!1293525 (and d!1768310 b!5593035)))

(declare-fun lambda!300342 () Int)

(assert (=> bs!1293525 (= (= (head!11931 (t!376324 s!2326)) (h!69368 s!2326)) (= lambda!300342 lambda!300242))))

(declare-fun bs!1293526 () Bool)

(assert (= bs!1293526 (and d!1768310 d!1768294)))

(assert (=> bs!1293526 (= lambda!300342 lambda!300340)))

(declare-fun bs!1293527 () Bool)

(assert (= bs!1293527 (and d!1768310 d!1768306)))

(assert (=> bs!1293527 (= lambda!300342 lambda!300341)))

(assert (=> d!1768310 true))

(assert (=> d!1768310 (= (derivationStepZipper!1680 ((_ map or) lt!2255868 lt!2255866) (head!11931 (t!376324 s!2326))) (flatMap!1194 ((_ map or) lt!2255868 lt!2255866) lambda!300342))))

(declare-fun bs!1293528 () Bool)

(assert (= bs!1293528 d!1768310))

(declare-fun m!6573936 () Bool)

(assert (=> bs!1293528 m!6573936))

(assert (=> b!5593770 d!1768310))

(assert (=> b!5593770 d!1768296))

(assert (=> b!5593770 d!1768298))

(declare-fun c!980599 () Bool)

(declare-fun c!980596 () Bool)

(declare-fun call!419340 () List!63042)

(declare-fun bm!419332 () Bool)

(assert (=> bm!419332 (= call!419340 ($colon$colon!1643 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343))))) (ite (or c!980599 c!980596) (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (h!69366 (exprs!5465 (h!69367 zl!343))))))))

(declare-fun b!5594465 () Bool)

(declare-fun e!3451216 () (InoxSet Context!9930))

(declare-fun call!419337 () (InoxSet Context!9930))

(declare-fun call!419338 () (InoxSet Context!9930))

(assert (=> b!5594465 (= e!3451216 ((_ map or) call!419337 call!419338))))

(declare-fun b!5594466 () Bool)

(declare-fun e!3451217 () (InoxSet Context!9930))

(declare-fun call!419342 () (InoxSet Context!9930))

(assert (=> b!5594466 (= e!3451217 ((_ map or) call!419337 call!419342))))

(declare-fun b!5594467 () Bool)

(declare-fun e!3451214 () (InoxSet Context!9930))

(assert (=> b!5594467 (= e!3451214 e!3451217)))

(declare-fun c!980600 () Bool)

(assert (=> b!5594467 (= c!980600 ((_ is Union!15581) (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun b!5594468 () Bool)

(declare-fun c!980598 () Bool)

(assert (=> b!5594468 (= c!980598 ((_ is Star!15581) (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun e!3451213 () (InoxSet Context!9930))

(declare-fun e!3451215 () (InoxSet Context!9930))

(assert (=> b!5594468 (= e!3451213 e!3451215)))

(declare-fun b!5594469 () Bool)

(declare-fun e!3451212 () Bool)

(assert (=> b!5594469 (= e!3451212 (nullable!5613 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343))))))))

(declare-fun bm!419333 () Bool)

(assert (=> bm!419333 (= call!419338 call!419342)))

(declare-fun call!419339 () List!63042)

(declare-fun bm!419334 () Bool)

(assert (=> bm!419334 (= call!419342 (derivationStepZipperDown!923 (ite c!980600 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980599 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980596 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343))))))) (ite (or c!980600 c!980599) (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343)))) (Context!9931 call!419339)) (h!69368 s!2326)))))

(declare-fun b!5594470 () Bool)

(assert (=> b!5594470 (= e!3451216 e!3451213)))

(assert (=> b!5594470 (= c!980596 ((_ is Concat!24426) (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun d!1768312 () Bool)

(declare-fun c!980597 () Bool)

(assert (=> d!1768312 (= c!980597 (and ((_ is ElementMatch!15581) (h!69366 (exprs!5465 (h!69367 zl!343)))) (= (c!980214 (h!69366 (exprs!5465 (h!69367 zl!343)))) (h!69368 s!2326))))))

(assert (=> d!1768312 (= (derivationStepZipperDown!923 (h!69366 (exprs!5465 (h!69367 zl!343))) (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343)))) (h!69368 s!2326)) e!3451214)))

(declare-fun b!5594464 () Bool)

(declare-fun call!419341 () (InoxSet Context!9930))

(assert (=> b!5594464 (= e!3451213 call!419341)))

(declare-fun bm!419335 () Bool)

(assert (=> bm!419335 (= call!419341 call!419338)))

(declare-fun bm!419336 () Bool)

(assert (=> bm!419336 (= call!419337 (derivationStepZipperDown!923 (ite c!980600 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343))))) (ite c!980600 (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343)))) (Context!9931 call!419340)) (h!69368 s!2326)))))

(declare-fun b!5594471 () Bool)

(assert (=> b!5594471 (= c!980599 e!3451212)))

(declare-fun res!2373256 () Bool)

(assert (=> b!5594471 (=> (not res!2373256) (not e!3451212))))

(assert (=> b!5594471 (= res!2373256 ((_ is Concat!24426) (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(assert (=> b!5594471 (= e!3451217 e!3451216)))

(declare-fun b!5594472 () Bool)

(assert (=> b!5594472 (= e!3451215 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594473 () Bool)

(assert (=> b!5594473 (= e!3451214 (store ((as const (Array Context!9930 Bool)) false) (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343)))) true))))

(declare-fun bm!419337 () Bool)

(assert (=> bm!419337 (= call!419339 call!419340)))

(declare-fun b!5594474 () Bool)

(assert (=> b!5594474 (= e!3451215 call!419341)))

(assert (= (and d!1768312 c!980597) b!5594473))

(assert (= (and d!1768312 (not c!980597)) b!5594467))

(assert (= (and b!5594467 c!980600) b!5594466))

(assert (= (and b!5594467 (not c!980600)) b!5594471))

(assert (= (and b!5594471 res!2373256) b!5594469))

(assert (= (and b!5594471 c!980599) b!5594465))

(assert (= (and b!5594471 (not c!980599)) b!5594470))

(assert (= (and b!5594470 c!980596) b!5594464))

(assert (= (and b!5594470 (not c!980596)) b!5594468))

(assert (= (and b!5594468 c!980598) b!5594474))

(assert (= (and b!5594468 (not c!980598)) b!5594472))

(assert (= (or b!5594464 b!5594474) bm!419337))

(assert (= (or b!5594464 b!5594474) bm!419335))

(assert (= (or b!5594465 bm!419337) bm!419332))

(assert (= (or b!5594465 bm!419335) bm!419333))

(assert (= (or b!5594466 bm!419333) bm!419334))

(assert (= (or b!5594466 b!5594465) bm!419336))

(declare-fun m!6573938 () Bool)

(assert (=> bm!419336 m!6573938))

(declare-fun m!6573940 () Bool)

(assert (=> bm!419334 m!6573940))

(declare-fun m!6573942 () Bool)

(assert (=> bm!419332 m!6573942))

(assert (=> b!5594469 m!6573164))

(declare-fun m!6573944 () Bool)

(assert (=> b!5594473 m!6573944))

(assert (=> bm!419186 d!1768312))

(assert (=> b!5593285 d!1767990))

(declare-fun bs!1293529 () Bool)

(declare-fun d!1768314 () Bool)

(assert (= bs!1293529 (and d!1768314 d!1768000)))

(declare-fun lambda!300343 () Int)

(assert (=> bs!1293529 (= lambda!300343 lambda!300298)))

(declare-fun bs!1293530 () Bool)

(assert (= bs!1293530 (and d!1768314 d!1767858)))

(assert (=> bs!1293530 (= lambda!300343 lambda!300257)))

(declare-fun bs!1293531 () Bool)

(assert (= bs!1293531 (and d!1768314 d!1767990)))

(assert (=> bs!1293531 (= lambda!300343 lambda!300297)))

(declare-fun bs!1293532 () Bool)

(assert (= bs!1293532 (and d!1768314 d!1767966)))

(assert (=> bs!1293532 (= lambda!300343 lambda!300288)))

(declare-fun bs!1293533 () Bool)

(assert (= bs!1293533 (and d!1768314 d!1767852)))

(assert (=> bs!1293533 (= lambda!300343 lambda!300254)))

(declare-fun bs!1293534 () Bool)

(assert (= bs!1293534 (and d!1768314 d!1768284)))

(assert (=> bs!1293534 (= lambda!300343 lambda!300337)))

(declare-fun lt!2255992 () List!63042)

(assert (=> d!1768314 (forall!14746 lt!2255992 lambda!300343)))

(declare-fun e!3451218 () List!63042)

(assert (=> d!1768314 (= lt!2255992 e!3451218)))

(declare-fun c!980601 () Bool)

(assert (=> d!1768314 (= c!980601 ((_ is Cons!62919) (t!376323 zl!343)))))

(assert (=> d!1768314 (= (unfocusZipperList!1009 (t!376323 zl!343)) lt!2255992)))

(declare-fun b!5594475 () Bool)

(assert (=> b!5594475 (= e!3451218 (Cons!62918 (generalisedConcat!1196 (exprs!5465 (h!69367 (t!376323 zl!343)))) (unfocusZipperList!1009 (t!376323 (t!376323 zl!343)))))))

(declare-fun b!5594476 () Bool)

(assert (=> b!5594476 (= e!3451218 Nil!62918)))

(assert (= (and d!1768314 c!980601) b!5594475))

(assert (= (and d!1768314 (not c!980601)) b!5594476))

(declare-fun m!6573946 () Bool)

(assert (=> d!1768314 m!6573946))

(declare-fun m!6573948 () Bool)

(assert (=> b!5594475 m!6573948))

(declare-fun m!6573950 () Bool)

(assert (=> b!5594475 m!6573950))

(assert (=> b!5593285 d!1768314))

(declare-fun d!1768316 () Bool)

(assert (=> d!1768316 true))

(declare-fun setRes!37300 () Bool)

(assert (=> d!1768316 setRes!37300))

(declare-fun condSetEmpty!37300 () Bool)

(declare-fun res!2373259 () (InoxSet Context!9930))

(assert (=> d!1768316 (= condSetEmpty!37300 (= res!2373259 ((as const (Array Context!9930 Bool)) false)))))

(assert (=> d!1768316 (= (choose!42419 lt!2255854 lambda!300242) res!2373259)))

(declare-fun setIsEmpty!37300 () Bool)

(assert (=> setIsEmpty!37300 setRes!37300))

(declare-fun e!3451221 () Bool)

(declare-fun tp!1547121 () Bool)

(declare-fun setElem!37300 () Context!9930)

(declare-fun setNonEmpty!37300 () Bool)

(assert (=> setNonEmpty!37300 (= setRes!37300 (and tp!1547121 (inv!82199 setElem!37300) e!3451221))))

(declare-fun setRest!37300 () (InoxSet Context!9930))

(assert (=> setNonEmpty!37300 (= res!2373259 ((_ map or) (store ((as const (Array Context!9930 Bool)) false) setElem!37300 true) setRest!37300))))

(declare-fun b!5594479 () Bool)

(declare-fun tp!1547120 () Bool)

(assert (=> b!5594479 (= e!3451221 tp!1547120)))

(assert (= (and d!1768316 condSetEmpty!37300) setIsEmpty!37300))

(assert (= (and d!1768316 (not condSetEmpty!37300)) setNonEmpty!37300))

(assert (= setNonEmpty!37300 b!5594479))

(declare-fun m!6573952 () Bool)

(assert (=> setNonEmpty!37300 m!6573952))

(assert (=> d!1767958 d!1768316))

(declare-fun d!1768318 () Bool)

(declare-fun res!2373264 () Bool)

(declare-fun e!3451226 () Bool)

(assert (=> d!1768318 (=> res!2373264 e!3451226)))

(assert (=> d!1768318 (= res!2373264 ((_ is Nil!62918) lt!2255901))))

(assert (=> d!1768318 (= (forall!14746 lt!2255901 lambda!300257) e!3451226)))

(declare-fun b!5594484 () Bool)

(declare-fun e!3451227 () Bool)

(assert (=> b!5594484 (= e!3451226 e!3451227)))

(declare-fun res!2373265 () Bool)

(assert (=> b!5594484 (=> (not res!2373265) (not e!3451227))))

(declare-fun dynLambda!24611 (Int Regex!15581) Bool)

(assert (=> b!5594484 (= res!2373265 (dynLambda!24611 lambda!300257 (h!69366 lt!2255901)))))

(declare-fun b!5594485 () Bool)

(assert (=> b!5594485 (= e!3451227 (forall!14746 (t!376322 lt!2255901) lambda!300257))))

(assert (= (and d!1768318 (not res!2373264)) b!5594484))

(assert (= (and b!5594484 res!2373265) b!5594485))

(declare-fun b_lambda!211995 () Bool)

(assert (=> (not b_lambda!211995) (not b!5594484)))

(declare-fun m!6573954 () Bool)

(assert (=> b!5594484 m!6573954))

(declare-fun m!6573956 () Bool)

(assert (=> b!5594485 m!6573956))

(assert (=> d!1767858 d!1768318))

(assert (=> d!1767886 d!1767874))

(declare-fun d!1768320 () Bool)

(assert (=> d!1768320 (= (Exists!2681 lambda!300272) (choose!42415 lambda!300272))))

(declare-fun bs!1293535 () Bool)

(assert (= bs!1293535 d!1768320))

(declare-fun m!6573958 () Bool)

(assert (=> bs!1293535 m!6573958))

(assert (=> d!1767886 d!1768320))

(declare-fun b!5594486 () Bool)

(declare-fun e!3451232 () Bool)

(declare-fun e!3451230 () Bool)

(assert (=> b!5594486 (= e!3451232 e!3451230)))

(declare-fun res!2373270 () Bool)

(assert (=> b!5594486 (= res!2373270 (not (nullable!5613 (reg!15910 (regOne!31674 r!7292)))))))

(assert (=> b!5594486 (=> (not res!2373270) (not e!3451230))))

(declare-fun b!5594487 () Bool)

(declare-fun call!419345 () Bool)

(assert (=> b!5594487 (= e!3451230 call!419345)))

(declare-fun b!5594488 () Bool)

(declare-fun e!3451233 () Bool)

(assert (=> b!5594488 (= e!3451233 e!3451232)))

(declare-fun c!980603 () Bool)

(assert (=> b!5594488 (= c!980603 ((_ is Star!15581) (regOne!31674 r!7292)))))

(declare-fun bm!419338 () Bool)

(declare-fun call!419343 () Bool)

(assert (=> bm!419338 (= call!419343 call!419345)))

(declare-fun d!1768322 () Bool)

(declare-fun res!2373267 () Bool)

(assert (=> d!1768322 (=> res!2373267 e!3451233)))

(assert (=> d!1768322 (= res!2373267 ((_ is ElementMatch!15581) (regOne!31674 r!7292)))))

(assert (=> d!1768322 (= (validRegex!7317 (regOne!31674 r!7292)) e!3451233)))

(declare-fun bm!419339 () Bool)

(declare-fun call!419344 () Bool)

(declare-fun c!980602 () Bool)

(assert (=> bm!419339 (= call!419344 (validRegex!7317 (ite c!980602 (regOne!31675 (regOne!31674 r!7292)) (regOne!31674 (regOne!31674 r!7292)))))))

(declare-fun bm!419340 () Bool)

(assert (=> bm!419340 (= call!419345 (validRegex!7317 (ite c!980603 (reg!15910 (regOne!31674 r!7292)) (ite c!980602 (regTwo!31675 (regOne!31674 r!7292)) (regTwo!31674 (regOne!31674 r!7292))))))))

(declare-fun b!5594489 () Bool)

(declare-fun res!2373266 () Bool)

(declare-fun e!3451234 () Bool)

(assert (=> b!5594489 (=> (not res!2373266) (not e!3451234))))

(assert (=> b!5594489 (= res!2373266 call!419344)))

(declare-fun e!3451229 () Bool)

(assert (=> b!5594489 (= e!3451229 e!3451234)))

(declare-fun b!5594490 () Bool)

(declare-fun e!3451228 () Bool)

(declare-fun e!3451231 () Bool)

(assert (=> b!5594490 (= e!3451228 e!3451231)))

(declare-fun res!2373268 () Bool)

(assert (=> b!5594490 (=> (not res!2373268) (not e!3451231))))

(assert (=> b!5594490 (= res!2373268 call!419344)))

(declare-fun b!5594491 () Bool)

(declare-fun res!2373269 () Bool)

(assert (=> b!5594491 (=> res!2373269 e!3451228)))

(assert (=> b!5594491 (= res!2373269 (not ((_ is Concat!24426) (regOne!31674 r!7292))))))

(assert (=> b!5594491 (= e!3451229 e!3451228)))

(declare-fun b!5594492 () Bool)

(assert (=> b!5594492 (= e!3451231 call!419343)))

(declare-fun b!5594493 () Bool)

(assert (=> b!5594493 (= e!3451234 call!419343)))

(declare-fun b!5594494 () Bool)

(assert (=> b!5594494 (= e!3451232 e!3451229)))

(assert (=> b!5594494 (= c!980602 ((_ is Union!15581) (regOne!31674 r!7292)))))

(assert (= (and d!1768322 (not res!2373267)) b!5594488))

(assert (= (and b!5594488 c!980603) b!5594486))

(assert (= (and b!5594488 (not c!980603)) b!5594494))

(assert (= (and b!5594486 res!2373270) b!5594487))

(assert (= (and b!5594494 c!980602) b!5594489))

(assert (= (and b!5594494 (not c!980602)) b!5594491))

(assert (= (and b!5594489 res!2373266) b!5594493))

(assert (= (and b!5594491 (not res!2373269)) b!5594490))

(assert (= (and b!5594490 res!2373268) b!5594492))

(assert (= (or b!5594493 b!5594492) bm!419338))

(assert (= (or b!5594489 b!5594490) bm!419339))

(assert (= (or b!5594487 bm!419338) bm!419340))

(declare-fun m!6573960 () Bool)

(assert (=> b!5594486 m!6573960))

(declare-fun m!6573962 () Bool)

(assert (=> bm!419339 m!6573962))

(declare-fun m!6573964 () Bool)

(assert (=> bm!419340 m!6573964))

(assert (=> d!1767886 d!1768322))

(assert (=> d!1767886 d!1767908))

(declare-fun bs!1293536 () Bool)

(declare-fun d!1768324 () Bool)

(assert (= bs!1293536 (and d!1768324 d!1767890)))

(declare-fun lambda!300346 () Int)

(assert (=> bs!1293536 (= lambda!300346 lambda!300280)))

(assert (=> bs!1293536 (not (= lambda!300346 lambda!300281))))

(declare-fun bs!1293537 () Bool)

(assert (= bs!1293537 (and d!1768324 b!5593659)))

(assert (=> bs!1293537 (not (= lambda!300346 lambda!300293))))

(declare-fun bs!1293538 () Bool)

(assert (= bs!1293538 (and d!1768324 b!5593653)))

(assert (=> bs!1293538 (not (= lambda!300346 lambda!300294))))

(declare-fun bs!1293539 () Bool)

(assert (= bs!1293539 (and d!1768324 b!5593022)))

(assert (=> bs!1293539 (not (= lambda!300346 lambda!300241))))

(declare-fun bs!1293540 () Bool)

(assert (= bs!1293540 (and d!1768324 d!1767886)))

(assert (=> bs!1293540 (= lambda!300346 lambda!300272)))

(assert (=> bs!1293539 (= lambda!300346 lambda!300240)))

(assert (=> d!1768324 true))

(assert (=> d!1768324 true))

(assert (=> d!1768324 true))

(assert (=> d!1768324 (= (isDefined!12293 (findConcatSeparation!2004 (regOne!31674 r!7292) (regTwo!31674 r!7292) Nil!62920 s!2326 s!2326)) (Exists!2681 lambda!300346))))

(assert (=> d!1768324 true))

(declare-fun _$89!1707 () Unit!155740)

(assert (=> d!1768324 (= (choose!42416 (regOne!31674 r!7292) (regTwo!31674 r!7292) s!2326) _$89!1707)))

(declare-fun bs!1293541 () Bool)

(assert (= bs!1293541 d!1768324))

(assert (=> bs!1293541 m!6572706))

(assert (=> bs!1293541 m!6572706))

(assert (=> bs!1293541 m!6572708))

(declare-fun m!6573966 () Bool)

(assert (=> bs!1293541 m!6573966))

(assert (=> d!1767886 d!1768324))

(declare-fun b!5594499 () Bool)

(declare-fun e!3451241 () Bool)

(declare-fun e!3451239 () Bool)

(assert (=> b!5594499 (= e!3451241 e!3451239)))

(declare-fun res!2373279 () Bool)

(assert (=> b!5594499 (= res!2373279 (not (nullable!5613 (reg!15910 lt!2255963))))))

(assert (=> b!5594499 (=> (not res!2373279) (not e!3451239))))

(declare-fun b!5594500 () Bool)

(declare-fun call!419348 () Bool)

(assert (=> b!5594500 (= e!3451239 call!419348)))

(declare-fun b!5594501 () Bool)

(declare-fun e!3451242 () Bool)

(assert (=> b!5594501 (= e!3451242 e!3451241)))

(declare-fun c!980605 () Bool)

(assert (=> b!5594501 (= c!980605 ((_ is Star!15581) lt!2255963))))

(declare-fun bm!419341 () Bool)

(declare-fun call!419346 () Bool)

(assert (=> bm!419341 (= call!419346 call!419348)))

(declare-fun d!1768326 () Bool)

(declare-fun res!2373276 () Bool)

(assert (=> d!1768326 (=> res!2373276 e!3451242)))

(assert (=> d!1768326 (= res!2373276 ((_ is ElementMatch!15581) lt!2255963))))

(assert (=> d!1768326 (= (validRegex!7317 lt!2255963) e!3451242)))

(declare-fun bm!419342 () Bool)

(declare-fun call!419347 () Bool)

(declare-fun c!980604 () Bool)

(assert (=> bm!419342 (= call!419347 (validRegex!7317 (ite c!980604 (regOne!31675 lt!2255963) (regOne!31674 lt!2255963))))))

(declare-fun bm!419343 () Bool)

(assert (=> bm!419343 (= call!419348 (validRegex!7317 (ite c!980605 (reg!15910 lt!2255963) (ite c!980604 (regTwo!31675 lt!2255963) (regTwo!31674 lt!2255963)))))))

(declare-fun b!5594502 () Bool)

(declare-fun res!2373275 () Bool)

(declare-fun e!3451243 () Bool)

(assert (=> b!5594502 (=> (not res!2373275) (not e!3451243))))

(assert (=> b!5594502 (= res!2373275 call!419347)))

(declare-fun e!3451238 () Bool)

(assert (=> b!5594502 (= e!3451238 e!3451243)))

(declare-fun b!5594503 () Bool)

(declare-fun e!3451237 () Bool)

(declare-fun e!3451240 () Bool)

(assert (=> b!5594503 (= e!3451237 e!3451240)))

(declare-fun res!2373277 () Bool)

(assert (=> b!5594503 (=> (not res!2373277) (not e!3451240))))

(assert (=> b!5594503 (= res!2373277 call!419347)))

(declare-fun b!5594504 () Bool)

(declare-fun res!2373278 () Bool)

(assert (=> b!5594504 (=> res!2373278 e!3451237)))

(assert (=> b!5594504 (= res!2373278 (not ((_ is Concat!24426) lt!2255963)))))

(assert (=> b!5594504 (= e!3451238 e!3451237)))

(declare-fun b!5594505 () Bool)

(assert (=> b!5594505 (= e!3451240 call!419346)))

(declare-fun b!5594506 () Bool)

(assert (=> b!5594506 (= e!3451243 call!419346)))

(declare-fun b!5594507 () Bool)

(assert (=> b!5594507 (= e!3451241 e!3451238)))

(assert (=> b!5594507 (= c!980604 ((_ is Union!15581) lt!2255963))))

(assert (= (and d!1768326 (not res!2373276)) b!5594501))

(assert (= (and b!5594501 c!980605) b!5594499))

(assert (= (and b!5594501 (not c!980605)) b!5594507))

(assert (= (and b!5594499 res!2373279) b!5594500))

(assert (= (and b!5594507 c!980604) b!5594502))

(assert (= (and b!5594507 (not c!980604)) b!5594504))

(assert (= (and b!5594502 res!2373275) b!5594506))

(assert (= (and b!5594504 (not res!2373278)) b!5594503))

(assert (= (and b!5594503 res!2373277) b!5594505))

(assert (= (or b!5594506 b!5594505) bm!419341))

(assert (= (or b!5594502 b!5594503) bm!419342))

(assert (= (or b!5594500 bm!419341) bm!419343))

(declare-fun m!6573968 () Bool)

(assert (=> b!5594499 m!6573968))

(declare-fun m!6573970 () Bool)

(assert (=> bm!419342 m!6573970))

(declare-fun m!6573972 () Bool)

(assert (=> bm!419343 m!6573972))

(assert (=> d!1767988 d!1768326))

(assert (=> d!1767988 d!1767852))

(assert (=> d!1767988 d!1767858))

(declare-fun d!1768328 () Bool)

(declare-fun res!2373294 () Bool)

(declare-fun e!3451259 () Bool)

(assert (=> d!1768328 (=> res!2373294 e!3451259)))

(assert (=> d!1768328 (= res!2373294 ((_ is EmptyExpr!15581) (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(assert (=> d!1768328 (= (nullableFct!1722 (h!69366 (exprs!5465 (h!69367 zl!343)))) e!3451259)))

(declare-fun bm!419348 () Bool)

(declare-fun call!419354 () Bool)

(declare-fun c!980608 () Bool)

(assert (=> bm!419348 (= call!419354 (nullable!5613 (ite c!980608 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))))))))

(declare-fun b!5594522 () Bool)

(declare-fun e!3451256 () Bool)

(declare-fun call!419353 () Bool)

(assert (=> b!5594522 (= e!3451256 call!419353)))

(declare-fun b!5594523 () Bool)

(declare-fun e!3451258 () Bool)

(assert (=> b!5594523 (= e!3451259 e!3451258)))

(declare-fun res!2373293 () Bool)

(assert (=> b!5594523 (=> (not res!2373293) (not e!3451258))))

(assert (=> b!5594523 (= res!2373293 (and (not ((_ is EmptyLang!15581) (h!69366 (exprs!5465 (h!69367 zl!343))))) (not ((_ is ElementMatch!15581) (h!69366 (exprs!5465 (h!69367 zl!343)))))))))

(declare-fun b!5594524 () Bool)

(declare-fun e!3451257 () Bool)

(assert (=> b!5594524 (= e!3451257 call!419353)))

(declare-fun b!5594525 () Bool)

(declare-fun e!3451261 () Bool)

(assert (=> b!5594525 (= e!3451261 e!3451256)))

(declare-fun res!2373290 () Bool)

(assert (=> b!5594525 (= res!2373290 call!419354)))

(assert (=> b!5594525 (=> res!2373290 e!3451256)))

(declare-fun bm!419349 () Bool)

(assert (=> bm!419349 (= call!419353 (nullable!5613 (ite c!980608 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))))))))

(declare-fun b!5594526 () Bool)

(declare-fun e!3451260 () Bool)

(assert (=> b!5594526 (= e!3451260 e!3451261)))

(assert (=> b!5594526 (= c!980608 ((_ is Union!15581) (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun b!5594527 () Bool)

(assert (=> b!5594527 (= e!3451261 e!3451257)))

(declare-fun res!2373291 () Bool)

(assert (=> b!5594527 (= res!2373291 call!419354)))

(assert (=> b!5594527 (=> (not res!2373291) (not e!3451257))))

(declare-fun b!5594528 () Bool)

(assert (=> b!5594528 (= e!3451258 e!3451260)))

(declare-fun res!2373292 () Bool)

(assert (=> b!5594528 (=> res!2373292 e!3451260)))

(assert (=> b!5594528 (= res!2373292 ((_ is Star!15581) (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(assert (= (and d!1768328 (not res!2373294)) b!5594523))

(assert (= (and b!5594523 res!2373293) b!5594528))

(assert (= (and b!5594528 (not res!2373292)) b!5594526))

(assert (= (and b!5594526 c!980608) b!5594525))

(assert (= (and b!5594526 (not c!980608)) b!5594527))

(assert (= (and b!5594525 (not res!2373290)) b!5594522))

(assert (= (and b!5594527 res!2373291) b!5594524))

(assert (= (or b!5594522 b!5594524) bm!419349))

(assert (= (or b!5594525 b!5594527) bm!419348))

(declare-fun m!6573974 () Bool)

(assert (=> bm!419348 m!6573974))

(declare-fun m!6573976 () Bool)

(assert (=> bm!419349 m!6573976))

(assert (=> d!1767914 d!1768328))

(assert (=> d!1767940 d!1768282))

(assert (=> d!1767980 d!1767982))

(assert (=> d!1767980 d!1767940))

(declare-fun d!1768330 () Bool)

(declare-fun e!3451264 () Bool)

(assert (=> d!1768330 (= (matchZipper!1719 ((_ map or) lt!2255857 lt!2255866) (t!376324 s!2326)) e!3451264)))

(declare-fun res!2373297 () Bool)

(assert (=> d!1768330 (=> res!2373297 e!3451264)))

(assert (=> d!1768330 (= res!2373297 (matchZipper!1719 lt!2255857 (t!376324 s!2326)))))

(assert (=> d!1768330 true))

(declare-fun _$48!1184 () Unit!155740)

(assert (=> d!1768330 (= (choose!42423 lt!2255857 lt!2255866 (t!376324 s!2326)) _$48!1184)))

(declare-fun b!5594531 () Bool)

(assert (=> b!5594531 (= e!3451264 (matchZipper!1719 lt!2255866 (t!376324 s!2326)))))

(assert (= (and d!1768330 (not res!2373297)) b!5594531))

(assert (=> d!1768330 m!6572752))

(assert (=> d!1768330 m!6572694))

(assert (=> b!5594531 m!6572704))

(assert (=> d!1767980 d!1768330))

(declare-fun d!1768332 () Bool)

(assert (=> d!1768332 (= (isEmptyExpr!1135 lt!2255966) ((_ is EmptyExpr!15581) lt!2255966))))

(assert (=> b!5593765 d!1768332))

(declare-fun d!1768334 () Bool)

(declare-fun res!2373298 () Bool)

(declare-fun e!3451265 () Bool)

(assert (=> d!1768334 (=> res!2373298 e!3451265)))

(assert (=> d!1768334 (= res!2373298 ((_ is Nil!62918) (exprs!5465 (h!69367 zl!343))))))

(assert (=> d!1768334 (= (forall!14746 (exprs!5465 (h!69367 zl!343)) lambda!300288) e!3451265)))

(declare-fun b!5594532 () Bool)

(declare-fun e!3451266 () Bool)

(assert (=> b!5594532 (= e!3451265 e!3451266)))

(declare-fun res!2373299 () Bool)

(assert (=> b!5594532 (=> (not res!2373299) (not e!3451266))))

(assert (=> b!5594532 (= res!2373299 (dynLambda!24611 lambda!300288 (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun b!5594533 () Bool)

(assert (=> b!5594533 (= e!3451266 (forall!14746 (t!376322 (exprs!5465 (h!69367 zl!343))) lambda!300288))))

(assert (= (and d!1768334 (not res!2373298)) b!5594532))

(assert (= (and b!5594532 res!2373299) b!5594533))

(declare-fun b_lambda!211997 () Bool)

(assert (=> (not b_lambda!211997) (not b!5594532)))

(declare-fun m!6573978 () Bool)

(assert (=> b!5594532 m!6573978))

(declare-fun m!6573980 () Bool)

(assert (=> b!5594533 m!6573980))

(assert (=> d!1767966 d!1768334))

(declare-fun d!1768336 () Bool)

(assert (=> d!1768336 (= (nullable!5613 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343))))) (nullableFct!1722 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343))))))))

(declare-fun bs!1293542 () Bool)

(assert (= bs!1293542 d!1768336))

(declare-fun m!6573982 () Bool)

(assert (=> bs!1293542 m!6573982))

(assert (=> b!5593570 d!1768336))

(declare-fun d!1768338 () Bool)

(declare-fun c!980609 () Bool)

(assert (=> d!1768338 (= c!980609 (isEmpty!34741 (tail!11026 (t!376324 s!2326))))))

(declare-fun e!3451267 () Bool)

(assert (=> d!1768338 (= (matchZipper!1719 (derivationStepZipper!1680 lt!2255857 (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))) e!3451267)))

(declare-fun b!5594534 () Bool)

(assert (=> b!5594534 (= e!3451267 (nullableZipper!1576 (derivationStepZipper!1680 lt!2255857 (head!11931 (t!376324 s!2326)))))))

(declare-fun b!5594535 () Bool)

(assert (=> b!5594535 (= e!3451267 (matchZipper!1719 (derivationStepZipper!1680 (derivationStepZipper!1680 lt!2255857 (head!11931 (t!376324 s!2326))) (head!11931 (tail!11026 (t!376324 s!2326)))) (tail!11026 (tail!11026 (t!376324 s!2326)))))))

(assert (= (and d!1768338 c!980609) b!5594534))

(assert (= (and d!1768338 (not c!980609)) b!5594535))

(assert (=> d!1768338 m!6573008))

(assert (=> d!1768338 m!6573900))

(assert (=> b!5594534 m!6573188))

(declare-fun m!6573984 () Bool)

(assert (=> b!5594534 m!6573984))

(assert (=> b!5594535 m!6573008))

(assert (=> b!5594535 m!6573904))

(assert (=> b!5594535 m!6573188))

(assert (=> b!5594535 m!6573904))

(declare-fun m!6573986 () Bool)

(assert (=> b!5594535 m!6573986))

(assert (=> b!5594535 m!6573008))

(assert (=> b!5594535 m!6573908))

(assert (=> b!5594535 m!6573986))

(assert (=> b!5594535 m!6573908))

(declare-fun m!6573988 () Bool)

(assert (=> b!5594535 m!6573988))

(assert (=> b!5593600 d!1768338))

(declare-fun bs!1293543 () Bool)

(declare-fun d!1768340 () Bool)

(assert (= bs!1293543 (and d!1768340 b!5593035)))

(declare-fun lambda!300347 () Int)

(assert (=> bs!1293543 (= (= (head!11931 (t!376324 s!2326)) (h!69368 s!2326)) (= lambda!300347 lambda!300242))))

(declare-fun bs!1293544 () Bool)

(assert (= bs!1293544 (and d!1768340 d!1768294)))

(assert (=> bs!1293544 (= lambda!300347 lambda!300340)))

(declare-fun bs!1293545 () Bool)

(assert (= bs!1293545 (and d!1768340 d!1768306)))

(assert (=> bs!1293545 (= lambda!300347 lambda!300341)))

(declare-fun bs!1293546 () Bool)

(assert (= bs!1293546 (and d!1768340 d!1768310)))

(assert (=> bs!1293546 (= lambda!300347 lambda!300342)))

(assert (=> d!1768340 true))

(assert (=> d!1768340 (= (derivationStepZipper!1680 lt!2255857 (head!11931 (t!376324 s!2326))) (flatMap!1194 lt!2255857 lambda!300347))))

(declare-fun bs!1293547 () Bool)

(assert (= bs!1293547 d!1768340))

(declare-fun m!6573990 () Bool)

(assert (=> bs!1293547 m!6573990))

(assert (=> b!5593600 d!1768340))

(assert (=> b!5593600 d!1768296))

(assert (=> b!5593600 d!1768298))

(declare-fun d!1768342 () Bool)

(declare-fun res!2373300 () Bool)

(declare-fun e!3451268 () Bool)

(assert (=> d!1768342 (=> res!2373300 e!3451268)))

(assert (=> d!1768342 (= res!2373300 ((_ is Nil!62918) (exprs!5465 setElem!37285)))))

(assert (=> d!1768342 (= (forall!14746 (exprs!5465 setElem!37285) lambda!300298) e!3451268)))

(declare-fun b!5594536 () Bool)

(declare-fun e!3451269 () Bool)

(assert (=> b!5594536 (= e!3451268 e!3451269)))

(declare-fun res!2373301 () Bool)

(assert (=> b!5594536 (=> (not res!2373301) (not e!3451269))))

(assert (=> b!5594536 (= res!2373301 (dynLambda!24611 lambda!300298 (h!69366 (exprs!5465 setElem!37285))))))

(declare-fun b!5594537 () Bool)

(assert (=> b!5594537 (= e!3451269 (forall!14746 (t!376322 (exprs!5465 setElem!37285)) lambda!300298))))

(assert (= (and d!1768342 (not res!2373300)) b!5594536))

(assert (= (and b!5594536 res!2373301) b!5594537))

(declare-fun b_lambda!211999 () Bool)

(assert (=> (not b_lambda!211999) (not b!5594536)))

(declare-fun m!6573992 () Bool)

(assert (=> b!5594536 m!6573992))

(declare-fun m!6573994 () Bool)

(assert (=> b!5594537 m!6573994))

(assert (=> d!1768000 d!1768342))

(assert (=> b!5593708 d!1767978))

(declare-fun d!1768344 () Bool)

(assert (=> d!1768344 (= (head!11931 s!2326) (h!69368 s!2326))))

(assert (=> b!5593690 d!1768344))

(declare-fun e!3451272 () (InoxSet Context!9930))

(declare-fun b!5594538 () Bool)

(declare-fun call!419355 () (InoxSet Context!9930))

(assert (=> b!5594538 (= e!3451272 ((_ map or) call!419355 (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255849)))))) (h!69368 s!2326))))))

(declare-fun b!5594539 () Bool)

(declare-fun e!3451270 () Bool)

(assert (=> b!5594539 (= e!3451270 (nullable!5613 (h!69366 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255849)))))))))

(declare-fun bm!419350 () Bool)

(assert (=> bm!419350 (= call!419355 (derivationStepZipperDown!923 (h!69366 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255849))))) (Context!9931 (t!376322 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255849)))))) (h!69368 s!2326)))))

(declare-fun b!5594541 () Bool)

(declare-fun e!3451271 () (InoxSet Context!9930))

(assert (=> b!5594541 (= e!3451271 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594542 () Bool)

(assert (=> b!5594542 (= e!3451272 e!3451271)))

(declare-fun c!980610 () Bool)

(assert (=> b!5594542 (= c!980610 ((_ is Cons!62918) (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255849))))))))

(declare-fun b!5594540 () Bool)

(assert (=> b!5594540 (= e!3451271 call!419355)))

(declare-fun d!1768346 () Bool)

(declare-fun c!980611 () Bool)

(assert (=> d!1768346 (= c!980611 e!3451270)))

(declare-fun res!2373302 () Bool)

(assert (=> d!1768346 (=> (not res!2373302) (not e!3451270))))

(assert (=> d!1768346 (= res!2373302 ((_ is Cons!62918) (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255849))))))))

(assert (=> d!1768346 (= (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 lt!2255849))) (h!69368 s!2326)) e!3451272)))

(assert (= (and d!1768346 res!2373302) b!5594539))

(assert (= (and d!1768346 c!980611) b!5594538))

(assert (= (and d!1768346 (not c!980611)) b!5594542))

(assert (= (and b!5594542 c!980610) b!5594540))

(assert (= (and b!5594542 (not c!980610)) b!5594541))

(assert (= (or b!5594538 b!5594540) bm!419350))

(declare-fun m!6573996 () Bool)

(assert (=> b!5594538 m!6573996))

(declare-fun m!6573998 () Bool)

(assert (=> b!5594539 m!6573998))

(declare-fun m!6574000 () Bool)

(assert (=> bm!419350 m!6574000))

(assert (=> b!5593608 d!1768346))

(declare-fun d!1768348 () Bool)

(assert (=> d!1768348 true))

(assert (=> d!1768348 true))

(declare-fun res!2373305 () Bool)

(assert (=> d!1768348 (= (choose!42415 lambda!300241) res!2373305)))

(assert (=> d!1767882 d!1768348))

(declare-fun call!419356 () (InoxSet Context!9930))

(declare-fun b!5594543 () Bool)

(declare-fun e!3451275 () (InoxSet Context!9930))

(assert (=> b!5594543 (= e!3451275 ((_ map or) call!419356 (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255869)))))) (h!69368 s!2326))))))

(declare-fun b!5594544 () Bool)

(declare-fun e!3451273 () Bool)

(assert (=> b!5594544 (= e!3451273 (nullable!5613 (h!69366 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255869)))))))))

(declare-fun bm!419351 () Bool)

(assert (=> bm!419351 (= call!419356 (derivationStepZipperDown!923 (h!69366 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255869))))) (Context!9931 (t!376322 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255869)))))) (h!69368 s!2326)))))

(declare-fun b!5594546 () Bool)

(declare-fun e!3451274 () (InoxSet Context!9930))

(assert (=> b!5594546 (= e!3451274 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594547 () Bool)

(assert (=> b!5594547 (= e!3451275 e!3451274)))

(declare-fun c!980612 () Bool)

(assert (=> b!5594547 (= c!980612 ((_ is Cons!62918) (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255869))))))))

(declare-fun b!5594545 () Bool)

(assert (=> b!5594545 (= e!3451274 call!419356)))

(declare-fun d!1768350 () Bool)

(declare-fun c!980613 () Bool)

(assert (=> d!1768350 (= c!980613 e!3451273)))

(declare-fun res!2373306 () Bool)

(assert (=> d!1768350 (=> (not res!2373306) (not e!3451273))))

(assert (=> d!1768350 (= res!2373306 ((_ is Cons!62918) (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255869))))))))

(assert (=> d!1768350 (= (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 lt!2255869))) (h!69368 s!2326)) e!3451275)))

(assert (= (and d!1768350 res!2373306) b!5594544))

(assert (= (and d!1768350 c!980613) b!5594543))

(assert (= (and d!1768350 (not c!980613)) b!5594547))

(assert (= (and b!5594547 c!980612) b!5594545))

(assert (= (and b!5594547 (not c!980612)) b!5594546))

(assert (= (or b!5594543 b!5594545) bm!419351))

(declare-fun m!6574002 () Bool)

(assert (=> b!5594543 m!6574002))

(declare-fun m!6574004 () Bool)

(assert (=> b!5594544 m!6574004))

(declare-fun m!6574006 () Bool)

(assert (=> bm!419351 m!6574006))

(assert (=> b!5593613 d!1768350))

(declare-fun c!980617 () Bool)

(declare-fun call!419360 () List!63042)

(declare-fun c!980614 () Bool)

(declare-fun bm!419352 () Bool)

(assert (=> bm!419352 (= call!419360 ($colon$colon!1643 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255849)))) (ite (or c!980617 c!980614) (regTwo!31674 (h!69366 (exprs!5465 lt!2255849))) (h!69366 (exprs!5465 lt!2255849)))))))

(declare-fun b!5594549 () Bool)

(declare-fun e!3451280 () (InoxSet Context!9930))

(declare-fun call!419357 () (InoxSet Context!9930))

(declare-fun call!419358 () (InoxSet Context!9930))

(assert (=> b!5594549 (= e!3451280 ((_ map or) call!419357 call!419358))))

(declare-fun b!5594550 () Bool)

(declare-fun e!3451281 () (InoxSet Context!9930))

(declare-fun call!419362 () (InoxSet Context!9930))

(assert (=> b!5594550 (= e!3451281 ((_ map or) call!419357 call!419362))))

(declare-fun b!5594551 () Bool)

(declare-fun e!3451278 () (InoxSet Context!9930))

(assert (=> b!5594551 (= e!3451278 e!3451281)))

(declare-fun c!980618 () Bool)

(assert (=> b!5594551 (= c!980618 ((_ is Union!15581) (h!69366 (exprs!5465 lt!2255849))))))

(declare-fun b!5594552 () Bool)

(declare-fun c!980616 () Bool)

(assert (=> b!5594552 (= c!980616 ((_ is Star!15581) (h!69366 (exprs!5465 lt!2255849))))))

(declare-fun e!3451277 () (InoxSet Context!9930))

(declare-fun e!3451279 () (InoxSet Context!9930))

(assert (=> b!5594552 (= e!3451277 e!3451279)))

(declare-fun b!5594553 () Bool)

(declare-fun e!3451276 () Bool)

(assert (=> b!5594553 (= e!3451276 (nullable!5613 (regOne!31674 (h!69366 (exprs!5465 lt!2255849)))))))

(declare-fun bm!419353 () Bool)

(assert (=> bm!419353 (= call!419358 call!419362)))

(declare-fun bm!419354 () Bool)

(declare-fun call!419359 () List!63042)

(assert (=> bm!419354 (= call!419362 (derivationStepZipperDown!923 (ite c!980618 (regTwo!31675 (h!69366 (exprs!5465 lt!2255849))) (ite c!980617 (regTwo!31674 (h!69366 (exprs!5465 lt!2255849))) (ite c!980614 (regOne!31674 (h!69366 (exprs!5465 lt!2255849))) (reg!15910 (h!69366 (exprs!5465 lt!2255849)))))) (ite (or c!980618 c!980617) (Context!9931 (t!376322 (exprs!5465 lt!2255849))) (Context!9931 call!419359)) (h!69368 s!2326)))))

(declare-fun b!5594554 () Bool)

(assert (=> b!5594554 (= e!3451280 e!3451277)))

(assert (=> b!5594554 (= c!980614 ((_ is Concat!24426) (h!69366 (exprs!5465 lt!2255849))))))

(declare-fun d!1768352 () Bool)

(declare-fun c!980615 () Bool)

(assert (=> d!1768352 (= c!980615 (and ((_ is ElementMatch!15581) (h!69366 (exprs!5465 lt!2255849))) (= (c!980214 (h!69366 (exprs!5465 lt!2255849))) (h!69368 s!2326))))))

(assert (=> d!1768352 (= (derivationStepZipperDown!923 (h!69366 (exprs!5465 lt!2255849)) (Context!9931 (t!376322 (exprs!5465 lt!2255849))) (h!69368 s!2326)) e!3451278)))

(declare-fun b!5594548 () Bool)

(declare-fun call!419361 () (InoxSet Context!9930))

(assert (=> b!5594548 (= e!3451277 call!419361)))

(declare-fun bm!419355 () Bool)

(assert (=> bm!419355 (= call!419361 call!419358)))

(declare-fun bm!419356 () Bool)

(assert (=> bm!419356 (= call!419357 (derivationStepZipperDown!923 (ite c!980618 (regOne!31675 (h!69366 (exprs!5465 lt!2255849))) (regOne!31674 (h!69366 (exprs!5465 lt!2255849)))) (ite c!980618 (Context!9931 (t!376322 (exprs!5465 lt!2255849))) (Context!9931 call!419360)) (h!69368 s!2326)))))

(declare-fun b!5594555 () Bool)

(assert (=> b!5594555 (= c!980617 e!3451276)))

(declare-fun res!2373307 () Bool)

(assert (=> b!5594555 (=> (not res!2373307) (not e!3451276))))

(assert (=> b!5594555 (= res!2373307 ((_ is Concat!24426) (h!69366 (exprs!5465 lt!2255849))))))

(assert (=> b!5594555 (= e!3451281 e!3451280)))

(declare-fun b!5594556 () Bool)

(assert (=> b!5594556 (= e!3451279 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594557 () Bool)

(assert (=> b!5594557 (= e!3451278 (store ((as const (Array Context!9930 Bool)) false) (Context!9931 (t!376322 (exprs!5465 lt!2255849))) true))))

(declare-fun bm!419357 () Bool)

(assert (=> bm!419357 (= call!419359 call!419360)))

(declare-fun b!5594558 () Bool)

(assert (=> b!5594558 (= e!3451279 call!419361)))

(assert (= (and d!1768352 c!980615) b!5594557))

(assert (= (and d!1768352 (not c!980615)) b!5594551))

(assert (= (and b!5594551 c!980618) b!5594550))

(assert (= (and b!5594551 (not c!980618)) b!5594555))

(assert (= (and b!5594555 res!2373307) b!5594553))

(assert (= (and b!5594555 c!980617) b!5594549))

(assert (= (and b!5594555 (not c!980617)) b!5594554))

(assert (= (and b!5594554 c!980614) b!5594548))

(assert (= (and b!5594554 (not c!980614)) b!5594552))

(assert (= (and b!5594552 c!980616) b!5594558))

(assert (= (and b!5594552 (not c!980616)) b!5594556))

(assert (= (or b!5594548 b!5594558) bm!419357))

(assert (= (or b!5594548 b!5594558) bm!419355))

(assert (= (or b!5594549 bm!419357) bm!419352))

(assert (= (or b!5594549 bm!419355) bm!419353))

(assert (= (or b!5594550 bm!419353) bm!419354))

(assert (= (or b!5594550 b!5594549) bm!419356))

(declare-fun m!6574008 () Bool)

(assert (=> bm!419356 m!6574008))

(declare-fun m!6574010 () Bool)

(assert (=> bm!419354 m!6574010))

(declare-fun m!6574012 () Bool)

(assert (=> bm!419352 m!6574012))

(declare-fun m!6574014 () Bool)

(assert (=> b!5594553 m!6574014))

(declare-fun m!6574016 () Bool)

(assert (=> b!5594557 m!6574016))

(assert (=> bm!419188 d!1768352))

(declare-fun c!980619 () Bool)

(declare-fun call!419366 () List!63042)

(declare-fun bm!419358 () Bool)

(declare-fun c!980622 () Bool)

(assert (=> bm!419358 (= call!419366 ($colon$colon!1643 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255869)))) (ite (or c!980622 c!980619) (regTwo!31674 (h!69366 (exprs!5465 lt!2255869))) (h!69366 (exprs!5465 lt!2255869)))))))

(declare-fun b!5594560 () Bool)

(declare-fun e!3451286 () (InoxSet Context!9930))

(declare-fun call!419363 () (InoxSet Context!9930))

(declare-fun call!419364 () (InoxSet Context!9930))

(assert (=> b!5594560 (= e!3451286 ((_ map or) call!419363 call!419364))))

(declare-fun b!5594561 () Bool)

(declare-fun e!3451287 () (InoxSet Context!9930))

(declare-fun call!419368 () (InoxSet Context!9930))

(assert (=> b!5594561 (= e!3451287 ((_ map or) call!419363 call!419368))))

(declare-fun b!5594562 () Bool)

(declare-fun e!3451284 () (InoxSet Context!9930))

(assert (=> b!5594562 (= e!3451284 e!3451287)))

(declare-fun c!980623 () Bool)

(assert (=> b!5594562 (= c!980623 ((_ is Union!15581) (h!69366 (exprs!5465 lt!2255869))))))

(declare-fun b!5594563 () Bool)

(declare-fun c!980621 () Bool)

(assert (=> b!5594563 (= c!980621 ((_ is Star!15581) (h!69366 (exprs!5465 lt!2255869))))))

(declare-fun e!3451283 () (InoxSet Context!9930))

(declare-fun e!3451285 () (InoxSet Context!9930))

(assert (=> b!5594563 (= e!3451283 e!3451285)))

(declare-fun b!5594564 () Bool)

(declare-fun e!3451282 () Bool)

(assert (=> b!5594564 (= e!3451282 (nullable!5613 (regOne!31674 (h!69366 (exprs!5465 lt!2255869)))))))

(declare-fun bm!419359 () Bool)

(assert (=> bm!419359 (= call!419364 call!419368)))

(declare-fun call!419365 () List!63042)

(declare-fun bm!419360 () Bool)

(assert (=> bm!419360 (= call!419368 (derivationStepZipperDown!923 (ite c!980623 (regTwo!31675 (h!69366 (exprs!5465 lt!2255869))) (ite c!980622 (regTwo!31674 (h!69366 (exprs!5465 lt!2255869))) (ite c!980619 (regOne!31674 (h!69366 (exprs!5465 lt!2255869))) (reg!15910 (h!69366 (exprs!5465 lt!2255869)))))) (ite (or c!980623 c!980622) (Context!9931 (t!376322 (exprs!5465 lt!2255869))) (Context!9931 call!419365)) (h!69368 s!2326)))))

(declare-fun b!5594565 () Bool)

(assert (=> b!5594565 (= e!3451286 e!3451283)))

(assert (=> b!5594565 (= c!980619 ((_ is Concat!24426) (h!69366 (exprs!5465 lt!2255869))))))

(declare-fun d!1768354 () Bool)

(declare-fun c!980620 () Bool)

(assert (=> d!1768354 (= c!980620 (and ((_ is ElementMatch!15581) (h!69366 (exprs!5465 lt!2255869))) (= (c!980214 (h!69366 (exprs!5465 lt!2255869))) (h!69368 s!2326))))))

(assert (=> d!1768354 (= (derivationStepZipperDown!923 (h!69366 (exprs!5465 lt!2255869)) (Context!9931 (t!376322 (exprs!5465 lt!2255869))) (h!69368 s!2326)) e!3451284)))

(declare-fun b!5594559 () Bool)

(declare-fun call!419367 () (InoxSet Context!9930))

(assert (=> b!5594559 (= e!3451283 call!419367)))

(declare-fun bm!419361 () Bool)

(assert (=> bm!419361 (= call!419367 call!419364)))

(declare-fun bm!419362 () Bool)

(assert (=> bm!419362 (= call!419363 (derivationStepZipperDown!923 (ite c!980623 (regOne!31675 (h!69366 (exprs!5465 lt!2255869))) (regOne!31674 (h!69366 (exprs!5465 lt!2255869)))) (ite c!980623 (Context!9931 (t!376322 (exprs!5465 lt!2255869))) (Context!9931 call!419366)) (h!69368 s!2326)))))

(declare-fun b!5594566 () Bool)

(assert (=> b!5594566 (= c!980622 e!3451282)))

(declare-fun res!2373308 () Bool)

(assert (=> b!5594566 (=> (not res!2373308) (not e!3451282))))

(assert (=> b!5594566 (= res!2373308 ((_ is Concat!24426) (h!69366 (exprs!5465 lt!2255869))))))

(assert (=> b!5594566 (= e!3451287 e!3451286)))

(declare-fun b!5594567 () Bool)

(assert (=> b!5594567 (= e!3451285 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594568 () Bool)

(assert (=> b!5594568 (= e!3451284 (store ((as const (Array Context!9930 Bool)) false) (Context!9931 (t!376322 (exprs!5465 lt!2255869))) true))))

(declare-fun bm!419363 () Bool)

(assert (=> bm!419363 (= call!419365 call!419366)))

(declare-fun b!5594569 () Bool)

(assert (=> b!5594569 (= e!3451285 call!419367)))

(assert (= (and d!1768354 c!980620) b!5594568))

(assert (= (and d!1768354 (not c!980620)) b!5594562))

(assert (= (and b!5594562 c!980623) b!5594561))

(assert (= (and b!5594562 (not c!980623)) b!5594566))

(assert (= (and b!5594566 res!2373308) b!5594564))

(assert (= (and b!5594566 c!980622) b!5594560))

(assert (= (and b!5594566 (not c!980622)) b!5594565))

(assert (= (and b!5594565 c!980619) b!5594559))

(assert (= (and b!5594565 (not c!980619)) b!5594563))

(assert (= (and b!5594563 c!980621) b!5594569))

(assert (= (and b!5594563 (not c!980621)) b!5594567))

(assert (= (or b!5594559 b!5594569) bm!419363))

(assert (= (or b!5594559 b!5594569) bm!419361))

(assert (= (or b!5594560 bm!419363) bm!419358))

(assert (= (or b!5594560 bm!419361) bm!419359))

(assert (= (or b!5594561 bm!419359) bm!419360))

(assert (= (or b!5594561 b!5594560) bm!419362))

(declare-fun m!6574018 () Bool)

(assert (=> bm!419362 m!6574018))

(declare-fun m!6574020 () Bool)

(assert (=> bm!419360 m!6574020))

(declare-fun m!6574022 () Bool)

(assert (=> bm!419358 m!6574022))

(declare-fun m!6574024 () Bool)

(assert (=> b!5594564 m!6574024))

(declare-fun m!6574026 () Bool)

(assert (=> b!5594568 m!6574026))

(assert (=> bm!419189 d!1768354))

(declare-fun d!1768356 () Bool)

(assert (=> d!1768356 (= (isEmpty!34742 (findConcatSeparation!2004 (regOne!31674 r!7292) (regTwo!31674 r!7292) Nil!62920 s!2326 s!2326)) (not ((_ is Some!15589) (findConcatSeparation!2004 (regOne!31674 r!7292) (regTwo!31674 r!7292) Nil!62920 s!2326 s!2326))))))

(assert (=> d!1767908 d!1768356))

(declare-fun d!1768358 () Bool)

(assert (=> d!1768358 (= (isEmpty!34741 s!2326) ((_ is Nil!62920) s!2326))))

(assert (=> bm!419194 d!1768358))

(declare-fun c!980627 () Bool)

(declare-fun c!980624 () Bool)

(declare-fun bm!419364 () Bool)

(declare-fun call!419372 () List!63042)

(assert (=> bm!419364 (= call!419372 ($colon$colon!1643 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255845)))) (ite (or c!980627 c!980624) (regTwo!31674 (h!69366 (exprs!5465 lt!2255845))) (h!69366 (exprs!5465 lt!2255845)))))))

(declare-fun b!5594571 () Bool)

(declare-fun e!3451292 () (InoxSet Context!9930))

(declare-fun call!419369 () (InoxSet Context!9930))

(declare-fun call!419370 () (InoxSet Context!9930))

(assert (=> b!5594571 (= e!3451292 ((_ map or) call!419369 call!419370))))

(declare-fun b!5594572 () Bool)

(declare-fun e!3451293 () (InoxSet Context!9930))

(declare-fun call!419374 () (InoxSet Context!9930))

(assert (=> b!5594572 (= e!3451293 ((_ map or) call!419369 call!419374))))

(declare-fun b!5594573 () Bool)

(declare-fun e!3451290 () (InoxSet Context!9930))

(assert (=> b!5594573 (= e!3451290 e!3451293)))

(declare-fun c!980628 () Bool)

(assert (=> b!5594573 (= c!980628 ((_ is Union!15581) (h!69366 (exprs!5465 lt!2255845))))))

(declare-fun b!5594574 () Bool)

(declare-fun c!980626 () Bool)

(assert (=> b!5594574 (= c!980626 ((_ is Star!15581) (h!69366 (exprs!5465 lt!2255845))))))

(declare-fun e!3451289 () (InoxSet Context!9930))

(declare-fun e!3451291 () (InoxSet Context!9930))

(assert (=> b!5594574 (= e!3451289 e!3451291)))

(declare-fun b!5594575 () Bool)

(declare-fun e!3451288 () Bool)

(assert (=> b!5594575 (= e!3451288 (nullable!5613 (regOne!31674 (h!69366 (exprs!5465 lt!2255845)))))))

(declare-fun bm!419365 () Bool)

(assert (=> bm!419365 (= call!419370 call!419374)))

(declare-fun call!419371 () List!63042)

(declare-fun bm!419366 () Bool)

(assert (=> bm!419366 (= call!419374 (derivationStepZipperDown!923 (ite c!980628 (regTwo!31675 (h!69366 (exprs!5465 lt!2255845))) (ite c!980627 (regTwo!31674 (h!69366 (exprs!5465 lt!2255845))) (ite c!980624 (regOne!31674 (h!69366 (exprs!5465 lt!2255845))) (reg!15910 (h!69366 (exprs!5465 lt!2255845)))))) (ite (or c!980628 c!980627) (Context!9931 (t!376322 (exprs!5465 lt!2255845))) (Context!9931 call!419371)) (h!69368 s!2326)))))

(declare-fun b!5594576 () Bool)

(assert (=> b!5594576 (= e!3451292 e!3451289)))

(assert (=> b!5594576 (= c!980624 ((_ is Concat!24426) (h!69366 (exprs!5465 lt!2255845))))))

(declare-fun d!1768360 () Bool)

(declare-fun c!980625 () Bool)

(assert (=> d!1768360 (= c!980625 (and ((_ is ElementMatch!15581) (h!69366 (exprs!5465 lt!2255845))) (= (c!980214 (h!69366 (exprs!5465 lt!2255845))) (h!69368 s!2326))))))

(assert (=> d!1768360 (= (derivationStepZipperDown!923 (h!69366 (exprs!5465 lt!2255845)) (Context!9931 (t!376322 (exprs!5465 lt!2255845))) (h!69368 s!2326)) e!3451290)))

(declare-fun b!5594570 () Bool)

(declare-fun call!419373 () (InoxSet Context!9930))

(assert (=> b!5594570 (= e!3451289 call!419373)))

(declare-fun bm!419367 () Bool)

(assert (=> bm!419367 (= call!419373 call!419370)))

(declare-fun bm!419368 () Bool)

(assert (=> bm!419368 (= call!419369 (derivationStepZipperDown!923 (ite c!980628 (regOne!31675 (h!69366 (exprs!5465 lt!2255845))) (regOne!31674 (h!69366 (exprs!5465 lt!2255845)))) (ite c!980628 (Context!9931 (t!376322 (exprs!5465 lt!2255845))) (Context!9931 call!419372)) (h!69368 s!2326)))))

(declare-fun b!5594577 () Bool)

(assert (=> b!5594577 (= c!980627 e!3451288)))

(declare-fun res!2373309 () Bool)

(assert (=> b!5594577 (=> (not res!2373309) (not e!3451288))))

(assert (=> b!5594577 (= res!2373309 ((_ is Concat!24426) (h!69366 (exprs!5465 lt!2255845))))))

(assert (=> b!5594577 (= e!3451293 e!3451292)))

(declare-fun b!5594578 () Bool)

(assert (=> b!5594578 (= e!3451291 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594579 () Bool)

(assert (=> b!5594579 (= e!3451290 (store ((as const (Array Context!9930 Bool)) false) (Context!9931 (t!376322 (exprs!5465 lt!2255845))) true))))

(declare-fun bm!419369 () Bool)

(assert (=> bm!419369 (= call!419371 call!419372)))

(declare-fun b!5594580 () Bool)

(assert (=> b!5594580 (= e!3451291 call!419373)))

(assert (= (and d!1768360 c!980625) b!5594579))

(assert (= (and d!1768360 (not c!980625)) b!5594573))

(assert (= (and b!5594573 c!980628) b!5594572))

(assert (= (and b!5594573 (not c!980628)) b!5594577))

(assert (= (and b!5594577 res!2373309) b!5594575))

(assert (= (and b!5594577 c!980627) b!5594571))

(assert (= (and b!5594577 (not c!980627)) b!5594576))

(assert (= (and b!5594576 c!980624) b!5594570))

(assert (= (and b!5594576 (not c!980624)) b!5594574))

(assert (= (and b!5594574 c!980626) b!5594580))

(assert (= (and b!5594574 (not c!980626)) b!5594578))

(assert (= (or b!5594570 b!5594580) bm!419369))

(assert (= (or b!5594570 b!5594580) bm!419367))

(assert (= (or b!5594571 bm!419369) bm!419364))

(assert (= (or b!5594571 bm!419367) bm!419365))

(assert (= (or b!5594572 bm!419365) bm!419366))

(assert (= (or b!5594572 b!5594571) bm!419368))

(declare-fun m!6574028 () Bool)

(assert (=> bm!419368 m!6574028))

(declare-fun m!6574030 () Bool)

(assert (=> bm!419366 m!6574030))

(declare-fun m!6574032 () Bool)

(assert (=> bm!419364 m!6574032))

(declare-fun m!6574034 () Bool)

(assert (=> b!5594575 m!6574034))

(declare-fun m!6574036 () Bool)

(assert (=> b!5594579 m!6574036))

(assert (=> bm!419187 d!1768360))

(assert (=> d!1767972 d!1767970))

(assert (=> d!1767972 d!1767968))

(declare-fun d!1768362 () Bool)

(assert (=> d!1768362 (= (matchR!7766 r!7292 s!2326) (matchRSpec!2684 r!7292 s!2326))))

(assert (=> d!1768362 true))

(declare-fun _$88!3877 () Unit!155740)

(assert (=> d!1768362 (= (choose!42424 r!7292 s!2326) _$88!3877)))

(declare-fun bs!1293548 () Bool)

(assert (= bs!1293548 d!1768362))

(assert (=> bs!1293548 m!6572720))

(assert (=> bs!1293548 m!6572718))

(assert (=> d!1767972 d!1768362))

(assert (=> d!1767972 d!1767984))

(declare-fun d!1768364 () Bool)

(assert (=> d!1768364 (= (nullable!5613 (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) (nullableFct!1722 (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))))))

(declare-fun bs!1293549 () Bool)

(assert (= bs!1293549 d!1768364))

(declare-fun m!6574038 () Bool)

(assert (=> bs!1293549 m!6574038))

(assert (=> b!5593547 d!1768364))

(declare-fun d!1768366 () Bool)

(assert (=> d!1768366 (= (Exists!2681 (ite c!980398 lambda!300293 lambda!300294)) (choose!42415 (ite c!980398 lambda!300293 lambda!300294)))))

(declare-fun bs!1293550 () Bool)

(assert (= bs!1293550 d!1768366))

(declare-fun m!6574040 () Bool)

(assert (=> bs!1293550 m!6574040))

(assert (=> bm!419195 d!1768366))

(declare-fun d!1768368 () Bool)

(assert (=> d!1768368 (= (isConcat!658 lt!2255966) ((_ is Concat!24426) lt!2255966))))

(assert (=> b!5593758 d!1768368))

(declare-fun bs!1293551 () Bool)

(declare-fun d!1768370 () Bool)

(assert (= bs!1293551 (and d!1768370 d!1768000)))

(declare-fun lambda!300348 () Int)

(assert (=> bs!1293551 (= lambda!300348 lambda!300298)))

(declare-fun bs!1293552 () Bool)

(assert (= bs!1293552 (and d!1768370 d!1767858)))

(assert (=> bs!1293552 (= lambda!300348 lambda!300257)))

(declare-fun bs!1293553 () Bool)

(assert (= bs!1293553 (and d!1768370 d!1768314)))

(assert (=> bs!1293553 (= lambda!300348 lambda!300343)))

(declare-fun bs!1293554 () Bool)

(assert (= bs!1293554 (and d!1768370 d!1767990)))

(assert (=> bs!1293554 (= lambda!300348 lambda!300297)))

(declare-fun bs!1293555 () Bool)

(assert (= bs!1293555 (and d!1768370 d!1767966)))

(assert (=> bs!1293555 (= lambda!300348 lambda!300288)))

(declare-fun bs!1293556 () Bool)

(assert (= bs!1293556 (and d!1768370 d!1767852)))

(assert (=> bs!1293556 (= lambda!300348 lambda!300254)))

(declare-fun bs!1293557 () Bool)

(assert (= bs!1293557 (and d!1768370 d!1768284)))

(assert (=> bs!1293557 (= lambda!300348 lambda!300337)))

(assert (=> d!1768370 (= (inv!82199 (h!69367 (t!376323 zl!343))) (forall!14746 (exprs!5465 (h!69367 (t!376323 zl!343))) lambda!300348))))

(declare-fun bs!1293558 () Bool)

(assert (= bs!1293558 d!1768370))

(declare-fun m!6574042 () Bool)

(assert (=> bs!1293558 m!6574042))

(assert (=> b!5593826 d!1768370))

(declare-fun d!1768372 () Bool)

(assert (=> d!1768372 (= (nullable!5613 r!7292) (nullableFct!1722 r!7292))))

(declare-fun bs!1293559 () Bool)

(assert (= bs!1293559 d!1768372))

(declare-fun m!6574044 () Bool)

(assert (=> bs!1293559 m!6574044))

(assert (=> b!5593699 d!1768372))

(declare-fun bm!419370 () Bool)

(declare-fun c!980629 () Bool)

(declare-fun call!419378 () List!63042)

(declare-fun c!980632 () Bool)

(assert (=> bm!419370 (= call!419378 ($colon$colon!1643 (exprs!5465 (ite c!980319 lt!2255845 (Context!9931 call!419155))) (ite (or c!980632 c!980629) (regTwo!31674 (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))))) (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292)))))))))

(declare-fun b!5594582 () Bool)

(declare-fun e!3451298 () (InoxSet Context!9930))

(declare-fun call!419375 () (InoxSet Context!9930))

(declare-fun call!419376 () (InoxSet Context!9930))

(assert (=> b!5594582 (= e!3451298 ((_ map or) call!419375 call!419376))))

(declare-fun b!5594583 () Bool)

(declare-fun e!3451299 () (InoxSet Context!9930))

(declare-fun call!419380 () (InoxSet Context!9930))

(assert (=> b!5594583 (= e!3451299 ((_ map or) call!419375 call!419380))))

(declare-fun b!5594584 () Bool)

(declare-fun e!3451296 () (InoxSet Context!9930))

(assert (=> b!5594584 (= e!3451296 e!3451299)))

(declare-fun c!980633 () Bool)

(assert (=> b!5594584 (= c!980633 ((_ is Union!15581) (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))))))))

(declare-fun b!5594585 () Bool)

(declare-fun c!980631 () Bool)

(assert (=> b!5594585 (= c!980631 ((_ is Star!15581) (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))))))))

(declare-fun e!3451295 () (InoxSet Context!9930))

(declare-fun e!3451297 () (InoxSet Context!9930))

(assert (=> b!5594585 (= e!3451295 e!3451297)))

(declare-fun b!5594586 () Bool)

(declare-fun e!3451294 () Bool)

(assert (=> b!5594586 (= e!3451294 (nullable!5613 (regOne!31674 (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292)))))))))

(declare-fun bm!419371 () Bool)

(assert (=> bm!419371 (= call!419376 call!419380)))

(declare-fun bm!419372 () Bool)

(declare-fun call!419377 () List!63042)

(assert (=> bm!419372 (= call!419380 (derivationStepZipperDown!923 (ite c!980633 (regTwo!31675 (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))))) (ite c!980632 (regTwo!31674 (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))))) (ite c!980629 (regOne!31674 (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))))) (reg!15910 (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292)))))))) (ite (or c!980633 c!980632) (ite c!980319 lt!2255845 (Context!9931 call!419155)) (Context!9931 call!419377)) (h!69368 s!2326)))))

(declare-fun b!5594587 () Bool)

(assert (=> b!5594587 (= e!3451298 e!3451295)))

(assert (=> b!5594587 (= c!980629 ((_ is Concat!24426) (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))))))))

(declare-fun d!1768374 () Bool)

(declare-fun c!980630 () Bool)

(assert (=> d!1768374 (= c!980630 (and ((_ is ElementMatch!15581) (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))))) (= (c!980214 (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))))) (h!69368 s!2326))))))

(assert (=> d!1768374 (= (derivationStepZipperDown!923 (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292)))) (ite c!980319 lt!2255845 (Context!9931 call!419155)) (h!69368 s!2326)) e!3451296)))

(declare-fun b!5594581 () Bool)

(declare-fun call!419379 () (InoxSet Context!9930))

(assert (=> b!5594581 (= e!3451295 call!419379)))

(declare-fun bm!419373 () Bool)

(assert (=> bm!419373 (= call!419379 call!419376)))

(declare-fun bm!419374 () Bool)

(assert (=> bm!419374 (= call!419375 (derivationStepZipperDown!923 (ite c!980633 (regOne!31675 (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))))) (regOne!31674 (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292)))))) (ite c!980633 (ite c!980319 lt!2255845 (Context!9931 call!419155)) (Context!9931 call!419378)) (h!69368 s!2326)))))

(declare-fun b!5594588 () Bool)

(assert (=> b!5594588 (= c!980632 e!3451294)))

(declare-fun res!2373310 () Bool)

(assert (=> b!5594588 (=> (not res!2373310) (not e!3451294))))

(assert (=> b!5594588 (= res!2373310 ((_ is Concat!24426) (ite c!980319 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))))))))

(assert (=> b!5594588 (= e!3451299 e!3451298)))

(declare-fun b!5594589 () Bool)

(assert (=> b!5594589 (= e!3451297 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594590 () Bool)

(assert (=> b!5594590 (= e!3451296 (store ((as const (Array Context!9930 Bool)) false) (ite c!980319 lt!2255845 (Context!9931 call!419155)) true))))

(declare-fun bm!419375 () Bool)

(assert (=> bm!419375 (= call!419377 call!419378)))

(declare-fun b!5594591 () Bool)

(assert (=> b!5594591 (= e!3451297 call!419379)))

(assert (= (and d!1768374 c!980630) b!5594590))

(assert (= (and d!1768374 (not c!980630)) b!5594584))

(assert (= (and b!5594584 c!980633) b!5594583))

(assert (= (and b!5594584 (not c!980633)) b!5594588))

(assert (= (and b!5594588 res!2373310) b!5594586))

(assert (= (and b!5594588 c!980632) b!5594582))

(assert (= (and b!5594588 (not c!980632)) b!5594587))

(assert (= (and b!5594587 c!980629) b!5594581))

(assert (= (and b!5594587 (not c!980629)) b!5594585))

(assert (= (and b!5594585 c!980631) b!5594591))

(assert (= (and b!5594585 (not c!980631)) b!5594589))

(assert (= (or b!5594581 b!5594591) bm!419375))

(assert (= (or b!5594581 b!5594591) bm!419373))

(assert (= (or b!5594582 bm!419375) bm!419370))

(assert (= (or b!5594582 bm!419373) bm!419371))

(assert (= (or b!5594583 bm!419371) bm!419372))

(assert (= (or b!5594583 b!5594582) bm!419374))

(declare-fun m!6574046 () Bool)

(assert (=> bm!419374 m!6574046))

(declare-fun m!6574048 () Bool)

(assert (=> bm!419372 m!6574048))

(declare-fun m!6574050 () Bool)

(assert (=> bm!419370 m!6574050))

(declare-fun m!6574052 () Bool)

(assert (=> b!5594586 m!6574052))

(declare-fun m!6574054 () Bool)

(assert (=> b!5594590 m!6574054))

(assert (=> bm!419151 d!1768374))

(declare-fun d!1768376 () Bool)

(assert (=> d!1768376 (= (head!11930 (unfocusZipperList!1009 zl!343)) (h!69366 (unfocusZipperList!1009 zl!343)))))

(assert (=> b!5593279 d!1768376))

(declare-fun d!1768378 () Bool)

(assert (=> d!1768378 (= (nullable!5613 (regOne!31674 (regOne!31675 (regOne!31674 r!7292)))) (nullableFct!1722 (regOne!31674 (regOne!31675 (regOne!31674 r!7292)))))))

(declare-fun bs!1293560 () Bool)

(assert (= bs!1293560 d!1768378))

(declare-fun m!6574056 () Bool)

(assert (=> bs!1293560 m!6574056))

(assert (=> b!5593352 d!1768378))

(declare-fun d!1768380 () Bool)

(assert (=> d!1768380 (= (nullable!5613 (reg!15910 r!7292)) (nullableFct!1722 (reg!15910 r!7292)))))

(declare-fun bs!1293561 () Bool)

(assert (= bs!1293561 d!1768380))

(declare-fun m!6574058 () Bool)

(assert (=> bs!1293561 m!6574058))

(assert (=> b!5593729 d!1768380))

(declare-fun d!1768382 () Bool)

(declare-fun e!3451301 () Bool)

(assert (=> d!1768382 e!3451301))

(declare-fun c!980636 () Bool)

(assert (=> d!1768382 (= c!980636 ((_ is EmptyExpr!15581) (regTwo!31674 r!7292)))))

(declare-fun lt!2255993 () Bool)

(declare-fun e!3451305 () Bool)

(assert (=> d!1768382 (= lt!2255993 e!3451305)))

(declare-fun c!980635 () Bool)

(assert (=> d!1768382 (= c!980635 (isEmpty!34741 (_2!35981 (get!21667 lt!2255927))))))

(assert (=> d!1768382 (validRegex!7317 (regTwo!31674 r!7292))))

(assert (=> d!1768382 (= (matchR!7766 (regTwo!31674 r!7292) (_2!35981 (get!21667 lt!2255927))) lt!2255993)))

(declare-fun b!5594592 () Bool)

(assert (=> b!5594592 (= e!3451305 (matchR!7766 (derivativeStep!4429 (regTwo!31674 r!7292) (head!11931 (_2!35981 (get!21667 lt!2255927)))) (tail!11026 (_2!35981 (get!21667 lt!2255927)))))))

(declare-fun b!5594593 () Bool)

(declare-fun e!3451300 () Bool)

(assert (=> b!5594593 (= e!3451300 (not (= (head!11931 (_2!35981 (get!21667 lt!2255927))) (c!980214 (regTwo!31674 r!7292)))))))

(declare-fun b!5594594 () Bool)

(declare-fun res!2373311 () Bool)

(declare-fun e!3451302 () Bool)

(assert (=> b!5594594 (=> res!2373311 e!3451302)))

(declare-fun e!3451304 () Bool)

(assert (=> b!5594594 (= res!2373311 e!3451304)))

(declare-fun res!2373314 () Bool)

(assert (=> b!5594594 (=> (not res!2373314) (not e!3451304))))

(assert (=> b!5594594 (= res!2373314 lt!2255993)))

(declare-fun b!5594595 () Bool)

(declare-fun res!2373313 () Bool)

(assert (=> b!5594595 (=> res!2373313 e!3451300)))

(assert (=> b!5594595 (= res!2373313 (not (isEmpty!34741 (tail!11026 (_2!35981 (get!21667 lt!2255927))))))))

(declare-fun bm!419376 () Bool)

(declare-fun call!419381 () Bool)

(assert (=> bm!419376 (= call!419381 (isEmpty!34741 (_2!35981 (get!21667 lt!2255927))))))

(declare-fun b!5594596 () Bool)

(declare-fun e!3451303 () Bool)

(assert (=> b!5594596 (= e!3451303 (not lt!2255993))))

(declare-fun b!5594597 () Bool)

(declare-fun e!3451306 () Bool)

(assert (=> b!5594597 (= e!3451306 e!3451300)))

(declare-fun res!2373312 () Bool)

(assert (=> b!5594597 (=> res!2373312 e!3451300)))

(assert (=> b!5594597 (= res!2373312 call!419381)))

(declare-fun b!5594598 () Bool)

(declare-fun res!2373318 () Bool)

(assert (=> b!5594598 (=> res!2373318 e!3451302)))

(assert (=> b!5594598 (= res!2373318 (not ((_ is ElementMatch!15581) (regTwo!31674 r!7292))))))

(assert (=> b!5594598 (= e!3451303 e!3451302)))

(declare-fun b!5594599 () Bool)

(assert (=> b!5594599 (= e!3451301 (= lt!2255993 call!419381))))

(declare-fun b!5594600 () Bool)

(assert (=> b!5594600 (= e!3451304 (= (head!11931 (_2!35981 (get!21667 lt!2255927))) (c!980214 (regTwo!31674 r!7292))))))

(declare-fun b!5594601 () Bool)

(declare-fun res!2373316 () Bool)

(assert (=> b!5594601 (=> (not res!2373316) (not e!3451304))))

(assert (=> b!5594601 (= res!2373316 (not call!419381))))

(declare-fun b!5594602 () Bool)

(assert (=> b!5594602 (= e!3451305 (nullable!5613 (regTwo!31674 r!7292)))))

(declare-fun b!5594603 () Bool)

(declare-fun res!2373317 () Bool)

(assert (=> b!5594603 (=> (not res!2373317) (not e!3451304))))

(assert (=> b!5594603 (= res!2373317 (isEmpty!34741 (tail!11026 (_2!35981 (get!21667 lt!2255927)))))))

(declare-fun b!5594604 () Bool)

(assert (=> b!5594604 (= e!3451301 e!3451303)))

(declare-fun c!980634 () Bool)

(assert (=> b!5594604 (= c!980634 ((_ is EmptyLang!15581) (regTwo!31674 r!7292)))))

(declare-fun b!5594605 () Bool)

(assert (=> b!5594605 (= e!3451302 e!3451306)))

(declare-fun res!2373315 () Bool)

(assert (=> b!5594605 (=> (not res!2373315) (not e!3451306))))

(assert (=> b!5594605 (= res!2373315 (not lt!2255993))))

(assert (= (and d!1768382 c!980635) b!5594602))

(assert (= (and d!1768382 (not c!980635)) b!5594592))

(assert (= (and d!1768382 c!980636) b!5594599))

(assert (= (and d!1768382 (not c!980636)) b!5594604))

(assert (= (and b!5594604 c!980634) b!5594596))

(assert (= (and b!5594604 (not c!980634)) b!5594598))

(assert (= (and b!5594598 (not res!2373318)) b!5594594))

(assert (= (and b!5594594 res!2373314) b!5594601))

(assert (= (and b!5594601 res!2373316) b!5594603))

(assert (= (and b!5594603 res!2373317) b!5594600))

(assert (= (and b!5594594 (not res!2373311)) b!5594605))

(assert (= (and b!5594605 res!2373315) b!5594597))

(assert (= (and b!5594597 (not res!2373312)) b!5594595))

(assert (= (and b!5594595 (not res!2373313)) b!5594593))

(assert (= (or b!5594599 b!5594597 b!5594601) bm!419376))

(assert (=> b!5594602 m!6573914))

(declare-fun m!6574060 () Bool)

(assert (=> b!5594600 m!6574060))

(assert (=> b!5594593 m!6574060))

(declare-fun m!6574062 () Bool)

(assert (=> d!1768382 m!6574062))

(assert (=> d!1768382 m!6573916))

(declare-fun m!6574064 () Bool)

(assert (=> b!5594595 m!6574064))

(assert (=> b!5594595 m!6574064))

(declare-fun m!6574066 () Bool)

(assert (=> b!5594595 m!6574066))

(assert (=> bm!419376 m!6574062))

(assert (=> b!5594603 m!6574064))

(assert (=> b!5594603 m!6574064))

(assert (=> b!5594603 m!6574066))

(assert (=> b!5594592 m!6574060))

(assert (=> b!5594592 m!6574060))

(declare-fun m!6574068 () Bool)

(assert (=> b!5594592 m!6574068))

(assert (=> b!5594592 m!6574064))

(assert (=> b!5594592 m!6574068))

(assert (=> b!5594592 m!6574064))

(declare-fun m!6574070 () Bool)

(assert (=> b!5594592 m!6574070))

(assert (=> b!5593401 d!1768382))

(declare-fun d!1768384 () Bool)

(assert (=> d!1768384 (= (get!21667 lt!2255927) (v!51630 lt!2255927))))

(assert (=> b!5593401 d!1768384))

(declare-fun bs!1293562 () Bool)

(declare-fun b!5594615 () Bool)

(assert (= bs!1293562 (and b!5594615 d!1767890)))

(declare-fun lambda!300349 () Int)

(assert (=> bs!1293562 (not (= lambda!300349 lambda!300280))))

(assert (=> bs!1293562 (not (= lambda!300349 lambda!300281))))

(declare-fun bs!1293563 () Bool)

(assert (= bs!1293563 (and b!5594615 b!5593659)))

(assert (=> bs!1293563 (= (and (= (reg!15910 (regOne!31675 r!7292)) (reg!15910 r!7292)) (= (regOne!31675 r!7292) r!7292)) (= lambda!300349 lambda!300293))))

(declare-fun bs!1293564 () Bool)

(assert (= bs!1293564 (and b!5594615 d!1768324)))

(assert (=> bs!1293564 (not (= lambda!300349 lambda!300346))))

(declare-fun bs!1293565 () Bool)

(assert (= bs!1293565 (and b!5594615 b!5593653)))

(assert (=> bs!1293565 (not (= lambda!300349 lambda!300294))))

(declare-fun bs!1293566 () Bool)

(assert (= bs!1293566 (and b!5594615 b!5593022)))

(assert (=> bs!1293566 (not (= lambda!300349 lambda!300241))))

(declare-fun bs!1293567 () Bool)

(assert (= bs!1293567 (and b!5594615 d!1767886)))

(assert (=> bs!1293567 (not (= lambda!300349 lambda!300272))))

(assert (=> bs!1293566 (not (= lambda!300349 lambda!300240))))

(assert (=> b!5594615 true))

(assert (=> b!5594615 true))

(declare-fun bs!1293568 () Bool)

(declare-fun b!5594609 () Bool)

(assert (= bs!1293568 (and b!5594609 b!5594615)))

(declare-fun lambda!300350 () Int)

(assert (=> bs!1293568 (not (= lambda!300350 lambda!300349))))

(declare-fun bs!1293569 () Bool)

(assert (= bs!1293569 (and b!5594609 d!1767890)))

(assert (=> bs!1293569 (not (= lambda!300350 lambda!300280))))

(assert (=> bs!1293569 (= (and (= (regOne!31674 (regOne!31675 r!7292)) (regOne!31674 r!7292)) (= (regTwo!31674 (regOne!31675 r!7292)) (regTwo!31674 r!7292))) (= lambda!300350 lambda!300281))))

(declare-fun bs!1293570 () Bool)

(assert (= bs!1293570 (and b!5594609 b!5593659)))

(assert (=> bs!1293570 (not (= lambda!300350 lambda!300293))))

(declare-fun bs!1293571 () Bool)

(assert (= bs!1293571 (and b!5594609 d!1768324)))

(assert (=> bs!1293571 (not (= lambda!300350 lambda!300346))))

(declare-fun bs!1293572 () Bool)

(assert (= bs!1293572 (and b!5594609 b!5593653)))

(assert (=> bs!1293572 (= (and (= (regOne!31674 (regOne!31675 r!7292)) (regOne!31674 r!7292)) (= (regTwo!31674 (regOne!31675 r!7292)) (regTwo!31674 r!7292))) (= lambda!300350 lambda!300294))))

(declare-fun bs!1293573 () Bool)

(assert (= bs!1293573 (and b!5594609 b!5593022)))

(assert (=> bs!1293573 (= (and (= (regOne!31674 (regOne!31675 r!7292)) (regOne!31674 r!7292)) (= (regTwo!31674 (regOne!31675 r!7292)) (regTwo!31674 r!7292))) (= lambda!300350 lambda!300241))))

(declare-fun bs!1293574 () Bool)

(assert (= bs!1293574 (and b!5594609 d!1767886)))

(assert (=> bs!1293574 (not (= lambda!300350 lambda!300272))))

(assert (=> bs!1293573 (not (= lambda!300350 lambda!300240))))

(assert (=> b!5594609 true))

(assert (=> b!5594609 true))

(declare-fun b!5594606 () Bool)

(declare-fun c!980639 () Bool)

(assert (=> b!5594606 (= c!980639 ((_ is Union!15581) (regOne!31675 r!7292)))))

(declare-fun e!3451313 () Bool)

(declare-fun e!3451308 () Bool)

(assert (=> b!5594606 (= e!3451313 e!3451308)))

(declare-fun b!5594607 () Bool)

(declare-fun c!980640 () Bool)

(assert (=> b!5594607 (= c!980640 ((_ is ElementMatch!15581) (regOne!31675 r!7292)))))

(declare-fun e!3451311 () Bool)

(assert (=> b!5594607 (= e!3451311 e!3451313)))

(declare-fun b!5594608 () Bool)

(assert (=> b!5594608 (= e!3451313 (= s!2326 (Cons!62920 (c!980214 (regOne!31675 r!7292)) Nil!62920)))))

(declare-fun d!1768386 () Bool)

(declare-fun c!980638 () Bool)

(assert (=> d!1768386 (= c!980638 ((_ is EmptyExpr!15581) (regOne!31675 r!7292)))))

(declare-fun e!3451310 () Bool)

(assert (=> d!1768386 (= (matchRSpec!2684 (regOne!31675 r!7292) s!2326) e!3451310)))

(declare-fun e!3451309 () Bool)

(declare-fun call!419382 () Bool)

(assert (=> b!5594609 (= e!3451309 call!419382)))

(declare-fun bm!419377 () Bool)

(declare-fun call!419383 () Bool)

(assert (=> bm!419377 (= call!419383 (isEmpty!34741 s!2326))))

(declare-fun b!5594610 () Bool)

(assert (=> b!5594610 (= e!3451310 e!3451311)))

(declare-fun res!2373319 () Bool)

(assert (=> b!5594610 (= res!2373319 (not ((_ is EmptyLang!15581) (regOne!31675 r!7292))))))

(assert (=> b!5594610 (=> (not res!2373319) (not e!3451311))))

(declare-fun b!5594611 () Bool)

(declare-fun e!3451307 () Bool)

(assert (=> b!5594611 (= e!3451307 (matchRSpec!2684 (regTwo!31675 (regOne!31675 r!7292)) s!2326))))

(declare-fun b!5594612 () Bool)

(assert (=> b!5594612 (= e!3451310 call!419383)))

(declare-fun bm!419378 () Bool)

(declare-fun c!980637 () Bool)

(assert (=> bm!419378 (= call!419382 (Exists!2681 (ite c!980637 lambda!300349 lambda!300350)))))

(declare-fun b!5594613 () Bool)

(declare-fun res!2373321 () Bool)

(declare-fun e!3451312 () Bool)

(assert (=> b!5594613 (=> res!2373321 e!3451312)))

(assert (=> b!5594613 (= res!2373321 call!419383)))

(assert (=> b!5594613 (= e!3451309 e!3451312)))

(declare-fun b!5594614 () Bool)

(assert (=> b!5594614 (= e!3451308 e!3451309)))

(assert (=> b!5594614 (= c!980637 ((_ is Star!15581) (regOne!31675 r!7292)))))

(assert (=> b!5594615 (= e!3451312 call!419382)))

(declare-fun b!5594616 () Bool)

(assert (=> b!5594616 (= e!3451308 e!3451307)))

(declare-fun res!2373320 () Bool)

(assert (=> b!5594616 (= res!2373320 (matchRSpec!2684 (regOne!31675 (regOne!31675 r!7292)) s!2326))))

(assert (=> b!5594616 (=> res!2373320 e!3451307)))

(assert (= (and d!1768386 c!980638) b!5594612))

(assert (= (and d!1768386 (not c!980638)) b!5594610))

(assert (= (and b!5594610 res!2373319) b!5594607))

(assert (= (and b!5594607 c!980640) b!5594608))

(assert (= (and b!5594607 (not c!980640)) b!5594606))

(assert (= (and b!5594606 c!980639) b!5594616))

(assert (= (and b!5594606 (not c!980639)) b!5594614))

(assert (= (and b!5594616 (not res!2373320)) b!5594611))

(assert (= (and b!5594614 c!980637) b!5594613))

(assert (= (and b!5594614 (not c!980637)) b!5594609))

(assert (= (and b!5594613 (not res!2373321)) b!5594615))

(assert (= (or b!5594615 b!5594609) bm!419378))

(assert (= (or b!5594612 b!5594613) bm!419377))

(assert (=> bm!419377 m!6573240))

(declare-fun m!6574072 () Bool)

(assert (=> b!5594611 m!6574072))

(declare-fun m!6574074 () Bool)

(assert (=> bm!419378 m!6574074))

(declare-fun m!6574076 () Bool)

(assert (=> b!5594616 m!6574076))

(assert (=> b!5593660 d!1768386))

(declare-fun d!1768388 () Bool)

(assert (=> d!1768388 (= (isEmpty!34738 (exprs!5465 (h!69367 zl!343))) ((_ is Nil!62918) (exprs!5465 (h!69367 zl!343))))))

(assert (=> b!5593762 d!1768388))

(assert (=> d!1767948 d!1767958))

(declare-fun d!1768390 () Bool)

(assert (=> d!1768390 (= (flatMap!1194 lt!2255854 lambda!300242) (dynLambda!24609 lambda!300242 lt!2255869))))

(assert (=> d!1768390 true))

(declare-fun _$13!2201 () Unit!155740)

(assert (=> d!1768390 (= (choose!42421 lt!2255854 lt!2255869 lambda!300242) _$13!2201)))

(declare-fun b_lambda!212001 () Bool)

(assert (=> (not b_lambda!212001) (not d!1768390)))

(declare-fun bs!1293575 () Bool)

(assert (= bs!1293575 d!1768390))

(assert (=> bs!1293575 m!6572736))

(assert (=> bs!1293575 m!6573208))

(assert (=> d!1767948 d!1768390))

(declare-fun b!5594617 () Bool)

(declare-fun e!3451318 () Bool)

(declare-fun e!3451316 () Bool)

(assert (=> b!5594617 (= e!3451318 e!3451316)))

(declare-fun res!2373326 () Bool)

(assert (=> b!5594617 (= res!2373326 (not (nullable!5613 (reg!15910 (ite c!980417 (regOne!31675 r!7292) (regOne!31674 r!7292))))))))

(assert (=> b!5594617 (=> (not res!2373326) (not e!3451316))))

(declare-fun b!5594618 () Bool)

(declare-fun call!419386 () Bool)

(assert (=> b!5594618 (= e!3451316 call!419386)))

(declare-fun b!5594619 () Bool)

(declare-fun e!3451319 () Bool)

(assert (=> b!5594619 (= e!3451319 e!3451318)))

(declare-fun c!980642 () Bool)

(assert (=> b!5594619 (= c!980642 ((_ is Star!15581) (ite c!980417 (regOne!31675 r!7292) (regOne!31674 r!7292))))))

(declare-fun bm!419379 () Bool)

(declare-fun call!419384 () Bool)

(assert (=> bm!419379 (= call!419384 call!419386)))

(declare-fun d!1768392 () Bool)

(declare-fun res!2373323 () Bool)

(assert (=> d!1768392 (=> res!2373323 e!3451319)))

(assert (=> d!1768392 (= res!2373323 ((_ is ElementMatch!15581) (ite c!980417 (regOne!31675 r!7292) (regOne!31674 r!7292))))))

(assert (=> d!1768392 (= (validRegex!7317 (ite c!980417 (regOne!31675 r!7292) (regOne!31674 r!7292))) e!3451319)))

(declare-fun call!419385 () Bool)

(declare-fun bm!419380 () Bool)

(declare-fun c!980641 () Bool)

(assert (=> bm!419380 (= call!419385 (validRegex!7317 (ite c!980641 (regOne!31675 (ite c!980417 (regOne!31675 r!7292) (regOne!31674 r!7292))) (regOne!31674 (ite c!980417 (regOne!31675 r!7292) (regOne!31674 r!7292))))))))

(declare-fun bm!419381 () Bool)

(assert (=> bm!419381 (= call!419386 (validRegex!7317 (ite c!980642 (reg!15910 (ite c!980417 (regOne!31675 r!7292) (regOne!31674 r!7292))) (ite c!980641 (regTwo!31675 (ite c!980417 (regOne!31675 r!7292) (regOne!31674 r!7292))) (regTwo!31674 (ite c!980417 (regOne!31675 r!7292) (regOne!31674 r!7292)))))))))

(declare-fun b!5594620 () Bool)

(declare-fun res!2373322 () Bool)

(declare-fun e!3451320 () Bool)

(assert (=> b!5594620 (=> (not res!2373322) (not e!3451320))))

(assert (=> b!5594620 (= res!2373322 call!419385)))

(declare-fun e!3451315 () Bool)

(assert (=> b!5594620 (= e!3451315 e!3451320)))

(declare-fun b!5594621 () Bool)

(declare-fun e!3451314 () Bool)

(declare-fun e!3451317 () Bool)

(assert (=> b!5594621 (= e!3451314 e!3451317)))

(declare-fun res!2373324 () Bool)

(assert (=> b!5594621 (=> (not res!2373324) (not e!3451317))))

(assert (=> b!5594621 (= res!2373324 call!419385)))

(declare-fun b!5594622 () Bool)

(declare-fun res!2373325 () Bool)

(assert (=> b!5594622 (=> res!2373325 e!3451314)))

(assert (=> b!5594622 (= res!2373325 (not ((_ is Concat!24426) (ite c!980417 (regOne!31675 r!7292) (regOne!31674 r!7292)))))))

(assert (=> b!5594622 (= e!3451315 e!3451314)))

(declare-fun b!5594623 () Bool)

(assert (=> b!5594623 (= e!3451317 call!419384)))

(declare-fun b!5594624 () Bool)

(assert (=> b!5594624 (= e!3451320 call!419384)))

(declare-fun b!5594625 () Bool)

(assert (=> b!5594625 (= e!3451318 e!3451315)))

(assert (=> b!5594625 (= c!980641 ((_ is Union!15581) (ite c!980417 (regOne!31675 r!7292) (regOne!31674 r!7292))))))

(assert (= (and d!1768392 (not res!2373323)) b!5594619))

(assert (= (and b!5594619 c!980642) b!5594617))

(assert (= (and b!5594619 (not c!980642)) b!5594625))

(assert (= (and b!5594617 res!2373326) b!5594618))

(assert (= (and b!5594625 c!980641) b!5594620))

(assert (= (and b!5594625 (not c!980641)) b!5594622))

(assert (= (and b!5594620 res!2373322) b!5594624))

(assert (= (and b!5594622 (not res!2373325)) b!5594621))

(assert (= (and b!5594621 res!2373324) b!5594623))

(assert (= (or b!5594624 b!5594623) bm!419379))

(assert (= (or b!5594620 b!5594621) bm!419380))

(assert (= (or b!5594618 bm!419379) bm!419381))

(declare-fun m!6574078 () Bool)

(assert (=> b!5594617 m!6574078))

(declare-fun m!6574080 () Bool)

(assert (=> bm!419380 m!6574080))

(declare-fun m!6574082 () Bool)

(assert (=> bm!419381 m!6574082))

(assert (=> bm!419206 d!1768392))

(declare-fun d!1768394 () Bool)

(declare-fun c!980645 () Bool)

(assert (=> d!1768394 (= c!980645 ((_ is Nil!62919) lt!2255959))))

(declare-fun e!3451323 () (InoxSet Context!9930))

(assert (=> d!1768394 (= (content!11356 lt!2255959) e!3451323)))

(declare-fun b!5594630 () Bool)

(assert (=> b!5594630 (= e!3451323 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594631 () Bool)

(assert (=> b!5594631 (= e!3451323 ((_ map or) (store ((as const (Array Context!9930 Bool)) false) (h!69367 lt!2255959) true) (content!11356 (t!376323 lt!2255959))))))

(assert (= (and d!1768394 c!980645) b!5594630))

(assert (= (and d!1768394 (not c!980645)) b!5594631))

(declare-fun m!6574084 () Bool)

(assert (=> b!5594631 m!6574084))

(declare-fun m!6574086 () Bool)

(assert (=> b!5594631 m!6574086))

(assert (=> b!5593705 d!1768394))

(assert (=> d!1767870 d!1768282))

(assert (=> d!1767936 d!1767926))

(declare-fun d!1768396 () Bool)

(assert (=> d!1768396 (= (flatMap!1194 z!1189 lambda!300242) (dynLambda!24609 lambda!300242 (h!69367 zl!343)))))

(assert (=> d!1768396 true))

(declare-fun _$13!2202 () Unit!155740)

(assert (=> d!1768396 (= (choose!42421 z!1189 (h!69367 zl!343) lambda!300242) _$13!2202)))

(declare-fun b_lambda!212003 () Bool)

(assert (=> (not b_lambda!212003) (not d!1768396)))

(declare-fun bs!1293576 () Bool)

(assert (= bs!1293576 d!1768396))

(assert (=> bs!1293576 m!6572772))

(assert (=> bs!1293576 m!6573174))

(assert (=> d!1767936 d!1768396))

(declare-fun d!1768398 () Bool)

(declare-fun res!2373331 () Bool)

(declare-fun e!3451327 () Bool)

(assert (=> d!1768398 (=> res!2373331 e!3451327)))

(assert (=> d!1768398 (= res!2373331 ((_ is EmptyExpr!15581) (regOne!31675 (regOne!31674 r!7292))))))

(assert (=> d!1768398 (= (nullableFct!1722 (regOne!31675 (regOne!31674 r!7292))) e!3451327)))

(declare-fun bm!419382 () Bool)

(declare-fun call!419388 () Bool)

(declare-fun c!980646 () Bool)

(assert (=> bm!419382 (= call!419388 (nullable!5613 (ite c!980646 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292))))))))

(declare-fun b!5594632 () Bool)

(declare-fun e!3451324 () Bool)

(declare-fun call!419387 () Bool)

(assert (=> b!5594632 (= e!3451324 call!419387)))

(declare-fun b!5594633 () Bool)

(declare-fun e!3451326 () Bool)

(assert (=> b!5594633 (= e!3451327 e!3451326)))

(declare-fun res!2373330 () Bool)

(assert (=> b!5594633 (=> (not res!2373330) (not e!3451326))))

(assert (=> b!5594633 (= res!2373330 (and (not ((_ is EmptyLang!15581) (regOne!31675 (regOne!31674 r!7292)))) (not ((_ is ElementMatch!15581) (regOne!31675 (regOne!31674 r!7292))))))))

(declare-fun b!5594634 () Bool)

(declare-fun e!3451325 () Bool)

(assert (=> b!5594634 (= e!3451325 call!419387)))

(declare-fun b!5594635 () Bool)

(declare-fun e!3451329 () Bool)

(assert (=> b!5594635 (= e!3451329 e!3451324)))

(declare-fun res!2373327 () Bool)

(assert (=> b!5594635 (= res!2373327 call!419388)))

(assert (=> b!5594635 (=> res!2373327 e!3451324)))

(declare-fun bm!419383 () Bool)

(assert (=> bm!419383 (= call!419387 (nullable!5613 (ite c!980646 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))))))))

(declare-fun b!5594636 () Bool)

(declare-fun e!3451328 () Bool)

(assert (=> b!5594636 (= e!3451328 e!3451329)))

(assert (=> b!5594636 (= c!980646 ((_ is Union!15581) (regOne!31675 (regOne!31674 r!7292))))))

(declare-fun b!5594637 () Bool)

(assert (=> b!5594637 (= e!3451329 e!3451325)))

(declare-fun res!2373328 () Bool)

(assert (=> b!5594637 (= res!2373328 call!419388)))

(assert (=> b!5594637 (=> (not res!2373328) (not e!3451325))))

(declare-fun b!5594638 () Bool)

(assert (=> b!5594638 (= e!3451326 e!3451328)))

(declare-fun res!2373329 () Bool)

(assert (=> b!5594638 (=> res!2373329 e!3451328)))

(assert (=> b!5594638 (= res!2373329 ((_ is Star!15581) (regOne!31675 (regOne!31674 r!7292))))))

(assert (= (and d!1768398 (not res!2373331)) b!5594633))

(assert (= (and b!5594633 res!2373330) b!5594638))

(assert (= (and b!5594638 (not res!2373329)) b!5594636))

(assert (= (and b!5594636 c!980646) b!5594635))

(assert (= (and b!5594636 (not c!980646)) b!5594637))

(assert (= (and b!5594635 (not res!2373327)) b!5594632))

(assert (= (and b!5594637 res!2373328) b!5594634))

(assert (= (or b!5594632 b!5594634) bm!419383))

(assert (= (or b!5594635 b!5594637) bm!419382))

(declare-fun m!6574088 () Bool)

(assert (=> bm!419382 m!6574088))

(declare-fun m!6574090 () Bool)

(assert (=> bm!419383 m!6574090))

(assert (=> d!1767960 d!1768398))

(declare-fun b!5594639 () Bool)

(declare-fun e!3451334 () Bool)

(declare-fun e!3451332 () Bool)

(assert (=> b!5594639 (= e!3451334 e!3451332)))

(declare-fun res!2373336 () Bool)

(assert (=> b!5594639 (= res!2373336 (not (nullable!5613 (reg!15910 lt!2255898))))))

(assert (=> b!5594639 (=> (not res!2373336) (not e!3451332))))

(declare-fun b!5594640 () Bool)

(declare-fun call!419391 () Bool)

(assert (=> b!5594640 (= e!3451332 call!419391)))

(declare-fun b!5594641 () Bool)

(declare-fun e!3451335 () Bool)

(assert (=> b!5594641 (= e!3451335 e!3451334)))

(declare-fun c!980648 () Bool)

(assert (=> b!5594641 (= c!980648 ((_ is Star!15581) lt!2255898))))

(declare-fun bm!419384 () Bool)

(declare-fun call!419389 () Bool)

(assert (=> bm!419384 (= call!419389 call!419391)))

(declare-fun d!1768400 () Bool)

(declare-fun res!2373333 () Bool)

(assert (=> d!1768400 (=> res!2373333 e!3451335)))

(assert (=> d!1768400 (= res!2373333 ((_ is ElementMatch!15581) lt!2255898))))

(assert (=> d!1768400 (= (validRegex!7317 lt!2255898) e!3451335)))

(declare-fun bm!419385 () Bool)

(declare-fun call!419390 () Bool)

(declare-fun c!980647 () Bool)

(assert (=> bm!419385 (= call!419390 (validRegex!7317 (ite c!980647 (regOne!31675 lt!2255898) (regOne!31674 lt!2255898))))))

(declare-fun bm!419386 () Bool)

(assert (=> bm!419386 (= call!419391 (validRegex!7317 (ite c!980648 (reg!15910 lt!2255898) (ite c!980647 (regTwo!31675 lt!2255898) (regTwo!31674 lt!2255898)))))))

(declare-fun b!5594642 () Bool)

(declare-fun res!2373332 () Bool)

(declare-fun e!3451336 () Bool)

(assert (=> b!5594642 (=> (not res!2373332) (not e!3451336))))

(assert (=> b!5594642 (= res!2373332 call!419390)))

(declare-fun e!3451331 () Bool)

(assert (=> b!5594642 (= e!3451331 e!3451336)))

(declare-fun b!5594643 () Bool)

(declare-fun e!3451330 () Bool)

(declare-fun e!3451333 () Bool)

(assert (=> b!5594643 (= e!3451330 e!3451333)))

(declare-fun res!2373334 () Bool)

(assert (=> b!5594643 (=> (not res!2373334) (not e!3451333))))

(assert (=> b!5594643 (= res!2373334 call!419390)))

(declare-fun b!5594644 () Bool)

(declare-fun res!2373335 () Bool)

(assert (=> b!5594644 (=> res!2373335 e!3451330)))

(assert (=> b!5594644 (= res!2373335 (not ((_ is Concat!24426) lt!2255898)))))

(assert (=> b!5594644 (= e!3451331 e!3451330)))

(declare-fun b!5594645 () Bool)

(assert (=> b!5594645 (= e!3451333 call!419389)))

(declare-fun b!5594646 () Bool)

(assert (=> b!5594646 (= e!3451336 call!419389)))

(declare-fun b!5594647 () Bool)

(assert (=> b!5594647 (= e!3451334 e!3451331)))

(assert (=> b!5594647 (= c!980647 ((_ is Union!15581) lt!2255898))))

(assert (= (and d!1768400 (not res!2373333)) b!5594641))

(assert (= (and b!5594641 c!980648) b!5594639))

(assert (= (and b!5594641 (not c!980648)) b!5594647))

(assert (= (and b!5594639 res!2373336) b!5594640))

(assert (= (and b!5594647 c!980647) b!5594642))

(assert (= (and b!5594647 (not c!980647)) b!5594644))

(assert (= (and b!5594642 res!2373332) b!5594646))

(assert (= (and b!5594644 (not res!2373335)) b!5594643))

(assert (= (and b!5594643 res!2373334) b!5594645))

(assert (= (or b!5594646 b!5594645) bm!419384))

(assert (= (or b!5594642 b!5594643) bm!419385))

(assert (= (or b!5594640 bm!419384) bm!419386))

(declare-fun m!6574092 () Bool)

(assert (=> b!5594639 m!6574092))

(declare-fun m!6574094 () Bool)

(assert (=> bm!419385 m!6574094))

(declare-fun m!6574096 () Bool)

(assert (=> bm!419386 m!6574096))

(assert (=> d!1767852 d!1768400))

(declare-fun d!1768402 () Bool)

(declare-fun res!2373337 () Bool)

(declare-fun e!3451337 () Bool)

(assert (=> d!1768402 (=> res!2373337 e!3451337)))

(assert (=> d!1768402 (= res!2373337 ((_ is Nil!62918) (unfocusZipperList!1009 zl!343)))))

(assert (=> d!1768402 (= (forall!14746 (unfocusZipperList!1009 zl!343) lambda!300254) e!3451337)))

(declare-fun b!5594648 () Bool)

(declare-fun e!3451338 () Bool)

(assert (=> b!5594648 (= e!3451337 e!3451338)))

(declare-fun res!2373338 () Bool)

(assert (=> b!5594648 (=> (not res!2373338) (not e!3451338))))

(assert (=> b!5594648 (= res!2373338 (dynLambda!24611 lambda!300254 (h!69366 (unfocusZipperList!1009 zl!343))))))

(declare-fun b!5594649 () Bool)

(assert (=> b!5594649 (= e!3451338 (forall!14746 (t!376322 (unfocusZipperList!1009 zl!343)) lambda!300254))))

(assert (= (and d!1768402 (not res!2373337)) b!5594648))

(assert (= (and b!5594648 res!2373338) b!5594649))

(declare-fun b_lambda!212005 () Bool)

(assert (=> (not b_lambda!212005) (not b!5594648)))

(declare-fun m!6574098 () Bool)

(assert (=> b!5594648 m!6574098))

(declare-fun m!6574100 () Bool)

(assert (=> b!5594649 m!6574100))

(assert (=> d!1767852 d!1768402))

(assert (=> d!1767996 d!1767998))

(assert (=> d!1767996 d!1767870))

(declare-fun e!3451339 () Bool)

(declare-fun d!1768404 () Bool)

(assert (=> d!1768404 (= (matchZipper!1719 ((_ map or) lt!2255856 lt!2255866) (t!376324 s!2326)) e!3451339)))

(declare-fun res!2373339 () Bool)

(assert (=> d!1768404 (=> res!2373339 e!3451339)))

(assert (=> d!1768404 (= res!2373339 (matchZipper!1719 lt!2255856 (t!376324 s!2326)))))

(assert (=> d!1768404 true))

(declare-fun _$48!1185 () Unit!155740)

(assert (=> d!1768404 (= (choose!42423 lt!2255856 lt!2255866 (t!376324 s!2326)) _$48!1185)))

(declare-fun b!5594650 () Bool)

(assert (=> b!5594650 (= e!3451339 (matchZipper!1719 lt!2255866 (t!376324 s!2326)))))

(assert (= (and d!1768404 (not res!2373339)) b!5594650))

(assert (=> d!1768404 m!6572756))

(assert (=> d!1768404 m!6572726))

(assert (=> b!5594650 m!6572704))

(assert (=> d!1767996 d!1768404))

(assert (=> d!1767992 d!1767994))

(assert (=> d!1767992 d!1767944))

(declare-fun d!1768406 () Bool)

(declare-fun e!3451340 () Bool)

(assert (=> d!1768406 (= (matchZipper!1719 ((_ map or) lt!2255868 lt!2255866) (t!376324 s!2326)) e!3451340)))

(declare-fun res!2373340 () Bool)

(assert (=> d!1768406 (=> res!2373340 e!3451340)))

(assert (=> d!1768406 (= res!2373340 (matchZipper!1719 lt!2255868 (t!376324 s!2326)))))

(assert (=> d!1768406 true))

(declare-fun _$48!1186 () Unit!155740)

(assert (=> d!1768406 (= (choose!42423 lt!2255868 lt!2255866 (t!376324 s!2326)) _$48!1186)))

(declare-fun b!5594651 () Bool)

(assert (=> b!5594651 (= e!3451340 (matchZipper!1719 lt!2255866 (t!376324 s!2326)))))

(assert (= (and d!1768406 (not res!2373340)) b!5594651))

(assert (=> d!1768406 m!6572690))

(assert (=> d!1768406 m!6572698))

(assert (=> b!5594651 m!6572704))

(assert (=> d!1767992 d!1768406))

(assert (=> bs!1293321 d!1767956))

(declare-fun d!1768408 () Bool)

(assert (=> d!1768408 (= (nullable!5613 (h!69366 (exprs!5465 lt!2255869))) (nullableFct!1722 (h!69366 (exprs!5465 lt!2255869))))))

(declare-fun bs!1293577 () Bool)

(assert (= bs!1293577 d!1768408))

(declare-fun m!6574102 () Bool)

(assert (=> bs!1293577 m!6574102))

(assert (=> b!5593614 d!1768408))

(declare-fun d!1768410 () Bool)

(assert (=> d!1768410 (= (nullable!5613 (h!69366 (exprs!5465 lt!2255849))) (nullableFct!1722 (h!69366 (exprs!5465 lt!2255849))))))

(declare-fun bs!1293578 () Bool)

(assert (= bs!1293578 d!1768410))

(declare-fun m!6574104 () Bool)

(assert (=> bs!1293578 m!6574104))

(assert (=> b!5593609 d!1768410))

(declare-fun c!980652 () Bool)

(declare-fun bm!419387 () Bool)

(declare-fun c!980649 () Bool)

(declare-fun call!419395 () List!63042)

(assert (=> bm!419387 (= call!419395 ($colon$colon!1643 (exprs!5465 (ite c!980378 lt!2255845 (Context!9931 call!419188))) (ite (or c!980652 c!980649) (regTwo!31674 (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))))) (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343))))))))))

(declare-fun b!5594653 () Bool)

(declare-fun e!3451345 () (InoxSet Context!9930))

(declare-fun call!419392 () (InoxSet Context!9930))

(declare-fun call!419393 () (InoxSet Context!9930))

(assert (=> b!5594653 (= e!3451345 ((_ map or) call!419392 call!419393))))

(declare-fun b!5594654 () Bool)

(declare-fun e!3451346 () (InoxSet Context!9930))

(declare-fun call!419397 () (InoxSet Context!9930))

(assert (=> b!5594654 (= e!3451346 ((_ map or) call!419392 call!419397))))

(declare-fun b!5594655 () Bool)

(declare-fun e!3451343 () (InoxSet Context!9930))

(assert (=> b!5594655 (= e!3451343 e!3451346)))

(declare-fun c!980653 () Bool)

(assert (=> b!5594655 (= c!980653 ((_ is Union!15581) (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))))))))

(declare-fun b!5594656 () Bool)

(declare-fun c!980651 () Bool)

(assert (=> b!5594656 (= c!980651 ((_ is Star!15581) (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))))))))

(declare-fun e!3451342 () (InoxSet Context!9930))

(declare-fun e!3451344 () (InoxSet Context!9930))

(assert (=> b!5594656 (= e!3451342 e!3451344)))

(declare-fun b!5594657 () Bool)

(declare-fun e!3451341 () Bool)

(assert (=> b!5594657 (= e!3451341 (nullable!5613 (regOne!31674 (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343))))))))))

(declare-fun bm!419388 () Bool)

(assert (=> bm!419388 (= call!419393 call!419397)))

(declare-fun bm!419389 () Bool)

(declare-fun call!419394 () List!63042)

(assert (=> bm!419389 (= call!419397 (derivationStepZipperDown!923 (ite c!980653 (regTwo!31675 (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))))) (ite c!980652 (regTwo!31674 (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))))) (ite c!980649 (regOne!31674 (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))))) (reg!15910 (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343))))))))) (ite (or c!980653 c!980652) (ite c!980378 lt!2255845 (Context!9931 call!419188)) (Context!9931 call!419394)) (h!69368 s!2326)))))

(declare-fun b!5594658 () Bool)

(assert (=> b!5594658 (= e!3451345 e!3451342)))

(assert (=> b!5594658 (= c!980649 ((_ is Concat!24426) (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))))))))

(declare-fun c!980650 () Bool)

(declare-fun d!1768412 () Bool)

(assert (=> d!1768412 (= c!980650 (and ((_ is ElementMatch!15581) (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))))) (= (c!980214 (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))))) (h!69368 s!2326))))))

(assert (=> d!1768412 (= (derivationStepZipperDown!923 (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343))))) (ite c!980378 lt!2255845 (Context!9931 call!419188)) (h!69368 s!2326)) e!3451343)))

(declare-fun b!5594652 () Bool)

(declare-fun call!419396 () (InoxSet Context!9930))

(assert (=> b!5594652 (= e!3451342 call!419396)))

(declare-fun bm!419390 () Bool)

(assert (=> bm!419390 (= call!419396 call!419393)))

(declare-fun bm!419391 () Bool)

(assert (=> bm!419391 (= call!419392 (derivationStepZipperDown!923 (ite c!980653 (regOne!31675 (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))))) (regOne!31674 (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343))))))) (ite c!980653 (ite c!980378 lt!2255845 (Context!9931 call!419188)) (Context!9931 call!419395)) (h!69368 s!2326)))))

(declare-fun b!5594659 () Bool)

(assert (=> b!5594659 (= c!980652 e!3451341)))

(declare-fun res!2373341 () Bool)

(assert (=> b!5594659 (=> (not res!2373341) (not e!3451341))))

(assert (=> b!5594659 (= res!2373341 ((_ is Concat!24426) (ite c!980378 (regOne!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))))))))

(assert (=> b!5594659 (= e!3451346 e!3451345)))

(declare-fun b!5594660 () Bool)

(assert (=> b!5594660 (= e!3451344 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594661 () Bool)

(assert (=> b!5594661 (= e!3451343 (store ((as const (Array Context!9930 Bool)) false) (ite c!980378 lt!2255845 (Context!9931 call!419188)) true))))

(declare-fun bm!419392 () Bool)

(assert (=> bm!419392 (= call!419394 call!419395)))

(declare-fun b!5594662 () Bool)

(assert (=> b!5594662 (= e!3451344 call!419396)))

(assert (= (and d!1768412 c!980650) b!5594661))

(assert (= (and d!1768412 (not c!980650)) b!5594655))

(assert (= (and b!5594655 c!980653) b!5594654))

(assert (= (and b!5594655 (not c!980653)) b!5594659))

(assert (= (and b!5594659 res!2373341) b!5594657))

(assert (= (and b!5594659 c!980652) b!5594653))

(assert (= (and b!5594659 (not c!980652)) b!5594658))

(assert (= (and b!5594658 c!980649) b!5594652))

(assert (= (and b!5594658 (not c!980649)) b!5594656))

(assert (= (and b!5594656 c!980651) b!5594662))

(assert (= (and b!5594656 (not c!980651)) b!5594660))

(assert (= (or b!5594652 b!5594662) bm!419392))

(assert (= (or b!5594652 b!5594662) bm!419390))

(assert (= (or b!5594653 bm!419392) bm!419387))

(assert (= (or b!5594653 bm!419390) bm!419388))

(assert (= (or b!5594654 bm!419388) bm!419389))

(assert (= (or b!5594654 b!5594653) bm!419391))

(declare-fun m!6574106 () Bool)

(assert (=> bm!419391 m!6574106))

(declare-fun m!6574108 () Bool)

(assert (=> bm!419389 m!6574108))

(declare-fun m!6574110 () Bool)

(assert (=> bm!419387 m!6574110))

(declare-fun m!6574112 () Bool)

(assert (=> b!5594657 m!6574112))

(declare-fun m!6574114 () Bool)

(assert (=> b!5594661 m!6574114))

(assert (=> bm!419184 d!1768412))

(declare-fun d!1768414 () Bool)

(assert (=> d!1768414 true))

(declare-fun setRes!37301 () Bool)

(assert (=> d!1768414 setRes!37301))

(declare-fun condSetEmpty!37301 () Bool)

(declare-fun res!2373342 () (InoxSet Context!9930))

(assert (=> d!1768414 (= condSetEmpty!37301 (= res!2373342 ((as const (Array Context!9930 Bool)) false)))))

(assert (=> d!1768414 (= (choose!42419 z!1189 lambda!300242) res!2373342)))

(declare-fun setIsEmpty!37301 () Bool)

(assert (=> setIsEmpty!37301 setRes!37301))

(declare-fun tp!1547123 () Bool)

(declare-fun e!3451347 () Bool)

(declare-fun setElem!37301 () Context!9930)

(declare-fun setNonEmpty!37301 () Bool)

(assert (=> setNonEmpty!37301 (= setRes!37301 (and tp!1547123 (inv!82199 setElem!37301) e!3451347))))

(declare-fun setRest!37301 () (InoxSet Context!9930))

(assert (=> setNonEmpty!37301 (= res!2373342 ((_ map or) (store ((as const (Array Context!9930 Bool)) false) setElem!37301 true) setRest!37301))))

(declare-fun b!5594663 () Bool)

(declare-fun tp!1547122 () Bool)

(assert (=> b!5594663 (= e!3451347 tp!1547122)))

(assert (= (and d!1768414 condSetEmpty!37301) setIsEmpty!37301))

(assert (= (and d!1768414 (not condSetEmpty!37301)) setNonEmpty!37301))

(assert (= setNonEmpty!37301 b!5594663))

(declare-fun m!6574116 () Bool)

(assert (=> setNonEmpty!37301 m!6574116))

(assert (=> d!1767926 d!1768414))

(assert (=> bm!419198 d!1768358))

(declare-fun d!1768416 () Bool)

(assert (=> d!1768416 (= (isUnion!574 lt!2255898) ((_ is Union!15581) lt!2255898))))

(assert (=> b!5593272 d!1768416))

(declare-fun d!1768418 () Bool)

(declare-fun res!2373347 () Bool)

(declare-fun e!3451351 () Bool)

(assert (=> d!1768418 (=> res!2373347 e!3451351)))

(assert (=> d!1768418 (= res!2373347 ((_ is EmptyExpr!15581) (regOne!31674 r!7292)))))

(assert (=> d!1768418 (= (nullableFct!1722 (regOne!31674 r!7292)) e!3451351)))

(declare-fun bm!419393 () Bool)

(declare-fun call!419399 () Bool)

(declare-fun c!980654 () Bool)

(assert (=> bm!419393 (= call!419399 (nullable!5613 (ite c!980654 (regOne!31675 (regOne!31674 r!7292)) (regOne!31674 (regOne!31674 r!7292)))))))

(declare-fun b!5594664 () Bool)

(declare-fun e!3451348 () Bool)

(declare-fun call!419398 () Bool)

(assert (=> b!5594664 (= e!3451348 call!419398)))

(declare-fun b!5594665 () Bool)

(declare-fun e!3451350 () Bool)

(assert (=> b!5594665 (= e!3451351 e!3451350)))

(declare-fun res!2373346 () Bool)

(assert (=> b!5594665 (=> (not res!2373346) (not e!3451350))))

(assert (=> b!5594665 (= res!2373346 (and (not ((_ is EmptyLang!15581) (regOne!31674 r!7292))) (not ((_ is ElementMatch!15581) (regOne!31674 r!7292)))))))

(declare-fun b!5594666 () Bool)

(declare-fun e!3451349 () Bool)

(assert (=> b!5594666 (= e!3451349 call!419398)))

(declare-fun b!5594667 () Bool)

(declare-fun e!3451353 () Bool)

(assert (=> b!5594667 (= e!3451353 e!3451348)))

(declare-fun res!2373343 () Bool)

(assert (=> b!5594667 (= res!2373343 call!419399)))

(assert (=> b!5594667 (=> res!2373343 e!3451348)))

(declare-fun bm!419394 () Bool)

(assert (=> bm!419394 (= call!419398 (nullable!5613 (ite c!980654 (regTwo!31675 (regOne!31674 r!7292)) (regTwo!31674 (regOne!31674 r!7292)))))))

(declare-fun b!5594668 () Bool)

(declare-fun e!3451352 () Bool)

(assert (=> b!5594668 (= e!3451352 e!3451353)))

(assert (=> b!5594668 (= c!980654 ((_ is Union!15581) (regOne!31674 r!7292)))))

(declare-fun b!5594669 () Bool)

(assert (=> b!5594669 (= e!3451353 e!3451349)))

(declare-fun res!2373344 () Bool)

(assert (=> b!5594669 (= res!2373344 call!419399)))

(assert (=> b!5594669 (=> (not res!2373344) (not e!3451349))))

(declare-fun b!5594670 () Bool)

(assert (=> b!5594670 (= e!3451350 e!3451352)))

(declare-fun res!2373345 () Bool)

(assert (=> b!5594670 (=> res!2373345 e!3451352)))

(assert (=> b!5594670 (= res!2373345 ((_ is Star!15581) (regOne!31674 r!7292)))))

(assert (= (and d!1768418 (not res!2373347)) b!5594665))

(assert (= (and b!5594665 res!2373346) b!5594670))

(assert (= (and b!5594670 (not res!2373345)) b!5594668))

(assert (= (and b!5594668 c!980654) b!5594667))

(assert (= (and b!5594668 (not c!980654)) b!5594669))

(assert (= (and b!5594667 (not res!2373343)) b!5594664))

(assert (= (and b!5594669 res!2373344) b!5594666))

(assert (= (or b!5594664 b!5594666) bm!419394))

(assert (= (or b!5594667 b!5594669) bm!419393))

(declare-fun m!6574118 () Bool)

(assert (=> bm!419393 m!6574118))

(declare-fun m!6574120 () Bool)

(assert (=> bm!419394 m!6574120))

(assert (=> d!1767950 d!1768418))

(declare-fun d!1768420 () Bool)

(declare-fun lambda!300353 () Int)

(declare-fun exists!2170 ((InoxSet Context!9930) Int) Bool)

(assert (=> d!1768420 (= (nullableZipper!1576 ((_ map or) lt!2255857 lt!2255866)) (exists!2170 ((_ map or) lt!2255857 lt!2255866) lambda!300353))))

(declare-fun bs!1293579 () Bool)

(assert (= bs!1293579 d!1768420))

(declare-fun m!6574122 () Bool)

(assert (=> bs!1293579 m!6574122))

(assert (=> b!5593709 d!1768420))

(assert (=> bs!1293323 d!1767928))

(assert (=> d!1767964 d!1767952))

(declare-fun d!1768422 () Bool)

(assert (=> d!1768422 (= (flatMap!1194 lt!2255874 lambda!300242) (dynLambda!24609 lambda!300242 lt!2255849))))

(assert (=> d!1768422 true))

(declare-fun _$13!2203 () Unit!155740)

(assert (=> d!1768422 (= (choose!42421 lt!2255874 lt!2255849 lambda!300242) _$13!2203)))

(declare-fun b_lambda!212007 () Bool)

(assert (=> (not b_lambda!212007) (not d!1768422)))

(declare-fun bs!1293580 () Bool)

(assert (= bs!1293580 d!1768422))

(assert (=> bs!1293580 m!6572730))

(assert (=> bs!1293580 m!6573234))

(assert (=> d!1767964 d!1768422))

(declare-fun bs!1293581 () Bool)

(declare-fun d!1768424 () Bool)

(assert (= bs!1293581 (and d!1768424 d!1768000)))

(declare-fun lambda!300354 () Int)

(assert (=> bs!1293581 (= lambda!300354 lambda!300298)))

(declare-fun bs!1293582 () Bool)

(assert (= bs!1293582 (and d!1768424 d!1767858)))

(assert (=> bs!1293582 (= lambda!300354 lambda!300257)))

(declare-fun bs!1293583 () Bool)

(assert (= bs!1293583 (and d!1768424 d!1768314)))

(assert (=> bs!1293583 (= lambda!300354 lambda!300343)))

(declare-fun bs!1293584 () Bool)

(assert (= bs!1293584 (and d!1768424 d!1767990)))

(assert (=> bs!1293584 (= lambda!300354 lambda!300297)))

(declare-fun bs!1293585 () Bool)

(assert (= bs!1293585 (and d!1768424 d!1767966)))

(assert (=> bs!1293585 (= lambda!300354 lambda!300288)))

(declare-fun bs!1293586 () Bool)

(assert (= bs!1293586 (and d!1768424 d!1767852)))

(assert (=> bs!1293586 (= lambda!300354 lambda!300254)))

(declare-fun bs!1293587 () Bool)

(assert (= bs!1293587 (and d!1768424 d!1768370)))

(assert (=> bs!1293587 (= lambda!300354 lambda!300348)))

(declare-fun bs!1293588 () Bool)

(assert (= bs!1293588 (and d!1768424 d!1768284)))

(assert (=> bs!1293588 (= lambda!300354 lambda!300337)))

(declare-fun b!5594671 () Bool)

(declare-fun e!3451357 () Regex!15581)

(declare-fun e!3451354 () Regex!15581)

(assert (=> b!5594671 (= e!3451357 e!3451354)))

(declare-fun c!980659 () Bool)

(assert (=> b!5594671 (= c!980659 ((_ is Cons!62918) (t!376322 (unfocusZipperList!1009 zl!343))))))

(declare-fun b!5594673 () Bool)

(assert (=> b!5594673 (= e!3451354 EmptyLang!15581)))

(declare-fun b!5594674 () Bool)

(declare-fun e!3451356 () Bool)

(declare-fun lt!2255994 () Regex!15581)

(assert (=> b!5594674 (= e!3451356 (isEmptyLang!1144 lt!2255994))))

(declare-fun b!5594675 () Bool)

(assert (=> b!5594675 (= e!3451357 (h!69366 (t!376322 (unfocusZipperList!1009 zl!343))))))

(declare-fun b!5594676 () Bool)

(assert (=> b!5594676 (= e!3451354 (Union!15581 (h!69366 (t!376322 (unfocusZipperList!1009 zl!343))) (generalisedUnion!1444 (t!376322 (t!376322 (unfocusZipperList!1009 zl!343))))))))

(declare-fun b!5594677 () Bool)

(declare-fun e!3451358 () Bool)

(assert (=> b!5594677 (= e!3451358 (isEmpty!34738 (t!376322 (t!376322 (unfocusZipperList!1009 zl!343)))))))

(declare-fun b!5594678 () Bool)

(declare-fun e!3451355 () Bool)

(assert (=> b!5594678 (= e!3451355 e!3451356)))

(declare-fun c!980657 () Bool)

(assert (=> b!5594678 (= c!980657 (isEmpty!34738 (t!376322 (unfocusZipperList!1009 zl!343))))))

(declare-fun b!5594679 () Bool)

(declare-fun e!3451359 () Bool)

(assert (=> b!5594679 (= e!3451359 (= lt!2255994 (head!11930 (t!376322 (unfocusZipperList!1009 zl!343)))))))

(declare-fun b!5594680 () Bool)

(assert (=> b!5594680 (= e!3451356 e!3451359)))

(declare-fun c!980658 () Bool)

(assert (=> b!5594680 (= c!980658 (isEmpty!34738 (tail!11025 (t!376322 (unfocusZipperList!1009 zl!343)))))))

(declare-fun b!5594672 () Bool)

(assert (=> b!5594672 (= e!3451359 (isUnion!574 lt!2255994))))

(assert (=> d!1768424 e!3451355))

(declare-fun res!2373348 () Bool)

(assert (=> d!1768424 (=> (not res!2373348) (not e!3451355))))

(assert (=> d!1768424 (= res!2373348 (validRegex!7317 lt!2255994))))

(assert (=> d!1768424 (= lt!2255994 e!3451357)))

(declare-fun c!980660 () Bool)

(assert (=> d!1768424 (= c!980660 e!3451358)))

(declare-fun res!2373349 () Bool)

(assert (=> d!1768424 (=> (not res!2373349) (not e!3451358))))

(assert (=> d!1768424 (= res!2373349 ((_ is Cons!62918) (t!376322 (unfocusZipperList!1009 zl!343))))))

(assert (=> d!1768424 (forall!14746 (t!376322 (unfocusZipperList!1009 zl!343)) lambda!300354)))

(assert (=> d!1768424 (= (generalisedUnion!1444 (t!376322 (unfocusZipperList!1009 zl!343))) lt!2255994)))

(assert (= (and d!1768424 res!2373349) b!5594677))

(assert (= (and d!1768424 c!980660) b!5594675))

(assert (= (and d!1768424 (not c!980660)) b!5594671))

(assert (= (and b!5594671 c!980659) b!5594676))

(assert (= (and b!5594671 (not c!980659)) b!5594673))

(assert (= (and d!1768424 res!2373348) b!5594678))

(assert (= (and b!5594678 c!980657) b!5594674))

(assert (= (and b!5594678 (not c!980657)) b!5594680))

(assert (= (and b!5594680 c!980658) b!5594679))

(assert (= (and b!5594680 (not c!980658)) b!5594672))

(declare-fun m!6574124 () Bool)

(assert (=> b!5594677 m!6574124))

(declare-fun m!6574126 () Bool)

(assert (=> b!5594674 m!6574126))

(declare-fun m!6574128 () Bool)

(assert (=> b!5594679 m!6574128))

(assert (=> b!5594678 m!6572928))

(declare-fun m!6574130 () Bool)

(assert (=> b!5594676 m!6574130))

(declare-fun m!6574132 () Bool)

(assert (=> b!5594680 m!6574132))

(assert (=> b!5594680 m!6574132))

(declare-fun m!6574134 () Bool)

(assert (=> b!5594680 m!6574134))

(declare-fun m!6574136 () Bool)

(assert (=> d!1768424 m!6574136))

(declare-fun m!6574138 () Bool)

(assert (=> d!1768424 m!6574138))

(declare-fun m!6574140 () Bool)

(assert (=> b!5594672 m!6574140))

(assert (=> b!5593276 d!1768424))

(declare-fun d!1768426 () Bool)

(declare-fun e!3451361 () Bool)

(assert (=> d!1768426 e!3451361))

(declare-fun c!980663 () Bool)

(assert (=> d!1768426 (= c!980663 ((_ is EmptyExpr!15581) (regOne!31674 r!7292)))))

(declare-fun lt!2255995 () Bool)

(declare-fun e!3451365 () Bool)

(assert (=> d!1768426 (= lt!2255995 e!3451365)))

(declare-fun c!980662 () Bool)

(assert (=> d!1768426 (= c!980662 (isEmpty!34741 (_1!35981 (get!21667 lt!2255927))))))

(assert (=> d!1768426 (validRegex!7317 (regOne!31674 r!7292))))

(assert (=> d!1768426 (= (matchR!7766 (regOne!31674 r!7292) (_1!35981 (get!21667 lt!2255927))) lt!2255995)))

(declare-fun b!5594681 () Bool)

(assert (=> b!5594681 (= e!3451365 (matchR!7766 (derivativeStep!4429 (regOne!31674 r!7292) (head!11931 (_1!35981 (get!21667 lt!2255927)))) (tail!11026 (_1!35981 (get!21667 lt!2255927)))))))

(declare-fun b!5594682 () Bool)

(declare-fun e!3451360 () Bool)

(assert (=> b!5594682 (= e!3451360 (not (= (head!11931 (_1!35981 (get!21667 lt!2255927))) (c!980214 (regOne!31674 r!7292)))))))

(declare-fun b!5594683 () Bool)

(declare-fun res!2373350 () Bool)

(declare-fun e!3451362 () Bool)

(assert (=> b!5594683 (=> res!2373350 e!3451362)))

(declare-fun e!3451364 () Bool)

(assert (=> b!5594683 (= res!2373350 e!3451364)))

(declare-fun res!2373353 () Bool)

(assert (=> b!5594683 (=> (not res!2373353) (not e!3451364))))

(assert (=> b!5594683 (= res!2373353 lt!2255995)))

(declare-fun b!5594684 () Bool)

(declare-fun res!2373352 () Bool)

(assert (=> b!5594684 (=> res!2373352 e!3451360)))

(assert (=> b!5594684 (= res!2373352 (not (isEmpty!34741 (tail!11026 (_1!35981 (get!21667 lt!2255927))))))))

(declare-fun bm!419395 () Bool)

(declare-fun call!419400 () Bool)

(assert (=> bm!419395 (= call!419400 (isEmpty!34741 (_1!35981 (get!21667 lt!2255927))))))

(declare-fun b!5594685 () Bool)

(declare-fun e!3451363 () Bool)

(assert (=> b!5594685 (= e!3451363 (not lt!2255995))))

(declare-fun b!5594686 () Bool)

(declare-fun e!3451366 () Bool)

(assert (=> b!5594686 (= e!3451366 e!3451360)))

(declare-fun res!2373351 () Bool)

(assert (=> b!5594686 (=> res!2373351 e!3451360)))

(assert (=> b!5594686 (= res!2373351 call!419400)))

(declare-fun b!5594687 () Bool)

(declare-fun res!2373357 () Bool)

(assert (=> b!5594687 (=> res!2373357 e!3451362)))

(assert (=> b!5594687 (= res!2373357 (not ((_ is ElementMatch!15581) (regOne!31674 r!7292))))))

(assert (=> b!5594687 (= e!3451363 e!3451362)))

(declare-fun b!5594688 () Bool)

(assert (=> b!5594688 (= e!3451361 (= lt!2255995 call!419400))))

(declare-fun b!5594689 () Bool)

(assert (=> b!5594689 (= e!3451364 (= (head!11931 (_1!35981 (get!21667 lt!2255927))) (c!980214 (regOne!31674 r!7292))))))

(declare-fun b!5594690 () Bool)

(declare-fun res!2373355 () Bool)

(assert (=> b!5594690 (=> (not res!2373355) (not e!3451364))))

(assert (=> b!5594690 (= res!2373355 (not call!419400))))

(declare-fun b!5594691 () Bool)

(assert (=> b!5594691 (= e!3451365 (nullable!5613 (regOne!31674 r!7292)))))

(declare-fun b!5594692 () Bool)

(declare-fun res!2373356 () Bool)

(assert (=> b!5594692 (=> (not res!2373356) (not e!3451364))))

(assert (=> b!5594692 (= res!2373356 (isEmpty!34741 (tail!11026 (_1!35981 (get!21667 lt!2255927)))))))

(declare-fun b!5594693 () Bool)

(assert (=> b!5594693 (= e!3451361 e!3451363)))

(declare-fun c!980661 () Bool)

(assert (=> b!5594693 (= c!980661 ((_ is EmptyLang!15581) (regOne!31674 r!7292)))))

(declare-fun b!5594694 () Bool)

(assert (=> b!5594694 (= e!3451362 e!3451366)))

(declare-fun res!2373354 () Bool)

(assert (=> b!5594694 (=> (not res!2373354) (not e!3451366))))

(assert (=> b!5594694 (= res!2373354 (not lt!2255995))))

(assert (= (and d!1768426 c!980662) b!5594691))

(assert (= (and d!1768426 (not c!980662)) b!5594681))

(assert (= (and d!1768426 c!980663) b!5594688))

(assert (= (and d!1768426 (not c!980663)) b!5594693))

(assert (= (and b!5594693 c!980661) b!5594685))

(assert (= (and b!5594693 (not c!980661)) b!5594687))

(assert (= (and b!5594687 (not res!2373357)) b!5594683))

(assert (= (and b!5594683 res!2373353) b!5594690))

(assert (= (and b!5594690 res!2373355) b!5594692))

(assert (= (and b!5594692 res!2373356) b!5594689))

(assert (= (and b!5594683 (not res!2373350)) b!5594694))

(assert (= (and b!5594694 res!2373354) b!5594686))

(assert (= (and b!5594686 (not res!2373351)) b!5594684))

(assert (= (and b!5594684 (not res!2373352)) b!5594682))

(assert (= (or b!5594688 b!5594686 b!5594690) bm!419395))

(assert (=> b!5594691 m!6572742))

(declare-fun m!6574142 () Bool)

(assert (=> b!5594689 m!6574142))

(assert (=> b!5594682 m!6574142))

(declare-fun m!6574144 () Bool)

(assert (=> d!1768426 m!6574144))

(assert (=> d!1768426 m!6573034))

(declare-fun m!6574146 () Bool)

(assert (=> b!5594684 m!6574146))

(assert (=> b!5594684 m!6574146))

(declare-fun m!6574148 () Bool)

(assert (=> b!5594684 m!6574148))

(assert (=> bm!419395 m!6574144))

(assert (=> b!5594692 m!6574146))

(assert (=> b!5594692 m!6574146))

(assert (=> b!5594692 m!6574148))

(assert (=> b!5594681 m!6574142))

(assert (=> b!5594681 m!6574142))

(declare-fun m!6574150 () Bool)

(assert (=> b!5594681 m!6574150))

(assert (=> b!5594681 m!6574146))

(assert (=> b!5594681 m!6574150))

(assert (=> b!5594681 m!6574146))

(declare-fun m!6574152 () Bool)

(assert (=> b!5594681 m!6574152))

(assert (=> b!5593398 d!1768426))

(assert (=> b!5593398 d!1768384))

(declare-fun c!980664 () Bool)

(declare-fun bm!419396 () Bool)

(declare-fun c!980667 () Bool)

(declare-fun call!419404 () List!63042)

(assert (=> bm!419396 (= call!419404 ($colon$colon!1643 (exprs!5465 (ite (or c!980319 c!980318) lt!2255845 (Context!9931 call!419154))) (ite (or c!980667 c!980664) (regTwo!31674 (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292))))))) (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292)))))))))))

(declare-fun b!5594696 () Bool)

(declare-fun e!3451371 () (InoxSet Context!9930))

(declare-fun call!419401 () (InoxSet Context!9930))

(declare-fun call!419402 () (InoxSet Context!9930))

(assert (=> b!5594696 (= e!3451371 ((_ map or) call!419401 call!419402))))

(declare-fun b!5594697 () Bool)

(declare-fun e!3451372 () (InoxSet Context!9930))

(declare-fun call!419406 () (InoxSet Context!9930))

(assert (=> b!5594697 (= e!3451372 ((_ map or) call!419401 call!419406))))

(declare-fun b!5594698 () Bool)

(declare-fun e!3451369 () (InoxSet Context!9930))

(assert (=> b!5594698 (= e!3451369 e!3451372)))

(declare-fun c!980668 () Bool)

(assert (=> b!5594698 (= c!980668 ((_ is Union!15581) (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292))))))))))

(declare-fun c!980666 () Bool)

(declare-fun b!5594699 () Bool)

(assert (=> b!5594699 (= c!980666 ((_ is Star!15581) (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292))))))))))

(declare-fun e!3451368 () (InoxSet Context!9930))

(declare-fun e!3451370 () (InoxSet Context!9930))

(assert (=> b!5594699 (= e!3451368 e!3451370)))

(declare-fun b!5594700 () Bool)

(declare-fun e!3451367 () Bool)

(assert (=> b!5594700 (= e!3451367 (nullable!5613 (regOne!31674 (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292)))))))))))

(declare-fun bm!419397 () Bool)

(assert (=> bm!419397 (= call!419402 call!419406)))

(declare-fun bm!419398 () Bool)

(declare-fun call!419403 () List!63042)

(assert (=> bm!419398 (= call!419406 (derivationStepZipperDown!923 (ite c!980668 (regTwo!31675 (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292))))))) (ite c!980667 (regTwo!31674 (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292))))))) (ite c!980664 (regOne!31674 (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292))))))) (reg!15910 (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292)))))))))) (ite (or c!980668 c!980667) (ite (or c!980319 c!980318) lt!2255845 (Context!9931 call!419154)) (Context!9931 call!419403)) (h!69368 s!2326)))))

(declare-fun b!5594701 () Bool)

(assert (=> b!5594701 (= e!3451371 e!3451368)))

(assert (=> b!5594701 (= c!980664 ((_ is Concat!24426) (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292))))))))))

(declare-fun d!1768428 () Bool)

(declare-fun c!980665 () Bool)

(assert (=> d!1768428 (= c!980665 (and ((_ is ElementMatch!15581) (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292))))))) (= (c!980214 (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292))))))) (h!69368 s!2326))))))

(assert (=> d!1768428 (= (derivationStepZipperDown!923 (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292)))))) (ite (or c!980319 c!980318) lt!2255845 (Context!9931 call!419154)) (h!69368 s!2326)) e!3451369)))

(declare-fun b!5594695 () Bool)

(declare-fun call!419405 () (InoxSet Context!9930))

(assert (=> b!5594695 (= e!3451368 call!419405)))

(declare-fun bm!419399 () Bool)

(assert (=> bm!419399 (= call!419405 call!419402)))

(declare-fun bm!419400 () Bool)

(assert (=> bm!419400 (= call!419401 (derivationStepZipperDown!923 (ite c!980668 (regOne!31675 (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292))))))) (regOne!31674 (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292)))))))) (ite c!980668 (ite (or c!980319 c!980318) lt!2255845 (Context!9931 call!419154)) (Context!9931 call!419404)) (h!69368 s!2326)))))

(declare-fun b!5594702 () Bool)

(assert (=> b!5594702 (= c!980667 e!3451367)))

(declare-fun res!2373358 () Bool)

(assert (=> b!5594702 (=> (not res!2373358) (not e!3451367))))

(assert (=> b!5594702 (= res!2373358 ((_ is Concat!24426) (ite c!980319 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980318 (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (ite c!980315 (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))) (reg!15910 (regTwo!31675 (regOne!31674 r!7292))))))))))

(assert (=> b!5594702 (= e!3451372 e!3451371)))

(declare-fun b!5594703 () Bool)

(assert (=> b!5594703 (= e!3451370 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594704 () Bool)

(assert (=> b!5594704 (= e!3451369 (store ((as const (Array Context!9930 Bool)) false) (ite (or c!980319 c!980318) lt!2255845 (Context!9931 call!419154)) true))))

(declare-fun bm!419401 () Bool)

(assert (=> bm!419401 (= call!419403 call!419404)))

(declare-fun b!5594705 () Bool)

(assert (=> b!5594705 (= e!3451370 call!419405)))

(assert (= (and d!1768428 c!980665) b!5594704))

(assert (= (and d!1768428 (not c!980665)) b!5594698))

(assert (= (and b!5594698 c!980668) b!5594697))

(assert (= (and b!5594698 (not c!980668)) b!5594702))

(assert (= (and b!5594702 res!2373358) b!5594700))

(assert (= (and b!5594702 c!980667) b!5594696))

(assert (= (and b!5594702 (not c!980667)) b!5594701))

(assert (= (and b!5594701 c!980664) b!5594695))

(assert (= (and b!5594701 (not c!980664)) b!5594699))

(assert (= (and b!5594699 c!980666) b!5594705))

(assert (= (and b!5594699 (not c!980666)) b!5594703))

(assert (= (or b!5594695 b!5594705) bm!419401))

(assert (= (or b!5594695 b!5594705) bm!419399))

(assert (= (or b!5594696 bm!419401) bm!419396))

(assert (= (or b!5594696 bm!419399) bm!419397))

(assert (= (or b!5594697 bm!419397) bm!419398))

(assert (= (or b!5594697 b!5594696) bm!419400))

(declare-fun m!6574154 () Bool)

(assert (=> bm!419400 m!6574154))

(declare-fun m!6574156 () Bool)

(assert (=> bm!419398 m!6574156))

(declare-fun m!6574158 () Bool)

(assert (=> bm!419396 m!6574158))

(declare-fun m!6574160 () Bool)

(assert (=> b!5594700 m!6574160))

(declare-fun m!6574162 () Bool)

(assert (=> b!5594704 m!6574162))

(assert (=> bm!419149 d!1768428))

(declare-fun c!980672 () Bool)

(declare-fun c!980669 () Bool)

(declare-fun bm!419402 () Bool)

(declare-fun call!419410 () List!63042)

(assert (=> bm!419402 (= call!419410 ($colon$colon!1643 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))))))) (ite (or c!980672 c!980669) (regTwo!31674 (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))))))))))

(declare-fun b!5594707 () Bool)

(declare-fun e!3451377 () (InoxSet Context!9930))

(declare-fun call!419407 () (InoxSet Context!9930))

(declare-fun call!419408 () (InoxSet Context!9930))

(assert (=> b!5594707 (= e!3451377 ((_ map or) call!419407 call!419408))))

(declare-fun b!5594708 () Bool)

(declare-fun e!3451378 () (InoxSet Context!9930))

(declare-fun call!419412 () (InoxSet Context!9930))

(assert (=> b!5594708 (= e!3451378 ((_ map or) call!419407 call!419412))))

(declare-fun b!5594709 () Bool)

(declare-fun e!3451375 () (InoxSet Context!9930))

(assert (=> b!5594709 (= e!3451375 e!3451378)))

(declare-fun c!980673 () Bool)

(assert (=> b!5594709 (= c!980673 ((_ is Union!15581) (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))))))

(declare-fun b!5594710 () Bool)

(declare-fun c!980671 () Bool)

(assert (=> b!5594710 (= c!980671 ((_ is Star!15581) (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))))))

(declare-fun e!3451374 () (InoxSet Context!9930))

(declare-fun e!3451376 () (InoxSet Context!9930))

(assert (=> b!5594710 (= e!3451374 e!3451376)))

(declare-fun b!5594711 () Bool)

(declare-fun e!3451373 () Bool)

(assert (=> b!5594711 (= e!3451373 (nullable!5613 (regOne!31674 (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))))))))))

(declare-fun bm!419403 () Bool)

(assert (=> bm!419403 (= call!419408 call!419412)))

(declare-fun bm!419404 () Bool)

(declare-fun call!419409 () List!63042)

(assert (=> bm!419404 (= call!419412 (derivationStepZipperDown!923 (ite c!980673 (regTwo!31675 (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) (ite c!980672 (regTwo!31674 (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) (ite c!980669 (regOne!31674 (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) (reg!15910 (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))))))))) (ite (or c!980673 c!980672) (Context!9931 (t!376322 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) (Context!9931 call!419409)) (h!69368 s!2326)))))

(declare-fun b!5594712 () Bool)

(assert (=> b!5594712 (= e!3451377 e!3451374)))

(assert (=> b!5594712 (= c!980669 ((_ is Concat!24426) (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))))))

(declare-fun d!1768430 () Bool)

(declare-fun c!980670 () Bool)

(assert (=> d!1768430 (= c!980670 (and ((_ is ElementMatch!15581) (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) (= (c!980214 (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) (h!69368 s!2326))))))

(assert (=> d!1768430 (= (derivationStepZipperDown!923 (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))))) (Context!9931 (t!376322 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) (h!69368 s!2326)) e!3451375)))

(declare-fun b!5594706 () Bool)

(declare-fun call!419411 () (InoxSet Context!9930))

(assert (=> b!5594706 (= e!3451374 call!419411)))

(declare-fun bm!419405 () Bool)

(assert (=> bm!419405 (= call!419411 call!419408)))

(declare-fun bm!419406 () Bool)

(assert (=> bm!419406 (= call!419407 (derivationStepZipperDown!923 (ite c!980673 (regOne!31675 (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) (regOne!31674 (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))))))) (ite c!980673 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) (Context!9931 call!419410)) (h!69368 s!2326)))))

(declare-fun b!5594713 () Bool)

(assert (=> b!5594713 (= c!980672 e!3451373)))

(declare-fun res!2373359 () Bool)

(assert (=> b!5594713 (=> (not res!2373359) (not e!3451373))))

(assert (=> b!5594713 (= res!2373359 ((_ is Concat!24426) (h!69366 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))))))

(assert (=> b!5594713 (= e!3451378 e!3451377)))

(declare-fun b!5594714 () Bool)

(assert (=> b!5594714 (= e!3451376 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594715 () Bool)

(assert (=> b!5594715 (= e!3451375 (store ((as const (Array Context!9930 Bool)) false) (Context!9931 (t!376322 (exprs!5465 (Context!9931 (Cons!62918 (h!69366 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343)))))))) true))))

(declare-fun bm!419407 () Bool)

(assert (=> bm!419407 (= call!419409 call!419410)))

(declare-fun b!5594716 () Bool)

(assert (=> b!5594716 (= e!3451376 call!419411)))

(assert (= (and d!1768430 c!980670) b!5594715))

(assert (= (and d!1768430 (not c!980670)) b!5594709))

(assert (= (and b!5594709 c!980673) b!5594708))

(assert (= (and b!5594709 (not c!980673)) b!5594713))

(assert (= (and b!5594713 res!2373359) b!5594711))

(assert (= (and b!5594713 c!980672) b!5594707))

(assert (= (and b!5594713 (not c!980672)) b!5594712))

(assert (= (and b!5594712 c!980669) b!5594706))

(assert (= (and b!5594712 (not c!980669)) b!5594710))

(assert (= (and b!5594710 c!980671) b!5594716))

(assert (= (and b!5594710 (not c!980671)) b!5594714))

(assert (= (or b!5594706 b!5594716) bm!419407))

(assert (= (or b!5594706 b!5594716) bm!419405))

(assert (= (or b!5594707 bm!419407) bm!419402))

(assert (= (or b!5594707 bm!419405) bm!419403))

(assert (= (or b!5594708 bm!419403) bm!419404))

(assert (= (or b!5594708 b!5594707) bm!419406))

(declare-fun m!6574164 () Bool)

(assert (=> bm!419406 m!6574164))

(declare-fun m!6574166 () Bool)

(assert (=> bm!419404 m!6574166))

(declare-fun m!6574168 () Bool)

(assert (=> bm!419402 m!6574168))

(declare-fun m!6574170 () Bool)

(assert (=> b!5594711 m!6574170))

(declare-fun m!6574172 () Bool)

(assert (=> b!5594715 m!6574172))

(assert (=> bm!419179 d!1768430))

(declare-fun bs!1293589 () Bool)

(declare-fun d!1768432 () Bool)

(assert (= bs!1293589 (and d!1768432 d!1768420)))

(declare-fun lambda!300355 () Int)

(assert (=> bs!1293589 (= lambda!300355 lambda!300353)))

(assert (=> d!1768432 (= (nullableZipper!1576 lt!2255844) (exists!2170 lt!2255844 lambda!300355))))

(declare-fun bs!1293590 () Bool)

(assert (= bs!1293590 d!1768432))

(declare-fun m!6574174 () Bool)

(assert (=> bs!1293590 m!6574174))

(assert (=> b!5593601 d!1768432))

(declare-fun d!1768434 () Bool)

(assert (=> d!1768434 (= (head!11930 (exprs!5465 (h!69367 zl!343))) (h!69366 (exprs!5465 (h!69367 zl!343))))))

(assert (=> b!5593759 d!1768434))

(declare-fun b!5594717 () Bool)

(declare-fun call!419413 () (InoxSet Context!9930))

(declare-fun e!3451381 () (InoxSet Context!9930))

(assert (=> b!5594717 (= e!3451381 ((_ map or) call!419413 (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343))))))) (h!69368 s!2326))))))

(declare-fun b!5594718 () Bool)

(declare-fun e!3451379 () Bool)

(assert (=> b!5594718 (= e!3451379 (nullable!5613 (h!69366 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343))))))))))

(declare-fun bm!419408 () Bool)

(assert (=> bm!419408 (= call!419413 (derivationStepZipperDown!923 (h!69366 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343)))))) (Context!9931 (t!376322 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343))))))) (h!69368 s!2326)))))

(declare-fun b!5594720 () Bool)

(declare-fun e!3451380 () (InoxSet Context!9930))

(assert (=> b!5594720 (= e!3451380 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594721 () Bool)

(assert (=> b!5594721 (= e!3451381 e!3451380)))

(declare-fun c!980674 () Bool)

(assert (=> b!5594721 (= c!980674 ((_ is Cons!62918) (exprs!5465 (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343)))))))))

(declare-fun b!5594719 () Bool)

(assert (=> b!5594719 (= e!3451380 call!419413)))

(declare-fun d!1768436 () Bool)

(declare-fun c!980675 () Bool)

(assert (=> d!1768436 (= c!980675 e!3451379)))

(declare-fun res!2373360 () Bool)

(assert (=> d!1768436 (=> (not res!2373360) (not e!3451379))))

(assert (=> d!1768436 (= res!2373360 ((_ is Cons!62918) (exprs!5465 (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343)))))))))

(assert (=> d!1768436 (= (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 (h!69367 zl!343)))) (h!69368 s!2326)) e!3451381)))

(assert (= (and d!1768436 res!2373360) b!5594718))

(assert (= (and d!1768436 c!980675) b!5594717))

(assert (= (and d!1768436 (not c!980675)) b!5594721))

(assert (= (and b!5594721 c!980674) b!5594719))

(assert (= (and b!5594721 (not c!980674)) b!5594720))

(assert (= (or b!5594717 b!5594719) bm!419408))

(declare-fun m!6574176 () Bool)

(assert (=> b!5594717 m!6574176))

(declare-fun m!6574178 () Bool)

(assert (=> b!5594718 m!6574178))

(declare-fun m!6574180 () Bool)

(assert (=> bm!419408 m!6574180))

(assert (=> b!5593589 d!1768436))

(declare-fun d!1768438 () Bool)

(assert (=> d!1768438 (= (isEmpty!34741 (tail!11026 s!2326)) ((_ is Nil!62920) (tail!11026 s!2326)))))

(assert (=> b!5593700 d!1768438))

(declare-fun d!1768440 () Bool)

(assert (=> d!1768440 (= (tail!11026 s!2326) (t!376324 s!2326))))

(assert (=> b!5593700 d!1768440))

(declare-fun bs!1293591 () Bool)

(declare-fun d!1768442 () Bool)

(assert (= bs!1293591 (and d!1768442 d!1768420)))

(declare-fun lambda!300356 () Int)

(assert (=> bs!1293591 (= lambda!300356 lambda!300353)))

(declare-fun bs!1293592 () Bool)

(assert (= bs!1293592 (and d!1768442 d!1768432)))

(assert (=> bs!1293592 (= lambda!300356 lambda!300355)))

(assert (=> d!1768442 (= (nullableZipper!1576 lt!2255856) (exists!2170 lt!2255856 lambda!300356))))

(declare-fun bs!1293593 () Bool)

(assert (= bs!1293593 d!1768442))

(declare-fun m!6574182 () Bool)

(assert (=> bs!1293593 m!6574182))

(assert (=> b!5593366 d!1768442))

(declare-fun d!1768444 () Bool)

(assert (=> d!1768444 (= (isEmpty!34738 (tail!11025 (unfocusZipperList!1009 zl!343))) ((_ is Nil!62918) (tail!11025 (unfocusZipperList!1009 zl!343))))))

(assert (=> b!5593280 d!1768444))

(declare-fun d!1768446 () Bool)

(assert (=> d!1768446 (= (tail!11025 (unfocusZipperList!1009 zl!343)) (t!376322 (unfocusZipperList!1009 zl!343)))))

(assert (=> b!5593280 d!1768446))

(declare-fun d!1768448 () Bool)

(assert (=> d!1768448 (= ($colon$colon!1643 (exprs!5465 lt!2255845) (ite (or c!980377 c!980374) (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (h!69366 (exprs!5465 (h!69367 zl!343))))) (Cons!62918 (ite (or c!980377 c!980374) (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (h!69366 (exprs!5465 (h!69367 zl!343)))) (exprs!5465 lt!2255845)))))

(assert (=> bm!419180 d!1768448))

(declare-fun b!5594730 () Bool)

(declare-fun e!3451387 () List!63044)

(assert (=> b!5594730 (= e!3451387 (t!376324 s!2326))))

(declare-fun b!5594731 () Bool)

(assert (=> b!5594731 (= e!3451387 (Cons!62920 (h!69368 (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920))) (++!13809 (t!376324 (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920))) (t!376324 s!2326))))))

(declare-fun d!1768450 () Bool)

(declare-fun e!3451386 () Bool)

(assert (=> d!1768450 e!3451386))

(declare-fun res!2373366 () Bool)

(assert (=> d!1768450 (=> (not res!2373366) (not e!3451386))))

(declare-fun lt!2255998 () List!63044)

(declare-fun content!11358 (List!63044) (InoxSet C!31432))

(assert (=> d!1768450 (= res!2373366 (= (content!11358 lt!2255998) ((_ map or) (content!11358 (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920))) (content!11358 (t!376324 s!2326)))))))

(assert (=> d!1768450 (= lt!2255998 e!3451387)))

(declare-fun c!980678 () Bool)

(assert (=> d!1768450 (= c!980678 ((_ is Nil!62920) (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920))))))

(assert (=> d!1768450 (= (++!13809 (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920)) (t!376324 s!2326)) lt!2255998)))

(declare-fun b!5594732 () Bool)

(declare-fun res!2373365 () Bool)

(assert (=> b!5594732 (=> (not res!2373365) (not e!3451386))))

(declare-fun size!39967 (List!63044) Int)

(assert (=> b!5594732 (= res!2373365 (= (size!39967 lt!2255998) (+ (size!39967 (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920))) (size!39967 (t!376324 s!2326)))))))

(declare-fun b!5594733 () Bool)

(assert (=> b!5594733 (= e!3451386 (or (not (= (t!376324 s!2326) Nil!62920)) (= lt!2255998 (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920)))))))

(assert (= (and d!1768450 c!980678) b!5594730))

(assert (= (and d!1768450 (not c!980678)) b!5594731))

(assert (= (and d!1768450 res!2373366) b!5594732))

(assert (= (and b!5594732 res!2373365) b!5594733))

(declare-fun m!6574184 () Bool)

(assert (=> b!5594731 m!6574184))

(declare-fun m!6574186 () Bool)

(assert (=> d!1768450 m!6574186))

(assert (=> d!1768450 m!6573036))

(declare-fun m!6574188 () Bool)

(assert (=> d!1768450 m!6574188))

(declare-fun m!6574190 () Bool)

(assert (=> d!1768450 m!6574190))

(declare-fun m!6574192 () Bool)

(assert (=> b!5594732 m!6574192))

(assert (=> b!5594732 m!6573036))

(declare-fun m!6574194 () Bool)

(assert (=> b!5594732 m!6574194))

(declare-fun m!6574196 () Bool)

(assert (=> b!5594732 m!6574196))

(assert (=> b!5593402 d!1768450))

(declare-fun b!5594734 () Bool)

(declare-fun e!3451389 () List!63044)

(assert (=> b!5594734 (= e!3451389 (Cons!62920 (h!69368 s!2326) Nil!62920))))

(declare-fun b!5594735 () Bool)

(assert (=> b!5594735 (= e!3451389 (Cons!62920 (h!69368 Nil!62920) (++!13809 (t!376324 Nil!62920) (Cons!62920 (h!69368 s!2326) Nil!62920))))))

(declare-fun d!1768452 () Bool)

(declare-fun e!3451388 () Bool)

(assert (=> d!1768452 e!3451388))

(declare-fun res!2373368 () Bool)

(assert (=> d!1768452 (=> (not res!2373368) (not e!3451388))))

(declare-fun lt!2255999 () List!63044)

(assert (=> d!1768452 (= res!2373368 (= (content!11358 lt!2255999) ((_ map or) (content!11358 Nil!62920) (content!11358 (Cons!62920 (h!69368 s!2326) Nil!62920)))))))

(assert (=> d!1768452 (= lt!2255999 e!3451389)))

(declare-fun c!980679 () Bool)

(assert (=> d!1768452 (= c!980679 ((_ is Nil!62920) Nil!62920))))

(assert (=> d!1768452 (= (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920)) lt!2255999)))

(declare-fun b!5594736 () Bool)

(declare-fun res!2373367 () Bool)

(assert (=> b!5594736 (=> (not res!2373367) (not e!3451388))))

(assert (=> b!5594736 (= res!2373367 (= (size!39967 lt!2255999) (+ (size!39967 Nil!62920) (size!39967 (Cons!62920 (h!69368 s!2326) Nil!62920)))))))

(declare-fun b!5594737 () Bool)

(assert (=> b!5594737 (= e!3451388 (or (not (= (Cons!62920 (h!69368 s!2326) Nil!62920) Nil!62920)) (= lt!2255999 Nil!62920)))))

(assert (= (and d!1768452 c!980679) b!5594734))

(assert (= (and d!1768452 (not c!980679)) b!5594735))

(assert (= (and d!1768452 res!2373368) b!5594736))

(assert (= (and b!5594736 res!2373367) b!5594737))

(declare-fun m!6574198 () Bool)

(assert (=> b!5594735 m!6574198))

(declare-fun m!6574200 () Bool)

(assert (=> d!1768452 m!6574200))

(declare-fun m!6574202 () Bool)

(assert (=> d!1768452 m!6574202))

(declare-fun m!6574204 () Bool)

(assert (=> d!1768452 m!6574204))

(declare-fun m!6574206 () Bool)

(assert (=> b!5594736 m!6574206))

(declare-fun m!6574208 () Bool)

(assert (=> b!5594736 m!6574208))

(declare-fun m!6574210 () Bool)

(assert (=> b!5594736 m!6574210))

(assert (=> b!5593402 d!1768452))

(declare-fun d!1768454 () Bool)

(assert (=> d!1768454 (= (++!13809 (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920)) (t!376324 s!2326)) s!2326)))

(declare-fun lt!2256002 () Unit!155740)

(declare-fun choose!42427 (List!63044 C!31432 List!63044 List!63044) Unit!155740)

(assert (=> d!1768454 (= lt!2256002 (choose!42427 Nil!62920 (h!69368 s!2326) (t!376324 s!2326) s!2326))))

(assert (=> d!1768454 (= (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) (t!376324 s!2326))) s!2326)))

(assert (=> d!1768454 (= (lemmaMoveElementToOtherListKeepsConcatEq!1978 Nil!62920 (h!69368 s!2326) (t!376324 s!2326) s!2326) lt!2256002)))

(declare-fun bs!1293594 () Bool)

(assert (= bs!1293594 d!1768454))

(assert (=> bs!1293594 m!6573036))

(assert (=> bs!1293594 m!6573036))

(assert (=> bs!1293594 m!6573038))

(declare-fun m!6574212 () Bool)

(assert (=> bs!1293594 m!6574212))

(declare-fun m!6574214 () Bool)

(assert (=> bs!1293594 m!6574214))

(assert (=> b!5593402 d!1768454))

(declare-fun b!5594738 () Bool)

(declare-fun e!3451393 () Option!15590)

(assert (=> b!5594738 (= e!3451393 None!15589)))

(declare-fun b!5594739 () Bool)

(declare-fun e!3451391 () Bool)

(declare-fun lt!2256004 () Option!15590)

(assert (=> b!5594739 (= e!3451391 (= (++!13809 (_1!35981 (get!21667 lt!2256004)) (_2!35981 (get!21667 lt!2256004))) s!2326))))

(declare-fun d!1768456 () Bool)

(declare-fun e!3451390 () Bool)

(assert (=> d!1768456 e!3451390))

(declare-fun res!2373369 () Bool)

(assert (=> d!1768456 (=> res!2373369 e!3451390)))

(assert (=> d!1768456 (= res!2373369 e!3451391)))

(declare-fun res!2373371 () Bool)

(assert (=> d!1768456 (=> (not res!2373371) (not e!3451391))))

(assert (=> d!1768456 (= res!2373371 (isDefined!12293 lt!2256004))))

(declare-fun e!3451392 () Option!15590)

(assert (=> d!1768456 (= lt!2256004 e!3451392)))

(declare-fun c!980681 () Bool)

(declare-fun e!3451394 () Bool)

(assert (=> d!1768456 (= c!980681 e!3451394)))

(declare-fun res!2373373 () Bool)

(assert (=> d!1768456 (=> (not res!2373373) (not e!3451394))))

(assert (=> d!1768456 (= res!2373373 (matchR!7766 (regOne!31674 r!7292) (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920))))))

(assert (=> d!1768456 (validRegex!7317 (regOne!31674 r!7292))))

(assert (=> d!1768456 (= (findConcatSeparation!2004 (regOne!31674 r!7292) (regTwo!31674 r!7292) (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920)) (t!376324 s!2326) s!2326) lt!2256004)))

(declare-fun b!5594740 () Bool)

(assert (=> b!5594740 (= e!3451392 e!3451393)))

(declare-fun c!980680 () Bool)

(assert (=> b!5594740 (= c!980680 ((_ is Nil!62920) (t!376324 s!2326)))))

(declare-fun b!5594741 () Bool)

(assert (=> b!5594741 (= e!3451392 (Some!15589 (tuple2!65357 (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920)) (t!376324 s!2326))))))

(declare-fun b!5594742 () Bool)

(declare-fun res!2373370 () Bool)

(assert (=> b!5594742 (=> (not res!2373370) (not e!3451391))))

(assert (=> b!5594742 (= res!2373370 (matchR!7766 (regOne!31674 r!7292) (_1!35981 (get!21667 lt!2256004))))))

(declare-fun b!5594743 () Bool)

(assert (=> b!5594743 (= e!3451390 (not (isDefined!12293 lt!2256004)))))

(declare-fun b!5594744 () Bool)

(assert (=> b!5594744 (= e!3451394 (matchR!7766 (regTwo!31674 r!7292) (t!376324 s!2326)))))

(declare-fun b!5594745 () Bool)

(declare-fun res!2373372 () Bool)

(assert (=> b!5594745 (=> (not res!2373372) (not e!3451391))))

(assert (=> b!5594745 (= res!2373372 (matchR!7766 (regTwo!31674 r!7292) (_2!35981 (get!21667 lt!2256004))))))

(declare-fun b!5594746 () Bool)

(declare-fun lt!2256005 () Unit!155740)

(declare-fun lt!2256003 () Unit!155740)

(assert (=> b!5594746 (= lt!2256005 lt!2256003)))

(assert (=> b!5594746 (= (++!13809 (++!13809 (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920)) (Cons!62920 (h!69368 (t!376324 s!2326)) Nil!62920)) (t!376324 (t!376324 s!2326))) s!2326)))

(assert (=> b!5594746 (= lt!2256003 (lemmaMoveElementToOtherListKeepsConcatEq!1978 (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920)) (h!69368 (t!376324 s!2326)) (t!376324 (t!376324 s!2326)) s!2326))))

(assert (=> b!5594746 (= e!3451393 (findConcatSeparation!2004 (regOne!31674 r!7292) (regTwo!31674 r!7292) (++!13809 (++!13809 Nil!62920 (Cons!62920 (h!69368 s!2326) Nil!62920)) (Cons!62920 (h!69368 (t!376324 s!2326)) Nil!62920)) (t!376324 (t!376324 s!2326)) s!2326))))

(assert (= (and d!1768456 res!2373373) b!5594744))

(assert (= (and d!1768456 c!980681) b!5594741))

(assert (= (and d!1768456 (not c!980681)) b!5594740))

(assert (= (and b!5594740 c!980680) b!5594738))

(assert (= (and b!5594740 (not c!980680)) b!5594746))

(assert (= (and d!1768456 res!2373371) b!5594742))

(assert (= (and b!5594742 res!2373370) b!5594745))

(assert (= (and b!5594745 res!2373372) b!5594739))

(assert (= (and d!1768456 (not res!2373369)) b!5594743))

(declare-fun m!6574216 () Bool)

(assert (=> b!5594744 m!6574216))

(declare-fun m!6574218 () Bool)

(assert (=> b!5594745 m!6574218))

(declare-fun m!6574220 () Bool)

(assert (=> b!5594745 m!6574220))

(declare-fun m!6574222 () Bool)

(assert (=> d!1768456 m!6574222))

(assert (=> d!1768456 m!6573036))

(declare-fun m!6574224 () Bool)

(assert (=> d!1768456 m!6574224))

(assert (=> d!1768456 m!6573034))

(assert (=> b!5594746 m!6573036))

(declare-fun m!6574226 () Bool)

(assert (=> b!5594746 m!6574226))

(assert (=> b!5594746 m!6574226))

(declare-fun m!6574228 () Bool)

(assert (=> b!5594746 m!6574228))

(assert (=> b!5594746 m!6573036))

(declare-fun m!6574230 () Bool)

(assert (=> b!5594746 m!6574230))

(assert (=> b!5594746 m!6574226))

(declare-fun m!6574232 () Bool)

(assert (=> b!5594746 m!6574232))

(assert (=> b!5594739 m!6574218))

(declare-fun m!6574234 () Bool)

(assert (=> b!5594739 m!6574234))

(assert (=> b!5594743 m!6574222))

(assert (=> b!5594742 m!6574218))

(declare-fun m!6574236 () Bool)

(assert (=> b!5594742 m!6574236))

(assert (=> b!5593402 d!1768456))

(declare-fun d!1768458 () Bool)

(assert (=> d!1768458 (= (Exists!2681 lambda!300280) (choose!42415 lambda!300280))))

(declare-fun bs!1293595 () Bool)

(assert (= bs!1293595 d!1768458))

(declare-fun m!6574238 () Bool)

(assert (=> bs!1293595 m!6574238))

(assert (=> d!1767890 d!1768458))

(declare-fun d!1768460 () Bool)

(assert (=> d!1768460 (= (Exists!2681 lambda!300281) (choose!42415 lambda!300281))))

(declare-fun bs!1293596 () Bool)

(assert (= bs!1293596 d!1768460))

(declare-fun m!6574240 () Bool)

(assert (=> bs!1293596 m!6574240))

(assert (=> d!1767890 d!1768460))

(declare-fun bs!1293597 () Bool)

(declare-fun d!1768462 () Bool)

(assert (= bs!1293597 (and d!1768462 b!5594615)))

(declare-fun lambda!300361 () Int)

(assert (=> bs!1293597 (not (= lambda!300361 lambda!300349))))

(declare-fun bs!1293598 () Bool)

(assert (= bs!1293598 (and d!1768462 d!1767890)))

(assert (=> bs!1293598 (= lambda!300361 lambda!300280)))

(declare-fun bs!1293599 () Bool)

(assert (= bs!1293599 (and d!1768462 b!5594609)))

(assert (=> bs!1293599 (not (= lambda!300361 lambda!300350))))

(assert (=> bs!1293598 (not (= lambda!300361 lambda!300281))))

(declare-fun bs!1293600 () Bool)

(assert (= bs!1293600 (and d!1768462 b!5593659)))

(assert (=> bs!1293600 (not (= lambda!300361 lambda!300293))))

(declare-fun bs!1293601 () Bool)

(assert (= bs!1293601 (and d!1768462 d!1768324)))

(assert (=> bs!1293601 (= lambda!300361 lambda!300346)))

(declare-fun bs!1293602 () Bool)

(assert (= bs!1293602 (and d!1768462 b!5593653)))

(assert (=> bs!1293602 (not (= lambda!300361 lambda!300294))))

(declare-fun bs!1293603 () Bool)

(assert (= bs!1293603 (and d!1768462 b!5593022)))

(assert (=> bs!1293603 (not (= lambda!300361 lambda!300241))))

(declare-fun bs!1293604 () Bool)

(assert (= bs!1293604 (and d!1768462 d!1767886)))

(assert (=> bs!1293604 (= lambda!300361 lambda!300272)))

(assert (=> bs!1293603 (= lambda!300361 lambda!300240)))

(assert (=> d!1768462 true))

(assert (=> d!1768462 true))

(assert (=> d!1768462 true))

(declare-fun lambda!300362 () Int)

(assert (=> bs!1293597 (not (= lambda!300362 lambda!300349))))

(assert (=> bs!1293598 (not (= lambda!300362 lambda!300280))))

(assert (=> bs!1293599 (= (and (= (regOne!31674 r!7292) (regOne!31674 (regOne!31675 r!7292))) (= (regTwo!31674 r!7292) (regTwo!31674 (regOne!31675 r!7292)))) (= lambda!300362 lambda!300350))))

(assert (=> bs!1293598 (= lambda!300362 lambda!300281)))

(assert (=> bs!1293600 (not (= lambda!300362 lambda!300293))))

(assert (=> bs!1293601 (not (= lambda!300362 lambda!300346))))

(assert (=> bs!1293603 (= lambda!300362 lambda!300241)))

(assert (=> bs!1293604 (not (= lambda!300362 lambda!300272))))

(assert (=> bs!1293603 (not (= lambda!300362 lambda!300240))))

(declare-fun bs!1293605 () Bool)

(assert (= bs!1293605 d!1768462))

(assert (=> bs!1293605 (not (= lambda!300362 lambda!300361))))

(assert (=> bs!1293602 (= lambda!300362 lambda!300294)))

(assert (=> d!1768462 true))

(assert (=> d!1768462 true))

(assert (=> d!1768462 true))

(assert (=> d!1768462 (= (Exists!2681 lambda!300361) (Exists!2681 lambda!300362))))

(assert (=> d!1768462 true))

(declare-fun _$90!1331 () Unit!155740)

(assert (=> d!1768462 (= (choose!42417 (regOne!31674 r!7292) (regTwo!31674 r!7292) s!2326) _$90!1331)))

(declare-fun m!6574242 () Bool)

(assert (=> bs!1293605 m!6574242))

(declare-fun m!6574244 () Bool)

(assert (=> bs!1293605 m!6574244))

(assert (=> d!1767890 d!1768462))

(assert (=> d!1767890 d!1768322))

(declare-fun d!1768464 () Bool)

(assert (=> d!1768464 (= (isEmpty!34738 (tail!11025 (exprs!5465 (h!69367 zl!343)))) ((_ is Nil!62918) (tail!11025 (exprs!5465 (h!69367 zl!343)))))))

(assert (=> b!5593763 d!1768464))

(declare-fun d!1768466 () Bool)

(assert (=> d!1768466 (= (tail!11025 (exprs!5465 (h!69367 zl!343))) (t!376322 (exprs!5465 (h!69367 zl!343))))))

(assert (=> b!5593763 d!1768466))

(declare-fun c!980682 () Bool)

(declare-fun c!980685 () Bool)

(declare-fun bm!419409 () Bool)

(declare-fun call!419417 () List!63042)

(assert (=> bm!419409 (= call!419417 ($colon$colon!1643 (exprs!5465 (ite c!980324 lt!2255845 (Context!9931 call!419161))) (ite (or c!980685 c!980682) (regTwo!31674 (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292))))) (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292)))))))))

(declare-fun b!5594756 () Bool)

(declare-fun e!3451403 () (InoxSet Context!9930))

(declare-fun call!419414 () (InoxSet Context!9930))

(declare-fun call!419415 () (InoxSet Context!9930))

(assert (=> b!5594756 (= e!3451403 ((_ map or) call!419414 call!419415))))

(declare-fun b!5594757 () Bool)

(declare-fun e!3451404 () (InoxSet Context!9930))

(declare-fun call!419419 () (InoxSet Context!9930))

(assert (=> b!5594757 (= e!3451404 ((_ map or) call!419414 call!419419))))

(declare-fun b!5594758 () Bool)

(declare-fun e!3451401 () (InoxSet Context!9930))

(assert (=> b!5594758 (= e!3451401 e!3451404)))

(declare-fun c!980686 () Bool)

(assert (=> b!5594758 (= c!980686 ((_ is Union!15581) (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292))))))))

(declare-fun b!5594759 () Bool)

(declare-fun c!980684 () Bool)

(assert (=> b!5594759 (= c!980684 ((_ is Star!15581) (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292))))))))

(declare-fun e!3451400 () (InoxSet Context!9930))

(declare-fun e!3451402 () (InoxSet Context!9930))

(assert (=> b!5594759 (= e!3451400 e!3451402)))

(declare-fun b!5594760 () Bool)

(declare-fun e!3451399 () Bool)

(assert (=> b!5594760 (= e!3451399 (nullable!5613 (regOne!31674 (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292)))))))))

(declare-fun bm!419410 () Bool)

(assert (=> bm!419410 (= call!419415 call!419419)))

(declare-fun call!419416 () List!63042)

(declare-fun bm!419411 () Bool)

(assert (=> bm!419411 (= call!419419 (derivationStepZipperDown!923 (ite c!980686 (regTwo!31675 (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292))))) (ite c!980685 (regTwo!31674 (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292))))) (ite c!980682 (regOne!31674 (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292))))) (reg!15910 (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292)))))))) (ite (or c!980686 c!980685) (ite c!980324 lt!2255845 (Context!9931 call!419161)) (Context!9931 call!419416)) (h!69368 s!2326)))))

(declare-fun b!5594761 () Bool)

(assert (=> b!5594761 (= e!3451403 e!3451400)))

(assert (=> b!5594761 (= c!980682 ((_ is Concat!24426) (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292))))))))

(declare-fun c!980683 () Bool)

(declare-fun d!1768468 () Bool)

(assert (=> d!1768468 (= c!980683 (and ((_ is ElementMatch!15581) (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292))))) (= (c!980214 (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292))))) (h!69368 s!2326))))))

(assert (=> d!1768468 (= (derivationStepZipperDown!923 (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292)))) (ite c!980324 lt!2255845 (Context!9931 call!419161)) (h!69368 s!2326)) e!3451401)))

(declare-fun b!5594755 () Bool)

(declare-fun call!419418 () (InoxSet Context!9930))

(assert (=> b!5594755 (= e!3451400 call!419418)))

(declare-fun bm!419412 () Bool)

(assert (=> bm!419412 (= call!419418 call!419415)))

(declare-fun bm!419413 () Bool)

(assert (=> bm!419413 (= call!419414 (derivationStepZipperDown!923 (ite c!980686 (regOne!31675 (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292))))) (regOne!31674 (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292)))))) (ite c!980686 (ite c!980324 lt!2255845 (Context!9931 call!419161)) (Context!9931 call!419417)) (h!69368 s!2326)))))

(declare-fun b!5594762 () Bool)

(assert (=> b!5594762 (= c!980685 e!3451399)))

(declare-fun res!2373382 () Bool)

(assert (=> b!5594762 (=> (not res!2373382) (not e!3451399))))

(assert (=> b!5594762 (= res!2373382 ((_ is Concat!24426) (ite c!980324 (regOne!31675 (regOne!31675 (regOne!31674 r!7292))) (regOne!31674 (regOne!31675 (regOne!31674 r!7292))))))))

(assert (=> b!5594762 (= e!3451404 e!3451403)))

(declare-fun b!5594763 () Bool)

(assert (=> b!5594763 (= e!3451402 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594764 () Bool)

(assert (=> b!5594764 (= e!3451401 (store ((as const (Array Context!9930 Bool)) false) (ite c!980324 lt!2255845 (Context!9931 call!419161)) true))))

(declare-fun bm!419414 () Bool)

(assert (=> bm!419414 (= call!419416 call!419417)))

(declare-fun b!5594765 () Bool)

(assert (=> b!5594765 (= e!3451402 call!419418)))

(assert (= (and d!1768468 c!980683) b!5594764))

(assert (= (and d!1768468 (not c!980683)) b!5594758))

(assert (= (and b!5594758 c!980686) b!5594757))

(assert (= (and b!5594758 (not c!980686)) b!5594762))

(assert (= (and b!5594762 res!2373382) b!5594760))

(assert (= (and b!5594762 c!980685) b!5594756))

(assert (= (and b!5594762 (not c!980685)) b!5594761))

(assert (= (and b!5594761 c!980682) b!5594755))

(assert (= (and b!5594761 (not c!980682)) b!5594759))

(assert (= (and b!5594759 c!980684) b!5594765))

(assert (= (and b!5594759 (not c!980684)) b!5594763))

(assert (= (or b!5594755 b!5594765) bm!419414))

(assert (= (or b!5594755 b!5594765) bm!419412))

(assert (= (or b!5594756 bm!419414) bm!419409))

(assert (= (or b!5594756 bm!419412) bm!419410))

(assert (= (or b!5594757 bm!419410) bm!419411))

(assert (= (or b!5594757 b!5594756) bm!419413))

(declare-fun m!6574246 () Bool)

(assert (=> bm!419413 m!6574246))

(declare-fun m!6574248 () Bool)

(assert (=> bm!419411 m!6574248))

(declare-fun m!6574250 () Bool)

(assert (=> bm!419409 m!6574250))

(declare-fun m!6574252 () Bool)

(assert (=> b!5594760 m!6574252))

(declare-fun m!6574254 () Bool)

(assert (=> b!5594764 m!6574254))

(assert (=> bm!419157 d!1768468))

(declare-fun b!5594766 () Bool)

(declare-fun e!3451409 () Bool)

(declare-fun e!3451407 () Bool)

(assert (=> b!5594766 (= e!3451409 e!3451407)))

(declare-fun res!2373387 () Bool)

(assert (=> b!5594766 (= res!2373387 (not (nullable!5613 (reg!15910 (ite c!980418 (reg!15910 r!7292) (ite c!980417 (regTwo!31675 r!7292) (regTwo!31674 r!7292)))))))))

(assert (=> b!5594766 (=> (not res!2373387) (not e!3451407))))

(declare-fun b!5594767 () Bool)

(declare-fun call!419422 () Bool)

(assert (=> b!5594767 (= e!3451407 call!419422)))

(declare-fun b!5594768 () Bool)

(declare-fun e!3451410 () Bool)

(assert (=> b!5594768 (= e!3451410 e!3451409)))

(declare-fun c!980688 () Bool)

(assert (=> b!5594768 (= c!980688 ((_ is Star!15581) (ite c!980418 (reg!15910 r!7292) (ite c!980417 (regTwo!31675 r!7292) (regTwo!31674 r!7292)))))))

(declare-fun bm!419415 () Bool)

(declare-fun call!419420 () Bool)

(assert (=> bm!419415 (= call!419420 call!419422)))

(declare-fun d!1768470 () Bool)

(declare-fun res!2373384 () Bool)

(assert (=> d!1768470 (=> res!2373384 e!3451410)))

(assert (=> d!1768470 (= res!2373384 ((_ is ElementMatch!15581) (ite c!980418 (reg!15910 r!7292) (ite c!980417 (regTwo!31675 r!7292) (regTwo!31674 r!7292)))))))

(assert (=> d!1768470 (= (validRegex!7317 (ite c!980418 (reg!15910 r!7292) (ite c!980417 (regTwo!31675 r!7292) (regTwo!31674 r!7292)))) e!3451410)))

(declare-fun bm!419416 () Bool)

(declare-fun call!419421 () Bool)

(declare-fun c!980687 () Bool)

(assert (=> bm!419416 (= call!419421 (validRegex!7317 (ite c!980687 (regOne!31675 (ite c!980418 (reg!15910 r!7292) (ite c!980417 (regTwo!31675 r!7292) (regTwo!31674 r!7292)))) (regOne!31674 (ite c!980418 (reg!15910 r!7292) (ite c!980417 (regTwo!31675 r!7292) (regTwo!31674 r!7292)))))))))

(declare-fun bm!419417 () Bool)

(assert (=> bm!419417 (= call!419422 (validRegex!7317 (ite c!980688 (reg!15910 (ite c!980418 (reg!15910 r!7292) (ite c!980417 (regTwo!31675 r!7292) (regTwo!31674 r!7292)))) (ite c!980687 (regTwo!31675 (ite c!980418 (reg!15910 r!7292) (ite c!980417 (regTwo!31675 r!7292) (regTwo!31674 r!7292)))) (regTwo!31674 (ite c!980418 (reg!15910 r!7292) (ite c!980417 (regTwo!31675 r!7292) (regTwo!31674 r!7292))))))))))

(declare-fun b!5594769 () Bool)

(declare-fun res!2373383 () Bool)

(declare-fun e!3451411 () Bool)

(assert (=> b!5594769 (=> (not res!2373383) (not e!3451411))))

(assert (=> b!5594769 (= res!2373383 call!419421)))

(declare-fun e!3451406 () Bool)

(assert (=> b!5594769 (= e!3451406 e!3451411)))

(declare-fun b!5594770 () Bool)

(declare-fun e!3451405 () Bool)

(declare-fun e!3451408 () Bool)

(assert (=> b!5594770 (= e!3451405 e!3451408)))

(declare-fun res!2373385 () Bool)

(assert (=> b!5594770 (=> (not res!2373385) (not e!3451408))))

(assert (=> b!5594770 (= res!2373385 call!419421)))

(declare-fun b!5594771 () Bool)

(declare-fun res!2373386 () Bool)

(assert (=> b!5594771 (=> res!2373386 e!3451405)))

(assert (=> b!5594771 (= res!2373386 (not ((_ is Concat!24426) (ite c!980418 (reg!15910 r!7292) (ite c!980417 (regTwo!31675 r!7292) (regTwo!31674 r!7292))))))))

(assert (=> b!5594771 (= e!3451406 e!3451405)))

(declare-fun b!5594772 () Bool)

(assert (=> b!5594772 (= e!3451408 call!419420)))

(declare-fun b!5594773 () Bool)

(assert (=> b!5594773 (= e!3451411 call!419420)))

(declare-fun b!5594774 () Bool)

(assert (=> b!5594774 (= e!3451409 e!3451406)))

(assert (=> b!5594774 (= c!980687 ((_ is Union!15581) (ite c!980418 (reg!15910 r!7292) (ite c!980417 (regTwo!31675 r!7292) (regTwo!31674 r!7292)))))))

(assert (= (and d!1768470 (not res!2373384)) b!5594768))

(assert (= (and b!5594768 c!980688) b!5594766))

(assert (= (and b!5594768 (not c!980688)) b!5594774))

(assert (= (and b!5594766 res!2373387) b!5594767))

(assert (= (and b!5594774 c!980687) b!5594769))

(assert (= (and b!5594774 (not c!980687)) b!5594771))

(assert (= (and b!5594769 res!2373383) b!5594773))

(assert (= (and b!5594771 (not res!2373386)) b!5594770))

(assert (= (and b!5594770 res!2373385) b!5594772))

(assert (= (or b!5594773 b!5594772) bm!419415))

(assert (= (or b!5594769 b!5594770) bm!419416))

(assert (= (or b!5594767 bm!419415) bm!419417))

(declare-fun m!6574256 () Bool)

(assert (=> b!5594766 m!6574256))

(declare-fun m!6574258 () Bool)

(assert (=> bm!419416 m!6574258))

(declare-fun m!6574260 () Bool)

(assert (=> bm!419417 m!6574260))

(assert (=> bm!419207 d!1768470))

(declare-fun bs!1293606 () Bool)

(declare-fun d!1768472 () Bool)

(assert (= bs!1293606 (and d!1768472 d!1768000)))

(declare-fun lambda!300363 () Int)

(assert (=> bs!1293606 (= lambda!300363 lambda!300298)))

(declare-fun bs!1293607 () Bool)

(assert (= bs!1293607 (and d!1768472 d!1767858)))

(assert (=> bs!1293607 (= lambda!300363 lambda!300257)))

(declare-fun bs!1293608 () Bool)

(assert (= bs!1293608 (and d!1768472 d!1768314)))

(assert (=> bs!1293608 (= lambda!300363 lambda!300343)))

(declare-fun bs!1293609 () Bool)

(assert (= bs!1293609 (and d!1768472 d!1767990)))

(assert (=> bs!1293609 (= lambda!300363 lambda!300297)))

(declare-fun bs!1293610 () Bool)

(assert (= bs!1293610 (and d!1768472 d!1767966)))

(assert (=> bs!1293610 (= lambda!300363 lambda!300288)))

(declare-fun bs!1293611 () Bool)

(assert (= bs!1293611 (and d!1768472 d!1767852)))

(assert (=> bs!1293611 (= lambda!300363 lambda!300254)))

(declare-fun bs!1293612 () Bool)

(assert (= bs!1293612 (and d!1768472 d!1768370)))

(assert (=> bs!1293612 (= lambda!300363 lambda!300348)))

(declare-fun bs!1293613 () Bool)

(assert (= bs!1293613 (and d!1768472 d!1768284)))

(assert (=> bs!1293613 (= lambda!300363 lambda!300337)))

(declare-fun bs!1293614 () Bool)

(assert (= bs!1293614 (and d!1768472 d!1768424)))

(assert (=> bs!1293614 (= lambda!300363 lambda!300354)))

(declare-fun b!5594775 () Bool)

(declare-fun e!3451413 () Bool)

(declare-fun lt!2256006 () Regex!15581)

(assert (=> b!5594775 (= e!3451413 (isConcat!658 lt!2256006))))

(declare-fun b!5594776 () Bool)

(assert (=> b!5594776 (= e!3451413 (= lt!2256006 (head!11930 (t!376322 (exprs!5465 (h!69367 zl!343))))))))

(declare-fun b!5594777 () Bool)

(declare-fun e!3451412 () Regex!15581)

(declare-fun e!3451416 () Regex!15581)

(assert (=> b!5594777 (= e!3451412 e!3451416)))

(declare-fun c!980692 () Bool)

(assert (=> b!5594777 (= c!980692 ((_ is Cons!62918) (t!376322 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun b!5594778 () Bool)

(assert (=> b!5594778 (= e!3451412 (h!69366 (t!376322 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun e!3451415 () Bool)

(assert (=> d!1768472 e!3451415))

(declare-fun res!2373389 () Bool)

(assert (=> d!1768472 (=> (not res!2373389) (not e!3451415))))

(assert (=> d!1768472 (= res!2373389 (validRegex!7317 lt!2256006))))

(assert (=> d!1768472 (= lt!2256006 e!3451412)))

(declare-fun c!980690 () Bool)

(declare-fun e!3451414 () Bool)

(assert (=> d!1768472 (= c!980690 e!3451414)))

(declare-fun res!2373388 () Bool)

(assert (=> d!1768472 (=> (not res!2373388) (not e!3451414))))

(assert (=> d!1768472 (= res!2373388 ((_ is Cons!62918) (t!376322 (exprs!5465 (h!69367 zl!343)))))))

(assert (=> d!1768472 (forall!14746 (t!376322 (exprs!5465 (h!69367 zl!343))) lambda!300363)))

(assert (=> d!1768472 (= (generalisedConcat!1196 (t!376322 (exprs!5465 (h!69367 zl!343)))) lt!2256006)))

(declare-fun b!5594779 () Bool)

(declare-fun e!3451417 () Bool)

(assert (=> b!5594779 (= e!3451415 e!3451417)))

(declare-fun c!980691 () Bool)

(assert (=> b!5594779 (= c!980691 (isEmpty!34738 (t!376322 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun b!5594780 () Bool)

(assert (=> b!5594780 (= e!3451417 e!3451413)))

(declare-fun c!980689 () Bool)

(assert (=> b!5594780 (= c!980689 (isEmpty!34738 (tail!11025 (t!376322 (exprs!5465 (h!69367 zl!343))))))))

(declare-fun b!5594781 () Bool)

(assert (=> b!5594781 (= e!3451414 (isEmpty!34738 (t!376322 (t!376322 (exprs!5465 (h!69367 zl!343))))))))

(declare-fun b!5594782 () Bool)

(assert (=> b!5594782 (= e!3451417 (isEmptyExpr!1135 lt!2256006))))

(declare-fun b!5594783 () Bool)

(assert (=> b!5594783 (= e!3451416 EmptyExpr!15581)))

(declare-fun b!5594784 () Bool)

(assert (=> b!5594784 (= e!3451416 (Concat!24426 (h!69366 (t!376322 (exprs!5465 (h!69367 zl!343)))) (generalisedConcat!1196 (t!376322 (t!376322 (exprs!5465 (h!69367 zl!343)))))))))

(assert (= (and d!1768472 res!2373388) b!5594781))

(assert (= (and d!1768472 c!980690) b!5594778))

(assert (= (and d!1768472 (not c!980690)) b!5594777))

(assert (= (and b!5594777 c!980692) b!5594784))

(assert (= (and b!5594777 (not c!980692)) b!5594783))

(assert (= (and d!1768472 res!2373389) b!5594779))

(assert (= (and b!5594779 c!980691) b!5594782))

(assert (= (and b!5594779 (not c!980691)) b!5594780))

(assert (= (and b!5594780 c!980689) b!5594776))

(assert (= (and b!5594780 (not c!980689)) b!5594775))

(declare-fun m!6574262 () Bool)

(assert (=> b!5594782 m!6574262))

(declare-fun m!6574264 () Bool)

(assert (=> d!1768472 m!6574264))

(declare-fun m!6574266 () Bool)

(assert (=> d!1768472 m!6574266))

(declare-fun m!6574268 () Bool)

(assert (=> b!5594784 m!6574268))

(declare-fun m!6574270 () Bool)

(assert (=> b!5594775 m!6574270))

(declare-fun m!6574272 () Bool)

(assert (=> b!5594776 m!6574272))

(assert (=> b!5594779 m!6572724))

(declare-fun m!6574274 () Bool)

(assert (=> b!5594780 m!6574274))

(assert (=> b!5594780 m!6574274))

(declare-fun m!6574276 () Bool)

(assert (=> b!5594780 m!6574276))

(declare-fun m!6574278 () Bool)

(assert (=> b!5594781 m!6574278))

(assert (=> b!5593767 d!1768472))

(declare-fun c!980696 () Bool)

(declare-fun call!419426 () List!63042)

(declare-fun bm!419418 () Bool)

(declare-fun c!980693 () Bool)

(assert (=> bm!419418 (= call!419426 ($colon$colon!1643 (exprs!5465 (ite (or c!980378 c!980377) lt!2255845 (Context!9931 call!419187))) (ite (or c!980696 c!980693) (regTwo!31674 (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343)))))))) (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343))))))))))))

(declare-fun b!5594786 () Bool)

(declare-fun e!3451422 () (InoxSet Context!9930))

(declare-fun call!419423 () (InoxSet Context!9930))

(declare-fun call!419424 () (InoxSet Context!9930))

(assert (=> b!5594786 (= e!3451422 ((_ map or) call!419423 call!419424))))

(declare-fun b!5594787 () Bool)

(declare-fun e!3451423 () (InoxSet Context!9930))

(declare-fun call!419428 () (InoxSet Context!9930))

(assert (=> b!5594787 (= e!3451423 ((_ map or) call!419423 call!419428))))

(declare-fun b!5594788 () Bool)

(declare-fun e!3451420 () (InoxSet Context!9930))

(assert (=> b!5594788 (= e!3451420 e!3451423)))

(declare-fun c!980697 () Bool)

(assert (=> b!5594788 (= c!980697 ((_ is Union!15581) (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343)))))))))))

(declare-fun c!980695 () Bool)

(declare-fun b!5594789 () Bool)

(assert (=> b!5594789 (= c!980695 ((_ is Star!15581) (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343)))))))))))

(declare-fun e!3451419 () (InoxSet Context!9930))

(declare-fun e!3451421 () (InoxSet Context!9930))

(assert (=> b!5594789 (= e!3451419 e!3451421)))

(declare-fun b!5594790 () Bool)

(declare-fun e!3451418 () Bool)

(assert (=> b!5594790 (= e!3451418 (nullable!5613 (regOne!31674 (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343))))))))))))

(declare-fun bm!419419 () Bool)

(assert (=> bm!419419 (= call!419424 call!419428)))

(declare-fun bm!419420 () Bool)

(declare-fun call!419425 () List!63042)

(assert (=> bm!419420 (= call!419428 (derivationStepZipperDown!923 (ite c!980697 (regTwo!31675 (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343)))))))) (ite c!980696 (regTwo!31674 (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343)))))))) (ite c!980693 (regOne!31674 (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343)))))))) (reg!15910 (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343))))))))))) (ite (or c!980697 c!980696) (ite (or c!980378 c!980377) lt!2255845 (Context!9931 call!419187)) (Context!9931 call!419425)) (h!69368 s!2326)))))

(declare-fun b!5594791 () Bool)

(assert (=> b!5594791 (= e!3451422 e!3451419)))

(assert (=> b!5594791 (= c!980693 ((_ is Concat!24426) (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343)))))))))))

(declare-fun c!980694 () Bool)

(declare-fun d!1768474 () Bool)

(assert (=> d!1768474 (= c!980694 (and ((_ is ElementMatch!15581) (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343)))))))) (= (c!980214 (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343)))))))) (h!69368 s!2326))))))

(assert (=> d!1768474 (= (derivationStepZipperDown!923 (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343))))))) (ite (or c!980378 c!980377) lt!2255845 (Context!9931 call!419187)) (h!69368 s!2326)) e!3451420)))

(declare-fun b!5594785 () Bool)

(declare-fun call!419427 () (InoxSet Context!9930))

(assert (=> b!5594785 (= e!3451419 call!419427)))

(declare-fun bm!419421 () Bool)

(assert (=> bm!419421 (= call!419427 call!419424)))

(declare-fun bm!419422 () Bool)

(assert (=> bm!419422 (= call!419423 (derivationStepZipperDown!923 (ite c!980697 (regOne!31675 (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343)))))))) (regOne!31674 (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343))))))))) (ite c!980697 (ite (or c!980378 c!980377) lt!2255845 (Context!9931 call!419187)) (Context!9931 call!419426)) (h!69368 s!2326)))))

(declare-fun b!5594792 () Bool)

(assert (=> b!5594792 (= c!980696 e!3451418)))

(declare-fun res!2373390 () Bool)

(assert (=> b!5594792 (=> (not res!2373390) (not e!3451418))))

(assert (=> b!5594792 (= res!2373390 ((_ is Concat!24426) (ite c!980378 (regTwo!31675 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980377 (regTwo!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (ite c!980374 (regOne!31674 (h!69366 (exprs!5465 (h!69367 zl!343)))) (reg!15910 (h!69366 (exprs!5465 (h!69367 zl!343)))))))))))

(assert (=> b!5594792 (= e!3451423 e!3451422)))

(declare-fun b!5594793 () Bool)

(assert (=> b!5594793 (= e!3451421 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594794 () Bool)

(assert (=> b!5594794 (= e!3451420 (store ((as const (Array Context!9930 Bool)) false) (ite (or c!980378 c!980377) lt!2255845 (Context!9931 call!419187)) true))))

(declare-fun bm!419423 () Bool)

(assert (=> bm!419423 (= call!419425 call!419426)))

(declare-fun b!5594795 () Bool)

(assert (=> b!5594795 (= e!3451421 call!419427)))

(assert (= (and d!1768474 c!980694) b!5594794))

(assert (= (and d!1768474 (not c!980694)) b!5594788))

(assert (= (and b!5594788 c!980697) b!5594787))

(assert (= (and b!5594788 (not c!980697)) b!5594792))

(assert (= (and b!5594792 res!2373390) b!5594790))

(assert (= (and b!5594792 c!980696) b!5594786))

(assert (= (and b!5594792 (not c!980696)) b!5594791))

(assert (= (and b!5594791 c!980693) b!5594785))

(assert (= (and b!5594791 (not c!980693)) b!5594789))

(assert (= (and b!5594789 c!980695) b!5594795))

(assert (= (and b!5594789 (not c!980695)) b!5594793))

(assert (= (or b!5594785 b!5594795) bm!419423))

(assert (= (or b!5594785 b!5594795) bm!419421))

(assert (= (or b!5594786 bm!419423) bm!419418))

(assert (= (or b!5594786 bm!419421) bm!419419))

(assert (= (or b!5594787 bm!419419) bm!419420))

(assert (= (or b!5594787 b!5594786) bm!419422))

(declare-fun m!6574280 () Bool)

(assert (=> bm!419422 m!6574280))

(declare-fun m!6574282 () Bool)

(assert (=> bm!419420 m!6574282))

(declare-fun m!6574284 () Bool)

(assert (=> bm!419418 m!6574284))

(declare-fun m!6574286 () Bool)

(assert (=> b!5594790 m!6574286))

(declare-fun m!6574288 () Bool)

(assert (=> b!5594794 m!6574288))

(assert (=> bm!419182 d!1768474))

(declare-fun bs!1293615 () Bool)

(declare-fun d!1768476 () Bool)

(assert (= bs!1293615 (and d!1768476 d!1768420)))

(declare-fun lambda!300364 () Int)

(assert (=> bs!1293615 (= lambda!300364 lambda!300353)))

(declare-fun bs!1293616 () Bool)

(assert (= bs!1293616 (and d!1768476 d!1768432)))

(assert (=> bs!1293616 (= lambda!300364 lambda!300355)))

(declare-fun bs!1293617 () Bool)

(assert (= bs!1293617 (and d!1768476 d!1768442)))

(assert (=> bs!1293617 (= lambda!300364 lambda!300356)))

(assert (=> d!1768476 (= (nullableZipper!1576 lt!2255868) (exists!2170 lt!2255868 lambda!300364))))

(declare-fun bs!1293618 () Bool)

(assert (= bs!1293618 d!1768476))

(declare-fun m!6574290 () Bool)

(assert (=> bs!1293618 m!6574290))

(assert (=> b!5593603 d!1768476))

(declare-fun d!1768478 () Bool)

(declare-fun res!2373395 () Bool)

(declare-fun e!3451427 () Bool)

(assert (=> d!1768478 (=> res!2373395 e!3451427)))

(assert (=> d!1768478 (= res!2373395 ((_ is EmptyExpr!15581) (regTwo!31675 (regOne!31674 r!7292))))))

(assert (=> d!1768478 (= (nullableFct!1722 (regTwo!31675 (regOne!31674 r!7292))) e!3451427)))

(declare-fun bm!419424 () Bool)

(declare-fun call!419430 () Bool)

(declare-fun c!980698 () Bool)

(assert (=> bm!419424 (= call!419430 (nullable!5613 (ite c!980698 (regOne!31675 (regTwo!31675 (regOne!31674 r!7292))) (regOne!31674 (regTwo!31675 (regOne!31674 r!7292))))))))

(declare-fun b!5594796 () Bool)

(declare-fun e!3451424 () Bool)

(declare-fun call!419429 () Bool)

(assert (=> b!5594796 (= e!3451424 call!419429)))

(declare-fun b!5594797 () Bool)

(declare-fun e!3451426 () Bool)

(assert (=> b!5594797 (= e!3451427 e!3451426)))

(declare-fun res!2373394 () Bool)

(assert (=> b!5594797 (=> (not res!2373394) (not e!3451426))))

(assert (=> b!5594797 (= res!2373394 (and (not ((_ is EmptyLang!15581) (regTwo!31675 (regOne!31674 r!7292)))) (not ((_ is ElementMatch!15581) (regTwo!31675 (regOne!31674 r!7292))))))))

(declare-fun b!5594798 () Bool)

(declare-fun e!3451425 () Bool)

(assert (=> b!5594798 (= e!3451425 call!419429)))

(declare-fun b!5594799 () Bool)

(declare-fun e!3451429 () Bool)

(assert (=> b!5594799 (= e!3451429 e!3451424)))

(declare-fun res!2373391 () Bool)

(assert (=> b!5594799 (= res!2373391 call!419430)))

(assert (=> b!5594799 (=> res!2373391 e!3451424)))

(declare-fun bm!419425 () Bool)

(assert (=> bm!419425 (= call!419429 (nullable!5613 (ite c!980698 (regTwo!31675 (regTwo!31675 (regOne!31674 r!7292))) (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))))))))

(declare-fun b!5594800 () Bool)

(declare-fun e!3451428 () Bool)

(assert (=> b!5594800 (= e!3451428 e!3451429)))

(assert (=> b!5594800 (= c!980698 ((_ is Union!15581) (regTwo!31675 (regOne!31674 r!7292))))))

(declare-fun b!5594801 () Bool)

(assert (=> b!5594801 (= e!3451429 e!3451425)))

(declare-fun res!2373392 () Bool)

(assert (=> b!5594801 (= res!2373392 call!419430)))

(assert (=> b!5594801 (=> (not res!2373392) (not e!3451425))))

(declare-fun b!5594802 () Bool)

(assert (=> b!5594802 (= e!3451426 e!3451428)))

(declare-fun res!2373393 () Bool)

(assert (=> b!5594802 (=> res!2373393 e!3451428)))

(assert (=> b!5594802 (= res!2373393 ((_ is Star!15581) (regTwo!31675 (regOne!31674 r!7292))))))

(assert (= (and d!1768478 (not res!2373395)) b!5594797))

(assert (= (and b!5594797 res!2373394) b!5594802))

(assert (= (and b!5594802 (not res!2373393)) b!5594800))

(assert (= (and b!5594800 c!980698) b!5594799))

(assert (= (and b!5594800 (not c!980698)) b!5594801))

(assert (= (and b!5594799 (not res!2373391)) b!5594796))

(assert (= (and b!5594801 res!2373392) b!5594798))

(assert (= (or b!5594796 b!5594798) bm!419425))

(assert (= (or b!5594799 b!5594801) bm!419424))

(declare-fun m!6574292 () Bool)

(assert (=> bm!419424 m!6574292))

(declare-fun m!6574294 () Bool)

(assert (=> bm!419425 m!6574294))

(assert (=> d!1767962 d!1768478))

(assert (=> b!5593692 d!1768438))

(assert (=> b!5593692 d!1768440))

(assert (=> d!1767982 d!1768282))

(declare-fun e!3451432 () (InoxSet Context!9930))

(declare-fun b!5594803 () Bool)

(declare-fun call!419431 () (InoxSet Context!9930))

(assert (=> b!5594803 (= e!3451432 ((_ map or) call!419431 (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255845)))))) (h!69368 s!2326))))))

(declare-fun b!5594804 () Bool)

(declare-fun e!3451430 () Bool)

(assert (=> b!5594804 (= e!3451430 (nullable!5613 (h!69366 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255845)))))))))

(declare-fun bm!419426 () Bool)

(assert (=> bm!419426 (= call!419431 (derivationStepZipperDown!923 (h!69366 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255845))))) (Context!9931 (t!376322 (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255845)))))) (h!69368 s!2326)))))

(declare-fun b!5594806 () Bool)

(declare-fun e!3451431 () (InoxSet Context!9930))

(assert (=> b!5594806 (= e!3451431 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594807 () Bool)

(assert (=> b!5594807 (= e!3451432 e!3451431)))

(declare-fun c!980699 () Bool)

(assert (=> b!5594807 (= c!980699 ((_ is Cons!62918) (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255845))))))))

(declare-fun b!5594805 () Bool)

(assert (=> b!5594805 (= e!3451431 call!419431)))

(declare-fun d!1768480 () Bool)

(declare-fun c!980700 () Bool)

(assert (=> d!1768480 (= c!980700 e!3451430)))

(declare-fun res!2373396 () Bool)

(assert (=> d!1768480 (=> (not res!2373396) (not e!3451430))))

(assert (=> d!1768480 (= res!2373396 ((_ is Cons!62918) (exprs!5465 (Context!9931 (t!376322 (exprs!5465 lt!2255845))))))))

(assert (=> d!1768480 (= (derivationStepZipperUp!849 (Context!9931 (t!376322 (exprs!5465 lt!2255845))) (h!69368 s!2326)) e!3451432)))

(assert (= (and d!1768480 res!2373396) b!5594804))

(assert (= (and d!1768480 c!980700) b!5594803))

(assert (= (and d!1768480 (not c!980700)) b!5594807))

(assert (= (and b!5594807 c!980699) b!5594805))

(assert (= (and b!5594807 (not c!980699)) b!5594806))

(assert (= (or b!5594803 b!5594805) bm!419426))

(declare-fun m!6574296 () Bool)

(assert (=> b!5594803 m!6574296))

(declare-fun m!6574298 () Bool)

(assert (=> b!5594804 m!6574298))

(declare-fun m!6574300 () Bool)

(assert (=> bm!419426 m!6574300))

(assert (=> b!5593594 d!1768480))

(assert (=> bs!1293322 d!1767954))

(declare-fun d!1768482 () Bool)

(assert (=> d!1768482 (= ($colon$colon!1643 (exprs!5465 lt!2255845) (ite (or c!980323 c!980320) (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (regOne!31675 (regOne!31674 r!7292)))) (Cons!62918 (ite (or c!980323 c!980320) (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (regOne!31675 (regOne!31674 r!7292))) (exprs!5465 lt!2255845)))))

(assert (=> bm!419153 d!1768482))

(declare-fun b!5594808 () Bool)

(declare-fun e!3451434 () List!63044)

(assert (=> b!5594808 (= e!3451434 (_2!35981 (get!21667 lt!2255927)))))

(declare-fun b!5594809 () Bool)

(assert (=> b!5594809 (= e!3451434 (Cons!62920 (h!69368 (_1!35981 (get!21667 lt!2255927))) (++!13809 (t!376324 (_1!35981 (get!21667 lt!2255927))) (_2!35981 (get!21667 lt!2255927)))))))

(declare-fun d!1768484 () Bool)

(declare-fun e!3451433 () Bool)

(assert (=> d!1768484 e!3451433))

(declare-fun res!2373398 () Bool)

(assert (=> d!1768484 (=> (not res!2373398) (not e!3451433))))

(declare-fun lt!2256007 () List!63044)

(assert (=> d!1768484 (= res!2373398 (= (content!11358 lt!2256007) ((_ map or) (content!11358 (_1!35981 (get!21667 lt!2255927))) (content!11358 (_2!35981 (get!21667 lt!2255927))))))))

(assert (=> d!1768484 (= lt!2256007 e!3451434)))

(declare-fun c!980701 () Bool)

(assert (=> d!1768484 (= c!980701 ((_ is Nil!62920) (_1!35981 (get!21667 lt!2255927))))))

(assert (=> d!1768484 (= (++!13809 (_1!35981 (get!21667 lt!2255927)) (_2!35981 (get!21667 lt!2255927))) lt!2256007)))

(declare-fun b!5594810 () Bool)

(declare-fun res!2373397 () Bool)

(assert (=> b!5594810 (=> (not res!2373397) (not e!3451433))))

(assert (=> b!5594810 (= res!2373397 (= (size!39967 lt!2256007) (+ (size!39967 (_1!35981 (get!21667 lt!2255927))) (size!39967 (_2!35981 (get!21667 lt!2255927))))))))

(declare-fun b!5594811 () Bool)

(assert (=> b!5594811 (= e!3451433 (or (not (= (_2!35981 (get!21667 lt!2255927)) Nil!62920)) (= lt!2256007 (_1!35981 (get!21667 lt!2255927)))))))

(assert (= (and d!1768484 c!980701) b!5594808))

(assert (= (and d!1768484 (not c!980701)) b!5594809))

(assert (= (and d!1768484 res!2373398) b!5594810))

(assert (= (and b!5594810 res!2373397) b!5594811))

(declare-fun m!6574302 () Bool)

(assert (=> b!5594809 m!6574302))

(declare-fun m!6574304 () Bool)

(assert (=> d!1768484 m!6574304))

(declare-fun m!6574306 () Bool)

(assert (=> d!1768484 m!6574306))

(declare-fun m!6574308 () Bool)

(assert (=> d!1768484 m!6574308))

(declare-fun m!6574310 () Bool)

(assert (=> b!5594810 m!6574310))

(declare-fun m!6574312 () Bool)

(assert (=> b!5594810 m!6574312))

(declare-fun m!6574314 () Bool)

(assert (=> b!5594810 m!6574314))

(assert (=> b!5593395 d!1768484))

(assert (=> b!5593395 d!1768384))

(declare-fun b!5594812 () Bool)

(declare-fun e!3451439 () Bool)

(declare-fun e!3451437 () Bool)

(assert (=> b!5594812 (= e!3451439 e!3451437)))

(declare-fun res!2373403 () Bool)

(assert (=> b!5594812 (= res!2373403 (not (nullable!5613 (reg!15910 lt!2255966))))))

(assert (=> b!5594812 (=> (not res!2373403) (not e!3451437))))

(declare-fun b!5594813 () Bool)

(declare-fun call!419434 () Bool)

(assert (=> b!5594813 (= e!3451437 call!419434)))

(declare-fun b!5594814 () Bool)

(declare-fun e!3451440 () Bool)

(assert (=> b!5594814 (= e!3451440 e!3451439)))

(declare-fun c!980703 () Bool)

(assert (=> b!5594814 (= c!980703 ((_ is Star!15581) lt!2255966))))

(declare-fun bm!419427 () Bool)

(declare-fun call!419432 () Bool)

(assert (=> bm!419427 (= call!419432 call!419434)))

(declare-fun d!1768486 () Bool)

(declare-fun res!2373400 () Bool)

(assert (=> d!1768486 (=> res!2373400 e!3451440)))

(assert (=> d!1768486 (= res!2373400 ((_ is ElementMatch!15581) lt!2255966))))

(assert (=> d!1768486 (= (validRegex!7317 lt!2255966) e!3451440)))

(declare-fun bm!419428 () Bool)

(declare-fun call!419433 () Bool)

(declare-fun c!980702 () Bool)

(assert (=> bm!419428 (= call!419433 (validRegex!7317 (ite c!980702 (regOne!31675 lt!2255966) (regOne!31674 lt!2255966))))))

(declare-fun bm!419429 () Bool)

(assert (=> bm!419429 (= call!419434 (validRegex!7317 (ite c!980703 (reg!15910 lt!2255966) (ite c!980702 (regTwo!31675 lt!2255966) (regTwo!31674 lt!2255966)))))))

(declare-fun b!5594815 () Bool)

(declare-fun res!2373399 () Bool)

(declare-fun e!3451441 () Bool)

(assert (=> b!5594815 (=> (not res!2373399) (not e!3451441))))

(assert (=> b!5594815 (= res!2373399 call!419433)))

(declare-fun e!3451436 () Bool)

(assert (=> b!5594815 (= e!3451436 e!3451441)))

(declare-fun b!5594816 () Bool)

(declare-fun e!3451435 () Bool)

(declare-fun e!3451438 () Bool)

(assert (=> b!5594816 (= e!3451435 e!3451438)))

(declare-fun res!2373401 () Bool)

(assert (=> b!5594816 (=> (not res!2373401) (not e!3451438))))

(assert (=> b!5594816 (= res!2373401 call!419433)))

(declare-fun b!5594817 () Bool)

(declare-fun res!2373402 () Bool)

(assert (=> b!5594817 (=> res!2373402 e!3451435)))

(assert (=> b!5594817 (= res!2373402 (not ((_ is Concat!24426) lt!2255966)))))

(assert (=> b!5594817 (= e!3451436 e!3451435)))

(declare-fun b!5594818 () Bool)

(assert (=> b!5594818 (= e!3451438 call!419432)))

(declare-fun b!5594819 () Bool)

(assert (=> b!5594819 (= e!3451441 call!419432)))

(declare-fun b!5594820 () Bool)

(assert (=> b!5594820 (= e!3451439 e!3451436)))

(assert (=> b!5594820 (= c!980702 ((_ is Union!15581) lt!2255966))))

(assert (= (and d!1768486 (not res!2373400)) b!5594814))

(assert (= (and b!5594814 c!980703) b!5594812))

(assert (= (and b!5594814 (not c!980703)) b!5594820))

(assert (= (and b!5594812 res!2373403) b!5594813))

(assert (= (and b!5594820 c!980702) b!5594815))

(assert (= (and b!5594820 (not c!980702)) b!5594817))

(assert (= (and b!5594815 res!2373399) b!5594819))

(assert (= (and b!5594817 (not res!2373402)) b!5594816))

(assert (= (and b!5594816 res!2373401) b!5594818))

(assert (= (or b!5594819 b!5594818) bm!419427))

(assert (= (or b!5594815 b!5594816) bm!419428))

(assert (= (or b!5594813 bm!419427) bm!419429))

(declare-fun m!6574316 () Bool)

(assert (=> b!5594812 m!6574316))

(declare-fun m!6574318 () Bool)

(assert (=> bm!419428 m!6574318))

(declare-fun m!6574320 () Bool)

(assert (=> bm!419429 m!6574320))

(assert (=> d!1767990 d!1768486))

(declare-fun d!1768488 () Bool)

(declare-fun res!2373404 () Bool)

(declare-fun e!3451442 () Bool)

(assert (=> d!1768488 (=> res!2373404 e!3451442)))

(assert (=> d!1768488 (= res!2373404 ((_ is Nil!62918) (exprs!5465 (h!69367 zl!343))))))

(assert (=> d!1768488 (= (forall!14746 (exprs!5465 (h!69367 zl!343)) lambda!300297) e!3451442)))

(declare-fun b!5594821 () Bool)

(declare-fun e!3451443 () Bool)

(assert (=> b!5594821 (= e!3451442 e!3451443)))

(declare-fun res!2373405 () Bool)

(assert (=> b!5594821 (=> (not res!2373405) (not e!3451443))))

(assert (=> b!5594821 (= res!2373405 (dynLambda!24611 lambda!300297 (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun b!5594822 () Bool)

(assert (=> b!5594822 (= e!3451443 (forall!14746 (t!376322 (exprs!5465 (h!69367 zl!343))) lambda!300297))))

(assert (= (and d!1768488 (not res!2373404)) b!5594821))

(assert (= (and b!5594821 res!2373405) b!5594822))

(declare-fun b_lambda!212009 () Bool)

(assert (=> (not b_lambda!212009) (not b!5594821)))

(declare-fun m!6574322 () Bool)

(assert (=> b!5594821 m!6574322))

(declare-fun m!6574324 () Bool)

(assert (=> b!5594822 m!6574324))

(assert (=> d!1767990 d!1768488))

(assert (=> d!1767942 d!1768282))

(declare-fun bs!1293619 () Bool)

(declare-fun b!5594832 () Bool)

(assert (= bs!1293619 (and b!5594832 b!5594615)))

(declare-fun lambda!300365 () Int)

(assert (=> bs!1293619 (= (and (= (reg!15910 (regTwo!31675 r!7292)) (reg!15910 (regOne!31675 r!7292))) (= (regTwo!31675 r!7292) (regOne!31675 r!7292))) (= lambda!300365 lambda!300349))))

(declare-fun bs!1293620 () Bool)

(assert (= bs!1293620 (and b!5594832 d!1767890)))

(assert (=> bs!1293620 (not (= lambda!300365 lambda!300280))))

(declare-fun bs!1293621 () Bool)

(assert (= bs!1293621 (and b!5594832 b!5594609)))

(assert (=> bs!1293621 (not (= lambda!300365 lambda!300350))))

(assert (=> bs!1293620 (not (= lambda!300365 lambda!300281))))

(declare-fun bs!1293622 () Bool)

(assert (= bs!1293622 (and b!5594832 b!5593659)))

(assert (=> bs!1293622 (= (and (= (reg!15910 (regTwo!31675 r!7292)) (reg!15910 r!7292)) (= (regTwo!31675 r!7292) r!7292)) (= lambda!300365 lambda!300293))))

(declare-fun bs!1293623 () Bool)

(assert (= bs!1293623 (and b!5594832 d!1768324)))

(assert (=> bs!1293623 (not (= lambda!300365 lambda!300346))))

(declare-fun bs!1293624 () Bool)

(assert (= bs!1293624 (and b!5594832 b!5593022)))

(assert (=> bs!1293624 (not (= lambda!300365 lambda!300241))))

(declare-fun bs!1293625 () Bool)

(assert (= bs!1293625 (and b!5594832 d!1768462)))

(assert (=> bs!1293625 (not (= lambda!300365 lambda!300362))))

(declare-fun bs!1293626 () Bool)

(assert (= bs!1293626 (and b!5594832 d!1767886)))

(assert (=> bs!1293626 (not (= lambda!300365 lambda!300272))))

(assert (=> bs!1293624 (not (= lambda!300365 lambda!300240))))

(assert (=> bs!1293625 (not (= lambda!300365 lambda!300361))))

(declare-fun bs!1293627 () Bool)

(assert (= bs!1293627 (and b!5594832 b!5593653)))

(assert (=> bs!1293627 (not (= lambda!300365 lambda!300294))))

(assert (=> b!5594832 true))

(assert (=> b!5594832 true))

(declare-fun bs!1293628 () Bool)

(declare-fun b!5594826 () Bool)

(assert (= bs!1293628 (and b!5594826 b!5594615)))

(declare-fun lambda!300366 () Int)

(assert (=> bs!1293628 (not (= lambda!300366 lambda!300349))))

(declare-fun bs!1293629 () Bool)

(assert (= bs!1293629 (and b!5594826 d!1767890)))

(assert (=> bs!1293629 (not (= lambda!300366 lambda!300280))))

(declare-fun bs!1293630 () Bool)

(assert (= bs!1293630 (and b!5594826 b!5594609)))

(assert (=> bs!1293630 (= (and (= (regOne!31674 (regTwo!31675 r!7292)) (regOne!31674 (regOne!31675 r!7292))) (= (regTwo!31674 (regTwo!31675 r!7292)) (regTwo!31674 (regOne!31675 r!7292)))) (= lambda!300366 lambda!300350))))

(assert (=> bs!1293629 (= (and (= (regOne!31674 (regTwo!31675 r!7292)) (regOne!31674 r!7292)) (= (regTwo!31674 (regTwo!31675 r!7292)) (regTwo!31674 r!7292))) (= lambda!300366 lambda!300281))))

(declare-fun bs!1293631 () Bool)

(assert (= bs!1293631 (and b!5594826 b!5593659)))

(assert (=> bs!1293631 (not (= lambda!300366 lambda!300293))))

(declare-fun bs!1293632 () Bool)

(assert (= bs!1293632 (and b!5594826 b!5594832)))

(assert (=> bs!1293632 (not (= lambda!300366 lambda!300365))))

(declare-fun bs!1293633 () Bool)

(assert (= bs!1293633 (and b!5594826 d!1768324)))

(assert (=> bs!1293633 (not (= lambda!300366 lambda!300346))))

(declare-fun bs!1293634 () Bool)

(assert (= bs!1293634 (and b!5594826 b!5593022)))

(assert (=> bs!1293634 (= (and (= (regOne!31674 (regTwo!31675 r!7292)) (regOne!31674 r!7292)) (= (regTwo!31674 (regTwo!31675 r!7292)) (regTwo!31674 r!7292))) (= lambda!300366 lambda!300241))))

(declare-fun bs!1293635 () Bool)

(assert (= bs!1293635 (and b!5594826 d!1768462)))

(assert (=> bs!1293635 (= (and (= (regOne!31674 (regTwo!31675 r!7292)) (regOne!31674 r!7292)) (= (regTwo!31674 (regTwo!31675 r!7292)) (regTwo!31674 r!7292))) (= lambda!300366 lambda!300362))))

(declare-fun bs!1293636 () Bool)

(assert (= bs!1293636 (and b!5594826 d!1767886)))

(assert (=> bs!1293636 (not (= lambda!300366 lambda!300272))))

(assert (=> bs!1293634 (not (= lambda!300366 lambda!300240))))

(assert (=> bs!1293635 (not (= lambda!300366 lambda!300361))))

(declare-fun bs!1293637 () Bool)

(assert (= bs!1293637 (and b!5594826 b!5593653)))

(assert (=> bs!1293637 (= (and (= (regOne!31674 (regTwo!31675 r!7292)) (regOne!31674 r!7292)) (= (regTwo!31674 (regTwo!31675 r!7292)) (regTwo!31674 r!7292))) (= lambda!300366 lambda!300294))))

(assert (=> b!5594826 true))

(assert (=> b!5594826 true))

(declare-fun b!5594823 () Bool)

(declare-fun c!980706 () Bool)

(assert (=> b!5594823 (= c!980706 ((_ is Union!15581) (regTwo!31675 r!7292)))))

(declare-fun e!3451450 () Bool)

(declare-fun e!3451445 () Bool)

(assert (=> b!5594823 (= e!3451450 e!3451445)))

(declare-fun b!5594824 () Bool)

(declare-fun c!980707 () Bool)

(assert (=> b!5594824 (= c!980707 ((_ is ElementMatch!15581) (regTwo!31675 r!7292)))))

(declare-fun e!3451448 () Bool)

(assert (=> b!5594824 (= e!3451448 e!3451450)))

(declare-fun b!5594825 () Bool)

(assert (=> b!5594825 (= e!3451450 (= s!2326 (Cons!62920 (c!980214 (regTwo!31675 r!7292)) Nil!62920)))))

(declare-fun d!1768490 () Bool)

(declare-fun c!980705 () Bool)

(assert (=> d!1768490 (= c!980705 ((_ is EmptyExpr!15581) (regTwo!31675 r!7292)))))

(declare-fun e!3451447 () Bool)

(assert (=> d!1768490 (= (matchRSpec!2684 (regTwo!31675 r!7292) s!2326) e!3451447)))

(declare-fun e!3451446 () Bool)

(declare-fun call!419435 () Bool)

(assert (=> b!5594826 (= e!3451446 call!419435)))

(declare-fun bm!419430 () Bool)

(declare-fun call!419436 () Bool)

(assert (=> bm!419430 (= call!419436 (isEmpty!34741 s!2326))))

(declare-fun b!5594827 () Bool)

(assert (=> b!5594827 (= e!3451447 e!3451448)))

(declare-fun res!2373406 () Bool)

(assert (=> b!5594827 (= res!2373406 (not ((_ is EmptyLang!15581) (regTwo!31675 r!7292))))))

(assert (=> b!5594827 (=> (not res!2373406) (not e!3451448))))

(declare-fun b!5594828 () Bool)

(declare-fun e!3451444 () Bool)

(assert (=> b!5594828 (= e!3451444 (matchRSpec!2684 (regTwo!31675 (regTwo!31675 r!7292)) s!2326))))

(declare-fun b!5594829 () Bool)

(assert (=> b!5594829 (= e!3451447 call!419436)))

(declare-fun bm!419431 () Bool)

(declare-fun c!980704 () Bool)

(assert (=> bm!419431 (= call!419435 (Exists!2681 (ite c!980704 lambda!300365 lambda!300366)))))

(declare-fun b!5594830 () Bool)

(declare-fun res!2373408 () Bool)

(declare-fun e!3451449 () Bool)

(assert (=> b!5594830 (=> res!2373408 e!3451449)))

(assert (=> b!5594830 (= res!2373408 call!419436)))

(assert (=> b!5594830 (= e!3451446 e!3451449)))

(declare-fun b!5594831 () Bool)

(assert (=> b!5594831 (= e!3451445 e!3451446)))

(assert (=> b!5594831 (= c!980704 ((_ is Star!15581) (regTwo!31675 r!7292)))))

(assert (=> b!5594832 (= e!3451449 call!419435)))

(declare-fun b!5594833 () Bool)

(assert (=> b!5594833 (= e!3451445 e!3451444)))

(declare-fun res!2373407 () Bool)

(assert (=> b!5594833 (= res!2373407 (matchRSpec!2684 (regOne!31675 (regTwo!31675 r!7292)) s!2326))))

(assert (=> b!5594833 (=> res!2373407 e!3451444)))

(assert (= (and d!1768490 c!980705) b!5594829))

(assert (= (and d!1768490 (not c!980705)) b!5594827))

(assert (= (and b!5594827 res!2373406) b!5594824))

(assert (= (and b!5594824 c!980707) b!5594825))

(assert (= (and b!5594824 (not c!980707)) b!5594823))

(assert (= (and b!5594823 c!980706) b!5594833))

(assert (= (and b!5594823 (not c!980706)) b!5594831))

(assert (= (and b!5594833 (not res!2373407)) b!5594828))

(assert (= (and b!5594831 c!980704) b!5594830))

(assert (= (and b!5594831 (not c!980704)) b!5594826))

(assert (= (and b!5594830 (not res!2373408)) b!5594832))

(assert (= (or b!5594832 b!5594826) bm!419431))

(assert (= (or b!5594829 b!5594830) bm!419430))

(assert (=> bm!419430 m!6573240))

(declare-fun m!6574326 () Bool)

(assert (=> b!5594828 m!6574326))

(declare-fun m!6574328 () Bool)

(assert (=> bm!419431 m!6574328))

(declare-fun m!6574330 () Bool)

(assert (=> b!5594833 m!6574330))

(assert (=> b!5593655 d!1768490))

(declare-fun d!1768492 () Bool)

(declare-fun c!980708 () Bool)

(assert (=> d!1768492 (= c!980708 (isEmpty!34741 (tail!11026 (t!376324 s!2326))))))

(declare-fun e!3451451 () Bool)

(assert (=> d!1768492 (= (matchZipper!1719 (derivationStepZipper!1680 ((_ map or) lt!2255857 lt!2255866) (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))) e!3451451)))

(declare-fun b!5594834 () Bool)

(assert (=> b!5594834 (= e!3451451 (nullableZipper!1576 (derivationStepZipper!1680 ((_ map or) lt!2255857 lt!2255866) (head!11931 (t!376324 s!2326)))))))

(declare-fun b!5594835 () Bool)

(assert (=> b!5594835 (= e!3451451 (matchZipper!1719 (derivationStepZipper!1680 (derivationStepZipper!1680 ((_ map or) lt!2255857 lt!2255866) (head!11931 (t!376324 s!2326))) (head!11931 (tail!11026 (t!376324 s!2326)))) (tail!11026 (tail!11026 (t!376324 s!2326)))))))

(assert (= (and d!1768492 c!980708) b!5594834))

(assert (= (and d!1768492 (not c!980708)) b!5594835))

(assert (=> d!1768492 m!6573008))

(assert (=> d!1768492 m!6573900))

(assert (=> b!5594834 m!6573278))

(declare-fun m!6574332 () Bool)

(assert (=> b!5594834 m!6574332))

(assert (=> b!5594835 m!6573008))

(assert (=> b!5594835 m!6573904))

(assert (=> b!5594835 m!6573278))

(assert (=> b!5594835 m!6573904))

(declare-fun m!6574334 () Bool)

(assert (=> b!5594835 m!6574334))

(assert (=> b!5594835 m!6573008))

(assert (=> b!5594835 m!6573908))

(assert (=> b!5594835 m!6574334))

(assert (=> b!5594835 m!6573908))

(declare-fun m!6574336 () Bool)

(assert (=> b!5594835 m!6574336))

(assert (=> b!5593710 d!1768492))

(declare-fun bs!1293638 () Bool)

(declare-fun d!1768494 () Bool)

(assert (= bs!1293638 (and d!1768494 d!1768310)))

(declare-fun lambda!300367 () Int)

(assert (=> bs!1293638 (= lambda!300367 lambda!300342)))

(declare-fun bs!1293639 () Bool)

(assert (= bs!1293639 (and d!1768494 b!5593035)))

(assert (=> bs!1293639 (= (= (head!11931 (t!376324 s!2326)) (h!69368 s!2326)) (= lambda!300367 lambda!300242))))

(declare-fun bs!1293640 () Bool)

(assert (= bs!1293640 (and d!1768494 d!1768294)))

(assert (=> bs!1293640 (= lambda!300367 lambda!300340)))

(declare-fun bs!1293641 () Bool)

(assert (= bs!1293641 (and d!1768494 d!1768340)))

(assert (=> bs!1293641 (= lambda!300367 lambda!300347)))

(declare-fun bs!1293642 () Bool)

(assert (= bs!1293642 (and d!1768494 d!1768306)))

(assert (=> bs!1293642 (= lambda!300367 lambda!300341)))

(assert (=> d!1768494 true))

(assert (=> d!1768494 (= (derivationStepZipper!1680 ((_ map or) lt!2255857 lt!2255866) (head!11931 (t!376324 s!2326))) (flatMap!1194 ((_ map or) lt!2255857 lt!2255866) lambda!300367))))

(declare-fun bs!1293643 () Bool)

(assert (= bs!1293643 d!1768494))

(declare-fun m!6574338 () Bool)

(assert (=> bs!1293643 m!6574338))

(assert (=> b!5593710 d!1768494))

(assert (=> b!5593710 d!1768296))

(assert (=> b!5593710 d!1768298))

(declare-fun bs!1293644 () Bool)

(declare-fun d!1768496 () Bool)

(assert (= bs!1293644 (and d!1768496 d!1768420)))

(declare-fun lambda!300368 () Int)

(assert (=> bs!1293644 (= lambda!300368 lambda!300353)))

(declare-fun bs!1293645 () Bool)

(assert (= bs!1293645 (and d!1768496 d!1768432)))

(assert (=> bs!1293645 (= lambda!300368 lambda!300355)))

(declare-fun bs!1293646 () Bool)

(assert (= bs!1293646 (and d!1768496 d!1768442)))

(assert (=> bs!1293646 (= lambda!300368 lambda!300356)))

(declare-fun bs!1293647 () Bool)

(assert (= bs!1293647 (and d!1768496 d!1768476)))

(assert (=> bs!1293647 (= lambda!300368 lambda!300364)))

(assert (=> d!1768496 (= (nullableZipper!1576 lt!2255866) (exists!2170 lt!2255866 lambda!300368))))

(declare-fun bs!1293648 () Bool)

(assert (= bs!1293648 d!1768496))

(declare-fun m!6574340 () Bool)

(assert (=> bs!1293648 m!6574340))

(assert (=> b!5593706 d!1768496))

(assert (=> b!5593697 d!1768344))

(declare-fun d!1768498 () Bool)

(assert (=> d!1768498 (= (isDefined!12293 lt!2255927) (not (isEmpty!34742 lt!2255927)))))

(declare-fun bs!1293649 () Bool)

(assert (= bs!1293649 d!1768498))

(declare-fun m!6574342 () Bool)

(assert (=> bs!1293649 m!6574342))

(assert (=> b!5593399 d!1768498))

(declare-fun d!1768500 () Bool)

(assert (=> d!1768500 true))

(assert (=> d!1768500 true))

(declare-fun res!2373409 () Bool)

(assert (=> d!1768500 (= (choose!42415 lambda!300240) res!2373409)))

(assert (=> d!1767884 d!1768500))

(assert (=> d!1767970 d!1768358))

(assert (=> d!1767970 d!1767984))

(assert (=> b!5593607 d!1767870))

(declare-fun d!1768502 () Bool)

(assert (=> d!1768502 true))

(declare-fun setRes!37302 () Bool)

(assert (=> d!1768502 setRes!37302))

(declare-fun condSetEmpty!37302 () Bool)

(declare-fun res!2373410 () (InoxSet Context!9930))

(assert (=> d!1768502 (= condSetEmpty!37302 (= res!2373410 ((as const (Array Context!9930 Bool)) false)))))

(assert (=> d!1768502 (= (choose!42419 lt!2255874 lambda!300242) res!2373410)))

(declare-fun setIsEmpty!37302 () Bool)

(assert (=> setIsEmpty!37302 setRes!37302))

(declare-fun tp!1547125 () Bool)

(declare-fun setElem!37302 () Context!9930)

(declare-fun e!3451452 () Bool)

(declare-fun setNonEmpty!37302 () Bool)

(assert (=> setNonEmpty!37302 (= setRes!37302 (and tp!1547125 (inv!82199 setElem!37302) e!3451452))))

(declare-fun setRest!37302 () (InoxSet Context!9930))

(assert (=> setNonEmpty!37302 (= res!2373410 ((_ map or) (store ((as const (Array Context!9930 Bool)) false) setElem!37302 true) setRest!37302))))

(declare-fun b!5594836 () Bool)

(declare-fun tp!1547124 () Bool)

(assert (=> b!5594836 (= e!3451452 tp!1547124)))

(assert (= (and d!1768502 condSetEmpty!37302) setIsEmpty!37302))

(assert (= (and d!1768502 (not condSetEmpty!37302)) setNonEmpty!37302))

(assert (= setNonEmpty!37302 b!5594836))

(declare-fun m!6574344 () Bool)

(assert (=> setNonEmpty!37302 m!6574344))

(assert (=> d!1767952 d!1768502))

(declare-fun d!1768504 () Bool)

(declare-fun c!980709 () Bool)

(assert (=> d!1768504 (= c!980709 (isEmpty!34741 (tail!11026 (t!376324 s!2326))))))

(declare-fun e!3451453 () Bool)

(assert (=> d!1768504 (= (matchZipper!1719 (derivationStepZipper!1680 lt!2255844 (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))) e!3451453)))

(declare-fun b!5594837 () Bool)

(assert (=> b!5594837 (= e!3451453 (nullableZipper!1576 (derivationStepZipper!1680 lt!2255844 (head!11931 (t!376324 s!2326)))))))

(declare-fun b!5594838 () Bool)

(assert (=> b!5594838 (= e!3451453 (matchZipper!1719 (derivationStepZipper!1680 (derivationStepZipper!1680 lt!2255844 (head!11931 (t!376324 s!2326))) (head!11931 (tail!11026 (t!376324 s!2326)))) (tail!11026 (tail!11026 (t!376324 s!2326)))))))

(assert (= (and d!1768504 c!980709) b!5594837))

(assert (= (and d!1768504 (not c!980709)) b!5594838))

(assert (=> d!1768504 m!6573008))

(assert (=> d!1768504 m!6573900))

(assert (=> b!5594837 m!6573194))

(declare-fun m!6574346 () Bool)

(assert (=> b!5594837 m!6574346))

(assert (=> b!5594838 m!6573008))

(assert (=> b!5594838 m!6573904))

(assert (=> b!5594838 m!6573194))

(assert (=> b!5594838 m!6573904))

(declare-fun m!6574348 () Bool)

(assert (=> b!5594838 m!6574348))

(assert (=> b!5594838 m!6573008))

(assert (=> b!5594838 m!6573908))

(assert (=> b!5594838 m!6574348))

(assert (=> b!5594838 m!6573908))

(declare-fun m!6574350 () Bool)

(assert (=> b!5594838 m!6574350))

(assert (=> b!5593602 d!1768504))

(declare-fun bs!1293650 () Bool)

(declare-fun d!1768506 () Bool)

(assert (= bs!1293650 (and d!1768506 d!1768310)))

(declare-fun lambda!300369 () Int)

(assert (=> bs!1293650 (= lambda!300369 lambda!300342)))

(declare-fun bs!1293651 () Bool)

(assert (= bs!1293651 (and d!1768506 b!5593035)))

(assert (=> bs!1293651 (= (= (head!11931 (t!376324 s!2326)) (h!69368 s!2326)) (= lambda!300369 lambda!300242))))

(declare-fun bs!1293652 () Bool)

(assert (= bs!1293652 (and d!1768506 d!1768494)))

(assert (=> bs!1293652 (= lambda!300369 lambda!300367)))

(declare-fun bs!1293653 () Bool)

(assert (= bs!1293653 (and d!1768506 d!1768294)))

(assert (=> bs!1293653 (= lambda!300369 lambda!300340)))

(declare-fun bs!1293654 () Bool)

(assert (= bs!1293654 (and d!1768506 d!1768340)))

(assert (=> bs!1293654 (= lambda!300369 lambda!300347)))

(declare-fun bs!1293655 () Bool)

(assert (= bs!1293655 (and d!1768506 d!1768306)))

(assert (=> bs!1293655 (= lambda!300369 lambda!300341)))

(assert (=> d!1768506 true))

(assert (=> d!1768506 (= (derivationStepZipper!1680 lt!2255844 (head!11931 (t!376324 s!2326))) (flatMap!1194 lt!2255844 lambda!300369))))

(declare-fun bs!1293656 () Bool)

(assert (= bs!1293656 d!1768506))

(declare-fun m!6574352 () Bool)

(assert (=> bs!1293656 m!6574352))

(assert (=> b!5593602 d!1768506))

(assert (=> b!5593602 d!1768296))

(assert (=> b!5593602 d!1768298))

(declare-fun d!1768508 () Bool)

(assert (=> d!1768508 (= (isEmpty!34738 (t!376322 (unfocusZipperList!1009 zl!343))) ((_ is Nil!62918) (t!376322 (unfocusZipperList!1009 zl!343))))))

(assert (=> b!5593277 d!1768508))

(declare-fun d!1768510 () Bool)

(declare-fun c!980710 () Bool)

(assert (=> d!1768510 (= c!980710 (isEmpty!34741 (t!376324 s!2326)))))

(declare-fun e!3451454 () Bool)

(assert (=> d!1768510 (= (matchZipper!1719 ((_ map or) lt!2255868 lt!2255856) (t!376324 s!2326)) e!3451454)))

(declare-fun b!5594839 () Bool)

(assert (=> b!5594839 (= e!3451454 (nullableZipper!1576 ((_ map or) lt!2255868 lt!2255856)))))

(declare-fun b!5594840 () Bool)

(assert (=> b!5594840 (= e!3451454 (matchZipper!1719 (derivationStepZipper!1680 ((_ map or) lt!2255868 lt!2255856) (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))))))

(assert (= (and d!1768510 c!980710) b!5594839))

(assert (= (and d!1768510 (not c!980710)) b!5594840))

(assert (=> d!1768510 m!6573000))

(declare-fun m!6574354 () Bool)

(assert (=> b!5594839 m!6574354))

(assert (=> b!5594840 m!6573004))

(assert (=> b!5594840 m!6573004))

(declare-fun m!6574356 () Bool)

(assert (=> b!5594840 m!6574356))

(assert (=> b!5594840 m!6573008))

(assert (=> b!5594840 m!6574356))

(assert (=> b!5594840 m!6573008))

(declare-fun m!6574358 () Bool)

(assert (=> b!5594840 m!6574358))

(assert (=> d!1767946 d!1768510))

(assert (=> d!1767946 d!1767944))

(declare-fun e!3451455 () Bool)

(declare-fun d!1768512 () Bool)

(assert (=> d!1768512 (= (matchZipper!1719 ((_ map or) lt!2255868 lt!2255856) (t!376324 s!2326)) e!3451455)))

(declare-fun res!2373411 () Bool)

(assert (=> d!1768512 (=> res!2373411 e!3451455)))

(assert (=> d!1768512 (= res!2373411 (matchZipper!1719 lt!2255868 (t!376324 s!2326)))))

(assert (=> d!1768512 true))

(declare-fun _$48!1187 () Unit!155740)

(assert (=> d!1768512 (= (choose!42423 lt!2255868 lt!2255856 (t!376324 s!2326)) _$48!1187)))

(declare-fun b!5594841 () Bool)

(assert (=> b!5594841 (= e!3451455 (matchZipper!1719 lt!2255856 (t!376324 s!2326)))))

(assert (= (and d!1768512 (not res!2373411)) b!5594841))

(assert (=> d!1768512 m!6573204))

(assert (=> d!1768512 m!6572698))

(assert (=> b!5594841 m!6572726))

(assert (=> d!1767946 d!1768512))

(assert (=> d!1767874 d!1768498))

(declare-fun d!1768514 () Bool)

(declare-fun e!3451457 () Bool)

(assert (=> d!1768514 e!3451457))

(declare-fun c!980713 () Bool)

(assert (=> d!1768514 (= c!980713 ((_ is EmptyExpr!15581) (regOne!31674 r!7292)))))

(declare-fun lt!2256008 () Bool)

(declare-fun e!3451461 () Bool)

(assert (=> d!1768514 (= lt!2256008 e!3451461)))

(declare-fun c!980712 () Bool)

(assert (=> d!1768514 (= c!980712 (isEmpty!34741 Nil!62920))))

(assert (=> d!1768514 (validRegex!7317 (regOne!31674 r!7292))))

(assert (=> d!1768514 (= (matchR!7766 (regOne!31674 r!7292) Nil!62920) lt!2256008)))

(declare-fun b!5594842 () Bool)

(assert (=> b!5594842 (= e!3451461 (matchR!7766 (derivativeStep!4429 (regOne!31674 r!7292) (head!11931 Nil!62920)) (tail!11026 Nil!62920)))))

(declare-fun b!5594843 () Bool)

(declare-fun e!3451456 () Bool)

(assert (=> b!5594843 (= e!3451456 (not (= (head!11931 Nil!62920) (c!980214 (regOne!31674 r!7292)))))))

(declare-fun b!5594844 () Bool)

(declare-fun res!2373412 () Bool)

(declare-fun e!3451458 () Bool)

(assert (=> b!5594844 (=> res!2373412 e!3451458)))

(declare-fun e!3451460 () Bool)

(assert (=> b!5594844 (= res!2373412 e!3451460)))

(declare-fun res!2373415 () Bool)

(assert (=> b!5594844 (=> (not res!2373415) (not e!3451460))))

(assert (=> b!5594844 (= res!2373415 lt!2256008)))

(declare-fun b!5594845 () Bool)

(declare-fun res!2373414 () Bool)

(assert (=> b!5594845 (=> res!2373414 e!3451456)))

(assert (=> b!5594845 (= res!2373414 (not (isEmpty!34741 (tail!11026 Nil!62920))))))

(declare-fun bm!419432 () Bool)

(declare-fun call!419437 () Bool)

(assert (=> bm!419432 (= call!419437 (isEmpty!34741 Nil!62920))))

(declare-fun b!5594846 () Bool)

(declare-fun e!3451459 () Bool)

(assert (=> b!5594846 (= e!3451459 (not lt!2256008))))

(declare-fun b!5594847 () Bool)

(declare-fun e!3451462 () Bool)

(assert (=> b!5594847 (= e!3451462 e!3451456)))

(declare-fun res!2373413 () Bool)

(assert (=> b!5594847 (=> res!2373413 e!3451456)))

(assert (=> b!5594847 (= res!2373413 call!419437)))

(declare-fun b!5594848 () Bool)

(declare-fun res!2373419 () Bool)

(assert (=> b!5594848 (=> res!2373419 e!3451458)))

(assert (=> b!5594848 (= res!2373419 (not ((_ is ElementMatch!15581) (regOne!31674 r!7292))))))

(assert (=> b!5594848 (= e!3451459 e!3451458)))

(declare-fun b!5594849 () Bool)

(assert (=> b!5594849 (= e!3451457 (= lt!2256008 call!419437))))

(declare-fun b!5594850 () Bool)

(assert (=> b!5594850 (= e!3451460 (= (head!11931 Nil!62920) (c!980214 (regOne!31674 r!7292))))))

(declare-fun b!5594851 () Bool)

(declare-fun res!2373417 () Bool)

(assert (=> b!5594851 (=> (not res!2373417) (not e!3451460))))

(assert (=> b!5594851 (= res!2373417 (not call!419437))))

(declare-fun b!5594852 () Bool)

(assert (=> b!5594852 (= e!3451461 (nullable!5613 (regOne!31674 r!7292)))))

(declare-fun b!5594853 () Bool)

(declare-fun res!2373418 () Bool)

(assert (=> b!5594853 (=> (not res!2373418) (not e!3451460))))

(assert (=> b!5594853 (= res!2373418 (isEmpty!34741 (tail!11026 Nil!62920)))))

(declare-fun b!5594854 () Bool)

(assert (=> b!5594854 (= e!3451457 e!3451459)))

(declare-fun c!980711 () Bool)

(assert (=> b!5594854 (= c!980711 ((_ is EmptyLang!15581) (regOne!31674 r!7292)))))

(declare-fun b!5594855 () Bool)

(assert (=> b!5594855 (= e!3451458 e!3451462)))

(declare-fun res!2373416 () Bool)

(assert (=> b!5594855 (=> (not res!2373416) (not e!3451462))))

(assert (=> b!5594855 (= res!2373416 (not lt!2256008))))

(assert (= (and d!1768514 c!980712) b!5594852))

(assert (= (and d!1768514 (not c!980712)) b!5594842))

(assert (= (and d!1768514 c!980713) b!5594849))

(assert (= (and d!1768514 (not c!980713)) b!5594854))

(assert (= (and b!5594854 c!980711) b!5594846))

(assert (= (and b!5594854 (not c!980711)) b!5594848))

(assert (= (and b!5594848 (not res!2373419)) b!5594844))

(assert (= (and b!5594844 res!2373415) b!5594851))

(assert (= (and b!5594851 res!2373417) b!5594853))

(assert (= (and b!5594853 res!2373418) b!5594850))

(assert (= (and b!5594844 (not res!2373412)) b!5594855))

(assert (= (and b!5594855 res!2373416) b!5594847))

(assert (= (and b!5594847 (not res!2373413)) b!5594845))

(assert (= (and b!5594845 (not res!2373414)) b!5594843))

(assert (= (or b!5594849 b!5594847 b!5594851) bm!419432))

(assert (=> b!5594852 m!6572742))

(declare-fun m!6574360 () Bool)

(assert (=> b!5594850 m!6574360))

(assert (=> b!5594843 m!6574360))

(declare-fun m!6574362 () Bool)

(assert (=> d!1768514 m!6574362))

(assert (=> d!1768514 m!6573034))

(declare-fun m!6574364 () Bool)

(assert (=> b!5594845 m!6574364))

(assert (=> b!5594845 m!6574364))

(declare-fun m!6574366 () Bool)

(assert (=> b!5594845 m!6574366))

(assert (=> bm!419432 m!6574362))

(assert (=> b!5594853 m!6574364))

(assert (=> b!5594853 m!6574364))

(assert (=> b!5594853 m!6574366))

(assert (=> b!5594842 m!6574360))

(assert (=> b!5594842 m!6574360))

(declare-fun m!6574368 () Bool)

(assert (=> b!5594842 m!6574368))

(assert (=> b!5594842 m!6574364))

(assert (=> b!5594842 m!6574368))

(assert (=> b!5594842 m!6574364))

(declare-fun m!6574370 () Bool)

(assert (=> b!5594842 m!6574370))

(assert (=> d!1767874 d!1768514))

(assert (=> d!1767874 d!1768322))

(declare-fun bs!1293657 () Bool)

(declare-fun d!1768516 () Bool)

(assert (= bs!1293657 (and d!1768516 d!1768476)))

(declare-fun lambda!300370 () Int)

(assert (=> bs!1293657 (= lambda!300370 lambda!300364)))

(declare-fun bs!1293658 () Bool)

(assert (= bs!1293658 (and d!1768516 d!1768496)))

(assert (=> bs!1293658 (= lambda!300370 lambda!300368)))

(declare-fun bs!1293659 () Bool)

(assert (= bs!1293659 (and d!1768516 d!1768420)))

(assert (=> bs!1293659 (= lambda!300370 lambda!300353)))

(declare-fun bs!1293660 () Bool)

(assert (= bs!1293660 (and d!1768516 d!1768432)))

(assert (=> bs!1293660 (= lambda!300370 lambda!300355)))

(declare-fun bs!1293661 () Bool)

(assert (= bs!1293661 (and d!1768516 d!1768442)))

(assert (=> bs!1293661 (= lambda!300370 lambda!300356)))

(assert (=> d!1768516 (= (nullableZipper!1576 ((_ map or) lt!2255856 lt!2255866)) (exists!2170 ((_ map or) lt!2255856 lt!2255866) lambda!300370))))

(declare-fun bs!1293662 () Bool)

(assert (= bs!1293662 d!1768516))

(declare-fun m!6574372 () Bool)

(assert (=> bs!1293662 m!6574372))

(assert (=> b!5593772 d!1768516))

(declare-fun d!1768518 () Bool)

(declare-fun c!980714 () Bool)

(assert (=> d!1768518 (= c!980714 (isEmpty!34741 (tail!11026 (t!376324 s!2326))))))

(declare-fun e!3451463 () Bool)

(assert (=> d!1768518 (= (matchZipper!1719 (derivationStepZipper!1680 lt!2255856 (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))) e!3451463)))

(declare-fun b!5594856 () Bool)

(assert (=> b!5594856 (= e!3451463 (nullableZipper!1576 (derivationStepZipper!1680 lt!2255856 (head!11931 (t!376324 s!2326)))))))

(declare-fun b!5594857 () Bool)

(assert (=> b!5594857 (= e!3451463 (matchZipper!1719 (derivationStepZipper!1680 (derivationStepZipper!1680 lt!2255856 (head!11931 (t!376324 s!2326))) (head!11931 (tail!11026 (t!376324 s!2326)))) (tail!11026 (tail!11026 (t!376324 s!2326)))))))

(assert (= (and d!1768518 c!980714) b!5594856))

(assert (= (and d!1768518 (not c!980714)) b!5594857))

(assert (=> d!1768518 m!6573008))

(assert (=> d!1768518 m!6573900))

(assert (=> b!5594856 m!6573006))

(declare-fun m!6574374 () Bool)

(assert (=> b!5594856 m!6574374))

(assert (=> b!5594857 m!6573008))

(assert (=> b!5594857 m!6573904))

(assert (=> b!5594857 m!6573006))

(assert (=> b!5594857 m!6573904))

(declare-fun m!6574376 () Bool)

(assert (=> b!5594857 m!6574376))

(assert (=> b!5594857 m!6573008))

(assert (=> b!5594857 m!6573908))

(assert (=> b!5594857 m!6574376))

(assert (=> b!5594857 m!6573908))

(declare-fun m!6574378 () Bool)

(assert (=> b!5594857 m!6574378))

(assert (=> b!5593367 d!1768518))

(declare-fun bs!1293663 () Bool)

(declare-fun d!1768520 () Bool)

(assert (= bs!1293663 (and d!1768520 d!1768310)))

(declare-fun lambda!300371 () Int)

(assert (=> bs!1293663 (= lambda!300371 lambda!300342)))

(declare-fun bs!1293664 () Bool)

(assert (= bs!1293664 (and d!1768520 d!1768506)))

(assert (=> bs!1293664 (= lambda!300371 lambda!300369)))

(declare-fun bs!1293665 () Bool)

(assert (= bs!1293665 (and d!1768520 b!5593035)))

(assert (=> bs!1293665 (= (= (head!11931 (t!376324 s!2326)) (h!69368 s!2326)) (= lambda!300371 lambda!300242))))

(declare-fun bs!1293666 () Bool)

(assert (= bs!1293666 (and d!1768520 d!1768494)))

(assert (=> bs!1293666 (= lambda!300371 lambda!300367)))

(declare-fun bs!1293667 () Bool)

(assert (= bs!1293667 (and d!1768520 d!1768294)))

(assert (=> bs!1293667 (= lambda!300371 lambda!300340)))

(declare-fun bs!1293668 () Bool)

(assert (= bs!1293668 (and d!1768520 d!1768340)))

(assert (=> bs!1293668 (= lambda!300371 lambda!300347)))

(declare-fun bs!1293669 () Bool)

(assert (= bs!1293669 (and d!1768520 d!1768306)))

(assert (=> bs!1293669 (= lambda!300371 lambda!300341)))

(assert (=> d!1768520 true))

(assert (=> d!1768520 (= (derivationStepZipper!1680 lt!2255856 (head!11931 (t!376324 s!2326))) (flatMap!1194 lt!2255856 lambda!300371))))

(declare-fun bs!1293670 () Bool)

(assert (= bs!1293670 d!1768520))

(declare-fun m!6574380 () Bool)

(assert (=> bs!1293670 m!6574380))

(assert (=> b!5593367 d!1768520))

(assert (=> b!5593367 d!1768296))

(assert (=> b!5593367 d!1768298))

(declare-fun bs!1293671 () Bool)

(declare-fun d!1768522 () Bool)

(assert (= bs!1293671 (and d!1768522 d!1768476)))

(declare-fun lambda!300372 () Int)

(assert (=> bs!1293671 (= lambda!300372 lambda!300364)))

(declare-fun bs!1293672 () Bool)

(assert (= bs!1293672 (and d!1768522 d!1768496)))

(assert (=> bs!1293672 (= lambda!300372 lambda!300368)))

(declare-fun bs!1293673 () Bool)

(assert (= bs!1293673 (and d!1768522 d!1768420)))

(assert (=> bs!1293673 (= lambda!300372 lambda!300353)))

(declare-fun bs!1293674 () Bool)

(assert (= bs!1293674 (and d!1768522 d!1768432)))

(assert (=> bs!1293674 (= lambda!300372 lambda!300355)))

(declare-fun bs!1293675 () Bool)

(assert (= bs!1293675 (and d!1768522 d!1768516)))

(assert (=> bs!1293675 (= lambda!300372 lambda!300370)))

(declare-fun bs!1293676 () Bool)

(assert (= bs!1293676 (and d!1768522 d!1768442)))

(assert (=> bs!1293676 (= lambda!300372 lambda!300356)))

(assert (=> d!1768522 (= (nullableZipper!1576 ((_ map or) lt!2255868 lt!2255866)) (exists!2170 ((_ map or) lt!2255868 lt!2255866) lambda!300372))))

(declare-fun bs!1293677 () Bool)

(assert (= bs!1293677 d!1768522))

(declare-fun m!6574382 () Bool)

(assert (=> bs!1293677 m!6574382))

(assert (=> b!5593769 d!1768522))

(assert (=> b!5593590 d!1767914))

(declare-fun c!980715 () Bool)

(declare-fun c!980718 () Bool)

(declare-fun call!419441 () List!63042)

(declare-fun bm!419433 () Bool)

(assert (=> bm!419433 (= call!419441 ($colon$colon!1643 (exprs!5465 (ite (or c!980324 c!980323) lt!2255845 (Context!9931 call!419160))) (ite (or c!980718 c!980715) (regTwo!31674 (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292))))))) (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292)))))))))))

(declare-fun b!5594859 () Bool)

(declare-fun e!3451468 () (InoxSet Context!9930))

(declare-fun call!419438 () (InoxSet Context!9930))

(declare-fun call!419439 () (InoxSet Context!9930))

(assert (=> b!5594859 (= e!3451468 ((_ map or) call!419438 call!419439))))

(declare-fun b!5594860 () Bool)

(declare-fun e!3451469 () (InoxSet Context!9930))

(declare-fun call!419443 () (InoxSet Context!9930))

(assert (=> b!5594860 (= e!3451469 ((_ map or) call!419438 call!419443))))

(declare-fun b!5594861 () Bool)

(declare-fun e!3451466 () (InoxSet Context!9930))

(assert (=> b!5594861 (= e!3451466 e!3451469)))

(declare-fun c!980719 () Bool)

(assert (=> b!5594861 (= c!980719 ((_ is Union!15581) (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292))))))))))

(declare-fun c!980717 () Bool)

(declare-fun b!5594862 () Bool)

(assert (=> b!5594862 (= c!980717 ((_ is Star!15581) (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292))))))))))

(declare-fun e!3451465 () (InoxSet Context!9930))

(declare-fun e!3451467 () (InoxSet Context!9930))

(assert (=> b!5594862 (= e!3451465 e!3451467)))

(declare-fun b!5594863 () Bool)

(declare-fun e!3451464 () Bool)

(assert (=> b!5594863 (= e!3451464 (nullable!5613 (regOne!31674 (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292)))))))))))

(declare-fun bm!419434 () Bool)

(assert (=> bm!419434 (= call!419439 call!419443)))

(declare-fun call!419440 () List!63042)

(declare-fun bm!419435 () Bool)

(assert (=> bm!419435 (= call!419443 (derivationStepZipperDown!923 (ite c!980719 (regTwo!31675 (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292))))))) (ite c!980718 (regTwo!31674 (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292))))))) (ite c!980715 (regOne!31674 (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292))))))) (reg!15910 (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292)))))))))) (ite (or c!980719 c!980718) (ite (or c!980324 c!980323) lt!2255845 (Context!9931 call!419160)) (Context!9931 call!419440)) (h!69368 s!2326)))))

(declare-fun b!5594864 () Bool)

(assert (=> b!5594864 (= e!3451468 e!3451465)))

(assert (=> b!5594864 (= c!980715 ((_ is Concat!24426) (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292))))))))))

(declare-fun d!1768524 () Bool)

(declare-fun c!980716 () Bool)

(assert (=> d!1768524 (= c!980716 (and ((_ is ElementMatch!15581) (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292))))))) (= (c!980214 (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292))))))) (h!69368 s!2326))))))

(assert (=> d!1768524 (= (derivationStepZipperDown!923 (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292)))))) (ite (or c!980324 c!980323) lt!2255845 (Context!9931 call!419160)) (h!69368 s!2326)) e!3451466)))

(declare-fun b!5594858 () Bool)

(declare-fun call!419442 () (InoxSet Context!9930))

(assert (=> b!5594858 (= e!3451465 call!419442)))

(declare-fun bm!419436 () Bool)

(assert (=> bm!419436 (= call!419442 call!419439)))

(declare-fun bm!419437 () Bool)

(assert (=> bm!419437 (= call!419438 (derivationStepZipperDown!923 (ite c!980719 (regOne!31675 (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292))))))) (regOne!31674 (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292)))))))) (ite c!980719 (ite (or c!980324 c!980323) lt!2255845 (Context!9931 call!419160)) (Context!9931 call!419441)) (h!69368 s!2326)))))

(declare-fun b!5594865 () Bool)

(assert (=> b!5594865 (= c!980718 e!3451464)))

(declare-fun res!2373420 () Bool)

(assert (=> b!5594865 (=> (not res!2373420) (not e!3451464))))

(assert (=> b!5594865 (= res!2373420 ((_ is Concat!24426) (ite c!980324 (regTwo!31675 (regOne!31675 (regOne!31674 r!7292))) (ite c!980323 (regTwo!31674 (regOne!31675 (regOne!31674 r!7292))) (ite c!980320 (regOne!31674 (regOne!31675 (regOne!31674 r!7292))) (reg!15910 (regOne!31675 (regOne!31674 r!7292))))))))))

(assert (=> b!5594865 (= e!3451469 e!3451468)))

(declare-fun b!5594866 () Bool)

(assert (=> b!5594866 (= e!3451467 ((as const (Array Context!9930 Bool)) false))))

(declare-fun b!5594867 () Bool)

(assert (=> b!5594867 (= e!3451466 (store ((as const (Array Context!9930 Bool)) false) (ite (or c!980324 c!980323) lt!2255845 (Context!9931 call!419160)) true))))

(declare-fun bm!419438 () Bool)

(assert (=> bm!419438 (= call!419440 call!419441)))

(declare-fun b!5594868 () Bool)

(assert (=> b!5594868 (= e!3451467 call!419442)))

(assert (= (and d!1768524 c!980716) b!5594867))

(assert (= (and d!1768524 (not c!980716)) b!5594861))

(assert (= (and b!5594861 c!980719) b!5594860))

(assert (= (and b!5594861 (not c!980719)) b!5594865))

(assert (= (and b!5594865 res!2373420) b!5594863))

(assert (= (and b!5594865 c!980718) b!5594859))

(assert (= (and b!5594865 (not c!980718)) b!5594864))

(assert (= (and b!5594864 c!980715) b!5594858))

(assert (= (and b!5594864 (not c!980715)) b!5594862))

(assert (= (and b!5594862 c!980717) b!5594868))

(assert (= (and b!5594862 (not c!980717)) b!5594866))

(assert (= (or b!5594858 b!5594868) bm!419438))

(assert (= (or b!5594858 b!5594868) bm!419436))

(assert (= (or b!5594859 bm!419438) bm!419433))

(assert (= (or b!5594859 bm!419436) bm!419434))

(assert (= (or b!5594860 bm!419434) bm!419435))

(assert (= (or b!5594860 b!5594859) bm!419437))

(declare-fun m!6574384 () Bool)

(assert (=> bm!419437 m!6574384))

(declare-fun m!6574386 () Bool)

(assert (=> bm!419435 m!6574386))

(declare-fun m!6574388 () Bool)

(assert (=> bm!419433 m!6574388))

(declare-fun m!6574390 () Bool)

(assert (=> b!5594863 m!6574390))

(declare-fun m!6574392 () Bool)

(assert (=> b!5594867 m!6574392))

(assert (=> bm!419155 d!1768524))

(assert (=> b!5593764 d!1767974))

(assert (=> d!1767944 d!1768282))

(declare-fun bs!1293678 () Bool)

(declare-fun d!1768526 () Bool)

(assert (= bs!1293678 (and d!1768526 d!1768476)))

(declare-fun lambda!300373 () Int)

(assert (=> bs!1293678 (= lambda!300373 lambda!300364)))

(declare-fun bs!1293679 () Bool)

(assert (= bs!1293679 (and d!1768526 d!1768496)))

(assert (=> bs!1293679 (= lambda!300373 lambda!300368)))

(declare-fun bs!1293680 () Bool)

(assert (= bs!1293680 (and d!1768526 d!1768420)))

(assert (=> bs!1293680 (= lambda!300373 lambda!300353)))

(declare-fun bs!1293681 () Bool)

(assert (= bs!1293681 (and d!1768526 d!1768522)))

(assert (=> bs!1293681 (= lambda!300373 lambda!300372)))

(declare-fun bs!1293682 () Bool)

(assert (= bs!1293682 (and d!1768526 d!1768432)))

(assert (=> bs!1293682 (= lambda!300373 lambda!300355)))

(declare-fun bs!1293683 () Bool)

(assert (= bs!1293683 (and d!1768526 d!1768516)))

(assert (=> bs!1293683 (= lambda!300373 lambda!300370)))

(declare-fun bs!1293684 () Bool)

(assert (= bs!1293684 (and d!1768526 d!1768442)))

(assert (=> bs!1293684 (= lambda!300373 lambda!300356)))

(assert (=> d!1768526 (= (nullableZipper!1576 lt!2255857) (exists!2170 lt!2255857 lambda!300373))))

(declare-fun bs!1293685 () Bool)

(assert (= bs!1293685 d!1768526))

(declare-fun m!6574394 () Bool)

(assert (=> bs!1293685 m!6574394))

(assert (=> b!5593599 d!1768526))

(declare-fun d!1768528 () Bool)

(declare-fun e!3451471 () Bool)

(assert (=> d!1768528 e!3451471))

(declare-fun c!980722 () Bool)

(assert (=> d!1768528 (= c!980722 ((_ is EmptyExpr!15581) (derivativeStep!4429 r!7292 (head!11931 s!2326))))))

(declare-fun lt!2256009 () Bool)

(declare-fun e!3451475 () Bool)

(assert (=> d!1768528 (= lt!2256009 e!3451475)))

(declare-fun c!980721 () Bool)

(assert (=> d!1768528 (= c!980721 (isEmpty!34741 (tail!11026 s!2326)))))

(assert (=> d!1768528 (validRegex!7317 (derivativeStep!4429 r!7292 (head!11931 s!2326)))))

(assert (=> d!1768528 (= (matchR!7766 (derivativeStep!4429 r!7292 (head!11931 s!2326)) (tail!11026 s!2326)) lt!2256009)))

(declare-fun b!5594869 () Bool)

(assert (=> b!5594869 (= e!3451475 (matchR!7766 (derivativeStep!4429 (derivativeStep!4429 r!7292 (head!11931 s!2326)) (head!11931 (tail!11026 s!2326))) (tail!11026 (tail!11026 s!2326))))))

(declare-fun b!5594870 () Bool)

(declare-fun e!3451470 () Bool)

(assert (=> b!5594870 (= e!3451470 (not (= (head!11931 (tail!11026 s!2326)) (c!980214 (derivativeStep!4429 r!7292 (head!11931 s!2326))))))))

(declare-fun b!5594871 () Bool)

(declare-fun res!2373421 () Bool)

(declare-fun e!3451472 () Bool)

(assert (=> b!5594871 (=> res!2373421 e!3451472)))

(declare-fun e!3451474 () Bool)

(assert (=> b!5594871 (= res!2373421 e!3451474)))

(declare-fun res!2373424 () Bool)

(assert (=> b!5594871 (=> (not res!2373424) (not e!3451474))))

(assert (=> b!5594871 (= res!2373424 lt!2256009)))

(declare-fun b!5594872 () Bool)

(declare-fun res!2373423 () Bool)

(assert (=> b!5594872 (=> res!2373423 e!3451470)))

(assert (=> b!5594872 (= res!2373423 (not (isEmpty!34741 (tail!11026 (tail!11026 s!2326)))))))

(declare-fun bm!419439 () Bool)

(declare-fun call!419444 () Bool)

(assert (=> bm!419439 (= call!419444 (isEmpty!34741 (tail!11026 s!2326)))))

(declare-fun b!5594873 () Bool)

(declare-fun e!3451473 () Bool)

(assert (=> b!5594873 (= e!3451473 (not lt!2256009))))

(declare-fun b!5594874 () Bool)

(declare-fun e!3451476 () Bool)

(assert (=> b!5594874 (= e!3451476 e!3451470)))

(declare-fun res!2373422 () Bool)

(assert (=> b!5594874 (=> res!2373422 e!3451470)))

(assert (=> b!5594874 (= res!2373422 call!419444)))

(declare-fun b!5594875 () Bool)

(declare-fun res!2373428 () Bool)

(assert (=> b!5594875 (=> res!2373428 e!3451472)))

(assert (=> b!5594875 (= res!2373428 (not ((_ is ElementMatch!15581) (derivativeStep!4429 r!7292 (head!11931 s!2326)))))))

(assert (=> b!5594875 (= e!3451473 e!3451472)))

(declare-fun b!5594876 () Bool)

(assert (=> b!5594876 (= e!3451471 (= lt!2256009 call!419444))))

(declare-fun b!5594877 () Bool)

(assert (=> b!5594877 (= e!3451474 (= (head!11931 (tail!11026 s!2326)) (c!980214 (derivativeStep!4429 r!7292 (head!11931 s!2326)))))))

(declare-fun b!5594878 () Bool)

(declare-fun res!2373426 () Bool)

(assert (=> b!5594878 (=> (not res!2373426) (not e!3451474))))

(assert (=> b!5594878 (= res!2373426 (not call!419444))))

(declare-fun b!5594879 () Bool)

(assert (=> b!5594879 (= e!3451475 (nullable!5613 (derivativeStep!4429 r!7292 (head!11931 s!2326))))))

(declare-fun b!5594880 () Bool)

(declare-fun res!2373427 () Bool)

(assert (=> b!5594880 (=> (not res!2373427) (not e!3451474))))

(assert (=> b!5594880 (= res!2373427 (isEmpty!34741 (tail!11026 (tail!11026 s!2326))))))

(declare-fun b!5594881 () Bool)

(assert (=> b!5594881 (= e!3451471 e!3451473)))

(declare-fun c!980720 () Bool)

(assert (=> b!5594881 (= c!980720 ((_ is EmptyLang!15581) (derivativeStep!4429 r!7292 (head!11931 s!2326))))))

(declare-fun b!5594882 () Bool)

(assert (=> b!5594882 (= e!3451472 e!3451476)))

(declare-fun res!2373425 () Bool)

(assert (=> b!5594882 (=> (not res!2373425) (not e!3451476))))

(assert (=> b!5594882 (= res!2373425 (not lt!2256009))))

(assert (= (and d!1768528 c!980721) b!5594879))

(assert (= (and d!1768528 (not c!980721)) b!5594869))

(assert (= (and d!1768528 c!980722) b!5594876))

(assert (= (and d!1768528 (not c!980722)) b!5594881))

(assert (= (and b!5594881 c!980720) b!5594873))

(assert (= (and b!5594881 (not c!980720)) b!5594875))

(assert (= (and b!5594875 (not res!2373428)) b!5594871))

(assert (= (and b!5594871 res!2373424) b!5594878))

(assert (= (and b!5594878 res!2373426) b!5594880))

(assert (= (and b!5594880 res!2373427) b!5594877))

(assert (= (and b!5594871 (not res!2373421)) b!5594882))

(assert (= (and b!5594882 res!2373425) b!5594874))

(assert (= (and b!5594874 (not res!2373422)) b!5594872))

(assert (= (and b!5594872 (not res!2373423)) b!5594870))

(assert (= (or b!5594876 b!5594874 b!5594878) bm!419439))

(assert (=> b!5594879 m!6573256))

(declare-fun m!6574396 () Bool)

(assert (=> b!5594879 m!6574396))

(assert (=> b!5594877 m!6573252))

(declare-fun m!6574398 () Bool)

(assert (=> b!5594877 m!6574398))

(assert (=> b!5594870 m!6573252))

(assert (=> b!5594870 m!6574398))

(assert (=> d!1768528 m!6573252))

(assert (=> d!1768528 m!6573254))

(assert (=> d!1768528 m!6573256))

(declare-fun m!6574400 () Bool)

(assert (=> d!1768528 m!6574400))

(assert (=> b!5594872 m!6573252))

(declare-fun m!6574402 () Bool)

(assert (=> b!5594872 m!6574402))

(assert (=> b!5594872 m!6574402))

(declare-fun m!6574404 () Bool)

(assert (=> b!5594872 m!6574404))

(assert (=> bm!419439 m!6573252))

(assert (=> bm!419439 m!6573254))

(assert (=> b!5594880 m!6573252))

(assert (=> b!5594880 m!6574402))

(assert (=> b!5594880 m!6574402))

(assert (=> b!5594880 m!6574404))

(assert (=> b!5594869 m!6573252))

(assert (=> b!5594869 m!6574398))

(assert (=> b!5594869 m!6573256))

(assert (=> b!5594869 m!6574398))

(declare-fun m!6574406 () Bool)

(assert (=> b!5594869 m!6574406))

(assert (=> b!5594869 m!6573252))

(assert (=> b!5594869 m!6574402))

(assert (=> b!5594869 m!6574406))

(assert (=> b!5594869 m!6574402))

(declare-fun m!6574408 () Bool)

(assert (=> b!5594869 m!6574408))

(assert (=> b!5593689 d!1768528))

(declare-fun b!5594903 () Bool)

(declare-fun e!3451491 () Regex!15581)

(declare-fun e!3451487 () Regex!15581)

(assert (=> b!5594903 (= e!3451491 e!3451487)))

(declare-fun c!980737 () Bool)

(assert (=> b!5594903 (= c!980737 ((_ is ElementMatch!15581) r!7292))))

(declare-fun e!3451490 () Regex!15581)

(declare-fun b!5594904 () Bool)

(declare-fun call!419456 () Regex!15581)

(declare-fun call!419453 () Regex!15581)

(assert (=> b!5594904 (= e!3451490 (Union!15581 (Concat!24426 call!419453 (regTwo!31674 r!7292)) call!419456))))

(declare-fun bm!419448 () Bool)

(declare-fun call!419455 () Regex!15581)

(assert (=> bm!419448 (= call!419453 call!419455)))

(declare-fun b!5594905 () Bool)

(declare-fun e!3451489 () Regex!15581)

(assert (=> b!5594905 (= e!3451489 (Concat!24426 call!419453 r!7292))))

(declare-fun b!5594906 () Bool)

(declare-fun e!3451488 () Regex!15581)

(declare-fun call!419454 () Regex!15581)

(assert (=> b!5594906 (= e!3451488 (Union!15581 call!419454 call!419455))))

(declare-fun d!1768530 () Bool)

(declare-fun lt!2256012 () Regex!15581)

(assert (=> d!1768530 (validRegex!7317 lt!2256012)))

(assert (=> d!1768530 (= lt!2256012 e!3451491)))

(declare-fun c!980734 () Bool)

(assert (=> d!1768530 (= c!980734 (or ((_ is EmptyExpr!15581) r!7292) ((_ is EmptyLang!15581) r!7292)))))

(assert (=> d!1768530 (validRegex!7317 r!7292)))

(assert (=> d!1768530 (= (derivativeStep!4429 r!7292 (head!11931 s!2326)) lt!2256012)))

(declare-fun bm!419449 () Bool)

(declare-fun c!980735 () Bool)

(declare-fun c!980733 () Bool)

(assert (=> bm!419449 (= call!419455 (derivativeStep!4429 (ite c!980735 (regTwo!31675 r!7292) (ite c!980733 (reg!15910 r!7292) (regOne!31674 r!7292))) (head!11931 s!2326)))))

(declare-fun b!5594907 () Bool)

(assert (=> b!5594907 (= c!980735 ((_ is Union!15581) r!7292))))

(assert (=> b!5594907 (= e!3451487 e!3451488)))

(declare-fun b!5594908 () Bool)

(assert (=> b!5594908 (= e!3451487 (ite (= (head!11931 s!2326) (c!980214 r!7292)) EmptyExpr!15581 EmptyLang!15581))))

(declare-fun b!5594909 () Bool)

(declare-fun c!980736 () Bool)

(assert (=> b!5594909 (= c!980736 (nullable!5613 (regOne!31674 r!7292)))))

(assert (=> b!5594909 (= e!3451489 e!3451490)))

(declare-fun bm!419450 () Bool)

(assert (=> bm!419450 (= call!419454 (derivativeStep!4429 (ite c!980735 (regOne!31675 r!7292) (ite c!980736 (regTwo!31674 r!7292) (regOne!31674 r!7292))) (head!11931 s!2326)))))

(declare-fun bm!419451 () Bool)

(assert (=> bm!419451 (= call!419456 call!419454)))

(declare-fun b!5594910 () Bool)

(assert (=> b!5594910 (= e!3451488 e!3451489)))

(assert (=> b!5594910 (= c!980733 ((_ is Star!15581) r!7292))))

(declare-fun b!5594911 () Bool)

(assert (=> b!5594911 (= e!3451491 EmptyLang!15581)))

(declare-fun b!5594912 () Bool)

(assert (=> b!5594912 (= e!3451490 (Union!15581 (Concat!24426 call!419456 (regTwo!31674 r!7292)) EmptyLang!15581))))

(assert (= (and d!1768530 c!980734) b!5594911))

(assert (= (and d!1768530 (not c!980734)) b!5594903))

(assert (= (and b!5594903 c!980737) b!5594908))

(assert (= (and b!5594903 (not c!980737)) b!5594907))

(assert (= (and b!5594907 c!980735) b!5594906))

(assert (= (and b!5594907 (not c!980735)) b!5594910))

(assert (= (and b!5594910 c!980733) b!5594905))

(assert (= (and b!5594910 (not c!980733)) b!5594909))

(assert (= (and b!5594909 c!980736) b!5594904))

(assert (= (and b!5594909 (not c!980736)) b!5594912))

(assert (= (or b!5594904 b!5594912) bm!419451))

(assert (= (or b!5594905 b!5594904) bm!419448))

(assert (= (or b!5594906 bm!419448) bm!419449))

(assert (= (or b!5594906 bm!419451) bm!419450))

(declare-fun m!6574410 () Bool)

(assert (=> d!1768530 m!6574410))

(assert (=> d!1768530 m!6572758))

(assert (=> bm!419449 m!6573250))

(declare-fun m!6574412 () Bool)

(assert (=> bm!419449 m!6574412))

(assert (=> b!5594909 m!6572742))

(assert (=> bm!419450 m!6573250))

(declare-fun m!6574414 () Bool)

(assert (=> bm!419450 m!6574414))

(assert (=> b!5593689 d!1768530))

(assert (=> b!5593689 d!1768344))

(assert (=> b!5593689 d!1768440))

(declare-fun d!1768532 () Bool)

(declare-fun c!980738 () Bool)

(assert (=> d!1768532 (= c!980738 (isEmpty!34741 (tail!11026 (t!376324 s!2326))))))

(declare-fun e!3451492 () Bool)

(assert (=> d!1768532 (= (matchZipper!1719 (derivationStepZipper!1680 lt!2255868 (head!11931 (t!376324 s!2326))) (tail!11026 (t!376324 s!2326))) e!3451492)))

(declare-fun b!5594913 () Bool)

(assert (=> b!5594913 (= e!3451492 (nullableZipper!1576 (derivationStepZipper!1680 lt!2255868 (head!11931 (t!376324 s!2326)))))))

(declare-fun b!5594914 () Bool)

(assert (=> b!5594914 (= e!3451492 (matchZipper!1719 (derivationStepZipper!1680 (derivationStepZipper!1680 lt!2255868 (head!11931 (t!376324 s!2326))) (head!11931 (tail!11026 (t!376324 s!2326)))) (tail!11026 (tail!11026 (t!376324 s!2326)))))))

(assert (= (and d!1768532 c!980738) b!5594913))

(assert (= (and d!1768532 (not c!980738)) b!5594914))

(assert (=> d!1768532 m!6573008))

(assert (=> d!1768532 m!6573900))

(assert (=> b!5594913 m!6573200))

(declare-fun m!6574416 () Bool)

(assert (=> b!5594913 m!6574416))

(assert (=> b!5594914 m!6573008))

(assert (=> b!5594914 m!6573904))

(assert (=> b!5594914 m!6573200))

(assert (=> b!5594914 m!6573904))

(declare-fun m!6574418 () Bool)

(assert (=> b!5594914 m!6574418))

(assert (=> b!5594914 m!6573008))

(assert (=> b!5594914 m!6573908))

(assert (=> b!5594914 m!6574418))

(assert (=> b!5594914 m!6573908))

(declare-fun m!6574420 () Bool)

(assert (=> b!5594914 m!6574420))

(assert (=> b!5593604 d!1768532))

(declare-fun bs!1293686 () Bool)

(declare-fun d!1768534 () Bool)

(assert (= bs!1293686 (and d!1768534 d!1768310)))

(declare-fun lambda!300374 () Int)

(assert (=> bs!1293686 (= lambda!300374 lambda!300342)))

(declare-fun bs!1293687 () Bool)

(assert (= bs!1293687 (and d!1768534 d!1768506)))

(assert (=> bs!1293687 (= lambda!300374 lambda!300369)))

(declare-fun bs!1293688 () Bool)

(assert (= bs!1293688 (and d!1768534 d!1768520)))

(assert (=> bs!1293688 (= lambda!300374 lambda!300371)))

(declare-fun bs!1293689 () Bool)

(assert (= bs!1293689 (and d!1768534 b!5593035)))

(assert (=> bs!1293689 (= (= (head!11931 (t!376324 s!2326)) (h!69368 s!2326)) (= lambda!300374 lambda!300242))))

(declare-fun bs!1293690 () Bool)

(assert (= bs!1293690 (and d!1768534 d!1768494)))

(assert (=> bs!1293690 (= lambda!300374 lambda!300367)))

(declare-fun bs!1293691 () Bool)

(assert (= bs!1293691 (and d!1768534 d!1768294)))

(assert (=> bs!1293691 (= lambda!300374 lambda!300340)))

(declare-fun bs!1293692 () Bool)

(assert (= bs!1293692 (and d!1768534 d!1768340)))

(assert (=> bs!1293692 (= lambda!300374 lambda!300347)))

(declare-fun bs!1293693 () Bool)

(assert (= bs!1293693 (and d!1768534 d!1768306)))

(assert (=> bs!1293693 (= lambda!300374 lambda!300341)))

(assert (=> d!1768534 true))

(assert (=> d!1768534 (= (derivationStepZipper!1680 lt!2255868 (head!11931 (t!376324 s!2326))) (flatMap!1194 lt!2255868 lambda!300374))))

(declare-fun bs!1293694 () Bool)

(assert (= bs!1293694 d!1768534))

(declare-fun m!6574422 () Bool)

(assert (=> bs!1293694 m!6574422))

(assert (=> b!5593604 d!1768534))

(assert (=> b!5593604 d!1768296))

(assert (=> b!5593604 d!1768298))

(declare-fun d!1768536 () Bool)

(assert (=> d!1768536 (= ($colon$colon!1643 (exprs!5465 lt!2255845) (ite (or c!980318 c!980315) (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (regTwo!31675 (regOne!31674 r!7292)))) (Cons!62918 (ite (or c!980318 c!980315) (regTwo!31674 (regTwo!31675 (regOne!31674 r!7292))) (regTwo!31675 (regOne!31674 r!7292))) (exprs!5465 lt!2255845)))))

(assert (=> bm!419147 d!1768536))

(declare-fun d!1768538 () Bool)

(declare-fun res!2373433 () Bool)

(declare-fun e!3451497 () Bool)

(assert (=> d!1768538 (=> res!2373433 e!3451497)))

(assert (=> d!1768538 (= res!2373433 ((_ is Nil!62919) lt!2255959))))

(assert (=> d!1768538 (= (noDuplicate!1557 lt!2255959) e!3451497)))

(declare-fun b!5594919 () Bool)

(declare-fun e!3451498 () Bool)

(assert (=> b!5594919 (= e!3451497 e!3451498)))

(declare-fun res!2373434 () Bool)

(assert (=> b!5594919 (=> (not res!2373434) (not e!3451498))))

(declare-fun contains!19814 (List!63043 Context!9930) Bool)

(assert (=> b!5594919 (= res!2373434 (not (contains!19814 (t!376323 lt!2255959) (h!69367 lt!2255959))))))

(declare-fun b!5594920 () Bool)

(assert (=> b!5594920 (= e!3451498 (noDuplicate!1557 (t!376323 lt!2255959)))))

(assert (= (and d!1768538 (not res!2373433)) b!5594919))

(assert (= (and b!5594919 res!2373434) b!5594920))

(declare-fun m!6574424 () Bool)

(assert (=> b!5594919 m!6574424))

(declare-fun m!6574426 () Bool)

(assert (=> b!5594920 m!6574426))

(assert (=> d!1767976 d!1768538))

(declare-fun d!1768540 () Bool)

(declare-fun e!3451505 () Bool)

(assert (=> d!1768540 e!3451505))

(declare-fun res!2373439 () Bool)

(assert (=> d!1768540 (=> (not res!2373439) (not e!3451505))))

(declare-fun res!2373440 () List!63043)

(assert (=> d!1768540 (= res!2373439 (noDuplicate!1557 res!2373440))))

(declare-fun e!3451506 () Bool)

(assert (=> d!1768540 e!3451506))

(assert (=> d!1768540 (= (choose!42425 z!1189) res!2373440)))

(declare-fun b!5594928 () Bool)

(declare-fun e!3451507 () Bool)

(declare-fun tp!1547131 () Bool)

(assert (=> b!5594928 (= e!3451507 tp!1547131)))

(declare-fun b!5594927 () Bool)

(declare-fun tp!1547130 () Bool)

(assert (=> b!5594927 (= e!3451506 (and (inv!82199 (h!69367 res!2373440)) e!3451507 tp!1547130))))

(declare-fun b!5594929 () Bool)

(assert (=> b!5594929 (= e!3451505 (= (content!11356 res!2373440) z!1189))))

(assert (= b!5594927 b!5594928))

(assert (= (and d!1768540 ((_ is Cons!62919) res!2373440)) b!5594927))

(assert (= (and d!1768540 res!2373439) b!5594929))

(declare-fun m!6574428 () Bool)

(assert (=> d!1768540 m!6574428))

(declare-fun m!6574430 () Bool)

(assert (=> b!5594927 m!6574430))

(declare-fun m!6574432 () Bool)

(assert (=> b!5594929 m!6574432))

(assert (=> d!1767976 d!1768540))

(declare-fun e!3451508 () Bool)

(assert (=> b!5593810 (= tp!1546934 e!3451508)))

(declare-fun b!5594932 () Bool)

(declare-fun tp!1547135 () Bool)

(assert (=> b!5594932 (= e!3451508 tp!1547135)))

(declare-fun b!5594930 () Bool)

(assert (=> b!5594930 (= e!3451508 tp_is_empty!40415)))

(declare-fun b!5594931 () Bool)

(declare-fun tp!1547132 () Bool)

(declare-fun tp!1547133 () Bool)

(assert (=> b!5594931 (= e!3451508 (and tp!1547132 tp!1547133))))

(declare-fun b!5594933 () Bool)

(declare-fun tp!1547136 () Bool)

(declare-fun tp!1547134 () Bool)

(assert (=> b!5594933 (= e!3451508 (and tp!1547136 tp!1547134))))

(assert (= (and b!5593810 ((_ is ElementMatch!15581) (regOne!31675 (regTwo!31675 r!7292)))) b!5594930))

(assert (= (and b!5593810 ((_ is Concat!24426) (regOne!31675 (regTwo!31675 r!7292)))) b!5594931))

(assert (= (and b!5593810 ((_ is Star!15581) (regOne!31675 (regTwo!31675 r!7292)))) b!5594932))

(assert (= (and b!5593810 ((_ is Union!15581) (regOne!31675 (regTwo!31675 r!7292)))) b!5594933))

(declare-fun e!3451509 () Bool)

(assert (=> b!5593810 (= tp!1546932 e!3451509)))

(declare-fun b!5594936 () Bool)

(declare-fun tp!1547140 () Bool)

(assert (=> b!5594936 (= e!3451509 tp!1547140)))

(declare-fun b!5594934 () Bool)

(assert (=> b!5594934 (= e!3451509 tp_is_empty!40415)))

(declare-fun b!5594935 () Bool)

(declare-fun tp!1547137 () Bool)

(declare-fun tp!1547138 () Bool)

(assert (=> b!5594935 (= e!3451509 (and tp!1547137 tp!1547138))))

(declare-fun b!5594937 () Bool)

(declare-fun tp!1547141 () Bool)

(declare-fun tp!1547139 () Bool)

(assert (=> b!5594937 (= e!3451509 (and tp!1547141 tp!1547139))))

(assert (= (and b!5593810 ((_ is ElementMatch!15581) (regTwo!31675 (regTwo!31675 r!7292)))) b!5594934))

(assert (= (and b!5593810 ((_ is Concat!24426) (regTwo!31675 (regTwo!31675 r!7292)))) b!5594935))

(assert (= (and b!5593810 ((_ is Star!15581) (regTwo!31675 (regTwo!31675 r!7292)))) b!5594936))

(assert (= (and b!5593810 ((_ is Union!15581) (regTwo!31675 (regTwo!31675 r!7292)))) b!5594937))

(declare-fun e!3451510 () Bool)

(assert (=> b!5593802 (= tp!1546923 e!3451510)))

(declare-fun b!5594940 () Bool)

(declare-fun tp!1547145 () Bool)

(assert (=> b!5594940 (= e!3451510 tp!1547145)))

(declare-fun b!5594938 () Bool)

(assert (=> b!5594938 (= e!3451510 tp_is_empty!40415)))

(declare-fun b!5594939 () Bool)

(declare-fun tp!1547142 () Bool)

(declare-fun tp!1547143 () Bool)

(assert (=> b!5594939 (= e!3451510 (and tp!1547142 tp!1547143))))

(declare-fun b!5594941 () Bool)

(declare-fun tp!1547146 () Bool)

(declare-fun tp!1547144 () Bool)

(assert (=> b!5594941 (= e!3451510 (and tp!1547146 tp!1547144))))

(assert (= (and b!5593802 ((_ is ElementMatch!15581) (h!69366 (exprs!5465 (h!69367 zl!343))))) b!5594938))

(assert (= (and b!5593802 ((_ is Concat!24426) (h!69366 (exprs!5465 (h!69367 zl!343))))) b!5594939))

(assert (= (and b!5593802 ((_ is Star!15581) (h!69366 (exprs!5465 (h!69367 zl!343))))) b!5594940))

(assert (= (and b!5593802 ((_ is Union!15581) (h!69366 (exprs!5465 (h!69367 zl!343))))) b!5594941))

(declare-fun b!5594942 () Bool)

(declare-fun e!3451511 () Bool)

(declare-fun tp!1547147 () Bool)

(declare-fun tp!1547148 () Bool)

(assert (=> b!5594942 (= e!3451511 (and tp!1547147 tp!1547148))))

(assert (=> b!5593802 (= tp!1546924 e!3451511)))

(assert (= (and b!5593802 ((_ is Cons!62918) (t!376322 (exprs!5465 (h!69367 zl!343))))) b!5594942))

(declare-fun condSetEmpty!37303 () Bool)

(assert (=> setNonEmpty!37291 (= condSetEmpty!37303 (= setRest!37291 ((as const (Array Context!9930 Bool)) false)))))

(declare-fun setRes!37303 () Bool)

(assert (=> setNonEmpty!37291 (= tp!1546945 setRes!37303)))

(declare-fun setIsEmpty!37303 () Bool)

(assert (=> setIsEmpty!37303 setRes!37303))

(declare-fun setElem!37303 () Context!9930)

(declare-fun setNonEmpty!37303 () Bool)

(declare-fun e!3451512 () Bool)

(declare-fun tp!1547150 () Bool)

(assert (=> setNonEmpty!37303 (= setRes!37303 (and tp!1547150 (inv!82199 setElem!37303) e!3451512))))

(declare-fun setRest!37303 () (InoxSet Context!9930))

(assert (=> setNonEmpty!37303 (= setRest!37291 ((_ map or) (store ((as const (Array Context!9930 Bool)) false) setElem!37303 true) setRest!37303))))

(declare-fun b!5594943 () Bool)

(declare-fun tp!1547149 () Bool)

(assert (=> b!5594943 (= e!3451512 tp!1547149)))

(assert (= (and setNonEmpty!37291 condSetEmpty!37303) setIsEmpty!37303))

(assert (= (and setNonEmpty!37291 (not condSetEmpty!37303)) setNonEmpty!37303))

(assert (= setNonEmpty!37303 b!5594943))

(declare-fun m!6574434 () Bool)

(assert (=> setNonEmpty!37303 m!6574434))

(declare-fun b!5594944 () Bool)

(declare-fun e!3451513 () Bool)

(declare-fun tp!1547151 () Bool)

(declare-fun tp!1547152 () Bool)

(assert (=> b!5594944 (= e!3451513 (and tp!1547151 tp!1547152))))

(assert (=> b!5593819 (= tp!1546944 e!3451513)))

(assert (= (and b!5593819 ((_ is Cons!62918) (exprs!5465 setElem!37291))) b!5594944))

(declare-fun e!3451514 () Bool)

(assert (=> b!5593796 (= tp!1546918 e!3451514)))

(declare-fun b!5594947 () Bool)

(declare-fun tp!1547156 () Bool)

(assert (=> b!5594947 (= e!3451514 tp!1547156)))

(declare-fun b!5594945 () Bool)

(assert (=> b!5594945 (= e!3451514 tp_is_empty!40415)))

(declare-fun b!5594946 () Bool)

(declare-fun tp!1547153 () Bool)

(declare-fun tp!1547154 () Bool)

(assert (=> b!5594946 (= e!3451514 (and tp!1547153 tp!1547154))))

(declare-fun b!5594948 () Bool)

(declare-fun tp!1547157 () Bool)

(declare-fun tp!1547155 () Bool)

(assert (=> b!5594948 (= e!3451514 (and tp!1547157 tp!1547155))))

(assert (= (and b!5593796 ((_ is ElementMatch!15581) (h!69366 (exprs!5465 setElem!37285)))) b!5594945))

(assert (= (and b!5593796 ((_ is Concat!24426) (h!69366 (exprs!5465 setElem!37285)))) b!5594946))

(assert (= (and b!5593796 ((_ is Star!15581) (h!69366 (exprs!5465 setElem!37285)))) b!5594947))

(assert (= (and b!5593796 ((_ is Union!15581) (h!69366 (exprs!5465 setElem!37285)))) b!5594948))

(declare-fun b!5594949 () Bool)

(declare-fun e!3451515 () Bool)

(declare-fun tp!1547158 () Bool)

(declare-fun tp!1547159 () Bool)

(assert (=> b!5594949 (= e!3451515 (and tp!1547158 tp!1547159))))

(assert (=> b!5593796 (= tp!1546919 e!3451515)))

(assert (= (and b!5593796 ((_ is Cons!62918) (t!376322 (exprs!5465 setElem!37285)))) b!5594949))

(declare-fun e!3451516 () Bool)

(assert (=> b!5593789 (= tp!1546909 e!3451516)))

(declare-fun b!5594952 () Bool)

(declare-fun tp!1547163 () Bool)

(assert (=> b!5594952 (= e!3451516 tp!1547163)))

(declare-fun b!5594950 () Bool)

(assert (=> b!5594950 (= e!3451516 tp_is_empty!40415)))

(declare-fun b!5594951 () Bool)

(declare-fun tp!1547160 () Bool)

(declare-fun tp!1547161 () Bool)

(assert (=> b!5594951 (= e!3451516 (and tp!1547160 tp!1547161))))

(declare-fun b!5594953 () Bool)

(declare-fun tp!1547164 () Bool)

(declare-fun tp!1547162 () Bool)

(assert (=> b!5594953 (= e!3451516 (and tp!1547164 tp!1547162))))

(assert (= (and b!5593789 ((_ is ElementMatch!15581) (regOne!31674 (regTwo!31674 r!7292)))) b!5594950))

(assert (= (and b!5593789 ((_ is Concat!24426) (regOne!31674 (regTwo!31674 r!7292)))) b!5594951))

(assert (= (and b!5593789 ((_ is Star!15581) (regOne!31674 (regTwo!31674 r!7292)))) b!5594952))

(assert (= (and b!5593789 ((_ is Union!15581) (regOne!31674 (regTwo!31674 r!7292)))) b!5594953))

(declare-fun e!3451517 () Bool)

(assert (=> b!5593789 (= tp!1546910 e!3451517)))

(declare-fun b!5594956 () Bool)

(declare-fun tp!1547168 () Bool)

(assert (=> b!5594956 (= e!3451517 tp!1547168)))

(declare-fun b!5594954 () Bool)

(assert (=> b!5594954 (= e!3451517 tp_is_empty!40415)))

(declare-fun b!5594955 () Bool)

(declare-fun tp!1547165 () Bool)

(declare-fun tp!1547166 () Bool)

(assert (=> b!5594955 (= e!3451517 (and tp!1547165 tp!1547166))))

(declare-fun b!5594957 () Bool)

(declare-fun tp!1547169 () Bool)

(declare-fun tp!1547167 () Bool)

(assert (=> b!5594957 (= e!3451517 (and tp!1547169 tp!1547167))))

(assert (= (and b!5593789 ((_ is ElementMatch!15581) (regTwo!31674 (regTwo!31674 r!7292)))) b!5594954))

(assert (= (and b!5593789 ((_ is Concat!24426) (regTwo!31674 (regTwo!31674 r!7292)))) b!5594955))

(assert (= (and b!5593789 ((_ is Star!15581) (regTwo!31674 (regTwo!31674 r!7292)))) b!5594956))

(assert (= (and b!5593789 ((_ is Union!15581) (regTwo!31674 (regTwo!31674 r!7292)))) b!5594957))

(declare-fun e!3451518 () Bool)

(assert (=> b!5593790 (= tp!1546912 e!3451518)))

(declare-fun b!5594960 () Bool)

(declare-fun tp!1547173 () Bool)

(assert (=> b!5594960 (= e!3451518 tp!1547173)))

(declare-fun b!5594958 () Bool)

(assert (=> b!5594958 (= e!3451518 tp_is_empty!40415)))

(declare-fun b!5594959 () Bool)

(declare-fun tp!1547170 () Bool)

(declare-fun tp!1547171 () Bool)

(assert (=> b!5594959 (= e!3451518 (and tp!1547170 tp!1547171))))

(declare-fun b!5594961 () Bool)

(declare-fun tp!1547174 () Bool)

(declare-fun tp!1547172 () Bool)

(assert (=> b!5594961 (= e!3451518 (and tp!1547174 tp!1547172))))

(assert (= (and b!5593790 ((_ is ElementMatch!15581) (reg!15910 (regTwo!31674 r!7292)))) b!5594958))

(assert (= (and b!5593790 ((_ is Concat!24426) (reg!15910 (regTwo!31674 r!7292)))) b!5594959))

(assert (= (and b!5593790 ((_ is Star!15581) (reg!15910 (regTwo!31674 r!7292)))) b!5594960))

(assert (= (and b!5593790 ((_ is Union!15581) (reg!15910 (regTwo!31674 r!7292)))) b!5594961))

(declare-fun e!3451519 () Bool)

(assert (=> b!5593791 (= tp!1546913 e!3451519)))

(declare-fun b!5594964 () Bool)

(declare-fun tp!1547178 () Bool)

(assert (=> b!5594964 (= e!3451519 tp!1547178)))

(declare-fun b!5594962 () Bool)

(assert (=> b!5594962 (= e!3451519 tp_is_empty!40415)))

(declare-fun b!5594963 () Bool)

(declare-fun tp!1547175 () Bool)

(declare-fun tp!1547176 () Bool)

(assert (=> b!5594963 (= e!3451519 (and tp!1547175 tp!1547176))))

(declare-fun b!5594965 () Bool)

(declare-fun tp!1547179 () Bool)

(declare-fun tp!1547177 () Bool)

(assert (=> b!5594965 (= e!3451519 (and tp!1547179 tp!1547177))))

(assert (= (and b!5593791 ((_ is ElementMatch!15581) (regOne!31675 (regTwo!31674 r!7292)))) b!5594962))

(assert (= (and b!5593791 ((_ is Concat!24426) (regOne!31675 (regTwo!31674 r!7292)))) b!5594963))

(assert (= (and b!5593791 ((_ is Star!15581) (regOne!31675 (regTwo!31674 r!7292)))) b!5594964))

(assert (= (and b!5593791 ((_ is Union!15581) (regOne!31675 (regTwo!31674 r!7292)))) b!5594965))

(declare-fun e!3451520 () Bool)

(assert (=> b!5593791 (= tp!1546911 e!3451520)))

(declare-fun b!5594968 () Bool)

(declare-fun tp!1547183 () Bool)

(assert (=> b!5594968 (= e!3451520 tp!1547183)))

(declare-fun b!5594966 () Bool)

(assert (=> b!5594966 (= e!3451520 tp_is_empty!40415)))

(declare-fun b!5594967 () Bool)

(declare-fun tp!1547180 () Bool)

(declare-fun tp!1547181 () Bool)

(assert (=> b!5594967 (= e!3451520 (and tp!1547180 tp!1547181))))

(declare-fun b!5594969 () Bool)

(declare-fun tp!1547184 () Bool)

(declare-fun tp!1547182 () Bool)

(assert (=> b!5594969 (= e!3451520 (and tp!1547184 tp!1547182))))

(assert (= (and b!5593791 ((_ is ElementMatch!15581) (regTwo!31675 (regTwo!31674 r!7292)))) b!5594966))

(assert (= (and b!5593791 ((_ is Concat!24426) (regTwo!31675 (regTwo!31674 r!7292)))) b!5594967))

(assert (= (and b!5593791 ((_ is Star!15581) (regTwo!31675 (regTwo!31674 r!7292)))) b!5594968))

(assert (= (and b!5593791 ((_ is Union!15581) (regTwo!31675 (regTwo!31674 r!7292)))) b!5594969))

(declare-fun b!5594971 () Bool)

(declare-fun e!3451522 () Bool)

(declare-fun tp!1547185 () Bool)

(assert (=> b!5594971 (= e!3451522 tp!1547185)))

(declare-fun b!5594970 () Bool)

(declare-fun e!3451521 () Bool)

(declare-fun tp!1547186 () Bool)

(assert (=> b!5594970 (= e!3451521 (and (inv!82199 (h!69367 (t!376323 (t!376323 zl!343)))) e!3451522 tp!1547186))))

(assert (=> b!5593826 (= tp!1546951 e!3451521)))

(assert (= b!5594970 b!5594971))

(assert (= (and b!5593826 ((_ is Cons!62919) (t!376323 (t!376323 zl!343)))) b!5594970))

(declare-fun m!6574436 () Bool)

(assert (=> b!5594970 m!6574436))

(declare-fun e!3451523 () Bool)

(assert (=> b!5593812 (= tp!1546935 e!3451523)))

(declare-fun b!5594974 () Bool)

(declare-fun tp!1547190 () Bool)

(assert (=> b!5594974 (= e!3451523 tp!1547190)))

(declare-fun b!5594972 () Bool)

(assert (=> b!5594972 (= e!3451523 tp_is_empty!40415)))

(declare-fun b!5594973 () Bool)

(declare-fun tp!1547187 () Bool)

(declare-fun tp!1547188 () Bool)

(assert (=> b!5594973 (= e!3451523 (and tp!1547187 tp!1547188))))

(declare-fun b!5594975 () Bool)

(declare-fun tp!1547191 () Bool)

(declare-fun tp!1547189 () Bool)

(assert (=> b!5594975 (= e!3451523 (and tp!1547191 tp!1547189))))

(assert (= (and b!5593812 ((_ is ElementMatch!15581) (regOne!31674 (reg!15910 r!7292)))) b!5594972))

(assert (= (and b!5593812 ((_ is Concat!24426) (regOne!31674 (reg!15910 r!7292)))) b!5594973))

(assert (= (and b!5593812 ((_ is Star!15581) (regOne!31674 (reg!15910 r!7292)))) b!5594974))

(assert (= (and b!5593812 ((_ is Union!15581) (regOne!31674 (reg!15910 r!7292)))) b!5594975))

(declare-fun e!3451524 () Bool)

(assert (=> b!5593812 (= tp!1546936 e!3451524)))

(declare-fun b!5594978 () Bool)

(declare-fun tp!1547195 () Bool)

(assert (=> b!5594978 (= e!3451524 tp!1547195)))

(declare-fun b!5594976 () Bool)

(assert (=> b!5594976 (= e!3451524 tp_is_empty!40415)))

(declare-fun b!5594977 () Bool)

(declare-fun tp!1547192 () Bool)

(declare-fun tp!1547193 () Bool)

(assert (=> b!5594977 (= e!3451524 (and tp!1547192 tp!1547193))))

(declare-fun b!5594979 () Bool)

(declare-fun tp!1547196 () Bool)

(declare-fun tp!1547194 () Bool)

(assert (=> b!5594979 (= e!3451524 (and tp!1547196 tp!1547194))))

(assert (= (and b!5593812 ((_ is ElementMatch!15581) (regTwo!31674 (reg!15910 r!7292)))) b!5594976))

(assert (= (and b!5593812 ((_ is Concat!24426) (regTwo!31674 (reg!15910 r!7292)))) b!5594977))

(assert (= (and b!5593812 ((_ is Star!15581) (regTwo!31674 (reg!15910 r!7292)))) b!5594978))

(assert (= (and b!5593812 ((_ is Union!15581) (regTwo!31674 (reg!15910 r!7292)))) b!5594979))

(declare-fun b!5594980 () Bool)

(declare-fun e!3451525 () Bool)

(declare-fun tp!1547197 () Bool)

(declare-fun tp!1547198 () Bool)

(assert (=> b!5594980 (= e!3451525 (and tp!1547197 tp!1547198))))

(assert (=> b!5593827 (= tp!1546950 e!3451525)))

(assert (= (and b!5593827 ((_ is Cons!62918) (exprs!5465 (h!69367 (t!376323 zl!343))))) b!5594980))

(declare-fun e!3451526 () Bool)

(assert (=> b!5593813 (= tp!1546938 e!3451526)))

(declare-fun b!5594983 () Bool)

(declare-fun tp!1547202 () Bool)

(assert (=> b!5594983 (= e!3451526 tp!1547202)))

(declare-fun b!5594981 () Bool)

(assert (=> b!5594981 (= e!3451526 tp_is_empty!40415)))

(declare-fun b!5594982 () Bool)

(declare-fun tp!1547199 () Bool)

(declare-fun tp!1547200 () Bool)

(assert (=> b!5594982 (= e!3451526 (and tp!1547199 tp!1547200))))

(declare-fun b!5594984 () Bool)

(declare-fun tp!1547203 () Bool)

(declare-fun tp!1547201 () Bool)

(assert (=> b!5594984 (= e!3451526 (and tp!1547203 tp!1547201))))

(assert (= (and b!5593813 ((_ is ElementMatch!15581) (reg!15910 (reg!15910 r!7292)))) b!5594981))

(assert (= (and b!5593813 ((_ is Concat!24426) (reg!15910 (reg!15910 r!7292)))) b!5594982))

(assert (= (and b!5593813 ((_ is Star!15581) (reg!15910 (reg!15910 r!7292)))) b!5594983))

(assert (= (and b!5593813 ((_ is Union!15581) (reg!15910 (reg!15910 r!7292)))) b!5594984))

(declare-fun e!3451527 () Bool)

(assert (=> b!5593804 (= tp!1546925 e!3451527)))

(declare-fun b!5594987 () Bool)

(declare-fun tp!1547207 () Bool)

(assert (=> b!5594987 (= e!3451527 tp!1547207)))

(declare-fun b!5594985 () Bool)

(assert (=> b!5594985 (= e!3451527 tp_is_empty!40415)))

(declare-fun b!5594986 () Bool)

(declare-fun tp!1547204 () Bool)

(declare-fun tp!1547205 () Bool)

(assert (=> b!5594986 (= e!3451527 (and tp!1547204 tp!1547205))))

(declare-fun b!5594988 () Bool)

(declare-fun tp!1547208 () Bool)

(declare-fun tp!1547206 () Bool)

(assert (=> b!5594988 (= e!3451527 (and tp!1547208 tp!1547206))))

(assert (= (and b!5593804 ((_ is ElementMatch!15581) (regOne!31674 (regOne!31675 r!7292)))) b!5594985))

(assert (= (and b!5593804 ((_ is Concat!24426) (regOne!31674 (regOne!31675 r!7292)))) b!5594986))

(assert (= (and b!5593804 ((_ is Star!15581) (regOne!31674 (regOne!31675 r!7292)))) b!5594987))

(assert (= (and b!5593804 ((_ is Union!15581) (regOne!31674 (regOne!31675 r!7292)))) b!5594988))

(declare-fun e!3451528 () Bool)

(assert (=> b!5593804 (= tp!1546926 e!3451528)))

(declare-fun b!5594991 () Bool)

(declare-fun tp!1547212 () Bool)

(assert (=> b!5594991 (= e!3451528 tp!1547212)))

(declare-fun b!5594989 () Bool)

(assert (=> b!5594989 (= e!3451528 tp_is_empty!40415)))

(declare-fun b!5594990 () Bool)

(declare-fun tp!1547209 () Bool)

(declare-fun tp!1547210 () Bool)

(assert (=> b!5594990 (= e!3451528 (and tp!1547209 tp!1547210))))

(declare-fun b!5594992 () Bool)

(declare-fun tp!1547213 () Bool)

(declare-fun tp!1547211 () Bool)

(assert (=> b!5594992 (= e!3451528 (and tp!1547213 tp!1547211))))

(assert (= (and b!5593804 ((_ is ElementMatch!15581) (regTwo!31674 (regOne!31675 r!7292)))) b!5594989))

(assert (= (and b!5593804 ((_ is Concat!24426) (regTwo!31674 (regOne!31675 r!7292)))) b!5594990))

(assert (= (and b!5593804 ((_ is Star!15581) (regTwo!31674 (regOne!31675 r!7292)))) b!5594991))

(assert (= (and b!5593804 ((_ is Union!15581) (regTwo!31674 (regOne!31675 r!7292)))) b!5594992))

(declare-fun e!3451529 () Bool)

(assert (=> b!5593814 (= tp!1546939 e!3451529)))

(declare-fun b!5594995 () Bool)

(declare-fun tp!1547217 () Bool)

(assert (=> b!5594995 (= e!3451529 tp!1547217)))

(declare-fun b!5594993 () Bool)

(assert (=> b!5594993 (= e!3451529 tp_is_empty!40415)))

(declare-fun b!5594994 () Bool)

(declare-fun tp!1547214 () Bool)

(declare-fun tp!1547215 () Bool)

(assert (=> b!5594994 (= e!3451529 (and tp!1547214 tp!1547215))))

(declare-fun b!5594996 () Bool)

(declare-fun tp!1547218 () Bool)

(declare-fun tp!1547216 () Bool)

(assert (=> b!5594996 (= e!3451529 (and tp!1547218 tp!1547216))))

(assert (= (and b!5593814 ((_ is ElementMatch!15581) (regOne!31675 (reg!15910 r!7292)))) b!5594993))

(assert (= (and b!5593814 ((_ is Concat!24426) (regOne!31675 (reg!15910 r!7292)))) b!5594994))

(assert (= (and b!5593814 ((_ is Star!15581) (regOne!31675 (reg!15910 r!7292)))) b!5594995))

(assert (= (and b!5593814 ((_ is Union!15581) (regOne!31675 (reg!15910 r!7292)))) b!5594996))

(declare-fun e!3451530 () Bool)

(assert (=> b!5593814 (= tp!1546937 e!3451530)))

(declare-fun b!5594999 () Bool)

(declare-fun tp!1547222 () Bool)

(assert (=> b!5594999 (= e!3451530 tp!1547222)))

(declare-fun b!5594997 () Bool)

(assert (=> b!5594997 (= e!3451530 tp_is_empty!40415)))

(declare-fun b!5594998 () Bool)

(declare-fun tp!1547219 () Bool)

(declare-fun tp!1547220 () Bool)

(assert (=> b!5594998 (= e!3451530 (and tp!1547219 tp!1547220))))

(declare-fun b!5595000 () Bool)

(declare-fun tp!1547223 () Bool)

(declare-fun tp!1547221 () Bool)

(assert (=> b!5595000 (= e!3451530 (and tp!1547223 tp!1547221))))

(assert (= (and b!5593814 ((_ is ElementMatch!15581) (regTwo!31675 (reg!15910 r!7292)))) b!5594997))

(assert (= (and b!5593814 ((_ is Concat!24426) (regTwo!31675 (reg!15910 r!7292)))) b!5594998))

(assert (= (and b!5593814 ((_ is Star!15581) (regTwo!31675 (reg!15910 r!7292)))) b!5594999))

(assert (= (and b!5593814 ((_ is Union!15581) (regTwo!31675 (reg!15910 r!7292)))) b!5595000))

(declare-fun e!3451531 () Bool)

(assert (=> b!5593805 (= tp!1546928 e!3451531)))

(declare-fun b!5595003 () Bool)

(declare-fun tp!1547227 () Bool)

(assert (=> b!5595003 (= e!3451531 tp!1547227)))

(declare-fun b!5595001 () Bool)

(assert (=> b!5595001 (= e!3451531 tp_is_empty!40415)))

(declare-fun b!5595002 () Bool)

(declare-fun tp!1547224 () Bool)

(declare-fun tp!1547225 () Bool)

(assert (=> b!5595002 (= e!3451531 (and tp!1547224 tp!1547225))))

(declare-fun b!5595004 () Bool)

(declare-fun tp!1547228 () Bool)

(declare-fun tp!1547226 () Bool)

(assert (=> b!5595004 (= e!3451531 (and tp!1547228 tp!1547226))))

(assert (= (and b!5593805 ((_ is ElementMatch!15581) (reg!15910 (regOne!31675 r!7292)))) b!5595001))

(assert (= (and b!5593805 ((_ is Concat!24426) (reg!15910 (regOne!31675 r!7292)))) b!5595002))

(assert (= (and b!5593805 ((_ is Star!15581) (reg!15910 (regOne!31675 r!7292)))) b!5595003))

(assert (= (and b!5593805 ((_ is Union!15581) (reg!15910 (regOne!31675 r!7292)))) b!5595004))

(declare-fun e!3451532 () Bool)

(assert (=> b!5593806 (= tp!1546929 e!3451532)))

(declare-fun b!5595007 () Bool)

(declare-fun tp!1547232 () Bool)

(assert (=> b!5595007 (= e!3451532 tp!1547232)))

(declare-fun b!5595005 () Bool)

(assert (=> b!5595005 (= e!3451532 tp_is_empty!40415)))

(declare-fun b!5595006 () Bool)

(declare-fun tp!1547229 () Bool)

(declare-fun tp!1547230 () Bool)

(assert (=> b!5595006 (= e!3451532 (and tp!1547229 tp!1547230))))

(declare-fun b!5595008 () Bool)

(declare-fun tp!1547233 () Bool)

(declare-fun tp!1547231 () Bool)

(assert (=> b!5595008 (= e!3451532 (and tp!1547233 tp!1547231))))

(assert (= (and b!5593806 ((_ is ElementMatch!15581) (regOne!31675 (regOne!31675 r!7292)))) b!5595005))

(assert (= (and b!5593806 ((_ is Concat!24426) (regOne!31675 (regOne!31675 r!7292)))) b!5595006))

(assert (= (and b!5593806 ((_ is Star!15581) (regOne!31675 (regOne!31675 r!7292)))) b!5595007))

(assert (= (and b!5593806 ((_ is Union!15581) (regOne!31675 (regOne!31675 r!7292)))) b!5595008))

(declare-fun e!3451533 () Bool)

(assert (=> b!5593806 (= tp!1546927 e!3451533)))

(declare-fun b!5595011 () Bool)

(declare-fun tp!1547237 () Bool)

(assert (=> b!5595011 (= e!3451533 tp!1547237)))

(declare-fun b!5595009 () Bool)

(assert (=> b!5595009 (= e!3451533 tp_is_empty!40415)))

(declare-fun b!5595010 () Bool)

(declare-fun tp!1547234 () Bool)

(declare-fun tp!1547235 () Bool)

(assert (=> b!5595010 (= e!3451533 (and tp!1547234 tp!1547235))))

(declare-fun b!5595012 () Bool)

(declare-fun tp!1547238 () Bool)

(declare-fun tp!1547236 () Bool)

(assert (=> b!5595012 (= e!3451533 (and tp!1547238 tp!1547236))))

(assert (= (and b!5593806 ((_ is ElementMatch!15581) (regTwo!31675 (regOne!31675 r!7292)))) b!5595009))

(assert (= (and b!5593806 ((_ is Concat!24426) (regTwo!31675 (regOne!31675 r!7292)))) b!5595010))

(assert (= (and b!5593806 ((_ is Star!15581) (regTwo!31675 (regOne!31675 r!7292)))) b!5595011))

(assert (= (and b!5593806 ((_ is Union!15581) (regTwo!31675 (regOne!31675 r!7292)))) b!5595012))

(declare-fun e!3451534 () Bool)

(assert (=> b!5593785 (= tp!1546904 e!3451534)))

(declare-fun b!5595015 () Bool)

(declare-fun tp!1547242 () Bool)

(assert (=> b!5595015 (= e!3451534 tp!1547242)))

(declare-fun b!5595013 () Bool)

(assert (=> b!5595013 (= e!3451534 tp_is_empty!40415)))

(declare-fun b!5595014 () Bool)

(declare-fun tp!1547239 () Bool)

(declare-fun tp!1547240 () Bool)

(assert (=> b!5595014 (= e!3451534 (and tp!1547239 tp!1547240))))

(declare-fun b!5595016 () Bool)

(declare-fun tp!1547243 () Bool)

(declare-fun tp!1547241 () Bool)

(assert (=> b!5595016 (= e!3451534 (and tp!1547243 tp!1547241))))

(assert (= (and b!5593785 ((_ is ElementMatch!15581) (regOne!31674 (regOne!31674 r!7292)))) b!5595013))

(assert (= (and b!5593785 ((_ is Concat!24426) (regOne!31674 (regOne!31674 r!7292)))) b!5595014))

(assert (= (and b!5593785 ((_ is Star!15581) (regOne!31674 (regOne!31674 r!7292)))) b!5595015))

(assert (= (and b!5593785 ((_ is Union!15581) (regOne!31674 (regOne!31674 r!7292)))) b!5595016))

(declare-fun e!3451535 () Bool)

(assert (=> b!5593785 (= tp!1546905 e!3451535)))

(declare-fun b!5595019 () Bool)

(declare-fun tp!1547247 () Bool)

(assert (=> b!5595019 (= e!3451535 tp!1547247)))

(declare-fun b!5595017 () Bool)

(assert (=> b!5595017 (= e!3451535 tp_is_empty!40415)))

(declare-fun b!5595018 () Bool)

(declare-fun tp!1547244 () Bool)

(declare-fun tp!1547245 () Bool)

(assert (=> b!5595018 (= e!3451535 (and tp!1547244 tp!1547245))))

(declare-fun b!5595020 () Bool)

(declare-fun tp!1547248 () Bool)

(declare-fun tp!1547246 () Bool)

(assert (=> b!5595020 (= e!3451535 (and tp!1547248 tp!1547246))))

(assert (= (and b!5593785 ((_ is ElementMatch!15581) (regTwo!31674 (regOne!31674 r!7292)))) b!5595017))

(assert (= (and b!5593785 ((_ is Concat!24426) (regTwo!31674 (regOne!31674 r!7292)))) b!5595018))

(assert (= (and b!5593785 ((_ is Star!15581) (regTwo!31674 (regOne!31674 r!7292)))) b!5595019))

(assert (= (and b!5593785 ((_ is Union!15581) (regTwo!31674 (regOne!31674 r!7292)))) b!5595020))

(declare-fun e!3451536 () Bool)

(assert (=> b!5593786 (= tp!1546907 e!3451536)))

(declare-fun b!5595023 () Bool)

(declare-fun tp!1547252 () Bool)

(assert (=> b!5595023 (= e!3451536 tp!1547252)))

(declare-fun b!5595021 () Bool)

(assert (=> b!5595021 (= e!3451536 tp_is_empty!40415)))

(declare-fun b!5595022 () Bool)

(declare-fun tp!1547249 () Bool)

(declare-fun tp!1547250 () Bool)

(assert (=> b!5595022 (= e!3451536 (and tp!1547249 tp!1547250))))

(declare-fun b!5595024 () Bool)

(declare-fun tp!1547253 () Bool)

(declare-fun tp!1547251 () Bool)

(assert (=> b!5595024 (= e!3451536 (and tp!1547253 tp!1547251))))

(assert (= (and b!5593786 ((_ is ElementMatch!15581) (reg!15910 (regOne!31674 r!7292)))) b!5595021))

(assert (= (and b!5593786 ((_ is Concat!24426) (reg!15910 (regOne!31674 r!7292)))) b!5595022))

(assert (= (and b!5593786 ((_ is Star!15581) (reg!15910 (regOne!31674 r!7292)))) b!5595023))

(assert (= (and b!5593786 ((_ is Union!15581) (reg!15910 (regOne!31674 r!7292)))) b!5595024))

(declare-fun e!3451537 () Bool)

(assert (=> b!5593787 (= tp!1546908 e!3451537)))

(declare-fun b!5595027 () Bool)

(declare-fun tp!1547257 () Bool)

(assert (=> b!5595027 (= e!3451537 tp!1547257)))

(declare-fun b!5595025 () Bool)

(assert (=> b!5595025 (= e!3451537 tp_is_empty!40415)))

(declare-fun b!5595026 () Bool)

(declare-fun tp!1547254 () Bool)

(declare-fun tp!1547255 () Bool)

(assert (=> b!5595026 (= e!3451537 (and tp!1547254 tp!1547255))))

(declare-fun b!5595028 () Bool)

(declare-fun tp!1547258 () Bool)

(declare-fun tp!1547256 () Bool)

(assert (=> b!5595028 (= e!3451537 (and tp!1547258 tp!1547256))))

(assert (= (and b!5593787 ((_ is ElementMatch!15581) (regOne!31675 (regOne!31674 r!7292)))) b!5595025))

(assert (= (and b!5593787 ((_ is Concat!24426) (regOne!31675 (regOne!31674 r!7292)))) b!5595026))

(assert (= (and b!5593787 ((_ is Star!15581) (regOne!31675 (regOne!31674 r!7292)))) b!5595027))

(assert (= (and b!5593787 ((_ is Union!15581) (regOne!31675 (regOne!31674 r!7292)))) b!5595028))

(declare-fun e!3451538 () Bool)

(assert (=> b!5593787 (= tp!1546906 e!3451538)))

(declare-fun b!5595031 () Bool)

(declare-fun tp!1547262 () Bool)

(assert (=> b!5595031 (= e!3451538 tp!1547262)))

(declare-fun b!5595029 () Bool)

(assert (=> b!5595029 (= e!3451538 tp_is_empty!40415)))

(declare-fun b!5595030 () Bool)

(declare-fun tp!1547259 () Bool)

(declare-fun tp!1547260 () Bool)

(assert (=> b!5595030 (= e!3451538 (and tp!1547259 tp!1547260))))

(declare-fun b!5595032 () Bool)

(declare-fun tp!1547263 () Bool)

(declare-fun tp!1547261 () Bool)

(assert (=> b!5595032 (= e!3451538 (and tp!1547263 tp!1547261))))

(assert (= (and b!5593787 ((_ is ElementMatch!15581) (regTwo!31675 (regOne!31674 r!7292)))) b!5595029))

(assert (= (and b!5593787 ((_ is Concat!24426) (regTwo!31675 (regOne!31674 r!7292)))) b!5595030))

(assert (= (and b!5593787 ((_ is Star!15581) (regTwo!31675 (regOne!31674 r!7292)))) b!5595031))

(assert (= (and b!5593787 ((_ is Union!15581) (regTwo!31675 (regOne!31674 r!7292)))) b!5595032))

(declare-fun b!5595033 () Bool)

(declare-fun e!3451539 () Bool)

(declare-fun tp!1547264 () Bool)

(assert (=> b!5595033 (= e!3451539 (and tp_is_empty!40415 tp!1547264))))

(assert (=> b!5593801 (= tp!1546922 e!3451539)))

(assert (= (and b!5593801 ((_ is Cons!62920) (t!376324 (t!376324 s!2326)))) b!5595033))

(declare-fun e!3451540 () Bool)

(assert (=> b!5593808 (= tp!1546930 e!3451540)))

(declare-fun b!5595036 () Bool)

(declare-fun tp!1547268 () Bool)

(assert (=> b!5595036 (= e!3451540 tp!1547268)))

(declare-fun b!5595034 () Bool)

(assert (=> b!5595034 (= e!3451540 tp_is_empty!40415)))

(declare-fun b!5595035 () Bool)

(declare-fun tp!1547265 () Bool)

(declare-fun tp!1547266 () Bool)

(assert (=> b!5595035 (= e!3451540 (and tp!1547265 tp!1547266))))

(declare-fun b!5595037 () Bool)

(declare-fun tp!1547269 () Bool)

(declare-fun tp!1547267 () Bool)

(assert (=> b!5595037 (= e!3451540 (and tp!1547269 tp!1547267))))

(assert (= (and b!5593808 ((_ is ElementMatch!15581) (regOne!31674 (regTwo!31675 r!7292)))) b!5595034))

(assert (= (and b!5593808 ((_ is Concat!24426) (regOne!31674 (regTwo!31675 r!7292)))) b!5595035))

(assert (= (and b!5593808 ((_ is Star!15581) (regOne!31674 (regTwo!31675 r!7292)))) b!5595036))

(assert (= (and b!5593808 ((_ is Union!15581) (regOne!31674 (regTwo!31675 r!7292)))) b!5595037))

(declare-fun e!3451541 () Bool)

(assert (=> b!5593808 (= tp!1546931 e!3451541)))

(declare-fun b!5595040 () Bool)

(declare-fun tp!1547273 () Bool)

(assert (=> b!5595040 (= e!3451541 tp!1547273)))

(declare-fun b!5595038 () Bool)

(assert (=> b!5595038 (= e!3451541 tp_is_empty!40415)))

(declare-fun b!5595039 () Bool)

(declare-fun tp!1547270 () Bool)

(declare-fun tp!1547271 () Bool)

(assert (=> b!5595039 (= e!3451541 (and tp!1547270 tp!1547271))))

(declare-fun b!5595041 () Bool)

(declare-fun tp!1547274 () Bool)

(declare-fun tp!1547272 () Bool)

(assert (=> b!5595041 (= e!3451541 (and tp!1547274 tp!1547272))))

(assert (= (and b!5593808 ((_ is ElementMatch!15581) (regTwo!31674 (regTwo!31675 r!7292)))) b!5595038))

(assert (= (and b!5593808 ((_ is Concat!24426) (regTwo!31674 (regTwo!31675 r!7292)))) b!5595039))

(assert (= (and b!5593808 ((_ is Star!15581) (regTwo!31674 (regTwo!31675 r!7292)))) b!5595040))

(assert (= (and b!5593808 ((_ is Union!15581) (regTwo!31674 (regTwo!31675 r!7292)))) b!5595041))

(declare-fun e!3451542 () Bool)

(assert (=> b!5593809 (= tp!1546933 e!3451542)))

(declare-fun b!5595044 () Bool)

(declare-fun tp!1547278 () Bool)

(assert (=> b!5595044 (= e!3451542 tp!1547278)))

(declare-fun b!5595042 () Bool)

(assert (=> b!5595042 (= e!3451542 tp_is_empty!40415)))

(declare-fun b!5595043 () Bool)

(declare-fun tp!1547275 () Bool)

(declare-fun tp!1547276 () Bool)

(assert (=> b!5595043 (= e!3451542 (and tp!1547275 tp!1547276))))

(declare-fun b!5595045 () Bool)

(declare-fun tp!1547279 () Bool)

(declare-fun tp!1547277 () Bool)

(assert (=> b!5595045 (= e!3451542 (and tp!1547279 tp!1547277))))

(assert (= (and b!5593809 ((_ is ElementMatch!15581) (reg!15910 (regTwo!31675 r!7292)))) b!5595042))

(assert (= (and b!5593809 ((_ is Concat!24426) (reg!15910 (regTwo!31675 r!7292)))) b!5595043))

(assert (= (and b!5593809 ((_ is Star!15581) (reg!15910 (regTwo!31675 r!7292)))) b!5595044))

(assert (= (and b!5593809 ((_ is Union!15581) (reg!15910 (regTwo!31675 r!7292)))) b!5595045))

(declare-fun b_lambda!212011 () Bool)

(assert (= b_lambda!212003 (or b!5593035 b_lambda!212011)))

(assert (=> d!1768396 d!1768006))

(declare-fun b_lambda!212013 () Bool)

(assert (= b_lambda!211997 (or d!1767966 b_lambda!212013)))

(declare-fun bs!1293695 () Bool)

(declare-fun d!1768542 () Bool)

(assert (= bs!1293695 (and d!1768542 d!1767966)))

(assert (=> bs!1293695 (= (dynLambda!24611 lambda!300288 (h!69366 (exprs!5465 (h!69367 zl!343)))) (validRegex!7317 (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(declare-fun m!6574438 () Bool)

(assert (=> bs!1293695 m!6574438))

(assert (=> b!5594532 d!1768542))

(declare-fun b_lambda!212015 () Bool)

(assert (= b_lambda!211999 (or d!1768000 b_lambda!212015)))

(declare-fun bs!1293696 () Bool)

(declare-fun d!1768544 () Bool)

(assert (= bs!1293696 (and d!1768544 d!1768000)))

(assert (=> bs!1293696 (= (dynLambda!24611 lambda!300298 (h!69366 (exprs!5465 setElem!37285))) (validRegex!7317 (h!69366 (exprs!5465 setElem!37285))))))

(declare-fun m!6574440 () Bool)

(assert (=> bs!1293696 m!6574440))

(assert (=> b!5594536 d!1768544))

(declare-fun b_lambda!212017 () Bool)

(assert (= b_lambda!212001 (or b!5593035 b_lambda!212017)))

(assert (=> d!1768390 d!1768002))

(declare-fun b_lambda!212019 () Bool)

(assert (= b_lambda!212009 (or d!1767990 b_lambda!212019)))

(declare-fun bs!1293697 () Bool)

(declare-fun d!1768546 () Bool)

(assert (= bs!1293697 (and d!1768546 d!1767990)))

(assert (=> bs!1293697 (= (dynLambda!24611 lambda!300297 (h!69366 (exprs!5465 (h!69367 zl!343)))) (validRegex!7317 (h!69366 (exprs!5465 (h!69367 zl!343)))))))

(assert (=> bs!1293697 m!6574438))

(assert (=> b!5594821 d!1768546))

(declare-fun b_lambda!212021 () Bool)

(assert (= b_lambda!211995 (or d!1767858 b_lambda!212021)))

(declare-fun bs!1293698 () Bool)

(declare-fun d!1768548 () Bool)

(assert (= bs!1293698 (and d!1768548 d!1767858)))

(assert (=> bs!1293698 (= (dynLambda!24611 lambda!300257 (h!69366 lt!2255901)) (validRegex!7317 (h!69366 lt!2255901)))))

(declare-fun m!6574442 () Bool)

(assert (=> bs!1293698 m!6574442))

(assert (=> b!5594484 d!1768548))

(declare-fun b_lambda!212023 () Bool)

(assert (= b_lambda!212007 (or b!5593035 b_lambda!212023)))

(assert (=> d!1768422 d!1768004))

(declare-fun b_lambda!212025 () Bool)

(assert (= b_lambda!212005 (or d!1767852 b_lambda!212025)))

(declare-fun bs!1293699 () Bool)

(declare-fun d!1768550 () Bool)

(assert (= bs!1293699 (and d!1768550 d!1767852)))

(assert (=> bs!1293699 (= (dynLambda!24611 lambda!300254 (h!69366 (unfocusZipperList!1009 zl!343))) (validRegex!7317 (h!69366 (unfocusZipperList!1009 zl!343))))))

(declare-fun m!6574444 () Bool)

(assert (=> bs!1293699 m!6574444))

(assert (=> b!5594648 d!1768550))

(check-sat (not b_lambda!212015) (not b!5595006) (not setNonEmpty!37301) (not b!5594839) (not bm!419342) (not b!5594617) (not b!5594955) (not b!5595016) (not b_lambda!211961) (not d!1768426) (not bm!419381) (not b!5594909) tp_is_empty!40415 (not b!5594943) (not b!5595045) (not b!5594684) (not setNonEmpty!37300) (not b!5594679) (not b!5594779) (not bm!419370) (not b!5594575) (not bm!419360) (not b!5595031) (not d!1768534) (not b!5594853) (not b!5594766) (not b!5594592) (not b!5594463) (not d!1768510) (not b!5594475) (not b!5594744) (not b!5594957) (not d!1768512) (not b!5594651) (not b_lambda!212011) (not d!1768320) (not b!5594991) (not d!1768518) (not b!5594454) (not b!5594674) (not b!5594863) (not b!5594461) (not b!5594984) (not d!1768506) (not b!5594544) (not b!5594469) (not setNonEmpty!37302) (not b!5594650) (not b!5594537) (not b!5595039) (not b!5594746) (not b!5594836) (not b!5594951) (not b!5594739) (not bm!419417) (not b!5594973) (not b!5594927) (not d!1768340) (not b!5594995) (not bm!419368) (not b!5594975) (not b!5595032) (not bs!1293698) (not b!5594745) (not b!5594456) (not b!5594677) (not b!5594959) (not b!5594678) (not bm!419372) (not b!5595023) (not b!5594586) (not d!1768484) (not bm!419394) (not d!1768380) (not b!5594961) (not d!1768424) (not d!1768450) (not b!5594649) (not d!1768366) (not b!5594952) (not bm!419429) (not b!5594595) (not b!5594987) (not bm!419416) (not b!5594743) (not b!5595041) (not bm!419408) (not b!5595044) (not bm!419402) (not b!5594676) (not b!5594689) (not b!5594838) (not bm!419362) (not b!5594775) (not b!5595015) (not b!5595035) (not b!5594982) (not d!1768304) (not b!5594543) (not bm!419350) (not bm!419330) (not bm!419386) (not b!5594443) (not b!5594447) (not bm!419349) (not b!5594718) (not b_lambda!212013) (not b!5595004) (not b_lambda!211957) (not d!1768442) (not b!5594983) (not b!5594992) (not b!5594928) (not b!5594681) (not d!1768520) (not d!1768494) (not d!1768476) (not b!5594933) (not b!5594931) (not b!5594996) (not d!1768456) (not b!5594944) (not bm!419354) (not b!5594499) (not d!1768492) (not b!5595000) (not b!5595027) (not d!1768284) (not b_lambda!212021) (not b!5594834) (not bm!419413) (not b!5594538) (not b!5594953) (not d!1768460) (not b!5594935) (not b!5594485) (not bm!419424) (not b!5595030) (not d!1768462) (not b!5594564) (not b!5594657) (not d!1768454) (not bm!419409) (not b!5594942) (not d!1768516) (not b!5594691) (not b!5595022) (not bm!419404) (not b!5594790) (not b!5594877) (not b!5594603) (not d!1768410) (not b!5594760) (not bm!419418) (not bm!419339) (not d!1768396) (not b!5594850) (not b!5594553) (not d!1768452) (not b!5594457) (not b!5594700) (not b!5595040) (not bm!419433) (not b!5594822) (not b!5594960) (not bm!419366) (not b_lambda!212023) (not b!5595008) (not b!5595043) (not b!5594937) (not b!5594711) (not bm!419382) (not b!5594442) (not b!5595010) (not d!1768362) (not b!5594533) (not d!1768540) (not bm!419400) (not b!5594803) (not b_lambda!212019) (not b!5594974) (not b!5594879) (not bm!419336) (not b!5595037) (not bm!419356) (not bm!419420) (not bm!419428) (not bm!419385) (not b!5594639) (not b!5594804) (not b!5594782) (not b!5594479) (not b!5594920) (not b_lambda!212017) (not bm!419450) (not b!5594833) (not d!1768530) (not b!5594663) (not b!5594682) (not b!5594781) (not b!5594810) (not bm!419431) (not d!1768522) (not d!1768370) (not b_lambda!211959) (not bm!419411) (not b!5594842) (not b!5594736) (not b!5594828) (not bm!419439) (not bm!419340) (not bm!419437) (not b!5594948) (not bs!1293699) (not b!5594534) (not d!1768406) (not d!1768422) (not b!5594994) (not b!5594680) (not b!5595003) (not b!5595036) (not d!1768504) (not b!5594717) (not b!5594977) (not bm!419406) (not b!5595026) (not b!5594929) (not d!1768372) (not b!5594971) (not b!5594980) (not b!5594913) (not b!5594841) (not b!5594732) (not b!5594449) (not b!5594936) (not d!1768292) (not bm!419393) (not b!5594939) (not d!1768404) (not bm!419358) (not b!5594965) (not d!1768458) (not b!5594840) (not b!5594988) (not b!5594486) (not bm!419398) (not d!1768378) (not b!5595007) (not b!5594979) (not b!5594602) (not d!1768382) (not d!1768390) (not b!5594852) (not bm!419389) (not bm!419352) (not d!1768498) (not b!5594742) (not b!5594932) (not bm!419334) (not b!5594672) (not b!5594869) (not b!5594998) (not b!5594986) (not b!5594784) (not bm!419378) (not bm!419374) (not bm!419331) (not bm!419391) (not bm!419348) (not b!5594964) (not b!5594631) (not d!1768338) (not b!5594967) (not b!5594809) (not b!5594837) (not d!1768330) (not b!5594462) (not bm!419422) (not b!5594940) (not bm!419395) (not bm!419383) (not bs!1293696) (not setNonEmpty!37303) (not b!5594446) (not b!5594776) (not b!5594956) (not b!5594978) (not b!5594919) (not b!5595024) (not d!1768310) (not d!1768432) (not b!5595020) (not b!5594963) (not d!1768300) (not b!5594692) (not b!5594970) (not bm!419380) (not b!5594438) (not b!5594731) (not b!5595028) (not b!5594947) (not d!1768420) (not d!1768306) (not bm!419449) (not d!1768496) (not d!1768364) (not bm!419430) (not d!1768408) (not b!5594872) (not b!5595012) (not b!5594949) (not b!5594600) (not d!1768308) (not bs!1293697) (not b!5594969) (not b!5594941) (not bm!419432) (not bm!419351) (not bm!419396) (not d!1768528) (not bm!419426) (not d!1768472) (not b!5594437) (not bs!1293695) (not b!5594880) (not bm!419435) (not b!5594780) (not b!5594812) (not b!5595011) (not b!5594870) (not d!1768324) (not b_lambda!212025) (not d!1768286) (not bm!419387) (not b!5594999) (not b!5595014) (not b!5594593) (not b!5594460) (not b!5594539) (not b!5594857) (not b!5594914) (not b!5594735) (not bm!419377) (not bm!419332) (not b!5594835) (not bm!419376) (not b!5594845) (not b!5594946) (not b!5594616) (not b!5594856) (not b!5595002) (not b!5594535) (not d!1768526) (not b!5594531) (not b!5594968) (not bm!419343) (not d!1768336) (not b!5595033) (not b!5594843) (not d!1768294) (not d!1768314) (not b!5594611) (not b!5594990) (not b!5595018) (not d!1768514) (not bm!419425) (not d!1768280) (not d!1768532) (not b!5595019) (not bm!419364))
(check-sat)
