; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!656960 () Bool)

(assert start!656960)

(declare-fun b!6787882 () Bool)

(assert (=> b!6787882 true))

(assert (=> b!6787882 true))

(declare-fun lambda!382295 () Int)

(declare-fun lambda!382294 () Int)

(assert (=> b!6787882 (not (= lambda!382295 lambda!382294))))

(assert (=> b!6787882 true))

(assert (=> b!6787882 true))

(declare-fun lambda!382296 () Int)

(assert (=> b!6787882 (not (= lambda!382296 lambda!382294))))

(assert (=> b!6787882 (not (= lambda!382296 lambda!382295))))

(assert (=> b!6787882 true))

(assert (=> b!6787882 true))

(declare-fun b!6787899 () Bool)

(assert (=> b!6787899 true))

(declare-fun res!2774373 () Bool)

(declare-fun e!4097200 () Bool)

(assert (=> start!656960 (=> (not res!2774373) (not e!4097200))))

(declare-datatypes ((C!33488 0))(
  ( (C!33489 (val!26446 Int)) )
))
(declare-datatypes ((Regex!16609 0))(
  ( (ElementMatch!16609 (c!1261391 C!33488)) (Concat!25454 (regOne!33730 Regex!16609) (regTwo!33730 Regex!16609)) (EmptyExpr!16609) (Star!16609 (reg!16938 Regex!16609)) (EmptyLang!16609) (Union!16609 (regOne!33731 Regex!16609) (regTwo!33731 Regex!16609)) )
))
(declare-fun r!7292 () Regex!16609)

(declare-fun validRegex!8345 (Regex!16609) Bool)

(assert (=> start!656960 (= res!2774373 (validRegex!8345 r!7292))))

(assert (=> start!656960 e!4097200))

(declare-fun e!4097191 () Bool)

(assert (=> start!656960 e!4097191))

(declare-fun condSetEmpty!46455 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!66126 0))(
  ( (Nil!66002) (Cons!66002 (h!72450 Regex!16609) (t!379847 List!66126)) )
))
(declare-datatypes ((Context!11986 0))(
  ( (Context!11987 (exprs!6493 List!66126)) )
))
(declare-fun z!1189 () (InoxSet Context!11986))

(assert (=> start!656960 (= condSetEmpty!46455 (= z!1189 ((as const (Array Context!11986 Bool)) false)))))

(declare-fun setRes!46455 () Bool)

(assert (=> start!656960 setRes!46455))

(declare-fun e!4097204 () Bool)

(assert (=> start!656960 e!4097204))

(declare-fun e!4097194 () Bool)

(assert (=> start!656960 e!4097194))

(declare-fun b!6787879 () Bool)

(declare-fun res!2774367 () Bool)

(declare-fun e!4097202 () Bool)

(assert (=> b!6787879 (=> res!2774367 e!4097202)))

(declare-fun lt!2445905 () (InoxSet Context!11986))

(declare-datatypes ((List!66127 0))(
  ( (Nil!66003) (Cons!66003 (h!72451 C!33488) (t!379848 List!66127)) )
))
(declare-fun s!2326 () List!66127)

(declare-fun matchZipper!2595 ((InoxSet Context!11986) List!66127) Bool)

(declare-fun derivationStepZipper!2553 ((InoxSet Context!11986) C!33488) (InoxSet Context!11986))

(assert (=> b!6787879 (= res!2774367 (not (= (matchZipper!2595 lt!2445905 s!2326) (matchZipper!2595 (derivationStepZipper!2553 lt!2445905 (h!72451 s!2326)) (t!379848 s!2326)))))))

(declare-fun b!6787880 () Bool)

(declare-fun res!2774372 () Bool)

(declare-fun e!4097195 () Bool)

(assert (=> b!6787880 (=> res!2774372 e!4097195)))

(declare-datatypes ((List!66128 0))(
  ( (Nil!66004) (Cons!66004 (h!72452 Context!11986) (t!379849 List!66128)) )
))
(declare-fun zl!343 () List!66128)

(get-info :version)

(assert (=> b!6787880 (= res!2774372 (not ((_ is Cons!66002) (exprs!6493 (h!72452 zl!343)))))))

(declare-fun b!6787881 () Bool)

(declare-fun res!2774384 () Bool)

(assert (=> b!6787881 (=> res!2774384 e!4097195)))

(declare-fun isEmpty!38369 (List!66128) Bool)

(assert (=> b!6787881 (= res!2774384 (not (isEmpty!38369 (t!379849 zl!343))))))

(declare-fun e!4097196 () Bool)

(assert (=> b!6787882 (= e!4097195 e!4097196)))

(declare-fun res!2774366 () Bool)

(assert (=> b!6787882 (=> res!2774366 e!4097196)))

(declare-fun lt!2445901 () Bool)

(declare-fun e!4097198 () Bool)

(assert (=> b!6787882 (= res!2774366 (not (= lt!2445901 e!4097198)))))

(declare-fun res!2774376 () Bool)

(assert (=> b!6787882 (=> res!2774376 e!4097198)))

(declare-fun isEmpty!38370 (List!66127) Bool)

(assert (=> b!6787882 (= res!2774376 (isEmpty!38370 s!2326))))

(declare-fun Exists!3677 (Int) Bool)

(assert (=> b!6787882 (= (Exists!3677 lambda!382294) (Exists!3677 lambda!382296))))

(declare-datatypes ((Unit!159909 0))(
  ( (Unit!159910) )
))
(declare-fun lt!2445909 () Unit!159909)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2204 (Regex!16609 Regex!16609 List!66127) Unit!159909)

(assert (=> b!6787882 (= lt!2445909 (lemmaExistCutMatchRandMatchRSpecEquivalent!2204 (reg!16938 r!7292) r!7292 s!2326))))

(assert (=> b!6787882 (= (Exists!3677 lambda!382294) (Exists!3677 lambda!382295))))

(declare-fun lt!2445907 () Unit!159909)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!768 (Regex!16609 List!66127) Unit!159909)

(assert (=> b!6787882 (= lt!2445907 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!768 (reg!16938 r!7292) s!2326))))

(declare-fun lt!2445900 () Bool)

(assert (=> b!6787882 (= lt!2445900 (Exists!3677 lambda!382294))))

(declare-datatypes ((tuple2!67168 0))(
  ( (tuple2!67169 (_1!36887 List!66127) (_2!36887 List!66127)) )
))
(declare-datatypes ((Option!16496 0))(
  ( (None!16495) (Some!16495 (v!52701 tuple2!67168)) )
))
(declare-fun isDefined!13199 (Option!16496) Bool)

(declare-fun findConcatSeparation!2910 (Regex!16609 Regex!16609 List!66127 List!66127 List!66127) Option!16496)

(assert (=> b!6787882 (= lt!2445900 (isDefined!13199 (findConcatSeparation!2910 (reg!16938 r!7292) r!7292 Nil!66003 s!2326 s!2326)))))

(declare-fun lt!2445910 () Unit!159909)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2674 (Regex!16609 Regex!16609 List!66127) Unit!159909)

(assert (=> b!6787882 (= lt!2445910 (lemmaFindConcatSeparationEquivalentToExists!2674 (reg!16938 r!7292) r!7292 s!2326))))

(declare-fun b!6787883 () Bool)

(declare-fun res!2774379 () Bool)

(declare-fun e!4097206 () Bool)

(assert (=> b!6787883 (=> res!2774379 e!4097206)))

(assert (=> b!6787883 (= res!2774379 (not (matchZipper!2595 z!1189 s!2326)))))

(declare-fun b!6787884 () Bool)

(declare-fun e!4097205 () Bool)

(assert (=> b!6787884 (= e!4097205 e!4097202)))

(declare-fun res!2774371 () Bool)

(assert (=> b!6787884 (=> res!2774371 e!4097202)))

(declare-fun lt!2445912 () Context!11986)

(declare-fun lt!2445904 () (InoxSet Context!11986))

(declare-fun derivationStepZipperDown!1837 (Regex!16609 Context!11986 C!33488) (InoxSet Context!11986))

(assert (=> b!6787884 (= res!2774371 (not (= lt!2445904 (derivationStepZipperDown!1837 (reg!16938 r!7292) lt!2445912 (h!72451 s!2326)))))))

(declare-fun lt!2445903 () List!66126)

(assert (=> b!6787884 (= lt!2445912 (Context!11987 lt!2445903))))

(declare-fun lt!2445916 () Context!11986)

(declare-fun lambda!382297 () Int)

(declare-fun flatMap!2090 ((InoxSet Context!11986) Int) (InoxSet Context!11986))

(declare-fun derivationStepZipperUp!1763 (Context!11986 C!33488) (InoxSet Context!11986))

(assert (=> b!6787884 (= (flatMap!2090 lt!2445905 lambda!382297) (derivationStepZipperUp!1763 lt!2445916 (h!72451 s!2326)))))

(declare-fun lt!2445902 () Unit!159909)

(declare-fun lemmaFlatMapOnSingletonSet!1616 ((InoxSet Context!11986) Context!11986 Int) Unit!159909)

(assert (=> b!6787884 (= lt!2445902 (lemmaFlatMapOnSingletonSet!1616 lt!2445905 lt!2445916 lambda!382297))))

(declare-fun lt!2445915 () (InoxSet Context!11986))

(assert (=> b!6787884 (= lt!2445915 (derivationStepZipperUp!1763 lt!2445916 (h!72451 s!2326)))))

(assert (=> b!6787884 (= lt!2445905 (store ((as const (Array Context!11986 Bool)) false) lt!2445916 true))))

(assert (=> b!6787884 (= lt!2445916 (Context!11987 (Cons!66002 (reg!16938 r!7292) lt!2445903)))))

(assert (=> b!6787884 (= lt!2445903 (Cons!66002 r!7292 Nil!66002))))

(declare-fun b!6787885 () Bool)

(declare-fun e!4097203 () Bool)

(assert (=> b!6787885 (= e!4097203 e!4097206)))

(declare-fun res!2774365 () Bool)

(assert (=> b!6787885 (=> res!2774365 e!4097206)))

(declare-fun lt!2445918 () Bool)

(assert (=> b!6787885 (= res!2774365 lt!2445918)))

(declare-fun lt!2445914 () Regex!16609)

(declare-fun matchRSpec!3710 (Regex!16609 List!66127) Bool)

(assert (=> b!6787885 (= lt!2445918 (matchRSpec!3710 lt!2445914 s!2326))))

(declare-fun matchR!8792 (Regex!16609 List!66127) Bool)

(assert (=> b!6787885 (= lt!2445918 (matchR!8792 lt!2445914 s!2326))))

(declare-fun lt!2445920 () Unit!159909)

(declare-fun mainMatchTheorem!3710 (Regex!16609 List!66127) Unit!159909)

(assert (=> b!6787885 (= lt!2445920 (mainMatchTheorem!3710 lt!2445914 s!2326))))

(declare-fun b!6787886 () Bool)

(declare-fun e!4097197 () Bool)

(declare-fun tp!1859339 () Bool)

(assert (=> b!6787886 (= e!4097197 tp!1859339)))

(declare-fun b!6787887 () Bool)

(assert (=> b!6787887 (= e!4097198 lt!2445900)))

(declare-fun tp!1859336 () Bool)

(declare-fun b!6787888 () Bool)

(declare-fun inv!84769 (Context!11986) Bool)

(assert (=> b!6787888 (= e!4097204 (and (inv!84769 (h!72452 zl!343)) e!4097197 tp!1859336))))

(declare-fun b!6787889 () Bool)

(declare-fun e!4097193 () Bool)

(declare-fun tp!1859332 () Bool)

(assert (=> b!6787889 (= e!4097193 tp!1859332)))

(declare-fun b!6787890 () Bool)

(declare-fun res!2774369 () Bool)

(assert (=> b!6787890 (=> (not res!2774369) (not e!4097200))))

(declare-fun toList!10393 ((InoxSet Context!11986)) List!66128)

(assert (=> b!6787890 (= res!2774369 (= (toList!10393 z!1189) zl!343))))

(declare-fun setElem!46455 () Context!11986)

(declare-fun tp!1859340 () Bool)

(declare-fun setNonEmpty!46455 () Bool)

(assert (=> setNonEmpty!46455 (= setRes!46455 (and tp!1859340 (inv!84769 setElem!46455) e!4097193))))

(declare-fun setRest!46455 () (InoxSet Context!11986))

(assert (=> setNonEmpty!46455 (= z!1189 ((_ map or) (store ((as const (Array Context!11986 Bool)) false) setElem!46455 true) setRest!46455))))

(declare-fun b!6787891 () Bool)

(declare-fun tp_is_empty!42471 () Bool)

(assert (=> b!6787891 (= e!4097191 tp_is_empty!42471)))

(declare-fun b!6787892 () Bool)

(declare-fun res!2774377 () Bool)

(assert (=> b!6787892 (=> res!2774377 e!4097202)))

(declare-fun lt!2445897 () Regex!16609)

(assert (=> b!6787892 (= res!2774377 (or (not (= lt!2445897 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6787893 () Bool)

(declare-fun e!4097199 () Bool)

(assert (=> b!6787893 (= e!4097202 e!4097199)))

(declare-fun res!2774380 () Bool)

(assert (=> b!6787893 (=> res!2774380 e!4097199)))

(declare-fun unfocusZipper!2351 (List!66128) Regex!16609)

(assert (=> b!6787893 (= res!2774380 (not (= (unfocusZipper!2351 (Cons!66004 lt!2445916 Nil!66004)) lt!2445914)))))

(assert (=> b!6787893 (= lt!2445914 (Concat!25454 (reg!16938 r!7292) r!7292))))

(declare-fun b!6787894 () Bool)

(declare-fun res!2774362 () Bool)

(assert (=> b!6787894 (=> res!2774362 e!4097195)))

(assert (=> b!6787894 (= res!2774362 (or ((_ is EmptyExpr!16609) r!7292) ((_ is EmptyLang!16609) r!7292) ((_ is ElementMatch!16609) r!7292) ((_ is Union!16609) r!7292) ((_ is Concat!25454) r!7292)))))

(declare-fun b!6787895 () Bool)

(declare-fun tp!1859334 () Bool)

(declare-fun tp!1859333 () Bool)

(assert (=> b!6787895 (= e!4097191 (and tp!1859334 tp!1859333))))

(declare-fun b!6787896 () Bool)

(declare-fun tp!1859338 () Bool)

(declare-fun tp!1859337 () Bool)

(assert (=> b!6787896 (= e!4097191 (and tp!1859338 tp!1859337))))

(declare-fun b!6787897 () Bool)

(declare-fun res!2774368 () Bool)

(assert (=> b!6787897 (=> res!2774368 e!4097195)))

(declare-fun generalisedUnion!2453 (List!66126) Regex!16609)

(declare-fun unfocusZipperList!2030 (List!66128) List!66126)

(assert (=> b!6787897 (= res!2774368 (not (= r!7292 (generalisedUnion!2453 (unfocusZipperList!2030 zl!343)))))))

(declare-fun b!6787898 () Bool)

(declare-fun res!2774382 () Bool)

(assert (=> b!6787898 (=> res!2774382 e!4097203)))

(declare-fun lt!2445922 () Context!11986)

(assert (=> b!6787898 (= res!2774382 (not (= (unfocusZipper!2351 (Cons!66004 lt!2445922 Nil!66004)) (reg!16938 r!7292))))))

(declare-fun e!4097192 () Bool)

(assert (=> b!6787899 (= e!4097192 e!4097205)))

(declare-fun res!2774363 () Bool)

(assert (=> b!6787899 (=> res!2774363 e!4097205)))

(declare-fun lt!2445906 () (InoxSet Context!11986))

(assert (=> b!6787899 (= res!2774363 (not (= lt!2445904 lt!2445906)))))

(assert (=> b!6787899 (= (flatMap!2090 z!1189 lambda!382297) (derivationStepZipperUp!1763 (h!72452 zl!343) (h!72451 s!2326)))))

(declare-fun lt!2445919 () Unit!159909)

(assert (=> b!6787899 (= lt!2445919 (lemmaFlatMapOnSingletonSet!1616 z!1189 (h!72452 zl!343) lambda!382297))))

(declare-fun b!6787900 () Bool)

(assert (=> b!6787900 (= e!4097206 (inv!84769 lt!2445912))))

(declare-fun b!6787901 () Bool)

(assert (=> b!6787901 (= e!4097199 e!4097203)))

(declare-fun res!2774378 () Bool)

(assert (=> b!6787901 (=> res!2774378 e!4097203)))

(declare-fun lt!2445908 () (InoxSet Context!11986))

(assert (=> b!6787901 (= res!2774378 (not (= lt!2445904 (derivationStepZipper!2553 lt!2445908 (h!72451 s!2326)))))))

(assert (=> b!6787901 (= (flatMap!2090 lt!2445908 lambda!382297) (derivationStepZipperUp!1763 lt!2445912 (h!72451 s!2326)))))

(declare-fun lt!2445911 () Unit!159909)

(assert (=> b!6787901 (= lt!2445911 (lemmaFlatMapOnSingletonSet!1616 lt!2445908 lt!2445912 lambda!382297))))

(declare-fun lt!2445913 () (InoxSet Context!11986))

(assert (=> b!6787901 (= (flatMap!2090 lt!2445913 lambda!382297) (derivationStepZipperUp!1763 lt!2445922 (h!72451 s!2326)))))

(declare-fun lt!2445898 () Unit!159909)

(assert (=> b!6787901 (= lt!2445898 (lemmaFlatMapOnSingletonSet!1616 lt!2445913 lt!2445922 lambda!382297))))

(declare-fun lt!2445896 () (InoxSet Context!11986))

(assert (=> b!6787901 (= lt!2445896 (derivationStepZipperUp!1763 lt!2445912 (h!72451 s!2326)))))

(declare-fun lt!2445921 () (InoxSet Context!11986))

(assert (=> b!6787901 (= lt!2445921 (derivationStepZipperUp!1763 lt!2445922 (h!72451 s!2326)))))

(assert (=> b!6787901 (= lt!2445908 (store ((as const (Array Context!11986 Bool)) false) lt!2445912 true))))

(assert (=> b!6787901 (= lt!2445913 (store ((as const (Array Context!11986 Bool)) false) lt!2445922 true))))

(assert (=> b!6787901 (= lt!2445922 (Context!11987 (Cons!66002 (reg!16938 r!7292) Nil!66002)))))

(declare-fun b!6787902 () Bool)

(assert (=> b!6787902 (= e!4097196 e!4097192)))

(declare-fun res!2774374 () Bool)

(assert (=> b!6787902 (=> res!2774374 e!4097192)))

(declare-fun lt!2445917 () (InoxSet Context!11986))

(assert (=> b!6787902 (= res!2774374 (not (= lt!2445917 lt!2445906)))))

(assert (=> b!6787902 (= lt!2445906 (derivationStepZipperDown!1837 r!7292 (Context!11987 Nil!66002) (h!72451 s!2326)))))

(assert (=> b!6787902 (= lt!2445917 (derivationStepZipperUp!1763 (Context!11987 (Cons!66002 r!7292 Nil!66002)) (h!72451 s!2326)))))

(assert (=> b!6787902 (= lt!2445904 (derivationStepZipper!2553 z!1189 (h!72451 s!2326)))))

(declare-fun b!6787903 () Bool)

(declare-fun e!4097201 () Bool)

(assert (=> b!6787903 (= e!4097201 (not e!4097195))))

(declare-fun res!2774375 () Bool)

(assert (=> b!6787903 (=> res!2774375 e!4097195)))

(assert (=> b!6787903 (= res!2774375 (not ((_ is Cons!66004) zl!343)))))

(assert (=> b!6787903 (= lt!2445901 (matchRSpec!3710 r!7292 s!2326))))

(assert (=> b!6787903 (= lt!2445901 (matchR!8792 r!7292 s!2326))))

(declare-fun lt!2445899 () Unit!159909)

(assert (=> b!6787903 (= lt!2445899 (mainMatchTheorem!3710 r!7292 s!2326))))

(declare-fun b!6787904 () Bool)

(assert (=> b!6787904 (= e!4097200 e!4097201)))

(declare-fun res!2774381 () Bool)

(assert (=> b!6787904 (=> (not res!2774381) (not e!4097201))))

(assert (=> b!6787904 (= res!2774381 (= r!7292 lt!2445897))))

(assert (=> b!6787904 (= lt!2445897 (unfocusZipper!2351 zl!343))))

(declare-fun b!6787905 () Bool)

(declare-fun res!2774370 () Bool)

(assert (=> b!6787905 (=> res!2774370 e!4097195)))

(declare-fun generalisedConcat!2206 (List!66126) Regex!16609)

(assert (=> b!6787905 (= res!2774370 (not (= r!7292 (generalisedConcat!2206 (exprs!6493 (h!72452 zl!343))))))))

(declare-fun setIsEmpty!46455 () Bool)

(assert (=> setIsEmpty!46455 setRes!46455))

(declare-fun b!6787906 () Bool)

(declare-fun res!2774383 () Bool)

(assert (=> b!6787906 (=> res!2774383 e!4097196)))

(assert (=> b!6787906 (= res!2774383 ((_ is Nil!66003) s!2326))))

(declare-fun b!6787907 () Bool)

(declare-fun tp!1859335 () Bool)

(assert (=> b!6787907 (= e!4097191 tp!1859335)))

(declare-fun b!6787908 () Bool)

(declare-fun tp!1859341 () Bool)

(assert (=> b!6787908 (= e!4097194 (and tp_is_empty!42471 tp!1859341))))

(declare-fun b!6787909 () Bool)

(declare-fun res!2774364 () Bool)

(assert (=> b!6787909 (=> res!2774364 e!4097203)))

(assert (=> b!6787909 (= res!2774364 (not (= (unfocusZipper!2351 (Cons!66004 lt!2445912 Nil!66004)) r!7292)))))

(assert (= (and start!656960 res!2774373) b!6787890))

(assert (= (and b!6787890 res!2774369) b!6787904))

(assert (= (and b!6787904 res!2774381) b!6787903))

(assert (= (and b!6787903 (not res!2774375)) b!6787881))

(assert (= (and b!6787881 (not res!2774384)) b!6787905))

(assert (= (and b!6787905 (not res!2774370)) b!6787880))

(assert (= (and b!6787880 (not res!2774372)) b!6787897))

(assert (= (and b!6787897 (not res!2774368)) b!6787894))

(assert (= (and b!6787894 (not res!2774362)) b!6787882))

(assert (= (and b!6787882 (not res!2774376)) b!6787887))

(assert (= (and b!6787882 (not res!2774366)) b!6787906))

(assert (= (and b!6787906 (not res!2774383)) b!6787902))

(assert (= (and b!6787902 (not res!2774374)) b!6787899))

(assert (= (and b!6787899 (not res!2774363)) b!6787884))

(assert (= (and b!6787884 (not res!2774371)) b!6787879))

(assert (= (and b!6787879 (not res!2774367)) b!6787892))

(assert (= (and b!6787892 (not res!2774377)) b!6787893))

(assert (= (and b!6787893 (not res!2774380)) b!6787901))

(assert (= (and b!6787901 (not res!2774378)) b!6787898))

(assert (= (and b!6787898 (not res!2774382)) b!6787909))

(assert (= (and b!6787909 (not res!2774364)) b!6787885))

(assert (= (and b!6787885 (not res!2774365)) b!6787883))

(assert (= (and b!6787883 (not res!2774379)) b!6787900))

(assert (= (and start!656960 ((_ is ElementMatch!16609) r!7292)) b!6787891))

(assert (= (and start!656960 ((_ is Concat!25454) r!7292)) b!6787895))

(assert (= (and start!656960 ((_ is Star!16609) r!7292)) b!6787907))

(assert (= (and start!656960 ((_ is Union!16609) r!7292)) b!6787896))

(assert (= (and start!656960 condSetEmpty!46455) setIsEmpty!46455))

(assert (= (and start!656960 (not condSetEmpty!46455)) setNonEmpty!46455))

(assert (= setNonEmpty!46455 b!6787889))

(assert (= b!6787888 b!6787886))

(assert (= (and start!656960 ((_ is Cons!66004) zl!343)) b!6787888))

(assert (= (and start!656960 ((_ is Cons!66003) s!2326)) b!6787908))

(declare-fun m!7535852 () Bool)

(assert (=> b!6787901 m!7535852))

(declare-fun m!7535854 () Bool)

(assert (=> b!6787901 m!7535854))

(declare-fun m!7535856 () Bool)

(assert (=> b!6787901 m!7535856))

(declare-fun m!7535858 () Bool)

(assert (=> b!6787901 m!7535858))

(declare-fun m!7535860 () Bool)

(assert (=> b!6787901 m!7535860))

(declare-fun m!7535862 () Bool)

(assert (=> b!6787901 m!7535862))

(declare-fun m!7535864 () Bool)

(assert (=> b!6787901 m!7535864))

(declare-fun m!7535866 () Bool)

(assert (=> b!6787901 m!7535866))

(declare-fun m!7535868 () Bool)

(assert (=> b!6787901 m!7535868))

(declare-fun m!7535870 () Bool)

(assert (=> b!6787879 m!7535870))

(declare-fun m!7535872 () Bool)

(assert (=> b!6787879 m!7535872))

(assert (=> b!6787879 m!7535872))

(declare-fun m!7535874 () Bool)

(assert (=> b!6787879 m!7535874))

(declare-fun m!7535876 () Bool)

(assert (=> b!6787909 m!7535876))

(declare-fun m!7535878 () Bool)

(assert (=> b!6787890 m!7535878))

(declare-fun m!7535880 () Bool)

(assert (=> b!6787903 m!7535880))

(declare-fun m!7535882 () Bool)

(assert (=> b!6787903 m!7535882))

(declare-fun m!7535884 () Bool)

(assert (=> b!6787903 m!7535884))

(declare-fun m!7535886 () Bool)

(assert (=> b!6787893 m!7535886))

(declare-fun m!7535888 () Bool)

(assert (=> b!6787904 m!7535888))

(declare-fun m!7535890 () Bool)

(assert (=> b!6787884 m!7535890))

(declare-fun m!7535892 () Bool)

(assert (=> b!6787884 m!7535892))

(declare-fun m!7535894 () Bool)

(assert (=> b!6787884 m!7535894))

(declare-fun m!7535896 () Bool)

(assert (=> b!6787884 m!7535896))

(declare-fun m!7535898 () Bool)

(assert (=> b!6787884 m!7535898))

(declare-fun m!7535900 () Bool)

(assert (=> b!6787905 m!7535900))

(declare-fun m!7535902 () Bool)

(assert (=> b!6787897 m!7535902))

(assert (=> b!6787897 m!7535902))

(declare-fun m!7535904 () Bool)

(assert (=> b!6787897 m!7535904))

(declare-fun m!7535906 () Bool)

(assert (=> b!6787888 m!7535906))

(declare-fun m!7535908 () Bool)

(assert (=> b!6787885 m!7535908))

(declare-fun m!7535910 () Bool)

(assert (=> b!6787885 m!7535910))

(declare-fun m!7535912 () Bool)

(assert (=> b!6787885 m!7535912))

(declare-fun m!7535914 () Bool)

(assert (=> b!6787883 m!7535914))

(declare-fun m!7535916 () Bool)

(assert (=> start!656960 m!7535916))

(declare-fun m!7535918 () Bool)

(assert (=> b!6787882 m!7535918))

(declare-fun m!7535920 () Bool)

(assert (=> b!6787882 m!7535920))

(declare-fun m!7535922 () Bool)

(assert (=> b!6787882 m!7535922))

(assert (=> b!6787882 m!7535920))

(declare-fun m!7535924 () Bool)

(assert (=> b!6787882 m!7535924))

(assert (=> b!6787882 m!7535924))

(declare-fun m!7535926 () Bool)

(assert (=> b!6787882 m!7535926))

(declare-fun m!7535928 () Bool)

(assert (=> b!6787882 m!7535928))

(declare-fun m!7535930 () Bool)

(assert (=> b!6787882 m!7535930))

(assert (=> b!6787882 m!7535920))

(declare-fun m!7535932 () Bool)

(assert (=> b!6787882 m!7535932))

(declare-fun m!7535934 () Bool)

(assert (=> b!6787882 m!7535934))

(declare-fun m!7535936 () Bool)

(assert (=> b!6787902 m!7535936))

(declare-fun m!7535938 () Bool)

(assert (=> b!6787902 m!7535938))

(declare-fun m!7535940 () Bool)

(assert (=> b!6787902 m!7535940))

(declare-fun m!7535942 () Bool)

(assert (=> b!6787898 m!7535942))

(declare-fun m!7535944 () Bool)

(assert (=> b!6787899 m!7535944))

(declare-fun m!7535946 () Bool)

(assert (=> b!6787899 m!7535946))

(declare-fun m!7535948 () Bool)

(assert (=> b!6787899 m!7535948))

(declare-fun m!7535950 () Bool)

(assert (=> b!6787900 m!7535950))

(declare-fun m!7535952 () Bool)

(assert (=> setNonEmpty!46455 m!7535952))

(declare-fun m!7535954 () Bool)

(assert (=> b!6787881 m!7535954))

(check-sat (not b!6787883) (not b!6787884) (not b!6787896) (not b!6787882) (not b!6787889) (not b!6787909) (not b!6787895) (not b!6787881) (not b!6787886) (not b!6787899) (not b!6787901) (not b!6787902) (not b!6787905) (not setNonEmpty!46455) (not b!6787893) (not b!6787903) (not b!6787890) (not b!6787879) (not b!6787898) (not b!6787888) tp_is_empty!42471 (not b!6787904) (not b!6787885) (not b!6787897) (not b!6787908) (not start!656960) (not b!6787907) (not b!6787900))
(check-sat)
(get-model)

(declare-fun b!6787936 () Bool)

(declare-fun e!4097220 () Regex!16609)

(assert (=> b!6787936 (= e!4097220 (Union!16609 (h!72450 (unfocusZipperList!2030 zl!343)) (generalisedUnion!2453 (t!379847 (unfocusZipperList!2030 zl!343)))))))

(declare-fun b!6787937 () Bool)

(declare-fun e!4097222 () Bool)

(declare-fun lt!2445925 () Regex!16609)

(declare-fun head!13629 (List!66126) Regex!16609)

(assert (=> b!6787937 (= e!4097222 (= lt!2445925 (head!13629 (unfocusZipperList!2030 zl!343))))))

(declare-fun b!6787938 () Bool)

(declare-fun e!4097219 () Bool)

(declare-fun isEmptyLang!1974 (Regex!16609) Bool)

(assert (=> b!6787938 (= e!4097219 (isEmptyLang!1974 lt!2445925))))

(declare-fun b!6787939 () Bool)

(assert (=> b!6787939 (= e!4097220 EmptyLang!16609)))

(declare-fun b!6787940 () Bool)

(assert (=> b!6787940 (= e!4097219 e!4097222)))

(declare-fun c!1261401 () Bool)

(declare-fun isEmpty!38372 (List!66126) Bool)

(declare-fun tail!12714 (List!66126) List!66126)

(assert (=> b!6787940 (= c!1261401 (isEmpty!38372 (tail!12714 (unfocusZipperList!2030 zl!343))))))

(declare-fun b!6787941 () Bool)

(declare-fun e!4097223 () Bool)

(assert (=> b!6787941 (= e!4097223 (isEmpty!38372 (t!379847 (unfocusZipperList!2030 zl!343))))))

(declare-fun b!6787942 () Bool)

(declare-fun e!4097224 () Regex!16609)

(assert (=> b!6787942 (= e!4097224 (h!72450 (unfocusZipperList!2030 zl!343)))))

(declare-fun d!2132790 () Bool)

(declare-fun e!4097221 () Bool)

(assert (=> d!2132790 e!4097221))

(declare-fun res!2774390 () Bool)

(assert (=> d!2132790 (=> (not res!2774390) (not e!4097221))))

(assert (=> d!2132790 (= res!2774390 (validRegex!8345 lt!2445925))))

(assert (=> d!2132790 (= lt!2445925 e!4097224)))

(declare-fun c!1261402 () Bool)

(assert (=> d!2132790 (= c!1261402 e!4097223)))

(declare-fun res!2774389 () Bool)

(assert (=> d!2132790 (=> (not res!2774389) (not e!4097223))))

(assert (=> d!2132790 (= res!2774389 ((_ is Cons!66002) (unfocusZipperList!2030 zl!343)))))

(declare-fun lambda!382300 () Int)

(declare-fun forall!15801 (List!66126 Int) Bool)

(assert (=> d!2132790 (forall!15801 (unfocusZipperList!2030 zl!343) lambda!382300)))

(assert (=> d!2132790 (= (generalisedUnion!2453 (unfocusZipperList!2030 zl!343)) lt!2445925)))

(declare-fun b!6787943 () Bool)

(assert (=> b!6787943 (= e!4097221 e!4097219)))

(declare-fun c!1261400 () Bool)

(assert (=> b!6787943 (= c!1261400 (isEmpty!38372 (unfocusZipperList!2030 zl!343)))))

(declare-fun b!6787944 () Bool)

(declare-fun isUnion!1404 (Regex!16609) Bool)

(assert (=> b!6787944 (= e!4097222 (isUnion!1404 lt!2445925))))

(declare-fun b!6787945 () Bool)

(assert (=> b!6787945 (= e!4097224 e!4097220)))

(declare-fun c!1261403 () Bool)

(assert (=> b!6787945 (= c!1261403 ((_ is Cons!66002) (unfocusZipperList!2030 zl!343)))))

(assert (= (and d!2132790 res!2774389) b!6787941))

(assert (= (and d!2132790 c!1261402) b!6787942))

(assert (= (and d!2132790 (not c!1261402)) b!6787945))

(assert (= (and b!6787945 c!1261403) b!6787936))

(assert (= (and b!6787945 (not c!1261403)) b!6787939))

(assert (= (and d!2132790 res!2774390) b!6787943))

(assert (= (and b!6787943 c!1261400) b!6787938))

(assert (= (and b!6787943 (not c!1261400)) b!6787940))

(assert (= (and b!6787940 c!1261401) b!6787937))

(assert (= (and b!6787940 (not c!1261401)) b!6787944))

(assert (=> b!6787940 m!7535902))

(declare-fun m!7535956 () Bool)

(assert (=> b!6787940 m!7535956))

(assert (=> b!6787940 m!7535956))

(declare-fun m!7535958 () Bool)

(assert (=> b!6787940 m!7535958))

(declare-fun m!7535960 () Bool)

(assert (=> d!2132790 m!7535960))

(assert (=> d!2132790 m!7535902))

(declare-fun m!7535962 () Bool)

(assert (=> d!2132790 m!7535962))

(assert (=> b!6787937 m!7535902))

(declare-fun m!7535964 () Bool)

(assert (=> b!6787937 m!7535964))

(declare-fun m!7535966 () Bool)

(assert (=> b!6787941 m!7535966))

(declare-fun m!7535968 () Bool)

(assert (=> b!6787936 m!7535968))

(assert (=> b!6787943 m!7535902))

(declare-fun m!7535970 () Bool)

(assert (=> b!6787943 m!7535970))

(declare-fun m!7535972 () Bool)

(assert (=> b!6787938 m!7535972))

(declare-fun m!7535974 () Bool)

(assert (=> b!6787944 m!7535974))

(assert (=> b!6787897 d!2132790))

(declare-fun bs!1808426 () Bool)

(declare-fun d!2132792 () Bool)

(assert (= bs!1808426 (and d!2132792 d!2132790)))

(declare-fun lambda!382303 () Int)

(assert (=> bs!1808426 (= lambda!382303 lambda!382300)))

(declare-fun lt!2445928 () List!66126)

(assert (=> d!2132792 (forall!15801 lt!2445928 lambda!382303)))

(declare-fun e!4097227 () List!66126)

(assert (=> d!2132792 (= lt!2445928 e!4097227)))

(declare-fun c!1261406 () Bool)

(assert (=> d!2132792 (= c!1261406 ((_ is Cons!66004) zl!343))))

(assert (=> d!2132792 (= (unfocusZipperList!2030 zl!343) lt!2445928)))

(declare-fun b!6787950 () Bool)

(assert (=> b!6787950 (= e!4097227 (Cons!66002 (generalisedConcat!2206 (exprs!6493 (h!72452 zl!343))) (unfocusZipperList!2030 (t!379849 zl!343))))))

(declare-fun b!6787951 () Bool)

(assert (=> b!6787951 (= e!4097227 Nil!66002)))

(assert (= (and d!2132792 c!1261406) b!6787950))

(assert (= (and d!2132792 (not c!1261406)) b!6787951))

(declare-fun m!7535976 () Bool)

(assert (=> d!2132792 m!7535976))

(assert (=> b!6787950 m!7535900))

(declare-fun m!7535978 () Bool)

(assert (=> b!6787950 m!7535978))

(assert (=> b!6787897 d!2132792))

(declare-fun d!2132794 () Bool)

(declare-fun lt!2445931 () Regex!16609)

(assert (=> d!2132794 (validRegex!8345 lt!2445931)))

(assert (=> d!2132794 (= lt!2445931 (generalisedUnion!2453 (unfocusZipperList!2030 (Cons!66004 lt!2445922 Nil!66004))))))

(assert (=> d!2132794 (= (unfocusZipper!2351 (Cons!66004 lt!2445922 Nil!66004)) lt!2445931)))

(declare-fun bs!1808427 () Bool)

(assert (= bs!1808427 d!2132794))

(declare-fun m!7535980 () Bool)

(assert (=> bs!1808427 m!7535980))

(declare-fun m!7535982 () Bool)

(assert (=> bs!1808427 m!7535982))

(assert (=> bs!1808427 m!7535982))

(declare-fun m!7535984 () Bool)

(assert (=> bs!1808427 m!7535984))

(assert (=> b!6787898 d!2132794))

(declare-fun bs!1808428 () Bool)

(declare-fun d!2132796 () Bool)

(assert (= bs!1808428 (and d!2132796 d!2132790)))

(declare-fun lambda!382306 () Int)

(assert (=> bs!1808428 (= lambda!382306 lambda!382300)))

(declare-fun bs!1808429 () Bool)

(assert (= bs!1808429 (and d!2132796 d!2132792)))

(assert (=> bs!1808429 (= lambda!382306 lambda!382303)))

(assert (=> d!2132796 (= (inv!84769 (h!72452 zl!343)) (forall!15801 (exprs!6493 (h!72452 zl!343)) lambda!382306))))

(declare-fun bs!1808430 () Bool)

(assert (= bs!1808430 d!2132796))

(declare-fun m!7535986 () Bool)

(assert (=> bs!1808430 m!7535986))

(assert (=> b!6787888 d!2132796))

(declare-fun d!2132798 () Bool)

(declare-fun lt!2445932 () Regex!16609)

(assert (=> d!2132798 (validRegex!8345 lt!2445932)))

(assert (=> d!2132798 (= lt!2445932 (generalisedUnion!2453 (unfocusZipperList!2030 zl!343)))))

(assert (=> d!2132798 (= (unfocusZipper!2351 zl!343) lt!2445932)))

(declare-fun bs!1808431 () Bool)

(assert (= bs!1808431 d!2132798))

(declare-fun m!7535988 () Bool)

(assert (=> bs!1808431 m!7535988))

(assert (=> bs!1808431 m!7535902))

(assert (=> bs!1808431 m!7535902))

(assert (=> bs!1808431 m!7535904))

(assert (=> b!6787904 d!2132798))

(declare-fun d!2132800 () Bool)

(declare-fun lt!2445933 () Regex!16609)

(assert (=> d!2132800 (validRegex!8345 lt!2445933)))

(assert (=> d!2132800 (= lt!2445933 (generalisedUnion!2453 (unfocusZipperList!2030 (Cons!66004 lt!2445916 Nil!66004))))))

(assert (=> d!2132800 (= (unfocusZipper!2351 (Cons!66004 lt!2445916 Nil!66004)) lt!2445933)))

(declare-fun bs!1808432 () Bool)

(assert (= bs!1808432 d!2132800))

(declare-fun m!7535990 () Bool)

(assert (=> bs!1808432 m!7535990))

(declare-fun m!7535992 () Bool)

(assert (=> bs!1808432 m!7535992))

(assert (=> bs!1808432 m!7535992))

(declare-fun m!7535994 () Bool)

(assert (=> bs!1808432 m!7535994))

(assert (=> b!6787893 d!2132800))

(declare-fun b!6788017 () Bool)

(declare-fun e!4097267 () (InoxSet Context!11986))

(declare-fun call!616192 () (InoxSet Context!11986))

(assert (=> b!6788017 (= e!4097267 call!616192)))

(declare-fun bm!616183 () Bool)

(declare-fun c!1261431 () Bool)

(declare-fun call!616193 () (InoxSet Context!11986))

(declare-fun c!1261430 () Bool)

(declare-fun c!1261433 () Bool)

(declare-fun call!616188 () List!66126)

(assert (=> bm!616183 (= call!616193 (derivationStepZipperDown!1837 (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292))))) (ite (or c!1261430 c!1261433) lt!2445912 (Context!11987 call!616188)) (h!72451 s!2326)))))

(declare-fun call!616189 () List!66126)

(declare-fun call!616191 () (InoxSet Context!11986))

(declare-fun bm!616184 () Bool)

(assert (=> bm!616184 (= call!616191 (derivationStepZipperDown!1837 (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292))) (ite c!1261430 lt!2445912 (Context!11987 call!616189)) (h!72451 s!2326)))))

(declare-fun b!6788018 () Bool)

(declare-fun e!4097266 () (InoxSet Context!11986))

(declare-fun e!4097265 () (InoxSet Context!11986))

(assert (=> b!6788018 (= e!4097266 e!4097265)))

(assert (=> b!6788018 (= c!1261430 ((_ is Union!16609) (reg!16938 r!7292)))))

(declare-fun b!6788019 () Bool)

(declare-fun e!4097269 () (InoxSet Context!11986))

(assert (=> b!6788019 (= e!4097269 call!616192)))

(declare-fun b!6788020 () Bool)

(declare-fun e!4097270 () Bool)

(assert (=> b!6788020 (= c!1261433 e!4097270)))

(declare-fun res!2774412 () Bool)

(assert (=> b!6788020 (=> (not res!2774412) (not e!4097270))))

(assert (=> b!6788020 (= res!2774412 ((_ is Concat!25454) (reg!16938 r!7292)))))

(declare-fun e!4097268 () (InoxSet Context!11986))

(assert (=> b!6788020 (= e!4097265 e!4097268)))

(declare-fun b!6788021 () Bool)

(assert (=> b!6788021 (= e!4097267 ((as const (Array Context!11986 Bool)) false))))

(declare-fun b!6788022 () Bool)

(declare-fun nullable!6588 (Regex!16609) Bool)

(assert (=> b!6788022 (= e!4097270 (nullable!6588 (regOne!33730 (reg!16938 r!7292))))))

(declare-fun b!6788023 () Bool)

(assert (=> b!6788023 (= e!4097268 e!4097269)))

(assert (=> b!6788023 (= c!1261431 ((_ is Concat!25454) (reg!16938 r!7292)))))

(declare-fun bm!616185 () Bool)

(assert (=> bm!616185 (= call!616188 call!616189)))

(declare-fun d!2132802 () Bool)

(declare-fun c!1261432 () Bool)

(assert (=> d!2132802 (= c!1261432 (and ((_ is ElementMatch!16609) (reg!16938 r!7292)) (= (c!1261391 (reg!16938 r!7292)) (h!72451 s!2326))))))

(assert (=> d!2132802 (= (derivationStepZipperDown!1837 (reg!16938 r!7292) lt!2445912 (h!72451 s!2326)) e!4097266)))

(declare-fun bm!616186 () Bool)

(declare-fun call!616190 () (InoxSet Context!11986))

(assert (=> bm!616186 (= call!616190 call!616193)))

(declare-fun b!6788024 () Bool)

(assert (=> b!6788024 (= e!4097266 (store ((as const (Array Context!11986 Bool)) false) lt!2445912 true))))

(declare-fun b!6788025 () Bool)

(assert (=> b!6788025 (= e!4097265 ((_ map or) call!616193 call!616191))))

(declare-fun b!6788026 () Bool)

(assert (=> b!6788026 (= e!4097268 ((_ map or) call!616191 call!616190))))

(declare-fun bm!616187 () Bool)

(assert (=> bm!616187 (= call!616192 call!616190)))

(declare-fun b!6788027 () Bool)

(declare-fun c!1261429 () Bool)

(assert (=> b!6788027 (= c!1261429 ((_ is Star!16609) (reg!16938 r!7292)))))

(assert (=> b!6788027 (= e!4097269 e!4097267)))

(declare-fun bm!616188 () Bool)

(declare-fun $colon$colon!2417 (List!66126 Regex!16609) List!66126)

(assert (=> bm!616188 (= call!616189 ($colon$colon!2417 (exprs!6493 lt!2445912) (ite (or c!1261433 c!1261431) (regTwo!33730 (reg!16938 r!7292)) (reg!16938 r!7292))))))

(assert (= (and d!2132802 c!1261432) b!6788024))

(assert (= (and d!2132802 (not c!1261432)) b!6788018))

(assert (= (and b!6788018 c!1261430) b!6788025))

(assert (= (and b!6788018 (not c!1261430)) b!6788020))

(assert (= (and b!6788020 res!2774412) b!6788022))

(assert (= (and b!6788020 c!1261433) b!6788026))

(assert (= (and b!6788020 (not c!1261433)) b!6788023))

(assert (= (and b!6788023 c!1261431) b!6788019))

(assert (= (and b!6788023 (not c!1261431)) b!6788027))

(assert (= (and b!6788027 c!1261429) b!6788017))

(assert (= (and b!6788027 (not c!1261429)) b!6788021))

(assert (= (or b!6788019 b!6788017) bm!616185))

(assert (= (or b!6788019 b!6788017) bm!616187))

(assert (= (or b!6788026 bm!616185) bm!616188))

(assert (= (or b!6788026 bm!616187) bm!616186))

(assert (= (or b!6788025 b!6788026) bm!616184))

(assert (= (or b!6788025 bm!616186) bm!616183))

(assert (=> b!6788024 m!7535860))

(declare-fun m!7536002 () Bool)

(assert (=> bm!616188 m!7536002))

(declare-fun m!7536004 () Bool)

(assert (=> b!6788022 m!7536004))

(declare-fun m!7536006 () Bool)

(assert (=> bm!616184 m!7536006))

(declare-fun m!7536008 () Bool)

(assert (=> bm!616183 m!7536008))

(assert (=> b!6787884 d!2132802))

(declare-fun d!2132808 () Bool)

(declare-fun choose!50556 ((InoxSet Context!11986) Int) (InoxSet Context!11986))

(assert (=> d!2132808 (= (flatMap!2090 lt!2445905 lambda!382297) (choose!50556 lt!2445905 lambda!382297))))

(declare-fun bs!1808436 () Bool)

(assert (= bs!1808436 d!2132808))

(declare-fun m!7536010 () Bool)

(assert (=> bs!1808436 m!7536010))

(assert (=> b!6787884 d!2132808))

(declare-fun b!6788080 () Bool)

(declare-fun e!4097298 () (InoxSet Context!11986))

(assert (=> b!6788080 (= e!4097298 ((as const (Array Context!11986 Bool)) false))))

(declare-fun bm!616194 () Bool)

(declare-fun call!616199 () (InoxSet Context!11986))

(assert (=> bm!616194 (= call!616199 (derivationStepZipperDown!1837 (h!72450 (exprs!6493 lt!2445916)) (Context!11987 (t!379847 (exprs!6493 lt!2445916))) (h!72451 s!2326)))))

(declare-fun b!6788081 () Bool)

(declare-fun e!4097299 () Bool)

(assert (=> b!6788081 (= e!4097299 (nullable!6588 (h!72450 (exprs!6493 lt!2445916))))))

(declare-fun e!4097300 () (InoxSet Context!11986))

(declare-fun b!6788082 () Bool)

(assert (=> b!6788082 (= e!4097300 ((_ map or) call!616199 (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 lt!2445916))) (h!72451 s!2326))))))

(declare-fun d!2132810 () Bool)

(declare-fun c!1261448 () Bool)

(assert (=> d!2132810 (= c!1261448 e!4097299)))

(declare-fun res!2774439 () Bool)

(assert (=> d!2132810 (=> (not res!2774439) (not e!4097299))))

(assert (=> d!2132810 (= res!2774439 ((_ is Cons!66002) (exprs!6493 lt!2445916)))))

(assert (=> d!2132810 (= (derivationStepZipperUp!1763 lt!2445916 (h!72451 s!2326)) e!4097300)))

(declare-fun b!6788083 () Bool)

(assert (=> b!6788083 (= e!4097298 call!616199)))

(declare-fun b!6788084 () Bool)

(assert (=> b!6788084 (= e!4097300 e!4097298)))

(declare-fun c!1261447 () Bool)

(assert (=> b!6788084 (= c!1261447 ((_ is Cons!66002) (exprs!6493 lt!2445916)))))

(assert (= (and d!2132810 res!2774439) b!6788081))

(assert (= (and d!2132810 c!1261448) b!6788082))

(assert (= (and d!2132810 (not c!1261448)) b!6788084))

(assert (= (and b!6788084 c!1261447) b!6788083))

(assert (= (and b!6788084 (not c!1261447)) b!6788080))

(assert (= (or b!6788082 b!6788083) bm!616194))

(declare-fun m!7536026 () Bool)

(assert (=> bm!616194 m!7536026))

(declare-fun m!7536028 () Bool)

(assert (=> b!6788081 m!7536028))

(declare-fun m!7536030 () Bool)

(assert (=> b!6788082 m!7536030))

(assert (=> b!6787884 d!2132810))

(declare-fun d!2132816 () Bool)

(declare-fun dynLambda!26342 (Int Context!11986) (InoxSet Context!11986))

(assert (=> d!2132816 (= (flatMap!2090 lt!2445905 lambda!382297) (dynLambda!26342 lambda!382297 lt!2445916))))

(declare-fun lt!2445944 () Unit!159909)

(declare-fun choose!50557 ((InoxSet Context!11986) Context!11986 Int) Unit!159909)

(assert (=> d!2132816 (= lt!2445944 (choose!50557 lt!2445905 lt!2445916 lambda!382297))))

(assert (=> d!2132816 (= lt!2445905 (store ((as const (Array Context!11986 Bool)) false) lt!2445916 true))))

(assert (=> d!2132816 (= (lemmaFlatMapOnSingletonSet!1616 lt!2445905 lt!2445916 lambda!382297) lt!2445944)))

(declare-fun b_lambda!255651 () Bool)

(assert (=> (not b_lambda!255651) (not d!2132816)))

(declare-fun bs!1808438 () Bool)

(assert (= bs!1808438 d!2132816))

(assert (=> bs!1808438 m!7535898))

(declare-fun m!7536032 () Bool)

(assert (=> bs!1808438 m!7536032))

(declare-fun m!7536034 () Bool)

(assert (=> bs!1808438 m!7536034))

(assert (=> bs!1808438 m!7535892))

(assert (=> b!6787884 d!2132816))

(declare-fun bs!1808449 () Bool)

(declare-fun b!6788208 () Bool)

(assert (= bs!1808449 (and b!6788208 b!6787882)))

(declare-fun lambda!382329 () Int)

(assert (=> bs!1808449 (not (= lambda!382329 lambda!382294))))

(assert (=> bs!1808449 (= (and (= (reg!16938 lt!2445914) (reg!16938 r!7292)) (= lt!2445914 r!7292)) (= lambda!382329 lambda!382295))))

(assert (=> bs!1808449 (not (= lambda!382329 lambda!382296))))

(assert (=> b!6788208 true))

(assert (=> b!6788208 true))

(declare-fun bs!1808450 () Bool)

(declare-fun b!6788209 () Bool)

(assert (= bs!1808450 (and b!6788209 b!6787882)))

(declare-fun lambda!382330 () Int)

(assert (=> bs!1808450 (not (= lambda!382330 lambda!382294))))

(assert (=> bs!1808450 (not (= lambda!382330 lambda!382295))))

(assert (=> bs!1808450 (= (and (= (regOne!33730 lt!2445914) (reg!16938 r!7292)) (= (regTwo!33730 lt!2445914) r!7292)) (= lambda!382330 lambda!382296))))

(declare-fun bs!1808451 () Bool)

(assert (= bs!1808451 (and b!6788209 b!6788208)))

(assert (=> bs!1808451 (not (= lambda!382330 lambda!382329))))

(assert (=> b!6788209 true))

(assert (=> b!6788209 true))

(declare-fun b!6788204 () Bool)

(declare-fun e!4097372 () Bool)

(declare-fun e!4097373 () Bool)

(assert (=> b!6788204 (= e!4097372 e!4097373)))

(declare-fun res!2774472 () Bool)

(assert (=> b!6788204 (= res!2774472 (matchRSpec!3710 (regOne!33731 lt!2445914) s!2326))))

(assert (=> b!6788204 (=> res!2774472 e!4097373)))

(declare-fun b!6788205 () Bool)

(declare-fun e!4097374 () Bool)

(assert (=> b!6788205 (= e!4097372 e!4097374)))

(declare-fun c!1261493 () Bool)

(assert (=> b!6788205 (= c!1261493 ((_ is Star!16609) lt!2445914))))

(declare-fun b!6788206 () Bool)

(declare-fun c!1261495 () Bool)

(assert (=> b!6788206 (= c!1261495 ((_ is Union!16609) lt!2445914))))

(declare-fun e!4097376 () Bool)

(assert (=> b!6788206 (= e!4097376 e!4097372)))

(declare-fun b!6788207 () Bool)

(assert (=> b!6788207 (= e!4097373 (matchRSpec!3710 (regTwo!33731 lt!2445914) s!2326))))

(declare-fun bm!616202 () Bool)

(declare-fun call!616208 () Bool)

(assert (=> bm!616202 (= call!616208 (Exists!3677 (ite c!1261493 lambda!382329 lambda!382330)))))

(assert (=> b!6788209 (= e!4097374 call!616208)))

(declare-fun b!6788210 () Bool)

(declare-fun e!4097375 () Bool)

(declare-fun call!616207 () Bool)

(assert (=> b!6788210 (= e!4097375 call!616207)))

(declare-fun b!6788211 () Bool)

(declare-fun c!1261494 () Bool)

(assert (=> b!6788211 (= c!1261494 ((_ is ElementMatch!16609) lt!2445914))))

(declare-fun e!4097371 () Bool)

(assert (=> b!6788211 (= e!4097371 e!4097376)))

(declare-fun b!6788212 () Bool)

(assert (=> b!6788212 (= e!4097376 (= s!2326 (Cons!66003 (c!1261391 lt!2445914) Nil!66003)))))

(declare-fun b!6788213 () Bool)

(declare-fun res!2774473 () Bool)

(declare-fun e!4097370 () Bool)

(assert (=> b!6788213 (=> res!2774473 e!4097370)))

(assert (=> b!6788213 (= res!2774473 call!616207)))

(assert (=> b!6788213 (= e!4097374 e!4097370)))

(declare-fun bm!616203 () Bool)

(assert (=> bm!616203 (= call!616207 (isEmpty!38370 s!2326))))

(declare-fun b!6788214 () Bool)

(assert (=> b!6788214 (= e!4097375 e!4097371)))

(declare-fun res!2774471 () Bool)

(assert (=> b!6788214 (= res!2774471 (not ((_ is EmptyLang!16609) lt!2445914)))))

(assert (=> b!6788214 (=> (not res!2774471) (not e!4097371))))

(assert (=> b!6788208 (= e!4097370 call!616208)))

(declare-fun d!2132818 () Bool)

(declare-fun c!1261496 () Bool)

(assert (=> d!2132818 (= c!1261496 ((_ is EmptyExpr!16609) lt!2445914))))

(assert (=> d!2132818 (= (matchRSpec!3710 lt!2445914 s!2326) e!4097375)))

(assert (= (and d!2132818 c!1261496) b!6788210))

(assert (= (and d!2132818 (not c!1261496)) b!6788214))

(assert (= (and b!6788214 res!2774471) b!6788211))

(assert (= (and b!6788211 c!1261494) b!6788212))

(assert (= (and b!6788211 (not c!1261494)) b!6788206))

(assert (= (and b!6788206 c!1261495) b!6788204))

(assert (= (and b!6788206 (not c!1261495)) b!6788205))

(assert (= (and b!6788204 (not res!2774472)) b!6788207))

(assert (= (and b!6788205 c!1261493) b!6788213))

(assert (= (and b!6788205 (not c!1261493)) b!6788209))

(assert (= (and b!6788213 (not res!2774473)) b!6788208))

(assert (= (or b!6788208 b!6788209) bm!616202))

(assert (= (or b!6788210 b!6788213) bm!616203))

(declare-fun m!7536134 () Bool)

(assert (=> b!6788204 m!7536134))

(declare-fun m!7536136 () Bool)

(assert (=> b!6788207 m!7536136))

(declare-fun m!7536138 () Bool)

(assert (=> bm!616202 m!7536138))

(assert (=> bm!616203 m!7535918))

(assert (=> b!6787885 d!2132818))

(declare-fun b!6788326 () Bool)

(declare-fun e!4097443 () Bool)

(declare-fun e!4097444 () Bool)

(assert (=> b!6788326 (= e!4097443 e!4097444)))

(declare-fun res!2774526 () Bool)

(assert (=> b!6788326 (=> res!2774526 e!4097444)))

(declare-fun call!616235 () Bool)

(assert (=> b!6788326 (= res!2774526 call!616235)))

(declare-fun b!6788327 () Bool)

(declare-fun e!4097449 () Bool)

(assert (=> b!6788327 (= e!4097449 e!4097443)))

(declare-fun res!2774528 () Bool)

(assert (=> b!6788327 (=> (not res!2774528) (not e!4097443))))

(declare-fun lt!2445966 () Bool)

(assert (=> b!6788327 (= res!2774528 (not lt!2445966))))

(declare-fun d!2132848 () Bool)

(declare-fun e!4097445 () Bool)

(assert (=> d!2132848 e!4097445))

(declare-fun c!1261531 () Bool)

(assert (=> d!2132848 (= c!1261531 ((_ is EmptyExpr!16609) lt!2445914))))

(declare-fun e!4097446 () Bool)

(assert (=> d!2132848 (= lt!2445966 e!4097446)))

(declare-fun c!1261532 () Bool)

(assert (=> d!2132848 (= c!1261532 (isEmpty!38370 s!2326))))

(assert (=> d!2132848 (validRegex!8345 lt!2445914)))

(assert (=> d!2132848 (= (matchR!8792 lt!2445914 s!2326) lt!2445966)))

(declare-fun b!6788328 () Bool)

(declare-fun res!2774527 () Bool)

(assert (=> b!6788328 (=> res!2774527 e!4097449)))

(assert (=> b!6788328 (= res!2774527 (not ((_ is ElementMatch!16609) lt!2445914)))))

(declare-fun e!4097447 () Bool)

(assert (=> b!6788328 (= e!4097447 e!4097449)))

(declare-fun b!6788329 () Bool)

(declare-fun derivativeStep!5273 (Regex!16609 C!33488) Regex!16609)

(declare-fun head!13630 (List!66127) C!33488)

(declare-fun tail!12715 (List!66127) List!66127)

(assert (=> b!6788329 (= e!4097446 (matchR!8792 (derivativeStep!5273 lt!2445914 (head!13630 s!2326)) (tail!12715 s!2326)))))

(declare-fun bm!616230 () Bool)

(assert (=> bm!616230 (= call!616235 (isEmpty!38370 s!2326))))

(declare-fun b!6788330 () Bool)

(declare-fun e!4097448 () Bool)

(assert (=> b!6788330 (= e!4097448 (= (head!13630 s!2326) (c!1261391 lt!2445914)))))

(declare-fun b!6788331 () Bool)

(declare-fun res!2774525 () Bool)

(assert (=> b!6788331 (=> res!2774525 e!4097444)))

(assert (=> b!6788331 (= res!2774525 (not (isEmpty!38370 (tail!12715 s!2326))))))

(declare-fun b!6788332 () Bool)

(declare-fun res!2774523 () Bool)

(assert (=> b!6788332 (=> (not res!2774523) (not e!4097448))))

(assert (=> b!6788332 (= res!2774523 (not call!616235))))

(declare-fun b!6788333 () Bool)

(assert (=> b!6788333 (= e!4097445 (= lt!2445966 call!616235))))

(declare-fun b!6788334 () Bool)

(declare-fun res!2774521 () Bool)

(assert (=> b!6788334 (=> (not res!2774521) (not e!4097448))))

(assert (=> b!6788334 (= res!2774521 (isEmpty!38370 (tail!12715 s!2326)))))

(declare-fun b!6788335 () Bool)

(assert (=> b!6788335 (= e!4097445 e!4097447)))

(declare-fun c!1261530 () Bool)

(assert (=> b!6788335 (= c!1261530 ((_ is EmptyLang!16609) lt!2445914))))

(declare-fun b!6788336 () Bool)

(assert (=> b!6788336 (= e!4097446 (nullable!6588 lt!2445914))))

(declare-fun b!6788337 () Bool)

(assert (=> b!6788337 (= e!4097444 (not (= (head!13630 s!2326) (c!1261391 lt!2445914))))))

(declare-fun b!6788338 () Bool)

(declare-fun res!2774524 () Bool)

(assert (=> b!6788338 (=> res!2774524 e!4097449)))

(assert (=> b!6788338 (= res!2774524 e!4097448)))

(declare-fun res!2774522 () Bool)

(assert (=> b!6788338 (=> (not res!2774522) (not e!4097448))))

(assert (=> b!6788338 (= res!2774522 lt!2445966)))

(declare-fun b!6788339 () Bool)

(assert (=> b!6788339 (= e!4097447 (not lt!2445966))))

(assert (= (and d!2132848 c!1261532) b!6788336))

(assert (= (and d!2132848 (not c!1261532)) b!6788329))

(assert (= (and d!2132848 c!1261531) b!6788333))

(assert (= (and d!2132848 (not c!1261531)) b!6788335))

(assert (= (and b!6788335 c!1261530) b!6788339))

(assert (= (and b!6788335 (not c!1261530)) b!6788328))

(assert (= (and b!6788328 (not res!2774527)) b!6788338))

(assert (= (and b!6788338 res!2774522) b!6788332))

(assert (= (and b!6788332 res!2774523) b!6788334))

(assert (= (and b!6788334 res!2774521) b!6788330))

(assert (= (and b!6788338 (not res!2774524)) b!6788327))

(assert (= (and b!6788327 res!2774528) b!6788326))

(assert (= (and b!6788326 (not res!2774526)) b!6788331))

(assert (= (and b!6788331 (not res!2774525)) b!6788337))

(assert (= (or b!6788333 b!6788326 b!6788332) bm!616230))

(declare-fun m!7536168 () Bool)

(assert (=> b!6788329 m!7536168))

(assert (=> b!6788329 m!7536168))

(declare-fun m!7536170 () Bool)

(assert (=> b!6788329 m!7536170))

(declare-fun m!7536172 () Bool)

(assert (=> b!6788329 m!7536172))

(assert (=> b!6788329 m!7536170))

(assert (=> b!6788329 m!7536172))

(declare-fun m!7536174 () Bool)

(assert (=> b!6788329 m!7536174))

(assert (=> b!6788337 m!7536168))

(assert (=> b!6788334 m!7536172))

(assert (=> b!6788334 m!7536172))

(declare-fun m!7536176 () Bool)

(assert (=> b!6788334 m!7536176))

(assert (=> d!2132848 m!7535918))

(declare-fun m!7536178 () Bool)

(assert (=> d!2132848 m!7536178))

(assert (=> b!6788331 m!7536172))

(assert (=> b!6788331 m!7536172))

(assert (=> b!6788331 m!7536176))

(declare-fun m!7536180 () Bool)

(assert (=> b!6788336 m!7536180))

(assert (=> bm!616230 m!7535918))

(assert (=> b!6788330 m!7536168))

(assert (=> b!6787885 d!2132848))

(declare-fun d!2132860 () Bool)

(assert (=> d!2132860 (= (matchR!8792 lt!2445914 s!2326) (matchRSpec!3710 lt!2445914 s!2326))))

(declare-fun lt!2445973 () Unit!159909)

(declare-fun choose!50558 (Regex!16609 List!66127) Unit!159909)

(assert (=> d!2132860 (= lt!2445973 (choose!50558 lt!2445914 s!2326))))

(assert (=> d!2132860 (validRegex!8345 lt!2445914)))

(assert (=> d!2132860 (= (mainMatchTheorem!3710 lt!2445914 s!2326) lt!2445973)))

(declare-fun bs!1808487 () Bool)

(assert (= bs!1808487 d!2132860))

(assert (=> bs!1808487 m!7535910))

(assert (=> bs!1808487 m!7535908))

(declare-fun m!7536238 () Bool)

(assert (=> bs!1808487 m!7536238))

(assert (=> bs!1808487 m!7536178))

(assert (=> b!6787885 d!2132860))

(declare-fun bs!1808497 () Bool)

(declare-fun d!2132890 () Bool)

(assert (= bs!1808497 (and d!2132890 d!2132790)))

(declare-fun lambda!382348 () Int)

(assert (=> bs!1808497 (= lambda!382348 lambda!382300)))

(declare-fun bs!1808498 () Bool)

(assert (= bs!1808498 (and d!2132890 d!2132792)))

(assert (=> bs!1808498 (= lambda!382348 lambda!382303)))

(declare-fun bs!1808499 () Bool)

(assert (= bs!1808499 (and d!2132890 d!2132796)))

(assert (=> bs!1808499 (= lambda!382348 lambda!382306)))

(declare-fun b!6788410 () Bool)

(declare-fun e!4097493 () Regex!16609)

(assert (=> b!6788410 (= e!4097493 (h!72450 (exprs!6493 (h!72452 zl!343))))))

(declare-fun b!6788411 () Bool)

(declare-fun e!4097491 () Bool)

(declare-fun e!4097495 () Bool)

(assert (=> b!6788411 (= e!4097491 e!4097495)))

(declare-fun c!1261562 () Bool)

(assert (=> b!6788411 (= c!1261562 (isEmpty!38372 (tail!12714 (exprs!6493 (h!72452 zl!343)))))))

(declare-fun b!6788412 () Bool)

(declare-fun lt!2445980 () Regex!16609)

(declare-fun isEmptyExpr!1967 (Regex!16609) Bool)

(assert (=> b!6788412 (= e!4097491 (isEmptyExpr!1967 lt!2445980))))

(declare-fun b!6788413 () Bool)

(declare-fun e!4097490 () Bool)

(assert (=> b!6788413 (= e!4097490 (isEmpty!38372 (t!379847 (exprs!6493 (h!72452 zl!343)))))))

(declare-fun b!6788414 () Bool)

(declare-fun e!4097492 () Regex!16609)

(assert (=> b!6788414 (= e!4097492 EmptyExpr!16609)))

(declare-fun b!6788415 () Bool)

(declare-fun isConcat!1490 (Regex!16609) Bool)

(assert (=> b!6788415 (= e!4097495 (isConcat!1490 lt!2445980))))

(declare-fun e!4097494 () Bool)

(assert (=> d!2132890 e!4097494))

(declare-fun res!2774548 () Bool)

(assert (=> d!2132890 (=> (not res!2774548) (not e!4097494))))

(assert (=> d!2132890 (= res!2774548 (validRegex!8345 lt!2445980))))

(assert (=> d!2132890 (= lt!2445980 e!4097493)))

(declare-fun c!1261559 () Bool)

(assert (=> d!2132890 (= c!1261559 e!4097490)))

(declare-fun res!2774547 () Bool)

(assert (=> d!2132890 (=> (not res!2774547) (not e!4097490))))

(assert (=> d!2132890 (= res!2774547 ((_ is Cons!66002) (exprs!6493 (h!72452 zl!343))))))

(assert (=> d!2132890 (forall!15801 (exprs!6493 (h!72452 zl!343)) lambda!382348)))

(assert (=> d!2132890 (= (generalisedConcat!2206 (exprs!6493 (h!72452 zl!343))) lt!2445980)))

(declare-fun b!6788416 () Bool)

(assert (=> b!6788416 (= e!4097495 (= lt!2445980 (head!13629 (exprs!6493 (h!72452 zl!343)))))))

(declare-fun b!6788417 () Bool)

(assert (=> b!6788417 (= e!4097492 (Concat!25454 (h!72450 (exprs!6493 (h!72452 zl!343))) (generalisedConcat!2206 (t!379847 (exprs!6493 (h!72452 zl!343))))))))

(declare-fun b!6788418 () Bool)

(assert (=> b!6788418 (= e!4097494 e!4097491)))

(declare-fun c!1261561 () Bool)

(assert (=> b!6788418 (= c!1261561 (isEmpty!38372 (exprs!6493 (h!72452 zl!343))))))

(declare-fun b!6788419 () Bool)

(assert (=> b!6788419 (= e!4097493 e!4097492)))

(declare-fun c!1261560 () Bool)

(assert (=> b!6788419 (= c!1261560 ((_ is Cons!66002) (exprs!6493 (h!72452 zl!343))))))

(assert (= (and d!2132890 res!2774547) b!6788413))

(assert (= (and d!2132890 c!1261559) b!6788410))

(assert (= (and d!2132890 (not c!1261559)) b!6788419))

(assert (= (and b!6788419 c!1261560) b!6788417))

(assert (= (and b!6788419 (not c!1261560)) b!6788414))

(assert (= (and d!2132890 res!2774548) b!6788418))

(assert (= (and b!6788418 c!1261561) b!6788412))

(assert (= (and b!6788418 (not c!1261561)) b!6788411))

(assert (= (and b!6788411 c!1261562) b!6788416))

(assert (= (and b!6788411 (not c!1261562)) b!6788415))

(declare-fun m!7536270 () Bool)

(assert (=> b!6788413 m!7536270))

(declare-fun m!7536272 () Bool)

(assert (=> d!2132890 m!7536272))

(declare-fun m!7536274 () Bool)

(assert (=> d!2132890 m!7536274))

(declare-fun m!7536276 () Bool)

(assert (=> b!6788418 m!7536276))

(declare-fun m!7536278 () Bool)

(assert (=> b!6788412 m!7536278))

(declare-fun m!7536280 () Bool)

(assert (=> b!6788415 m!7536280))

(declare-fun m!7536282 () Bool)

(assert (=> b!6788416 m!7536282))

(declare-fun m!7536284 () Bool)

(assert (=> b!6788411 m!7536284))

(assert (=> b!6788411 m!7536284))

(declare-fun m!7536286 () Bool)

(assert (=> b!6788411 m!7536286))

(declare-fun m!7536288 () Bool)

(assert (=> b!6788417 m!7536288))

(assert (=> b!6787905 d!2132890))

(declare-fun d!2132904 () Bool)

(assert (=> d!2132904 (= (isEmpty!38369 (t!379849 zl!343)) ((_ is Nil!66004) (t!379849 zl!343)))))

(assert (=> b!6787881 d!2132904))

(declare-fun b!6788420 () Bool)

(declare-fun e!4097496 () (InoxSet Context!11986))

(assert (=> b!6788420 (= e!4097496 ((as const (Array Context!11986 Bool)) false))))

(declare-fun bm!616247 () Bool)

(declare-fun call!616252 () (InoxSet Context!11986))

(assert (=> bm!616247 (= call!616252 (derivationStepZipperDown!1837 (h!72450 (exprs!6493 lt!2445912)) (Context!11987 (t!379847 (exprs!6493 lt!2445912))) (h!72451 s!2326)))))

(declare-fun b!6788421 () Bool)

(declare-fun e!4097497 () Bool)

(assert (=> b!6788421 (= e!4097497 (nullable!6588 (h!72450 (exprs!6493 lt!2445912))))))

(declare-fun e!4097498 () (InoxSet Context!11986))

(declare-fun b!6788422 () Bool)

(assert (=> b!6788422 (= e!4097498 ((_ map or) call!616252 (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 lt!2445912))) (h!72451 s!2326))))))

(declare-fun d!2132906 () Bool)

(declare-fun c!1261564 () Bool)

(assert (=> d!2132906 (= c!1261564 e!4097497)))

(declare-fun res!2774549 () Bool)

(assert (=> d!2132906 (=> (not res!2774549) (not e!4097497))))

(assert (=> d!2132906 (= res!2774549 ((_ is Cons!66002) (exprs!6493 lt!2445912)))))

(assert (=> d!2132906 (= (derivationStepZipperUp!1763 lt!2445912 (h!72451 s!2326)) e!4097498)))

(declare-fun b!6788423 () Bool)

(assert (=> b!6788423 (= e!4097496 call!616252)))

(declare-fun b!6788424 () Bool)

(assert (=> b!6788424 (= e!4097498 e!4097496)))

(declare-fun c!1261563 () Bool)

(assert (=> b!6788424 (= c!1261563 ((_ is Cons!66002) (exprs!6493 lt!2445912)))))

(assert (= (and d!2132906 res!2774549) b!6788421))

(assert (= (and d!2132906 c!1261564) b!6788422))

(assert (= (and d!2132906 (not c!1261564)) b!6788424))

(assert (= (and b!6788424 c!1261563) b!6788423))

(assert (= (and b!6788424 (not c!1261563)) b!6788420))

(assert (= (or b!6788422 b!6788423) bm!616247))

(declare-fun m!7536290 () Bool)

(assert (=> bm!616247 m!7536290))

(declare-fun m!7536292 () Bool)

(assert (=> b!6788421 m!7536292))

(declare-fun m!7536294 () Bool)

(assert (=> b!6788422 m!7536294))

(assert (=> b!6787901 d!2132906))

(declare-fun d!2132908 () Bool)

(assert (=> d!2132908 (= (flatMap!2090 lt!2445908 lambda!382297) (dynLambda!26342 lambda!382297 lt!2445912))))

(declare-fun lt!2445981 () Unit!159909)

(assert (=> d!2132908 (= lt!2445981 (choose!50557 lt!2445908 lt!2445912 lambda!382297))))

(assert (=> d!2132908 (= lt!2445908 (store ((as const (Array Context!11986 Bool)) false) lt!2445912 true))))

(assert (=> d!2132908 (= (lemmaFlatMapOnSingletonSet!1616 lt!2445908 lt!2445912 lambda!382297) lt!2445981)))

(declare-fun b_lambda!255661 () Bool)

(assert (=> (not b_lambda!255661) (not d!2132908)))

(declare-fun bs!1808500 () Bool)

(assert (= bs!1808500 d!2132908))

(assert (=> bs!1808500 m!7535868))

(declare-fun m!7536296 () Bool)

(assert (=> bs!1808500 m!7536296))

(declare-fun m!7536298 () Bool)

(assert (=> bs!1808500 m!7536298))

(assert (=> bs!1808500 m!7535860))

(assert (=> b!6787901 d!2132908))

(declare-fun bs!1808501 () Bool)

(declare-fun d!2132910 () Bool)

(assert (= bs!1808501 (and d!2132910 b!6787899)))

(declare-fun lambda!382355 () Int)

(assert (=> bs!1808501 (= lambda!382355 lambda!382297)))

(assert (=> d!2132910 true))

(assert (=> d!2132910 (= (derivationStepZipper!2553 lt!2445908 (h!72451 s!2326)) (flatMap!2090 lt!2445908 lambda!382355))))

(declare-fun bs!1808502 () Bool)

(assert (= bs!1808502 d!2132910))

(declare-fun m!7536300 () Bool)

(assert (=> bs!1808502 m!7536300))

(assert (=> b!6787901 d!2132910))

(declare-fun d!2132912 () Bool)

(assert (=> d!2132912 (= (flatMap!2090 lt!2445913 lambda!382297) (dynLambda!26342 lambda!382297 lt!2445922))))

(declare-fun lt!2445984 () Unit!159909)

(assert (=> d!2132912 (= lt!2445984 (choose!50557 lt!2445913 lt!2445922 lambda!382297))))

(assert (=> d!2132912 (= lt!2445913 (store ((as const (Array Context!11986 Bool)) false) lt!2445922 true))))

(assert (=> d!2132912 (= (lemmaFlatMapOnSingletonSet!1616 lt!2445913 lt!2445922 lambda!382297) lt!2445984)))

(declare-fun b_lambda!255663 () Bool)

(assert (=> (not b_lambda!255663) (not d!2132912)))

(declare-fun bs!1808503 () Bool)

(assert (= bs!1808503 d!2132912))

(assert (=> bs!1808503 m!7535858))

(declare-fun m!7536302 () Bool)

(assert (=> bs!1808503 m!7536302))

(declare-fun m!7536304 () Bool)

(assert (=> bs!1808503 m!7536304))

(assert (=> bs!1808503 m!7535864))

(assert (=> b!6787901 d!2132912))

(declare-fun d!2132914 () Bool)

(assert (=> d!2132914 (= (flatMap!2090 lt!2445913 lambda!382297) (choose!50556 lt!2445913 lambda!382297))))

(declare-fun bs!1808504 () Bool)

(assert (= bs!1808504 d!2132914))

(declare-fun m!7536306 () Bool)

(assert (=> bs!1808504 m!7536306))

(assert (=> b!6787901 d!2132914))

(declare-fun d!2132916 () Bool)

(assert (=> d!2132916 (= (flatMap!2090 lt!2445908 lambda!382297) (choose!50556 lt!2445908 lambda!382297))))

(declare-fun bs!1808505 () Bool)

(assert (= bs!1808505 d!2132916))

(declare-fun m!7536308 () Bool)

(assert (=> bs!1808505 m!7536308))

(assert (=> b!6787901 d!2132916))

(declare-fun b!6788437 () Bool)

(declare-fun e!4097503 () (InoxSet Context!11986))

(assert (=> b!6788437 (= e!4097503 ((as const (Array Context!11986 Bool)) false))))

(declare-fun bm!616248 () Bool)

(declare-fun call!616253 () (InoxSet Context!11986))

(assert (=> bm!616248 (= call!616253 (derivationStepZipperDown!1837 (h!72450 (exprs!6493 lt!2445922)) (Context!11987 (t!379847 (exprs!6493 lt!2445922))) (h!72451 s!2326)))))

(declare-fun b!6788438 () Bool)

(declare-fun e!4097504 () Bool)

(assert (=> b!6788438 (= e!4097504 (nullable!6588 (h!72450 (exprs!6493 lt!2445922))))))

(declare-fun e!4097505 () (InoxSet Context!11986))

(declare-fun b!6788439 () Bool)

(assert (=> b!6788439 (= e!4097505 ((_ map or) call!616253 (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 lt!2445922))) (h!72451 s!2326))))))

(declare-fun d!2132918 () Bool)

(declare-fun c!1261568 () Bool)

(assert (=> d!2132918 (= c!1261568 e!4097504)))

(declare-fun res!2774560 () Bool)

(assert (=> d!2132918 (=> (not res!2774560) (not e!4097504))))

(assert (=> d!2132918 (= res!2774560 ((_ is Cons!66002) (exprs!6493 lt!2445922)))))

(assert (=> d!2132918 (= (derivationStepZipperUp!1763 lt!2445922 (h!72451 s!2326)) e!4097505)))

(declare-fun b!6788440 () Bool)

(assert (=> b!6788440 (= e!4097503 call!616253)))

(declare-fun b!6788441 () Bool)

(assert (=> b!6788441 (= e!4097505 e!4097503)))

(declare-fun c!1261567 () Bool)

(assert (=> b!6788441 (= c!1261567 ((_ is Cons!66002) (exprs!6493 lt!2445922)))))

(assert (= (and d!2132918 res!2774560) b!6788438))

(assert (= (and d!2132918 c!1261568) b!6788439))

(assert (= (and d!2132918 (not c!1261568)) b!6788441))

(assert (= (and b!6788441 c!1261567) b!6788440))

(assert (= (and b!6788441 (not c!1261567)) b!6788437))

(assert (= (or b!6788439 b!6788440) bm!616248))

(declare-fun m!7536310 () Bool)

(assert (=> bm!616248 m!7536310))

(declare-fun m!7536312 () Bool)

(assert (=> b!6788438 m!7536312))

(declare-fun m!7536314 () Bool)

(assert (=> b!6788439 m!7536314))

(assert (=> b!6787901 d!2132918))

(declare-fun b!6788442 () Bool)

(declare-fun e!4097508 () (InoxSet Context!11986))

(declare-fun call!616258 () (InoxSet Context!11986))

(assert (=> b!6788442 (= e!4097508 call!616258)))

(declare-fun bm!616249 () Bool)

(declare-fun call!616254 () List!66126)

(declare-fun call!616259 () (InoxSet Context!11986))

(declare-fun c!1261571 () Bool)

(declare-fun c!1261570 () Bool)

(declare-fun c!1261573 () Bool)

(assert (=> bm!616249 (= call!616259 (derivationStepZipperDown!1837 (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292)))) (ite (or c!1261570 c!1261573) (Context!11987 Nil!66002) (Context!11987 call!616254)) (h!72451 s!2326)))))

(declare-fun bm!616250 () Bool)

(declare-fun call!616257 () (InoxSet Context!11986))

(declare-fun call!616255 () List!66126)

(assert (=> bm!616250 (= call!616257 (derivationStepZipperDown!1837 (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292)) (ite c!1261570 (Context!11987 Nil!66002) (Context!11987 call!616255)) (h!72451 s!2326)))))

(declare-fun b!6788443 () Bool)

(declare-fun e!4097507 () (InoxSet Context!11986))

(declare-fun e!4097506 () (InoxSet Context!11986))

(assert (=> b!6788443 (= e!4097507 e!4097506)))

(assert (=> b!6788443 (= c!1261570 ((_ is Union!16609) r!7292))))

(declare-fun b!6788444 () Bool)

(declare-fun e!4097510 () (InoxSet Context!11986))

(assert (=> b!6788444 (= e!4097510 call!616258)))

(declare-fun b!6788445 () Bool)

(declare-fun e!4097511 () Bool)

(assert (=> b!6788445 (= c!1261573 e!4097511)))

(declare-fun res!2774561 () Bool)

(assert (=> b!6788445 (=> (not res!2774561) (not e!4097511))))

(assert (=> b!6788445 (= res!2774561 ((_ is Concat!25454) r!7292))))

(declare-fun e!4097509 () (InoxSet Context!11986))

(assert (=> b!6788445 (= e!4097506 e!4097509)))

(declare-fun b!6788446 () Bool)

(assert (=> b!6788446 (= e!4097508 ((as const (Array Context!11986 Bool)) false))))

(declare-fun b!6788447 () Bool)

(assert (=> b!6788447 (= e!4097511 (nullable!6588 (regOne!33730 r!7292)))))

(declare-fun b!6788448 () Bool)

(assert (=> b!6788448 (= e!4097509 e!4097510)))

(assert (=> b!6788448 (= c!1261571 ((_ is Concat!25454) r!7292))))

(declare-fun bm!616251 () Bool)

(assert (=> bm!616251 (= call!616254 call!616255)))

(declare-fun d!2132920 () Bool)

(declare-fun c!1261572 () Bool)

(assert (=> d!2132920 (= c!1261572 (and ((_ is ElementMatch!16609) r!7292) (= (c!1261391 r!7292) (h!72451 s!2326))))))

(assert (=> d!2132920 (= (derivationStepZipperDown!1837 r!7292 (Context!11987 Nil!66002) (h!72451 s!2326)) e!4097507)))

(declare-fun bm!616252 () Bool)

(declare-fun call!616256 () (InoxSet Context!11986))

(assert (=> bm!616252 (= call!616256 call!616259)))

(declare-fun b!6788449 () Bool)

(assert (=> b!6788449 (= e!4097507 (store ((as const (Array Context!11986 Bool)) false) (Context!11987 Nil!66002) true))))

(declare-fun b!6788450 () Bool)

(assert (=> b!6788450 (= e!4097506 ((_ map or) call!616259 call!616257))))

(declare-fun b!6788451 () Bool)

(assert (=> b!6788451 (= e!4097509 ((_ map or) call!616257 call!616256))))

(declare-fun bm!616253 () Bool)

(assert (=> bm!616253 (= call!616258 call!616256)))

(declare-fun b!6788452 () Bool)

(declare-fun c!1261569 () Bool)

(assert (=> b!6788452 (= c!1261569 ((_ is Star!16609) r!7292))))

(assert (=> b!6788452 (= e!4097510 e!4097508)))

(declare-fun bm!616254 () Bool)

(assert (=> bm!616254 (= call!616255 ($colon$colon!2417 (exprs!6493 (Context!11987 Nil!66002)) (ite (or c!1261573 c!1261571) (regTwo!33730 r!7292) r!7292)))))

(assert (= (and d!2132920 c!1261572) b!6788449))

(assert (= (and d!2132920 (not c!1261572)) b!6788443))

(assert (= (and b!6788443 c!1261570) b!6788450))

(assert (= (and b!6788443 (not c!1261570)) b!6788445))

(assert (= (and b!6788445 res!2774561) b!6788447))

(assert (= (and b!6788445 c!1261573) b!6788451))

(assert (= (and b!6788445 (not c!1261573)) b!6788448))

(assert (= (and b!6788448 c!1261571) b!6788444))

(assert (= (and b!6788448 (not c!1261571)) b!6788452))

(assert (= (and b!6788452 c!1261569) b!6788442))

(assert (= (and b!6788452 (not c!1261569)) b!6788446))

(assert (= (or b!6788444 b!6788442) bm!616251))

(assert (= (or b!6788444 b!6788442) bm!616253))

(assert (= (or b!6788451 bm!616251) bm!616254))

(assert (= (or b!6788451 bm!616253) bm!616252))

(assert (= (or b!6788450 b!6788451) bm!616250))

(assert (= (or b!6788450 bm!616252) bm!616249))

(declare-fun m!7536322 () Bool)

(assert (=> b!6788449 m!7536322))

(declare-fun m!7536326 () Bool)

(assert (=> bm!616254 m!7536326))

(declare-fun m!7536328 () Bool)

(assert (=> b!6788447 m!7536328))

(declare-fun m!7536330 () Bool)

(assert (=> bm!616250 m!7536330))

(declare-fun m!7536334 () Bool)

(assert (=> bm!616249 m!7536334))

(assert (=> b!6787902 d!2132920))

(declare-fun b!6788453 () Bool)

(declare-fun e!4097512 () (InoxSet Context!11986))

(assert (=> b!6788453 (= e!4097512 ((as const (Array Context!11986 Bool)) false))))

(declare-fun bm!616255 () Bool)

(declare-fun call!616260 () (InoxSet Context!11986))

(assert (=> bm!616255 (= call!616260 (derivationStepZipperDown!1837 (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002)))) (Context!11987 (t!379847 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) (h!72451 s!2326)))))

(declare-fun b!6788454 () Bool)

(declare-fun e!4097513 () Bool)

(assert (=> b!6788454 (= e!4097513 (nullable!6588 (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))))))

(declare-fun e!4097514 () (InoxSet Context!11986))

(declare-fun b!6788455 () Bool)

(assert (=> b!6788455 (= e!4097514 ((_ map or) call!616260 (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) (h!72451 s!2326))))))

(declare-fun d!2132928 () Bool)

(declare-fun c!1261575 () Bool)

(assert (=> d!2132928 (= c!1261575 e!4097513)))

(declare-fun res!2774562 () Bool)

(assert (=> d!2132928 (=> (not res!2774562) (not e!4097513))))

(assert (=> d!2132928 (= res!2774562 ((_ is Cons!66002) (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002)))))))

(assert (=> d!2132928 (= (derivationStepZipperUp!1763 (Context!11987 (Cons!66002 r!7292 Nil!66002)) (h!72451 s!2326)) e!4097514)))

(declare-fun b!6788456 () Bool)

(assert (=> b!6788456 (= e!4097512 call!616260)))

(declare-fun b!6788457 () Bool)

(assert (=> b!6788457 (= e!4097514 e!4097512)))

(declare-fun c!1261574 () Bool)

(assert (=> b!6788457 (= c!1261574 ((_ is Cons!66002) (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002)))))))

(assert (= (and d!2132928 res!2774562) b!6788454))

(assert (= (and d!2132928 c!1261575) b!6788455))

(assert (= (and d!2132928 (not c!1261575)) b!6788457))

(assert (= (and b!6788457 c!1261574) b!6788456))

(assert (= (and b!6788457 (not c!1261574)) b!6788453))

(assert (= (or b!6788455 b!6788456) bm!616255))

(declare-fun m!7536338 () Bool)

(assert (=> bm!616255 m!7536338))

(declare-fun m!7536340 () Bool)

(assert (=> b!6788454 m!7536340))

(declare-fun m!7536342 () Bool)

(assert (=> b!6788455 m!7536342))

(assert (=> b!6787902 d!2132928))

(declare-fun bs!1808516 () Bool)

(declare-fun d!2132934 () Bool)

(assert (= bs!1808516 (and d!2132934 b!6787899)))

(declare-fun lambda!382358 () Int)

(assert (=> bs!1808516 (= lambda!382358 lambda!382297)))

(declare-fun bs!1808517 () Bool)

(assert (= bs!1808517 (and d!2132934 d!2132910)))

(assert (=> bs!1808517 (= lambda!382358 lambda!382355)))

(assert (=> d!2132934 true))

(assert (=> d!2132934 (= (derivationStepZipper!2553 z!1189 (h!72451 s!2326)) (flatMap!2090 z!1189 lambda!382358))))

(declare-fun bs!1808518 () Bool)

(assert (= bs!1808518 d!2132934))

(declare-fun m!7536344 () Bool)

(assert (=> bs!1808518 m!7536344))

(assert (=> b!6787902 d!2132934))

(declare-fun d!2132936 () Bool)

(declare-fun isEmpty!38373 (Option!16496) Bool)

(assert (=> d!2132936 (= (isDefined!13199 (findConcatSeparation!2910 (reg!16938 r!7292) r!7292 Nil!66003 s!2326 s!2326)) (not (isEmpty!38373 (findConcatSeparation!2910 (reg!16938 r!7292) r!7292 Nil!66003 s!2326 s!2326))))))

(declare-fun bs!1808519 () Bool)

(assert (= bs!1808519 d!2132936))

(assert (=> bs!1808519 m!7535924))

(declare-fun m!7536346 () Bool)

(assert (=> bs!1808519 m!7536346))

(assert (=> b!6787882 d!2132936))

(declare-fun d!2132938 () Bool)

(declare-fun choose!50559 (Int) Bool)

(assert (=> d!2132938 (= (Exists!3677 lambda!382295) (choose!50559 lambda!382295))))

(declare-fun bs!1808520 () Bool)

(assert (= bs!1808520 d!2132938))

(declare-fun m!7536348 () Bool)

(assert (=> bs!1808520 m!7536348))

(assert (=> b!6787882 d!2132938))

(declare-fun bs!1808521 () Bool)

(declare-fun d!2132940 () Bool)

(assert (= bs!1808521 (and d!2132940 b!6788209)))

(declare-fun lambda!382363 () Int)

(assert (=> bs!1808521 (not (= lambda!382363 lambda!382330))))

(declare-fun bs!1808522 () Bool)

(assert (= bs!1808522 (and d!2132940 b!6787882)))

(assert (=> bs!1808522 (not (= lambda!382363 lambda!382295))))

(assert (=> bs!1808522 (not (= lambda!382363 lambda!382296))))

(declare-fun bs!1808523 () Bool)

(assert (= bs!1808523 (and d!2132940 b!6788208)))

(assert (=> bs!1808523 (not (= lambda!382363 lambda!382329))))

(assert (=> bs!1808522 (= lambda!382363 lambda!382294)))

(assert (=> d!2132940 true))

(assert (=> d!2132940 true))

(assert (=> d!2132940 true))

(declare-fun lambda!382364 () Int)

(assert (=> bs!1808521 (= (and (= (reg!16938 r!7292) (regOne!33730 lt!2445914)) (= r!7292 (regTwo!33730 lt!2445914))) (= lambda!382364 lambda!382330))))

(assert (=> bs!1808522 (not (= lambda!382364 lambda!382295))))

(declare-fun bs!1808524 () Bool)

(assert (= bs!1808524 d!2132940))

(assert (=> bs!1808524 (not (= lambda!382364 lambda!382363))))

(assert (=> bs!1808522 (= lambda!382364 lambda!382296)))

(assert (=> bs!1808523 (not (= lambda!382364 lambda!382329))))

(assert (=> bs!1808522 (not (= lambda!382364 lambda!382294))))

(assert (=> d!2132940 true))

(assert (=> d!2132940 true))

(assert (=> d!2132940 true))

(assert (=> d!2132940 (= (Exists!3677 lambda!382363) (Exists!3677 lambda!382364))))

(declare-fun lt!2445994 () Unit!159909)

(declare-fun choose!50560 (Regex!16609 Regex!16609 List!66127) Unit!159909)

(assert (=> d!2132940 (= lt!2445994 (choose!50560 (reg!16938 r!7292) r!7292 s!2326))))

(assert (=> d!2132940 (validRegex!8345 (reg!16938 r!7292))))

(assert (=> d!2132940 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2204 (reg!16938 r!7292) r!7292 s!2326) lt!2445994)))

(declare-fun m!7536350 () Bool)

(assert (=> bs!1808524 m!7536350))

(declare-fun m!7536352 () Bool)

(assert (=> bs!1808524 m!7536352))

(declare-fun m!7536354 () Bool)

(assert (=> bs!1808524 m!7536354))

(declare-fun m!7536356 () Bool)

(assert (=> bs!1808524 m!7536356))

(assert (=> b!6787882 d!2132940))

(declare-fun bs!1808533 () Bool)

(declare-fun d!2132942 () Bool)

(assert (= bs!1808533 (and d!2132942 b!6788209)))

(declare-fun lambda!382372 () Int)

(assert (=> bs!1808533 (not (= lambda!382372 lambda!382330))))

(declare-fun bs!1808534 () Bool)

(assert (= bs!1808534 (and d!2132942 d!2132940)))

(assert (=> bs!1808534 (not (= lambda!382372 lambda!382364))))

(declare-fun bs!1808535 () Bool)

(assert (= bs!1808535 (and d!2132942 b!6787882)))

(assert (=> bs!1808535 (not (= lambda!382372 lambda!382295))))

(assert (=> bs!1808534 (= (= (Star!16609 (reg!16938 r!7292)) r!7292) (= lambda!382372 lambda!382363))))

(assert (=> bs!1808535 (not (= lambda!382372 lambda!382296))))

(declare-fun bs!1808536 () Bool)

(assert (= bs!1808536 (and d!2132942 b!6788208)))

(assert (=> bs!1808536 (not (= lambda!382372 lambda!382329))))

(assert (=> bs!1808535 (= (= (Star!16609 (reg!16938 r!7292)) r!7292) (= lambda!382372 lambda!382294))))

(assert (=> d!2132942 true))

(assert (=> d!2132942 true))

(declare-fun lambda!382373 () Int)

(assert (=> bs!1808533 (not (= lambda!382373 lambda!382330))))

(declare-fun bs!1808537 () Bool)

(assert (= bs!1808537 d!2132942))

(assert (=> bs!1808537 (not (= lambda!382373 lambda!382372))))

(assert (=> bs!1808534 (not (= lambda!382373 lambda!382364))))

(assert (=> bs!1808535 (= (= (Star!16609 (reg!16938 r!7292)) r!7292) (= lambda!382373 lambda!382295))))

(assert (=> bs!1808534 (not (= lambda!382373 lambda!382363))))

(assert (=> bs!1808535 (not (= lambda!382373 lambda!382296))))

(assert (=> bs!1808536 (= (and (= (reg!16938 r!7292) (reg!16938 lt!2445914)) (= (Star!16609 (reg!16938 r!7292)) lt!2445914)) (= lambda!382373 lambda!382329))))

(assert (=> bs!1808535 (not (= lambda!382373 lambda!382294))))

(assert (=> d!2132942 true))

(assert (=> d!2132942 true))

(assert (=> d!2132942 (= (Exists!3677 lambda!382372) (Exists!3677 lambda!382373))))

(declare-fun lt!2446003 () Unit!159909)

(declare-fun choose!50561 (Regex!16609 List!66127) Unit!159909)

(assert (=> d!2132942 (= lt!2446003 (choose!50561 (reg!16938 r!7292) s!2326))))

(assert (=> d!2132942 (validRegex!8345 (reg!16938 r!7292))))

(assert (=> d!2132942 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!768 (reg!16938 r!7292) s!2326) lt!2446003)))

(declare-fun m!7536382 () Bool)

(assert (=> bs!1808537 m!7536382))

(declare-fun m!7536384 () Bool)

(assert (=> bs!1808537 m!7536384))

(declare-fun m!7536386 () Bool)

(assert (=> bs!1808537 m!7536386))

(assert (=> bs!1808537 m!7536356))

(assert (=> b!6787882 d!2132942))

(declare-fun d!2132946 () Bool)

(assert (=> d!2132946 (= (isEmpty!38370 s!2326) ((_ is Nil!66003) s!2326))))

(assert (=> b!6787882 d!2132946))

(declare-fun d!2132948 () Bool)

(assert (=> d!2132948 (= (Exists!3677 lambda!382296) (choose!50559 lambda!382296))))

(declare-fun bs!1808538 () Bool)

(assert (= bs!1808538 d!2132948))

(declare-fun m!7536390 () Bool)

(assert (=> bs!1808538 m!7536390))

(assert (=> b!6787882 d!2132948))

(declare-fun b!6788579 () Bool)

(declare-fun lt!2446011 () Unit!159909)

(declare-fun lt!2446012 () Unit!159909)

(assert (=> b!6788579 (= lt!2446011 lt!2446012)))

(declare-fun ++!14764 (List!66127 List!66127) List!66127)

(assert (=> b!6788579 (= (++!14764 (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003)) (t!379848 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2729 (List!66127 C!33488 List!66127 List!66127) Unit!159909)

(assert (=> b!6788579 (= lt!2446012 (lemmaMoveElementToOtherListKeepsConcatEq!2729 Nil!66003 (h!72451 s!2326) (t!379848 s!2326) s!2326))))

(declare-fun e!4097573 () Option!16496)

(assert (=> b!6788579 (= e!4097573 (findConcatSeparation!2910 (reg!16938 r!7292) r!7292 (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003)) (t!379848 s!2326) s!2326))))

(declare-fun d!2132950 () Bool)

(declare-fun e!4097576 () Bool)

(assert (=> d!2132950 e!4097576))

(declare-fun res!2774613 () Bool)

(assert (=> d!2132950 (=> res!2774613 e!4097576)))

(declare-fun e!4097575 () Bool)

(assert (=> d!2132950 (= res!2774613 e!4097575)))

(declare-fun res!2774614 () Bool)

(assert (=> d!2132950 (=> (not res!2774614) (not e!4097575))))

(declare-fun lt!2446010 () Option!16496)

(assert (=> d!2132950 (= res!2774614 (isDefined!13199 lt!2446010))))

(declare-fun e!4097577 () Option!16496)

(assert (=> d!2132950 (= lt!2446010 e!4097577)))

(declare-fun c!1261586 () Bool)

(declare-fun e!4097574 () Bool)

(assert (=> d!2132950 (= c!1261586 e!4097574)))

(declare-fun res!2774612 () Bool)

(assert (=> d!2132950 (=> (not res!2774612) (not e!4097574))))

(assert (=> d!2132950 (= res!2774612 (matchR!8792 (reg!16938 r!7292) Nil!66003))))

(assert (=> d!2132950 (validRegex!8345 (reg!16938 r!7292))))

(assert (=> d!2132950 (= (findConcatSeparation!2910 (reg!16938 r!7292) r!7292 Nil!66003 s!2326 s!2326) lt!2446010)))

(declare-fun b!6788580 () Bool)

(declare-fun res!2774610 () Bool)

(assert (=> b!6788580 (=> (not res!2774610) (not e!4097575))))

(declare-fun get!22982 (Option!16496) tuple2!67168)

(assert (=> b!6788580 (= res!2774610 (matchR!8792 (reg!16938 r!7292) (_1!36887 (get!22982 lt!2446010))))))

(declare-fun b!6788581 () Bool)

(assert (=> b!6788581 (= e!4097577 (Some!16495 (tuple2!67169 Nil!66003 s!2326)))))

(declare-fun b!6788582 () Bool)

(assert (=> b!6788582 (= e!4097574 (matchR!8792 r!7292 s!2326))))

(declare-fun b!6788583 () Bool)

(assert (=> b!6788583 (= e!4097573 None!16495)))

(declare-fun b!6788584 () Bool)

(assert (=> b!6788584 (= e!4097576 (not (isDefined!13199 lt!2446010)))))

(declare-fun b!6788585 () Bool)

(assert (=> b!6788585 (= e!4097575 (= (++!14764 (_1!36887 (get!22982 lt!2446010)) (_2!36887 (get!22982 lt!2446010))) s!2326))))

(declare-fun b!6788586 () Bool)

(declare-fun res!2774611 () Bool)

(assert (=> b!6788586 (=> (not res!2774611) (not e!4097575))))

(assert (=> b!6788586 (= res!2774611 (matchR!8792 r!7292 (_2!36887 (get!22982 lt!2446010))))))

(declare-fun b!6788587 () Bool)

(assert (=> b!6788587 (= e!4097577 e!4097573)))

(declare-fun c!1261587 () Bool)

(assert (=> b!6788587 (= c!1261587 ((_ is Nil!66003) s!2326))))

(assert (= (and d!2132950 res!2774612) b!6788582))

(assert (= (and d!2132950 c!1261586) b!6788581))

(assert (= (and d!2132950 (not c!1261586)) b!6788587))

(assert (= (and b!6788587 c!1261587) b!6788583))

(assert (= (and b!6788587 (not c!1261587)) b!6788579))

(assert (= (and d!2132950 res!2774614) b!6788580))

(assert (= (and b!6788580 res!2774610) b!6788586))

(assert (= (and b!6788586 res!2774611) b!6788585))

(assert (= (and d!2132950 (not res!2774613)) b!6788584))

(assert (=> b!6788582 m!7535882))

(declare-fun m!7536394 () Bool)

(assert (=> d!2132950 m!7536394))

(declare-fun m!7536396 () Bool)

(assert (=> d!2132950 m!7536396))

(assert (=> d!2132950 m!7536356))

(declare-fun m!7536398 () Bool)

(assert (=> b!6788585 m!7536398))

(declare-fun m!7536400 () Bool)

(assert (=> b!6788585 m!7536400))

(assert (=> b!6788586 m!7536398))

(declare-fun m!7536402 () Bool)

(assert (=> b!6788586 m!7536402))

(assert (=> b!6788580 m!7536398))

(declare-fun m!7536404 () Bool)

(assert (=> b!6788580 m!7536404))

(declare-fun m!7536406 () Bool)

(assert (=> b!6788579 m!7536406))

(assert (=> b!6788579 m!7536406))

(declare-fun m!7536408 () Bool)

(assert (=> b!6788579 m!7536408))

(declare-fun m!7536410 () Bool)

(assert (=> b!6788579 m!7536410))

(assert (=> b!6788579 m!7536406))

(declare-fun m!7536412 () Bool)

(assert (=> b!6788579 m!7536412))

(assert (=> b!6788584 m!7536394))

(assert (=> b!6787882 d!2132950))

(declare-fun d!2132960 () Bool)

(assert (=> d!2132960 (= (Exists!3677 lambda!382294) (choose!50559 lambda!382294))))

(declare-fun bs!1808543 () Bool)

(assert (= bs!1808543 d!2132960))

(declare-fun m!7536414 () Bool)

(assert (=> bs!1808543 m!7536414))

(assert (=> b!6787882 d!2132960))

(declare-fun bs!1808544 () Bool)

(declare-fun d!2132962 () Bool)

(assert (= bs!1808544 (and d!2132962 b!6788209)))

(declare-fun lambda!382376 () Int)

(assert (=> bs!1808544 (not (= lambda!382376 lambda!382330))))

(declare-fun bs!1808545 () Bool)

(assert (= bs!1808545 (and d!2132962 d!2132942)))

(assert (=> bs!1808545 (= (= r!7292 (Star!16609 (reg!16938 r!7292))) (= lambda!382376 lambda!382372))))

(declare-fun bs!1808546 () Bool)

(assert (= bs!1808546 (and d!2132962 d!2132940)))

(assert (=> bs!1808546 (not (= lambda!382376 lambda!382364))))

(declare-fun bs!1808547 () Bool)

(assert (= bs!1808547 (and d!2132962 b!6787882)))

(assert (=> bs!1808547 (not (= lambda!382376 lambda!382295))))

(assert (=> bs!1808547 (not (= lambda!382376 lambda!382296))))

(declare-fun bs!1808548 () Bool)

(assert (= bs!1808548 (and d!2132962 b!6788208)))

(assert (=> bs!1808548 (not (= lambda!382376 lambda!382329))))

(assert (=> bs!1808547 (= lambda!382376 lambda!382294)))

(assert (=> bs!1808545 (not (= lambda!382376 lambda!382373))))

(assert (=> bs!1808546 (= lambda!382376 lambda!382363)))

(assert (=> d!2132962 true))

(assert (=> d!2132962 true))

(assert (=> d!2132962 true))

(assert (=> d!2132962 (= (isDefined!13199 (findConcatSeparation!2910 (reg!16938 r!7292) r!7292 Nil!66003 s!2326 s!2326)) (Exists!3677 lambda!382376))))

(declare-fun lt!2446015 () Unit!159909)

(declare-fun choose!50562 (Regex!16609 Regex!16609 List!66127) Unit!159909)

(assert (=> d!2132962 (= lt!2446015 (choose!50562 (reg!16938 r!7292) r!7292 s!2326))))

(assert (=> d!2132962 (validRegex!8345 (reg!16938 r!7292))))

(assert (=> d!2132962 (= (lemmaFindConcatSeparationEquivalentToExists!2674 (reg!16938 r!7292) r!7292 s!2326) lt!2446015)))

(declare-fun bs!1808549 () Bool)

(assert (= bs!1808549 d!2132962))

(assert (=> bs!1808549 m!7535924))

(assert (=> bs!1808549 m!7535926))

(declare-fun m!7536416 () Bool)

(assert (=> bs!1808549 m!7536416))

(assert (=> bs!1808549 m!7536356))

(assert (=> bs!1808549 m!7535924))

(declare-fun m!7536418 () Bool)

(assert (=> bs!1808549 m!7536418))

(assert (=> b!6787882 d!2132962))

(declare-fun d!2132964 () Bool)

(declare-fun c!1261590 () Bool)

(assert (=> d!2132964 (= c!1261590 (isEmpty!38370 s!2326))))

(declare-fun e!4097582 () Bool)

(assert (=> d!2132964 (= (matchZipper!2595 z!1189 s!2326) e!4097582)))

(declare-fun b!6788596 () Bool)

(declare-fun nullableZipper!2316 ((InoxSet Context!11986)) Bool)

(assert (=> b!6788596 (= e!4097582 (nullableZipper!2316 z!1189))))

(declare-fun b!6788597 () Bool)

(assert (=> b!6788597 (= e!4097582 (matchZipper!2595 (derivationStepZipper!2553 z!1189 (head!13630 s!2326)) (tail!12715 s!2326)))))

(assert (= (and d!2132964 c!1261590) b!6788596))

(assert (= (and d!2132964 (not c!1261590)) b!6788597))

(assert (=> d!2132964 m!7535918))

(declare-fun m!7536420 () Bool)

(assert (=> b!6788596 m!7536420))

(assert (=> b!6788597 m!7536168))

(assert (=> b!6788597 m!7536168))

(declare-fun m!7536422 () Bool)

(assert (=> b!6788597 m!7536422))

(assert (=> b!6788597 m!7536172))

(assert (=> b!6788597 m!7536422))

(assert (=> b!6788597 m!7536172))

(declare-fun m!7536424 () Bool)

(assert (=> b!6788597 m!7536424))

(assert (=> b!6787883 d!2132964))

(declare-fun bs!1808550 () Bool)

(declare-fun b!6788602 () Bool)

(assert (= bs!1808550 (and b!6788602 b!6788209)))

(declare-fun lambda!382377 () Int)

(assert (=> bs!1808550 (not (= lambda!382377 lambda!382330))))

(declare-fun bs!1808551 () Bool)

(assert (= bs!1808551 (and b!6788602 d!2132942)))

(assert (=> bs!1808551 (not (= lambda!382377 lambda!382372))))

(declare-fun bs!1808552 () Bool)

(assert (= bs!1808552 (and b!6788602 b!6787882)))

(assert (=> bs!1808552 (= lambda!382377 lambda!382295)))

(assert (=> bs!1808552 (not (= lambda!382377 lambda!382296))))

(declare-fun bs!1808553 () Bool)

(assert (= bs!1808553 (and b!6788602 b!6788208)))

(assert (=> bs!1808553 (= (and (= (reg!16938 r!7292) (reg!16938 lt!2445914)) (= r!7292 lt!2445914)) (= lambda!382377 lambda!382329))))

(assert (=> bs!1808552 (not (= lambda!382377 lambda!382294))))

(declare-fun bs!1808554 () Bool)

(assert (= bs!1808554 (and b!6788602 d!2132940)))

(assert (=> bs!1808554 (not (= lambda!382377 lambda!382364))))

(declare-fun bs!1808555 () Bool)

(assert (= bs!1808555 (and b!6788602 d!2132962)))

(assert (=> bs!1808555 (not (= lambda!382377 lambda!382376))))

(assert (=> bs!1808551 (= (= r!7292 (Star!16609 (reg!16938 r!7292))) (= lambda!382377 lambda!382373))))

(assert (=> bs!1808554 (not (= lambda!382377 lambda!382363))))

(assert (=> b!6788602 true))

(assert (=> b!6788602 true))

(declare-fun bs!1808556 () Bool)

(declare-fun b!6788603 () Bool)

(assert (= bs!1808556 (and b!6788603 b!6788209)))

(declare-fun lambda!382378 () Int)

(assert (=> bs!1808556 (= (and (= (regOne!33730 r!7292) (regOne!33730 lt!2445914)) (= (regTwo!33730 r!7292) (regTwo!33730 lt!2445914))) (= lambda!382378 lambda!382330))))

(declare-fun bs!1808557 () Bool)

(assert (= bs!1808557 (and b!6788603 d!2132942)))

(assert (=> bs!1808557 (not (= lambda!382378 lambda!382372))))

(declare-fun bs!1808558 () Bool)

(assert (= bs!1808558 (and b!6788603 b!6788602)))

(assert (=> bs!1808558 (not (= lambda!382378 lambda!382377))))

(declare-fun bs!1808559 () Bool)

(assert (= bs!1808559 (and b!6788603 b!6787882)))

(assert (=> bs!1808559 (not (= lambda!382378 lambda!382295))))

(assert (=> bs!1808559 (= (and (= (regOne!33730 r!7292) (reg!16938 r!7292)) (= (regTwo!33730 r!7292) r!7292)) (= lambda!382378 lambda!382296))))

(declare-fun bs!1808560 () Bool)

(assert (= bs!1808560 (and b!6788603 b!6788208)))

(assert (=> bs!1808560 (not (= lambda!382378 lambda!382329))))

(assert (=> bs!1808559 (not (= lambda!382378 lambda!382294))))

(declare-fun bs!1808561 () Bool)

(assert (= bs!1808561 (and b!6788603 d!2132940)))

(assert (=> bs!1808561 (= (and (= (regOne!33730 r!7292) (reg!16938 r!7292)) (= (regTwo!33730 r!7292) r!7292)) (= lambda!382378 lambda!382364))))

(declare-fun bs!1808562 () Bool)

(assert (= bs!1808562 (and b!6788603 d!2132962)))

(assert (=> bs!1808562 (not (= lambda!382378 lambda!382376))))

(assert (=> bs!1808557 (not (= lambda!382378 lambda!382373))))

(assert (=> bs!1808561 (not (= lambda!382378 lambda!382363))))

(assert (=> b!6788603 true))

(assert (=> b!6788603 true))

(declare-fun b!6788598 () Bool)

(declare-fun e!4097585 () Bool)

(declare-fun e!4097586 () Bool)

(assert (=> b!6788598 (= e!4097585 e!4097586)))

(declare-fun res!2774620 () Bool)

(assert (=> b!6788598 (= res!2774620 (matchRSpec!3710 (regOne!33731 r!7292) s!2326))))

(assert (=> b!6788598 (=> res!2774620 e!4097586)))

(declare-fun b!6788599 () Bool)

(declare-fun e!4097587 () Bool)

(assert (=> b!6788599 (= e!4097585 e!4097587)))

(declare-fun c!1261591 () Bool)

(assert (=> b!6788599 (= c!1261591 ((_ is Star!16609) r!7292))))

(declare-fun b!6788600 () Bool)

(declare-fun c!1261593 () Bool)

(assert (=> b!6788600 (= c!1261593 ((_ is Union!16609) r!7292))))

(declare-fun e!4097589 () Bool)

(assert (=> b!6788600 (= e!4097589 e!4097585)))

(declare-fun b!6788601 () Bool)

(assert (=> b!6788601 (= e!4097586 (matchRSpec!3710 (regTwo!33731 r!7292) s!2326))))

(declare-fun call!616262 () Bool)

(declare-fun bm!616256 () Bool)

(assert (=> bm!616256 (= call!616262 (Exists!3677 (ite c!1261591 lambda!382377 lambda!382378)))))

(assert (=> b!6788603 (= e!4097587 call!616262)))

(declare-fun b!6788604 () Bool)

(declare-fun e!4097588 () Bool)

(declare-fun call!616261 () Bool)

(assert (=> b!6788604 (= e!4097588 call!616261)))

(declare-fun b!6788605 () Bool)

(declare-fun c!1261592 () Bool)

(assert (=> b!6788605 (= c!1261592 ((_ is ElementMatch!16609) r!7292))))

(declare-fun e!4097584 () Bool)

(assert (=> b!6788605 (= e!4097584 e!4097589)))

(declare-fun b!6788606 () Bool)

(assert (=> b!6788606 (= e!4097589 (= s!2326 (Cons!66003 (c!1261391 r!7292) Nil!66003)))))

(declare-fun b!6788607 () Bool)

(declare-fun res!2774621 () Bool)

(declare-fun e!4097583 () Bool)

(assert (=> b!6788607 (=> res!2774621 e!4097583)))

(assert (=> b!6788607 (= res!2774621 call!616261)))

(assert (=> b!6788607 (= e!4097587 e!4097583)))

(declare-fun bm!616257 () Bool)

(assert (=> bm!616257 (= call!616261 (isEmpty!38370 s!2326))))

(declare-fun b!6788608 () Bool)

(assert (=> b!6788608 (= e!4097588 e!4097584)))

(declare-fun res!2774619 () Bool)

(assert (=> b!6788608 (= res!2774619 (not ((_ is EmptyLang!16609) r!7292)))))

(assert (=> b!6788608 (=> (not res!2774619) (not e!4097584))))

(assert (=> b!6788602 (= e!4097583 call!616262)))

(declare-fun d!2132966 () Bool)

(declare-fun c!1261594 () Bool)

(assert (=> d!2132966 (= c!1261594 ((_ is EmptyExpr!16609) r!7292))))

(assert (=> d!2132966 (= (matchRSpec!3710 r!7292 s!2326) e!4097588)))

(assert (= (and d!2132966 c!1261594) b!6788604))

(assert (= (and d!2132966 (not c!1261594)) b!6788608))

(assert (= (and b!6788608 res!2774619) b!6788605))

(assert (= (and b!6788605 c!1261592) b!6788606))

(assert (= (and b!6788605 (not c!1261592)) b!6788600))

(assert (= (and b!6788600 c!1261593) b!6788598))

(assert (= (and b!6788600 (not c!1261593)) b!6788599))

(assert (= (and b!6788598 (not res!2774620)) b!6788601))

(assert (= (and b!6788599 c!1261591) b!6788607))

(assert (= (and b!6788599 (not c!1261591)) b!6788603))

(assert (= (and b!6788607 (not res!2774621)) b!6788602))

(assert (= (or b!6788602 b!6788603) bm!616256))

(assert (= (or b!6788604 b!6788607) bm!616257))

(declare-fun m!7536426 () Bool)

(assert (=> b!6788598 m!7536426))

(declare-fun m!7536428 () Bool)

(assert (=> b!6788601 m!7536428))

(declare-fun m!7536430 () Bool)

(assert (=> bm!616256 m!7536430))

(assert (=> bm!616257 m!7535918))

(assert (=> b!6787903 d!2132966))

(declare-fun b!6788609 () Bool)

(declare-fun e!4097590 () Bool)

(declare-fun e!4097591 () Bool)

(assert (=> b!6788609 (= e!4097590 e!4097591)))

(declare-fun res!2774627 () Bool)

(assert (=> b!6788609 (=> res!2774627 e!4097591)))

(declare-fun call!616263 () Bool)

(assert (=> b!6788609 (= res!2774627 call!616263)))

(declare-fun b!6788610 () Bool)

(declare-fun e!4097596 () Bool)

(assert (=> b!6788610 (= e!4097596 e!4097590)))

(declare-fun res!2774629 () Bool)

(assert (=> b!6788610 (=> (not res!2774629) (not e!4097590))))

(declare-fun lt!2446016 () Bool)

(assert (=> b!6788610 (= res!2774629 (not lt!2446016))))

(declare-fun d!2132968 () Bool)

(declare-fun e!4097592 () Bool)

(assert (=> d!2132968 e!4097592))

(declare-fun c!1261596 () Bool)

(assert (=> d!2132968 (= c!1261596 ((_ is EmptyExpr!16609) r!7292))))

(declare-fun e!4097593 () Bool)

(assert (=> d!2132968 (= lt!2446016 e!4097593)))

(declare-fun c!1261597 () Bool)

(assert (=> d!2132968 (= c!1261597 (isEmpty!38370 s!2326))))

(assert (=> d!2132968 (validRegex!8345 r!7292)))

(assert (=> d!2132968 (= (matchR!8792 r!7292 s!2326) lt!2446016)))

(declare-fun b!6788611 () Bool)

(declare-fun res!2774628 () Bool)

(assert (=> b!6788611 (=> res!2774628 e!4097596)))

(assert (=> b!6788611 (= res!2774628 (not ((_ is ElementMatch!16609) r!7292)))))

(declare-fun e!4097594 () Bool)

(assert (=> b!6788611 (= e!4097594 e!4097596)))

(declare-fun b!6788612 () Bool)

(assert (=> b!6788612 (= e!4097593 (matchR!8792 (derivativeStep!5273 r!7292 (head!13630 s!2326)) (tail!12715 s!2326)))))

(declare-fun bm!616258 () Bool)

(assert (=> bm!616258 (= call!616263 (isEmpty!38370 s!2326))))

(declare-fun b!6788613 () Bool)

(declare-fun e!4097595 () Bool)

(assert (=> b!6788613 (= e!4097595 (= (head!13630 s!2326) (c!1261391 r!7292)))))

(declare-fun b!6788614 () Bool)

(declare-fun res!2774626 () Bool)

(assert (=> b!6788614 (=> res!2774626 e!4097591)))

(assert (=> b!6788614 (= res!2774626 (not (isEmpty!38370 (tail!12715 s!2326))))))

(declare-fun b!6788615 () Bool)

(declare-fun res!2774624 () Bool)

(assert (=> b!6788615 (=> (not res!2774624) (not e!4097595))))

(assert (=> b!6788615 (= res!2774624 (not call!616263))))

(declare-fun b!6788616 () Bool)

(assert (=> b!6788616 (= e!4097592 (= lt!2446016 call!616263))))

(declare-fun b!6788617 () Bool)

(declare-fun res!2774622 () Bool)

(assert (=> b!6788617 (=> (not res!2774622) (not e!4097595))))

(assert (=> b!6788617 (= res!2774622 (isEmpty!38370 (tail!12715 s!2326)))))

(declare-fun b!6788618 () Bool)

(assert (=> b!6788618 (= e!4097592 e!4097594)))

(declare-fun c!1261595 () Bool)

(assert (=> b!6788618 (= c!1261595 ((_ is EmptyLang!16609) r!7292))))

(declare-fun b!6788619 () Bool)

(assert (=> b!6788619 (= e!4097593 (nullable!6588 r!7292))))

(declare-fun b!6788620 () Bool)

(assert (=> b!6788620 (= e!4097591 (not (= (head!13630 s!2326) (c!1261391 r!7292))))))

(declare-fun b!6788621 () Bool)

(declare-fun res!2774625 () Bool)

(assert (=> b!6788621 (=> res!2774625 e!4097596)))

(assert (=> b!6788621 (= res!2774625 e!4097595)))

(declare-fun res!2774623 () Bool)

(assert (=> b!6788621 (=> (not res!2774623) (not e!4097595))))

(assert (=> b!6788621 (= res!2774623 lt!2446016)))

(declare-fun b!6788622 () Bool)

(assert (=> b!6788622 (= e!4097594 (not lt!2446016))))

(assert (= (and d!2132968 c!1261597) b!6788619))

(assert (= (and d!2132968 (not c!1261597)) b!6788612))

(assert (= (and d!2132968 c!1261596) b!6788616))

(assert (= (and d!2132968 (not c!1261596)) b!6788618))

(assert (= (and b!6788618 c!1261595) b!6788622))

(assert (= (and b!6788618 (not c!1261595)) b!6788611))

(assert (= (and b!6788611 (not res!2774628)) b!6788621))

(assert (= (and b!6788621 res!2774623) b!6788615))

(assert (= (and b!6788615 res!2774624) b!6788617))

(assert (= (and b!6788617 res!2774622) b!6788613))

(assert (= (and b!6788621 (not res!2774625)) b!6788610))

(assert (= (and b!6788610 res!2774629) b!6788609))

(assert (= (and b!6788609 (not res!2774627)) b!6788614))

(assert (= (and b!6788614 (not res!2774626)) b!6788620))

(assert (= (or b!6788616 b!6788609 b!6788615) bm!616258))

(assert (=> b!6788612 m!7536168))

(assert (=> b!6788612 m!7536168))

(declare-fun m!7536432 () Bool)

(assert (=> b!6788612 m!7536432))

(assert (=> b!6788612 m!7536172))

(assert (=> b!6788612 m!7536432))

(assert (=> b!6788612 m!7536172))

(declare-fun m!7536434 () Bool)

(assert (=> b!6788612 m!7536434))

(assert (=> b!6788620 m!7536168))

(assert (=> b!6788617 m!7536172))

(assert (=> b!6788617 m!7536172))

(assert (=> b!6788617 m!7536176))

(assert (=> d!2132968 m!7535918))

(assert (=> d!2132968 m!7535916))

(assert (=> b!6788614 m!7536172))

(assert (=> b!6788614 m!7536172))

(assert (=> b!6788614 m!7536176))

(declare-fun m!7536436 () Bool)

(assert (=> b!6788619 m!7536436))

(assert (=> bm!616258 m!7535918))

(assert (=> b!6788613 m!7536168))

(assert (=> b!6787903 d!2132968))

(declare-fun d!2132970 () Bool)

(assert (=> d!2132970 (= (matchR!8792 r!7292 s!2326) (matchRSpec!3710 r!7292 s!2326))))

(declare-fun lt!2446017 () Unit!159909)

(assert (=> d!2132970 (= lt!2446017 (choose!50558 r!7292 s!2326))))

(assert (=> d!2132970 (validRegex!8345 r!7292)))

(assert (=> d!2132970 (= (mainMatchTheorem!3710 r!7292 s!2326) lt!2446017)))

(declare-fun bs!1808563 () Bool)

(assert (= bs!1808563 d!2132970))

(assert (=> bs!1808563 m!7535882))

(assert (=> bs!1808563 m!7535880))

(declare-fun m!7536438 () Bool)

(assert (=> bs!1808563 m!7536438))

(assert (=> bs!1808563 m!7535916))

(assert (=> b!6787903 d!2132970))

(declare-fun d!2132972 () Bool)

(declare-fun c!1261598 () Bool)

(assert (=> d!2132972 (= c!1261598 (isEmpty!38370 s!2326))))

(declare-fun e!4097597 () Bool)

(assert (=> d!2132972 (= (matchZipper!2595 lt!2445905 s!2326) e!4097597)))

(declare-fun b!6788623 () Bool)

(assert (=> b!6788623 (= e!4097597 (nullableZipper!2316 lt!2445905))))

(declare-fun b!6788624 () Bool)

(assert (=> b!6788624 (= e!4097597 (matchZipper!2595 (derivationStepZipper!2553 lt!2445905 (head!13630 s!2326)) (tail!12715 s!2326)))))

(assert (= (and d!2132972 c!1261598) b!6788623))

(assert (= (and d!2132972 (not c!1261598)) b!6788624))

(assert (=> d!2132972 m!7535918))

(declare-fun m!7536440 () Bool)

(assert (=> b!6788623 m!7536440))

(assert (=> b!6788624 m!7536168))

(assert (=> b!6788624 m!7536168))

(declare-fun m!7536442 () Bool)

(assert (=> b!6788624 m!7536442))

(assert (=> b!6788624 m!7536172))

(assert (=> b!6788624 m!7536442))

(assert (=> b!6788624 m!7536172))

(declare-fun m!7536444 () Bool)

(assert (=> b!6788624 m!7536444))

(assert (=> b!6787879 d!2132972))

(declare-fun d!2132974 () Bool)

(declare-fun c!1261599 () Bool)

(assert (=> d!2132974 (= c!1261599 (isEmpty!38370 (t!379848 s!2326)))))

(declare-fun e!4097598 () Bool)

(assert (=> d!2132974 (= (matchZipper!2595 (derivationStepZipper!2553 lt!2445905 (h!72451 s!2326)) (t!379848 s!2326)) e!4097598)))

(declare-fun b!6788625 () Bool)

(assert (=> b!6788625 (= e!4097598 (nullableZipper!2316 (derivationStepZipper!2553 lt!2445905 (h!72451 s!2326))))))

(declare-fun b!6788626 () Bool)

(assert (=> b!6788626 (= e!4097598 (matchZipper!2595 (derivationStepZipper!2553 (derivationStepZipper!2553 lt!2445905 (h!72451 s!2326)) (head!13630 (t!379848 s!2326))) (tail!12715 (t!379848 s!2326))))))

(assert (= (and d!2132974 c!1261599) b!6788625))

(assert (= (and d!2132974 (not c!1261599)) b!6788626))

(declare-fun m!7536446 () Bool)

(assert (=> d!2132974 m!7536446))

(assert (=> b!6788625 m!7535872))

(declare-fun m!7536448 () Bool)

(assert (=> b!6788625 m!7536448))

(declare-fun m!7536450 () Bool)

(assert (=> b!6788626 m!7536450))

(assert (=> b!6788626 m!7535872))

(assert (=> b!6788626 m!7536450))

(declare-fun m!7536452 () Bool)

(assert (=> b!6788626 m!7536452))

(declare-fun m!7536454 () Bool)

(assert (=> b!6788626 m!7536454))

(assert (=> b!6788626 m!7536452))

(assert (=> b!6788626 m!7536454))

(declare-fun m!7536456 () Bool)

(assert (=> b!6788626 m!7536456))

(assert (=> b!6787879 d!2132974))

(declare-fun bs!1808564 () Bool)

(declare-fun d!2132976 () Bool)

(assert (= bs!1808564 (and d!2132976 b!6787899)))

(declare-fun lambda!382379 () Int)

(assert (=> bs!1808564 (= lambda!382379 lambda!382297)))

(declare-fun bs!1808565 () Bool)

(assert (= bs!1808565 (and d!2132976 d!2132910)))

(assert (=> bs!1808565 (= lambda!382379 lambda!382355)))

(declare-fun bs!1808566 () Bool)

(assert (= bs!1808566 (and d!2132976 d!2132934)))

(assert (=> bs!1808566 (= lambda!382379 lambda!382358)))

(assert (=> d!2132976 true))

(assert (=> d!2132976 (= (derivationStepZipper!2553 lt!2445905 (h!72451 s!2326)) (flatMap!2090 lt!2445905 lambda!382379))))

(declare-fun bs!1808567 () Bool)

(assert (= bs!1808567 d!2132976))

(declare-fun m!7536458 () Bool)

(assert (=> bs!1808567 m!7536458))

(assert (=> b!6787879 d!2132976))

(declare-fun d!2132978 () Bool)

(declare-fun lt!2446018 () Regex!16609)

(assert (=> d!2132978 (validRegex!8345 lt!2446018)))

(assert (=> d!2132978 (= lt!2446018 (generalisedUnion!2453 (unfocusZipperList!2030 (Cons!66004 lt!2445912 Nil!66004))))))

(assert (=> d!2132978 (= (unfocusZipper!2351 (Cons!66004 lt!2445912 Nil!66004)) lt!2446018)))

(declare-fun bs!1808568 () Bool)

(assert (= bs!1808568 d!2132978))

(declare-fun m!7536460 () Bool)

(assert (=> bs!1808568 m!7536460))

(declare-fun m!7536462 () Bool)

(assert (=> bs!1808568 m!7536462))

(assert (=> bs!1808568 m!7536462))

(declare-fun m!7536464 () Bool)

(assert (=> bs!1808568 m!7536464))

(assert (=> b!6787909 d!2132978))

(declare-fun d!2132980 () Bool)

(assert (=> d!2132980 (= (flatMap!2090 z!1189 lambda!382297) (choose!50556 z!1189 lambda!382297))))

(declare-fun bs!1808569 () Bool)

(assert (= bs!1808569 d!2132980))

(declare-fun m!7536466 () Bool)

(assert (=> bs!1808569 m!7536466))

(assert (=> b!6787899 d!2132980))

(declare-fun b!6788627 () Bool)

(declare-fun e!4097599 () (InoxSet Context!11986))

(assert (=> b!6788627 (= e!4097599 ((as const (Array Context!11986 Bool)) false))))

(declare-fun bm!616259 () Bool)

(declare-fun call!616264 () (InoxSet Context!11986))

(assert (=> bm!616259 (= call!616264 (derivationStepZipperDown!1837 (h!72450 (exprs!6493 (h!72452 zl!343))) (Context!11987 (t!379847 (exprs!6493 (h!72452 zl!343)))) (h!72451 s!2326)))))

(declare-fun b!6788628 () Bool)

(declare-fun e!4097600 () Bool)

(assert (=> b!6788628 (= e!4097600 (nullable!6588 (h!72450 (exprs!6493 (h!72452 zl!343)))))))

(declare-fun b!6788629 () Bool)

(declare-fun e!4097601 () (InoxSet Context!11986))

(assert (=> b!6788629 (= e!4097601 ((_ map or) call!616264 (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 (h!72452 zl!343)))) (h!72451 s!2326))))))

(declare-fun d!2132982 () Bool)

(declare-fun c!1261601 () Bool)

(assert (=> d!2132982 (= c!1261601 e!4097600)))

(declare-fun res!2774630 () Bool)

(assert (=> d!2132982 (=> (not res!2774630) (not e!4097600))))

(assert (=> d!2132982 (= res!2774630 ((_ is Cons!66002) (exprs!6493 (h!72452 zl!343))))))

(assert (=> d!2132982 (= (derivationStepZipperUp!1763 (h!72452 zl!343) (h!72451 s!2326)) e!4097601)))

(declare-fun b!6788630 () Bool)

(assert (=> b!6788630 (= e!4097599 call!616264)))

(declare-fun b!6788631 () Bool)

(assert (=> b!6788631 (= e!4097601 e!4097599)))

(declare-fun c!1261600 () Bool)

(assert (=> b!6788631 (= c!1261600 ((_ is Cons!66002) (exprs!6493 (h!72452 zl!343))))))

(assert (= (and d!2132982 res!2774630) b!6788628))

(assert (= (and d!2132982 c!1261601) b!6788629))

(assert (= (and d!2132982 (not c!1261601)) b!6788631))

(assert (= (and b!6788631 c!1261600) b!6788630))

(assert (= (and b!6788631 (not c!1261600)) b!6788627))

(assert (= (or b!6788629 b!6788630) bm!616259))

(declare-fun m!7536468 () Bool)

(assert (=> bm!616259 m!7536468))

(declare-fun m!7536470 () Bool)

(assert (=> b!6788628 m!7536470))

(declare-fun m!7536472 () Bool)

(assert (=> b!6788629 m!7536472))

(assert (=> b!6787899 d!2132982))

(declare-fun d!2132984 () Bool)

(assert (=> d!2132984 (= (flatMap!2090 z!1189 lambda!382297) (dynLambda!26342 lambda!382297 (h!72452 zl!343)))))

(declare-fun lt!2446019 () Unit!159909)

(assert (=> d!2132984 (= lt!2446019 (choose!50557 z!1189 (h!72452 zl!343) lambda!382297))))

(assert (=> d!2132984 (= z!1189 (store ((as const (Array Context!11986 Bool)) false) (h!72452 zl!343) true))))

(assert (=> d!2132984 (= (lemmaFlatMapOnSingletonSet!1616 z!1189 (h!72452 zl!343) lambda!382297) lt!2446019)))

(declare-fun b_lambda!255673 () Bool)

(assert (=> (not b_lambda!255673) (not d!2132984)))

(declare-fun bs!1808570 () Bool)

(assert (= bs!1808570 d!2132984))

(assert (=> bs!1808570 m!7535944))

(declare-fun m!7536474 () Bool)

(assert (=> bs!1808570 m!7536474))

(declare-fun m!7536476 () Bool)

(assert (=> bs!1808570 m!7536476))

(declare-fun m!7536478 () Bool)

(assert (=> bs!1808570 m!7536478))

(assert (=> b!6787899 d!2132984))

(declare-fun b!6788650 () Bool)

(declare-fun res!2774645 () Bool)

(declare-fun e!4097619 () Bool)

(assert (=> b!6788650 (=> res!2774645 e!4097619)))

(assert (=> b!6788650 (= res!2774645 (not ((_ is Concat!25454) r!7292)))))

(declare-fun e!4097617 () Bool)

(assert (=> b!6788650 (= e!4097617 e!4097619)))

(declare-fun b!6788651 () Bool)

(declare-fun e!4097621 () Bool)

(assert (=> b!6788651 (= e!4097619 e!4097621)))

(declare-fun res!2774641 () Bool)

(assert (=> b!6788651 (=> (not res!2774641) (not e!4097621))))

(declare-fun call!616273 () Bool)

(assert (=> b!6788651 (= res!2774641 call!616273)))

(declare-fun b!6788652 () Bool)

(declare-fun e!4097616 () Bool)

(declare-fun call!616272 () Bool)

(assert (=> b!6788652 (= e!4097616 call!616272)))

(declare-fun b!6788653 () Bool)

(declare-fun call!616271 () Bool)

(assert (=> b!6788653 (= e!4097621 call!616271)))

(declare-fun d!2132986 () Bool)

(declare-fun res!2774644 () Bool)

(declare-fun e!4097618 () Bool)

(assert (=> d!2132986 (=> res!2774644 e!4097618)))

(assert (=> d!2132986 (= res!2774644 ((_ is ElementMatch!16609) r!7292))))

(assert (=> d!2132986 (= (validRegex!8345 r!7292) e!4097618)))

(declare-fun c!1261606 () Bool)

(declare-fun c!1261607 () Bool)

(declare-fun bm!616266 () Bool)

(assert (=> bm!616266 (= call!616272 (validRegex!8345 (ite c!1261606 (reg!16938 r!7292) (ite c!1261607 (regOne!33731 r!7292) (regOne!33730 r!7292)))))))

(declare-fun bm!616267 () Bool)

(assert (=> bm!616267 (= call!616271 (validRegex!8345 (ite c!1261607 (regTwo!33731 r!7292) (regTwo!33730 r!7292))))))

(declare-fun b!6788654 () Bool)

(declare-fun e!4097620 () Bool)

(assert (=> b!6788654 (= e!4097620 call!616271)))

(declare-fun b!6788655 () Bool)

(declare-fun res!2774642 () Bool)

(assert (=> b!6788655 (=> (not res!2774642) (not e!4097620))))

(assert (=> b!6788655 (= res!2774642 call!616273)))

(assert (=> b!6788655 (= e!4097617 e!4097620)))

(declare-fun bm!616268 () Bool)

(assert (=> bm!616268 (= call!616273 call!616272)))

(declare-fun b!6788656 () Bool)

(declare-fun e!4097622 () Bool)

(assert (=> b!6788656 (= e!4097622 e!4097617)))

(assert (=> b!6788656 (= c!1261607 ((_ is Union!16609) r!7292))))

(declare-fun b!6788657 () Bool)

(assert (=> b!6788657 (= e!4097618 e!4097622)))

(assert (=> b!6788657 (= c!1261606 ((_ is Star!16609) r!7292))))

(declare-fun b!6788658 () Bool)

(assert (=> b!6788658 (= e!4097622 e!4097616)))

(declare-fun res!2774643 () Bool)

(assert (=> b!6788658 (= res!2774643 (not (nullable!6588 (reg!16938 r!7292))))))

(assert (=> b!6788658 (=> (not res!2774643) (not e!4097616))))

(assert (= (and d!2132986 (not res!2774644)) b!6788657))

(assert (= (and b!6788657 c!1261606) b!6788658))

(assert (= (and b!6788657 (not c!1261606)) b!6788656))

(assert (= (and b!6788658 res!2774643) b!6788652))

(assert (= (and b!6788656 c!1261607) b!6788655))

(assert (= (and b!6788656 (not c!1261607)) b!6788650))

(assert (= (and b!6788655 res!2774642) b!6788654))

(assert (= (and b!6788650 (not res!2774645)) b!6788651))

(assert (= (and b!6788651 res!2774641) b!6788653))

(assert (= (or b!6788654 b!6788653) bm!616267))

(assert (= (or b!6788655 b!6788651) bm!616268))

(assert (= (or b!6788652 bm!616268) bm!616266))

(declare-fun m!7536480 () Bool)

(assert (=> bm!616266 m!7536480))

(declare-fun m!7536482 () Bool)

(assert (=> bm!616267 m!7536482))

(declare-fun m!7536484 () Bool)

(assert (=> b!6788658 m!7536484))

(assert (=> start!656960 d!2132986))

(declare-fun bs!1808571 () Bool)

(declare-fun d!2132988 () Bool)

(assert (= bs!1808571 (and d!2132988 d!2132790)))

(declare-fun lambda!382380 () Int)

(assert (=> bs!1808571 (= lambda!382380 lambda!382300)))

(declare-fun bs!1808572 () Bool)

(assert (= bs!1808572 (and d!2132988 d!2132792)))

(assert (=> bs!1808572 (= lambda!382380 lambda!382303)))

(declare-fun bs!1808573 () Bool)

(assert (= bs!1808573 (and d!2132988 d!2132796)))

(assert (=> bs!1808573 (= lambda!382380 lambda!382306)))

(declare-fun bs!1808574 () Bool)

(assert (= bs!1808574 (and d!2132988 d!2132890)))

(assert (=> bs!1808574 (= lambda!382380 lambda!382348)))

(assert (=> d!2132988 (= (inv!84769 lt!2445912) (forall!15801 (exprs!6493 lt!2445912) lambda!382380))))

(declare-fun bs!1808575 () Bool)

(assert (= bs!1808575 d!2132988))

(declare-fun m!7536486 () Bool)

(assert (=> bs!1808575 m!7536486))

(assert (=> b!6787900 d!2132988))

(declare-fun d!2132990 () Bool)

(declare-fun e!4097625 () Bool)

(assert (=> d!2132990 e!4097625))

(declare-fun res!2774648 () Bool)

(assert (=> d!2132990 (=> (not res!2774648) (not e!4097625))))

(declare-fun lt!2446022 () List!66128)

(declare-fun noDuplicate!2394 (List!66128) Bool)

(assert (=> d!2132990 (= res!2774648 (noDuplicate!2394 lt!2446022))))

(declare-fun choose!50567 ((InoxSet Context!11986)) List!66128)

(assert (=> d!2132990 (= lt!2446022 (choose!50567 z!1189))))

(assert (=> d!2132990 (= (toList!10393 z!1189) lt!2446022)))

(declare-fun b!6788661 () Bool)

(declare-fun content!12865 (List!66128) (InoxSet Context!11986))

(assert (=> b!6788661 (= e!4097625 (= (content!12865 lt!2446022) z!1189))))

(assert (= (and d!2132990 res!2774648) b!6788661))

(declare-fun m!7536488 () Bool)

(assert (=> d!2132990 m!7536488))

(declare-fun m!7536490 () Bool)

(assert (=> d!2132990 m!7536490))

(declare-fun m!7536492 () Bool)

(assert (=> b!6788661 m!7536492))

(assert (=> b!6787890 d!2132990))

(declare-fun bs!1808576 () Bool)

(declare-fun d!2132992 () Bool)

(assert (= bs!1808576 (and d!2132992 d!2132890)))

(declare-fun lambda!382381 () Int)

(assert (=> bs!1808576 (= lambda!382381 lambda!382348)))

(declare-fun bs!1808577 () Bool)

(assert (= bs!1808577 (and d!2132992 d!2132790)))

(assert (=> bs!1808577 (= lambda!382381 lambda!382300)))

(declare-fun bs!1808578 () Bool)

(assert (= bs!1808578 (and d!2132992 d!2132988)))

(assert (=> bs!1808578 (= lambda!382381 lambda!382380)))

(declare-fun bs!1808579 () Bool)

(assert (= bs!1808579 (and d!2132992 d!2132792)))

(assert (=> bs!1808579 (= lambda!382381 lambda!382303)))

(declare-fun bs!1808580 () Bool)

(assert (= bs!1808580 (and d!2132992 d!2132796)))

(assert (=> bs!1808580 (= lambda!382381 lambda!382306)))

(assert (=> d!2132992 (= (inv!84769 setElem!46455) (forall!15801 (exprs!6493 setElem!46455) lambda!382381))))

(declare-fun bs!1808581 () Bool)

(assert (= bs!1808581 d!2132992))

(declare-fun m!7536494 () Bool)

(assert (=> bs!1808581 m!7536494))

(assert (=> setNonEmpty!46455 d!2132992))

(declare-fun b!6788674 () Bool)

(declare-fun e!4097628 () Bool)

(declare-fun tp!1859412 () Bool)

(assert (=> b!6788674 (= e!4097628 tp!1859412)))

(declare-fun b!6788675 () Bool)

(declare-fun tp!1859411 () Bool)

(declare-fun tp!1859413 () Bool)

(assert (=> b!6788675 (= e!4097628 (and tp!1859411 tp!1859413))))

(declare-fun b!6788673 () Bool)

(declare-fun tp!1859410 () Bool)

(declare-fun tp!1859414 () Bool)

(assert (=> b!6788673 (= e!4097628 (and tp!1859410 tp!1859414))))

(assert (=> b!6787896 (= tp!1859338 e!4097628)))

(declare-fun b!6788672 () Bool)

(assert (=> b!6788672 (= e!4097628 tp_is_empty!42471)))

(assert (= (and b!6787896 ((_ is ElementMatch!16609) (regOne!33731 r!7292))) b!6788672))

(assert (= (and b!6787896 ((_ is Concat!25454) (regOne!33731 r!7292))) b!6788673))

(assert (= (and b!6787896 ((_ is Star!16609) (regOne!33731 r!7292))) b!6788674))

(assert (= (and b!6787896 ((_ is Union!16609) (regOne!33731 r!7292))) b!6788675))

(declare-fun b!6788678 () Bool)

(declare-fun e!4097629 () Bool)

(declare-fun tp!1859417 () Bool)

(assert (=> b!6788678 (= e!4097629 tp!1859417)))

(declare-fun b!6788679 () Bool)

(declare-fun tp!1859416 () Bool)

(declare-fun tp!1859418 () Bool)

(assert (=> b!6788679 (= e!4097629 (and tp!1859416 tp!1859418))))

(declare-fun b!6788677 () Bool)

(declare-fun tp!1859415 () Bool)

(declare-fun tp!1859419 () Bool)

(assert (=> b!6788677 (= e!4097629 (and tp!1859415 tp!1859419))))

(assert (=> b!6787896 (= tp!1859337 e!4097629)))

(declare-fun b!6788676 () Bool)

(assert (=> b!6788676 (= e!4097629 tp_is_empty!42471)))

(assert (= (and b!6787896 ((_ is ElementMatch!16609) (regTwo!33731 r!7292))) b!6788676))

(assert (= (and b!6787896 ((_ is Concat!25454) (regTwo!33731 r!7292))) b!6788677))

(assert (= (and b!6787896 ((_ is Star!16609) (regTwo!33731 r!7292))) b!6788678))

(assert (= (and b!6787896 ((_ is Union!16609) (regTwo!33731 r!7292))) b!6788679))

(declare-fun b!6788684 () Bool)

(declare-fun e!4097632 () Bool)

(declare-fun tp!1859424 () Bool)

(declare-fun tp!1859425 () Bool)

(assert (=> b!6788684 (= e!4097632 (and tp!1859424 tp!1859425))))

(assert (=> b!6787886 (= tp!1859339 e!4097632)))

(assert (= (and b!6787886 ((_ is Cons!66002) (exprs!6493 (h!72452 zl!343)))) b!6788684))

(declare-fun b!6788687 () Bool)

(declare-fun e!4097633 () Bool)

(declare-fun tp!1859428 () Bool)

(assert (=> b!6788687 (= e!4097633 tp!1859428)))

(declare-fun b!6788688 () Bool)

(declare-fun tp!1859427 () Bool)

(declare-fun tp!1859429 () Bool)

(assert (=> b!6788688 (= e!4097633 (and tp!1859427 tp!1859429))))

(declare-fun b!6788686 () Bool)

(declare-fun tp!1859426 () Bool)

(declare-fun tp!1859430 () Bool)

(assert (=> b!6788686 (= e!4097633 (and tp!1859426 tp!1859430))))

(assert (=> b!6787907 (= tp!1859335 e!4097633)))

(declare-fun b!6788685 () Bool)

(assert (=> b!6788685 (= e!4097633 tp_is_empty!42471)))

(assert (= (and b!6787907 ((_ is ElementMatch!16609) (reg!16938 r!7292))) b!6788685))

(assert (= (and b!6787907 ((_ is Concat!25454) (reg!16938 r!7292))) b!6788686))

(assert (= (and b!6787907 ((_ is Star!16609) (reg!16938 r!7292))) b!6788687))

(assert (= (and b!6787907 ((_ is Union!16609) (reg!16938 r!7292))) b!6788688))

(declare-fun b!6788696 () Bool)

(declare-fun e!4097639 () Bool)

(declare-fun tp!1859435 () Bool)

(assert (=> b!6788696 (= e!4097639 tp!1859435)))

(declare-fun tp!1859436 () Bool)

(declare-fun b!6788695 () Bool)

(declare-fun e!4097638 () Bool)

(assert (=> b!6788695 (= e!4097638 (and (inv!84769 (h!72452 (t!379849 zl!343))) e!4097639 tp!1859436))))

(assert (=> b!6787888 (= tp!1859336 e!4097638)))

(assert (= b!6788695 b!6788696))

(assert (= (and b!6787888 ((_ is Cons!66004) (t!379849 zl!343))) b!6788695))

(declare-fun m!7536496 () Bool)

(assert (=> b!6788695 m!7536496))

(declare-fun b!6788697 () Bool)

(declare-fun e!4097640 () Bool)

(declare-fun tp!1859437 () Bool)

(declare-fun tp!1859438 () Bool)

(assert (=> b!6788697 (= e!4097640 (and tp!1859437 tp!1859438))))

(assert (=> b!6787889 (= tp!1859332 e!4097640)))

(assert (= (and b!6787889 ((_ is Cons!66002) (exprs!6493 setElem!46455))) b!6788697))

(declare-fun b!6788702 () Bool)

(declare-fun e!4097643 () Bool)

(declare-fun tp!1859441 () Bool)

(assert (=> b!6788702 (= e!4097643 (and tp_is_empty!42471 tp!1859441))))

(assert (=> b!6787908 (= tp!1859341 e!4097643)))

(assert (= (and b!6787908 ((_ is Cons!66003) (t!379848 s!2326))) b!6788702))

(declare-fun condSetEmpty!46461 () Bool)

(assert (=> setNonEmpty!46455 (= condSetEmpty!46461 (= setRest!46455 ((as const (Array Context!11986 Bool)) false)))))

(declare-fun setRes!46461 () Bool)

(assert (=> setNonEmpty!46455 (= tp!1859340 setRes!46461)))

(declare-fun setIsEmpty!46461 () Bool)

(assert (=> setIsEmpty!46461 setRes!46461))

(declare-fun tp!1859446 () Bool)

(declare-fun e!4097646 () Bool)

(declare-fun setNonEmpty!46461 () Bool)

(declare-fun setElem!46461 () Context!11986)

(assert (=> setNonEmpty!46461 (= setRes!46461 (and tp!1859446 (inv!84769 setElem!46461) e!4097646))))

(declare-fun setRest!46461 () (InoxSet Context!11986))

(assert (=> setNonEmpty!46461 (= setRest!46455 ((_ map or) (store ((as const (Array Context!11986 Bool)) false) setElem!46461 true) setRest!46461))))

(declare-fun b!6788707 () Bool)

(declare-fun tp!1859447 () Bool)

(assert (=> b!6788707 (= e!4097646 tp!1859447)))

(assert (= (and setNonEmpty!46455 condSetEmpty!46461) setIsEmpty!46461))

(assert (= (and setNonEmpty!46455 (not condSetEmpty!46461)) setNonEmpty!46461))

(assert (= setNonEmpty!46461 b!6788707))

(declare-fun m!7536498 () Bool)

(assert (=> setNonEmpty!46461 m!7536498))

(declare-fun b!6788710 () Bool)

(declare-fun e!4097647 () Bool)

(declare-fun tp!1859450 () Bool)

(assert (=> b!6788710 (= e!4097647 tp!1859450)))

(declare-fun b!6788711 () Bool)

(declare-fun tp!1859449 () Bool)

(declare-fun tp!1859451 () Bool)

(assert (=> b!6788711 (= e!4097647 (and tp!1859449 tp!1859451))))

(declare-fun b!6788709 () Bool)

(declare-fun tp!1859448 () Bool)

(declare-fun tp!1859452 () Bool)

(assert (=> b!6788709 (= e!4097647 (and tp!1859448 tp!1859452))))

(assert (=> b!6787895 (= tp!1859334 e!4097647)))

(declare-fun b!6788708 () Bool)

(assert (=> b!6788708 (= e!4097647 tp_is_empty!42471)))

(assert (= (and b!6787895 ((_ is ElementMatch!16609) (regOne!33730 r!7292))) b!6788708))

(assert (= (and b!6787895 ((_ is Concat!25454) (regOne!33730 r!7292))) b!6788709))

(assert (= (and b!6787895 ((_ is Star!16609) (regOne!33730 r!7292))) b!6788710))

(assert (= (and b!6787895 ((_ is Union!16609) (regOne!33730 r!7292))) b!6788711))

(declare-fun b!6788714 () Bool)

(declare-fun e!4097648 () Bool)

(declare-fun tp!1859455 () Bool)

(assert (=> b!6788714 (= e!4097648 tp!1859455)))

(declare-fun b!6788715 () Bool)

(declare-fun tp!1859454 () Bool)

(declare-fun tp!1859456 () Bool)

(assert (=> b!6788715 (= e!4097648 (and tp!1859454 tp!1859456))))

(declare-fun b!6788713 () Bool)

(declare-fun tp!1859453 () Bool)

(declare-fun tp!1859457 () Bool)

(assert (=> b!6788713 (= e!4097648 (and tp!1859453 tp!1859457))))

(assert (=> b!6787895 (= tp!1859333 e!4097648)))

(declare-fun b!6788712 () Bool)

(assert (=> b!6788712 (= e!4097648 tp_is_empty!42471)))

(assert (= (and b!6787895 ((_ is ElementMatch!16609) (regTwo!33730 r!7292))) b!6788712))

(assert (= (and b!6787895 ((_ is Concat!25454) (regTwo!33730 r!7292))) b!6788713))

(assert (= (and b!6787895 ((_ is Star!16609) (regTwo!33730 r!7292))) b!6788714))

(assert (= (and b!6787895 ((_ is Union!16609) (regTwo!33730 r!7292))) b!6788715))

(declare-fun b_lambda!255675 () Bool)

(assert (= b_lambda!255661 (or b!6787899 b_lambda!255675)))

(declare-fun bs!1808582 () Bool)

(declare-fun d!2132994 () Bool)

(assert (= bs!1808582 (and d!2132994 b!6787899)))

(assert (=> bs!1808582 (= (dynLambda!26342 lambda!382297 lt!2445912) (derivationStepZipperUp!1763 lt!2445912 (h!72451 s!2326)))))

(assert (=> bs!1808582 m!7535866))

(assert (=> d!2132908 d!2132994))

(declare-fun b_lambda!255677 () Bool)

(assert (= b_lambda!255663 (or b!6787899 b_lambda!255677)))

(declare-fun bs!1808583 () Bool)

(declare-fun d!2132996 () Bool)

(assert (= bs!1808583 (and d!2132996 b!6787899)))

(assert (=> bs!1808583 (= (dynLambda!26342 lambda!382297 lt!2445922) (derivationStepZipperUp!1763 lt!2445922 (h!72451 s!2326)))))

(assert (=> bs!1808583 m!7535854))

(assert (=> d!2132912 d!2132996))

(declare-fun b_lambda!255679 () Bool)

(assert (= b_lambda!255651 (or b!6787899 b_lambda!255679)))

(declare-fun bs!1808584 () Bool)

(declare-fun d!2132998 () Bool)

(assert (= bs!1808584 (and d!2132998 b!6787899)))

(assert (=> bs!1808584 (= (dynLambda!26342 lambda!382297 lt!2445916) (derivationStepZipperUp!1763 lt!2445916 (h!72451 s!2326)))))

(assert (=> bs!1808584 m!7535894))

(assert (=> d!2132816 d!2132998))

(declare-fun b_lambda!255681 () Bool)

(assert (= b_lambda!255673 (or b!6787899 b_lambda!255681)))

(declare-fun bs!1808585 () Bool)

(declare-fun d!2133000 () Bool)

(assert (= bs!1808585 (and d!2133000 b!6787899)))

(assert (=> bs!1808585 (= (dynLambda!26342 lambda!382297 (h!72452 zl!343)) (derivationStepZipperUp!1763 (h!72452 zl!343) (h!72451 s!2326)))))

(assert (=> bs!1808585 m!7535946))

(assert (=> d!2132984 d!2133000))

(check-sat (not d!2132798) (not bm!616255) (not b!6788710) (not bs!1808582) (not b!6788330) (not b!6787936) (not b!6788412) (not b!6788674) (not bm!616248) (not b!6788082) (not b!6788421) (not bm!616256) (not bm!616259) (not b!6788695) (not bm!616250) (not b!6788439) (not b!6788677) (not b!6788688) (not d!2132990) (not d!2132792) (not b!6788702) (not bm!616202) (not b!6788709) (not bm!616267) (not b!6788658) (not bm!616257) (not d!2132970) (not b_lambda!255677) (not b!6788081) (not bm!616247) (not b_lambda!255679) (not d!2132980) (not bs!1808583) (not d!2132984) (not d!2132972) (not b!6788582) (not b!6788613) (not b!6787941) (not d!2132962) (not bm!616230) (not d!2132960) (not d!2132914) (not b!6788620) (not b!6787938) (not d!2132948) (not d!2132936) (not b!6788623) (not d!2132934) (not d!2132940) (not bs!1808585) (not b!6788696) (not b!6788579) (not bm!616249) (not b!6788580) (not b!6788625) (not b!6788686) (not b!6788619) (not b!6788675) (not d!2132848) (not b!6788596) (not d!2132978) (not b!6788329) (not d!2132992) (not b!6788687) (not b!6788614) (not d!2132968) (not b!6788601) (not b!6788022) (not b!6787943) (not bm!616194) (not b_lambda!255675) (not b!6788417) (not d!2132942) (not b!6788337) (not b!6788416) (not b!6788585) (not d!2132916) (not b!6788678) tp_is_empty!42471 (not d!2132912) (not b!6788684) (not d!2132860) (not b!6788413) (not b!6788673) (not b!6788661) (not bm!616203) (not d!2132796) (not b!6788629) (not b!6788586) (not d!2132974) (not b!6788331) (not d!2132908) (not b!6787950) (not d!2132964) (not d!2132938) (not b!6788711) (not d!2132976) (not b!6788454) (not b!6788626) (not b!6787944) (not bm!616183) (not b!6788336) (not bm!616254) (not b!6788411) (not setNonEmpty!46461) (not b!6788598) (not d!2132988) (not b!6788438) (not b!6788415) (not d!2132890) (not d!2132790) (not b!6788617) (not d!2132808) (not b!6788679) (not b!6787940) (not b!6788714) (not b!6788697) (not b!6788584) (not b!6788447) (not b!6788418) (not b_lambda!255681) (not b!6787937) (not b!6788204) (not b!6788455) (not bm!616188) (not b!6788422) (not b!6788612) (not d!2132950) (not bm!616266) (not b!6788628) (not b!6788207) (not bs!1808584) (not d!2132800) (not d!2132794) (not d!2132910) (not d!2132816) (not bm!616184) (not b!6788715) (not b!6788597) (not b!6788713) (not bm!616258) (not b!6788334) (not b!6788707) (not b!6788624))
(check-sat)
(get-model)

(declare-fun d!2133166 () Bool)

(declare-fun nullableFct!2494 (Regex!16609) Bool)

(assert (=> d!2133166 (= (nullable!6588 (h!72450 (exprs!6493 lt!2445922))) (nullableFct!2494 (h!72450 (exprs!6493 lt!2445922))))))

(declare-fun bs!1808802 () Bool)

(assert (= bs!1808802 d!2133166))

(declare-fun m!7536878 () Bool)

(assert (=> bs!1808802 m!7536878))

(assert (=> b!6788438 d!2133166))

(declare-fun b!6789097 () Bool)

(declare-fun e!4097883 () (InoxSet Context!11986))

(declare-fun call!616361 () (InoxSet Context!11986))

(assert (=> b!6789097 (= e!4097883 call!616361)))

(declare-fun c!1261734 () Bool)

(declare-fun call!616357 () List!66126)

(declare-fun bm!616352 () Bool)

(declare-fun c!1261733 () Bool)

(declare-fun c!1261736 () Bool)

(declare-fun call!616362 () (InoxSet Context!11986))

(assert (=> bm!616352 (= call!616362 (derivationStepZipperDown!1837 (ite c!1261733 (regOne!33731 (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292))))) (ite c!1261736 (regTwo!33730 (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292))))) (ite c!1261734 (regOne!33730 (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292))))) (reg!16938 (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292)))))))) (ite (or c!1261733 c!1261736) (ite (or c!1261570 c!1261573) (Context!11987 Nil!66002) (Context!11987 call!616254)) (Context!11987 call!616357)) (h!72451 s!2326)))))

(declare-fun call!616358 () List!66126)

(declare-fun bm!616353 () Bool)

(declare-fun call!616360 () (InoxSet Context!11986))

(assert (=> bm!616353 (= call!616360 (derivationStepZipperDown!1837 (ite c!1261733 (regTwo!33731 (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292))))) (regOne!33730 (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292)))))) (ite c!1261733 (ite (or c!1261570 c!1261573) (Context!11987 Nil!66002) (Context!11987 call!616254)) (Context!11987 call!616358)) (h!72451 s!2326)))))

(declare-fun b!6789098 () Bool)

(declare-fun e!4097882 () (InoxSet Context!11986))

(declare-fun e!4097881 () (InoxSet Context!11986))

(assert (=> b!6789098 (= e!4097882 e!4097881)))

(assert (=> b!6789098 (= c!1261733 ((_ is Union!16609) (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292))))))))

(declare-fun b!6789099 () Bool)

(declare-fun e!4097885 () (InoxSet Context!11986))

(assert (=> b!6789099 (= e!4097885 call!616361)))

(declare-fun b!6789100 () Bool)

(declare-fun e!4097886 () Bool)

(assert (=> b!6789100 (= c!1261736 e!4097886)))

(declare-fun res!2774788 () Bool)

(assert (=> b!6789100 (=> (not res!2774788) (not e!4097886))))

(assert (=> b!6789100 (= res!2774788 ((_ is Concat!25454) (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292))))))))

(declare-fun e!4097884 () (InoxSet Context!11986))

(assert (=> b!6789100 (= e!4097881 e!4097884)))

(declare-fun b!6789101 () Bool)

(assert (=> b!6789101 (= e!4097883 ((as const (Array Context!11986 Bool)) false))))

(declare-fun b!6789102 () Bool)

(assert (=> b!6789102 (= e!4097886 (nullable!6588 (regOne!33730 (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292)))))))))

(declare-fun b!6789103 () Bool)

(assert (=> b!6789103 (= e!4097884 e!4097885)))

(assert (=> b!6789103 (= c!1261734 ((_ is Concat!25454) (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292))))))))

(declare-fun bm!616354 () Bool)

(assert (=> bm!616354 (= call!616357 call!616358)))

(declare-fun c!1261735 () Bool)

(declare-fun d!2133172 () Bool)

(assert (=> d!2133172 (= c!1261735 (and ((_ is ElementMatch!16609) (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292))))) (= (c!1261391 (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292))))) (h!72451 s!2326))))))

(assert (=> d!2133172 (= (derivationStepZipperDown!1837 (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292)))) (ite (or c!1261570 c!1261573) (Context!11987 Nil!66002) (Context!11987 call!616254)) (h!72451 s!2326)) e!4097882)))

(declare-fun bm!616355 () Bool)

(declare-fun call!616359 () (InoxSet Context!11986))

(assert (=> bm!616355 (= call!616359 call!616362)))

(declare-fun b!6789104 () Bool)

(assert (=> b!6789104 (= e!4097882 (store ((as const (Array Context!11986 Bool)) false) (ite (or c!1261570 c!1261573) (Context!11987 Nil!66002) (Context!11987 call!616254)) true))))

(declare-fun b!6789105 () Bool)

(assert (=> b!6789105 (= e!4097881 ((_ map or) call!616362 call!616360))))

(declare-fun b!6789106 () Bool)

(assert (=> b!6789106 (= e!4097884 ((_ map or) call!616360 call!616359))))

(declare-fun bm!616356 () Bool)

(assert (=> bm!616356 (= call!616361 call!616359)))

(declare-fun b!6789107 () Bool)

(declare-fun c!1261732 () Bool)

(assert (=> b!6789107 (= c!1261732 ((_ is Star!16609) (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292))))))))

(assert (=> b!6789107 (= e!4097885 e!4097883)))

(declare-fun bm!616357 () Bool)

(assert (=> bm!616357 (= call!616358 ($colon$colon!2417 (exprs!6493 (ite (or c!1261570 c!1261573) (Context!11987 Nil!66002) (Context!11987 call!616254))) (ite (or c!1261736 c!1261734) (regTwo!33730 (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292))))) (ite c!1261570 (regOne!33731 r!7292) (ite c!1261573 (regTwo!33730 r!7292) (ite c!1261571 (regOne!33730 r!7292) (reg!16938 r!7292)))))))))

(assert (= (and d!2133172 c!1261735) b!6789104))

(assert (= (and d!2133172 (not c!1261735)) b!6789098))

(assert (= (and b!6789098 c!1261733) b!6789105))

(assert (= (and b!6789098 (not c!1261733)) b!6789100))

(assert (= (and b!6789100 res!2774788) b!6789102))

(assert (= (and b!6789100 c!1261736) b!6789106))

(assert (= (and b!6789100 (not c!1261736)) b!6789103))

(assert (= (and b!6789103 c!1261734) b!6789099))

(assert (= (and b!6789103 (not c!1261734)) b!6789107))

(assert (= (and b!6789107 c!1261732) b!6789097))

(assert (= (and b!6789107 (not c!1261732)) b!6789101))

(assert (= (or b!6789099 b!6789097) bm!616354))

(assert (= (or b!6789099 b!6789097) bm!616356))

(assert (= (or b!6789106 bm!616354) bm!616357))

(assert (= (or b!6789106 bm!616356) bm!616355))

(assert (= (or b!6789105 b!6789106) bm!616353))

(assert (= (or b!6789105 bm!616355) bm!616352))

(declare-fun m!7536892 () Bool)

(assert (=> b!6789104 m!7536892))

(declare-fun m!7536894 () Bool)

(assert (=> bm!616357 m!7536894))

(declare-fun m!7536896 () Bool)

(assert (=> b!6789102 m!7536896))

(declare-fun m!7536898 () Bool)

(assert (=> bm!616353 m!7536898))

(declare-fun m!7536900 () Bool)

(assert (=> bm!616352 m!7536900))

(assert (=> bm!616249 d!2133172))

(declare-fun d!2133184 () Bool)

(assert (=> d!2133184 (= (nullable!6588 (reg!16938 r!7292)) (nullableFct!2494 (reg!16938 r!7292)))))

(declare-fun bs!1808806 () Bool)

(assert (= bs!1808806 d!2133184))

(declare-fun m!7536902 () Bool)

(assert (=> bs!1808806 m!7536902))

(assert (=> b!6788658 d!2133184))

(declare-fun d!2133186 () Bool)

(assert (=> d!2133186 (= (isEmpty!38372 (tail!12714 (exprs!6493 (h!72452 zl!343)))) ((_ is Nil!66002) (tail!12714 (exprs!6493 (h!72452 zl!343)))))))

(assert (=> b!6788411 d!2133186))

(declare-fun d!2133188 () Bool)

(assert (=> d!2133188 (= (tail!12714 (exprs!6493 (h!72452 zl!343))) (t!379847 (exprs!6493 (h!72452 zl!343))))))

(assert (=> b!6788411 d!2133188))

(assert (=> d!2132970 d!2132968))

(assert (=> d!2132970 d!2132966))

(declare-fun d!2133190 () Bool)

(assert (=> d!2133190 (= (matchR!8792 r!7292 s!2326) (matchRSpec!3710 r!7292 s!2326))))

(assert (=> d!2133190 true))

(declare-fun _$88!5596 () Unit!159909)

(assert (=> d!2133190 (= (choose!50558 r!7292 s!2326) _$88!5596)))

(declare-fun bs!1808807 () Bool)

(assert (= bs!1808807 d!2133190))

(assert (=> bs!1808807 m!7535882))

(assert (=> bs!1808807 m!7535880))

(assert (=> d!2132970 d!2133190))

(assert (=> d!2132970 d!2132986))

(declare-fun d!2133192 () Bool)

(declare-fun res!2774803 () Bool)

(declare-fun e!4097895 () Bool)

(assert (=> d!2133192 (=> res!2774803 e!4097895)))

(assert (=> d!2133192 (= res!2774803 ((_ is Nil!66002) lt!2445928))))

(assert (=> d!2133192 (= (forall!15801 lt!2445928 lambda!382303) e!4097895)))

(declare-fun b!6789122 () Bool)

(declare-fun e!4097896 () Bool)

(assert (=> b!6789122 (= e!4097895 e!4097896)))

(declare-fun res!2774804 () Bool)

(assert (=> b!6789122 (=> (not res!2774804) (not e!4097896))))

(declare-fun dynLambda!26343 (Int Regex!16609) Bool)

(assert (=> b!6789122 (= res!2774804 (dynLambda!26343 lambda!382303 (h!72450 lt!2445928)))))

(declare-fun b!6789123 () Bool)

(assert (=> b!6789123 (= e!4097896 (forall!15801 (t!379847 lt!2445928) lambda!382303))))

(assert (= (and d!2133192 (not res!2774803)) b!6789122))

(assert (= (and b!6789122 res!2774804) b!6789123))

(declare-fun b_lambda!255689 () Bool)

(assert (=> (not b_lambda!255689) (not b!6789122)))

(declare-fun m!7536904 () Bool)

(assert (=> b!6789122 m!7536904))

(declare-fun m!7536906 () Bool)

(assert (=> b!6789123 m!7536906))

(assert (=> d!2132792 d!2133192))

(assert (=> bm!616230 d!2132946))

(declare-fun d!2133194 () Bool)

(declare-fun lambda!382417 () Int)

(declare-fun exists!2730 ((InoxSet Context!11986) Int) Bool)

(assert (=> d!2133194 (= (nullableZipper!2316 (derivationStepZipper!2553 lt!2445905 (h!72451 s!2326))) (exists!2730 (derivationStepZipper!2553 lt!2445905 (h!72451 s!2326)) lambda!382417))))

(declare-fun bs!1808816 () Bool)

(assert (= bs!1808816 d!2133194))

(assert (=> bs!1808816 m!7535872))

(declare-fun m!7536908 () Bool)

(assert (=> bs!1808816 m!7536908))

(assert (=> b!6788625 d!2133194))

(assert (=> d!2132984 d!2132980))

(declare-fun d!2133196 () Bool)

(assert (=> d!2133196 (= (flatMap!2090 z!1189 lambda!382297) (dynLambda!26342 lambda!382297 (h!72452 zl!343)))))

(assert (=> d!2133196 true))

(declare-fun _$13!4225 () Unit!159909)

(assert (=> d!2133196 (= (choose!50557 z!1189 (h!72452 zl!343) lambda!382297) _$13!4225)))

(declare-fun b_lambda!255691 () Bool)

(assert (=> (not b_lambda!255691) (not d!2133196)))

(declare-fun bs!1808825 () Bool)

(assert (= bs!1808825 d!2133196))

(assert (=> bs!1808825 m!7535944))

(assert (=> bs!1808825 m!7536474))

(assert (=> d!2132984 d!2133196))

(declare-fun b!6789124 () Bool)

(declare-fun e!4097897 () (InoxSet Context!11986))

(assert (=> b!6789124 (= e!4097897 ((as const (Array Context!11986 Bool)) false))))

(declare-fun bm!616358 () Bool)

(declare-fun call!616363 () (InoxSet Context!11986))

(assert (=> bm!616358 (= call!616363 (derivationStepZipperDown!1837 (h!72450 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))))) (Context!11987 (t!379847 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002)))))))) (h!72451 s!2326)))))

(declare-fun b!6789125 () Bool)

(declare-fun e!4097898 () Bool)

(assert (=> b!6789125 (= e!4097898 (nullable!6588 (h!72450 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002)))))))))))

(declare-fun e!4097899 () (InoxSet Context!11986))

(declare-fun b!6789126 () Bool)

(assert (=> b!6789126 (= e!4097899 ((_ map or) call!616363 (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002)))))))) (h!72451 s!2326))))))

(declare-fun d!2133198 () Bool)

(declare-fun c!1261740 () Bool)

(assert (=> d!2133198 (= c!1261740 e!4097898)))

(declare-fun res!2774805 () Bool)

(assert (=> d!2133198 (=> (not res!2774805) (not e!4097898))))

(assert (=> d!2133198 (= res!2774805 ((_ is Cons!66002) (exprs!6493 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))))))))

(assert (=> d!2133198 (= (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) (h!72451 s!2326)) e!4097899)))

(declare-fun b!6789127 () Bool)

(assert (=> b!6789127 (= e!4097897 call!616363)))

(declare-fun b!6789128 () Bool)

(assert (=> b!6789128 (= e!4097899 e!4097897)))

(declare-fun c!1261739 () Bool)

(assert (=> b!6789128 (= c!1261739 ((_ is Cons!66002) (exprs!6493 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))))))))

(assert (= (and d!2133198 res!2774805) b!6789125))

(assert (= (and d!2133198 c!1261740) b!6789126))

(assert (= (and d!2133198 (not c!1261740)) b!6789128))

(assert (= (and b!6789128 c!1261739) b!6789127))

(assert (= (and b!6789128 (not c!1261739)) b!6789124))

(assert (= (or b!6789126 b!6789127) bm!616358))

(declare-fun m!7536910 () Bool)

(assert (=> bm!616358 m!7536910))

(declare-fun m!7536912 () Bool)

(assert (=> b!6789125 m!7536912))

(declare-fun m!7536914 () Bool)

(assert (=> b!6789126 m!7536914))

(assert (=> b!6788455 d!2133198))

(assert (=> b!6787950 d!2132890))

(declare-fun bs!1808827 () Bool)

(declare-fun d!2133200 () Bool)

(assert (= bs!1808827 (and d!2133200 d!2132992)))

(declare-fun lambda!382419 () Int)

(assert (=> bs!1808827 (= lambda!382419 lambda!382381)))

(declare-fun bs!1808828 () Bool)

(assert (= bs!1808828 (and d!2133200 d!2132890)))

(assert (=> bs!1808828 (= lambda!382419 lambda!382348)))

(declare-fun bs!1808829 () Bool)

(assert (= bs!1808829 (and d!2133200 d!2132790)))

(assert (=> bs!1808829 (= lambda!382419 lambda!382300)))

(declare-fun bs!1808830 () Bool)

(assert (= bs!1808830 (and d!2133200 d!2132988)))

(assert (=> bs!1808830 (= lambda!382419 lambda!382380)))

(declare-fun bs!1808831 () Bool)

(assert (= bs!1808831 (and d!2133200 d!2132792)))

(assert (=> bs!1808831 (= lambda!382419 lambda!382303)))

(declare-fun bs!1808832 () Bool)

(assert (= bs!1808832 (and d!2133200 d!2132796)))

(assert (=> bs!1808832 (= lambda!382419 lambda!382306)))

(declare-fun lt!2446041 () List!66126)

(assert (=> d!2133200 (forall!15801 lt!2446041 lambda!382419)))

(declare-fun e!4097900 () List!66126)

(assert (=> d!2133200 (= lt!2446041 e!4097900)))

(declare-fun c!1261741 () Bool)

(assert (=> d!2133200 (= c!1261741 ((_ is Cons!66004) (t!379849 zl!343)))))

(assert (=> d!2133200 (= (unfocusZipperList!2030 (t!379849 zl!343)) lt!2446041)))

(declare-fun b!6789129 () Bool)

(assert (=> b!6789129 (= e!4097900 (Cons!66002 (generalisedConcat!2206 (exprs!6493 (h!72452 (t!379849 zl!343)))) (unfocusZipperList!2030 (t!379849 (t!379849 zl!343)))))))

(declare-fun b!6789130 () Bool)

(assert (=> b!6789130 (= e!4097900 Nil!66002)))

(assert (= (and d!2133200 c!1261741) b!6789129))

(assert (= (and d!2133200 (not c!1261741)) b!6789130))

(declare-fun m!7536916 () Bool)

(assert (=> d!2133200 m!7536916))

(declare-fun m!7536918 () Bool)

(assert (=> b!6789129 m!7536918))

(declare-fun m!7536920 () Bool)

(assert (=> b!6789129 m!7536920))

(assert (=> b!6787950 d!2133200))

(declare-fun d!2133202 () Bool)

(declare-fun e!4097914 () Bool)

(assert (=> d!2133202 e!4097914))

(declare-fun res!2774813 () Bool)

(assert (=> d!2133202 (=> (not res!2774813) (not e!4097914))))

(declare-fun lt!2446044 () List!66127)

(declare-fun content!12866 (List!66127) (InoxSet C!33488))

(assert (=> d!2133202 (= res!2774813 (= (content!12866 lt!2446044) ((_ map or) (content!12866 (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003))) (content!12866 (t!379848 s!2326)))))))

(declare-fun e!4097915 () List!66127)

(assert (=> d!2133202 (= lt!2446044 e!4097915)))

(declare-fun c!1261751 () Bool)

(assert (=> d!2133202 (= c!1261751 ((_ is Nil!66003) (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003))))))

(assert (=> d!2133202 (= (++!14764 (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003)) (t!379848 s!2326)) lt!2446044)))

(declare-fun b!6789157 () Bool)

(declare-fun res!2774812 () Bool)

(assert (=> b!6789157 (=> (not res!2774812) (not e!4097914))))

(declare-fun size!40644 (List!66127) Int)

(assert (=> b!6789157 (= res!2774812 (= (size!40644 lt!2446044) (+ (size!40644 (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003))) (size!40644 (t!379848 s!2326)))))))

(declare-fun b!6789158 () Bool)

(assert (=> b!6789158 (= e!4097914 (or (not (= (t!379848 s!2326) Nil!66003)) (= lt!2446044 (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003)))))))

(declare-fun b!6789156 () Bool)

(assert (=> b!6789156 (= e!4097915 (Cons!66003 (h!72451 (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003))) (++!14764 (t!379848 (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003))) (t!379848 s!2326))))))

(declare-fun b!6789155 () Bool)

(assert (=> b!6789155 (= e!4097915 (t!379848 s!2326))))

(assert (= (and d!2133202 c!1261751) b!6789155))

(assert (= (and d!2133202 (not c!1261751)) b!6789156))

(assert (= (and d!2133202 res!2774813) b!6789157))

(assert (= (and b!6789157 res!2774812) b!6789158))

(declare-fun m!7536942 () Bool)

(assert (=> d!2133202 m!7536942))

(assert (=> d!2133202 m!7536406))

(declare-fun m!7536944 () Bool)

(assert (=> d!2133202 m!7536944))

(declare-fun m!7536946 () Bool)

(assert (=> d!2133202 m!7536946))

(declare-fun m!7536948 () Bool)

(assert (=> b!6789157 m!7536948))

(assert (=> b!6789157 m!7536406))

(declare-fun m!7536950 () Bool)

(assert (=> b!6789157 m!7536950))

(declare-fun m!7536952 () Bool)

(assert (=> b!6789157 m!7536952))

(declare-fun m!7536954 () Bool)

(assert (=> b!6789156 m!7536954))

(assert (=> b!6788579 d!2133202))

(declare-fun d!2133212 () Bool)

(declare-fun e!4097922 () Bool)

(assert (=> d!2133212 e!4097922))

(declare-fun res!2774816 () Bool)

(assert (=> d!2133212 (=> (not res!2774816) (not e!4097922))))

(declare-fun lt!2446045 () List!66127)

(assert (=> d!2133212 (= res!2774816 (= (content!12866 lt!2446045) ((_ map or) (content!12866 Nil!66003) (content!12866 (Cons!66003 (h!72451 s!2326) Nil!66003)))))))

(declare-fun e!4097923 () List!66127)

(assert (=> d!2133212 (= lt!2446045 e!4097923)))

(declare-fun c!1261757 () Bool)

(assert (=> d!2133212 (= c!1261757 ((_ is Nil!66003) Nil!66003))))

(assert (=> d!2133212 (= (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003)) lt!2446045)))

(declare-fun b!6789172 () Bool)

(declare-fun res!2774815 () Bool)

(assert (=> b!6789172 (=> (not res!2774815) (not e!4097922))))

(assert (=> b!6789172 (= res!2774815 (= (size!40644 lt!2446045) (+ (size!40644 Nil!66003) (size!40644 (Cons!66003 (h!72451 s!2326) Nil!66003)))))))

(declare-fun b!6789173 () Bool)

(assert (=> b!6789173 (= e!4097922 (or (not (= (Cons!66003 (h!72451 s!2326) Nil!66003) Nil!66003)) (= lt!2446045 Nil!66003)))))

(declare-fun b!6789171 () Bool)

(assert (=> b!6789171 (= e!4097923 (Cons!66003 (h!72451 Nil!66003) (++!14764 (t!379848 Nil!66003) (Cons!66003 (h!72451 s!2326) Nil!66003))))))

(declare-fun b!6789170 () Bool)

(assert (=> b!6789170 (= e!4097923 (Cons!66003 (h!72451 s!2326) Nil!66003))))

(assert (= (and d!2133212 c!1261757) b!6789170))

(assert (= (and d!2133212 (not c!1261757)) b!6789171))

(assert (= (and d!2133212 res!2774816) b!6789172))

(assert (= (and b!6789172 res!2774815) b!6789173))

(declare-fun m!7536962 () Bool)

(assert (=> d!2133212 m!7536962))

(declare-fun m!7536964 () Bool)

(assert (=> d!2133212 m!7536964))

(declare-fun m!7536968 () Bool)

(assert (=> d!2133212 m!7536968))

(declare-fun m!7536970 () Bool)

(assert (=> b!6789172 m!7536970))

(declare-fun m!7536972 () Bool)

(assert (=> b!6789172 m!7536972))

(declare-fun m!7536974 () Bool)

(assert (=> b!6789172 m!7536974))

(declare-fun m!7536978 () Bool)

(assert (=> b!6789171 m!7536978))

(assert (=> b!6788579 d!2133212))

(declare-fun d!2133214 () Bool)

(assert (=> d!2133214 (= (++!14764 (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003)) (t!379848 s!2326)) s!2326)))

(declare-fun lt!2446048 () Unit!159909)

(declare-fun choose!50568 (List!66127 C!33488 List!66127 List!66127) Unit!159909)

(assert (=> d!2133214 (= lt!2446048 (choose!50568 Nil!66003 (h!72451 s!2326) (t!379848 s!2326) s!2326))))

(assert (=> d!2133214 (= (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) (t!379848 s!2326))) s!2326)))

(assert (=> d!2133214 (= (lemmaMoveElementToOtherListKeepsConcatEq!2729 Nil!66003 (h!72451 s!2326) (t!379848 s!2326) s!2326) lt!2446048)))

(declare-fun bs!1808834 () Bool)

(assert (= bs!1808834 d!2133214))

(assert (=> bs!1808834 m!7536406))

(assert (=> bs!1808834 m!7536406))

(assert (=> bs!1808834 m!7536408))

(declare-fun m!7536992 () Bool)

(assert (=> bs!1808834 m!7536992))

(declare-fun m!7536994 () Bool)

(assert (=> bs!1808834 m!7536994))

(assert (=> b!6788579 d!2133214))

(declare-fun b!6789189 () Bool)

(declare-fun lt!2446050 () Unit!159909)

(declare-fun lt!2446051 () Unit!159909)

(assert (=> b!6789189 (= lt!2446050 lt!2446051)))

(assert (=> b!6789189 (= (++!14764 (++!14764 (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003)) (Cons!66003 (h!72451 (t!379848 s!2326)) Nil!66003)) (t!379848 (t!379848 s!2326))) s!2326)))

(assert (=> b!6789189 (= lt!2446051 (lemmaMoveElementToOtherListKeepsConcatEq!2729 (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003)) (h!72451 (t!379848 s!2326)) (t!379848 (t!379848 s!2326)) s!2326))))

(declare-fun e!4097937 () Option!16496)

(assert (=> b!6789189 (= e!4097937 (findConcatSeparation!2910 (reg!16938 r!7292) r!7292 (++!14764 (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003)) (Cons!66003 (h!72451 (t!379848 s!2326)) Nil!66003)) (t!379848 (t!379848 s!2326)) s!2326))))

(declare-fun d!2133224 () Bool)

(declare-fun e!4097940 () Bool)

(assert (=> d!2133224 e!4097940))

(declare-fun res!2774831 () Bool)

(assert (=> d!2133224 (=> res!2774831 e!4097940)))

(declare-fun e!4097939 () Bool)

(assert (=> d!2133224 (= res!2774831 e!4097939)))

(declare-fun res!2774832 () Bool)

(assert (=> d!2133224 (=> (not res!2774832) (not e!4097939))))

(declare-fun lt!2446049 () Option!16496)

(assert (=> d!2133224 (= res!2774832 (isDefined!13199 lt!2446049))))

(declare-fun e!4097941 () Option!16496)

(assert (=> d!2133224 (= lt!2446049 e!4097941)))

(declare-fun c!1261760 () Bool)

(declare-fun e!4097938 () Bool)

(assert (=> d!2133224 (= c!1261760 e!4097938)))

(declare-fun res!2774830 () Bool)

(assert (=> d!2133224 (=> (not res!2774830) (not e!4097938))))

(assert (=> d!2133224 (= res!2774830 (matchR!8792 (reg!16938 r!7292) (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003))))))

(assert (=> d!2133224 (validRegex!8345 (reg!16938 r!7292))))

(assert (=> d!2133224 (= (findConcatSeparation!2910 (reg!16938 r!7292) r!7292 (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003)) (t!379848 s!2326) s!2326) lt!2446049)))

(declare-fun b!6789190 () Bool)

(declare-fun res!2774828 () Bool)

(assert (=> b!6789190 (=> (not res!2774828) (not e!4097939))))

(assert (=> b!6789190 (= res!2774828 (matchR!8792 (reg!16938 r!7292) (_1!36887 (get!22982 lt!2446049))))))

(declare-fun b!6789191 () Bool)

(assert (=> b!6789191 (= e!4097941 (Some!16495 (tuple2!67169 (++!14764 Nil!66003 (Cons!66003 (h!72451 s!2326) Nil!66003)) (t!379848 s!2326))))))

(declare-fun b!6789192 () Bool)

(assert (=> b!6789192 (= e!4097938 (matchR!8792 r!7292 (t!379848 s!2326)))))

(declare-fun b!6789193 () Bool)

(assert (=> b!6789193 (= e!4097937 None!16495)))

(declare-fun b!6789194 () Bool)

(assert (=> b!6789194 (= e!4097940 (not (isDefined!13199 lt!2446049)))))

(declare-fun b!6789195 () Bool)

(assert (=> b!6789195 (= e!4097939 (= (++!14764 (_1!36887 (get!22982 lt!2446049)) (_2!36887 (get!22982 lt!2446049))) s!2326))))

(declare-fun b!6789196 () Bool)

(declare-fun res!2774829 () Bool)

(assert (=> b!6789196 (=> (not res!2774829) (not e!4097939))))

(assert (=> b!6789196 (= res!2774829 (matchR!8792 r!7292 (_2!36887 (get!22982 lt!2446049))))))

(declare-fun b!6789197 () Bool)

(assert (=> b!6789197 (= e!4097941 e!4097937)))

(declare-fun c!1261761 () Bool)

(assert (=> b!6789197 (= c!1261761 ((_ is Nil!66003) (t!379848 s!2326)))))

(assert (= (and d!2133224 res!2774830) b!6789192))

(assert (= (and d!2133224 c!1261760) b!6789191))

(assert (= (and d!2133224 (not c!1261760)) b!6789197))

(assert (= (and b!6789197 c!1261761) b!6789193))

(assert (= (and b!6789197 (not c!1261761)) b!6789189))

(assert (= (and d!2133224 res!2774832) b!6789190))

(assert (= (and b!6789190 res!2774828) b!6789196))

(assert (= (and b!6789196 res!2774829) b!6789195))

(assert (= (and d!2133224 (not res!2774831)) b!6789194))

(declare-fun m!7536996 () Bool)

(assert (=> b!6789192 m!7536996))

(declare-fun m!7536998 () Bool)

(assert (=> d!2133224 m!7536998))

(assert (=> d!2133224 m!7536406))

(declare-fun m!7537000 () Bool)

(assert (=> d!2133224 m!7537000))

(assert (=> d!2133224 m!7536356))

(declare-fun m!7537002 () Bool)

(assert (=> b!6789195 m!7537002))

(declare-fun m!7537004 () Bool)

(assert (=> b!6789195 m!7537004))

(assert (=> b!6789196 m!7537002))

(declare-fun m!7537006 () Bool)

(assert (=> b!6789196 m!7537006))

(assert (=> b!6789190 m!7537002))

(declare-fun m!7537008 () Bool)

(assert (=> b!6789190 m!7537008))

(assert (=> b!6789189 m!7536406))

(declare-fun m!7537010 () Bool)

(assert (=> b!6789189 m!7537010))

(assert (=> b!6789189 m!7537010))

(declare-fun m!7537012 () Bool)

(assert (=> b!6789189 m!7537012))

(assert (=> b!6789189 m!7536406))

(declare-fun m!7537014 () Bool)

(assert (=> b!6789189 m!7537014))

(assert (=> b!6789189 m!7537010))

(declare-fun m!7537016 () Bool)

(assert (=> b!6789189 m!7537016))

(assert (=> b!6789194 m!7536998))

(assert (=> b!6788579 d!2133224))

(declare-fun d!2133226 () Bool)

(assert (=> d!2133226 (= (isEmpty!38372 (unfocusZipperList!2030 zl!343)) ((_ is Nil!66002) (unfocusZipperList!2030 zl!343)))))

(assert (=> b!6787943 d!2133226))

(declare-fun b!6789198 () Bool)

(declare-fun e!4097942 () (InoxSet Context!11986))

(assert (=> b!6789198 (= e!4097942 ((as const (Array Context!11986 Bool)) false))))

(declare-fun bm!616375 () Bool)

(declare-fun call!616380 () (InoxSet Context!11986))

(assert (=> bm!616375 (= call!616380 (derivationStepZipperDown!1837 (h!72450 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445912))))) (Context!11987 (t!379847 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445912)))))) (h!72451 s!2326)))))

(declare-fun b!6789199 () Bool)

(declare-fun e!4097943 () Bool)

(assert (=> b!6789199 (= e!4097943 (nullable!6588 (h!72450 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445912)))))))))

(declare-fun b!6789200 () Bool)

(declare-fun e!4097944 () (InoxSet Context!11986))

(assert (=> b!6789200 (= e!4097944 ((_ map or) call!616380 (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445912)))))) (h!72451 s!2326))))))

(declare-fun d!2133228 () Bool)

(declare-fun c!1261763 () Bool)

(assert (=> d!2133228 (= c!1261763 e!4097943)))

(declare-fun res!2774833 () Bool)

(assert (=> d!2133228 (=> (not res!2774833) (not e!4097943))))

(assert (=> d!2133228 (= res!2774833 ((_ is Cons!66002) (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445912))))))))

(assert (=> d!2133228 (= (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 lt!2445912))) (h!72451 s!2326)) e!4097944)))

(declare-fun b!6789201 () Bool)

(assert (=> b!6789201 (= e!4097942 call!616380)))

(declare-fun b!6789202 () Bool)

(assert (=> b!6789202 (= e!4097944 e!4097942)))

(declare-fun c!1261762 () Bool)

(assert (=> b!6789202 (= c!1261762 ((_ is Cons!66002) (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445912))))))))

(assert (= (and d!2133228 res!2774833) b!6789199))

(assert (= (and d!2133228 c!1261763) b!6789200))

(assert (= (and d!2133228 (not c!1261763)) b!6789202))

(assert (= (and b!6789202 c!1261762) b!6789201))

(assert (= (and b!6789202 (not c!1261762)) b!6789198))

(assert (= (or b!6789200 b!6789201) bm!616375))

(declare-fun m!7537018 () Bool)

(assert (=> bm!616375 m!7537018))

(declare-fun m!7537020 () Bool)

(assert (=> b!6789199 m!7537020))

(declare-fun m!7537022 () Bool)

(assert (=> b!6789200 m!7537022))

(assert (=> b!6788422 d!2133228))

(declare-fun d!2133230 () Bool)

(assert (=> d!2133230 (= (head!13630 s!2326) (h!72451 s!2326))))

(assert (=> b!6788337 d!2133230))

(declare-fun d!2133232 () Bool)

(assert (=> d!2133232 true))

(declare-fun setRes!46469 () Bool)

(assert (=> d!2133232 setRes!46469))

(declare-fun condSetEmpty!46469 () Bool)

(declare-fun res!2774840 () (InoxSet Context!11986))

(assert (=> d!2133232 (= condSetEmpty!46469 (= res!2774840 ((as const (Array Context!11986 Bool)) false)))))

(assert (=> d!2133232 (= (choose!50556 lt!2445905 lambda!382297) res!2774840)))

(declare-fun setIsEmpty!46469 () Bool)

(assert (=> setIsEmpty!46469 setRes!46469))

(declare-fun setElem!46469 () Context!11986)

(declare-fun e!4097949 () Bool)

(declare-fun tp!1859479 () Bool)

(declare-fun setNonEmpty!46469 () Bool)

(assert (=> setNonEmpty!46469 (= setRes!46469 (and tp!1859479 (inv!84769 setElem!46469) e!4097949))))

(declare-fun setRest!46469 () (InoxSet Context!11986))

(assert (=> setNonEmpty!46469 (= res!2774840 ((_ map or) (store ((as const (Array Context!11986 Bool)) false) setElem!46469 true) setRest!46469))))

(declare-fun b!6789209 () Bool)

(declare-fun tp!1859478 () Bool)

(assert (=> b!6789209 (= e!4097949 tp!1859478)))

(assert (= (and d!2133232 condSetEmpty!46469) setIsEmpty!46469))

(assert (= (and d!2133232 (not condSetEmpty!46469)) setNonEmpty!46469))

(assert (= setNonEmpty!46469 b!6789209))

(declare-fun m!7537024 () Bool)

(assert (=> setNonEmpty!46469 m!7537024))

(assert (=> d!2132808 d!2133232))

(declare-fun b!6789210 () Bool)

(declare-fun e!4097952 () (InoxSet Context!11986))

(declare-fun call!616385 () (InoxSet Context!11986))

(assert (=> b!6789210 (= e!4097952 call!616385)))

(declare-fun call!616386 () (InoxSet Context!11986))

(declare-fun call!616381 () List!66126)

(declare-fun c!1261768 () Bool)

(declare-fun c!1261766 () Bool)

(declare-fun c!1261765 () Bool)

(declare-fun bm!616376 () Bool)

(assert (=> bm!616376 (= call!616386 (derivationStepZipperDown!1837 (ite c!1261765 (regOne!33731 (h!72450 (exprs!6493 (h!72452 zl!343)))) (ite c!1261768 (regTwo!33730 (h!72450 (exprs!6493 (h!72452 zl!343)))) (ite c!1261766 (regOne!33730 (h!72450 (exprs!6493 (h!72452 zl!343)))) (reg!16938 (h!72450 (exprs!6493 (h!72452 zl!343))))))) (ite (or c!1261765 c!1261768) (Context!11987 (t!379847 (exprs!6493 (h!72452 zl!343)))) (Context!11987 call!616381)) (h!72451 s!2326)))))

(declare-fun call!616384 () (InoxSet Context!11986))

(declare-fun bm!616377 () Bool)

(declare-fun call!616382 () List!66126)

(assert (=> bm!616377 (= call!616384 (derivationStepZipperDown!1837 (ite c!1261765 (regTwo!33731 (h!72450 (exprs!6493 (h!72452 zl!343)))) (regOne!33730 (h!72450 (exprs!6493 (h!72452 zl!343))))) (ite c!1261765 (Context!11987 (t!379847 (exprs!6493 (h!72452 zl!343)))) (Context!11987 call!616382)) (h!72451 s!2326)))))

(declare-fun b!6789211 () Bool)

(declare-fun e!4097951 () (InoxSet Context!11986))

(declare-fun e!4097950 () (InoxSet Context!11986))

(assert (=> b!6789211 (= e!4097951 e!4097950)))

(assert (=> b!6789211 (= c!1261765 ((_ is Union!16609) (h!72450 (exprs!6493 (h!72452 zl!343)))))))

(declare-fun b!6789212 () Bool)

(declare-fun e!4097954 () (InoxSet Context!11986))

(assert (=> b!6789212 (= e!4097954 call!616385)))

(declare-fun b!6789213 () Bool)

(declare-fun e!4097955 () Bool)

(assert (=> b!6789213 (= c!1261768 e!4097955)))

(declare-fun res!2774841 () Bool)

(assert (=> b!6789213 (=> (not res!2774841) (not e!4097955))))

(assert (=> b!6789213 (= res!2774841 ((_ is Concat!25454) (h!72450 (exprs!6493 (h!72452 zl!343)))))))

(declare-fun e!4097953 () (InoxSet Context!11986))

(assert (=> b!6789213 (= e!4097950 e!4097953)))

(declare-fun b!6789214 () Bool)

(assert (=> b!6789214 (= e!4097952 ((as const (Array Context!11986 Bool)) false))))

(declare-fun b!6789215 () Bool)

(assert (=> b!6789215 (= e!4097955 (nullable!6588 (regOne!33730 (h!72450 (exprs!6493 (h!72452 zl!343))))))))

(declare-fun b!6789216 () Bool)

(assert (=> b!6789216 (= e!4097953 e!4097954)))

(assert (=> b!6789216 (= c!1261766 ((_ is Concat!25454) (h!72450 (exprs!6493 (h!72452 zl!343)))))))

(declare-fun bm!616378 () Bool)

(assert (=> bm!616378 (= call!616381 call!616382)))

(declare-fun d!2133234 () Bool)

(declare-fun c!1261767 () Bool)

(assert (=> d!2133234 (= c!1261767 (and ((_ is ElementMatch!16609) (h!72450 (exprs!6493 (h!72452 zl!343)))) (= (c!1261391 (h!72450 (exprs!6493 (h!72452 zl!343)))) (h!72451 s!2326))))))

(assert (=> d!2133234 (= (derivationStepZipperDown!1837 (h!72450 (exprs!6493 (h!72452 zl!343))) (Context!11987 (t!379847 (exprs!6493 (h!72452 zl!343)))) (h!72451 s!2326)) e!4097951)))

(declare-fun bm!616379 () Bool)

(declare-fun call!616383 () (InoxSet Context!11986))

(assert (=> bm!616379 (= call!616383 call!616386)))

(declare-fun b!6789217 () Bool)

(assert (=> b!6789217 (= e!4097951 (store ((as const (Array Context!11986 Bool)) false) (Context!11987 (t!379847 (exprs!6493 (h!72452 zl!343)))) true))))

(declare-fun b!6789218 () Bool)

(assert (=> b!6789218 (= e!4097950 ((_ map or) call!616386 call!616384))))

(declare-fun b!6789219 () Bool)

(assert (=> b!6789219 (= e!4097953 ((_ map or) call!616384 call!616383))))

(declare-fun bm!616380 () Bool)

(assert (=> bm!616380 (= call!616385 call!616383)))

(declare-fun b!6789220 () Bool)

(declare-fun c!1261764 () Bool)

(assert (=> b!6789220 (= c!1261764 ((_ is Star!16609) (h!72450 (exprs!6493 (h!72452 zl!343)))))))

(assert (=> b!6789220 (= e!4097954 e!4097952)))

(declare-fun bm!616381 () Bool)

(assert (=> bm!616381 (= call!616382 ($colon$colon!2417 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 (h!72452 zl!343))))) (ite (or c!1261768 c!1261766) (regTwo!33730 (h!72450 (exprs!6493 (h!72452 zl!343)))) (h!72450 (exprs!6493 (h!72452 zl!343))))))))

(assert (= (and d!2133234 c!1261767) b!6789217))

(assert (= (and d!2133234 (not c!1261767)) b!6789211))

(assert (= (and b!6789211 c!1261765) b!6789218))

(assert (= (and b!6789211 (not c!1261765)) b!6789213))

(assert (= (and b!6789213 res!2774841) b!6789215))

(assert (= (and b!6789213 c!1261768) b!6789219))

(assert (= (and b!6789213 (not c!1261768)) b!6789216))

(assert (= (and b!6789216 c!1261766) b!6789212))

(assert (= (and b!6789216 (not c!1261766)) b!6789220))

(assert (= (and b!6789220 c!1261764) b!6789210))

(assert (= (and b!6789220 (not c!1261764)) b!6789214))

(assert (= (or b!6789212 b!6789210) bm!616378))

(assert (= (or b!6789212 b!6789210) bm!616380))

(assert (= (or b!6789219 bm!616378) bm!616381))

(assert (= (or b!6789219 bm!616380) bm!616379))

(assert (= (or b!6789218 b!6789219) bm!616377))

(assert (= (or b!6789218 bm!616379) bm!616376))

(declare-fun m!7537026 () Bool)

(assert (=> b!6789217 m!7537026))

(declare-fun m!7537028 () Bool)

(assert (=> bm!616381 m!7537028))

(declare-fun m!7537030 () Bool)

(assert (=> b!6789215 m!7537030))

(declare-fun m!7537032 () Bool)

(assert (=> bm!616377 m!7537032))

(declare-fun m!7537034 () Bool)

(assert (=> bm!616376 m!7537034))

(assert (=> bm!616259 d!2133234))

(declare-fun bs!1808848 () Bool)

(declare-fun b!6789225 () Bool)

(assert (= bs!1808848 (and b!6789225 b!6788209)))

(declare-fun lambda!382423 () Int)

(assert (=> bs!1808848 (not (= lambda!382423 lambda!382330))))

(declare-fun bs!1808850 () Bool)

(assert (= bs!1808850 (and b!6789225 d!2132942)))

(assert (=> bs!1808850 (not (= lambda!382423 lambda!382372))))

(declare-fun bs!1808852 () Bool)

(assert (= bs!1808852 (and b!6789225 b!6788602)))

(assert (=> bs!1808852 (= (and (= (reg!16938 (regTwo!33731 lt!2445914)) (reg!16938 r!7292)) (= (regTwo!33731 lt!2445914) r!7292)) (= lambda!382423 lambda!382377))))

(declare-fun bs!1808855 () Bool)

(assert (= bs!1808855 (and b!6789225 b!6787882)))

(assert (=> bs!1808855 (= (and (= (reg!16938 (regTwo!33731 lt!2445914)) (reg!16938 r!7292)) (= (regTwo!33731 lt!2445914) r!7292)) (= lambda!382423 lambda!382295))))

(assert (=> bs!1808855 (not (= lambda!382423 lambda!382296))))

(declare-fun bs!1808857 () Bool)

(assert (= bs!1808857 (and b!6789225 b!6788208)))

(assert (=> bs!1808857 (= (and (= (reg!16938 (regTwo!33731 lt!2445914)) (reg!16938 lt!2445914)) (= (regTwo!33731 lt!2445914) lt!2445914)) (= lambda!382423 lambda!382329))))

(assert (=> bs!1808855 (not (= lambda!382423 lambda!382294))))

(declare-fun bs!1808859 () Bool)

(assert (= bs!1808859 (and b!6789225 d!2132940)))

(assert (=> bs!1808859 (not (= lambda!382423 lambda!382364))))

(declare-fun bs!1808860 () Bool)

(assert (= bs!1808860 (and b!6789225 d!2132962)))

(assert (=> bs!1808860 (not (= lambda!382423 lambda!382376))))

(assert (=> bs!1808859 (not (= lambda!382423 lambda!382363))))

(assert (=> bs!1808850 (= (and (= (reg!16938 (regTwo!33731 lt!2445914)) (reg!16938 r!7292)) (= (regTwo!33731 lt!2445914) (Star!16609 (reg!16938 r!7292)))) (= lambda!382423 lambda!382373))))

(declare-fun bs!1808862 () Bool)

(assert (= bs!1808862 (and b!6789225 b!6788603)))

(assert (=> bs!1808862 (not (= lambda!382423 lambda!382378))))

(assert (=> b!6789225 true))

(assert (=> b!6789225 true))

(declare-fun bs!1808863 () Bool)

(declare-fun b!6789226 () Bool)

(assert (= bs!1808863 (and b!6789226 d!2132942)))

(declare-fun lambda!382424 () Int)

(assert (=> bs!1808863 (not (= lambda!382424 lambda!382372))))

(declare-fun bs!1808864 () Bool)

(assert (= bs!1808864 (and b!6789226 b!6788602)))

(assert (=> bs!1808864 (not (= lambda!382424 lambda!382377))))

(declare-fun bs!1808865 () Bool)

(assert (= bs!1808865 (and b!6789226 b!6787882)))

(assert (=> bs!1808865 (not (= lambda!382424 lambda!382295))))

(assert (=> bs!1808865 (= (and (= (regOne!33730 (regTwo!33731 lt!2445914)) (reg!16938 r!7292)) (= (regTwo!33730 (regTwo!33731 lt!2445914)) r!7292)) (= lambda!382424 lambda!382296))))

(declare-fun bs!1808866 () Bool)

(assert (= bs!1808866 (and b!6789226 b!6788208)))

(assert (=> bs!1808866 (not (= lambda!382424 lambda!382329))))

(assert (=> bs!1808865 (not (= lambda!382424 lambda!382294))))

(declare-fun bs!1808867 () Bool)

(assert (= bs!1808867 (and b!6789226 b!6788209)))

(assert (=> bs!1808867 (= (and (= (regOne!33730 (regTwo!33731 lt!2445914)) (regOne!33730 lt!2445914)) (= (regTwo!33730 (regTwo!33731 lt!2445914)) (regTwo!33730 lt!2445914))) (= lambda!382424 lambda!382330))))

(declare-fun bs!1808868 () Bool)

(assert (= bs!1808868 (and b!6789226 b!6789225)))

(assert (=> bs!1808868 (not (= lambda!382424 lambda!382423))))

(declare-fun bs!1808869 () Bool)

(assert (= bs!1808869 (and b!6789226 d!2132940)))

(assert (=> bs!1808869 (= (and (= (regOne!33730 (regTwo!33731 lt!2445914)) (reg!16938 r!7292)) (= (regTwo!33730 (regTwo!33731 lt!2445914)) r!7292)) (= lambda!382424 lambda!382364))))

(declare-fun bs!1808870 () Bool)

(assert (= bs!1808870 (and b!6789226 d!2132962)))

(assert (=> bs!1808870 (not (= lambda!382424 lambda!382376))))

(assert (=> bs!1808869 (not (= lambda!382424 lambda!382363))))

(assert (=> bs!1808863 (not (= lambda!382424 lambda!382373))))

(declare-fun bs!1808876 () Bool)

(assert (= bs!1808876 (and b!6789226 b!6788603)))

(assert (=> bs!1808876 (= (and (= (regOne!33730 (regTwo!33731 lt!2445914)) (regOne!33730 r!7292)) (= (regTwo!33730 (regTwo!33731 lt!2445914)) (regTwo!33730 r!7292))) (= lambda!382424 lambda!382378))))

(assert (=> b!6789226 true))

(assert (=> b!6789226 true))

(declare-fun b!6789221 () Bool)

(declare-fun e!4097958 () Bool)

(declare-fun e!4097959 () Bool)

(assert (=> b!6789221 (= e!4097958 e!4097959)))

(declare-fun res!2774843 () Bool)

(assert (=> b!6789221 (= res!2774843 (matchRSpec!3710 (regOne!33731 (regTwo!33731 lt!2445914)) s!2326))))

(assert (=> b!6789221 (=> res!2774843 e!4097959)))

(declare-fun b!6789222 () Bool)

(declare-fun e!4097960 () Bool)

(assert (=> b!6789222 (= e!4097958 e!4097960)))

(declare-fun c!1261769 () Bool)

(assert (=> b!6789222 (= c!1261769 ((_ is Star!16609) (regTwo!33731 lt!2445914)))))

(declare-fun b!6789223 () Bool)

(declare-fun c!1261771 () Bool)

(assert (=> b!6789223 (= c!1261771 ((_ is Union!16609) (regTwo!33731 lt!2445914)))))

(declare-fun e!4097962 () Bool)

(assert (=> b!6789223 (= e!4097962 e!4097958)))

(declare-fun b!6789224 () Bool)

(assert (=> b!6789224 (= e!4097959 (matchRSpec!3710 (regTwo!33731 (regTwo!33731 lt!2445914)) s!2326))))

(declare-fun call!616388 () Bool)

(declare-fun bm!616382 () Bool)

(assert (=> bm!616382 (= call!616388 (Exists!3677 (ite c!1261769 lambda!382423 lambda!382424)))))

(assert (=> b!6789226 (= e!4097960 call!616388)))

(declare-fun b!6789227 () Bool)

(declare-fun e!4097961 () Bool)

(declare-fun call!616387 () Bool)

(assert (=> b!6789227 (= e!4097961 call!616387)))

(declare-fun b!6789228 () Bool)

(declare-fun c!1261770 () Bool)

(assert (=> b!6789228 (= c!1261770 ((_ is ElementMatch!16609) (regTwo!33731 lt!2445914)))))

(declare-fun e!4097957 () Bool)

(assert (=> b!6789228 (= e!4097957 e!4097962)))

(declare-fun b!6789229 () Bool)

(assert (=> b!6789229 (= e!4097962 (= s!2326 (Cons!66003 (c!1261391 (regTwo!33731 lt!2445914)) Nil!66003)))))

(declare-fun b!6789230 () Bool)

(declare-fun res!2774844 () Bool)

(declare-fun e!4097956 () Bool)

(assert (=> b!6789230 (=> res!2774844 e!4097956)))

(assert (=> b!6789230 (= res!2774844 call!616387)))

(assert (=> b!6789230 (= e!4097960 e!4097956)))

(declare-fun bm!616383 () Bool)

(assert (=> bm!616383 (= call!616387 (isEmpty!38370 s!2326))))

(declare-fun b!6789231 () Bool)

(assert (=> b!6789231 (= e!4097961 e!4097957)))

(declare-fun res!2774842 () Bool)

(assert (=> b!6789231 (= res!2774842 (not ((_ is EmptyLang!16609) (regTwo!33731 lt!2445914))))))

(assert (=> b!6789231 (=> (not res!2774842) (not e!4097957))))

(assert (=> b!6789225 (= e!4097956 call!616388)))

(declare-fun d!2133236 () Bool)

(declare-fun c!1261772 () Bool)

(assert (=> d!2133236 (= c!1261772 ((_ is EmptyExpr!16609) (regTwo!33731 lt!2445914)))))

(assert (=> d!2133236 (= (matchRSpec!3710 (regTwo!33731 lt!2445914) s!2326) e!4097961)))

(assert (= (and d!2133236 c!1261772) b!6789227))

(assert (= (and d!2133236 (not c!1261772)) b!6789231))

(assert (= (and b!6789231 res!2774842) b!6789228))

(assert (= (and b!6789228 c!1261770) b!6789229))

(assert (= (and b!6789228 (not c!1261770)) b!6789223))

(assert (= (and b!6789223 c!1261771) b!6789221))

(assert (= (and b!6789223 (not c!1261771)) b!6789222))

(assert (= (and b!6789221 (not res!2774843)) b!6789224))

(assert (= (and b!6789222 c!1261769) b!6789230))

(assert (= (and b!6789222 (not c!1261769)) b!6789226))

(assert (= (and b!6789230 (not res!2774844)) b!6789225))

(assert (= (or b!6789225 b!6789226) bm!616382))

(assert (= (or b!6789227 b!6789230) bm!616383))

(declare-fun m!7537048 () Bool)

(assert (=> b!6789221 m!7537048))

(declare-fun m!7537050 () Bool)

(assert (=> b!6789224 m!7537050))

(declare-fun m!7537052 () Bool)

(assert (=> bm!616382 m!7537052))

(assert (=> bm!616383 m!7535918))

(assert (=> b!6788207 d!2133236))

(declare-fun b!6789245 () Bool)

(declare-fun e!4097972 () (InoxSet Context!11986))

(declare-fun call!616399 () (InoxSet Context!11986))

(assert (=> b!6789245 (= e!4097972 call!616399)))

(declare-fun call!616395 () List!66126)

(declare-fun call!616400 () (InoxSet Context!11986))

(declare-fun c!1261783 () Bool)

(declare-fun c!1261780 () Bool)

(declare-fun bm!616390 () Bool)

(declare-fun c!1261781 () Bool)

(assert (=> bm!616390 (= call!616400 (derivationStepZipperDown!1837 (ite c!1261780 (regOne!33731 (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292)))))) (ite c!1261783 (regTwo!33730 (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292)))))) (ite c!1261781 (regOne!33730 (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292)))))) (reg!16938 (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292))))))))) (ite (or c!1261780 c!1261783) (ite (or c!1261430 c!1261433) lt!2445912 (Context!11987 call!616188)) (Context!11987 call!616395)) (h!72451 s!2326)))))

(declare-fun call!616396 () List!66126)

(declare-fun call!616398 () (InoxSet Context!11986))

(declare-fun bm!616391 () Bool)

(assert (=> bm!616391 (= call!616398 (derivationStepZipperDown!1837 (ite c!1261780 (regTwo!33731 (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292)))))) (regOne!33730 (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292))))))) (ite c!1261780 (ite (or c!1261430 c!1261433) lt!2445912 (Context!11987 call!616188)) (Context!11987 call!616396)) (h!72451 s!2326)))))

(declare-fun b!6789246 () Bool)

(declare-fun e!4097971 () (InoxSet Context!11986))

(declare-fun e!4097970 () (InoxSet Context!11986))

(assert (=> b!6789246 (= e!4097971 e!4097970)))

(assert (=> b!6789246 (= c!1261780 ((_ is Union!16609) (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292)))))))))

(declare-fun b!6789247 () Bool)

(declare-fun e!4097974 () (InoxSet Context!11986))

(assert (=> b!6789247 (= e!4097974 call!616399)))

(declare-fun b!6789248 () Bool)

(declare-fun e!4097975 () Bool)

(assert (=> b!6789248 (= c!1261783 e!4097975)))

(declare-fun res!2774846 () Bool)

(assert (=> b!6789248 (=> (not res!2774846) (not e!4097975))))

(assert (=> b!6789248 (= res!2774846 ((_ is Concat!25454) (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292)))))))))

(declare-fun e!4097973 () (InoxSet Context!11986))

(assert (=> b!6789248 (= e!4097970 e!4097973)))

(declare-fun b!6789249 () Bool)

(assert (=> b!6789249 (= e!4097972 ((as const (Array Context!11986 Bool)) false))))

(declare-fun b!6789250 () Bool)

(assert (=> b!6789250 (= e!4097975 (nullable!6588 (regOne!33730 (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292))))))))))

(declare-fun b!6789251 () Bool)

(assert (=> b!6789251 (= e!4097973 e!4097974)))

(assert (=> b!6789251 (= c!1261781 ((_ is Concat!25454) (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292)))))))))

(declare-fun bm!616392 () Bool)

(assert (=> bm!616392 (= call!616395 call!616396)))

(declare-fun c!1261782 () Bool)

(declare-fun d!2133242 () Bool)

(assert (=> d!2133242 (= c!1261782 (and ((_ is ElementMatch!16609) (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292)))))) (= (c!1261391 (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292)))))) (h!72451 s!2326))))))

(assert (=> d!2133242 (= (derivationStepZipperDown!1837 (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292))))) (ite (or c!1261430 c!1261433) lt!2445912 (Context!11987 call!616188)) (h!72451 s!2326)) e!4097971)))

(declare-fun bm!616393 () Bool)

(declare-fun call!616397 () (InoxSet Context!11986))

(assert (=> bm!616393 (= call!616397 call!616400)))

(declare-fun b!6789252 () Bool)

(assert (=> b!6789252 (= e!4097971 (store ((as const (Array Context!11986 Bool)) false) (ite (or c!1261430 c!1261433) lt!2445912 (Context!11987 call!616188)) true))))

(declare-fun b!6789253 () Bool)

(assert (=> b!6789253 (= e!4097970 ((_ map or) call!616400 call!616398))))

(declare-fun b!6789254 () Bool)

(assert (=> b!6789254 (= e!4097973 ((_ map or) call!616398 call!616397))))

(declare-fun bm!616394 () Bool)

(assert (=> bm!616394 (= call!616399 call!616397)))

(declare-fun b!6789255 () Bool)

(declare-fun c!1261779 () Bool)

(assert (=> b!6789255 (= c!1261779 ((_ is Star!16609) (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292)))))))))

(assert (=> b!6789255 (= e!4097974 e!4097972)))

(declare-fun bm!616395 () Bool)

(assert (=> bm!616395 (= call!616396 ($colon$colon!2417 (exprs!6493 (ite (or c!1261430 c!1261433) lt!2445912 (Context!11987 call!616188))) (ite (or c!1261783 c!1261781) (regTwo!33730 (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292)))))) (ite c!1261430 (regOne!33731 (reg!16938 r!7292)) (ite c!1261433 (regTwo!33730 (reg!16938 r!7292)) (ite c!1261431 (regOne!33730 (reg!16938 r!7292)) (reg!16938 (reg!16938 r!7292))))))))))

(assert (= (and d!2133242 c!1261782) b!6789252))

(assert (= (and d!2133242 (not c!1261782)) b!6789246))

(assert (= (and b!6789246 c!1261780) b!6789253))

(assert (= (and b!6789246 (not c!1261780)) b!6789248))

(assert (= (and b!6789248 res!2774846) b!6789250))

(assert (= (and b!6789248 c!1261783) b!6789254))

(assert (= (and b!6789248 (not c!1261783)) b!6789251))

(assert (= (and b!6789251 c!1261781) b!6789247))

(assert (= (and b!6789251 (not c!1261781)) b!6789255))

(assert (= (and b!6789255 c!1261779) b!6789245))

(assert (= (and b!6789255 (not c!1261779)) b!6789249))

(assert (= (or b!6789247 b!6789245) bm!616392))

(assert (= (or b!6789247 b!6789245) bm!616394))

(assert (= (or b!6789254 bm!616392) bm!616395))

(assert (= (or b!6789254 bm!616394) bm!616393))

(assert (= (or b!6789253 b!6789254) bm!616391))

(assert (= (or b!6789253 bm!616393) bm!616390))

(declare-fun m!7537066 () Bool)

(assert (=> b!6789252 m!7537066))

(declare-fun m!7537068 () Bool)

(assert (=> bm!616395 m!7537068))

(declare-fun m!7537070 () Bool)

(assert (=> b!6789250 m!7537070))

(declare-fun m!7537078 () Bool)

(assert (=> bm!616391 m!7537078))

(declare-fun m!7537080 () Bool)

(assert (=> bm!616390 m!7537080))

(assert (=> bm!616183 d!2133242))

(declare-fun bs!1808888 () Bool)

(declare-fun d!2133256 () Bool)

(assert (= bs!1808888 (and d!2133256 d!2132992)))

(declare-fun lambda!382426 () Int)

(assert (=> bs!1808888 (= lambda!382426 lambda!382381)))

(declare-fun bs!1808889 () Bool)

(assert (= bs!1808889 (and d!2133256 d!2132890)))

(assert (=> bs!1808889 (= lambda!382426 lambda!382348)))

(declare-fun bs!1808890 () Bool)

(assert (= bs!1808890 (and d!2133256 d!2132790)))

(assert (=> bs!1808890 (= lambda!382426 lambda!382300)))

(declare-fun bs!1808891 () Bool)

(assert (= bs!1808891 (and d!2133256 d!2133200)))

(assert (=> bs!1808891 (= lambda!382426 lambda!382419)))

(declare-fun bs!1808892 () Bool)

(assert (= bs!1808892 (and d!2133256 d!2132988)))

(assert (=> bs!1808892 (= lambda!382426 lambda!382380)))

(declare-fun bs!1808893 () Bool)

(assert (= bs!1808893 (and d!2133256 d!2132792)))

(assert (=> bs!1808893 (= lambda!382426 lambda!382303)))

(declare-fun bs!1808894 () Bool)

(assert (= bs!1808894 (and d!2133256 d!2132796)))

(assert (=> bs!1808894 (= lambda!382426 lambda!382306)))

(assert (=> d!2133256 (= (inv!84769 setElem!46461) (forall!15801 (exprs!6493 setElem!46461) lambda!382426))))

(declare-fun bs!1808895 () Bool)

(assert (= bs!1808895 d!2133256))

(declare-fun m!7537082 () Bool)

(assert (=> bs!1808895 m!7537082))

(assert (=> setNonEmpty!46461 d!2133256))

(declare-fun bs!1808899 () Bool)

(declare-fun b!6789276 () Bool)

(assert (= bs!1808899 (and b!6789276 d!2132942)))

(declare-fun lambda!382428 () Int)

(assert (=> bs!1808899 (not (= lambda!382428 lambda!382372))))

(declare-fun bs!1808902 () Bool)

(assert (= bs!1808902 (and b!6789276 b!6788602)))

(assert (=> bs!1808902 (= (and (= (reg!16938 (regTwo!33731 r!7292)) (reg!16938 r!7292)) (= (regTwo!33731 r!7292) r!7292)) (= lambda!382428 lambda!382377))))

(declare-fun bs!1808905 () Bool)

(assert (= bs!1808905 (and b!6789276 b!6789226)))

(assert (=> bs!1808905 (not (= lambda!382428 lambda!382424))))

(declare-fun bs!1808908 () Bool)

(assert (= bs!1808908 (and b!6789276 b!6787882)))

(assert (=> bs!1808908 (= (and (= (reg!16938 (regTwo!33731 r!7292)) (reg!16938 r!7292)) (= (regTwo!33731 r!7292) r!7292)) (= lambda!382428 lambda!382295))))

(assert (=> bs!1808908 (not (= lambda!382428 lambda!382296))))

(declare-fun bs!1808913 () Bool)

(assert (= bs!1808913 (and b!6789276 b!6788208)))

(assert (=> bs!1808913 (= (and (= (reg!16938 (regTwo!33731 r!7292)) (reg!16938 lt!2445914)) (= (regTwo!33731 r!7292) lt!2445914)) (= lambda!382428 lambda!382329))))

(assert (=> bs!1808908 (not (= lambda!382428 lambda!382294))))

(declare-fun bs!1808916 () Bool)

(assert (= bs!1808916 (and b!6789276 b!6788209)))

(assert (=> bs!1808916 (not (= lambda!382428 lambda!382330))))

(declare-fun bs!1808917 () Bool)

(assert (= bs!1808917 (and b!6789276 b!6789225)))

(assert (=> bs!1808917 (= (and (= (reg!16938 (regTwo!33731 r!7292)) (reg!16938 (regTwo!33731 lt!2445914))) (= (regTwo!33731 r!7292) (regTwo!33731 lt!2445914))) (= lambda!382428 lambda!382423))))

(declare-fun bs!1808918 () Bool)

(assert (= bs!1808918 (and b!6789276 d!2132940)))

(assert (=> bs!1808918 (not (= lambda!382428 lambda!382364))))

(declare-fun bs!1808919 () Bool)

(assert (= bs!1808919 (and b!6789276 d!2132962)))

(assert (=> bs!1808919 (not (= lambda!382428 lambda!382376))))

(assert (=> bs!1808918 (not (= lambda!382428 lambda!382363))))

(assert (=> bs!1808899 (= (and (= (reg!16938 (regTwo!33731 r!7292)) (reg!16938 r!7292)) (= (regTwo!33731 r!7292) (Star!16609 (reg!16938 r!7292)))) (= lambda!382428 lambda!382373))))

(declare-fun bs!1808920 () Bool)

(assert (= bs!1808920 (and b!6789276 b!6788603)))

(assert (=> bs!1808920 (not (= lambda!382428 lambda!382378))))

(assert (=> b!6789276 true))

(assert (=> b!6789276 true))

(declare-fun bs!1808926 () Bool)

(declare-fun b!6789277 () Bool)

(assert (= bs!1808926 (and b!6789277 d!2132942)))

(declare-fun lambda!382430 () Int)

(assert (=> bs!1808926 (not (= lambda!382430 lambda!382372))))

(declare-fun bs!1808929 () Bool)

(assert (= bs!1808929 (and b!6789277 b!6788602)))

(assert (=> bs!1808929 (not (= lambda!382430 lambda!382377))))

(declare-fun bs!1808932 () Bool)

(assert (= bs!1808932 (and b!6789277 b!6789226)))

(assert (=> bs!1808932 (= (and (= (regOne!33730 (regTwo!33731 r!7292)) (regOne!33730 (regTwo!33731 lt!2445914))) (= (regTwo!33730 (regTwo!33731 r!7292)) (regTwo!33730 (regTwo!33731 lt!2445914)))) (= lambda!382430 lambda!382424))))

(declare-fun bs!1808934 () Bool)

(assert (= bs!1808934 (and b!6789277 b!6787882)))

(assert (=> bs!1808934 (= (and (= (regOne!33730 (regTwo!33731 r!7292)) (reg!16938 r!7292)) (= (regTwo!33730 (regTwo!33731 r!7292)) r!7292)) (= lambda!382430 lambda!382296))))

(declare-fun bs!1808937 () Bool)

(assert (= bs!1808937 (and b!6789277 b!6788208)))

(assert (=> bs!1808937 (not (= lambda!382430 lambda!382329))))

(assert (=> bs!1808934 (not (= lambda!382430 lambda!382294))))

(declare-fun bs!1808941 () Bool)

(assert (= bs!1808941 (and b!6789277 b!6788209)))

(assert (=> bs!1808941 (= (and (= (regOne!33730 (regTwo!33731 r!7292)) (regOne!33730 lt!2445914)) (= (regTwo!33730 (regTwo!33731 r!7292)) (regTwo!33730 lt!2445914))) (= lambda!382430 lambda!382330))))

(declare-fun bs!1808943 () Bool)

(assert (= bs!1808943 (and b!6789277 b!6789225)))

(assert (=> bs!1808943 (not (= lambda!382430 lambda!382423))))

(declare-fun bs!1808944 () Bool)

(assert (= bs!1808944 (and b!6789277 d!2132940)))

(assert (=> bs!1808944 (= (and (= (regOne!33730 (regTwo!33731 r!7292)) (reg!16938 r!7292)) (= (regTwo!33730 (regTwo!33731 r!7292)) r!7292)) (= lambda!382430 lambda!382364))))

(declare-fun bs!1808945 () Bool)

(assert (= bs!1808945 (and b!6789277 d!2132962)))

(assert (=> bs!1808945 (not (= lambda!382430 lambda!382376))))

(declare-fun bs!1808946 () Bool)

(assert (= bs!1808946 (and b!6789277 b!6789276)))

(assert (=> bs!1808946 (not (= lambda!382430 lambda!382428))))

(assert (=> bs!1808934 (not (= lambda!382430 lambda!382295))))

(assert (=> bs!1808944 (not (= lambda!382430 lambda!382363))))

(assert (=> bs!1808926 (not (= lambda!382430 lambda!382373))))

(declare-fun bs!1808947 () Bool)

(assert (= bs!1808947 (and b!6789277 b!6788603)))

(assert (=> bs!1808947 (= (and (= (regOne!33730 (regTwo!33731 r!7292)) (regOne!33730 r!7292)) (= (regTwo!33730 (regTwo!33731 r!7292)) (regTwo!33730 r!7292))) (= lambda!382430 lambda!382378))))

(assert (=> b!6789277 true))

(assert (=> b!6789277 true))

(declare-fun b!6789272 () Bool)

(declare-fun e!4097990 () Bool)

(declare-fun e!4097991 () Bool)

(assert (=> b!6789272 (= e!4097990 e!4097991)))

(declare-fun res!2774856 () Bool)

(assert (=> b!6789272 (= res!2774856 (matchRSpec!3710 (regOne!33731 (regTwo!33731 r!7292)) s!2326))))

(assert (=> b!6789272 (=> res!2774856 e!4097991)))

(declare-fun b!6789273 () Bool)

(declare-fun e!4097992 () Bool)

(assert (=> b!6789273 (= e!4097990 e!4097992)))

(declare-fun c!1261788 () Bool)

(assert (=> b!6789273 (= c!1261788 ((_ is Star!16609) (regTwo!33731 r!7292)))))

(declare-fun b!6789274 () Bool)

(declare-fun c!1261790 () Bool)

(assert (=> b!6789274 (= c!1261790 ((_ is Union!16609) (regTwo!33731 r!7292)))))

(declare-fun e!4097994 () Bool)

(assert (=> b!6789274 (= e!4097994 e!4097990)))

(declare-fun b!6789275 () Bool)

(assert (=> b!6789275 (= e!4097991 (matchRSpec!3710 (regTwo!33731 (regTwo!33731 r!7292)) s!2326))))

(declare-fun bm!616400 () Bool)

(declare-fun call!616406 () Bool)

(assert (=> bm!616400 (= call!616406 (Exists!3677 (ite c!1261788 lambda!382428 lambda!382430)))))

(assert (=> b!6789277 (= e!4097992 call!616406)))

(declare-fun b!6789278 () Bool)

(declare-fun e!4097993 () Bool)

(declare-fun call!616405 () Bool)

(assert (=> b!6789278 (= e!4097993 call!616405)))

(declare-fun b!6789279 () Bool)

(declare-fun c!1261789 () Bool)

(assert (=> b!6789279 (= c!1261789 ((_ is ElementMatch!16609) (regTwo!33731 r!7292)))))

(declare-fun e!4097989 () Bool)

(assert (=> b!6789279 (= e!4097989 e!4097994)))

(declare-fun b!6789280 () Bool)

(assert (=> b!6789280 (= e!4097994 (= s!2326 (Cons!66003 (c!1261391 (regTwo!33731 r!7292)) Nil!66003)))))

(declare-fun b!6789281 () Bool)

(declare-fun res!2774857 () Bool)

(declare-fun e!4097988 () Bool)

(assert (=> b!6789281 (=> res!2774857 e!4097988)))

(assert (=> b!6789281 (= res!2774857 call!616405)))

(assert (=> b!6789281 (= e!4097992 e!4097988)))

(declare-fun bm!616401 () Bool)

(assert (=> bm!616401 (= call!616405 (isEmpty!38370 s!2326))))

(declare-fun b!6789282 () Bool)

(assert (=> b!6789282 (= e!4097993 e!4097989)))

(declare-fun res!2774855 () Bool)

(assert (=> b!6789282 (= res!2774855 (not ((_ is EmptyLang!16609) (regTwo!33731 r!7292))))))

(assert (=> b!6789282 (=> (not res!2774855) (not e!4097989))))

(assert (=> b!6789276 (= e!4097988 call!616406)))

(declare-fun d!2133260 () Bool)

(declare-fun c!1261791 () Bool)

(assert (=> d!2133260 (= c!1261791 ((_ is EmptyExpr!16609) (regTwo!33731 r!7292)))))

(assert (=> d!2133260 (= (matchRSpec!3710 (regTwo!33731 r!7292) s!2326) e!4097993)))

(assert (= (and d!2133260 c!1261791) b!6789278))

(assert (= (and d!2133260 (not c!1261791)) b!6789282))

(assert (= (and b!6789282 res!2774855) b!6789279))

(assert (= (and b!6789279 c!1261789) b!6789280))

(assert (= (and b!6789279 (not c!1261789)) b!6789274))

(assert (= (and b!6789274 c!1261790) b!6789272))

(assert (= (and b!6789274 (not c!1261790)) b!6789273))

(assert (= (and b!6789272 (not res!2774856)) b!6789275))

(assert (= (and b!6789273 c!1261788) b!6789281))

(assert (= (and b!6789273 (not c!1261788)) b!6789277))

(assert (= (and b!6789281 (not res!2774857)) b!6789276))

(assert (= (or b!6789276 b!6789277) bm!616400))

(assert (= (or b!6789278 b!6789281) bm!616401))

(declare-fun m!7537122 () Bool)

(assert (=> b!6789272 m!7537122))

(declare-fun m!7537124 () Bool)

(assert (=> b!6789275 m!7537124))

(declare-fun m!7537126 () Bool)

(assert (=> bm!616400 m!7537126))

(assert (=> bm!616401 m!7535918))

(assert (=> b!6788601 d!2133260))

(declare-fun d!2133270 () Bool)

(declare-fun c!1261802 () Bool)

(assert (=> d!2133270 (= c!1261802 ((_ is Nil!66004) lt!2446022))))

(declare-fun e!4098014 () (InoxSet Context!11986))

(assert (=> d!2133270 (= (content!12865 lt!2446022) e!4098014)))

(declare-fun b!6789312 () Bool)

(assert (=> b!6789312 (= e!4098014 ((as const (Array Context!11986 Bool)) false))))

(declare-fun b!6789313 () Bool)

(assert (=> b!6789313 (= e!4098014 ((_ map or) (store ((as const (Array Context!11986 Bool)) false) (h!72452 lt!2446022) true) (content!12865 (t!379849 lt!2446022))))))

(assert (= (and d!2133270 c!1261802) b!6789312))

(assert (= (and d!2133270 (not c!1261802)) b!6789313))

(declare-fun m!7537140 () Bool)

(assert (=> b!6789313 m!7537140))

(declare-fun m!7537142 () Bool)

(assert (=> b!6789313 m!7537142))

(assert (=> b!6788661 d!2133270))

(declare-fun d!2133278 () Bool)

(assert (=> d!2133278 (= (isEmptyLang!1974 lt!2445925) ((_ is EmptyLang!16609) lt!2445925))))

(assert (=> b!6787938 d!2133278))

(declare-fun bs!1808955 () Bool)

(declare-fun d!2133282 () Bool)

(assert (= bs!1808955 (and d!2133282 d!2133194)))

(declare-fun lambda!382432 () Int)

(assert (=> bs!1808955 (= lambda!382432 lambda!382417)))

(assert (=> d!2133282 (= (nullableZipper!2316 z!1189) (exists!2730 z!1189 lambda!382432))))

(declare-fun bs!1808956 () Bool)

(assert (= bs!1808956 d!2133282))

(declare-fun m!7537158 () Bool)

(assert (=> bs!1808956 m!7537158))

(assert (=> b!6788596 d!2133282))

(assert (=> bs!1808582 d!2132906))

(declare-fun d!2133286 () Bool)

(declare-fun res!2774871 () Bool)

(declare-fun e!4098019 () Bool)

(assert (=> d!2133286 (=> res!2774871 e!4098019)))

(assert (=> d!2133286 (= res!2774871 ((_ is Nil!66002) (exprs!6493 lt!2445912)))))

(assert (=> d!2133286 (= (forall!15801 (exprs!6493 lt!2445912) lambda!382380) e!4098019)))

(declare-fun b!6789322 () Bool)

(declare-fun e!4098020 () Bool)

(assert (=> b!6789322 (= e!4098019 e!4098020)))

(declare-fun res!2774872 () Bool)

(assert (=> b!6789322 (=> (not res!2774872) (not e!4098020))))

(assert (=> b!6789322 (= res!2774872 (dynLambda!26343 lambda!382380 (h!72450 (exprs!6493 lt!2445912))))))

(declare-fun b!6789323 () Bool)

(assert (=> b!6789323 (= e!4098020 (forall!15801 (t!379847 (exprs!6493 lt!2445912)) lambda!382380))))

(assert (= (and d!2133286 (not res!2774871)) b!6789322))

(assert (= (and b!6789322 res!2774872) b!6789323))

(declare-fun b_lambda!255699 () Bool)

(assert (=> (not b_lambda!255699) (not b!6789322)))

(declare-fun m!7537160 () Bool)

(assert (=> b!6789322 m!7537160))

(declare-fun m!7537162 () Bool)

(assert (=> b!6789323 m!7537162))

(assert (=> d!2132988 d!2133286))

(declare-fun d!2133288 () Bool)

(assert (=> d!2133288 (= (isConcat!1490 lt!2445980) ((_ is Concat!25454) lt!2445980))))

(assert (=> b!6788415 d!2133288))

(declare-fun d!2133292 () Bool)

(assert (=> d!2133292 (= (isEmpty!38370 (tail!12715 s!2326)) ((_ is Nil!66003) (tail!12715 s!2326)))))

(assert (=> b!6788614 d!2133292))

(declare-fun d!2133294 () Bool)

(assert (=> d!2133294 (= (tail!12715 s!2326) (t!379848 s!2326))))

(assert (=> b!6788614 d!2133294))

(declare-fun b!6789324 () Bool)

(declare-fun e!4098021 () (InoxSet Context!11986))

(assert (=> b!6789324 (= e!4098021 ((as const (Array Context!11986 Bool)) false))))

(declare-fun bm!616405 () Bool)

(declare-fun call!616410 () (InoxSet Context!11986))

(assert (=> bm!616405 (= call!616410 (derivationStepZipperDown!1837 (h!72450 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445916))))) (Context!11987 (t!379847 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445916)))))) (h!72451 s!2326)))))

(declare-fun b!6789325 () Bool)

(declare-fun e!4098022 () Bool)

(assert (=> b!6789325 (= e!4098022 (nullable!6588 (h!72450 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445916)))))))))

(declare-fun b!6789326 () Bool)

(declare-fun e!4098023 () (InoxSet Context!11986))

(assert (=> b!6789326 (= e!4098023 ((_ map or) call!616410 (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445916)))))) (h!72451 s!2326))))))

(declare-fun d!2133296 () Bool)

(declare-fun c!1261806 () Bool)

(assert (=> d!2133296 (= c!1261806 e!4098022)))

(declare-fun res!2774873 () Bool)

(assert (=> d!2133296 (=> (not res!2774873) (not e!4098022))))

(assert (=> d!2133296 (= res!2774873 ((_ is Cons!66002) (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445916))))))))

(assert (=> d!2133296 (= (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 lt!2445916))) (h!72451 s!2326)) e!4098023)))

(declare-fun b!6789327 () Bool)

(assert (=> b!6789327 (= e!4098021 call!616410)))

(declare-fun b!6789328 () Bool)

(assert (=> b!6789328 (= e!4098023 e!4098021)))

(declare-fun c!1261805 () Bool)

(assert (=> b!6789328 (= c!1261805 ((_ is Cons!66002) (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445916))))))))

(assert (= (and d!2133296 res!2774873) b!6789325))

(assert (= (and d!2133296 c!1261806) b!6789326))

(assert (= (and d!2133296 (not c!1261806)) b!6789328))

(assert (= (and b!6789328 c!1261805) b!6789327))

(assert (= (and b!6789328 (not c!1261805)) b!6789324))

(assert (= (or b!6789326 b!6789327) bm!616405))

(declare-fun m!7537178 () Bool)

(assert (=> bm!616405 m!7537178))

(declare-fun m!7537180 () Bool)

(assert (=> b!6789325 m!7537180))

(declare-fun m!7537182 () Bool)

(assert (=> b!6789326 m!7537182))

(assert (=> b!6788082 d!2133296))

(declare-fun d!2133298 () Bool)

(assert (=> d!2133298 true))

(declare-fun setRes!46470 () Bool)

(assert (=> d!2133298 setRes!46470))

(declare-fun condSetEmpty!46470 () Bool)

(declare-fun res!2774874 () (InoxSet Context!11986))

(assert (=> d!2133298 (= condSetEmpty!46470 (= res!2774874 ((as const (Array Context!11986 Bool)) false)))))

(assert (=> d!2133298 (= (choose!50556 lt!2445913 lambda!382297) res!2774874)))

(declare-fun setIsEmpty!46470 () Bool)

(assert (=> setIsEmpty!46470 setRes!46470))

(declare-fun setNonEmpty!46470 () Bool)

(declare-fun e!4098024 () Bool)

(declare-fun setElem!46470 () Context!11986)

(declare-fun tp!1859481 () Bool)

(assert (=> setNonEmpty!46470 (= setRes!46470 (and tp!1859481 (inv!84769 setElem!46470) e!4098024))))

(declare-fun setRest!46470 () (InoxSet Context!11986))

(assert (=> setNonEmpty!46470 (= res!2774874 ((_ map or) (store ((as const (Array Context!11986 Bool)) false) setElem!46470 true) setRest!46470))))

(declare-fun b!6789329 () Bool)

(declare-fun tp!1859480 () Bool)

(assert (=> b!6789329 (= e!4098024 tp!1859480)))

(assert (= (and d!2133298 condSetEmpty!46470) setIsEmpty!46470))

(assert (= (and d!2133298 (not condSetEmpty!46470)) setNonEmpty!46470))

(assert (= setNonEmpty!46470 b!6789329))

(declare-fun m!7537184 () Bool)

(assert (=> setNonEmpty!46470 m!7537184))

(assert (=> d!2132914 d!2133298))

(declare-fun b!6789330 () Bool)

(declare-fun e!4098027 () (InoxSet Context!11986))

(declare-fun call!616415 () (InoxSet Context!11986))

(assert (=> b!6789330 (= e!4098027 call!616415)))

(declare-fun c!1261809 () Bool)

(declare-fun bm!616406 () Bool)

(declare-fun call!616411 () List!66126)

(declare-fun c!1261808 () Bool)

(declare-fun c!1261811 () Bool)

(declare-fun call!616416 () (InoxSet Context!11986))

(assert (=> bm!616406 (= call!616416 (derivationStepZipperDown!1837 (ite c!1261808 (regOne!33731 (h!72450 (exprs!6493 lt!2445922))) (ite c!1261811 (regTwo!33730 (h!72450 (exprs!6493 lt!2445922))) (ite c!1261809 (regOne!33730 (h!72450 (exprs!6493 lt!2445922))) (reg!16938 (h!72450 (exprs!6493 lt!2445922)))))) (ite (or c!1261808 c!1261811) (Context!11987 (t!379847 (exprs!6493 lt!2445922))) (Context!11987 call!616411)) (h!72451 s!2326)))))

(declare-fun call!616412 () List!66126)

(declare-fun bm!616407 () Bool)

(declare-fun call!616414 () (InoxSet Context!11986))

(assert (=> bm!616407 (= call!616414 (derivationStepZipperDown!1837 (ite c!1261808 (regTwo!33731 (h!72450 (exprs!6493 lt!2445922))) (regOne!33730 (h!72450 (exprs!6493 lt!2445922)))) (ite c!1261808 (Context!11987 (t!379847 (exprs!6493 lt!2445922))) (Context!11987 call!616412)) (h!72451 s!2326)))))

(declare-fun b!6789331 () Bool)

(declare-fun e!4098026 () (InoxSet Context!11986))

(declare-fun e!4098025 () (InoxSet Context!11986))

(assert (=> b!6789331 (= e!4098026 e!4098025)))

(assert (=> b!6789331 (= c!1261808 ((_ is Union!16609) (h!72450 (exprs!6493 lt!2445922))))))

(declare-fun b!6789332 () Bool)

(declare-fun e!4098029 () (InoxSet Context!11986))

(assert (=> b!6789332 (= e!4098029 call!616415)))

(declare-fun b!6789333 () Bool)

(declare-fun e!4098030 () Bool)

(assert (=> b!6789333 (= c!1261811 e!4098030)))

(declare-fun res!2774875 () Bool)

(assert (=> b!6789333 (=> (not res!2774875) (not e!4098030))))

(assert (=> b!6789333 (= res!2774875 ((_ is Concat!25454) (h!72450 (exprs!6493 lt!2445922))))))

(declare-fun e!4098028 () (InoxSet Context!11986))

(assert (=> b!6789333 (= e!4098025 e!4098028)))

(declare-fun b!6789334 () Bool)

(assert (=> b!6789334 (= e!4098027 ((as const (Array Context!11986 Bool)) false))))

(declare-fun b!6789335 () Bool)

(assert (=> b!6789335 (= e!4098030 (nullable!6588 (regOne!33730 (h!72450 (exprs!6493 lt!2445922)))))))

(declare-fun b!6789336 () Bool)

(assert (=> b!6789336 (= e!4098028 e!4098029)))

(assert (=> b!6789336 (= c!1261809 ((_ is Concat!25454) (h!72450 (exprs!6493 lt!2445922))))))

(declare-fun bm!616408 () Bool)

(assert (=> bm!616408 (= call!616411 call!616412)))

(declare-fun d!2133300 () Bool)

(declare-fun c!1261810 () Bool)

(assert (=> d!2133300 (= c!1261810 (and ((_ is ElementMatch!16609) (h!72450 (exprs!6493 lt!2445922))) (= (c!1261391 (h!72450 (exprs!6493 lt!2445922))) (h!72451 s!2326))))))

(assert (=> d!2133300 (= (derivationStepZipperDown!1837 (h!72450 (exprs!6493 lt!2445922)) (Context!11987 (t!379847 (exprs!6493 lt!2445922))) (h!72451 s!2326)) e!4098026)))

(declare-fun bm!616409 () Bool)

(declare-fun call!616413 () (InoxSet Context!11986))

(assert (=> bm!616409 (= call!616413 call!616416)))

(declare-fun b!6789337 () Bool)

(assert (=> b!6789337 (= e!4098026 (store ((as const (Array Context!11986 Bool)) false) (Context!11987 (t!379847 (exprs!6493 lt!2445922))) true))))

(declare-fun b!6789338 () Bool)

(assert (=> b!6789338 (= e!4098025 ((_ map or) call!616416 call!616414))))

(declare-fun b!6789339 () Bool)

(assert (=> b!6789339 (= e!4098028 ((_ map or) call!616414 call!616413))))

(declare-fun bm!616410 () Bool)

(assert (=> bm!616410 (= call!616415 call!616413)))

(declare-fun b!6789340 () Bool)

(declare-fun c!1261807 () Bool)

(assert (=> b!6789340 (= c!1261807 ((_ is Star!16609) (h!72450 (exprs!6493 lt!2445922))))))

(assert (=> b!6789340 (= e!4098029 e!4098027)))

(declare-fun bm!616411 () Bool)

(assert (=> bm!616411 (= call!616412 ($colon$colon!2417 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445922)))) (ite (or c!1261811 c!1261809) (regTwo!33730 (h!72450 (exprs!6493 lt!2445922))) (h!72450 (exprs!6493 lt!2445922)))))))

(assert (= (and d!2133300 c!1261810) b!6789337))

(assert (= (and d!2133300 (not c!1261810)) b!6789331))

(assert (= (and b!6789331 c!1261808) b!6789338))

(assert (= (and b!6789331 (not c!1261808)) b!6789333))

(assert (= (and b!6789333 res!2774875) b!6789335))

(assert (= (and b!6789333 c!1261811) b!6789339))

(assert (= (and b!6789333 (not c!1261811)) b!6789336))

(assert (= (and b!6789336 c!1261809) b!6789332))

(assert (= (and b!6789336 (not c!1261809)) b!6789340))

(assert (= (and b!6789340 c!1261807) b!6789330))

(assert (= (and b!6789340 (not c!1261807)) b!6789334))

(assert (= (or b!6789332 b!6789330) bm!616408))

(assert (= (or b!6789332 b!6789330) bm!616410))

(assert (= (or b!6789339 bm!616408) bm!616411))

(assert (= (or b!6789339 bm!616410) bm!616409))

(assert (= (or b!6789338 b!6789339) bm!616407))

(assert (= (or b!6789338 bm!616409) bm!616406))

(declare-fun m!7537186 () Bool)

(assert (=> b!6789337 m!7537186))

(declare-fun m!7537188 () Bool)

(assert (=> bm!616411 m!7537188))

(declare-fun m!7537190 () Bool)

(assert (=> b!6789335 m!7537190))

(declare-fun m!7537192 () Bool)

(assert (=> bm!616407 m!7537192))

(declare-fun m!7537194 () Bool)

(assert (=> bm!616406 m!7537194))

(assert (=> bm!616248 d!2133300))

(assert (=> bm!616257 d!2132946))

(declare-fun d!2133302 () Bool)

(declare-fun res!2774876 () Bool)

(declare-fun e!4098031 () Bool)

(assert (=> d!2133302 (=> res!2774876 e!4098031)))

(assert (=> d!2133302 (= res!2774876 ((_ is Nil!66002) (exprs!6493 setElem!46455)))))

(assert (=> d!2133302 (= (forall!15801 (exprs!6493 setElem!46455) lambda!382381) e!4098031)))

(declare-fun b!6789341 () Bool)

(declare-fun e!4098032 () Bool)

(assert (=> b!6789341 (= e!4098031 e!4098032)))

(declare-fun res!2774877 () Bool)

(assert (=> b!6789341 (=> (not res!2774877) (not e!4098032))))

(assert (=> b!6789341 (= res!2774877 (dynLambda!26343 lambda!382381 (h!72450 (exprs!6493 setElem!46455))))))

(declare-fun b!6789342 () Bool)

(assert (=> b!6789342 (= e!4098032 (forall!15801 (t!379847 (exprs!6493 setElem!46455)) lambda!382381))))

(assert (= (and d!2133302 (not res!2774876)) b!6789341))

(assert (= (and b!6789341 res!2774877) b!6789342))

(declare-fun b_lambda!255701 () Bool)

(assert (=> (not b_lambda!255701) (not b!6789341)))

(declare-fun m!7537196 () Bool)

(assert (=> b!6789341 m!7537196))

(declare-fun m!7537198 () Bool)

(assert (=> b!6789342 m!7537198))

(assert (=> d!2132992 d!2133302))

(declare-fun d!2133304 () Bool)

(assert (=> d!2133304 (= (isEmpty!38373 (findConcatSeparation!2910 (reg!16938 r!7292) r!7292 Nil!66003 s!2326 s!2326)) (not ((_ is Some!16495) (findConcatSeparation!2910 (reg!16938 r!7292) r!7292 Nil!66003 s!2326 s!2326))))))

(assert (=> d!2132936 d!2133304))

(declare-fun d!2133308 () Bool)

(declare-fun res!2774883 () Bool)

(declare-fun e!4098038 () Bool)

(assert (=> d!2133308 (=> res!2774883 e!4098038)))

(assert (=> d!2133308 (= res!2774883 ((_ is Nil!66002) (exprs!6493 (h!72452 zl!343))))))

(assert (=> d!2133308 (= (forall!15801 (exprs!6493 (h!72452 zl!343)) lambda!382306) e!4098038)))

(declare-fun b!6789352 () Bool)

(declare-fun e!4098039 () Bool)

(assert (=> b!6789352 (= e!4098038 e!4098039)))

(declare-fun res!2774884 () Bool)

(assert (=> b!6789352 (=> (not res!2774884) (not e!4098039))))

(assert (=> b!6789352 (= res!2774884 (dynLambda!26343 lambda!382306 (h!72450 (exprs!6493 (h!72452 zl!343)))))))

(declare-fun b!6789353 () Bool)

(assert (=> b!6789353 (= e!4098039 (forall!15801 (t!379847 (exprs!6493 (h!72452 zl!343))) lambda!382306))))

(assert (= (and d!2133308 (not res!2774883)) b!6789352))

(assert (= (and b!6789352 res!2774884) b!6789353))

(declare-fun b_lambda!255703 () Bool)

(assert (=> (not b_lambda!255703) (not b!6789352)))

(declare-fun m!7537204 () Bool)

(assert (=> b!6789352 m!7537204))

(declare-fun m!7537206 () Bool)

(assert (=> b!6789353 m!7537206))

(assert (=> d!2132796 d!2133308))

(declare-fun b!6789354 () Bool)

(declare-fun e!4098040 () Bool)

(declare-fun e!4098041 () Bool)

(assert (=> b!6789354 (= e!4098040 e!4098041)))

(declare-fun res!2774890 () Bool)

(assert (=> b!6789354 (=> res!2774890 e!4098041)))

(declare-fun call!616417 () Bool)

(assert (=> b!6789354 (= res!2774890 call!616417)))

(declare-fun b!6789355 () Bool)

(declare-fun e!4098046 () Bool)

(assert (=> b!6789355 (= e!4098046 e!4098040)))

(declare-fun res!2774892 () Bool)

(assert (=> b!6789355 (=> (not res!2774892) (not e!4098040))))

(declare-fun lt!2446063 () Bool)

(assert (=> b!6789355 (= res!2774892 (not lt!2446063))))

(declare-fun d!2133310 () Bool)

(declare-fun e!4098042 () Bool)

(assert (=> d!2133310 e!4098042))

(declare-fun c!1261815 () Bool)

(assert (=> d!2133310 (= c!1261815 ((_ is EmptyExpr!16609) (derivativeStep!5273 lt!2445914 (head!13630 s!2326))))))

(declare-fun e!4098043 () Bool)

(assert (=> d!2133310 (= lt!2446063 e!4098043)))

(declare-fun c!1261816 () Bool)

(assert (=> d!2133310 (= c!1261816 (isEmpty!38370 (tail!12715 s!2326)))))

(assert (=> d!2133310 (validRegex!8345 (derivativeStep!5273 lt!2445914 (head!13630 s!2326)))))

(assert (=> d!2133310 (= (matchR!8792 (derivativeStep!5273 lt!2445914 (head!13630 s!2326)) (tail!12715 s!2326)) lt!2446063)))

(declare-fun b!6789356 () Bool)

(declare-fun res!2774891 () Bool)

(assert (=> b!6789356 (=> res!2774891 e!4098046)))

(assert (=> b!6789356 (= res!2774891 (not ((_ is ElementMatch!16609) (derivativeStep!5273 lt!2445914 (head!13630 s!2326)))))))

(declare-fun e!4098044 () Bool)

(assert (=> b!6789356 (= e!4098044 e!4098046)))

(declare-fun b!6789357 () Bool)

(assert (=> b!6789357 (= e!4098043 (matchR!8792 (derivativeStep!5273 (derivativeStep!5273 lt!2445914 (head!13630 s!2326)) (head!13630 (tail!12715 s!2326))) (tail!12715 (tail!12715 s!2326))))))

(declare-fun bm!616412 () Bool)

(assert (=> bm!616412 (= call!616417 (isEmpty!38370 (tail!12715 s!2326)))))

(declare-fun b!6789358 () Bool)

(declare-fun e!4098045 () Bool)

(assert (=> b!6789358 (= e!4098045 (= (head!13630 (tail!12715 s!2326)) (c!1261391 (derivativeStep!5273 lt!2445914 (head!13630 s!2326)))))))

(declare-fun b!6789359 () Bool)

(declare-fun res!2774889 () Bool)

(assert (=> b!6789359 (=> res!2774889 e!4098041)))

(assert (=> b!6789359 (= res!2774889 (not (isEmpty!38370 (tail!12715 (tail!12715 s!2326)))))))

(declare-fun b!6789360 () Bool)

(declare-fun res!2774887 () Bool)

(assert (=> b!6789360 (=> (not res!2774887) (not e!4098045))))

(assert (=> b!6789360 (= res!2774887 (not call!616417))))

(declare-fun b!6789361 () Bool)

(assert (=> b!6789361 (= e!4098042 (= lt!2446063 call!616417))))

(declare-fun b!6789362 () Bool)

(declare-fun res!2774885 () Bool)

(assert (=> b!6789362 (=> (not res!2774885) (not e!4098045))))

(assert (=> b!6789362 (= res!2774885 (isEmpty!38370 (tail!12715 (tail!12715 s!2326))))))

(declare-fun b!6789363 () Bool)

(assert (=> b!6789363 (= e!4098042 e!4098044)))

(declare-fun c!1261814 () Bool)

(assert (=> b!6789363 (= c!1261814 ((_ is EmptyLang!16609) (derivativeStep!5273 lt!2445914 (head!13630 s!2326))))))

(declare-fun b!6789364 () Bool)

(assert (=> b!6789364 (= e!4098043 (nullable!6588 (derivativeStep!5273 lt!2445914 (head!13630 s!2326))))))

(declare-fun b!6789365 () Bool)

(assert (=> b!6789365 (= e!4098041 (not (= (head!13630 (tail!12715 s!2326)) (c!1261391 (derivativeStep!5273 lt!2445914 (head!13630 s!2326))))))))

(declare-fun b!6789366 () Bool)

(declare-fun res!2774888 () Bool)

(assert (=> b!6789366 (=> res!2774888 e!4098046)))

(assert (=> b!6789366 (= res!2774888 e!4098045)))

(declare-fun res!2774886 () Bool)

(assert (=> b!6789366 (=> (not res!2774886) (not e!4098045))))

(assert (=> b!6789366 (= res!2774886 lt!2446063)))

(declare-fun b!6789367 () Bool)

(assert (=> b!6789367 (= e!4098044 (not lt!2446063))))

(assert (= (and d!2133310 c!1261816) b!6789364))

(assert (= (and d!2133310 (not c!1261816)) b!6789357))

(assert (= (and d!2133310 c!1261815) b!6789361))

(assert (= (and d!2133310 (not c!1261815)) b!6789363))

(assert (= (and b!6789363 c!1261814) b!6789367))

(assert (= (and b!6789363 (not c!1261814)) b!6789356))

(assert (= (and b!6789356 (not res!2774891)) b!6789366))

(assert (= (and b!6789366 res!2774886) b!6789360))

(assert (= (and b!6789360 res!2774887) b!6789362))

(assert (= (and b!6789362 res!2774885) b!6789358))

(assert (= (and b!6789366 (not res!2774888)) b!6789355))

(assert (= (and b!6789355 res!2774892) b!6789354))

(assert (= (and b!6789354 (not res!2774890)) b!6789359))

(assert (= (and b!6789359 (not res!2774889)) b!6789365))

(assert (= (or b!6789361 b!6789354 b!6789360) bm!616412))

(assert (=> b!6789357 m!7536172))

(declare-fun m!7537230 () Bool)

(assert (=> b!6789357 m!7537230))

(assert (=> b!6789357 m!7536170))

(assert (=> b!6789357 m!7537230))

(declare-fun m!7537232 () Bool)

(assert (=> b!6789357 m!7537232))

(assert (=> b!6789357 m!7536172))

(declare-fun m!7537234 () Bool)

(assert (=> b!6789357 m!7537234))

(assert (=> b!6789357 m!7537232))

(assert (=> b!6789357 m!7537234))

(declare-fun m!7537236 () Bool)

(assert (=> b!6789357 m!7537236))

(assert (=> b!6789365 m!7536172))

(assert (=> b!6789365 m!7537230))

(assert (=> b!6789362 m!7536172))

(assert (=> b!6789362 m!7537234))

(assert (=> b!6789362 m!7537234))

(declare-fun m!7537238 () Bool)

(assert (=> b!6789362 m!7537238))

(assert (=> d!2133310 m!7536172))

(assert (=> d!2133310 m!7536176))

(assert (=> d!2133310 m!7536170))

(declare-fun m!7537240 () Bool)

(assert (=> d!2133310 m!7537240))

(assert (=> b!6789359 m!7536172))

(assert (=> b!6789359 m!7537234))

(assert (=> b!6789359 m!7537234))

(assert (=> b!6789359 m!7537238))

(assert (=> b!6789364 m!7536170))

(declare-fun m!7537242 () Bool)

(assert (=> b!6789364 m!7537242))

(assert (=> bm!616412 m!7536172))

(assert (=> bm!616412 m!7536176))

(assert (=> b!6789358 m!7536172))

(assert (=> b!6789358 m!7537230))

(assert (=> b!6788329 d!2133310))

(declare-fun b!6789522 () Bool)

(declare-fun e!4098109 () Regex!16609)

(assert (=> b!6789522 (= e!4098109 (ite (= (head!13630 s!2326) (c!1261391 lt!2445914)) EmptyExpr!16609 EmptyLang!16609))))

(declare-fun b!6789523 () Bool)

(declare-fun c!1261836 () Bool)

(assert (=> b!6789523 (= c!1261836 (nullable!6588 (regOne!33730 lt!2445914)))))

(declare-fun e!4098108 () Regex!16609)

(declare-fun e!4098105 () Regex!16609)

(assert (=> b!6789523 (= e!4098108 e!4098105)))

(declare-fun b!6789524 () Bool)

(declare-fun call!616435 () Regex!16609)

(assert (=> b!6789524 (= e!4098108 (Concat!25454 call!616435 lt!2445914))))

(declare-fun call!616432 () Regex!16609)

(declare-fun bm!616428 () Bool)

(declare-fun c!1261834 () Bool)

(assert (=> bm!616428 (= call!616432 (derivativeStep!5273 (ite c!1261834 (regOne!33731 lt!2445914) (regOne!33730 lt!2445914)) (head!13630 s!2326)))))

(declare-fun b!6789525 () Bool)

(declare-fun e!4098107 () Regex!16609)

(assert (=> b!6789525 (= e!4098107 EmptyLang!16609)))

(declare-fun bm!616429 () Bool)

(declare-fun call!616434 () Regex!16609)

(assert (=> bm!616429 (= call!616435 call!616434)))

(declare-fun bm!616430 () Bool)

(declare-fun call!616433 () Regex!16609)

(assert (=> bm!616430 (= call!616433 call!616435)))

(declare-fun b!6789526 () Bool)

(assert (=> b!6789526 (= e!4098105 (Union!16609 (Concat!25454 call!616432 (regTwo!33730 lt!2445914)) call!616433))))

(declare-fun b!6789527 () Bool)

(assert (=> b!6789527 (= c!1261834 ((_ is Union!16609) lt!2445914))))

(declare-fun e!4098106 () Regex!16609)

(assert (=> b!6789527 (= e!4098109 e!4098106)))

(declare-fun b!6789528 () Bool)

(assert (=> b!6789528 (= e!4098107 e!4098109)))

(declare-fun c!1261832 () Bool)

(assert (=> b!6789528 (= c!1261832 ((_ is ElementMatch!16609) lt!2445914))))

(declare-fun b!6789529 () Bool)

(assert (=> b!6789529 (= e!4098106 (Union!16609 call!616432 call!616434))))

(declare-fun d!2133316 () Bool)

(declare-fun lt!2446066 () Regex!16609)

(assert (=> d!2133316 (validRegex!8345 lt!2446066)))

(assert (=> d!2133316 (= lt!2446066 e!4098107)))

(declare-fun c!1261833 () Bool)

(assert (=> d!2133316 (= c!1261833 (or ((_ is EmptyExpr!16609) lt!2445914) ((_ is EmptyLang!16609) lt!2445914)))))

(assert (=> d!2133316 (validRegex!8345 lt!2445914)))

(assert (=> d!2133316 (= (derivativeStep!5273 lt!2445914 (head!13630 s!2326)) lt!2446066)))

(declare-fun bm!616427 () Bool)

(declare-fun c!1261835 () Bool)

(assert (=> bm!616427 (= call!616434 (derivativeStep!5273 (ite c!1261834 (regTwo!33731 lt!2445914) (ite c!1261835 (reg!16938 lt!2445914) (ite c!1261836 (regTwo!33730 lt!2445914) (regOne!33730 lt!2445914)))) (head!13630 s!2326)))))

(declare-fun b!6789530 () Bool)

(assert (=> b!6789530 (= e!4098106 e!4098108)))

(assert (=> b!6789530 (= c!1261835 ((_ is Star!16609) lt!2445914))))

(declare-fun b!6789531 () Bool)

(assert (=> b!6789531 (= e!4098105 (Union!16609 (Concat!25454 call!616433 (regTwo!33730 lt!2445914)) EmptyLang!16609))))

(assert (= (and d!2133316 c!1261833) b!6789525))

(assert (= (and d!2133316 (not c!1261833)) b!6789528))

(assert (= (and b!6789528 c!1261832) b!6789522))

(assert (= (and b!6789528 (not c!1261832)) b!6789527))

(assert (= (and b!6789527 c!1261834) b!6789529))

(assert (= (and b!6789527 (not c!1261834)) b!6789530))

(assert (= (and b!6789530 c!1261835) b!6789524))

(assert (= (and b!6789530 (not c!1261835)) b!6789523))

(assert (= (and b!6789523 c!1261836) b!6789526))

(assert (= (and b!6789523 (not c!1261836)) b!6789531))

(assert (= (or b!6789526 b!6789531) bm!616430))

(assert (= (or b!6789524 bm!616430) bm!616429))

(assert (= (or b!6789529 bm!616429) bm!616427))

(assert (= (or b!6789529 b!6789526) bm!616428))

(declare-fun m!7537294 () Bool)

(assert (=> b!6789523 m!7537294))

(assert (=> bm!616428 m!7536168))

(declare-fun m!7537296 () Bool)

(assert (=> bm!616428 m!7537296))

(declare-fun m!7537298 () Bool)

(assert (=> d!2133316 m!7537298))

(assert (=> d!2133316 m!7536178))

(assert (=> bm!616427 m!7536168))

(declare-fun m!7537300 () Bool)

(assert (=> bm!616427 m!7537300))

(assert (=> b!6788329 d!2133316))

(assert (=> b!6788329 d!2133230))

(assert (=> b!6788329 d!2133294))

(assert (=> b!6788582 d!2132968))

(declare-fun b!6789532 () Bool)

(declare-fun res!2774905 () Bool)

(declare-fun e!4098113 () Bool)

(assert (=> b!6789532 (=> res!2774905 e!4098113)))

(assert (=> b!6789532 (= res!2774905 (not ((_ is Concat!25454) lt!2445933)))))

(declare-fun e!4098111 () Bool)

(assert (=> b!6789532 (= e!4098111 e!4098113)))

(declare-fun b!6789533 () Bool)

(declare-fun e!4098115 () Bool)

(assert (=> b!6789533 (= e!4098113 e!4098115)))

(declare-fun res!2774901 () Bool)

(assert (=> b!6789533 (=> (not res!2774901) (not e!4098115))))

(declare-fun call!616438 () Bool)

(assert (=> b!6789533 (= res!2774901 call!616438)))

(declare-fun b!6789534 () Bool)

(declare-fun e!4098110 () Bool)

(declare-fun call!616437 () Bool)

(assert (=> b!6789534 (= e!4098110 call!616437)))

(declare-fun b!6789535 () Bool)

(declare-fun call!616436 () Bool)

(assert (=> b!6789535 (= e!4098115 call!616436)))

(declare-fun d!2133352 () Bool)

(declare-fun res!2774904 () Bool)

(declare-fun e!4098112 () Bool)

(assert (=> d!2133352 (=> res!2774904 e!4098112)))

(assert (=> d!2133352 (= res!2774904 ((_ is ElementMatch!16609) lt!2445933))))

(assert (=> d!2133352 (= (validRegex!8345 lt!2445933) e!4098112)))

(declare-fun c!1261837 () Bool)

(declare-fun c!1261838 () Bool)

(declare-fun bm!616431 () Bool)

(assert (=> bm!616431 (= call!616437 (validRegex!8345 (ite c!1261837 (reg!16938 lt!2445933) (ite c!1261838 (regOne!33731 lt!2445933) (regOne!33730 lt!2445933)))))))

(declare-fun bm!616432 () Bool)

(assert (=> bm!616432 (= call!616436 (validRegex!8345 (ite c!1261838 (regTwo!33731 lt!2445933) (regTwo!33730 lt!2445933))))))

(declare-fun b!6789536 () Bool)

(declare-fun e!4098114 () Bool)

(assert (=> b!6789536 (= e!4098114 call!616436)))

(declare-fun b!6789537 () Bool)

(declare-fun res!2774902 () Bool)

(assert (=> b!6789537 (=> (not res!2774902) (not e!4098114))))

(assert (=> b!6789537 (= res!2774902 call!616438)))

(assert (=> b!6789537 (= e!4098111 e!4098114)))

(declare-fun bm!616433 () Bool)

(assert (=> bm!616433 (= call!616438 call!616437)))

(declare-fun b!6789538 () Bool)

(declare-fun e!4098116 () Bool)

(assert (=> b!6789538 (= e!4098116 e!4098111)))

(assert (=> b!6789538 (= c!1261838 ((_ is Union!16609) lt!2445933))))

(declare-fun b!6789539 () Bool)

(assert (=> b!6789539 (= e!4098112 e!4098116)))

(assert (=> b!6789539 (= c!1261837 ((_ is Star!16609) lt!2445933))))

(declare-fun b!6789540 () Bool)

(assert (=> b!6789540 (= e!4098116 e!4098110)))

(declare-fun res!2774903 () Bool)

(assert (=> b!6789540 (= res!2774903 (not (nullable!6588 (reg!16938 lt!2445933))))))

(assert (=> b!6789540 (=> (not res!2774903) (not e!4098110))))

(assert (= (and d!2133352 (not res!2774904)) b!6789539))

(assert (= (and b!6789539 c!1261837) b!6789540))

(assert (= (and b!6789539 (not c!1261837)) b!6789538))

(assert (= (and b!6789540 res!2774903) b!6789534))

(assert (= (and b!6789538 c!1261838) b!6789537))

(assert (= (and b!6789538 (not c!1261838)) b!6789532))

(assert (= (and b!6789537 res!2774902) b!6789536))

(assert (= (and b!6789532 (not res!2774905)) b!6789533))

(assert (= (and b!6789533 res!2774901) b!6789535))

(assert (= (or b!6789536 b!6789535) bm!616432))

(assert (= (or b!6789537 b!6789533) bm!616433))

(assert (= (or b!6789534 bm!616433) bm!616431))

(declare-fun m!7537302 () Bool)

(assert (=> bm!616431 m!7537302))

(declare-fun m!7537304 () Bool)

(assert (=> bm!616432 m!7537304))

(declare-fun m!7537306 () Bool)

(assert (=> b!6789540 m!7537306))

(assert (=> d!2132800 d!2133352))

(declare-fun bs!1808973 () Bool)

(declare-fun d!2133354 () Bool)

(assert (= bs!1808973 (and d!2133354 d!2132992)))

(declare-fun lambda!382434 () Int)

(assert (=> bs!1808973 (= lambda!382434 lambda!382381)))

(declare-fun bs!1808974 () Bool)

(assert (= bs!1808974 (and d!2133354 d!2132890)))

(assert (=> bs!1808974 (= lambda!382434 lambda!382348)))

(declare-fun bs!1808975 () Bool)

(assert (= bs!1808975 (and d!2133354 d!2132790)))

(assert (=> bs!1808975 (= lambda!382434 lambda!382300)))

(declare-fun bs!1808976 () Bool)

(assert (= bs!1808976 (and d!2133354 d!2133256)))

(assert (=> bs!1808976 (= lambda!382434 lambda!382426)))

(declare-fun bs!1808977 () Bool)

(assert (= bs!1808977 (and d!2133354 d!2133200)))

(assert (=> bs!1808977 (= lambda!382434 lambda!382419)))

(declare-fun bs!1808978 () Bool)

(assert (= bs!1808978 (and d!2133354 d!2132988)))

(assert (=> bs!1808978 (= lambda!382434 lambda!382380)))

(declare-fun bs!1808979 () Bool)

(assert (= bs!1808979 (and d!2133354 d!2132792)))

(assert (=> bs!1808979 (= lambda!382434 lambda!382303)))

(declare-fun bs!1808980 () Bool)

(assert (= bs!1808980 (and d!2133354 d!2132796)))

(assert (=> bs!1808980 (= lambda!382434 lambda!382306)))

(declare-fun b!6789541 () Bool)

(declare-fun e!4098118 () Regex!16609)

(assert (=> b!6789541 (= e!4098118 (Union!16609 (h!72450 (unfocusZipperList!2030 (Cons!66004 lt!2445916 Nil!66004))) (generalisedUnion!2453 (t!379847 (unfocusZipperList!2030 (Cons!66004 lt!2445916 Nil!66004))))))))

(declare-fun b!6789542 () Bool)

(declare-fun e!4098120 () Bool)

(declare-fun lt!2446067 () Regex!16609)

(assert (=> b!6789542 (= e!4098120 (= lt!2446067 (head!13629 (unfocusZipperList!2030 (Cons!66004 lt!2445916 Nil!66004)))))))

(declare-fun b!6789543 () Bool)

(declare-fun e!4098117 () Bool)

(assert (=> b!6789543 (= e!4098117 (isEmptyLang!1974 lt!2446067))))

(declare-fun b!6789544 () Bool)

(assert (=> b!6789544 (= e!4098118 EmptyLang!16609)))

(declare-fun b!6789545 () Bool)

(assert (=> b!6789545 (= e!4098117 e!4098120)))

(declare-fun c!1261840 () Bool)

(assert (=> b!6789545 (= c!1261840 (isEmpty!38372 (tail!12714 (unfocusZipperList!2030 (Cons!66004 lt!2445916 Nil!66004)))))))

(declare-fun b!6789546 () Bool)

(declare-fun e!4098121 () Bool)

(assert (=> b!6789546 (= e!4098121 (isEmpty!38372 (t!379847 (unfocusZipperList!2030 (Cons!66004 lt!2445916 Nil!66004)))))))

(declare-fun b!6789547 () Bool)

(declare-fun e!4098122 () Regex!16609)

(assert (=> b!6789547 (= e!4098122 (h!72450 (unfocusZipperList!2030 (Cons!66004 lt!2445916 Nil!66004))))))

(declare-fun e!4098119 () Bool)

(assert (=> d!2133354 e!4098119))

(declare-fun res!2774907 () Bool)

(assert (=> d!2133354 (=> (not res!2774907) (not e!4098119))))

(assert (=> d!2133354 (= res!2774907 (validRegex!8345 lt!2446067))))

(assert (=> d!2133354 (= lt!2446067 e!4098122)))

(declare-fun c!1261841 () Bool)

(assert (=> d!2133354 (= c!1261841 e!4098121)))

(declare-fun res!2774906 () Bool)

(assert (=> d!2133354 (=> (not res!2774906) (not e!4098121))))

(assert (=> d!2133354 (= res!2774906 ((_ is Cons!66002) (unfocusZipperList!2030 (Cons!66004 lt!2445916 Nil!66004))))))

(assert (=> d!2133354 (forall!15801 (unfocusZipperList!2030 (Cons!66004 lt!2445916 Nil!66004)) lambda!382434)))

(assert (=> d!2133354 (= (generalisedUnion!2453 (unfocusZipperList!2030 (Cons!66004 lt!2445916 Nil!66004))) lt!2446067)))

(declare-fun b!6789548 () Bool)

(assert (=> b!6789548 (= e!4098119 e!4098117)))

(declare-fun c!1261839 () Bool)

(assert (=> b!6789548 (= c!1261839 (isEmpty!38372 (unfocusZipperList!2030 (Cons!66004 lt!2445916 Nil!66004))))))

(declare-fun b!6789549 () Bool)

(assert (=> b!6789549 (= e!4098120 (isUnion!1404 lt!2446067))))

(declare-fun b!6789550 () Bool)

(assert (=> b!6789550 (= e!4098122 e!4098118)))

(declare-fun c!1261842 () Bool)

(assert (=> b!6789550 (= c!1261842 ((_ is Cons!66002) (unfocusZipperList!2030 (Cons!66004 lt!2445916 Nil!66004))))))

(assert (= (and d!2133354 res!2774906) b!6789546))

(assert (= (and d!2133354 c!1261841) b!6789547))

(assert (= (and d!2133354 (not c!1261841)) b!6789550))

(assert (= (and b!6789550 c!1261842) b!6789541))

(assert (= (and b!6789550 (not c!1261842)) b!6789544))

(assert (= (and d!2133354 res!2774907) b!6789548))

(assert (= (and b!6789548 c!1261839) b!6789543))

(assert (= (and b!6789548 (not c!1261839)) b!6789545))

(assert (= (and b!6789545 c!1261840) b!6789542))

(assert (= (and b!6789545 (not c!1261840)) b!6789549))

(assert (=> b!6789545 m!7535992))

(declare-fun m!7537308 () Bool)

(assert (=> b!6789545 m!7537308))

(assert (=> b!6789545 m!7537308))

(declare-fun m!7537310 () Bool)

(assert (=> b!6789545 m!7537310))

(declare-fun m!7537312 () Bool)

(assert (=> d!2133354 m!7537312))

(assert (=> d!2133354 m!7535992))

(declare-fun m!7537314 () Bool)

(assert (=> d!2133354 m!7537314))

(assert (=> b!6789542 m!7535992))

(declare-fun m!7537316 () Bool)

(assert (=> b!6789542 m!7537316))

(declare-fun m!7537318 () Bool)

(assert (=> b!6789546 m!7537318))

(declare-fun m!7537320 () Bool)

(assert (=> b!6789541 m!7537320))

(assert (=> b!6789548 m!7535992))

(declare-fun m!7537322 () Bool)

(assert (=> b!6789548 m!7537322))

(declare-fun m!7537324 () Bool)

(assert (=> b!6789543 m!7537324))

(declare-fun m!7537326 () Bool)

(assert (=> b!6789549 m!7537326))

(assert (=> d!2132800 d!2133354))

(declare-fun bs!1808981 () Bool)

(declare-fun d!2133356 () Bool)

(assert (= bs!1808981 (and d!2133356 d!2132992)))

(declare-fun lambda!382435 () Int)

(assert (=> bs!1808981 (= lambda!382435 lambda!382381)))

(declare-fun bs!1808982 () Bool)

(assert (= bs!1808982 (and d!2133356 d!2132890)))

(assert (=> bs!1808982 (= lambda!382435 lambda!382348)))

(declare-fun bs!1808983 () Bool)

(assert (= bs!1808983 (and d!2133356 d!2132790)))

(assert (=> bs!1808983 (= lambda!382435 lambda!382300)))

(declare-fun bs!1808984 () Bool)

(assert (= bs!1808984 (and d!2133356 d!2133256)))

(assert (=> bs!1808984 (= lambda!382435 lambda!382426)))

(declare-fun bs!1808985 () Bool)

(assert (= bs!1808985 (and d!2133356 d!2133200)))

(assert (=> bs!1808985 (= lambda!382435 lambda!382419)))

(declare-fun bs!1808986 () Bool)

(assert (= bs!1808986 (and d!2133356 d!2132988)))

(assert (=> bs!1808986 (= lambda!382435 lambda!382380)))

(declare-fun bs!1808987 () Bool)

(assert (= bs!1808987 (and d!2133356 d!2133354)))

(assert (=> bs!1808987 (= lambda!382435 lambda!382434)))

(declare-fun bs!1808988 () Bool)

(assert (= bs!1808988 (and d!2133356 d!2132792)))

(assert (=> bs!1808988 (= lambda!382435 lambda!382303)))

(declare-fun bs!1808989 () Bool)

(assert (= bs!1808989 (and d!2133356 d!2132796)))

(assert (=> bs!1808989 (= lambda!382435 lambda!382306)))

(declare-fun lt!2446068 () List!66126)

(assert (=> d!2133356 (forall!15801 lt!2446068 lambda!382435)))

(declare-fun e!4098123 () List!66126)

(assert (=> d!2133356 (= lt!2446068 e!4098123)))

(declare-fun c!1261843 () Bool)

(assert (=> d!2133356 (= c!1261843 ((_ is Cons!66004) (Cons!66004 lt!2445916 Nil!66004)))))

(assert (=> d!2133356 (= (unfocusZipperList!2030 (Cons!66004 lt!2445916 Nil!66004)) lt!2446068)))

(declare-fun b!6789551 () Bool)

(assert (=> b!6789551 (= e!4098123 (Cons!66002 (generalisedConcat!2206 (exprs!6493 (h!72452 (Cons!66004 lt!2445916 Nil!66004)))) (unfocusZipperList!2030 (t!379849 (Cons!66004 lt!2445916 Nil!66004)))))))

(declare-fun b!6789552 () Bool)

(assert (=> b!6789552 (= e!4098123 Nil!66002)))

(assert (= (and d!2133356 c!1261843) b!6789551))

(assert (= (and d!2133356 (not c!1261843)) b!6789552))

(declare-fun m!7537328 () Bool)

(assert (=> d!2133356 m!7537328))

(declare-fun m!7537330 () Bool)

(assert (=> b!6789551 m!7537330))

(declare-fun m!7537332 () Bool)

(assert (=> b!6789551 m!7537332))

(assert (=> d!2132800 d!2133356))

(assert (=> bm!616203 d!2132946))

(declare-fun d!2133358 () Bool)

(assert (=> d!2133358 (= (flatMap!2090 z!1189 lambda!382358) (choose!50556 z!1189 lambda!382358))))

(declare-fun bs!1808990 () Bool)

(assert (= bs!1808990 d!2133358))

(declare-fun m!7537334 () Bool)

(assert (=> bs!1808990 m!7537334))

(assert (=> d!2132934 d!2133358))

(declare-fun d!2133360 () Bool)

(assert (=> d!2133360 (= (nullable!6588 (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) (nullableFct!2494 (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))))))

(declare-fun bs!1808991 () Bool)

(assert (= bs!1808991 d!2133360))

(declare-fun m!7537336 () Bool)

(assert (=> bs!1808991 m!7537336))

(assert (=> b!6788454 d!2133360))

(assert (=> b!6788617 d!2133292))

(assert (=> b!6788617 d!2133294))

(declare-fun d!2133362 () Bool)

(assert (=> d!2133362 (= (isEmpty!38372 (exprs!6493 (h!72452 zl!343))) ((_ is Nil!66002) (exprs!6493 (h!72452 zl!343))))))

(assert (=> b!6788418 d!2133362))

(declare-fun d!2133364 () Bool)

(assert (=> d!2133364 true))

(assert (=> d!2133364 true))

(declare-fun res!2774910 () Bool)

(assert (=> d!2133364 (= (choose!50559 lambda!382295) res!2774910)))

(assert (=> d!2132938 d!2133364))

(declare-fun d!2133366 () Bool)

(assert (=> d!2133366 (= (nullable!6588 (h!72450 (exprs!6493 lt!2445912))) (nullableFct!2494 (h!72450 (exprs!6493 lt!2445912))))))

(declare-fun bs!1808992 () Bool)

(assert (= bs!1808992 d!2133366))

(declare-fun m!7537338 () Bool)

(assert (=> bs!1808992 m!7537338))

(assert (=> b!6788421 d!2133366))

(declare-fun d!2133368 () Bool)

(assert (=> d!2133368 (= (isEmpty!38372 (t!379847 (unfocusZipperList!2030 zl!343))) ((_ is Nil!66002) (t!379847 (unfocusZipperList!2030 zl!343))))))

(assert (=> b!6787941 d!2133368))

(declare-fun d!2133370 () Bool)

(assert (=> d!2133370 (= (nullable!6588 lt!2445914) (nullableFct!2494 lt!2445914))))

(declare-fun bs!1808993 () Bool)

(assert (= bs!1808993 d!2133370))

(declare-fun m!7537340 () Bool)

(assert (=> bs!1808993 m!7537340))

(assert (=> b!6788336 d!2133370))

(declare-fun d!2133372 () Bool)

(assert (=> d!2133372 (= (head!13629 (unfocusZipperList!2030 zl!343)) (h!72450 (unfocusZipperList!2030 zl!343)))))

(assert (=> b!6787937 d!2133372))

(declare-fun b!6789553 () Bool)

(declare-fun res!2774915 () Bool)

(declare-fun e!4098127 () Bool)

(assert (=> b!6789553 (=> res!2774915 e!4098127)))

(assert (=> b!6789553 (= res!2774915 (not ((_ is Concat!25454) lt!2445980)))))

(declare-fun e!4098125 () Bool)

(assert (=> b!6789553 (= e!4098125 e!4098127)))

(declare-fun b!6789554 () Bool)

(declare-fun e!4098129 () Bool)

(assert (=> b!6789554 (= e!4098127 e!4098129)))

(declare-fun res!2774911 () Bool)

(assert (=> b!6789554 (=> (not res!2774911) (not e!4098129))))

(declare-fun call!616441 () Bool)

(assert (=> b!6789554 (= res!2774911 call!616441)))

(declare-fun b!6789555 () Bool)

(declare-fun e!4098124 () Bool)

(declare-fun call!616440 () Bool)

(assert (=> b!6789555 (= e!4098124 call!616440)))

(declare-fun b!6789556 () Bool)

(declare-fun call!616439 () Bool)

(assert (=> b!6789556 (= e!4098129 call!616439)))

(declare-fun d!2133374 () Bool)

(declare-fun res!2774914 () Bool)

(declare-fun e!4098126 () Bool)

(assert (=> d!2133374 (=> res!2774914 e!4098126)))

(assert (=> d!2133374 (= res!2774914 ((_ is ElementMatch!16609) lt!2445980))))

(assert (=> d!2133374 (= (validRegex!8345 lt!2445980) e!4098126)))

(declare-fun bm!616434 () Bool)

(declare-fun c!1261845 () Bool)

(declare-fun c!1261844 () Bool)

(assert (=> bm!616434 (= call!616440 (validRegex!8345 (ite c!1261844 (reg!16938 lt!2445980) (ite c!1261845 (regOne!33731 lt!2445980) (regOne!33730 lt!2445980)))))))

(declare-fun bm!616435 () Bool)

(assert (=> bm!616435 (= call!616439 (validRegex!8345 (ite c!1261845 (regTwo!33731 lt!2445980) (regTwo!33730 lt!2445980))))))

(declare-fun b!6789557 () Bool)

(declare-fun e!4098128 () Bool)

(assert (=> b!6789557 (= e!4098128 call!616439)))

(declare-fun b!6789558 () Bool)

(declare-fun res!2774912 () Bool)

(assert (=> b!6789558 (=> (not res!2774912) (not e!4098128))))

(assert (=> b!6789558 (= res!2774912 call!616441)))

(assert (=> b!6789558 (= e!4098125 e!4098128)))

(declare-fun bm!616436 () Bool)

(assert (=> bm!616436 (= call!616441 call!616440)))

(declare-fun b!6789559 () Bool)

(declare-fun e!4098130 () Bool)

(assert (=> b!6789559 (= e!4098130 e!4098125)))

(assert (=> b!6789559 (= c!1261845 ((_ is Union!16609) lt!2445980))))

(declare-fun b!6789560 () Bool)

(assert (=> b!6789560 (= e!4098126 e!4098130)))

(assert (=> b!6789560 (= c!1261844 ((_ is Star!16609) lt!2445980))))

(declare-fun b!6789561 () Bool)

(assert (=> b!6789561 (= e!4098130 e!4098124)))

(declare-fun res!2774913 () Bool)

(assert (=> b!6789561 (= res!2774913 (not (nullable!6588 (reg!16938 lt!2445980))))))

(assert (=> b!6789561 (=> (not res!2774913) (not e!4098124))))

(assert (= (and d!2133374 (not res!2774914)) b!6789560))

(assert (= (and b!6789560 c!1261844) b!6789561))

(assert (= (and b!6789560 (not c!1261844)) b!6789559))

(assert (= (and b!6789561 res!2774913) b!6789555))

(assert (= (and b!6789559 c!1261845) b!6789558))

(assert (= (and b!6789559 (not c!1261845)) b!6789553))

(assert (= (and b!6789558 res!2774912) b!6789557))

(assert (= (and b!6789553 (not res!2774915)) b!6789554))

(assert (= (and b!6789554 res!2774911) b!6789556))

(assert (= (or b!6789557 b!6789556) bm!616435))

(assert (= (or b!6789558 b!6789554) bm!616436))

(assert (= (or b!6789555 bm!616436) bm!616434))

(declare-fun m!7537342 () Bool)

(assert (=> bm!616434 m!7537342))

(declare-fun m!7537344 () Bool)

(assert (=> bm!616435 m!7537344))

(declare-fun m!7537346 () Bool)

(assert (=> b!6789561 m!7537346))

(assert (=> d!2132890 d!2133374))

(declare-fun d!2133376 () Bool)

(declare-fun res!2774916 () Bool)

(declare-fun e!4098131 () Bool)

(assert (=> d!2133376 (=> res!2774916 e!4098131)))

(assert (=> d!2133376 (= res!2774916 ((_ is Nil!66002) (exprs!6493 (h!72452 zl!343))))))

(assert (=> d!2133376 (= (forall!15801 (exprs!6493 (h!72452 zl!343)) lambda!382348) e!4098131)))

(declare-fun b!6789562 () Bool)

(declare-fun e!4098132 () Bool)

(assert (=> b!6789562 (= e!4098131 e!4098132)))

(declare-fun res!2774917 () Bool)

(assert (=> b!6789562 (=> (not res!2774917) (not e!4098132))))

(assert (=> b!6789562 (= res!2774917 (dynLambda!26343 lambda!382348 (h!72450 (exprs!6493 (h!72452 zl!343)))))))

(declare-fun b!6789563 () Bool)

(assert (=> b!6789563 (= e!4098132 (forall!15801 (t!379847 (exprs!6493 (h!72452 zl!343))) lambda!382348))))

(assert (= (and d!2133376 (not res!2774916)) b!6789562))

(assert (= (and b!6789562 res!2774917) b!6789563))

(declare-fun b_lambda!255733 () Bool)

(assert (=> (not b_lambda!255733) (not b!6789562)))

(declare-fun m!7537348 () Bool)

(assert (=> b!6789562 m!7537348))

(declare-fun m!7537350 () Bool)

(assert (=> b!6789563 m!7537350))

(assert (=> d!2132890 d!2133376))

(declare-fun b!6789564 () Bool)

(declare-fun e!4098133 () Bool)

(declare-fun e!4098134 () Bool)

(assert (=> b!6789564 (= e!4098133 e!4098134)))

(declare-fun res!2774923 () Bool)

(assert (=> b!6789564 (=> res!2774923 e!4098134)))

(declare-fun call!616442 () Bool)

(assert (=> b!6789564 (= res!2774923 call!616442)))

(declare-fun b!6789565 () Bool)

(declare-fun e!4098139 () Bool)

(assert (=> b!6789565 (= e!4098139 e!4098133)))

(declare-fun res!2774925 () Bool)

(assert (=> b!6789565 (=> (not res!2774925) (not e!4098133))))

(declare-fun lt!2446069 () Bool)

(assert (=> b!6789565 (= res!2774925 (not lt!2446069))))

(declare-fun d!2133378 () Bool)

(declare-fun e!4098135 () Bool)

(assert (=> d!2133378 e!4098135))

(declare-fun c!1261847 () Bool)

(assert (=> d!2133378 (= c!1261847 ((_ is EmptyExpr!16609) r!7292))))

(declare-fun e!4098136 () Bool)

(assert (=> d!2133378 (= lt!2446069 e!4098136)))

(declare-fun c!1261848 () Bool)

(assert (=> d!2133378 (= c!1261848 (isEmpty!38370 (_2!36887 (get!22982 lt!2446010))))))

(assert (=> d!2133378 (validRegex!8345 r!7292)))

(assert (=> d!2133378 (= (matchR!8792 r!7292 (_2!36887 (get!22982 lt!2446010))) lt!2446069)))

(declare-fun b!6789566 () Bool)

(declare-fun res!2774924 () Bool)

(assert (=> b!6789566 (=> res!2774924 e!4098139)))

(assert (=> b!6789566 (= res!2774924 (not ((_ is ElementMatch!16609) r!7292)))))

(declare-fun e!4098137 () Bool)

(assert (=> b!6789566 (= e!4098137 e!4098139)))

(declare-fun b!6789567 () Bool)

(assert (=> b!6789567 (= e!4098136 (matchR!8792 (derivativeStep!5273 r!7292 (head!13630 (_2!36887 (get!22982 lt!2446010)))) (tail!12715 (_2!36887 (get!22982 lt!2446010)))))))

(declare-fun bm!616437 () Bool)

(assert (=> bm!616437 (= call!616442 (isEmpty!38370 (_2!36887 (get!22982 lt!2446010))))))

(declare-fun b!6789568 () Bool)

(declare-fun e!4098138 () Bool)

(assert (=> b!6789568 (= e!4098138 (= (head!13630 (_2!36887 (get!22982 lt!2446010))) (c!1261391 r!7292)))))

(declare-fun b!6789569 () Bool)

(declare-fun res!2774922 () Bool)

(assert (=> b!6789569 (=> res!2774922 e!4098134)))

(assert (=> b!6789569 (= res!2774922 (not (isEmpty!38370 (tail!12715 (_2!36887 (get!22982 lt!2446010))))))))

(declare-fun b!6789570 () Bool)

(declare-fun res!2774920 () Bool)

(assert (=> b!6789570 (=> (not res!2774920) (not e!4098138))))

(assert (=> b!6789570 (= res!2774920 (not call!616442))))

(declare-fun b!6789571 () Bool)

(assert (=> b!6789571 (= e!4098135 (= lt!2446069 call!616442))))

(declare-fun b!6789572 () Bool)

(declare-fun res!2774918 () Bool)

(assert (=> b!6789572 (=> (not res!2774918) (not e!4098138))))

(assert (=> b!6789572 (= res!2774918 (isEmpty!38370 (tail!12715 (_2!36887 (get!22982 lt!2446010)))))))

(declare-fun b!6789573 () Bool)

(assert (=> b!6789573 (= e!4098135 e!4098137)))

(declare-fun c!1261846 () Bool)

(assert (=> b!6789573 (= c!1261846 ((_ is EmptyLang!16609) r!7292))))

(declare-fun b!6789574 () Bool)

(assert (=> b!6789574 (= e!4098136 (nullable!6588 r!7292))))

(declare-fun b!6789575 () Bool)

(assert (=> b!6789575 (= e!4098134 (not (= (head!13630 (_2!36887 (get!22982 lt!2446010))) (c!1261391 r!7292))))))

(declare-fun b!6789576 () Bool)

(declare-fun res!2774921 () Bool)

(assert (=> b!6789576 (=> res!2774921 e!4098139)))

(assert (=> b!6789576 (= res!2774921 e!4098138)))

(declare-fun res!2774919 () Bool)

(assert (=> b!6789576 (=> (not res!2774919) (not e!4098138))))

(assert (=> b!6789576 (= res!2774919 lt!2446069)))

(declare-fun b!6789577 () Bool)

(assert (=> b!6789577 (= e!4098137 (not lt!2446069))))

(assert (= (and d!2133378 c!1261848) b!6789574))

(assert (= (and d!2133378 (not c!1261848)) b!6789567))

(assert (= (and d!2133378 c!1261847) b!6789571))

(assert (= (and d!2133378 (not c!1261847)) b!6789573))

(assert (= (and b!6789573 c!1261846) b!6789577))

(assert (= (and b!6789573 (not c!1261846)) b!6789566))

(assert (= (and b!6789566 (not res!2774924)) b!6789576))

(assert (= (and b!6789576 res!2774919) b!6789570))

(assert (= (and b!6789570 res!2774920) b!6789572))

(assert (= (and b!6789572 res!2774918) b!6789568))

(assert (= (and b!6789576 (not res!2774921)) b!6789565))

(assert (= (and b!6789565 res!2774925) b!6789564))

(assert (= (and b!6789564 (not res!2774923)) b!6789569))

(assert (= (and b!6789569 (not res!2774922)) b!6789575))

(assert (= (or b!6789571 b!6789564 b!6789570) bm!616437))

(declare-fun m!7537352 () Bool)

(assert (=> b!6789567 m!7537352))

(assert (=> b!6789567 m!7537352))

(declare-fun m!7537354 () Bool)

(assert (=> b!6789567 m!7537354))

(declare-fun m!7537356 () Bool)

(assert (=> b!6789567 m!7537356))

(assert (=> b!6789567 m!7537354))

(assert (=> b!6789567 m!7537356))

(declare-fun m!7537358 () Bool)

(assert (=> b!6789567 m!7537358))

(assert (=> b!6789575 m!7537352))

(assert (=> b!6789572 m!7537356))

(assert (=> b!6789572 m!7537356))

(declare-fun m!7537360 () Bool)

(assert (=> b!6789572 m!7537360))

(declare-fun m!7537362 () Bool)

(assert (=> d!2133378 m!7537362))

(assert (=> d!2133378 m!7535916))

(assert (=> b!6789569 m!7537356))

(assert (=> b!6789569 m!7537356))

(assert (=> b!6789569 m!7537360))

(assert (=> b!6789574 m!7536436))

(assert (=> bm!616437 m!7537362))

(assert (=> b!6789568 m!7537352))

(assert (=> b!6788586 d!2133378))

(declare-fun d!2133380 () Bool)

(assert (=> d!2133380 (= (get!22982 lt!2446010) (v!52701 lt!2446010))))

(assert (=> b!6788586 d!2133380))

(declare-fun b!6789578 () Bool)

(declare-fun res!2774930 () Bool)

(declare-fun e!4098143 () Bool)

(assert (=> b!6789578 (=> res!2774930 e!4098143)))

(assert (=> b!6789578 (= res!2774930 (not ((_ is Concat!25454) lt!2446018)))))

(declare-fun e!4098141 () Bool)

(assert (=> b!6789578 (= e!4098141 e!4098143)))

(declare-fun b!6789579 () Bool)

(declare-fun e!4098145 () Bool)

(assert (=> b!6789579 (= e!4098143 e!4098145)))

(declare-fun res!2774926 () Bool)

(assert (=> b!6789579 (=> (not res!2774926) (not e!4098145))))

(declare-fun call!616445 () Bool)

(assert (=> b!6789579 (= res!2774926 call!616445)))

(declare-fun b!6789580 () Bool)

(declare-fun e!4098140 () Bool)

(declare-fun call!616444 () Bool)

(assert (=> b!6789580 (= e!4098140 call!616444)))

(declare-fun b!6789581 () Bool)

(declare-fun call!616443 () Bool)

(assert (=> b!6789581 (= e!4098145 call!616443)))

(declare-fun d!2133382 () Bool)

(declare-fun res!2774929 () Bool)

(declare-fun e!4098142 () Bool)

(assert (=> d!2133382 (=> res!2774929 e!4098142)))

(assert (=> d!2133382 (= res!2774929 ((_ is ElementMatch!16609) lt!2446018))))

(assert (=> d!2133382 (= (validRegex!8345 lt!2446018) e!4098142)))

(declare-fun bm!616438 () Bool)

(declare-fun c!1261850 () Bool)

(declare-fun c!1261849 () Bool)

(assert (=> bm!616438 (= call!616444 (validRegex!8345 (ite c!1261849 (reg!16938 lt!2446018) (ite c!1261850 (regOne!33731 lt!2446018) (regOne!33730 lt!2446018)))))))

(declare-fun bm!616439 () Bool)

(assert (=> bm!616439 (= call!616443 (validRegex!8345 (ite c!1261850 (regTwo!33731 lt!2446018) (regTwo!33730 lt!2446018))))))

(declare-fun b!6789582 () Bool)

(declare-fun e!4098144 () Bool)

(assert (=> b!6789582 (= e!4098144 call!616443)))

(declare-fun b!6789583 () Bool)

(declare-fun res!2774927 () Bool)

(assert (=> b!6789583 (=> (not res!2774927) (not e!4098144))))

(assert (=> b!6789583 (= res!2774927 call!616445)))

(assert (=> b!6789583 (= e!4098141 e!4098144)))

(declare-fun bm!616440 () Bool)

(assert (=> bm!616440 (= call!616445 call!616444)))

(declare-fun b!6789584 () Bool)

(declare-fun e!4098146 () Bool)

(assert (=> b!6789584 (= e!4098146 e!4098141)))

(assert (=> b!6789584 (= c!1261850 ((_ is Union!16609) lt!2446018))))

(declare-fun b!6789585 () Bool)

(assert (=> b!6789585 (= e!4098142 e!4098146)))

(assert (=> b!6789585 (= c!1261849 ((_ is Star!16609) lt!2446018))))

(declare-fun b!6789586 () Bool)

(assert (=> b!6789586 (= e!4098146 e!4098140)))

(declare-fun res!2774928 () Bool)

(assert (=> b!6789586 (= res!2774928 (not (nullable!6588 (reg!16938 lt!2446018))))))

(assert (=> b!6789586 (=> (not res!2774928) (not e!4098140))))

(assert (= (and d!2133382 (not res!2774929)) b!6789585))

(assert (= (and b!6789585 c!1261849) b!6789586))

(assert (= (and b!6789585 (not c!1261849)) b!6789584))

(assert (= (and b!6789586 res!2774928) b!6789580))

(assert (= (and b!6789584 c!1261850) b!6789583))

(assert (= (and b!6789584 (not c!1261850)) b!6789578))

(assert (= (and b!6789583 res!2774927) b!6789582))

(assert (= (and b!6789578 (not res!2774930)) b!6789579))

(assert (= (and b!6789579 res!2774926) b!6789581))

(assert (= (or b!6789582 b!6789581) bm!616439))

(assert (= (or b!6789583 b!6789579) bm!616440))

(assert (= (or b!6789580 bm!616440) bm!616438))

(declare-fun m!7537364 () Bool)

(assert (=> bm!616438 m!7537364))

(declare-fun m!7537366 () Bool)

(assert (=> bm!616439 m!7537366))

(declare-fun m!7537368 () Bool)

(assert (=> b!6789586 m!7537368))

(assert (=> d!2132978 d!2133382))

(declare-fun bs!1808994 () Bool)

(declare-fun d!2133384 () Bool)

(assert (= bs!1808994 (and d!2133384 d!2133356)))

(declare-fun lambda!382436 () Int)

(assert (=> bs!1808994 (= lambda!382436 lambda!382435)))

(declare-fun bs!1808995 () Bool)

(assert (= bs!1808995 (and d!2133384 d!2132992)))

(assert (=> bs!1808995 (= lambda!382436 lambda!382381)))

(declare-fun bs!1808996 () Bool)

(assert (= bs!1808996 (and d!2133384 d!2132890)))

(assert (=> bs!1808996 (= lambda!382436 lambda!382348)))

(declare-fun bs!1808997 () Bool)

(assert (= bs!1808997 (and d!2133384 d!2132790)))

(assert (=> bs!1808997 (= lambda!382436 lambda!382300)))

(declare-fun bs!1808998 () Bool)

(assert (= bs!1808998 (and d!2133384 d!2133256)))

(assert (=> bs!1808998 (= lambda!382436 lambda!382426)))

(declare-fun bs!1808999 () Bool)

(assert (= bs!1808999 (and d!2133384 d!2133200)))

(assert (=> bs!1808999 (= lambda!382436 lambda!382419)))

(declare-fun bs!1809000 () Bool)

(assert (= bs!1809000 (and d!2133384 d!2132988)))

(assert (=> bs!1809000 (= lambda!382436 lambda!382380)))

(declare-fun bs!1809001 () Bool)

(assert (= bs!1809001 (and d!2133384 d!2133354)))

(assert (=> bs!1809001 (= lambda!382436 lambda!382434)))

(declare-fun bs!1809002 () Bool)

(assert (= bs!1809002 (and d!2133384 d!2132792)))

(assert (=> bs!1809002 (= lambda!382436 lambda!382303)))

(declare-fun bs!1809003 () Bool)

(assert (= bs!1809003 (and d!2133384 d!2132796)))

(assert (=> bs!1809003 (= lambda!382436 lambda!382306)))

(declare-fun b!6789587 () Bool)

(declare-fun e!4098148 () Regex!16609)

(assert (=> b!6789587 (= e!4098148 (Union!16609 (h!72450 (unfocusZipperList!2030 (Cons!66004 lt!2445912 Nil!66004))) (generalisedUnion!2453 (t!379847 (unfocusZipperList!2030 (Cons!66004 lt!2445912 Nil!66004))))))))

(declare-fun b!6789588 () Bool)

(declare-fun e!4098150 () Bool)

(declare-fun lt!2446070 () Regex!16609)

(assert (=> b!6789588 (= e!4098150 (= lt!2446070 (head!13629 (unfocusZipperList!2030 (Cons!66004 lt!2445912 Nil!66004)))))))

(declare-fun b!6789589 () Bool)

(declare-fun e!4098147 () Bool)

(assert (=> b!6789589 (= e!4098147 (isEmptyLang!1974 lt!2446070))))

(declare-fun b!6789590 () Bool)

(assert (=> b!6789590 (= e!4098148 EmptyLang!16609)))

(declare-fun b!6789591 () Bool)

(assert (=> b!6789591 (= e!4098147 e!4098150)))

(declare-fun c!1261852 () Bool)

(assert (=> b!6789591 (= c!1261852 (isEmpty!38372 (tail!12714 (unfocusZipperList!2030 (Cons!66004 lt!2445912 Nil!66004)))))))

(declare-fun b!6789592 () Bool)

(declare-fun e!4098151 () Bool)

(assert (=> b!6789592 (= e!4098151 (isEmpty!38372 (t!379847 (unfocusZipperList!2030 (Cons!66004 lt!2445912 Nil!66004)))))))

(declare-fun b!6789593 () Bool)

(declare-fun e!4098152 () Regex!16609)

(assert (=> b!6789593 (= e!4098152 (h!72450 (unfocusZipperList!2030 (Cons!66004 lt!2445912 Nil!66004))))))

(declare-fun e!4098149 () Bool)

(assert (=> d!2133384 e!4098149))

(declare-fun res!2774932 () Bool)

(assert (=> d!2133384 (=> (not res!2774932) (not e!4098149))))

(assert (=> d!2133384 (= res!2774932 (validRegex!8345 lt!2446070))))

(assert (=> d!2133384 (= lt!2446070 e!4098152)))

(declare-fun c!1261853 () Bool)

(assert (=> d!2133384 (= c!1261853 e!4098151)))

(declare-fun res!2774931 () Bool)

(assert (=> d!2133384 (=> (not res!2774931) (not e!4098151))))

(assert (=> d!2133384 (= res!2774931 ((_ is Cons!66002) (unfocusZipperList!2030 (Cons!66004 lt!2445912 Nil!66004))))))

(assert (=> d!2133384 (forall!15801 (unfocusZipperList!2030 (Cons!66004 lt!2445912 Nil!66004)) lambda!382436)))

(assert (=> d!2133384 (= (generalisedUnion!2453 (unfocusZipperList!2030 (Cons!66004 lt!2445912 Nil!66004))) lt!2446070)))

(declare-fun b!6789594 () Bool)

(assert (=> b!6789594 (= e!4098149 e!4098147)))

(declare-fun c!1261851 () Bool)

(assert (=> b!6789594 (= c!1261851 (isEmpty!38372 (unfocusZipperList!2030 (Cons!66004 lt!2445912 Nil!66004))))))

(declare-fun b!6789595 () Bool)

(assert (=> b!6789595 (= e!4098150 (isUnion!1404 lt!2446070))))

(declare-fun b!6789596 () Bool)

(assert (=> b!6789596 (= e!4098152 e!4098148)))

(declare-fun c!1261854 () Bool)

(assert (=> b!6789596 (= c!1261854 ((_ is Cons!66002) (unfocusZipperList!2030 (Cons!66004 lt!2445912 Nil!66004))))))

(assert (= (and d!2133384 res!2774931) b!6789592))

(assert (= (and d!2133384 c!1261853) b!6789593))

(assert (= (and d!2133384 (not c!1261853)) b!6789596))

(assert (= (and b!6789596 c!1261854) b!6789587))

(assert (= (and b!6789596 (not c!1261854)) b!6789590))

(assert (= (and d!2133384 res!2774932) b!6789594))

(assert (= (and b!6789594 c!1261851) b!6789589))

(assert (= (and b!6789594 (not c!1261851)) b!6789591))

(assert (= (and b!6789591 c!1261852) b!6789588))

(assert (= (and b!6789591 (not c!1261852)) b!6789595))

(assert (=> b!6789591 m!7536462))

(declare-fun m!7537370 () Bool)

(assert (=> b!6789591 m!7537370))

(assert (=> b!6789591 m!7537370))

(declare-fun m!7537372 () Bool)

(assert (=> b!6789591 m!7537372))

(declare-fun m!7537374 () Bool)

(assert (=> d!2133384 m!7537374))

(assert (=> d!2133384 m!7536462))

(declare-fun m!7537376 () Bool)

(assert (=> d!2133384 m!7537376))

(assert (=> b!6789588 m!7536462))

(declare-fun m!7537378 () Bool)

(assert (=> b!6789588 m!7537378))

(declare-fun m!7537380 () Bool)

(assert (=> b!6789592 m!7537380))

(declare-fun m!7537382 () Bool)

(assert (=> b!6789587 m!7537382))

(assert (=> b!6789594 m!7536462))

(declare-fun m!7537384 () Bool)

(assert (=> b!6789594 m!7537384))

(declare-fun m!7537386 () Bool)

(assert (=> b!6789589 m!7537386))

(declare-fun m!7537388 () Bool)

(assert (=> b!6789595 m!7537388))

(assert (=> d!2132978 d!2133384))

(declare-fun bs!1809004 () Bool)

(declare-fun d!2133386 () Bool)

(assert (= bs!1809004 (and d!2133386 d!2133356)))

(declare-fun lambda!382437 () Int)

(assert (=> bs!1809004 (= lambda!382437 lambda!382435)))

(declare-fun bs!1809005 () Bool)

(assert (= bs!1809005 (and d!2133386 d!2132992)))

(assert (=> bs!1809005 (= lambda!382437 lambda!382381)))

(declare-fun bs!1809006 () Bool)

(assert (= bs!1809006 (and d!2133386 d!2132890)))

(assert (=> bs!1809006 (= lambda!382437 lambda!382348)))

(declare-fun bs!1809007 () Bool)

(assert (= bs!1809007 (and d!2133386 d!2132790)))

(assert (=> bs!1809007 (= lambda!382437 lambda!382300)))

(declare-fun bs!1809008 () Bool)

(assert (= bs!1809008 (and d!2133386 d!2133256)))

(assert (=> bs!1809008 (= lambda!382437 lambda!382426)))

(declare-fun bs!1809009 () Bool)

(assert (= bs!1809009 (and d!2133386 d!2133200)))

(assert (=> bs!1809009 (= lambda!382437 lambda!382419)))

(declare-fun bs!1809010 () Bool)

(assert (= bs!1809010 (and d!2133386 d!2132988)))

(assert (=> bs!1809010 (= lambda!382437 lambda!382380)))

(declare-fun bs!1809011 () Bool)

(assert (= bs!1809011 (and d!2133386 d!2133354)))

(assert (=> bs!1809011 (= lambda!382437 lambda!382434)))

(declare-fun bs!1809012 () Bool)

(assert (= bs!1809012 (and d!2133386 d!2132792)))

(assert (=> bs!1809012 (= lambda!382437 lambda!382303)))

(declare-fun bs!1809013 () Bool)

(assert (= bs!1809013 (and d!2133386 d!2132796)))

(assert (=> bs!1809013 (= lambda!382437 lambda!382306)))

(declare-fun bs!1809014 () Bool)

(assert (= bs!1809014 (and d!2133386 d!2133384)))

(assert (=> bs!1809014 (= lambda!382437 lambda!382436)))

(declare-fun lt!2446071 () List!66126)

(assert (=> d!2133386 (forall!15801 lt!2446071 lambda!382437)))

(declare-fun e!4098153 () List!66126)

(assert (=> d!2133386 (= lt!2446071 e!4098153)))

(declare-fun c!1261855 () Bool)

(assert (=> d!2133386 (= c!1261855 ((_ is Cons!66004) (Cons!66004 lt!2445912 Nil!66004)))))

(assert (=> d!2133386 (= (unfocusZipperList!2030 (Cons!66004 lt!2445912 Nil!66004)) lt!2446071)))

(declare-fun b!6789597 () Bool)

(assert (=> b!6789597 (= e!4098153 (Cons!66002 (generalisedConcat!2206 (exprs!6493 (h!72452 (Cons!66004 lt!2445912 Nil!66004)))) (unfocusZipperList!2030 (t!379849 (Cons!66004 lt!2445912 Nil!66004)))))))

(declare-fun b!6789598 () Bool)

(assert (=> b!6789598 (= e!4098153 Nil!66002)))

(assert (= (and d!2133386 c!1261855) b!6789597))

(assert (= (and d!2133386 (not c!1261855)) b!6789598))

(declare-fun m!7537390 () Bool)

(assert (=> d!2133386 m!7537390))

(declare-fun m!7537392 () Bool)

(assert (=> b!6789597 m!7537392))

(declare-fun m!7537394 () Bool)

(assert (=> b!6789597 m!7537394))

(assert (=> d!2132978 d!2133386))

(declare-fun d!2133388 () Bool)

(assert (=> d!2133388 (= (nullable!6588 (h!72450 (exprs!6493 lt!2445916))) (nullableFct!2494 (h!72450 (exprs!6493 lt!2445916))))))

(declare-fun bs!1809015 () Bool)

(assert (= bs!1809015 d!2133388))

(declare-fun m!7537396 () Bool)

(assert (=> bs!1809015 m!7537396))

(assert (=> b!6788081 d!2133388))

(assert (=> b!6788613 d!2133230))

(assert (=> bs!1808583 d!2132918))

(declare-fun b!6789599 () Bool)

(declare-fun res!2774937 () Bool)

(declare-fun e!4098157 () Bool)

(assert (=> b!6789599 (=> res!2774937 e!4098157)))

(assert (=> b!6789599 (= res!2774937 (not ((_ is Concat!25454) lt!2445925)))))

(declare-fun e!4098155 () Bool)

(assert (=> b!6789599 (= e!4098155 e!4098157)))

(declare-fun b!6789600 () Bool)

(declare-fun e!4098159 () Bool)

(assert (=> b!6789600 (= e!4098157 e!4098159)))

(declare-fun res!2774933 () Bool)

(assert (=> b!6789600 (=> (not res!2774933) (not e!4098159))))

(declare-fun call!616448 () Bool)

(assert (=> b!6789600 (= res!2774933 call!616448)))

(declare-fun b!6789601 () Bool)

(declare-fun e!4098154 () Bool)

(declare-fun call!616447 () Bool)

(assert (=> b!6789601 (= e!4098154 call!616447)))

(declare-fun b!6789602 () Bool)

(declare-fun call!616446 () Bool)

(assert (=> b!6789602 (= e!4098159 call!616446)))

(declare-fun d!2133390 () Bool)

(declare-fun res!2774936 () Bool)

(declare-fun e!4098156 () Bool)

(assert (=> d!2133390 (=> res!2774936 e!4098156)))

(assert (=> d!2133390 (= res!2774936 ((_ is ElementMatch!16609) lt!2445925))))

(assert (=> d!2133390 (= (validRegex!8345 lt!2445925) e!4098156)))

(declare-fun c!1261856 () Bool)

(declare-fun c!1261857 () Bool)

(declare-fun bm!616441 () Bool)

(assert (=> bm!616441 (= call!616447 (validRegex!8345 (ite c!1261856 (reg!16938 lt!2445925) (ite c!1261857 (regOne!33731 lt!2445925) (regOne!33730 lt!2445925)))))))

(declare-fun bm!616442 () Bool)

(assert (=> bm!616442 (= call!616446 (validRegex!8345 (ite c!1261857 (regTwo!33731 lt!2445925) (regTwo!33730 lt!2445925))))))

(declare-fun b!6789603 () Bool)

(declare-fun e!4098158 () Bool)

(assert (=> b!6789603 (= e!4098158 call!616446)))

(declare-fun b!6789604 () Bool)

(declare-fun res!2774934 () Bool)

(assert (=> b!6789604 (=> (not res!2774934) (not e!4098158))))

(assert (=> b!6789604 (= res!2774934 call!616448)))

(assert (=> b!6789604 (= e!4098155 e!4098158)))

(declare-fun bm!616443 () Bool)

(assert (=> bm!616443 (= call!616448 call!616447)))

(declare-fun b!6789605 () Bool)

(declare-fun e!4098160 () Bool)

(assert (=> b!6789605 (= e!4098160 e!4098155)))

(assert (=> b!6789605 (= c!1261857 ((_ is Union!16609) lt!2445925))))

(declare-fun b!6789606 () Bool)

(assert (=> b!6789606 (= e!4098156 e!4098160)))

(assert (=> b!6789606 (= c!1261856 ((_ is Star!16609) lt!2445925))))

(declare-fun b!6789607 () Bool)

(assert (=> b!6789607 (= e!4098160 e!4098154)))

(declare-fun res!2774935 () Bool)

(assert (=> b!6789607 (= res!2774935 (not (nullable!6588 (reg!16938 lt!2445925))))))

(assert (=> b!6789607 (=> (not res!2774935) (not e!4098154))))

(assert (= (and d!2133390 (not res!2774936)) b!6789606))

(assert (= (and b!6789606 c!1261856) b!6789607))

(assert (= (and b!6789606 (not c!1261856)) b!6789605))

(assert (= (and b!6789607 res!2774935) b!6789601))

(assert (= (and b!6789605 c!1261857) b!6789604))

(assert (= (and b!6789605 (not c!1261857)) b!6789599))

(assert (= (and b!6789604 res!2774934) b!6789603))

(assert (= (and b!6789599 (not res!2774937)) b!6789600))

(assert (= (and b!6789600 res!2774933) b!6789602))

(assert (= (or b!6789603 b!6789602) bm!616442))

(assert (= (or b!6789604 b!6789600) bm!616443))

(assert (= (or b!6789601 bm!616443) bm!616441))

(declare-fun m!7537398 () Bool)

(assert (=> bm!616441 m!7537398))

(declare-fun m!7537400 () Bool)

(assert (=> bm!616442 m!7537400))

(declare-fun m!7537402 () Bool)

(assert (=> b!6789607 m!7537402))

(assert (=> d!2132790 d!2133390))

(declare-fun d!2133392 () Bool)

(declare-fun res!2774938 () Bool)

(declare-fun e!4098161 () Bool)

(assert (=> d!2133392 (=> res!2774938 e!4098161)))

(assert (=> d!2133392 (= res!2774938 ((_ is Nil!66002) (unfocusZipperList!2030 zl!343)))))

(assert (=> d!2133392 (= (forall!15801 (unfocusZipperList!2030 zl!343) lambda!382300) e!4098161)))

(declare-fun b!6789608 () Bool)

(declare-fun e!4098162 () Bool)

(assert (=> b!6789608 (= e!4098161 e!4098162)))

(declare-fun res!2774939 () Bool)

(assert (=> b!6789608 (=> (not res!2774939) (not e!4098162))))

(assert (=> b!6789608 (= res!2774939 (dynLambda!26343 lambda!382300 (h!72450 (unfocusZipperList!2030 zl!343))))))

(declare-fun b!6789609 () Bool)

(assert (=> b!6789609 (= e!4098162 (forall!15801 (t!379847 (unfocusZipperList!2030 zl!343)) lambda!382300))))

(assert (= (and d!2133392 (not res!2774938)) b!6789608))

(assert (= (and b!6789608 res!2774939) b!6789609))

(declare-fun b_lambda!255735 () Bool)

(assert (=> (not b_lambda!255735) (not b!6789608)))

(declare-fun m!7537404 () Bool)

(assert (=> b!6789608 m!7537404))

(declare-fun m!7537406 () Bool)

(assert (=> b!6789609 m!7537406))

(assert (=> d!2132790 d!2133392))

(assert (=> d!2132860 d!2132848))

(assert (=> d!2132860 d!2132818))

(declare-fun d!2133394 () Bool)

(assert (=> d!2133394 (= (matchR!8792 lt!2445914 s!2326) (matchRSpec!3710 lt!2445914 s!2326))))

(assert (=> d!2133394 true))

(declare-fun _$88!5598 () Unit!159909)

(assert (=> d!2133394 (= (choose!50558 lt!2445914 s!2326) _$88!5598)))

(declare-fun bs!1809016 () Bool)

(assert (= bs!1809016 d!2133394))

(assert (=> bs!1809016 m!7535910))

(assert (=> bs!1809016 m!7535908))

(assert (=> d!2132860 d!2133394))

(declare-fun b!6789610 () Bool)

(declare-fun res!2774944 () Bool)

(declare-fun e!4098166 () Bool)

(assert (=> b!6789610 (=> res!2774944 e!4098166)))

(assert (=> b!6789610 (= res!2774944 (not ((_ is Concat!25454) lt!2445914)))))

(declare-fun e!4098164 () Bool)

(assert (=> b!6789610 (= e!4098164 e!4098166)))

(declare-fun b!6789611 () Bool)

(declare-fun e!4098168 () Bool)

(assert (=> b!6789611 (= e!4098166 e!4098168)))

(declare-fun res!2774940 () Bool)

(assert (=> b!6789611 (=> (not res!2774940) (not e!4098168))))

(declare-fun call!616451 () Bool)

(assert (=> b!6789611 (= res!2774940 call!616451)))

(declare-fun b!6789612 () Bool)

(declare-fun e!4098163 () Bool)

(declare-fun call!616450 () Bool)

(assert (=> b!6789612 (= e!4098163 call!616450)))

(declare-fun b!6789613 () Bool)

(declare-fun call!616449 () Bool)

(assert (=> b!6789613 (= e!4098168 call!616449)))

(declare-fun d!2133396 () Bool)

(declare-fun res!2774943 () Bool)

(declare-fun e!4098165 () Bool)

(assert (=> d!2133396 (=> res!2774943 e!4098165)))

(assert (=> d!2133396 (= res!2774943 ((_ is ElementMatch!16609) lt!2445914))))

(assert (=> d!2133396 (= (validRegex!8345 lt!2445914) e!4098165)))

(declare-fun c!1261859 () Bool)

(declare-fun c!1261858 () Bool)

(declare-fun bm!616444 () Bool)

(assert (=> bm!616444 (= call!616450 (validRegex!8345 (ite c!1261858 (reg!16938 lt!2445914) (ite c!1261859 (regOne!33731 lt!2445914) (regOne!33730 lt!2445914)))))))

(declare-fun bm!616445 () Bool)

(assert (=> bm!616445 (= call!616449 (validRegex!8345 (ite c!1261859 (regTwo!33731 lt!2445914) (regTwo!33730 lt!2445914))))))

(declare-fun b!6789614 () Bool)

(declare-fun e!4098167 () Bool)

(assert (=> b!6789614 (= e!4098167 call!616449)))

(declare-fun b!6789615 () Bool)

(declare-fun res!2774941 () Bool)

(assert (=> b!6789615 (=> (not res!2774941) (not e!4098167))))

(assert (=> b!6789615 (= res!2774941 call!616451)))

(assert (=> b!6789615 (= e!4098164 e!4098167)))

(declare-fun bm!616446 () Bool)

(assert (=> bm!616446 (= call!616451 call!616450)))

(declare-fun b!6789616 () Bool)

(declare-fun e!4098169 () Bool)

(assert (=> b!6789616 (= e!4098169 e!4098164)))

(assert (=> b!6789616 (= c!1261859 ((_ is Union!16609) lt!2445914))))

(declare-fun b!6789617 () Bool)

(assert (=> b!6789617 (= e!4098165 e!4098169)))

(assert (=> b!6789617 (= c!1261858 ((_ is Star!16609) lt!2445914))))

(declare-fun b!6789618 () Bool)

(assert (=> b!6789618 (= e!4098169 e!4098163)))

(declare-fun res!2774942 () Bool)

(assert (=> b!6789618 (= res!2774942 (not (nullable!6588 (reg!16938 lt!2445914))))))

(assert (=> b!6789618 (=> (not res!2774942) (not e!4098163))))

(assert (= (and d!2133396 (not res!2774943)) b!6789617))

(assert (= (and b!6789617 c!1261858) b!6789618))

(assert (= (and b!6789617 (not c!1261858)) b!6789616))

(assert (= (and b!6789618 res!2774942) b!6789612))

(assert (= (and b!6789616 c!1261859) b!6789615))

(assert (= (and b!6789616 (not c!1261859)) b!6789610))

(assert (= (and b!6789615 res!2774941) b!6789614))

(assert (= (and b!6789610 (not res!2774944)) b!6789611))

(assert (= (and b!6789611 res!2774940) b!6789613))

(assert (= (or b!6789614 b!6789613) bm!616445))

(assert (= (or b!6789615 b!6789611) bm!616446))

(assert (= (or b!6789612 bm!616446) bm!616444))

(declare-fun m!7537408 () Bool)

(assert (=> bm!616444 m!7537408))

(declare-fun m!7537410 () Bool)

(assert (=> bm!616445 m!7537410))

(declare-fun m!7537412 () Bool)

(assert (=> b!6789618 m!7537412))

(assert (=> d!2132860 d!2133396))

(declare-fun d!2133398 () Bool)

(assert (=> d!2133398 (= ($colon$colon!2417 (exprs!6493 lt!2445912) (ite (or c!1261433 c!1261431) (regTwo!33730 (reg!16938 r!7292)) (reg!16938 r!7292))) (Cons!66002 (ite (or c!1261433 c!1261431) (regTwo!33730 (reg!16938 r!7292)) (reg!16938 r!7292)) (exprs!6493 lt!2445912)))))

(assert (=> bm!616188 d!2133398))

(assert (=> d!2132968 d!2132946))

(assert (=> d!2132968 d!2132986))

(declare-fun d!2133400 () Bool)

(assert (=> d!2133400 (= ($colon$colon!2417 (exprs!6493 (Context!11987 Nil!66002)) (ite (or c!1261573 c!1261571) (regTwo!33730 r!7292) r!7292)) (Cons!66002 (ite (or c!1261573 c!1261571) (regTwo!33730 r!7292) r!7292) (exprs!6493 (Context!11987 Nil!66002))))))

(assert (=> bm!616254 d!2133400))

(assert (=> d!2132848 d!2132946))

(assert (=> d!2132848 d!2133396))

(declare-fun b!6789619 () Bool)

(declare-fun res!2774949 () Bool)

(declare-fun e!4098173 () Bool)

(assert (=> b!6789619 (=> res!2774949 e!4098173)))

(assert (=> b!6789619 (= res!2774949 (not ((_ is Concat!25454) (ite c!1261607 (regTwo!33731 r!7292) (regTwo!33730 r!7292)))))))

(declare-fun e!4098171 () Bool)

(assert (=> b!6789619 (= e!4098171 e!4098173)))

(declare-fun b!6789620 () Bool)

(declare-fun e!4098175 () Bool)

(assert (=> b!6789620 (= e!4098173 e!4098175)))

(declare-fun res!2774945 () Bool)

(assert (=> b!6789620 (=> (not res!2774945) (not e!4098175))))

(declare-fun call!616454 () Bool)

(assert (=> b!6789620 (= res!2774945 call!616454)))

(declare-fun b!6789621 () Bool)

(declare-fun e!4098170 () Bool)

(declare-fun call!616453 () Bool)

(assert (=> b!6789621 (= e!4098170 call!616453)))

(declare-fun b!6789622 () Bool)

(declare-fun call!616452 () Bool)

(assert (=> b!6789622 (= e!4098175 call!616452)))

(declare-fun d!2133402 () Bool)

(declare-fun res!2774948 () Bool)

(declare-fun e!4098172 () Bool)

(assert (=> d!2133402 (=> res!2774948 e!4098172)))

(assert (=> d!2133402 (= res!2774948 ((_ is ElementMatch!16609) (ite c!1261607 (regTwo!33731 r!7292) (regTwo!33730 r!7292))))))

(assert (=> d!2133402 (= (validRegex!8345 (ite c!1261607 (regTwo!33731 r!7292) (regTwo!33730 r!7292))) e!4098172)))

(declare-fun bm!616447 () Bool)

(declare-fun c!1261860 () Bool)

(declare-fun c!1261861 () Bool)

(assert (=> bm!616447 (= call!616453 (validRegex!8345 (ite c!1261860 (reg!16938 (ite c!1261607 (regTwo!33731 r!7292) (regTwo!33730 r!7292))) (ite c!1261861 (regOne!33731 (ite c!1261607 (regTwo!33731 r!7292) (regTwo!33730 r!7292))) (regOne!33730 (ite c!1261607 (regTwo!33731 r!7292) (regTwo!33730 r!7292)))))))))

(declare-fun bm!616448 () Bool)

(assert (=> bm!616448 (= call!616452 (validRegex!8345 (ite c!1261861 (regTwo!33731 (ite c!1261607 (regTwo!33731 r!7292) (regTwo!33730 r!7292))) (regTwo!33730 (ite c!1261607 (regTwo!33731 r!7292) (regTwo!33730 r!7292))))))))

(declare-fun b!6789623 () Bool)

(declare-fun e!4098174 () Bool)

(assert (=> b!6789623 (= e!4098174 call!616452)))

(declare-fun b!6789624 () Bool)

(declare-fun res!2774946 () Bool)

(assert (=> b!6789624 (=> (not res!2774946) (not e!4098174))))

(assert (=> b!6789624 (= res!2774946 call!616454)))

(assert (=> b!6789624 (= e!4098171 e!4098174)))

(declare-fun bm!616449 () Bool)

(assert (=> bm!616449 (= call!616454 call!616453)))

(declare-fun b!6789625 () Bool)

(declare-fun e!4098176 () Bool)

(assert (=> b!6789625 (= e!4098176 e!4098171)))

(assert (=> b!6789625 (= c!1261861 ((_ is Union!16609) (ite c!1261607 (regTwo!33731 r!7292) (regTwo!33730 r!7292))))))

(declare-fun b!6789626 () Bool)

(assert (=> b!6789626 (= e!4098172 e!4098176)))

(assert (=> b!6789626 (= c!1261860 ((_ is Star!16609) (ite c!1261607 (regTwo!33731 r!7292) (regTwo!33730 r!7292))))))

(declare-fun b!6789627 () Bool)

(assert (=> b!6789627 (= e!4098176 e!4098170)))

(declare-fun res!2774947 () Bool)

(assert (=> b!6789627 (= res!2774947 (not (nullable!6588 (reg!16938 (ite c!1261607 (regTwo!33731 r!7292) (regTwo!33730 r!7292))))))))

(assert (=> b!6789627 (=> (not res!2774947) (not e!4098170))))

(assert (= (and d!2133402 (not res!2774948)) b!6789626))

(assert (= (and b!6789626 c!1261860) b!6789627))

(assert (= (and b!6789626 (not c!1261860)) b!6789625))

(assert (= (and b!6789627 res!2774947) b!6789621))

(assert (= (and b!6789625 c!1261861) b!6789624))

(assert (= (and b!6789625 (not c!1261861)) b!6789619))

(assert (= (and b!6789624 res!2774946) b!6789623))

(assert (= (and b!6789619 (not res!2774949)) b!6789620))

(assert (= (and b!6789620 res!2774945) b!6789622))

(assert (= (or b!6789623 b!6789622) bm!616448))

(assert (= (or b!6789624 b!6789620) bm!616449))

(assert (= (or b!6789621 bm!616449) bm!616447))

(declare-fun m!7537414 () Bool)

(assert (=> bm!616447 m!7537414))

(declare-fun m!7537416 () Bool)

(assert (=> bm!616448 m!7537416))

(declare-fun m!7537418 () Bool)

(assert (=> b!6789627 m!7537418))

(assert (=> bm!616267 d!2133402))

(declare-fun b!6789628 () Bool)

(declare-fun e!4098179 () (InoxSet Context!11986))

(declare-fun call!616459 () (InoxSet Context!11986))

(assert (=> b!6789628 (= e!4098179 call!616459)))

(declare-fun call!616460 () (InoxSet Context!11986))

(declare-fun c!1261864 () Bool)

(declare-fun c!1261863 () Bool)

(declare-fun bm!616450 () Bool)

(declare-fun c!1261866 () Bool)

(declare-fun call!616455 () List!66126)

(assert (=> bm!616450 (= call!616460 (derivationStepZipperDown!1837 (ite c!1261863 (regOne!33731 (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) (ite c!1261866 (regTwo!33730 (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) (ite c!1261864 (regOne!33730 (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) (reg!16938 (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002)))))))) (ite (or c!1261863 c!1261866) (Context!11987 (t!379847 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) (Context!11987 call!616455)) (h!72451 s!2326)))))

(declare-fun call!616458 () (InoxSet Context!11986))

(declare-fun bm!616451 () Bool)

(declare-fun call!616456 () List!66126)

(assert (=> bm!616451 (= call!616458 (derivationStepZipperDown!1837 (ite c!1261863 (regTwo!33731 (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) (regOne!33730 (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002)))))) (ite c!1261863 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) (Context!11987 call!616456)) (h!72451 s!2326)))))

(declare-fun b!6789629 () Bool)

(declare-fun e!4098178 () (InoxSet Context!11986))

(declare-fun e!4098177 () (InoxSet Context!11986))

(assert (=> b!6789629 (= e!4098178 e!4098177)))

(assert (=> b!6789629 (= c!1261863 ((_ is Union!16609) (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))))))

(declare-fun b!6789630 () Bool)

(declare-fun e!4098181 () (InoxSet Context!11986))

(assert (=> b!6789630 (= e!4098181 call!616459)))

(declare-fun b!6789631 () Bool)

(declare-fun e!4098182 () Bool)

(assert (=> b!6789631 (= c!1261866 e!4098182)))

(declare-fun res!2774950 () Bool)

(assert (=> b!6789631 (=> (not res!2774950) (not e!4098182))))

(assert (=> b!6789631 (= res!2774950 ((_ is Concat!25454) (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))))))

(declare-fun e!4098180 () (InoxSet Context!11986))

(assert (=> b!6789631 (= e!4098177 e!4098180)))

(declare-fun b!6789632 () Bool)

(assert (=> b!6789632 (= e!4098179 ((as const (Array Context!11986 Bool)) false))))

(declare-fun b!6789633 () Bool)

(assert (=> b!6789633 (= e!4098182 (nullable!6588 (regOne!33730 (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002)))))))))

(declare-fun b!6789634 () Bool)

(assert (=> b!6789634 (= e!4098180 e!4098181)))

(assert (=> b!6789634 (= c!1261864 ((_ is Concat!25454) (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))))))

(declare-fun bm!616452 () Bool)

(assert (=> bm!616452 (= call!616455 call!616456)))

(declare-fun d!2133404 () Bool)

(declare-fun c!1261865 () Bool)

(assert (=> d!2133404 (= c!1261865 (and ((_ is ElementMatch!16609) (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) (= (c!1261391 (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) (h!72451 s!2326))))))

(assert (=> d!2133404 (= (derivationStepZipperDown!1837 (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002)))) (Context!11987 (t!379847 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) (h!72451 s!2326)) e!4098178)))

(declare-fun bm!616453 () Bool)

(declare-fun call!616457 () (InoxSet Context!11986))

(assert (=> bm!616453 (= call!616457 call!616460)))

(declare-fun b!6789635 () Bool)

(assert (=> b!6789635 (= e!4098178 (store ((as const (Array Context!11986 Bool)) false) (Context!11987 (t!379847 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) true))))

(declare-fun b!6789636 () Bool)

(assert (=> b!6789636 (= e!4098177 ((_ map or) call!616460 call!616458))))

(declare-fun b!6789637 () Bool)

(assert (=> b!6789637 (= e!4098180 ((_ map or) call!616458 call!616457))))

(declare-fun bm!616454 () Bool)

(assert (=> bm!616454 (= call!616459 call!616457)))

(declare-fun b!6789638 () Bool)

(declare-fun c!1261862 () Bool)

(assert (=> b!6789638 (= c!1261862 ((_ is Star!16609) (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))))))

(assert (=> b!6789638 (= e!4098181 e!4098179)))

(declare-fun bm!616455 () Bool)

(assert (=> bm!616455 (= call!616456 ($colon$colon!2417 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002)))))) (ite (or c!1261866 c!1261864) (regTwo!33730 (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002))))) (h!72450 (exprs!6493 (Context!11987 (Cons!66002 r!7292 Nil!66002)))))))))

(assert (= (and d!2133404 c!1261865) b!6789635))

(assert (= (and d!2133404 (not c!1261865)) b!6789629))

(assert (= (and b!6789629 c!1261863) b!6789636))

(assert (= (and b!6789629 (not c!1261863)) b!6789631))

(assert (= (and b!6789631 res!2774950) b!6789633))

(assert (= (and b!6789631 c!1261866) b!6789637))

(assert (= (and b!6789631 (not c!1261866)) b!6789634))

(assert (= (and b!6789634 c!1261864) b!6789630))

(assert (= (and b!6789634 (not c!1261864)) b!6789638))

(assert (= (and b!6789638 c!1261862) b!6789628))

(assert (= (and b!6789638 (not c!1261862)) b!6789632))

(assert (= (or b!6789630 b!6789628) bm!616452))

(assert (= (or b!6789630 b!6789628) bm!616454))

(assert (= (or b!6789637 bm!616452) bm!616455))

(assert (= (or b!6789637 bm!616454) bm!616453))

(assert (= (or b!6789636 b!6789637) bm!616451))

(assert (= (or b!6789636 bm!616453) bm!616450))

(declare-fun m!7537420 () Bool)

(assert (=> b!6789635 m!7537420))

(declare-fun m!7537422 () Bool)

(assert (=> bm!616455 m!7537422))

(declare-fun m!7537424 () Bool)

(assert (=> b!6789633 m!7537424))

(declare-fun m!7537426 () Bool)

(assert (=> bm!616451 m!7537426))

(declare-fun m!7537428 () Bool)

(assert (=> bm!616450 m!7537428))

(assert (=> bm!616255 d!2133404))

(declare-fun d!2133406 () Bool)

(assert (=> d!2133406 (= (flatMap!2090 lt!2445905 lambda!382379) (choose!50556 lt!2445905 lambda!382379))))

(declare-fun bs!1809017 () Bool)

(assert (= bs!1809017 d!2133406))

(declare-fun m!7537430 () Bool)

(assert (=> bs!1809017 m!7537430))

(assert (=> d!2132976 d!2133406))

(declare-fun d!2133408 () Bool)

(assert (=> d!2133408 (= (Exists!3677 lambda!382363) (choose!50559 lambda!382363))))

(declare-fun bs!1809018 () Bool)

(assert (= bs!1809018 d!2133408))

(declare-fun m!7537432 () Bool)

(assert (=> bs!1809018 m!7537432))

(assert (=> d!2132940 d!2133408))

(declare-fun d!2133410 () Bool)

(assert (=> d!2133410 (= (Exists!3677 lambda!382364) (choose!50559 lambda!382364))))

(declare-fun bs!1809019 () Bool)

(assert (= bs!1809019 d!2133410))

(declare-fun m!7537434 () Bool)

(assert (=> bs!1809019 m!7537434))

(assert (=> d!2132940 d!2133410))

(declare-fun bs!1809020 () Bool)

(declare-fun d!2133412 () Bool)

(assert (= bs!1809020 (and d!2133412 d!2132942)))

(declare-fun lambda!382442 () Int)

(assert (=> bs!1809020 (= (= r!7292 (Star!16609 (reg!16938 r!7292))) (= lambda!382442 lambda!382372))))

(declare-fun bs!1809021 () Bool)

(assert (= bs!1809021 (and d!2133412 b!6788602)))

(assert (=> bs!1809021 (not (= lambda!382442 lambda!382377))))

(declare-fun bs!1809022 () Bool)

(assert (= bs!1809022 (and d!2133412 b!6789226)))

(assert (=> bs!1809022 (not (= lambda!382442 lambda!382424))))

(declare-fun bs!1809023 () Bool)

(assert (= bs!1809023 (and d!2133412 b!6789277)))

(assert (=> bs!1809023 (not (= lambda!382442 lambda!382430))))

(declare-fun bs!1809024 () Bool)

(assert (= bs!1809024 (and d!2133412 b!6787882)))

(assert (=> bs!1809024 (not (= lambda!382442 lambda!382296))))

(declare-fun bs!1809025 () Bool)

(assert (= bs!1809025 (and d!2133412 b!6788208)))

(assert (=> bs!1809025 (not (= lambda!382442 lambda!382329))))

(assert (=> bs!1809024 (= lambda!382442 lambda!382294)))

(declare-fun bs!1809026 () Bool)

(assert (= bs!1809026 (and d!2133412 b!6788209)))

(assert (=> bs!1809026 (not (= lambda!382442 lambda!382330))))

(declare-fun bs!1809027 () Bool)

(assert (= bs!1809027 (and d!2133412 b!6789225)))

(assert (=> bs!1809027 (not (= lambda!382442 lambda!382423))))

(declare-fun bs!1809028 () Bool)

(assert (= bs!1809028 (and d!2133412 d!2132940)))

(assert (=> bs!1809028 (not (= lambda!382442 lambda!382364))))

(declare-fun bs!1809029 () Bool)

(assert (= bs!1809029 (and d!2133412 d!2132962)))

(assert (=> bs!1809029 (= lambda!382442 lambda!382376)))

(declare-fun bs!1809030 () Bool)

(assert (= bs!1809030 (and d!2133412 b!6789276)))

(assert (=> bs!1809030 (not (= lambda!382442 lambda!382428))))

(assert (=> bs!1809024 (not (= lambda!382442 lambda!382295))))

(assert (=> bs!1809028 (= lambda!382442 lambda!382363)))

(assert (=> bs!1809020 (not (= lambda!382442 lambda!382373))))

(declare-fun bs!1809031 () Bool)

(assert (= bs!1809031 (and d!2133412 b!6788603)))

(assert (=> bs!1809031 (not (= lambda!382442 lambda!382378))))

(assert (=> d!2133412 true))

(assert (=> d!2133412 true))

(assert (=> d!2133412 true))

(declare-fun bs!1809032 () Bool)

(assert (= bs!1809032 d!2133412))

(declare-fun lambda!382443 () Int)

(assert (=> bs!1809032 (not (= lambda!382443 lambda!382442))))

(assert (=> bs!1809020 (not (= lambda!382443 lambda!382372))))

(assert (=> bs!1809021 (not (= lambda!382443 lambda!382377))))

(assert (=> bs!1809022 (= (and (= (reg!16938 r!7292) (regOne!33730 (regTwo!33731 lt!2445914))) (= r!7292 (regTwo!33730 (regTwo!33731 lt!2445914)))) (= lambda!382443 lambda!382424))))

(assert (=> bs!1809023 (= (and (= (reg!16938 r!7292) (regOne!33730 (regTwo!33731 r!7292))) (= r!7292 (regTwo!33730 (regTwo!33731 r!7292)))) (= lambda!382443 lambda!382430))))

(assert (=> bs!1809024 (= lambda!382443 lambda!382296)))

(assert (=> bs!1809025 (not (= lambda!382443 lambda!382329))))

(assert (=> bs!1809024 (not (= lambda!382443 lambda!382294))))

(assert (=> bs!1809026 (= (and (= (reg!16938 r!7292) (regOne!33730 lt!2445914)) (= r!7292 (regTwo!33730 lt!2445914))) (= lambda!382443 lambda!382330))))

(assert (=> bs!1809027 (not (= lambda!382443 lambda!382423))))

(assert (=> bs!1809028 (= lambda!382443 lambda!382364)))

(assert (=> bs!1809029 (not (= lambda!382443 lambda!382376))))

(assert (=> bs!1809030 (not (= lambda!382443 lambda!382428))))

(assert (=> bs!1809024 (not (= lambda!382443 lambda!382295))))

(assert (=> bs!1809028 (not (= lambda!382443 lambda!382363))))

(assert (=> bs!1809020 (not (= lambda!382443 lambda!382373))))

(assert (=> bs!1809031 (= (and (= (reg!16938 r!7292) (regOne!33730 r!7292)) (= r!7292 (regTwo!33730 r!7292))) (= lambda!382443 lambda!382378))))

(assert (=> d!2133412 true))

(assert (=> d!2133412 true))

(assert (=> d!2133412 true))

(assert (=> d!2133412 (= (Exists!3677 lambda!382442) (Exists!3677 lambda!382443))))

(assert (=> d!2133412 true))

(declare-fun _$90!2674 () Unit!159909)

(assert (=> d!2133412 (= (choose!50560 (reg!16938 r!7292) r!7292 s!2326) _$90!2674)))

(declare-fun m!7537436 () Bool)

(assert (=> bs!1809032 m!7537436))

(declare-fun m!7537438 () Bool)

(assert (=> bs!1809032 m!7537438))

(assert (=> d!2132940 d!2133412))

(declare-fun b!6789647 () Bool)

(declare-fun res!2774963 () Bool)

(declare-fun e!4098190 () Bool)

(assert (=> b!6789647 (=> res!2774963 e!4098190)))

(assert (=> b!6789647 (= res!2774963 (not ((_ is Concat!25454) (reg!16938 r!7292))))))

(declare-fun e!4098188 () Bool)

(assert (=> b!6789647 (= e!4098188 e!4098190)))

(declare-fun b!6789648 () Bool)

(declare-fun e!4098192 () Bool)

(assert (=> b!6789648 (= e!4098190 e!4098192)))

(declare-fun res!2774959 () Bool)

(assert (=> b!6789648 (=> (not res!2774959) (not e!4098192))))

(declare-fun call!616463 () Bool)

(assert (=> b!6789648 (= res!2774959 call!616463)))

(declare-fun b!6789649 () Bool)

(declare-fun e!4098187 () Bool)

(declare-fun call!616462 () Bool)

(assert (=> b!6789649 (= e!4098187 call!616462)))

(declare-fun b!6789650 () Bool)

(declare-fun call!616461 () Bool)

(assert (=> b!6789650 (= e!4098192 call!616461)))

(declare-fun d!2133414 () Bool)

(declare-fun res!2774962 () Bool)

(declare-fun e!4098189 () Bool)

(assert (=> d!2133414 (=> res!2774962 e!4098189)))

(assert (=> d!2133414 (= res!2774962 ((_ is ElementMatch!16609) (reg!16938 r!7292)))))

(assert (=> d!2133414 (= (validRegex!8345 (reg!16938 r!7292)) e!4098189)))

(declare-fun bm!616456 () Bool)

(declare-fun c!1261867 () Bool)

(declare-fun c!1261868 () Bool)

(assert (=> bm!616456 (= call!616462 (validRegex!8345 (ite c!1261867 (reg!16938 (reg!16938 r!7292)) (ite c!1261868 (regOne!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292))))))))

(declare-fun bm!616457 () Bool)

(assert (=> bm!616457 (= call!616461 (validRegex!8345 (ite c!1261868 (regTwo!33731 (reg!16938 r!7292)) (regTwo!33730 (reg!16938 r!7292)))))))

(declare-fun b!6789651 () Bool)

(declare-fun e!4098191 () Bool)

(assert (=> b!6789651 (= e!4098191 call!616461)))

(declare-fun b!6789652 () Bool)

(declare-fun res!2774960 () Bool)

(assert (=> b!6789652 (=> (not res!2774960) (not e!4098191))))

(assert (=> b!6789652 (= res!2774960 call!616463)))

(assert (=> b!6789652 (= e!4098188 e!4098191)))

(declare-fun bm!616458 () Bool)

(assert (=> bm!616458 (= call!616463 call!616462)))

(declare-fun b!6789653 () Bool)

(declare-fun e!4098193 () Bool)

(assert (=> b!6789653 (= e!4098193 e!4098188)))

(assert (=> b!6789653 (= c!1261868 ((_ is Union!16609) (reg!16938 r!7292)))))

(declare-fun b!6789654 () Bool)

(assert (=> b!6789654 (= e!4098189 e!4098193)))

(assert (=> b!6789654 (= c!1261867 ((_ is Star!16609) (reg!16938 r!7292)))))

(declare-fun b!6789655 () Bool)

(assert (=> b!6789655 (= e!4098193 e!4098187)))

(declare-fun res!2774961 () Bool)

(assert (=> b!6789655 (= res!2774961 (not (nullable!6588 (reg!16938 (reg!16938 r!7292)))))))

(assert (=> b!6789655 (=> (not res!2774961) (not e!4098187))))

(assert (= (and d!2133414 (not res!2774962)) b!6789654))

(assert (= (and b!6789654 c!1261867) b!6789655))

(assert (= (and b!6789654 (not c!1261867)) b!6789653))

(assert (= (and b!6789655 res!2774961) b!6789649))

(assert (= (and b!6789653 c!1261868) b!6789652))

(assert (= (and b!6789653 (not c!1261868)) b!6789647))

(assert (= (and b!6789652 res!2774960) b!6789651))

(assert (= (and b!6789647 (not res!2774963)) b!6789648))

(assert (= (and b!6789648 res!2774959) b!6789650))

(assert (= (or b!6789651 b!6789650) bm!616457))

(assert (= (or b!6789652 b!6789648) bm!616458))

(assert (= (or b!6789649 bm!616458) bm!616456))

(declare-fun m!7537440 () Bool)

(assert (=> bm!616456 m!7537440))

(declare-fun m!7537442 () Bool)

(assert (=> bm!616457 m!7537442))

(declare-fun m!7537444 () Bool)

(assert (=> b!6789655 m!7537444))

(assert (=> d!2132940 d!2133414))

(declare-fun d!2133416 () Bool)

(assert (=> d!2133416 (= (flatMap!2090 lt!2445908 lambda!382355) (choose!50556 lt!2445908 lambda!382355))))

(declare-fun bs!1809033 () Bool)

(assert (= bs!1809033 d!2133416))

(declare-fun m!7537446 () Bool)

(assert (=> bs!1809033 m!7537446))

(assert (=> d!2132910 d!2133416))

(declare-fun d!2133418 () Bool)

(assert (=> d!2133418 true))

(declare-fun setRes!46473 () Bool)

(assert (=> d!2133418 setRes!46473))

(declare-fun condSetEmpty!46473 () Bool)

(declare-fun res!2774964 () (InoxSet Context!11986))

(assert (=> d!2133418 (= condSetEmpty!46473 (= res!2774964 ((as const (Array Context!11986 Bool)) false)))))

(assert (=> d!2133418 (= (choose!50556 z!1189 lambda!382297) res!2774964)))

(declare-fun setIsEmpty!46473 () Bool)

(assert (=> setIsEmpty!46473 setRes!46473))

(declare-fun e!4098194 () Bool)

(declare-fun setNonEmpty!46473 () Bool)

(declare-fun setElem!46473 () Context!11986)

(declare-fun tp!1859633 () Bool)

(assert (=> setNonEmpty!46473 (= setRes!46473 (and tp!1859633 (inv!84769 setElem!46473) e!4098194))))

(declare-fun setRest!46473 () (InoxSet Context!11986))

(assert (=> setNonEmpty!46473 (= res!2774964 ((_ map or) (store ((as const (Array Context!11986 Bool)) false) setElem!46473 true) setRest!46473))))

(declare-fun b!6789656 () Bool)

(declare-fun tp!1859632 () Bool)

(assert (=> b!6789656 (= e!4098194 tp!1859632)))

(assert (= (and d!2133418 condSetEmpty!46473) setIsEmpty!46473))

(assert (= (and d!2133418 (not condSetEmpty!46473)) setNonEmpty!46473))

(assert (= setNonEmpty!46473 b!6789656))

(declare-fun m!7537448 () Bool)

(assert (=> setNonEmpty!46473 m!7537448))

(assert (=> d!2132980 d!2133418))

(assert (=> d!2132912 d!2132914))

(declare-fun d!2133420 () Bool)

(assert (=> d!2133420 (= (flatMap!2090 lt!2445913 lambda!382297) (dynLambda!26342 lambda!382297 lt!2445922))))

(assert (=> d!2133420 true))

(declare-fun _$13!4227 () Unit!159909)

(assert (=> d!2133420 (= (choose!50557 lt!2445913 lt!2445922 lambda!382297) _$13!4227)))

(declare-fun b_lambda!255737 () Bool)

(assert (=> (not b_lambda!255737) (not d!2133420)))

(declare-fun bs!1809034 () Bool)

(assert (= bs!1809034 d!2133420))

(assert (=> bs!1809034 m!7535858))

(assert (=> bs!1809034 m!7536302))

(assert (=> d!2132912 d!2133420))

(assert (=> bs!1808584 d!2132810))

(declare-fun d!2133422 () Bool)

(assert (=> d!2133422 (= (isEmpty!38372 (tail!12714 (unfocusZipperList!2030 zl!343))) ((_ is Nil!66002) (tail!12714 (unfocusZipperList!2030 zl!343))))))

(assert (=> b!6787940 d!2133422))

(declare-fun d!2133424 () Bool)

(assert (=> d!2133424 (= (tail!12714 (unfocusZipperList!2030 zl!343)) (t!379847 (unfocusZipperList!2030 zl!343)))))

(assert (=> b!6787940 d!2133424))

(declare-fun bs!1809035 () Bool)

(declare-fun d!2133426 () Bool)

(assert (= bs!1809035 (and d!2133426 d!2133356)))

(declare-fun lambda!382444 () Int)

(assert (=> bs!1809035 (= lambda!382444 lambda!382435)))

(declare-fun bs!1809036 () Bool)

(assert (= bs!1809036 (and d!2133426 d!2133386)))

(assert (=> bs!1809036 (= lambda!382444 lambda!382437)))

(declare-fun bs!1809037 () Bool)

(assert (= bs!1809037 (and d!2133426 d!2132992)))

(assert (=> bs!1809037 (= lambda!382444 lambda!382381)))

(declare-fun bs!1809038 () Bool)

(assert (= bs!1809038 (and d!2133426 d!2132890)))

(assert (=> bs!1809038 (= lambda!382444 lambda!382348)))

(declare-fun bs!1809039 () Bool)

(assert (= bs!1809039 (and d!2133426 d!2132790)))

(assert (=> bs!1809039 (= lambda!382444 lambda!382300)))

(declare-fun bs!1809040 () Bool)

(assert (= bs!1809040 (and d!2133426 d!2133256)))

(assert (=> bs!1809040 (= lambda!382444 lambda!382426)))

(declare-fun bs!1809041 () Bool)

(assert (= bs!1809041 (and d!2133426 d!2133200)))

(assert (=> bs!1809041 (= lambda!382444 lambda!382419)))

(declare-fun bs!1809042 () Bool)

(assert (= bs!1809042 (and d!2133426 d!2132988)))

(assert (=> bs!1809042 (= lambda!382444 lambda!382380)))

(declare-fun bs!1809043 () Bool)

(assert (= bs!1809043 (and d!2133426 d!2133354)))

(assert (=> bs!1809043 (= lambda!382444 lambda!382434)))

(declare-fun bs!1809044 () Bool)

(assert (= bs!1809044 (and d!2133426 d!2132792)))

(assert (=> bs!1809044 (= lambda!382444 lambda!382303)))

(declare-fun bs!1809045 () Bool)

(assert (= bs!1809045 (and d!2133426 d!2132796)))

(assert (=> bs!1809045 (= lambda!382444 lambda!382306)))

(declare-fun bs!1809046 () Bool)

(assert (= bs!1809046 (and d!2133426 d!2133384)))

(assert (=> bs!1809046 (= lambda!382444 lambda!382436)))

(declare-fun b!6789657 () Bool)

(declare-fun e!4098198 () Regex!16609)

(assert (=> b!6789657 (= e!4098198 (h!72450 (t!379847 (exprs!6493 (h!72452 zl!343)))))))

(declare-fun b!6789658 () Bool)

(declare-fun e!4098196 () Bool)

(declare-fun e!4098200 () Bool)

(assert (=> b!6789658 (= e!4098196 e!4098200)))

(declare-fun c!1261872 () Bool)

(assert (=> b!6789658 (= c!1261872 (isEmpty!38372 (tail!12714 (t!379847 (exprs!6493 (h!72452 zl!343))))))))

(declare-fun b!6789659 () Bool)

(declare-fun lt!2446072 () Regex!16609)

(assert (=> b!6789659 (= e!4098196 (isEmptyExpr!1967 lt!2446072))))

(declare-fun b!6789660 () Bool)

(declare-fun e!4098195 () Bool)

(assert (=> b!6789660 (= e!4098195 (isEmpty!38372 (t!379847 (t!379847 (exprs!6493 (h!72452 zl!343))))))))

(declare-fun b!6789661 () Bool)

(declare-fun e!4098197 () Regex!16609)

(assert (=> b!6789661 (= e!4098197 EmptyExpr!16609)))

(declare-fun b!6789662 () Bool)

(assert (=> b!6789662 (= e!4098200 (isConcat!1490 lt!2446072))))

(declare-fun e!4098199 () Bool)

(assert (=> d!2133426 e!4098199))

(declare-fun res!2774966 () Bool)

(assert (=> d!2133426 (=> (not res!2774966) (not e!4098199))))

(assert (=> d!2133426 (= res!2774966 (validRegex!8345 lt!2446072))))

(assert (=> d!2133426 (= lt!2446072 e!4098198)))

(declare-fun c!1261869 () Bool)

(assert (=> d!2133426 (= c!1261869 e!4098195)))

(declare-fun res!2774965 () Bool)

(assert (=> d!2133426 (=> (not res!2774965) (not e!4098195))))

(assert (=> d!2133426 (= res!2774965 ((_ is Cons!66002) (t!379847 (exprs!6493 (h!72452 zl!343)))))))

(assert (=> d!2133426 (forall!15801 (t!379847 (exprs!6493 (h!72452 zl!343))) lambda!382444)))

(assert (=> d!2133426 (= (generalisedConcat!2206 (t!379847 (exprs!6493 (h!72452 zl!343)))) lt!2446072)))

(declare-fun b!6789663 () Bool)

(assert (=> b!6789663 (= e!4098200 (= lt!2446072 (head!13629 (t!379847 (exprs!6493 (h!72452 zl!343))))))))

(declare-fun b!6789664 () Bool)

(assert (=> b!6789664 (= e!4098197 (Concat!25454 (h!72450 (t!379847 (exprs!6493 (h!72452 zl!343)))) (generalisedConcat!2206 (t!379847 (t!379847 (exprs!6493 (h!72452 zl!343)))))))))

(declare-fun b!6789665 () Bool)

(assert (=> b!6789665 (= e!4098199 e!4098196)))

(declare-fun c!1261871 () Bool)

(assert (=> b!6789665 (= c!1261871 (isEmpty!38372 (t!379847 (exprs!6493 (h!72452 zl!343)))))))

(declare-fun b!6789666 () Bool)

(assert (=> b!6789666 (= e!4098198 e!4098197)))

(declare-fun c!1261870 () Bool)

(assert (=> b!6789666 (= c!1261870 ((_ is Cons!66002) (t!379847 (exprs!6493 (h!72452 zl!343)))))))

(assert (= (and d!2133426 res!2774965) b!6789660))

(assert (= (and d!2133426 c!1261869) b!6789657))

(assert (= (and d!2133426 (not c!1261869)) b!6789666))

(assert (= (and b!6789666 c!1261870) b!6789664))

(assert (= (and b!6789666 (not c!1261870)) b!6789661))

(assert (= (and d!2133426 res!2774966) b!6789665))

(assert (= (and b!6789665 c!1261871) b!6789659))

(assert (= (and b!6789665 (not c!1261871)) b!6789658))

(assert (= (and b!6789658 c!1261872) b!6789663))

(assert (= (and b!6789658 (not c!1261872)) b!6789662))

(declare-fun m!7537450 () Bool)

(assert (=> b!6789660 m!7537450))

(declare-fun m!7537452 () Bool)

(assert (=> d!2133426 m!7537452))

(declare-fun m!7537454 () Bool)

(assert (=> d!2133426 m!7537454))

(assert (=> b!6789665 m!7536270))

(declare-fun m!7537456 () Bool)

(assert (=> b!6789659 m!7537456))

(declare-fun m!7537458 () Bool)

(assert (=> b!6789662 m!7537458))

(declare-fun m!7537460 () Bool)

(assert (=> b!6789663 m!7537460))

(declare-fun m!7537462 () Bool)

(assert (=> b!6789658 m!7537462))

(assert (=> b!6789658 m!7537462))

(declare-fun m!7537464 () Bool)

(assert (=> b!6789658 m!7537464))

(declare-fun m!7537466 () Bool)

(assert (=> b!6789664 m!7537466))

(assert (=> b!6788417 d!2133426))

(assert (=> d!2132972 d!2132946))

(declare-fun bs!1809047 () Bool)

(declare-fun d!2133428 () Bool)

(assert (= bs!1809047 (and d!2133428 d!2133356)))

(declare-fun lambda!382445 () Int)

(assert (=> bs!1809047 (= lambda!382445 lambda!382435)))

(declare-fun bs!1809048 () Bool)

(assert (= bs!1809048 (and d!2133428 d!2133386)))

(assert (=> bs!1809048 (= lambda!382445 lambda!382437)))

(declare-fun bs!1809049 () Bool)

(assert (= bs!1809049 (and d!2133428 d!2132992)))

(assert (=> bs!1809049 (= lambda!382445 lambda!382381)))

(declare-fun bs!1809050 () Bool)

(assert (= bs!1809050 (and d!2133428 d!2132890)))

(assert (=> bs!1809050 (= lambda!382445 lambda!382348)))

(declare-fun bs!1809051 () Bool)

(assert (= bs!1809051 (and d!2133428 d!2132790)))

(assert (=> bs!1809051 (= lambda!382445 lambda!382300)))

(declare-fun bs!1809052 () Bool)

(assert (= bs!1809052 (and d!2133428 d!2133256)))

(assert (=> bs!1809052 (= lambda!382445 lambda!382426)))

(declare-fun bs!1809053 () Bool)

(assert (= bs!1809053 (and d!2133428 d!2133200)))

(assert (=> bs!1809053 (= lambda!382445 lambda!382419)))

(declare-fun bs!1809054 () Bool)

(assert (= bs!1809054 (and d!2133428 d!2132988)))

(assert (=> bs!1809054 (= lambda!382445 lambda!382380)))

(declare-fun bs!1809055 () Bool)

(assert (= bs!1809055 (and d!2133428 d!2133426)))

(assert (=> bs!1809055 (= lambda!382445 lambda!382444)))

(declare-fun bs!1809056 () Bool)

(assert (= bs!1809056 (and d!2133428 d!2133354)))

(assert (=> bs!1809056 (= lambda!382445 lambda!382434)))

(declare-fun bs!1809057 () Bool)

(assert (= bs!1809057 (and d!2133428 d!2132792)))

(assert (=> bs!1809057 (= lambda!382445 lambda!382303)))

(declare-fun bs!1809058 () Bool)

(assert (= bs!1809058 (and d!2133428 d!2132796)))

(assert (=> bs!1809058 (= lambda!382445 lambda!382306)))

(declare-fun bs!1809059 () Bool)

(assert (= bs!1809059 (and d!2133428 d!2133384)))

(assert (=> bs!1809059 (= lambda!382445 lambda!382436)))

(declare-fun b!6789667 () Bool)

(declare-fun e!4098202 () Regex!16609)

(assert (=> b!6789667 (= e!4098202 (Union!16609 (h!72450 (t!379847 (unfocusZipperList!2030 zl!343))) (generalisedUnion!2453 (t!379847 (t!379847 (unfocusZipperList!2030 zl!343))))))))

(declare-fun b!6789668 () Bool)

(declare-fun e!4098204 () Bool)

(declare-fun lt!2446073 () Regex!16609)

(assert (=> b!6789668 (= e!4098204 (= lt!2446073 (head!13629 (t!379847 (unfocusZipperList!2030 zl!343)))))))

(declare-fun b!6789669 () Bool)

(declare-fun e!4098201 () Bool)

(assert (=> b!6789669 (= e!4098201 (isEmptyLang!1974 lt!2446073))))

(declare-fun b!6789670 () Bool)

(assert (=> b!6789670 (= e!4098202 EmptyLang!16609)))

(declare-fun b!6789671 () Bool)

(assert (=> b!6789671 (= e!4098201 e!4098204)))

(declare-fun c!1261874 () Bool)

(assert (=> b!6789671 (= c!1261874 (isEmpty!38372 (tail!12714 (t!379847 (unfocusZipperList!2030 zl!343)))))))

(declare-fun b!6789672 () Bool)

(declare-fun e!4098205 () Bool)

(assert (=> b!6789672 (= e!4098205 (isEmpty!38372 (t!379847 (t!379847 (unfocusZipperList!2030 zl!343)))))))

(declare-fun b!6789673 () Bool)

(declare-fun e!4098206 () Regex!16609)

(assert (=> b!6789673 (= e!4098206 (h!72450 (t!379847 (unfocusZipperList!2030 zl!343))))))

(declare-fun e!4098203 () Bool)

(assert (=> d!2133428 e!4098203))

(declare-fun res!2774968 () Bool)

(assert (=> d!2133428 (=> (not res!2774968) (not e!4098203))))

(assert (=> d!2133428 (= res!2774968 (validRegex!8345 lt!2446073))))

(assert (=> d!2133428 (= lt!2446073 e!4098206)))

(declare-fun c!1261875 () Bool)

(assert (=> d!2133428 (= c!1261875 e!4098205)))

(declare-fun res!2774967 () Bool)

(assert (=> d!2133428 (=> (not res!2774967) (not e!4098205))))

(assert (=> d!2133428 (= res!2774967 ((_ is Cons!66002) (t!379847 (unfocusZipperList!2030 zl!343))))))

(assert (=> d!2133428 (forall!15801 (t!379847 (unfocusZipperList!2030 zl!343)) lambda!382445)))

(assert (=> d!2133428 (= (generalisedUnion!2453 (t!379847 (unfocusZipperList!2030 zl!343))) lt!2446073)))

(declare-fun b!6789674 () Bool)

(assert (=> b!6789674 (= e!4098203 e!4098201)))

(declare-fun c!1261873 () Bool)

(assert (=> b!6789674 (= c!1261873 (isEmpty!38372 (t!379847 (unfocusZipperList!2030 zl!343))))))

(declare-fun b!6789675 () Bool)

(assert (=> b!6789675 (= e!4098204 (isUnion!1404 lt!2446073))))

(declare-fun b!6789676 () Bool)

(assert (=> b!6789676 (= e!4098206 e!4098202)))

(declare-fun c!1261876 () Bool)

(assert (=> b!6789676 (= c!1261876 ((_ is Cons!66002) (t!379847 (unfocusZipperList!2030 zl!343))))))

(assert (= (and d!2133428 res!2774967) b!6789672))

(assert (= (and d!2133428 c!1261875) b!6789673))

(assert (= (and d!2133428 (not c!1261875)) b!6789676))

(assert (= (and b!6789676 c!1261876) b!6789667))

(assert (= (and b!6789676 (not c!1261876)) b!6789670))

(assert (= (and d!2133428 res!2774968) b!6789674))

(assert (= (and b!6789674 c!1261873) b!6789669))

(assert (= (and b!6789674 (not c!1261873)) b!6789671))

(assert (= (and b!6789671 c!1261874) b!6789668))

(assert (= (and b!6789671 (not c!1261874)) b!6789675))

(declare-fun m!7537468 () Bool)

(assert (=> b!6789671 m!7537468))

(assert (=> b!6789671 m!7537468))

(declare-fun m!7537470 () Bool)

(assert (=> b!6789671 m!7537470))

(declare-fun m!7537472 () Bool)

(assert (=> d!2133428 m!7537472))

(declare-fun m!7537474 () Bool)

(assert (=> d!2133428 m!7537474))

(declare-fun m!7537476 () Bool)

(assert (=> b!6789668 m!7537476))

(declare-fun m!7537478 () Bool)

(assert (=> b!6789672 m!7537478))

(declare-fun m!7537480 () Bool)

(assert (=> b!6789667 m!7537480))

(assert (=> b!6789674 m!7535966))

(declare-fun m!7537482 () Bool)

(assert (=> b!6789669 m!7537482))

(declare-fun m!7537484 () Bool)

(assert (=> b!6789675 m!7537484))

(assert (=> b!6787936 d!2133428))

(declare-fun d!2133430 () Bool)

(declare-fun c!1261877 () Bool)

(assert (=> d!2133430 (= c!1261877 (isEmpty!38370 (tail!12715 s!2326)))))

(declare-fun e!4098207 () Bool)

(assert (=> d!2133430 (= (matchZipper!2595 (derivationStepZipper!2553 lt!2445905 (head!13630 s!2326)) (tail!12715 s!2326)) e!4098207)))

(declare-fun b!6789677 () Bool)

(assert (=> b!6789677 (= e!4098207 (nullableZipper!2316 (derivationStepZipper!2553 lt!2445905 (head!13630 s!2326))))))

(declare-fun b!6789678 () Bool)

(assert (=> b!6789678 (= e!4098207 (matchZipper!2595 (derivationStepZipper!2553 (derivationStepZipper!2553 lt!2445905 (head!13630 s!2326)) (head!13630 (tail!12715 s!2326))) (tail!12715 (tail!12715 s!2326))))))

(assert (= (and d!2133430 c!1261877) b!6789677))

(assert (= (and d!2133430 (not c!1261877)) b!6789678))

(assert (=> d!2133430 m!7536172))

(assert (=> d!2133430 m!7536176))

(assert (=> b!6789677 m!7536442))

(declare-fun m!7537486 () Bool)

(assert (=> b!6789677 m!7537486))

(assert (=> b!6789678 m!7536172))

(assert (=> b!6789678 m!7537230))

(assert (=> b!6789678 m!7536442))

(assert (=> b!6789678 m!7537230))

(declare-fun m!7537488 () Bool)

(assert (=> b!6789678 m!7537488))

(assert (=> b!6789678 m!7536172))

(assert (=> b!6789678 m!7537234))

(assert (=> b!6789678 m!7537488))

(assert (=> b!6789678 m!7537234))

(declare-fun m!7537490 () Bool)

(assert (=> b!6789678 m!7537490))

(assert (=> b!6788624 d!2133430))

(declare-fun bs!1809060 () Bool)

(declare-fun d!2133432 () Bool)

(assert (= bs!1809060 (and d!2133432 b!6787899)))

(declare-fun lambda!382446 () Int)

(assert (=> bs!1809060 (= (= (head!13630 s!2326) (h!72451 s!2326)) (= lambda!382446 lambda!382297))))

(declare-fun bs!1809061 () Bool)

(assert (= bs!1809061 (and d!2133432 d!2132910)))

(assert (=> bs!1809061 (= (= (head!13630 s!2326) (h!72451 s!2326)) (= lambda!382446 lambda!382355))))

(declare-fun bs!1809062 () Bool)

(assert (= bs!1809062 (and d!2133432 d!2132934)))

(assert (=> bs!1809062 (= (= (head!13630 s!2326) (h!72451 s!2326)) (= lambda!382446 lambda!382358))))

(declare-fun bs!1809063 () Bool)

(assert (= bs!1809063 (and d!2133432 d!2132976)))

(assert (=> bs!1809063 (= (= (head!13630 s!2326) (h!72451 s!2326)) (= lambda!382446 lambda!382379))))

(assert (=> d!2133432 true))

(assert (=> d!2133432 (= (derivationStepZipper!2553 lt!2445905 (head!13630 s!2326)) (flatMap!2090 lt!2445905 lambda!382446))))

(declare-fun bs!1809064 () Bool)

(assert (= bs!1809064 d!2133432))

(declare-fun m!7537492 () Bool)

(assert (=> bs!1809064 m!7537492))

(assert (=> b!6788624 d!2133432))

(assert (=> b!6788624 d!2133230))

(assert (=> b!6788624 d!2133294))

(assert (=> b!6788620 d!2133230))

(assert (=> d!2132962 d!2132936))

(declare-fun bs!1809065 () Bool)

(declare-fun d!2133434 () Bool)

(assert (= bs!1809065 (and d!2133434 d!2133412)))

(declare-fun lambda!382449 () Int)

(assert (=> bs!1809065 (= lambda!382449 lambda!382442)))

(declare-fun bs!1809066 () Bool)

(assert (= bs!1809066 (and d!2133434 d!2132942)))

(assert (=> bs!1809066 (= (= r!7292 (Star!16609 (reg!16938 r!7292))) (= lambda!382449 lambda!382372))))

(declare-fun bs!1809067 () Bool)

(assert (= bs!1809067 (and d!2133434 b!6788602)))

(assert (=> bs!1809067 (not (= lambda!382449 lambda!382377))))

(declare-fun bs!1809068 () Bool)

(assert (= bs!1809068 (and d!2133434 b!6789226)))

(assert (=> bs!1809068 (not (= lambda!382449 lambda!382424))))

(assert (=> bs!1809065 (not (= lambda!382449 lambda!382443))))

(declare-fun bs!1809069 () Bool)

(assert (= bs!1809069 (and d!2133434 b!6789277)))

(assert (=> bs!1809069 (not (= lambda!382449 lambda!382430))))

(declare-fun bs!1809070 () Bool)

(assert (= bs!1809070 (and d!2133434 b!6787882)))

(assert (=> bs!1809070 (not (= lambda!382449 lambda!382296))))

(declare-fun bs!1809071 () Bool)

(assert (= bs!1809071 (and d!2133434 b!6788208)))

(assert (=> bs!1809071 (not (= lambda!382449 lambda!382329))))

(assert (=> bs!1809070 (= lambda!382449 lambda!382294)))

(declare-fun bs!1809072 () Bool)

(assert (= bs!1809072 (and d!2133434 b!6788209)))

(assert (=> bs!1809072 (not (= lambda!382449 lambda!382330))))

(declare-fun bs!1809073 () Bool)

(assert (= bs!1809073 (and d!2133434 b!6789225)))

(assert (=> bs!1809073 (not (= lambda!382449 lambda!382423))))

(declare-fun bs!1809074 () Bool)

(assert (= bs!1809074 (and d!2133434 d!2132940)))

(assert (=> bs!1809074 (not (= lambda!382449 lambda!382364))))

(declare-fun bs!1809075 () Bool)

(assert (= bs!1809075 (and d!2133434 d!2132962)))

(assert (=> bs!1809075 (= lambda!382449 lambda!382376)))

(declare-fun bs!1809076 () Bool)

(assert (= bs!1809076 (and d!2133434 b!6789276)))

(assert (=> bs!1809076 (not (= lambda!382449 lambda!382428))))

(assert (=> bs!1809070 (not (= lambda!382449 lambda!382295))))

(assert (=> bs!1809074 (= lambda!382449 lambda!382363)))

(assert (=> bs!1809066 (not (= lambda!382449 lambda!382373))))

(declare-fun bs!1809077 () Bool)

(assert (= bs!1809077 (and d!2133434 b!6788603)))

(assert (=> bs!1809077 (not (= lambda!382449 lambda!382378))))

(assert (=> d!2133434 true))

(assert (=> d!2133434 true))

(assert (=> d!2133434 true))

(assert (=> d!2133434 (= (isDefined!13199 (findConcatSeparation!2910 (reg!16938 r!7292) r!7292 Nil!66003 s!2326 s!2326)) (Exists!3677 lambda!382449))))

(assert (=> d!2133434 true))

(declare-fun _$89!3052 () Unit!159909)

(assert (=> d!2133434 (= (choose!50562 (reg!16938 r!7292) r!7292 s!2326) _$89!3052)))

(declare-fun bs!1809078 () Bool)

(assert (= bs!1809078 d!2133434))

(assert (=> bs!1809078 m!7535924))

(assert (=> bs!1809078 m!7535924))

(assert (=> bs!1809078 m!7535926))

(declare-fun m!7537494 () Bool)

(assert (=> bs!1809078 m!7537494))

(assert (=> d!2132962 d!2133434))

(declare-fun d!2133436 () Bool)

(assert (=> d!2133436 (= (Exists!3677 lambda!382376) (choose!50559 lambda!382376))))

(declare-fun bs!1809079 () Bool)

(assert (= bs!1809079 d!2133436))

(declare-fun m!7537496 () Bool)

(assert (=> bs!1809079 m!7537496))

(assert (=> d!2132962 d!2133436))

(assert (=> d!2132962 d!2132950))

(assert (=> d!2132962 d!2133414))

(declare-fun b!6789683 () Bool)

(declare-fun e!4098210 () (InoxSet Context!11986))

(assert (=> b!6789683 (= e!4098210 ((as const (Array Context!11986 Bool)) false))))

(declare-fun bm!616459 () Bool)

(declare-fun call!616464 () (InoxSet Context!11986))

(assert (=> bm!616459 (= call!616464 (derivationStepZipperDown!1837 (h!72450 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 (h!72452 zl!343)))))) (Context!11987 (t!379847 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 (h!72452 zl!343))))))) (h!72451 s!2326)))))

(declare-fun b!6789684 () Bool)

(declare-fun e!4098211 () Bool)

(assert (=> b!6789684 (= e!4098211 (nullable!6588 (h!72450 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 (h!72452 zl!343))))))))))

(declare-fun e!4098212 () (InoxSet Context!11986))

(declare-fun b!6789685 () Bool)

(assert (=> b!6789685 (= e!4098212 ((_ map or) call!616464 (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 (h!72452 zl!343))))))) (h!72451 s!2326))))))

(declare-fun d!2133438 () Bool)

(declare-fun c!1261879 () Bool)

(assert (=> d!2133438 (= c!1261879 e!4098211)))

(declare-fun res!2774973 () Bool)

(assert (=> d!2133438 (=> (not res!2774973) (not e!4098211))))

(assert (=> d!2133438 (= res!2774973 ((_ is Cons!66002) (exprs!6493 (Context!11987 (t!379847 (exprs!6493 (h!72452 zl!343)))))))))

(assert (=> d!2133438 (= (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 (h!72452 zl!343)))) (h!72451 s!2326)) e!4098212)))

(declare-fun b!6789686 () Bool)

(assert (=> b!6789686 (= e!4098210 call!616464)))

(declare-fun b!6789687 () Bool)

(assert (=> b!6789687 (= e!4098212 e!4098210)))

(declare-fun c!1261878 () Bool)

(assert (=> b!6789687 (= c!1261878 ((_ is Cons!66002) (exprs!6493 (Context!11987 (t!379847 (exprs!6493 (h!72452 zl!343)))))))))

(assert (= (and d!2133438 res!2774973) b!6789684))

(assert (= (and d!2133438 c!1261879) b!6789685))

(assert (= (and d!2133438 (not c!1261879)) b!6789687))

(assert (= (and b!6789687 c!1261878) b!6789686))

(assert (= (and b!6789687 (not c!1261878)) b!6789683))

(assert (= (or b!6789685 b!6789686) bm!616459))

(declare-fun m!7537498 () Bool)

(assert (=> bm!616459 m!7537498))

(declare-fun m!7537500 () Bool)

(assert (=> b!6789684 m!7537500))

(declare-fun m!7537502 () Bool)

(assert (=> b!6789685 m!7537502))

(assert (=> b!6788629 d!2133438))

(declare-fun d!2133440 () Bool)

(assert (=> d!2133440 (= (nullable!6588 (regOne!33730 r!7292)) (nullableFct!2494 (regOne!33730 r!7292)))))

(declare-fun bs!1809080 () Bool)

(assert (= bs!1809080 d!2133440))

(declare-fun m!7537504 () Bool)

(assert (=> bs!1809080 m!7537504))

(assert (=> b!6788447 d!2133440))

(declare-fun d!2133442 () Bool)

(assert (=> d!2133442 (= (isEmpty!38372 (t!379847 (exprs!6493 (h!72452 zl!343)))) ((_ is Nil!66002) (t!379847 (exprs!6493 (h!72452 zl!343)))))))

(assert (=> b!6788413 d!2133442))

(assert (=> bm!616258 d!2132946))

(assert (=> b!6788331 d!2133292))

(assert (=> b!6788331 d!2133294))

(declare-fun d!2133444 () Bool)

(declare-fun e!4098213 () Bool)

(assert (=> d!2133444 e!4098213))

(declare-fun res!2774975 () Bool)

(assert (=> d!2133444 (=> (not res!2774975) (not e!4098213))))

(declare-fun lt!2446074 () List!66127)

(assert (=> d!2133444 (= res!2774975 (= (content!12866 lt!2446074) ((_ map or) (content!12866 (_1!36887 (get!22982 lt!2446010))) (content!12866 (_2!36887 (get!22982 lt!2446010))))))))

(declare-fun e!4098214 () List!66127)

(assert (=> d!2133444 (= lt!2446074 e!4098214)))

(declare-fun c!1261880 () Bool)

(assert (=> d!2133444 (= c!1261880 ((_ is Nil!66003) (_1!36887 (get!22982 lt!2446010))))))

(assert (=> d!2133444 (= (++!14764 (_1!36887 (get!22982 lt!2446010)) (_2!36887 (get!22982 lt!2446010))) lt!2446074)))

(declare-fun b!6789690 () Bool)

(declare-fun res!2774974 () Bool)

(assert (=> b!6789690 (=> (not res!2774974) (not e!4098213))))

(assert (=> b!6789690 (= res!2774974 (= (size!40644 lt!2446074) (+ (size!40644 (_1!36887 (get!22982 lt!2446010))) (size!40644 (_2!36887 (get!22982 lt!2446010))))))))

(declare-fun b!6789691 () Bool)

(assert (=> b!6789691 (= e!4098213 (or (not (= (_2!36887 (get!22982 lt!2446010)) Nil!66003)) (= lt!2446074 (_1!36887 (get!22982 lt!2446010)))))))

(declare-fun b!6789689 () Bool)

(assert (=> b!6789689 (= e!4098214 (Cons!66003 (h!72451 (_1!36887 (get!22982 lt!2446010))) (++!14764 (t!379848 (_1!36887 (get!22982 lt!2446010))) (_2!36887 (get!22982 lt!2446010)))))))

(declare-fun b!6789688 () Bool)

(assert (=> b!6789688 (= e!4098214 (_2!36887 (get!22982 lt!2446010)))))

(assert (= (and d!2133444 c!1261880) b!6789688))

(assert (= (and d!2133444 (not c!1261880)) b!6789689))

(assert (= (and d!2133444 res!2774975) b!6789690))

(assert (= (and b!6789690 res!2774974) b!6789691))

(declare-fun m!7537506 () Bool)

(assert (=> d!2133444 m!7537506))

(declare-fun m!7537508 () Bool)

(assert (=> d!2133444 m!7537508))

(declare-fun m!7537510 () Bool)

(assert (=> d!2133444 m!7537510))

(declare-fun m!7537512 () Bool)

(assert (=> b!6789690 m!7537512))

(declare-fun m!7537514 () Bool)

(assert (=> b!6789690 m!7537514))

(declare-fun m!7537516 () Bool)

(assert (=> b!6789690 m!7537516))

(declare-fun m!7537518 () Bool)

(assert (=> b!6789689 m!7537518))

(assert (=> b!6788585 d!2133444))

(assert (=> b!6788585 d!2133380))

(declare-fun b!6789692 () Bool)

(declare-fun e!4098217 () (InoxSet Context!11986))

(declare-fun call!616469 () (InoxSet Context!11986))

(assert (=> b!6789692 (= e!4098217 call!616469)))

(declare-fun c!1261883 () Bool)

(declare-fun bm!616460 () Bool)

(declare-fun call!616470 () (InoxSet Context!11986))

(declare-fun call!616465 () List!66126)

(declare-fun c!1261885 () Bool)

(declare-fun c!1261882 () Bool)

(assert (=> bm!616460 (= call!616470 (derivationStepZipperDown!1837 (ite c!1261882 (regOne!33731 (h!72450 (exprs!6493 lt!2445912))) (ite c!1261885 (regTwo!33730 (h!72450 (exprs!6493 lt!2445912))) (ite c!1261883 (regOne!33730 (h!72450 (exprs!6493 lt!2445912))) (reg!16938 (h!72450 (exprs!6493 lt!2445912)))))) (ite (or c!1261882 c!1261885) (Context!11987 (t!379847 (exprs!6493 lt!2445912))) (Context!11987 call!616465)) (h!72451 s!2326)))))

(declare-fun call!616466 () List!66126)

(declare-fun call!616468 () (InoxSet Context!11986))

(declare-fun bm!616461 () Bool)

(assert (=> bm!616461 (= call!616468 (derivationStepZipperDown!1837 (ite c!1261882 (regTwo!33731 (h!72450 (exprs!6493 lt!2445912))) (regOne!33730 (h!72450 (exprs!6493 lt!2445912)))) (ite c!1261882 (Context!11987 (t!379847 (exprs!6493 lt!2445912))) (Context!11987 call!616466)) (h!72451 s!2326)))))

(declare-fun b!6789693 () Bool)

(declare-fun e!4098216 () (InoxSet Context!11986))

(declare-fun e!4098215 () (InoxSet Context!11986))

(assert (=> b!6789693 (= e!4098216 e!4098215)))

(assert (=> b!6789693 (= c!1261882 ((_ is Union!16609) (h!72450 (exprs!6493 lt!2445912))))))

(declare-fun b!6789694 () Bool)

(declare-fun e!4098219 () (InoxSet Context!11986))

(assert (=> b!6789694 (= e!4098219 call!616469)))

(declare-fun b!6789695 () Bool)

(declare-fun e!4098220 () Bool)

(assert (=> b!6789695 (= c!1261885 e!4098220)))

(declare-fun res!2774976 () Bool)

(assert (=> b!6789695 (=> (not res!2774976) (not e!4098220))))

(assert (=> b!6789695 (= res!2774976 ((_ is Concat!25454) (h!72450 (exprs!6493 lt!2445912))))))

(declare-fun e!4098218 () (InoxSet Context!11986))

(assert (=> b!6789695 (= e!4098215 e!4098218)))

(declare-fun b!6789696 () Bool)

(assert (=> b!6789696 (= e!4098217 ((as const (Array Context!11986 Bool)) false))))

(declare-fun b!6789697 () Bool)

(assert (=> b!6789697 (= e!4098220 (nullable!6588 (regOne!33730 (h!72450 (exprs!6493 lt!2445912)))))))

(declare-fun b!6789698 () Bool)

(assert (=> b!6789698 (= e!4098218 e!4098219)))

(assert (=> b!6789698 (= c!1261883 ((_ is Concat!25454) (h!72450 (exprs!6493 lt!2445912))))))

(declare-fun bm!616462 () Bool)

(assert (=> bm!616462 (= call!616465 call!616466)))

(declare-fun d!2133446 () Bool)

(declare-fun c!1261884 () Bool)

(assert (=> d!2133446 (= c!1261884 (and ((_ is ElementMatch!16609) (h!72450 (exprs!6493 lt!2445912))) (= (c!1261391 (h!72450 (exprs!6493 lt!2445912))) (h!72451 s!2326))))))

(assert (=> d!2133446 (= (derivationStepZipperDown!1837 (h!72450 (exprs!6493 lt!2445912)) (Context!11987 (t!379847 (exprs!6493 lt!2445912))) (h!72451 s!2326)) e!4098216)))

(declare-fun bm!616463 () Bool)

(declare-fun call!616467 () (InoxSet Context!11986))

(assert (=> bm!616463 (= call!616467 call!616470)))

(declare-fun b!6789699 () Bool)

(assert (=> b!6789699 (= e!4098216 (store ((as const (Array Context!11986 Bool)) false) (Context!11987 (t!379847 (exprs!6493 lt!2445912))) true))))

(declare-fun b!6789700 () Bool)

(assert (=> b!6789700 (= e!4098215 ((_ map or) call!616470 call!616468))))

(declare-fun b!6789701 () Bool)

(assert (=> b!6789701 (= e!4098218 ((_ map or) call!616468 call!616467))))

(declare-fun bm!616464 () Bool)

(assert (=> bm!616464 (= call!616469 call!616467)))

(declare-fun b!6789702 () Bool)

(declare-fun c!1261881 () Bool)

(assert (=> b!6789702 (= c!1261881 ((_ is Star!16609) (h!72450 (exprs!6493 lt!2445912))))))

(assert (=> b!6789702 (= e!4098219 e!4098217)))

(declare-fun bm!616465 () Bool)

(assert (=> bm!616465 (= call!616466 ($colon$colon!2417 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445912)))) (ite (or c!1261885 c!1261883) (regTwo!33730 (h!72450 (exprs!6493 lt!2445912))) (h!72450 (exprs!6493 lt!2445912)))))))

(assert (= (and d!2133446 c!1261884) b!6789699))

(assert (= (and d!2133446 (not c!1261884)) b!6789693))

(assert (= (and b!6789693 c!1261882) b!6789700))

(assert (= (and b!6789693 (not c!1261882)) b!6789695))

(assert (= (and b!6789695 res!2774976) b!6789697))

(assert (= (and b!6789695 c!1261885) b!6789701))

(assert (= (and b!6789695 (not c!1261885)) b!6789698))

(assert (= (and b!6789698 c!1261883) b!6789694))

(assert (= (and b!6789698 (not c!1261883)) b!6789702))

(assert (= (and b!6789702 c!1261881) b!6789692))

(assert (= (and b!6789702 (not c!1261881)) b!6789696))

(assert (= (or b!6789694 b!6789692) bm!616462))

(assert (= (or b!6789694 b!6789692) bm!616464))

(assert (= (or b!6789701 bm!616462) bm!616465))

(assert (= (or b!6789701 bm!616464) bm!616463))

(assert (= (or b!6789700 b!6789701) bm!616461))

(assert (= (or b!6789700 bm!616463) bm!616460))

(declare-fun m!7537520 () Bool)

(assert (=> b!6789699 m!7537520))

(declare-fun m!7537522 () Bool)

(assert (=> bm!616465 m!7537522))

(declare-fun m!7537524 () Bool)

(assert (=> b!6789697 m!7537524))

(declare-fun m!7537526 () Bool)

(assert (=> bm!616461 m!7537526))

(declare-fun m!7537528 () Bool)

(assert (=> bm!616460 m!7537528))

(assert (=> bm!616247 d!2133446))

(declare-fun b!6789703 () Bool)

(declare-fun e!4098223 () (InoxSet Context!11986))

(declare-fun call!616475 () (InoxSet Context!11986))

(assert (=> b!6789703 (= e!4098223 call!616475)))

(declare-fun c!1261888 () Bool)

(declare-fun bm!616466 () Bool)

(declare-fun call!616471 () List!66126)

(declare-fun call!616476 () (InoxSet Context!11986))

(declare-fun c!1261890 () Bool)

(declare-fun c!1261887 () Bool)

(assert (=> bm!616466 (= call!616476 (derivationStepZipperDown!1837 (ite c!1261887 (regOne!33731 (h!72450 (exprs!6493 lt!2445916))) (ite c!1261890 (regTwo!33730 (h!72450 (exprs!6493 lt!2445916))) (ite c!1261888 (regOne!33730 (h!72450 (exprs!6493 lt!2445916))) (reg!16938 (h!72450 (exprs!6493 lt!2445916)))))) (ite (or c!1261887 c!1261890) (Context!11987 (t!379847 (exprs!6493 lt!2445916))) (Context!11987 call!616471)) (h!72451 s!2326)))))

(declare-fun call!616474 () (InoxSet Context!11986))

(declare-fun bm!616467 () Bool)

(declare-fun call!616472 () List!66126)

(assert (=> bm!616467 (= call!616474 (derivationStepZipperDown!1837 (ite c!1261887 (regTwo!33731 (h!72450 (exprs!6493 lt!2445916))) (regOne!33730 (h!72450 (exprs!6493 lt!2445916)))) (ite c!1261887 (Context!11987 (t!379847 (exprs!6493 lt!2445916))) (Context!11987 call!616472)) (h!72451 s!2326)))))

(declare-fun b!6789704 () Bool)

(declare-fun e!4098222 () (InoxSet Context!11986))

(declare-fun e!4098221 () (InoxSet Context!11986))

(assert (=> b!6789704 (= e!4098222 e!4098221)))

(assert (=> b!6789704 (= c!1261887 ((_ is Union!16609) (h!72450 (exprs!6493 lt!2445916))))))

(declare-fun b!6789705 () Bool)

(declare-fun e!4098225 () (InoxSet Context!11986))

(assert (=> b!6789705 (= e!4098225 call!616475)))

(declare-fun b!6789706 () Bool)

(declare-fun e!4098226 () Bool)

(assert (=> b!6789706 (= c!1261890 e!4098226)))

(declare-fun res!2774977 () Bool)

(assert (=> b!6789706 (=> (not res!2774977) (not e!4098226))))

(assert (=> b!6789706 (= res!2774977 ((_ is Concat!25454) (h!72450 (exprs!6493 lt!2445916))))))

(declare-fun e!4098224 () (InoxSet Context!11986))

(assert (=> b!6789706 (= e!4098221 e!4098224)))

(declare-fun b!6789707 () Bool)

(assert (=> b!6789707 (= e!4098223 ((as const (Array Context!11986 Bool)) false))))

(declare-fun b!6789708 () Bool)

(assert (=> b!6789708 (= e!4098226 (nullable!6588 (regOne!33730 (h!72450 (exprs!6493 lt!2445916)))))))

(declare-fun b!6789709 () Bool)

(assert (=> b!6789709 (= e!4098224 e!4098225)))

(assert (=> b!6789709 (= c!1261888 ((_ is Concat!25454) (h!72450 (exprs!6493 lt!2445916))))))

(declare-fun bm!616468 () Bool)

(assert (=> bm!616468 (= call!616471 call!616472)))

(declare-fun d!2133448 () Bool)

(declare-fun c!1261889 () Bool)

(assert (=> d!2133448 (= c!1261889 (and ((_ is ElementMatch!16609) (h!72450 (exprs!6493 lt!2445916))) (= (c!1261391 (h!72450 (exprs!6493 lt!2445916))) (h!72451 s!2326))))))

(assert (=> d!2133448 (= (derivationStepZipperDown!1837 (h!72450 (exprs!6493 lt!2445916)) (Context!11987 (t!379847 (exprs!6493 lt!2445916))) (h!72451 s!2326)) e!4098222)))

(declare-fun bm!616469 () Bool)

(declare-fun call!616473 () (InoxSet Context!11986))

(assert (=> bm!616469 (= call!616473 call!616476)))

(declare-fun b!6789710 () Bool)

(assert (=> b!6789710 (= e!4098222 (store ((as const (Array Context!11986 Bool)) false) (Context!11987 (t!379847 (exprs!6493 lt!2445916))) true))))

(declare-fun b!6789711 () Bool)

(assert (=> b!6789711 (= e!4098221 ((_ map or) call!616476 call!616474))))

(declare-fun b!6789712 () Bool)

(assert (=> b!6789712 (= e!4098224 ((_ map or) call!616474 call!616473))))

(declare-fun bm!616470 () Bool)

(assert (=> bm!616470 (= call!616475 call!616473)))

(declare-fun b!6789713 () Bool)

(declare-fun c!1261886 () Bool)

(assert (=> b!6789713 (= c!1261886 ((_ is Star!16609) (h!72450 (exprs!6493 lt!2445916))))))

(assert (=> b!6789713 (= e!4098225 e!4098223)))

(declare-fun bm!616471 () Bool)

(assert (=> bm!616471 (= call!616472 ($colon$colon!2417 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445916)))) (ite (or c!1261890 c!1261888) (regTwo!33730 (h!72450 (exprs!6493 lt!2445916))) (h!72450 (exprs!6493 lt!2445916)))))))

(assert (= (and d!2133448 c!1261889) b!6789710))

(assert (= (and d!2133448 (not c!1261889)) b!6789704))

(assert (= (and b!6789704 c!1261887) b!6789711))

(assert (= (and b!6789704 (not c!1261887)) b!6789706))

(assert (= (and b!6789706 res!2774977) b!6789708))

(assert (= (and b!6789706 c!1261890) b!6789712))

(assert (= (and b!6789706 (not c!1261890)) b!6789709))

(assert (= (and b!6789709 c!1261888) b!6789705))

(assert (= (and b!6789709 (not c!1261888)) b!6789713))

(assert (= (and b!6789713 c!1261886) b!6789703))

(assert (= (and b!6789713 (not c!1261886)) b!6789707))

(assert (= (or b!6789705 b!6789703) bm!616468))

(assert (= (or b!6789705 b!6789703) bm!616470))

(assert (= (or b!6789712 bm!616468) bm!616471))

(assert (= (or b!6789712 bm!616470) bm!616469))

(assert (= (or b!6789711 b!6789712) bm!616467))

(assert (= (or b!6789711 bm!616469) bm!616466))

(declare-fun m!7537530 () Bool)

(assert (=> b!6789710 m!7537530))

(declare-fun m!7537532 () Bool)

(assert (=> bm!616471 m!7537532))

(declare-fun m!7537534 () Bool)

(assert (=> b!6789708 m!7537534))

(declare-fun m!7537536 () Bool)

(assert (=> bm!616467 m!7537536))

(declare-fun m!7537538 () Bool)

(assert (=> bm!616466 m!7537538))

(assert (=> bm!616194 d!2133448))

(declare-fun d!2133450 () Bool)

(assert (=> d!2133450 (= (isEmpty!38370 (t!379848 s!2326)) ((_ is Nil!66003) (t!379848 s!2326)))))

(assert (=> d!2132974 d!2133450))

(assert (=> d!2132908 d!2132916))

(declare-fun d!2133452 () Bool)

(assert (=> d!2133452 (= (flatMap!2090 lt!2445908 lambda!382297) (dynLambda!26342 lambda!382297 lt!2445912))))

(assert (=> d!2133452 true))

(declare-fun _$13!4228 () Unit!159909)

(assert (=> d!2133452 (= (choose!50557 lt!2445908 lt!2445912 lambda!382297) _$13!4228)))

(declare-fun b_lambda!255739 () Bool)

(assert (=> (not b_lambda!255739) (not d!2133452)))

(declare-fun bs!1809081 () Bool)

(assert (= bs!1809081 d!2133452))

(assert (=> bs!1809081 m!7535868))

(assert (=> bs!1809081 m!7536296))

(assert (=> d!2132908 d!2133452))

(declare-fun b!6789714 () Bool)

(declare-fun e!4098227 () Bool)

(declare-fun e!4098228 () Bool)

(assert (=> b!6789714 (= e!4098227 e!4098228)))

(declare-fun res!2774983 () Bool)

(assert (=> b!6789714 (=> res!2774983 e!4098228)))

(declare-fun call!616477 () Bool)

(assert (=> b!6789714 (= res!2774983 call!616477)))

(declare-fun b!6789715 () Bool)

(declare-fun e!4098233 () Bool)

(assert (=> b!6789715 (= e!4098233 e!4098227)))

(declare-fun res!2774985 () Bool)

(assert (=> b!6789715 (=> (not res!2774985) (not e!4098227))))

(declare-fun lt!2446075 () Bool)

(assert (=> b!6789715 (= res!2774985 (not lt!2446075))))

(declare-fun d!2133454 () Bool)

(declare-fun e!4098229 () Bool)

(assert (=> d!2133454 e!4098229))

(declare-fun c!1261892 () Bool)

(assert (=> d!2133454 (= c!1261892 ((_ is EmptyExpr!16609) (reg!16938 r!7292)))))

(declare-fun e!4098230 () Bool)

(assert (=> d!2133454 (= lt!2446075 e!4098230)))

(declare-fun c!1261893 () Bool)

(assert (=> d!2133454 (= c!1261893 (isEmpty!38370 (_1!36887 (get!22982 lt!2446010))))))

(assert (=> d!2133454 (validRegex!8345 (reg!16938 r!7292))))

(assert (=> d!2133454 (= (matchR!8792 (reg!16938 r!7292) (_1!36887 (get!22982 lt!2446010))) lt!2446075)))

(declare-fun b!6789716 () Bool)

(declare-fun res!2774984 () Bool)

(assert (=> b!6789716 (=> res!2774984 e!4098233)))

(assert (=> b!6789716 (= res!2774984 (not ((_ is ElementMatch!16609) (reg!16938 r!7292))))))

(declare-fun e!4098231 () Bool)

(assert (=> b!6789716 (= e!4098231 e!4098233)))

(declare-fun b!6789717 () Bool)

(assert (=> b!6789717 (= e!4098230 (matchR!8792 (derivativeStep!5273 (reg!16938 r!7292) (head!13630 (_1!36887 (get!22982 lt!2446010)))) (tail!12715 (_1!36887 (get!22982 lt!2446010)))))))

(declare-fun bm!616472 () Bool)

(assert (=> bm!616472 (= call!616477 (isEmpty!38370 (_1!36887 (get!22982 lt!2446010))))))

(declare-fun b!6789718 () Bool)

(declare-fun e!4098232 () Bool)

(assert (=> b!6789718 (= e!4098232 (= (head!13630 (_1!36887 (get!22982 lt!2446010))) (c!1261391 (reg!16938 r!7292))))))

(declare-fun b!6789719 () Bool)

(declare-fun res!2774982 () Bool)

(assert (=> b!6789719 (=> res!2774982 e!4098228)))

(assert (=> b!6789719 (= res!2774982 (not (isEmpty!38370 (tail!12715 (_1!36887 (get!22982 lt!2446010))))))))

(declare-fun b!6789720 () Bool)

(declare-fun res!2774980 () Bool)

(assert (=> b!6789720 (=> (not res!2774980) (not e!4098232))))

(assert (=> b!6789720 (= res!2774980 (not call!616477))))

(declare-fun b!6789721 () Bool)

(assert (=> b!6789721 (= e!4098229 (= lt!2446075 call!616477))))

(declare-fun b!6789722 () Bool)

(declare-fun res!2774978 () Bool)

(assert (=> b!6789722 (=> (not res!2774978) (not e!4098232))))

(assert (=> b!6789722 (= res!2774978 (isEmpty!38370 (tail!12715 (_1!36887 (get!22982 lt!2446010)))))))

(declare-fun b!6789723 () Bool)

(assert (=> b!6789723 (= e!4098229 e!4098231)))

(declare-fun c!1261891 () Bool)

(assert (=> b!6789723 (= c!1261891 ((_ is EmptyLang!16609) (reg!16938 r!7292)))))

(declare-fun b!6789724 () Bool)

(assert (=> b!6789724 (= e!4098230 (nullable!6588 (reg!16938 r!7292)))))

(declare-fun b!6789725 () Bool)

(assert (=> b!6789725 (= e!4098228 (not (= (head!13630 (_1!36887 (get!22982 lt!2446010))) (c!1261391 (reg!16938 r!7292)))))))

(declare-fun b!6789726 () Bool)

(declare-fun res!2774981 () Bool)

(assert (=> b!6789726 (=> res!2774981 e!4098233)))

(assert (=> b!6789726 (= res!2774981 e!4098232)))

(declare-fun res!2774979 () Bool)

(assert (=> b!6789726 (=> (not res!2774979) (not e!4098232))))

(assert (=> b!6789726 (= res!2774979 lt!2446075)))

(declare-fun b!6789727 () Bool)

(assert (=> b!6789727 (= e!4098231 (not lt!2446075))))

(assert (= (and d!2133454 c!1261893) b!6789724))

(assert (= (and d!2133454 (not c!1261893)) b!6789717))

(assert (= (and d!2133454 c!1261892) b!6789721))

(assert (= (and d!2133454 (not c!1261892)) b!6789723))

(assert (= (and b!6789723 c!1261891) b!6789727))

(assert (= (and b!6789723 (not c!1261891)) b!6789716))

(assert (= (and b!6789716 (not res!2774984)) b!6789726))

(assert (= (and b!6789726 res!2774979) b!6789720))

(assert (= (and b!6789720 res!2774980) b!6789722))

(assert (= (and b!6789722 res!2774978) b!6789718))

(assert (= (and b!6789726 (not res!2774981)) b!6789715))

(assert (= (and b!6789715 res!2774985) b!6789714))

(assert (= (and b!6789714 (not res!2774983)) b!6789719))

(assert (= (and b!6789719 (not res!2774982)) b!6789725))

(assert (= (or b!6789721 b!6789714 b!6789720) bm!616472))

(declare-fun m!7537540 () Bool)

(assert (=> b!6789717 m!7537540))

(assert (=> b!6789717 m!7537540))

(declare-fun m!7537542 () Bool)

(assert (=> b!6789717 m!7537542))

(declare-fun m!7537544 () Bool)

(assert (=> b!6789717 m!7537544))

(assert (=> b!6789717 m!7537542))

(assert (=> b!6789717 m!7537544))

(declare-fun m!7537546 () Bool)

(assert (=> b!6789717 m!7537546))

(assert (=> b!6789725 m!7537540))

(assert (=> b!6789722 m!7537544))

(assert (=> b!6789722 m!7537544))

(declare-fun m!7537548 () Bool)

(assert (=> b!6789722 m!7537548))

(declare-fun m!7537550 () Bool)

(assert (=> d!2133454 m!7537550))

(assert (=> d!2133454 m!7536356))

(assert (=> b!6789719 m!7537544))

(assert (=> b!6789719 m!7537544))

(assert (=> b!6789719 m!7537548))

(assert (=> b!6789724 m!7536484))

(assert (=> bm!616472 m!7537550))

(assert (=> b!6789718 m!7537540))

(assert (=> b!6788580 d!2133454))

(assert (=> b!6788580 d!2133380))

(declare-fun bs!1809082 () Bool)

(declare-fun d!2133456 () Bool)

(assert (= bs!1809082 (and d!2133456 d!2133356)))

(declare-fun lambda!382450 () Int)

(assert (=> bs!1809082 (= lambda!382450 lambda!382435)))

(declare-fun bs!1809083 () Bool)

(assert (= bs!1809083 (and d!2133456 d!2133386)))

(assert (=> bs!1809083 (= lambda!382450 lambda!382437)))

(declare-fun bs!1809084 () Bool)

(assert (= bs!1809084 (and d!2133456 d!2132992)))

(assert (=> bs!1809084 (= lambda!382450 lambda!382381)))

(declare-fun bs!1809085 () Bool)

(assert (= bs!1809085 (and d!2133456 d!2132890)))

(assert (=> bs!1809085 (= lambda!382450 lambda!382348)))

(declare-fun bs!1809086 () Bool)

(assert (= bs!1809086 (and d!2133456 d!2132790)))

(assert (=> bs!1809086 (= lambda!382450 lambda!382300)))

(declare-fun bs!1809087 () Bool)

(assert (= bs!1809087 (and d!2133456 d!2133256)))

(assert (=> bs!1809087 (= lambda!382450 lambda!382426)))

(declare-fun bs!1809088 () Bool)

(assert (= bs!1809088 (and d!2133456 d!2133200)))

(assert (=> bs!1809088 (= lambda!382450 lambda!382419)))

(declare-fun bs!1809089 () Bool)

(assert (= bs!1809089 (and d!2133456 d!2133426)))

(assert (=> bs!1809089 (= lambda!382450 lambda!382444)))

(declare-fun bs!1809090 () Bool)

(assert (= bs!1809090 (and d!2133456 d!2133354)))

(assert (=> bs!1809090 (= lambda!382450 lambda!382434)))

(declare-fun bs!1809091 () Bool)

(assert (= bs!1809091 (and d!2133456 d!2132792)))

(assert (=> bs!1809091 (= lambda!382450 lambda!382303)))

(declare-fun bs!1809092 () Bool)

(assert (= bs!1809092 (and d!2133456 d!2132796)))

(assert (=> bs!1809092 (= lambda!382450 lambda!382306)))

(declare-fun bs!1809093 () Bool)

(assert (= bs!1809093 (and d!2133456 d!2133384)))

(assert (=> bs!1809093 (= lambda!382450 lambda!382436)))

(declare-fun bs!1809094 () Bool)

(assert (= bs!1809094 (and d!2133456 d!2133428)))

(assert (=> bs!1809094 (= lambda!382450 lambda!382445)))

(declare-fun bs!1809095 () Bool)

(assert (= bs!1809095 (and d!2133456 d!2132988)))

(assert (=> bs!1809095 (= lambda!382450 lambda!382380)))

(assert (=> d!2133456 (= (inv!84769 (h!72452 (t!379849 zl!343))) (forall!15801 (exprs!6493 (h!72452 (t!379849 zl!343))) lambda!382450))))

(declare-fun bs!1809096 () Bool)

(assert (= bs!1809096 d!2133456))

(declare-fun m!7537552 () Bool)

(assert (=> bs!1809096 m!7537552))

(assert (=> b!6788695 d!2133456))

(assert (=> b!6788330 d!2133230))

(declare-fun d!2133458 () Bool)

(assert (=> d!2133458 (= (isDefined!13199 lt!2446010) (not (isEmpty!38373 lt!2446010)))))

(declare-fun bs!1809097 () Bool)

(assert (= bs!1809097 d!2133458))

(declare-fun m!7537554 () Bool)

(assert (=> bs!1809097 m!7537554))

(assert (=> b!6788584 d!2133458))

(declare-fun b!6789728 () Bool)

(declare-fun e!4098234 () (InoxSet Context!11986))

(assert (=> b!6789728 (= e!4098234 ((as const (Array Context!11986 Bool)) false))))

(declare-fun bm!616473 () Bool)

(declare-fun call!616478 () (InoxSet Context!11986))

(assert (=> bm!616473 (= call!616478 (derivationStepZipperDown!1837 (h!72450 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445922))))) (Context!11987 (t!379847 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445922)))))) (h!72451 s!2326)))))

(declare-fun b!6789729 () Bool)

(declare-fun e!4098235 () Bool)

(assert (=> b!6789729 (= e!4098235 (nullable!6588 (h!72450 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445922)))))))))

(declare-fun b!6789730 () Bool)

(declare-fun e!4098236 () (InoxSet Context!11986))

(assert (=> b!6789730 (= e!4098236 ((_ map or) call!616478 (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445922)))))) (h!72451 s!2326))))))

(declare-fun d!2133460 () Bool)

(declare-fun c!1261895 () Bool)

(assert (=> d!2133460 (= c!1261895 e!4098235)))

(declare-fun res!2774986 () Bool)

(assert (=> d!2133460 (=> (not res!2774986) (not e!4098235))))

(assert (=> d!2133460 (= res!2774986 ((_ is Cons!66002) (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445922))))))))

(assert (=> d!2133460 (= (derivationStepZipperUp!1763 (Context!11987 (t!379847 (exprs!6493 lt!2445922))) (h!72451 s!2326)) e!4098236)))

(declare-fun b!6789731 () Bool)

(assert (=> b!6789731 (= e!4098234 call!616478)))

(declare-fun b!6789732 () Bool)

(assert (=> b!6789732 (= e!4098236 e!4098234)))

(declare-fun c!1261894 () Bool)

(assert (=> b!6789732 (= c!1261894 ((_ is Cons!66002) (exprs!6493 (Context!11987 (t!379847 (exprs!6493 lt!2445922))))))))

(assert (= (and d!2133460 res!2774986) b!6789729))

(assert (= (and d!2133460 c!1261895) b!6789730))

(assert (= (and d!2133460 (not c!1261895)) b!6789732))

(assert (= (and b!6789732 c!1261894) b!6789731))

(assert (= (and b!6789732 (not c!1261894)) b!6789728))

(assert (= (or b!6789730 b!6789731) bm!616473))

(declare-fun m!7537556 () Bool)

(assert (=> bm!616473 m!7537556))

(declare-fun m!7537558 () Bool)

(assert (=> b!6789729 m!7537558))

(declare-fun m!7537560 () Bool)

(assert (=> b!6789730 m!7537560))

(assert (=> b!6788439 d!2133460))

(declare-fun b!6789733 () Bool)

(declare-fun e!4098239 () (InoxSet Context!11986))

(declare-fun call!616483 () (InoxSet Context!11986))

(assert (=> b!6789733 (= e!4098239 call!616483)))

(declare-fun call!616479 () List!66126)

(declare-fun bm!616474 () Bool)

(declare-fun c!1261900 () Bool)

(declare-fun call!616484 () (InoxSet Context!11986))

(declare-fun c!1261898 () Bool)

(declare-fun c!1261897 () Bool)

(assert (=> bm!616474 (= call!616484 (derivationStepZipperDown!1837 (ite c!1261897 (regOne!33731 (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292))) (ite c!1261900 (regTwo!33730 (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292))) (ite c!1261898 (regOne!33730 (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292))) (reg!16938 (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292)))))) (ite (or c!1261897 c!1261900) (ite c!1261570 (Context!11987 Nil!66002) (Context!11987 call!616255)) (Context!11987 call!616479)) (h!72451 s!2326)))))

(declare-fun call!616482 () (InoxSet Context!11986))

(declare-fun call!616480 () List!66126)

(declare-fun bm!616475 () Bool)

(assert (=> bm!616475 (= call!616482 (derivationStepZipperDown!1837 (ite c!1261897 (regTwo!33731 (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292))) (regOne!33730 (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292)))) (ite c!1261897 (ite c!1261570 (Context!11987 Nil!66002) (Context!11987 call!616255)) (Context!11987 call!616480)) (h!72451 s!2326)))))

(declare-fun b!6789734 () Bool)

(declare-fun e!4098238 () (InoxSet Context!11986))

(declare-fun e!4098237 () (InoxSet Context!11986))

(assert (=> b!6789734 (= e!4098238 e!4098237)))

(assert (=> b!6789734 (= c!1261897 ((_ is Union!16609) (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292))))))

(declare-fun b!6789735 () Bool)

(declare-fun e!4098241 () (InoxSet Context!11986))

(assert (=> b!6789735 (= e!4098241 call!616483)))

(declare-fun b!6789736 () Bool)

(declare-fun e!4098242 () Bool)

(assert (=> b!6789736 (= c!1261900 e!4098242)))

(declare-fun res!2774987 () Bool)

(assert (=> b!6789736 (=> (not res!2774987) (not e!4098242))))

(assert (=> b!6789736 (= res!2774987 ((_ is Concat!25454) (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292))))))

(declare-fun e!4098240 () (InoxSet Context!11986))

(assert (=> b!6789736 (= e!4098237 e!4098240)))

(declare-fun b!6789737 () Bool)

(assert (=> b!6789737 (= e!4098239 ((as const (Array Context!11986 Bool)) false))))

(declare-fun b!6789738 () Bool)

(assert (=> b!6789738 (= e!4098242 (nullable!6588 (regOne!33730 (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292)))))))

(declare-fun b!6789739 () Bool)

(assert (=> b!6789739 (= e!4098240 e!4098241)))

(assert (=> b!6789739 (= c!1261898 ((_ is Concat!25454) (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292))))))

(declare-fun bm!616476 () Bool)

(assert (=> bm!616476 (= call!616479 call!616480)))

(declare-fun c!1261899 () Bool)

(declare-fun d!2133462 () Bool)

(assert (=> d!2133462 (= c!1261899 (and ((_ is ElementMatch!16609) (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292))) (= (c!1261391 (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292))) (h!72451 s!2326))))))

(assert (=> d!2133462 (= (derivationStepZipperDown!1837 (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292)) (ite c!1261570 (Context!11987 Nil!66002) (Context!11987 call!616255)) (h!72451 s!2326)) e!4098238)))

(declare-fun bm!616477 () Bool)

(declare-fun call!616481 () (InoxSet Context!11986))

(assert (=> bm!616477 (= call!616481 call!616484)))

(declare-fun b!6789740 () Bool)

(assert (=> b!6789740 (= e!4098238 (store ((as const (Array Context!11986 Bool)) false) (ite c!1261570 (Context!11987 Nil!66002) (Context!11987 call!616255)) true))))

(declare-fun b!6789741 () Bool)

(assert (=> b!6789741 (= e!4098237 ((_ map or) call!616484 call!616482))))

(declare-fun b!6789742 () Bool)

(assert (=> b!6789742 (= e!4098240 ((_ map or) call!616482 call!616481))))

(declare-fun bm!616478 () Bool)

(assert (=> bm!616478 (= call!616483 call!616481)))

(declare-fun b!6789743 () Bool)

(declare-fun c!1261896 () Bool)

(assert (=> b!6789743 (= c!1261896 ((_ is Star!16609) (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292))))))

(assert (=> b!6789743 (= e!4098241 e!4098239)))

(declare-fun bm!616479 () Bool)

(assert (=> bm!616479 (= call!616480 ($colon$colon!2417 (exprs!6493 (ite c!1261570 (Context!11987 Nil!66002) (Context!11987 call!616255))) (ite (or c!1261900 c!1261898) (regTwo!33730 (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292))) (ite c!1261570 (regTwo!33731 r!7292) (regOne!33730 r!7292)))))))

(assert (= (and d!2133462 c!1261899) b!6789740))

(assert (= (and d!2133462 (not c!1261899)) b!6789734))

(assert (= (and b!6789734 c!1261897) b!6789741))

(assert (= (and b!6789734 (not c!1261897)) b!6789736))

(assert (= (and b!6789736 res!2774987) b!6789738))

(assert (= (and b!6789736 c!1261900) b!6789742))

(assert (= (and b!6789736 (not c!1261900)) b!6789739))

(assert (= (and b!6789739 c!1261898) b!6789735))

(assert (= (and b!6789739 (not c!1261898)) b!6789743))

(assert (= (and b!6789743 c!1261896) b!6789733))

(assert (= (and b!6789743 (not c!1261896)) b!6789737))

(assert (= (or b!6789735 b!6789733) bm!616476))

(assert (= (or b!6789735 b!6789733) bm!616478))

(assert (= (or b!6789742 bm!616476) bm!616479))

(assert (= (or b!6789742 bm!616478) bm!616477))

(assert (= (or b!6789741 b!6789742) bm!616475))

(assert (= (or b!6789741 bm!616477) bm!616474))

(declare-fun m!7537562 () Bool)

(assert (=> b!6789740 m!7537562))

(declare-fun m!7537564 () Bool)

(assert (=> bm!616479 m!7537564))

(declare-fun m!7537566 () Bool)

(assert (=> b!6789738 m!7537566))

(declare-fun m!7537568 () Bool)

(assert (=> bm!616475 m!7537568))

(declare-fun m!7537570 () Bool)

(assert (=> bm!616474 m!7537570))

(assert (=> bm!616250 d!2133462))

(declare-fun d!2133464 () Bool)

(assert (=> d!2133464 true))

(assert (=> d!2133464 true))

(declare-fun res!2774988 () Bool)

(assert (=> d!2133464 (= (choose!50559 lambda!382296) res!2774988)))

(assert (=> d!2132948 d!2133464))

(declare-fun d!2133466 () Bool)

(assert (=> d!2133466 (= (isUnion!1404 lt!2445925) ((_ is Union!16609) lt!2445925))))

(assert (=> b!6787944 d!2133466))

(declare-fun d!2133468 () Bool)

(assert (=> d!2133468 (= (Exists!3677 (ite c!1261591 lambda!382377 lambda!382378)) (choose!50559 (ite c!1261591 lambda!382377 lambda!382378)))))

(declare-fun bs!1809098 () Bool)

(assert (= bs!1809098 d!2133468))

(declare-fun m!7537572 () Bool)

(assert (=> bs!1809098 m!7537572))

(assert (=> bm!616256 d!2133468))

(declare-fun b!6789744 () Bool)

(declare-fun res!2774993 () Bool)

(declare-fun e!4098246 () Bool)

(assert (=> b!6789744 (=> res!2774993 e!4098246)))

(assert (=> b!6789744 (= res!2774993 (not ((_ is Concat!25454) (ite c!1261606 (reg!16938 r!7292) (ite c!1261607 (regOne!33731 r!7292) (regOne!33730 r!7292))))))))

(declare-fun e!4098244 () Bool)

(assert (=> b!6789744 (= e!4098244 e!4098246)))

(declare-fun b!6789745 () Bool)

(declare-fun e!4098248 () Bool)

(assert (=> b!6789745 (= e!4098246 e!4098248)))

(declare-fun res!2774989 () Bool)

(assert (=> b!6789745 (=> (not res!2774989) (not e!4098248))))

(declare-fun call!616487 () Bool)

(assert (=> b!6789745 (= res!2774989 call!616487)))

(declare-fun b!6789746 () Bool)

(declare-fun e!4098243 () Bool)

(declare-fun call!616486 () Bool)

(assert (=> b!6789746 (= e!4098243 call!616486)))

(declare-fun b!6789747 () Bool)

(declare-fun call!616485 () Bool)

(assert (=> b!6789747 (= e!4098248 call!616485)))

(declare-fun d!2133470 () Bool)

(declare-fun res!2774992 () Bool)

(declare-fun e!4098245 () Bool)

(assert (=> d!2133470 (=> res!2774992 e!4098245)))

(assert (=> d!2133470 (= res!2774992 ((_ is ElementMatch!16609) (ite c!1261606 (reg!16938 r!7292) (ite c!1261607 (regOne!33731 r!7292) (regOne!33730 r!7292)))))))

(assert (=> d!2133470 (= (validRegex!8345 (ite c!1261606 (reg!16938 r!7292) (ite c!1261607 (regOne!33731 r!7292) (regOne!33730 r!7292)))) e!4098245)))

(declare-fun c!1261901 () Bool)

(declare-fun bm!616480 () Bool)

(declare-fun c!1261902 () Bool)

(assert (=> bm!616480 (= call!616486 (validRegex!8345 (ite c!1261901 (reg!16938 (ite c!1261606 (reg!16938 r!7292) (ite c!1261607 (regOne!33731 r!7292) (regOne!33730 r!7292)))) (ite c!1261902 (regOne!33731 (ite c!1261606 (reg!16938 r!7292) (ite c!1261607 (regOne!33731 r!7292) (regOne!33730 r!7292)))) (regOne!33730 (ite c!1261606 (reg!16938 r!7292) (ite c!1261607 (regOne!33731 r!7292) (regOne!33730 r!7292))))))))))

(declare-fun bm!616481 () Bool)

(assert (=> bm!616481 (= call!616485 (validRegex!8345 (ite c!1261902 (regTwo!33731 (ite c!1261606 (reg!16938 r!7292) (ite c!1261607 (regOne!33731 r!7292) (regOne!33730 r!7292)))) (regTwo!33730 (ite c!1261606 (reg!16938 r!7292) (ite c!1261607 (regOne!33731 r!7292) (regOne!33730 r!7292)))))))))

(declare-fun b!6789748 () Bool)

(declare-fun e!4098247 () Bool)

(assert (=> b!6789748 (= e!4098247 call!616485)))

(declare-fun b!6789749 () Bool)

(declare-fun res!2774990 () Bool)

(assert (=> b!6789749 (=> (not res!2774990) (not e!4098247))))

(assert (=> b!6789749 (= res!2774990 call!616487)))

(assert (=> b!6789749 (= e!4098244 e!4098247)))

(declare-fun bm!616482 () Bool)

(assert (=> bm!616482 (= call!616487 call!616486)))

(declare-fun b!6789750 () Bool)

(declare-fun e!4098249 () Bool)

(assert (=> b!6789750 (= e!4098249 e!4098244)))

(assert (=> b!6789750 (= c!1261902 ((_ is Union!16609) (ite c!1261606 (reg!16938 r!7292) (ite c!1261607 (regOne!33731 r!7292) (regOne!33730 r!7292)))))))

(declare-fun b!6789751 () Bool)

(assert (=> b!6789751 (= e!4098245 e!4098249)))

(assert (=> b!6789751 (= c!1261901 ((_ is Star!16609) (ite c!1261606 (reg!16938 r!7292) (ite c!1261607 (regOne!33731 r!7292) (regOne!33730 r!7292)))))))

(declare-fun b!6789752 () Bool)

(assert (=> b!6789752 (= e!4098249 e!4098243)))

(declare-fun res!2774991 () Bool)

(assert (=> b!6789752 (= res!2774991 (not (nullable!6588 (reg!16938 (ite c!1261606 (reg!16938 r!7292) (ite c!1261607 (regOne!33731 r!7292) (regOne!33730 r!7292)))))))))

(assert (=> b!6789752 (=> (not res!2774991) (not e!4098243))))

(assert (= (and d!2133470 (not res!2774992)) b!6789751))

(assert (= (and b!6789751 c!1261901) b!6789752))

(assert (= (and b!6789751 (not c!1261901)) b!6789750))

(assert (= (and b!6789752 res!2774991) b!6789746))

(assert (= (and b!6789750 c!1261902) b!6789749))

(assert (= (and b!6789750 (not c!1261902)) b!6789744))

(assert (= (and b!6789749 res!2774990) b!6789748))

(assert (= (and b!6789744 (not res!2774993)) b!6789745))

(assert (= (and b!6789745 res!2774989) b!6789747))

(assert (= (or b!6789748 b!6789747) bm!616481))

(assert (= (or b!6789749 b!6789745) bm!616482))

(assert (= (or b!6789746 bm!616482) bm!616480))

(declare-fun m!7537574 () Bool)

(assert (=> bm!616480 m!7537574))

(declare-fun m!7537576 () Bool)

(assert (=> bm!616481 m!7537576))

(declare-fun m!7537578 () Bool)

(assert (=> b!6789752 m!7537578))

(assert (=> bm!616266 d!2133470))

(assert (=> d!2132950 d!2133458))

(declare-fun b!6789753 () Bool)

(declare-fun e!4098250 () Bool)

(declare-fun e!4098251 () Bool)

(assert (=> b!6789753 (= e!4098250 e!4098251)))

(declare-fun res!2774999 () Bool)

(assert (=> b!6789753 (=> res!2774999 e!4098251)))

(declare-fun call!616488 () Bool)

(assert (=> b!6789753 (= res!2774999 call!616488)))

(declare-fun b!6789754 () Bool)

(declare-fun e!4098256 () Bool)

(assert (=> b!6789754 (= e!4098256 e!4098250)))

(declare-fun res!2775001 () Bool)

(assert (=> b!6789754 (=> (not res!2775001) (not e!4098250))))

(declare-fun lt!2446076 () Bool)

(assert (=> b!6789754 (= res!2775001 (not lt!2446076))))

(declare-fun d!2133472 () Bool)

(declare-fun e!4098252 () Bool)

(assert (=> d!2133472 e!4098252))

(declare-fun c!1261904 () Bool)

(assert (=> d!2133472 (= c!1261904 ((_ is EmptyExpr!16609) (reg!16938 r!7292)))))

(declare-fun e!4098253 () Bool)

(assert (=> d!2133472 (= lt!2446076 e!4098253)))

(declare-fun c!1261905 () Bool)

(assert (=> d!2133472 (= c!1261905 (isEmpty!38370 Nil!66003))))

(assert (=> d!2133472 (validRegex!8345 (reg!16938 r!7292))))

(assert (=> d!2133472 (= (matchR!8792 (reg!16938 r!7292) Nil!66003) lt!2446076)))

(declare-fun b!6789755 () Bool)

(declare-fun res!2775000 () Bool)

(assert (=> b!6789755 (=> res!2775000 e!4098256)))

(assert (=> b!6789755 (= res!2775000 (not ((_ is ElementMatch!16609) (reg!16938 r!7292))))))

(declare-fun e!4098254 () Bool)

(assert (=> b!6789755 (= e!4098254 e!4098256)))

(declare-fun b!6789756 () Bool)

(assert (=> b!6789756 (= e!4098253 (matchR!8792 (derivativeStep!5273 (reg!16938 r!7292) (head!13630 Nil!66003)) (tail!12715 Nil!66003)))))

(declare-fun bm!616483 () Bool)

(assert (=> bm!616483 (= call!616488 (isEmpty!38370 Nil!66003))))

(declare-fun b!6789757 () Bool)

(declare-fun e!4098255 () Bool)

(assert (=> b!6789757 (= e!4098255 (= (head!13630 Nil!66003) (c!1261391 (reg!16938 r!7292))))))

(declare-fun b!6789758 () Bool)

(declare-fun res!2774998 () Bool)

(assert (=> b!6789758 (=> res!2774998 e!4098251)))

(assert (=> b!6789758 (= res!2774998 (not (isEmpty!38370 (tail!12715 Nil!66003))))))

(declare-fun b!6789759 () Bool)

(declare-fun res!2774996 () Bool)

(assert (=> b!6789759 (=> (not res!2774996) (not e!4098255))))

(assert (=> b!6789759 (= res!2774996 (not call!616488))))

(declare-fun b!6789760 () Bool)

(assert (=> b!6789760 (= e!4098252 (= lt!2446076 call!616488))))

(declare-fun b!6789761 () Bool)

(declare-fun res!2774994 () Bool)

(assert (=> b!6789761 (=> (not res!2774994) (not e!4098255))))

(assert (=> b!6789761 (= res!2774994 (isEmpty!38370 (tail!12715 Nil!66003)))))

(declare-fun b!6789762 () Bool)

(assert (=> b!6789762 (= e!4098252 e!4098254)))

(declare-fun c!1261903 () Bool)

(assert (=> b!6789762 (= c!1261903 ((_ is EmptyLang!16609) (reg!16938 r!7292)))))

(declare-fun b!6789763 () Bool)

(assert (=> b!6789763 (= e!4098253 (nullable!6588 (reg!16938 r!7292)))))

(declare-fun b!6789764 () Bool)

(assert (=> b!6789764 (= e!4098251 (not (= (head!13630 Nil!66003) (c!1261391 (reg!16938 r!7292)))))))

(declare-fun b!6789765 () Bool)

(declare-fun res!2774997 () Bool)

(assert (=> b!6789765 (=> res!2774997 e!4098256)))

(assert (=> b!6789765 (= res!2774997 e!4098255)))

(declare-fun res!2774995 () Bool)

(assert (=> b!6789765 (=> (not res!2774995) (not e!4098255))))

(assert (=> b!6789765 (= res!2774995 lt!2446076)))

(declare-fun b!6789766 () Bool)

(assert (=> b!6789766 (= e!4098254 (not lt!2446076))))

(assert (= (and d!2133472 c!1261905) b!6789763))

(assert (= (and d!2133472 (not c!1261905)) b!6789756))

(assert (= (and d!2133472 c!1261904) b!6789760))

(assert (= (and d!2133472 (not c!1261904)) b!6789762))

(assert (= (and b!6789762 c!1261903) b!6789766))

(assert (= (and b!6789762 (not c!1261903)) b!6789755))

(assert (= (and b!6789755 (not res!2775000)) b!6789765))

(assert (= (and b!6789765 res!2774995) b!6789759))

(assert (= (and b!6789759 res!2774996) b!6789761))

(assert (= (and b!6789761 res!2774994) b!6789757))

(assert (= (and b!6789765 (not res!2774997)) b!6789754))

(assert (= (and b!6789754 res!2775001) b!6789753))

(assert (= (and b!6789753 (not res!2774999)) b!6789758))

(assert (= (and b!6789758 (not res!2774998)) b!6789764))

(assert (= (or b!6789760 b!6789753 b!6789759) bm!616483))

(declare-fun m!7537580 () Bool)

(assert (=> b!6789756 m!7537580))

(assert (=> b!6789756 m!7537580))

(declare-fun m!7537582 () Bool)

(assert (=> b!6789756 m!7537582))

(declare-fun m!7537584 () Bool)

(assert (=> b!6789756 m!7537584))

(assert (=> b!6789756 m!7537582))

(assert (=> b!6789756 m!7537584))

(declare-fun m!7537586 () Bool)

(assert (=> b!6789756 m!7537586))

(assert (=> b!6789764 m!7537580))

(assert (=> b!6789761 m!7537584))

(assert (=> b!6789761 m!7537584))

(declare-fun m!7537588 () Bool)

(assert (=> b!6789761 m!7537588))

(declare-fun m!7537590 () Bool)

(assert (=> d!2133472 m!7537590))

(assert (=> d!2133472 m!7536356))

(assert (=> b!6789758 m!7537584))

(assert (=> b!6789758 m!7537584))

(assert (=> b!6789758 m!7537588))

(assert (=> b!6789763 m!7536484))

(assert (=> bm!616483 m!7537590))

(assert (=> b!6789757 m!7537580))

(assert (=> d!2132950 d!2133472))

(assert (=> d!2132950 d!2133414))

(declare-fun d!2133474 () Bool)

(assert (=> d!2133474 (= (nullable!6588 (regOne!33730 (reg!16938 r!7292))) (nullableFct!2494 (regOne!33730 (reg!16938 r!7292))))))

(declare-fun bs!1809099 () Bool)

(assert (= bs!1809099 d!2133474))

(declare-fun m!7537592 () Bool)

(assert (=> bs!1809099 m!7537592))

(assert (=> b!6788022 d!2133474))

(declare-fun b!6789767 () Bool)

(declare-fun res!2775006 () Bool)

(declare-fun e!4098260 () Bool)

(assert (=> b!6789767 (=> res!2775006 e!4098260)))

(assert (=> b!6789767 (= res!2775006 (not ((_ is Concat!25454) lt!2445932)))))

(declare-fun e!4098258 () Bool)

(assert (=> b!6789767 (= e!4098258 e!4098260)))

(declare-fun b!6789768 () Bool)

(declare-fun e!4098262 () Bool)

(assert (=> b!6789768 (= e!4098260 e!4098262)))

(declare-fun res!2775002 () Bool)

(assert (=> b!6789768 (=> (not res!2775002) (not e!4098262))))

(declare-fun call!616491 () Bool)

(assert (=> b!6789768 (= res!2775002 call!616491)))

(declare-fun b!6789769 () Bool)

(declare-fun e!4098257 () Bool)

(declare-fun call!616490 () Bool)

(assert (=> b!6789769 (= e!4098257 call!616490)))

(declare-fun b!6789770 () Bool)

(declare-fun call!616489 () Bool)

(assert (=> b!6789770 (= e!4098262 call!616489)))

(declare-fun d!2133476 () Bool)

(declare-fun res!2775005 () Bool)

(declare-fun e!4098259 () Bool)

(assert (=> d!2133476 (=> res!2775005 e!4098259)))

(assert (=> d!2133476 (= res!2775005 ((_ is ElementMatch!16609) lt!2445932))))

(assert (=> d!2133476 (= (validRegex!8345 lt!2445932) e!4098259)))

(declare-fun bm!616484 () Bool)

(declare-fun c!1261906 () Bool)

(declare-fun c!1261907 () Bool)

(assert (=> bm!616484 (= call!616490 (validRegex!8345 (ite c!1261906 (reg!16938 lt!2445932) (ite c!1261907 (regOne!33731 lt!2445932) (regOne!33730 lt!2445932)))))))

(declare-fun bm!616485 () Bool)

(assert (=> bm!616485 (= call!616489 (validRegex!8345 (ite c!1261907 (regTwo!33731 lt!2445932) (regTwo!33730 lt!2445932))))))

(declare-fun b!6789771 () Bool)

(declare-fun e!4098261 () Bool)

(assert (=> b!6789771 (= e!4098261 call!616489)))

(declare-fun b!6789772 () Bool)

(declare-fun res!2775003 () Bool)

(assert (=> b!6789772 (=> (not res!2775003) (not e!4098261))))

(assert (=> b!6789772 (= res!2775003 call!616491)))

(assert (=> b!6789772 (= e!4098258 e!4098261)))

(declare-fun bm!616486 () Bool)

(assert (=> bm!616486 (= call!616491 call!616490)))

(declare-fun b!6789773 () Bool)

(declare-fun e!4098263 () Bool)

(assert (=> b!6789773 (= e!4098263 e!4098258)))

(assert (=> b!6789773 (= c!1261907 ((_ is Union!16609) lt!2445932))))

(declare-fun b!6789774 () Bool)

(assert (=> b!6789774 (= e!4098259 e!4098263)))

(assert (=> b!6789774 (= c!1261906 ((_ is Star!16609) lt!2445932))))

(declare-fun b!6789775 () Bool)

(assert (=> b!6789775 (= e!4098263 e!4098257)))

(declare-fun res!2775004 () Bool)

(assert (=> b!6789775 (= res!2775004 (not (nullable!6588 (reg!16938 lt!2445932))))))

(assert (=> b!6789775 (=> (not res!2775004) (not e!4098257))))

(assert (= (and d!2133476 (not res!2775005)) b!6789774))

(assert (= (and b!6789774 c!1261906) b!6789775))

(assert (= (and b!6789774 (not c!1261906)) b!6789773))

(assert (= (and b!6789775 res!2775004) b!6789769))

(assert (= (and b!6789773 c!1261907) b!6789772))

(assert (= (and b!6789773 (not c!1261907)) b!6789767))

(assert (= (and b!6789772 res!2775003) b!6789771))

(assert (= (and b!6789767 (not res!2775006)) b!6789768))

(assert (= (and b!6789768 res!2775002) b!6789770))

(assert (= (or b!6789771 b!6789770) bm!616485))

(assert (= (or b!6789772 b!6789768) bm!616486))

(assert (= (or b!6789769 bm!616486) bm!616484))

(declare-fun m!7537594 () Bool)

(assert (=> bm!616484 m!7537594))

(declare-fun m!7537596 () Bool)

(assert (=> bm!616485 m!7537596))

(declare-fun m!7537598 () Bool)

(assert (=> b!6789775 m!7537598))

(assert (=> d!2132798 d!2133476))

(assert (=> d!2132798 d!2132790))

(assert (=> d!2132798 d!2132792))

(declare-fun d!2133478 () Bool)

(assert (=> d!2133478 (= (Exists!3677 (ite c!1261493 lambda!382329 lambda!382330)) (choose!50559 (ite c!1261493 lambda!382329 lambda!382330)))))

(declare-fun bs!1809100 () Bool)

(assert (= bs!1809100 d!2133478))

(declare-fun m!7537600 () Bool)

(assert (=> bs!1809100 m!7537600))

(assert (=> bm!616202 d!2133478))

(assert (=> d!2132816 d!2132808))

(declare-fun d!2133480 () Bool)

(assert (=> d!2133480 (= (flatMap!2090 lt!2445905 lambda!382297) (dynLambda!26342 lambda!382297 lt!2445916))))

(assert (=> d!2133480 true))

(declare-fun _$13!4229 () Unit!159909)

(assert (=> d!2133480 (= (choose!50557 lt!2445905 lt!2445916 lambda!382297) _$13!4229)))

(declare-fun b_lambda!255741 () Bool)

(assert (=> (not b_lambda!255741) (not d!2133480)))

(declare-fun bs!1809101 () Bool)

(assert (= bs!1809101 d!2133480))

(assert (=> bs!1809101 m!7535898))

(assert (=> bs!1809101 m!7536032))

(assert (=> d!2132816 d!2133480))

(declare-fun d!2133482 () Bool)

(declare-fun res!2775011 () Bool)

(declare-fun e!4098268 () Bool)

(assert (=> d!2133482 (=> res!2775011 e!4098268)))

(assert (=> d!2133482 (= res!2775011 ((_ is Nil!66004) lt!2446022))))

(assert (=> d!2133482 (= (noDuplicate!2394 lt!2446022) e!4098268)))

(declare-fun b!6789780 () Bool)

(declare-fun e!4098269 () Bool)

(assert (=> b!6789780 (= e!4098268 e!4098269)))

(declare-fun res!2775012 () Bool)

(assert (=> b!6789780 (=> (not res!2775012) (not e!4098269))))

(declare-fun contains!20289 (List!66128 Context!11986) Bool)

(assert (=> b!6789780 (= res!2775012 (not (contains!20289 (t!379849 lt!2446022) (h!72452 lt!2446022))))))

(declare-fun b!6789781 () Bool)

(assert (=> b!6789781 (= e!4098269 (noDuplicate!2394 (t!379849 lt!2446022)))))

(assert (= (and d!2133482 (not res!2775011)) b!6789780))

(assert (= (and b!6789780 res!2775012) b!6789781))

(declare-fun m!7537602 () Bool)

(assert (=> b!6789780 m!7537602))

(declare-fun m!7537604 () Bool)

(assert (=> b!6789781 m!7537604))

(assert (=> d!2132990 d!2133482))

(declare-fun d!2133484 () Bool)

(declare-fun e!4098276 () Bool)

(assert (=> d!2133484 e!4098276))

(declare-fun res!2775018 () Bool)

(assert (=> d!2133484 (=> (not res!2775018) (not e!4098276))))

(declare-fun res!2775017 () List!66128)

(assert (=> d!2133484 (= res!2775018 (noDuplicate!2394 res!2775017))))

(declare-fun e!4098278 () Bool)

(assert (=> d!2133484 e!4098278))

(assert (=> d!2133484 (= (choose!50567 z!1189) res!2775017)))

(declare-fun b!6789789 () Bool)

(declare-fun e!4098277 () Bool)

(declare-fun tp!1859639 () Bool)

(assert (=> b!6789789 (= e!4098277 tp!1859639)))

(declare-fun b!6789788 () Bool)

(declare-fun tp!1859638 () Bool)

(assert (=> b!6789788 (= e!4098278 (and (inv!84769 (h!72452 res!2775017)) e!4098277 tp!1859638))))

(declare-fun b!6789790 () Bool)

(assert (=> b!6789790 (= e!4098276 (= (content!12865 res!2775017) z!1189))))

(assert (= b!6789788 b!6789789))

(assert (= (and d!2133484 ((_ is Cons!66004) res!2775017)) b!6789788))

(assert (= (and d!2133484 res!2775018) b!6789790))

(declare-fun m!7537606 () Bool)

(assert (=> d!2133484 m!7537606))

(declare-fun m!7537608 () Bool)

(assert (=> b!6789788 m!7537608))

(declare-fun m!7537610 () Bool)

(assert (=> b!6789790 m!7537610))

(assert (=> d!2132990 d!2133484))

(declare-fun d!2133486 () Bool)

(assert (=> d!2133486 (= (nullable!6588 (h!72450 (exprs!6493 (h!72452 zl!343)))) (nullableFct!2494 (h!72450 (exprs!6493 (h!72452 zl!343)))))))

(declare-fun bs!1809102 () Bool)

(assert (= bs!1809102 d!2133486))

(declare-fun m!7537612 () Bool)

(assert (=> bs!1809102 m!7537612))

(assert (=> b!6788628 d!2133486))

(assert (=> d!2132964 d!2132946))

(declare-fun bs!1809103 () Bool)

(declare-fun b!6789795 () Bool)

(assert (= bs!1809103 (and b!6789795 d!2133412)))

(declare-fun lambda!382451 () Int)

(assert (=> bs!1809103 (not (= lambda!382451 lambda!382442))))

(declare-fun bs!1809104 () Bool)

(assert (= bs!1809104 (and b!6789795 d!2132942)))

(assert (=> bs!1809104 (not (= lambda!382451 lambda!382372))))

(declare-fun bs!1809105 () Bool)

(assert (= bs!1809105 (and b!6789795 b!6788602)))

(assert (=> bs!1809105 (= (and (= (reg!16938 (regOne!33731 r!7292)) (reg!16938 r!7292)) (= (regOne!33731 r!7292) r!7292)) (= lambda!382451 lambda!382377))))

(declare-fun bs!1809106 () Bool)

(assert (= bs!1809106 (and b!6789795 b!6789226)))

(assert (=> bs!1809106 (not (= lambda!382451 lambda!382424))))

(assert (=> bs!1809103 (not (= lambda!382451 lambda!382443))))

(declare-fun bs!1809107 () Bool)

(assert (= bs!1809107 (and b!6789795 b!6789277)))

(assert (=> bs!1809107 (not (= lambda!382451 lambda!382430))))

(declare-fun bs!1809108 () Bool)

(assert (= bs!1809108 (and b!6789795 b!6787882)))

(assert (=> bs!1809108 (not (= lambda!382451 lambda!382296))))

(declare-fun bs!1809109 () Bool)

(assert (= bs!1809109 (and b!6789795 d!2133434)))

(assert (=> bs!1809109 (not (= lambda!382451 lambda!382449))))

(declare-fun bs!1809110 () Bool)

(assert (= bs!1809110 (and b!6789795 b!6788208)))

(assert (=> bs!1809110 (= (and (= (reg!16938 (regOne!33731 r!7292)) (reg!16938 lt!2445914)) (= (regOne!33731 r!7292) lt!2445914)) (= lambda!382451 lambda!382329))))

(assert (=> bs!1809108 (not (= lambda!382451 lambda!382294))))

(declare-fun bs!1809111 () Bool)

(assert (= bs!1809111 (and b!6789795 b!6788209)))

(assert (=> bs!1809111 (not (= lambda!382451 lambda!382330))))

(declare-fun bs!1809112 () Bool)

(assert (= bs!1809112 (and b!6789795 b!6789225)))

(assert (=> bs!1809112 (= (and (= (reg!16938 (regOne!33731 r!7292)) (reg!16938 (regTwo!33731 lt!2445914))) (= (regOne!33731 r!7292) (regTwo!33731 lt!2445914))) (= lambda!382451 lambda!382423))))

(declare-fun bs!1809113 () Bool)

(assert (= bs!1809113 (and b!6789795 d!2132940)))

(assert (=> bs!1809113 (not (= lambda!382451 lambda!382364))))

(declare-fun bs!1809114 () Bool)

(assert (= bs!1809114 (and b!6789795 d!2132962)))

(assert (=> bs!1809114 (not (= lambda!382451 lambda!382376))))

(declare-fun bs!1809115 () Bool)

(assert (= bs!1809115 (and b!6789795 b!6789276)))

(assert (=> bs!1809115 (= (and (= (reg!16938 (regOne!33731 r!7292)) (reg!16938 (regTwo!33731 r!7292))) (= (regOne!33731 r!7292) (regTwo!33731 r!7292))) (= lambda!382451 lambda!382428))))

(assert (=> bs!1809108 (= (and (= (reg!16938 (regOne!33731 r!7292)) (reg!16938 r!7292)) (= (regOne!33731 r!7292) r!7292)) (= lambda!382451 lambda!382295))))

(assert (=> bs!1809113 (not (= lambda!382451 lambda!382363))))

(assert (=> bs!1809104 (= (and (= (reg!16938 (regOne!33731 r!7292)) (reg!16938 r!7292)) (= (regOne!33731 r!7292) (Star!16609 (reg!16938 r!7292)))) (= lambda!382451 lambda!382373))))

(declare-fun bs!1809116 () Bool)

(assert (= bs!1809116 (and b!6789795 b!6788603)))

(assert (=> bs!1809116 (not (= lambda!382451 lambda!382378))))

(assert (=> b!6789795 true))

(assert (=> b!6789795 true))

(declare-fun bs!1809117 () Bool)

(declare-fun b!6789796 () Bool)

(assert (= bs!1809117 (and b!6789796 d!2133412)))

(declare-fun lambda!382452 () Int)

(assert (=> bs!1809117 (not (= lambda!382452 lambda!382442))))

(declare-fun bs!1809118 () Bool)

(assert (= bs!1809118 (and b!6789796 d!2132942)))

(assert (=> bs!1809118 (not (= lambda!382452 lambda!382372))))

(declare-fun bs!1809119 () Bool)

(assert (= bs!1809119 (and b!6789796 b!6788602)))

(assert (=> bs!1809119 (not (= lambda!382452 lambda!382377))))

(declare-fun bs!1809120 () Bool)

(assert (= bs!1809120 (and b!6789796 b!6789226)))

(assert (=> bs!1809120 (= (and (= (regOne!33730 (regOne!33731 r!7292)) (regOne!33730 (regTwo!33731 lt!2445914))) (= (regTwo!33730 (regOne!33731 r!7292)) (regTwo!33730 (regTwo!33731 lt!2445914)))) (= lambda!382452 lambda!382424))))

(assert (=> bs!1809117 (= (and (= (regOne!33730 (regOne!33731 r!7292)) (reg!16938 r!7292)) (= (regTwo!33730 (regOne!33731 r!7292)) r!7292)) (= lambda!382452 lambda!382443))))

(declare-fun bs!1809121 () Bool)

(assert (= bs!1809121 (and b!6789796 b!6789795)))

(assert (=> bs!1809121 (not (= lambda!382452 lambda!382451))))

(declare-fun bs!1809122 () Bool)

(assert (= bs!1809122 (and b!6789796 b!6789277)))

(assert (=> bs!1809122 (= (and (= (regOne!33730 (regOne!33731 r!7292)) (regOne!33730 (regTwo!33731 r!7292))) (= (regTwo!33730 (regOne!33731 r!7292)) (regTwo!33730 (regTwo!33731 r!7292)))) (= lambda!382452 lambda!382430))))

(declare-fun bs!1809123 () Bool)

(assert (= bs!1809123 (and b!6789796 b!6787882)))

(assert (=> bs!1809123 (= (and (= (regOne!33730 (regOne!33731 r!7292)) (reg!16938 r!7292)) (= (regTwo!33730 (regOne!33731 r!7292)) r!7292)) (= lambda!382452 lambda!382296))))

(declare-fun bs!1809124 () Bool)

(assert (= bs!1809124 (and b!6789796 d!2133434)))

(assert (=> bs!1809124 (not (= lambda!382452 lambda!382449))))

(declare-fun bs!1809125 () Bool)

(assert (= bs!1809125 (and b!6789796 b!6788208)))

(assert (=> bs!1809125 (not (= lambda!382452 lambda!382329))))

(assert (=> bs!1809123 (not (= lambda!382452 lambda!382294))))

(declare-fun bs!1809126 () Bool)

(assert (= bs!1809126 (and b!6789796 b!6788209)))

(assert (=> bs!1809126 (= (and (= (regOne!33730 (regOne!33731 r!7292)) (regOne!33730 lt!2445914)) (= (regTwo!33730 (regOne!33731 r!7292)) (regTwo!33730 lt!2445914))) (= lambda!382452 lambda!382330))))

(declare-fun bs!1809127 () Bool)

(assert (= bs!1809127 (and b!6789796 b!6789225)))

(assert (=> bs!1809127 (not (= lambda!382452 lambda!382423))))

(declare-fun bs!1809128 () Bool)

(assert (= bs!1809128 (and b!6789796 d!2132940)))

(assert (=> bs!1809128 (= (and (= (regOne!33730 (regOne!33731 r!7292)) (reg!16938 r!7292)) (= (regTwo!33730 (regOne!33731 r!7292)) r!7292)) (= lambda!382452 lambda!382364))))

(declare-fun bs!1809129 () Bool)

(assert (= bs!1809129 (and b!6789796 d!2132962)))

(assert (=> bs!1809129 (not (= lambda!382452 lambda!382376))))

(declare-fun bs!1809130 () Bool)

(assert (= bs!1809130 (and b!6789796 b!6789276)))

(assert (=> bs!1809130 (not (= lambda!382452 lambda!382428))))

(assert (=> bs!1809123 (not (= lambda!382452 lambda!382295))))

(assert (=> bs!1809128 (not (= lambda!382452 lambda!382363))))

(assert (=> bs!1809118 (not (= lambda!382452 lambda!382373))))

(declare-fun bs!1809131 () Bool)

(assert (= bs!1809131 (and b!6789796 b!6788603)))

(assert (=> bs!1809131 (= (and (= (regOne!33730 (regOne!33731 r!7292)) (regOne!33730 r!7292)) (= (regTwo!33730 (regOne!33731 r!7292)) (regTwo!33730 r!7292))) (= lambda!382452 lambda!382378))))

(assert (=> b!6789796 true))

(assert (=> b!6789796 true))

(declare-fun b!6789791 () Bool)

(declare-fun e!4098281 () Bool)

(declare-fun e!4098282 () Bool)

(assert (=> b!6789791 (= e!4098281 e!4098282)))

(declare-fun res!2775020 () Bool)

(assert (=> b!6789791 (= res!2775020 (matchRSpec!3710 (regOne!33731 (regOne!33731 r!7292)) s!2326))))

(assert (=> b!6789791 (=> res!2775020 e!4098282)))

(declare-fun b!6789792 () Bool)

(declare-fun e!4098283 () Bool)

(assert (=> b!6789792 (= e!4098281 e!4098283)))

(declare-fun c!1261908 () Bool)

(assert (=> b!6789792 (= c!1261908 ((_ is Star!16609) (regOne!33731 r!7292)))))

(declare-fun b!6789793 () Bool)

(declare-fun c!1261910 () Bool)

(assert (=> b!6789793 (= c!1261910 ((_ is Union!16609) (regOne!33731 r!7292)))))

(declare-fun e!4098285 () Bool)

(assert (=> b!6789793 (= e!4098285 e!4098281)))

(declare-fun b!6789794 () Bool)

(assert (=> b!6789794 (= e!4098282 (matchRSpec!3710 (regTwo!33731 (regOne!33731 r!7292)) s!2326))))

(declare-fun bm!616487 () Bool)

(declare-fun call!616493 () Bool)

(assert (=> bm!616487 (= call!616493 (Exists!3677 (ite c!1261908 lambda!382451 lambda!382452)))))

(assert (=> b!6789796 (= e!4098283 call!616493)))

(declare-fun b!6789797 () Bool)

(declare-fun e!4098284 () Bool)

(declare-fun call!616492 () Bool)

(assert (=> b!6789797 (= e!4098284 call!616492)))

(declare-fun b!6789798 () Bool)

(declare-fun c!1261909 () Bool)

(assert (=> b!6789798 (= c!1261909 ((_ is ElementMatch!16609) (regOne!33731 r!7292)))))

(declare-fun e!4098280 () Bool)

(assert (=> b!6789798 (= e!4098280 e!4098285)))

(declare-fun b!6789799 () Bool)

(assert (=> b!6789799 (= e!4098285 (= s!2326 (Cons!66003 (c!1261391 (regOne!33731 r!7292)) Nil!66003)))))

(declare-fun b!6789800 () Bool)

(declare-fun res!2775021 () Bool)

(declare-fun e!4098279 () Bool)

(assert (=> b!6789800 (=> res!2775021 e!4098279)))

(assert (=> b!6789800 (= res!2775021 call!616492)))

(assert (=> b!6789800 (= e!4098283 e!4098279)))

(declare-fun bm!616488 () Bool)

(assert (=> bm!616488 (= call!616492 (isEmpty!38370 s!2326))))

(declare-fun b!6789801 () Bool)

(assert (=> b!6789801 (= e!4098284 e!4098280)))

(declare-fun res!2775019 () Bool)

(assert (=> b!6789801 (= res!2775019 (not ((_ is EmptyLang!16609) (regOne!33731 r!7292))))))

(assert (=> b!6789801 (=> (not res!2775019) (not e!4098280))))

(assert (=> b!6789795 (= e!4098279 call!616493)))

(declare-fun d!2133488 () Bool)

(declare-fun c!1261911 () Bool)

(assert (=> d!2133488 (= c!1261911 ((_ is EmptyExpr!16609) (regOne!33731 r!7292)))))

(assert (=> d!2133488 (= (matchRSpec!3710 (regOne!33731 r!7292) s!2326) e!4098284)))

(assert (= (and d!2133488 c!1261911) b!6789797))

(assert (= (and d!2133488 (not c!1261911)) b!6789801))

(assert (= (and b!6789801 res!2775019) b!6789798))

(assert (= (and b!6789798 c!1261909) b!6789799))

(assert (= (and b!6789798 (not c!1261909)) b!6789793))

(assert (= (and b!6789793 c!1261910) b!6789791))

(assert (= (and b!6789793 (not c!1261910)) b!6789792))

(assert (= (and b!6789791 (not res!2775020)) b!6789794))

(assert (= (and b!6789792 c!1261908) b!6789800))

(assert (= (and b!6789792 (not c!1261908)) b!6789796))

(assert (= (and b!6789800 (not res!2775021)) b!6789795))

(assert (= (or b!6789795 b!6789796) bm!616487))

(assert (= (or b!6789797 b!6789800) bm!616488))

(declare-fun m!7537614 () Bool)

(assert (=> b!6789791 m!7537614))

(declare-fun m!7537616 () Bool)

(assert (=> b!6789794 m!7537616))

(declare-fun m!7537618 () Bool)

(assert (=> bm!616487 m!7537618))

(assert (=> bm!616488 m!7535918))

(assert (=> b!6788598 d!2133488))

(assert (=> bs!1808585 d!2132982))

(declare-fun b!6789802 () Bool)

(declare-fun e!4098288 () (InoxSet Context!11986))

(declare-fun call!616498 () (InoxSet Context!11986))

(assert (=> b!6789802 (= e!4098288 call!616498)))

(declare-fun c!1261913 () Bool)

(declare-fun c!1261916 () Bool)

(declare-fun call!616494 () List!66126)

(declare-fun bm!616489 () Bool)

(declare-fun c!1261914 () Bool)

(declare-fun call!616499 () (InoxSet Context!11986))

(assert (=> bm!616489 (= call!616499 (derivationStepZipperDown!1837 (ite c!1261913 (regOne!33731 (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292)))) (ite c!1261916 (regTwo!33730 (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292)))) (ite c!1261914 (regOne!33730 (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292)))) (reg!16938 (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292))))))) (ite (or c!1261913 c!1261916) (ite c!1261430 lt!2445912 (Context!11987 call!616189)) (Context!11987 call!616494)) (h!72451 s!2326)))))

(declare-fun bm!616490 () Bool)

(declare-fun call!616495 () List!66126)

(declare-fun call!616497 () (InoxSet Context!11986))

(assert (=> bm!616490 (= call!616497 (derivationStepZipperDown!1837 (ite c!1261913 (regTwo!33731 (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292)))) (regOne!33730 (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292))))) (ite c!1261913 (ite c!1261430 lt!2445912 (Context!11987 call!616189)) (Context!11987 call!616495)) (h!72451 s!2326)))))

(declare-fun b!6789803 () Bool)

(declare-fun e!4098287 () (InoxSet Context!11986))

(declare-fun e!4098286 () (InoxSet Context!11986))

(assert (=> b!6789803 (= e!4098287 e!4098286)))

(assert (=> b!6789803 (= c!1261913 ((_ is Union!16609) (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292)))))))

(declare-fun b!6789804 () Bool)

(declare-fun e!4098290 () (InoxSet Context!11986))

(assert (=> b!6789804 (= e!4098290 call!616498)))

(declare-fun b!6789805 () Bool)

(declare-fun e!4098291 () Bool)

(assert (=> b!6789805 (= c!1261916 e!4098291)))

(declare-fun res!2775022 () Bool)

(assert (=> b!6789805 (=> (not res!2775022) (not e!4098291))))

(assert (=> b!6789805 (= res!2775022 ((_ is Concat!25454) (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292)))))))

(declare-fun e!4098289 () (InoxSet Context!11986))

(assert (=> b!6789805 (= e!4098286 e!4098289)))

(declare-fun b!6789806 () Bool)

(assert (=> b!6789806 (= e!4098288 ((as const (Array Context!11986 Bool)) false))))

(declare-fun b!6789807 () Bool)

(assert (=> b!6789807 (= e!4098291 (nullable!6588 (regOne!33730 (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292))))))))

(declare-fun b!6789808 () Bool)

(assert (=> b!6789808 (= e!4098289 e!4098290)))

(assert (=> b!6789808 (= c!1261914 ((_ is Concat!25454) (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292)))))))

(declare-fun bm!616491 () Bool)

(assert (=> bm!616491 (= call!616494 call!616495)))

(declare-fun d!2133490 () Bool)

(declare-fun c!1261915 () Bool)

(assert (=> d!2133490 (= c!1261915 (and ((_ is ElementMatch!16609) (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292)))) (= (c!1261391 (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292)))) (h!72451 s!2326))))))

(assert (=> d!2133490 (= (derivationStepZipperDown!1837 (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292))) (ite c!1261430 lt!2445912 (Context!11987 call!616189)) (h!72451 s!2326)) e!4098287)))

(declare-fun bm!616492 () Bool)

(declare-fun call!616496 () (InoxSet Context!11986))

(assert (=> bm!616492 (= call!616496 call!616499)))

(declare-fun b!6789809 () Bool)

(assert (=> b!6789809 (= e!4098287 (store ((as const (Array Context!11986 Bool)) false) (ite c!1261430 lt!2445912 (Context!11987 call!616189)) true))))

(declare-fun b!6789810 () Bool)

(assert (=> b!6789810 (= e!4098286 ((_ map or) call!616499 call!616497))))

(declare-fun b!6789811 () Bool)

(assert (=> b!6789811 (= e!4098289 ((_ map or) call!616497 call!616496))))

(declare-fun bm!616493 () Bool)

(assert (=> bm!616493 (= call!616498 call!616496)))

(declare-fun b!6789812 () Bool)

(declare-fun c!1261912 () Bool)

(assert (=> b!6789812 (= c!1261912 ((_ is Star!16609) (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292)))))))

(assert (=> b!6789812 (= e!4098290 e!4098288)))

(declare-fun bm!616494 () Bool)

(assert (=> bm!616494 (= call!616495 ($colon$colon!2417 (exprs!6493 (ite c!1261430 lt!2445912 (Context!11987 call!616189))) (ite (or c!1261916 c!1261914) (regTwo!33730 (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292)))) (ite c!1261430 (regTwo!33731 (reg!16938 r!7292)) (regOne!33730 (reg!16938 r!7292))))))))

(assert (= (and d!2133490 c!1261915) b!6789809))

(assert (= (and d!2133490 (not c!1261915)) b!6789803))

(assert (= (and b!6789803 c!1261913) b!6789810))

(assert (= (and b!6789803 (not c!1261913)) b!6789805))

(assert (= (and b!6789805 res!2775022) b!6789807))

(assert (= (and b!6789805 c!1261916) b!6789811))

(assert (= (and b!6789805 (not c!1261916)) b!6789808))

(assert (= (and b!6789808 c!1261914) b!6789804))

(assert (= (and b!6789808 (not c!1261914)) b!6789812))

(assert (= (and b!6789812 c!1261912) b!6789802))

(assert (= (and b!6789812 (not c!1261912)) b!6789806))

(assert (= (or b!6789804 b!6789802) bm!616491))

(assert (= (or b!6789804 b!6789802) bm!616493))

(assert (= (or b!6789811 bm!616491) bm!616494))

(assert (= (or b!6789811 bm!616493) bm!616492))

(assert (= (or b!6789810 b!6789811) bm!616490))

(assert (= (or b!6789810 bm!616492) bm!616489))

(declare-fun m!7537620 () Bool)

(assert (=> b!6789809 m!7537620))

(declare-fun m!7537622 () Bool)

(assert (=> bm!616494 m!7537622))

(declare-fun m!7537624 () Bool)

(assert (=> b!6789807 m!7537624))

(declare-fun m!7537626 () Bool)

(assert (=> bm!616490 m!7537626))

(declare-fun m!7537628 () Bool)

(assert (=> bm!616489 m!7537628))

(assert (=> bm!616184 d!2133490))

(declare-fun d!2133492 () Bool)

(assert (=> d!2133492 (= (nullable!6588 r!7292) (nullableFct!2494 r!7292))))

(declare-fun bs!1809132 () Bool)

(assert (= bs!1809132 d!2133492))

(declare-fun m!7537630 () Bool)

(assert (=> bs!1809132 m!7537630))

(assert (=> b!6788619 d!2133492))

(declare-fun bs!1809133 () Bool)

(declare-fun b!6789817 () Bool)

(assert (= bs!1809133 (and b!6789817 d!2133412)))

(declare-fun lambda!382453 () Int)

(assert (=> bs!1809133 (not (= lambda!382453 lambda!382442))))

(declare-fun bs!1809134 () Bool)

(assert (= bs!1809134 (and b!6789817 d!2132942)))

(assert (=> bs!1809134 (not (= lambda!382453 lambda!382372))))

(declare-fun bs!1809135 () Bool)

(assert (= bs!1809135 (and b!6789817 b!6789226)))

(assert (=> bs!1809135 (not (= lambda!382453 lambda!382424))))

(assert (=> bs!1809133 (not (= lambda!382453 lambda!382443))))

(declare-fun bs!1809136 () Bool)

(assert (= bs!1809136 (and b!6789817 b!6789795)))

(assert (=> bs!1809136 (= (and (= (reg!16938 (regOne!33731 lt!2445914)) (reg!16938 (regOne!33731 r!7292))) (= (regOne!33731 lt!2445914) (regOne!33731 r!7292))) (= lambda!382453 lambda!382451))))

(declare-fun bs!1809137 () Bool)

(assert (= bs!1809137 (and b!6789817 b!6789277)))

(assert (=> bs!1809137 (not (= lambda!382453 lambda!382430))))

(declare-fun bs!1809138 () Bool)

(assert (= bs!1809138 (and b!6789817 b!6787882)))

(assert (=> bs!1809138 (not (= lambda!382453 lambda!382296))))

(declare-fun bs!1809139 () Bool)

(assert (= bs!1809139 (and b!6789817 d!2133434)))

(assert (=> bs!1809139 (not (= lambda!382453 lambda!382449))))

(declare-fun bs!1809140 () Bool)

(assert (= bs!1809140 (and b!6789817 b!6788208)))

(assert (=> bs!1809140 (= (and (= (reg!16938 (regOne!33731 lt!2445914)) (reg!16938 lt!2445914)) (= (regOne!33731 lt!2445914) lt!2445914)) (= lambda!382453 lambda!382329))))

(assert (=> bs!1809138 (not (= lambda!382453 lambda!382294))))

(declare-fun bs!1809141 () Bool)

(assert (= bs!1809141 (and b!6789817 b!6788209)))

(assert (=> bs!1809141 (not (= lambda!382453 lambda!382330))))

(declare-fun bs!1809142 () Bool)

(assert (= bs!1809142 (and b!6789817 b!6789225)))

(assert (=> bs!1809142 (= (and (= (reg!16938 (regOne!33731 lt!2445914)) (reg!16938 (regTwo!33731 lt!2445914))) (= (regOne!33731 lt!2445914) (regTwo!33731 lt!2445914))) (= lambda!382453 lambda!382423))))

(declare-fun bs!1809143 () Bool)

(assert (= bs!1809143 (and b!6789817 b!6789796)))

(assert (=> bs!1809143 (not (= lambda!382453 lambda!382452))))

(declare-fun bs!1809144 () Bool)

(assert (= bs!1809144 (and b!6789817 b!6788602)))

(assert (=> bs!1809144 (= (and (= (reg!16938 (regOne!33731 lt!2445914)) (reg!16938 r!7292)) (= (regOne!33731 lt!2445914) r!7292)) (= lambda!382453 lambda!382377))))

(declare-fun bs!1809145 () Bool)

(assert (= bs!1809145 (and b!6789817 d!2132940)))

(assert (=> bs!1809145 (not (= lambda!382453 lambda!382364))))

(declare-fun bs!1809146 () Bool)

(assert (= bs!1809146 (and b!6789817 d!2132962)))

(assert (=> bs!1809146 (not (= lambda!382453 lambda!382376))))

(declare-fun bs!1809147 () Bool)

(assert (= bs!1809147 (and b!6789817 b!6789276)))

(assert (=> bs!1809147 (= (and (= (reg!16938 (regOne!33731 lt!2445914)) (reg!16938 (regTwo!33731 r!7292))) (= (regOne!33731 lt!2445914) (regTwo!33731 r!7292))) (= lambda!382453 lambda!382428))))

(assert (=> bs!1809138 (= (and (= (reg!16938 (regOne!33731 lt!2445914)) (reg!16938 r!7292)) (= (regOne!33731 lt!2445914) r!7292)) (= lambda!382453 lambda!382295))))

(assert (=> bs!1809145 (not (= lambda!382453 lambda!382363))))

(assert (=> bs!1809134 (= (and (= (reg!16938 (regOne!33731 lt!2445914)) (reg!16938 r!7292)) (= (regOne!33731 lt!2445914) (Star!16609 (reg!16938 r!7292)))) (= lambda!382453 lambda!382373))))

(declare-fun bs!1809148 () Bool)

(assert (= bs!1809148 (and b!6789817 b!6788603)))

(assert (=> bs!1809148 (not (= lambda!382453 lambda!382378))))

(assert (=> b!6789817 true))

(assert (=> b!6789817 true))

(declare-fun bs!1809149 () Bool)

(declare-fun b!6789818 () Bool)

(assert (= bs!1809149 (and b!6789818 d!2133412)))

(declare-fun lambda!382454 () Int)

(assert (=> bs!1809149 (not (= lambda!382454 lambda!382442))))

(declare-fun bs!1809150 () Bool)

(assert (= bs!1809150 (and b!6789818 d!2132942)))

(assert (=> bs!1809150 (not (= lambda!382454 lambda!382372))))

(declare-fun bs!1809151 () Bool)

(assert (= bs!1809151 (and b!6789818 b!6789226)))

(assert (=> bs!1809151 (= (and (= (regOne!33730 (regOne!33731 lt!2445914)) (regOne!33730 (regTwo!33731 lt!2445914))) (= (regTwo!33730 (regOne!33731 lt!2445914)) (regTwo!33730 (regTwo!33731 lt!2445914)))) (= lambda!382454 lambda!382424))))

(assert (=> bs!1809149 (= (and (= (regOne!33730 (regOne!33731 lt!2445914)) (reg!16938 r!7292)) (= (regTwo!33730 (regOne!33731 lt!2445914)) r!7292)) (= lambda!382454 lambda!382443))))

(declare-fun bs!1809152 () Bool)

(assert (= bs!1809152 (and b!6789818 b!6789795)))

(assert (=> bs!1809152 (not (= lambda!382454 lambda!382451))))

(declare-fun bs!1809153 () Bool)

(assert (= bs!1809153 (and b!6789818 b!6789277)))

(assert (=> bs!1809153 (= (and (= (regOne!33730 (regOne!33731 lt!2445914)) (regOne!33730 (regTwo!33731 r!7292))) (= (regTwo!33730 (regOne!33731 lt!2445914)) (regTwo!33730 (regTwo!33731 r!7292)))) (= lambda!382454 lambda!382430))))

(declare-fun bs!1809154 () Bool)

(assert (= bs!1809154 (and b!6789818 b!6787882)))

(assert (=> bs!1809154 (= (and (= (regOne!33730 (regOne!33731 lt!2445914)) (reg!16938 r!7292)) (= (regTwo!33730 (regOne!33731 lt!2445914)) r!7292)) (= lambda!382454 lambda!382296))))

(declare-fun bs!1809155 () Bool)

(assert (= bs!1809155 (and b!6789818 d!2133434)))

(assert (=> bs!1809155 (not (= lambda!382454 lambda!382449))))

(declare-fun bs!1809156 () Bool)

(assert (= bs!1809156 (and b!6789818 b!6788208)))

(assert (=> bs!1809156 (not (= lambda!382454 lambda!382329))))

(assert (=> bs!1809154 (not (= lambda!382454 lambda!382294))))

(declare-fun bs!1809157 () Bool)

(assert (= bs!1809157 (and b!6789818 b!6788209)))

(assert (=> bs!1809157 (= (and (= (regOne!33730 (regOne!33731 lt!2445914)) (regOne!33730 lt!2445914)) (= (regTwo!33730 (regOne!33731 lt!2445914)) (regTwo!33730 lt!2445914))) (= lambda!382454 lambda!382330))))

(declare-fun bs!1809158 () Bool)

(assert (= bs!1809158 (and b!6789818 b!6789225)))

(assert (=> bs!1809158 (not (= lambda!382454 lambda!382423))))

(declare-fun bs!1809159 () Bool)

(assert (= bs!1809159 (and b!6789818 b!6789796)))

(assert (=> bs!1809159 (= (and (= (regOne!33730 (regOne!33731 lt!2445914)) (regOne!33730 (regOne!33731 r!7292))) (= (regTwo!33730 (regOne!33731 lt!2445914)) (regTwo!33730 (regOne!33731 r!7292)))) (= lambda!382454 lambda!382452))))

(declare-fun bs!1809160 () Bool)

(assert (= bs!1809160 (and b!6789818 b!6788602)))

(assert (=> bs!1809160 (not (= lambda!382454 lambda!382377))))

(declare-fun bs!1809161 () Bool)

(assert (= bs!1809161 (and b!6789818 d!2132940)))

(assert (=> bs!1809161 (= (and (= (regOne!33730 (regOne!33731 lt!2445914)) (reg!16938 r!7292)) (= (regTwo!33730 (regOne!33731 lt!2445914)) r!7292)) (= lambda!382454 lambda!382364))))

(declare-fun bs!1809162 () Bool)

(assert (= bs!1809162 (and b!6789818 d!2132962)))

(assert (=> bs!1809162 (not (= lambda!382454 lambda!382376))))

(declare-fun bs!1809163 () Bool)

(assert (= bs!1809163 (and b!6789818 b!6789276)))

(assert (=> bs!1809163 (not (= lambda!382454 lambda!382428))))

(assert (=> bs!1809154 (not (= lambda!382454 lambda!382295))))

(declare-fun bs!1809164 () Bool)

(assert (= bs!1809164 (and b!6789818 b!6789817)))

(assert (=> bs!1809164 (not (= lambda!382454 lambda!382453))))

(assert (=> bs!1809161 (not (= lambda!382454 lambda!382363))))

(assert (=> bs!1809150 (not (= lambda!382454 lambda!382373))))

(declare-fun bs!1809165 () Bool)

(assert (= bs!1809165 (and b!6789818 b!6788603)))

(assert (=> bs!1809165 (= (and (= (regOne!33730 (regOne!33731 lt!2445914)) (regOne!33730 r!7292)) (= (regTwo!33730 (regOne!33731 lt!2445914)) (regTwo!33730 r!7292))) (= lambda!382454 lambda!382378))))

(assert (=> b!6789818 true))

(assert (=> b!6789818 true))

(declare-fun b!6789813 () Bool)

(declare-fun e!4098294 () Bool)

(declare-fun e!4098295 () Bool)

(assert (=> b!6789813 (= e!4098294 e!4098295)))

(declare-fun res!2775024 () Bool)

(assert (=> b!6789813 (= res!2775024 (matchRSpec!3710 (regOne!33731 (regOne!33731 lt!2445914)) s!2326))))

(assert (=> b!6789813 (=> res!2775024 e!4098295)))

(declare-fun b!6789814 () Bool)

(declare-fun e!4098296 () Bool)

(assert (=> b!6789814 (= e!4098294 e!4098296)))

(declare-fun c!1261917 () Bool)

(assert (=> b!6789814 (= c!1261917 ((_ is Star!16609) (regOne!33731 lt!2445914)))))

(declare-fun b!6789815 () Bool)

(declare-fun c!1261919 () Bool)

(assert (=> b!6789815 (= c!1261919 ((_ is Union!16609) (regOne!33731 lt!2445914)))))

(declare-fun e!4098298 () Bool)

(assert (=> b!6789815 (= e!4098298 e!4098294)))

(declare-fun b!6789816 () Bool)

(assert (=> b!6789816 (= e!4098295 (matchRSpec!3710 (regTwo!33731 (regOne!33731 lt!2445914)) s!2326))))

(declare-fun bm!616495 () Bool)

(declare-fun call!616501 () Bool)

(assert (=> bm!616495 (= call!616501 (Exists!3677 (ite c!1261917 lambda!382453 lambda!382454)))))

(assert (=> b!6789818 (= e!4098296 call!616501)))

(declare-fun b!6789819 () Bool)

(declare-fun e!4098297 () Bool)

(declare-fun call!616500 () Bool)

(assert (=> b!6789819 (= e!4098297 call!616500)))

(declare-fun b!6789820 () Bool)

(declare-fun c!1261918 () Bool)

(assert (=> b!6789820 (= c!1261918 ((_ is ElementMatch!16609) (regOne!33731 lt!2445914)))))

(declare-fun e!4098293 () Bool)

(assert (=> b!6789820 (= e!4098293 e!4098298)))

(declare-fun b!6789821 () Bool)

(assert (=> b!6789821 (= e!4098298 (= s!2326 (Cons!66003 (c!1261391 (regOne!33731 lt!2445914)) Nil!66003)))))

(declare-fun b!6789822 () Bool)

(declare-fun res!2775025 () Bool)

(declare-fun e!4098292 () Bool)

(assert (=> b!6789822 (=> res!2775025 e!4098292)))

(assert (=> b!6789822 (= res!2775025 call!616500)))

(assert (=> b!6789822 (= e!4098296 e!4098292)))

(declare-fun bm!616496 () Bool)

(assert (=> bm!616496 (= call!616500 (isEmpty!38370 s!2326))))

(declare-fun b!6789823 () Bool)

(assert (=> b!6789823 (= e!4098297 e!4098293)))

(declare-fun res!2775023 () Bool)

(assert (=> b!6789823 (= res!2775023 (not ((_ is EmptyLang!16609) (regOne!33731 lt!2445914))))))

(assert (=> b!6789823 (=> (not res!2775023) (not e!4098293))))

(assert (=> b!6789817 (= e!4098292 call!616501)))

(declare-fun d!2133494 () Bool)

(declare-fun c!1261920 () Bool)

(assert (=> d!2133494 (= c!1261920 ((_ is EmptyExpr!16609) (regOne!33731 lt!2445914)))))

(assert (=> d!2133494 (= (matchRSpec!3710 (regOne!33731 lt!2445914) s!2326) e!4098297)))

(assert (= (and d!2133494 c!1261920) b!6789819))

(assert (= (and d!2133494 (not c!1261920)) b!6789823))

(assert (= (and b!6789823 res!2775023) b!6789820))

(assert (= (and b!6789820 c!1261918) b!6789821))

(assert (= (and b!6789820 (not c!1261918)) b!6789815))

(assert (= (and b!6789815 c!1261919) b!6789813))

(assert (= (and b!6789815 (not c!1261919)) b!6789814))

(assert (= (and b!6789813 (not res!2775024)) b!6789816))

(assert (= (and b!6789814 c!1261917) b!6789822))

(assert (= (and b!6789814 (not c!1261917)) b!6789818))

(assert (= (and b!6789822 (not res!2775025)) b!6789817))

(assert (= (or b!6789817 b!6789818) bm!616495))

(assert (= (or b!6789819 b!6789822) bm!616496))

(declare-fun m!7537632 () Bool)

(assert (=> b!6789813 m!7537632))

(declare-fun m!7537634 () Bool)

(assert (=> b!6789816 m!7537634))

(declare-fun m!7537636 () Bool)

(assert (=> bm!616495 m!7537636))

(assert (=> bm!616496 m!7535918))

(assert (=> b!6788204 d!2133494))

(declare-fun bs!1809166 () Bool)

(declare-fun d!2133496 () Bool)

(assert (= bs!1809166 (and d!2133496 d!2133194)))

(declare-fun lambda!382455 () Int)

(assert (=> bs!1809166 (= lambda!382455 lambda!382417)))

(declare-fun bs!1809167 () Bool)

(assert (= bs!1809167 (and d!2133496 d!2133282)))

(assert (=> bs!1809167 (= lambda!382455 lambda!382432)))

(assert (=> d!2133496 (= (nullableZipper!2316 lt!2445905) (exists!2730 lt!2445905 lambda!382455))))

(declare-fun bs!1809168 () Bool)

(assert (= bs!1809168 d!2133496))

(declare-fun m!7537638 () Bool)

(assert (=> bs!1809168 m!7537638))

(assert (=> b!6788623 d!2133496))

(declare-fun d!2133498 () Bool)

(assert (=> d!2133498 true))

(declare-fun setRes!46474 () Bool)

(assert (=> d!2133498 setRes!46474))

(declare-fun condSetEmpty!46474 () Bool)

(declare-fun res!2775026 () (InoxSet Context!11986))

(assert (=> d!2133498 (= condSetEmpty!46474 (= res!2775026 ((as const (Array Context!11986 Bool)) false)))))

(assert (=> d!2133498 (= (choose!50556 lt!2445908 lambda!382297) res!2775026)))

(declare-fun setIsEmpty!46474 () Bool)

(assert (=> setIsEmpty!46474 setRes!46474))

(declare-fun setNonEmpty!46474 () Bool)

(declare-fun setElem!46474 () Context!11986)

(declare-fun tp!1859641 () Bool)

(declare-fun e!4098299 () Bool)

(assert (=> setNonEmpty!46474 (= setRes!46474 (and tp!1859641 (inv!84769 setElem!46474) e!4098299))))

(declare-fun setRest!46474 () (InoxSet Context!11986))

(assert (=> setNonEmpty!46474 (= res!2775026 ((_ map or) (store ((as const (Array Context!11986 Bool)) false) setElem!46474 true) setRest!46474))))

(declare-fun b!6789824 () Bool)

(declare-fun tp!1859640 () Bool)

(assert (=> b!6789824 (= e!4098299 tp!1859640)))

(assert (= (and d!2133498 condSetEmpty!46474) setIsEmpty!46474))

(assert (= (and d!2133498 (not condSetEmpty!46474)) setNonEmpty!46474))

(assert (= setNonEmpty!46474 b!6789824))

(declare-fun m!7537640 () Bool)

(assert (=> setNonEmpty!46474 m!7537640))

(assert (=> d!2132916 d!2133498))

(declare-fun d!2133500 () Bool)

(declare-fun c!1261921 () Bool)

(assert (=> d!2133500 (= c!1261921 (isEmpty!38370 (tail!12715 s!2326)))))

(declare-fun e!4098300 () Bool)

(assert (=> d!2133500 (= (matchZipper!2595 (derivationStepZipper!2553 z!1189 (head!13630 s!2326)) (tail!12715 s!2326)) e!4098300)))

(declare-fun b!6789825 () Bool)

(assert (=> b!6789825 (= e!4098300 (nullableZipper!2316 (derivationStepZipper!2553 z!1189 (head!13630 s!2326))))))

(declare-fun b!6789826 () Bool)

(assert (=> b!6789826 (= e!4098300 (matchZipper!2595 (derivationStepZipper!2553 (derivationStepZipper!2553 z!1189 (head!13630 s!2326)) (head!13630 (tail!12715 s!2326))) (tail!12715 (tail!12715 s!2326))))))

(assert (= (and d!2133500 c!1261921) b!6789825))

(assert (= (and d!2133500 (not c!1261921)) b!6789826))

(assert (=> d!2133500 m!7536172))

(assert (=> d!2133500 m!7536176))

(assert (=> b!6789825 m!7536422))

(declare-fun m!7537642 () Bool)

(assert (=> b!6789825 m!7537642))

(assert (=> b!6789826 m!7536172))

(assert (=> b!6789826 m!7537230))

(assert (=> b!6789826 m!7536422))

(assert (=> b!6789826 m!7537230))

(declare-fun m!7537644 () Bool)

(assert (=> b!6789826 m!7537644))

(assert (=> b!6789826 m!7536172))

(assert (=> b!6789826 m!7537234))

(assert (=> b!6789826 m!7537644))

(assert (=> b!6789826 m!7537234))

(declare-fun m!7537646 () Bool)

(assert (=> b!6789826 m!7537646))

(assert (=> b!6788597 d!2133500))

(declare-fun bs!1809169 () Bool)

(declare-fun d!2133502 () Bool)

(assert (= bs!1809169 (and d!2133502 d!2132976)))

(declare-fun lambda!382456 () Int)

(assert (=> bs!1809169 (= (= (head!13630 s!2326) (h!72451 s!2326)) (= lambda!382456 lambda!382379))))

(declare-fun bs!1809170 () Bool)

(assert (= bs!1809170 (and d!2133502 b!6787899)))

(assert (=> bs!1809170 (= (= (head!13630 s!2326) (h!72451 s!2326)) (= lambda!382456 lambda!382297))))

(declare-fun bs!1809171 () Bool)

(assert (= bs!1809171 (and d!2133502 d!2133432)))

(assert (=> bs!1809171 (= lambda!382456 lambda!382446)))

(declare-fun bs!1809172 () Bool)

(assert (= bs!1809172 (and d!2133502 d!2132910)))

(assert (=> bs!1809172 (= (= (head!13630 s!2326) (h!72451 s!2326)) (= lambda!382456 lambda!382355))))

(declare-fun bs!1809173 () Bool)

(assert (= bs!1809173 (and d!2133502 d!2132934)))

(assert (=> bs!1809173 (= (= (head!13630 s!2326) (h!72451 s!2326)) (= lambda!382456 lambda!382358))))

(assert (=> d!2133502 true))

(assert (=> d!2133502 (= (derivationStepZipper!2553 z!1189 (head!13630 s!2326)) (flatMap!2090 z!1189 lambda!382456))))

(declare-fun bs!1809174 () Bool)

(assert (= bs!1809174 d!2133502))

(declare-fun m!7537648 () Bool)

(assert (=> bs!1809174 m!7537648))

(assert (=> b!6788597 d!2133502))

(assert (=> b!6788597 d!2133230))

(assert (=> b!6788597 d!2133294))

(declare-fun b!6789827 () Bool)

(declare-fun res!2775031 () Bool)

(declare-fun e!4098304 () Bool)

(assert (=> b!6789827 (=> res!2775031 e!4098304)))

(assert (=> b!6789827 (= res!2775031 (not ((_ is Concat!25454) lt!2445931)))))

(declare-fun e!4098302 () Bool)

(assert (=> b!6789827 (= e!4098302 e!4098304)))

(declare-fun b!6789828 () Bool)

(declare-fun e!4098306 () Bool)

(assert (=> b!6789828 (= e!4098304 e!4098306)))

(declare-fun res!2775027 () Bool)

(assert (=> b!6789828 (=> (not res!2775027) (not e!4098306))))

(declare-fun call!616504 () Bool)

(assert (=> b!6789828 (= res!2775027 call!616504)))

(declare-fun b!6789829 () Bool)

(declare-fun e!4098301 () Bool)

(declare-fun call!616503 () Bool)

(assert (=> b!6789829 (= e!4098301 call!616503)))

(declare-fun b!6789830 () Bool)

(declare-fun call!616502 () Bool)

(assert (=> b!6789830 (= e!4098306 call!616502)))

(declare-fun d!2133504 () Bool)

(declare-fun res!2775030 () Bool)

(declare-fun e!4098303 () Bool)

(assert (=> d!2133504 (=> res!2775030 e!4098303)))

(assert (=> d!2133504 (= res!2775030 ((_ is ElementMatch!16609) lt!2445931))))

(assert (=> d!2133504 (= (validRegex!8345 lt!2445931) e!4098303)))

(declare-fun bm!616497 () Bool)

(declare-fun c!1261923 () Bool)

(declare-fun c!1261922 () Bool)

(assert (=> bm!616497 (= call!616503 (validRegex!8345 (ite c!1261922 (reg!16938 lt!2445931) (ite c!1261923 (regOne!33731 lt!2445931) (regOne!33730 lt!2445931)))))))

(declare-fun bm!616498 () Bool)

(assert (=> bm!616498 (= call!616502 (validRegex!8345 (ite c!1261923 (regTwo!33731 lt!2445931) (regTwo!33730 lt!2445931))))))

(declare-fun b!6789831 () Bool)

(declare-fun e!4098305 () Bool)

(assert (=> b!6789831 (= e!4098305 call!616502)))

(declare-fun b!6789832 () Bool)

(declare-fun res!2775028 () Bool)

(assert (=> b!6789832 (=> (not res!2775028) (not e!4098305))))

(assert (=> b!6789832 (= res!2775028 call!616504)))

(assert (=> b!6789832 (= e!4098302 e!4098305)))

(declare-fun bm!616499 () Bool)

(assert (=> bm!616499 (= call!616504 call!616503)))

(declare-fun b!6789833 () Bool)

(declare-fun e!4098307 () Bool)

(assert (=> b!6789833 (= e!4098307 e!4098302)))

(assert (=> b!6789833 (= c!1261923 ((_ is Union!16609) lt!2445931))))

(declare-fun b!6789834 () Bool)

(assert (=> b!6789834 (= e!4098303 e!4098307)))

(assert (=> b!6789834 (= c!1261922 ((_ is Star!16609) lt!2445931))))

(declare-fun b!6789835 () Bool)

(assert (=> b!6789835 (= e!4098307 e!4098301)))

(declare-fun res!2775029 () Bool)

(assert (=> b!6789835 (= res!2775029 (not (nullable!6588 (reg!16938 lt!2445931))))))

(assert (=> b!6789835 (=> (not res!2775029) (not e!4098301))))

(assert (= (and d!2133504 (not res!2775030)) b!6789834))

(assert (= (and b!6789834 c!1261922) b!6789835))

(assert (= (and b!6789834 (not c!1261922)) b!6789833))

(assert (= (and b!6789835 res!2775029) b!6789829))

(assert (= (and b!6789833 c!1261923) b!6789832))

(assert (= (and b!6789833 (not c!1261923)) b!6789827))

(assert (= (and b!6789832 res!2775028) b!6789831))

(assert (= (and b!6789827 (not res!2775031)) b!6789828))

(assert (= (and b!6789828 res!2775027) b!6789830))

(assert (= (or b!6789831 b!6789830) bm!616498))

(assert (= (or b!6789832 b!6789828) bm!616499))

(assert (= (or b!6789829 bm!616499) bm!616497))

(declare-fun m!7537650 () Bool)

(assert (=> bm!616497 m!7537650))

(declare-fun m!7537652 () Bool)

(assert (=> bm!616498 m!7537652))

(declare-fun m!7537654 () Bool)

(assert (=> b!6789835 m!7537654))

(assert (=> d!2132794 d!2133504))

(declare-fun bs!1809175 () Bool)

(declare-fun d!2133506 () Bool)

(assert (= bs!1809175 (and d!2133506 d!2133356)))

(declare-fun lambda!382457 () Int)

(assert (=> bs!1809175 (= lambda!382457 lambda!382435)))

(declare-fun bs!1809176 () Bool)

(assert (= bs!1809176 (and d!2133506 d!2133386)))

(assert (=> bs!1809176 (= lambda!382457 lambda!382437)))

(declare-fun bs!1809177 () Bool)

(assert (= bs!1809177 (and d!2133506 d!2132992)))

(assert (=> bs!1809177 (= lambda!382457 lambda!382381)))

(declare-fun bs!1809178 () Bool)

(assert (= bs!1809178 (and d!2133506 d!2132890)))

(assert (=> bs!1809178 (= lambda!382457 lambda!382348)))

(declare-fun bs!1809179 () Bool)

(assert (= bs!1809179 (and d!2133506 d!2132790)))

(assert (=> bs!1809179 (= lambda!382457 lambda!382300)))

(declare-fun bs!1809180 () Bool)

(assert (= bs!1809180 (and d!2133506 d!2133256)))

(assert (=> bs!1809180 (= lambda!382457 lambda!382426)))

(declare-fun bs!1809181 () Bool)

(assert (= bs!1809181 (and d!2133506 d!2133200)))

(assert (=> bs!1809181 (= lambda!382457 lambda!382419)))

(declare-fun bs!1809182 () Bool)

(assert (= bs!1809182 (and d!2133506 d!2133426)))

(assert (=> bs!1809182 (= lambda!382457 lambda!382444)))

(declare-fun bs!1809183 () Bool)

(assert (= bs!1809183 (and d!2133506 d!2133354)))

(assert (=> bs!1809183 (= lambda!382457 lambda!382434)))

(declare-fun bs!1809184 () Bool)

(assert (= bs!1809184 (and d!2133506 d!2132792)))

(assert (=> bs!1809184 (= lambda!382457 lambda!382303)))

(declare-fun bs!1809185 () Bool)

(assert (= bs!1809185 (and d!2133506 d!2132796)))

(assert (=> bs!1809185 (= lambda!382457 lambda!382306)))

(declare-fun bs!1809186 () Bool)

(assert (= bs!1809186 (and d!2133506 d!2133456)))

(assert (=> bs!1809186 (= lambda!382457 lambda!382450)))

(declare-fun bs!1809187 () Bool)

(assert (= bs!1809187 (and d!2133506 d!2133384)))

(assert (=> bs!1809187 (= lambda!382457 lambda!382436)))

(declare-fun bs!1809188 () Bool)

(assert (= bs!1809188 (and d!2133506 d!2133428)))

(assert (=> bs!1809188 (= lambda!382457 lambda!382445)))

(declare-fun bs!1809189 () Bool)

(assert (= bs!1809189 (and d!2133506 d!2132988)))

(assert (=> bs!1809189 (= lambda!382457 lambda!382380)))

(declare-fun b!6789836 () Bool)

(declare-fun e!4098309 () Regex!16609)

(assert (=> b!6789836 (= e!4098309 (Union!16609 (h!72450 (unfocusZipperList!2030 (Cons!66004 lt!2445922 Nil!66004))) (generalisedUnion!2453 (t!379847 (unfocusZipperList!2030 (Cons!66004 lt!2445922 Nil!66004))))))))

(declare-fun b!6789837 () Bool)

(declare-fun e!4098311 () Bool)

(declare-fun lt!2446077 () Regex!16609)

(assert (=> b!6789837 (= e!4098311 (= lt!2446077 (head!13629 (unfocusZipperList!2030 (Cons!66004 lt!2445922 Nil!66004)))))))

(declare-fun b!6789838 () Bool)

(declare-fun e!4098308 () Bool)

(assert (=> b!6789838 (= e!4098308 (isEmptyLang!1974 lt!2446077))))

(declare-fun b!6789839 () Bool)

(assert (=> b!6789839 (= e!4098309 EmptyLang!16609)))

(declare-fun b!6789840 () Bool)

(assert (=> b!6789840 (= e!4098308 e!4098311)))

(declare-fun c!1261925 () Bool)

(assert (=> b!6789840 (= c!1261925 (isEmpty!38372 (tail!12714 (unfocusZipperList!2030 (Cons!66004 lt!2445922 Nil!66004)))))))

(declare-fun b!6789841 () Bool)

(declare-fun e!4098312 () Bool)

(assert (=> b!6789841 (= e!4098312 (isEmpty!38372 (t!379847 (unfocusZipperList!2030 (Cons!66004 lt!2445922 Nil!66004)))))))

(declare-fun b!6789842 () Bool)

(declare-fun e!4098313 () Regex!16609)

(assert (=> b!6789842 (= e!4098313 (h!72450 (unfocusZipperList!2030 (Cons!66004 lt!2445922 Nil!66004))))))

(declare-fun e!4098310 () Bool)

(assert (=> d!2133506 e!4098310))

(declare-fun res!2775033 () Bool)

(assert (=> d!2133506 (=> (not res!2775033) (not e!4098310))))

(assert (=> d!2133506 (= res!2775033 (validRegex!8345 lt!2446077))))

(assert (=> d!2133506 (= lt!2446077 e!4098313)))

(declare-fun c!1261926 () Bool)

(assert (=> d!2133506 (= c!1261926 e!4098312)))

(declare-fun res!2775032 () Bool)

(assert (=> d!2133506 (=> (not res!2775032) (not e!4098312))))

(assert (=> d!2133506 (= res!2775032 ((_ is Cons!66002) (unfocusZipperList!2030 (Cons!66004 lt!2445922 Nil!66004))))))

(assert (=> d!2133506 (forall!15801 (unfocusZipperList!2030 (Cons!66004 lt!2445922 Nil!66004)) lambda!382457)))

(assert (=> d!2133506 (= (generalisedUnion!2453 (unfocusZipperList!2030 (Cons!66004 lt!2445922 Nil!66004))) lt!2446077)))

(declare-fun b!6789843 () Bool)

(assert (=> b!6789843 (= e!4098310 e!4098308)))

(declare-fun c!1261924 () Bool)

(assert (=> b!6789843 (= c!1261924 (isEmpty!38372 (unfocusZipperList!2030 (Cons!66004 lt!2445922 Nil!66004))))))

(declare-fun b!6789844 () Bool)

(assert (=> b!6789844 (= e!4098311 (isUnion!1404 lt!2446077))))

(declare-fun b!6789845 () Bool)

(assert (=> b!6789845 (= e!4098313 e!4098309)))

(declare-fun c!1261927 () Bool)

(assert (=> b!6789845 (= c!1261927 ((_ is Cons!66002) (unfocusZipperList!2030 (Cons!66004 lt!2445922 Nil!66004))))))

(assert (= (and d!2133506 res!2775032) b!6789841))

(assert (= (and d!2133506 c!1261926) b!6789842))

(assert (= (and d!2133506 (not c!1261926)) b!6789845))

(assert (= (and b!6789845 c!1261927) b!6789836))

(assert (= (and b!6789845 (not c!1261927)) b!6789839))

(assert (= (and d!2133506 res!2775033) b!6789843))

(assert (= (and b!6789843 c!1261924) b!6789838))

(assert (= (and b!6789843 (not c!1261924)) b!6789840))

(assert (= (and b!6789840 c!1261925) b!6789837))

(assert (= (and b!6789840 (not c!1261925)) b!6789844))

(assert (=> b!6789840 m!7535982))

(declare-fun m!7537656 () Bool)

(assert (=> b!6789840 m!7537656))

(assert (=> b!6789840 m!7537656))

(declare-fun m!7537658 () Bool)

(assert (=> b!6789840 m!7537658))

(declare-fun m!7537660 () Bool)

(assert (=> d!2133506 m!7537660))

(assert (=> d!2133506 m!7535982))

(declare-fun m!7537662 () Bool)

(assert (=> d!2133506 m!7537662))

(assert (=> b!6789837 m!7535982))

(declare-fun m!7537664 () Bool)

(assert (=> b!6789837 m!7537664))

(declare-fun m!7537666 () Bool)

(assert (=> b!6789841 m!7537666))

(declare-fun m!7537668 () Bool)

(assert (=> b!6789836 m!7537668))

(assert (=> b!6789843 m!7535982))

(declare-fun m!7537670 () Bool)

(assert (=> b!6789843 m!7537670))

(declare-fun m!7537672 () Bool)

(assert (=> b!6789838 m!7537672))

(declare-fun m!7537674 () Bool)

(assert (=> b!6789844 m!7537674))

(assert (=> d!2132794 d!2133506))

(declare-fun bs!1809190 () Bool)

(declare-fun d!2133508 () Bool)

(assert (= bs!1809190 (and d!2133508 d!2133356)))

(declare-fun lambda!382458 () Int)

(assert (=> bs!1809190 (= lambda!382458 lambda!382435)))

(declare-fun bs!1809191 () Bool)

(assert (= bs!1809191 (and d!2133508 d!2133386)))

(assert (=> bs!1809191 (= lambda!382458 lambda!382437)))

(declare-fun bs!1809192 () Bool)

(assert (= bs!1809192 (and d!2133508 d!2132992)))

(assert (=> bs!1809192 (= lambda!382458 lambda!382381)))

(declare-fun bs!1809193 () Bool)

(assert (= bs!1809193 (and d!2133508 d!2132890)))

(assert (=> bs!1809193 (= lambda!382458 lambda!382348)))

(declare-fun bs!1809194 () Bool)

(assert (= bs!1809194 (and d!2133508 d!2132790)))

(assert (=> bs!1809194 (= lambda!382458 lambda!382300)))

(declare-fun bs!1809195 () Bool)

(assert (= bs!1809195 (and d!2133508 d!2133256)))

(assert (=> bs!1809195 (= lambda!382458 lambda!382426)))

(declare-fun bs!1809196 () Bool)

(assert (= bs!1809196 (and d!2133508 d!2133200)))

(assert (=> bs!1809196 (= lambda!382458 lambda!382419)))

(declare-fun bs!1809197 () Bool)

(assert (= bs!1809197 (and d!2133508 d!2133506)))

(assert (=> bs!1809197 (= lambda!382458 lambda!382457)))

(declare-fun bs!1809198 () Bool)

(assert (= bs!1809198 (and d!2133508 d!2133426)))

(assert (=> bs!1809198 (= lambda!382458 lambda!382444)))

(declare-fun bs!1809199 () Bool)

(assert (= bs!1809199 (and d!2133508 d!2133354)))

(assert (=> bs!1809199 (= lambda!382458 lambda!382434)))

(declare-fun bs!1809200 () Bool)

(assert (= bs!1809200 (and d!2133508 d!2132792)))

(assert (=> bs!1809200 (= lambda!382458 lambda!382303)))

(declare-fun bs!1809201 () Bool)

(assert (= bs!1809201 (and d!2133508 d!2132796)))

(assert (=> bs!1809201 (= lambda!382458 lambda!382306)))

(declare-fun bs!1809202 () Bool)

(assert (= bs!1809202 (and d!2133508 d!2133456)))

(assert (=> bs!1809202 (= lambda!382458 lambda!382450)))

(declare-fun bs!1809203 () Bool)

(assert (= bs!1809203 (and d!2133508 d!2133384)))

(assert (=> bs!1809203 (= lambda!382458 lambda!382436)))

(declare-fun bs!1809204 () Bool)

(assert (= bs!1809204 (and d!2133508 d!2133428)))

(assert (=> bs!1809204 (= lambda!382458 lambda!382445)))

(declare-fun bs!1809205 () Bool)

(assert (= bs!1809205 (and d!2133508 d!2132988)))

(assert (=> bs!1809205 (= lambda!382458 lambda!382380)))

(declare-fun lt!2446078 () List!66126)

(assert (=> d!2133508 (forall!15801 lt!2446078 lambda!382458)))

(declare-fun e!4098314 () List!66126)

(assert (=> d!2133508 (= lt!2446078 e!4098314)))

(declare-fun c!1261928 () Bool)

(assert (=> d!2133508 (= c!1261928 ((_ is Cons!66004) (Cons!66004 lt!2445922 Nil!66004)))))

(assert (=> d!2133508 (= (unfocusZipperList!2030 (Cons!66004 lt!2445922 Nil!66004)) lt!2446078)))

(declare-fun b!6789846 () Bool)

(assert (=> b!6789846 (= e!4098314 (Cons!66002 (generalisedConcat!2206 (exprs!6493 (h!72452 (Cons!66004 lt!2445922 Nil!66004)))) (unfocusZipperList!2030 (t!379849 (Cons!66004 lt!2445922 Nil!66004)))))))

(declare-fun b!6789847 () Bool)

(assert (=> b!6789847 (= e!4098314 Nil!66002)))

(assert (= (and d!2133508 c!1261928) b!6789846))

(assert (= (and d!2133508 (not c!1261928)) b!6789847))

(declare-fun m!7537676 () Bool)

(assert (=> d!2133508 m!7537676))

(declare-fun m!7537678 () Bool)

(assert (=> b!6789846 m!7537678))

(declare-fun m!7537680 () Bool)

(assert (=> b!6789846 m!7537680))

(assert (=> d!2132794 d!2133508))

(declare-fun d!2133510 () Bool)

(assert (=> d!2133510 (= (Exists!3677 lambda!382372) (choose!50559 lambda!382372))))

(declare-fun bs!1809206 () Bool)

(assert (= bs!1809206 d!2133510))

(declare-fun m!7537682 () Bool)

(assert (=> bs!1809206 m!7537682))

(assert (=> d!2132942 d!2133510))

(declare-fun d!2133512 () Bool)

(assert (=> d!2133512 (= (Exists!3677 lambda!382373) (choose!50559 lambda!382373))))

(declare-fun bs!1809207 () Bool)

(assert (= bs!1809207 d!2133512))

(declare-fun m!7537684 () Bool)

(assert (=> bs!1809207 m!7537684))

(assert (=> d!2132942 d!2133512))

(declare-fun bs!1809208 () Bool)

(declare-fun d!2133514 () Bool)

(assert (= bs!1809208 (and d!2133514 d!2133412)))

(declare-fun lambda!382463 () Int)

(assert (=> bs!1809208 (= (= (Star!16609 (reg!16938 r!7292)) r!7292) (= lambda!382463 lambda!382442))))

(declare-fun bs!1809209 () Bool)

(assert (= bs!1809209 (and d!2133514 d!2132942)))

(assert (=> bs!1809209 (= lambda!382463 lambda!382372)))

(declare-fun bs!1809210 () Bool)

(assert (= bs!1809210 (and d!2133514 b!6789226)))

(assert (=> bs!1809210 (not (= lambda!382463 lambda!382424))))

(declare-fun bs!1809211 () Bool)

(assert (= bs!1809211 (and d!2133514 b!6789818)))

(assert (=> bs!1809211 (not (= lambda!382463 lambda!382454))))

(assert (=> bs!1809208 (not (= lambda!382463 lambda!382443))))

(declare-fun bs!1809212 () Bool)

(assert (= bs!1809212 (and d!2133514 b!6789795)))

(assert (=> bs!1809212 (not (= lambda!382463 lambda!382451))))

(declare-fun bs!1809213 () Bool)

(assert (= bs!1809213 (and d!2133514 b!6789277)))

(assert (=> bs!1809213 (not (= lambda!382463 lambda!382430))))

(declare-fun bs!1809214 () Bool)

(assert (= bs!1809214 (and d!2133514 b!6787882)))

(assert (=> bs!1809214 (not (= lambda!382463 lambda!382296))))

(declare-fun bs!1809215 () Bool)

(assert (= bs!1809215 (and d!2133514 d!2133434)))

(assert (=> bs!1809215 (= (= (Star!16609 (reg!16938 r!7292)) r!7292) (= lambda!382463 lambda!382449))))

(declare-fun bs!1809216 () Bool)

(assert (= bs!1809216 (and d!2133514 b!6788208)))

(assert (=> bs!1809216 (not (= lambda!382463 lambda!382329))))

(assert (=> bs!1809214 (= (= (Star!16609 (reg!16938 r!7292)) r!7292) (= lambda!382463 lambda!382294))))

(declare-fun bs!1809217 () Bool)

(assert (= bs!1809217 (and d!2133514 b!6788209)))

(assert (=> bs!1809217 (not (= lambda!382463 lambda!382330))))

(declare-fun bs!1809218 () Bool)

(assert (= bs!1809218 (and d!2133514 b!6789225)))

(assert (=> bs!1809218 (not (= lambda!382463 lambda!382423))))

(declare-fun bs!1809219 () Bool)

(assert (= bs!1809219 (and d!2133514 b!6789796)))

(assert (=> bs!1809219 (not (= lambda!382463 lambda!382452))))

(declare-fun bs!1809220 () Bool)

(assert (= bs!1809220 (and d!2133514 b!6788602)))

(assert (=> bs!1809220 (not (= lambda!382463 lambda!382377))))

(declare-fun bs!1809221 () Bool)

(assert (= bs!1809221 (and d!2133514 d!2132940)))

(assert (=> bs!1809221 (not (= lambda!382463 lambda!382364))))

(declare-fun bs!1809222 () Bool)

(assert (= bs!1809222 (and d!2133514 d!2132962)))

(assert (=> bs!1809222 (= (= (Star!16609 (reg!16938 r!7292)) r!7292) (= lambda!382463 lambda!382376))))

(declare-fun bs!1809223 () Bool)

(assert (= bs!1809223 (and d!2133514 b!6789276)))

(assert (=> bs!1809223 (not (= lambda!382463 lambda!382428))))

(assert (=> bs!1809214 (not (= lambda!382463 lambda!382295))))

(declare-fun bs!1809224 () Bool)

(assert (= bs!1809224 (and d!2133514 b!6789817)))

(assert (=> bs!1809224 (not (= lambda!382463 lambda!382453))))

(assert (=> bs!1809221 (= (= (Star!16609 (reg!16938 r!7292)) r!7292) (= lambda!382463 lambda!382363))))

(assert (=> bs!1809209 (not (= lambda!382463 lambda!382373))))

(declare-fun bs!1809225 () Bool)

(assert (= bs!1809225 (and d!2133514 b!6788603)))

(assert (=> bs!1809225 (not (= lambda!382463 lambda!382378))))

(assert (=> d!2133514 true))

(assert (=> d!2133514 true))

(declare-fun lambda!382464 () Int)

(assert (=> bs!1809208 (not (= lambda!382464 lambda!382442))))

(assert (=> bs!1809209 (not (= lambda!382464 lambda!382372))))

(assert (=> bs!1809210 (not (= lambda!382464 lambda!382424))))

(assert (=> bs!1809211 (not (= lambda!382464 lambda!382454))))

(assert (=> bs!1809208 (not (= lambda!382464 lambda!382443))))

(assert (=> bs!1809212 (= (and (= (reg!16938 r!7292) (reg!16938 (regOne!33731 r!7292))) (= (Star!16609 (reg!16938 r!7292)) (regOne!33731 r!7292))) (= lambda!382464 lambda!382451))))

(assert (=> bs!1809213 (not (= lambda!382464 lambda!382430))))

(assert (=> bs!1809214 (not (= lambda!382464 lambda!382296))))

(assert (=> bs!1809215 (not (= lambda!382464 lambda!382449))))

(assert (=> bs!1809214 (not (= lambda!382464 lambda!382294))))

(assert (=> bs!1809217 (not (= lambda!382464 lambda!382330))))

(assert (=> bs!1809218 (= (and (= (reg!16938 r!7292) (reg!16938 (regTwo!33731 lt!2445914))) (= (Star!16609 (reg!16938 r!7292)) (regTwo!33731 lt!2445914))) (= lambda!382464 lambda!382423))))

(assert (=> bs!1809219 (not (= lambda!382464 lambda!382452))))

(assert (=> bs!1809220 (= (= (Star!16609 (reg!16938 r!7292)) r!7292) (= lambda!382464 lambda!382377))))

(assert (=> bs!1809221 (not (= lambda!382464 lambda!382364))))

(assert (=> bs!1809222 (not (= lambda!382464 lambda!382376))))

(assert (=> bs!1809223 (= (and (= (reg!16938 r!7292) (reg!16938 (regTwo!33731 r!7292))) (= (Star!16609 (reg!16938 r!7292)) (regTwo!33731 r!7292))) (= lambda!382464 lambda!382428))))

(assert (=> bs!1809214 (= (= (Star!16609 (reg!16938 r!7292)) r!7292) (= lambda!382464 lambda!382295))))

(assert (=> bs!1809224 (= (and (= (reg!16938 r!7292) (reg!16938 (regOne!33731 lt!2445914))) (= (Star!16609 (reg!16938 r!7292)) (regOne!33731 lt!2445914))) (= lambda!382464 lambda!382453))))

(assert (=> bs!1809221 (not (= lambda!382464 lambda!382363))))

(assert (=> bs!1809209 (= lambda!382464 lambda!382373)))

(assert (=> bs!1809225 (not (= lambda!382464 lambda!382378))))

(declare-fun bs!1809226 () Bool)

(assert (= bs!1809226 d!2133514))

(assert (=> bs!1809226 (not (= lambda!382464 lambda!382463))))

(assert (=> bs!1809216 (= (and (= (reg!16938 r!7292) (reg!16938 lt!2445914)) (= (Star!16609 (reg!16938 r!7292)) lt!2445914)) (= lambda!382464 lambda!382329))))

(assert (=> d!2133514 true))

(assert (=> d!2133514 true))

(assert (=> d!2133514 (= (Exists!3677 lambda!382463) (Exists!3677 lambda!382464))))

(assert (=> d!2133514 true))

(declare-fun _$91!794 () Unit!159909)

(assert (=> d!2133514 (= (choose!50561 (reg!16938 r!7292) s!2326) _$91!794)))

(declare-fun m!7537686 () Bool)

(assert (=> bs!1809226 m!7537686))

(declare-fun m!7537688 () Bool)

(assert (=> bs!1809226 m!7537688))

(assert (=> d!2132942 d!2133514))

(assert (=> d!2132942 d!2133414))

(declare-fun b!6789858 () Bool)

(declare-fun e!4098319 () Bool)

(declare-fun e!4098320 () Bool)

(assert (=> b!6789858 (= e!4098319 e!4098320)))

(declare-fun res!2775049 () Bool)

(assert (=> b!6789858 (=> res!2775049 e!4098320)))

(declare-fun call!616505 () Bool)

(assert (=> b!6789858 (= res!2775049 call!616505)))

(declare-fun b!6789859 () Bool)

(declare-fun e!4098325 () Bool)

(assert (=> b!6789859 (= e!4098325 e!4098319)))

(declare-fun res!2775051 () Bool)

(assert (=> b!6789859 (=> (not res!2775051) (not e!4098319))))

(declare-fun lt!2446079 () Bool)

(assert (=> b!6789859 (= res!2775051 (not lt!2446079))))

(declare-fun d!2133516 () Bool)

(declare-fun e!4098321 () Bool)

(assert (=> d!2133516 e!4098321))

(declare-fun c!1261930 () Bool)

(assert (=> d!2133516 (= c!1261930 ((_ is EmptyExpr!16609) (derivativeStep!5273 r!7292 (head!13630 s!2326))))))

(declare-fun e!4098322 () Bool)

(assert (=> d!2133516 (= lt!2446079 e!4098322)))

(declare-fun c!1261931 () Bool)

(assert (=> d!2133516 (= c!1261931 (isEmpty!38370 (tail!12715 s!2326)))))

(assert (=> d!2133516 (validRegex!8345 (derivativeStep!5273 r!7292 (head!13630 s!2326)))))

(assert (=> d!2133516 (= (matchR!8792 (derivativeStep!5273 r!7292 (head!13630 s!2326)) (tail!12715 s!2326)) lt!2446079)))

(declare-fun b!6789860 () Bool)

(declare-fun res!2775050 () Bool)

(assert (=> b!6789860 (=> res!2775050 e!4098325)))

(assert (=> b!6789860 (= res!2775050 (not ((_ is ElementMatch!16609) (derivativeStep!5273 r!7292 (head!13630 s!2326)))))))

(declare-fun e!4098323 () Bool)

(assert (=> b!6789860 (= e!4098323 e!4098325)))

(declare-fun b!6789861 () Bool)

(assert (=> b!6789861 (= e!4098322 (matchR!8792 (derivativeStep!5273 (derivativeStep!5273 r!7292 (head!13630 s!2326)) (head!13630 (tail!12715 s!2326))) (tail!12715 (tail!12715 s!2326))))))

(declare-fun bm!616500 () Bool)

(assert (=> bm!616500 (= call!616505 (isEmpty!38370 (tail!12715 s!2326)))))

(declare-fun b!6789862 () Bool)

(declare-fun e!4098324 () Bool)

(assert (=> b!6789862 (= e!4098324 (= (head!13630 (tail!12715 s!2326)) (c!1261391 (derivativeStep!5273 r!7292 (head!13630 s!2326)))))))

(declare-fun b!6789863 () Bool)

(declare-fun res!2775048 () Bool)

(assert (=> b!6789863 (=> res!2775048 e!4098320)))

(assert (=> b!6789863 (= res!2775048 (not (isEmpty!38370 (tail!12715 (tail!12715 s!2326)))))))

(declare-fun b!6789864 () Bool)

(declare-fun res!2775046 () Bool)

(assert (=> b!6789864 (=> (not res!2775046) (not e!4098324))))

(assert (=> b!6789864 (= res!2775046 (not call!616505))))

(declare-fun b!6789865 () Bool)

(assert (=> b!6789865 (= e!4098321 (= lt!2446079 call!616505))))

(declare-fun b!6789866 () Bool)

(declare-fun res!2775044 () Bool)

(assert (=> b!6789866 (=> (not res!2775044) (not e!4098324))))

(assert (=> b!6789866 (= res!2775044 (isEmpty!38370 (tail!12715 (tail!12715 s!2326))))))

(declare-fun b!6789867 () Bool)

(assert (=> b!6789867 (= e!4098321 e!4098323)))

(declare-fun c!1261929 () Bool)

(assert (=> b!6789867 (= c!1261929 ((_ is EmptyLang!16609) (derivativeStep!5273 r!7292 (head!13630 s!2326))))))

(declare-fun b!6789868 () Bool)

(assert (=> b!6789868 (= e!4098322 (nullable!6588 (derivativeStep!5273 r!7292 (head!13630 s!2326))))))

(declare-fun b!6789869 () Bool)

(assert (=> b!6789869 (= e!4098320 (not (= (head!13630 (tail!12715 s!2326)) (c!1261391 (derivativeStep!5273 r!7292 (head!13630 s!2326))))))))

(declare-fun b!6789870 () Bool)

(declare-fun res!2775047 () Bool)

(assert (=> b!6789870 (=> res!2775047 e!4098325)))

(assert (=> b!6789870 (= res!2775047 e!4098324)))

(declare-fun res!2775045 () Bool)

(assert (=> b!6789870 (=> (not res!2775045) (not e!4098324))))

(assert (=> b!6789870 (= res!2775045 lt!2446079)))

(declare-fun b!6789871 () Bool)

(assert (=> b!6789871 (= e!4098323 (not lt!2446079))))

(assert (= (and d!2133516 c!1261931) b!6789868))

(assert (= (and d!2133516 (not c!1261931)) b!6789861))

(assert (= (and d!2133516 c!1261930) b!6789865))

(assert (= (and d!2133516 (not c!1261930)) b!6789867))

(assert (= (and b!6789867 c!1261929) b!6789871))

(assert (= (and b!6789867 (not c!1261929)) b!6789860))

(assert (= (and b!6789860 (not res!2775050)) b!6789870))

(assert (= (and b!6789870 res!2775045) b!6789864))

(assert (= (and b!6789864 res!2775046) b!6789866))

(assert (= (and b!6789866 res!2775044) b!6789862))

(assert (= (and b!6789870 (not res!2775047)) b!6789859))

(assert (= (and b!6789859 res!2775051) b!6789858))

(assert (= (and b!6789858 (not res!2775049)) b!6789863))

(assert (= (and b!6789863 (not res!2775048)) b!6789869))

(assert (= (or b!6789865 b!6789858 b!6789864) bm!616500))

(assert (=> b!6789861 m!7536172))

(assert (=> b!6789861 m!7537230))

(assert (=> b!6789861 m!7536432))

(assert (=> b!6789861 m!7537230))

(declare-fun m!7537690 () Bool)

(assert (=> b!6789861 m!7537690))

(assert (=> b!6789861 m!7536172))

(assert (=> b!6789861 m!7537234))

(assert (=> b!6789861 m!7537690))

(assert (=> b!6789861 m!7537234))

(declare-fun m!7537692 () Bool)

(assert (=> b!6789861 m!7537692))

(assert (=> b!6789869 m!7536172))

(assert (=> b!6789869 m!7537230))

(assert (=> b!6789866 m!7536172))

(assert (=> b!6789866 m!7537234))

(assert (=> b!6789866 m!7537234))

(assert (=> b!6789866 m!7537238))

(assert (=> d!2133516 m!7536172))

(assert (=> d!2133516 m!7536176))

(assert (=> d!2133516 m!7536432))

(declare-fun m!7537694 () Bool)

(assert (=> d!2133516 m!7537694))

(assert (=> b!6789863 m!7536172))

(assert (=> b!6789863 m!7537234))

(assert (=> b!6789863 m!7537234))

(assert (=> b!6789863 m!7537238))

(assert (=> b!6789868 m!7536432))

(declare-fun m!7537696 () Bool)

(assert (=> b!6789868 m!7537696))

(assert (=> bm!616500 m!7536172))

(assert (=> bm!616500 m!7536176))

(assert (=> b!6789862 m!7536172))

(assert (=> b!6789862 m!7537230))

(assert (=> b!6788612 d!2133516))

(declare-fun b!6789872 () Bool)

(declare-fun e!4098330 () Regex!16609)

(assert (=> b!6789872 (= e!4098330 (ite (= (head!13630 s!2326) (c!1261391 r!7292)) EmptyExpr!16609 EmptyLang!16609))))

(declare-fun b!6789873 () Bool)

(declare-fun c!1261936 () Bool)

(assert (=> b!6789873 (= c!1261936 (nullable!6588 (regOne!33730 r!7292)))))

(declare-fun e!4098329 () Regex!16609)

(declare-fun e!4098326 () Regex!16609)

(assert (=> b!6789873 (= e!4098329 e!4098326)))

(declare-fun b!6789874 () Bool)

(declare-fun call!616509 () Regex!16609)

(assert (=> b!6789874 (= e!4098329 (Concat!25454 call!616509 r!7292))))

(declare-fun c!1261934 () Bool)

(declare-fun bm!616502 () Bool)

(declare-fun call!616506 () Regex!16609)

(assert (=> bm!616502 (= call!616506 (derivativeStep!5273 (ite c!1261934 (regOne!33731 r!7292) (regOne!33730 r!7292)) (head!13630 s!2326)))))

(declare-fun b!6789875 () Bool)

(declare-fun e!4098328 () Regex!16609)

(assert (=> b!6789875 (= e!4098328 EmptyLang!16609)))

(declare-fun bm!616503 () Bool)

(declare-fun call!616508 () Regex!16609)

(assert (=> bm!616503 (= call!616509 call!616508)))

(declare-fun bm!616504 () Bool)

(declare-fun call!616507 () Regex!16609)

(assert (=> bm!616504 (= call!616507 call!616509)))

(declare-fun b!6789876 () Bool)

(assert (=> b!6789876 (= e!4098326 (Union!16609 (Concat!25454 call!616506 (regTwo!33730 r!7292)) call!616507))))

(declare-fun b!6789877 () Bool)

(assert (=> b!6789877 (= c!1261934 ((_ is Union!16609) r!7292))))

(declare-fun e!4098327 () Regex!16609)

(assert (=> b!6789877 (= e!4098330 e!4098327)))

(declare-fun b!6789878 () Bool)

(assert (=> b!6789878 (= e!4098328 e!4098330)))

(declare-fun c!1261932 () Bool)

(assert (=> b!6789878 (= c!1261932 ((_ is ElementMatch!16609) r!7292))))

(declare-fun b!6789879 () Bool)

(assert (=> b!6789879 (= e!4098327 (Union!16609 call!616506 call!616508))))

(declare-fun d!2133518 () Bool)

(declare-fun lt!2446080 () Regex!16609)

(assert (=> d!2133518 (validRegex!8345 lt!2446080)))

(assert (=> d!2133518 (= lt!2446080 e!4098328)))

(declare-fun c!1261933 () Bool)

(assert (=> d!2133518 (= c!1261933 (or ((_ is EmptyExpr!16609) r!7292) ((_ is EmptyLang!16609) r!7292)))))

(assert (=> d!2133518 (validRegex!8345 r!7292)))

(assert (=> d!2133518 (= (derivativeStep!5273 r!7292 (head!13630 s!2326)) lt!2446080)))

(declare-fun bm!616501 () Bool)

(declare-fun c!1261935 () Bool)

(assert (=> bm!616501 (= call!616508 (derivativeStep!5273 (ite c!1261934 (regTwo!33731 r!7292) (ite c!1261935 (reg!16938 r!7292) (ite c!1261936 (regTwo!33730 r!7292) (regOne!33730 r!7292)))) (head!13630 s!2326)))))

(declare-fun b!6789880 () Bool)

(assert (=> b!6789880 (= e!4098327 e!4098329)))

(assert (=> b!6789880 (= c!1261935 ((_ is Star!16609) r!7292))))

(declare-fun b!6789881 () Bool)

(assert (=> b!6789881 (= e!4098326 (Union!16609 (Concat!25454 call!616507 (regTwo!33730 r!7292)) EmptyLang!16609))))

(assert (= (and d!2133518 c!1261933) b!6789875))

(assert (= (and d!2133518 (not c!1261933)) b!6789878))

(assert (= (and b!6789878 c!1261932) b!6789872))

(assert (= (and b!6789878 (not c!1261932)) b!6789877))

(assert (= (and b!6789877 c!1261934) b!6789879))

(assert (= (and b!6789877 (not c!1261934)) b!6789880))

(assert (= (and b!6789880 c!1261935) b!6789874))

(assert (= (and b!6789880 (not c!1261935)) b!6789873))

(assert (= (and b!6789873 c!1261936) b!6789876))

(assert (= (and b!6789873 (not c!1261936)) b!6789881))

(assert (= (or b!6789876 b!6789881) bm!616504))

(assert (= (or b!6789874 bm!616504) bm!616503))

(assert (= (or b!6789879 bm!616503) bm!616501))

(assert (= (or b!6789879 b!6789876) bm!616502))

(assert (=> b!6789873 m!7536328))

(assert (=> bm!616502 m!7536168))

(declare-fun m!7537698 () Bool)

(assert (=> bm!616502 m!7537698))

(declare-fun m!7537700 () Bool)

(assert (=> d!2133518 m!7537700))

(assert (=> d!2133518 m!7535916))

(assert (=> bm!616501 m!7536168))

(declare-fun m!7537702 () Bool)

(assert (=> bm!616501 m!7537702))

(assert (=> b!6788612 d!2133518))

(assert (=> b!6788612 d!2133230))

(assert (=> b!6788612 d!2133294))

(declare-fun d!2133520 () Bool)

(assert (=> d!2133520 (= (isEmptyExpr!1967 lt!2445980) ((_ is EmptyExpr!16609) lt!2445980))))

(assert (=> b!6788412 d!2133520))

(declare-fun d!2133522 () Bool)

(declare-fun c!1261937 () Bool)

(assert (=> d!2133522 (= c!1261937 (isEmpty!38370 (tail!12715 (t!379848 s!2326))))))

(declare-fun e!4098331 () Bool)

(assert (=> d!2133522 (= (matchZipper!2595 (derivationStepZipper!2553 (derivationStepZipper!2553 lt!2445905 (h!72451 s!2326)) (head!13630 (t!379848 s!2326))) (tail!12715 (t!379848 s!2326))) e!4098331)))

(declare-fun b!6789882 () Bool)

(assert (=> b!6789882 (= e!4098331 (nullableZipper!2316 (derivationStepZipper!2553 (derivationStepZipper!2553 lt!2445905 (h!72451 s!2326)) (head!13630 (t!379848 s!2326)))))))

(declare-fun b!6789883 () Bool)

(assert (=> b!6789883 (= e!4098331 (matchZipper!2595 (derivationStepZipper!2553 (derivationStepZipper!2553 (derivationStepZipper!2553 lt!2445905 (h!72451 s!2326)) (head!13630 (t!379848 s!2326))) (head!13630 (tail!12715 (t!379848 s!2326)))) (tail!12715 (tail!12715 (t!379848 s!2326)))))))

(assert (= (and d!2133522 c!1261937) b!6789882))

(assert (= (and d!2133522 (not c!1261937)) b!6789883))

(assert (=> d!2133522 m!7536454))

(declare-fun m!7537704 () Bool)

(assert (=> d!2133522 m!7537704))

(assert (=> b!6789882 m!7536452))

(declare-fun m!7537706 () Bool)

(assert (=> b!6789882 m!7537706))

(assert (=> b!6789883 m!7536454))

(declare-fun m!7537708 () Bool)

(assert (=> b!6789883 m!7537708))

(assert (=> b!6789883 m!7536452))

(assert (=> b!6789883 m!7537708))

(declare-fun m!7537710 () Bool)

(assert (=> b!6789883 m!7537710))

(assert (=> b!6789883 m!7536454))

(declare-fun m!7537712 () Bool)

(assert (=> b!6789883 m!7537712))

(assert (=> b!6789883 m!7537710))

(assert (=> b!6789883 m!7537712))

(declare-fun m!7537714 () Bool)

(assert (=> b!6789883 m!7537714))

(assert (=> b!6788626 d!2133522))

(declare-fun bs!1809227 () Bool)

(declare-fun d!2133524 () Bool)

(assert (= bs!1809227 (and d!2133524 d!2133502)))

(declare-fun lambda!382465 () Int)

(assert (=> bs!1809227 (= (= (head!13630 (t!379848 s!2326)) (head!13630 s!2326)) (= lambda!382465 lambda!382456))))

(declare-fun bs!1809228 () Bool)

(assert (= bs!1809228 (and d!2133524 d!2132976)))

(assert (=> bs!1809228 (= (= (head!13630 (t!379848 s!2326)) (h!72451 s!2326)) (= lambda!382465 lambda!382379))))

(declare-fun bs!1809229 () Bool)

(assert (= bs!1809229 (and d!2133524 b!6787899)))

(assert (=> bs!1809229 (= (= (head!13630 (t!379848 s!2326)) (h!72451 s!2326)) (= lambda!382465 lambda!382297))))

(declare-fun bs!1809230 () Bool)

(assert (= bs!1809230 (and d!2133524 d!2133432)))

(assert (=> bs!1809230 (= (= (head!13630 (t!379848 s!2326)) (head!13630 s!2326)) (= lambda!382465 lambda!382446))))

(declare-fun bs!1809231 () Bool)

(assert (= bs!1809231 (and d!2133524 d!2132910)))

(assert (=> bs!1809231 (= (= (head!13630 (t!379848 s!2326)) (h!72451 s!2326)) (= lambda!382465 lambda!382355))))

(declare-fun bs!1809232 () Bool)

(assert (= bs!1809232 (and d!2133524 d!2132934)))

(assert (=> bs!1809232 (= (= (head!13630 (t!379848 s!2326)) (h!72451 s!2326)) (= lambda!382465 lambda!382358))))

(assert (=> d!2133524 true))

(assert (=> d!2133524 (= (derivationStepZipper!2553 (derivationStepZipper!2553 lt!2445905 (h!72451 s!2326)) (head!13630 (t!379848 s!2326))) (flatMap!2090 (derivationStepZipper!2553 lt!2445905 (h!72451 s!2326)) lambda!382465))))

(declare-fun bs!1809233 () Bool)

(assert (= bs!1809233 d!2133524))

(assert (=> bs!1809233 m!7535872))

(declare-fun m!7537716 () Bool)

(assert (=> bs!1809233 m!7537716))

(assert (=> b!6788626 d!2133524))

(declare-fun d!2133526 () Bool)

(assert (=> d!2133526 (= (head!13630 (t!379848 s!2326)) (h!72451 (t!379848 s!2326)))))

(assert (=> b!6788626 d!2133526))

(declare-fun d!2133528 () Bool)

(assert (=> d!2133528 (= (tail!12715 (t!379848 s!2326)) (t!379848 (t!379848 s!2326)))))

(assert (=> b!6788626 d!2133528))

(declare-fun d!2133530 () Bool)

(assert (=> d!2133530 (= (head!13629 (exprs!6493 (h!72452 zl!343))) (h!72450 (exprs!6493 (h!72452 zl!343))))))

(assert (=> b!6788416 d!2133530))

(assert (=> b!6788334 d!2133292))

(assert (=> b!6788334 d!2133294))

(declare-fun d!2133532 () Bool)

(assert (=> d!2133532 true))

(assert (=> d!2133532 true))

(declare-fun res!2775052 () Bool)

(assert (=> d!2133532 (= (choose!50559 lambda!382294) res!2775052)))

(assert (=> d!2132960 d!2133532))

(declare-fun b!6789886 () Bool)

(declare-fun e!4098332 () Bool)

(declare-fun tp!1859644 () Bool)

(assert (=> b!6789886 (= e!4098332 tp!1859644)))

(declare-fun b!6789887 () Bool)

(declare-fun tp!1859643 () Bool)

(declare-fun tp!1859645 () Bool)

(assert (=> b!6789887 (= e!4098332 (and tp!1859643 tp!1859645))))

(declare-fun b!6789885 () Bool)

(declare-fun tp!1859642 () Bool)

(declare-fun tp!1859646 () Bool)

(assert (=> b!6789885 (= e!4098332 (and tp!1859642 tp!1859646))))

(assert (=> b!6788674 (= tp!1859412 e!4098332)))

(declare-fun b!6789884 () Bool)

(assert (=> b!6789884 (= e!4098332 tp_is_empty!42471)))

(assert (= (and b!6788674 ((_ is ElementMatch!16609) (reg!16938 (regOne!33731 r!7292)))) b!6789884))

(assert (= (and b!6788674 ((_ is Concat!25454) (reg!16938 (regOne!33731 r!7292)))) b!6789885))

(assert (= (and b!6788674 ((_ is Star!16609) (reg!16938 (regOne!33731 r!7292)))) b!6789886))

(assert (= (and b!6788674 ((_ is Union!16609) (reg!16938 (regOne!33731 r!7292)))) b!6789887))

(declare-fun b!6789888 () Bool)

(declare-fun e!4098333 () Bool)

(declare-fun tp!1859647 () Bool)

(declare-fun tp!1859648 () Bool)

(assert (=> b!6789888 (= e!4098333 (and tp!1859647 tp!1859648))))

(assert (=> b!6788696 (= tp!1859435 e!4098333)))

(assert (= (and b!6788696 ((_ is Cons!66002) (exprs!6493 (h!72452 (t!379849 zl!343))))) b!6789888))

(declare-fun b!6789891 () Bool)

(declare-fun e!4098334 () Bool)

(declare-fun tp!1859651 () Bool)

(assert (=> b!6789891 (= e!4098334 tp!1859651)))

(declare-fun b!6789892 () Bool)

(declare-fun tp!1859650 () Bool)

(declare-fun tp!1859652 () Bool)

(assert (=> b!6789892 (= e!4098334 (and tp!1859650 tp!1859652))))

(declare-fun b!6789890 () Bool)

(declare-fun tp!1859649 () Bool)

(declare-fun tp!1859653 () Bool)

(assert (=> b!6789890 (= e!4098334 (and tp!1859649 tp!1859653))))

(assert (=> b!6788675 (= tp!1859411 e!4098334)))

(declare-fun b!6789889 () Bool)

(assert (=> b!6789889 (= e!4098334 tp_is_empty!42471)))

(assert (= (and b!6788675 ((_ is ElementMatch!16609) (regOne!33731 (regOne!33731 r!7292)))) b!6789889))

(assert (= (and b!6788675 ((_ is Concat!25454) (regOne!33731 (regOne!33731 r!7292)))) b!6789890))

(assert (= (and b!6788675 ((_ is Star!16609) (regOne!33731 (regOne!33731 r!7292)))) b!6789891))

(assert (= (and b!6788675 ((_ is Union!16609) (regOne!33731 (regOne!33731 r!7292)))) b!6789892))

(declare-fun b!6789895 () Bool)

(declare-fun e!4098335 () Bool)

(declare-fun tp!1859656 () Bool)

(assert (=> b!6789895 (= e!4098335 tp!1859656)))

(declare-fun b!6789896 () Bool)

(declare-fun tp!1859655 () Bool)

(declare-fun tp!1859657 () Bool)

(assert (=> b!6789896 (= e!4098335 (and tp!1859655 tp!1859657))))

(declare-fun b!6789894 () Bool)

(declare-fun tp!1859654 () Bool)

(declare-fun tp!1859658 () Bool)

(assert (=> b!6789894 (= e!4098335 (and tp!1859654 tp!1859658))))

(assert (=> b!6788675 (= tp!1859413 e!4098335)))

(declare-fun b!6789893 () Bool)

(assert (=> b!6789893 (= e!4098335 tp_is_empty!42471)))

(assert (= (and b!6788675 ((_ is ElementMatch!16609) (regTwo!33731 (regOne!33731 r!7292)))) b!6789893))

(assert (= (and b!6788675 ((_ is Concat!25454) (regTwo!33731 (regOne!33731 r!7292)))) b!6789894))

(assert (= (and b!6788675 ((_ is Star!16609) (regTwo!33731 (regOne!33731 r!7292)))) b!6789895))

(assert (= (and b!6788675 ((_ is Union!16609) (regTwo!33731 (regOne!33731 r!7292)))) b!6789896))

(declare-fun b!6789899 () Bool)

(declare-fun e!4098336 () Bool)

(declare-fun tp!1859661 () Bool)

(assert (=> b!6789899 (= e!4098336 tp!1859661)))

(declare-fun b!6789900 () Bool)

(declare-fun tp!1859660 () Bool)

(declare-fun tp!1859662 () Bool)

(assert (=> b!6789900 (= e!4098336 (and tp!1859660 tp!1859662))))

(declare-fun b!6789898 () Bool)

(declare-fun tp!1859659 () Bool)

(declare-fun tp!1859663 () Bool)

(assert (=> b!6789898 (= e!4098336 (and tp!1859659 tp!1859663))))

(assert (=> b!6788673 (= tp!1859410 e!4098336)))

(declare-fun b!6789897 () Bool)

(assert (=> b!6789897 (= e!4098336 tp_is_empty!42471)))

(assert (= (and b!6788673 ((_ is ElementMatch!16609) (regOne!33730 (regOne!33731 r!7292)))) b!6789897))

(assert (= (and b!6788673 ((_ is Concat!25454) (regOne!33730 (regOne!33731 r!7292)))) b!6789898))

(assert (= (and b!6788673 ((_ is Star!16609) (regOne!33730 (regOne!33731 r!7292)))) b!6789899))

(assert (= (and b!6788673 ((_ is Union!16609) (regOne!33730 (regOne!33731 r!7292)))) b!6789900))

(declare-fun b!6789903 () Bool)

(declare-fun e!4098337 () Bool)

(declare-fun tp!1859666 () Bool)

(assert (=> b!6789903 (= e!4098337 tp!1859666)))

(declare-fun b!6789904 () Bool)

(declare-fun tp!1859665 () Bool)

(declare-fun tp!1859667 () Bool)

(assert (=> b!6789904 (= e!4098337 (and tp!1859665 tp!1859667))))

(declare-fun b!6789902 () Bool)

(declare-fun tp!1859664 () Bool)

(declare-fun tp!1859668 () Bool)

(assert (=> b!6789902 (= e!4098337 (and tp!1859664 tp!1859668))))

(assert (=> b!6788673 (= tp!1859414 e!4098337)))

(declare-fun b!6789901 () Bool)

(assert (=> b!6789901 (= e!4098337 tp_is_empty!42471)))

(assert (= (and b!6788673 ((_ is ElementMatch!16609) (regTwo!33730 (regOne!33731 r!7292)))) b!6789901))

(assert (= (and b!6788673 ((_ is Concat!25454) (regTwo!33730 (regOne!33731 r!7292)))) b!6789902))

(assert (= (and b!6788673 ((_ is Star!16609) (regTwo!33730 (regOne!33731 r!7292)))) b!6789903))

(assert (= (and b!6788673 ((_ is Union!16609) (regTwo!33730 (regOne!33731 r!7292)))) b!6789904))

(declare-fun b!6789906 () Bool)

(declare-fun e!4098339 () Bool)

(declare-fun tp!1859669 () Bool)

(assert (=> b!6789906 (= e!4098339 tp!1859669)))

(declare-fun tp!1859670 () Bool)

(declare-fun e!4098338 () Bool)

(declare-fun b!6789905 () Bool)

(assert (=> b!6789905 (= e!4098338 (and (inv!84769 (h!72452 (t!379849 (t!379849 zl!343)))) e!4098339 tp!1859670))))

(assert (=> b!6788695 (= tp!1859436 e!4098338)))

(assert (= b!6789905 b!6789906))

(assert (= (and b!6788695 ((_ is Cons!66004) (t!379849 (t!379849 zl!343)))) b!6789905))

(declare-fun m!7537718 () Bool)

(assert (=> b!6789905 m!7537718))

(declare-fun b!6789907 () Bool)

(declare-fun e!4098340 () Bool)

(declare-fun tp!1859671 () Bool)

(assert (=> b!6789907 (= e!4098340 (and tp_is_empty!42471 tp!1859671))))

(assert (=> b!6788702 (= tp!1859441 e!4098340)))

(assert (= (and b!6788702 ((_ is Cons!66003) (t!379848 (t!379848 s!2326)))) b!6789907))

(declare-fun b!6789910 () Bool)

(declare-fun e!4098341 () Bool)

(declare-fun tp!1859674 () Bool)

(assert (=> b!6789910 (= e!4098341 tp!1859674)))

(declare-fun b!6789911 () Bool)

(declare-fun tp!1859673 () Bool)

(declare-fun tp!1859675 () Bool)

(assert (=> b!6789911 (= e!4098341 (and tp!1859673 tp!1859675))))

(declare-fun b!6789909 () Bool)

(declare-fun tp!1859672 () Bool)

(declare-fun tp!1859676 () Bool)

(assert (=> b!6789909 (= e!4098341 (and tp!1859672 tp!1859676))))

(assert (=> b!6788709 (= tp!1859448 e!4098341)))

(declare-fun b!6789908 () Bool)

(assert (=> b!6789908 (= e!4098341 tp_is_empty!42471)))

(assert (= (and b!6788709 ((_ is ElementMatch!16609) (regOne!33730 (regOne!33730 r!7292)))) b!6789908))

(assert (= (and b!6788709 ((_ is Concat!25454) (regOne!33730 (regOne!33730 r!7292)))) b!6789909))

(assert (= (and b!6788709 ((_ is Star!16609) (regOne!33730 (regOne!33730 r!7292)))) b!6789910))

(assert (= (and b!6788709 ((_ is Union!16609) (regOne!33730 (regOne!33730 r!7292)))) b!6789911))

(declare-fun b!6789914 () Bool)

(declare-fun e!4098342 () Bool)

(declare-fun tp!1859679 () Bool)

(assert (=> b!6789914 (= e!4098342 tp!1859679)))

(declare-fun b!6789915 () Bool)

(declare-fun tp!1859678 () Bool)

(declare-fun tp!1859680 () Bool)

(assert (=> b!6789915 (= e!4098342 (and tp!1859678 tp!1859680))))

(declare-fun b!6789913 () Bool)

(declare-fun tp!1859677 () Bool)

(declare-fun tp!1859681 () Bool)

(assert (=> b!6789913 (= e!4098342 (and tp!1859677 tp!1859681))))

(assert (=> b!6788709 (= tp!1859452 e!4098342)))

(declare-fun b!6789912 () Bool)

(assert (=> b!6789912 (= e!4098342 tp_is_empty!42471)))

(assert (= (and b!6788709 ((_ is ElementMatch!16609) (regTwo!33730 (regOne!33730 r!7292)))) b!6789912))

(assert (= (and b!6788709 ((_ is Concat!25454) (regTwo!33730 (regOne!33730 r!7292)))) b!6789913))

(assert (= (and b!6788709 ((_ is Star!16609) (regTwo!33730 (regOne!33730 r!7292)))) b!6789914))

(assert (= (and b!6788709 ((_ is Union!16609) (regTwo!33730 (regOne!33730 r!7292)))) b!6789915))

(declare-fun b!6789918 () Bool)

(declare-fun e!4098343 () Bool)

(declare-fun tp!1859684 () Bool)

(assert (=> b!6789918 (= e!4098343 tp!1859684)))

(declare-fun b!6789919 () Bool)

(declare-fun tp!1859683 () Bool)

(declare-fun tp!1859685 () Bool)

(assert (=> b!6789919 (= e!4098343 (and tp!1859683 tp!1859685))))

(declare-fun b!6789917 () Bool)

(declare-fun tp!1859682 () Bool)

(declare-fun tp!1859686 () Bool)

(assert (=> b!6789917 (= e!4098343 (and tp!1859682 tp!1859686))))

(assert (=> b!6788686 (= tp!1859426 e!4098343)))

(declare-fun b!6789916 () Bool)

(assert (=> b!6789916 (= e!4098343 tp_is_empty!42471)))

(assert (= (and b!6788686 ((_ is ElementMatch!16609) (regOne!33730 (reg!16938 r!7292)))) b!6789916))

(assert (= (and b!6788686 ((_ is Concat!25454) (regOne!33730 (reg!16938 r!7292)))) b!6789917))

(assert (= (and b!6788686 ((_ is Star!16609) (regOne!33730 (reg!16938 r!7292)))) b!6789918))

(assert (= (and b!6788686 ((_ is Union!16609) (regOne!33730 (reg!16938 r!7292)))) b!6789919))

(declare-fun b!6789922 () Bool)

(declare-fun e!4098344 () Bool)

(declare-fun tp!1859689 () Bool)

(assert (=> b!6789922 (= e!4098344 tp!1859689)))

(declare-fun b!6789923 () Bool)

(declare-fun tp!1859688 () Bool)

(declare-fun tp!1859690 () Bool)

(assert (=> b!6789923 (= e!4098344 (and tp!1859688 tp!1859690))))

(declare-fun b!6789921 () Bool)

(declare-fun tp!1859687 () Bool)

(declare-fun tp!1859691 () Bool)

(assert (=> b!6789921 (= e!4098344 (and tp!1859687 tp!1859691))))

(assert (=> b!6788686 (= tp!1859430 e!4098344)))

(declare-fun b!6789920 () Bool)

(assert (=> b!6789920 (= e!4098344 tp_is_empty!42471)))

(assert (= (and b!6788686 ((_ is ElementMatch!16609) (regTwo!33730 (reg!16938 r!7292)))) b!6789920))

(assert (= (and b!6788686 ((_ is Concat!25454) (regTwo!33730 (reg!16938 r!7292)))) b!6789921))

(assert (= (and b!6788686 ((_ is Star!16609) (regTwo!33730 (reg!16938 r!7292)))) b!6789922))

(assert (= (and b!6788686 ((_ is Union!16609) (regTwo!33730 (reg!16938 r!7292)))) b!6789923))

(declare-fun b!6789926 () Bool)

(declare-fun e!4098345 () Bool)

(declare-fun tp!1859694 () Bool)

(assert (=> b!6789926 (= e!4098345 tp!1859694)))

(declare-fun b!6789927 () Bool)

(declare-fun tp!1859693 () Bool)

(declare-fun tp!1859695 () Bool)

(assert (=> b!6789927 (= e!4098345 (and tp!1859693 tp!1859695))))

(declare-fun b!6789925 () Bool)

(declare-fun tp!1859692 () Bool)

(declare-fun tp!1859696 () Bool)

(assert (=> b!6789925 (= e!4098345 (and tp!1859692 tp!1859696))))

(assert (=> b!6788715 (= tp!1859454 e!4098345)))

(declare-fun b!6789924 () Bool)

(assert (=> b!6789924 (= e!4098345 tp_is_empty!42471)))

(assert (= (and b!6788715 ((_ is ElementMatch!16609) (regOne!33731 (regTwo!33730 r!7292)))) b!6789924))

(assert (= (and b!6788715 ((_ is Concat!25454) (regOne!33731 (regTwo!33730 r!7292)))) b!6789925))

(assert (= (and b!6788715 ((_ is Star!16609) (regOne!33731 (regTwo!33730 r!7292)))) b!6789926))

(assert (= (and b!6788715 ((_ is Union!16609) (regOne!33731 (regTwo!33730 r!7292)))) b!6789927))

(declare-fun b!6789930 () Bool)

(declare-fun e!4098346 () Bool)

(declare-fun tp!1859699 () Bool)

(assert (=> b!6789930 (= e!4098346 tp!1859699)))

(declare-fun b!6789931 () Bool)

(declare-fun tp!1859698 () Bool)

(declare-fun tp!1859700 () Bool)

(assert (=> b!6789931 (= e!4098346 (and tp!1859698 tp!1859700))))

(declare-fun b!6789929 () Bool)

(declare-fun tp!1859697 () Bool)

(declare-fun tp!1859701 () Bool)

(assert (=> b!6789929 (= e!4098346 (and tp!1859697 tp!1859701))))

(assert (=> b!6788715 (= tp!1859456 e!4098346)))

(declare-fun b!6789928 () Bool)

(assert (=> b!6789928 (= e!4098346 tp_is_empty!42471)))

(assert (= (and b!6788715 ((_ is ElementMatch!16609) (regTwo!33731 (regTwo!33730 r!7292)))) b!6789928))

(assert (= (and b!6788715 ((_ is Concat!25454) (regTwo!33731 (regTwo!33730 r!7292)))) b!6789929))

(assert (= (and b!6788715 ((_ is Star!16609) (regTwo!33731 (regTwo!33730 r!7292)))) b!6789930))

(assert (= (and b!6788715 ((_ is Union!16609) (regTwo!33731 (regTwo!33730 r!7292)))) b!6789931))

(declare-fun b!6789934 () Bool)

(declare-fun e!4098347 () Bool)

(declare-fun tp!1859704 () Bool)

(assert (=> b!6789934 (= e!4098347 tp!1859704)))

(declare-fun b!6789935 () Bool)

(declare-fun tp!1859703 () Bool)

(declare-fun tp!1859705 () Bool)

(assert (=> b!6789935 (= e!4098347 (and tp!1859703 tp!1859705))))

(declare-fun b!6789933 () Bool)

(declare-fun tp!1859702 () Bool)

(declare-fun tp!1859706 () Bool)

(assert (=> b!6789933 (= e!4098347 (and tp!1859702 tp!1859706))))

(assert (=> b!6788688 (= tp!1859427 e!4098347)))

(declare-fun b!6789932 () Bool)

(assert (=> b!6789932 (= e!4098347 tp_is_empty!42471)))

(assert (= (and b!6788688 ((_ is ElementMatch!16609) (regOne!33731 (reg!16938 r!7292)))) b!6789932))

(assert (= (and b!6788688 ((_ is Concat!25454) (regOne!33731 (reg!16938 r!7292)))) b!6789933))

(assert (= (and b!6788688 ((_ is Star!16609) (regOne!33731 (reg!16938 r!7292)))) b!6789934))

(assert (= (and b!6788688 ((_ is Union!16609) (regOne!33731 (reg!16938 r!7292)))) b!6789935))

(declare-fun b!6789938 () Bool)

(declare-fun e!4098348 () Bool)

(declare-fun tp!1859709 () Bool)

(assert (=> b!6789938 (= e!4098348 tp!1859709)))

(declare-fun b!6789939 () Bool)

(declare-fun tp!1859708 () Bool)

(declare-fun tp!1859710 () Bool)

(assert (=> b!6789939 (= e!4098348 (and tp!1859708 tp!1859710))))

(declare-fun b!6789937 () Bool)

(declare-fun tp!1859707 () Bool)

(declare-fun tp!1859711 () Bool)

(assert (=> b!6789937 (= e!4098348 (and tp!1859707 tp!1859711))))

(assert (=> b!6788688 (= tp!1859429 e!4098348)))

(declare-fun b!6789936 () Bool)

(assert (=> b!6789936 (= e!4098348 tp_is_empty!42471)))

(assert (= (and b!6788688 ((_ is ElementMatch!16609) (regTwo!33731 (reg!16938 r!7292)))) b!6789936))

(assert (= (and b!6788688 ((_ is Concat!25454) (regTwo!33731 (reg!16938 r!7292)))) b!6789937))

(assert (= (and b!6788688 ((_ is Star!16609) (regTwo!33731 (reg!16938 r!7292)))) b!6789938))

(assert (= (and b!6788688 ((_ is Union!16609) (regTwo!33731 (reg!16938 r!7292)))) b!6789939))

(declare-fun b!6789942 () Bool)

(declare-fun e!4098349 () Bool)

(declare-fun tp!1859714 () Bool)

(assert (=> b!6789942 (= e!4098349 tp!1859714)))

(declare-fun b!6789943 () Bool)

(declare-fun tp!1859713 () Bool)

(declare-fun tp!1859715 () Bool)

(assert (=> b!6789943 (= e!4098349 (and tp!1859713 tp!1859715))))

(declare-fun b!6789941 () Bool)

(declare-fun tp!1859712 () Bool)

(declare-fun tp!1859716 () Bool)

(assert (=> b!6789941 (= e!4098349 (and tp!1859712 tp!1859716))))

(assert (=> b!6788687 (= tp!1859428 e!4098349)))

(declare-fun b!6789940 () Bool)

(assert (=> b!6789940 (= e!4098349 tp_is_empty!42471)))

(assert (= (and b!6788687 ((_ is ElementMatch!16609) (reg!16938 (reg!16938 r!7292)))) b!6789940))

(assert (= (and b!6788687 ((_ is Concat!25454) (reg!16938 (reg!16938 r!7292)))) b!6789941))

(assert (= (and b!6788687 ((_ is Star!16609) (reg!16938 (reg!16938 r!7292)))) b!6789942))

(assert (= (and b!6788687 ((_ is Union!16609) (reg!16938 (reg!16938 r!7292)))) b!6789943))

(declare-fun b!6789946 () Bool)

(declare-fun e!4098350 () Bool)

(declare-fun tp!1859719 () Bool)

(assert (=> b!6789946 (= e!4098350 tp!1859719)))

(declare-fun b!6789947 () Bool)

(declare-fun tp!1859718 () Bool)

(declare-fun tp!1859720 () Bool)

(assert (=> b!6789947 (= e!4098350 (and tp!1859718 tp!1859720))))

(declare-fun b!6789945 () Bool)

(declare-fun tp!1859717 () Bool)

(declare-fun tp!1859721 () Bool)

(assert (=> b!6789945 (= e!4098350 (and tp!1859717 tp!1859721))))

(assert (=> b!6788679 (= tp!1859416 e!4098350)))

(declare-fun b!6789944 () Bool)

(assert (=> b!6789944 (= e!4098350 tp_is_empty!42471)))

(assert (= (and b!6788679 ((_ is ElementMatch!16609) (regOne!33731 (regTwo!33731 r!7292)))) b!6789944))

(assert (= (and b!6788679 ((_ is Concat!25454) (regOne!33731 (regTwo!33731 r!7292)))) b!6789945))

(assert (= (and b!6788679 ((_ is Star!16609) (regOne!33731 (regTwo!33731 r!7292)))) b!6789946))

(assert (= (and b!6788679 ((_ is Union!16609) (regOne!33731 (regTwo!33731 r!7292)))) b!6789947))

(declare-fun b!6789950 () Bool)

(declare-fun e!4098351 () Bool)

(declare-fun tp!1859724 () Bool)

(assert (=> b!6789950 (= e!4098351 tp!1859724)))

(declare-fun b!6789951 () Bool)

(declare-fun tp!1859723 () Bool)

(declare-fun tp!1859725 () Bool)

(assert (=> b!6789951 (= e!4098351 (and tp!1859723 tp!1859725))))

(declare-fun b!6789949 () Bool)

(declare-fun tp!1859722 () Bool)

(declare-fun tp!1859726 () Bool)

(assert (=> b!6789949 (= e!4098351 (and tp!1859722 tp!1859726))))

(assert (=> b!6788679 (= tp!1859418 e!4098351)))

(declare-fun b!6789948 () Bool)

(assert (=> b!6789948 (= e!4098351 tp_is_empty!42471)))

(assert (= (and b!6788679 ((_ is ElementMatch!16609) (regTwo!33731 (regTwo!33731 r!7292)))) b!6789948))

(assert (= (and b!6788679 ((_ is Concat!25454) (regTwo!33731 (regTwo!33731 r!7292)))) b!6789949))

(assert (= (and b!6788679 ((_ is Star!16609) (regTwo!33731 (regTwo!33731 r!7292)))) b!6789950))

(assert (= (and b!6788679 ((_ is Union!16609) (regTwo!33731 (regTwo!33731 r!7292)))) b!6789951))

(declare-fun b!6789954 () Bool)

(declare-fun e!4098352 () Bool)

(declare-fun tp!1859729 () Bool)

(assert (=> b!6789954 (= e!4098352 tp!1859729)))

(declare-fun b!6789955 () Bool)

(declare-fun tp!1859728 () Bool)

(declare-fun tp!1859730 () Bool)

(assert (=> b!6789955 (= e!4098352 (and tp!1859728 tp!1859730))))

(declare-fun b!6789953 () Bool)

(declare-fun tp!1859727 () Bool)

(declare-fun tp!1859731 () Bool)

(assert (=> b!6789953 (= e!4098352 (and tp!1859727 tp!1859731))))

(assert (=> b!6788678 (= tp!1859417 e!4098352)))

(declare-fun b!6789952 () Bool)

(assert (=> b!6789952 (= e!4098352 tp_is_empty!42471)))

(assert (= (and b!6788678 ((_ is ElementMatch!16609) (reg!16938 (regTwo!33731 r!7292)))) b!6789952))

(assert (= (and b!6788678 ((_ is Concat!25454) (reg!16938 (regTwo!33731 r!7292)))) b!6789953))

(assert (= (and b!6788678 ((_ is Star!16609) (reg!16938 (regTwo!33731 r!7292)))) b!6789954))

(assert (= (and b!6788678 ((_ is Union!16609) (reg!16938 (regTwo!33731 r!7292)))) b!6789955))

(declare-fun condSetEmpty!46475 () Bool)

(assert (=> setNonEmpty!46461 (= condSetEmpty!46475 (= setRest!46461 ((as const (Array Context!11986 Bool)) false)))))

(declare-fun setRes!46475 () Bool)

(assert (=> setNonEmpty!46461 (= tp!1859446 setRes!46475)))

(declare-fun setIsEmpty!46475 () Bool)

(assert (=> setIsEmpty!46475 setRes!46475))

(declare-fun tp!1859732 () Bool)

(declare-fun setNonEmpty!46475 () Bool)

(declare-fun setElem!46475 () Context!11986)

(declare-fun e!4098353 () Bool)

(assert (=> setNonEmpty!46475 (= setRes!46475 (and tp!1859732 (inv!84769 setElem!46475) e!4098353))))

(declare-fun setRest!46475 () (InoxSet Context!11986))

(assert (=> setNonEmpty!46475 (= setRest!46461 ((_ map or) (store ((as const (Array Context!11986 Bool)) false) setElem!46475 true) setRest!46475))))

(declare-fun b!6789956 () Bool)

(declare-fun tp!1859733 () Bool)

(assert (=> b!6789956 (= e!4098353 tp!1859733)))

(assert (= (and setNonEmpty!46461 condSetEmpty!46475) setIsEmpty!46475))

(assert (= (and setNonEmpty!46461 (not condSetEmpty!46475)) setNonEmpty!46475))

(assert (= setNonEmpty!46475 b!6789956))

(declare-fun m!7537720 () Bool)

(assert (=> setNonEmpty!46475 m!7537720))

(declare-fun b!6789957 () Bool)

(declare-fun e!4098354 () Bool)

(declare-fun tp!1859734 () Bool)

(declare-fun tp!1859735 () Bool)

(assert (=> b!6789957 (= e!4098354 (and tp!1859734 tp!1859735))))

(assert (=> b!6788707 (= tp!1859447 e!4098354)))

(assert (= (and b!6788707 ((_ is Cons!66002) (exprs!6493 setElem!46461))) b!6789957))

(declare-fun b!6789960 () Bool)

(declare-fun e!4098355 () Bool)

(declare-fun tp!1859738 () Bool)

(assert (=> b!6789960 (= e!4098355 tp!1859738)))

(declare-fun b!6789961 () Bool)

(declare-fun tp!1859737 () Bool)

(declare-fun tp!1859739 () Bool)

(assert (=> b!6789961 (= e!4098355 (and tp!1859737 tp!1859739))))

(declare-fun b!6789959 () Bool)

(declare-fun tp!1859736 () Bool)

(declare-fun tp!1859740 () Bool)

(assert (=> b!6789959 (= e!4098355 (and tp!1859736 tp!1859740))))

(assert (=> b!6788714 (= tp!1859455 e!4098355)))

(declare-fun b!6789958 () Bool)

(assert (=> b!6789958 (= e!4098355 tp_is_empty!42471)))

(assert (= (and b!6788714 ((_ is ElementMatch!16609) (reg!16938 (regTwo!33730 r!7292)))) b!6789958))

(assert (= (and b!6788714 ((_ is Concat!25454) (reg!16938 (regTwo!33730 r!7292)))) b!6789959))

(assert (= (and b!6788714 ((_ is Star!16609) (reg!16938 (regTwo!33730 r!7292)))) b!6789960))

(assert (= (and b!6788714 ((_ is Union!16609) (reg!16938 (regTwo!33730 r!7292)))) b!6789961))

(declare-fun b!6789964 () Bool)

(declare-fun e!4098356 () Bool)

(declare-fun tp!1859743 () Bool)

(assert (=> b!6789964 (= e!4098356 tp!1859743)))

(declare-fun b!6789965 () Bool)

(declare-fun tp!1859742 () Bool)

(declare-fun tp!1859744 () Bool)

(assert (=> b!6789965 (= e!4098356 (and tp!1859742 tp!1859744))))

(declare-fun b!6789963 () Bool)

(declare-fun tp!1859741 () Bool)

(declare-fun tp!1859745 () Bool)

(assert (=> b!6789963 (= e!4098356 (and tp!1859741 tp!1859745))))

(assert (=> b!6788713 (= tp!1859453 e!4098356)))

(declare-fun b!6789962 () Bool)

(assert (=> b!6789962 (= e!4098356 tp_is_empty!42471)))

(assert (= (and b!6788713 ((_ is ElementMatch!16609) (regOne!33730 (regTwo!33730 r!7292)))) b!6789962))

(assert (= (and b!6788713 ((_ is Concat!25454) (regOne!33730 (regTwo!33730 r!7292)))) b!6789963))

(assert (= (and b!6788713 ((_ is Star!16609) (regOne!33730 (regTwo!33730 r!7292)))) b!6789964))

(assert (= (and b!6788713 ((_ is Union!16609) (regOne!33730 (regTwo!33730 r!7292)))) b!6789965))

(declare-fun b!6789968 () Bool)

(declare-fun e!4098357 () Bool)

(declare-fun tp!1859748 () Bool)

(assert (=> b!6789968 (= e!4098357 tp!1859748)))

(declare-fun b!6789969 () Bool)

(declare-fun tp!1859747 () Bool)

(declare-fun tp!1859749 () Bool)

(assert (=> b!6789969 (= e!4098357 (and tp!1859747 tp!1859749))))

(declare-fun b!6789967 () Bool)

(declare-fun tp!1859746 () Bool)

(declare-fun tp!1859750 () Bool)

(assert (=> b!6789967 (= e!4098357 (and tp!1859746 tp!1859750))))

(assert (=> b!6788713 (= tp!1859457 e!4098357)))

(declare-fun b!6789966 () Bool)

(assert (=> b!6789966 (= e!4098357 tp_is_empty!42471)))

(assert (= (and b!6788713 ((_ is ElementMatch!16609) (regTwo!33730 (regTwo!33730 r!7292)))) b!6789966))

(assert (= (and b!6788713 ((_ is Concat!25454) (regTwo!33730 (regTwo!33730 r!7292)))) b!6789967))

(assert (= (and b!6788713 ((_ is Star!16609) (regTwo!33730 (regTwo!33730 r!7292)))) b!6789968))

(assert (= (and b!6788713 ((_ is Union!16609) (regTwo!33730 (regTwo!33730 r!7292)))) b!6789969))

(declare-fun b!6789972 () Bool)

(declare-fun e!4098358 () Bool)

(declare-fun tp!1859753 () Bool)

(assert (=> b!6789972 (= e!4098358 tp!1859753)))

(declare-fun b!6789973 () Bool)

(declare-fun tp!1859752 () Bool)

(declare-fun tp!1859754 () Bool)

(assert (=> b!6789973 (= e!4098358 (and tp!1859752 tp!1859754))))

(declare-fun b!6789971 () Bool)

(declare-fun tp!1859751 () Bool)

(declare-fun tp!1859755 () Bool)

(assert (=> b!6789971 (= e!4098358 (and tp!1859751 tp!1859755))))

(assert (=> b!6788697 (= tp!1859437 e!4098358)))

(declare-fun b!6789970 () Bool)

(assert (=> b!6789970 (= e!4098358 tp_is_empty!42471)))

(assert (= (and b!6788697 ((_ is ElementMatch!16609) (h!72450 (exprs!6493 setElem!46455)))) b!6789970))

(assert (= (and b!6788697 ((_ is Concat!25454) (h!72450 (exprs!6493 setElem!46455)))) b!6789971))

(assert (= (and b!6788697 ((_ is Star!16609) (h!72450 (exprs!6493 setElem!46455)))) b!6789972))

(assert (= (and b!6788697 ((_ is Union!16609) (h!72450 (exprs!6493 setElem!46455)))) b!6789973))

(declare-fun b!6789974 () Bool)

(declare-fun e!4098359 () Bool)

(declare-fun tp!1859756 () Bool)

(declare-fun tp!1859757 () Bool)

(assert (=> b!6789974 (= e!4098359 (and tp!1859756 tp!1859757))))

(assert (=> b!6788697 (= tp!1859438 e!4098359)))

(assert (= (and b!6788697 ((_ is Cons!66002) (t!379847 (exprs!6493 setElem!46455)))) b!6789974))

(declare-fun b!6789977 () Bool)

(declare-fun e!4098360 () Bool)

(declare-fun tp!1859760 () Bool)

(assert (=> b!6789977 (= e!4098360 tp!1859760)))

(declare-fun b!6789978 () Bool)

(declare-fun tp!1859759 () Bool)

(declare-fun tp!1859761 () Bool)

(assert (=> b!6789978 (= e!4098360 (and tp!1859759 tp!1859761))))

(declare-fun b!6789976 () Bool)

(declare-fun tp!1859758 () Bool)

(declare-fun tp!1859762 () Bool)

(assert (=> b!6789976 (= e!4098360 (and tp!1859758 tp!1859762))))

(assert (=> b!6788710 (= tp!1859450 e!4098360)))

(declare-fun b!6789975 () Bool)

(assert (=> b!6789975 (= e!4098360 tp_is_empty!42471)))

(assert (= (and b!6788710 ((_ is ElementMatch!16609) (reg!16938 (regOne!33730 r!7292)))) b!6789975))

(assert (= (and b!6788710 ((_ is Concat!25454) (reg!16938 (regOne!33730 r!7292)))) b!6789976))

(assert (= (and b!6788710 ((_ is Star!16609) (reg!16938 (regOne!33730 r!7292)))) b!6789977))

(assert (= (and b!6788710 ((_ is Union!16609) (reg!16938 (regOne!33730 r!7292)))) b!6789978))

(declare-fun b!6789981 () Bool)

(declare-fun e!4098361 () Bool)

(declare-fun tp!1859765 () Bool)

(assert (=> b!6789981 (= e!4098361 tp!1859765)))

(declare-fun b!6789982 () Bool)

(declare-fun tp!1859764 () Bool)

(declare-fun tp!1859766 () Bool)

(assert (=> b!6789982 (= e!4098361 (and tp!1859764 tp!1859766))))

(declare-fun b!6789980 () Bool)

(declare-fun tp!1859763 () Bool)

(declare-fun tp!1859767 () Bool)

(assert (=> b!6789980 (= e!4098361 (and tp!1859763 tp!1859767))))

(assert (=> b!6788711 (= tp!1859449 e!4098361)))

(declare-fun b!6789979 () Bool)

(assert (=> b!6789979 (= e!4098361 tp_is_empty!42471)))

(assert (= (and b!6788711 ((_ is ElementMatch!16609) (regOne!33731 (regOne!33730 r!7292)))) b!6789979))

(assert (= (and b!6788711 ((_ is Concat!25454) (regOne!33731 (regOne!33730 r!7292)))) b!6789980))

(assert (= (and b!6788711 ((_ is Star!16609) (regOne!33731 (regOne!33730 r!7292)))) b!6789981))

(assert (= (and b!6788711 ((_ is Union!16609) (regOne!33731 (regOne!33730 r!7292)))) b!6789982))

(declare-fun b!6789985 () Bool)

(declare-fun e!4098362 () Bool)

(declare-fun tp!1859770 () Bool)

(assert (=> b!6789985 (= e!4098362 tp!1859770)))

(declare-fun b!6789986 () Bool)

(declare-fun tp!1859769 () Bool)

(declare-fun tp!1859771 () Bool)

(assert (=> b!6789986 (= e!4098362 (and tp!1859769 tp!1859771))))

(declare-fun b!6789984 () Bool)

(declare-fun tp!1859768 () Bool)

(declare-fun tp!1859772 () Bool)

(assert (=> b!6789984 (= e!4098362 (and tp!1859768 tp!1859772))))

(assert (=> b!6788711 (= tp!1859451 e!4098362)))

(declare-fun b!6789983 () Bool)

(assert (=> b!6789983 (= e!4098362 tp_is_empty!42471)))

(assert (= (and b!6788711 ((_ is ElementMatch!16609) (regTwo!33731 (regOne!33730 r!7292)))) b!6789983))

(assert (= (and b!6788711 ((_ is Concat!25454) (regTwo!33731 (regOne!33730 r!7292)))) b!6789984))

(assert (= (and b!6788711 ((_ is Star!16609) (regTwo!33731 (regOne!33730 r!7292)))) b!6789985))

(assert (= (and b!6788711 ((_ is Union!16609) (regTwo!33731 (regOne!33730 r!7292)))) b!6789986))

(declare-fun b!6789989 () Bool)

(declare-fun e!4098363 () Bool)

(declare-fun tp!1859775 () Bool)

(assert (=> b!6789989 (= e!4098363 tp!1859775)))

(declare-fun b!6789990 () Bool)

(declare-fun tp!1859774 () Bool)

(declare-fun tp!1859776 () Bool)

(assert (=> b!6789990 (= e!4098363 (and tp!1859774 tp!1859776))))

(declare-fun b!6789988 () Bool)

(declare-fun tp!1859773 () Bool)

(declare-fun tp!1859777 () Bool)

(assert (=> b!6789988 (= e!4098363 (and tp!1859773 tp!1859777))))

(assert (=> b!6788677 (= tp!1859415 e!4098363)))

(declare-fun b!6789987 () Bool)

(assert (=> b!6789987 (= e!4098363 tp_is_empty!42471)))

(assert (= (and b!6788677 ((_ is ElementMatch!16609) (regOne!33730 (regTwo!33731 r!7292)))) b!6789987))

(assert (= (and b!6788677 ((_ is Concat!25454) (regOne!33730 (regTwo!33731 r!7292)))) b!6789988))

(assert (= (and b!6788677 ((_ is Star!16609) (regOne!33730 (regTwo!33731 r!7292)))) b!6789989))

(assert (= (and b!6788677 ((_ is Union!16609) (regOne!33730 (regTwo!33731 r!7292)))) b!6789990))

(declare-fun b!6789993 () Bool)

(declare-fun e!4098364 () Bool)

(declare-fun tp!1859780 () Bool)

(assert (=> b!6789993 (= e!4098364 tp!1859780)))

(declare-fun b!6789994 () Bool)

(declare-fun tp!1859779 () Bool)

(declare-fun tp!1859781 () Bool)

(assert (=> b!6789994 (= e!4098364 (and tp!1859779 tp!1859781))))

(declare-fun b!6789992 () Bool)

(declare-fun tp!1859778 () Bool)

(declare-fun tp!1859782 () Bool)

(assert (=> b!6789992 (= e!4098364 (and tp!1859778 tp!1859782))))

(assert (=> b!6788677 (= tp!1859419 e!4098364)))

(declare-fun b!6789991 () Bool)

(assert (=> b!6789991 (= e!4098364 tp_is_empty!42471)))

(assert (= (and b!6788677 ((_ is ElementMatch!16609) (regTwo!33730 (regTwo!33731 r!7292)))) b!6789991))

(assert (= (and b!6788677 ((_ is Concat!25454) (regTwo!33730 (regTwo!33731 r!7292)))) b!6789992))

(assert (= (and b!6788677 ((_ is Star!16609) (regTwo!33730 (regTwo!33731 r!7292)))) b!6789993))

(assert (= (and b!6788677 ((_ is Union!16609) (regTwo!33730 (regTwo!33731 r!7292)))) b!6789994))

(declare-fun b!6789997 () Bool)

(declare-fun e!4098365 () Bool)

(declare-fun tp!1859785 () Bool)

(assert (=> b!6789997 (= e!4098365 tp!1859785)))

(declare-fun b!6789998 () Bool)

(declare-fun tp!1859784 () Bool)

(declare-fun tp!1859786 () Bool)

(assert (=> b!6789998 (= e!4098365 (and tp!1859784 tp!1859786))))

(declare-fun b!6789996 () Bool)

(declare-fun tp!1859783 () Bool)

(declare-fun tp!1859787 () Bool)

(assert (=> b!6789996 (= e!4098365 (and tp!1859783 tp!1859787))))

(assert (=> b!6788684 (= tp!1859424 e!4098365)))

(declare-fun b!6789995 () Bool)

(assert (=> b!6789995 (= e!4098365 tp_is_empty!42471)))

(assert (= (and b!6788684 ((_ is ElementMatch!16609) (h!72450 (exprs!6493 (h!72452 zl!343))))) b!6789995))

(assert (= (and b!6788684 ((_ is Concat!25454) (h!72450 (exprs!6493 (h!72452 zl!343))))) b!6789996))

(assert (= (and b!6788684 ((_ is Star!16609) (h!72450 (exprs!6493 (h!72452 zl!343))))) b!6789997))

(assert (= (and b!6788684 ((_ is Union!16609) (h!72450 (exprs!6493 (h!72452 zl!343))))) b!6789998))

(declare-fun b!6789999 () Bool)

(declare-fun e!4098366 () Bool)

(declare-fun tp!1859788 () Bool)

(declare-fun tp!1859789 () Bool)

(assert (=> b!6789999 (= e!4098366 (and tp!1859788 tp!1859789))))

(assert (=> b!6788684 (= tp!1859425 e!4098366)))

(assert (= (and b!6788684 ((_ is Cons!66002) (t!379847 (exprs!6493 (h!72452 zl!343))))) b!6789999))

(declare-fun b_lambda!255743 () Bool)

(assert (= b_lambda!255739 (or b!6787899 b_lambda!255743)))

(assert (=> d!2133452 d!2132994))

(declare-fun b_lambda!255745 () Bool)

(assert (= b_lambda!255735 (or d!2132790 b_lambda!255745)))

(declare-fun bs!1809234 () Bool)

(declare-fun d!2133534 () Bool)

(assert (= bs!1809234 (and d!2133534 d!2132790)))

(assert (=> bs!1809234 (= (dynLambda!26343 lambda!382300 (h!72450 (unfocusZipperList!2030 zl!343))) (validRegex!8345 (h!72450 (unfocusZipperList!2030 zl!343))))))

(declare-fun m!7537722 () Bool)

(assert (=> bs!1809234 m!7537722))

(assert (=> b!6789608 d!2133534))

(declare-fun b_lambda!255747 () Bool)

(assert (= b_lambda!255741 (or b!6787899 b_lambda!255747)))

(assert (=> d!2133480 d!2132998))

(declare-fun b_lambda!255749 () Bool)

(assert (= b_lambda!255691 (or b!6787899 b_lambda!255749)))

(assert (=> d!2133196 d!2133000))

(declare-fun b_lambda!255751 () Bool)

(assert (= b_lambda!255733 (or d!2132890 b_lambda!255751)))

(declare-fun bs!1809235 () Bool)

(declare-fun d!2133536 () Bool)

(assert (= bs!1809235 (and d!2133536 d!2132890)))

(assert (=> bs!1809235 (= (dynLambda!26343 lambda!382348 (h!72450 (exprs!6493 (h!72452 zl!343)))) (validRegex!8345 (h!72450 (exprs!6493 (h!72452 zl!343)))))))

(declare-fun m!7537724 () Bool)

(assert (=> bs!1809235 m!7537724))

(assert (=> b!6789562 d!2133536))

(declare-fun b_lambda!255753 () Bool)

(assert (= b_lambda!255689 (or d!2132792 b_lambda!255753)))

(declare-fun bs!1809236 () Bool)

(declare-fun d!2133538 () Bool)

(assert (= bs!1809236 (and d!2133538 d!2132792)))

(assert (=> bs!1809236 (= (dynLambda!26343 lambda!382303 (h!72450 lt!2445928)) (validRegex!8345 (h!72450 lt!2445928)))))

(declare-fun m!7537726 () Bool)

(assert (=> bs!1809236 m!7537726))

(assert (=> b!6789122 d!2133538))

(declare-fun b_lambda!255755 () Bool)

(assert (= b_lambda!255737 (or b!6787899 b_lambda!255755)))

(assert (=> d!2133420 d!2132996))

(declare-fun b_lambda!255757 () Bool)

(assert (= b_lambda!255703 (or d!2132796 b_lambda!255757)))

(declare-fun bs!1809237 () Bool)

(declare-fun d!2133540 () Bool)

(assert (= bs!1809237 (and d!2133540 d!2132796)))

(assert (=> bs!1809237 (= (dynLambda!26343 lambda!382306 (h!72450 (exprs!6493 (h!72452 zl!343)))) (validRegex!8345 (h!72450 (exprs!6493 (h!72452 zl!343)))))))

(assert (=> bs!1809237 m!7537724))

(assert (=> b!6789352 d!2133540))

(declare-fun b_lambda!255759 () Bool)

(assert (= b_lambda!255701 (or d!2132992 b_lambda!255759)))

(declare-fun bs!1809238 () Bool)

(declare-fun d!2133542 () Bool)

(assert (= bs!1809238 (and d!2133542 d!2132992)))

(assert (=> bs!1809238 (= (dynLambda!26343 lambda!382381 (h!72450 (exprs!6493 setElem!46455))) (validRegex!8345 (h!72450 (exprs!6493 setElem!46455))))))

(declare-fun m!7537728 () Bool)

(assert (=> bs!1809238 m!7537728))

(assert (=> b!6789341 d!2133542))

(declare-fun b_lambda!255761 () Bool)

(assert (= b_lambda!255699 (or d!2132988 b_lambda!255761)))

(declare-fun bs!1809239 () Bool)

(declare-fun d!2133544 () Bool)

(assert (= bs!1809239 (and d!2133544 d!2132988)))

(assert (=> bs!1809239 (= (dynLambda!26343 lambda!382380 (h!72450 (exprs!6493 lt!2445912))) (validRegex!8345 (h!72450 (exprs!6493 lt!2445912))))))

(declare-fun m!7537730 () Bool)

(assert (=> bs!1809239 m!7537730))

(assert (=> b!6789322 d!2133544))

(check-sat (not b!6789972) (not bs!1809234) (not bm!616391) (not b!6789914) (not bm!616382) (not b!6789775) (not d!2133356) (not b!6789123) (not bm!616494) (not b!6789663) (not b!6789923) (not d!2133444) (not b!6789868) (not b!6789844) (not b!6789927) (not b!6789869) (not bm!616497) (not b!6789669) (not bm!616401) (not b_lambda!255747) (not bm!616457) (not b!6789541) (not b!6789329) (not b!6789717) (not b!6789835) (not b!6789607) (not b!6789930) (not setNonEmpty!46473) (not b!6789883) (not b!6789926) (not bm!616428) (not d!2133522) (not b!6789678) (not b_lambda!255743) (not b!6789945) (not bm!616465) (not bm!616431) (not b!6789221) (not b!6789846) (not b!6789543) (not b!6789357) (not b!6789938) (not b!6789126) (not b!6789981) (not b!6789674) (not b!6789325) (not b!6789961) (not bm!616447) (not b!6789825) (not b!6789609) (not b!6789665) (not d!2133426) (not b!6789690) (not b!6789358) (not b!6789988) (not b!6789909) (not d!2133354) (not d!2133510) (not b_lambda!255677) (not bm!616502) (not b_lambda!255757) (not bs!1809238) (not b!6789764) (not b!6789597) (not d!2133410) (not bm!616400) (not bm!616461) (not b!6789918) (not b_lambda!255679) (not d!2133202) (not b!6789718) (not b!6789722) (not b!6789837) (not b!6789843) (not bm!616485) (not d!2133370) (not d!2133484) (not d!2133214) (not d!2133468) (not b!6789861) (not b!6789685) (not b!6789729) (not bm!616432) (not b!6789788) (not bm!616471) (not b!6789589) (not b!6789982) (not b!6789896) (not b!6789761) (not bm!616501) (not b!6789956) (not b!6789790) (not b!6789985) (not bm!616358) (not bm!616376) (not b!6789196) (not d!2133436) (not bm!616411) (not bm!616445) (not d!2133492) (not b!6789359) (not b!6789591) (not b!6789250) (not b!6789913) (not b!6789959) (not d!2133358) (not b!6789986) (not b!6789523) (not b!6789838) (not b!6789841) (not b_lambda!255751) (not d!2133472) (not b!6789971) (not b!6789999) (not b!6789209) (not b!6789887) (not bs!1809239) (not b!6789587) (not d!2133524) (not b!6789904) (not b!6789892) (not b!6789586) (not d!2133184) (not b!6789675) (not b!6789941) (not b!6789957) (not b!6789659) (not b!6789980) (not b!6789724) (not b!6789568) (not d!2133386) (not b!6789172) (not b!6789575) (not d!2133256) (not b_lambda!255755) (not d!2133508) (not b!6789789) (not b!6789965) (not b!6789939) (not bm!616489) (not bm!616483) (not b!6789689) (not d!2133310) (not b!6789996) (not b!6789752) (not b!6789922) (not b!6789756) (not b!6789569) (not b!6789929) (not bm!616395) (not d!2133474) (not b!6789224) (not b!6789891) (not b!6789885) (not d!2133486) (not b!6789976) (not b!6789973) (not b!6789561) (not bm!616481) (not b_lambda!255675) (not d!2133190) (not b!6789933) (not d!2133518) (not b!6789873) (not b!6789725) (not setNonEmpty!46470) (not b!6789272) (not b!6789660) (not b!6789365) (not b!6789990) (not b!6789672) (not b!6789548) (not b!6789816) (not bm!616475) (not d!2133378) tp_is_empty!42471 (not bm!616377) (not d!2133224) (not bm!616496) (not b!6789171) (not b!6789594) (not b!6789627) (not d!2133502) (not d!2133428) (not b!6789540) (not b!6789719) (not b!6789997) (not b!6789633) (not b!6789156) (not bm!616484) (not d!2133512) (not d!2133454) (not d!2133282) (not b!6789890) (not b!6789618) (not b!6789915) (not b!6789866) (not b!6789658) (not b!6789807) (not b!6789951) (not b!6789994) (not b!6789677) (not b!6789730) (not b!6789969) (not bm!616390) (not d!2133500) (not b!6789794) (not d!2133432) (not b!6789542) (not b!6789947) (not b!6789917) (not b!6789935) (not d!2133420) (not d!2133516) (not b!6789200) (not b!6789791) (not b!6789905) (not d!2133496) (not bm!616495) (not d!2133412) (not b!6789326) (not b!6789545) (not b!6789978) (not b!6789992) (not d!2133316) (not bm!616450) (not d!2133434) (not b!6789664) (not b!6789192) (not b_lambda!255749) (not bm!616479) (not d!2133430) (not b!6789738) (not b!6789129) (not bm!616412) (not bm!616448) (not bm!616405) (not bm!616407) (not b!6789911) (not bm!616455) (not d!2133406) (not b!6789863) (not b!6789335) (not setNonEmpty!46475) (not b!6789662) (not bm!616435) (not d!2133440) (not b!6789656) (not b!6789998) (not b!6789592) (not b!6789364) (not b!6789964) (not b!6789919) (not b!6789313) (not b!6789989) (not b!6789342) (not bm!616353) (not b!6789895) (not b!6789668) (not b!6789563) (not b!6789899) (not b!6789968) (not bm!616488) (not b!6789655) (not b!6789546) (not d!2133514) (not b!6789195) (not b!6789921) (not b!6789967) (not b!6789102) (not d!2133388) (not d!2133506) (not b!6789780) (not d!2133452) (not bm!616456) (not bm!616444) (not b!6789125) (not b!6789950) (not b!6789900) (not b!6789943) (not b!6789903) (not d!2133408) (not b!6789960) (not d!2133458) (not b!6789862) (not b!6789708) (not d!2133480) (not bm!616383) (not b_lambda!255753) (not bs!1809236) (not b!6789323) (not b!6789907) (not b!6789934) (not bm!616438) (not setNonEmpty!46469) (not b!6789667) (not b!6789824) (not bm!616474) (not b!6789813) (not b!6789781) (not b!6789954) (not b!6789949) (not bm!616427) (not b!6789588) (not b!6789353) (not bm!616442) (not bm!616473) (not b!6789671) (not b!6789931) (not b!6789190) (not b!6789946) (not bm!616437) (not b_lambda!255681) (not b!6789758) (not b!6789551) (not d!2133166) (not b!6789942) (not b!6789898) (not b!6789953) (not bm!616472) (not b!6789984) (not b!6789549) (not bm!616487) (not b!6789910) (not d!2133394) (not bm!616467) (not b!6789977) (not d!2133196) (not b!6789157) (not d!2133478) (not b!6789840) (not d!2133366) (not b!6789574) (not b!6789595) (not b!6789697) (not b_lambda!255761) (not b!6789189) (not b!6789955) (not b!6789937) (not b_lambda!255745) (not b!6789684) (not bm!616466) (not b!6789902) (not bm!616439) (not bm!616434) (not d!2133384) (not bm!616406) (not d!2133212) (not bm!616357) (not b!6789974) (not d!2133360) (not bm!616352) (not b!6789886) (not b!6789215) (not b!6789572) (not bm!616459) (not b!6789888) (not bm!616381) (not b!6789925) (not b!6789963) (not b!6789826) (not bm!616490) (not d!2133194) (not b!6789763) (not b!6789362) (not d!2133200) (not d!2133416) (not bm!616460) (not bm!616451) (not bm!616375) (not bm!616498) (not d!2133456) (not b!6789836) (not setNonEmpty!46474) (not bs!1809237) (not b_lambda!255759) (not b!6789882) (not b!6789275) (not b!6789199) (not b!6789567) (not bm!616441) (not b!6789194) (not b!6789757) (not b!6789906) (not bs!1809235) (not b!6789894) (not b!6789993) (not bm!616480) (not bm!616500))
(check-sat)
