; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!559418 () Bool)

(assert start!559418)

(declare-fun b!5303722 () Bool)

(assert (=> b!5303722 true))

(assert (=> b!5303722 true))

(declare-fun lambda!269620 () Int)

(declare-fun lambda!269619 () Int)

(assert (=> b!5303722 (not (= lambda!269620 lambda!269619))))

(assert (=> b!5303722 true))

(assert (=> b!5303722 true))

(declare-fun b!5303729 () Bool)

(assert (=> b!5303729 true))

(declare-fun bs!1229874 () Bool)

(declare-fun b!5303748 () Bool)

(assert (= bs!1229874 (and b!5303748 b!5303722)))

(declare-datatypes ((C!30172 0))(
  ( (C!30173 (val!24788 Int)) )
))
(declare-datatypes ((Regex!14951 0))(
  ( (ElementMatch!14951 (c!920783 C!30172)) (Concat!23796 (regOne!30414 Regex!14951) (regTwo!30414 Regex!14951)) (EmptyExpr!14951) (Star!14951 (reg!15280 Regex!14951)) (EmptyLang!14951) (Union!14951 (regOne!30415 Regex!14951) (regTwo!30415 Regex!14951)) )
))
(declare-fun r!7292 () Regex!14951)

(declare-fun lambda!269622 () Int)

(declare-fun lt!2167296 () Regex!14951)

(assert (=> bs!1229874 (= (and (= (regOne!30414 (regOne!30414 r!7292)) (regOne!30414 r!7292)) (= lt!2167296 (regTwo!30414 r!7292))) (= lambda!269622 lambda!269619))))

(assert (=> bs!1229874 (not (= lambda!269622 lambda!269620))))

(assert (=> b!5303748 true))

(assert (=> b!5303748 true))

(assert (=> b!5303748 true))

(declare-fun lambda!269623 () Int)

(assert (=> bs!1229874 (not (= lambda!269623 lambda!269619))))

(assert (=> bs!1229874 (= (and (= (regOne!30414 (regOne!30414 r!7292)) (regOne!30414 r!7292)) (= lt!2167296 (regTwo!30414 r!7292))) (= lambda!269623 lambda!269620))))

(assert (=> b!5303748 (not (= lambda!269623 lambda!269622))))

(assert (=> b!5303748 true))

(assert (=> b!5303748 true))

(assert (=> b!5303748 true))

(declare-fun lt!2167319 () Regex!14951)

(declare-fun lambda!269624 () Int)

(assert (=> bs!1229874 (= (and (= (regTwo!30414 (regOne!30414 r!7292)) (regOne!30414 r!7292)) (= lt!2167319 (regTwo!30414 r!7292))) (= lambda!269624 lambda!269619))))

(assert (=> bs!1229874 (not (= lambda!269624 lambda!269620))))

(assert (=> b!5303748 (= (and (= (regTwo!30414 (regOne!30414 r!7292)) (regOne!30414 (regOne!30414 r!7292))) (= lt!2167319 lt!2167296)) (= lambda!269624 lambda!269622))))

(assert (=> b!5303748 (not (= lambda!269624 lambda!269623))))

(assert (=> b!5303748 true))

(assert (=> b!5303748 true))

(assert (=> b!5303748 true))

(declare-fun lambda!269625 () Int)

(assert (=> b!5303748 (= (and (= (regTwo!30414 (regOne!30414 r!7292)) (regOne!30414 (regOne!30414 r!7292))) (= lt!2167319 lt!2167296)) (= lambda!269625 lambda!269623))))

(assert (=> bs!1229874 (not (= lambda!269625 lambda!269619))))

(assert (=> bs!1229874 (= (and (= (regTwo!30414 (regOne!30414 r!7292)) (regOne!30414 r!7292)) (= lt!2167319 (regTwo!30414 r!7292))) (= lambda!269625 lambda!269620))))

(assert (=> b!5303748 (not (= lambda!269625 lambda!269624))))

(assert (=> b!5303748 (not (= lambda!269625 lambda!269622))))

(assert (=> b!5303748 true))

(assert (=> b!5303748 true))

(assert (=> b!5303748 true))

(declare-fun b!5303712 () Bool)

(declare-fun e!3296271 () Bool)

(declare-fun e!3296272 () Bool)

(assert (=> b!5303712 (= e!3296271 e!3296272)))

(declare-fun res!2249800 () Bool)

(assert (=> b!5303712 (=> res!2249800 e!3296272)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61152 0))(
  ( (Nil!61028) (Cons!61028 (h!67476 Regex!14951) (t!374357 List!61152)) )
))
(declare-datatypes ((Context!8670 0))(
  ( (Context!8671 (exprs!4835 List!61152)) )
))
(declare-fun lt!2167297 () (InoxSet Context!8670))

(declare-fun lt!2167300 () (InoxSet Context!8670))

(assert (=> b!5303712 (= res!2249800 (not (= lt!2167297 lt!2167300)))))

(declare-fun lt!2167280 () (InoxSet Context!8670))

(declare-fun lt!2167290 () (InoxSet Context!8670))

(assert (=> b!5303712 (= lt!2167300 ((_ map or) lt!2167280 lt!2167290))))

(declare-fun lt!2167291 () Context!8670)

(declare-datatypes ((List!61153 0))(
  ( (Nil!61029) (Cons!61029 (h!67477 C!30172) (t!374358 List!61153)) )
))
(declare-fun s!2326 () List!61153)

(declare-fun derivationStepZipperUp!323 (Context!8670 C!30172) (InoxSet Context!8670))

(assert (=> b!5303712 (= lt!2167290 (derivationStepZipperUp!323 lt!2167291 (h!67477 s!2326)))))

(declare-fun lt!2167322 () (InoxSet Context!8670))

(declare-fun lambda!269621 () Int)

(declare-fun lt!2167274 () Context!8670)

