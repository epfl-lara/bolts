; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!568110 () Bool)

(assert start!568110)

(declare-fun b!5409232 () Bool)

(assert (=> b!5409232 true))

(assert (=> b!5409232 true))

(declare-fun lambda!282198 () Int)

(declare-fun lambda!282197 () Int)

(assert (=> b!5409232 (not (= lambda!282198 lambda!282197))))

(assert (=> b!5409232 true))

(assert (=> b!5409232 true))

(declare-fun b!5409229 () Bool)

(assert (=> b!5409229 true))

(declare-fun b!5409231 () Bool)

(assert (=> b!5409231 true))

(declare-fun bs!1249530 () Bool)

(declare-fun b!5409214 () Bool)

(assert (= bs!1249530 (and b!5409214 b!5409232)))

(declare-datatypes ((C!30636 0))(
  ( (C!30637 (val!25020 Int)) )
))
(declare-datatypes ((Regex!15183 0))(
  ( (ElementMatch!15183 (c!943091 C!30636)) (Concat!24028 (regOne!30878 Regex!15183) (regTwo!30878 Regex!15183)) (EmptyExpr!15183) (Star!15183 (reg!15512 Regex!15183)) (EmptyLang!15183) (Union!15183 (regOne!30879 Regex!15183) (regTwo!30879 Regex!15183)) )
))
(declare-fun r!7292 () Regex!15183)

(declare-fun lt!2205243 () Regex!15183)

(declare-fun lambda!282202 () Int)

(assert (=> bs!1249530 (= (= lt!2205243 (regOne!30878 r!7292)) (= lambda!282202 lambda!282197))))

(assert (=> bs!1249530 (not (= lambda!282202 lambda!282198))))

(assert (=> b!5409214 true))

(assert (=> b!5409214 true))

(assert (=> b!5409214 true))

(declare-fun lambda!282203 () Int)

(assert (=> bs!1249530 (not (= lambda!282203 lambda!282197))))

(assert (=> bs!1249530 (= (= lt!2205243 (regOne!30878 r!7292)) (= lambda!282203 lambda!282198))))

(assert (=> b!5409214 (not (= lambda!282203 lambda!282202))))

(assert (=> b!5409214 true))

(assert (=> b!5409214 true))

(assert (=> b!5409214 true))

(declare-fun b!5409190 () Bool)

(declare-fun e!3353292 () Bool)

(declare-fun lt!2205290 () Bool)

(assert (=> b!5409190 (= e!3353292 lt!2205290)))

(declare-fun b!5409191 () Bool)

(declare-fun res!2300145 () Bool)

(declare-fun e!3353288 () Bool)

(assert (=> b!5409191 (=> res!2300145 e!3353288)))

(declare-datatypes ((List!61848 0))(
  ( (Nil!61724) (Cons!61724 (h!68172 Regex!15183) (t!375071 List!61848)) )
))
(declare-datatypes ((Context!9134 0))(
  ( (Context!9135 (exprs!5067 List!61848)) )
))
(declare-datatypes ((List!61849 0))(
  ( (Nil!61725) (Cons!61725 (h!68173 Context!9134) (t!375072 List!61849)) )
))
(declare-fun zl!343 () List!61849)

(get-info :version)

(assert (=> b!5409191 (= res!2300145 (not ((_ is Cons!61724) (exprs!5067 (h!68173 zl!343)))))))

(declare-fun b!5409192 () Bool)

(declare-fun res!2300169 () Bool)

(declare-fun e!3353299 () Bool)

(assert (=> b!5409192 (=> res!2300169 e!3353299)))

(declare-fun lt!2205279 () Bool)

(assert (=> b!5409192 (= res!2300169 (not lt!2205279))))

(declare-fun setRes!35225 () Bool)

(declare-fun setElem!35225 () Context!9134)

(declare-fun setNonEmpty!35225 () Bool)

(declare-fun e!3353302 () Bool)

(declare-fun tp!1495424 () Bool)

(declare-fun inv!81204 (Context!9134) Bool)

(assert (=> setNonEmpty!35225 (= setRes!35225 (and tp!1495424 (inv!81204 setElem!35225) e!3353302))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9134))

(declare-fun setRest!35225 () (InoxSet Context!9134))

(assert (=> setNonEmpty!35225 (= z!1189 ((_ map or) (store ((as const (Array Context!9134 Bool)) false) setElem!35225 true) setRest!35225))))

(declare-fun setIsEmpty!35225 () Bool)

(assert (=> setIsEmpty!35225 setRes!35225))

(declare-fun b!5409193 () Bool)

(declare-fun e!3353282 () Bool)

(declare-fun e!3353304 () Bool)

(assert (=> b!5409193 (= e!3353282 e!3353304)))

(declare-fun res!2300163 () Bool)

(assert (=> b!5409193 (=> res!2300163 e!3353304)))

(declare-fun lt!2205283 () (InoxSet Context!9134))

(declare-fun lt!2205282 () (InoxSet Context!9134))

(assert (=> b!5409193 (= res!2300163 (not (= lt!2205283 lt!2205282)))))

(declare-datatypes ((List!61850 0))(
  ( (Nil!61726) (Cons!61726 (h!68174 C!30636) (t!375073 List!61850)) )
))
(declare-fun s!2326 () List!61850)

(declare-fun lt!2205242 () Context!9134)

(declare-fun derivationStepZipperDown!631 (Regex!15183 Context!9134 C!30636) (InoxSet Context!9134))

(assert (=> b!5409193 (= lt!2205282 (derivationStepZipperDown!631 (reg!15512 (regOne!30878 r!7292)) lt!2205242 (h!68174 s!2326)))))

(declare-fun lt!2205250 () List!61848)

(assert (=> b!5409193 (= lt!2205242 (Context!9135 lt!2205250))))

(declare-fun lt!2205246 () Regex!15183)

(assert (=> b!5409193 (= lt!2205250 (Cons!61724 lt!2205246 (t!375071 (exprs!5067 (h!68173 zl!343)))))))

(assert (=> b!5409193 (= lt!2205246 (Star!15183 (reg!15512 (regOne!30878 r!7292))))))

(declare-fun b!5409194 () Bool)

(declare-fun e!3353283 () Bool)

(declare-fun e!3353297 () Bool)

(assert (=> b!5409194 (= e!3353283 e!3353297)))

(declare-fun res!2300157 () Bool)

