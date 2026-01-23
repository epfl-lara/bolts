; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!610650 () Bool)

(assert start!610650)

(declare-fun b!6109969 () Bool)

(assert (=> b!6109969 true))

(assert (=> b!6109969 true))

(declare-fun lambda!332816 () Int)

(declare-fun lambda!332815 () Int)

(assert (=> b!6109969 (not (= lambda!332816 lambda!332815))))

(assert (=> b!6109969 true))

(assert (=> b!6109969 true))

(declare-fun b!6109974 () Bool)

(assert (=> b!6109974 true))

(declare-fun b!6109965 () Bool)

(declare-fun e!3725648 () Bool)

(declare-fun tp!1706686 () Bool)

(assert (=> b!6109965 (= e!3725648 tp!1706686)))

(declare-fun b!6109966 () Bool)

(declare-fun res!2534230 () Bool)

(declare-fun e!3725645 () Bool)

(assert (=> b!6109966 (=> res!2534230 e!3725645)))

(declare-datatypes ((C!32388 0))(
  ( (C!32389 (val!25896 Int)) )
))
(declare-datatypes ((Regex!16059 0))(
  ( (ElementMatch!16059 (c!1097651 C!32388)) (Concat!24904 (regOne!32630 Regex!16059) (regTwo!32630 Regex!16059)) (EmptyExpr!16059) (Star!16059 (reg!16388 Regex!16059)) (EmptyLang!16059) (Union!16059 (regOne!32631 Regex!16059) (regTwo!32631 Regex!16059)) )
))
(declare-datatypes ((List!64476 0))(
  ( (Nil!64352) (Cons!64352 (h!70800 Regex!16059) (t!377931 List!64476)) )
))
(declare-datatypes ((Context!10886 0))(
  ( (Context!10887 (exprs!5943 List!64476)) )
))
(declare-datatypes ((List!64477 0))(
  ( (Nil!64353) (Cons!64353 (h!70801 Context!10886) (t!377932 List!64477)) )
))
(declare-fun zl!343 () List!64477)

(declare-fun isEmpty!36277 (List!64477) Bool)

(assert (=> b!6109966 (= res!2534230 (not (isEmpty!36277 (t!377932 zl!343))))))

(declare-fun b!6109967 () Bool)

(declare-fun e!3725647 () Bool)

(declare-fun tp!1706688 () Bool)

(assert (=> b!6109967 (= e!3725647 tp!1706688)))

(declare-fun tp!1706692 () Bool)

(declare-fun setNonEmpty!41276 () Bool)

(declare-fun setElem!41276 () Context!10886)

(declare-fun setRes!41276 () Bool)

(declare-fun e!3725646 () Bool)

(declare-fun inv!83394 (Context!10886) Bool)

(assert (=> setNonEmpty!41276 (= setRes!41276 (and tp!1706692 (inv!83394 setElem!41276) e!3725646))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10886))

(declare-fun setRest!41276 () (InoxSet Context!10886))

(assert (=> setNonEmpty!41276 (= z!1189 ((_ map or) (store ((as const (Array Context!10886 Bool)) false) setElem!41276 true) setRest!41276))))

(declare-fun b!6109968 () Bool)

(declare-fun res!2534232 () Bool)

(assert (=> b!6109968 (=> res!2534232 e!3725645)))

(declare-fun r!7292 () Regex!16059)

(declare-fun generalisedUnion!1903 (List!64476) Regex!16059)

(declare-fun unfocusZipperList!1480 (List!64477) List!64476)

(assert (=> b!6109968 (= res!2534232 (not (= r!7292 (generalisedUnion!1903 (unfocusZipperList!1480 zl!343)))))))

(declare-fun e!3725641 () Bool)

(assert (=> b!6109969 (= e!3725645 e!3725641)))

(declare-fun res!2534235 () Bool)

(assert (=> b!6109969 (=> res!2534235 e!3725641)))

(declare-datatypes ((List!64478 0))(
  ( (Nil!64354) (Cons!64354 (h!70802 C!32388) (t!377933 List!64478)) )
))
(declare-fun s!2326 () List!64478)

(declare-fun lt!2329962 () Bool)

(declare-fun lt!2329956 () Bool)

(get-info :version)

(assert (=> b!6109969 (= res!2534235 (or (not (= lt!2329956 lt!2329962)) ((_ is Nil!64354) s!2326)))))

(declare-fun Exists!3129 (Int) Bool)

(assert (=> b!6109969 (= (Exists!3129 lambda!332815) (Exists!3129 lambda!332816))))

(declare-datatypes ((Unit!157391 0))(
  ( (Unit!157392) )
))
(declare-fun lt!2329955 () Unit!157391)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1666 (Regex!16059 Regex!16059 List!64478) Unit!157391)

(assert (=> b!6109969 (= lt!2329955 (lemmaExistCutMatchRandMatchRSpecEquivalent!1666 (regOne!32630 r!7292) (regTwo!32630 r!7292) s!2326))))

(assert (=> b!6109969 (= lt!2329962 (Exists!3129 lambda!332815))))

(declare-datatypes ((tuple2!66076 0))(
  ( (tuple2!66077 (_1!36341 List!64478) (_2!36341 List!64478)) )
))
(declare-datatypes ((Option!15950 0))(
  ( (None!15949) (Some!15949 (v!52084 tuple2!66076)) )
))
(declare-fun isDefined!12653 (Option!15950) Bool)

(declare-fun findConcatSeparation!2364 (Regex!16059 Regex!16059 List!64478 List!64478 List!64478) Option!15950)

(assert (=> b!6109969 (= lt!2329962 (isDefined!12653 (findConcatSeparation!2364 (regOne!32630 r!7292) (regTwo!32630 r!7292) Nil!64354 s!2326 s!2326)))))

(declare-fun lt!2329954 () Unit!157391)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2128 (Regex!16059 Regex!16059 List!64478) Unit!157391)

(assert (=> b!6109969 (= lt!2329954 (lemmaFindConcatSeparationEquivalentToExists!2128 (regOne!32630 r!7292) (regTwo!32630 r!7292) s!2326))))

(declare-fun setIsEmpty!41276 () Bool)

(assert (=> setIsEmpty!41276 setRes!41276))

(declare-fun b!6109970 () Bool)

(declare-fun res!2534227 () Bool)

(assert (=> b!6109970 (=> res!2534227 e!3725641)))

(declare-fun isEmpty!36278 (List!64476) Bool)

(assert (=> b!6109970 (= res!2534227 (isEmpty!36278 (t!377931 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun tp!1706687 () Bool)

(declare-fun e!3725643 () Bool)

(declare-fun b!6109971 () Bool)

(assert (=> b!6109971 (= e!3725643 (and (inv!83394 (h!70801 zl!343)) e!3725648 tp!1706687))))

(declare-fun b!6109972 () Bool)

(declare-fun tp_is_empty!41371 () Bool)

(assert (=> b!6109972 (= e!3725647 tp_is_empty!41371)))

(declare-fun b!6109973 () Bool)

(declare-fun tp!1706691 () Bool)

(declare-fun tp!1706689 () Bool)

(assert (=> b!6109973 (= e!3725647 (and tp!1706691 tp!1706689))))

(declare-fun res!2534226 () Bool)

(declare-fun e!3725640 () Bool)

(assert (=> start!610650 (=> (not res!2534226) (not e!3725640))))

(declare-fun validRegex!7795 (Regex!16059) Bool)

(assert (=> start!610650 (= res!2534226 (validRegex!7795 r!7292))))

(assert (=> start!610650 e!3725640))

(assert (=> start!610650 e!3725647))

(declare-fun condSetEmpty!41276 () Bool)

(assert (=> start!610650 (= condSetEmpty!41276 (= z!1189 ((as const (Array Context!10886 Bool)) false)))))

(assert (=> start!610650 setRes!41276))

(assert (=> start!610650 e!3725643))

(declare-fun e!3725649 () Bool)

(assert (=> start!610650 e!3725649))

(declare-fun e!3725642 () Bool)

(assert (=> b!6109974 (= e!3725641 e!3725642)))

(declare-fun res!2534231 () Bool)

(assert (=> b!6109974 (=> res!2534231 e!3725642)))

(assert (=> b!6109974 (= res!2534231 (or (not ((_ is ElementMatch!16059) (regOne!32630 r!7292))) (not (= (c!1097651 (regOne!32630 r!7292)) (h!70802 s!2326)))))))

(declare-fun lt!2329953 () Unit!157391)

(declare-fun e!3725644 () Unit!157391)

(assert (=> b!6109974 (= lt!2329953 e!3725644)))

(declare-fun c!1097650 () Bool)

(declare-fun nullable!6052 (Regex!16059) Bool)

(assert (=> b!6109974 (= c!1097650 (nullable!6052 (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun lambda!332817 () Int)

(declare-fun flatMap!1564 ((InoxSet Context!10886) Int) (InoxSet Context!10886))

(declare-fun derivationStepZipperUp!1233 (Context!10886 C!32388) (InoxSet Context!10886))

(assert (=> b!6109974 (= (flatMap!1564 z!1189 lambda!332817) (derivationStepZipperUp!1233 (h!70801 zl!343) (h!70802 s!2326)))))

(declare-fun lt!2329961 () Unit!157391)

(declare-fun lemmaFlatMapOnSingletonSet!1090 ((InoxSet Context!10886) Context!10886 Int) Unit!157391)

(assert (=> b!6109974 (= lt!2329961 (lemmaFlatMapOnSingletonSet!1090 z!1189 (h!70801 zl!343) lambda!332817))))

(declare-fun lt!2329959 () (InoxSet Context!10886))

(declare-fun lt!2329957 () Context!10886)

(assert (=> b!6109974 (= lt!2329959 (derivationStepZipperUp!1233 lt!2329957 (h!70802 s!2326)))))

(declare-fun lt!2329951 () (InoxSet Context!10886))

(declare-fun derivationStepZipperDown!1307 (Regex!16059 Context!10886 C!32388) (InoxSet Context!10886))

(assert (=> b!6109974 (= lt!2329951 (derivationStepZipperDown!1307 (h!70800 (exprs!5943 (h!70801 zl!343))) lt!2329957 (h!70802 s!2326)))))

(assert (=> b!6109974 (= lt!2329957 (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun lt!2329952 () (InoxSet Context!10886))

(assert (=> b!6109974 (= lt!2329952 (derivationStepZipperUp!1233 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))) (h!70802 s!2326)))))

(declare-fun b!6109975 () Bool)

(declare-fun tp!1706693 () Bool)

(assert (=> b!6109975 (= e!3725649 (and tp_is_empty!41371 tp!1706693))))

(declare-fun b!6109976 () Bool)

(declare-fun tp!1706694 () Bool)

(declare-fun tp!1706685 () Bool)

(assert (=> b!6109976 (= e!3725647 (and tp!1706694 tp!1706685))))

(declare-fun b!6109977 () Bool)

(declare-fun Unit!157393 () Unit!157391)

(assert (=> b!6109977 (= e!3725644 Unit!157393)))

(declare-fun lt!2329960 () Unit!157391)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!890 ((InoxSet Context!10886) (InoxSet Context!10886) List!64478) Unit!157391)

(assert (=> b!6109977 (= lt!2329960 (lemmaZipperConcatMatchesSameAsBothZippers!890 lt!2329951 lt!2329959 (t!377933 s!2326)))))

(declare-fun res!2534236 () Bool)

(declare-fun matchZipper!2071 ((InoxSet Context!10886) List!64478) Bool)

(assert (=> b!6109977 (= res!2534236 (matchZipper!2071 lt!2329951 (t!377933 s!2326)))))

(declare-fun e!3725639 () Bool)

(assert (=> b!6109977 (=> res!2534236 e!3725639)))

(assert (=> b!6109977 (= (matchZipper!2071 ((_ map or) lt!2329951 lt!2329959) (t!377933 s!2326)) e!3725639)))

(declare-fun b!6109978 () Bool)

(declare-fun Unit!157394 () Unit!157391)

(assert (=> b!6109978 (= e!3725644 Unit!157394)))

(declare-fun b!6109979 () Bool)

(declare-fun res!2534229 () Bool)

(assert (=> b!6109979 (=> res!2534229 e!3725645)))

(assert (=> b!6109979 (= res!2534229 (or ((_ is EmptyExpr!16059) r!7292) ((_ is EmptyLang!16059) r!7292) ((_ is ElementMatch!16059) r!7292) ((_ is Union!16059) r!7292) (not ((_ is Concat!24904) r!7292))))))

(declare-fun b!6109980 () Bool)

(assert (=> b!6109980 (= e!3725639 (matchZipper!2071 lt!2329959 (t!377933 s!2326)))))

(declare-fun b!6109981 () Bool)

(declare-fun res!2534237 () Bool)

(assert (=> b!6109981 (=> (not res!2534237) (not e!3725640))))

(declare-fun toList!9843 ((InoxSet Context!10886)) List!64477)

(assert (=> b!6109981 (= res!2534237 (= (toList!9843 z!1189) zl!343))))

(declare-fun b!6109982 () Bool)

(declare-fun res!2534228 () Bool)

(assert (=> b!6109982 (=> (not res!2534228) (not e!3725640))))

(declare-fun unfocusZipper!1801 (List!64477) Regex!16059)

(assert (=> b!6109982 (= res!2534228 (= r!7292 (unfocusZipper!1801 zl!343)))))

(declare-fun b!6109983 () Bool)

(assert (=> b!6109983 (= e!3725640 (not e!3725645))))

(declare-fun res!2534234 () Bool)

(assert (=> b!6109983 (=> res!2534234 e!3725645)))

(assert (=> b!6109983 (= res!2534234 (not ((_ is Cons!64353) zl!343)))))

(declare-fun matchRSpec!3160 (Regex!16059 List!64478) Bool)

(assert (=> b!6109983 (= lt!2329956 (matchRSpec!3160 r!7292 s!2326))))

(declare-fun matchR!8242 (Regex!16059 List!64478) Bool)

(assert (=> b!6109983 (= lt!2329956 (matchR!8242 r!7292 s!2326))))

(declare-fun lt!2329958 () Unit!157391)

(declare-fun mainMatchTheorem!3160 (Regex!16059 List!64478) Unit!157391)

(assert (=> b!6109983 (= lt!2329958 (mainMatchTheorem!3160 r!7292 s!2326))))

(declare-fun b!6109984 () Bool)

(assert (=> b!6109984 (= e!3725642 (inv!83394 lt!2329957))))

(declare-fun b!6109985 () Bool)

(declare-fun res!2534225 () Bool)

(assert (=> b!6109985 (=> res!2534225 e!3725645)))

(assert (=> b!6109985 (= res!2534225 (not ((_ is Cons!64352) (exprs!5943 (h!70801 zl!343)))))))

(declare-fun b!6109986 () Bool)

(declare-fun res!2534233 () Bool)

(assert (=> b!6109986 (=> res!2534233 e!3725645)))

(declare-fun generalisedConcat!1656 (List!64476) Regex!16059)

(assert (=> b!6109986 (= res!2534233 (not (= r!7292 (generalisedConcat!1656 (exprs!5943 (h!70801 zl!343))))))))

(declare-fun b!6109987 () Bool)

(declare-fun tp!1706690 () Bool)

(assert (=> b!6109987 (= e!3725646 tp!1706690)))

(assert (= (and start!610650 res!2534226) b!6109981))

(assert (= (and b!6109981 res!2534237) b!6109982))

(assert (= (and b!6109982 res!2534228) b!6109983))

(assert (= (and b!6109983 (not res!2534234)) b!6109966))

(assert (= (and b!6109966 (not res!2534230)) b!6109986))

(assert (= (and b!6109986 (not res!2534233)) b!6109985))

(assert (= (and b!6109985 (not res!2534225)) b!6109968))

(assert (= (and b!6109968 (not res!2534232)) b!6109979))

(assert (= (and b!6109979 (not res!2534229)) b!6109969))

(assert (= (and b!6109969 (not res!2534235)) b!6109970))

(assert (= (and b!6109970 (not res!2534227)) b!6109974))

(assert (= (and b!6109974 c!1097650) b!6109977))

(assert (= (and b!6109974 (not c!1097650)) b!6109978))

(assert (= (and b!6109977 (not res!2534236)) b!6109980))

(assert (= (and b!6109974 (not res!2534231)) b!6109984))

(assert (= (and start!610650 ((_ is ElementMatch!16059) r!7292)) b!6109972))

(assert (= (and start!610650 ((_ is Concat!24904) r!7292)) b!6109973))

(assert (= (and start!610650 ((_ is Star!16059) r!7292)) b!6109967))

(assert (= (and start!610650 ((_ is Union!16059) r!7292)) b!6109976))

(assert (= (and start!610650 condSetEmpty!41276) setIsEmpty!41276))

(assert (= (and start!610650 (not condSetEmpty!41276)) setNonEmpty!41276))

(assert (= setNonEmpty!41276 b!6109987))

(assert (= b!6109971 b!6109965))

(assert (= (and start!610650 ((_ is Cons!64353) zl!343)) b!6109971))

(assert (= (and start!610650 ((_ is Cons!64354) s!2326)) b!6109975))

(declare-fun m!6959422 () Bool)

(assert (=> b!6109966 m!6959422))

(declare-fun m!6959424 () Bool)

(assert (=> b!6109971 m!6959424))

(declare-fun m!6959426 () Bool)

(assert (=> b!6109984 m!6959426))

(declare-fun m!6959428 () Bool)

(assert (=> setNonEmpty!41276 m!6959428))

(declare-fun m!6959430 () Bool)

(assert (=> b!6109977 m!6959430))

(declare-fun m!6959432 () Bool)

(assert (=> b!6109977 m!6959432))

(declare-fun m!6959434 () Bool)

(assert (=> b!6109977 m!6959434))

(declare-fun m!6959436 () Bool)

(assert (=> b!6109982 m!6959436))

(declare-fun m!6959438 () Bool)

(assert (=> start!610650 m!6959438))

(declare-fun m!6959440 () Bool)

(assert (=> b!6109968 m!6959440))

(assert (=> b!6109968 m!6959440))

(declare-fun m!6959442 () Bool)

(assert (=> b!6109968 m!6959442))

(declare-fun m!6959444 () Bool)

(assert (=> b!6109969 m!6959444))

(declare-fun m!6959446 () Bool)

(assert (=> b!6109969 m!6959446))

(declare-fun m!6959448 () Bool)

(assert (=> b!6109969 m!6959448))

(declare-fun m!6959450 () Bool)

(assert (=> b!6109969 m!6959450))

(assert (=> b!6109969 m!6959450))

(declare-fun m!6959452 () Bool)

(assert (=> b!6109969 m!6959452))

(assert (=> b!6109969 m!6959446))

(declare-fun m!6959454 () Bool)

(assert (=> b!6109969 m!6959454))

(declare-fun m!6959456 () Bool)

(assert (=> b!6109980 m!6959456))

(declare-fun m!6959458 () Bool)

(assert (=> b!6109974 m!6959458))

(declare-fun m!6959460 () Bool)

(assert (=> b!6109974 m!6959460))

(declare-fun m!6959462 () Bool)

(assert (=> b!6109974 m!6959462))

(declare-fun m!6959464 () Bool)

(assert (=> b!6109974 m!6959464))

(declare-fun m!6959466 () Bool)

(assert (=> b!6109974 m!6959466))

(declare-fun m!6959468 () Bool)

(assert (=> b!6109974 m!6959468))

(declare-fun m!6959470 () Bool)

(assert (=> b!6109974 m!6959470))

(declare-fun m!6959472 () Bool)

(assert (=> b!6109981 m!6959472))

(declare-fun m!6959474 () Bool)

(assert (=> b!6109983 m!6959474))

(declare-fun m!6959476 () Bool)

(assert (=> b!6109983 m!6959476))

(declare-fun m!6959478 () Bool)

(assert (=> b!6109983 m!6959478))

(declare-fun m!6959480 () Bool)

(assert (=> b!6109970 m!6959480))

(declare-fun m!6959482 () Bool)

(assert (=> b!6109986 m!6959482))

(check-sat (not b!6109965) (not b!6109977) (not b!6109983) (not b!6109980) (not b!6109973) (not b!6109969) (not b!6109971) (not b!6109982) (not setNonEmpty!41276) (not b!6109970) (not b!6109968) (not b!6109986) (not start!610650) tp_is_empty!41371 (not b!6109984) (not b!6109976) (not b!6109974) (not b!6109987) (not b!6109967) (not b!6109975) (not b!6109966) (not b!6109981))
(check-sat)
(get-model)

(declare-fun d!1914783 () Bool)

(declare-fun lambda!332823 () Int)

(declare-fun forall!15180 (List!64476 Int) Bool)

(assert (=> d!1914783 (= (inv!83394 setElem!41276) (forall!15180 (exprs!5943 setElem!41276) lambda!332823))))

(declare-fun bs!1516719 () Bool)

(assert (= bs!1516719 d!1914783))

(declare-fun m!6959528 () Bool)

(assert (=> bs!1516719 m!6959528))

(assert (=> setNonEmpty!41276 d!1914783))

(declare-fun d!1914787 () Bool)

(declare-fun e!3725676 () Bool)

(assert (=> d!1914787 (= (matchZipper!2071 ((_ map or) lt!2329951 lt!2329959) (t!377933 s!2326)) e!3725676)))

(declare-fun res!2534267 () Bool)

(assert (=> d!1914787 (=> res!2534267 e!3725676)))

(assert (=> d!1914787 (= res!2534267 (matchZipper!2071 lt!2329951 (t!377933 s!2326)))))

(declare-fun lt!2329980 () Unit!157391)

(declare-fun choose!45407 ((InoxSet Context!10886) (InoxSet Context!10886) List!64478) Unit!157391)

(assert (=> d!1914787 (= lt!2329980 (choose!45407 lt!2329951 lt!2329959 (t!377933 s!2326)))))

(assert (=> d!1914787 (= (lemmaZipperConcatMatchesSameAsBothZippers!890 lt!2329951 lt!2329959 (t!377933 s!2326)) lt!2329980)))

(declare-fun b!6110041 () Bool)

(assert (=> b!6110041 (= e!3725676 (matchZipper!2071 lt!2329959 (t!377933 s!2326)))))

(assert (= (and d!1914787 (not res!2534267)) b!6110041))

(assert (=> d!1914787 m!6959434))

(assert (=> d!1914787 m!6959432))

(declare-fun m!6959530 () Bool)

(assert (=> d!1914787 m!6959530))

(assert (=> b!6110041 m!6959456))

(assert (=> b!6109977 d!1914787))

(declare-fun d!1914789 () Bool)

(declare-fun c!1097669 () Bool)

(declare-fun isEmpty!36281 (List!64478) Bool)

(assert (=> d!1914789 (= c!1097669 (isEmpty!36281 (t!377933 s!2326)))))

(declare-fun e!3725688 () Bool)

(assert (=> d!1914789 (= (matchZipper!2071 lt!2329951 (t!377933 s!2326)) e!3725688)))

(declare-fun b!6110061 () Bool)

(declare-fun nullableZipper!1840 ((InoxSet Context!10886)) Bool)

(assert (=> b!6110061 (= e!3725688 (nullableZipper!1840 lt!2329951))))

(declare-fun b!6110062 () Bool)

(declare-fun derivationStepZipper!2032 ((InoxSet Context!10886) C!32388) (InoxSet Context!10886))

(declare-fun head!12639 (List!64478) C!32388)

(declare-fun tail!11724 (List!64478) List!64478)

(assert (=> b!6110062 (= e!3725688 (matchZipper!2071 (derivationStepZipper!2032 lt!2329951 (head!12639 (t!377933 s!2326))) (tail!11724 (t!377933 s!2326))))))

(assert (= (and d!1914789 c!1097669) b!6110061))

(assert (= (and d!1914789 (not c!1097669)) b!6110062))

(declare-fun m!6959544 () Bool)

(assert (=> d!1914789 m!6959544))

(declare-fun m!6959548 () Bool)

(assert (=> b!6110061 m!6959548))

(declare-fun m!6959552 () Bool)

(assert (=> b!6110062 m!6959552))

(assert (=> b!6110062 m!6959552))

(declare-fun m!6959554 () Bool)

(assert (=> b!6110062 m!6959554))

(declare-fun m!6959556 () Bool)

(assert (=> b!6110062 m!6959556))

(assert (=> b!6110062 m!6959554))

(assert (=> b!6110062 m!6959556))

(declare-fun m!6959558 () Bool)

(assert (=> b!6110062 m!6959558))

(assert (=> b!6109977 d!1914789))

(declare-fun d!1914799 () Bool)

(declare-fun c!1097670 () Bool)

(assert (=> d!1914799 (= c!1097670 (isEmpty!36281 (t!377933 s!2326)))))

(declare-fun e!3725689 () Bool)

(assert (=> d!1914799 (= (matchZipper!2071 ((_ map or) lt!2329951 lt!2329959) (t!377933 s!2326)) e!3725689)))

(declare-fun b!6110063 () Bool)

(assert (=> b!6110063 (= e!3725689 (nullableZipper!1840 ((_ map or) lt!2329951 lt!2329959)))))

(declare-fun b!6110064 () Bool)

(assert (=> b!6110064 (= e!3725689 (matchZipper!2071 (derivationStepZipper!2032 ((_ map or) lt!2329951 lt!2329959) (head!12639 (t!377933 s!2326))) (tail!11724 (t!377933 s!2326))))))

(assert (= (and d!1914799 c!1097670) b!6110063))

(assert (= (and d!1914799 (not c!1097670)) b!6110064))

(assert (=> d!1914799 m!6959544))

(declare-fun m!6959560 () Bool)

(assert (=> b!6110063 m!6959560))

(assert (=> b!6110064 m!6959552))

(assert (=> b!6110064 m!6959552))

(declare-fun m!6959562 () Bool)

(assert (=> b!6110064 m!6959562))

(assert (=> b!6110064 m!6959556))

(assert (=> b!6110064 m!6959562))

(assert (=> b!6110064 m!6959556))

(declare-fun m!6959564 () Bool)

(assert (=> b!6110064 m!6959564))

(assert (=> b!6109977 d!1914799))

(declare-fun bs!1516727 () Bool)

(declare-fun d!1914801 () Bool)

(assert (= bs!1516727 (and d!1914801 d!1914783)))

(declare-fun lambda!332832 () Int)

(assert (=> bs!1516727 (= lambda!332832 lambda!332823)))

(declare-fun b!6110128 () Bool)

(declare-fun e!3725729 () Regex!16059)

(declare-fun e!3725727 () Regex!16059)

(assert (=> b!6110128 (= e!3725729 e!3725727)))

(declare-fun c!1097701 () Bool)

(assert (=> b!6110128 (= c!1097701 ((_ is Cons!64352) (unfocusZipperList!1480 zl!343)))))

(declare-fun e!3725728 () Bool)

(assert (=> d!1914801 e!3725728))

(declare-fun res!2534281 () Bool)

(assert (=> d!1914801 (=> (not res!2534281) (not e!3725728))))

(declare-fun lt!2329986 () Regex!16059)

(assert (=> d!1914801 (= res!2534281 (validRegex!7795 lt!2329986))))

(assert (=> d!1914801 (= lt!2329986 e!3725729)))

(declare-fun c!1097700 () Bool)

(declare-fun e!3725731 () Bool)

(assert (=> d!1914801 (= c!1097700 e!3725731)))

(declare-fun res!2534280 () Bool)

(assert (=> d!1914801 (=> (not res!2534280) (not e!3725731))))

(assert (=> d!1914801 (= res!2534280 ((_ is Cons!64352) (unfocusZipperList!1480 zl!343)))))

(assert (=> d!1914801 (forall!15180 (unfocusZipperList!1480 zl!343) lambda!332832)))

(assert (=> d!1914801 (= (generalisedUnion!1903 (unfocusZipperList!1480 zl!343)) lt!2329986)))

(declare-fun b!6110129 () Bool)

(declare-fun e!3725726 () Bool)

(declare-fun isUnion!916 (Regex!16059) Bool)

(assert (=> b!6110129 (= e!3725726 (isUnion!916 lt!2329986))))

(declare-fun b!6110130 () Bool)

(assert (=> b!6110130 (= e!3725731 (isEmpty!36278 (t!377931 (unfocusZipperList!1480 zl!343))))))

(declare-fun b!6110131 () Bool)

(assert (=> b!6110131 (= e!3725727 (Union!16059 (h!70800 (unfocusZipperList!1480 zl!343)) (generalisedUnion!1903 (t!377931 (unfocusZipperList!1480 zl!343)))))))

(declare-fun b!6110132 () Bool)

(declare-fun e!3725730 () Bool)

(assert (=> b!6110132 (= e!3725728 e!3725730)))

(declare-fun c!1097699 () Bool)

(assert (=> b!6110132 (= c!1097699 (isEmpty!36278 (unfocusZipperList!1480 zl!343)))))

(declare-fun b!6110133 () Bool)

(assert (=> b!6110133 (= e!3725727 EmptyLang!16059)))

(declare-fun b!6110134 () Bool)

(declare-fun isEmptyLang!1486 (Regex!16059) Bool)

(assert (=> b!6110134 (= e!3725730 (isEmptyLang!1486 lt!2329986))))

(declare-fun b!6110135 () Bool)

(declare-fun head!12640 (List!64476) Regex!16059)

(assert (=> b!6110135 (= e!3725726 (= lt!2329986 (head!12640 (unfocusZipperList!1480 zl!343))))))

(declare-fun b!6110136 () Bool)

(assert (=> b!6110136 (= e!3725730 e!3725726)))

(declare-fun c!1097698 () Bool)

(declare-fun tail!11725 (List!64476) List!64476)

(assert (=> b!6110136 (= c!1097698 (isEmpty!36278 (tail!11725 (unfocusZipperList!1480 zl!343))))))

(declare-fun b!6110137 () Bool)

(assert (=> b!6110137 (= e!3725729 (h!70800 (unfocusZipperList!1480 zl!343)))))

(assert (= (and d!1914801 res!2534280) b!6110130))

(assert (= (and d!1914801 c!1097700) b!6110137))

(assert (= (and d!1914801 (not c!1097700)) b!6110128))

(assert (= (and b!6110128 c!1097701) b!6110131))

(assert (= (and b!6110128 (not c!1097701)) b!6110133))

(assert (= (and d!1914801 res!2534281) b!6110132))

(assert (= (and b!6110132 c!1097699) b!6110134))

(assert (= (and b!6110132 (not c!1097699)) b!6110136))

(assert (= (and b!6110136 c!1097698) b!6110135))

(assert (= (and b!6110136 (not c!1097698)) b!6110129))

(declare-fun m!6959594 () Bool)

(assert (=> b!6110134 m!6959594))

(assert (=> b!6110136 m!6959440))

(declare-fun m!6959596 () Bool)

(assert (=> b!6110136 m!6959596))

(assert (=> b!6110136 m!6959596))

(declare-fun m!6959598 () Bool)

(assert (=> b!6110136 m!6959598))

(assert (=> b!6110135 m!6959440))

(declare-fun m!6959600 () Bool)

(assert (=> b!6110135 m!6959600))

(declare-fun m!6959602 () Bool)

(assert (=> b!6110131 m!6959602))

(declare-fun m!6959604 () Bool)

(assert (=> b!6110130 m!6959604))

(declare-fun m!6959606 () Bool)

(assert (=> d!1914801 m!6959606))

(assert (=> d!1914801 m!6959440))

(declare-fun m!6959608 () Bool)

(assert (=> d!1914801 m!6959608))

(assert (=> b!6110132 m!6959440))

(declare-fun m!6959610 () Bool)

(assert (=> b!6110132 m!6959610))

(declare-fun m!6959612 () Bool)

(assert (=> b!6110129 m!6959612))

(assert (=> b!6109968 d!1914801))

(declare-fun bs!1516729 () Bool)

(declare-fun d!1914813 () Bool)

(assert (= bs!1516729 (and d!1914813 d!1914783)))

(declare-fun lambda!332835 () Int)

(assert (=> bs!1516729 (= lambda!332835 lambda!332823)))

(declare-fun bs!1516730 () Bool)

(assert (= bs!1516730 (and d!1914813 d!1914801)))

(assert (=> bs!1516730 (= lambda!332835 lambda!332832)))

(declare-fun lt!2329992 () List!64476)

(assert (=> d!1914813 (forall!15180 lt!2329992 lambda!332835)))

(declare-fun e!3725755 () List!64476)

(assert (=> d!1914813 (= lt!2329992 e!3725755)))

(declare-fun c!1097710 () Bool)

(assert (=> d!1914813 (= c!1097710 ((_ is Cons!64353) zl!343))))

(assert (=> d!1914813 (= (unfocusZipperList!1480 zl!343) lt!2329992)))

(declare-fun b!6110169 () Bool)

(assert (=> b!6110169 (= e!3725755 (Cons!64352 (generalisedConcat!1656 (exprs!5943 (h!70801 zl!343))) (unfocusZipperList!1480 (t!377932 zl!343))))))

(declare-fun b!6110170 () Bool)

(assert (=> b!6110170 (= e!3725755 Nil!64352)))

(assert (= (and d!1914813 c!1097710) b!6110169))

(assert (= (and d!1914813 (not c!1097710)) b!6110170))

(declare-fun m!6959622 () Bool)

(assert (=> d!1914813 m!6959622))

(assert (=> b!6110169 m!6959482))

(declare-fun m!6959624 () Bool)

(assert (=> b!6110169 m!6959624))

(assert (=> b!6109968 d!1914813))

(declare-fun b!6110260 () Bool)

(declare-fun e!3725812 () Bool)

(declare-fun lt!2330012 () Option!15950)

(declare-fun ++!14146 (List!64478 List!64478) List!64478)

(declare-fun get!22191 (Option!15950) tuple2!66076)

(assert (=> b!6110260 (= e!3725812 (= (++!14146 (_1!36341 (get!22191 lt!2330012)) (_2!36341 (get!22191 lt!2330012))) s!2326))))

(declare-fun b!6110261 () Bool)

(declare-fun lt!2330010 () Unit!157391)

(declare-fun lt!2330011 () Unit!157391)

(assert (=> b!6110261 (= lt!2330010 lt!2330011)))

(assert (=> b!6110261 (= (++!14146 (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354)) (t!377933 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2241 (List!64478 C!32388 List!64478 List!64478) Unit!157391)

(assert (=> b!6110261 (= lt!2330011 (lemmaMoveElementToOtherListKeepsConcatEq!2241 Nil!64354 (h!70802 s!2326) (t!377933 s!2326) s!2326))))

(declare-fun e!3725811 () Option!15950)

(assert (=> b!6110261 (= e!3725811 (findConcatSeparation!2364 (regOne!32630 r!7292) (regTwo!32630 r!7292) (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354)) (t!377933 s!2326) s!2326))))

(declare-fun b!6110262 () Bool)

(declare-fun e!3725809 () Option!15950)

(assert (=> b!6110262 (= e!3725809 (Some!15949 (tuple2!66077 Nil!64354 s!2326)))))

(declare-fun b!6110264 () Bool)

(declare-fun e!3725810 () Bool)

(assert (=> b!6110264 (= e!3725810 (matchR!8242 (regTwo!32630 r!7292) s!2326))))

(declare-fun d!1914821 () Bool)

(declare-fun e!3725813 () Bool)

(assert (=> d!1914821 e!3725813))

(declare-fun res!2534324 () Bool)

(assert (=> d!1914821 (=> res!2534324 e!3725813)))

(assert (=> d!1914821 (= res!2534324 e!3725812)))

(declare-fun res!2534326 () Bool)

(assert (=> d!1914821 (=> (not res!2534326) (not e!3725812))))

(assert (=> d!1914821 (= res!2534326 (isDefined!12653 lt!2330012))))

(assert (=> d!1914821 (= lt!2330012 e!3725809)))

(declare-fun c!1097744 () Bool)

(assert (=> d!1914821 (= c!1097744 e!3725810)))

(declare-fun res!2534323 () Bool)

(assert (=> d!1914821 (=> (not res!2534323) (not e!3725810))))

(assert (=> d!1914821 (= res!2534323 (matchR!8242 (regOne!32630 r!7292) Nil!64354))))

(assert (=> d!1914821 (validRegex!7795 (regOne!32630 r!7292))))

(assert (=> d!1914821 (= (findConcatSeparation!2364 (regOne!32630 r!7292) (regTwo!32630 r!7292) Nil!64354 s!2326 s!2326) lt!2330012)))

(declare-fun b!6110263 () Bool)

(declare-fun res!2534325 () Bool)

(assert (=> b!6110263 (=> (not res!2534325) (not e!3725812))))

(assert (=> b!6110263 (= res!2534325 (matchR!8242 (regTwo!32630 r!7292) (_2!36341 (get!22191 lt!2330012))))))

(declare-fun b!6110265 () Bool)

(assert (=> b!6110265 (= e!3725813 (not (isDefined!12653 lt!2330012)))))

(declare-fun b!6110266 () Bool)

(declare-fun res!2534322 () Bool)

(assert (=> b!6110266 (=> (not res!2534322) (not e!3725812))))

(assert (=> b!6110266 (= res!2534322 (matchR!8242 (regOne!32630 r!7292) (_1!36341 (get!22191 lt!2330012))))))

(declare-fun b!6110267 () Bool)

(assert (=> b!6110267 (= e!3725811 None!15949)))

(declare-fun b!6110268 () Bool)

(assert (=> b!6110268 (= e!3725809 e!3725811)))

(declare-fun c!1097743 () Bool)

(assert (=> b!6110268 (= c!1097743 ((_ is Nil!64354) s!2326))))

(assert (= (and d!1914821 res!2534323) b!6110264))

(assert (= (and d!1914821 c!1097744) b!6110262))

(assert (= (and d!1914821 (not c!1097744)) b!6110268))

(assert (= (and b!6110268 c!1097743) b!6110267))

(assert (= (and b!6110268 (not c!1097743)) b!6110261))

(assert (= (and d!1914821 res!2534326) b!6110266))

(assert (= (and b!6110266 res!2534322) b!6110263))

(assert (= (and b!6110263 res!2534325) b!6110260))

(assert (= (and d!1914821 (not res!2534324)) b!6110265))

(declare-fun m!6959684 () Bool)

(assert (=> b!6110260 m!6959684))

(declare-fun m!6959686 () Bool)

(assert (=> b!6110260 m!6959686))

(assert (=> b!6110263 m!6959684))

(declare-fun m!6959688 () Bool)

(assert (=> b!6110263 m!6959688))

(declare-fun m!6959690 () Bool)

(assert (=> b!6110264 m!6959690))

(declare-fun m!6959692 () Bool)

(assert (=> b!6110261 m!6959692))

(assert (=> b!6110261 m!6959692))

(declare-fun m!6959694 () Bool)

(assert (=> b!6110261 m!6959694))

(declare-fun m!6959696 () Bool)

(assert (=> b!6110261 m!6959696))

(assert (=> b!6110261 m!6959692))

(declare-fun m!6959698 () Bool)

(assert (=> b!6110261 m!6959698))

(assert (=> b!6110266 m!6959684))

(declare-fun m!6959700 () Bool)

(assert (=> b!6110266 m!6959700))

(declare-fun m!6959702 () Bool)

(assert (=> d!1914821 m!6959702))

(declare-fun m!6959704 () Bool)

(assert (=> d!1914821 m!6959704))

(declare-fun m!6959706 () Bool)

(assert (=> d!1914821 m!6959706))

(assert (=> b!6110265 m!6959702))

(assert (=> b!6109969 d!1914821))

(declare-fun d!1914837 () Bool)

(declare-fun choose!45410 (Int) Bool)

(assert (=> d!1914837 (= (Exists!3129 lambda!332815) (choose!45410 lambda!332815))))

(declare-fun bs!1516738 () Bool)

(assert (= bs!1516738 d!1914837))

(declare-fun m!6959708 () Bool)

(assert (=> bs!1516738 m!6959708))

(assert (=> b!6109969 d!1914837))

(declare-fun d!1914839 () Bool)

(assert (=> d!1914839 (= (Exists!3129 lambda!332816) (choose!45410 lambda!332816))))

(declare-fun bs!1516739 () Bool)

(assert (= bs!1516739 d!1914839))

(declare-fun m!6959710 () Bool)

(assert (=> bs!1516739 m!6959710))

(assert (=> b!6109969 d!1914839))

(declare-fun bs!1516747 () Bool)

(declare-fun d!1914841 () Bool)

(assert (= bs!1516747 (and d!1914841 b!6109969)))

(declare-fun lambda!332856 () Int)

(assert (=> bs!1516747 (= lambda!332856 lambda!332815)))

(assert (=> bs!1516747 (not (= lambda!332856 lambda!332816))))

(assert (=> d!1914841 true))

(assert (=> d!1914841 true))

(assert (=> d!1914841 true))

(assert (=> d!1914841 (= (isDefined!12653 (findConcatSeparation!2364 (regOne!32630 r!7292) (regTwo!32630 r!7292) Nil!64354 s!2326 s!2326)) (Exists!3129 lambda!332856))))

(declare-fun lt!2330016 () Unit!157391)

(declare-fun choose!45411 (Regex!16059 Regex!16059 List!64478) Unit!157391)

(assert (=> d!1914841 (= lt!2330016 (choose!45411 (regOne!32630 r!7292) (regTwo!32630 r!7292) s!2326))))

(assert (=> d!1914841 (validRegex!7795 (regOne!32630 r!7292))))

(assert (=> d!1914841 (= (lemmaFindConcatSeparationEquivalentToExists!2128 (regOne!32630 r!7292) (regTwo!32630 r!7292) s!2326) lt!2330016)))

(declare-fun bs!1516748 () Bool)

(assert (= bs!1516748 d!1914841))

(assert (=> bs!1516748 m!6959446))

(declare-fun m!6959720 () Bool)

(assert (=> bs!1516748 m!6959720))

(assert (=> bs!1516748 m!6959706))

(assert (=> bs!1516748 m!6959446))

(assert (=> bs!1516748 m!6959448))

(declare-fun m!6959722 () Bool)

(assert (=> bs!1516748 m!6959722))

(assert (=> b!6109969 d!1914841))

(declare-fun bs!1516761 () Bool)

(declare-fun d!1914845 () Bool)

(assert (= bs!1516761 (and d!1914845 b!6109969)))

(declare-fun lambda!332863 () Int)

(assert (=> bs!1516761 (= lambda!332863 lambda!332815)))

(assert (=> bs!1516761 (not (= lambda!332863 lambda!332816))))

(declare-fun bs!1516762 () Bool)

(assert (= bs!1516762 (and d!1914845 d!1914841)))

(assert (=> bs!1516762 (= lambda!332863 lambda!332856)))

(assert (=> d!1914845 true))

(assert (=> d!1914845 true))

(assert (=> d!1914845 true))

(declare-fun lambda!332864 () Int)

(assert (=> bs!1516761 (not (= lambda!332864 lambda!332815))))

(assert (=> bs!1516761 (= lambda!332864 lambda!332816)))

(assert (=> bs!1516762 (not (= lambda!332864 lambda!332856))))

(declare-fun bs!1516763 () Bool)

(assert (= bs!1516763 d!1914845))

(assert (=> bs!1516763 (not (= lambda!332864 lambda!332863))))

(assert (=> d!1914845 true))

(assert (=> d!1914845 true))

(assert (=> d!1914845 true))

(assert (=> d!1914845 (= (Exists!3129 lambda!332863) (Exists!3129 lambda!332864))))

(declare-fun lt!2330028 () Unit!157391)

(declare-fun choose!45412 (Regex!16059 Regex!16059 List!64478) Unit!157391)

(assert (=> d!1914845 (= lt!2330028 (choose!45412 (regOne!32630 r!7292) (regTwo!32630 r!7292) s!2326))))

(assert (=> d!1914845 (validRegex!7795 (regOne!32630 r!7292))))

(assert (=> d!1914845 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1666 (regOne!32630 r!7292) (regTwo!32630 r!7292) s!2326) lt!2330028)))

(declare-fun m!6959752 () Bool)

(assert (=> bs!1516763 m!6959752))

(declare-fun m!6959754 () Bool)

(assert (=> bs!1516763 m!6959754))

(declare-fun m!6959756 () Bool)

(assert (=> bs!1516763 m!6959756))

(assert (=> bs!1516763 m!6959706))

(assert (=> b!6109969 d!1914845))

(declare-fun d!1914857 () Bool)

(declare-fun isEmpty!36282 (Option!15950) Bool)

(assert (=> d!1914857 (= (isDefined!12653 (findConcatSeparation!2364 (regOne!32630 r!7292) (regTwo!32630 r!7292) Nil!64354 s!2326 s!2326)) (not (isEmpty!36282 (findConcatSeparation!2364 (regOne!32630 r!7292) (regTwo!32630 r!7292) Nil!64354 s!2326 s!2326))))))

(declare-fun bs!1516765 () Bool)

(assert (= bs!1516765 d!1914857))

(assert (=> bs!1516765 m!6959446))

(declare-fun m!6959758 () Bool)

(assert (=> bs!1516765 m!6959758))

(assert (=> b!6109969 d!1914857))

(declare-fun d!1914861 () Bool)

(declare-fun choose!45413 ((InoxSet Context!10886) Int) (InoxSet Context!10886))

(assert (=> d!1914861 (= (flatMap!1564 z!1189 lambda!332817) (choose!45413 z!1189 lambda!332817))))

(declare-fun bs!1516766 () Bool)

(assert (= bs!1516766 d!1914861))

(declare-fun m!6959760 () Bool)

(assert (=> bs!1516766 m!6959760))

(assert (=> b!6109974 d!1914861))

(declare-fun bm!505585 () Bool)

(declare-fun call!505590 () List!64476)

(declare-fun call!505592 () List!64476)

(assert (=> bm!505585 (= call!505590 call!505592)))

(declare-fun b!6110447 () Bool)

(declare-fun e!3725905 () (InoxSet Context!10886))

(declare-fun e!3725909 () (InoxSet Context!10886))

(assert (=> b!6110447 (= e!3725905 e!3725909)))

(declare-fun c!1097778 () Bool)

(assert (=> b!6110447 (= c!1097778 ((_ is Concat!24904) (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun b!6110448 () Bool)

(declare-fun call!505593 () (InoxSet Context!10886))

(assert (=> b!6110448 (= e!3725909 call!505593)))

(declare-fun bm!505586 () Bool)

(declare-fun call!505591 () (InoxSet Context!10886))

(assert (=> bm!505586 (= call!505593 call!505591)))

(declare-fun b!6110449 () Bool)

(declare-fun e!3725910 () (InoxSet Context!10886))

(declare-fun e!3725906 () (InoxSet Context!10886))

(assert (=> b!6110449 (= e!3725910 e!3725906)))

(declare-fun c!1097781 () Bool)

(assert (=> b!6110449 (= c!1097781 ((_ is Union!16059) (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun bm!505587 () Bool)

(declare-fun call!505594 () (InoxSet Context!10886))

(assert (=> bm!505587 (= call!505594 (derivationStepZipperDown!1307 (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343))))) (ite c!1097781 lt!2329957 (Context!10887 call!505592)) (h!70802 s!2326)))))

(declare-fun d!1914863 () Bool)

(declare-fun c!1097777 () Bool)

(assert (=> d!1914863 (= c!1097777 (and ((_ is ElementMatch!16059) (h!70800 (exprs!5943 (h!70801 zl!343)))) (= (c!1097651 (h!70800 (exprs!5943 (h!70801 zl!343)))) (h!70802 s!2326))))))

(assert (=> d!1914863 (= (derivationStepZipperDown!1307 (h!70800 (exprs!5943 (h!70801 zl!343))) lt!2329957 (h!70802 s!2326)) e!3725910)))

(declare-fun b!6110450 () Bool)

(declare-fun c!1097780 () Bool)

(assert (=> b!6110450 (= c!1097780 ((_ is Star!16059) (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun e!3725907 () (InoxSet Context!10886))

(assert (=> b!6110450 (= e!3725909 e!3725907)))

(declare-fun b!6110451 () Bool)

(declare-fun c!1097779 () Bool)

(declare-fun e!3725908 () Bool)

(assert (=> b!6110451 (= c!1097779 e!3725908)))

(declare-fun res!2534387 () Bool)

(assert (=> b!6110451 (=> (not res!2534387) (not e!3725908))))

(assert (=> b!6110451 (= res!2534387 ((_ is Concat!24904) (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(assert (=> b!6110451 (= e!3725906 e!3725905)))

(declare-fun bm!505588 () Bool)

(declare-fun call!505595 () (InoxSet Context!10886))

(assert (=> bm!505588 (= call!505595 (derivationStepZipperDown!1307 (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343))))))) (ite (or c!1097781 c!1097779) lt!2329957 (Context!10887 call!505590)) (h!70802 s!2326)))))

(declare-fun b!6110452 () Bool)

(assert (=> b!6110452 (= e!3725910 (store ((as const (Array Context!10886 Bool)) false) lt!2329957 true))))

(declare-fun b!6110453 () Bool)

(assert (=> b!6110453 (= e!3725907 ((as const (Array Context!10886 Bool)) false))))

(declare-fun b!6110454 () Bool)

(assert (=> b!6110454 (= e!3725905 ((_ map or) call!505594 call!505591))))

(declare-fun bm!505589 () Bool)

(assert (=> bm!505589 (= call!505591 call!505595)))

(declare-fun bm!505590 () Bool)

(declare-fun $colon$colon!1936 (List!64476 Regex!16059) List!64476)

(assert (=> bm!505590 (= call!505592 ($colon$colon!1936 (exprs!5943 lt!2329957) (ite (or c!1097779 c!1097778) (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (h!70800 (exprs!5943 (h!70801 zl!343))))))))

(declare-fun b!6110455 () Bool)

(assert (=> b!6110455 (= e!3725908 (nullable!6052 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343))))))))

(declare-fun b!6110456 () Bool)

(assert (=> b!6110456 (= e!3725906 ((_ map or) call!505594 call!505595))))

(declare-fun b!6110457 () Bool)

(assert (=> b!6110457 (= e!3725907 call!505593)))

(assert (= (and d!1914863 c!1097777) b!6110452))

(assert (= (and d!1914863 (not c!1097777)) b!6110449))

(assert (= (and b!6110449 c!1097781) b!6110456))

(assert (= (and b!6110449 (not c!1097781)) b!6110451))

(assert (= (and b!6110451 res!2534387) b!6110455))

(assert (= (and b!6110451 c!1097779) b!6110454))

(assert (= (and b!6110451 (not c!1097779)) b!6110447))

(assert (= (and b!6110447 c!1097778) b!6110448))

(assert (= (and b!6110447 (not c!1097778)) b!6110450))

(assert (= (and b!6110450 c!1097780) b!6110457))

(assert (= (and b!6110450 (not c!1097780)) b!6110453))

(assert (= (or b!6110448 b!6110457) bm!505585))

(assert (= (or b!6110448 b!6110457) bm!505586))

(assert (= (or b!6110454 bm!505585) bm!505590))

(assert (= (or b!6110454 bm!505586) bm!505589))

(assert (= (or b!6110456 bm!505589) bm!505588))

(assert (= (or b!6110456 b!6110454) bm!505587))

(declare-fun m!6959762 () Bool)

(assert (=> b!6110452 m!6959762))

(declare-fun m!6959764 () Bool)

(assert (=> bm!505588 m!6959764))

(declare-fun m!6959766 () Bool)

(assert (=> bm!505587 m!6959766))

(declare-fun m!6959768 () Bool)

(assert (=> b!6110455 m!6959768))

(declare-fun m!6959770 () Bool)

(assert (=> bm!505590 m!6959770))

(assert (=> b!6109974 d!1914863))

(declare-fun d!1914865 () Bool)

(declare-fun nullableFct!2016 (Regex!16059) Bool)

(assert (=> d!1914865 (= (nullable!6052 (h!70800 (exprs!5943 (h!70801 zl!343)))) (nullableFct!2016 (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun bs!1516767 () Bool)

(assert (= bs!1516767 d!1914865))

(declare-fun m!6959772 () Bool)

(assert (=> bs!1516767 m!6959772))

(assert (=> b!6109974 d!1914865))

(declare-fun b!6110468 () Bool)

(declare-fun e!3725919 () (InoxSet Context!10886))

(declare-fun call!505598 () (InoxSet Context!10886))

(assert (=> b!6110468 (= e!3725919 call!505598)))

(declare-fun b!6110469 () Bool)

(declare-fun e!3725917 () (InoxSet Context!10886))

(assert (=> b!6110469 (= e!3725917 e!3725919)))

(declare-fun c!1097786 () Bool)

(assert (=> b!6110469 (= c!1097786 ((_ is Cons!64352) (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))))))))

(declare-fun bm!505593 () Bool)

(assert (=> bm!505593 (= call!505598 (derivationStepZipperDown!1307 (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))))) (Context!10887 (t!377931 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) (h!70802 s!2326)))))

(declare-fun b!6110470 () Bool)

(assert (=> b!6110470 (= e!3725919 ((as const (Array Context!10886 Bool)) false))))

(declare-fun b!6110472 () Bool)

(declare-fun e!3725918 () Bool)

(assert (=> b!6110472 (= e!3725918 (nullable!6052 (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))))))

(declare-fun d!1914867 () Bool)

(declare-fun c!1097787 () Bool)

(assert (=> d!1914867 (= c!1097787 e!3725918)))

(declare-fun res!2534390 () Bool)

(assert (=> d!1914867 (=> (not res!2534390) (not e!3725918))))

(assert (=> d!1914867 (= res!2534390 ((_ is Cons!64352) (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))))))))

(assert (=> d!1914867 (= (derivationStepZipperUp!1233 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))) (h!70802 s!2326)) e!3725917)))

(declare-fun b!6110471 () Bool)

(assert (=> b!6110471 (= e!3725917 ((_ map or) call!505598 (derivationStepZipperUp!1233 (Context!10887 (t!377931 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) (h!70802 s!2326))))))

(assert (= (and d!1914867 res!2534390) b!6110472))

(assert (= (and d!1914867 c!1097787) b!6110471))

(assert (= (and d!1914867 (not c!1097787)) b!6110469))

(assert (= (and b!6110469 c!1097786) b!6110468))

(assert (= (and b!6110469 (not c!1097786)) b!6110470))

(assert (= (or b!6110471 b!6110468) bm!505593))

(declare-fun m!6959774 () Bool)

(assert (=> bm!505593 m!6959774))

(declare-fun m!6959776 () Bool)

(assert (=> b!6110472 m!6959776))

(declare-fun m!6959778 () Bool)

(assert (=> b!6110471 m!6959778))

(assert (=> b!6109974 d!1914867))

(declare-fun d!1914869 () Bool)

(declare-fun dynLambda!25340 (Int Context!10886) (InoxSet Context!10886))

(assert (=> d!1914869 (= (flatMap!1564 z!1189 lambda!332817) (dynLambda!25340 lambda!332817 (h!70801 zl!343)))))

(declare-fun lt!2330031 () Unit!157391)

(declare-fun choose!45414 ((InoxSet Context!10886) Context!10886 Int) Unit!157391)

(assert (=> d!1914869 (= lt!2330031 (choose!45414 z!1189 (h!70801 zl!343) lambda!332817))))

(assert (=> d!1914869 (= z!1189 (store ((as const (Array Context!10886 Bool)) false) (h!70801 zl!343) true))))

(assert (=> d!1914869 (= (lemmaFlatMapOnSingletonSet!1090 z!1189 (h!70801 zl!343) lambda!332817) lt!2330031)))

(declare-fun b_lambda!232733 () Bool)

(assert (=> (not b_lambda!232733) (not d!1914869)))

(declare-fun bs!1516768 () Bool)

(assert (= bs!1516768 d!1914869))

(assert (=> bs!1516768 m!6959470))

(declare-fun m!6959780 () Bool)

(assert (=> bs!1516768 m!6959780))

(declare-fun m!6959782 () Bool)

(assert (=> bs!1516768 m!6959782))

(declare-fun m!6959784 () Bool)

(assert (=> bs!1516768 m!6959784))

(assert (=> b!6109974 d!1914869))

(declare-fun b!6110473 () Bool)

(declare-fun e!3725922 () (InoxSet Context!10886))

(declare-fun call!505599 () (InoxSet Context!10886))

(assert (=> b!6110473 (= e!3725922 call!505599)))

(declare-fun b!6110474 () Bool)

(declare-fun e!3725920 () (InoxSet Context!10886))

(assert (=> b!6110474 (= e!3725920 e!3725922)))

(declare-fun c!1097788 () Bool)

(assert (=> b!6110474 (= c!1097788 ((_ is Cons!64352) (exprs!5943 lt!2329957)))))

(declare-fun bm!505594 () Bool)

(assert (=> bm!505594 (= call!505599 (derivationStepZipperDown!1307 (h!70800 (exprs!5943 lt!2329957)) (Context!10887 (t!377931 (exprs!5943 lt!2329957))) (h!70802 s!2326)))))

(declare-fun b!6110475 () Bool)

(assert (=> b!6110475 (= e!3725922 ((as const (Array Context!10886 Bool)) false))))

(declare-fun b!6110477 () Bool)

(declare-fun e!3725921 () Bool)

(assert (=> b!6110477 (= e!3725921 (nullable!6052 (h!70800 (exprs!5943 lt!2329957))))))

(declare-fun d!1914871 () Bool)

(declare-fun c!1097789 () Bool)

(assert (=> d!1914871 (= c!1097789 e!3725921)))

(declare-fun res!2534391 () Bool)

(assert (=> d!1914871 (=> (not res!2534391) (not e!3725921))))

(assert (=> d!1914871 (= res!2534391 ((_ is Cons!64352) (exprs!5943 lt!2329957)))))

(assert (=> d!1914871 (= (derivationStepZipperUp!1233 lt!2329957 (h!70802 s!2326)) e!3725920)))

(declare-fun b!6110476 () Bool)

(assert (=> b!6110476 (= e!3725920 ((_ map or) call!505599 (derivationStepZipperUp!1233 (Context!10887 (t!377931 (exprs!5943 lt!2329957))) (h!70802 s!2326))))))

(assert (= (and d!1914871 res!2534391) b!6110477))

(assert (= (and d!1914871 c!1097789) b!6110476))

(assert (= (and d!1914871 (not c!1097789)) b!6110474))

(assert (= (and b!6110474 c!1097788) b!6110473))

(assert (= (and b!6110474 (not c!1097788)) b!6110475))

(assert (= (or b!6110476 b!6110473) bm!505594))

(declare-fun m!6959786 () Bool)

(assert (=> bm!505594 m!6959786))

(declare-fun m!6959788 () Bool)

(assert (=> b!6110477 m!6959788))

(declare-fun m!6959790 () Bool)

(assert (=> b!6110476 m!6959790))

(assert (=> b!6109974 d!1914871))

(declare-fun b!6110478 () Bool)

(declare-fun e!3725925 () (InoxSet Context!10886))

(declare-fun call!505600 () (InoxSet Context!10886))

(assert (=> b!6110478 (= e!3725925 call!505600)))

(declare-fun b!6110479 () Bool)

(declare-fun e!3725923 () (InoxSet Context!10886))

(assert (=> b!6110479 (= e!3725923 e!3725925)))

(declare-fun c!1097790 () Bool)

(assert (=> b!6110479 (= c!1097790 ((_ is Cons!64352) (exprs!5943 (h!70801 zl!343))))))

(declare-fun bm!505595 () Bool)

(assert (=> bm!505595 (= call!505600 (derivationStepZipperDown!1307 (h!70800 (exprs!5943 (h!70801 zl!343))) (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343)))) (h!70802 s!2326)))))

(declare-fun b!6110480 () Bool)

(assert (=> b!6110480 (= e!3725925 ((as const (Array Context!10886 Bool)) false))))

(declare-fun b!6110482 () Bool)

(declare-fun e!3725924 () Bool)

(assert (=> b!6110482 (= e!3725924 (nullable!6052 (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun d!1914873 () Bool)

(declare-fun c!1097791 () Bool)

(assert (=> d!1914873 (= c!1097791 e!3725924)))

(declare-fun res!2534392 () Bool)

(assert (=> d!1914873 (=> (not res!2534392) (not e!3725924))))

(assert (=> d!1914873 (= res!2534392 ((_ is Cons!64352) (exprs!5943 (h!70801 zl!343))))))

(assert (=> d!1914873 (= (derivationStepZipperUp!1233 (h!70801 zl!343) (h!70802 s!2326)) e!3725923)))

(declare-fun b!6110481 () Bool)

(assert (=> b!6110481 (= e!3725923 ((_ map or) call!505600 (derivationStepZipperUp!1233 (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343)))) (h!70802 s!2326))))))

(assert (= (and d!1914873 res!2534392) b!6110482))

(assert (= (and d!1914873 c!1097791) b!6110481))

(assert (= (and d!1914873 (not c!1097791)) b!6110479))

(assert (= (and b!6110479 c!1097790) b!6110478))

(assert (= (and b!6110479 (not c!1097790)) b!6110480))

(assert (= (or b!6110481 b!6110478) bm!505595))

(declare-fun m!6959792 () Bool)

(assert (=> bm!505595 m!6959792))

(assert (=> b!6110482 m!6959468))

(declare-fun m!6959794 () Bool)

(assert (=> b!6110481 m!6959794))

(assert (=> b!6109974 d!1914873))

(declare-fun d!1914875 () Bool)

(assert (=> d!1914875 (= (isEmpty!36277 (t!377932 zl!343)) ((_ is Nil!64353) (t!377932 zl!343)))))

(assert (=> b!6109966 d!1914875))

(declare-fun bs!1516769 () Bool)

(declare-fun d!1914877 () Bool)

(assert (= bs!1516769 (and d!1914877 d!1914783)))

(declare-fun lambda!332867 () Int)

(assert (=> bs!1516769 (= lambda!332867 lambda!332823)))

(declare-fun bs!1516770 () Bool)

(assert (= bs!1516770 (and d!1914877 d!1914801)))

(assert (=> bs!1516770 (= lambda!332867 lambda!332832)))

(declare-fun bs!1516771 () Bool)

(assert (= bs!1516771 (and d!1914877 d!1914813)))

(assert (=> bs!1516771 (= lambda!332867 lambda!332835)))

(declare-fun e!3725939 () Bool)

(assert (=> d!1914877 e!3725939))

(declare-fun res!2534398 () Bool)

(assert (=> d!1914877 (=> (not res!2534398) (not e!3725939))))

(declare-fun lt!2330034 () Regex!16059)

(assert (=> d!1914877 (= res!2534398 (validRegex!7795 lt!2330034))))

(declare-fun e!3725938 () Regex!16059)

(assert (=> d!1914877 (= lt!2330034 e!3725938)))

(declare-fun c!1097800 () Bool)

(declare-fun e!3725942 () Bool)

(assert (=> d!1914877 (= c!1097800 e!3725942)))

(declare-fun res!2534397 () Bool)

(assert (=> d!1914877 (=> (not res!2534397) (not e!3725942))))

(assert (=> d!1914877 (= res!2534397 ((_ is Cons!64352) (exprs!5943 (h!70801 zl!343))))))

(assert (=> d!1914877 (forall!15180 (exprs!5943 (h!70801 zl!343)) lambda!332867)))

(assert (=> d!1914877 (= (generalisedConcat!1656 (exprs!5943 (h!70801 zl!343))) lt!2330034)))

(declare-fun b!6110503 () Bool)

(declare-fun e!3725940 () Regex!16059)

(assert (=> b!6110503 (= e!3725940 EmptyExpr!16059)))

(declare-fun b!6110504 () Bool)

(assert (=> b!6110504 (= e!3725938 (h!70800 (exprs!5943 (h!70801 zl!343))))))

(declare-fun b!6110505 () Bool)

(declare-fun e!3725943 () Bool)

(assert (=> b!6110505 (= e!3725943 (= lt!2330034 (head!12640 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun b!6110506 () Bool)

(declare-fun e!3725941 () Bool)

(declare-fun isEmptyExpr!1476 (Regex!16059) Bool)

(assert (=> b!6110506 (= e!3725941 (isEmptyExpr!1476 lt!2330034))))

(declare-fun b!6110507 () Bool)

(assert (=> b!6110507 (= e!3725942 (isEmpty!36278 (t!377931 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun b!6110508 () Bool)

(assert (=> b!6110508 (= e!3725939 e!3725941)))

(declare-fun c!1097801 () Bool)

(assert (=> b!6110508 (= c!1097801 (isEmpty!36278 (exprs!5943 (h!70801 zl!343))))))

(declare-fun b!6110509 () Bool)

(assert (=> b!6110509 (= e!3725938 e!3725940)))

(declare-fun c!1097802 () Bool)

(assert (=> b!6110509 (= c!1097802 ((_ is Cons!64352) (exprs!5943 (h!70801 zl!343))))))

(declare-fun b!6110510 () Bool)

(declare-fun isConcat!999 (Regex!16059) Bool)

(assert (=> b!6110510 (= e!3725943 (isConcat!999 lt!2330034))))

(declare-fun b!6110511 () Bool)

(assert (=> b!6110511 (= e!3725940 (Concat!24904 (h!70800 (exprs!5943 (h!70801 zl!343))) (generalisedConcat!1656 (t!377931 (exprs!5943 (h!70801 zl!343))))))))

(declare-fun b!6110512 () Bool)

(assert (=> b!6110512 (= e!3725941 e!3725943)))

(declare-fun c!1097803 () Bool)

(assert (=> b!6110512 (= c!1097803 (isEmpty!36278 (tail!11725 (exprs!5943 (h!70801 zl!343)))))))

(assert (= (and d!1914877 res!2534397) b!6110507))

(assert (= (and d!1914877 c!1097800) b!6110504))

(assert (= (and d!1914877 (not c!1097800)) b!6110509))

(assert (= (and b!6110509 c!1097802) b!6110511))

(assert (= (and b!6110509 (not c!1097802)) b!6110503))

(assert (= (and d!1914877 res!2534398) b!6110508))

(assert (= (and b!6110508 c!1097801) b!6110506))

(assert (= (and b!6110508 (not c!1097801)) b!6110512))

(assert (= (and b!6110512 c!1097803) b!6110505))

(assert (= (and b!6110512 (not c!1097803)) b!6110510))

(declare-fun m!6959796 () Bool)

(assert (=> b!6110506 m!6959796))

(declare-fun m!6959798 () Bool)

(assert (=> b!6110511 m!6959798))

(declare-fun m!6959800 () Bool)

(assert (=> b!6110510 m!6959800))

(assert (=> b!6110507 m!6959480))

(declare-fun m!6959802 () Bool)

(assert (=> b!6110512 m!6959802))

(assert (=> b!6110512 m!6959802))

(declare-fun m!6959804 () Bool)

(assert (=> b!6110512 m!6959804))

(declare-fun m!6959806 () Bool)

(assert (=> d!1914877 m!6959806))

(declare-fun m!6959808 () Bool)

(assert (=> d!1914877 m!6959808))

(declare-fun m!6959810 () Bool)

(assert (=> b!6110508 m!6959810))

(declare-fun m!6959812 () Bool)

(assert (=> b!6110505 m!6959812))

(assert (=> b!6109986 d!1914877))

(declare-fun d!1914879 () Bool)

(declare-fun lt!2330037 () Regex!16059)

(assert (=> d!1914879 (validRegex!7795 lt!2330037)))

(assert (=> d!1914879 (= lt!2330037 (generalisedUnion!1903 (unfocusZipperList!1480 zl!343)))))

(assert (=> d!1914879 (= (unfocusZipper!1801 zl!343) lt!2330037)))

(declare-fun bs!1516772 () Bool)

(assert (= bs!1516772 d!1914879))

(declare-fun m!6959814 () Bool)

(assert (=> bs!1516772 m!6959814))

(assert (=> bs!1516772 m!6959440))

(assert (=> bs!1516772 m!6959440))

(assert (=> bs!1516772 m!6959442))

(assert (=> b!6109982 d!1914879))

(declare-fun bs!1516773 () Bool)

(declare-fun b!6110553 () Bool)

(assert (= bs!1516773 (and b!6110553 b!6109969)))

(declare-fun lambda!332872 () Int)

(assert (=> bs!1516773 (not (= lambda!332872 lambda!332816))))

(assert (=> bs!1516773 (not (= lambda!332872 lambda!332815))))

(declare-fun bs!1516774 () Bool)

(assert (= bs!1516774 (and b!6110553 d!1914841)))

(assert (=> bs!1516774 (not (= lambda!332872 lambda!332856))))

(declare-fun bs!1516775 () Bool)

(assert (= bs!1516775 (and b!6110553 d!1914845)))

(assert (=> bs!1516775 (not (= lambda!332872 lambda!332864))))

(assert (=> bs!1516775 (not (= lambda!332872 lambda!332863))))

(assert (=> b!6110553 true))

(assert (=> b!6110553 true))

(declare-fun bs!1516776 () Bool)

(declare-fun b!6110549 () Bool)

(assert (= bs!1516776 (and b!6110549 b!6109969)))

(declare-fun lambda!332873 () Int)

(assert (=> bs!1516776 (= lambda!332873 lambda!332816)))

(assert (=> bs!1516776 (not (= lambda!332873 lambda!332815))))

(declare-fun bs!1516777 () Bool)

(assert (= bs!1516777 (and b!6110549 d!1914841)))

(assert (=> bs!1516777 (not (= lambda!332873 lambda!332856))))

(declare-fun bs!1516778 () Bool)

(assert (= bs!1516778 (and b!6110549 d!1914845)))

(assert (=> bs!1516778 (= lambda!332873 lambda!332864)))

(assert (=> bs!1516778 (not (= lambda!332873 lambda!332863))))

(declare-fun bs!1516779 () Bool)

(assert (= bs!1516779 (and b!6110549 b!6110553)))

(assert (=> bs!1516779 (not (= lambda!332873 lambda!332872))))

(assert (=> b!6110549 true))

(assert (=> b!6110549 true))

(declare-fun c!1097814 () Bool)

(declare-fun bm!505600 () Bool)

(declare-fun call!505606 () Bool)

(assert (=> bm!505600 (= call!505606 (Exists!3129 (ite c!1097814 lambda!332872 lambda!332873)))))

(declare-fun b!6110545 () Bool)

(declare-fun e!3725962 () Bool)

(declare-fun call!505605 () Bool)

(assert (=> b!6110545 (= e!3725962 call!505605)))

(declare-fun b!6110546 () Bool)

(declare-fun e!3725964 () Bool)

(assert (=> b!6110546 (= e!3725964 (= s!2326 (Cons!64354 (c!1097651 r!7292) Nil!64354)))))

(declare-fun bm!505601 () Bool)

(assert (=> bm!505601 (= call!505605 (isEmpty!36281 s!2326))))

(declare-fun b!6110547 () Bool)

(declare-fun c!1097812 () Bool)

(assert (=> b!6110547 (= c!1097812 ((_ is ElementMatch!16059) r!7292))))

(declare-fun e!3725968 () Bool)

(assert (=> b!6110547 (= e!3725968 e!3725964)))

(declare-fun b!6110548 () Bool)

(declare-fun e!3725966 () Bool)

(declare-fun e!3725963 () Bool)

(assert (=> b!6110548 (= e!3725966 e!3725963)))

(assert (=> b!6110548 (= c!1097814 ((_ is Star!16059) r!7292))))

(assert (=> b!6110549 (= e!3725963 call!505606)))

(declare-fun b!6110550 () Bool)

(declare-fun e!3725967 () Bool)

(assert (=> b!6110550 (= e!3725967 (matchRSpec!3160 (regTwo!32631 r!7292) s!2326))))

(declare-fun b!6110551 () Bool)

(declare-fun c!1097813 () Bool)

(assert (=> b!6110551 (= c!1097813 ((_ is Union!16059) r!7292))))

(assert (=> b!6110551 (= e!3725964 e!3725966)))

(declare-fun d!1914881 () Bool)

(declare-fun c!1097815 () Bool)

(assert (=> d!1914881 (= c!1097815 ((_ is EmptyExpr!16059) r!7292))))

(assert (=> d!1914881 (= (matchRSpec!3160 r!7292 s!2326) e!3725962)))

(declare-fun b!6110552 () Bool)

(assert (=> b!6110552 (= e!3725966 e!3725967)))

(declare-fun res!2534416 () Bool)

(assert (=> b!6110552 (= res!2534416 (matchRSpec!3160 (regOne!32631 r!7292) s!2326))))

(assert (=> b!6110552 (=> res!2534416 e!3725967)))

(declare-fun e!3725965 () Bool)

(assert (=> b!6110553 (= e!3725965 call!505606)))

(declare-fun b!6110554 () Bool)

(assert (=> b!6110554 (= e!3725962 e!3725968)))

(declare-fun res!2534415 () Bool)

(assert (=> b!6110554 (= res!2534415 (not ((_ is EmptyLang!16059) r!7292)))))

(assert (=> b!6110554 (=> (not res!2534415) (not e!3725968))))

(declare-fun b!6110555 () Bool)

(declare-fun res!2534417 () Bool)

(assert (=> b!6110555 (=> res!2534417 e!3725965)))

(assert (=> b!6110555 (= res!2534417 call!505605)))

(assert (=> b!6110555 (= e!3725963 e!3725965)))

(assert (= (and d!1914881 c!1097815) b!6110545))

(assert (= (and d!1914881 (not c!1097815)) b!6110554))

(assert (= (and b!6110554 res!2534415) b!6110547))

(assert (= (and b!6110547 c!1097812) b!6110546))

(assert (= (and b!6110547 (not c!1097812)) b!6110551))

(assert (= (and b!6110551 c!1097813) b!6110552))

(assert (= (and b!6110551 (not c!1097813)) b!6110548))

(assert (= (and b!6110552 (not res!2534416)) b!6110550))

(assert (= (and b!6110548 c!1097814) b!6110555))

(assert (= (and b!6110548 (not c!1097814)) b!6110549))

(assert (= (and b!6110555 (not res!2534417)) b!6110553))

(assert (= (or b!6110553 b!6110549) bm!505600))

(assert (= (or b!6110545 b!6110555) bm!505601))

(declare-fun m!6959816 () Bool)

(assert (=> bm!505600 m!6959816))

(declare-fun m!6959818 () Bool)

(assert (=> bm!505601 m!6959818))

(declare-fun m!6959820 () Bool)

(assert (=> b!6110550 m!6959820))

(declare-fun m!6959822 () Bool)

(assert (=> b!6110552 m!6959822))

(assert (=> b!6109983 d!1914881))

(declare-fun bm!505604 () Bool)

(declare-fun call!505609 () Bool)

(assert (=> bm!505604 (= call!505609 (isEmpty!36281 s!2326))))

(declare-fun b!6110584 () Bool)

(declare-fun e!3725986 () Bool)

(declare-fun lt!2330040 () Bool)

(assert (=> b!6110584 (= e!3725986 (not lt!2330040))))

(declare-fun b!6110585 () Bool)

(declare-fun res!2534439 () Bool)

(declare-fun e!3725989 () Bool)

(assert (=> b!6110585 (=> (not res!2534439) (not e!3725989))))

(assert (=> b!6110585 (= res!2534439 (not call!505609))))

(declare-fun b!6110586 () Bool)

(declare-fun e!3725987 () Bool)

(declare-fun e!3725984 () Bool)

(assert (=> b!6110586 (= e!3725987 e!3725984)))

(declare-fun res!2534441 () Bool)

(assert (=> b!6110586 (=> res!2534441 e!3725984)))

(assert (=> b!6110586 (= res!2534441 call!505609)))

(declare-fun b!6110587 () Bool)

(declare-fun e!3725988 () Bool)

(assert (=> b!6110587 (= e!3725988 (nullable!6052 r!7292))))

(declare-fun b!6110588 () Bool)

(declare-fun res!2534435 () Bool)

(assert (=> b!6110588 (=> (not res!2534435) (not e!3725989))))

(assert (=> b!6110588 (= res!2534435 (isEmpty!36281 (tail!11724 s!2326)))))

(declare-fun b!6110589 () Bool)

(declare-fun e!3725985 () Bool)

(assert (=> b!6110589 (= e!3725985 e!3725986)))

(declare-fun c!1097823 () Bool)

(assert (=> b!6110589 (= c!1097823 ((_ is EmptyLang!16059) r!7292))))

(declare-fun d!1914883 () Bool)

(assert (=> d!1914883 e!3725985))

(declare-fun c!1097822 () Bool)

(assert (=> d!1914883 (= c!1097822 ((_ is EmptyExpr!16059) r!7292))))

(assert (=> d!1914883 (= lt!2330040 e!3725988)))

(declare-fun c!1097824 () Bool)

(assert (=> d!1914883 (= c!1097824 (isEmpty!36281 s!2326))))

(assert (=> d!1914883 (validRegex!7795 r!7292)))

(assert (=> d!1914883 (= (matchR!8242 r!7292 s!2326) lt!2330040)))

(declare-fun b!6110590 () Bool)

(declare-fun res!2534437 () Bool)

(declare-fun e!3725983 () Bool)

(assert (=> b!6110590 (=> res!2534437 e!3725983)))

(assert (=> b!6110590 (= res!2534437 e!3725989)))

(declare-fun res!2534436 () Bool)

(assert (=> b!6110590 (=> (not res!2534436) (not e!3725989))))

(assert (=> b!6110590 (= res!2534436 lt!2330040)))

(declare-fun b!6110591 () Bool)

(assert (=> b!6110591 (= e!3725984 (not (= (head!12639 s!2326) (c!1097651 r!7292))))))

(declare-fun b!6110592 () Bool)

(assert (=> b!6110592 (= e!3725985 (= lt!2330040 call!505609))))

(declare-fun b!6110593 () Bool)

(declare-fun res!2534438 () Bool)

(assert (=> b!6110593 (=> res!2534438 e!3725984)))

(assert (=> b!6110593 (= res!2534438 (not (isEmpty!36281 (tail!11724 s!2326))))))

(declare-fun b!6110594 () Bool)

(declare-fun res!2534440 () Bool)

(assert (=> b!6110594 (=> res!2534440 e!3725983)))

(assert (=> b!6110594 (= res!2534440 (not ((_ is ElementMatch!16059) r!7292)))))

(assert (=> b!6110594 (= e!3725986 e!3725983)))

(declare-fun b!6110595 () Bool)

(declare-fun derivativeStep!4780 (Regex!16059 C!32388) Regex!16059)

(assert (=> b!6110595 (= e!3725988 (matchR!8242 (derivativeStep!4780 r!7292 (head!12639 s!2326)) (tail!11724 s!2326)))))

(declare-fun b!6110596 () Bool)

(assert (=> b!6110596 (= e!3725983 e!3725987)))

(declare-fun res!2534434 () Bool)

(assert (=> b!6110596 (=> (not res!2534434) (not e!3725987))))

(assert (=> b!6110596 (= res!2534434 (not lt!2330040))))

(declare-fun b!6110597 () Bool)

(assert (=> b!6110597 (= e!3725989 (= (head!12639 s!2326) (c!1097651 r!7292)))))

(assert (= (and d!1914883 c!1097824) b!6110587))

(assert (= (and d!1914883 (not c!1097824)) b!6110595))

(assert (= (and d!1914883 c!1097822) b!6110592))

(assert (= (and d!1914883 (not c!1097822)) b!6110589))

(assert (= (and b!6110589 c!1097823) b!6110584))

(assert (= (and b!6110589 (not c!1097823)) b!6110594))

(assert (= (and b!6110594 (not res!2534440)) b!6110590))

(assert (= (and b!6110590 res!2534436) b!6110585))

(assert (= (and b!6110585 res!2534439) b!6110588))

(assert (= (and b!6110588 res!2534435) b!6110597))

(assert (= (and b!6110590 (not res!2534437)) b!6110596))

(assert (= (and b!6110596 res!2534434) b!6110586))

(assert (= (and b!6110586 (not res!2534441)) b!6110593))

(assert (= (and b!6110593 (not res!2534438)) b!6110591))

(assert (= (or b!6110592 b!6110585 b!6110586) bm!505604))

(declare-fun m!6959824 () Bool)

(assert (=> b!6110591 m!6959824))

(assert (=> b!6110597 m!6959824))

(declare-fun m!6959826 () Bool)

(assert (=> b!6110588 m!6959826))

(assert (=> b!6110588 m!6959826))

(declare-fun m!6959828 () Bool)

(assert (=> b!6110588 m!6959828))

(assert (=> bm!505604 m!6959818))

(declare-fun m!6959830 () Bool)

(assert (=> b!6110587 m!6959830))

(assert (=> b!6110593 m!6959826))

(assert (=> b!6110593 m!6959826))

(assert (=> b!6110593 m!6959828))

(assert (=> b!6110595 m!6959824))

(assert (=> b!6110595 m!6959824))

(declare-fun m!6959832 () Bool)

(assert (=> b!6110595 m!6959832))

(assert (=> b!6110595 m!6959826))

(assert (=> b!6110595 m!6959832))

(assert (=> b!6110595 m!6959826))

(declare-fun m!6959834 () Bool)

(assert (=> b!6110595 m!6959834))

(assert (=> d!1914883 m!6959818))

(assert (=> d!1914883 m!6959438))

(assert (=> b!6109983 d!1914883))

(declare-fun d!1914885 () Bool)

(assert (=> d!1914885 (= (matchR!8242 r!7292 s!2326) (matchRSpec!3160 r!7292 s!2326))))

(declare-fun lt!2330043 () Unit!157391)

(declare-fun choose!45415 (Regex!16059 List!64478) Unit!157391)

(assert (=> d!1914885 (= lt!2330043 (choose!45415 r!7292 s!2326))))

(assert (=> d!1914885 (validRegex!7795 r!7292)))

(assert (=> d!1914885 (= (mainMatchTheorem!3160 r!7292 s!2326) lt!2330043)))

(declare-fun bs!1516780 () Bool)

(assert (= bs!1516780 d!1914885))

(assert (=> bs!1516780 m!6959476))

(assert (=> bs!1516780 m!6959474))

(declare-fun m!6959836 () Bool)

(assert (=> bs!1516780 m!6959836))

(assert (=> bs!1516780 m!6959438))

(assert (=> b!6109983 d!1914885))

(declare-fun bs!1516781 () Bool)

(declare-fun d!1914887 () Bool)

(assert (= bs!1516781 (and d!1914887 d!1914783)))

(declare-fun lambda!332874 () Int)

(assert (=> bs!1516781 (= lambda!332874 lambda!332823)))

(declare-fun bs!1516782 () Bool)

(assert (= bs!1516782 (and d!1914887 d!1914801)))

(assert (=> bs!1516782 (= lambda!332874 lambda!332832)))

(declare-fun bs!1516783 () Bool)

(assert (= bs!1516783 (and d!1914887 d!1914813)))

(assert (=> bs!1516783 (= lambda!332874 lambda!332835)))

(declare-fun bs!1516784 () Bool)

(assert (= bs!1516784 (and d!1914887 d!1914877)))

(assert (=> bs!1516784 (= lambda!332874 lambda!332867)))

(assert (=> d!1914887 (= (inv!83394 lt!2329957) (forall!15180 (exprs!5943 lt!2329957) lambda!332874))))

(declare-fun bs!1516785 () Bool)

(assert (= bs!1516785 d!1914887))

(declare-fun m!6959838 () Bool)

(assert (=> bs!1516785 m!6959838))

(assert (=> b!6109984 d!1914887))

(declare-fun bm!505611 () Bool)

(declare-fun call!505616 () Bool)

(declare-fun c!1097829 () Bool)

(assert (=> bm!505611 (= call!505616 (validRegex!7795 (ite c!1097829 (regTwo!32631 r!7292) (regTwo!32630 r!7292))))))

(declare-fun b!6110616 () Bool)

(declare-fun e!3726007 () Bool)

(declare-fun e!3726008 () Bool)

(assert (=> b!6110616 (= e!3726007 e!3726008)))

(declare-fun res!2534453 () Bool)

(assert (=> b!6110616 (=> (not res!2534453) (not e!3726008))))

(declare-fun call!505618 () Bool)

(assert (=> b!6110616 (= res!2534453 call!505618)))

(declare-fun bm!505612 () Bool)

(declare-fun call!505617 () Bool)

(declare-fun c!1097830 () Bool)

(assert (=> bm!505612 (= call!505617 (validRegex!7795 (ite c!1097830 (reg!16388 r!7292) (ite c!1097829 (regOne!32631 r!7292) (regOne!32630 r!7292)))))))

(declare-fun b!6110617 () Bool)

(declare-fun e!3726005 () Bool)

(assert (=> b!6110617 (= e!3726005 call!505617)))

(declare-fun bm!505613 () Bool)

(assert (=> bm!505613 (= call!505618 call!505617)))

(declare-fun b!6110618 () Bool)

(declare-fun e!3726006 () Bool)

(assert (=> b!6110618 (= e!3726006 call!505616)))

(declare-fun b!6110619 () Bool)

(declare-fun res!2534454 () Bool)

(assert (=> b!6110619 (=> (not res!2534454) (not e!3726006))))

(assert (=> b!6110619 (= res!2534454 call!505618)))

(declare-fun e!3726009 () Bool)

(assert (=> b!6110619 (= e!3726009 e!3726006)))

(declare-fun b!6110620 () Bool)

(declare-fun e!3726010 () Bool)

(assert (=> b!6110620 (= e!3726010 e!3726005)))

(declare-fun res!2534452 () Bool)

(assert (=> b!6110620 (= res!2534452 (not (nullable!6052 (reg!16388 r!7292))))))

(assert (=> b!6110620 (=> (not res!2534452) (not e!3726005))))

(declare-fun b!6110621 () Bool)

(assert (=> b!6110621 (= e!3726010 e!3726009)))

(assert (=> b!6110621 (= c!1097829 ((_ is Union!16059) r!7292))))

(declare-fun d!1914889 () Bool)

(declare-fun res!2534456 () Bool)

(declare-fun e!3726004 () Bool)

(assert (=> d!1914889 (=> res!2534456 e!3726004)))

(assert (=> d!1914889 (= res!2534456 ((_ is ElementMatch!16059) r!7292))))

(assert (=> d!1914889 (= (validRegex!7795 r!7292) e!3726004)))

(declare-fun b!6110622 () Bool)

(assert (=> b!6110622 (= e!3726004 e!3726010)))

(assert (=> b!6110622 (= c!1097830 ((_ is Star!16059) r!7292))))

(declare-fun b!6110623 () Bool)

(declare-fun res!2534455 () Bool)

(assert (=> b!6110623 (=> res!2534455 e!3726007)))

(assert (=> b!6110623 (= res!2534455 (not ((_ is Concat!24904) r!7292)))))

(assert (=> b!6110623 (= e!3726009 e!3726007)))

(declare-fun b!6110624 () Bool)

(assert (=> b!6110624 (= e!3726008 call!505616)))

(assert (= (and d!1914889 (not res!2534456)) b!6110622))

(assert (= (and b!6110622 c!1097830) b!6110620))

(assert (= (and b!6110622 (not c!1097830)) b!6110621))

(assert (= (and b!6110620 res!2534452) b!6110617))

(assert (= (and b!6110621 c!1097829) b!6110619))

(assert (= (and b!6110621 (not c!1097829)) b!6110623))

(assert (= (and b!6110619 res!2534454) b!6110618))

(assert (= (and b!6110623 (not res!2534455)) b!6110616))

(assert (= (and b!6110616 res!2534453) b!6110624))

(assert (= (or b!6110618 b!6110624) bm!505611))

(assert (= (or b!6110619 b!6110616) bm!505613))

(assert (= (or b!6110617 bm!505613) bm!505612))

(declare-fun m!6959840 () Bool)

(assert (=> bm!505611 m!6959840))

(declare-fun m!6959842 () Bool)

(assert (=> bm!505612 m!6959842))

(declare-fun m!6959844 () Bool)

(assert (=> b!6110620 m!6959844))

(assert (=> start!610650 d!1914889))

(declare-fun d!1914891 () Bool)

(declare-fun c!1097831 () Bool)

(assert (=> d!1914891 (= c!1097831 (isEmpty!36281 (t!377933 s!2326)))))

(declare-fun e!3726011 () Bool)

(assert (=> d!1914891 (= (matchZipper!2071 lt!2329959 (t!377933 s!2326)) e!3726011)))

(declare-fun b!6110625 () Bool)

(assert (=> b!6110625 (= e!3726011 (nullableZipper!1840 lt!2329959))))

(declare-fun b!6110626 () Bool)

(assert (=> b!6110626 (= e!3726011 (matchZipper!2071 (derivationStepZipper!2032 lt!2329959 (head!12639 (t!377933 s!2326))) (tail!11724 (t!377933 s!2326))))))

(assert (= (and d!1914891 c!1097831) b!6110625))

(assert (= (and d!1914891 (not c!1097831)) b!6110626))

(assert (=> d!1914891 m!6959544))

(declare-fun m!6959846 () Bool)

(assert (=> b!6110625 m!6959846))

(assert (=> b!6110626 m!6959552))

(assert (=> b!6110626 m!6959552))

(declare-fun m!6959848 () Bool)

(assert (=> b!6110626 m!6959848))

(assert (=> b!6110626 m!6959556))

(assert (=> b!6110626 m!6959848))

(assert (=> b!6110626 m!6959556))

(declare-fun m!6959850 () Bool)

(assert (=> b!6110626 m!6959850))

(assert (=> b!6109980 d!1914891))

(declare-fun d!1914893 () Bool)

(assert (=> d!1914893 (= (isEmpty!36278 (t!377931 (exprs!5943 (h!70801 zl!343)))) ((_ is Nil!64352) (t!377931 (exprs!5943 (h!70801 zl!343)))))))

(assert (=> b!6109970 d!1914893))

(declare-fun d!1914895 () Bool)

(declare-fun e!3726014 () Bool)

(assert (=> d!1914895 e!3726014))

(declare-fun res!2534459 () Bool)

(assert (=> d!1914895 (=> (not res!2534459) (not e!3726014))))

(declare-fun lt!2330046 () List!64477)

(declare-fun noDuplicate!1906 (List!64477) Bool)

(assert (=> d!1914895 (= res!2534459 (noDuplicate!1906 lt!2330046))))

(declare-fun choose!45416 ((InoxSet Context!10886)) List!64477)

(assert (=> d!1914895 (= lt!2330046 (choose!45416 z!1189))))

(assert (=> d!1914895 (= (toList!9843 z!1189) lt!2330046)))

(declare-fun b!6110629 () Bool)

(declare-fun content!11943 (List!64477) (InoxSet Context!10886))

(assert (=> b!6110629 (= e!3726014 (= (content!11943 lt!2330046) z!1189))))

(assert (= (and d!1914895 res!2534459) b!6110629))

(declare-fun m!6959852 () Bool)

(assert (=> d!1914895 m!6959852))

(declare-fun m!6959854 () Bool)

(assert (=> d!1914895 m!6959854))

(declare-fun m!6959856 () Bool)

(assert (=> b!6110629 m!6959856))

(assert (=> b!6109981 d!1914895))

(declare-fun bs!1516786 () Bool)

(declare-fun d!1914897 () Bool)

(assert (= bs!1516786 (and d!1914897 d!1914877)))

(declare-fun lambda!332875 () Int)

(assert (=> bs!1516786 (= lambda!332875 lambda!332867)))

(declare-fun bs!1516787 () Bool)

(assert (= bs!1516787 (and d!1914897 d!1914783)))

(assert (=> bs!1516787 (= lambda!332875 lambda!332823)))

(declare-fun bs!1516788 () Bool)

(assert (= bs!1516788 (and d!1914897 d!1914801)))

(assert (=> bs!1516788 (= lambda!332875 lambda!332832)))

(declare-fun bs!1516789 () Bool)

(assert (= bs!1516789 (and d!1914897 d!1914813)))

(assert (=> bs!1516789 (= lambda!332875 lambda!332835)))

(declare-fun bs!1516790 () Bool)

(assert (= bs!1516790 (and d!1914897 d!1914887)))

(assert (=> bs!1516790 (= lambda!332875 lambda!332874)))

(assert (=> d!1914897 (= (inv!83394 (h!70801 zl!343)) (forall!15180 (exprs!5943 (h!70801 zl!343)) lambda!332875))))

(declare-fun bs!1516791 () Bool)

(assert (= bs!1516791 d!1914897))

(declare-fun m!6959858 () Bool)

(assert (=> bs!1516791 m!6959858))

(assert (=> b!6109971 d!1914897))

(declare-fun condSetEmpty!41282 () Bool)

(assert (=> setNonEmpty!41276 (= condSetEmpty!41282 (= setRest!41276 ((as const (Array Context!10886 Bool)) false)))))

(declare-fun setRes!41282 () Bool)

(assert (=> setNonEmpty!41276 (= tp!1706692 setRes!41282)))

(declare-fun setIsEmpty!41282 () Bool)

(assert (=> setIsEmpty!41282 setRes!41282))

(declare-fun setNonEmpty!41282 () Bool)

(declare-fun setElem!41282 () Context!10886)

(declare-fun tp!1706758 () Bool)

(declare-fun e!3726017 () Bool)

(assert (=> setNonEmpty!41282 (= setRes!41282 (and tp!1706758 (inv!83394 setElem!41282) e!3726017))))

(declare-fun setRest!41282 () (InoxSet Context!10886))

(assert (=> setNonEmpty!41282 (= setRest!41276 ((_ map or) (store ((as const (Array Context!10886 Bool)) false) setElem!41282 true) setRest!41282))))

(declare-fun b!6110634 () Bool)

(declare-fun tp!1706757 () Bool)

(assert (=> b!6110634 (= e!3726017 tp!1706757)))

(assert (= (and setNonEmpty!41276 condSetEmpty!41282) setIsEmpty!41282))

(assert (= (and setNonEmpty!41276 (not condSetEmpty!41282)) setNonEmpty!41282))

(assert (= setNonEmpty!41282 b!6110634))

(declare-fun m!6959860 () Bool)

(assert (=> setNonEmpty!41282 m!6959860))

(declare-fun b!6110648 () Bool)

(declare-fun e!3726020 () Bool)

(declare-fun tp!1706773 () Bool)

(declare-fun tp!1706771 () Bool)

(assert (=> b!6110648 (= e!3726020 (and tp!1706773 tp!1706771))))

(assert (=> b!6109973 (= tp!1706691 e!3726020)))

(declare-fun b!6110647 () Bool)

(declare-fun tp!1706770 () Bool)

(assert (=> b!6110647 (= e!3726020 tp!1706770)))

(declare-fun b!6110645 () Bool)

(assert (=> b!6110645 (= e!3726020 tp_is_empty!41371)))

(declare-fun b!6110646 () Bool)

(declare-fun tp!1706772 () Bool)

(declare-fun tp!1706769 () Bool)

(assert (=> b!6110646 (= e!3726020 (and tp!1706772 tp!1706769))))

(assert (= (and b!6109973 ((_ is ElementMatch!16059) (regOne!32630 r!7292))) b!6110645))

(assert (= (and b!6109973 ((_ is Concat!24904) (regOne!32630 r!7292))) b!6110646))

(assert (= (and b!6109973 ((_ is Star!16059) (regOne!32630 r!7292))) b!6110647))

(assert (= (and b!6109973 ((_ is Union!16059) (regOne!32630 r!7292))) b!6110648))

(declare-fun b!6110652 () Bool)

(declare-fun e!3726021 () Bool)

(declare-fun tp!1706778 () Bool)

(declare-fun tp!1706776 () Bool)

(assert (=> b!6110652 (= e!3726021 (and tp!1706778 tp!1706776))))

(assert (=> b!6109973 (= tp!1706689 e!3726021)))

(declare-fun b!6110651 () Bool)

(declare-fun tp!1706775 () Bool)

(assert (=> b!6110651 (= e!3726021 tp!1706775)))

(declare-fun b!6110649 () Bool)

(assert (=> b!6110649 (= e!3726021 tp_is_empty!41371)))

(declare-fun b!6110650 () Bool)

(declare-fun tp!1706777 () Bool)

(declare-fun tp!1706774 () Bool)

(assert (=> b!6110650 (= e!3726021 (and tp!1706777 tp!1706774))))

(assert (= (and b!6109973 ((_ is ElementMatch!16059) (regTwo!32630 r!7292))) b!6110649))

(assert (= (and b!6109973 ((_ is Concat!24904) (regTwo!32630 r!7292))) b!6110650))

(assert (= (and b!6109973 ((_ is Star!16059) (regTwo!32630 r!7292))) b!6110651))

(assert (= (and b!6109973 ((_ is Union!16059) (regTwo!32630 r!7292))) b!6110652))

(declare-fun b!6110657 () Bool)

(declare-fun e!3726024 () Bool)

(declare-fun tp!1706783 () Bool)

(declare-fun tp!1706784 () Bool)

(assert (=> b!6110657 (= e!3726024 (and tp!1706783 tp!1706784))))

(assert (=> b!6109965 (= tp!1706686 e!3726024)))

(assert (= (and b!6109965 ((_ is Cons!64352) (exprs!5943 (h!70801 zl!343)))) b!6110657))

(declare-fun b!6110662 () Bool)

(declare-fun e!3726027 () Bool)

(declare-fun tp!1706787 () Bool)

(assert (=> b!6110662 (= e!3726027 (and tp_is_empty!41371 tp!1706787))))

(assert (=> b!6109975 (= tp!1706693 e!3726027)))

(assert (= (and b!6109975 ((_ is Cons!64354) (t!377933 s!2326))) b!6110662))

(declare-fun b!6110666 () Bool)

(declare-fun e!3726028 () Bool)

(declare-fun tp!1706792 () Bool)

(declare-fun tp!1706790 () Bool)

(assert (=> b!6110666 (= e!3726028 (and tp!1706792 tp!1706790))))

(assert (=> b!6109967 (= tp!1706688 e!3726028)))

(declare-fun b!6110665 () Bool)

(declare-fun tp!1706789 () Bool)

(assert (=> b!6110665 (= e!3726028 tp!1706789)))

(declare-fun b!6110663 () Bool)

(assert (=> b!6110663 (= e!3726028 tp_is_empty!41371)))

(declare-fun b!6110664 () Bool)

(declare-fun tp!1706791 () Bool)

(declare-fun tp!1706788 () Bool)

(assert (=> b!6110664 (= e!3726028 (and tp!1706791 tp!1706788))))

(assert (= (and b!6109967 ((_ is ElementMatch!16059) (reg!16388 r!7292))) b!6110663))

(assert (= (and b!6109967 ((_ is Concat!24904) (reg!16388 r!7292))) b!6110664))

(assert (= (and b!6109967 ((_ is Star!16059) (reg!16388 r!7292))) b!6110665))

(assert (= (and b!6109967 ((_ is Union!16059) (reg!16388 r!7292))) b!6110666))

(declare-fun b!6110670 () Bool)

(declare-fun e!3726029 () Bool)

(declare-fun tp!1706797 () Bool)

(declare-fun tp!1706795 () Bool)

(assert (=> b!6110670 (= e!3726029 (and tp!1706797 tp!1706795))))

(assert (=> b!6109976 (= tp!1706694 e!3726029)))

(declare-fun b!6110669 () Bool)

(declare-fun tp!1706794 () Bool)

(assert (=> b!6110669 (= e!3726029 tp!1706794)))

(declare-fun b!6110667 () Bool)

(assert (=> b!6110667 (= e!3726029 tp_is_empty!41371)))

(declare-fun b!6110668 () Bool)

(declare-fun tp!1706796 () Bool)

(declare-fun tp!1706793 () Bool)

(assert (=> b!6110668 (= e!3726029 (and tp!1706796 tp!1706793))))

(assert (= (and b!6109976 ((_ is ElementMatch!16059) (regOne!32631 r!7292))) b!6110667))

(assert (= (and b!6109976 ((_ is Concat!24904) (regOne!32631 r!7292))) b!6110668))

(assert (= (and b!6109976 ((_ is Star!16059) (regOne!32631 r!7292))) b!6110669))

(assert (= (and b!6109976 ((_ is Union!16059) (regOne!32631 r!7292))) b!6110670))

(declare-fun b!6110674 () Bool)

(declare-fun e!3726030 () Bool)

(declare-fun tp!1706802 () Bool)

(declare-fun tp!1706800 () Bool)

(assert (=> b!6110674 (= e!3726030 (and tp!1706802 tp!1706800))))

(assert (=> b!6109976 (= tp!1706685 e!3726030)))

(declare-fun b!6110673 () Bool)

(declare-fun tp!1706799 () Bool)

(assert (=> b!6110673 (= e!3726030 tp!1706799)))

(declare-fun b!6110671 () Bool)

(assert (=> b!6110671 (= e!3726030 tp_is_empty!41371)))

(declare-fun b!6110672 () Bool)

(declare-fun tp!1706801 () Bool)

(declare-fun tp!1706798 () Bool)

(assert (=> b!6110672 (= e!3726030 (and tp!1706801 tp!1706798))))

(assert (= (and b!6109976 ((_ is ElementMatch!16059) (regTwo!32631 r!7292))) b!6110671))

(assert (= (and b!6109976 ((_ is Concat!24904) (regTwo!32631 r!7292))) b!6110672))

(assert (= (and b!6109976 ((_ is Star!16059) (regTwo!32631 r!7292))) b!6110673))

(assert (= (and b!6109976 ((_ is Union!16059) (regTwo!32631 r!7292))) b!6110674))

(declare-fun b!6110675 () Bool)

(declare-fun e!3726031 () Bool)

(declare-fun tp!1706803 () Bool)

(declare-fun tp!1706804 () Bool)

(assert (=> b!6110675 (= e!3726031 (and tp!1706803 tp!1706804))))

(assert (=> b!6109987 (= tp!1706690 e!3726031)))

(assert (= (and b!6109987 ((_ is Cons!64352) (exprs!5943 setElem!41276))) b!6110675))

(declare-fun b!6110683 () Bool)

(declare-fun e!3726037 () Bool)

(declare-fun tp!1706809 () Bool)

(assert (=> b!6110683 (= e!3726037 tp!1706809)))

(declare-fun e!3726036 () Bool)

(declare-fun b!6110682 () Bool)

(declare-fun tp!1706810 () Bool)

(assert (=> b!6110682 (= e!3726036 (and (inv!83394 (h!70801 (t!377932 zl!343))) e!3726037 tp!1706810))))

(assert (=> b!6109971 (= tp!1706687 e!3726036)))

(assert (= b!6110682 b!6110683))

(assert (= (and b!6109971 ((_ is Cons!64353) (t!377932 zl!343))) b!6110682))

(declare-fun m!6959862 () Bool)

(assert (=> b!6110682 m!6959862))

(declare-fun b_lambda!232735 () Bool)

(assert (= b_lambda!232733 (or b!6109974 b_lambda!232735)))

(declare-fun bs!1516792 () Bool)

(declare-fun d!1914899 () Bool)

(assert (= bs!1516792 (and d!1914899 b!6109974)))

(assert (=> bs!1516792 (= (dynLambda!25340 lambda!332817 (h!70801 zl!343)) (derivationStepZipperUp!1233 (h!70801 zl!343) (h!70802 s!2326)))))

(assert (=> bs!1516792 m!6959464))

(assert (=> d!1914869 d!1914899))

(check-sat (not b!6110510) (not d!1914895) (not b!6110597) (not bm!505587) (not b!6110625) (not b!6110506) (not b!6110063) (not b!6110593) (not b!6110620) (not b!6110648) (not b!6110061) (not b!6110064) (not b!6110662) (not b!6110136) (not bm!505595) (not b!6110169) (not b!6110675) (not b_lambda!232735) (not bs!1516792) (not d!1914799) (not b!6110481) (not b!6110132) (not bm!505600) (not d!1914861) (not b!6110674) (not b!6110508) (not b!6110261) (not b!6110130) (not bm!505594) (not d!1914897) (not bm!505601) (not d!1914801) (not b!6110471) (not d!1914783) (not bm!505611) (not b!6110512) (not b!6110472) (not b!6110588) (not b!6110131) (not b!6110265) (not b!6110670) (not bm!505590) (not b!6110476) (not d!1914857) (not b!6110550) (not b!6110664) (not b!6110266) (not b!6110652) (not b!6110511) (not b!6110264) (not b!6110634) (not d!1914879) (not b!6110626) (not bm!505588) (not b!6110672) (not d!1914891) (not b!6110482) (not b!6110682) (not d!1914877) (not d!1914869) (not d!1914845) (not b!6110666) (not b!6110507) (not b!6110668) (not d!1914865) (not b!6110646) (not b!6110683) (not d!1914787) (not b!6110260) (not d!1914813) (not bm!505593) (not d!1914789) (not b!6110647) (not d!1914839) tp_is_empty!41371 (not bm!505612) (not b!6110477) (not b!6110041) (not d!1914885) (not b!6110651) (not bm!505604) (not b!6110505) (not d!1914841) (not d!1914837) (not b!6110263) (not b!6110134) (not b!6110062) (not b!6110657) (not b!6110552) (not b!6110669) (not d!1914883) (not d!1914821) (not b!6110650) (not d!1914887) (not b!6110587) (not b!6110629) (not b!6110595) (not b!6110455) (not b!6110665) (not b!6110591) (not setNonEmpty!41282) (not b!6110673) (not b!6110135) (not b!6110129))
(check-sat)
(get-model)

(declare-fun bm!505643 () Bool)

(declare-fun call!505648 () Bool)

(declare-fun c!1097870 () Bool)

(assert (=> bm!505643 (= call!505648 (validRegex!7795 (ite c!1097870 (regTwo!32631 lt!2330034) (regTwo!32630 lt!2330034))))))

(declare-fun b!6110849 () Bool)

(declare-fun e!3726158 () Bool)

(declare-fun e!3726159 () Bool)

(assert (=> b!6110849 (= e!3726158 e!3726159)))

(declare-fun res!2534553 () Bool)

(assert (=> b!6110849 (=> (not res!2534553) (not e!3726159))))

(declare-fun call!505650 () Bool)

(assert (=> b!6110849 (= res!2534553 call!505650)))

(declare-fun c!1097871 () Bool)

(declare-fun bm!505644 () Bool)

(declare-fun call!505649 () Bool)

(assert (=> bm!505644 (= call!505649 (validRegex!7795 (ite c!1097871 (reg!16388 lt!2330034) (ite c!1097870 (regOne!32631 lt!2330034) (regOne!32630 lt!2330034)))))))

(declare-fun b!6110850 () Bool)

(declare-fun e!3726156 () Bool)

(assert (=> b!6110850 (= e!3726156 call!505649)))

(declare-fun bm!505645 () Bool)

(assert (=> bm!505645 (= call!505650 call!505649)))

(declare-fun b!6110851 () Bool)

(declare-fun e!3726157 () Bool)

(assert (=> b!6110851 (= e!3726157 call!505648)))

(declare-fun b!6110852 () Bool)

(declare-fun res!2534554 () Bool)

(assert (=> b!6110852 (=> (not res!2534554) (not e!3726157))))

(assert (=> b!6110852 (= res!2534554 call!505650)))

(declare-fun e!3726160 () Bool)

(assert (=> b!6110852 (= e!3726160 e!3726157)))

(declare-fun b!6110853 () Bool)

(declare-fun e!3726161 () Bool)

(assert (=> b!6110853 (= e!3726161 e!3726156)))

(declare-fun res!2534552 () Bool)

(assert (=> b!6110853 (= res!2534552 (not (nullable!6052 (reg!16388 lt!2330034))))))

(assert (=> b!6110853 (=> (not res!2534552) (not e!3726156))))

(declare-fun b!6110854 () Bool)

(assert (=> b!6110854 (= e!3726161 e!3726160)))

(assert (=> b!6110854 (= c!1097870 ((_ is Union!16059) lt!2330034))))

(declare-fun d!1915003 () Bool)

(declare-fun res!2534556 () Bool)

(declare-fun e!3726155 () Bool)

(assert (=> d!1915003 (=> res!2534556 e!3726155)))

(assert (=> d!1915003 (= res!2534556 ((_ is ElementMatch!16059) lt!2330034))))

(assert (=> d!1915003 (= (validRegex!7795 lt!2330034) e!3726155)))

(declare-fun b!6110855 () Bool)

(assert (=> b!6110855 (= e!3726155 e!3726161)))

(assert (=> b!6110855 (= c!1097871 ((_ is Star!16059) lt!2330034))))

(declare-fun b!6110856 () Bool)

(declare-fun res!2534555 () Bool)

(assert (=> b!6110856 (=> res!2534555 e!3726158)))

(assert (=> b!6110856 (= res!2534555 (not ((_ is Concat!24904) lt!2330034)))))

(assert (=> b!6110856 (= e!3726160 e!3726158)))

(declare-fun b!6110857 () Bool)

(assert (=> b!6110857 (= e!3726159 call!505648)))

(assert (= (and d!1915003 (not res!2534556)) b!6110855))

(assert (= (and b!6110855 c!1097871) b!6110853))

(assert (= (and b!6110855 (not c!1097871)) b!6110854))

(assert (= (and b!6110853 res!2534552) b!6110850))

(assert (= (and b!6110854 c!1097870) b!6110852))

(assert (= (and b!6110854 (not c!1097870)) b!6110856))

(assert (= (and b!6110852 res!2534554) b!6110851))

(assert (= (and b!6110856 (not res!2534555)) b!6110849))

(assert (= (and b!6110849 res!2534553) b!6110857))

(assert (= (or b!6110851 b!6110857) bm!505643))

(assert (= (or b!6110852 b!6110849) bm!505645))

(assert (= (or b!6110850 bm!505645) bm!505644))

(declare-fun m!6960038 () Bool)

(assert (=> bm!505643 m!6960038))

(declare-fun m!6960040 () Bool)

(assert (=> bm!505644 m!6960040))

(declare-fun m!6960042 () Bool)

(assert (=> b!6110853 m!6960042))

(assert (=> d!1914877 d!1915003))

(declare-fun d!1915009 () Bool)

(declare-fun res!2534567 () Bool)

(declare-fun e!3726174 () Bool)

(assert (=> d!1915009 (=> res!2534567 e!3726174)))

(assert (=> d!1915009 (= res!2534567 ((_ is Nil!64352) (exprs!5943 (h!70801 zl!343))))))

(assert (=> d!1915009 (= (forall!15180 (exprs!5943 (h!70801 zl!343)) lambda!332867) e!3726174)))

(declare-fun b!6110875 () Bool)

(declare-fun e!3726175 () Bool)

(assert (=> b!6110875 (= e!3726174 e!3726175)))

(declare-fun res!2534568 () Bool)

(assert (=> b!6110875 (=> (not res!2534568) (not e!3726175))))

(declare-fun dynLambda!25342 (Int Regex!16059) Bool)

(assert (=> b!6110875 (= res!2534568 (dynLambda!25342 lambda!332867 (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun b!6110876 () Bool)

(assert (=> b!6110876 (= e!3726175 (forall!15180 (t!377931 (exprs!5943 (h!70801 zl!343))) lambda!332867))))

(assert (= (and d!1915009 (not res!2534567)) b!6110875))

(assert (= (and b!6110875 res!2534568) b!6110876))

(declare-fun b_lambda!232747 () Bool)

(assert (=> (not b_lambda!232747) (not b!6110875)))

(declare-fun m!6960056 () Bool)

(assert (=> b!6110875 m!6960056))

(declare-fun m!6960058 () Bool)

(assert (=> b!6110876 m!6960058))

(assert (=> d!1914877 d!1915009))

(assert (=> d!1914869 d!1914861))

(declare-fun d!1915017 () Bool)

(assert (=> d!1915017 (= (flatMap!1564 z!1189 lambda!332817) (dynLambda!25340 lambda!332817 (h!70801 zl!343)))))

(assert (=> d!1915017 true))

(declare-fun _$13!2954 () Unit!157391)

(assert (=> d!1915017 (= (choose!45414 z!1189 (h!70801 zl!343) lambda!332817) _$13!2954)))

(declare-fun b_lambda!232749 () Bool)

(assert (=> (not b_lambda!232749) (not d!1915017)))

(declare-fun bs!1516834 () Bool)

(assert (= bs!1516834 d!1915017))

(assert (=> bs!1516834 m!6959470))

(assert (=> bs!1516834 m!6959780))

(assert (=> d!1914869 d!1915017))

(declare-fun d!1915021 () Bool)

(assert (=> d!1915021 (= (isUnion!916 lt!2329986) ((_ is Union!16059) lt!2329986))))

(assert (=> b!6110129 d!1915021))

(declare-fun d!1915025 () Bool)

(declare-fun res!2534577 () Bool)

(declare-fun e!3726183 () Bool)

(assert (=> d!1915025 (=> res!2534577 e!3726183)))

(assert (=> d!1915025 (= res!2534577 ((_ is Nil!64352) (exprs!5943 lt!2329957)))))

(assert (=> d!1915025 (= (forall!15180 (exprs!5943 lt!2329957) lambda!332874) e!3726183)))

(declare-fun b!6110891 () Bool)

(declare-fun e!3726184 () Bool)

(assert (=> b!6110891 (= e!3726183 e!3726184)))

(declare-fun res!2534578 () Bool)

(assert (=> b!6110891 (=> (not res!2534578) (not e!3726184))))

(assert (=> b!6110891 (= res!2534578 (dynLambda!25342 lambda!332874 (h!70800 (exprs!5943 lt!2329957))))))

(declare-fun b!6110892 () Bool)

(assert (=> b!6110892 (= e!3726184 (forall!15180 (t!377931 (exprs!5943 lt!2329957)) lambda!332874))))

(assert (= (and d!1915025 (not res!2534577)) b!6110891))

(assert (= (and b!6110891 res!2534578) b!6110892))

(declare-fun b_lambda!232751 () Bool)

(assert (=> (not b_lambda!232751) (not b!6110891)))

(declare-fun m!6960072 () Bool)

(assert (=> b!6110891 m!6960072))

(declare-fun m!6960074 () Bool)

(assert (=> b!6110892 m!6960074))

(assert (=> d!1914887 d!1915025))

(assert (=> d!1914841 d!1914821))

(declare-fun bm!505653 () Bool)

(declare-fun call!505658 () Bool)

(declare-fun c!1097880 () Bool)

(assert (=> bm!505653 (= call!505658 (validRegex!7795 (ite c!1097880 (regTwo!32631 (regOne!32630 r!7292)) (regTwo!32630 (regOne!32630 r!7292)))))))

(declare-fun b!6110893 () Bool)

(declare-fun e!3726188 () Bool)

(declare-fun e!3726189 () Bool)

(assert (=> b!6110893 (= e!3726188 e!3726189)))

(declare-fun res!2534580 () Bool)

(assert (=> b!6110893 (=> (not res!2534580) (not e!3726189))))

(declare-fun call!505660 () Bool)

(assert (=> b!6110893 (= res!2534580 call!505660)))

(declare-fun call!505659 () Bool)

(declare-fun c!1097881 () Bool)

(declare-fun bm!505654 () Bool)

(assert (=> bm!505654 (= call!505659 (validRegex!7795 (ite c!1097881 (reg!16388 (regOne!32630 r!7292)) (ite c!1097880 (regOne!32631 (regOne!32630 r!7292)) (regOne!32630 (regOne!32630 r!7292))))))))

(declare-fun b!6110894 () Bool)

(declare-fun e!3726186 () Bool)

(assert (=> b!6110894 (= e!3726186 call!505659)))

(declare-fun bm!505655 () Bool)

(assert (=> bm!505655 (= call!505660 call!505659)))

(declare-fun b!6110895 () Bool)

(declare-fun e!3726187 () Bool)

(assert (=> b!6110895 (= e!3726187 call!505658)))

(declare-fun b!6110896 () Bool)

(declare-fun res!2534581 () Bool)

(assert (=> b!6110896 (=> (not res!2534581) (not e!3726187))))

(assert (=> b!6110896 (= res!2534581 call!505660)))

(declare-fun e!3726190 () Bool)

(assert (=> b!6110896 (= e!3726190 e!3726187)))

(declare-fun b!6110897 () Bool)

(declare-fun e!3726191 () Bool)

(assert (=> b!6110897 (= e!3726191 e!3726186)))

(declare-fun res!2534579 () Bool)

(assert (=> b!6110897 (= res!2534579 (not (nullable!6052 (reg!16388 (regOne!32630 r!7292)))))))

(assert (=> b!6110897 (=> (not res!2534579) (not e!3726186))))

(declare-fun b!6110898 () Bool)

(assert (=> b!6110898 (= e!3726191 e!3726190)))

(assert (=> b!6110898 (= c!1097880 ((_ is Union!16059) (regOne!32630 r!7292)))))

(declare-fun d!1915027 () Bool)

(declare-fun res!2534583 () Bool)

(declare-fun e!3726185 () Bool)

(assert (=> d!1915027 (=> res!2534583 e!3726185)))

(assert (=> d!1915027 (= res!2534583 ((_ is ElementMatch!16059) (regOne!32630 r!7292)))))

(assert (=> d!1915027 (= (validRegex!7795 (regOne!32630 r!7292)) e!3726185)))

(declare-fun b!6110899 () Bool)

(assert (=> b!6110899 (= e!3726185 e!3726191)))

(assert (=> b!6110899 (= c!1097881 ((_ is Star!16059) (regOne!32630 r!7292)))))

(declare-fun b!6110900 () Bool)

(declare-fun res!2534582 () Bool)

(assert (=> b!6110900 (=> res!2534582 e!3726188)))

(assert (=> b!6110900 (= res!2534582 (not ((_ is Concat!24904) (regOne!32630 r!7292))))))

(assert (=> b!6110900 (= e!3726190 e!3726188)))

(declare-fun b!6110901 () Bool)

(assert (=> b!6110901 (= e!3726189 call!505658)))

(assert (= (and d!1915027 (not res!2534583)) b!6110899))

(assert (= (and b!6110899 c!1097881) b!6110897))

(assert (= (and b!6110899 (not c!1097881)) b!6110898))

(assert (= (and b!6110897 res!2534579) b!6110894))

(assert (= (and b!6110898 c!1097880) b!6110896))

(assert (= (and b!6110898 (not c!1097880)) b!6110900))

(assert (= (and b!6110896 res!2534581) b!6110895))

(assert (= (and b!6110900 (not res!2534582)) b!6110893))

(assert (= (and b!6110893 res!2534580) b!6110901))

(assert (= (or b!6110895 b!6110901) bm!505653))

(assert (= (or b!6110896 b!6110893) bm!505655))

(assert (= (or b!6110894 bm!505655) bm!505654))

(declare-fun m!6960076 () Bool)

(assert (=> bm!505653 m!6960076))

(declare-fun m!6960078 () Bool)

(assert (=> bm!505654 m!6960078))

(declare-fun m!6960080 () Bool)

(assert (=> b!6110897 m!6960080))

(assert (=> d!1914841 d!1915027))

(assert (=> d!1914841 d!1914857))

(declare-fun d!1915031 () Bool)

(assert (=> d!1915031 (= (Exists!3129 lambda!332856) (choose!45410 lambda!332856))))

(declare-fun bs!1516836 () Bool)

(assert (= bs!1516836 d!1915031))

(declare-fun m!6960086 () Bool)

(assert (=> bs!1516836 m!6960086))

(assert (=> d!1914841 d!1915031))

(declare-fun bs!1516842 () Bool)

(declare-fun d!1915033 () Bool)

(assert (= bs!1516842 (and d!1915033 b!6109969)))

(declare-fun lambda!332897 () Int)

(assert (=> bs!1516842 (not (= lambda!332897 lambda!332816))))

(assert (=> bs!1516842 (= lambda!332897 lambda!332815)))

(declare-fun bs!1516843 () Bool)

(assert (= bs!1516843 (and d!1915033 d!1914841)))

(assert (=> bs!1516843 (= lambda!332897 lambda!332856)))

(declare-fun bs!1516844 () Bool)

(assert (= bs!1516844 (and d!1915033 d!1914845)))

(assert (=> bs!1516844 (not (= lambda!332897 lambda!332864))))

(assert (=> bs!1516844 (= lambda!332897 lambda!332863)))

(declare-fun bs!1516846 () Bool)

(assert (= bs!1516846 (and d!1915033 b!6110553)))

(assert (=> bs!1516846 (not (= lambda!332897 lambda!332872))))

(declare-fun bs!1516848 () Bool)

(assert (= bs!1516848 (and d!1915033 b!6110549)))

(assert (=> bs!1516848 (not (= lambda!332897 lambda!332873))))

(assert (=> d!1915033 true))

(assert (=> d!1915033 true))

(assert (=> d!1915033 true))

(assert (=> d!1915033 (= (isDefined!12653 (findConcatSeparation!2364 (regOne!32630 r!7292) (regTwo!32630 r!7292) Nil!64354 s!2326 s!2326)) (Exists!3129 lambda!332897))))

(assert (=> d!1915033 true))

(declare-fun _$89!2163 () Unit!157391)

(assert (=> d!1915033 (= (choose!45411 (regOne!32630 r!7292) (regTwo!32630 r!7292) s!2326) _$89!2163)))

(declare-fun bs!1516851 () Bool)

(assert (= bs!1516851 d!1915033))

(assert (=> bs!1516851 m!6959446))

(assert (=> bs!1516851 m!6959446))

(assert (=> bs!1516851 m!6959448))

(declare-fun m!6960094 () Bool)

(assert (=> bs!1516851 m!6960094))

(assert (=> d!1914841 d!1915033))

(declare-fun bm!505656 () Bool)

(declare-fun call!505661 () Bool)

(assert (=> bm!505656 (= call!505661 (isEmpty!36281 (_2!36341 (get!22191 lt!2330012))))))

(declare-fun b!6110912 () Bool)

(declare-fun e!3726200 () Bool)

(declare-fun lt!2330051 () Bool)

(assert (=> b!6110912 (= e!3726200 (not lt!2330051))))

(declare-fun b!6110913 () Bool)

(declare-fun res!2534597 () Bool)

(declare-fun e!3726203 () Bool)

(assert (=> b!6110913 (=> (not res!2534597) (not e!3726203))))

(assert (=> b!6110913 (= res!2534597 (not call!505661))))

(declare-fun b!6110914 () Bool)

(declare-fun e!3726201 () Bool)

(declare-fun e!3726198 () Bool)

(assert (=> b!6110914 (= e!3726201 e!3726198)))

(declare-fun res!2534599 () Bool)

(assert (=> b!6110914 (=> res!2534599 e!3726198)))

(assert (=> b!6110914 (= res!2534599 call!505661)))

(declare-fun b!6110915 () Bool)

(declare-fun e!3726202 () Bool)

(assert (=> b!6110915 (= e!3726202 (nullable!6052 (regTwo!32630 r!7292)))))

(declare-fun b!6110916 () Bool)

(declare-fun res!2534593 () Bool)

(assert (=> b!6110916 (=> (not res!2534593) (not e!3726203))))

(assert (=> b!6110916 (= res!2534593 (isEmpty!36281 (tail!11724 (_2!36341 (get!22191 lt!2330012)))))))

(declare-fun b!6110917 () Bool)

(declare-fun e!3726199 () Bool)

(assert (=> b!6110917 (= e!3726199 e!3726200)))

(declare-fun c!1097884 () Bool)

(assert (=> b!6110917 (= c!1097884 ((_ is EmptyLang!16059) (regTwo!32630 r!7292)))))

(declare-fun d!1915041 () Bool)

(assert (=> d!1915041 e!3726199))

(declare-fun c!1097883 () Bool)

(assert (=> d!1915041 (= c!1097883 ((_ is EmptyExpr!16059) (regTwo!32630 r!7292)))))

(assert (=> d!1915041 (= lt!2330051 e!3726202)))

(declare-fun c!1097885 () Bool)

(assert (=> d!1915041 (= c!1097885 (isEmpty!36281 (_2!36341 (get!22191 lt!2330012))))))

(assert (=> d!1915041 (validRegex!7795 (regTwo!32630 r!7292))))

(assert (=> d!1915041 (= (matchR!8242 (regTwo!32630 r!7292) (_2!36341 (get!22191 lt!2330012))) lt!2330051)))

(declare-fun b!6110918 () Bool)

(declare-fun res!2534595 () Bool)

(declare-fun e!3726197 () Bool)

(assert (=> b!6110918 (=> res!2534595 e!3726197)))

(assert (=> b!6110918 (= res!2534595 e!3726203)))

(declare-fun res!2534594 () Bool)

(assert (=> b!6110918 (=> (not res!2534594) (not e!3726203))))

(assert (=> b!6110918 (= res!2534594 lt!2330051)))

(declare-fun b!6110919 () Bool)

(assert (=> b!6110919 (= e!3726198 (not (= (head!12639 (_2!36341 (get!22191 lt!2330012))) (c!1097651 (regTwo!32630 r!7292)))))))

(declare-fun b!6110920 () Bool)

(assert (=> b!6110920 (= e!3726199 (= lt!2330051 call!505661))))

(declare-fun b!6110921 () Bool)

(declare-fun res!2534596 () Bool)

(assert (=> b!6110921 (=> res!2534596 e!3726198)))

(assert (=> b!6110921 (= res!2534596 (not (isEmpty!36281 (tail!11724 (_2!36341 (get!22191 lt!2330012))))))))

(declare-fun b!6110922 () Bool)

(declare-fun res!2534598 () Bool)

(assert (=> b!6110922 (=> res!2534598 e!3726197)))

(assert (=> b!6110922 (= res!2534598 (not ((_ is ElementMatch!16059) (regTwo!32630 r!7292))))))

(assert (=> b!6110922 (= e!3726200 e!3726197)))

(declare-fun b!6110923 () Bool)

(assert (=> b!6110923 (= e!3726202 (matchR!8242 (derivativeStep!4780 (regTwo!32630 r!7292) (head!12639 (_2!36341 (get!22191 lt!2330012)))) (tail!11724 (_2!36341 (get!22191 lt!2330012)))))))

(declare-fun b!6110924 () Bool)

(assert (=> b!6110924 (= e!3726197 e!3726201)))

(declare-fun res!2534592 () Bool)

(assert (=> b!6110924 (=> (not res!2534592) (not e!3726201))))

(assert (=> b!6110924 (= res!2534592 (not lt!2330051))))

(declare-fun b!6110925 () Bool)

(assert (=> b!6110925 (= e!3726203 (= (head!12639 (_2!36341 (get!22191 lt!2330012))) (c!1097651 (regTwo!32630 r!7292))))))

(assert (= (and d!1915041 c!1097885) b!6110915))

(assert (= (and d!1915041 (not c!1097885)) b!6110923))

(assert (= (and d!1915041 c!1097883) b!6110920))

(assert (= (and d!1915041 (not c!1097883)) b!6110917))

(assert (= (and b!6110917 c!1097884) b!6110912))

(assert (= (and b!6110917 (not c!1097884)) b!6110922))

(assert (= (and b!6110922 (not res!2534598)) b!6110918))

(assert (= (and b!6110918 res!2534594) b!6110913))

(assert (= (and b!6110913 res!2534597) b!6110916))

(assert (= (and b!6110916 res!2534593) b!6110925))

(assert (= (and b!6110918 (not res!2534595)) b!6110924))

(assert (= (and b!6110924 res!2534592) b!6110914))

(assert (= (and b!6110914 (not res!2534599)) b!6110921))

(assert (= (and b!6110921 (not res!2534596)) b!6110919))

(assert (= (or b!6110920 b!6110913 b!6110914) bm!505656))

(declare-fun m!6960098 () Bool)

(assert (=> b!6110919 m!6960098))

(assert (=> b!6110925 m!6960098))

(declare-fun m!6960100 () Bool)

(assert (=> b!6110916 m!6960100))

(assert (=> b!6110916 m!6960100))

(declare-fun m!6960102 () Bool)

(assert (=> b!6110916 m!6960102))

(declare-fun m!6960104 () Bool)

(assert (=> bm!505656 m!6960104))

(declare-fun m!6960106 () Bool)

(assert (=> b!6110915 m!6960106))

(assert (=> b!6110921 m!6960100))

(assert (=> b!6110921 m!6960100))

(assert (=> b!6110921 m!6960102))

(assert (=> b!6110923 m!6960098))

(assert (=> b!6110923 m!6960098))

(declare-fun m!6960108 () Bool)

(assert (=> b!6110923 m!6960108))

(assert (=> b!6110923 m!6960100))

(assert (=> b!6110923 m!6960108))

(assert (=> b!6110923 m!6960100))

(declare-fun m!6960110 () Bool)

(assert (=> b!6110923 m!6960110))

(assert (=> d!1915041 m!6960104))

(declare-fun m!6960112 () Bool)

(assert (=> d!1915041 m!6960112))

(assert (=> b!6110263 d!1915041))

(declare-fun d!1915049 () Bool)

(assert (=> d!1915049 (= (get!22191 lt!2330012) (v!52084 lt!2330012))))

(assert (=> b!6110263 d!1915049))

(declare-fun bs!1516855 () Bool)

(declare-fun d!1915053 () Bool)

(assert (= bs!1516855 (and d!1915053 d!1914877)))

(declare-fun lambda!332899 () Int)

(assert (=> bs!1516855 (= lambda!332899 lambda!332867)))

(declare-fun bs!1516856 () Bool)

(assert (= bs!1516856 (and d!1915053 d!1914783)))

(assert (=> bs!1516856 (= lambda!332899 lambda!332823)))

(declare-fun bs!1516857 () Bool)

(assert (= bs!1516857 (and d!1915053 d!1914801)))

(assert (=> bs!1516857 (= lambda!332899 lambda!332832)))

(declare-fun bs!1516859 () Bool)

(assert (= bs!1516859 (and d!1915053 d!1914897)))

(assert (=> bs!1516859 (= lambda!332899 lambda!332875)))

(declare-fun bs!1516860 () Bool)

(assert (= bs!1516860 (and d!1915053 d!1914813)))

(assert (=> bs!1516860 (= lambda!332899 lambda!332835)))

(declare-fun bs!1516862 () Bool)

(assert (= bs!1516862 (and d!1915053 d!1914887)))

(assert (=> bs!1516862 (= lambda!332899 lambda!332874)))

(declare-fun b!6110946 () Bool)

(declare-fun e!3726221 () Regex!16059)

(declare-fun e!3726219 () Regex!16059)

(assert (=> b!6110946 (= e!3726221 e!3726219)))

(declare-fun c!1097895 () Bool)

(assert (=> b!6110946 (= c!1097895 ((_ is Cons!64352) (t!377931 (unfocusZipperList!1480 zl!343))))))

(declare-fun e!3726220 () Bool)

(assert (=> d!1915053 e!3726220))

(declare-fun res!2534609 () Bool)

(assert (=> d!1915053 (=> (not res!2534609) (not e!3726220))))

(declare-fun lt!2330052 () Regex!16059)

(assert (=> d!1915053 (= res!2534609 (validRegex!7795 lt!2330052))))

(assert (=> d!1915053 (= lt!2330052 e!3726221)))

(declare-fun c!1097894 () Bool)

(declare-fun e!3726223 () Bool)

(assert (=> d!1915053 (= c!1097894 e!3726223)))

(declare-fun res!2534608 () Bool)

(assert (=> d!1915053 (=> (not res!2534608) (not e!3726223))))

(assert (=> d!1915053 (= res!2534608 ((_ is Cons!64352) (t!377931 (unfocusZipperList!1480 zl!343))))))

(assert (=> d!1915053 (forall!15180 (t!377931 (unfocusZipperList!1480 zl!343)) lambda!332899)))

(assert (=> d!1915053 (= (generalisedUnion!1903 (t!377931 (unfocusZipperList!1480 zl!343))) lt!2330052)))

(declare-fun b!6110947 () Bool)

(declare-fun e!3726218 () Bool)

(assert (=> b!6110947 (= e!3726218 (isUnion!916 lt!2330052))))

(declare-fun b!6110948 () Bool)

(assert (=> b!6110948 (= e!3726223 (isEmpty!36278 (t!377931 (t!377931 (unfocusZipperList!1480 zl!343)))))))

(declare-fun b!6110949 () Bool)

(assert (=> b!6110949 (= e!3726219 (Union!16059 (h!70800 (t!377931 (unfocusZipperList!1480 zl!343))) (generalisedUnion!1903 (t!377931 (t!377931 (unfocusZipperList!1480 zl!343))))))))

(declare-fun b!6110950 () Bool)

(declare-fun e!3726222 () Bool)

(assert (=> b!6110950 (= e!3726220 e!3726222)))

(declare-fun c!1097893 () Bool)

(assert (=> b!6110950 (= c!1097893 (isEmpty!36278 (t!377931 (unfocusZipperList!1480 zl!343))))))

(declare-fun b!6110951 () Bool)

(assert (=> b!6110951 (= e!3726219 EmptyLang!16059)))

(declare-fun b!6110952 () Bool)

(assert (=> b!6110952 (= e!3726222 (isEmptyLang!1486 lt!2330052))))

(declare-fun b!6110953 () Bool)

(assert (=> b!6110953 (= e!3726218 (= lt!2330052 (head!12640 (t!377931 (unfocusZipperList!1480 zl!343)))))))

(declare-fun b!6110954 () Bool)

(assert (=> b!6110954 (= e!3726222 e!3726218)))

(declare-fun c!1097892 () Bool)

(assert (=> b!6110954 (= c!1097892 (isEmpty!36278 (tail!11725 (t!377931 (unfocusZipperList!1480 zl!343)))))))

(declare-fun b!6110955 () Bool)

(assert (=> b!6110955 (= e!3726221 (h!70800 (t!377931 (unfocusZipperList!1480 zl!343))))))

(assert (= (and d!1915053 res!2534608) b!6110948))

(assert (= (and d!1915053 c!1097894) b!6110955))

(assert (= (and d!1915053 (not c!1097894)) b!6110946))

(assert (= (and b!6110946 c!1097895) b!6110949))

(assert (= (and b!6110946 (not c!1097895)) b!6110951))

(assert (= (and d!1915053 res!2534609) b!6110950))

(assert (= (and b!6110950 c!1097893) b!6110952))

(assert (= (and b!6110950 (not c!1097893)) b!6110954))

(assert (= (and b!6110954 c!1097892) b!6110953))

(assert (= (and b!6110954 (not c!1097892)) b!6110947))

(declare-fun m!6960120 () Bool)

(assert (=> b!6110952 m!6960120))

(declare-fun m!6960122 () Bool)

(assert (=> b!6110954 m!6960122))

(assert (=> b!6110954 m!6960122))

(declare-fun m!6960124 () Bool)

(assert (=> b!6110954 m!6960124))

(declare-fun m!6960126 () Bool)

(assert (=> b!6110953 m!6960126))

(declare-fun m!6960128 () Bool)

(assert (=> b!6110949 m!6960128))

(declare-fun m!6960130 () Bool)

(assert (=> b!6110948 m!6960130))

(declare-fun m!6960132 () Bool)

(assert (=> d!1915053 m!6960132))

(declare-fun m!6960134 () Bool)

(assert (=> d!1915053 m!6960134))

(assert (=> b!6110950 m!6959604))

(declare-fun m!6960136 () Bool)

(assert (=> b!6110947 m!6960136))

(assert (=> b!6110131 d!1915053))

(declare-fun d!1915055 () Bool)

(assert (=> d!1915055 (= (isEmpty!36281 s!2326) ((_ is Nil!64354) s!2326))))

(assert (=> bm!505604 d!1915055))

(declare-fun bm!505662 () Bool)

(declare-fun call!505667 () List!64476)

(declare-fun call!505669 () List!64476)

(assert (=> bm!505662 (= call!505667 call!505669)))

(declare-fun b!6110956 () Bool)

(declare-fun e!3726224 () (InoxSet Context!10886))

(declare-fun e!3726228 () (InoxSet Context!10886))

(assert (=> b!6110956 (= e!3726224 e!3726228)))

(declare-fun c!1097897 () Bool)

(assert (=> b!6110956 (= c!1097897 ((_ is Concat!24904) (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))))))))

(declare-fun b!6110957 () Bool)

(declare-fun call!505670 () (InoxSet Context!10886))

(assert (=> b!6110957 (= e!3726228 call!505670)))

(declare-fun bm!505663 () Bool)

(declare-fun call!505668 () (InoxSet Context!10886))

(assert (=> bm!505663 (= call!505670 call!505668)))

(declare-fun b!6110958 () Bool)

(declare-fun e!3726229 () (InoxSet Context!10886))

(declare-fun e!3726225 () (InoxSet Context!10886))

(assert (=> b!6110958 (= e!3726229 e!3726225)))

(declare-fun c!1097900 () Bool)

(assert (=> b!6110958 (= c!1097900 ((_ is Union!16059) (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))))))))

(declare-fun call!505671 () (InoxSet Context!10886))

(declare-fun bm!505664 () Bool)

(assert (=> bm!505664 (= call!505671 (derivationStepZipperDown!1307 (ite c!1097900 (regOne!32631 (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))))) (regOne!32630 (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343))))))) (ite c!1097900 (ite c!1097781 lt!2329957 (Context!10887 call!505592)) (Context!10887 call!505669)) (h!70802 s!2326)))))

(declare-fun c!1097896 () Bool)

(declare-fun d!1915057 () Bool)

(assert (=> d!1915057 (= c!1097896 (and ((_ is ElementMatch!16059) (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))))) (= (c!1097651 (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))))) (h!70802 s!2326))))))

(assert (=> d!1915057 (= (derivationStepZipperDown!1307 (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343))))) (ite c!1097781 lt!2329957 (Context!10887 call!505592)) (h!70802 s!2326)) e!3726229)))

(declare-fun b!6110959 () Bool)

(declare-fun c!1097899 () Bool)

(assert (=> b!6110959 (= c!1097899 ((_ is Star!16059) (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))))))))

(declare-fun e!3726226 () (InoxSet Context!10886))

(assert (=> b!6110959 (= e!3726228 e!3726226)))

(declare-fun b!6110960 () Bool)

(declare-fun c!1097898 () Bool)

(declare-fun e!3726227 () Bool)

(assert (=> b!6110960 (= c!1097898 e!3726227)))

(declare-fun res!2534610 () Bool)

(assert (=> b!6110960 (=> (not res!2534610) (not e!3726227))))

(assert (=> b!6110960 (= res!2534610 ((_ is Concat!24904) (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))))))))

(assert (=> b!6110960 (= e!3726225 e!3726224)))

(declare-fun bm!505665 () Bool)

(declare-fun call!505672 () (InoxSet Context!10886))

(assert (=> bm!505665 (= call!505672 (derivationStepZipperDown!1307 (ite c!1097900 (regTwo!32631 (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))))) (ite c!1097898 (regTwo!32630 (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))))) (ite c!1097897 (regOne!32630 (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))))) (reg!16388 (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343))))))))) (ite (or c!1097900 c!1097898) (ite c!1097781 lt!2329957 (Context!10887 call!505592)) (Context!10887 call!505667)) (h!70802 s!2326)))))

(declare-fun b!6110961 () Bool)

(assert (=> b!6110961 (= e!3726229 (store ((as const (Array Context!10886 Bool)) false) (ite c!1097781 lt!2329957 (Context!10887 call!505592)) true))))

(declare-fun b!6110962 () Bool)

(assert (=> b!6110962 (= e!3726226 ((as const (Array Context!10886 Bool)) false))))

(declare-fun b!6110963 () Bool)

(assert (=> b!6110963 (= e!3726224 ((_ map or) call!505671 call!505668))))

(declare-fun bm!505666 () Bool)

(assert (=> bm!505666 (= call!505668 call!505672)))

(declare-fun bm!505667 () Bool)

(assert (=> bm!505667 (= call!505669 ($colon$colon!1936 (exprs!5943 (ite c!1097781 lt!2329957 (Context!10887 call!505592))) (ite (or c!1097898 c!1097897) (regTwo!32630 (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))))) (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343))))))))))

(declare-fun b!6110964 () Bool)

(assert (=> b!6110964 (= e!3726227 (nullable!6052 (regOne!32630 (ite c!1097781 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343))))))))))

(declare-fun b!6110965 () Bool)

(assert (=> b!6110965 (= e!3726225 ((_ map or) call!505671 call!505672))))

(declare-fun b!6110966 () Bool)

(assert (=> b!6110966 (= e!3726226 call!505670)))

(assert (= (and d!1915057 c!1097896) b!6110961))

(assert (= (and d!1915057 (not c!1097896)) b!6110958))

(assert (= (and b!6110958 c!1097900) b!6110965))

(assert (= (and b!6110958 (not c!1097900)) b!6110960))

(assert (= (and b!6110960 res!2534610) b!6110964))

(assert (= (and b!6110960 c!1097898) b!6110963))

(assert (= (and b!6110960 (not c!1097898)) b!6110956))

(assert (= (and b!6110956 c!1097897) b!6110957))

(assert (= (and b!6110956 (not c!1097897)) b!6110959))

(assert (= (and b!6110959 c!1097899) b!6110966))

(assert (= (and b!6110959 (not c!1097899)) b!6110962))

(assert (= (or b!6110957 b!6110966) bm!505662))

(assert (= (or b!6110957 b!6110966) bm!505663))

(assert (= (or b!6110963 bm!505662) bm!505667))

(assert (= (or b!6110963 bm!505663) bm!505666))

(assert (= (or b!6110965 bm!505666) bm!505665))

(assert (= (or b!6110965 b!6110963) bm!505664))

(declare-fun m!6960138 () Bool)

(assert (=> b!6110961 m!6960138))

(declare-fun m!6960140 () Bool)

(assert (=> bm!505665 m!6960140))

(declare-fun m!6960142 () Bool)

(assert (=> bm!505664 m!6960142))

(declare-fun m!6960144 () Bool)

(assert (=> b!6110964 m!6960144))

(declare-fun m!6960146 () Bool)

(assert (=> bm!505667 m!6960146))

(assert (=> bm!505587 d!1915057))

(declare-fun d!1915059 () Bool)

(declare-fun e!3726243 () Bool)

(assert (=> d!1915059 e!3726243))

(declare-fun res!2534623 () Bool)

(assert (=> d!1915059 (=> (not res!2534623) (not e!3726243))))

(declare-fun lt!2330058 () List!64478)

(declare-fun content!11944 (List!64478) (InoxSet C!32388))

(assert (=> d!1915059 (= res!2534623 (= (content!11944 lt!2330058) ((_ map or) (content!11944 (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354))) (content!11944 (t!377933 s!2326)))))))

(declare-fun e!3726244 () List!64478)

(assert (=> d!1915059 (= lt!2330058 e!3726244)))

(declare-fun c!1097908 () Bool)

(assert (=> d!1915059 (= c!1097908 ((_ is Nil!64354) (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354))))))

(assert (=> d!1915059 (= (++!14146 (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354)) (t!377933 s!2326)) lt!2330058)))

(declare-fun b!6110994 () Bool)

(assert (=> b!6110994 (= e!3726244 (Cons!64354 (h!70802 (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354))) (++!14146 (t!377933 (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354))) (t!377933 s!2326))))))

(declare-fun b!6110993 () Bool)

(assert (=> b!6110993 (= e!3726244 (t!377933 s!2326))))

(declare-fun b!6110995 () Bool)

(declare-fun res!2534624 () Bool)

(assert (=> b!6110995 (=> (not res!2534624) (not e!3726243))))

(declare-fun size!40203 (List!64478) Int)

(assert (=> b!6110995 (= res!2534624 (= (size!40203 lt!2330058) (+ (size!40203 (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354))) (size!40203 (t!377933 s!2326)))))))

(declare-fun b!6110996 () Bool)

(assert (=> b!6110996 (= e!3726243 (or (not (= (t!377933 s!2326) Nil!64354)) (= lt!2330058 (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354)))))))

(assert (= (and d!1915059 c!1097908) b!6110993))

(assert (= (and d!1915059 (not c!1097908)) b!6110994))

(assert (= (and d!1915059 res!2534623) b!6110995))

(assert (= (and b!6110995 res!2534624) b!6110996))

(declare-fun m!6960158 () Bool)

(assert (=> d!1915059 m!6960158))

(assert (=> d!1915059 m!6959692))

(declare-fun m!6960160 () Bool)

(assert (=> d!1915059 m!6960160))

(declare-fun m!6960162 () Bool)

(assert (=> d!1915059 m!6960162))

(declare-fun m!6960164 () Bool)

(assert (=> b!6110994 m!6960164))

(declare-fun m!6960166 () Bool)

(assert (=> b!6110995 m!6960166))

(assert (=> b!6110995 m!6959692))

(declare-fun m!6960168 () Bool)

(assert (=> b!6110995 m!6960168))

(declare-fun m!6960170 () Bool)

(assert (=> b!6110995 m!6960170))

(assert (=> b!6110261 d!1915059))

(declare-fun d!1915065 () Bool)

(declare-fun e!3726247 () Bool)

(assert (=> d!1915065 e!3726247))

(declare-fun res!2534629 () Bool)

(assert (=> d!1915065 (=> (not res!2534629) (not e!3726247))))

(declare-fun lt!2330059 () List!64478)

(assert (=> d!1915065 (= res!2534629 (= (content!11944 lt!2330059) ((_ map or) (content!11944 Nil!64354) (content!11944 (Cons!64354 (h!70802 s!2326) Nil!64354)))))))

(declare-fun e!3726248 () List!64478)

(assert (=> d!1915065 (= lt!2330059 e!3726248)))

(declare-fun c!1097909 () Bool)

(assert (=> d!1915065 (= c!1097909 ((_ is Nil!64354) Nil!64354))))

(assert (=> d!1915065 (= (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354)) lt!2330059)))

(declare-fun b!6111002 () Bool)

(assert (=> b!6111002 (= e!3726248 (Cons!64354 (h!70802 Nil!64354) (++!14146 (t!377933 Nil!64354) (Cons!64354 (h!70802 s!2326) Nil!64354))))))

(declare-fun b!6111001 () Bool)

(assert (=> b!6111001 (= e!3726248 (Cons!64354 (h!70802 s!2326) Nil!64354))))

(declare-fun b!6111003 () Bool)

(declare-fun res!2534630 () Bool)

(assert (=> b!6111003 (=> (not res!2534630) (not e!3726247))))

(assert (=> b!6111003 (= res!2534630 (= (size!40203 lt!2330059) (+ (size!40203 Nil!64354) (size!40203 (Cons!64354 (h!70802 s!2326) Nil!64354)))))))

(declare-fun b!6111004 () Bool)

(assert (=> b!6111004 (= e!3726247 (or (not (= (Cons!64354 (h!70802 s!2326) Nil!64354) Nil!64354)) (= lt!2330059 Nil!64354)))))

(assert (= (and d!1915065 c!1097909) b!6111001))

(assert (= (and d!1915065 (not c!1097909)) b!6111002))

(assert (= (and d!1915065 res!2534629) b!6111003))

(assert (= (and b!6111003 res!2534630) b!6111004))

(declare-fun m!6960172 () Bool)

(assert (=> d!1915065 m!6960172))

(declare-fun m!6960174 () Bool)

(assert (=> d!1915065 m!6960174))

(declare-fun m!6960176 () Bool)

(assert (=> d!1915065 m!6960176))

(declare-fun m!6960178 () Bool)

(assert (=> b!6111002 m!6960178))

(declare-fun m!6960180 () Bool)

(assert (=> b!6111003 m!6960180))

(declare-fun m!6960182 () Bool)

(assert (=> b!6111003 m!6960182))

(declare-fun m!6960184 () Bool)

(assert (=> b!6111003 m!6960184))

(assert (=> b!6110261 d!1915065))

(declare-fun d!1915067 () Bool)

(assert (=> d!1915067 (= (++!14146 (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354)) (t!377933 s!2326)) s!2326)))

(declare-fun lt!2330063 () Unit!157391)

(declare-fun choose!45417 (List!64478 C!32388 List!64478 List!64478) Unit!157391)

(assert (=> d!1915067 (= lt!2330063 (choose!45417 Nil!64354 (h!70802 s!2326) (t!377933 s!2326) s!2326))))

(assert (=> d!1915067 (= (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) (t!377933 s!2326))) s!2326)))

(assert (=> d!1915067 (= (lemmaMoveElementToOtherListKeepsConcatEq!2241 Nil!64354 (h!70802 s!2326) (t!377933 s!2326) s!2326) lt!2330063)))

(declare-fun bs!1516883 () Bool)

(assert (= bs!1516883 d!1915067))

(assert (=> bs!1516883 m!6959692))

(assert (=> bs!1516883 m!6959692))

(assert (=> bs!1516883 m!6959694))

(declare-fun m!6960202 () Bool)

(assert (=> bs!1516883 m!6960202))

(declare-fun m!6960204 () Bool)

(assert (=> bs!1516883 m!6960204))

(assert (=> b!6110261 d!1915067))

(declare-fun b!6111020 () Bool)

(declare-fun e!3726261 () Bool)

(declare-fun lt!2330066 () Option!15950)

(assert (=> b!6111020 (= e!3726261 (= (++!14146 (_1!36341 (get!22191 lt!2330066)) (_2!36341 (get!22191 lt!2330066))) s!2326))))

(declare-fun b!6111021 () Bool)

(declare-fun lt!2330064 () Unit!157391)

(declare-fun lt!2330065 () Unit!157391)

(assert (=> b!6111021 (= lt!2330064 lt!2330065)))

(assert (=> b!6111021 (= (++!14146 (++!14146 (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354)) (Cons!64354 (h!70802 (t!377933 s!2326)) Nil!64354)) (t!377933 (t!377933 s!2326))) s!2326)))

(assert (=> b!6111021 (= lt!2330065 (lemmaMoveElementToOtherListKeepsConcatEq!2241 (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354)) (h!70802 (t!377933 s!2326)) (t!377933 (t!377933 s!2326)) s!2326))))

(declare-fun e!3726260 () Option!15950)

(assert (=> b!6111021 (= e!3726260 (findConcatSeparation!2364 (regOne!32630 r!7292) (regTwo!32630 r!7292) (++!14146 (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354)) (Cons!64354 (h!70802 (t!377933 s!2326)) Nil!64354)) (t!377933 (t!377933 s!2326)) s!2326))))

(declare-fun b!6111022 () Bool)

(declare-fun e!3726258 () Option!15950)

(assert (=> b!6111022 (= e!3726258 (Some!15949 (tuple2!66077 (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354)) (t!377933 s!2326))))))

(declare-fun b!6111024 () Bool)

(declare-fun e!3726259 () Bool)

(assert (=> b!6111024 (= e!3726259 (matchR!8242 (regTwo!32630 r!7292) (t!377933 s!2326)))))

(declare-fun d!1915073 () Bool)

(declare-fun e!3726262 () Bool)

(assert (=> d!1915073 e!3726262))

(declare-fun res!2534638 () Bool)

(assert (=> d!1915073 (=> res!2534638 e!3726262)))

(assert (=> d!1915073 (= res!2534638 e!3726261)))

(declare-fun res!2534640 () Bool)

(assert (=> d!1915073 (=> (not res!2534640) (not e!3726261))))

(assert (=> d!1915073 (= res!2534640 (isDefined!12653 lt!2330066))))

(assert (=> d!1915073 (= lt!2330066 e!3726258)))

(declare-fun c!1097916 () Bool)

(assert (=> d!1915073 (= c!1097916 e!3726259)))

(declare-fun res!2534637 () Bool)

(assert (=> d!1915073 (=> (not res!2534637) (not e!3726259))))

(assert (=> d!1915073 (= res!2534637 (matchR!8242 (regOne!32630 r!7292) (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354))))))

(assert (=> d!1915073 (validRegex!7795 (regOne!32630 r!7292))))

(assert (=> d!1915073 (= (findConcatSeparation!2364 (regOne!32630 r!7292) (regTwo!32630 r!7292) (++!14146 Nil!64354 (Cons!64354 (h!70802 s!2326) Nil!64354)) (t!377933 s!2326) s!2326) lt!2330066)))

(declare-fun b!6111023 () Bool)

(declare-fun res!2534639 () Bool)

(assert (=> b!6111023 (=> (not res!2534639) (not e!3726261))))

(assert (=> b!6111023 (= res!2534639 (matchR!8242 (regTwo!32630 r!7292) (_2!36341 (get!22191 lt!2330066))))))

(declare-fun b!6111025 () Bool)

(assert (=> b!6111025 (= e!3726262 (not (isDefined!12653 lt!2330066)))))

(declare-fun b!6111026 () Bool)

(declare-fun res!2534636 () Bool)

(assert (=> b!6111026 (=> (not res!2534636) (not e!3726261))))

(assert (=> b!6111026 (= res!2534636 (matchR!8242 (regOne!32630 r!7292) (_1!36341 (get!22191 lt!2330066))))))

(declare-fun b!6111027 () Bool)

(assert (=> b!6111027 (= e!3726260 None!15949)))

(declare-fun b!6111028 () Bool)

(assert (=> b!6111028 (= e!3726258 e!3726260)))

(declare-fun c!1097915 () Bool)

(assert (=> b!6111028 (= c!1097915 ((_ is Nil!64354) (t!377933 s!2326)))))

(assert (= (and d!1915073 res!2534637) b!6111024))

(assert (= (and d!1915073 c!1097916) b!6111022))

(assert (= (and d!1915073 (not c!1097916)) b!6111028))

(assert (= (and b!6111028 c!1097915) b!6111027))

(assert (= (and b!6111028 (not c!1097915)) b!6111021))

(assert (= (and d!1915073 res!2534640) b!6111026))

(assert (= (and b!6111026 res!2534636) b!6111023))

(assert (= (and b!6111023 res!2534639) b!6111020))

(assert (= (and d!1915073 (not res!2534638)) b!6111025))

(declare-fun m!6960206 () Bool)

(assert (=> b!6111020 m!6960206))

(declare-fun m!6960208 () Bool)

(assert (=> b!6111020 m!6960208))

(assert (=> b!6111023 m!6960206))

(declare-fun m!6960210 () Bool)

(assert (=> b!6111023 m!6960210))

(declare-fun m!6960212 () Bool)

(assert (=> b!6111024 m!6960212))

(assert (=> b!6111021 m!6959692))

(declare-fun m!6960214 () Bool)

(assert (=> b!6111021 m!6960214))

(assert (=> b!6111021 m!6960214))

(declare-fun m!6960216 () Bool)

(assert (=> b!6111021 m!6960216))

(assert (=> b!6111021 m!6959692))

(declare-fun m!6960218 () Bool)

(assert (=> b!6111021 m!6960218))

(assert (=> b!6111021 m!6960214))

(declare-fun m!6960220 () Bool)

(assert (=> b!6111021 m!6960220))

(assert (=> b!6111026 m!6960206))

(declare-fun m!6960222 () Bool)

(assert (=> b!6111026 m!6960222))

(declare-fun m!6960224 () Bool)

(assert (=> d!1915073 m!6960224))

(assert (=> d!1915073 m!6959692))

(declare-fun m!6960226 () Bool)

(assert (=> d!1915073 m!6960226))

(assert (=> d!1915073 m!6959706))

(assert (=> b!6111025 m!6960224))

(assert (=> b!6110261 d!1915073))

(declare-fun bm!505671 () Bool)

(declare-fun call!505676 () Bool)

(declare-fun c!1097917 () Bool)

(assert (=> bm!505671 (= call!505676 (validRegex!7795 (ite c!1097917 (regTwo!32631 lt!2330037) (regTwo!32630 lt!2330037))))))

(declare-fun b!6111029 () Bool)

(declare-fun e!3726266 () Bool)

(declare-fun e!3726267 () Bool)

(assert (=> b!6111029 (= e!3726266 e!3726267)))

(declare-fun res!2534642 () Bool)

(assert (=> b!6111029 (=> (not res!2534642) (not e!3726267))))

(declare-fun call!505678 () Bool)

(assert (=> b!6111029 (= res!2534642 call!505678)))

(declare-fun call!505677 () Bool)

(declare-fun c!1097918 () Bool)

(declare-fun bm!505672 () Bool)

(assert (=> bm!505672 (= call!505677 (validRegex!7795 (ite c!1097918 (reg!16388 lt!2330037) (ite c!1097917 (regOne!32631 lt!2330037) (regOne!32630 lt!2330037)))))))

(declare-fun b!6111030 () Bool)

(declare-fun e!3726264 () Bool)

(assert (=> b!6111030 (= e!3726264 call!505677)))

(declare-fun bm!505673 () Bool)

(assert (=> bm!505673 (= call!505678 call!505677)))

(declare-fun b!6111031 () Bool)

(declare-fun e!3726265 () Bool)

(assert (=> b!6111031 (= e!3726265 call!505676)))

(declare-fun b!6111032 () Bool)

(declare-fun res!2534643 () Bool)

(assert (=> b!6111032 (=> (not res!2534643) (not e!3726265))))

(assert (=> b!6111032 (= res!2534643 call!505678)))

(declare-fun e!3726268 () Bool)

(assert (=> b!6111032 (= e!3726268 e!3726265)))

(declare-fun b!6111033 () Bool)

(declare-fun e!3726269 () Bool)

(assert (=> b!6111033 (= e!3726269 e!3726264)))

(declare-fun res!2534641 () Bool)

(assert (=> b!6111033 (= res!2534641 (not (nullable!6052 (reg!16388 lt!2330037))))))

(assert (=> b!6111033 (=> (not res!2534641) (not e!3726264))))

(declare-fun b!6111034 () Bool)

(assert (=> b!6111034 (= e!3726269 e!3726268)))

(assert (=> b!6111034 (= c!1097917 ((_ is Union!16059) lt!2330037))))

(declare-fun d!1915075 () Bool)

(declare-fun res!2534645 () Bool)

(declare-fun e!3726263 () Bool)

(assert (=> d!1915075 (=> res!2534645 e!3726263)))

(assert (=> d!1915075 (= res!2534645 ((_ is ElementMatch!16059) lt!2330037))))

(assert (=> d!1915075 (= (validRegex!7795 lt!2330037) e!3726263)))

(declare-fun b!6111035 () Bool)

(assert (=> b!6111035 (= e!3726263 e!3726269)))

(assert (=> b!6111035 (= c!1097918 ((_ is Star!16059) lt!2330037))))

(declare-fun b!6111036 () Bool)

(declare-fun res!2534644 () Bool)

(assert (=> b!6111036 (=> res!2534644 e!3726266)))

(assert (=> b!6111036 (= res!2534644 (not ((_ is Concat!24904) lt!2330037)))))

(assert (=> b!6111036 (= e!3726268 e!3726266)))

(declare-fun b!6111037 () Bool)

(assert (=> b!6111037 (= e!3726267 call!505676)))

(assert (= (and d!1915075 (not res!2534645)) b!6111035))

(assert (= (and b!6111035 c!1097918) b!6111033))

(assert (= (and b!6111035 (not c!1097918)) b!6111034))

(assert (= (and b!6111033 res!2534641) b!6111030))

(assert (= (and b!6111034 c!1097917) b!6111032))

(assert (= (and b!6111034 (not c!1097917)) b!6111036))

(assert (= (and b!6111032 res!2534643) b!6111031))

(assert (= (and b!6111036 (not res!2534644)) b!6111029))

(assert (= (and b!6111029 res!2534642) b!6111037))

(assert (= (or b!6111031 b!6111037) bm!505671))

(assert (= (or b!6111032 b!6111029) bm!505673))

(assert (= (or b!6111030 bm!505673) bm!505672))

(declare-fun m!6960228 () Bool)

(assert (=> bm!505671 m!6960228))

(declare-fun m!6960230 () Bool)

(assert (=> bm!505672 m!6960230))

(declare-fun m!6960232 () Bool)

(assert (=> b!6111033 m!6960232))

(assert (=> d!1914879 d!1915075))

(assert (=> d!1914879 d!1914801))

(assert (=> d!1914879 d!1914813))

(declare-fun d!1915077 () Bool)

(assert (=> d!1915077 (= (isEmpty!36281 (t!377933 s!2326)) ((_ is Nil!64354) (t!377933 s!2326)))))

(assert (=> d!1914799 d!1915077))

(declare-fun d!1915079 () Bool)

(declare-fun c!1097919 () Bool)

(assert (=> d!1915079 (= c!1097919 (isEmpty!36281 (tail!11724 (t!377933 s!2326))))))

(declare-fun e!3726270 () Bool)

(assert (=> d!1915079 (= (matchZipper!2071 (derivationStepZipper!2032 ((_ map or) lt!2329951 lt!2329959) (head!12639 (t!377933 s!2326))) (tail!11724 (t!377933 s!2326))) e!3726270)))

(declare-fun b!6111038 () Bool)

(assert (=> b!6111038 (= e!3726270 (nullableZipper!1840 (derivationStepZipper!2032 ((_ map or) lt!2329951 lt!2329959) (head!12639 (t!377933 s!2326)))))))

(declare-fun b!6111039 () Bool)

(assert (=> b!6111039 (= e!3726270 (matchZipper!2071 (derivationStepZipper!2032 (derivationStepZipper!2032 ((_ map or) lt!2329951 lt!2329959) (head!12639 (t!377933 s!2326))) (head!12639 (tail!11724 (t!377933 s!2326)))) (tail!11724 (tail!11724 (t!377933 s!2326)))))))

(assert (= (and d!1915079 c!1097919) b!6111038))

(assert (= (and d!1915079 (not c!1097919)) b!6111039))

(assert (=> d!1915079 m!6959556))

(declare-fun m!6960238 () Bool)

(assert (=> d!1915079 m!6960238))

(assert (=> b!6111038 m!6959562))

(declare-fun m!6960242 () Bool)

(assert (=> b!6111038 m!6960242))

(assert (=> b!6111039 m!6959556))

(declare-fun m!6960244 () Bool)

(assert (=> b!6111039 m!6960244))

(assert (=> b!6111039 m!6959562))

(assert (=> b!6111039 m!6960244))

(declare-fun m!6960246 () Bool)

(assert (=> b!6111039 m!6960246))

(assert (=> b!6111039 m!6959556))

(declare-fun m!6960248 () Bool)

(assert (=> b!6111039 m!6960248))

(assert (=> b!6111039 m!6960246))

(assert (=> b!6111039 m!6960248))

(declare-fun m!6960250 () Bool)

(assert (=> b!6111039 m!6960250))

(assert (=> b!6110064 d!1915079))

(declare-fun bs!1516897 () Bool)

(declare-fun d!1915085 () Bool)

(assert (= bs!1516897 (and d!1915085 b!6109974)))

(declare-fun lambda!332906 () Int)

(assert (=> bs!1516897 (= (= (head!12639 (t!377933 s!2326)) (h!70802 s!2326)) (= lambda!332906 lambda!332817))))

(assert (=> d!1915085 true))

(assert (=> d!1915085 (= (derivationStepZipper!2032 ((_ map or) lt!2329951 lt!2329959) (head!12639 (t!377933 s!2326))) (flatMap!1564 ((_ map or) lt!2329951 lt!2329959) lambda!332906))))

(declare-fun bs!1516898 () Bool)

(assert (= bs!1516898 d!1915085))

(declare-fun m!6960254 () Bool)

(assert (=> bs!1516898 m!6960254))

(assert (=> b!6110064 d!1915085))

(declare-fun d!1915089 () Bool)

(assert (=> d!1915089 (= (head!12639 (t!377933 s!2326)) (h!70802 (t!377933 s!2326)))))

(assert (=> b!6110064 d!1915089))

(declare-fun d!1915091 () Bool)

(assert (=> d!1915091 (= (tail!11724 (t!377933 s!2326)) (t!377933 (t!377933 s!2326)))))

(assert (=> b!6110064 d!1915091))

(declare-fun d!1915095 () Bool)

(assert (=> d!1915095 (= (Exists!3129 (ite c!1097814 lambda!332872 lambda!332873)) (choose!45410 (ite c!1097814 lambda!332872 lambda!332873)))))

(declare-fun bs!1516899 () Bool)

(assert (= bs!1516899 d!1915095))

(declare-fun m!6960266 () Bool)

(assert (=> bs!1516899 m!6960266))

(assert (=> bm!505600 d!1915095))

(assert (=> b!6110482 d!1914865))

(declare-fun d!1915099 () Bool)

(assert (=> d!1915099 true))

(declare-fun setRes!41288 () Bool)

(assert (=> d!1915099 setRes!41288))

(declare-fun condSetEmpty!41288 () Bool)

(declare-fun res!2534663 () (InoxSet Context!10886))

(assert (=> d!1915099 (= condSetEmpty!41288 (= res!2534663 ((as const (Array Context!10886 Bool)) false)))))

(assert (=> d!1915099 (= (choose!45413 z!1189 lambda!332817) res!2534663)))

(declare-fun setIsEmpty!41288 () Bool)

(assert (=> setIsEmpty!41288 setRes!41288))

(declare-fun tp!1706828 () Bool)

(declare-fun e!3726289 () Bool)

(declare-fun setElem!41288 () Context!10886)

(declare-fun setNonEmpty!41288 () Bool)

(assert (=> setNonEmpty!41288 (= setRes!41288 (and tp!1706828 (inv!83394 setElem!41288) e!3726289))))

(declare-fun setRest!41288 () (InoxSet Context!10886))

(assert (=> setNonEmpty!41288 (= res!2534663 ((_ map or) (store ((as const (Array Context!10886 Bool)) false) setElem!41288 true) setRest!41288))))

(declare-fun b!6111066 () Bool)

(declare-fun tp!1706827 () Bool)

(assert (=> b!6111066 (= e!3726289 tp!1706827)))

(assert (= (and d!1915099 condSetEmpty!41288) setIsEmpty!41288))

(assert (= (and d!1915099 (not condSetEmpty!41288)) setNonEmpty!41288))

(assert (= setNonEmpty!41288 b!6111066))

(declare-fun m!6960298 () Bool)

(assert (=> setNonEmpty!41288 m!6960298))

(assert (=> d!1914861 d!1915099))

(declare-fun d!1915107 () Bool)

(assert (=> d!1915107 (= (nullable!6052 (h!70800 (exprs!5943 lt!2329957))) (nullableFct!2016 (h!70800 (exprs!5943 lt!2329957))))))

(declare-fun bs!1516901 () Bool)

(assert (= bs!1516901 d!1915107))

(declare-fun m!6960300 () Bool)

(assert (=> bs!1516901 m!6960300))

(assert (=> b!6110477 d!1915107))

(declare-fun bs!1516902 () Bool)

(declare-fun d!1915109 () Bool)

(assert (= bs!1516902 (and d!1915109 d!1914877)))

(declare-fun lambda!332907 () Int)

(assert (=> bs!1516902 (= lambda!332907 lambda!332867)))

(declare-fun bs!1516903 () Bool)

(assert (= bs!1516903 (and d!1915109 d!1914783)))

(assert (=> bs!1516903 (= lambda!332907 lambda!332823)))

(declare-fun bs!1516904 () Bool)

(assert (= bs!1516904 (and d!1915109 d!1915053)))

(assert (=> bs!1516904 (= lambda!332907 lambda!332899)))

(declare-fun bs!1516905 () Bool)

(assert (= bs!1516905 (and d!1915109 d!1914801)))

(assert (=> bs!1516905 (= lambda!332907 lambda!332832)))

(declare-fun bs!1516906 () Bool)

(assert (= bs!1516906 (and d!1915109 d!1914897)))

(assert (=> bs!1516906 (= lambda!332907 lambda!332875)))

(declare-fun bs!1516907 () Bool)

(assert (= bs!1516907 (and d!1915109 d!1914813)))

(assert (=> bs!1516907 (= lambda!332907 lambda!332835)))

(declare-fun bs!1516908 () Bool)

(assert (= bs!1516908 (and d!1915109 d!1914887)))

(assert (=> bs!1516908 (= lambda!332907 lambda!332874)))

(assert (=> d!1915109 (= (inv!83394 (h!70801 (t!377932 zl!343))) (forall!15180 (exprs!5943 (h!70801 (t!377932 zl!343))) lambda!332907))))

(declare-fun bs!1516909 () Bool)

(assert (= bs!1516909 d!1915109))

(declare-fun m!6960302 () Bool)

(assert (=> bs!1516909 m!6960302))

(assert (=> b!6110682 d!1915109))

(declare-fun d!1915111 () Bool)

(assert (=> d!1915111 (= (nullable!6052 (reg!16388 r!7292)) (nullableFct!2016 (reg!16388 r!7292)))))

(declare-fun bs!1516910 () Bool)

(assert (= bs!1516910 d!1915111))

(declare-fun m!6960304 () Bool)

(assert (=> bs!1516910 m!6960304))

(assert (=> b!6110620 d!1915111))

(declare-fun d!1915113 () Bool)

(assert (=> d!1915113 (= (isEmpty!36281 (tail!11724 s!2326)) ((_ is Nil!64354) (tail!11724 s!2326)))))

(assert (=> b!6110593 d!1915113))

(declare-fun d!1915115 () Bool)

(assert (=> d!1915115 (= (tail!11724 s!2326) (t!377933 s!2326))))

(assert (=> b!6110593 d!1915115))

(declare-fun d!1915117 () Bool)

(assert (=> d!1915117 (= (Exists!3129 lambda!332863) (choose!45410 lambda!332863))))

(declare-fun bs!1516911 () Bool)

(assert (= bs!1516911 d!1915117))

(declare-fun m!6960306 () Bool)

(assert (=> bs!1516911 m!6960306))

(assert (=> d!1914845 d!1915117))

(declare-fun d!1915119 () Bool)

(assert (=> d!1915119 (= (Exists!3129 lambda!332864) (choose!45410 lambda!332864))))

(declare-fun bs!1516912 () Bool)

(assert (= bs!1516912 d!1915119))

(declare-fun m!6960308 () Bool)

(assert (=> bs!1516912 m!6960308))

(assert (=> d!1914845 d!1915119))

(declare-fun bs!1516933 () Bool)

(declare-fun d!1915121 () Bool)

(assert (= bs!1516933 (and d!1915121 b!6109969)))

(declare-fun lambda!332914 () Int)

(assert (=> bs!1516933 (not (= lambda!332914 lambda!332816))))

(assert (=> bs!1516933 (= lambda!332914 lambda!332815)))

(declare-fun bs!1516936 () Bool)

(assert (= bs!1516936 (and d!1915121 d!1914841)))

(assert (=> bs!1516936 (= lambda!332914 lambda!332856)))

(declare-fun bs!1516937 () Bool)

(assert (= bs!1516937 (and d!1915121 d!1914845)))

(assert (=> bs!1516937 (not (= lambda!332914 lambda!332864))))

(assert (=> bs!1516937 (= lambda!332914 lambda!332863)))

(declare-fun bs!1516938 () Bool)

(assert (= bs!1516938 (and d!1915121 b!6110553)))

(assert (=> bs!1516938 (not (= lambda!332914 lambda!332872))))

(declare-fun bs!1516939 () Bool)

(assert (= bs!1516939 (and d!1915121 d!1915033)))

(assert (=> bs!1516939 (= lambda!332914 lambda!332897)))

(declare-fun bs!1516940 () Bool)

(assert (= bs!1516940 (and d!1915121 b!6110549)))

(assert (=> bs!1516940 (not (= lambda!332914 lambda!332873))))

(assert (=> d!1915121 true))

(assert (=> d!1915121 true))

(assert (=> d!1915121 true))

(declare-fun lambda!332916 () Int)

(assert (=> bs!1516933 (= lambda!332916 lambda!332816)))

(assert (=> bs!1516933 (not (= lambda!332916 lambda!332815))))

(assert (=> bs!1516936 (not (= lambda!332916 lambda!332856))))

(assert (=> bs!1516937 (= lambda!332916 lambda!332864)))

(declare-fun bs!1516941 () Bool)

(assert (= bs!1516941 d!1915121))

(assert (=> bs!1516941 (not (= lambda!332916 lambda!332914))))

(assert (=> bs!1516937 (not (= lambda!332916 lambda!332863))))

(assert (=> bs!1516938 (not (= lambda!332916 lambda!332872))))

(assert (=> bs!1516939 (not (= lambda!332916 lambda!332897))))

(assert (=> bs!1516940 (= lambda!332916 lambda!332873)))

(assert (=> d!1915121 true))

(assert (=> d!1915121 true))

(assert (=> d!1915121 true))

(assert (=> d!1915121 (= (Exists!3129 lambda!332914) (Exists!3129 lambda!332916))))

(assert (=> d!1915121 true))

(declare-fun _$90!1788 () Unit!157391)

(assert (=> d!1915121 (= (choose!45412 (regOne!32630 r!7292) (regTwo!32630 r!7292) s!2326) _$90!1788)))

(declare-fun m!6960380 () Bool)

(assert (=> bs!1516941 m!6960380))

(declare-fun m!6960382 () Bool)

(assert (=> bs!1516941 m!6960382))

(assert (=> d!1914845 d!1915121))

(assert (=> d!1914845 d!1915027))

(declare-fun d!1915139 () Bool)

(assert (=> d!1915139 (= (isEmpty!36278 (exprs!5943 (h!70801 zl!343))) ((_ is Nil!64352) (exprs!5943 (h!70801 zl!343))))))

(assert (=> b!6110508 d!1915139))

(declare-fun bm!505678 () Bool)

(declare-fun call!505683 () List!64476)

(declare-fun call!505685 () List!64476)

(assert (=> bm!505678 (= call!505683 call!505685)))

(declare-fun b!6111116 () Bool)

(declare-fun e!3726316 () (InoxSet Context!10886))

(declare-fun e!3726320 () (InoxSet Context!10886))

(assert (=> b!6111116 (= e!3726316 e!3726320)))

(declare-fun c!1097940 () Bool)

(assert (=> b!6111116 (= c!1097940 ((_ is Concat!24904) (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))))))

(declare-fun b!6111117 () Bool)

(declare-fun call!505686 () (InoxSet Context!10886))

(assert (=> b!6111117 (= e!3726320 call!505686)))

(declare-fun bm!505679 () Bool)

(declare-fun call!505684 () (InoxSet Context!10886))

(assert (=> bm!505679 (= call!505686 call!505684)))

(declare-fun b!6111118 () Bool)

(declare-fun e!3726321 () (InoxSet Context!10886))

(declare-fun e!3726317 () (InoxSet Context!10886))

(assert (=> b!6111118 (= e!3726321 e!3726317)))

(declare-fun c!1097943 () Bool)

(assert (=> b!6111118 (= c!1097943 ((_ is Union!16059) (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))))))

(declare-fun bm!505680 () Bool)

(declare-fun call!505687 () (InoxSet Context!10886))

(assert (=> bm!505680 (= call!505687 (derivationStepZipperDown!1307 (ite c!1097943 (regOne!32631 (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) (regOne!32630 (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))))))) (ite c!1097943 (Context!10887 (t!377931 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) (Context!10887 call!505685)) (h!70802 s!2326)))))

(declare-fun d!1915141 () Bool)

(declare-fun c!1097939 () Bool)

(assert (=> d!1915141 (= c!1097939 (and ((_ is ElementMatch!16059) (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) (= (c!1097651 (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) (h!70802 s!2326))))))

(assert (=> d!1915141 (= (derivationStepZipperDown!1307 (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))))) (Context!10887 (t!377931 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) (h!70802 s!2326)) e!3726321)))

(declare-fun b!6111119 () Bool)

(declare-fun c!1097942 () Bool)

(assert (=> b!6111119 (= c!1097942 ((_ is Star!16059) (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))))))

(declare-fun e!3726318 () (InoxSet Context!10886))

(assert (=> b!6111119 (= e!3726320 e!3726318)))

(declare-fun b!6111120 () Bool)

(declare-fun c!1097941 () Bool)

(declare-fun e!3726319 () Bool)

(assert (=> b!6111120 (= c!1097941 e!3726319)))

(declare-fun res!2534687 () Bool)

(assert (=> b!6111120 (=> (not res!2534687) (not e!3726319))))

(assert (=> b!6111120 (= res!2534687 ((_ is Concat!24904) (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))))))

(assert (=> b!6111120 (= e!3726317 e!3726316)))

(declare-fun call!505688 () (InoxSet Context!10886))

(declare-fun bm!505681 () Bool)

(assert (=> bm!505681 (= call!505688 (derivationStepZipperDown!1307 (ite c!1097943 (regTwo!32631 (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) (ite c!1097941 (regTwo!32630 (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) (ite c!1097940 (regOne!32630 (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) (reg!16388 (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))))))))) (ite (or c!1097943 c!1097941) (Context!10887 (t!377931 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) (Context!10887 call!505683)) (h!70802 s!2326)))))

(declare-fun b!6111121 () Bool)

(assert (=> b!6111121 (= e!3726321 (store ((as const (Array Context!10886 Bool)) false) (Context!10887 (t!377931 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) true))))

(declare-fun b!6111122 () Bool)

(assert (=> b!6111122 (= e!3726318 ((as const (Array Context!10886 Bool)) false))))

(declare-fun b!6111123 () Bool)

(assert (=> b!6111123 (= e!3726316 ((_ map or) call!505687 call!505684))))

(declare-fun bm!505682 () Bool)

(assert (=> bm!505682 (= call!505684 call!505688)))

(declare-fun bm!505683 () Bool)

(assert (=> bm!505683 (= call!505685 ($colon$colon!1936 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))))))) (ite (or c!1097941 c!1097940) (regTwo!32630 (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))))))))))

(declare-fun b!6111124 () Bool)

(assert (=> b!6111124 (= e!3726319 (nullable!6052 (regOne!32630 (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))))))))))

(declare-fun b!6111125 () Bool)

(assert (=> b!6111125 (= e!3726317 ((_ map or) call!505687 call!505688))))

(declare-fun b!6111126 () Bool)

(assert (=> b!6111126 (= e!3726318 call!505686)))

(assert (= (and d!1915141 c!1097939) b!6111121))

(assert (= (and d!1915141 (not c!1097939)) b!6111118))

(assert (= (and b!6111118 c!1097943) b!6111125))

(assert (= (and b!6111118 (not c!1097943)) b!6111120))

(assert (= (and b!6111120 res!2534687) b!6111124))

(assert (= (and b!6111120 c!1097941) b!6111123))

(assert (= (and b!6111120 (not c!1097941)) b!6111116))

(assert (= (and b!6111116 c!1097940) b!6111117))

(assert (= (and b!6111116 (not c!1097940)) b!6111119))

(assert (= (and b!6111119 c!1097942) b!6111126))

(assert (= (and b!6111119 (not c!1097942)) b!6111122))

(assert (= (or b!6111117 b!6111126) bm!505678))

(assert (= (or b!6111117 b!6111126) bm!505679))

(assert (= (or b!6111123 bm!505678) bm!505683))

(assert (= (or b!6111123 bm!505679) bm!505682))

(assert (= (or b!6111125 bm!505682) bm!505681))

(assert (= (or b!6111125 b!6111123) bm!505680))

(declare-fun m!6960384 () Bool)

(assert (=> b!6111121 m!6960384))

(declare-fun m!6960386 () Bool)

(assert (=> bm!505681 m!6960386))

(declare-fun m!6960388 () Bool)

(assert (=> bm!505680 m!6960388))

(declare-fun m!6960390 () Bool)

(assert (=> b!6111124 m!6960390))

(declare-fun m!6960392 () Bool)

(assert (=> bm!505683 m!6960392))

(assert (=> bm!505593 d!1915141))

(declare-fun d!1915143 () Bool)

(assert (=> d!1915143 (= (head!12639 s!2326) (h!70802 s!2326))))

(assert (=> b!6110591 d!1915143))

(declare-fun d!1915145 () Bool)

(assert (=> d!1915145 (= ($colon$colon!1936 (exprs!5943 lt!2329957) (ite (or c!1097779 c!1097778) (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (h!70800 (exprs!5943 (h!70801 zl!343))))) (Cons!64352 (ite (or c!1097779 c!1097778) (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (h!70800 (exprs!5943 (h!70801 zl!343)))) (exprs!5943 lt!2329957)))))

(assert (=> bm!505590 d!1915145))

(declare-fun d!1915147 () Bool)

(assert (=> d!1915147 (= (isEmpty!36278 (tail!11725 (exprs!5943 (h!70801 zl!343)))) ((_ is Nil!64352) (tail!11725 (exprs!5943 (h!70801 zl!343)))))))

(assert (=> b!6110512 d!1915147))

(declare-fun d!1915149 () Bool)

(assert (=> d!1915149 (= (tail!11725 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))))

(assert (=> b!6110512 d!1915149))

(declare-fun bm!505684 () Bool)

(declare-fun call!505689 () Bool)

(assert (=> bm!505684 (= call!505689 (isEmpty!36281 (tail!11724 s!2326)))))

(declare-fun b!6111127 () Bool)

(declare-fun e!3726325 () Bool)

(declare-fun lt!2330078 () Bool)

(assert (=> b!6111127 (= e!3726325 (not lt!2330078))))

(declare-fun b!6111128 () Bool)

(declare-fun res!2534693 () Bool)

(declare-fun e!3726328 () Bool)

(assert (=> b!6111128 (=> (not res!2534693) (not e!3726328))))

(assert (=> b!6111128 (= res!2534693 (not call!505689))))

(declare-fun b!6111129 () Bool)

(declare-fun e!3726326 () Bool)

(declare-fun e!3726323 () Bool)

(assert (=> b!6111129 (= e!3726326 e!3726323)))

(declare-fun res!2534695 () Bool)

(assert (=> b!6111129 (=> res!2534695 e!3726323)))

(assert (=> b!6111129 (= res!2534695 call!505689)))

(declare-fun b!6111130 () Bool)

(declare-fun e!3726327 () Bool)

(assert (=> b!6111130 (= e!3726327 (nullable!6052 (derivativeStep!4780 r!7292 (head!12639 s!2326))))))

(declare-fun b!6111131 () Bool)

(declare-fun res!2534689 () Bool)

(assert (=> b!6111131 (=> (not res!2534689) (not e!3726328))))

(assert (=> b!6111131 (= res!2534689 (isEmpty!36281 (tail!11724 (tail!11724 s!2326))))))

(declare-fun b!6111132 () Bool)

(declare-fun e!3726324 () Bool)

(assert (=> b!6111132 (= e!3726324 e!3726325)))

(declare-fun c!1097945 () Bool)

(assert (=> b!6111132 (= c!1097945 ((_ is EmptyLang!16059) (derivativeStep!4780 r!7292 (head!12639 s!2326))))))

(declare-fun d!1915151 () Bool)

(assert (=> d!1915151 e!3726324))

(declare-fun c!1097944 () Bool)

(assert (=> d!1915151 (= c!1097944 ((_ is EmptyExpr!16059) (derivativeStep!4780 r!7292 (head!12639 s!2326))))))

(assert (=> d!1915151 (= lt!2330078 e!3726327)))

(declare-fun c!1097946 () Bool)

(assert (=> d!1915151 (= c!1097946 (isEmpty!36281 (tail!11724 s!2326)))))

(assert (=> d!1915151 (validRegex!7795 (derivativeStep!4780 r!7292 (head!12639 s!2326)))))

(assert (=> d!1915151 (= (matchR!8242 (derivativeStep!4780 r!7292 (head!12639 s!2326)) (tail!11724 s!2326)) lt!2330078)))

(declare-fun b!6111133 () Bool)

(declare-fun res!2534691 () Bool)

(declare-fun e!3726322 () Bool)

(assert (=> b!6111133 (=> res!2534691 e!3726322)))

(assert (=> b!6111133 (= res!2534691 e!3726328)))

(declare-fun res!2534690 () Bool)

(assert (=> b!6111133 (=> (not res!2534690) (not e!3726328))))

(assert (=> b!6111133 (= res!2534690 lt!2330078)))

(declare-fun b!6111134 () Bool)

(assert (=> b!6111134 (= e!3726323 (not (= (head!12639 (tail!11724 s!2326)) (c!1097651 (derivativeStep!4780 r!7292 (head!12639 s!2326))))))))

(declare-fun b!6111135 () Bool)

(assert (=> b!6111135 (= e!3726324 (= lt!2330078 call!505689))))

(declare-fun b!6111136 () Bool)

(declare-fun res!2534692 () Bool)

(assert (=> b!6111136 (=> res!2534692 e!3726323)))

(assert (=> b!6111136 (= res!2534692 (not (isEmpty!36281 (tail!11724 (tail!11724 s!2326)))))))

(declare-fun b!6111137 () Bool)

(declare-fun res!2534694 () Bool)

(assert (=> b!6111137 (=> res!2534694 e!3726322)))

(assert (=> b!6111137 (= res!2534694 (not ((_ is ElementMatch!16059) (derivativeStep!4780 r!7292 (head!12639 s!2326)))))))

(assert (=> b!6111137 (= e!3726325 e!3726322)))

(declare-fun b!6111138 () Bool)

(assert (=> b!6111138 (= e!3726327 (matchR!8242 (derivativeStep!4780 (derivativeStep!4780 r!7292 (head!12639 s!2326)) (head!12639 (tail!11724 s!2326))) (tail!11724 (tail!11724 s!2326))))))

(declare-fun b!6111139 () Bool)

(assert (=> b!6111139 (= e!3726322 e!3726326)))

(declare-fun res!2534688 () Bool)

(assert (=> b!6111139 (=> (not res!2534688) (not e!3726326))))

(assert (=> b!6111139 (= res!2534688 (not lt!2330078))))

(declare-fun b!6111140 () Bool)

(assert (=> b!6111140 (= e!3726328 (= (head!12639 (tail!11724 s!2326)) (c!1097651 (derivativeStep!4780 r!7292 (head!12639 s!2326)))))))

(assert (= (and d!1915151 c!1097946) b!6111130))

(assert (= (and d!1915151 (not c!1097946)) b!6111138))

(assert (= (and d!1915151 c!1097944) b!6111135))

(assert (= (and d!1915151 (not c!1097944)) b!6111132))

(assert (= (and b!6111132 c!1097945) b!6111127))

(assert (= (and b!6111132 (not c!1097945)) b!6111137))

(assert (= (and b!6111137 (not res!2534694)) b!6111133))

(assert (= (and b!6111133 res!2534690) b!6111128))

(assert (= (and b!6111128 res!2534693) b!6111131))

(assert (= (and b!6111131 res!2534689) b!6111140))

(assert (= (and b!6111133 (not res!2534691)) b!6111139))

(assert (= (and b!6111139 res!2534688) b!6111129))

(assert (= (and b!6111129 (not res!2534695)) b!6111136))

(assert (= (and b!6111136 (not res!2534692)) b!6111134))

(assert (= (or b!6111135 b!6111128 b!6111129) bm!505684))

(assert (=> b!6111134 m!6959826))

(declare-fun m!6960394 () Bool)

(assert (=> b!6111134 m!6960394))

(assert (=> b!6111140 m!6959826))

(assert (=> b!6111140 m!6960394))

(assert (=> b!6111131 m!6959826))

(declare-fun m!6960396 () Bool)

(assert (=> b!6111131 m!6960396))

(assert (=> b!6111131 m!6960396))

(declare-fun m!6960398 () Bool)

(assert (=> b!6111131 m!6960398))

(assert (=> bm!505684 m!6959826))

(assert (=> bm!505684 m!6959828))

(assert (=> b!6111130 m!6959832))

(declare-fun m!6960400 () Bool)

(assert (=> b!6111130 m!6960400))

(assert (=> b!6111136 m!6959826))

(assert (=> b!6111136 m!6960396))

(assert (=> b!6111136 m!6960396))

(assert (=> b!6111136 m!6960398))

(assert (=> b!6111138 m!6959826))

(assert (=> b!6111138 m!6960394))

(assert (=> b!6111138 m!6959832))

(assert (=> b!6111138 m!6960394))

(declare-fun m!6960402 () Bool)

(assert (=> b!6111138 m!6960402))

(assert (=> b!6111138 m!6959826))

(assert (=> b!6111138 m!6960396))

(assert (=> b!6111138 m!6960402))

(assert (=> b!6111138 m!6960396))

(declare-fun m!6960404 () Bool)

(assert (=> b!6111138 m!6960404))

(assert (=> d!1915151 m!6959826))

(assert (=> d!1915151 m!6959828))

(assert (=> d!1915151 m!6959832))

(declare-fun m!6960406 () Bool)

(assert (=> d!1915151 m!6960406))

(assert (=> b!6110595 d!1915151))

(declare-fun d!1915153 () Bool)

(declare-fun lt!2330084 () Regex!16059)

(assert (=> d!1915153 (validRegex!7795 lt!2330084)))

(declare-fun e!3726375 () Regex!16059)

(assert (=> d!1915153 (= lt!2330084 e!3726375)))

(declare-fun c!1097991 () Bool)

(assert (=> d!1915153 (= c!1097991 (or ((_ is EmptyExpr!16059) r!7292) ((_ is EmptyLang!16059) r!7292)))))

(assert (=> d!1915153 (validRegex!7795 r!7292)))

(assert (=> d!1915153 (= (derivativeStep!4780 r!7292 (head!12639 s!2326)) lt!2330084)))

(declare-fun bm!505723 () Bool)

(declare-fun call!505728 () Regex!16059)

(declare-fun c!1097988 () Bool)

(declare-fun c!1097989 () Bool)

(assert (=> bm!505723 (= call!505728 (derivativeStep!4780 (ite c!1097989 (regTwo!32631 r!7292) (ite c!1097988 (regTwo!32630 r!7292) (regOne!32630 r!7292))) (head!12639 s!2326)))))

(declare-fun b!6111224 () Bool)

(declare-fun e!3726373 () Regex!16059)

(assert (=> b!6111224 (= e!3726373 (ite (= (head!12639 s!2326) (c!1097651 r!7292)) EmptyExpr!16059 EmptyLang!16059))))

(declare-fun b!6111225 () Bool)

(declare-fun e!3726374 () Regex!16059)

(declare-fun call!505731 () Regex!16059)

(assert (=> b!6111225 (= e!3726374 (Union!16059 (Concat!24904 call!505731 (regTwo!32630 r!7292)) EmptyLang!16059))))

(declare-fun call!505729 () Regex!16059)

(declare-fun b!6111226 () Bool)

(assert (=> b!6111226 (= e!3726374 (Union!16059 (Concat!24904 call!505729 (regTwo!32630 r!7292)) call!505731))))

(declare-fun c!1097990 () Bool)

(declare-fun call!505730 () Regex!16059)

(declare-fun bm!505724 () Bool)

(assert (=> bm!505724 (= call!505730 (derivativeStep!4780 (ite c!1097989 (regOne!32631 r!7292) (ite c!1097990 (reg!16388 r!7292) (regOne!32630 r!7292))) (head!12639 s!2326)))))

(declare-fun b!6111227 () Bool)

(assert (=> b!6111227 (= e!3726375 EmptyLang!16059)))

(declare-fun bm!505725 () Bool)

(assert (=> bm!505725 (= call!505731 call!505728)))

(declare-fun b!6111228 () Bool)

(assert (=> b!6111228 (= c!1097988 (nullable!6052 (regOne!32630 r!7292)))))

(declare-fun e!3726372 () Regex!16059)

(assert (=> b!6111228 (= e!3726372 e!3726374)))

(declare-fun b!6111229 () Bool)

(assert (=> b!6111229 (= e!3726372 (Concat!24904 call!505729 r!7292))))

(declare-fun b!6111230 () Bool)

(declare-fun e!3726376 () Regex!16059)

(assert (=> b!6111230 (= e!3726376 e!3726372)))

(assert (=> b!6111230 (= c!1097990 ((_ is Star!16059) r!7292))))

(declare-fun bm!505726 () Bool)

(assert (=> bm!505726 (= call!505729 call!505730)))

(declare-fun b!6111231 () Bool)

(assert (=> b!6111231 (= e!3726376 (Union!16059 call!505730 call!505728))))

(declare-fun b!6111232 () Bool)

(assert (=> b!6111232 (= c!1097989 ((_ is Union!16059) r!7292))))

(assert (=> b!6111232 (= e!3726373 e!3726376)))

(declare-fun b!6111233 () Bool)

(assert (=> b!6111233 (= e!3726375 e!3726373)))

(declare-fun c!1097987 () Bool)

(assert (=> b!6111233 (= c!1097987 ((_ is ElementMatch!16059) r!7292))))

(assert (= (and d!1915153 c!1097991) b!6111227))

(assert (= (and d!1915153 (not c!1097991)) b!6111233))

(assert (= (and b!6111233 c!1097987) b!6111224))

(assert (= (and b!6111233 (not c!1097987)) b!6111232))

(assert (= (and b!6111232 c!1097989) b!6111231))

(assert (= (and b!6111232 (not c!1097989)) b!6111230))

(assert (= (and b!6111230 c!1097990) b!6111229))

(assert (= (and b!6111230 (not c!1097990)) b!6111228))

(assert (= (and b!6111228 c!1097988) b!6111226))

(assert (= (and b!6111228 (not c!1097988)) b!6111225))

(assert (= (or b!6111226 b!6111225) bm!505725))

(assert (= (or b!6111229 b!6111226) bm!505726))

(assert (= (or b!6111231 bm!505725) bm!505723))

(assert (= (or b!6111231 bm!505726) bm!505724))

(declare-fun m!6960448 () Bool)

(assert (=> d!1915153 m!6960448))

(assert (=> d!1915153 m!6959438))

(assert (=> bm!505723 m!6959824))

(declare-fun m!6960450 () Bool)

(assert (=> bm!505723 m!6960450))

(assert (=> bm!505724 m!6959824))

(declare-fun m!6960452 () Bool)

(assert (=> bm!505724 m!6960452))

(declare-fun m!6960454 () Bool)

(assert (=> b!6111228 m!6960454))

(assert (=> b!6110595 d!1915153))

(assert (=> b!6110595 d!1915143))

(assert (=> b!6110595 d!1915115))

(assert (=> d!1914787 d!1914799))

(assert (=> d!1914787 d!1914789))

(declare-fun e!3726403 () Bool)

(declare-fun d!1915167 () Bool)

(assert (=> d!1915167 (= (matchZipper!2071 ((_ map or) lt!2329951 lt!2329959) (t!377933 s!2326)) e!3726403)))

(declare-fun res!2534701 () Bool)

(assert (=> d!1915167 (=> res!2534701 e!3726403)))

(assert (=> d!1915167 (= res!2534701 (matchZipper!2071 lt!2329951 (t!377933 s!2326)))))

(assert (=> d!1915167 true))

(declare-fun _$48!1569 () Unit!157391)

(assert (=> d!1915167 (= (choose!45407 lt!2329951 lt!2329959 (t!377933 s!2326)) _$48!1569)))

(declare-fun b!6111308 () Bool)

(assert (=> b!6111308 (= e!3726403 (matchZipper!2071 lt!2329959 (t!377933 s!2326)))))

(assert (= (and d!1915167 (not res!2534701)) b!6111308))

(assert (=> d!1915167 m!6959434))

(assert (=> d!1915167 m!6959432))

(assert (=> b!6111308 m!6959456))

(assert (=> d!1914787 d!1915167))

(declare-fun d!1915169 () Bool)

(assert (=> d!1915169 (= (isConcat!999 lt!2330034) ((_ is Concat!24904) lt!2330034))))

(assert (=> b!6110510 d!1915169))

(declare-fun b!6111329 () Bool)

(declare-fun e!3726411 () (InoxSet Context!10886))

(declare-fun call!505732 () (InoxSet Context!10886))

(assert (=> b!6111329 (= e!3726411 call!505732)))

(declare-fun b!6111330 () Bool)

(declare-fun e!3726409 () (InoxSet Context!10886))

(assert (=> b!6111330 (= e!3726409 e!3726411)))

(declare-fun c!1097992 () Bool)

(assert (=> b!6111330 (= c!1097992 ((_ is Cons!64352) (exprs!5943 (Context!10887 (t!377931 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))))))))

(declare-fun bm!505727 () Bool)

(assert (=> bm!505727 (= call!505732 (derivationStepZipperDown!1307 (h!70800 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))))) (Context!10887 (t!377931 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))))))))) (h!70802 s!2326)))))

(declare-fun b!6111331 () Bool)

(assert (=> b!6111331 (= e!3726411 ((as const (Array Context!10886 Bool)) false))))

(declare-fun b!6111333 () Bool)

(declare-fun e!3726410 () Bool)

(assert (=> b!6111333 (= e!3726410 (nullable!6052 (h!70800 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))))))))))))

(declare-fun d!1915171 () Bool)

(declare-fun c!1097993 () Bool)

(assert (=> d!1915171 (= c!1097993 e!3726410)))

(declare-fun res!2534702 () Bool)

(assert (=> d!1915171 (=> (not res!2534702) (not e!3726410))))

(assert (=> d!1915171 (= res!2534702 ((_ is Cons!64352) (exprs!5943 (Context!10887 (t!377931 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))))))))

(assert (=> d!1915171 (= (derivationStepZipperUp!1233 (Context!10887 (t!377931 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) (h!70802 s!2326)) e!3726409)))

(declare-fun b!6111332 () Bool)

(assert (=> b!6111332 (= e!3726409 ((_ map or) call!505732 (derivationStepZipperUp!1233 (Context!10887 (t!377931 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343))))))))))) (h!70802 s!2326))))))

(assert (= (and d!1915171 res!2534702) b!6111333))

(assert (= (and d!1915171 c!1097993) b!6111332))

(assert (= (and d!1915171 (not c!1097993)) b!6111330))

(assert (= (and b!6111330 c!1097992) b!6111329))

(assert (= (and b!6111330 (not c!1097992)) b!6111331))

(assert (= (or b!6111332 b!6111329) bm!505727))

(declare-fun m!6960460 () Bool)

(assert (=> bm!505727 m!6960460))

(declare-fun m!6960462 () Bool)

(assert (=> b!6111333 m!6960462))

(declare-fun m!6960464 () Bool)

(assert (=> b!6111332 m!6960464))

(assert (=> b!6110471 d!1915171))

(declare-fun d!1915173 () Bool)

(declare-fun c!1097996 () Bool)

(assert (=> d!1915173 (= c!1097996 ((_ is Nil!64353) lt!2330046))))

(declare-fun e!3726420 () (InoxSet Context!10886))

(assert (=> d!1915173 (= (content!11943 lt!2330046) e!3726420)))

(declare-fun b!6111362 () Bool)

(assert (=> b!6111362 (= e!3726420 ((as const (Array Context!10886 Bool)) false))))

(declare-fun b!6111363 () Bool)

(assert (=> b!6111363 (= e!3726420 ((_ map or) (store ((as const (Array Context!10886 Bool)) false) (h!70801 lt!2330046) true) (content!11943 (t!377932 lt!2330046))))))

(assert (= (and d!1915173 c!1097996) b!6111362))

(assert (= (and d!1915173 (not c!1097996)) b!6111363))

(declare-fun m!6960476 () Bool)

(assert (=> b!6111363 m!6960476))

(declare-fun m!6960478 () Bool)

(assert (=> b!6111363 m!6960478))

(assert (=> b!6110629 d!1915173))

(declare-fun bm!505728 () Bool)

(declare-fun call!505733 () Bool)

(declare-fun c!1097997 () Bool)

(assert (=> bm!505728 (= call!505733 (validRegex!7795 (ite c!1097997 (regTwo!32631 lt!2329986) (regTwo!32630 lt!2329986))))))

(declare-fun b!6111364 () Bool)

(declare-fun e!3726424 () Bool)

(declare-fun e!3726425 () Bool)

(assert (=> b!6111364 (= e!3726424 e!3726425)))

(declare-fun res!2534704 () Bool)

(assert (=> b!6111364 (=> (not res!2534704) (not e!3726425))))

(declare-fun call!505735 () Bool)

(assert (=> b!6111364 (= res!2534704 call!505735)))

(declare-fun bm!505729 () Bool)

(declare-fun c!1097998 () Bool)

(declare-fun call!505734 () Bool)

(assert (=> bm!505729 (= call!505734 (validRegex!7795 (ite c!1097998 (reg!16388 lt!2329986) (ite c!1097997 (regOne!32631 lt!2329986) (regOne!32630 lt!2329986)))))))

(declare-fun b!6111365 () Bool)

(declare-fun e!3726422 () Bool)

(assert (=> b!6111365 (= e!3726422 call!505734)))

(declare-fun bm!505730 () Bool)

(assert (=> bm!505730 (= call!505735 call!505734)))

(declare-fun b!6111366 () Bool)

(declare-fun e!3726423 () Bool)

(assert (=> b!6111366 (= e!3726423 call!505733)))

(declare-fun b!6111367 () Bool)

(declare-fun res!2534705 () Bool)

(assert (=> b!6111367 (=> (not res!2534705) (not e!3726423))))

(assert (=> b!6111367 (= res!2534705 call!505735)))

(declare-fun e!3726426 () Bool)

(assert (=> b!6111367 (= e!3726426 e!3726423)))

(declare-fun b!6111368 () Bool)

(declare-fun e!3726427 () Bool)

(assert (=> b!6111368 (= e!3726427 e!3726422)))

(declare-fun res!2534703 () Bool)

(assert (=> b!6111368 (= res!2534703 (not (nullable!6052 (reg!16388 lt!2329986))))))

(assert (=> b!6111368 (=> (not res!2534703) (not e!3726422))))

(declare-fun b!6111369 () Bool)

(assert (=> b!6111369 (= e!3726427 e!3726426)))

(assert (=> b!6111369 (= c!1097997 ((_ is Union!16059) lt!2329986))))

(declare-fun d!1915187 () Bool)

(declare-fun res!2534707 () Bool)

(declare-fun e!3726421 () Bool)

(assert (=> d!1915187 (=> res!2534707 e!3726421)))

(assert (=> d!1915187 (= res!2534707 ((_ is ElementMatch!16059) lt!2329986))))

(assert (=> d!1915187 (= (validRegex!7795 lt!2329986) e!3726421)))

(declare-fun b!6111370 () Bool)

(assert (=> b!6111370 (= e!3726421 e!3726427)))

(assert (=> b!6111370 (= c!1097998 ((_ is Star!16059) lt!2329986))))

(declare-fun b!6111371 () Bool)

(declare-fun res!2534706 () Bool)

(assert (=> b!6111371 (=> res!2534706 e!3726424)))

(assert (=> b!6111371 (= res!2534706 (not ((_ is Concat!24904) lt!2329986)))))

(assert (=> b!6111371 (= e!3726426 e!3726424)))

(declare-fun b!6111372 () Bool)

(assert (=> b!6111372 (= e!3726425 call!505733)))

(assert (= (and d!1915187 (not res!2534707)) b!6111370))

(assert (= (and b!6111370 c!1097998) b!6111368))

(assert (= (and b!6111370 (not c!1097998)) b!6111369))

(assert (= (and b!6111368 res!2534703) b!6111365))

(assert (= (and b!6111369 c!1097997) b!6111367))

(assert (= (and b!6111369 (not c!1097997)) b!6111371))

(assert (= (and b!6111367 res!2534705) b!6111366))

(assert (= (and b!6111371 (not res!2534706)) b!6111364))

(assert (= (and b!6111364 res!2534704) b!6111372))

(assert (= (or b!6111366 b!6111372) bm!505728))

(assert (= (or b!6111367 b!6111364) bm!505730))

(assert (= (or b!6111365 bm!505730) bm!505729))

(declare-fun m!6960480 () Bool)

(assert (=> bm!505728 m!6960480))

(declare-fun m!6960482 () Bool)

(assert (=> bm!505729 m!6960482))

(declare-fun m!6960484 () Bool)

(assert (=> b!6111368 m!6960484))

(assert (=> d!1914801 d!1915187))

(declare-fun d!1915189 () Bool)

(declare-fun res!2534708 () Bool)

(declare-fun e!3726428 () Bool)

(assert (=> d!1915189 (=> res!2534708 e!3726428)))

(assert (=> d!1915189 (= res!2534708 ((_ is Nil!64352) (unfocusZipperList!1480 zl!343)))))

(assert (=> d!1915189 (= (forall!15180 (unfocusZipperList!1480 zl!343) lambda!332832) e!3726428)))

(declare-fun b!6111373 () Bool)

(declare-fun e!3726429 () Bool)

(assert (=> b!6111373 (= e!3726428 e!3726429)))

(declare-fun res!2534709 () Bool)

(assert (=> b!6111373 (=> (not res!2534709) (not e!3726429))))

(assert (=> b!6111373 (= res!2534709 (dynLambda!25342 lambda!332832 (h!70800 (unfocusZipperList!1480 zl!343))))))

(declare-fun b!6111374 () Bool)

(assert (=> b!6111374 (= e!3726429 (forall!15180 (t!377931 (unfocusZipperList!1480 zl!343)) lambda!332832))))

(assert (= (and d!1915189 (not res!2534708)) b!6111373))

(assert (= (and b!6111373 res!2534709) b!6111374))

(declare-fun b_lambda!232771 () Bool)

(assert (=> (not b_lambda!232771) (not b!6111373)))

(declare-fun m!6960486 () Bool)

(assert (=> b!6111373 m!6960486))

(declare-fun m!6960488 () Bool)

(assert (=> b!6111374 m!6960488))

(assert (=> d!1914801 d!1915189))

(declare-fun d!1915191 () Bool)

(assert (=> d!1915191 (= (head!12640 (unfocusZipperList!1480 zl!343)) (h!70800 (unfocusZipperList!1480 zl!343)))))

(assert (=> b!6110135 d!1915191))

(declare-fun d!1915193 () Bool)

(assert (=> d!1915193 (= (nullable!6052 r!7292) (nullableFct!2016 r!7292))))

(declare-fun bs!1516953 () Bool)

(assert (= bs!1516953 d!1915193))

(declare-fun m!6960490 () Bool)

(assert (=> bs!1516953 m!6960490))

(assert (=> b!6110587 d!1915193))

(declare-fun d!1915195 () Bool)

(assert (=> d!1915195 (= (isDefined!12653 lt!2330012) (not (isEmpty!36282 lt!2330012)))))

(declare-fun bs!1516954 () Bool)

(assert (= bs!1516954 d!1915195))

(declare-fun m!6960492 () Bool)

(assert (=> bs!1516954 m!6960492))

(assert (=> b!6110265 d!1915195))

(declare-fun b!6111389 () Bool)

(declare-fun e!3726445 () Bool)

(declare-fun e!3726442 () Bool)

(assert (=> b!6111389 (= e!3726445 e!3726442)))

(declare-fun res!2534724 () Bool)

(declare-fun call!505740 () Bool)

(assert (=> b!6111389 (= res!2534724 call!505740)))

(assert (=> b!6111389 (=> res!2534724 e!3726442)))

(declare-fun b!6111390 () Bool)

(declare-fun e!3726444 () Bool)

(declare-fun e!3726446 () Bool)

(assert (=> b!6111390 (= e!3726444 e!3726446)))

(declare-fun res!2534721 () Bool)

(assert (=> b!6111390 (=> res!2534721 e!3726446)))

(assert (=> b!6111390 (= res!2534721 ((_ is Star!16059) (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun b!6111391 () Bool)

(declare-fun e!3726447 () Bool)

(assert (=> b!6111391 (= e!3726445 e!3726447)))

(declare-fun res!2534723 () Bool)

(assert (=> b!6111391 (= res!2534723 call!505740)))

(assert (=> b!6111391 (=> (not res!2534723) (not e!3726447))))

(declare-fun bm!505735 () Bool)

(declare-fun c!1098001 () Bool)

(assert (=> bm!505735 (= call!505740 (nullable!6052 (ite c!1098001 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))))))))

(declare-fun d!1915197 () Bool)

(declare-fun res!2534722 () Bool)

(declare-fun e!3726443 () Bool)

(assert (=> d!1915197 (=> res!2534722 e!3726443)))

(assert (=> d!1915197 (= res!2534722 ((_ is EmptyExpr!16059) (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(assert (=> d!1915197 (= (nullableFct!2016 (h!70800 (exprs!5943 (h!70801 zl!343)))) e!3726443)))

(declare-fun b!6111392 () Bool)

(declare-fun call!505741 () Bool)

(assert (=> b!6111392 (= e!3726442 call!505741)))

(declare-fun b!6111393 () Bool)

(assert (=> b!6111393 (= e!3726443 e!3726444)))

(declare-fun res!2534720 () Bool)

(assert (=> b!6111393 (=> (not res!2534720) (not e!3726444))))

(assert (=> b!6111393 (= res!2534720 (and (not ((_ is EmptyLang!16059) (h!70800 (exprs!5943 (h!70801 zl!343))))) (not ((_ is ElementMatch!16059) (h!70800 (exprs!5943 (h!70801 zl!343)))))))))

(declare-fun b!6111394 () Bool)

(assert (=> b!6111394 (= e!3726447 call!505741)))

(declare-fun bm!505736 () Bool)

(assert (=> bm!505736 (= call!505741 (nullable!6052 (ite c!1098001 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))))))))

(declare-fun b!6111395 () Bool)

(assert (=> b!6111395 (= e!3726446 e!3726445)))

(assert (=> b!6111395 (= c!1098001 ((_ is Union!16059) (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(assert (= (and d!1915197 (not res!2534722)) b!6111393))

(assert (= (and b!6111393 res!2534720) b!6111390))

(assert (= (and b!6111390 (not res!2534721)) b!6111395))

(assert (= (and b!6111395 c!1098001) b!6111389))

(assert (= (and b!6111395 (not c!1098001)) b!6111391))

(assert (= (and b!6111389 (not res!2534724)) b!6111392))

(assert (= (and b!6111391 res!2534723) b!6111394))

(assert (= (or b!6111392 b!6111394) bm!505736))

(assert (= (or b!6111389 b!6111391) bm!505735))

(declare-fun m!6960494 () Bool)

(assert (=> bm!505735 m!6960494))

(declare-fun m!6960496 () Bool)

(assert (=> bm!505736 m!6960496))

(assert (=> d!1914865 d!1915197))

(declare-fun d!1915199 () Bool)

(declare-fun lambda!332920 () Int)

(declare-fun exists!2404 ((InoxSet Context!10886) Int) Bool)

(assert (=> d!1915199 (= (nullableZipper!1840 lt!2329959) (exists!2404 lt!2329959 lambda!332920))))

(declare-fun bs!1516955 () Bool)

(assert (= bs!1516955 d!1915199))

(declare-fun m!6960498 () Bool)

(assert (=> bs!1516955 m!6960498))

(assert (=> b!6110625 d!1915199))

(declare-fun d!1915201 () Bool)

(assert (=> d!1915201 (= (isEmptyExpr!1476 lt!2330034) ((_ is EmptyExpr!16059) lt!2330034))))

(assert (=> b!6110506 d!1915201))

(declare-fun d!1915203 () Bool)

(declare-fun res!2534725 () Bool)

(declare-fun e!3726448 () Bool)

(assert (=> d!1915203 (=> res!2534725 e!3726448)))

(assert (=> d!1915203 (= res!2534725 ((_ is Nil!64352) (exprs!5943 setElem!41276)))))

(assert (=> d!1915203 (= (forall!15180 (exprs!5943 setElem!41276) lambda!332823) e!3726448)))

(declare-fun b!6111396 () Bool)

(declare-fun e!3726449 () Bool)

(assert (=> b!6111396 (= e!3726448 e!3726449)))

(declare-fun res!2534726 () Bool)

(assert (=> b!6111396 (=> (not res!2534726) (not e!3726449))))

(assert (=> b!6111396 (= res!2534726 (dynLambda!25342 lambda!332823 (h!70800 (exprs!5943 setElem!41276))))))

(declare-fun b!6111397 () Bool)

(assert (=> b!6111397 (= e!3726449 (forall!15180 (t!377931 (exprs!5943 setElem!41276)) lambda!332823))))

(assert (= (and d!1915203 (not res!2534725)) b!6111396))

(assert (= (and b!6111396 res!2534726) b!6111397))

(declare-fun b_lambda!232773 () Bool)

(assert (=> (not b_lambda!232773) (not b!6111396)))

(declare-fun m!6960500 () Bool)

(assert (=> b!6111396 m!6960500))

(declare-fun m!6960502 () Bool)

(assert (=> b!6111397 m!6960502))

(assert (=> d!1914783 d!1915203))

(declare-fun d!1915205 () Bool)

(assert (=> d!1915205 true))

(assert (=> d!1915205 true))

(declare-fun res!2534729 () Bool)

(assert (=> d!1915205 (= (choose!45410 lambda!332815) res!2534729)))

(assert (=> d!1914837 d!1915205))

(declare-fun d!1915207 () Bool)

(assert (=> d!1915207 (= (isEmpty!36278 (t!377931 (unfocusZipperList!1480 zl!343))) ((_ is Nil!64352) (t!377931 (unfocusZipperList!1480 zl!343))))))

(assert (=> b!6110130 d!1915207))

(declare-fun d!1915209 () Bool)

(declare-fun e!3726450 () Bool)

(assert (=> d!1915209 e!3726450))

(declare-fun res!2534730 () Bool)

(assert (=> d!1915209 (=> (not res!2534730) (not e!3726450))))

(declare-fun lt!2330085 () List!64478)

(assert (=> d!1915209 (= res!2534730 (= (content!11944 lt!2330085) ((_ map or) (content!11944 (_1!36341 (get!22191 lt!2330012))) (content!11944 (_2!36341 (get!22191 lt!2330012))))))))

(declare-fun e!3726451 () List!64478)

(assert (=> d!1915209 (= lt!2330085 e!3726451)))

(declare-fun c!1098004 () Bool)

(assert (=> d!1915209 (= c!1098004 ((_ is Nil!64354) (_1!36341 (get!22191 lt!2330012))))))

(assert (=> d!1915209 (= (++!14146 (_1!36341 (get!22191 lt!2330012)) (_2!36341 (get!22191 lt!2330012))) lt!2330085)))

(declare-fun b!6111399 () Bool)

(assert (=> b!6111399 (= e!3726451 (Cons!64354 (h!70802 (_1!36341 (get!22191 lt!2330012))) (++!14146 (t!377933 (_1!36341 (get!22191 lt!2330012))) (_2!36341 (get!22191 lt!2330012)))))))

(declare-fun b!6111398 () Bool)

(assert (=> b!6111398 (= e!3726451 (_2!36341 (get!22191 lt!2330012)))))

(declare-fun b!6111400 () Bool)

(declare-fun res!2534731 () Bool)

(assert (=> b!6111400 (=> (not res!2534731) (not e!3726450))))

(assert (=> b!6111400 (= res!2534731 (= (size!40203 lt!2330085) (+ (size!40203 (_1!36341 (get!22191 lt!2330012))) (size!40203 (_2!36341 (get!22191 lt!2330012))))))))

(declare-fun b!6111401 () Bool)

(assert (=> b!6111401 (= e!3726450 (or (not (= (_2!36341 (get!22191 lt!2330012)) Nil!64354)) (= lt!2330085 (_1!36341 (get!22191 lt!2330012)))))))

(assert (= (and d!1915209 c!1098004) b!6111398))

(assert (= (and d!1915209 (not c!1098004)) b!6111399))

(assert (= (and d!1915209 res!2534730) b!6111400))

(assert (= (and b!6111400 res!2534731) b!6111401))

(declare-fun m!6960504 () Bool)

(assert (=> d!1915209 m!6960504))

(declare-fun m!6960506 () Bool)

(assert (=> d!1915209 m!6960506))

(declare-fun m!6960508 () Bool)

(assert (=> d!1915209 m!6960508))

(declare-fun m!6960510 () Bool)

(assert (=> b!6111399 m!6960510))

(declare-fun m!6960512 () Bool)

(assert (=> b!6111400 m!6960512))

(declare-fun m!6960514 () Bool)

(assert (=> b!6111400 m!6960514))

(declare-fun m!6960516 () Bool)

(assert (=> b!6111400 m!6960516))

(assert (=> b!6110260 d!1915209))

(assert (=> b!6110260 d!1915049))

(assert (=> bm!505601 d!1915055))

(declare-fun bs!1516956 () Bool)

(declare-fun d!1915211 () Bool)

(assert (= bs!1516956 (and d!1915211 d!1914877)))

(declare-fun lambda!332921 () Int)

(assert (=> bs!1516956 (= lambda!332921 lambda!332867)))

(declare-fun bs!1516957 () Bool)

(assert (= bs!1516957 (and d!1915211 d!1914783)))

(assert (=> bs!1516957 (= lambda!332921 lambda!332823)))

(declare-fun bs!1516958 () Bool)

(assert (= bs!1516958 (and d!1915211 d!1915053)))

(assert (=> bs!1516958 (= lambda!332921 lambda!332899)))

(declare-fun bs!1516959 () Bool)

(assert (= bs!1516959 (and d!1915211 d!1914801)))

(assert (=> bs!1516959 (= lambda!332921 lambda!332832)))

(declare-fun bs!1516960 () Bool)

(assert (= bs!1516960 (and d!1915211 d!1914813)))

(assert (=> bs!1516960 (= lambda!332921 lambda!332835)))

(declare-fun bs!1516961 () Bool)

(assert (= bs!1516961 (and d!1915211 d!1914887)))

(assert (=> bs!1516961 (= lambda!332921 lambda!332874)))

(declare-fun bs!1516962 () Bool)

(assert (= bs!1516962 (and d!1915211 d!1915109)))

(assert (=> bs!1516962 (= lambda!332921 lambda!332907)))

(declare-fun bs!1516963 () Bool)

(assert (= bs!1516963 (and d!1915211 d!1914897)))

(assert (=> bs!1516963 (= lambda!332921 lambda!332875)))

(assert (=> d!1915211 (= (inv!83394 setElem!41282) (forall!15180 (exprs!5943 setElem!41282) lambda!332921))))

(declare-fun bs!1516964 () Bool)

(assert (= bs!1516964 d!1915211))

(declare-fun m!6960518 () Bool)

(assert (=> bs!1516964 m!6960518))

(assert (=> setNonEmpty!41282 d!1915211))

(declare-fun d!1915213 () Bool)

(declare-fun res!2534732 () Bool)

(declare-fun e!3726452 () Bool)

(assert (=> d!1915213 (=> res!2534732 e!3726452)))

(assert (=> d!1915213 (= res!2534732 ((_ is Nil!64352) (exprs!5943 (h!70801 zl!343))))))

(assert (=> d!1915213 (= (forall!15180 (exprs!5943 (h!70801 zl!343)) lambda!332875) e!3726452)))

(declare-fun b!6111402 () Bool)

(declare-fun e!3726453 () Bool)

(assert (=> b!6111402 (= e!3726452 e!3726453)))

(declare-fun res!2534733 () Bool)

(assert (=> b!6111402 (=> (not res!2534733) (not e!3726453))))

(assert (=> b!6111402 (= res!2534733 (dynLambda!25342 lambda!332875 (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun b!6111403 () Bool)

(assert (=> b!6111403 (= e!3726453 (forall!15180 (t!377931 (exprs!5943 (h!70801 zl!343))) lambda!332875))))

(assert (= (and d!1915213 (not res!2534732)) b!6111402))

(assert (= (and b!6111402 res!2534733) b!6111403))

(declare-fun b_lambda!232775 () Bool)

(assert (=> (not b_lambda!232775) (not b!6111402)))

(declare-fun m!6960520 () Bool)

(assert (=> b!6111402 m!6960520))

(declare-fun m!6960522 () Bool)

(assert (=> b!6111403 m!6960522))

(assert (=> d!1914897 d!1915213))

(declare-fun d!1915215 () Bool)

(assert (=> d!1915215 (= (isEmpty!36278 (unfocusZipperList!1480 zl!343)) ((_ is Nil!64352) (unfocusZipperList!1480 zl!343)))))

(assert (=> b!6110132 d!1915215))

(declare-fun d!1915217 () Bool)

(declare-fun res!2534734 () Bool)

(declare-fun e!3726454 () Bool)

(assert (=> d!1915217 (=> res!2534734 e!3726454)))

(assert (=> d!1915217 (= res!2534734 ((_ is Nil!64352) lt!2329992))))

(assert (=> d!1915217 (= (forall!15180 lt!2329992 lambda!332835) e!3726454)))

(declare-fun b!6111404 () Bool)

(declare-fun e!3726455 () Bool)

(assert (=> b!6111404 (= e!3726454 e!3726455)))

(declare-fun res!2534735 () Bool)

(assert (=> b!6111404 (=> (not res!2534735) (not e!3726455))))

(assert (=> b!6111404 (= res!2534735 (dynLambda!25342 lambda!332835 (h!70800 lt!2329992)))))

(declare-fun b!6111405 () Bool)

(assert (=> b!6111405 (= e!3726455 (forall!15180 (t!377931 lt!2329992) lambda!332835))))

(assert (= (and d!1915217 (not res!2534734)) b!6111404))

(assert (= (and b!6111404 res!2534735) b!6111405))

(declare-fun b_lambda!232777 () Bool)

(assert (=> (not b_lambda!232777) (not b!6111404)))

(declare-fun m!6960524 () Bool)

(assert (=> b!6111404 m!6960524))

(declare-fun m!6960526 () Bool)

(assert (=> b!6111405 m!6960526))

(assert (=> d!1914813 d!1915217))

(assert (=> d!1914891 d!1915077))

(assert (=> d!1914789 d!1915077))

(declare-fun d!1915219 () Bool)

(declare-fun c!1098005 () Bool)

(assert (=> d!1915219 (= c!1098005 (isEmpty!36281 (tail!11724 (t!377933 s!2326))))))

(declare-fun e!3726456 () Bool)

(assert (=> d!1915219 (= (matchZipper!2071 (derivationStepZipper!2032 lt!2329951 (head!12639 (t!377933 s!2326))) (tail!11724 (t!377933 s!2326))) e!3726456)))

(declare-fun b!6111406 () Bool)

(assert (=> b!6111406 (= e!3726456 (nullableZipper!1840 (derivationStepZipper!2032 lt!2329951 (head!12639 (t!377933 s!2326)))))))

(declare-fun b!6111407 () Bool)

(assert (=> b!6111407 (= e!3726456 (matchZipper!2071 (derivationStepZipper!2032 (derivationStepZipper!2032 lt!2329951 (head!12639 (t!377933 s!2326))) (head!12639 (tail!11724 (t!377933 s!2326)))) (tail!11724 (tail!11724 (t!377933 s!2326)))))))

(assert (= (and d!1915219 c!1098005) b!6111406))

(assert (= (and d!1915219 (not c!1098005)) b!6111407))

(assert (=> d!1915219 m!6959556))

(assert (=> d!1915219 m!6960238))

(assert (=> b!6111406 m!6959554))

(declare-fun m!6960528 () Bool)

(assert (=> b!6111406 m!6960528))

(assert (=> b!6111407 m!6959556))

(assert (=> b!6111407 m!6960244))

(assert (=> b!6111407 m!6959554))

(assert (=> b!6111407 m!6960244))

(declare-fun m!6960530 () Bool)

(assert (=> b!6111407 m!6960530))

(assert (=> b!6111407 m!6959556))

(assert (=> b!6111407 m!6960248))

(assert (=> b!6111407 m!6960530))

(assert (=> b!6111407 m!6960248))

(declare-fun m!6960532 () Bool)

(assert (=> b!6111407 m!6960532))

(assert (=> b!6110062 d!1915219))

(declare-fun bs!1516965 () Bool)

(declare-fun d!1915221 () Bool)

(assert (= bs!1516965 (and d!1915221 b!6109974)))

(declare-fun lambda!332922 () Int)

(assert (=> bs!1516965 (= (= (head!12639 (t!377933 s!2326)) (h!70802 s!2326)) (= lambda!332922 lambda!332817))))

(declare-fun bs!1516966 () Bool)

(assert (= bs!1516966 (and d!1915221 d!1915085)))

(assert (=> bs!1516966 (= lambda!332922 lambda!332906)))

(assert (=> d!1915221 true))

(assert (=> d!1915221 (= (derivationStepZipper!2032 lt!2329951 (head!12639 (t!377933 s!2326))) (flatMap!1564 lt!2329951 lambda!332922))))

(declare-fun bs!1516967 () Bool)

(assert (= bs!1516967 d!1915221))

(declare-fun m!6960534 () Bool)

(assert (=> bs!1516967 m!6960534))

(assert (=> b!6110062 d!1915221))

(assert (=> b!6110062 d!1915089))

(assert (=> b!6110062 d!1915091))

(declare-fun d!1915223 () Bool)

(assert (=> d!1915223 true))

(assert (=> d!1915223 true))

(declare-fun res!2534736 () Bool)

(assert (=> d!1915223 (= (choose!45410 lambda!332816) res!2534736)))

(assert (=> d!1914839 d!1915223))

(assert (=> b!6110597 d!1915143))

(declare-fun d!1915225 () Bool)

(declare-fun res!2534741 () Bool)

(declare-fun e!3726461 () Bool)

(assert (=> d!1915225 (=> res!2534741 e!3726461)))

(assert (=> d!1915225 (= res!2534741 ((_ is Nil!64353) lt!2330046))))

(assert (=> d!1915225 (= (noDuplicate!1906 lt!2330046) e!3726461)))

(declare-fun b!6111412 () Bool)

(declare-fun e!3726462 () Bool)

(assert (=> b!6111412 (= e!3726461 e!3726462)))

(declare-fun res!2534742 () Bool)

(assert (=> b!6111412 (=> (not res!2534742) (not e!3726462))))

(declare-fun contains!20022 (List!64477 Context!10886) Bool)

(assert (=> b!6111412 (= res!2534742 (not (contains!20022 (t!377932 lt!2330046) (h!70801 lt!2330046))))))

(declare-fun b!6111413 () Bool)

(assert (=> b!6111413 (= e!3726462 (noDuplicate!1906 (t!377932 lt!2330046)))))

(assert (= (and d!1915225 (not res!2534741)) b!6111412))

(assert (= (and b!6111412 res!2534742) b!6111413))

(declare-fun m!6960536 () Bool)

(assert (=> b!6111412 m!6960536))

(declare-fun m!6960538 () Bool)

(assert (=> b!6111413 m!6960538))

(assert (=> d!1914895 d!1915225))

(declare-fun d!1915227 () Bool)

(declare-fun e!3726470 () Bool)

(assert (=> d!1915227 e!3726470))

(declare-fun res!2534748 () Bool)

(assert (=> d!1915227 (=> (not res!2534748) (not e!3726470))))

(declare-fun res!2534747 () List!64477)

(assert (=> d!1915227 (= res!2534748 (noDuplicate!1906 res!2534747))))

(declare-fun e!3726469 () Bool)

(assert (=> d!1915227 e!3726469))

(assert (=> d!1915227 (= (choose!45416 z!1189) res!2534747)))

(declare-fun b!6111421 () Bool)

(declare-fun e!3726471 () Bool)

(declare-fun tp!1706982 () Bool)

(assert (=> b!6111421 (= e!3726471 tp!1706982)))

(declare-fun tp!1706981 () Bool)

(declare-fun b!6111420 () Bool)

(assert (=> b!6111420 (= e!3726469 (and (inv!83394 (h!70801 res!2534747)) e!3726471 tp!1706981))))

(declare-fun b!6111422 () Bool)

(assert (=> b!6111422 (= e!3726470 (= (content!11943 res!2534747) z!1189))))

(assert (= b!6111420 b!6111421))

(assert (= (and d!1915227 ((_ is Cons!64353) res!2534747)) b!6111420))

(assert (= (and d!1915227 res!2534748) b!6111422))

(declare-fun m!6960540 () Bool)

(assert (=> d!1915227 m!6960540))

(declare-fun m!6960542 () Bool)

(assert (=> b!6111420 m!6960542))

(declare-fun m!6960544 () Bool)

(assert (=> b!6111422 m!6960544))

(assert (=> d!1914895 d!1915227))

(assert (=> d!1914821 d!1915195))

(declare-fun bm!505737 () Bool)

(declare-fun call!505742 () Bool)

(assert (=> bm!505737 (= call!505742 (isEmpty!36281 Nil!64354))))

(declare-fun b!6111423 () Bool)

(declare-fun e!3726475 () Bool)

(declare-fun lt!2330086 () Bool)

(assert (=> b!6111423 (= e!3726475 (not lt!2330086))))

(declare-fun b!6111424 () Bool)

(declare-fun res!2534754 () Bool)

(declare-fun e!3726478 () Bool)

(assert (=> b!6111424 (=> (not res!2534754) (not e!3726478))))

(assert (=> b!6111424 (= res!2534754 (not call!505742))))

(declare-fun b!6111425 () Bool)

(declare-fun e!3726476 () Bool)

(declare-fun e!3726473 () Bool)

(assert (=> b!6111425 (= e!3726476 e!3726473)))

(declare-fun res!2534756 () Bool)

(assert (=> b!6111425 (=> res!2534756 e!3726473)))

(assert (=> b!6111425 (= res!2534756 call!505742)))

(declare-fun b!6111426 () Bool)

(declare-fun e!3726477 () Bool)

(assert (=> b!6111426 (= e!3726477 (nullable!6052 (regOne!32630 r!7292)))))

(declare-fun b!6111427 () Bool)

(declare-fun res!2534750 () Bool)

(assert (=> b!6111427 (=> (not res!2534750) (not e!3726478))))

(assert (=> b!6111427 (= res!2534750 (isEmpty!36281 (tail!11724 Nil!64354)))))

(declare-fun b!6111428 () Bool)

(declare-fun e!3726474 () Bool)

(assert (=> b!6111428 (= e!3726474 e!3726475)))

(declare-fun c!1098007 () Bool)

(assert (=> b!6111428 (= c!1098007 ((_ is EmptyLang!16059) (regOne!32630 r!7292)))))

(declare-fun d!1915229 () Bool)

(assert (=> d!1915229 e!3726474))

(declare-fun c!1098006 () Bool)

(assert (=> d!1915229 (= c!1098006 ((_ is EmptyExpr!16059) (regOne!32630 r!7292)))))

(assert (=> d!1915229 (= lt!2330086 e!3726477)))

(declare-fun c!1098008 () Bool)

(assert (=> d!1915229 (= c!1098008 (isEmpty!36281 Nil!64354))))

(assert (=> d!1915229 (validRegex!7795 (regOne!32630 r!7292))))

(assert (=> d!1915229 (= (matchR!8242 (regOne!32630 r!7292) Nil!64354) lt!2330086)))

(declare-fun b!6111429 () Bool)

(declare-fun res!2534752 () Bool)

(declare-fun e!3726472 () Bool)

(assert (=> b!6111429 (=> res!2534752 e!3726472)))

(assert (=> b!6111429 (= res!2534752 e!3726478)))

(declare-fun res!2534751 () Bool)

(assert (=> b!6111429 (=> (not res!2534751) (not e!3726478))))

(assert (=> b!6111429 (= res!2534751 lt!2330086)))

(declare-fun b!6111430 () Bool)

(assert (=> b!6111430 (= e!3726473 (not (= (head!12639 Nil!64354) (c!1097651 (regOne!32630 r!7292)))))))

(declare-fun b!6111431 () Bool)

(assert (=> b!6111431 (= e!3726474 (= lt!2330086 call!505742))))

(declare-fun b!6111432 () Bool)

(declare-fun res!2534753 () Bool)

(assert (=> b!6111432 (=> res!2534753 e!3726473)))

(assert (=> b!6111432 (= res!2534753 (not (isEmpty!36281 (tail!11724 Nil!64354))))))

(declare-fun b!6111433 () Bool)

(declare-fun res!2534755 () Bool)

(assert (=> b!6111433 (=> res!2534755 e!3726472)))

(assert (=> b!6111433 (= res!2534755 (not ((_ is ElementMatch!16059) (regOne!32630 r!7292))))))

(assert (=> b!6111433 (= e!3726475 e!3726472)))

(declare-fun b!6111434 () Bool)

(assert (=> b!6111434 (= e!3726477 (matchR!8242 (derivativeStep!4780 (regOne!32630 r!7292) (head!12639 Nil!64354)) (tail!11724 Nil!64354)))))

(declare-fun b!6111435 () Bool)

(assert (=> b!6111435 (= e!3726472 e!3726476)))

(declare-fun res!2534749 () Bool)

(assert (=> b!6111435 (=> (not res!2534749) (not e!3726476))))

(assert (=> b!6111435 (= res!2534749 (not lt!2330086))))

(declare-fun b!6111436 () Bool)

(assert (=> b!6111436 (= e!3726478 (= (head!12639 Nil!64354) (c!1097651 (regOne!32630 r!7292))))))

(assert (= (and d!1915229 c!1098008) b!6111426))

(assert (= (and d!1915229 (not c!1098008)) b!6111434))

(assert (= (and d!1915229 c!1098006) b!6111431))

(assert (= (and d!1915229 (not c!1098006)) b!6111428))

(assert (= (and b!6111428 c!1098007) b!6111423))

(assert (= (and b!6111428 (not c!1098007)) b!6111433))

(assert (= (and b!6111433 (not res!2534755)) b!6111429))

(assert (= (and b!6111429 res!2534751) b!6111424))

(assert (= (and b!6111424 res!2534754) b!6111427))

(assert (= (and b!6111427 res!2534750) b!6111436))

(assert (= (and b!6111429 (not res!2534752)) b!6111435))

(assert (= (and b!6111435 res!2534749) b!6111425))

(assert (= (and b!6111425 (not res!2534756)) b!6111432))

(assert (= (and b!6111432 (not res!2534753)) b!6111430))

(assert (= (or b!6111431 b!6111424 b!6111425) bm!505737))

(declare-fun m!6960546 () Bool)

(assert (=> b!6111430 m!6960546))

(assert (=> b!6111436 m!6960546))

(declare-fun m!6960548 () Bool)

(assert (=> b!6111427 m!6960548))

(assert (=> b!6111427 m!6960548))

(declare-fun m!6960550 () Bool)

(assert (=> b!6111427 m!6960550))

(declare-fun m!6960552 () Bool)

(assert (=> bm!505737 m!6960552))

(assert (=> b!6111426 m!6960454))

(assert (=> b!6111432 m!6960548))

(assert (=> b!6111432 m!6960548))

(assert (=> b!6111432 m!6960550))

(assert (=> b!6111434 m!6960546))

(assert (=> b!6111434 m!6960546))

(declare-fun m!6960554 () Bool)

(assert (=> b!6111434 m!6960554))

(assert (=> b!6111434 m!6960548))

(assert (=> b!6111434 m!6960554))

(assert (=> b!6111434 m!6960548))

(declare-fun m!6960556 () Bool)

(assert (=> b!6111434 m!6960556))

(assert (=> d!1915229 m!6960552))

(assert (=> d!1915229 m!6959706))

(assert (=> d!1914821 d!1915229))

(assert (=> d!1914821 d!1915027))

(assert (=> bs!1516792 d!1914873))

(declare-fun bs!1516968 () Bool)

(declare-fun d!1915231 () Bool)

(assert (= bs!1516968 (and d!1915231 d!1915199)))

(declare-fun lambda!332923 () Int)

(assert (=> bs!1516968 (= lambda!332923 lambda!332920)))

(assert (=> d!1915231 (= (nullableZipper!1840 ((_ map or) lt!2329951 lt!2329959)) (exists!2404 ((_ map or) lt!2329951 lt!2329959) lambda!332923))))

(declare-fun bs!1516969 () Bool)

(assert (= bs!1516969 d!1915231))

(declare-fun m!6960558 () Bool)

(assert (=> bs!1516969 m!6960558))

(assert (=> b!6110063 d!1915231))

(assert (=> b!6110169 d!1914877))

(declare-fun bs!1516970 () Bool)

(declare-fun d!1915233 () Bool)

(assert (= bs!1516970 (and d!1915233 d!1914877)))

(declare-fun lambda!332924 () Int)

(assert (=> bs!1516970 (= lambda!332924 lambda!332867)))

(declare-fun bs!1516971 () Bool)

(assert (= bs!1516971 (and d!1915233 d!1914783)))

(assert (=> bs!1516971 (= lambda!332924 lambda!332823)))

(declare-fun bs!1516972 () Bool)

(assert (= bs!1516972 (and d!1915233 d!1915211)))

(assert (=> bs!1516972 (= lambda!332924 lambda!332921)))

(declare-fun bs!1516973 () Bool)

(assert (= bs!1516973 (and d!1915233 d!1915053)))

(assert (=> bs!1516973 (= lambda!332924 lambda!332899)))

(declare-fun bs!1516974 () Bool)

(assert (= bs!1516974 (and d!1915233 d!1914801)))

(assert (=> bs!1516974 (= lambda!332924 lambda!332832)))

(declare-fun bs!1516975 () Bool)

(assert (= bs!1516975 (and d!1915233 d!1914813)))

(assert (=> bs!1516975 (= lambda!332924 lambda!332835)))

(declare-fun bs!1516976 () Bool)

(assert (= bs!1516976 (and d!1915233 d!1914887)))

(assert (=> bs!1516976 (= lambda!332924 lambda!332874)))

(declare-fun bs!1516977 () Bool)

(assert (= bs!1516977 (and d!1915233 d!1915109)))

(assert (=> bs!1516977 (= lambda!332924 lambda!332907)))

(declare-fun bs!1516978 () Bool)

(assert (= bs!1516978 (and d!1915233 d!1914897)))

(assert (=> bs!1516978 (= lambda!332924 lambda!332875)))

(declare-fun lt!2330087 () List!64476)

(assert (=> d!1915233 (forall!15180 lt!2330087 lambda!332924)))

(declare-fun e!3726479 () List!64476)

(assert (=> d!1915233 (= lt!2330087 e!3726479)))

(declare-fun c!1098009 () Bool)

(assert (=> d!1915233 (= c!1098009 ((_ is Cons!64353) (t!377932 zl!343)))))

(assert (=> d!1915233 (= (unfocusZipperList!1480 (t!377932 zl!343)) lt!2330087)))

(declare-fun b!6111437 () Bool)

(assert (=> b!6111437 (= e!3726479 (Cons!64352 (generalisedConcat!1656 (exprs!5943 (h!70801 (t!377932 zl!343)))) (unfocusZipperList!1480 (t!377932 (t!377932 zl!343)))))))

(declare-fun b!6111438 () Bool)

(assert (=> b!6111438 (= e!3726479 Nil!64352)))

(assert (= (and d!1915233 c!1098009) b!6111437))

(assert (= (and d!1915233 (not c!1098009)) b!6111438))

(declare-fun m!6960560 () Bool)

(assert (=> d!1915233 m!6960560))

(declare-fun m!6960562 () Bool)

(assert (=> b!6111437 m!6960562))

(declare-fun m!6960564 () Bool)

(assert (=> b!6111437 m!6960564))

(assert (=> b!6110169 d!1915233))

(assert (=> b!6110041 d!1914891))

(declare-fun b!6111439 () Bool)

(declare-fun e!3726482 () (InoxSet Context!10886))

(declare-fun call!505743 () (InoxSet Context!10886))

(assert (=> b!6111439 (= e!3726482 call!505743)))

(declare-fun b!6111440 () Bool)

(declare-fun e!3726480 () (InoxSet Context!10886))

(assert (=> b!6111440 (= e!3726480 e!3726482)))

(declare-fun c!1098010 () Bool)

(assert (=> b!6111440 (= c!1098010 ((_ is Cons!64352) (exprs!5943 (Context!10887 (t!377931 (exprs!5943 lt!2329957))))))))

(declare-fun bm!505738 () Bool)

(assert (=> bm!505738 (= call!505743 (derivationStepZipperDown!1307 (h!70800 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 lt!2329957))))) (Context!10887 (t!377931 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 lt!2329957)))))) (h!70802 s!2326)))))

(declare-fun b!6111441 () Bool)

(assert (=> b!6111441 (= e!3726482 ((as const (Array Context!10886 Bool)) false))))

(declare-fun b!6111443 () Bool)

(declare-fun e!3726481 () Bool)

(assert (=> b!6111443 (= e!3726481 (nullable!6052 (h!70800 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 lt!2329957)))))))))

(declare-fun d!1915235 () Bool)

(declare-fun c!1098011 () Bool)

(assert (=> d!1915235 (= c!1098011 e!3726481)))

(declare-fun res!2534757 () Bool)

(assert (=> d!1915235 (=> (not res!2534757) (not e!3726481))))

(assert (=> d!1915235 (= res!2534757 ((_ is Cons!64352) (exprs!5943 (Context!10887 (t!377931 (exprs!5943 lt!2329957))))))))

(assert (=> d!1915235 (= (derivationStepZipperUp!1233 (Context!10887 (t!377931 (exprs!5943 lt!2329957))) (h!70802 s!2326)) e!3726480)))

(declare-fun b!6111442 () Bool)

(assert (=> b!6111442 (= e!3726480 ((_ map or) call!505743 (derivationStepZipperUp!1233 (Context!10887 (t!377931 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 lt!2329957)))))) (h!70802 s!2326))))))

(assert (= (and d!1915235 res!2534757) b!6111443))

(assert (= (and d!1915235 c!1098011) b!6111442))

(assert (= (and d!1915235 (not c!1098011)) b!6111440))

(assert (= (and b!6111440 c!1098010) b!6111439))

(assert (= (and b!6111440 (not c!1098010)) b!6111441))

(assert (= (or b!6111442 b!6111439) bm!505738))

(declare-fun m!6960566 () Bool)

(assert (=> bm!505738 m!6960566))

(declare-fun m!6960568 () Bool)

(assert (=> b!6111443 m!6960568))

(declare-fun m!6960570 () Bool)

(assert (=> b!6111442 m!6960570))

(assert (=> b!6110476 d!1915235))

(declare-fun b!6111444 () Bool)

(declare-fun e!3726485 () (InoxSet Context!10886))

(declare-fun call!505744 () (InoxSet Context!10886))

(assert (=> b!6111444 (= e!3726485 call!505744)))

(declare-fun b!6111445 () Bool)

(declare-fun e!3726483 () (InoxSet Context!10886))

(assert (=> b!6111445 (= e!3726483 e!3726485)))

(declare-fun c!1098012 () Bool)

(assert (=> b!6111445 (= c!1098012 ((_ is Cons!64352) (exprs!5943 (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343)))))))))

(declare-fun bm!505739 () Bool)

(assert (=> bm!505739 (= call!505744 (derivationStepZipperDown!1307 (h!70800 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343)))))) (Context!10887 (t!377931 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343))))))) (h!70802 s!2326)))))

(declare-fun b!6111446 () Bool)

(assert (=> b!6111446 (= e!3726485 ((as const (Array Context!10886 Bool)) false))))

(declare-fun b!6111448 () Bool)

(declare-fun e!3726484 () Bool)

(assert (=> b!6111448 (= e!3726484 (nullable!6052 (h!70800 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343))))))))))

(declare-fun d!1915237 () Bool)

(declare-fun c!1098013 () Bool)

(assert (=> d!1915237 (= c!1098013 e!3726484)))

(declare-fun res!2534758 () Bool)

(assert (=> d!1915237 (=> (not res!2534758) (not e!3726484))))

(assert (=> d!1915237 (= res!2534758 ((_ is Cons!64352) (exprs!5943 (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343)))))))))

(assert (=> d!1915237 (= (derivationStepZipperUp!1233 (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343)))) (h!70802 s!2326)) e!3726483)))

(declare-fun b!6111447 () Bool)

(assert (=> b!6111447 (= e!3726483 ((_ map or) call!505744 (derivationStepZipperUp!1233 (Context!10887 (t!377931 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343))))))) (h!70802 s!2326))))))

(assert (= (and d!1915237 res!2534758) b!6111448))

(assert (= (and d!1915237 c!1098013) b!6111447))

(assert (= (and d!1915237 (not c!1098013)) b!6111445))

(assert (= (and b!6111445 c!1098012) b!6111444))

(assert (= (and b!6111445 (not c!1098012)) b!6111446))

(assert (= (or b!6111447 b!6111444) bm!505739))

(declare-fun m!6960572 () Bool)

(assert (=> bm!505739 m!6960572))

(declare-fun m!6960574 () Bool)

(assert (=> b!6111448 m!6960574))

(declare-fun m!6960576 () Bool)

(assert (=> b!6111447 m!6960576))

(assert (=> b!6110481 d!1915237))

(declare-fun d!1915239 () Bool)

(assert (=> d!1915239 (= (nullable!6052 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343))))) (nullableFct!2016 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343))))))))

(declare-fun bs!1516979 () Bool)

(assert (= bs!1516979 d!1915239))

(declare-fun m!6960578 () Bool)

(assert (=> bs!1516979 m!6960578))

(assert (=> b!6110455 d!1915239))

(declare-fun bs!1516980 () Bool)

(declare-fun d!1915241 () Bool)

(assert (= bs!1516980 (and d!1915241 d!1915199)))

(declare-fun lambda!332925 () Int)

(assert (=> bs!1516980 (= lambda!332925 lambda!332920)))

(declare-fun bs!1516981 () Bool)

(assert (= bs!1516981 (and d!1915241 d!1915231)))

(assert (=> bs!1516981 (= lambda!332925 lambda!332923)))

(assert (=> d!1915241 (= (nullableZipper!1840 lt!2329951) (exists!2404 lt!2329951 lambda!332925))))

(declare-fun bs!1516982 () Bool)

(assert (= bs!1516982 d!1915241))

(declare-fun m!6960580 () Bool)

(assert (=> bs!1516982 m!6960580))

(assert (=> b!6110061 d!1915241))

(declare-fun d!1915243 () Bool)

(assert (=> d!1915243 (= (nullable!6052 (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))) (nullableFct!2016 (h!70800 (exprs!5943 (Context!10887 (Cons!64352 (h!70800 (exprs!5943 (h!70801 zl!343))) (t!377931 (exprs!5943 (h!70801 zl!343)))))))))))

(declare-fun bs!1516983 () Bool)

(assert (= bs!1516983 d!1915243))

(declare-fun m!6960582 () Bool)

(assert (=> bs!1516983 m!6960582))

(assert (=> b!6110472 d!1915243))

(declare-fun bs!1516984 () Bool)

(declare-fun d!1915245 () Bool)

(assert (= bs!1516984 (and d!1915245 d!1914877)))

(declare-fun lambda!332926 () Int)

(assert (=> bs!1516984 (= lambda!332926 lambda!332867)))

(declare-fun bs!1516985 () Bool)

(assert (= bs!1516985 (and d!1915245 d!1914783)))

(assert (=> bs!1516985 (= lambda!332926 lambda!332823)))

(declare-fun bs!1516986 () Bool)

(assert (= bs!1516986 (and d!1915245 d!1915233)))

(assert (=> bs!1516986 (= lambda!332926 lambda!332924)))

(declare-fun bs!1516987 () Bool)

(assert (= bs!1516987 (and d!1915245 d!1915211)))

(assert (=> bs!1516987 (= lambda!332926 lambda!332921)))

(declare-fun bs!1516988 () Bool)

(assert (= bs!1516988 (and d!1915245 d!1915053)))

(assert (=> bs!1516988 (= lambda!332926 lambda!332899)))

(declare-fun bs!1516989 () Bool)

(assert (= bs!1516989 (and d!1915245 d!1914801)))

(assert (=> bs!1516989 (= lambda!332926 lambda!332832)))

(declare-fun bs!1516990 () Bool)

(assert (= bs!1516990 (and d!1915245 d!1914813)))

(assert (=> bs!1516990 (= lambda!332926 lambda!332835)))

(declare-fun bs!1516991 () Bool)

(assert (= bs!1516991 (and d!1915245 d!1914887)))

(assert (=> bs!1516991 (= lambda!332926 lambda!332874)))

(declare-fun bs!1516992 () Bool)

(assert (= bs!1516992 (and d!1915245 d!1915109)))

(assert (=> bs!1516992 (= lambda!332926 lambda!332907)))

(declare-fun bs!1516993 () Bool)

(assert (= bs!1516993 (and d!1915245 d!1914897)))

(assert (=> bs!1516993 (= lambda!332926 lambda!332875)))

(declare-fun e!3726487 () Bool)

(assert (=> d!1915245 e!3726487))

(declare-fun res!2534760 () Bool)

(assert (=> d!1915245 (=> (not res!2534760) (not e!3726487))))

(declare-fun lt!2330088 () Regex!16059)

(assert (=> d!1915245 (= res!2534760 (validRegex!7795 lt!2330088))))

(declare-fun e!3726486 () Regex!16059)

(assert (=> d!1915245 (= lt!2330088 e!3726486)))

(declare-fun c!1098014 () Bool)

(declare-fun e!3726490 () Bool)

(assert (=> d!1915245 (= c!1098014 e!3726490)))

(declare-fun res!2534759 () Bool)

(assert (=> d!1915245 (=> (not res!2534759) (not e!3726490))))

(assert (=> d!1915245 (= res!2534759 ((_ is Cons!64352) (t!377931 (exprs!5943 (h!70801 zl!343)))))))

(assert (=> d!1915245 (forall!15180 (t!377931 (exprs!5943 (h!70801 zl!343))) lambda!332926)))

(assert (=> d!1915245 (= (generalisedConcat!1656 (t!377931 (exprs!5943 (h!70801 zl!343)))) lt!2330088)))

(declare-fun b!6111449 () Bool)

(declare-fun e!3726488 () Regex!16059)

(assert (=> b!6111449 (= e!3726488 EmptyExpr!16059)))

(declare-fun b!6111450 () Bool)

(assert (=> b!6111450 (= e!3726486 (h!70800 (t!377931 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun b!6111451 () Bool)

(declare-fun e!3726491 () Bool)

(assert (=> b!6111451 (= e!3726491 (= lt!2330088 (head!12640 (t!377931 (exprs!5943 (h!70801 zl!343))))))))

(declare-fun b!6111452 () Bool)

(declare-fun e!3726489 () Bool)

(assert (=> b!6111452 (= e!3726489 (isEmptyExpr!1476 lt!2330088))))

(declare-fun b!6111453 () Bool)

(assert (=> b!6111453 (= e!3726490 (isEmpty!36278 (t!377931 (t!377931 (exprs!5943 (h!70801 zl!343))))))))

(declare-fun b!6111454 () Bool)

(assert (=> b!6111454 (= e!3726487 e!3726489)))

(declare-fun c!1098015 () Bool)

(assert (=> b!6111454 (= c!1098015 (isEmpty!36278 (t!377931 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun b!6111455 () Bool)

(assert (=> b!6111455 (= e!3726486 e!3726488)))

(declare-fun c!1098016 () Bool)

(assert (=> b!6111455 (= c!1098016 ((_ is Cons!64352) (t!377931 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun b!6111456 () Bool)

(assert (=> b!6111456 (= e!3726491 (isConcat!999 lt!2330088))))

(declare-fun b!6111457 () Bool)

(assert (=> b!6111457 (= e!3726488 (Concat!24904 (h!70800 (t!377931 (exprs!5943 (h!70801 zl!343)))) (generalisedConcat!1656 (t!377931 (t!377931 (exprs!5943 (h!70801 zl!343)))))))))

(declare-fun b!6111458 () Bool)

(assert (=> b!6111458 (= e!3726489 e!3726491)))

(declare-fun c!1098017 () Bool)

(assert (=> b!6111458 (= c!1098017 (isEmpty!36278 (tail!11725 (t!377931 (exprs!5943 (h!70801 zl!343))))))))

(assert (= (and d!1915245 res!2534759) b!6111453))

(assert (= (and d!1915245 c!1098014) b!6111450))

(assert (= (and d!1915245 (not c!1098014)) b!6111455))

(assert (= (and b!6111455 c!1098016) b!6111457))

(assert (= (and b!6111455 (not c!1098016)) b!6111449))

(assert (= (and d!1915245 res!2534760) b!6111454))

(assert (= (and b!6111454 c!1098015) b!6111452))

(assert (= (and b!6111454 (not c!1098015)) b!6111458))

(assert (= (and b!6111458 c!1098017) b!6111451))

(assert (= (and b!6111458 (not c!1098017)) b!6111456))

(declare-fun m!6960584 () Bool)

(assert (=> b!6111452 m!6960584))

(declare-fun m!6960586 () Bool)

(assert (=> b!6111457 m!6960586))

(declare-fun m!6960588 () Bool)

(assert (=> b!6111456 m!6960588))

(declare-fun m!6960590 () Bool)

(assert (=> b!6111453 m!6960590))

(declare-fun m!6960592 () Bool)

(assert (=> b!6111458 m!6960592))

(assert (=> b!6111458 m!6960592))

(declare-fun m!6960594 () Bool)

(assert (=> b!6111458 m!6960594))

(declare-fun m!6960596 () Bool)

(assert (=> d!1915245 m!6960596))

(declare-fun m!6960598 () Bool)

(assert (=> d!1915245 m!6960598))

(assert (=> b!6111454 m!6959480))

(declare-fun m!6960600 () Bool)

(assert (=> b!6111451 m!6960600))

(assert (=> b!6110511 d!1915245))

(declare-fun c!1098018 () Bool)

(declare-fun bm!505740 () Bool)

(declare-fun call!505745 () Bool)

(assert (=> bm!505740 (= call!505745 (validRegex!7795 (ite c!1098018 (regTwo!32631 (ite c!1097830 (reg!16388 r!7292) (ite c!1097829 (regOne!32631 r!7292) (regOne!32630 r!7292)))) (regTwo!32630 (ite c!1097830 (reg!16388 r!7292) (ite c!1097829 (regOne!32631 r!7292) (regOne!32630 r!7292)))))))))

(declare-fun b!6111459 () Bool)

(declare-fun e!3726495 () Bool)

(declare-fun e!3726496 () Bool)

(assert (=> b!6111459 (= e!3726495 e!3726496)))

(declare-fun res!2534762 () Bool)

(assert (=> b!6111459 (=> (not res!2534762) (not e!3726496))))

(declare-fun call!505747 () Bool)

(assert (=> b!6111459 (= res!2534762 call!505747)))

(declare-fun bm!505741 () Bool)

(declare-fun c!1098019 () Bool)

(declare-fun call!505746 () Bool)

(assert (=> bm!505741 (= call!505746 (validRegex!7795 (ite c!1098019 (reg!16388 (ite c!1097830 (reg!16388 r!7292) (ite c!1097829 (regOne!32631 r!7292) (regOne!32630 r!7292)))) (ite c!1098018 (regOne!32631 (ite c!1097830 (reg!16388 r!7292) (ite c!1097829 (regOne!32631 r!7292) (regOne!32630 r!7292)))) (regOne!32630 (ite c!1097830 (reg!16388 r!7292) (ite c!1097829 (regOne!32631 r!7292) (regOne!32630 r!7292))))))))))

(declare-fun b!6111460 () Bool)

(declare-fun e!3726493 () Bool)

(assert (=> b!6111460 (= e!3726493 call!505746)))

(declare-fun bm!505742 () Bool)

(assert (=> bm!505742 (= call!505747 call!505746)))

(declare-fun b!6111461 () Bool)

(declare-fun e!3726494 () Bool)

(assert (=> b!6111461 (= e!3726494 call!505745)))

(declare-fun b!6111462 () Bool)

(declare-fun res!2534763 () Bool)

(assert (=> b!6111462 (=> (not res!2534763) (not e!3726494))))

(assert (=> b!6111462 (= res!2534763 call!505747)))

(declare-fun e!3726497 () Bool)

(assert (=> b!6111462 (= e!3726497 e!3726494)))

(declare-fun b!6111463 () Bool)

(declare-fun e!3726498 () Bool)

(assert (=> b!6111463 (= e!3726498 e!3726493)))

(declare-fun res!2534761 () Bool)

(assert (=> b!6111463 (= res!2534761 (not (nullable!6052 (reg!16388 (ite c!1097830 (reg!16388 r!7292) (ite c!1097829 (regOne!32631 r!7292) (regOne!32630 r!7292)))))))))

(assert (=> b!6111463 (=> (not res!2534761) (not e!3726493))))

(declare-fun b!6111464 () Bool)

(assert (=> b!6111464 (= e!3726498 e!3726497)))

(assert (=> b!6111464 (= c!1098018 ((_ is Union!16059) (ite c!1097830 (reg!16388 r!7292) (ite c!1097829 (regOne!32631 r!7292) (regOne!32630 r!7292)))))))

(declare-fun d!1915247 () Bool)

(declare-fun res!2534765 () Bool)

(declare-fun e!3726492 () Bool)

(assert (=> d!1915247 (=> res!2534765 e!3726492)))

(assert (=> d!1915247 (= res!2534765 ((_ is ElementMatch!16059) (ite c!1097830 (reg!16388 r!7292) (ite c!1097829 (regOne!32631 r!7292) (regOne!32630 r!7292)))))))

(assert (=> d!1915247 (= (validRegex!7795 (ite c!1097830 (reg!16388 r!7292) (ite c!1097829 (regOne!32631 r!7292) (regOne!32630 r!7292)))) e!3726492)))

(declare-fun b!6111465 () Bool)

(assert (=> b!6111465 (= e!3726492 e!3726498)))

(assert (=> b!6111465 (= c!1098019 ((_ is Star!16059) (ite c!1097830 (reg!16388 r!7292) (ite c!1097829 (regOne!32631 r!7292) (regOne!32630 r!7292)))))))

(declare-fun b!6111466 () Bool)

(declare-fun res!2534764 () Bool)

(assert (=> b!6111466 (=> res!2534764 e!3726495)))

(assert (=> b!6111466 (= res!2534764 (not ((_ is Concat!24904) (ite c!1097830 (reg!16388 r!7292) (ite c!1097829 (regOne!32631 r!7292) (regOne!32630 r!7292))))))))

(assert (=> b!6111466 (= e!3726497 e!3726495)))

(declare-fun b!6111467 () Bool)

(assert (=> b!6111467 (= e!3726496 call!505745)))

(assert (= (and d!1915247 (not res!2534765)) b!6111465))

(assert (= (and b!6111465 c!1098019) b!6111463))

(assert (= (and b!6111465 (not c!1098019)) b!6111464))

(assert (= (and b!6111463 res!2534761) b!6111460))

(assert (= (and b!6111464 c!1098018) b!6111462))

(assert (= (and b!6111464 (not c!1098018)) b!6111466))

(assert (= (and b!6111462 res!2534763) b!6111461))

(assert (= (and b!6111466 (not res!2534764)) b!6111459))

(assert (= (and b!6111459 res!2534762) b!6111467))

(assert (= (or b!6111461 b!6111467) bm!505740))

(assert (= (or b!6111462 b!6111459) bm!505742))

(assert (= (or b!6111460 bm!505742) bm!505741))

(declare-fun m!6960602 () Bool)

(assert (=> bm!505740 m!6960602))

(declare-fun m!6960604 () Bool)

(assert (=> bm!505741 m!6960604))

(declare-fun m!6960606 () Bool)

(assert (=> b!6111463 m!6960606))

(assert (=> bm!505612 d!1915247))

(assert (=> b!6110588 d!1915113))

(assert (=> b!6110588 d!1915115))

(declare-fun bs!1516994 () Bool)

(declare-fun b!6111476 () Bool)

(assert (= bs!1516994 (and b!6111476 b!6109969)))

(declare-fun lambda!332927 () Int)

(assert (=> bs!1516994 (not (= lambda!332927 lambda!332816))))

(assert (=> bs!1516994 (not (= lambda!332927 lambda!332815))))

(declare-fun bs!1516995 () Bool)

(assert (= bs!1516995 (and b!6111476 d!1914841)))

(assert (=> bs!1516995 (not (= lambda!332927 lambda!332856))))

(declare-fun bs!1516996 () Bool)

(assert (= bs!1516996 (and b!6111476 d!1914845)))

(assert (=> bs!1516996 (not (= lambda!332927 lambda!332864))))

(declare-fun bs!1516997 () Bool)

(assert (= bs!1516997 (and b!6111476 d!1915121)))

(assert (=> bs!1516997 (not (= lambda!332927 lambda!332914))))

(assert (=> bs!1516996 (not (= lambda!332927 lambda!332863))))

(declare-fun bs!1516998 () Bool)

(assert (= bs!1516998 (and b!6111476 b!6110553)))

(assert (=> bs!1516998 (= (and (= (reg!16388 (regOne!32631 r!7292)) (reg!16388 r!7292)) (= (regOne!32631 r!7292) r!7292)) (= lambda!332927 lambda!332872))))

(declare-fun bs!1516999 () Bool)

(assert (= bs!1516999 (and b!6111476 d!1915033)))

(assert (=> bs!1516999 (not (= lambda!332927 lambda!332897))))

(assert (=> bs!1516997 (not (= lambda!332927 lambda!332916))))

(declare-fun bs!1517000 () Bool)

(assert (= bs!1517000 (and b!6111476 b!6110549)))

(assert (=> bs!1517000 (not (= lambda!332927 lambda!332873))))

(assert (=> b!6111476 true))

(assert (=> b!6111476 true))

(declare-fun bs!1517001 () Bool)

(declare-fun b!6111472 () Bool)

(assert (= bs!1517001 (and b!6111472 b!6109969)))

(declare-fun lambda!332928 () Int)

(assert (=> bs!1517001 (= (and (= (regOne!32630 (regOne!32631 r!7292)) (regOne!32630 r!7292)) (= (regTwo!32630 (regOne!32631 r!7292)) (regTwo!32630 r!7292))) (= lambda!332928 lambda!332816))))

(assert (=> bs!1517001 (not (= lambda!332928 lambda!332815))))

(declare-fun bs!1517002 () Bool)

(assert (= bs!1517002 (and b!6111472 d!1914841)))

(assert (=> bs!1517002 (not (= lambda!332928 lambda!332856))))

(declare-fun bs!1517003 () Bool)

(assert (= bs!1517003 (and b!6111472 d!1914845)))

(assert (=> bs!1517003 (= (and (= (regOne!32630 (regOne!32631 r!7292)) (regOne!32630 r!7292)) (= (regTwo!32630 (regOne!32631 r!7292)) (regTwo!32630 r!7292))) (= lambda!332928 lambda!332864))))

(declare-fun bs!1517004 () Bool)

(assert (= bs!1517004 (and b!6111472 d!1915121)))

(assert (=> bs!1517004 (not (= lambda!332928 lambda!332914))))

(declare-fun bs!1517005 () Bool)

(assert (= bs!1517005 (and b!6111472 b!6110553)))

(assert (=> bs!1517005 (not (= lambda!332928 lambda!332872))))

(declare-fun bs!1517006 () Bool)

(assert (= bs!1517006 (and b!6111472 d!1915033)))

(assert (=> bs!1517006 (not (= lambda!332928 lambda!332897))))

(declare-fun bs!1517007 () Bool)

(assert (= bs!1517007 (and b!6111472 b!6111476)))

(assert (=> bs!1517007 (not (= lambda!332928 lambda!332927))))

(assert (=> bs!1517003 (not (= lambda!332928 lambda!332863))))

(assert (=> bs!1517004 (= (and (= (regOne!32630 (regOne!32631 r!7292)) (regOne!32630 r!7292)) (= (regTwo!32630 (regOne!32631 r!7292)) (regTwo!32630 r!7292))) (= lambda!332928 lambda!332916))))

(declare-fun bs!1517008 () Bool)

(assert (= bs!1517008 (and b!6111472 b!6110549)))

(assert (=> bs!1517008 (= (and (= (regOne!32630 (regOne!32631 r!7292)) (regOne!32630 r!7292)) (= (regTwo!32630 (regOne!32631 r!7292)) (regTwo!32630 r!7292))) (= lambda!332928 lambda!332873))))

(assert (=> b!6111472 true))

(assert (=> b!6111472 true))

(declare-fun bm!505743 () Bool)

(declare-fun call!505749 () Bool)

(declare-fun c!1098022 () Bool)

(assert (=> bm!505743 (= call!505749 (Exists!3129 (ite c!1098022 lambda!332927 lambda!332928)))))

(declare-fun b!6111468 () Bool)

(declare-fun e!3726499 () Bool)

(declare-fun call!505748 () Bool)

(assert (=> b!6111468 (= e!3726499 call!505748)))

(declare-fun b!6111469 () Bool)

(declare-fun e!3726501 () Bool)

(assert (=> b!6111469 (= e!3726501 (= s!2326 (Cons!64354 (c!1097651 (regOne!32631 r!7292)) Nil!64354)))))

(declare-fun bm!505744 () Bool)

(assert (=> bm!505744 (= call!505748 (isEmpty!36281 s!2326))))

(declare-fun b!6111470 () Bool)

(declare-fun c!1098020 () Bool)

(assert (=> b!6111470 (= c!1098020 ((_ is ElementMatch!16059) (regOne!32631 r!7292)))))

(declare-fun e!3726505 () Bool)

(assert (=> b!6111470 (= e!3726505 e!3726501)))

(declare-fun b!6111471 () Bool)

(declare-fun e!3726503 () Bool)

(declare-fun e!3726500 () Bool)

(assert (=> b!6111471 (= e!3726503 e!3726500)))

(assert (=> b!6111471 (= c!1098022 ((_ is Star!16059) (regOne!32631 r!7292)))))

(assert (=> b!6111472 (= e!3726500 call!505749)))

(declare-fun b!6111473 () Bool)

(declare-fun e!3726504 () Bool)

(assert (=> b!6111473 (= e!3726504 (matchRSpec!3160 (regTwo!32631 (regOne!32631 r!7292)) s!2326))))

(declare-fun b!6111474 () Bool)

(declare-fun c!1098021 () Bool)

(assert (=> b!6111474 (= c!1098021 ((_ is Union!16059) (regOne!32631 r!7292)))))

(assert (=> b!6111474 (= e!3726501 e!3726503)))

(declare-fun d!1915249 () Bool)

(declare-fun c!1098023 () Bool)

(assert (=> d!1915249 (= c!1098023 ((_ is EmptyExpr!16059) (regOne!32631 r!7292)))))

(assert (=> d!1915249 (= (matchRSpec!3160 (regOne!32631 r!7292) s!2326) e!3726499)))

(declare-fun b!6111475 () Bool)

(assert (=> b!6111475 (= e!3726503 e!3726504)))

(declare-fun res!2534767 () Bool)

(assert (=> b!6111475 (= res!2534767 (matchRSpec!3160 (regOne!32631 (regOne!32631 r!7292)) s!2326))))

(assert (=> b!6111475 (=> res!2534767 e!3726504)))

(declare-fun e!3726502 () Bool)

(assert (=> b!6111476 (= e!3726502 call!505749)))

(declare-fun b!6111477 () Bool)

(assert (=> b!6111477 (= e!3726499 e!3726505)))

(declare-fun res!2534766 () Bool)

(assert (=> b!6111477 (= res!2534766 (not ((_ is EmptyLang!16059) (regOne!32631 r!7292))))))

(assert (=> b!6111477 (=> (not res!2534766) (not e!3726505))))

(declare-fun b!6111478 () Bool)

(declare-fun res!2534768 () Bool)

(assert (=> b!6111478 (=> res!2534768 e!3726502)))

(assert (=> b!6111478 (= res!2534768 call!505748)))

(assert (=> b!6111478 (= e!3726500 e!3726502)))

(assert (= (and d!1915249 c!1098023) b!6111468))

(assert (= (and d!1915249 (not c!1098023)) b!6111477))

(assert (= (and b!6111477 res!2534766) b!6111470))

(assert (= (and b!6111470 c!1098020) b!6111469))

(assert (= (and b!6111470 (not c!1098020)) b!6111474))

(assert (= (and b!6111474 c!1098021) b!6111475))

(assert (= (and b!6111474 (not c!1098021)) b!6111471))

(assert (= (and b!6111475 (not res!2534767)) b!6111473))

(assert (= (and b!6111471 c!1098022) b!6111478))

(assert (= (and b!6111471 (not c!1098022)) b!6111472))

(assert (= (and b!6111478 (not res!2534768)) b!6111476))

(assert (= (or b!6111476 b!6111472) bm!505743))

(assert (= (or b!6111468 b!6111478) bm!505744))

(declare-fun m!6960608 () Bool)

(assert (=> bm!505743 m!6960608))

(assert (=> bm!505744 m!6959818))

(declare-fun m!6960610 () Bool)

(assert (=> b!6111473 m!6960610))

(declare-fun m!6960612 () Bool)

(assert (=> b!6111475 m!6960612))

(assert (=> b!6110552 d!1915249))

(declare-fun d!1915251 () Bool)

(declare-fun c!1098024 () Bool)

(assert (=> d!1915251 (= c!1098024 (isEmpty!36281 (tail!11724 (t!377933 s!2326))))))

(declare-fun e!3726506 () Bool)

(assert (=> d!1915251 (= (matchZipper!2071 (derivationStepZipper!2032 lt!2329959 (head!12639 (t!377933 s!2326))) (tail!11724 (t!377933 s!2326))) e!3726506)))

(declare-fun b!6111479 () Bool)

(assert (=> b!6111479 (= e!3726506 (nullableZipper!1840 (derivationStepZipper!2032 lt!2329959 (head!12639 (t!377933 s!2326)))))))

(declare-fun b!6111480 () Bool)

(assert (=> b!6111480 (= e!3726506 (matchZipper!2071 (derivationStepZipper!2032 (derivationStepZipper!2032 lt!2329959 (head!12639 (t!377933 s!2326))) (head!12639 (tail!11724 (t!377933 s!2326)))) (tail!11724 (tail!11724 (t!377933 s!2326)))))))

(assert (= (and d!1915251 c!1098024) b!6111479))

(assert (= (and d!1915251 (not c!1098024)) b!6111480))

(assert (=> d!1915251 m!6959556))

(assert (=> d!1915251 m!6960238))

(assert (=> b!6111479 m!6959848))

(declare-fun m!6960614 () Bool)

(assert (=> b!6111479 m!6960614))

(assert (=> b!6111480 m!6959556))

(assert (=> b!6111480 m!6960244))

(assert (=> b!6111480 m!6959848))

(assert (=> b!6111480 m!6960244))

(declare-fun m!6960616 () Bool)

(assert (=> b!6111480 m!6960616))

(assert (=> b!6111480 m!6959556))

(assert (=> b!6111480 m!6960248))

(assert (=> b!6111480 m!6960616))

(assert (=> b!6111480 m!6960248))

(declare-fun m!6960618 () Bool)

(assert (=> b!6111480 m!6960618))

(assert (=> b!6110626 d!1915251))

(declare-fun bs!1517009 () Bool)

(declare-fun d!1915253 () Bool)

(assert (= bs!1517009 (and d!1915253 b!6109974)))

(declare-fun lambda!332929 () Int)

(assert (=> bs!1517009 (= (= (head!12639 (t!377933 s!2326)) (h!70802 s!2326)) (= lambda!332929 lambda!332817))))

(declare-fun bs!1517010 () Bool)

(assert (= bs!1517010 (and d!1915253 d!1915085)))

(assert (=> bs!1517010 (= lambda!332929 lambda!332906)))

(declare-fun bs!1517011 () Bool)

(assert (= bs!1517011 (and d!1915253 d!1915221)))

(assert (=> bs!1517011 (= lambda!332929 lambda!332922)))

(assert (=> d!1915253 true))

(assert (=> d!1915253 (= (derivationStepZipper!2032 lt!2329959 (head!12639 (t!377933 s!2326))) (flatMap!1564 lt!2329959 lambda!332929))))

(declare-fun bs!1517012 () Bool)

(assert (= bs!1517012 d!1915253))

(declare-fun m!6960620 () Bool)

(assert (=> bs!1517012 m!6960620))

(assert (=> b!6110626 d!1915253))

(assert (=> b!6110626 d!1915089))

(assert (=> b!6110626 d!1915091))

(declare-fun d!1915255 () Bool)

(assert (=> d!1915255 (= (isEmptyLang!1486 lt!2329986) ((_ is EmptyLang!16059) lt!2329986))))

(assert (=> b!6110134 d!1915255))

(declare-fun bm!505745 () Bool)

(declare-fun call!505750 () Bool)

(assert (=> bm!505745 (= call!505750 (isEmpty!36281 s!2326))))

(declare-fun b!6111481 () Bool)

(declare-fun e!3726510 () Bool)

(declare-fun lt!2330089 () Bool)

(assert (=> b!6111481 (= e!3726510 (not lt!2330089))))

(declare-fun b!6111482 () Bool)

(declare-fun res!2534774 () Bool)

(declare-fun e!3726513 () Bool)

(assert (=> b!6111482 (=> (not res!2534774) (not e!3726513))))

(assert (=> b!6111482 (= res!2534774 (not call!505750))))

(declare-fun b!6111483 () Bool)

(declare-fun e!3726511 () Bool)

(declare-fun e!3726508 () Bool)

(assert (=> b!6111483 (= e!3726511 e!3726508)))

(declare-fun res!2534776 () Bool)

(assert (=> b!6111483 (=> res!2534776 e!3726508)))

(assert (=> b!6111483 (= res!2534776 call!505750)))

(declare-fun b!6111484 () Bool)

(declare-fun e!3726512 () Bool)

(assert (=> b!6111484 (= e!3726512 (nullable!6052 (regTwo!32630 r!7292)))))

(declare-fun b!6111485 () Bool)

(declare-fun res!2534770 () Bool)

(assert (=> b!6111485 (=> (not res!2534770) (not e!3726513))))

(assert (=> b!6111485 (= res!2534770 (isEmpty!36281 (tail!11724 s!2326)))))

(declare-fun b!6111486 () Bool)

(declare-fun e!3726509 () Bool)

(assert (=> b!6111486 (= e!3726509 e!3726510)))

(declare-fun c!1098026 () Bool)

(assert (=> b!6111486 (= c!1098026 ((_ is EmptyLang!16059) (regTwo!32630 r!7292)))))

(declare-fun d!1915257 () Bool)

(assert (=> d!1915257 e!3726509))

(declare-fun c!1098025 () Bool)

(assert (=> d!1915257 (= c!1098025 ((_ is EmptyExpr!16059) (regTwo!32630 r!7292)))))

(assert (=> d!1915257 (= lt!2330089 e!3726512)))

(declare-fun c!1098027 () Bool)

(assert (=> d!1915257 (= c!1098027 (isEmpty!36281 s!2326))))

(assert (=> d!1915257 (validRegex!7795 (regTwo!32630 r!7292))))

(assert (=> d!1915257 (= (matchR!8242 (regTwo!32630 r!7292) s!2326) lt!2330089)))

(declare-fun b!6111487 () Bool)

(declare-fun res!2534772 () Bool)

(declare-fun e!3726507 () Bool)

(assert (=> b!6111487 (=> res!2534772 e!3726507)))

(assert (=> b!6111487 (= res!2534772 e!3726513)))

(declare-fun res!2534771 () Bool)

(assert (=> b!6111487 (=> (not res!2534771) (not e!3726513))))

(assert (=> b!6111487 (= res!2534771 lt!2330089)))

(declare-fun b!6111488 () Bool)

(assert (=> b!6111488 (= e!3726508 (not (= (head!12639 s!2326) (c!1097651 (regTwo!32630 r!7292)))))))

(declare-fun b!6111489 () Bool)

(assert (=> b!6111489 (= e!3726509 (= lt!2330089 call!505750))))

(declare-fun b!6111490 () Bool)

(declare-fun res!2534773 () Bool)

(assert (=> b!6111490 (=> res!2534773 e!3726508)))

(assert (=> b!6111490 (= res!2534773 (not (isEmpty!36281 (tail!11724 s!2326))))))

(declare-fun b!6111491 () Bool)

(declare-fun res!2534775 () Bool)

(assert (=> b!6111491 (=> res!2534775 e!3726507)))

(assert (=> b!6111491 (= res!2534775 (not ((_ is ElementMatch!16059) (regTwo!32630 r!7292))))))

(assert (=> b!6111491 (= e!3726510 e!3726507)))

(declare-fun b!6111492 () Bool)

(assert (=> b!6111492 (= e!3726512 (matchR!8242 (derivativeStep!4780 (regTwo!32630 r!7292) (head!12639 s!2326)) (tail!11724 s!2326)))))

(declare-fun b!6111493 () Bool)

(assert (=> b!6111493 (= e!3726507 e!3726511)))

(declare-fun res!2534769 () Bool)

(assert (=> b!6111493 (=> (not res!2534769) (not e!3726511))))

(assert (=> b!6111493 (= res!2534769 (not lt!2330089))))

(declare-fun b!6111494 () Bool)

(assert (=> b!6111494 (= e!3726513 (= (head!12639 s!2326) (c!1097651 (regTwo!32630 r!7292))))))

(assert (= (and d!1915257 c!1098027) b!6111484))

(assert (= (and d!1915257 (not c!1098027)) b!6111492))

(assert (= (and d!1915257 c!1098025) b!6111489))

(assert (= (and d!1915257 (not c!1098025)) b!6111486))

(assert (= (and b!6111486 c!1098026) b!6111481))

(assert (= (and b!6111486 (not c!1098026)) b!6111491))

(assert (= (and b!6111491 (not res!2534775)) b!6111487))

(assert (= (and b!6111487 res!2534771) b!6111482))

(assert (= (and b!6111482 res!2534774) b!6111485))

(assert (= (and b!6111485 res!2534770) b!6111494))

(assert (= (and b!6111487 (not res!2534772)) b!6111493))

(assert (= (and b!6111493 res!2534769) b!6111483))

(assert (= (and b!6111483 (not res!2534776)) b!6111490))

(assert (= (and b!6111490 (not res!2534773)) b!6111488))

(assert (= (or b!6111489 b!6111482 b!6111483) bm!505745))

(assert (=> b!6111488 m!6959824))

(assert (=> b!6111494 m!6959824))

(assert (=> b!6111485 m!6959826))

(assert (=> b!6111485 m!6959826))

(assert (=> b!6111485 m!6959828))

(assert (=> bm!505745 m!6959818))

(assert (=> b!6111484 m!6960106))

(assert (=> b!6111490 m!6959826))

(assert (=> b!6111490 m!6959826))

(assert (=> b!6111490 m!6959828))

(assert (=> b!6111492 m!6959824))

(assert (=> b!6111492 m!6959824))

(declare-fun m!6960622 () Bool)

(assert (=> b!6111492 m!6960622))

(assert (=> b!6111492 m!6959826))

(assert (=> b!6111492 m!6960622))

(assert (=> b!6111492 m!6959826))

(declare-fun m!6960624 () Bool)

(assert (=> b!6111492 m!6960624))

(assert (=> d!1915257 m!6959818))

(assert (=> d!1915257 m!6960112))

(assert (=> b!6110264 d!1915257))

(declare-fun call!505751 () Bool)

(declare-fun c!1098028 () Bool)

(declare-fun bm!505746 () Bool)

(assert (=> bm!505746 (= call!505751 (validRegex!7795 (ite c!1098028 (regTwo!32631 (ite c!1097829 (regTwo!32631 r!7292) (regTwo!32630 r!7292))) (regTwo!32630 (ite c!1097829 (regTwo!32631 r!7292) (regTwo!32630 r!7292))))))))

(declare-fun b!6111495 () Bool)

(declare-fun e!3726517 () Bool)

(declare-fun e!3726518 () Bool)

(assert (=> b!6111495 (= e!3726517 e!3726518)))

(declare-fun res!2534778 () Bool)

(assert (=> b!6111495 (=> (not res!2534778) (not e!3726518))))

(declare-fun call!505753 () Bool)

(assert (=> b!6111495 (= res!2534778 call!505753)))

(declare-fun call!505752 () Bool)

(declare-fun c!1098029 () Bool)

(declare-fun bm!505747 () Bool)

(assert (=> bm!505747 (= call!505752 (validRegex!7795 (ite c!1098029 (reg!16388 (ite c!1097829 (regTwo!32631 r!7292) (regTwo!32630 r!7292))) (ite c!1098028 (regOne!32631 (ite c!1097829 (regTwo!32631 r!7292) (regTwo!32630 r!7292))) (regOne!32630 (ite c!1097829 (regTwo!32631 r!7292) (regTwo!32630 r!7292)))))))))

(declare-fun b!6111496 () Bool)

(declare-fun e!3726515 () Bool)

(assert (=> b!6111496 (= e!3726515 call!505752)))

(declare-fun bm!505748 () Bool)

(assert (=> bm!505748 (= call!505753 call!505752)))

(declare-fun b!6111497 () Bool)

(declare-fun e!3726516 () Bool)

(assert (=> b!6111497 (= e!3726516 call!505751)))

(declare-fun b!6111498 () Bool)

(declare-fun res!2534779 () Bool)

(assert (=> b!6111498 (=> (not res!2534779) (not e!3726516))))

(assert (=> b!6111498 (= res!2534779 call!505753)))

(declare-fun e!3726519 () Bool)

(assert (=> b!6111498 (= e!3726519 e!3726516)))

(declare-fun b!6111499 () Bool)

(declare-fun e!3726520 () Bool)

(assert (=> b!6111499 (= e!3726520 e!3726515)))

(declare-fun res!2534777 () Bool)

(assert (=> b!6111499 (= res!2534777 (not (nullable!6052 (reg!16388 (ite c!1097829 (regTwo!32631 r!7292) (regTwo!32630 r!7292))))))))

(assert (=> b!6111499 (=> (not res!2534777) (not e!3726515))))

(declare-fun b!6111500 () Bool)

(assert (=> b!6111500 (= e!3726520 e!3726519)))

(assert (=> b!6111500 (= c!1098028 ((_ is Union!16059) (ite c!1097829 (regTwo!32631 r!7292) (regTwo!32630 r!7292))))))

(declare-fun d!1915259 () Bool)

(declare-fun res!2534781 () Bool)

(declare-fun e!3726514 () Bool)

(assert (=> d!1915259 (=> res!2534781 e!3726514)))

(assert (=> d!1915259 (= res!2534781 ((_ is ElementMatch!16059) (ite c!1097829 (regTwo!32631 r!7292) (regTwo!32630 r!7292))))))

(assert (=> d!1915259 (= (validRegex!7795 (ite c!1097829 (regTwo!32631 r!7292) (regTwo!32630 r!7292))) e!3726514)))

(declare-fun b!6111501 () Bool)

(assert (=> b!6111501 (= e!3726514 e!3726520)))

(assert (=> b!6111501 (= c!1098029 ((_ is Star!16059) (ite c!1097829 (regTwo!32631 r!7292) (regTwo!32630 r!7292))))))

(declare-fun b!6111502 () Bool)

(declare-fun res!2534780 () Bool)

(assert (=> b!6111502 (=> res!2534780 e!3726517)))

(assert (=> b!6111502 (= res!2534780 (not ((_ is Concat!24904) (ite c!1097829 (regTwo!32631 r!7292) (regTwo!32630 r!7292)))))))

(assert (=> b!6111502 (= e!3726519 e!3726517)))

(declare-fun b!6111503 () Bool)

(assert (=> b!6111503 (= e!3726518 call!505751)))

(assert (= (and d!1915259 (not res!2534781)) b!6111501))

(assert (= (and b!6111501 c!1098029) b!6111499))

(assert (= (and b!6111501 (not c!1098029)) b!6111500))

(assert (= (and b!6111499 res!2534777) b!6111496))

(assert (= (and b!6111500 c!1098028) b!6111498))

(assert (= (and b!6111500 (not c!1098028)) b!6111502))

(assert (= (and b!6111498 res!2534779) b!6111497))

(assert (= (and b!6111502 (not res!2534780)) b!6111495))

(assert (= (and b!6111495 res!2534778) b!6111503))

(assert (= (or b!6111497 b!6111503) bm!505746))

(assert (= (or b!6111498 b!6111495) bm!505748))

(assert (= (or b!6111496 bm!505748) bm!505747))

(declare-fun m!6960626 () Bool)

(assert (=> bm!505746 m!6960626))

(declare-fun m!6960628 () Bool)

(assert (=> bm!505747 m!6960628))

(declare-fun m!6960630 () Bool)

(assert (=> b!6111499 m!6960630))

(assert (=> bm!505611 d!1915259))

(declare-fun bs!1517013 () Bool)

(declare-fun b!6111512 () Bool)

(assert (= bs!1517013 (and b!6111512 b!6109969)))

(declare-fun lambda!332930 () Int)

(assert (=> bs!1517013 (not (= lambda!332930 lambda!332816))))

(assert (=> bs!1517013 (not (= lambda!332930 lambda!332815))))

(declare-fun bs!1517014 () Bool)

(assert (= bs!1517014 (and b!6111512 d!1914841)))

(assert (=> bs!1517014 (not (= lambda!332930 lambda!332856))))

(declare-fun bs!1517015 () Bool)

(assert (= bs!1517015 (and b!6111512 d!1914845)))

(assert (=> bs!1517015 (not (= lambda!332930 lambda!332864))))

(declare-fun bs!1517016 () Bool)

(assert (= bs!1517016 (and b!6111512 d!1915121)))

(assert (=> bs!1517016 (not (= lambda!332930 lambda!332914))))

(declare-fun bs!1517017 () Bool)

(assert (= bs!1517017 (and b!6111512 b!6110553)))

(assert (=> bs!1517017 (= (and (= (reg!16388 (regTwo!32631 r!7292)) (reg!16388 r!7292)) (= (regTwo!32631 r!7292) r!7292)) (= lambda!332930 lambda!332872))))

(declare-fun bs!1517018 () Bool)

(assert (= bs!1517018 (and b!6111512 d!1915033)))

(assert (=> bs!1517018 (not (= lambda!332930 lambda!332897))))

(declare-fun bs!1517019 () Bool)

(assert (= bs!1517019 (and b!6111512 b!6111476)))

(assert (=> bs!1517019 (= (and (= (reg!16388 (regTwo!32631 r!7292)) (reg!16388 (regOne!32631 r!7292))) (= (regTwo!32631 r!7292) (regOne!32631 r!7292))) (= lambda!332930 lambda!332927))))

(assert (=> bs!1517015 (not (= lambda!332930 lambda!332863))))

(declare-fun bs!1517020 () Bool)

(assert (= bs!1517020 (and b!6111512 b!6111472)))

(assert (=> bs!1517020 (not (= lambda!332930 lambda!332928))))

(assert (=> bs!1517016 (not (= lambda!332930 lambda!332916))))

(declare-fun bs!1517021 () Bool)

(assert (= bs!1517021 (and b!6111512 b!6110549)))

(assert (=> bs!1517021 (not (= lambda!332930 lambda!332873))))

(assert (=> b!6111512 true))

(assert (=> b!6111512 true))

(declare-fun bs!1517022 () Bool)

(declare-fun b!6111508 () Bool)

(assert (= bs!1517022 (and b!6111508 b!6111512)))

(declare-fun lambda!332931 () Int)

(assert (=> bs!1517022 (not (= lambda!332931 lambda!332930))))

(declare-fun bs!1517023 () Bool)

(assert (= bs!1517023 (and b!6111508 b!6109969)))

(assert (=> bs!1517023 (= (and (= (regOne!32630 (regTwo!32631 r!7292)) (regOne!32630 r!7292)) (= (regTwo!32630 (regTwo!32631 r!7292)) (regTwo!32630 r!7292))) (= lambda!332931 lambda!332816))))

(assert (=> bs!1517023 (not (= lambda!332931 lambda!332815))))

(declare-fun bs!1517024 () Bool)

(assert (= bs!1517024 (and b!6111508 d!1914841)))

(assert (=> bs!1517024 (not (= lambda!332931 lambda!332856))))

(declare-fun bs!1517025 () Bool)

(assert (= bs!1517025 (and b!6111508 d!1914845)))

(assert (=> bs!1517025 (= (and (= (regOne!32630 (regTwo!32631 r!7292)) (regOne!32630 r!7292)) (= (regTwo!32630 (regTwo!32631 r!7292)) (regTwo!32630 r!7292))) (= lambda!332931 lambda!332864))))

(declare-fun bs!1517026 () Bool)

(assert (= bs!1517026 (and b!6111508 d!1915121)))

(assert (=> bs!1517026 (not (= lambda!332931 lambda!332914))))

(declare-fun bs!1517027 () Bool)

(assert (= bs!1517027 (and b!6111508 b!6110553)))

(assert (=> bs!1517027 (not (= lambda!332931 lambda!332872))))

(declare-fun bs!1517028 () Bool)

(assert (= bs!1517028 (and b!6111508 d!1915033)))

(assert (=> bs!1517028 (not (= lambda!332931 lambda!332897))))

(declare-fun bs!1517029 () Bool)

(assert (= bs!1517029 (and b!6111508 b!6111476)))

(assert (=> bs!1517029 (not (= lambda!332931 lambda!332927))))

(assert (=> bs!1517025 (not (= lambda!332931 lambda!332863))))

(declare-fun bs!1517030 () Bool)

(assert (= bs!1517030 (and b!6111508 b!6111472)))

(assert (=> bs!1517030 (= (and (= (regOne!32630 (regTwo!32631 r!7292)) (regOne!32630 (regOne!32631 r!7292))) (= (regTwo!32630 (regTwo!32631 r!7292)) (regTwo!32630 (regOne!32631 r!7292)))) (= lambda!332931 lambda!332928))))

(assert (=> bs!1517026 (= (and (= (regOne!32630 (regTwo!32631 r!7292)) (regOne!32630 r!7292)) (= (regTwo!32630 (regTwo!32631 r!7292)) (regTwo!32630 r!7292))) (= lambda!332931 lambda!332916))))

(declare-fun bs!1517031 () Bool)

(assert (= bs!1517031 (and b!6111508 b!6110549)))

(assert (=> bs!1517031 (= (and (= (regOne!32630 (regTwo!32631 r!7292)) (regOne!32630 r!7292)) (= (regTwo!32630 (regTwo!32631 r!7292)) (regTwo!32630 r!7292))) (= lambda!332931 lambda!332873))))

(assert (=> b!6111508 true))

(assert (=> b!6111508 true))

(declare-fun c!1098032 () Bool)

(declare-fun call!505755 () Bool)

(declare-fun bm!505749 () Bool)

(assert (=> bm!505749 (= call!505755 (Exists!3129 (ite c!1098032 lambda!332930 lambda!332931)))))

(declare-fun b!6111504 () Bool)

(declare-fun e!3726521 () Bool)

(declare-fun call!505754 () Bool)

(assert (=> b!6111504 (= e!3726521 call!505754)))

(declare-fun b!6111505 () Bool)

(declare-fun e!3726523 () Bool)

(assert (=> b!6111505 (= e!3726523 (= s!2326 (Cons!64354 (c!1097651 (regTwo!32631 r!7292)) Nil!64354)))))

(declare-fun bm!505750 () Bool)

(assert (=> bm!505750 (= call!505754 (isEmpty!36281 s!2326))))

(declare-fun b!6111506 () Bool)

(declare-fun c!1098030 () Bool)

(assert (=> b!6111506 (= c!1098030 ((_ is ElementMatch!16059) (regTwo!32631 r!7292)))))

(declare-fun e!3726527 () Bool)

(assert (=> b!6111506 (= e!3726527 e!3726523)))

(declare-fun b!6111507 () Bool)

(declare-fun e!3726525 () Bool)

(declare-fun e!3726522 () Bool)

(assert (=> b!6111507 (= e!3726525 e!3726522)))

(assert (=> b!6111507 (= c!1098032 ((_ is Star!16059) (regTwo!32631 r!7292)))))

(assert (=> b!6111508 (= e!3726522 call!505755)))

(declare-fun b!6111509 () Bool)

(declare-fun e!3726526 () Bool)

(assert (=> b!6111509 (= e!3726526 (matchRSpec!3160 (regTwo!32631 (regTwo!32631 r!7292)) s!2326))))

(declare-fun b!6111510 () Bool)

(declare-fun c!1098031 () Bool)

(assert (=> b!6111510 (= c!1098031 ((_ is Union!16059) (regTwo!32631 r!7292)))))

(assert (=> b!6111510 (= e!3726523 e!3726525)))

(declare-fun d!1915261 () Bool)

(declare-fun c!1098033 () Bool)

(assert (=> d!1915261 (= c!1098033 ((_ is EmptyExpr!16059) (regTwo!32631 r!7292)))))

(assert (=> d!1915261 (= (matchRSpec!3160 (regTwo!32631 r!7292) s!2326) e!3726521)))

(declare-fun b!6111511 () Bool)

(assert (=> b!6111511 (= e!3726525 e!3726526)))

(declare-fun res!2534783 () Bool)

(assert (=> b!6111511 (= res!2534783 (matchRSpec!3160 (regOne!32631 (regTwo!32631 r!7292)) s!2326))))

(assert (=> b!6111511 (=> res!2534783 e!3726526)))

(declare-fun e!3726524 () Bool)

(assert (=> b!6111512 (= e!3726524 call!505755)))

(declare-fun b!6111513 () Bool)

(assert (=> b!6111513 (= e!3726521 e!3726527)))

(declare-fun res!2534782 () Bool)

(assert (=> b!6111513 (= res!2534782 (not ((_ is EmptyLang!16059) (regTwo!32631 r!7292))))))

(assert (=> b!6111513 (=> (not res!2534782) (not e!3726527))))

(declare-fun b!6111514 () Bool)

(declare-fun res!2534784 () Bool)

(assert (=> b!6111514 (=> res!2534784 e!3726524)))

(assert (=> b!6111514 (= res!2534784 call!505754)))

(assert (=> b!6111514 (= e!3726522 e!3726524)))

(assert (= (and d!1915261 c!1098033) b!6111504))

(assert (= (and d!1915261 (not c!1098033)) b!6111513))

(assert (= (and b!6111513 res!2534782) b!6111506))

(assert (= (and b!6111506 c!1098030) b!6111505))

(assert (= (and b!6111506 (not c!1098030)) b!6111510))

(assert (= (and b!6111510 c!1098031) b!6111511))

(assert (= (and b!6111510 (not c!1098031)) b!6111507))

(assert (= (and b!6111511 (not res!2534783)) b!6111509))

(assert (= (and b!6111507 c!1098032) b!6111514))

(assert (= (and b!6111507 (not c!1098032)) b!6111508))

(assert (= (and b!6111514 (not res!2534784)) b!6111512))

(assert (= (or b!6111512 b!6111508) bm!505749))

(assert (= (or b!6111504 b!6111514) bm!505750))

(declare-fun m!6960632 () Bool)

(assert (=> bm!505749 m!6960632))

(assert (=> bm!505750 m!6959818))

(declare-fun m!6960634 () Bool)

(assert (=> b!6111509 m!6960634))

(declare-fun m!6960636 () Bool)

(assert (=> b!6111511 m!6960636))

(assert (=> b!6110550 d!1915261))

(declare-fun bm!505751 () Bool)

(declare-fun call!505756 () List!64476)

(declare-fun call!505758 () List!64476)

(assert (=> bm!505751 (= call!505756 call!505758)))

(declare-fun b!6111515 () Bool)

(declare-fun e!3726528 () (InoxSet Context!10886))

(declare-fun e!3726532 () (InoxSet Context!10886))

(assert (=> b!6111515 (= e!3726528 e!3726532)))

(declare-fun c!1098035 () Bool)

(assert (=> b!6111515 (= c!1098035 ((_ is Concat!24904) (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343)))))))))))

(declare-fun b!6111516 () Bool)

(declare-fun call!505759 () (InoxSet Context!10886))

(assert (=> b!6111516 (= e!3726532 call!505759)))

(declare-fun bm!505752 () Bool)

(declare-fun call!505757 () (InoxSet Context!10886))

(assert (=> bm!505752 (= call!505759 call!505757)))

(declare-fun b!6111517 () Bool)

(declare-fun e!3726533 () (InoxSet Context!10886))

(declare-fun e!3726529 () (InoxSet Context!10886))

(assert (=> b!6111517 (= e!3726533 e!3726529)))

(declare-fun c!1098038 () Bool)

(assert (=> b!6111517 (= c!1098038 ((_ is Union!16059) (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343)))))))))))

(declare-fun bm!505753 () Bool)

(declare-fun call!505760 () (InoxSet Context!10886))

(assert (=> bm!505753 (= call!505760 (derivationStepZipperDown!1307 (ite c!1098038 (regOne!32631 (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343)))))))) (regOne!32630 (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343))))))))) (ite c!1098038 (ite (or c!1097781 c!1097779) lt!2329957 (Context!10887 call!505590)) (Context!10887 call!505758)) (h!70802 s!2326)))))

(declare-fun d!1915263 () Bool)

(declare-fun c!1098034 () Bool)

(assert (=> d!1915263 (= c!1098034 (and ((_ is ElementMatch!16059) (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343)))))))) (= (c!1097651 (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343)))))))) (h!70802 s!2326))))))

(assert (=> d!1915263 (= (derivationStepZipperDown!1307 (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343))))))) (ite (or c!1097781 c!1097779) lt!2329957 (Context!10887 call!505590)) (h!70802 s!2326)) e!3726533)))

(declare-fun b!6111518 () Bool)

(declare-fun c!1098037 () Bool)

(assert (=> b!6111518 (= c!1098037 ((_ is Star!16059) (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343)))))))))))

(declare-fun e!3726530 () (InoxSet Context!10886))

(assert (=> b!6111518 (= e!3726532 e!3726530)))

(declare-fun b!6111519 () Bool)

(declare-fun c!1098036 () Bool)

(declare-fun e!3726531 () Bool)

(assert (=> b!6111519 (= c!1098036 e!3726531)))

(declare-fun res!2534785 () Bool)

(assert (=> b!6111519 (=> (not res!2534785) (not e!3726531))))

(assert (=> b!6111519 (= res!2534785 ((_ is Concat!24904) (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343)))))))))))

(assert (=> b!6111519 (= e!3726529 e!3726528)))

(declare-fun call!505761 () (InoxSet Context!10886))

(declare-fun bm!505754 () Bool)

(assert (=> bm!505754 (= call!505761 (derivationStepZipperDown!1307 (ite c!1098038 (regTwo!32631 (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343)))))))) (ite c!1098036 (regTwo!32630 (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343)))))))) (ite c!1098035 (regOne!32630 (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343)))))))) (reg!16388 (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343))))))))))) (ite (or c!1098038 c!1098036) (ite (or c!1097781 c!1097779) lt!2329957 (Context!10887 call!505590)) (Context!10887 call!505756)) (h!70802 s!2326)))))

(declare-fun b!6111520 () Bool)

(assert (=> b!6111520 (= e!3726533 (store ((as const (Array Context!10886 Bool)) false) (ite (or c!1097781 c!1097779) lt!2329957 (Context!10887 call!505590)) true))))

(declare-fun b!6111521 () Bool)

(assert (=> b!6111521 (= e!3726530 ((as const (Array Context!10886 Bool)) false))))

(declare-fun b!6111522 () Bool)

(assert (=> b!6111522 (= e!3726528 ((_ map or) call!505760 call!505757))))

(declare-fun bm!505755 () Bool)

(assert (=> bm!505755 (= call!505757 call!505761)))

(declare-fun bm!505756 () Bool)

(assert (=> bm!505756 (= call!505758 ($colon$colon!1936 (exprs!5943 (ite (or c!1097781 c!1097779) lt!2329957 (Context!10887 call!505590))) (ite (or c!1098036 c!1098035) (regTwo!32630 (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343)))))))) (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343))))))))))))

(declare-fun b!6111523 () Bool)

(assert (=> b!6111523 (= e!3726531 (nullable!6052 (regOne!32630 (ite c!1097781 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097779 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1097778 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343))))))))))))

(declare-fun b!6111524 () Bool)

(assert (=> b!6111524 (= e!3726529 ((_ map or) call!505760 call!505761))))

(declare-fun b!6111525 () Bool)

(assert (=> b!6111525 (= e!3726530 call!505759)))

(assert (= (and d!1915263 c!1098034) b!6111520))

(assert (= (and d!1915263 (not c!1098034)) b!6111517))

(assert (= (and b!6111517 c!1098038) b!6111524))

(assert (= (and b!6111517 (not c!1098038)) b!6111519))

(assert (= (and b!6111519 res!2534785) b!6111523))

(assert (= (and b!6111519 c!1098036) b!6111522))

(assert (= (and b!6111519 (not c!1098036)) b!6111515))

(assert (= (and b!6111515 c!1098035) b!6111516))

(assert (= (and b!6111515 (not c!1098035)) b!6111518))

(assert (= (and b!6111518 c!1098037) b!6111525))

(assert (= (and b!6111518 (not c!1098037)) b!6111521))

(assert (= (or b!6111516 b!6111525) bm!505751))

(assert (= (or b!6111516 b!6111525) bm!505752))

(assert (= (or b!6111522 bm!505751) bm!505756))

(assert (= (or b!6111522 bm!505752) bm!505755))

(assert (= (or b!6111524 bm!505755) bm!505754))

(assert (= (or b!6111524 b!6111522) bm!505753))

(declare-fun m!6960638 () Bool)

(assert (=> b!6111520 m!6960638))

(declare-fun m!6960640 () Bool)

(assert (=> bm!505754 m!6960640))

(declare-fun m!6960642 () Bool)

(assert (=> bm!505753 m!6960642))

(declare-fun m!6960644 () Bool)

(assert (=> b!6111523 m!6960644))

(declare-fun m!6960646 () Bool)

(assert (=> bm!505756 m!6960646))

(assert (=> bm!505588 d!1915263))

(declare-fun bm!505757 () Bool)

(declare-fun call!505762 () List!64476)

(declare-fun call!505764 () List!64476)

(assert (=> bm!505757 (= call!505762 call!505764)))

(declare-fun b!6111526 () Bool)

(declare-fun e!3726534 () (InoxSet Context!10886))

(declare-fun e!3726538 () (InoxSet Context!10886))

(assert (=> b!6111526 (= e!3726534 e!3726538)))

(declare-fun c!1098040 () Bool)

(assert (=> b!6111526 (= c!1098040 ((_ is Concat!24904) (h!70800 (exprs!5943 lt!2329957))))))

(declare-fun b!6111527 () Bool)

(declare-fun call!505765 () (InoxSet Context!10886))

(assert (=> b!6111527 (= e!3726538 call!505765)))

(declare-fun bm!505758 () Bool)

(declare-fun call!505763 () (InoxSet Context!10886))

(assert (=> bm!505758 (= call!505765 call!505763)))

(declare-fun b!6111528 () Bool)

(declare-fun e!3726539 () (InoxSet Context!10886))

(declare-fun e!3726535 () (InoxSet Context!10886))

(assert (=> b!6111528 (= e!3726539 e!3726535)))

(declare-fun c!1098043 () Bool)

(assert (=> b!6111528 (= c!1098043 ((_ is Union!16059) (h!70800 (exprs!5943 lt!2329957))))))

(declare-fun call!505766 () (InoxSet Context!10886))

(declare-fun bm!505759 () Bool)

(assert (=> bm!505759 (= call!505766 (derivationStepZipperDown!1307 (ite c!1098043 (regOne!32631 (h!70800 (exprs!5943 lt!2329957))) (regOne!32630 (h!70800 (exprs!5943 lt!2329957)))) (ite c!1098043 (Context!10887 (t!377931 (exprs!5943 lt!2329957))) (Context!10887 call!505764)) (h!70802 s!2326)))))

(declare-fun d!1915265 () Bool)

(declare-fun c!1098039 () Bool)

(assert (=> d!1915265 (= c!1098039 (and ((_ is ElementMatch!16059) (h!70800 (exprs!5943 lt!2329957))) (= (c!1097651 (h!70800 (exprs!5943 lt!2329957))) (h!70802 s!2326))))))

(assert (=> d!1915265 (= (derivationStepZipperDown!1307 (h!70800 (exprs!5943 lt!2329957)) (Context!10887 (t!377931 (exprs!5943 lt!2329957))) (h!70802 s!2326)) e!3726539)))

(declare-fun b!6111529 () Bool)

(declare-fun c!1098042 () Bool)

(assert (=> b!6111529 (= c!1098042 ((_ is Star!16059) (h!70800 (exprs!5943 lt!2329957))))))

(declare-fun e!3726536 () (InoxSet Context!10886))

(assert (=> b!6111529 (= e!3726538 e!3726536)))

(declare-fun b!6111530 () Bool)

(declare-fun c!1098041 () Bool)

(declare-fun e!3726537 () Bool)

(assert (=> b!6111530 (= c!1098041 e!3726537)))

(declare-fun res!2534786 () Bool)

(assert (=> b!6111530 (=> (not res!2534786) (not e!3726537))))

(assert (=> b!6111530 (= res!2534786 ((_ is Concat!24904) (h!70800 (exprs!5943 lt!2329957))))))

(assert (=> b!6111530 (= e!3726535 e!3726534)))

(declare-fun call!505767 () (InoxSet Context!10886))

(declare-fun bm!505760 () Bool)

(assert (=> bm!505760 (= call!505767 (derivationStepZipperDown!1307 (ite c!1098043 (regTwo!32631 (h!70800 (exprs!5943 lt!2329957))) (ite c!1098041 (regTwo!32630 (h!70800 (exprs!5943 lt!2329957))) (ite c!1098040 (regOne!32630 (h!70800 (exprs!5943 lt!2329957))) (reg!16388 (h!70800 (exprs!5943 lt!2329957)))))) (ite (or c!1098043 c!1098041) (Context!10887 (t!377931 (exprs!5943 lt!2329957))) (Context!10887 call!505762)) (h!70802 s!2326)))))

(declare-fun b!6111531 () Bool)

(assert (=> b!6111531 (= e!3726539 (store ((as const (Array Context!10886 Bool)) false) (Context!10887 (t!377931 (exprs!5943 lt!2329957))) true))))

(declare-fun b!6111532 () Bool)

(assert (=> b!6111532 (= e!3726536 ((as const (Array Context!10886 Bool)) false))))

(declare-fun b!6111533 () Bool)

(assert (=> b!6111533 (= e!3726534 ((_ map or) call!505766 call!505763))))

(declare-fun bm!505761 () Bool)

(assert (=> bm!505761 (= call!505763 call!505767)))

(declare-fun bm!505762 () Bool)

(assert (=> bm!505762 (= call!505764 ($colon$colon!1936 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 lt!2329957)))) (ite (or c!1098041 c!1098040) (regTwo!32630 (h!70800 (exprs!5943 lt!2329957))) (h!70800 (exprs!5943 lt!2329957)))))))

(declare-fun b!6111534 () Bool)

(assert (=> b!6111534 (= e!3726537 (nullable!6052 (regOne!32630 (h!70800 (exprs!5943 lt!2329957)))))))

(declare-fun b!6111535 () Bool)

(assert (=> b!6111535 (= e!3726535 ((_ map or) call!505766 call!505767))))

(declare-fun b!6111536 () Bool)

(assert (=> b!6111536 (= e!3726536 call!505765)))

(assert (= (and d!1915265 c!1098039) b!6111531))

(assert (= (and d!1915265 (not c!1098039)) b!6111528))

(assert (= (and b!6111528 c!1098043) b!6111535))

(assert (= (and b!6111528 (not c!1098043)) b!6111530))

(assert (= (and b!6111530 res!2534786) b!6111534))

(assert (= (and b!6111530 c!1098041) b!6111533))

(assert (= (and b!6111530 (not c!1098041)) b!6111526))

(assert (= (and b!6111526 c!1098040) b!6111527))

(assert (= (and b!6111526 (not c!1098040)) b!6111529))

(assert (= (and b!6111529 c!1098042) b!6111536))

(assert (= (and b!6111529 (not c!1098042)) b!6111532))

(assert (= (or b!6111527 b!6111536) bm!505757))

(assert (= (or b!6111527 b!6111536) bm!505758))

(assert (= (or b!6111533 bm!505757) bm!505762))

(assert (= (or b!6111533 bm!505758) bm!505761))

(assert (= (or b!6111535 bm!505761) bm!505760))

(assert (= (or b!6111535 b!6111533) bm!505759))

(declare-fun m!6960648 () Bool)

(assert (=> b!6111531 m!6960648))

(declare-fun m!6960650 () Bool)

(assert (=> bm!505760 m!6960650))

(declare-fun m!6960652 () Bool)

(assert (=> bm!505759 m!6960652))

(declare-fun m!6960654 () Bool)

(assert (=> b!6111534 m!6960654))

(declare-fun m!6960656 () Bool)

(assert (=> bm!505762 m!6960656))

(assert (=> bm!505594 d!1915265))

(declare-fun d!1915267 () Bool)

(assert (=> d!1915267 (= (isEmpty!36282 (findConcatSeparation!2364 (regOne!32630 r!7292) (regTwo!32630 r!7292) Nil!64354 s!2326 s!2326)) (not ((_ is Some!15949) (findConcatSeparation!2364 (regOne!32630 r!7292) (regTwo!32630 r!7292) Nil!64354 s!2326 s!2326))))))

(assert (=> d!1914857 d!1915267))

(assert (=> b!6110507 d!1914893))

(assert (=> d!1914885 d!1914883))

(assert (=> d!1914885 d!1914881))

(declare-fun d!1915269 () Bool)

(assert (=> d!1915269 (= (matchR!8242 r!7292 s!2326) (matchRSpec!3160 r!7292 s!2326))))

(assert (=> d!1915269 true))

(declare-fun _$88!4602 () Unit!157391)

(assert (=> d!1915269 (= (choose!45415 r!7292 s!2326) _$88!4602)))

(declare-fun bs!1517032 () Bool)

(assert (= bs!1517032 d!1915269))

(assert (=> bs!1517032 m!6959476))

(assert (=> bs!1517032 m!6959474))

(assert (=> d!1914885 d!1915269))

(assert (=> d!1914885 d!1914889))

(assert (=> d!1914883 d!1915055))

(assert (=> d!1914883 d!1914889))

(declare-fun bm!505763 () Bool)

(declare-fun call!505768 () List!64476)

(declare-fun call!505770 () List!64476)

(assert (=> bm!505763 (= call!505768 call!505770)))

(declare-fun b!6111537 () Bool)

(declare-fun e!3726540 () (InoxSet Context!10886))

(declare-fun e!3726544 () (InoxSet Context!10886))

(assert (=> b!6111537 (= e!3726540 e!3726544)))

(declare-fun c!1098045 () Bool)

(assert (=> b!6111537 (= c!1098045 ((_ is Concat!24904) (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun b!6111538 () Bool)

(declare-fun call!505771 () (InoxSet Context!10886))

(assert (=> b!6111538 (= e!3726544 call!505771)))

(declare-fun bm!505764 () Bool)

(declare-fun call!505769 () (InoxSet Context!10886))

(assert (=> bm!505764 (= call!505771 call!505769)))

(declare-fun b!6111539 () Bool)

(declare-fun e!3726545 () (InoxSet Context!10886))

(declare-fun e!3726541 () (InoxSet Context!10886))

(assert (=> b!6111539 (= e!3726545 e!3726541)))

(declare-fun c!1098048 () Bool)

(assert (=> b!6111539 (= c!1098048 ((_ is Union!16059) (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun call!505772 () (InoxSet Context!10886))

(declare-fun bm!505765 () Bool)

(assert (=> bm!505765 (= call!505772 (derivationStepZipperDown!1307 (ite c!1098048 (regOne!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343))))) (ite c!1098048 (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343)))) (Context!10887 call!505770)) (h!70802 s!2326)))))

(declare-fun d!1915271 () Bool)

(declare-fun c!1098044 () Bool)

(assert (=> d!1915271 (= c!1098044 (and ((_ is ElementMatch!16059) (h!70800 (exprs!5943 (h!70801 zl!343)))) (= (c!1097651 (h!70800 (exprs!5943 (h!70801 zl!343)))) (h!70802 s!2326))))))

(assert (=> d!1915271 (= (derivationStepZipperDown!1307 (h!70800 (exprs!5943 (h!70801 zl!343))) (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343)))) (h!70802 s!2326)) e!3726545)))

(declare-fun b!6111540 () Bool)

(declare-fun c!1098047 () Bool)

(assert (=> b!6111540 (= c!1098047 ((_ is Star!16059) (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun e!3726542 () (InoxSet Context!10886))

(assert (=> b!6111540 (= e!3726544 e!3726542)))

(declare-fun b!6111541 () Bool)

(declare-fun c!1098046 () Bool)

(declare-fun e!3726543 () Bool)

(assert (=> b!6111541 (= c!1098046 e!3726543)))

(declare-fun res!2534787 () Bool)

(assert (=> b!6111541 (=> (not res!2534787) (not e!3726543))))

(assert (=> b!6111541 (= res!2534787 ((_ is Concat!24904) (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(assert (=> b!6111541 (= e!3726541 e!3726540)))

(declare-fun bm!505766 () Bool)

(declare-fun call!505773 () (InoxSet Context!10886))

(assert (=> bm!505766 (= call!505773 (derivationStepZipperDown!1307 (ite c!1098048 (regTwo!32631 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1098046 (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (ite c!1098045 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (reg!16388 (h!70800 (exprs!5943 (h!70801 zl!343))))))) (ite (or c!1098048 c!1098046) (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343)))) (Context!10887 call!505768)) (h!70802 s!2326)))))

(declare-fun b!6111542 () Bool)

(assert (=> b!6111542 (= e!3726545 (store ((as const (Array Context!10886 Bool)) false) (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343)))) true))))

(declare-fun b!6111543 () Bool)

(assert (=> b!6111543 (= e!3726542 ((as const (Array Context!10886 Bool)) false))))

(declare-fun b!6111544 () Bool)

(assert (=> b!6111544 (= e!3726540 ((_ map or) call!505772 call!505769))))

(declare-fun bm!505767 () Bool)

(assert (=> bm!505767 (= call!505769 call!505773)))

(declare-fun bm!505768 () Bool)

(assert (=> bm!505768 (= call!505770 ($colon$colon!1936 (exprs!5943 (Context!10887 (t!377931 (exprs!5943 (h!70801 zl!343))))) (ite (or c!1098046 c!1098045) (regTwo!32630 (h!70800 (exprs!5943 (h!70801 zl!343)))) (h!70800 (exprs!5943 (h!70801 zl!343))))))))

(declare-fun b!6111545 () Bool)

(assert (=> b!6111545 (= e!3726543 (nullable!6052 (regOne!32630 (h!70800 (exprs!5943 (h!70801 zl!343))))))))

(declare-fun b!6111546 () Bool)

(assert (=> b!6111546 (= e!3726541 ((_ map or) call!505772 call!505773))))

(declare-fun b!6111547 () Bool)

(assert (=> b!6111547 (= e!3726542 call!505771)))

(assert (= (and d!1915271 c!1098044) b!6111542))

(assert (= (and d!1915271 (not c!1098044)) b!6111539))

(assert (= (and b!6111539 c!1098048) b!6111546))

(assert (= (and b!6111539 (not c!1098048)) b!6111541))

(assert (= (and b!6111541 res!2534787) b!6111545))

(assert (= (and b!6111541 c!1098046) b!6111544))

(assert (= (and b!6111541 (not c!1098046)) b!6111537))

(assert (= (and b!6111537 c!1098045) b!6111538))

(assert (= (and b!6111537 (not c!1098045)) b!6111540))

(assert (= (and b!6111540 c!1098047) b!6111547))

(assert (= (and b!6111540 (not c!1098047)) b!6111543))

(assert (= (or b!6111538 b!6111547) bm!505763))

(assert (= (or b!6111538 b!6111547) bm!505764))

(assert (= (or b!6111544 bm!505763) bm!505768))

(assert (= (or b!6111544 bm!505764) bm!505767))

(assert (= (or b!6111546 bm!505767) bm!505766))

(assert (= (or b!6111546 b!6111544) bm!505765))

(declare-fun m!6960658 () Bool)

(assert (=> b!6111542 m!6960658))

(declare-fun m!6960660 () Bool)

(assert (=> bm!505766 m!6960660))

(declare-fun m!6960662 () Bool)

(assert (=> bm!505765 m!6960662))

(assert (=> b!6111545 m!6959768))

(declare-fun m!6960664 () Bool)

(assert (=> bm!505768 m!6960664))

(assert (=> bm!505595 d!1915271))

(declare-fun d!1915273 () Bool)

(assert (=> d!1915273 (= (isEmpty!36278 (tail!11725 (unfocusZipperList!1480 zl!343))) ((_ is Nil!64352) (tail!11725 (unfocusZipperList!1480 zl!343))))))

(assert (=> b!6110136 d!1915273))

(declare-fun d!1915275 () Bool)

(assert (=> d!1915275 (= (tail!11725 (unfocusZipperList!1480 zl!343)) (t!377931 (unfocusZipperList!1480 zl!343)))))

(assert (=> b!6110136 d!1915275))

(declare-fun bm!505769 () Bool)

(declare-fun call!505774 () Bool)

(assert (=> bm!505769 (= call!505774 (isEmpty!36281 (_1!36341 (get!22191 lt!2330012))))))

(declare-fun b!6111548 () Bool)

(declare-fun e!3726549 () Bool)

(declare-fun lt!2330090 () Bool)

(assert (=> b!6111548 (= e!3726549 (not lt!2330090))))

(declare-fun b!6111549 () Bool)

(declare-fun res!2534793 () Bool)

(declare-fun e!3726552 () Bool)

(assert (=> b!6111549 (=> (not res!2534793) (not e!3726552))))

(assert (=> b!6111549 (= res!2534793 (not call!505774))))

(declare-fun b!6111550 () Bool)

(declare-fun e!3726550 () Bool)

(declare-fun e!3726547 () Bool)

(assert (=> b!6111550 (= e!3726550 e!3726547)))

(declare-fun res!2534795 () Bool)

(assert (=> b!6111550 (=> res!2534795 e!3726547)))

(assert (=> b!6111550 (= res!2534795 call!505774)))

(declare-fun b!6111551 () Bool)

(declare-fun e!3726551 () Bool)

(assert (=> b!6111551 (= e!3726551 (nullable!6052 (regOne!32630 r!7292)))))

(declare-fun b!6111552 () Bool)

(declare-fun res!2534789 () Bool)

(assert (=> b!6111552 (=> (not res!2534789) (not e!3726552))))

(assert (=> b!6111552 (= res!2534789 (isEmpty!36281 (tail!11724 (_1!36341 (get!22191 lt!2330012)))))))

(declare-fun b!6111553 () Bool)

(declare-fun e!3726548 () Bool)

(assert (=> b!6111553 (= e!3726548 e!3726549)))

(declare-fun c!1098050 () Bool)

(assert (=> b!6111553 (= c!1098050 ((_ is EmptyLang!16059) (regOne!32630 r!7292)))))

(declare-fun d!1915277 () Bool)

(assert (=> d!1915277 e!3726548))

(declare-fun c!1098049 () Bool)

(assert (=> d!1915277 (= c!1098049 ((_ is EmptyExpr!16059) (regOne!32630 r!7292)))))

(assert (=> d!1915277 (= lt!2330090 e!3726551)))

(declare-fun c!1098051 () Bool)

(assert (=> d!1915277 (= c!1098051 (isEmpty!36281 (_1!36341 (get!22191 lt!2330012))))))

(assert (=> d!1915277 (validRegex!7795 (regOne!32630 r!7292))))

(assert (=> d!1915277 (= (matchR!8242 (regOne!32630 r!7292) (_1!36341 (get!22191 lt!2330012))) lt!2330090)))

(declare-fun b!6111554 () Bool)

(declare-fun res!2534791 () Bool)

(declare-fun e!3726546 () Bool)

(assert (=> b!6111554 (=> res!2534791 e!3726546)))

(assert (=> b!6111554 (= res!2534791 e!3726552)))

(declare-fun res!2534790 () Bool)

(assert (=> b!6111554 (=> (not res!2534790) (not e!3726552))))

(assert (=> b!6111554 (= res!2534790 lt!2330090)))

(declare-fun b!6111555 () Bool)

(assert (=> b!6111555 (= e!3726547 (not (= (head!12639 (_1!36341 (get!22191 lt!2330012))) (c!1097651 (regOne!32630 r!7292)))))))

(declare-fun b!6111556 () Bool)

(assert (=> b!6111556 (= e!3726548 (= lt!2330090 call!505774))))

(declare-fun b!6111557 () Bool)

(declare-fun res!2534792 () Bool)

(assert (=> b!6111557 (=> res!2534792 e!3726547)))

(assert (=> b!6111557 (= res!2534792 (not (isEmpty!36281 (tail!11724 (_1!36341 (get!22191 lt!2330012))))))))

(declare-fun b!6111558 () Bool)

(declare-fun res!2534794 () Bool)

(assert (=> b!6111558 (=> res!2534794 e!3726546)))

(assert (=> b!6111558 (= res!2534794 (not ((_ is ElementMatch!16059) (regOne!32630 r!7292))))))

(assert (=> b!6111558 (= e!3726549 e!3726546)))

(declare-fun b!6111559 () Bool)

(assert (=> b!6111559 (= e!3726551 (matchR!8242 (derivativeStep!4780 (regOne!32630 r!7292) (head!12639 (_1!36341 (get!22191 lt!2330012)))) (tail!11724 (_1!36341 (get!22191 lt!2330012)))))))

(declare-fun b!6111560 () Bool)

(assert (=> b!6111560 (= e!3726546 e!3726550)))

(declare-fun res!2534788 () Bool)

(assert (=> b!6111560 (=> (not res!2534788) (not e!3726550))))

(assert (=> b!6111560 (= res!2534788 (not lt!2330090))))

(declare-fun b!6111561 () Bool)

(assert (=> b!6111561 (= e!3726552 (= (head!12639 (_1!36341 (get!22191 lt!2330012))) (c!1097651 (regOne!32630 r!7292))))))

(assert (= (and d!1915277 c!1098051) b!6111551))

(assert (= (and d!1915277 (not c!1098051)) b!6111559))

(assert (= (and d!1915277 c!1098049) b!6111556))

(assert (= (and d!1915277 (not c!1098049)) b!6111553))

(assert (= (and b!6111553 c!1098050) b!6111548))

(assert (= (and b!6111553 (not c!1098050)) b!6111558))

(assert (= (and b!6111558 (not res!2534794)) b!6111554))

(assert (= (and b!6111554 res!2534790) b!6111549))

(assert (= (and b!6111549 res!2534793) b!6111552))

(assert (= (and b!6111552 res!2534789) b!6111561))

(assert (= (and b!6111554 (not res!2534791)) b!6111560))

(assert (= (and b!6111560 res!2534788) b!6111550))

(assert (= (and b!6111550 (not res!2534795)) b!6111557))

(assert (= (and b!6111557 (not res!2534792)) b!6111555))

(assert (= (or b!6111556 b!6111549 b!6111550) bm!505769))

(declare-fun m!6960666 () Bool)

(assert (=> b!6111555 m!6960666))

(assert (=> b!6111561 m!6960666))

(declare-fun m!6960668 () Bool)

(assert (=> b!6111552 m!6960668))

(assert (=> b!6111552 m!6960668))

(declare-fun m!6960670 () Bool)

(assert (=> b!6111552 m!6960670))

(declare-fun m!6960672 () Bool)

(assert (=> bm!505769 m!6960672))

(assert (=> b!6111551 m!6960454))

(assert (=> b!6111557 m!6960668))

(assert (=> b!6111557 m!6960668))

(assert (=> b!6111557 m!6960670))

(assert (=> b!6111559 m!6960666))

(assert (=> b!6111559 m!6960666))

(declare-fun m!6960674 () Bool)

(assert (=> b!6111559 m!6960674))

(assert (=> b!6111559 m!6960668))

(assert (=> b!6111559 m!6960674))

(assert (=> b!6111559 m!6960668))

(declare-fun m!6960676 () Bool)

(assert (=> b!6111559 m!6960676))

(assert (=> d!1915277 m!6960672))

(assert (=> d!1915277 m!6959706))

(assert (=> b!6110266 d!1915277))

(assert (=> b!6110266 d!1915049))

(declare-fun d!1915279 () Bool)

(assert (=> d!1915279 (= (head!12640 (exprs!5943 (h!70801 zl!343))) (h!70800 (exprs!5943 (h!70801 zl!343))))))

(assert (=> b!6110505 d!1915279))

(declare-fun condSetEmpty!41290 () Bool)

(assert (=> setNonEmpty!41282 (= condSetEmpty!41290 (= setRest!41282 ((as const (Array Context!10886 Bool)) false)))))

(declare-fun setRes!41290 () Bool)

(assert (=> setNonEmpty!41282 (= tp!1706758 setRes!41290)))

(declare-fun setIsEmpty!41290 () Bool)

(assert (=> setIsEmpty!41290 setRes!41290))

(declare-fun tp!1706984 () Bool)

(declare-fun e!3726553 () Bool)

(declare-fun setElem!41290 () Context!10886)

(declare-fun setNonEmpty!41290 () Bool)

(assert (=> setNonEmpty!41290 (= setRes!41290 (and tp!1706984 (inv!83394 setElem!41290) e!3726553))))

(declare-fun setRest!41290 () (InoxSet Context!10886))

(assert (=> setNonEmpty!41290 (= setRest!41282 ((_ map or) (store ((as const (Array Context!10886 Bool)) false) setElem!41290 true) setRest!41290))))

(declare-fun b!6111562 () Bool)

(declare-fun tp!1706983 () Bool)

(assert (=> b!6111562 (= e!3726553 tp!1706983)))

(assert (= (and setNonEmpty!41282 condSetEmpty!41290) setIsEmpty!41290))

(assert (= (and setNonEmpty!41282 (not condSetEmpty!41290)) setNonEmpty!41290))

(assert (= setNonEmpty!41290 b!6111562))

(declare-fun m!6960678 () Bool)

(assert (=> setNonEmpty!41290 m!6960678))

(declare-fun b!6111566 () Bool)

(declare-fun e!3726554 () Bool)

(declare-fun tp!1706989 () Bool)

(declare-fun tp!1706987 () Bool)

(assert (=> b!6111566 (= e!3726554 (and tp!1706989 tp!1706987))))

(assert (=> b!6110657 (= tp!1706783 e!3726554)))

(declare-fun b!6111565 () Bool)

(declare-fun tp!1706986 () Bool)

(assert (=> b!6111565 (= e!3726554 tp!1706986)))

(declare-fun b!6111563 () Bool)

(assert (=> b!6111563 (= e!3726554 tp_is_empty!41371)))

(declare-fun b!6111564 () Bool)

(declare-fun tp!1706988 () Bool)

(declare-fun tp!1706985 () Bool)

(assert (=> b!6111564 (= e!3726554 (and tp!1706988 tp!1706985))))

(assert (= (and b!6110657 ((_ is ElementMatch!16059) (h!70800 (exprs!5943 (h!70801 zl!343))))) b!6111563))

(assert (= (and b!6110657 ((_ is Concat!24904) (h!70800 (exprs!5943 (h!70801 zl!343))))) b!6111564))

(assert (= (and b!6110657 ((_ is Star!16059) (h!70800 (exprs!5943 (h!70801 zl!343))))) b!6111565))

(assert (= (and b!6110657 ((_ is Union!16059) (h!70800 (exprs!5943 (h!70801 zl!343))))) b!6111566))

(declare-fun b!6111567 () Bool)

(declare-fun e!3726555 () Bool)

(declare-fun tp!1706990 () Bool)

(declare-fun tp!1706991 () Bool)

(assert (=> b!6111567 (= e!3726555 (and tp!1706990 tp!1706991))))

(assert (=> b!6110657 (= tp!1706784 e!3726555)))

(assert (= (and b!6110657 ((_ is Cons!64352) (t!377931 (exprs!5943 (h!70801 zl!343))))) b!6111567))

(declare-fun b!6111568 () Bool)

(declare-fun e!3726556 () Bool)

(declare-fun tp!1706992 () Bool)

(declare-fun tp!1706993 () Bool)

(assert (=> b!6111568 (= e!3726556 (and tp!1706992 tp!1706993))))

(assert (=> b!6110634 (= tp!1706757 e!3726556)))

(assert (= (and b!6110634 ((_ is Cons!64352) (exprs!5943 setElem!41282))) b!6111568))

(declare-fun b!6111572 () Bool)

(declare-fun e!3726557 () Bool)

(declare-fun tp!1706998 () Bool)

(declare-fun tp!1706996 () Bool)

(assert (=> b!6111572 (= e!3726557 (and tp!1706998 tp!1706996))))

(assert (=> b!6110646 (= tp!1706772 e!3726557)))

(declare-fun b!6111571 () Bool)

(declare-fun tp!1706995 () Bool)

(assert (=> b!6111571 (= e!3726557 tp!1706995)))

(declare-fun b!6111569 () Bool)

(assert (=> b!6111569 (= e!3726557 tp_is_empty!41371)))

(declare-fun b!6111570 () Bool)

(declare-fun tp!1706997 () Bool)

(declare-fun tp!1706994 () Bool)

(assert (=> b!6111570 (= e!3726557 (and tp!1706997 tp!1706994))))

(assert (= (and b!6110646 ((_ is ElementMatch!16059) (regOne!32630 (regOne!32630 r!7292)))) b!6111569))

(assert (= (and b!6110646 ((_ is Concat!24904) (regOne!32630 (regOne!32630 r!7292)))) b!6111570))

(assert (= (and b!6110646 ((_ is Star!16059) (regOne!32630 (regOne!32630 r!7292)))) b!6111571))

(assert (= (and b!6110646 ((_ is Union!16059) (regOne!32630 (regOne!32630 r!7292)))) b!6111572))

(declare-fun b!6111576 () Bool)

(declare-fun e!3726558 () Bool)

(declare-fun tp!1707003 () Bool)

(declare-fun tp!1707001 () Bool)

(assert (=> b!6111576 (= e!3726558 (and tp!1707003 tp!1707001))))

(assert (=> b!6110646 (= tp!1706769 e!3726558)))

(declare-fun b!6111575 () Bool)

(declare-fun tp!1707000 () Bool)

(assert (=> b!6111575 (= e!3726558 tp!1707000)))

(declare-fun b!6111573 () Bool)

(assert (=> b!6111573 (= e!3726558 tp_is_empty!41371)))

(declare-fun b!6111574 () Bool)

(declare-fun tp!1707002 () Bool)

(declare-fun tp!1706999 () Bool)

(assert (=> b!6111574 (= e!3726558 (and tp!1707002 tp!1706999))))

(assert (= (and b!6110646 ((_ is ElementMatch!16059) (regTwo!32630 (regOne!32630 r!7292)))) b!6111573))

(assert (= (and b!6110646 ((_ is Concat!24904) (regTwo!32630 (regOne!32630 r!7292)))) b!6111574))

(assert (= (and b!6110646 ((_ is Star!16059) (regTwo!32630 (regOne!32630 r!7292)))) b!6111575))

(assert (= (and b!6110646 ((_ is Union!16059) (regTwo!32630 (regOne!32630 r!7292)))) b!6111576))

(declare-fun b!6111580 () Bool)

(declare-fun e!3726559 () Bool)

(declare-fun tp!1707008 () Bool)

(declare-fun tp!1707006 () Bool)

(assert (=> b!6111580 (= e!3726559 (and tp!1707008 tp!1707006))))

(assert (=> b!6110669 (= tp!1706794 e!3726559)))

(declare-fun b!6111579 () Bool)

(declare-fun tp!1707005 () Bool)

(assert (=> b!6111579 (= e!3726559 tp!1707005)))

(declare-fun b!6111577 () Bool)

(assert (=> b!6111577 (= e!3726559 tp_is_empty!41371)))

(declare-fun b!6111578 () Bool)

(declare-fun tp!1707007 () Bool)

(declare-fun tp!1707004 () Bool)

(assert (=> b!6111578 (= e!3726559 (and tp!1707007 tp!1707004))))

(assert (= (and b!6110669 ((_ is ElementMatch!16059) (reg!16388 (regOne!32631 r!7292)))) b!6111577))

(assert (= (and b!6110669 ((_ is Concat!24904) (reg!16388 (regOne!32631 r!7292)))) b!6111578))

(assert (= (and b!6110669 ((_ is Star!16059) (reg!16388 (regOne!32631 r!7292)))) b!6111579))

(assert (= (and b!6110669 ((_ is Union!16059) (reg!16388 (regOne!32631 r!7292)))) b!6111580))

(declare-fun b!6111584 () Bool)

(declare-fun e!3726560 () Bool)

(declare-fun tp!1707013 () Bool)

(declare-fun tp!1707011 () Bool)

(assert (=> b!6111584 (= e!3726560 (and tp!1707013 tp!1707011))))

(assert (=> b!6110668 (= tp!1706796 e!3726560)))

(declare-fun b!6111583 () Bool)

(declare-fun tp!1707010 () Bool)

(assert (=> b!6111583 (= e!3726560 tp!1707010)))

(declare-fun b!6111581 () Bool)

(assert (=> b!6111581 (= e!3726560 tp_is_empty!41371)))

(declare-fun b!6111582 () Bool)

(declare-fun tp!1707012 () Bool)

(declare-fun tp!1707009 () Bool)

(assert (=> b!6111582 (= e!3726560 (and tp!1707012 tp!1707009))))

(assert (= (and b!6110668 ((_ is ElementMatch!16059) (regOne!32630 (regOne!32631 r!7292)))) b!6111581))

(assert (= (and b!6110668 ((_ is Concat!24904) (regOne!32630 (regOne!32631 r!7292)))) b!6111582))

(assert (= (and b!6110668 ((_ is Star!16059) (regOne!32630 (regOne!32631 r!7292)))) b!6111583))

(assert (= (and b!6110668 ((_ is Union!16059) (regOne!32630 (regOne!32631 r!7292)))) b!6111584))

(declare-fun b!6111588 () Bool)

(declare-fun e!3726561 () Bool)

(declare-fun tp!1707018 () Bool)

(declare-fun tp!1707016 () Bool)

(assert (=> b!6111588 (= e!3726561 (and tp!1707018 tp!1707016))))

(assert (=> b!6110668 (= tp!1706793 e!3726561)))

(declare-fun b!6111587 () Bool)

(declare-fun tp!1707015 () Bool)

(assert (=> b!6111587 (= e!3726561 tp!1707015)))

(declare-fun b!6111585 () Bool)

(assert (=> b!6111585 (= e!3726561 tp_is_empty!41371)))

(declare-fun b!6111586 () Bool)

(declare-fun tp!1707017 () Bool)

(declare-fun tp!1707014 () Bool)

(assert (=> b!6111586 (= e!3726561 (and tp!1707017 tp!1707014))))

(assert (= (and b!6110668 ((_ is ElementMatch!16059) (regTwo!32630 (regOne!32631 r!7292)))) b!6111585))

(assert (= (and b!6110668 ((_ is Concat!24904) (regTwo!32630 (regOne!32631 r!7292)))) b!6111586))

(assert (= (and b!6110668 ((_ is Star!16059) (regTwo!32630 (regOne!32631 r!7292)))) b!6111587))

(assert (= (and b!6110668 ((_ is Union!16059) (regTwo!32630 (regOne!32631 r!7292)))) b!6111588))

(declare-fun b!6111589 () Bool)

(declare-fun e!3726562 () Bool)

(declare-fun tp!1707019 () Bool)

(assert (=> b!6111589 (= e!3726562 (and tp_is_empty!41371 tp!1707019))))

(assert (=> b!6110662 (= tp!1706787 e!3726562)))

(assert (= (and b!6110662 ((_ is Cons!64354) (t!377933 (t!377933 s!2326)))) b!6111589))

(declare-fun b!6111593 () Bool)

(declare-fun e!3726563 () Bool)

(declare-fun tp!1707024 () Bool)

(declare-fun tp!1707022 () Bool)

(assert (=> b!6111593 (= e!3726563 (and tp!1707024 tp!1707022))))

(assert (=> b!6110647 (= tp!1706770 e!3726563)))

(declare-fun b!6111592 () Bool)

(declare-fun tp!1707021 () Bool)

(assert (=> b!6111592 (= e!3726563 tp!1707021)))

(declare-fun b!6111590 () Bool)

(assert (=> b!6111590 (= e!3726563 tp_is_empty!41371)))

(declare-fun b!6111591 () Bool)

(declare-fun tp!1707023 () Bool)

(declare-fun tp!1707020 () Bool)

(assert (=> b!6111591 (= e!3726563 (and tp!1707023 tp!1707020))))

(assert (= (and b!6110647 ((_ is ElementMatch!16059) (reg!16388 (regOne!32630 r!7292)))) b!6111590))

(assert (= (and b!6110647 ((_ is Concat!24904) (reg!16388 (regOne!32630 r!7292)))) b!6111591))

(assert (= (and b!6110647 ((_ is Star!16059) (reg!16388 (regOne!32630 r!7292)))) b!6111592))

(assert (= (and b!6110647 ((_ is Union!16059) (reg!16388 (regOne!32630 r!7292)))) b!6111593))

(declare-fun b!6111597 () Bool)

(declare-fun e!3726564 () Bool)

(declare-fun tp!1707029 () Bool)

(declare-fun tp!1707027 () Bool)

(assert (=> b!6111597 (= e!3726564 (and tp!1707029 tp!1707027))))

(assert (=> b!6110670 (= tp!1706797 e!3726564)))

(declare-fun b!6111596 () Bool)

(declare-fun tp!1707026 () Bool)

(assert (=> b!6111596 (= e!3726564 tp!1707026)))

(declare-fun b!6111594 () Bool)

(assert (=> b!6111594 (= e!3726564 tp_is_empty!41371)))

(declare-fun b!6111595 () Bool)

(declare-fun tp!1707028 () Bool)

(declare-fun tp!1707025 () Bool)

(assert (=> b!6111595 (= e!3726564 (and tp!1707028 tp!1707025))))

(assert (= (and b!6110670 ((_ is ElementMatch!16059) (regOne!32631 (regOne!32631 r!7292)))) b!6111594))

(assert (= (and b!6110670 ((_ is Concat!24904) (regOne!32631 (regOne!32631 r!7292)))) b!6111595))

(assert (= (and b!6110670 ((_ is Star!16059) (regOne!32631 (regOne!32631 r!7292)))) b!6111596))

(assert (= (and b!6110670 ((_ is Union!16059) (regOne!32631 (regOne!32631 r!7292)))) b!6111597))

(declare-fun b!6111601 () Bool)

(declare-fun e!3726565 () Bool)

(declare-fun tp!1707034 () Bool)

(declare-fun tp!1707032 () Bool)

(assert (=> b!6111601 (= e!3726565 (and tp!1707034 tp!1707032))))

(assert (=> b!6110670 (= tp!1706795 e!3726565)))

(declare-fun b!6111600 () Bool)

(declare-fun tp!1707031 () Bool)

(assert (=> b!6111600 (= e!3726565 tp!1707031)))

(declare-fun b!6111598 () Bool)

(assert (=> b!6111598 (= e!3726565 tp_is_empty!41371)))

(declare-fun b!6111599 () Bool)

(declare-fun tp!1707033 () Bool)

(declare-fun tp!1707030 () Bool)

(assert (=> b!6111599 (= e!3726565 (and tp!1707033 tp!1707030))))

(assert (= (and b!6110670 ((_ is ElementMatch!16059) (regTwo!32631 (regOne!32631 r!7292)))) b!6111598))

(assert (= (and b!6110670 ((_ is Concat!24904) (regTwo!32631 (regOne!32631 r!7292)))) b!6111599))

(assert (= (and b!6110670 ((_ is Star!16059) (regTwo!32631 (regOne!32631 r!7292)))) b!6111600))

(assert (= (and b!6110670 ((_ is Union!16059) (regTwo!32631 (regOne!32631 r!7292)))) b!6111601))

(declare-fun b!6111605 () Bool)

(declare-fun e!3726566 () Bool)

(declare-fun tp!1707039 () Bool)

(declare-fun tp!1707037 () Bool)

(assert (=> b!6111605 (= e!3726566 (and tp!1707039 tp!1707037))))

(assert (=> b!6110648 (= tp!1706773 e!3726566)))

(declare-fun b!6111604 () Bool)

(declare-fun tp!1707036 () Bool)

(assert (=> b!6111604 (= e!3726566 tp!1707036)))

(declare-fun b!6111602 () Bool)

(assert (=> b!6111602 (= e!3726566 tp_is_empty!41371)))

(declare-fun b!6111603 () Bool)

(declare-fun tp!1707038 () Bool)

(declare-fun tp!1707035 () Bool)

(assert (=> b!6111603 (= e!3726566 (and tp!1707038 tp!1707035))))

(assert (= (and b!6110648 ((_ is ElementMatch!16059) (regOne!32631 (regOne!32630 r!7292)))) b!6111602))

(assert (= (and b!6110648 ((_ is Concat!24904) (regOne!32631 (regOne!32630 r!7292)))) b!6111603))

(assert (= (and b!6110648 ((_ is Star!16059) (regOne!32631 (regOne!32630 r!7292)))) b!6111604))

(assert (= (and b!6110648 ((_ is Union!16059) (regOne!32631 (regOne!32630 r!7292)))) b!6111605))

(declare-fun b!6111609 () Bool)

(declare-fun e!3726567 () Bool)

(declare-fun tp!1707044 () Bool)

(declare-fun tp!1707042 () Bool)

(assert (=> b!6111609 (= e!3726567 (and tp!1707044 tp!1707042))))

(assert (=> b!6110648 (= tp!1706771 e!3726567)))

(declare-fun b!6111608 () Bool)

(declare-fun tp!1707041 () Bool)

(assert (=> b!6111608 (= e!3726567 tp!1707041)))

(declare-fun b!6111606 () Bool)

(assert (=> b!6111606 (= e!3726567 tp_is_empty!41371)))

(declare-fun b!6111607 () Bool)

(declare-fun tp!1707043 () Bool)

(declare-fun tp!1707040 () Bool)

(assert (=> b!6111607 (= e!3726567 (and tp!1707043 tp!1707040))))

(assert (= (and b!6110648 ((_ is ElementMatch!16059) (regTwo!32631 (regOne!32630 r!7292)))) b!6111606))

(assert (= (and b!6110648 ((_ is Concat!24904) (regTwo!32631 (regOne!32630 r!7292)))) b!6111607))

(assert (= (and b!6110648 ((_ is Star!16059) (regTwo!32631 (regOne!32630 r!7292)))) b!6111608))

(assert (= (and b!6110648 ((_ is Union!16059) (regTwo!32631 (regOne!32630 r!7292)))) b!6111609))

(declare-fun b!6111611 () Bool)

(declare-fun e!3726569 () Bool)

(declare-fun tp!1707045 () Bool)

(assert (=> b!6111611 (= e!3726569 tp!1707045)))

(declare-fun b!6111610 () Bool)

(declare-fun tp!1707046 () Bool)

(declare-fun e!3726568 () Bool)

(assert (=> b!6111610 (= e!3726568 (and (inv!83394 (h!70801 (t!377932 (t!377932 zl!343)))) e!3726569 tp!1707046))))

(assert (=> b!6110682 (= tp!1706810 e!3726568)))

(assert (= b!6111610 b!6111611))

(assert (= (and b!6110682 ((_ is Cons!64353) (t!377932 (t!377932 zl!343)))) b!6111610))

(declare-fun m!6960680 () Bool)

(assert (=> b!6111610 m!6960680))

(declare-fun b!6111615 () Bool)

(declare-fun e!3726570 () Bool)

(declare-fun tp!1707051 () Bool)

(declare-fun tp!1707049 () Bool)

(assert (=> b!6111615 (= e!3726570 (and tp!1707051 tp!1707049))))

(assert (=> b!6110675 (= tp!1706803 e!3726570)))

(declare-fun b!6111614 () Bool)

(declare-fun tp!1707048 () Bool)

(assert (=> b!6111614 (= e!3726570 tp!1707048)))

(declare-fun b!6111612 () Bool)

(assert (=> b!6111612 (= e!3726570 tp_is_empty!41371)))

(declare-fun b!6111613 () Bool)

(declare-fun tp!1707050 () Bool)

(declare-fun tp!1707047 () Bool)

(assert (=> b!6111613 (= e!3726570 (and tp!1707050 tp!1707047))))

(assert (= (and b!6110675 ((_ is ElementMatch!16059) (h!70800 (exprs!5943 setElem!41276)))) b!6111612))

(assert (= (and b!6110675 ((_ is Concat!24904) (h!70800 (exprs!5943 setElem!41276)))) b!6111613))

(assert (= (and b!6110675 ((_ is Star!16059) (h!70800 (exprs!5943 setElem!41276)))) b!6111614))

(assert (= (and b!6110675 ((_ is Union!16059) (h!70800 (exprs!5943 setElem!41276)))) b!6111615))

(declare-fun b!6111616 () Bool)

(declare-fun e!3726571 () Bool)

(declare-fun tp!1707052 () Bool)

(declare-fun tp!1707053 () Bool)

(assert (=> b!6111616 (= e!3726571 (and tp!1707052 tp!1707053))))

(assert (=> b!6110675 (= tp!1706804 e!3726571)))

(assert (= (and b!6110675 ((_ is Cons!64352) (t!377931 (exprs!5943 setElem!41276)))) b!6111616))

(declare-fun b!6111617 () Bool)

(declare-fun e!3726572 () Bool)

(declare-fun tp!1707054 () Bool)

(declare-fun tp!1707055 () Bool)

(assert (=> b!6111617 (= e!3726572 (and tp!1707054 tp!1707055))))

(assert (=> b!6110683 (= tp!1706809 e!3726572)))

(assert (= (and b!6110683 ((_ is Cons!64352) (exprs!5943 (h!70801 (t!377932 zl!343))))) b!6111617))

(declare-fun b!6111621 () Bool)

(declare-fun e!3726573 () Bool)

(declare-fun tp!1707060 () Bool)

(declare-fun tp!1707058 () Bool)

(assert (=> b!6111621 (= e!3726573 (and tp!1707060 tp!1707058))))

(assert (=> b!6110664 (= tp!1706791 e!3726573)))

(declare-fun b!6111620 () Bool)

(declare-fun tp!1707057 () Bool)

(assert (=> b!6111620 (= e!3726573 tp!1707057)))

(declare-fun b!6111618 () Bool)

(assert (=> b!6111618 (= e!3726573 tp_is_empty!41371)))

(declare-fun b!6111619 () Bool)

(declare-fun tp!1707059 () Bool)

(declare-fun tp!1707056 () Bool)

(assert (=> b!6111619 (= e!3726573 (and tp!1707059 tp!1707056))))

(assert (= (and b!6110664 ((_ is ElementMatch!16059) (regOne!32630 (reg!16388 r!7292)))) b!6111618))

(assert (= (and b!6110664 ((_ is Concat!24904) (regOne!32630 (reg!16388 r!7292)))) b!6111619))

(assert (= (and b!6110664 ((_ is Star!16059) (regOne!32630 (reg!16388 r!7292)))) b!6111620))

(assert (= (and b!6110664 ((_ is Union!16059) (regOne!32630 (reg!16388 r!7292)))) b!6111621))

(declare-fun b!6111625 () Bool)

(declare-fun e!3726574 () Bool)

(declare-fun tp!1707065 () Bool)

(declare-fun tp!1707063 () Bool)

(assert (=> b!6111625 (= e!3726574 (and tp!1707065 tp!1707063))))

(assert (=> b!6110664 (= tp!1706788 e!3726574)))

(declare-fun b!6111624 () Bool)

(declare-fun tp!1707062 () Bool)

(assert (=> b!6111624 (= e!3726574 tp!1707062)))

(declare-fun b!6111622 () Bool)

(assert (=> b!6111622 (= e!3726574 tp_is_empty!41371)))

(declare-fun b!6111623 () Bool)

(declare-fun tp!1707064 () Bool)

(declare-fun tp!1707061 () Bool)

(assert (=> b!6111623 (= e!3726574 (and tp!1707064 tp!1707061))))

(assert (= (and b!6110664 ((_ is ElementMatch!16059) (regTwo!32630 (reg!16388 r!7292)))) b!6111622))

(assert (= (and b!6110664 ((_ is Concat!24904) (regTwo!32630 (reg!16388 r!7292)))) b!6111623))

(assert (= (and b!6110664 ((_ is Star!16059) (regTwo!32630 (reg!16388 r!7292)))) b!6111624))

(assert (= (and b!6110664 ((_ is Union!16059) (regTwo!32630 (reg!16388 r!7292)))) b!6111625))

(declare-fun b!6111629 () Bool)

(declare-fun e!3726575 () Bool)

(declare-fun tp!1707070 () Bool)

(declare-fun tp!1707068 () Bool)

(assert (=> b!6111629 (= e!3726575 (and tp!1707070 tp!1707068))))

(assert (=> b!6110665 (= tp!1706789 e!3726575)))

(declare-fun b!6111628 () Bool)

(declare-fun tp!1707067 () Bool)

(assert (=> b!6111628 (= e!3726575 tp!1707067)))

(declare-fun b!6111626 () Bool)

(assert (=> b!6111626 (= e!3726575 tp_is_empty!41371)))

(declare-fun b!6111627 () Bool)

(declare-fun tp!1707069 () Bool)

(declare-fun tp!1707066 () Bool)

(assert (=> b!6111627 (= e!3726575 (and tp!1707069 tp!1707066))))

(assert (= (and b!6110665 ((_ is ElementMatch!16059) (reg!16388 (reg!16388 r!7292)))) b!6111626))

(assert (= (and b!6110665 ((_ is Concat!24904) (reg!16388 (reg!16388 r!7292)))) b!6111627))

(assert (= (and b!6110665 ((_ is Star!16059) (reg!16388 (reg!16388 r!7292)))) b!6111628))

(assert (= (and b!6110665 ((_ is Union!16059) (reg!16388 (reg!16388 r!7292)))) b!6111629))

(declare-fun b!6111633 () Bool)

(declare-fun e!3726576 () Bool)

(declare-fun tp!1707075 () Bool)

(declare-fun tp!1707073 () Bool)

(assert (=> b!6111633 (= e!3726576 (and tp!1707075 tp!1707073))))

(assert (=> b!6110651 (= tp!1706775 e!3726576)))

(declare-fun b!6111632 () Bool)

(declare-fun tp!1707072 () Bool)

(assert (=> b!6111632 (= e!3726576 tp!1707072)))

(declare-fun b!6111630 () Bool)

(assert (=> b!6111630 (= e!3726576 tp_is_empty!41371)))

(declare-fun b!6111631 () Bool)

(declare-fun tp!1707074 () Bool)

(declare-fun tp!1707071 () Bool)

(assert (=> b!6111631 (= e!3726576 (and tp!1707074 tp!1707071))))

(assert (= (and b!6110651 ((_ is ElementMatch!16059) (reg!16388 (regTwo!32630 r!7292)))) b!6111630))

(assert (= (and b!6110651 ((_ is Concat!24904) (reg!16388 (regTwo!32630 r!7292)))) b!6111631))

(assert (= (and b!6110651 ((_ is Star!16059) (reg!16388 (regTwo!32630 r!7292)))) b!6111632))

(assert (= (and b!6110651 ((_ is Union!16059) (reg!16388 (regTwo!32630 r!7292)))) b!6111633))

(declare-fun b!6111637 () Bool)

(declare-fun e!3726577 () Bool)

(declare-fun tp!1707080 () Bool)

(declare-fun tp!1707078 () Bool)

(assert (=> b!6111637 (= e!3726577 (and tp!1707080 tp!1707078))))

(assert (=> b!6110674 (= tp!1706802 e!3726577)))

(declare-fun b!6111636 () Bool)

(declare-fun tp!1707077 () Bool)

(assert (=> b!6111636 (= e!3726577 tp!1707077)))

(declare-fun b!6111634 () Bool)

(assert (=> b!6111634 (= e!3726577 tp_is_empty!41371)))

(declare-fun b!6111635 () Bool)

(declare-fun tp!1707079 () Bool)

(declare-fun tp!1707076 () Bool)

(assert (=> b!6111635 (= e!3726577 (and tp!1707079 tp!1707076))))

(assert (= (and b!6110674 ((_ is ElementMatch!16059) (regOne!32631 (regTwo!32631 r!7292)))) b!6111634))

(assert (= (and b!6110674 ((_ is Concat!24904) (regOne!32631 (regTwo!32631 r!7292)))) b!6111635))

(assert (= (and b!6110674 ((_ is Star!16059) (regOne!32631 (regTwo!32631 r!7292)))) b!6111636))

(assert (= (and b!6110674 ((_ is Union!16059) (regOne!32631 (regTwo!32631 r!7292)))) b!6111637))

(declare-fun b!6111641 () Bool)

(declare-fun e!3726578 () Bool)

(declare-fun tp!1707085 () Bool)

(declare-fun tp!1707083 () Bool)

(assert (=> b!6111641 (= e!3726578 (and tp!1707085 tp!1707083))))

(assert (=> b!6110674 (= tp!1706800 e!3726578)))

(declare-fun b!6111640 () Bool)

(declare-fun tp!1707082 () Bool)

(assert (=> b!6111640 (= e!3726578 tp!1707082)))

(declare-fun b!6111638 () Bool)

(assert (=> b!6111638 (= e!3726578 tp_is_empty!41371)))

(declare-fun b!6111639 () Bool)

(declare-fun tp!1707084 () Bool)

(declare-fun tp!1707081 () Bool)

(assert (=> b!6111639 (= e!3726578 (and tp!1707084 tp!1707081))))

(assert (= (and b!6110674 ((_ is ElementMatch!16059) (regTwo!32631 (regTwo!32631 r!7292)))) b!6111638))

(assert (= (and b!6110674 ((_ is Concat!24904) (regTwo!32631 (regTwo!32631 r!7292)))) b!6111639))

(assert (= (and b!6110674 ((_ is Star!16059) (regTwo!32631 (regTwo!32631 r!7292)))) b!6111640))

(assert (= (and b!6110674 ((_ is Union!16059) (regTwo!32631 (regTwo!32631 r!7292)))) b!6111641))

(declare-fun b!6111645 () Bool)

(declare-fun e!3726579 () Bool)

(declare-fun tp!1707090 () Bool)

(declare-fun tp!1707088 () Bool)

(assert (=> b!6111645 (= e!3726579 (and tp!1707090 tp!1707088))))

(assert (=> b!6110672 (= tp!1706801 e!3726579)))

(declare-fun b!6111644 () Bool)

(declare-fun tp!1707087 () Bool)

(assert (=> b!6111644 (= e!3726579 tp!1707087)))

(declare-fun b!6111642 () Bool)

(assert (=> b!6111642 (= e!3726579 tp_is_empty!41371)))

(declare-fun b!6111643 () Bool)

(declare-fun tp!1707089 () Bool)

(declare-fun tp!1707086 () Bool)

(assert (=> b!6111643 (= e!3726579 (and tp!1707089 tp!1707086))))

(assert (= (and b!6110672 ((_ is ElementMatch!16059) (regOne!32630 (regTwo!32631 r!7292)))) b!6111642))

(assert (= (and b!6110672 ((_ is Concat!24904) (regOne!32630 (regTwo!32631 r!7292)))) b!6111643))

(assert (= (and b!6110672 ((_ is Star!16059) (regOne!32630 (regTwo!32631 r!7292)))) b!6111644))

(assert (= (and b!6110672 ((_ is Union!16059) (regOne!32630 (regTwo!32631 r!7292)))) b!6111645))

(declare-fun b!6111649 () Bool)

(declare-fun e!3726580 () Bool)

(declare-fun tp!1707095 () Bool)

(declare-fun tp!1707093 () Bool)

(assert (=> b!6111649 (= e!3726580 (and tp!1707095 tp!1707093))))

(assert (=> b!6110672 (= tp!1706798 e!3726580)))

(declare-fun b!6111648 () Bool)

(declare-fun tp!1707092 () Bool)

(assert (=> b!6111648 (= e!3726580 tp!1707092)))

(declare-fun b!6111646 () Bool)

(assert (=> b!6111646 (= e!3726580 tp_is_empty!41371)))

(declare-fun b!6111647 () Bool)

(declare-fun tp!1707094 () Bool)

(declare-fun tp!1707091 () Bool)

(assert (=> b!6111647 (= e!3726580 (and tp!1707094 tp!1707091))))

(assert (= (and b!6110672 ((_ is ElementMatch!16059) (regTwo!32630 (regTwo!32631 r!7292)))) b!6111646))

(assert (= (and b!6110672 ((_ is Concat!24904) (regTwo!32630 (regTwo!32631 r!7292)))) b!6111647))

(assert (= (and b!6110672 ((_ is Star!16059) (regTwo!32630 (regTwo!32631 r!7292)))) b!6111648))

(assert (= (and b!6110672 ((_ is Union!16059) (regTwo!32630 (regTwo!32631 r!7292)))) b!6111649))

(declare-fun b!6111653 () Bool)

(declare-fun e!3726581 () Bool)

(declare-fun tp!1707100 () Bool)

(declare-fun tp!1707098 () Bool)

(assert (=> b!6111653 (= e!3726581 (and tp!1707100 tp!1707098))))

(assert (=> b!6110650 (= tp!1706777 e!3726581)))

(declare-fun b!6111652 () Bool)

(declare-fun tp!1707097 () Bool)

(assert (=> b!6111652 (= e!3726581 tp!1707097)))

(declare-fun b!6111650 () Bool)

(assert (=> b!6111650 (= e!3726581 tp_is_empty!41371)))

(declare-fun b!6111651 () Bool)

(declare-fun tp!1707099 () Bool)

(declare-fun tp!1707096 () Bool)

(assert (=> b!6111651 (= e!3726581 (and tp!1707099 tp!1707096))))

(assert (= (and b!6110650 ((_ is ElementMatch!16059) (regOne!32630 (regTwo!32630 r!7292)))) b!6111650))

(assert (= (and b!6110650 ((_ is Concat!24904) (regOne!32630 (regTwo!32630 r!7292)))) b!6111651))

(assert (= (and b!6110650 ((_ is Star!16059) (regOne!32630 (regTwo!32630 r!7292)))) b!6111652))

(assert (= (and b!6110650 ((_ is Union!16059) (regOne!32630 (regTwo!32630 r!7292)))) b!6111653))

(declare-fun b!6111657 () Bool)

(declare-fun e!3726582 () Bool)

(declare-fun tp!1707105 () Bool)

(declare-fun tp!1707103 () Bool)

(assert (=> b!6111657 (= e!3726582 (and tp!1707105 tp!1707103))))

(assert (=> b!6110650 (= tp!1706774 e!3726582)))

(declare-fun b!6111656 () Bool)

(declare-fun tp!1707102 () Bool)

(assert (=> b!6111656 (= e!3726582 tp!1707102)))

(declare-fun b!6111654 () Bool)

(assert (=> b!6111654 (= e!3726582 tp_is_empty!41371)))

(declare-fun b!6111655 () Bool)

(declare-fun tp!1707104 () Bool)

(declare-fun tp!1707101 () Bool)

(assert (=> b!6111655 (= e!3726582 (and tp!1707104 tp!1707101))))

(assert (= (and b!6110650 ((_ is ElementMatch!16059) (regTwo!32630 (regTwo!32630 r!7292)))) b!6111654))

(assert (= (and b!6110650 ((_ is Concat!24904) (regTwo!32630 (regTwo!32630 r!7292)))) b!6111655))

(assert (= (and b!6110650 ((_ is Star!16059) (regTwo!32630 (regTwo!32630 r!7292)))) b!6111656))

(assert (= (and b!6110650 ((_ is Union!16059) (regTwo!32630 (regTwo!32630 r!7292)))) b!6111657))

(declare-fun b!6111661 () Bool)

(declare-fun e!3726583 () Bool)

(declare-fun tp!1707110 () Bool)

(declare-fun tp!1707108 () Bool)

(assert (=> b!6111661 (= e!3726583 (and tp!1707110 tp!1707108))))

(assert (=> b!6110673 (= tp!1706799 e!3726583)))

(declare-fun b!6111660 () Bool)

(declare-fun tp!1707107 () Bool)

(assert (=> b!6111660 (= e!3726583 tp!1707107)))

(declare-fun b!6111658 () Bool)

(assert (=> b!6111658 (= e!3726583 tp_is_empty!41371)))

(declare-fun b!6111659 () Bool)

(declare-fun tp!1707109 () Bool)

(declare-fun tp!1707106 () Bool)

(assert (=> b!6111659 (= e!3726583 (and tp!1707109 tp!1707106))))

(assert (= (and b!6110673 ((_ is ElementMatch!16059) (reg!16388 (regTwo!32631 r!7292)))) b!6111658))

(assert (= (and b!6110673 ((_ is Concat!24904) (reg!16388 (regTwo!32631 r!7292)))) b!6111659))

(assert (= (and b!6110673 ((_ is Star!16059) (reg!16388 (regTwo!32631 r!7292)))) b!6111660))

(assert (= (and b!6110673 ((_ is Union!16059) (reg!16388 (regTwo!32631 r!7292)))) b!6111661))

(declare-fun b!6111665 () Bool)

(declare-fun e!3726584 () Bool)

(declare-fun tp!1707115 () Bool)

(declare-fun tp!1707113 () Bool)

(assert (=> b!6111665 (= e!3726584 (and tp!1707115 tp!1707113))))

(assert (=> b!6110652 (= tp!1706778 e!3726584)))

(declare-fun b!6111664 () Bool)

(declare-fun tp!1707112 () Bool)

(assert (=> b!6111664 (= e!3726584 tp!1707112)))

(declare-fun b!6111662 () Bool)

(assert (=> b!6111662 (= e!3726584 tp_is_empty!41371)))

(declare-fun b!6111663 () Bool)

(declare-fun tp!1707114 () Bool)

(declare-fun tp!1707111 () Bool)

(assert (=> b!6111663 (= e!3726584 (and tp!1707114 tp!1707111))))

(assert (= (and b!6110652 ((_ is ElementMatch!16059) (regOne!32631 (regTwo!32630 r!7292)))) b!6111662))

(assert (= (and b!6110652 ((_ is Concat!24904) (regOne!32631 (regTwo!32630 r!7292)))) b!6111663))

(assert (= (and b!6110652 ((_ is Star!16059) (regOne!32631 (regTwo!32630 r!7292)))) b!6111664))

(assert (= (and b!6110652 ((_ is Union!16059) (regOne!32631 (regTwo!32630 r!7292)))) b!6111665))

(declare-fun b!6111669 () Bool)

(declare-fun e!3726585 () Bool)

(declare-fun tp!1707120 () Bool)

(declare-fun tp!1707118 () Bool)

(assert (=> b!6111669 (= e!3726585 (and tp!1707120 tp!1707118))))

(assert (=> b!6110652 (= tp!1706776 e!3726585)))

(declare-fun b!6111668 () Bool)

(declare-fun tp!1707117 () Bool)

(assert (=> b!6111668 (= e!3726585 tp!1707117)))

(declare-fun b!6111666 () Bool)

(assert (=> b!6111666 (= e!3726585 tp_is_empty!41371)))

(declare-fun b!6111667 () Bool)

(declare-fun tp!1707119 () Bool)

(declare-fun tp!1707116 () Bool)

(assert (=> b!6111667 (= e!3726585 (and tp!1707119 tp!1707116))))

(assert (= (and b!6110652 ((_ is ElementMatch!16059) (regTwo!32631 (regTwo!32630 r!7292)))) b!6111666))

(assert (= (and b!6110652 ((_ is Concat!24904) (regTwo!32631 (regTwo!32630 r!7292)))) b!6111667))

(assert (= (and b!6110652 ((_ is Star!16059) (regTwo!32631 (regTwo!32630 r!7292)))) b!6111668))

(assert (= (and b!6110652 ((_ is Union!16059) (regTwo!32631 (regTwo!32630 r!7292)))) b!6111669))

(declare-fun b!6111673 () Bool)

(declare-fun e!3726586 () Bool)

(declare-fun tp!1707125 () Bool)

(declare-fun tp!1707123 () Bool)

(assert (=> b!6111673 (= e!3726586 (and tp!1707125 tp!1707123))))

(assert (=> b!6110666 (= tp!1706792 e!3726586)))

(declare-fun b!6111672 () Bool)

(declare-fun tp!1707122 () Bool)

(assert (=> b!6111672 (= e!3726586 tp!1707122)))

(declare-fun b!6111670 () Bool)

(assert (=> b!6111670 (= e!3726586 tp_is_empty!41371)))

(declare-fun b!6111671 () Bool)

(declare-fun tp!1707124 () Bool)

(declare-fun tp!1707121 () Bool)

(assert (=> b!6111671 (= e!3726586 (and tp!1707124 tp!1707121))))

(assert (= (and b!6110666 ((_ is ElementMatch!16059) (regOne!32631 (reg!16388 r!7292)))) b!6111670))

(assert (= (and b!6110666 ((_ is Concat!24904) (regOne!32631 (reg!16388 r!7292)))) b!6111671))

(assert (= (and b!6110666 ((_ is Star!16059) (regOne!32631 (reg!16388 r!7292)))) b!6111672))

(assert (= (and b!6110666 ((_ is Union!16059) (regOne!32631 (reg!16388 r!7292)))) b!6111673))

(declare-fun b!6111677 () Bool)

(declare-fun e!3726587 () Bool)

(declare-fun tp!1707130 () Bool)

(declare-fun tp!1707128 () Bool)

(assert (=> b!6111677 (= e!3726587 (and tp!1707130 tp!1707128))))

(assert (=> b!6110666 (= tp!1706790 e!3726587)))

(declare-fun b!6111676 () Bool)

(declare-fun tp!1707127 () Bool)

(assert (=> b!6111676 (= e!3726587 tp!1707127)))

(declare-fun b!6111674 () Bool)

(assert (=> b!6111674 (= e!3726587 tp_is_empty!41371)))

(declare-fun b!6111675 () Bool)

(declare-fun tp!1707129 () Bool)

(declare-fun tp!1707126 () Bool)

(assert (=> b!6111675 (= e!3726587 (and tp!1707129 tp!1707126))))

(assert (= (and b!6110666 ((_ is ElementMatch!16059) (regTwo!32631 (reg!16388 r!7292)))) b!6111674))

(assert (= (and b!6110666 ((_ is Concat!24904) (regTwo!32631 (reg!16388 r!7292)))) b!6111675))

(assert (= (and b!6110666 ((_ is Star!16059) (regTwo!32631 (reg!16388 r!7292)))) b!6111676))

(assert (= (and b!6110666 ((_ is Union!16059) (regTwo!32631 (reg!16388 r!7292)))) b!6111677))

(declare-fun b_lambda!232779 () Bool)

(assert (= b_lambda!232749 (or b!6109974 b_lambda!232779)))

(assert (=> d!1915017 d!1914899))

(declare-fun b_lambda!232781 () Bool)

(assert (= b_lambda!232771 (or d!1914801 b_lambda!232781)))

(declare-fun bs!1517033 () Bool)

(declare-fun d!1915281 () Bool)

(assert (= bs!1517033 (and d!1915281 d!1914801)))

(assert (=> bs!1517033 (= (dynLambda!25342 lambda!332832 (h!70800 (unfocusZipperList!1480 zl!343))) (validRegex!7795 (h!70800 (unfocusZipperList!1480 zl!343))))))

(declare-fun m!6960682 () Bool)

(assert (=> bs!1517033 m!6960682))

(assert (=> b!6111373 d!1915281))

(declare-fun b_lambda!232783 () Bool)

(assert (= b_lambda!232775 (or d!1914897 b_lambda!232783)))

(declare-fun bs!1517034 () Bool)

(declare-fun d!1915283 () Bool)

(assert (= bs!1517034 (and d!1915283 d!1914897)))

(assert (=> bs!1517034 (= (dynLambda!25342 lambda!332875 (h!70800 (exprs!5943 (h!70801 zl!343)))) (validRegex!7795 (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(declare-fun m!6960684 () Bool)

(assert (=> bs!1517034 m!6960684))

(assert (=> b!6111402 d!1915283))

(declare-fun b_lambda!232785 () Bool)

(assert (= b_lambda!232773 (or d!1914783 b_lambda!232785)))

(declare-fun bs!1517035 () Bool)

(declare-fun d!1915285 () Bool)

(assert (= bs!1517035 (and d!1915285 d!1914783)))

(assert (=> bs!1517035 (= (dynLambda!25342 lambda!332823 (h!70800 (exprs!5943 setElem!41276))) (validRegex!7795 (h!70800 (exprs!5943 setElem!41276))))))

(declare-fun m!6960686 () Bool)

(assert (=> bs!1517035 m!6960686))

(assert (=> b!6111396 d!1915285))

(declare-fun b_lambda!232787 () Bool)

(assert (= b_lambda!232751 (or d!1914887 b_lambda!232787)))

(declare-fun bs!1517036 () Bool)

(declare-fun d!1915287 () Bool)

(assert (= bs!1517036 (and d!1915287 d!1914887)))

(assert (=> bs!1517036 (= (dynLambda!25342 lambda!332874 (h!70800 (exprs!5943 lt!2329957))) (validRegex!7795 (h!70800 (exprs!5943 lt!2329957))))))

(declare-fun m!6960688 () Bool)

(assert (=> bs!1517036 m!6960688))

(assert (=> b!6110891 d!1915287))

(declare-fun b_lambda!232789 () Bool)

(assert (= b_lambda!232747 (or d!1914877 b_lambda!232789)))

(declare-fun bs!1517037 () Bool)

(declare-fun d!1915289 () Bool)

(assert (= bs!1517037 (and d!1915289 d!1914877)))

(assert (=> bs!1517037 (= (dynLambda!25342 lambda!332867 (h!70800 (exprs!5943 (h!70801 zl!343)))) (validRegex!7795 (h!70800 (exprs!5943 (h!70801 zl!343)))))))

(assert (=> bs!1517037 m!6960684))

(assert (=> b!6110875 d!1915289))

(declare-fun b_lambda!232791 () Bool)

(assert (= b_lambda!232777 (or d!1914813 b_lambda!232791)))

(declare-fun bs!1517038 () Bool)

(declare-fun d!1915291 () Bool)

(assert (= bs!1517038 (and d!1915291 d!1914813)))

(assert (=> bs!1517038 (= (dynLambda!25342 lambda!332835 (h!70800 lt!2329992)) (validRegex!7795 (h!70800 lt!2329992)))))

(declare-fun m!6960690 () Bool)

(assert (=> bs!1517038 m!6960690))

(assert (=> b!6111404 d!1915291))

(check-sat (not b!6111649) (not d!1915153) (not b!6111597) (not b!6111576) (not bs!1517035) (not b!6111332) (not b!6111610) (not b!6110995) (not setNonEmpty!41290) (not b!6111475) (not b!6111599) (not b!6111651) (not b!6111624) (not b!6111023) (not b!6111430) (not bm!505656) (not b!6111559) (not b!6110925) (not b!6111578) (not d!1915233) (not b!6111623) (not d!1915269) (not b!6111453) (not d!1915239) (not b!6111039) (not b!6111628) (not b!6111473) (not b!6111601) (not b!6111436) (not b!6111025) (not b!6111615) (not b!6111565) (not b_lambda!232789) (not b!6111523) (not d!1915229) (not d!1915041) (not d!1915117) (not bm!505743) (not bm!505762) (not d!1915109) (not d!1915251) (not d!1915073) (not b_lambda!232735) (not b!6111447) (not b!6110876) (not bm!505765) (not d!1915031) (not bm!505737) (not b!6111591) (not b!6110947) (not d!1915119) (not b!6111426) (not b!6111130) (not b!6111406) (not d!1915195) (not b!6111677) (not b!6111640) (not b!6111363) (not b!6111627) (not b!6111567) (not b!6111140) (not b!6111589) (not b!6111613) (not b!6111443) (not b!6111582) (not b!6111616) (not d!1915257) (not b!6110923) (not b!6111427) (not d!1915241) (not b!6111588) (not b!6111603) (not d!1915121) (not b!6111648) (not d!1915243) (not b!6110950) (not b!6110994) (not b!6111655) (not b!6111592) (not b!6111397) (not b!6111457) (not b!6110921) (not bm!505760) (not d!1915059) (not bm!505750) (not d!1915227) (not d!1915199) (not b!6111635) (not b!6111134) (not b!6111066) (not bm!505671) (not b!6111647) (not b!6111131) (not d!1915167) (not bm!505664) (not bm!505744) (not b!6111604) (not bs!1517037) (not b!6111333) (not b!6111595) (not b!6111499) (not b!6111551) (not b!6111668) (not b!6111637) (not d!1915277) (not b!6110919) (not bm!505644) (not b!6111511) (not b!6111003) (not b!6111583) (not b!6111643) (not bm!505729) (not b!6110952) (not b!6111656) (not b!6111561) (not b!6111619) (not b!6111645) (not bm!505736) (not b!6111308) (not b!6110897) (not b_lambda!232785) (not setNonEmpty!41288) (not b!6111669) (not b!6111437) (not b!6111652) (not bm!505768) (not bm!505739) (not b!6111399) (not d!1915231) (not b!6111609) (not b!6111566) (not bm!505681) (not bm!505754) (not b!6111607) (not b!6110853) (not b!6111659) (not bm!505766) (not bm!505684) (not b!6111661) (not b!6111675) (not b!6111454) (not b!6111580) (not b!6111676) (not bm!505653) (not b!6111509) (not b!6111653) (not b!6111485) (not b!6111456) (not bs!1517036) (not b!6111625) (not d!1915111) (not bm!505643) (not b!6111605) (not b!6111586) (not d!1915253) (not b!6111458) (not b!6111636) (not bm!505672) (not b!6111405) (not d!1915065) (not bm!505738) (not bm!505769) (not bm!505654) (not bm!505735) (not b!6111545) (not b!6111442) (not b!6110948) (not b!6111672) (not b!6111124) (not bs!1517034) (not b!6111593) (not bm!505665) (not b!6111374) (not b!6111488) (not b!6111562) (not b!6111620) (not b!6111587) (not b!6111574) (not d!1915193) (not b_lambda!232779) (not d!1915053) (not bm!505745) (not b!6111400) (not b!6111448) tp_is_empty!41371 (not b!6111632) (not b!6111038) (not b!6111534) (not b!6111480) (not d!1915017) (not b!6111463) (not b!6111138) (not b!6111641) (not d!1915095) (not b!6111555) (not bm!505753) (not b!6111633) (not b!6111494) (not b!6111621) (not d!1915151) (not d!1915067) (not b!6111639) (not b!6111228) (not bs!1517038) (not b!6111570) (not b!6111564) (not b!6110916) (not b!6111614) (not b!6111608) (not b!6111552) (not d!1915033) (not b!6111568) (not bm!505723) (not b!6111021) (not b!6111024) (not bm!505747) (not b!6110954) (not b!6111671) (not b!6110892) (not b_lambda!232783) (not bm!505683) (not b!6111492) (not b!6111557) (not d!1915219) (not d!1915209) (not d!1915079) (not b!6111575) (not b!6110953) (not b!6111596) (not b!6111422) (not b!6111412) (not b!6111611) (not b!6110964) (not b_lambda!232791) (not bm!505740) (not b!6111667) (not b!6111452) (not b!6111403) (not b!6111600) (not bm!505680) (not b!6111629) (not d!1915085) (not bm!505746) (not bm!505749) (not b!6111484) (not bm!505741) (not b!6111434) (not b!6111631) (not b!6111033) (not b!6111002) (not bs!1517033) (not b!6111644) (not b!6111420) (not d!1915245) (not d!1915221) (not b!6111579) (not bm!505728) (not b!6111432) (not bm!505667) (not bm!505756) (not b!6111136) (not b!6111664) (not b!6110915) (not b!6111421) (not b!6111665) (not b!6111584) (not b!6111368) (not bm!505724) (not b!6111572) (not b!6111451) (not b!6111407) (not b_lambda!232781) (not b!6111020) (not b!6110949) (not b!6111479) (not b!6111490) (not b!6111663) (not b!6111617) (not b!6111571) (not b!6111660) (not b!6111413) (not bm!505759) (not b!6111657) (not b_lambda!232787) (not bm!505727) (not d!1915211) (not b!6111673) (not b!6111026) (not d!1915107))
(check-sat)