(declare-fun flatMap!678 ((InoxSet Context!8670) Int) (InoxSet Context!8670))

(assert (=> b!5303712 (= (flatMap!678 lt!2167322 lambda!269621) (derivationStepZipperUp!323 lt!2167274 (h!67477 s!2326)))))

(declare-datatypes ((Unit!153322 0))(
  ( (Unit!153323) )
))
(declare-fun lt!2167278 () Unit!153322)

(declare-fun lemmaFlatMapOnSingletonSet!210 ((InoxSet Context!8670) Context!8670 Int) Unit!153322)

(assert (=> b!5303712 (= lt!2167278 (lemmaFlatMapOnSingletonSet!210 lt!2167322 lt!2167274 lambda!269621))))

(declare-fun lt!2167286 () (InoxSet Context!8670))

(assert (=> b!5303712 (= lt!2167286 (derivationStepZipperUp!323 lt!2167274 (h!67477 s!2326)))))

(declare-fun derivationStepZipper!1194 ((InoxSet Context!8670) C!30172) (InoxSet Context!8670))

(assert (=> b!5303712 (= lt!2167297 (derivationStepZipper!1194 lt!2167322 (h!67477 s!2326)))))

(declare-fun lt!2167294 () (InoxSet Context!8670))

(assert (=> b!5303712 (= lt!2167294 (store ((as const (Array Context!8670 Bool)) false) lt!2167291 true))))

(assert (=> b!5303712 (= lt!2167322 (store ((as const (Array Context!8670 Bool)) false) lt!2167274 true))))

(declare-fun lt!2167299 () List!61152)

(assert (=> b!5303712 (= lt!2167274 (Context!8671 lt!2167299))))

(declare-fun lt!2167313 () List!61152)

(assert (=> b!5303712 (= lt!2167299 (Cons!61028 (regOne!30414 (regOne!30414 r!7292)) lt!2167313))))

(declare-fun b!5303713 () Bool)

(declare-fun e!3296273 () Bool)

(declare-fun lt!2167303 () (InoxSet Context!8670))

(declare-fun matchZipper!1195 ((InoxSet Context!8670) List!61153) Bool)

(assert (=> b!5303713 (= e!3296273 (matchZipper!1195 lt!2167303 (t!374358 s!2326)))))

(declare-fun b!5303714 () Bool)

(declare-fun e!3296254 () Bool)

(declare-fun tp!1478689 () Bool)

(assert (=> b!5303714 (= e!3296254 tp!1478689)))

(declare-fun b!5303715 () Bool)

(declare-fun res!2249806 () Bool)

(declare-fun e!3296260 () Bool)

(assert (=> b!5303715 (=> res!2249806 e!3296260)))

(declare-datatypes ((List!61154 0))(
  ( (Nil!61030) (Cons!61030 (h!67478 Context!8670) (t!374359 List!61154)) )
))
(declare-fun lt!2167289 () List!61154)

(declare-fun zl!343 () List!61154)

(declare-fun zipperDepth!68 (List!61154) Int)

(assert (=> b!5303715 (= res!2249806 (> (zipperDepth!68 lt!2167289) (zipperDepth!68 zl!343)))))

(declare-fun b!5303716 () Bool)

(declare-fun e!3296255 () Bool)

(assert (=> b!5303716 (= e!3296255 (not (matchZipper!1195 (derivationStepZipper!1194 lt!2167294 (h!67477 s!2326)) (t!374358 s!2326))))))

(declare-fun b!5303717 () Bool)

(declare-fun res!2249807 () Bool)

(declare-fun e!3296262 () Bool)

(assert (=> b!5303717 (=> res!2249807 e!3296262)))

(declare-fun isEmpty!32987 (List!61154) Bool)

(assert (=> b!5303717 (= res!2249807 (not (isEmpty!32987 (t!374359 zl!343))))))

(declare-fun b!5303718 () Bool)

(declare-fun e!3296256 () Bool)

(assert (=> b!5303718 (= e!3296256 e!3296271)))

(declare-fun res!2249802 () Bool)

(assert (=> b!5303718 (=> res!2249802 e!3296271)))

(declare-fun e!3296257 () Bool)

(assert (=> b!5303718 (= res!2249802 e!3296257)))

(declare-fun res!2249788 () Bool)

(assert (=> b!5303718 (=> (not res!2249788) (not e!3296257))))

(declare-fun lt!2167288 () Bool)

(declare-fun lt!2167279 () Bool)

(assert (=> b!5303718 (= res!2249788 (not (= lt!2167288 lt!2167279)))))

(declare-fun lt!2167304 () (InoxSet Context!8670))

(assert (=> b!5303718 (= lt!2167288 (matchZipper!1195 lt!2167304 (t!374358 s!2326)))))

(declare-fun lt!2167287 () (InoxSet Context!8670))

(assert (=> b!5303718 (= (matchZipper!1195 lt!2167287 (t!374358 s!2326)) e!3296273)))

(declare-fun res!2249797 () Bool)

(assert (=> b!5303718 (=> res!2249797 e!3296273)))

(assert (=> b!5303718 (= res!2249797 lt!2167279)))

(assert (=> b!5303718 (= lt!2167279 (matchZipper!1195 lt!2167280 (t!374358 s!2326)))))

(declare-fun lt!2167277 () Unit!153322)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!188 ((InoxSet Context!8670) (InoxSet Context!8670) List!61153) Unit!153322)

(assert (=> b!5303718 (= lt!2167277 (lemmaZipperConcatMatchesSameAsBothZippers!188 lt!2167280 lt!2167303 (t!374358 s!2326)))))

(declare-fun setIsEmpty!34085 () Bool)

(declare-fun setRes!34085 () Bool)

(assert (=> setIsEmpty!34085 setRes!34085))

(declare-fun b!5303719 () Bool)

(declare-fun res!2249787 () Bool)

(assert (=> b!5303719 (=> res!2249787 e!3296262)))