(assert (=> b!5409194 (=> res!2300157 e!3353297)))

(declare-fun lt!2205258 () (InoxSet Context!9134))

(declare-fun lt!2205249 () Bool)

(declare-fun matchZipper!1427 ((InoxSet Context!9134) List!61850) Bool)

(assert (=> b!5409194 (= res!2300157 (not (= lt!2205249 (matchZipper!1427 lt!2205258 (t!375073 s!2326)))))))

(declare-fun lt!2205234 () (InoxSet Context!9134))

(assert (=> b!5409194 (= lt!2205249 (matchZipper!1427 lt!2205234 s!2326))))

(declare-fun b!5409195 () Bool)

(declare-fun e!3353286 () Bool)

(declare-fun e!3353281 () Bool)

(assert (=> b!5409195 (= e!3353286 e!3353281)))

(declare-fun res!2300156 () Bool)

(assert (=> b!5409195 (=> res!2300156 e!3353281)))

(declare-fun lt!2205280 () Context!9134)

(declare-fun lt!2205264 () Regex!15183)

(declare-fun unfocusZipper!925 (List!61849) Regex!15183)

(assert (=> b!5409195 (= res!2300156 (not (= (unfocusZipper!925 (Cons!61725 lt!2205280 Nil!61725)) lt!2205264)))))

(declare-fun lt!2205277 () Regex!15183)

(assert (=> b!5409195 (= lt!2205264 (Concat!24028 (reg!15512 (regOne!30878 r!7292)) lt!2205277))))

(declare-fun b!5409196 () Bool)

(declare-fun e!3353294 () Bool)

(assert (=> b!5409196 (= e!3353294 true)))

(declare-fun b!5409197 () Bool)

(declare-fun res!2300164 () Bool)

(assert (=> b!5409197 (=> res!2300164 e!3353288)))

(assert (=> b!5409197 (= res!2300164 (or ((_ is EmptyExpr!15183) r!7292) ((_ is EmptyLang!15183) r!7292) ((_ is ElementMatch!15183) r!7292) ((_ is Union!15183) r!7292) (not ((_ is Concat!24028) r!7292))))))

(declare-fun b!5409198 () Bool)

(declare-fun res!2300140 () Bool)

(assert (=> b!5409198 (=> res!2300140 e!3353288)))

(declare-fun generalisedConcat!852 (List!61848) Regex!15183)

(assert (=> b!5409198 (= res!2300140 (not (= r!7292 (generalisedConcat!852 (exprs!5067 (h!68173 zl!343))))))))

(declare-fun b!5409199 () Bool)

(declare-fun e!3353301 () Bool)

(assert (=> b!5409199 (= e!3353281 e!3353301)))

(declare-fun res!2300142 () Bool)

(assert (=> b!5409199 (=> res!2300142 e!3353301)))

(declare-fun lt!2205253 () List!61849)

(assert (=> b!5409199 (= res!2300142 (not (= (unfocusZipper!925 lt!2205253) (reg!15512 (regOne!30878 r!7292)))))))

(declare-fun lt!2205244 () Context!9134)

(assert (=> b!5409199 (= lt!2205253 (Cons!61725 lt!2205244 Nil!61725))))

(declare-fun lt!2205286 () (InoxSet Context!9134))

(declare-fun lambda!282199 () Int)

(declare-fun flatMap!910 ((InoxSet Context!9134) Int) (InoxSet Context!9134))

(declare-fun derivationStepZipperUp!555 (Context!9134 C!30636) (InoxSet Context!9134))

(assert (=> b!5409199 (= (flatMap!910 lt!2205286 lambda!282199) (derivationStepZipperUp!555 lt!2205242 (h!68174 s!2326)))))

(declare-datatypes ((Unit!154254 0))(
  ( (Unit!154255) )
))
(declare-fun lt!2205240 () Unit!154254)

(declare-fun lemmaFlatMapOnSingletonSet!442 ((InoxSet Context!9134) Context!9134 Int) Unit!154254)

(assert (=> b!5409199 (= lt!2205240 (lemmaFlatMapOnSingletonSet!442 lt!2205286 lt!2205242 lambda!282199))))

(declare-fun lt!2205260 () (InoxSet Context!9134))

(assert (=> b!5409199 (= (flatMap!910 lt!2205260 lambda!282199) (derivationStepZipperUp!555 lt!2205244 (h!68174 s!2326)))))

(declare-fun lt!2205257 () Unit!154254)

(assert (=> b!5409199 (= lt!2205257 (lemmaFlatMapOnSingletonSet!442 lt!2205260 lt!2205244 lambda!282199))))

(declare-fun lt!2205274 () (InoxSet Context!9134))

(assert (=> b!5409199 (= lt!2205274 (derivationStepZipperUp!555 lt!2205242 (h!68174 s!2326)))))

(declare-fun lt!2205266 () (InoxSet Context!9134))

(assert (=> b!5409199 (= lt!2205266 (derivationStepZipperUp!555 lt!2205244 (h!68174 s!2326)))))

(assert (=> b!5409199 (= lt!2205286 (store ((as const (Array Context!9134 Bool)) false) lt!2205242 true))))

(assert (=> b!5409199 (= lt!2205260 (store ((as const (Array Context!9134 Bool)) false) lt!2205244 true))))

(declare-fun lt!2205265 () List!61848)

(assert (=> b!5409199 (= lt!2205244 (Context!9135 lt!2205265))))

(assert (=> b!5409199 (= lt!2205265 (Cons!61724 (reg!15512 (regOne!30878 r!7292)) Nil!61724))))

(declare-fun b!5409200 () Bool)

(declare-fun res!2300154 () Bool)

(assert (=> b!5409200 (=> res!2300154 e!3353299)))

(assert (=> b!5409200 (= res!2300154 (not (matchZipper!1427 z!1189 s!2326)))))

(declare-fun b!5409201 () Bool)

(declare-fun res!2300147 () Bool)

(assert (=> b!5409201 (=> res!2300147 e!3353282)))

(assert (=> b!5409201 (= res!2300147 (or ((_ is Concat!24028) (regOne!30878 r!7292)) (not ((_ is Star!15183) (regOne!30878 r!7292)))))))

(declare-fun e!3353295 () Bool)

(declare-fun b!5409202 () Bool)

(declare-fun e!3353291 () Bool)

(declare-fun tp!1495430 () Bool)

