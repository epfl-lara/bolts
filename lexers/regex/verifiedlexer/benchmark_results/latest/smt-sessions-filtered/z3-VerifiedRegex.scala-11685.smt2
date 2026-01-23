; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!657776 () Bool)

(assert start!657776)

(declare-fun b!6796162 () Bool)

(assert (=> b!6796162 true))

(assert (=> b!6796162 true))

(declare-fun lambda!383113 () Int)

(declare-fun lambda!383112 () Int)

(assert (=> b!6796162 (not (= lambda!383113 lambda!383112))))

(assert (=> b!6796162 true))

(assert (=> b!6796162 true))

(declare-fun lambda!383114 () Int)

(assert (=> b!6796162 (not (= lambda!383114 lambda!383112))))

(assert (=> b!6796162 (not (= lambda!383114 lambda!383113))))

(assert (=> b!6796162 true))

(assert (=> b!6796162 true))

(declare-fun b!6796135 () Bool)

(assert (=> b!6796135 true))

(declare-fun b!6796140 () Bool)

(assert (=> b!6796140 true))

(declare-fun b!6796134 () Bool)

(declare-fun res!2777469 () Bool)

(declare-fun e!4101726 () Bool)

(assert (=> b!6796134 (=> res!2777469 e!4101726)))

(declare-datatypes ((C!33504 0))(
  ( (C!33505 (val!26454 Int)) )
))
(declare-datatypes ((Regex!16617 0))(
  ( (ElementMatch!16617 (c!1263403 C!33504)) (Concat!25462 (regOne!33746 Regex!16617) (regTwo!33746 Regex!16617)) (EmptyExpr!16617) (Star!16617 (reg!16946 Regex!16617)) (EmptyLang!16617) (Union!16617 (regOne!33747 Regex!16617) (regTwo!33747 Regex!16617)) )
))
(declare-datatypes ((List!66150 0))(
  ( (Nil!66026) (Cons!66026 (h!72474 Regex!16617) (t!379877 List!66150)) )
))
(declare-datatypes ((Context!12002 0))(
  ( (Context!12003 (exprs!6501 List!66150)) )
))
(declare-datatypes ((List!66151 0))(
  ( (Nil!66027) (Cons!66027 (h!72475 Context!12002) (t!379878 List!66151)) )
))
(declare-fun zl!343 () List!66151)

(get-info :version)

(assert (=> b!6796134 (= res!2777469 (not ((_ is Cons!66026) (exprs!6501 (h!72475 zl!343)))))))

(declare-fun e!4101721 () Bool)

(declare-fun e!4101720 () Bool)

(assert (=> b!6796135 (= e!4101721 e!4101720)))

(declare-fun res!2777450 () Bool)

(assert (=> b!6796135 (=> res!2777450 e!4101720)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2447258 () (InoxSet Context!12002))

(declare-fun lt!2447260 () (InoxSet Context!12002))

(assert (=> b!6796135 (= res!2777450 (not (= lt!2447258 lt!2447260)))))

(declare-fun lambda!383115 () Int)

(declare-datatypes ((List!66152 0))(
  ( (Nil!66028) (Cons!66028 (h!72476 C!33504) (t!379879 List!66152)) )
))
(declare-fun s!2326 () List!66152)

(declare-fun z!1189 () (InoxSet Context!12002))

(declare-fun flatMap!2098 ((InoxSet Context!12002) Int) (InoxSet Context!12002))

(declare-fun derivationStepZipperUp!1771 (Context!12002 C!33504) (InoxSet Context!12002))

(assert (=> b!6796135 (= (flatMap!2098 z!1189 lambda!383115) (derivationStepZipperUp!1771 (h!72475 zl!343) (h!72476 s!2326)))))

(declare-datatypes ((Unit!159925 0))(
  ( (Unit!159926) )
))
(declare-fun lt!2447256 () Unit!159925)

(declare-fun lemmaFlatMapOnSingletonSet!1624 ((InoxSet Context!12002) Context!12002 Int) Unit!159925)

(assert (=> b!6796135 (= lt!2447256 (lemmaFlatMapOnSingletonSet!1624 z!1189 (h!72475 zl!343) lambda!383115))))

(declare-fun e!4101711 () Bool)

(declare-fun e!4101713 () Bool)

(declare-fun tp!1861067 () Bool)

(declare-fun b!6796136 () Bool)

(declare-fun inv!84789 (Context!12002) Bool)

(assert (=> b!6796136 (= e!4101711 (and (inv!84789 (h!72475 zl!343)) e!4101713 tp!1861067))))

(declare-fun b!6796137 () Bool)

(declare-fun e!4101716 () Bool)

(declare-fun tp!1861069 () Bool)

(assert (=> b!6796137 (= e!4101716 tp!1861069)))

(declare-fun b!6796138 () Bool)

(declare-fun e!4101718 () Bool)

(assert (=> b!6796138 (= e!4101720 e!4101718)))

(declare-fun res!2777459 () Bool)

(assert (=> b!6796138 (=> res!2777459 e!4101718)))

(declare-fun r!7292 () Regex!16617)

(declare-fun lt!2447275 () Context!12002)

(declare-fun derivationStepZipperDown!1845 (Regex!16617 Context!12002 C!33504) (InoxSet Context!12002))

(assert (=> b!6796138 (= res!2777459 (not (= lt!2447258 (derivationStepZipperDown!1845 (reg!16946 r!7292) lt!2447275 (h!72476 s!2326)))))))

(declare-fun lt!2447262 () List!66150)

(assert (=> b!6796138 (= lt!2447275 (Context!12003 lt!2447262))))

(declare-fun lt!2447274 () (InoxSet Context!12002))

(declare-fun lt!2447263 () Context!12002)

(assert (=> b!6796138 (= (flatMap!2098 lt!2447274 lambda!383115) (derivationStepZipperUp!1771 lt!2447263 (h!72476 s!2326)))))

(declare-fun lt!2447277 () Unit!159925)

(assert (=> b!6796138 (= lt!2447277 (lemmaFlatMapOnSingletonSet!1624 lt!2447274 lt!2447263 lambda!383115))))

(declare-fun lt!2447271 () (InoxSet Context!12002))

(assert (=> b!6796138 (= lt!2447271 (derivationStepZipperUp!1771 lt!2447263 (h!72476 s!2326)))))

(assert (=> b!6796138 (= lt!2447274 (store ((as const (Array Context!12002 Bool)) false) lt!2447263 true))))

(assert (=> b!6796138 (= lt!2447263 (Context!12003 (Cons!66026 (reg!16946 r!7292) lt!2447262)))))

(assert (=> b!6796138 (= lt!2447262 (Cons!66026 r!7292 Nil!66026))))

(declare-fun b!6796139 () Bool)

(declare-fun res!2777456 () Bool)

(assert (=> b!6796139 (=> res!2777456 e!4101726)))

(declare-fun generalisedUnion!2461 (List!66150) Regex!16617)

(declare-fun unfocusZipperList!2038 (List!66151) List!66150)

(assert (=> b!6796139 (= res!2777456 (not (= r!7292 (generalisedUnion!2461 (unfocusZipperList!2038 zl!343)))))))

(declare-fun setElem!46557 () Context!12002)

(declare-fun setNonEmpty!46557 () Bool)

(declare-fun e!4101724 () Bool)

(declare-fun tp!1861075 () Bool)

(declare-fun setRes!46557 () Bool)

(assert (=> setNonEmpty!46557 (= setRes!46557 (and tp!1861075 (inv!84789 setElem!46557) e!4101724))))

(declare-fun setRest!46557 () (InoxSet Context!12002))

(assert (=> setNonEmpty!46557 (= z!1189 ((_ map or) (store ((as const (Array Context!12002 Bool)) false) setElem!46557 true) setRest!46557))))

(declare-fun e!4101714 () Bool)

(declare-fun e!4101719 () Bool)

(assert (=> b!6796140 (= e!4101714 e!4101719)))

(declare-fun res!2777466 () Bool)

(assert (=> b!6796140 (=> res!2777466 e!4101719)))

(declare-fun lt!2447259 () (InoxSet Context!12002))

(declare-fun appendTo!222 ((InoxSet Context!12002) Context!12002) (InoxSet Context!12002))

(assert (=> b!6796140 (= res!2777466 (not (= (appendTo!222 lt!2447259 lt!2447275) lt!2447274)))))

(declare-fun lambda!383116 () Int)

(declare-fun map!15086 ((InoxSet Context!12002) Int) (InoxSet Context!12002))

(declare-fun ++!14779 (List!66150 List!66150) List!66150)

(assert (=> b!6796140 (= (map!15086 lt!2447259 lambda!383116) (store ((as const (Array Context!12002 Bool)) false) (Context!12003 (++!14779 (Cons!66026 (reg!16946 r!7292) Nil!66026) lt!2447262)) true))))

(declare-fun lambda!383117 () Int)

(declare-fun lt!2447272 () Unit!159925)

(declare-fun lemmaConcatPreservesForall!446 (List!66150 List!66150 Int) Unit!159925)

(assert (=> b!6796140 (= lt!2447272 (lemmaConcatPreservesForall!446 (Cons!66026 (reg!16946 r!7292) Nil!66026) lt!2447262 lambda!383117))))

(declare-fun lt!2447268 () Unit!159925)

(declare-fun lt!2447273 () Context!12002)

(declare-fun lemmaMapOnSingletonSet!252 ((InoxSet Context!12002) Context!12002 Int) Unit!159925)

(assert (=> b!6796140 (= lt!2447268 (lemmaMapOnSingletonSet!252 lt!2447259 lt!2447273 lambda!383116))))

(declare-fun b!6796141 () Bool)

(declare-fun tp_is_empty!42487 () Bool)

(assert (=> b!6796141 (= e!4101716 tp_is_empty!42487)))

(declare-fun b!6796142 () Bool)

(assert (=> b!6796142 (= e!4101719 (inv!84789 lt!2447275))))

(declare-fun b!6796143 () Bool)

(declare-fun e!4101722 () Bool)

(declare-fun tp!1861073 () Bool)

(assert (=> b!6796143 (= e!4101722 (and tp_is_empty!42487 tp!1861073))))

(declare-fun b!6796144 () Bool)

(declare-fun tp!1861072 () Bool)

(declare-fun tp!1861066 () Bool)

(assert (=> b!6796144 (= e!4101716 (and tp!1861072 tp!1861066))))

(declare-fun b!6796145 () Bool)

(declare-fun res!2777452 () Bool)

(declare-fun e!4101717 () Bool)

(assert (=> b!6796145 (=> res!2777452 e!4101717)))

(declare-fun unfocusZipper!2359 (List!66151) Regex!16617)

(assert (=> b!6796145 (= res!2777452 (not (= (unfocusZipper!2359 (Cons!66027 lt!2447273 Nil!66027)) (reg!16946 r!7292))))))

(declare-fun b!6796146 () Bool)

(declare-fun res!2777465 () Bool)

(assert (=> b!6796146 (=> res!2777465 e!4101718)))

(declare-fun lt!2447282 () Regex!16617)

(assert (=> b!6796146 (= res!2777465 (or (not (= lt!2447282 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6796147 () Bool)

(declare-fun e!4101712 () Bool)

(assert (=> b!6796147 (= e!4101712 (not e!4101726))))

(declare-fun res!2777454 () Bool)

(assert (=> b!6796147 (=> res!2777454 e!4101726)))

(assert (=> b!6796147 (= res!2777454 (not ((_ is Cons!66027) zl!343)))))

(declare-fun lt!2447266 () Bool)

(declare-fun matchRSpec!3718 (Regex!16617 List!66152) Bool)

(assert (=> b!6796147 (= lt!2447266 (matchRSpec!3718 r!7292 s!2326))))

(declare-fun matchR!8800 (Regex!16617 List!66152) Bool)

(assert (=> b!6796147 (= lt!2447266 (matchR!8800 r!7292 s!2326))))

(declare-fun lt!2447267 () Unit!159925)

(declare-fun mainMatchTheorem!3718 (Regex!16617 List!66152) Unit!159925)

(assert (=> b!6796147 (= lt!2447267 (mainMatchTheorem!3718 r!7292 s!2326))))

(declare-fun b!6796148 () Bool)

(declare-fun res!2777457 () Bool)

(assert (=> b!6796148 (=> res!2777457 e!4101726)))

(declare-fun isEmpty!38401 (List!66151) Bool)

(assert (=> b!6796148 (= res!2777457 (not (isEmpty!38401 (t!379878 zl!343))))))

(declare-fun b!6796149 () Bool)

(declare-fun e!4101715 () Bool)

(assert (=> b!6796149 (= e!4101715 e!4101717)))

(declare-fun res!2777461 () Bool)

(assert (=> b!6796149 (=> res!2777461 e!4101717)))

(declare-fun lt!2447279 () (InoxSet Context!12002))

(declare-fun derivationStepZipper!2561 ((InoxSet Context!12002) C!33504) (InoxSet Context!12002))

(assert (=> b!6796149 (= res!2777461 (not (= lt!2447258 (derivationStepZipper!2561 lt!2447279 (h!72476 s!2326)))))))

(assert (=> b!6796149 (= (flatMap!2098 lt!2447279 lambda!383115) (derivationStepZipperUp!1771 lt!2447275 (h!72476 s!2326)))))

(declare-fun lt!2447270 () Unit!159925)

(assert (=> b!6796149 (= lt!2447270 (lemmaFlatMapOnSingletonSet!1624 lt!2447279 lt!2447275 lambda!383115))))

(assert (=> b!6796149 (= (flatMap!2098 lt!2447259 lambda!383115) (derivationStepZipperUp!1771 lt!2447273 (h!72476 s!2326)))))

(declare-fun lt!2447257 () Unit!159925)

(assert (=> b!6796149 (= lt!2447257 (lemmaFlatMapOnSingletonSet!1624 lt!2447259 lt!2447273 lambda!383115))))

(declare-fun lt!2447265 () (InoxSet Context!12002))

(assert (=> b!6796149 (= lt!2447265 (derivationStepZipperUp!1771 lt!2447275 (h!72476 s!2326)))))

(declare-fun lt!2447281 () (InoxSet Context!12002))

(assert (=> b!6796149 (= lt!2447281 (derivationStepZipperUp!1771 lt!2447273 (h!72476 s!2326)))))

(assert (=> b!6796149 (= lt!2447279 (store ((as const (Array Context!12002 Bool)) false) lt!2447275 true))))

(assert (=> b!6796149 (= lt!2447259 (store ((as const (Array Context!12002 Bool)) false) lt!2447273 true))))

(assert (=> b!6796149 (= lt!2447273 (Context!12003 (Cons!66026 (reg!16946 r!7292) Nil!66026)))))

(declare-fun b!6796150 () Bool)

(declare-fun tp!1861071 () Bool)

(assert (=> b!6796150 (= e!4101713 tp!1861071)))

(declare-fun b!6796151 () Bool)

(declare-fun res!2777455 () Bool)

(assert (=> b!6796151 (=> res!2777455 e!4101726)))

(assert (=> b!6796151 (= res!2777455 (or ((_ is EmptyExpr!16617) r!7292) ((_ is EmptyLang!16617) r!7292) ((_ is ElementMatch!16617) r!7292) ((_ is Union!16617) r!7292) ((_ is Concat!25462) r!7292)))))

(declare-fun b!6796152 () Bool)

(declare-fun res!2777463 () Bool)

(assert (=> b!6796152 (=> res!2777463 e!4101714)))

(declare-fun matchZipper!2603 ((InoxSet Context!12002) List!66152) Bool)

(assert (=> b!6796152 (= res!2777463 (not (matchZipper!2603 z!1189 s!2326)))))

(declare-fun b!6796153 () Bool)

(declare-fun res!2777458 () Bool)

(assert (=> b!6796153 (=> res!2777458 e!4101726)))

(declare-fun generalisedConcat!2214 (List!66150) Regex!16617)

(assert (=> b!6796153 (= res!2777458 (not (= r!7292 (generalisedConcat!2214 (exprs!6501 (h!72475 zl!343))))))))

(declare-fun b!6796154 () Bool)

(declare-fun res!2777453 () Bool)

(declare-fun e!4101710 () Bool)

(assert (=> b!6796154 (=> res!2777453 e!4101710)))

(assert (=> b!6796154 (= res!2777453 ((_ is Nil!66028) s!2326))))

(declare-fun setIsEmpty!46557 () Bool)

(assert (=> setIsEmpty!46557 setRes!46557))

(declare-fun b!6796155 () Bool)

(assert (=> b!6796155 (= e!4101710 e!4101721)))

(declare-fun res!2777451 () Bool)

(assert (=> b!6796155 (=> res!2777451 e!4101721)))

(declare-fun lt!2447269 () (InoxSet Context!12002))

(assert (=> b!6796155 (= res!2777451 (not (= lt!2447269 lt!2447260)))))

(assert (=> b!6796155 (= lt!2447260 (derivationStepZipperDown!1845 r!7292 (Context!12003 Nil!66026) (h!72476 s!2326)))))

(assert (=> b!6796155 (= lt!2447269 (derivationStepZipperUp!1771 (Context!12003 (Cons!66026 r!7292 Nil!66026)) (h!72476 s!2326)))))

(assert (=> b!6796155 (= lt!2447258 (derivationStepZipper!2561 z!1189 (h!72476 s!2326)))))

(declare-fun b!6796156 () Bool)

(declare-fun e!4101723 () Bool)

(declare-fun lt!2447280 () Bool)

(assert (=> b!6796156 (= e!4101723 lt!2447280)))

(declare-fun b!6796157 () Bool)

(assert (=> b!6796157 (= e!4101717 e!4101714)))

(declare-fun res!2777462 () Bool)

(assert (=> b!6796157 (=> res!2777462 e!4101714)))

(declare-fun lt!2447255 () Bool)

(assert (=> b!6796157 (= res!2777462 lt!2447255)))

(declare-fun lt!2447264 () Regex!16617)

(assert (=> b!6796157 (= lt!2447255 (matchRSpec!3718 lt!2447264 s!2326))))

(assert (=> b!6796157 (= lt!2447255 (matchR!8800 lt!2447264 s!2326))))

(declare-fun lt!2447276 () Unit!159925)

(assert (=> b!6796157 (= lt!2447276 (mainMatchTheorem!3718 lt!2447264 s!2326))))

(declare-fun res!2777468 () Bool)

(declare-fun e!4101725 () Bool)

(assert (=> start!657776 (=> (not res!2777468) (not e!4101725))))

(declare-fun validRegex!8353 (Regex!16617) Bool)

(assert (=> start!657776 (= res!2777468 (validRegex!8353 r!7292))))

(assert (=> start!657776 e!4101725))

(assert (=> start!657776 e!4101716))

(declare-fun condSetEmpty!46557 () Bool)

(assert (=> start!657776 (= condSetEmpty!46557 (= z!1189 ((as const (Array Context!12002 Bool)) false)))))

(assert (=> start!657776 setRes!46557))

(assert (=> start!657776 e!4101711))

(assert (=> start!657776 e!4101722))

(declare-fun b!6796158 () Bool)

(declare-fun res!2777464 () Bool)

(assert (=> b!6796158 (=> res!2777464 e!4101717)))

(assert (=> b!6796158 (= res!2777464 (not (= (unfocusZipper!2359 (Cons!66027 lt!2447275 Nil!66027)) r!7292)))))

(declare-fun b!6796159 () Bool)

(declare-fun res!2777470 () Bool)

(assert (=> b!6796159 (=> res!2777470 e!4101718)))

(assert (=> b!6796159 (= res!2777470 (not (= (matchZipper!2603 lt!2447274 s!2326) (matchZipper!2603 (derivationStepZipper!2561 lt!2447274 (h!72476 s!2326)) (t!379879 s!2326)))))))

(declare-fun b!6796160 () Bool)

(assert (=> b!6796160 (= e!4101725 e!4101712)))

(declare-fun res!2777447 () Bool)

(assert (=> b!6796160 (=> (not res!2777447) (not e!4101712))))

(assert (=> b!6796160 (= res!2777447 (= r!7292 lt!2447282))))

(assert (=> b!6796160 (= lt!2447282 (unfocusZipper!2359 zl!343))))

(declare-fun b!6796161 () Bool)

(declare-fun res!2777467 () Bool)

(assert (=> b!6796161 (=> (not res!2777467) (not e!4101725))))

(declare-fun toList!10401 ((InoxSet Context!12002)) List!66151)

(assert (=> b!6796161 (= res!2777467 (= (toList!10401 z!1189) zl!343))))

(assert (=> b!6796162 (= e!4101726 e!4101710)))

(declare-fun res!2777449 () Bool)

(assert (=> b!6796162 (=> res!2777449 e!4101710)))

(assert (=> b!6796162 (= res!2777449 (not (= lt!2447266 e!4101723)))))

(declare-fun res!2777460 () Bool)

(assert (=> b!6796162 (=> res!2777460 e!4101723)))

(declare-fun isEmpty!38402 (List!66152) Bool)

(assert (=> b!6796162 (= res!2777460 (isEmpty!38402 s!2326))))

(declare-fun Exists!3685 (Int) Bool)

(assert (=> b!6796162 (= (Exists!3685 lambda!383112) (Exists!3685 lambda!383114))))

(declare-fun lt!2447254 () Unit!159925)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2212 (Regex!16617 Regex!16617 List!66152) Unit!159925)

(assert (=> b!6796162 (= lt!2447254 (lemmaExistCutMatchRandMatchRSpecEquivalent!2212 (reg!16946 r!7292) r!7292 s!2326))))

(assert (=> b!6796162 (= (Exists!3685 lambda!383112) (Exists!3685 lambda!383113))))

(declare-fun lt!2447278 () Unit!159925)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!776 (Regex!16617 List!66152) Unit!159925)

(assert (=> b!6796162 (= lt!2447278 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!776 (reg!16946 r!7292) s!2326))))

(assert (=> b!6796162 (= lt!2447280 (Exists!3685 lambda!383112))))

(declare-datatypes ((tuple2!67184 0))(
  ( (tuple2!67185 (_1!36895 List!66152) (_2!36895 List!66152)) )
))
(declare-datatypes ((Option!16504 0))(
  ( (None!16503) (Some!16503 (v!52709 tuple2!67184)) )
))
(declare-fun isDefined!13207 (Option!16504) Bool)

(declare-fun findConcatSeparation!2918 (Regex!16617 Regex!16617 List!66152 List!66152 List!66152) Option!16504)

(assert (=> b!6796162 (= lt!2447280 (isDefined!13207 (findConcatSeparation!2918 (reg!16946 r!7292) r!7292 Nil!66028 s!2326 s!2326)))))

(declare-fun lt!2447261 () Unit!159925)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2682 (Regex!16617 Regex!16617 List!66152) Unit!159925)

(assert (=> b!6796162 (= lt!2447261 (lemmaFindConcatSeparationEquivalentToExists!2682 (reg!16946 r!7292) r!7292 s!2326))))

(declare-fun b!6796163 () Bool)

(declare-fun tp!1861070 () Bool)

(declare-fun tp!1861068 () Bool)

(assert (=> b!6796163 (= e!4101716 (and tp!1861070 tp!1861068))))

(declare-fun b!6796164 () Bool)

(declare-fun tp!1861074 () Bool)

(assert (=> b!6796164 (= e!4101724 tp!1861074)))

(declare-fun b!6796165 () Bool)

(assert (=> b!6796165 (= e!4101718 e!4101715)))

(declare-fun res!2777448 () Bool)

(assert (=> b!6796165 (=> res!2777448 e!4101715)))

(assert (=> b!6796165 (= res!2777448 (not (= (unfocusZipper!2359 (Cons!66027 lt!2447263 Nil!66027)) lt!2447264)))))

(assert (=> b!6796165 (= lt!2447264 (Concat!25462 (reg!16946 r!7292) r!7292))))

(assert (= (and start!657776 res!2777468) b!6796161))

(assert (= (and b!6796161 res!2777467) b!6796160))

(assert (= (and b!6796160 res!2777447) b!6796147))

(assert (= (and b!6796147 (not res!2777454)) b!6796148))

(assert (= (and b!6796148 (not res!2777457)) b!6796153))

(assert (= (and b!6796153 (not res!2777458)) b!6796134))

(assert (= (and b!6796134 (not res!2777469)) b!6796139))

(assert (= (and b!6796139 (not res!2777456)) b!6796151))

(assert (= (and b!6796151 (not res!2777455)) b!6796162))

(assert (= (and b!6796162 (not res!2777460)) b!6796156))

(assert (= (and b!6796162 (not res!2777449)) b!6796154))

(assert (= (and b!6796154 (not res!2777453)) b!6796155))

(assert (= (and b!6796155 (not res!2777451)) b!6796135))

(assert (= (and b!6796135 (not res!2777450)) b!6796138))

(assert (= (and b!6796138 (not res!2777459)) b!6796159))

(assert (= (and b!6796159 (not res!2777470)) b!6796146))

(assert (= (and b!6796146 (not res!2777465)) b!6796165))

(assert (= (and b!6796165 (not res!2777448)) b!6796149))

(assert (= (and b!6796149 (not res!2777461)) b!6796145))

(assert (= (and b!6796145 (not res!2777452)) b!6796158))

(assert (= (and b!6796158 (not res!2777464)) b!6796157))

(assert (= (and b!6796157 (not res!2777462)) b!6796152))

(assert (= (and b!6796152 (not res!2777463)) b!6796140))

(assert (= (and b!6796140 (not res!2777466)) b!6796142))

(assert (= (and start!657776 ((_ is ElementMatch!16617) r!7292)) b!6796141))

(assert (= (and start!657776 ((_ is Concat!25462) r!7292)) b!6796163))

(assert (= (and start!657776 ((_ is Star!16617) r!7292)) b!6796137))

(assert (= (and start!657776 ((_ is Union!16617) r!7292)) b!6796144))

(assert (= (and start!657776 condSetEmpty!46557) setIsEmpty!46557))

(assert (= (and start!657776 (not condSetEmpty!46557)) setNonEmpty!46557))

(assert (= setNonEmpty!46557 b!6796164))

(assert (= b!6796136 b!6796150))

(assert (= (and start!657776 ((_ is Cons!66027) zl!343)) b!6796136))

(assert (= (and start!657776 ((_ is Cons!66028) s!2326)) b!6796143))

(declare-fun m!7543008 () Bool)

(assert (=> start!657776 m!7543008))

(declare-fun m!7543010 () Bool)

(assert (=> b!6796162 m!7543010))

(declare-fun m!7543012 () Bool)

(assert (=> b!6796162 m!7543012))

(declare-fun m!7543014 () Bool)

(assert (=> b!6796162 m!7543014))

(declare-fun m!7543016 () Bool)

(assert (=> b!6796162 m!7543016))

(declare-fun m!7543018 () Bool)

(assert (=> b!6796162 m!7543018))

(assert (=> b!6796162 m!7543010))

(assert (=> b!6796162 m!7543010))

(declare-fun m!7543020 () Bool)

(assert (=> b!6796162 m!7543020))

(declare-fun m!7543022 () Bool)

(assert (=> b!6796162 m!7543022))

(assert (=> b!6796162 m!7543022))

(declare-fun m!7543024 () Bool)

(assert (=> b!6796162 m!7543024))

(declare-fun m!7543026 () Bool)

(assert (=> b!6796162 m!7543026))

(declare-fun m!7543028 () Bool)

(assert (=> b!6796142 m!7543028))

(declare-fun m!7543030 () Bool)

(assert (=> b!6796140 m!7543030))

(declare-fun m!7543032 () Bool)

(assert (=> b!6796140 m!7543032))

(declare-fun m!7543034 () Bool)

(assert (=> b!6796140 m!7543034))

(declare-fun m!7543036 () Bool)

(assert (=> b!6796140 m!7543036))

(declare-fun m!7543038 () Bool)

(assert (=> b!6796140 m!7543038))

(declare-fun m!7543040 () Bool)

(assert (=> b!6796140 m!7543040))

(declare-fun m!7543042 () Bool)

(assert (=> b!6796136 m!7543042))

(declare-fun m!7543044 () Bool)

(assert (=> b!6796161 m!7543044))

(declare-fun m!7543046 () Bool)

(assert (=> b!6796147 m!7543046))

(declare-fun m!7543048 () Bool)

(assert (=> b!6796147 m!7543048))

(declare-fun m!7543050 () Bool)

(assert (=> b!6796147 m!7543050))

(declare-fun m!7543052 () Bool)

(assert (=> b!6796149 m!7543052))

(declare-fun m!7543054 () Bool)

(assert (=> b!6796149 m!7543054))

(declare-fun m!7543056 () Bool)

(assert (=> b!6796149 m!7543056))

(declare-fun m!7543058 () Bool)

(assert (=> b!6796149 m!7543058))

(declare-fun m!7543060 () Bool)

(assert (=> b!6796149 m!7543060))

(declare-fun m!7543062 () Bool)

(assert (=> b!6796149 m!7543062))

(declare-fun m!7543064 () Bool)

(assert (=> b!6796149 m!7543064))

(declare-fun m!7543066 () Bool)

(assert (=> b!6796149 m!7543066))

(declare-fun m!7543068 () Bool)

(assert (=> b!6796149 m!7543068))

(declare-fun m!7543070 () Bool)

(assert (=> b!6796148 m!7543070))

(declare-fun m!7543072 () Bool)

(assert (=> b!6796145 m!7543072))

(declare-fun m!7543074 () Bool)

(assert (=> b!6796165 m!7543074))

(declare-fun m!7543076 () Bool)

(assert (=> setNonEmpty!46557 m!7543076))

(declare-fun m!7543078 () Bool)

(assert (=> b!6796152 m!7543078))

(declare-fun m!7543080 () Bool)

(assert (=> b!6796158 m!7543080))

(declare-fun m!7543082 () Bool)

(assert (=> b!6796153 m!7543082))

(declare-fun m!7543084 () Bool)

(assert (=> b!6796155 m!7543084))

(declare-fun m!7543086 () Bool)

(assert (=> b!6796155 m!7543086))

(declare-fun m!7543088 () Bool)

(assert (=> b!6796155 m!7543088))

(declare-fun m!7543090 () Bool)

(assert (=> b!6796159 m!7543090))

(declare-fun m!7543092 () Bool)

(assert (=> b!6796159 m!7543092))

(assert (=> b!6796159 m!7543092))

(declare-fun m!7543094 () Bool)

(assert (=> b!6796159 m!7543094))

(declare-fun m!7543096 () Bool)

(assert (=> b!6796157 m!7543096))

(declare-fun m!7543098 () Bool)

(assert (=> b!6796157 m!7543098))

(declare-fun m!7543100 () Bool)

(assert (=> b!6796157 m!7543100))

(declare-fun m!7543102 () Bool)

(assert (=> b!6796135 m!7543102))

(declare-fun m!7543104 () Bool)

(assert (=> b!6796135 m!7543104))

(declare-fun m!7543106 () Bool)

(assert (=> b!6796135 m!7543106))

(declare-fun m!7543108 () Bool)

(assert (=> b!6796160 m!7543108))

(declare-fun m!7543110 () Bool)

(assert (=> b!6796138 m!7543110))

(declare-fun m!7543112 () Bool)

(assert (=> b!6796138 m!7543112))

(declare-fun m!7543114 () Bool)

(assert (=> b!6796138 m!7543114))

(declare-fun m!7543116 () Bool)

(assert (=> b!6796138 m!7543116))

(declare-fun m!7543118 () Bool)

(assert (=> b!6796138 m!7543118))

(declare-fun m!7543120 () Bool)

(assert (=> b!6796139 m!7543120))

(assert (=> b!6796139 m!7543120))

(declare-fun m!7543122 () Bool)

(assert (=> b!6796139 m!7543122))

(check-sat (not b!6796136) (not b!6796159) (not b!6796163) (not b!6796162) (not b!6796158) (not b!6796149) (not b!6796165) (not b!6796148) (not b!6796153) (not b!6796139) (not b!6796157) (not b!6796142) (not b!6796161) (not setNonEmpty!46557) (not b!6796144) (not b!6796160) (not b!6796138) tp_is_empty!42487 (not b!6796137) (not b!6796135) (not b!6796152) (not start!657776) (not b!6796145) (not b!6796143) (not b!6796155) (not b!6796164) (not b!6796140) (not b!6796150) (not b!6796147))
(check-sat)
(get-model)

(declare-fun d!2135454 () Bool)

(declare-fun choose!50636 ((InoxSet Context!12002) Int) (InoxSet Context!12002))

(assert (=> d!2135454 (= (flatMap!2098 z!1189 lambda!383115) (choose!50636 z!1189 lambda!383115))))

(declare-fun bs!1811170 () Bool)

(assert (= bs!1811170 d!2135454))

(declare-fun m!7543124 () Bool)

(assert (=> bs!1811170 m!7543124))

(assert (=> b!6796135 d!2135454))

(declare-fun call!617296 () (InoxSet Context!12002))

(declare-fun b!6796184 () Bool)

(declare-fun e!4101734 () (InoxSet Context!12002))

(assert (=> b!6796184 (= e!4101734 ((_ map or) call!617296 (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 (h!72475 zl!343)))) (h!72476 s!2326))))))

(declare-fun b!6796185 () Bool)

(declare-fun e!4101735 () (InoxSet Context!12002))

(assert (=> b!6796185 (= e!4101735 call!617296)))

(declare-fun bm!617291 () Bool)

(assert (=> bm!617291 (= call!617296 (derivationStepZipperDown!1845 (h!72474 (exprs!6501 (h!72475 zl!343))) (Context!12003 (t!379877 (exprs!6501 (h!72475 zl!343)))) (h!72476 s!2326)))))

(declare-fun b!6796186 () Bool)

(assert (=> b!6796186 (= e!4101735 ((as const (Array Context!12002 Bool)) false))))

(declare-fun d!2135456 () Bool)

(declare-fun c!1263409 () Bool)

(declare-fun e!4101733 () Bool)

(assert (=> d!2135456 (= c!1263409 e!4101733)))

(declare-fun res!2777474 () Bool)

(assert (=> d!2135456 (=> (not res!2777474) (not e!4101733))))

(assert (=> d!2135456 (= res!2777474 ((_ is Cons!66026) (exprs!6501 (h!72475 zl!343))))))

(assert (=> d!2135456 (= (derivationStepZipperUp!1771 (h!72475 zl!343) (h!72476 s!2326)) e!4101734)))

(declare-fun b!6796187 () Bool)

(assert (=> b!6796187 (= e!4101734 e!4101735)))

(declare-fun c!1263408 () Bool)

(assert (=> b!6796187 (= c!1263408 ((_ is Cons!66026) (exprs!6501 (h!72475 zl!343))))))

(declare-fun b!6796188 () Bool)

(declare-fun nullable!6595 (Regex!16617) Bool)

(assert (=> b!6796188 (= e!4101733 (nullable!6595 (h!72474 (exprs!6501 (h!72475 zl!343)))))))

(assert (= (and d!2135456 res!2777474) b!6796188))

(assert (= (and d!2135456 c!1263409) b!6796184))

(assert (= (and d!2135456 (not c!1263409)) b!6796187))

(assert (= (and b!6796187 c!1263408) b!6796185))

(assert (= (and b!6796187 (not c!1263408)) b!6796186))

(assert (= (or b!6796184 b!6796185) bm!617291))

(declare-fun m!7543126 () Bool)

(assert (=> b!6796184 m!7543126))

(declare-fun m!7543128 () Bool)

(assert (=> bm!617291 m!7543128))

(declare-fun m!7543130 () Bool)

(assert (=> b!6796188 m!7543130))

(assert (=> b!6796135 d!2135456))

(declare-fun d!2135458 () Bool)

(declare-fun dynLambda!26359 (Int Context!12002) (InoxSet Context!12002))

(assert (=> d!2135458 (= (flatMap!2098 z!1189 lambda!383115) (dynLambda!26359 lambda!383115 (h!72475 zl!343)))))

(declare-fun lt!2447285 () Unit!159925)

(declare-fun choose!50637 ((InoxSet Context!12002) Context!12002 Int) Unit!159925)

(assert (=> d!2135458 (= lt!2447285 (choose!50637 z!1189 (h!72475 zl!343) lambda!383115))))

(assert (=> d!2135458 (= z!1189 (store ((as const (Array Context!12002 Bool)) false) (h!72475 zl!343) true))))

(assert (=> d!2135458 (= (lemmaFlatMapOnSingletonSet!1624 z!1189 (h!72475 zl!343) lambda!383115) lt!2447285)))

(declare-fun b_lambda!256083 () Bool)

(assert (=> (not b_lambda!256083) (not d!2135458)))

(declare-fun bs!1811171 () Bool)

(assert (= bs!1811171 d!2135458))

(assert (=> bs!1811171 m!7543102))

(declare-fun m!7543132 () Bool)

(assert (=> bs!1811171 m!7543132))

(declare-fun m!7543134 () Bool)

(assert (=> bs!1811171 m!7543134))

(declare-fun m!7543136 () Bool)

(assert (=> bs!1811171 m!7543136))

(assert (=> b!6796135 d!2135458))

(declare-fun d!2135460 () Bool)

(declare-fun lt!2447288 () Regex!16617)

(assert (=> d!2135460 (validRegex!8353 lt!2447288)))

(assert (=> d!2135460 (= lt!2447288 (generalisedUnion!2461 (unfocusZipperList!2038 (Cons!66027 lt!2447263 Nil!66027))))))

(assert (=> d!2135460 (= (unfocusZipper!2359 (Cons!66027 lt!2447263 Nil!66027)) lt!2447288)))

(declare-fun bs!1811172 () Bool)

(assert (= bs!1811172 d!2135460))

(declare-fun m!7543138 () Bool)

(assert (=> bs!1811172 m!7543138))

(declare-fun m!7543140 () Bool)

(assert (=> bs!1811172 m!7543140))

(assert (=> bs!1811172 m!7543140))

(declare-fun m!7543142 () Bool)

(assert (=> bs!1811172 m!7543142))

(assert (=> b!6796165 d!2135460))

(declare-fun b!6796233 () Bool)

(declare-fun c!1263429 () Bool)

(assert (=> b!6796233 (= c!1263429 ((_ is Star!16617) r!7292))))

(declare-fun e!4101767 () (InoxSet Context!12002))

(declare-fun e!4101766 () (InoxSet Context!12002))

(assert (=> b!6796233 (= e!4101767 e!4101766)))

(declare-fun b!6796234 () Bool)

(declare-fun e!4101765 () (InoxSet Context!12002))

(declare-fun call!617311 () (InoxSet Context!12002))

(declare-fun call!617309 () (InoxSet Context!12002))

(assert (=> b!6796234 (= e!4101765 ((_ map or) call!617311 call!617309))))

(declare-fun b!6796235 () Bool)

(declare-fun c!1263430 () Bool)

(declare-fun e!4101762 () Bool)

(assert (=> b!6796235 (= c!1263430 e!4101762)))

(declare-fun res!2777484 () Bool)

(assert (=> b!6796235 (=> (not res!2777484) (not e!4101762))))

(assert (=> b!6796235 (= res!2777484 ((_ is Concat!25462) r!7292))))

(declare-fun e!4101764 () (InoxSet Context!12002))

(assert (=> b!6796235 (= e!4101764 e!4101765)))

(declare-fun b!6796236 () Bool)

(assert (=> b!6796236 (= e!4101762 (nullable!6595 (regOne!33746 r!7292)))))

(declare-fun b!6796237 () Bool)

(declare-fun e!4101763 () (InoxSet Context!12002))

(assert (=> b!6796237 (= e!4101763 (store ((as const (Array Context!12002 Bool)) false) (Context!12003 Nil!66026) true))))

(declare-fun b!6796238 () Bool)

(assert (=> b!6796238 (= e!4101765 e!4101767)))

(declare-fun c!1263432 () Bool)

(assert (=> b!6796238 (= c!1263432 ((_ is Concat!25462) r!7292))))

(declare-fun call!617314 () List!66150)

(declare-fun bm!617304 () Bool)

(declare-fun $colon$colon!2425 (List!66150 Regex!16617) List!66150)

(assert (=> bm!617304 (= call!617314 ($colon$colon!2425 (exprs!6501 (Context!12003 Nil!66026)) (ite (or c!1263430 c!1263432) (regTwo!33746 r!7292) r!7292)))))

(declare-fun d!2135462 () Bool)

(declare-fun c!1263428 () Bool)

(assert (=> d!2135462 (= c!1263428 (and ((_ is ElementMatch!16617) r!7292) (= (c!1263403 r!7292) (h!72476 s!2326))))))

(assert (=> d!2135462 (= (derivationStepZipperDown!1845 r!7292 (Context!12003 Nil!66026) (h!72476 s!2326)) e!4101763)))

(declare-fun bm!617305 () Bool)

(declare-fun call!617312 () (InoxSet Context!12002))

(assert (=> bm!617305 (= call!617309 call!617312)))

(declare-fun b!6796239 () Bool)

(assert (=> b!6796239 (= e!4101766 ((as const (Array Context!12002 Bool)) false))))

(declare-fun b!6796240 () Bool)

(assert (=> b!6796240 (= e!4101763 e!4101764)))

(declare-fun c!1263431 () Bool)

(assert (=> b!6796240 (= c!1263431 ((_ is Union!16617) r!7292))))

(declare-fun call!617310 () List!66150)

(declare-fun bm!617306 () Bool)

(assert (=> bm!617306 (= call!617312 (derivationStepZipperDown!1845 (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292)))) (ite (or c!1263431 c!1263430) (Context!12003 Nil!66026) (Context!12003 call!617310)) (h!72476 s!2326)))))

(declare-fun b!6796241 () Bool)

(assert (=> b!6796241 (= e!4101764 ((_ map or) call!617311 call!617312))))

(declare-fun b!6796242 () Bool)

(declare-fun call!617313 () (InoxSet Context!12002))

(assert (=> b!6796242 (= e!4101767 call!617313)))

(declare-fun bm!617307 () Bool)

(assert (=> bm!617307 (= call!617313 call!617309)))

(declare-fun bm!617308 () Bool)

(assert (=> bm!617308 (= call!617311 (derivationStepZipperDown!1845 (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292)) (ite c!1263431 (Context!12003 Nil!66026) (Context!12003 call!617314)) (h!72476 s!2326)))))

(declare-fun b!6796243 () Bool)

(assert (=> b!6796243 (= e!4101766 call!617313)))

(declare-fun bm!617309 () Bool)

(assert (=> bm!617309 (= call!617310 call!617314)))

(assert (= (and d!2135462 c!1263428) b!6796237))

(assert (= (and d!2135462 (not c!1263428)) b!6796240))

(assert (= (and b!6796240 c!1263431) b!6796241))

(assert (= (and b!6796240 (not c!1263431)) b!6796235))

(assert (= (and b!6796235 res!2777484) b!6796236))

(assert (= (and b!6796235 c!1263430) b!6796234))

(assert (= (and b!6796235 (not c!1263430)) b!6796238))

(assert (= (and b!6796238 c!1263432) b!6796242))

(assert (= (and b!6796238 (not c!1263432)) b!6796233))

(assert (= (and b!6796233 c!1263429) b!6796243))

(assert (= (and b!6796233 (not c!1263429)) b!6796239))

(assert (= (or b!6796242 b!6796243) bm!617309))

(assert (= (or b!6796242 b!6796243) bm!617307))

(assert (= (or b!6796234 bm!617309) bm!617304))

(assert (= (or b!6796234 bm!617307) bm!617305))

(assert (= (or b!6796241 bm!617305) bm!617306))

(assert (= (or b!6796241 b!6796234) bm!617308))

(declare-fun m!7543146 () Bool)

(assert (=> b!6796236 m!7543146))

(declare-fun m!7543148 () Bool)

(assert (=> bm!617306 m!7543148))

(declare-fun m!7543150 () Bool)

(assert (=> bm!617308 m!7543150))

(declare-fun m!7543152 () Bool)

(assert (=> b!6796237 m!7543152))

(declare-fun m!7543154 () Bool)

(assert (=> bm!617304 m!7543154))

(assert (=> b!6796155 d!2135462))

(declare-fun e!4101771 () (InoxSet Context!12002))

(declare-fun call!617315 () (InoxSet Context!12002))

(declare-fun b!6796250 () Bool)

(assert (=> b!6796250 (= e!4101771 ((_ map or) call!617315 (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) (h!72476 s!2326))))))

(declare-fun b!6796251 () Bool)

(declare-fun e!4101772 () (InoxSet Context!12002))

(assert (=> b!6796251 (= e!4101772 call!617315)))

(declare-fun bm!617310 () Bool)

(assert (=> bm!617310 (= call!617315 (derivationStepZipperDown!1845 (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026)))) (Context!12003 (t!379877 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) (h!72476 s!2326)))))

(declare-fun b!6796252 () Bool)

(assert (=> b!6796252 (= e!4101772 ((as const (Array Context!12002 Bool)) false))))

(declare-fun d!2135468 () Bool)

(declare-fun c!1263434 () Bool)

(declare-fun e!4101770 () Bool)

(assert (=> d!2135468 (= c!1263434 e!4101770)))

(declare-fun res!2777491 () Bool)

(assert (=> d!2135468 (=> (not res!2777491) (not e!4101770))))

(assert (=> d!2135468 (= res!2777491 ((_ is Cons!66026) (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026)))))))

(assert (=> d!2135468 (= (derivationStepZipperUp!1771 (Context!12003 (Cons!66026 r!7292 Nil!66026)) (h!72476 s!2326)) e!4101771)))

(declare-fun b!6796253 () Bool)

(assert (=> b!6796253 (= e!4101771 e!4101772)))

(declare-fun c!1263433 () Bool)

(assert (=> b!6796253 (= c!1263433 ((_ is Cons!66026) (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026)))))))

(declare-fun b!6796254 () Bool)

(assert (=> b!6796254 (= e!4101770 (nullable!6595 (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))))))

(assert (= (and d!2135468 res!2777491) b!6796254))

(assert (= (and d!2135468 c!1263434) b!6796250))

(assert (= (and d!2135468 (not c!1263434)) b!6796253))

(assert (= (and b!6796253 c!1263433) b!6796251))

(assert (= (and b!6796253 (not c!1263433)) b!6796252))

(assert (= (or b!6796250 b!6796251) bm!617310))

(declare-fun m!7543156 () Bool)

(assert (=> b!6796250 m!7543156))

(declare-fun m!7543158 () Bool)

(assert (=> bm!617310 m!7543158))

(declare-fun m!7543160 () Bool)

(assert (=> b!6796254 m!7543160))

(assert (=> b!6796155 d!2135468))

(declare-fun bs!1811175 () Bool)

(declare-fun d!2135470 () Bool)

(assert (= bs!1811175 (and d!2135470 b!6796135)))

(declare-fun lambda!383127 () Int)

(assert (=> bs!1811175 (= lambda!383127 lambda!383115)))

(assert (=> d!2135470 true))

(assert (=> d!2135470 (= (derivationStepZipper!2561 z!1189 (h!72476 s!2326)) (flatMap!2098 z!1189 lambda!383127))))

(declare-fun bs!1811176 () Bool)

(assert (= bs!1811176 d!2135470))

(declare-fun m!7543162 () Bool)

(assert (=> bs!1811176 m!7543162))

(assert (=> b!6796155 d!2135470))

(declare-fun d!2135472 () Bool)

(declare-fun lt!2447289 () Regex!16617)

(assert (=> d!2135472 (validRegex!8353 lt!2447289)))

(assert (=> d!2135472 (= lt!2447289 (generalisedUnion!2461 (unfocusZipperList!2038 (Cons!66027 lt!2447273 Nil!66027))))))

(assert (=> d!2135472 (= (unfocusZipper!2359 (Cons!66027 lt!2447273 Nil!66027)) lt!2447289)))

(declare-fun bs!1811177 () Bool)

(assert (= bs!1811177 d!2135472))

(declare-fun m!7543164 () Bool)

(assert (=> bs!1811177 m!7543164))

(declare-fun m!7543166 () Bool)

(assert (=> bs!1811177 m!7543166))

(assert (=> bs!1811177 m!7543166))

(declare-fun m!7543168 () Bool)

(assert (=> bs!1811177 m!7543168))

(assert (=> b!6796145 d!2135472))

(declare-fun bs!1811178 () Bool)

(declare-fun d!2135474 () Bool)

(assert (= bs!1811178 (and d!2135474 b!6796140)))

(declare-fun lambda!383130 () Int)

(assert (=> bs!1811178 (= lambda!383130 lambda!383117)))

(declare-fun forall!15809 (List!66150 Int) Bool)

(assert (=> d!2135474 (= (inv!84789 (h!72475 zl!343)) (forall!15809 (exprs!6501 (h!72475 zl!343)) lambda!383130))))

(declare-fun bs!1811179 () Bool)

(assert (= bs!1811179 d!2135474))

(declare-fun m!7543170 () Bool)

(assert (=> bs!1811179 m!7543170))

(assert (=> b!6796136 d!2135474))

(declare-fun bm!617323 () Bool)

(declare-fun call!617328 () Bool)

(declare-fun c!1263445 () Bool)

(assert (=> bm!617323 (= call!617328 (validRegex!8353 (ite c!1263445 (regTwo!33747 r!7292) (regTwo!33746 r!7292))))))

(declare-fun b!6796290 () Bool)

(declare-fun e!4101800 () Bool)

(declare-fun e!4101802 () Bool)

(assert (=> b!6796290 (= e!4101800 e!4101802)))

(declare-fun res!2777511 () Bool)

(assert (=> b!6796290 (= res!2777511 (not (nullable!6595 (reg!16946 r!7292))))))

(assert (=> b!6796290 (=> (not res!2777511) (not e!4101802))))

(declare-fun b!6796291 () Bool)

(declare-fun e!4101797 () Bool)

(assert (=> b!6796291 (= e!4101797 call!617328)))

(declare-fun b!6796292 () Bool)

(declare-fun e!4101796 () Bool)

(assert (=> b!6796292 (= e!4101800 e!4101796)))

(assert (=> b!6796292 (= c!1263445 ((_ is Union!16617) r!7292))))

(declare-fun b!6796293 () Bool)

(declare-fun res!2777512 () Bool)

(declare-fun e!4101801 () Bool)

(assert (=> b!6796293 (=> (not res!2777512) (not e!4101801))))

(declare-fun call!617329 () Bool)

(assert (=> b!6796293 (= res!2777512 call!617329)))

(assert (=> b!6796293 (= e!4101796 e!4101801)))

(declare-fun b!6796294 () Bool)

(declare-fun e!4101798 () Bool)

(assert (=> b!6796294 (= e!4101798 e!4101800)))

(declare-fun c!1263446 () Bool)

(assert (=> b!6796294 (= c!1263446 ((_ is Star!16617) r!7292))))

(declare-fun b!6796295 () Bool)

(declare-fun res!2777513 () Bool)

(declare-fun e!4101799 () Bool)

(assert (=> b!6796295 (=> res!2777513 e!4101799)))

(assert (=> b!6796295 (= res!2777513 (not ((_ is Concat!25462) r!7292)))))

(assert (=> b!6796295 (= e!4101796 e!4101799)))

(declare-fun call!617330 () Bool)

(declare-fun bm!617324 () Bool)

(assert (=> bm!617324 (= call!617330 (validRegex!8353 (ite c!1263446 (reg!16946 r!7292) (ite c!1263445 (regOne!33747 r!7292) (regOne!33746 r!7292)))))))

(declare-fun bm!617325 () Bool)

(assert (=> bm!617325 (= call!617329 call!617330)))

(declare-fun b!6796296 () Bool)

(assert (=> b!6796296 (= e!4101801 call!617328)))

(declare-fun d!2135476 () Bool)

(declare-fun res!2777510 () Bool)

(assert (=> d!2135476 (=> res!2777510 e!4101798)))

(assert (=> d!2135476 (= res!2777510 ((_ is ElementMatch!16617) r!7292))))

(assert (=> d!2135476 (= (validRegex!8353 r!7292) e!4101798)))

(declare-fun b!6796297 () Bool)

(assert (=> b!6796297 (= e!4101802 call!617330)))

(declare-fun b!6796298 () Bool)

(assert (=> b!6796298 (= e!4101799 e!4101797)))

(declare-fun res!2777509 () Bool)

(assert (=> b!6796298 (=> (not res!2777509) (not e!4101797))))

(assert (=> b!6796298 (= res!2777509 call!617329)))

(assert (= (and d!2135476 (not res!2777510)) b!6796294))

(assert (= (and b!6796294 c!1263446) b!6796290))

(assert (= (and b!6796294 (not c!1263446)) b!6796292))

(assert (= (and b!6796290 res!2777511) b!6796297))

(assert (= (and b!6796292 c!1263445) b!6796293))

(assert (= (and b!6796292 (not c!1263445)) b!6796295))

(assert (= (and b!6796293 res!2777512) b!6796296))

(assert (= (and b!6796295 (not res!2777513)) b!6796298))

(assert (= (and b!6796298 res!2777509) b!6796291))

(assert (= (or b!6796296 b!6796291) bm!617323))

(assert (= (or b!6796293 b!6796298) bm!617325))

(assert (= (or b!6796297 bm!617325) bm!617324))

(declare-fun m!7543178 () Bool)

(assert (=> bm!617323 m!7543178))

(declare-fun m!7543180 () Bool)

(assert (=> b!6796290 m!7543180))

(declare-fun m!7543182 () Bool)

(assert (=> bm!617324 m!7543182))

(assert (=> start!657776 d!2135476))

(declare-fun bs!1811185 () Bool)

(declare-fun b!6796375 () Bool)

(assert (= bs!1811185 (and b!6796375 b!6796162)))

(declare-fun lambda!383137 () Int)

(assert (=> bs!1811185 (not (= lambda!383137 lambda!383112))))

(assert (=> bs!1811185 (= (and (= (reg!16946 lt!2447264) (reg!16946 r!7292)) (= lt!2447264 r!7292)) (= lambda!383137 lambda!383113))))

(assert (=> bs!1811185 (not (= lambda!383137 lambda!383114))))

(assert (=> b!6796375 true))

(assert (=> b!6796375 true))

(declare-fun bs!1811186 () Bool)

(declare-fun b!6796374 () Bool)

(assert (= bs!1811186 (and b!6796374 b!6796162)))

(declare-fun lambda!383138 () Int)

(assert (=> bs!1811186 (not (= lambda!383138 lambda!383112))))

(assert (=> bs!1811186 (not (= lambda!383138 lambda!383113))))

(assert (=> bs!1811186 (= (and (= (regOne!33746 lt!2447264) (reg!16946 r!7292)) (= (regTwo!33746 lt!2447264) r!7292)) (= lambda!383138 lambda!383114))))

(declare-fun bs!1811187 () Bool)

(assert (= bs!1811187 (and b!6796374 b!6796375)))

(assert (=> bs!1811187 (not (= lambda!383138 lambda!383137))))

(assert (=> b!6796374 true))

(assert (=> b!6796374 true))

(declare-fun bm!617333 () Bool)

(declare-fun call!617338 () Bool)

(assert (=> bm!617333 (= call!617338 (isEmpty!38402 s!2326))))

(declare-fun b!6796373 () Bool)

(declare-fun res!2777556 () Bool)

(declare-fun e!4101846 () Bool)

(assert (=> b!6796373 (=> res!2777556 e!4101846)))

(assert (=> b!6796373 (= res!2777556 call!617338)))

(declare-fun e!4101843 () Bool)

(assert (=> b!6796373 (= e!4101843 e!4101846)))

(declare-fun call!617339 () Bool)

(assert (=> b!6796374 (= e!4101843 call!617339)))

(assert (=> b!6796375 (= e!4101846 call!617339)))

(declare-fun b!6796376 () Bool)

(declare-fun e!4101847 () Bool)

(assert (=> b!6796376 (= e!4101847 call!617338)))

(declare-fun d!2135480 () Bool)

(declare-fun c!1263467 () Bool)

(assert (=> d!2135480 (= c!1263467 ((_ is EmptyExpr!16617) lt!2447264))))

(assert (=> d!2135480 (= (matchRSpec!3718 lt!2447264 s!2326) e!4101847)))

(declare-fun c!1263464 () Bool)

(declare-fun bm!617334 () Bool)

(assert (=> bm!617334 (= call!617339 (Exists!3685 (ite c!1263464 lambda!383137 lambda!383138)))))

(declare-fun b!6796377 () Bool)

(declare-fun e!4101845 () Bool)

(declare-fun e!4101844 () Bool)

(assert (=> b!6796377 (= e!4101845 e!4101844)))

(declare-fun res!2777554 () Bool)

(assert (=> b!6796377 (= res!2777554 (matchRSpec!3718 (regOne!33747 lt!2447264) s!2326))))

(assert (=> b!6796377 (=> res!2777554 e!4101844)))

(declare-fun b!6796378 () Bool)

(declare-fun c!1263465 () Bool)

(assert (=> b!6796378 (= c!1263465 ((_ is ElementMatch!16617) lt!2447264))))

(declare-fun e!4101842 () Bool)

(declare-fun e!4101848 () Bool)

(assert (=> b!6796378 (= e!4101842 e!4101848)))

(declare-fun b!6796379 () Bool)

(assert (=> b!6796379 (= e!4101845 e!4101843)))

(assert (=> b!6796379 (= c!1263464 ((_ is Star!16617) lt!2447264))))

(declare-fun b!6796380 () Bool)

(assert (=> b!6796380 (= e!4101844 (matchRSpec!3718 (regTwo!33747 lt!2447264) s!2326))))

(declare-fun b!6796381 () Bool)

(declare-fun c!1263466 () Bool)

(assert (=> b!6796381 (= c!1263466 ((_ is Union!16617) lt!2447264))))

(assert (=> b!6796381 (= e!4101848 e!4101845)))

(declare-fun b!6796382 () Bool)

(assert (=> b!6796382 (= e!4101848 (= s!2326 (Cons!66028 (c!1263403 lt!2447264) Nil!66028)))))

(declare-fun b!6796383 () Bool)

(assert (=> b!6796383 (= e!4101847 e!4101842)))

(declare-fun res!2777555 () Bool)

(assert (=> b!6796383 (= res!2777555 (not ((_ is EmptyLang!16617) lt!2447264)))))

(assert (=> b!6796383 (=> (not res!2777555) (not e!4101842))))

(assert (= (and d!2135480 c!1263467) b!6796376))

(assert (= (and d!2135480 (not c!1263467)) b!6796383))

(assert (= (and b!6796383 res!2777555) b!6796378))

(assert (= (and b!6796378 c!1263465) b!6796382))

(assert (= (and b!6796378 (not c!1263465)) b!6796381))

(assert (= (and b!6796381 c!1263466) b!6796377))

(assert (= (and b!6796381 (not c!1263466)) b!6796379))

(assert (= (and b!6796377 (not res!2777554)) b!6796380))

(assert (= (and b!6796379 c!1263464) b!6796373))

(assert (= (and b!6796379 (not c!1263464)) b!6796374))

(assert (= (and b!6796373 (not res!2777556)) b!6796375))

(assert (= (or b!6796375 b!6796374) bm!617334))

(assert (= (or b!6796376 b!6796373) bm!617333))

(assert (=> bm!617333 m!7543012))

(declare-fun m!7543202 () Bool)

(assert (=> bm!617334 m!7543202))

(declare-fun m!7543204 () Bool)

(assert (=> b!6796377 m!7543204))

(declare-fun m!7543206 () Bool)

(assert (=> b!6796380 m!7543206))

(assert (=> b!6796157 d!2135480))

(declare-fun b!6796439 () Bool)

(declare-fun e!4101881 () Bool)

(declare-fun head!13644 (List!66152) C!33504)

(assert (=> b!6796439 (= e!4101881 (= (head!13644 s!2326) (c!1263403 lt!2447264)))))

(declare-fun b!6796440 () Bool)

(declare-fun e!4101882 () Bool)

(declare-fun derivativeStep!5281 (Regex!16617 C!33504) Regex!16617)

(declare-fun tail!12729 (List!66152) List!66152)

(assert (=> b!6796440 (= e!4101882 (matchR!8800 (derivativeStep!5281 lt!2447264 (head!13644 s!2326)) (tail!12729 s!2326)))))

(declare-fun b!6796441 () Bool)

(declare-fun e!4101880 () Bool)

(assert (=> b!6796441 (= e!4101880 (not (= (head!13644 s!2326) (c!1263403 lt!2447264))))))

(declare-fun b!6796442 () Bool)

(declare-fun res!2777585 () Bool)

(assert (=> b!6796442 (=> (not res!2777585) (not e!4101881))))

(declare-fun call!617347 () Bool)

(assert (=> b!6796442 (= res!2777585 (not call!617347))))

(declare-fun bm!617342 () Bool)

(assert (=> bm!617342 (= call!617347 (isEmpty!38402 s!2326))))

(declare-fun b!6796443 () Bool)

(declare-fun e!4101884 () Bool)

(assert (=> b!6796443 (= e!4101884 e!4101880)))

(declare-fun res!2777578 () Bool)

(assert (=> b!6796443 (=> res!2777578 e!4101880)))

(assert (=> b!6796443 (= res!2777578 call!617347)))

(declare-fun b!6796444 () Bool)

(declare-fun e!4101883 () Bool)

(declare-fun e!4101878 () Bool)

(assert (=> b!6796444 (= e!4101883 e!4101878)))

(declare-fun c!1263488 () Bool)

(assert (=> b!6796444 (= c!1263488 ((_ is EmptyLang!16617) lt!2447264))))

(declare-fun b!6796445 () Bool)

(declare-fun lt!2447303 () Bool)

(assert (=> b!6796445 (= e!4101878 (not lt!2447303))))

(declare-fun d!2135488 () Bool)

(assert (=> d!2135488 e!4101883))

(declare-fun c!1263487 () Bool)

(assert (=> d!2135488 (= c!1263487 ((_ is EmptyExpr!16617) lt!2447264))))

(assert (=> d!2135488 (= lt!2447303 e!4101882)))

(declare-fun c!1263486 () Bool)

(assert (=> d!2135488 (= c!1263486 (isEmpty!38402 s!2326))))

(assert (=> d!2135488 (validRegex!8353 lt!2447264)))

(assert (=> d!2135488 (= (matchR!8800 lt!2447264 s!2326) lt!2447303)))

(declare-fun b!6796446 () Bool)

(assert (=> b!6796446 (= e!4101883 (= lt!2447303 call!617347))))

(declare-fun b!6796447 () Bool)

(assert (=> b!6796447 (= e!4101882 (nullable!6595 lt!2447264))))

(declare-fun b!6796448 () Bool)

(declare-fun res!2777581 () Bool)

(assert (=> b!6796448 (=> (not res!2777581) (not e!4101881))))

(assert (=> b!6796448 (= res!2777581 (isEmpty!38402 (tail!12729 s!2326)))))

(declare-fun b!6796449 () Bool)

(declare-fun res!2777582 () Bool)

(declare-fun e!4101879 () Bool)

(assert (=> b!6796449 (=> res!2777582 e!4101879)))

(assert (=> b!6796449 (= res!2777582 e!4101881)))

(declare-fun res!2777580 () Bool)

(assert (=> b!6796449 (=> (not res!2777580) (not e!4101881))))

(assert (=> b!6796449 (= res!2777580 lt!2447303)))

(declare-fun b!6796450 () Bool)

(declare-fun res!2777584 () Bool)

(assert (=> b!6796450 (=> res!2777584 e!4101879)))

(assert (=> b!6796450 (= res!2777584 (not ((_ is ElementMatch!16617) lt!2447264)))))

(assert (=> b!6796450 (= e!4101878 e!4101879)))

(declare-fun b!6796451 () Bool)

(declare-fun res!2777579 () Bool)

(assert (=> b!6796451 (=> res!2777579 e!4101880)))

(assert (=> b!6796451 (= res!2777579 (not (isEmpty!38402 (tail!12729 s!2326))))))

(declare-fun b!6796452 () Bool)

(assert (=> b!6796452 (= e!4101879 e!4101884)))

(declare-fun res!2777583 () Bool)

(assert (=> b!6796452 (=> (not res!2777583) (not e!4101884))))

(assert (=> b!6796452 (= res!2777583 (not lt!2447303))))

(assert (= (and d!2135488 c!1263486) b!6796447))

(assert (= (and d!2135488 (not c!1263486)) b!6796440))

(assert (= (and d!2135488 c!1263487) b!6796446))

(assert (= (and d!2135488 (not c!1263487)) b!6796444))

(assert (= (and b!6796444 c!1263488) b!6796445))

(assert (= (and b!6796444 (not c!1263488)) b!6796450))

(assert (= (and b!6796450 (not res!2777584)) b!6796449))

(assert (= (and b!6796449 res!2777580) b!6796442))

(assert (= (and b!6796442 res!2777585) b!6796448))

(assert (= (and b!6796448 res!2777581) b!6796439))

(assert (= (and b!6796449 (not res!2777582)) b!6796452))

(assert (= (and b!6796452 res!2777583) b!6796443))

(assert (= (and b!6796443 (not res!2777578)) b!6796451))

(assert (= (and b!6796451 (not res!2777579)) b!6796441))

(assert (= (or b!6796446 b!6796442 b!6796443) bm!617342))

(declare-fun m!7543254 () Bool)

(assert (=> b!6796439 m!7543254))

(assert (=> b!6796441 m!7543254))

(declare-fun m!7543256 () Bool)

(assert (=> b!6796448 m!7543256))

(assert (=> b!6796448 m!7543256))

(declare-fun m!7543258 () Bool)

(assert (=> b!6796448 m!7543258))

(assert (=> bm!617342 m!7543012))

(assert (=> d!2135488 m!7543012))

(declare-fun m!7543260 () Bool)

(assert (=> d!2135488 m!7543260))

(declare-fun m!7543262 () Bool)

(assert (=> b!6796447 m!7543262))

(assert (=> b!6796451 m!7543256))

(assert (=> b!6796451 m!7543256))

(assert (=> b!6796451 m!7543258))

(assert (=> b!6796440 m!7543254))

(assert (=> b!6796440 m!7543254))

(declare-fun m!7543264 () Bool)

(assert (=> b!6796440 m!7543264))

(assert (=> b!6796440 m!7543256))

(assert (=> b!6796440 m!7543264))

(assert (=> b!6796440 m!7543256))

(declare-fun m!7543266 () Bool)

(assert (=> b!6796440 m!7543266))

(assert (=> b!6796157 d!2135488))

(declare-fun d!2135512 () Bool)

(assert (=> d!2135512 (= (matchR!8800 lt!2447264 s!2326) (matchRSpec!3718 lt!2447264 s!2326))))

(declare-fun lt!2447310 () Unit!159925)

(declare-fun choose!50641 (Regex!16617 List!66152) Unit!159925)

(assert (=> d!2135512 (= lt!2447310 (choose!50641 lt!2447264 s!2326))))

(assert (=> d!2135512 (validRegex!8353 lt!2447264)))

(assert (=> d!2135512 (= (mainMatchTheorem!3718 lt!2447264 s!2326) lt!2447310)))

(declare-fun bs!1811206 () Bool)

(assert (= bs!1811206 d!2135512))

(assert (=> bs!1811206 m!7543098))

(assert (=> bs!1811206 m!7543096))

(declare-fun m!7543274 () Bool)

(assert (=> bs!1811206 m!7543274))

(assert (=> bs!1811206 m!7543260))

(assert (=> b!6796157 d!2135512))

(declare-fun bs!1811208 () Bool)

(declare-fun b!6796480 () Bool)

(assert (= bs!1811208 (and b!6796480 b!6796374)))

(declare-fun lambda!383145 () Int)

(assert (=> bs!1811208 (not (= lambda!383145 lambda!383138))))

(declare-fun bs!1811209 () Bool)

(assert (= bs!1811209 (and b!6796480 b!6796162)))

(assert (=> bs!1811209 (= lambda!383145 lambda!383113)))

(declare-fun bs!1811210 () Bool)

(assert (= bs!1811210 (and b!6796480 b!6796375)))

(assert (=> bs!1811210 (= (and (= (reg!16946 r!7292) (reg!16946 lt!2447264)) (= r!7292 lt!2447264)) (= lambda!383145 lambda!383137))))

(assert (=> bs!1811209 (not (= lambda!383145 lambda!383114))))

(assert (=> bs!1811209 (not (= lambda!383145 lambda!383112))))

(assert (=> b!6796480 true))

(assert (=> b!6796480 true))

(declare-fun bs!1811211 () Bool)

(declare-fun b!6796479 () Bool)

(assert (= bs!1811211 (and b!6796479 b!6796374)))

(declare-fun lambda!383146 () Int)

(assert (=> bs!1811211 (= (and (= (regOne!33746 r!7292) (regOne!33746 lt!2447264)) (= (regTwo!33746 r!7292) (regTwo!33746 lt!2447264))) (= lambda!383146 lambda!383138))))

(declare-fun bs!1811212 () Bool)

(assert (= bs!1811212 (and b!6796479 b!6796162)))

(assert (=> bs!1811212 (not (= lambda!383146 lambda!383113))))

(declare-fun bs!1811213 () Bool)

(assert (= bs!1811213 (and b!6796479 b!6796375)))

(assert (=> bs!1811213 (not (= lambda!383146 lambda!383137))))

(assert (=> bs!1811212 (= (and (= (regOne!33746 r!7292) (reg!16946 r!7292)) (= (regTwo!33746 r!7292) r!7292)) (= lambda!383146 lambda!383114))))

(assert (=> bs!1811212 (not (= lambda!383146 lambda!383112))))

(declare-fun bs!1811214 () Bool)

(assert (= bs!1811214 (and b!6796479 b!6796480)))

(assert (=> bs!1811214 (not (= lambda!383146 lambda!383145))))

(assert (=> b!6796479 true))

(assert (=> b!6796479 true))

(declare-fun bm!617346 () Bool)

(declare-fun call!617351 () Bool)

(assert (=> bm!617346 (= call!617351 (isEmpty!38402 s!2326))))

(declare-fun b!6796478 () Bool)

(declare-fun res!2777599 () Bool)

(declare-fun e!4101903 () Bool)

(assert (=> b!6796478 (=> res!2777599 e!4101903)))

(assert (=> b!6796478 (= res!2777599 call!617351)))

(declare-fun e!4101900 () Bool)

(assert (=> b!6796478 (= e!4101900 e!4101903)))

(declare-fun call!617352 () Bool)

(assert (=> b!6796479 (= e!4101900 call!617352)))

(assert (=> b!6796480 (= e!4101903 call!617352)))

(declare-fun b!6796481 () Bool)

(declare-fun e!4101904 () Bool)

(assert (=> b!6796481 (= e!4101904 call!617351)))

(declare-fun d!2135516 () Bool)

(declare-fun c!1263499 () Bool)

(assert (=> d!2135516 (= c!1263499 ((_ is EmptyExpr!16617) r!7292))))

(assert (=> d!2135516 (= (matchRSpec!3718 r!7292 s!2326) e!4101904)))

(declare-fun c!1263496 () Bool)

(declare-fun bm!617347 () Bool)

(assert (=> bm!617347 (= call!617352 (Exists!3685 (ite c!1263496 lambda!383145 lambda!383146)))))

(declare-fun b!6796482 () Bool)

(declare-fun e!4101902 () Bool)

(declare-fun e!4101901 () Bool)

(assert (=> b!6796482 (= e!4101902 e!4101901)))

(declare-fun res!2777597 () Bool)

(assert (=> b!6796482 (= res!2777597 (matchRSpec!3718 (regOne!33747 r!7292) s!2326))))

(assert (=> b!6796482 (=> res!2777597 e!4101901)))

(declare-fun b!6796483 () Bool)

(declare-fun c!1263497 () Bool)

(assert (=> b!6796483 (= c!1263497 ((_ is ElementMatch!16617) r!7292))))

(declare-fun e!4101899 () Bool)

(declare-fun e!4101905 () Bool)

(assert (=> b!6796483 (= e!4101899 e!4101905)))

(declare-fun b!6796484 () Bool)

(assert (=> b!6796484 (= e!4101902 e!4101900)))

(assert (=> b!6796484 (= c!1263496 ((_ is Star!16617) r!7292))))

(declare-fun b!6796485 () Bool)

(assert (=> b!6796485 (= e!4101901 (matchRSpec!3718 (regTwo!33747 r!7292) s!2326))))

(declare-fun b!6796486 () Bool)

(declare-fun c!1263498 () Bool)

(assert (=> b!6796486 (= c!1263498 ((_ is Union!16617) r!7292))))

(assert (=> b!6796486 (= e!4101905 e!4101902)))

(declare-fun b!6796487 () Bool)

(assert (=> b!6796487 (= e!4101905 (= s!2326 (Cons!66028 (c!1263403 r!7292) Nil!66028)))))

(declare-fun b!6796488 () Bool)

(assert (=> b!6796488 (= e!4101904 e!4101899)))

(declare-fun res!2777598 () Bool)

(assert (=> b!6796488 (= res!2777598 (not ((_ is EmptyLang!16617) r!7292)))))

(assert (=> b!6796488 (=> (not res!2777598) (not e!4101899))))

(assert (= (and d!2135516 c!1263499) b!6796481))

(assert (= (and d!2135516 (not c!1263499)) b!6796488))

(assert (= (and b!6796488 res!2777598) b!6796483))

(assert (= (and b!6796483 c!1263497) b!6796487))

(assert (= (and b!6796483 (not c!1263497)) b!6796486))

(assert (= (and b!6796486 c!1263498) b!6796482))

(assert (= (and b!6796486 (not c!1263498)) b!6796484))

(assert (= (and b!6796482 (not res!2777597)) b!6796485))

(assert (= (and b!6796484 c!1263496) b!6796478))

(assert (= (and b!6796484 (not c!1263496)) b!6796479))

(assert (= (and b!6796478 (not res!2777599)) b!6796480))

(assert (= (or b!6796480 b!6796479) bm!617347))

(assert (= (or b!6796481 b!6796478) bm!617346))

(assert (=> bm!617346 m!7543012))

(declare-fun m!7543284 () Bool)

(assert (=> bm!617347 m!7543284))

(declare-fun m!7543286 () Bool)

(assert (=> b!6796482 m!7543286))

(declare-fun m!7543288 () Bool)

(assert (=> b!6796485 m!7543288))

(assert (=> b!6796147 d!2135516))

(declare-fun b!6796507 () Bool)

(declare-fun e!4101923 () Bool)

(assert (=> b!6796507 (= e!4101923 (= (head!13644 s!2326) (c!1263403 r!7292)))))

(declare-fun b!6796508 () Bool)

(declare-fun e!4101924 () Bool)

(assert (=> b!6796508 (= e!4101924 (matchR!8800 (derivativeStep!5281 r!7292 (head!13644 s!2326)) (tail!12729 s!2326)))))

(declare-fun b!6796509 () Bool)

(declare-fun e!4101922 () Bool)

(assert (=> b!6796509 (= e!4101922 (not (= (head!13644 s!2326) (c!1263403 r!7292))))))

(declare-fun b!6796510 () Bool)

(declare-fun res!2777617 () Bool)

(assert (=> b!6796510 (=> (not res!2777617) (not e!4101923))))

(declare-fun call!617357 () Bool)

(assert (=> b!6796510 (= res!2777617 (not call!617357))))

(declare-fun bm!617352 () Bool)

(assert (=> bm!617352 (= call!617357 (isEmpty!38402 s!2326))))

(declare-fun b!6796511 () Bool)

(declare-fun e!4101926 () Bool)

(assert (=> b!6796511 (= e!4101926 e!4101922)))

(declare-fun res!2777610 () Bool)

(assert (=> b!6796511 (=> res!2777610 e!4101922)))

(assert (=> b!6796511 (= res!2777610 call!617357)))

(declare-fun b!6796512 () Bool)

(declare-fun e!4101925 () Bool)

(declare-fun e!4101920 () Bool)

(assert (=> b!6796512 (= e!4101925 e!4101920)))

(declare-fun c!1263506 () Bool)

(assert (=> b!6796512 (= c!1263506 ((_ is EmptyLang!16617) r!7292))))

(declare-fun b!6796513 () Bool)

(declare-fun lt!2447312 () Bool)

(assert (=> b!6796513 (= e!4101920 (not lt!2447312))))

(declare-fun d!2135522 () Bool)

(assert (=> d!2135522 e!4101925))

(declare-fun c!1263505 () Bool)

(assert (=> d!2135522 (= c!1263505 ((_ is EmptyExpr!16617) r!7292))))

(assert (=> d!2135522 (= lt!2447312 e!4101924)))

(declare-fun c!1263504 () Bool)

(assert (=> d!2135522 (= c!1263504 (isEmpty!38402 s!2326))))

(assert (=> d!2135522 (validRegex!8353 r!7292)))

(assert (=> d!2135522 (= (matchR!8800 r!7292 s!2326) lt!2447312)))

(declare-fun b!6796514 () Bool)

(assert (=> b!6796514 (= e!4101925 (= lt!2447312 call!617357))))

(declare-fun b!6796515 () Bool)

(assert (=> b!6796515 (= e!4101924 (nullable!6595 r!7292))))

(declare-fun b!6796516 () Bool)

(declare-fun res!2777613 () Bool)

(assert (=> b!6796516 (=> (not res!2777613) (not e!4101923))))

(assert (=> b!6796516 (= res!2777613 (isEmpty!38402 (tail!12729 s!2326)))))

(declare-fun b!6796517 () Bool)

(declare-fun res!2777614 () Bool)

(declare-fun e!4101921 () Bool)

(assert (=> b!6796517 (=> res!2777614 e!4101921)))

(assert (=> b!6796517 (= res!2777614 e!4101923)))

(declare-fun res!2777612 () Bool)

(assert (=> b!6796517 (=> (not res!2777612) (not e!4101923))))

(assert (=> b!6796517 (= res!2777612 lt!2447312)))

(declare-fun b!6796518 () Bool)

(declare-fun res!2777616 () Bool)

(assert (=> b!6796518 (=> res!2777616 e!4101921)))

(assert (=> b!6796518 (= res!2777616 (not ((_ is ElementMatch!16617) r!7292)))))

(assert (=> b!6796518 (= e!4101920 e!4101921)))

(declare-fun b!6796519 () Bool)

(declare-fun res!2777611 () Bool)

(assert (=> b!6796519 (=> res!2777611 e!4101922)))

(assert (=> b!6796519 (= res!2777611 (not (isEmpty!38402 (tail!12729 s!2326))))))

(declare-fun b!6796520 () Bool)

(assert (=> b!6796520 (= e!4101921 e!4101926)))

(declare-fun res!2777615 () Bool)

(assert (=> b!6796520 (=> (not res!2777615) (not e!4101926))))

(assert (=> b!6796520 (= res!2777615 (not lt!2447312))))

(assert (= (and d!2135522 c!1263504) b!6796515))

(assert (= (and d!2135522 (not c!1263504)) b!6796508))

(assert (= (and d!2135522 c!1263505) b!6796514))

(assert (= (and d!2135522 (not c!1263505)) b!6796512))

(assert (= (and b!6796512 c!1263506) b!6796513))

(assert (= (and b!6796512 (not c!1263506)) b!6796518))

(assert (= (and b!6796518 (not res!2777616)) b!6796517))

(assert (= (and b!6796517 res!2777612) b!6796510))

(assert (= (and b!6796510 res!2777617) b!6796516))

(assert (= (and b!6796516 res!2777613) b!6796507))

(assert (= (and b!6796517 (not res!2777614)) b!6796520))

(assert (= (and b!6796520 res!2777615) b!6796511))

(assert (= (and b!6796511 (not res!2777610)) b!6796519))

(assert (= (and b!6796519 (not res!2777611)) b!6796509))

(assert (= (or b!6796514 b!6796510 b!6796511) bm!617352))

(assert (=> b!6796507 m!7543254))

(assert (=> b!6796509 m!7543254))

(assert (=> b!6796516 m!7543256))

(assert (=> b!6796516 m!7543256))

(assert (=> b!6796516 m!7543258))

(assert (=> bm!617352 m!7543012))

(assert (=> d!2135522 m!7543012))

(assert (=> d!2135522 m!7543008))

(declare-fun m!7543290 () Bool)

(assert (=> b!6796515 m!7543290))

(assert (=> b!6796519 m!7543256))

(assert (=> b!6796519 m!7543256))

(assert (=> b!6796519 m!7543258))

(assert (=> b!6796508 m!7543254))

(assert (=> b!6796508 m!7543254))

(declare-fun m!7543292 () Bool)

(assert (=> b!6796508 m!7543292))

(assert (=> b!6796508 m!7543256))

(assert (=> b!6796508 m!7543292))

(assert (=> b!6796508 m!7543256))

(declare-fun m!7543294 () Bool)

(assert (=> b!6796508 m!7543294))

(assert (=> b!6796147 d!2135522))

(declare-fun d!2135524 () Bool)

(assert (=> d!2135524 (= (matchR!8800 r!7292 s!2326) (matchRSpec!3718 r!7292 s!2326))))

(declare-fun lt!2447313 () Unit!159925)

(assert (=> d!2135524 (= lt!2447313 (choose!50641 r!7292 s!2326))))

(assert (=> d!2135524 (validRegex!8353 r!7292)))

(assert (=> d!2135524 (= (mainMatchTheorem!3718 r!7292 s!2326) lt!2447313)))

(declare-fun bs!1811215 () Bool)

(assert (= bs!1811215 d!2135524))

(assert (=> bs!1811215 m!7543048))

(assert (=> bs!1811215 m!7543046))

(declare-fun m!7543296 () Bool)

(assert (=> bs!1811215 m!7543296))

(assert (=> bs!1811215 m!7543008))

(assert (=> b!6796147 d!2135524))

(declare-fun d!2135526 () Bool)

(assert (=> d!2135526 (= (isEmpty!38401 (t!379878 zl!343)) ((_ is Nil!66027) (t!379878 zl!343)))))

(assert (=> b!6796148 d!2135526))

(declare-fun b!6796521 () Bool)

(declare-fun c!1263508 () Bool)

(assert (=> b!6796521 (= c!1263508 ((_ is Star!16617) (reg!16946 r!7292)))))

(declare-fun e!4101932 () (InoxSet Context!12002))

(declare-fun e!4101931 () (InoxSet Context!12002))

(assert (=> b!6796521 (= e!4101932 e!4101931)))

(declare-fun b!6796522 () Bool)

(declare-fun e!4101930 () (InoxSet Context!12002))

(declare-fun call!617362 () (InoxSet Context!12002))

(declare-fun call!617360 () (InoxSet Context!12002))

(assert (=> b!6796522 (= e!4101930 ((_ map or) call!617362 call!617360))))

(declare-fun b!6796523 () Bool)

(declare-fun c!1263509 () Bool)

(declare-fun e!4101927 () Bool)

(assert (=> b!6796523 (= c!1263509 e!4101927)))

(declare-fun res!2777618 () Bool)

(assert (=> b!6796523 (=> (not res!2777618) (not e!4101927))))

(assert (=> b!6796523 (= res!2777618 ((_ is Concat!25462) (reg!16946 r!7292)))))

(declare-fun e!4101929 () (InoxSet Context!12002))

(assert (=> b!6796523 (= e!4101929 e!4101930)))

(declare-fun b!6796524 () Bool)

(assert (=> b!6796524 (= e!4101927 (nullable!6595 (regOne!33746 (reg!16946 r!7292))))))

(declare-fun b!6796525 () Bool)

(declare-fun e!4101928 () (InoxSet Context!12002))

(assert (=> b!6796525 (= e!4101928 (store ((as const (Array Context!12002 Bool)) false) lt!2447275 true))))

(declare-fun b!6796526 () Bool)

(assert (=> b!6796526 (= e!4101930 e!4101932)))

(declare-fun c!1263511 () Bool)

(assert (=> b!6796526 (= c!1263511 ((_ is Concat!25462) (reg!16946 r!7292)))))

(declare-fun bm!617355 () Bool)

(declare-fun call!617365 () List!66150)

(assert (=> bm!617355 (= call!617365 ($colon$colon!2425 (exprs!6501 lt!2447275) (ite (or c!1263509 c!1263511) (regTwo!33746 (reg!16946 r!7292)) (reg!16946 r!7292))))))

(declare-fun d!2135528 () Bool)

(declare-fun c!1263507 () Bool)

(assert (=> d!2135528 (= c!1263507 (and ((_ is ElementMatch!16617) (reg!16946 r!7292)) (= (c!1263403 (reg!16946 r!7292)) (h!72476 s!2326))))))

(assert (=> d!2135528 (= (derivationStepZipperDown!1845 (reg!16946 r!7292) lt!2447275 (h!72476 s!2326)) e!4101928)))

(declare-fun bm!617356 () Bool)

(declare-fun call!617363 () (InoxSet Context!12002))

(assert (=> bm!617356 (= call!617360 call!617363)))

(declare-fun b!6796527 () Bool)

(assert (=> b!6796527 (= e!4101931 ((as const (Array Context!12002 Bool)) false))))

(declare-fun b!6796528 () Bool)

(assert (=> b!6796528 (= e!4101928 e!4101929)))

(declare-fun c!1263510 () Bool)

(assert (=> b!6796528 (= c!1263510 ((_ is Union!16617) (reg!16946 r!7292)))))

(declare-fun bm!617357 () Bool)

(declare-fun call!617361 () List!66150)

(assert (=> bm!617357 (= call!617363 (derivationStepZipperDown!1845 (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292))))) (ite (or c!1263510 c!1263509) lt!2447275 (Context!12003 call!617361)) (h!72476 s!2326)))))

(declare-fun b!6796529 () Bool)

(assert (=> b!6796529 (= e!4101929 ((_ map or) call!617362 call!617363))))

(declare-fun b!6796530 () Bool)

(declare-fun call!617364 () (InoxSet Context!12002))

(assert (=> b!6796530 (= e!4101932 call!617364)))

(declare-fun bm!617358 () Bool)

(assert (=> bm!617358 (= call!617364 call!617360)))

(declare-fun bm!617359 () Bool)

(assert (=> bm!617359 (= call!617362 (derivationStepZipperDown!1845 (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292))) (ite c!1263510 lt!2447275 (Context!12003 call!617365)) (h!72476 s!2326)))))

(declare-fun b!6796531 () Bool)

(assert (=> b!6796531 (= e!4101931 call!617364)))

(declare-fun bm!617360 () Bool)

(assert (=> bm!617360 (= call!617361 call!617365)))

(assert (= (and d!2135528 c!1263507) b!6796525))

(assert (= (and d!2135528 (not c!1263507)) b!6796528))

(assert (= (and b!6796528 c!1263510) b!6796529))

(assert (= (and b!6796528 (not c!1263510)) b!6796523))

(assert (= (and b!6796523 res!2777618) b!6796524))

(assert (= (and b!6796523 c!1263509) b!6796522))

(assert (= (and b!6796523 (not c!1263509)) b!6796526))

(assert (= (and b!6796526 c!1263511) b!6796530))

(assert (= (and b!6796526 (not c!1263511)) b!6796521))

(assert (= (and b!6796521 c!1263508) b!6796531))

(assert (= (and b!6796521 (not c!1263508)) b!6796527))

(assert (= (or b!6796530 b!6796531) bm!617360))

(assert (= (or b!6796530 b!6796531) bm!617358))

(assert (= (or b!6796522 bm!617360) bm!617355))

(assert (= (or b!6796522 bm!617358) bm!617356))

(assert (= (or b!6796529 bm!617356) bm!617357))

(assert (= (or b!6796529 b!6796522) bm!617359))

(declare-fun m!7543298 () Bool)

(assert (=> b!6796524 m!7543298))

(declare-fun m!7543300 () Bool)

(assert (=> bm!617357 m!7543300))

(declare-fun m!7543302 () Bool)

(assert (=> bm!617359 m!7543302))

(assert (=> b!6796525 m!7543058))

(declare-fun m!7543304 () Bool)

(assert (=> bm!617355 m!7543304))

(assert (=> b!6796138 d!2135528))

(declare-fun d!2135530 () Bool)

(assert (=> d!2135530 (= (flatMap!2098 lt!2447274 lambda!383115) (choose!50636 lt!2447274 lambda!383115))))

(declare-fun bs!1811216 () Bool)

(assert (= bs!1811216 d!2135530))

(declare-fun m!7543310 () Bool)

(assert (=> bs!1811216 m!7543310))

(assert (=> b!6796138 d!2135530))

(declare-fun e!4101941 () (InoxSet Context!12002))

(declare-fun b!6796541 () Bool)

(declare-fun call!617369 () (InoxSet Context!12002))

(assert (=> b!6796541 (= e!4101941 ((_ map or) call!617369 (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 lt!2447263))) (h!72476 s!2326))))))

(declare-fun b!6796542 () Bool)

(declare-fun e!4101942 () (InoxSet Context!12002))

(assert (=> b!6796542 (= e!4101942 call!617369)))

(declare-fun bm!617364 () Bool)

(assert (=> bm!617364 (= call!617369 (derivationStepZipperDown!1845 (h!72474 (exprs!6501 lt!2447263)) (Context!12003 (t!379877 (exprs!6501 lt!2447263))) (h!72476 s!2326)))))

(declare-fun b!6796543 () Bool)

(assert (=> b!6796543 (= e!4101942 ((as const (Array Context!12002 Bool)) false))))

(declare-fun d!2135532 () Bool)

(declare-fun c!1263515 () Bool)

(declare-fun e!4101940 () Bool)

(assert (=> d!2135532 (= c!1263515 e!4101940)))

(declare-fun res!2777624 () Bool)

(assert (=> d!2135532 (=> (not res!2777624) (not e!4101940))))

(assert (=> d!2135532 (= res!2777624 ((_ is Cons!66026) (exprs!6501 lt!2447263)))))

(assert (=> d!2135532 (= (derivationStepZipperUp!1771 lt!2447263 (h!72476 s!2326)) e!4101941)))

(declare-fun b!6796544 () Bool)

(assert (=> b!6796544 (= e!4101941 e!4101942)))

(declare-fun c!1263514 () Bool)

(assert (=> b!6796544 (= c!1263514 ((_ is Cons!66026) (exprs!6501 lt!2447263)))))

(declare-fun b!6796545 () Bool)

(assert (=> b!6796545 (= e!4101940 (nullable!6595 (h!72474 (exprs!6501 lt!2447263))))))

(assert (= (and d!2135532 res!2777624) b!6796545))

(assert (= (and d!2135532 c!1263515) b!6796541))

(assert (= (and d!2135532 (not c!1263515)) b!6796544))

(assert (= (and b!6796544 c!1263514) b!6796542))

(assert (= (and b!6796544 (not c!1263514)) b!6796543))

(assert (= (or b!6796541 b!6796542) bm!617364))

(declare-fun m!7543314 () Bool)

(assert (=> b!6796541 m!7543314))

(declare-fun m!7543316 () Bool)

(assert (=> bm!617364 m!7543316))

(declare-fun m!7543318 () Bool)

(assert (=> b!6796545 m!7543318))

(assert (=> b!6796138 d!2135532))

(declare-fun d!2135536 () Bool)

(assert (=> d!2135536 (= (flatMap!2098 lt!2447274 lambda!383115) (dynLambda!26359 lambda!383115 lt!2447263))))

(declare-fun lt!2447314 () Unit!159925)

(assert (=> d!2135536 (= lt!2447314 (choose!50637 lt!2447274 lt!2447263 lambda!383115))))

(assert (=> d!2135536 (= lt!2447274 (store ((as const (Array Context!12002 Bool)) false) lt!2447263 true))))

(assert (=> d!2135536 (= (lemmaFlatMapOnSingletonSet!1624 lt!2447274 lt!2447263 lambda!383115) lt!2447314)))

(declare-fun b_lambda!256091 () Bool)

(assert (=> (not b_lambda!256091) (not d!2135536)))

(declare-fun bs!1811217 () Bool)

(assert (= bs!1811217 d!2135536))

(assert (=> bs!1811217 m!7543114))

(declare-fun m!7543320 () Bool)

(assert (=> bs!1811217 m!7543320))

(declare-fun m!7543322 () Bool)

(assert (=> bs!1811217 m!7543322))

(assert (=> bs!1811217 m!7543112))

(assert (=> b!6796138 d!2135536))

(declare-fun bs!1811218 () Bool)

(declare-fun d!2135538 () Bool)

(assert (= bs!1811218 (and d!2135538 b!6796140)))

(declare-fun lambda!383151 () Int)

(assert (=> bs!1811218 (= lambda!383151 lambda!383117)))

(declare-fun bs!1811219 () Bool)

(assert (= bs!1811219 (and d!2135538 d!2135474)))

(assert (=> bs!1811219 (= lambda!383151 lambda!383130)))

(declare-fun b!6796589 () Bool)

(declare-fun e!4101971 () Regex!16617)

(assert (=> b!6796589 (= e!4101971 EmptyLang!16617)))

(declare-fun b!6796590 () Bool)

(declare-fun e!4101975 () Bool)

(declare-fun e!4101974 () Bool)

(assert (=> b!6796590 (= e!4101975 e!4101974)))

(declare-fun c!1263534 () Bool)

(declare-fun isEmpty!38403 (List!66150) Bool)

(assert (=> b!6796590 (= c!1263534 (isEmpty!38403 (unfocusZipperList!2038 zl!343)))))

(declare-fun b!6796591 () Bool)

(declare-fun e!4101970 () Bool)

(assert (=> b!6796591 (= e!4101974 e!4101970)))

(declare-fun c!1263532 () Bool)

(declare-fun tail!12730 (List!66150) List!66150)

(assert (=> b!6796591 (= c!1263532 (isEmpty!38403 (tail!12730 (unfocusZipperList!2038 zl!343))))))

(declare-fun b!6796592 () Bool)

(declare-fun lt!2447322 () Regex!16617)

(declare-fun isUnion!1412 (Regex!16617) Bool)

(assert (=> b!6796592 (= e!4101970 (isUnion!1412 lt!2447322))))

(declare-fun b!6796593 () Bool)

(declare-fun e!4101973 () Bool)

(assert (=> b!6796593 (= e!4101973 (isEmpty!38403 (t!379877 (unfocusZipperList!2038 zl!343))))))

(declare-fun b!6796594 () Bool)

(declare-fun isEmptyLang!1982 (Regex!16617) Bool)

(assert (=> b!6796594 (= e!4101974 (isEmptyLang!1982 lt!2447322))))

(assert (=> d!2135538 e!4101975))

(declare-fun res!2777637 () Bool)

(assert (=> d!2135538 (=> (not res!2777637) (not e!4101975))))

(assert (=> d!2135538 (= res!2777637 (validRegex!8353 lt!2447322))))

(declare-fun e!4101972 () Regex!16617)

(assert (=> d!2135538 (= lt!2447322 e!4101972)))

(declare-fun c!1263535 () Bool)

(assert (=> d!2135538 (= c!1263535 e!4101973)))

(declare-fun res!2777636 () Bool)

(assert (=> d!2135538 (=> (not res!2777636) (not e!4101973))))

(assert (=> d!2135538 (= res!2777636 ((_ is Cons!66026) (unfocusZipperList!2038 zl!343)))))

(assert (=> d!2135538 (forall!15809 (unfocusZipperList!2038 zl!343) lambda!383151)))

(assert (=> d!2135538 (= (generalisedUnion!2461 (unfocusZipperList!2038 zl!343)) lt!2447322)))

(declare-fun b!6796595 () Bool)

(assert (=> b!6796595 (= e!4101972 (h!72474 (unfocusZipperList!2038 zl!343)))))

(declare-fun b!6796596 () Bool)

(declare-fun head!13645 (List!66150) Regex!16617)

(assert (=> b!6796596 (= e!4101970 (= lt!2447322 (head!13645 (unfocusZipperList!2038 zl!343))))))

(declare-fun b!6796597 () Bool)

(assert (=> b!6796597 (= e!4101971 (Union!16617 (h!72474 (unfocusZipperList!2038 zl!343)) (generalisedUnion!2461 (t!379877 (unfocusZipperList!2038 zl!343)))))))

(declare-fun b!6796598 () Bool)

(assert (=> b!6796598 (= e!4101972 e!4101971)))

(declare-fun c!1263533 () Bool)

(assert (=> b!6796598 (= c!1263533 ((_ is Cons!66026) (unfocusZipperList!2038 zl!343)))))

(assert (= (and d!2135538 res!2777636) b!6796593))

(assert (= (and d!2135538 c!1263535) b!6796595))

(assert (= (and d!2135538 (not c!1263535)) b!6796598))

(assert (= (and b!6796598 c!1263533) b!6796597))

(assert (= (and b!6796598 (not c!1263533)) b!6796589))

(assert (= (and d!2135538 res!2777637) b!6796590))

(assert (= (and b!6796590 c!1263534) b!6796594))

(assert (= (and b!6796590 (not c!1263534)) b!6796591))

(assert (= (and b!6796591 c!1263532) b!6796596))

(assert (= (and b!6796591 (not c!1263532)) b!6796592))

(declare-fun m!7543330 () Bool)

(assert (=> d!2135538 m!7543330))

(assert (=> d!2135538 m!7543120))

(declare-fun m!7543332 () Bool)

(assert (=> d!2135538 m!7543332))

(declare-fun m!7543334 () Bool)

(assert (=> b!6796593 m!7543334))

(declare-fun m!7543336 () Bool)

(assert (=> b!6796597 m!7543336))

(assert (=> b!6796596 m!7543120))

(declare-fun m!7543338 () Bool)

(assert (=> b!6796596 m!7543338))

(assert (=> b!6796590 m!7543120))

(declare-fun m!7543340 () Bool)

(assert (=> b!6796590 m!7543340))

(assert (=> b!6796591 m!7543120))

(declare-fun m!7543342 () Bool)

(assert (=> b!6796591 m!7543342))

(assert (=> b!6796591 m!7543342))

(declare-fun m!7543344 () Bool)

(assert (=> b!6796591 m!7543344))

(declare-fun m!7543346 () Bool)

(assert (=> b!6796594 m!7543346))

(declare-fun m!7543348 () Bool)

(assert (=> b!6796592 m!7543348))

(assert (=> b!6796139 d!2135538))

(declare-fun bs!1811223 () Bool)

(declare-fun d!2135542 () Bool)

(assert (= bs!1811223 (and d!2135542 b!6796140)))

(declare-fun lambda!383157 () Int)

(assert (=> bs!1811223 (= lambda!383157 lambda!383117)))

(declare-fun bs!1811224 () Bool)

(assert (= bs!1811224 (and d!2135542 d!2135474)))

(assert (=> bs!1811224 (= lambda!383157 lambda!383130)))

(declare-fun bs!1811225 () Bool)

(assert (= bs!1811225 (and d!2135542 d!2135538)))

(assert (=> bs!1811225 (= lambda!383157 lambda!383151)))

(declare-fun lt!2447328 () List!66150)

(assert (=> d!2135542 (forall!15809 lt!2447328 lambda!383157)))

(declare-fun e!4101986 () List!66150)

(assert (=> d!2135542 (= lt!2447328 e!4101986)))

(declare-fun c!1263544 () Bool)

(assert (=> d!2135542 (= c!1263544 ((_ is Cons!66027) zl!343))))

(assert (=> d!2135542 (= (unfocusZipperList!2038 zl!343) lt!2447328)))

(declare-fun b!6796617 () Bool)

(assert (=> b!6796617 (= e!4101986 (Cons!66026 (generalisedConcat!2214 (exprs!6501 (h!72475 zl!343))) (unfocusZipperList!2038 (t!379878 zl!343))))))

(declare-fun b!6796618 () Bool)

(assert (=> b!6796618 (= e!4101986 Nil!66026)))

(assert (= (and d!2135542 c!1263544) b!6796617))

(assert (= (and d!2135542 (not c!1263544)) b!6796618))

(declare-fun m!7543370 () Bool)

(assert (=> d!2135542 m!7543370))

(assert (=> b!6796617 m!7543082))

(declare-fun m!7543372 () Bool)

(assert (=> b!6796617 m!7543372))

(assert (=> b!6796139 d!2135542))

(declare-fun d!2135546 () Bool)

(declare-fun lt!2447330 () Regex!16617)

(assert (=> d!2135546 (validRegex!8353 lt!2447330)))

(assert (=> d!2135546 (= lt!2447330 (generalisedUnion!2461 (unfocusZipperList!2038 (Cons!66027 lt!2447275 Nil!66027))))))

(assert (=> d!2135546 (= (unfocusZipper!2359 (Cons!66027 lt!2447275 Nil!66027)) lt!2447330)))

(declare-fun bs!1811226 () Bool)

(assert (= bs!1811226 d!2135546))

(declare-fun m!7543374 () Bool)

(assert (=> bs!1811226 m!7543374))

(declare-fun m!7543376 () Bool)

(assert (=> bs!1811226 m!7543376))

(assert (=> bs!1811226 m!7543376))

(declare-fun m!7543378 () Bool)

(assert (=> bs!1811226 m!7543378))

(assert (=> b!6796158 d!2135546))

(declare-fun d!2135548 () Bool)

(declare-fun c!1263548 () Bool)

(assert (=> d!2135548 (= c!1263548 (isEmpty!38402 s!2326))))

(declare-fun e!4101990 () Bool)

(assert (=> d!2135548 (= (matchZipper!2603 lt!2447274 s!2326) e!4101990)))

(declare-fun b!6796625 () Bool)

(declare-fun nullableZipper!2323 ((InoxSet Context!12002)) Bool)

(assert (=> b!6796625 (= e!4101990 (nullableZipper!2323 lt!2447274))))

(declare-fun b!6796626 () Bool)

(assert (=> b!6796626 (= e!4101990 (matchZipper!2603 (derivationStepZipper!2561 lt!2447274 (head!13644 s!2326)) (tail!12729 s!2326)))))

(assert (= (and d!2135548 c!1263548) b!6796625))

(assert (= (and d!2135548 (not c!1263548)) b!6796626))

(assert (=> d!2135548 m!7543012))

(declare-fun m!7543394 () Bool)

(assert (=> b!6796625 m!7543394))

(assert (=> b!6796626 m!7543254))

(assert (=> b!6796626 m!7543254))

(declare-fun m!7543396 () Bool)

(assert (=> b!6796626 m!7543396))

(assert (=> b!6796626 m!7543256))

(assert (=> b!6796626 m!7543396))

(assert (=> b!6796626 m!7543256))

(declare-fun m!7543398 () Bool)

(assert (=> b!6796626 m!7543398))

(assert (=> b!6796159 d!2135548))

(declare-fun d!2135558 () Bool)

(declare-fun c!1263550 () Bool)

(assert (=> d!2135558 (= c!1263550 (isEmpty!38402 (t!379879 s!2326)))))

(declare-fun e!4101991 () Bool)

(assert (=> d!2135558 (= (matchZipper!2603 (derivationStepZipper!2561 lt!2447274 (h!72476 s!2326)) (t!379879 s!2326)) e!4101991)))

(declare-fun b!6796627 () Bool)

(assert (=> b!6796627 (= e!4101991 (nullableZipper!2323 (derivationStepZipper!2561 lt!2447274 (h!72476 s!2326))))))

(declare-fun b!6796628 () Bool)

(assert (=> b!6796628 (= e!4101991 (matchZipper!2603 (derivationStepZipper!2561 (derivationStepZipper!2561 lt!2447274 (h!72476 s!2326)) (head!13644 (t!379879 s!2326))) (tail!12729 (t!379879 s!2326))))))

(assert (= (and d!2135558 c!1263550) b!6796627))

(assert (= (and d!2135558 (not c!1263550)) b!6796628))

(declare-fun m!7543400 () Bool)

(assert (=> d!2135558 m!7543400))

(assert (=> b!6796627 m!7543092))

(declare-fun m!7543402 () Bool)

(assert (=> b!6796627 m!7543402))

(declare-fun m!7543404 () Bool)

(assert (=> b!6796628 m!7543404))

(assert (=> b!6796628 m!7543092))

(assert (=> b!6796628 m!7543404))

(declare-fun m!7543406 () Bool)

(assert (=> b!6796628 m!7543406))

(declare-fun m!7543408 () Bool)

(assert (=> b!6796628 m!7543408))

(assert (=> b!6796628 m!7543406))

(assert (=> b!6796628 m!7543408))

(declare-fun m!7543410 () Bool)

(assert (=> b!6796628 m!7543410))

(assert (=> b!6796159 d!2135558))

(declare-fun bs!1811239 () Bool)

(declare-fun d!2135560 () Bool)

(assert (= bs!1811239 (and d!2135560 b!6796135)))

(declare-fun lambda!383160 () Int)

(assert (=> bs!1811239 (= lambda!383160 lambda!383115)))

(declare-fun bs!1811240 () Bool)

(assert (= bs!1811240 (and d!2135560 d!2135470)))

(assert (=> bs!1811240 (= lambda!383160 lambda!383127)))

(assert (=> d!2135560 true))

(assert (=> d!2135560 (= (derivationStepZipper!2561 lt!2447274 (h!72476 s!2326)) (flatMap!2098 lt!2447274 lambda!383160))))

(declare-fun bs!1811241 () Bool)

(assert (= bs!1811241 d!2135560))

(declare-fun m!7543412 () Bool)

(assert (=> bs!1811241 m!7543412))

(assert (=> b!6796159 d!2135560))

(declare-fun d!2135562 () Bool)

(assert (=> d!2135562 (= (flatMap!2098 lt!2447259 lambda!383115) (choose!50636 lt!2447259 lambda!383115))))

(declare-fun bs!1811242 () Bool)

(assert (= bs!1811242 d!2135562))

(declare-fun m!7543414 () Bool)

(assert (=> bs!1811242 m!7543414))

(assert (=> b!6796149 d!2135562))

(declare-fun bs!1811243 () Bool)

(declare-fun d!2135564 () Bool)

(assert (= bs!1811243 (and d!2135564 b!6796135)))

(declare-fun lambda!383162 () Int)

(assert (=> bs!1811243 (= lambda!383162 lambda!383115)))

(declare-fun bs!1811244 () Bool)

(assert (= bs!1811244 (and d!2135564 d!2135470)))

(assert (=> bs!1811244 (= lambda!383162 lambda!383127)))

(declare-fun bs!1811245 () Bool)

(assert (= bs!1811245 (and d!2135564 d!2135560)))

(assert (=> bs!1811245 (= lambda!383162 lambda!383160)))

(assert (=> d!2135564 true))

(assert (=> d!2135564 (= (derivationStepZipper!2561 lt!2447279 (h!72476 s!2326)) (flatMap!2098 lt!2447279 lambda!383162))))

(declare-fun bs!1811246 () Bool)

(assert (= bs!1811246 d!2135564))

(declare-fun m!7543416 () Bool)

(assert (=> bs!1811246 m!7543416))

(assert (=> b!6796149 d!2135564))

(declare-fun b!6796629 () Bool)

(declare-fun call!617370 () (InoxSet Context!12002))

(declare-fun e!4101993 () (InoxSet Context!12002))

(assert (=> b!6796629 (= e!4101993 ((_ map or) call!617370 (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 lt!2447273))) (h!72476 s!2326))))))

(declare-fun b!6796630 () Bool)

(declare-fun e!4101994 () (InoxSet Context!12002))

(assert (=> b!6796630 (= e!4101994 call!617370)))

(declare-fun bm!617365 () Bool)

(assert (=> bm!617365 (= call!617370 (derivationStepZipperDown!1845 (h!72474 (exprs!6501 lt!2447273)) (Context!12003 (t!379877 (exprs!6501 lt!2447273))) (h!72476 s!2326)))))

(declare-fun b!6796631 () Bool)

(assert (=> b!6796631 (= e!4101994 ((as const (Array Context!12002 Bool)) false))))

(declare-fun d!2135566 () Bool)

(declare-fun c!1263552 () Bool)

(declare-fun e!4101992 () Bool)

(assert (=> d!2135566 (= c!1263552 e!4101992)))

(declare-fun res!2777640 () Bool)

(assert (=> d!2135566 (=> (not res!2777640) (not e!4101992))))

(assert (=> d!2135566 (= res!2777640 ((_ is Cons!66026) (exprs!6501 lt!2447273)))))

(assert (=> d!2135566 (= (derivationStepZipperUp!1771 lt!2447273 (h!72476 s!2326)) e!4101993)))

(declare-fun b!6796632 () Bool)

(assert (=> b!6796632 (= e!4101993 e!4101994)))

(declare-fun c!1263551 () Bool)

(assert (=> b!6796632 (= c!1263551 ((_ is Cons!66026) (exprs!6501 lt!2447273)))))

(declare-fun b!6796633 () Bool)

(assert (=> b!6796633 (= e!4101992 (nullable!6595 (h!72474 (exprs!6501 lt!2447273))))))

(assert (= (and d!2135566 res!2777640) b!6796633))

(assert (= (and d!2135566 c!1263552) b!6796629))

(assert (= (and d!2135566 (not c!1263552)) b!6796632))

(assert (= (and b!6796632 c!1263551) b!6796630))

(assert (= (and b!6796632 (not c!1263551)) b!6796631))

(assert (= (or b!6796629 b!6796630) bm!617365))

(declare-fun m!7543418 () Bool)

(assert (=> b!6796629 m!7543418))

(declare-fun m!7543420 () Bool)

(assert (=> bm!617365 m!7543420))

(declare-fun m!7543422 () Bool)

(assert (=> b!6796633 m!7543422))

(assert (=> b!6796149 d!2135566))

(declare-fun d!2135568 () Bool)

(assert (=> d!2135568 (= (flatMap!2098 lt!2447279 lambda!383115) (dynLambda!26359 lambda!383115 lt!2447275))))

(declare-fun lt!2447334 () Unit!159925)

(assert (=> d!2135568 (= lt!2447334 (choose!50637 lt!2447279 lt!2447275 lambda!383115))))

(assert (=> d!2135568 (= lt!2447279 (store ((as const (Array Context!12002 Bool)) false) lt!2447275 true))))

(assert (=> d!2135568 (= (lemmaFlatMapOnSingletonSet!1624 lt!2447279 lt!2447275 lambda!383115) lt!2447334)))

(declare-fun b_lambda!256093 () Bool)

(assert (=> (not b_lambda!256093) (not d!2135568)))

(declare-fun bs!1811247 () Bool)

(assert (= bs!1811247 d!2135568))

(assert (=> bs!1811247 m!7543060))

(declare-fun m!7543424 () Bool)

(assert (=> bs!1811247 m!7543424))

(declare-fun m!7543426 () Bool)

(assert (=> bs!1811247 m!7543426))

(assert (=> bs!1811247 m!7543058))

(assert (=> b!6796149 d!2135568))

(declare-fun call!617371 () (InoxSet Context!12002))

(declare-fun e!4101996 () (InoxSet Context!12002))

(declare-fun b!6796636 () Bool)

(assert (=> b!6796636 (= e!4101996 ((_ map or) call!617371 (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 lt!2447275))) (h!72476 s!2326))))))

(declare-fun b!6796637 () Bool)

(declare-fun e!4101997 () (InoxSet Context!12002))

(assert (=> b!6796637 (= e!4101997 call!617371)))

(declare-fun bm!617366 () Bool)

(assert (=> bm!617366 (= call!617371 (derivationStepZipperDown!1845 (h!72474 (exprs!6501 lt!2447275)) (Context!12003 (t!379877 (exprs!6501 lt!2447275))) (h!72476 s!2326)))))

(declare-fun b!6796638 () Bool)

(assert (=> b!6796638 (= e!4101997 ((as const (Array Context!12002 Bool)) false))))

(declare-fun d!2135570 () Bool)

(declare-fun c!1263554 () Bool)

(declare-fun e!4101995 () Bool)

(assert (=> d!2135570 (= c!1263554 e!4101995)))

(declare-fun res!2777641 () Bool)

(assert (=> d!2135570 (=> (not res!2777641) (not e!4101995))))

(assert (=> d!2135570 (= res!2777641 ((_ is Cons!66026) (exprs!6501 lt!2447275)))))

(assert (=> d!2135570 (= (derivationStepZipperUp!1771 lt!2447275 (h!72476 s!2326)) e!4101996)))

(declare-fun b!6796639 () Bool)

(assert (=> b!6796639 (= e!4101996 e!4101997)))

(declare-fun c!1263553 () Bool)

(assert (=> b!6796639 (= c!1263553 ((_ is Cons!66026) (exprs!6501 lt!2447275)))))

(declare-fun b!6796640 () Bool)

(assert (=> b!6796640 (= e!4101995 (nullable!6595 (h!72474 (exprs!6501 lt!2447275))))))

(assert (= (and d!2135570 res!2777641) b!6796640))

(assert (= (and d!2135570 c!1263554) b!6796636))

(assert (= (and d!2135570 (not c!1263554)) b!6796639))

(assert (= (and b!6796639 c!1263553) b!6796637))

(assert (= (and b!6796639 (not c!1263553)) b!6796638))

(assert (= (or b!6796636 b!6796637) bm!617366))

(declare-fun m!7543428 () Bool)

(assert (=> b!6796636 m!7543428))

(declare-fun m!7543432 () Bool)

(assert (=> bm!617366 m!7543432))

(declare-fun m!7543434 () Bool)

(assert (=> b!6796640 m!7543434))

(assert (=> b!6796149 d!2135570))

(declare-fun d!2135574 () Bool)

(assert (=> d!2135574 (= (flatMap!2098 lt!2447279 lambda!383115) (choose!50636 lt!2447279 lambda!383115))))

(declare-fun bs!1811250 () Bool)

(assert (= bs!1811250 d!2135574))

(declare-fun m!7543436 () Bool)

(assert (=> bs!1811250 m!7543436))

(assert (=> b!6796149 d!2135574))

(declare-fun d!2135576 () Bool)

(assert (=> d!2135576 (= (flatMap!2098 lt!2447259 lambda!383115) (dynLambda!26359 lambda!383115 lt!2447273))))

(declare-fun lt!2447335 () Unit!159925)

(assert (=> d!2135576 (= lt!2447335 (choose!50637 lt!2447259 lt!2447273 lambda!383115))))

(assert (=> d!2135576 (= lt!2447259 (store ((as const (Array Context!12002 Bool)) false) lt!2447273 true))))

(assert (=> d!2135576 (= (lemmaFlatMapOnSingletonSet!1624 lt!2447259 lt!2447273 lambda!383115) lt!2447335)))

(declare-fun b_lambda!256095 () Bool)

(assert (=> (not b_lambda!256095) (not d!2135576)))

(declare-fun bs!1811251 () Bool)

(assert (= bs!1811251 d!2135576))

(assert (=> bs!1811251 m!7543068))

(declare-fun m!7543438 () Bool)

(assert (=> bs!1811251 m!7543438))

(declare-fun m!7543440 () Bool)

(assert (=> bs!1811251 m!7543440))

(assert (=> bs!1811251 m!7543056))

(assert (=> b!6796149 d!2135576))

(declare-fun bs!1811252 () Bool)

(declare-fun d!2135578 () Bool)

(assert (= bs!1811252 (and d!2135578 b!6796140)))

(declare-fun lambda!383167 () Int)

(assert (=> bs!1811252 (= lambda!383167 lambda!383117)))

(declare-fun bs!1811253 () Bool)

(assert (= bs!1811253 (and d!2135578 d!2135474)))

(assert (=> bs!1811253 (= lambda!383167 lambda!383130)))

(declare-fun bs!1811254 () Bool)

(assert (= bs!1811254 (and d!2135578 d!2135538)))

(assert (=> bs!1811254 (= lambda!383167 lambda!383151)))

(declare-fun bs!1811255 () Bool)

(assert (= bs!1811255 (and d!2135578 d!2135542)))

(assert (=> bs!1811255 (= lambda!383167 lambda!383157)))

(assert (=> d!2135578 (= (inv!84789 setElem!46557) (forall!15809 (exprs!6501 setElem!46557) lambda!383167))))

(declare-fun bs!1811256 () Bool)

(assert (= bs!1811256 d!2135578))

(declare-fun m!7543442 () Bool)

(assert (=> bs!1811256 m!7543442))

(assert (=> setNonEmpty!46557 d!2135578))

(declare-fun b!6796652 () Bool)

(declare-fun lt!2447344 () List!66150)

(declare-fun e!4102003 () Bool)

(assert (=> b!6796652 (= e!4102003 (or (not (= lt!2447262 Nil!66026)) (= lt!2447344 (Cons!66026 (reg!16946 r!7292) Nil!66026))))))

(declare-fun b!6796650 () Bool)

(declare-fun e!4102002 () List!66150)

(assert (=> b!6796650 (= e!4102002 (Cons!66026 (h!72474 (Cons!66026 (reg!16946 r!7292) Nil!66026)) (++!14779 (t!379877 (Cons!66026 (reg!16946 r!7292) Nil!66026)) lt!2447262)))))

(declare-fun b!6796651 () Bool)

(declare-fun res!2777646 () Bool)

(assert (=> b!6796651 (=> (not res!2777646) (not e!4102003))))

(declare-fun size!40656 (List!66150) Int)

(assert (=> b!6796651 (= res!2777646 (= (size!40656 lt!2447344) (+ (size!40656 (Cons!66026 (reg!16946 r!7292) Nil!66026)) (size!40656 lt!2447262))))))

(declare-fun b!6796649 () Bool)

(assert (=> b!6796649 (= e!4102002 lt!2447262)))

(declare-fun d!2135580 () Bool)

(assert (=> d!2135580 e!4102003))

(declare-fun res!2777647 () Bool)

(assert (=> d!2135580 (=> (not res!2777647) (not e!4102003))))

(declare-fun content!12885 (List!66150) (InoxSet Regex!16617))

(assert (=> d!2135580 (= res!2777647 (= (content!12885 lt!2447344) ((_ map or) (content!12885 (Cons!66026 (reg!16946 r!7292) Nil!66026)) (content!12885 lt!2447262))))))

(assert (=> d!2135580 (= lt!2447344 e!4102002)))

(declare-fun c!1263557 () Bool)

(assert (=> d!2135580 (= c!1263557 ((_ is Nil!66026) (Cons!66026 (reg!16946 r!7292) Nil!66026)))))

(assert (=> d!2135580 (= (++!14779 (Cons!66026 (reg!16946 r!7292) Nil!66026) lt!2447262) lt!2447344)))

(assert (= (and d!2135580 c!1263557) b!6796649))

(assert (= (and d!2135580 (not c!1263557)) b!6796650))

(assert (= (and d!2135580 res!2777647) b!6796651))

(assert (= (and b!6796651 res!2777646) b!6796652))

(declare-fun m!7543456 () Bool)

(assert (=> b!6796650 m!7543456))

(declare-fun m!7543458 () Bool)

(assert (=> b!6796651 m!7543458))

(declare-fun m!7543460 () Bool)

(assert (=> b!6796651 m!7543460))

(declare-fun m!7543462 () Bool)

(assert (=> b!6796651 m!7543462))

(declare-fun m!7543464 () Bool)

(assert (=> d!2135580 m!7543464))

(declare-fun m!7543466 () Bool)

(assert (=> d!2135580 m!7543466))

(declare-fun m!7543468 () Bool)

(assert (=> d!2135580 m!7543468))

(assert (=> b!6796140 d!2135580))

(declare-fun d!2135586 () Bool)

(declare-fun choose!50643 ((InoxSet Context!12002) Int) (InoxSet Context!12002))

(assert (=> d!2135586 (= (map!15086 lt!2447259 lambda!383116) (choose!50643 lt!2447259 lambda!383116))))

(declare-fun bs!1811259 () Bool)

(assert (= bs!1811259 d!2135586))

(declare-fun m!7543470 () Bool)

(assert (=> bs!1811259 m!7543470))

(assert (=> b!6796140 d!2135586))

(declare-fun d!2135588 () Bool)

(declare-fun dynLambda!26361 (Int Context!12002) Context!12002)

(assert (=> d!2135588 (= (map!15086 lt!2447259 lambda!383116) (store ((as const (Array Context!12002 Bool)) false) (dynLambda!26361 lambda!383116 lt!2447273) true))))

(declare-fun lt!2447349 () Unit!159925)

(declare-fun choose!50644 ((InoxSet Context!12002) Context!12002 Int) Unit!159925)

(assert (=> d!2135588 (= lt!2447349 (choose!50644 lt!2447259 lt!2447273 lambda!383116))))

(assert (=> d!2135588 (= lt!2447259 (store ((as const (Array Context!12002 Bool)) false) lt!2447273 true))))

(assert (=> d!2135588 (= (lemmaMapOnSingletonSet!252 lt!2447259 lt!2447273 lambda!383116) lt!2447349)))

(declare-fun b_lambda!256099 () Bool)

(assert (=> (not b_lambda!256099) (not d!2135588)))

(declare-fun bs!1811260 () Bool)

(assert (= bs!1811260 d!2135588))

(declare-fun m!7543472 () Bool)

(assert (=> bs!1811260 m!7543472))

(declare-fun m!7543474 () Bool)

(assert (=> bs!1811260 m!7543474))

(assert (=> bs!1811260 m!7543056))

(declare-fun m!7543476 () Bool)

(assert (=> bs!1811260 m!7543476))

(assert (=> bs!1811260 m!7543036))

(assert (=> bs!1811260 m!7543472))

(assert (=> b!6796140 d!2135588))

(declare-fun d!2135590 () Bool)

(assert (=> d!2135590 (forall!15809 (++!14779 (Cons!66026 (reg!16946 r!7292) Nil!66026) lt!2447262) lambda!383117)))

(declare-fun lt!2447353 () Unit!159925)

(declare-fun choose!50646 (List!66150 List!66150 Int) Unit!159925)

(assert (=> d!2135590 (= lt!2447353 (choose!50646 (Cons!66026 (reg!16946 r!7292) Nil!66026) lt!2447262 lambda!383117))))

(assert (=> d!2135590 (forall!15809 (Cons!66026 (reg!16946 r!7292) Nil!66026) lambda!383117)))

(assert (=> d!2135590 (= (lemmaConcatPreservesForall!446 (Cons!66026 (reg!16946 r!7292) Nil!66026) lt!2447262 lambda!383117) lt!2447353)))

(declare-fun bs!1811261 () Bool)

(assert (= bs!1811261 d!2135590))

(assert (=> bs!1811261 m!7543040))

(assert (=> bs!1811261 m!7543040))

(declare-fun m!7543492 () Bool)

(assert (=> bs!1811261 m!7543492))

(declare-fun m!7543494 () Bool)

(assert (=> bs!1811261 m!7543494))

(declare-fun m!7543496 () Bool)

(assert (=> bs!1811261 m!7543496))

(assert (=> b!6796140 d!2135590))

(declare-fun bs!1811262 () Bool)

(declare-fun d!2135594 () Bool)

(assert (= bs!1811262 (and d!2135594 b!6796140)))

(declare-fun lambda!383174 () Int)

(assert (=> bs!1811262 (= (= (exprs!6501 lt!2447275) lt!2447262) (= lambda!383174 lambda!383116))))

(assert (=> d!2135594 true))

(assert (=> d!2135594 (= (appendTo!222 lt!2447259 lt!2447275) (map!15086 lt!2447259 lambda!383174))))

(declare-fun bs!1811263 () Bool)

(assert (= bs!1811263 d!2135594))

(declare-fun m!7543498 () Bool)

(assert (=> bs!1811263 m!7543498))

(assert (=> b!6796140 d!2135594))

(declare-fun d!2135596 () Bool)

(declare-fun lt!2447358 () Regex!16617)

(assert (=> d!2135596 (validRegex!8353 lt!2447358)))

(assert (=> d!2135596 (= lt!2447358 (generalisedUnion!2461 (unfocusZipperList!2038 zl!343)))))

(assert (=> d!2135596 (= (unfocusZipper!2359 zl!343) lt!2447358)))

(declare-fun bs!1811264 () Bool)

(assert (= bs!1811264 d!2135596))

(declare-fun m!7543500 () Bool)

(assert (=> bs!1811264 m!7543500))

(assert (=> bs!1811264 m!7543120))

(assert (=> bs!1811264 m!7543120))

(assert (=> bs!1811264 m!7543122))

(assert (=> b!6796160 d!2135596))

(declare-fun d!2135598 () Bool)

(declare-fun e!4102030 () Bool)

(assert (=> d!2135598 e!4102030))

(declare-fun res!2777662 () Bool)

(assert (=> d!2135598 (=> (not res!2777662) (not e!4102030))))

(declare-fun lt!2447362 () List!66151)

(declare-fun noDuplicate!2402 (List!66151) Bool)

(assert (=> d!2135598 (= res!2777662 (noDuplicate!2402 lt!2447362))))

(declare-fun choose!50648 ((InoxSet Context!12002)) List!66151)

(assert (=> d!2135598 (= lt!2447362 (choose!50648 z!1189))))

(assert (=> d!2135598 (= (toList!10401 z!1189) lt!2447362)))

(declare-fun b!6796699 () Bool)

(declare-fun content!12886 (List!66151) (InoxSet Context!12002))

(assert (=> b!6796699 (= e!4102030 (= (content!12886 lt!2447362) z!1189))))

(assert (= (and d!2135598 res!2777662) b!6796699))

(declare-fun m!7543508 () Bool)

(assert (=> d!2135598 m!7543508))

(declare-fun m!7543512 () Bool)

(assert (=> d!2135598 m!7543512))

(declare-fun m!7543516 () Bool)

(assert (=> b!6796699 m!7543516))

(assert (=> b!6796161 d!2135598))

(declare-fun d!2135600 () Bool)

(declare-fun c!1263574 () Bool)

(assert (=> d!2135600 (= c!1263574 (isEmpty!38402 s!2326))))

(declare-fun e!4102031 () Bool)

(assert (=> d!2135600 (= (matchZipper!2603 z!1189 s!2326) e!4102031)))

(declare-fun b!6796700 () Bool)

(assert (=> b!6796700 (= e!4102031 (nullableZipper!2323 z!1189))))

(declare-fun b!6796701 () Bool)

(assert (=> b!6796701 (= e!4102031 (matchZipper!2603 (derivationStepZipper!2561 z!1189 (head!13644 s!2326)) (tail!12729 s!2326)))))

(assert (= (and d!2135600 c!1263574) b!6796700))

(assert (= (and d!2135600 (not c!1263574)) b!6796701))

(assert (=> d!2135600 m!7543012))

(declare-fun m!7543528 () Bool)

(assert (=> b!6796700 m!7543528))

(assert (=> b!6796701 m!7543254))

(assert (=> b!6796701 m!7543254))

(declare-fun m!7543530 () Bool)

(assert (=> b!6796701 m!7543530))

(assert (=> b!6796701 m!7543256))

(assert (=> b!6796701 m!7543530))

(assert (=> b!6796701 m!7543256))

(declare-fun m!7543532 () Bool)

(assert (=> b!6796701 m!7543532))

(assert (=> b!6796152 d!2135600))

(declare-fun bs!1811271 () Bool)

(declare-fun d!2135604 () Bool)

(assert (= bs!1811271 (and d!2135604 b!6796140)))

(declare-fun lambda!383176 () Int)

(assert (=> bs!1811271 (= lambda!383176 lambda!383117)))

(declare-fun bs!1811272 () Bool)

(assert (= bs!1811272 (and d!2135604 d!2135578)))

(assert (=> bs!1811272 (= lambda!383176 lambda!383167)))

(declare-fun bs!1811273 () Bool)

(assert (= bs!1811273 (and d!2135604 d!2135542)))

(assert (=> bs!1811273 (= lambda!383176 lambda!383157)))

(declare-fun bs!1811274 () Bool)

(assert (= bs!1811274 (and d!2135604 d!2135538)))

(assert (=> bs!1811274 (= lambda!383176 lambda!383151)))

(declare-fun bs!1811275 () Bool)

(assert (= bs!1811275 (and d!2135604 d!2135474)))

(assert (=> bs!1811275 (= lambda!383176 lambda!383130)))

(assert (=> d!2135604 (= (inv!84789 lt!2447275) (forall!15809 (exprs!6501 lt!2447275) lambda!383176))))

(declare-fun bs!1811276 () Bool)

(assert (= bs!1811276 d!2135604))

(declare-fun m!7543534 () Bool)

(assert (=> bs!1811276 m!7543534))

(assert (=> b!6796142 d!2135604))

(declare-fun d!2135606 () Bool)

(declare-fun isEmpty!38405 (Option!16504) Bool)

(assert (=> d!2135606 (= (isDefined!13207 (findConcatSeparation!2918 (reg!16946 r!7292) r!7292 Nil!66028 s!2326 s!2326)) (not (isEmpty!38405 (findConcatSeparation!2918 (reg!16946 r!7292) r!7292 Nil!66028 s!2326 s!2326))))))

(declare-fun bs!1811277 () Bool)

(assert (= bs!1811277 d!2135606))

(assert (=> bs!1811277 m!7543022))

(declare-fun m!7543536 () Bool)

(assert (=> bs!1811277 m!7543536))

(assert (=> b!6796162 d!2135606))

(declare-fun bs!1811283 () Bool)

(declare-fun d!2135608 () Bool)

(assert (= bs!1811283 (and d!2135608 b!6796374)))

(declare-fun lambda!383183 () Int)

(assert (=> bs!1811283 (not (= lambda!383183 lambda!383138))))

(declare-fun bs!1811284 () Bool)

(assert (= bs!1811284 (and d!2135608 b!6796162)))

(assert (=> bs!1811284 (not (= lambda!383183 lambda!383113))))

(declare-fun bs!1811285 () Bool)

(assert (= bs!1811285 (and d!2135608 b!6796479)))

(assert (=> bs!1811285 (not (= lambda!383183 lambda!383146))))

(declare-fun bs!1811286 () Bool)

(assert (= bs!1811286 (and d!2135608 b!6796375)))

(assert (=> bs!1811286 (not (= lambda!383183 lambda!383137))))

(assert (=> bs!1811284 (not (= lambda!383183 lambda!383114))))

(assert (=> bs!1811284 (= lambda!383183 lambda!383112)))

(declare-fun bs!1811287 () Bool)

(assert (= bs!1811287 (and d!2135608 b!6796480)))

(assert (=> bs!1811287 (not (= lambda!383183 lambda!383145))))

(assert (=> d!2135608 true))

(assert (=> d!2135608 true))

(assert (=> d!2135608 true))

(declare-fun bs!1811288 () Bool)

(assert (= bs!1811288 d!2135608))

(declare-fun lambda!383185 () Int)

(assert (=> bs!1811288 (not (= lambda!383185 lambda!383183))))

(assert (=> bs!1811283 (= (and (= (reg!16946 r!7292) (regOne!33746 lt!2447264)) (= r!7292 (regTwo!33746 lt!2447264))) (= lambda!383185 lambda!383138))))

(assert (=> bs!1811284 (not (= lambda!383185 lambda!383113))))

(assert (=> bs!1811285 (= (and (= (reg!16946 r!7292) (regOne!33746 r!7292)) (= r!7292 (regTwo!33746 r!7292))) (= lambda!383185 lambda!383146))))

(assert (=> bs!1811286 (not (= lambda!383185 lambda!383137))))

(assert (=> bs!1811284 (= lambda!383185 lambda!383114)))

(assert (=> bs!1811284 (not (= lambda!383185 lambda!383112))))

(assert (=> bs!1811287 (not (= lambda!383185 lambda!383145))))

(assert (=> d!2135608 true))

(assert (=> d!2135608 true))

(assert (=> d!2135608 true))

(assert (=> d!2135608 (= (Exists!3685 lambda!383183) (Exists!3685 lambda!383185))))

(declare-fun lt!2447368 () Unit!159925)

(declare-fun choose!50650 (Regex!16617 Regex!16617 List!66152) Unit!159925)

(assert (=> d!2135608 (= lt!2447368 (choose!50650 (reg!16946 r!7292) r!7292 s!2326))))

(assert (=> d!2135608 (validRegex!8353 (reg!16946 r!7292))))

(assert (=> d!2135608 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2212 (reg!16946 r!7292) r!7292 s!2326) lt!2447368)))

(declare-fun m!7543562 () Bool)

(assert (=> bs!1811288 m!7543562))

(declare-fun m!7543564 () Bool)

(assert (=> bs!1811288 m!7543564))

(declare-fun m!7543566 () Bool)

(assert (=> bs!1811288 m!7543566))

(declare-fun m!7543568 () Bool)

(assert (=> bs!1811288 m!7543568))

(assert (=> b!6796162 d!2135608))

(declare-fun d!2135620 () Bool)

(declare-fun choose!50651 (Int) Bool)

(assert (=> d!2135620 (= (Exists!3685 lambda!383112) (choose!50651 lambda!383112))))

(declare-fun bs!1811289 () Bool)

(assert (= bs!1811289 d!2135620))

(declare-fun m!7543570 () Bool)

(assert (=> bs!1811289 m!7543570))

(assert (=> b!6796162 d!2135620))

(declare-fun bs!1811296 () Bool)

(declare-fun d!2135622 () Bool)

(assert (= bs!1811296 (and d!2135622 d!2135608)))

(declare-fun lambda!383196 () Int)

(assert (=> bs!1811296 (= (= (Star!16617 (reg!16946 r!7292)) r!7292) (= lambda!383196 lambda!383183))))

(declare-fun bs!1811297 () Bool)

(assert (= bs!1811297 (and d!2135622 b!6796374)))

(assert (=> bs!1811297 (not (= lambda!383196 lambda!383138))))

(declare-fun bs!1811298 () Bool)

(assert (= bs!1811298 (and d!2135622 b!6796162)))

(assert (=> bs!1811298 (not (= lambda!383196 lambda!383113))))

(declare-fun bs!1811299 () Bool)

(assert (= bs!1811299 (and d!2135622 b!6796479)))

(assert (=> bs!1811299 (not (= lambda!383196 lambda!383146))))

(declare-fun bs!1811300 () Bool)

(assert (= bs!1811300 (and d!2135622 b!6796375)))

(assert (=> bs!1811300 (not (= lambda!383196 lambda!383137))))

(assert (=> bs!1811296 (not (= lambda!383196 lambda!383185))))

(assert (=> bs!1811298 (not (= lambda!383196 lambda!383114))))

(assert (=> bs!1811298 (= (= (Star!16617 (reg!16946 r!7292)) r!7292) (= lambda!383196 lambda!383112))))

(declare-fun bs!1811301 () Bool)

(assert (= bs!1811301 (and d!2135622 b!6796480)))

(assert (=> bs!1811301 (not (= lambda!383196 lambda!383145))))

(assert (=> d!2135622 true))

(assert (=> d!2135622 true))

(declare-fun bs!1811302 () Bool)

(assert (= bs!1811302 d!2135622))

(declare-fun lambda!383199 () Int)

(assert (=> bs!1811302 (not (= lambda!383199 lambda!383196))))

(assert (=> bs!1811296 (not (= lambda!383199 lambda!383183))))

(assert (=> bs!1811297 (not (= lambda!383199 lambda!383138))))

(assert (=> bs!1811298 (= (= (Star!16617 (reg!16946 r!7292)) r!7292) (= lambda!383199 lambda!383113))))

(assert (=> bs!1811299 (not (= lambda!383199 lambda!383146))))

(assert (=> bs!1811300 (= (and (= (reg!16946 r!7292) (reg!16946 lt!2447264)) (= (Star!16617 (reg!16946 r!7292)) lt!2447264)) (= lambda!383199 lambda!383137))))

(assert (=> bs!1811296 (not (= lambda!383199 lambda!383185))))

(assert (=> bs!1811298 (not (= lambda!383199 lambda!383114))))

(assert (=> bs!1811298 (not (= lambda!383199 lambda!383112))))

(assert (=> bs!1811301 (= (= (Star!16617 (reg!16946 r!7292)) r!7292) (= lambda!383199 lambda!383145))))

(assert (=> d!2135622 true))

(assert (=> d!2135622 true))

(assert (=> d!2135622 (= (Exists!3685 lambda!383196) (Exists!3685 lambda!383199))))

(declare-fun lt!2447374 () Unit!159925)

(declare-fun choose!50652 (Regex!16617 List!66152) Unit!159925)

(assert (=> d!2135622 (= lt!2447374 (choose!50652 (reg!16946 r!7292) s!2326))))

(assert (=> d!2135622 (validRegex!8353 (reg!16946 r!7292))))

(assert (=> d!2135622 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!776 (reg!16946 r!7292) s!2326) lt!2447374)))

(declare-fun m!7543580 () Bool)

(assert (=> bs!1811302 m!7543580))

(declare-fun m!7543582 () Bool)

(assert (=> bs!1811302 m!7543582))

(declare-fun m!7543584 () Bool)

(assert (=> bs!1811302 m!7543584))

(assert (=> bs!1811302 m!7543568))

(assert (=> b!6796162 d!2135622))

(declare-fun d!2135626 () Bool)

(assert (=> d!2135626 (= (Exists!3685 lambda!383114) (choose!50651 lambda!383114))))

(declare-fun bs!1811308 () Bool)

(assert (= bs!1811308 d!2135626))

(declare-fun m!7543586 () Bool)

(assert (=> bs!1811308 m!7543586))

(assert (=> b!6796162 d!2135626))

(declare-fun d!2135628 () Bool)

(assert (=> d!2135628 (= (isEmpty!38402 s!2326) ((_ is Nil!66028) s!2326))))

(assert (=> b!6796162 d!2135628))

(declare-fun d!2135630 () Bool)

(assert (=> d!2135630 (= (Exists!3685 lambda!383113) (choose!50651 lambda!383113))))

(declare-fun bs!1811310 () Bool)

(assert (= bs!1811310 d!2135630))

(declare-fun m!7543588 () Bool)

(assert (=> bs!1811310 m!7543588))

(assert (=> b!6796162 d!2135630))

(declare-fun b!6796782 () Bool)

(declare-fun e!4102076 () Option!16504)

(assert (=> b!6796782 (= e!4102076 None!16503)))

(declare-fun b!6796783 () Bool)

(declare-fun e!4102073 () Bool)

(declare-fun lt!2447388 () Option!16504)

(declare-fun ++!14780 (List!66152 List!66152) List!66152)

(declare-fun get!22994 (Option!16504) tuple2!67184)

(assert (=> b!6796783 (= e!4102073 (= (++!14780 (_1!36895 (get!22994 lt!2447388)) (_2!36895 (get!22994 lt!2447388))) s!2326))))

(declare-fun d!2135632 () Bool)

(declare-fun e!4102075 () Bool)

(assert (=> d!2135632 e!4102075))

(declare-fun res!2777720 () Bool)

(assert (=> d!2135632 (=> res!2777720 e!4102075)))

(assert (=> d!2135632 (= res!2777720 e!4102073)))

(declare-fun res!2777723 () Bool)

(assert (=> d!2135632 (=> (not res!2777723) (not e!4102073))))

(assert (=> d!2135632 (= res!2777723 (isDefined!13207 lt!2447388))))

(declare-fun e!4102074 () Option!16504)

(assert (=> d!2135632 (= lt!2447388 e!4102074)))

(declare-fun c!1263588 () Bool)

(declare-fun e!4102072 () Bool)

(assert (=> d!2135632 (= c!1263588 e!4102072)))

(declare-fun res!2777722 () Bool)

(assert (=> d!2135632 (=> (not res!2777722) (not e!4102072))))

(assert (=> d!2135632 (= res!2777722 (matchR!8800 (reg!16946 r!7292) Nil!66028))))

(assert (=> d!2135632 (validRegex!8353 (reg!16946 r!7292))))

(assert (=> d!2135632 (= (findConcatSeparation!2918 (reg!16946 r!7292) r!7292 Nil!66028 s!2326 s!2326) lt!2447388)))

(declare-fun b!6796784 () Bool)

(assert (=> b!6796784 (= e!4102074 (Some!16503 (tuple2!67185 Nil!66028 s!2326)))))

(declare-fun b!6796785 () Bool)

(assert (=> b!6796785 (= e!4102075 (not (isDefined!13207 lt!2447388)))))

(declare-fun b!6796786 () Bool)

(declare-fun lt!2447389 () Unit!159925)

(declare-fun lt!2447390 () Unit!159925)

(assert (=> b!6796786 (= lt!2447389 lt!2447390)))

(assert (=> b!6796786 (= (++!14780 (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028)) (t!379879 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2737 (List!66152 C!33504 List!66152 List!66152) Unit!159925)

(assert (=> b!6796786 (= lt!2447390 (lemmaMoveElementToOtherListKeepsConcatEq!2737 Nil!66028 (h!72476 s!2326) (t!379879 s!2326) s!2326))))

(assert (=> b!6796786 (= e!4102076 (findConcatSeparation!2918 (reg!16946 r!7292) r!7292 (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028)) (t!379879 s!2326) s!2326))))

(declare-fun b!6796787 () Bool)

(assert (=> b!6796787 (= e!4102072 (matchR!8800 r!7292 s!2326))))

(declare-fun b!6796788 () Bool)

(declare-fun res!2777721 () Bool)

(assert (=> b!6796788 (=> (not res!2777721) (not e!4102073))))

(assert (=> b!6796788 (= res!2777721 (matchR!8800 r!7292 (_2!36895 (get!22994 lt!2447388))))))

(declare-fun b!6796789 () Bool)

(assert (=> b!6796789 (= e!4102074 e!4102076)))

(declare-fun c!1263587 () Bool)

(assert (=> b!6796789 (= c!1263587 ((_ is Nil!66028) s!2326))))

(declare-fun b!6796790 () Bool)

(declare-fun res!2777719 () Bool)

(assert (=> b!6796790 (=> (not res!2777719) (not e!4102073))))

(assert (=> b!6796790 (= res!2777719 (matchR!8800 (reg!16946 r!7292) (_1!36895 (get!22994 lt!2447388))))))

(assert (= (and d!2135632 res!2777722) b!6796787))

(assert (= (and d!2135632 c!1263588) b!6796784))

(assert (= (and d!2135632 (not c!1263588)) b!6796789))

(assert (= (and b!6796789 c!1263587) b!6796782))

(assert (= (and b!6796789 (not c!1263587)) b!6796786))

(assert (= (and d!2135632 res!2777723) b!6796790))

(assert (= (and b!6796790 res!2777719) b!6796788))

(assert (= (and b!6796788 res!2777721) b!6796783))

(assert (= (and d!2135632 (not res!2777720)) b!6796785))

(declare-fun m!7543602 () Bool)

(assert (=> d!2135632 m!7543602))

(declare-fun m!7543604 () Bool)

(assert (=> d!2135632 m!7543604))

(assert (=> d!2135632 m!7543568))

(declare-fun m!7543606 () Bool)

(assert (=> b!6796783 m!7543606))

(declare-fun m!7543608 () Bool)

(assert (=> b!6796783 m!7543608))

(assert (=> b!6796787 m!7543048))

(assert (=> b!6796785 m!7543602))

(assert (=> b!6796790 m!7543606))

(declare-fun m!7543610 () Bool)

(assert (=> b!6796790 m!7543610))

(assert (=> b!6796788 m!7543606))

(declare-fun m!7543612 () Bool)

(assert (=> b!6796788 m!7543612))

(declare-fun m!7543614 () Bool)

(assert (=> b!6796786 m!7543614))

(assert (=> b!6796786 m!7543614))

(declare-fun m!7543616 () Bool)

(assert (=> b!6796786 m!7543616))

(declare-fun m!7543618 () Bool)

(assert (=> b!6796786 m!7543618))

(assert (=> b!6796786 m!7543614))

(declare-fun m!7543620 () Bool)

(assert (=> b!6796786 m!7543620))

(assert (=> b!6796162 d!2135632))

(declare-fun bs!1811315 () Bool)

(declare-fun d!2135644 () Bool)

(assert (= bs!1811315 (and d!2135644 d!2135622)))

(declare-fun lambda!383204 () Int)

(assert (=> bs!1811315 (not (= lambda!383204 lambda!383199))))

(assert (=> bs!1811315 (= (= r!7292 (Star!16617 (reg!16946 r!7292))) (= lambda!383204 lambda!383196))))

(declare-fun bs!1811316 () Bool)

(assert (= bs!1811316 (and d!2135644 d!2135608)))

(assert (=> bs!1811316 (= lambda!383204 lambda!383183)))

(declare-fun bs!1811317 () Bool)

(assert (= bs!1811317 (and d!2135644 b!6796374)))

(assert (=> bs!1811317 (not (= lambda!383204 lambda!383138))))

(declare-fun bs!1811318 () Bool)

(assert (= bs!1811318 (and d!2135644 b!6796162)))

(assert (=> bs!1811318 (not (= lambda!383204 lambda!383113))))

(declare-fun bs!1811319 () Bool)

(assert (= bs!1811319 (and d!2135644 b!6796479)))

(assert (=> bs!1811319 (not (= lambda!383204 lambda!383146))))

(declare-fun bs!1811320 () Bool)

(assert (= bs!1811320 (and d!2135644 b!6796375)))

(assert (=> bs!1811320 (not (= lambda!383204 lambda!383137))))

(assert (=> bs!1811316 (not (= lambda!383204 lambda!383185))))

(assert (=> bs!1811318 (not (= lambda!383204 lambda!383114))))

(assert (=> bs!1811318 (= lambda!383204 lambda!383112)))

(declare-fun bs!1811321 () Bool)

(assert (= bs!1811321 (and d!2135644 b!6796480)))

(assert (=> bs!1811321 (not (= lambda!383204 lambda!383145))))

(assert (=> d!2135644 true))

(assert (=> d!2135644 true))

(assert (=> d!2135644 true))

(assert (=> d!2135644 (= (isDefined!13207 (findConcatSeparation!2918 (reg!16946 r!7292) r!7292 Nil!66028 s!2326 s!2326)) (Exists!3685 lambda!383204))))

(declare-fun lt!2447398 () Unit!159925)

(declare-fun choose!50653 (Regex!16617 Regex!16617 List!66152) Unit!159925)

(assert (=> d!2135644 (= lt!2447398 (choose!50653 (reg!16946 r!7292) r!7292 s!2326))))

(assert (=> d!2135644 (validRegex!8353 (reg!16946 r!7292))))

(assert (=> d!2135644 (= (lemmaFindConcatSeparationEquivalentToExists!2682 (reg!16946 r!7292) r!7292 s!2326) lt!2447398)))

(declare-fun bs!1811322 () Bool)

(assert (= bs!1811322 d!2135644))

(declare-fun m!7543642 () Bool)

(assert (=> bs!1811322 m!7543642))

(assert (=> bs!1811322 m!7543022))

(assert (=> bs!1811322 m!7543024))

(assert (=> bs!1811322 m!7543568))

(assert (=> bs!1811322 m!7543022))

(declare-fun m!7543644 () Bool)

(assert (=> bs!1811322 m!7543644))

(assert (=> b!6796162 d!2135644))

(declare-fun bs!1811331 () Bool)

(declare-fun d!2135648 () Bool)

(assert (= bs!1811331 (and d!2135648 b!6796140)))

(declare-fun lambda!383210 () Int)

(assert (=> bs!1811331 (= lambda!383210 lambda!383117)))

(declare-fun bs!1811332 () Bool)

(assert (= bs!1811332 (and d!2135648 d!2135578)))

(assert (=> bs!1811332 (= lambda!383210 lambda!383167)))

(declare-fun bs!1811333 () Bool)

(assert (= bs!1811333 (and d!2135648 d!2135542)))

(assert (=> bs!1811333 (= lambda!383210 lambda!383157)))

(declare-fun bs!1811334 () Bool)

(assert (= bs!1811334 (and d!2135648 d!2135538)))

(assert (=> bs!1811334 (= lambda!383210 lambda!383151)))

(declare-fun bs!1811335 () Bool)

(assert (= bs!1811335 (and d!2135648 d!2135604)))

(assert (=> bs!1811335 (= lambda!383210 lambda!383176)))

(declare-fun bs!1811336 () Bool)

(assert (= bs!1811336 (and d!2135648 d!2135474)))

(assert (=> bs!1811336 (= lambda!383210 lambda!383130)))

(declare-fun b!6796850 () Bool)

(declare-fun e!4102115 () Bool)

(declare-fun lt!2447402 () Regex!16617)

(declare-fun isEmptyExpr!1975 (Regex!16617) Bool)

(assert (=> b!6796850 (= e!4102115 (isEmptyExpr!1975 lt!2447402))))

(declare-fun b!6796851 () Bool)

(declare-fun e!4102114 () Regex!16617)

(assert (=> b!6796851 (= e!4102114 EmptyExpr!16617)))

(declare-fun b!6796852 () Bool)

(declare-fun e!4102112 () Regex!16617)

(assert (=> b!6796852 (= e!4102112 e!4102114)))

(declare-fun c!1263609 () Bool)

(assert (=> b!6796852 (= c!1263609 ((_ is Cons!66026) (exprs!6501 (h!72475 zl!343))))))

(declare-fun b!6796853 () Bool)

(assert (=> b!6796853 (= e!4102114 (Concat!25462 (h!72474 (exprs!6501 (h!72475 zl!343))) (generalisedConcat!2214 (t!379877 (exprs!6501 (h!72475 zl!343))))))))

(declare-fun e!4102110 () Bool)

(assert (=> d!2135648 e!4102110))

(declare-fun res!2777743 () Bool)

(assert (=> d!2135648 (=> (not res!2777743) (not e!4102110))))

(assert (=> d!2135648 (= res!2777743 (validRegex!8353 lt!2447402))))

(assert (=> d!2135648 (= lt!2447402 e!4102112)))

(declare-fun c!1263611 () Bool)

(declare-fun e!4102113 () Bool)

(assert (=> d!2135648 (= c!1263611 e!4102113)))

(declare-fun res!2777744 () Bool)

(assert (=> d!2135648 (=> (not res!2777744) (not e!4102113))))

(assert (=> d!2135648 (= res!2777744 ((_ is Cons!66026) (exprs!6501 (h!72475 zl!343))))))

(assert (=> d!2135648 (forall!15809 (exprs!6501 (h!72475 zl!343)) lambda!383210)))

(assert (=> d!2135648 (= (generalisedConcat!2214 (exprs!6501 (h!72475 zl!343))) lt!2447402)))

(declare-fun b!6796854 () Bool)

(declare-fun e!4102111 () Bool)

(assert (=> b!6796854 (= e!4102115 e!4102111)))

(declare-fun c!1263610 () Bool)

(assert (=> b!6796854 (= c!1263610 (isEmpty!38403 (tail!12730 (exprs!6501 (h!72475 zl!343)))))))

(declare-fun b!6796855 () Bool)

(assert (=> b!6796855 (= e!4102111 (= lt!2447402 (head!13645 (exprs!6501 (h!72475 zl!343)))))))

(declare-fun b!6796856 () Bool)

(declare-fun isConcat!1498 (Regex!16617) Bool)

(assert (=> b!6796856 (= e!4102111 (isConcat!1498 lt!2447402))))

(declare-fun b!6796857 () Bool)

(assert (=> b!6796857 (= e!4102110 e!4102115)))

(declare-fun c!1263612 () Bool)

(assert (=> b!6796857 (= c!1263612 (isEmpty!38403 (exprs!6501 (h!72475 zl!343))))))

(declare-fun b!6796858 () Bool)

(assert (=> b!6796858 (= e!4102113 (isEmpty!38403 (t!379877 (exprs!6501 (h!72475 zl!343)))))))

(declare-fun b!6796859 () Bool)

(assert (=> b!6796859 (= e!4102112 (h!72474 (exprs!6501 (h!72475 zl!343))))))

(assert (= (and d!2135648 res!2777744) b!6796858))

(assert (= (and d!2135648 c!1263611) b!6796859))

(assert (= (and d!2135648 (not c!1263611)) b!6796852))

(assert (= (and b!6796852 c!1263609) b!6796853))

(assert (= (and b!6796852 (not c!1263609)) b!6796851))

(assert (= (and d!2135648 res!2777743) b!6796857))

(assert (= (and b!6796857 c!1263612) b!6796850))

(assert (= (and b!6796857 (not c!1263612)) b!6796854))

(assert (= (and b!6796854 c!1263610) b!6796855))

(assert (= (and b!6796854 (not c!1263610)) b!6796856))

(declare-fun m!7543650 () Bool)

(assert (=> b!6796855 m!7543650))

(declare-fun m!7543652 () Bool)

(assert (=> b!6796858 m!7543652))

(declare-fun m!7543654 () Bool)

(assert (=> b!6796856 m!7543654))

(declare-fun m!7543656 () Bool)

(assert (=> b!6796857 m!7543656))

(declare-fun m!7543658 () Bool)

(assert (=> d!2135648 m!7543658))

(declare-fun m!7543660 () Bool)

(assert (=> d!2135648 m!7543660))

(declare-fun m!7543662 () Bool)

(assert (=> b!6796854 m!7543662))

(assert (=> b!6796854 m!7543662))

(declare-fun m!7543664 () Bool)

(assert (=> b!6796854 m!7543664))

(declare-fun m!7543666 () Bool)

(assert (=> b!6796850 m!7543666))

(declare-fun m!7543668 () Bool)

(assert (=> b!6796853 m!7543668))

(assert (=> b!6796153 d!2135648))

(declare-fun b!6796864 () Bool)

(declare-fun e!4102118 () Bool)

(declare-fun tp!1861078 () Bool)

(assert (=> b!6796864 (= e!4102118 (and tp_is_empty!42487 tp!1861078))))

(assert (=> b!6796143 (= tp!1861073 e!4102118)))

(assert (= (and b!6796143 ((_ is Cons!66028) (t!379879 s!2326))) b!6796864))

(declare-fun b!6796875 () Bool)

(declare-fun e!4102121 () Bool)

(assert (=> b!6796875 (= e!4102121 tp_is_empty!42487)))

(declare-fun b!6796877 () Bool)

(declare-fun tp!1861092 () Bool)

(assert (=> b!6796877 (= e!4102121 tp!1861092)))

(declare-fun b!6796876 () Bool)

(declare-fun tp!1861091 () Bool)

(declare-fun tp!1861090 () Bool)

(assert (=> b!6796876 (= e!4102121 (and tp!1861091 tp!1861090))))

(assert (=> b!6796144 (= tp!1861072 e!4102121)))

(declare-fun b!6796878 () Bool)

(declare-fun tp!1861089 () Bool)

(declare-fun tp!1861093 () Bool)

(assert (=> b!6796878 (= e!4102121 (and tp!1861089 tp!1861093))))

(assert (= (and b!6796144 ((_ is ElementMatch!16617) (regOne!33747 r!7292))) b!6796875))

(assert (= (and b!6796144 ((_ is Concat!25462) (regOne!33747 r!7292))) b!6796876))

(assert (= (and b!6796144 ((_ is Star!16617) (regOne!33747 r!7292))) b!6796877))

(assert (= (and b!6796144 ((_ is Union!16617) (regOne!33747 r!7292))) b!6796878))

(declare-fun b!6796879 () Bool)

(declare-fun e!4102122 () Bool)

(assert (=> b!6796879 (= e!4102122 tp_is_empty!42487)))

(declare-fun b!6796881 () Bool)

(declare-fun tp!1861097 () Bool)

(assert (=> b!6796881 (= e!4102122 tp!1861097)))

(declare-fun b!6796880 () Bool)

(declare-fun tp!1861096 () Bool)

(declare-fun tp!1861095 () Bool)

(assert (=> b!6796880 (= e!4102122 (and tp!1861096 tp!1861095))))

(assert (=> b!6796144 (= tp!1861066 e!4102122)))

(declare-fun b!6796882 () Bool)

(declare-fun tp!1861094 () Bool)

(declare-fun tp!1861098 () Bool)

(assert (=> b!6796882 (= e!4102122 (and tp!1861094 tp!1861098))))

(assert (= (and b!6796144 ((_ is ElementMatch!16617) (regTwo!33747 r!7292))) b!6796879))

(assert (= (and b!6796144 ((_ is Concat!25462) (regTwo!33747 r!7292))) b!6796880))

(assert (= (and b!6796144 ((_ is Star!16617) (regTwo!33747 r!7292))) b!6796881))

(assert (= (and b!6796144 ((_ is Union!16617) (regTwo!33747 r!7292))) b!6796882))

(declare-fun b!6796887 () Bool)

(declare-fun e!4102125 () Bool)

(declare-fun tp!1861103 () Bool)

(declare-fun tp!1861104 () Bool)

(assert (=> b!6796887 (= e!4102125 (and tp!1861103 tp!1861104))))

(assert (=> b!6796164 (= tp!1861074 e!4102125)))

(assert (= (and b!6796164 ((_ is Cons!66026) (exprs!6501 setElem!46557))) b!6796887))

(declare-fun b!6796888 () Bool)

(declare-fun e!4102126 () Bool)

(declare-fun tp!1861105 () Bool)

(declare-fun tp!1861106 () Bool)

(assert (=> b!6796888 (= e!4102126 (and tp!1861105 tp!1861106))))

(assert (=> b!6796150 (= tp!1861071 e!4102126)))

(assert (= (and b!6796150 ((_ is Cons!66026) (exprs!6501 (h!72475 zl!343)))) b!6796888))

(declare-fun condSetEmpty!46560 () Bool)

(assert (=> setNonEmpty!46557 (= condSetEmpty!46560 (= setRest!46557 ((as const (Array Context!12002 Bool)) false)))))

(declare-fun setRes!46560 () Bool)

(assert (=> setNonEmpty!46557 (= tp!1861075 setRes!46560)))

(declare-fun setIsEmpty!46560 () Bool)

(assert (=> setIsEmpty!46560 setRes!46560))

(declare-fun setElem!46560 () Context!12002)

(declare-fun setNonEmpty!46560 () Bool)

(declare-fun e!4102134 () Bool)

(declare-fun tp!1861111 () Bool)

(assert (=> setNonEmpty!46560 (= setRes!46560 (and tp!1861111 (inv!84789 setElem!46560) e!4102134))))

(declare-fun setRest!46560 () (InoxSet Context!12002))

(assert (=> setNonEmpty!46560 (= setRest!46557 ((_ map or) (store ((as const (Array Context!12002 Bool)) false) setElem!46560 true) setRest!46560))))

(declare-fun b!6796893 () Bool)

(declare-fun tp!1861112 () Bool)

(assert (=> b!6796893 (= e!4102134 tp!1861112)))

(assert (= (and setNonEmpty!46557 condSetEmpty!46560) setIsEmpty!46560))

(assert (= (and setNonEmpty!46557 (not condSetEmpty!46560)) setNonEmpty!46560))

(assert (= setNonEmpty!46560 b!6796893))

(declare-fun m!7543670 () Bool)

(assert (=> setNonEmpty!46560 m!7543670))

(declare-fun b!6796912 () Bool)

(declare-fun e!4102141 () Bool)

(declare-fun tp!1861117 () Bool)

(assert (=> b!6796912 (= e!4102141 tp!1861117)))

(declare-fun e!4102140 () Bool)

(declare-fun tp!1861118 () Bool)

(declare-fun b!6796911 () Bool)

(assert (=> b!6796911 (= e!4102140 (and (inv!84789 (h!72475 (t!379878 zl!343))) e!4102141 tp!1861118))))

(assert (=> b!6796136 (= tp!1861067 e!4102140)))

(assert (= b!6796911 b!6796912))

(assert (= (and b!6796136 ((_ is Cons!66027) (t!379878 zl!343))) b!6796911))

(declare-fun m!7543676 () Bool)

(assert (=> b!6796911 m!7543676))

(declare-fun b!6796913 () Bool)

(declare-fun e!4102142 () Bool)

(assert (=> b!6796913 (= e!4102142 tp_is_empty!42487)))

(declare-fun b!6796915 () Bool)

(declare-fun tp!1861122 () Bool)

(assert (=> b!6796915 (= e!4102142 tp!1861122)))

(declare-fun b!6796914 () Bool)

(declare-fun tp!1861121 () Bool)

(declare-fun tp!1861120 () Bool)

(assert (=> b!6796914 (= e!4102142 (and tp!1861121 tp!1861120))))

(assert (=> b!6796137 (= tp!1861069 e!4102142)))

(declare-fun b!6796916 () Bool)

(declare-fun tp!1861119 () Bool)

(declare-fun tp!1861123 () Bool)

(assert (=> b!6796916 (= e!4102142 (and tp!1861119 tp!1861123))))

(assert (= (and b!6796137 ((_ is ElementMatch!16617) (reg!16946 r!7292))) b!6796913))

(assert (= (and b!6796137 ((_ is Concat!25462) (reg!16946 r!7292))) b!6796914))

(assert (= (and b!6796137 ((_ is Star!16617) (reg!16946 r!7292))) b!6796915))

(assert (= (and b!6796137 ((_ is Union!16617) (reg!16946 r!7292))) b!6796916))

(declare-fun b!6796917 () Bool)

(declare-fun e!4102143 () Bool)

(assert (=> b!6796917 (= e!4102143 tp_is_empty!42487)))

(declare-fun b!6796919 () Bool)

(declare-fun tp!1861127 () Bool)

(assert (=> b!6796919 (= e!4102143 tp!1861127)))

(declare-fun b!6796918 () Bool)

(declare-fun tp!1861126 () Bool)

(declare-fun tp!1861125 () Bool)

(assert (=> b!6796918 (= e!4102143 (and tp!1861126 tp!1861125))))

(assert (=> b!6796163 (= tp!1861070 e!4102143)))

(declare-fun b!6796920 () Bool)

(declare-fun tp!1861124 () Bool)

(declare-fun tp!1861128 () Bool)

(assert (=> b!6796920 (= e!4102143 (and tp!1861124 tp!1861128))))

(assert (= (and b!6796163 ((_ is ElementMatch!16617) (regOne!33746 r!7292))) b!6796917))

(assert (= (and b!6796163 ((_ is Concat!25462) (regOne!33746 r!7292))) b!6796918))

(assert (= (and b!6796163 ((_ is Star!16617) (regOne!33746 r!7292))) b!6796919))

(assert (= (and b!6796163 ((_ is Union!16617) (regOne!33746 r!7292))) b!6796920))

(declare-fun b!6796926 () Bool)

(declare-fun e!4102147 () Bool)

(assert (=> b!6796926 (= e!4102147 tp_is_empty!42487)))

(declare-fun b!6796928 () Bool)

(declare-fun tp!1861132 () Bool)

(assert (=> b!6796928 (= e!4102147 tp!1861132)))

(declare-fun b!6796927 () Bool)

(declare-fun tp!1861131 () Bool)

(declare-fun tp!1861130 () Bool)

(assert (=> b!6796927 (= e!4102147 (and tp!1861131 tp!1861130))))

(assert (=> b!6796163 (= tp!1861068 e!4102147)))

(declare-fun b!6796929 () Bool)

(declare-fun tp!1861129 () Bool)

(declare-fun tp!1861133 () Bool)

(assert (=> b!6796929 (= e!4102147 (and tp!1861129 tp!1861133))))

(assert (= (and b!6796163 ((_ is ElementMatch!16617) (regTwo!33746 r!7292))) b!6796926))

(assert (= (and b!6796163 ((_ is Concat!25462) (regTwo!33746 r!7292))) b!6796927))

(assert (= (and b!6796163 ((_ is Star!16617) (regTwo!33746 r!7292))) b!6796928))

(assert (= (and b!6796163 ((_ is Union!16617) (regTwo!33746 r!7292))) b!6796929))

(declare-fun b_lambda!256101 () Bool)

(assert (= b_lambda!256099 (or b!6796140 b_lambda!256101)))

(declare-fun bs!1811338 () Bool)

(declare-fun d!2135656 () Bool)

(assert (= bs!1811338 (and d!2135656 b!6796140)))

(declare-fun lt!2447403 () Unit!159925)

(assert (=> bs!1811338 (= lt!2447403 (lemmaConcatPreservesForall!446 (exprs!6501 lt!2447273) lt!2447262 lambda!383117))))

(assert (=> bs!1811338 (= (dynLambda!26361 lambda!383116 lt!2447273) (Context!12003 (++!14779 (exprs!6501 lt!2447273) lt!2447262)))))

(declare-fun m!7543694 () Bool)

(assert (=> bs!1811338 m!7543694))

(declare-fun m!7543696 () Bool)

(assert (=> bs!1811338 m!7543696))

(assert (=> d!2135588 d!2135656))

(declare-fun b_lambda!256103 () Bool)

(assert (= b_lambda!256095 (or b!6796135 b_lambda!256103)))

(declare-fun bs!1811340 () Bool)

(declare-fun d!2135662 () Bool)

(assert (= bs!1811340 (and d!2135662 b!6796135)))

(assert (=> bs!1811340 (= (dynLambda!26359 lambda!383115 lt!2447273) (derivationStepZipperUp!1771 lt!2447273 (h!72476 s!2326)))))

(assert (=> bs!1811340 m!7543064))

(assert (=> d!2135576 d!2135662))

(declare-fun b_lambda!256105 () Bool)

(assert (= b_lambda!256083 (or b!6796135 b_lambda!256105)))

(declare-fun bs!1811341 () Bool)

(declare-fun d!2135664 () Bool)

(assert (= bs!1811341 (and d!2135664 b!6796135)))

(assert (=> bs!1811341 (= (dynLambda!26359 lambda!383115 (h!72475 zl!343)) (derivationStepZipperUp!1771 (h!72475 zl!343) (h!72476 s!2326)))))

(assert (=> bs!1811341 m!7543104))

(assert (=> d!2135458 d!2135664))

(declare-fun b_lambda!256107 () Bool)

(assert (= b_lambda!256091 (or b!6796135 b_lambda!256107)))

(declare-fun bs!1811342 () Bool)

(declare-fun d!2135666 () Bool)

(assert (= bs!1811342 (and d!2135666 b!6796135)))

(assert (=> bs!1811342 (= (dynLambda!26359 lambda!383115 lt!2447263) (derivationStepZipperUp!1771 lt!2447263 (h!72476 s!2326)))))

(assert (=> bs!1811342 m!7543110))

(assert (=> d!2135536 d!2135666))

(declare-fun b_lambda!256109 () Bool)

(assert (= b_lambda!256093 (or b!6796135 b_lambda!256109)))

(declare-fun bs!1811343 () Bool)

(declare-fun d!2135668 () Bool)

(assert (= bs!1811343 (and d!2135668 b!6796135)))

(assert (=> bs!1811343 (= (dynLambda!26359 lambda!383115 lt!2447275) (derivationStepZipperUp!1771 lt!2447275 (h!72476 s!2326)))))

(assert (=> bs!1811343 m!7543054))

(assert (=> d!2135568 d!2135668))

(check-sat (not d!2135564) (not bm!617365) (not d!2135558) (not d!2135488) (not b!6796920) (not b_lambda!256103) (not bs!1811340) (not bs!1811343) (not b!6796856) (not bm!617342) (not bm!617359) (not b!6796785) (not b!6796439) (not d!2135548) (not b!6796545) (not d!2135536) (not d!2135530) (not b!6796858) (not b!6796855) (not b!6796627) (not d!2135522) (not d!2135648) (not b!6796188) (not b!6796541) (not b!6796919) (not b!6796594) (not d!2135632) (not d!2135524) (not b!6796787) (not bm!617304) (not b!6796880) (not d!2135472) (not d!2135630) (not d!2135600) (not bm!617310) (not b!6796915) (not b!6796516) (not bm!617308) (not d!2135542) (not b!6796633) (not d!2135604) (not b!6796912) (not d!2135586) (not bs!1811342) (not bm!617366) (not d!2135594) (not d!2135608) (not b!6796887) (not b!6796380) (not b!6796881) (not b!6796377) (not bm!617333) (not b!6796916) (not b!6796625) (not b!6796786) (not d!2135568) (not b!6796447) (not d!2135576) (not b!6796440) (not b_lambda!256109) (not b!6796699) (not b_lambda!256101) (not b!6796864) (not d!2135578) (not bm!617323) (not b!6796854) (not b!6796597) (not b!6796893) (not b!6796617) (not b!6796790) (not b!6796700) (not b!6796590) (not b!6796878) (not d!2135538) (not b!6796184) (not b!6796918) (not d!2135598) (not d!2135458) (not bm!617355) (not b!6796651) (not d!2135622) (not b!6796640) (not d!2135560) (not b!6796441) (not b!6796596) (not b!6796482) (not b!6796290) (not d!2135620) (not d!2135644) (not b!6796888) (not b!6796519) (not b!6796515) (not d!2135588) (not b_lambda!256107) (not bm!617364) (not d!2135562) (not b!6796593) (not b!6796628) (not b!6796701) (not bm!617346) tp_is_empty!42487 (not b!6796857) (not d!2135596) (not b!6796591) (not b!6796876) (not b!6796629) (not d!2135580) (not d!2135590) (not d!2135470) (not b!6796509) (not b!6796850) (not b!6796592) (not setNonEmpty!46560) (not b!6796882) (not b!6796250) (not b_lambda!256105) (not b!6796636) (not d!2135546) (not d!2135460) (not b!6796236) (not b!6796911) (not b!6796650) (not b!6796914) (not bs!1811341) (not b!6796507) (not bm!617347) (not b!6796626) (not bm!617352) (not b!6796448) (not b!6796783) (not bm!617324) (not d!2135626) (not b!6796788) (not b!6796928) (not b!6796254) (not b!6796927) (not d!2135606) (not b!6796853) (not d!2135454) (not bs!1811338) (not b!6796524) (not b!6796508) (not d!2135474) (not b!6796485) (not bm!617291) (not bm!617357) (not bm!617334) (not bm!617306) (not d!2135574) (not b!6796929) (not b!6796451) (not b!6796877) (not d!2135512))
(check-sat)
(get-model)

(declare-fun d!2135690 () Bool)

(assert (=> d!2135690 (= (isConcat!1498 lt!2447402) ((_ is Concat!25462) lt!2447402))))

(assert (=> b!6796856 d!2135690))

(declare-fun d!2135692 () Bool)

(assert (=> d!2135692 (= (head!13644 s!2326) (h!72476 s!2326))))

(assert (=> b!6796509 d!2135692))

(assert (=> d!2135536 d!2135530))

(declare-fun d!2135694 () Bool)

(assert (=> d!2135694 (= (flatMap!2098 lt!2447274 lambda!383115) (dynLambda!26359 lambda!383115 lt!2447263))))

(assert (=> d!2135694 true))

(declare-fun _$13!4256 () Unit!159925)

(assert (=> d!2135694 (= (choose!50637 lt!2447274 lt!2447263 lambda!383115) _$13!4256)))

(declare-fun b_lambda!256123 () Bool)

(assert (=> (not b_lambda!256123) (not d!2135694)))

(declare-fun bs!1811354 () Bool)

(assert (= bs!1811354 d!2135694))

(assert (=> bs!1811354 m!7543114))

(assert (=> bs!1811354 m!7543320))

(assert (=> d!2135536 d!2135694))

(declare-fun b!6797002 () Bool)

(declare-fun e!4102184 () Bool)

(assert (=> b!6797002 (= e!4102184 (= (head!13644 (tail!12729 s!2326)) (c!1263403 (derivativeStep!5281 lt!2447264 (head!13644 s!2326)))))))

(declare-fun b!6797003 () Bool)

(declare-fun e!4102185 () Bool)

(assert (=> b!6797003 (= e!4102185 (matchR!8800 (derivativeStep!5281 (derivativeStep!5281 lt!2447264 (head!13644 s!2326)) (head!13644 (tail!12729 s!2326))) (tail!12729 (tail!12729 s!2326))))))

(declare-fun b!6797004 () Bool)

(declare-fun e!4102183 () Bool)

(assert (=> b!6797004 (= e!4102183 (not (= (head!13644 (tail!12729 s!2326)) (c!1263403 (derivativeStep!5281 lt!2447264 (head!13644 s!2326))))))))

(declare-fun b!6797005 () Bool)

(declare-fun res!2777756 () Bool)

(assert (=> b!6797005 (=> (not res!2777756) (not e!4102184))))

(declare-fun call!617398 () Bool)

(assert (=> b!6797005 (= res!2777756 (not call!617398))))

(declare-fun bm!617393 () Bool)

(assert (=> bm!617393 (= call!617398 (isEmpty!38402 (tail!12729 s!2326)))))

(declare-fun b!6797006 () Bool)

(declare-fun e!4102187 () Bool)

(assert (=> b!6797006 (= e!4102187 e!4102183)))

(declare-fun res!2777749 () Bool)

(assert (=> b!6797006 (=> res!2777749 e!4102183)))

(assert (=> b!6797006 (= res!2777749 call!617398)))

(declare-fun b!6797007 () Bool)

(declare-fun e!4102186 () Bool)

(declare-fun e!4102181 () Bool)

(assert (=> b!6797007 (= e!4102186 e!4102181)))

(declare-fun c!1263630 () Bool)

(assert (=> b!6797007 (= c!1263630 ((_ is EmptyLang!16617) (derivativeStep!5281 lt!2447264 (head!13644 s!2326))))))

(declare-fun b!6797008 () Bool)

(declare-fun lt!2447407 () Bool)

(assert (=> b!6797008 (= e!4102181 (not lt!2447407))))

(declare-fun d!2135696 () Bool)

(assert (=> d!2135696 e!4102186))

(declare-fun c!1263629 () Bool)

(assert (=> d!2135696 (= c!1263629 ((_ is EmptyExpr!16617) (derivativeStep!5281 lt!2447264 (head!13644 s!2326))))))

(assert (=> d!2135696 (= lt!2447407 e!4102185)))

(declare-fun c!1263628 () Bool)

(assert (=> d!2135696 (= c!1263628 (isEmpty!38402 (tail!12729 s!2326)))))

(assert (=> d!2135696 (validRegex!8353 (derivativeStep!5281 lt!2447264 (head!13644 s!2326)))))

(assert (=> d!2135696 (= (matchR!8800 (derivativeStep!5281 lt!2447264 (head!13644 s!2326)) (tail!12729 s!2326)) lt!2447407)))

(declare-fun b!6797009 () Bool)

(assert (=> b!6797009 (= e!4102186 (= lt!2447407 call!617398))))

(declare-fun b!6797010 () Bool)

(assert (=> b!6797010 (= e!4102185 (nullable!6595 (derivativeStep!5281 lt!2447264 (head!13644 s!2326))))))

(declare-fun b!6797011 () Bool)

(declare-fun res!2777752 () Bool)

(assert (=> b!6797011 (=> (not res!2777752) (not e!4102184))))

(assert (=> b!6797011 (= res!2777752 (isEmpty!38402 (tail!12729 (tail!12729 s!2326))))))

(declare-fun b!6797012 () Bool)

(declare-fun res!2777753 () Bool)

(declare-fun e!4102182 () Bool)

(assert (=> b!6797012 (=> res!2777753 e!4102182)))

(assert (=> b!6797012 (= res!2777753 e!4102184)))

(declare-fun res!2777751 () Bool)

(assert (=> b!6797012 (=> (not res!2777751) (not e!4102184))))

(assert (=> b!6797012 (= res!2777751 lt!2447407)))

(declare-fun b!6797013 () Bool)

(declare-fun res!2777755 () Bool)

(assert (=> b!6797013 (=> res!2777755 e!4102182)))

(assert (=> b!6797013 (= res!2777755 (not ((_ is ElementMatch!16617) (derivativeStep!5281 lt!2447264 (head!13644 s!2326)))))))

(assert (=> b!6797013 (= e!4102181 e!4102182)))

(declare-fun b!6797014 () Bool)

(declare-fun res!2777750 () Bool)

(assert (=> b!6797014 (=> res!2777750 e!4102183)))

(assert (=> b!6797014 (= res!2777750 (not (isEmpty!38402 (tail!12729 (tail!12729 s!2326)))))))

(declare-fun b!6797015 () Bool)

(assert (=> b!6797015 (= e!4102182 e!4102187)))

(declare-fun res!2777754 () Bool)

(assert (=> b!6797015 (=> (not res!2777754) (not e!4102187))))

(assert (=> b!6797015 (= res!2777754 (not lt!2447407))))

(assert (= (and d!2135696 c!1263628) b!6797010))

(assert (= (and d!2135696 (not c!1263628)) b!6797003))

(assert (= (and d!2135696 c!1263629) b!6797009))

(assert (= (and d!2135696 (not c!1263629)) b!6797007))

(assert (= (and b!6797007 c!1263630) b!6797008))

(assert (= (and b!6797007 (not c!1263630)) b!6797013))

(assert (= (and b!6797013 (not res!2777755)) b!6797012))

(assert (= (and b!6797012 res!2777751) b!6797005))

(assert (= (and b!6797005 res!2777756) b!6797011))

(assert (= (and b!6797011 res!2777752) b!6797002))

(assert (= (and b!6797012 (not res!2777753)) b!6797015))

(assert (= (and b!6797015 res!2777754) b!6797006))

(assert (= (and b!6797006 (not res!2777749)) b!6797014))

(assert (= (and b!6797014 (not res!2777750)) b!6797004))

(assert (= (or b!6797009 b!6797005 b!6797006) bm!617393))

(assert (=> b!6797002 m!7543256))

(declare-fun m!7543736 () Bool)

(assert (=> b!6797002 m!7543736))

(assert (=> b!6797004 m!7543256))

(assert (=> b!6797004 m!7543736))

(assert (=> b!6797011 m!7543256))

(declare-fun m!7543738 () Bool)

(assert (=> b!6797011 m!7543738))

(assert (=> b!6797011 m!7543738))

(declare-fun m!7543740 () Bool)

(assert (=> b!6797011 m!7543740))

(assert (=> bm!617393 m!7543256))

(assert (=> bm!617393 m!7543258))

(assert (=> d!2135696 m!7543256))

(assert (=> d!2135696 m!7543258))

(assert (=> d!2135696 m!7543264))

(declare-fun m!7543742 () Bool)

(assert (=> d!2135696 m!7543742))

(assert (=> b!6797010 m!7543264))

(declare-fun m!7543744 () Bool)

(assert (=> b!6797010 m!7543744))

(assert (=> b!6797014 m!7543256))

(assert (=> b!6797014 m!7543738))

(assert (=> b!6797014 m!7543738))

(assert (=> b!6797014 m!7543740))

(assert (=> b!6797003 m!7543256))

(assert (=> b!6797003 m!7543736))

(assert (=> b!6797003 m!7543264))

(assert (=> b!6797003 m!7543736))

(declare-fun m!7543746 () Bool)

(assert (=> b!6797003 m!7543746))

(assert (=> b!6797003 m!7543256))

(assert (=> b!6797003 m!7543738))

(assert (=> b!6797003 m!7543746))

(assert (=> b!6797003 m!7543738))

(declare-fun m!7543748 () Bool)

(assert (=> b!6797003 m!7543748))

(assert (=> b!6796440 d!2135696))

(declare-fun b!6797036 () Bool)

(declare-fun e!4102202 () Regex!16617)

(declare-fun e!4102201 () Regex!16617)

(assert (=> b!6797036 (= e!4102202 e!4102201)))

(declare-fun c!1263645 () Bool)

(assert (=> b!6797036 (= c!1263645 ((_ is Star!16617) lt!2447264))))

(declare-fun bm!617402 () Bool)

(declare-fun call!617407 () Regex!16617)

(declare-fun call!617408 () Regex!16617)

(assert (=> bm!617402 (= call!617407 call!617408)))

(declare-fun b!6797037 () Bool)

(declare-fun e!4102200 () Regex!16617)

(assert (=> b!6797037 (= e!4102200 (ite (= (head!13644 s!2326) (c!1263403 lt!2447264)) EmptyExpr!16617 EmptyLang!16617))))

(declare-fun bm!617403 () Bool)

(declare-fun call!617410 () Regex!16617)

(assert (=> bm!617403 (= call!617408 call!617410)))

(declare-fun b!6797038 () Bool)

(declare-fun e!4102198 () Regex!16617)

(assert (=> b!6797038 (= e!4102198 (Union!16617 (Concat!25462 call!617407 (regTwo!33746 lt!2447264)) EmptyLang!16617))))

(declare-fun b!6797039 () Bool)

(declare-fun e!4102199 () Regex!16617)

(assert (=> b!6797039 (= e!4102199 e!4102200)))

(declare-fun c!1263643 () Bool)

(assert (=> b!6797039 (= c!1263643 ((_ is ElementMatch!16617) lt!2447264))))

(declare-fun c!1263644 () Bool)

(declare-fun c!1263641 () Bool)

(declare-fun bm!617404 () Bool)

(assert (=> bm!617404 (= call!617410 (derivativeStep!5281 (ite c!1263641 (regOne!33747 lt!2447264) (ite c!1263645 (reg!16946 lt!2447264) (ite c!1263644 (regTwo!33746 lt!2447264) (regOne!33746 lt!2447264)))) (head!13644 s!2326)))))

(declare-fun b!6797040 () Bool)

(assert (=> b!6797040 (= e!4102199 EmptyLang!16617)))

(declare-fun b!6797041 () Bool)

(assert (=> b!6797041 (= e!4102201 (Concat!25462 call!617408 lt!2447264))))

(declare-fun call!617409 () Regex!16617)

(declare-fun b!6797042 () Bool)

(assert (=> b!6797042 (= e!4102198 (Union!16617 (Concat!25462 call!617409 (regTwo!33746 lt!2447264)) call!617407))))

(declare-fun b!6797043 () Bool)

(assert (=> b!6797043 (= c!1263641 ((_ is Union!16617) lt!2447264))))

(assert (=> b!6797043 (= e!4102200 e!4102202)))

(declare-fun bm!617405 () Bool)

(assert (=> bm!617405 (= call!617409 (derivativeStep!5281 (ite c!1263641 (regTwo!33747 lt!2447264) (regOne!33746 lt!2447264)) (head!13644 s!2326)))))

(declare-fun d!2135698 () Bool)

(declare-fun lt!2447410 () Regex!16617)

(assert (=> d!2135698 (validRegex!8353 lt!2447410)))

(assert (=> d!2135698 (= lt!2447410 e!4102199)))

(declare-fun c!1263642 () Bool)

(assert (=> d!2135698 (= c!1263642 (or ((_ is EmptyExpr!16617) lt!2447264) ((_ is EmptyLang!16617) lt!2447264)))))

(assert (=> d!2135698 (validRegex!8353 lt!2447264)))

(assert (=> d!2135698 (= (derivativeStep!5281 lt!2447264 (head!13644 s!2326)) lt!2447410)))

(declare-fun b!6797044 () Bool)

(assert (=> b!6797044 (= e!4102202 (Union!16617 call!617410 call!617409))))

(declare-fun b!6797045 () Bool)

(assert (=> b!6797045 (= c!1263644 (nullable!6595 (regOne!33746 lt!2447264)))))

(assert (=> b!6797045 (= e!4102201 e!4102198)))

(assert (= (and d!2135698 c!1263642) b!6797040))

(assert (= (and d!2135698 (not c!1263642)) b!6797039))

(assert (= (and b!6797039 c!1263643) b!6797037))

(assert (= (and b!6797039 (not c!1263643)) b!6797043))

(assert (= (and b!6797043 c!1263641) b!6797044))

(assert (= (and b!6797043 (not c!1263641)) b!6797036))

(assert (= (and b!6797036 c!1263645) b!6797041))

(assert (= (and b!6797036 (not c!1263645)) b!6797045))

(assert (= (and b!6797045 c!1263644) b!6797042))

(assert (= (and b!6797045 (not c!1263644)) b!6797038))

(assert (= (or b!6797042 b!6797038) bm!617402))

(assert (= (or b!6797041 bm!617402) bm!617403))

(assert (= (or b!6797044 b!6797042) bm!617405))

(assert (= (or b!6797044 bm!617403) bm!617404))

(assert (=> bm!617404 m!7543254))

(declare-fun m!7543750 () Bool)

(assert (=> bm!617404 m!7543750))

(assert (=> bm!617405 m!7543254))

(declare-fun m!7543752 () Bool)

(assert (=> bm!617405 m!7543752))

(declare-fun m!7543754 () Bool)

(assert (=> d!2135698 m!7543754))

(assert (=> d!2135698 m!7543260))

(declare-fun m!7543756 () Bool)

(assert (=> b!6797045 m!7543756))

(assert (=> b!6796440 d!2135698))

(assert (=> b!6796440 d!2135692))

(declare-fun d!2135700 () Bool)

(assert (=> d!2135700 (= (tail!12729 s!2326) (t!379879 s!2326))))

(assert (=> b!6796440 d!2135700))

(assert (=> bm!617333 d!2135628))

(declare-fun call!617411 () Bool)

(declare-fun c!1263646 () Bool)

(declare-fun bm!617406 () Bool)

(assert (=> bm!617406 (= call!617411 (validRegex!8353 (ite c!1263646 (regTwo!33747 (ite c!1263445 (regTwo!33747 r!7292) (regTwo!33746 r!7292))) (regTwo!33746 (ite c!1263445 (regTwo!33747 r!7292) (regTwo!33746 r!7292))))))))

(declare-fun b!6797046 () Bool)

(declare-fun e!4102207 () Bool)

(declare-fun e!4102209 () Bool)

(assert (=> b!6797046 (= e!4102207 e!4102209)))

(declare-fun res!2777759 () Bool)

(assert (=> b!6797046 (= res!2777759 (not (nullable!6595 (reg!16946 (ite c!1263445 (regTwo!33747 r!7292) (regTwo!33746 r!7292))))))))

(assert (=> b!6797046 (=> (not res!2777759) (not e!4102209))))

(declare-fun b!6797047 () Bool)

(declare-fun e!4102204 () Bool)

(assert (=> b!6797047 (= e!4102204 call!617411)))

(declare-fun b!6797048 () Bool)

(declare-fun e!4102203 () Bool)

(assert (=> b!6797048 (= e!4102207 e!4102203)))

(assert (=> b!6797048 (= c!1263646 ((_ is Union!16617) (ite c!1263445 (regTwo!33747 r!7292) (regTwo!33746 r!7292))))))

(declare-fun b!6797049 () Bool)

(declare-fun res!2777760 () Bool)

(declare-fun e!4102208 () Bool)

(assert (=> b!6797049 (=> (not res!2777760) (not e!4102208))))

(declare-fun call!617412 () Bool)

(assert (=> b!6797049 (= res!2777760 call!617412)))

(assert (=> b!6797049 (= e!4102203 e!4102208)))

(declare-fun b!6797050 () Bool)

(declare-fun e!4102205 () Bool)

(assert (=> b!6797050 (= e!4102205 e!4102207)))

(declare-fun c!1263647 () Bool)

(assert (=> b!6797050 (= c!1263647 ((_ is Star!16617) (ite c!1263445 (regTwo!33747 r!7292) (regTwo!33746 r!7292))))))

(declare-fun b!6797051 () Bool)

(declare-fun res!2777761 () Bool)

(declare-fun e!4102206 () Bool)

(assert (=> b!6797051 (=> res!2777761 e!4102206)))

(assert (=> b!6797051 (= res!2777761 (not ((_ is Concat!25462) (ite c!1263445 (regTwo!33747 r!7292) (regTwo!33746 r!7292)))))))

(assert (=> b!6797051 (= e!4102203 e!4102206)))

(declare-fun bm!617407 () Bool)

(declare-fun call!617413 () Bool)

(assert (=> bm!617407 (= call!617413 (validRegex!8353 (ite c!1263647 (reg!16946 (ite c!1263445 (regTwo!33747 r!7292) (regTwo!33746 r!7292))) (ite c!1263646 (regOne!33747 (ite c!1263445 (regTwo!33747 r!7292) (regTwo!33746 r!7292))) (regOne!33746 (ite c!1263445 (regTwo!33747 r!7292) (regTwo!33746 r!7292)))))))))

(declare-fun bm!617408 () Bool)

(assert (=> bm!617408 (= call!617412 call!617413)))

(declare-fun b!6797052 () Bool)

(assert (=> b!6797052 (= e!4102208 call!617411)))

(declare-fun d!2135702 () Bool)

(declare-fun res!2777758 () Bool)

(assert (=> d!2135702 (=> res!2777758 e!4102205)))

(assert (=> d!2135702 (= res!2777758 ((_ is ElementMatch!16617) (ite c!1263445 (regTwo!33747 r!7292) (regTwo!33746 r!7292))))))

(assert (=> d!2135702 (= (validRegex!8353 (ite c!1263445 (regTwo!33747 r!7292) (regTwo!33746 r!7292))) e!4102205)))

(declare-fun b!6797053 () Bool)

(assert (=> b!6797053 (= e!4102209 call!617413)))

(declare-fun b!6797054 () Bool)

(assert (=> b!6797054 (= e!4102206 e!4102204)))

(declare-fun res!2777757 () Bool)

(assert (=> b!6797054 (=> (not res!2777757) (not e!4102204))))

(assert (=> b!6797054 (= res!2777757 call!617412)))

(assert (= (and d!2135702 (not res!2777758)) b!6797050))

(assert (= (and b!6797050 c!1263647) b!6797046))

(assert (= (and b!6797050 (not c!1263647)) b!6797048))

(assert (= (and b!6797046 res!2777759) b!6797053))

(assert (= (and b!6797048 c!1263646) b!6797049))

(assert (= (and b!6797048 (not c!1263646)) b!6797051))

(assert (= (and b!6797049 res!2777760) b!6797052))

(assert (= (and b!6797051 (not res!2777761)) b!6797054))

(assert (= (and b!6797054 res!2777757) b!6797047))

(assert (= (or b!6797052 b!6797047) bm!617406))

(assert (= (or b!6797049 b!6797054) bm!617408))

(assert (= (or b!6797053 bm!617408) bm!617407))

(declare-fun m!7543758 () Bool)

(assert (=> bm!617406 m!7543758))

(declare-fun m!7543760 () Bool)

(assert (=> b!6797046 m!7543760))

(declare-fun m!7543762 () Bool)

(assert (=> bm!617407 m!7543762))

(assert (=> bm!617323 d!2135702))

(declare-fun b!6797055 () Bool)

(declare-fun call!617414 () (InoxSet Context!12002))

(declare-fun e!4102211 () (InoxSet Context!12002))

(assert (=> b!6797055 (= e!4102211 ((_ map or) call!617414 (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447263)))))) (h!72476 s!2326))))))

(declare-fun b!6797056 () Bool)

(declare-fun e!4102212 () (InoxSet Context!12002))

(assert (=> b!6797056 (= e!4102212 call!617414)))

(declare-fun bm!617409 () Bool)

(assert (=> bm!617409 (= call!617414 (derivationStepZipperDown!1845 (h!72474 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447263))))) (Context!12003 (t!379877 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447263)))))) (h!72476 s!2326)))))

(declare-fun b!6797057 () Bool)

(assert (=> b!6797057 (= e!4102212 ((as const (Array Context!12002 Bool)) false))))

(declare-fun d!2135704 () Bool)

(declare-fun c!1263649 () Bool)

(declare-fun e!4102210 () Bool)

(assert (=> d!2135704 (= c!1263649 e!4102210)))

(declare-fun res!2777762 () Bool)

(assert (=> d!2135704 (=> (not res!2777762) (not e!4102210))))

(assert (=> d!2135704 (= res!2777762 ((_ is Cons!66026) (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447263))))))))

(assert (=> d!2135704 (= (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 lt!2447263))) (h!72476 s!2326)) e!4102211)))

(declare-fun b!6797058 () Bool)

(assert (=> b!6797058 (= e!4102211 e!4102212)))

(declare-fun c!1263648 () Bool)

(assert (=> b!6797058 (= c!1263648 ((_ is Cons!66026) (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447263))))))))

(declare-fun b!6797059 () Bool)

(assert (=> b!6797059 (= e!4102210 (nullable!6595 (h!72474 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447263)))))))))

(assert (= (and d!2135704 res!2777762) b!6797059))

(assert (= (and d!2135704 c!1263649) b!6797055))

(assert (= (and d!2135704 (not c!1263649)) b!6797058))

(assert (= (and b!6797058 c!1263648) b!6797056))

(assert (= (and b!6797058 (not c!1263648)) b!6797057))

(assert (= (or b!6797055 b!6797056) bm!617409))

(declare-fun m!7543764 () Bool)

(assert (=> b!6797055 m!7543764))

(declare-fun m!7543766 () Bool)

(assert (=> bm!617409 m!7543766))

(declare-fun m!7543768 () Bool)

(assert (=> b!6797059 m!7543768))

(assert (=> b!6796541 d!2135704))

(declare-fun bm!617410 () Bool)

(declare-fun call!617415 () Bool)

(declare-fun c!1263650 () Bool)

(assert (=> bm!617410 (= call!617415 (validRegex!8353 (ite c!1263650 (regTwo!33747 lt!2447330) (regTwo!33746 lt!2447330))))))

(declare-fun b!6797060 () Bool)

(declare-fun e!4102217 () Bool)

(declare-fun e!4102219 () Bool)

(assert (=> b!6797060 (= e!4102217 e!4102219)))

(declare-fun res!2777765 () Bool)

(assert (=> b!6797060 (= res!2777765 (not (nullable!6595 (reg!16946 lt!2447330))))))

(assert (=> b!6797060 (=> (not res!2777765) (not e!4102219))))

(declare-fun b!6797061 () Bool)

(declare-fun e!4102214 () Bool)

(assert (=> b!6797061 (= e!4102214 call!617415)))

(declare-fun b!6797062 () Bool)

(declare-fun e!4102213 () Bool)

(assert (=> b!6797062 (= e!4102217 e!4102213)))

(assert (=> b!6797062 (= c!1263650 ((_ is Union!16617) lt!2447330))))

(declare-fun b!6797063 () Bool)

(declare-fun res!2777766 () Bool)

(declare-fun e!4102218 () Bool)

(assert (=> b!6797063 (=> (not res!2777766) (not e!4102218))))

(declare-fun call!617416 () Bool)

(assert (=> b!6797063 (= res!2777766 call!617416)))

(assert (=> b!6797063 (= e!4102213 e!4102218)))

(declare-fun b!6797064 () Bool)

(declare-fun e!4102215 () Bool)

(assert (=> b!6797064 (= e!4102215 e!4102217)))

(declare-fun c!1263651 () Bool)

(assert (=> b!6797064 (= c!1263651 ((_ is Star!16617) lt!2447330))))

(declare-fun b!6797065 () Bool)

(declare-fun res!2777767 () Bool)

(declare-fun e!4102216 () Bool)

(assert (=> b!6797065 (=> res!2777767 e!4102216)))

(assert (=> b!6797065 (= res!2777767 (not ((_ is Concat!25462) lt!2447330)))))

(assert (=> b!6797065 (= e!4102213 e!4102216)))

(declare-fun bm!617411 () Bool)

(declare-fun call!617417 () Bool)

(assert (=> bm!617411 (= call!617417 (validRegex!8353 (ite c!1263651 (reg!16946 lt!2447330) (ite c!1263650 (regOne!33747 lt!2447330) (regOne!33746 lt!2447330)))))))

(declare-fun bm!617412 () Bool)

(assert (=> bm!617412 (= call!617416 call!617417)))

(declare-fun b!6797066 () Bool)

(assert (=> b!6797066 (= e!4102218 call!617415)))

(declare-fun d!2135706 () Bool)

(declare-fun res!2777764 () Bool)

(assert (=> d!2135706 (=> res!2777764 e!4102215)))

(assert (=> d!2135706 (= res!2777764 ((_ is ElementMatch!16617) lt!2447330))))

(assert (=> d!2135706 (= (validRegex!8353 lt!2447330) e!4102215)))

(declare-fun b!6797067 () Bool)

(assert (=> b!6797067 (= e!4102219 call!617417)))

(declare-fun b!6797068 () Bool)

(assert (=> b!6797068 (= e!4102216 e!4102214)))

(declare-fun res!2777763 () Bool)

(assert (=> b!6797068 (=> (not res!2777763) (not e!4102214))))

(assert (=> b!6797068 (= res!2777763 call!617416)))

(assert (= (and d!2135706 (not res!2777764)) b!6797064))

(assert (= (and b!6797064 c!1263651) b!6797060))

(assert (= (and b!6797064 (not c!1263651)) b!6797062))

(assert (= (and b!6797060 res!2777765) b!6797067))

(assert (= (and b!6797062 c!1263650) b!6797063))

(assert (= (and b!6797062 (not c!1263650)) b!6797065))

(assert (= (and b!6797063 res!2777766) b!6797066))

(assert (= (and b!6797065 (not res!2777767)) b!6797068))

(assert (= (and b!6797068 res!2777763) b!6797061))

(assert (= (or b!6797066 b!6797061) bm!617410))

(assert (= (or b!6797063 b!6797068) bm!617412))

(assert (= (or b!6797067 bm!617412) bm!617411))

(declare-fun m!7543770 () Bool)

(assert (=> bm!617410 m!7543770))

(declare-fun m!7543772 () Bool)

(assert (=> b!6797060 m!7543772))

(declare-fun m!7543774 () Bool)

(assert (=> bm!617411 m!7543774))

(assert (=> d!2135546 d!2135706))

(declare-fun bs!1811355 () Bool)

(declare-fun d!2135708 () Bool)

(assert (= bs!1811355 (and d!2135708 b!6796140)))

(declare-fun lambda!383212 () Int)

(assert (=> bs!1811355 (= lambda!383212 lambda!383117)))

(declare-fun bs!1811356 () Bool)

(assert (= bs!1811356 (and d!2135708 d!2135578)))

(assert (=> bs!1811356 (= lambda!383212 lambda!383167)))

(declare-fun bs!1811357 () Bool)

(assert (= bs!1811357 (and d!2135708 d!2135542)))

(assert (=> bs!1811357 (= lambda!383212 lambda!383157)))

(declare-fun bs!1811358 () Bool)

(assert (= bs!1811358 (and d!2135708 d!2135538)))

(assert (=> bs!1811358 (= lambda!383212 lambda!383151)))

(declare-fun bs!1811359 () Bool)

(assert (= bs!1811359 (and d!2135708 d!2135604)))

(assert (=> bs!1811359 (= lambda!383212 lambda!383176)))

(declare-fun bs!1811360 () Bool)

(assert (= bs!1811360 (and d!2135708 d!2135474)))

(assert (=> bs!1811360 (= lambda!383212 lambda!383130)))

(declare-fun bs!1811361 () Bool)

(assert (= bs!1811361 (and d!2135708 d!2135648)))

(assert (=> bs!1811361 (= lambda!383212 lambda!383210)))

(declare-fun b!6797069 () Bool)

(declare-fun e!4102221 () Regex!16617)

(assert (=> b!6797069 (= e!4102221 EmptyLang!16617)))

(declare-fun b!6797070 () Bool)

(declare-fun e!4102225 () Bool)

(declare-fun e!4102224 () Bool)

(assert (=> b!6797070 (= e!4102225 e!4102224)))

(declare-fun c!1263654 () Bool)

(assert (=> b!6797070 (= c!1263654 (isEmpty!38403 (unfocusZipperList!2038 (Cons!66027 lt!2447275 Nil!66027))))))

(declare-fun b!6797071 () Bool)

(declare-fun e!4102220 () Bool)

(assert (=> b!6797071 (= e!4102224 e!4102220)))

(declare-fun c!1263652 () Bool)

(assert (=> b!6797071 (= c!1263652 (isEmpty!38403 (tail!12730 (unfocusZipperList!2038 (Cons!66027 lt!2447275 Nil!66027)))))))

(declare-fun b!6797072 () Bool)

(declare-fun lt!2447411 () Regex!16617)

(assert (=> b!6797072 (= e!4102220 (isUnion!1412 lt!2447411))))

(declare-fun b!6797073 () Bool)

(declare-fun e!4102223 () Bool)

(assert (=> b!6797073 (= e!4102223 (isEmpty!38403 (t!379877 (unfocusZipperList!2038 (Cons!66027 lt!2447275 Nil!66027)))))))

(declare-fun b!6797074 () Bool)

(assert (=> b!6797074 (= e!4102224 (isEmptyLang!1982 lt!2447411))))

(assert (=> d!2135708 e!4102225))

(declare-fun res!2777769 () Bool)

(assert (=> d!2135708 (=> (not res!2777769) (not e!4102225))))

(assert (=> d!2135708 (= res!2777769 (validRegex!8353 lt!2447411))))

(declare-fun e!4102222 () Regex!16617)

(assert (=> d!2135708 (= lt!2447411 e!4102222)))

(declare-fun c!1263655 () Bool)

(assert (=> d!2135708 (= c!1263655 e!4102223)))

(declare-fun res!2777768 () Bool)

(assert (=> d!2135708 (=> (not res!2777768) (not e!4102223))))

(assert (=> d!2135708 (= res!2777768 ((_ is Cons!66026) (unfocusZipperList!2038 (Cons!66027 lt!2447275 Nil!66027))))))

(assert (=> d!2135708 (forall!15809 (unfocusZipperList!2038 (Cons!66027 lt!2447275 Nil!66027)) lambda!383212)))

(assert (=> d!2135708 (= (generalisedUnion!2461 (unfocusZipperList!2038 (Cons!66027 lt!2447275 Nil!66027))) lt!2447411)))

(declare-fun b!6797075 () Bool)

(assert (=> b!6797075 (= e!4102222 (h!72474 (unfocusZipperList!2038 (Cons!66027 lt!2447275 Nil!66027))))))

(declare-fun b!6797076 () Bool)

(assert (=> b!6797076 (= e!4102220 (= lt!2447411 (head!13645 (unfocusZipperList!2038 (Cons!66027 lt!2447275 Nil!66027)))))))

(declare-fun b!6797077 () Bool)

(assert (=> b!6797077 (= e!4102221 (Union!16617 (h!72474 (unfocusZipperList!2038 (Cons!66027 lt!2447275 Nil!66027))) (generalisedUnion!2461 (t!379877 (unfocusZipperList!2038 (Cons!66027 lt!2447275 Nil!66027))))))))

(declare-fun b!6797078 () Bool)

(assert (=> b!6797078 (= e!4102222 e!4102221)))

(declare-fun c!1263653 () Bool)

(assert (=> b!6797078 (= c!1263653 ((_ is Cons!66026) (unfocusZipperList!2038 (Cons!66027 lt!2447275 Nil!66027))))))

(assert (= (and d!2135708 res!2777768) b!6797073))

(assert (= (and d!2135708 c!1263655) b!6797075))

(assert (= (and d!2135708 (not c!1263655)) b!6797078))

(assert (= (and b!6797078 c!1263653) b!6797077))

(assert (= (and b!6797078 (not c!1263653)) b!6797069))

(assert (= (and d!2135708 res!2777769) b!6797070))

(assert (= (and b!6797070 c!1263654) b!6797074))

(assert (= (and b!6797070 (not c!1263654)) b!6797071))

(assert (= (and b!6797071 c!1263652) b!6797076))

(assert (= (and b!6797071 (not c!1263652)) b!6797072))

(declare-fun m!7543776 () Bool)

(assert (=> d!2135708 m!7543776))

(assert (=> d!2135708 m!7543376))

(declare-fun m!7543778 () Bool)

(assert (=> d!2135708 m!7543778))

(declare-fun m!7543780 () Bool)

(assert (=> b!6797073 m!7543780))

(declare-fun m!7543782 () Bool)

(assert (=> b!6797077 m!7543782))

(assert (=> b!6797076 m!7543376))

(declare-fun m!7543784 () Bool)

(assert (=> b!6797076 m!7543784))

(assert (=> b!6797070 m!7543376))

(declare-fun m!7543786 () Bool)

(assert (=> b!6797070 m!7543786))

(assert (=> b!6797071 m!7543376))

(declare-fun m!7543788 () Bool)

(assert (=> b!6797071 m!7543788))

(assert (=> b!6797071 m!7543788))

(declare-fun m!7543790 () Bool)

(assert (=> b!6797071 m!7543790))

(declare-fun m!7543792 () Bool)

(assert (=> b!6797074 m!7543792))

(declare-fun m!7543794 () Bool)

(assert (=> b!6797072 m!7543794))

(assert (=> d!2135546 d!2135708))

(declare-fun bs!1811362 () Bool)

(declare-fun d!2135710 () Bool)

(assert (= bs!1811362 (and d!2135710 b!6796140)))

(declare-fun lambda!383213 () Int)

(assert (=> bs!1811362 (= lambda!383213 lambda!383117)))

(declare-fun bs!1811363 () Bool)

(assert (= bs!1811363 (and d!2135710 d!2135578)))

(assert (=> bs!1811363 (= lambda!383213 lambda!383167)))

(declare-fun bs!1811364 () Bool)

(assert (= bs!1811364 (and d!2135710 d!2135542)))

(assert (=> bs!1811364 (= lambda!383213 lambda!383157)))

(declare-fun bs!1811365 () Bool)

(assert (= bs!1811365 (and d!2135710 d!2135708)))

(assert (=> bs!1811365 (= lambda!383213 lambda!383212)))

(declare-fun bs!1811366 () Bool)

(assert (= bs!1811366 (and d!2135710 d!2135538)))

(assert (=> bs!1811366 (= lambda!383213 lambda!383151)))

(declare-fun bs!1811367 () Bool)

(assert (= bs!1811367 (and d!2135710 d!2135604)))

(assert (=> bs!1811367 (= lambda!383213 lambda!383176)))

(declare-fun bs!1811368 () Bool)

(assert (= bs!1811368 (and d!2135710 d!2135474)))

(assert (=> bs!1811368 (= lambda!383213 lambda!383130)))

(declare-fun bs!1811369 () Bool)

(assert (= bs!1811369 (and d!2135710 d!2135648)))

(assert (=> bs!1811369 (= lambda!383213 lambda!383210)))

(declare-fun lt!2447412 () List!66150)

(assert (=> d!2135710 (forall!15809 lt!2447412 lambda!383213)))

(declare-fun e!4102226 () List!66150)

(assert (=> d!2135710 (= lt!2447412 e!4102226)))

(declare-fun c!1263656 () Bool)

(assert (=> d!2135710 (= c!1263656 ((_ is Cons!66027) (Cons!66027 lt!2447275 Nil!66027)))))

(assert (=> d!2135710 (= (unfocusZipperList!2038 (Cons!66027 lt!2447275 Nil!66027)) lt!2447412)))

(declare-fun b!6797079 () Bool)

(assert (=> b!6797079 (= e!4102226 (Cons!66026 (generalisedConcat!2214 (exprs!6501 (h!72475 (Cons!66027 lt!2447275 Nil!66027)))) (unfocusZipperList!2038 (t!379878 (Cons!66027 lt!2447275 Nil!66027)))))))

(declare-fun b!6797080 () Bool)

(assert (=> b!6797080 (= e!4102226 Nil!66026)))

(assert (= (and d!2135710 c!1263656) b!6797079))

(assert (= (and d!2135710 (not c!1263656)) b!6797080))

(declare-fun m!7543796 () Bool)

(assert (=> d!2135710 m!7543796))

(declare-fun m!7543798 () Bool)

(assert (=> b!6797079 m!7543798))

(declare-fun m!7543800 () Bool)

(assert (=> b!6797079 m!7543800))

(assert (=> d!2135546 d!2135710))

(declare-fun b!6797081 () Bool)

(declare-fun c!1263658 () Bool)

(assert (=> b!6797081 (= c!1263658 ((_ is Star!16617) (h!72474 (exprs!6501 (h!72475 zl!343)))))))

(declare-fun e!4102232 () (InoxSet Context!12002))

(declare-fun e!4102231 () (InoxSet Context!12002))

(assert (=> b!6797081 (= e!4102232 e!4102231)))

(declare-fun b!6797082 () Bool)

(declare-fun e!4102230 () (InoxSet Context!12002))

(declare-fun call!617420 () (InoxSet Context!12002))

(declare-fun call!617418 () (InoxSet Context!12002))

(assert (=> b!6797082 (= e!4102230 ((_ map or) call!617420 call!617418))))

(declare-fun b!6797083 () Bool)

(declare-fun c!1263659 () Bool)

(declare-fun e!4102227 () Bool)

(assert (=> b!6797083 (= c!1263659 e!4102227)))

(declare-fun res!2777770 () Bool)

(assert (=> b!6797083 (=> (not res!2777770) (not e!4102227))))

(assert (=> b!6797083 (= res!2777770 ((_ is Concat!25462) (h!72474 (exprs!6501 (h!72475 zl!343)))))))

(declare-fun e!4102229 () (InoxSet Context!12002))

(assert (=> b!6797083 (= e!4102229 e!4102230)))

(declare-fun b!6797084 () Bool)

(assert (=> b!6797084 (= e!4102227 (nullable!6595 (regOne!33746 (h!72474 (exprs!6501 (h!72475 zl!343))))))))

(declare-fun b!6797085 () Bool)

(declare-fun e!4102228 () (InoxSet Context!12002))

(assert (=> b!6797085 (= e!4102228 (store ((as const (Array Context!12002 Bool)) false) (Context!12003 (t!379877 (exprs!6501 (h!72475 zl!343)))) true))))

(declare-fun b!6797086 () Bool)

(assert (=> b!6797086 (= e!4102230 e!4102232)))

(declare-fun c!1263661 () Bool)

(assert (=> b!6797086 (= c!1263661 ((_ is Concat!25462) (h!72474 (exprs!6501 (h!72475 zl!343)))))))

(declare-fun bm!617413 () Bool)

(declare-fun call!617423 () List!66150)

(assert (=> bm!617413 (= call!617423 ($colon$colon!2425 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 (h!72475 zl!343))))) (ite (or c!1263659 c!1263661) (regTwo!33746 (h!72474 (exprs!6501 (h!72475 zl!343)))) (h!72474 (exprs!6501 (h!72475 zl!343))))))))

(declare-fun d!2135712 () Bool)

(declare-fun c!1263657 () Bool)

(assert (=> d!2135712 (= c!1263657 (and ((_ is ElementMatch!16617) (h!72474 (exprs!6501 (h!72475 zl!343)))) (= (c!1263403 (h!72474 (exprs!6501 (h!72475 zl!343)))) (h!72476 s!2326))))))

(assert (=> d!2135712 (= (derivationStepZipperDown!1845 (h!72474 (exprs!6501 (h!72475 zl!343))) (Context!12003 (t!379877 (exprs!6501 (h!72475 zl!343)))) (h!72476 s!2326)) e!4102228)))

(declare-fun bm!617414 () Bool)

(declare-fun call!617421 () (InoxSet Context!12002))

(assert (=> bm!617414 (= call!617418 call!617421)))

(declare-fun b!6797087 () Bool)

(assert (=> b!6797087 (= e!4102231 ((as const (Array Context!12002 Bool)) false))))

(declare-fun b!6797088 () Bool)

(assert (=> b!6797088 (= e!4102228 e!4102229)))

(declare-fun c!1263660 () Bool)

(assert (=> b!6797088 (= c!1263660 ((_ is Union!16617) (h!72474 (exprs!6501 (h!72475 zl!343)))))))

(declare-fun call!617419 () List!66150)

(declare-fun bm!617415 () Bool)

(assert (=> bm!617415 (= call!617421 (derivationStepZipperDown!1845 (ite c!1263660 (regTwo!33747 (h!72474 (exprs!6501 (h!72475 zl!343)))) (ite c!1263659 (regTwo!33746 (h!72474 (exprs!6501 (h!72475 zl!343)))) (ite c!1263661 (regOne!33746 (h!72474 (exprs!6501 (h!72475 zl!343)))) (reg!16946 (h!72474 (exprs!6501 (h!72475 zl!343))))))) (ite (or c!1263660 c!1263659) (Context!12003 (t!379877 (exprs!6501 (h!72475 zl!343)))) (Context!12003 call!617419)) (h!72476 s!2326)))))

(declare-fun b!6797089 () Bool)

(assert (=> b!6797089 (= e!4102229 ((_ map or) call!617420 call!617421))))

(declare-fun b!6797090 () Bool)

(declare-fun call!617422 () (InoxSet Context!12002))

(assert (=> b!6797090 (= e!4102232 call!617422)))

(declare-fun bm!617416 () Bool)

(assert (=> bm!617416 (= call!617422 call!617418)))

(declare-fun bm!617417 () Bool)

(assert (=> bm!617417 (= call!617420 (derivationStepZipperDown!1845 (ite c!1263660 (regOne!33747 (h!72474 (exprs!6501 (h!72475 zl!343)))) (regOne!33746 (h!72474 (exprs!6501 (h!72475 zl!343))))) (ite c!1263660 (Context!12003 (t!379877 (exprs!6501 (h!72475 zl!343)))) (Context!12003 call!617423)) (h!72476 s!2326)))))

(declare-fun b!6797091 () Bool)

(assert (=> b!6797091 (= e!4102231 call!617422)))

(declare-fun bm!617418 () Bool)

(assert (=> bm!617418 (= call!617419 call!617423)))

(assert (= (and d!2135712 c!1263657) b!6797085))

(assert (= (and d!2135712 (not c!1263657)) b!6797088))

(assert (= (and b!6797088 c!1263660) b!6797089))

(assert (= (and b!6797088 (not c!1263660)) b!6797083))

(assert (= (and b!6797083 res!2777770) b!6797084))

(assert (= (and b!6797083 c!1263659) b!6797082))

(assert (= (and b!6797083 (not c!1263659)) b!6797086))

(assert (= (and b!6797086 c!1263661) b!6797090))

(assert (= (and b!6797086 (not c!1263661)) b!6797081))

(assert (= (and b!6797081 c!1263658) b!6797091))

(assert (= (and b!6797081 (not c!1263658)) b!6797087))

(assert (= (or b!6797090 b!6797091) bm!617418))

(assert (= (or b!6797090 b!6797091) bm!617416))

(assert (= (or b!6797082 bm!617418) bm!617413))

(assert (= (or b!6797082 bm!617416) bm!617414))

(assert (= (or b!6797089 bm!617414) bm!617415))

(assert (= (or b!6797089 b!6797082) bm!617417))

(declare-fun m!7543802 () Bool)

(assert (=> b!6797084 m!7543802))

(declare-fun m!7543804 () Bool)

(assert (=> bm!617415 m!7543804))

(declare-fun m!7543806 () Bool)

(assert (=> bm!617417 m!7543806))

(declare-fun m!7543808 () Bool)

(assert (=> b!6797085 m!7543808))

(declare-fun m!7543810 () Bool)

(assert (=> bm!617413 m!7543810))

(assert (=> bm!617291 d!2135712))

(declare-fun d!2135714 () Bool)

(assert (=> d!2135714 (= (isEmpty!38403 (tail!12730 (unfocusZipperList!2038 zl!343))) ((_ is Nil!66026) (tail!12730 (unfocusZipperList!2038 zl!343))))))

(assert (=> b!6796591 d!2135714))

(declare-fun d!2135716 () Bool)

(assert (=> d!2135716 (= (tail!12730 (unfocusZipperList!2038 zl!343)) (t!379877 (unfocusZipperList!2038 zl!343)))))

(assert (=> b!6796591 d!2135716))

(declare-fun d!2135718 () Bool)

(assert (=> d!2135718 (= (flatMap!2098 lt!2447279 lambda!383162) (choose!50636 lt!2447279 lambda!383162))))

(declare-fun bs!1811370 () Bool)

(assert (= bs!1811370 d!2135718))

(declare-fun m!7543812 () Bool)

(assert (=> bs!1811370 m!7543812))

(assert (=> d!2135564 d!2135718))

(declare-fun d!2135720 () Bool)

(declare-fun nullableFct!2499 (Regex!16617) Bool)

(assert (=> d!2135720 (= (nullable!6595 (h!72474 (exprs!6501 lt!2447275))) (nullableFct!2499 (h!72474 (exprs!6501 lt!2447275))))))

(declare-fun bs!1811371 () Bool)

(assert (= bs!1811371 d!2135720))

(declare-fun m!7543814 () Bool)

(assert (=> bs!1811371 m!7543814))

(assert (=> b!6796640 d!2135720))

(declare-fun d!2135722 () Bool)

(assert (=> d!2135722 (= (nullable!6595 (h!72474 (exprs!6501 lt!2447263))) (nullableFct!2499 (h!72474 (exprs!6501 lt!2447263))))))

(declare-fun bs!1811372 () Bool)

(assert (= bs!1811372 d!2135722))

(declare-fun m!7543816 () Bool)

(assert (=> bs!1811372 m!7543816))

(assert (=> b!6796545 d!2135722))

(declare-fun d!2135724 () Bool)

(assert (=> d!2135724 (= (isEmpty!38402 (tail!12729 s!2326)) ((_ is Nil!66028) (tail!12729 s!2326)))))

(assert (=> b!6796448 d!2135724))

(assert (=> b!6796448 d!2135700))

(declare-fun e!4102234 () (InoxSet Context!12002))

(declare-fun b!6797092 () Bool)

(declare-fun call!617424 () (InoxSet Context!12002))

(assert (=> b!6797092 (= e!4102234 ((_ map or) call!617424 (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026)))))))) (h!72476 s!2326))))))

(declare-fun b!6797093 () Bool)

(declare-fun e!4102235 () (InoxSet Context!12002))

(assert (=> b!6797093 (= e!4102235 call!617424)))

(declare-fun bm!617419 () Bool)

(assert (=> bm!617419 (= call!617424 (derivationStepZipperDown!1845 (h!72474 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))))) (Context!12003 (t!379877 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026)))))))) (h!72476 s!2326)))))

(declare-fun b!6797094 () Bool)

(assert (=> b!6797094 (= e!4102235 ((as const (Array Context!12002 Bool)) false))))

(declare-fun d!2135726 () Bool)

(declare-fun c!1263663 () Bool)

(declare-fun e!4102233 () Bool)

(assert (=> d!2135726 (= c!1263663 e!4102233)))

(declare-fun res!2777771 () Bool)

(assert (=> d!2135726 (=> (not res!2777771) (not e!4102233))))

(assert (=> d!2135726 (= res!2777771 ((_ is Cons!66026) (exprs!6501 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))))))))

(assert (=> d!2135726 (= (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) (h!72476 s!2326)) e!4102234)))

(declare-fun b!6797095 () Bool)

(assert (=> b!6797095 (= e!4102234 e!4102235)))

(declare-fun c!1263662 () Bool)

(assert (=> b!6797095 (= c!1263662 ((_ is Cons!66026) (exprs!6501 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))))))))

(declare-fun b!6797096 () Bool)

(assert (=> b!6797096 (= e!4102233 (nullable!6595 (h!72474 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026)))))))))))

(assert (= (and d!2135726 res!2777771) b!6797096))

(assert (= (and d!2135726 c!1263663) b!6797092))

(assert (= (and d!2135726 (not c!1263663)) b!6797095))

(assert (= (and b!6797095 c!1263662) b!6797093))

(assert (= (and b!6797095 (not c!1263662)) b!6797094))

(assert (= (or b!6797092 b!6797093) bm!617419))

(declare-fun m!7543818 () Bool)

(assert (=> b!6797092 m!7543818))

(declare-fun m!7543820 () Bool)

(assert (=> bm!617419 m!7543820))

(declare-fun m!7543822 () Bool)

(assert (=> b!6797096 m!7543822))

(assert (=> b!6796250 d!2135726))

(declare-fun bs!1811373 () Bool)

(declare-fun b!6797099 () Bool)

(assert (= bs!1811373 (and b!6797099 d!2135622)))

(declare-fun lambda!383214 () Int)

(assert (=> bs!1811373 (= (and (= (reg!16946 (regTwo!33747 lt!2447264)) (reg!16946 r!7292)) (= (regTwo!33747 lt!2447264) (Star!16617 (reg!16946 r!7292)))) (= lambda!383214 lambda!383199))))

(assert (=> bs!1811373 (not (= lambda!383214 lambda!383196))))

(declare-fun bs!1811374 () Bool)

(assert (= bs!1811374 (and b!6797099 d!2135608)))

(assert (=> bs!1811374 (not (= lambda!383214 lambda!383183))))

(declare-fun bs!1811375 () Bool)

(assert (= bs!1811375 (and b!6797099 b!6796374)))

(assert (=> bs!1811375 (not (= lambda!383214 lambda!383138))))

(declare-fun bs!1811376 () Bool)

(assert (= bs!1811376 (and b!6797099 b!6796162)))

(assert (=> bs!1811376 (= (and (= (reg!16946 (regTwo!33747 lt!2447264)) (reg!16946 r!7292)) (= (regTwo!33747 lt!2447264) r!7292)) (= lambda!383214 lambda!383113))))

(declare-fun bs!1811377 () Bool)

(assert (= bs!1811377 (and b!6797099 b!6796479)))

(assert (=> bs!1811377 (not (= lambda!383214 lambda!383146))))

(assert (=> bs!1811374 (not (= lambda!383214 lambda!383185))))

(assert (=> bs!1811376 (not (= lambda!383214 lambda!383114))))

(assert (=> bs!1811376 (not (= lambda!383214 lambda!383112))))

(declare-fun bs!1811378 () Bool)

(assert (= bs!1811378 (and b!6797099 b!6796480)))

(assert (=> bs!1811378 (= (and (= (reg!16946 (regTwo!33747 lt!2447264)) (reg!16946 r!7292)) (= (regTwo!33747 lt!2447264) r!7292)) (= lambda!383214 lambda!383145))))

(declare-fun bs!1811379 () Bool)

(assert (= bs!1811379 (and b!6797099 d!2135644)))

(assert (=> bs!1811379 (not (= lambda!383214 lambda!383204))))

(declare-fun bs!1811380 () Bool)

(assert (= bs!1811380 (and b!6797099 b!6796375)))

(assert (=> bs!1811380 (= (and (= (reg!16946 (regTwo!33747 lt!2447264)) (reg!16946 lt!2447264)) (= (regTwo!33747 lt!2447264) lt!2447264)) (= lambda!383214 lambda!383137))))

(assert (=> b!6797099 true))

(assert (=> b!6797099 true))

(declare-fun bs!1811381 () Bool)

(declare-fun b!6797098 () Bool)

(assert (= bs!1811381 (and b!6797098 d!2135622)))

(declare-fun lambda!383215 () Int)

(assert (=> bs!1811381 (not (= lambda!383215 lambda!383199))))

(assert (=> bs!1811381 (not (= lambda!383215 lambda!383196))))

(declare-fun bs!1811382 () Bool)

(assert (= bs!1811382 (and b!6797098 d!2135608)))

(assert (=> bs!1811382 (not (= lambda!383215 lambda!383183))))

(declare-fun bs!1811383 () Bool)

(assert (= bs!1811383 (and b!6797098 b!6796374)))

(assert (=> bs!1811383 (= (and (= (regOne!33746 (regTwo!33747 lt!2447264)) (regOne!33746 lt!2447264)) (= (regTwo!33746 (regTwo!33747 lt!2447264)) (regTwo!33746 lt!2447264))) (= lambda!383215 lambda!383138))))

(declare-fun bs!1811384 () Bool)

(assert (= bs!1811384 (and b!6797098 b!6796162)))

(assert (=> bs!1811384 (not (= lambda!383215 lambda!383113))))

(declare-fun bs!1811385 () Bool)

(assert (= bs!1811385 (and b!6797098 b!6796479)))

(assert (=> bs!1811385 (= (and (= (regOne!33746 (regTwo!33747 lt!2447264)) (regOne!33746 r!7292)) (= (regTwo!33746 (regTwo!33747 lt!2447264)) (regTwo!33746 r!7292))) (= lambda!383215 lambda!383146))))

(assert (=> bs!1811384 (= (and (= (regOne!33746 (regTwo!33747 lt!2447264)) (reg!16946 r!7292)) (= (regTwo!33746 (regTwo!33747 lt!2447264)) r!7292)) (= lambda!383215 lambda!383114))))

(assert (=> bs!1811384 (not (= lambda!383215 lambda!383112))))

(declare-fun bs!1811386 () Bool)

(assert (= bs!1811386 (and b!6797098 b!6796480)))

(assert (=> bs!1811386 (not (= lambda!383215 lambda!383145))))

(declare-fun bs!1811387 () Bool)

(assert (= bs!1811387 (and b!6797098 d!2135644)))

(assert (=> bs!1811387 (not (= lambda!383215 lambda!383204))))

(declare-fun bs!1811388 () Bool)

(assert (= bs!1811388 (and b!6797098 b!6796375)))

(assert (=> bs!1811388 (not (= lambda!383215 lambda!383137))))

(assert (=> bs!1811382 (= (and (= (regOne!33746 (regTwo!33747 lt!2447264)) (reg!16946 r!7292)) (= (regTwo!33746 (regTwo!33747 lt!2447264)) r!7292)) (= lambda!383215 lambda!383185))))

(declare-fun bs!1811389 () Bool)

(assert (= bs!1811389 (and b!6797098 b!6797099)))

(assert (=> bs!1811389 (not (= lambda!383215 lambda!383214))))

(assert (=> b!6797098 true))

(assert (=> b!6797098 true))

(declare-fun bm!617420 () Bool)

(declare-fun call!617425 () Bool)

(assert (=> bm!617420 (= call!617425 (isEmpty!38402 s!2326))))

(declare-fun b!6797097 () Bool)

(declare-fun res!2777774 () Bool)

(declare-fun e!4102240 () Bool)

(assert (=> b!6797097 (=> res!2777774 e!4102240)))

(assert (=> b!6797097 (= res!2777774 call!617425)))

(declare-fun e!4102237 () Bool)

(assert (=> b!6797097 (= e!4102237 e!4102240)))

(declare-fun call!617426 () Bool)

(assert (=> b!6797098 (= e!4102237 call!617426)))

(assert (=> b!6797099 (= e!4102240 call!617426)))

(declare-fun b!6797100 () Bool)

(declare-fun e!4102241 () Bool)

(assert (=> b!6797100 (= e!4102241 call!617425)))

(declare-fun d!2135728 () Bool)

(declare-fun c!1263667 () Bool)

(assert (=> d!2135728 (= c!1263667 ((_ is EmptyExpr!16617) (regTwo!33747 lt!2447264)))))

(assert (=> d!2135728 (= (matchRSpec!3718 (regTwo!33747 lt!2447264) s!2326) e!4102241)))

(declare-fun c!1263664 () Bool)

(declare-fun bm!617421 () Bool)

(assert (=> bm!617421 (= call!617426 (Exists!3685 (ite c!1263664 lambda!383214 lambda!383215)))))

(declare-fun b!6797101 () Bool)

(declare-fun e!4102239 () Bool)

(declare-fun e!4102238 () Bool)

(assert (=> b!6797101 (= e!4102239 e!4102238)))

(declare-fun res!2777772 () Bool)

(assert (=> b!6797101 (= res!2777772 (matchRSpec!3718 (regOne!33747 (regTwo!33747 lt!2447264)) s!2326))))

(assert (=> b!6797101 (=> res!2777772 e!4102238)))

(declare-fun b!6797102 () Bool)

(declare-fun c!1263665 () Bool)

(assert (=> b!6797102 (= c!1263665 ((_ is ElementMatch!16617) (regTwo!33747 lt!2447264)))))

(declare-fun e!4102236 () Bool)

(declare-fun e!4102242 () Bool)

(assert (=> b!6797102 (= e!4102236 e!4102242)))

(declare-fun b!6797103 () Bool)

(assert (=> b!6797103 (= e!4102239 e!4102237)))

(assert (=> b!6797103 (= c!1263664 ((_ is Star!16617) (regTwo!33747 lt!2447264)))))

(declare-fun b!6797104 () Bool)

(assert (=> b!6797104 (= e!4102238 (matchRSpec!3718 (regTwo!33747 (regTwo!33747 lt!2447264)) s!2326))))

(declare-fun b!6797105 () Bool)

(declare-fun c!1263666 () Bool)

(assert (=> b!6797105 (= c!1263666 ((_ is Union!16617) (regTwo!33747 lt!2447264)))))

(assert (=> b!6797105 (= e!4102242 e!4102239)))

(declare-fun b!6797106 () Bool)

(assert (=> b!6797106 (= e!4102242 (= s!2326 (Cons!66028 (c!1263403 (regTwo!33747 lt!2447264)) Nil!66028)))))

(declare-fun b!6797107 () Bool)

(assert (=> b!6797107 (= e!4102241 e!4102236)))

(declare-fun res!2777773 () Bool)

(assert (=> b!6797107 (= res!2777773 (not ((_ is EmptyLang!16617) (regTwo!33747 lt!2447264))))))

(assert (=> b!6797107 (=> (not res!2777773) (not e!4102236))))

(assert (= (and d!2135728 c!1263667) b!6797100))

(assert (= (and d!2135728 (not c!1263667)) b!6797107))

(assert (= (and b!6797107 res!2777773) b!6797102))

(assert (= (and b!6797102 c!1263665) b!6797106))

(assert (= (and b!6797102 (not c!1263665)) b!6797105))

(assert (= (and b!6797105 c!1263666) b!6797101))

(assert (= (and b!6797105 (not c!1263666)) b!6797103))

(assert (= (and b!6797101 (not res!2777772)) b!6797104))

(assert (= (and b!6797103 c!1263664) b!6797097))

(assert (= (and b!6797103 (not c!1263664)) b!6797098))

(assert (= (and b!6797097 (not res!2777774)) b!6797099))

(assert (= (or b!6797099 b!6797098) bm!617421))

(assert (= (or b!6797100 b!6797097) bm!617420))

(assert (=> bm!617420 m!7543012))

(declare-fun m!7543824 () Bool)

(assert (=> bm!617421 m!7543824))

(declare-fun m!7543826 () Bool)

(assert (=> b!6797101 m!7543826))

(declare-fun m!7543828 () Bool)

(assert (=> b!6797104 m!7543828))

(assert (=> b!6796380 d!2135728))

(declare-fun d!2135730 () Bool)

(declare-fun lambda!383218 () Int)

(declare-fun exists!2736 ((InoxSet Context!12002) Int) Bool)

(assert (=> d!2135730 (= (nullableZipper!2323 (derivationStepZipper!2561 lt!2447274 (h!72476 s!2326))) (exists!2736 (derivationStepZipper!2561 lt!2447274 (h!72476 s!2326)) lambda!383218))))

(declare-fun bs!1811390 () Bool)

(assert (= bs!1811390 d!2135730))

(assert (=> bs!1811390 m!7543092))

(declare-fun m!7543830 () Bool)

(assert (=> bs!1811390 m!7543830))

(assert (=> b!6796627 d!2135730))

(declare-fun d!2135732 () Bool)

(assert (=> d!2135732 (= (head!13645 (unfocusZipperList!2038 zl!343)) (h!72474 (unfocusZipperList!2038 zl!343)))))

(assert (=> b!6796596 d!2135732))

(declare-fun bs!1811391 () Bool)

(declare-fun b!6797110 () Bool)

(assert (= bs!1811391 (and b!6797110 d!2135622)))

(declare-fun lambda!383219 () Int)

(assert (=> bs!1811391 (= (and (= (reg!16946 (regOne!33747 r!7292)) (reg!16946 r!7292)) (= (regOne!33747 r!7292) (Star!16617 (reg!16946 r!7292)))) (= lambda!383219 lambda!383199))))

(assert (=> bs!1811391 (not (= lambda!383219 lambda!383196))))

(declare-fun bs!1811392 () Bool)

(assert (= bs!1811392 (and b!6797110 d!2135608)))

(assert (=> bs!1811392 (not (= lambda!383219 lambda!383183))))

(declare-fun bs!1811393 () Bool)

(assert (= bs!1811393 (and b!6797110 b!6796374)))

(assert (=> bs!1811393 (not (= lambda!383219 lambda!383138))))

(declare-fun bs!1811394 () Bool)

(assert (= bs!1811394 (and b!6797110 b!6796162)))

(assert (=> bs!1811394 (= (and (= (reg!16946 (regOne!33747 r!7292)) (reg!16946 r!7292)) (= (regOne!33747 r!7292) r!7292)) (= lambda!383219 lambda!383113))))

(assert (=> bs!1811394 (not (= lambda!383219 lambda!383114))))

(assert (=> bs!1811394 (not (= lambda!383219 lambda!383112))))

(declare-fun bs!1811395 () Bool)

(assert (= bs!1811395 (and b!6797110 b!6796480)))

(assert (=> bs!1811395 (= (and (= (reg!16946 (regOne!33747 r!7292)) (reg!16946 r!7292)) (= (regOne!33747 r!7292) r!7292)) (= lambda!383219 lambda!383145))))

(declare-fun bs!1811396 () Bool)

(assert (= bs!1811396 (and b!6797110 b!6797098)))

(assert (=> bs!1811396 (not (= lambda!383219 lambda!383215))))

(declare-fun bs!1811397 () Bool)

(assert (= bs!1811397 (and b!6797110 b!6796479)))

(assert (=> bs!1811397 (not (= lambda!383219 lambda!383146))))

(declare-fun bs!1811398 () Bool)

(assert (= bs!1811398 (and b!6797110 d!2135644)))

(assert (=> bs!1811398 (not (= lambda!383219 lambda!383204))))

(declare-fun bs!1811399 () Bool)

(assert (= bs!1811399 (and b!6797110 b!6796375)))

(assert (=> bs!1811399 (= (and (= (reg!16946 (regOne!33747 r!7292)) (reg!16946 lt!2447264)) (= (regOne!33747 r!7292) lt!2447264)) (= lambda!383219 lambda!383137))))

(assert (=> bs!1811392 (not (= lambda!383219 lambda!383185))))

(declare-fun bs!1811400 () Bool)

(assert (= bs!1811400 (and b!6797110 b!6797099)))

(assert (=> bs!1811400 (= (and (= (reg!16946 (regOne!33747 r!7292)) (reg!16946 (regTwo!33747 lt!2447264))) (= (regOne!33747 r!7292) (regTwo!33747 lt!2447264))) (= lambda!383219 lambda!383214))))

(assert (=> b!6797110 true))

(assert (=> b!6797110 true))

(declare-fun bs!1811401 () Bool)

(declare-fun b!6797109 () Bool)

(assert (= bs!1811401 (and b!6797109 d!2135622)))

(declare-fun lambda!383220 () Int)

(assert (=> bs!1811401 (not (= lambda!383220 lambda!383199))))

(assert (=> bs!1811401 (not (= lambda!383220 lambda!383196))))

(declare-fun bs!1811402 () Bool)

(assert (= bs!1811402 (and b!6797109 b!6797110)))

(assert (=> bs!1811402 (not (= lambda!383220 lambda!383219))))

(declare-fun bs!1811403 () Bool)

(assert (= bs!1811403 (and b!6797109 d!2135608)))

(assert (=> bs!1811403 (not (= lambda!383220 lambda!383183))))

(declare-fun bs!1811404 () Bool)

(assert (= bs!1811404 (and b!6797109 b!6796374)))

(assert (=> bs!1811404 (= (and (= (regOne!33746 (regOne!33747 r!7292)) (regOne!33746 lt!2447264)) (= (regTwo!33746 (regOne!33747 r!7292)) (regTwo!33746 lt!2447264))) (= lambda!383220 lambda!383138))))

(declare-fun bs!1811405 () Bool)

(assert (= bs!1811405 (and b!6797109 b!6796162)))

(assert (=> bs!1811405 (not (= lambda!383220 lambda!383113))))

(assert (=> bs!1811405 (= (and (= (regOne!33746 (regOne!33747 r!7292)) (reg!16946 r!7292)) (= (regTwo!33746 (regOne!33747 r!7292)) r!7292)) (= lambda!383220 lambda!383114))))

(assert (=> bs!1811405 (not (= lambda!383220 lambda!383112))))

(declare-fun bs!1811406 () Bool)

(assert (= bs!1811406 (and b!6797109 b!6796480)))

(assert (=> bs!1811406 (not (= lambda!383220 lambda!383145))))

(declare-fun bs!1811407 () Bool)

(assert (= bs!1811407 (and b!6797109 b!6797098)))

(assert (=> bs!1811407 (= (and (= (regOne!33746 (regOne!33747 r!7292)) (regOne!33746 (regTwo!33747 lt!2447264))) (= (regTwo!33746 (regOne!33747 r!7292)) (regTwo!33746 (regTwo!33747 lt!2447264)))) (= lambda!383220 lambda!383215))))

(declare-fun bs!1811408 () Bool)

(assert (= bs!1811408 (and b!6797109 b!6796479)))

(assert (=> bs!1811408 (= (and (= (regOne!33746 (regOne!33747 r!7292)) (regOne!33746 r!7292)) (= (regTwo!33746 (regOne!33747 r!7292)) (regTwo!33746 r!7292))) (= lambda!383220 lambda!383146))))

(declare-fun bs!1811409 () Bool)

(assert (= bs!1811409 (and b!6797109 d!2135644)))

(assert (=> bs!1811409 (not (= lambda!383220 lambda!383204))))

(declare-fun bs!1811410 () Bool)

(assert (= bs!1811410 (and b!6797109 b!6796375)))

(assert (=> bs!1811410 (not (= lambda!383220 lambda!383137))))

(assert (=> bs!1811403 (= (and (= (regOne!33746 (regOne!33747 r!7292)) (reg!16946 r!7292)) (= (regTwo!33746 (regOne!33747 r!7292)) r!7292)) (= lambda!383220 lambda!383185))))

(declare-fun bs!1811411 () Bool)

(assert (= bs!1811411 (and b!6797109 b!6797099)))

(assert (=> bs!1811411 (not (= lambda!383220 lambda!383214))))

(assert (=> b!6797109 true))

(assert (=> b!6797109 true))

(declare-fun bm!617422 () Bool)

(declare-fun call!617427 () Bool)

(assert (=> bm!617422 (= call!617427 (isEmpty!38402 s!2326))))

(declare-fun b!6797108 () Bool)

(declare-fun res!2777777 () Bool)

(declare-fun e!4102247 () Bool)

(assert (=> b!6797108 (=> res!2777777 e!4102247)))

(assert (=> b!6797108 (= res!2777777 call!617427)))

(declare-fun e!4102244 () Bool)

(assert (=> b!6797108 (= e!4102244 e!4102247)))

(declare-fun call!617428 () Bool)

(assert (=> b!6797109 (= e!4102244 call!617428)))

(assert (=> b!6797110 (= e!4102247 call!617428)))

(declare-fun b!6797111 () Bool)

(declare-fun e!4102248 () Bool)

(assert (=> b!6797111 (= e!4102248 call!617427)))

(declare-fun d!2135734 () Bool)

(declare-fun c!1263673 () Bool)

(assert (=> d!2135734 (= c!1263673 ((_ is EmptyExpr!16617) (regOne!33747 r!7292)))))

(assert (=> d!2135734 (= (matchRSpec!3718 (regOne!33747 r!7292) s!2326) e!4102248)))

(declare-fun bm!617423 () Bool)

(declare-fun c!1263670 () Bool)

(assert (=> bm!617423 (= call!617428 (Exists!3685 (ite c!1263670 lambda!383219 lambda!383220)))))

(declare-fun b!6797112 () Bool)

(declare-fun e!4102246 () Bool)

(declare-fun e!4102245 () Bool)

(assert (=> b!6797112 (= e!4102246 e!4102245)))

(declare-fun res!2777775 () Bool)

(assert (=> b!6797112 (= res!2777775 (matchRSpec!3718 (regOne!33747 (regOne!33747 r!7292)) s!2326))))

(assert (=> b!6797112 (=> res!2777775 e!4102245)))

(declare-fun b!6797113 () Bool)

(declare-fun c!1263671 () Bool)

(assert (=> b!6797113 (= c!1263671 ((_ is ElementMatch!16617) (regOne!33747 r!7292)))))

(declare-fun e!4102243 () Bool)

(declare-fun e!4102249 () Bool)

(assert (=> b!6797113 (= e!4102243 e!4102249)))

(declare-fun b!6797114 () Bool)

(assert (=> b!6797114 (= e!4102246 e!4102244)))

(assert (=> b!6797114 (= c!1263670 ((_ is Star!16617) (regOne!33747 r!7292)))))

(declare-fun b!6797115 () Bool)

(assert (=> b!6797115 (= e!4102245 (matchRSpec!3718 (regTwo!33747 (regOne!33747 r!7292)) s!2326))))

(declare-fun b!6797116 () Bool)

(declare-fun c!1263672 () Bool)

(assert (=> b!6797116 (= c!1263672 ((_ is Union!16617) (regOne!33747 r!7292)))))

(assert (=> b!6797116 (= e!4102249 e!4102246)))

(declare-fun b!6797117 () Bool)

(assert (=> b!6797117 (= e!4102249 (= s!2326 (Cons!66028 (c!1263403 (regOne!33747 r!7292)) Nil!66028)))))

(declare-fun b!6797118 () Bool)

(assert (=> b!6797118 (= e!4102248 e!4102243)))

(declare-fun res!2777776 () Bool)

(assert (=> b!6797118 (= res!2777776 (not ((_ is EmptyLang!16617) (regOne!33747 r!7292))))))

(assert (=> b!6797118 (=> (not res!2777776) (not e!4102243))))

(assert (= (and d!2135734 c!1263673) b!6797111))

(assert (= (and d!2135734 (not c!1263673)) b!6797118))

(assert (= (and b!6797118 res!2777776) b!6797113))

(assert (= (and b!6797113 c!1263671) b!6797117))

(assert (= (and b!6797113 (not c!1263671)) b!6797116))

(assert (= (and b!6797116 c!1263672) b!6797112))

(assert (= (and b!6797116 (not c!1263672)) b!6797114))

(assert (= (and b!6797112 (not res!2777775)) b!6797115))

(assert (= (and b!6797114 c!1263670) b!6797108))

(assert (= (and b!6797114 (not c!1263670)) b!6797109))

(assert (= (and b!6797108 (not res!2777777)) b!6797110))

(assert (= (or b!6797110 b!6797109) bm!617423))

(assert (= (or b!6797111 b!6797108) bm!617422))

(assert (=> bm!617422 m!7543012))

(declare-fun m!7543832 () Bool)

(assert (=> bm!617423 m!7543832))

(declare-fun m!7543834 () Bool)

(assert (=> b!6797112 m!7543834))

(declare-fun m!7543836 () Bool)

(assert (=> b!6797115 m!7543836))

(assert (=> b!6796482 d!2135734))

(declare-fun d!2135736 () Bool)

(assert (=> d!2135736 (= (nullable!6595 (reg!16946 r!7292)) (nullableFct!2499 (reg!16946 r!7292)))))

(declare-fun bs!1811412 () Bool)

(assert (= bs!1811412 d!2135736))

(declare-fun m!7543838 () Bool)

(assert (=> bs!1811412 m!7543838))

(assert (=> b!6796290 d!2135736))

(declare-fun b!6797119 () Bool)

(declare-fun c!1263675 () Bool)

(assert (=> b!6797119 (= c!1263675 ((_ is Star!16617) (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292)))))))

(declare-fun e!4102255 () (InoxSet Context!12002))

(declare-fun e!4102254 () (InoxSet Context!12002))

(assert (=> b!6797119 (= e!4102255 e!4102254)))

(declare-fun b!6797120 () Bool)

(declare-fun e!4102253 () (InoxSet Context!12002))

(declare-fun call!617431 () (InoxSet Context!12002))

(declare-fun call!617429 () (InoxSet Context!12002))

(assert (=> b!6797120 (= e!4102253 ((_ map or) call!617431 call!617429))))

(declare-fun b!6797121 () Bool)

(declare-fun c!1263676 () Bool)

(declare-fun e!4102250 () Bool)

(assert (=> b!6797121 (= c!1263676 e!4102250)))

(declare-fun res!2777778 () Bool)

(assert (=> b!6797121 (=> (not res!2777778) (not e!4102250))))

(assert (=> b!6797121 (= res!2777778 ((_ is Concat!25462) (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292)))))))

(declare-fun e!4102252 () (InoxSet Context!12002))

(assert (=> b!6797121 (= e!4102252 e!4102253)))

(declare-fun b!6797122 () Bool)

(assert (=> b!6797122 (= e!4102250 (nullable!6595 (regOne!33746 (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292))))))))

(declare-fun e!4102251 () (InoxSet Context!12002))

(declare-fun b!6797123 () Bool)

(assert (=> b!6797123 (= e!4102251 (store ((as const (Array Context!12002 Bool)) false) (ite c!1263510 lt!2447275 (Context!12003 call!617365)) true))))

(declare-fun b!6797124 () Bool)

(assert (=> b!6797124 (= e!4102253 e!4102255)))

(declare-fun c!1263678 () Bool)

(assert (=> b!6797124 (= c!1263678 ((_ is Concat!25462) (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292)))))))

(declare-fun bm!617424 () Bool)

(declare-fun call!617434 () List!66150)

(assert (=> bm!617424 (= call!617434 ($colon$colon!2425 (exprs!6501 (ite c!1263510 lt!2447275 (Context!12003 call!617365))) (ite (or c!1263676 c!1263678) (regTwo!33746 (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292)))) (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292))))))))

(declare-fun d!2135738 () Bool)

(declare-fun c!1263674 () Bool)

(assert (=> d!2135738 (= c!1263674 (and ((_ is ElementMatch!16617) (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292)))) (= (c!1263403 (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292)))) (h!72476 s!2326))))))

(assert (=> d!2135738 (= (derivationStepZipperDown!1845 (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292))) (ite c!1263510 lt!2447275 (Context!12003 call!617365)) (h!72476 s!2326)) e!4102251)))

(declare-fun bm!617425 () Bool)

(declare-fun call!617432 () (InoxSet Context!12002))

(assert (=> bm!617425 (= call!617429 call!617432)))

(declare-fun b!6797125 () Bool)

(assert (=> b!6797125 (= e!4102254 ((as const (Array Context!12002 Bool)) false))))

(declare-fun b!6797126 () Bool)

(assert (=> b!6797126 (= e!4102251 e!4102252)))

(declare-fun c!1263677 () Bool)

(assert (=> b!6797126 (= c!1263677 ((_ is Union!16617) (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292)))))))

(declare-fun call!617430 () List!66150)

(declare-fun bm!617426 () Bool)

(assert (=> bm!617426 (= call!617432 (derivationStepZipperDown!1845 (ite c!1263677 (regTwo!33747 (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292)))) (ite c!1263676 (regTwo!33746 (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292)))) (ite c!1263678 (regOne!33746 (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292)))) (reg!16946 (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292))))))) (ite (or c!1263677 c!1263676) (ite c!1263510 lt!2447275 (Context!12003 call!617365)) (Context!12003 call!617430)) (h!72476 s!2326)))))

(declare-fun b!6797127 () Bool)

(assert (=> b!6797127 (= e!4102252 ((_ map or) call!617431 call!617432))))

(declare-fun b!6797128 () Bool)

(declare-fun call!617433 () (InoxSet Context!12002))

(assert (=> b!6797128 (= e!4102255 call!617433)))

(declare-fun bm!617427 () Bool)

(assert (=> bm!617427 (= call!617433 call!617429)))

(declare-fun bm!617428 () Bool)

(assert (=> bm!617428 (= call!617431 (derivationStepZipperDown!1845 (ite c!1263677 (regOne!33747 (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292)))) (regOne!33746 (ite c!1263510 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292))))) (ite c!1263677 (ite c!1263510 lt!2447275 (Context!12003 call!617365)) (Context!12003 call!617434)) (h!72476 s!2326)))))

(declare-fun b!6797129 () Bool)

(assert (=> b!6797129 (= e!4102254 call!617433)))

(declare-fun bm!617429 () Bool)

(assert (=> bm!617429 (= call!617430 call!617434)))

(assert (= (and d!2135738 c!1263674) b!6797123))

(assert (= (and d!2135738 (not c!1263674)) b!6797126))

(assert (= (and b!6797126 c!1263677) b!6797127))

(assert (= (and b!6797126 (not c!1263677)) b!6797121))

(assert (= (and b!6797121 res!2777778) b!6797122))

(assert (= (and b!6797121 c!1263676) b!6797120))

(assert (= (and b!6797121 (not c!1263676)) b!6797124))

(assert (= (and b!6797124 c!1263678) b!6797128))

(assert (= (and b!6797124 (not c!1263678)) b!6797119))

(assert (= (and b!6797119 c!1263675) b!6797129))

(assert (= (and b!6797119 (not c!1263675)) b!6797125))

(assert (= (or b!6797128 b!6797129) bm!617429))

(assert (= (or b!6797128 b!6797129) bm!617427))

(assert (= (or b!6797120 bm!617429) bm!617424))

(assert (= (or b!6797120 bm!617427) bm!617425))

(assert (= (or b!6797127 bm!617425) bm!617426))

(assert (= (or b!6797127 b!6797120) bm!617428))

(declare-fun m!7543840 () Bool)

(assert (=> b!6797122 m!7543840))

(declare-fun m!7543842 () Bool)

(assert (=> bm!617426 m!7543842))

(declare-fun m!7543844 () Bool)

(assert (=> bm!617428 m!7543844))

(declare-fun m!7543846 () Bool)

(assert (=> b!6797123 m!7543846))

(declare-fun m!7543848 () Bool)

(assert (=> bm!617424 m!7543848))

(assert (=> bm!617359 d!2135738))

(declare-fun bm!617430 () Bool)

(declare-fun call!617435 () Bool)

(declare-fun c!1263679 () Bool)

(assert (=> bm!617430 (= call!617435 (validRegex!8353 (ite c!1263679 (regTwo!33747 lt!2447402) (regTwo!33746 lt!2447402))))))

(declare-fun b!6797130 () Bool)

(declare-fun e!4102260 () Bool)

(declare-fun e!4102262 () Bool)

(assert (=> b!6797130 (= e!4102260 e!4102262)))

(declare-fun res!2777781 () Bool)

(assert (=> b!6797130 (= res!2777781 (not (nullable!6595 (reg!16946 lt!2447402))))))

(assert (=> b!6797130 (=> (not res!2777781) (not e!4102262))))

(declare-fun b!6797131 () Bool)

(declare-fun e!4102257 () Bool)

(assert (=> b!6797131 (= e!4102257 call!617435)))

(declare-fun b!6797132 () Bool)

(declare-fun e!4102256 () Bool)

(assert (=> b!6797132 (= e!4102260 e!4102256)))

(assert (=> b!6797132 (= c!1263679 ((_ is Union!16617) lt!2447402))))

(declare-fun b!6797133 () Bool)

(declare-fun res!2777782 () Bool)

(declare-fun e!4102261 () Bool)

(assert (=> b!6797133 (=> (not res!2777782) (not e!4102261))))

(declare-fun call!617436 () Bool)

(assert (=> b!6797133 (= res!2777782 call!617436)))

(assert (=> b!6797133 (= e!4102256 e!4102261)))

(declare-fun b!6797134 () Bool)

(declare-fun e!4102258 () Bool)

(assert (=> b!6797134 (= e!4102258 e!4102260)))

(declare-fun c!1263680 () Bool)

(assert (=> b!6797134 (= c!1263680 ((_ is Star!16617) lt!2447402))))

(declare-fun b!6797135 () Bool)

(declare-fun res!2777783 () Bool)

(declare-fun e!4102259 () Bool)

(assert (=> b!6797135 (=> res!2777783 e!4102259)))

(assert (=> b!6797135 (= res!2777783 (not ((_ is Concat!25462) lt!2447402)))))

(assert (=> b!6797135 (= e!4102256 e!4102259)))

(declare-fun call!617437 () Bool)

(declare-fun bm!617431 () Bool)

(assert (=> bm!617431 (= call!617437 (validRegex!8353 (ite c!1263680 (reg!16946 lt!2447402) (ite c!1263679 (regOne!33747 lt!2447402) (regOne!33746 lt!2447402)))))))

(declare-fun bm!617432 () Bool)

(assert (=> bm!617432 (= call!617436 call!617437)))

(declare-fun b!6797136 () Bool)

(assert (=> b!6797136 (= e!4102261 call!617435)))

(declare-fun d!2135740 () Bool)

(declare-fun res!2777780 () Bool)

(assert (=> d!2135740 (=> res!2777780 e!4102258)))

(assert (=> d!2135740 (= res!2777780 ((_ is ElementMatch!16617) lt!2447402))))

(assert (=> d!2135740 (= (validRegex!8353 lt!2447402) e!4102258)))

(declare-fun b!6797137 () Bool)

(assert (=> b!6797137 (= e!4102262 call!617437)))

(declare-fun b!6797138 () Bool)

(assert (=> b!6797138 (= e!4102259 e!4102257)))

(declare-fun res!2777779 () Bool)

(assert (=> b!6797138 (=> (not res!2777779) (not e!4102257))))

(assert (=> b!6797138 (= res!2777779 call!617436)))

(assert (= (and d!2135740 (not res!2777780)) b!6797134))

(assert (= (and b!6797134 c!1263680) b!6797130))

(assert (= (and b!6797134 (not c!1263680)) b!6797132))

(assert (= (and b!6797130 res!2777781) b!6797137))

(assert (= (and b!6797132 c!1263679) b!6797133))

(assert (= (and b!6797132 (not c!1263679)) b!6797135))

(assert (= (and b!6797133 res!2777782) b!6797136))

(assert (= (and b!6797135 (not res!2777783)) b!6797138))

(assert (= (and b!6797138 res!2777779) b!6797131))

(assert (= (or b!6797136 b!6797131) bm!617430))

(assert (= (or b!6797133 b!6797138) bm!617432))

(assert (= (or b!6797137 bm!617432) bm!617431))

(declare-fun m!7543850 () Bool)

(assert (=> bm!617430 m!7543850))

(declare-fun m!7543852 () Bool)

(assert (=> b!6797130 m!7543852))

(declare-fun m!7543854 () Bool)

(assert (=> bm!617431 m!7543854))

(assert (=> d!2135648 d!2135740))

(declare-fun d!2135742 () Bool)

(declare-fun res!2777788 () Bool)

(declare-fun e!4102267 () Bool)

(assert (=> d!2135742 (=> res!2777788 e!4102267)))

(assert (=> d!2135742 (= res!2777788 ((_ is Nil!66026) (exprs!6501 (h!72475 zl!343))))))

(assert (=> d!2135742 (= (forall!15809 (exprs!6501 (h!72475 zl!343)) lambda!383210) e!4102267)))

(declare-fun b!6797143 () Bool)

(declare-fun e!4102268 () Bool)

(assert (=> b!6797143 (= e!4102267 e!4102268)))

(declare-fun res!2777789 () Bool)

(assert (=> b!6797143 (=> (not res!2777789) (not e!4102268))))

(declare-fun dynLambda!26363 (Int Regex!16617) Bool)

(assert (=> b!6797143 (= res!2777789 (dynLambda!26363 lambda!383210 (h!72474 (exprs!6501 (h!72475 zl!343)))))))

(declare-fun b!6797144 () Bool)

(assert (=> b!6797144 (= e!4102268 (forall!15809 (t!379877 (exprs!6501 (h!72475 zl!343))) lambda!383210))))

(assert (= (and d!2135742 (not res!2777788)) b!6797143))

(assert (= (and b!6797143 res!2777789) b!6797144))

(declare-fun b_lambda!256125 () Bool)

(assert (=> (not b_lambda!256125) (not b!6797143)))

(declare-fun m!7543856 () Bool)

(assert (=> b!6797143 m!7543856))

(declare-fun m!7543858 () Bool)

(assert (=> b!6797144 m!7543858))

(assert (=> d!2135648 d!2135742))

(declare-fun d!2135744 () Bool)

(declare-fun c!1263681 () Bool)

(assert (=> d!2135744 (= c!1263681 (isEmpty!38402 (tail!12729 s!2326)))))

(declare-fun e!4102269 () Bool)

(assert (=> d!2135744 (= (matchZipper!2603 (derivationStepZipper!2561 lt!2447274 (head!13644 s!2326)) (tail!12729 s!2326)) e!4102269)))

(declare-fun b!6797145 () Bool)

(assert (=> b!6797145 (= e!4102269 (nullableZipper!2323 (derivationStepZipper!2561 lt!2447274 (head!13644 s!2326))))))

(declare-fun b!6797146 () Bool)

(assert (=> b!6797146 (= e!4102269 (matchZipper!2603 (derivationStepZipper!2561 (derivationStepZipper!2561 lt!2447274 (head!13644 s!2326)) (head!13644 (tail!12729 s!2326))) (tail!12729 (tail!12729 s!2326))))))

(assert (= (and d!2135744 c!1263681) b!6797145))

(assert (= (and d!2135744 (not c!1263681)) b!6797146))

(assert (=> d!2135744 m!7543256))

(assert (=> d!2135744 m!7543258))

(assert (=> b!6797145 m!7543396))

(declare-fun m!7543860 () Bool)

(assert (=> b!6797145 m!7543860))

(assert (=> b!6797146 m!7543256))

(assert (=> b!6797146 m!7543736))

(assert (=> b!6797146 m!7543396))

(assert (=> b!6797146 m!7543736))

(declare-fun m!7543862 () Bool)

(assert (=> b!6797146 m!7543862))

(assert (=> b!6797146 m!7543256))

(assert (=> b!6797146 m!7543738))

(assert (=> b!6797146 m!7543862))

(assert (=> b!6797146 m!7543738))

(declare-fun m!7543864 () Bool)

(assert (=> b!6797146 m!7543864))

(assert (=> b!6796626 d!2135744))

(declare-fun bs!1811413 () Bool)

(declare-fun d!2135746 () Bool)

(assert (= bs!1811413 (and d!2135746 b!6796135)))

(declare-fun lambda!383221 () Int)

(assert (=> bs!1811413 (= (= (head!13644 s!2326) (h!72476 s!2326)) (= lambda!383221 lambda!383115))))

(declare-fun bs!1811414 () Bool)

(assert (= bs!1811414 (and d!2135746 d!2135470)))

(assert (=> bs!1811414 (= (= (head!13644 s!2326) (h!72476 s!2326)) (= lambda!383221 lambda!383127))))

(declare-fun bs!1811415 () Bool)

(assert (= bs!1811415 (and d!2135746 d!2135560)))

(assert (=> bs!1811415 (= (= (head!13644 s!2326) (h!72476 s!2326)) (= lambda!383221 lambda!383160))))

(declare-fun bs!1811416 () Bool)

(assert (= bs!1811416 (and d!2135746 d!2135564)))

(assert (=> bs!1811416 (= (= (head!13644 s!2326) (h!72476 s!2326)) (= lambda!383221 lambda!383162))))

(assert (=> d!2135746 true))

(assert (=> d!2135746 (= (derivationStepZipper!2561 lt!2447274 (head!13644 s!2326)) (flatMap!2098 lt!2447274 lambda!383221))))

(declare-fun bs!1811417 () Bool)

(assert (= bs!1811417 d!2135746))

(declare-fun m!7543866 () Bool)

(assert (=> bs!1811417 m!7543866))

(assert (=> b!6796626 d!2135746))

(assert (=> b!6796626 d!2135692))

(assert (=> b!6796626 d!2135700))

(declare-fun d!2135748 () Bool)

(assert (=> d!2135748 (= (Exists!3685 (ite c!1263464 lambda!383137 lambda!383138)) (choose!50651 (ite c!1263464 lambda!383137 lambda!383138)))))

(declare-fun bs!1811418 () Bool)

(assert (= bs!1811418 d!2135748))

(declare-fun m!7543868 () Bool)

(assert (=> bs!1811418 m!7543868))

(assert (=> bm!617334 d!2135748))

(declare-fun d!2135750 () Bool)

(assert (=> d!2135750 (= (Exists!3685 lambda!383183) (choose!50651 lambda!383183))))

(declare-fun bs!1811419 () Bool)

(assert (= bs!1811419 d!2135750))

(declare-fun m!7543870 () Bool)

(assert (=> bs!1811419 m!7543870))

(assert (=> d!2135608 d!2135750))

(declare-fun d!2135752 () Bool)

(assert (=> d!2135752 (= (Exists!3685 lambda!383185) (choose!50651 lambda!383185))))

(declare-fun bs!1811420 () Bool)

(assert (= bs!1811420 d!2135752))

(declare-fun m!7543872 () Bool)

(assert (=> bs!1811420 m!7543872))

(assert (=> d!2135608 d!2135752))

(declare-fun bs!1811421 () Bool)

(declare-fun d!2135754 () Bool)

(assert (= bs!1811421 (and d!2135754 d!2135622)))

(declare-fun lambda!383226 () Int)

(assert (=> bs!1811421 (not (= lambda!383226 lambda!383199))))

(assert (=> bs!1811421 (= (= r!7292 (Star!16617 (reg!16946 r!7292))) (= lambda!383226 lambda!383196))))

(declare-fun bs!1811422 () Bool)

(assert (= bs!1811422 (and d!2135754 b!6797110)))

(assert (=> bs!1811422 (not (= lambda!383226 lambda!383219))))

(declare-fun bs!1811423 () Bool)

(assert (= bs!1811423 (and d!2135754 d!2135608)))

(assert (=> bs!1811423 (= lambda!383226 lambda!383183)))

(declare-fun bs!1811424 () Bool)

(assert (= bs!1811424 (and d!2135754 b!6796374)))

(assert (=> bs!1811424 (not (= lambda!383226 lambda!383138))))

(declare-fun bs!1811425 () Bool)

(assert (= bs!1811425 (and d!2135754 b!6796162)))

(assert (=> bs!1811425 (not (= lambda!383226 lambda!383113))))

(assert (=> bs!1811425 (not (= lambda!383226 lambda!383114))))

(declare-fun bs!1811426 () Bool)

(assert (= bs!1811426 (and d!2135754 b!6797109)))

(assert (=> bs!1811426 (not (= lambda!383226 lambda!383220))))

(assert (=> bs!1811425 (= lambda!383226 lambda!383112)))

(declare-fun bs!1811427 () Bool)

(assert (= bs!1811427 (and d!2135754 b!6796480)))

(assert (=> bs!1811427 (not (= lambda!383226 lambda!383145))))

(declare-fun bs!1811428 () Bool)

(assert (= bs!1811428 (and d!2135754 b!6797098)))

(assert (=> bs!1811428 (not (= lambda!383226 lambda!383215))))

(declare-fun bs!1811429 () Bool)

(assert (= bs!1811429 (and d!2135754 b!6796479)))

(assert (=> bs!1811429 (not (= lambda!383226 lambda!383146))))

(declare-fun bs!1811430 () Bool)

(assert (= bs!1811430 (and d!2135754 d!2135644)))

(assert (=> bs!1811430 (= lambda!383226 lambda!383204)))

(declare-fun bs!1811431 () Bool)

(assert (= bs!1811431 (and d!2135754 b!6796375)))

(assert (=> bs!1811431 (not (= lambda!383226 lambda!383137))))

(assert (=> bs!1811423 (not (= lambda!383226 lambda!383185))))

(declare-fun bs!1811432 () Bool)

(assert (= bs!1811432 (and d!2135754 b!6797099)))

(assert (=> bs!1811432 (not (= lambda!383226 lambda!383214))))

(assert (=> d!2135754 true))

(assert (=> d!2135754 true))

(assert (=> d!2135754 true))

(declare-fun lambda!383227 () Int)

(assert (=> bs!1811421 (not (= lambda!383227 lambda!383199))))

(assert (=> bs!1811421 (not (= lambda!383227 lambda!383196))))

(assert (=> bs!1811422 (not (= lambda!383227 lambda!383219))))

(assert (=> bs!1811423 (not (= lambda!383227 lambda!383183))))

(assert (=> bs!1811424 (= (and (= (reg!16946 r!7292) (regOne!33746 lt!2447264)) (= r!7292 (regTwo!33746 lt!2447264))) (= lambda!383227 lambda!383138))))

(assert (=> bs!1811425 (not (= lambda!383227 lambda!383113))))

(assert (=> bs!1811425 (= lambda!383227 lambda!383114)))

(assert (=> bs!1811426 (= (and (= (reg!16946 r!7292) (regOne!33746 (regOne!33747 r!7292))) (= r!7292 (regTwo!33746 (regOne!33747 r!7292)))) (= lambda!383227 lambda!383220))))

(assert (=> bs!1811425 (not (= lambda!383227 lambda!383112))))

(assert (=> bs!1811427 (not (= lambda!383227 lambda!383145))))

(assert (=> bs!1811428 (= (and (= (reg!16946 r!7292) (regOne!33746 (regTwo!33747 lt!2447264))) (= r!7292 (regTwo!33746 (regTwo!33747 lt!2447264)))) (= lambda!383227 lambda!383215))))

(assert (=> bs!1811429 (= (and (= (reg!16946 r!7292) (regOne!33746 r!7292)) (= r!7292 (regTwo!33746 r!7292))) (= lambda!383227 lambda!383146))))

(assert (=> bs!1811430 (not (= lambda!383227 lambda!383204))))

(assert (=> bs!1811431 (not (= lambda!383227 lambda!383137))))

(assert (=> bs!1811423 (= lambda!383227 lambda!383185)))

(assert (=> bs!1811432 (not (= lambda!383227 lambda!383214))))

(declare-fun bs!1811433 () Bool)

(assert (= bs!1811433 d!2135754))

(assert (=> bs!1811433 (not (= lambda!383227 lambda!383226))))

(assert (=> d!2135754 true))

(assert (=> d!2135754 true))

(assert (=> d!2135754 true))

(assert (=> d!2135754 (= (Exists!3685 lambda!383226) (Exists!3685 lambda!383227))))

(assert (=> d!2135754 true))

(declare-fun _$90!2689 () Unit!159925)

(assert (=> d!2135754 (= (choose!50650 (reg!16946 r!7292) r!7292 s!2326) _$90!2689)))

(declare-fun m!7543874 () Bool)

(assert (=> bs!1811433 m!7543874))

(declare-fun m!7543876 () Bool)

(assert (=> bs!1811433 m!7543876))

(assert (=> d!2135608 d!2135754))

(declare-fun bm!617433 () Bool)

(declare-fun call!617438 () Bool)

(declare-fun c!1263682 () Bool)

(assert (=> bm!617433 (= call!617438 (validRegex!8353 (ite c!1263682 (regTwo!33747 (reg!16946 r!7292)) (regTwo!33746 (reg!16946 r!7292)))))))

(declare-fun b!6797155 () Bool)

(declare-fun e!4102278 () Bool)

(declare-fun e!4102280 () Bool)

(assert (=> b!6797155 (= e!4102278 e!4102280)))

(declare-fun res!2777800 () Bool)

(assert (=> b!6797155 (= res!2777800 (not (nullable!6595 (reg!16946 (reg!16946 r!7292)))))))

(assert (=> b!6797155 (=> (not res!2777800) (not e!4102280))))

(declare-fun b!6797156 () Bool)

(declare-fun e!4102275 () Bool)

(assert (=> b!6797156 (= e!4102275 call!617438)))

(declare-fun b!6797157 () Bool)

(declare-fun e!4102274 () Bool)

(assert (=> b!6797157 (= e!4102278 e!4102274)))

(assert (=> b!6797157 (= c!1263682 ((_ is Union!16617) (reg!16946 r!7292)))))

(declare-fun b!6797158 () Bool)

(declare-fun res!2777801 () Bool)

(declare-fun e!4102279 () Bool)

(assert (=> b!6797158 (=> (not res!2777801) (not e!4102279))))

(declare-fun call!617439 () Bool)

(assert (=> b!6797158 (= res!2777801 call!617439)))

(assert (=> b!6797158 (= e!4102274 e!4102279)))

(declare-fun b!6797159 () Bool)

(declare-fun e!4102276 () Bool)

(assert (=> b!6797159 (= e!4102276 e!4102278)))

(declare-fun c!1263683 () Bool)

(assert (=> b!6797159 (= c!1263683 ((_ is Star!16617) (reg!16946 r!7292)))))

(declare-fun b!6797160 () Bool)

(declare-fun res!2777802 () Bool)

(declare-fun e!4102277 () Bool)

(assert (=> b!6797160 (=> res!2777802 e!4102277)))

(assert (=> b!6797160 (= res!2777802 (not ((_ is Concat!25462) (reg!16946 r!7292))))))

(assert (=> b!6797160 (= e!4102274 e!4102277)))

(declare-fun bm!617434 () Bool)

(declare-fun call!617440 () Bool)

(assert (=> bm!617434 (= call!617440 (validRegex!8353 (ite c!1263683 (reg!16946 (reg!16946 r!7292)) (ite c!1263682 (regOne!33747 (reg!16946 r!7292)) (regOne!33746 (reg!16946 r!7292))))))))

(declare-fun bm!617435 () Bool)

(assert (=> bm!617435 (= call!617439 call!617440)))

(declare-fun b!6797161 () Bool)

(assert (=> b!6797161 (= e!4102279 call!617438)))

(declare-fun d!2135756 () Bool)

(declare-fun res!2777799 () Bool)

(assert (=> d!2135756 (=> res!2777799 e!4102276)))

(assert (=> d!2135756 (= res!2777799 ((_ is ElementMatch!16617) (reg!16946 r!7292)))))

(assert (=> d!2135756 (= (validRegex!8353 (reg!16946 r!7292)) e!4102276)))

(declare-fun b!6797162 () Bool)

(assert (=> b!6797162 (= e!4102280 call!617440)))

(declare-fun b!6797163 () Bool)

(assert (=> b!6797163 (= e!4102277 e!4102275)))

(declare-fun res!2777798 () Bool)

(assert (=> b!6797163 (=> (not res!2777798) (not e!4102275))))

(assert (=> b!6797163 (= res!2777798 call!617439)))

(assert (= (and d!2135756 (not res!2777799)) b!6797159))

(assert (= (and b!6797159 c!1263683) b!6797155))

(assert (= (and b!6797159 (not c!1263683)) b!6797157))

(assert (= (and b!6797155 res!2777800) b!6797162))

(assert (= (and b!6797157 c!1263682) b!6797158))

(assert (= (and b!6797157 (not c!1263682)) b!6797160))

(assert (= (and b!6797158 res!2777801) b!6797161))

(assert (= (and b!6797160 (not res!2777802)) b!6797163))

(assert (= (and b!6797163 res!2777798) b!6797156))

(assert (= (or b!6797161 b!6797156) bm!617433))

(assert (= (or b!6797158 b!6797163) bm!617435))

(assert (= (or b!6797162 bm!617435) bm!617434))

(declare-fun m!7543878 () Bool)

(assert (=> bm!617433 m!7543878))

(declare-fun m!7543880 () Bool)

(assert (=> b!6797155 m!7543880))

(declare-fun m!7543882 () Bool)

(assert (=> bm!617434 m!7543882))

(assert (=> d!2135608 d!2135756))

(declare-fun d!2135758 () Bool)

(assert (=> d!2135758 true))

(declare-fun setRes!46566 () Bool)

(assert (=> d!2135758 setRes!46566))

(declare-fun condSetEmpty!46566 () Bool)

(declare-fun res!2777805 () (InoxSet Context!12002))

(assert (=> d!2135758 (= condSetEmpty!46566 (= res!2777805 ((as const (Array Context!12002 Bool)) false)))))

(assert (=> d!2135758 (= (choose!50636 z!1189 lambda!383115) res!2777805)))

(declare-fun setIsEmpty!46566 () Bool)

(assert (=> setIsEmpty!46566 setRes!46566))

(declare-fun setNonEmpty!46566 () Bool)

(declare-fun tp!1861197 () Bool)

(declare-fun e!4102283 () Bool)

(declare-fun setElem!46566 () Context!12002)

(assert (=> setNonEmpty!46566 (= setRes!46566 (and tp!1861197 (inv!84789 setElem!46566) e!4102283))))

(declare-fun setRest!46566 () (InoxSet Context!12002))

(assert (=> setNonEmpty!46566 (= res!2777805 ((_ map or) (store ((as const (Array Context!12002 Bool)) false) setElem!46566 true) setRest!46566))))

(declare-fun b!6797166 () Bool)

(declare-fun tp!1861196 () Bool)

(assert (=> b!6797166 (= e!4102283 tp!1861196)))

(assert (= (and d!2135758 condSetEmpty!46566) setIsEmpty!46566))

(assert (= (and d!2135758 (not condSetEmpty!46566)) setNonEmpty!46566))

(assert (= setNonEmpty!46566 b!6797166))

(declare-fun m!7543884 () Bool)

(assert (=> setNonEmpty!46566 m!7543884))

(assert (=> d!2135454 d!2135758))

(assert (=> d!2135488 d!2135628))

(declare-fun bm!617436 () Bool)

(declare-fun call!617441 () Bool)

(declare-fun c!1263684 () Bool)

(assert (=> bm!617436 (= call!617441 (validRegex!8353 (ite c!1263684 (regTwo!33747 lt!2447264) (regTwo!33746 lt!2447264))))))

(declare-fun b!6797167 () Bool)

(declare-fun e!4102288 () Bool)

(declare-fun e!4102290 () Bool)

(assert (=> b!6797167 (= e!4102288 e!4102290)))

(declare-fun res!2777808 () Bool)

(assert (=> b!6797167 (= res!2777808 (not (nullable!6595 (reg!16946 lt!2447264))))))

(assert (=> b!6797167 (=> (not res!2777808) (not e!4102290))))

(declare-fun b!6797168 () Bool)

(declare-fun e!4102285 () Bool)

(assert (=> b!6797168 (= e!4102285 call!617441)))

(declare-fun b!6797169 () Bool)

(declare-fun e!4102284 () Bool)

(assert (=> b!6797169 (= e!4102288 e!4102284)))

(assert (=> b!6797169 (= c!1263684 ((_ is Union!16617) lt!2447264))))

(declare-fun b!6797170 () Bool)

(declare-fun res!2777809 () Bool)

(declare-fun e!4102289 () Bool)

(assert (=> b!6797170 (=> (not res!2777809) (not e!4102289))))

(declare-fun call!617442 () Bool)

(assert (=> b!6797170 (= res!2777809 call!617442)))

(assert (=> b!6797170 (= e!4102284 e!4102289)))

(declare-fun b!6797171 () Bool)

(declare-fun e!4102286 () Bool)

(assert (=> b!6797171 (= e!4102286 e!4102288)))

(declare-fun c!1263685 () Bool)

(assert (=> b!6797171 (= c!1263685 ((_ is Star!16617) lt!2447264))))

(declare-fun b!6797172 () Bool)

(declare-fun res!2777810 () Bool)

(declare-fun e!4102287 () Bool)

(assert (=> b!6797172 (=> res!2777810 e!4102287)))

(assert (=> b!6797172 (= res!2777810 (not ((_ is Concat!25462) lt!2447264)))))

(assert (=> b!6797172 (= e!4102284 e!4102287)))

(declare-fun bm!617437 () Bool)

(declare-fun call!617443 () Bool)

(assert (=> bm!617437 (= call!617443 (validRegex!8353 (ite c!1263685 (reg!16946 lt!2447264) (ite c!1263684 (regOne!33747 lt!2447264) (regOne!33746 lt!2447264)))))))

(declare-fun bm!617438 () Bool)

(assert (=> bm!617438 (= call!617442 call!617443)))

(declare-fun b!6797173 () Bool)

(assert (=> b!6797173 (= e!4102289 call!617441)))

(declare-fun d!2135760 () Bool)

(declare-fun res!2777807 () Bool)

(assert (=> d!2135760 (=> res!2777807 e!4102286)))

(assert (=> d!2135760 (= res!2777807 ((_ is ElementMatch!16617) lt!2447264))))

(assert (=> d!2135760 (= (validRegex!8353 lt!2447264) e!4102286)))

(declare-fun b!6797174 () Bool)

(assert (=> b!6797174 (= e!4102290 call!617443)))

(declare-fun b!6797175 () Bool)

(assert (=> b!6797175 (= e!4102287 e!4102285)))

(declare-fun res!2777806 () Bool)

(assert (=> b!6797175 (=> (not res!2777806) (not e!4102285))))

(assert (=> b!6797175 (= res!2777806 call!617442)))

(assert (= (and d!2135760 (not res!2777807)) b!6797171))

(assert (= (and b!6797171 c!1263685) b!6797167))

(assert (= (and b!6797171 (not c!1263685)) b!6797169))

(assert (= (and b!6797167 res!2777808) b!6797174))

(assert (= (and b!6797169 c!1263684) b!6797170))

(assert (= (and b!6797169 (not c!1263684)) b!6797172))

(assert (= (and b!6797170 res!2777809) b!6797173))

(assert (= (and b!6797172 (not res!2777810)) b!6797175))

(assert (= (and b!6797175 res!2777806) b!6797168))

(assert (= (or b!6797173 b!6797168) bm!617436))

(assert (= (or b!6797170 b!6797175) bm!617438))

(assert (= (or b!6797174 bm!617438) bm!617437))

(declare-fun m!7543886 () Bool)

(assert (=> bm!617436 m!7543886))

(declare-fun m!7543888 () Bool)

(assert (=> b!6797167 m!7543888))

(declare-fun m!7543890 () Bool)

(assert (=> bm!617437 m!7543890))

(assert (=> d!2135488 d!2135760))

(declare-fun d!2135762 () Bool)

(assert (=> d!2135762 (= (isEmpty!38403 (exprs!6501 (h!72475 zl!343))) ((_ is Nil!66026) (exprs!6501 (h!72475 zl!343))))))

(assert (=> b!6796857 d!2135762))

(declare-fun d!2135764 () Bool)

(assert (=> d!2135764 (forall!15809 (++!14779 (exprs!6501 lt!2447273) lt!2447262) lambda!383117)))

(declare-fun lt!2447413 () Unit!159925)

(assert (=> d!2135764 (= lt!2447413 (choose!50646 (exprs!6501 lt!2447273) lt!2447262 lambda!383117))))

(assert (=> d!2135764 (forall!15809 (exprs!6501 lt!2447273) lambda!383117)))

(assert (=> d!2135764 (= (lemmaConcatPreservesForall!446 (exprs!6501 lt!2447273) lt!2447262 lambda!383117) lt!2447413)))

(declare-fun bs!1811434 () Bool)

(assert (= bs!1811434 d!2135764))

(assert (=> bs!1811434 m!7543696))

(assert (=> bs!1811434 m!7543696))

(declare-fun m!7543892 () Bool)

(assert (=> bs!1811434 m!7543892))

(declare-fun m!7543894 () Bool)

(assert (=> bs!1811434 m!7543894))

(declare-fun m!7543896 () Bool)

(assert (=> bs!1811434 m!7543896))

(assert (=> bs!1811338 d!2135764))

(declare-fun lt!2447414 () List!66150)

(declare-fun e!4102292 () Bool)

(declare-fun b!6797179 () Bool)

(assert (=> b!6797179 (= e!4102292 (or (not (= lt!2447262 Nil!66026)) (= lt!2447414 (exprs!6501 lt!2447273))))))

(declare-fun b!6797177 () Bool)

(declare-fun e!4102291 () List!66150)

(assert (=> b!6797177 (= e!4102291 (Cons!66026 (h!72474 (exprs!6501 lt!2447273)) (++!14779 (t!379877 (exprs!6501 lt!2447273)) lt!2447262)))))

(declare-fun b!6797178 () Bool)

(declare-fun res!2777811 () Bool)

(assert (=> b!6797178 (=> (not res!2777811) (not e!4102292))))

(assert (=> b!6797178 (= res!2777811 (= (size!40656 lt!2447414) (+ (size!40656 (exprs!6501 lt!2447273)) (size!40656 lt!2447262))))))

(declare-fun b!6797176 () Bool)

(assert (=> b!6797176 (= e!4102291 lt!2447262)))

(declare-fun d!2135766 () Bool)

(assert (=> d!2135766 e!4102292))

(declare-fun res!2777812 () Bool)

(assert (=> d!2135766 (=> (not res!2777812) (not e!4102292))))

(assert (=> d!2135766 (= res!2777812 (= (content!12885 lt!2447414) ((_ map or) (content!12885 (exprs!6501 lt!2447273)) (content!12885 lt!2447262))))))

(assert (=> d!2135766 (= lt!2447414 e!4102291)))

(declare-fun c!1263686 () Bool)

(assert (=> d!2135766 (= c!1263686 ((_ is Nil!66026) (exprs!6501 lt!2447273)))))

(assert (=> d!2135766 (= (++!14779 (exprs!6501 lt!2447273) lt!2447262) lt!2447414)))

(assert (= (and d!2135766 c!1263686) b!6797176))

(assert (= (and d!2135766 (not c!1263686)) b!6797177))

(assert (= (and d!2135766 res!2777812) b!6797178))

(assert (= (and b!6797178 res!2777811) b!6797179))

(declare-fun m!7543898 () Bool)

(assert (=> b!6797177 m!7543898))

(declare-fun m!7543900 () Bool)

(assert (=> b!6797178 m!7543900))

(declare-fun m!7543902 () Bool)

(assert (=> b!6797178 m!7543902))

(assert (=> b!6797178 m!7543462))

(declare-fun m!7543904 () Bool)

(assert (=> d!2135766 m!7543904))

(declare-fun m!7543906 () Bool)

(assert (=> d!2135766 m!7543906))

(assert (=> d!2135766 m!7543468))

(assert (=> bs!1811338 d!2135766))

(declare-fun d!2135768 () Bool)

(declare-fun c!1263689 () Bool)

(assert (=> d!2135768 (= c!1263689 ((_ is Nil!66026) lt!2447344))))

(declare-fun e!4102295 () (InoxSet Regex!16617))

(assert (=> d!2135768 (= (content!12885 lt!2447344) e!4102295)))

(declare-fun b!6797184 () Bool)

(assert (=> b!6797184 (= e!4102295 ((as const (Array Regex!16617 Bool)) false))))

(declare-fun b!6797185 () Bool)

(assert (=> b!6797185 (= e!4102295 ((_ map or) (store ((as const (Array Regex!16617 Bool)) false) (h!72474 lt!2447344) true) (content!12885 (t!379877 lt!2447344))))))

(assert (= (and d!2135768 c!1263689) b!6797184))

(assert (= (and d!2135768 (not c!1263689)) b!6797185))

(declare-fun m!7543908 () Bool)

(assert (=> b!6797185 m!7543908))

(declare-fun m!7543910 () Bool)

(assert (=> b!6797185 m!7543910))

(assert (=> d!2135580 d!2135768))

(declare-fun d!2135770 () Bool)

(declare-fun c!1263690 () Bool)

(assert (=> d!2135770 (= c!1263690 ((_ is Nil!66026) (Cons!66026 (reg!16946 r!7292) Nil!66026)))))

(declare-fun e!4102296 () (InoxSet Regex!16617))

(assert (=> d!2135770 (= (content!12885 (Cons!66026 (reg!16946 r!7292) Nil!66026)) e!4102296)))

(declare-fun b!6797186 () Bool)

(assert (=> b!6797186 (= e!4102296 ((as const (Array Regex!16617 Bool)) false))))

(declare-fun b!6797187 () Bool)

(assert (=> b!6797187 (= e!4102296 ((_ map or) (store ((as const (Array Regex!16617 Bool)) false) (h!72474 (Cons!66026 (reg!16946 r!7292) Nil!66026)) true) (content!12885 (t!379877 (Cons!66026 (reg!16946 r!7292) Nil!66026)))))))

(assert (= (and d!2135770 c!1263690) b!6797186))

(assert (= (and d!2135770 (not c!1263690)) b!6797187))

(declare-fun m!7543912 () Bool)

(assert (=> b!6797187 m!7543912))

(declare-fun m!7543914 () Bool)

(assert (=> b!6797187 m!7543914))

(assert (=> d!2135580 d!2135770))

(declare-fun d!2135772 () Bool)

(declare-fun c!1263691 () Bool)

(assert (=> d!2135772 (= c!1263691 ((_ is Nil!66026) lt!2447262))))

(declare-fun e!4102297 () (InoxSet Regex!16617))

(assert (=> d!2135772 (= (content!12885 lt!2447262) e!4102297)))

(declare-fun b!6797188 () Bool)

(assert (=> b!6797188 (= e!4102297 ((as const (Array Regex!16617 Bool)) false))))

(declare-fun b!6797189 () Bool)

(assert (=> b!6797189 (= e!4102297 ((_ map or) (store ((as const (Array Regex!16617 Bool)) false) (h!72474 lt!2447262) true) (content!12885 (t!379877 lt!2447262))))))

(assert (= (and d!2135772 c!1263691) b!6797188))

(assert (= (and d!2135772 (not c!1263691)) b!6797189))

(declare-fun m!7543916 () Bool)

(assert (=> b!6797189 m!7543916))

(declare-fun m!7543918 () Bool)

(assert (=> b!6797189 m!7543918))

(assert (=> d!2135580 d!2135772))

(declare-fun b!6797190 () Bool)

(declare-fun c!1263693 () Bool)

(assert (=> b!6797190 (= c!1263693 ((_ is Star!16617) (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292)))))))))

(declare-fun e!4102303 () (InoxSet Context!12002))

(declare-fun e!4102302 () (InoxSet Context!12002))

(assert (=> b!6797190 (= e!4102303 e!4102302)))

(declare-fun b!6797191 () Bool)

(declare-fun e!4102301 () (InoxSet Context!12002))

(declare-fun call!617446 () (InoxSet Context!12002))

(declare-fun call!617444 () (InoxSet Context!12002))

(assert (=> b!6797191 (= e!4102301 ((_ map or) call!617446 call!617444))))

(declare-fun b!6797192 () Bool)

(declare-fun c!1263694 () Bool)

(declare-fun e!4102298 () Bool)

(assert (=> b!6797192 (= c!1263694 e!4102298)))

(declare-fun res!2777813 () Bool)

(assert (=> b!6797192 (=> (not res!2777813) (not e!4102298))))

(assert (=> b!6797192 (= res!2777813 ((_ is Concat!25462) (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292)))))))))

(declare-fun e!4102300 () (InoxSet Context!12002))

(assert (=> b!6797192 (= e!4102300 e!4102301)))

(declare-fun b!6797193 () Bool)

(assert (=> b!6797193 (= e!4102298 (nullable!6595 (regOne!33746 (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292))))))))))

(declare-fun b!6797194 () Bool)

(declare-fun e!4102299 () (InoxSet Context!12002))

(assert (=> b!6797194 (= e!4102299 (store ((as const (Array Context!12002 Bool)) false) (ite (or c!1263510 c!1263509) lt!2447275 (Context!12003 call!617361)) true))))

(declare-fun b!6797195 () Bool)

(assert (=> b!6797195 (= e!4102301 e!4102303)))

(declare-fun c!1263696 () Bool)

(assert (=> b!6797195 (= c!1263696 ((_ is Concat!25462) (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292)))))))))

(declare-fun bm!617439 () Bool)

(declare-fun call!617449 () List!66150)

(assert (=> bm!617439 (= call!617449 ($colon$colon!2425 (exprs!6501 (ite (or c!1263510 c!1263509) lt!2447275 (Context!12003 call!617361))) (ite (or c!1263694 c!1263696) (regTwo!33746 (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292)))))) (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292))))))))))

(declare-fun d!2135774 () Bool)

(declare-fun c!1263692 () Bool)

(assert (=> d!2135774 (= c!1263692 (and ((_ is ElementMatch!16617) (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292)))))) (= (c!1263403 (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292)))))) (h!72476 s!2326))))))

(assert (=> d!2135774 (= (derivationStepZipperDown!1845 (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292))))) (ite (or c!1263510 c!1263509) lt!2447275 (Context!12003 call!617361)) (h!72476 s!2326)) e!4102299)))

(declare-fun bm!617440 () Bool)

(declare-fun call!617447 () (InoxSet Context!12002))

(assert (=> bm!617440 (= call!617444 call!617447)))

(declare-fun b!6797196 () Bool)

(assert (=> b!6797196 (= e!4102302 ((as const (Array Context!12002 Bool)) false))))

(declare-fun b!6797197 () Bool)

(assert (=> b!6797197 (= e!4102299 e!4102300)))

(declare-fun c!1263695 () Bool)

(assert (=> b!6797197 (= c!1263695 ((_ is Union!16617) (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292)))))))))

(declare-fun bm!617441 () Bool)

(declare-fun call!617445 () List!66150)

(assert (=> bm!617441 (= call!617447 (derivationStepZipperDown!1845 (ite c!1263695 (regTwo!33747 (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292)))))) (ite c!1263694 (regTwo!33746 (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292)))))) (ite c!1263696 (regOne!33746 (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292)))))) (reg!16946 (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292))))))))) (ite (or c!1263695 c!1263694) (ite (or c!1263510 c!1263509) lt!2447275 (Context!12003 call!617361)) (Context!12003 call!617445)) (h!72476 s!2326)))))

(declare-fun b!6797198 () Bool)

(assert (=> b!6797198 (= e!4102300 ((_ map or) call!617446 call!617447))))

(declare-fun b!6797199 () Bool)

(declare-fun call!617448 () (InoxSet Context!12002))

(assert (=> b!6797199 (= e!4102303 call!617448)))

(declare-fun bm!617442 () Bool)

(assert (=> bm!617442 (= call!617448 call!617444)))

(declare-fun bm!617443 () Bool)

(assert (=> bm!617443 (= call!617446 (derivationStepZipperDown!1845 (ite c!1263695 (regOne!33747 (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292)))))) (regOne!33746 (ite c!1263510 (regTwo!33747 (reg!16946 r!7292)) (ite c!1263509 (regTwo!33746 (reg!16946 r!7292)) (ite c!1263511 (regOne!33746 (reg!16946 r!7292)) (reg!16946 (reg!16946 r!7292))))))) (ite c!1263695 (ite (or c!1263510 c!1263509) lt!2447275 (Context!12003 call!617361)) (Context!12003 call!617449)) (h!72476 s!2326)))))

(declare-fun b!6797200 () Bool)

(assert (=> b!6797200 (= e!4102302 call!617448)))

(declare-fun bm!617444 () Bool)

(assert (=> bm!617444 (= call!617445 call!617449)))

(assert (= (and d!2135774 c!1263692) b!6797194))

(assert (= (and d!2135774 (not c!1263692)) b!6797197))

(assert (= (and b!6797197 c!1263695) b!6797198))

(assert (= (and b!6797197 (not c!1263695)) b!6797192))

(assert (= (and b!6797192 res!2777813) b!6797193))

(assert (= (and b!6797192 c!1263694) b!6797191))

(assert (= (and b!6797192 (not c!1263694)) b!6797195))

(assert (= (and b!6797195 c!1263696) b!6797199))

(assert (= (and b!6797195 (not c!1263696)) b!6797190))

(assert (= (and b!6797190 c!1263693) b!6797200))

(assert (= (and b!6797190 (not c!1263693)) b!6797196))

(assert (= (or b!6797199 b!6797200) bm!617444))

(assert (= (or b!6797199 b!6797200) bm!617442))

(assert (= (or b!6797191 bm!617444) bm!617439))

(assert (= (or b!6797191 bm!617442) bm!617440))

(assert (= (or b!6797198 bm!617440) bm!617441))

(assert (= (or b!6797198 b!6797191) bm!617443))

(declare-fun m!7543920 () Bool)

(assert (=> b!6797193 m!7543920))

(declare-fun m!7543922 () Bool)

(assert (=> bm!617441 m!7543922))

(declare-fun m!7543924 () Bool)

(assert (=> bm!617443 m!7543924))

(declare-fun m!7543926 () Bool)

(assert (=> b!6797194 m!7543926))

(declare-fun m!7543928 () Bool)

(assert (=> bm!617439 m!7543928))

(assert (=> bm!617357 d!2135774))

(declare-fun d!2135776 () Bool)

(assert (=> d!2135776 (= (flatMap!2098 z!1189 lambda!383127) (choose!50636 z!1189 lambda!383127))))

(declare-fun bs!1811435 () Bool)

(assert (= bs!1811435 d!2135776))

(declare-fun m!7543930 () Bool)

(assert (=> bs!1811435 m!7543930))

(assert (=> d!2135470 d!2135776))

(assert (=> b!6796441 d!2135692))

(declare-fun bs!1811436 () Bool)

(declare-fun d!2135778 () Bool)

(assert (= bs!1811436 (and d!2135778 b!6796140)))

(declare-fun lambda!383228 () Int)

(assert (=> bs!1811436 (= lambda!383228 lambda!383117)))

(declare-fun bs!1811437 () Bool)

(assert (= bs!1811437 (and d!2135778 d!2135578)))

(assert (=> bs!1811437 (= lambda!383228 lambda!383167)))

(declare-fun bs!1811438 () Bool)

(assert (= bs!1811438 (and d!2135778 d!2135542)))

(assert (=> bs!1811438 (= lambda!383228 lambda!383157)))

(declare-fun bs!1811439 () Bool)

(assert (= bs!1811439 (and d!2135778 d!2135708)))

(assert (=> bs!1811439 (= lambda!383228 lambda!383212)))

(declare-fun bs!1811440 () Bool)

(assert (= bs!1811440 (and d!2135778 d!2135538)))

(assert (=> bs!1811440 (= lambda!383228 lambda!383151)))

(declare-fun bs!1811441 () Bool)

(assert (= bs!1811441 (and d!2135778 d!2135604)))

(assert (=> bs!1811441 (= lambda!383228 lambda!383176)))

(declare-fun bs!1811442 () Bool)

(assert (= bs!1811442 (and d!2135778 d!2135474)))

(assert (=> bs!1811442 (= lambda!383228 lambda!383130)))

(declare-fun bs!1811443 () Bool)

(assert (= bs!1811443 (and d!2135778 d!2135710)))

(assert (=> bs!1811443 (= lambda!383228 lambda!383213)))

(declare-fun bs!1811444 () Bool)

(assert (= bs!1811444 (and d!2135778 d!2135648)))

(assert (=> bs!1811444 (= lambda!383228 lambda!383210)))

(declare-fun b!6797201 () Bool)

(declare-fun e!4102309 () Bool)

(declare-fun lt!2447415 () Regex!16617)

(assert (=> b!6797201 (= e!4102309 (isEmptyExpr!1975 lt!2447415))))

(declare-fun b!6797202 () Bool)

(declare-fun e!4102308 () Regex!16617)

(assert (=> b!6797202 (= e!4102308 EmptyExpr!16617)))

(declare-fun b!6797203 () Bool)

(declare-fun e!4102306 () Regex!16617)

(assert (=> b!6797203 (= e!4102306 e!4102308)))

(declare-fun c!1263697 () Bool)

(assert (=> b!6797203 (= c!1263697 ((_ is Cons!66026) (t!379877 (exprs!6501 (h!72475 zl!343)))))))

(declare-fun b!6797204 () Bool)

(assert (=> b!6797204 (= e!4102308 (Concat!25462 (h!72474 (t!379877 (exprs!6501 (h!72475 zl!343)))) (generalisedConcat!2214 (t!379877 (t!379877 (exprs!6501 (h!72475 zl!343)))))))))

(declare-fun e!4102304 () Bool)

(assert (=> d!2135778 e!4102304))

(declare-fun res!2777814 () Bool)

(assert (=> d!2135778 (=> (not res!2777814) (not e!4102304))))

(assert (=> d!2135778 (= res!2777814 (validRegex!8353 lt!2447415))))

(assert (=> d!2135778 (= lt!2447415 e!4102306)))

(declare-fun c!1263699 () Bool)

(declare-fun e!4102307 () Bool)

(assert (=> d!2135778 (= c!1263699 e!4102307)))

(declare-fun res!2777815 () Bool)

(assert (=> d!2135778 (=> (not res!2777815) (not e!4102307))))

(assert (=> d!2135778 (= res!2777815 ((_ is Cons!66026) (t!379877 (exprs!6501 (h!72475 zl!343)))))))

(assert (=> d!2135778 (forall!15809 (t!379877 (exprs!6501 (h!72475 zl!343))) lambda!383228)))

(assert (=> d!2135778 (= (generalisedConcat!2214 (t!379877 (exprs!6501 (h!72475 zl!343)))) lt!2447415)))

(declare-fun b!6797205 () Bool)

(declare-fun e!4102305 () Bool)

(assert (=> b!6797205 (= e!4102309 e!4102305)))

(declare-fun c!1263698 () Bool)

(assert (=> b!6797205 (= c!1263698 (isEmpty!38403 (tail!12730 (t!379877 (exprs!6501 (h!72475 zl!343))))))))

(declare-fun b!6797206 () Bool)

(assert (=> b!6797206 (= e!4102305 (= lt!2447415 (head!13645 (t!379877 (exprs!6501 (h!72475 zl!343))))))))

(declare-fun b!6797207 () Bool)

(assert (=> b!6797207 (= e!4102305 (isConcat!1498 lt!2447415))))

(declare-fun b!6797208 () Bool)

(assert (=> b!6797208 (= e!4102304 e!4102309)))

(declare-fun c!1263700 () Bool)

(assert (=> b!6797208 (= c!1263700 (isEmpty!38403 (t!379877 (exprs!6501 (h!72475 zl!343)))))))

(declare-fun b!6797209 () Bool)

(assert (=> b!6797209 (= e!4102307 (isEmpty!38403 (t!379877 (t!379877 (exprs!6501 (h!72475 zl!343))))))))

(declare-fun b!6797210 () Bool)

(assert (=> b!6797210 (= e!4102306 (h!72474 (t!379877 (exprs!6501 (h!72475 zl!343)))))))

(assert (= (and d!2135778 res!2777815) b!6797209))

(assert (= (and d!2135778 c!1263699) b!6797210))

(assert (= (and d!2135778 (not c!1263699)) b!6797203))

(assert (= (and b!6797203 c!1263697) b!6797204))

(assert (= (and b!6797203 (not c!1263697)) b!6797202))

(assert (= (and d!2135778 res!2777814) b!6797208))

(assert (= (and b!6797208 c!1263700) b!6797201))

(assert (= (and b!6797208 (not c!1263700)) b!6797205))

(assert (= (and b!6797205 c!1263698) b!6797206))

(assert (= (and b!6797205 (not c!1263698)) b!6797207))

(declare-fun m!7543932 () Bool)

(assert (=> b!6797206 m!7543932))

(declare-fun m!7543934 () Bool)

(assert (=> b!6797209 m!7543934))

(declare-fun m!7543936 () Bool)

(assert (=> b!6797207 m!7543936))

(assert (=> b!6797208 m!7543652))

(declare-fun m!7543938 () Bool)

(assert (=> d!2135778 m!7543938))

(declare-fun m!7543940 () Bool)

(assert (=> d!2135778 m!7543940))

(declare-fun m!7543942 () Bool)

(assert (=> b!6797205 m!7543942))

(assert (=> b!6797205 m!7543942))

(declare-fun m!7543944 () Bool)

(assert (=> b!6797205 m!7543944))

(declare-fun m!7543946 () Bool)

(assert (=> b!6797201 m!7543946))

(declare-fun m!7543948 () Bool)

(assert (=> b!6797204 m!7543948))

(assert (=> b!6796853 d!2135778))

(declare-fun d!2135780 () Bool)

(assert (=> d!2135780 (= (isEmpty!38405 (findConcatSeparation!2918 (reg!16946 r!7292) r!7292 Nil!66028 s!2326 s!2326)) (not ((_ is Some!16503) (findConcatSeparation!2918 (reg!16946 r!7292) r!7292 Nil!66028 s!2326 s!2326))))))

(assert (=> d!2135606 d!2135780))

(declare-fun d!2135782 () Bool)

(assert (=> d!2135782 (= (isDefined!13207 lt!2447388) (not (isEmpty!38405 lt!2447388)))))

(declare-fun bs!1811445 () Bool)

(assert (= bs!1811445 d!2135782))

(declare-fun m!7543950 () Bool)

(assert (=> bs!1811445 m!7543950))

(assert (=> b!6796785 d!2135782))

(declare-fun d!2135784 () Bool)

(assert (=> d!2135784 (= (nullable!6595 (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) (nullableFct!2499 (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))))))

(declare-fun bs!1811446 () Bool)

(assert (= bs!1811446 d!2135784))

(declare-fun m!7543952 () Bool)

(assert (=> bs!1811446 m!7543952))

(assert (=> b!6796254 d!2135784))

(declare-fun d!2135786 () Bool)

(assert (=> d!2135786 (= (flatMap!2098 lt!2447274 lambda!383160) (choose!50636 lt!2447274 lambda!383160))))

(declare-fun bs!1811447 () Bool)

(assert (= bs!1811447 d!2135786))

(declare-fun m!7543954 () Bool)

(assert (=> bs!1811447 m!7543954))

(assert (=> d!2135560 d!2135786))

(declare-fun d!2135788 () Bool)

(assert (=> d!2135788 (= (isUnion!1412 lt!2447322) ((_ is Union!16617) lt!2447322))))

(assert (=> b!6796592 d!2135788))

(declare-fun d!2135790 () Bool)

(assert (=> d!2135790 (= ($colon$colon!2425 (exprs!6501 lt!2447275) (ite (or c!1263509 c!1263511) (regTwo!33746 (reg!16946 r!7292)) (reg!16946 r!7292))) (Cons!66026 (ite (or c!1263509 c!1263511) (regTwo!33746 (reg!16946 r!7292)) (reg!16946 r!7292)) (exprs!6501 lt!2447275)))))

(assert (=> bm!617355 d!2135790))

(declare-fun b!6797211 () Bool)

(declare-fun e!4102313 () Bool)

(assert (=> b!6797211 (= e!4102313 (= (head!13644 (_1!36895 (get!22994 lt!2447388))) (c!1263403 (reg!16946 r!7292))))))

(declare-fun b!6797212 () Bool)

(declare-fun e!4102314 () Bool)

(assert (=> b!6797212 (= e!4102314 (matchR!8800 (derivativeStep!5281 (reg!16946 r!7292) (head!13644 (_1!36895 (get!22994 lt!2447388)))) (tail!12729 (_1!36895 (get!22994 lt!2447388)))))))

(declare-fun b!6797213 () Bool)

(declare-fun e!4102312 () Bool)

(assert (=> b!6797213 (= e!4102312 (not (= (head!13644 (_1!36895 (get!22994 lt!2447388))) (c!1263403 (reg!16946 r!7292)))))))

(declare-fun b!6797214 () Bool)

(declare-fun res!2777823 () Bool)

(assert (=> b!6797214 (=> (not res!2777823) (not e!4102313))))

(declare-fun call!617450 () Bool)

(assert (=> b!6797214 (= res!2777823 (not call!617450))))

(declare-fun bm!617445 () Bool)

(assert (=> bm!617445 (= call!617450 (isEmpty!38402 (_1!36895 (get!22994 lt!2447388))))))

(declare-fun b!6797215 () Bool)

(declare-fun e!4102316 () Bool)

(assert (=> b!6797215 (= e!4102316 e!4102312)))

(declare-fun res!2777816 () Bool)

(assert (=> b!6797215 (=> res!2777816 e!4102312)))

(assert (=> b!6797215 (= res!2777816 call!617450)))

(declare-fun b!6797216 () Bool)

(declare-fun e!4102315 () Bool)

(declare-fun e!4102310 () Bool)

(assert (=> b!6797216 (= e!4102315 e!4102310)))

(declare-fun c!1263703 () Bool)

(assert (=> b!6797216 (= c!1263703 ((_ is EmptyLang!16617) (reg!16946 r!7292)))))

(declare-fun b!6797217 () Bool)

(declare-fun lt!2447416 () Bool)

(assert (=> b!6797217 (= e!4102310 (not lt!2447416))))

(declare-fun d!2135792 () Bool)

(assert (=> d!2135792 e!4102315))

(declare-fun c!1263702 () Bool)

(assert (=> d!2135792 (= c!1263702 ((_ is EmptyExpr!16617) (reg!16946 r!7292)))))

(assert (=> d!2135792 (= lt!2447416 e!4102314)))

(declare-fun c!1263701 () Bool)

(assert (=> d!2135792 (= c!1263701 (isEmpty!38402 (_1!36895 (get!22994 lt!2447388))))))

(assert (=> d!2135792 (validRegex!8353 (reg!16946 r!7292))))

(assert (=> d!2135792 (= (matchR!8800 (reg!16946 r!7292) (_1!36895 (get!22994 lt!2447388))) lt!2447416)))

(declare-fun b!6797218 () Bool)

(assert (=> b!6797218 (= e!4102315 (= lt!2447416 call!617450))))

(declare-fun b!6797219 () Bool)

(assert (=> b!6797219 (= e!4102314 (nullable!6595 (reg!16946 r!7292)))))

(declare-fun b!6797220 () Bool)

(declare-fun res!2777819 () Bool)

(assert (=> b!6797220 (=> (not res!2777819) (not e!4102313))))

(assert (=> b!6797220 (= res!2777819 (isEmpty!38402 (tail!12729 (_1!36895 (get!22994 lt!2447388)))))))

(declare-fun b!6797221 () Bool)

(declare-fun res!2777820 () Bool)

(declare-fun e!4102311 () Bool)

(assert (=> b!6797221 (=> res!2777820 e!4102311)))

(assert (=> b!6797221 (= res!2777820 e!4102313)))

(declare-fun res!2777818 () Bool)

(assert (=> b!6797221 (=> (not res!2777818) (not e!4102313))))

(assert (=> b!6797221 (= res!2777818 lt!2447416)))

(declare-fun b!6797222 () Bool)

(declare-fun res!2777822 () Bool)

(assert (=> b!6797222 (=> res!2777822 e!4102311)))

(assert (=> b!6797222 (= res!2777822 (not ((_ is ElementMatch!16617) (reg!16946 r!7292))))))

(assert (=> b!6797222 (= e!4102310 e!4102311)))

(declare-fun b!6797223 () Bool)

(declare-fun res!2777817 () Bool)

(assert (=> b!6797223 (=> res!2777817 e!4102312)))

(assert (=> b!6797223 (= res!2777817 (not (isEmpty!38402 (tail!12729 (_1!36895 (get!22994 lt!2447388))))))))

(declare-fun b!6797224 () Bool)

(assert (=> b!6797224 (= e!4102311 e!4102316)))

(declare-fun res!2777821 () Bool)

(assert (=> b!6797224 (=> (not res!2777821) (not e!4102316))))

(assert (=> b!6797224 (= res!2777821 (not lt!2447416))))

(assert (= (and d!2135792 c!1263701) b!6797219))

(assert (= (and d!2135792 (not c!1263701)) b!6797212))

(assert (= (and d!2135792 c!1263702) b!6797218))

(assert (= (and d!2135792 (not c!1263702)) b!6797216))

(assert (= (and b!6797216 c!1263703) b!6797217))

(assert (= (and b!6797216 (not c!1263703)) b!6797222))

(assert (= (and b!6797222 (not res!2777822)) b!6797221))

(assert (= (and b!6797221 res!2777818) b!6797214))

(assert (= (and b!6797214 res!2777823) b!6797220))

(assert (= (and b!6797220 res!2777819) b!6797211))

(assert (= (and b!6797221 (not res!2777820)) b!6797224))

(assert (= (and b!6797224 res!2777821) b!6797215))

(assert (= (and b!6797215 (not res!2777816)) b!6797223))

(assert (= (and b!6797223 (not res!2777817)) b!6797213))

(assert (= (or b!6797218 b!6797214 b!6797215) bm!617445))

(declare-fun m!7543956 () Bool)

(assert (=> b!6797211 m!7543956))

(assert (=> b!6797213 m!7543956))

(declare-fun m!7543958 () Bool)

(assert (=> b!6797220 m!7543958))

(assert (=> b!6797220 m!7543958))

(declare-fun m!7543960 () Bool)

(assert (=> b!6797220 m!7543960))

(declare-fun m!7543962 () Bool)

(assert (=> bm!617445 m!7543962))

(assert (=> d!2135792 m!7543962))

(assert (=> d!2135792 m!7543568))

(assert (=> b!6797219 m!7543180))

(assert (=> b!6797223 m!7543958))

(assert (=> b!6797223 m!7543958))

(assert (=> b!6797223 m!7543960))

(assert (=> b!6797212 m!7543956))

(assert (=> b!6797212 m!7543956))

(declare-fun m!7543964 () Bool)

(assert (=> b!6797212 m!7543964))

(assert (=> b!6797212 m!7543958))

(assert (=> b!6797212 m!7543964))

(assert (=> b!6797212 m!7543958))

(declare-fun m!7543966 () Bool)

(assert (=> b!6797212 m!7543966))

(assert (=> b!6796790 d!2135792))

(declare-fun d!2135794 () Bool)

(assert (=> d!2135794 (= (get!22994 lt!2447388) (v!52709 lt!2447388))))

(assert (=> b!6796790 d!2135794))

(declare-fun d!2135796 () Bool)

(declare-fun c!1263704 () Bool)

(assert (=> d!2135796 (= c!1263704 (isEmpty!38402 (tail!12729 (t!379879 s!2326))))))

(declare-fun e!4102317 () Bool)

(assert (=> d!2135796 (= (matchZipper!2603 (derivationStepZipper!2561 (derivationStepZipper!2561 lt!2447274 (h!72476 s!2326)) (head!13644 (t!379879 s!2326))) (tail!12729 (t!379879 s!2326))) e!4102317)))

(declare-fun b!6797225 () Bool)

(assert (=> b!6797225 (= e!4102317 (nullableZipper!2323 (derivationStepZipper!2561 (derivationStepZipper!2561 lt!2447274 (h!72476 s!2326)) (head!13644 (t!379879 s!2326)))))))

(declare-fun b!6797226 () Bool)

(assert (=> b!6797226 (= e!4102317 (matchZipper!2603 (derivationStepZipper!2561 (derivationStepZipper!2561 (derivationStepZipper!2561 lt!2447274 (h!72476 s!2326)) (head!13644 (t!379879 s!2326))) (head!13644 (tail!12729 (t!379879 s!2326)))) (tail!12729 (tail!12729 (t!379879 s!2326)))))))

(assert (= (and d!2135796 c!1263704) b!6797225))

(assert (= (and d!2135796 (not c!1263704)) b!6797226))

(assert (=> d!2135796 m!7543408))

(declare-fun m!7543968 () Bool)

(assert (=> d!2135796 m!7543968))

(assert (=> b!6797225 m!7543406))

(declare-fun m!7543970 () Bool)

(assert (=> b!6797225 m!7543970))

(assert (=> b!6797226 m!7543408))

(declare-fun m!7543972 () Bool)

(assert (=> b!6797226 m!7543972))

(assert (=> b!6797226 m!7543406))

(assert (=> b!6797226 m!7543972))

(declare-fun m!7543974 () Bool)

(assert (=> b!6797226 m!7543974))

(assert (=> b!6797226 m!7543408))

(declare-fun m!7543976 () Bool)

(assert (=> b!6797226 m!7543976))

(assert (=> b!6797226 m!7543974))

(assert (=> b!6797226 m!7543976))

(declare-fun m!7543978 () Bool)

(assert (=> b!6797226 m!7543978))

(assert (=> b!6796628 d!2135796))

(declare-fun bs!1811448 () Bool)

(declare-fun d!2135798 () Bool)

(assert (= bs!1811448 (and d!2135798 b!6796135)))

(declare-fun lambda!383229 () Int)

(assert (=> bs!1811448 (= (= (head!13644 (t!379879 s!2326)) (h!72476 s!2326)) (= lambda!383229 lambda!383115))))

(declare-fun bs!1811449 () Bool)

(assert (= bs!1811449 (and d!2135798 d!2135746)))

(assert (=> bs!1811449 (= (= (head!13644 (t!379879 s!2326)) (head!13644 s!2326)) (= lambda!383229 lambda!383221))))

(declare-fun bs!1811450 () Bool)

(assert (= bs!1811450 (and d!2135798 d!2135470)))

(assert (=> bs!1811450 (= (= (head!13644 (t!379879 s!2326)) (h!72476 s!2326)) (= lambda!383229 lambda!383127))))

(declare-fun bs!1811451 () Bool)

(assert (= bs!1811451 (and d!2135798 d!2135560)))

(assert (=> bs!1811451 (= (= (head!13644 (t!379879 s!2326)) (h!72476 s!2326)) (= lambda!383229 lambda!383160))))

(declare-fun bs!1811452 () Bool)

(assert (= bs!1811452 (and d!2135798 d!2135564)))

(assert (=> bs!1811452 (= (= (head!13644 (t!379879 s!2326)) (h!72476 s!2326)) (= lambda!383229 lambda!383162))))

(assert (=> d!2135798 true))

(assert (=> d!2135798 (= (derivationStepZipper!2561 (derivationStepZipper!2561 lt!2447274 (h!72476 s!2326)) (head!13644 (t!379879 s!2326))) (flatMap!2098 (derivationStepZipper!2561 lt!2447274 (h!72476 s!2326)) lambda!383229))))

(declare-fun bs!1811453 () Bool)

(assert (= bs!1811453 d!2135798))

(assert (=> bs!1811453 m!7543092))

(declare-fun m!7543980 () Bool)

(assert (=> bs!1811453 m!7543980))

(assert (=> b!6796628 d!2135798))

(declare-fun d!2135800 () Bool)

(assert (=> d!2135800 (= (head!13644 (t!379879 s!2326)) (h!72476 (t!379879 s!2326)))))

(assert (=> b!6796628 d!2135800))

(declare-fun d!2135802 () Bool)

(assert (=> d!2135802 (= (tail!12729 (t!379879 s!2326)) (t!379879 (t!379879 s!2326)))))

(assert (=> b!6796628 d!2135802))

(assert (=> d!2135512 d!2135488))

(assert (=> d!2135512 d!2135480))

(declare-fun d!2135804 () Bool)

(assert (=> d!2135804 (= (matchR!8800 lt!2447264 s!2326) (matchRSpec!3718 lt!2447264 s!2326))))

(assert (=> d!2135804 true))

(declare-fun _$88!5617 () Unit!159925)

(assert (=> d!2135804 (= (choose!50641 lt!2447264 s!2326) _$88!5617)))

(declare-fun bs!1811454 () Bool)

(assert (= bs!1811454 d!2135804))

(assert (=> bs!1811454 m!7543098))

(assert (=> bs!1811454 m!7543096))

(assert (=> d!2135512 d!2135804))

(assert (=> d!2135512 d!2135760))

(declare-fun bs!1811455 () Bool)

(declare-fun d!2135806 () Bool)

(assert (= bs!1811455 (and d!2135806 b!6796140)))

(declare-fun lambda!383230 () Int)

(assert (=> bs!1811455 (= lambda!383230 lambda!383117)))

(declare-fun bs!1811456 () Bool)

(assert (= bs!1811456 (and d!2135806 d!2135578)))

(assert (=> bs!1811456 (= lambda!383230 lambda!383167)))

(declare-fun bs!1811457 () Bool)

(assert (= bs!1811457 (and d!2135806 d!2135542)))

(assert (=> bs!1811457 (= lambda!383230 lambda!383157)))

(declare-fun bs!1811458 () Bool)

(assert (= bs!1811458 (and d!2135806 d!2135708)))

(assert (=> bs!1811458 (= lambda!383230 lambda!383212)))

(declare-fun bs!1811459 () Bool)

(assert (= bs!1811459 (and d!2135806 d!2135538)))

(assert (=> bs!1811459 (= lambda!383230 lambda!383151)))

(declare-fun bs!1811460 () Bool)

(assert (= bs!1811460 (and d!2135806 d!2135604)))

(assert (=> bs!1811460 (= lambda!383230 lambda!383176)))

(declare-fun bs!1811461 () Bool)

(assert (= bs!1811461 (and d!2135806 d!2135778)))

(assert (=> bs!1811461 (= lambda!383230 lambda!383228)))

(declare-fun bs!1811462 () Bool)

(assert (= bs!1811462 (and d!2135806 d!2135474)))

(assert (=> bs!1811462 (= lambda!383230 lambda!383130)))

(declare-fun bs!1811463 () Bool)

(assert (= bs!1811463 (and d!2135806 d!2135710)))

(assert (=> bs!1811463 (= lambda!383230 lambda!383213)))

(declare-fun bs!1811464 () Bool)

(assert (= bs!1811464 (and d!2135806 d!2135648)))

(assert (=> bs!1811464 (= lambda!383230 lambda!383210)))

(declare-fun b!6797227 () Bool)

(declare-fun e!4102319 () Regex!16617)

(assert (=> b!6797227 (= e!4102319 EmptyLang!16617)))

(declare-fun b!6797228 () Bool)

(declare-fun e!4102323 () Bool)

(declare-fun e!4102322 () Bool)

(assert (=> b!6797228 (= e!4102323 e!4102322)))

(declare-fun c!1263707 () Bool)

(assert (=> b!6797228 (= c!1263707 (isEmpty!38403 (t!379877 (unfocusZipperList!2038 zl!343))))))

(declare-fun b!6797229 () Bool)

(declare-fun e!4102318 () Bool)

(assert (=> b!6797229 (= e!4102322 e!4102318)))

(declare-fun c!1263705 () Bool)

(assert (=> b!6797229 (= c!1263705 (isEmpty!38403 (tail!12730 (t!379877 (unfocusZipperList!2038 zl!343)))))))

(declare-fun b!6797230 () Bool)

(declare-fun lt!2447417 () Regex!16617)

(assert (=> b!6797230 (= e!4102318 (isUnion!1412 lt!2447417))))

(declare-fun b!6797231 () Bool)

(declare-fun e!4102321 () Bool)

(assert (=> b!6797231 (= e!4102321 (isEmpty!38403 (t!379877 (t!379877 (unfocusZipperList!2038 zl!343)))))))

(declare-fun b!6797232 () Bool)

(assert (=> b!6797232 (= e!4102322 (isEmptyLang!1982 lt!2447417))))

(assert (=> d!2135806 e!4102323))

(declare-fun res!2777825 () Bool)

(assert (=> d!2135806 (=> (not res!2777825) (not e!4102323))))

(assert (=> d!2135806 (= res!2777825 (validRegex!8353 lt!2447417))))

(declare-fun e!4102320 () Regex!16617)

(assert (=> d!2135806 (= lt!2447417 e!4102320)))

(declare-fun c!1263708 () Bool)

(assert (=> d!2135806 (= c!1263708 e!4102321)))

(declare-fun res!2777824 () Bool)

(assert (=> d!2135806 (=> (not res!2777824) (not e!4102321))))

(assert (=> d!2135806 (= res!2777824 ((_ is Cons!66026) (t!379877 (unfocusZipperList!2038 zl!343))))))

(assert (=> d!2135806 (forall!15809 (t!379877 (unfocusZipperList!2038 zl!343)) lambda!383230)))

(assert (=> d!2135806 (= (generalisedUnion!2461 (t!379877 (unfocusZipperList!2038 zl!343))) lt!2447417)))

(declare-fun b!6797233 () Bool)

(assert (=> b!6797233 (= e!4102320 (h!72474 (t!379877 (unfocusZipperList!2038 zl!343))))))

(declare-fun b!6797234 () Bool)

(assert (=> b!6797234 (= e!4102318 (= lt!2447417 (head!13645 (t!379877 (unfocusZipperList!2038 zl!343)))))))

(declare-fun b!6797235 () Bool)

(assert (=> b!6797235 (= e!4102319 (Union!16617 (h!72474 (t!379877 (unfocusZipperList!2038 zl!343))) (generalisedUnion!2461 (t!379877 (t!379877 (unfocusZipperList!2038 zl!343))))))))

(declare-fun b!6797236 () Bool)

(assert (=> b!6797236 (= e!4102320 e!4102319)))

(declare-fun c!1263706 () Bool)

(assert (=> b!6797236 (= c!1263706 ((_ is Cons!66026) (t!379877 (unfocusZipperList!2038 zl!343))))))

(assert (= (and d!2135806 res!2777824) b!6797231))

(assert (= (and d!2135806 c!1263708) b!6797233))

(assert (= (and d!2135806 (not c!1263708)) b!6797236))

(assert (= (and b!6797236 c!1263706) b!6797235))

(assert (= (and b!6797236 (not c!1263706)) b!6797227))

(assert (= (and d!2135806 res!2777825) b!6797228))

(assert (= (and b!6797228 c!1263707) b!6797232))

(assert (= (and b!6797228 (not c!1263707)) b!6797229))

(assert (= (and b!6797229 c!1263705) b!6797234))

(assert (= (and b!6797229 (not c!1263705)) b!6797230))

(declare-fun m!7543982 () Bool)

(assert (=> d!2135806 m!7543982))

(declare-fun m!7543984 () Bool)

(assert (=> d!2135806 m!7543984))

(declare-fun m!7543986 () Bool)

(assert (=> b!6797231 m!7543986))

(declare-fun m!7543988 () Bool)

(assert (=> b!6797235 m!7543988))

(declare-fun m!7543990 () Bool)

(assert (=> b!6797234 m!7543990))

(assert (=> b!6797228 m!7543334))

(declare-fun m!7543992 () Bool)

(assert (=> b!6797229 m!7543992))

(assert (=> b!6797229 m!7543992))

(declare-fun m!7543994 () Bool)

(assert (=> b!6797229 m!7543994))

(declare-fun m!7543996 () Bool)

(assert (=> b!6797232 m!7543996))

(declare-fun m!7543998 () Bool)

(assert (=> b!6797230 m!7543998))

(assert (=> b!6796597 d!2135806))

(declare-fun d!2135808 () Bool)

(assert (=> d!2135808 true))

(assert (=> d!2135808 true))

(declare-fun res!2777828 () Bool)

(assert (=> d!2135808 (= (choose!50651 lambda!383113) res!2777828)))

(assert (=> d!2135630 d!2135808))

(declare-fun d!2135810 () Bool)

(assert (=> d!2135810 (= (map!15086 lt!2447259 lambda!383174) (choose!50643 lt!2447259 lambda!383174))))

(declare-fun bs!1811465 () Bool)

(assert (= bs!1811465 d!2135810))

(declare-fun m!7544000 () Bool)

(assert (=> bs!1811465 m!7544000))

(assert (=> d!2135594 d!2135810))

(assert (=> bs!1811343 d!2135570))

(declare-fun b!6797237 () Bool)

(declare-fun call!617451 () (InoxSet Context!12002))

(declare-fun e!4102325 () (InoxSet Context!12002))

(assert (=> b!6797237 (= e!4102325 ((_ map or) call!617451 (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 (h!72475 zl!343))))))) (h!72476 s!2326))))))

(declare-fun b!6797238 () Bool)

(declare-fun e!4102326 () (InoxSet Context!12002))

(assert (=> b!6797238 (= e!4102326 call!617451)))

(declare-fun bm!617446 () Bool)

(assert (=> bm!617446 (= call!617451 (derivationStepZipperDown!1845 (h!72474 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 (h!72475 zl!343)))))) (Context!12003 (t!379877 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 (h!72475 zl!343))))))) (h!72476 s!2326)))))

(declare-fun b!6797239 () Bool)

(assert (=> b!6797239 (= e!4102326 ((as const (Array Context!12002 Bool)) false))))

(declare-fun d!2135812 () Bool)

(declare-fun c!1263710 () Bool)

(declare-fun e!4102324 () Bool)

(assert (=> d!2135812 (= c!1263710 e!4102324)))

(declare-fun res!2777829 () Bool)

(assert (=> d!2135812 (=> (not res!2777829) (not e!4102324))))

(assert (=> d!2135812 (= res!2777829 ((_ is Cons!66026) (exprs!6501 (Context!12003 (t!379877 (exprs!6501 (h!72475 zl!343)))))))))

(assert (=> d!2135812 (= (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 (h!72475 zl!343)))) (h!72476 s!2326)) e!4102325)))

(declare-fun b!6797240 () Bool)

(assert (=> b!6797240 (= e!4102325 e!4102326)))

(declare-fun c!1263709 () Bool)

(assert (=> b!6797240 (= c!1263709 ((_ is Cons!66026) (exprs!6501 (Context!12003 (t!379877 (exprs!6501 (h!72475 zl!343)))))))))

(declare-fun b!6797241 () Bool)

(assert (=> b!6797241 (= e!4102324 (nullable!6595 (h!72474 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 (h!72475 zl!343))))))))))

(assert (= (and d!2135812 res!2777829) b!6797241))

(assert (= (and d!2135812 c!1263710) b!6797237))

(assert (= (and d!2135812 (not c!1263710)) b!6797240))

(assert (= (and b!6797240 c!1263709) b!6797238))

(assert (= (and b!6797240 (not c!1263709)) b!6797239))

(assert (= (or b!6797237 b!6797238) bm!617446))

(declare-fun m!7544002 () Bool)

(assert (=> b!6797237 m!7544002))

(declare-fun m!7544004 () Bool)

(assert (=> bm!617446 m!7544004))

(declare-fun m!7544006 () Bool)

(assert (=> b!6797241 m!7544006))

(assert (=> b!6796184 d!2135812))

(declare-fun b!6797242 () Bool)

(declare-fun c!1263712 () Bool)

(assert (=> b!6797242 (= c!1263712 ((_ is Star!16617) (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292))))))

(declare-fun e!4102332 () (InoxSet Context!12002))

(declare-fun e!4102331 () (InoxSet Context!12002))

(assert (=> b!6797242 (= e!4102332 e!4102331)))

(declare-fun b!6797243 () Bool)

(declare-fun e!4102330 () (InoxSet Context!12002))

(declare-fun call!617454 () (InoxSet Context!12002))

(declare-fun call!617452 () (InoxSet Context!12002))

(assert (=> b!6797243 (= e!4102330 ((_ map or) call!617454 call!617452))))

(declare-fun b!6797244 () Bool)

(declare-fun c!1263713 () Bool)

(declare-fun e!4102327 () Bool)

(assert (=> b!6797244 (= c!1263713 e!4102327)))

(declare-fun res!2777830 () Bool)

(assert (=> b!6797244 (=> (not res!2777830) (not e!4102327))))

(assert (=> b!6797244 (= res!2777830 ((_ is Concat!25462) (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292))))))

(declare-fun e!4102329 () (InoxSet Context!12002))

(assert (=> b!6797244 (= e!4102329 e!4102330)))

(declare-fun b!6797245 () Bool)

(assert (=> b!6797245 (= e!4102327 (nullable!6595 (regOne!33746 (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292)))))))

(declare-fun b!6797246 () Bool)

(declare-fun e!4102328 () (InoxSet Context!12002))

(assert (=> b!6797246 (= e!4102328 (store ((as const (Array Context!12002 Bool)) false) (ite c!1263431 (Context!12003 Nil!66026) (Context!12003 call!617314)) true))))

(declare-fun b!6797247 () Bool)

(assert (=> b!6797247 (= e!4102330 e!4102332)))

(declare-fun c!1263715 () Bool)

(assert (=> b!6797247 (= c!1263715 ((_ is Concat!25462) (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292))))))

(declare-fun call!617457 () List!66150)

(declare-fun bm!617447 () Bool)

(assert (=> bm!617447 (= call!617457 ($colon$colon!2425 (exprs!6501 (ite c!1263431 (Context!12003 Nil!66026) (Context!12003 call!617314))) (ite (or c!1263713 c!1263715) (regTwo!33746 (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292))) (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292)))))))

(declare-fun c!1263711 () Bool)

(declare-fun d!2135814 () Bool)

(assert (=> d!2135814 (= c!1263711 (and ((_ is ElementMatch!16617) (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292))) (= (c!1263403 (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292))) (h!72476 s!2326))))))

(assert (=> d!2135814 (= (derivationStepZipperDown!1845 (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292)) (ite c!1263431 (Context!12003 Nil!66026) (Context!12003 call!617314)) (h!72476 s!2326)) e!4102328)))

(declare-fun bm!617448 () Bool)

(declare-fun call!617455 () (InoxSet Context!12002))

(assert (=> bm!617448 (= call!617452 call!617455)))

(declare-fun b!6797248 () Bool)

(assert (=> b!6797248 (= e!4102331 ((as const (Array Context!12002 Bool)) false))))

(declare-fun b!6797249 () Bool)

(assert (=> b!6797249 (= e!4102328 e!4102329)))

(declare-fun c!1263714 () Bool)

(assert (=> b!6797249 (= c!1263714 ((_ is Union!16617) (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292))))))

(declare-fun bm!617449 () Bool)

(declare-fun call!617453 () List!66150)

(assert (=> bm!617449 (= call!617455 (derivationStepZipperDown!1845 (ite c!1263714 (regTwo!33747 (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292))) (ite c!1263713 (regTwo!33746 (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292))) (ite c!1263715 (regOne!33746 (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292))) (reg!16946 (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292)))))) (ite (or c!1263714 c!1263713) (ite c!1263431 (Context!12003 Nil!66026) (Context!12003 call!617314)) (Context!12003 call!617453)) (h!72476 s!2326)))))

(declare-fun b!6797250 () Bool)

(assert (=> b!6797250 (= e!4102329 ((_ map or) call!617454 call!617455))))

(declare-fun b!6797251 () Bool)

(declare-fun call!617456 () (InoxSet Context!12002))

(assert (=> b!6797251 (= e!4102332 call!617456)))

(declare-fun bm!617450 () Bool)

(assert (=> bm!617450 (= call!617456 call!617452)))

(declare-fun bm!617451 () Bool)

(assert (=> bm!617451 (= call!617454 (derivationStepZipperDown!1845 (ite c!1263714 (regOne!33747 (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292))) (regOne!33746 (ite c!1263431 (regOne!33747 r!7292) (regOne!33746 r!7292)))) (ite c!1263714 (ite c!1263431 (Context!12003 Nil!66026) (Context!12003 call!617314)) (Context!12003 call!617457)) (h!72476 s!2326)))))

(declare-fun b!6797252 () Bool)

(assert (=> b!6797252 (= e!4102331 call!617456)))

(declare-fun bm!617452 () Bool)

(assert (=> bm!617452 (= call!617453 call!617457)))

(assert (= (and d!2135814 c!1263711) b!6797246))

(assert (= (and d!2135814 (not c!1263711)) b!6797249))

(assert (= (and b!6797249 c!1263714) b!6797250))

(assert (= (and b!6797249 (not c!1263714)) b!6797244))

(assert (= (and b!6797244 res!2777830) b!6797245))

(assert (= (and b!6797244 c!1263713) b!6797243))

(assert (= (and b!6797244 (not c!1263713)) b!6797247))

(assert (= (and b!6797247 c!1263715) b!6797251))

(assert (= (and b!6797247 (not c!1263715)) b!6797242))

(assert (= (and b!6797242 c!1263712) b!6797252))

(assert (= (and b!6797242 (not c!1263712)) b!6797248))

(assert (= (or b!6797251 b!6797252) bm!617452))

(assert (= (or b!6797251 b!6797252) bm!617450))

(assert (= (or b!6797243 bm!617452) bm!617447))

(assert (= (or b!6797243 bm!617450) bm!617448))

(assert (= (or b!6797250 bm!617448) bm!617449))

(assert (= (or b!6797250 b!6797243) bm!617451))

(declare-fun m!7544008 () Bool)

(assert (=> b!6797245 m!7544008))

(declare-fun m!7544010 () Bool)

(assert (=> bm!617449 m!7544010))

(declare-fun m!7544012 () Bool)

(assert (=> bm!617451 m!7544012))

(declare-fun m!7544014 () Bool)

(assert (=> b!6797246 m!7544014))

(declare-fun m!7544016 () Bool)

(assert (=> bm!617447 m!7544016))

(assert (=> bm!617308 d!2135814))

(declare-fun bm!617453 () Bool)

(declare-fun call!617458 () Bool)

(declare-fun c!1263716 () Bool)

(assert (=> bm!617453 (= call!617458 (validRegex!8353 (ite c!1263716 (regTwo!33747 lt!2447358) (regTwo!33746 lt!2447358))))))

(declare-fun b!6797253 () Bool)

(declare-fun e!4102337 () Bool)

(declare-fun e!4102339 () Bool)

(assert (=> b!6797253 (= e!4102337 e!4102339)))

(declare-fun res!2777833 () Bool)

(assert (=> b!6797253 (= res!2777833 (not (nullable!6595 (reg!16946 lt!2447358))))))

(assert (=> b!6797253 (=> (not res!2777833) (not e!4102339))))

(declare-fun b!6797254 () Bool)

(declare-fun e!4102334 () Bool)

(assert (=> b!6797254 (= e!4102334 call!617458)))

(declare-fun b!6797255 () Bool)

(declare-fun e!4102333 () Bool)

(assert (=> b!6797255 (= e!4102337 e!4102333)))

(assert (=> b!6797255 (= c!1263716 ((_ is Union!16617) lt!2447358))))

(declare-fun b!6797256 () Bool)

(declare-fun res!2777834 () Bool)

(declare-fun e!4102338 () Bool)

(assert (=> b!6797256 (=> (not res!2777834) (not e!4102338))))

(declare-fun call!617459 () Bool)

(assert (=> b!6797256 (= res!2777834 call!617459)))

(assert (=> b!6797256 (= e!4102333 e!4102338)))

(declare-fun b!6797257 () Bool)

(declare-fun e!4102335 () Bool)

(assert (=> b!6797257 (= e!4102335 e!4102337)))

(declare-fun c!1263717 () Bool)

(assert (=> b!6797257 (= c!1263717 ((_ is Star!16617) lt!2447358))))

(declare-fun b!6797258 () Bool)

(declare-fun res!2777835 () Bool)

(declare-fun e!4102336 () Bool)

(assert (=> b!6797258 (=> res!2777835 e!4102336)))

(assert (=> b!6797258 (= res!2777835 (not ((_ is Concat!25462) lt!2447358)))))

(assert (=> b!6797258 (= e!4102333 e!4102336)))

(declare-fun call!617460 () Bool)

(declare-fun bm!617454 () Bool)

(assert (=> bm!617454 (= call!617460 (validRegex!8353 (ite c!1263717 (reg!16946 lt!2447358) (ite c!1263716 (regOne!33747 lt!2447358) (regOne!33746 lt!2447358)))))))

(declare-fun bm!617455 () Bool)

(assert (=> bm!617455 (= call!617459 call!617460)))

(declare-fun b!6797259 () Bool)

(assert (=> b!6797259 (= e!4102338 call!617458)))

(declare-fun d!2135816 () Bool)

(declare-fun res!2777832 () Bool)

(assert (=> d!2135816 (=> res!2777832 e!4102335)))

(assert (=> d!2135816 (= res!2777832 ((_ is ElementMatch!16617) lt!2447358))))

(assert (=> d!2135816 (= (validRegex!8353 lt!2447358) e!4102335)))

(declare-fun b!6797260 () Bool)

(assert (=> b!6797260 (= e!4102339 call!617460)))

(declare-fun b!6797261 () Bool)

(assert (=> b!6797261 (= e!4102336 e!4102334)))

(declare-fun res!2777831 () Bool)

(assert (=> b!6797261 (=> (not res!2777831) (not e!4102334))))

(assert (=> b!6797261 (= res!2777831 call!617459)))

(assert (= (and d!2135816 (not res!2777832)) b!6797257))

(assert (= (and b!6797257 c!1263717) b!6797253))

(assert (= (and b!6797257 (not c!1263717)) b!6797255))

(assert (= (and b!6797253 res!2777833) b!6797260))

(assert (= (and b!6797255 c!1263716) b!6797256))

(assert (= (and b!6797255 (not c!1263716)) b!6797258))

(assert (= (and b!6797256 res!2777834) b!6797259))

(assert (= (and b!6797258 (not res!2777835)) b!6797261))

(assert (= (and b!6797261 res!2777831) b!6797254))

(assert (= (or b!6797259 b!6797254) bm!617453))

(assert (= (or b!6797256 b!6797261) bm!617455))

(assert (= (or b!6797260 bm!617455) bm!617454))

(declare-fun m!7544018 () Bool)

(assert (=> bm!617453 m!7544018))

(declare-fun m!7544020 () Bool)

(assert (=> b!6797253 m!7544020))

(declare-fun m!7544022 () Bool)

(assert (=> bm!617454 m!7544022))

(assert (=> d!2135596 d!2135816))

(assert (=> d!2135596 d!2135538))

(assert (=> d!2135596 d!2135542))

(declare-fun bm!617456 () Bool)

(declare-fun call!617461 () Bool)

(declare-fun c!1263718 () Bool)

(assert (=> bm!617456 (= call!617461 (validRegex!8353 (ite c!1263718 (regTwo!33747 lt!2447322) (regTwo!33746 lt!2447322))))))

(declare-fun b!6797262 () Bool)

(declare-fun e!4102344 () Bool)

(declare-fun e!4102346 () Bool)

(assert (=> b!6797262 (= e!4102344 e!4102346)))

(declare-fun res!2777838 () Bool)

(assert (=> b!6797262 (= res!2777838 (not (nullable!6595 (reg!16946 lt!2447322))))))

(assert (=> b!6797262 (=> (not res!2777838) (not e!4102346))))

(declare-fun b!6797263 () Bool)

(declare-fun e!4102341 () Bool)

(assert (=> b!6797263 (= e!4102341 call!617461)))

(declare-fun b!6797264 () Bool)

(declare-fun e!4102340 () Bool)

(assert (=> b!6797264 (= e!4102344 e!4102340)))

(assert (=> b!6797264 (= c!1263718 ((_ is Union!16617) lt!2447322))))

(declare-fun b!6797265 () Bool)

(declare-fun res!2777839 () Bool)

(declare-fun e!4102345 () Bool)

(assert (=> b!6797265 (=> (not res!2777839) (not e!4102345))))

(declare-fun call!617462 () Bool)

(assert (=> b!6797265 (= res!2777839 call!617462)))

(assert (=> b!6797265 (= e!4102340 e!4102345)))

(declare-fun b!6797266 () Bool)

(declare-fun e!4102342 () Bool)

(assert (=> b!6797266 (= e!4102342 e!4102344)))

(declare-fun c!1263719 () Bool)

(assert (=> b!6797266 (= c!1263719 ((_ is Star!16617) lt!2447322))))

(declare-fun b!6797267 () Bool)

(declare-fun res!2777840 () Bool)

(declare-fun e!4102343 () Bool)

(assert (=> b!6797267 (=> res!2777840 e!4102343)))

(assert (=> b!6797267 (= res!2777840 (not ((_ is Concat!25462) lt!2447322)))))

(assert (=> b!6797267 (= e!4102340 e!4102343)))

(declare-fun call!617463 () Bool)

(declare-fun bm!617457 () Bool)

(assert (=> bm!617457 (= call!617463 (validRegex!8353 (ite c!1263719 (reg!16946 lt!2447322) (ite c!1263718 (regOne!33747 lt!2447322) (regOne!33746 lt!2447322)))))))

(declare-fun bm!617458 () Bool)

(assert (=> bm!617458 (= call!617462 call!617463)))

(declare-fun b!6797268 () Bool)

(assert (=> b!6797268 (= e!4102345 call!617461)))

(declare-fun d!2135818 () Bool)

(declare-fun res!2777837 () Bool)

(assert (=> d!2135818 (=> res!2777837 e!4102342)))

(assert (=> d!2135818 (= res!2777837 ((_ is ElementMatch!16617) lt!2447322))))

(assert (=> d!2135818 (= (validRegex!8353 lt!2447322) e!4102342)))

(declare-fun b!6797269 () Bool)

(assert (=> b!6797269 (= e!4102346 call!617463)))

(declare-fun b!6797270 () Bool)

(assert (=> b!6797270 (= e!4102343 e!4102341)))

(declare-fun res!2777836 () Bool)

(assert (=> b!6797270 (=> (not res!2777836) (not e!4102341))))

(assert (=> b!6797270 (= res!2777836 call!617462)))

(assert (= (and d!2135818 (not res!2777837)) b!6797266))

(assert (= (and b!6797266 c!1263719) b!6797262))

(assert (= (and b!6797266 (not c!1263719)) b!6797264))

(assert (= (and b!6797262 res!2777838) b!6797269))

(assert (= (and b!6797264 c!1263718) b!6797265))

(assert (= (and b!6797264 (not c!1263718)) b!6797267))

(assert (= (and b!6797265 res!2777839) b!6797268))

(assert (= (and b!6797267 (not res!2777840)) b!6797270))

(assert (= (and b!6797270 res!2777836) b!6797263))

(assert (= (or b!6797268 b!6797263) bm!617456))

(assert (= (or b!6797265 b!6797270) bm!617458))

(assert (= (or b!6797269 bm!617458) bm!617457))

(declare-fun m!7544024 () Bool)

(assert (=> bm!617456 m!7544024))

(declare-fun m!7544026 () Bool)

(assert (=> b!6797262 m!7544026))

(declare-fun m!7544028 () Bool)

(assert (=> bm!617457 m!7544028))

(assert (=> d!2135538 d!2135818))

(declare-fun d!2135820 () Bool)

(declare-fun res!2777841 () Bool)

(declare-fun e!4102347 () Bool)

(assert (=> d!2135820 (=> res!2777841 e!4102347)))

(assert (=> d!2135820 (= res!2777841 ((_ is Nil!66026) (unfocusZipperList!2038 zl!343)))))

(assert (=> d!2135820 (= (forall!15809 (unfocusZipperList!2038 zl!343) lambda!383151) e!4102347)))

(declare-fun b!6797271 () Bool)

(declare-fun e!4102348 () Bool)

(assert (=> b!6797271 (= e!4102347 e!4102348)))

(declare-fun res!2777842 () Bool)

(assert (=> b!6797271 (=> (not res!2777842) (not e!4102348))))

(assert (=> b!6797271 (= res!2777842 (dynLambda!26363 lambda!383151 (h!72474 (unfocusZipperList!2038 zl!343))))))

(declare-fun b!6797272 () Bool)

(assert (=> b!6797272 (= e!4102348 (forall!15809 (t!379877 (unfocusZipperList!2038 zl!343)) lambda!383151))))

(assert (= (and d!2135820 (not res!2777841)) b!6797271))

(assert (= (and b!6797271 res!2777842) b!6797272))

(declare-fun b_lambda!256127 () Bool)

(assert (=> (not b_lambda!256127) (not b!6797271)))

(declare-fun m!7544030 () Bool)

(assert (=> b!6797271 m!7544030))

(declare-fun m!7544032 () Bool)

(assert (=> b!6797272 m!7544032))

(assert (=> d!2135538 d!2135820))

(declare-fun d!2135822 () Bool)

(assert (=> d!2135822 true))

(assert (=> d!2135822 true))

(declare-fun res!2777843 () Bool)

(assert (=> d!2135822 (= (choose!50651 lambda!383112) res!2777843)))

(assert (=> d!2135620 d!2135822))

(declare-fun b!6797284 () Bool)

(declare-fun e!4102353 () Bool)

(declare-fun lt!2447420 () List!66152)

(assert (=> b!6797284 (= e!4102353 (or (not (= (t!379879 s!2326) Nil!66028)) (= lt!2447420 (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028)))))))

(declare-fun b!6797283 () Bool)

(declare-fun res!2777849 () Bool)

(assert (=> b!6797283 (=> (not res!2777849) (not e!4102353))))

(declare-fun size!40658 (List!66152) Int)

(assert (=> b!6797283 (= res!2777849 (= (size!40658 lt!2447420) (+ (size!40658 (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028))) (size!40658 (t!379879 s!2326)))))))

(declare-fun b!6797282 () Bool)

(declare-fun e!4102354 () List!66152)

(assert (=> b!6797282 (= e!4102354 (Cons!66028 (h!72476 (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028))) (++!14780 (t!379879 (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028))) (t!379879 s!2326))))))

(declare-fun b!6797281 () Bool)

(assert (=> b!6797281 (= e!4102354 (t!379879 s!2326))))

(declare-fun d!2135824 () Bool)

(assert (=> d!2135824 e!4102353))

(declare-fun res!2777848 () Bool)

(assert (=> d!2135824 (=> (not res!2777848) (not e!4102353))))

(declare-fun content!12888 (List!66152) (InoxSet C!33504))

(assert (=> d!2135824 (= res!2777848 (= (content!12888 lt!2447420) ((_ map or) (content!12888 (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028))) (content!12888 (t!379879 s!2326)))))))

(assert (=> d!2135824 (= lt!2447420 e!4102354)))

(declare-fun c!1263722 () Bool)

(assert (=> d!2135824 (= c!1263722 ((_ is Nil!66028) (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028))))))

(assert (=> d!2135824 (= (++!14780 (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028)) (t!379879 s!2326)) lt!2447420)))

(assert (= (and d!2135824 c!1263722) b!6797281))

(assert (= (and d!2135824 (not c!1263722)) b!6797282))

(assert (= (and d!2135824 res!2777848) b!6797283))

(assert (= (and b!6797283 res!2777849) b!6797284))

(declare-fun m!7544034 () Bool)

(assert (=> b!6797283 m!7544034))

(assert (=> b!6797283 m!7543614))

(declare-fun m!7544036 () Bool)

(assert (=> b!6797283 m!7544036))

(declare-fun m!7544038 () Bool)

(assert (=> b!6797283 m!7544038))

(declare-fun m!7544040 () Bool)

(assert (=> b!6797282 m!7544040))

(declare-fun m!7544042 () Bool)

(assert (=> d!2135824 m!7544042))

(assert (=> d!2135824 m!7543614))

(declare-fun m!7544044 () Bool)

(assert (=> d!2135824 m!7544044))

(declare-fun m!7544046 () Bool)

(assert (=> d!2135824 m!7544046))

(assert (=> b!6796786 d!2135824))

(declare-fun b!6797288 () Bool)

(declare-fun e!4102355 () Bool)

(declare-fun lt!2447421 () List!66152)

(assert (=> b!6797288 (= e!4102355 (or (not (= (Cons!66028 (h!72476 s!2326) Nil!66028) Nil!66028)) (= lt!2447421 Nil!66028)))))

(declare-fun b!6797287 () Bool)

(declare-fun res!2777851 () Bool)

(assert (=> b!6797287 (=> (not res!2777851) (not e!4102355))))

(assert (=> b!6797287 (= res!2777851 (= (size!40658 lt!2447421) (+ (size!40658 Nil!66028) (size!40658 (Cons!66028 (h!72476 s!2326) Nil!66028)))))))

(declare-fun b!6797286 () Bool)

(declare-fun e!4102356 () List!66152)

(assert (=> b!6797286 (= e!4102356 (Cons!66028 (h!72476 Nil!66028) (++!14780 (t!379879 Nil!66028) (Cons!66028 (h!72476 s!2326) Nil!66028))))))

(declare-fun b!6797285 () Bool)

(assert (=> b!6797285 (= e!4102356 (Cons!66028 (h!72476 s!2326) Nil!66028))))

(declare-fun d!2135826 () Bool)

(assert (=> d!2135826 e!4102355))

(declare-fun res!2777850 () Bool)

(assert (=> d!2135826 (=> (not res!2777850) (not e!4102355))))

(assert (=> d!2135826 (= res!2777850 (= (content!12888 lt!2447421) ((_ map or) (content!12888 Nil!66028) (content!12888 (Cons!66028 (h!72476 s!2326) Nil!66028)))))))

(assert (=> d!2135826 (= lt!2447421 e!4102356)))

(declare-fun c!1263723 () Bool)

(assert (=> d!2135826 (= c!1263723 ((_ is Nil!66028) Nil!66028))))

(assert (=> d!2135826 (= (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028)) lt!2447421)))

(assert (= (and d!2135826 c!1263723) b!6797285))

(assert (= (and d!2135826 (not c!1263723)) b!6797286))

(assert (= (and d!2135826 res!2777850) b!6797287))

(assert (= (and b!6797287 res!2777851) b!6797288))

(declare-fun m!7544048 () Bool)

(assert (=> b!6797287 m!7544048))

(declare-fun m!7544050 () Bool)

(assert (=> b!6797287 m!7544050))

(declare-fun m!7544052 () Bool)

(assert (=> b!6797287 m!7544052))

(declare-fun m!7544054 () Bool)

(assert (=> b!6797286 m!7544054))

(declare-fun m!7544056 () Bool)

(assert (=> d!2135826 m!7544056))

(declare-fun m!7544058 () Bool)

(assert (=> d!2135826 m!7544058))

(declare-fun m!7544060 () Bool)

(assert (=> d!2135826 m!7544060))

(assert (=> b!6796786 d!2135826))

(declare-fun d!2135828 () Bool)

(assert (=> d!2135828 (= (++!14780 (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028)) (t!379879 s!2326)) s!2326)))

(declare-fun lt!2447424 () Unit!159925)

(declare-fun choose!50658 (List!66152 C!33504 List!66152 List!66152) Unit!159925)

(assert (=> d!2135828 (= lt!2447424 (choose!50658 Nil!66028 (h!72476 s!2326) (t!379879 s!2326) s!2326))))

(assert (=> d!2135828 (= (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) (t!379879 s!2326))) s!2326)))

(assert (=> d!2135828 (= (lemmaMoveElementToOtherListKeepsConcatEq!2737 Nil!66028 (h!72476 s!2326) (t!379879 s!2326) s!2326) lt!2447424)))

(declare-fun bs!1811466 () Bool)

(assert (= bs!1811466 d!2135828))

(assert (=> bs!1811466 m!7543614))

(assert (=> bs!1811466 m!7543614))

(assert (=> bs!1811466 m!7543616))

(declare-fun m!7544062 () Bool)

(assert (=> bs!1811466 m!7544062))

(declare-fun m!7544064 () Bool)

(assert (=> bs!1811466 m!7544064))

(assert (=> b!6796786 d!2135828))

(declare-fun b!6797289 () Bool)

(declare-fun e!4102361 () Option!16504)

(assert (=> b!6797289 (= e!4102361 None!16503)))

(declare-fun b!6797290 () Bool)

(declare-fun e!4102358 () Bool)

(declare-fun lt!2447425 () Option!16504)

(assert (=> b!6797290 (= e!4102358 (= (++!14780 (_1!36895 (get!22994 lt!2447425)) (_2!36895 (get!22994 lt!2447425))) s!2326))))

(declare-fun d!2135830 () Bool)

(declare-fun e!4102360 () Bool)

(assert (=> d!2135830 e!4102360))

(declare-fun res!2777853 () Bool)

(assert (=> d!2135830 (=> res!2777853 e!4102360)))

(assert (=> d!2135830 (= res!2777853 e!4102358)))

(declare-fun res!2777856 () Bool)

(assert (=> d!2135830 (=> (not res!2777856) (not e!4102358))))

(assert (=> d!2135830 (= res!2777856 (isDefined!13207 lt!2447425))))

(declare-fun e!4102359 () Option!16504)

(assert (=> d!2135830 (= lt!2447425 e!4102359)))

(declare-fun c!1263725 () Bool)

(declare-fun e!4102357 () Bool)

(assert (=> d!2135830 (= c!1263725 e!4102357)))

(declare-fun res!2777855 () Bool)

(assert (=> d!2135830 (=> (not res!2777855) (not e!4102357))))

(assert (=> d!2135830 (= res!2777855 (matchR!8800 (reg!16946 r!7292) (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028))))))

(assert (=> d!2135830 (validRegex!8353 (reg!16946 r!7292))))

(assert (=> d!2135830 (= (findConcatSeparation!2918 (reg!16946 r!7292) r!7292 (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028)) (t!379879 s!2326) s!2326) lt!2447425)))

(declare-fun b!6797291 () Bool)

(assert (=> b!6797291 (= e!4102359 (Some!16503 (tuple2!67185 (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028)) (t!379879 s!2326))))))

(declare-fun b!6797292 () Bool)

(assert (=> b!6797292 (= e!4102360 (not (isDefined!13207 lt!2447425)))))

(declare-fun b!6797293 () Bool)

(declare-fun lt!2447426 () Unit!159925)

(declare-fun lt!2447427 () Unit!159925)

(assert (=> b!6797293 (= lt!2447426 lt!2447427)))

(assert (=> b!6797293 (= (++!14780 (++!14780 (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028)) (Cons!66028 (h!72476 (t!379879 s!2326)) Nil!66028)) (t!379879 (t!379879 s!2326))) s!2326)))

(assert (=> b!6797293 (= lt!2447427 (lemmaMoveElementToOtherListKeepsConcatEq!2737 (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028)) (h!72476 (t!379879 s!2326)) (t!379879 (t!379879 s!2326)) s!2326))))

(assert (=> b!6797293 (= e!4102361 (findConcatSeparation!2918 (reg!16946 r!7292) r!7292 (++!14780 (++!14780 Nil!66028 (Cons!66028 (h!72476 s!2326) Nil!66028)) (Cons!66028 (h!72476 (t!379879 s!2326)) Nil!66028)) (t!379879 (t!379879 s!2326)) s!2326))))

(declare-fun b!6797294 () Bool)

(assert (=> b!6797294 (= e!4102357 (matchR!8800 r!7292 (t!379879 s!2326)))))

(declare-fun b!6797295 () Bool)

(declare-fun res!2777854 () Bool)

(assert (=> b!6797295 (=> (not res!2777854) (not e!4102358))))

(assert (=> b!6797295 (= res!2777854 (matchR!8800 r!7292 (_2!36895 (get!22994 lt!2447425))))))

(declare-fun b!6797296 () Bool)

(assert (=> b!6797296 (= e!4102359 e!4102361)))

(declare-fun c!1263724 () Bool)

(assert (=> b!6797296 (= c!1263724 ((_ is Nil!66028) (t!379879 s!2326)))))

(declare-fun b!6797297 () Bool)

(declare-fun res!2777852 () Bool)

(assert (=> b!6797297 (=> (not res!2777852) (not e!4102358))))

(assert (=> b!6797297 (= res!2777852 (matchR!8800 (reg!16946 r!7292) (_1!36895 (get!22994 lt!2447425))))))

(assert (= (and d!2135830 res!2777855) b!6797294))

(assert (= (and d!2135830 c!1263725) b!6797291))

(assert (= (and d!2135830 (not c!1263725)) b!6797296))

(assert (= (and b!6797296 c!1263724) b!6797289))

(assert (= (and b!6797296 (not c!1263724)) b!6797293))

(assert (= (and d!2135830 res!2777856) b!6797297))

(assert (= (and b!6797297 res!2777852) b!6797295))

(assert (= (and b!6797295 res!2777854) b!6797290))

(assert (= (and d!2135830 (not res!2777853)) b!6797292))

(declare-fun m!7544066 () Bool)

(assert (=> d!2135830 m!7544066))

(assert (=> d!2135830 m!7543614))

(declare-fun m!7544068 () Bool)

(assert (=> d!2135830 m!7544068))

(assert (=> d!2135830 m!7543568))

(declare-fun m!7544070 () Bool)

(assert (=> b!6797290 m!7544070))

(declare-fun m!7544072 () Bool)

(assert (=> b!6797290 m!7544072))

(declare-fun m!7544074 () Bool)

(assert (=> b!6797294 m!7544074))

(assert (=> b!6797292 m!7544066))

(assert (=> b!6797297 m!7544070))

(declare-fun m!7544076 () Bool)

(assert (=> b!6797297 m!7544076))

(assert (=> b!6797295 m!7544070))

(declare-fun m!7544078 () Bool)

(assert (=> b!6797295 m!7544078))

(assert (=> b!6797293 m!7543614))

(declare-fun m!7544080 () Bool)

(assert (=> b!6797293 m!7544080))

(assert (=> b!6797293 m!7544080))

(declare-fun m!7544082 () Bool)

(assert (=> b!6797293 m!7544082))

(assert (=> b!6797293 m!7543614))

(declare-fun m!7544084 () Bool)

(assert (=> b!6797293 m!7544084))

(assert (=> b!6797293 m!7544080))

(declare-fun m!7544086 () Bool)

(assert (=> b!6797293 m!7544086))

(assert (=> b!6796786 d!2135830))

(declare-fun d!2135832 () Bool)

(assert (=> d!2135832 true))

(declare-fun setRes!46567 () Bool)

(assert (=> d!2135832 setRes!46567))

(declare-fun condSetEmpty!46567 () Bool)

(declare-fun res!2777857 () (InoxSet Context!12002))

(assert (=> d!2135832 (= condSetEmpty!46567 (= res!2777857 ((as const (Array Context!12002 Bool)) false)))))

(assert (=> d!2135832 (= (choose!50636 lt!2447279 lambda!383115) res!2777857)))

(declare-fun setIsEmpty!46567 () Bool)

(assert (=> setIsEmpty!46567 setRes!46567))

(declare-fun tp!1861199 () Bool)

(declare-fun e!4102362 () Bool)

(declare-fun setElem!46567 () Context!12002)

(declare-fun setNonEmpty!46567 () Bool)

(assert (=> setNonEmpty!46567 (= setRes!46567 (and tp!1861199 (inv!84789 setElem!46567) e!4102362))))

(declare-fun setRest!46567 () (InoxSet Context!12002))

(assert (=> setNonEmpty!46567 (= res!2777857 ((_ map or) (store ((as const (Array Context!12002 Bool)) false) setElem!46567 true) setRest!46567))))

(declare-fun b!6797298 () Bool)

(declare-fun tp!1861198 () Bool)

(assert (=> b!6797298 (= e!4102362 tp!1861198)))

(assert (= (and d!2135832 condSetEmpty!46567) setIsEmpty!46567))

(assert (= (and d!2135832 (not condSetEmpty!46567)) setNonEmpty!46567))

(assert (= setNonEmpty!46567 b!6797298))

(declare-fun m!7544088 () Bool)

(assert (=> setNonEmpty!46567 m!7544088))

(assert (=> d!2135574 d!2135832))

(declare-fun d!2135834 () Bool)

(assert (=> d!2135834 (= ($colon$colon!2425 (exprs!6501 (Context!12003 Nil!66026)) (ite (or c!1263430 c!1263432) (regTwo!33746 r!7292) r!7292)) (Cons!66026 (ite (or c!1263430 c!1263432) (regTwo!33746 r!7292) r!7292) (exprs!6501 (Context!12003 Nil!66026))))))

(assert (=> bm!617304 d!2135834))

(assert (=> d!2135458 d!2135454))

(declare-fun d!2135836 () Bool)

(assert (=> d!2135836 (= (flatMap!2098 z!1189 lambda!383115) (dynLambda!26359 lambda!383115 (h!72475 zl!343)))))

(assert (=> d!2135836 true))

(declare-fun _$13!4257 () Unit!159925)

(assert (=> d!2135836 (= (choose!50637 z!1189 (h!72475 zl!343) lambda!383115) _$13!4257)))

(declare-fun b_lambda!256129 () Bool)

(assert (=> (not b_lambda!256129) (not d!2135836)))

(declare-fun bs!1811467 () Bool)

(assert (= bs!1811467 d!2135836))

(assert (=> bs!1811467 m!7543102))

(assert (=> bs!1811467 m!7543132))

(assert (=> d!2135458 d!2135836))

(assert (=> b!6796617 d!2135648))

(declare-fun bs!1811468 () Bool)

(declare-fun d!2135838 () Bool)

(assert (= bs!1811468 (and d!2135838 b!6796140)))

(declare-fun lambda!383231 () Int)

(assert (=> bs!1811468 (= lambda!383231 lambda!383117)))

(declare-fun bs!1811469 () Bool)

(assert (= bs!1811469 (and d!2135838 d!2135578)))

(assert (=> bs!1811469 (= lambda!383231 lambda!383167)))

(declare-fun bs!1811470 () Bool)

(assert (= bs!1811470 (and d!2135838 d!2135806)))

(assert (=> bs!1811470 (= lambda!383231 lambda!383230)))

(declare-fun bs!1811471 () Bool)

(assert (= bs!1811471 (and d!2135838 d!2135542)))

(assert (=> bs!1811471 (= lambda!383231 lambda!383157)))

(declare-fun bs!1811472 () Bool)

(assert (= bs!1811472 (and d!2135838 d!2135708)))

(assert (=> bs!1811472 (= lambda!383231 lambda!383212)))

(declare-fun bs!1811473 () Bool)

(assert (= bs!1811473 (and d!2135838 d!2135538)))

(assert (=> bs!1811473 (= lambda!383231 lambda!383151)))

(declare-fun bs!1811474 () Bool)

(assert (= bs!1811474 (and d!2135838 d!2135604)))

(assert (=> bs!1811474 (= lambda!383231 lambda!383176)))

(declare-fun bs!1811475 () Bool)

(assert (= bs!1811475 (and d!2135838 d!2135778)))

(assert (=> bs!1811475 (= lambda!383231 lambda!383228)))

(declare-fun bs!1811476 () Bool)

(assert (= bs!1811476 (and d!2135838 d!2135474)))

(assert (=> bs!1811476 (= lambda!383231 lambda!383130)))

(declare-fun bs!1811477 () Bool)

(assert (= bs!1811477 (and d!2135838 d!2135710)))

(assert (=> bs!1811477 (= lambda!383231 lambda!383213)))

(declare-fun bs!1811478 () Bool)

(assert (= bs!1811478 (and d!2135838 d!2135648)))

(assert (=> bs!1811478 (= lambda!383231 lambda!383210)))

(declare-fun lt!2447428 () List!66150)

(assert (=> d!2135838 (forall!15809 lt!2447428 lambda!383231)))

(declare-fun e!4102363 () List!66150)

(assert (=> d!2135838 (= lt!2447428 e!4102363)))

(declare-fun c!1263726 () Bool)

(assert (=> d!2135838 (= c!1263726 ((_ is Cons!66027) (t!379878 zl!343)))))

(assert (=> d!2135838 (= (unfocusZipperList!2038 (t!379878 zl!343)) lt!2447428)))

(declare-fun b!6797299 () Bool)

(assert (=> b!6797299 (= e!4102363 (Cons!66026 (generalisedConcat!2214 (exprs!6501 (h!72475 (t!379878 zl!343)))) (unfocusZipperList!2038 (t!379878 (t!379878 zl!343)))))))

(declare-fun b!6797300 () Bool)

(assert (=> b!6797300 (= e!4102363 Nil!66026)))

(assert (= (and d!2135838 c!1263726) b!6797299))

(assert (= (and d!2135838 (not c!1263726)) b!6797300))

(declare-fun m!7544090 () Bool)

(assert (=> d!2135838 m!7544090))

(declare-fun m!7544092 () Bool)

(assert (=> b!6797299 m!7544092))

(declare-fun m!7544094 () Bool)

(assert (=> b!6797299 m!7544094))

(assert (=> b!6796617 d!2135838))

(assert (=> d!2135600 d!2135628))

(declare-fun b!6797301 () Bool)

(declare-fun c!1263728 () Bool)

(assert (=> b!6797301 (= c!1263728 ((_ is Star!16617) (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292))))))))

(declare-fun e!4102369 () (InoxSet Context!12002))

(declare-fun e!4102368 () (InoxSet Context!12002))

(assert (=> b!6797301 (= e!4102369 e!4102368)))

(declare-fun b!6797302 () Bool)

(declare-fun e!4102367 () (InoxSet Context!12002))

(declare-fun call!617466 () (InoxSet Context!12002))

(declare-fun call!617464 () (InoxSet Context!12002))

(assert (=> b!6797302 (= e!4102367 ((_ map or) call!617466 call!617464))))

(declare-fun b!6797303 () Bool)

(declare-fun c!1263729 () Bool)

(declare-fun e!4102364 () Bool)

(assert (=> b!6797303 (= c!1263729 e!4102364)))

(declare-fun res!2777858 () Bool)

(assert (=> b!6797303 (=> (not res!2777858) (not e!4102364))))

(assert (=> b!6797303 (= res!2777858 ((_ is Concat!25462) (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292))))))))

(declare-fun e!4102366 () (InoxSet Context!12002))

(assert (=> b!6797303 (= e!4102366 e!4102367)))

(declare-fun b!6797304 () Bool)

(assert (=> b!6797304 (= e!4102364 (nullable!6595 (regOne!33746 (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292)))))))))

(declare-fun e!4102365 () (InoxSet Context!12002))

(declare-fun b!6797305 () Bool)

(assert (=> b!6797305 (= e!4102365 (store ((as const (Array Context!12002 Bool)) false) (ite (or c!1263431 c!1263430) (Context!12003 Nil!66026) (Context!12003 call!617310)) true))))

(declare-fun b!6797306 () Bool)

(assert (=> b!6797306 (= e!4102367 e!4102369)))

(declare-fun c!1263731 () Bool)

(assert (=> b!6797306 (= c!1263731 ((_ is Concat!25462) (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292))))))))

(declare-fun bm!617459 () Bool)

(declare-fun call!617469 () List!66150)

(assert (=> bm!617459 (= call!617469 ($colon$colon!2425 (exprs!6501 (ite (or c!1263431 c!1263430) (Context!12003 Nil!66026) (Context!12003 call!617310))) (ite (or c!1263729 c!1263731) (regTwo!33746 (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292))))) (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292)))))))))

(declare-fun d!2135840 () Bool)

(declare-fun c!1263727 () Bool)

(assert (=> d!2135840 (= c!1263727 (and ((_ is ElementMatch!16617) (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292))))) (= (c!1263403 (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292))))) (h!72476 s!2326))))))

(assert (=> d!2135840 (= (derivationStepZipperDown!1845 (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292)))) (ite (or c!1263431 c!1263430) (Context!12003 Nil!66026) (Context!12003 call!617310)) (h!72476 s!2326)) e!4102365)))

(declare-fun bm!617460 () Bool)

(declare-fun call!617467 () (InoxSet Context!12002))

(assert (=> bm!617460 (= call!617464 call!617467)))

(declare-fun b!6797307 () Bool)

(assert (=> b!6797307 (= e!4102368 ((as const (Array Context!12002 Bool)) false))))

(declare-fun b!6797308 () Bool)

(assert (=> b!6797308 (= e!4102365 e!4102366)))

(declare-fun c!1263730 () Bool)

(assert (=> b!6797308 (= c!1263730 ((_ is Union!16617) (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292))))))))

(declare-fun call!617465 () List!66150)

(declare-fun bm!617461 () Bool)

(assert (=> bm!617461 (= call!617467 (derivationStepZipperDown!1845 (ite c!1263730 (regTwo!33747 (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292))))) (ite c!1263729 (regTwo!33746 (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292))))) (ite c!1263731 (regOne!33746 (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292))))) (reg!16946 (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292)))))))) (ite (or c!1263730 c!1263729) (ite (or c!1263431 c!1263430) (Context!12003 Nil!66026) (Context!12003 call!617310)) (Context!12003 call!617465)) (h!72476 s!2326)))))

(declare-fun b!6797309 () Bool)

(assert (=> b!6797309 (= e!4102366 ((_ map or) call!617466 call!617467))))

(declare-fun b!6797310 () Bool)

(declare-fun call!617468 () (InoxSet Context!12002))

(assert (=> b!6797310 (= e!4102369 call!617468)))

(declare-fun bm!617462 () Bool)

(assert (=> bm!617462 (= call!617468 call!617464)))

(declare-fun bm!617463 () Bool)

(assert (=> bm!617463 (= call!617466 (derivationStepZipperDown!1845 (ite c!1263730 (regOne!33747 (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292))))) (regOne!33746 (ite c!1263431 (regTwo!33747 r!7292) (ite c!1263430 (regTwo!33746 r!7292) (ite c!1263432 (regOne!33746 r!7292) (reg!16946 r!7292)))))) (ite c!1263730 (ite (or c!1263431 c!1263430) (Context!12003 Nil!66026) (Context!12003 call!617310)) (Context!12003 call!617469)) (h!72476 s!2326)))))

(declare-fun b!6797311 () Bool)

(assert (=> b!6797311 (= e!4102368 call!617468)))

(declare-fun bm!617464 () Bool)

(assert (=> bm!617464 (= call!617465 call!617469)))

(assert (= (and d!2135840 c!1263727) b!6797305))

(assert (= (and d!2135840 (not c!1263727)) b!6797308))

(assert (= (and b!6797308 c!1263730) b!6797309))

(assert (= (and b!6797308 (not c!1263730)) b!6797303))

(assert (= (and b!6797303 res!2777858) b!6797304))

(assert (= (and b!6797303 c!1263729) b!6797302))

(assert (= (and b!6797303 (not c!1263729)) b!6797306))

(assert (= (and b!6797306 c!1263731) b!6797310))

(assert (= (and b!6797306 (not c!1263731)) b!6797301))

(assert (= (and b!6797301 c!1263728) b!6797311))

(assert (= (and b!6797301 (not c!1263728)) b!6797307))

(assert (= (or b!6797310 b!6797311) bm!617464))

(assert (= (or b!6797310 b!6797311) bm!617462))

(assert (= (or b!6797302 bm!617464) bm!617459))

(assert (= (or b!6797302 bm!617462) bm!617460))

(assert (= (or b!6797309 bm!617460) bm!617461))

(assert (= (or b!6797309 b!6797302) bm!617463))

(declare-fun m!7544096 () Bool)

(assert (=> b!6797304 m!7544096))

(declare-fun m!7544098 () Bool)

(assert (=> bm!617461 m!7544098))

(declare-fun m!7544100 () Bool)

(assert (=> bm!617463 m!7544100))

(declare-fun m!7544102 () Bool)

(assert (=> b!6797305 m!7544102))

(declare-fun m!7544104 () Bool)

(assert (=> bm!617459 m!7544104))

(assert (=> bm!617306 d!2135840))

(declare-fun bs!1811479 () Bool)

(declare-fun b!6797314 () Bool)

(assert (= bs!1811479 (and b!6797314 d!2135622)))

(declare-fun lambda!383232 () Int)

(assert (=> bs!1811479 (= (and (= (reg!16946 (regOne!33747 lt!2447264)) (reg!16946 r!7292)) (= (regOne!33747 lt!2447264) (Star!16617 (reg!16946 r!7292)))) (= lambda!383232 lambda!383199))))

(assert (=> bs!1811479 (not (= lambda!383232 lambda!383196))))

(declare-fun bs!1811480 () Bool)

(assert (= bs!1811480 (and b!6797314 b!6797110)))

(assert (=> bs!1811480 (= (and (= (reg!16946 (regOne!33747 lt!2447264)) (reg!16946 (regOne!33747 r!7292))) (= (regOne!33747 lt!2447264) (regOne!33747 r!7292))) (= lambda!383232 lambda!383219))))

(declare-fun bs!1811481 () Bool)

(assert (= bs!1811481 (and b!6797314 d!2135608)))

(assert (=> bs!1811481 (not (= lambda!383232 lambda!383183))))

(declare-fun bs!1811482 () Bool)

(assert (= bs!1811482 (and b!6797314 b!6796374)))

(assert (=> bs!1811482 (not (= lambda!383232 lambda!383138))))

(declare-fun bs!1811483 () Bool)

(assert (= bs!1811483 (and b!6797314 b!6796162)))

(assert (=> bs!1811483 (= (and (= (reg!16946 (regOne!33747 lt!2447264)) (reg!16946 r!7292)) (= (regOne!33747 lt!2447264) r!7292)) (= lambda!383232 lambda!383113))))

(assert (=> bs!1811483 (not (= lambda!383232 lambda!383114))))

(declare-fun bs!1811484 () Bool)

(assert (= bs!1811484 (and b!6797314 b!6797109)))

(assert (=> bs!1811484 (not (= lambda!383232 lambda!383220))))

(declare-fun bs!1811485 () Bool)

(assert (= bs!1811485 (and b!6797314 b!6796480)))

(assert (=> bs!1811485 (= (and (= (reg!16946 (regOne!33747 lt!2447264)) (reg!16946 r!7292)) (= (regOne!33747 lt!2447264) r!7292)) (= lambda!383232 lambda!383145))))

(declare-fun bs!1811486 () Bool)

(assert (= bs!1811486 (and b!6797314 b!6797098)))

(assert (=> bs!1811486 (not (= lambda!383232 lambda!383215))))

(declare-fun bs!1811487 () Bool)

(assert (= bs!1811487 (and b!6797314 b!6796479)))

(assert (=> bs!1811487 (not (= lambda!383232 lambda!383146))))

(declare-fun bs!1811488 () Bool)

(assert (= bs!1811488 (and b!6797314 d!2135644)))

(assert (=> bs!1811488 (not (= lambda!383232 lambda!383204))))

(declare-fun bs!1811489 () Bool)

(assert (= bs!1811489 (and b!6797314 b!6796375)))

(assert (=> bs!1811489 (= (and (= (reg!16946 (regOne!33747 lt!2447264)) (reg!16946 lt!2447264)) (= (regOne!33747 lt!2447264) lt!2447264)) (= lambda!383232 lambda!383137))))

(assert (=> bs!1811481 (not (= lambda!383232 lambda!383185))))

(declare-fun bs!1811490 () Bool)

(assert (= bs!1811490 (and b!6797314 b!6797099)))

(assert (=> bs!1811490 (= (and (= (reg!16946 (regOne!33747 lt!2447264)) (reg!16946 (regTwo!33747 lt!2447264))) (= (regOne!33747 lt!2447264) (regTwo!33747 lt!2447264))) (= lambda!383232 lambda!383214))))

(declare-fun bs!1811491 () Bool)

(assert (= bs!1811491 (and b!6797314 d!2135754)))

(assert (=> bs!1811491 (not (= lambda!383232 lambda!383226))))

(assert (=> bs!1811483 (not (= lambda!383232 lambda!383112))))

(assert (=> bs!1811491 (not (= lambda!383232 lambda!383227))))

(assert (=> b!6797314 true))

(assert (=> b!6797314 true))

(declare-fun bs!1811492 () Bool)

(declare-fun b!6797313 () Bool)

(assert (= bs!1811492 (and b!6797313 d!2135622)))

(declare-fun lambda!383233 () Int)

(assert (=> bs!1811492 (not (= lambda!383233 lambda!383199))))

(assert (=> bs!1811492 (not (= lambda!383233 lambda!383196))))

(declare-fun bs!1811493 () Bool)

(assert (= bs!1811493 (and b!6797313 b!6797110)))

(assert (=> bs!1811493 (not (= lambda!383233 lambda!383219))))

(declare-fun bs!1811494 () Bool)

(assert (= bs!1811494 (and b!6797313 d!2135608)))

(assert (=> bs!1811494 (not (= lambda!383233 lambda!383183))))

(declare-fun bs!1811495 () Bool)

(assert (= bs!1811495 (and b!6797313 b!6796374)))

(assert (=> bs!1811495 (= (and (= (regOne!33746 (regOne!33747 lt!2447264)) (regOne!33746 lt!2447264)) (= (regTwo!33746 (regOne!33747 lt!2447264)) (regTwo!33746 lt!2447264))) (= lambda!383233 lambda!383138))))

(declare-fun bs!1811496 () Bool)

(assert (= bs!1811496 (and b!6797313 b!6796162)))

(assert (=> bs!1811496 (not (= lambda!383233 lambda!383113))))

(declare-fun bs!1811497 () Bool)

(assert (= bs!1811497 (and b!6797313 b!6797314)))

(assert (=> bs!1811497 (not (= lambda!383233 lambda!383232))))

(assert (=> bs!1811496 (= (and (= (regOne!33746 (regOne!33747 lt!2447264)) (reg!16946 r!7292)) (= (regTwo!33746 (regOne!33747 lt!2447264)) r!7292)) (= lambda!383233 lambda!383114))))

(declare-fun bs!1811498 () Bool)

(assert (= bs!1811498 (and b!6797313 b!6797109)))

(assert (=> bs!1811498 (= (and (= (regOne!33746 (regOne!33747 lt!2447264)) (regOne!33746 (regOne!33747 r!7292))) (= (regTwo!33746 (regOne!33747 lt!2447264)) (regTwo!33746 (regOne!33747 r!7292)))) (= lambda!383233 lambda!383220))))

(declare-fun bs!1811499 () Bool)

(assert (= bs!1811499 (and b!6797313 b!6796480)))

(assert (=> bs!1811499 (not (= lambda!383233 lambda!383145))))

(declare-fun bs!1811500 () Bool)

(assert (= bs!1811500 (and b!6797313 b!6797098)))

(assert (=> bs!1811500 (= (and (= (regOne!33746 (regOne!33747 lt!2447264)) (regOne!33746 (regTwo!33747 lt!2447264))) (= (regTwo!33746 (regOne!33747 lt!2447264)) (regTwo!33746 (regTwo!33747 lt!2447264)))) (= lambda!383233 lambda!383215))))

(declare-fun bs!1811501 () Bool)

(assert (= bs!1811501 (and b!6797313 b!6796479)))

(assert (=> bs!1811501 (= (and (= (regOne!33746 (regOne!33747 lt!2447264)) (regOne!33746 r!7292)) (= (regTwo!33746 (regOne!33747 lt!2447264)) (regTwo!33746 r!7292))) (= lambda!383233 lambda!383146))))

(declare-fun bs!1811502 () Bool)

(assert (= bs!1811502 (and b!6797313 d!2135644)))

(assert (=> bs!1811502 (not (= lambda!383233 lambda!383204))))

(declare-fun bs!1811503 () Bool)

(assert (= bs!1811503 (and b!6797313 b!6796375)))

(assert (=> bs!1811503 (not (= lambda!383233 lambda!383137))))

(assert (=> bs!1811494 (= (and (= (regOne!33746 (regOne!33747 lt!2447264)) (reg!16946 r!7292)) (= (regTwo!33746 (regOne!33747 lt!2447264)) r!7292)) (= lambda!383233 lambda!383185))))

(declare-fun bs!1811504 () Bool)

(assert (= bs!1811504 (and b!6797313 b!6797099)))

(assert (=> bs!1811504 (not (= lambda!383233 lambda!383214))))

(declare-fun bs!1811505 () Bool)

(assert (= bs!1811505 (and b!6797313 d!2135754)))

(assert (=> bs!1811505 (not (= lambda!383233 lambda!383226))))

(assert (=> bs!1811496 (not (= lambda!383233 lambda!383112))))

(assert (=> bs!1811505 (= (and (= (regOne!33746 (regOne!33747 lt!2447264)) (reg!16946 r!7292)) (= (regTwo!33746 (regOne!33747 lt!2447264)) r!7292)) (= lambda!383233 lambda!383227))))

(assert (=> b!6797313 true))

(assert (=> b!6797313 true))

(declare-fun bm!617465 () Bool)

(declare-fun call!617470 () Bool)

(assert (=> bm!617465 (= call!617470 (isEmpty!38402 s!2326))))

(declare-fun b!6797312 () Bool)

(declare-fun res!2777861 () Bool)

(declare-fun e!4102374 () Bool)

(assert (=> b!6797312 (=> res!2777861 e!4102374)))

(assert (=> b!6797312 (= res!2777861 call!617470)))

(declare-fun e!4102371 () Bool)

(assert (=> b!6797312 (= e!4102371 e!4102374)))

(declare-fun call!617471 () Bool)

(assert (=> b!6797313 (= e!4102371 call!617471)))

(assert (=> b!6797314 (= e!4102374 call!617471)))

(declare-fun b!6797315 () Bool)

(declare-fun e!4102375 () Bool)

(assert (=> b!6797315 (= e!4102375 call!617470)))

(declare-fun d!2135842 () Bool)

(declare-fun c!1263735 () Bool)

(assert (=> d!2135842 (= c!1263735 ((_ is EmptyExpr!16617) (regOne!33747 lt!2447264)))))

(assert (=> d!2135842 (= (matchRSpec!3718 (regOne!33747 lt!2447264) s!2326) e!4102375)))

(declare-fun c!1263732 () Bool)

(declare-fun bm!617466 () Bool)

(assert (=> bm!617466 (= call!617471 (Exists!3685 (ite c!1263732 lambda!383232 lambda!383233)))))

(declare-fun b!6797316 () Bool)

(declare-fun e!4102373 () Bool)

(declare-fun e!4102372 () Bool)

(assert (=> b!6797316 (= e!4102373 e!4102372)))

(declare-fun res!2777859 () Bool)

(assert (=> b!6797316 (= res!2777859 (matchRSpec!3718 (regOne!33747 (regOne!33747 lt!2447264)) s!2326))))

(assert (=> b!6797316 (=> res!2777859 e!4102372)))

(declare-fun b!6797317 () Bool)

(declare-fun c!1263733 () Bool)

(assert (=> b!6797317 (= c!1263733 ((_ is ElementMatch!16617) (regOne!33747 lt!2447264)))))

(declare-fun e!4102370 () Bool)

(declare-fun e!4102376 () Bool)

(assert (=> b!6797317 (= e!4102370 e!4102376)))

(declare-fun b!6797318 () Bool)

(assert (=> b!6797318 (= e!4102373 e!4102371)))

(assert (=> b!6797318 (= c!1263732 ((_ is Star!16617) (regOne!33747 lt!2447264)))))

(declare-fun b!6797319 () Bool)

(assert (=> b!6797319 (= e!4102372 (matchRSpec!3718 (regTwo!33747 (regOne!33747 lt!2447264)) s!2326))))

(declare-fun b!6797320 () Bool)

(declare-fun c!1263734 () Bool)

(assert (=> b!6797320 (= c!1263734 ((_ is Union!16617) (regOne!33747 lt!2447264)))))

(assert (=> b!6797320 (= e!4102376 e!4102373)))

(declare-fun b!6797321 () Bool)

(assert (=> b!6797321 (= e!4102376 (= s!2326 (Cons!66028 (c!1263403 (regOne!33747 lt!2447264)) Nil!66028)))))

(declare-fun b!6797322 () Bool)

(assert (=> b!6797322 (= e!4102375 e!4102370)))

(declare-fun res!2777860 () Bool)

(assert (=> b!6797322 (= res!2777860 (not ((_ is EmptyLang!16617) (regOne!33747 lt!2447264))))))

(assert (=> b!6797322 (=> (not res!2777860) (not e!4102370))))

(assert (= (and d!2135842 c!1263735) b!6797315))

(assert (= (and d!2135842 (not c!1263735)) b!6797322))

(assert (= (and b!6797322 res!2777860) b!6797317))

(assert (= (and b!6797317 c!1263733) b!6797321))

(assert (= (and b!6797317 (not c!1263733)) b!6797320))

(assert (= (and b!6797320 c!1263734) b!6797316))

(assert (= (and b!6797320 (not c!1263734)) b!6797318))

(assert (= (and b!6797316 (not res!2777859)) b!6797319))

(assert (= (and b!6797318 c!1263732) b!6797312))

(assert (= (and b!6797318 (not c!1263732)) b!6797313))

(assert (= (and b!6797312 (not res!2777861)) b!6797314))

(assert (= (or b!6797314 b!6797313) bm!617466))

(assert (= (or b!6797315 b!6797312) bm!617465))

(assert (=> bm!617465 m!7543012))

(declare-fun m!7544106 () Bool)

(assert (=> bm!617466 m!7544106))

(declare-fun m!7544108 () Bool)

(assert (=> b!6797316 m!7544108))

(declare-fun m!7544110 () Bool)

(assert (=> b!6797319 m!7544110))

(assert (=> b!6796377 d!2135842))

(declare-fun b!6797323 () Bool)

(declare-fun c!1263737 () Bool)

(assert (=> b!6797323 (= c!1263737 ((_ is Star!16617) (h!72474 (exprs!6501 lt!2447275))))))

(declare-fun e!4102382 () (InoxSet Context!12002))

(declare-fun e!4102381 () (InoxSet Context!12002))

(assert (=> b!6797323 (= e!4102382 e!4102381)))

(declare-fun b!6797324 () Bool)

(declare-fun e!4102380 () (InoxSet Context!12002))

(declare-fun call!617474 () (InoxSet Context!12002))

(declare-fun call!617472 () (InoxSet Context!12002))

(assert (=> b!6797324 (= e!4102380 ((_ map or) call!617474 call!617472))))

(declare-fun b!6797325 () Bool)

(declare-fun c!1263738 () Bool)

(declare-fun e!4102377 () Bool)

(assert (=> b!6797325 (= c!1263738 e!4102377)))

(declare-fun res!2777862 () Bool)

(assert (=> b!6797325 (=> (not res!2777862) (not e!4102377))))

(assert (=> b!6797325 (= res!2777862 ((_ is Concat!25462) (h!72474 (exprs!6501 lt!2447275))))))

(declare-fun e!4102379 () (InoxSet Context!12002))

(assert (=> b!6797325 (= e!4102379 e!4102380)))

(declare-fun b!6797326 () Bool)

(assert (=> b!6797326 (= e!4102377 (nullable!6595 (regOne!33746 (h!72474 (exprs!6501 lt!2447275)))))))

(declare-fun b!6797327 () Bool)

(declare-fun e!4102378 () (InoxSet Context!12002))

(assert (=> b!6797327 (= e!4102378 (store ((as const (Array Context!12002 Bool)) false) (Context!12003 (t!379877 (exprs!6501 lt!2447275))) true))))

(declare-fun b!6797328 () Bool)

(assert (=> b!6797328 (= e!4102380 e!4102382)))

(declare-fun c!1263740 () Bool)

(assert (=> b!6797328 (= c!1263740 ((_ is Concat!25462) (h!72474 (exprs!6501 lt!2447275))))))

(declare-fun bm!617467 () Bool)

(declare-fun call!617477 () List!66150)

(assert (=> bm!617467 (= call!617477 ($colon$colon!2425 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447275)))) (ite (or c!1263738 c!1263740) (regTwo!33746 (h!72474 (exprs!6501 lt!2447275))) (h!72474 (exprs!6501 lt!2447275)))))))

(declare-fun d!2135844 () Bool)

(declare-fun c!1263736 () Bool)

(assert (=> d!2135844 (= c!1263736 (and ((_ is ElementMatch!16617) (h!72474 (exprs!6501 lt!2447275))) (= (c!1263403 (h!72474 (exprs!6501 lt!2447275))) (h!72476 s!2326))))))

(assert (=> d!2135844 (= (derivationStepZipperDown!1845 (h!72474 (exprs!6501 lt!2447275)) (Context!12003 (t!379877 (exprs!6501 lt!2447275))) (h!72476 s!2326)) e!4102378)))

(declare-fun bm!617468 () Bool)

(declare-fun call!617475 () (InoxSet Context!12002))

(assert (=> bm!617468 (= call!617472 call!617475)))

(declare-fun b!6797329 () Bool)

(assert (=> b!6797329 (= e!4102381 ((as const (Array Context!12002 Bool)) false))))

(declare-fun b!6797330 () Bool)

(assert (=> b!6797330 (= e!4102378 e!4102379)))

(declare-fun c!1263739 () Bool)

(assert (=> b!6797330 (= c!1263739 ((_ is Union!16617) (h!72474 (exprs!6501 lt!2447275))))))

(declare-fun bm!617469 () Bool)

(declare-fun call!617473 () List!66150)

(assert (=> bm!617469 (= call!617475 (derivationStepZipperDown!1845 (ite c!1263739 (regTwo!33747 (h!72474 (exprs!6501 lt!2447275))) (ite c!1263738 (regTwo!33746 (h!72474 (exprs!6501 lt!2447275))) (ite c!1263740 (regOne!33746 (h!72474 (exprs!6501 lt!2447275))) (reg!16946 (h!72474 (exprs!6501 lt!2447275)))))) (ite (or c!1263739 c!1263738) (Context!12003 (t!379877 (exprs!6501 lt!2447275))) (Context!12003 call!617473)) (h!72476 s!2326)))))

(declare-fun b!6797331 () Bool)

(assert (=> b!6797331 (= e!4102379 ((_ map or) call!617474 call!617475))))

(declare-fun b!6797332 () Bool)

(declare-fun call!617476 () (InoxSet Context!12002))

(assert (=> b!6797332 (= e!4102382 call!617476)))

(declare-fun bm!617470 () Bool)

(assert (=> bm!617470 (= call!617476 call!617472)))

(declare-fun bm!617471 () Bool)

(assert (=> bm!617471 (= call!617474 (derivationStepZipperDown!1845 (ite c!1263739 (regOne!33747 (h!72474 (exprs!6501 lt!2447275))) (regOne!33746 (h!72474 (exprs!6501 lt!2447275)))) (ite c!1263739 (Context!12003 (t!379877 (exprs!6501 lt!2447275))) (Context!12003 call!617477)) (h!72476 s!2326)))))

(declare-fun b!6797333 () Bool)

(assert (=> b!6797333 (= e!4102381 call!617476)))

(declare-fun bm!617472 () Bool)

(assert (=> bm!617472 (= call!617473 call!617477)))

(assert (= (and d!2135844 c!1263736) b!6797327))

(assert (= (and d!2135844 (not c!1263736)) b!6797330))

(assert (= (and b!6797330 c!1263739) b!6797331))

(assert (= (and b!6797330 (not c!1263739)) b!6797325))

(assert (= (and b!6797325 res!2777862) b!6797326))

(assert (= (and b!6797325 c!1263738) b!6797324))

(assert (= (and b!6797325 (not c!1263738)) b!6797328))

(assert (= (and b!6797328 c!1263740) b!6797332))

(assert (= (and b!6797328 (not c!1263740)) b!6797323))

(assert (= (and b!6797323 c!1263737) b!6797333))

(assert (= (and b!6797323 (not c!1263737)) b!6797329))

(assert (= (or b!6797332 b!6797333) bm!617472))

(assert (= (or b!6797332 b!6797333) bm!617470))

(assert (= (or b!6797324 bm!617472) bm!617467))

(assert (= (or b!6797324 bm!617470) bm!617468))

(assert (= (or b!6797331 bm!617468) bm!617469))

(assert (= (or b!6797331 b!6797324) bm!617471))

(declare-fun m!7544112 () Bool)

(assert (=> b!6797326 m!7544112))

(declare-fun m!7544114 () Bool)

(assert (=> bm!617469 m!7544114))

(declare-fun m!7544116 () Bool)

(assert (=> bm!617471 m!7544116))

(declare-fun m!7544118 () Bool)

(assert (=> b!6797327 m!7544118))

(declare-fun m!7544120 () Bool)

(assert (=> bm!617467 m!7544120))

(assert (=> bm!617366 d!2135844))

(assert (=> d!2135576 d!2135562))

(declare-fun d!2135846 () Bool)

(assert (=> d!2135846 (= (flatMap!2098 lt!2447259 lambda!383115) (dynLambda!26359 lambda!383115 lt!2447273))))

(assert (=> d!2135846 true))

(declare-fun _$13!4258 () Unit!159925)

(assert (=> d!2135846 (= (choose!50637 lt!2447259 lt!2447273 lambda!383115) _$13!4258)))

(declare-fun b_lambda!256131 () Bool)

(assert (=> (not b_lambda!256131) (not d!2135846)))

(declare-fun bs!1811506 () Bool)

(assert (= bs!1811506 d!2135846))

(assert (=> bs!1811506 m!7543068))

(assert (=> bs!1811506 m!7543438))

(assert (=> d!2135576 d!2135846))

(declare-fun bm!617473 () Bool)

(declare-fun call!617478 () Bool)

(declare-fun c!1263741 () Bool)

(assert (=> bm!617473 (= call!617478 (validRegex!8353 (ite c!1263741 (regTwo!33747 lt!2447289) (regTwo!33746 lt!2447289))))))

(declare-fun b!6797334 () Bool)

(declare-fun e!4102387 () Bool)

(declare-fun e!4102389 () Bool)

(assert (=> b!6797334 (= e!4102387 e!4102389)))

(declare-fun res!2777865 () Bool)

(assert (=> b!6797334 (= res!2777865 (not (nullable!6595 (reg!16946 lt!2447289))))))

(assert (=> b!6797334 (=> (not res!2777865) (not e!4102389))))

(declare-fun b!6797335 () Bool)

(declare-fun e!4102384 () Bool)

(assert (=> b!6797335 (= e!4102384 call!617478)))

(declare-fun b!6797336 () Bool)

(declare-fun e!4102383 () Bool)

(assert (=> b!6797336 (= e!4102387 e!4102383)))

(assert (=> b!6797336 (= c!1263741 ((_ is Union!16617) lt!2447289))))

(declare-fun b!6797337 () Bool)

(declare-fun res!2777866 () Bool)

(declare-fun e!4102388 () Bool)

(assert (=> b!6797337 (=> (not res!2777866) (not e!4102388))))

(declare-fun call!617479 () Bool)

(assert (=> b!6797337 (= res!2777866 call!617479)))

(assert (=> b!6797337 (= e!4102383 e!4102388)))

(declare-fun b!6797338 () Bool)

(declare-fun e!4102385 () Bool)

(assert (=> b!6797338 (= e!4102385 e!4102387)))

(declare-fun c!1263742 () Bool)

(assert (=> b!6797338 (= c!1263742 ((_ is Star!16617) lt!2447289))))

(declare-fun b!6797339 () Bool)

(declare-fun res!2777867 () Bool)

(declare-fun e!4102386 () Bool)

(assert (=> b!6797339 (=> res!2777867 e!4102386)))

(assert (=> b!6797339 (= res!2777867 (not ((_ is Concat!25462) lt!2447289)))))

(assert (=> b!6797339 (= e!4102383 e!4102386)))

(declare-fun bm!617474 () Bool)

(declare-fun call!617480 () Bool)

(assert (=> bm!617474 (= call!617480 (validRegex!8353 (ite c!1263742 (reg!16946 lt!2447289) (ite c!1263741 (regOne!33747 lt!2447289) (regOne!33746 lt!2447289)))))))

(declare-fun bm!617475 () Bool)

(assert (=> bm!617475 (= call!617479 call!617480)))

(declare-fun b!6797340 () Bool)

(assert (=> b!6797340 (= e!4102388 call!617478)))

(declare-fun d!2135848 () Bool)

(declare-fun res!2777864 () Bool)

(assert (=> d!2135848 (=> res!2777864 e!4102385)))

(assert (=> d!2135848 (= res!2777864 ((_ is ElementMatch!16617) lt!2447289))))

(assert (=> d!2135848 (= (validRegex!8353 lt!2447289) e!4102385)))

(declare-fun b!6797341 () Bool)

(assert (=> b!6797341 (= e!4102389 call!617480)))

(declare-fun b!6797342 () Bool)

(assert (=> b!6797342 (= e!4102386 e!4102384)))

(declare-fun res!2777863 () Bool)

(assert (=> b!6797342 (=> (not res!2777863) (not e!4102384))))

(assert (=> b!6797342 (= res!2777863 call!617479)))

(assert (= (and d!2135848 (not res!2777864)) b!6797338))

(assert (= (and b!6797338 c!1263742) b!6797334))

(assert (= (and b!6797338 (not c!1263742)) b!6797336))

(assert (= (and b!6797334 res!2777865) b!6797341))

(assert (= (and b!6797336 c!1263741) b!6797337))

(assert (= (and b!6797336 (not c!1263741)) b!6797339))

(assert (= (and b!6797337 res!2777866) b!6797340))

(assert (= (and b!6797339 (not res!2777867)) b!6797342))

(assert (= (and b!6797342 res!2777863) b!6797335))

(assert (= (or b!6797340 b!6797335) bm!617473))

(assert (= (or b!6797337 b!6797342) bm!617475))

(assert (= (or b!6797341 bm!617475) bm!617474))

(declare-fun m!7544122 () Bool)

(assert (=> bm!617473 m!7544122))

(declare-fun m!7544124 () Bool)

(assert (=> b!6797334 m!7544124))

(declare-fun m!7544126 () Bool)

(assert (=> bm!617474 m!7544126))

(assert (=> d!2135472 d!2135848))

(declare-fun bs!1811507 () Bool)

(declare-fun d!2135850 () Bool)

(assert (= bs!1811507 (and d!2135850 b!6796140)))

(declare-fun lambda!383234 () Int)

(assert (=> bs!1811507 (= lambda!383234 lambda!383117)))

(declare-fun bs!1811508 () Bool)

(assert (= bs!1811508 (and d!2135850 d!2135578)))

(assert (=> bs!1811508 (= lambda!383234 lambda!383167)))

(declare-fun bs!1811509 () Bool)

(assert (= bs!1811509 (and d!2135850 d!2135806)))

(assert (=> bs!1811509 (= lambda!383234 lambda!383230)))

(declare-fun bs!1811510 () Bool)

(assert (= bs!1811510 (and d!2135850 d!2135542)))

(assert (=> bs!1811510 (= lambda!383234 lambda!383157)))

(declare-fun bs!1811511 () Bool)

(assert (= bs!1811511 (and d!2135850 d!2135708)))

(assert (=> bs!1811511 (= lambda!383234 lambda!383212)))

(declare-fun bs!1811512 () Bool)

(assert (= bs!1811512 (and d!2135850 d!2135604)))

(assert (=> bs!1811512 (= lambda!383234 lambda!383176)))

(declare-fun bs!1811513 () Bool)

(assert (= bs!1811513 (and d!2135850 d!2135778)))

(assert (=> bs!1811513 (= lambda!383234 lambda!383228)))

(declare-fun bs!1811514 () Bool)

(assert (= bs!1811514 (and d!2135850 d!2135474)))

(assert (=> bs!1811514 (= lambda!383234 lambda!383130)))

(declare-fun bs!1811515 () Bool)

(assert (= bs!1811515 (and d!2135850 d!2135710)))

(assert (=> bs!1811515 (= lambda!383234 lambda!383213)))

(declare-fun bs!1811516 () Bool)

(assert (= bs!1811516 (and d!2135850 d!2135648)))

(assert (=> bs!1811516 (= lambda!383234 lambda!383210)))

(declare-fun bs!1811517 () Bool)

(assert (= bs!1811517 (and d!2135850 d!2135838)))

(assert (=> bs!1811517 (= lambda!383234 lambda!383231)))

(declare-fun bs!1811518 () Bool)

(assert (= bs!1811518 (and d!2135850 d!2135538)))

(assert (=> bs!1811518 (= lambda!383234 lambda!383151)))

(declare-fun b!6797343 () Bool)

(declare-fun e!4102391 () Regex!16617)

(assert (=> b!6797343 (= e!4102391 EmptyLang!16617)))

(declare-fun b!6797344 () Bool)

(declare-fun e!4102395 () Bool)

(declare-fun e!4102394 () Bool)

(assert (=> b!6797344 (= e!4102395 e!4102394)))

(declare-fun c!1263745 () Bool)

(assert (=> b!6797344 (= c!1263745 (isEmpty!38403 (unfocusZipperList!2038 (Cons!66027 lt!2447273 Nil!66027))))))

(declare-fun b!6797345 () Bool)

(declare-fun e!4102390 () Bool)

(assert (=> b!6797345 (= e!4102394 e!4102390)))

(declare-fun c!1263743 () Bool)

(assert (=> b!6797345 (= c!1263743 (isEmpty!38403 (tail!12730 (unfocusZipperList!2038 (Cons!66027 lt!2447273 Nil!66027)))))))

(declare-fun b!6797346 () Bool)

(declare-fun lt!2447429 () Regex!16617)

(assert (=> b!6797346 (= e!4102390 (isUnion!1412 lt!2447429))))

(declare-fun b!6797347 () Bool)

(declare-fun e!4102393 () Bool)

(assert (=> b!6797347 (= e!4102393 (isEmpty!38403 (t!379877 (unfocusZipperList!2038 (Cons!66027 lt!2447273 Nil!66027)))))))

(declare-fun b!6797348 () Bool)

(assert (=> b!6797348 (= e!4102394 (isEmptyLang!1982 lt!2447429))))

(assert (=> d!2135850 e!4102395))

(declare-fun res!2777869 () Bool)

(assert (=> d!2135850 (=> (not res!2777869) (not e!4102395))))

(assert (=> d!2135850 (= res!2777869 (validRegex!8353 lt!2447429))))

(declare-fun e!4102392 () Regex!16617)

(assert (=> d!2135850 (= lt!2447429 e!4102392)))

(declare-fun c!1263746 () Bool)

(assert (=> d!2135850 (= c!1263746 e!4102393)))

(declare-fun res!2777868 () Bool)

(assert (=> d!2135850 (=> (not res!2777868) (not e!4102393))))

(assert (=> d!2135850 (= res!2777868 ((_ is Cons!66026) (unfocusZipperList!2038 (Cons!66027 lt!2447273 Nil!66027))))))

(assert (=> d!2135850 (forall!15809 (unfocusZipperList!2038 (Cons!66027 lt!2447273 Nil!66027)) lambda!383234)))

(assert (=> d!2135850 (= (generalisedUnion!2461 (unfocusZipperList!2038 (Cons!66027 lt!2447273 Nil!66027))) lt!2447429)))

(declare-fun b!6797349 () Bool)

(assert (=> b!6797349 (= e!4102392 (h!72474 (unfocusZipperList!2038 (Cons!66027 lt!2447273 Nil!66027))))))

(declare-fun b!6797350 () Bool)

(assert (=> b!6797350 (= e!4102390 (= lt!2447429 (head!13645 (unfocusZipperList!2038 (Cons!66027 lt!2447273 Nil!66027)))))))

(declare-fun b!6797351 () Bool)

(assert (=> b!6797351 (= e!4102391 (Union!16617 (h!72474 (unfocusZipperList!2038 (Cons!66027 lt!2447273 Nil!66027))) (generalisedUnion!2461 (t!379877 (unfocusZipperList!2038 (Cons!66027 lt!2447273 Nil!66027))))))))

(declare-fun b!6797352 () Bool)

(assert (=> b!6797352 (= e!4102392 e!4102391)))

(declare-fun c!1263744 () Bool)

(assert (=> b!6797352 (= c!1263744 ((_ is Cons!66026) (unfocusZipperList!2038 (Cons!66027 lt!2447273 Nil!66027))))))

(assert (= (and d!2135850 res!2777868) b!6797347))

(assert (= (and d!2135850 c!1263746) b!6797349))

(assert (= (and d!2135850 (not c!1263746)) b!6797352))

(assert (= (and b!6797352 c!1263744) b!6797351))

(assert (= (and b!6797352 (not c!1263744)) b!6797343))

(assert (= (and d!2135850 res!2777869) b!6797344))

(assert (= (and b!6797344 c!1263745) b!6797348))

(assert (= (and b!6797344 (not c!1263745)) b!6797345))

(assert (= (and b!6797345 c!1263743) b!6797350))

(assert (= (and b!6797345 (not c!1263743)) b!6797346))

(declare-fun m!7544128 () Bool)

(assert (=> d!2135850 m!7544128))

(assert (=> d!2135850 m!7543166))

(declare-fun m!7544130 () Bool)

(assert (=> d!2135850 m!7544130))

(declare-fun m!7544132 () Bool)

(assert (=> b!6797347 m!7544132))

(declare-fun m!7544134 () Bool)

(assert (=> b!6797351 m!7544134))

(assert (=> b!6797350 m!7543166))

(declare-fun m!7544136 () Bool)

(assert (=> b!6797350 m!7544136))

(assert (=> b!6797344 m!7543166))

(declare-fun m!7544138 () Bool)

(assert (=> b!6797344 m!7544138))

(assert (=> b!6797345 m!7543166))

(declare-fun m!7544140 () Bool)

(assert (=> b!6797345 m!7544140))

(assert (=> b!6797345 m!7544140))

(declare-fun m!7544142 () Bool)

(assert (=> b!6797345 m!7544142))

(declare-fun m!7544144 () Bool)

(assert (=> b!6797348 m!7544144))

(declare-fun m!7544146 () Bool)

(assert (=> b!6797346 m!7544146))

(assert (=> d!2135472 d!2135850))

(declare-fun bs!1811519 () Bool)

(declare-fun d!2135852 () Bool)

(assert (= bs!1811519 (and d!2135852 b!6796140)))

(declare-fun lambda!383235 () Int)

(assert (=> bs!1811519 (= lambda!383235 lambda!383117)))

(declare-fun bs!1811520 () Bool)

(assert (= bs!1811520 (and d!2135852 d!2135578)))

(assert (=> bs!1811520 (= lambda!383235 lambda!383167)))

(declare-fun bs!1811521 () Bool)

(assert (= bs!1811521 (and d!2135852 d!2135806)))

(assert (=> bs!1811521 (= lambda!383235 lambda!383230)))

(declare-fun bs!1811522 () Bool)

(assert (= bs!1811522 (and d!2135852 d!2135850)))

(assert (=> bs!1811522 (= lambda!383235 lambda!383234)))

(declare-fun bs!1811523 () Bool)

(assert (= bs!1811523 (and d!2135852 d!2135542)))

(assert (=> bs!1811523 (= lambda!383235 lambda!383157)))

(declare-fun bs!1811524 () Bool)

(assert (= bs!1811524 (and d!2135852 d!2135708)))

(assert (=> bs!1811524 (= lambda!383235 lambda!383212)))

(declare-fun bs!1811525 () Bool)

(assert (= bs!1811525 (and d!2135852 d!2135604)))

(assert (=> bs!1811525 (= lambda!383235 lambda!383176)))

(declare-fun bs!1811526 () Bool)

(assert (= bs!1811526 (and d!2135852 d!2135778)))

(assert (=> bs!1811526 (= lambda!383235 lambda!383228)))

(declare-fun bs!1811527 () Bool)

(assert (= bs!1811527 (and d!2135852 d!2135474)))

(assert (=> bs!1811527 (= lambda!383235 lambda!383130)))

(declare-fun bs!1811528 () Bool)

(assert (= bs!1811528 (and d!2135852 d!2135710)))

(assert (=> bs!1811528 (= lambda!383235 lambda!383213)))

(declare-fun bs!1811529 () Bool)

(assert (= bs!1811529 (and d!2135852 d!2135648)))

(assert (=> bs!1811529 (= lambda!383235 lambda!383210)))

(declare-fun bs!1811530 () Bool)

(assert (= bs!1811530 (and d!2135852 d!2135838)))

(assert (=> bs!1811530 (= lambda!383235 lambda!383231)))

(declare-fun bs!1811531 () Bool)

(assert (= bs!1811531 (and d!2135852 d!2135538)))

(assert (=> bs!1811531 (= lambda!383235 lambda!383151)))

(declare-fun lt!2447430 () List!66150)

(assert (=> d!2135852 (forall!15809 lt!2447430 lambda!383235)))

(declare-fun e!4102396 () List!66150)

(assert (=> d!2135852 (= lt!2447430 e!4102396)))

(declare-fun c!1263747 () Bool)

(assert (=> d!2135852 (= c!1263747 ((_ is Cons!66027) (Cons!66027 lt!2447273 Nil!66027)))))

(assert (=> d!2135852 (= (unfocusZipperList!2038 (Cons!66027 lt!2447273 Nil!66027)) lt!2447430)))

(declare-fun b!6797353 () Bool)

(assert (=> b!6797353 (= e!4102396 (Cons!66026 (generalisedConcat!2214 (exprs!6501 (h!72475 (Cons!66027 lt!2447273 Nil!66027)))) (unfocusZipperList!2038 (t!379878 (Cons!66027 lt!2447273 Nil!66027)))))))

(declare-fun b!6797354 () Bool)

(assert (=> b!6797354 (= e!4102396 Nil!66026)))

(assert (= (and d!2135852 c!1263747) b!6797353))

(assert (= (and d!2135852 (not c!1263747)) b!6797354))

(declare-fun m!7544148 () Bool)

(assert (=> d!2135852 m!7544148))

(declare-fun m!7544150 () Bool)

(assert (=> b!6797353 m!7544150))

(declare-fun m!7544152 () Bool)

(assert (=> b!6797353 m!7544152))

(assert (=> d!2135472 d!2135852))

(assert (=> b!6796507 d!2135692))

(assert (=> d!2135522 d!2135628))

(assert (=> d!2135522 d!2135476))

(declare-fun d!2135854 () Bool)

(assert (=> d!2135854 (= (isEmpty!38403 (tail!12730 (exprs!6501 (h!72475 zl!343)))) ((_ is Nil!66026) (tail!12730 (exprs!6501 (h!72475 zl!343)))))))

(assert (=> b!6796854 d!2135854))

(declare-fun d!2135856 () Bool)

(assert (=> d!2135856 (= (tail!12730 (exprs!6501 (h!72475 zl!343))) (t!379877 (exprs!6501 (h!72475 zl!343))))))

(assert (=> b!6796854 d!2135856))

(declare-fun d!2135858 () Bool)

(declare-fun res!2777870 () Bool)

(declare-fun e!4102397 () Bool)

(assert (=> d!2135858 (=> res!2777870 e!4102397)))

(assert (=> d!2135858 (= res!2777870 ((_ is Nil!66026) (++!14779 (Cons!66026 (reg!16946 r!7292) Nil!66026) lt!2447262)))))

(assert (=> d!2135858 (= (forall!15809 (++!14779 (Cons!66026 (reg!16946 r!7292) Nil!66026) lt!2447262) lambda!383117) e!4102397)))

(declare-fun b!6797355 () Bool)

(declare-fun e!4102398 () Bool)

(assert (=> b!6797355 (= e!4102397 e!4102398)))

(declare-fun res!2777871 () Bool)

(assert (=> b!6797355 (=> (not res!2777871) (not e!4102398))))

(assert (=> b!6797355 (= res!2777871 (dynLambda!26363 lambda!383117 (h!72474 (++!14779 (Cons!66026 (reg!16946 r!7292) Nil!66026) lt!2447262))))))

(declare-fun b!6797356 () Bool)

(assert (=> b!6797356 (= e!4102398 (forall!15809 (t!379877 (++!14779 (Cons!66026 (reg!16946 r!7292) Nil!66026) lt!2447262)) lambda!383117))))

(assert (= (and d!2135858 (not res!2777870)) b!6797355))

(assert (= (and b!6797355 res!2777871) b!6797356))

(declare-fun b_lambda!256133 () Bool)

(assert (=> (not b_lambda!256133) (not b!6797355)))

(declare-fun m!7544154 () Bool)

(assert (=> b!6797355 m!7544154))

(declare-fun m!7544156 () Bool)

(assert (=> b!6797356 m!7544156))

(assert (=> d!2135590 d!2135858))

(assert (=> d!2135590 d!2135580))

(declare-fun d!2135860 () Bool)

(assert (=> d!2135860 (forall!15809 (++!14779 (Cons!66026 (reg!16946 r!7292) Nil!66026) lt!2447262) lambda!383117)))

(assert (=> d!2135860 true))

(declare-fun _$78!405 () Unit!159925)

(assert (=> d!2135860 (= (choose!50646 (Cons!66026 (reg!16946 r!7292) Nil!66026) lt!2447262 lambda!383117) _$78!405)))

(declare-fun bs!1811532 () Bool)

(assert (= bs!1811532 d!2135860))

(assert (=> bs!1811532 m!7543040))

(assert (=> bs!1811532 m!7543040))

(assert (=> bs!1811532 m!7543492))

(assert (=> d!2135590 d!2135860))

(declare-fun d!2135862 () Bool)

(declare-fun res!2777872 () Bool)

(declare-fun e!4102399 () Bool)

(assert (=> d!2135862 (=> res!2777872 e!4102399)))

(assert (=> d!2135862 (= res!2777872 ((_ is Nil!66026) (Cons!66026 (reg!16946 r!7292) Nil!66026)))))

(assert (=> d!2135862 (= (forall!15809 (Cons!66026 (reg!16946 r!7292) Nil!66026) lambda!383117) e!4102399)))

(declare-fun b!6797357 () Bool)

(declare-fun e!4102400 () Bool)

(assert (=> b!6797357 (= e!4102399 e!4102400)))

(declare-fun res!2777873 () Bool)

(assert (=> b!6797357 (=> (not res!2777873) (not e!4102400))))

(assert (=> b!6797357 (= res!2777873 (dynLambda!26363 lambda!383117 (h!72474 (Cons!66026 (reg!16946 r!7292) Nil!66026))))))

(declare-fun b!6797358 () Bool)

(assert (=> b!6797358 (= e!4102400 (forall!15809 (t!379877 (Cons!66026 (reg!16946 r!7292) Nil!66026)) lambda!383117))))

(assert (= (and d!2135862 (not res!2777872)) b!6797357))

(assert (= (and b!6797357 res!2777873) b!6797358))

(declare-fun b_lambda!256135 () Bool)

(assert (=> (not b_lambda!256135) (not b!6797357)))

(declare-fun m!7544158 () Bool)

(assert (=> b!6797357 m!7544158))

(declare-fun m!7544160 () Bool)

(assert (=> b!6797358 m!7544160))

(assert (=> d!2135590 d!2135862))

(declare-fun d!2135864 () Bool)

(assert (=> d!2135864 true))

(assert (=> d!2135864 true))

(declare-fun res!2777874 () Bool)

(assert (=> d!2135864 (= (choose!50651 lambda!383114) res!2777874)))

(assert (=> d!2135626 d!2135864))

(declare-fun d!2135866 () Bool)

(declare-fun res!2777875 () Bool)

(declare-fun e!4102401 () Bool)

(assert (=> d!2135866 (=> res!2777875 e!4102401)))

(assert (=> d!2135866 (= res!2777875 ((_ is Nil!66026) lt!2447328))))

(assert (=> d!2135866 (= (forall!15809 lt!2447328 lambda!383157) e!4102401)))

(declare-fun b!6797359 () Bool)

(declare-fun e!4102402 () Bool)

(assert (=> b!6797359 (= e!4102401 e!4102402)))

(declare-fun res!2777876 () Bool)

(assert (=> b!6797359 (=> (not res!2777876) (not e!4102402))))

(assert (=> b!6797359 (= res!2777876 (dynLambda!26363 lambda!383157 (h!72474 lt!2447328)))))

(declare-fun b!6797360 () Bool)

(assert (=> b!6797360 (= e!4102402 (forall!15809 (t!379877 lt!2447328) lambda!383157))))

(assert (= (and d!2135866 (not res!2777875)) b!6797359))

(assert (= (and b!6797359 res!2777876) b!6797360))

(declare-fun b_lambda!256137 () Bool)

(assert (=> (not b_lambda!256137) (not b!6797359)))

(declare-fun m!7544162 () Bool)

(assert (=> b!6797359 m!7544162))

(declare-fun m!7544164 () Bool)

(assert (=> b!6797360 m!7544164))

(assert (=> d!2135542 d!2135866))

(assert (=> bm!617352 d!2135628))

(declare-fun d!2135868 () Bool)

(assert (=> d!2135868 (= (isEmpty!38403 (t!379877 (unfocusZipperList!2038 zl!343))) ((_ is Nil!66026) (t!379877 (unfocusZipperList!2038 zl!343))))))

(assert (=> b!6796593 d!2135868))

(declare-fun b!6797361 () Bool)

(declare-fun c!1263749 () Bool)

(assert (=> b!6797361 (= c!1263749 ((_ is Star!16617) (h!72474 (exprs!6501 lt!2447273))))))

(declare-fun e!4102408 () (InoxSet Context!12002))

(declare-fun e!4102407 () (InoxSet Context!12002))

(assert (=> b!6797361 (= e!4102408 e!4102407)))

(declare-fun b!6797362 () Bool)

(declare-fun e!4102406 () (InoxSet Context!12002))

(declare-fun call!617483 () (InoxSet Context!12002))

(declare-fun call!617481 () (InoxSet Context!12002))

(assert (=> b!6797362 (= e!4102406 ((_ map or) call!617483 call!617481))))

(declare-fun b!6797363 () Bool)

(declare-fun c!1263750 () Bool)

(declare-fun e!4102403 () Bool)

(assert (=> b!6797363 (= c!1263750 e!4102403)))

(declare-fun res!2777877 () Bool)

(assert (=> b!6797363 (=> (not res!2777877) (not e!4102403))))

(assert (=> b!6797363 (= res!2777877 ((_ is Concat!25462) (h!72474 (exprs!6501 lt!2447273))))))

(declare-fun e!4102405 () (InoxSet Context!12002))

(assert (=> b!6797363 (= e!4102405 e!4102406)))

(declare-fun b!6797364 () Bool)

(assert (=> b!6797364 (= e!4102403 (nullable!6595 (regOne!33746 (h!72474 (exprs!6501 lt!2447273)))))))

(declare-fun b!6797365 () Bool)

(declare-fun e!4102404 () (InoxSet Context!12002))

(assert (=> b!6797365 (= e!4102404 (store ((as const (Array Context!12002 Bool)) false) (Context!12003 (t!379877 (exprs!6501 lt!2447273))) true))))

(declare-fun b!6797366 () Bool)

(assert (=> b!6797366 (= e!4102406 e!4102408)))

(declare-fun c!1263752 () Bool)

(assert (=> b!6797366 (= c!1263752 ((_ is Concat!25462) (h!72474 (exprs!6501 lt!2447273))))))

(declare-fun bm!617476 () Bool)

(declare-fun call!617486 () List!66150)

(assert (=> bm!617476 (= call!617486 ($colon$colon!2425 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447273)))) (ite (or c!1263750 c!1263752) (regTwo!33746 (h!72474 (exprs!6501 lt!2447273))) (h!72474 (exprs!6501 lt!2447273)))))))

(declare-fun d!2135870 () Bool)

(declare-fun c!1263748 () Bool)

(assert (=> d!2135870 (= c!1263748 (and ((_ is ElementMatch!16617) (h!72474 (exprs!6501 lt!2447273))) (= (c!1263403 (h!72474 (exprs!6501 lt!2447273))) (h!72476 s!2326))))))

(assert (=> d!2135870 (= (derivationStepZipperDown!1845 (h!72474 (exprs!6501 lt!2447273)) (Context!12003 (t!379877 (exprs!6501 lt!2447273))) (h!72476 s!2326)) e!4102404)))

(declare-fun bm!617477 () Bool)

(declare-fun call!617484 () (InoxSet Context!12002))

(assert (=> bm!617477 (= call!617481 call!617484)))

(declare-fun b!6797367 () Bool)

(assert (=> b!6797367 (= e!4102407 ((as const (Array Context!12002 Bool)) false))))

(declare-fun b!6797368 () Bool)

(assert (=> b!6797368 (= e!4102404 e!4102405)))

(declare-fun c!1263751 () Bool)

(assert (=> b!6797368 (= c!1263751 ((_ is Union!16617) (h!72474 (exprs!6501 lt!2447273))))))

(declare-fun call!617482 () List!66150)

(declare-fun bm!617478 () Bool)

(assert (=> bm!617478 (= call!617484 (derivationStepZipperDown!1845 (ite c!1263751 (regTwo!33747 (h!72474 (exprs!6501 lt!2447273))) (ite c!1263750 (regTwo!33746 (h!72474 (exprs!6501 lt!2447273))) (ite c!1263752 (regOne!33746 (h!72474 (exprs!6501 lt!2447273))) (reg!16946 (h!72474 (exprs!6501 lt!2447273)))))) (ite (or c!1263751 c!1263750) (Context!12003 (t!379877 (exprs!6501 lt!2447273))) (Context!12003 call!617482)) (h!72476 s!2326)))))

(declare-fun b!6797369 () Bool)

(assert (=> b!6797369 (= e!4102405 ((_ map or) call!617483 call!617484))))

(declare-fun b!6797370 () Bool)

(declare-fun call!617485 () (InoxSet Context!12002))

(assert (=> b!6797370 (= e!4102408 call!617485)))

(declare-fun bm!617479 () Bool)

(assert (=> bm!617479 (= call!617485 call!617481)))

(declare-fun bm!617480 () Bool)

(assert (=> bm!617480 (= call!617483 (derivationStepZipperDown!1845 (ite c!1263751 (regOne!33747 (h!72474 (exprs!6501 lt!2447273))) (regOne!33746 (h!72474 (exprs!6501 lt!2447273)))) (ite c!1263751 (Context!12003 (t!379877 (exprs!6501 lt!2447273))) (Context!12003 call!617486)) (h!72476 s!2326)))))

(declare-fun b!6797371 () Bool)

(assert (=> b!6797371 (= e!4102407 call!617485)))

(declare-fun bm!617481 () Bool)

(assert (=> bm!617481 (= call!617482 call!617486)))

(assert (= (and d!2135870 c!1263748) b!6797365))

(assert (= (and d!2135870 (not c!1263748)) b!6797368))

(assert (= (and b!6797368 c!1263751) b!6797369))

(assert (= (and b!6797368 (not c!1263751)) b!6797363))

(assert (= (and b!6797363 res!2777877) b!6797364))

(assert (= (and b!6797363 c!1263750) b!6797362))

(assert (= (and b!6797363 (not c!1263750)) b!6797366))

(assert (= (and b!6797366 c!1263752) b!6797370))

(assert (= (and b!6797366 (not c!1263752)) b!6797361))

(assert (= (and b!6797361 c!1263749) b!6797371))

(assert (= (and b!6797361 (not c!1263749)) b!6797367))

(assert (= (or b!6797370 b!6797371) bm!617481))

(assert (= (or b!6797370 b!6797371) bm!617479))

(assert (= (or b!6797362 bm!617481) bm!617476))

(assert (= (or b!6797362 bm!617479) bm!617477))

(assert (= (or b!6797369 bm!617477) bm!617478))

(assert (= (or b!6797369 b!6797362) bm!617480))

(declare-fun m!7544166 () Bool)

(assert (=> b!6797364 m!7544166))

(declare-fun m!7544168 () Bool)

(assert (=> bm!617478 m!7544168))

(declare-fun m!7544170 () Bool)

(assert (=> bm!617480 m!7544170))

(declare-fun m!7544172 () Bool)

(assert (=> b!6797365 m!7544172))

(declare-fun m!7544174 () Bool)

(assert (=> bm!617476 m!7544174))

(assert (=> bm!617365 d!2135870))

(declare-fun d!2135872 () Bool)

(assert (=> d!2135872 (= (nullable!6595 (regOne!33746 (reg!16946 r!7292))) (nullableFct!2499 (regOne!33746 (reg!16946 r!7292))))))

(declare-fun bs!1811533 () Bool)

(assert (= bs!1811533 d!2135872))

(declare-fun m!7544176 () Bool)

(assert (=> bs!1811533 m!7544176))

(assert (=> b!6796524 d!2135872))

(declare-fun bs!1811534 () Bool)

(declare-fun d!2135874 () Bool)

(assert (= bs!1811534 (and d!2135874 b!6796140)))

(declare-fun lambda!383236 () Int)

(assert (=> bs!1811534 (= lambda!383236 lambda!383117)))

(declare-fun bs!1811535 () Bool)

(assert (= bs!1811535 (and d!2135874 d!2135578)))

(assert (=> bs!1811535 (= lambda!383236 lambda!383167)))

(declare-fun bs!1811536 () Bool)

(assert (= bs!1811536 (and d!2135874 d!2135806)))

(assert (=> bs!1811536 (= lambda!383236 lambda!383230)))

(declare-fun bs!1811537 () Bool)

(assert (= bs!1811537 (and d!2135874 d!2135850)))

(assert (=> bs!1811537 (= lambda!383236 lambda!383234)))

(declare-fun bs!1811538 () Bool)

(assert (= bs!1811538 (and d!2135874 d!2135542)))

(assert (=> bs!1811538 (= lambda!383236 lambda!383157)))

(declare-fun bs!1811539 () Bool)

(assert (= bs!1811539 (and d!2135874 d!2135708)))

(assert (=> bs!1811539 (= lambda!383236 lambda!383212)))

(declare-fun bs!1811540 () Bool)

(assert (= bs!1811540 (and d!2135874 d!2135604)))

(assert (=> bs!1811540 (= lambda!383236 lambda!383176)))

(declare-fun bs!1811541 () Bool)

(assert (= bs!1811541 (and d!2135874 d!2135778)))

(assert (=> bs!1811541 (= lambda!383236 lambda!383228)))

(declare-fun bs!1811542 () Bool)

(assert (= bs!1811542 (and d!2135874 d!2135474)))

(assert (=> bs!1811542 (= lambda!383236 lambda!383130)))

(declare-fun bs!1811543 () Bool)

(assert (= bs!1811543 (and d!2135874 d!2135648)))

(assert (=> bs!1811543 (= lambda!383236 lambda!383210)))

(declare-fun bs!1811544 () Bool)

(assert (= bs!1811544 (and d!2135874 d!2135838)))

(assert (=> bs!1811544 (= lambda!383236 lambda!383231)))

(declare-fun bs!1811545 () Bool)

(assert (= bs!1811545 (and d!2135874 d!2135538)))

(assert (=> bs!1811545 (= lambda!383236 lambda!383151)))

(declare-fun bs!1811546 () Bool)

(assert (= bs!1811546 (and d!2135874 d!2135710)))

(assert (=> bs!1811546 (= lambda!383236 lambda!383213)))

(declare-fun bs!1811547 () Bool)

(assert (= bs!1811547 (and d!2135874 d!2135852)))

(assert (=> bs!1811547 (= lambda!383236 lambda!383235)))

(assert (=> d!2135874 (= (inv!84789 setElem!46560) (forall!15809 (exprs!6501 setElem!46560) lambda!383236))))

(declare-fun bs!1811548 () Bool)

(assert (= bs!1811548 d!2135874))

(declare-fun m!7544178 () Bool)

(assert (=> bs!1811548 m!7544178))

(assert (=> setNonEmpty!46560 d!2135874))

(declare-fun b!6797375 () Bool)

(declare-fun e!4102410 () Bool)

(declare-fun lt!2447431 () List!66150)

(assert (=> b!6797375 (= e!4102410 (or (not (= lt!2447262 Nil!66026)) (= lt!2447431 (t!379877 (Cons!66026 (reg!16946 r!7292) Nil!66026)))))))

(declare-fun b!6797373 () Bool)

(declare-fun e!4102409 () List!66150)

(assert (=> b!6797373 (= e!4102409 (Cons!66026 (h!72474 (t!379877 (Cons!66026 (reg!16946 r!7292) Nil!66026))) (++!14779 (t!379877 (t!379877 (Cons!66026 (reg!16946 r!7292) Nil!66026))) lt!2447262)))))

(declare-fun b!6797374 () Bool)

(declare-fun res!2777878 () Bool)

(assert (=> b!6797374 (=> (not res!2777878) (not e!4102410))))

(assert (=> b!6797374 (= res!2777878 (= (size!40656 lt!2447431) (+ (size!40656 (t!379877 (Cons!66026 (reg!16946 r!7292) Nil!66026))) (size!40656 lt!2447262))))))

(declare-fun b!6797372 () Bool)

(assert (=> b!6797372 (= e!4102409 lt!2447262)))

(declare-fun d!2135876 () Bool)

(assert (=> d!2135876 e!4102410))

(declare-fun res!2777879 () Bool)

(assert (=> d!2135876 (=> (not res!2777879) (not e!4102410))))

(assert (=> d!2135876 (= res!2777879 (= (content!12885 lt!2447431) ((_ map or) (content!12885 (t!379877 (Cons!66026 (reg!16946 r!7292) Nil!66026))) (content!12885 lt!2447262))))))

(assert (=> d!2135876 (= lt!2447431 e!4102409)))

(declare-fun c!1263753 () Bool)

(assert (=> d!2135876 (= c!1263753 ((_ is Nil!66026) (t!379877 (Cons!66026 (reg!16946 r!7292) Nil!66026))))))

(assert (=> d!2135876 (= (++!14779 (t!379877 (Cons!66026 (reg!16946 r!7292) Nil!66026)) lt!2447262) lt!2447431)))

(assert (= (and d!2135876 c!1263753) b!6797372))

(assert (= (and d!2135876 (not c!1263753)) b!6797373))

(assert (= (and d!2135876 res!2777879) b!6797374))

(assert (= (and b!6797374 res!2777878) b!6797375))

(declare-fun m!7544180 () Bool)

(assert (=> b!6797373 m!7544180))

(declare-fun m!7544182 () Bool)

(assert (=> b!6797374 m!7544182))

(declare-fun m!7544184 () Bool)

(assert (=> b!6797374 m!7544184))

(assert (=> b!6797374 m!7543462))

(declare-fun m!7544186 () Bool)

(assert (=> d!2135876 m!7544186))

(assert (=> d!2135876 m!7543914))

(assert (=> d!2135876 m!7543468))

(assert (=> b!6796650 d!2135876))

(declare-fun d!2135878 () Bool)

(assert (=> d!2135878 (= (nullable!6595 (h!72474 (exprs!6501 (h!72475 zl!343)))) (nullableFct!2499 (h!72474 (exprs!6501 (h!72475 zl!343)))))))

(declare-fun bs!1811549 () Bool)

(assert (= bs!1811549 d!2135878))

(declare-fun m!7544188 () Bool)

(assert (=> bs!1811549 m!7544188))

(assert (=> b!6796188 d!2135878))

(declare-fun bs!1811550 () Bool)

(declare-fun d!2135880 () Bool)

(assert (= bs!1811550 (and d!2135880 d!2135730)))

(declare-fun lambda!383237 () Int)

(assert (=> bs!1811550 (= lambda!383237 lambda!383218)))

(assert (=> d!2135880 (= (nullableZipper!2323 z!1189) (exists!2736 z!1189 lambda!383237))))

(declare-fun bs!1811551 () Bool)

(assert (= bs!1811551 d!2135880))

(declare-fun m!7544190 () Bool)

(assert (=> bs!1811551 m!7544190))

(assert (=> b!6796700 d!2135880))

(declare-fun d!2135882 () Bool)

(assert (=> d!2135882 (= (isEmpty!38403 (t!379877 (exprs!6501 (h!72475 zl!343)))) ((_ is Nil!66026) (t!379877 (exprs!6501 (h!72475 zl!343)))))))

(assert (=> b!6796858 d!2135882))

(declare-fun d!2135884 () Bool)

(assert (=> d!2135884 (= (Exists!3685 lambda!383204) (choose!50651 lambda!383204))))

(declare-fun bs!1811552 () Bool)

(assert (= bs!1811552 d!2135884))

(declare-fun m!7544192 () Bool)

(assert (=> bs!1811552 m!7544192))

(assert (=> d!2135644 d!2135884))

(assert (=> d!2135644 d!2135606))

(declare-fun bs!1811553 () Bool)

(declare-fun d!2135886 () Bool)

(assert (= bs!1811553 (and d!2135886 d!2135622)))

(declare-fun lambda!383240 () Int)

(assert (=> bs!1811553 (not (= lambda!383240 lambda!383199))))

(assert (=> bs!1811553 (= (= r!7292 (Star!16617 (reg!16946 r!7292))) (= lambda!383240 lambda!383196))))

(declare-fun bs!1811554 () Bool)

(assert (= bs!1811554 (and d!2135886 d!2135608)))

(assert (=> bs!1811554 (= lambda!383240 lambda!383183)))

(declare-fun bs!1811555 () Bool)

(assert (= bs!1811555 (and d!2135886 b!6796374)))

(assert (=> bs!1811555 (not (= lambda!383240 lambda!383138))))

(declare-fun bs!1811556 () Bool)

(assert (= bs!1811556 (and d!2135886 b!6796162)))

(assert (=> bs!1811556 (not (= lambda!383240 lambda!383113))))

(declare-fun bs!1811557 () Bool)

(assert (= bs!1811557 (and d!2135886 b!6797314)))

(assert (=> bs!1811557 (not (= lambda!383240 lambda!383232))))

(assert (=> bs!1811556 (not (= lambda!383240 lambda!383114))))

(declare-fun bs!1811558 () Bool)

(assert (= bs!1811558 (and d!2135886 b!6797109)))

(assert (=> bs!1811558 (not (= lambda!383240 lambda!383220))))

(declare-fun bs!1811559 () Bool)

(assert (= bs!1811559 (and d!2135886 b!6796480)))

(assert (=> bs!1811559 (not (= lambda!383240 lambda!383145))))

(declare-fun bs!1811560 () Bool)

(assert (= bs!1811560 (and d!2135886 b!6797110)))

(assert (=> bs!1811560 (not (= lambda!383240 lambda!383219))))

(declare-fun bs!1811561 () Bool)

(assert (= bs!1811561 (and d!2135886 b!6797313)))

(assert (=> bs!1811561 (not (= lambda!383240 lambda!383233))))

(declare-fun bs!1811562 () Bool)

(assert (= bs!1811562 (and d!2135886 b!6797098)))

(assert (=> bs!1811562 (not (= lambda!383240 lambda!383215))))

(declare-fun bs!1811563 () Bool)

(assert (= bs!1811563 (and d!2135886 b!6796479)))

(assert (=> bs!1811563 (not (= lambda!383240 lambda!383146))))

(declare-fun bs!1811564 () Bool)

(assert (= bs!1811564 (and d!2135886 d!2135644)))

(assert (=> bs!1811564 (= lambda!383240 lambda!383204)))

(declare-fun bs!1811565 () Bool)

(assert (= bs!1811565 (and d!2135886 b!6796375)))

(assert (=> bs!1811565 (not (= lambda!383240 lambda!383137))))

(assert (=> bs!1811554 (not (= lambda!383240 lambda!383185))))

(declare-fun bs!1811566 () Bool)

(assert (= bs!1811566 (and d!2135886 b!6797099)))

(assert (=> bs!1811566 (not (= lambda!383240 lambda!383214))))

(declare-fun bs!1811567 () Bool)

(assert (= bs!1811567 (and d!2135886 d!2135754)))

(assert (=> bs!1811567 (= lambda!383240 lambda!383226)))

(assert (=> bs!1811556 (= lambda!383240 lambda!383112)))

(assert (=> bs!1811567 (not (= lambda!383240 lambda!383227))))

(assert (=> d!2135886 true))

(assert (=> d!2135886 true))

(assert (=> d!2135886 true))

(assert (=> d!2135886 (= (isDefined!13207 (findConcatSeparation!2918 (reg!16946 r!7292) r!7292 Nil!66028 s!2326 s!2326)) (Exists!3685 lambda!383240))))

(assert (=> d!2135886 true))

(declare-fun _$89!3067 () Unit!159925)

(assert (=> d!2135886 (= (choose!50653 (reg!16946 r!7292) r!7292 s!2326) _$89!3067)))

(declare-fun bs!1811568 () Bool)

(assert (= bs!1811568 d!2135886))

(assert (=> bs!1811568 m!7543022))

(assert (=> bs!1811568 m!7543022))

(assert (=> bs!1811568 m!7543024))

(declare-fun m!7544194 () Bool)

(assert (=> bs!1811568 m!7544194))

(assert (=> d!2135644 d!2135886))

(assert (=> d!2135644 d!2135632))

(assert (=> d!2135644 d!2135756))

(declare-fun call!617487 () Bool)

(declare-fun bm!617482 () Bool)

(declare-fun c!1263754 () Bool)

(assert (=> bm!617482 (= call!617487 (validRegex!8353 (ite c!1263754 (regTwo!33747 (ite c!1263446 (reg!16946 r!7292) (ite c!1263445 (regOne!33747 r!7292) (regOne!33746 r!7292)))) (regTwo!33746 (ite c!1263446 (reg!16946 r!7292) (ite c!1263445 (regOne!33747 r!7292) (regOne!33746 r!7292)))))))))

(declare-fun b!6797380 () Bool)

(declare-fun e!4102417 () Bool)

(declare-fun e!4102419 () Bool)

(assert (=> b!6797380 (= e!4102417 e!4102419)))

(declare-fun res!2777886 () Bool)

(assert (=> b!6797380 (= res!2777886 (not (nullable!6595 (reg!16946 (ite c!1263446 (reg!16946 r!7292) (ite c!1263445 (regOne!33747 r!7292) (regOne!33746 r!7292)))))))))

(assert (=> b!6797380 (=> (not res!2777886) (not e!4102419))))

(declare-fun b!6797381 () Bool)

(declare-fun e!4102414 () Bool)

(assert (=> b!6797381 (= e!4102414 call!617487)))

(declare-fun b!6797382 () Bool)

(declare-fun e!4102413 () Bool)

(assert (=> b!6797382 (= e!4102417 e!4102413)))

(assert (=> b!6797382 (= c!1263754 ((_ is Union!16617) (ite c!1263446 (reg!16946 r!7292) (ite c!1263445 (regOne!33747 r!7292) (regOne!33746 r!7292)))))))

(declare-fun b!6797383 () Bool)

(declare-fun res!2777887 () Bool)

(declare-fun e!4102418 () Bool)

(assert (=> b!6797383 (=> (not res!2777887) (not e!4102418))))

(declare-fun call!617488 () Bool)

(assert (=> b!6797383 (= res!2777887 call!617488)))

(assert (=> b!6797383 (= e!4102413 e!4102418)))

(declare-fun b!6797384 () Bool)

(declare-fun e!4102415 () Bool)

(assert (=> b!6797384 (= e!4102415 e!4102417)))

(declare-fun c!1263755 () Bool)

(assert (=> b!6797384 (= c!1263755 ((_ is Star!16617) (ite c!1263446 (reg!16946 r!7292) (ite c!1263445 (regOne!33747 r!7292) (regOne!33746 r!7292)))))))

(declare-fun b!6797385 () Bool)

(declare-fun res!2777888 () Bool)

(declare-fun e!4102416 () Bool)

(assert (=> b!6797385 (=> res!2777888 e!4102416)))

(assert (=> b!6797385 (= res!2777888 (not ((_ is Concat!25462) (ite c!1263446 (reg!16946 r!7292) (ite c!1263445 (regOne!33747 r!7292) (regOne!33746 r!7292))))))))

(assert (=> b!6797385 (= e!4102413 e!4102416)))

(declare-fun call!617489 () Bool)

(declare-fun bm!617483 () Bool)

(assert (=> bm!617483 (= call!617489 (validRegex!8353 (ite c!1263755 (reg!16946 (ite c!1263446 (reg!16946 r!7292) (ite c!1263445 (regOne!33747 r!7292) (regOne!33746 r!7292)))) (ite c!1263754 (regOne!33747 (ite c!1263446 (reg!16946 r!7292) (ite c!1263445 (regOne!33747 r!7292) (regOne!33746 r!7292)))) (regOne!33746 (ite c!1263446 (reg!16946 r!7292) (ite c!1263445 (regOne!33747 r!7292) (regOne!33746 r!7292))))))))))

(declare-fun bm!617484 () Bool)

(assert (=> bm!617484 (= call!617488 call!617489)))

(declare-fun b!6797386 () Bool)

(assert (=> b!6797386 (= e!4102418 call!617487)))

(declare-fun d!2135888 () Bool)

(declare-fun res!2777885 () Bool)

(assert (=> d!2135888 (=> res!2777885 e!4102415)))

(assert (=> d!2135888 (= res!2777885 ((_ is ElementMatch!16617) (ite c!1263446 (reg!16946 r!7292) (ite c!1263445 (regOne!33747 r!7292) (regOne!33746 r!7292)))))))

(assert (=> d!2135888 (= (validRegex!8353 (ite c!1263446 (reg!16946 r!7292) (ite c!1263445 (regOne!33747 r!7292) (regOne!33746 r!7292)))) e!4102415)))

(declare-fun b!6797387 () Bool)

(assert (=> b!6797387 (= e!4102419 call!617489)))

(declare-fun b!6797388 () Bool)

(assert (=> b!6797388 (= e!4102416 e!4102414)))

(declare-fun res!2777884 () Bool)

(assert (=> b!6797388 (=> (not res!2777884) (not e!4102414))))

(assert (=> b!6797388 (= res!2777884 call!617488)))

(assert (= (and d!2135888 (not res!2777885)) b!6797384))

(assert (= (and b!6797384 c!1263755) b!6797380))

(assert (= (and b!6797384 (not c!1263755)) b!6797382))

(assert (= (and b!6797380 res!2777886) b!6797387))

(assert (= (and b!6797382 c!1263754) b!6797383))

(assert (= (and b!6797382 (not c!1263754)) b!6797385))

(assert (= (and b!6797383 res!2777887) b!6797386))

(assert (= (and b!6797385 (not res!2777888)) b!6797388))

(assert (= (and b!6797388 res!2777884) b!6797381))

(assert (= (or b!6797386 b!6797381) bm!617482))

(assert (= (or b!6797383 b!6797388) bm!617484))

(assert (= (or b!6797387 bm!617484) bm!617483))

(declare-fun m!7544196 () Bool)

(assert (=> bm!617482 m!7544196))

(declare-fun m!7544198 () Bool)

(assert (=> b!6797380 m!7544198))

(declare-fun m!7544200 () Bool)

(assert (=> bm!617483 m!7544200))

(assert (=> bm!617324 d!2135888))

(declare-fun b!6797389 () Bool)

(declare-fun c!1263757 () Bool)

(assert (=> b!6797389 (= c!1263757 ((_ is Star!16617) (h!72474 (exprs!6501 lt!2447263))))))

(declare-fun e!4102425 () (InoxSet Context!12002))

(declare-fun e!4102424 () (InoxSet Context!12002))

(assert (=> b!6797389 (= e!4102425 e!4102424)))

(declare-fun b!6797390 () Bool)

(declare-fun e!4102423 () (InoxSet Context!12002))

(declare-fun call!617492 () (InoxSet Context!12002))

(declare-fun call!617490 () (InoxSet Context!12002))

(assert (=> b!6797390 (= e!4102423 ((_ map or) call!617492 call!617490))))

(declare-fun b!6797391 () Bool)

(declare-fun c!1263758 () Bool)

(declare-fun e!4102420 () Bool)

(assert (=> b!6797391 (= c!1263758 e!4102420)))

(declare-fun res!2777889 () Bool)

(assert (=> b!6797391 (=> (not res!2777889) (not e!4102420))))

(assert (=> b!6797391 (= res!2777889 ((_ is Concat!25462) (h!72474 (exprs!6501 lt!2447263))))))

(declare-fun e!4102422 () (InoxSet Context!12002))

(assert (=> b!6797391 (= e!4102422 e!4102423)))

(declare-fun b!6797392 () Bool)

(assert (=> b!6797392 (= e!4102420 (nullable!6595 (regOne!33746 (h!72474 (exprs!6501 lt!2447263)))))))

(declare-fun b!6797393 () Bool)

(declare-fun e!4102421 () (InoxSet Context!12002))

(assert (=> b!6797393 (= e!4102421 (store ((as const (Array Context!12002 Bool)) false) (Context!12003 (t!379877 (exprs!6501 lt!2447263))) true))))

(declare-fun b!6797394 () Bool)

(assert (=> b!6797394 (= e!4102423 e!4102425)))

(declare-fun c!1263760 () Bool)

(assert (=> b!6797394 (= c!1263760 ((_ is Concat!25462) (h!72474 (exprs!6501 lt!2447263))))))

(declare-fun call!617495 () List!66150)

(declare-fun bm!617485 () Bool)

(assert (=> bm!617485 (= call!617495 ($colon$colon!2425 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447263)))) (ite (or c!1263758 c!1263760) (regTwo!33746 (h!72474 (exprs!6501 lt!2447263))) (h!72474 (exprs!6501 lt!2447263)))))))

(declare-fun d!2135890 () Bool)

(declare-fun c!1263756 () Bool)

(assert (=> d!2135890 (= c!1263756 (and ((_ is ElementMatch!16617) (h!72474 (exprs!6501 lt!2447263))) (= (c!1263403 (h!72474 (exprs!6501 lt!2447263))) (h!72476 s!2326))))))

(assert (=> d!2135890 (= (derivationStepZipperDown!1845 (h!72474 (exprs!6501 lt!2447263)) (Context!12003 (t!379877 (exprs!6501 lt!2447263))) (h!72476 s!2326)) e!4102421)))

(declare-fun bm!617486 () Bool)

(declare-fun call!617493 () (InoxSet Context!12002))

(assert (=> bm!617486 (= call!617490 call!617493)))

(declare-fun b!6797395 () Bool)

(assert (=> b!6797395 (= e!4102424 ((as const (Array Context!12002 Bool)) false))))

(declare-fun b!6797396 () Bool)

(assert (=> b!6797396 (= e!4102421 e!4102422)))

(declare-fun c!1263759 () Bool)

(assert (=> b!6797396 (= c!1263759 ((_ is Union!16617) (h!72474 (exprs!6501 lt!2447263))))))

(declare-fun call!617491 () List!66150)

(declare-fun bm!617487 () Bool)

(assert (=> bm!617487 (= call!617493 (derivationStepZipperDown!1845 (ite c!1263759 (regTwo!33747 (h!72474 (exprs!6501 lt!2447263))) (ite c!1263758 (regTwo!33746 (h!72474 (exprs!6501 lt!2447263))) (ite c!1263760 (regOne!33746 (h!72474 (exprs!6501 lt!2447263))) (reg!16946 (h!72474 (exprs!6501 lt!2447263)))))) (ite (or c!1263759 c!1263758) (Context!12003 (t!379877 (exprs!6501 lt!2447263))) (Context!12003 call!617491)) (h!72476 s!2326)))))

(declare-fun b!6797397 () Bool)

(assert (=> b!6797397 (= e!4102422 ((_ map or) call!617492 call!617493))))

(declare-fun b!6797398 () Bool)

(declare-fun call!617494 () (InoxSet Context!12002))

(assert (=> b!6797398 (= e!4102425 call!617494)))

(declare-fun bm!617488 () Bool)

(assert (=> bm!617488 (= call!617494 call!617490)))

(declare-fun bm!617489 () Bool)

(assert (=> bm!617489 (= call!617492 (derivationStepZipperDown!1845 (ite c!1263759 (regOne!33747 (h!72474 (exprs!6501 lt!2447263))) (regOne!33746 (h!72474 (exprs!6501 lt!2447263)))) (ite c!1263759 (Context!12003 (t!379877 (exprs!6501 lt!2447263))) (Context!12003 call!617495)) (h!72476 s!2326)))))

(declare-fun b!6797399 () Bool)

(assert (=> b!6797399 (= e!4102424 call!617494)))

(declare-fun bm!617490 () Bool)

(assert (=> bm!617490 (= call!617491 call!617495)))

(assert (= (and d!2135890 c!1263756) b!6797393))

(assert (= (and d!2135890 (not c!1263756)) b!6797396))

(assert (= (and b!6797396 c!1263759) b!6797397))

(assert (= (and b!6797396 (not c!1263759)) b!6797391))

(assert (= (and b!6797391 res!2777889) b!6797392))

(assert (= (and b!6797391 c!1263758) b!6797390))

(assert (= (and b!6797391 (not c!1263758)) b!6797394))

(assert (= (and b!6797394 c!1263760) b!6797398))

(assert (= (and b!6797394 (not c!1263760)) b!6797389))

(assert (= (and b!6797389 c!1263757) b!6797399))

(assert (= (and b!6797389 (not c!1263757)) b!6797395))

(assert (= (or b!6797398 b!6797399) bm!617490))

(assert (= (or b!6797398 b!6797399) bm!617488))

(assert (= (or b!6797390 bm!617490) bm!617485))

(assert (= (or b!6797390 bm!617488) bm!617486))

(assert (= (or b!6797397 bm!617486) bm!617487))

(assert (= (or b!6797397 b!6797390) bm!617489))

(declare-fun m!7544202 () Bool)

(assert (=> b!6797392 m!7544202))

(declare-fun m!7544204 () Bool)

(assert (=> bm!617487 m!7544204))

(declare-fun m!7544206 () Bool)

(assert (=> bm!617489 m!7544206))

(declare-fun m!7544208 () Bool)

(assert (=> b!6797393 m!7544208))

(declare-fun m!7544210 () Bool)

(assert (=> bm!617485 m!7544210))

(assert (=> bm!617364 d!2135890))

(assert (=> b!6796519 d!2135724))

(assert (=> b!6796519 d!2135700))

(assert (=> b!6796787 d!2135522))

(declare-fun d!2135892 () Bool)

(assert (=> d!2135892 (= (isEmptyLang!1982 lt!2447322) ((_ is EmptyLang!16617) lt!2447322))))

(assert (=> b!6796594 d!2135892))

(declare-fun d!2135894 () Bool)

(assert (=> d!2135894 (= (Exists!3685 lambda!383196) (choose!50651 lambda!383196))))

(declare-fun bs!1811569 () Bool)

(assert (= bs!1811569 d!2135894))

(declare-fun m!7544212 () Bool)

(assert (=> bs!1811569 m!7544212))

(assert (=> d!2135622 d!2135894))

(declare-fun d!2135896 () Bool)

(assert (=> d!2135896 (= (Exists!3685 lambda!383199) (choose!50651 lambda!383199))))

(declare-fun bs!1811570 () Bool)

(assert (= bs!1811570 d!2135896))

(declare-fun m!7544214 () Bool)

(assert (=> bs!1811570 m!7544214))

(assert (=> d!2135622 d!2135896))

(declare-fun bs!1811571 () Bool)

(declare-fun d!2135898 () Bool)

(assert (= bs!1811571 (and d!2135898 d!2135622)))

(declare-fun lambda!383245 () Int)

(assert (=> bs!1811571 (not (= lambda!383245 lambda!383199))))

(assert (=> bs!1811571 (= lambda!383245 lambda!383196)))

(declare-fun bs!1811572 () Bool)

(assert (= bs!1811572 (and d!2135898 d!2135608)))

(assert (=> bs!1811572 (= (= (Star!16617 (reg!16946 r!7292)) r!7292) (= lambda!383245 lambda!383183))))

(declare-fun bs!1811573 () Bool)

(assert (= bs!1811573 (and d!2135898 b!6796374)))

(assert (=> bs!1811573 (not (= lambda!383245 lambda!383138))))

(declare-fun bs!1811574 () Bool)

(assert (= bs!1811574 (and d!2135898 b!6796162)))

(assert (=> bs!1811574 (not (= lambda!383245 lambda!383113))))

(declare-fun bs!1811575 () Bool)

(assert (= bs!1811575 (and d!2135898 b!6797314)))

(assert (=> bs!1811575 (not (= lambda!383245 lambda!383232))))

(assert (=> bs!1811574 (not (= lambda!383245 lambda!383114))))

(declare-fun bs!1811576 () Bool)

(assert (= bs!1811576 (and d!2135898 b!6797109)))

(assert (=> bs!1811576 (not (= lambda!383245 lambda!383220))))

(declare-fun bs!1811577 () Bool)

(assert (= bs!1811577 (and d!2135898 b!6796480)))

(assert (=> bs!1811577 (not (= lambda!383245 lambda!383145))))

(declare-fun bs!1811578 () Bool)

(assert (= bs!1811578 (and d!2135898 b!6797110)))

(assert (=> bs!1811578 (not (= lambda!383245 lambda!383219))))

(declare-fun bs!1811579 () Bool)

(assert (= bs!1811579 (and d!2135898 b!6797313)))

(assert (=> bs!1811579 (not (= lambda!383245 lambda!383233))))

(declare-fun bs!1811580 () Bool)

(assert (= bs!1811580 (and d!2135898 b!6797098)))

(assert (=> bs!1811580 (not (= lambda!383245 lambda!383215))))

(declare-fun bs!1811581 () Bool)

(assert (= bs!1811581 (and d!2135898 b!6796479)))

(assert (=> bs!1811581 (not (= lambda!383245 lambda!383146))))

(declare-fun bs!1811582 () Bool)

(assert (= bs!1811582 (and d!2135898 d!2135644)))

(assert (=> bs!1811582 (= (= (Star!16617 (reg!16946 r!7292)) r!7292) (= lambda!383245 lambda!383204))))

(declare-fun bs!1811583 () Bool)

(assert (= bs!1811583 (and d!2135898 b!6796375)))

(assert (=> bs!1811583 (not (= lambda!383245 lambda!383137))))

(assert (=> bs!1811572 (not (= lambda!383245 lambda!383185))))

(declare-fun bs!1811584 () Bool)

(assert (= bs!1811584 (and d!2135898 b!6797099)))

(assert (=> bs!1811584 (not (= lambda!383245 lambda!383214))))

(declare-fun bs!1811585 () Bool)

(assert (= bs!1811585 (and d!2135898 d!2135754)))

(assert (=> bs!1811585 (= (= (Star!16617 (reg!16946 r!7292)) r!7292) (= lambda!383245 lambda!383226))))

(declare-fun bs!1811586 () Bool)

(assert (= bs!1811586 (and d!2135898 d!2135886)))

(assert (=> bs!1811586 (= (= (Star!16617 (reg!16946 r!7292)) r!7292) (= lambda!383245 lambda!383240))))

(assert (=> bs!1811574 (= (= (Star!16617 (reg!16946 r!7292)) r!7292) (= lambda!383245 lambda!383112))))

(assert (=> bs!1811585 (not (= lambda!383245 lambda!383227))))

(assert (=> d!2135898 true))

(assert (=> d!2135898 true))

(declare-fun lambda!383246 () Int)

(assert (=> bs!1811571 (= lambda!383246 lambda!383199)))

(assert (=> bs!1811571 (not (= lambda!383246 lambda!383196))))

(assert (=> bs!1811572 (not (= lambda!383246 lambda!383183))))

(assert (=> bs!1811573 (not (= lambda!383246 lambda!383138))))

(assert (=> bs!1811574 (= (= (Star!16617 (reg!16946 r!7292)) r!7292) (= lambda!383246 lambda!383113))))

(assert (=> bs!1811575 (= (and (= (reg!16946 r!7292) (reg!16946 (regOne!33747 lt!2447264))) (= (Star!16617 (reg!16946 r!7292)) (regOne!33747 lt!2447264))) (= lambda!383246 lambda!383232))))

(assert (=> bs!1811574 (not (= lambda!383246 lambda!383114))))

(assert (=> bs!1811576 (not (= lambda!383246 lambda!383220))))

(assert (=> bs!1811577 (= (= (Star!16617 (reg!16946 r!7292)) r!7292) (= lambda!383246 lambda!383145))))

(assert (=> bs!1811578 (= (and (= (reg!16946 r!7292) (reg!16946 (regOne!33747 r!7292))) (= (Star!16617 (reg!16946 r!7292)) (regOne!33747 r!7292))) (= lambda!383246 lambda!383219))))

(assert (=> bs!1811579 (not (= lambda!383246 lambda!383233))))

(assert (=> bs!1811580 (not (= lambda!383246 lambda!383215))))

(assert (=> bs!1811581 (not (= lambda!383246 lambda!383146))))

(assert (=> bs!1811582 (not (= lambda!383246 lambda!383204))))

(assert (=> bs!1811583 (= (and (= (reg!16946 r!7292) (reg!16946 lt!2447264)) (= (Star!16617 (reg!16946 r!7292)) lt!2447264)) (= lambda!383246 lambda!383137))))

(assert (=> bs!1811572 (not (= lambda!383246 lambda!383185))))

(declare-fun bs!1811587 () Bool)

(assert (= bs!1811587 d!2135898))

(assert (=> bs!1811587 (not (= lambda!383246 lambda!383245))))

(assert (=> bs!1811584 (= (and (= (reg!16946 r!7292) (reg!16946 (regTwo!33747 lt!2447264))) (= (Star!16617 (reg!16946 r!7292)) (regTwo!33747 lt!2447264))) (= lambda!383246 lambda!383214))))

(assert (=> bs!1811585 (not (= lambda!383246 lambda!383226))))

(assert (=> bs!1811586 (not (= lambda!383246 lambda!383240))))

(assert (=> bs!1811574 (not (= lambda!383246 lambda!383112))))

(assert (=> bs!1811585 (not (= lambda!383246 lambda!383227))))

(assert (=> d!2135898 true))

(assert (=> d!2135898 true))

(assert (=> d!2135898 (= (Exists!3685 lambda!383245) (Exists!3685 lambda!383246))))

(assert (=> d!2135898 true))

(declare-fun _$91!809 () Unit!159925)

(assert (=> d!2135898 (= (choose!50652 (reg!16946 r!7292) s!2326) _$91!809)))

(declare-fun m!7544216 () Bool)

(assert (=> bs!1811587 m!7544216))

(declare-fun m!7544218 () Bool)

(assert (=> bs!1811587 m!7544218))

(assert (=> d!2135622 d!2135898))

(assert (=> d!2135622 d!2135756))

(assert (=> d!2135524 d!2135522))

(assert (=> d!2135524 d!2135516))

(declare-fun d!2135900 () Bool)

(assert (=> d!2135900 (= (matchR!8800 r!7292 s!2326) (matchRSpec!3718 r!7292 s!2326))))

(assert (=> d!2135900 true))

(declare-fun _$88!5618 () Unit!159925)

(assert (=> d!2135900 (= (choose!50641 r!7292 s!2326) _$88!5618)))

(declare-fun bs!1811588 () Bool)

(assert (= bs!1811588 d!2135900))

(assert (=> bs!1811588 m!7543048))

(assert (=> bs!1811588 m!7543046))

(assert (=> d!2135524 d!2135900))

(assert (=> d!2135524 d!2135476))

(declare-fun d!2135902 () Bool)

(declare-fun c!1263763 () Bool)

(assert (=> d!2135902 (= c!1263763 ((_ is Nil!66027) lt!2447362))))

(declare-fun e!4102432 () (InoxSet Context!12002))

(assert (=> d!2135902 (= (content!12886 lt!2447362) e!4102432)))

(declare-fun b!6797414 () Bool)

(assert (=> b!6797414 (= e!4102432 ((as const (Array Context!12002 Bool)) false))))

(declare-fun b!6797415 () Bool)

(assert (=> b!6797415 (= e!4102432 ((_ map or) (store ((as const (Array Context!12002 Bool)) false) (h!72475 lt!2447362) true) (content!12886 (t!379878 lt!2447362))))))

(assert (= (and d!2135902 c!1263763) b!6797414))

(assert (= (and d!2135902 (not c!1263763)) b!6797415))

(declare-fun m!7544220 () Bool)

(assert (=> b!6797415 m!7544220))

(declare-fun m!7544222 () Bool)

(assert (=> b!6797415 m!7544222))

(assert (=> b!6796699 d!2135902))

(assert (=> bm!617342 d!2135628))

(declare-fun d!2135904 () Bool)

(declare-fun res!2777900 () Bool)

(declare-fun e!4102433 () Bool)

(assert (=> d!2135904 (=> res!2777900 e!4102433)))

(assert (=> d!2135904 (= res!2777900 ((_ is Nil!66026) (exprs!6501 lt!2447275)))))

(assert (=> d!2135904 (= (forall!15809 (exprs!6501 lt!2447275) lambda!383176) e!4102433)))

(declare-fun b!6797416 () Bool)

(declare-fun e!4102434 () Bool)

(assert (=> b!6797416 (= e!4102433 e!4102434)))

(declare-fun res!2777901 () Bool)

(assert (=> b!6797416 (=> (not res!2777901) (not e!4102434))))

(assert (=> b!6797416 (= res!2777901 (dynLambda!26363 lambda!383176 (h!72474 (exprs!6501 lt!2447275))))))

(declare-fun b!6797417 () Bool)

(assert (=> b!6797417 (= e!4102434 (forall!15809 (t!379877 (exprs!6501 lt!2447275)) lambda!383176))))

(assert (= (and d!2135904 (not res!2777900)) b!6797416))

(assert (= (and b!6797416 res!2777901) b!6797417))

(declare-fun b_lambda!256139 () Bool)

(assert (=> (not b_lambda!256139) (not b!6797416)))

(declare-fun m!7544224 () Bool)

(assert (=> b!6797416 m!7544224))

(declare-fun m!7544226 () Bool)

(assert (=> b!6797417 m!7544226))

(assert (=> d!2135604 d!2135904))

(declare-fun d!2135906 () Bool)

(assert (=> d!2135906 (= (isEmptyExpr!1975 lt!2447402) ((_ is EmptyExpr!16617) lt!2447402))))

(assert (=> b!6796850 d!2135906))

(declare-fun d!2135908 () Bool)

(assert (=> d!2135908 true))

(declare-fun setRes!46568 () Bool)

(assert (=> d!2135908 setRes!46568))

(declare-fun condSetEmpty!46568 () Bool)

(declare-fun res!2777902 () (InoxSet Context!12002))

(assert (=> d!2135908 (= condSetEmpty!46568 (= res!2777902 ((as const (Array Context!12002 Bool)) false)))))

(assert (=> d!2135908 (= (choose!50636 lt!2447259 lambda!383115) res!2777902)))

(declare-fun setIsEmpty!46568 () Bool)

(assert (=> setIsEmpty!46568 setRes!46568))

(declare-fun setNonEmpty!46568 () Bool)

(declare-fun e!4102435 () Bool)

(declare-fun tp!1861201 () Bool)

(declare-fun setElem!46568 () Context!12002)

(assert (=> setNonEmpty!46568 (= setRes!46568 (and tp!1861201 (inv!84789 setElem!46568) e!4102435))))

(declare-fun setRest!46568 () (InoxSet Context!12002))

(assert (=> setNonEmpty!46568 (= res!2777902 ((_ map or) (store ((as const (Array Context!12002 Bool)) false) setElem!46568 true) setRest!46568))))

(declare-fun b!6797418 () Bool)

(declare-fun tp!1861200 () Bool)

(assert (=> b!6797418 (= e!4102435 tp!1861200)))

(assert (= (and d!2135908 condSetEmpty!46568) setIsEmpty!46568))

(assert (= (and d!2135908 (not condSetEmpty!46568)) setNonEmpty!46568))

(assert (= setNonEmpty!46568 b!6797418))

(declare-fun m!7544228 () Bool)

(assert (=> setNonEmpty!46568 m!7544228))

(assert (=> d!2135562 d!2135908))

(assert (=> bm!617346 d!2135628))

(assert (=> d!2135632 d!2135782))

(declare-fun b!6797419 () Bool)

(declare-fun e!4102439 () Bool)

(assert (=> b!6797419 (= e!4102439 (= (head!13644 Nil!66028) (c!1263403 (reg!16946 r!7292))))))

(declare-fun b!6797420 () Bool)

(declare-fun e!4102440 () Bool)

(assert (=> b!6797420 (= e!4102440 (matchR!8800 (derivativeStep!5281 (reg!16946 r!7292) (head!13644 Nil!66028)) (tail!12729 Nil!66028)))))

(declare-fun b!6797421 () Bool)

(declare-fun e!4102438 () Bool)

(assert (=> b!6797421 (= e!4102438 (not (= (head!13644 Nil!66028) (c!1263403 (reg!16946 r!7292)))))))

(declare-fun b!6797422 () Bool)

(declare-fun res!2777910 () Bool)

(assert (=> b!6797422 (=> (not res!2777910) (not e!4102439))))

(declare-fun call!617496 () Bool)

(assert (=> b!6797422 (= res!2777910 (not call!617496))))

(declare-fun bm!617491 () Bool)

(assert (=> bm!617491 (= call!617496 (isEmpty!38402 Nil!66028))))

(declare-fun b!6797423 () Bool)

(declare-fun e!4102442 () Bool)

(assert (=> b!6797423 (= e!4102442 e!4102438)))

(declare-fun res!2777903 () Bool)

(assert (=> b!6797423 (=> res!2777903 e!4102438)))

(assert (=> b!6797423 (= res!2777903 call!617496)))

(declare-fun b!6797424 () Bool)

(declare-fun e!4102441 () Bool)

(declare-fun e!4102436 () Bool)

(assert (=> b!6797424 (= e!4102441 e!4102436)))

(declare-fun c!1263766 () Bool)

(assert (=> b!6797424 (= c!1263766 ((_ is EmptyLang!16617) (reg!16946 r!7292)))))

(declare-fun b!6797425 () Bool)

(declare-fun lt!2447432 () Bool)

(assert (=> b!6797425 (= e!4102436 (not lt!2447432))))

(declare-fun d!2135910 () Bool)

(assert (=> d!2135910 e!4102441))

(declare-fun c!1263765 () Bool)

(assert (=> d!2135910 (= c!1263765 ((_ is EmptyExpr!16617) (reg!16946 r!7292)))))

(assert (=> d!2135910 (= lt!2447432 e!4102440)))

(declare-fun c!1263764 () Bool)

(assert (=> d!2135910 (= c!1263764 (isEmpty!38402 Nil!66028))))

(assert (=> d!2135910 (validRegex!8353 (reg!16946 r!7292))))

(assert (=> d!2135910 (= (matchR!8800 (reg!16946 r!7292) Nil!66028) lt!2447432)))

(declare-fun b!6797426 () Bool)

(assert (=> b!6797426 (= e!4102441 (= lt!2447432 call!617496))))

(declare-fun b!6797427 () Bool)

(assert (=> b!6797427 (= e!4102440 (nullable!6595 (reg!16946 r!7292)))))

(declare-fun b!6797428 () Bool)

(declare-fun res!2777906 () Bool)

(assert (=> b!6797428 (=> (not res!2777906) (not e!4102439))))

(assert (=> b!6797428 (= res!2777906 (isEmpty!38402 (tail!12729 Nil!66028)))))

(declare-fun b!6797429 () Bool)

(declare-fun res!2777907 () Bool)

(declare-fun e!4102437 () Bool)

(assert (=> b!6797429 (=> res!2777907 e!4102437)))

(assert (=> b!6797429 (= res!2777907 e!4102439)))

(declare-fun res!2777905 () Bool)

(assert (=> b!6797429 (=> (not res!2777905) (not e!4102439))))

(assert (=> b!6797429 (= res!2777905 lt!2447432)))

(declare-fun b!6797430 () Bool)

(declare-fun res!2777909 () Bool)

(assert (=> b!6797430 (=> res!2777909 e!4102437)))

(assert (=> b!6797430 (= res!2777909 (not ((_ is ElementMatch!16617) (reg!16946 r!7292))))))

(assert (=> b!6797430 (= e!4102436 e!4102437)))

(declare-fun b!6797431 () Bool)

(declare-fun res!2777904 () Bool)

(assert (=> b!6797431 (=> res!2777904 e!4102438)))

(assert (=> b!6797431 (= res!2777904 (not (isEmpty!38402 (tail!12729 Nil!66028))))))

(declare-fun b!6797432 () Bool)

(assert (=> b!6797432 (= e!4102437 e!4102442)))

(declare-fun res!2777908 () Bool)

(assert (=> b!6797432 (=> (not res!2777908) (not e!4102442))))

(assert (=> b!6797432 (= res!2777908 (not lt!2447432))))

(assert (= (and d!2135910 c!1263764) b!6797427))

(assert (= (and d!2135910 (not c!1263764)) b!6797420))

(assert (= (and d!2135910 c!1263765) b!6797426))

(assert (= (and d!2135910 (not c!1263765)) b!6797424))

(assert (= (and b!6797424 c!1263766) b!6797425))

(assert (= (and b!6797424 (not c!1263766)) b!6797430))

(assert (= (and b!6797430 (not res!2777909)) b!6797429))

(assert (= (and b!6797429 res!2777905) b!6797422))

(assert (= (and b!6797422 res!2777910) b!6797428))

(assert (= (and b!6797428 res!2777906) b!6797419))

(assert (= (and b!6797429 (not res!2777907)) b!6797432))

(assert (= (and b!6797432 res!2777908) b!6797423))

(assert (= (and b!6797423 (not res!2777903)) b!6797431))

(assert (= (and b!6797431 (not res!2777904)) b!6797421))

(assert (= (or b!6797426 b!6797422 b!6797423) bm!617491))

(declare-fun m!7544230 () Bool)

(assert (=> b!6797419 m!7544230))

(assert (=> b!6797421 m!7544230))

(declare-fun m!7544232 () Bool)

(assert (=> b!6797428 m!7544232))

(assert (=> b!6797428 m!7544232))

(declare-fun m!7544234 () Bool)

(assert (=> b!6797428 m!7544234))

(declare-fun m!7544236 () Bool)

(assert (=> bm!617491 m!7544236))

(assert (=> d!2135910 m!7544236))

(assert (=> d!2135910 m!7543568))

(assert (=> b!6797427 m!7543180))

(assert (=> b!6797431 m!7544232))

(assert (=> b!6797431 m!7544232))

(assert (=> b!6797431 m!7544234))

(assert (=> b!6797420 m!7544230))

(assert (=> b!6797420 m!7544230))

(declare-fun m!7544238 () Bool)

(assert (=> b!6797420 m!7544238))

(assert (=> b!6797420 m!7544232))

(assert (=> b!6797420 m!7544238))

(assert (=> b!6797420 m!7544232))

(declare-fun m!7544240 () Bool)

(assert (=> b!6797420 m!7544240))

(assert (=> d!2135632 d!2135910))

(assert (=> d!2135632 d!2135756))

(declare-fun d!2135912 () Bool)

(assert (=> d!2135912 (= (nullable!6595 r!7292) (nullableFct!2499 r!7292))))

(declare-fun bs!1811589 () Bool)

(assert (= bs!1811589 d!2135912))

(declare-fun m!7544242 () Bool)

(assert (=> bs!1811589 m!7544242))

(assert (=> b!6796515 d!2135912))

(assert (=> d!2135548 d!2135628))

(declare-fun d!2135914 () Bool)

(assert (=> d!2135914 true))

(declare-fun setRes!46571 () Bool)

(assert (=> d!2135914 setRes!46571))

(declare-fun condSetEmpty!46571 () Bool)

(declare-fun res!2777913 () (InoxSet Context!12002))

(assert (=> d!2135914 (= condSetEmpty!46571 (= res!2777913 ((as const (Array Context!12002 Bool)) false)))))

(assert (=> d!2135914 (= (choose!50643 lt!2447259 lambda!383116) res!2777913)))

(declare-fun setIsEmpty!46571 () Bool)

(assert (=> setIsEmpty!46571 setRes!46571))

(declare-fun setElem!46571 () Context!12002)

(declare-fun setNonEmpty!46571 () Bool)

(declare-fun tp!1861207 () Bool)

(declare-fun e!4102445 () Bool)

(assert (=> setNonEmpty!46571 (= setRes!46571 (and tp!1861207 (inv!84789 setElem!46571) e!4102445))))

(declare-fun setRest!46571 () (InoxSet Context!12002))

(assert (=> setNonEmpty!46571 (= res!2777913 ((_ map or) (store ((as const (Array Context!12002 Bool)) false) setElem!46571 true) setRest!46571))))

(declare-fun b!6797435 () Bool)

(declare-fun tp!1861206 () Bool)

(assert (=> b!6797435 (= e!4102445 tp!1861206)))

(assert (= (and d!2135914 condSetEmpty!46571) setIsEmpty!46571))

(assert (= (and d!2135914 (not condSetEmpty!46571)) setNonEmpty!46571))

(assert (= setNonEmpty!46571 b!6797435))

(declare-fun m!7544244 () Bool)

(assert (=> setNonEmpty!46571 m!7544244))

(assert (=> d!2135586 d!2135914))

(declare-fun b!6797436 () Bool)

(declare-fun e!4102449 () Bool)

(assert (=> b!6797436 (= e!4102449 (= (head!13644 (tail!12729 s!2326)) (c!1263403 (derivativeStep!5281 r!7292 (head!13644 s!2326)))))))

(declare-fun b!6797437 () Bool)

(declare-fun e!4102450 () Bool)

(assert (=> b!6797437 (= e!4102450 (matchR!8800 (derivativeStep!5281 (derivativeStep!5281 r!7292 (head!13644 s!2326)) (head!13644 (tail!12729 s!2326))) (tail!12729 (tail!12729 s!2326))))))

(declare-fun b!6797438 () Bool)

(declare-fun e!4102448 () Bool)

(assert (=> b!6797438 (= e!4102448 (not (= (head!13644 (tail!12729 s!2326)) (c!1263403 (derivativeStep!5281 r!7292 (head!13644 s!2326))))))))

(declare-fun b!6797439 () Bool)

(declare-fun res!2777921 () Bool)

(assert (=> b!6797439 (=> (not res!2777921) (not e!4102449))))

(declare-fun call!617497 () Bool)

(assert (=> b!6797439 (= res!2777921 (not call!617497))))

(declare-fun bm!617492 () Bool)

(assert (=> bm!617492 (= call!617497 (isEmpty!38402 (tail!12729 s!2326)))))

(declare-fun b!6797440 () Bool)

(declare-fun e!4102452 () Bool)

(assert (=> b!6797440 (= e!4102452 e!4102448)))

(declare-fun res!2777914 () Bool)

(assert (=> b!6797440 (=> res!2777914 e!4102448)))

(assert (=> b!6797440 (= res!2777914 call!617497)))

(declare-fun b!6797441 () Bool)

(declare-fun e!4102451 () Bool)

(declare-fun e!4102446 () Bool)

(assert (=> b!6797441 (= e!4102451 e!4102446)))

(declare-fun c!1263769 () Bool)

(assert (=> b!6797441 (= c!1263769 ((_ is EmptyLang!16617) (derivativeStep!5281 r!7292 (head!13644 s!2326))))))

(declare-fun b!6797442 () Bool)

(declare-fun lt!2447433 () Bool)

(assert (=> b!6797442 (= e!4102446 (not lt!2447433))))

(declare-fun d!2135916 () Bool)

(assert (=> d!2135916 e!4102451))

(declare-fun c!1263768 () Bool)

(assert (=> d!2135916 (= c!1263768 ((_ is EmptyExpr!16617) (derivativeStep!5281 r!7292 (head!13644 s!2326))))))

(assert (=> d!2135916 (= lt!2447433 e!4102450)))

(declare-fun c!1263767 () Bool)

(assert (=> d!2135916 (= c!1263767 (isEmpty!38402 (tail!12729 s!2326)))))

(assert (=> d!2135916 (validRegex!8353 (derivativeStep!5281 r!7292 (head!13644 s!2326)))))

(assert (=> d!2135916 (= (matchR!8800 (derivativeStep!5281 r!7292 (head!13644 s!2326)) (tail!12729 s!2326)) lt!2447433)))

(declare-fun b!6797443 () Bool)

(assert (=> b!6797443 (= e!4102451 (= lt!2447433 call!617497))))

(declare-fun b!6797444 () Bool)

(assert (=> b!6797444 (= e!4102450 (nullable!6595 (derivativeStep!5281 r!7292 (head!13644 s!2326))))))

(declare-fun b!6797445 () Bool)

(declare-fun res!2777917 () Bool)

(assert (=> b!6797445 (=> (not res!2777917) (not e!4102449))))

(assert (=> b!6797445 (= res!2777917 (isEmpty!38402 (tail!12729 (tail!12729 s!2326))))))

(declare-fun b!6797446 () Bool)

(declare-fun res!2777918 () Bool)

(declare-fun e!4102447 () Bool)

(assert (=> b!6797446 (=> res!2777918 e!4102447)))

(assert (=> b!6797446 (= res!2777918 e!4102449)))

(declare-fun res!2777916 () Bool)

(assert (=> b!6797446 (=> (not res!2777916) (not e!4102449))))

(assert (=> b!6797446 (= res!2777916 lt!2447433)))

(declare-fun b!6797447 () Bool)

(declare-fun res!2777920 () Bool)

(assert (=> b!6797447 (=> res!2777920 e!4102447)))

(assert (=> b!6797447 (= res!2777920 (not ((_ is ElementMatch!16617) (derivativeStep!5281 r!7292 (head!13644 s!2326)))))))

(assert (=> b!6797447 (= e!4102446 e!4102447)))

(declare-fun b!6797448 () Bool)

(declare-fun res!2777915 () Bool)

(assert (=> b!6797448 (=> res!2777915 e!4102448)))

(assert (=> b!6797448 (= res!2777915 (not (isEmpty!38402 (tail!12729 (tail!12729 s!2326)))))))

(declare-fun b!6797449 () Bool)

(assert (=> b!6797449 (= e!4102447 e!4102452)))

(declare-fun res!2777919 () Bool)

(assert (=> b!6797449 (=> (not res!2777919) (not e!4102452))))

(assert (=> b!6797449 (= res!2777919 (not lt!2447433))))

(assert (= (and d!2135916 c!1263767) b!6797444))

(assert (= (and d!2135916 (not c!1263767)) b!6797437))

(assert (= (and d!2135916 c!1263768) b!6797443))

(assert (= (and d!2135916 (not c!1263768)) b!6797441))

(assert (= (and b!6797441 c!1263769) b!6797442))

(assert (= (and b!6797441 (not c!1263769)) b!6797447))

(assert (= (and b!6797447 (not res!2777920)) b!6797446))

(assert (= (and b!6797446 res!2777916) b!6797439))

(assert (= (and b!6797439 res!2777921) b!6797445))

(assert (= (and b!6797445 res!2777917) b!6797436))

(assert (= (and b!6797446 (not res!2777918)) b!6797449))

(assert (= (and b!6797449 res!2777919) b!6797440))

(assert (= (and b!6797440 (not res!2777914)) b!6797448))

(assert (= (and b!6797448 (not res!2777915)) b!6797438))

(assert (= (or b!6797443 b!6797439 b!6797440) bm!617492))

(assert (=> b!6797436 m!7543256))

(assert (=> b!6797436 m!7543736))

(assert (=> b!6797438 m!7543256))

(assert (=> b!6797438 m!7543736))

(assert (=> b!6797445 m!7543256))

(assert (=> b!6797445 m!7543738))

(assert (=> b!6797445 m!7543738))

(assert (=> b!6797445 m!7543740))

(assert (=> bm!617492 m!7543256))

(assert (=> bm!617492 m!7543258))

(assert (=> d!2135916 m!7543256))

(assert (=> d!2135916 m!7543258))

(assert (=> d!2135916 m!7543292))

(declare-fun m!7544246 () Bool)

(assert (=> d!2135916 m!7544246))

(assert (=> b!6797444 m!7543292))

(declare-fun m!7544248 () Bool)

(assert (=> b!6797444 m!7544248))

(assert (=> b!6797448 m!7543256))

(assert (=> b!6797448 m!7543738))

(assert (=> b!6797448 m!7543738))

(assert (=> b!6797448 m!7543740))

(assert (=> b!6797437 m!7543256))

(assert (=> b!6797437 m!7543736))

(assert (=> b!6797437 m!7543292))

(assert (=> b!6797437 m!7543736))

(declare-fun m!7544250 () Bool)

(assert (=> b!6797437 m!7544250))

(assert (=> b!6797437 m!7543256))

(assert (=> b!6797437 m!7543738))

(assert (=> b!6797437 m!7544250))

(assert (=> b!6797437 m!7543738))

(declare-fun m!7544252 () Bool)

(assert (=> b!6797437 m!7544252))

(assert (=> b!6796508 d!2135916))

(declare-fun b!6797450 () Bool)

(declare-fun e!4102457 () Regex!16617)

(declare-fun e!4102456 () Regex!16617)

(assert (=> b!6797450 (= e!4102457 e!4102456)))

(declare-fun c!1263774 () Bool)

(assert (=> b!6797450 (= c!1263774 ((_ is Star!16617) r!7292))))

(declare-fun bm!617493 () Bool)

(declare-fun call!617498 () Regex!16617)

(declare-fun call!617499 () Regex!16617)

(assert (=> bm!617493 (= call!617498 call!617499)))

(declare-fun b!6797451 () Bool)

(declare-fun e!4102455 () Regex!16617)

(assert (=> b!6797451 (= e!4102455 (ite (= (head!13644 s!2326) (c!1263403 r!7292)) EmptyExpr!16617 EmptyLang!16617))))

(declare-fun bm!617494 () Bool)

(declare-fun call!617501 () Regex!16617)

(assert (=> bm!617494 (= call!617499 call!617501)))

(declare-fun b!6797452 () Bool)

(declare-fun e!4102453 () Regex!16617)

(assert (=> b!6797452 (= e!4102453 (Union!16617 (Concat!25462 call!617498 (regTwo!33746 r!7292)) EmptyLang!16617))))

(declare-fun b!6797453 () Bool)

(declare-fun e!4102454 () Regex!16617)

(assert (=> b!6797453 (= e!4102454 e!4102455)))

(declare-fun c!1263772 () Bool)

(assert (=> b!6797453 (= c!1263772 ((_ is ElementMatch!16617) r!7292))))

(declare-fun c!1263773 () Bool)

(declare-fun bm!617495 () Bool)

(declare-fun c!1263770 () Bool)

(assert (=> bm!617495 (= call!617501 (derivativeStep!5281 (ite c!1263770 (regOne!33747 r!7292) (ite c!1263774 (reg!16946 r!7292) (ite c!1263773 (regTwo!33746 r!7292) (regOne!33746 r!7292)))) (head!13644 s!2326)))))

(declare-fun b!6797454 () Bool)

(assert (=> b!6797454 (= e!4102454 EmptyLang!16617)))

(declare-fun b!6797455 () Bool)

(assert (=> b!6797455 (= e!4102456 (Concat!25462 call!617499 r!7292))))

(declare-fun call!617500 () Regex!16617)

(declare-fun b!6797456 () Bool)

(assert (=> b!6797456 (= e!4102453 (Union!16617 (Concat!25462 call!617500 (regTwo!33746 r!7292)) call!617498))))

(declare-fun b!6797457 () Bool)

(assert (=> b!6797457 (= c!1263770 ((_ is Union!16617) r!7292))))

(assert (=> b!6797457 (= e!4102455 e!4102457)))

(declare-fun bm!617496 () Bool)

(assert (=> bm!617496 (= call!617500 (derivativeStep!5281 (ite c!1263770 (regTwo!33747 r!7292) (regOne!33746 r!7292)) (head!13644 s!2326)))))

(declare-fun d!2135918 () Bool)

(declare-fun lt!2447434 () Regex!16617)

(assert (=> d!2135918 (validRegex!8353 lt!2447434)))

(assert (=> d!2135918 (= lt!2447434 e!4102454)))

(declare-fun c!1263771 () Bool)

(assert (=> d!2135918 (= c!1263771 (or ((_ is EmptyExpr!16617) r!7292) ((_ is EmptyLang!16617) r!7292)))))

(assert (=> d!2135918 (validRegex!8353 r!7292)))

(assert (=> d!2135918 (= (derivativeStep!5281 r!7292 (head!13644 s!2326)) lt!2447434)))

(declare-fun b!6797458 () Bool)

(assert (=> b!6797458 (= e!4102457 (Union!16617 call!617501 call!617500))))

(declare-fun b!6797459 () Bool)

(assert (=> b!6797459 (= c!1263773 (nullable!6595 (regOne!33746 r!7292)))))

(assert (=> b!6797459 (= e!4102456 e!4102453)))

(assert (= (and d!2135918 c!1263771) b!6797454))

(assert (= (and d!2135918 (not c!1263771)) b!6797453))

(assert (= (and b!6797453 c!1263772) b!6797451))

(assert (= (and b!6797453 (not c!1263772)) b!6797457))

(assert (= (and b!6797457 c!1263770) b!6797458))

(assert (= (and b!6797457 (not c!1263770)) b!6797450))

(assert (= (and b!6797450 c!1263774) b!6797455))

(assert (= (and b!6797450 (not c!1263774)) b!6797459))

(assert (= (and b!6797459 c!1263773) b!6797456))

(assert (= (and b!6797459 (not c!1263773)) b!6797452))

(assert (= (or b!6797456 b!6797452) bm!617493))

(assert (= (or b!6797455 bm!617493) bm!617494))

(assert (= (or b!6797458 b!6797456) bm!617496))

(assert (= (or b!6797458 bm!617494) bm!617495))

(assert (=> bm!617495 m!7543254))

(declare-fun m!7544254 () Bool)

(assert (=> bm!617495 m!7544254))

(assert (=> bm!617496 m!7543254))

(declare-fun m!7544256 () Bool)

(assert (=> bm!617496 m!7544256))

(declare-fun m!7544258 () Bool)

(assert (=> d!2135918 m!7544258))

(assert (=> d!2135918 m!7543008))

(assert (=> b!6797459 m!7543146))

(assert (=> b!6796508 d!2135918))

(assert (=> b!6796508 d!2135692))

(assert (=> b!6796508 d!2135700))

(assert (=> b!6796439 d!2135692))

(declare-fun d!2135920 () Bool)

(assert (=> d!2135920 (= (head!13645 (exprs!6501 (h!72475 zl!343))) (h!72474 (exprs!6501 (h!72475 zl!343))))))

(assert (=> b!6796855 d!2135920))

(assert (=> bs!1811340 d!2135566))

(declare-fun b!6797460 () Bool)

(declare-fun e!4102459 () (InoxSet Context!12002))

(declare-fun call!617502 () (InoxSet Context!12002))

(assert (=> b!6797460 (= e!4102459 ((_ map or) call!617502 (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447275)))))) (h!72476 s!2326))))))

(declare-fun b!6797461 () Bool)

(declare-fun e!4102460 () (InoxSet Context!12002))

(assert (=> b!6797461 (= e!4102460 call!617502)))

(declare-fun bm!617497 () Bool)

(assert (=> bm!617497 (= call!617502 (derivationStepZipperDown!1845 (h!72474 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447275))))) (Context!12003 (t!379877 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447275)))))) (h!72476 s!2326)))))

(declare-fun b!6797462 () Bool)

(assert (=> b!6797462 (= e!4102460 ((as const (Array Context!12002 Bool)) false))))

(declare-fun d!2135922 () Bool)

(declare-fun c!1263776 () Bool)

(declare-fun e!4102458 () Bool)

(assert (=> d!2135922 (= c!1263776 e!4102458)))

(declare-fun res!2777922 () Bool)

(assert (=> d!2135922 (=> (not res!2777922) (not e!4102458))))

(assert (=> d!2135922 (= res!2777922 ((_ is Cons!66026) (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447275))))))))

(assert (=> d!2135922 (= (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 lt!2447275))) (h!72476 s!2326)) e!4102459)))

(declare-fun b!6797463 () Bool)

(assert (=> b!6797463 (= e!4102459 e!4102460)))

(declare-fun c!1263775 () Bool)

(assert (=> b!6797463 (= c!1263775 ((_ is Cons!66026) (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447275))))))))

(declare-fun b!6797464 () Bool)

(assert (=> b!6797464 (= e!4102458 (nullable!6595 (h!72474 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447275)))))))))

(assert (= (and d!2135922 res!2777922) b!6797464))

(assert (= (and d!2135922 c!1263776) b!6797460))

(assert (= (and d!2135922 (not c!1263776)) b!6797463))

(assert (= (and b!6797463 c!1263775) b!6797461))

(assert (= (and b!6797463 (not c!1263775)) b!6797462))

(assert (= (or b!6797460 b!6797461) bm!617497))

(declare-fun m!7544260 () Bool)

(assert (=> b!6797460 m!7544260))

(declare-fun m!7544262 () Bool)

(assert (=> bm!617497 m!7544262))

(declare-fun m!7544264 () Bool)

(assert (=> b!6797464 m!7544264))

(assert (=> b!6796636 d!2135922))

(declare-fun d!2135924 () Bool)

(assert (=> d!2135924 (= (nullable!6595 (regOne!33746 r!7292)) (nullableFct!2499 (regOne!33746 r!7292)))))

(declare-fun bs!1811590 () Bool)

(assert (= bs!1811590 d!2135924))

(declare-fun m!7544266 () Bool)

(assert (=> bs!1811590 m!7544266))

(assert (=> b!6796236 d!2135924))

(assert (=> bs!1811342 d!2135532))

(declare-fun bs!1811591 () Bool)

(declare-fun b!6797467 () Bool)

(assert (= bs!1811591 (and b!6797467 d!2135622)))

(declare-fun lambda!383247 () Int)

(assert (=> bs!1811591 (= (and (= (reg!16946 (regTwo!33747 r!7292)) (reg!16946 r!7292)) (= (regTwo!33747 r!7292) (Star!16617 (reg!16946 r!7292)))) (= lambda!383247 lambda!383199))))

(assert (=> bs!1811591 (not (= lambda!383247 lambda!383196))))

(declare-fun bs!1811592 () Bool)

(assert (= bs!1811592 (and b!6797467 d!2135898)))

(assert (=> bs!1811592 (= (and (= (reg!16946 (regTwo!33747 r!7292)) (reg!16946 r!7292)) (= (regTwo!33747 r!7292) (Star!16617 (reg!16946 r!7292)))) (= lambda!383247 lambda!383246))))

(declare-fun bs!1811593 () Bool)

(assert (= bs!1811593 (and b!6797467 d!2135608)))

(assert (=> bs!1811593 (not (= lambda!383247 lambda!383183))))

(declare-fun bs!1811594 () Bool)

(assert (= bs!1811594 (and b!6797467 b!6796374)))

(assert (=> bs!1811594 (not (= lambda!383247 lambda!383138))))

(declare-fun bs!1811595 () Bool)

(assert (= bs!1811595 (and b!6797467 b!6796162)))

(assert (=> bs!1811595 (= (and (= (reg!16946 (regTwo!33747 r!7292)) (reg!16946 r!7292)) (= (regTwo!33747 r!7292) r!7292)) (= lambda!383247 lambda!383113))))

(declare-fun bs!1811596 () Bool)

(assert (= bs!1811596 (and b!6797467 b!6797314)))

(assert (=> bs!1811596 (= (and (= (reg!16946 (regTwo!33747 r!7292)) (reg!16946 (regOne!33747 lt!2447264))) (= (regTwo!33747 r!7292) (regOne!33747 lt!2447264))) (= lambda!383247 lambda!383232))))

(assert (=> bs!1811595 (not (= lambda!383247 lambda!383114))))

(declare-fun bs!1811597 () Bool)

(assert (= bs!1811597 (and b!6797467 b!6797109)))

(assert (=> bs!1811597 (not (= lambda!383247 lambda!383220))))

(declare-fun bs!1811598 () Bool)

(assert (= bs!1811598 (and b!6797467 b!6796480)))

(assert (=> bs!1811598 (= (and (= (reg!16946 (regTwo!33747 r!7292)) (reg!16946 r!7292)) (= (regTwo!33747 r!7292) r!7292)) (= lambda!383247 lambda!383145))))

(declare-fun bs!1811599 () Bool)

(assert (= bs!1811599 (and b!6797467 b!6797110)))

(assert (=> bs!1811599 (= (and (= (reg!16946 (regTwo!33747 r!7292)) (reg!16946 (regOne!33747 r!7292))) (= (regTwo!33747 r!7292) (regOne!33747 r!7292))) (= lambda!383247 lambda!383219))))

(declare-fun bs!1811600 () Bool)

(assert (= bs!1811600 (and b!6797467 b!6797313)))

(assert (=> bs!1811600 (not (= lambda!383247 lambda!383233))))

(declare-fun bs!1811601 () Bool)

(assert (= bs!1811601 (and b!6797467 b!6797098)))

(assert (=> bs!1811601 (not (= lambda!383247 lambda!383215))))

(declare-fun bs!1811602 () Bool)

(assert (= bs!1811602 (and b!6797467 b!6796479)))

(assert (=> bs!1811602 (not (= lambda!383247 lambda!383146))))

(declare-fun bs!1811603 () Bool)

(assert (= bs!1811603 (and b!6797467 d!2135644)))

(assert (=> bs!1811603 (not (= lambda!383247 lambda!383204))))

(declare-fun bs!1811604 () Bool)

(assert (= bs!1811604 (and b!6797467 b!6796375)))

(assert (=> bs!1811604 (= (and (= (reg!16946 (regTwo!33747 r!7292)) (reg!16946 lt!2447264)) (= (regTwo!33747 r!7292) lt!2447264)) (= lambda!383247 lambda!383137))))

(assert (=> bs!1811593 (not (= lambda!383247 lambda!383185))))

(assert (=> bs!1811592 (not (= lambda!383247 lambda!383245))))

(declare-fun bs!1811605 () Bool)

(assert (= bs!1811605 (and b!6797467 b!6797099)))

(assert (=> bs!1811605 (= (and (= (reg!16946 (regTwo!33747 r!7292)) (reg!16946 (regTwo!33747 lt!2447264))) (= (regTwo!33747 r!7292) (regTwo!33747 lt!2447264))) (= lambda!383247 lambda!383214))))

(declare-fun bs!1811606 () Bool)

(assert (= bs!1811606 (and b!6797467 d!2135754)))

(assert (=> bs!1811606 (not (= lambda!383247 lambda!383226))))

(declare-fun bs!1811607 () Bool)

(assert (= bs!1811607 (and b!6797467 d!2135886)))

(assert (=> bs!1811607 (not (= lambda!383247 lambda!383240))))

(assert (=> bs!1811595 (not (= lambda!383247 lambda!383112))))

(assert (=> bs!1811606 (not (= lambda!383247 lambda!383227))))

(assert (=> b!6797467 true))

(assert (=> b!6797467 true))

(declare-fun bs!1811608 () Bool)

(declare-fun b!6797466 () Bool)

(assert (= bs!1811608 (and b!6797466 d!2135622)))

(declare-fun lambda!383248 () Int)

(assert (=> bs!1811608 (not (= lambda!383248 lambda!383199))))

(assert (=> bs!1811608 (not (= lambda!383248 lambda!383196))))

(declare-fun bs!1811609 () Bool)

(assert (= bs!1811609 (and b!6797466 d!2135898)))

(assert (=> bs!1811609 (not (= lambda!383248 lambda!383246))))

(declare-fun bs!1811610 () Bool)

(assert (= bs!1811610 (and b!6797466 d!2135608)))

(assert (=> bs!1811610 (not (= lambda!383248 lambda!383183))))

(declare-fun bs!1811611 () Bool)

(assert (= bs!1811611 (and b!6797466 b!6796374)))

(assert (=> bs!1811611 (= (and (= (regOne!33746 (regTwo!33747 r!7292)) (regOne!33746 lt!2447264)) (= (regTwo!33746 (regTwo!33747 r!7292)) (regTwo!33746 lt!2447264))) (= lambda!383248 lambda!383138))))

(declare-fun bs!1811612 () Bool)

(assert (= bs!1811612 (and b!6797466 b!6796162)))

(assert (=> bs!1811612 (not (= lambda!383248 lambda!383113))))

(declare-fun bs!1811613 () Bool)

(assert (= bs!1811613 (and b!6797466 b!6797467)))

(assert (=> bs!1811613 (not (= lambda!383248 lambda!383247))))

(declare-fun bs!1811614 () Bool)

(assert (= bs!1811614 (and b!6797466 b!6797314)))

(assert (=> bs!1811614 (not (= lambda!383248 lambda!383232))))

(assert (=> bs!1811612 (= (and (= (regOne!33746 (regTwo!33747 r!7292)) (reg!16946 r!7292)) (= (regTwo!33746 (regTwo!33747 r!7292)) r!7292)) (= lambda!383248 lambda!383114))))

(declare-fun bs!1811615 () Bool)

(assert (= bs!1811615 (and b!6797466 b!6797109)))

(assert (=> bs!1811615 (= (and (= (regOne!33746 (regTwo!33747 r!7292)) (regOne!33746 (regOne!33747 r!7292))) (= (regTwo!33746 (regTwo!33747 r!7292)) (regTwo!33746 (regOne!33747 r!7292)))) (= lambda!383248 lambda!383220))))

(declare-fun bs!1811616 () Bool)

(assert (= bs!1811616 (and b!6797466 b!6796480)))

(assert (=> bs!1811616 (not (= lambda!383248 lambda!383145))))

(declare-fun bs!1811617 () Bool)

(assert (= bs!1811617 (and b!6797466 b!6797110)))

(assert (=> bs!1811617 (not (= lambda!383248 lambda!383219))))

(declare-fun bs!1811618 () Bool)

(assert (= bs!1811618 (and b!6797466 b!6797313)))

(assert (=> bs!1811618 (= (and (= (regOne!33746 (regTwo!33747 r!7292)) (regOne!33746 (regOne!33747 lt!2447264))) (= (regTwo!33746 (regTwo!33747 r!7292)) (regTwo!33746 (regOne!33747 lt!2447264)))) (= lambda!383248 lambda!383233))))

(declare-fun bs!1811619 () Bool)

(assert (= bs!1811619 (and b!6797466 b!6797098)))

(assert (=> bs!1811619 (= (and (= (regOne!33746 (regTwo!33747 r!7292)) (regOne!33746 (regTwo!33747 lt!2447264))) (= (regTwo!33746 (regTwo!33747 r!7292)) (regTwo!33746 (regTwo!33747 lt!2447264)))) (= lambda!383248 lambda!383215))))

(declare-fun bs!1811620 () Bool)

(assert (= bs!1811620 (and b!6797466 b!6796479)))

(assert (=> bs!1811620 (= (and (= (regOne!33746 (regTwo!33747 r!7292)) (regOne!33746 r!7292)) (= (regTwo!33746 (regTwo!33747 r!7292)) (regTwo!33746 r!7292))) (= lambda!383248 lambda!383146))))

(declare-fun bs!1811621 () Bool)

(assert (= bs!1811621 (and b!6797466 d!2135644)))

(assert (=> bs!1811621 (not (= lambda!383248 lambda!383204))))

(declare-fun bs!1811622 () Bool)

(assert (= bs!1811622 (and b!6797466 b!6796375)))

(assert (=> bs!1811622 (not (= lambda!383248 lambda!383137))))

(assert (=> bs!1811610 (= (and (= (regOne!33746 (regTwo!33747 r!7292)) (reg!16946 r!7292)) (= (regTwo!33746 (regTwo!33747 r!7292)) r!7292)) (= lambda!383248 lambda!383185))))

(assert (=> bs!1811609 (not (= lambda!383248 lambda!383245))))

(declare-fun bs!1811623 () Bool)

(assert (= bs!1811623 (and b!6797466 b!6797099)))

(assert (=> bs!1811623 (not (= lambda!383248 lambda!383214))))

(declare-fun bs!1811624 () Bool)

(assert (= bs!1811624 (and b!6797466 d!2135754)))

(assert (=> bs!1811624 (not (= lambda!383248 lambda!383226))))

(declare-fun bs!1811625 () Bool)

(assert (= bs!1811625 (and b!6797466 d!2135886)))

(assert (=> bs!1811625 (not (= lambda!383248 lambda!383240))))

(assert (=> bs!1811612 (not (= lambda!383248 lambda!383112))))

(assert (=> bs!1811624 (= (and (= (regOne!33746 (regTwo!33747 r!7292)) (reg!16946 r!7292)) (= (regTwo!33746 (regTwo!33747 r!7292)) r!7292)) (= lambda!383248 lambda!383227))))

(assert (=> b!6797466 true))

(assert (=> b!6797466 true))

(declare-fun bm!617498 () Bool)

(declare-fun call!617503 () Bool)

(assert (=> bm!617498 (= call!617503 (isEmpty!38402 s!2326))))

(declare-fun b!6797465 () Bool)

(declare-fun res!2777925 () Bool)

(declare-fun e!4102465 () Bool)

(assert (=> b!6797465 (=> res!2777925 e!4102465)))

(assert (=> b!6797465 (= res!2777925 call!617503)))

(declare-fun e!4102462 () Bool)

(assert (=> b!6797465 (= e!4102462 e!4102465)))

(declare-fun call!617504 () Bool)

(assert (=> b!6797466 (= e!4102462 call!617504)))

(assert (=> b!6797467 (= e!4102465 call!617504)))

(declare-fun b!6797468 () Bool)

(declare-fun e!4102466 () Bool)

(assert (=> b!6797468 (= e!4102466 call!617503)))

(declare-fun d!2135926 () Bool)

(declare-fun c!1263780 () Bool)

(assert (=> d!2135926 (= c!1263780 ((_ is EmptyExpr!16617) (regTwo!33747 r!7292)))))

(assert (=> d!2135926 (= (matchRSpec!3718 (regTwo!33747 r!7292) s!2326) e!4102466)))

(declare-fun c!1263777 () Bool)

(declare-fun bm!617499 () Bool)

(assert (=> bm!617499 (= call!617504 (Exists!3685 (ite c!1263777 lambda!383247 lambda!383248)))))

(declare-fun b!6797469 () Bool)

(declare-fun e!4102464 () Bool)

(declare-fun e!4102463 () Bool)

(assert (=> b!6797469 (= e!4102464 e!4102463)))

(declare-fun res!2777923 () Bool)

(assert (=> b!6797469 (= res!2777923 (matchRSpec!3718 (regOne!33747 (regTwo!33747 r!7292)) s!2326))))

(assert (=> b!6797469 (=> res!2777923 e!4102463)))

(declare-fun b!6797470 () Bool)

(declare-fun c!1263778 () Bool)

(assert (=> b!6797470 (= c!1263778 ((_ is ElementMatch!16617) (regTwo!33747 r!7292)))))

(declare-fun e!4102461 () Bool)

(declare-fun e!4102467 () Bool)

(assert (=> b!6797470 (= e!4102461 e!4102467)))

(declare-fun b!6797471 () Bool)

(assert (=> b!6797471 (= e!4102464 e!4102462)))

(assert (=> b!6797471 (= c!1263777 ((_ is Star!16617) (regTwo!33747 r!7292)))))

(declare-fun b!6797472 () Bool)

(assert (=> b!6797472 (= e!4102463 (matchRSpec!3718 (regTwo!33747 (regTwo!33747 r!7292)) s!2326))))

(declare-fun b!6797473 () Bool)

(declare-fun c!1263779 () Bool)

(assert (=> b!6797473 (= c!1263779 ((_ is Union!16617) (regTwo!33747 r!7292)))))

(assert (=> b!6797473 (= e!4102467 e!4102464)))

(declare-fun b!6797474 () Bool)

(assert (=> b!6797474 (= e!4102467 (= s!2326 (Cons!66028 (c!1263403 (regTwo!33747 r!7292)) Nil!66028)))))

(declare-fun b!6797475 () Bool)

(assert (=> b!6797475 (= e!4102466 e!4102461)))

(declare-fun res!2777924 () Bool)

(assert (=> b!6797475 (= res!2777924 (not ((_ is EmptyLang!16617) (regTwo!33747 r!7292))))))

(assert (=> b!6797475 (=> (not res!2777924) (not e!4102461))))

(assert (= (and d!2135926 c!1263780) b!6797468))

(assert (= (and d!2135926 (not c!1263780)) b!6797475))

(assert (= (and b!6797475 res!2777924) b!6797470))

(assert (= (and b!6797470 c!1263778) b!6797474))

(assert (= (and b!6797470 (not c!1263778)) b!6797473))

(assert (= (and b!6797473 c!1263779) b!6797469))

(assert (= (and b!6797473 (not c!1263779)) b!6797471))

(assert (= (and b!6797469 (not res!2777923)) b!6797472))

(assert (= (and b!6797471 c!1263777) b!6797465))

(assert (= (and b!6797471 (not c!1263777)) b!6797466))

(assert (= (and b!6797465 (not res!2777925)) b!6797467))

(assert (= (or b!6797467 b!6797466) bm!617499))

(assert (= (or b!6797468 b!6797465) bm!617498))

(assert (=> bm!617498 m!7543012))

(declare-fun m!7544268 () Bool)

(assert (=> bm!617499 m!7544268))

(declare-fun m!7544270 () Bool)

(assert (=> b!6797469 m!7544270))

(declare-fun m!7544272 () Bool)

(assert (=> b!6797472 m!7544272))

(assert (=> b!6796485 d!2135926))

(declare-fun d!2135928 () Bool)

(declare-fun lt!2447437 () Int)

(assert (=> d!2135928 (>= lt!2447437 0)))

(declare-fun e!4102470 () Int)

(assert (=> d!2135928 (= lt!2447437 e!4102470)))

(declare-fun c!1263783 () Bool)

(assert (=> d!2135928 (= c!1263783 ((_ is Nil!66026) lt!2447344))))

(assert (=> d!2135928 (= (size!40656 lt!2447344) lt!2447437)))

(declare-fun b!6797480 () Bool)

(assert (=> b!6797480 (= e!4102470 0)))

(declare-fun b!6797481 () Bool)

(assert (=> b!6797481 (= e!4102470 (+ 1 (size!40656 (t!379877 lt!2447344))))))

(assert (= (and d!2135928 c!1263783) b!6797480))

(assert (= (and d!2135928 (not c!1263783)) b!6797481))

(declare-fun m!7544274 () Bool)

(assert (=> b!6797481 m!7544274))

(assert (=> b!6796651 d!2135928))

(declare-fun d!2135930 () Bool)

(declare-fun lt!2447438 () Int)

(assert (=> d!2135930 (>= lt!2447438 0)))

(declare-fun e!4102471 () Int)

(assert (=> d!2135930 (= lt!2447438 e!4102471)))

(declare-fun c!1263784 () Bool)

(assert (=> d!2135930 (= c!1263784 ((_ is Nil!66026) (Cons!66026 (reg!16946 r!7292) Nil!66026)))))

(assert (=> d!2135930 (= (size!40656 (Cons!66026 (reg!16946 r!7292) Nil!66026)) lt!2447438)))

(declare-fun b!6797482 () Bool)

(assert (=> b!6797482 (= e!4102471 0)))

(declare-fun b!6797483 () Bool)

(assert (=> b!6797483 (= e!4102471 (+ 1 (size!40656 (t!379877 (Cons!66026 (reg!16946 r!7292) Nil!66026)))))))

(assert (= (and d!2135930 c!1263784) b!6797482))

(assert (= (and d!2135930 (not c!1263784)) b!6797483))

(assert (=> b!6797483 m!7544184))

(assert (=> b!6796651 d!2135930))

(declare-fun d!2135932 () Bool)

(declare-fun lt!2447439 () Int)

(assert (=> d!2135932 (>= lt!2447439 0)))

(declare-fun e!4102472 () Int)

(assert (=> d!2135932 (= lt!2447439 e!4102472)))

(declare-fun c!1263785 () Bool)

(assert (=> d!2135932 (= c!1263785 ((_ is Nil!66026) lt!2447262))))

(assert (=> d!2135932 (= (size!40656 lt!2447262) lt!2447439)))

(declare-fun b!6797484 () Bool)

(assert (=> b!6797484 (= e!4102472 0)))

(declare-fun b!6797485 () Bool)

(assert (=> b!6797485 (= e!4102472 (+ 1 (size!40656 (t!379877 lt!2447262))))))

(assert (= (and d!2135932 c!1263785) b!6797484))

(assert (= (and d!2135932 (not c!1263785)) b!6797485))

(declare-fun m!7544276 () Bool)

(assert (=> b!6797485 m!7544276))

(assert (=> b!6796651 d!2135932))

(declare-fun d!2135934 () Bool)

(declare-fun c!1263786 () Bool)

(assert (=> d!2135934 (= c!1263786 (isEmpty!38402 (tail!12729 s!2326)))))

(declare-fun e!4102473 () Bool)

(assert (=> d!2135934 (= (matchZipper!2603 (derivationStepZipper!2561 z!1189 (head!13644 s!2326)) (tail!12729 s!2326)) e!4102473)))

(declare-fun b!6797486 () Bool)

(assert (=> b!6797486 (= e!4102473 (nullableZipper!2323 (derivationStepZipper!2561 z!1189 (head!13644 s!2326))))))

(declare-fun b!6797487 () Bool)

(assert (=> b!6797487 (= e!4102473 (matchZipper!2603 (derivationStepZipper!2561 (derivationStepZipper!2561 z!1189 (head!13644 s!2326)) (head!13644 (tail!12729 s!2326))) (tail!12729 (tail!12729 s!2326))))))

(assert (= (and d!2135934 c!1263786) b!6797486))

(assert (= (and d!2135934 (not c!1263786)) b!6797487))

(assert (=> d!2135934 m!7543256))

(assert (=> d!2135934 m!7543258))

(assert (=> b!6797486 m!7543530))

(declare-fun m!7544278 () Bool)

(assert (=> b!6797486 m!7544278))

(assert (=> b!6797487 m!7543256))

(assert (=> b!6797487 m!7543736))

(assert (=> b!6797487 m!7543530))

(assert (=> b!6797487 m!7543736))

(declare-fun m!7544280 () Bool)

(assert (=> b!6797487 m!7544280))

(assert (=> b!6797487 m!7543256))

(assert (=> b!6797487 m!7543738))

(assert (=> b!6797487 m!7544280))

(assert (=> b!6797487 m!7543738))

(declare-fun m!7544282 () Bool)

(assert (=> b!6797487 m!7544282))

(assert (=> b!6796701 d!2135934))

(declare-fun bs!1811626 () Bool)

(declare-fun d!2135936 () Bool)

(assert (= bs!1811626 (and d!2135936 b!6796135)))

(declare-fun lambda!383249 () Int)

(assert (=> bs!1811626 (= (= (head!13644 s!2326) (h!72476 s!2326)) (= lambda!383249 lambda!383115))))

(declare-fun bs!1811627 () Bool)

(assert (= bs!1811627 (and d!2135936 d!2135798)))

(assert (=> bs!1811627 (= (= (head!13644 s!2326) (head!13644 (t!379879 s!2326))) (= lambda!383249 lambda!383229))))

(declare-fun bs!1811628 () Bool)

(assert (= bs!1811628 (and d!2135936 d!2135746)))

(assert (=> bs!1811628 (= lambda!383249 lambda!383221)))

(declare-fun bs!1811629 () Bool)

(assert (= bs!1811629 (and d!2135936 d!2135470)))

(assert (=> bs!1811629 (= (= (head!13644 s!2326) (h!72476 s!2326)) (= lambda!383249 lambda!383127))))

(declare-fun bs!1811630 () Bool)

(assert (= bs!1811630 (and d!2135936 d!2135560)))

(assert (=> bs!1811630 (= (= (head!13644 s!2326) (h!72476 s!2326)) (= lambda!383249 lambda!383160))))

(declare-fun bs!1811631 () Bool)

(assert (= bs!1811631 (and d!2135936 d!2135564)))

(assert (=> bs!1811631 (= (= (head!13644 s!2326) (h!72476 s!2326)) (= lambda!383249 lambda!383162))))

(assert (=> d!2135936 true))

(assert (=> d!2135936 (= (derivationStepZipper!2561 z!1189 (head!13644 s!2326)) (flatMap!2098 z!1189 lambda!383249))))

(declare-fun bs!1811632 () Bool)

(assert (= bs!1811632 d!2135936))

(declare-fun m!7544284 () Bool)

(assert (=> bs!1811632 m!7544284))

(assert (=> b!6796701 d!2135936))

(assert (=> b!6796701 d!2135692))

(assert (=> b!6796701 d!2135700))

(declare-fun d!2135938 () Bool)

(assert (=> d!2135938 (= (isEmpty!38402 (t!379879 s!2326)) ((_ is Nil!66028) (t!379879 s!2326)))))

(assert (=> d!2135558 d!2135938))

(declare-fun bs!1811633 () Bool)

(declare-fun d!2135940 () Bool)

(assert (= bs!1811633 (and d!2135940 b!6796140)))

(declare-fun lambda!383250 () Int)

(assert (=> bs!1811633 (= lambda!383250 lambda!383117)))

(declare-fun bs!1811634 () Bool)

(assert (= bs!1811634 (and d!2135940 d!2135578)))

(assert (=> bs!1811634 (= lambda!383250 lambda!383167)))

(declare-fun bs!1811635 () Bool)

(assert (= bs!1811635 (and d!2135940 d!2135806)))

(assert (=> bs!1811635 (= lambda!383250 lambda!383230)))

(declare-fun bs!1811636 () Bool)

(assert (= bs!1811636 (and d!2135940 d!2135850)))

(assert (=> bs!1811636 (= lambda!383250 lambda!383234)))

(declare-fun bs!1811637 () Bool)

(assert (= bs!1811637 (and d!2135940 d!2135542)))

(assert (=> bs!1811637 (= lambda!383250 lambda!383157)))

(declare-fun bs!1811638 () Bool)

(assert (= bs!1811638 (and d!2135940 d!2135708)))

(assert (=> bs!1811638 (= lambda!383250 lambda!383212)))

(declare-fun bs!1811639 () Bool)

(assert (= bs!1811639 (and d!2135940 d!2135604)))

(assert (=> bs!1811639 (= lambda!383250 lambda!383176)))

(declare-fun bs!1811640 () Bool)

(assert (= bs!1811640 (and d!2135940 d!2135778)))

(assert (=> bs!1811640 (= lambda!383250 lambda!383228)))

(declare-fun bs!1811641 () Bool)

(assert (= bs!1811641 (and d!2135940 d!2135474)))

(assert (=> bs!1811641 (= lambda!383250 lambda!383130)))

(declare-fun bs!1811642 () Bool)

(assert (= bs!1811642 (and d!2135940 d!2135648)))

(assert (=> bs!1811642 (= lambda!383250 lambda!383210)))

(declare-fun bs!1811643 () Bool)

(assert (= bs!1811643 (and d!2135940 d!2135838)))

(assert (=> bs!1811643 (= lambda!383250 lambda!383231)))

(declare-fun bs!1811644 () Bool)

(assert (= bs!1811644 (and d!2135940 d!2135538)))

(assert (=> bs!1811644 (= lambda!383250 lambda!383151)))

(declare-fun bs!1811645 () Bool)

(assert (= bs!1811645 (and d!2135940 d!2135710)))

(assert (=> bs!1811645 (= lambda!383250 lambda!383213)))

(declare-fun bs!1811646 () Bool)

(assert (= bs!1811646 (and d!2135940 d!2135852)))

(assert (=> bs!1811646 (= lambda!383250 lambda!383235)))

(declare-fun bs!1811647 () Bool)

(assert (= bs!1811647 (and d!2135940 d!2135874)))

(assert (=> bs!1811647 (= lambda!383250 lambda!383236)))

(assert (=> d!2135940 (= (inv!84789 (h!72475 (t!379878 zl!343))) (forall!15809 (exprs!6501 (h!72475 (t!379878 zl!343))) lambda!383250))))

(declare-fun bs!1811648 () Bool)

(assert (= bs!1811648 d!2135940))

(declare-fun m!7544286 () Bool)

(assert (=> bs!1811648 m!7544286))

(assert (=> b!6796911 d!2135940))

(declare-fun b!6797491 () Bool)

(declare-fun e!4102474 () Bool)

(declare-fun lt!2447440 () List!66152)

(assert (=> b!6797491 (= e!4102474 (or (not (= (_2!36895 (get!22994 lt!2447388)) Nil!66028)) (= lt!2447440 (_1!36895 (get!22994 lt!2447388)))))))

(declare-fun b!6797490 () Bool)

(declare-fun res!2777927 () Bool)

(assert (=> b!6797490 (=> (not res!2777927) (not e!4102474))))

(assert (=> b!6797490 (= res!2777927 (= (size!40658 lt!2447440) (+ (size!40658 (_1!36895 (get!22994 lt!2447388))) (size!40658 (_2!36895 (get!22994 lt!2447388))))))))

(declare-fun b!6797489 () Bool)

(declare-fun e!4102475 () List!66152)

(assert (=> b!6797489 (= e!4102475 (Cons!66028 (h!72476 (_1!36895 (get!22994 lt!2447388))) (++!14780 (t!379879 (_1!36895 (get!22994 lt!2447388))) (_2!36895 (get!22994 lt!2447388)))))))

(declare-fun b!6797488 () Bool)

(assert (=> b!6797488 (= e!4102475 (_2!36895 (get!22994 lt!2447388)))))

(declare-fun d!2135942 () Bool)

(assert (=> d!2135942 e!4102474))

(declare-fun res!2777926 () Bool)

(assert (=> d!2135942 (=> (not res!2777926) (not e!4102474))))

(assert (=> d!2135942 (= res!2777926 (= (content!12888 lt!2447440) ((_ map or) (content!12888 (_1!36895 (get!22994 lt!2447388))) (content!12888 (_2!36895 (get!22994 lt!2447388))))))))

(assert (=> d!2135942 (= lt!2447440 e!4102475)))

(declare-fun c!1263787 () Bool)

(assert (=> d!2135942 (= c!1263787 ((_ is Nil!66028) (_1!36895 (get!22994 lt!2447388))))))

(assert (=> d!2135942 (= (++!14780 (_1!36895 (get!22994 lt!2447388)) (_2!36895 (get!22994 lt!2447388))) lt!2447440)))

(assert (= (and d!2135942 c!1263787) b!6797488))

(assert (= (and d!2135942 (not c!1263787)) b!6797489))

(assert (= (and d!2135942 res!2777926) b!6797490))

(assert (= (and b!6797490 res!2777927) b!6797491))

(declare-fun m!7544288 () Bool)

(assert (=> b!6797490 m!7544288))

(declare-fun m!7544290 () Bool)

(assert (=> b!6797490 m!7544290))

(declare-fun m!7544292 () Bool)

(assert (=> b!6797490 m!7544292))

(declare-fun m!7544294 () Bool)

(assert (=> b!6797489 m!7544294))

(declare-fun m!7544296 () Bool)

(assert (=> d!2135942 m!7544296))

(declare-fun m!7544298 () Bool)

(assert (=> d!2135942 m!7544298))

(declare-fun m!7544300 () Bool)

(assert (=> d!2135942 m!7544300))

(assert (=> b!6796783 d!2135942))

(assert (=> b!6796783 d!2135794))

(declare-fun d!2135944 () Bool)

(assert (=> d!2135944 (= (isEmpty!38403 (unfocusZipperList!2038 zl!343)) ((_ is Nil!66026) (unfocusZipperList!2038 zl!343)))))

(assert (=> b!6796590 d!2135944))

(declare-fun b!6797492 () Bool)

(declare-fun e!4102477 () (InoxSet Context!12002))

(declare-fun call!617505 () (InoxSet Context!12002))

(assert (=> b!6797492 (= e!4102477 ((_ map or) call!617505 (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447273)))))) (h!72476 s!2326))))))

(declare-fun b!6797493 () Bool)

(declare-fun e!4102478 () (InoxSet Context!12002))

(assert (=> b!6797493 (= e!4102478 call!617505)))

(declare-fun bm!617500 () Bool)

(assert (=> bm!617500 (= call!617505 (derivationStepZipperDown!1845 (h!72474 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447273))))) (Context!12003 (t!379877 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447273)))))) (h!72476 s!2326)))))

(declare-fun b!6797494 () Bool)

(assert (=> b!6797494 (= e!4102478 ((as const (Array Context!12002 Bool)) false))))

(declare-fun d!2135946 () Bool)

(declare-fun c!1263789 () Bool)

(declare-fun e!4102476 () Bool)

(assert (=> d!2135946 (= c!1263789 e!4102476)))

(declare-fun res!2777928 () Bool)

(assert (=> d!2135946 (=> (not res!2777928) (not e!4102476))))

(assert (=> d!2135946 (= res!2777928 ((_ is Cons!66026) (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447273))))))))

(assert (=> d!2135946 (= (derivationStepZipperUp!1771 (Context!12003 (t!379877 (exprs!6501 lt!2447273))) (h!72476 s!2326)) e!4102477)))

(declare-fun b!6797495 () Bool)

(assert (=> b!6797495 (= e!4102477 e!4102478)))

(declare-fun c!1263788 () Bool)

(assert (=> b!6797495 (= c!1263788 ((_ is Cons!66026) (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447273))))))))

(declare-fun b!6797496 () Bool)

(assert (=> b!6797496 (= e!4102476 (nullable!6595 (h!72474 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 lt!2447273)))))))))

(assert (= (and d!2135946 res!2777928) b!6797496))

(assert (= (and d!2135946 c!1263789) b!6797492))

(assert (= (and d!2135946 (not c!1263789)) b!6797495))

(assert (= (and b!6797495 c!1263788) b!6797493))

(assert (= (and b!6797495 (not c!1263788)) b!6797494))

(assert (= (or b!6797492 b!6797493) bm!617500))

(declare-fun m!7544302 () Bool)

(assert (=> b!6797492 m!7544302))

(declare-fun m!7544304 () Bool)

(assert (=> bm!617500 m!7544304))

(declare-fun m!7544306 () Bool)

(assert (=> b!6797496 m!7544306))

(assert (=> b!6796629 d!2135946))

(assert (=> bs!1811341 d!2135456))

(declare-fun d!2135948 () Bool)

(declare-fun res!2777929 () Bool)

(declare-fun e!4102479 () Bool)

(assert (=> d!2135948 (=> res!2777929 e!4102479)))

(assert (=> d!2135948 (= res!2777929 ((_ is Nil!66026) (exprs!6501 (h!72475 zl!343))))))

(assert (=> d!2135948 (= (forall!15809 (exprs!6501 (h!72475 zl!343)) lambda!383130) e!4102479)))

(declare-fun b!6797497 () Bool)

(declare-fun e!4102480 () Bool)

(assert (=> b!6797497 (= e!4102479 e!4102480)))

(declare-fun res!2777930 () Bool)

(assert (=> b!6797497 (=> (not res!2777930) (not e!4102480))))

(assert (=> b!6797497 (= res!2777930 (dynLambda!26363 lambda!383130 (h!72474 (exprs!6501 (h!72475 zl!343)))))))

(declare-fun b!6797498 () Bool)

(assert (=> b!6797498 (= e!4102480 (forall!15809 (t!379877 (exprs!6501 (h!72475 zl!343))) lambda!383130))))

(assert (= (and d!2135948 (not res!2777929)) b!6797497))

(assert (= (and b!6797497 res!2777930) b!6797498))

(declare-fun b_lambda!256141 () Bool)

(assert (=> (not b_lambda!256141) (not b!6797497)))

(declare-fun m!7544308 () Bool)

(assert (=> b!6797497 m!7544308))

(declare-fun m!7544310 () Bool)

(assert (=> b!6797498 m!7544310))

(assert (=> d!2135474 d!2135948))

(assert (=> b!6796516 d!2135724))

(assert (=> b!6796516 d!2135700))

(declare-fun bm!617501 () Bool)

(declare-fun call!617506 () Bool)

(declare-fun c!1263790 () Bool)

(assert (=> bm!617501 (= call!617506 (validRegex!8353 (ite c!1263790 (regTwo!33747 lt!2447288) (regTwo!33746 lt!2447288))))))

(declare-fun b!6797499 () Bool)

(declare-fun e!4102485 () Bool)

(declare-fun e!4102487 () Bool)

(assert (=> b!6797499 (= e!4102485 e!4102487)))

(declare-fun res!2777933 () Bool)

(assert (=> b!6797499 (= res!2777933 (not (nullable!6595 (reg!16946 lt!2447288))))))

(assert (=> b!6797499 (=> (not res!2777933) (not e!4102487))))

(declare-fun b!6797500 () Bool)

(declare-fun e!4102482 () Bool)

(assert (=> b!6797500 (= e!4102482 call!617506)))

(declare-fun b!6797501 () Bool)

(declare-fun e!4102481 () Bool)

(assert (=> b!6797501 (= e!4102485 e!4102481)))

(assert (=> b!6797501 (= c!1263790 ((_ is Union!16617) lt!2447288))))

(declare-fun b!6797502 () Bool)

(declare-fun res!2777934 () Bool)

(declare-fun e!4102486 () Bool)

(assert (=> b!6797502 (=> (not res!2777934) (not e!4102486))))

(declare-fun call!617507 () Bool)

(assert (=> b!6797502 (= res!2777934 call!617507)))

(assert (=> b!6797502 (= e!4102481 e!4102486)))

(declare-fun b!6797503 () Bool)

(declare-fun e!4102483 () Bool)

(assert (=> b!6797503 (= e!4102483 e!4102485)))

(declare-fun c!1263791 () Bool)

(assert (=> b!6797503 (= c!1263791 ((_ is Star!16617) lt!2447288))))

(declare-fun b!6797504 () Bool)

(declare-fun res!2777935 () Bool)

(declare-fun e!4102484 () Bool)

(assert (=> b!6797504 (=> res!2777935 e!4102484)))

(assert (=> b!6797504 (= res!2777935 (not ((_ is Concat!25462) lt!2447288)))))

(assert (=> b!6797504 (= e!4102481 e!4102484)))

(declare-fun bm!617502 () Bool)

(declare-fun call!617508 () Bool)

(assert (=> bm!617502 (= call!617508 (validRegex!8353 (ite c!1263791 (reg!16946 lt!2447288) (ite c!1263790 (regOne!33747 lt!2447288) (regOne!33746 lt!2447288)))))))

(declare-fun bm!617503 () Bool)

(assert (=> bm!617503 (= call!617507 call!617508)))

(declare-fun b!6797505 () Bool)

(assert (=> b!6797505 (= e!4102486 call!617506)))

(declare-fun d!2135950 () Bool)

(declare-fun res!2777932 () Bool)

(assert (=> d!2135950 (=> res!2777932 e!4102483)))

(assert (=> d!2135950 (= res!2777932 ((_ is ElementMatch!16617) lt!2447288))))

(assert (=> d!2135950 (= (validRegex!8353 lt!2447288) e!4102483)))

(declare-fun b!6797506 () Bool)

(assert (=> b!6797506 (= e!4102487 call!617508)))

(declare-fun b!6797507 () Bool)

(assert (=> b!6797507 (= e!4102484 e!4102482)))

(declare-fun res!2777931 () Bool)

(assert (=> b!6797507 (=> (not res!2777931) (not e!4102482))))

(assert (=> b!6797507 (= res!2777931 call!617507)))

(assert (= (and d!2135950 (not res!2777932)) b!6797503))

(assert (= (and b!6797503 c!1263791) b!6797499))

(assert (= (and b!6797503 (not c!1263791)) b!6797501))

(assert (= (and b!6797499 res!2777933) b!6797506))

(assert (= (and b!6797501 c!1263790) b!6797502))

(assert (= (and b!6797501 (not c!1263790)) b!6797504))

(assert (= (and b!6797502 res!2777934) b!6797505))

(assert (= (and b!6797504 (not res!2777935)) b!6797507))

(assert (= (and b!6797507 res!2777931) b!6797500))

(assert (= (or b!6797505 b!6797500) bm!617501))

(assert (= (or b!6797502 b!6797507) bm!617503))

(assert (= (or b!6797506 bm!617503) bm!617502))

(declare-fun m!7544312 () Bool)

(assert (=> bm!617501 m!7544312))

(declare-fun m!7544314 () Bool)

(assert (=> b!6797499 m!7544314))

(declare-fun m!7544316 () Bool)

(assert (=> bm!617502 m!7544316))

(assert (=> d!2135460 d!2135950))

(declare-fun bs!1811649 () Bool)

(declare-fun d!2135952 () Bool)

(assert (= bs!1811649 (and d!2135952 b!6796140)))

(declare-fun lambda!383251 () Int)

(assert (=> bs!1811649 (= lambda!383251 lambda!383117)))

(declare-fun bs!1811650 () Bool)

(assert (= bs!1811650 (and d!2135952 d!2135578)))

(assert (=> bs!1811650 (= lambda!383251 lambda!383167)))

(declare-fun bs!1811651 () Bool)

(assert (= bs!1811651 (and d!2135952 d!2135806)))

(assert (=> bs!1811651 (= lambda!383251 lambda!383230)))

(declare-fun bs!1811652 () Bool)

(assert (= bs!1811652 (and d!2135952 d!2135850)))

(assert (=> bs!1811652 (= lambda!383251 lambda!383234)))

(declare-fun bs!1811653 () Bool)

(assert (= bs!1811653 (and d!2135952 d!2135542)))

(assert (=> bs!1811653 (= lambda!383251 lambda!383157)))

(declare-fun bs!1811654 () Bool)

(assert (= bs!1811654 (and d!2135952 d!2135708)))

(assert (=> bs!1811654 (= lambda!383251 lambda!383212)))

(declare-fun bs!1811655 () Bool)

(assert (= bs!1811655 (and d!2135952 d!2135940)))

(assert (=> bs!1811655 (= lambda!383251 lambda!383250)))

(declare-fun bs!1811656 () Bool)

(assert (= bs!1811656 (and d!2135952 d!2135604)))

(assert (=> bs!1811656 (= lambda!383251 lambda!383176)))

(declare-fun bs!1811657 () Bool)

(assert (= bs!1811657 (and d!2135952 d!2135778)))

(assert (=> bs!1811657 (= lambda!383251 lambda!383228)))

(declare-fun bs!1811658 () Bool)

(assert (= bs!1811658 (and d!2135952 d!2135474)))

(assert (=> bs!1811658 (= lambda!383251 lambda!383130)))

(declare-fun bs!1811659 () Bool)

(assert (= bs!1811659 (and d!2135952 d!2135648)))

(assert (=> bs!1811659 (= lambda!383251 lambda!383210)))

(declare-fun bs!1811660 () Bool)

(assert (= bs!1811660 (and d!2135952 d!2135838)))

(assert (=> bs!1811660 (= lambda!383251 lambda!383231)))

(declare-fun bs!1811661 () Bool)

(assert (= bs!1811661 (and d!2135952 d!2135538)))

(assert (=> bs!1811661 (= lambda!383251 lambda!383151)))

(declare-fun bs!1811662 () Bool)

(assert (= bs!1811662 (and d!2135952 d!2135710)))

(assert (=> bs!1811662 (= lambda!383251 lambda!383213)))

(declare-fun bs!1811663 () Bool)

(assert (= bs!1811663 (and d!2135952 d!2135852)))

(assert (=> bs!1811663 (= lambda!383251 lambda!383235)))

(declare-fun bs!1811664 () Bool)

(assert (= bs!1811664 (and d!2135952 d!2135874)))

(assert (=> bs!1811664 (= lambda!383251 lambda!383236)))

(declare-fun b!6797508 () Bool)

(declare-fun e!4102489 () Regex!16617)

(assert (=> b!6797508 (= e!4102489 EmptyLang!16617)))

(declare-fun b!6797509 () Bool)

(declare-fun e!4102493 () Bool)

(declare-fun e!4102492 () Bool)

(assert (=> b!6797509 (= e!4102493 e!4102492)))

(declare-fun c!1263794 () Bool)

(assert (=> b!6797509 (= c!1263794 (isEmpty!38403 (unfocusZipperList!2038 (Cons!66027 lt!2447263 Nil!66027))))))

(declare-fun b!6797510 () Bool)

(declare-fun e!4102488 () Bool)

(assert (=> b!6797510 (= e!4102492 e!4102488)))

(declare-fun c!1263792 () Bool)

(assert (=> b!6797510 (= c!1263792 (isEmpty!38403 (tail!12730 (unfocusZipperList!2038 (Cons!66027 lt!2447263 Nil!66027)))))))

(declare-fun b!6797511 () Bool)

(declare-fun lt!2447441 () Regex!16617)

(assert (=> b!6797511 (= e!4102488 (isUnion!1412 lt!2447441))))

(declare-fun b!6797512 () Bool)

(declare-fun e!4102491 () Bool)

(assert (=> b!6797512 (= e!4102491 (isEmpty!38403 (t!379877 (unfocusZipperList!2038 (Cons!66027 lt!2447263 Nil!66027)))))))

(declare-fun b!6797513 () Bool)

(assert (=> b!6797513 (= e!4102492 (isEmptyLang!1982 lt!2447441))))

(assert (=> d!2135952 e!4102493))

(declare-fun res!2777937 () Bool)

(assert (=> d!2135952 (=> (not res!2777937) (not e!4102493))))

(assert (=> d!2135952 (= res!2777937 (validRegex!8353 lt!2447441))))

(declare-fun e!4102490 () Regex!16617)

(assert (=> d!2135952 (= lt!2447441 e!4102490)))

(declare-fun c!1263795 () Bool)

(assert (=> d!2135952 (= c!1263795 e!4102491)))

(declare-fun res!2777936 () Bool)

(assert (=> d!2135952 (=> (not res!2777936) (not e!4102491))))

(assert (=> d!2135952 (= res!2777936 ((_ is Cons!66026) (unfocusZipperList!2038 (Cons!66027 lt!2447263 Nil!66027))))))

(assert (=> d!2135952 (forall!15809 (unfocusZipperList!2038 (Cons!66027 lt!2447263 Nil!66027)) lambda!383251)))

(assert (=> d!2135952 (= (generalisedUnion!2461 (unfocusZipperList!2038 (Cons!66027 lt!2447263 Nil!66027))) lt!2447441)))

(declare-fun b!6797514 () Bool)

(assert (=> b!6797514 (= e!4102490 (h!72474 (unfocusZipperList!2038 (Cons!66027 lt!2447263 Nil!66027))))))

(declare-fun b!6797515 () Bool)

(assert (=> b!6797515 (= e!4102488 (= lt!2447441 (head!13645 (unfocusZipperList!2038 (Cons!66027 lt!2447263 Nil!66027)))))))

(declare-fun b!6797516 () Bool)

(assert (=> b!6797516 (= e!4102489 (Union!16617 (h!72474 (unfocusZipperList!2038 (Cons!66027 lt!2447263 Nil!66027))) (generalisedUnion!2461 (t!379877 (unfocusZipperList!2038 (Cons!66027 lt!2447263 Nil!66027))))))))

(declare-fun b!6797517 () Bool)

(assert (=> b!6797517 (= e!4102490 e!4102489)))

(declare-fun c!1263793 () Bool)

(assert (=> b!6797517 (= c!1263793 ((_ is Cons!66026) (unfocusZipperList!2038 (Cons!66027 lt!2447263 Nil!66027))))))

(assert (= (and d!2135952 res!2777936) b!6797512))

(assert (= (and d!2135952 c!1263795) b!6797514))

(assert (= (and d!2135952 (not c!1263795)) b!6797517))

(assert (= (and b!6797517 c!1263793) b!6797516))

(assert (= (and b!6797517 (not c!1263793)) b!6797508))

(assert (= (and d!2135952 res!2777937) b!6797509))

(assert (= (and b!6797509 c!1263794) b!6797513))

(assert (= (and b!6797509 (not c!1263794)) b!6797510))

(assert (= (and b!6797510 c!1263792) b!6797515))

(assert (= (and b!6797510 (not c!1263792)) b!6797511))

(declare-fun m!7544318 () Bool)

(assert (=> d!2135952 m!7544318))

(assert (=> d!2135952 m!7543140))

(declare-fun m!7544320 () Bool)

(assert (=> d!2135952 m!7544320))

(declare-fun m!7544322 () Bool)

(assert (=> b!6797512 m!7544322))

(declare-fun m!7544324 () Bool)

(assert (=> b!6797516 m!7544324))

(assert (=> b!6797515 m!7543140))

(declare-fun m!7544326 () Bool)

(assert (=> b!6797515 m!7544326))

(assert (=> b!6797509 m!7543140))

(declare-fun m!7544328 () Bool)

(assert (=> b!6797509 m!7544328))

(assert (=> b!6797510 m!7543140))

(declare-fun m!7544330 () Bool)

(assert (=> b!6797510 m!7544330))

(assert (=> b!6797510 m!7544330))

(declare-fun m!7544332 () Bool)

(assert (=> b!6797510 m!7544332))

(declare-fun m!7544334 () Bool)

(assert (=> b!6797513 m!7544334))

(declare-fun m!7544336 () Bool)

(assert (=> b!6797511 m!7544336))

(assert (=> d!2135460 d!2135952))

(declare-fun bs!1811665 () Bool)

(declare-fun d!2135954 () Bool)

(assert (= bs!1811665 (and d!2135954 b!6796140)))

(declare-fun lambda!383252 () Int)

(assert (=> bs!1811665 (= lambda!383252 lambda!383117)))

(declare-fun bs!1811666 () Bool)

(assert (= bs!1811666 (and d!2135954 d!2135578)))

(assert (=> bs!1811666 (= lambda!383252 lambda!383167)))

(declare-fun bs!1811667 () Bool)

(assert (= bs!1811667 (and d!2135954 d!2135806)))

(assert (=> bs!1811667 (= lambda!383252 lambda!383230)))

(declare-fun bs!1811668 () Bool)

(assert (= bs!1811668 (and d!2135954 d!2135850)))

(assert (=> bs!1811668 (= lambda!383252 lambda!383234)))

(declare-fun bs!1811669 () Bool)

(assert (= bs!1811669 (and d!2135954 d!2135542)))

(assert (=> bs!1811669 (= lambda!383252 lambda!383157)))

(declare-fun bs!1811670 () Bool)

(assert (= bs!1811670 (and d!2135954 d!2135708)))

(assert (=> bs!1811670 (= lambda!383252 lambda!383212)))

(declare-fun bs!1811671 () Bool)

(assert (= bs!1811671 (and d!2135954 d!2135952)))

(assert (=> bs!1811671 (= lambda!383252 lambda!383251)))

(declare-fun bs!1811672 () Bool)

(assert (= bs!1811672 (and d!2135954 d!2135940)))

(assert (=> bs!1811672 (= lambda!383252 lambda!383250)))

(declare-fun bs!1811673 () Bool)

(assert (= bs!1811673 (and d!2135954 d!2135604)))

(assert (=> bs!1811673 (= lambda!383252 lambda!383176)))

(declare-fun bs!1811674 () Bool)

(assert (= bs!1811674 (and d!2135954 d!2135778)))

(assert (=> bs!1811674 (= lambda!383252 lambda!383228)))

(declare-fun bs!1811675 () Bool)

(assert (= bs!1811675 (and d!2135954 d!2135474)))

(assert (=> bs!1811675 (= lambda!383252 lambda!383130)))

(declare-fun bs!1811676 () Bool)

(assert (= bs!1811676 (and d!2135954 d!2135648)))

(assert (=> bs!1811676 (= lambda!383252 lambda!383210)))

(declare-fun bs!1811677 () Bool)

(assert (= bs!1811677 (and d!2135954 d!2135838)))

(assert (=> bs!1811677 (= lambda!383252 lambda!383231)))

(declare-fun bs!1811678 () Bool)

(assert (= bs!1811678 (and d!2135954 d!2135538)))

(assert (=> bs!1811678 (= lambda!383252 lambda!383151)))

(declare-fun bs!1811679 () Bool)

(assert (= bs!1811679 (and d!2135954 d!2135710)))

(assert (=> bs!1811679 (= lambda!383252 lambda!383213)))

(declare-fun bs!1811680 () Bool)

(assert (= bs!1811680 (and d!2135954 d!2135852)))

(assert (=> bs!1811680 (= lambda!383252 lambda!383235)))

(declare-fun bs!1811681 () Bool)

(assert (= bs!1811681 (and d!2135954 d!2135874)))

(assert (=> bs!1811681 (= lambda!383252 lambda!383236)))

(declare-fun lt!2447442 () List!66150)

(assert (=> d!2135954 (forall!15809 lt!2447442 lambda!383252)))

(declare-fun e!4102494 () List!66150)

(assert (=> d!2135954 (= lt!2447442 e!4102494)))

(declare-fun c!1263796 () Bool)

(assert (=> d!2135954 (= c!1263796 ((_ is Cons!66027) (Cons!66027 lt!2447263 Nil!66027)))))

(assert (=> d!2135954 (= (unfocusZipperList!2038 (Cons!66027 lt!2447263 Nil!66027)) lt!2447442)))

(declare-fun b!6797518 () Bool)

(assert (=> b!6797518 (= e!4102494 (Cons!66026 (generalisedConcat!2214 (exprs!6501 (h!72475 (Cons!66027 lt!2447263 Nil!66027)))) (unfocusZipperList!2038 (t!379878 (Cons!66027 lt!2447263 Nil!66027)))))))

(declare-fun b!6797519 () Bool)

(assert (=> b!6797519 (= e!4102494 Nil!66026)))

(assert (= (and d!2135954 c!1263796) b!6797518))

(assert (= (and d!2135954 (not c!1263796)) b!6797519))

(declare-fun m!7544338 () Bool)

(assert (=> d!2135954 m!7544338))

(declare-fun m!7544340 () Bool)

(assert (=> b!6797518 m!7544340))

(declare-fun m!7544342 () Bool)

(assert (=> b!6797518 m!7544342))

(assert (=> d!2135460 d!2135954))

(declare-fun d!2135956 () Bool)

(assert (=> d!2135956 (= (nullable!6595 lt!2447264) (nullableFct!2499 lt!2447264))))

(declare-fun bs!1811682 () Bool)

(assert (= bs!1811682 d!2135956))

(declare-fun m!7544344 () Bool)

(assert (=> bs!1811682 m!7544344))

(assert (=> b!6796447 d!2135956))

(declare-fun d!2135958 () Bool)

(declare-fun res!2777938 () Bool)

(declare-fun e!4102495 () Bool)

(assert (=> d!2135958 (=> res!2777938 e!4102495)))

(assert (=> d!2135958 (= res!2777938 ((_ is Nil!66026) (exprs!6501 setElem!46557)))))

(assert (=> d!2135958 (= (forall!15809 (exprs!6501 setElem!46557) lambda!383167) e!4102495)))

(declare-fun b!6797520 () Bool)

(declare-fun e!4102496 () Bool)

(assert (=> b!6797520 (= e!4102495 e!4102496)))

(declare-fun res!2777939 () Bool)

(assert (=> b!6797520 (=> (not res!2777939) (not e!4102496))))

(assert (=> b!6797520 (= res!2777939 (dynLambda!26363 lambda!383167 (h!72474 (exprs!6501 setElem!46557))))))

(declare-fun b!6797521 () Bool)

(assert (=> b!6797521 (= e!4102496 (forall!15809 (t!379877 (exprs!6501 setElem!46557)) lambda!383167))))

(assert (= (and d!2135958 (not res!2777938)) b!6797520))

(assert (= (and b!6797520 res!2777939) b!6797521))

(declare-fun b_lambda!256143 () Bool)

(assert (=> (not b_lambda!256143) (not b!6797520)))

(declare-fun m!7544346 () Bool)

(assert (=> b!6797520 m!7544346))

(declare-fun m!7544348 () Bool)

(assert (=> b!6797521 m!7544348))

(assert (=> d!2135578 d!2135958))

(declare-fun d!2135960 () Bool)

(assert (=> d!2135960 (= (Exists!3685 (ite c!1263496 lambda!383145 lambda!383146)) (choose!50651 (ite c!1263496 lambda!383145 lambda!383146)))))

(declare-fun bs!1811683 () Bool)

(assert (= bs!1811683 d!2135960))

(declare-fun m!7544350 () Bool)

(assert (=> bs!1811683 m!7544350))

(assert (=> bm!617347 d!2135960))

(declare-fun b!6797522 () Bool)

(declare-fun e!4102500 () Bool)

(assert (=> b!6797522 (= e!4102500 (= (head!13644 (_2!36895 (get!22994 lt!2447388))) (c!1263403 r!7292)))))

(declare-fun b!6797523 () Bool)

(declare-fun e!4102501 () Bool)

(assert (=> b!6797523 (= e!4102501 (matchR!8800 (derivativeStep!5281 r!7292 (head!13644 (_2!36895 (get!22994 lt!2447388)))) (tail!12729 (_2!36895 (get!22994 lt!2447388)))))))

(declare-fun b!6797524 () Bool)

(declare-fun e!4102499 () Bool)

(assert (=> b!6797524 (= e!4102499 (not (= (head!13644 (_2!36895 (get!22994 lt!2447388))) (c!1263403 r!7292))))))

(declare-fun b!6797525 () Bool)

(declare-fun res!2777947 () Bool)

(assert (=> b!6797525 (=> (not res!2777947) (not e!4102500))))

(declare-fun call!617509 () Bool)

(assert (=> b!6797525 (= res!2777947 (not call!617509))))

(declare-fun bm!617504 () Bool)

(assert (=> bm!617504 (= call!617509 (isEmpty!38402 (_2!36895 (get!22994 lt!2447388))))))

(declare-fun b!6797526 () Bool)

(declare-fun e!4102503 () Bool)

(assert (=> b!6797526 (= e!4102503 e!4102499)))

(declare-fun res!2777940 () Bool)

(assert (=> b!6797526 (=> res!2777940 e!4102499)))

(assert (=> b!6797526 (= res!2777940 call!617509)))

(declare-fun b!6797527 () Bool)

(declare-fun e!4102502 () Bool)

(declare-fun e!4102497 () Bool)

(assert (=> b!6797527 (= e!4102502 e!4102497)))

(declare-fun c!1263799 () Bool)

(assert (=> b!6797527 (= c!1263799 ((_ is EmptyLang!16617) r!7292))))

(declare-fun b!6797528 () Bool)

(declare-fun lt!2447443 () Bool)

(assert (=> b!6797528 (= e!4102497 (not lt!2447443))))

(declare-fun d!2135962 () Bool)

(assert (=> d!2135962 e!4102502))

(declare-fun c!1263798 () Bool)

(assert (=> d!2135962 (= c!1263798 ((_ is EmptyExpr!16617) r!7292))))

(assert (=> d!2135962 (= lt!2447443 e!4102501)))

(declare-fun c!1263797 () Bool)

(assert (=> d!2135962 (= c!1263797 (isEmpty!38402 (_2!36895 (get!22994 lt!2447388))))))

(assert (=> d!2135962 (validRegex!8353 r!7292)))

(assert (=> d!2135962 (= (matchR!8800 r!7292 (_2!36895 (get!22994 lt!2447388))) lt!2447443)))

(declare-fun b!6797529 () Bool)

(assert (=> b!6797529 (= e!4102502 (= lt!2447443 call!617509))))

(declare-fun b!6797530 () Bool)

(assert (=> b!6797530 (= e!4102501 (nullable!6595 r!7292))))

(declare-fun b!6797531 () Bool)

(declare-fun res!2777943 () Bool)

(assert (=> b!6797531 (=> (not res!2777943) (not e!4102500))))

(assert (=> b!6797531 (= res!2777943 (isEmpty!38402 (tail!12729 (_2!36895 (get!22994 lt!2447388)))))))

(declare-fun b!6797532 () Bool)

(declare-fun res!2777944 () Bool)

(declare-fun e!4102498 () Bool)

(assert (=> b!6797532 (=> res!2777944 e!4102498)))

(assert (=> b!6797532 (= res!2777944 e!4102500)))

(declare-fun res!2777942 () Bool)

(assert (=> b!6797532 (=> (not res!2777942) (not e!4102500))))

(assert (=> b!6797532 (= res!2777942 lt!2447443)))

(declare-fun b!6797533 () Bool)

(declare-fun res!2777946 () Bool)

(assert (=> b!6797533 (=> res!2777946 e!4102498)))

(assert (=> b!6797533 (= res!2777946 (not ((_ is ElementMatch!16617) r!7292)))))

(assert (=> b!6797533 (= e!4102497 e!4102498)))

(declare-fun b!6797534 () Bool)

(declare-fun res!2777941 () Bool)

(assert (=> b!6797534 (=> res!2777941 e!4102499)))

(assert (=> b!6797534 (= res!2777941 (not (isEmpty!38402 (tail!12729 (_2!36895 (get!22994 lt!2447388))))))))

(declare-fun b!6797535 () Bool)

(assert (=> b!6797535 (= e!4102498 e!4102503)))

(declare-fun res!2777945 () Bool)

(assert (=> b!6797535 (=> (not res!2777945) (not e!4102503))))

(assert (=> b!6797535 (= res!2777945 (not lt!2447443))))

(assert (= (and d!2135962 c!1263797) b!6797530))

(assert (= (and d!2135962 (not c!1263797)) b!6797523))

(assert (= (and d!2135962 c!1263798) b!6797529))

(assert (= (and d!2135962 (not c!1263798)) b!6797527))

(assert (= (and b!6797527 c!1263799) b!6797528))

(assert (= (and b!6797527 (not c!1263799)) b!6797533))

(assert (= (and b!6797533 (not res!2777946)) b!6797532))

(assert (= (and b!6797532 res!2777942) b!6797525))

(assert (= (and b!6797525 res!2777947) b!6797531))

(assert (= (and b!6797531 res!2777943) b!6797522))

(assert (= (and b!6797532 (not res!2777944)) b!6797535))

(assert (= (and b!6797535 res!2777945) b!6797526))

(assert (= (and b!6797526 (not res!2777940)) b!6797534))

(assert (= (and b!6797534 (not res!2777941)) b!6797524))

(assert (= (or b!6797529 b!6797525 b!6797526) bm!617504))

(declare-fun m!7544352 () Bool)

(assert (=> b!6797522 m!7544352))

(assert (=> b!6797524 m!7544352))

(declare-fun m!7544354 () Bool)

(assert (=> b!6797531 m!7544354))

(assert (=> b!6797531 m!7544354))

(declare-fun m!7544356 () Bool)

(assert (=> b!6797531 m!7544356))

(declare-fun m!7544358 () Bool)

(assert (=> bm!617504 m!7544358))

(assert (=> d!2135962 m!7544358))

(assert (=> d!2135962 m!7543008))

(assert (=> b!6797530 m!7543290))

(assert (=> b!6797534 m!7544354))

(assert (=> b!6797534 m!7544354))

(assert (=> b!6797534 m!7544356))

(assert (=> b!6797523 m!7544352))

(assert (=> b!6797523 m!7544352))

(declare-fun m!7544360 () Bool)

(assert (=> b!6797523 m!7544360))

(assert (=> b!6797523 m!7544354))

(assert (=> b!6797523 m!7544360))

(assert (=> b!6797523 m!7544354))

(declare-fun m!7544362 () Bool)

(assert (=> b!6797523 m!7544362))

(assert (=> b!6796788 d!2135962))

(assert (=> b!6796788 d!2135794))

(assert (=> d!2135588 d!2135586))

(declare-fun d!2135964 () Bool)

(assert (=> d!2135964 (= (map!15086 lt!2447259 lambda!383116) (store ((as const (Array Context!12002 Bool)) false) (dynLambda!26361 lambda!383116 lt!2447273) true))))

(assert (=> d!2135964 true))

(declare-fun _$12!1720 () Unit!159925)

(assert (=> d!2135964 (= (choose!50644 lt!2447259 lt!2447273 lambda!383116) _$12!1720)))

(declare-fun b_lambda!256145 () Bool)

(assert (=> (not b_lambda!256145) (not d!2135964)))

(declare-fun bs!1811684 () Bool)

(assert (= bs!1811684 d!2135964))

(assert (=> bs!1811684 m!7543036))

(assert (=> bs!1811684 m!7543472))

(assert (=> bs!1811684 m!7543472))

(assert (=> bs!1811684 m!7543474))

(assert (=> d!2135588 d!2135964))

(declare-fun d!2135966 () Bool)

(assert (=> d!2135966 (= (nullable!6595 (h!72474 (exprs!6501 lt!2447273))) (nullableFct!2499 (h!72474 (exprs!6501 lt!2447273))))))

(declare-fun bs!1811685 () Bool)

(assert (= bs!1811685 d!2135966))

(declare-fun m!7544364 () Bool)

(assert (=> bs!1811685 m!7544364))

(assert (=> b!6796633 d!2135966))

(declare-fun b!6797536 () Bool)

(declare-fun c!1263801 () Bool)

(assert (=> b!6797536 (= c!1263801 ((_ is Star!16617) (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))))))

(declare-fun e!4102509 () (InoxSet Context!12002))

(declare-fun e!4102508 () (InoxSet Context!12002))

(assert (=> b!6797536 (= e!4102509 e!4102508)))

(declare-fun b!6797537 () Bool)

(declare-fun e!4102507 () (InoxSet Context!12002))

(declare-fun call!617512 () (InoxSet Context!12002))

(declare-fun call!617510 () (InoxSet Context!12002))

(assert (=> b!6797537 (= e!4102507 ((_ map or) call!617512 call!617510))))

(declare-fun b!6797538 () Bool)

(declare-fun c!1263802 () Bool)

(declare-fun e!4102504 () Bool)

(assert (=> b!6797538 (= c!1263802 e!4102504)))

(declare-fun res!2777948 () Bool)

(assert (=> b!6797538 (=> (not res!2777948) (not e!4102504))))

(assert (=> b!6797538 (= res!2777948 ((_ is Concat!25462) (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))))))

(declare-fun e!4102506 () (InoxSet Context!12002))

(assert (=> b!6797538 (= e!4102506 e!4102507)))

(declare-fun b!6797539 () Bool)

(assert (=> b!6797539 (= e!4102504 (nullable!6595 (regOne!33746 (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026)))))))))

(declare-fun b!6797540 () Bool)

(declare-fun e!4102505 () (InoxSet Context!12002))

(assert (=> b!6797540 (= e!4102505 (store ((as const (Array Context!12002 Bool)) false) (Context!12003 (t!379877 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) true))))

(declare-fun b!6797541 () Bool)

(assert (=> b!6797541 (= e!4102507 e!4102509)))

(declare-fun c!1263804 () Bool)

(assert (=> b!6797541 (= c!1263804 ((_ is Concat!25462) (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))))))

(declare-fun bm!617505 () Bool)

(declare-fun call!617515 () List!66150)

(assert (=> bm!617505 (= call!617515 ($colon$colon!2425 (exprs!6501 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026)))))) (ite (or c!1263802 c!1263804) (regTwo!33746 (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026)))))))))

(declare-fun d!2135968 () Bool)

(declare-fun c!1263800 () Bool)

(assert (=> d!2135968 (= c!1263800 (and ((_ is ElementMatch!16617) (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) (= (c!1263403 (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) (h!72476 s!2326))))))

(assert (=> d!2135968 (= (derivationStepZipperDown!1845 (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026)))) (Context!12003 (t!379877 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) (h!72476 s!2326)) e!4102505)))

(declare-fun bm!617506 () Bool)

(declare-fun call!617513 () (InoxSet Context!12002))

(assert (=> bm!617506 (= call!617510 call!617513)))

(declare-fun b!6797542 () Bool)

(assert (=> b!6797542 (= e!4102508 ((as const (Array Context!12002 Bool)) false))))

(declare-fun b!6797543 () Bool)

(assert (=> b!6797543 (= e!4102505 e!4102506)))

(declare-fun c!1263803 () Bool)

(assert (=> b!6797543 (= c!1263803 ((_ is Union!16617) (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))))))

(declare-fun bm!617507 () Bool)

(declare-fun call!617511 () List!66150)

(assert (=> bm!617507 (= call!617513 (derivationStepZipperDown!1845 (ite c!1263803 (regTwo!33747 (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) (ite c!1263802 (regTwo!33746 (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) (ite c!1263804 (regOne!33746 (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) (reg!16946 (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026)))))))) (ite (or c!1263803 c!1263802) (Context!12003 (t!379877 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) (Context!12003 call!617511)) (h!72476 s!2326)))))

(declare-fun b!6797544 () Bool)

(assert (=> b!6797544 (= e!4102506 ((_ map or) call!617512 call!617513))))

(declare-fun b!6797545 () Bool)

(declare-fun call!617514 () (InoxSet Context!12002))

(assert (=> b!6797545 (= e!4102509 call!617514)))

(declare-fun bm!617508 () Bool)

(assert (=> bm!617508 (= call!617514 call!617510)))

(declare-fun bm!617509 () Bool)

(assert (=> bm!617509 (= call!617512 (derivationStepZipperDown!1845 (ite c!1263803 (regOne!33747 (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) (regOne!33746 (h!72474 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026)))))) (ite c!1263803 (Context!12003 (t!379877 (exprs!6501 (Context!12003 (Cons!66026 r!7292 Nil!66026))))) (Context!12003 call!617515)) (h!72476 s!2326)))))

(declare-fun b!6797546 () Bool)

(assert (=> b!6797546 (= e!4102508 call!617514)))

(declare-fun bm!617510 () Bool)

(assert (=> bm!617510 (= call!617511 call!617515)))

(assert (= (and d!2135968 c!1263800) b!6797540))

(assert (= (and d!2135968 (not c!1263800)) b!6797543))

(assert (= (and b!6797543 c!1263803) b!6797544))

(assert (= (and b!6797543 (not c!1263803)) b!6797538))

(assert (= (and b!6797538 res!2777948) b!6797539))

(assert (= (and b!6797538 c!1263802) b!6797537))

(assert (= (and b!6797538 (not c!1263802)) b!6797541))

(assert (= (and b!6797541 c!1263804) b!6797545))

(assert (= (and b!6797541 (not c!1263804)) b!6797536))

(assert (= (and b!6797536 c!1263801) b!6797546))

(assert (= (and b!6797536 (not c!1263801)) b!6797542))

(assert (= (or b!6797545 b!6797546) bm!617510))

(assert (= (or b!6797545 b!6797546) bm!617508))

(assert (= (or b!6797537 bm!617510) bm!617505))

(assert (= (or b!6797537 bm!617508) bm!617506))

(assert (= (or b!6797544 bm!617506) bm!617507))

(assert (= (or b!6797544 b!6797537) bm!617509))

(declare-fun m!7544366 () Bool)

(assert (=> b!6797539 m!7544366))

(declare-fun m!7544368 () Bool)

(assert (=> bm!617507 m!7544368))

(declare-fun m!7544370 () Bool)

(assert (=> bm!617509 m!7544370))

(declare-fun m!7544372 () Bool)

(assert (=> b!6797540 m!7544372))

(declare-fun m!7544374 () Bool)

(assert (=> bm!617505 m!7544374))

(assert (=> bm!617310 d!2135968))

(assert (=> b!6796451 d!2135724))

(assert (=> b!6796451 d!2135700))

(declare-fun d!2135970 () Bool)

(assert (=> d!2135970 true))

(declare-fun setRes!46572 () Bool)

(assert (=> d!2135970 setRes!46572))

(declare-fun condSetEmpty!46572 () Bool)

(declare-fun res!2777949 () (InoxSet Context!12002))

(assert (=> d!2135970 (= condSetEmpty!46572 (= res!2777949 ((as const (Array Context!12002 Bool)) false)))))

(assert (=> d!2135970 (= (choose!50636 lt!2447274 lambda!383115) res!2777949)))

(declare-fun setIsEmpty!46572 () Bool)

(assert (=> setIsEmpty!46572 setRes!46572))

(declare-fun e!4102510 () Bool)

(declare-fun setNonEmpty!46572 () Bool)

(declare-fun tp!1861209 () Bool)

(declare-fun setElem!46572 () Context!12002)

(assert (=> setNonEmpty!46572 (= setRes!46572 (and tp!1861209 (inv!84789 setElem!46572) e!4102510))))

(declare-fun setRest!46572 () (InoxSet Context!12002))

(assert (=> setNonEmpty!46572 (= res!2777949 ((_ map or) (store ((as const (Array Context!12002 Bool)) false) setElem!46572 true) setRest!46572))))

(declare-fun b!6797547 () Bool)

(declare-fun tp!1861208 () Bool)

(assert (=> b!6797547 (= e!4102510 tp!1861208)))

(assert (= (and d!2135970 condSetEmpty!46572) setIsEmpty!46572))

(assert (= (and d!2135970 (not condSetEmpty!46572)) setNonEmpty!46572))

(assert (= setNonEmpty!46572 b!6797547))

(declare-fun m!7544376 () Bool)

(assert (=> setNonEmpty!46572 m!7544376))

(assert (=> d!2135530 d!2135970))

(assert (=> d!2135568 d!2135574))

(declare-fun d!2135972 () Bool)

(assert (=> d!2135972 (= (flatMap!2098 lt!2447279 lambda!383115) (dynLambda!26359 lambda!383115 lt!2447275))))

(assert (=> d!2135972 true))

(declare-fun _$13!4259 () Unit!159925)

(assert (=> d!2135972 (= (choose!50637 lt!2447279 lt!2447275 lambda!383115) _$13!4259)))

(declare-fun b_lambda!256147 () Bool)

(assert (=> (not b_lambda!256147) (not d!2135972)))

(declare-fun bs!1811686 () Bool)

(assert (= bs!1811686 d!2135972))

(assert (=> bs!1811686 m!7543060))

(assert (=> bs!1811686 m!7543424))

(assert (=> d!2135568 d!2135972))

(declare-fun d!2135974 () Bool)

(declare-fun res!2777954 () Bool)

(declare-fun e!4102515 () Bool)

(assert (=> d!2135974 (=> res!2777954 e!4102515)))

(assert (=> d!2135974 (= res!2777954 ((_ is Nil!66027) lt!2447362))))

(assert (=> d!2135974 (= (noDuplicate!2402 lt!2447362) e!4102515)))

(declare-fun b!6797552 () Bool)

(declare-fun e!4102516 () Bool)

(assert (=> b!6797552 (= e!4102515 e!4102516)))

(declare-fun res!2777955 () Bool)

(assert (=> b!6797552 (=> (not res!2777955) (not e!4102516))))

(declare-fun contains!20295 (List!66151 Context!12002) Bool)

(assert (=> b!6797552 (= res!2777955 (not (contains!20295 (t!379878 lt!2447362) (h!72475 lt!2447362))))))

(declare-fun b!6797553 () Bool)

(assert (=> b!6797553 (= e!4102516 (noDuplicate!2402 (t!379878 lt!2447362)))))

(assert (= (and d!2135974 (not res!2777954)) b!6797552))

(assert (= (and b!6797552 res!2777955) b!6797553))

(declare-fun m!7544378 () Bool)

(assert (=> b!6797552 m!7544378))

(declare-fun m!7544380 () Bool)

(assert (=> b!6797553 m!7544380))

(assert (=> d!2135598 d!2135974))

(declare-fun d!2135976 () Bool)

(declare-fun e!4102524 () Bool)

(assert (=> d!2135976 e!4102524))

(declare-fun res!2777961 () Bool)

(assert (=> d!2135976 (=> (not res!2777961) (not e!4102524))))

(declare-fun res!2777960 () List!66151)

(assert (=> d!2135976 (= res!2777961 (noDuplicate!2402 res!2777960))))

(declare-fun e!4102523 () Bool)

(assert (=> d!2135976 e!4102523))

(assert (=> d!2135976 (= (choose!50648 z!1189) res!2777960)))

(declare-fun b!6797561 () Bool)

(declare-fun e!4102525 () Bool)

(declare-fun tp!1861214 () Bool)

(assert (=> b!6797561 (= e!4102525 tp!1861214)))

(declare-fun b!6797560 () Bool)

(declare-fun tp!1861215 () Bool)

(assert (=> b!6797560 (= e!4102523 (and (inv!84789 (h!72475 res!2777960)) e!4102525 tp!1861215))))

(declare-fun b!6797562 () Bool)

(assert (=> b!6797562 (= e!4102524 (= (content!12886 res!2777960) z!1189))))

(assert (= b!6797560 b!6797561))

(assert (= (and d!2135976 ((_ is Cons!66027) res!2777960)) b!6797560))

(assert (= (and d!2135976 res!2777961) b!6797562))

(declare-fun m!7544382 () Bool)

(assert (=> d!2135976 m!7544382))

(declare-fun m!7544384 () Bool)

(assert (=> b!6797560 m!7544384))

(declare-fun m!7544386 () Bool)

(assert (=> b!6797562 m!7544386))

(assert (=> d!2135598 d!2135976))

(declare-fun bs!1811687 () Bool)

(declare-fun d!2135978 () Bool)

(assert (= bs!1811687 (and d!2135978 d!2135730)))

(declare-fun lambda!383253 () Int)

(assert (=> bs!1811687 (= lambda!383253 lambda!383218)))

(declare-fun bs!1811688 () Bool)

(assert (= bs!1811688 (and d!2135978 d!2135880)))

(assert (=> bs!1811688 (= lambda!383253 lambda!383237)))

(assert (=> d!2135978 (= (nullableZipper!2323 lt!2447274) (exists!2736 lt!2447274 lambda!383253))))

(declare-fun bs!1811689 () Bool)

(assert (= bs!1811689 d!2135978))

(declare-fun m!7544388 () Bool)

(assert (=> bs!1811689 m!7544388))

(assert (=> b!6796625 d!2135978))

(declare-fun b!6797563 () Bool)

(declare-fun e!4102526 () Bool)

(assert (=> b!6797563 (= e!4102526 tp_is_empty!42487)))

(declare-fun b!6797565 () Bool)

(declare-fun tp!1861219 () Bool)

(assert (=> b!6797565 (= e!4102526 tp!1861219)))

(declare-fun b!6797564 () Bool)

(declare-fun tp!1861218 () Bool)

(declare-fun tp!1861217 () Bool)

(assert (=> b!6797564 (= e!4102526 (and tp!1861218 tp!1861217))))

(assert (=> b!6796929 (= tp!1861129 e!4102526)))

(declare-fun b!6797566 () Bool)

(declare-fun tp!1861216 () Bool)

(declare-fun tp!1861220 () Bool)

(assert (=> b!6797566 (= e!4102526 (and tp!1861216 tp!1861220))))

(assert (= (and b!6796929 ((_ is ElementMatch!16617) (regOne!33747 (regTwo!33746 r!7292)))) b!6797563))

(assert (= (and b!6796929 ((_ is Concat!25462) (regOne!33747 (regTwo!33746 r!7292)))) b!6797564))

(assert (= (and b!6796929 ((_ is Star!16617) (regOne!33747 (regTwo!33746 r!7292)))) b!6797565))

(assert (= (and b!6796929 ((_ is Union!16617) (regOne!33747 (regTwo!33746 r!7292)))) b!6797566))

(declare-fun b!6797567 () Bool)

(declare-fun e!4102527 () Bool)

(assert (=> b!6797567 (= e!4102527 tp_is_empty!42487)))

(declare-fun b!6797569 () Bool)

(declare-fun tp!1861224 () Bool)

(assert (=> b!6797569 (= e!4102527 tp!1861224)))

(declare-fun b!6797568 () Bool)

(declare-fun tp!1861223 () Bool)

(declare-fun tp!1861222 () Bool)

(assert (=> b!6797568 (= e!4102527 (and tp!1861223 tp!1861222))))

(assert (=> b!6796929 (= tp!1861133 e!4102527)))

(declare-fun b!6797570 () Bool)

(declare-fun tp!1861221 () Bool)

(declare-fun tp!1861225 () Bool)

(assert (=> b!6797570 (= e!4102527 (and tp!1861221 tp!1861225))))

(assert (= (and b!6796929 ((_ is ElementMatch!16617) (regTwo!33747 (regTwo!33746 r!7292)))) b!6797567))

(assert (= (and b!6796929 ((_ is Concat!25462) (regTwo!33747 (regTwo!33746 r!7292)))) b!6797568))

(assert (= (and b!6796929 ((_ is Star!16617) (regTwo!33747 (regTwo!33746 r!7292)))) b!6797569))

(assert (= (and b!6796929 ((_ is Union!16617) (regTwo!33747 (regTwo!33746 r!7292)))) b!6797570))

(declare-fun b!6797571 () Bool)

(declare-fun e!4102528 () Bool)

(assert (=> b!6797571 (= e!4102528 tp_is_empty!42487)))

(declare-fun b!6797573 () Bool)

(declare-fun tp!1861229 () Bool)

(assert (=> b!6797573 (= e!4102528 tp!1861229)))

(declare-fun b!6797572 () Bool)

(declare-fun tp!1861228 () Bool)

(declare-fun tp!1861227 () Bool)

(assert (=> b!6797572 (= e!4102528 (and tp!1861228 tp!1861227))))

(assert (=> b!6796915 (= tp!1861122 e!4102528)))

(declare-fun b!6797574 () Bool)

(declare-fun tp!1861226 () Bool)

(declare-fun tp!1861230 () Bool)

(assert (=> b!6797574 (= e!4102528 (and tp!1861226 tp!1861230))))

(assert (= (and b!6796915 ((_ is ElementMatch!16617) (reg!16946 (reg!16946 r!7292)))) b!6797571))

(assert (= (and b!6796915 ((_ is Concat!25462) (reg!16946 (reg!16946 r!7292)))) b!6797572))

(assert (= (and b!6796915 ((_ is Star!16617) (reg!16946 (reg!16946 r!7292)))) b!6797573))

(assert (= (and b!6796915 ((_ is Union!16617) (reg!16946 (reg!16946 r!7292)))) b!6797574))

(declare-fun b!6797575 () Bool)

(declare-fun e!4102529 () Bool)

(assert (=> b!6797575 (= e!4102529 tp_is_empty!42487)))

(declare-fun b!6797577 () Bool)

(declare-fun tp!1861234 () Bool)

(assert (=> b!6797577 (= e!4102529 tp!1861234)))

(declare-fun b!6797576 () Bool)

(declare-fun tp!1861233 () Bool)

(declare-fun tp!1861232 () Bool)

(assert (=> b!6797576 (= e!4102529 (and tp!1861233 tp!1861232))))

(assert (=> b!6796914 (= tp!1861121 e!4102529)))

(declare-fun b!6797578 () Bool)

(declare-fun tp!1861231 () Bool)

(declare-fun tp!1861235 () Bool)

(assert (=> b!6797578 (= e!4102529 (and tp!1861231 tp!1861235))))

(assert (= (and b!6796914 ((_ is ElementMatch!16617) (regOne!33746 (reg!16946 r!7292)))) b!6797575))

(assert (= (and b!6796914 ((_ is Concat!25462) (regOne!33746 (reg!16946 r!7292)))) b!6797576))

(assert (= (and b!6796914 ((_ is Star!16617) (regOne!33746 (reg!16946 r!7292)))) b!6797577))

(assert (= (and b!6796914 ((_ is Union!16617) (regOne!33746 (reg!16946 r!7292)))) b!6797578))

(declare-fun b!6797579 () Bool)

(declare-fun e!4102530 () Bool)

(assert (=> b!6797579 (= e!4102530 tp_is_empty!42487)))

(declare-fun b!6797581 () Bool)

(declare-fun tp!1861239 () Bool)

(assert (=> b!6797581 (= e!4102530 tp!1861239)))

(declare-fun b!6797580 () Bool)

(declare-fun tp!1861238 () Bool)

(declare-fun tp!1861237 () Bool)

(assert (=> b!6797580 (= e!4102530 (and tp!1861238 tp!1861237))))

(assert (=> b!6796914 (= tp!1861120 e!4102530)))

(declare-fun b!6797582 () Bool)

(declare-fun tp!1861236 () Bool)

(declare-fun tp!1861240 () Bool)

(assert (=> b!6797582 (= e!4102530 (and tp!1861236 tp!1861240))))

(assert (= (and b!6796914 ((_ is ElementMatch!16617) (regTwo!33746 (reg!16946 r!7292)))) b!6797579))

(assert (= (and b!6796914 ((_ is Concat!25462) (regTwo!33746 (reg!16946 r!7292)))) b!6797580))

(assert (= (and b!6796914 ((_ is Star!16617) (regTwo!33746 (reg!16946 r!7292)))) b!6797581))

(assert (= (and b!6796914 ((_ is Union!16617) (regTwo!33746 (reg!16946 r!7292)))) b!6797582))

(declare-fun b!6797583 () Bool)

(declare-fun e!4102531 () Bool)

(assert (=> b!6797583 (= e!4102531 tp_is_empty!42487)))

(declare-fun b!6797585 () Bool)

(declare-fun tp!1861244 () Bool)

(assert (=> b!6797585 (= e!4102531 tp!1861244)))

(declare-fun b!6797584 () Bool)

(declare-fun tp!1861243 () Bool)

(declare-fun tp!1861242 () Bool)

(assert (=> b!6797584 (= e!4102531 (and tp!1861243 tp!1861242))))

(assert (=> b!6796928 (= tp!1861132 e!4102531)))

(declare-fun b!6797586 () Bool)

(declare-fun tp!1861241 () Bool)

(declare-fun tp!1861245 () Bool)

(assert (=> b!6797586 (= e!4102531 (and tp!1861241 tp!1861245))))

(assert (= (and b!6796928 ((_ is ElementMatch!16617) (reg!16946 (regTwo!33746 r!7292)))) b!6797583))

(assert (= (and b!6796928 ((_ is Concat!25462) (reg!16946 (regTwo!33746 r!7292)))) b!6797584))

(assert (= (and b!6796928 ((_ is Star!16617) (reg!16946 (regTwo!33746 r!7292)))) b!6797585))

(assert (= (and b!6796928 ((_ is Union!16617) (reg!16946 (regTwo!33746 r!7292)))) b!6797586))

(declare-fun b!6797587 () Bool)

(declare-fun e!4102532 () Bool)

(assert (=> b!6797587 (= e!4102532 tp_is_empty!42487)))

(declare-fun b!6797589 () Bool)

(declare-fun tp!1861249 () Bool)

(assert (=> b!6797589 (= e!4102532 tp!1861249)))

(declare-fun b!6797588 () Bool)

(declare-fun tp!1861248 () Bool)

(declare-fun tp!1861247 () Bool)

(assert (=> b!6797588 (= e!4102532 (and tp!1861248 tp!1861247))))

(assert (=> b!6796927 (= tp!1861131 e!4102532)))

(declare-fun b!6797590 () Bool)

(declare-fun tp!1861246 () Bool)

(declare-fun tp!1861250 () Bool)

(assert (=> b!6797590 (= e!4102532 (and tp!1861246 tp!1861250))))

(assert (= (and b!6796927 ((_ is ElementMatch!16617) (regOne!33746 (regTwo!33746 r!7292)))) b!6797587))

(assert (= (and b!6796927 ((_ is Concat!25462) (regOne!33746 (regTwo!33746 r!7292)))) b!6797588))

(assert (= (and b!6796927 ((_ is Star!16617) (regOne!33746 (regTwo!33746 r!7292)))) b!6797589))

(assert (= (and b!6796927 ((_ is Union!16617) (regOne!33746 (regTwo!33746 r!7292)))) b!6797590))

(declare-fun b!6797591 () Bool)

(declare-fun e!4102533 () Bool)

(assert (=> b!6797591 (= e!4102533 tp_is_empty!42487)))

(declare-fun b!6797593 () Bool)

(declare-fun tp!1861254 () Bool)

(assert (=> b!6797593 (= e!4102533 tp!1861254)))

(declare-fun b!6797592 () Bool)

(declare-fun tp!1861253 () Bool)

(declare-fun tp!1861252 () Bool)

(assert (=> b!6797592 (= e!4102533 (and tp!1861253 tp!1861252))))

(assert (=> b!6796927 (= tp!1861130 e!4102533)))

(declare-fun b!6797594 () Bool)

(declare-fun tp!1861251 () Bool)

(declare-fun tp!1861255 () Bool)

(assert (=> b!6797594 (= e!4102533 (and tp!1861251 tp!1861255))))

(assert (= (and b!6796927 ((_ is ElementMatch!16617) (regTwo!33746 (regTwo!33746 r!7292)))) b!6797591))

(assert (= (and b!6796927 ((_ is Concat!25462) (regTwo!33746 (regTwo!33746 r!7292)))) b!6797592))

(assert (= (and b!6796927 ((_ is Star!16617) (regTwo!33746 (regTwo!33746 r!7292)))) b!6797593))

(assert (= (and b!6796927 ((_ is Union!16617) (regTwo!33746 (regTwo!33746 r!7292)))) b!6797594))

(declare-fun b!6797595 () Bool)

(declare-fun e!4102534 () Bool)

(declare-fun tp!1861256 () Bool)

(declare-fun tp!1861257 () Bool)

(assert (=> b!6797595 (= e!4102534 (and tp!1861256 tp!1861257))))

(assert (=> b!6796893 (= tp!1861112 e!4102534)))

(assert (= (and b!6796893 ((_ is Cons!66026) (exprs!6501 setElem!46560))) b!6797595))

(declare-fun b!6797596 () Bool)

(declare-fun e!4102535 () Bool)

(declare-fun tp!1861258 () Bool)

(declare-fun tp!1861259 () Bool)

(assert (=> b!6797596 (= e!4102535 (and tp!1861258 tp!1861259))))

(assert (=> b!6796912 (= tp!1861117 e!4102535)))

(assert (= (and b!6796912 ((_ is Cons!66026) (exprs!6501 (h!72475 (t!379878 zl!343))))) b!6797596))

(declare-fun condSetEmpty!46573 () Bool)

(assert (=> setNonEmpty!46560 (= condSetEmpty!46573 (= setRest!46560 ((as const (Array Context!12002 Bool)) false)))))

(declare-fun setRes!46573 () Bool)

(assert (=> setNonEmpty!46560 (= tp!1861111 setRes!46573)))

(declare-fun setIsEmpty!46573 () Bool)

(assert (=> setIsEmpty!46573 setRes!46573))

(declare-fun e!4102536 () Bool)

(declare-fun setElem!46573 () Context!12002)

(declare-fun setNonEmpty!46573 () Bool)

(declare-fun tp!1861260 () Bool)

(assert (=> setNonEmpty!46573 (= setRes!46573 (and tp!1861260 (inv!84789 setElem!46573) e!4102536))))

(declare-fun setRest!46573 () (InoxSet Context!12002))

(assert (=> setNonEmpty!46573 (= setRest!46560 ((_ map or) (store ((as const (Array Context!12002 Bool)) false) setElem!46573 true) setRest!46573))))

(declare-fun b!6797597 () Bool)

(declare-fun tp!1861261 () Bool)

(assert (=> b!6797597 (= e!4102536 tp!1861261)))

(assert (= (and setNonEmpty!46560 condSetEmpty!46573) setIsEmpty!46573))

(assert (= (and setNonEmpty!46560 (not condSetEmpty!46573)) setNonEmpty!46573))

(assert (= setNonEmpty!46573 b!6797597))

(declare-fun m!7544390 () Bool)

(assert (=> setNonEmpty!46573 m!7544390))

(declare-fun b!6797598 () Bool)

(declare-fun e!4102537 () Bool)

(assert (=> b!6797598 (= e!4102537 tp_is_empty!42487)))

(declare-fun b!6797600 () Bool)

(declare-fun tp!1861265 () Bool)

(assert (=> b!6797600 (= e!4102537 tp!1861265)))

(declare-fun b!6797599 () Bool)

(declare-fun tp!1861264 () Bool)

(declare-fun tp!1861263 () Bool)

(assert (=> b!6797599 (= e!4102537 (and tp!1861264 tp!1861263))))

(assert (=> b!6796916 (= tp!1861119 e!4102537)))

(declare-fun b!6797601 () Bool)

(declare-fun tp!1861262 () Bool)

(declare-fun tp!1861266 () Bool)

(assert (=> b!6797601 (= e!4102537 (and tp!1861262 tp!1861266))))

(assert (= (and b!6796916 ((_ is ElementMatch!16617) (regOne!33747 (reg!16946 r!7292)))) b!6797598))

(assert (= (and b!6796916 ((_ is Concat!25462) (regOne!33747 (reg!16946 r!7292)))) b!6797599))

(assert (= (and b!6796916 ((_ is Star!16617) (regOne!33747 (reg!16946 r!7292)))) b!6797600))

(assert (= (and b!6796916 ((_ is Union!16617) (regOne!33747 (reg!16946 r!7292)))) b!6797601))

(declare-fun b!6797602 () Bool)

(declare-fun e!4102538 () Bool)

(assert (=> b!6797602 (= e!4102538 tp_is_empty!42487)))

(declare-fun b!6797604 () Bool)

(declare-fun tp!1861270 () Bool)

(assert (=> b!6797604 (= e!4102538 tp!1861270)))

(declare-fun b!6797603 () Bool)

(declare-fun tp!1861269 () Bool)

(declare-fun tp!1861268 () Bool)

(assert (=> b!6797603 (= e!4102538 (and tp!1861269 tp!1861268))))

(assert (=> b!6796916 (= tp!1861123 e!4102538)))

(declare-fun b!6797605 () Bool)

(declare-fun tp!1861267 () Bool)

(declare-fun tp!1861271 () Bool)

(assert (=> b!6797605 (= e!4102538 (and tp!1861267 tp!1861271))))

(assert (= (and b!6796916 ((_ is ElementMatch!16617) (regTwo!33747 (reg!16946 r!7292)))) b!6797602))

(assert (= (and b!6796916 ((_ is Concat!25462) (regTwo!33747 (reg!16946 r!7292)))) b!6797603))

(assert (= (and b!6796916 ((_ is Star!16617) (regTwo!33747 (reg!16946 r!7292)))) b!6797604))

(assert (= (and b!6796916 ((_ is Union!16617) (regTwo!33747 (reg!16946 r!7292)))) b!6797605))

(declare-fun b!6797606 () Bool)

(declare-fun e!4102539 () Bool)

(assert (=> b!6797606 (= e!4102539 tp_is_empty!42487)))

(declare-fun b!6797608 () Bool)

(declare-fun tp!1861275 () Bool)

(assert (=> b!6797608 (= e!4102539 tp!1861275)))

(declare-fun b!6797607 () Bool)

(declare-fun tp!1861274 () Bool)

(declare-fun tp!1861273 () Bool)

(assert (=> b!6797607 (= e!4102539 (and tp!1861274 tp!1861273))))

(assert (=> b!6796878 (= tp!1861089 e!4102539)))

(declare-fun b!6797609 () Bool)

(declare-fun tp!1861272 () Bool)

(declare-fun tp!1861276 () Bool)

(assert (=> b!6797609 (= e!4102539 (and tp!1861272 tp!1861276))))

(assert (= (and b!6796878 ((_ is ElementMatch!16617) (regOne!33747 (regOne!33747 r!7292)))) b!6797606))

(assert (= (and b!6796878 ((_ is Concat!25462) (regOne!33747 (regOne!33747 r!7292)))) b!6797607))

(assert (= (and b!6796878 ((_ is Star!16617) (regOne!33747 (regOne!33747 r!7292)))) b!6797608))

(assert (= (and b!6796878 ((_ is Union!16617) (regOne!33747 (regOne!33747 r!7292)))) b!6797609))

(declare-fun b!6797610 () Bool)

(declare-fun e!4102540 () Bool)

(assert (=> b!6797610 (= e!4102540 tp_is_empty!42487)))

(declare-fun b!6797612 () Bool)

(declare-fun tp!1861280 () Bool)

(assert (=> b!6797612 (= e!4102540 tp!1861280)))

(declare-fun b!6797611 () Bool)

(declare-fun tp!1861279 () Bool)

(declare-fun tp!1861278 () Bool)

(assert (=> b!6797611 (= e!4102540 (and tp!1861279 tp!1861278))))

(assert (=> b!6796878 (= tp!1861093 e!4102540)))

(declare-fun b!6797613 () Bool)

(declare-fun tp!1861277 () Bool)

(declare-fun tp!1861281 () Bool)

(assert (=> b!6797613 (= e!4102540 (and tp!1861277 tp!1861281))))

(assert (= (and b!6796878 ((_ is ElementMatch!16617) (regTwo!33747 (regOne!33747 r!7292)))) b!6797610))

(assert (= (and b!6796878 ((_ is Concat!25462) (regTwo!33747 (regOne!33747 r!7292)))) b!6797611))

(assert (= (and b!6796878 ((_ is Star!16617) (regTwo!33747 (regOne!33747 r!7292)))) b!6797612))

(assert (= (and b!6796878 ((_ is Union!16617) (regTwo!33747 (regOne!33747 r!7292)))) b!6797613))

(declare-fun b!6797615 () Bool)

(declare-fun e!4102542 () Bool)

(declare-fun tp!1861282 () Bool)

(assert (=> b!6797615 (= e!4102542 tp!1861282)))

(declare-fun e!4102541 () Bool)

(declare-fun b!6797614 () Bool)

(declare-fun tp!1861283 () Bool)

(assert (=> b!6797614 (= e!4102541 (and (inv!84789 (h!72475 (t!379878 (t!379878 zl!343)))) e!4102542 tp!1861283))))

(assert (=> b!6796911 (= tp!1861118 e!4102541)))

(assert (= b!6797614 b!6797615))

(assert (= (and b!6796911 ((_ is Cons!66027) (t!379878 (t!379878 zl!343)))) b!6797614))

(declare-fun m!7544392 () Bool)

(assert (=> b!6797614 m!7544392))

(declare-fun b!6797616 () Bool)

(declare-fun e!4102543 () Bool)

(assert (=> b!6797616 (= e!4102543 tp_is_empty!42487)))

(declare-fun b!6797618 () Bool)

(declare-fun tp!1861287 () Bool)

(assert (=> b!6797618 (= e!4102543 tp!1861287)))

(declare-fun b!6797617 () Bool)

(declare-fun tp!1861286 () Bool)

(declare-fun tp!1861285 () Bool)

(assert (=> b!6797617 (= e!4102543 (and tp!1861286 tp!1861285))))

(assert (=> b!6796877 (= tp!1861092 e!4102543)))

(declare-fun b!6797619 () Bool)

(declare-fun tp!1861284 () Bool)

(declare-fun tp!1861288 () Bool)

(assert (=> b!6797619 (= e!4102543 (and tp!1861284 tp!1861288))))

(assert (= (and b!6796877 ((_ is ElementMatch!16617) (reg!16946 (regOne!33747 r!7292)))) b!6797616))

(assert (= (and b!6796877 ((_ is Concat!25462) (reg!16946 (regOne!33747 r!7292)))) b!6797617))

(assert (= (and b!6796877 ((_ is Star!16617) (reg!16946 (regOne!33747 r!7292)))) b!6797618))

(assert (= (and b!6796877 ((_ is Union!16617) (reg!16946 (regOne!33747 r!7292)))) b!6797619))

(declare-fun b!6797620 () Bool)

(declare-fun e!4102544 () Bool)

(assert (=> b!6797620 (= e!4102544 tp_is_empty!42487)))

(declare-fun b!6797622 () Bool)

(declare-fun tp!1861292 () Bool)

(assert (=> b!6797622 (= e!4102544 tp!1861292)))

(declare-fun b!6797621 () Bool)

(declare-fun tp!1861291 () Bool)

(declare-fun tp!1861290 () Bool)

(assert (=> b!6797621 (= e!4102544 (and tp!1861291 tp!1861290))))

(assert (=> b!6796876 (= tp!1861091 e!4102544)))

(declare-fun b!6797623 () Bool)

(declare-fun tp!1861289 () Bool)

(declare-fun tp!1861293 () Bool)

(assert (=> b!6797623 (= e!4102544 (and tp!1861289 tp!1861293))))

(assert (= (and b!6796876 ((_ is ElementMatch!16617) (regOne!33746 (regOne!33747 r!7292)))) b!6797620))

(assert (= (and b!6796876 ((_ is Concat!25462) (regOne!33746 (regOne!33747 r!7292)))) b!6797621))

(assert (= (and b!6796876 ((_ is Star!16617) (regOne!33746 (regOne!33747 r!7292)))) b!6797622))

(assert (= (and b!6796876 ((_ is Union!16617) (regOne!33746 (regOne!33747 r!7292)))) b!6797623))

(declare-fun b!6797624 () Bool)

(declare-fun e!4102545 () Bool)

(assert (=> b!6797624 (= e!4102545 tp_is_empty!42487)))

(declare-fun b!6797626 () Bool)

(declare-fun tp!1861297 () Bool)

(assert (=> b!6797626 (= e!4102545 tp!1861297)))

(declare-fun b!6797625 () Bool)

(declare-fun tp!1861296 () Bool)

(declare-fun tp!1861295 () Bool)

(assert (=> b!6797625 (= e!4102545 (and tp!1861296 tp!1861295))))

(assert (=> b!6796876 (= tp!1861090 e!4102545)))

(declare-fun b!6797627 () Bool)

(declare-fun tp!1861294 () Bool)

(declare-fun tp!1861298 () Bool)

(assert (=> b!6797627 (= e!4102545 (and tp!1861294 tp!1861298))))

(assert (= (and b!6796876 ((_ is ElementMatch!16617) (regTwo!33746 (regOne!33747 r!7292)))) b!6797624))

(assert (= (and b!6796876 ((_ is Concat!25462) (regTwo!33746 (regOne!33747 r!7292)))) b!6797625))

(assert (= (and b!6796876 ((_ is Star!16617) (regTwo!33746 (regOne!33747 r!7292)))) b!6797626))

(assert (= (and b!6796876 ((_ is Union!16617) (regTwo!33746 (regOne!33747 r!7292)))) b!6797627))

(declare-fun b!6797628 () Bool)

(declare-fun e!4102546 () Bool)

(assert (=> b!6797628 (= e!4102546 tp_is_empty!42487)))

(declare-fun b!6797630 () Bool)

(declare-fun tp!1861302 () Bool)

(assert (=> b!6797630 (= e!4102546 tp!1861302)))

(declare-fun b!6797629 () Bool)

(declare-fun tp!1861301 () Bool)

(declare-fun tp!1861300 () Bool)

(assert (=> b!6797629 (= e!4102546 (and tp!1861301 tp!1861300))))

(assert (=> b!6796880 (= tp!1861096 e!4102546)))

(declare-fun b!6797631 () Bool)

(declare-fun tp!1861299 () Bool)

(declare-fun tp!1861303 () Bool)

(assert (=> b!6797631 (= e!4102546 (and tp!1861299 tp!1861303))))

(assert (= (and b!6796880 ((_ is ElementMatch!16617) (regOne!33746 (regTwo!33747 r!7292)))) b!6797628))

(assert (= (and b!6796880 ((_ is Concat!25462) (regOne!33746 (regTwo!33747 r!7292)))) b!6797629))

(assert (= (and b!6796880 ((_ is Star!16617) (regOne!33746 (regTwo!33747 r!7292)))) b!6797630))

(assert (= (and b!6796880 ((_ is Union!16617) (regOne!33746 (regTwo!33747 r!7292)))) b!6797631))

(declare-fun b!6797632 () Bool)

(declare-fun e!4102547 () Bool)

(assert (=> b!6797632 (= e!4102547 tp_is_empty!42487)))

(declare-fun b!6797634 () Bool)

(declare-fun tp!1861307 () Bool)

(assert (=> b!6797634 (= e!4102547 tp!1861307)))

(declare-fun b!6797633 () Bool)

(declare-fun tp!1861306 () Bool)

(declare-fun tp!1861305 () Bool)

(assert (=> b!6797633 (= e!4102547 (and tp!1861306 tp!1861305))))

(assert (=> b!6796880 (= tp!1861095 e!4102547)))

(declare-fun b!6797635 () Bool)

(declare-fun tp!1861304 () Bool)

(declare-fun tp!1861308 () Bool)

(assert (=> b!6797635 (= e!4102547 (and tp!1861304 tp!1861308))))

(assert (= (and b!6796880 ((_ is ElementMatch!16617) (regTwo!33746 (regTwo!33747 r!7292)))) b!6797632))

(assert (= (and b!6796880 ((_ is Concat!25462) (regTwo!33746 (regTwo!33747 r!7292)))) b!6797633))

(assert (= (and b!6796880 ((_ is Star!16617) (regTwo!33746 (regTwo!33747 r!7292)))) b!6797634))

(assert (= (and b!6796880 ((_ is Union!16617) (regTwo!33746 (regTwo!33747 r!7292)))) b!6797635))

(declare-fun b!6797636 () Bool)

(declare-fun e!4102548 () Bool)

(declare-fun tp!1861309 () Bool)

(assert (=> b!6797636 (= e!4102548 (and tp_is_empty!42487 tp!1861309))))

(assert (=> b!6796864 (= tp!1861078 e!4102548)))

(assert (= (and b!6796864 ((_ is Cons!66028) (t!379879 (t!379879 s!2326)))) b!6797636))

(declare-fun b!6797637 () Bool)

(declare-fun e!4102549 () Bool)

(assert (=> b!6797637 (= e!4102549 tp_is_empty!42487)))

(declare-fun b!6797639 () Bool)

(declare-fun tp!1861313 () Bool)

(assert (=> b!6797639 (= e!4102549 tp!1861313)))

(declare-fun b!6797638 () Bool)

(declare-fun tp!1861312 () Bool)

(declare-fun tp!1861311 () Bool)

(assert (=> b!6797638 (= e!4102549 (and tp!1861312 tp!1861311))))

(assert (=> b!6796887 (= tp!1861103 e!4102549)))

(declare-fun b!6797640 () Bool)

(declare-fun tp!1861310 () Bool)

(declare-fun tp!1861314 () Bool)

(assert (=> b!6797640 (= e!4102549 (and tp!1861310 tp!1861314))))

(assert (= (and b!6796887 ((_ is ElementMatch!16617) (h!72474 (exprs!6501 setElem!46557)))) b!6797637))

(assert (= (and b!6796887 ((_ is Concat!25462) (h!72474 (exprs!6501 setElem!46557)))) b!6797638))

(assert (= (and b!6796887 ((_ is Star!16617) (h!72474 (exprs!6501 setElem!46557)))) b!6797639))

(assert (= (and b!6796887 ((_ is Union!16617) (h!72474 (exprs!6501 setElem!46557)))) b!6797640))

(declare-fun b!6797641 () Bool)

(declare-fun e!4102550 () Bool)

(declare-fun tp!1861315 () Bool)

(declare-fun tp!1861316 () Bool)

(assert (=> b!6797641 (= e!4102550 (and tp!1861315 tp!1861316))))

(assert (=> b!6796887 (= tp!1861104 e!4102550)))

(assert (= (and b!6796887 ((_ is Cons!66026) (t!379877 (exprs!6501 setElem!46557)))) b!6797641))

(declare-fun b!6797642 () Bool)

(declare-fun e!4102551 () Bool)

(assert (=> b!6797642 (= e!4102551 tp_is_empty!42487)))

(declare-fun b!6797644 () Bool)

(declare-fun tp!1861320 () Bool)

(assert (=> b!6797644 (= e!4102551 tp!1861320)))

(declare-fun b!6797643 () Bool)

(declare-fun tp!1861319 () Bool)

(declare-fun tp!1861318 () Bool)

(assert (=> b!6797643 (= e!4102551 (and tp!1861319 tp!1861318))))

(assert (=> b!6796920 (= tp!1861124 e!4102551)))

(declare-fun b!6797645 () Bool)

(declare-fun tp!1861317 () Bool)

(declare-fun tp!1861321 () Bool)

(assert (=> b!6797645 (= e!4102551 (and tp!1861317 tp!1861321))))

(assert (= (and b!6796920 ((_ is ElementMatch!16617) (regOne!33747 (regOne!33746 r!7292)))) b!6797642))

(assert (= (and b!6796920 ((_ is Concat!25462) (regOne!33747 (regOne!33746 r!7292)))) b!6797643))

(assert (= (and b!6796920 ((_ is Star!16617) (regOne!33747 (regOne!33746 r!7292)))) b!6797644))

(assert (= (and b!6796920 ((_ is Union!16617) (regOne!33747 (regOne!33746 r!7292)))) b!6797645))

(declare-fun b!6797646 () Bool)

(declare-fun e!4102552 () Bool)

(assert (=> b!6797646 (= e!4102552 tp_is_empty!42487)))

(declare-fun b!6797648 () Bool)

(declare-fun tp!1861325 () Bool)

(assert (=> b!6797648 (= e!4102552 tp!1861325)))

(declare-fun b!6797647 () Bool)

(declare-fun tp!1861324 () Bool)

(declare-fun tp!1861323 () Bool)

(assert (=> b!6797647 (= e!4102552 (and tp!1861324 tp!1861323))))

(assert (=> b!6796920 (= tp!1861128 e!4102552)))

(declare-fun b!6797649 () Bool)

(declare-fun tp!1861322 () Bool)

(declare-fun tp!1861326 () Bool)

(assert (=> b!6797649 (= e!4102552 (and tp!1861322 tp!1861326))))

(assert (= (and b!6796920 ((_ is ElementMatch!16617) (regTwo!33747 (regOne!33746 r!7292)))) b!6797646))

(assert (= (and b!6796920 ((_ is Concat!25462) (regTwo!33747 (regOne!33746 r!7292)))) b!6797647))

(assert (= (and b!6796920 ((_ is Star!16617) (regTwo!33747 (regOne!33746 r!7292)))) b!6797648))

(assert (= (and b!6796920 ((_ is Union!16617) (regTwo!33747 (regOne!33746 r!7292)))) b!6797649))

(declare-fun b!6797650 () Bool)

(declare-fun e!4102553 () Bool)

(assert (=> b!6797650 (= e!4102553 tp_is_empty!42487)))

(declare-fun b!6797652 () Bool)

(declare-fun tp!1861330 () Bool)

(assert (=> b!6797652 (= e!4102553 tp!1861330)))

(declare-fun b!6797651 () Bool)

(declare-fun tp!1861329 () Bool)

(declare-fun tp!1861328 () Bool)

(assert (=> b!6797651 (= e!4102553 (and tp!1861329 tp!1861328))))

(assert (=> b!6796888 (= tp!1861105 e!4102553)))

(declare-fun b!6797653 () Bool)

(declare-fun tp!1861327 () Bool)

(declare-fun tp!1861331 () Bool)

(assert (=> b!6797653 (= e!4102553 (and tp!1861327 tp!1861331))))

(assert (= (and b!6796888 ((_ is ElementMatch!16617) (h!72474 (exprs!6501 (h!72475 zl!343))))) b!6797650))

(assert (= (and b!6796888 ((_ is Concat!25462) (h!72474 (exprs!6501 (h!72475 zl!343))))) b!6797651))

(assert (= (and b!6796888 ((_ is Star!16617) (h!72474 (exprs!6501 (h!72475 zl!343))))) b!6797652))

(assert (= (and b!6796888 ((_ is Union!16617) (h!72474 (exprs!6501 (h!72475 zl!343))))) b!6797653))

(declare-fun b!6797654 () Bool)

(declare-fun e!4102554 () Bool)

(declare-fun tp!1861332 () Bool)

(declare-fun tp!1861333 () Bool)

(assert (=> b!6797654 (= e!4102554 (and tp!1861332 tp!1861333))))

(assert (=> b!6796888 (= tp!1861106 e!4102554)))

(assert (= (and b!6796888 ((_ is Cons!66026) (t!379877 (exprs!6501 (h!72475 zl!343))))) b!6797654))

(declare-fun b!6797655 () Bool)

(declare-fun e!4102555 () Bool)

(assert (=> b!6797655 (= e!4102555 tp_is_empty!42487)))

(declare-fun b!6797657 () Bool)

(declare-fun tp!1861337 () Bool)

(assert (=> b!6797657 (= e!4102555 tp!1861337)))

(declare-fun b!6797656 () Bool)

(declare-fun tp!1861336 () Bool)

(declare-fun tp!1861335 () Bool)

(assert (=> b!6797656 (= e!4102555 (and tp!1861336 tp!1861335))))

(assert (=> b!6796919 (= tp!1861127 e!4102555)))

(declare-fun b!6797658 () Bool)

(declare-fun tp!1861334 () Bool)

(declare-fun tp!1861338 () Bool)

(assert (=> b!6797658 (= e!4102555 (and tp!1861334 tp!1861338))))

(assert (= (and b!6796919 ((_ is ElementMatch!16617) (reg!16946 (regOne!33746 r!7292)))) b!6797655))

(assert (= (and b!6796919 ((_ is Concat!25462) (reg!16946 (regOne!33746 r!7292)))) b!6797656))

(assert (= (and b!6796919 ((_ is Star!16617) (reg!16946 (regOne!33746 r!7292)))) b!6797657))

(assert (= (and b!6796919 ((_ is Union!16617) (reg!16946 (regOne!33746 r!7292)))) b!6797658))

(declare-fun b!6797659 () Bool)

(declare-fun e!4102556 () Bool)

(assert (=> b!6797659 (= e!4102556 tp_is_empty!42487)))

(declare-fun b!6797661 () Bool)

(declare-fun tp!1861342 () Bool)

(assert (=> b!6797661 (= e!4102556 tp!1861342)))

(declare-fun b!6797660 () Bool)

(declare-fun tp!1861341 () Bool)

(declare-fun tp!1861340 () Bool)

(assert (=> b!6797660 (= e!4102556 (and tp!1861341 tp!1861340))))

(assert (=> b!6796918 (= tp!1861126 e!4102556)))

(declare-fun b!6797662 () Bool)

(declare-fun tp!1861339 () Bool)

(declare-fun tp!1861343 () Bool)

(assert (=> b!6797662 (= e!4102556 (and tp!1861339 tp!1861343))))

(assert (= (and b!6796918 ((_ is ElementMatch!16617) (regOne!33746 (regOne!33746 r!7292)))) b!6797659))

(assert (= (and b!6796918 ((_ is Concat!25462) (regOne!33746 (regOne!33746 r!7292)))) b!6797660))

(assert (= (and b!6796918 ((_ is Star!16617) (regOne!33746 (regOne!33746 r!7292)))) b!6797661))

(assert (= (and b!6796918 ((_ is Union!16617) (regOne!33746 (regOne!33746 r!7292)))) b!6797662))

(declare-fun b!6797663 () Bool)

(declare-fun e!4102557 () Bool)

(assert (=> b!6797663 (= e!4102557 tp_is_empty!42487)))

(declare-fun b!6797665 () Bool)

(declare-fun tp!1861347 () Bool)

(assert (=> b!6797665 (= e!4102557 tp!1861347)))

(declare-fun b!6797664 () Bool)

(declare-fun tp!1861346 () Bool)

(declare-fun tp!1861345 () Bool)

(assert (=> b!6797664 (= e!4102557 (and tp!1861346 tp!1861345))))

(assert (=> b!6796918 (= tp!1861125 e!4102557)))

(declare-fun b!6797666 () Bool)

(declare-fun tp!1861344 () Bool)

(declare-fun tp!1861348 () Bool)

(assert (=> b!6797666 (= e!4102557 (and tp!1861344 tp!1861348))))

(assert (= (and b!6796918 ((_ is ElementMatch!16617) (regTwo!33746 (regOne!33746 r!7292)))) b!6797663))

(assert (= (and b!6796918 ((_ is Concat!25462) (regTwo!33746 (regOne!33746 r!7292)))) b!6797664))

(assert (= (and b!6796918 ((_ is Star!16617) (regTwo!33746 (regOne!33746 r!7292)))) b!6797665))

(assert (= (and b!6796918 ((_ is Union!16617) (regTwo!33746 (regOne!33746 r!7292)))) b!6797666))

(declare-fun b!6797667 () Bool)

(declare-fun e!4102558 () Bool)

(assert (=> b!6797667 (= e!4102558 tp_is_empty!42487)))

(declare-fun b!6797669 () Bool)

(declare-fun tp!1861352 () Bool)

(assert (=> b!6797669 (= e!4102558 tp!1861352)))

(declare-fun b!6797668 () Bool)

(declare-fun tp!1861351 () Bool)

(declare-fun tp!1861350 () Bool)

(assert (=> b!6797668 (= e!4102558 (and tp!1861351 tp!1861350))))

(assert (=> b!6796882 (= tp!1861094 e!4102558)))

(declare-fun b!6797670 () Bool)

(declare-fun tp!1861349 () Bool)

(declare-fun tp!1861353 () Bool)

(assert (=> b!6797670 (= e!4102558 (and tp!1861349 tp!1861353))))

(assert (= (and b!6796882 ((_ is ElementMatch!16617) (regOne!33747 (regTwo!33747 r!7292)))) b!6797667))

(assert (= (and b!6796882 ((_ is Concat!25462) (regOne!33747 (regTwo!33747 r!7292)))) b!6797668))

(assert (= (and b!6796882 ((_ is Star!16617) (regOne!33747 (regTwo!33747 r!7292)))) b!6797669))

(assert (= (and b!6796882 ((_ is Union!16617) (regOne!33747 (regTwo!33747 r!7292)))) b!6797670))

(declare-fun b!6797671 () Bool)

(declare-fun e!4102559 () Bool)

(assert (=> b!6797671 (= e!4102559 tp_is_empty!42487)))

(declare-fun b!6797673 () Bool)

(declare-fun tp!1861357 () Bool)

(assert (=> b!6797673 (= e!4102559 tp!1861357)))

(declare-fun b!6797672 () Bool)

(declare-fun tp!1861356 () Bool)

(declare-fun tp!1861355 () Bool)

(assert (=> b!6797672 (= e!4102559 (and tp!1861356 tp!1861355))))

(assert (=> b!6796882 (= tp!1861098 e!4102559)))

(declare-fun b!6797674 () Bool)

(declare-fun tp!1861354 () Bool)

(declare-fun tp!1861358 () Bool)

(assert (=> b!6797674 (= e!4102559 (and tp!1861354 tp!1861358))))

(assert (= (and b!6796882 ((_ is ElementMatch!16617) (regTwo!33747 (regTwo!33747 r!7292)))) b!6797671))

(assert (= (and b!6796882 ((_ is Concat!25462) (regTwo!33747 (regTwo!33747 r!7292)))) b!6797672))

(assert (= (and b!6796882 ((_ is Star!16617) (regTwo!33747 (regTwo!33747 r!7292)))) b!6797673))

(assert (= (and b!6796882 ((_ is Union!16617) (regTwo!33747 (regTwo!33747 r!7292)))) b!6797674))

(declare-fun b!6797675 () Bool)

(declare-fun e!4102560 () Bool)

(assert (=> b!6797675 (= e!4102560 tp_is_empty!42487)))

(declare-fun b!6797677 () Bool)

(declare-fun tp!1861362 () Bool)

(assert (=> b!6797677 (= e!4102560 tp!1861362)))

(declare-fun b!6797676 () Bool)

(declare-fun tp!1861361 () Bool)

(declare-fun tp!1861360 () Bool)

(assert (=> b!6797676 (= e!4102560 (and tp!1861361 tp!1861360))))

(assert (=> b!6796881 (= tp!1861097 e!4102560)))

(declare-fun b!6797678 () Bool)

(declare-fun tp!1861359 () Bool)

(declare-fun tp!1861363 () Bool)

(assert (=> b!6797678 (= e!4102560 (and tp!1861359 tp!1861363))))

(assert (= (and b!6796881 ((_ is ElementMatch!16617) (reg!16946 (regTwo!33747 r!7292)))) b!6797675))

(assert (= (and b!6796881 ((_ is Concat!25462) (reg!16946 (regTwo!33747 r!7292)))) b!6797676))

(assert (= (and b!6796881 ((_ is Star!16617) (reg!16946 (regTwo!33747 r!7292)))) b!6797677))

(assert (= (and b!6796881 ((_ is Union!16617) (reg!16946 (regTwo!33747 r!7292)))) b!6797678))

(declare-fun b_lambda!256149 () Bool)

(assert (= b_lambda!256125 (or d!2135648 b_lambda!256149)))

(declare-fun bs!1811690 () Bool)

(declare-fun d!2135980 () Bool)

(assert (= bs!1811690 (and d!2135980 d!2135648)))

(assert (=> bs!1811690 (= (dynLambda!26363 lambda!383210 (h!72474 (exprs!6501 (h!72475 zl!343)))) (validRegex!8353 (h!72474 (exprs!6501 (h!72475 zl!343)))))))

(declare-fun m!7544394 () Bool)

(assert (=> bs!1811690 m!7544394))

(assert (=> b!6797143 d!2135980))

(declare-fun b_lambda!256151 () Bool)

(assert (= b_lambda!256127 (or d!2135538 b_lambda!256151)))

(declare-fun bs!1811691 () Bool)

(declare-fun d!2135982 () Bool)

(assert (= bs!1811691 (and d!2135982 d!2135538)))

(assert (=> bs!1811691 (= (dynLambda!26363 lambda!383151 (h!72474 (unfocusZipperList!2038 zl!343))) (validRegex!8353 (h!72474 (unfocusZipperList!2038 zl!343))))))

(declare-fun m!7544396 () Bool)

(assert (=> bs!1811691 m!7544396))

(assert (=> b!6797271 d!2135982))

(declare-fun b_lambda!256153 () Bool)

(assert (= b_lambda!256131 (or b!6796135 b_lambda!256153)))

(assert (=> d!2135846 d!2135662))

(declare-fun b_lambda!256155 () Bool)

(assert (= b_lambda!256137 (or d!2135542 b_lambda!256155)))

(declare-fun bs!1811692 () Bool)

(declare-fun d!2135984 () Bool)

(assert (= bs!1811692 (and d!2135984 d!2135542)))

(assert (=> bs!1811692 (= (dynLambda!26363 lambda!383157 (h!72474 lt!2447328)) (validRegex!8353 (h!72474 lt!2447328)))))

(declare-fun m!7544398 () Bool)

(assert (=> bs!1811692 m!7544398))

(assert (=> b!6797359 d!2135984))

(declare-fun b_lambda!256157 () Bool)

(assert (= b_lambda!256147 (or b!6796135 b_lambda!256157)))

(assert (=> d!2135972 d!2135668))

(declare-fun b_lambda!256159 () Bool)

(assert (= b_lambda!256141 (or d!2135474 b_lambda!256159)))

(declare-fun bs!1811693 () Bool)

(declare-fun d!2135986 () Bool)

(assert (= bs!1811693 (and d!2135986 d!2135474)))

(assert (=> bs!1811693 (= (dynLambda!26363 lambda!383130 (h!72474 (exprs!6501 (h!72475 zl!343)))) (validRegex!8353 (h!72474 (exprs!6501 (h!72475 zl!343)))))))

(assert (=> bs!1811693 m!7544394))

(assert (=> b!6797497 d!2135986))

(declare-fun b_lambda!256161 () Bool)

(assert (= b_lambda!256139 (or d!2135604 b_lambda!256161)))

(declare-fun bs!1811694 () Bool)

(declare-fun d!2135988 () Bool)

(assert (= bs!1811694 (and d!2135988 d!2135604)))

(assert (=> bs!1811694 (= (dynLambda!26363 lambda!383176 (h!72474 (exprs!6501 lt!2447275))) (validRegex!8353 (h!72474 (exprs!6501 lt!2447275))))))

(declare-fun m!7544400 () Bool)

(assert (=> bs!1811694 m!7544400))

(assert (=> b!6797416 d!2135988))

(declare-fun b_lambda!256163 () Bool)

(assert (= b_lambda!256123 (or b!6796135 b_lambda!256163)))

(assert (=> d!2135694 d!2135666))

(declare-fun b_lambda!256165 () Bool)

(assert (= b_lambda!256133 (or b!6796140 b_lambda!256165)))

(declare-fun bs!1811695 () Bool)

(declare-fun d!2135990 () Bool)

(assert (= bs!1811695 (and d!2135990 b!6796140)))

(assert (=> bs!1811695 (= (dynLambda!26363 lambda!383117 (h!72474 (++!14779 (Cons!66026 (reg!16946 r!7292) Nil!66026) lt!2447262))) (validRegex!8353 (h!72474 (++!14779 (Cons!66026 (reg!16946 r!7292) Nil!66026) lt!2447262))))))

(declare-fun m!7544402 () Bool)

(assert (=> bs!1811695 m!7544402))

(assert (=> b!6797355 d!2135990))

(declare-fun b_lambda!256167 () Bool)

(assert (= b_lambda!256143 (or d!2135578 b_lambda!256167)))

(declare-fun bs!1811696 () Bool)

(declare-fun d!2135992 () Bool)

(assert (= bs!1811696 (and d!2135992 d!2135578)))

(assert (=> bs!1811696 (= (dynLambda!26363 lambda!383167 (h!72474 (exprs!6501 setElem!46557))) (validRegex!8353 (h!72474 (exprs!6501 setElem!46557))))))

(declare-fun m!7544404 () Bool)

(assert (=> bs!1811696 m!7544404))

(assert (=> b!6797520 d!2135992))

(declare-fun b_lambda!256169 () Bool)

(assert (= b_lambda!256145 (or b!6796140 b_lambda!256169)))

(assert (=> d!2135964 d!2135656))

(declare-fun b_lambda!256171 () Bool)

(assert (= b_lambda!256135 (or b!6796140 b_lambda!256171)))

(declare-fun bs!1811697 () Bool)

(declare-fun d!2135994 () Bool)

(assert (= bs!1811697 (and d!2135994 b!6796140)))

(assert (=> bs!1811697 (= (dynLambda!26363 lambda!383117 (h!72474 (Cons!66026 (reg!16946 r!7292) Nil!66026))) (validRegex!8353 (h!72474 (Cons!66026 (reg!16946 r!7292) Nil!66026))))))

(declare-fun m!7544406 () Bool)

(assert (=> bs!1811697 m!7544406))

(assert (=> b!6797357 d!2135994))

(declare-fun b_lambda!256173 () Bool)

(assert (= b_lambda!256129 (or b!6796135 b_lambda!256173)))

(assert (=> d!2135836 d!2135664))

(check-sat (not b!6797568) (not b!6797604) (not b!6797079) (not bm!617480) (not b!6797234) (not b!6797553) (not b!6797499) (not bm!617509) (not b!6797045) (not bm!617467) (not b!6797130) (not bm!617411) (not b!6797669) (not bm!617495) (not b!6797672) (not b!6797566) (not b!6797648) (not b!6797489) (not bm!617500) (not b!6797112) (not b!6797193) (not bm!617405) (not b!6797436) (not b_lambda!256103) (not b!6797282) (not b!6797523) (not bm!617491) (not d!2135746) (not d!2135828) (not b!6797516) (not bm!617443) (not b!6797146) (not b!6797459) (not b!6797569) (not setNonEmpty!46573) (not b!6797603) (not b_lambda!256149) (not b!6797627) (not b!6797014) (not b!6797420) (not b!6797668) (not bm!617497) (not b!6797643) (not bm!617459) (not d!2135838) (not b!6797581) (not b!6797004) (not b!6797445) (not bm!617501) (not bm!617434) (not b!6797237) (not b!6797219) (not bm!617496) (not bs!1811695) (not b!6797562) (not bm!617451) (not b!6797011) (not b!6797631) (not b!6797226) (not d!2135792) (not bm!617469) (not d!2135736) (not b!6797189) (not b!6797418) (not b!6797573) (not b!6797205) (not b!6797513) (not b!6797485) (not d!2135940) (not b!6797664) (not bm!617420) (not bm!617478) (not b!6797464) (not b!6797644) (not bm!617436) (not b!6797677) (not bm!617449) (not b!6797623) (not b!6797421) (not b!6797287) (not b!6797253) (not b!6797096) (not d!2135850) (not bm!617424) (not b!6797167) (not b!6797374) (not d!2135810) (not b!6797104) (not bs!1811696) (not b!6797076) (not d!2135954) (not b!6797486) (not b!6797629) (not b!6797073) (not setNonEmpty!46568) (not b!6797615) (not b!6797207) (not b!6797294) (not bm!617487) (not b!6797427) (not bm!617393) (not b!6797674) (not bm!617407) (not b!6797656) (not b!6797594) (not b!6797415) (not b!6797645) (not b!6797286) (not b!6797358) (not b!6797582) (not b!6797046) (not b!6797211) (not b!6797599) (not d!2135786) (not b!6797670) (not b_lambda!256173) (not b!6797522) (not d!2135898) (not d!2135972) (not d!2135896) (not bs!1811692) (not b!6797115) (not bm!617404) (not d!2135698) (not b!6797572) (not b!6797293) (not b_lambda!256165) (not bm!617417) (not b!6797676) (not b!6797010) (not b!6797640) (not d!2135942) (not b!6797634) (not d!2135962) (not d!2135806) (not d!2135918) (not d!2135722) (not b!6797518) (not b!6797220) (not b!6797580) (not b!6797633) (not b!6797212) (not d!2135748) (not b!6797576) (not d!2135796) (not d!2135874) (not b!6797531) (not bm!617422) (not setNonEmpty!46572) (not b!6797515) (not b!6797084) (not b!6797666) (not d!2135830) (not b!6797241) (not b!6797592) (not b!6797228) (not d!2135916) (not b!6797654) (not b!6797621) (not b_lambda!256157) (not bm!617415) (not b!6797611) (not b!6797678) (not b!6797639) (not bm!617409) (not bm!617485) (not b_lambda!256109) (not bs!1811697) (not b_lambda!256101) (not b!6797435) (not b!6797490) (not b_lambda!256155) (not b!6797665) (not bm!617456) (not b!6797297) (not d!2135710) (not b!6797356) (not b!6797360) (not d!2135784) (not b!6797539) (not b!6797625) (not b!6797530) (not b!6797166) (not b!6797593) (not setNonEmpty!46566) (not b!6797613) (not b!6797346) (not d!2135910) (not d!2135744) (not b!6797364) (not b!6797597) (not b!6797077) (not b!6797612) (not b!6797230) (not bs!1811691) (not d!2135964) (not b!6797641) (not b!6797605) (not d!2135952) (not d!2135886) (not b!6797283) (not b!6797229) (not b!6797345) (not b!6797145) (not d!2135846) (not bm!617507) (not b!6797647) (not d!2135878) (not b!6797070) (not d!2135718) (not b!6797232) (not bm!617461) (not b!6797353) (not b!6797304) (not b!6797481) (not b!6797600) (not b!6797622) (not b!6797201) (not b_lambda!256163) (not bm!617410) (not bm!617471) (not bm!617499) (not b!6797074) (not b!6797510) (not d!2135978) (not b!6797348) (not d!2135876) (not b!6797560) (not b!6797577) (not bm!617454) (not d!2135860) (not bm!617446) (not b!6797187) (not d!2135912) (not b!6797586) (not d!2135976) (not d!2135966) (not bm!617473) (not bm!617466) (not b!6797649) (not bm!617492) (not b!6797512) (not b!6797155) (not b!6797570) (not b!6797469) (not bm!617445) (not b_lambda!256107) (not d!2135730) (not b_lambda!256153) (not b!6797316) tp_is_empty!42487 (not bm!617474) (not b!6797204) (not b!6797564) (not b!6797509) (not d!2135924) (not b!6797589) (not b!6797092) (not b!6797437) (not d!2135766) (not b!6797055) (not b!6797635) (not b!6797419) (not b!6797144) (not b!6797177) (not b!6797596) (not d!2135776) (not b!6797636) (not b!6797619) (not bm!617437) (not b_lambda!256161) (not b!6797658) (not b!6797438) (not b!6797673) (not d!2135764) (not bs!1811690) (not b!6797574) (not b!6797590) (not b_lambda!256105) (not b!6797524) (not b!6797552) (not d!2135824) (not b!6797618) (not d!2135798) (not b!6797609) (not b!6797626) (not b!6797588) (not bm!617457) (not bm!617441) (not b!6797060) (not b!6797511) (not b!6797601) (not b!6797428) (not b!6797072) (not b!6797245) (not d!2135900) (not b!6797392) (not b!6797483) (not b!6797208) (not bm!617489) (not b!6797235) (not d!2135754) (not b!6797607) (not b!6797262) (not b!6797460) (not bm!617476) (not bm!617447) (not d!2135934) (not d!2135708) (not b!6797185) (not b!6797608) (not b!6797101) (not bm!617423) (not b!6797326) (not d!2135956) (not b!6797561) (not d!2135872) (not b!6797444) (not b!6797122) (not b_lambda!256151) (not b!6797653) (not bm!617439) (not b!6797298) (not bm!617421) (not b!6797231) (not bs!1811693) (not d!2135750) (not b!6797350) (not b!6797290) (not b_lambda!256169) (not b!6797347) (not b!6797071) (not bm!617426) (not b!6797472) (not b!6797292) (not b!6797617) (not b!6797498) (not bm!617419) (not d!2135880) (not b!6797651) (not b!6797225) (not b!6797213) (not b!6797487) (not bm!617433) (not b!6797584) (not bm!617463) (not d!2135752) (not b!6797652) (not b!6797178) (not bm!617505) (not bm!617498) (not b!6797578) (not d!2135960) (not d!2135720) (not b!6797003) (not d!2135894) (not b!6797661) (not b!6797417) (not b_lambda!256167) (not b!6797547) (not b!6797431) (not b!6797496) (not b!6797373) (not b!6797002) (not b!6797565) (not d!2135936) (not b!6797295) (not b!6797206) (not b!6797223) (not bm!617406) (not bm!617502) (not bm!617431) (not d!2135826) (not b!6797351) (not d!2135782) (not b!6797657) (not b!6797344) (not b!6797059) (not d!2135694) (not setNonEmpty!46571) (not b_lambda!256171) (not b_lambda!256159) (not d!2135696) (not b!6797660) (not b!6797521) (not b!6797334) (not setNonEmpty!46567) (not b!6797272) (not bm!617482) (not bm!617465) (not bm!617430) (not d!2135778) (not b!6797380) (not b!6797585) (not bm!617483) (not b!6797492) (not b!6797299) (not b!6797595) (not b!6797662) (not b!6797638) (not d!2135852) (not b!6797614) (not bm!617428) (not b!6797319) (not d!2135804) (not bm!617453) (not d!2135836) (not bm!617413) (not bm!617504) (not b!6797209) (not bs!1811694) (not b!6797534) (not d!2135884) (not b!6797630) (not b!6797448))
(check-sat)