(get-info :version)

(assert (=> b!5303719 (= res!2249787 (or ((_ is EmptyExpr!14951) r!7292) ((_ is EmptyLang!14951) r!7292) ((_ is ElementMatch!14951) r!7292) ((_ is Union!14951) r!7292) (not ((_ is Concat!23796) r!7292))))))

(declare-fun b!5303720 () Bool)

(declare-fun e!3296259 () Bool)

(declare-fun tp_is_empty!39155 () Bool)

(declare-fun tp!1478685 () Bool)

(assert (=> b!5303720 (= e!3296259 (and tp_is_empty!39155 tp!1478685))))

(declare-fun b!5303721 () Bool)

(declare-fun res!2249803 () Bool)

(assert (=> b!5303721 (=> res!2249803 e!3296262)))

(declare-fun generalisedUnion!880 (List!61152) Regex!14951)

(declare-fun unfocusZipperList!393 (List!61154) List!61152)

(assert (=> b!5303721 (= res!2249803 (not (= r!7292 (generalisedUnion!880 (unfocusZipperList!393 zl!343)))))))

(declare-fun e!3296264 () Bool)

(assert (=> b!5303722 (= e!3296262 e!3296264)))

(declare-fun res!2249795 () Bool)

(assert (=> b!5303722 (=> res!2249795 e!3296264)))

(declare-fun lt!2167285 () Bool)

(declare-fun lt!2167284 () Bool)

(assert (=> b!5303722 (= res!2249795 (or (not (= lt!2167285 lt!2167284)) ((_ is Nil!61029) s!2326)))))

(declare-fun Exists!2132 (Int) Bool)

(assert (=> b!5303722 (= (Exists!2132 lambda!269619) (Exists!2132 lambda!269620))))

(declare-fun lt!2167273 () Unit!153322)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!786 (Regex!14951 Regex!14951 List!61153) Unit!153322)

(assert (=> b!5303722 (= lt!2167273 (lemmaExistCutMatchRandMatchRSpecEquivalent!786 (regOne!30414 r!7292) (regTwo!30414 r!7292) s!2326))))

(assert (=> b!5303722 (= lt!2167284 (Exists!2132 lambda!269619))))

(declare-datatypes ((tuple2!64300 0))(
  ( (tuple2!64301 (_1!35453 List!61153) (_2!35453 List!61153)) )
))
(declare-datatypes ((Option!15062 0))(
  ( (None!15061) (Some!15061 (v!51090 tuple2!64300)) )
))
(declare-fun isDefined!11765 (Option!15062) Bool)

(declare-fun findConcatSeparation!1476 (Regex!14951 Regex!14951 List!61153 List!61153 List!61153) Option!15062)

(assert (=> b!5303722 (= lt!2167284 (isDefined!11765 (findConcatSeparation!1476 (regOne!30414 r!7292) (regTwo!30414 r!7292) Nil!61029 s!2326 s!2326)))))

(declare-fun lt!2167276 () Unit!153322)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1240 (Regex!14951 Regex!14951 List!61153) Unit!153322)

(assert (=> b!5303722 (= lt!2167276 (lemmaFindConcatSeparationEquivalentToExists!1240 (regOne!30414 r!7292) (regTwo!30414 r!7292) s!2326))))

(declare-fun b!5303723 () Bool)

(declare-fun e!3296266 () Unit!153322)

(declare-fun Unit!153324 () Unit!153322)

(assert (=> b!5303723 (= e!3296266 Unit!153324)))

(declare-fun lt!2167320 () Unit!153322)

(declare-fun lt!2167282 () (InoxSet Context!8670))

(assert (=> b!5303723 (= lt!2167320 (lemmaZipperConcatMatchesSameAsBothZippers!188 lt!2167304 lt!2167282 (t!374358 s!2326)))))

(declare-fun res!2249796 () Bool)

(assert (=> b!5303723 (= res!2249796 (matchZipper!1195 lt!2167304 (t!374358 s!2326)))))

(declare-fun e!3296269 () Bool)

(assert (=> b!5303723 (=> res!2249796 e!3296269)))

(assert (=> b!5303723 (= (matchZipper!1195 ((_ map or) lt!2167304 lt!2167282) (t!374358 s!2326)) e!3296269)))

(declare-fun b!5303724 () Bool)

(declare-fun res!2249804 () Bool)

(declare-fun e!3296261 () Bool)

(assert (=> b!5303724 (=> res!2249804 e!3296261)))

(declare-fun contextDepthTotal!92 (Context!8670) Int)

(assert (=> b!5303724 (= res!2249804 (>= (contextDepthTotal!92 lt!2167274) (contextDepthTotal!92 (h!67478 zl!343))))))

(declare-fun b!5303725 () Bool)

(assert (=> b!5303725 (= e!3296269 (matchZipper!1195 lt!2167282 (t!374358 s!2326)))))

(declare-fun b!5303726 () Bool)

(declare-fun e!3296253 () Bool)

(assert (=> b!5303726 (= e!3296253 true)))

(declare-fun lt!2167295 () Regex!14951)

(declare-fun lt!2167281 () Bool)

(declare-fun matchR!7136 (Regex!14951 List!61153) Bool)

(assert (=> b!5303726 (= lt!2167281 (matchR!7136 (Concat!23796 lt!2167295 (regTwo!30414 r!7292)) s!2326))))

(declare-fun b!5303727 () Bool)

(declare-fun res!2249781 () Bool)

(declare-fun e!3296265 () Bool)

(assert (=> b!5303727 (=> (not res!2249781) (not e!3296265))))

(declare-fun z!1189 () (InoxSet Context!8670))

(declare-fun toList!8735 ((InoxSet Context!8670)) List!61154)

(assert (=> b!5303727 (= res!2249781 (= (toList!8735 z!1189) zl!343))))

(declare-fun b!5303728 () Bool)

(declare-fun res!2249785 () Bool)