(assert (=> b!5409202 (= e!3353291 (and (inv!81204 (h!68173 zl!343)) e!3353295 tp!1495430))))

(declare-fun b!5409203 () Bool)

(declare-fun res!2300165 () Bool)

(assert (=> b!5409203 (=> res!2300165 e!3353288)))

(declare-fun generalisedUnion!1112 (List!61848) Regex!15183)

(declare-fun unfocusZipperList!625 (List!61849) List!61848)

(assert (=> b!5409203 (= res!2300165 (not (= r!7292 (generalisedUnion!1112 (unfocusZipperList!625 zl!343)))))))

(declare-fun b!5409204 () Bool)

(declare-fun e!3353296 () Unit!154254)

(declare-fun Unit!154256 () Unit!154254)

(assert (=> b!5409204 (= e!3353296 Unit!154256)))

(declare-fun b!5409205 () Bool)

(declare-fun res!2300170 () Bool)

(declare-fun e!3353280 () Bool)

(assert (=> b!5409205 (=> res!2300170 e!3353280)))

(declare-datatypes ((tuple2!64764 0))(
  ( (tuple2!64765 (_1!35685 List!61850) (_2!35685 List!61850)) )
))
(declare-fun lt!2205241 () tuple2!64764)

(assert (=> b!5409205 (= res!2300170 (not (matchZipper!1427 lt!2205260 (_1!35685 lt!2205241))))))

(declare-fun b!5409206 () Bool)

(declare-fun tp!1495428 () Bool)

(assert (=> b!5409206 (= e!3353295 tp!1495428)))

(declare-fun b!5409207 () Bool)

(declare-fun e!3353284 () Bool)

(assert (=> b!5409207 (= e!3353301 e!3353284)))

(declare-fun res!2300144 () Bool)

(assert (=> b!5409207 (=> res!2300144 e!3353284)))

(declare-fun lt!2205263 () List!61849)

(assert (=> b!5409207 (= res!2300144 (not (= (unfocusZipper!925 lt!2205263) lt!2205277)))))

(assert (=> b!5409207 (= lt!2205263 (Cons!61725 lt!2205242 Nil!61725))))

(declare-fun b!5409208 () Bool)

(declare-fun e!3353298 () Bool)

(declare-fun tp!1495431 () Bool)

(declare-fun tp!1495433 () Bool)

(assert (=> b!5409208 (= e!3353298 (and tp!1495431 tp!1495433))))

(declare-fun b!5409209 () Bool)

(declare-fun e!3353306 () Bool)

(declare-fun tp_is_empty!39619 () Bool)

(declare-fun tp!1495427 () Bool)

(assert (=> b!5409209 (= e!3353306 (and tp_is_empty!39619 tp!1495427))))

(declare-fun b!5409210 () Bool)

(declare-fun tp!1495429 () Bool)

(assert (=> b!5409210 (= e!3353298 tp!1495429)))

(declare-fun b!5409211 () Bool)

(declare-fun e!3353290 () Bool)

(declare-fun e!3353300 () Bool)

(assert (=> b!5409211 (= e!3353290 e!3353300)))

(declare-fun res!2300172 () Bool)

(assert (=> b!5409211 (=> (not res!2300172) (not e!3353300))))

(declare-fun lt!2205261 () Regex!15183)

(assert (=> b!5409211 (= res!2300172 (= r!7292 lt!2205261))))

(assert (=> b!5409211 (= lt!2205261 (unfocusZipper!925 zl!343))))

(declare-fun res!2300148 () Bool)

(assert (=> start!568110 (=> (not res!2300148) (not e!3353290))))

(declare-fun validRegex!6919 (Regex!15183) Bool)

(assert (=> start!568110 (= res!2300148 (validRegex!6919 r!7292))))

(assert (=> start!568110 e!3353290))

(assert (=> start!568110 e!3353298))

(declare-fun condSetEmpty!35225 () Bool)

(assert (=> start!568110 (= condSetEmpty!35225 (= z!1189 ((as const (Array Context!9134 Bool)) false)))))

(assert (=> start!568110 setRes!35225))

(assert (=> start!568110 e!3353291))

(assert (=> start!568110 e!3353306))

(declare-fun b!5409212 () Bool)

(declare-fun e!3353305 () Bool)

(assert (=> b!5409212 (= e!3353305 e!3353280)))

(declare-fun res!2300153 () Bool)

(assert (=> b!5409212 (=> res!2300153 e!3353280)))

(declare-fun lt!2205271 () List!61850)

(assert (=> b!5409212 (= res!2300153 (not (= s!2326 lt!2205271)))))

(declare-fun ++!13539 (List!61850 List!61850) List!61850)

(assert (=> b!5409212 (= lt!2205271 (++!13539 (_1!35685 lt!2205241) (_2!35685 lt!2205241)))))

(declare-datatypes ((Option!15294 0))(
  ( (None!15293) (Some!15293 (v!51322 tuple2!64764)) )
))
(declare-fun lt!2205270 () Option!15294)

(declare-fun get!21277 (Option!15294) tuple2!64764)

(assert (=> b!5409212 (= lt!2205241 (get!21277 lt!2205270))))

(declare-fun isDefined!11997 (Option!15294) Bool)

(assert (=> b!5409212 (isDefined!11997 lt!2205270)))

(declare-fun findConcatSeparationZippers!40 ((InoxSet Context!9134) (InoxSet Context!9134) List!61850 List!61850 List!61850) Option!15294)

(assert (=> b!5409212 (= lt!2205270 (findConcatSeparationZippers!40 lt!2205260 lt!2205286 Nil!61726 s!2326 s!2326))))

(declare-fun lt!2205235 () Unit!154254)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!40 ((InoxSet Context!9134) Context!9134 List!61850) Unit!154254)

(assert (=> b!5409212 (= lt!2205235 (lemmaConcatZipperMatchesStringThenFindConcatDefined!40 lt!2205260 lt!2205242 s!2326))))

(declare-fun b!5409213 () Bool)

(declare-fun res!2300160 () Bool)

(assert (=> b!5409213 (=> res!2300160 e!3353288)))

(declare-fun isEmpty!33720 (List!61849) Bool)

(assert (=> b!5409213 (= res!2300160 (not (isEmpty!33720 (t!375072 zl!343))))))

(assert (=> b!5409214 (= e!3353280 e!3353294)))

