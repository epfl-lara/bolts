; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!576482 () Bool)

(assert start!576482)

(declare-fun b!5524067 () Bool)

(assert (=> b!5524067 true))

(assert (=> b!5524067 true))

(declare-fun lambda!296136 () Int)

(declare-fun lambda!296135 () Int)

(assert (=> b!5524067 (not (= lambda!296136 lambda!296135))))

(assert (=> b!5524067 true))

(assert (=> b!5524067 true))

(declare-fun b!5524057 () Bool)

(assert (=> b!5524057 true))

(declare-fun b!5524040 () Bool)

(declare-fun tp!1520038 () Bool)

(declare-datatypes ((C!31292 0))(
  ( (C!31293 (val!25348 Int)) )
))
(declare-datatypes ((Regex!15511 0))(
  ( (ElementMatch!15511 (c!966149 C!31292)) (Concat!24356 (regOne!31534 Regex!15511) (regTwo!31534 Regex!15511)) (EmptyExpr!15511) (Star!15511 (reg!15840 Regex!15511)) (EmptyLang!15511) (Union!15511 (regOne!31535 Regex!15511) (regTwo!31535 Regex!15511)) )
))
(declare-datatypes ((List!62832 0))(
  ( (Nil!62708) (Cons!62708 (h!69156 Regex!15511) (t!376085 List!62832)) )
))
(declare-datatypes ((Context!9790 0))(
  ( (Context!9791 (exprs!5395 List!62832)) )
))
(declare-datatypes ((List!62833 0))(
  ( (Nil!62709) (Cons!62709 (h!69157 Context!9790) (t!376086 List!62833)) )
))
(declare-fun zl!343 () List!62833)

(declare-fun e!3415175 () Bool)

(declare-fun e!3415181 () Bool)

(declare-fun inv!82024 (Context!9790) Bool)

(assert (=> b!5524040 (= e!3415175 (and (inv!82024 (h!69157 zl!343)) e!3415181 tp!1520038))))

(declare-fun b!5524041 () Bool)

(declare-fun res!2352551 () Bool)

(declare-fun e!3415180 () Bool)

(assert (=> b!5524041 (=> res!2352551 e!3415180)))

(declare-fun lt!2247113 () Context!9790)

(declare-fun lt!2247106 () Context!9790)

(declare-fun contextDepth!107 (Context!9790) Int)

(assert (=> b!5524041 (= res!2352551 (>= (contextDepth!107 lt!2247113) (contextDepth!107 lt!2247106)))))

(declare-fun b!5524042 () Bool)

(declare-fun e!3415173 () Bool)

(declare-fun e!3415176 () Bool)

(assert (=> b!5524042 (= e!3415173 e!3415176)))

(declare-fun res!2352550 () Bool)

(assert (=> b!5524042 (=> res!2352550 e!3415176)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2247094 () (InoxSet Context!9790))

(declare-fun lt!2247089 () (InoxSet Context!9790))

(assert (=> b!5524042 (= res!2352550 (not (= lt!2247094 lt!2247089)))))

(declare-fun r!7292 () Regex!15511)

(declare-datatypes ((List!62834 0))(
  ( (Nil!62710) (Cons!62710 (h!69158 C!31292) (t!376087 List!62834)) )
))
(declare-fun s!2326 () List!62834)

(declare-fun lt!2247098 () Context!9790)

(declare-fun derivationStepZipperDown!853 (Regex!15511 Context!9790 C!31292) (InoxSet Context!9790))

(assert (=> b!5524042 (= lt!2247089 (derivationStepZipperDown!853 r!7292 lt!2247098 (h!69158 s!2326)))))

(assert (=> b!5524042 (= lt!2247098 (Context!9791 Nil!62708))))

(declare-fun derivationStepZipperUp!779 (Context!9790 C!31292) (InoxSet Context!9790))

(assert (=> b!5524042 (= lt!2247094 (derivationStepZipperUp!779 lt!2247106 (h!69158 s!2326)))))

(assert (=> b!5524042 (= lt!2247106 (Context!9791 (Cons!62708 r!7292 Nil!62708)))))

(declare-fun lt!2247097 () (InoxSet Context!9790))

(declare-fun z!1189 () (InoxSet Context!9790))

(declare-fun derivationStepZipper!1616 ((InoxSet Context!9790) C!31292) (InoxSet Context!9790))

(assert (=> b!5524042 (= lt!2247097 (derivationStepZipper!1616 z!1189 (h!69158 s!2326)))))

(declare-fun b!5524043 () Bool)

(declare-fun e!3415182 () Bool)

(assert (=> b!5524043 (= e!3415182 e!3415180)))

(declare-fun res!2352540 () Bool)

(assert (=> b!5524043 (=> res!2352540 e!3415180)))

(declare-fun lt!2247102 () Bool)

(declare-fun matchZipper!1669 ((InoxSet Context!9790) List!62834) Bool)

(assert (=> b!5524043 (= res!2352540 (not (= lt!2247102 (matchZipper!1669 lt!2247097 (t!376087 s!2326)))))))

(declare-fun lt!2247110 () Bool)

(assert (=> b!5524043 (= lt!2247110 lt!2247102)))

(declare-fun e!3415179 () Bool)

(assert (=> b!5524043 (= lt!2247102 e!3415179)))

(declare-fun res!2352544 () Bool)

(assert (=> b!5524043 (=> res!2352544 e!3415179)))

(declare-fun lt!2247088 () Bool)

(assert (=> b!5524043 (= res!2352544 lt!2247088)))

(declare-fun lt!2247093 () (InoxSet Context!9790))

(assert (=> b!5524043 (= lt!2247110 (matchZipper!1669 lt!2247093 (t!376087 s!2326)))))

(declare-fun lt!2247108 () (InoxSet Context!9790))

(assert (=> b!5524043 (= lt!2247088 (matchZipper!1669 lt!2247108 (t!376087 s!2326)))))

(declare-fun lt!2247095 () (InoxSet Context!9790))

(declare-datatypes ((Unit!155482 0))(
  ( (Unit!155483) )
))
(declare-fun lt!2247105 () Unit!155482)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!558 ((InoxSet Context!9790) (InoxSet Context!9790) List!62834) Unit!155482)

(assert (=> b!5524043 (= lt!2247105 (lemmaZipperConcatMatchesSameAsBothZippers!558 lt!2247108 lt!2247095 (t!376087 s!2326)))))

(declare-fun b!5524044 () Bool)

(declare-fun res!2352541 () Bool)

(declare-fun e!3415178 () Bool)

(assert (=> b!5524044 (=> res!2352541 e!3415178)))

(declare-fun generalisedConcat!1126 (List!62832) Regex!15511)

(assert (=> b!5524044 (= res!2352541 (not (= r!7292 (generalisedConcat!1126 (exprs!5395 (h!69157 zl!343))))))))

(declare-fun e!3415171 () Bool)

(declare-fun setElem!36731 () Context!9790)

(declare-fun setRes!36731 () Bool)

(declare-fun setNonEmpty!36731 () Bool)

(declare-fun tp!1520040 () Bool)

(assert (=> setNonEmpty!36731 (= setRes!36731 (and tp!1520040 (inv!82024 setElem!36731) e!3415171))))

(declare-fun setRest!36731 () (InoxSet Context!9790))

(assert (=> setNonEmpty!36731 (= z!1189 ((_ map or) (store ((as const (Array Context!9790 Bool)) false) setElem!36731 true) setRest!36731))))

(declare-fun b!5524045 () Bool)

(declare-fun res!2352549 () Bool)

(assert (=> b!5524045 (=> res!2352549 e!3415180)))

(declare-fun lt!2247091 () (InoxSet Context!9790))

(declare-fun lt!2247090 () (InoxSet Context!9790))

(assert (=> b!5524045 (= res!2352549 (or (not (= lt!2247090 ((_ map or) lt!2247108 lt!2247091))) (not (= lt!2247090 lt!2247093)) (not (= lt!2247090 lt!2247097))))))

(declare-fun b!5524046 () Bool)

(declare-fun zipperDepth!194 (List!62833) Int)

(assert (=> b!5524046 (= e!3415180 (< (zipperDepth!194 (Cons!62709 lt!2247113 Nil!62709)) (zipperDepth!194 (Cons!62709 lt!2247106 Nil!62709))))))

(declare-fun b!5524047 () Bool)

(declare-fun res!2352542 () Bool)

(assert (=> b!5524047 (=> res!2352542 e!3415178)))

(declare-fun isEmpty!34493 (List!62833) Bool)

(assert (=> b!5524047 (= res!2352542 (not (isEmpty!34493 (t!376086 zl!343))))))

(declare-fun b!5524048 () Bool)

(declare-fun res!2352545 () Bool)

(assert (=> b!5524048 (=> res!2352545 e!3415178)))

(declare-fun generalisedUnion!1374 (List!62832) Regex!15511)

(declare-fun unfocusZipperList!939 (List!62833) List!62832)

(assert (=> b!5524048 (= res!2352545 (not (= r!7292 (generalisedUnion!1374 (unfocusZipperList!939 zl!343)))))))

(declare-fun b!5524049 () Bool)

(declare-fun res!2352559 () Bool)

(assert (=> b!5524049 (=> res!2352559 e!3415173)))

(declare-fun isEmpty!34494 (List!62832) Bool)

(assert (=> b!5524049 (= res!2352559 (not (isEmpty!34494 (t!376085 (exprs!5395 (h!69157 zl!343))))))))

(declare-fun b!5524050 () Bool)

(declare-fun res!2352555 () Bool)

(declare-fun e!3415169 () Bool)

(assert (=> b!5524050 (=> (not res!2352555) (not e!3415169))))

(declare-fun unfocusZipper!1253 (List!62833) Regex!15511)

(assert (=> b!5524050 (= res!2352555 (= r!7292 (unfocusZipper!1253 zl!343)))))

(declare-fun b!5524051 () Bool)

(declare-fun e!3415172 () Bool)

(declare-fun e!3415174 () Bool)

(assert (=> b!5524051 (= e!3415172 e!3415174)))

(declare-fun res!2352552 () Bool)

(assert (=> b!5524051 (=> res!2352552 e!3415174)))

(declare-fun nullable!5545 (Regex!15511) Bool)

(assert (=> b!5524051 (= res!2352552 (not (nullable!5545 (regOne!31534 r!7292))))))

(assert (=> b!5524051 (= lt!2247095 (derivationStepZipperDown!853 (regTwo!31534 r!7292) lt!2247098 (h!69158 s!2326)))))

(declare-fun lt!2247103 () Context!9790)

(assert (=> b!5524051 (= lt!2247108 (derivationStepZipperDown!853 (regOne!31534 r!7292) lt!2247103 (h!69158 s!2326)))))

(declare-fun lambda!296137 () Int)

(declare-fun lt!2247109 () (InoxSet Context!9790))

(declare-fun flatMap!1124 ((InoxSet Context!9790) Int) (InoxSet Context!9790))

(assert (=> b!5524051 (= (flatMap!1124 lt!2247109 lambda!296137) (derivationStepZipperUp!779 lt!2247103 (h!69158 s!2326)))))

(declare-fun lt!2247099 () Unit!155482)

(declare-fun lemmaFlatMapOnSingletonSet!656 ((InoxSet Context!9790) Context!9790 Int) Unit!155482)

(assert (=> b!5524051 (= lt!2247099 (lemmaFlatMapOnSingletonSet!656 lt!2247109 lt!2247103 lambda!296137))))

(declare-fun lt!2247111 () (InoxSet Context!9790))

(assert (=> b!5524051 (= (flatMap!1124 lt!2247111 lambda!296137) (derivationStepZipperUp!779 lt!2247113 (h!69158 s!2326)))))

(declare-fun lt!2247100 () Unit!155482)

(assert (=> b!5524051 (= lt!2247100 (lemmaFlatMapOnSingletonSet!656 lt!2247111 lt!2247113 lambda!296137))))

(assert (=> b!5524051 (= lt!2247091 (derivationStepZipperUp!779 lt!2247103 (h!69158 s!2326)))))

(assert (=> b!5524051 (= lt!2247090 (derivationStepZipperUp!779 lt!2247113 (h!69158 s!2326)))))

(assert (=> b!5524051 (= lt!2247109 (store ((as const (Array Context!9790 Bool)) false) lt!2247103 true))))

(declare-fun lt!2247092 () List!62832)

(assert (=> b!5524051 (= lt!2247103 (Context!9791 lt!2247092))))

(assert (=> b!5524051 (= lt!2247111 (store ((as const (Array Context!9790 Bool)) false) lt!2247113 true))))

(assert (=> b!5524051 (= lt!2247113 (Context!9791 (Cons!62708 (regOne!31534 r!7292) lt!2247092)))))

(assert (=> b!5524051 (= lt!2247092 (Cons!62708 (regTwo!31534 r!7292) Nil!62708))))

(declare-fun setIsEmpty!36731 () Bool)

(assert (=> setIsEmpty!36731 setRes!36731))

(declare-fun b!5524052 () Bool)

(declare-fun tp!1520042 () Bool)

(assert (=> b!5524052 (= e!3415171 tp!1520042)))

(declare-fun b!5524053 () Bool)

(declare-fun res!2352548 () Bool)

(assert (=> b!5524053 (=> res!2352548 e!3415178)))

(get-info :version)

(assert (=> b!5524053 (= res!2352548 (or ((_ is EmptyExpr!15511) r!7292) ((_ is EmptyLang!15511) r!7292) ((_ is ElementMatch!15511) r!7292) ((_ is Union!15511) r!7292) (not ((_ is Concat!24356) r!7292))))))

(declare-fun b!5524054 () Bool)

(declare-fun res!2352547 () Bool)

(assert (=> b!5524054 (=> res!2352547 e!3415180)))

(assert (=> b!5524054 (= res!2352547 (not (= (matchZipper!1669 lt!2247109 s!2326) (matchZipper!1669 (derivationStepZipper!1616 lt!2247109 (h!69158 s!2326)) (t!376087 s!2326)))))))

(declare-fun b!5524055 () Bool)

(declare-fun e!3415177 () Bool)

(declare-fun tp_is_empty!40275 () Bool)

(declare-fun tp!1520047 () Bool)

(assert (=> b!5524055 (= e!3415177 (and tp_is_empty!40275 tp!1520047))))

(declare-fun b!5524056 () Bool)

(declare-fun e!3415170 () Bool)

(declare-fun tp!1520046 () Bool)

(declare-fun tp!1520045 () Bool)

(assert (=> b!5524056 (= e!3415170 (and tp!1520046 tp!1520045))))

(assert (=> b!5524057 (= e!3415176 e!3415172)))

(declare-fun res!2352556 () Bool)

(assert (=> b!5524057 (=> res!2352556 e!3415172)))

(assert (=> b!5524057 (= res!2352556 (not (= lt!2247097 lt!2247089)))))

(assert (=> b!5524057 (= (flatMap!1124 z!1189 lambda!296137) (derivationStepZipperUp!779 (h!69157 zl!343) (h!69158 s!2326)))))

(declare-fun lt!2247087 () Unit!155482)

(assert (=> b!5524057 (= lt!2247087 (lemmaFlatMapOnSingletonSet!656 z!1189 (h!69157 zl!343) lambda!296137))))

(declare-fun b!5524058 () Bool)

(assert (=> b!5524058 (= e!3415174 e!3415182)))

(declare-fun res!2352554 () Bool)

(assert (=> b!5524058 (=> res!2352554 e!3415182)))

(assert (=> b!5524058 (= res!2352554 (not (= lt!2247097 lt!2247093)))))

(assert (=> b!5524058 (= lt!2247093 ((_ map or) lt!2247108 lt!2247095))))

(declare-fun b!5524059 () Bool)

(declare-fun tp!1520044 () Bool)

(declare-fun tp!1520041 () Bool)

(assert (=> b!5524059 (= e!3415170 (and tp!1520044 tp!1520041))))

(declare-fun b!5524060 () Bool)

(declare-fun res!2352546 () Bool)

(assert (=> b!5524060 (=> res!2352546 e!3415178)))

(assert (=> b!5524060 (= res!2352546 (not ((_ is Cons!62708) (exprs!5395 (h!69157 zl!343)))))))

(declare-fun b!5524061 () Bool)

(declare-fun res!2352543 () Bool)

(assert (=> b!5524061 (=> (not res!2352543) (not e!3415169))))

(declare-fun toList!9295 ((InoxSet Context!9790)) List!62833)

(assert (=> b!5524061 (= res!2352543 (= (toList!9295 z!1189) zl!343))))

(declare-fun b!5524062 () Bool)

(declare-fun tp!1520039 () Bool)

(assert (=> b!5524062 (= e!3415181 tp!1520039)))

(declare-fun res!2352553 () Bool)

(assert (=> start!576482 (=> (not res!2352553) (not e!3415169))))

(declare-fun validRegex!7247 (Regex!15511) Bool)

(assert (=> start!576482 (= res!2352553 (validRegex!7247 r!7292))))

(assert (=> start!576482 e!3415169))

(assert (=> start!576482 e!3415170))

(declare-fun condSetEmpty!36731 () Bool)

(assert (=> start!576482 (= condSetEmpty!36731 (= z!1189 ((as const (Array Context!9790 Bool)) false)))))

(assert (=> start!576482 setRes!36731))

(assert (=> start!576482 e!3415175))

(assert (=> start!576482 e!3415177))

(declare-fun b!5524063 () Bool)

(declare-fun res!2352560 () Bool)

(assert (=> b!5524063 (=> res!2352560 e!3415180)))

(assert (=> b!5524063 (= res!2352560 (not (= (matchZipper!1669 lt!2247111 s!2326) (matchZipper!1669 (derivationStepZipper!1616 lt!2247111 (h!69158 s!2326)) (t!376087 s!2326)))))))

(declare-fun b!5524064 () Bool)

(assert (=> b!5524064 (= e!3415169 (not e!3415178))))

(declare-fun res!2352558 () Bool)

(assert (=> b!5524064 (=> res!2352558 e!3415178)))

(assert (=> b!5524064 (= res!2352558 (not ((_ is Cons!62709) zl!343)))))

(declare-fun lt!2247107 () Bool)

(declare-fun matchRSpec!2614 (Regex!15511 List!62834) Bool)

(assert (=> b!5524064 (= lt!2247107 (matchRSpec!2614 r!7292 s!2326))))

(declare-fun matchR!7696 (Regex!15511 List!62834) Bool)

(assert (=> b!5524064 (= lt!2247107 (matchR!7696 r!7292 s!2326))))

(declare-fun lt!2247096 () Unit!155482)

(declare-fun mainMatchTheorem!2614 (Regex!15511 List!62834) Unit!155482)

(assert (=> b!5524064 (= lt!2247096 (mainMatchTheorem!2614 r!7292 s!2326))))

(declare-fun b!5524065 () Bool)

(declare-fun tp!1520043 () Bool)

(assert (=> b!5524065 (= e!3415170 tp!1520043)))

(declare-fun b!5524066 () Bool)

(assert (=> b!5524066 (= e!3415170 tp_is_empty!40275)))

(assert (=> b!5524067 (= e!3415178 e!3415173)))

(declare-fun res!2352557 () Bool)

(assert (=> b!5524067 (=> res!2352557 e!3415173)))

(declare-fun lt!2247101 () Bool)

(assert (=> b!5524067 (= res!2352557 (or (not (= lt!2247107 lt!2247101)) ((_ is Nil!62710) s!2326)))))

(declare-fun Exists!2611 (Int) Bool)

(assert (=> b!5524067 (= (Exists!2611 lambda!296135) (Exists!2611 lambda!296136))))

(declare-fun lt!2247112 () Unit!155482)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1240 (Regex!15511 Regex!15511 List!62834) Unit!155482)

(assert (=> b!5524067 (= lt!2247112 (lemmaExistCutMatchRandMatchRSpecEquivalent!1240 (regOne!31534 r!7292) (regTwo!31534 r!7292) s!2326))))

(assert (=> b!5524067 (= lt!2247101 (Exists!2611 lambda!296135))))

(declare-datatypes ((tuple2!65216 0))(
  ( (tuple2!65217 (_1!35911 List!62834) (_2!35911 List!62834)) )
))
(declare-datatypes ((Option!15520 0))(
  ( (None!15519) (Some!15519 (v!51556 tuple2!65216)) )
))
(declare-fun isDefined!12223 (Option!15520) Bool)

(declare-fun findConcatSeparation!1934 (Regex!15511 Regex!15511 List!62834 List!62834 List!62834) Option!15520)

(assert (=> b!5524067 (= lt!2247101 (isDefined!12223 (findConcatSeparation!1934 (regOne!31534 r!7292) (regTwo!31534 r!7292) Nil!62710 s!2326 s!2326)))))

(declare-fun lt!2247104 () Unit!155482)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1698 (Regex!15511 Regex!15511 List!62834) Unit!155482)

(assert (=> b!5524067 (= lt!2247104 (lemmaFindConcatSeparationEquivalentToExists!1698 (regOne!31534 r!7292) (regTwo!31534 r!7292) s!2326))))

(declare-fun b!5524068 () Bool)

(assert (=> b!5524068 (= e!3415179 (matchZipper!1669 lt!2247095 (t!376087 s!2326)))))

(assert (= (and start!576482 res!2352553) b!5524061))

(assert (= (and b!5524061 res!2352543) b!5524050))

(assert (= (and b!5524050 res!2352555) b!5524064))

(assert (= (and b!5524064 (not res!2352558)) b!5524047))

(assert (= (and b!5524047 (not res!2352542)) b!5524044))

(assert (= (and b!5524044 (not res!2352541)) b!5524060))

(assert (= (and b!5524060 (not res!2352546)) b!5524048))

(assert (= (and b!5524048 (not res!2352545)) b!5524053))

(assert (= (and b!5524053 (not res!2352548)) b!5524067))

(assert (= (and b!5524067 (not res!2352557)) b!5524049))

(assert (= (and b!5524049 (not res!2352559)) b!5524042))

(assert (= (and b!5524042 (not res!2352550)) b!5524057))

(assert (= (and b!5524057 (not res!2352556)) b!5524051))

(assert (= (and b!5524051 (not res!2352552)) b!5524058))

(assert (= (and b!5524058 (not res!2352554)) b!5524043))

(assert (= (and b!5524043 (not res!2352544)) b!5524068))

(assert (= (and b!5524043 (not res!2352540)) b!5524045))

(assert (= (and b!5524045 (not res!2352549)) b!5524063))

(assert (= (and b!5524063 (not res!2352560)) b!5524054))

(assert (= (and b!5524054 (not res!2352547)) b!5524041))

(assert (= (and b!5524041 (not res!2352551)) b!5524046))

(assert (= (and start!576482 ((_ is ElementMatch!15511) r!7292)) b!5524066))

(assert (= (and start!576482 ((_ is Concat!24356) r!7292)) b!5524056))

(assert (= (and start!576482 ((_ is Star!15511) r!7292)) b!5524065))

(assert (= (and start!576482 ((_ is Union!15511) r!7292)) b!5524059))

(assert (= (and start!576482 condSetEmpty!36731) setIsEmpty!36731))

(assert (= (and start!576482 (not condSetEmpty!36731)) setNonEmpty!36731))

(assert (= setNonEmpty!36731 b!5524052))

(assert (= b!5524040 b!5524062))

(assert (= (and start!576482 ((_ is Cons!62709) zl!343)) b!5524040))

(assert (= (and start!576482 ((_ is Cons!62710) s!2326)) b!5524055))

(declare-fun m!6526510 () Bool)

(assert (=> b!5524051 m!6526510))

(declare-fun m!6526512 () Bool)

(assert (=> b!5524051 m!6526512))

(declare-fun m!6526514 () Bool)

(assert (=> b!5524051 m!6526514))

(declare-fun m!6526516 () Bool)

(assert (=> b!5524051 m!6526516))

(declare-fun m!6526518 () Bool)

(assert (=> b!5524051 m!6526518))

(declare-fun m!6526520 () Bool)

(assert (=> b!5524051 m!6526520))

(declare-fun m!6526522 () Bool)

(assert (=> b!5524051 m!6526522))

(declare-fun m!6526524 () Bool)

(assert (=> b!5524051 m!6526524))

(declare-fun m!6526526 () Bool)

(assert (=> b!5524051 m!6526526))

(declare-fun m!6526528 () Bool)

(assert (=> b!5524051 m!6526528))

(declare-fun m!6526530 () Bool)

(assert (=> b!5524051 m!6526530))

(declare-fun m!6526532 () Bool)

(assert (=> b!5524068 m!6526532))

(declare-fun m!6526534 () Bool)

(assert (=> b!5524042 m!6526534))

(declare-fun m!6526536 () Bool)

(assert (=> b!5524042 m!6526536))

(declare-fun m!6526538 () Bool)

(assert (=> b!5524042 m!6526538))

(declare-fun m!6526540 () Bool)

(assert (=> b!5524041 m!6526540))

(declare-fun m!6526542 () Bool)

(assert (=> b!5524041 m!6526542))

(declare-fun m!6526544 () Bool)

(assert (=> b!5524050 m!6526544))

(declare-fun m!6526546 () Bool)

(assert (=> b!5524064 m!6526546))

(declare-fun m!6526548 () Bool)

(assert (=> b!5524064 m!6526548))

(declare-fun m!6526550 () Bool)

(assert (=> b!5524064 m!6526550))

(declare-fun m!6526552 () Bool)

(assert (=> b!5524046 m!6526552))

(declare-fun m!6526554 () Bool)

(assert (=> b!5524046 m!6526554))

(declare-fun m!6526556 () Bool)

(assert (=> b!5524049 m!6526556))

(declare-fun m!6526558 () Bool)

(assert (=> b!5524057 m!6526558))

(declare-fun m!6526560 () Bool)

(assert (=> b!5524057 m!6526560))

(declare-fun m!6526562 () Bool)

(assert (=> b!5524057 m!6526562))

(declare-fun m!6526564 () Bool)

(assert (=> b!5524061 m!6526564))

(declare-fun m!6526566 () Bool)

(assert (=> b!5524048 m!6526566))

(assert (=> b!5524048 m!6526566))

(declare-fun m!6526568 () Bool)

(assert (=> b!5524048 m!6526568))

(declare-fun m!6526570 () Bool)

(assert (=> b!5524063 m!6526570))

(declare-fun m!6526572 () Bool)

(assert (=> b!5524063 m!6526572))

(assert (=> b!5524063 m!6526572))

(declare-fun m!6526574 () Bool)

(assert (=> b!5524063 m!6526574))

(declare-fun m!6526576 () Bool)

(assert (=> b!5524044 m!6526576))

(declare-fun m!6526578 () Bool)

(assert (=> setNonEmpty!36731 m!6526578))

(declare-fun m!6526580 () Bool)

(assert (=> b!5524040 m!6526580))

(declare-fun m!6526582 () Bool)

(assert (=> b!5524043 m!6526582))

(declare-fun m!6526584 () Bool)

(assert (=> b!5524043 m!6526584))

(declare-fun m!6526586 () Bool)

(assert (=> b!5524043 m!6526586))

(declare-fun m!6526588 () Bool)

(assert (=> b!5524043 m!6526588))

(declare-fun m!6526590 () Bool)

(assert (=> start!576482 m!6526590))

(declare-fun m!6526592 () Bool)

(assert (=> b!5524054 m!6526592))

(declare-fun m!6526594 () Bool)

(assert (=> b!5524054 m!6526594))

(assert (=> b!5524054 m!6526594))

(declare-fun m!6526596 () Bool)

(assert (=> b!5524054 m!6526596))

(declare-fun m!6526598 () Bool)

(assert (=> b!5524067 m!6526598))

(declare-fun m!6526600 () Bool)

(assert (=> b!5524067 m!6526600))

(declare-fun m!6526602 () Bool)

(assert (=> b!5524067 m!6526602))

(declare-fun m!6526604 () Bool)

(assert (=> b!5524067 m!6526604))

(declare-fun m!6526606 () Bool)

(assert (=> b!5524067 m!6526606))

(assert (=> b!5524067 m!6526598))

(assert (=> b!5524067 m!6526600))

(declare-fun m!6526608 () Bool)

(assert (=> b!5524067 m!6526608))

(declare-fun m!6526610 () Bool)

(assert (=> b!5524047 m!6526610))

(check-sat (not b!5524047) tp_is_empty!40275 (not b!5524046) (not b!5524040) (not b!5524056) (not b!5524054) (not b!5524055) (not start!576482) (not b!5524049) (not b!5524044) (not b!5524050) (not b!5524041) (not b!5524052) (not setNonEmpty!36731) (not b!5524061) (not b!5524063) (not b!5524051) (not b!5524067) (not b!5524048) (not b!5524042) (not b!5524065) (not b!5524043) (not b!5524057) (not b!5524064) (not b!5524068) (not b!5524059) (not b!5524062))
(check-sat)
(get-model)

(declare-fun b!5524493 () Bool)

(assert (=> b!5524493 true))

(declare-fun bs!1274695 () Bool)

(declare-fun b!5524495 () Bool)

(assert (= bs!1274695 (and b!5524495 b!5524493)))

(declare-fun lt!2247198 () Int)

(declare-fun lambda!296199 () Int)

(declare-fun lambda!296198 () Int)

(declare-fun lt!2247201 () Int)

(assert (=> bs!1274695 (= (= lt!2247198 lt!2247201) (= lambda!296199 lambda!296198))))

(assert (=> b!5524495 true))

(declare-fun d!1750373 () Bool)

(declare-fun e!3415417 () Bool)

(assert (=> d!1750373 e!3415417))

(declare-fun res!2352685 () Bool)

(assert (=> d!1750373 (=> (not res!2352685) (not e!3415417))))

(assert (=> d!1750373 (= res!2352685 (>= lt!2247198 0))))

(declare-fun e!3415418 () Int)

(assert (=> d!1750373 (= lt!2247198 e!3415418)))

(declare-fun c!966282 () Bool)

(assert (=> d!1750373 (= c!966282 ((_ is Cons!62709) (Cons!62709 lt!2247113 Nil!62709)))))

(assert (=> d!1750373 (= (zipperDepth!194 (Cons!62709 lt!2247113 Nil!62709)) lt!2247198)))

(assert (=> b!5524493 (= e!3415418 lt!2247201)))

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!5524493 (= lt!2247201 (maxBigInt!0 (contextDepth!107 (h!69157 (Cons!62709 lt!2247113 Nil!62709))) (zipperDepth!194 (t!376086 (Cons!62709 lt!2247113 Nil!62709)))))))

(declare-fun lambda!296197 () Int)

(declare-fun lt!2247200 () Unit!155482)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!99 (List!62833 Int Int Int) Unit!155482)

(assert (=> b!5524493 (= lt!2247200 (lemmaForallContextDepthBiggerThanTransitive!99 (t!376086 (Cons!62709 lt!2247113 Nil!62709)) lt!2247201 (zipperDepth!194 (t!376086 (Cons!62709 lt!2247113 Nil!62709))) lambda!296197))))

(declare-fun forall!14686 (List!62833 Int) Bool)

(assert (=> b!5524493 (forall!14686 (t!376086 (Cons!62709 lt!2247113 Nil!62709)) lambda!296198)))

(declare-fun lt!2247199 () Unit!155482)

(assert (=> b!5524493 (= lt!2247199 lt!2247200)))

(declare-fun b!5524494 () Bool)

(assert (=> b!5524494 (= e!3415418 0)))

(assert (=> b!5524495 (= e!3415417 (forall!14686 (Cons!62709 lt!2247113 Nil!62709) lambda!296199))))

(assert (= (and d!1750373 c!966282) b!5524493))

(assert (= (and d!1750373 (not c!966282)) b!5524494))

(assert (= (and d!1750373 res!2352685) b!5524495))

(declare-fun m!6526920 () Bool)

(assert (=> b!5524493 m!6526920))

(declare-fun m!6526922 () Bool)

(assert (=> b!5524493 m!6526922))

(declare-fun m!6526924 () Bool)

(assert (=> b!5524493 m!6526924))

(declare-fun m!6526926 () Bool)

(assert (=> b!5524493 m!6526926))

(assert (=> b!5524493 m!6526920))

(declare-fun m!6526928 () Bool)

(assert (=> b!5524493 m!6526928))

(assert (=> b!5524493 m!6526926))

(assert (=> b!5524493 m!6526920))

(declare-fun m!6526930 () Bool)

(assert (=> b!5524495 m!6526930))

(assert (=> b!5524046 d!1750373))

(declare-fun bs!1274696 () Bool)

(declare-fun b!5524498 () Bool)

(assert (= bs!1274696 (and b!5524498 b!5524493)))

(declare-fun lambda!296200 () Int)

(assert (=> bs!1274696 (= lambda!296200 lambda!296197)))

(declare-fun lambda!296201 () Int)

(declare-fun lt!2247205 () Int)

(assert (=> bs!1274696 (= (= lt!2247205 lt!2247201) (= lambda!296201 lambda!296198))))

(declare-fun bs!1274697 () Bool)

(assert (= bs!1274697 (and b!5524498 b!5524495)))

(assert (=> bs!1274697 (= (= lt!2247205 lt!2247198) (= lambda!296201 lambda!296199))))

(assert (=> b!5524498 true))

(declare-fun bs!1274698 () Bool)

(declare-fun b!5524500 () Bool)

(assert (= bs!1274698 (and b!5524500 b!5524493)))

(declare-fun lambda!296202 () Int)

(declare-fun lt!2247202 () Int)

(assert (=> bs!1274698 (= (= lt!2247202 lt!2247201) (= lambda!296202 lambda!296198))))

(declare-fun bs!1274699 () Bool)

(assert (= bs!1274699 (and b!5524500 b!5524495)))

(assert (=> bs!1274699 (= (= lt!2247202 lt!2247198) (= lambda!296202 lambda!296199))))

(declare-fun bs!1274700 () Bool)

(assert (= bs!1274700 (and b!5524500 b!5524498)))

(assert (=> bs!1274700 (= (= lt!2247202 lt!2247205) (= lambda!296202 lambda!296201))))

(assert (=> b!5524500 true))

(declare-fun d!1750385 () Bool)

(declare-fun e!3415419 () Bool)

(assert (=> d!1750385 e!3415419))

(declare-fun res!2352686 () Bool)

(assert (=> d!1750385 (=> (not res!2352686) (not e!3415419))))

(assert (=> d!1750385 (= res!2352686 (>= lt!2247202 0))))

(declare-fun e!3415420 () Int)

(assert (=> d!1750385 (= lt!2247202 e!3415420)))

(declare-fun c!966283 () Bool)

(assert (=> d!1750385 (= c!966283 ((_ is Cons!62709) (Cons!62709 lt!2247106 Nil!62709)))))

(assert (=> d!1750385 (= (zipperDepth!194 (Cons!62709 lt!2247106 Nil!62709)) lt!2247202)))

(assert (=> b!5524498 (= e!3415420 lt!2247205)))

(assert (=> b!5524498 (= lt!2247205 (maxBigInt!0 (contextDepth!107 (h!69157 (Cons!62709 lt!2247106 Nil!62709))) (zipperDepth!194 (t!376086 (Cons!62709 lt!2247106 Nil!62709)))))))

(declare-fun lt!2247204 () Unit!155482)

(assert (=> b!5524498 (= lt!2247204 (lemmaForallContextDepthBiggerThanTransitive!99 (t!376086 (Cons!62709 lt!2247106 Nil!62709)) lt!2247205 (zipperDepth!194 (t!376086 (Cons!62709 lt!2247106 Nil!62709))) lambda!296200))))

(assert (=> b!5524498 (forall!14686 (t!376086 (Cons!62709 lt!2247106 Nil!62709)) lambda!296201)))

(declare-fun lt!2247203 () Unit!155482)

(assert (=> b!5524498 (= lt!2247203 lt!2247204)))

(declare-fun b!5524499 () Bool)

(assert (=> b!5524499 (= e!3415420 0)))

(assert (=> b!5524500 (= e!3415419 (forall!14686 (Cons!62709 lt!2247106 Nil!62709) lambda!296202))))

(assert (= (and d!1750385 c!966283) b!5524498))

(assert (= (and d!1750385 (not c!966283)) b!5524499))

(assert (= (and d!1750385 res!2352686) b!5524500))

(declare-fun m!6526932 () Bool)

(assert (=> b!5524498 m!6526932))

(declare-fun m!6526934 () Bool)

(assert (=> b!5524498 m!6526934))

(declare-fun m!6526936 () Bool)

(assert (=> b!5524498 m!6526936))

(declare-fun m!6526938 () Bool)

(assert (=> b!5524498 m!6526938))

(assert (=> b!5524498 m!6526932))

(declare-fun m!6526940 () Bool)

(assert (=> b!5524498 m!6526940))

(assert (=> b!5524498 m!6526938))

(assert (=> b!5524498 m!6526932))

(declare-fun m!6526942 () Bool)

(assert (=> b!5524500 m!6526942))

(assert (=> b!5524046 d!1750385))

(declare-fun b!5524519 () Bool)

(declare-fun e!3415434 () Bool)

(declare-fun lt!2247213 () Option!15520)

(assert (=> b!5524519 (= e!3415434 (not (isDefined!12223 lt!2247213)))))

(declare-fun b!5524520 () Bool)

(declare-fun e!3415432 () Option!15520)

(assert (=> b!5524520 (= e!3415432 (Some!15519 (tuple2!65217 Nil!62710 s!2326)))))

(declare-fun b!5524521 () Bool)

(declare-fun e!3415431 () Bool)

(assert (=> b!5524521 (= e!3415431 (matchR!7696 (regTwo!31534 r!7292) s!2326))))

(declare-fun b!5524522 () Bool)

(declare-fun lt!2247212 () Unit!155482)

(declare-fun lt!2247214 () Unit!155482)

(assert (=> b!5524522 (= lt!2247212 lt!2247214)))

(declare-fun ++!13759 (List!62834 List!62834) List!62834)

(assert (=> b!5524522 (= (++!13759 (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710)) (t!376087 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1928 (List!62834 C!31292 List!62834 List!62834) Unit!155482)

(assert (=> b!5524522 (= lt!2247214 (lemmaMoveElementToOtherListKeepsConcatEq!1928 Nil!62710 (h!69158 s!2326) (t!376087 s!2326) s!2326))))

(declare-fun e!3415433 () Option!15520)

(assert (=> b!5524522 (= e!3415433 (findConcatSeparation!1934 (regOne!31534 r!7292) (regTwo!31534 r!7292) (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710)) (t!376087 s!2326) s!2326))))

(declare-fun b!5524523 () Bool)

(assert (=> b!5524523 (= e!3415433 None!15519)))

(declare-fun d!1750387 () Bool)

(assert (=> d!1750387 e!3415434))

(declare-fun res!2352701 () Bool)

(assert (=> d!1750387 (=> res!2352701 e!3415434)))

(declare-fun e!3415435 () Bool)

(assert (=> d!1750387 (= res!2352701 e!3415435)))

(declare-fun res!2352699 () Bool)

(assert (=> d!1750387 (=> (not res!2352699) (not e!3415435))))

(assert (=> d!1750387 (= res!2352699 (isDefined!12223 lt!2247213))))

(assert (=> d!1750387 (= lt!2247213 e!3415432)))

(declare-fun c!966288 () Bool)

(assert (=> d!1750387 (= c!966288 e!3415431)))

(declare-fun res!2352698 () Bool)

(assert (=> d!1750387 (=> (not res!2352698) (not e!3415431))))

(assert (=> d!1750387 (= res!2352698 (matchR!7696 (regOne!31534 r!7292) Nil!62710))))

(assert (=> d!1750387 (validRegex!7247 (regOne!31534 r!7292))))

(assert (=> d!1750387 (= (findConcatSeparation!1934 (regOne!31534 r!7292) (regTwo!31534 r!7292) Nil!62710 s!2326 s!2326) lt!2247213)))

(declare-fun b!5524524 () Bool)

(declare-fun get!21582 (Option!15520) tuple2!65216)

(assert (=> b!5524524 (= e!3415435 (= (++!13759 (_1!35911 (get!21582 lt!2247213)) (_2!35911 (get!21582 lt!2247213))) s!2326))))

(declare-fun b!5524525 () Bool)

(declare-fun res!2352700 () Bool)

(assert (=> b!5524525 (=> (not res!2352700) (not e!3415435))))

(assert (=> b!5524525 (= res!2352700 (matchR!7696 (regOne!31534 r!7292) (_1!35911 (get!21582 lt!2247213))))))

(declare-fun b!5524526 () Bool)

(assert (=> b!5524526 (= e!3415432 e!3415433)))

(declare-fun c!966289 () Bool)

(assert (=> b!5524526 (= c!966289 ((_ is Nil!62710) s!2326))))

(declare-fun b!5524527 () Bool)

(declare-fun res!2352697 () Bool)

(assert (=> b!5524527 (=> (not res!2352697) (not e!3415435))))

(assert (=> b!5524527 (= res!2352697 (matchR!7696 (regTwo!31534 r!7292) (_2!35911 (get!21582 lt!2247213))))))

(assert (= (and d!1750387 res!2352698) b!5524521))

(assert (= (and d!1750387 c!966288) b!5524520))

(assert (= (and d!1750387 (not c!966288)) b!5524526))

(assert (= (and b!5524526 c!966289) b!5524523))

(assert (= (and b!5524526 (not c!966289)) b!5524522))

(assert (= (and d!1750387 res!2352699) b!5524525))

(assert (= (and b!5524525 res!2352700) b!5524527))

(assert (= (and b!5524527 res!2352697) b!5524524))

(assert (= (and d!1750387 (not res!2352701)) b!5524519))

(declare-fun m!6526944 () Bool)

(assert (=> b!5524527 m!6526944))

(declare-fun m!6526946 () Bool)

(assert (=> b!5524527 m!6526946))

(assert (=> b!5524525 m!6526944))

(declare-fun m!6526948 () Bool)

(assert (=> b!5524525 m!6526948))

(declare-fun m!6526950 () Bool)

(assert (=> b!5524522 m!6526950))

(assert (=> b!5524522 m!6526950))

(declare-fun m!6526952 () Bool)

(assert (=> b!5524522 m!6526952))

(declare-fun m!6526954 () Bool)

(assert (=> b!5524522 m!6526954))

(assert (=> b!5524522 m!6526950))

(declare-fun m!6526956 () Bool)

(assert (=> b!5524522 m!6526956))

(declare-fun m!6526958 () Bool)

(assert (=> d!1750387 m!6526958))

(declare-fun m!6526960 () Bool)

(assert (=> d!1750387 m!6526960))

(declare-fun m!6526962 () Bool)

(assert (=> d!1750387 m!6526962))

(assert (=> b!5524519 m!6526958))

(assert (=> b!5524524 m!6526944))

(declare-fun m!6526964 () Bool)

(assert (=> b!5524524 m!6526964))

(declare-fun m!6526966 () Bool)

(assert (=> b!5524521 m!6526966))

(assert (=> b!5524067 d!1750387))

(declare-fun d!1750389 () Bool)

(declare-fun choose!41971 (Int) Bool)

(assert (=> d!1750389 (= (Exists!2611 lambda!296136) (choose!41971 lambda!296136))))

(declare-fun bs!1274701 () Bool)

(assert (= bs!1274701 d!1750389))

(declare-fun m!6526968 () Bool)

(assert (=> bs!1274701 m!6526968))

(assert (=> b!5524067 d!1750389))

(declare-fun bs!1274702 () Bool)

(declare-fun d!1750391 () Bool)

(assert (= bs!1274702 (and d!1750391 b!5524067)))

(declare-fun lambda!296207 () Int)

(assert (=> bs!1274702 (= lambda!296207 lambda!296135)))

(assert (=> bs!1274702 (not (= lambda!296207 lambda!296136))))

(assert (=> d!1750391 true))

(assert (=> d!1750391 true))

(assert (=> d!1750391 true))

(declare-fun lambda!296208 () Int)

(assert (=> bs!1274702 (not (= lambda!296208 lambda!296135))))

(assert (=> bs!1274702 (= lambda!296208 lambda!296136)))

(declare-fun bs!1274703 () Bool)

(assert (= bs!1274703 d!1750391))

(assert (=> bs!1274703 (not (= lambda!296208 lambda!296207))))

(assert (=> d!1750391 true))

(assert (=> d!1750391 true))

(assert (=> d!1750391 true))

(assert (=> d!1750391 (= (Exists!2611 lambda!296207) (Exists!2611 lambda!296208))))

(declare-fun lt!2247217 () Unit!155482)

(declare-fun choose!41972 (Regex!15511 Regex!15511 List!62834) Unit!155482)

(assert (=> d!1750391 (= lt!2247217 (choose!41972 (regOne!31534 r!7292) (regTwo!31534 r!7292) s!2326))))

(assert (=> d!1750391 (validRegex!7247 (regOne!31534 r!7292))))

(assert (=> d!1750391 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1240 (regOne!31534 r!7292) (regTwo!31534 r!7292) s!2326) lt!2247217)))

(declare-fun m!6526970 () Bool)

(assert (=> bs!1274703 m!6526970))

(declare-fun m!6526972 () Bool)

(assert (=> bs!1274703 m!6526972))

(declare-fun m!6526974 () Bool)

(assert (=> bs!1274703 m!6526974))

(assert (=> bs!1274703 m!6526962))

(assert (=> b!5524067 d!1750391))

(declare-fun d!1750393 () Bool)

(declare-fun isEmpty!34497 (Option!15520) Bool)

(assert (=> d!1750393 (= (isDefined!12223 (findConcatSeparation!1934 (regOne!31534 r!7292) (regTwo!31534 r!7292) Nil!62710 s!2326 s!2326)) (not (isEmpty!34497 (findConcatSeparation!1934 (regOne!31534 r!7292) (regTwo!31534 r!7292) Nil!62710 s!2326 s!2326))))))

(declare-fun bs!1274704 () Bool)

(assert (= bs!1274704 d!1750393))

(assert (=> bs!1274704 m!6526600))

(declare-fun m!6526976 () Bool)

(assert (=> bs!1274704 m!6526976))

(assert (=> b!5524067 d!1750393))

(declare-fun d!1750395 () Bool)

(assert (=> d!1750395 (= (Exists!2611 lambda!296135) (choose!41971 lambda!296135))))

(declare-fun bs!1274705 () Bool)

(assert (= bs!1274705 d!1750395))

(declare-fun m!6526978 () Bool)

(assert (=> bs!1274705 m!6526978))

(assert (=> b!5524067 d!1750395))

(declare-fun bs!1274706 () Bool)

(declare-fun d!1750397 () Bool)

(assert (= bs!1274706 (and d!1750397 b!5524067)))

(declare-fun lambda!296211 () Int)

(assert (=> bs!1274706 (= lambda!296211 lambda!296135)))

(assert (=> bs!1274706 (not (= lambda!296211 lambda!296136))))

(declare-fun bs!1274707 () Bool)

(assert (= bs!1274707 (and d!1750397 d!1750391)))

(assert (=> bs!1274707 (= lambda!296211 lambda!296207)))

(assert (=> bs!1274707 (not (= lambda!296211 lambda!296208))))

(assert (=> d!1750397 true))

(assert (=> d!1750397 true))

(assert (=> d!1750397 true))

(assert (=> d!1750397 (= (isDefined!12223 (findConcatSeparation!1934 (regOne!31534 r!7292) (regTwo!31534 r!7292) Nil!62710 s!2326 s!2326)) (Exists!2611 lambda!296211))))

(declare-fun lt!2247220 () Unit!155482)

(declare-fun choose!41973 (Regex!15511 Regex!15511 List!62834) Unit!155482)

(assert (=> d!1750397 (= lt!2247220 (choose!41973 (regOne!31534 r!7292) (regTwo!31534 r!7292) s!2326))))

(assert (=> d!1750397 (validRegex!7247 (regOne!31534 r!7292))))

(assert (=> d!1750397 (= (lemmaFindConcatSeparationEquivalentToExists!1698 (regOne!31534 r!7292) (regTwo!31534 r!7292) s!2326) lt!2247220)))

(declare-fun bs!1274708 () Bool)

(assert (= bs!1274708 d!1750397))

(declare-fun m!6526980 () Bool)

(assert (=> bs!1274708 m!6526980))

(assert (=> bs!1274708 m!6526600))

(assert (=> bs!1274708 m!6526602))

(assert (=> bs!1274708 m!6526600))

(assert (=> bs!1274708 m!6526962))

(declare-fun m!6526982 () Bool)

(assert (=> bs!1274708 m!6526982))

(assert (=> b!5524067 d!1750397))

(declare-fun d!1750399 () Bool)

(declare-fun choose!41974 ((InoxSet Context!9790) Int) (InoxSet Context!9790))

(assert (=> d!1750399 (= (flatMap!1124 z!1189 lambda!296137) (choose!41974 z!1189 lambda!296137))))

(declare-fun bs!1274709 () Bool)

(assert (= bs!1274709 d!1750399))

(declare-fun m!6526984 () Bool)

(assert (=> bs!1274709 m!6526984))

(assert (=> b!5524057 d!1750399))

(declare-fun bm!409649 () Bool)

(declare-fun call!409654 () (InoxSet Context!9790))

(assert (=> bm!409649 (= call!409654 (derivationStepZipperDown!853 (h!69156 (exprs!5395 (h!69157 zl!343))) (Context!9791 (t!376085 (exprs!5395 (h!69157 zl!343)))) (h!69158 s!2326)))))

(declare-fun b!5524550 () Bool)

(declare-fun e!3415448 () (InoxSet Context!9790))

(assert (=> b!5524550 (= e!3415448 ((as const (Array Context!9790 Bool)) false))))

(declare-fun b!5524551 () Bool)

(declare-fun e!3415449 () (InoxSet Context!9790))

(assert (=> b!5524551 (= e!3415449 e!3415448)))

(declare-fun c!966295 () Bool)

(assert (=> b!5524551 (= c!966295 ((_ is Cons!62708) (exprs!5395 (h!69157 zl!343))))))

(declare-fun d!1750401 () Bool)

(declare-fun c!966294 () Bool)

(declare-fun e!3415450 () Bool)

(assert (=> d!1750401 (= c!966294 e!3415450)))

(declare-fun res!2352716 () Bool)

(assert (=> d!1750401 (=> (not res!2352716) (not e!3415450))))

(assert (=> d!1750401 (= res!2352716 ((_ is Cons!62708) (exprs!5395 (h!69157 zl!343))))))

(assert (=> d!1750401 (= (derivationStepZipperUp!779 (h!69157 zl!343) (h!69158 s!2326)) e!3415449)))

(declare-fun b!5524552 () Bool)

(assert (=> b!5524552 (= e!3415448 call!409654)))

(declare-fun b!5524553 () Bool)

(assert (=> b!5524553 (= e!3415449 ((_ map or) call!409654 (derivationStepZipperUp!779 (Context!9791 (t!376085 (exprs!5395 (h!69157 zl!343)))) (h!69158 s!2326))))))

(declare-fun b!5524554 () Bool)

(assert (=> b!5524554 (= e!3415450 (nullable!5545 (h!69156 (exprs!5395 (h!69157 zl!343)))))))

(assert (= (and d!1750401 res!2352716) b!5524554))

(assert (= (and d!1750401 c!966294) b!5524553))

(assert (= (and d!1750401 (not c!966294)) b!5524551))

(assert (= (and b!5524551 c!966295) b!5524552))

(assert (= (and b!5524551 (not c!966295)) b!5524550))

(assert (= (or b!5524553 b!5524552) bm!409649))

(declare-fun m!6526986 () Bool)

(assert (=> bm!409649 m!6526986))

(declare-fun m!6526988 () Bool)

(assert (=> b!5524553 m!6526988))

(declare-fun m!6526990 () Bool)

(assert (=> b!5524554 m!6526990))

(assert (=> b!5524057 d!1750401))

(declare-fun d!1750403 () Bool)

(declare-fun dynLambda!24502 (Int Context!9790) (InoxSet Context!9790))

(assert (=> d!1750403 (= (flatMap!1124 z!1189 lambda!296137) (dynLambda!24502 lambda!296137 (h!69157 zl!343)))))

(declare-fun lt!2247223 () Unit!155482)

(declare-fun choose!41975 ((InoxSet Context!9790) Context!9790 Int) Unit!155482)

(assert (=> d!1750403 (= lt!2247223 (choose!41975 z!1189 (h!69157 zl!343) lambda!296137))))

(assert (=> d!1750403 (= z!1189 (store ((as const (Array Context!9790 Bool)) false) (h!69157 zl!343) true))))

(assert (=> d!1750403 (= (lemmaFlatMapOnSingletonSet!656 z!1189 (h!69157 zl!343) lambda!296137) lt!2247223)))

(declare-fun b_lambda!209519 () Bool)

(assert (=> (not b_lambda!209519) (not d!1750403)))

(declare-fun bs!1274710 () Bool)

(assert (= bs!1274710 d!1750403))

(assert (=> bs!1274710 m!6526558))

(declare-fun m!6526992 () Bool)

(assert (=> bs!1274710 m!6526992))

(declare-fun m!6526994 () Bool)

(assert (=> bs!1274710 m!6526994))

(declare-fun m!6526996 () Bool)

(assert (=> bs!1274710 m!6526996))

(assert (=> b!5524057 d!1750403))

(declare-fun d!1750405 () Bool)

(assert (=> d!1750405 (= (isEmpty!34493 (t!376086 zl!343)) ((_ is Nil!62709) (t!376086 zl!343)))))

(assert (=> b!5524047 d!1750405))

(declare-fun b!5524575 () Bool)

(declare-fun e!3415463 () Regex!15511)

(declare-fun e!3415464 () Regex!15511)

(assert (=> b!5524575 (= e!3415463 e!3415464)))

(declare-fun c!966305 () Bool)

(assert (=> b!5524575 (= c!966305 ((_ is Cons!62708) (unfocusZipperList!939 zl!343)))))

(declare-fun b!5524576 () Bool)

(declare-fun e!3415465 () Bool)

(declare-fun e!3415466 () Bool)

(assert (=> b!5524576 (= e!3415465 e!3415466)))

(declare-fun c!966307 () Bool)

(assert (=> b!5524576 (= c!966307 (isEmpty!34494 (unfocusZipperList!939 zl!343)))))

(declare-fun b!5524577 () Bool)

(declare-fun e!3415468 () Bool)

(declare-fun lt!2247226 () Regex!15511)

(declare-fun head!11825 (List!62832) Regex!15511)

(assert (=> b!5524577 (= e!3415468 (= lt!2247226 (head!11825 (unfocusZipperList!939 zl!343))))))

(declare-fun b!5524578 () Bool)

(declare-fun isUnion!524 (Regex!15511) Bool)

(assert (=> b!5524578 (= e!3415468 (isUnion!524 lt!2247226))))

(declare-fun b!5524579 () Bool)

(assert (=> b!5524579 (= e!3415463 (h!69156 (unfocusZipperList!939 zl!343)))))

(declare-fun b!5524580 () Bool)

(assert (=> b!5524580 (= e!3415464 EmptyLang!15511)))

(declare-fun b!5524581 () Bool)

(declare-fun isEmptyLang!1094 (Regex!15511) Bool)

(assert (=> b!5524581 (= e!3415466 (isEmptyLang!1094 lt!2247226))))

(declare-fun d!1750407 () Bool)

(assert (=> d!1750407 e!3415465))

(declare-fun res!2352721 () Bool)

(assert (=> d!1750407 (=> (not res!2352721) (not e!3415465))))

(assert (=> d!1750407 (= res!2352721 (validRegex!7247 lt!2247226))))

(assert (=> d!1750407 (= lt!2247226 e!3415463)))

(declare-fun c!966304 () Bool)

(declare-fun e!3415467 () Bool)

(assert (=> d!1750407 (= c!966304 e!3415467)))

(declare-fun res!2352722 () Bool)

(assert (=> d!1750407 (=> (not res!2352722) (not e!3415467))))

(assert (=> d!1750407 (= res!2352722 ((_ is Cons!62708) (unfocusZipperList!939 zl!343)))))

(declare-fun lambda!296214 () Int)

(declare-fun forall!14687 (List!62832 Int) Bool)

(assert (=> d!1750407 (forall!14687 (unfocusZipperList!939 zl!343) lambda!296214)))

(assert (=> d!1750407 (= (generalisedUnion!1374 (unfocusZipperList!939 zl!343)) lt!2247226)))

(declare-fun b!5524582 () Bool)

(assert (=> b!5524582 (= e!3415467 (isEmpty!34494 (t!376085 (unfocusZipperList!939 zl!343))))))

(declare-fun b!5524583 () Bool)

(assert (=> b!5524583 (= e!3415464 (Union!15511 (h!69156 (unfocusZipperList!939 zl!343)) (generalisedUnion!1374 (t!376085 (unfocusZipperList!939 zl!343)))))))

(declare-fun b!5524584 () Bool)

(assert (=> b!5524584 (= e!3415466 e!3415468)))

(declare-fun c!966306 () Bool)

(declare-fun tail!10920 (List!62832) List!62832)

(assert (=> b!5524584 (= c!966306 (isEmpty!34494 (tail!10920 (unfocusZipperList!939 zl!343))))))

(assert (= (and d!1750407 res!2352722) b!5524582))

(assert (= (and d!1750407 c!966304) b!5524579))

(assert (= (and d!1750407 (not c!966304)) b!5524575))

(assert (= (and b!5524575 c!966305) b!5524583))

(assert (= (and b!5524575 (not c!966305)) b!5524580))

(assert (= (and d!1750407 res!2352721) b!5524576))

(assert (= (and b!5524576 c!966307) b!5524581))

(assert (= (and b!5524576 (not c!966307)) b!5524584))

(assert (= (and b!5524584 c!966306) b!5524577))

(assert (= (and b!5524584 (not c!966306)) b!5524578))

(declare-fun m!6526998 () Bool)

(assert (=> b!5524583 m!6526998))

(assert (=> b!5524576 m!6526566))

(declare-fun m!6527000 () Bool)

(assert (=> b!5524576 m!6527000))

(assert (=> b!5524577 m!6526566))

(declare-fun m!6527002 () Bool)

(assert (=> b!5524577 m!6527002))

(declare-fun m!6527004 () Bool)

(assert (=> b!5524582 m!6527004))

(assert (=> b!5524584 m!6526566))

(declare-fun m!6527006 () Bool)

(assert (=> b!5524584 m!6527006))

(assert (=> b!5524584 m!6527006))

(declare-fun m!6527008 () Bool)

(assert (=> b!5524584 m!6527008))

(declare-fun m!6527010 () Bool)

(assert (=> d!1750407 m!6527010))

(assert (=> d!1750407 m!6526566))

(declare-fun m!6527012 () Bool)

(assert (=> d!1750407 m!6527012))

(declare-fun m!6527014 () Bool)

(assert (=> b!5524581 m!6527014))

(declare-fun m!6527016 () Bool)

(assert (=> b!5524578 m!6527016))

(assert (=> b!5524048 d!1750407))

(declare-fun bs!1274711 () Bool)

(declare-fun d!1750409 () Bool)

(assert (= bs!1274711 (and d!1750409 d!1750407)))

(declare-fun lambda!296217 () Int)

(assert (=> bs!1274711 (= lambda!296217 lambda!296214)))

(declare-fun lt!2247229 () List!62832)

(assert (=> d!1750409 (forall!14687 lt!2247229 lambda!296217)))

(declare-fun e!3415471 () List!62832)

(assert (=> d!1750409 (= lt!2247229 e!3415471)))

(declare-fun c!966310 () Bool)

(assert (=> d!1750409 (= c!966310 ((_ is Cons!62709) zl!343))))

(assert (=> d!1750409 (= (unfocusZipperList!939 zl!343) lt!2247229)))

(declare-fun b!5524589 () Bool)

(assert (=> b!5524589 (= e!3415471 (Cons!62708 (generalisedConcat!1126 (exprs!5395 (h!69157 zl!343))) (unfocusZipperList!939 (t!376086 zl!343))))))

(declare-fun b!5524590 () Bool)

(assert (=> b!5524590 (= e!3415471 Nil!62708)))

(assert (= (and d!1750409 c!966310) b!5524589))

(assert (= (and d!1750409 (not c!966310)) b!5524590))

(declare-fun m!6527018 () Bool)

(assert (=> d!1750409 m!6527018))

(assert (=> b!5524589 m!6526576))

(declare-fun m!6527020 () Bool)

(assert (=> b!5524589 m!6527020))

(assert (=> b!5524048 d!1750409))

(declare-fun d!1750411 () Bool)

(declare-fun c!966313 () Bool)

(declare-fun isEmpty!34498 (List!62834) Bool)

(assert (=> d!1750411 (= c!966313 (isEmpty!34498 (t!376087 s!2326)))))

(declare-fun e!3415474 () Bool)

(assert (=> d!1750411 (= (matchZipper!1669 lt!2247095 (t!376087 s!2326)) e!3415474)))

(declare-fun b!5524595 () Bool)

(declare-fun nullableZipper!1537 ((InoxSet Context!9790)) Bool)

(assert (=> b!5524595 (= e!3415474 (nullableZipper!1537 lt!2247095))))

(declare-fun b!5524596 () Bool)

(declare-fun head!11826 (List!62834) C!31292)

(declare-fun tail!10921 (List!62834) List!62834)

(assert (=> b!5524596 (= e!3415474 (matchZipper!1669 (derivationStepZipper!1616 lt!2247095 (head!11826 (t!376087 s!2326))) (tail!10921 (t!376087 s!2326))))))

(assert (= (and d!1750411 c!966313) b!5524595))

(assert (= (and d!1750411 (not c!966313)) b!5524596))

(declare-fun m!6527022 () Bool)

(assert (=> d!1750411 m!6527022))

(declare-fun m!6527024 () Bool)

(assert (=> b!5524595 m!6527024))

(declare-fun m!6527026 () Bool)

(assert (=> b!5524596 m!6527026))

(assert (=> b!5524596 m!6527026))

(declare-fun m!6527028 () Bool)

(assert (=> b!5524596 m!6527028))

(declare-fun m!6527030 () Bool)

(assert (=> b!5524596 m!6527030))

(assert (=> b!5524596 m!6527028))

(assert (=> b!5524596 m!6527030))

(declare-fun m!6527032 () Bool)

(assert (=> b!5524596 m!6527032))

(assert (=> b!5524068 d!1750411))

(declare-fun bs!1274712 () Bool)

(declare-fun d!1750413 () Bool)

(assert (= bs!1274712 (and d!1750413 d!1750407)))

(declare-fun lambda!296220 () Int)

(assert (=> bs!1274712 (= lambda!296220 lambda!296214)))

(declare-fun bs!1274713 () Bool)

(assert (= bs!1274713 (and d!1750413 d!1750409)))

(assert (=> bs!1274713 (= lambda!296220 lambda!296217)))

(declare-fun b!5524618 () Bool)

(declare-fun e!3415488 () Bool)

(declare-fun lt!2247232 () Regex!15511)

(declare-fun isEmptyExpr!1083 (Regex!15511) Bool)

(assert (=> b!5524618 (= e!3415488 (isEmptyExpr!1083 lt!2247232))))

(declare-fun b!5524619 () Bool)

(declare-fun e!3415492 () Regex!15511)

(assert (=> b!5524619 (= e!3415492 (Concat!24356 (h!69156 (exprs!5395 (h!69157 zl!343))) (generalisedConcat!1126 (t!376085 (exprs!5395 (h!69157 zl!343))))))))

(declare-fun b!5524620 () Bool)

(declare-fun e!3415489 () Bool)

(assert (=> b!5524620 (= e!3415489 (= lt!2247232 (head!11825 (exprs!5395 (h!69157 zl!343)))))))

(declare-fun b!5524621 () Bool)

(declare-fun isConcat!606 (Regex!15511) Bool)

(assert (=> b!5524621 (= e!3415489 (isConcat!606 lt!2247232))))

(declare-fun b!5524622 () Bool)

(declare-fun e!3415490 () Bool)

(assert (=> b!5524622 (= e!3415490 e!3415488)))

(declare-fun c!966323 () Bool)

(assert (=> b!5524622 (= c!966323 (isEmpty!34494 (exprs!5395 (h!69157 zl!343))))))

(declare-fun b!5524623 () Bool)

(declare-fun e!3415491 () Regex!15511)

(assert (=> b!5524623 (= e!3415491 e!3415492)))

(declare-fun c!966325 () Bool)

(assert (=> b!5524623 (= c!966325 ((_ is Cons!62708) (exprs!5395 (h!69157 zl!343))))))

(declare-fun b!5524624 () Bool)

(assert (=> b!5524624 (= e!3415491 (h!69156 (exprs!5395 (h!69157 zl!343))))))

(declare-fun b!5524625 () Bool)

(declare-fun e!3415487 () Bool)

(assert (=> b!5524625 (= e!3415487 (isEmpty!34494 (t!376085 (exprs!5395 (h!69157 zl!343)))))))

(declare-fun b!5524626 () Bool)

(assert (=> b!5524626 (= e!3415488 e!3415489)))

(declare-fun c!966322 () Bool)

(assert (=> b!5524626 (= c!966322 (isEmpty!34494 (tail!10920 (exprs!5395 (h!69157 zl!343)))))))

(declare-fun b!5524617 () Bool)

(assert (=> b!5524617 (= e!3415492 EmptyExpr!15511)))

(assert (=> d!1750413 e!3415490))

(declare-fun res!2352727 () Bool)

(assert (=> d!1750413 (=> (not res!2352727) (not e!3415490))))

(assert (=> d!1750413 (= res!2352727 (validRegex!7247 lt!2247232))))

(assert (=> d!1750413 (= lt!2247232 e!3415491)))

(declare-fun c!966324 () Bool)

(assert (=> d!1750413 (= c!966324 e!3415487)))

(declare-fun res!2352728 () Bool)

(assert (=> d!1750413 (=> (not res!2352728) (not e!3415487))))

(assert (=> d!1750413 (= res!2352728 ((_ is Cons!62708) (exprs!5395 (h!69157 zl!343))))))

(assert (=> d!1750413 (forall!14687 (exprs!5395 (h!69157 zl!343)) lambda!296220)))

(assert (=> d!1750413 (= (generalisedConcat!1126 (exprs!5395 (h!69157 zl!343))) lt!2247232)))

(assert (= (and d!1750413 res!2352728) b!5524625))

(assert (= (and d!1750413 c!966324) b!5524624))

(assert (= (and d!1750413 (not c!966324)) b!5524623))

(assert (= (and b!5524623 c!966325) b!5524619))

(assert (= (and b!5524623 (not c!966325)) b!5524617))

(assert (= (and d!1750413 res!2352727) b!5524622))

(assert (= (and b!5524622 c!966323) b!5524618))

(assert (= (and b!5524622 (not c!966323)) b!5524626))

(assert (= (and b!5524626 c!966322) b!5524620))

(assert (= (and b!5524626 (not c!966322)) b!5524621))

(assert (=> b!5524625 m!6526556))

(declare-fun m!6527034 () Bool)

(assert (=> b!5524620 m!6527034))

(declare-fun m!6527036 () Bool)

(assert (=> d!1750413 m!6527036))

(declare-fun m!6527038 () Bool)

(assert (=> d!1750413 m!6527038))

(declare-fun m!6527040 () Bool)

(assert (=> b!5524626 m!6527040))

(assert (=> b!5524626 m!6527040))

(declare-fun m!6527042 () Bool)

(assert (=> b!5524626 m!6527042))

(declare-fun m!6527044 () Bool)

(assert (=> b!5524618 m!6527044))

(declare-fun m!6527046 () Bool)

(assert (=> b!5524621 m!6527046))

(declare-fun m!6527048 () Bool)

(assert (=> b!5524619 m!6527048))

(declare-fun m!6527050 () Bool)

(assert (=> b!5524622 m!6527050))

(assert (=> b!5524044 d!1750413))

(declare-fun bs!1274714 () Bool)

(declare-fun d!1750415 () Bool)

(assert (= bs!1274714 (and d!1750415 d!1750407)))

(declare-fun lambda!296223 () Int)

(assert (=> bs!1274714 (= lambda!296223 lambda!296214)))

(declare-fun bs!1274715 () Bool)

(assert (= bs!1274715 (and d!1750415 d!1750409)))

(assert (=> bs!1274715 (= lambda!296223 lambda!296217)))

(declare-fun bs!1274716 () Bool)

(assert (= bs!1274716 (and d!1750415 d!1750413)))

(assert (=> bs!1274716 (= lambda!296223 lambda!296220)))

(assert (=> d!1750415 (= (inv!82024 setElem!36731) (forall!14687 (exprs!5395 setElem!36731) lambda!296223))))

(declare-fun bs!1274717 () Bool)

(assert (= bs!1274717 d!1750415))

(declare-fun m!6527052 () Bool)

(assert (=> bs!1274717 m!6527052))

(assert (=> setNonEmpty!36731 d!1750415))

(declare-fun bs!1274718 () Bool)

(declare-fun b!5524665 () Bool)

(assert (= bs!1274718 (and b!5524665 b!5524067)))

(declare-fun lambda!296228 () Int)

(assert (=> bs!1274718 (not (= lambda!296228 lambda!296135))))

(declare-fun bs!1274719 () Bool)

(assert (= bs!1274719 (and b!5524665 d!1750391)))

(assert (=> bs!1274719 (not (= lambda!296228 lambda!296208))))

(declare-fun bs!1274720 () Bool)

(assert (= bs!1274720 (and b!5524665 d!1750397)))

(assert (=> bs!1274720 (not (= lambda!296228 lambda!296211))))

(assert (=> bs!1274719 (not (= lambda!296228 lambda!296207))))

(assert (=> bs!1274718 (not (= lambda!296228 lambda!296136))))

(assert (=> b!5524665 true))

(assert (=> b!5524665 true))

(declare-fun bs!1274721 () Bool)

(declare-fun b!5524661 () Bool)

(assert (= bs!1274721 (and b!5524661 b!5524665)))

(declare-fun lambda!296229 () Int)

(assert (=> bs!1274721 (not (= lambda!296229 lambda!296228))))

(declare-fun bs!1274722 () Bool)

(assert (= bs!1274722 (and b!5524661 b!5524067)))

(assert (=> bs!1274722 (not (= lambda!296229 lambda!296135))))

(declare-fun bs!1274723 () Bool)

(assert (= bs!1274723 (and b!5524661 d!1750391)))

(assert (=> bs!1274723 (= lambda!296229 lambda!296208)))

(declare-fun bs!1274724 () Bool)

(assert (= bs!1274724 (and b!5524661 d!1750397)))

(assert (=> bs!1274724 (not (= lambda!296229 lambda!296211))))

(assert (=> bs!1274723 (not (= lambda!296229 lambda!296207))))

(assert (=> bs!1274722 (= lambda!296229 lambda!296136)))

(assert (=> b!5524661 true))

(assert (=> b!5524661 true))

(declare-fun b!5524659 () Bool)

(declare-fun e!3415517 () Bool)

(declare-fun e!3415514 () Bool)

(assert (=> b!5524659 (= e!3415517 e!3415514)))

(declare-fun res!2352747 () Bool)

(assert (=> b!5524659 (= res!2352747 (matchRSpec!2614 (regOne!31535 r!7292) s!2326))))

(assert (=> b!5524659 (=> res!2352747 e!3415514)))

(declare-fun bm!409654 () Bool)

(declare-fun call!409659 () Bool)

(assert (=> bm!409654 (= call!409659 (isEmpty!34498 s!2326))))

(declare-fun b!5524660 () Bool)

(declare-fun res!2352746 () Bool)

(declare-fun e!3415512 () Bool)

(assert (=> b!5524660 (=> res!2352746 e!3415512)))

(assert (=> b!5524660 (= res!2352746 call!409659)))

(declare-fun e!3415515 () Bool)

(assert (=> b!5524660 (= e!3415515 e!3415512)))

(declare-fun call!409660 () Bool)

(assert (=> b!5524661 (= e!3415515 call!409660)))

(declare-fun b!5524662 () Bool)

(assert (=> b!5524662 (= e!3415517 e!3415515)))

(declare-fun c!966335 () Bool)

(assert (=> b!5524662 (= c!966335 ((_ is Star!15511) r!7292))))

(declare-fun b!5524663 () Bool)

(declare-fun e!3415511 () Bool)

(assert (=> b!5524663 (= e!3415511 call!409659)))

(declare-fun b!5524664 () Bool)

(declare-fun e!3415516 () Bool)

(assert (=> b!5524664 (= e!3415511 e!3415516)))

(declare-fun res!2352745 () Bool)

(assert (=> b!5524664 (= res!2352745 (not ((_ is EmptyLang!15511) r!7292)))))

(assert (=> b!5524664 (=> (not res!2352745) (not e!3415516))))

(declare-fun bm!409655 () Bool)

(assert (=> bm!409655 (= call!409660 (Exists!2611 (ite c!966335 lambda!296228 lambda!296229)))))

(assert (=> b!5524665 (= e!3415512 call!409660)))

(declare-fun b!5524666 () Bool)

(declare-fun c!966337 () Bool)

(assert (=> b!5524666 (= c!966337 ((_ is Union!15511) r!7292))))

(declare-fun e!3415513 () Bool)

(assert (=> b!5524666 (= e!3415513 e!3415517)))

(declare-fun b!5524667 () Bool)

(assert (=> b!5524667 (= e!3415513 (= s!2326 (Cons!62710 (c!966149 r!7292) Nil!62710)))))

(declare-fun b!5524668 () Bool)

(assert (=> b!5524668 (= e!3415514 (matchRSpec!2614 (regTwo!31535 r!7292) s!2326))))

(declare-fun b!5524669 () Bool)

(declare-fun c!966334 () Bool)

(assert (=> b!5524669 (= c!966334 ((_ is ElementMatch!15511) r!7292))))

(assert (=> b!5524669 (= e!3415516 e!3415513)))

(declare-fun d!1750417 () Bool)

(declare-fun c!966336 () Bool)

(assert (=> d!1750417 (= c!966336 ((_ is EmptyExpr!15511) r!7292))))

(assert (=> d!1750417 (= (matchRSpec!2614 r!7292 s!2326) e!3415511)))

(assert (= (and d!1750417 c!966336) b!5524663))

(assert (= (and d!1750417 (not c!966336)) b!5524664))

(assert (= (and b!5524664 res!2352745) b!5524669))

(assert (= (and b!5524669 c!966334) b!5524667))

(assert (= (and b!5524669 (not c!966334)) b!5524666))

(assert (= (and b!5524666 c!966337) b!5524659))

(assert (= (and b!5524666 (not c!966337)) b!5524662))

(assert (= (and b!5524659 (not res!2352747)) b!5524668))

(assert (= (and b!5524662 c!966335) b!5524660))

(assert (= (and b!5524662 (not c!966335)) b!5524661))

(assert (= (and b!5524660 (not res!2352746)) b!5524665))

(assert (= (or b!5524665 b!5524661) bm!409655))

(assert (= (or b!5524663 b!5524660) bm!409654))

(declare-fun m!6527054 () Bool)

(assert (=> b!5524659 m!6527054))

(declare-fun m!6527056 () Bool)

(assert (=> bm!409654 m!6527056))

(declare-fun m!6527058 () Bool)

(assert (=> bm!409655 m!6527058))

(declare-fun m!6527060 () Bool)

(assert (=> b!5524668 m!6527060))

(assert (=> b!5524064 d!1750417))

(declare-fun b!5524698 () Bool)

(declare-fun e!3415532 () Bool)

(declare-fun e!3415533 () Bool)

(assert (=> b!5524698 (= e!3415532 e!3415533)))

(declare-fun res!2352771 () Bool)

(assert (=> b!5524698 (=> (not res!2352771) (not e!3415533))))

(declare-fun lt!2247235 () Bool)

(assert (=> b!5524698 (= res!2352771 (not lt!2247235))))

(declare-fun b!5524699 () Bool)

(declare-fun res!2352765 () Bool)

(assert (=> b!5524699 (=> res!2352765 e!3415532)))

(declare-fun e!3415538 () Bool)

(assert (=> b!5524699 (= res!2352765 e!3415538)))

(declare-fun res!2352769 () Bool)

(assert (=> b!5524699 (=> (not res!2352769) (not e!3415538))))

(assert (=> b!5524699 (= res!2352769 lt!2247235)))

(declare-fun b!5524700 () Bool)

(declare-fun res!2352768 () Bool)

(declare-fun e!3415535 () Bool)

(assert (=> b!5524700 (=> res!2352768 e!3415535)))

(assert (=> b!5524700 (= res!2352768 (not (isEmpty!34498 (tail!10921 s!2326))))))

(declare-fun b!5524701 () Bool)

(declare-fun res!2352764 () Bool)

(assert (=> b!5524701 (=> (not res!2352764) (not e!3415538))))

(assert (=> b!5524701 (= res!2352764 (isEmpty!34498 (tail!10921 s!2326)))))

(declare-fun b!5524702 () Bool)

(declare-fun res!2352767 () Bool)

(assert (=> b!5524702 (=> res!2352767 e!3415532)))

(assert (=> b!5524702 (= res!2352767 (not ((_ is ElementMatch!15511) r!7292)))))

(declare-fun e!3415534 () Bool)

(assert (=> b!5524702 (= e!3415534 e!3415532)))

(declare-fun b!5524703 () Bool)

(assert (=> b!5524703 (= e!3415535 (not (= (head!11826 s!2326) (c!966149 r!7292))))))

(declare-fun b!5524705 () Bool)

(declare-fun e!3415537 () Bool)

(assert (=> b!5524705 (= e!3415537 e!3415534)))

(declare-fun c!966345 () Bool)

(assert (=> b!5524705 (= c!966345 ((_ is EmptyLang!15511) r!7292))))

(declare-fun b!5524706 () Bool)

(declare-fun e!3415536 () Bool)

(declare-fun derivativeStep!4376 (Regex!15511 C!31292) Regex!15511)

(assert (=> b!5524706 (= e!3415536 (matchR!7696 (derivativeStep!4376 r!7292 (head!11826 s!2326)) (tail!10921 s!2326)))))

(declare-fun bm!409658 () Bool)

(declare-fun call!409663 () Bool)

(assert (=> bm!409658 (= call!409663 (isEmpty!34498 s!2326))))

(declare-fun b!5524707 () Bool)

(assert (=> b!5524707 (= e!3415538 (= (head!11826 s!2326) (c!966149 r!7292)))))

(declare-fun b!5524708 () Bool)

(assert (=> b!5524708 (= e!3415536 (nullable!5545 r!7292))))

(declare-fun b!5524709 () Bool)

(assert (=> b!5524709 (= e!3415537 (= lt!2247235 call!409663))))

(declare-fun b!5524710 () Bool)

(assert (=> b!5524710 (= e!3415533 e!3415535)))

(declare-fun res!2352770 () Bool)

(assert (=> b!5524710 (=> res!2352770 e!3415535)))

(assert (=> b!5524710 (= res!2352770 call!409663)))

(declare-fun b!5524711 () Bool)

(assert (=> b!5524711 (= e!3415534 (not lt!2247235))))

(declare-fun d!1750419 () Bool)

(assert (=> d!1750419 e!3415537))

(declare-fun c!966346 () Bool)

(assert (=> d!1750419 (= c!966346 ((_ is EmptyExpr!15511) r!7292))))

(assert (=> d!1750419 (= lt!2247235 e!3415536)))

(declare-fun c!966344 () Bool)

(assert (=> d!1750419 (= c!966344 (isEmpty!34498 s!2326))))

(assert (=> d!1750419 (validRegex!7247 r!7292)))

(assert (=> d!1750419 (= (matchR!7696 r!7292 s!2326) lt!2247235)))

(declare-fun b!5524704 () Bool)

(declare-fun res!2352766 () Bool)

(assert (=> b!5524704 (=> (not res!2352766) (not e!3415538))))

(assert (=> b!5524704 (= res!2352766 (not call!409663))))

(assert (= (and d!1750419 c!966344) b!5524708))

(assert (= (and d!1750419 (not c!966344)) b!5524706))

(assert (= (and d!1750419 c!966346) b!5524709))

(assert (= (and d!1750419 (not c!966346)) b!5524705))

(assert (= (and b!5524705 c!966345) b!5524711))

(assert (= (and b!5524705 (not c!966345)) b!5524702))

(assert (= (and b!5524702 (not res!2352767)) b!5524699))

(assert (= (and b!5524699 res!2352769) b!5524704))

(assert (= (and b!5524704 res!2352766) b!5524701))

(assert (= (and b!5524701 res!2352764) b!5524707))

(assert (= (and b!5524699 (not res!2352765)) b!5524698))

(assert (= (and b!5524698 res!2352771) b!5524710))

(assert (= (and b!5524710 (not res!2352770)) b!5524700))

(assert (= (and b!5524700 (not res!2352768)) b!5524703))

(assert (= (or b!5524709 b!5524704 b!5524710) bm!409658))

(declare-fun m!6527062 () Bool)

(assert (=> b!5524707 m!6527062))

(assert (=> d!1750419 m!6527056))

(assert (=> d!1750419 m!6526590))

(assert (=> b!5524703 m!6527062))

(declare-fun m!6527064 () Bool)

(assert (=> b!5524700 m!6527064))

(assert (=> b!5524700 m!6527064))

(declare-fun m!6527066 () Bool)

(assert (=> b!5524700 m!6527066))

(assert (=> b!5524701 m!6527064))

(assert (=> b!5524701 m!6527064))

(assert (=> b!5524701 m!6527066))

(declare-fun m!6527068 () Bool)

(assert (=> b!5524708 m!6527068))

(assert (=> bm!409658 m!6527056))

(assert (=> b!5524706 m!6527062))

(assert (=> b!5524706 m!6527062))

(declare-fun m!6527070 () Bool)

(assert (=> b!5524706 m!6527070))

(assert (=> b!5524706 m!6527064))

(assert (=> b!5524706 m!6527070))

(assert (=> b!5524706 m!6527064))

(declare-fun m!6527072 () Bool)

(assert (=> b!5524706 m!6527072))

(assert (=> b!5524064 d!1750419))

(declare-fun d!1750421 () Bool)

(assert (=> d!1750421 (= (matchR!7696 r!7292 s!2326) (matchRSpec!2614 r!7292 s!2326))))

(declare-fun lt!2247238 () Unit!155482)

(declare-fun choose!41976 (Regex!15511 List!62834) Unit!155482)

(assert (=> d!1750421 (= lt!2247238 (choose!41976 r!7292 s!2326))))

(assert (=> d!1750421 (validRegex!7247 r!7292)))

(assert (=> d!1750421 (= (mainMatchTheorem!2614 r!7292 s!2326) lt!2247238)))

(declare-fun bs!1274725 () Bool)

(assert (= bs!1274725 d!1750421))

(assert (=> bs!1274725 m!6526548))

(assert (=> bs!1274725 m!6526546))

(declare-fun m!6527074 () Bool)

(assert (=> bs!1274725 m!6527074))

(assert (=> bs!1274725 m!6526590))

(assert (=> b!5524064 d!1750421))

(declare-fun d!1750423 () Bool)

(declare-fun c!966347 () Bool)

(assert (=> d!1750423 (= c!966347 (isEmpty!34498 s!2326))))

(declare-fun e!3415539 () Bool)

(assert (=> d!1750423 (= (matchZipper!1669 lt!2247109 s!2326) e!3415539)))

(declare-fun b!5524712 () Bool)

(assert (=> b!5524712 (= e!3415539 (nullableZipper!1537 lt!2247109))))

(declare-fun b!5524713 () Bool)

(assert (=> b!5524713 (= e!3415539 (matchZipper!1669 (derivationStepZipper!1616 lt!2247109 (head!11826 s!2326)) (tail!10921 s!2326)))))

(assert (= (and d!1750423 c!966347) b!5524712))

(assert (= (and d!1750423 (not c!966347)) b!5524713))

(assert (=> d!1750423 m!6527056))

(declare-fun m!6527076 () Bool)

(assert (=> b!5524712 m!6527076))

(assert (=> b!5524713 m!6527062))

(assert (=> b!5524713 m!6527062))

(declare-fun m!6527078 () Bool)

(assert (=> b!5524713 m!6527078))

(assert (=> b!5524713 m!6527064))

(assert (=> b!5524713 m!6527078))

(assert (=> b!5524713 m!6527064))

(declare-fun m!6527080 () Bool)

(assert (=> b!5524713 m!6527080))

(assert (=> b!5524054 d!1750423))

(declare-fun d!1750425 () Bool)

(declare-fun c!966348 () Bool)

(assert (=> d!1750425 (= c!966348 (isEmpty!34498 (t!376087 s!2326)))))

(declare-fun e!3415540 () Bool)

(assert (=> d!1750425 (= (matchZipper!1669 (derivationStepZipper!1616 lt!2247109 (h!69158 s!2326)) (t!376087 s!2326)) e!3415540)))

(declare-fun b!5524714 () Bool)

(assert (=> b!5524714 (= e!3415540 (nullableZipper!1537 (derivationStepZipper!1616 lt!2247109 (h!69158 s!2326))))))

(declare-fun b!5524715 () Bool)

(assert (=> b!5524715 (= e!3415540 (matchZipper!1669 (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247109 (h!69158 s!2326)) (head!11826 (t!376087 s!2326))) (tail!10921 (t!376087 s!2326))))))

(assert (= (and d!1750425 c!966348) b!5524714))

(assert (= (and d!1750425 (not c!966348)) b!5524715))

(assert (=> d!1750425 m!6527022))

(assert (=> b!5524714 m!6526594))

(declare-fun m!6527082 () Bool)

(assert (=> b!5524714 m!6527082))

(assert (=> b!5524715 m!6527026))

(assert (=> b!5524715 m!6526594))

(assert (=> b!5524715 m!6527026))

(declare-fun m!6527084 () Bool)

(assert (=> b!5524715 m!6527084))

(assert (=> b!5524715 m!6527030))

(assert (=> b!5524715 m!6527084))

(assert (=> b!5524715 m!6527030))

(declare-fun m!6527086 () Bool)

(assert (=> b!5524715 m!6527086))

(assert (=> b!5524054 d!1750425))

(declare-fun bs!1274726 () Bool)

(declare-fun d!1750427 () Bool)

(assert (= bs!1274726 (and d!1750427 b!5524057)))

(declare-fun lambda!296232 () Int)

(assert (=> bs!1274726 (= lambda!296232 lambda!296137)))

(assert (=> d!1750427 true))

(assert (=> d!1750427 (= (derivationStepZipper!1616 lt!2247109 (h!69158 s!2326)) (flatMap!1124 lt!2247109 lambda!296232))))

(declare-fun bs!1274727 () Bool)

(assert (= bs!1274727 d!1750427))

(declare-fun m!6527088 () Bool)

(assert (=> bs!1274727 m!6527088))

(assert (=> b!5524054 d!1750427))

(declare-fun b!5524736 () Bool)

(declare-fun e!3415561 () Bool)

(declare-fun e!3415559 () Bool)

(assert (=> b!5524736 (= e!3415561 e!3415559)))

(declare-fun res!2352782 () Bool)

(assert (=> b!5524736 (=> (not res!2352782) (not e!3415559))))

(declare-fun call!409671 () Bool)

(assert (=> b!5524736 (= res!2352782 call!409671)))

(declare-fun b!5524738 () Bool)

(declare-fun call!409670 () Bool)

(assert (=> b!5524738 (= e!3415559 call!409670)))

(declare-fun bm!409665 () Bool)

(declare-fun call!409672 () Bool)

(assert (=> bm!409665 (= call!409670 call!409672)))

(declare-fun b!5524739 () Bool)

(declare-fun e!3415558 () Bool)

(declare-fun e!3415560 () Bool)

(assert (=> b!5524739 (= e!3415558 e!3415560)))

(declare-fun c!966355 () Bool)

(assert (=> b!5524739 (= c!966355 ((_ is Star!15511) r!7292))))

(declare-fun bm!409666 () Bool)

(declare-fun c!966356 () Bool)

(assert (=> bm!409666 (= call!409671 (validRegex!7247 (ite c!966356 (regOne!31535 r!7292) (regOne!31534 r!7292))))))

(declare-fun b!5524740 () Bool)

(declare-fun res!2352783 () Bool)

(declare-fun e!3415555 () Bool)

(assert (=> b!5524740 (=> (not res!2352783) (not e!3415555))))

(assert (=> b!5524740 (= res!2352783 call!409671)))

(declare-fun e!3415557 () Bool)

(assert (=> b!5524740 (= e!3415557 e!3415555)))

(declare-fun b!5524741 () Bool)

(declare-fun e!3415556 () Bool)

(assert (=> b!5524741 (= e!3415560 e!3415556)))

(declare-fun res!2352784 () Bool)

(assert (=> b!5524741 (= res!2352784 (not (nullable!5545 (reg!15840 r!7292))))))

(assert (=> b!5524741 (=> (not res!2352784) (not e!3415556))))

(declare-fun d!1750429 () Bool)

(declare-fun res!2352786 () Bool)

(assert (=> d!1750429 (=> res!2352786 e!3415558)))

(assert (=> d!1750429 (= res!2352786 ((_ is ElementMatch!15511) r!7292))))

(assert (=> d!1750429 (= (validRegex!7247 r!7292) e!3415558)))

(declare-fun b!5524737 () Bool)

(declare-fun res!2352785 () Bool)

(assert (=> b!5524737 (=> res!2352785 e!3415561)))

(assert (=> b!5524737 (= res!2352785 (not ((_ is Concat!24356) r!7292)))))

(assert (=> b!5524737 (= e!3415557 e!3415561)))

(declare-fun bm!409667 () Bool)

(assert (=> bm!409667 (= call!409672 (validRegex!7247 (ite c!966355 (reg!15840 r!7292) (ite c!966356 (regTwo!31535 r!7292) (regTwo!31534 r!7292)))))))

(declare-fun b!5524742 () Bool)

(assert (=> b!5524742 (= e!3415556 call!409672)))

(declare-fun b!5524743 () Bool)

(assert (=> b!5524743 (= e!3415555 call!409670)))

(declare-fun b!5524744 () Bool)

(assert (=> b!5524744 (= e!3415560 e!3415557)))

(assert (=> b!5524744 (= c!966356 ((_ is Union!15511) r!7292))))

(assert (= (and d!1750429 (not res!2352786)) b!5524739))

(assert (= (and b!5524739 c!966355) b!5524741))

(assert (= (and b!5524739 (not c!966355)) b!5524744))

(assert (= (and b!5524741 res!2352784) b!5524742))

(assert (= (and b!5524744 c!966356) b!5524740))

(assert (= (and b!5524744 (not c!966356)) b!5524737))

(assert (= (and b!5524740 res!2352783) b!5524743))

(assert (= (and b!5524737 (not res!2352785)) b!5524736))

(assert (= (and b!5524736 res!2352782) b!5524738))

(assert (= (or b!5524743 b!5524738) bm!409665))

(assert (= (or b!5524740 b!5524736) bm!409666))

(assert (= (or b!5524742 bm!409665) bm!409667))

(declare-fun m!6527090 () Bool)

(assert (=> bm!409666 m!6527090))

(declare-fun m!6527092 () Bool)

(assert (=> b!5524741 m!6527092))

(declare-fun m!6527094 () Bool)

(assert (=> bm!409667 m!6527094))

(assert (=> start!576482 d!1750429))

(declare-fun d!1750431 () Bool)

(declare-fun e!3415564 () Bool)

(assert (=> d!1750431 e!3415564))

(declare-fun res!2352789 () Bool)

(assert (=> d!1750431 (=> (not res!2352789) (not e!3415564))))

(declare-fun lt!2247241 () List!62833)

(declare-fun noDuplicate!1504 (List!62833) Bool)

(assert (=> d!1750431 (= res!2352789 (noDuplicate!1504 lt!2247241))))

(declare-fun choose!41977 ((InoxSet Context!9790)) List!62833)

(assert (=> d!1750431 (= lt!2247241 (choose!41977 z!1189))))

(assert (=> d!1750431 (= (toList!9295 z!1189) lt!2247241)))

(declare-fun b!5524747 () Bool)

(declare-fun content!11276 (List!62833) (InoxSet Context!9790))

(assert (=> b!5524747 (= e!3415564 (= (content!11276 lt!2247241) z!1189))))

(assert (= (and d!1750431 res!2352789) b!5524747))

(declare-fun m!6527096 () Bool)

(assert (=> d!1750431 m!6527096))

(declare-fun m!6527098 () Bool)

(assert (=> d!1750431 m!6527098))

(declare-fun m!6527100 () Bool)

(assert (=> b!5524747 m!6527100))

(assert (=> b!5524061 d!1750431))

(declare-fun d!1750433 () Bool)

(assert (=> d!1750433 (= (flatMap!1124 lt!2247109 lambda!296137) (choose!41974 lt!2247109 lambda!296137))))

(declare-fun bs!1274728 () Bool)

(assert (= bs!1274728 d!1750433))

(declare-fun m!6527102 () Bool)

(assert (=> bs!1274728 m!6527102))

(assert (=> b!5524051 d!1750433))

(declare-fun b!5524770 () Bool)

(declare-fun e!3415578 () (InoxSet Context!9790))

(assert (=> b!5524770 (= e!3415578 (store ((as const (Array Context!9790 Bool)) false) lt!2247098 true))))

(declare-fun bm!409680 () Bool)

(declare-fun c!966367 () Bool)

(declare-fun c!966370 () Bool)

(declare-fun c!966369 () Bool)

(declare-fun call!409686 () List!62832)

(declare-fun call!409688 () (InoxSet Context!9790))

(assert (=> bm!409680 (= call!409688 (derivationStepZipperDown!853 (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292))))) (ite (or c!966370 c!966367) lt!2247098 (Context!9791 call!409686)) (h!69158 s!2326)))))

(declare-fun bm!409681 () Bool)

(declare-fun call!409685 () List!62832)

(assert (=> bm!409681 (= call!409686 call!409685)))

(declare-fun b!5524771 () Bool)

(declare-fun c!966368 () Bool)

(assert (=> b!5524771 (= c!966368 ((_ is Star!15511) (regTwo!31534 r!7292)))))

(declare-fun e!3415582 () (InoxSet Context!9790))

(declare-fun e!3415577 () (InoxSet Context!9790))

(assert (=> b!5524771 (= e!3415582 e!3415577)))

(declare-fun d!1750435 () Bool)

(declare-fun c!966371 () Bool)

(assert (=> d!1750435 (= c!966371 (and ((_ is ElementMatch!15511) (regTwo!31534 r!7292)) (= (c!966149 (regTwo!31534 r!7292)) (h!69158 s!2326))))))

(assert (=> d!1750435 (= (derivationStepZipperDown!853 (regTwo!31534 r!7292) lt!2247098 (h!69158 s!2326)) e!3415578)))

(declare-fun b!5524772 () Bool)

(declare-fun e!3415579 () (InoxSet Context!9790))

(declare-fun call!409690 () (InoxSet Context!9790))

(declare-fun call!409689 () (InoxSet Context!9790))

(assert (=> b!5524772 (= e!3415579 ((_ map or) call!409690 call!409689))))

(declare-fun b!5524773 () Bool)

(declare-fun call!409687 () (InoxSet Context!9790))

(assert (=> b!5524773 (= e!3415577 call!409687)))

(declare-fun b!5524774 () Bool)

(assert (=> b!5524774 (= e!3415582 call!409687)))

(declare-fun bm!409682 () Bool)

(assert (=> bm!409682 (= call!409687 call!409689)))

(declare-fun b!5524775 () Bool)

(declare-fun e!3415580 () Bool)

(assert (=> b!5524775 (= e!3415580 (nullable!5545 (regOne!31534 (regTwo!31534 r!7292))))))

(declare-fun bm!409683 () Bool)

(declare-fun $colon$colon!1590 (List!62832 Regex!15511) List!62832)

(assert (=> bm!409683 (= call!409685 ($colon$colon!1590 (exprs!5395 lt!2247098) (ite (or c!966367 c!966369) (regTwo!31534 (regTwo!31534 r!7292)) (regTwo!31534 r!7292))))))

(declare-fun bm!409684 () Bool)

(assert (=> bm!409684 (= call!409689 call!409688)))

(declare-fun b!5524776 () Bool)

(declare-fun e!3415581 () (InoxSet Context!9790))

(assert (=> b!5524776 (= e!3415578 e!3415581)))

(assert (=> b!5524776 (= c!966370 ((_ is Union!15511) (regTwo!31534 r!7292)))))

(declare-fun bm!409685 () Bool)

(assert (=> bm!409685 (= call!409690 (derivationStepZipperDown!853 (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292))) (ite c!966370 lt!2247098 (Context!9791 call!409685)) (h!69158 s!2326)))))

(declare-fun b!5524777 () Bool)

(assert (=> b!5524777 (= e!3415581 ((_ map or) call!409690 call!409688))))

(declare-fun b!5524778 () Bool)

(assert (=> b!5524778 (= e!3415579 e!3415582)))

(assert (=> b!5524778 (= c!966369 ((_ is Concat!24356) (regTwo!31534 r!7292)))))

(declare-fun b!5524779 () Bool)

(assert (=> b!5524779 (= c!966367 e!3415580)))

(declare-fun res!2352792 () Bool)

(assert (=> b!5524779 (=> (not res!2352792) (not e!3415580))))

(assert (=> b!5524779 (= res!2352792 ((_ is Concat!24356) (regTwo!31534 r!7292)))))

(assert (=> b!5524779 (= e!3415581 e!3415579)))

(declare-fun b!5524780 () Bool)

(assert (=> b!5524780 (= e!3415577 ((as const (Array Context!9790 Bool)) false))))

(assert (= (and d!1750435 c!966371) b!5524770))

(assert (= (and d!1750435 (not c!966371)) b!5524776))

(assert (= (and b!5524776 c!966370) b!5524777))

(assert (= (and b!5524776 (not c!966370)) b!5524779))

(assert (= (and b!5524779 res!2352792) b!5524775))

(assert (= (and b!5524779 c!966367) b!5524772))

(assert (= (and b!5524779 (not c!966367)) b!5524778))

(assert (= (and b!5524778 c!966369) b!5524774))

(assert (= (and b!5524778 (not c!966369)) b!5524771))

(assert (= (and b!5524771 c!966368) b!5524773))

(assert (= (and b!5524771 (not c!966368)) b!5524780))

(assert (= (or b!5524774 b!5524773) bm!409681))

(assert (= (or b!5524774 b!5524773) bm!409682))

(assert (= (or b!5524772 bm!409681) bm!409683))

(assert (= (or b!5524772 bm!409682) bm!409684))

(assert (= (or b!5524777 bm!409684) bm!409680))

(assert (= (or b!5524777 b!5524772) bm!409685))

(declare-fun m!6527104 () Bool)

(assert (=> b!5524770 m!6527104))

(declare-fun m!6527106 () Bool)

(assert (=> bm!409680 m!6527106))

(declare-fun m!6527108 () Bool)

(assert (=> bm!409683 m!6527108))

(declare-fun m!6527110 () Bool)

(assert (=> b!5524775 m!6527110))

(declare-fun m!6527112 () Bool)

(assert (=> bm!409685 m!6527112))

(assert (=> b!5524051 d!1750435))

(declare-fun d!1750437 () Bool)

(assert (=> d!1750437 (= (flatMap!1124 lt!2247111 lambda!296137) (dynLambda!24502 lambda!296137 lt!2247113))))

(declare-fun lt!2247242 () Unit!155482)

(assert (=> d!1750437 (= lt!2247242 (choose!41975 lt!2247111 lt!2247113 lambda!296137))))

(assert (=> d!1750437 (= lt!2247111 (store ((as const (Array Context!9790 Bool)) false) lt!2247113 true))))

(assert (=> d!1750437 (= (lemmaFlatMapOnSingletonSet!656 lt!2247111 lt!2247113 lambda!296137) lt!2247242)))

(declare-fun b_lambda!209521 () Bool)

(assert (=> (not b_lambda!209521) (not d!1750437)))

(declare-fun bs!1274729 () Bool)

(assert (= bs!1274729 d!1750437))

(assert (=> bs!1274729 m!6526528))

(declare-fun m!6527114 () Bool)

(assert (=> bs!1274729 m!6527114))

(declare-fun m!6527116 () Bool)

(assert (=> bs!1274729 m!6527116))

(assert (=> bs!1274729 m!6526518))

(assert (=> b!5524051 d!1750437))

(declare-fun d!1750439 () Bool)

(declare-fun nullableFct!1669 (Regex!15511) Bool)

(assert (=> d!1750439 (= (nullable!5545 (regOne!31534 r!7292)) (nullableFct!1669 (regOne!31534 r!7292)))))

(declare-fun bs!1274730 () Bool)

(assert (= bs!1274730 d!1750439))

(declare-fun m!6527118 () Bool)

(assert (=> bs!1274730 m!6527118))

(assert (=> b!5524051 d!1750439))

(declare-fun b!5524781 () Bool)

(declare-fun e!3415584 () (InoxSet Context!9790))

(assert (=> b!5524781 (= e!3415584 (store ((as const (Array Context!9790 Bool)) false) lt!2247103 true))))

(declare-fun c!966372 () Bool)

(declare-fun c!966374 () Bool)

(declare-fun call!409694 () (InoxSet Context!9790))

(declare-fun bm!409686 () Bool)

(declare-fun call!409692 () List!62832)

(declare-fun c!966375 () Bool)

(assert (=> bm!409686 (= call!409694 (derivationStepZipperDown!853 (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292))))) (ite (or c!966375 c!966372) lt!2247103 (Context!9791 call!409692)) (h!69158 s!2326)))))

(declare-fun bm!409687 () Bool)

(declare-fun call!409691 () List!62832)

(assert (=> bm!409687 (= call!409692 call!409691)))

(declare-fun b!5524782 () Bool)

(declare-fun c!966373 () Bool)

(assert (=> b!5524782 (= c!966373 ((_ is Star!15511) (regOne!31534 r!7292)))))

(declare-fun e!3415588 () (InoxSet Context!9790))

(declare-fun e!3415583 () (InoxSet Context!9790))

(assert (=> b!5524782 (= e!3415588 e!3415583)))

(declare-fun d!1750441 () Bool)

(declare-fun c!966376 () Bool)

(assert (=> d!1750441 (= c!966376 (and ((_ is ElementMatch!15511) (regOne!31534 r!7292)) (= (c!966149 (regOne!31534 r!7292)) (h!69158 s!2326))))))

(assert (=> d!1750441 (= (derivationStepZipperDown!853 (regOne!31534 r!7292) lt!2247103 (h!69158 s!2326)) e!3415584)))

(declare-fun b!5524783 () Bool)

(declare-fun e!3415585 () (InoxSet Context!9790))

(declare-fun call!409696 () (InoxSet Context!9790))

(declare-fun call!409695 () (InoxSet Context!9790))

(assert (=> b!5524783 (= e!3415585 ((_ map or) call!409696 call!409695))))

(declare-fun b!5524784 () Bool)

(declare-fun call!409693 () (InoxSet Context!9790))

(assert (=> b!5524784 (= e!3415583 call!409693)))

(declare-fun b!5524785 () Bool)

(assert (=> b!5524785 (= e!3415588 call!409693)))

(declare-fun bm!409688 () Bool)

(assert (=> bm!409688 (= call!409693 call!409695)))

(declare-fun b!5524786 () Bool)

(declare-fun e!3415586 () Bool)

(assert (=> b!5524786 (= e!3415586 (nullable!5545 (regOne!31534 (regOne!31534 r!7292))))))

(declare-fun bm!409689 () Bool)

(assert (=> bm!409689 (= call!409691 ($colon$colon!1590 (exprs!5395 lt!2247103) (ite (or c!966372 c!966374) (regTwo!31534 (regOne!31534 r!7292)) (regOne!31534 r!7292))))))

(declare-fun bm!409690 () Bool)

(assert (=> bm!409690 (= call!409695 call!409694)))

(declare-fun b!5524787 () Bool)

(declare-fun e!3415587 () (InoxSet Context!9790))

(assert (=> b!5524787 (= e!3415584 e!3415587)))

(assert (=> b!5524787 (= c!966375 ((_ is Union!15511) (regOne!31534 r!7292)))))

(declare-fun bm!409691 () Bool)

(assert (=> bm!409691 (= call!409696 (derivationStepZipperDown!853 (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292))) (ite c!966375 lt!2247103 (Context!9791 call!409691)) (h!69158 s!2326)))))

(declare-fun b!5524788 () Bool)

(assert (=> b!5524788 (= e!3415587 ((_ map or) call!409696 call!409694))))

(declare-fun b!5524789 () Bool)

(assert (=> b!5524789 (= e!3415585 e!3415588)))

(assert (=> b!5524789 (= c!966374 ((_ is Concat!24356) (regOne!31534 r!7292)))))

(declare-fun b!5524790 () Bool)

(assert (=> b!5524790 (= c!966372 e!3415586)))

(declare-fun res!2352793 () Bool)

(assert (=> b!5524790 (=> (not res!2352793) (not e!3415586))))

(assert (=> b!5524790 (= res!2352793 ((_ is Concat!24356) (regOne!31534 r!7292)))))

(assert (=> b!5524790 (= e!3415587 e!3415585)))

(declare-fun b!5524791 () Bool)

(assert (=> b!5524791 (= e!3415583 ((as const (Array Context!9790 Bool)) false))))

(assert (= (and d!1750441 c!966376) b!5524781))

(assert (= (and d!1750441 (not c!966376)) b!5524787))

(assert (= (and b!5524787 c!966375) b!5524788))

(assert (= (and b!5524787 (not c!966375)) b!5524790))

(assert (= (and b!5524790 res!2352793) b!5524786))

(assert (= (and b!5524790 c!966372) b!5524783))

(assert (= (and b!5524790 (not c!966372)) b!5524789))

(assert (= (and b!5524789 c!966374) b!5524785))

(assert (= (and b!5524789 (not c!966374)) b!5524782))

(assert (= (and b!5524782 c!966373) b!5524784))

(assert (= (and b!5524782 (not c!966373)) b!5524791))

(assert (= (or b!5524785 b!5524784) bm!409687))

(assert (= (or b!5524785 b!5524784) bm!409688))

(assert (= (or b!5524783 bm!409687) bm!409689))

(assert (= (or b!5524783 bm!409688) bm!409690))

(assert (= (or b!5524788 bm!409690) bm!409686))

(assert (= (or b!5524788 b!5524783) bm!409691))

(assert (=> b!5524781 m!6526516))

(declare-fun m!6527120 () Bool)

(assert (=> bm!409686 m!6527120))

(declare-fun m!6527122 () Bool)

(assert (=> bm!409689 m!6527122))

(declare-fun m!6527124 () Bool)

(assert (=> b!5524786 m!6527124))

(declare-fun m!6527126 () Bool)

(assert (=> bm!409691 m!6527126))

(assert (=> b!5524051 d!1750441))

(declare-fun d!1750443 () Bool)

(assert (=> d!1750443 (= (flatMap!1124 lt!2247109 lambda!296137) (dynLambda!24502 lambda!296137 lt!2247103))))

(declare-fun lt!2247243 () Unit!155482)

(assert (=> d!1750443 (= lt!2247243 (choose!41975 lt!2247109 lt!2247103 lambda!296137))))

(assert (=> d!1750443 (= lt!2247109 (store ((as const (Array Context!9790 Bool)) false) lt!2247103 true))))

(assert (=> d!1750443 (= (lemmaFlatMapOnSingletonSet!656 lt!2247109 lt!2247103 lambda!296137) lt!2247243)))

(declare-fun b_lambda!209523 () Bool)

(assert (=> (not b_lambda!209523) (not d!1750443)))

(declare-fun bs!1274731 () Bool)

(assert (= bs!1274731 d!1750443))

(assert (=> bs!1274731 m!6526526))

(declare-fun m!6527128 () Bool)

(assert (=> bs!1274731 m!6527128))

(declare-fun m!6527130 () Bool)

(assert (=> bs!1274731 m!6527130))

(assert (=> bs!1274731 m!6526516))

(assert (=> b!5524051 d!1750443))

(declare-fun d!1750445 () Bool)

(assert (=> d!1750445 (= (flatMap!1124 lt!2247111 lambda!296137) (choose!41974 lt!2247111 lambda!296137))))

(declare-fun bs!1274732 () Bool)

(assert (= bs!1274732 d!1750445))

(declare-fun m!6527132 () Bool)

(assert (=> bs!1274732 m!6527132))

(assert (=> b!5524051 d!1750445))

(declare-fun bm!409692 () Bool)

(declare-fun call!409697 () (InoxSet Context!9790))

(assert (=> bm!409692 (= call!409697 (derivationStepZipperDown!853 (h!69156 (exprs!5395 lt!2247103)) (Context!9791 (t!376085 (exprs!5395 lt!2247103))) (h!69158 s!2326)))))

(declare-fun b!5524792 () Bool)

(declare-fun e!3415589 () (InoxSet Context!9790))

(assert (=> b!5524792 (= e!3415589 ((as const (Array Context!9790 Bool)) false))))

(declare-fun b!5524793 () Bool)

(declare-fun e!3415590 () (InoxSet Context!9790))

(assert (=> b!5524793 (= e!3415590 e!3415589)))

(declare-fun c!966378 () Bool)

(assert (=> b!5524793 (= c!966378 ((_ is Cons!62708) (exprs!5395 lt!2247103)))))

(declare-fun d!1750447 () Bool)

(declare-fun c!966377 () Bool)

(declare-fun e!3415591 () Bool)

(assert (=> d!1750447 (= c!966377 e!3415591)))

(declare-fun res!2352794 () Bool)

(assert (=> d!1750447 (=> (not res!2352794) (not e!3415591))))

(assert (=> d!1750447 (= res!2352794 ((_ is Cons!62708) (exprs!5395 lt!2247103)))))

(assert (=> d!1750447 (= (derivationStepZipperUp!779 lt!2247103 (h!69158 s!2326)) e!3415590)))

(declare-fun b!5524794 () Bool)

(assert (=> b!5524794 (= e!3415589 call!409697)))

(declare-fun b!5524795 () Bool)

(assert (=> b!5524795 (= e!3415590 ((_ map or) call!409697 (derivationStepZipperUp!779 (Context!9791 (t!376085 (exprs!5395 lt!2247103))) (h!69158 s!2326))))))

(declare-fun b!5524796 () Bool)

(assert (=> b!5524796 (= e!3415591 (nullable!5545 (h!69156 (exprs!5395 lt!2247103))))))

(assert (= (and d!1750447 res!2352794) b!5524796))

(assert (= (and d!1750447 c!966377) b!5524795))

(assert (= (and d!1750447 (not c!966377)) b!5524793))

(assert (= (and b!5524793 c!966378) b!5524794))

(assert (= (and b!5524793 (not c!966378)) b!5524792))

(assert (= (or b!5524795 b!5524794) bm!409692))

(declare-fun m!6527134 () Bool)

(assert (=> bm!409692 m!6527134))

(declare-fun m!6527136 () Bool)

(assert (=> b!5524795 m!6527136))

(declare-fun m!6527138 () Bool)

(assert (=> b!5524796 m!6527138))

(assert (=> b!5524051 d!1750447))

(declare-fun bm!409693 () Bool)

(declare-fun call!409698 () (InoxSet Context!9790))

(assert (=> bm!409693 (= call!409698 (derivationStepZipperDown!853 (h!69156 (exprs!5395 lt!2247113)) (Context!9791 (t!376085 (exprs!5395 lt!2247113))) (h!69158 s!2326)))))

(declare-fun b!5524797 () Bool)

(declare-fun e!3415592 () (InoxSet Context!9790))

(assert (=> b!5524797 (= e!3415592 ((as const (Array Context!9790 Bool)) false))))

(declare-fun b!5524798 () Bool)

(declare-fun e!3415593 () (InoxSet Context!9790))

(assert (=> b!5524798 (= e!3415593 e!3415592)))

(declare-fun c!966380 () Bool)

(assert (=> b!5524798 (= c!966380 ((_ is Cons!62708) (exprs!5395 lt!2247113)))))

(declare-fun d!1750449 () Bool)

(declare-fun c!966379 () Bool)

(declare-fun e!3415594 () Bool)

(assert (=> d!1750449 (= c!966379 e!3415594)))

(declare-fun res!2352795 () Bool)

(assert (=> d!1750449 (=> (not res!2352795) (not e!3415594))))

(assert (=> d!1750449 (= res!2352795 ((_ is Cons!62708) (exprs!5395 lt!2247113)))))

(assert (=> d!1750449 (= (derivationStepZipperUp!779 lt!2247113 (h!69158 s!2326)) e!3415593)))

(declare-fun b!5524799 () Bool)

(assert (=> b!5524799 (= e!3415592 call!409698)))

(declare-fun b!5524800 () Bool)

(assert (=> b!5524800 (= e!3415593 ((_ map or) call!409698 (derivationStepZipperUp!779 (Context!9791 (t!376085 (exprs!5395 lt!2247113))) (h!69158 s!2326))))))

(declare-fun b!5524801 () Bool)

(assert (=> b!5524801 (= e!3415594 (nullable!5545 (h!69156 (exprs!5395 lt!2247113))))))

(assert (= (and d!1750449 res!2352795) b!5524801))

(assert (= (and d!1750449 c!966379) b!5524800))

(assert (= (and d!1750449 (not c!966379)) b!5524798))

(assert (= (and b!5524798 c!966380) b!5524799))

(assert (= (and b!5524798 (not c!966380)) b!5524797))

(assert (= (or b!5524800 b!5524799) bm!409693))

(declare-fun m!6527140 () Bool)

(assert (=> bm!409693 m!6527140))

(declare-fun m!6527142 () Bool)

(assert (=> b!5524800 m!6527142))

(declare-fun m!6527144 () Bool)

(assert (=> b!5524801 m!6527144))

(assert (=> b!5524051 d!1750449))

(declare-fun b!5524802 () Bool)

(declare-fun e!3415596 () (InoxSet Context!9790))

(assert (=> b!5524802 (= e!3415596 (store ((as const (Array Context!9790 Bool)) false) lt!2247098 true))))

(declare-fun c!966383 () Bool)

(declare-fun c!966384 () Bool)

(declare-fun bm!409694 () Bool)

(declare-fun call!409702 () (InoxSet Context!9790))

(declare-fun call!409700 () List!62832)

(declare-fun c!966381 () Bool)

(assert (=> bm!409694 (= call!409702 (derivationStepZipperDown!853 (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292)))) (ite (or c!966384 c!966381) lt!2247098 (Context!9791 call!409700)) (h!69158 s!2326)))))

(declare-fun bm!409695 () Bool)

(declare-fun call!409699 () List!62832)

(assert (=> bm!409695 (= call!409700 call!409699)))

(declare-fun b!5524803 () Bool)

(declare-fun c!966382 () Bool)

(assert (=> b!5524803 (= c!966382 ((_ is Star!15511) r!7292))))

(declare-fun e!3415600 () (InoxSet Context!9790))

(declare-fun e!3415595 () (InoxSet Context!9790))

(assert (=> b!5524803 (= e!3415600 e!3415595)))

(declare-fun d!1750451 () Bool)

(declare-fun c!966385 () Bool)

(assert (=> d!1750451 (= c!966385 (and ((_ is ElementMatch!15511) r!7292) (= (c!966149 r!7292) (h!69158 s!2326))))))

(assert (=> d!1750451 (= (derivationStepZipperDown!853 r!7292 lt!2247098 (h!69158 s!2326)) e!3415596)))

(declare-fun b!5524804 () Bool)

(declare-fun e!3415597 () (InoxSet Context!9790))

(declare-fun call!409704 () (InoxSet Context!9790))

(declare-fun call!409703 () (InoxSet Context!9790))

(assert (=> b!5524804 (= e!3415597 ((_ map or) call!409704 call!409703))))

(declare-fun b!5524805 () Bool)

(declare-fun call!409701 () (InoxSet Context!9790))

(assert (=> b!5524805 (= e!3415595 call!409701)))

(declare-fun b!5524806 () Bool)

(assert (=> b!5524806 (= e!3415600 call!409701)))

(declare-fun bm!409696 () Bool)

(assert (=> bm!409696 (= call!409701 call!409703)))

(declare-fun b!5524807 () Bool)

(declare-fun e!3415598 () Bool)

(assert (=> b!5524807 (= e!3415598 (nullable!5545 (regOne!31534 r!7292)))))

(declare-fun bm!409697 () Bool)

(assert (=> bm!409697 (= call!409699 ($colon$colon!1590 (exprs!5395 lt!2247098) (ite (or c!966381 c!966383) (regTwo!31534 r!7292) r!7292)))))

(declare-fun bm!409698 () Bool)

(assert (=> bm!409698 (= call!409703 call!409702)))

(declare-fun b!5524808 () Bool)

(declare-fun e!3415599 () (InoxSet Context!9790))

(assert (=> b!5524808 (= e!3415596 e!3415599)))

(assert (=> b!5524808 (= c!966384 ((_ is Union!15511) r!7292))))

(declare-fun bm!409699 () Bool)

(assert (=> bm!409699 (= call!409704 (derivationStepZipperDown!853 (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292)) (ite c!966384 lt!2247098 (Context!9791 call!409699)) (h!69158 s!2326)))))

(declare-fun b!5524809 () Bool)

(assert (=> b!5524809 (= e!3415599 ((_ map or) call!409704 call!409702))))

(declare-fun b!5524810 () Bool)

(assert (=> b!5524810 (= e!3415597 e!3415600)))

(assert (=> b!5524810 (= c!966383 ((_ is Concat!24356) r!7292))))

(declare-fun b!5524811 () Bool)

(assert (=> b!5524811 (= c!966381 e!3415598)))

(declare-fun res!2352796 () Bool)

(assert (=> b!5524811 (=> (not res!2352796) (not e!3415598))))

(assert (=> b!5524811 (= res!2352796 ((_ is Concat!24356) r!7292))))

(assert (=> b!5524811 (= e!3415599 e!3415597)))

(declare-fun b!5524812 () Bool)

(assert (=> b!5524812 (= e!3415595 ((as const (Array Context!9790 Bool)) false))))

(assert (= (and d!1750451 c!966385) b!5524802))

(assert (= (and d!1750451 (not c!966385)) b!5524808))

(assert (= (and b!5524808 c!966384) b!5524809))

(assert (= (and b!5524808 (not c!966384)) b!5524811))

(assert (= (and b!5524811 res!2352796) b!5524807))

(assert (= (and b!5524811 c!966381) b!5524804))

(assert (= (and b!5524811 (not c!966381)) b!5524810))

(assert (= (and b!5524810 c!966383) b!5524806))

(assert (= (and b!5524810 (not c!966383)) b!5524803))

(assert (= (and b!5524803 c!966382) b!5524805))

(assert (= (and b!5524803 (not c!966382)) b!5524812))

(assert (= (or b!5524806 b!5524805) bm!409695))

(assert (= (or b!5524806 b!5524805) bm!409696))

(assert (= (or b!5524804 bm!409695) bm!409697))

(assert (= (or b!5524804 bm!409696) bm!409698))

(assert (= (or b!5524809 bm!409698) bm!409694))

(assert (= (or b!5524809 b!5524804) bm!409699))

(assert (=> b!5524802 m!6527104))

(declare-fun m!6527146 () Bool)

(assert (=> bm!409694 m!6527146))

(declare-fun m!6527148 () Bool)

(assert (=> bm!409697 m!6527148))

(assert (=> b!5524807 m!6526520))

(declare-fun m!6527150 () Bool)

(assert (=> bm!409699 m!6527150))

(assert (=> b!5524042 d!1750451))

(declare-fun bm!409700 () Bool)

(declare-fun call!409705 () (InoxSet Context!9790))

(assert (=> bm!409700 (= call!409705 (derivationStepZipperDown!853 (h!69156 (exprs!5395 lt!2247106)) (Context!9791 (t!376085 (exprs!5395 lt!2247106))) (h!69158 s!2326)))))

(declare-fun b!5524813 () Bool)

(declare-fun e!3415601 () (InoxSet Context!9790))

(assert (=> b!5524813 (= e!3415601 ((as const (Array Context!9790 Bool)) false))))

(declare-fun b!5524814 () Bool)

(declare-fun e!3415602 () (InoxSet Context!9790))

(assert (=> b!5524814 (= e!3415602 e!3415601)))

(declare-fun c!966387 () Bool)

(assert (=> b!5524814 (= c!966387 ((_ is Cons!62708) (exprs!5395 lt!2247106)))))

(declare-fun d!1750453 () Bool)

(declare-fun c!966386 () Bool)

(declare-fun e!3415603 () Bool)

(assert (=> d!1750453 (= c!966386 e!3415603)))

(declare-fun res!2352797 () Bool)

(assert (=> d!1750453 (=> (not res!2352797) (not e!3415603))))

(assert (=> d!1750453 (= res!2352797 ((_ is Cons!62708) (exprs!5395 lt!2247106)))))

(assert (=> d!1750453 (= (derivationStepZipperUp!779 lt!2247106 (h!69158 s!2326)) e!3415602)))

(declare-fun b!5524815 () Bool)

(assert (=> b!5524815 (= e!3415601 call!409705)))

(declare-fun b!5524816 () Bool)

(assert (=> b!5524816 (= e!3415602 ((_ map or) call!409705 (derivationStepZipperUp!779 (Context!9791 (t!376085 (exprs!5395 lt!2247106))) (h!69158 s!2326))))))

(declare-fun b!5524817 () Bool)

(assert (=> b!5524817 (= e!3415603 (nullable!5545 (h!69156 (exprs!5395 lt!2247106))))))

(assert (= (and d!1750453 res!2352797) b!5524817))

(assert (= (and d!1750453 c!966386) b!5524816))

(assert (= (and d!1750453 (not c!966386)) b!5524814))

(assert (= (and b!5524814 c!966387) b!5524815))

(assert (= (and b!5524814 (not c!966387)) b!5524813))

(assert (= (or b!5524816 b!5524815) bm!409700))

(declare-fun m!6527152 () Bool)

(assert (=> bm!409700 m!6527152))

(declare-fun m!6527154 () Bool)

(assert (=> b!5524816 m!6527154))

(declare-fun m!6527156 () Bool)

(assert (=> b!5524817 m!6527156))

(assert (=> b!5524042 d!1750453))

(declare-fun bs!1274733 () Bool)

(declare-fun d!1750455 () Bool)

(assert (= bs!1274733 (and d!1750455 b!5524057)))

(declare-fun lambda!296233 () Int)

(assert (=> bs!1274733 (= lambda!296233 lambda!296137)))

(declare-fun bs!1274734 () Bool)

(assert (= bs!1274734 (and d!1750455 d!1750427)))

(assert (=> bs!1274734 (= lambda!296233 lambda!296232)))

(assert (=> d!1750455 true))

(assert (=> d!1750455 (= (derivationStepZipper!1616 z!1189 (h!69158 s!2326)) (flatMap!1124 z!1189 lambda!296233))))

(declare-fun bs!1274735 () Bool)

(assert (= bs!1274735 d!1750455))

(declare-fun m!6527158 () Bool)

(assert (=> bs!1274735 m!6527158))

(assert (=> b!5524042 d!1750455))

(declare-fun d!1750457 () Bool)

(declare-fun c!966388 () Bool)

(assert (=> d!1750457 (= c!966388 (isEmpty!34498 (t!376087 s!2326)))))

(declare-fun e!3415604 () Bool)

(assert (=> d!1750457 (= (matchZipper!1669 lt!2247097 (t!376087 s!2326)) e!3415604)))

(declare-fun b!5524818 () Bool)

(assert (=> b!5524818 (= e!3415604 (nullableZipper!1537 lt!2247097))))

(declare-fun b!5524819 () Bool)

(assert (=> b!5524819 (= e!3415604 (matchZipper!1669 (derivationStepZipper!1616 lt!2247097 (head!11826 (t!376087 s!2326))) (tail!10921 (t!376087 s!2326))))))

(assert (= (and d!1750457 c!966388) b!5524818))

(assert (= (and d!1750457 (not c!966388)) b!5524819))

(assert (=> d!1750457 m!6527022))

(declare-fun m!6527160 () Bool)

(assert (=> b!5524818 m!6527160))

(assert (=> b!5524819 m!6527026))

(assert (=> b!5524819 m!6527026))

(declare-fun m!6527162 () Bool)

(assert (=> b!5524819 m!6527162))

(assert (=> b!5524819 m!6527030))

(assert (=> b!5524819 m!6527162))

(assert (=> b!5524819 m!6527030))

(declare-fun m!6527164 () Bool)

(assert (=> b!5524819 m!6527164))

(assert (=> b!5524043 d!1750457))

(declare-fun d!1750459 () Bool)

(declare-fun c!966389 () Bool)

(assert (=> d!1750459 (= c!966389 (isEmpty!34498 (t!376087 s!2326)))))

(declare-fun e!3415605 () Bool)

(assert (=> d!1750459 (= (matchZipper!1669 lt!2247093 (t!376087 s!2326)) e!3415605)))

(declare-fun b!5524820 () Bool)

(assert (=> b!5524820 (= e!3415605 (nullableZipper!1537 lt!2247093))))

(declare-fun b!5524821 () Bool)

(assert (=> b!5524821 (= e!3415605 (matchZipper!1669 (derivationStepZipper!1616 lt!2247093 (head!11826 (t!376087 s!2326))) (tail!10921 (t!376087 s!2326))))))

(assert (= (and d!1750459 c!966389) b!5524820))

(assert (= (and d!1750459 (not c!966389)) b!5524821))

(assert (=> d!1750459 m!6527022))

(declare-fun m!6527166 () Bool)

(assert (=> b!5524820 m!6527166))

(assert (=> b!5524821 m!6527026))

(assert (=> b!5524821 m!6527026))

(declare-fun m!6527168 () Bool)

(assert (=> b!5524821 m!6527168))

(assert (=> b!5524821 m!6527030))

(assert (=> b!5524821 m!6527168))

(assert (=> b!5524821 m!6527030))

(declare-fun m!6527170 () Bool)

(assert (=> b!5524821 m!6527170))

(assert (=> b!5524043 d!1750459))

(declare-fun d!1750461 () Bool)

(declare-fun c!966390 () Bool)

(assert (=> d!1750461 (= c!966390 (isEmpty!34498 (t!376087 s!2326)))))

(declare-fun e!3415606 () Bool)

(assert (=> d!1750461 (= (matchZipper!1669 lt!2247108 (t!376087 s!2326)) e!3415606)))

(declare-fun b!5524822 () Bool)

(assert (=> b!5524822 (= e!3415606 (nullableZipper!1537 lt!2247108))))

(declare-fun b!5524823 () Bool)

(assert (=> b!5524823 (= e!3415606 (matchZipper!1669 (derivationStepZipper!1616 lt!2247108 (head!11826 (t!376087 s!2326))) (tail!10921 (t!376087 s!2326))))))

(assert (= (and d!1750461 c!966390) b!5524822))

(assert (= (and d!1750461 (not c!966390)) b!5524823))

(assert (=> d!1750461 m!6527022))

(declare-fun m!6527172 () Bool)

(assert (=> b!5524822 m!6527172))

(assert (=> b!5524823 m!6527026))

(assert (=> b!5524823 m!6527026))

(declare-fun m!6527174 () Bool)

(assert (=> b!5524823 m!6527174))

(assert (=> b!5524823 m!6527030))

(assert (=> b!5524823 m!6527174))

(assert (=> b!5524823 m!6527030))

(declare-fun m!6527176 () Bool)

(assert (=> b!5524823 m!6527176))

(assert (=> b!5524043 d!1750461))

(declare-fun d!1750463 () Bool)

(declare-fun e!3415609 () Bool)

(assert (=> d!1750463 (= (matchZipper!1669 ((_ map or) lt!2247108 lt!2247095) (t!376087 s!2326)) e!3415609)))

(declare-fun res!2352800 () Bool)

(assert (=> d!1750463 (=> res!2352800 e!3415609)))

(assert (=> d!1750463 (= res!2352800 (matchZipper!1669 lt!2247108 (t!376087 s!2326)))))

(declare-fun lt!2247246 () Unit!155482)

(declare-fun choose!41978 ((InoxSet Context!9790) (InoxSet Context!9790) List!62834) Unit!155482)

(assert (=> d!1750463 (= lt!2247246 (choose!41978 lt!2247108 lt!2247095 (t!376087 s!2326)))))

(assert (=> d!1750463 (= (lemmaZipperConcatMatchesSameAsBothZippers!558 lt!2247108 lt!2247095 (t!376087 s!2326)) lt!2247246)))

(declare-fun b!5524826 () Bool)

(assert (=> b!5524826 (= e!3415609 (matchZipper!1669 lt!2247095 (t!376087 s!2326)))))

(assert (= (and d!1750463 (not res!2352800)) b!5524826))

(declare-fun m!6527178 () Bool)

(assert (=> d!1750463 m!6527178))

(assert (=> d!1750463 m!6526586))

(declare-fun m!6527180 () Bool)

(assert (=> d!1750463 m!6527180))

(assert (=> b!5524826 m!6526532))

(assert (=> b!5524043 d!1750463))

(declare-fun d!1750465 () Bool)

(declare-fun c!966391 () Bool)

(assert (=> d!1750465 (= c!966391 (isEmpty!34498 s!2326))))

(declare-fun e!3415610 () Bool)

(assert (=> d!1750465 (= (matchZipper!1669 lt!2247111 s!2326) e!3415610)))

(declare-fun b!5524827 () Bool)

(assert (=> b!5524827 (= e!3415610 (nullableZipper!1537 lt!2247111))))

(declare-fun b!5524828 () Bool)

(assert (=> b!5524828 (= e!3415610 (matchZipper!1669 (derivationStepZipper!1616 lt!2247111 (head!11826 s!2326)) (tail!10921 s!2326)))))

(assert (= (and d!1750465 c!966391) b!5524827))

(assert (= (and d!1750465 (not c!966391)) b!5524828))

(assert (=> d!1750465 m!6527056))

(declare-fun m!6527182 () Bool)

(assert (=> b!5524827 m!6527182))

(assert (=> b!5524828 m!6527062))

(assert (=> b!5524828 m!6527062))

(declare-fun m!6527184 () Bool)

(assert (=> b!5524828 m!6527184))

(assert (=> b!5524828 m!6527064))

(assert (=> b!5524828 m!6527184))

(assert (=> b!5524828 m!6527064))

(declare-fun m!6527186 () Bool)

(assert (=> b!5524828 m!6527186))

(assert (=> b!5524063 d!1750465))

(declare-fun d!1750467 () Bool)

(declare-fun c!966392 () Bool)

(assert (=> d!1750467 (= c!966392 (isEmpty!34498 (t!376087 s!2326)))))

(declare-fun e!3415611 () Bool)

(assert (=> d!1750467 (= (matchZipper!1669 (derivationStepZipper!1616 lt!2247111 (h!69158 s!2326)) (t!376087 s!2326)) e!3415611)))

(declare-fun b!5524829 () Bool)

(assert (=> b!5524829 (= e!3415611 (nullableZipper!1537 (derivationStepZipper!1616 lt!2247111 (h!69158 s!2326))))))

(declare-fun b!5524830 () Bool)

(assert (=> b!5524830 (= e!3415611 (matchZipper!1669 (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247111 (h!69158 s!2326)) (head!11826 (t!376087 s!2326))) (tail!10921 (t!376087 s!2326))))))

(assert (= (and d!1750467 c!966392) b!5524829))

(assert (= (and d!1750467 (not c!966392)) b!5524830))

(assert (=> d!1750467 m!6527022))

(assert (=> b!5524829 m!6526572))

(declare-fun m!6527188 () Bool)

(assert (=> b!5524829 m!6527188))

(assert (=> b!5524830 m!6527026))

(assert (=> b!5524830 m!6526572))

(assert (=> b!5524830 m!6527026))

(declare-fun m!6527190 () Bool)

(assert (=> b!5524830 m!6527190))

(assert (=> b!5524830 m!6527030))

(assert (=> b!5524830 m!6527190))

(assert (=> b!5524830 m!6527030))

(declare-fun m!6527192 () Bool)

(assert (=> b!5524830 m!6527192))

(assert (=> b!5524063 d!1750467))

(declare-fun bs!1274736 () Bool)

(declare-fun d!1750469 () Bool)

(assert (= bs!1274736 (and d!1750469 b!5524057)))

(declare-fun lambda!296234 () Int)

(assert (=> bs!1274736 (= lambda!296234 lambda!296137)))

(declare-fun bs!1274737 () Bool)

(assert (= bs!1274737 (and d!1750469 d!1750427)))

(assert (=> bs!1274737 (= lambda!296234 lambda!296232)))

(declare-fun bs!1274738 () Bool)

(assert (= bs!1274738 (and d!1750469 d!1750455)))

(assert (=> bs!1274738 (= lambda!296234 lambda!296233)))

(assert (=> d!1750469 true))

(assert (=> d!1750469 (= (derivationStepZipper!1616 lt!2247111 (h!69158 s!2326)) (flatMap!1124 lt!2247111 lambda!296234))))

(declare-fun bs!1274739 () Bool)

(assert (= bs!1274739 d!1750469))

(declare-fun m!6527194 () Bool)

(assert (=> bs!1274739 m!6527194))

(assert (=> b!5524063 d!1750469))

(declare-fun d!1750471 () Bool)

(assert (=> d!1750471 (= (isEmpty!34494 (t!376085 (exprs!5395 (h!69157 zl!343)))) ((_ is Nil!62708) (t!376085 (exprs!5395 (h!69157 zl!343)))))))

(assert (=> b!5524049 d!1750471))

(declare-fun d!1750473 () Bool)

(declare-fun lt!2247249 () Regex!15511)

(assert (=> d!1750473 (validRegex!7247 lt!2247249)))

(assert (=> d!1750473 (= lt!2247249 (generalisedUnion!1374 (unfocusZipperList!939 zl!343)))))

(assert (=> d!1750473 (= (unfocusZipper!1253 zl!343) lt!2247249)))

(declare-fun bs!1274740 () Bool)

(assert (= bs!1274740 d!1750473))

(declare-fun m!6527196 () Bool)

(assert (=> bs!1274740 m!6527196))

(assert (=> bs!1274740 m!6526566))

(assert (=> bs!1274740 m!6526566))

(assert (=> bs!1274740 m!6526568))

(assert (=> b!5524050 d!1750473))

(declare-fun bs!1274741 () Bool)

(declare-fun d!1750475 () Bool)

(assert (= bs!1274741 (and d!1750475 d!1750407)))

(declare-fun lambda!296235 () Int)

(assert (=> bs!1274741 (= lambda!296235 lambda!296214)))

(declare-fun bs!1274742 () Bool)

(assert (= bs!1274742 (and d!1750475 d!1750409)))

(assert (=> bs!1274742 (= lambda!296235 lambda!296217)))

(declare-fun bs!1274743 () Bool)

(assert (= bs!1274743 (and d!1750475 d!1750413)))

(assert (=> bs!1274743 (= lambda!296235 lambda!296220)))

(declare-fun bs!1274744 () Bool)

(assert (= bs!1274744 (and d!1750475 d!1750415)))

(assert (=> bs!1274744 (= lambda!296235 lambda!296223)))

(assert (=> d!1750475 (= (inv!82024 (h!69157 zl!343)) (forall!14687 (exprs!5395 (h!69157 zl!343)) lambda!296235))))

(declare-fun bs!1274745 () Bool)

(assert (= bs!1274745 d!1750475))

(declare-fun m!6527198 () Bool)

(assert (=> bs!1274745 m!6527198))

(assert (=> b!5524040 d!1750475))

(declare-fun bs!1274746 () Bool)

(declare-fun b!5524837 () Bool)

(assert (= bs!1274746 (and b!5524837 d!1750407)))

(declare-fun lambda!296240 () Int)

(assert (=> bs!1274746 (not (= lambda!296240 lambda!296214))))

(declare-fun bs!1274747 () Bool)

(assert (= bs!1274747 (and b!5524837 d!1750415)))

(assert (=> bs!1274747 (not (= lambda!296240 lambda!296223))))

(declare-fun bs!1274748 () Bool)

(assert (= bs!1274748 (and b!5524837 d!1750413)))

(assert (=> bs!1274748 (not (= lambda!296240 lambda!296220))))

(declare-fun bs!1274749 () Bool)

(assert (= bs!1274749 (and b!5524837 d!1750475)))

(assert (=> bs!1274749 (not (= lambda!296240 lambda!296235))))

(declare-fun bs!1274750 () Bool)

(assert (= bs!1274750 (and b!5524837 d!1750409)))

(assert (=> bs!1274750 (not (= lambda!296240 lambda!296217))))

(assert (=> b!5524837 true))

(declare-fun bs!1274751 () Bool)

(declare-fun b!5524839 () Bool)

(assert (= bs!1274751 (and b!5524839 d!1750407)))

(declare-fun lambda!296241 () Int)

(assert (=> bs!1274751 (not (= lambda!296241 lambda!296214))))

(declare-fun bs!1274752 () Bool)

(assert (= bs!1274752 (and b!5524839 d!1750415)))

(assert (=> bs!1274752 (not (= lambda!296241 lambda!296223))))

(declare-fun bs!1274753 () Bool)

(assert (= bs!1274753 (and b!5524839 d!1750413)))

(assert (=> bs!1274753 (not (= lambda!296241 lambda!296220))))

(declare-fun bs!1274754 () Bool)

(assert (= bs!1274754 (and b!5524839 d!1750475)))

(assert (=> bs!1274754 (not (= lambda!296241 lambda!296235))))

(declare-fun bs!1274755 () Bool)

(assert (= bs!1274755 (and b!5524839 d!1750409)))

(assert (=> bs!1274755 (not (= lambda!296241 lambda!296217))))

(declare-fun bs!1274756 () Bool)

(assert (= bs!1274756 (and b!5524839 b!5524837)))

(declare-fun lt!2247261 () Int)

(declare-fun lt!2247259 () Int)

(assert (=> bs!1274756 (= (= lt!2247261 lt!2247259) (= lambda!296241 lambda!296240))))

(assert (=> b!5524839 true))

(declare-fun d!1750477 () Bool)

(declare-fun e!3415617 () Bool)

(assert (=> d!1750477 e!3415617))

(declare-fun res!2352803 () Bool)

(assert (=> d!1750477 (=> (not res!2352803) (not e!3415617))))

(assert (=> d!1750477 (= res!2352803 (>= lt!2247261 0))))

(declare-fun e!3415616 () Int)

(assert (=> d!1750477 (= lt!2247261 e!3415616)))

(declare-fun c!966396 () Bool)

(assert (=> d!1750477 (= c!966396 ((_ is Cons!62708) (exprs!5395 lt!2247113)))))

(assert (=> d!1750477 (= (contextDepth!107 lt!2247113) lt!2247261)))

(assert (=> b!5524837 (= e!3415616 lt!2247259)))

(declare-fun regexDepth!211 (Regex!15511) Int)

(assert (=> b!5524837 (= lt!2247259 (maxBigInt!0 (regexDepth!211 (h!69156 (exprs!5395 lt!2247113))) (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247113))))))))

(declare-fun lt!2247258 () Unit!155482)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!16 (List!62832 Int Int) Unit!155482)

(assert (=> b!5524837 (= lt!2247258 (lemmaForallRegexDepthBiggerThanTransitive!16 (t!376085 (exprs!5395 lt!2247113)) lt!2247259 (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247113))))))))

(assert (=> b!5524837 (forall!14687 (t!376085 (exprs!5395 lt!2247113)) lambda!296240)))

(declare-fun lt!2247260 () Unit!155482)

(assert (=> b!5524837 (= lt!2247260 lt!2247258)))

(declare-fun b!5524838 () Bool)

(assert (=> b!5524838 (= e!3415616 0)))

(assert (=> b!5524839 (= e!3415617 (forall!14687 (exprs!5395 lt!2247113) lambda!296241))))

(assert (= (and d!1750477 c!966396) b!5524837))

(assert (= (and d!1750477 (not c!966396)) b!5524838))

(assert (= (and d!1750477 res!2352803) b!5524839))

(declare-fun m!6527200 () Bool)

(assert (=> b!5524837 m!6527200))

(declare-fun m!6527202 () Bool)

(assert (=> b!5524837 m!6527202))

(declare-fun m!6527204 () Bool)

(assert (=> b!5524837 m!6527204))

(declare-fun m!6527206 () Bool)

(assert (=> b!5524837 m!6527206))

(assert (=> b!5524837 m!6527200))

(assert (=> b!5524837 m!6527204))

(declare-fun m!6527208 () Bool)

(assert (=> b!5524837 m!6527208))

(assert (=> b!5524837 m!6527204))

(declare-fun m!6527210 () Bool)

(assert (=> b!5524839 m!6527210))

(assert (=> b!5524041 d!1750477))

(declare-fun bs!1274757 () Bool)

(declare-fun b!5524842 () Bool)

(assert (= bs!1274757 (and b!5524842 d!1750407)))

(declare-fun lambda!296242 () Int)

(assert (=> bs!1274757 (not (= lambda!296242 lambda!296214))))

(declare-fun bs!1274758 () Bool)

(assert (= bs!1274758 (and b!5524842 b!5524839)))

(declare-fun lt!2247263 () Int)

(assert (=> bs!1274758 (= (= lt!2247263 lt!2247261) (= lambda!296242 lambda!296241))))

(declare-fun bs!1274759 () Bool)

(assert (= bs!1274759 (and b!5524842 d!1750415)))

(assert (=> bs!1274759 (not (= lambda!296242 lambda!296223))))

(declare-fun bs!1274760 () Bool)

(assert (= bs!1274760 (and b!5524842 d!1750413)))

(assert (=> bs!1274760 (not (= lambda!296242 lambda!296220))))

(declare-fun bs!1274761 () Bool)

(assert (= bs!1274761 (and b!5524842 d!1750475)))

(assert (=> bs!1274761 (not (= lambda!296242 lambda!296235))))

(declare-fun bs!1274762 () Bool)

(assert (= bs!1274762 (and b!5524842 d!1750409)))

(assert (=> bs!1274762 (not (= lambda!296242 lambda!296217))))

(declare-fun bs!1274763 () Bool)

(assert (= bs!1274763 (and b!5524842 b!5524837)))

(assert (=> bs!1274763 (= (= lt!2247263 lt!2247259) (= lambda!296242 lambda!296240))))

(assert (=> b!5524842 true))

(declare-fun bs!1274764 () Bool)

(declare-fun b!5524844 () Bool)

(assert (= bs!1274764 (and b!5524844 b!5524842)))

(declare-fun lambda!296243 () Int)

(declare-fun lt!2247265 () Int)

(assert (=> bs!1274764 (= (= lt!2247265 lt!2247263) (= lambda!296243 lambda!296242))))

(declare-fun bs!1274765 () Bool)

(assert (= bs!1274765 (and b!5524844 d!1750407)))

(assert (=> bs!1274765 (not (= lambda!296243 lambda!296214))))

(declare-fun bs!1274766 () Bool)

(assert (= bs!1274766 (and b!5524844 b!5524839)))

(assert (=> bs!1274766 (= (= lt!2247265 lt!2247261) (= lambda!296243 lambda!296241))))

(declare-fun bs!1274767 () Bool)

(assert (= bs!1274767 (and b!5524844 d!1750415)))

(assert (=> bs!1274767 (not (= lambda!296243 lambda!296223))))

(declare-fun bs!1274768 () Bool)

(assert (= bs!1274768 (and b!5524844 d!1750413)))

(assert (=> bs!1274768 (not (= lambda!296243 lambda!296220))))

(declare-fun bs!1274769 () Bool)

(assert (= bs!1274769 (and b!5524844 d!1750475)))

(assert (=> bs!1274769 (not (= lambda!296243 lambda!296235))))

(declare-fun bs!1274770 () Bool)

(assert (= bs!1274770 (and b!5524844 d!1750409)))

(assert (=> bs!1274770 (not (= lambda!296243 lambda!296217))))

(declare-fun bs!1274771 () Bool)

(assert (= bs!1274771 (and b!5524844 b!5524837)))

(assert (=> bs!1274771 (= (= lt!2247265 lt!2247259) (= lambda!296243 lambda!296240))))

(assert (=> b!5524844 true))

(declare-fun d!1750479 () Bool)

(declare-fun e!3415619 () Bool)

(assert (=> d!1750479 e!3415619))

(declare-fun res!2352804 () Bool)

(assert (=> d!1750479 (=> (not res!2352804) (not e!3415619))))

(assert (=> d!1750479 (= res!2352804 (>= lt!2247265 0))))

(declare-fun e!3415618 () Int)

(assert (=> d!1750479 (= lt!2247265 e!3415618)))

(declare-fun c!966397 () Bool)

(assert (=> d!1750479 (= c!966397 ((_ is Cons!62708) (exprs!5395 lt!2247106)))))

(assert (=> d!1750479 (= (contextDepth!107 lt!2247106) lt!2247265)))

(assert (=> b!5524842 (= e!3415618 lt!2247263)))

(assert (=> b!5524842 (= lt!2247263 (maxBigInt!0 (regexDepth!211 (h!69156 (exprs!5395 lt!2247106))) (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247106))))))))

(declare-fun lt!2247262 () Unit!155482)

(assert (=> b!5524842 (= lt!2247262 (lemmaForallRegexDepthBiggerThanTransitive!16 (t!376085 (exprs!5395 lt!2247106)) lt!2247263 (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247106))))))))

(assert (=> b!5524842 (forall!14687 (t!376085 (exprs!5395 lt!2247106)) lambda!296242)))

(declare-fun lt!2247264 () Unit!155482)

(assert (=> b!5524842 (= lt!2247264 lt!2247262)))

(declare-fun b!5524843 () Bool)

(assert (=> b!5524843 (= e!3415618 0)))

(assert (=> b!5524844 (= e!3415619 (forall!14687 (exprs!5395 lt!2247106) lambda!296243))))

(assert (= (and d!1750479 c!966397) b!5524842))

(assert (= (and d!1750479 (not c!966397)) b!5524843))

(assert (= (and d!1750479 res!2352804) b!5524844))

(declare-fun m!6527212 () Bool)

(assert (=> b!5524842 m!6527212))

(declare-fun m!6527214 () Bool)

(assert (=> b!5524842 m!6527214))

(declare-fun m!6527216 () Bool)

(assert (=> b!5524842 m!6527216))

(declare-fun m!6527218 () Bool)

(assert (=> b!5524842 m!6527218))

(assert (=> b!5524842 m!6527212))

(assert (=> b!5524842 m!6527216))

(declare-fun m!6527220 () Bool)

(assert (=> b!5524842 m!6527220))

(assert (=> b!5524842 m!6527216))

(declare-fun m!6527222 () Bool)

(assert (=> b!5524844 m!6527222))

(assert (=> b!5524041 d!1750479))

(declare-fun b!5524857 () Bool)

(declare-fun e!3415622 () Bool)

(declare-fun tp!1520117 () Bool)

(assert (=> b!5524857 (= e!3415622 tp!1520117)))

(declare-fun b!5524856 () Bool)

(declare-fun tp!1520119 () Bool)

(declare-fun tp!1520116 () Bool)

(assert (=> b!5524856 (= e!3415622 (and tp!1520119 tp!1520116))))

(assert (=> b!5524056 (= tp!1520046 e!3415622)))

(declare-fun b!5524855 () Bool)

(assert (=> b!5524855 (= e!3415622 tp_is_empty!40275)))

(declare-fun b!5524858 () Bool)

(declare-fun tp!1520120 () Bool)

(declare-fun tp!1520118 () Bool)

(assert (=> b!5524858 (= e!3415622 (and tp!1520120 tp!1520118))))

(assert (= (and b!5524056 ((_ is ElementMatch!15511) (regOne!31534 r!7292))) b!5524855))

(assert (= (and b!5524056 ((_ is Concat!24356) (regOne!31534 r!7292))) b!5524856))

(assert (= (and b!5524056 ((_ is Star!15511) (regOne!31534 r!7292))) b!5524857))

(assert (= (and b!5524056 ((_ is Union!15511) (regOne!31534 r!7292))) b!5524858))

(declare-fun b!5524861 () Bool)

(declare-fun e!3415623 () Bool)

(declare-fun tp!1520122 () Bool)

(assert (=> b!5524861 (= e!3415623 tp!1520122)))

(declare-fun b!5524860 () Bool)

(declare-fun tp!1520124 () Bool)

(declare-fun tp!1520121 () Bool)

(assert (=> b!5524860 (= e!3415623 (and tp!1520124 tp!1520121))))

(assert (=> b!5524056 (= tp!1520045 e!3415623)))

(declare-fun b!5524859 () Bool)

(assert (=> b!5524859 (= e!3415623 tp_is_empty!40275)))

(declare-fun b!5524862 () Bool)

(declare-fun tp!1520125 () Bool)

(declare-fun tp!1520123 () Bool)

(assert (=> b!5524862 (= e!3415623 (and tp!1520125 tp!1520123))))

(assert (= (and b!5524056 ((_ is ElementMatch!15511) (regTwo!31534 r!7292))) b!5524859))

(assert (= (and b!5524056 ((_ is Concat!24356) (regTwo!31534 r!7292))) b!5524860))

(assert (= (and b!5524056 ((_ is Star!15511) (regTwo!31534 r!7292))) b!5524861))

(assert (= (and b!5524056 ((_ is Union!15511) (regTwo!31534 r!7292))) b!5524862))

(declare-fun b!5524867 () Bool)

(declare-fun e!3415626 () Bool)

(declare-fun tp!1520130 () Bool)

(declare-fun tp!1520131 () Bool)

(assert (=> b!5524867 (= e!3415626 (and tp!1520130 tp!1520131))))

(assert (=> b!5524062 (= tp!1520039 e!3415626)))

(assert (= (and b!5524062 ((_ is Cons!62708) (exprs!5395 (h!69157 zl!343)))) b!5524867))

(declare-fun b!5524868 () Bool)

(declare-fun e!3415627 () Bool)

(declare-fun tp!1520132 () Bool)

(declare-fun tp!1520133 () Bool)

(assert (=> b!5524868 (= e!3415627 (and tp!1520132 tp!1520133))))

(assert (=> b!5524052 (= tp!1520042 e!3415627)))

(assert (= (and b!5524052 ((_ is Cons!62708) (exprs!5395 setElem!36731))) b!5524868))

(declare-fun b!5524871 () Bool)

(declare-fun e!3415628 () Bool)

(declare-fun tp!1520135 () Bool)

(assert (=> b!5524871 (= e!3415628 tp!1520135)))

(declare-fun b!5524870 () Bool)

(declare-fun tp!1520137 () Bool)

(declare-fun tp!1520134 () Bool)

(assert (=> b!5524870 (= e!3415628 (and tp!1520137 tp!1520134))))

(assert (=> b!5524059 (= tp!1520044 e!3415628)))

(declare-fun b!5524869 () Bool)

(assert (=> b!5524869 (= e!3415628 tp_is_empty!40275)))

(declare-fun b!5524872 () Bool)

(declare-fun tp!1520138 () Bool)

(declare-fun tp!1520136 () Bool)

(assert (=> b!5524872 (= e!3415628 (and tp!1520138 tp!1520136))))

(assert (= (and b!5524059 ((_ is ElementMatch!15511) (regOne!31535 r!7292))) b!5524869))

(assert (= (and b!5524059 ((_ is Concat!24356) (regOne!31535 r!7292))) b!5524870))

(assert (= (and b!5524059 ((_ is Star!15511) (regOne!31535 r!7292))) b!5524871))

(assert (= (and b!5524059 ((_ is Union!15511) (regOne!31535 r!7292))) b!5524872))

(declare-fun b!5524875 () Bool)

(declare-fun e!3415629 () Bool)

(declare-fun tp!1520140 () Bool)

(assert (=> b!5524875 (= e!3415629 tp!1520140)))

(declare-fun b!5524874 () Bool)

(declare-fun tp!1520142 () Bool)

(declare-fun tp!1520139 () Bool)

(assert (=> b!5524874 (= e!3415629 (and tp!1520142 tp!1520139))))

(assert (=> b!5524059 (= tp!1520041 e!3415629)))

(declare-fun b!5524873 () Bool)

(assert (=> b!5524873 (= e!3415629 tp_is_empty!40275)))

(declare-fun b!5524876 () Bool)

(declare-fun tp!1520143 () Bool)

(declare-fun tp!1520141 () Bool)

(assert (=> b!5524876 (= e!3415629 (and tp!1520143 tp!1520141))))

(assert (= (and b!5524059 ((_ is ElementMatch!15511) (regTwo!31535 r!7292))) b!5524873))

(assert (= (and b!5524059 ((_ is Concat!24356) (regTwo!31535 r!7292))) b!5524874))

(assert (= (and b!5524059 ((_ is Star!15511) (regTwo!31535 r!7292))) b!5524875))

(assert (= (and b!5524059 ((_ is Union!15511) (regTwo!31535 r!7292))) b!5524876))

(declare-fun condSetEmpty!36737 () Bool)

(assert (=> setNonEmpty!36731 (= condSetEmpty!36737 (= setRest!36731 ((as const (Array Context!9790 Bool)) false)))))

(declare-fun setRes!36737 () Bool)

(assert (=> setNonEmpty!36731 (= tp!1520040 setRes!36737)))

(declare-fun setIsEmpty!36737 () Bool)

(assert (=> setIsEmpty!36737 setRes!36737))

(declare-fun setElem!36737 () Context!9790)

(declare-fun e!3415632 () Bool)

(declare-fun tp!1520148 () Bool)

(declare-fun setNonEmpty!36737 () Bool)

(assert (=> setNonEmpty!36737 (= setRes!36737 (and tp!1520148 (inv!82024 setElem!36737) e!3415632))))

(declare-fun setRest!36737 () (InoxSet Context!9790))

(assert (=> setNonEmpty!36737 (= setRest!36731 ((_ map or) (store ((as const (Array Context!9790 Bool)) false) setElem!36737 true) setRest!36737))))

(declare-fun b!5524881 () Bool)

(declare-fun tp!1520149 () Bool)

(assert (=> b!5524881 (= e!3415632 tp!1520149)))

(assert (= (and setNonEmpty!36731 condSetEmpty!36737) setIsEmpty!36737))

(assert (= (and setNonEmpty!36731 (not condSetEmpty!36737)) setNonEmpty!36737))

(assert (= setNonEmpty!36737 b!5524881))

(declare-fun m!6527224 () Bool)

(assert (=> setNonEmpty!36737 m!6527224))

(declare-fun b!5524884 () Bool)

(declare-fun e!3415633 () Bool)

(declare-fun tp!1520151 () Bool)

(assert (=> b!5524884 (= e!3415633 tp!1520151)))

(declare-fun b!5524883 () Bool)

(declare-fun tp!1520153 () Bool)

(declare-fun tp!1520150 () Bool)

(assert (=> b!5524883 (= e!3415633 (and tp!1520153 tp!1520150))))

(assert (=> b!5524065 (= tp!1520043 e!3415633)))

(declare-fun b!5524882 () Bool)

(assert (=> b!5524882 (= e!3415633 tp_is_empty!40275)))

(declare-fun b!5524885 () Bool)

(declare-fun tp!1520154 () Bool)

(declare-fun tp!1520152 () Bool)

(assert (=> b!5524885 (= e!3415633 (and tp!1520154 tp!1520152))))

(assert (= (and b!5524065 ((_ is ElementMatch!15511) (reg!15840 r!7292))) b!5524882))

(assert (= (and b!5524065 ((_ is Concat!24356) (reg!15840 r!7292))) b!5524883))

(assert (= (and b!5524065 ((_ is Star!15511) (reg!15840 r!7292))) b!5524884))

(assert (= (and b!5524065 ((_ is Union!15511) (reg!15840 r!7292))) b!5524885))

(declare-fun b!5524893 () Bool)

(declare-fun e!3415639 () Bool)

(declare-fun tp!1520159 () Bool)

(assert (=> b!5524893 (= e!3415639 tp!1520159)))

(declare-fun b!5524892 () Bool)

(declare-fun tp!1520160 () Bool)

(declare-fun e!3415638 () Bool)

(assert (=> b!5524892 (= e!3415638 (and (inv!82024 (h!69157 (t!376086 zl!343))) e!3415639 tp!1520160))))

(assert (=> b!5524040 (= tp!1520038 e!3415638)))

(assert (= b!5524892 b!5524893))

(assert (= (and b!5524040 ((_ is Cons!62709) (t!376086 zl!343))) b!5524892))

(declare-fun m!6527226 () Bool)

(assert (=> b!5524892 m!6527226))

(declare-fun b!5524898 () Bool)

(declare-fun e!3415642 () Bool)

(declare-fun tp!1520163 () Bool)

(assert (=> b!5524898 (= e!3415642 (and tp_is_empty!40275 tp!1520163))))

(assert (=> b!5524055 (= tp!1520047 e!3415642)))

(assert (= (and b!5524055 ((_ is Cons!62710) (t!376087 s!2326))) b!5524898))

(declare-fun b_lambda!209525 () Bool)

(assert (= b_lambda!209519 (or b!5524057 b_lambda!209525)))

(declare-fun bs!1274772 () Bool)

(declare-fun d!1750481 () Bool)

(assert (= bs!1274772 (and d!1750481 b!5524057)))

(assert (=> bs!1274772 (= (dynLambda!24502 lambda!296137 (h!69157 zl!343)) (derivationStepZipperUp!779 (h!69157 zl!343) (h!69158 s!2326)))))

(assert (=> bs!1274772 m!6526560))

(assert (=> d!1750403 d!1750481))

(declare-fun b_lambda!209527 () Bool)

(assert (= b_lambda!209523 (or b!5524057 b_lambda!209527)))

(declare-fun bs!1274773 () Bool)

(declare-fun d!1750483 () Bool)

(assert (= bs!1274773 (and d!1750483 b!5524057)))

(assert (=> bs!1274773 (= (dynLambda!24502 lambda!296137 lt!2247103) (derivationStepZipperUp!779 lt!2247103 (h!69158 s!2326)))))

(assert (=> bs!1274773 m!6526514))

(assert (=> d!1750443 d!1750483))

(declare-fun b_lambda!209529 () Bool)

(assert (= b_lambda!209521 (or b!5524057 b_lambda!209529)))

(declare-fun bs!1274774 () Bool)

(declare-fun d!1750485 () Bool)

(assert (= bs!1274774 (and d!1750485 b!5524057)))

(assert (=> bs!1274774 (= (dynLambda!24502 lambda!296137 lt!2247113) (derivationStepZipperUp!779 lt!2247113 (h!69158 s!2326)))))

(assert (=> bs!1274774 m!6526512))

(assert (=> d!1750437 d!1750485))

(check-sat (not bm!409693) (not bm!409649) (not b!5524837) (not b!5524807) (not b!5524527) (not b!5524498) (not bm!409691) (not d!1750445) (not b!5524621) (not b!5524708) (not d!1750425) (not b!5524839) (not b!5524519) (not d!1750467) (not b!5524701) (not b!5524706) (not d!1750419) (not b!5524893) (not bm!409699) (not b!5524714) (not bm!409666) (not bm!409694) (not b!5524589) (not d!1750395) tp_is_empty!40275 (not d!1750459) (not b!5524800) (not b!5524842) (not b!5524823) (not d!1750473) (not b!5524625) (not d!1750439) (not b!5524703) (not b!5524857) (not b!5524876) (not b!5524522) (not b!5524622) (not d!1750397) (not b!5524872) (not d!1750407) (not b!5524700) (not b!5524786) (not d!1750421) (not d!1750391) (not b!5524521) (not b!5524820) (not bm!409680) (not b!5524860) (not bm!409700) (not b!5524892) (not d!1750475) (not d!1750437) (not b!5524493) (not b!5524858) (not b!5524741) (not b!5524525) (not bm!409655) (not b!5524868) (not b!5524659) (not b!5524828) (not b!5524620) (not d!1750431) (not d!1750423) (not bs!1274773) (not b!5524795) (not b!5524819) (not d!1750399) (not b!5524875) (not b!5524775) (not d!1750465) (not d!1750415) (not b_lambda!209527) (not b!5524829) (not b!5524577) (not b!5524584) (not b!5524583) (not b!5524856) (not bm!409658) (not b_lambda!209525) (not b!5524578) (not b!5524874) (not bm!409692) (not b!5524885) (not d!1750403) (not b!5524870) (not b!5524576) (not b!5524881) (not bs!1274774) (not b!5524821) (not bm!409689) (not d!1750443) (not b_lambda!209529) (not d!1750411) (not b!5524898) (not d!1750469) (not b!5524524) (not bm!409686) (not b!5524582) (not bm!409685) (not b!5524883) (not d!1750389) (not bm!409683) (not b!5524581) (not d!1750413) (not d!1750393) (not d!1750387) (not b!5524818) (not b!5524862) (not b!5524715) (not b!5524553) (not b!5524500) (not b!5524747) (not d!1750457) (not b!5524618) (not b!5524595) (not b!5524816) (not b!5524871) (not d!1750433) (not b!5524867) (not b!5524554) (not d!1750427) (not b!5524707) (not d!1750455) (not b!5524495) (not b!5524822) (not b!5524668) (not bm!409697) (not b!5524861) (not b!5524817) (not b!5524596) (not bm!409667) (not b!5524827) (not bm!409654) (not b!5524844) (not d!1750461) (not b!5524713) (not setNonEmpty!36737) (not d!1750463) (not b!5524626) (not bs!1274772) (not d!1750409) (not b!5524801) (not b!5524712) (not b!5524830) (not b!5524826) (not b!5524884) (not b!5524796) (not b!5524619))
(check-sat)
(get-model)

(declare-fun d!1750777 () Bool)

(assert (=> d!1750777 (= (isEmpty!34498 (tail!10921 s!2326)) ((_ is Nil!62710) (tail!10921 s!2326)))))

(assert (=> b!5524701 d!1750777))

(declare-fun d!1750781 () Bool)

(assert (=> d!1750781 (= (tail!10921 s!2326) (t!376087 s!2326))))

(assert (=> b!5524701 d!1750781))

(declare-fun bs!1275271 () Bool)

(declare-fun d!1750783 () Bool)

(assert (= bs!1275271 (and d!1750783 b!5524842)))

(declare-fun lambda!296300 () Int)

(assert (=> bs!1275271 (not (= lambda!296300 lambda!296242))))

(declare-fun bs!1275272 () Bool)

(assert (= bs!1275272 (and d!1750783 d!1750407)))

(assert (=> bs!1275272 (= lambda!296300 lambda!296214)))

(declare-fun bs!1275273 () Bool)

(assert (= bs!1275273 (and d!1750783 b!5524839)))

(assert (=> bs!1275273 (not (= lambda!296300 lambda!296241))))

(declare-fun bs!1275274 () Bool)

(assert (= bs!1275274 (and d!1750783 d!1750415)))

(assert (=> bs!1275274 (= lambda!296300 lambda!296223)))

(declare-fun bs!1275275 () Bool)

(assert (= bs!1275275 (and d!1750783 d!1750413)))

(assert (=> bs!1275275 (= lambda!296300 lambda!296220)))

(declare-fun bs!1275276 () Bool)

(assert (= bs!1275276 (and d!1750783 d!1750475)))

(assert (=> bs!1275276 (= lambda!296300 lambda!296235)))

(declare-fun bs!1275277 () Bool)

(assert (= bs!1275277 (and d!1750783 b!5524844)))

(assert (=> bs!1275277 (not (= lambda!296300 lambda!296243))))

(declare-fun bs!1275278 () Bool)

(assert (= bs!1275278 (and d!1750783 d!1750409)))

(assert (=> bs!1275278 (= lambda!296300 lambda!296217)))

(declare-fun bs!1275279 () Bool)

(assert (= bs!1275279 (and d!1750783 b!5524837)))

(assert (=> bs!1275279 (not (= lambda!296300 lambda!296240))))

(declare-fun b!5525446 () Bool)

(declare-fun e!3415985 () Regex!15511)

(declare-fun e!3415986 () Regex!15511)

(assert (=> b!5525446 (= e!3415985 e!3415986)))

(declare-fun c!966570 () Bool)

(assert (=> b!5525446 (= c!966570 ((_ is Cons!62708) (t!376085 (unfocusZipperList!939 zl!343))))))

(declare-fun b!5525447 () Bool)

(declare-fun e!3415987 () Bool)

(declare-fun e!3415988 () Bool)

(assert (=> b!5525447 (= e!3415987 e!3415988)))

(declare-fun c!966572 () Bool)

(assert (=> b!5525447 (= c!966572 (isEmpty!34494 (t!376085 (unfocusZipperList!939 zl!343))))))

(declare-fun b!5525448 () Bool)

(declare-fun e!3415990 () Bool)

(declare-fun lt!2247323 () Regex!15511)

(assert (=> b!5525448 (= e!3415990 (= lt!2247323 (head!11825 (t!376085 (unfocusZipperList!939 zl!343)))))))

(declare-fun b!5525449 () Bool)

(assert (=> b!5525449 (= e!3415990 (isUnion!524 lt!2247323))))

(declare-fun b!5525450 () Bool)

(assert (=> b!5525450 (= e!3415985 (h!69156 (t!376085 (unfocusZipperList!939 zl!343))))))

(declare-fun b!5525451 () Bool)

(assert (=> b!5525451 (= e!3415986 EmptyLang!15511)))

(declare-fun b!5525452 () Bool)

(assert (=> b!5525452 (= e!3415988 (isEmptyLang!1094 lt!2247323))))

(assert (=> d!1750783 e!3415987))

(declare-fun res!2353014 () Bool)

(assert (=> d!1750783 (=> (not res!2353014) (not e!3415987))))

(assert (=> d!1750783 (= res!2353014 (validRegex!7247 lt!2247323))))

(assert (=> d!1750783 (= lt!2247323 e!3415985)))

(declare-fun c!966569 () Bool)

(declare-fun e!3415989 () Bool)

(assert (=> d!1750783 (= c!966569 e!3415989)))

(declare-fun res!2353015 () Bool)

(assert (=> d!1750783 (=> (not res!2353015) (not e!3415989))))

(assert (=> d!1750783 (= res!2353015 ((_ is Cons!62708) (t!376085 (unfocusZipperList!939 zl!343))))))

(assert (=> d!1750783 (forall!14687 (t!376085 (unfocusZipperList!939 zl!343)) lambda!296300)))

(assert (=> d!1750783 (= (generalisedUnion!1374 (t!376085 (unfocusZipperList!939 zl!343))) lt!2247323)))

(declare-fun b!5525453 () Bool)

(assert (=> b!5525453 (= e!3415989 (isEmpty!34494 (t!376085 (t!376085 (unfocusZipperList!939 zl!343)))))))

(declare-fun b!5525454 () Bool)

(assert (=> b!5525454 (= e!3415986 (Union!15511 (h!69156 (t!376085 (unfocusZipperList!939 zl!343))) (generalisedUnion!1374 (t!376085 (t!376085 (unfocusZipperList!939 zl!343))))))))

(declare-fun b!5525455 () Bool)

(assert (=> b!5525455 (= e!3415988 e!3415990)))

(declare-fun c!966571 () Bool)

(assert (=> b!5525455 (= c!966571 (isEmpty!34494 (tail!10920 (t!376085 (unfocusZipperList!939 zl!343)))))))

(assert (= (and d!1750783 res!2353015) b!5525453))

(assert (= (and d!1750783 c!966569) b!5525450))

(assert (= (and d!1750783 (not c!966569)) b!5525446))

(assert (= (and b!5525446 c!966570) b!5525454))

(assert (= (and b!5525446 (not c!966570)) b!5525451))

(assert (= (and d!1750783 res!2353014) b!5525447))

(assert (= (and b!5525447 c!966572) b!5525452))

(assert (= (and b!5525447 (not c!966572)) b!5525455))

(assert (= (and b!5525455 c!966571) b!5525448))

(assert (= (and b!5525455 (not c!966571)) b!5525449))

(declare-fun m!6527872 () Bool)

(assert (=> b!5525454 m!6527872))

(assert (=> b!5525447 m!6527004))

(declare-fun m!6527874 () Bool)

(assert (=> b!5525448 m!6527874))

(declare-fun m!6527876 () Bool)

(assert (=> b!5525453 m!6527876))

(declare-fun m!6527878 () Bool)

(assert (=> b!5525455 m!6527878))

(assert (=> b!5525455 m!6527878))

(declare-fun m!6527880 () Bool)

(assert (=> b!5525455 m!6527880))

(declare-fun m!6527882 () Bool)

(assert (=> d!1750783 m!6527882))

(declare-fun m!6527884 () Bool)

(assert (=> d!1750783 m!6527884))

(declare-fun m!6527886 () Bool)

(assert (=> b!5525452 m!6527886))

(declare-fun m!6527888 () Bool)

(assert (=> b!5525449 m!6527888))

(assert (=> b!5524583 d!1750783))

(declare-fun d!1750789 () Bool)

(assert (=> d!1750789 (= (isEmpty!34498 (t!376087 s!2326)) ((_ is Nil!62710) (t!376087 s!2326)))))

(assert (=> d!1750467 d!1750789))

(declare-fun e!3415997 () (InoxSet Context!9790))

(declare-fun b!5525462 () Bool)

(assert (=> b!5525462 (= e!3415997 (store ((as const (Array Context!9790 Bool)) false) (ite c!966375 lt!2247103 (Context!9791 call!409691)) true))))

(declare-fun c!966575 () Bool)

(declare-fun bm!409838 () Bool)

(declare-fun call!409844 () List!62832)

(declare-fun c!966577 () Bool)

(declare-fun call!409846 () (InoxSet Context!9790))

(declare-fun c!966578 () Bool)

(assert (=> bm!409838 (= call!409846 (derivationStepZipperDown!853 (ite c!966578 (regTwo!31535 (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292)))) (ite c!966575 (regTwo!31534 (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292)))) (ite c!966577 (regOne!31534 (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292)))) (reg!15840 (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292))))))) (ite (or c!966578 c!966575) (ite c!966375 lt!2247103 (Context!9791 call!409691)) (Context!9791 call!409844)) (h!69158 s!2326)))))

(declare-fun bm!409839 () Bool)

(declare-fun call!409843 () List!62832)

(assert (=> bm!409839 (= call!409844 call!409843)))

(declare-fun b!5525466 () Bool)

(declare-fun c!966576 () Bool)

(assert (=> b!5525466 (= c!966576 ((_ is Star!15511) (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292)))))))

(declare-fun e!3416005 () (InoxSet Context!9790))

(declare-fun e!3415994 () (InoxSet Context!9790))

(assert (=> b!5525466 (= e!3416005 e!3415994)))

(declare-fun d!1750791 () Bool)

(declare-fun c!966582 () Bool)

(assert (=> d!1750791 (= c!966582 (and ((_ is ElementMatch!15511) (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292)))) (= (c!966149 (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292)))) (h!69158 s!2326))))))

(assert (=> d!1750791 (= (derivationStepZipperDown!853 (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292))) (ite c!966375 lt!2247103 (Context!9791 call!409691)) (h!69158 s!2326)) e!3415997)))

(declare-fun b!5525468 () Bool)

(declare-fun e!3416000 () (InoxSet Context!9790))

(declare-fun call!409848 () (InoxSet Context!9790))

(declare-fun call!409847 () (InoxSet Context!9790))

(assert (=> b!5525468 (= e!3416000 ((_ map or) call!409848 call!409847))))

(declare-fun b!5525470 () Bool)

(declare-fun call!409845 () (InoxSet Context!9790))

(assert (=> b!5525470 (= e!3415994 call!409845)))

(declare-fun b!5525472 () Bool)

(assert (=> b!5525472 (= e!3416005 call!409845)))

(declare-fun bm!409840 () Bool)

(assert (=> bm!409840 (= call!409845 call!409847)))

(declare-fun b!5525475 () Bool)

(declare-fun e!3416001 () Bool)

(assert (=> b!5525475 (= e!3416001 (nullable!5545 (regOne!31534 (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292))))))))

(declare-fun bm!409841 () Bool)

(assert (=> bm!409841 (= call!409843 ($colon$colon!1590 (exprs!5395 (ite c!966375 lt!2247103 (Context!9791 call!409691))) (ite (or c!966575 c!966577) (regTwo!31534 (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292)))) (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292))))))))

(declare-fun bm!409842 () Bool)

(assert (=> bm!409842 (= call!409847 call!409846)))

(declare-fun b!5525477 () Bool)

(declare-fun e!3416003 () (InoxSet Context!9790))

(assert (=> b!5525477 (= e!3415997 e!3416003)))

(assert (=> b!5525477 (= c!966578 ((_ is Union!15511) (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292)))))))

(declare-fun bm!409843 () Bool)

(assert (=> bm!409843 (= call!409848 (derivationStepZipperDown!853 (ite c!966578 (regOne!31535 (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292)))) (regOne!31534 (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292))))) (ite c!966578 (ite c!966375 lt!2247103 (Context!9791 call!409691)) (Context!9791 call!409843)) (h!69158 s!2326)))))

(declare-fun b!5525478 () Bool)

(assert (=> b!5525478 (= e!3416003 ((_ map or) call!409848 call!409846))))

(declare-fun b!5525479 () Bool)

(assert (=> b!5525479 (= e!3416000 e!3416005)))

(assert (=> b!5525479 (= c!966577 ((_ is Concat!24356) (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292)))))))

(declare-fun b!5525480 () Bool)

(assert (=> b!5525480 (= c!966575 e!3416001)))

(declare-fun res!2353017 () Bool)

(assert (=> b!5525480 (=> (not res!2353017) (not e!3416001))))

(assert (=> b!5525480 (= res!2353017 ((_ is Concat!24356) (ite c!966375 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292)))))))

(assert (=> b!5525480 (= e!3416003 e!3416000)))

(declare-fun b!5525481 () Bool)

(assert (=> b!5525481 (= e!3415994 ((as const (Array Context!9790 Bool)) false))))

(assert (= (and d!1750791 c!966582) b!5525462))

(assert (= (and d!1750791 (not c!966582)) b!5525477))

(assert (= (and b!5525477 c!966578) b!5525478))

(assert (= (and b!5525477 (not c!966578)) b!5525480))

(assert (= (and b!5525480 res!2353017) b!5525475))

(assert (= (and b!5525480 c!966575) b!5525468))

(assert (= (and b!5525480 (not c!966575)) b!5525479))

(assert (= (and b!5525479 c!966577) b!5525472))

(assert (= (and b!5525479 (not c!966577)) b!5525466))

(assert (= (and b!5525466 c!966576) b!5525470))

(assert (= (and b!5525466 (not c!966576)) b!5525481))

(assert (= (or b!5525472 b!5525470) bm!409839))

(assert (= (or b!5525472 b!5525470) bm!409840))

(assert (= (or b!5525468 bm!409839) bm!409841))

(assert (= (or b!5525468 bm!409840) bm!409842))

(assert (= (or b!5525478 bm!409842) bm!409838))

(assert (= (or b!5525478 b!5525468) bm!409843))

(declare-fun m!6527892 () Bool)

(assert (=> b!5525462 m!6527892))

(declare-fun m!6527894 () Bool)

(assert (=> bm!409838 m!6527894))

(declare-fun m!6527896 () Bool)

(assert (=> bm!409841 m!6527896))

(declare-fun m!6527898 () Bool)

(assert (=> b!5525475 m!6527898))

(declare-fun m!6527900 () Bool)

(assert (=> bm!409843 m!6527900))

(assert (=> bm!409691 d!1750791))

(declare-fun d!1750795 () Bool)

(declare-fun c!966584 () Bool)

(assert (=> d!1750795 (= c!966584 (isEmpty!34498 (tail!10921 (t!376087 s!2326))))))

(declare-fun e!3416006 () Bool)

(assert (=> d!1750795 (= (matchZipper!1669 (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247111 (h!69158 s!2326)) (head!11826 (t!376087 s!2326))) (tail!10921 (t!376087 s!2326))) e!3416006)))

(declare-fun b!5525482 () Bool)

(assert (=> b!5525482 (= e!3416006 (nullableZipper!1537 (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247111 (h!69158 s!2326)) (head!11826 (t!376087 s!2326)))))))

(declare-fun b!5525483 () Bool)

(assert (=> b!5525483 (= e!3416006 (matchZipper!1669 (derivationStepZipper!1616 (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247111 (h!69158 s!2326)) (head!11826 (t!376087 s!2326))) (head!11826 (tail!10921 (t!376087 s!2326)))) (tail!10921 (tail!10921 (t!376087 s!2326)))))))

(assert (= (and d!1750795 c!966584) b!5525482))

(assert (= (and d!1750795 (not c!966584)) b!5525483))

(assert (=> d!1750795 m!6527030))

(declare-fun m!6527902 () Bool)

(assert (=> d!1750795 m!6527902))

(assert (=> b!5525482 m!6527190))

(declare-fun m!6527904 () Bool)

(assert (=> b!5525482 m!6527904))

(assert (=> b!5525483 m!6527030))

(declare-fun m!6527906 () Bool)

(assert (=> b!5525483 m!6527906))

(assert (=> b!5525483 m!6527190))

(assert (=> b!5525483 m!6527906))

(declare-fun m!6527908 () Bool)

(assert (=> b!5525483 m!6527908))

(assert (=> b!5525483 m!6527030))

(declare-fun m!6527910 () Bool)

(assert (=> b!5525483 m!6527910))

(assert (=> b!5525483 m!6527908))

(assert (=> b!5525483 m!6527910))

(declare-fun m!6527912 () Bool)

(assert (=> b!5525483 m!6527912))

(assert (=> b!5524830 d!1750795))

(declare-fun bs!1275321 () Bool)

(declare-fun d!1750797 () Bool)

(assert (= bs!1275321 (and d!1750797 b!5524057)))

(declare-fun lambda!296303 () Int)

(assert (=> bs!1275321 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296303 lambda!296137))))

(declare-fun bs!1275322 () Bool)

(assert (= bs!1275322 (and d!1750797 d!1750427)))

(assert (=> bs!1275322 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296303 lambda!296232))))

(declare-fun bs!1275323 () Bool)

(assert (= bs!1275323 (and d!1750797 d!1750455)))

(assert (=> bs!1275323 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296303 lambda!296233))))

(declare-fun bs!1275324 () Bool)

(assert (= bs!1275324 (and d!1750797 d!1750469)))

(assert (=> bs!1275324 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296303 lambda!296234))))

(assert (=> d!1750797 true))

(assert (=> d!1750797 (= (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247111 (h!69158 s!2326)) (head!11826 (t!376087 s!2326))) (flatMap!1124 (derivationStepZipper!1616 lt!2247111 (h!69158 s!2326)) lambda!296303))))

(declare-fun bs!1275325 () Bool)

(assert (= bs!1275325 d!1750797))

(assert (=> bs!1275325 m!6526572))

(declare-fun m!6527932 () Bool)

(assert (=> bs!1275325 m!6527932))

(assert (=> b!5524830 d!1750797))

(declare-fun d!1750799 () Bool)

(assert (=> d!1750799 (= (head!11826 (t!376087 s!2326)) (h!69158 (t!376087 s!2326)))))

(assert (=> b!5524830 d!1750799))

(declare-fun d!1750801 () Bool)

(assert (=> d!1750801 (= (tail!10921 (t!376087 s!2326)) (t!376087 (t!376087 s!2326)))))

(assert (=> b!5524830 d!1750801))

(assert (=> d!1750403 d!1750399))

(declare-fun d!1750803 () Bool)

(assert (=> d!1750803 (= (flatMap!1124 z!1189 lambda!296137) (dynLambda!24502 lambda!296137 (h!69157 zl!343)))))

(assert (=> d!1750803 true))

(declare-fun _$13!2082 () Unit!155482)

(assert (=> d!1750803 (= (choose!41975 z!1189 (h!69157 zl!343) lambda!296137) _$13!2082)))

(declare-fun b_lambda!209563 () Bool)

(assert (=> (not b_lambda!209563) (not d!1750803)))

(declare-fun bs!1275326 () Bool)

(assert (= bs!1275326 d!1750803))

(assert (=> bs!1275326 m!6526558))

(assert (=> bs!1275326 m!6526992))

(assert (=> d!1750403 d!1750803))

(declare-fun d!1750805 () Bool)

(assert (=> d!1750805 (= (maxBigInt!0 (regexDepth!211 (h!69156 (exprs!5395 lt!2247113))) (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247113))))) (ite (>= (regexDepth!211 (h!69156 (exprs!5395 lt!2247113))) (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247113))))) (regexDepth!211 (h!69156 (exprs!5395 lt!2247113))) (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247113))))))))

(assert (=> b!5524837 d!1750805))

(declare-fun d!1750807 () Bool)

(declare-fun res!2353024 () Bool)

(declare-fun e!3416035 () Bool)

(assert (=> d!1750807 (=> res!2353024 e!3416035)))

(assert (=> d!1750807 (= res!2353024 ((_ is Nil!62708) (t!376085 (exprs!5395 lt!2247113))))))

(assert (=> d!1750807 (= (forall!14687 (t!376085 (exprs!5395 lt!2247113)) lambda!296240) e!3416035)))

(declare-fun b!5525570 () Bool)

(declare-fun e!3416036 () Bool)

(assert (=> b!5525570 (= e!3416035 e!3416036)))

(declare-fun res!2353025 () Bool)

(assert (=> b!5525570 (=> (not res!2353025) (not e!3416036))))

(declare-fun dynLambda!24507 (Int Regex!15511) Bool)

(assert (=> b!5525570 (= res!2353025 (dynLambda!24507 lambda!296240 (h!69156 (t!376085 (exprs!5395 lt!2247113)))))))

(declare-fun b!5525571 () Bool)

(assert (=> b!5525571 (= e!3416036 (forall!14687 (t!376085 (t!376085 (exprs!5395 lt!2247113))) lambda!296240))))

(assert (= (and d!1750807 (not res!2353024)) b!5525570))

(assert (= (and b!5525570 res!2353025) b!5525571))

(declare-fun b_lambda!209565 () Bool)

(assert (=> (not b_lambda!209565) (not b!5525570)))

(declare-fun m!6527936 () Bool)

(assert (=> b!5525570 m!6527936))

(declare-fun m!6527938 () Bool)

(assert (=> b!5525571 m!6527938))

(assert (=> b!5524837 d!1750807))

(declare-fun bs!1275333 () Bool)

(declare-fun d!1750809 () Bool)

(assert (= bs!1275333 (and d!1750809 b!5524842)))

(declare-fun lambda!296306 () Int)

(assert (=> bs!1275333 (= (= lt!2247259 lt!2247263) (= lambda!296306 lambda!296242))))

(declare-fun bs!1275335 () Bool)

(assert (= bs!1275335 (and d!1750809 d!1750407)))

(assert (=> bs!1275335 (not (= lambda!296306 lambda!296214))))

(declare-fun bs!1275336 () Bool)

(assert (= bs!1275336 (and d!1750809 b!5524839)))

(assert (=> bs!1275336 (= (= lt!2247259 lt!2247261) (= lambda!296306 lambda!296241))))

(declare-fun bs!1275338 () Bool)

(assert (= bs!1275338 (and d!1750809 d!1750415)))

(assert (=> bs!1275338 (not (= lambda!296306 lambda!296223))))

(declare-fun bs!1275339 () Bool)

(assert (= bs!1275339 (and d!1750809 d!1750413)))

(assert (=> bs!1275339 (not (= lambda!296306 lambda!296220))))

(declare-fun bs!1275341 () Bool)

(assert (= bs!1275341 (and d!1750809 d!1750475)))

(assert (=> bs!1275341 (not (= lambda!296306 lambda!296235))))

(declare-fun bs!1275342 () Bool)

(assert (= bs!1275342 (and d!1750809 b!5524844)))

(assert (=> bs!1275342 (= (= lt!2247259 lt!2247265) (= lambda!296306 lambda!296243))))

(declare-fun bs!1275344 () Bool)

(assert (= bs!1275344 (and d!1750809 d!1750409)))

(assert (=> bs!1275344 (not (= lambda!296306 lambda!296217))))

(declare-fun bs!1275346 () Bool)

(assert (= bs!1275346 (and d!1750809 d!1750783)))

(assert (=> bs!1275346 (not (= lambda!296306 lambda!296300))))

(declare-fun bs!1275347 () Bool)

(assert (= bs!1275347 (and d!1750809 b!5524837)))

(assert (=> bs!1275347 (= lambda!296306 lambda!296240)))

(assert (=> d!1750809 true))

(assert (=> d!1750809 (forall!14687 (t!376085 (exprs!5395 lt!2247113)) lambda!296306)))

(declare-fun lt!2247327 () Unit!155482)

(declare-fun choose!41982 (List!62832 Int Int) Unit!155482)

(assert (=> d!1750809 (= lt!2247327 (choose!41982 (t!376085 (exprs!5395 lt!2247113)) lt!2247259 (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247113))))))))

(assert (=> d!1750809 (>= lt!2247259 (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247113)))))))

(assert (=> d!1750809 (= (lemmaForallRegexDepthBiggerThanTransitive!16 (t!376085 (exprs!5395 lt!2247113)) lt!2247259 (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247113))))) lt!2247327)))

(declare-fun bs!1275350 () Bool)

(assert (= bs!1275350 d!1750809))

(declare-fun m!6527954 () Bool)

(assert (=> bs!1275350 m!6527954))

(assert (=> bs!1275350 m!6527204))

(declare-fun m!6527956 () Bool)

(assert (=> bs!1275350 m!6527956))

(assert (=> b!5524837 d!1750809))

(declare-fun bm!409858 () Bool)

(declare-fun call!409868 () Int)

(declare-fun c!966601 () Bool)

(assert (=> bm!409858 (= call!409868 (regexDepth!211 (ite c!966601 (regTwo!31535 (h!69156 (exprs!5395 lt!2247113))) (regTwo!31534 (h!69156 (exprs!5395 lt!2247113))))))))

(declare-fun b!5525642 () Bool)

(declare-fun e!3416072 () Int)

(declare-fun call!409865 () Int)

(assert (=> b!5525642 (= e!3416072 (+ 1 call!409865))))

(declare-fun b!5525643 () Bool)

(declare-fun e!3416068 () Bool)

(declare-fun lt!2247330 () Int)

(assert (=> b!5525643 (= e!3416068 (> lt!2247330 call!409868))))

(declare-fun b!5525644 () Bool)

(declare-fun c!966599 () Bool)

(assert (=> b!5525644 (= c!966599 ((_ is Star!15511) (h!69156 (exprs!5395 lt!2247113))))))

(declare-fun e!3416073 () Bool)

(declare-fun e!3416074 () Bool)

(assert (=> b!5525644 (= e!3416073 e!3416074)))

(declare-fun b!5525645 () Bool)

(assert (=> b!5525645 (= e!3416072 1)))

(declare-fun b!5525646 () Bool)

(declare-fun e!3416071 () Bool)

(declare-fun e!3416077 () Bool)

(assert (=> b!5525646 (= e!3416071 e!3416077)))

(assert (=> b!5525646 (= c!966601 ((_ is Union!15511) (h!69156 (exprs!5395 lt!2247113))))))

(declare-fun b!5525647 () Bool)

(declare-fun e!3416076 () Int)

(declare-fun e!3416070 () Int)

(assert (=> b!5525647 (= e!3416076 e!3416070)))

(declare-fun c!966603 () Bool)

(assert (=> b!5525647 (= c!966603 ((_ is Star!15511) (h!69156 (exprs!5395 lt!2247113))))))

(declare-fun d!1750837 () Bool)

(assert (=> d!1750837 e!3416071))

(declare-fun res!2353032 () Bool)

(assert (=> d!1750837 (=> (not res!2353032) (not e!3416071))))

(assert (=> d!1750837 (= res!2353032 (> lt!2247330 0))))

(assert (=> d!1750837 (= lt!2247330 e!3416076)))

(declare-fun c!966602 () Bool)

(assert (=> d!1750837 (= c!966602 ((_ is ElementMatch!15511) (h!69156 (exprs!5395 lt!2247113))))))

(assert (=> d!1750837 (= (regexDepth!211 (h!69156 (exprs!5395 lt!2247113))) lt!2247330)))

(declare-fun b!5525648 () Bool)

(assert (=> b!5525648 (= e!3416074 (= lt!2247330 1))))

(declare-fun b!5525649 () Bool)

(declare-fun res!2353033 () Bool)

(assert (=> b!5525649 (=> (not res!2353033) (not e!3416068))))

(declare-fun call!409866 () Int)

(assert (=> b!5525649 (= res!2353033 (> lt!2247330 call!409866))))

(assert (=> b!5525649 (= e!3416073 e!3416068)))

(declare-fun c!966605 () Bool)

(declare-fun bm!409859 () Bool)

(declare-fun call!409869 () Int)

(assert (=> bm!409859 (= call!409869 (regexDepth!211 (ite c!966603 (reg!15840 (h!69156 (exprs!5395 lt!2247113))) (ite c!966605 (regOne!31535 (h!69156 (exprs!5395 lt!2247113))) (regTwo!31534 (h!69156 (exprs!5395 lt!2247113)))))))))

(declare-fun b!5525650 () Bool)

(declare-fun e!3416075 () Int)

(assert (=> b!5525650 (= e!3416075 (+ 1 call!409865))))

(declare-fun b!5525651 () Bool)

(assert (=> b!5525651 (= c!966605 ((_ is Union!15511) (h!69156 (exprs!5395 lt!2247113))))))

(assert (=> b!5525651 (= e!3416070 e!3416075)))

(declare-fun b!5525652 () Bool)

(assert (=> b!5525652 (= e!3416074 (> lt!2247330 call!409866))))

(declare-fun b!5525653 () Bool)

(assert (=> b!5525653 (= e!3416070 (+ 1 call!409869))))

(declare-fun b!5525654 () Bool)

(declare-fun e!3416069 () Bool)

(assert (=> b!5525654 (= e!3416069 (> lt!2247330 call!409868))))

(declare-fun bm!409860 () Bool)

(declare-fun call!409867 () Int)

(declare-fun call!409863 () Int)

(assert (=> bm!409860 (= call!409865 (maxBigInt!0 (ite c!966605 call!409867 call!409863) (ite c!966605 call!409863 call!409867)))))

(declare-fun bm!409861 () Bool)

(declare-fun call!409864 () Int)

(assert (=> bm!409861 (= call!409866 call!409864)))

(declare-fun b!5525655 () Bool)

(assert (=> b!5525655 (= e!3416075 e!3416072)))

(declare-fun c!966604 () Bool)

(assert (=> b!5525655 (= c!966604 ((_ is Concat!24356) (h!69156 (exprs!5395 lt!2247113))))))

(declare-fun c!966600 () Bool)

(declare-fun bm!409862 () Bool)

(assert (=> bm!409862 (= call!409864 (regexDepth!211 (ite c!966601 (regOne!31535 (h!69156 (exprs!5395 lt!2247113))) (ite c!966600 (regOne!31534 (h!69156 (exprs!5395 lt!2247113))) (reg!15840 (h!69156 (exprs!5395 lt!2247113)))))))))

(declare-fun bm!409863 () Bool)

(assert (=> bm!409863 (= call!409867 call!409869)))

(declare-fun b!5525656 () Bool)

(assert (=> b!5525656 (= e!3416076 1)))

(declare-fun b!5525657 () Bool)

(assert (=> b!5525657 (= e!3416077 e!3416069)))

(declare-fun res!2353034 () Bool)

(assert (=> b!5525657 (= res!2353034 (> lt!2247330 call!409864))))

(assert (=> b!5525657 (=> (not res!2353034) (not e!3416069))))

(declare-fun b!5525658 () Bool)

(assert (=> b!5525658 (= e!3416077 e!3416073)))

(assert (=> b!5525658 (= c!966600 ((_ is Concat!24356) (h!69156 (exprs!5395 lt!2247113))))))

(declare-fun bm!409864 () Bool)

(assert (=> bm!409864 (= call!409863 (regexDepth!211 (ite c!966605 (regTwo!31535 (h!69156 (exprs!5395 lt!2247113))) (regOne!31534 (h!69156 (exprs!5395 lt!2247113))))))))

(assert (= (and d!1750837 c!966602) b!5525656))

(assert (= (and d!1750837 (not c!966602)) b!5525647))

(assert (= (and b!5525647 c!966603) b!5525653))

(assert (= (and b!5525647 (not c!966603)) b!5525651))

(assert (= (and b!5525651 c!966605) b!5525650))

(assert (= (and b!5525651 (not c!966605)) b!5525655))

(assert (= (and b!5525655 c!966604) b!5525642))

(assert (= (and b!5525655 (not c!966604)) b!5525645))

(assert (= (or b!5525650 b!5525642) bm!409864))

(assert (= (or b!5525650 b!5525642) bm!409863))

(assert (= (or b!5525650 b!5525642) bm!409860))

(assert (= (or b!5525653 bm!409863) bm!409859))

(assert (= (and d!1750837 res!2353032) b!5525646))

(assert (= (and b!5525646 c!966601) b!5525657))

(assert (= (and b!5525646 (not c!966601)) b!5525658))

(assert (= (and b!5525657 res!2353034) b!5525654))

(assert (= (and b!5525658 c!966600) b!5525649))

(assert (= (and b!5525658 (not c!966600)) b!5525644))

(assert (= (and b!5525649 res!2353033) b!5525643))

(assert (= (and b!5525644 c!966599) b!5525652))

(assert (= (and b!5525644 (not c!966599)) b!5525648))

(assert (= (or b!5525649 b!5525652) bm!409861))

(assert (= (or b!5525654 b!5525643) bm!409858))

(assert (= (or b!5525657 bm!409861) bm!409862))

(declare-fun m!6527958 () Bool)

(assert (=> bm!409864 m!6527958))

(declare-fun m!6527960 () Bool)

(assert (=> bm!409859 m!6527960))

(declare-fun m!6527962 () Bool)

(assert (=> bm!409858 m!6527962))

(declare-fun m!6527964 () Bool)

(assert (=> bm!409862 m!6527964))

(declare-fun m!6527966 () Bool)

(assert (=> bm!409860 m!6527966))

(assert (=> b!5524837 d!1750837))

(declare-fun bs!1275351 () Bool)

(declare-fun b!5525659 () Bool)

(assert (= bs!1275351 (and b!5525659 b!5524842)))

(declare-fun lt!2247332 () Int)

(declare-fun lambda!296307 () Int)

(assert (=> bs!1275351 (= (= lt!2247332 lt!2247263) (= lambda!296307 lambda!296242))))

(declare-fun bs!1275352 () Bool)

(assert (= bs!1275352 (and b!5525659 d!1750407)))

(assert (=> bs!1275352 (not (= lambda!296307 lambda!296214))))

(declare-fun bs!1275353 () Bool)

(assert (= bs!1275353 (and b!5525659 b!5524839)))

(assert (=> bs!1275353 (= (= lt!2247332 lt!2247261) (= lambda!296307 lambda!296241))))

(declare-fun bs!1275354 () Bool)

(assert (= bs!1275354 (and b!5525659 d!1750415)))

(assert (=> bs!1275354 (not (= lambda!296307 lambda!296223))))

(declare-fun bs!1275355 () Bool)

(assert (= bs!1275355 (and b!5525659 d!1750413)))

(assert (=> bs!1275355 (not (= lambda!296307 lambda!296220))))

(declare-fun bs!1275356 () Bool)

(assert (= bs!1275356 (and b!5525659 d!1750809)))

(assert (=> bs!1275356 (= (= lt!2247332 lt!2247259) (= lambda!296307 lambda!296306))))

(declare-fun bs!1275357 () Bool)

(assert (= bs!1275357 (and b!5525659 d!1750475)))

(assert (=> bs!1275357 (not (= lambda!296307 lambda!296235))))

(declare-fun bs!1275358 () Bool)

(assert (= bs!1275358 (and b!5525659 b!5524844)))

(assert (=> bs!1275358 (= (= lt!2247332 lt!2247265) (= lambda!296307 lambda!296243))))

(declare-fun bs!1275359 () Bool)

(assert (= bs!1275359 (and b!5525659 d!1750409)))

(assert (=> bs!1275359 (not (= lambda!296307 lambda!296217))))

(declare-fun bs!1275360 () Bool)

(assert (= bs!1275360 (and b!5525659 d!1750783)))

(assert (=> bs!1275360 (not (= lambda!296307 lambda!296300))))

(declare-fun bs!1275361 () Bool)

(assert (= bs!1275361 (and b!5525659 b!5524837)))

(assert (=> bs!1275361 (= (= lt!2247332 lt!2247259) (= lambda!296307 lambda!296240))))

(assert (=> b!5525659 true))

(declare-fun bs!1275362 () Bool)

(declare-fun b!5525661 () Bool)

(assert (= bs!1275362 (and b!5525661 b!5524842)))

(declare-fun lambda!296308 () Int)

(declare-fun lt!2247334 () Int)

(assert (=> bs!1275362 (= (= lt!2247334 lt!2247263) (= lambda!296308 lambda!296242))))

(declare-fun bs!1275363 () Bool)

(assert (= bs!1275363 (and b!5525661 d!1750407)))

(assert (=> bs!1275363 (not (= lambda!296308 lambda!296214))))

(declare-fun bs!1275364 () Bool)

(assert (= bs!1275364 (and b!5525661 d!1750415)))

(assert (=> bs!1275364 (not (= lambda!296308 lambda!296223))))

(declare-fun bs!1275365 () Bool)

(assert (= bs!1275365 (and b!5525661 d!1750413)))

(assert (=> bs!1275365 (not (= lambda!296308 lambda!296220))))

(declare-fun bs!1275366 () Bool)

(assert (= bs!1275366 (and b!5525661 d!1750809)))

(assert (=> bs!1275366 (= (= lt!2247334 lt!2247259) (= lambda!296308 lambda!296306))))

(declare-fun bs!1275367 () Bool)

(assert (= bs!1275367 (and b!5525661 d!1750475)))

(assert (=> bs!1275367 (not (= lambda!296308 lambda!296235))))

(declare-fun bs!1275368 () Bool)

(assert (= bs!1275368 (and b!5525661 b!5524844)))

(assert (=> bs!1275368 (= (= lt!2247334 lt!2247265) (= lambda!296308 lambda!296243))))

(declare-fun bs!1275369 () Bool)

(assert (= bs!1275369 (and b!5525661 d!1750409)))

(assert (=> bs!1275369 (not (= lambda!296308 lambda!296217))))

(declare-fun bs!1275370 () Bool)

(assert (= bs!1275370 (and b!5525661 d!1750783)))

(assert (=> bs!1275370 (not (= lambda!296308 lambda!296300))))

(declare-fun bs!1275371 () Bool)

(assert (= bs!1275371 (and b!5525661 b!5524837)))

(assert (=> bs!1275371 (= (= lt!2247334 lt!2247259) (= lambda!296308 lambda!296240))))

(declare-fun bs!1275372 () Bool)

(assert (= bs!1275372 (and b!5525661 b!5524839)))

(assert (=> bs!1275372 (= (= lt!2247334 lt!2247261) (= lambda!296308 lambda!296241))))

(declare-fun bs!1275373 () Bool)

(assert (= bs!1275373 (and b!5525661 b!5525659)))

(assert (=> bs!1275373 (= (= lt!2247334 lt!2247332) (= lambda!296308 lambda!296307))))

(assert (=> b!5525661 true))

(declare-fun d!1750839 () Bool)

(declare-fun e!3416079 () Bool)

(assert (=> d!1750839 e!3416079))

(declare-fun res!2353035 () Bool)

(assert (=> d!1750839 (=> (not res!2353035) (not e!3416079))))

(assert (=> d!1750839 (= res!2353035 (>= lt!2247334 0))))

(declare-fun e!3416078 () Int)

(assert (=> d!1750839 (= lt!2247334 e!3416078)))

(declare-fun c!966606 () Bool)

(assert (=> d!1750839 (= c!966606 ((_ is Cons!62708) (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247113))))))))

(assert (=> d!1750839 (= (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247113)))) lt!2247334)))

(assert (=> b!5525659 (= e!3416078 lt!2247332)))

(assert (=> b!5525659 (= lt!2247332 (maxBigInt!0 (regexDepth!211 (h!69156 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247113)))))) (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247113)))))))))))

(declare-fun lt!2247331 () Unit!155482)

(assert (=> b!5525659 (= lt!2247331 (lemmaForallRegexDepthBiggerThanTransitive!16 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247113))))) lt!2247332 (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247113)))))))))))

(assert (=> b!5525659 (forall!14687 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247113))))) lambda!296307)))

(declare-fun lt!2247333 () Unit!155482)

(assert (=> b!5525659 (= lt!2247333 lt!2247331)))

(declare-fun b!5525660 () Bool)

(assert (=> b!5525660 (= e!3416078 0)))

(assert (=> b!5525661 (= e!3416079 (forall!14687 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247113)))) lambda!296308))))

(assert (= (and d!1750839 c!966606) b!5525659))

(assert (= (and d!1750839 (not c!966606)) b!5525660))

(assert (= (and d!1750839 res!2353035) b!5525661))

(declare-fun m!6527968 () Bool)

(assert (=> b!5525659 m!6527968))

(declare-fun m!6527970 () Bool)

(assert (=> b!5525659 m!6527970))

(declare-fun m!6527972 () Bool)

(assert (=> b!5525659 m!6527972))

(declare-fun m!6527974 () Bool)

(assert (=> b!5525659 m!6527974))

(assert (=> b!5525659 m!6527968))

(assert (=> b!5525659 m!6527972))

(declare-fun m!6527976 () Bool)

(assert (=> b!5525659 m!6527976))

(assert (=> b!5525659 m!6527972))

(declare-fun m!6527978 () Bool)

(assert (=> b!5525661 m!6527978))

(assert (=> b!5524837 d!1750839))

(declare-fun d!1750841 () Bool)

(assert (=> d!1750841 (= (isEmptyExpr!1083 lt!2247232) ((_ is EmptyExpr!15511) lt!2247232))))

(assert (=> b!5524618 d!1750841))

(assert (=> d!1750421 d!1750419))

(assert (=> d!1750421 d!1750417))

(declare-fun d!1750843 () Bool)

(assert (=> d!1750843 (= (matchR!7696 r!7292 s!2326) (matchRSpec!2614 r!7292 s!2326))))

(assert (=> d!1750843 true))

(declare-fun _$88!3796 () Unit!155482)

(assert (=> d!1750843 (= (choose!41976 r!7292 s!2326) _$88!3796)))

(declare-fun bs!1275374 () Bool)

(assert (= bs!1275374 d!1750843))

(assert (=> bs!1275374 m!6526548))

(assert (=> bs!1275374 m!6526546))

(assert (=> d!1750421 d!1750843))

(assert (=> d!1750421 d!1750429))

(assert (=> d!1750459 d!1750789))

(declare-fun b!5525662 () Bool)

(declare-fun e!3416080 () Bool)

(declare-fun e!3416081 () Bool)

(assert (=> b!5525662 (= e!3416080 e!3416081)))

(declare-fun res!2353043 () Bool)

(assert (=> b!5525662 (=> (not res!2353043) (not e!3416081))))

(declare-fun lt!2247335 () Bool)

(assert (=> b!5525662 (= res!2353043 (not lt!2247335))))

(declare-fun b!5525663 () Bool)

(declare-fun res!2353037 () Bool)

(assert (=> b!5525663 (=> res!2353037 e!3416080)))

(declare-fun e!3416086 () Bool)

(assert (=> b!5525663 (= res!2353037 e!3416086)))

(declare-fun res!2353041 () Bool)

(assert (=> b!5525663 (=> (not res!2353041) (not e!3416086))))

(assert (=> b!5525663 (= res!2353041 lt!2247335)))

(declare-fun b!5525664 () Bool)

(declare-fun res!2353040 () Bool)

(declare-fun e!3416083 () Bool)

(assert (=> b!5525664 (=> res!2353040 e!3416083)))

(assert (=> b!5525664 (= res!2353040 (not (isEmpty!34498 (tail!10921 s!2326))))))

(declare-fun b!5525665 () Bool)

(declare-fun res!2353036 () Bool)

(assert (=> b!5525665 (=> (not res!2353036) (not e!3416086))))

(assert (=> b!5525665 (= res!2353036 (isEmpty!34498 (tail!10921 s!2326)))))

(declare-fun b!5525666 () Bool)

(declare-fun res!2353039 () Bool)

(assert (=> b!5525666 (=> res!2353039 e!3416080)))

(assert (=> b!5525666 (= res!2353039 (not ((_ is ElementMatch!15511) (regTwo!31534 r!7292))))))

(declare-fun e!3416082 () Bool)

(assert (=> b!5525666 (= e!3416082 e!3416080)))

(declare-fun b!5525667 () Bool)

(assert (=> b!5525667 (= e!3416083 (not (= (head!11826 s!2326) (c!966149 (regTwo!31534 r!7292)))))))

(declare-fun b!5525669 () Bool)

(declare-fun e!3416085 () Bool)

(assert (=> b!5525669 (= e!3416085 e!3416082)))

(declare-fun c!966608 () Bool)

(assert (=> b!5525669 (= c!966608 ((_ is EmptyLang!15511) (regTwo!31534 r!7292)))))

(declare-fun b!5525670 () Bool)

(declare-fun e!3416084 () Bool)

(assert (=> b!5525670 (= e!3416084 (matchR!7696 (derivativeStep!4376 (regTwo!31534 r!7292) (head!11826 s!2326)) (tail!10921 s!2326)))))

(declare-fun bm!409865 () Bool)

(declare-fun call!409870 () Bool)

(assert (=> bm!409865 (= call!409870 (isEmpty!34498 s!2326))))

(declare-fun b!5525671 () Bool)

(assert (=> b!5525671 (= e!3416086 (= (head!11826 s!2326) (c!966149 (regTwo!31534 r!7292))))))

(declare-fun b!5525672 () Bool)

(assert (=> b!5525672 (= e!3416084 (nullable!5545 (regTwo!31534 r!7292)))))

(declare-fun b!5525673 () Bool)

(assert (=> b!5525673 (= e!3416085 (= lt!2247335 call!409870))))

(declare-fun b!5525674 () Bool)

(assert (=> b!5525674 (= e!3416081 e!3416083)))

(declare-fun res!2353042 () Bool)

(assert (=> b!5525674 (=> res!2353042 e!3416083)))

(assert (=> b!5525674 (= res!2353042 call!409870)))

(declare-fun b!5525675 () Bool)

(assert (=> b!5525675 (= e!3416082 (not lt!2247335))))

(declare-fun d!1750845 () Bool)

(assert (=> d!1750845 e!3416085))

(declare-fun c!966609 () Bool)

(assert (=> d!1750845 (= c!966609 ((_ is EmptyExpr!15511) (regTwo!31534 r!7292)))))

(assert (=> d!1750845 (= lt!2247335 e!3416084)))

(declare-fun c!966607 () Bool)

(assert (=> d!1750845 (= c!966607 (isEmpty!34498 s!2326))))

(assert (=> d!1750845 (validRegex!7247 (regTwo!31534 r!7292))))

(assert (=> d!1750845 (= (matchR!7696 (regTwo!31534 r!7292) s!2326) lt!2247335)))

(declare-fun b!5525668 () Bool)

(declare-fun res!2353038 () Bool)

(assert (=> b!5525668 (=> (not res!2353038) (not e!3416086))))

(assert (=> b!5525668 (= res!2353038 (not call!409870))))

(assert (= (and d!1750845 c!966607) b!5525672))

(assert (= (and d!1750845 (not c!966607)) b!5525670))

(assert (= (and d!1750845 c!966609) b!5525673))

(assert (= (and d!1750845 (not c!966609)) b!5525669))

(assert (= (and b!5525669 c!966608) b!5525675))

(assert (= (and b!5525669 (not c!966608)) b!5525666))

(assert (= (and b!5525666 (not res!2353039)) b!5525663))

(assert (= (and b!5525663 res!2353041) b!5525668))

(assert (= (and b!5525668 res!2353038) b!5525665))

(assert (= (and b!5525665 res!2353036) b!5525671))

(assert (= (and b!5525663 (not res!2353037)) b!5525662))

(assert (= (and b!5525662 res!2353043) b!5525674))

(assert (= (and b!5525674 (not res!2353042)) b!5525664))

(assert (= (and b!5525664 (not res!2353040)) b!5525667))

(assert (= (or b!5525673 b!5525668 b!5525674) bm!409865))

(assert (=> b!5525671 m!6527062))

(assert (=> d!1750845 m!6527056))

(declare-fun m!6527980 () Bool)

(assert (=> d!1750845 m!6527980))

(assert (=> b!5525667 m!6527062))

(assert (=> b!5525664 m!6527064))

(assert (=> b!5525664 m!6527064))

(assert (=> b!5525664 m!6527066))

(assert (=> b!5525665 m!6527064))

(assert (=> b!5525665 m!6527064))

(assert (=> b!5525665 m!6527066))

(declare-fun m!6527982 () Bool)

(assert (=> b!5525672 m!6527982))

(assert (=> bm!409865 m!6527056))

(assert (=> b!5525670 m!6527062))

(assert (=> b!5525670 m!6527062))

(declare-fun m!6527984 () Bool)

(assert (=> b!5525670 m!6527984))

(assert (=> b!5525670 m!6527064))

(assert (=> b!5525670 m!6527984))

(assert (=> b!5525670 m!6527064))

(declare-fun m!6527986 () Bool)

(assert (=> b!5525670 m!6527986))

(assert (=> b!5524521 d!1750845))

(declare-fun d!1750847 () Bool)

(declare-fun c!966610 () Bool)

(assert (=> d!1750847 (= c!966610 (isEmpty!34498 (tail!10921 (t!376087 s!2326))))))

(declare-fun e!3416087 () Bool)

(assert (=> d!1750847 (= (matchZipper!1669 (derivationStepZipper!1616 lt!2247093 (head!11826 (t!376087 s!2326))) (tail!10921 (t!376087 s!2326))) e!3416087)))

(declare-fun b!5525676 () Bool)

(assert (=> b!5525676 (= e!3416087 (nullableZipper!1537 (derivationStepZipper!1616 lt!2247093 (head!11826 (t!376087 s!2326)))))))

(declare-fun b!5525677 () Bool)

(assert (=> b!5525677 (= e!3416087 (matchZipper!1669 (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247093 (head!11826 (t!376087 s!2326))) (head!11826 (tail!10921 (t!376087 s!2326)))) (tail!10921 (tail!10921 (t!376087 s!2326)))))))

(assert (= (and d!1750847 c!966610) b!5525676))

(assert (= (and d!1750847 (not c!966610)) b!5525677))

(assert (=> d!1750847 m!6527030))

(assert (=> d!1750847 m!6527902))

(assert (=> b!5525676 m!6527168))

(declare-fun m!6527988 () Bool)

(assert (=> b!5525676 m!6527988))

(assert (=> b!5525677 m!6527030))

(assert (=> b!5525677 m!6527906))

(assert (=> b!5525677 m!6527168))

(assert (=> b!5525677 m!6527906))

(declare-fun m!6527990 () Bool)

(assert (=> b!5525677 m!6527990))

(assert (=> b!5525677 m!6527030))

(assert (=> b!5525677 m!6527910))

(assert (=> b!5525677 m!6527990))

(assert (=> b!5525677 m!6527910))

(declare-fun m!6527992 () Bool)

(assert (=> b!5525677 m!6527992))

(assert (=> b!5524821 d!1750847))

(declare-fun bs!1275375 () Bool)

(declare-fun d!1750849 () Bool)

(assert (= bs!1275375 (and d!1750849 d!1750797)))

(declare-fun lambda!296309 () Int)

(assert (=> bs!1275375 (= lambda!296309 lambda!296303)))

(declare-fun bs!1275376 () Bool)

(assert (= bs!1275376 (and d!1750849 d!1750427)))

(assert (=> bs!1275376 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296309 lambda!296232))))

(declare-fun bs!1275377 () Bool)

(assert (= bs!1275377 (and d!1750849 d!1750455)))

(assert (=> bs!1275377 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296309 lambda!296233))))

(declare-fun bs!1275378 () Bool)

(assert (= bs!1275378 (and d!1750849 d!1750469)))

(assert (=> bs!1275378 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296309 lambda!296234))))

(declare-fun bs!1275379 () Bool)

(assert (= bs!1275379 (and d!1750849 b!5524057)))

(assert (=> bs!1275379 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296309 lambda!296137))))

(assert (=> d!1750849 true))

(assert (=> d!1750849 (= (derivationStepZipper!1616 lt!2247093 (head!11826 (t!376087 s!2326))) (flatMap!1124 lt!2247093 lambda!296309))))

(declare-fun bs!1275380 () Bool)

(assert (= bs!1275380 d!1750849))

(declare-fun m!6527994 () Bool)

(assert (=> bs!1275380 m!6527994))

(assert (=> b!5524821 d!1750849))

(assert (=> b!5524821 d!1750799))

(assert (=> b!5524821 d!1750801))

(declare-fun d!1750851 () Bool)

(assert (=> d!1750851 (= (nullable!5545 r!7292) (nullableFct!1669 r!7292))))

(declare-fun bs!1275381 () Bool)

(assert (= bs!1275381 d!1750851))

(declare-fun m!6527996 () Bool)

(assert (=> bs!1275381 m!6527996))

(assert (=> b!5524708 d!1750851))

(declare-fun b!5525678 () Bool)

(declare-fun e!3416089 () (InoxSet Context!9790))

(assert (=> b!5525678 (= e!3416089 (store ((as const (Array Context!9790 Bool)) false) (ite (or c!966370 c!966367) lt!2247098 (Context!9791 call!409686)) true))))

(declare-fun c!966613 () Bool)

(declare-fun call!409874 () (InoxSet Context!9790))

(declare-fun c!966611 () Bool)

(declare-fun call!409872 () List!62832)

(declare-fun c!966614 () Bool)

(declare-fun bm!409866 () Bool)

(assert (=> bm!409866 (= call!409874 (derivationStepZipperDown!853 (ite c!966614 (regTwo!31535 (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292)))))) (ite c!966611 (regTwo!31534 (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292)))))) (ite c!966613 (regOne!31534 (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292)))))) (reg!15840 (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292))))))))) (ite (or c!966614 c!966611) (ite (or c!966370 c!966367) lt!2247098 (Context!9791 call!409686)) (Context!9791 call!409872)) (h!69158 s!2326)))))

(declare-fun bm!409867 () Bool)

(declare-fun call!409871 () List!62832)

(assert (=> bm!409867 (= call!409872 call!409871)))

(declare-fun c!966612 () Bool)

(declare-fun b!5525679 () Bool)

(assert (=> b!5525679 (= c!966612 ((_ is Star!15511) (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292)))))))))

(declare-fun e!3416093 () (InoxSet Context!9790))

(declare-fun e!3416088 () (InoxSet Context!9790))

(assert (=> b!5525679 (= e!3416093 e!3416088)))

(declare-fun d!1750853 () Bool)

(declare-fun c!966615 () Bool)

(assert (=> d!1750853 (= c!966615 (and ((_ is ElementMatch!15511) (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292)))))) (= (c!966149 (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292)))))) (h!69158 s!2326))))))

(assert (=> d!1750853 (= (derivationStepZipperDown!853 (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292))))) (ite (or c!966370 c!966367) lt!2247098 (Context!9791 call!409686)) (h!69158 s!2326)) e!3416089)))

(declare-fun b!5525680 () Bool)

(declare-fun e!3416090 () (InoxSet Context!9790))

(declare-fun call!409876 () (InoxSet Context!9790))

(declare-fun call!409875 () (InoxSet Context!9790))

(assert (=> b!5525680 (= e!3416090 ((_ map or) call!409876 call!409875))))

(declare-fun b!5525681 () Bool)

(declare-fun call!409873 () (InoxSet Context!9790))

(assert (=> b!5525681 (= e!3416088 call!409873)))

(declare-fun b!5525682 () Bool)

(assert (=> b!5525682 (= e!3416093 call!409873)))

(declare-fun bm!409868 () Bool)

(assert (=> bm!409868 (= call!409873 call!409875)))

(declare-fun b!5525683 () Bool)

(declare-fun e!3416091 () Bool)

(assert (=> b!5525683 (= e!3416091 (nullable!5545 (regOne!31534 (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292))))))))))

(declare-fun bm!409869 () Bool)

(assert (=> bm!409869 (= call!409871 ($colon$colon!1590 (exprs!5395 (ite (or c!966370 c!966367) lt!2247098 (Context!9791 call!409686))) (ite (or c!966611 c!966613) (regTwo!31534 (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292)))))) (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292))))))))))

(declare-fun bm!409870 () Bool)

(assert (=> bm!409870 (= call!409875 call!409874)))

(declare-fun b!5525684 () Bool)

(declare-fun e!3416092 () (InoxSet Context!9790))

(assert (=> b!5525684 (= e!3416089 e!3416092)))

(assert (=> b!5525684 (= c!966614 ((_ is Union!15511) (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292)))))))))

(declare-fun bm!409871 () Bool)

(assert (=> bm!409871 (= call!409876 (derivationStepZipperDown!853 (ite c!966614 (regOne!31535 (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292)))))) (regOne!31534 (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292))))))) (ite c!966614 (ite (or c!966370 c!966367) lt!2247098 (Context!9791 call!409686)) (Context!9791 call!409871)) (h!69158 s!2326)))))

(declare-fun b!5525685 () Bool)

(assert (=> b!5525685 (= e!3416092 ((_ map or) call!409876 call!409874))))

(declare-fun b!5525686 () Bool)

(assert (=> b!5525686 (= e!3416090 e!3416093)))

(assert (=> b!5525686 (= c!966613 ((_ is Concat!24356) (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292)))))))))

(declare-fun b!5525687 () Bool)

(assert (=> b!5525687 (= c!966611 e!3416091)))

(declare-fun res!2353044 () Bool)

(assert (=> b!5525687 (=> (not res!2353044) (not e!3416091))))

(assert (=> b!5525687 (= res!2353044 ((_ is Concat!24356) (ite c!966370 (regTwo!31535 (regTwo!31534 r!7292)) (ite c!966367 (regTwo!31534 (regTwo!31534 r!7292)) (ite c!966369 (regOne!31534 (regTwo!31534 r!7292)) (reg!15840 (regTwo!31534 r!7292)))))))))

(assert (=> b!5525687 (= e!3416092 e!3416090)))

(declare-fun b!5525688 () Bool)

(assert (=> b!5525688 (= e!3416088 ((as const (Array Context!9790 Bool)) false))))

(assert (= (and d!1750853 c!966615) b!5525678))

(assert (= (and d!1750853 (not c!966615)) b!5525684))

(assert (= (and b!5525684 c!966614) b!5525685))

(assert (= (and b!5525684 (not c!966614)) b!5525687))

(assert (= (and b!5525687 res!2353044) b!5525683))

(assert (= (and b!5525687 c!966611) b!5525680))

(assert (= (and b!5525687 (not c!966611)) b!5525686))

(assert (= (and b!5525686 c!966613) b!5525682))

(assert (= (and b!5525686 (not c!966613)) b!5525679))

(assert (= (and b!5525679 c!966612) b!5525681))

(assert (= (and b!5525679 (not c!966612)) b!5525688))

(assert (= (or b!5525682 b!5525681) bm!409867))

(assert (= (or b!5525682 b!5525681) bm!409868))

(assert (= (or b!5525680 bm!409867) bm!409869))

(assert (= (or b!5525680 bm!409868) bm!409870))

(assert (= (or b!5525685 bm!409870) bm!409866))

(assert (= (or b!5525685 b!5525680) bm!409871))

(declare-fun m!6527998 () Bool)

(assert (=> b!5525678 m!6527998))

(declare-fun m!6528000 () Bool)

(assert (=> bm!409866 m!6528000))

(declare-fun m!6528002 () Bool)

(assert (=> bm!409869 m!6528002))

(declare-fun m!6528004 () Bool)

(assert (=> b!5525683 m!6528004))

(declare-fun m!6528006 () Bool)

(assert (=> bm!409871 m!6528006))

(assert (=> bm!409680 d!1750853))

(declare-fun bs!1275382 () Bool)

(declare-fun d!1750855 () Bool)

(assert (= bs!1275382 (and d!1750855 b!5524842)))

(declare-fun lambda!296310 () Int)

(assert (=> bs!1275382 (not (= lambda!296310 lambda!296242))))

(declare-fun bs!1275383 () Bool)

(assert (= bs!1275383 (and d!1750855 d!1750407)))

(assert (=> bs!1275383 (= lambda!296310 lambda!296214)))

(declare-fun bs!1275384 () Bool)

(assert (= bs!1275384 (and d!1750855 d!1750415)))

(assert (=> bs!1275384 (= lambda!296310 lambda!296223)))

(declare-fun bs!1275385 () Bool)

(assert (= bs!1275385 (and d!1750855 d!1750413)))

(assert (=> bs!1275385 (= lambda!296310 lambda!296220)))

(declare-fun bs!1275386 () Bool)

(assert (= bs!1275386 (and d!1750855 d!1750809)))

(assert (=> bs!1275386 (not (= lambda!296310 lambda!296306))))

(declare-fun bs!1275387 () Bool)

(assert (= bs!1275387 (and d!1750855 d!1750475)))

(assert (=> bs!1275387 (= lambda!296310 lambda!296235)))

(declare-fun bs!1275388 () Bool)

(assert (= bs!1275388 (and d!1750855 b!5525661)))

(assert (=> bs!1275388 (not (= lambda!296310 lambda!296308))))

(declare-fun bs!1275389 () Bool)

(assert (= bs!1275389 (and d!1750855 b!5524844)))

(assert (=> bs!1275389 (not (= lambda!296310 lambda!296243))))

(declare-fun bs!1275390 () Bool)

(assert (= bs!1275390 (and d!1750855 d!1750409)))

(assert (=> bs!1275390 (= lambda!296310 lambda!296217)))

(declare-fun bs!1275391 () Bool)

(assert (= bs!1275391 (and d!1750855 d!1750783)))

(assert (=> bs!1275391 (= lambda!296310 lambda!296300)))

(declare-fun bs!1275392 () Bool)

(assert (= bs!1275392 (and d!1750855 b!5524837)))

(assert (=> bs!1275392 (not (= lambda!296310 lambda!296240))))

(declare-fun bs!1275393 () Bool)

(assert (= bs!1275393 (and d!1750855 b!5524839)))

(assert (=> bs!1275393 (not (= lambda!296310 lambda!296241))))

(declare-fun bs!1275394 () Bool)

(assert (= bs!1275394 (and d!1750855 b!5525659)))

(assert (=> bs!1275394 (not (= lambda!296310 lambda!296307))))

(assert (=> d!1750855 (= (inv!82024 (h!69157 (t!376086 zl!343))) (forall!14687 (exprs!5395 (h!69157 (t!376086 zl!343))) lambda!296310))))

(declare-fun bs!1275395 () Bool)

(assert (= bs!1275395 d!1750855))

(declare-fun m!6528008 () Bool)

(assert (=> bs!1275395 m!6528008))

(assert (=> b!5524892 d!1750855))

(declare-fun d!1750857 () Bool)

(assert (=> d!1750857 (= (Exists!2611 (ite c!966335 lambda!296228 lambda!296229)) (choose!41971 (ite c!966335 lambda!296228 lambda!296229)))))

(declare-fun bs!1275396 () Bool)

(assert (= bs!1275396 d!1750857))

(declare-fun m!6528010 () Bool)

(assert (=> bs!1275396 m!6528010))

(assert (=> bm!409655 d!1750857))

(declare-fun d!1750859 () Bool)

(declare-fun res!2353049 () Bool)

(declare-fun e!3416098 () Bool)

(assert (=> d!1750859 (=> res!2353049 e!3416098)))

(assert (=> d!1750859 (= res!2353049 ((_ is Nil!62709) lt!2247241))))

(assert (=> d!1750859 (= (noDuplicate!1504 lt!2247241) e!3416098)))

(declare-fun b!5525693 () Bool)

(declare-fun e!3416099 () Bool)

(assert (=> b!5525693 (= e!3416098 e!3416099)))

(declare-fun res!2353050 () Bool)

(assert (=> b!5525693 (=> (not res!2353050) (not e!3416099))))

(declare-fun contains!19787 (List!62833 Context!9790) Bool)

(assert (=> b!5525693 (= res!2353050 (not (contains!19787 (t!376086 lt!2247241) (h!69157 lt!2247241))))))

(declare-fun b!5525694 () Bool)

(assert (=> b!5525694 (= e!3416099 (noDuplicate!1504 (t!376086 lt!2247241)))))

(assert (= (and d!1750859 (not res!2353049)) b!5525693))

(assert (= (and b!5525693 res!2353050) b!5525694))

(declare-fun m!6528012 () Bool)

(assert (=> b!5525693 m!6528012))

(declare-fun m!6528014 () Bool)

(assert (=> b!5525694 m!6528014))

(assert (=> d!1750431 d!1750859))

(declare-fun d!1750861 () Bool)

(declare-fun e!3416106 () Bool)

(assert (=> d!1750861 e!3416106))

(declare-fun res!2353056 () Bool)

(assert (=> d!1750861 (=> (not res!2353056) (not e!3416106))))

(declare-fun res!2353055 () List!62833)

(assert (=> d!1750861 (= res!2353056 (noDuplicate!1504 res!2353055))))

(declare-fun e!3416108 () Bool)

(assert (=> d!1750861 e!3416108))

(assert (=> d!1750861 (= (choose!41977 z!1189) res!2353055)))

(declare-fun b!5525702 () Bool)

(declare-fun e!3416107 () Bool)

(declare-fun tp!1520333 () Bool)

(assert (=> b!5525702 (= e!3416107 tp!1520333)))

(declare-fun tp!1520332 () Bool)

(declare-fun b!5525701 () Bool)

(assert (=> b!5525701 (= e!3416108 (and (inv!82024 (h!69157 res!2353055)) e!3416107 tp!1520332))))

(declare-fun b!5525703 () Bool)

(assert (=> b!5525703 (= e!3416106 (= (content!11276 res!2353055) z!1189))))

(assert (= b!5525701 b!5525702))

(assert (= (and d!1750861 ((_ is Cons!62709) res!2353055)) b!5525701))

(assert (= (and d!1750861 res!2353056) b!5525703))

(declare-fun m!6528016 () Bool)

(assert (=> d!1750861 m!6528016))

(declare-fun m!6528018 () Bool)

(assert (=> b!5525701 m!6528018))

(declare-fun m!6528020 () Bool)

(assert (=> b!5525703 m!6528020))

(assert (=> d!1750431 d!1750861))

(declare-fun d!1750863 () Bool)

(declare-fun e!3416114 () Bool)

(assert (=> d!1750863 e!3416114))

(declare-fun res!2353061 () Bool)

(assert (=> d!1750863 (=> (not res!2353061) (not e!3416114))))

(declare-fun lt!2247338 () List!62834)

(declare-fun content!11278 (List!62834) (InoxSet C!31292))

(assert (=> d!1750863 (= res!2353061 (= (content!11278 lt!2247338) ((_ map or) (content!11278 (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710))) (content!11278 (t!376087 s!2326)))))))

(declare-fun e!3416113 () List!62834)

(assert (=> d!1750863 (= lt!2247338 e!3416113)))

(declare-fun c!966618 () Bool)

(assert (=> d!1750863 (= c!966618 ((_ is Nil!62710) (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710))))))

(assert (=> d!1750863 (= (++!13759 (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710)) (t!376087 s!2326)) lt!2247338)))

(declare-fun b!5525714 () Bool)

(declare-fun res!2353062 () Bool)

(assert (=> b!5525714 (=> (not res!2353062) (not e!3416114))))

(declare-fun size!39940 (List!62834) Int)

(assert (=> b!5525714 (= res!2353062 (= (size!39940 lt!2247338) (+ (size!39940 (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710))) (size!39940 (t!376087 s!2326)))))))

(declare-fun b!5525713 () Bool)

(assert (=> b!5525713 (= e!3416113 (Cons!62710 (h!69158 (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710))) (++!13759 (t!376087 (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710))) (t!376087 s!2326))))))

(declare-fun b!5525715 () Bool)

(assert (=> b!5525715 (= e!3416114 (or (not (= (t!376087 s!2326) Nil!62710)) (= lt!2247338 (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710)))))))

(declare-fun b!5525712 () Bool)

(assert (=> b!5525712 (= e!3416113 (t!376087 s!2326))))

(assert (= (and d!1750863 c!966618) b!5525712))

(assert (= (and d!1750863 (not c!966618)) b!5525713))

(assert (= (and d!1750863 res!2353061) b!5525714))

(assert (= (and b!5525714 res!2353062) b!5525715))

(declare-fun m!6528022 () Bool)

(assert (=> d!1750863 m!6528022))

(assert (=> d!1750863 m!6526950))

(declare-fun m!6528024 () Bool)

(assert (=> d!1750863 m!6528024))

(declare-fun m!6528026 () Bool)

(assert (=> d!1750863 m!6528026))

(declare-fun m!6528028 () Bool)

(assert (=> b!5525714 m!6528028))

(assert (=> b!5525714 m!6526950))

(declare-fun m!6528030 () Bool)

(assert (=> b!5525714 m!6528030))

(declare-fun m!6528032 () Bool)

(assert (=> b!5525714 m!6528032))

(declare-fun m!6528034 () Bool)

(assert (=> b!5525713 m!6528034))

(assert (=> b!5524522 d!1750863))

(declare-fun d!1750865 () Bool)

(declare-fun e!3416116 () Bool)

(assert (=> d!1750865 e!3416116))

(declare-fun res!2353063 () Bool)

(assert (=> d!1750865 (=> (not res!2353063) (not e!3416116))))

(declare-fun lt!2247339 () List!62834)

(assert (=> d!1750865 (= res!2353063 (= (content!11278 lt!2247339) ((_ map or) (content!11278 Nil!62710) (content!11278 (Cons!62710 (h!69158 s!2326) Nil!62710)))))))

(declare-fun e!3416115 () List!62834)

(assert (=> d!1750865 (= lt!2247339 e!3416115)))

(declare-fun c!966619 () Bool)

(assert (=> d!1750865 (= c!966619 ((_ is Nil!62710) Nil!62710))))

(assert (=> d!1750865 (= (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710)) lt!2247339)))

(declare-fun b!5525718 () Bool)

(declare-fun res!2353064 () Bool)

(assert (=> b!5525718 (=> (not res!2353064) (not e!3416116))))

(assert (=> b!5525718 (= res!2353064 (= (size!39940 lt!2247339) (+ (size!39940 Nil!62710) (size!39940 (Cons!62710 (h!69158 s!2326) Nil!62710)))))))

(declare-fun b!5525717 () Bool)

(assert (=> b!5525717 (= e!3416115 (Cons!62710 (h!69158 Nil!62710) (++!13759 (t!376087 Nil!62710) (Cons!62710 (h!69158 s!2326) Nil!62710))))))

(declare-fun b!5525719 () Bool)

(assert (=> b!5525719 (= e!3416116 (or (not (= (Cons!62710 (h!69158 s!2326) Nil!62710) Nil!62710)) (= lt!2247339 Nil!62710)))))

(declare-fun b!5525716 () Bool)

(assert (=> b!5525716 (= e!3416115 (Cons!62710 (h!69158 s!2326) Nil!62710))))

(assert (= (and d!1750865 c!966619) b!5525716))

(assert (= (and d!1750865 (not c!966619)) b!5525717))

(assert (= (and d!1750865 res!2353063) b!5525718))

(assert (= (and b!5525718 res!2353064) b!5525719))

(declare-fun m!6528036 () Bool)

(assert (=> d!1750865 m!6528036))

(declare-fun m!6528038 () Bool)

(assert (=> d!1750865 m!6528038))

(declare-fun m!6528040 () Bool)

(assert (=> d!1750865 m!6528040))

(declare-fun m!6528042 () Bool)

(assert (=> b!5525718 m!6528042))

(declare-fun m!6528044 () Bool)

(assert (=> b!5525718 m!6528044))

(declare-fun m!6528046 () Bool)

(assert (=> b!5525718 m!6528046))

(declare-fun m!6528048 () Bool)

(assert (=> b!5525717 m!6528048))

(assert (=> b!5524522 d!1750865))

(declare-fun d!1750867 () Bool)

(assert (=> d!1750867 (= (++!13759 (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710)) (t!376087 s!2326)) s!2326)))

(declare-fun lt!2247342 () Unit!155482)

(declare-fun choose!41983 (List!62834 C!31292 List!62834 List!62834) Unit!155482)

(assert (=> d!1750867 (= lt!2247342 (choose!41983 Nil!62710 (h!69158 s!2326) (t!376087 s!2326) s!2326))))

(assert (=> d!1750867 (= (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) (t!376087 s!2326))) s!2326)))

(assert (=> d!1750867 (= (lemmaMoveElementToOtherListKeepsConcatEq!1928 Nil!62710 (h!69158 s!2326) (t!376087 s!2326) s!2326) lt!2247342)))

(declare-fun bs!1275397 () Bool)

(assert (= bs!1275397 d!1750867))

(assert (=> bs!1275397 m!6526950))

(assert (=> bs!1275397 m!6526950))

(assert (=> bs!1275397 m!6526952))

(declare-fun m!6528050 () Bool)

(assert (=> bs!1275397 m!6528050))

(declare-fun m!6528052 () Bool)

(assert (=> bs!1275397 m!6528052))

(assert (=> b!5524522 d!1750867))

(declare-fun b!5525720 () Bool)

(declare-fun e!3416120 () Bool)

(declare-fun lt!2247344 () Option!15520)

(assert (=> b!5525720 (= e!3416120 (not (isDefined!12223 lt!2247344)))))

(declare-fun b!5525721 () Bool)

(declare-fun e!3416118 () Option!15520)

(assert (=> b!5525721 (= e!3416118 (Some!15519 (tuple2!65217 (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710)) (t!376087 s!2326))))))

(declare-fun b!5525722 () Bool)

(declare-fun e!3416117 () Bool)

(assert (=> b!5525722 (= e!3416117 (matchR!7696 (regTwo!31534 r!7292) (t!376087 s!2326)))))

(declare-fun b!5525723 () Bool)

(declare-fun lt!2247343 () Unit!155482)

(declare-fun lt!2247345 () Unit!155482)

(assert (=> b!5525723 (= lt!2247343 lt!2247345)))

(assert (=> b!5525723 (= (++!13759 (++!13759 (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710)) (Cons!62710 (h!69158 (t!376087 s!2326)) Nil!62710)) (t!376087 (t!376087 s!2326))) s!2326)))

(assert (=> b!5525723 (= lt!2247345 (lemmaMoveElementToOtherListKeepsConcatEq!1928 (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710)) (h!69158 (t!376087 s!2326)) (t!376087 (t!376087 s!2326)) s!2326))))

(declare-fun e!3416119 () Option!15520)

(assert (=> b!5525723 (= e!3416119 (findConcatSeparation!1934 (regOne!31534 r!7292) (regTwo!31534 r!7292) (++!13759 (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710)) (Cons!62710 (h!69158 (t!376087 s!2326)) Nil!62710)) (t!376087 (t!376087 s!2326)) s!2326))))

(declare-fun b!5525724 () Bool)

(assert (=> b!5525724 (= e!3416119 None!15519)))

(declare-fun d!1750869 () Bool)

(assert (=> d!1750869 e!3416120))

(declare-fun res!2353069 () Bool)

(assert (=> d!1750869 (=> res!2353069 e!3416120)))

(declare-fun e!3416121 () Bool)

(assert (=> d!1750869 (= res!2353069 e!3416121)))

(declare-fun res!2353067 () Bool)

(assert (=> d!1750869 (=> (not res!2353067) (not e!3416121))))

(assert (=> d!1750869 (= res!2353067 (isDefined!12223 lt!2247344))))

(assert (=> d!1750869 (= lt!2247344 e!3416118)))

(declare-fun c!966620 () Bool)

(assert (=> d!1750869 (= c!966620 e!3416117)))

(declare-fun res!2353066 () Bool)

(assert (=> d!1750869 (=> (not res!2353066) (not e!3416117))))

(assert (=> d!1750869 (= res!2353066 (matchR!7696 (regOne!31534 r!7292) (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710))))))

(assert (=> d!1750869 (validRegex!7247 (regOne!31534 r!7292))))

(assert (=> d!1750869 (= (findConcatSeparation!1934 (regOne!31534 r!7292) (regTwo!31534 r!7292) (++!13759 Nil!62710 (Cons!62710 (h!69158 s!2326) Nil!62710)) (t!376087 s!2326) s!2326) lt!2247344)))

(declare-fun b!5525725 () Bool)

(assert (=> b!5525725 (= e!3416121 (= (++!13759 (_1!35911 (get!21582 lt!2247344)) (_2!35911 (get!21582 lt!2247344))) s!2326))))

(declare-fun b!5525726 () Bool)

(declare-fun res!2353068 () Bool)

(assert (=> b!5525726 (=> (not res!2353068) (not e!3416121))))

(assert (=> b!5525726 (= res!2353068 (matchR!7696 (regOne!31534 r!7292) (_1!35911 (get!21582 lt!2247344))))))

(declare-fun b!5525727 () Bool)

(assert (=> b!5525727 (= e!3416118 e!3416119)))

(declare-fun c!966621 () Bool)

(assert (=> b!5525727 (= c!966621 ((_ is Nil!62710) (t!376087 s!2326)))))

(declare-fun b!5525728 () Bool)

(declare-fun res!2353065 () Bool)

(assert (=> b!5525728 (=> (not res!2353065) (not e!3416121))))

(assert (=> b!5525728 (= res!2353065 (matchR!7696 (regTwo!31534 r!7292) (_2!35911 (get!21582 lt!2247344))))))

(assert (= (and d!1750869 res!2353066) b!5525722))

(assert (= (and d!1750869 c!966620) b!5525721))

(assert (= (and d!1750869 (not c!966620)) b!5525727))

(assert (= (and b!5525727 c!966621) b!5525724))

(assert (= (and b!5525727 (not c!966621)) b!5525723))

(assert (= (and d!1750869 res!2353067) b!5525726))

(assert (= (and b!5525726 res!2353068) b!5525728))

(assert (= (and b!5525728 res!2353065) b!5525725))

(assert (= (and d!1750869 (not res!2353069)) b!5525720))

(declare-fun m!6528054 () Bool)

(assert (=> b!5525728 m!6528054))

(declare-fun m!6528056 () Bool)

(assert (=> b!5525728 m!6528056))

(assert (=> b!5525726 m!6528054))

(declare-fun m!6528058 () Bool)

(assert (=> b!5525726 m!6528058))

(assert (=> b!5525723 m!6526950))

(declare-fun m!6528060 () Bool)

(assert (=> b!5525723 m!6528060))

(assert (=> b!5525723 m!6528060))

(declare-fun m!6528062 () Bool)

(assert (=> b!5525723 m!6528062))

(assert (=> b!5525723 m!6526950))

(declare-fun m!6528064 () Bool)

(assert (=> b!5525723 m!6528064))

(assert (=> b!5525723 m!6528060))

(declare-fun m!6528066 () Bool)

(assert (=> b!5525723 m!6528066))

(declare-fun m!6528068 () Bool)

(assert (=> d!1750869 m!6528068))

(assert (=> d!1750869 m!6526950))

(declare-fun m!6528070 () Bool)

(assert (=> d!1750869 m!6528070))

(assert (=> d!1750869 m!6526962))

(assert (=> b!5525720 m!6528068))

(assert (=> b!5525725 m!6528054))

(declare-fun m!6528072 () Bool)

(assert (=> b!5525725 m!6528072))

(declare-fun m!6528074 () Bool)

(assert (=> b!5525722 m!6528074))

(assert (=> b!5524522 d!1750869))

(assert (=> d!1750457 d!1750789))

(declare-fun b!5525729 () Bool)

(declare-fun e!3416123 () (InoxSet Context!9790))

(assert (=> b!5525729 (= e!3416123 (store ((as const (Array Context!9790 Bool)) false) (Context!9791 (t!376085 (exprs!5395 lt!2247106))) true))))

(declare-fun c!966624 () Bool)

(declare-fun call!409880 () (InoxSet Context!9790))

(declare-fun c!966625 () Bool)

(declare-fun bm!409872 () Bool)

(declare-fun call!409878 () List!62832)

(declare-fun c!966622 () Bool)

(assert (=> bm!409872 (= call!409880 (derivationStepZipperDown!853 (ite c!966625 (regTwo!31535 (h!69156 (exprs!5395 lt!2247106))) (ite c!966622 (regTwo!31534 (h!69156 (exprs!5395 lt!2247106))) (ite c!966624 (regOne!31534 (h!69156 (exprs!5395 lt!2247106))) (reg!15840 (h!69156 (exprs!5395 lt!2247106)))))) (ite (or c!966625 c!966622) (Context!9791 (t!376085 (exprs!5395 lt!2247106))) (Context!9791 call!409878)) (h!69158 s!2326)))))

(declare-fun bm!409873 () Bool)

(declare-fun call!409877 () List!62832)

(assert (=> bm!409873 (= call!409878 call!409877)))

(declare-fun b!5525730 () Bool)

(declare-fun c!966623 () Bool)

(assert (=> b!5525730 (= c!966623 ((_ is Star!15511) (h!69156 (exprs!5395 lt!2247106))))))

(declare-fun e!3416127 () (InoxSet Context!9790))

(declare-fun e!3416122 () (InoxSet Context!9790))

(assert (=> b!5525730 (= e!3416127 e!3416122)))

(declare-fun d!1750871 () Bool)

(declare-fun c!966626 () Bool)

(assert (=> d!1750871 (= c!966626 (and ((_ is ElementMatch!15511) (h!69156 (exprs!5395 lt!2247106))) (= (c!966149 (h!69156 (exprs!5395 lt!2247106))) (h!69158 s!2326))))))

(assert (=> d!1750871 (= (derivationStepZipperDown!853 (h!69156 (exprs!5395 lt!2247106)) (Context!9791 (t!376085 (exprs!5395 lt!2247106))) (h!69158 s!2326)) e!3416123)))

(declare-fun b!5525731 () Bool)

(declare-fun e!3416124 () (InoxSet Context!9790))

(declare-fun call!409882 () (InoxSet Context!9790))

(declare-fun call!409881 () (InoxSet Context!9790))

(assert (=> b!5525731 (= e!3416124 ((_ map or) call!409882 call!409881))))

(declare-fun b!5525732 () Bool)

(declare-fun call!409879 () (InoxSet Context!9790))

(assert (=> b!5525732 (= e!3416122 call!409879)))

(declare-fun b!5525733 () Bool)

(assert (=> b!5525733 (= e!3416127 call!409879)))

(declare-fun bm!409874 () Bool)

(assert (=> bm!409874 (= call!409879 call!409881)))

(declare-fun b!5525734 () Bool)

(declare-fun e!3416125 () Bool)

(assert (=> b!5525734 (= e!3416125 (nullable!5545 (regOne!31534 (h!69156 (exprs!5395 lt!2247106)))))))

(declare-fun bm!409875 () Bool)

(assert (=> bm!409875 (= call!409877 ($colon$colon!1590 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247106)))) (ite (or c!966622 c!966624) (regTwo!31534 (h!69156 (exprs!5395 lt!2247106))) (h!69156 (exprs!5395 lt!2247106)))))))

(declare-fun bm!409876 () Bool)

(assert (=> bm!409876 (= call!409881 call!409880)))

(declare-fun b!5525735 () Bool)

(declare-fun e!3416126 () (InoxSet Context!9790))

(assert (=> b!5525735 (= e!3416123 e!3416126)))

(assert (=> b!5525735 (= c!966625 ((_ is Union!15511) (h!69156 (exprs!5395 lt!2247106))))))

(declare-fun bm!409877 () Bool)

(assert (=> bm!409877 (= call!409882 (derivationStepZipperDown!853 (ite c!966625 (regOne!31535 (h!69156 (exprs!5395 lt!2247106))) (regOne!31534 (h!69156 (exprs!5395 lt!2247106)))) (ite c!966625 (Context!9791 (t!376085 (exprs!5395 lt!2247106))) (Context!9791 call!409877)) (h!69158 s!2326)))))

(declare-fun b!5525736 () Bool)

(assert (=> b!5525736 (= e!3416126 ((_ map or) call!409882 call!409880))))

(declare-fun b!5525737 () Bool)

(assert (=> b!5525737 (= e!3416124 e!3416127)))

(assert (=> b!5525737 (= c!966624 ((_ is Concat!24356) (h!69156 (exprs!5395 lt!2247106))))))

(declare-fun b!5525738 () Bool)

(assert (=> b!5525738 (= c!966622 e!3416125)))

(declare-fun res!2353070 () Bool)

(assert (=> b!5525738 (=> (not res!2353070) (not e!3416125))))

(assert (=> b!5525738 (= res!2353070 ((_ is Concat!24356) (h!69156 (exprs!5395 lt!2247106))))))

(assert (=> b!5525738 (= e!3416126 e!3416124)))

(declare-fun b!5525739 () Bool)

(assert (=> b!5525739 (= e!3416122 ((as const (Array Context!9790 Bool)) false))))

(assert (= (and d!1750871 c!966626) b!5525729))

(assert (= (and d!1750871 (not c!966626)) b!5525735))

(assert (= (and b!5525735 c!966625) b!5525736))

(assert (= (and b!5525735 (not c!966625)) b!5525738))

(assert (= (and b!5525738 res!2353070) b!5525734))

(assert (= (and b!5525738 c!966622) b!5525731))

(assert (= (and b!5525738 (not c!966622)) b!5525737))

(assert (= (and b!5525737 c!966624) b!5525733))

(assert (= (and b!5525737 (not c!966624)) b!5525730))

(assert (= (and b!5525730 c!966623) b!5525732))

(assert (= (and b!5525730 (not c!966623)) b!5525739))

(assert (= (or b!5525733 b!5525732) bm!409873))

(assert (= (or b!5525733 b!5525732) bm!409874))

(assert (= (or b!5525731 bm!409873) bm!409875))

(assert (= (or b!5525731 bm!409874) bm!409876))

(assert (= (or b!5525736 bm!409876) bm!409872))

(assert (= (or b!5525736 b!5525731) bm!409877))

(declare-fun m!6528076 () Bool)

(assert (=> b!5525729 m!6528076))

(declare-fun m!6528078 () Bool)

(assert (=> bm!409872 m!6528078))

(declare-fun m!6528080 () Bool)

(assert (=> bm!409875 m!6528080))

(declare-fun m!6528082 () Bool)

(assert (=> b!5525734 m!6528082))

(declare-fun m!6528084 () Bool)

(assert (=> bm!409877 m!6528084))

(assert (=> bm!409700 d!1750871))

(declare-fun d!1750873 () Bool)

(declare-fun c!966627 () Bool)

(assert (=> d!1750873 (= c!966627 (isEmpty!34498 (tail!10921 s!2326)))))

(declare-fun e!3416128 () Bool)

(assert (=> d!1750873 (= (matchZipper!1669 (derivationStepZipper!1616 lt!2247111 (head!11826 s!2326)) (tail!10921 s!2326)) e!3416128)))

(declare-fun b!5525740 () Bool)

(assert (=> b!5525740 (= e!3416128 (nullableZipper!1537 (derivationStepZipper!1616 lt!2247111 (head!11826 s!2326))))))

(declare-fun b!5525741 () Bool)

(assert (=> b!5525741 (= e!3416128 (matchZipper!1669 (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247111 (head!11826 s!2326)) (head!11826 (tail!10921 s!2326))) (tail!10921 (tail!10921 s!2326))))))

(assert (= (and d!1750873 c!966627) b!5525740))

(assert (= (and d!1750873 (not c!966627)) b!5525741))

(assert (=> d!1750873 m!6527064))

(assert (=> d!1750873 m!6527066))

(assert (=> b!5525740 m!6527184))

(declare-fun m!6528086 () Bool)

(assert (=> b!5525740 m!6528086))

(assert (=> b!5525741 m!6527064))

(declare-fun m!6528088 () Bool)

(assert (=> b!5525741 m!6528088))

(assert (=> b!5525741 m!6527184))

(assert (=> b!5525741 m!6528088))

(declare-fun m!6528090 () Bool)

(assert (=> b!5525741 m!6528090))

(assert (=> b!5525741 m!6527064))

(declare-fun m!6528092 () Bool)

(assert (=> b!5525741 m!6528092))

(assert (=> b!5525741 m!6528090))

(assert (=> b!5525741 m!6528092))

(declare-fun m!6528094 () Bool)

(assert (=> b!5525741 m!6528094))

(assert (=> b!5524828 d!1750873))

(declare-fun bs!1275398 () Bool)

(declare-fun d!1750875 () Bool)

(assert (= bs!1275398 (and d!1750875 d!1750797)))

(declare-fun lambda!296311 () Int)

(assert (=> bs!1275398 (= (= (head!11826 s!2326) (head!11826 (t!376087 s!2326))) (= lambda!296311 lambda!296303))))

(declare-fun bs!1275399 () Bool)

(assert (= bs!1275399 (and d!1750875 d!1750427)))

(assert (=> bs!1275399 (= (= (head!11826 s!2326) (h!69158 s!2326)) (= lambda!296311 lambda!296232))))

(declare-fun bs!1275400 () Bool)

(assert (= bs!1275400 (and d!1750875 d!1750455)))

(assert (=> bs!1275400 (= (= (head!11826 s!2326) (h!69158 s!2326)) (= lambda!296311 lambda!296233))))

(declare-fun bs!1275401 () Bool)

(assert (= bs!1275401 (and d!1750875 d!1750469)))

(assert (=> bs!1275401 (= (= (head!11826 s!2326) (h!69158 s!2326)) (= lambda!296311 lambda!296234))))

(declare-fun bs!1275402 () Bool)

(assert (= bs!1275402 (and d!1750875 d!1750849)))

(assert (=> bs!1275402 (= (= (head!11826 s!2326) (head!11826 (t!376087 s!2326))) (= lambda!296311 lambda!296309))))

(declare-fun bs!1275403 () Bool)

(assert (= bs!1275403 (and d!1750875 b!5524057)))

(assert (=> bs!1275403 (= (= (head!11826 s!2326) (h!69158 s!2326)) (= lambda!296311 lambda!296137))))

(assert (=> d!1750875 true))

(assert (=> d!1750875 (= (derivationStepZipper!1616 lt!2247111 (head!11826 s!2326)) (flatMap!1124 lt!2247111 lambda!296311))))

(declare-fun bs!1275404 () Bool)

(assert (= bs!1275404 d!1750875))

(declare-fun m!6528096 () Bool)

(assert (=> bs!1275404 m!6528096))

(assert (=> b!5524828 d!1750875))

(declare-fun d!1750877 () Bool)

(assert (=> d!1750877 (= (head!11826 s!2326) (h!69158 s!2326))))

(assert (=> b!5524828 d!1750877))

(assert (=> b!5524828 d!1750781))

(declare-fun d!1750879 () Bool)

(assert (=> d!1750879 (= (maxBigInt!0 (contextDepth!107 (h!69157 (Cons!62709 lt!2247113 Nil!62709))) (zipperDepth!194 (t!376086 (Cons!62709 lt!2247113 Nil!62709)))) (ite (>= (contextDepth!107 (h!69157 (Cons!62709 lt!2247113 Nil!62709))) (zipperDepth!194 (t!376086 (Cons!62709 lt!2247113 Nil!62709)))) (contextDepth!107 (h!69157 (Cons!62709 lt!2247113 Nil!62709))) (zipperDepth!194 (t!376086 (Cons!62709 lt!2247113 Nil!62709)))))))

(assert (=> b!5524493 d!1750879))

(declare-fun bs!1275405 () Bool)

(declare-fun d!1750881 () Bool)

(assert (= bs!1275405 (and d!1750881 b!5524493)))

(declare-fun lambda!296314 () Int)

(assert (=> bs!1275405 (not (= lambda!296314 lambda!296198))))

(declare-fun bs!1275406 () Bool)

(assert (= bs!1275406 (and d!1750881 b!5524495)))

(assert (=> bs!1275406 (not (= lambda!296314 lambda!296199))))

(declare-fun bs!1275407 () Bool)

(assert (= bs!1275407 (and d!1750881 b!5524498)))

(assert (=> bs!1275407 (not (= lambda!296314 lambda!296201))))

(declare-fun bs!1275408 () Bool)

(assert (= bs!1275408 (and d!1750881 b!5524500)))

(assert (=> bs!1275408 (not (= lambda!296314 lambda!296202))))

(assert (=> d!1750881 true))

(assert (=> d!1750881 true))

(declare-fun order!27119 () Int)

(declare-fun order!27121 () Int)

(declare-fun dynLambda!24508 (Int Int) Int)

(declare-fun dynLambda!24509 (Int Int) Int)

(assert (=> d!1750881 (< (dynLambda!24508 order!27119 lambda!296197) (dynLambda!24509 order!27121 lambda!296314))))

(assert (=> d!1750881 (forall!14686 (t!376086 (Cons!62709 lt!2247113 Nil!62709)) lambda!296314)))

(declare-fun lt!2247348 () Unit!155482)

(declare-fun choose!41984 (List!62833 Int Int Int) Unit!155482)

(assert (=> d!1750881 (= lt!2247348 (choose!41984 (t!376086 (Cons!62709 lt!2247113 Nil!62709)) lt!2247201 (zipperDepth!194 (t!376086 (Cons!62709 lt!2247113 Nil!62709))) lambda!296197))))

(assert (=> d!1750881 (>= lt!2247201 (zipperDepth!194 (t!376086 (Cons!62709 lt!2247113 Nil!62709))))))

(assert (=> d!1750881 (= (lemmaForallContextDepthBiggerThanTransitive!99 (t!376086 (Cons!62709 lt!2247113 Nil!62709)) lt!2247201 (zipperDepth!194 (t!376086 (Cons!62709 lt!2247113 Nil!62709))) lambda!296197) lt!2247348)))

(declare-fun bs!1275409 () Bool)

(assert (= bs!1275409 d!1750881))

(declare-fun m!6528098 () Bool)

(assert (=> bs!1275409 m!6528098))

(assert (=> bs!1275409 m!6526920))

(declare-fun m!6528100 () Bool)

(assert (=> bs!1275409 m!6528100))

(assert (=> b!5524493 d!1750881))

(declare-fun bs!1275410 () Bool)

(declare-fun b!5525745 () Bool)

(assert (= bs!1275410 (and b!5525745 b!5524842)))

(declare-fun lambda!296315 () Int)

(declare-fun lt!2247350 () Int)

(assert (=> bs!1275410 (= (= lt!2247350 lt!2247263) (= lambda!296315 lambda!296242))))

(declare-fun bs!1275411 () Bool)

(assert (= bs!1275411 (and b!5525745 d!1750407)))

(assert (=> bs!1275411 (not (= lambda!296315 lambda!296214))))

(declare-fun bs!1275412 () Bool)

(assert (= bs!1275412 (and b!5525745 d!1750415)))

(assert (=> bs!1275412 (not (= lambda!296315 lambda!296223))))

(declare-fun bs!1275413 () Bool)

(assert (= bs!1275413 (and b!5525745 d!1750413)))

(assert (=> bs!1275413 (not (= lambda!296315 lambda!296220))))

(declare-fun bs!1275414 () Bool)

(assert (= bs!1275414 (and b!5525745 d!1750809)))

(assert (=> bs!1275414 (= (= lt!2247350 lt!2247259) (= lambda!296315 lambda!296306))))

(declare-fun bs!1275415 () Bool)

(assert (= bs!1275415 (and b!5525745 d!1750475)))

(assert (=> bs!1275415 (not (= lambda!296315 lambda!296235))))

(declare-fun bs!1275416 () Bool)

(assert (= bs!1275416 (and b!5525745 b!5525661)))

(assert (=> bs!1275416 (= (= lt!2247350 lt!2247334) (= lambda!296315 lambda!296308))))

(declare-fun bs!1275417 () Bool)

(assert (= bs!1275417 (and b!5525745 b!5524844)))

(assert (=> bs!1275417 (= (= lt!2247350 lt!2247265) (= lambda!296315 lambda!296243))))

(declare-fun bs!1275418 () Bool)

(assert (= bs!1275418 (and b!5525745 d!1750409)))

(assert (=> bs!1275418 (not (= lambda!296315 lambda!296217))))

(declare-fun bs!1275419 () Bool)

(assert (= bs!1275419 (and b!5525745 d!1750783)))

(assert (=> bs!1275419 (not (= lambda!296315 lambda!296300))))

(declare-fun bs!1275420 () Bool)

(assert (= bs!1275420 (and b!5525745 b!5524839)))

(assert (=> bs!1275420 (= (= lt!2247350 lt!2247261) (= lambda!296315 lambda!296241))))

(declare-fun bs!1275421 () Bool)

(assert (= bs!1275421 (and b!5525745 b!5525659)))

(assert (=> bs!1275421 (= (= lt!2247350 lt!2247332) (= lambda!296315 lambda!296307))))

(declare-fun bs!1275422 () Bool)

(assert (= bs!1275422 (and b!5525745 b!5524837)))

(assert (=> bs!1275422 (= (= lt!2247350 lt!2247259) (= lambda!296315 lambda!296240))))

(declare-fun bs!1275423 () Bool)

(assert (= bs!1275423 (and b!5525745 d!1750855)))

(assert (=> bs!1275423 (not (= lambda!296315 lambda!296310))))

(assert (=> b!5525745 true))

(declare-fun bs!1275424 () Bool)

(declare-fun b!5525747 () Bool)

(assert (= bs!1275424 (and b!5525747 b!5524842)))

(declare-fun lambda!296316 () Int)

(declare-fun lt!2247352 () Int)

(assert (=> bs!1275424 (= (= lt!2247352 lt!2247263) (= lambda!296316 lambda!296242))))

(declare-fun bs!1275425 () Bool)

(assert (= bs!1275425 (and b!5525747 d!1750407)))

(assert (=> bs!1275425 (not (= lambda!296316 lambda!296214))))

(declare-fun bs!1275426 () Bool)

(assert (= bs!1275426 (and b!5525747 d!1750415)))

(assert (=> bs!1275426 (not (= lambda!296316 lambda!296223))))

(declare-fun bs!1275427 () Bool)

(assert (= bs!1275427 (and b!5525747 d!1750413)))

(assert (=> bs!1275427 (not (= lambda!296316 lambda!296220))))

(declare-fun bs!1275428 () Bool)

(assert (= bs!1275428 (and b!5525747 d!1750809)))

(assert (=> bs!1275428 (= (= lt!2247352 lt!2247259) (= lambda!296316 lambda!296306))))

(declare-fun bs!1275429 () Bool)

(assert (= bs!1275429 (and b!5525747 d!1750475)))

(assert (=> bs!1275429 (not (= lambda!296316 lambda!296235))))

(declare-fun bs!1275430 () Bool)

(assert (= bs!1275430 (and b!5525747 b!5525661)))

(assert (=> bs!1275430 (= (= lt!2247352 lt!2247334) (= lambda!296316 lambda!296308))))

(declare-fun bs!1275431 () Bool)

(assert (= bs!1275431 (and b!5525747 d!1750409)))

(assert (=> bs!1275431 (not (= lambda!296316 lambda!296217))))

(declare-fun bs!1275432 () Bool)

(assert (= bs!1275432 (and b!5525747 d!1750783)))

(assert (=> bs!1275432 (not (= lambda!296316 lambda!296300))))

(declare-fun bs!1275433 () Bool)

(assert (= bs!1275433 (and b!5525747 b!5524839)))

(assert (=> bs!1275433 (= (= lt!2247352 lt!2247261) (= lambda!296316 lambda!296241))))

(declare-fun bs!1275434 () Bool)

(assert (= bs!1275434 (and b!5525747 b!5525659)))

(assert (=> bs!1275434 (= (= lt!2247352 lt!2247332) (= lambda!296316 lambda!296307))))

(declare-fun bs!1275435 () Bool)

(assert (= bs!1275435 (and b!5525747 b!5524844)))

(assert (=> bs!1275435 (= (= lt!2247352 lt!2247265) (= lambda!296316 lambda!296243))))

(declare-fun bs!1275436 () Bool)

(assert (= bs!1275436 (and b!5525747 b!5525745)))

(assert (=> bs!1275436 (= (= lt!2247352 lt!2247350) (= lambda!296316 lambda!296315))))

(declare-fun bs!1275437 () Bool)

(assert (= bs!1275437 (and b!5525747 b!5524837)))

(assert (=> bs!1275437 (= (= lt!2247352 lt!2247259) (= lambda!296316 lambda!296240))))

(declare-fun bs!1275438 () Bool)

(assert (= bs!1275438 (and b!5525747 d!1750855)))

(assert (=> bs!1275438 (not (= lambda!296316 lambda!296310))))

(assert (=> b!5525747 true))

(declare-fun d!1750883 () Bool)

(declare-fun e!3416130 () Bool)

(assert (=> d!1750883 e!3416130))

(declare-fun res!2353071 () Bool)

(assert (=> d!1750883 (=> (not res!2353071) (not e!3416130))))

(assert (=> d!1750883 (= res!2353071 (>= lt!2247352 0))))

(declare-fun e!3416129 () Int)

(assert (=> d!1750883 (= lt!2247352 e!3416129)))

(declare-fun c!966630 () Bool)

(assert (=> d!1750883 (= c!966630 ((_ is Cons!62708) (exprs!5395 (h!69157 (Cons!62709 lt!2247113 Nil!62709)))))))

(assert (=> d!1750883 (= (contextDepth!107 (h!69157 (Cons!62709 lt!2247113 Nil!62709))) lt!2247352)))

(assert (=> b!5525745 (= e!3416129 lt!2247350)))

(assert (=> b!5525745 (= lt!2247350 (maxBigInt!0 (regexDepth!211 (h!69156 (exprs!5395 (h!69157 (Cons!62709 lt!2247113 Nil!62709))))) (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 (h!69157 (Cons!62709 lt!2247113 Nil!62709))))))))))

(declare-fun lt!2247349 () Unit!155482)

(assert (=> b!5525745 (= lt!2247349 (lemmaForallRegexDepthBiggerThanTransitive!16 (t!376085 (exprs!5395 (h!69157 (Cons!62709 lt!2247113 Nil!62709)))) lt!2247350 (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 (h!69157 (Cons!62709 lt!2247113 Nil!62709))))))))))

(assert (=> b!5525745 (forall!14687 (t!376085 (exprs!5395 (h!69157 (Cons!62709 lt!2247113 Nil!62709)))) lambda!296315)))

(declare-fun lt!2247351 () Unit!155482)

(assert (=> b!5525745 (= lt!2247351 lt!2247349)))

(declare-fun b!5525746 () Bool)

(assert (=> b!5525746 (= e!3416129 0)))

(assert (=> b!5525747 (= e!3416130 (forall!14687 (exprs!5395 (h!69157 (Cons!62709 lt!2247113 Nil!62709))) lambda!296316))))

(assert (= (and d!1750883 c!966630) b!5525745))

(assert (= (and d!1750883 (not c!966630)) b!5525746))

(assert (= (and d!1750883 res!2353071) b!5525747))

(declare-fun m!6528102 () Bool)

(assert (=> b!5525745 m!6528102))

(declare-fun m!6528104 () Bool)

(assert (=> b!5525745 m!6528104))

(declare-fun m!6528106 () Bool)

(assert (=> b!5525745 m!6528106))

(declare-fun m!6528108 () Bool)

(assert (=> b!5525745 m!6528108))

(assert (=> b!5525745 m!6528102))

(assert (=> b!5525745 m!6528106))

(declare-fun m!6528110 () Bool)

(assert (=> b!5525745 m!6528110))

(assert (=> b!5525745 m!6528106))

(declare-fun m!6528112 () Bool)

(assert (=> b!5525747 m!6528112))

(assert (=> b!5524493 d!1750883))

(declare-fun d!1750885 () Bool)

(declare-fun res!2353076 () Bool)

(declare-fun e!3416135 () Bool)

(assert (=> d!1750885 (=> res!2353076 e!3416135)))

(assert (=> d!1750885 (= res!2353076 ((_ is Nil!62709) (t!376086 (Cons!62709 lt!2247113 Nil!62709))))))

(assert (=> d!1750885 (= (forall!14686 (t!376086 (Cons!62709 lt!2247113 Nil!62709)) lambda!296198) e!3416135)))

(declare-fun b!5525752 () Bool)

(declare-fun e!3416136 () Bool)

(assert (=> b!5525752 (= e!3416135 e!3416136)))

(declare-fun res!2353077 () Bool)

(assert (=> b!5525752 (=> (not res!2353077) (not e!3416136))))

(declare-fun dynLambda!24510 (Int Context!9790) Bool)

(assert (=> b!5525752 (= res!2353077 (dynLambda!24510 lambda!296198 (h!69157 (t!376086 (Cons!62709 lt!2247113 Nil!62709)))))))

(declare-fun b!5525753 () Bool)

(assert (=> b!5525753 (= e!3416136 (forall!14686 (t!376086 (t!376086 (Cons!62709 lt!2247113 Nil!62709))) lambda!296198))))

(assert (= (and d!1750885 (not res!2353076)) b!5525752))

(assert (= (and b!5525752 res!2353077) b!5525753))

(declare-fun b_lambda!209599 () Bool)

(assert (=> (not b_lambda!209599) (not b!5525752)))

(declare-fun m!6528114 () Bool)

(assert (=> b!5525752 m!6528114))

(declare-fun m!6528116 () Bool)

(assert (=> b!5525753 m!6528116))

(assert (=> b!5524493 d!1750885))

(declare-fun bs!1275439 () Bool)

(declare-fun b!5525754 () Bool)

(assert (= bs!1275439 (and b!5525754 b!5524493)))

(declare-fun lambda!296317 () Int)

(assert (=> bs!1275439 (= lambda!296317 lambda!296197)))

(declare-fun bs!1275440 () Bool)

(assert (= bs!1275440 (and b!5525754 b!5524498)))

(assert (=> bs!1275440 (= lambda!296317 lambda!296200)))

(declare-fun bs!1275441 () Bool)

(assert (= bs!1275441 (and b!5525754 b!5524495)))

(declare-fun lt!2247356 () Int)

(declare-fun lambda!296318 () Int)

(assert (=> bs!1275441 (= (= lt!2247356 lt!2247198) (= lambda!296318 lambda!296199))))

(assert (=> bs!1275440 (= (= lt!2247356 lt!2247205) (= lambda!296318 lambda!296201))))

(declare-fun bs!1275442 () Bool)

(assert (= bs!1275442 (and b!5525754 d!1750881)))

(assert (=> bs!1275442 (not (= lambda!296318 lambda!296314))))

(assert (=> bs!1275439 (= (= lt!2247356 lt!2247201) (= lambda!296318 lambda!296198))))

(declare-fun bs!1275443 () Bool)

(assert (= bs!1275443 (and b!5525754 b!5524500)))

(assert (=> bs!1275443 (= (= lt!2247356 lt!2247202) (= lambda!296318 lambda!296202))))

(assert (=> b!5525754 true))

(declare-fun bs!1275444 () Bool)

(declare-fun b!5525756 () Bool)

(assert (= bs!1275444 (and b!5525756 b!5524495)))

(declare-fun lt!2247353 () Int)

(declare-fun lambda!296319 () Int)

(assert (=> bs!1275444 (= (= lt!2247353 lt!2247198) (= lambda!296319 lambda!296199))))

(declare-fun bs!1275445 () Bool)

(assert (= bs!1275445 (and b!5525756 b!5524498)))

(assert (=> bs!1275445 (= (= lt!2247353 lt!2247205) (= lambda!296319 lambda!296201))))

(declare-fun bs!1275446 () Bool)

(assert (= bs!1275446 (and b!5525756 b!5525754)))

(assert (=> bs!1275446 (= (= lt!2247353 lt!2247356) (= lambda!296319 lambda!296318))))

(declare-fun bs!1275447 () Bool)

(assert (= bs!1275447 (and b!5525756 d!1750881)))

(assert (=> bs!1275447 (not (= lambda!296319 lambda!296314))))

(declare-fun bs!1275448 () Bool)

(assert (= bs!1275448 (and b!5525756 b!5524493)))

(assert (=> bs!1275448 (= (= lt!2247353 lt!2247201) (= lambda!296319 lambda!296198))))

(declare-fun bs!1275449 () Bool)

(assert (= bs!1275449 (and b!5525756 b!5524500)))

(assert (=> bs!1275449 (= (= lt!2247353 lt!2247202) (= lambda!296319 lambda!296202))))

(assert (=> b!5525756 true))

(declare-fun d!1750887 () Bool)

(declare-fun e!3416137 () Bool)

(assert (=> d!1750887 e!3416137))

(declare-fun res!2353078 () Bool)

(assert (=> d!1750887 (=> (not res!2353078) (not e!3416137))))

(assert (=> d!1750887 (= res!2353078 (>= lt!2247353 0))))

(declare-fun e!3416138 () Int)

(assert (=> d!1750887 (= lt!2247353 e!3416138)))

(declare-fun c!966631 () Bool)

(assert (=> d!1750887 (= c!966631 ((_ is Cons!62709) (t!376086 (Cons!62709 lt!2247113 Nil!62709))))))

(assert (=> d!1750887 (= (zipperDepth!194 (t!376086 (Cons!62709 lt!2247113 Nil!62709))) lt!2247353)))

(assert (=> b!5525754 (= e!3416138 lt!2247356)))

(assert (=> b!5525754 (= lt!2247356 (maxBigInt!0 (contextDepth!107 (h!69157 (t!376086 (Cons!62709 lt!2247113 Nil!62709)))) (zipperDepth!194 (t!376086 (t!376086 (Cons!62709 lt!2247113 Nil!62709))))))))

(declare-fun lt!2247355 () Unit!155482)

(assert (=> b!5525754 (= lt!2247355 (lemmaForallContextDepthBiggerThanTransitive!99 (t!376086 (t!376086 (Cons!62709 lt!2247113 Nil!62709))) lt!2247356 (zipperDepth!194 (t!376086 (t!376086 (Cons!62709 lt!2247113 Nil!62709)))) lambda!296317))))

(assert (=> b!5525754 (forall!14686 (t!376086 (t!376086 (Cons!62709 lt!2247113 Nil!62709))) lambda!296318)))

(declare-fun lt!2247354 () Unit!155482)

(assert (=> b!5525754 (= lt!2247354 lt!2247355)))

(declare-fun b!5525755 () Bool)

(assert (=> b!5525755 (= e!3416138 0)))

(assert (=> b!5525756 (= e!3416137 (forall!14686 (t!376086 (Cons!62709 lt!2247113 Nil!62709)) lambda!296319))))

(assert (= (and d!1750887 c!966631) b!5525754))

(assert (= (and d!1750887 (not c!966631)) b!5525755))

(assert (= (and d!1750887 res!2353078) b!5525756))

(declare-fun m!6528118 () Bool)

(assert (=> b!5525754 m!6528118))

(declare-fun m!6528120 () Bool)

(assert (=> b!5525754 m!6528120))

(declare-fun m!6528122 () Bool)

(assert (=> b!5525754 m!6528122))

(declare-fun m!6528124 () Bool)

(assert (=> b!5525754 m!6528124))

(assert (=> b!5525754 m!6528118))

(declare-fun m!6528126 () Bool)

(assert (=> b!5525754 m!6528126))

(assert (=> b!5525754 m!6528124))

(assert (=> b!5525754 m!6528118))

(declare-fun m!6528128 () Bool)

(assert (=> b!5525756 m!6528128))

(assert (=> b!5524493 d!1750887))

(declare-fun d!1750889 () Bool)

(assert (=> d!1750889 (= (nullable!5545 (regOne!31534 (regOne!31534 r!7292))) (nullableFct!1669 (regOne!31534 (regOne!31534 r!7292))))))

(declare-fun bs!1275450 () Bool)

(assert (= bs!1275450 d!1750889))

(declare-fun m!6528130 () Bool)

(assert (=> bs!1275450 m!6528130))

(assert (=> b!5524786 d!1750889))

(declare-fun d!1750891 () Bool)

(assert (=> d!1750891 (= (nullable!5545 (h!69156 (exprs!5395 (h!69157 zl!343)))) (nullableFct!1669 (h!69156 (exprs!5395 (h!69157 zl!343)))))))

(declare-fun bs!1275451 () Bool)

(assert (= bs!1275451 d!1750891))

(declare-fun m!6528132 () Bool)

(assert (=> bs!1275451 m!6528132))

(assert (=> b!5524554 d!1750891))

(declare-fun d!1750893 () Bool)

(assert (=> d!1750893 (= (nullable!5545 (h!69156 (exprs!5395 lt!2247113))) (nullableFct!1669 (h!69156 (exprs!5395 lt!2247113))))))

(declare-fun bs!1275452 () Bool)

(assert (= bs!1275452 d!1750893))

(declare-fun m!6528134 () Bool)

(assert (=> bs!1275452 m!6528134))

(assert (=> b!5524801 d!1750893))

(declare-fun d!1750895 () Bool)

(assert (=> d!1750895 (= (nullable!5545 (h!69156 (exprs!5395 lt!2247103))) (nullableFct!1669 (h!69156 (exprs!5395 lt!2247103))))))

(declare-fun bs!1275453 () Bool)

(assert (= bs!1275453 d!1750895))

(declare-fun m!6528136 () Bool)

(assert (=> bs!1275453 m!6528136))

(assert (=> b!5524796 d!1750895))

(declare-fun d!1750897 () Bool)

(declare-fun c!966632 () Bool)

(assert (=> d!1750897 (= c!966632 (isEmpty!34498 (tail!10921 (t!376087 s!2326))))))

(declare-fun e!3416139 () Bool)

(assert (=> d!1750897 (= (matchZipper!1669 (derivationStepZipper!1616 lt!2247097 (head!11826 (t!376087 s!2326))) (tail!10921 (t!376087 s!2326))) e!3416139)))

(declare-fun b!5525757 () Bool)

(assert (=> b!5525757 (= e!3416139 (nullableZipper!1537 (derivationStepZipper!1616 lt!2247097 (head!11826 (t!376087 s!2326)))))))

(declare-fun b!5525758 () Bool)

(assert (=> b!5525758 (= e!3416139 (matchZipper!1669 (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247097 (head!11826 (t!376087 s!2326))) (head!11826 (tail!10921 (t!376087 s!2326)))) (tail!10921 (tail!10921 (t!376087 s!2326)))))))

(assert (= (and d!1750897 c!966632) b!5525757))

(assert (= (and d!1750897 (not c!966632)) b!5525758))

(assert (=> d!1750897 m!6527030))

(assert (=> d!1750897 m!6527902))

(assert (=> b!5525757 m!6527162))

(declare-fun m!6528138 () Bool)

(assert (=> b!5525757 m!6528138))

(assert (=> b!5525758 m!6527030))

(assert (=> b!5525758 m!6527906))

(assert (=> b!5525758 m!6527162))

(assert (=> b!5525758 m!6527906))

(declare-fun m!6528140 () Bool)

(assert (=> b!5525758 m!6528140))

(assert (=> b!5525758 m!6527030))

(assert (=> b!5525758 m!6527910))

(assert (=> b!5525758 m!6528140))

(assert (=> b!5525758 m!6527910))

(declare-fun m!6528142 () Bool)

(assert (=> b!5525758 m!6528142))

(assert (=> b!5524819 d!1750897))

(declare-fun bs!1275454 () Bool)

(declare-fun d!1750899 () Bool)

(assert (= bs!1275454 (and d!1750899 d!1750797)))

(declare-fun lambda!296320 () Int)

(assert (=> bs!1275454 (= lambda!296320 lambda!296303)))

(declare-fun bs!1275455 () Bool)

(assert (= bs!1275455 (and d!1750899 d!1750427)))

(assert (=> bs!1275455 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296320 lambda!296232))))

(declare-fun bs!1275456 () Bool)

(assert (= bs!1275456 (and d!1750899 d!1750455)))

(assert (=> bs!1275456 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296320 lambda!296233))))

(declare-fun bs!1275457 () Bool)

(assert (= bs!1275457 (and d!1750899 d!1750875)))

(assert (=> bs!1275457 (= (= (head!11826 (t!376087 s!2326)) (head!11826 s!2326)) (= lambda!296320 lambda!296311))))

(declare-fun bs!1275458 () Bool)

(assert (= bs!1275458 (and d!1750899 d!1750469)))

(assert (=> bs!1275458 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296320 lambda!296234))))

(declare-fun bs!1275459 () Bool)

(assert (= bs!1275459 (and d!1750899 d!1750849)))

(assert (=> bs!1275459 (= lambda!296320 lambda!296309)))

(declare-fun bs!1275460 () Bool)

(assert (= bs!1275460 (and d!1750899 b!5524057)))

(assert (=> bs!1275460 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296320 lambda!296137))))

(assert (=> d!1750899 true))

(assert (=> d!1750899 (= (derivationStepZipper!1616 lt!2247097 (head!11826 (t!376087 s!2326))) (flatMap!1124 lt!2247097 lambda!296320))))

(declare-fun bs!1275461 () Bool)

(assert (= bs!1275461 d!1750899))

(declare-fun m!6528144 () Bool)

(assert (=> bs!1275461 m!6528144))

(assert (=> b!5524819 d!1750899))

(assert (=> b!5524819 d!1750799))

(assert (=> b!5524819 d!1750801))

(declare-fun bm!409878 () Bool)

(declare-fun call!409883 () (InoxSet Context!9790))

(assert (=> bm!409878 (= call!409883 (derivationStepZipperDown!853 (h!69156 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247106))))) (Context!9791 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247106)))))) (h!69158 s!2326)))))

(declare-fun b!5525759 () Bool)

(declare-fun e!3416140 () (InoxSet Context!9790))

(assert (=> b!5525759 (= e!3416140 ((as const (Array Context!9790 Bool)) false))))

(declare-fun b!5525760 () Bool)

(declare-fun e!3416141 () (InoxSet Context!9790))

(assert (=> b!5525760 (= e!3416141 e!3416140)))

(declare-fun c!966634 () Bool)

(assert (=> b!5525760 (= c!966634 ((_ is Cons!62708) (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247106))))))))

(declare-fun d!1750901 () Bool)

(declare-fun c!966633 () Bool)

(declare-fun e!3416142 () Bool)

(assert (=> d!1750901 (= c!966633 e!3416142)))

(declare-fun res!2353079 () Bool)

(assert (=> d!1750901 (=> (not res!2353079) (not e!3416142))))

(assert (=> d!1750901 (= res!2353079 ((_ is Cons!62708) (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247106))))))))

(assert (=> d!1750901 (= (derivationStepZipperUp!779 (Context!9791 (t!376085 (exprs!5395 lt!2247106))) (h!69158 s!2326)) e!3416141)))

(declare-fun b!5525761 () Bool)

(assert (=> b!5525761 (= e!3416140 call!409883)))

(declare-fun b!5525762 () Bool)

(assert (=> b!5525762 (= e!3416141 ((_ map or) call!409883 (derivationStepZipperUp!779 (Context!9791 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247106)))))) (h!69158 s!2326))))))

(declare-fun b!5525763 () Bool)

(assert (=> b!5525763 (= e!3416142 (nullable!5545 (h!69156 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247106)))))))))

(assert (= (and d!1750901 res!2353079) b!5525763))

(assert (= (and d!1750901 c!966633) b!5525762))

(assert (= (and d!1750901 (not c!966633)) b!5525760))

(assert (= (and b!5525760 c!966634) b!5525761))

(assert (= (and b!5525760 (not c!966634)) b!5525759))

(assert (= (or b!5525762 b!5525761) bm!409878))

(declare-fun m!6528146 () Bool)

(assert (=> bm!409878 m!6528146))

(declare-fun m!6528148 () Bool)

(assert (=> b!5525762 m!6528148))

(declare-fun m!6528150 () Bool)

(assert (=> b!5525763 m!6528150))

(assert (=> b!5524816 d!1750901))

(declare-fun d!1750903 () Bool)

(assert (=> d!1750903 (= (isEmpty!34494 (tail!10920 (unfocusZipperList!939 zl!343))) ((_ is Nil!62708) (tail!10920 (unfocusZipperList!939 zl!343))))))

(assert (=> b!5524584 d!1750903))

(declare-fun d!1750905 () Bool)

(assert (=> d!1750905 (= (tail!10920 (unfocusZipperList!939 zl!343)) (t!376085 (unfocusZipperList!939 zl!343)))))

(assert (=> b!5524584 d!1750905))

(declare-fun d!1750907 () Bool)

(assert (=> d!1750907 (= (isEmpty!34497 (findConcatSeparation!1934 (regOne!31534 r!7292) (regTwo!31534 r!7292) Nil!62710 s!2326 s!2326)) (not ((_ is Some!15519) (findConcatSeparation!1934 (regOne!31534 r!7292) (regTwo!31534 r!7292) Nil!62710 s!2326 s!2326))))))

(assert (=> d!1750393 d!1750907))

(declare-fun bs!1275462 () Bool)

(declare-fun b!5525770 () Bool)

(assert (= bs!1275462 (and b!5525770 b!5524665)))

(declare-fun lambda!296321 () Int)

(assert (=> bs!1275462 (= (and (= (reg!15840 (regOne!31535 r!7292)) (reg!15840 r!7292)) (= (regOne!31535 r!7292) r!7292)) (= lambda!296321 lambda!296228))))

(declare-fun bs!1275463 () Bool)

(assert (= bs!1275463 (and b!5525770 b!5524067)))

(assert (=> bs!1275463 (not (= lambda!296321 lambda!296135))))

(declare-fun bs!1275464 () Bool)

(assert (= bs!1275464 (and b!5525770 d!1750391)))

(assert (=> bs!1275464 (not (= lambda!296321 lambda!296208))))

(declare-fun bs!1275465 () Bool)

(assert (= bs!1275465 (and b!5525770 d!1750397)))

(assert (=> bs!1275465 (not (= lambda!296321 lambda!296211))))

(assert (=> bs!1275464 (not (= lambda!296321 lambda!296207))))

(declare-fun bs!1275466 () Bool)

(assert (= bs!1275466 (and b!5525770 b!5524661)))

(assert (=> bs!1275466 (not (= lambda!296321 lambda!296229))))

(assert (=> bs!1275463 (not (= lambda!296321 lambda!296136))))

(assert (=> b!5525770 true))

(assert (=> b!5525770 true))

(declare-fun bs!1275467 () Bool)

(declare-fun b!5525766 () Bool)

(assert (= bs!1275467 (and b!5525766 b!5524665)))

(declare-fun lambda!296322 () Int)

(assert (=> bs!1275467 (not (= lambda!296322 lambda!296228))))

(declare-fun bs!1275468 () Bool)

(assert (= bs!1275468 (and b!5525766 b!5524067)))

(assert (=> bs!1275468 (not (= lambda!296322 lambda!296135))))

(declare-fun bs!1275469 () Bool)

(assert (= bs!1275469 (and b!5525766 d!1750391)))

(assert (=> bs!1275469 (= (and (= (regOne!31534 (regOne!31535 r!7292)) (regOne!31534 r!7292)) (= (regTwo!31534 (regOne!31535 r!7292)) (regTwo!31534 r!7292))) (= lambda!296322 lambda!296208))))

(declare-fun bs!1275470 () Bool)

(assert (= bs!1275470 (and b!5525766 d!1750397)))

(assert (=> bs!1275470 (not (= lambda!296322 lambda!296211))))

(assert (=> bs!1275469 (not (= lambda!296322 lambda!296207))))

(declare-fun bs!1275471 () Bool)

(assert (= bs!1275471 (and b!5525766 b!5524661)))

(assert (=> bs!1275471 (= (and (= (regOne!31534 (regOne!31535 r!7292)) (regOne!31534 r!7292)) (= (regTwo!31534 (regOne!31535 r!7292)) (regTwo!31534 r!7292))) (= lambda!296322 lambda!296229))))

(assert (=> bs!1275468 (= (and (= (regOne!31534 (regOne!31535 r!7292)) (regOne!31534 r!7292)) (= (regTwo!31534 (regOne!31535 r!7292)) (regTwo!31534 r!7292))) (= lambda!296322 lambda!296136))))

(declare-fun bs!1275472 () Bool)

(assert (= bs!1275472 (and b!5525766 b!5525770)))

(assert (=> bs!1275472 (not (= lambda!296322 lambda!296321))))

(assert (=> b!5525766 true))

(assert (=> b!5525766 true))

(declare-fun b!5525764 () Bool)

(declare-fun e!3416149 () Bool)

(declare-fun e!3416146 () Bool)

(assert (=> b!5525764 (= e!3416149 e!3416146)))

(declare-fun res!2353082 () Bool)

(assert (=> b!5525764 (= res!2353082 (matchRSpec!2614 (regOne!31535 (regOne!31535 r!7292)) s!2326))))

(assert (=> b!5525764 (=> res!2353082 e!3416146)))

(declare-fun bm!409879 () Bool)

(declare-fun call!409884 () Bool)

(assert (=> bm!409879 (= call!409884 (isEmpty!34498 s!2326))))

(declare-fun b!5525765 () Bool)

(declare-fun res!2353081 () Bool)

(declare-fun e!3416144 () Bool)

(assert (=> b!5525765 (=> res!2353081 e!3416144)))

(assert (=> b!5525765 (= res!2353081 call!409884)))

(declare-fun e!3416147 () Bool)

(assert (=> b!5525765 (= e!3416147 e!3416144)))

(declare-fun call!409885 () Bool)

(assert (=> b!5525766 (= e!3416147 call!409885)))

(declare-fun b!5525767 () Bool)

(assert (=> b!5525767 (= e!3416149 e!3416147)))

(declare-fun c!966636 () Bool)

(assert (=> b!5525767 (= c!966636 ((_ is Star!15511) (regOne!31535 r!7292)))))

(declare-fun b!5525768 () Bool)

(declare-fun e!3416143 () Bool)

(assert (=> b!5525768 (= e!3416143 call!409884)))

(declare-fun b!5525769 () Bool)

(declare-fun e!3416148 () Bool)

(assert (=> b!5525769 (= e!3416143 e!3416148)))

(declare-fun res!2353080 () Bool)

(assert (=> b!5525769 (= res!2353080 (not ((_ is EmptyLang!15511) (regOne!31535 r!7292))))))

(assert (=> b!5525769 (=> (not res!2353080) (not e!3416148))))

(declare-fun bm!409880 () Bool)

(assert (=> bm!409880 (= call!409885 (Exists!2611 (ite c!966636 lambda!296321 lambda!296322)))))

(assert (=> b!5525770 (= e!3416144 call!409885)))

(declare-fun b!5525771 () Bool)

(declare-fun c!966638 () Bool)

(assert (=> b!5525771 (= c!966638 ((_ is Union!15511) (regOne!31535 r!7292)))))

(declare-fun e!3416145 () Bool)

(assert (=> b!5525771 (= e!3416145 e!3416149)))

(declare-fun b!5525772 () Bool)

(assert (=> b!5525772 (= e!3416145 (= s!2326 (Cons!62710 (c!966149 (regOne!31535 r!7292)) Nil!62710)))))

(declare-fun b!5525773 () Bool)

(assert (=> b!5525773 (= e!3416146 (matchRSpec!2614 (regTwo!31535 (regOne!31535 r!7292)) s!2326))))

(declare-fun b!5525774 () Bool)

(declare-fun c!966635 () Bool)

(assert (=> b!5525774 (= c!966635 ((_ is ElementMatch!15511) (regOne!31535 r!7292)))))

(assert (=> b!5525774 (= e!3416148 e!3416145)))

(declare-fun d!1750909 () Bool)

(declare-fun c!966637 () Bool)

(assert (=> d!1750909 (= c!966637 ((_ is EmptyExpr!15511) (regOne!31535 r!7292)))))

(assert (=> d!1750909 (= (matchRSpec!2614 (regOne!31535 r!7292) s!2326) e!3416143)))

(assert (= (and d!1750909 c!966637) b!5525768))

(assert (= (and d!1750909 (not c!966637)) b!5525769))

(assert (= (and b!5525769 res!2353080) b!5525774))

(assert (= (and b!5525774 c!966635) b!5525772))

(assert (= (and b!5525774 (not c!966635)) b!5525771))

(assert (= (and b!5525771 c!966638) b!5525764))

(assert (= (and b!5525771 (not c!966638)) b!5525767))

(assert (= (and b!5525764 (not res!2353082)) b!5525773))

(assert (= (and b!5525767 c!966636) b!5525765))

(assert (= (and b!5525767 (not c!966636)) b!5525766))

(assert (= (and b!5525765 (not res!2353081)) b!5525770))

(assert (= (or b!5525770 b!5525766) bm!409880))

(assert (= (or b!5525768 b!5525765) bm!409879))

(declare-fun m!6528152 () Bool)

(assert (=> b!5525764 m!6528152))

(assert (=> bm!409879 m!6527056))

(declare-fun m!6528154 () Bool)

(assert (=> bm!409880 m!6528154))

(declare-fun m!6528156 () Bool)

(assert (=> b!5525773 m!6528156))

(assert (=> b!5524659 d!1750909))

(declare-fun d!1750911 () Bool)

(assert (=> d!1750911 (= (nullable!5545 (reg!15840 r!7292)) (nullableFct!1669 (reg!15840 r!7292)))))

(declare-fun bs!1275473 () Bool)

(assert (= bs!1275473 d!1750911))

(declare-fun m!6528158 () Bool)

(assert (=> bs!1275473 m!6528158))

(assert (=> b!5524741 d!1750911))

(assert (=> bs!1274774 d!1750449))

(declare-fun b!5525775 () Bool)

(declare-fun e!3416150 () Bool)

(declare-fun e!3416151 () Bool)

(assert (=> b!5525775 (= e!3416150 e!3416151)))

(declare-fun res!2353090 () Bool)

(assert (=> b!5525775 (=> (not res!2353090) (not e!3416151))))

(declare-fun lt!2247357 () Bool)

(assert (=> b!5525775 (= res!2353090 (not lt!2247357))))

(declare-fun b!5525776 () Bool)

(declare-fun res!2353084 () Bool)

(assert (=> b!5525776 (=> res!2353084 e!3416150)))

(declare-fun e!3416156 () Bool)

(assert (=> b!5525776 (= res!2353084 e!3416156)))

(declare-fun res!2353088 () Bool)

(assert (=> b!5525776 (=> (not res!2353088) (not e!3416156))))

(assert (=> b!5525776 (= res!2353088 lt!2247357)))

(declare-fun b!5525777 () Bool)

(declare-fun res!2353087 () Bool)

(declare-fun e!3416153 () Bool)

(assert (=> b!5525777 (=> res!2353087 e!3416153)))

(assert (=> b!5525777 (= res!2353087 (not (isEmpty!34498 (tail!10921 (tail!10921 s!2326)))))))

(declare-fun b!5525778 () Bool)

(declare-fun res!2353083 () Bool)

(assert (=> b!5525778 (=> (not res!2353083) (not e!3416156))))

(assert (=> b!5525778 (= res!2353083 (isEmpty!34498 (tail!10921 (tail!10921 s!2326))))))

(declare-fun b!5525779 () Bool)

(declare-fun res!2353086 () Bool)

(assert (=> b!5525779 (=> res!2353086 e!3416150)))

(assert (=> b!5525779 (= res!2353086 (not ((_ is ElementMatch!15511) (derivativeStep!4376 r!7292 (head!11826 s!2326)))))))

(declare-fun e!3416152 () Bool)

(assert (=> b!5525779 (= e!3416152 e!3416150)))

(declare-fun b!5525780 () Bool)

(assert (=> b!5525780 (= e!3416153 (not (= (head!11826 (tail!10921 s!2326)) (c!966149 (derivativeStep!4376 r!7292 (head!11826 s!2326))))))))

(declare-fun b!5525782 () Bool)

(declare-fun e!3416155 () Bool)

(assert (=> b!5525782 (= e!3416155 e!3416152)))

(declare-fun c!966640 () Bool)

(assert (=> b!5525782 (= c!966640 ((_ is EmptyLang!15511) (derivativeStep!4376 r!7292 (head!11826 s!2326))))))

(declare-fun b!5525783 () Bool)

(declare-fun e!3416154 () Bool)

(assert (=> b!5525783 (= e!3416154 (matchR!7696 (derivativeStep!4376 (derivativeStep!4376 r!7292 (head!11826 s!2326)) (head!11826 (tail!10921 s!2326))) (tail!10921 (tail!10921 s!2326))))))

(declare-fun bm!409881 () Bool)

(declare-fun call!409886 () Bool)

(assert (=> bm!409881 (= call!409886 (isEmpty!34498 (tail!10921 s!2326)))))

(declare-fun b!5525784 () Bool)

(assert (=> b!5525784 (= e!3416156 (= (head!11826 (tail!10921 s!2326)) (c!966149 (derivativeStep!4376 r!7292 (head!11826 s!2326)))))))

(declare-fun b!5525785 () Bool)

(assert (=> b!5525785 (= e!3416154 (nullable!5545 (derivativeStep!4376 r!7292 (head!11826 s!2326))))))

(declare-fun b!5525786 () Bool)

(assert (=> b!5525786 (= e!3416155 (= lt!2247357 call!409886))))

(declare-fun b!5525787 () Bool)

(assert (=> b!5525787 (= e!3416151 e!3416153)))

(declare-fun res!2353089 () Bool)

(assert (=> b!5525787 (=> res!2353089 e!3416153)))

(assert (=> b!5525787 (= res!2353089 call!409886)))

(declare-fun b!5525788 () Bool)

(assert (=> b!5525788 (= e!3416152 (not lt!2247357))))

(declare-fun d!1750913 () Bool)

(assert (=> d!1750913 e!3416155))

(declare-fun c!966641 () Bool)

(assert (=> d!1750913 (= c!966641 ((_ is EmptyExpr!15511) (derivativeStep!4376 r!7292 (head!11826 s!2326))))))

(assert (=> d!1750913 (= lt!2247357 e!3416154)))

(declare-fun c!966639 () Bool)

(assert (=> d!1750913 (= c!966639 (isEmpty!34498 (tail!10921 s!2326)))))

(assert (=> d!1750913 (validRegex!7247 (derivativeStep!4376 r!7292 (head!11826 s!2326)))))

(assert (=> d!1750913 (= (matchR!7696 (derivativeStep!4376 r!7292 (head!11826 s!2326)) (tail!10921 s!2326)) lt!2247357)))

(declare-fun b!5525781 () Bool)

(declare-fun res!2353085 () Bool)

(assert (=> b!5525781 (=> (not res!2353085) (not e!3416156))))

(assert (=> b!5525781 (= res!2353085 (not call!409886))))

(assert (= (and d!1750913 c!966639) b!5525785))

(assert (= (and d!1750913 (not c!966639)) b!5525783))

(assert (= (and d!1750913 c!966641) b!5525786))

(assert (= (and d!1750913 (not c!966641)) b!5525782))

(assert (= (and b!5525782 c!966640) b!5525788))

(assert (= (and b!5525782 (not c!966640)) b!5525779))

(assert (= (and b!5525779 (not res!2353086)) b!5525776))

(assert (= (and b!5525776 res!2353088) b!5525781))

(assert (= (and b!5525781 res!2353085) b!5525778))

(assert (= (and b!5525778 res!2353083) b!5525784))

(assert (= (and b!5525776 (not res!2353084)) b!5525775))

(assert (= (and b!5525775 res!2353090) b!5525787))

(assert (= (and b!5525787 (not res!2353089)) b!5525777))

(assert (= (and b!5525777 (not res!2353087)) b!5525780))

(assert (= (or b!5525786 b!5525781 b!5525787) bm!409881))

(assert (=> b!5525784 m!6527064))

(assert (=> b!5525784 m!6528088))

(assert (=> d!1750913 m!6527064))

(assert (=> d!1750913 m!6527066))

(assert (=> d!1750913 m!6527070))

(declare-fun m!6528160 () Bool)

(assert (=> d!1750913 m!6528160))

(assert (=> b!5525780 m!6527064))

(assert (=> b!5525780 m!6528088))

(assert (=> b!5525777 m!6527064))

(assert (=> b!5525777 m!6528092))

(assert (=> b!5525777 m!6528092))

(declare-fun m!6528162 () Bool)

(assert (=> b!5525777 m!6528162))

(assert (=> b!5525778 m!6527064))

(assert (=> b!5525778 m!6528092))

(assert (=> b!5525778 m!6528092))

(assert (=> b!5525778 m!6528162))

(assert (=> b!5525785 m!6527070))

(declare-fun m!6528164 () Bool)

(assert (=> b!5525785 m!6528164))

(assert (=> bm!409881 m!6527064))

(assert (=> bm!409881 m!6527066))

(assert (=> b!5525783 m!6527064))

(assert (=> b!5525783 m!6528088))

(assert (=> b!5525783 m!6527070))

(assert (=> b!5525783 m!6528088))

(declare-fun m!6528166 () Bool)

(assert (=> b!5525783 m!6528166))

(assert (=> b!5525783 m!6527064))

(assert (=> b!5525783 m!6528092))

(assert (=> b!5525783 m!6528166))

(assert (=> b!5525783 m!6528092))

(declare-fun m!6528168 () Bool)

(assert (=> b!5525783 m!6528168))

(assert (=> b!5524706 d!1750913))

(declare-fun b!5525809 () Bool)

(declare-fun e!3416168 () Regex!15511)

(assert (=> b!5525809 (= e!3416168 EmptyLang!15511)))

(declare-fun bm!409890 () Bool)

(declare-fun call!409895 () Regex!15511)

(declare-fun call!409896 () Regex!15511)

(assert (=> bm!409890 (= call!409895 call!409896)))

(declare-fun c!966656 () Bool)

(declare-fun c!966654 () Bool)

(declare-fun bm!409891 () Bool)

(declare-fun c!966655 () Bool)

(assert (=> bm!409891 (= call!409896 (derivativeStep!4376 (ite c!966655 (regOne!31535 r!7292) (ite c!966654 (reg!15840 r!7292) (ite c!966656 (regTwo!31534 r!7292) (regOne!31534 r!7292)))) (head!11826 s!2326)))))

(declare-fun b!5525811 () Bool)

(declare-fun e!3416171 () Regex!15511)

(assert (=> b!5525811 (= e!3416171 (ite (= (head!11826 s!2326) (c!966149 r!7292)) EmptyExpr!15511 EmptyLang!15511))))

(declare-fun b!5525812 () Bool)

(declare-fun e!3416170 () Regex!15511)

(declare-fun e!3416167 () Regex!15511)

(assert (=> b!5525812 (= e!3416170 e!3416167)))

(assert (=> b!5525812 (= c!966654 ((_ is Star!15511) r!7292))))

(declare-fun b!5525813 () Bool)

(assert (=> b!5525813 (= c!966656 (nullable!5545 (regOne!31534 r!7292)))))

(declare-fun e!3416169 () Regex!15511)

(assert (=> b!5525813 (= e!3416167 e!3416169)))

(declare-fun bm!409892 () Bool)

(declare-fun call!409898 () Regex!15511)

(assert (=> bm!409892 (= call!409898 call!409895)))

(declare-fun b!5525814 () Bool)

(declare-fun call!409897 () Regex!15511)

(assert (=> b!5525814 (= e!3416170 (Union!15511 call!409896 call!409897))))

(declare-fun bm!409893 () Bool)

(assert (=> bm!409893 (= call!409897 (derivativeStep!4376 (ite c!966655 (regTwo!31535 r!7292) (regOne!31534 r!7292)) (head!11826 s!2326)))))

(declare-fun b!5525815 () Bool)

(assert (=> b!5525815 (= e!3416169 (Union!15511 (Concat!24356 call!409897 (regTwo!31534 r!7292)) call!409898))))

(declare-fun b!5525816 () Bool)

(assert (=> b!5525816 (= e!3416168 e!3416171)))

(declare-fun c!966653 () Bool)

(assert (=> b!5525816 (= c!966653 ((_ is ElementMatch!15511) r!7292))))

(declare-fun b!5525810 () Bool)

(assert (=> b!5525810 (= e!3416167 (Concat!24356 call!409895 r!7292))))

(declare-fun d!1750915 () Bool)

(declare-fun lt!2247360 () Regex!15511)

(assert (=> d!1750915 (validRegex!7247 lt!2247360)))

(assert (=> d!1750915 (= lt!2247360 e!3416168)))

(declare-fun c!966652 () Bool)

(assert (=> d!1750915 (= c!966652 (or ((_ is EmptyExpr!15511) r!7292) ((_ is EmptyLang!15511) r!7292)))))

(assert (=> d!1750915 (validRegex!7247 r!7292)))

(assert (=> d!1750915 (= (derivativeStep!4376 r!7292 (head!11826 s!2326)) lt!2247360)))

(declare-fun b!5525817 () Bool)

(assert (=> b!5525817 (= e!3416169 (Union!15511 (Concat!24356 call!409898 (regTwo!31534 r!7292)) EmptyLang!15511))))

(declare-fun b!5525818 () Bool)

(assert (=> b!5525818 (= c!966655 ((_ is Union!15511) r!7292))))

(assert (=> b!5525818 (= e!3416171 e!3416170)))

(assert (= (and d!1750915 c!966652) b!5525809))

(assert (= (and d!1750915 (not c!966652)) b!5525816))

(assert (= (and b!5525816 c!966653) b!5525811))

(assert (= (and b!5525816 (not c!966653)) b!5525818))

(assert (= (and b!5525818 c!966655) b!5525814))

(assert (= (and b!5525818 (not c!966655)) b!5525812))

(assert (= (and b!5525812 c!966654) b!5525810))

(assert (= (and b!5525812 (not c!966654)) b!5525813))

(assert (= (and b!5525813 c!966656) b!5525815))

(assert (= (and b!5525813 (not c!966656)) b!5525817))

(assert (= (or b!5525815 b!5525817) bm!409892))

(assert (= (or b!5525810 bm!409892) bm!409890))

(assert (= (or b!5525814 b!5525815) bm!409893))

(assert (= (or b!5525814 bm!409890) bm!409891))

(assert (=> bm!409891 m!6527062))

(declare-fun m!6528170 () Bool)

(assert (=> bm!409891 m!6528170))

(assert (=> b!5525813 m!6526520))

(assert (=> bm!409893 m!6527062))

(declare-fun m!6528172 () Bool)

(assert (=> bm!409893 m!6528172))

(declare-fun m!6528174 () Bool)

(assert (=> d!1750915 m!6528174))

(assert (=> d!1750915 m!6526590))

(assert (=> b!5524706 d!1750915))

(assert (=> b!5524706 d!1750877))

(assert (=> b!5524706 d!1750781))

(declare-fun d!1750917 () Bool)

(assert (=> d!1750917 (= (flatMap!1124 z!1189 lambda!296233) (choose!41974 z!1189 lambda!296233))))

(declare-fun bs!1275474 () Bool)

(assert (= bs!1275474 d!1750917))

(declare-fun m!6528176 () Bool)

(assert (=> bs!1275474 m!6528176))

(assert (=> d!1750455 d!1750917))

(assert (=> b!5524589 d!1750413))

(declare-fun bs!1275475 () Bool)

(declare-fun d!1750919 () Bool)

(assert (= bs!1275475 (and d!1750919 b!5524842)))

(declare-fun lambda!296323 () Int)

(assert (=> bs!1275475 (not (= lambda!296323 lambda!296242))))

(declare-fun bs!1275476 () Bool)

(assert (= bs!1275476 (and d!1750919 d!1750407)))

(assert (=> bs!1275476 (= lambda!296323 lambda!296214)))

(declare-fun bs!1275477 () Bool)

(assert (= bs!1275477 (and d!1750919 d!1750415)))

(assert (=> bs!1275477 (= lambda!296323 lambda!296223)))

(declare-fun bs!1275478 () Bool)

(assert (= bs!1275478 (and d!1750919 d!1750413)))

(assert (=> bs!1275478 (= lambda!296323 lambda!296220)))

(declare-fun bs!1275479 () Bool)

(assert (= bs!1275479 (and d!1750919 d!1750809)))

(assert (=> bs!1275479 (not (= lambda!296323 lambda!296306))))

(declare-fun bs!1275480 () Bool)

(assert (= bs!1275480 (and d!1750919 d!1750475)))

(assert (=> bs!1275480 (= lambda!296323 lambda!296235)))

(declare-fun bs!1275481 () Bool)

(assert (= bs!1275481 (and d!1750919 b!5525747)))

(assert (=> bs!1275481 (not (= lambda!296323 lambda!296316))))

(declare-fun bs!1275482 () Bool)

(assert (= bs!1275482 (and d!1750919 b!5525661)))

(assert (=> bs!1275482 (not (= lambda!296323 lambda!296308))))

(declare-fun bs!1275483 () Bool)

(assert (= bs!1275483 (and d!1750919 d!1750409)))

(assert (=> bs!1275483 (= lambda!296323 lambda!296217)))

(declare-fun bs!1275484 () Bool)

(assert (= bs!1275484 (and d!1750919 d!1750783)))

(assert (=> bs!1275484 (= lambda!296323 lambda!296300)))

(declare-fun bs!1275485 () Bool)

(assert (= bs!1275485 (and d!1750919 b!5524839)))

(assert (=> bs!1275485 (not (= lambda!296323 lambda!296241))))

(declare-fun bs!1275486 () Bool)

(assert (= bs!1275486 (and d!1750919 b!5525659)))

(assert (=> bs!1275486 (not (= lambda!296323 lambda!296307))))

(declare-fun bs!1275487 () Bool)

(assert (= bs!1275487 (and d!1750919 b!5524844)))

(assert (=> bs!1275487 (not (= lambda!296323 lambda!296243))))

(declare-fun bs!1275488 () Bool)

(assert (= bs!1275488 (and d!1750919 b!5525745)))

(assert (=> bs!1275488 (not (= lambda!296323 lambda!296315))))

(declare-fun bs!1275489 () Bool)

(assert (= bs!1275489 (and d!1750919 b!5524837)))

(assert (=> bs!1275489 (not (= lambda!296323 lambda!296240))))

(declare-fun bs!1275490 () Bool)

(assert (= bs!1275490 (and d!1750919 d!1750855)))

(assert (=> bs!1275490 (= lambda!296323 lambda!296310)))

(declare-fun lt!2247361 () List!62832)

(assert (=> d!1750919 (forall!14687 lt!2247361 lambda!296323)))

(declare-fun e!3416172 () List!62832)

(assert (=> d!1750919 (= lt!2247361 e!3416172)))

(declare-fun c!966657 () Bool)

(assert (=> d!1750919 (= c!966657 ((_ is Cons!62709) (t!376086 zl!343)))))

(assert (=> d!1750919 (= (unfocusZipperList!939 (t!376086 zl!343)) lt!2247361)))

(declare-fun b!5525819 () Bool)

(assert (=> b!5525819 (= e!3416172 (Cons!62708 (generalisedConcat!1126 (exprs!5395 (h!69157 (t!376086 zl!343)))) (unfocusZipperList!939 (t!376086 (t!376086 zl!343)))))))

(declare-fun b!5525820 () Bool)

(assert (=> b!5525820 (= e!3416172 Nil!62708)))

(assert (= (and d!1750919 c!966657) b!5525819))

(assert (= (and d!1750919 (not c!966657)) b!5525820))

(declare-fun m!6528178 () Bool)

(assert (=> d!1750919 m!6528178))

(declare-fun m!6528180 () Bool)

(assert (=> b!5525819 m!6528180))

(declare-fun m!6528182 () Bool)

(assert (=> b!5525819 m!6528182))

(assert (=> b!5524589 d!1750919))

(declare-fun b!5525821 () Bool)

(declare-fun e!3416179 () Bool)

(declare-fun e!3416177 () Bool)

(assert (=> b!5525821 (= e!3416179 e!3416177)))

(declare-fun res!2353091 () Bool)

(assert (=> b!5525821 (=> (not res!2353091) (not e!3416177))))

(declare-fun call!409900 () Bool)

(assert (=> b!5525821 (= res!2353091 call!409900)))

(declare-fun b!5525823 () Bool)

(declare-fun call!409899 () Bool)

(assert (=> b!5525823 (= e!3416177 call!409899)))

(declare-fun bm!409894 () Bool)

(declare-fun call!409901 () Bool)

(assert (=> bm!409894 (= call!409899 call!409901)))

(declare-fun b!5525824 () Bool)

(declare-fun e!3416176 () Bool)

(declare-fun e!3416178 () Bool)

(assert (=> b!5525824 (= e!3416176 e!3416178)))

(declare-fun c!966658 () Bool)

(assert (=> b!5525824 (= c!966658 ((_ is Star!15511) lt!2247249))))

(declare-fun bm!409895 () Bool)

(declare-fun c!966659 () Bool)

(assert (=> bm!409895 (= call!409900 (validRegex!7247 (ite c!966659 (regOne!31535 lt!2247249) (regOne!31534 lt!2247249))))))

(declare-fun b!5525825 () Bool)

(declare-fun res!2353092 () Bool)

(declare-fun e!3416173 () Bool)

(assert (=> b!5525825 (=> (not res!2353092) (not e!3416173))))

(assert (=> b!5525825 (= res!2353092 call!409900)))

(declare-fun e!3416175 () Bool)

(assert (=> b!5525825 (= e!3416175 e!3416173)))

(declare-fun b!5525826 () Bool)

(declare-fun e!3416174 () Bool)

(assert (=> b!5525826 (= e!3416178 e!3416174)))

(declare-fun res!2353093 () Bool)

(assert (=> b!5525826 (= res!2353093 (not (nullable!5545 (reg!15840 lt!2247249))))))

(assert (=> b!5525826 (=> (not res!2353093) (not e!3416174))))

(declare-fun d!1750921 () Bool)

(declare-fun res!2353095 () Bool)

(assert (=> d!1750921 (=> res!2353095 e!3416176)))

(assert (=> d!1750921 (= res!2353095 ((_ is ElementMatch!15511) lt!2247249))))

(assert (=> d!1750921 (= (validRegex!7247 lt!2247249) e!3416176)))

(declare-fun b!5525822 () Bool)

(declare-fun res!2353094 () Bool)

(assert (=> b!5525822 (=> res!2353094 e!3416179)))

(assert (=> b!5525822 (= res!2353094 (not ((_ is Concat!24356) lt!2247249)))))

(assert (=> b!5525822 (= e!3416175 e!3416179)))

(declare-fun bm!409896 () Bool)

(assert (=> bm!409896 (= call!409901 (validRegex!7247 (ite c!966658 (reg!15840 lt!2247249) (ite c!966659 (regTwo!31535 lt!2247249) (regTwo!31534 lt!2247249)))))))

(declare-fun b!5525827 () Bool)

(assert (=> b!5525827 (= e!3416174 call!409901)))

(declare-fun b!5525828 () Bool)

(assert (=> b!5525828 (= e!3416173 call!409899)))

(declare-fun b!5525829 () Bool)

(assert (=> b!5525829 (= e!3416178 e!3416175)))

(assert (=> b!5525829 (= c!966659 ((_ is Union!15511) lt!2247249))))

(assert (= (and d!1750921 (not res!2353095)) b!5525824))

(assert (= (and b!5525824 c!966658) b!5525826))

(assert (= (and b!5525824 (not c!966658)) b!5525829))

(assert (= (and b!5525826 res!2353093) b!5525827))

(assert (= (and b!5525829 c!966659) b!5525825))

(assert (= (and b!5525829 (not c!966659)) b!5525822))

(assert (= (and b!5525825 res!2353092) b!5525828))

(assert (= (and b!5525822 (not res!2353094)) b!5525821))

(assert (= (and b!5525821 res!2353091) b!5525823))

(assert (= (or b!5525828 b!5525823) bm!409894))

(assert (= (or b!5525825 b!5525821) bm!409895))

(assert (= (or b!5525827 bm!409894) bm!409896))

(declare-fun m!6528184 () Bool)

(assert (=> bm!409895 m!6528184))

(declare-fun m!6528186 () Bool)

(assert (=> b!5525826 m!6528186))

(declare-fun m!6528188 () Bool)

(assert (=> bm!409896 m!6528188))

(assert (=> d!1750473 d!1750921))

(assert (=> d!1750473 d!1750407))

(assert (=> d!1750473 d!1750409))

(declare-fun d!1750923 () Bool)

(assert (=> d!1750923 (= (isEmpty!34498 s!2326) ((_ is Nil!62710) s!2326))))

(assert (=> d!1750465 d!1750923))

(declare-fun d!1750925 () Bool)

(assert (=> d!1750925 true))

(assert (=> d!1750925 true))

(declare-fun res!2353098 () Bool)

(assert (=> d!1750925 (= (choose!41971 lambda!296135) res!2353098)))

(assert (=> d!1750395 d!1750925))

(declare-fun bs!1275491 () Bool)

(declare-fun d!1750927 () Bool)

(assert (= bs!1275491 (and d!1750927 b!5524495)))

(declare-fun lambda!296326 () Int)

(assert (=> bs!1275491 (not (= lambda!296326 lambda!296199))))

(declare-fun bs!1275492 () Bool)

(assert (= bs!1275492 (and d!1750927 b!5524498)))

(assert (=> bs!1275492 (not (= lambda!296326 lambda!296201))))

(declare-fun bs!1275493 () Bool)

(assert (= bs!1275493 (and d!1750927 d!1750881)))

(assert (=> bs!1275493 (not (= lambda!296326 lambda!296314))))

(declare-fun bs!1275494 () Bool)

(assert (= bs!1275494 (and d!1750927 b!5524493)))

(assert (=> bs!1275494 (not (= lambda!296326 lambda!296198))))

(declare-fun bs!1275495 () Bool)

(assert (= bs!1275495 (and d!1750927 b!5524500)))

(assert (=> bs!1275495 (not (= lambda!296326 lambda!296202))))

(declare-fun bs!1275496 () Bool)

(assert (= bs!1275496 (and d!1750927 b!5525754)))

(assert (=> bs!1275496 (not (= lambda!296326 lambda!296318))))

(declare-fun bs!1275497 () Bool)

(assert (= bs!1275497 (and d!1750927 b!5525756)))

(assert (=> bs!1275497 (not (= lambda!296326 lambda!296319))))

(declare-fun exists!2145 ((InoxSet Context!9790) Int) Bool)

(assert (=> d!1750927 (= (nullableZipper!1537 lt!2247095) (exists!2145 lt!2247095 lambda!296326))))

(declare-fun bs!1275498 () Bool)

(assert (= bs!1275498 d!1750927))

(declare-fun m!6528190 () Bool)

(assert (=> bs!1275498 m!6528190))

(assert (=> b!5524595 d!1750927))

(declare-fun bs!1275499 () Bool)

(declare-fun d!1750929 () Bool)

(assert (= bs!1275499 (and d!1750929 b!5524842)))

(declare-fun lambda!296327 () Int)

(assert (=> bs!1275499 (not (= lambda!296327 lambda!296242))))

(declare-fun bs!1275500 () Bool)

(assert (= bs!1275500 (and d!1750929 d!1750407)))

(assert (=> bs!1275500 (= lambda!296327 lambda!296214)))

(declare-fun bs!1275501 () Bool)

(assert (= bs!1275501 (and d!1750929 d!1750415)))

(assert (=> bs!1275501 (= lambda!296327 lambda!296223)))

(declare-fun bs!1275502 () Bool)

(assert (= bs!1275502 (and d!1750929 d!1750413)))

(assert (=> bs!1275502 (= lambda!296327 lambda!296220)))

(declare-fun bs!1275503 () Bool)

(assert (= bs!1275503 (and d!1750929 d!1750809)))

(assert (=> bs!1275503 (not (= lambda!296327 lambda!296306))))

(declare-fun bs!1275504 () Bool)

(assert (= bs!1275504 (and d!1750929 d!1750475)))

(assert (=> bs!1275504 (= lambda!296327 lambda!296235)))

(declare-fun bs!1275505 () Bool)

(assert (= bs!1275505 (and d!1750929 b!5525747)))

(assert (=> bs!1275505 (not (= lambda!296327 lambda!296316))))

(declare-fun bs!1275506 () Bool)

(assert (= bs!1275506 (and d!1750929 b!5525661)))

(assert (=> bs!1275506 (not (= lambda!296327 lambda!296308))))

(declare-fun bs!1275507 () Bool)

(assert (= bs!1275507 (and d!1750929 d!1750783)))

(assert (=> bs!1275507 (= lambda!296327 lambda!296300)))

(declare-fun bs!1275508 () Bool)

(assert (= bs!1275508 (and d!1750929 b!5524839)))

(assert (=> bs!1275508 (not (= lambda!296327 lambda!296241))))

(declare-fun bs!1275509 () Bool)

(assert (= bs!1275509 (and d!1750929 b!5525659)))

(assert (=> bs!1275509 (not (= lambda!296327 lambda!296307))))

(declare-fun bs!1275510 () Bool)

(assert (= bs!1275510 (and d!1750929 b!5524844)))

(assert (=> bs!1275510 (not (= lambda!296327 lambda!296243))))

(declare-fun bs!1275511 () Bool)

(assert (= bs!1275511 (and d!1750929 b!5525745)))

(assert (=> bs!1275511 (not (= lambda!296327 lambda!296315))))

(declare-fun bs!1275512 () Bool)

(assert (= bs!1275512 (and d!1750929 d!1750919)))

(assert (=> bs!1275512 (= lambda!296327 lambda!296323)))

(declare-fun bs!1275513 () Bool)

(assert (= bs!1275513 (and d!1750929 d!1750409)))

(assert (=> bs!1275513 (= lambda!296327 lambda!296217)))

(declare-fun bs!1275514 () Bool)

(assert (= bs!1275514 (and d!1750929 b!5524837)))

(assert (=> bs!1275514 (not (= lambda!296327 lambda!296240))))

(declare-fun bs!1275515 () Bool)

(assert (= bs!1275515 (and d!1750929 d!1750855)))

(assert (=> bs!1275515 (= lambda!296327 lambda!296310)))

(declare-fun b!5525831 () Bool)

(declare-fun e!3416181 () Bool)

(declare-fun lt!2247362 () Regex!15511)

(assert (=> b!5525831 (= e!3416181 (isEmptyExpr!1083 lt!2247362))))

(declare-fun b!5525832 () Bool)

(declare-fun e!3416185 () Regex!15511)

(assert (=> b!5525832 (= e!3416185 (Concat!24356 (h!69156 (t!376085 (exprs!5395 (h!69157 zl!343)))) (generalisedConcat!1126 (t!376085 (t!376085 (exprs!5395 (h!69157 zl!343)))))))))

(declare-fun b!5525833 () Bool)

(declare-fun e!3416182 () Bool)

(assert (=> b!5525833 (= e!3416182 (= lt!2247362 (head!11825 (t!376085 (exprs!5395 (h!69157 zl!343))))))))

(declare-fun b!5525834 () Bool)

(assert (=> b!5525834 (= e!3416182 (isConcat!606 lt!2247362))))

(declare-fun b!5525835 () Bool)

(declare-fun e!3416183 () Bool)

(assert (=> b!5525835 (= e!3416183 e!3416181)))

(declare-fun c!966663 () Bool)

(assert (=> b!5525835 (= c!966663 (isEmpty!34494 (t!376085 (exprs!5395 (h!69157 zl!343)))))))

(declare-fun b!5525836 () Bool)

(declare-fun e!3416184 () Regex!15511)

(assert (=> b!5525836 (= e!3416184 e!3416185)))

(declare-fun c!966665 () Bool)

(assert (=> b!5525836 (= c!966665 ((_ is Cons!62708) (t!376085 (exprs!5395 (h!69157 zl!343)))))))

(declare-fun b!5525837 () Bool)

(assert (=> b!5525837 (= e!3416184 (h!69156 (t!376085 (exprs!5395 (h!69157 zl!343)))))))

(declare-fun b!5525838 () Bool)

(declare-fun e!3416180 () Bool)

(assert (=> b!5525838 (= e!3416180 (isEmpty!34494 (t!376085 (t!376085 (exprs!5395 (h!69157 zl!343))))))))

(declare-fun b!5525839 () Bool)

(assert (=> b!5525839 (= e!3416181 e!3416182)))

(declare-fun c!966662 () Bool)

(assert (=> b!5525839 (= c!966662 (isEmpty!34494 (tail!10920 (t!376085 (exprs!5395 (h!69157 zl!343))))))))

(declare-fun b!5525830 () Bool)

(assert (=> b!5525830 (= e!3416185 EmptyExpr!15511)))

(assert (=> d!1750929 e!3416183))

(declare-fun res!2353099 () Bool)

(assert (=> d!1750929 (=> (not res!2353099) (not e!3416183))))

(assert (=> d!1750929 (= res!2353099 (validRegex!7247 lt!2247362))))

(assert (=> d!1750929 (= lt!2247362 e!3416184)))

(declare-fun c!966664 () Bool)

(assert (=> d!1750929 (= c!966664 e!3416180)))

(declare-fun res!2353100 () Bool)

(assert (=> d!1750929 (=> (not res!2353100) (not e!3416180))))

(assert (=> d!1750929 (= res!2353100 ((_ is Cons!62708) (t!376085 (exprs!5395 (h!69157 zl!343)))))))

(assert (=> d!1750929 (forall!14687 (t!376085 (exprs!5395 (h!69157 zl!343))) lambda!296327)))

(assert (=> d!1750929 (= (generalisedConcat!1126 (t!376085 (exprs!5395 (h!69157 zl!343)))) lt!2247362)))

(assert (= (and d!1750929 res!2353100) b!5525838))

(assert (= (and d!1750929 c!966664) b!5525837))

(assert (= (and d!1750929 (not c!966664)) b!5525836))

(assert (= (and b!5525836 c!966665) b!5525832))

(assert (= (and b!5525836 (not c!966665)) b!5525830))

(assert (= (and d!1750929 res!2353099) b!5525835))

(assert (= (and b!5525835 c!966663) b!5525831))

(assert (= (and b!5525835 (not c!966663)) b!5525839))

(assert (= (and b!5525839 c!966662) b!5525833))

(assert (= (and b!5525839 (not c!966662)) b!5525834))

(declare-fun m!6528192 () Bool)

(assert (=> b!5525838 m!6528192))

(declare-fun m!6528194 () Bool)

(assert (=> b!5525833 m!6528194))

(declare-fun m!6528196 () Bool)

(assert (=> d!1750929 m!6528196))

(declare-fun m!6528198 () Bool)

(assert (=> d!1750929 m!6528198))

(declare-fun m!6528200 () Bool)

(assert (=> b!5525839 m!6528200))

(assert (=> b!5525839 m!6528200))

(declare-fun m!6528202 () Bool)

(assert (=> b!5525839 m!6528202))

(declare-fun m!6528204 () Bool)

(assert (=> b!5525831 m!6528204))

(declare-fun m!6528206 () Bool)

(assert (=> b!5525834 m!6528206))

(declare-fun m!6528208 () Bool)

(assert (=> b!5525832 m!6528208))

(assert (=> b!5525835 m!6526556))

(assert (=> b!5524619 d!1750929))

(assert (=> b!5524807 d!1750439))

(declare-fun bs!1275516 () Bool)

(declare-fun d!1750931 () Bool)

(assert (= bs!1275516 (and d!1750931 b!5524498)))

(declare-fun lambda!296328 () Int)

(assert (=> bs!1275516 (not (= lambda!296328 lambda!296201))))

(declare-fun bs!1275517 () Bool)

(assert (= bs!1275517 (and d!1750931 d!1750881)))

(assert (=> bs!1275517 (not (= lambda!296328 lambda!296314))))

(declare-fun bs!1275518 () Bool)

(assert (= bs!1275518 (and d!1750931 b!5524493)))

(assert (=> bs!1275518 (not (= lambda!296328 lambda!296198))))

(declare-fun bs!1275519 () Bool)

(assert (= bs!1275519 (and d!1750931 b!5524500)))

(assert (=> bs!1275519 (not (= lambda!296328 lambda!296202))))

(declare-fun bs!1275520 () Bool)

(assert (= bs!1275520 (and d!1750931 b!5524495)))

(assert (=> bs!1275520 (not (= lambda!296328 lambda!296199))))

(declare-fun bs!1275521 () Bool)

(assert (= bs!1275521 (and d!1750931 d!1750927)))

(assert (=> bs!1275521 (= lambda!296328 lambda!296326)))

(declare-fun bs!1275522 () Bool)

(assert (= bs!1275522 (and d!1750931 b!5525754)))

(assert (=> bs!1275522 (not (= lambda!296328 lambda!296318))))

(declare-fun bs!1275523 () Bool)

(assert (= bs!1275523 (and d!1750931 b!5525756)))

(assert (=> bs!1275523 (not (= lambda!296328 lambda!296319))))

(assert (=> d!1750931 (= (nullableZipper!1537 (derivationStepZipper!1616 lt!2247109 (h!69158 s!2326))) (exists!2145 (derivationStepZipper!1616 lt!2247109 (h!69158 s!2326)) lambda!296328))))

(declare-fun bs!1275524 () Bool)

(assert (= bs!1275524 d!1750931))

(assert (=> bs!1275524 m!6526594))

(declare-fun m!6528210 () Bool)

(assert (=> bs!1275524 m!6528210))

(assert (=> b!5524714 d!1750931))

(declare-fun b!5525840 () Bool)

(declare-fun e!3416187 () (InoxSet Context!9790))

(assert (=> b!5525840 (= e!3416187 (store ((as const (Array Context!9790 Bool)) false) (ite (or c!966375 c!966372) lt!2247103 (Context!9791 call!409692)) true))))

(declare-fun c!966666 () Bool)

(declare-fun call!409905 () (InoxSet Context!9790))

(declare-fun call!409903 () List!62832)

(declare-fun c!966668 () Bool)

(declare-fun bm!409897 () Bool)

(declare-fun c!966669 () Bool)

(assert (=> bm!409897 (= call!409905 (derivationStepZipperDown!853 (ite c!966669 (regTwo!31535 (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292)))))) (ite c!966666 (regTwo!31534 (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292)))))) (ite c!966668 (regOne!31534 (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292)))))) (reg!15840 (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292))))))))) (ite (or c!966669 c!966666) (ite (or c!966375 c!966372) lt!2247103 (Context!9791 call!409692)) (Context!9791 call!409903)) (h!69158 s!2326)))))

(declare-fun bm!409898 () Bool)

(declare-fun call!409902 () List!62832)

(assert (=> bm!409898 (= call!409903 call!409902)))

(declare-fun c!966667 () Bool)

(declare-fun b!5525841 () Bool)

(assert (=> b!5525841 (= c!966667 ((_ is Star!15511) (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292)))))))))

(declare-fun e!3416191 () (InoxSet Context!9790))

(declare-fun e!3416186 () (InoxSet Context!9790))

(assert (=> b!5525841 (= e!3416191 e!3416186)))

(declare-fun d!1750933 () Bool)

(declare-fun c!966670 () Bool)

(assert (=> d!1750933 (= c!966670 (and ((_ is ElementMatch!15511) (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292)))))) (= (c!966149 (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292)))))) (h!69158 s!2326))))))

(assert (=> d!1750933 (= (derivationStepZipperDown!853 (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292))))) (ite (or c!966375 c!966372) lt!2247103 (Context!9791 call!409692)) (h!69158 s!2326)) e!3416187)))

(declare-fun b!5525842 () Bool)

(declare-fun e!3416188 () (InoxSet Context!9790))

(declare-fun call!409907 () (InoxSet Context!9790))

(declare-fun call!409906 () (InoxSet Context!9790))

(assert (=> b!5525842 (= e!3416188 ((_ map or) call!409907 call!409906))))

(declare-fun b!5525843 () Bool)

(declare-fun call!409904 () (InoxSet Context!9790))

(assert (=> b!5525843 (= e!3416186 call!409904)))

(declare-fun b!5525844 () Bool)

(assert (=> b!5525844 (= e!3416191 call!409904)))

(declare-fun bm!409899 () Bool)

(assert (=> bm!409899 (= call!409904 call!409906)))

(declare-fun b!5525845 () Bool)

(declare-fun e!3416189 () Bool)

(assert (=> b!5525845 (= e!3416189 (nullable!5545 (regOne!31534 (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292))))))))))

(declare-fun bm!409900 () Bool)

(assert (=> bm!409900 (= call!409902 ($colon$colon!1590 (exprs!5395 (ite (or c!966375 c!966372) lt!2247103 (Context!9791 call!409692))) (ite (or c!966666 c!966668) (regTwo!31534 (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292)))))) (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292))))))))))

(declare-fun bm!409901 () Bool)

(assert (=> bm!409901 (= call!409906 call!409905)))

(declare-fun b!5525846 () Bool)

(declare-fun e!3416190 () (InoxSet Context!9790))

(assert (=> b!5525846 (= e!3416187 e!3416190)))

(assert (=> b!5525846 (= c!966669 ((_ is Union!15511) (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292)))))))))

(declare-fun bm!409902 () Bool)

(assert (=> bm!409902 (= call!409907 (derivationStepZipperDown!853 (ite c!966669 (regOne!31535 (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292)))))) (regOne!31534 (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292))))))) (ite c!966669 (ite (or c!966375 c!966372) lt!2247103 (Context!9791 call!409692)) (Context!9791 call!409902)) (h!69158 s!2326)))))

(declare-fun b!5525847 () Bool)

(assert (=> b!5525847 (= e!3416190 ((_ map or) call!409907 call!409905))))

(declare-fun b!5525848 () Bool)

(assert (=> b!5525848 (= e!3416188 e!3416191)))

(assert (=> b!5525848 (= c!966668 ((_ is Concat!24356) (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292)))))))))

(declare-fun b!5525849 () Bool)

(assert (=> b!5525849 (= c!966666 e!3416189)))

(declare-fun res!2353101 () Bool)

(assert (=> b!5525849 (=> (not res!2353101) (not e!3416189))))

(assert (=> b!5525849 (= res!2353101 ((_ is Concat!24356) (ite c!966375 (regTwo!31535 (regOne!31534 r!7292)) (ite c!966372 (regTwo!31534 (regOne!31534 r!7292)) (ite c!966374 (regOne!31534 (regOne!31534 r!7292)) (reg!15840 (regOne!31534 r!7292)))))))))

(assert (=> b!5525849 (= e!3416190 e!3416188)))

(declare-fun b!5525850 () Bool)

(assert (=> b!5525850 (= e!3416186 ((as const (Array Context!9790 Bool)) false))))

(assert (= (and d!1750933 c!966670) b!5525840))

(assert (= (and d!1750933 (not c!966670)) b!5525846))

(assert (= (and b!5525846 c!966669) b!5525847))

(assert (= (and b!5525846 (not c!966669)) b!5525849))

(assert (= (and b!5525849 res!2353101) b!5525845))

(assert (= (and b!5525849 c!966666) b!5525842))

(assert (= (and b!5525849 (not c!966666)) b!5525848))

(assert (= (and b!5525848 c!966668) b!5525844))

(assert (= (and b!5525848 (not c!966668)) b!5525841))

(assert (= (and b!5525841 c!966667) b!5525843))

(assert (= (and b!5525841 (not c!966667)) b!5525850))

(assert (= (or b!5525844 b!5525843) bm!409898))

(assert (= (or b!5525844 b!5525843) bm!409899))

(assert (= (or b!5525842 bm!409898) bm!409900))

(assert (= (or b!5525842 bm!409899) bm!409901))

(assert (= (or b!5525847 bm!409901) bm!409897))

(assert (= (or b!5525847 b!5525842) bm!409902))

(declare-fun m!6528212 () Bool)

(assert (=> b!5525840 m!6528212))

(declare-fun m!6528214 () Bool)

(assert (=> bm!409897 m!6528214))

(declare-fun m!6528216 () Bool)

(assert (=> bm!409900 m!6528216))

(declare-fun m!6528218 () Bool)

(assert (=> b!5525845 m!6528218))

(declare-fun m!6528220 () Bool)

(assert (=> bm!409902 m!6528220))

(assert (=> bm!409686 d!1750933))

(declare-fun d!1750935 () Bool)

(assert (=> d!1750935 (= (isEmpty!34494 (unfocusZipperList!939 zl!343)) ((_ is Nil!62708) (unfocusZipperList!939 zl!343)))))

(assert (=> b!5524576 d!1750935))

(assert (=> d!1750437 d!1750445))

(declare-fun d!1750937 () Bool)

(assert (=> d!1750937 (= (flatMap!1124 lt!2247111 lambda!296137) (dynLambda!24502 lambda!296137 lt!2247113))))

(assert (=> d!1750937 true))

(declare-fun _$13!2083 () Unit!155482)

(assert (=> d!1750937 (= (choose!41975 lt!2247111 lt!2247113 lambda!296137) _$13!2083)))

(declare-fun b_lambda!209601 () Bool)

(assert (=> (not b_lambda!209601) (not d!1750937)))

(declare-fun bs!1275525 () Bool)

(assert (= bs!1275525 d!1750937))

(assert (=> bs!1275525 m!6526528))

(assert (=> bs!1275525 m!6527114))

(assert (=> d!1750437 d!1750937))

(declare-fun bs!1275526 () Bool)

(declare-fun d!1750939 () Bool)

(assert (= bs!1275526 (and d!1750939 b!5524842)))

(declare-fun lambda!296329 () Int)

(assert (=> bs!1275526 (not (= lambda!296329 lambda!296242))))

(declare-fun bs!1275527 () Bool)

(assert (= bs!1275527 (and d!1750939 d!1750407)))

(assert (=> bs!1275527 (= lambda!296329 lambda!296214)))

(declare-fun bs!1275528 () Bool)

(assert (= bs!1275528 (and d!1750939 d!1750415)))

(assert (=> bs!1275528 (= lambda!296329 lambda!296223)))

(declare-fun bs!1275529 () Bool)

(assert (= bs!1275529 (and d!1750939 d!1750413)))

(assert (=> bs!1275529 (= lambda!296329 lambda!296220)))

(declare-fun bs!1275530 () Bool)

(assert (= bs!1275530 (and d!1750939 d!1750809)))

(assert (=> bs!1275530 (not (= lambda!296329 lambda!296306))))

(declare-fun bs!1275531 () Bool)

(assert (= bs!1275531 (and d!1750939 d!1750475)))

(assert (=> bs!1275531 (= lambda!296329 lambda!296235)))

(declare-fun bs!1275532 () Bool)

(assert (= bs!1275532 (and d!1750939 b!5525747)))

(assert (=> bs!1275532 (not (= lambda!296329 lambda!296316))))

(declare-fun bs!1275533 () Bool)

(assert (= bs!1275533 (and d!1750939 b!5525661)))

(assert (=> bs!1275533 (not (= lambda!296329 lambda!296308))))

(declare-fun bs!1275534 () Bool)

(assert (= bs!1275534 (and d!1750939 d!1750929)))

(assert (=> bs!1275534 (= lambda!296329 lambda!296327)))

(declare-fun bs!1275535 () Bool)

(assert (= bs!1275535 (and d!1750939 d!1750783)))

(assert (=> bs!1275535 (= lambda!296329 lambda!296300)))

(declare-fun bs!1275536 () Bool)

(assert (= bs!1275536 (and d!1750939 b!5524839)))

(assert (=> bs!1275536 (not (= lambda!296329 lambda!296241))))

(declare-fun bs!1275537 () Bool)

(assert (= bs!1275537 (and d!1750939 b!5525659)))

(assert (=> bs!1275537 (not (= lambda!296329 lambda!296307))))

(declare-fun bs!1275538 () Bool)

(assert (= bs!1275538 (and d!1750939 b!5524844)))

(assert (=> bs!1275538 (not (= lambda!296329 lambda!296243))))

(declare-fun bs!1275539 () Bool)

(assert (= bs!1275539 (and d!1750939 b!5525745)))

(assert (=> bs!1275539 (not (= lambda!296329 lambda!296315))))

(declare-fun bs!1275540 () Bool)

(assert (= bs!1275540 (and d!1750939 d!1750919)))

(assert (=> bs!1275540 (= lambda!296329 lambda!296323)))

(declare-fun bs!1275541 () Bool)

(assert (= bs!1275541 (and d!1750939 d!1750409)))

(assert (=> bs!1275541 (= lambda!296329 lambda!296217)))

(declare-fun bs!1275542 () Bool)

(assert (= bs!1275542 (and d!1750939 b!5524837)))

(assert (=> bs!1275542 (not (= lambda!296329 lambda!296240))))

(declare-fun bs!1275543 () Bool)

(assert (= bs!1275543 (and d!1750939 d!1750855)))

(assert (=> bs!1275543 (= lambda!296329 lambda!296310)))

(assert (=> d!1750939 (= (inv!82024 setElem!36737) (forall!14687 (exprs!5395 setElem!36737) lambda!296329))))

(declare-fun bs!1275544 () Bool)

(assert (= bs!1275544 d!1750939))

(declare-fun m!6528222 () Bool)

(assert (=> bs!1275544 m!6528222))

(assert (=> setNonEmpty!36737 d!1750939))

(assert (=> d!1750411 d!1750789))

(assert (=> d!1750397 d!1750387))

(declare-fun b!5525851 () Bool)

(declare-fun e!3416198 () Bool)

(declare-fun e!3416196 () Bool)

(assert (=> b!5525851 (= e!3416198 e!3416196)))

(declare-fun res!2353102 () Bool)

(assert (=> b!5525851 (=> (not res!2353102) (not e!3416196))))

(declare-fun call!409909 () Bool)

(assert (=> b!5525851 (= res!2353102 call!409909)))

(declare-fun b!5525853 () Bool)

(declare-fun call!409908 () Bool)

(assert (=> b!5525853 (= e!3416196 call!409908)))

(declare-fun bm!409903 () Bool)

(declare-fun call!409910 () Bool)

(assert (=> bm!409903 (= call!409908 call!409910)))

(declare-fun b!5525854 () Bool)

(declare-fun e!3416195 () Bool)

(declare-fun e!3416197 () Bool)

(assert (=> b!5525854 (= e!3416195 e!3416197)))

(declare-fun c!966671 () Bool)

(assert (=> b!5525854 (= c!966671 ((_ is Star!15511) (regOne!31534 r!7292)))))

(declare-fun bm!409904 () Bool)

(declare-fun c!966672 () Bool)

(assert (=> bm!409904 (= call!409909 (validRegex!7247 (ite c!966672 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292)))))))

(declare-fun b!5525855 () Bool)

(declare-fun res!2353103 () Bool)

(declare-fun e!3416192 () Bool)

(assert (=> b!5525855 (=> (not res!2353103) (not e!3416192))))

(assert (=> b!5525855 (= res!2353103 call!409909)))

(declare-fun e!3416194 () Bool)

(assert (=> b!5525855 (= e!3416194 e!3416192)))

(declare-fun b!5525856 () Bool)

(declare-fun e!3416193 () Bool)

(assert (=> b!5525856 (= e!3416197 e!3416193)))

(declare-fun res!2353104 () Bool)

(assert (=> b!5525856 (= res!2353104 (not (nullable!5545 (reg!15840 (regOne!31534 r!7292)))))))

(assert (=> b!5525856 (=> (not res!2353104) (not e!3416193))))

(declare-fun d!1750941 () Bool)

(declare-fun res!2353106 () Bool)

(assert (=> d!1750941 (=> res!2353106 e!3416195)))

(assert (=> d!1750941 (= res!2353106 ((_ is ElementMatch!15511) (regOne!31534 r!7292)))))

(assert (=> d!1750941 (= (validRegex!7247 (regOne!31534 r!7292)) e!3416195)))

(declare-fun b!5525852 () Bool)

(declare-fun res!2353105 () Bool)

(assert (=> b!5525852 (=> res!2353105 e!3416198)))

(assert (=> b!5525852 (= res!2353105 (not ((_ is Concat!24356) (regOne!31534 r!7292))))))

(assert (=> b!5525852 (= e!3416194 e!3416198)))

(declare-fun bm!409905 () Bool)

(assert (=> bm!409905 (= call!409910 (validRegex!7247 (ite c!966671 (reg!15840 (regOne!31534 r!7292)) (ite c!966672 (regTwo!31535 (regOne!31534 r!7292)) (regTwo!31534 (regOne!31534 r!7292))))))))

(declare-fun b!5525857 () Bool)

(assert (=> b!5525857 (= e!3416193 call!409910)))

(declare-fun b!5525858 () Bool)

(assert (=> b!5525858 (= e!3416192 call!409908)))

(declare-fun b!5525859 () Bool)

(assert (=> b!5525859 (= e!3416197 e!3416194)))

(assert (=> b!5525859 (= c!966672 ((_ is Union!15511) (regOne!31534 r!7292)))))

(assert (= (and d!1750941 (not res!2353106)) b!5525854))

(assert (= (and b!5525854 c!966671) b!5525856))

(assert (= (and b!5525854 (not c!966671)) b!5525859))

(assert (= (and b!5525856 res!2353104) b!5525857))

(assert (= (and b!5525859 c!966672) b!5525855))

(assert (= (and b!5525859 (not c!966672)) b!5525852))

(assert (= (and b!5525855 res!2353103) b!5525858))

(assert (= (and b!5525852 (not res!2353105)) b!5525851))

(assert (= (and b!5525851 res!2353102) b!5525853))

(assert (= (or b!5525858 b!5525853) bm!409903))

(assert (= (or b!5525855 b!5525851) bm!409904))

(assert (= (or b!5525857 bm!409903) bm!409905))

(declare-fun m!6528224 () Bool)

(assert (=> bm!409904 m!6528224))

(declare-fun m!6528226 () Bool)

(assert (=> b!5525856 m!6528226))

(declare-fun m!6528228 () Bool)

(assert (=> bm!409905 m!6528228))

(assert (=> d!1750397 d!1750941))

(assert (=> d!1750397 d!1750393))

(declare-fun d!1750943 () Bool)

(assert (=> d!1750943 (= (Exists!2611 lambda!296211) (choose!41971 lambda!296211))))

(declare-fun bs!1275545 () Bool)

(assert (= bs!1275545 d!1750943))

(declare-fun m!6528230 () Bool)

(assert (=> bs!1275545 m!6528230))

(assert (=> d!1750397 d!1750943))

(declare-fun bs!1275546 () Bool)

(declare-fun d!1750945 () Bool)

(assert (= bs!1275546 (and d!1750945 b!5524665)))

(declare-fun lambda!296332 () Int)

(assert (=> bs!1275546 (not (= lambda!296332 lambda!296228))))

(declare-fun bs!1275547 () Bool)

(assert (= bs!1275547 (and d!1750945 d!1750391)))

(assert (=> bs!1275547 (not (= lambda!296332 lambda!296208))))

(declare-fun bs!1275548 () Bool)

(assert (= bs!1275548 (and d!1750945 d!1750397)))

(assert (=> bs!1275548 (= lambda!296332 lambda!296211)))

(assert (=> bs!1275547 (= lambda!296332 lambda!296207)))

(declare-fun bs!1275549 () Bool)

(assert (= bs!1275549 (and d!1750945 b!5524661)))

(assert (=> bs!1275549 (not (= lambda!296332 lambda!296229))))

(declare-fun bs!1275550 () Bool)

(assert (= bs!1275550 (and d!1750945 b!5524067)))

(assert (=> bs!1275550 (not (= lambda!296332 lambda!296136))))

(declare-fun bs!1275551 () Bool)

(assert (= bs!1275551 (and d!1750945 b!5525770)))

(assert (=> bs!1275551 (not (= lambda!296332 lambda!296321))))

(assert (=> bs!1275550 (= lambda!296332 lambda!296135)))

(declare-fun bs!1275552 () Bool)

(assert (= bs!1275552 (and d!1750945 b!5525766)))

(assert (=> bs!1275552 (not (= lambda!296332 lambda!296322))))

(assert (=> d!1750945 true))

(assert (=> d!1750945 true))

(assert (=> d!1750945 true))

(assert (=> d!1750945 (= (isDefined!12223 (findConcatSeparation!1934 (regOne!31534 r!7292) (regTwo!31534 r!7292) Nil!62710 s!2326 s!2326)) (Exists!2611 lambda!296332))))

(assert (=> d!1750945 true))

(declare-fun _$89!1626 () Unit!155482)

(assert (=> d!1750945 (= (choose!41973 (regOne!31534 r!7292) (regTwo!31534 r!7292) s!2326) _$89!1626)))

(declare-fun bs!1275553 () Bool)

(assert (= bs!1275553 d!1750945))

(assert (=> bs!1275553 m!6526600))

(assert (=> bs!1275553 m!6526600))

(assert (=> bs!1275553 m!6526602))

(declare-fun m!6528232 () Bool)

(assert (=> bs!1275553 m!6528232))

(assert (=> d!1750397 d!1750945))

(assert (=> d!1750443 d!1750433))

(declare-fun d!1750947 () Bool)

(assert (=> d!1750947 (= (flatMap!1124 lt!2247109 lambda!296137) (dynLambda!24502 lambda!296137 lt!2247103))))

(assert (=> d!1750947 true))

(declare-fun _$13!2084 () Unit!155482)

(assert (=> d!1750947 (= (choose!41975 lt!2247109 lt!2247103 lambda!296137) _$13!2084)))

(declare-fun b_lambda!209603 () Bool)

(assert (=> (not b_lambda!209603) (not d!1750947)))

(declare-fun bs!1275554 () Bool)

(assert (= bs!1275554 d!1750947))

(assert (=> bs!1275554 m!6526526))

(assert (=> bs!1275554 m!6527128))

(assert (=> d!1750443 d!1750947))

(declare-fun d!1750949 () Bool)

(assert (=> d!1750949 (= (isDefined!12223 lt!2247213) (not (isEmpty!34497 lt!2247213)))))

(declare-fun bs!1275555 () Bool)

(assert (= bs!1275555 d!1750949))

(declare-fun m!6528234 () Bool)

(assert (=> bs!1275555 m!6528234))

(assert (=> d!1750387 d!1750949))

(declare-fun b!5525864 () Bool)

(declare-fun e!3416201 () Bool)

(declare-fun e!3416202 () Bool)

(assert (=> b!5525864 (= e!3416201 e!3416202)))

(declare-fun res!2353118 () Bool)

(assert (=> b!5525864 (=> (not res!2353118) (not e!3416202))))

(declare-fun lt!2247363 () Bool)

(assert (=> b!5525864 (= res!2353118 (not lt!2247363))))

(declare-fun b!5525865 () Bool)

(declare-fun res!2353112 () Bool)

(assert (=> b!5525865 (=> res!2353112 e!3416201)))

(declare-fun e!3416207 () Bool)

(assert (=> b!5525865 (= res!2353112 e!3416207)))

(declare-fun res!2353116 () Bool)

(assert (=> b!5525865 (=> (not res!2353116) (not e!3416207))))

(assert (=> b!5525865 (= res!2353116 lt!2247363)))

(declare-fun b!5525866 () Bool)

(declare-fun res!2353115 () Bool)

(declare-fun e!3416204 () Bool)

(assert (=> b!5525866 (=> res!2353115 e!3416204)))

(assert (=> b!5525866 (= res!2353115 (not (isEmpty!34498 (tail!10921 Nil!62710))))))

(declare-fun b!5525867 () Bool)

(declare-fun res!2353111 () Bool)

(assert (=> b!5525867 (=> (not res!2353111) (not e!3416207))))

(assert (=> b!5525867 (= res!2353111 (isEmpty!34498 (tail!10921 Nil!62710)))))

(declare-fun b!5525868 () Bool)

(declare-fun res!2353114 () Bool)

(assert (=> b!5525868 (=> res!2353114 e!3416201)))

(assert (=> b!5525868 (= res!2353114 (not ((_ is ElementMatch!15511) (regOne!31534 r!7292))))))

(declare-fun e!3416203 () Bool)

(assert (=> b!5525868 (= e!3416203 e!3416201)))

(declare-fun b!5525869 () Bool)

(assert (=> b!5525869 (= e!3416204 (not (= (head!11826 Nil!62710) (c!966149 (regOne!31534 r!7292)))))))

(declare-fun b!5525871 () Bool)

(declare-fun e!3416206 () Bool)

(assert (=> b!5525871 (= e!3416206 e!3416203)))

(declare-fun c!966674 () Bool)

(assert (=> b!5525871 (= c!966674 ((_ is EmptyLang!15511) (regOne!31534 r!7292)))))

(declare-fun b!5525872 () Bool)

(declare-fun e!3416205 () Bool)

(assert (=> b!5525872 (= e!3416205 (matchR!7696 (derivativeStep!4376 (regOne!31534 r!7292) (head!11826 Nil!62710)) (tail!10921 Nil!62710)))))

(declare-fun bm!409906 () Bool)

(declare-fun call!409911 () Bool)

(assert (=> bm!409906 (= call!409911 (isEmpty!34498 Nil!62710))))

(declare-fun b!5525873 () Bool)

(assert (=> b!5525873 (= e!3416207 (= (head!11826 Nil!62710) (c!966149 (regOne!31534 r!7292))))))

(declare-fun b!5525874 () Bool)

(assert (=> b!5525874 (= e!3416205 (nullable!5545 (regOne!31534 r!7292)))))

(declare-fun b!5525875 () Bool)

(assert (=> b!5525875 (= e!3416206 (= lt!2247363 call!409911))))

(declare-fun b!5525876 () Bool)

(assert (=> b!5525876 (= e!3416202 e!3416204)))

(declare-fun res!2353117 () Bool)

(assert (=> b!5525876 (=> res!2353117 e!3416204)))

(assert (=> b!5525876 (= res!2353117 call!409911)))

(declare-fun b!5525877 () Bool)

(assert (=> b!5525877 (= e!3416203 (not lt!2247363))))

(declare-fun d!1750951 () Bool)

(assert (=> d!1750951 e!3416206))

(declare-fun c!966675 () Bool)

(assert (=> d!1750951 (= c!966675 ((_ is EmptyExpr!15511) (regOne!31534 r!7292)))))

(assert (=> d!1750951 (= lt!2247363 e!3416205)))

(declare-fun c!966673 () Bool)

(assert (=> d!1750951 (= c!966673 (isEmpty!34498 Nil!62710))))

(assert (=> d!1750951 (validRegex!7247 (regOne!31534 r!7292))))

(assert (=> d!1750951 (= (matchR!7696 (regOne!31534 r!7292) Nil!62710) lt!2247363)))

(declare-fun b!5525870 () Bool)

(declare-fun res!2353113 () Bool)

(assert (=> b!5525870 (=> (not res!2353113) (not e!3416207))))

(assert (=> b!5525870 (= res!2353113 (not call!409911))))

(assert (= (and d!1750951 c!966673) b!5525874))

(assert (= (and d!1750951 (not c!966673)) b!5525872))

(assert (= (and d!1750951 c!966675) b!5525875))

(assert (= (and d!1750951 (not c!966675)) b!5525871))

(assert (= (and b!5525871 c!966674) b!5525877))

(assert (= (and b!5525871 (not c!966674)) b!5525868))

(assert (= (and b!5525868 (not res!2353114)) b!5525865))

(assert (= (and b!5525865 res!2353116) b!5525870))

(assert (= (and b!5525870 res!2353113) b!5525867))

(assert (= (and b!5525867 res!2353111) b!5525873))

(assert (= (and b!5525865 (not res!2353112)) b!5525864))

(assert (= (and b!5525864 res!2353118) b!5525876))

(assert (= (and b!5525876 (not res!2353117)) b!5525866))

(assert (= (and b!5525866 (not res!2353115)) b!5525869))

(assert (= (or b!5525875 b!5525870 b!5525876) bm!409906))

(declare-fun m!6528236 () Bool)

(assert (=> b!5525873 m!6528236))

(declare-fun m!6528238 () Bool)

(assert (=> d!1750951 m!6528238))

(assert (=> d!1750951 m!6526962))

(assert (=> b!5525869 m!6528236))

(declare-fun m!6528240 () Bool)

(assert (=> b!5525866 m!6528240))

(assert (=> b!5525866 m!6528240))

(declare-fun m!6528242 () Bool)

(assert (=> b!5525866 m!6528242))

(assert (=> b!5525867 m!6528240))

(assert (=> b!5525867 m!6528240))

(assert (=> b!5525867 m!6528242))

(assert (=> b!5525874 m!6526520))

(assert (=> bm!409906 m!6528238))

(assert (=> b!5525872 m!6528236))

(assert (=> b!5525872 m!6528236))

(declare-fun m!6528244 () Bool)

(assert (=> b!5525872 m!6528244))

(assert (=> b!5525872 m!6528240))

(assert (=> b!5525872 m!6528244))

(assert (=> b!5525872 m!6528240))

(declare-fun m!6528246 () Bool)

(assert (=> b!5525872 m!6528246))

(assert (=> d!1750387 d!1750951))

(assert (=> d!1750387 d!1750941))

(declare-fun b!5525878 () Bool)

(declare-fun e!3416209 () (InoxSet Context!9790))

(assert (=> b!5525878 (= e!3416209 (store ((as const (Array Context!9790 Bool)) false) (ite c!966384 lt!2247098 (Context!9791 call!409699)) true))))

(declare-fun c!966679 () Bool)

(declare-fun c!966676 () Bool)

(declare-fun bm!409907 () Bool)

(declare-fun call!409915 () (InoxSet Context!9790))

(declare-fun call!409913 () List!62832)

(declare-fun c!966678 () Bool)

(assert (=> bm!409907 (= call!409915 (derivationStepZipperDown!853 (ite c!966679 (regTwo!31535 (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292))) (ite c!966676 (regTwo!31534 (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292))) (ite c!966678 (regOne!31534 (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292))) (reg!15840 (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292)))))) (ite (or c!966679 c!966676) (ite c!966384 lt!2247098 (Context!9791 call!409699)) (Context!9791 call!409913)) (h!69158 s!2326)))))

(declare-fun bm!409908 () Bool)

(declare-fun call!409912 () List!62832)

(assert (=> bm!409908 (= call!409913 call!409912)))

(declare-fun b!5525879 () Bool)

(declare-fun c!966677 () Bool)

(assert (=> b!5525879 (= c!966677 ((_ is Star!15511) (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292))))))

(declare-fun e!3416213 () (InoxSet Context!9790))

(declare-fun e!3416208 () (InoxSet Context!9790))

(assert (=> b!5525879 (= e!3416213 e!3416208)))

(declare-fun c!966680 () Bool)

(declare-fun d!1750953 () Bool)

(assert (=> d!1750953 (= c!966680 (and ((_ is ElementMatch!15511) (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292))) (= (c!966149 (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292))) (h!69158 s!2326))))))

(assert (=> d!1750953 (= (derivationStepZipperDown!853 (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292)) (ite c!966384 lt!2247098 (Context!9791 call!409699)) (h!69158 s!2326)) e!3416209)))

(declare-fun b!5525880 () Bool)

(declare-fun e!3416210 () (InoxSet Context!9790))

(declare-fun call!409917 () (InoxSet Context!9790))

(declare-fun call!409916 () (InoxSet Context!9790))

(assert (=> b!5525880 (= e!3416210 ((_ map or) call!409917 call!409916))))

(declare-fun b!5525881 () Bool)

(declare-fun call!409914 () (InoxSet Context!9790))

(assert (=> b!5525881 (= e!3416208 call!409914)))

(declare-fun b!5525882 () Bool)

(assert (=> b!5525882 (= e!3416213 call!409914)))

(declare-fun bm!409909 () Bool)

(assert (=> bm!409909 (= call!409914 call!409916)))

(declare-fun b!5525883 () Bool)

(declare-fun e!3416211 () Bool)

(assert (=> b!5525883 (= e!3416211 (nullable!5545 (regOne!31534 (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292)))))))

(declare-fun bm!409910 () Bool)

(assert (=> bm!409910 (= call!409912 ($colon$colon!1590 (exprs!5395 (ite c!966384 lt!2247098 (Context!9791 call!409699))) (ite (or c!966676 c!966678) (regTwo!31534 (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292))) (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292)))))))

(declare-fun bm!409911 () Bool)

(assert (=> bm!409911 (= call!409916 call!409915)))

(declare-fun b!5525884 () Bool)

(declare-fun e!3416212 () (InoxSet Context!9790))

(assert (=> b!5525884 (= e!3416209 e!3416212)))

(assert (=> b!5525884 (= c!966679 ((_ is Union!15511) (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292))))))

(declare-fun bm!409912 () Bool)

(assert (=> bm!409912 (= call!409917 (derivationStepZipperDown!853 (ite c!966679 (regOne!31535 (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292))) (regOne!31534 (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292)))) (ite c!966679 (ite c!966384 lt!2247098 (Context!9791 call!409699)) (Context!9791 call!409912)) (h!69158 s!2326)))))

(declare-fun b!5525885 () Bool)

(assert (=> b!5525885 (= e!3416212 ((_ map or) call!409917 call!409915))))

(declare-fun b!5525886 () Bool)

(assert (=> b!5525886 (= e!3416210 e!3416213)))

(assert (=> b!5525886 (= c!966678 ((_ is Concat!24356) (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292))))))

(declare-fun b!5525887 () Bool)

(assert (=> b!5525887 (= c!966676 e!3416211)))

(declare-fun res!2353119 () Bool)

(assert (=> b!5525887 (=> (not res!2353119) (not e!3416211))))

(assert (=> b!5525887 (= res!2353119 ((_ is Concat!24356) (ite c!966384 (regOne!31535 r!7292) (regOne!31534 r!7292))))))

(assert (=> b!5525887 (= e!3416212 e!3416210)))

(declare-fun b!5525888 () Bool)

(assert (=> b!5525888 (= e!3416208 ((as const (Array Context!9790 Bool)) false))))

(assert (= (and d!1750953 c!966680) b!5525878))

(assert (= (and d!1750953 (not c!966680)) b!5525884))

(assert (= (and b!5525884 c!966679) b!5525885))

(assert (= (and b!5525884 (not c!966679)) b!5525887))

(assert (= (and b!5525887 res!2353119) b!5525883))

(assert (= (and b!5525887 c!966676) b!5525880))

(assert (= (and b!5525887 (not c!966676)) b!5525886))

(assert (= (and b!5525886 c!966678) b!5525882))

(assert (= (and b!5525886 (not c!966678)) b!5525879))

(assert (= (and b!5525879 c!966677) b!5525881))

(assert (= (and b!5525879 (not c!966677)) b!5525888))

(assert (= (or b!5525882 b!5525881) bm!409908))

(assert (= (or b!5525882 b!5525881) bm!409909))

(assert (= (or b!5525880 bm!409908) bm!409910))

(assert (= (or b!5525880 bm!409909) bm!409911))

(assert (= (or b!5525885 bm!409911) bm!409907))

(assert (= (or b!5525885 b!5525880) bm!409912))

(declare-fun m!6528248 () Bool)

(assert (=> b!5525878 m!6528248))

(declare-fun m!6528250 () Bool)

(assert (=> bm!409907 m!6528250))

(declare-fun m!6528252 () Bool)

(assert (=> bm!409910 m!6528252))

(declare-fun m!6528254 () Bool)

(assert (=> b!5525883 m!6528254))

(declare-fun m!6528256 () Bool)

(assert (=> bm!409912 m!6528256))

(assert (=> bm!409699 d!1750953))

(declare-fun b!5525889 () Bool)

(declare-fun e!3416214 () Bool)

(declare-fun e!3416215 () Bool)

(assert (=> b!5525889 (= e!3416214 e!3416215)))

(declare-fun res!2353127 () Bool)

(assert (=> b!5525889 (=> (not res!2353127) (not e!3416215))))

(declare-fun lt!2247364 () Bool)

(assert (=> b!5525889 (= res!2353127 (not lt!2247364))))

(declare-fun b!5525890 () Bool)

(declare-fun res!2353121 () Bool)

(assert (=> b!5525890 (=> res!2353121 e!3416214)))

(declare-fun e!3416220 () Bool)

(assert (=> b!5525890 (= res!2353121 e!3416220)))

(declare-fun res!2353125 () Bool)

(assert (=> b!5525890 (=> (not res!2353125) (not e!3416220))))

(assert (=> b!5525890 (= res!2353125 lt!2247364)))

(declare-fun b!5525891 () Bool)

(declare-fun res!2353124 () Bool)

(declare-fun e!3416217 () Bool)

(assert (=> b!5525891 (=> res!2353124 e!3416217)))

(assert (=> b!5525891 (= res!2353124 (not (isEmpty!34498 (tail!10921 (_2!35911 (get!21582 lt!2247213))))))))

(declare-fun b!5525892 () Bool)

(declare-fun res!2353120 () Bool)

(assert (=> b!5525892 (=> (not res!2353120) (not e!3416220))))

(assert (=> b!5525892 (= res!2353120 (isEmpty!34498 (tail!10921 (_2!35911 (get!21582 lt!2247213)))))))

(declare-fun b!5525893 () Bool)

(declare-fun res!2353123 () Bool)

(assert (=> b!5525893 (=> res!2353123 e!3416214)))

(assert (=> b!5525893 (= res!2353123 (not ((_ is ElementMatch!15511) (regTwo!31534 r!7292))))))

(declare-fun e!3416216 () Bool)

(assert (=> b!5525893 (= e!3416216 e!3416214)))

(declare-fun b!5525894 () Bool)

(assert (=> b!5525894 (= e!3416217 (not (= (head!11826 (_2!35911 (get!21582 lt!2247213))) (c!966149 (regTwo!31534 r!7292)))))))

(declare-fun b!5525896 () Bool)

(declare-fun e!3416219 () Bool)

(assert (=> b!5525896 (= e!3416219 e!3416216)))

(declare-fun c!966682 () Bool)

(assert (=> b!5525896 (= c!966682 ((_ is EmptyLang!15511) (regTwo!31534 r!7292)))))

(declare-fun b!5525897 () Bool)

(declare-fun e!3416218 () Bool)

(assert (=> b!5525897 (= e!3416218 (matchR!7696 (derivativeStep!4376 (regTwo!31534 r!7292) (head!11826 (_2!35911 (get!21582 lt!2247213)))) (tail!10921 (_2!35911 (get!21582 lt!2247213)))))))

(declare-fun bm!409913 () Bool)

(declare-fun call!409918 () Bool)

(assert (=> bm!409913 (= call!409918 (isEmpty!34498 (_2!35911 (get!21582 lt!2247213))))))

(declare-fun b!5525898 () Bool)

(assert (=> b!5525898 (= e!3416220 (= (head!11826 (_2!35911 (get!21582 lt!2247213))) (c!966149 (regTwo!31534 r!7292))))))

(declare-fun b!5525899 () Bool)

(assert (=> b!5525899 (= e!3416218 (nullable!5545 (regTwo!31534 r!7292)))))

(declare-fun b!5525900 () Bool)

(assert (=> b!5525900 (= e!3416219 (= lt!2247364 call!409918))))

(declare-fun b!5525901 () Bool)

(assert (=> b!5525901 (= e!3416215 e!3416217)))

(declare-fun res!2353126 () Bool)

(assert (=> b!5525901 (=> res!2353126 e!3416217)))

(assert (=> b!5525901 (= res!2353126 call!409918)))

(declare-fun b!5525902 () Bool)

(assert (=> b!5525902 (= e!3416216 (not lt!2247364))))

(declare-fun d!1750955 () Bool)

(assert (=> d!1750955 e!3416219))

(declare-fun c!966683 () Bool)

(assert (=> d!1750955 (= c!966683 ((_ is EmptyExpr!15511) (regTwo!31534 r!7292)))))

(assert (=> d!1750955 (= lt!2247364 e!3416218)))

(declare-fun c!966681 () Bool)

(assert (=> d!1750955 (= c!966681 (isEmpty!34498 (_2!35911 (get!21582 lt!2247213))))))

(assert (=> d!1750955 (validRegex!7247 (regTwo!31534 r!7292))))

(assert (=> d!1750955 (= (matchR!7696 (regTwo!31534 r!7292) (_2!35911 (get!21582 lt!2247213))) lt!2247364)))

(declare-fun b!5525895 () Bool)

(declare-fun res!2353122 () Bool)

(assert (=> b!5525895 (=> (not res!2353122) (not e!3416220))))

(assert (=> b!5525895 (= res!2353122 (not call!409918))))

(assert (= (and d!1750955 c!966681) b!5525899))

(assert (= (and d!1750955 (not c!966681)) b!5525897))

(assert (= (and d!1750955 c!966683) b!5525900))

(assert (= (and d!1750955 (not c!966683)) b!5525896))

(assert (= (and b!5525896 c!966682) b!5525902))

(assert (= (and b!5525896 (not c!966682)) b!5525893))

(assert (= (and b!5525893 (not res!2353123)) b!5525890))

(assert (= (and b!5525890 res!2353125) b!5525895))

(assert (= (and b!5525895 res!2353122) b!5525892))

(assert (= (and b!5525892 res!2353120) b!5525898))

(assert (= (and b!5525890 (not res!2353121)) b!5525889))

(assert (= (and b!5525889 res!2353127) b!5525901))

(assert (= (and b!5525901 (not res!2353126)) b!5525891))

(assert (= (and b!5525891 (not res!2353124)) b!5525894))

(assert (= (or b!5525900 b!5525895 b!5525901) bm!409913))

(declare-fun m!6528258 () Bool)

(assert (=> b!5525898 m!6528258))

(declare-fun m!6528260 () Bool)

(assert (=> d!1750955 m!6528260))

(assert (=> d!1750955 m!6527980))

(assert (=> b!5525894 m!6528258))

(declare-fun m!6528262 () Bool)

(assert (=> b!5525891 m!6528262))

(assert (=> b!5525891 m!6528262))

(declare-fun m!6528264 () Bool)

(assert (=> b!5525891 m!6528264))

(assert (=> b!5525892 m!6528262))

(assert (=> b!5525892 m!6528262))

(assert (=> b!5525892 m!6528264))

(assert (=> b!5525899 m!6527982))

(assert (=> bm!409913 m!6528260))

(assert (=> b!5525897 m!6528258))

(assert (=> b!5525897 m!6528258))

(declare-fun m!6528266 () Bool)

(assert (=> b!5525897 m!6528266))

(assert (=> b!5525897 m!6528262))

(assert (=> b!5525897 m!6528266))

(assert (=> b!5525897 m!6528262))

(declare-fun m!6528268 () Bool)

(assert (=> b!5525897 m!6528268))

(assert (=> b!5524527 d!1750955))

(declare-fun d!1750957 () Bool)

(assert (=> d!1750957 (= (get!21582 lt!2247213) (v!51556 lt!2247213))))

(assert (=> b!5524527 d!1750957))

(declare-fun d!1750959 () Bool)

(assert (=> d!1750959 (= (nullable!5545 (h!69156 (exprs!5395 lt!2247106))) (nullableFct!1669 (h!69156 (exprs!5395 lt!2247106))))))

(declare-fun bs!1275556 () Bool)

(assert (= bs!1275556 d!1750959))

(declare-fun m!6528270 () Bool)

(assert (=> bs!1275556 m!6528270))

(assert (=> b!5524817 d!1750959))

(declare-fun d!1750961 () Bool)

(assert (=> d!1750961 (= ($colon$colon!1590 (exprs!5395 lt!2247103) (ite (or c!966372 c!966374) (regTwo!31534 (regOne!31534 r!7292)) (regOne!31534 r!7292))) (Cons!62708 (ite (or c!966372 c!966374) (regTwo!31534 (regOne!31534 r!7292)) (regOne!31534 r!7292)) (exprs!5395 lt!2247103)))))

(assert (=> bm!409689 d!1750961))

(assert (=> bm!409654 d!1750923))

(declare-fun b!5525903 () Bool)

(declare-fun e!3416227 () Bool)

(declare-fun e!3416225 () Bool)

(assert (=> b!5525903 (= e!3416227 e!3416225)))

(declare-fun res!2353128 () Bool)

(assert (=> b!5525903 (=> (not res!2353128) (not e!3416225))))

(declare-fun call!409920 () Bool)

(assert (=> b!5525903 (= res!2353128 call!409920)))

(declare-fun b!5525905 () Bool)

(declare-fun call!409919 () Bool)

(assert (=> b!5525905 (= e!3416225 call!409919)))

(declare-fun bm!409914 () Bool)

(declare-fun call!409921 () Bool)

(assert (=> bm!409914 (= call!409919 call!409921)))

(declare-fun b!5525906 () Bool)

(declare-fun e!3416224 () Bool)

(declare-fun e!3416226 () Bool)

(assert (=> b!5525906 (= e!3416224 e!3416226)))

(declare-fun c!966684 () Bool)

(assert (=> b!5525906 (= c!966684 ((_ is Star!15511) (ite c!966355 (reg!15840 r!7292) (ite c!966356 (regTwo!31535 r!7292) (regTwo!31534 r!7292)))))))

(declare-fun c!966685 () Bool)

(declare-fun bm!409915 () Bool)

(assert (=> bm!409915 (= call!409920 (validRegex!7247 (ite c!966685 (regOne!31535 (ite c!966355 (reg!15840 r!7292) (ite c!966356 (regTwo!31535 r!7292) (regTwo!31534 r!7292)))) (regOne!31534 (ite c!966355 (reg!15840 r!7292) (ite c!966356 (regTwo!31535 r!7292) (regTwo!31534 r!7292)))))))))

(declare-fun b!5525907 () Bool)

(declare-fun res!2353129 () Bool)

(declare-fun e!3416221 () Bool)

(assert (=> b!5525907 (=> (not res!2353129) (not e!3416221))))

(assert (=> b!5525907 (= res!2353129 call!409920)))

(declare-fun e!3416223 () Bool)

(assert (=> b!5525907 (= e!3416223 e!3416221)))

(declare-fun b!5525908 () Bool)

(declare-fun e!3416222 () Bool)

(assert (=> b!5525908 (= e!3416226 e!3416222)))

(declare-fun res!2353130 () Bool)

(assert (=> b!5525908 (= res!2353130 (not (nullable!5545 (reg!15840 (ite c!966355 (reg!15840 r!7292) (ite c!966356 (regTwo!31535 r!7292) (regTwo!31534 r!7292)))))))))

(assert (=> b!5525908 (=> (not res!2353130) (not e!3416222))))

(declare-fun d!1750963 () Bool)

(declare-fun res!2353132 () Bool)

(assert (=> d!1750963 (=> res!2353132 e!3416224)))

(assert (=> d!1750963 (= res!2353132 ((_ is ElementMatch!15511) (ite c!966355 (reg!15840 r!7292) (ite c!966356 (regTwo!31535 r!7292) (regTwo!31534 r!7292)))))))

(assert (=> d!1750963 (= (validRegex!7247 (ite c!966355 (reg!15840 r!7292) (ite c!966356 (regTwo!31535 r!7292) (regTwo!31534 r!7292)))) e!3416224)))

(declare-fun b!5525904 () Bool)

(declare-fun res!2353131 () Bool)

(assert (=> b!5525904 (=> res!2353131 e!3416227)))

(assert (=> b!5525904 (= res!2353131 (not ((_ is Concat!24356) (ite c!966355 (reg!15840 r!7292) (ite c!966356 (regTwo!31535 r!7292) (regTwo!31534 r!7292))))))))

(assert (=> b!5525904 (= e!3416223 e!3416227)))

(declare-fun bm!409916 () Bool)

(assert (=> bm!409916 (= call!409921 (validRegex!7247 (ite c!966684 (reg!15840 (ite c!966355 (reg!15840 r!7292) (ite c!966356 (regTwo!31535 r!7292) (regTwo!31534 r!7292)))) (ite c!966685 (regTwo!31535 (ite c!966355 (reg!15840 r!7292) (ite c!966356 (regTwo!31535 r!7292) (regTwo!31534 r!7292)))) (regTwo!31534 (ite c!966355 (reg!15840 r!7292) (ite c!966356 (regTwo!31535 r!7292) (regTwo!31534 r!7292))))))))))

(declare-fun b!5525909 () Bool)

(assert (=> b!5525909 (= e!3416222 call!409921)))

(declare-fun b!5525910 () Bool)

(assert (=> b!5525910 (= e!3416221 call!409919)))

(declare-fun b!5525911 () Bool)

(assert (=> b!5525911 (= e!3416226 e!3416223)))

(assert (=> b!5525911 (= c!966685 ((_ is Union!15511) (ite c!966355 (reg!15840 r!7292) (ite c!966356 (regTwo!31535 r!7292) (regTwo!31534 r!7292)))))))

(assert (= (and d!1750963 (not res!2353132)) b!5525906))

(assert (= (and b!5525906 c!966684) b!5525908))

(assert (= (and b!5525906 (not c!966684)) b!5525911))

(assert (= (and b!5525908 res!2353130) b!5525909))

(assert (= (and b!5525911 c!966685) b!5525907))

(assert (= (and b!5525911 (not c!966685)) b!5525904))

(assert (= (and b!5525907 res!2353129) b!5525910))

(assert (= (and b!5525904 (not res!2353131)) b!5525903))

(assert (= (and b!5525903 res!2353128) b!5525905))

(assert (= (or b!5525910 b!5525905) bm!409914))

(assert (= (or b!5525907 b!5525903) bm!409915))

(assert (= (or b!5525909 bm!409914) bm!409916))

(declare-fun m!6528272 () Bool)

(assert (=> bm!409915 m!6528272))

(declare-fun m!6528274 () Bool)

(assert (=> b!5525908 m!6528274))

(declare-fun m!6528276 () Bool)

(assert (=> bm!409916 m!6528276))

(assert (=> bm!409667 d!1750963))

(assert (=> b!5524703 d!1750877))

(declare-fun d!1750965 () Bool)

(declare-fun res!2353133 () Bool)

(declare-fun e!3416228 () Bool)

(assert (=> d!1750965 (=> res!2353133 e!3416228)))

(assert (=> d!1750965 (= res!2353133 ((_ is Nil!62708) (exprs!5395 lt!2247113)))))

(assert (=> d!1750965 (= (forall!14687 (exprs!5395 lt!2247113) lambda!296241) e!3416228)))

(declare-fun b!5525912 () Bool)

(declare-fun e!3416229 () Bool)

(assert (=> b!5525912 (= e!3416228 e!3416229)))

(declare-fun res!2353134 () Bool)

(assert (=> b!5525912 (=> (not res!2353134) (not e!3416229))))

(assert (=> b!5525912 (= res!2353134 (dynLambda!24507 lambda!296241 (h!69156 (exprs!5395 lt!2247113))))))

(declare-fun b!5525913 () Bool)

(assert (=> b!5525913 (= e!3416229 (forall!14687 (t!376085 (exprs!5395 lt!2247113)) lambda!296241))))

(assert (= (and d!1750965 (not res!2353133)) b!5525912))

(assert (= (and b!5525912 res!2353134) b!5525913))

(declare-fun b_lambda!209605 () Bool)

(assert (=> (not b_lambda!209605) (not b!5525912)))

(declare-fun m!6528278 () Bool)

(assert (=> b!5525912 m!6528278))

(declare-fun m!6528280 () Bool)

(assert (=> b!5525913 m!6528280))

(assert (=> b!5524839 d!1750965))

(declare-fun bs!1275557 () Bool)

(declare-fun d!1750967 () Bool)

(assert (= bs!1275557 (and d!1750967 b!5524498)))

(declare-fun lambda!296333 () Int)

(assert (=> bs!1275557 (not (= lambda!296333 lambda!296201))))

(declare-fun bs!1275558 () Bool)

(assert (= bs!1275558 (and d!1750967 d!1750931)))

(assert (=> bs!1275558 (not (= lambda!296333 lambda!296328))))

(declare-fun bs!1275559 () Bool)

(assert (= bs!1275559 (and d!1750967 d!1750881)))

(assert (=> bs!1275559 (= (and (= lt!2247205 lt!2247201) (= lambda!296200 lambda!296197)) (= lambda!296333 lambda!296314))))

(declare-fun bs!1275560 () Bool)

(assert (= bs!1275560 (and d!1750967 b!5524493)))

(assert (=> bs!1275560 (not (= lambda!296333 lambda!296198))))

(declare-fun bs!1275561 () Bool)

(assert (= bs!1275561 (and d!1750967 b!5524500)))

(assert (=> bs!1275561 (not (= lambda!296333 lambda!296202))))

(declare-fun bs!1275562 () Bool)

(assert (= bs!1275562 (and d!1750967 b!5524495)))

(assert (=> bs!1275562 (not (= lambda!296333 lambda!296199))))

(declare-fun bs!1275563 () Bool)

(assert (= bs!1275563 (and d!1750967 d!1750927)))

(assert (=> bs!1275563 (not (= lambda!296333 lambda!296326))))

(declare-fun bs!1275564 () Bool)

(assert (= bs!1275564 (and d!1750967 b!5525754)))

(assert (=> bs!1275564 (not (= lambda!296333 lambda!296318))))

(declare-fun bs!1275565 () Bool)

(assert (= bs!1275565 (and d!1750967 b!5525756)))

(assert (=> bs!1275565 (not (= lambda!296333 lambda!296319))))

(assert (=> d!1750967 true))

(assert (=> d!1750967 true))

(assert (=> d!1750967 (< (dynLambda!24508 order!27119 lambda!296200) (dynLambda!24509 order!27121 lambda!296333))))

(assert (=> d!1750967 (forall!14686 (t!376086 (Cons!62709 lt!2247106 Nil!62709)) lambda!296333)))

(declare-fun lt!2247365 () Unit!155482)

(assert (=> d!1750967 (= lt!2247365 (choose!41984 (t!376086 (Cons!62709 lt!2247106 Nil!62709)) lt!2247205 (zipperDepth!194 (t!376086 (Cons!62709 lt!2247106 Nil!62709))) lambda!296200))))

(assert (=> d!1750967 (>= lt!2247205 (zipperDepth!194 (t!376086 (Cons!62709 lt!2247106 Nil!62709))))))

(assert (=> d!1750967 (= (lemmaForallContextDepthBiggerThanTransitive!99 (t!376086 (Cons!62709 lt!2247106 Nil!62709)) lt!2247205 (zipperDepth!194 (t!376086 (Cons!62709 lt!2247106 Nil!62709))) lambda!296200) lt!2247365)))

(declare-fun bs!1275566 () Bool)

(assert (= bs!1275566 d!1750967))

(declare-fun m!6528282 () Bool)

(assert (=> bs!1275566 m!6528282))

(assert (=> bs!1275566 m!6526932))

(declare-fun m!6528284 () Bool)

(assert (=> bs!1275566 m!6528284))

(assert (=> b!5524498 d!1750967))

(declare-fun d!1750969 () Bool)

(declare-fun res!2353135 () Bool)

(declare-fun e!3416230 () Bool)

(assert (=> d!1750969 (=> res!2353135 e!3416230)))

(assert (=> d!1750969 (= res!2353135 ((_ is Nil!62709) (t!376086 (Cons!62709 lt!2247106 Nil!62709))))))

(assert (=> d!1750969 (= (forall!14686 (t!376086 (Cons!62709 lt!2247106 Nil!62709)) lambda!296201) e!3416230)))

(declare-fun b!5525914 () Bool)

(declare-fun e!3416231 () Bool)

(assert (=> b!5525914 (= e!3416230 e!3416231)))

(declare-fun res!2353136 () Bool)

(assert (=> b!5525914 (=> (not res!2353136) (not e!3416231))))

(assert (=> b!5525914 (= res!2353136 (dynLambda!24510 lambda!296201 (h!69157 (t!376086 (Cons!62709 lt!2247106 Nil!62709)))))))

(declare-fun b!5525915 () Bool)

(assert (=> b!5525915 (= e!3416231 (forall!14686 (t!376086 (t!376086 (Cons!62709 lt!2247106 Nil!62709))) lambda!296201))))

(assert (= (and d!1750969 (not res!2353135)) b!5525914))

(assert (= (and b!5525914 res!2353136) b!5525915))

(declare-fun b_lambda!209607 () Bool)

(assert (=> (not b_lambda!209607) (not b!5525914)))

(declare-fun m!6528286 () Bool)

(assert (=> b!5525914 m!6528286))

(declare-fun m!6528288 () Bool)

(assert (=> b!5525915 m!6528288))

(assert (=> b!5524498 d!1750969))

(declare-fun bs!1275567 () Bool)

(declare-fun b!5525916 () Bool)

(assert (= bs!1275567 (and b!5525916 b!5524842)))

(declare-fun lambda!296334 () Int)

(declare-fun lt!2247367 () Int)

(assert (=> bs!1275567 (= (= lt!2247367 lt!2247263) (= lambda!296334 lambda!296242))))

(declare-fun bs!1275568 () Bool)

(assert (= bs!1275568 (and b!5525916 d!1750407)))

(assert (=> bs!1275568 (not (= lambda!296334 lambda!296214))))

(declare-fun bs!1275569 () Bool)

(assert (= bs!1275569 (and b!5525916 d!1750939)))

(assert (=> bs!1275569 (not (= lambda!296334 lambda!296329))))

(declare-fun bs!1275570 () Bool)

(assert (= bs!1275570 (and b!5525916 d!1750415)))

(assert (=> bs!1275570 (not (= lambda!296334 lambda!296223))))

(declare-fun bs!1275571 () Bool)

(assert (= bs!1275571 (and b!5525916 d!1750413)))

(assert (=> bs!1275571 (not (= lambda!296334 lambda!296220))))

(declare-fun bs!1275572 () Bool)

(assert (= bs!1275572 (and b!5525916 d!1750809)))

(assert (=> bs!1275572 (= (= lt!2247367 lt!2247259) (= lambda!296334 lambda!296306))))

(declare-fun bs!1275573 () Bool)

(assert (= bs!1275573 (and b!5525916 d!1750475)))

(assert (=> bs!1275573 (not (= lambda!296334 lambda!296235))))

(declare-fun bs!1275574 () Bool)

(assert (= bs!1275574 (and b!5525916 b!5525747)))

(assert (=> bs!1275574 (= (= lt!2247367 lt!2247352) (= lambda!296334 lambda!296316))))

(declare-fun bs!1275575 () Bool)

(assert (= bs!1275575 (and b!5525916 b!5525661)))

(assert (=> bs!1275575 (= (= lt!2247367 lt!2247334) (= lambda!296334 lambda!296308))))

(declare-fun bs!1275576 () Bool)

(assert (= bs!1275576 (and b!5525916 d!1750929)))

(assert (=> bs!1275576 (not (= lambda!296334 lambda!296327))))

(declare-fun bs!1275577 () Bool)

(assert (= bs!1275577 (and b!5525916 d!1750783)))

(assert (=> bs!1275577 (not (= lambda!296334 lambda!296300))))

(declare-fun bs!1275578 () Bool)

(assert (= bs!1275578 (and b!5525916 b!5524839)))

(assert (=> bs!1275578 (= (= lt!2247367 lt!2247261) (= lambda!296334 lambda!296241))))

(declare-fun bs!1275579 () Bool)

(assert (= bs!1275579 (and b!5525916 b!5525659)))

(assert (=> bs!1275579 (= (= lt!2247367 lt!2247332) (= lambda!296334 lambda!296307))))

(declare-fun bs!1275580 () Bool)

(assert (= bs!1275580 (and b!5525916 b!5524844)))

(assert (=> bs!1275580 (= (= lt!2247367 lt!2247265) (= lambda!296334 lambda!296243))))

(declare-fun bs!1275581 () Bool)

(assert (= bs!1275581 (and b!5525916 b!5525745)))

(assert (=> bs!1275581 (= (= lt!2247367 lt!2247350) (= lambda!296334 lambda!296315))))

(declare-fun bs!1275582 () Bool)

(assert (= bs!1275582 (and b!5525916 d!1750919)))

(assert (=> bs!1275582 (not (= lambda!296334 lambda!296323))))

(declare-fun bs!1275583 () Bool)

(assert (= bs!1275583 (and b!5525916 d!1750409)))

(assert (=> bs!1275583 (not (= lambda!296334 lambda!296217))))

(declare-fun bs!1275584 () Bool)

(assert (= bs!1275584 (and b!5525916 b!5524837)))

(assert (=> bs!1275584 (= (= lt!2247367 lt!2247259) (= lambda!296334 lambda!296240))))

(declare-fun bs!1275585 () Bool)

(assert (= bs!1275585 (and b!5525916 d!1750855)))

(assert (=> bs!1275585 (not (= lambda!296334 lambda!296310))))

(assert (=> b!5525916 true))

(declare-fun bs!1275586 () Bool)

(declare-fun b!5525918 () Bool)

(assert (= bs!1275586 (and b!5525918 b!5524842)))

(declare-fun lambda!296335 () Int)

(declare-fun lt!2247369 () Int)

(assert (=> bs!1275586 (= (= lt!2247369 lt!2247263) (= lambda!296335 lambda!296242))))

(declare-fun bs!1275587 () Bool)

(assert (= bs!1275587 (and b!5525918 d!1750407)))

(assert (=> bs!1275587 (not (= lambda!296335 lambda!296214))))

(declare-fun bs!1275588 () Bool)

(assert (= bs!1275588 (and b!5525918 b!5525916)))

(assert (=> bs!1275588 (= (= lt!2247369 lt!2247367) (= lambda!296335 lambda!296334))))

(declare-fun bs!1275589 () Bool)

(assert (= bs!1275589 (and b!5525918 d!1750939)))

(assert (=> bs!1275589 (not (= lambda!296335 lambda!296329))))

(declare-fun bs!1275590 () Bool)

(assert (= bs!1275590 (and b!5525918 d!1750415)))

(assert (=> bs!1275590 (not (= lambda!296335 lambda!296223))))

(declare-fun bs!1275591 () Bool)

(assert (= bs!1275591 (and b!5525918 d!1750413)))

(assert (=> bs!1275591 (not (= lambda!296335 lambda!296220))))

(declare-fun bs!1275592 () Bool)

(assert (= bs!1275592 (and b!5525918 d!1750809)))

(assert (=> bs!1275592 (= (= lt!2247369 lt!2247259) (= lambda!296335 lambda!296306))))

(declare-fun bs!1275593 () Bool)

(assert (= bs!1275593 (and b!5525918 d!1750475)))

(assert (=> bs!1275593 (not (= lambda!296335 lambda!296235))))

(declare-fun bs!1275594 () Bool)

(assert (= bs!1275594 (and b!5525918 b!5525747)))

(assert (=> bs!1275594 (= (= lt!2247369 lt!2247352) (= lambda!296335 lambda!296316))))

(declare-fun bs!1275595 () Bool)

(assert (= bs!1275595 (and b!5525918 b!5525661)))

(assert (=> bs!1275595 (= (= lt!2247369 lt!2247334) (= lambda!296335 lambda!296308))))

(declare-fun bs!1275596 () Bool)

(assert (= bs!1275596 (and b!5525918 d!1750929)))

(assert (=> bs!1275596 (not (= lambda!296335 lambda!296327))))

(declare-fun bs!1275597 () Bool)

(assert (= bs!1275597 (and b!5525918 d!1750783)))

(assert (=> bs!1275597 (not (= lambda!296335 lambda!296300))))

(declare-fun bs!1275598 () Bool)

(assert (= bs!1275598 (and b!5525918 b!5524839)))

(assert (=> bs!1275598 (= (= lt!2247369 lt!2247261) (= lambda!296335 lambda!296241))))

(declare-fun bs!1275599 () Bool)

(assert (= bs!1275599 (and b!5525918 b!5525659)))

(assert (=> bs!1275599 (= (= lt!2247369 lt!2247332) (= lambda!296335 lambda!296307))))

(declare-fun bs!1275600 () Bool)

(assert (= bs!1275600 (and b!5525918 b!5524844)))

(assert (=> bs!1275600 (= (= lt!2247369 lt!2247265) (= lambda!296335 lambda!296243))))

(declare-fun bs!1275601 () Bool)

(assert (= bs!1275601 (and b!5525918 b!5525745)))

(assert (=> bs!1275601 (= (= lt!2247369 lt!2247350) (= lambda!296335 lambda!296315))))

(declare-fun bs!1275602 () Bool)

(assert (= bs!1275602 (and b!5525918 d!1750919)))

(assert (=> bs!1275602 (not (= lambda!296335 lambda!296323))))

(declare-fun bs!1275603 () Bool)

(assert (= bs!1275603 (and b!5525918 d!1750409)))

(assert (=> bs!1275603 (not (= lambda!296335 lambda!296217))))

(declare-fun bs!1275604 () Bool)

(assert (= bs!1275604 (and b!5525918 b!5524837)))

(assert (=> bs!1275604 (= (= lt!2247369 lt!2247259) (= lambda!296335 lambda!296240))))

(declare-fun bs!1275605 () Bool)

(assert (= bs!1275605 (and b!5525918 d!1750855)))

(assert (=> bs!1275605 (not (= lambda!296335 lambda!296310))))

(assert (=> b!5525918 true))

(declare-fun d!1750971 () Bool)

(declare-fun e!3416233 () Bool)

(assert (=> d!1750971 e!3416233))

(declare-fun res!2353137 () Bool)

(assert (=> d!1750971 (=> (not res!2353137) (not e!3416233))))

(assert (=> d!1750971 (= res!2353137 (>= lt!2247369 0))))

(declare-fun e!3416232 () Int)

(assert (=> d!1750971 (= lt!2247369 e!3416232)))

(declare-fun c!966686 () Bool)

(assert (=> d!1750971 (= c!966686 ((_ is Cons!62708) (exprs!5395 (h!69157 (Cons!62709 lt!2247106 Nil!62709)))))))

(assert (=> d!1750971 (= (contextDepth!107 (h!69157 (Cons!62709 lt!2247106 Nil!62709))) lt!2247369)))

(assert (=> b!5525916 (= e!3416232 lt!2247367)))

(assert (=> b!5525916 (= lt!2247367 (maxBigInt!0 (regexDepth!211 (h!69156 (exprs!5395 (h!69157 (Cons!62709 lt!2247106 Nil!62709))))) (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 (h!69157 (Cons!62709 lt!2247106 Nil!62709))))))))))

(declare-fun lt!2247366 () Unit!155482)

(assert (=> b!5525916 (= lt!2247366 (lemmaForallRegexDepthBiggerThanTransitive!16 (t!376085 (exprs!5395 (h!69157 (Cons!62709 lt!2247106 Nil!62709)))) lt!2247367 (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 (h!69157 (Cons!62709 lt!2247106 Nil!62709))))))))))

(assert (=> b!5525916 (forall!14687 (t!376085 (exprs!5395 (h!69157 (Cons!62709 lt!2247106 Nil!62709)))) lambda!296334)))

(declare-fun lt!2247368 () Unit!155482)

(assert (=> b!5525916 (= lt!2247368 lt!2247366)))

(declare-fun b!5525917 () Bool)

(assert (=> b!5525917 (= e!3416232 0)))

(assert (=> b!5525918 (= e!3416233 (forall!14687 (exprs!5395 (h!69157 (Cons!62709 lt!2247106 Nil!62709))) lambda!296335))))

(assert (= (and d!1750971 c!966686) b!5525916))

(assert (= (and d!1750971 (not c!966686)) b!5525917))

(assert (= (and d!1750971 res!2353137) b!5525918))

(declare-fun m!6528290 () Bool)

(assert (=> b!5525916 m!6528290))

(declare-fun m!6528292 () Bool)

(assert (=> b!5525916 m!6528292))

(declare-fun m!6528294 () Bool)

(assert (=> b!5525916 m!6528294))

(declare-fun m!6528296 () Bool)

(assert (=> b!5525916 m!6528296))

(assert (=> b!5525916 m!6528290))

(assert (=> b!5525916 m!6528294))

(declare-fun m!6528298 () Bool)

(assert (=> b!5525916 m!6528298))

(assert (=> b!5525916 m!6528294))

(declare-fun m!6528300 () Bool)

(assert (=> b!5525918 m!6528300))

(assert (=> b!5524498 d!1750971))

(declare-fun bs!1275606 () Bool)

(declare-fun b!5525919 () Bool)

(assert (= bs!1275606 (and b!5525919 b!5524493)))

(declare-fun lambda!296336 () Int)

(assert (=> bs!1275606 (= lambda!296336 lambda!296197)))

(declare-fun bs!1275607 () Bool)

(assert (= bs!1275607 (and b!5525919 b!5524498)))

(assert (=> bs!1275607 (= lambda!296336 lambda!296200)))

(declare-fun bs!1275608 () Bool)

(assert (= bs!1275608 (and b!5525919 b!5525754)))

(assert (=> bs!1275608 (= lambda!296336 lambda!296317)))

(declare-fun bs!1275609 () Bool)

(assert (= bs!1275609 (and b!5525919 d!1750931)))

(declare-fun lambda!296337 () Int)

(assert (=> bs!1275609 (not (= lambda!296337 lambda!296328))))

(declare-fun bs!1275610 () Bool)

(assert (= bs!1275610 (and b!5525919 d!1750881)))

(assert (=> bs!1275610 (not (= lambda!296337 lambda!296314))))

(declare-fun lt!2247373 () Int)

(assert (=> bs!1275606 (= (= lt!2247373 lt!2247201) (= lambda!296337 lambda!296198))))

(declare-fun bs!1275611 () Bool)

(assert (= bs!1275611 (and b!5525919 b!5524500)))

(assert (=> bs!1275611 (= (= lt!2247373 lt!2247202) (= lambda!296337 lambda!296202))))

(declare-fun bs!1275612 () Bool)

(assert (= bs!1275612 (and b!5525919 b!5524495)))

(assert (=> bs!1275612 (= (= lt!2247373 lt!2247198) (= lambda!296337 lambda!296199))))

(declare-fun bs!1275613 () Bool)

(assert (= bs!1275613 (and b!5525919 d!1750927)))

(assert (=> bs!1275613 (not (= lambda!296337 lambda!296326))))

(assert (=> bs!1275607 (= (= lt!2247373 lt!2247205) (= lambda!296337 lambda!296201))))

(declare-fun bs!1275614 () Bool)

(assert (= bs!1275614 (and b!5525919 d!1750967)))

(assert (=> bs!1275614 (not (= lambda!296337 lambda!296333))))

(assert (=> bs!1275608 (= (= lt!2247373 lt!2247356) (= lambda!296337 lambda!296318))))

(declare-fun bs!1275615 () Bool)

(assert (= bs!1275615 (and b!5525919 b!5525756)))

(assert (=> bs!1275615 (= (= lt!2247373 lt!2247353) (= lambda!296337 lambda!296319))))

(assert (=> b!5525919 true))

(declare-fun bs!1275616 () Bool)

(declare-fun b!5525921 () Bool)

(assert (= bs!1275616 (and b!5525921 d!1750931)))

(declare-fun lambda!296338 () Int)

(assert (=> bs!1275616 (not (= lambda!296338 lambda!296328))))

(declare-fun bs!1275617 () Bool)

(assert (= bs!1275617 (and b!5525921 b!5525919)))

(declare-fun lt!2247370 () Int)

(assert (=> bs!1275617 (= (= lt!2247370 lt!2247373) (= lambda!296338 lambda!296337))))

(declare-fun bs!1275618 () Bool)

(assert (= bs!1275618 (and b!5525921 d!1750881)))

(assert (=> bs!1275618 (not (= lambda!296338 lambda!296314))))

(declare-fun bs!1275619 () Bool)

(assert (= bs!1275619 (and b!5525921 b!5524493)))

(assert (=> bs!1275619 (= (= lt!2247370 lt!2247201) (= lambda!296338 lambda!296198))))

(declare-fun bs!1275620 () Bool)

(assert (= bs!1275620 (and b!5525921 b!5524500)))

(assert (=> bs!1275620 (= (= lt!2247370 lt!2247202) (= lambda!296338 lambda!296202))))

(declare-fun bs!1275621 () Bool)

(assert (= bs!1275621 (and b!5525921 b!5524495)))

(assert (=> bs!1275621 (= (= lt!2247370 lt!2247198) (= lambda!296338 lambda!296199))))

(declare-fun bs!1275622 () Bool)

(assert (= bs!1275622 (and b!5525921 d!1750927)))

(assert (=> bs!1275622 (not (= lambda!296338 lambda!296326))))

(declare-fun bs!1275623 () Bool)

(assert (= bs!1275623 (and b!5525921 b!5524498)))

(assert (=> bs!1275623 (= (= lt!2247370 lt!2247205) (= lambda!296338 lambda!296201))))

(declare-fun bs!1275624 () Bool)

(assert (= bs!1275624 (and b!5525921 d!1750967)))

(assert (=> bs!1275624 (not (= lambda!296338 lambda!296333))))

(declare-fun bs!1275625 () Bool)

(assert (= bs!1275625 (and b!5525921 b!5525754)))

(assert (=> bs!1275625 (= (= lt!2247370 lt!2247356) (= lambda!296338 lambda!296318))))

(declare-fun bs!1275626 () Bool)

(assert (= bs!1275626 (and b!5525921 b!5525756)))

(assert (=> bs!1275626 (= (= lt!2247370 lt!2247353) (= lambda!296338 lambda!296319))))

(assert (=> b!5525921 true))

(declare-fun d!1750973 () Bool)

(declare-fun e!3416234 () Bool)

(assert (=> d!1750973 e!3416234))

(declare-fun res!2353138 () Bool)

(assert (=> d!1750973 (=> (not res!2353138) (not e!3416234))))

(assert (=> d!1750973 (= res!2353138 (>= lt!2247370 0))))

(declare-fun e!3416235 () Int)

(assert (=> d!1750973 (= lt!2247370 e!3416235)))

(declare-fun c!966687 () Bool)

(assert (=> d!1750973 (= c!966687 ((_ is Cons!62709) (t!376086 (Cons!62709 lt!2247106 Nil!62709))))))

(assert (=> d!1750973 (= (zipperDepth!194 (t!376086 (Cons!62709 lt!2247106 Nil!62709))) lt!2247370)))

(assert (=> b!5525919 (= e!3416235 lt!2247373)))

(assert (=> b!5525919 (= lt!2247373 (maxBigInt!0 (contextDepth!107 (h!69157 (t!376086 (Cons!62709 lt!2247106 Nil!62709)))) (zipperDepth!194 (t!376086 (t!376086 (Cons!62709 lt!2247106 Nil!62709))))))))

(declare-fun lt!2247372 () Unit!155482)

(assert (=> b!5525919 (= lt!2247372 (lemmaForallContextDepthBiggerThanTransitive!99 (t!376086 (t!376086 (Cons!62709 lt!2247106 Nil!62709))) lt!2247373 (zipperDepth!194 (t!376086 (t!376086 (Cons!62709 lt!2247106 Nil!62709)))) lambda!296336))))

(assert (=> b!5525919 (forall!14686 (t!376086 (t!376086 (Cons!62709 lt!2247106 Nil!62709))) lambda!296337)))

(declare-fun lt!2247371 () Unit!155482)

(assert (=> b!5525919 (= lt!2247371 lt!2247372)))

(declare-fun b!5525920 () Bool)

(assert (=> b!5525920 (= e!3416235 0)))

(assert (=> b!5525921 (= e!3416234 (forall!14686 (t!376086 (Cons!62709 lt!2247106 Nil!62709)) lambda!296338))))

(assert (= (and d!1750973 c!966687) b!5525919))

(assert (= (and d!1750973 (not c!966687)) b!5525920))

(assert (= (and d!1750973 res!2353138) b!5525921))

(declare-fun m!6528302 () Bool)

(assert (=> b!5525919 m!6528302))

(declare-fun m!6528304 () Bool)

(assert (=> b!5525919 m!6528304))

(declare-fun m!6528306 () Bool)

(assert (=> b!5525919 m!6528306))

(declare-fun m!6528308 () Bool)

(assert (=> b!5525919 m!6528308))

(assert (=> b!5525919 m!6528302))

(declare-fun m!6528310 () Bool)

(assert (=> b!5525919 m!6528310))

(assert (=> b!5525919 m!6528308))

(assert (=> b!5525919 m!6528302))

(declare-fun m!6528312 () Bool)

(assert (=> b!5525921 m!6528312))

(assert (=> b!5524498 d!1750973))

(declare-fun d!1750975 () Bool)

(assert (=> d!1750975 (= (maxBigInt!0 (contextDepth!107 (h!69157 (Cons!62709 lt!2247106 Nil!62709))) (zipperDepth!194 (t!376086 (Cons!62709 lt!2247106 Nil!62709)))) (ite (>= (contextDepth!107 (h!69157 (Cons!62709 lt!2247106 Nil!62709))) (zipperDepth!194 (t!376086 (Cons!62709 lt!2247106 Nil!62709)))) (contextDepth!107 (h!69157 (Cons!62709 lt!2247106 Nil!62709))) (zipperDepth!194 (t!376086 (Cons!62709 lt!2247106 Nil!62709)))))))

(assert (=> b!5524498 d!1750975))

(declare-fun d!1750977 () Bool)

(declare-fun c!966688 () Bool)

(assert (=> d!1750977 (= c!966688 (isEmpty!34498 (tail!10921 (t!376087 s!2326))))))

(declare-fun e!3416236 () Bool)

(assert (=> d!1750977 (= (matchZipper!1669 (derivationStepZipper!1616 lt!2247095 (head!11826 (t!376087 s!2326))) (tail!10921 (t!376087 s!2326))) e!3416236)))

(declare-fun b!5525922 () Bool)

(assert (=> b!5525922 (= e!3416236 (nullableZipper!1537 (derivationStepZipper!1616 lt!2247095 (head!11826 (t!376087 s!2326)))))))

(declare-fun b!5525923 () Bool)

(assert (=> b!5525923 (= e!3416236 (matchZipper!1669 (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247095 (head!11826 (t!376087 s!2326))) (head!11826 (tail!10921 (t!376087 s!2326)))) (tail!10921 (tail!10921 (t!376087 s!2326)))))))

(assert (= (and d!1750977 c!966688) b!5525922))

(assert (= (and d!1750977 (not c!966688)) b!5525923))

(assert (=> d!1750977 m!6527030))

(assert (=> d!1750977 m!6527902))

(assert (=> b!5525922 m!6527028))

(declare-fun m!6528314 () Bool)

(assert (=> b!5525922 m!6528314))

(assert (=> b!5525923 m!6527030))

(assert (=> b!5525923 m!6527906))

(assert (=> b!5525923 m!6527028))

(assert (=> b!5525923 m!6527906))

(declare-fun m!6528316 () Bool)

(assert (=> b!5525923 m!6528316))

(assert (=> b!5525923 m!6527030))

(assert (=> b!5525923 m!6527910))

(assert (=> b!5525923 m!6528316))

(assert (=> b!5525923 m!6527910))

(declare-fun m!6528318 () Bool)

(assert (=> b!5525923 m!6528318))

(assert (=> b!5524596 d!1750977))

(declare-fun bs!1275627 () Bool)

(declare-fun d!1750979 () Bool)

(assert (= bs!1275627 (and d!1750979 d!1750797)))

(declare-fun lambda!296339 () Int)

(assert (=> bs!1275627 (= lambda!296339 lambda!296303)))

(declare-fun bs!1275628 () Bool)

(assert (= bs!1275628 (and d!1750979 d!1750427)))

(assert (=> bs!1275628 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296339 lambda!296232))))

(declare-fun bs!1275629 () Bool)

(assert (= bs!1275629 (and d!1750979 d!1750455)))

(assert (=> bs!1275629 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296339 lambda!296233))))

(declare-fun bs!1275630 () Bool)

(assert (= bs!1275630 (and d!1750979 d!1750899)))

(assert (=> bs!1275630 (= lambda!296339 lambda!296320)))

(declare-fun bs!1275631 () Bool)

(assert (= bs!1275631 (and d!1750979 d!1750875)))

(assert (=> bs!1275631 (= (= (head!11826 (t!376087 s!2326)) (head!11826 s!2326)) (= lambda!296339 lambda!296311))))

(declare-fun bs!1275632 () Bool)

(assert (= bs!1275632 (and d!1750979 d!1750469)))

(assert (=> bs!1275632 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296339 lambda!296234))))

(declare-fun bs!1275633 () Bool)

(assert (= bs!1275633 (and d!1750979 d!1750849)))

(assert (=> bs!1275633 (= lambda!296339 lambda!296309)))

(declare-fun bs!1275634 () Bool)

(assert (= bs!1275634 (and d!1750979 b!5524057)))

(assert (=> bs!1275634 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296339 lambda!296137))))

(assert (=> d!1750979 true))

(assert (=> d!1750979 (= (derivationStepZipper!1616 lt!2247095 (head!11826 (t!376087 s!2326))) (flatMap!1124 lt!2247095 lambda!296339))))

(declare-fun bs!1275635 () Bool)

(assert (= bs!1275635 d!1750979))

(declare-fun m!6528320 () Bool)

(assert (=> bs!1275635 m!6528320))

(assert (=> b!5524596 d!1750979))

(assert (=> b!5524596 d!1750799))

(assert (=> b!5524596 d!1750801))

(declare-fun d!1750981 () Bool)

(assert (=> d!1750981 (= (head!11825 (exprs!5395 (h!69157 zl!343))) (h!69156 (exprs!5395 (h!69157 zl!343))))))

(assert (=> b!5524620 d!1750981))

(assert (=> b!5524519 d!1750949))

(declare-fun d!1750983 () Bool)

(assert (=> d!1750983 (= (maxBigInt!0 (regexDepth!211 (h!69156 (exprs!5395 lt!2247106))) (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247106))))) (ite (>= (regexDepth!211 (h!69156 (exprs!5395 lt!2247106))) (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247106))))) (regexDepth!211 (h!69156 (exprs!5395 lt!2247106))) (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247106))))))))

(assert (=> b!5524842 d!1750983))

(declare-fun d!1750985 () Bool)

(declare-fun res!2353139 () Bool)

(declare-fun e!3416237 () Bool)

(assert (=> d!1750985 (=> res!2353139 e!3416237)))

(assert (=> d!1750985 (= res!2353139 ((_ is Nil!62708) (t!376085 (exprs!5395 lt!2247106))))))

(assert (=> d!1750985 (= (forall!14687 (t!376085 (exprs!5395 lt!2247106)) lambda!296242) e!3416237)))

(declare-fun b!5525924 () Bool)

(declare-fun e!3416238 () Bool)

(assert (=> b!5525924 (= e!3416237 e!3416238)))

(declare-fun res!2353140 () Bool)

(assert (=> b!5525924 (=> (not res!2353140) (not e!3416238))))

(assert (=> b!5525924 (= res!2353140 (dynLambda!24507 lambda!296242 (h!69156 (t!376085 (exprs!5395 lt!2247106)))))))

(declare-fun b!5525925 () Bool)

(assert (=> b!5525925 (= e!3416238 (forall!14687 (t!376085 (t!376085 (exprs!5395 lt!2247106))) lambda!296242))))

(assert (= (and d!1750985 (not res!2353139)) b!5525924))

(assert (= (and b!5525924 res!2353140) b!5525925))

(declare-fun b_lambda!209609 () Bool)

(assert (=> (not b_lambda!209609) (not b!5525924)))

(declare-fun m!6528322 () Bool)

(assert (=> b!5525924 m!6528322))

(declare-fun m!6528324 () Bool)

(assert (=> b!5525925 m!6528324))

(assert (=> b!5524842 d!1750985))

(declare-fun bs!1275636 () Bool)

(declare-fun d!1750987 () Bool)

(assert (= bs!1275636 (and d!1750987 b!5524842)))

(declare-fun lambda!296340 () Int)

(assert (=> bs!1275636 (= lambda!296340 lambda!296242)))

(declare-fun bs!1275637 () Bool)

(assert (= bs!1275637 (and d!1750987 b!5525918)))

(assert (=> bs!1275637 (= (= lt!2247263 lt!2247369) (= lambda!296340 lambda!296335))))

(declare-fun bs!1275638 () Bool)

(assert (= bs!1275638 (and d!1750987 d!1750407)))

(assert (=> bs!1275638 (not (= lambda!296340 lambda!296214))))

(declare-fun bs!1275639 () Bool)

(assert (= bs!1275639 (and d!1750987 b!5525916)))

(assert (=> bs!1275639 (= (= lt!2247263 lt!2247367) (= lambda!296340 lambda!296334))))

(declare-fun bs!1275640 () Bool)

(assert (= bs!1275640 (and d!1750987 d!1750939)))

(assert (=> bs!1275640 (not (= lambda!296340 lambda!296329))))

(declare-fun bs!1275641 () Bool)

(assert (= bs!1275641 (and d!1750987 d!1750415)))

(assert (=> bs!1275641 (not (= lambda!296340 lambda!296223))))

(declare-fun bs!1275642 () Bool)

(assert (= bs!1275642 (and d!1750987 d!1750413)))

(assert (=> bs!1275642 (not (= lambda!296340 lambda!296220))))

(declare-fun bs!1275643 () Bool)

(assert (= bs!1275643 (and d!1750987 d!1750809)))

(assert (=> bs!1275643 (= (= lt!2247263 lt!2247259) (= lambda!296340 lambda!296306))))

(declare-fun bs!1275644 () Bool)

(assert (= bs!1275644 (and d!1750987 d!1750475)))

(assert (=> bs!1275644 (not (= lambda!296340 lambda!296235))))

(declare-fun bs!1275645 () Bool)

(assert (= bs!1275645 (and d!1750987 b!5525747)))

(assert (=> bs!1275645 (= (= lt!2247263 lt!2247352) (= lambda!296340 lambda!296316))))

(declare-fun bs!1275646 () Bool)

(assert (= bs!1275646 (and d!1750987 b!5525661)))

(assert (=> bs!1275646 (= (= lt!2247263 lt!2247334) (= lambda!296340 lambda!296308))))

(declare-fun bs!1275647 () Bool)

(assert (= bs!1275647 (and d!1750987 d!1750929)))

(assert (=> bs!1275647 (not (= lambda!296340 lambda!296327))))

(declare-fun bs!1275648 () Bool)

(assert (= bs!1275648 (and d!1750987 d!1750783)))

(assert (=> bs!1275648 (not (= lambda!296340 lambda!296300))))

(declare-fun bs!1275649 () Bool)

(assert (= bs!1275649 (and d!1750987 b!5524839)))

(assert (=> bs!1275649 (= (= lt!2247263 lt!2247261) (= lambda!296340 lambda!296241))))

(declare-fun bs!1275650 () Bool)

(assert (= bs!1275650 (and d!1750987 b!5525659)))

(assert (=> bs!1275650 (= (= lt!2247263 lt!2247332) (= lambda!296340 lambda!296307))))

(declare-fun bs!1275651 () Bool)

(assert (= bs!1275651 (and d!1750987 b!5524844)))

(assert (=> bs!1275651 (= (= lt!2247263 lt!2247265) (= lambda!296340 lambda!296243))))

(declare-fun bs!1275652 () Bool)

(assert (= bs!1275652 (and d!1750987 b!5525745)))

(assert (=> bs!1275652 (= (= lt!2247263 lt!2247350) (= lambda!296340 lambda!296315))))

(declare-fun bs!1275653 () Bool)

(assert (= bs!1275653 (and d!1750987 d!1750919)))

(assert (=> bs!1275653 (not (= lambda!296340 lambda!296323))))

(declare-fun bs!1275654 () Bool)

(assert (= bs!1275654 (and d!1750987 d!1750409)))

(assert (=> bs!1275654 (not (= lambda!296340 lambda!296217))))

(declare-fun bs!1275655 () Bool)

(assert (= bs!1275655 (and d!1750987 b!5524837)))

(assert (=> bs!1275655 (= (= lt!2247263 lt!2247259) (= lambda!296340 lambda!296240))))

(declare-fun bs!1275656 () Bool)

(assert (= bs!1275656 (and d!1750987 d!1750855)))

(assert (=> bs!1275656 (not (= lambda!296340 lambda!296310))))

(assert (=> d!1750987 true))

(assert (=> d!1750987 (forall!14687 (t!376085 (exprs!5395 lt!2247106)) lambda!296340)))

(declare-fun lt!2247374 () Unit!155482)

(assert (=> d!1750987 (= lt!2247374 (choose!41982 (t!376085 (exprs!5395 lt!2247106)) lt!2247263 (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247106))))))))

(assert (=> d!1750987 (>= lt!2247263 (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247106)))))))

(assert (=> d!1750987 (= (lemmaForallRegexDepthBiggerThanTransitive!16 (t!376085 (exprs!5395 lt!2247106)) lt!2247263 (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247106))))) lt!2247374)))

(declare-fun bs!1275657 () Bool)

(assert (= bs!1275657 d!1750987))

(declare-fun m!6528326 () Bool)

(assert (=> bs!1275657 m!6528326))

(assert (=> bs!1275657 m!6527216))

(declare-fun m!6528328 () Bool)

(assert (=> bs!1275657 m!6528328))

(assert (=> b!5524842 d!1750987))

(declare-fun bs!1275658 () Bool)

(declare-fun b!5525926 () Bool)

(assert (= bs!1275658 (and b!5525926 b!5524842)))

(declare-fun lt!2247376 () Int)

(declare-fun lambda!296341 () Int)

(assert (=> bs!1275658 (= (= lt!2247376 lt!2247263) (= lambda!296341 lambda!296242))))

(declare-fun bs!1275659 () Bool)

(assert (= bs!1275659 (and b!5525926 b!5525918)))

(assert (=> bs!1275659 (= (= lt!2247376 lt!2247369) (= lambda!296341 lambda!296335))))

(declare-fun bs!1275660 () Bool)

(assert (= bs!1275660 (and b!5525926 d!1750407)))

(assert (=> bs!1275660 (not (= lambda!296341 lambda!296214))))

(declare-fun bs!1275661 () Bool)

(assert (= bs!1275661 (and b!5525926 b!5525916)))

(assert (=> bs!1275661 (= (= lt!2247376 lt!2247367) (= lambda!296341 lambda!296334))))

(declare-fun bs!1275662 () Bool)

(assert (= bs!1275662 (and b!5525926 d!1750939)))

(assert (=> bs!1275662 (not (= lambda!296341 lambda!296329))))

(declare-fun bs!1275663 () Bool)

(assert (= bs!1275663 (and b!5525926 d!1750415)))

(assert (=> bs!1275663 (not (= lambda!296341 lambda!296223))))

(declare-fun bs!1275664 () Bool)

(assert (= bs!1275664 (and b!5525926 d!1750413)))

(assert (=> bs!1275664 (not (= lambda!296341 lambda!296220))))

(declare-fun bs!1275665 () Bool)

(assert (= bs!1275665 (and b!5525926 d!1750809)))

(assert (=> bs!1275665 (= (= lt!2247376 lt!2247259) (= lambda!296341 lambda!296306))))

(declare-fun bs!1275666 () Bool)

(assert (= bs!1275666 (and b!5525926 d!1750475)))

(assert (=> bs!1275666 (not (= lambda!296341 lambda!296235))))

(declare-fun bs!1275667 () Bool)

(assert (= bs!1275667 (and b!5525926 b!5525661)))

(assert (=> bs!1275667 (= (= lt!2247376 lt!2247334) (= lambda!296341 lambda!296308))))

(declare-fun bs!1275668 () Bool)

(assert (= bs!1275668 (and b!5525926 d!1750929)))

(assert (=> bs!1275668 (not (= lambda!296341 lambda!296327))))

(declare-fun bs!1275669 () Bool)

(assert (= bs!1275669 (and b!5525926 d!1750783)))

(assert (=> bs!1275669 (not (= lambda!296341 lambda!296300))))

(declare-fun bs!1275670 () Bool)

(assert (= bs!1275670 (and b!5525926 b!5524839)))

(assert (=> bs!1275670 (= (= lt!2247376 lt!2247261) (= lambda!296341 lambda!296241))))

(declare-fun bs!1275671 () Bool)

(assert (= bs!1275671 (and b!5525926 b!5525659)))

(assert (=> bs!1275671 (= (= lt!2247376 lt!2247332) (= lambda!296341 lambda!296307))))

(declare-fun bs!1275672 () Bool)

(assert (= bs!1275672 (and b!5525926 d!1750987)))

(assert (=> bs!1275672 (= (= lt!2247376 lt!2247263) (= lambda!296341 lambda!296340))))

(declare-fun bs!1275673 () Bool)

(assert (= bs!1275673 (and b!5525926 b!5525747)))

(assert (=> bs!1275673 (= (= lt!2247376 lt!2247352) (= lambda!296341 lambda!296316))))

(declare-fun bs!1275674 () Bool)

(assert (= bs!1275674 (and b!5525926 b!5524844)))

(assert (=> bs!1275674 (= (= lt!2247376 lt!2247265) (= lambda!296341 lambda!296243))))

(declare-fun bs!1275675 () Bool)

(assert (= bs!1275675 (and b!5525926 b!5525745)))

(assert (=> bs!1275675 (= (= lt!2247376 lt!2247350) (= lambda!296341 lambda!296315))))

(declare-fun bs!1275676 () Bool)

(assert (= bs!1275676 (and b!5525926 d!1750919)))

(assert (=> bs!1275676 (not (= lambda!296341 lambda!296323))))

(declare-fun bs!1275677 () Bool)

(assert (= bs!1275677 (and b!5525926 d!1750409)))

(assert (=> bs!1275677 (not (= lambda!296341 lambda!296217))))

(declare-fun bs!1275678 () Bool)

(assert (= bs!1275678 (and b!5525926 b!5524837)))

(assert (=> bs!1275678 (= (= lt!2247376 lt!2247259) (= lambda!296341 lambda!296240))))

(declare-fun bs!1275679 () Bool)

(assert (= bs!1275679 (and b!5525926 d!1750855)))

(assert (=> bs!1275679 (not (= lambda!296341 lambda!296310))))

(assert (=> b!5525926 true))

(declare-fun bs!1275680 () Bool)

(declare-fun b!5525928 () Bool)

(assert (= bs!1275680 (and b!5525928 b!5524842)))

(declare-fun lt!2247378 () Int)

(declare-fun lambda!296342 () Int)

(assert (=> bs!1275680 (= (= lt!2247378 lt!2247263) (= lambda!296342 lambda!296242))))

(declare-fun bs!1275681 () Bool)

(assert (= bs!1275681 (and b!5525928 b!5525918)))

(assert (=> bs!1275681 (= (= lt!2247378 lt!2247369) (= lambda!296342 lambda!296335))))

(declare-fun bs!1275682 () Bool)

(assert (= bs!1275682 (and b!5525928 d!1750407)))

(assert (=> bs!1275682 (not (= lambda!296342 lambda!296214))))

(declare-fun bs!1275683 () Bool)

(assert (= bs!1275683 (and b!5525928 b!5525916)))

(assert (=> bs!1275683 (= (= lt!2247378 lt!2247367) (= lambda!296342 lambda!296334))))

(declare-fun bs!1275684 () Bool)

(assert (= bs!1275684 (and b!5525928 d!1750939)))

(assert (=> bs!1275684 (not (= lambda!296342 lambda!296329))))

(declare-fun bs!1275685 () Bool)

(assert (= bs!1275685 (and b!5525928 d!1750415)))

(assert (=> bs!1275685 (not (= lambda!296342 lambda!296223))))

(declare-fun bs!1275686 () Bool)

(assert (= bs!1275686 (and b!5525928 d!1750413)))

(assert (=> bs!1275686 (not (= lambda!296342 lambda!296220))))

(declare-fun bs!1275687 () Bool)

(assert (= bs!1275687 (and b!5525928 d!1750809)))

(assert (=> bs!1275687 (= (= lt!2247378 lt!2247259) (= lambda!296342 lambda!296306))))

(declare-fun bs!1275688 () Bool)

(assert (= bs!1275688 (and b!5525928 d!1750475)))

(assert (=> bs!1275688 (not (= lambda!296342 lambda!296235))))

(declare-fun bs!1275689 () Bool)

(assert (= bs!1275689 (and b!5525928 b!5525661)))

(assert (=> bs!1275689 (= (= lt!2247378 lt!2247334) (= lambda!296342 lambda!296308))))

(declare-fun bs!1275690 () Bool)

(assert (= bs!1275690 (and b!5525928 d!1750929)))

(assert (=> bs!1275690 (not (= lambda!296342 lambda!296327))))

(declare-fun bs!1275691 () Bool)

(assert (= bs!1275691 (and b!5525928 d!1750783)))

(assert (=> bs!1275691 (not (= lambda!296342 lambda!296300))))

(declare-fun bs!1275692 () Bool)

(assert (= bs!1275692 (and b!5525928 b!5524839)))

(assert (=> bs!1275692 (= (= lt!2247378 lt!2247261) (= lambda!296342 lambda!296241))))

(declare-fun bs!1275693 () Bool)

(assert (= bs!1275693 (and b!5525928 b!5525659)))

(assert (=> bs!1275693 (= (= lt!2247378 lt!2247332) (= lambda!296342 lambda!296307))))

(declare-fun bs!1275694 () Bool)

(assert (= bs!1275694 (and b!5525928 d!1750987)))

(assert (=> bs!1275694 (= (= lt!2247378 lt!2247263) (= lambda!296342 lambda!296340))))

(declare-fun bs!1275695 () Bool)

(assert (= bs!1275695 (and b!5525928 b!5525747)))

(assert (=> bs!1275695 (= (= lt!2247378 lt!2247352) (= lambda!296342 lambda!296316))))

(declare-fun bs!1275696 () Bool)

(assert (= bs!1275696 (and b!5525928 b!5524844)))

(assert (=> bs!1275696 (= (= lt!2247378 lt!2247265) (= lambda!296342 lambda!296243))))

(declare-fun bs!1275697 () Bool)

(assert (= bs!1275697 (and b!5525928 b!5525745)))

(assert (=> bs!1275697 (= (= lt!2247378 lt!2247350) (= lambda!296342 lambda!296315))))

(declare-fun bs!1275698 () Bool)

(assert (= bs!1275698 (and b!5525928 d!1750919)))

(assert (=> bs!1275698 (not (= lambda!296342 lambda!296323))))

(declare-fun bs!1275699 () Bool)

(assert (= bs!1275699 (and b!5525928 d!1750409)))

(assert (=> bs!1275699 (not (= lambda!296342 lambda!296217))))

(declare-fun bs!1275700 () Bool)

(assert (= bs!1275700 (and b!5525928 b!5524837)))

(assert (=> bs!1275700 (= (= lt!2247378 lt!2247259) (= lambda!296342 lambda!296240))))

(declare-fun bs!1275701 () Bool)

(assert (= bs!1275701 (and b!5525928 d!1750855)))

(assert (=> bs!1275701 (not (= lambda!296342 lambda!296310))))

(declare-fun bs!1275702 () Bool)

(assert (= bs!1275702 (and b!5525928 b!5525926)))

(assert (=> bs!1275702 (= (= lt!2247378 lt!2247376) (= lambda!296342 lambda!296341))))

(assert (=> b!5525928 true))

(declare-fun d!1750989 () Bool)

(declare-fun e!3416240 () Bool)

(assert (=> d!1750989 e!3416240))

(declare-fun res!2353141 () Bool)

(assert (=> d!1750989 (=> (not res!2353141) (not e!3416240))))

(assert (=> d!1750989 (= res!2353141 (>= lt!2247378 0))))

(declare-fun e!3416239 () Int)

(assert (=> d!1750989 (= lt!2247378 e!3416239)))

(declare-fun c!966689 () Bool)

(assert (=> d!1750989 (= c!966689 ((_ is Cons!62708) (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247106))))))))

(assert (=> d!1750989 (= (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 lt!2247106)))) lt!2247378)))

(assert (=> b!5525926 (= e!3416239 lt!2247376)))

(assert (=> b!5525926 (= lt!2247376 (maxBigInt!0 (regexDepth!211 (h!69156 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247106)))))) (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247106)))))))))))

(declare-fun lt!2247375 () Unit!155482)

(assert (=> b!5525926 (= lt!2247375 (lemmaForallRegexDepthBiggerThanTransitive!16 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247106))))) lt!2247376 (contextDepth!107 (Context!9791 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247106)))))))))))

(assert (=> b!5525926 (forall!14687 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247106))))) lambda!296341)))

(declare-fun lt!2247377 () Unit!155482)

(assert (=> b!5525926 (= lt!2247377 lt!2247375)))

(declare-fun b!5525927 () Bool)

(assert (=> b!5525927 (= e!3416239 0)))

(assert (=> b!5525928 (= e!3416240 (forall!14687 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247106)))) lambda!296342))))

(assert (= (and d!1750989 c!966689) b!5525926))

(assert (= (and d!1750989 (not c!966689)) b!5525927))

(assert (= (and d!1750989 res!2353141) b!5525928))

(declare-fun m!6528330 () Bool)

(assert (=> b!5525926 m!6528330))

(declare-fun m!6528332 () Bool)

(assert (=> b!5525926 m!6528332))

(declare-fun m!6528334 () Bool)

(assert (=> b!5525926 m!6528334))

(declare-fun m!6528336 () Bool)

(assert (=> b!5525926 m!6528336))

(assert (=> b!5525926 m!6528330))

(assert (=> b!5525926 m!6528334))

(declare-fun m!6528338 () Bool)

(assert (=> b!5525926 m!6528338))

(assert (=> b!5525926 m!6528334))

(declare-fun m!6528340 () Bool)

(assert (=> b!5525928 m!6528340))

(assert (=> b!5524842 d!1750989))

(declare-fun bm!409917 () Bool)

(declare-fun call!409927 () Int)

(declare-fun c!966692 () Bool)

(assert (=> bm!409917 (= call!409927 (regexDepth!211 (ite c!966692 (regTwo!31535 (h!69156 (exprs!5395 lt!2247106))) (regTwo!31534 (h!69156 (exprs!5395 lt!2247106))))))))

(declare-fun b!5525929 () Bool)

(declare-fun e!3416245 () Int)

(declare-fun call!409924 () Int)

(assert (=> b!5525929 (= e!3416245 (+ 1 call!409924))))

(declare-fun b!5525930 () Bool)

(declare-fun e!3416241 () Bool)

(declare-fun lt!2247379 () Int)

(assert (=> b!5525930 (= e!3416241 (> lt!2247379 call!409927))))

(declare-fun b!5525931 () Bool)

(declare-fun c!966690 () Bool)

(assert (=> b!5525931 (= c!966690 ((_ is Star!15511) (h!69156 (exprs!5395 lt!2247106))))))

(declare-fun e!3416246 () Bool)

(declare-fun e!3416247 () Bool)

(assert (=> b!5525931 (= e!3416246 e!3416247)))

(declare-fun b!5525932 () Bool)

(assert (=> b!5525932 (= e!3416245 1)))

(declare-fun b!5525933 () Bool)

(declare-fun e!3416244 () Bool)

(declare-fun e!3416250 () Bool)

(assert (=> b!5525933 (= e!3416244 e!3416250)))

(assert (=> b!5525933 (= c!966692 ((_ is Union!15511) (h!69156 (exprs!5395 lt!2247106))))))

(declare-fun b!5525934 () Bool)

(declare-fun e!3416249 () Int)

(declare-fun e!3416243 () Int)

(assert (=> b!5525934 (= e!3416249 e!3416243)))

(declare-fun c!966694 () Bool)

(assert (=> b!5525934 (= c!966694 ((_ is Star!15511) (h!69156 (exprs!5395 lt!2247106))))))

(declare-fun d!1750991 () Bool)

(assert (=> d!1750991 e!3416244))

(declare-fun res!2353142 () Bool)

(assert (=> d!1750991 (=> (not res!2353142) (not e!3416244))))

(assert (=> d!1750991 (= res!2353142 (> lt!2247379 0))))

(assert (=> d!1750991 (= lt!2247379 e!3416249)))

(declare-fun c!966693 () Bool)

(assert (=> d!1750991 (= c!966693 ((_ is ElementMatch!15511) (h!69156 (exprs!5395 lt!2247106))))))

(assert (=> d!1750991 (= (regexDepth!211 (h!69156 (exprs!5395 lt!2247106))) lt!2247379)))

(declare-fun b!5525935 () Bool)

(assert (=> b!5525935 (= e!3416247 (= lt!2247379 1))))

(declare-fun b!5525936 () Bool)

(declare-fun res!2353143 () Bool)

(assert (=> b!5525936 (=> (not res!2353143) (not e!3416241))))

(declare-fun call!409925 () Int)

(assert (=> b!5525936 (= res!2353143 (> lt!2247379 call!409925))))

(assert (=> b!5525936 (= e!3416246 e!3416241)))

(declare-fun bm!409918 () Bool)

(declare-fun call!409928 () Int)

(declare-fun c!966696 () Bool)

(assert (=> bm!409918 (= call!409928 (regexDepth!211 (ite c!966694 (reg!15840 (h!69156 (exprs!5395 lt!2247106))) (ite c!966696 (regOne!31535 (h!69156 (exprs!5395 lt!2247106))) (regTwo!31534 (h!69156 (exprs!5395 lt!2247106)))))))))

(declare-fun b!5525937 () Bool)

(declare-fun e!3416248 () Int)

(assert (=> b!5525937 (= e!3416248 (+ 1 call!409924))))

(declare-fun b!5525938 () Bool)

(assert (=> b!5525938 (= c!966696 ((_ is Union!15511) (h!69156 (exprs!5395 lt!2247106))))))

(assert (=> b!5525938 (= e!3416243 e!3416248)))

(declare-fun b!5525939 () Bool)

(assert (=> b!5525939 (= e!3416247 (> lt!2247379 call!409925))))

(declare-fun b!5525940 () Bool)

(assert (=> b!5525940 (= e!3416243 (+ 1 call!409928))))

(declare-fun b!5525941 () Bool)

(declare-fun e!3416242 () Bool)

(assert (=> b!5525941 (= e!3416242 (> lt!2247379 call!409927))))

(declare-fun call!409926 () Int)

(declare-fun call!409922 () Int)

(declare-fun bm!409919 () Bool)

(assert (=> bm!409919 (= call!409924 (maxBigInt!0 (ite c!966696 call!409926 call!409922) (ite c!966696 call!409922 call!409926)))))

(declare-fun bm!409920 () Bool)

(declare-fun call!409923 () Int)

(assert (=> bm!409920 (= call!409925 call!409923)))

(declare-fun b!5525942 () Bool)

(assert (=> b!5525942 (= e!3416248 e!3416245)))

(declare-fun c!966695 () Bool)

(assert (=> b!5525942 (= c!966695 ((_ is Concat!24356) (h!69156 (exprs!5395 lt!2247106))))))

(declare-fun bm!409921 () Bool)

(declare-fun c!966691 () Bool)

(assert (=> bm!409921 (= call!409923 (regexDepth!211 (ite c!966692 (regOne!31535 (h!69156 (exprs!5395 lt!2247106))) (ite c!966691 (regOne!31534 (h!69156 (exprs!5395 lt!2247106))) (reg!15840 (h!69156 (exprs!5395 lt!2247106)))))))))

(declare-fun bm!409922 () Bool)

(assert (=> bm!409922 (= call!409926 call!409928)))

(declare-fun b!5525943 () Bool)

(assert (=> b!5525943 (= e!3416249 1)))

(declare-fun b!5525944 () Bool)

(assert (=> b!5525944 (= e!3416250 e!3416242)))

(declare-fun res!2353144 () Bool)

(assert (=> b!5525944 (= res!2353144 (> lt!2247379 call!409923))))

(assert (=> b!5525944 (=> (not res!2353144) (not e!3416242))))

(declare-fun b!5525945 () Bool)

(assert (=> b!5525945 (= e!3416250 e!3416246)))

(assert (=> b!5525945 (= c!966691 ((_ is Concat!24356) (h!69156 (exprs!5395 lt!2247106))))))

(declare-fun bm!409923 () Bool)

(assert (=> bm!409923 (= call!409922 (regexDepth!211 (ite c!966696 (regTwo!31535 (h!69156 (exprs!5395 lt!2247106))) (regOne!31534 (h!69156 (exprs!5395 lt!2247106))))))))

(assert (= (and d!1750991 c!966693) b!5525943))

(assert (= (and d!1750991 (not c!966693)) b!5525934))

(assert (= (and b!5525934 c!966694) b!5525940))

(assert (= (and b!5525934 (not c!966694)) b!5525938))

(assert (= (and b!5525938 c!966696) b!5525937))

(assert (= (and b!5525938 (not c!966696)) b!5525942))

(assert (= (and b!5525942 c!966695) b!5525929))

(assert (= (and b!5525942 (not c!966695)) b!5525932))

(assert (= (or b!5525937 b!5525929) bm!409923))

(assert (= (or b!5525937 b!5525929) bm!409922))

(assert (= (or b!5525937 b!5525929) bm!409919))

(assert (= (or b!5525940 bm!409922) bm!409918))

(assert (= (and d!1750991 res!2353142) b!5525933))

(assert (= (and b!5525933 c!966692) b!5525944))

(assert (= (and b!5525933 (not c!966692)) b!5525945))

(assert (= (and b!5525944 res!2353144) b!5525941))

(assert (= (and b!5525945 c!966691) b!5525936))

(assert (= (and b!5525945 (not c!966691)) b!5525931))

(assert (= (and b!5525936 res!2353143) b!5525930))

(assert (= (and b!5525931 c!966690) b!5525939))

(assert (= (and b!5525931 (not c!966690)) b!5525935))

(assert (= (or b!5525936 b!5525939) bm!409920))

(assert (= (or b!5525941 b!5525930) bm!409917))

(assert (= (or b!5525944 bm!409920) bm!409921))

(declare-fun m!6528342 () Bool)

(assert (=> bm!409923 m!6528342))

(declare-fun m!6528344 () Bool)

(assert (=> bm!409918 m!6528344))

(declare-fun m!6528346 () Bool)

(assert (=> bm!409917 m!6528346))

(declare-fun m!6528348 () Bool)

(assert (=> bm!409921 m!6528348))

(declare-fun m!6528350 () Bool)

(assert (=> bm!409919 m!6528350))

(assert (=> b!5524842 d!1750991))

(assert (=> bm!409658 d!1750923))

(declare-fun d!1750993 () Bool)

(declare-fun c!966697 () Bool)

(assert (=> d!1750993 (= c!966697 (isEmpty!34498 (tail!10921 (t!376087 s!2326))))))

(declare-fun e!3416251 () Bool)

(assert (=> d!1750993 (= (matchZipper!1669 (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247109 (h!69158 s!2326)) (head!11826 (t!376087 s!2326))) (tail!10921 (t!376087 s!2326))) e!3416251)))

(declare-fun b!5525946 () Bool)

(assert (=> b!5525946 (= e!3416251 (nullableZipper!1537 (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247109 (h!69158 s!2326)) (head!11826 (t!376087 s!2326)))))))

(declare-fun b!5525947 () Bool)

(assert (=> b!5525947 (= e!3416251 (matchZipper!1669 (derivationStepZipper!1616 (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247109 (h!69158 s!2326)) (head!11826 (t!376087 s!2326))) (head!11826 (tail!10921 (t!376087 s!2326)))) (tail!10921 (tail!10921 (t!376087 s!2326)))))))

(assert (= (and d!1750993 c!966697) b!5525946))

(assert (= (and d!1750993 (not c!966697)) b!5525947))

(assert (=> d!1750993 m!6527030))

(assert (=> d!1750993 m!6527902))

(assert (=> b!5525946 m!6527084))

(declare-fun m!6528352 () Bool)

(assert (=> b!5525946 m!6528352))

(assert (=> b!5525947 m!6527030))

(assert (=> b!5525947 m!6527906))

(assert (=> b!5525947 m!6527084))

(assert (=> b!5525947 m!6527906))

(declare-fun m!6528354 () Bool)

(assert (=> b!5525947 m!6528354))

(assert (=> b!5525947 m!6527030))

(assert (=> b!5525947 m!6527910))

(assert (=> b!5525947 m!6528354))

(assert (=> b!5525947 m!6527910))

(declare-fun m!6528356 () Bool)

(assert (=> b!5525947 m!6528356))

(assert (=> b!5524715 d!1750993))

(declare-fun bs!1275703 () Bool)

(declare-fun d!1750995 () Bool)

(assert (= bs!1275703 (and d!1750995 d!1750797)))

(declare-fun lambda!296343 () Int)

(assert (=> bs!1275703 (= lambda!296343 lambda!296303)))

(declare-fun bs!1275704 () Bool)

(assert (= bs!1275704 (and d!1750995 d!1750427)))

(assert (=> bs!1275704 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296343 lambda!296232))))

(declare-fun bs!1275705 () Bool)

(assert (= bs!1275705 (and d!1750995 d!1750455)))

(assert (=> bs!1275705 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296343 lambda!296233))))

(declare-fun bs!1275706 () Bool)

(assert (= bs!1275706 (and d!1750995 d!1750899)))

(assert (=> bs!1275706 (= lambda!296343 lambda!296320)))

(declare-fun bs!1275707 () Bool)

(assert (= bs!1275707 (and d!1750995 d!1750979)))

(assert (=> bs!1275707 (= lambda!296343 lambda!296339)))

(declare-fun bs!1275708 () Bool)

(assert (= bs!1275708 (and d!1750995 d!1750875)))

(assert (=> bs!1275708 (= (= (head!11826 (t!376087 s!2326)) (head!11826 s!2326)) (= lambda!296343 lambda!296311))))

(declare-fun bs!1275709 () Bool)

(assert (= bs!1275709 (and d!1750995 d!1750469)))

(assert (=> bs!1275709 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296343 lambda!296234))))

(declare-fun bs!1275710 () Bool)

(assert (= bs!1275710 (and d!1750995 d!1750849)))

(assert (=> bs!1275710 (= lambda!296343 lambda!296309)))

(declare-fun bs!1275711 () Bool)

(assert (= bs!1275711 (and d!1750995 b!5524057)))

(assert (=> bs!1275711 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296343 lambda!296137))))

(assert (=> d!1750995 true))

(assert (=> d!1750995 (= (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247109 (h!69158 s!2326)) (head!11826 (t!376087 s!2326))) (flatMap!1124 (derivationStepZipper!1616 lt!2247109 (h!69158 s!2326)) lambda!296343))))

(declare-fun bs!1275712 () Bool)

(assert (= bs!1275712 d!1750995))

(assert (=> bs!1275712 m!6526594))

(declare-fun m!6528358 () Bool)

(assert (=> bs!1275712 m!6528358))

(assert (=> b!5524715 d!1750995))

(assert (=> b!5524715 d!1750799))

(assert (=> b!5524715 d!1750801))

(assert (=> d!1750419 d!1750923))

(assert (=> d!1750419 d!1750429))

(assert (=> b!5524625 d!1750471))

(declare-fun d!1750997 () Bool)

(assert (=> d!1750997 (= ($colon$colon!1590 (exprs!5395 lt!2247098) (ite (or c!966381 c!966383) (regTwo!31534 r!7292) r!7292)) (Cons!62708 (ite (or c!966381 c!966383) (regTwo!31534 r!7292) r!7292) (exprs!5395 lt!2247098)))))

(assert (=> bm!409697 d!1750997))

(declare-fun d!1750999 () Bool)

(assert (=> d!1750999 true))

(declare-fun setRes!36746 () Bool)

(assert (=> d!1750999 setRes!36746))

(declare-fun condSetEmpty!36746 () Bool)

(declare-fun res!2353147 () (InoxSet Context!9790))

(assert (=> d!1750999 (= condSetEmpty!36746 (= res!2353147 ((as const (Array Context!9790 Bool)) false)))))

(assert (=> d!1750999 (= (choose!41974 lt!2247109 lambda!296137) res!2353147)))

(declare-fun setIsEmpty!36746 () Bool)

(assert (=> setIsEmpty!36746 setRes!36746))

(declare-fun tp!1520338 () Bool)

(declare-fun setElem!36746 () Context!9790)

(declare-fun e!3416254 () Bool)

(declare-fun setNonEmpty!36746 () Bool)

(assert (=> setNonEmpty!36746 (= setRes!36746 (and tp!1520338 (inv!82024 setElem!36746) e!3416254))))

(declare-fun setRest!36746 () (InoxSet Context!9790))

(assert (=> setNonEmpty!36746 (= res!2353147 ((_ map or) (store ((as const (Array Context!9790 Bool)) false) setElem!36746 true) setRest!36746))))

(declare-fun b!5525950 () Bool)

(declare-fun tp!1520339 () Bool)

(assert (=> b!5525950 (= e!3416254 tp!1520339)))

(assert (= (and d!1750999 condSetEmpty!36746) setIsEmpty!36746))

(assert (= (and d!1750999 (not condSetEmpty!36746)) setNonEmpty!36746))

(assert (= setNonEmpty!36746 b!5525950))

(declare-fun m!6528360 () Bool)

(assert (=> setNonEmpty!36746 m!6528360))

(assert (=> d!1750433 d!1750999))

(declare-fun d!1751001 () Bool)

(declare-fun e!3416256 () Bool)

(assert (=> d!1751001 e!3416256))

(declare-fun res!2353148 () Bool)

(assert (=> d!1751001 (=> (not res!2353148) (not e!3416256))))

(declare-fun lt!2247380 () List!62834)

(assert (=> d!1751001 (= res!2353148 (= (content!11278 lt!2247380) ((_ map or) (content!11278 (_1!35911 (get!21582 lt!2247213))) (content!11278 (_2!35911 (get!21582 lt!2247213))))))))

(declare-fun e!3416255 () List!62834)

(assert (=> d!1751001 (= lt!2247380 e!3416255)))

(declare-fun c!966698 () Bool)

(assert (=> d!1751001 (= c!966698 ((_ is Nil!62710) (_1!35911 (get!21582 lt!2247213))))))

(assert (=> d!1751001 (= (++!13759 (_1!35911 (get!21582 lt!2247213)) (_2!35911 (get!21582 lt!2247213))) lt!2247380)))

(declare-fun b!5525953 () Bool)

(declare-fun res!2353149 () Bool)

(assert (=> b!5525953 (=> (not res!2353149) (not e!3416256))))

(assert (=> b!5525953 (= res!2353149 (= (size!39940 lt!2247380) (+ (size!39940 (_1!35911 (get!21582 lt!2247213))) (size!39940 (_2!35911 (get!21582 lt!2247213))))))))

(declare-fun b!5525952 () Bool)

(assert (=> b!5525952 (= e!3416255 (Cons!62710 (h!69158 (_1!35911 (get!21582 lt!2247213))) (++!13759 (t!376087 (_1!35911 (get!21582 lt!2247213))) (_2!35911 (get!21582 lt!2247213)))))))

(declare-fun b!5525954 () Bool)

(assert (=> b!5525954 (= e!3416256 (or (not (= (_2!35911 (get!21582 lt!2247213)) Nil!62710)) (= lt!2247380 (_1!35911 (get!21582 lt!2247213)))))))

(declare-fun b!5525951 () Bool)

(assert (=> b!5525951 (= e!3416255 (_2!35911 (get!21582 lt!2247213)))))

(assert (= (and d!1751001 c!966698) b!5525951))

(assert (= (and d!1751001 (not c!966698)) b!5525952))

(assert (= (and d!1751001 res!2353148) b!5525953))

(assert (= (and b!5525953 res!2353149) b!5525954))

(declare-fun m!6528362 () Bool)

(assert (=> d!1751001 m!6528362))

(declare-fun m!6528364 () Bool)

(assert (=> d!1751001 m!6528364))

(declare-fun m!6528366 () Bool)

(assert (=> d!1751001 m!6528366))

(declare-fun m!6528368 () Bool)

(assert (=> b!5525953 m!6528368))

(declare-fun m!6528370 () Bool)

(assert (=> b!5525953 m!6528370))

(declare-fun m!6528372 () Bool)

(assert (=> b!5525953 m!6528372))

(declare-fun m!6528374 () Bool)

(assert (=> b!5525952 m!6528374))

(assert (=> b!5524524 d!1751001))

(assert (=> b!5524524 d!1750957))

(declare-fun d!1751003 () Bool)

(declare-fun res!2353150 () Bool)

(declare-fun e!3416257 () Bool)

(assert (=> d!1751003 (=> res!2353150 e!3416257)))

(assert (=> d!1751003 (= res!2353150 ((_ is Nil!62708) (exprs!5395 setElem!36731)))))

(assert (=> d!1751003 (= (forall!14687 (exprs!5395 setElem!36731) lambda!296223) e!3416257)))

(declare-fun b!5525955 () Bool)

(declare-fun e!3416258 () Bool)

(assert (=> b!5525955 (= e!3416257 e!3416258)))

(declare-fun res!2353151 () Bool)

(assert (=> b!5525955 (=> (not res!2353151) (not e!3416258))))

(assert (=> b!5525955 (= res!2353151 (dynLambda!24507 lambda!296223 (h!69156 (exprs!5395 setElem!36731))))))

(declare-fun b!5525956 () Bool)

(assert (=> b!5525956 (= e!3416258 (forall!14687 (t!376085 (exprs!5395 setElem!36731)) lambda!296223))))

(assert (= (and d!1751003 (not res!2353150)) b!5525955))

(assert (= (and b!5525955 res!2353151) b!5525956))

(declare-fun b_lambda!209611 () Bool)

(assert (=> (not b_lambda!209611) (not b!5525955)))

(declare-fun m!6528376 () Bool)

(assert (=> b!5525955 m!6528376))

(declare-fun m!6528378 () Bool)

(assert (=> b!5525956 m!6528378))

(assert (=> d!1750415 d!1751003))

(declare-fun d!1751005 () Bool)

(assert (=> d!1751005 (= (nullable!5545 (regOne!31534 (regTwo!31534 r!7292))) (nullableFct!1669 (regOne!31534 (regTwo!31534 r!7292))))))

(declare-fun bs!1275713 () Bool)

(assert (= bs!1275713 d!1751005))

(declare-fun m!6528380 () Bool)

(assert (=> bs!1275713 m!6528380))

(assert (=> b!5524775 d!1751005))

(declare-fun d!1751007 () Bool)

(assert (=> d!1751007 (= (head!11825 (unfocusZipperList!939 zl!343)) (h!69156 (unfocusZipperList!939 zl!343)))))

(assert (=> b!5524577 d!1751007))

(declare-fun d!1751009 () Bool)

(assert (=> d!1751009 (= (flatMap!1124 lt!2247109 lambda!296232) (choose!41974 lt!2247109 lambda!296232))))

(declare-fun bs!1275714 () Bool)

(assert (= bs!1275714 d!1751009))

(declare-fun m!6528382 () Bool)

(assert (=> bs!1275714 m!6528382))

(assert (=> d!1750427 d!1751009))

(declare-fun b!5525957 () Bool)

(declare-fun e!3416260 () (InoxSet Context!9790))

(assert (=> b!5525957 (= e!3416260 (store ((as const (Array Context!9790 Bool)) false) (ite c!966370 lt!2247098 (Context!9791 call!409685)) true))))

(declare-fun bm!409924 () Bool)

(declare-fun c!966699 () Bool)

(declare-fun call!409930 () List!62832)

(declare-fun c!966701 () Bool)

(declare-fun call!409932 () (InoxSet Context!9790))

(declare-fun c!966702 () Bool)

(assert (=> bm!409924 (= call!409932 (derivationStepZipperDown!853 (ite c!966702 (regTwo!31535 (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292)))) (ite c!966699 (regTwo!31534 (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292)))) (ite c!966701 (regOne!31534 (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292)))) (reg!15840 (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292))))))) (ite (or c!966702 c!966699) (ite c!966370 lt!2247098 (Context!9791 call!409685)) (Context!9791 call!409930)) (h!69158 s!2326)))))

(declare-fun bm!409925 () Bool)

(declare-fun call!409929 () List!62832)

(assert (=> bm!409925 (= call!409930 call!409929)))

(declare-fun b!5525958 () Bool)

(declare-fun c!966700 () Bool)

(assert (=> b!5525958 (= c!966700 ((_ is Star!15511) (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292)))))))

(declare-fun e!3416264 () (InoxSet Context!9790))

(declare-fun e!3416259 () (InoxSet Context!9790))

(assert (=> b!5525958 (= e!3416264 e!3416259)))

(declare-fun d!1751011 () Bool)

(declare-fun c!966703 () Bool)

(assert (=> d!1751011 (= c!966703 (and ((_ is ElementMatch!15511) (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292)))) (= (c!966149 (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292)))) (h!69158 s!2326))))))

(assert (=> d!1751011 (= (derivationStepZipperDown!853 (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292))) (ite c!966370 lt!2247098 (Context!9791 call!409685)) (h!69158 s!2326)) e!3416260)))

(declare-fun b!5525959 () Bool)

(declare-fun e!3416261 () (InoxSet Context!9790))

(declare-fun call!409934 () (InoxSet Context!9790))

(declare-fun call!409933 () (InoxSet Context!9790))

(assert (=> b!5525959 (= e!3416261 ((_ map or) call!409934 call!409933))))

(declare-fun b!5525960 () Bool)

(declare-fun call!409931 () (InoxSet Context!9790))

(assert (=> b!5525960 (= e!3416259 call!409931)))

(declare-fun b!5525961 () Bool)

(assert (=> b!5525961 (= e!3416264 call!409931)))

(declare-fun bm!409926 () Bool)

(assert (=> bm!409926 (= call!409931 call!409933)))

(declare-fun b!5525962 () Bool)

(declare-fun e!3416262 () Bool)

(assert (=> b!5525962 (= e!3416262 (nullable!5545 (regOne!31534 (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292))))))))

(declare-fun bm!409927 () Bool)

(assert (=> bm!409927 (= call!409929 ($colon$colon!1590 (exprs!5395 (ite c!966370 lt!2247098 (Context!9791 call!409685))) (ite (or c!966699 c!966701) (regTwo!31534 (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292)))) (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292))))))))

(declare-fun bm!409928 () Bool)

(assert (=> bm!409928 (= call!409933 call!409932)))

(declare-fun b!5525963 () Bool)

(declare-fun e!3416263 () (InoxSet Context!9790))

(assert (=> b!5525963 (= e!3416260 e!3416263)))

(assert (=> b!5525963 (= c!966702 ((_ is Union!15511) (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292)))))))

(declare-fun bm!409929 () Bool)

(assert (=> bm!409929 (= call!409934 (derivationStepZipperDown!853 (ite c!966702 (regOne!31535 (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292)))) (regOne!31534 (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292))))) (ite c!966702 (ite c!966370 lt!2247098 (Context!9791 call!409685)) (Context!9791 call!409929)) (h!69158 s!2326)))))

(declare-fun b!5525964 () Bool)

(assert (=> b!5525964 (= e!3416263 ((_ map or) call!409934 call!409932))))

(declare-fun b!5525965 () Bool)

(assert (=> b!5525965 (= e!3416261 e!3416264)))

(assert (=> b!5525965 (= c!966701 ((_ is Concat!24356) (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292)))))))

(declare-fun b!5525966 () Bool)

(assert (=> b!5525966 (= c!966699 e!3416262)))

(declare-fun res!2353152 () Bool)

(assert (=> b!5525966 (=> (not res!2353152) (not e!3416262))))

(assert (=> b!5525966 (= res!2353152 ((_ is Concat!24356) (ite c!966370 (regOne!31535 (regTwo!31534 r!7292)) (regOne!31534 (regTwo!31534 r!7292)))))))

(assert (=> b!5525966 (= e!3416263 e!3416261)))

(declare-fun b!5525967 () Bool)

(assert (=> b!5525967 (= e!3416259 ((as const (Array Context!9790 Bool)) false))))

(assert (= (and d!1751011 c!966703) b!5525957))

(assert (= (and d!1751011 (not c!966703)) b!5525963))

(assert (= (and b!5525963 c!966702) b!5525964))

(assert (= (and b!5525963 (not c!966702)) b!5525966))

(assert (= (and b!5525966 res!2353152) b!5525962))

(assert (= (and b!5525966 c!966699) b!5525959))

(assert (= (and b!5525966 (not c!966699)) b!5525965))

(assert (= (and b!5525965 c!966701) b!5525961))

(assert (= (and b!5525965 (not c!966701)) b!5525958))

(assert (= (and b!5525958 c!966700) b!5525960))

(assert (= (and b!5525958 (not c!966700)) b!5525967))

(assert (= (or b!5525961 b!5525960) bm!409925))

(assert (= (or b!5525961 b!5525960) bm!409926))

(assert (= (or b!5525959 bm!409925) bm!409927))

(assert (= (or b!5525959 bm!409926) bm!409928))

(assert (= (or b!5525964 bm!409928) bm!409924))

(assert (= (or b!5525964 b!5525959) bm!409929))

(declare-fun m!6528384 () Bool)

(assert (=> b!5525957 m!6528384))

(declare-fun m!6528386 () Bool)

(assert (=> bm!409924 m!6528386))

(declare-fun m!6528388 () Bool)

(assert (=> bm!409927 m!6528388))

(declare-fun m!6528390 () Bool)

(assert (=> b!5525962 m!6528390))

(declare-fun m!6528392 () Bool)

(assert (=> bm!409929 m!6528392))

(assert (=> bm!409685 d!1751011))

(declare-fun d!1751013 () Bool)

(assert (=> d!1751013 (= (isEmptyLang!1094 lt!2247226) ((_ is EmptyLang!15511) lt!2247226))))

(assert (=> b!5524581 d!1751013))

(declare-fun bs!1275715 () Bool)

(declare-fun d!1751015 () Bool)

(assert (= bs!1275715 (and d!1751015 d!1750931)))

(declare-fun lambda!296344 () Int)

(assert (=> bs!1275715 (= lambda!296344 lambda!296328)))

(declare-fun bs!1275716 () Bool)

(assert (= bs!1275716 (and d!1751015 b!5525919)))

(assert (=> bs!1275716 (not (= lambda!296344 lambda!296337))))

(declare-fun bs!1275717 () Bool)

(assert (= bs!1275717 (and d!1751015 d!1750881)))

(assert (=> bs!1275717 (not (= lambda!296344 lambda!296314))))

(declare-fun bs!1275718 () Bool)

(assert (= bs!1275718 (and d!1751015 b!5524493)))

(assert (=> bs!1275718 (not (= lambda!296344 lambda!296198))))

(declare-fun bs!1275719 () Bool)

(assert (= bs!1275719 (and d!1751015 b!5524500)))

(assert (=> bs!1275719 (not (= lambda!296344 lambda!296202))))

(declare-fun bs!1275720 () Bool)

(assert (= bs!1275720 (and d!1751015 b!5525921)))

(assert (=> bs!1275720 (not (= lambda!296344 lambda!296338))))

(declare-fun bs!1275721 () Bool)

(assert (= bs!1275721 (and d!1751015 b!5524495)))

(assert (=> bs!1275721 (not (= lambda!296344 lambda!296199))))

(declare-fun bs!1275722 () Bool)

(assert (= bs!1275722 (and d!1751015 d!1750927)))

(assert (=> bs!1275722 (= lambda!296344 lambda!296326)))

(declare-fun bs!1275723 () Bool)

(assert (= bs!1275723 (and d!1751015 b!5524498)))

(assert (=> bs!1275723 (not (= lambda!296344 lambda!296201))))

(declare-fun bs!1275724 () Bool)

(assert (= bs!1275724 (and d!1751015 d!1750967)))

(assert (=> bs!1275724 (not (= lambda!296344 lambda!296333))))

(declare-fun bs!1275725 () Bool)

(assert (= bs!1275725 (and d!1751015 b!5525754)))

(assert (=> bs!1275725 (not (= lambda!296344 lambda!296318))))

(declare-fun bs!1275726 () Bool)

(assert (= bs!1275726 (and d!1751015 b!5525756)))

(assert (=> bs!1275726 (not (= lambda!296344 lambda!296319))))

(assert (=> d!1751015 (= (nullableZipper!1537 lt!2247109) (exists!2145 lt!2247109 lambda!296344))))

(declare-fun bs!1275727 () Bool)

(assert (= bs!1275727 d!1751015))

(declare-fun m!6528394 () Bool)

(assert (=> bs!1275727 m!6528394))

(assert (=> b!5524712 d!1751015))

(declare-fun bs!1275728 () Bool)

(declare-fun d!1751017 () Bool)

(assert (= bs!1275728 (and d!1751017 d!1750931)))

(declare-fun lambda!296345 () Int)

(assert (=> bs!1275728 (= lambda!296345 lambda!296328)))

(declare-fun bs!1275729 () Bool)

(assert (= bs!1275729 (and d!1751017 b!5525919)))

(assert (=> bs!1275729 (not (= lambda!296345 lambda!296337))))

(declare-fun bs!1275730 () Bool)

(assert (= bs!1275730 (and d!1751017 b!5524493)))

(assert (=> bs!1275730 (not (= lambda!296345 lambda!296198))))

(declare-fun bs!1275731 () Bool)

(assert (= bs!1275731 (and d!1751017 b!5524500)))

(assert (=> bs!1275731 (not (= lambda!296345 lambda!296202))))

(declare-fun bs!1275732 () Bool)

(assert (= bs!1275732 (and d!1751017 b!5525921)))

(assert (=> bs!1275732 (not (= lambda!296345 lambda!296338))))

(declare-fun bs!1275733 () Bool)

(assert (= bs!1275733 (and d!1751017 b!5524495)))

(assert (=> bs!1275733 (not (= lambda!296345 lambda!296199))))

(declare-fun bs!1275734 () Bool)

(assert (= bs!1275734 (and d!1751017 d!1750927)))

(assert (=> bs!1275734 (= lambda!296345 lambda!296326)))

(declare-fun bs!1275735 () Bool)

(assert (= bs!1275735 (and d!1751017 b!5524498)))

(assert (=> bs!1275735 (not (= lambda!296345 lambda!296201))))

(declare-fun bs!1275736 () Bool)

(assert (= bs!1275736 (and d!1751017 d!1750967)))

(assert (=> bs!1275736 (not (= lambda!296345 lambda!296333))))

(declare-fun bs!1275737 () Bool)

(assert (= bs!1275737 (and d!1751017 b!5525754)))

(assert (=> bs!1275737 (not (= lambda!296345 lambda!296318))))

(declare-fun bs!1275738 () Bool)

(assert (= bs!1275738 (and d!1751017 b!5525756)))

(assert (=> bs!1275738 (not (= lambda!296345 lambda!296319))))

(declare-fun bs!1275739 () Bool)

(assert (= bs!1275739 (and d!1751017 d!1751015)))

(assert (=> bs!1275739 (= lambda!296345 lambda!296344)))

(declare-fun bs!1275740 () Bool)

(assert (= bs!1275740 (and d!1751017 d!1750881)))

(assert (=> bs!1275740 (not (= lambda!296345 lambda!296314))))

(assert (=> d!1751017 (= (nullableZipper!1537 lt!2247108) (exists!2145 lt!2247108 lambda!296345))))

(declare-fun bs!1275741 () Bool)

(assert (= bs!1275741 d!1751017))

(declare-fun m!6528396 () Bool)

(assert (=> bs!1275741 m!6528396))

(assert (=> b!5524822 d!1751017))

(declare-fun d!1751019 () Bool)

(declare-fun res!2353153 () Bool)

(declare-fun e!3416265 () Bool)

(assert (=> d!1751019 (=> res!2353153 e!3416265)))

(assert (=> d!1751019 (= res!2353153 ((_ is Nil!62709) (Cons!62709 lt!2247113 Nil!62709)))))

(assert (=> d!1751019 (= (forall!14686 (Cons!62709 lt!2247113 Nil!62709) lambda!296199) e!3416265)))

(declare-fun b!5525968 () Bool)

(declare-fun e!3416266 () Bool)

(assert (=> b!5525968 (= e!3416265 e!3416266)))

(declare-fun res!2353154 () Bool)

(assert (=> b!5525968 (=> (not res!2353154) (not e!3416266))))

(assert (=> b!5525968 (= res!2353154 (dynLambda!24510 lambda!296199 (h!69157 (Cons!62709 lt!2247113 Nil!62709))))))

(declare-fun b!5525969 () Bool)

(assert (=> b!5525969 (= e!3416266 (forall!14686 (t!376086 (Cons!62709 lt!2247113 Nil!62709)) lambda!296199))))

(assert (= (and d!1751019 (not res!2353153)) b!5525968))

(assert (= (and b!5525968 res!2353154) b!5525969))

(declare-fun b_lambda!209613 () Bool)

(assert (=> (not b_lambda!209613) (not b!5525968)))

(declare-fun m!6528398 () Bool)

(assert (=> b!5525968 m!6528398))

(declare-fun m!6528400 () Bool)

(assert (=> b!5525969 m!6528400))

(assert (=> b!5524495 d!1751019))

(assert (=> bs!1274773 d!1750447))

(assert (=> b!5524700 d!1750777))

(assert (=> b!5524700 d!1750781))

(declare-fun d!1751021 () Bool)

(declare-fun c!966704 () Bool)

(assert (=> d!1751021 (= c!966704 (isEmpty!34498 (tail!10921 s!2326)))))

(declare-fun e!3416267 () Bool)

(assert (=> d!1751021 (= (matchZipper!1669 (derivationStepZipper!1616 lt!2247109 (head!11826 s!2326)) (tail!10921 s!2326)) e!3416267)))

(declare-fun b!5525970 () Bool)

(assert (=> b!5525970 (= e!3416267 (nullableZipper!1537 (derivationStepZipper!1616 lt!2247109 (head!11826 s!2326))))))

(declare-fun b!5525971 () Bool)

(assert (=> b!5525971 (= e!3416267 (matchZipper!1669 (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247109 (head!11826 s!2326)) (head!11826 (tail!10921 s!2326))) (tail!10921 (tail!10921 s!2326))))))

(assert (= (and d!1751021 c!966704) b!5525970))

(assert (= (and d!1751021 (not c!966704)) b!5525971))

(assert (=> d!1751021 m!6527064))

(assert (=> d!1751021 m!6527066))

(assert (=> b!5525970 m!6527078))

(declare-fun m!6528402 () Bool)

(assert (=> b!5525970 m!6528402))

(assert (=> b!5525971 m!6527064))

(assert (=> b!5525971 m!6528088))

(assert (=> b!5525971 m!6527078))

(assert (=> b!5525971 m!6528088))

(declare-fun m!6528404 () Bool)

(assert (=> b!5525971 m!6528404))

(assert (=> b!5525971 m!6527064))

(assert (=> b!5525971 m!6528092))

(assert (=> b!5525971 m!6528404))

(assert (=> b!5525971 m!6528092))

(declare-fun m!6528406 () Bool)

(assert (=> b!5525971 m!6528406))

(assert (=> b!5524713 d!1751021))

(declare-fun bs!1275742 () Bool)

(declare-fun d!1751023 () Bool)

(assert (= bs!1275742 (and d!1751023 d!1750797)))

(declare-fun lambda!296346 () Int)

(assert (=> bs!1275742 (= (= (head!11826 s!2326) (head!11826 (t!376087 s!2326))) (= lambda!296346 lambda!296303))))

(declare-fun bs!1275743 () Bool)

(assert (= bs!1275743 (and d!1751023 d!1750427)))

(assert (=> bs!1275743 (= (= (head!11826 s!2326) (h!69158 s!2326)) (= lambda!296346 lambda!296232))))

(declare-fun bs!1275744 () Bool)

(assert (= bs!1275744 (and d!1751023 d!1750455)))

(assert (=> bs!1275744 (= (= (head!11826 s!2326) (h!69158 s!2326)) (= lambda!296346 lambda!296233))))

(declare-fun bs!1275745 () Bool)

(assert (= bs!1275745 (and d!1751023 d!1750899)))

(assert (=> bs!1275745 (= (= (head!11826 s!2326) (head!11826 (t!376087 s!2326))) (= lambda!296346 lambda!296320))))

(declare-fun bs!1275746 () Bool)

(assert (= bs!1275746 (and d!1751023 d!1750979)))

(assert (=> bs!1275746 (= (= (head!11826 s!2326) (head!11826 (t!376087 s!2326))) (= lambda!296346 lambda!296339))))

(declare-fun bs!1275747 () Bool)

(assert (= bs!1275747 (and d!1751023 d!1750995)))

(assert (=> bs!1275747 (= (= (head!11826 s!2326) (head!11826 (t!376087 s!2326))) (= lambda!296346 lambda!296343))))

(declare-fun bs!1275748 () Bool)

(assert (= bs!1275748 (and d!1751023 d!1750875)))

(assert (=> bs!1275748 (= lambda!296346 lambda!296311)))

(declare-fun bs!1275749 () Bool)

(assert (= bs!1275749 (and d!1751023 d!1750469)))

(assert (=> bs!1275749 (= (= (head!11826 s!2326) (h!69158 s!2326)) (= lambda!296346 lambda!296234))))

(declare-fun bs!1275750 () Bool)

(assert (= bs!1275750 (and d!1751023 d!1750849)))

(assert (=> bs!1275750 (= (= (head!11826 s!2326) (head!11826 (t!376087 s!2326))) (= lambda!296346 lambda!296309))))

(declare-fun bs!1275751 () Bool)

(assert (= bs!1275751 (and d!1751023 b!5524057)))

(assert (=> bs!1275751 (= (= (head!11826 s!2326) (h!69158 s!2326)) (= lambda!296346 lambda!296137))))

(assert (=> d!1751023 true))

(assert (=> d!1751023 (= (derivationStepZipper!1616 lt!2247109 (head!11826 s!2326)) (flatMap!1124 lt!2247109 lambda!296346))))

(declare-fun bs!1275752 () Bool)

(assert (= bs!1275752 d!1751023))

(declare-fun m!6528408 () Bool)

(assert (=> bs!1275752 m!6528408))

(assert (=> b!5524713 d!1751023))

(assert (=> b!5524713 d!1750877))

(assert (=> b!5524713 d!1750781))

(declare-fun d!1751025 () Bool)

(declare-fun c!966705 () Bool)

(assert (=> d!1751025 (= c!966705 (isEmpty!34498 (tail!10921 (t!376087 s!2326))))))

(declare-fun e!3416268 () Bool)

(assert (=> d!1751025 (= (matchZipper!1669 (derivationStepZipper!1616 lt!2247108 (head!11826 (t!376087 s!2326))) (tail!10921 (t!376087 s!2326))) e!3416268)))

(declare-fun b!5525972 () Bool)

(assert (=> b!5525972 (= e!3416268 (nullableZipper!1537 (derivationStepZipper!1616 lt!2247108 (head!11826 (t!376087 s!2326)))))))

(declare-fun b!5525973 () Bool)

(assert (=> b!5525973 (= e!3416268 (matchZipper!1669 (derivationStepZipper!1616 (derivationStepZipper!1616 lt!2247108 (head!11826 (t!376087 s!2326))) (head!11826 (tail!10921 (t!376087 s!2326)))) (tail!10921 (tail!10921 (t!376087 s!2326)))))))

(assert (= (and d!1751025 c!966705) b!5525972))

(assert (= (and d!1751025 (not c!966705)) b!5525973))

(assert (=> d!1751025 m!6527030))

(assert (=> d!1751025 m!6527902))

(assert (=> b!5525972 m!6527174))

(declare-fun m!6528410 () Bool)

(assert (=> b!5525972 m!6528410))

(assert (=> b!5525973 m!6527030))

(assert (=> b!5525973 m!6527906))

(assert (=> b!5525973 m!6527174))

(assert (=> b!5525973 m!6527906))

(declare-fun m!6528412 () Bool)

(assert (=> b!5525973 m!6528412))

(assert (=> b!5525973 m!6527030))

(assert (=> b!5525973 m!6527910))

(assert (=> b!5525973 m!6528412))

(assert (=> b!5525973 m!6527910))

(declare-fun m!6528414 () Bool)

(assert (=> b!5525973 m!6528414))

(assert (=> b!5524823 d!1751025))

(declare-fun bs!1275753 () Bool)

(declare-fun d!1751027 () Bool)

(assert (= bs!1275753 (and d!1751027 d!1750797)))

(declare-fun lambda!296347 () Int)

(assert (=> bs!1275753 (= lambda!296347 lambda!296303)))

(declare-fun bs!1275754 () Bool)

(assert (= bs!1275754 (and d!1751027 d!1750427)))

(assert (=> bs!1275754 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296347 lambda!296232))))

(declare-fun bs!1275755 () Bool)

(assert (= bs!1275755 (and d!1751027 d!1750455)))

(assert (=> bs!1275755 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296347 lambda!296233))))

(declare-fun bs!1275756 () Bool)

(assert (= bs!1275756 (and d!1751027 d!1751023)))

(assert (=> bs!1275756 (= (= (head!11826 (t!376087 s!2326)) (head!11826 s!2326)) (= lambda!296347 lambda!296346))))

(declare-fun bs!1275757 () Bool)

(assert (= bs!1275757 (and d!1751027 d!1750899)))

(assert (=> bs!1275757 (= lambda!296347 lambda!296320)))

(declare-fun bs!1275758 () Bool)

(assert (= bs!1275758 (and d!1751027 d!1750979)))

(assert (=> bs!1275758 (= lambda!296347 lambda!296339)))

(declare-fun bs!1275759 () Bool)

(assert (= bs!1275759 (and d!1751027 d!1750995)))

(assert (=> bs!1275759 (= lambda!296347 lambda!296343)))

(declare-fun bs!1275760 () Bool)

(assert (= bs!1275760 (and d!1751027 d!1750875)))

(assert (=> bs!1275760 (= (= (head!11826 (t!376087 s!2326)) (head!11826 s!2326)) (= lambda!296347 lambda!296311))))

(declare-fun bs!1275761 () Bool)

(assert (= bs!1275761 (and d!1751027 d!1750469)))

(assert (=> bs!1275761 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296347 lambda!296234))))

(declare-fun bs!1275762 () Bool)

(assert (= bs!1275762 (and d!1751027 d!1750849)))

(assert (=> bs!1275762 (= lambda!296347 lambda!296309)))

(declare-fun bs!1275763 () Bool)

(assert (= bs!1275763 (and d!1751027 b!5524057)))

(assert (=> bs!1275763 (= (= (head!11826 (t!376087 s!2326)) (h!69158 s!2326)) (= lambda!296347 lambda!296137))))

(assert (=> d!1751027 true))

(assert (=> d!1751027 (= (derivationStepZipper!1616 lt!2247108 (head!11826 (t!376087 s!2326))) (flatMap!1124 lt!2247108 lambda!296347))))

(declare-fun bs!1275764 () Bool)

(assert (= bs!1275764 d!1751027))

(declare-fun m!6528416 () Bool)

(assert (=> bs!1275764 m!6528416))

(assert (=> b!5524823 d!1751027))

(assert (=> b!5524823 d!1750799))

(assert (=> b!5524823 d!1750801))

(declare-fun d!1751029 () Bool)

(assert (=> d!1751029 true))

(assert (=> d!1751029 true))

(declare-fun res!2353155 () Bool)

(assert (=> d!1751029 (= (choose!41971 lambda!296136) res!2353155)))

(assert (=> d!1750389 d!1751029))

(declare-fun d!1751031 () Bool)

(assert (=> d!1751031 (= (isEmpty!34494 (t!376085 (unfocusZipperList!939 zl!343))) ((_ is Nil!62708) (t!376085 (unfocusZipperList!939 zl!343))))))

(assert (=> b!5524582 d!1751031))

(declare-fun bs!1275765 () Bool)

(declare-fun d!1751033 () Bool)

(assert (= bs!1275765 (and d!1751033 d!1750931)))

(declare-fun lambda!296348 () Int)

(assert (=> bs!1275765 (= lambda!296348 lambda!296328)))

(declare-fun bs!1275766 () Bool)

(assert (= bs!1275766 (and d!1751033 b!5525919)))

(assert (=> bs!1275766 (not (= lambda!296348 lambda!296337))))

(declare-fun bs!1275767 () Bool)

(assert (= bs!1275767 (and d!1751033 b!5524493)))

(assert (=> bs!1275767 (not (= lambda!296348 lambda!296198))))

(declare-fun bs!1275768 () Bool)

(assert (= bs!1275768 (and d!1751033 b!5524500)))

(assert (=> bs!1275768 (not (= lambda!296348 lambda!296202))))

(declare-fun bs!1275769 () Bool)

(assert (= bs!1275769 (and d!1751033 b!5525921)))

(assert (=> bs!1275769 (not (= lambda!296348 lambda!296338))))

(declare-fun bs!1275770 () Bool)

(assert (= bs!1275770 (and d!1751033 d!1751017)))

(assert (=> bs!1275770 (= lambda!296348 lambda!296345)))

(declare-fun bs!1275771 () Bool)

(assert (= bs!1275771 (and d!1751033 b!5524495)))

(assert (=> bs!1275771 (not (= lambda!296348 lambda!296199))))

(declare-fun bs!1275772 () Bool)

(assert (= bs!1275772 (and d!1751033 d!1750927)))

(assert (=> bs!1275772 (= lambda!296348 lambda!296326)))

(declare-fun bs!1275773 () Bool)

(assert (= bs!1275773 (and d!1751033 b!5524498)))

(assert (=> bs!1275773 (not (= lambda!296348 lambda!296201))))

(declare-fun bs!1275774 () Bool)

(assert (= bs!1275774 (and d!1751033 d!1750967)))

(assert (=> bs!1275774 (not (= lambda!296348 lambda!296333))))

(declare-fun bs!1275775 () Bool)

(assert (= bs!1275775 (and d!1751033 b!5525754)))

(assert (=> bs!1275775 (not (= lambda!296348 lambda!296318))))

(declare-fun bs!1275776 () Bool)

(assert (= bs!1275776 (and d!1751033 b!5525756)))

(assert (=> bs!1275776 (not (= lambda!296348 lambda!296319))))

(declare-fun bs!1275777 () Bool)

(assert (= bs!1275777 (and d!1751033 d!1751015)))

(assert (=> bs!1275777 (= lambda!296348 lambda!296344)))

(declare-fun bs!1275778 () Bool)

(assert (= bs!1275778 (and d!1751033 d!1750881)))

(assert (=> bs!1275778 (not (= lambda!296348 lambda!296314))))

(assert (=> d!1751033 (= (nullableZipper!1537 (derivationStepZipper!1616 lt!2247111 (h!69158 s!2326))) (exists!2145 (derivationStepZipper!1616 lt!2247111 (h!69158 s!2326)) lambda!296348))))

(declare-fun bs!1275779 () Bool)

(assert (= bs!1275779 d!1751033))

(assert (=> bs!1275779 m!6526572))

(declare-fun m!6528418 () Bool)

(assert (=> bs!1275779 m!6528418))

(assert (=> b!5524829 d!1751033))

(declare-fun b!5525988 () Bool)

(declare-fun e!3416285 () Bool)

(declare-fun call!409939 () Bool)

(assert (=> b!5525988 (= e!3416285 call!409939)))

(declare-fun b!5525989 () Bool)

(declare-fun e!3416286 () Bool)

(declare-fun e!3416284 () Bool)

(assert (=> b!5525989 (= e!3416286 e!3416284)))

(declare-fun res!2353167 () Bool)

(declare-fun call!409940 () Bool)

(assert (=> b!5525989 (= res!2353167 call!409940)))

(assert (=> b!5525989 (=> res!2353167 e!3416284)))

(declare-fun b!5525990 () Bool)

(assert (=> b!5525990 (= e!3416286 e!3416285)))

(declare-fun res!2353169 () Bool)

(assert (=> b!5525990 (= res!2353169 call!409940)))

(assert (=> b!5525990 (=> (not res!2353169) (not e!3416285))))

(declare-fun bm!409935 () Bool)

(declare-fun c!966708 () Bool)

(assert (=> bm!409935 (= call!409939 (nullable!5545 (ite c!966708 (regTwo!31535 (regOne!31534 r!7292)) (regTwo!31534 (regOne!31534 r!7292)))))))

(declare-fun b!5525991 () Bool)

(assert (=> b!5525991 (= e!3416284 call!409939)))

(declare-fun b!5525992 () Bool)

(declare-fun e!3416281 () Bool)

(assert (=> b!5525992 (= e!3416281 e!3416286)))

(assert (=> b!5525992 (= c!966708 ((_ is Union!15511) (regOne!31534 r!7292)))))

(declare-fun d!1751035 () Bool)

(declare-fun res!2353170 () Bool)

(declare-fun e!3416282 () Bool)

(assert (=> d!1751035 (=> res!2353170 e!3416282)))

(assert (=> d!1751035 (= res!2353170 ((_ is EmptyExpr!15511) (regOne!31534 r!7292)))))

(assert (=> d!1751035 (= (nullableFct!1669 (regOne!31534 r!7292)) e!3416282)))

(declare-fun bm!409934 () Bool)

(assert (=> bm!409934 (= call!409940 (nullable!5545 (ite c!966708 (regOne!31535 (regOne!31534 r!7292)) (regOne!31534 (regOne!31534 r!7292)))))))

(declare-fun b!5525993 () Bool)

(declare-fun e!3416283 () Bool)

(assert (=> b!5525993 (= e!3416282 e!3416283)))

(declare-fun res!2353168 () Bool)

(assert (=> b!5525993 (=> (not res!2353168) (not e!3416283))))

(assert (=> b!5525993 (= res!2353168 (and (not ((_ is EmptyLang!15511) (regOne!31534 r!7292))) (not ((_ is ElementMatch!15511) (regOne!31534 r!7292)))))))

(declare-fun b!5525994 () Bool)

(assert (=> b!5525994 (= e!3416283 e!3416281)))

(declare-fun res!2353166 () Bool)

(assert (=> b!5525994 (=> res!2353166 e!3416281)))

(assert (=> b!5525994 (= res!2353166 ((_ is Star!15511) (regOne!31534 r!7292)))))

(assert (= (and d!1751035 (not res!2353170)) b!5525993))

(assert (= (and b!5525993 res!2353168) b!5525994))

(assert (= (and b!5525994 (not res!2353166)) b!5525992))

(assert (= (and b!5525992 c!966708) b!5525989))

(assert (= (and b!5525992 (not c!966708)) b!5525990))

(assert (= (and b!5525989 (not res!2353167)) b!5525991))

(assert (= (and b!5525990 res!2353169) b!5525988))

(assert (= (or b!5525991 b!5525988) bm!409935))

(assert (= (or b!5525989 b!5525990) bm!409934))

(declare-fun m!6528420 () Bool)

(assert (=> bm!409935 m!6528420))

(declare-fun m!6528422 () Bool)

(assert (=> bm!409934 m!6528422))

(assert (=> d!1750439 d!1751035))

(declare-fun d!1751037 () Bool)

(declare-fun res!2353171 () Bool)

(declare-fun e!3416287 () Bool)

(assert (=> d!1751037 (=> res!2353171 e!3416287)))

(assert (=> d!1751037 (= res!2353171 ((_ is Nil!62708) lt!2247229))))

(assert (=> d!1751037 (= (forall!14687 lt!2247229 lambda!296217) e!3416287)))

(declare-fun b!5525995 () Bool)

(declare-fun e!3416288 () Bool)

(assert (=> b!5525995 (= e!3416287 e!3416288)))

(declare-fun res!2353172 () Bool)

(assert (=> b!5525995 (=> (not res!2353172) (not e!3416288))))

(assert (=> b!5525995 (= res!2353172 (dynLambda!24507 lambda!296217 (h!69156 lt!2247229)))))

(declare-fun b!5525996 () Bool)

(assert (=> b!5525996 (= e!3416288 (forall!14687 (t!376085 lt!2247229) lambda!296217))))

(assert (= (and d!1751037 (not res!2353171)) b!5525995))

(assert (= (and b!5525995 res!2353172) b!5525996))

(declare-fun b_lambda!209615 () Bool)

(assert (=> (not b_lambda!209615) (not b!5525995)))

(declare-fun m!6528424 () Bool)

(assert (=> b!5525995 m!6528424))

(declare-fun m!6528426 () Bool)

(assert (=> b!5525996 m!6528426))

(assert (=> d!1750409 d!1751037))

(assert (=> b!5524826 d!1750411))

(declare-fun b!5525997 () Bool)

(declare-fun e!3416295 () Bool)

(declare-fun e!3416293 () Bool)

(assert (=> b!5525997 (= e!3416295 e!3416293)))

(declare-fun res!2353173 () Bool)

(assert (=> b!5525997 (=> (not res!2353173) (not e!3416293))))

(declare-fun call!409942 () Bool)

(assert (=> b!5525997 (= res!2353173 call!409942)))

(declare-fun b!5525999 () Bool)

(declare-fun call!409941 () Bool)

(assert (=> b!5525999 (= e!3416293 call!409941)))

(declare-fun bm!409936 () Bool)

(declare-fun call!409943 () Bool)

(assert (=> bm!409936 (= call!409941 call!409943)))

(declare-fun b!5526000 () Bool)

(declare-fun e!3416292 () Bool)

(declare-fun e!3416294 () Bool)

(assert (=> b!5526000 (= e!3416292 e!3416294)))

(declare-fun c!966709 () Bool)

(assert (=> b!5526000 (= c!966709 ((_ is Star!15511) lt!2247232))))

(declare-fun bm!409937 () Bool)

(declare-fun c!966710 () Bool)

(assert (=> bm!409937 (= call!409942 (validRegex!7247 (ite c!966710 (regOne!31535 lt!2247232) (regOne!31534 lt!2247232))))))

(declare-fun b!5526001 () Bool)

(declare-fun res!2353174 () Bool)

(declare-fun e!3416289 () Bool)

(assert (=> b!5526001 (=> (not res!2353174) (not e!3416289))))

(assert (=> b!5526001 (= res!2353174 call!409942)))

(declare-fun e!3416291 () Bool)

(assert (=> b!5526001 (= e!3416291 e!3416289)))

(declare-fun b!5526002 () Bool)

(declare-fun e!3416290 () Bool)

(assert (=> b!5526002 (= e!3416294 e!3416290)))

(declare-fun res!2353175 () Bool)

(assert (=> b!5526002 (= res!2353175 (not (nullable!5545 (reg!15840 lt!2247232))))))

(assert (=> b!5526002 (=> (not res!2353175) (not e!3416290))))

(declare-fun d!1751039 () Bool)

(declare-fun res!2353177 () Bool)

(assert (=> d!1751039 (=> res!2353177 e!3416292)))

(assert (=> d!1751039 (= res!2353177 ((_ is ElementMatch!15511) lt!2247232))))

(assert (=> d!1751039 (= (validRegex!7247 lt!2247232) e!3416292)))

(declare-fun b!5525998 () Bool)

(declare-fun res!2353176 () Bool)

(assert (=> b!5525998 (=> res!2353176 e!3416295)))

(assert (=> b!5525998 (= res!2353176 (not ((_ is Concat!24356) lt!2247232)))))

(assert (=> b!5525998 (= e!3416291 e!3416295)))

(declare-fun bm!409938 () Bool)

(assert (=> bm!409938 (= call!409943 (validRegex!7247 (ite c!966709 (reg!15840 lt!2247232) (ite c!966710 (regTwo!31535 lt!2247232) (regTwo!31534 lt!2247232)))))))

(declare-fun b!5526003 () Bool)

(assert (=> b!5526003 (= e!3416290 call!409943)))

(declare-fun b!5526004 () Bool)

(assert (=> b!5526004 (= e!3416289 call!409941)))

(declare-fun b!5526005 () Bool)

(assert (=> b!5526005 (= e!3416294 e!3416291)))

(assert (=> b!5526005 (= c!966710 ((_ is Union!15511) lt!2247232))))

(assert (= (and d!1751039 (not res!2353177)) b!5526000))

(assert (= (and b!5526000 c!966709) b!5526002))

(assert (= (and b!5526000 (not c!966709)) b!5526005))

(assert (= (and b!5526002 res!2353175) b!5526003))

(assert (= (and b!5526005 c!966710) b!5526001))

(assert (= (and b!5526005 (not c!966710)) b!5525998))

(assert (= (and b!5526001 res!2353174) b!5526004))

(assert (= (and b!5525998 (not res!2353176)) b!5525997))

(assert (= (and b!5525997 res!2353173) b!5525999))

(assert (= (or b!5526004 b!5525999) bm!409936))

(assert (= (or b!5526001 b!5525997) bm!409937))

(assert (= (or b!5526003 bm!409936) bm!409938))

(declare-fun m!6528428 () Bool)

(assert (=> bm!409937 m!6528428))

(declare-fun m!6528430 () Bool)

(assert (=> b!5526002 m!6528430))

(declare-fun m!6528432 () Bool)

(assert (=> bm!409938 m!6528432))

(assert (=> d!1750413 d!1751039))

(declare-fun d!1751041 () Bool)

(declare-fun res!2353178 () Bool)

(declare-fun e!3416296 () Bool)

(assert (=> d!1751041 (=> res!2353178 e!3416296)))

(assert (=> d!1751041 (= res!2353178 ((_ is Nil!62708) (exprs!5395 (h!69157 zl!343))))))

(assert (=> d!1751041 (= (forall!14687 (exprs!5395 (h!69157 zl!343)) lambda!296220) e!3416296)))

(declare-fun b!5526006 () Bool)

(declare-fun e!3416297 () Bool)

(assert (=> b!5526006 (= e!3416296 e!3416297)))

(declare-fun res!2353179 () Bool)

(assert (=> b!5526006 (=> (not res!2353179) (not e!3416297))))

(assert (=> b!5526006 (= res!2353179 (dynLambda!24507 lambda!296220 (h!69156 (exprs!5395 (h!69157 zl!343)))))))

(declare-fun b!5526007 () Bool)

(assert (=> b!5526007 (= e!3416297 (forall!14687 (t!376085 (exprs!5395 (h!69157 zl!343))) lambda!296220))))

(assert (= (and d!1751041 (not res!2353178)) b!5526006))

(assert (= (and b!5526006 res!2353179) b!5526007))

(declare-fun b_lambda!209617 () Bool)

(assert (=> (not b_lambda!209617) (not b!5526006)))

(declare-fun m!6528434 () Bool)

(assert (=> b!5526006 m!6528434))

(declare-fun m!6528436 () Bool)

(assert (=> b!5526007 m!6528436))

(assert (=> d!1750413 d!1751041))

(declare-fun d!1751043 () Bool)

(assert (=> d!1751043 true))

(declare-fun setRes!36747 () Bool)

(assert (=> d!1751043 setRes!36747))

(declare-fun condSetEmpty!36747 () Bool)

(declare-fun res!2353180 () (InoxSet Context!9790))

(assert (=> d!1751043 (= condSetEmpty!36747 (= res!2353180 ((as const (Array Context!9790 Bool)) false)))))

(assert (=> d!1751043 (= (choose!41974 lt!2247111 lambda!296137) res!2353180)))

(declare-fun setIsEmpty!36747 () Bool)

(assert (=> setIsEmpty!36747 setRes!36747))

(declare-fun e!3416298 () Bool)

(declare-fun setNonEmpty!36747 () Bool)

(declare-fun tp!1520340 () Bool)

(declare-fun setElem!36747 () Context!9790)

(assert (=> setNonEmpty!36747 (= setRes!36747 (and tp!1520340 (inv!82024 setElem!36747) e!3416298))))

(declare-fun setRest!36747 () (InoxSet Context!9790))

(assert (=> setNonEmpty!36747 (= res!2353180 ((_ map or) (store ((as const (Array Context!9790 Bool)) false) setElem!36747 true) setRest!36747))))

(declare-fun b!5526008 () Bool)

(declare-fun tp!1520341 () Bool)

(assert (=> b!5526008 (= e!3416298 tp!1520341)))

(assert (= (and d!1751043 condSetEmpty!36747) setIsEmpty!36747))

(assert (= (and d!1751043 (not condSetEmpty!36747)) setNonEmpty!36747))

(assert (= setNonEmpty!36747 b!5526008))

(declare-fun m!6528438 () Bool)

(assert (=> setNonEmpty!36747 m!6528438))

(assert (=> d!1750445 d!1751043))

(declare-fun d!1751045 () Bool)

(assert (=> d!1751045 true))

(declare-fun setRes!36748 () Bool)

(assert (=> d!1751045 setRes!36748))

(declare-fun condSetEmpty!36748 () Bool)

(declare-fun res!2353181 () (InoxSet Context!9790))

(assert (=> d!1751045 (= condSetEmpty!36748 (= res!2353181 ((as const (Array Context!9790 Bool)) false)))))

(assert (=> d!1751045 (= (choose!41974 z!1189 lambda!296137) res!2353181)))

(declare-fun setIsEmpty!36748 () Bool)

(assert (=> setIsEmpty!36748 setRes!36748))

(declare-fun tp!1520342 () Bool)

(declare-fun setElem!36748 () Context!9790)

(declare-fun e!3416299 () Bool)

(declare-fun setNonEmpty!36748 () Bool)

(assert (=> setNonEmpty!36748 (= setRes!36748 (and tp!1520342 (inv!82024 setElem!36748) e!3416299))))

(declare-fun setRest!36748 () (InoxSet Context!9790))

(assert (=> setNonEmpty!36748 (= res!2353181 ((_ map or) (store ((as const (Array Context!9790 Bool)) false) setElem!36748 true) setRest!36748))))

(declare-fun b!5526009 () Bool)

(declare-fun tp!1520343 () Bool)

(assert (=> b!5526009 (= e!3416299 tp!1520343)))

(assert (= (and d!1751045 condSetEmpty!36748) setIsEmpty!36748))

(assert (= (and d!1751045 (not condSetEmpty!36748)) setNonEmpty!36748))

(assert (= setNonEmpty!36748 b!5526009))

(declare-fun m!6528440 () Bool)

(assert (=> setNonEmpty!36748 m!6528440))

(assert (=> d!1750399 d!1751045))

(declare-fun b!5526010 () Bool)

(declare-fun e!3416301 () (InoxSet Context!9790))

(assert (=> b!5526010 (= e!3416301 (store ((as const (Array Context!9790 Bool)) false) (ite (or c!966384 c!966381) lt!2247098 (Context!9791 call!409700)) true))))

(declare-fun c!966713 () Bool)

(declare-fun call!409945 () List!62832)

(declare-fun call!409947 () (InoxSet Context!9790))

(declare-fun c!966711 () Bool)

(declare-fun c!966714 () Bool)

(declare-fun bm!409939 () Bool)

(assert (=> bm!409939 (= call!409947 (derivationStepZipperDown!853 (ite c!966714 (regTwo!31535 (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292))))) (ite c!966711 (regTwo!31534 (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292))))) (ite c!966713 (regOne!31534 (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292))))) (reg!15840 (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292)))))))) (ite (or c!966714 c!966711) (ite (or c!966384 c!966381) lt!2247098 (Context!9791 call!409700)) (Context!9791 call!409945)) (h!69158 s!2326)))))

(declare-fun bm!409940 () Bool)

(declare-fun call!409944 () List!62832)

(assert (=> bm!409940 (= call!409945 call!409944)))

(declare-fun c!966712 () Bool)

(declare-fun b!5526011 () Bool)

(assert (=> b!5526011 (= c!966712 ((_ is Star!15511) (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292))))))))

(declare-fun e!3416305 () (InoxSet Context!9790))

(declare-fun e!3416300 () (InoxSet Context!9790))

(assert (=> b!5526011 (= e!3416305 e!3416300)))

(declare-fun d!1751047 () Bool)

(declare-fun c!966715 () Bool)

(assert (=> d!1751047 (= c!966715 (and ((_ is ElementMatch!15511) (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292))))) (= (c!966149 (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292))))) (h!69158 s!2326))))))

(assert (=> d!1751047 (= (derivationStepZipperDown!853 (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292)))) (ite (or c!966384 c!966381) lt!2247098 (Context!9791 call!409700)) (h!69158 s!2326)) e!3416301)))

(declare-fun b!5526012 () Bool)

(declare-fun e!3416302 () (InoxSet Context!9790))

(declare-fun call!409949 () (InoxSet Context!9790))

(declare-fun call!409948 () (InoxSet Context!9790))

(assert (=> b!5526012 (= e!3416302 ((_ map or) call!409949 call!409948))))

(declare-fun b!5526013 () Bool)

(declare-fun call!409946 () (InoxSet Context!9790))

(assert (=> b!5526013 (= e!3416300 call!409946)))

(declare-fun b!5526014 () Bool)

(assert (=> b!5526014 (= e!3416305 call!409946)))

(declare-fun bm!409941 () Bool)

(assert (=> bm!409941 (= call!409946 call!409948)))

(declare-fun e!3416303 () Bool)

(declare-fun b!5526015 () Bool)

(assert (=> b!5526015 (= e!3416303 (nullable!5545 (regOne!31534 (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292)))))))))

(declare-fun bm!409942 () Bool)

(assert (=> bm!409942 (= call!409944 ($colon$colon!1590 (exprs!5395 (ite (or c!966384 c!966381) lt!2247098 (Context!9791 call!409700))) (ite (or c!966711 c!966713) (regTwo!31534 (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292))))) (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292)))))))))

(declare-fun bm!409943 () Bool)

(assert (=> bm!409943 (= call!409948 call!409947)))

(declare-fun b!5526016 () Bool)

(declare-fun e!3416304 () (InoxSet Context!9790))

(assert (=> b!5526016 (= e!3416301 e!3416304)))

(assert (=> b!5526016 (= c!966714 ((_ is Union!15511) (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292))))))))

(declare-fun bm!409944 () Bool)

(assert (=> bm!409944 (= call!409949 (derivationStepZipperDown!853 (ite c!966714 (regOne!31535 (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292))))) (regOne!31534 (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292)))))) (ite c!966714 (ite (or c!966384 c!966381) lt!2247098 (Context!9791 call!409700)) (Context!9791 call!409944)) (h!69158 s!2326)))))

(declare-fun b!5526017 () Bool)

(assert (=> b!5526017 (= e!3416304 ((_ map or) call!409949 call!409947))))

(declare-fun b!5526018 () Bool)

(assert (=> b!5526018 (= e!3416302 e!3416305)))

(assert (=> b!5526018 (= c!966713 ((_ is Concat!24356) (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292))))))))

(declare-fun b!5526019 () Bool)

(assert (=> b!5526019 (= c!966711 e!3416303)))

(declare-fun res!2353182 () Bool)

(assert (=> b!5526019 (=> (not res!2353182) (not e!3416303))))

(assert (=> b!5526019 (= res!2353182 ((_ is Concat!24356) (ite c!966384 (regTwo!31535 r!7292) (ite c!966381 (regTwo!31534 r!7292) (ite c!966383 (regOne!31534 r!7292) (reg!15840 r!7292))))))))

(assert (=> b!5526019 (= e!3416304 e!3416302)))

(declare-fun b!5526020 () Bool)

(assert (=> b!5526020 (= e!3416300 ((as const (Array Context!9790 Bool)) false))))

(assert (= (and d!1751047 c!966715) b!5526010))

(assert (= (and d!1751047 (not c!966715)) b!5526016))

(assert (= (and b!5526016 c!966714) b!5526017))

(assert (= (and b!5526016 (not c!966714)) b!5526019))

(assert (= (and b!5526019 res!2353182) b!5526015))

(assert (= (and b!5526019 c!966711) b!5526012))

(assert (= (and b!5526019 (not c!966711)) b!5526018))

(assert (= (and b!5526018 c!966713) b!5526014))

(assert (= (and b!5526018 (not c!966713)) b!5526011))

(assert (= (and b!5526011 c!966712) b!5526013))

(assert (= (and b!5526011 (not c!966712)) b!5526020))

(assert (= (or b!5526014 b!5526013) bm!409940))

(assert (= (or b!5526014 b!5526013) bm!409941))

(assert (= (or b!5526012 bm!409940) bm!409942))

(assert (= (or b!5526012 bm!409941) bm!409943))

(assert (= (or b!5526017 bm!409943) bm!409939))

(assert (= (or b!5526017 b!5526012) bm!409944))

(declare-fun m!6528442 () Bool)

(assert (=> b!5526010 m!6528442))

(declare-fun m!6528444 () Bool)

(assert (=> bm!409939 m!6528444))

(declare-fun m!6528446 () Bool)

(assert (=> bm!409942 m!6528446))

(declare-fun m!6528448 () Bool)

(assert (=> b!5526015 m!6528448))

(declare-fun m!6528450 () Bool)

(assert (=> bm!409944 m!6528450))

(assert (=> bm!409694 d!1751047))

(declare-fun d!1751049 () Bool)

(declare-fun c!966718 () Bool)

(assert (=> d!1751049 (= c!966718 ((_ is Nil!62709) lt!2247241))))

(declare-fun e!3416308 () (InoxSet Context!9790))

(assert (=> d!1751049 (= (content!11276 lt!2247241) e!3416308)))

(declare-fun b!5526025 () Bool)

(assert (=> b!5526025 (= e!3416308 ((as const (Array Context!9790 Bool)) false))))

(declare-fun b!5526026 () Bool)

(assert (=> b!5526026 (= e!3416308 ((_ map or) (store ((as const (Array Context!9790 Bool)) false) (h!69157 lt!2247241) true) (content!11276 (t!376086 lt!2247241))))))

(assert (= (and d!1751049 c!966718) b!5526025))

(assert (= (and d!1751049 (not c!966718)) b!5526026))

(declare-fun m!6528452 () Bool)

(assert (=> b!5526026 m!6528452))

(declare-fun m!6528454 () Bool)

(assert (=> b!5526026 m!6528454))

(assert (=> b!5524747 d!1751049))

(declare-fun b!5526027 () Bool)

(declare-fun e!3416315 () Bool)

(declare-fun e!3416313 () Bool)

(assert (=> b!5526027 (= e!3416315 e!3416313)))

(declare-fun res!2353183 () Bool)

(assert (=> b!5526027 (=> (not res!2353183) (not e!3416313))))

(declare-fun call!409951 () Bool)

(assert (=> b!5526027 (= res!2353183 call!409951)))

(declare-fun b!5526029 () Bool)

(declare-fun call!409950 () Bool)

(assert (=> b!5526029 (= e!3416313 call!409950)))

(declare-fun bm!409945 () Bool)

(declare-fun call!409952 () Bool)

(assert (=> bm!409945 (= call!409950 call!409952)))

(declare-fun b!5526030 () Bool)

(declare-fun e!3416312 () Bool)

(declare-fun e!3416314 () Bool)

(assert (=> b!5526030 (= e!3416312 e!3416314)))

(declare-fun c!966719 () Bool)

(assert (=> b!5526030 (= c!966719 ((_ is Star!15511) lt!2247226))))

(declare-fun bm!409946 () Bool)

(declare-fun c!966720 () Bool)

(assert (=> bm!409946 (= call!409951 (validRegex!7247 (ite c!966720 (regOne!31535 lt!2247226) (regOne!31534 lt!2247226))))))

(declare-fun b!5526031 () Bool)

(declare-fun res!2353184 () Bool)

(declare-fun e!3416309 () Bool)

(assert (=> b!5526031 (=> (not res!2353184) (not e!3416309))))

(assert (=> b!5526031 (= res!2353184 call!409951)))

(declare-fun e!3416311 () Bool)

(assert (=> b!5526031 (= e!3416311 e!3416309)))

(declare-fun b!5526032 () Bool)

(declare-fun e!3416310 () Bool)

(assert (=> b!5526032 (= e!3416314 e!3416310)))

(declare-fun res!2353185 () Bool)

(assert (=> b!5526032 (= res!2353185 (not (nullable!5545 (reg!15840 lt!2247226))))))

(assert (=> b!5526032 (=> (not res!2353185) (not e!3416310))))

(declare-fun d!1751051 () Bool)

(declare-fun res!2353187 () Bool)

(assert (=> d!1751051 (=> res!2353187 e!3416312)))

(assert (=> d!1751051 (= res!2353187 ((_ is ElementMatch!15511) lt!2247226))))

(assert (=> d!1751051 (= (validRegex!7247 lt!2247226) e!3416312)))

(declare-fun b!5526028 () Bool)

(declare-fun res!2353186 () Bool)

(assert (=> b!5526028 (=> res!2353186 e!3416315)))

(assert (=> b!5526028 (= res!2353186 (not ((_ is Concat!24356) lt!2247226)))))

(assert (=> b!5526028 (= e!3416311 e!3416315)))

(declare-fun bm!409947 () Bool)

(assert (=> bm!409947 (= call!409952 (validRegex!7247 (ite c!966719 (reg!15840 lt!2247226) (ite c!966720 (regTwo!31535 lt!2247226) (regTwo!31534 lt!2247226)))))))

(declare-fun b!5526033 () Bool)

(assert (=> b!5526033 (= e!3416310 call!409952)))

(declare-fun b!5526034 () Bool)

(assert (=> b!5526034 (= e!3416309 call!409950)))

(declare-fun b!5526035 () Bool)

(assert (=> b!5526035 (= e!3416314 e!3416311)))

(assert (=> b!5526035 (= c!966720 ((_ is Union!15511) lt!2247226))))

(assert (= (and d!1751051 (not res!2353187)) b!5526030))

(assert (= (and b!5526030 c!966719) b!5526032))

(assert (= (and b!5526030 (not c!966719)) b!5526035))

(assert (= (and b!5526032 res!2353185) b!5526033))

(assert (= (and b!5526035 c!966720) b!5526031))

(assert (= (and b!5526035 (not c!966720)) b!5526028))

(assert (= (and b!5526031 res!2353184) b!5526034))

(assert (= (and b!5526028 (not res!2353186)) b!5526027))

(assert (= (and b!5526027 res!2353183) b!5526029))

(assert (= (or b!5526034 b!5526029) bm!409945))

(assert (= (or b!5526031 b!5526027) bm!409946))

(assert (= (or b!5526033 bm!409945) bm!409947))

(declare-fun m!6528456 () Bool)

(assert (=> bm!409946 m!6528456))

(declare-fun m!6528458 () Bool)

(assert (=> b!5526032 m!6528458))

(declare-fun m!6528460 () Bool)

(assert (=> bm!409947 m!6528460))

(assert (=> d!1750407 d!1751051))

(declare-fun d!1751053 () Bool)

(declare-fun res!2353188 () Bool)

(declare-fun e!3416316 () Bool)

(assert (=> d!1751053 (=> res!2353188 e!3416316)))

(assert (=> d!1751053 (= res!2353188 ((_ is Nil!62708) (unfocusZipperList!939 zl!343)))))

(assert (=> d!1751053 (= (forall!14687 (unfocusZipperList!939 zl!343) lambda!296214) e!3416316)))

(declare-fun b!5526036 () Bool)

(declare-fun e!3416317 () Bool)

(assert (=> b!5526036 (= e!3416316 e!3416317)))

(declare-fun res!2353189 () Bool)

(assert (=> b!5526036 (=> (not res!2353189) (not e!3416317))))

(assert (=> b!5526036 (= res!2353189 (dynLambda!24507 lambda!296214 (h!69156 (unfocusZipperList!939 zl!343))))))

(declare-fun b!5526037 () Bool)

(assert (=> b!5526037 (= e!3416317 (forall!14687 (t!376085 (unfocusZipperList!939 zl!343)) lambda!296214))))

(assert (= (and d!1751053 (not res!2353188)) b!5526036))

(assert (= (and b!5526036 res!2353189) b!5526037))

(declare-fun b_lambda!209619 () Bool)

(assert (=> (not b_lambda!209619) (not b!5526036)))

(declare-fun m!6528462 () Bool)

(assert (=> b!5526036 m!6528462))

(declare-fun m!6528464 () Bool)

(assert (=> b!5526037 m!6528464))

(assert (=> d!1750407 d!1751053))

(declare-fun d!1751055 () Bool)

(assert (=> d!1751055 (= (isConcat!606 lt!2247232) ((_ is Concat!24356) lt!2247232))))

(assert (=> b!5524621 d!1751055))

(assert (=> b!5524707 d!1750877))

(assert (=> d!1750425 d!1750789))

(declare-fun d!1751057 () Bool)

(declare-fun c!966721 () Bool)

(assert (=> d!1751057 (= c!966721 (isEmpty!34498 (t!376087 s!2326)))))

(declare-fun e!3416318 () Bool)

(assert (=> d!1751057 (= (matchZipper!1669 ((_ map or) lt!2247108 lt!2247095) (t!376087 s!2326)) e!3416318)))

(declare-fun b!5526038 () Bool)

(assert (=> b!5526038 (= e!3416318 (nullableZipper!1537 ((_ map or) lt!2247108 lt!2247095)))))

(declare-fun b!5526039 () Bool)

(assert (=> b!5526039 (= e!3416318 (matchZipper!1669 (derivationStepZipper!1616 ((_ map or) lt!2247108 lt!2247095) (head!11826 (t!376087 s!2326))) (tail!10921 (t!376087 s!2326))))))

(assert (= (and d!1751057 c!966721) b!5526038))

(assert (= (and d!1751057 (not c!966721)) b!5526039))

(assert (=> d!1751057 m!6527022))

(declare-fun m!6528466 () Bool)

(assert (=> b!5526038 m!6528466))

(assert (=> b!5526039 m!6527026))

(assert (=> b!5526039 m!6527026))

(declare-fun m!6528468 () Bool)

(assert (=> b!5526039 m!6528468))

(assert (=> b!5526039 m!6527030))

(assert (=> b!5526039 m!6528468))

(assert (=> b!5526039 m!6527030))

(declare-fun m!6528470 () Bool)

(assert (=> b!5526039 m!6528470))

(assert (=> d!1750463 d!1751057))

(assert (=> d!1750463 d!1750461))

(declare-fun d!1751059 () Bool)

(declare-fun e!3416321 () Bool)

(assert (=> d!1751059 (= (matchZipper!1669 ((_ map or) lt!2247108 lt!2247095) (t!376087 s!2326)) e!3416321)))

(declare-fun res!2353192 () Bool)

(assert (=> d!1751059 (=> res!2353192 e!3416321)))

(assert (=> d!1751059 (= res!2353192 (matchZipper!1669 lt!2247108 (t!376087 s!2326)))))

(assert (=> d!1751059 true))

(declare-fun _$48!1096 () Unit!155482)

(assert (=> d!1751059 (= (choose!41978 lt!2247108 lt!2247095 (t!376087 s!2326)) _$48!1096)))

(declare-fun b!5526042 () Bool)

(assert (=> b!5526042 (= e!3416321 (matchZipper!1669 lt!2247095 (t!376087 s!2326)))))

(assert (= (and d!1751059 (not res!2353192)) b!5526042))

(assert (=> d!1751059 m!6527178))

(assert (=> d!1751059 m!6526586))

(assert (=> b!5526042 m!6526532))

(assert (=> d!1750463 d!1751059))

(declare-fun d!1751061 () Bool)

(assert (=> d!1751061 (= (Exists!2611 lambda!296207) (choose!41971 lambda!296207))))

(declare-fun bs!1275780 () Bool)

(assert (= bs!1275780 d!1751061))

(declare-fun m!6528472 () Bool)

(assert (=> bs!1275780 m!6528472))

(assert (=> d!1750391 d!1751061))

(declare-fun d!1751063 () Bool)

(assert (=> d!1751063 (= (Exists!2611 lambda!296208) (choose!41971 lambda!296208))))

(declare-fun bs!1275781 () Bool)

(assert (= bs!1275781 d!1751063))

(declare-fun m!6528474 () Bool)

(assert (=> bs!1275781 m!6528474))

(assert (=> d!1750391 d!1751063))

(declare-fun bs!1275782 () Bool)

(declare-fun d!1751065 () Bool)

(assert (= bs!1275782 (and d!1751065 b!5524665)))

(declare-fun lambda!296353 () Int)

(assert (=> bs!1275782 (not (= lambda!296353 lambda!296228))))

(declare-fun bs!1275783 () Bool)

(assert (= bs!1275783 (and d!1751065 d!1750391)))

(assert (=> bs!1275783 (not (= lambda!296353 lambda!296208))))

(declare-fun bs!1275784 () Bool)

(assert (= bs!1275784 (and d!1751065 d!1750397)))

(assert (=> bs!1275784 (= lambda!296353 lambda!296211)))

(assert (=> bs!1275783 (= lambda!296353 lambda!296207)))

(declare-fun bs!1275785 () Bool)

(assert (= bs!1275785 (and d!1751065 b!5524661)))

(assert (=> bs!1275785 (not (= lambda!296353 lambda!296229))))

(declare-fun bs!1275786 () Bool)

(assert (= bs!1275786 (and d!1751065 b!5525770)))

(assert (=> bs!1275786 (not (= lambda!296353 lambda!296321))))

(declare-fun bs!1275787 () Bool)

(assert (= bs!1275787 (and d!1751065 b!5524067)))

(assert (=> bs!1275787 (= lambda!296353 lambda!296135)))

(declare-fun bs!1275788 () Bool)

(assert (= bs!1275788 (and d!1751065 b!5525766)))

(assert (=> bs!1275788 (not (= lambda!296353 lambda!296322))))

(assert (=> bs!1275787 (not (= lambda!296353 lambda!296136))))

(declare-fun bs!1275789 () Bool)

(assert (= bs!1275789 (and d!1751065 d!1750945)))

(assert (=> bs!1275789 (= lambda!296353 lambda!296332)))

(assert (=> d!1751065 true))

(assert (=> d!1751065 true))

(assert (=> d!1751065 true))

(declare-fun lambda!296354 () Int)

(assert (=> bs!1275782 (not (= lambda!296354 lambda!296228))))

(assert (=> bs!1275783 (= lambda!296354 lambda!296208)))

(declare-fun bs!1275790 () Bool)

(assert (= bs!1275790 d!1751065))

(assert (=> bs!1275790 (not (= lambda!296354 lambda!296353))))

(assert (=> bs!1275784 (not (= lambda!296354 lambda!296211))))

(assert (=> bs!1275783 (not (= lambda!296354 lambda!296207))))

(assert (=> bs!1275785 (= lambda!296354 lambda!296229)))

(assert (=> bs!1275786 (not (= lambda!296354 lambda!296321))))

(assert (=> bs!1275787 (not (= lambda!296354 lambda!296135))))

(assert (=> bs!1275788 (= (and (= (regOne!31534 r!7292) (regOne!31534 (regOne!31535 r!7292))) (= (regTwo!31534 r!7292) (regTwo!31534 (regOne!31535 r!7292)))) (= lambda!296354 lambda!296322))))

(assert (=> bs!1275787 (= lambda!296354 lambda!296136)))

(assert (=> bs!1275789 (not (= lambda!296354 lambda!296332))))

(assert (=> d!1751065 true))

(assert (=> d!1751065 true))

(assert (=> d!1751065 true))

(assert (=> d!1751065 (= (Exists!2611 lambda!296353) (Exists!2611 lambda!296354))))

(assert (=> d!1751065 true))

(declare-fun _$90!1250 () Unit!155482)

(assert (=> d!1751065 (= (choose!41972 (regOne!31534 r!7292) (regTwo!31534 r!7292) s!2326) _$90!1250)))

(declare-fun m!6528476 () Bool)

(assert (=> bs!1275790 m!6528476))

(declare-fun m!6528478 () Bool)

(assert (=> bs!1275790 m!6528478))

(assert (=> d!1750391 d!1751065))

(assert (=> d!1750391 d!1750941))

(declare-fun bs!1275791 () Bool)

(declare-fun d!1751067 () Bool)

(assert (= bs!1275791 (and d!1751067 d!1750931)))

(declare-fun lambda!296355 () Int)

(assert (=> bs!1275791 (= lambda!296355 lambda!296328)))

(declare-fun bs!1275792 () Bool)

(assert (= bs!1275792 (and d!1751067 b!5525919)))

(assert (=> bs!1275792 (not (= lambda!296355 lambda!296337))))

(declare-fun bs!1275793 () Bool)

(assert (= bs!1275793 (and d!1751067 d!1751033)))

(assert (=> bs!1275793 (= lambda!296355 lambda!296348)))

(declare-fun bs!1275794 () Bool)

(assert (= bs!1275794 (and d!1751067 b!5524493)))

(assert (=> bs!1275794 (not (= lambda!296355 lambda!296198))))

(declare-fun bs!1275795 () Bool)

(assert (= bs!1275795 (and d!1751067 b!5524500)))

(assert (=> bs!1275795 (not (= lambda!296355 lambda!296202))))

(declare-fun bs!1275796 () Bool)

(assert (= bs!1275796 (and d!1751067 b!5525921)))

(assert (=> bs!1275796 (not (= lambda!296355 lambda!296338))))

(declare-fun bs!1275797 () Bool)

(assert (= bs!1275797 (and d!1751067 d!1751017)))

(assert (=> bs!1275797 (= lambda!296355 lambda!296345)))

(declare-fun bs!1275798 () Bool)

(assert (= bs!1275798 (and d!1751067 b!5524495)))

(assert (=> bs!1275798 (not (= lambda!296355 lambda!296199))))

(declare-fun bs!1275799 () Bool)

(assert (= bs!1275799 (and d!1751067 d!1750927)))

(assert (=> bs!1275799 (= lambda!296355 lambda!296326)))

(declare-fun bs!1275800 () Bool)

(assert (= bs!1275800 (and d!1751067 b!5524498)))

(assert (=> bs!1275800 (not (= lambda!296355 lambda!296201))))

(declare-fun bs!1275801 () Bool)

(assert (= bs!1275801 (and d!1751067 d!1750967)))

(assert (=> bs!1275801 (not (= lambda!296355 lambda!296333))))

(declare-fun bs!1275802 () Bool)

(assert (= bs!1275802 (and d!1751067 b!5525754)))

(assert (=> bs!1275802 (not (= lambda!296355 lambda!296318))))

(declare-fun bs!1275803 () Bool)

(assert (= bs!1275803 (and d!1751067 b!5525756)))

(assert (=> bs!1275803 (not (= lambda!296355 lambda!296319))))

(declare-fun bs!1275804 () Bool)

(assert (= bs!1275804 (and d!1751067 d!1751015)))

(assert (=> bs!1275804 (= lambda!296355 lambda!296344)))

(declare-fun bs!1275805 () Bool)

(assert (= bs!1275805 (and d!1751067 d!1750881)))

(assert (=> bs!1275805 (not (= lambda!296355 lambda!296314))))

(assert (=> d!1751067 (= (nullableZipper!1537 lt!2247093) (exists!2145 lt!2247093 lambda!296355))))

(declare-fun bs!1275806 () Bool)

(assert (= bs!1275806 d!1751067))

(declare-fun m!6528480 () Bool)

(assert (=> bs!1275806 m!6528480))

(assert (=> b!5524820 d!1751067))

(declare-fun d!1751069 () Bool)

(assert (=> d!1751069 (= (flatMap!1124 lt!2247111 lambda!296234) (choose!41974 lt!2247111 lambda!296234))))

(declare-fun bs!1275807 () Bool)

(assert (= bs!1275807 d!1751069))

(declare-fun m!6528482 () Bool)

(assert (=> bs!1275807 m!6528482))

(assert (=> d!1750469 d!1751069))

(declare-fun d!1751071 () Bool)

(declare-fun res!2353201 () Bool)

(declare-fun e!3416326 () Bool)

(assert (=> d!1751071 (=> res!2353201 e!3416326)))

(assert (=> d!1751071 (= res!2353201 ((_ is Nil!62709) (Cons!62709 lt!2247106 Nil!62709)))))

(assert (=> d!1751071 (= (forall!14686 (Cons!62709 lt!2247106 Nil!62709) lambda!296202) e!3416326)))

(declare-fun b!5526051 () Bool)

(declare-fun e!3416327 () Bool)

(assert (=> b!5526051 (= e!3416326 e!3416327)))

(declare-fun res!2353202 () Bool)

(assert (=> b!5526051 (=> (not res!2353202) (not e!3416327))))

(assert (=> b!5526051 (= res!2353202 (dynLambda!24510 lambda!296202 (h!69157 (Cons!62709 lt!2247106 Nil!62709))))))

(declare-fun b!5526052 () Bool)

(assert (=> b!5526052 (= e!3416327 (forall!14686 (t!376086 (Cons!62709 lt!2247106 Nil!62709)) lambda!296202))))

(assert (= (and d!1751071 (not res!2353201)) b!5526051))

(assert (= (and b!5526051 res!2353202) b!5526052))

(declare-fun b_lambda!209621 () Bool)

(assert (=> (not b_lambda!209621) (not b!5526051)))

(declare-fun m!6528484 () Bool)

(assert (=> b!5526051 m!6528484))

(declare-fun m!6528486 () Bool)

(assert (=> b!5526052 m!6528486))

(assert (=> b!5524500 d!1751071))

(declare-fun bs!1275808 () Bool)

(declare-fun b!5526059 () Bool)

(assert (= bs!1275808 (and b!5526059 b!5524665)))

(declare-fun lambda!296356 () Int)

(assert (=> bs!1275808 (= (and (= (reg!15840 (regTwo!31535 r!7292)) (reg!15840 r!7292)) (= (regTwo!31535 r!7292) r!7292)) (= lambda!296356 lambda!296228))))

(declare-fun bs!1275809 () Bool)

(assert (= bs!1275809 (and b!5526059 d!1750391)))

(assert (=> bs!1275809 (not (= lambda!296356 lambda!296208))))

(declare-fun bs!1275810 () Bool)

(assert (= bs!1275810 (and b!5526059 d!1751065)))

(assert (=> bs!1275810 (not (= lambda!296356 lambda!296353))))

(declare-fun bs!1275811 () Bool)

(assert (= bs!1275811 (and b!5526059 d!1750397)))

(assert (=> bs!1275811 (not (= lambda!296356 lambda!296211))))

(assert (=> bs!1275809 (not (= lambda!296356 lambda!296207))))

(declare-fun bs!1275812 () Bool)

(assert (= bs!1275812 (and b!5526059 b!5524661)))

(assert (=> bs!1275812 (not (= lambda!296356 lambda!296229))))

(declare-fun bs!1275813 () Bool)

(assert (= bs!1275813 (and b!5526059 b!5525770)))

(assert (=> bs!1275813 (= (and (= (reg!15840 (regTwo!31535 r!7292)) (reg!15840 (regOne!31535 r!7292))) (= (regTwo!31535 r!7292) (regOne!31535 r!7292))) (= lambda!296356 lambda!296321))))

(declare-fun bs!1275814 () Bool)

(assert (= bs!1275814 (and b!5526059 b!5524067)))

(assert (=> bs!1275814 (not (= lambda!296356 lambda!296135))))

(declare-fun bs!1275815 () Bool)

(assert (= bs!1275815 (and b!5526059 b!5525766)))

(assert (=> bs!1275815 (not (= lambda!296356 lambda!296322))))

(assert (=> bs!1275810 (not (= lambda!296356 lambda!296354))))

(assert (=> bs!1275814 (not (= lambda!296356 lambda!296136))))

(declare-fun bs!1275816 () Bool)

(assert (= bs!1275816 (and b!5526059 d!1750945)))

(assert (=> bs!1275816 (not (= lambda!296356 lambda!296332))))

(assert (=> b!5526059 true))

(assert (=> b!5526059 true))

(declare-fun bs!1275817 () Bool)

(declare-fun b!5526055 () Bool)

(assert (= bs!1275817 (and b!5526055 b!5524665)))

(declare-fun lambda!296357 () Int)

(assert (=> bs!1275817 (not (= lambda!296357 lambda!296228))))

(declare-fun bs!1275818 () Bool)

(assert (= bs!1275818 (and b!5526055 d!1750391)))

(assert (=> bs!1275818 (= (and (= (regOne!31534 (regTwo!31535 r!7292)) (regOne!31534 r!7292)) (= (regTwo!31534 (regTwo!31535 r!7292)) (regTwo!31534 r!7292))) (= lambda!296357 lambda!296208))))

(declare-fun bs!1275819 () Bool)

(assert (= bs!1275819 (and b!5526055 d!1751065)))

(assert (=> bs!1275819 (not (= lambda!296357 lambda!296353))))

(declare-fun bs!1275820 () Bool)

(assert (= bs!1275820 (and b!5526055 d!1750397)))

(assert (=> bs!1275820 (not (= lambda!296357 lambda!296211))))

(assert (=> bs!1275818 (not (= lambda!296357 lambda!296207))))

(declare-fun bs!1275821 () Bool)

(assert (= bs!1275821 (and b!5526055 b!5524661)))

(assert (=> bs!1275821 (= (and (= (regOne!31534 (regTwo!31535 r!7292)) (regOne!31534 r!7292)) (= (regTwo!31534 (regTwo!31535 r!7292)) (regTwo!31534 r!7292))) (= lambda!296357 lambda!296229))))

(declare-fun bs!1275822 () Bool)

(assert (= bs!1275822 (and b!5526055 b!5525770)))

(assert (=> bs!1275822 (not (= lambda!296357 lambda!296321))))

(declare-fun bs!1275823 () Bool)

(assert (= bs!1275823 (and b!5526055 b!5524067)))

(assert (=> bs!1275823 (not (= lambda!296357 lambda!296135))))

(declare-fun bs!1275824 () Bool)

(assert (= bs!1275824 (and b!5526055 b!5525766)))

(assert (=> bs!1275824 (= (and (= (regOne!31534 (regTwo!31535 r!7292)) (regOne!31534 (regOne!31535 r!7292))) (= (regTwo!31534 (regTwo!31535 r!7292)) (regTwo!31534 (regOne!31535 r!7292)))) (= lambda!296357 lambda!296322))))

(assert (=> bs!1275819 (= (and (= (regOne!31534 (regTwo!31535 r!7292)) (regOne!31534 r!7292)) (= (regTwo!31534 (regTwo!31535 r!7292)) (regTwo!31534 r!7292))) (= lambda!296357 lambda!296354))))

(assert (=> bs!1275823 (= (and (= (regOne!31534 (regTwo!31535 r!7292)) (regOne!31534 r!7292)) (= (regTwo!31534 (regTwo!31535 r!7292)) (regTwo!31534 r!7292))) (= lambda!296357 lambda!296136))))

(declare-fun bs!1275825 () Bool)

(assert (= bs!1275825 (and b!5526055 d!1750945)))

(assert (=> bs!1275825 (not (= lambda!296357 lambda!296332))))

(declare-fun bs!1275826 () Bool)

(assert (= bs!1275826 (and b!5526055 b!5526059)))

(assert (=> bs!1275826 (not (= lambda!296357 lambda!296356))))

(assert (=> b!5526055 true))

(assert (=> b!5526055 true))

(declare-fun b!5526053 () Bool)

(declare-fun e!3416334 () Bool)

(declare-fun e!3416331 () Bool)

(assert (=> b!5526053 (= e!3416334 e!3416331)))

(declare-fun res!2353205 () Bool)

(assert (=> b!5526053 (= res!2353205 (matchRSpec!2614 (regOne!31535 (regTwo!31535 r!7292)) s!2326))))

(assert (=> b!5526053 (=> res!2353205 e!3416331)))

(declare-fun bm!409948 () Bool)

(declare-fun call!409953 () Bool)

(assert (=> bm!409948 (= call!409953 (isEmpty!34498 s!2326))))

(declare-fun b!5526054 () Bool)

(declare-fun res!2353204 () Bool)

(declare-fun e!3416329 () Bool)

(assert (=> b!5526054 (=> res!2353204 e!3416329)))

(assert (=> b!5526054 (= res!2353204 call!409953)))

(declare-fun e!3416332 () Bool)

(assert (=> b!5526054 (= e!3416332 e!3416329)))

(declare-fun call!409954 () Bool)

(assert (=> b!5526055 (= e!3416332 call!409954)))

(declare-fun b!5526056 () Bool)

(assert (=> b!5526056 (= e!3416334 e!3416332)))

(declare-fun c!966723 () Bool)

(assert (=> b!5526056 (= c!966723 ((_ is Star!15511) (regTwo!31535 r!7292)))))

(declare-fun b!5526057 () Bool)

(declare-fun e!3416328 () Bool)

(assert (=> b!5526057 (= e!3416328 call!409953)))

(declare-fun b!5526058 () Bool)

(declare-fun e!3416333 () Bool)

(assert (=> b!5526058 (= e!3416328 e!3416333)))

(declare-fun res!2353203 () Bool)

(assert (=> b!5526058 (= res!2353203 (not ((_ is EmptyLang!15511) (regTwo!31535 r!7292))))))

(assert (=> b!5526058 (=> (not res!2353203) (not e!3416333))))

(declare-fun bm!409949 () Bool)

(assert (=> bm!409949 (= call!409954 (Exists!2611 (ite c!966723 lambda!296356 lambda!296357)))))

(assert (=> b!5526059 (= e!3416329 call!409954)))

(declare-fun b!5526060 () Bool)

(declare-fun c!966725 () Bool)

(assert (=> b!5526060 (= c!966725 ((_ is Union!15511) (regTwo!31535 r!7292)))))

(declare-fun e!3416330 () Bool)

(assert (=> b!5526060 (= e!3416330 e!3416334)))

(declare-fun b!5526061 () Bool)

(assert (=> b!5526061 (= e!3416330 (= s!2326 (Cons!62710 (c!966149 (regTwo!31535 r!7292)) Nil!62710)))))

(declare-fun b!5526062 () Bool)

(assert (=> b!5526062 (= e!3416331 (matchRSpec!2614 (regTwo!31535 (regTwo!31535 r!7292)) s!2326))))

(declare-fun b!5526063 () Bool)

(declare-fun c!966722 () Bool)

(assert (=> b!5526063 (= c!966722 ((_ is ElementMatch!15511) (regTwo!31535 r!7292)))))

(assert (=> b!5526063 (= e!3416333 e!3416330)))

(declare-fun d!1751073 () Bool)

(declare-fun c!966724 () Bool)

(assert (=> d!1751073 (= c!966724 ((_ is EmptyExpr!15511) (regTwo!31535 r!7292)))))

(assert (=> d!1751073 (= (matchRSpec!2614 (regTwo!31535 r!7292) s!2326) e!3416328)))

(assert (= (and d!1751073 c!966724) b!5526057))

(assert (= (and d!1751073 (not c!966724)) b!5526058))

(assert (= (and b!5526058 res!2353203) b!5526063))

(assert (= (and b!5526063 c!966722) b!5526061))

(assert (= (and b!5526063 (not c!966722)) b!5526060))

(assert (= (and b!5526060 c!966725) b!5526053))

(assert (= (and b!5526060 (not c!966725)) b!5526056))

(assert (= (and b!5526053 (not res!2353205)) b!5526062))

(assert (= (and b!5526056 c!966723) b!5526054))

(assert (= (and b!5526056 (not c!966723)) b!5526055))

(assert (= (and b!5526054 (not res!2353204)) b!5526059))

(assert (= (or b!5526059 b!5526055) bm!409949))

(assert (= (or b!5526057 b!5526054) bm!409948))

(declare-fun m!6528488 () Bool)

(assert (=> b!5526053 m!6528488))

(assert (=> bm!409948 m!6527056))

(declare-fun m!6528490 () Bool)

(assert (=> bm!409949 m!6528490))

(declare-fun m!6528492 () Bool)

(assert (=> b!5526062 m!6528492))

(assert (=> b!5524668 d!1751073))

(declare-fun d!1751075 () Bool)

(declare-fun res!2353206 () Bool)

(declare-fun e!3416335 () Bool)

(assert (=> d!1751075 (=> res!2353206 e!3416335)))

(assert (=> d!1751075 (= res!2353206 ((_ is Nil!62708) (exprs!5395 lt!2247106)))))

(assert (=> d!1751075 (= (forall!14687 (exprs!5395 lt!2247106) lambda!296243) e!3416335)))

(declare-fun b!5526064 () Bool)

(declare-fun e!3416336 () Bool)

(assert (=> b!5526064 (= e!3416335 e!3416336)))

(declare-fun res!2353207 () Bool)

(assert (=> b!5526064 (=> (not res!2353207) (not e!3416336))))

(assert (=> b!5526064 (= res!2353207 (dynLambda!24507 lambda!296243 (h!69156 (exprs!5395 lt!2247106))))))

(declare-fun b!5526065 () Bool)

(assert (=> b!5526065 (= e!3416336 (forall!14687 (t!376085 (exprs!5395 lt!2247106)) lambda!296243))))

(assert (= (and d!1751075 (not res!2353206)) b!5526064))

(assert (= (and b!5526064 res!2353207) b!5526065))

(declare-fun b_lambda!209623 () Bool)

(assert (=> (not b_lambda!209623) (not b!5526064)))

(declare-fun m!6528494 () Bool)

(assert (=> b!5526064 m!6528494))

(declare-fun m!6528496 () Bool)

(assert (=> b!5526065 m!6528496))

(assert (=> b!5524844 d!1751075))

(declare-fun b!5526066 () Bool)

(declare-fun e!3416338 () (InoxSet Context!9790))

(assert (=> b!5526066 (= e!3416338 (store ((as const (Array Context!9790 Bool)) false) (Context!9791 (t!376085 (exprs!5395 (h!69157 zl!343)))) true))))

(declare-fun call!409956 () List!62832)

(declare-fun c!966726 () Bool)

(declare-fun bm!409950 () Bool)

(declare-fun call!409958 () (InoxSet Context!9790))

(declare-fun c!966729 () Bool)

(declare-fun c!966728 () Bool)

(assert (=> bm!409950 (= call!409958 (derivationStepZipperDown!853 (ite c!966729 (regTwo!31535 (h!69156 (exprs!5395 (h!69157 zl!343)))) (ite c!966726 (regTwo!31534 (h!69156 (exprs!5395 (h!69157 zl!343)))) (ite c!966728 (regOne!31534 (h!69156 (exprs!5395 (h!69157 zl!343)))) (reg!15840 (h!69156 (exprs!5395 (h!69157 zl!343))))))) (ite (or c!966729 c!966726) (Context!9791 (t!376085 (exprs!5395 (h!69157 zl!343)))) (Context!9791 call!409956)) (h!69158 s!2326)))))

(declare-fun bm!409951 () Bool)

(declare-fun call!409955 () List!62832)

(assert (=> bm!409951 (= call!409956 call!409955)))

(declare-fun b!5526067 () Bool)

(declare-fun c!966727 () Bool)

(assert (=> b!5526067 (= c!966727 ((_ is Star!15511) (h!69156 (exprs!5395 (h!69157 zl!343)))))))

(declare-fun e!3416342 () (InoxSet Context!9790))

(declare-fun e!3416337 () (InoxSet Context!9790))

(assert (=> b!5526067 (= e!3416342 e!3416337)))

(declare-fun d!1751077 () Bool)

(declare-fun c!966730 () Bool)

(assert (=> d!1751077 (= c!966730 (and ((_ is ElementMatch!15511) (h!69156 (exprs!5395 (h!69157 zl!343)))) (= (c!966149 (h!69156 (exprs!5395 (h!69157 zl!343)))) (h!69158 s!2326))))))

(assert (=> d!1751077 (= (derivationStepZipperDown!853 (h!69156 (exprs!5395 (h!69157 zl!343))) (Context!9791 (t!376085 (exprs!5395 (h!69157 zl!343)))) (h!69158 s!2326)) e!3416338)))

(declare-fun b!5526068 () Bool)

(declare-fun e!3416339 () (InoxSet Context!9790))

(declare-fun call!409960 () (InoxSet Context!9790))

(declare-fun call!409959 () (InoxSet Context!9790))

(assert (=> b!5526068 (= e!3416339 ((_ map or) call!409960 call!409959))))

(declare-fun b!5526069 () Bool)

(declare-fun call!409957 () (InoxSet Context!9790))

(assert (=> b!5526069 (= e!3416337 call!409957)))

(declare-fun b!5526070 () Bool)

(assert (=> b!5526070 (= e!3416342 call!409957)))

(declare-fun bm!409952 () Bool)

(assert (=> bm!409952 (= call!409957 call!409959)))

(declare-fun b!5526071 () Bool)

(declare-fun e!3416340 () Bool)

(assert (=> b!5526071 (= e!3416340 (nullable!5545 (regOne!31534 (h!69156 (exprs!5395 (h!69157 zl!343))))))))

(declare-fun bm!409953 () Bool)

(assert (=> bm!409953 (= call!409955 ($colon$colon!1590 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 (h!69157 zl!343))))) (ite (or c!966726 c!966728) (regTwo!31534 (h!69156 (exprs!5395 (h!69157 zl!343)))) (h!69156 (exprs!5395 (h!69157 zl!343))))))))

(declare-fun bm!409954 () Bool)

(assert (=> bm!409954 (= call!409959 call!409958)))

(declare-fun b!5526072 () Bool)

(declare-fun e!3416341 () (InoxSet Context!9790))

(assert (=> b!5526072 (= e!3416338 e!3416341)))

(assert (=> b!5526072 (= c!966729 ((_ is Union!15511) (h!69156 (exprs!5395 (h!69157 zl!343)))))))

(declare-fun bm!409955 () Bool)

(assert (=> bm!409955 (= call!409960 (derivationStepZipperDown!853 (ite c!966729 (regOne!31535 (h!69156 (exprs!5395 (h!69157 zl!343)))) (regOne!31534 (h!69156 (exprs!5395 (h!69157 zl!343))))) (ite c!966729 (Context!9791 (t!376085 (exprs!5395 (h!69157 zl!343)))) (Context!9791 call!409955)) (h!69158 s!2326)))))

(declare-fun b!5526073 () Bool)

(assert (=> b!5526073 (= e!3416341 ((_ map or) call!409960 call!409958))))

(declare-fun b!5526074 () Bool)

(assert (=> b!5526074 (= e!3416339 e!3416342)))

(assert (=> b!5526074 (= c!966728 ((_ is Concat!24356) (h!69156 (exprs!5395 (h!69157 zl!343)))))))

(declare-fun b!5526075 () Bool)

(assert (=> b!5526075 (= c!966726 e!3416340)))

(declare-fun res!2353208 () Bool)

(assert (=> b!5526075 (=> (not res!2353208) (not e!3416340))))

(assert (=> b!5526075 (= res!2353208 ((_ is Concat!24356) (h!69156 (exprs!5395 (h!69157 zl!343)))))))

(assert (=> b!5526075 (= e!3416341 e!3416339)))

(declare-fun b!5526076 () Bool)

(assert (=> b!5526076 (= e!3416337 ((as const (Array Context!9790 Bool)) false))))

(assert (= (and d!1751077 c!966730) b!5526066))

(assert (= (and d!1751077 (not c!966730)) b!5526072))

(assert (= (and b!5526072 c!966729) b!5526073))

(assert (= (and b!5526072 (not c!966729)) b!5526075))

(assert (= (and b!5526075 res!2353208) b!5526071))

(assert (= (and b!5526075 c!966726) b!5526068))

(assert (= (and b!5526075 (not c!966726)) b!5526074))

(assert (= (and b!5526074 c!966728) b!5526070))

(assert (= (and b!5526074 (not c!966728)) b!5526067))

(assert (= (and b!5526067 c!966727) b!5526069))

(assert (= (and b!5526067 (not c!966727)) b!5526076))

(assert (= (or b!5526070 b!5526069) bm!409951))

(assert (= (or b!5526070 b!5526069) bm!409952))

(assert (= (or b!5526068 bm!409951) bm!409953))

(assert (= (or b!5526068 bm!409952) bm!409954))

(assert (= (or b!5526073 bm!409954) bm!409950))

(assert (= (or b!5526073 b!5526068) bm!409955))

(declare-fun m!6528498 () Bool)

(assert (=> b!5526066 m!6528498))

(declare-fun m!6528500 () Bool)

(assert (=> bm!409950 m!6528500))

(declare-fun m!6528502 () Bool)

(assert (=> bm!409953 m!6528502))

(declare-fun m!6528504 () Bool)

(assert (=> b!5526071 m!6528504))

(declare-fun m!6528506 () Bool)

(assert (=> bm!409955 m!6528506))

(assert (=> bm!409649 d!1751077))

(declare-fun d!1751079 () Bool)

(assert (=> d!1751079 (= (isEmpty!34494 (exprs!5395 (h!69157 zl!343))) ((_ is Nil!62708) (exprs!5395 (h!69157 zl!343))))))

(assert (=> b!5524622 d!1751079))

(declare-fun bm!409956 () Bool)

(declare-fun call!409961 () (InoxSet Context!9790))

(assert (=> bm!409956 (= call!409961 (derivationStepZipperDown!853 (h!69156 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 (h!69157 zl!343)))))) (Context!9791 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 (h!69157 zl!343))))))) (h!69158 s!2326)))))

(declare-fun b!5526077 () Bool)

(declare-fun e!3416343 () (InoxSet Context!9790))

(assert (=> b!5526077 (= e!3416343 ((as const (Array Context!9790 Bool)) false))))

(declare-fun b!5526078 () Bool)

(declare-fun e!3416344 () (InoxSet Context!9790))

(assert (=> b!5526078 (= e!3416344 e!3416343)))

(declare-fun c!966732 () Bool)

(assert (=> b!5526078 (= c!966732 ((_ is Cons!62708) (exprs!5395 (Context!9791 (t!376085 (exprs!5395 (h!69157 zl!343)))))))))

(declare-fun d!1751081 () Bool)

(declare-fun c!966731 () Bool)

(declare-fun e!3416345 () Bool)

(assert (=> d!1751081 (= c!966731 e!3416345)))

(declare-fun res!2353209 () Bool)

(assert (=> d!1751081 (=> (not res!2353209) (not e!3416345))))

(assert (=> d!1751081 (= res!2353209 ((_ is Cons!62708) (exprs!5395 (Context!9791 (t!376085 (exprs!5395 (h!69157 zl!343)))))))))

(assert (=> d!1751081 (= (derivationStepZipperUp!779 (Context!9791 (t!376085 (exprs!5395 (h!69157 zl!343)))) (h!69158 s!2326)) e!3416344)))

(declare-fun b!5526079 () Bool)

(assert (=> b!5526079 (= e!3416343 call!409961)))

(declare-fun b!5526080 () Bool)

(assert (=> b!5526080 (= e!3416344 ((_ map or) call!409961 (derivationStepZipperUp!779 (Context!9791 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 (h!69157 zl!343))))))) (h!69158 s!2326))))))

(declare-fun b!5526081 () Bool)

(assert (=> b!5526081 (= e!3416345 (nullable!5545 (h!69156 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 (h!69157 zl!343))))))))))

(assert (= (and d!1751081 res!2353209) b!5526081))

(assert (= (and d!1751081 c!966731) b!5526080))

(assert (= (and d!1751081 (not c!966731)) b!5526078))

(assert (= (and b!5526078 c!966732) b!5526079))

(assert (= (and b!5526078 (not c!966732)) b!5526077))

(assert (= (or b!5526080 b!5526079) bm!409956))

(declare-fun m!6528508 () Bool)

(assert (=> bm!409956 m!6528508))

(declare-fun m!6528510 () Bool)

(assert (=> b!5526080 m!6528510))

(declare-fun m!6528512 () Bool)

(assert (=> b!5526081 m!6528512))

(assert (=> b!5524553 d!1751081))

(declare-fun b!5526082 () Bool)

(declare-fun e!3416347 () (InoxSet Context!9790))

(assert (=> b!5526082 (= e!3416347 (store ((as const (Array Context!9790 Bool)) false) (Context!9791 (t!376085 (exprs!5395 lt!2247113))) true))))

(declare-fun call!409963 () List!62832)

(declare-fun bm!409957 () Bool)

(declare-fun c!966733 () Bool)

(declare-fun c!966735 () Bool)

(declare-fun c!966736 () Bool)

(declare-fun call!409965 () (InoxSet Context!9790))

(assert (=> bm!409957 (= call!409965 (derivationStepZipperDown!853 (ite c!966736 (regTwo!31535 (h!69156 (exprs!5395 lt!2247113))) (ite c!966733 (regTwo!31534 (h!69156 (exprs!5395 lt!2247113))) (ite c!966735 (regOne!31534 (h!69156 (exprs!5395 lt!2247113))) (reg!15840 (h!69156 (exprs!5395 lt!2247113)))))) (ite (or c!966736 c!966733) (Context!9791 (t!376085 (exprs!5395 lt!2247113))) (Context!9791 call!409963)) (h!69158 s!2326)))))

(declare-fun bm!409958 () Bool)

(declare-fun call!409962 () List!62832)

(assert (=> bm!409958 (= call!409963 call!409962)))

(declare-fun b!5526083 () Bool)

(declare-fun c!966734 () Bool)

(assert (=> b!5526083 (= c!966734 ((_ is Star!15511) (h!69156 (exprs!5395 lt!2247113))))))

(declare-fun e!3416351 () (InoxSet Context!9790))

(declare-fun e!3416346 () (InoxSet Context!9790))

(assert (=> b!5526083 (= e!3416351 e!3416346)))

(declare-fun d!1751083 () Bool)

(declare-fun c!966737 () Bool)

(assert (=> d!1751083 (= c!966737 (and ((_ is ElementMatch!15511) (h!69156 (exprs!5395 lt!2247113))) (= (c!966149 (h!69156 (exprs!5395 lt!2247113))) (h!69158 s!2326))))))

(assert (=> d!1751083 (= (derivationStepZipperDown!853 (h!69156 (exprs!5395 lt!2247113)) (Context!9791 (t!376085 (exprs!5395 lt!2247113))) (h!69158 s!2326)) e!3416347)))

(declare-fun b!5526084 () Bool)

(declare-fun e!3416348 () (InoxSet Context!9790))

(declare-fun call!409967 () (InoxSet Context!9790))

(declare-fun call!409966 () (InoxSet Context!9790))

(assert (=> b!5526084 (= e!3416348 ((_ map or) call!409967 call!409966))))

(declare-fun b!5526085 () Bool)

(declare-fun call!409964 () (InoxSet Context!9790))

(assert (=> b!5526085 (= e!3416346 call!409964)))

(declare-fun b!5526086 () Bool)

(assert (=> b!5526086 (= e!3416351 call!409964)))

(declare-fun bm!409959 () Bool)

(assert (=> bm!409959 (= call!409964 call!409966)))

(declare-fun b!5526087 () Bool)

(declare-fun e!3416349 () Bool)

(assert (=> b!5526087 (= e!3416349 (nullable!5545 (regOne!31534 (h!69156 (exprs!5395 lt!2247113)))))))

(declare-fun bm!409960 () Bool)

(assert (=> bm!409960 (= call!409962 ($colon$colon!1590 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247113)))) (ite (or c!966733 c!966735) (regTwo!31534 (h!69156 (exprs!5395 lt!2247113))) (h!69156 (exprs!5395 lt!2247113)))))))

(declare-fun bm!409961 () Bool)

(assert (=> bm!409961 (= call!409966 call!409965)))

(declare-fun b!5526088 () Bool)

(declare-fun e!3416350 () (InoxSet Context!9790))

(assert (=> b!5526088 (= e!3416347 e!3416350)))

(assert (=> b!5526088 (= c!966736 ((_ is Union!15511) (h!69156 (exprs!5395 lt!2247113))))))

(declare-fun bm!409962 () Bool)

(assert (=> bm!409962 (= call!409967 (derivationStepZipperDown!853 (ite c!966736 (regOne!31535 (h!69156 (exprs!5395 lt!2247113))) (regOne!31534 (h!69156 (exprs!5395 lt!2247113)))) (ite c!966736 (Context!9791 (t!376085 (exprs!5395 lt!2247113))) (Context!9791 call!409962)) (h!69158 s!2326)))))

(declare-fun b!5526089 () Bool)

(assert (=> b!5526089 (= e!3416350 ((_ map or) call!409967 call!409965))))

(declare-fun b!5526090 () Bool)

(assert (=> b!5526090 (= e!3416348 e!3416351)))

(assert (=> b!5526090 (= c!966735 ((_ is Concat!24356) (h!69156 (exprs!5395 lt!2247113))))))

(declare-fun b!5526091 () Bool)

(assert (=> b!5526091 (= c!966733 e!3416349)))

(declare-fun res!2353210 () Bool)

(assert (=> b!5526091 (=> (not res!2353210) (not e!3416349))))

(assert (=> b!5526091 (= res!2353210 ((_ is Concat!24356) (h!69156 (exprs!5395 lt!2247113))))))

(assert (=> b!5526091 (= e!3416350 e!3416348)))

(declare-fun b!5526092 () Bool)

(assert (=> b!5526092 (= e!3416346 ((as const (Array Context!9790 Bool)) false))))

(assert (= (and d!1751083 c!966737) b!5526082))

(assert (= (and d!1751083 (not c!966737)) b!5526088))

(assert (= (and b!5526088 c!966736) b!5526089))

(assert (= (and b!5526088 (not c!966736)) b!5526091))

(assert (= (and b!5526091 res!2353210) b!5526087))

(assert (= (and b!5526091 c!966733) b!5526084))

(assert (= (and b!5526091 (not c!966733)) b!5526090))

(assert (= (and b!5526090 c!966735) b!5526086))

(assert (= (and b!5526090 (not c!966735)) b!5526083))

(assert (= (and b!5526083 c!966734) b!5526085))

(assert (= (and b!5526083 (not c!966734)) b!5526092))

(assert (= (or b!5526086 b!5526085) bm!409958))

(assert (= (or b!5526086 b!5526085) bm!409959))

(assert (= (or b!5526084 bm!409958) bm!409960))

(assert (= (or b!5526084 bm!409959) bm!409961))

(assert (= (or b!5526089 bm!409961) bm!409957))

(assert (= (or b!5526089 b!5526084) bm!409962))

(declare-fun m!6528514 () Bool)

(assert (=> b!5526082 m!6528514))

(declare-fun m!6528516 () Bool)

(assert (=> bm!409957 m!6528516))

(declare-fun m!6528518 () Bool)

(assert (=> bm!409960 m!6528518))

(declare-fun m!6528520 () Bool)

(assert (=> b!5526087 m!6528520))

(declare-fun m!6528522 () Bool)

(assert (=> bm!409962 m!6528522))

(assert (=> bm!409693 d!1751083))

(assert (=> bs!1274772 d!1750401))

(declare-fun d!1751085 () Bool)

(assert (=> d!1751085 (= (isEmpty!34494 (tail!10920 (exprs!5395 (h!69157 zl!343)))) ((_ is Nil!62708) (tail!10920 (exprs!5395 (h!69157 zl!343)))))))

(assert (=> b!5524626 d!1751085))

(declare-fun d!1751087 () Bool)

(assert (=> d!1751087 (= (tail!10920 (exprs!5395 (h!69157 zl!343))) (t!376085 (exprs!5395 (h!69157 zl!343))))))

(assert (=> b!5524626 d!1751087))

(declare-fun b!5526093 () Bool)

(declare-fun e!3416352 () Bool)

(declare-fun e!3416353 () Bool)

(assert (=> b!5526093 (= e!3416352 e!3416353)))

(declare-fun res!2353218 () Bool)

(assert (=> b!5526093 (=> (not res!2353218) (not e!3416353))))

(declare-fun lt!2247381 () Bool)

(assert (=> b!5526093 (= res!2353218 (not lt!2247381))))

(declare-fun b!5526094 () Bool)

(declare-fun res!2353212 () Bool)

(assert (=> b!5526094 (=> res!2353212 e!3416352)))

(declare-fun e!3416358 () Bool)

(assert (=> b!5526094 (= res!2353212 e!3416358)))

(declare-fun res!2353216 () Bool)

(assert (=> b!5526094 (=> (not res!2353216) (not e!3416358))))

(assert (=> b!5526094 (= res!2353216 lt!2247381)))

(declare-fun b!5526095 () Bool)

(declare-fun res!2353215 () Bool)

(declare-fun e!3416355 () Bool)

(assert (=> b!5526095 (=> res!2353215 e!3416355)))

(assert (=> b!5526095 (= res!2353215 (not (isEmpty!34498 (tail!10921 (_1!35911 (get!21582 lt!2247213))))))))

(declare-fun b!5526096 () Bool)

(declare-fun res!2353211 () Bool)

(assert (=> b!5526096 (=> (not res!2353211) (not e!3416358))))

(assert (=> b!5526096 (= res!2353211 (isEmpty!34498 (tail!10921 (_1!35911 (get!21582 lt!2247213)))))))

(declare-fun b!5526097 () Bool)

(declare-fun res!2353214 () Bool)

(assert (=> b!5526097 (=> res!2353214 e!3416352)))

(assert (=> b!5526097 (= res!2353214 (not ((_ is ElementMatch!15511) (regOne!31534 r!7292))))))

(declare-fun e!3416354 () Bool)

(assert (=> b!5526097 (= e!3416354 e!3416352)))

(declare-fun b!5526098 () Bool)

(assert (=> b!5526098 (= e!3416355 (not (= (head!11826 (_1!35911 (get!21582 lt!2247213))) (c!966149 (regOne!31534 r!7292)))))))

(declare-fun b!5526100 () Bool)

(declare-fun e!3416357 () Bool)

(assert (=> b!5526100 (= e!3416357 e!3416354)))

(declare-fun c!966739 () Bool)

(assert (=> b!5526100 (= c!966739 ((_ is EmptyLang!15511) (regOne!31534 r!7292)))))

(declare-fun b!5526101 () Bool)

(declare-fun e!3416356 () Bool)

(assert (=> b!5526101 (= e!3416356 (matchR!7696 (derivativeStep!4376 (regOne!31534 r!7292) (head!11826 (_1!35911 (get!21582 lt!2247213)))) (tail!10921 (_1!35911 (get!21582 lt!2247213)))))))

(declare-fun bm!409963 () Bool)

(declare-fun call!409968 () Bool)

(assert (=> bm!409963 (= call!409968 (isEmpty!34498 (_1!35911 (get!21582 lt!2247213))))))

(declare-fun b!5526102 () Bool)

(assert (=> b!5526102 (= e!3416358 (= (head!11826 (_1!35911 (get!21582 lt!2247213))) (c!966149 (regOne!31534 r!7292))))))

(declare-fun b!5526103 () Bool)

(assert (=> b!5526103 (= e!3416356 (nullable!5545 (regOne!31534 r!7292)))))

(declare-fun b!5526104 () Bool)

(assert (=> b!5526104 (= e!3416357 (= lt!2247381 call!409968))))

(declare-fun b!5526105 () Bool)

(assert (=> b!5526105 (= e!3416353 e!3416355)))

(declare-fun res!2353217 () Bool)

(assert (=> b!5526105 (=> res!2353217 e!3416355)))

(assert (=> b!5526105 (= res!2353217 call!409968)))

(declare-fun b!5526106 () Bool)

(assert (=> b!5526106 (= e!3416354 (not lt!2247381))))

(declare-fun d!1751089 () Bool)

(assert (=> d!1751089 e!3416357))

(declare-fun c!966740 () Bool)

(assert (=> d!1751089 (= c!966740 ((_ is EmptyExpr!15511) (regOne!31534 r!7292)))))

(assert (=> d!1751089 (= lt!2247381 e!3416356)))

(declare-fun c!966738 () Bool)

(assert (=> d!1751089 (= c!966738 (isEmpty!34498 (_1!35911 (get!21582 lt!2247213))))))

(assert (=> d!1751089 (validRegex!7247 (regOne!31534 r!7292))))

(assert (=> d!1751089 (= (matchR!7696 (regOne!31534 r!7292) (_1!35911 (get!21582 lt!2247213))) lt!2247381)))

(declare-fun b!5526099 () Bool)

(declare-fun res!2353213 () Bool)

(assert (=> b!5526099 (=> (not res!2353213) (not e!3416358))))

(assert (=> b!5526099 (= res!2353213 (not call!409968))))

(assert (= (and d!1751089 c!966738) b!5526103))

(assert (= (and d!1751089 (not c!966738)) b!5526101))

(assert (= (and d!1751089 c!966740) b!5526104))

(assert (= (and d!1751089 (not c!966740)) b!5526100))

(assert (= (and b!5526100 c!966739) b!5526106))

(assert (= (and b!5526100 (not c!966739)) b!5526097))

(assert (= (and b!5526097 (not res!2353214)) b!5526094))

(assert (= (and b!5526094 res!2353216) b!5526099))

(assert (= (and b!5526099 res!2353213) b!5526096))

(assert (= (and b!5526096 res!2353211) b!5526102))

(assert (= (and b!5526094 (not res!2353212)) b!5526093))

(assert (= (and b!5526093 res!2353218) b!5526105))

(assert (= (and b!5526105 (not res!2353217)) b!5526095))

(assert (= (and b!5526095 (not res!2353215)) b!5526098))

(assert (= (or b!5526104 b!5526099 b!5526105) bm!409963))

(declare-fun m!6528524 () Bool)

(assert (=> b!5526102 m!6528524))

(declare-fun m!6528526 () Bool)

(assert (=> d!1751089 m!6528526))

(assert (=> d!1751089 m!6526962))

(assert (=> b!5526098 m!6528524))

(declare-fun m!6528528 () Bool)

(assert (=> b!5526095 m!6528528))

(assert (=> b!5526095 m!6528528))

(declare-fun m!6528530 () Bool)

(assert (=> b!5526095 m!6528530))

(assert (=> b!5526096 m!6528528))

(assert (=> b!5526096 m!6528528))

(assert (=> b!5526096 m!6528530))

(assert (=> b!5526103 m!6526520))

(assert (=> bm!409963 m!6528526))

(assert (=> b!5526101 m!6528524))

(assert (=> b!5526101 m!6528524))

(declare-fun m!6528532 () Bool)

(assert (=> b!5526101 m!6528532))

(assert (=> b!5526101 m!6528528))

(assert (=> b!5526101 m!6528532))

(assert (=> b!5526101 m!6528528))

(declare-fun m!6528534 () Bool)

(assert (=> b!5526101 m!6528534))

(assert (=> b!5524525 d!1751089))

(assert (=> b!5524525 d!1750957))

(declare-fun bs!1275827 () Bool)

(declare-fun d!1751091 () Bool)

(assert (= bs!1275827 (and d!1751091 d!1751067)))

(declare-fun lambda!296358 () Int)

(assert (=> bs!1275827 (= lambda!296358 lambda!296355)))

(declare-fun bs!1275828 () Bool)

(assert (= bs!1275828 (and d!1751091 d!1750931)))

(assert (=> bs!1275828 (= lambda!296358 lambda!296328)))

(declare-fun bs!1275829 () Bool)

(assert (= bs!1275829 (and d!1751091 b!5525919)))

(assert (=> bs!1275829 (not (= lambda!296358 lambda!296337))))

(declare-fun bs!1275830 () Bool)

(assert (= bs!1275830 (and d!1751091 d!1751033)))

(assert (=> bs!1275830 (= lambda!296358 lambda!296348)))

(declare-fun bs!1275831 () Bool)

(assert (= bs!1275831 (and d!1751091 b!5524493)))

(assert (=> bs!1275831 (not (= lambda!296358 lambda!296198))))

(declare-fun bs!1275832 () Bool)

(assert (= bs!1275832 (and d!1751091 b!5524500)))

(assert (=> bs!1275832 (not (= lambda!296358 lambda!296202))))

(declare-fun bs!1275833 () Bool)

(assert (= bs!1275833 (and d!1751091 b!5525921)))

(assert (=> bs!1275833 (not (= lambda!296358 lambda!296338))))

(declare-fun bs!1275834 () Bool)

(assert (= bs!1275834 (and d!1751091 d!1751017)))

(assert (=> bs!1275834 (= lambda!296358 lambda!296345)))

(declare-fun bs!1275835 () Bool)

(assert (= bs!1275835 (and d!1751091 b!5524495)))

(assert (=> bs!1275835 (not (= lambda!296358 lambda!296199))))

(declare-fun bs!1275836 () Bool)

(assert (= bs!1275836 (and d!1751091 d!1750927)))

(assert (=> bs!1275836 (= lambda!296358 lambda!296326)))

(declare-fun bs!1275837 () Bool)

(assert (= bs!1275837 (and d!1751091 b!5524498)))

(assert (=> bs!1275837 (not (= lambda!296358 lambda!296201))))

(declare-fun bs!1275838 () Bool)

(assert (= bs!1275838 (and d!1751091 d!1750967)))

(assert (=> bs!1275838 (not (= lambda!296358 lambda!296333))))

(declare-fun bs!1275839 () Bool)

(assert (= bs!1275839 (and d!1751091 b!5525754)))

(assert (=> bs!1275839 (not (= lambda!296358 lambda!296318))))

(declare-fun bs!1275840 () Bool)

(assert (= bs!1275840 (and d!1751091 b!5525756)))

(assert (=> bs!1275840 (not (= lambda!296358 lambda!296319))))

(declare-fun bs!1275841 () Bool)

(assert (= bs!1275841 (and d!1751091 d!1751015)))

(assert (=> bs!1275841 (= lambda!296358 lambda!296344)))

(declare-fun bs!1275842 () Bool)

(assert (= bs!1275842 (and d!1751091 d!1750881)))

(assert (=> bs!1275842 (not (= lambda!296358 lambda!296314))))

(assert (=> d!1751091 (= (nullableZipper!1537 lt!2247111) (exists!2145 lt!2247111 lambda!296358))))

(declare-fun bs!1275843 () Bool)

(assert (= bs!1275843 d!1751091))

(declare-fun m!6528536 () Bool)

(assert (=> bs!1275843 m!6528536))

(assert (=> b!5524827 d!1751091))

(assert (=> d!1750423 d!1750923))

(assert (=> d!1750461 d!1750789))

(declare-fun bs!1275844 () Bool)

(declare-fun d!1751093 () Bool)

(assert (= bs!1275844 (and d!1751093 d!1751091)))

(declare-fun lambda!296359 () Int)

(assert (=> bs!1275844 (= lambda!296359 lambda!296358)))

(declare-fun bs!1275845 () Bool)

(assert (= bs!1275845 (and d!1751093 d!1751067)))

(assert (=> bs!1275845 (= lambda!296359 lambda!296355)))

(declare-fun bs!1275846 () Bool)

(assert (= bs!1275846 (and d!1751093 d!1750931)))

(assert (=> bs!1275846 (= lambda!296359 lambda!296328)))

(declare-fun bs!1275847 () Bool)

(assert (= bs!1275847 (and d!1751093 b!5525919)))

(assert (=> bs!1275847 (not (= lambda!296359 lambda!296337))))

(declare-fun bs!1275848 () Bool)

(assert (= bs!1275848 (and d!1751093 d!1751033)))

(assert (=> bs!1275848 (= lambda!296359 lambda!296348)))

(declare-fun bs!1275849 () Bool)

(assert (= bs!1275849 (and d!1751093 b!5524493)))

(assert (=> bs!1275849 (not (= lambda!296359 lambda!296198))))

(declare-fun bs!1275850 () Bool)

(assert (= bs!1275850 (and d!1751093 b!5524500)))

(assert (=> bs!1275850 (not (= lambda!296359 lambda!296202))))

(declare-fun bs!1275851 () Bool)

(assert (= bs!1275851 (and d!1751093 b!5525921)))

(assert (=> bs!1275851 (not (= lambda!296359 lambda!296338))))

(declare-fun bs!1275852 () Bool)

(assert (= bs!1275852 (and d!1751093 d!1751017)))

(assert (=> bs!1275852 (= lambda!296359 lambda!296345)))

(declare-fun bs!1275853 () Bool)

(assert (= bs!1275853 (and d!1751093 b!5524495)))

(assert (=> bs!1275853 (not (= lambda!296359 lambda!296199))))

(declare-fun bs!1275854 () Bool)

(assert (= bs!1275854 (and d!1751093 d!1750927)))

(assert (=> bs!1275854 (= lambda!296359 lambda!296326)))

(declare-fun bs!1275855 () Bool)

(assert (= bs!1275855 (and d!1751093 b!5524498)))

(assert (=> bs!1275855 (not (= lambda!296359 lambda!296201))))

(declare-fun bs!1275856 () Bool)

(assert (= bs!1275856 (and d!1751093 d!1750967)))

(assert (=> bs!1275856 (not (= lambda!296359 lambda!296333))))

(declare-fun bs!1275857 () Bool)

(assert (= bs!1275857 (and d!1751093 b!5525754)))

(assert (=> bs!1275857 (not (= lambda!296359 lambda!296318))))

(declare-fun bs!1275858 () Bool)

(assert (= bs!1275858 (and d!1751093 b!5525756)))

(assert (=> bs!1275858 (not (= lambda!296359 lambda!296319))))

(declare-fun bs!1275859 () Bool)

(assert (= bs!1275859 (and d!1751093 d!1751015)))

(assert (=> bs!1275859 (= lambda!296359 lambda!296344)))

(declare-fun bs!1275860 () Bool)

(assert (= bs!1275860 (and d!1751093 d!1750881)))

(assert (=> bs!1275860 (not (= lambda!296359 lambda!296314))))

(assert (=> d!1751093 (= (nullableZipper!1537 lt!2247097) (exists!2145 lt!2247097 lambda!296359))))

(declare-fun bs!1275861 () Bool)

(assert (= bs!1275861 d!1751093))

(declare-fun m!6528538 () Bool)

(assert (=> bs!1275861 m!6528538))

(assert (=> b!5524818 d!1751093))

(declare-fun d!1751095 () Bool)

(assert (=> d!1751095 (= (isUnion!524 lt!2247226) ((_ is Union!15511) lt!2247226))))

(assert (=> b!5524578 d!1751095))

(declare-fun d!1751097 () Bool)

(assert (=> d!1751097 (= ($colon$colon!1590 (exprs!5395 lt!2247098) (ite (or c!966367 c!966369) (regTwo!31534 (regTwo!31534 r!7292)) (regTwo!31534 r!7292))) (Cons!62708 (ite (or c!966367 c!966369) (regTwo!31534 (regTwo!31534 r!7292)) (regTwo!31534 r!7292)) (exprs!5395 lt!2247098)))))

(assert (=> bm!409683 d!1751097))

(declare-fun d!1751099 () Bool)

(declare-fun res!2353219 () Bool)

(declare-fun e!3416359 () Bool)

(assert (=> d!1751099 (=> res!2353219 e!3416359)))

(assert (=> d!1751099 (= res!2353219 ((_ is Nil!62708) (exprs!5395 (h!69157 zl!343))))))

(assert (=> d!1751099 (= (forall!14687 (exprs!5395 (h!69157 zl!343)) lambda!296235) e!3416359)))

(declare-fun b!5526107 () Bool)

(declare-fun e!3416360 () Bool)

(assert (=> b!5526107 (= e!3416359 e!3416360)))

(declare-fun res!2353220 () Bool)

(assert (=> b!5526107 (=> (not res!2353220) (not e!3416360))))

(assert (=> b!5526107 (= res!2353220 (dynLambda!24507 lambda!296235 (h!69156 (exprs!5395 (h!69157 zl!343)))))))

(declare-fun b!5526108 () Bool)

(assert (=> b!5526108 (= e!3416360 (forall!14687 (t!376085 (exprs!5395 (h!69157 zl!343))) lambda!296235))))

(assert (= (and d!1751099 (not res!2353219)) b!5526107))

(assert (= (and b!5526107 res!2353220) b!5526108))

(declare-fun b_lambda!209625 () Bool)

(assert (=> (not b_lambda!209625) (not b!5526107)))

(declare-fun m!6528540 () Bool)

(assert (=> b!5526107 m!6528540))

(declare-fun m!6528542 () Bool)

(assert (=> b!5526108 m!6528542))

(assert (=> d!1750475 d!1751099))

(declare-fun b!5526109 () Bool)

(declare-fun e!3416362 () (InoxSet Context!9790))

(assert (=> b!5526109 (= e!3416362 (store ((as const (Array Context!9790 Bool)) false) (Context!9791 (t!376085 (exprs!5395 lt!2247103))) true))))

(declare-fun call!409972 () (InoxSet Context!9790))

(declare-fun c!966741 () Bool)

(declare-fun c!966744 () Bool)

(declare-fun call!409970 () List!62832)

(declare-fun c!966743 () Bool)

(declare-fun bm!409964 () Bool)

(assert (=> bm!409964 (= call!409972 (derivationStepZipperDown!853 (ite c!966744 (regTwo!31535 (h!69156 (exprs!5395 lt!2247103))) (ite c!966741 (regTwo!31534 (h!69156 (exprs!5395 lt!2247103))) (ite c!966743 (regOne!31534 (h!69156 (exprs!5395 lt!2247103))) (reg!15840 (h!69156 (exprs!5395 lt!2247103)))))) (ite (or c!966744 c!966741) (Context!9791 (t!376085 (exprs!5395 lt!2247103))) (Context!9791 call!409970)) (h!69158 s!2326)))))

(declare-fun bm!409965 () Bool)

(declare-fun call!409969 () List!62832)

(assert (=> bm!409965 (= call!409970 call!409969)))

(declare-fun b!5526110 () Bool)

(declare-fun c!966742 () Bool)

(assert (=> b!5526110 (= c!966742 ((_ is Star!15511) (h!69156 (exprs!5395 lt!2247103))))))

(declare-fun e!3416366 () (InoxSet Context!9790))

(declare-fun e!3416361 () (InoxSet Context!9790))

(assert (=> b!5526110 (= e!3416366 e!3416361)))

(declare-fun d!1751101 () Bool)

(declare-fun c!966745 () Bool)

(assert (=> d!1751101 (= c!966745 (and ((_ is ElementMatch!15511) (h!69156 (exprs!5395 lt!2247103))) (= (c!966149 (h!69156 (exprs!5395 lt!2247103))) (h!69158 s!2326))))))

(assert (=> d!1751101 (= (derivationStepZipperDown!853 (h!69156 (exprs!5395 lt!2247103)) (Context!9791 (t!376085 (exprs!5395 lt!2247103))) (h!69158 s!2326)) e!3416362)))

(declare-fun b!5526111 () Bool)

(declare-fun e!3416363 () (InoxSet Context!9790))

(declare-fun call!409974 () (InoxSet Context!9790))

(declare-fun call!409973 () (InoxSet Context!9790))

(assert (=> b!5526111 (= e!3416363 ((_ map or) call!409974 call!409973))))

(declare-fun b!5526112 () Bool)

(declare-fun call!409971 () (InoxSet Context!9790))

(assert (=> b!5526112 (= e!3416361 call!409971)))

(declare-fun b!5526113 () Bool)

(assert (=> b!5526113 (= e!3416366 call!409971)))

(declare-fun bm!409966 () Bool)

(assert (=> bm!409966 (= call!409971 call!409973)))

(declare-fun b!5526114 () Bool)

(declare-fun e!3416364 () Bool)

(assert (=> b!5526114 (= e!3416364 (nullable!5545 (regOne!31534 (h!69156 (exprs!5395 lt!2247103)))))))

(declare-fun bm!409967 () Bool)

(assert (=> bm!409967 (= call!409969 ($colon$colon!1590 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247103)))) (ite (or c!966741 c!966743) (regTwo!31534 (h!69156 (exprs!5395 lt!2247103))) (h!69156 (exprs!5395 lt!2247103)))))))

(declare-fun bm!409968 () Bool)

(assert (=> bm!409968 (= call!409973 call!409972)))

(declare-fun b!5526115 () Bool)

(declare-fun e!3416365 () (InoxSet Context!9790))

(assert (=> b!5526115 (= e!3416362 e!3416365)))

(assert (=> b!5526115 (= c!966744 ((_ is Union!15511) (h!69156 (exprs!5395 lt!2247103))))))

(declare-fun bm!409969 () Bool)

(assert (=> bm!409969 (= call!409974 (derivationStepZipperDown!853 (ite c!966744 (regOne!31535 (h!69156 (exprs!5395 lt!2247103))) (regOne!31534 (h!69156 (exprs!5395 lt!2247103)))) (ite c!966744 (Context!9791 (t!376085 (exprs!5395 lt!2247103))) (Context!9791 call!409969)) (h!69158 s!2326)))))

(declare-fun b!5526116 () Bool)

(assert (=> b!5526116 (= e!3416365 ((_ map or) call!409974 call!409972))))

(declare-fun b!5526117 () Bool)

(assert (=> b!5526117 (= e!3416363 e!3416366)))

(assert (=> b!5526117 (= c!966743 ((_ is Concat!24356) (h!69156 (exprs!5395 lt!2247103))))))

(declare-fun b!5526118 () Bool)

(assert (=> b!5526118 (= c!966741 e!3416364)))

(declare-fun res!2353221 () Bool)

(assert (=> b!5526118 (=> (not res!2353221) (not e!3416364))))

(assert (=> b!5526118 (= res!2353221 ((_ is Concat!24356) (h!69156 (exprs!5395 lt!2247103))))))

(assert (=> b!5526118 (= e!3416365 e!3416363)))

(declare-fun b!5526119 () Bool)

(assert (=> b!5526119 (= e!3416361 ((as const (Array Context!9790 Bool)) false))))

(assert (= (and d!1751101 c!966745) b!5526109))

(assert (= (and d!1751101 (not c!966745)) b!5526115))

(assert (= (and b!5526115 c!966744) b!5526116))

(assert (= (and b!5526115 (not c!966744)) b!5526118))

(assert (= (and b!5526118 res!2353221) b!5526114))

(assert (= (and b!5526118 c!966741) b!5526111))

(assert (= (and b!5526118 (not c!966741)) b!5526117))

(assert (= (and b!5526117 c!966743) b!5526113))

(assert (= (and b!5526117 (not c!966743)) b!5526110))

(assert (= (and b!5526110 c!966742) b!5526112))

(assert (= (and b!5526110 (not c!966742)) b!5526119))

(assert (= (or b!5526113 b!5526112) bm!409965))

(assert (= (or b!5526113 b!5526112) bm!409966))

(assert (= (or b!5526111 bm!409965) bm!409967))

(assert (= (or b!5526111 bm!409966) bm!409968))

(assert (= (or b!5526116 bm!409968) bm!409964))

(assert (= (or b!5526116 b!5526111) bm!409969))

(declare-fun m!6528544 () Bool)

(assert (=> b!5526109 m!6528544))

(declare-fun m!6528546 () Bool)

(assert (=> bm!409964 m!6528546))

(declare-fun m!6528548 () Bool)

(assert (=> bm!409967 m!6528548))

(declare-fun m!6528550 () Bool)

(assert (=> b!5526114 m!6528550))

(declare-fun m!6528552 () Bool)

(assert (=> bm!409969 m!6528552))

(assert (=> bm!409692 d!1751101))

(declare-fun bm!409970 () Bool)

(declare-fun call!409975 () (InoxSet Context!9790))

(assert (=> bm!409970 (= call!409975 (derivationStepZipperDown!853 (h!69156 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247103))))) (Context!9791 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247103)))))) (h!69158 s!2326)))))

(declare-fun b!5526120 () Bool)

(declare-fun e!3416367 () (InoxSet Context!9790))

(assert (=> b!5526120 (= e!3416367 ((as const (Array Context!9790 Bool)) false))))

(declare-fun b!5526121 () Bool)

(declare-fun e!3416368 () (InoxSet Context!9790))

(assert (=> b!5526121 (= e!3416368 e!3416367)))

(declare-fun c!966747 () Bool)

(assert (=> b!5526121 (= c!966747 ((_ is Cons!62708) (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247103))))))))

(declare-fun d!1751103 () Bool)

(declare-fun c!966746 () Bool)

(declare-fun e!3416369 () Bool)

(assert (=> d!1751103 (= c!966746 e!3416369)))

(declare-fun res!2353222 () Bool)

(assert (=> d!1751103 (=> (not res!2353222) (not e!3416369))))

(assert (=> d!1751103 (= res!2353222 ((_ is Cons!62708) (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247103))))))))

(assert (=> d!1751103 (= (derivationStepZipperUp!779 (Context!9791 (t!376085 (exprs!5395 lt!2247103))) (h!69158 s!2326)) e!3416368)))

(declare-fun b!5526122 () Bool)

(assert (=> b!5526122 (= e!3416367 call!409975)))

(declare-fun b!5526123 () Bool)

(assert (=> b!5526123 (= e!3416368 ((_ map or) call!409975 (derivationStepZipperUp!779 (Context!9791 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247103)))))) (h!69158 s!2326))))))

(declare-fun b!5526124 () Bool)

(assert (=> b!5526124 (= e!3416369 (nullable!5545 (h!69156 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247103)))))))))

(assert (= (and d!1751103 res!2353222) b!5526124))

(assert (= (and d!1751103 c!966746) b!5526123))

(assert (= (and d!1751103 (not c!966746)) b!5526121))

(assert (= (and b!5526121 c!966747) b!5526122))

(assert (= (and b!5526121 (not c!966747)) b!5526120))

(assert (= (or b!5526123 b!5526122) bm!409970))

(declare-fun m!6528554 () Bool)

(assert (=> bm!409970 m!6528554))

(declare-fun m!6528556 () Bool)

(assert (=> b!5526123 m!6528556))

(declare-fun m!6528558 () Bool)

(assert (=> b!5526124 m!6528558))

(assert (=> b!5524795 d!1751103))

(declare-fun b!5526125 () Bool)

(declare-fun e!3416376 () Bool)

(declare-fun e!3416374 () Bool)

(assert (=> b!5526125 (= e!3416376 e!3416374)))

(declare-fun res!2353223 () Bool)

(assert (=> b!5526125 (=> (not res!2353223) (not e!3416374))))

(declare-fun call!409977 () Bool)

(assert (=> b!5526125 (= res!2353223 call!409977)))

(declare-fun b!5526127 () Bool)

(declare-fun call!409976 () Bool)

(assert (=> b!5526127 (= e!3416374 call!409976)))

(declare-fun bm!409971 () Bool)

(declare-fun call!409978 () Bool)

(assert (=> bm!409971 (= call!409976 call!409978)))

(declare-fun b!5526128 () Bool)

(declare-fun e!3416373 () Bool)

(declare-fun e!3416375 () Bool)

(assert (=> b!5526128 (= e!3416373 e!3416375)))

(declare-fun c!966748 () Bool)

(assert (=> b!5526128 (= c!966748 ((_ is Star!15511) (ite c!966356 (regOne!31535 r!7292) (regOne!31534 r!7292))))))

(declare-fun bm!409972 () Bool)

(declare-fun c!966749 () Bool)

(assert (=> bm!409972 (= call!409977 (validRegex!7247 (ite c!966749 (regOne!31535 (ite c!966356 (regOne!31535 r!7292) (regOne!31534 r!7292))) (regOne!31534 (ite c!966356 (regOne!31535 r!7292) (regOne!31534 r!7292))))))))

(declare-fun b!5526129 () Bool)

(declare-fun res!2353224 () Bool)

(declare-fun e!3416370 () Bool)

(assert (=> b!5526129 (=> (not res!2353224) (not e!3416370))))

(assert (=> b!5526129 (= res!2353224 call!409977)))

(declare-fun e!3416372 () Bool)

(assert (=> b!5526129 (= e!3416372 e!3416370)))

(declare-fun b!5526130 () Bool)

(declare-fun e!3416371 () Bool)

(assert (=> b!5526130 (= e!3416375 e!3416371)))

(declare-fun res!2353225 () Bool)

(assert (=> b!5526130 (= res!2353225 (not (nullable!5545 (reg!15840 (ite c!966356 (regOne!31535 r!7292) (regOne!31534 r!7292))))))))

(assert (=> b!5526130 (=> (not res!2353225) (not e!3416371))))

(declare-fun d!1751105 () Bool)

(declare-fun res!2353227 () Bool)

(assert (=> d!1751105 (=> res!2353227 e!3416373)))

(assert (=> d!1751105 (= res!2353227 ((_ is ElementMatch!15511) (ite c!966356 (regOne!31535 r!7292) (regOne!31534 r!7292))))))

(assert (=> d!1751105 (= (validRegex!7247 (ite c!966356 (regOne!31535 r!7292) (regOne!31534 r!7292))) e!3416373)))

(declare-fun b!5526126 () Bool)

(declare-fun res!2353226 () Bool)

(assert (=> b!5526126 (=> res!2353226 e!3416376)))

(assert (=> b!5526126 (= res!2353226 (not ((_ is Concat!24356) (ite c!966356 (regOne!31535 r!7292) (regOne!31534 r!7292)))))))

(assert (=> b!5526126 (= e!3416372 e!3416376)))

(declare-fun bm!409973 () Bool)

(assert (=> bm!409973 (= call!409978 (validRegex!7247 (ite c!966748 (reg!15840 (ite c!966356 (regOne!31535 r!7292) (regOne!31534 r!7292))) (ite c!966749 (regTwo!31535 (ite c!966356 (regOne!31535 r!7292) (regOne!31534 r!7292))) (regTwo!31534 (ite c!966356 (regOne!31535 r!7292) (regOne!31534 r!7292)))))))))

(declare-fun b!5526131 () Bool)

(assert (=> b!5526131 (= e!3416371 call!409978)))

(declare-fun b!5526132 () Bool)

(assert (=> b!5526132 (= e!3416370 call!409976)))

(declare-fun b!5526133 () Bool)

(assert (=> b!5526133 (= e!3416375 e!3416372)))

(assert (=> b!5526133 (= c!966749 ((_ is Union!15511) (ite c!966356 (regOne!31535 r!7292) (regOne!31534 r!7292))))))

(assert (= (and d!1751105 (not res!2353227)) b!5526128))

(assert (= (and b!5526128 c!966748) b!5526130))

(assert (= (and b!5526128 (not c!966748)) b!5526133))

(assert (= (and b!5526130 res!2353225) b!5526131))

(assert (= (and b!5526133 c!966749) b!5526129))

(assert (= (and b!5526133 (not c!966749)) b!5526126))

(assert (= (and b!5526129 res!2353224) b!5526132))

(assert (= (and b!5526126 (not res!2353226)) b!5526125))

(assert (= (and b!5526125 res!2353223) b!5526127))

(assert (= (or b!5526132 b!5526127) bm!409971))

(assert (= (or b!5526129 b!5526125) bm!409972))

(assert (= (or b!5526131 bm!409971) bm!409973))

(declare-fun m!6528560 () Bool)

(assert (=> bm!409972 m!6528560))

(declare-fun m!6528562 () Bool)

(assert (=> b!5526130 m!6528562))

(declare-fun m!6528564 () Bool)

(assert (=> bm!409973 m!6528564))

(assert (=> bm!409666 d!1751105))

(declare-fun bm!409974 () Bool)

(declare-fun call!409979 () (InoxSet Context!9790))

(assert (=> bm!409974 (= call!409979 (derivationStepZipperDown!853 (h!69156 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247113))))) (Context!9791 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247113)))))) (h!69158 s!2326)))))

(declare-fun b!5526134 () Bool)

(declare-fun e!3416377 () (InoxSet Context!9790))

(assert (=> b!5526134 (= e!3416377 ((as const (Array Context!9790 Bool)) false))))

(declare-fun b!5526135 () Bool)

(declare-fun e!3416378 () (InoxSet Context!9790))

(assert (=> b!5526135 (= e!3416378 e!3416377)))

(declare-fun c!966751 () Bool)

(assert (=> b!5526135 (= c!966751 ((_ is Cons!62708) (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247113))))))))

(declare-fun d!1751107 () Bool)

(declare-fun c!966750 () Bool)

(declare-fun e!3416379 () Bool)

(assert (=> d!1751107 (= c!966750 e!3416379)))

(declare-fun res!2353228 () Bool)

(assert (=> d!1751107 (=> (not res!2353228) (not e!3416379))))

(assert (=> d!1751107 (= res!2353228 ((_ is Cons!62708) (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247113))))))))

(assert (=> d!1751107 (= (derivationStepZipperUp!779 (Context!9791 (t!376085 (exprs!5395 lt!2247113))) (h!69158 s!2326)) e!3416378)))

(declare-fun b!5526136 () Bool)

(assert (=> b!5526136 (= e!3416377 call!409979)))

(declare-fun b!5526137 () Bool)

(assert (=> b!5526137 (= e!3416378 ((_ map or) call!409979 (derivationStepZipperUp!779 (Context!9791 (t!376085 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247113)))))) (h!69158 s!2326))))))

(declare-fun b!5526138 () Bool)

(assert (=> b!5526138 (= e!3416379 (nullable!5545 (h!69156 (exprs!5395 (Context!9791 (t!376085 (exprs!5395 lt!2247113)))))))))

(assert (= (and d!1751107 res!2353228) b!5526138))

(assert (= (and d!1751107 c!966750) b!5526137))

(assert (= (and d!1751107 (not c!966750)) b!5526135))

(assert (= (and b!5526135 c!966751) b!5526136))

(assert (= (and b!5526135 (not c!966751)) b!5526134))

(assert (= (or b!5526137 b!5526136) bm!409974))

(declare-fun m!6528566 () Bool)

(assert (=> bm!409974 m!6528566))

(declare-fun m!6528568 () Bool)

(assert (=> b!5526137 m!6528568))

(declare-fun m!6528570 () Bool)

(assert (=> b!5526138 m!6528570))

(assert (=> b!5524800 d!1751107))

(declare-fun b!5526141 () Bool)

(declare-fun e!3416380 () Bool)

(declare-fun tp!1520345 () Bool)

(assert (=> b!5526141 (= e!3416380 tp!1520345)))

(declare-fun b!5526140 () Bool)

(declare-fun tp!1520347 () Bool)

(declare-fun tp!1520344 () Bool)

(assert (=> b!5526140 (= e!3416380 (and tp!1520347 tp!1520344))))

(assert (=> b!5524862 (= tp!1520125 e!3416380)))

(declare-fun b!5526139 () Bool)

(assert (=> b!5526139 (= e!3416380 tp_is_empty!40275)))

(declare-fun b!5526142 () Bool)

(declare-fun tp!1520348 () Bool)

(declare-fun tp!1520346 () Bool)

(assert (=> b!5526142 (= e!3416380 (and tp!1520348 tp!1520346))))

(assert (= (and b!5524862 ((_ is ElementMatch!15511) (regOne!31535 (regTwo!31534 r!7292)))) b!5526139))

(assert (= (and b!5524862 ((_ is Concat!24356) (regOne!31535 (regTwo!31534 r!7292)))) b!5526140))

(assert (= (and b!5524862 ((_ is Star!15511) (regOne!31535 (regTwo!31534 r!7292)))) b!5526141))

(assert (= (and b!5524862 ((_ is Union!15511) (regOne!31535 (regTwo!31534 r!7292)))) b!5526142))

(declare-fun b!5526145 () Bool)

(declare-fun e!3416381 () Bool)

(declare-fun tp!1520350 () Bool)

(assert (=> b!5526145 (= e!3416381 tp!1520350)))

(declare-fun b!5526144 () Bool)

(declare-fun tp!1520352 () Bool)

(declare-fun tp!1520349 () Bool)

(assert (=> b!5526144 (= e!3416381 (and tp!1520352 tp!1520349))))

(assert (=> b!5524862 (= tp!1520123 e!3416381)))

(declare-fun b!5526143 () Bool)

(assert (=> b!5526143 (= e!3416381 tp_is_empty!40275)))

(declare-fun b!5526146 () Bool)

(declare-fun tp!1520353 () Bool)

(declare-fun tp!1520351 () Bool)

(assert (=> b!5526146 (= e!3416381 (and tp!1520353 tp!1520351))))

(assert (= (and b!5524862 ((_ is ElementMatch!15511) (regTwo!31535 (regTwo!31534 r!7292)))) b!5526143))

(assert (= (and b!5524862 ((_ is Concat!24356) (regTwo!31535 (regTwo!31534 r!7292)))) b!5526144))

(assert (= (and b!5524862 ((_ is Star!15511) (regTwo!31535 (regTwo!31534 r!7292)))) b!5526145))

(assert (= (and b!5524862 ((_ is Union!15511) (regTwo!31535 (regTwo!31534 r!7292)))) b!5526146))

(declare-fun b!5526149 () Bool)

(declare-fun e!3416382 () Bool)

(declare-fun tp!1520355 () Bool)

(assert (=> b!5526149 (= e!3416382 tp!1520355)))

(declare-fun b!5526148 () Bool)

(declare-fun tp!1520357 () Bool)

(declare-fun tp!1520354 () Bool)

(assert (=> b!5526148 (= e!3416382 (and tp!1520357 tp!1520354))))

(assert (=> b!5524868 (= tp!1520132 e!3416382)))

(declare-fun b!5526147 () Bool)

(assert (=> b!5526147 (= e!3416382 tp_is_empty!40275)))

(declare-fun b!5526150 () Bool)

(declare-fun tp!1520358 () Bool)

(declare-fun tp!1520356 () Bool)

(assert (=> b!5526150 (= e!3416382 (and tp!1520358 tp!1520356))))

(assert (= (and b!5524868 ((_ is ElementMatch!15511) (h!69156 (exprs!5395 setElem!36731)))) b!5526147))

(assert (= (and b!5524868 ((_ is Concat!24356) (h!69156 (exprs!5395 setElem!36731)))) b!5526148))

(assert (= (and b!5524868 ((_ is Star!15511) (h!69156 (exprs!5395 setElem!36731)))) b!5526149))

(assert (= (and b!5524868 ((_ is Union!15511) (h!69156 (exprs!5395 setElem!36731)))) b!5526150))

(declare-fun b!5526151 () Bool)

(declare-fun e!3416383 () Bool)

(declare-fun tp!1520359 () Bool)

(declare-fun tp!1520360 () Bool)

(assert (=> b!5526151 (= e!3416383 (and tp!1520359 tp!1520360))))

(assert (=> b!5524868 (= tp!1520133 e!3416383)))

(assert (= (and b!5524868 ((_ is Cons!62708) (t!376085 (exprs!5395 setElem!36731)))) b!5526151))

(declare-fun b!5526154 () Bool)

(declare-fun e!3416384 () Bool)

(declare-fun tp!1520362 () Bool)

(assert (=> b!5526154 (= e!3416384 tp!1520362)))

(declare-fun b!5526153 () Bool)

(declare-fun tp!1520364 () Bool)

(declare-fun tp!1520361 () Bool)

(assert (=> b!5526153 (= e!3416384 (and tp!1520364 tp!1520361))))

(assert (=> b!5524875 (= tp!1520140 e!3416384)))

(declare-fun b!5526152 () Bool)

(assert (=> b!5526152 (= e!3416384 tp_is_empty!40275)))

(declare-fun b!5526155 () Bool)

(declare-fun tp!1520365 () Bool)

(declare-fun tp!1520363 () Bool)

(assert (=> b!5526155 (= e!3416384 (and tp!1520365 tp!1520363))))

(assert (= (and b!5524875 ((_ is ElementMatch!15511) (reg!15840 (regTwo!31535 r!7292)))) b!5526152))

(assert (= (and b!5524875 ((_ is Concat!24356) (reg!15840 (regTwo!31535 r!7292)))) b!5526153))

(assert (= (and b!5524875 ((_ is Star!15511) (reg!15840 (regTwo!31535 r!7292)))) b!5526154))

(assert (= (and b!5524875 ((_ is Union!15511) (reg!15840 (regTwo!31535 r!7292)))) b!5526155))

(declare-fun b!5526158 () Bool)

(declare-fun e!3416385 () Bool)

(declare-fun tp!1520367 () Bool)

(assert (=> b!5526158 (= e!3416385 tp!1520367)))

(declare-fun b!5526157 () Bool)

(declare-fun tp!1520369 () Bool)

(declare-fun tp!1520366 () Bool)

(assert (=> b!5526157 (= e!3416385 (and tp!1520369 tp!1520366))))

(assert (=> b!5524876 (= tp!1520143 e!3416385)))

(declare-fun b!5526156 () Bool)

(assert (=> b!5526156 (= e!3416385 tp_is_empty!40275)))

(declare-fun b!5526159 () Bool)

(declare-fun tp!1520370 () Bool)

(declare-fun tp!1520368 () Bool)

(assert (=> b!5526159 (= e!3416385 (and tp!1520370 tp!1520368))))

(assert (= (and b!5524876 ((_ is ElementMatch!15511) (regOne!31535 (regTwo!31535 r!7292)))) b!5526156))

(assert (= (and b!5524876 ((_ is Concat!24356) (regOne!31535 (regTwo!31535 r!7292)))) b!5526157))

(assert (= (and b!5524876 ((_ is Star!15511) (regOne!31535 (regTwo!31535 r!7292)))) b!5526158))

(assert (= (and b!5524876 ((_ is Union!15511) (regOne!31535 (regTwo!31535 r!7292)))) b!5526159))

(declare-fun b!5526162 () Bool)

(declare-fun e!3416386 () Bool)

(declare-fun tp!1520372 () Bool)

(assert (=> b!5526162 (= e!3416386 tp!1520372)))

(declare-fun b!5526161 () Bool)

(declare-fun tp!1520374 () Bool)

(declare-fun tp!1520371 () Bool)

(assert (=> b!5526161 (= e!3416386 (and tp!1520374 tp!1520371))))

(assert (=> b!5524876 (= tp!1520141 e!3416386)))

(declare-fun b!5526160 () Bool)

(assert (=> b!5526160 (= e!3416386 tp_is_empty!40275)))

(declare-fun b!5526163 () Bool)

(declare-fun tp!1520375 () Bool)

(declare-fun tp!1520373 () Bool)

(assert (=> b!5526163 (= e!3416386 (and tp!1520375 tp!1520373))))

(assert (= (and b!5524876 ((_ is ElementMatch!15511) (regTwo!31535 (regTwo!31535 r!7292)))) b!5526160))

(assert (= (and b!5524876 ((_ is Concat!24356) (regTwo!31535 (regTwo!31535 r!7292)))) b!5526161))

(assert (= (and b!5524876 ((_ is Star!15511) (regTwo!31535 (regTwo!31535 r!7292)))) b!5526162))

(assert (= (and b!5524876 ((_ is Union!15511) (regTwo!31535 (regTwo!31535 r!7292)))) b!5526163))

(declare-fun b!5526166 () Bool)

(declare-fun e!3416387 () Bool)

(declare-fun tp!1520377 () Bool)

(assert (=> b!5526166 (= e!3416387 tp!1520377)))

(declare-fun b!5526165 () Bool)

(declare-fun tp!1520379 () Bool)

(declare-fun tp!1520376 () Bool)

(assert (=> b!5526165 (= e!3416387 (and tp!1520379 tp!1520376))))

(assert (=> b!5524861 (= tp!1520122 e!3416387)))

(declare-fun b!5526164 () Bool)

(assert (=> b!5526164 (= e!3416387 tp_is_empty!40275)))

(declare-fun b!5526167 () Bool)

(declare-fun tp!1520380 () Bool)

(declare-fun tp!1520378 () Bool)

(assert (=> b!5526167 (= e!3416387 (and tp!1520380 tp!1520378))))

(assert (= (and b!5524861 ((_ is ElementMatch!15511) (reg!15840 (regTwo!31534 r!7292)))) b!5526164))

(assert (= (and b!5524861 ((_ is Concat!24356) (reg!15840 (regTwo!31534 r!7292)))) b!5526165))

(assert (= (and b!5524861 ((_ is Star!15511) (reg!15840 (regTwo!31534 r!7292)))) b!5526166))

(assert (= (and b!5524861 ((_ is Union!15511) (reg!15840 (regTwo!31534 r!7292)))) b!5526167))

(declare-fun b!5526170 () Bool)

(declare-fun e!3416388 () Bool)

(declare-fun tp!1520382 () Bool)

(assert (=> b!5526170 (= e!3416388 tp!1520382)))

(declare-fun b!5526169 () Bool)

(declare-fun tp!1520384 () Bool)

(declare-fun tp!1520381 () Bool)

(assert (=> b!5526169 (= e!3416388 (and tp!1520384 tp!1520381))))

(assert (=> b!5524883 (= tp!1520153 e!3416388)))

(declare-fun b!5526168 () Bool)

(assert (=> b!5526168 (= e!3416388 tp_is_empty!40275)))

(declare-fun b!5526171 () Bool)

(declare-fun tp!1520385 () Bool)

(declare-fun tp!1520383 () Bool)

(assert (=> b!5526171 (= e!3416388 (and tp!1520385 tp!1520383))))

(assert (= (and b!5524883 ((_ is ElementMatch!15511) (regOne!31534 (reg!15840 r!7292)))) b!5526168))

(assert (= (and b!5524883 ((_ is Concat!24356) (regOne!31534 (reg!15840 r!7292)))) b!5526169))

(assert (= (and b!5524883 ((_ is Star!15511) (regOne!31534 (reg!15840 r!7292)))) b!5526170))

(assert (= (and b!5524883 ((_ is Union!15511) (regOne!31534 (reg!15840 r!7292)))) b!5526171))

(declare-fun b!5526174 () Bool)

(declare-fun e!3416389 () Bool)

(declare-fun tp!1520387 () Bool)

(assert (=> b!5526174 (= e!3416389 tp!1520387)))

(declare-fun b!5526173 () Bool)

(declare-fun tp!1520389 () Bool)

(declare-fun tp!1520386 () Bool)

(assert (=> b!5526173 (= e!3416389 (and tp!1520389 tp!1520386))))

(assert (=> b!5524883 (= tp!1520150 e!3416389)))

(declare-fun b!5526172 () Bool)

(assert (=> b!5526172 (= e!3416389 tp_is_empty!40275)))

(declare-fun b!5526175 () Bool)

(declare-fun tp!1520390 () Bool)

(declare-fun tp!1520388 () Bool)

(assert (=> b!5526175 (= e!3416389 (and tp!1520390 tp!1520388))))

(assert (= (and b!5524883 ((_ is ElementMatch!15511) (regTwo!31534 (reg!15840 r!7292)))) b!5526172))

(assert (= (and b!5524883 ((_ is Concat!24356) (regTwo!31534 (reg!15840 r!7292)))) b!5526173))

(assert (= (and b!5524883 ((_ is Star!15511) (regTwo!31534 (reg!15840 r!7292)))) b!5526174))

(assert (= (and b!5524883 ((_ is Union!15511) (regTwo!31534 (reg!15840 r!7292)))) b!5526175))

(declare-fun b!5526176 () Bool)

(declare-fun e!3416390 () Bool)

(declare-fun tp!1520391 () Bool)

(assert (=> b!5526176 (= e!3416390 (and tp_is_empty!40275 tp!1520391))))

(assert (=> b!5524898 (= tp!1520163 e!3416390)))

(assert (= (and b!5524898 ((_ is Cons!62710) (t!376087 (t!376087 s!2326)))) b!5526176))

(declare-fun b!5526179 () Bool)

(declare-fun e!3416391 () Bool)

(declare-fun tp!1520393 () Bool)

(assert (=> b!5526179 (= e!3416391 tp!1520393)))

(declare-fun b!5526178 () Bool)

(declare-fun tp!1520395 () Bool)

(declare-fun tp!1520392 () Bool)

(assert (=> b!5526178 (= e!3416391 (and tp!1520395 tp!1520392))))

(assert (=> b!5524884 (= tp!1520151 e!3416391)))

(declare-fun b!5526177 () Bool)

(assert (=> b!5526177 (= e!3416391 tp_is_empty!40275)))

(declare-fun b!5526180 () Bool)

(declare-fun tp!1520396 () Bool)

(declare-fun tp!1520394 () Bool)

(assert (=> b!5526180 (= e!3416391 (and tp!1520396 tp!1520394))))

(assert (= (and b!5524884 ((_ is ElementMatch!15511) (reg!15840 (reg!15840 r!7292)))) b!5526177))

(assert (= (and b!5524884 ((_ is Concat!24356) (reg!15840 (reg!15840 r!7292)))) b!5526178))

(assert (= (and b!5524884 ((_ is Star!15511) (reg!15840 (reg!15840 r!7292)))) b!5526179))

(assert (= (and b!5524884 ((_ is Union!15511) (reg!15840 (reg!15840 r!7292)))) b!5526180))

(declare-fun b!5526183 () Bool)

(declare-fun e!3416392 () Bool)

(declare-fun tp!1520398 () Bool)

(assert (=> b!5526183 (= e!3416392 tp!1520398)))

(declare-fun b!5526182 () Bool)

(declare-fun tp!1520400 () Bool)

(declare-fun tp!1520397 () Bool)

(assert (=> b!5526182 (= e!3416392 (and tp!1520400 tp!1520397))))

(assert (=> b!5524885 (= tp!1520154 e!3416392)))

(declare-fun b!5526181 () Bool)

(assert (=> b!5526181 (= e!3416392 tp_is_empty!40275)))

(declare-fun b!5526184 () Bool)

(declare-fun tp!1520401 () Bool)

(declare-fun tp!1520399 () Bool)

(assert (=> b!5526184 (= e!3416392 (and tp!1520401 tp!1520399))))

(assert (= (and b!5524885 ((_ is ElementMatch!15511) (regOne!31535 (reg!15840 r!7292)))) b!5526181))

(assert (= (and b!5524885 ((_ is Concat!24356) (regOne!31535 (reg!15840 r!7292)))) b!5526182))

(assert (= (and b!5524885 ((_ is Star!15511) (regOne!31535 (reg!15840 r!7292)))) b!5526183))

(assert (= (and b!5524885 ((_ is Union!15511) (regOne!31535 (reg!15840 r!7292)))) b!5526184))

(declare-fun b!5526187 () Bool)

(declare-fun e!3416393 () Bool)

(declare-fun tp!1520403 () Bool)

(assert (=> b!5526187 (= e!3416393 tp!1520403)))

(declare-fun b!5526186 () Bool)

(declare-fun tp!1520405 () Bool)

(declare-fun tp!1520402 () Bool)

(assert (=> b!5526186 (= e!3416393 (and tp!1520405 tp!1520402))))

(assert (=> b!5524885 (= tp!1520152 e!3416393)))

(declare-fun b!5526185 () Bool)

(assert (=> b!5526185 (= e!3416393 tp_is_empty!40275)))

(declare-fun b!5526188 () Bool)

(declare-fun tp!1520406 () Bool)

(declare-fun tp!1520404 () Bool)

(assert (=> b!5526188 (= e!3416393 (and tp!1520406 tp!1520404))))

(assert (= (and b!5524885 ((_ is ElementMatch!15511) (regTwo!31535 (reg!15840 r!7292)))) b!5526185))

(assert (= (and b!5524885 ((_ is Concat!24356) (regTwo!31535 (reg!15840 r!7292)))) b!5526186))

(assert (= (and b!5524885 ((_ is Star!15511) (regTwo!31535 (reg!15840 r!7292)))) b!5526187))

(assert (= (and b!5524885 ((_ is Union!15511) (regTwo!31535 (reg!15840 r!7292)))) b!5526188))

(declare-fun b!5526191 () Bool)

(declare-fun e!3416394 () Bool)

(declare-fun tp!1520408 () Bool)

(assert (=> b!5526191 (= e!3416394 tp!1520408)))

(declare-fun b!5526190 () Bool)

(declare-fun tp!1520410 () Bool)

(declare-fun tp!1520407 () Bool)

(assert (=> b!5526190 (= e!3416394 (and tp!1520410 tp!1520407))))

(assert (=> b!5524870 (= tp!1520137 e!3416394)))

(declare-fun b!5526189 () Bool)

(assert (=> b!5526189 (= e!3416394 tp_is_empty!40275)))

(declare-fun b!5526192 () Bool)

(declare-fun tp!1520411 () Bool)

(declare-fun tp!1520409 () Bool)

(assert (=> b!5526192 (= e!3416394 (and tp!1520411 tp!1520409))))

(assert (= (and b!5524870 ((_ is ElementMatch!15511) (regOne!31534 (regOne!31535 r!7292)))) b!5526189))

(assert (= (and b!5524870 ((_ is Concat!24356) (regOne!31534 (regOne!31535 r!7292)))) b!5526190))

(assert (= (and b!5524870 ((_ is Star!15511) (regOne!31534 (regOne!31535 r!7292)))) b!5526191))

(assert (= (and b!5524870 ((_ is Union!15511) (regOne!31534 (regOne!31535 r!7292)))) b!5526192))

(declare-fun b!5526195 () Bool)

(declare-fun e!3416395 () Bool)

(declare-fun tp!1520413 () Bool)

(assert (=> b!5526195 (= e!3416395 tp!1520413)))

(declare-fun b!5526194 () Bool)

(declare-fun tp!1520415 () Bool)

(declare-fun tp!1520412 () Bool)

(assert (=> b!5526194 (= e!3416395 (and tp!1520415 tp!1520412))))

(assert (=> b!5524870 (= tp!1520134 e!3416395)))

(declare-fun b!5526193 () Bool)

(assert (=> b!5526193 (= e!3416395 tp_is_empty!40275)))

(declare-fun b!5526196 () Bool)

(declare-fun tp!1520416 () Bool)

(declare-fun tp!1520414 () Bool)

(assert (=> b!5526196 (= e!3416395 (and tp!1520416 tp!1520414))))

(assert (= (and b!5524870 ((_ is ElementMatch!15511) (regTwo!31534 (regOne!31535 r!7292)))) b!5526193))

(assert (= (and b!5524870 ((_ is Concat!24356) (regTwo!31534 (regOne!31535 r!7292)))) b!5526194))

(assert (= (and b!5524870 ((_ is Star!15511) (regTwo!31534 (regOne!31535 r!7292)))) b!5526195))

(assert (= (and b!5524870 ((_ is Union!15511) (regTwo!31534 (regOne!31535 r!7292)))) b!5526196))

(declare-fun b!5526198 () Bool)

(declare-fun e!3416397 () Bool)

(declare-fun tp!1520417 () Bool)

(assert (=> b!5526198 (= e!3416397 tp!1520417)))

(declare-fun tp!1520418 () Bool)

(declare-fun b!5526197 () Bool)

(declare-fun e!3416396 () Bool)

(assert (=> b!5526197 (= e!3416396 (and (inv!82024 (h!69157 (t!376086 (t!376086 zl!343)))) e!3416397 tp!1520418))))

(assert (=> b!5524892 (= tp!1520160 e!3416396)))

(assert (= b!5526197 b!5526198))

(assert (= (and b!5524892 ((_ is Cons!62709) (t!376086 (t!376086 zl!343)))) b!5526197))

(declare-fun m!6528572 () Bool)

(assert (=> b!5526197 m!6528572))

(declare-fun b!5526199 () Bool)

(declare-fun e!3416398 () Bool)

(declare-fun tp!1520419 () Bool)

(declare-fun tp!1520420 () Bool)

(assert (=> b!5526199 (= e!3416398 (and tp!1520419 tp!1520420))))

(assert (=> b!5524893 (= tp!1520159 e!3416398)))

(assert (= (and b!5524893 ((_ is Cons!62708) (exprs!5395 (h!69157 (t!376086 zl!343))))) b!5526199))

(declare-fun b!5526202 () Bool)

(declare-fun e!3416399 () Bool)

(declare-fun tp!1520422 () Bool)

(assert (=> b!5526202 (= e!3416399 tp!1520422)))

(declare-fun b!5526201 () Bool)

(declare-fun tp!1520424 () Bool)

(declare-fun tp!1520421 () Bool)

(assert (=> b!5526201 (= e!3416399 (and tp!1520424 tp!1520421))))

(assert (=> b!5524872 (= tp!1520138 e!3416399)))

(declare-fun b!5526200 () Bool)

(assert (=> b!5526200 (= e!3416399 tp_is_empty!40275)))

(declare-fun b!5526203 () Bool)

(declare-fun tp!1520425 () Bool)

(declare-fun tp!1520423 () Bool)

(assert (=> b!5526203 (= e!3416399 (and tp!1520425 tp!1520423))))

(assert (= (and b!5524872 ((_ is ElementMatch!15511) (regOne!31535 (regOne!31535 r!7292)))) b!5526200))

(assert (= (and b!5524872 ((_ is Concat!24356) (regOne!31535 (regOne!31535 r!7292)))) b!5526201))

(assert (= (and b!5524872 ((_ is Star!15511) (regOne!31535 (regOne!31535 r!7292)))) b!5526202))

(assert (= (and b!5524872 ((_ is Union!15511) (regOne!31535 (regOne!31535 r!7292)))) b!5526203))

(declare-fun b!5526206 () Bool)

(declare-fun e!3416400 () Bool)

(declare-fun tp!1520427 () Bool)

(assert (=> b!5526206 (= e!3416400 tp!1520427)))

(declare-fun b!5526205 () Bool)

(declare-fun tp!1520429 () Bool)

(declare-fun tp!1520426 () Bool)

(assert (=> b!5526205 (= e!3416400 (and tp!1520429 tp!1520426))))

(assert (=> b!5524872 (= tp!1520136 e!3416400)))

(declare-fun b!5526204 () Bool)

(assert (=> b!5526204 (= e!3416400 tp_is_empty!40275)))

(declare-fun b!5526207 () Bool)

(declare-fun tp!1520430 () Bool)

(declare-fun tp!1520428 () Bool)

(assert (=> b!5526207 (= e!3416400 (and tp!1520430 tp!1520428))))

(assert (= (and b!5524872 ((_ is ElementMatch!15511) (regTwo!31535 (regOne!31535 r!7292)))) b!5526204))

(assert (= (and b!5524872 ((_ is Concat!24356) (regTwo!31535 (regOne!31535 r!7292)))) b!5526205))

(assert (= (and b!5524872 ((_ is Star!15511) (regTwo!31535 (regOne!31535 r!7292)))) b!5526206))

(assert (= (and b!5524872 ((_ is Union!15511) (regTwo!31535 (regOne!31535 r!7292)))) b!5526207))

(declare-fun b!5526210 () Bool)

(declare-fun e!3416401 () Bool)

(declare-fun tp!1520432 () Bool)

(assert (=> b!5526210 (= e!3416401 tp!1520432)))

(declare-fun b!5526209 () Bool)

(declare-fun tp!1520434 () Bool)

(declare-fun tp!1520431 () Bool)

(assert (=> b!5526209 (= e!3416401 (and tp!1520434 tp!1520431))))

(assert (=> b!5524857 (= tp!1520117 e!3416401)))

(declare-fun b!5526208 () Bool)

(assert (=> b!5526208 (= e!3416401 tp_is_empty!40275)))

(declare-fun b!5526211 () Bool)

(declare-fun tp!1520435 () Bool)

(declare-fun tp!1520433 () Bool)

(assert (=> b!5526211 (= e!3416401 (and tp!1520435 tp!1520433))))

(assert (= (and b!5524857 ((_ is ElementMatch!15511) (reg!15840 (regOne!31534 r!7292)))) b!5526208))

(assert (= (and b!5524857 ((_ is Concat!24356) (reg!15840 (regOne!31534 r!7292)))) b!5526209))

(assert (= (and b!5524857 ((_ is Star!15511) (reg!15840 (regOne!31534 r!7292)))) b!5526210))

(assert (= (and b!5524857 ((_ is Union!15511) (reg!15840 (regOne!31534 r!7292)))) b!5526211))

(declare-fun b!5526214 () Bool)

(declare-fun e!3416402 () Bool)

(declare-fun tp!1520437 () Bool)

(assert (=> b!5526214 (= e!3416402 tp!1520437)))

(declare-fun b!5526213 () Bool)

(declare-fun tp!1520439 () Bool)

(declare-fun tp!1520436 () Bool)

(assert (=> b!5526213 (= e!3416402 (and tp!1520439 tp!1520436))))

(assert (=> b!5524858 (= tp!1520120 e!3416402)))

(declare-fun b!5526212 () Bool)

(assert (=> b!5526212 (= e!3416402 tp_is_empty!40275)))

(declare-fun b!5526215 () Bool)

(declare-fun tp!1520440 () Bool)

(declare-fun tp!1520438 () Bool)

(assert (=> b!5526215 (= e!3416402 (and tp!1520440 tp!1520438))))

(assert (= (and b!5524858 ((_ is ElementMatch!15511) (regOne!31535 (regOne!31534 r!7292)))) b!5526212))

(assert (= (and b!5524858 ((_ is Concat!24356) (regOne!31535 (regOne!31534 r!7292)))) b!5526213))

(assert (= (and b!5524858 ((_ is Star!15511) (regOne!31535 (regOne!31534 r!7292)))) b!5526214))

(assert (= (and b!5524858 ((_ is Union!15511) (regOne!31535 (regOne!31534 r!7292)))) b!5526215))

(declare-fun b!5526218 () Bool)

(declare-fun e!3416403 () Bool)

(declare-fun tp!1520442 () Bool)

(assert (=> b!5526218 (= e!3416403 tp!1520442)))

(declare-fun b!5526217 () Bool)

(declare-fun tp!1520444 () Bool)

(declare-fun tp!1520441 () Bool)

(assert (=> b!5526217 (= e!3416403 (and tp!1520444 tp!1520441))))

(assert (=> b!5524858 (= tp!1520118 e!3416403)))

(declare-fun b!5526216 () Bool)

(assert (=> b!5526216 (= e!3416403 tp_is_empty!40275)))

(declare-fun b!5526219 () Bool)

(declare-fun tp!1520445 () Bool)

(declare-fun tp!1520443 () Bool)

(assert (=> b!5526219 (= e!3416403 (and tp!1520445 tp!1520443))))

(assert (= (and b!5524858 ((_ is ElementMatch!15511) (regTwo!31535 (regOne!31534 r!7292)))) b!5526216))

(assert (= (and b!5524858 ((_ is Concat!24356) (regTwo!31535 (regOne!31534 r!7292)))) b!5526217))

(assert (= (and b!5524858 ((_ is Star!15511) (regTwo!31535 (regOne!31534 r!7292)))) b!5526218))

(assert (= (and b!5524858 ((_ is Union!15511) (regTwo!31535 (regOne!31534 r!7292)))) b!5526219))

(declare-fun b!5526222 () Bool)

(declare-fun e!3416404 () Bool)

(declare-fun tp!1520447 () Bool)

(assert (=> b!5526222 (= e!3416404 tp!1520447)))

(declare-fun b!5526221 () Bool)

(declare-fun tp!1520449 () Bool)

(declare-fun tp!1520446 () Bool)

(assert (=> b!5526221 (= e!3416404 (and tp!1520449 tp!1520446))))

(assert (=> b!5524856 (= tp!1520119 e!3416404)))

(declare-fun b!5526220 () Bool)

(assert (=> b!5526220 (= e!3416404 tp_is_empty!40275)))

(declare-fun b!5526223 () Bool)

(declare-fun tp!1520450 () Bool)

(declare-fun tp!1520448 () Bool)

(assert (=> b!5526223 (= e!3416404 (and tp!1520450 tp!1520448))))

(assert (= (and b!5524856 ((_ is ElementMatch!15511) (regOne!31534 (regOne!31534 r!7292)))) b!5526220))

(assert (= (and b!5524856 ((_ is Concat!24356) (regOne!31534 (regOne!31534 r!7292)))) b!5526221))

(assert (= (and b!5524856 ((_ is Star!15511) (regOne!31534 (regOne!31534 r!7292)))) b!5526222))

(assert (= (and b!5524856 ((_ is Union!15511) (regOne!31534 (regOne!31534 r!7292)))) b!5526223))

(declare-fun b!5526226 () Bool)

(declare-fun e!3416405 () Bool)

(declare-fun tp!1520452 () Bool)

(assert (=> b!5526226 (= e!3416405 tp!1520452)))

(declare-fun b!5526225 () Bool)

(declare-fun tp!1520454 () Bool)

(declare-fun tp!1520451 () Bool)

(assert (=> b!5526225 (= e!3416405 (and tp!1520454 tp!1520451))))

(assert (=> b!5524856 (= tp!1520116 e!3416405)))

(declare-fun b!5526224 () Bool)

(assert (=> b!5526224 (= e!3416405 tp_is_empty!40275)))

(declare-fun b!5526227 () Bool)

(declare-fun tp!1520455 () Bool)

(declare-fun tp!1520453 () Bool)

(assert (=> b!5526227 (= e!3416405 (and tp!1520455 tp!1520453))))

(assert (= (and b!5524856 ((_ is ElementMatch!15511) (regTwo!31534 (regOne!31534 r!7292)))) b!5526224))

(assert (= (and b!5524856 ((_ is Concat!24356) (regTwo!31534 (regOne!31534 r!7292)))) b!5526225))

(assert (= (and b!5524856 ((_ is Star!15511) (regTwo!31534 (regOne!31534 r!7292)))) b!5526226))

(assert (= (and b!5524856 ((_ is Union!15511) (regTwo!31534 (regOne!31534 r!7292)))) b!5526227))

(declare-fun b!5526230 () Bool)

(declare-fun e!3416406 () Bool)

(declare-fun tp!1520457 () Bool)

(assert (=> b!5526230 (= e!3416406 tp!1520457)))

(declare-fun b!5526229 () Bool)

(declare-fun tp!1520459 () Bool)

(declare-fun tp!1520456 () Bool)

(assert (=> b!5526229 (= e!3416406 (and tp!1520459 tp!1520456))))

(assert (=> b!5524871 (= tp!1520135 e!3416406)))

(declare-fun b!5526228 () Bool)

(assert (=> b!5526228 (= e!3416406 tp_is_empty!40275)))

(declare-fun b!5526231 () Bool)

(declare-fun tp!1520460 () Bool)

(declare-fun tp!1520458 () Bool)

(assert (=> b!5526231 (= e!3416406 (and tp!1520460 tp!1520458))))

(assert (= (and b!5524871 ((_ is ElementMatch!15511) (reg!15840 (regOne!31535 r!7292)))) b!5526228))

(assert (= (and b!5524871 ((_ is Concat!24356) (reg!15840 (regOne!31535 r!7292)))) b!5526229))

(assert (= (and b!5524871 ((_ is Star!15511) (reg!15840 (regOne!31535 r!7292)))) b!5526230))

(assert (= (and b!5524871 ((_ is Union!15511) (reg!15840 (regOne!31535 r!7292)))) b!5526231))

(declare-fun condSetEmpty!36749 () Bool)

(assert (=> setNonEmpty!36737 (= condSetEmpty!36749 (= setRest!36737 ((as const (Array Context!9790 Bool)) false)))))

(declare-fun setRes!36749 () Bool)

(assert (=> setNonEmpty!36737 (= tp!1520148 setRes!36749)))

(declare-fun setIsEmpty!36749 () Bool)

(assert (=> setIsEmpty!36749 setRes!36749))

(declare-fun setNonEmpty!36749 () Bool)

(declare-fun e!3416407 () Bool)

(declare-fun tp!1520461 () Bool)

(declare-fun setElem!36749 () Context!9790)

(assert (=> setNonEmpty!36749 (= setRes!36749 (and tp!1520461 (inv!82024 setElem!36749) e!3416407))))

(declare-fun setRest!36749 () (InoxSet Context!9790))

(assert (=> setNonEmpty!36749 (= setRest!36737 ((_ map or) (store ((as const (Array Context!9790 Bool)) false) setElem!36749 true) setRest!36749))))

(declare-fun b!5526232 () Bool)

(declare-fun tp!1520462 () Bool)

(assert (=> b!5526232 (= e!3416407 tp!1520462)))

(assert (= (and setNonEmpty!36737 condSetEmpty!36749) setIsEmpty!36749))

(assert (= (and setNonEmpty!36737 (not condSetEmpty!36749)) setNonEmpty!36749))

(assert (= setNonEmpty!36749 b!5526232))

(declare-fun m!6528574 () Bool)

(assert (=> setNonEmpty!36749 m!6528574))

(declare-fun b!5526233 () Bool)

(declare-fun e!3416408 () Bool)

(declare-fun tp!1520463 () Bool)

(declare-fun tp!1520464 () Bool)

(assert (=> b!5526233 (= e!3416408 (and tp!1520463 tp!1520464))))

(assert (=> b!5524881 (= tp!1520149 e!3416408)))

(assert (= (and b!5524881 ((_ is Cons!62708) (exprs!5395 setElem!36737))) b!5526233))

(declare-fun b!5526236 () Bool)

(declare-fun e!3416409 () Bool)

(declare-fun tp!1520466 () Bool)

(assert (=> b!5526236 (= e!3416409 tp!1520466)))

(declare-fun b!5526235 () Bool)

(declare-fun tp!1520468 () Bool)

(declare-fun tp!1520465 () Bool)

(assert (=> b!5526235 (= e!3416409 (and tp!1520468 tp!1520465))))

(assert (=> b!5524874 (= tp!1520142 e!3416409)))

(declare-fun b!5526234 () Bool)

(assert (=> b!5526234 (= e!3416409 tp_is_empty!40275)))

(declare-fun b!5526237 () Bool)

(declare-fun tp!1520469 () Bool)

(declare-fun tp!1520467 () Bool)

(assert (=> b!5526237 (= e!3416409 (and tp!1520469 tp!1520467))))

(assert (= (and b!5524874 ((_ is ElementMatch!15511) (regOne!31534 (regTwo!31535 r!7292)))) b!5526234))

(assert (= (and b!5524874 ((_ is Concat!24356) (regOne!31534 (regTwo!31535 r!7292)))) b!5526235))

(assert (= (and b!5524874 ((_ is Star!15511) (regOne!31534 (regTwo!31535 r!7292)))) b!5526236))

(assert (= (and b!5524874 ((_ is Union!15511) (regOne!31534 (regTwo!31535 r!7292)))) b!5526237))

(declare-fun b!5526240 () Bool)

(declare-fun e!3416410 () Bool)

(declare-fun tp!1520471 () Bool)

(assert (=> b!5526240 (= e!3416410 tp!1520471)))

(declare-fun b!5526239 () Bool)

(declare-fun tp!1520473 () Bool)

(declare-fun tp!1520470 () Bool)

(assert (=> b!5526239 (= e!3416410 (and tp!1520473 tp!1520470))))

(assert (=> b!5524874 (= tp!1520139 e!3416410)))

(declare-fun b!5526238 () Bool)

(assert (=> b!5526238 (= e!3416410 tp_is_empty!40275)))

(declare-fun b!5526241 () Bool)

(declare-fun tp!1520474 () Bool)

(declare-fun tp!1520472 () Bool)

(assert (=> b!5526241 (= e!3416410 (and tp!1520474 tp!1520472))))

(assert (= (and b!5524874 ((_ is ElementMatch!15511) (regTwo!31534 (regTwo!31535 r!7292)))) b!5526238))

(assert (= (and b!5524874 ((_ is Concat!24356) (regTwo!31534 (regTwo!31535 r!7292)))) b!5526239))

(assert (= (and b!5524874 ((_ is Star!15511) (regTwo!31534 (regTwo!31535 r!7292)))) b!5526240))

(assert (= (and b!5524874 ((_ is Union!15511) (regTwo!31534 (regTwo!31535 r!7292)))) b!5526241))

(declare-fun b!5526244 () Bool)

(declare-fun e!3416411 () Bool)

(declare-fun tp!1520476 () Bool)

(assert (=> b!5526244 (= e!3416411 tp!1520476)))

(declare-fun b!5526243 () Bool)

(declare-fun tp!1520478 () Bool)

(declare-fun tp!1520475 () Bool)

(assert (=> b!5526243 (= e!3416411 (and tp!1520478 tp!1520475))))

(assert (=> b!5524860 (= tp!1520124 e!3416411)))

(declare-fun b!5526242 () Bool)

(assert (=> b!5526242 (= e!3416411 tp_is_empty!40275)))

(declare-fun b!5526245 () Bool)

(declare-fun tp!1520479 () Bool)

(declare-fun tp!1520477 () Bool)

(assert (=> b!5526245 (= e!3416411 (and tp!1520479 tp!1520477))))

(assert (= (and b!5524860 ((_ is ElementMatch!15511) (regOne!31534 (regTwo!31534 r!7292)))) b!5526242))

(assert (= (and b!5524860 ((_ is Concat!24356) (regOne!31534 (regTwo!31534 r!7292)))) b!5526243))

(assert (= (and b!5524860 ((_ is Star!15511) (regOne!31534 (regTwo!31534 r!7292)))) b!5526244))

(assert (= (and b!5524860 ((_ is Union!15511) (regOne!31534 (regTwo!31534 r!7292)))) b!5526245))

(declare-fun b!5526248 () Bool)

(declare-fun e!3416412 () Bool)

(declare-fun tp!1520481 () Bool)

(assert (=> b!5526248 (= e!3416412 tp!1520481)))

(declare-fun b!5526247 () Bool)

(declare-fun tp!1520483 () Bool)

(declare-fun tp!1520480 () Bool)

(assert (=> b!5526247 (= e!3416412 (and tp!1520483 tp!1520480))))

(assert (=> b!5524860 (= tp!1520121 e!3416412)))

(declare-fun b!5526246 () Bool)

(assert (=> b!5526246 (= e!3416412 tp_is_empty!40275)))

(declare-fun b!5526249 () Bool)

(declare-fun tp!1520484 () Bool)

(declare-fun tp!1520482 () Bool)

(assert (=> b!5526249 (= e!3416412 (and tp!1520484 tp!1520482))))

(assert (= (and b!5524860 ((_ is ElementMatch!15511) (regTwo!31534 (regTwo!31534 r!7292)))) b!5526246))

(assert (= (and b!5524860 ((_ is Concat!24356) (regTwo!31534 (regTwo!31534 r!7292)))) b!5526247))

(assert (= (and b!5524860 ((_ is Star!15511) (regTwo!31534 (regTwo!31534 r!7292)))) b!5526248))

(assert (= (and b!5524860 ((_ is Union!15511) (regTwo!31534 (regTwo!31534 r!7292)))) b!5526249))

(declare-fun b!5526252 () Bool)

(declare-fun e!3416413 () Bool)

(declare-fun tp!1520486 () Bool)

(assert (=> b!5526252 (= e!3416413 tp!1520486)))

(declare-fun b!5526251 () Bool)

(declare-fun tp!1520488 () Bool)

(declare-fun tp!1520485 () Bool)

(assert (=> b!5526251 (= e!3416413 (and tp!1520488 tp!1520485))))

(assert (=> b!5524867 (= tp!1520130 e!3416413)))

(declare-fun b!5526250 () Bool)

(assert (=> b!5526250 (= e!3416413 tp_is_empty!40275)))

(declare-fun b!5526253 () Bool)

(declare-fun tp!1520489 () Bool)

(declare-fun tp!1520487 () Bool)

(assert (=> b!5526253 (= e!3416413 (and tp!1520489 tp!1520487))))

(assert (= (and b!5524867 ((_ is ElementMatch!15511) (h!69156 (exprs!5395 (h!69157 zl!343))))) b!5526250))

(assert (= (and b!5524867 ((_ is Concat!24356) (h!69156 (exprs!5395 (h!69157 zl!343))))) b!5526251))

(assert (= (and b!5524867 ((_ is Star!15511) (h!69156 (exprs!5395 (h!69157 zl!343))))) b!5526252))

(assert (= (and b!5524867 ((_ is Union!15511) (h!69156 (exprs!5395 (h!69157 zl!343))))) b!5526253))

(declare-fun b!5526254 () Bool)

(declare-fun e!3416414 () Bool)

(declare-fun tp!1520490 () Bool)

(declare-fun tp!1520491 () Bool)

(assert (=> b!5526254 (= e!3416414 (and tp!1520490 tp!1520491))))

(assert (=> b!5524867 (= tp!1520131 e!3416414)))

(assert (= (and b!5524867 ((_ is Cons!62708) (t!376085 (exprs!5395 (h!69157 zl!343))))) b!5526254))

(declare-fun b_lambda!209627 () Bool)

(assert (= b_lambda!209621 (or b!5524500 b_lambda!209627)))

(declare-fun bs!1275862 () Bool)

(declare-fun d!1751109 () Bool)

(assert (= bs!1275862 (and d!1751109 b!5524500)))

(assert (=> bs!1275862 (= (dynLambda!24510 lambda!296202 (h!69157 (Cons!62709 lt!2247106 Nil!62709))) (>= lt!2247202 (contextDepth!107 (h!69157 (Cons!62709 lt!2247106 Nil!62709)))))))

(assert (=> bs!1275862 m!6526938))

(assert (=> b!5526051 d!1751109))

(declare-fun b_lambda!209629 () Bool)

(assert (= b_lambda!209565 (or b!5524837 b_lambda!209629)))

(declare-fun bs!1275863 () Bool)

(declare-fun d!1751111 () Bool)

(assert (= bs!1275863 (and d!1751111 b!5524837)))

(assert (=> bs!1275863 (= (dynLambda!24507 lambda!296240 (h!69156 (t!376085 (exprs!5395 lt!2247113)))) (>= lt!2247259 (regexDepth!211 (h!69156 (t!376085 (exprs!5395 lt!2247113))))))))

(declare-fun m!6528576 () Bool)

(assert (=> bs!1275863 m!6528576))

(assert (=> b!5525570 d!1751111))

(declare-fun b_lambda!209631 () Bool)

(assert (= b_lambda!209609 (or b!5524842 b_lambda!209631)))

(declare-fun bs!1275864 () Bool)

(declare-fun d!1751113 () Bool)

(assert (= bs!1275864 (and d!1751113 b!5524842)))

(assert (=> bs!1275864 (= (dynLambda!24507 lambda!296242 (h!69156 (t!376085 (exprs!5395 lt!2247106)))) (>= lt!2247263 (regexDepth!211 (h!69156 (t!376085 (exprs!5395 lt!2247106))))))))

(declare-fun m!6528578 () Bool)

(assert (=> bs!1275864 m!6528578))

(assert (=> b!5525924 d!1751113))

(declare-fun b_lambda!209633 () Bool)

(assert (= b_lambda!209603 (or b!5524057 b_lambda!209633)))

(assert (=> d!1750947 d!1750483))

(declare-fun b_lambda!209635 () Bool)

(assert (= b_lambda!209623 (or b!5524844 b_lambda!209635)))

(declare-fun bs!1275865 () Bool)

(declare-fun d!1751115 () Bool)

(assert (= bs!1275865 (and d!1751115 b!5524844)))

(assert (=> bs!1275865 (= (dynLambda!24507 lambda!296243 (h!69156 (exprs!5395 lt!2247106))) (>= lt!2247265 (regexDepth!211 (h!69156 (exprs!5395 lt!2247106)))))))

(assert (=> bs!1275865 m!6527212))

(assert (=> b!5526064 d!1751115))

(declare-fun b_lambda!209637 () Bool)

(assert (= b_lambda!209563 (or b!5524057 b_lambda!209637)))

(assert (=> d!1750803 d!1750481))

(declare-fun b_lambda!209639 () Bool)

(assert (= b_lambda!209613 (or b!5524495 b_lambda!209639)))

(declare-fun bs!1275866 () Bool)

(declare-fun d!1751117 () Bool)

(assert (= bs!1275866 (and d!1751117 b!5524495)))

(assert (=> bs!1275866 (= (dynLambda!24510 lambda!296199 (h!69157 (Cons!62709 lt!2247113 Nil!62709))) (>= lt!2247198 (contextDepth!107 (h!69157 (Cons!62709 lt!2247113 Nil!62709)))))))

(assert (=> bs!1275866 m!6526926))

(assert (=> b!5525968 d!1751117))

(declare-fun b_lambda!209641 () Bool)

(assert (= b_lambda!209617 (or d!1750413 b_lambda!209641)))

(declare-fun bs!1275867 () Bool)

(declare-fun d!1751119 () Bool)

(assert (= bs!1275867 (and d!1751119 d!1750413)))

(assert (=> bs!1275867 (= (dynLambda!24507 lambda!296220 (h!69156 (exprs!5395 (h!69157 zl!343)))) (validRegex!7247 (h!69156 (exprs!5395 (h!69157 zl!343)))))))

(declare-fun m!6528580 () Bool)

(assert (=> bs!1275867 m!6528580))

(assert (=> b!5526006 d!1751119))

(declare-fun b_lambda!209643 () Bool)

(assert (= b_lambda!209607 (or b!5524498 b_lambda!209643)))

(declare-fun bs!1275868 () Bool)

(declare-fun d!1751121 () Bool)

(assert (= bs!1275868 (and d!1751121 b!5524498)))

(assert (=> bs!1275868 (= (dynLambda!24510 lambda!296201 (h!69157 (t!376086 (Cons!62709 lt!2247106 Nil!62709)))) (>= lt!2247205 (contextDepth!107 (h!69157 (t!376086 (Cons!62709 lt!2247106 Nil!62709))))))))

(assert (=> bs!1275868 m!6528308))

(assert (=> b!5525914 d!1751121))

(declare-fun b_lambda!209645 () Bool)

(assert (= b_lambda!209619 (or d!1750407 b_lambda!209645)))

(declare-fun bs!1275869 () Bool)

(declare-fun d!1751123 () Bool)

(assert (= bs!1275869 (and d!1751123 d!1750407)))

(assert (=> bs!1275869 (= (dynLambda!24507 lambda!296214 (h!69156 (unfocusZipperList!939 zl!343))) (validRegex!7247 (h!69156 (unfocusZipperList!939 zl!343))))))

(declare-fun m!6528582 () Bool)

(assert (=> bs!1275869 m!6528582))

(assert (=> b!5526036 d!1751123))

(declare-fun b_lambda!209647 () Bool)

(assert (= b_lambda!209611 (or d!1750415 b_lambda!209647)))

(declare-fun bs!1275870 () Bool)

(declare-fun d!1751125 () Bool)

(assert (= bs!1275870 (and d!1751125 d!1750415)))

(assert (=> bs!1275870 (= (dynLambda!24507 lambda!296223 (h!69156 (exprs!5395 setElem!36731))) (validRegex!7247 (h!69156 (exprs!5395 setElem!36731))))))

(declare-fun m!6528584 () Bool)

(assert (=> bs!1275870 m!6528584))

(assert (=> b!5525955 d!1751125))

(declare-fun b_lambda!209649 () Bool)

(assert (= b_lambda!209599 (or b!5524493 b_lambda!209649)))

(declare-fun bs!1275871 () Bool)

(declare-fun d!1751127 () Bool)

(assert (= bs!1275871 (and d!1751127 b!5524493)))

(assert (=> bs!1275871 (= (dynLambda!24510 lambda!296198 (h!69157 (t!376086 (Cons!62709 lt!2247113 Nil!62709)))) (>= lt!2247201 (contextDepth!107 (h!69157 (t!376086 (Cons!62709 lt!2247113 Nil!62709))))))))

(assert (=> bs!1275871 m!6528124))

(assert (=> b!5525752 d!1751127))

(declare-fun b_lambda!209651 () Bool)

(assert (= b_lambda!209601 (or b!5524057 b_lambda!209651)))

(assert (=> d!1750937 d!1750485))

(declare-fun b_lambda!209653 () Bool)

(assert (= b_lambda!209605 (or b!5524839 b_lambda!209653)))

(declare-fun bs!1275872 () Bool)

(declare-fun d!1751129 () Bool)

(assert (= bs!1275872 (and d!1751129 b!5524839)))

(assert (=> bs!1275872 (= (dynLambda!24507 lambda!296241 (h!69156 (exprs!5395 lt!2247113))) (>= lt!2247261 (regexDepth!211 (h!69156 (exprs!5395 lt!2247113)))))))

(assert (=> bs!1275872 m!6527200))

(assert (=> b!5525912 d!1751129))

(declare-fun b_lambda!209655 () Bool)

(assert (= b_lambda!209615 (or d!1750409 b_lambda!209655)))

(declare-fun bs!1275873 () Bool)

(declare-fun d!1751131 () Bool)

(assert (= bs!1275873 (and d!1751131 d!1750409)))

(assert (=> bs!1275873 (= (dynLambda!24507 lambda!296217 (h!69156 lt!2247229)) (validRegex!7247 (h!69156 lt!2247229)))))

(declare-fun m!6528586 () Bool)

(assert (=> bs!1275873 m!6528586))

(assert (=> b!5525995 d!1751131))

(declare-fun b_lambda!209657 () Bool)

(assert (= b_lambda!209625 (or d!1750475 b_lambda!209657)))

(declare-fun bs!1275874 () Bool)

(declare-fun d!1751133 () Bool)

(assert (= bs!1275874 (and d!1751133 d!1750475)))

(assert (=> bs!1275874 (= (dynLambda!24507 lambda!296235 (h!69156 (exprs!5395 (h!69157 zl!343)))) (validRegex!7247 (h!69156 (exprs!5395 (h!69157 zl!343)))))))

(assert (=> bs!1275874 m!6528580))

(assert (=> b!5526107 d!1751133))

(check-sat (not bm!409948) (not b!5525722) (not b!5526178) (not b!5525720) (not b!5525725) (not d!1750897) (not bm!409872) (not d!1750987) (not d!1750875) (not bm!409878) (not d!1750851) (not bm!409865) (not bs!1275870) (not b_lambda!209635) (not b_lambda!209649) (not b!5525946) (not b!5526183) (not b!5525676) (not b!5526226) (not d!1751009) (not b!5526155) (not b!5526194) (not b_lambda!209631) (not bm!409858) (not b!5526144) (not bm!409962) (not b_lambda!209629) (not bm!409973) (not b!5526179) (not b!5526096) (not d!1751065) (not d!1751063) (not b!5525962) (not d!1750939) (not b!5526162) (not b!5525753) (not b!5525667) (not b!5526108) (not b!5526210) (not b!5526253) (not b!5525694) (not b!5525892) (not b!5526192) (not b!5526229) (not d!1751027) (not b!5525449) (not b!5525780) (not b!5526154) (not bm!409881) (not bm!409969) (not b!5526002) (not b!5525953) (not b!5525923) (not b!5525693) (not d!1750893) (not b!5526165) (not b!5526150) (not b!5525571) (not b!5526146) (not b!5525874) (not bm!409895) (not b!5525926) (not d!1751033) (not bm!409891) (not b!5525741) (not b!5526231) (not b!5526214) (not b!5526184) (not d!1751067) (not bm!409905) (not b!5526245) (not b!5525891) (not b!5526247) (not b!5526102) (not bm!409860) (not b!5525448) (not b!5526175) (not d!1750895) (not setNonEmpty!36748) (not d!1750797) (not b!5526180) (not setNonEmpty!36747) (not b!5525970) (not d!1750993) (not b!5525784) (not bm!409841) (not b!5526217) (not d!1750917) (not b!5525921) (not d!1750929) (not b!5526190) (not bm!409950) (not b!5525757) (not d!1750945) (not b!5526221) tp_is_empty!40275 (not d!1750949) (not d!1750913) (not bm!409918) (not b!5525483) (not b!5525919) (not b!5526225) (not d!1751061) (not b!5526174) (not bs!1275864) (not d!1750977) (not b!5526157) (not bm!409957) (not b!5525718) (not b!5526015) (not d!1750955) (not b!5526215) (not b!5525969) (not b!5526141) (not b!5526137) (not b_lambda!209647) (not d!1750849) (not b!5525972) (not b!5525973) (not b!5525785) (not b!5525661) (not b_lambda!209643) (not b!5525834) (not b!5525683) (not b!5526218) (not b!5525713) (not b!5526186) (not b!5526052) (not bm!409934) (not b!5525670) (not bm!409907) (not d!1750891) (not b!5525482) (not d!1750795) (not b!5525723) (not d!1751017) (not bm!409937) (not b!5526244) (not b!5526202) (not b!5525845) (not b!5525728) (not d!1750861) (not b_lambda!209641) (not bm!409923) (not bm!409906) (not b!5526237) (not b!5526188) (not b!5525832) (not b!5525717) (not b!5525447) (not b!5526222) (not d!1750863) (not d!1750803) (not b!5525996) (not bm!409915) (not b!5526227) (not d!1750869) (not d!1750911) (not b!5526138) (not b!5525826) (not b!5525763) (not bs!1275868) (not bm!409939) (not b!5525908) (not b!5526037) (not bm!409866) (not b_lambda!209633) (not b!5526233) (not b!5526197) (not b!5525756) (not bm!409974) (not bs!1275871) (not b!5526196) (not bm!409938) (not b_lambda!209645) (not b!5525956) (not bm!409869) (not bm!409843) (not b!5526053) (not d!1751021) (not d!1750889) (not d!1750937) (not b!5525773) (not b!5526182) (not d!1750959) (not b_lambda!209655) (not bm!409970) (not b!5526151) (not b!5526124) (not b!5526148) (not setNonEmpty!36749) (not d!1751059) (not bm!409960) (not bm!409913) (not d!1750855) (not b!5526080) (not d!1750927) (not b_lambda!209653) (not b!5526163) (not bm!409904) (not bs!1275872) (not b_lambda!209527) (not bm!409879) (not b!5525714) (not d!1751025) (not bm!409972) (not b!5525922) (not b!5526254) (not b!5526206) (not b!5526038) (not b!5526065) (not b!5525452) (not b!5526209) (not b!5525873) (not b_lambda!209627) (not b!5525747) (not b!5526176) (not b!5525899) (not d!1750947) (not b!5525475) (not b!5525918) (not d!1750919) (not bs!1275874) (not b!5525703) (not b!5526161) (not b!5525838) (not b!5526008) (not b!5526187) (not b!5525745) (not d!1751093) (not b!5525701) (not b!5525813) (not b!5526039) (not bm!409900) (not b!5526159) (not d!1750995) (not b!5526026) (not bm!409859) (not b!5526167) (not b!5525894) (not b_lambda!209525) (not d!1751023) (not d!1750843) (not b!5525928) (not b!5525819) (not b!5525872) (not d!1751089) (not d!1750979) (not bm!409955) (not bm!409912) (not b!5526101) (not b!5526219) (not d!1750881) (not b!5526251) (not bm!409877) (not b!5525672) (not b!5526243) (not b!5526042) (not b!5526211) (not b!5525898) (not b!5526201) (not b!5526123) (not b!5526166) (not bm!409929) (not b!5526145) (not b!5525453) (not d!1750915) (not d!1751069) (not b!5526009) (not b!5525866) (not b!5525971) (not b!5525754) (not b!5525883) (not bm!409924) (not b_lambda!209651) (not bm!409944) (not b_lambda!209637) (not b!5526205) (not bm!409910) (not b!5526130) (not d!1751001) (not bm!409956) (not bs!1275865) (not b!5526198) (not b_lambda!209529) (not b!5526203) (not b!5525778) (not b!5525740) (not b!5526149) (not b!5526230) (not b!5526213) (not d!1750865) (not b!5526223) (not b!5525915) (not bs!1275867) (not bm!409902) (not b!5526103) (not b!5525764) (not b!5525665) (not bm!409921) (not bm!409953) (not b!5525777) (not b!5526207) (not d!1751015) (not bm!409917) (not bm!409946) (not bs!1275873) (not bs!1275866) (not bs!1275863) (not d!1750845) (not b!5526235) (not bs!1275862) (not b!5525869) (not bm!409947) (not d!1750857) (not d!1750951) (not bm!409871) (not b!5525897) (not d!1750873) (not b!5525671) (not bm!409967) (not bm!409916) (not b!5526087) (not setNonEmpty!36746) (not b!5525664) (not d!1751005) (not bm!409949) (not bs!1275869) (not b!5525835) (not bm!409880) (not b!5526170) (not bm!409935) (not b!5526140) (not b!5526240) (not bm!409862) (not b!5526173) (not d!1751057) (not d!1750899) (not d!1750943) (not b!5525762) (not b!5526171) (not b!5525916) (not bm!409942) (not b!5526114) (not bm!409896) (not b!5526239) (not d!1750931) (not b!5525950) (not bm!409864) (not b!5525783) (not b!5526232) (not b!5525856) (not b!5526249) (not b!5525455) (not d!1751091) (not b_lambda!209657) (not b!5526007) (not b!5525734) (not b!5526153) (not b!5526191) (not b!5525952) (not b!5526095) (not b!5525758) (not b!5525925) (not b!5526195) (not b!5525947) (not b!5525839) (not bm!409964) (not bm!409897) (not b!5526199) (not b!5526071) (not bm!409838) (not bm!409963) (not b!5526158) (not d!1750847) (not b!5526062) (not bm!409893) (not bm!409875) (not b!5525677) (not b!5525913) (not b!5525726) (not d!1750809) (not b!5526098) (not b!5526248) (not b!5526236) (not b!5526241) (not b!5525867) (not b!5526142) (not b!5525702) (not b!5525454) (not b!5526169) (not b!5525833) (not d!1750867) (not b!5526081) (not bm!409927) (not b!5526252) (not d!1750967) (not b_lambda!209639) (not d!1750783) (not b!5526032) (not b!5525659) (not bm!409919) (not b!5525831))
(check-sat)