(assert (=> b!5303728 (=> res!2249785 e!3296262)))

(assert (=> b!5303728 (= res!2249785 (not ((_ is Cons!61028) (exprs!4835 (h!67478 zl!343)))))))

(declare-fun e!3296267 () Bool)

(assert (=> b!5303729 (= e!3296264 e!3296267)))

(declare-fun res!2249783 () Bool)

(assert (=> b!5303729 (=> res!2249783 e!3296267)))

(assert (=> b!5303729 (= res!2249783 (or (and ((_ is ElementMatch!14951) (regOne!30414 r!7292)) (= (c!920783 (regOne!30414 r!7292)) (h!67477 s!2326))) ((_ is Union!14951) (regOne!30414 r!7292)) (not ((_ is Concat!23796) (regOne!30414 r!7292)))))))

(declare-fun lt!2167292 () Unit!153322)

(assert (=> b!5303729 (= lt!2167292 e!3296266)))

(declare-fun c!920782 () Bool)

(declare-fun nullable!5120 (Regex!14951) Bool)

(assert (=> b!5303729 (= c!920782 (nullable!5120 (h!67476 (exprs!4835 (h!67478 zl!343)))))))

(assert (=> b!5303729 (= (flatMap!678 z!1189 lambda!269621) (derivationStepZipperUp!323 (h!67478 zl!343) (h!67477 s!2326)))))

(declare-fun lt!2167309 () Unit!153322)

(assert (=> b!5303729 (= lt!2167309 (lemmaFlatMapOnSingletonSet!210 z!1189 (h!67478 zl!343) lambda!269621))))

(declare-fun lt!2167307 () Context!8670)

(assert (=> b!5303729 (= lt!2167282 (derivationStepZipperUp!323 lt!2167307 (h!67477 s!2326)))))

(declare-fun derivationStepZipperDown!399 (Regex!14951 Context!8670 C!30172) (InoxSet Context!8670))

(assert (=> b!5303729 (= lt!2167304 (derivationStepZipperDown!399 (h!67476 (exprs!4835 (h!67478 zl!343))) lt!2167307 (h!67477 s!2326)))))

(assert (=> b!5303729 (= lt!2167307 (Context!8671 (t!374357 (exprs!4835 (h!67478 zl!343)))))))

(declare-fun lt!2167310 () (InoxSet Context!8670))

(assert (=> b!5303729 (= lt!2167310 (derivationStepZipperUp!323 (Context!8671 (Cons!61028 (h!67476 (exprs!4835 (h!67478 zl!343))) (t!374357 (exprs!4835 (h!67478 zl!343))))) (h!67477 s!2326)))))

(declare-fun b!5303730 () Bool)

(declare-fun e!3296274 () Bool)

(assert (=> b!5303730 (= e!3296274 e!3296261)))

(declare-fun res!2249799 () Bool)

(assert (=> b!5303730 (=> res!2249799 e!3296261)))

(assert (=> b!5303730 (= res!2249799 (not (= (exprs!4835 (h!67478 zl!343)) (Cons!61028 lt!2167295 (t!374357 (exprs!4835 (h!67478 zl!343)))))))))

(assert (=> b!5303730 (= lt!2167295 (Concat!23796 (regOne!30414 (regOne!30414 r!7292)) (regTwo!30414 (regOne!30414 r!7292))))))

(declare-fun setElem!34085 () Context!8670)

(declare-fun tp!1478688 () Bool)

(declare-fun e!3296268 () Bool)

(declare-fun setNonEmpty!34085 () Bool)

(declare-fun inv!80624 (Context!8670) Bool)

(assert (=> setNonEmpty!34085 (= setRes!34085 (and tp!1478688 (inv!80624 setElem!34085) e!3296268))))

(declare-fun setRest!34085 () (InoxSet Context!8670))

(assert (=> setNonEmpty!34085 (= z!1189 ((_ map or) (store ((as const (Array Context!8670 Bool)) false) setElem!34085 true) setRest!34085))))

(declare-fun b!5303731 () Bool)

(declare-fun e!3296258 () Bool)

(declare-fun tp!1478686 () Bool)

(assert (=> b!5303731 (= e!3296258 tp!1478686)))

(declare-fun res!2249794 () Bool)

(assert (=> start!559418 (=> (not res!2249794) (not e!3296265))))

(declare-fun validRegex!6687 (Regex!14951) Bool)

(assert (=> start!559418 (= res!2249794 (validRegex!6687 r!7292))))

(assert (=> start!559418 e!3296265))

(assert (=> start!559418 e!3296254))

(declare-fun condSetEmpty!34085 () Bool)

(assert (=> start!559418 (= condSetEmpty!34085 (= z!1189 ((as const (Array Context!8670 Bool)) false)))))

(assert (=> start!559418 setRes!34085))

(declare-fun e!3296263 () Bool)

(assert (=> start!559418 e!3296263))

(assert (=> start!559418 e!3296259))

(declare-fun b!5303732 () Bool)

(declare-fun e!3296270 () Bool)

(assert (=> b!5303732 (= e!3296270 (matchZipper!1195 lt!2167290 (t!374358 s!2326)))))

(declare-fun b!5303733 () Bool)

(assert (=> b!5303733 (= e!3296265 (not e!3296262))))

(declare-fun res!2249786 () Bool)

(assert (=> b!5303733 (=> res!2249786 e!3296262)))

(assert (=> b!5303733 (= res!2249786 (not ((_ is Cons!61030) zl!343)))))

(declare-fun matchRSpec!2054 (Regex!14951 List!61153) Bool)

(assert (=> b!5303733 (= lt!2167285 (matchRSpec!2054 r!7292 s!2326))))

(assert (=> b!5303733 (= lt!2167285 (matchR!7136 r!7292 s!2326))))

(declare-fun lt!2167317 () Unit!153322)

(declare-fun mainMatchTheorem!2054 (Regex!14951 List!61153) Unit!153322)