(declare-fun res!2300151 () Bool)

(assert (=> b!5409214 (=> res!2300151 e!3353294)))

(declare-fun lt!2205281 () Option!15294)

(declare-fun matchR!7368 (Regex!15183 List!61850) Bool)

(assert (=> b!5409214 (= res!2300151 (not (matchR!7368 lt!2205243 (_1!35685 (get!21277 lt!2205281)))))))

(declare-fun Exists!2364 (Int) Bool)

(assert (=> b!5409214 (= (Exists!2364 lambda!282202) (Exists!2364 lambda!282203))))

(declare-fun lt!2205256 () Unit!154254)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1018 (Regex!15183 Regex!15183 List!61850) Unit!154254)

(assert (=> b!5409214 (= lt!2205256 (lemmaExistCutMatchRandMatchRSpecEquivalent!1018 lt!2205243 (regTwo!30878 r!7292) s!2326))))

(assert (=> b!5409214 (= (isDefined!11997 lt!2205281) (Exists!2364 lambda!282202))))

(declare-fun findConcatSeparation!1708 (Regex!15183 Regex!15183 List!61850 List!61850 List!61850) Option!15294)

(assert (=> b!5409214 (= lt!2205281 (findConcatSeparation!1708 lt!2205243 (regTwo!30878 r!7292) Nil!61726 s!2326 s!2326))))

(declare-fun lt!2205276 () Unit!154254)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1472 (Regex!15183 Regex!15183 List!61850) Unit!154254)

(assert (=> b!5409214 (= lt!2205276 (lemmaFindConcatSeparationEquivalentToExists!1472 lt!2205243 (regTwo!30878 r!7292) s!2326))))

(declare-fun lt!2205275 () Regex!15183)

(declare-fun matchRSpec!2286 (Regex!15183 List!61850) Bool)

(assert (=> b!5409214 (matchRSpec!2286 lt!2205275 s!2326)))

(declare-fun lt!2205269 () Unit!154254)

(declare-fun mainMatchTheorem!2286 (Regex!15183 List!61850) Unit!154254)

(assert (=> b!5409214 (= lt!2205269 (mainMatchTheorem!2286 lt!2205275 s!2326))))

(assert (=> b!5409214 (matchR!7368 lt!2205275 s!2326)))

(assert (=> b!5409214 (= lt!2205275 (Concat!24028 lt!2205243 (regTwo!30878 r!7292)))))

(assert (=> b!5409214 (= lt!2205243 (Concat!24028 (reg!15512 (regOne!30878 r!7292)) lt!2205246))))

(declare-fun lt!2205267 () Unit!154254)

(declare-fun lemmaConcatAssociative!36 (Regex!15183 Regex!15183 Regex!15183 List!61850) Unit!154254)

(assert (=> b!5409214 (= lt!2205267 (lemmaConcatAssociative!36 (reg!15512 (regOne!30878 r!7292)) lt!2205246 (regTwo!30878 r!7292) s!2326))))

(assert (=> b!5409214 e!3353292))

(declare-fun res!2300173 () Bool)

(assert (=> b!5409214 (=> (not res!2300173) (not e!3353292))))

(assert (=> b!5409214 (= res!2300173 (matchR!7368 lt!2205264 lt!2205271))))

(declare-fun lt!2205237 () Unit!154254)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!206 (Regex!15183 Regex!15183 List!61850 List!61850) Unit!154254)

(assert (=> b!5409214 (= lt!2205237 (lemmaTwoRegexMatchThenConcatMatchesConcatString!206 (reg!15512 (regOne!30878 r!7292)) lt!2205277 (_1!35685 lt!2205241) (_2!35685 lt!2205241)))))

(assert (=> b!5409214 (matchR!7368 lt!2205277 (_2!35685 lt!2205241))))

(declare-fun lt!2205284 () Unit!154254)

(declare-fun theoremZipperRegexEquiv!497 ((InoxSet Context!9134) List!61849 Regex!15183 List!61850) Unit!154254)

(assert (=> b!5409214 (= lt!2205284 (theoremZipperRegexEquiv!497 lt!2205286 lt!2205263 lt!2205277 (_2!35685 lt!2205241)))))

(assert (=> b!5409214 (matchR!7368 (reg!15512 (regOne!30878 r!7292)) (_1!35685 lt!2205241))))

(declare-fun lt!2205239 () Unit!154254)

(assert (=> b!5409214 (= lt!2205239 (theoremZipperRegexEquiv!497 lt!2205260 lt!2205253 (reg!15512 (regOne!30878 r!7292)) (_1!35685 lt!2205241)))))

(declare-fun ++!13540 (List!61848 List!61848) List!61848)

(assert (=> b!5409214 (matchZipper!1427 (store ((as const (Array Context!9134 Bool)) false) (Context!9135 (++!13540 lt!2205265 lt!2205250)) true) lt!2205271)))

(declare-fun lt!2205268 () Unit!154254)

(declare-fun lambda!282201 () Int)

(declare-fun lemmaConcatPreservesForall!208 (List!61848 List!61848 Int) Unit!154254)

(assert (=> b!5409214 (= lt!2205268 (lemmaConcatPreservesForall!208 lt!2205265 lt!2205250 lambda!282201))))

(declare-fun lt!2205259 () Unit!154254)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!56 (Context!9134 Context!9134 List!61850 List!61850) Unit!154254)

(assert (=> b!5409214 (= lt!2205259 (lemmaConcatenateContextMatchesConcatOfStrings!56 lt!2205244 lt!2205242 (_1!35685 lt!2205241) (_2!35685 lt!2205241)))))

(declare-fun b!5409215 () Bool)

(declare-fun res!2300161 () Bool)

(declare-fun e!3353285 () Bool)

(assert (=> b!5409215 (=> res!2300161 e!3353285)))

(declare-fun lt!2205254 () Bool)

(assert (=> b!5409215 (= res!2300161 (or (not lt!2205254) (not lt!2205249)))))

(declare-fun b!5409216 () Bool)

(assert (=> b!5409216 (= e!3353297 e!3353286)))

(declare-fun res!2300159 () Bool)

(assert (=> b!5409216 (=> res!2300159 e!3353286)))

(assert (=> b!5409216 (= res!2300159 (not (= r!7292 lt!2205277)))))

(assert (=> b!5409216 (= lt!2205277 (Concat!24028 lt!2205246 (regTwo!30878 r!7292)))))

(declare-fun b!5409217 () Bool)

(assert (=> b!5409217 (= e!3353284 e!3353299)))

(declare-fun res!2300166 () Bool)

(assert (=> b!5409217 (=> res!2300166 e!3353299)))

(declare-fun lt!2205289 () Bool)

(assert (=> b!5409217 (= res!2300166 lt!2205289)))

(assert (=> b!5409217 (= lt!2205290 (matchRSpec!2286 lt!2205264 s!2326))))

(assert (=> b!5409217 (= lt!2205290 (matchR!7368 lt!2205264 s!2326))))

(declare-fun lt!2205255 () Unit!154254)

(assert (=> b!5409217 (= lt!2205255 (mainMatchTheorem!2286 lt!2205264 s!2326))))

(declare-fun b!5409218 () Bool)

(declare-fun e!3353289 () Bool)

(declare-fun lt!2205245 () (InoxSet Context!9134))

(assert (=> b!5409218 (= e!3353289 (not (matchZipper!1427 lt!2205245 (t!375073 s!2326))))))

(declare-fun b!5409219 () Bool)

(declare-fun e!3353293 () Bool)

(assert (=> b!5409219 (= e!3353293 (matchZipper!1427 lt!2205245 (t!375073 s!2326)))))

(declare-fun b!5409220 () Bool)

(assert (=> b!5409220 (= e!3353299 e!3353285)))

(declare-fun res!2300146 () Bool)

(assert (=> b!5409220 (=> res!2300146 e!3353285)))

(assert (=> b!5409220 (= res!2300146 e!3353289)))

(declare-fun res!2300171 () Bool)

(assert (=> b!5409220 (=> (not res!2300171) (not e!3353289))))

(assert (=> b!5409220 (= res!2300171 (not lt!2205254))))

(assert (=> b!5409220 (= lt!2205254 (matchZipper!1427 lt!2205283 (t!375073 s!2326)))))

(declare-fun b!5409221 () Bool)

(assert (=> b!5409221 (= e!3353298 tp_is_empty!39619)))

(declare-fun b!5409222 () Bool)

(declare-fun res!2300149 () Bool)

(assert (=> b!5409222 (=> (not res!2300149) (not e!3353290))))

(declare-fun toList!8967 ((InoxSet Context!9134)) List!61849)

(assert (=> b!5409222 (= res!2300149 (= (toList!8967 z!1189) zl!343))))

(declare-fun b!5409223 () Bool)

(declare-fun tp!1495425 () Bool)

(declare-fun tp!1495432 () Bool)

(assert (=> b!5409223 (= e!3353298 (and tp!1495425 tp!1495432))))

(declare-fun b!5409224 () Bool)

(declare-fun res!2300162 () Bool)

(assert (=> b!5409224 (=> res!2300162 e!3353280)))

(assert (=> b!5409224 (= res!2300162 (not (matchZipper!1427 lt!2205286 (_2!35685 lt!2205241))))))

(declare-fun b!5409225 () Bool)

(assert (=> b!5409225 (= e!3353300 (not e!3353288))))

(declare-fun res!2300175 () Bool)

(assert (=> b!5409225 (=> res!2300175 e!3353288)))

(assert (=> b!5409225 (= res!2300175 (not ((_ is Cons!61725) zl!343)))))

(assert (=> b!5409225 (= lt!2205289 (matchRSpec!2286 r!7292 s!2326))))

(assert (=> b!5409225 (= lt!2205289 (matchR!7368 r!7292 s!2326))))

(declare-fun lt!2205248 () Unit!154254)

(assert (=> b!5409225 (= lt!2205248 (mainMatchTheorem!2286 r!7292 s!2326))))

(declare-fun b!5409226 () Bool)

(declare-fun res!2300167 () Bool)

(declare-fun e!3353303 () Bool)

(assert (=> b!5409226 (=> res!2300167 e!3353303)))

(declare-fun isEmpty!33721 (List!61848) Bool)

(assert (=> b!5409226 (= res!2300167 (isEmpty!33721 (t!375071 (exprs!5067 (h!68173 zl!343)))))))

(declare-fun b!5409227 () Bool)

(declare-fun tp!1495426 () Bool)

(assert (=> b!5409227 (= e!3353302 tp!1495426)))

(declare-fun b!5409228 () Bool)

(declare-fun res!2300143 () Bool)

(assert (=> b!5409228 (=> res!2300143 e!3353282)))

(declare-fun e!3353287 () Bool)

(assert (=> b!5409228 (= res!2300143 e!3353287)))

(declare-fun res!2300150 () Bool)

(assert (=> b!5409228 (=> (not res!2300150) (not e!3353287))))

(assert (=> b!5409228 (= res!2300150 ((_ is Concat!24028) (regOne!30878 r!7292)))))

(assert (=> b!5409229 (= e!3353303 e!3353282)))

(declare-fun res!2300168 () Bool)

(assert (=> b!5409229 (=> res!2300168 e!3353282)))

(assert (=> b!5409229 (= res!2300168 (or (and ((_ is ElementMatch!15183) (regOne!30878 r!7292)) (= (c!943091 (regOne!30878 r!7292)) (h!68174 s!2326))) ((_ is Union!15183) (regOne!30878 r!7292))))))

(declare-fun lt!2205252 () Unit!154254)

(assert (=> b!5409229 (= lt!2205252 e!3353296)))

(declare-fun c!943090 () Bool)

(assert (=> b!5409229 (= c!943090 lt!2205279)))

(declare-fun nullable!5352 (Regex!15183) Bool)

(assert (=> b!5409229 (= lt!2205279 (nullable!5352 (h!68172 (exprs!5067 (h!68173 zl!343)))))))

(assert (=> b!5409229 (= (flatMap!910 z!1189 lambda!282199) (derivationStepZipperUp!555 (h!68173 zl!343) (h!68174 s!2326)))))

(declare-fun lt!2205236 () Unit!154254)

(assert (=> b!5409229 (= lt!2205236 (lemmaFlatMapOnSingletonSet!442 z!1189 (h!68173 zl!343) lambda!282199))))

(declare-fun lt!2205247 () Context!9134)

(assert (=> b!5409229 (= lt!2205245 (derivationStepZipperUp!555 lt!2205247 (h!68174 s!2326)))))