(assert (=> b!5303733 (= lt!2167317 (mainMatchTheorem!2054 r!7292 s!2326))))

(declare-fun b!5303734 () Bool)

(declare-fun tp!1478692 () Bool)

(declare-fun tp!1478693 () Bool)

(assert (=> b!5303734 (= e!3296254 (and tp!1478692 tp!1478693))))

(declare-fun b!5303735 () Bool)

(declare-fun tp!1478691 () Bool)

(assert (=> b!5303735 (= e!3296268 tp!1478691)))

(declare-fun b!5303736 () Bool)

(declare-fun res!2249805 () Bool)

(assert (=> b!5303736 (=> (not res!2249805) (not e!3296265))))

(declare-fun unfocusZipper!693 (List!61154) Regex!14951)

(assert (=> b!5303736 (= res!2249805 (= r!7292 (unfocusZipper!693 zl!343)))))

(declare-fun b!5303737 () Bool)

(assert (=> b!5303737 (= e!3296261 e!3296260)))

(declare-fun res!2249798 () Bool)

(assert (=> b!5303737 (=> res!2249798 e!3296260)))

(declare-fun zipperDepthTotal!112 (List!61154) Int)

(assert (=> b!5303737 (= res!2249798 (>= (zipperDepthTotal!112 lt!2167289) (zipperDepthTotal!112 zl!343)))))

(assert (=> b!5303737 (= lt!2167289 (Cons!61030 lt!2167274 Nil!61030))))

(declare-fun b!5303738 () Bool)

(declare-fun Unit!153325 () Unit!153322)

(assert (=> b!5303738 (= e!3296266 Unit!153325)))

(declare-fun b!5303739 () Bool)

(declare-fun tp!1478687 () Bool)

(declare-fun tp!1478684 () Bool)

(assert (=> b!5303739 (= e!3296254 (and tp!1478687 tp!1478684))))

(declare-fun b!5303740 () Bool)

(assert (=> b!5303740 (= e!3296257 (not (matchZipper!1195 lt!2167303 (t!374358 s!2326))))))

(declare-fun tp!1478690 () Bool)

(declare-fun b!5303741 () Bool)

(assert (=> b!5303741 (= e!3296263 (and (inv!80624 (h!67478 zl!343)) e!3296258 tp!1478690))))

(declare-fun b!5303742 () Bool)

(declare-fun res!2249790 () Bool)

(assert (=> b!5303742 (=> res!2249790 e!3296262)))

(declare-fun generalisedConcat!620 (List!61152) Regex!14951)

(assert (=> b!5303742 (= res!2249790 (not (= r!7292 (generalisedConcat!620 (exprs!4835 (h!67478 zl!343))))))))

(declare-fun b!5303743 () Bool)

(declare-fun res!2249784 () Bool)

(assert (=> b!5303743 (=> res!2249784 e!3296267)))

(assert (=> b!5303743 (= res!2249784 (not (nullable!5120 (regOne!30414 (regOne!30414 r!7292)))))))

(declare-fun b!5303744 () Bool)

(declare-fun res!2249793 () Bool)

(assert (=> b!5303744 (=> res!2249793 e!3296253)))

(assert (=> b!5303744 (= res!2249793 (not (= lt!2167285 (matchR!7136 (Concat!23796 (regOne!30414 r!7292) (regTwo!30414 r!7292)) s!2326))))))

(declare-fun b!5303745 () Bool)

(assert (=> b!5303745 (= e!3296267 e!3296256)))

(declare-fun res!2249789 () Bool)

(assert (=> b!5303745 (=> res!2249789 e!3296256)))

(assert (=> b!5303745 (= res!2249789 (not (= lt!2167304 lt!2167287)))))

(assert (=> b!5303745 (= lt!2167287 ((_ map or) lt!2167280 lt!2167303))))

(assert (=> b!5303745 (= lt!2167303 (derivationStepZipperDown!399 (regTwo!30414 (regOne!30414 r!7292)) lt!2167307 (h!67477 s!2326)))))

(assert (=> b!5303745 (= lt!2167280 (derivationStepZipperDown!399 (regOne!30414 (regOne!30414 r!7292)) lt!2167291 (h!67477 s!2326)))))

(assert (=> b!5303745 (= lt!2167291 (Context!8671 lt!2167313))))

(assert (=> b!5303745 (= lt!2167313 (Cons!61028 (regTwo!30414 (regOne!30414 r!7292)) (t!374357 (exprs!4835 (h!67478 zl!343)))))))

(declare-fun b!5303746 () Bool)

(assert (=> b!5303746 (= e!3296272 e!3296274)))

(declare-fun res!2249782 () Bool)

(assert (=> b!5303746 (=> res!2249782 e!3296274)))

(assert (=> b!5303746 (= res!2249782 e!3296255)))

(declare-fun res!2249780 () Bool)

(assert (=> b!5303746 (=> (not res!2249780) (not e!3296255))))

(assert (=> b!5303746 (= res!2249780 (not (= lt!2167288 (matchZipper!1195 lt!2167297 (t!374358 s!2326)))))))

(assert (=> b!5303746 (= (matchZipper!1195 lt!2167300 (t!374358 s!2326)) e!3296270)))

(declare-fun res!2249791 () Bool)

(assert (=> b!5303746 (=> res!2249791 e!3296270)))

(assert (=> b!5303746 (= res!2249791 lt!2167279)))

(declare-fun lt!2167321 () Unit!153322)

(assert (=> b!5303746 (= lt!2167321 (lemmaZipperConcatMatchesSameAsBothZippers!188 lt!2167280 lt!2167290 (t!374358 s!2326)))))

(assert (=> b!5303746 (= (flatMap!678 lt!2167294 lambda!269621) (derivationStepZipperUp!323 lt!2167291 (h!67477 s!2326)))))

(declare-fun lt!2167308 () Unit!153322)

(assert (=> b!5303746 (= lt!2167308 (lemmaFlatMapOnSingletonSet!210 lt!2167294 lt!2167291 lambda!269621))))

(declare-fun b!5303747 () Bool)

(assert (=> b!5303747 (= e!3296254 tp_is_empty!39155)))

(assert (=> b!5303748 (= e!3296260 e!3296253)))

(declare-fun res!2249801 () Bool)

(assert (=> b!5303748 (=> res!2249801 e!3296253)))

(declare-fun lt!2167275 () Bool)

(declare-fun lt!2167316 () Bool)

(declare-fun lt!2167302 () Bool)

(declare-fun lt!2167305 () Bool)

(declare-fun lt!2167311 () Bool)

(assert (=> b!5303748 (= res!2249801 (or (not (= lt!2167275 (or lt!2167305 lt!2167311))) (not (= lt!2167275 (or lt!2167302 lt!2167316)))))))

(assert (=> b!5303748 (= lt!2167275 (matchZipper!1195 z!1189 s!2326))))

(assert (=> b!5303748 (= (Exists!2132 lambda!269624) (Exists!2132 lambda!269625))))

(declare-fun lt!2167318 () Unit!153322)

(assert (=> b!5303748 (= lt!2167318 (lemmaExistCutMatchRandMatchRSpecEquivalent!786 (regTwo!30414 (regOne!30414 r!7292)) lt!2167319 s!2326))))

(assert (=> b!5303748 (= (isDefined!11765 (findConcatSeparation!1476 (regTwo!30414 (regOne!30414 r!7292)) lt!2167319 Nil!61029 s!2326 s!2326)) (Exists!2132 lambda!269624))))

(declare-fun lt!2167314 () Unit!153322)

(assert (=> b!5303748 (= lt!2167314 (lemmaFindConcatSeparationEquivalentToExists!1240 (regTwo!30414 (regOne!30414 r!7292)) lt!2167319 s!2326))))

(assert (=> b!5303748 (= lt!2167319 (generalisedConcat!620 (t!374357 (exprs!4835 (h!67478 zl!343)))))))

(assert (=> b!5303748 (= lt!2167316 (matchRSpec!2054 lt!2167296 s!2326))))

(declare-fun lt!2167298 () Unit!153322)

(assert (=> b!5303748 (= lt!2167298 (mainMatchTheorem!2054 lt!2167296 s!2326))))

(assert (=> b!5303748 (= (Exists!2132 lambda!269622) (Exists!2132 lambda!269623))))

(declare-fun lt!2167312 () Unit!153322)

(assert (=> b!5303748 (= lt!2167312 (lemmaExistCutMatchRandMatchRSpecEquivalent!786 (regOne!30414 (regOne!30414 r!7292)) lt!2167296 s!2326))))

(assert (=> b!5303748 (= (isDefined!11765 (findConcatSeparation!1476 (regOne!30414 (regOne!30414 r!7292)) lt!2167296 Nil!61029 s!2326 s!2326)) (Exists!2132 lambda!269622))))

(declare-fun lt!2167315 () Unit!153322)

(assert (=> b!5303748 (= lt!2167315 (lemmaFindConcatSeparationEquivalentToExists!1240 (regOne!30414 (regOne!30414 r!7292)) lt!2167296 s!2326))))

(declare-fun lt!2167306 () Regex!14951)

(assert (=> b!5303748 (= lt!2167302 (matchRSpec!2054 lt!2167306 s!2326))))

(declare-fun lt!2167283 () Unit!153322)

(assert (=> b!5303748 (= lt!2167283 (mainMatchTheorem!2054 lt!2167306 s!2326))))

(assert (=> b!5303748 (= lt!2167316 lt!2167311)))

(assert (=> b!5303748 (= lt!2167311 (matchZipper!1195 lt!2167294 s!2326))))

(assert (=> b!5303748 (= lt!2167316 (matchR!7136 lt!2167296 s!2326))))

(declare-fun lt!2167293 () Unit!153322)

(declare-fun theoremZipperRegexEquiv!361 ((InoxSet Context!8670) List!61154 Regex!14951 List!61153) Unit!153322)

(assert (=> b!5303748 (= lt!2167293 (theoremZipperRegexEquiv!361 lt!2167294 (Cons!61030 lt!2167291 Nil!61030) lt!2167296 s!2326))))

(assert (=> b!5303748 (= lt!2167296 (generalisedConcat!620 lt!2167313))))

(assert (=> b!5303748 (= lt!2167302 lt!2167305)))

(assert (=> b!5303748 (= lt!2167305 (matchZipper!1195 lt!2167322 s!2326))))

(assert (=> b!5303748 (= lt!2167302 (matchR!7136 lt!2167306 s!2326))))

(declare-fun lt!2167301 () Unit!153322)

(assert (=> b!5303748 (= lt!2167301 (theoremZipperRegexEquiv!361 lt!2167322 lt!2167289 lt!2167306 s!2326))))

(assert (=> b!5303748 (= lt!2167306 (generalisedConcat!620 lt!2167299))))

(declare-fun b!5303749 () Bool)

(declare-fun res!2249792 () Bool)

(assert (=> b!5303749 (=> res!2249792 e!3296264)))

(declare-fun isEmpty!32988 (List!61152) Bool)

(assert (=> b!5303749 (= res!2249792 (isEmpty!32988 (t!374357 (exprs!4835 (h!67478 zl!343)))))))

(assert (= (and start!559418 res!2249794) b!5303727))

(assert (= (and b!5303727 res!2249781) b!5303736))

(assert (= (and b!5303736 res!2249805) b!5303733))

(assert (= (and b!5303733 (not res!2249786)) b!5303717))

(assert (= (and b!5303717 (not res!2249807)) b!5303742))

(assert (= (and b!5303742 (not res!2249790)) b!5303728))

(assert (= (and b!5303728 (not res!2249785)) b!5303721))