(assert (=> b!5409229 (= lt!2205283 (derivationStepZipperDown!631 (h!68172 (exprs!5067 (h!68173 zl!343))) lt!2205247 (h!68174 s!2326)))))

(assert (=> b!5409229 (= lt!2205247 (Context!9135 (t!375071 (exprs!5067 (h!68173 zl!343)))))))

(declare-fun lt!2205273 () (InoxSet Context!9134))

(assert (=> b!5409229 (= lt!2205273 (derivationStepZipperUp!555 (Context!9135 (Cons!61724 (h!68172 (exprs!5067 (h!68173 zl!343))) (t!375071 (exprs!5067 (h!68173 zl!343))))) (h!68174 s!2326)))))

(declare-fun b!5409230 () Bool)

(declare-fun res!2300158 () Bool)

(assert (=> b!5409230 (=> res!2300158 e!3353297)))

(assert (=> b!5409230 (= res!2300158 (not (= lt!2205261 r!7292)))))

(assert (=> b!5409231 (= e!3353285 e!3353305)))

(declare-fun res!2300152 () Bool)

(assert (=> b!5409231 (=> res!2300152 e!3353305)))

(declare-fun appendTo!42 ((InoxSet Context!9134) Context!9134) (InoxSet Context!9134))

(assert (=> b!5409231 (= res!2300152 (not (= (appendTo!42 lt!2205260 lt!2205242) lt!2205234)))))

(declare-fun lambda!282200 () Int)

(declare-fun map!14159 ((InoxSet Context!9134) Int) (InoxSet Context!9134))

(assert (=> b!5409231 (= (map!14159 lt!2205260 lambda!282200) (store ((as const (Array Context!9134 Bool)) false) (Context!9135 (++!13540 lt!2205265 lt!2205250)) true))))

(declare-fun lt!2205285 () Unit!154254)

(assert (=> b!5409231 (= lt!2205285 (lemmaConcatPreservesForall!208 lt!2205265 lt!2205250 lambda!282201))))

(declare-fun lt!2205262 () Unit!154254)

(declare-fun lemmaMapOnSingletonSet!42 ((InoxSet Context!9134) Context!9134 Int) Unit!154254)

(assert (=> b!5409231 (= lt!2205262 (lemmaMapOnSingletonSet!42 lt!2205260 lt!2205244 lambda!282200))))

(assert (=> b!5409232 (= e!3353288 e!3353303)))

(declare-fun res!2300155 () Bool)

(assert (=> b!5409232 (=> res!2300155 e!3353303)))

(declare-fun lt!2205278 () Bool)

(assert (=> b!5409232 (= res!2300155 (or (not (= lt!2205289 lt!2205278)) ((_ is Nil!61726) s!2326)))))

(assert (=> b!5409232 (= (Exists!2364 lambda!282197) (Exists!2364 lambda!282198))))

(declare-fun lt!2205251 () Unit!154254)

(assert (=> b!5409232 (= lt!2205251 (lemmaExistCutMatchRandMatchRSpecEquivalent!1018 (regOne!30878 r!7292) (regTwo!30878 r!7292) s!2326))))

(assert (=> b!5409232 (= lt!2205278 (Exists!2364 lambda!282197))))

(assert (=> b!5409232 (= lt!2205278 (isDefined!11997 (findConcatSeparation!1708 (regOne!30878 r!7292) (regTwo!30878 r!7292) Nil!61726 s!2326 s!2326)))))

(declare-fun lt!2205272 () Unit!154254)

(assert (=> b!5409232 (= lt!2205272 (lemmaFindConcatSeparationEquivalentToExists!1472 (regOne!30878 r!7292) (regTwo!30878 r!7292) s!2326))))

(declare-fun b!5409233 () Bool)

(declare-fun Unit!154257 () Unit!154254)

(assert (=> b!5409233 (= e!3353296 Unit!154257)))

(declare-fun lt!2205288 () Unit!154254)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!420 ((InoxSet Context!9134) (InoxSet Context!9134) List!61850) Unit!154254)

(assert (=> b!5409233 (= lt!2205288 (lemmaZipperConcatMatchesSameAsBothZippers!420 lt!2205283 lt!2205245 (t!375073 s!2326)))))

(declare-fun res!2300174 () Bool)

(assert (=> b!5409233 (= res!2300174 (matchZipper!1427 lt!2205283 (t!375073 s!2326)))))

(assert (=> b!5409233 (=> res!2300174 e!3353293)))

(assert (=> b!5409233 (= (matchZipper!1427 ((_ map or) lt!2205283 lt!2205245) (t!375073 s!2326)) e!3353293)))

(declare-fun b!5409234 () Bool)

(assert (=> b!5409234 (= e!3353304 e!3353283)))

(declare-fun res!2300141 () Bool)

(assert (=> b!5409234 (=> res!2300141 e!3353283)))

(assert (=> b!5409234 (= res!2300141 (not (= lt!2205258 lt!2205282)))))

(assert (=> b!5409234 (= (flatMap!910 lt!2205234 lambda!282199) (derivationStepZipperUp!555 lt!2205280 (h!68174 s!2326)))))

(declare-fun lt!2205238 () Unit!154254)

(assert (=> b!5409234 (= lt!2205238 (lemmaFlatMapOnSingletonSet!442 lt!2205234 lt!2205280 lambda!282199))))

(declare-fun lt!2205287 () (InoxSet Context!9134))

(assert (=> b!5409234 (= lt!2205287 (derivationStepZipperUp!555 lt!2205280 (h!68174 s!2326)))))

(declare-fun derivationStepZipper!1422 ((InoxSet Context!9134) C!30636) (InoxSet Context!9134))

(assert (=> b!5409234 (= lt!2205258 (derivationStepZipper!1422 lt!2205234 (h!68174 s!2326)))))

(assert (=> b!5409234 (= lt!2205234 (store ((as const (Array Context!9134 Bool)) false) lt!2205280 true))))

(assert (=> b!5409234 (= lt!2205280 (Context!9135 (Cons!61724 (reg!15512 (regOne!30878 r!7292)) lt!2205250)))))

(declare-fun b!5409235 () Bool)

(assert (=> b!5409235 (= e!3353287 (nullable!5352 (regOne!30878 (regOne!30878 r!7292))))))

(assert (= (and start!568110 res!2300148) b!5409222))

(assert (= (and b!5409222 res!2300149) b!5409211))