(assert (= (and b!5303721 (not res!2249803)) b!5303719))

(assert (= (and b!5303719 (not res!2249787)) b!5303722))

(assert (= (and b!5303722 (not res!2249795)) b!5303749))

(assert (= (and b!5303749 (not res!2249792)) b!5303729))

(assert (= (and b!5303729 c!920782) b!5303723))

(assert (= (and b!5303729 (not c!920782)) b!5303738))

(assert (= (and b!5303723 (not res!2249796)) b!5303725))

(assert (= (and b!5303729 (not res!2249783)) b!5303743))

(assert (= (and b!5303743 (not res!2249784)) b!5303745))

(assert (= (and b!5303745 (not res!2249789)) b!5303718))

(assert (= (and b!5303718 (not res!2249797)) b!5303713))

(assert (= (and b!5303718 res!2249788) b!5303740))

(assert (= (and b!5303718 (not res!2249802)) b!5303712))

(assert (= (and b!5303712 (not res!2249800)) b!5303746))

(assert (= (and b!5303746 (not res!2249791)) b!5303732))

(assert (= (and b!5303746 res!2249780) b!5303716))

(assert (= (and b!5303746 (not res!2249782)) b!5303730))

(assert (= (and b!5303730 (not res!2249799)) b!5303724))

(assert (= (and b!5303724 (not res!2249804)) b!5303737))

(assert (= (and b!5303737 (not res!2249798)) b!5303715))

(assert (= (and b!5303715 (not res!2249806)) b!5303748))

(assert (= (and b!5303748 (not res!2249801)) b!5303744))

(assert (= (and b!5303744 (not res!2249793)) b!5303726))

(assert (= (and start!559418 ((_ is ElementMatch!14951) r!7292)) b!5303747))

(assert (= (and start!559418 ((_ is Concat!23796) r!7292)) b!5303739))

(assert (= (and start!559418 ((_ is Star!14951) r!7292)) b!5303714))

(assert (= (and start!559418 ((_ is Union!14951) r!7292)) b!5303734))

(assert (= (and start!559418 condSetEmpty!34085) setIsEmpty!34085))

(assert (= (and start!559418 (not condSetEmpty!34085)) setNonEmpty!34085))

(assert (= setNonEmpty!34085 b!5303735))

(assert (= b!5303741 b!5303731))

(assert (= (and start!559418 ((_ is Cons!61030) zl!343)) b!5303741))

(assert (= (and start!559418 ((_ is Cons!61029) s!2326)) b!5303720))

(declare-fun m!6341004 () Bool)

(assert (=> b!5303732 m!6341004))

(declare-fun m!6341006 () Bool)

(assert (=> b!5303721 m!6341006))

(assert (=> b!5303721 m!6341006))

(declare-fun m!6341008 () Bool)

(assert (=> b!5303721 m!6341008))

(declare-fun m!6341010 () Bool)

(assert (=> b!5303729 m!6341010))

(declare-fun m!6341012 () Bool)

(assert (=> b!5303729 m!6341012))

(declare-fun m!6341014 () Bool)

(assert (=> b!5303729 m!6341014))

(declare-fun m!6341016 () Bool)

(assert (=> b!5303729 m!6341016))

(declare-fun m!6341018 () Bool)

(assert (=> b!5303729 m!6341018))

(declare-fun m!6341020 () Bool)

(assert (=> b!5303729 m!6341020))

(declare-fun m!6341022 () Bool)

(assert (=> b!5303729 m!6341022))

(declare-fun m!6341024 () Bool)

(assert (=> b!5303712 m!6341024))

(declare-fun m!6341026 () Bool)

(assert (=> b!5303712 m!6341026))

(declare-fun m!6341028 () Bool)

(assert (=> b!5303712 m!6341028))

(declare-fun m!6341030 () Bool)

(assert (=> b!5303712 m!6341030))

(declare-fun m!6341032 () Bool)

(assert (=> b!5303712 m!6341032))

(declare-fun m!6341034 () Bool)

(assert (=> b!5303712 m!6341034))

(declare-fun m!6341036 () Bool)

(assert (=> b!5303712 m!6341036))

(declare-fun m!6341038 () Bool)

(assert (=> b!5303736 m!6341038))

(declare-fun m!6341040 () Bool)

(assert (=> b!5303715 m!6341040))

(declare-fun m!6341042 () Bool)

(assert (=> b!5303715 m!6341042))

(declare-fun m!6341044 () Bool)

(assert (=> b!5303749 m!6341044))

(declare-fun m!6341046 () Bool)

(assert (=> b!5303717 m!6341046))

(declare-fun m!6341048 () Bool)

(assert (=> b!5303740 m!6341048))

(declare-fun m!6341050 () Bool)

(assert (=> b!5303741 m!6341050))

(declare-fun m!6341052 () Bool)

(assert (=> b!5303723 m!6341052))

(declare-fun m!6341054 () Bool)

(assert (=> b!5303723 m!6341054))

(declare-fun m!6341056 () Bool)

(assert (=> b!5303723 m!6341056))

(declare-fun m!6341058 () Bool)

(assert (=> b!5303725 m!6341058))

(declare-fun m!6341060 () Bool)

(assert (=> b!5303722 m!6341060))

(declare-fun m!6341062 () Bool)

(assert (=> b!5303722 m!6341062))

(declare-fun m!6341064 () Bool)

(assert (=> b!5303722 m!6341064))

(assert (=> b!5303722 m!6341060))

(declare-fun m!6341066 () Bool)

(assert (=> b!5303722 m!6341066))

(declare-fun m!6341068 () Bool)

(assert (=> b!5303722 m!6341068))

(assert (=> b!5303722 m!6341062))

(declare-fun m!6341070 () Bool)

(assert (=> b!5303722 m!6341070))

(declare-fun m!6341072 () Bool)

(assert (=> setNonEmpty!34085 m!6341072))