(assert (= (and b!5409211 res!2300172) b!5409225))

(assert (= (and b!5409225 (not res!2300175)) b!5409213))

(assert (= (and b!5409213 (not res!2300160)) b!5409198))

(assert (= (and b!5409198 (not res!2300140)) b!5409191))

(assert (= (and b!5409191 (not res!2300145)) b!5409203))

(assert (= (and b!5409203 (not res!2300165)) b!5409197))

(assert (= (and b!5409197 (not res!2300164)) b!5409232))

(assert (= (and b!5409232 (not res!2300155)) b!5409226))

(assert (= (and b!5409226 (not res!2300167)) b!5409229))

(assert (= (and b!5409229 c!943090) b!5409233))

(assert (= (and b!5409229 (not c!943090)) b!5409204))

(assert (= (and b!5409233 (not res!2300174)) b!5409219))

(assert (= (and b!5409229 (not res!2300168)) b!5409228))

(assert (= (and b!5409228 res!2300150) b!5409235))

(assert (= (and b!5409228 (not res!2300143)) b!5409201))

(assert (= (and b!5409201 (not res!2300147)) b!5409193))

(assert (= (and b!5409193 (not res!2300163)) b!5409234))

(assert (= (and b!5409234 (not res!2300141)) b!5409194))

(assert (= (and b!5409194 (not res!2300157)) b!5409230))

(assert (= (and b!5409230 (not res!2300158)) b!5409216))

(assert (= (and b!5409216 (not res!2300159)) b!5409195))

(assert (= (and b!5409195 (not res!2300156)) b!5409199))

(assert (= (and b!5409199 (not res!2300142)) b!5409207))

(assert (= (and b!5409207 (not res!2300144)) b!5409217))

(assert (= (and b!5409217 (not res!2300166)) b!5409200))

(assert (= (and b!5409200 (not res!2300154)) b!5409192))

(assert (= (and b!5409192 (not res!2300169)) b!5409220))

(assert (= (and b!5409220 res!2300171) b!5409218))

(assert (= (and b!5409220 (not res!2300146)) b!5409215))

(assert (= (and b!5409215 (not res!2300161)) b!5409231))

(assert (= (and b!5409231 (not res!2300152)) b!5409212))

(assert (= (and b!5409212 (not res!2300153)) b!5409205))

(assert (= (and b!5409205 (not res!2300170)) b!5409224))

(assert (= (and b!5409224 (not res!2300162)) b!5409214))

(assert (= (and b!5409214 res!2300173) b!5409190))

(assert (= (and b!5409214 (not res!2300151)) b!5409196))

(assert (= (and start!568110 ((_ is ElementMatch!15183) r!7292)) b!5409221))

(assert (= (and start!568110 ((_ is Concat!24028) r!7292)) b!5409223))

(assert (= (and start!568110 ((_ is Star!15183) r!7292)) b!5409210))

(assert (= (and start!568110 ((_ is Union!15183) r!7292)) b!5409208))

(assert (= (and start!568110 condSetEmpty!35225) setIsEmpty!35225))

(assert (= (and start!568110 (not condSetEmpty!35225)) setNonEmpty!35225))

(assert (= setNonEmpty!35225 b!5409227))

(assert (= b!5409202 b!5409206))

(assert (= (and start!568110 ((_ is Cons!61725) zl!343)) b!5409202))

(assert (= (and start!568110 ((_ is Cons!61726) s!2326)) b!5409209))

(declare-fun m!6433186 () Bool)

(assert (=> b!5409220 m!6433186))

(declare-fun m!6433188 () Bool)

(assert (=> b!5409225 m!6433188))

(declare-fun m!6433190 () Bool)

(assert (=> b!5409225 m!6433190))

(declare-fun m!6433192 () Bool)

(assert (=> b!5409225 m!6433192))

(declare-fun m!6433194 () Bool)

(assert (=> b!5409214 m!6433194))

(declare-fun m!6433196 () Bool)

(assert (=> b!5409214 m!6433196))

(declare-fun m!6433198 () Bool)

(assert (=> b!5409214 m!6433198))

(declare-fun m!6433200 () Bool)

(assert (=> b!5409214 m!6433200))

(declare-fun m!6433202 () Bool)

(assert (=> b!5409214 m!6433202))

(declare-fun m!6433204 () Bool)

(assert (=> b!5409214 m!6433204))

(declare-fun m!6433206 () Bool)

(assert (=> b!5409214 m!6433206))

(declare-fun m!6433208 () Bool)

(assert (=> b!5409214 m!6433208))

(declare-fun m!6433210 () Bool)

(assert (=> b!5409214 m!6433210))

(declare-fun m!6433212 () Bool)

(assert (=> b!5409214 m!6433212))

(declare-fun m!6433214 () Bool)

(assert (=> b!5409214 m!6433214))

(declare-fun m!6433216 () Bool)

(assert (=> b!5409214 m!6433216))

(declare-fun m!6433218 () Bool)

(assert (=> b!5409214 m!6433218))

(declare-fun m!6433220 () Bool)

(assert (=> b!5409214 m!6433220))

(assert (=> b!5409214 m!6433208))

(assert (=> b!5409214 m!6433202))

(declare-fun m!6433222 () Bool)

(assert (=> b!5409214 m!6433222))

(declare-fun m!6433224 () Bool)

(assert (=> b!5409214 m!6433224))

(declare-fun m!6433226 () Bool)

(assert (=> b!5409214 m!6433226))

(declare-fun m!6433228 () Bool)

(assert (=> b!5409214 m!6433228))

(declare-fun m!6433230 () Bool)

(assert (=> b!5409214 m!6433230))

(declare-fun m!6433232 () Bool)

(assert (=> b!5409214 m!6433232))

(declare-fun m!6433234 () Bool)

(assert (=> b!5409214 m!6433234))

(declare-fun m!6433236 () Bool)

(assert (=> b!5409214 m!6433236))

(declare-fun m!6433238 () Bool)

(assert (=> b!5409214 m!6433238))

(declare-fun m!6433240 () Bool)

(assert (=> b!5409235 m!6433240))

(declare-fun m!6433242 () Bool)

(assert (=> b!5409217 m!6433242))

(declare-fun m!6433244 () Bool)

(assert (=> b!5409217 m!6433244))

(declare-fun m!6433246 () Bool)

(assert (=> b!5409217 m!6433246))

(declare-fun m!6433248 () Bool)

(assert (=> b!5409218 m!6433248))

(declare-fun m!6433250 () Bool)

(assert (=> b!5409224 m!6433250))

(declare-fun m!6433252 () Bool)

(assert (=> start!568110 m!6433252))

(declare-fun m!6433254 () Bool)

(assert (=> b!5409211 m!6433254))

(declare-fun m!6433256 () Bool)

(assert (=> b!5409199 m!6433256))

(declare-fun m!6433258 () Bool)

(assert (=> b!5409199 m!6433258))

(declare-fun m!6433260 () Bool)

(assert (=> b!5409199 m!6433260))

(declare-fun m!6433262 () Bool)

(assert (=> b!5409199 m!6433262))

(declare-fun m!6433264 () Bool)

(assert (=> b!5409199 m!6433264))

(declare-fun m!6433266 () Bool)

(assert (=> b!5409199 m!6433266))

(declare-fun m!6433268 () Bool)

(assert (=> b!5409199 m!6433268))

(declare-fun m!6433270 () Bool)

(assert (=> b!5409199 m!6433270))

(declare-fun m!6433272 () Bool)

(assert (=> b!5409199 m!6433272))

(declare-fun m!6433274 () Bool)

(assert (=> b!5409194 m!6433274))

(declare-fun m!6433276 () Bool)

(assert (=> b!5409194 m!6433276))

(declare-fun m!6433278 () Bool)

(assert (=> b!5409229 m!6433278))

(declare-fun m!6433280 () Bool)

(assert (=> b!5409229 m!6433280))

(declare-fun m!6433282 () Bool)

(assert (=> b!5409229 m!6433282))

(declare-fun m!6433284 () Bool)

(assert (=> b!5409229 m!6433284))

(declare-fun m!6433286 () Bool)

(assert (=> b!5409229 m!6433286))

(declare-fun m!6433288 () Bool)

(assert (=> b!5409229 m!6433288))

(declare-fun m!6433290 () Bool)

(assert (=> b!5409229 m!6433290))

(declare-fun m!6433292 () Bool)

(assert (=> b!5409205 m!6433292))

(assert (=> b!5409219 m!6433248))

(declare-fun m!6433294 () Bool)

(assert (=> b!5409202 m!6433294))

(declare-fun m!6433296 () Bool)

(assert (=> b!5409213 m!6433296))

(declare-fun m!6433298 () Bool)

(assert (=> b!5409198 m!6433298))

(declare-fun m!6433300 () Bool)

(assert (=> b!5409232 m!6433300))

(assert (=> b!5409232 m!6433300))

(declare-fun m!6433302 () Bool)

(assert (=> b!5409232 m!6433302))

(declare-fun m!6433304 () Bool)

(assert (=> b!5409232 m!6433304))

(declare-fun m!6433306 () Bool)

(assert (=> b!5409232 m!6433306))

(declare-fun m!6433308 () Bool)

(assert (=> b!5409232 m!6433308))

(assert (=> b!5409232 m!6433302))

(declare-fun m!6433310 () Bool)

(assert (=> b!5409232 m!6433310))

(declare-fun m!6433312 () Bool)

(assert (=> b!5409207 m!6433312))

(declare-fun m!6433314 () Bool)

(assert (=> b!5409203 m!6433314))

(assert (=> b!5409203 m!6433314))

(declare-fun m!6433316 () Bool)

(assert (=> b!5409203 m!6433316))

(assert (=> b!5409231 m!6433236))

(assert (=> b!5409231 m!6433202))

(declare-fun m!6433318 () Bool)

(assert (=> b!5409231 m!6433318))

(declare-fun m!6433320 () Bool)

(assert (=> b!5409231 m!6433320))

(declare-fun m!6433322 () Bool)

(assert (=> b!5409231 m!6433322))

(assert (=> b!5409231 m!6433214))

(declare-fun m!6433324 () Bool)

(assert (=> setNonEmpty!35225 m!6433324))

(declare-fun m!6433326 () Bool)

(assert (=> b!5409200 m!6433326))

(declare-fun m!6433328 () Bool)

(assert (=> b!5409226 m!6433328))

(declare-fun m!6433330 () Bool)

(assert (=> b!5409193 m!6433330))

(declare-fun m!6433332 () Bool)

(assert (=> b!5409195 m!6433332))

(declare-fun m!6433334 () Bool)

(assert (=> b!5409212 m!6433334))

(declare-fun m!6433336 () Bool)

(assert (=> b!5409212 m!6433336))

(declare-fun m!6433338 () Bool)

(assert (=> b!5409212 m!6433338))

(declare-fun m!6433340 () Bool)

(assert (=> b!5409212 m!6433340))

(declare-fun m!6433342 () Bool)

(assert (=> b!5409212 m!6433342))

(declare-fun m!6433344 () Bool)

(assert (=> b!5409233 m!6433344))

(assert (=> b!5409233 m!6433186))

(declare-fun m!6433346 () Bool)

(assert (=> b!5409233 m!6433346))

(declare-fun m!6433348 () Bool)

(assert (=> b!5409234 m!6433348))

(declare-fun m!6433350 () Bool)

(assert (=> b!5409234 m!6433350))

(declare-fun m!6433352 () Bool)

(assert (=> b!5409234 m!6433352))

(declare-fun m!6433354 () Bool)

(assert (=> b!5409234 m!6433354))

(declare-fun m!6433356 () Bool)

(assert (=> b!5409234 m!6433356))

(declare-fun m!6433358 () Bool)

(assert (=> b!5409222 m!6433358))

(check-sat (not b!5409218) (not b!5409209) (not b!5409214) (not b!5409200) (not b!5409208) (not b!5409232) (not b!5409203) (not b!5409195) (not b!5409223) (not b!5409198) (not b!5409206) (not b!5409193) (not b!5409234) (not b!5409207) (not b!5409219) (not b!5409224) (not start!568110) (not b!5409231) (not b!5409210) (not b!5409217) tp_is_empty!39619 (not b!5409233) (not b!5409194) (not b!5409227) (not b!5409199) (not setNonEmpty!35225) (not b!5409202) (not b!5409205) (not b!5409226) (not b!5409225) (not b!5409220) (not b!5409222) (not b!5409213) (not b!5409235) (not b!5409212) (not b!5409211) (not b!5409229))
(check-sat)