(assert (=> b!5303713 m!6341048))

(declare-fun m!6341074 () Bool)

(assert (=> b!5303744 m!6341074))

(declare-fun m!6341076 () Bool)

(assert (=> b!5303746 m!6341076))

(assert (=> b!5303746 m!6341024))

(declare-fun m!6341078 () Bool)

(assert (=> b!5303746 m!6341078))

(declare-fun m!6341080 () Bool)

(assert (=> b!5303746 m!6341080))

(declare-fun m!6341082 () Bool)

(assert (=> b!5303746 m!6341082))

(declare-fun m!6341084 () Bool)

(assert (=> b!5303746 m!6341084))

(declare-fun m!6341086 () Bool)

(assert (=> b!5303745 m!6341086))

(declare-fun m!6341088 () Bool)

(assert (=> b!5303745 m!6341088))

(declare-fun m!6341090 () Bool)

(assert (=> b!5303742 m!6341090))

(declare-fun m!6341092 () Bool)

(assert (=> b!5303748 m!6341092))

(declare-fun m!6341094 () Bool)

(assert (=> b!5303748 m!6341094))

(declare-fun m!6341096 () Bool)

(assert (=> b!5303748 m!6341096))

(declare-fun m!6341098 () Bool)

(assert (=> b!5303748 m!6341098))

(declare-fun m!6341100 () Bool)

(assert (=> b!5303748 m!6341100))

(declare-fun m!6341102 () Bool)

(assert (=> b!5303748 m!6341102))

(declare-fun m!6341104 () Bool)

(assert (=> b!5303748 m!6341104))

(declare-fun m!6341106 () Bool)

(assert (=> b!5303748 m!6341106))

(declare-fun m!6341108 () Bool)

(assert (=> b!5303748 m!6341108))

(declare-fun m!6341110 () Bool)

(assert (=> b!5303748 m!6341110))

(assert (=> b!5303748 m!6341108))

(declare-fun m!6341112 () Bool)

(assert (=> b!5303748 m!6341112))

(declare-fun m!6341114 () Bool)

(assert (=> b!5303748 m!6341114))

(declare-fun m!6341116 () Bool)

(assert (=> b!5303748 m!6341116))

(declare-fun m!6341118 () Bool)

(assert (=> b!5303748 m!6341118))

(declare-fun m!6341120 () Bool)

(assert (=> b!5303748 m!6341120))

(assert (=> b!5303748 m!6341092))

(declare-fun m!6341122 () Bool)

(assert (=> b!5303748 m!6341122))

(declare-fun m!6341124 () Bool)

(assert (=> b!5303748 m!6341124))

(assert (=> b!5303748 m!6341114))

(declare-fun m!6341126 () Bool)

(assert (=> b!5303748 m!6341126))

(declare-fun m!6341128 () Bool)

(assert (=> b!5303748 m!6341128))

(declare-fun m!6341130 () Bool)

(assert (=> b!5303748 m!6341130))

(declare-fun m!6341132 () Bool)

(assert (=> b!5303748 m!6341132))

(declare-fun m!6341134 () Bool)

(assert (=> b!5303748 m!6341134))

(declare-fun m!6341136 () Bool)

(assert (=> b!5303748 m!6341136))

(assert (=> b!5303748 m!6341126))

(declare-fun m!6341138 () Bool)

(assert (=> b!5303748 m!6341138))

(declare-fun m!6341140 () Bool)

(assert (=> b!5303748 m!6341140))

(declare-fun m!6341142 () Bool)

(assert (=> b!5303748 m!6341142))

(declare-fun m!6341144 () Bool)

(assert (=> b!5303724 m!6341144))

(declare-fun m!6341146 () Bool)

(assert (=> b!5303724 m!6341146))

(declare-fun m!6341148 () Bool)

(assert (=> b!5303716 m!6341148))

(assert (=> b!5303716 m!6341148))

(declare-fun m!6341150 () Bool)

(assert (=> b!5303716 m!6341150))

(declare-fun m!6341152 () Bool)

(assert (=> b!5303737 m!6341152))

(declare-fun m!6341154 () Bool)

(assert (=> b!5303737 m!6341154))

(assert (=> b!5303718 m!6341054))

(declare-fun m!6341156 () Bool)

(assert (=> b!5303718 m!6341156))

(declare-fun m!6341158 () Bool)

(assert (=> b!5303718 m!6341158))

(declare-fun m!6341160 () Bool)

(assert (=> b!5303718 m!6341160))

(declare-fun m!6341162 () Bool)

(assert (=> b!5303726 m!6341162))

(declare-fun m!6341164 () Bool)

(assert (=> b!5303733 m!6341164))

(declare-fun m!6341166 () Bool)

(assert (=> b!5303733 m!6341166))

(declare-fun m!6341168 () Bool)

(assert (=> b!5303733 m!6341168))

(declare-fun m!6341170 () Bool)

(assert (=> b!5303727 m!6341170))

(declare-fun m!6341172 () Bool)

(assert (=> start!559418 m!6341172))

(declare-fun m!6341174 () Bool)

(assert (=> b!5303743 m!6341174))

(check-sat (not b!5303729) (not b!5303732) (not b!5303721) (not b!5303716) (not b!5303736) (not b!5303713) (not b!5303715) (not b!5303720) (not b!5303725) (not b!5303741) (not b!5303727) (not b!5303734) (not b!5303731) (not b!5303718) (not b!5303748) (not b!5303737) tp_is_empty!39155 (not b!5303745) (not b!5303722) (not b!5303717) (not b!5303746) (not b!5303744) (not b!5303742) (not b!5303712) (not b!5303735) (not b!5303749) (not b!5303740) (not b!5303733) (not b!5303724) (not b!5303723) (not start!559418) (not b!5303743) (not b!5303739) (not b!5303714) (not setNonEmpty!34085) (not b!5303726))
(check-sat)
