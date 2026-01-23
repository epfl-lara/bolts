; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!568286 () Bool)

(assert start!568286)

(declare-fun b!5412241 () Bool)

(assert (=> b!5412241 true))

(assert (=> b!5412241 true))

(declare-fun lambda!282733 () Int)

(declare-fun lambda!282732 () Int)

(assert (=> b!5412241 (not (= lambda!282733 lambda!282732))))

(assert (=> b!5412241 true))

(assert (=> b!5412241 true))

(declare-fun b!5412258 () Bool)

(assert (=> b!5412258 true))

(declare-fun b!5412256 () Bool)

(assert (=> b!5412256 true))

(declare-fun bs!1250014 () Bool)

(declare-fun b!5412247 () Bool)

(assert (= bs!1250014 (and b!5412247 b!5412241)))

(declare-fun lambda!282737 () Int)

(declare-datatypes ((C!30656 0))(
  ( (C!30657 (val!25030 Int)) )
))
(declare-datatypes ((Regex!15193 0))(
  ( (ElementMatch!15193 (c!943557 C!30656)) (Concat!24038 (regOne!30898 Regex!15193) (regTwo!30898 Regex!15193)) (EmptyExpr!15193) (Star!15193 (reg!15522 Regex!15193)) (EmptyLang!15193) (Union!15193 (regOne!30899 Regex!15193) (regTwo!30899 Regex!15193)) )
))
(declare-fun lt!2207321 () Regex!15193)

(declare-fun r!7292 () Regex!15193)

(assert (=> bs!1250014 (= (= lt!2207321 (regOne!30898 r!7292)) (= lambda!282737 lambda!282732))))

(assert (=> bs!1250014 (not (= lambda!282737 lambda!282733))))

(assert (=> b!5412247 true))

(assert (=> b!5412247 true))

(assert (=> b!5412247 true))

(declare-fun lambda!282738 () Int)

(assert (=> bs!1250014 (not (= lambda!282738 lambda!282732))))

(assert (=> bs!1250014 (= (= lt!2207321 (regOne!30898 r!7292)) (= lambda!282738 lambda!282733))))

(assert (=> b!5412247 (not (= lambda!282738 lambda!282737))))

(assert (=> b!5412247 true))

(assert (=> b!5412247 true))

(assert (=> b!5412247 true))

(declare-fun bs!1250015 () Bool)

(declare-fun b!5412274 () Bool)

(assert (= bs!1250015 (and b!5412274 b!5412241)))

(declare-fun lt!2207337 () Regex!15193)

(declare-fun lambda!282739 () Int)

(declare-datatypes ((List!61878 0))(
  ( (Nil!61754) (Cons!61754 (h!68202 C!30656) (t!375101 List!61878)) )
))
(declare-datatypes ((tuple2!64784 0))(
  ( (tuple2!64785 (_1!35695 List!61878) (_2!35695 List!61878)) )
))
(declare-fun lt!2207307 () tuple2!64784)

(declare-fun s!2326 () List!61878)

(assert (=> bs!1250015 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) (regOne!30898 r!7292)) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282739 lambda!282732))))

(assert (=> bs!1250015 (not (= lambda!282739 lambda!282733))))

(declare-fun bs!1250016 () Bool)

(assert (= bs!1250016 (and b!5412274 b!5412247)))

(assert (=> bs!1250016 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) lt!2207321) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282739 lambda!282737))))

(assert (=> bs!1250016 (not (= lambda!282739 lambda!282738))))

(assert (=> b!5412274 true))

(assert (=> b!5412274 true))

(assert (=> b!5412274 true))

(declare-fun lambda!282740 () Int)

(assert (=> bs!1250016 (not (= lambda!282740 lambda!282737))))

(assert (=> bs!1250015 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) (regOne!30898 r!7292)) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282740 lambda!282733))))

(assert (=> bs!1250016 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) lt!2207321) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282740 lambda!282738))))

(assert (=> bs!1250015 (not (= lambda!282740 lambda!282732))))

(assert (=> b!5412274 (not (= lambda!282740 lambda!282739))))

(assert (=> b!5412274 true))

(assert (=> b!5412274 true))

(assert (=> b!5412274 true))

(declare-fun lambda!282741 () Int)

(assert (=> bs!1250016 (not (= lambda!282741 lambda!282737))))

(assert (=> bs!1250015 (not (= lambda!282741 lambda!282733))))

(assert (=> bs!1250016 (not (= lambda!282741 lambda!282738))))

(assert (=> b!5412274 (not (= lambda!282741 lambda!282740))))

(assert (=> bs!1250015 (not (= lambda!282741 lambda!282732))))

(assert (=> b!5412274 (not (= lambda!282741 lambda!282739))))

(assert (=> b!5412274 true))

(assert (=> b!5412274 true))

(assert (=> b!5412274 true))

(declare-fun b!5412231 () Bool)

(declare-fun e!3354961 () Bool)

(declare-fun e!3354948 () Bool)

(assert (=> b!5412231 (= e!3354961 e!3354948)))

(declare-fun res!2302062 () Bool)

(assert (=> b!5412231 (=> res!2302062 e!3354948)))

(declare-datatypes ((List!61879 0))(
  ( (Nil!61755) (Cons!61755 (h!68203 Regex!15193) (t!375102 List!61879)) )
))
(declare-datatypes ((Context!9154 0))(
  ( (Context!9155 (exprs!5077 List!61879)) )
))
(declare-datatypes ((List!61880 0))(
  ( (Nil!61756) (Cons!61756 (h!68204 Context!9154) (t!375103 List!61880)) )
))
(declare-fun lt!2207322 () List!61880)

(declare-fun lt!2207299 () Regex!15193)

(declare-fun unfocusZipper!935 (List!61880) Regex!15193)

(assert (=> b!5412231 (= res!2302062 (not (= (unfocusZipper!935 lt!2207322) lt!2207299)))))

(declare-fun lt!2207302 () Context!9154)

(assert (=> b!5412231 (= lt!2207322 (Cons!61756 lt!2207302 Nil!61756))))

(declare-fun b!5412232 () Bool)

(declare-fun res!2302076 () Bool)

(declare-fun e!3354949 () Bool)

(assert (=> b!5412232 (=> res!2302076 e!3354949)))

(get-info :version)

(assert (=> b!5412232 (= res!2302076 (or ((_ is Concat!24038) (regOne!30898 r!7292)) (not ((_ is Star!15193) (regOne!30898 r!7292)))))))

(declare-fun b!5412233 () Bool)

(declare-fun e!3354951 () Bool)

(declare-fun e!3354957 () Bool)

(assert (=> b!5412233 (= e!3354951 e!3354957)))

(declare-fun res!2302082 () Bool)

(assert (=> b!5412233 (=> (not res!2302082) (not e!3354957))))

(declare-fun lt!2207331 () Regex!15193)

(assert (=> b!5412233 (= res!2302082 (= r!7292 lt!2207331))))

(declare-fun zl!343 () List!61880)

(assert (=> b!5412233 (= lt!2207331 (unfocusZipper!935 zl!343))))

(declare-fun b!5412234 () Bool)

(declare-fun e!3354958 () Bool)

(assert (=> b!5412234 (= e!3354949 e!3354958)))

(declare-fun res!2302077 () Bool)

(assert (=> b!5412234 (=> res!2302077 e!3354958)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2207334 () (InoxSet Context!9154))

(declare-fun lt!2207324 () (InoxSet Context!9154))

(assert (=> b!5412234 (= res!2302077 (not (= lt!2207334 lt!2207324)))))

(declare-fun derivationStepZipperDown!641 (Regex!15193 Context!9154 C!30656) (InoxSet Context!9154))

(assert (=> b!5412234 (= lt!2207324 (derivationStepZipperDown!641 (reg!15522 (regOne!30898 r!7292)) lt!2207302 (h!68202 s!2326)))))

(declare-fun lt!2207338 () List!61879)

(assert (=> b!5412234 (= lt!2207302 (Context!9155 lt!2207338))))

(assert (=> b!5412234 (= lt!2207338 (Cons!61755 lt!2207337 (t!375102 (exprs!5077 (h!68204 zl!343)))))))

(assert (=> b!5412234 (= lt!2207337 (Star!15193 (reg!15522 (regOne!30898 r!7292))))))

(declare-fun b!5412235 () Bool)

(declare-fun e!3354940 () Bool)

(declare-fun e!3354955 () Bool)

(assert (=> b!5412235 (= e!3354940 e!3354955)))

(declare-fun res!2302063 () Bool)

(assert (=> b!5412235 (=> res!2302063 e!3354955)))

(declare-fun lt!2207347 () Context!9154)

(declare-fun lt!2207349 () Regex!15193)

(assert (=> b!5412235 (= res!2302063 (not (= (unfocusZipper!935 (Cons!61756 lt!2207347 Nil!61756)) lt!2207349)))))

(assert (=> b!5412235 (= lt!2207349 (Concat!24038 (reg!15522 (regOne!30898 r!7292)) lt!2207299))))

(declare-fun b!5412236 () Bool)

(declare-fun e!3354935 () Bool)

(declare-fun e!3354939 () Bool)

(assert (=> b!5412236 (= e!3354935 e!3354939)))

(declare-fun res!2302074 () Bool)

(assert (=> b!5412236 (=> res!2302074 e!3354939)))

(declare-fun lt!2207305 () List!61878)

(assert (=> b!5412236 (= res!2302074 (not (= s!2326 lt!2207305)))))

(declare-fun lt!2207343 () tuple2!64784)

(declare-fun ++!13559 (List!61878 List!61878) List!61878)

(assert (=> b!5412236 (= lt!2207305 (++!13559 (_1!35695 lt!2207343) (_2!35695 lt!2207343)))))

(declare-datatypes ((Option!15304 0))(
  ( (None!15303) (Some!15303 (v!51332 tuple2!64784)) )
))
(declare-fun lt!2207301 () Option!15304)

(declare-fun get!21292 (Option!15304) tuple2!64784)

(assert (=> b!5412236 (= lt!2207343 (get!21292 lt!2207301))))

(declare-fun isDefined!12007 (Option!15304) Bool)

(assert (=> b!5412236 (isDefined!12007 lt!2207301)))

(declare-fun lt!2207353 () (InoxSet Context!9154))

(declare-fun lt!2207335 () (InoxSet Context!9154))

(declare-fun findConcatSeparationZippers!50 ((InoxSet Context!9154) (InoxSet Context!9154) List!61878 List!61878 List!61878) Option!15304)

(assert (=> b!5412236 (= lt!2207301 (findConcatSeparationZippers!50 lt!2207353 lt!2207335 Nil!61754 s!2326 s!2326))))

(declare-datatypes ((Unit!154294 0))(
  ( (Unit!154295) )
))
(declare-fun lt!2207320 () Unit!154294)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!50 ((InoxSet Context!9154) Context!9154 List!61878) Unit!154294)

(assert (=> b!5412236 (= lt!2207320 (lemmaConcatZipperMatchesStringThenFindConcatDefined!50 lt!2207353 lt!2207302 s!2326))))

(declare-fun b!5412237 () Bool)

(declare-fun e!3354946 () Bool)

(declare-fun tp_is_empty!39639 () Bool)

(assert (=> b!5412237 (= e!3354946 tp_is_empty!39639)))

(declare-fun b!5412238 () Bool)

(declare-fun res!2302073 () Bool)

(assert (=> b!5412238 (=> res!2302073 e!3354939)))

(declare-fun matchZipper!1437 ((InoxSet Context!9154) List!61878) Bool)

(assert (=> b!5412238 (= res!2302073 (not (matchZipper!1437 lt!2207335 (_2!35695 lt!2207343))))))

(declare-fun b!5412239 () Bool)

(declare-fun e!3354938 () Bool)

(declare-fun nullable!5362 (Regex!15193) Bool)

(assert (=> b!5412239 (= e!3354938 (nullable!5362 (regOne!30898 (regOne!30898 r!7292))))))

(declare-fun b!5412240 () Bool)

(declare-fun e!3354962 () Bool)

(declare-fun e!3354936 () Bool)

(assert (=> b!5412240 (= e!3354962 e!3354936)))

(declare-fun res!2302059 () Bool)

(assert (=> b!5412240 (=> res!2302059 e!3354936)))

(declare-fun e!3354953 () Bool)

(assert (=> b!5412240 (= res!2302059 e!3354953)))

(declare-fun res!2302068 () Bool)

(assert (=> b!5412240 (=> (not res!2302068) (not e!3354953))))

(declare-fun lt!2207355 () Bool)

(assert (=> b!5412240 (= res!2302068 (not lt!2207355))))

(assert (=> b!5412240 (= lt!2207355 (matchZipper!1437 lt!2207334 (t!375101 s!2326)))))

(declare-fun e!3354956 () Bool)

(declare-fun e!3354937 () Bool)

(assert (=> b!5412241 (= e!3354956 e!3354937)))

(declare-fun res!2302065 () Bool)

(assert (=> b!5412241 (=> res!2302065 e!3354937)))

(declare-fun lt!2207342 () Bool)

(declare-fun lt!2207304 () Bool)

(assert (=> b!5412241 (= res!2302065 (or (not (= lt!2207304 lt!2207342)) ((_ is Nil!61754) s!2326)))))

(declare-fun Exists!2374 (Int) Bool)

(assert (=> b!5412241 (= (Exists!2374 lambda!282732) (Exists!2374 lambda!282733))))

(declare-fun lt!2207318 () Unit!154294)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1028 (Regex!15193 Regex!15193 List!61878) Unit!154294)

(assert (=> b!5412241 (= lt!2207318 (lemmaExistCutMatchRandMatchRSpecEquivalent!1028 (regOne!30898 r!7292) (regTwo!30898 r!7292) s!2326))))

(assert (=> b!5412241 (= lt!2207342 (Exists!2374 lambda!282732))))

(declare-fun findConcatSeparation!1718 (Regex!15193 Regex!15193 List!61878 List!61878 List!61878) Option!15304)

(assert (=> b!5412241 (= lt!2207342 (isDefined!12007 (findConcatSeparation!1718 (regOne!30898 r!7292) (regTwo!30898 r!7292) Nil!61754 s!2326 s!2326)))))

(declare-fun lt!2207327 () Unit!154294)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1482 (Regex!15193 Regex!15193 List!61878) Unit!154294)

(assert (=> b!5412241 (= lt!2207327 (lemmaFindConcatSeparationEquivalentToExists!1482 (regOne!30898 r!7292) (regTwo!30898 r!7292) s!2326))))

(declare-fun b!5412242 () Bool)

(declare-fun e!3354945 () Bool)

(declare-fun tp!1495847 () Bool)

(assert (=> b!5412242 (= e!3354945 tp!1495847)))

(declare-fun b!5412243 () Bool)

(declare-fun e!3354941 () Bool)

(declare-fun tp!1495840 () Bool)

(assert (=> b!5412243 (= e!3354941 tp!1495840)))

(declare-fun b!5412244 () Bool)

(declare-fun lt!2207332 () (InoxSet Context!9154))

(assert (=> b!5412244 (= e!3354953 (not (matchZipper!1437 lt!2207332 (t!375101 s!2326))))))

(declare-fun b!5412245 () Bool)

(declare-fun res!2302078 () Bool)

(assert (=> b!5412245 (=> res!2302078 e!3354936)))

(declare-fun lt!2207354 () Bool)

(assert (=> b!5412245 (= res!2302078 (or (not lt!2207355) (not lt!2207354)))))

(declare-fun b!5412246 () Bool)

(declare-fun e!3354960 () Unit!154294)

(declare-fun Unit!154296 () Unit!154294)

(assert (=> b!5412246 (= e!3354960 Unit!154296)))

(declare-fun lt!2207300 () Unit!154294)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!430 ((InoxSet Context!9154) (InoxSet Context!9154) List!61878) Unit!154294)

(assert (=> b!5412246 (= lt!2207300 (lemmaZipperConcatMatchesSameAsBothZippers!430 lt!2207334 lt!2207332 (t!375101 s!2326)))))

(declare-fun res!2302079 () Bool)

(assert (=> b!5412246 (= res!2302079 (matchZipper!1437 lt!2207334 (t!375101 s!2326)))))

(declare-fun e!3354943 () Bool)

(assert (=> b!5412246 (=> res!2302079 e!3354943)))

(assert (=> b!5412246 (= (matchZipper!1437 ((_ map or) lt!2207334 lt!2207332) (t!375101 s!2326)) e!3354943)))

(declare-fun e!3354947 () Bool)

(assert (=> b!5412247 (= e!3354939 e!3354947)))

(declare-fun res!2302089 () Bool)

(assert (=> b!5412247 (=> res!2302089 e!3354947)))

(declare-fun matchR!7378 (Regex!15193 List!61878) Bool)

(assert (=> b!5412247 (= res!2302089 (not (matchR!7378 lt!2207321 (_1!35695 lt!2207307))))))

(declare-fun lt!2207351 () Option!15304)

(assert (=> b!5412247 (= lt!2207307 (get!21292 lt!2207351))))

(assert (=> b!5412247 (= (Exists!2374 lambda!282737) (Exists!2374 lambda!282738))))

(declare-fun lt!2207357 () Unit!154294)

(assert (=> b!5412247 (= lt!2207357 (lemmaExistCutMatchRandMatchRSpecEquivalent!1028 lt!2207321 (regTwo!30898 r!7292) s!2326))))

(assert (=> b!5412247 (= (isDefined!12007 lt!2207351) (Exists!2374 lambda!282737))))

(assert (=> b!5412247 (= lt!2207351 (findConcatSeparation!1718 lt!2207321 (regTwo!30898 r!7292) Nil!61754 s!2326 s!2326))))

(declare-fun lt!2207350 () Unit!154294)

(assert (=> b!5412247 (= lt!2207350 (lemmaFindConcatSeparationEquivalentToExists!1482 lt!2207321 (regTwo!30898 r!7292) s!2326))))

(declare-fun lt!2207325 () Regex!15193)

(declare-fun matchRSpec!2296 (Regex!15193 List!61878) Bool)

(assert (=> b!5412247 (matchRSpec!2296 lt!2207325 s!2326)))

(declare-fun lt!2207323 () Unit!154294)

(declare-fun mainMatchTheorem!2296 (Regex!15193 List!61878) Unit!154294)

(assert (=> b!5412247 (= lt!2207323 (mainMatchTheorem!2296 lt!2207325 s!2326))))

(assert (=> b!5412247 (matchR!7378 lt!2207325 s!2326)))

(assert (=> b!5412247 (= lt!2207325 (Concat!24038 lt!2207321 (regTwo!30898 r!7292)))))

(assert (=> b!5412247 (= lt!2207321 (Concat!24038 (reg!15522 (regOne!30898 r!7292)) lt!2207337))))

(declare-fun lt!2207359 () Unit!154294)

(declare-fun lemmaConcatAssociative!46 (Regex!15193 Regex!15193 Regex!15193 List!61878) Unit!154294)

(assert (=> b!5412247 (= lt!2207359 (lemmaConcatAssociative!46 (reg!15522 (regOne!30898 r!7292)) lt!2207337 (regTwo!30898 r!7292) s!2326))))

(declare-fun e!3354942 () Bool)

(assert (=> b!5412247 e!3354942))

(declare-fun res!2302067 () Bool)

(assert (=> b!5412247 (=> (not res!2302067) (not e!3354942))))

(assert (=> b!5412247 (= res!2302067 (matchR!7378 lt!2207349 lt!2207305))))

(declare-fun lt!2207315 () Unit!154294)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!216 (Regex!15193 Regex!15193 List!61878 List!61878) Unit!154294)

(assert (=> b!5412247 (= lt!2207315 (lemmaTwoRegexMatchThenConcatMatchesConcatString!216 (reg!15522 (regOne!30898 r!7292)) lt!2207299 (_1!35695 lt!2207343) (_2!35695 lt!2207343)))))

(assert (=> b!5412247 (matchR!7378 lt!2207299 (_2!35695 lt!2207343))))

(declare-fun lt!2207314 () Unit!154294)

(declare-fun theoremZipperRegexEquiv!507 ((InoxSet Context!9154) List!61880 Regex!15193 List!61878) Unit!154294)

(assert (=> b!5412247 (= lt!2207314 (theoremZipperRegexEquiv!507 lt!2207335 lt!2207322 lt!2207299 (_2!35695 lt!2207343)))))

(assert (=> b!5412247 (matchR!7378 (reg!15522 (regOne!30898 r!7292)) (_1!35695 lt!2207343))))

(declare-fun lt!2207352 () Unit!154294)

(declare-fun lt!2207358 () List!61880)

(assert (=> b!5412247 (= lt!2207352 (theoremZipperRegexEquiv!507 lt!2207353 lt!2207358 (reg!15522 (regOne!30898 r!7292)) (_1!35695 lt!2207343)))))

(declare-fun lt!2207316 () List!61879)

(declare-fun ++!13560 (List!61879 List!61879) List!61879)

(assert (=> b!5412247 (matchZipper!1437 (store ((as const (Array Context!9154 Bool)) false) (Context!9155 (++!13560 lt!2207316 lt!2207338)) true) lt!2207305)))

(declare-fun lambda!282736 () Int)

(declare-fun lt!2207356 () Unit!154294)

(declare-fun lemmaConcatPreservesForall!218 (List!61879 List!61879 Int) Unit!154294)

(assert (=> b!5412247 (= lt!2207356 (lemmaConcatPreservesForall!218 lt!2207316 lt!2207338 lambda!282736))))

(declare-fun lt!2207317 () Context!9154)

(declare-fun lt!2207346 () Unit!154294)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!66 (Context!9154 Context!9154 List!61878 List!61878) Unit!154294)

(assert (=> b!5412247 (= lt!2207346 (lemmaConcatenateContextMatchesConcatOfStrings!66 lt!2207317 lt!2207302 (_1!35695 lt!2207343) (_2!35695 lt!2207343)))))

(declare-fun b!5412248 () Bool)

(declare-fun e!3354954 () Bool)

(declare-fun validRegex!6929 (Regex!15193) Bool)

(assert (=> b!5412248 (= e!3354954 (validRegex!6929 lt!2207337))))

(declare-fun b!5412249 () Bool)

(declare-fun Unit!154297 () Unit!154294)

(assert (=> b!5412249 (= e!3354960 Unit!154297)))

(declare-fun b!5412250 () Bool)

(declare-fun res!2302083 () Bool)

(assert (=> b!5412250 (=> res!2302083 e!3354939)))

(assert (=> b!5412250 (= res!2302083 (not (matchZipper!1437 lt!2207353 (_1!35695 lt!2207343))))))

(declare-fun b!5412251 () Bool)

(declare-fun e!3354952 () Bool)

(declare-fun tp!1495844 () Bool)

(assert (=> b!5412251 (= e!3354952 (and tp_is_empty!39639 tp!1495844))))

(declare-fun b!5412252 () Bool)

(declare-fun res!2302087 () Bool)

(assert (=> b!5412252 (=> res!2302087 e!3354937)))

(declare-fun isEmpty!33744 (List!61879) Bool)

(assert (=> b!5412252 (= res!2302087 (isEmpty!33744 (t!375102 (exprs!5077 (h!68204 zl!343)))))))

(declare-fun b!5412253 () Bool)

(declare-fun res!2302070 () Bool)

(declare-fun e!3354944 () Bool)

(assert (=> b!5412253 (=> res!2302070 e!3354944)))

(assert (=> b!5412253 (= res!2302070 (not (= lt!2207331 r!7292)))))

(declare-fun b!5412254 () Bool)

(declare-fun res!2302086 () Bool)

(assert (=> b!5412254 (=> res!2302086 e!3354956)))

(assert (=> b!5412254 (= res!2302086 (not ((_ is Cons!61755) (exprs!5077 (h!68204 zl!343)))))))

(declare-fun b!5412255 () Bool)

(assert (=> b!5412255 (= e!3354943 (matchZipper!1437 lt!2207332 (t!375101 s!2326)))))

(assert (=> b!5412256 (= e!3354936 e!3354935)))

(declare-fun res!2302064 () Bool)

(assert (=> b!5412256 (=> res!2302064 e!3354935)))

(declare-fun lt!2207328 () (InoxSet Context!9154))

(declare-fun appendTo!52 ((InoxSet Context!9154) Context!9154) (InoxSet Context!9154))

(assert (=> b!5412256 (= res!2302064 (not (= (appendTo!52 lt!2207353 lt!2207302) lt!2207328)))))

(declare-fun lambda!282735 () Int)

(declare-fun map!14174 ((InoxSet Context!9154) Int) (InoxSet Context!9154))

(assert (=> b!5412256 (= (map!14174 lt!2207353 lambda!282735) (store ((as const (Array Context!9154 Bool)) false) (Context!9155 (++!13560 lt!2207316 lt!2207338)) true))))

(declare-fun lt!2207309 () Unit!154294)

(assert (=> b!5412256 (= lt!2207309 (lemmaConcatPreservesForall!218 lt!2207316 lt!2207338 lambda!282736))))

(declare-fun lt!2207319 () Unit!154294)

(declare-fun lemmaMapOnSingletonSet!52 ((InoxSet Context!9154) Context!9154 Int) Unit!154294)

(assert (=> b!5412256 (= lt!2207319 (lemmaMapOnSingletonSet!52 lt!2207353 lt!2207317 lambda!282735))))

(declare-fun b!5412257 () Bool)

(declare-fun res!2302088 () Bool)

(assert (=> b!5412257 (=> res!2302088 e!3354962)))

(declare-fun z!1189 () (InoxSet Context!9154))

(assert (=> b!5412257 (= res!2302088 (not (matchZipper!1437 z!1189 s!2326)))))

(assert (=> b!5412258 (= e!3354937 e!3354949)))

(declare-fun res!2302084 () Bool)

(assert (=> b!5412258 (=> res!2302084 e!3354949)))

(assert (=> b!5412258 (= res!2302084 (or (and ((_ is ElementMatch!15193) (regOne!30898 r!7292)) (= (c!943557 (regOne!30898 r!7292)) (h!68202 s!2326))) ((_ is Union!15193) (regOne!30898 r!7292))))))

(declare-fun lt!2207313 () Unit!154294)

(assert (=> b!5412258 (= lt!2207313 e!3354960)))

(declare-fun c!943556 () Bool)

(declare-fun lt!2207341 () Bool)

(assert (=> b!5412258 (= c!943556 lt!2207341)))

(assert (=> b!5412258 (= lt!2207341 (nullable!5362 (h!68203 (exprs!5077 (h!68204 zl!343)))))))

(declare-fun lambda!282734 () Int)

(declare-fun flatMap!920 ((InoxSet Context!9154) Int) (InoxSet Context!9154))

(declare-fun derivationStepZipperUp!565 (Context!9154 C!30656) (InoxSet Context!9154))

(assert (=> b!5412258 (= (flatMap!920 z!1189 lambda!282734) (derivationStepZipperUp!565 (h!68204 zl!343) (h!68202 s!2326)))))

(declare-fun lt!2207310 () Unit!154294)

(declare-fun lemmaFlatMapOnSingletonSet!452 ((InoxSet Context!9154) Context!9154 Int) Unit!154294)

(assert (=> b!5412258 (= lt!2207310 (lemmaFlatMapOnSingletonSet!452 z!1189 (h!68204 zl!343) lambda!282734))))

(declare-fun lt!2207336 () Context!9154)

(assert (=> b!5412258 (= lt!2207332 (derivationStepZipperUp!565 lt!2207336 (h!68202 s!2326)))))

(assert (=> b!5412258 (= lt!2207334 (derivationStepZipperDown!641 (h!68203 (exprs!5077 (h!68204 zl!343))) lt!2207336 (h!68202 s!2326)))))

(assert (=> b!5412258 (= lt!2207336 (Context!9155 (t!375102 (exprs!5077 (h!68204 zl!343)))))))

(declare-fun lt!2207344 () (InoxSet Context!9154))

(assert (=> b!5412258 (= lt!2207344 (derivationStepZipperUp!565 (Context!9155 (Cons!61755 (h!68203 (exprs!5077 (h!68204 zl!343))) (t!375102 (exprs!5077 (h!68204 zl!343))))) (h!68202 s!2326)))))

(declare-fun b!5412259 () Bool)

(declare-fun res!2302075 () Bool)

(assert (=> b!5412259 (=> res!2302075 e!3354956)))

(declare-fun isEmpty!33745 (List!61880) Bool)

(assert (=> b!5412259 (= res!2302075 (not (isEmpty!33745 (t!375103 zl!343))))))

(declare-fun b!5412260 () Bool)

(declare-fun res!2302061 () Bool)

(assert (=> b!5412260 (=> res!2302061 e!3354962)))

(assert (=> b!5412260 (= res!2302061 (not lt!2207341))))

(declare-fun b!5412261 () Bool)

(declare-fun tp!1495845 () Bool)

(declare-fun tp!1495848 () Bool)

(assert (=> b!5412261 (= e!3354946 (and tp!1495845 tp!1495848))))

(declare-fun b!5412262 () Bool)

(assert (=> b!5412262 (= e!3354955 e!3354961)))

(declare-fun res!2302080 () Bool)

(assert (=> b!5412262 (=> res!2302080 e!3354961)))

(assert (=> b!5412262 (= res!2302080 (not (= (unfocusZipper!935 lt!2207358) (reg!15522 (regOne!30898 r!7292)))))))

(assert (=> b!5412262 (= lt!2207358 (Cons!61756 lt!2207317 Nil!61756))))

(assert (=> b!5412262 (= (flatMap!920 lt!2207335 lambda!282734) (derivationStepZipperUp!565 lt!2207302 (h!68202 s!2326)))))

(declare-fun lt!2207329 () Unit!154294)

(assert (=> b!5412262 (= lt!2207329 (lemmaFlatMapOnSingletonSet!452 lt!2207335 lt!2207302 lambda!282734))))

(assert (=> b!5412262 (= (flatMap!920 lt!2207353 lambda!282734) (derivationStepZipperUp!565 lt!2207317 (h!68202 s!2326)))))

(declare-fun lt!2207326 () Unit!154294)

(assert (=> b!5412262 (= lt!2207326 (lemmaFlatMapOnSingletonSet!452 lt!2207353 lt!2207317 lambda!282734))))

(declare-fun lt!2207340 () (InoxSet Context!9154))

(assert (=> b!5412262 (= lt!2207340 (derivationStepZipperUp!565 lt!2207302 (h!68202 s!2326)))))

(declare-fun lt!2207306 () (InoxSet Context!9154))

(assert (=> b!5412262 (= lt!2207306 (derivationStepZipperUp!565 lt!2207317 (h!68202 s!2326)))))

(assert (=> b!5412262 (= lt!2207335 (store ((as const (Array Context!9154 Bool)) false) lt!2207302 true))))

(assert (=> b!5412262 (= lt!2207353 (store ((as const (Array Context!9154 Bool)) false) lt!2207317 true))))

(assert (=> b!5412262 (= lt!2207317 (Context!9155 lt!2207316))))

(assert (=> b!5412262 (= lt!2207316 (Cons!61755 (reg!15522 (regOne!30898 r!7292)) Nil!61755))))

(declare-fun setIsEmpty!35261 () Bool)

(declare-fun setRes!35261 () Bool)

(assert (=> setIsEmpty!35261 setRes!35261))

(declare-fun res!2302071 () Bool)

(assert (=> start!568286 (=> (not res!2302071) (not e!3354951))))

(assert (=> start!568286 (= res!2302071 (validRegex!6929 r!7292))))

(assert (=> start!568286 e!3354951))

(assert (=> start!568286 e!3354946))

(declare-fun condSetEmpty!35261 () Bool)

(assert (=> start!568286 (= condSetEmpty!35261 (= z!1189 ((as const (Array Context!9154 Bool)) false)))))

(assert (=> start!568286 setRes!35261))

(declare-fun e!3354950 () Bool)

(assert (=> start!568286 e!3354950))

(assert (=> start!568286 e!3354952))

(declare-fun b!5412263 () Bool)

(declare-fun res!2302057 () Bool)

(assert (=> b!5412263 (=> (not res!2302057) (not e!3354951))))

(declare-fun toList!8977 ((InoxSet Context!9154)) List!61880)

(assert (=> b!5412263 (= res!2302057 (= (toList!8977 z!1189) zl!343))))

(declare-fun b!5412264 () Bool)

(declare-fun res!2302055 () Bool)

(assert (=> b!5412264 (=> res!2302055 e!3354956)))

(assert (=> b!5412264 (= res!2302055 (or ((_ is EmptyExpr!15193) r!7292) ((_ is EmptyLang!15193) r!7292) ((_ is ElementMatch!15193) r!7292) ((_ is Union!15193) r!7292) (not ((_ is Concat!24038) r!7292))))))

(declare-fun b!5412265 () Bool)

(declare-fun e!3354959 () Bool)

(assert (=> b!5412265 (= e!3354959 e!3354944)))

(declare-fun res!2302053 () Bool)

(assert (=> b!5412265 (=> res!2302053 e!3354944)))

(declare-fun lt!2207333 () (InoxSet Context!9154))

(assert (=> b!5412265 (= res!2302053 (not (= lt!2207354 (matchZipper!1437 lt!2207333 (t!375101 s!2326)))))))

(assert (=> b!5412265 (= lt!2207354 (matchZipper!1437 lt!2207328 s!2326))))

(declare-fun b!5412266 () Bool)

(assert (=> b!5412266 (= e!3354948 e!3354962)))

(declare-fun res!2302060 () Bool)

(assert (=> b!5412266 (=> res!2302060 e!3354962)))

(assert (=> b!5412266 (= res!2302060 lt!2207304)))

(declare-fun lt!2207308 () Bool)

(assert (=> b!5412266 (= lt!2207308 (matchRSpec!2296 lt!2207349 s!2326))))

(assert (=> b!5412266 (= lt!2207308 (matchR!7378 lt!2207349 s!2326))))

(declare-fun lt!2207348 () Unit!154294)

(assert (=> b!5412266 (= lt!2207348 (mainMatchTheorem!2296 lt!2207349 s!2326))))

(declare-fun b!5412267 () Bool)

(assert (=> b!5412267 (= e!3354958 e!3354959)))

(declare-fun res!2302056 () Bool)

(assert (=> b!5412267 (=> res!2302056 e!3354959)))

(assert (=> b!5412267 (= res!2302056 (not (= lt!2207333 lt!2207324)))))

(assert (=> b!5412267 (= (flatMap!920 lt!2207328 lambda!282734) (derivationStepZipperUp!565 lt!2207347 (h!68202 s!2326)))))

(declare-fun lt!2207345 () Unit!154294)

(assert (=> b!5412267 (= lt!2207345 (lemmaFlatMapOnSingletonSet!452 lt!2207328 lt!2207347 lambda!282734))))

(declare-fun lt!2207312 () (InoxSet Context!9154))

(assert (=> b!5412267 (= lt!2207312 (derivationStepZipperUp!565 lt!2207347 (h!68202 s!2326)))))

(declare-fun derivationStepZipper!1432 ((InoxSet Context!9154) C!30656) (InoxSet Context!9154))

(assert (=> b!5412267 (= lt!2207333 (derivationStepZipper!1432 lt!2207328 (h!68202 s!2326)))))

(assert (=> b!5412267 (= lt!2207328 (store ((as const (Array Context!9154 Bool)) false) lt!2207347 true))))

(assert (=> b!5412267 (= lt!2207347 (Context!9155 (Cons!61755 (reg!15522 (regOne!30898 r!7292)) lt!2207338)))))

(declare-fun tp!1495846 () Bool)

(declare-fun setNonEmpty!35261 () Bool)

(declare-fun setElem!35261 () Context!9154)

(declare-fun inv!81229 (Context!9154) Bool)

(assert (=> setNonEmpty!35261 (= setRes!35261 (and tp!1495846 (inv!81229 setElem!35261) e!3354941))))

(declare-fun setRest!35261 () (InoxSet Context!9154))

(assert (=> setNonEmpty!35261 (= z!1189 ((_ map or) (store ((as const (Array Context!9154 Bool)) false) setElem!35261 true) setRest!35261))))

(declare-fun b!5412268 () Bool)

(assert (=> b!5412268 (= e!3354942 lt!2207308)))

(declare-fun b!5412269 () Bool)

(declare-fun tp!1495849 () Bool)

(assert (=> b!5412269 (= e!3354950 (and (inv!81229 (h!68204 zl!343)) e!3354945 tp!1495849))))

(declare-fun b!5412270 () Bool)

(assert (=> b!5412270 (= e!3354957 (not e!3354956))))

(declare-fun res!2302066 () Bool)

(assert (=> b!5412270 (=> res!2302066 e!3354956)))

(assert (=> b!5412270 (= res!2302066 (not ((_ is Cons!61756) zl!343)))))

(assert (=> b!5412270 (= lt!2207304 (matchRSpec!2296 r!7292 s!2326))))

(assert (=> b!5412270 (= lt!2207304 (matchR!7378 r!7292 s!2326))))

(declare-fun lt!2207303 () Unit!154294)

(assert (=> b!5412270 (= lt!2207303 (mainMatchTheorem!2296 r!7292 s!2326))))

(declare-fun b!5412271 () Bool)

(declare-fun res!2302058 () Bool)

(assert (=> b!5412271 (=> res!2302058 e!3354956)))

(declare-fun generalisedConcat!862 (List!61879) Regex!15193)

(assert (=> b!5412271 (= res!2302058 (not (= r!7292 (generalisedConcat!862 (exprs!5077 (h!68204 zl!343))))))))

(declare-fun b!5412272 () Bool)

(declare-fun tp!1495841 () Bool)

(assert (=> b!5412272 (= e!3354946 tp!1495841)))

(declare-fun b!5412273 () Bool)

(declare-fun tp!1495842 () Bool)

(declare-fun tp!1495843 () Bool)

(assert (=> b!5412273 (= e!3354946 (and tp!1495842 tp!1495843))))

(assert (=> b!5412274 (= e!3354947 e!3354954)))

(declare-fun res!2302085 () Bool)

(assert (=> b!5412274 (=> res!2302085 e!3354954)))

(assert (=> b!5412274 (= res!2302085 (not (validRegex!6929 (reg!15522 (regOne!30898 r!7292)))))))

(assert (=> b!5412274 (= (Exists!2374 lambda!282739) (Exists!2374 lambda!282741))))

(declare-fun lt!2207360 () Unit!154294)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!404 (Regex!15193 List!61878) Unit!154294)

(assert (=> b!5412274 (= lt!2207360 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!404 (reg!15522 (regOne!30898 r!7292)) (_1!35695 lt!2207307)))))

(assert (=> b!5412274 (= (Exists!2374 lambda!282739) (Exists!2374 lambda!282740))))

(declare-fun lt!2207330 () Unit!154294)

(assert (=> b!5412274 (= lt!2207330 (lemmaExistCutMatchRandMatchRSpecEquivalent!1028 (reg!15522 (regOne!30898 r!7292)) lt!2207337 (_1!35695 lt!2207307)))))

(assert (=> b!5412274 (= (isDefined!12007 (findConcatSeparation!1718 (reg!15522 (regOne!30898 r!7292)) lt!2207337 Nil!61754 (_1!35695 lt!2207307) (_1!35695 lt!2207307))) (Exists!2374 lambda!282739))))

(declare-fun lt!2207339 () Unit!154294)

(assert (=> b!5412274 (= lt!2207339 (lemmaFindConcatSeparationEquivalentToExists!1482 (reg!15522 (regOne!30898 r!7292)) lt!2207337 (_1!35695 lt!2207307)))))

(assert (=> b!5412274 (matchRSpec!2296 lt!2207321 (_1!35695 lt!2207307))))

(declare-fun lt!2207311 () Unit!154294)

(assert (=> b!5412274 (= lt!2207311 (mainMatchTheorem!2296 lt!2207321 (_1!35695 lt!2207307)))))

(declare-fun b!5412275 () Bool)

(assert (=> b!5412275 (= e!3354944 e!3354940)))

(declare-fun res!2302072 () Bool)

(assert (=> b!5412275 (=> res!2302072 e!3354940)))

(assert (=> b!5412275 (= res!2302072 (not (= r!7292 lt!2207299)))))

(assert (=> b!5412275 (= lt!2207299 (Concat!24038 lt!2207337 (regTwo!30898 r!7292)))))

(declare-fun b!5412276 () Bool)

(declare-fun res!2302081 () Bool)

(assert (=> b!5412276 (=> res!2302081 e!3354949)))

(assert (=> b!5412276 (= res!2302081 e!3354938)))

(declare-fun res!2302069 () Bool)

(assert (=> b!5412276 (=> (not res!2302069) (not e!3354938))))

(assert (=> b!5412276 (= res!2302069 ((_ is Concat!24038) (regOne!30898 r!7292)))))

(declare-fun b!5412277 () Bool)

(declare-fun res!2302054 () Bool)

(assert (=> b!5412277 (=> res!2302054 e!3354956)))

(declare-fun generalisedUnion!1122 (List!61879) Regex!15193)

(declare-fun unfocusZipperList!635 (List!61880) List!61879)

(assert (=> b!5412277 (= res!2302054 (not (= r!7292 (generalisedUnion!1122 (unfocusZipperList!635 zl!343)))))))

(assert (= (and start!568286 res!2302071) b!5412263))

(assert (= (and b!5412263 res!2302057) b!5412233))

(assert (= (and b!5412233 res!2302082) b!5412270))

(assert (= (and b!5412270 (not res!2302066)) b!5412259))

(assert (= (and b!5412259 (not res!2302075)) b!5412271))

(assert (= (and b!5412271 (not res!2302058)) b!5412254))

(assert (= (and b!5412254 (not res!2302086)) b!5412277))

(assert (= (and b!5412277 (not res!2302054)) b!5412264))

(assert (= (and b!5412264 (not res!2302055)) b!5412241))

(assert (= (and b!5412241 (not res!2302065)) b!5412252))

(assert (= (and b!5412252 (not res!2302087)) b!5412258))

(assert (= (and b!5412258 c!943556) b!5412246))

(assert (= (and b!5412258 (not c!943556)) b!5412249))

(assert (= (and b!5412246 (not res!2302079)) b!5412255))

(assert (= (and b!5412258 (not res!2302084)) b!5412276))

(assert (= (and b!5412276 res!2302069) b!5412239))

(assert (= (and b!5412276 (not res!2302081)) b!5412232))

(assert (= (and b!5412232 (not res!2302076)) b!5412234))

(assert (= (and b!5412234 (not res!2302077)) b!5412267))

(assert (= (and b!5412267 (not res!2302056)) b!5412265))

(assert (= (and b!5412265 (not res!2302053)) b!5412253))

(assert (= (and b!5412253 (not res!2302070)) b!5412275))

(assert (= (and b!5412275 (not res!2302072)) b!5412235))

(assert (= (and b!5412235 (not res!2302063)) b!5412262))

(assert (= (and b!5412262 (not res!2302080)) b!5412231))

(assert (= (and b!5412231 (not res!2302062)) b!5412266))

(assert (= (and b!5412266 (not res!2302060)) b!5412257))

(assert (= (and b!5412257 (not res!2302088)) b!5412260))

(assert (= (and b!5412260 (not res!2302061)) b!5412240))

(assert (= (and b!5412240 res!2302068) b!5412244))

(assert (= (and b!5412240 (not res!2302059)) b!5412245))

(assert (= (and b!5412245 (not res!2302078)) b!5412256))

(assert (= (and b!5412256 (not res!2302064)) b!5412236))

(assert (= (and b!5412236 (not res!2302074)) b!5412250))

(assert (= (and b!5412250 (not res!2302083)) b!5412238))

(assert (= (and b!5412238 (not res!2302073)) b!5412247))

(assert (= (and b!5412247 res!2302067) b!5412268))

(assert (= (and b!5412247 (not res!2302089)) b!5412274))

(assert (= (and b!5412274 (not res!2302085)) b!5412248))

(assert (= (and start!568286 ((_ is ElementMatch!15193) r!7292)) b!5412237))

(assert (= (and start!568286 ((_ is Concat!24038) r!7292)) b!5412273))

(assert (= (and start!568286 ((_ is Star!15193) r!7292)) b!5412272))

(assert (= (and start!568286 ((_ is Union!15193) r!7292)) b!5412261))

(assert (= (and start!568286 condSetEmpty!35261) setIsEmpty!35261))

(assert (= (and start!568286 (not condSetEmpty!35261)) setNonEmpty!35261))

(assert (= setNonEmpty!35261 b!5412243))

(assert (= b!5412269 b!5412242))

(assert (= (and start!568286 ((_ is Cons!61756) zl!343)) b!5412269))

(assert (= (and start!568286 ((_ is Cons!61754) s!2326)) b!5412251))

(declare-fun m!6436214 () Bool)

(assert (=> b!5412246 m!6436214))

(declare-fun m!6436216 () Bool)

(assert (=> b!5412246 m!6436216))

(declare-fun m!6436218 () Bool)

(assert (=> b!5412246 m!6436218))

(declare-fun m!6436220 () Bool)

(assert (=> b!5412247 m!6436220))

(declare-fun m!6436222 () Bool)

(assert (=> b!5412247 m!6436222))

(declare-fun m!6436224 () Bool)

(assert (=> b!5412247 m!6436224))

(declare-fun m!6436226 () Bool)

(assert (=> b!5412247 m!6436226))

(assert (=> b!5412247 m!6436224))

(declare-fun m!6436228 () Bool)

(assert (=> b!5412247 m!6436228))

(declare-fun m!6436230 () Bool)

(assert (=> b!5412247 m!6436230))

(declare-fun m!6436232 () Bool)

(assert (=> b!5412247 m!6436232))

(declare-fun m!6436234 () Bool)

(assert (=> b!5412247 m!6436234))

(declare-fun m!6436236 () Bool)

(assert (=> b!5412247 m!6436236))

(declare-fun m!6436238 () Bool)

(assert (=> b!5412247 m!6436238))

(declare-fun m!6436240 () Bool)

(assert (=> b!5412247 m!6436240))

(declare-fun m!6436242 () Bool)

(assert (=> b!5412247 m!6436242))

(declare-fun m!6436244 () Bool)

(assert (=> b!5412247 m!6436244))

(declare-fun m!6436246 () Bool)

(assert (=> b!5412247 m!6436246))

(assert (=> b!5412247 m!6436220))

(declare-fun m!6436248 () Bool)

(assert (=> b!5412247 m!6436248))

(declare-fun m!6436250 () Bool)

(assert (=> b!5412247 m!6436250))

(declare-fun m!6436252 () Bool)

(assert (=> b!5412247 m!6436252))

(declare-fun m!6436254 () Bool)

(assert (=> b!5412247 m!6436254))

(declare-fun m!6436256 () Bool)

(assert (=> b!5412247 m!6436256))

(declare-fun m!6436258 () Bool)

(assert (=> b!5412247 m!6436258))

(declare-fun m!6436260 () Bool)

(assert (=> b!5412247 m!6436260))

(declare-fun m!6436262 () Bool)

(assert (=> b!5412247 m!6436262))

(declare-fun m!6436264 () Bool)

(assert (=> b!5412247 m!6436264))

(declare-fun m!6436266 () Bool)

(assert (=> setNonEmpty!35261 m!6436266))

(declare-fun m!6436268 () Bool)

(assert (=> b!5412239 m!6436268))

(declare-fun m!6436270 () Bool)

(assert (=> b!5412252 m!6436270))

(declare-fun m!6436272 () Bool)

(assert (=> b!5412259 m!6436272))

(declare-fun m!6436274 () Bool)

(assert (=> b!5412270 m!6436274))

(declare-fun m!6436276 () Bool)

(assert (=> b!5412270 m!6436276))

(declare-fun m!6436278 () Bool)

(assert (=> b!5412270 m!6436278))

(declare-fun m!6436280 () Bool)

(assert (=> start!568286 m!6436280))

(declare-fun m!6436282 () Bool)

(assert (=> b!5412257 m!6436282))

(declare-fun m!6436284 () Bool)

(assert (=> b!5412271 m!6436284))

(declare-fun m!6436286 () Bool)

(assert (=> b!5412277 m!6436286))

(assert (=> b!5412277 m!6436286))

(declare-fun m!6436288 () Bool)

(assert (=> b!5412277 m!6436288))

(declare-fun m!6436290 () Bool)

(assert (=> b!5412241 m!6436290))

(declare-fun m!6436292 () Bool)

(assert (=> b!5412241 m!6436292))

(declare-fun m!6436294 () Bool)

(assert (=> b!5412241 m!6436294))

(assert (=> b!5412241 m!6436294))

(declare-fun m!6436296 () Bool)

(assert (=> b!5412241 m!6436296))

(declare-fun m!6436298 () Bool)

(assert (=> b!5412241 m!6436298))

(assert (=> b!5412241 m!6436290))

(declare-fun m!6436300 () Bool)

(assert (=> b!5412241 m!6436300))

(declare-fun m!6436302 () Bool)

(assert (=> b!5412244 m!6436302))

(declare-fun m!6436304 () Bool)

(assert (=> b!5412274 m!6436304))

(declare-fun m!6436306 () Bool)

(assert (=> b!5412274 m!6436306))

(declare-fun m!6436308 () Bool)

(assert (=> b!5412274 m!6436308))

(declare-fun m!6436310 () Bool)

(assert (=> b!5412274 m!6436310))

(declare-fun m!6436312 () Bool)

(assert (=> b!5412274 m!6436312))

(assert (=> b!5412274 m!6436304))

(declare-fun m!6436314 () Bool)

(assert (=> b!5412274 m!6436314))

(declare-fun m!6436316 () Bool)

(assert (=> b!5412274 m!6436316))

(declare-fun m!6436318 () Bool)

(assert (=> b!5412274 m!6436318))

(declare-fun m!6436320 () Bool)

(assert (=> b!5412274 m!6436320))

(assert (=> b!5412274 m!6436318))

(declare-fun m!6436322 () Bool)

(assert (=> b!5412274 m!6436322))

(assert (=> b!5412274 m!6436304))

(declare-fun m!6436324 () Bool)

(assert (=> b!5412274 m!6436324))

(declare-fun m!6436326 () Bool)

(assert (=> b!5412231 m!6436326))

(declare-fun m!6436328 () Bool)

(assert (=> b!5412238 m!6436328))

(declare-fun m!6436330 () Bool)

(assert (=> b!5412248 m!6436330))

(declare-fun m!6436332 () Bool)

(assert (=> b!5412233 m!6436332))

(declare-fun m!6436334 () Bool)

(assert (=> b!5412269 m!6436334))

(assert (=> b!5412240 m!6436216))

(declare-fun m!6436336 () Bool)

(assert (=> b!5412265 m!6436336))

(declare-fun m!6436338 () Bool)

(assert (=> b!5412265 m!6436338))

(assert (=> b!5412255 m!6436302))

(declare-fun m!6436340 () Bool)

(assert (=> b!5412267 m!6436340))

(declare-fun m!6436342 () Bool)

(assert (=> b!5412267 m!6436342))

(declare-fun m!6436344 () Bool)

(assert (=> b!5412267 m!6436344))

(declare-fun m!6436346 () Bool)

(assert (=> b!5412267 m!6436346))

(declare-fun m!6436348 () Bool)

(assert (=> b!5412267 m!6436348))

(declare-fun m!6436350 () Bool)

(assert (=> b!5412258 m!6436350))

(declare-fun m!6436352 () Bool)

(assert (=> b!5412258 m!6436352))

(declare-fun m!6436354 () Bool)

(assert (=> b!5412258 m!6436354))

(declare-fun m!6436356 () Bool)

(assert (=> b!5412258 m!6436356))

(declare-fun m!6436358 () Bool)

(assert (=> b!5412258 m!6436358))

(declare-fun m!6436360 () Bool)

(assert (=> b!5412258 m!6436360))

(declare-fun m!6436362 () Bool)

(assert (=> b!5412258 m!6436362))

(declare-fun m!6436364 () Bool)

(assert (=> b!5412234 m!6436364))

(declare-fun m!6436366 () Bool)

(assert (=> b!5412262 m!6436366))

(declare-fun m!6436368 () Bool)

(assert (=> b!5412262 m!6436368))

(declare-fun m!6436370 () Bool)

(assert (=> b!5412262 m!6436370))

(declare-fun m!6436372 () Bool)

(assert (=> b!5412262 m!6436372))

(declare-fun m!6436374 () Bool)

(assert (=> b!5412262 m!6436374))

(declare-fun m!6436376 () Bool)

(assert (=> b!5412262 m!6436376))

(declare-fun m!6436378 () Bool)

(assert (=> b!5412262 m!6436378))

(declare-fun m!6436380 () Bool)

(assert (=> b!5412262 m!6436380))

(declare-fun m!6436382 () Bool)

(assert (=> b!5412262 m!6436382))

(declare-fun m!6436384 () Bool)

(assert (=> b!5412236 m!6436384))

(declare-fun m!6436386 () Bool)

(assert (=> b!5412236 m!6436386))

(declare-fun m!6436388 () Bool)

(assert (=> b!5412236 m!6436388))

(declare-fun m!6436390 () Bool)

(assert (=> b!5412236 m!6436390))

(declare-fun m!6436392 () Bool)

(assert (=> b!5412236 m!6436392))

(declare-fun m!6436394 () Bool)

(assert (=> b!5412263 m!6436394))

(declare-fun m!6436396 () Bool)

(assert (=> b!5412235 m!6436396))

(declare-fun m!6436398 () Bool)

(assert (=> b!5412250 m!6436398))

(declare-fun m!6436400 () Bool)

(assert (=> b!5412256 m!6436400))

(declare-fun m!6436402 () Bool)

(assert (=> b!5412256 m!6436402))

(assert (=> b!5412256 m!6436220))

(assert (=> b!5412256 m!6436248))

(declare-fun m!6436404 () Bool)

(assert (=> b!5412256 m!6436404))

(assert (=> b!5412256 m!6436238))

(declare-fun m!6436406 () Bool)

(assert (=> b!5412266 m!6436406))

(declare-fun m!6436408 () Bool)

(assert (=> b!5412266 m!6436408))

(declare-fun m!6436410 () Bool)

(assert (=> b!5412266 m!6436410))

(check-sat (not b!5412257) (not b!5412240) (not b!5412258) (not b!5412255) (not b!5412273) (not b!5412247) (not b!5412241) (not b!5412269) (not b!5412277) (not b!5412263) (not b!5412274) (not b!5412239) (not b!5412252) (not b!5412235) tp_is_empty!39639 (not b!5412267) (not start!568286) (not setNonEmpty!35261) (not b!5412272) (not b!5412265) (not b!5412251) (not b!5412266) (not b!5412259) (not b!5412243) (not b!5412262) (not b!5412238) (not b!5412256) (not b!5412248) (not b!5412236) (not b!5412231) (not b!5412233) (not b!5412244) (not b!5412250) (not b!5412242) (not b!5412270) (not b!5412234) (not b!5412246) (not b!5412261) (not b!5412271))
(check-sat)
(get-model)

(declare-fun d!1727288 () Bool)

(declare-fun e!3355112 () Bool)

(assert (=> d!1727288 e!3355112))

(declare-fun res!2302244 () Bool)

(assert (=> d!1727288 (=> (not res!2302244) (not e!3355112))))

(declare-fun lt!2207419 () List!61880)

(declare-fun noDuplicate!1395 (List!61880) Bool)

(assert (=> d!1727288 (= res!2302244 (noDuplicate!1395 lt!2207419))))

(declare-fun choose!40890 ((InoxSet Context!9154)) List!61880)

(assert (=> d!1727288 (= lt!2207419 (choose!40890 z!1189))))

(assert (=> d!1727288 (= (toList!8977 z!1189) lt!2207419)))

(declare-fun b!5412554 () Bool)

(declare-fun content!11083 (List!61880) (InoxSet Context!9154))

(assert (=> b!5412554 (= e!3355112 (= (content!11083 lt!2207419) z!1189))))

(assert (= (and d!1727288 res!2302244) b!5412554))

(declare-fun m!6436656 () Bool)

(assert (=> d!1727288 m!6436656))

(declare-fun m!6436658 () Bool)

(assert (=> d!1727288 m!6436658))

(declare-fun m!6436660 () Bool)

(assert (=> b!5412554 m!6436660))

(assert (=> b!5412263 d!1727288))

(declare-fun b!5412590 () Bool)

(declare-fun e!3355136 () Bool)

(declare-fun e!3355139 () Bool)

(assert (=> b!5412590 (= e!3355136 e!3355139)))

(declare-fun res!2302259 () Bool)

(assert (=> b!5412590 (=> (not res!2302259) (not e!3355139))))

(declare-fun call!387304 () Bool)

(assert (=> b!5412590 (= res!2302259 call!387304)))

(declare-fun b!5412591 () Bool)

(declare-fun call!387302 () Bool)

(assert (=> b!5412591 (= e!3355139 call!387302)))

(declare-fun b!5412592 () Bool)

(declare-fun e!3355137 () Bool)

(assert (=> b!5412592 (= e!3355137 call!387302)))

(declare-fun c!943627 () Bool)

(declare-fun c!943628 () Bool)

(declare-fun bm!387297 () Bool)

(declare-fun call!387303 () Bool)

(assert (=> bm!387297 (= call!387303 (validRegex!6929 (ite c!943628 (reg!15522 r!7292) (ite c!943627 (regTwo!30899 r!7292) (regTwo!30898 r!7292)))))))

(declare-fun b!5412593 () Bool)

(declare-fun e!3355140 () Bool)

(declare-fun e!3355142 () Bool)

(assert (=> b!5412593 (= e!3355140 e!3355142)))

(assert (=> b!5412593 (= c!943628 ((_ is Star!15193) r!7292))))

(declare-fun bm!387298 () Bool)

(assert (=> bm!387298 (= call!387304 (validRegex!6929 (ite c!943627 (regOne!30899 r!7292) (regOne!30898 r!7292))))))

(declare-fun b!5412594 () Bool)

(declare-fun e!3355138 () Bool)

(assert (=> b!5412594 (= e!3355142 e!3355138)))

(declare-fun res!2302261 () Bool)

(assert (=> b!5412594 (= res!2302261 (not (nullable!5362 (reg!15522 r!7292))))))

(assert (=> b!5412594 (=> (not res!2302261) (not e!3355138))))

(declare-fun b!5412595 () Bool)

(declare-fun res!2302258 () Bool)

(assert (=> b!5412595 (=> res!2302258 e!3355136)))

(assert (=> b!5412595 (= res!2302258 (not ((_ is Concat!24038) r!7292)))))

(declare-fun e!3355141 () Bool)

(assert (=> b!5412595 (= e!3355141 e!3355136)))

(declare-fun bm!387299 () Bool)

(assert (=> bm!387299 (= call!387302 call!387303)))

(declare-fun b!5412597 () Bool)

(assert (=> b!5412597 (= e!3355142 e!3355141)))

(assert (=> b!5412597 (= c!943627 ((_ is Union!15193) r!7292))))

(declare-fun b!5412598 () Bool)

(declare-fun res!2302260 () Bool)

(assert (=> b!5412598 (=> (not res!2302260) (not e!3355137))))

(assert (=> b!5412598 (= res!2302260 call!387304)))

(assert (=> b!5412598 (= e!3355141 e!3355137)))

(declare-fun d!1727304 () Bool)

(declare-fun res!2302262 () Bool)

(assert (=> d!1727304 (=> res!2302262 e!3355140)))

(assert (=> d!1727304 (= res!2302262 ((_ is ElementMatch!15193) r!7292))))

(assert (=> d!1727304 (= (validRegex!6929 r!7292) e!3355140)))

(declare-fun b!5412596 () Bool)

(assert (=> b!5412596 (= e!3355138 call!387303)))

(assert (= (and d!1727304 (not res!2302262)) b!5412593))

(assert (= (and b!5412593 c!943628) b!5412594))

(assert (= (and b!5412593 (not c!943628)) b!5412597))

(assert (= (and b!5412594 res!2302261) b!5412596))

(assert (= (and b!5412597 c!943627) b!5412598))

(assert (= (and b!5412597 (not c!943627)) b!5412595))

(assert (= (and b!5412598 res!2302260) b!5412592))

(assert (= (and b!5412595 (not res!2302258)) b!5412590))

(assert (= (and b!5412590 res!2302259) b!5412591))

(assert (= (or b!5412592 b!5412591) bm!387299))

(assert (= (or b!5412598 b!5412590) bm!387298))

(assert (= (or b!5412596 bm!387299) bm!387297))

(declare-fun m!6436674 () Bool)

(assert (=> bm!387297 m!6436674))

(declare-fun m!6436676 () Bool)

(assert (=> bm!387298 m!6436676))

(declare-fun m!6436678 () Bool)

(assert (=> b!5412594 m!6436678))

(assert (=> start!568286 d!1727304))

(declare-fun b!5412642 () Bool)

(declare-fun e!3355171 () Option!15304)

(declare-fun e!3355168 () Option!15304)

(assert (=> b!5412642 (= e!3355171 e!3355168)))

(declare-fun c!943640 () Bool)

(assert (=> b!5412642 (= c!943640 ((_ is Nil!61754) s!2326))))

(declare-fun b!5412643 () Bool)

(declare-fun lt!2207439 () Unit!154294)

(declare-fun lt!2207440 () Unit!154294)

(assert (=> b!5412643 (= lt!2207439 lt!2207440)))

(assert (=> b!5412643 (= (++!13559 (++!13559 Nil!61754 (Cons!61754 (h!68202 s!2326) Nil!61754)) (t!375101 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1841 (List!61878 C!30656 List!61878 List!61878) Unit!154294)

(assert (=> b!5412643 (= lt!2207440 (lemmaMoveElementToOtherListKeepsConcatEq!1841 Nil!61754 (h!68202 s!2326) (t!375101 s!2326) s!2326))))

(assert (=> b!5412643 (= e!3355168 (findConcatSeparation!1718 (regOne!30898 r!7292) (regTwo!30898 r!7292) (++!13559 Nil!61754 (Cons!61754 (h!68202 s!2326) Nil!61754)) (t!375101 s!2326) s!2326))))

(declare-fun b!5412644 () Bool)

(declare-fun e!3355169 () Bool)

(assert (=> b!5412644 (= e!3355169 (matchR!7378 (regTwo!30898 r!7292) s!2326))))

(declare-fun d!1727312 () Bool)

(declare-fun e!3355170 () Bool)

(assert (=> d!1727312 e!3355170))

(declare-fun res!2302290 () Bool)

(assert (=> d!1727312 (=> res!2302290 e!3355170)))

(declare-fun e!3355172 () Bool)

(assert (=> d!1727312 (= res!2302290 e!3355172)))

(declare-fun res!2302286 () Bool)

(assert (=> d!1727312 (=> (not res!2302286) (not e!3355172))))

(declare-fun lt!2207438 () Option!15304)

(assert (=> d!1727312 (= res!2302286 (isDefined!12007 lt!2207438))))

(assert (=> d!1727312 (= lt!2207438 e!3355171)))

(declare-fun c!943639 () Bool)

(assert (=> d!1727312 (= c!943639 e!3355169)))

(declare-fun res!2302289 () Bool)

(assert (=> d!1727312 (=> (not res!2302289) (not e!3355169))))

(assert (=> d!1727312 (= res!2302289 (matchR!7378 (regOne!30898 r!7292) Nil!61754))))

(assert (=> d!1727312 (validRegex!6929 (regOne!30898 r!7292))))

(assert (=> d!1727312 (= (findConcatSeparation!1718 (regOne!30898 r!7292) (regTwo!30898 r!7292) Nil!61754 s!2326 s!2326) lt!2207438)))

(declare-fun b!5412645 () Bool)

(assert (=> b!5412645 (= e!3355171 (Some!15303 (tuple2!64785 Nil!61754 s!2326)))))

(declare-fun b!5412646 () Bool)

(assert (=> b!5412646 (= e!3355172 (= (++!13559 (_1!35695 (get!21292 lt!2207438)) (_2!35695 (get!21292 lt!2207438))) s!2326))))

(declare-fun b!5412647 () Bool)

(declare-fun res!2302287 () Bool)

(assert (=> b!5412647 (=> (not res!2302287) (not e!3355172))))

(assert (=> b!5412647 (= res!2302287 (matchR!7378 (regOne!30898 r!7292) (_1!35695 (get!21292 lt!2207438))))))

(declare-fun b!5412648 () Bool)

(declare-fun res!2302288 () Bool)

(assert (=> b!5412648 (=> (not res!2302288) (not e!3355172))))

(assert (=> b!5412648 (= res!2302288 (matchR!7378 (regTwo!30898 r!7292) (_2!35695 (get!21292 lt!2207438))))))

(declare-fun b!5412649 () Bool)

(assert (=> b!5412649 (= e!3355168 None!15303)))

(declare-fun b!5412650 () Bool)

(assert (=> b!5412650 (= e!3355170 (not (isDefined!12007 lt!2207438)))))

(assert (= (and d!1727312 res!2302289) b!5412644))

(assert (= (and d!1727312 c!943639) b!5412645))

(assert (= (and d!1727312 (not c!943639)) b!5412642))

(assert (= (and b!5412642 c!943640) b!5412649))

(assert (= (and b!5412642 (not c!943640)) b!5412643))

(assert (= (and d!1727312 res!2302286) b!5412647))

(assert (= (and b!5412647 res!2302287) b!5412648))

(assert (= (and b!5412648 res!2302288) b!5412646))

(assert (= (and d!1727312 (not res!2302290)) b!5412650))

(declare-fun m!6436700 () Bool)

(assert (=> b!5412648 m!6436700))

(declare-fun m!6436702 () Bool)

(assert (=> b!5412648 m!6436702))

(assert (=> b!5412647 m!6436700))

(declare-fun m!6436704 () Bool)

(assert (=> b!5412647 m!6436704))

(assert (=> b!5412646 m!6436700))

(declare-fun m!6436706 () Bool)

(assert (=> b!5412646 m!6436706))

(declare-fun m!6436708 () Bool)

(assert (=> b!5412644 m!6436708))

(declare-fun m!6436710 () Bool)

(assert (=> b!5412650 m!6436710))

(assert (=> d!1727312 m!6436710))

(declare-fun m!6436712 () Bool)

(assert (=> d!1727312 m!6436712))

(declare-fun m!6436714 () Bool)

(assert (=> d!1727312 m!6436714))

(declare-fun m!6436716 () Bool)

(assert (=> b!5412643 m!6436716))

(assert (=> b!5412643 m!6436716))

(declare-fun m!6436718 () Bool)

(assert (=> b!5412643 m!6436718))

(declare-fun m!6436720 () Bool)

(assert (=> b!5412643 m!6436720))

(assert (=> b!5412643 m!6436716))

(declare-fun m!6436722 () Bool)

(assert (=> b!5412643 m!6436722))

(assert (=> b!5412241 d!1727312))

(declare-fun d!1727322 () Bool)

(declare-fun choose!40891 (Int) Bool)

(assert (=> d!1727322 (= (Exists!2374 lambda!282733) (choose!40891 lambda!282733))))

(declare-fun bs!1250106 () Bool)

(assert (= bs!1250106 d!1727322))

(declare-fun m!6436724 () Bool)

(assert (=> bs!1250106 m!6436724))

(assert (=> b!5412241 d!1727322))

(declare-fun d!1727324 () Bool)

(assert (=> d!1727324 (= (Exists!2374 lambda!282732) (choose!40891 lambda!282732))))

(declare-fun bs!1250107 () Bool)

(assert (= bs!1250107 d!1727324))

(declare-fun m!6436726 () Bool)

(assert (=> bs!1250107 m!6436726))

(assert (=> b!5412241 d!1727324))

(declare-fun bs!1250108 () Bool)

(declare-fun d!1727326 () Bool)

(assert (= bs!1250108 (and d!1727326 b!5412247)))

(declare-fun lambda!282779 () Int)

(assert (=> bs!1250108 (= (= (regOne!30898 r!7292) lt!2207321) (= lambda!282779 lambda!282737))))

(declare-fun bs!1250109 () Bool)

(assert (= bs!1250109 (and d!1727326 b!5412241)))

(assert (=> bs!1250109 (not (= lambda!282779 lambda!282733))))

(assert (=> bs!1250108 (not (= lambda!282779 lambda!282738))))

(declare-fun bs!1250110 () Bool)

(assert (= bs!1250110 (and d!1727326 b!5412274)))

(assert (=> bs!1250110 (not (= lambda!282779 lambda!282740))))

(assert (=> bs!1250110 (not (= lambda!282779 lambda!282741))))

(assert (=> bs!1250109 (= lambda!282779 lambda!282732)))

(assert (=> bs!1250110 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (regOne!30898 r!7292) (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) lt!2207337)) (= lambda!282779 lambda!282739))))

(assert (=> d!1727326 true))

(assert (=> d!1727326 true))

(assert (=> d!1727326 true))

(assert (=> d!1727326 (= (isDefined!12007 (findConcatSeparation!1718 (regOne!30898 r!7292) (regTwo!30898 r!7292) Nil!61754 s!2326 s!2326)) (Exists!2374 lambda!282779))))

(declare-fun lt!2207446 () Unit!154294)

(declare-fun choose!40892 (Regex!15193 Regex!15193 List!61878) Unit!154294)

(assert (=> d!1727326 (= lt!2207446 (choose!40892 (regOne!30898 r!7292) (regTwo!30898 r!7292) s!2326))))

(assert (=> d!1727326 (validRegex!6929 (regOne!30898 r!7292))))

(assert (=> d!1727326 (= (lemmaFindConcatSeparationEquivalentToExists!1482 (regOne!30898 r!7292) (regTwo!30898 r!7292) s!2326) lt!2207446)))

(declare-fun bs!1250112 () Bool)

(assert (= bs!1250112 d!1727326))

(declare-fun m!6436754 () Bool)

(assert (=> bs!1250112 m!6436754))

(declare-fun m!6436756 () Bool)

(assert (=> bs!1250112 m!6436756))

(assert (=> bs!1250112 m!6436290))

(assert (=> bs!1250112 m!6436290))

(assert (=> bs!1250112 m!6436292))

(assert (=> bs!1250112 m!6436714))

(assert (=> b!5412241 d!1727326))

(declare-fun bs!1250120 () Bool)

(declare-fun d!1727332 () Bool)

(assert (= bs!1250120 (and d!1727332 b!5412247)))

(declare-fun lambda!282785 () Int)

(assert (=> bs!1250120 (= (= (regOne!30898 r!7292) lt!2207321) (= lambda!282785 lambda!282737))))

(declare-fun bs!1250121 () Bool)

(assert (= bs!1250121 (and d!1727332 b!5412241)))

(assert (=> bs!1250121 (not (= lambda!282785 lambda!282733))))

(declare-fun bs!1250122 () Bool)

(assert (= bs!1250122 (and d!1727332 b!5412274)))

(assert (=> bs!1250122 (not (= lambda!282785 lambda!282740))))

(assert (=> bs!1250122 (not (= lambda!282785 lambda!282741))))

(assert (=> bs!1250121 (= lambda!282785 lambda!282732)))

(assert (=> bs!1250122 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (regOne!30898 r!7292) (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) lt!2207337)) (= lambda!282785 lambda!282739))))

(declare-fun bs!1250123 () Bool)

(assert (= bs!1250123 (and d!1727332 d!1727326)))

(assert (=> bs!1250123 (= lambda!282785 lambda!282779)))

(assert (=> bs!1250120 (not (= lambda!282785 lambda!282738))))

(assert (=> d!1727332 true))

(assert (=> d!1727332 true))

(assert (=> d!1727332 true))

(declare-fun lambda!282786 () Int)

(assert (=> bs!1250120 (not (= lambda!282786 lambda!282737))))

(declare-fun bs!1250124 () Bool)

(assert (= bs!1250124 d!1727332))

(assert (=> bs!1250124 (not (= lambda!282786 lambda!282785))))

(assert (=> bs!1250121 (= lambda!282786 lambda!282733)))

(assert (=> bs!1250122 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (regOne!30898 r!7292) (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) lt!2207337)) (= lambda!282786 lambda!282740))))

(assert (=> bs!1250122 (not (= lambda!282786 lambda!282741))))

(assert (=> bs!1250121 (not (= lambda!282786 lambda!282732))))

(assert (=> bs!1250122 (not (= lambda!282786 lambda!282739))))

(assert (=> bs!1250123 (not (= lambda!282786 lambda!282779))))

(assert (=> bs!1250120 (= (= (regOne!30898 r!7292) lt!2207321) (= lambda!282786 lambda!282738))))

(assert (=> d!1727332 true))

(assert (=> d!1727332 true))

(assert (=> d!1727332 true))

(assert (=> d!1727332 (= (Exists!2374 lambda!282785) (Exists!2374 lambda!282786))))

(declare-fun lt!2207458 () Unit!154294)

(declare-fun choose!40894 (Regex!15193 Regex!15193 List!61878) Unit!154294)

(assert (=> d!1727332 (= lt!2207458 (choose!40894 (regOne!30898 r!7292) (regTwo!30898 r!7292) s!2326))))

(assert (=> d!1727332 (validRegex!6929 (regOne!30898 r!7292))))

(assert (=> d!1727332 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1028 (regOne!30898 r!7292) (regTwo!30898 r!7292) s!2326) lt!2207458)))

(declare-fun m!6436784 () Bool)

(assert (=> bs!1250124 m!6436784))

(declare-fun m!6436786 () Bool)

(assert (=> bs!1250124 m!6436786))

(declare-fun m!6436788 () Bool)

(assert (=> bs!1250124 m!6436788))

(assert (=> bs!1250124 m!6436714))

(assert (=> b!5412241 d!1727332))

(declare-fun d!1727346 () Bool)

(declare-fun isEmpty!33748 (Option!15304) Bool)

(assert (=> d!1727346 (= (isDefined!12007 (findConcatSeparation!1718 (regOne!30898 r!7292) (regTwo!30898 r!7292) Nil!61754 s!2326 s!2326)) (not (isEmpty!33748 (findConcatSeparation!1718 (regOne!30898 r!7292) (regTwo!30898 r!7292) Nil!61754 s!2326 s!2326))))))

(declare-fun bs!1250126 () Bool)

(assert (= bs!1250126 d!1727346))

(assert (=> bs!1250126 m!6436290))

(declare-fun m!6436792 () Bool)

(assert (=> bs!1250126 m!6436792))

(assert (=> b!5412241 d!1727346))

(declare-fun b!5412717 () Bool)

(declare-fun e!3355209 () (InoxSet Context!9154))

(declare-fun e!3355211 () (InoxSet Context!9154))

(assert (=> b!5412717 (= e!3355209 e!3355211)))

(declare-fun c!943659 () Bool)

(assert (=> b!5412717 (= c!943659 ((_ is Cons!61755) (exprs!5077 lt!2207302)))))

(declare-fun b!5412718 () Bool)

(assert (=> b!5412718 (= e!3355211 ((as const (Array Context!9154 Bool)) false))))

(declare-fun b!5412719 () Bool)

(declare-fun e!3355210 () Bool)

(assert (=> b!5412719 (= e!3355210 (nullable!5362 (h!68203 (exprs!5077 lt!2207302))))))

(declare-fun d!1727350 () Bool)

(declare-fun c!943660 () Bool)

(assert (=> d!1727350 (= c!943660 e!3355210)))

(declare-fun res!2302321 () Bool)

(assert (=> d!1727350 (=> (not res!2302321) (not e!3355210))))

(assert (=> d!1727350 (= res!2302321 ((_ is Cons!61755) (exprs!5077 lt!2207302)))))

(assert (=> d!1727350 (= (derivationStepZipperUp!565 lt!2207302 (h!68202 s!2326)) e!3355209)))

(declare-fun b!5412720 () Bool)

(declare-fun call!387311 () (InoxSet Context!9154))

(assert (=> b!5412720 (= e!3355209 ((_ map or) call!387311 (derivationStepZipperUp!565 (Context!9155 (t!375102 (exprs!5077 lt!2207302))) (h!68202 s!2326))))))

(declare-fun b!5412721 () Bool)

(assert (=> b!5412721 (= e!3355211 call!387311)))

(declare-fun bm!387306 () Bool)

(assert (=> bm!387306 (= call!387311 (derivationStepZipperDown!641 (h!68203 (exprs!5077 lt!2207302)) (Context!9155 (t!375102 (exprs!5077 lt!2207302))) (h!68202 s!2326)))))

(assert (= (and d!1727350 res!2302321) b!5412719))

(assert (= (and d!1727350 c!943660) b!5412720))

(assert (= (and d!1727350 (not c!943660)) b!5412717))

(assert (= (and b!5412717 c!943659) b!5412721))

(assert (= (and b!5412717 (not c!943659)) b!5412718))

(assert (= (or b!5412720 b!5412721) bm!387306))

(declare-fun m!6436830 () Bool)

(assert (=> b!5412719 m!6436830))

(declare-fun m!6436832 () Bool)

(assert (=> b!5412720 m!6436832))

(declare-fun m!6436834 () Bool)

(assert (=> bm!387306 m!6436834))

(assert (=> b!5412262 d!1727350))

(declare-fun d!1727368 () Bool)

(declare-fun dynLambda!24329 (Int Context!9154) (InoxSet Context!9154))

(assert (=> d!1727368 (= (flatMap!920 lt!2207335 lambda!282734) (dynLambda!24329 lambda!282734 lt!2207302))))

(declare-fun lt!2207469 () Unit!154294)

(declare-fun choose!40895 ((InoxSet Context!9154) Context!9154 Int) Unit!154294)

(assert (=> d!1727368 (= lt!2207469 (choose!40895 lt!2207335 lt!2207302 lambda!282734))))

(assert (=> d!1727368 (= lt!2207335 (store ((as const (Array Context!9154 Bool)) false) lt!2207302 true))))

(assert (=> d!1727368 (= (lemmaFlatMapOnSingletonSet!452 lt!2207335 lt!2207302 lambda!282734) lt!2207469)))

(declare-fun b_lambda!206717 () Bool)

(assert (=> (not b_lambda!206717) (not d!1727368)))

(declare-fun bs!1250146 () Bool)

(assert (= bs!1250146 d!1727368))

(assert (=> bs!1250146 m!6436382))

(declare-fun m!6436836 () Bool)

(assert (=> bs!1250146 m!6436836))

(declare-fun m!6436838 () Bool)

(assert (=> bs!1250146 m!6436838))

(assert (=> bs!1250146 m!6436366))

(assert (=> b!5412262 d!1727368))

(declare-fun d!1727370 () Bool)

(declare-fun choose!40896 ((InoxSet Context!9154) Int) (InoxSet Context!9154))

(assert (=> d!1727370 (= (flatMap!920 lt!2207335 lambda!282734) (choose!40896 lt!2207335 lambda!282734))))

(declare-fun bs!1250149 () Bool)

(assert (= bs!1250149 d!1727370))

(declare-fun m!6436840 () Bool)

(assert (=> bs!1250149 m!6436840))

(assert (=> b!5412262 d!1727370))

(declare-fun d!1727372 () Bool)

(assert (=> d!1727372 (= (flatMap!920 lt!2207353 lambda!282734) (dynLambda!24329 lambda!282734 lt!2207317))))

(declare-fun lt!2207470 () Unit!154294)

(assert (=> d!1727372 (= lt!2207470 (choose!40895 lt!2207353 lt!2207317 lambda!282734))))

(assert (=> d!1727372 (= lt!2207353 (store ((as const (Array Context!9154 Bool)) false) lt!2207317 true))))

(assert (=> d!1727372 (= (lemmaFlatMapOnSingletonSet!452 lt!2207353 lt!2207317 lambda!282734) lt!2207470)))

(declare-fun b_lambda!206719 () Bool)

(assert (=> (not b_lambda!206719) (not d!1727372)))

(declare-fun bs!1250152 () Bool)

(assert (= bs!1250152 d!1727372))

(assert (=> bs!1250152 m!6436380))

(declare-fun m!6436842 () Bool)

(assert (=> bs!1250152 m!6436842))

(declare-fun m!6436844 () Bool)

(assert (=> bs!1250152 m!6436844))

(assert (=> bs!1250152 m!6436372))

(assert (=> b!5412262 d!1727372))

(declare-fun d!1727374 () Bool)

(assert (=> d!1727374 (= (flatMap!920 lt!2207353 lambda!282734) (choose!40896 lt!2207353 lambda!282734))))

(declare-fun bs!1250154 () Bool)

(assert (= bs!1250154 d!1727374))

(declare-fun m!6436846 () Bool)

(assert (=> bs!1250154 m!6436846))

(assert (=> b!5412262 d!1727374))

(declare-fun d!1727376 () Bool)

(declare-fun lt!2207473 () Regex!15193)

(assert (=> d!1727376 (validRegex!6929 lt!2207473)))

(assert (=> d!1727376 (= lt!2207473 (generalisedUnion!1122 (unfocusZipperList!635 lt!2207358)))))

(assert (=> d!1727376 (= (unfocusZipper!935 lt!2207358) lt!2207473)))

(declare-fun bs!1250163 () Bool)

(assert (= bs!1250163 d!1727376))

(declare-fun m!6436850 () Bool)

(assert (=> bs!1250163 m!6436850))

(declare-fun m!6436854 () Bool)

(assert (=> bs!1250163 m!6436854))

(assert (=> bs!1250163 m!6436854))

(declare-fun m!6436858 () Bool)

(assert (=> bs!1250163 m!6436858))

(assert (=> b!5412262 d!1727376))

(declare-fun b!5412722 () Bool)

(declare-fun e!3355212 () (InoxSet Context!9154))

(declare-fun e!3355215 () (InoxSet Context!9154))

(assert (=> b!5412722 (= e!3355212 e!3355215)))

(declare-fun c!943661 () Bool)

(assert (=> b!5412722 (= c!943661 ((_ is Cons!61755) (exprs!5077 lt!2207317)))))

(declare-fun b!5412723 () Bool)

(assert (=> b!5412723 (= e!3355215 ((as const (Array Context!9154 Bool)) false))))

(declare-fun b!5412724 () Bool)

(declare-fun e!3355214 () Bool)

(assert (=> b!5412724 (= e!3355214 (nullable!5362 (h!68203 (exprs!5077 lt!2207317))))))

(declare-fun d!1727378 () Bool)

(declare-fun c!943663 () Bool)

(assert (=> d!1727378 (= c!943663 e!3355214)))

(declare-fun res!2302322 () Bool)

(assert (=> d!1727378 (=> (not res!2302322) (not e!3355214))))

(assert (=> d!1727378 (= res!2302322 ((_ is Cons!61755) (exprs!5077 lt!2207317)))))

(assert (=> d!1727378 (= (derivationStepZipperUp!565 lt!2207317 (h!68202 s!2326)) e!3355212)))

(declare-fun b!5412725 () Bool)

(declare-fun call!387312 () (InoxSet Context!9154))

(assert (=> b!5412725 (= e!3355212 ((_ map or) call!387312 (derivationStepZipperUp!565 (Context!9155 (t!375102 (exprs!5077 lt!2207317))) (h!68202 s!2326))))))

(declare-fun b!5412726 () Bool)

(assert (=> b!5412726 (= e!3355215 call!387312)))

(declare-fun bm!387307 () Bool)

(assert (=> bm!387307 (= call!387312 (derivationStepZipperDown!641 (h!68203 (exprs!5077 lt!2207317)) (Context!9155 (t!375102 (exprs!5077 lt!2207317))) (h!68202 s!2326)))))

(assert (= (and d!1727378 res!2302322) b!5412724))

(assert (= (and d!1727378 c!943663) b!5412725))

(assert (= (and d!1727378 (not c!943663)) b!5412722))

(assert (= (and b!5412722 c!943661) b!5412726))

(assert (= (and b!5412722 (not c!943661)) b!5412723))

(assert (= (or b!5412725 b!5412726) bm!387307))

(declare-fun m!6436860 () Bool)

(assert (=> b!5412724 m!6436860))

(declare-fun m!6436862 () Bool)

(assert (=> b!5412725 m!6436862))

(declare-fun m!6436864 () Bool)

(assert (=> bm!387307 m!6436864))

(assert (=> b!5412262 d!1727378))

(declare-fun d!1727382 () Bool)

(declare-fun c!943672 () Bool)

(declare-fun isEmpty!33749 (List!61878) Bool)

(assert (=> d!1727382 (= c!943672 (isEmpty!33749 (t!375101 s!2326)))))

(declare-fun e!3355231 () Bool)

(assert (=> d!1727382 (= (matchZipper!1437 lt!2207334 (t!375101 s!2326)) e!3355231)))

(declare-fun b!5412756 () Bool)

(declare-fun nullableZipper!1446 ((InoxSet Context!9154)) Bool)

(assert (=> b!5412756 (= e!3355231 (nullableZipper!1446 lt!2207334))))

(declare-fun b!5412757 () Bool)

(declare-fun head!11608 (List!61878) C!30656)

(declare-fun tail!10705 (List!61878) List!61878)

(assert (=> b!5412757 (= e!3355231 (matchZipper!1437 (derivationStepZipper!1432 lt!2207334 (head!11608 (t!375101 s!2326))) (tail!10705 (t!375101 s!2326))))))

(assert (= (and d!1727382 c!943672) b!5412756))

(assert (= (and d!1727382 (not c!943672)) b!5412757))

(declare-fun m!6436872 () Bool)

(assert (=> d!1727382 m!6436872))

(declare-fun m!6436874 () Bool)

(assert (=> b!5412756 m!6436874))

(declare-fun m!6436876 () Bool)

(assert (=> b!5412757 m!6436876))

(assert (=> b!5412757 m!6436876))

(declare-fun m!6436878 () Bool)

(assert (=> b!5412757 m!6436878))

(declare-fun m!6436880 () Bool)

(assert (=> b!5412757 m!6436880))

(assert (=> b!5412757 m!6436878))

(assert (=> b!5412757 m!6436880))

(declare-fun m!6436882 () Bool)

(assert (=> b!5412757 m!6436882))

(assert (=> b!5412240 d!1727382))

(declare-fun d!1727388 () Bool)

(declare-fun nullableFct!1596 (Regex!15193) Bool)

(assert (=> d!1727388 (= (nullable!5362 (regOne!30898 (regOne!30898 r!7292))) (nullableFct!1596 (regOne!30898 (regOne!30898 r!7292))))))

(declare-fun bs!1250179 () Bool)

(assert (= bs!1250179 d!1727388))

(declare-fun m!6436884 () Bool)

(assert (=> bs!1250179 m!6436884))

(assert (=> b!5412239 d!1727388))

(declare-fun d!1727390 () Bool)

(declare-fun c!943673 () Bool)

(assert (=> d!1727390 (= c!943673 (isEmpty!33749 (_2!35695 lt!2207343)))))

(declare-fun e!3355232 () Bool)

(assert (=> d!1727390 (= (matchZipper!1437 lt!2207335 (_2!35695 lt!2207343)) e!3355232)))

(declare-fun b!5412758 () Bool)

(assert (=> b!5412758 (= e!3355232 (nullableZipper!1446 lt!2207335))))

(declare-fun b!5412759 () Bool)

(assert (=> b!5412759 (= e!3355232 (matchZipper!1437 (derivationStepZipper!1432 lt!2207335 (head!11608 (_2!35695 lt!2207343))) (tail!10705 (_2!35695 lt!2207343))))))

(assert (= (and d!1727390 c!943673) b!5412758))

(assert (= (and d!1727390 (not c!943673)) b!5412759))

(declare-fun m!6436886 () Bool)

(assert (=> d!1727390 m!6436886))

(declare-fun m!6436888 () Bool)

(assert (=> b!5412758 m!6436888))

(declare-fun m!6436890 () Bool)

(assert (=> b!5412759 m!6436890))

(assert (=> b!5412759 m!6436890))

(declare-fun m!6436892 () Bool)

(assert (=> b!5412759 m!6436892))

(declare-fun m!6436894 () Bool)

(assert (=> b!5412759 m!6436894))

(assert (=> b!5412759 m!6436892))

(assert (=> b!5412759 m!6436894))

(declare-fun m!6436896 () Bool)

(assert (=> b!5412759 m!6436896))

(assert (=> b!5412238 d!1727390))

(declare-fun d!1727392 () Bool)

(assert (=> d!1727392 (= (isEmpty!33745 (t!375103 zl!343)) ((_ is Nil!61756) (t!375103 zl!343)))))

(assert (=> b!5412259 d!1727392))

(declare-fun d!1727394 () Bool)

(assert (=> d!1727394 (= (flatMap!920 z!1189 lambda!282734) (choose!40896 z!1189 lambda!282734))))

(declare-fun bs!1250184 () Bool)

(assert (= bs!1250184 d!1727394))

(declare-fun m!6436898 () Bool)

(assert (=> bs!1250184 m!6436898))

(assert (=> b!5412258 d!1727394))

(declare-fun d!1727396 () Bool)

(assert (=> d!1727396 (= (nullable!5362 (h!68203 (exprs!5077 (h!68204 zl!343)))) (nullableFct!1596 (h!68203 (exprs!5077 (h!68204 zl!343)))))))

(declare-fun bs!1250186 () Bool)

(assert (= bs!1250186 d!1727396))

(declare-fun m!6436900 () Bool)

(assert (=> bs!1250186 m!6436900))

(assert (=> b!5412258 d!1727396))

(declare-fun b!5412760 () Bool)

(declare-fun e!3355233 () (InoxSet Context!9154))

(declare-fun e!3355235 () (InoxSet Context!9154))

(assert (=> b!5412760 (= e!3355233 e!3355235)))

(declare-fun c!943674 () Bool)

(assert (=> b!5412760 (= c!943674 ((_ is Cons!61755) (exprs!5077 (Context!9155 (Cons!61755 (h!68203 (exprs!5077 (h!68204 zl!343))) (t!375102 (exprs!5077 (h!68204 zl!343))))))))))

(declare-fun b!5412761 () Bool)

(assert (=> b!5412761 (= e!3355235 ((as const (Array Context!9154 Bool)) false))))

(declare-fun b!5412762 () Bool)

(declare-fun e!3355234 () Bool)

(assert (=> b!5412762 (= e!3355234 (nullable!5362 (h!68203 (exprs!5077 (Context!9155 (Cons!61755 (h!68203 (exprs!5077 (h!68204 zl!343))) (t!375102 (exprs!5077 (h!68204 zl!343)))))))))))

(declare-fun d!1727398 () Bool)

(declare-fun c!943675 () Bool)

(assert (=> d!1727398 (= c!943675 e!3355234)))

(declare-fun res!2302334 () Bool)

(assert (=> d!1727398 (=> (not res!2302334) (not e!3355234))))

(assert (=> d!1727398 (= res!2302334 ((_ is Cons!61755) (exprs!5077 (Context!9155 (Cons!61755 (h!68203 (exprs!5077 (h!68204 zl!343))) (t!375102 (exprs!5077 (h!68204 zl!343))))))))))

(assert (=> d!1727398 (= (derivationStepZipperUp!565 (Context!9155 (Cons!61755 (h!68203 (exprs!5077 (h!68204 zl!343))) (t!375102 (exprs!5077 (h!68204 zl!343))))) (h!68202 s!2326)) e!3355233)))

(declare-fun b!5412763 () Bool)

(declare-fun call!387316 () (InoxSet Context!9154))

(assert (=> b!5412763 (= e!3355233 ((_ map or) call!387316 (derivationStepZipperUp!565 (Context!9155 (t!375102 (exprs!5077 (Context!9155 (Cons!61755 (h!68203 (exprs!5077 (h!68204 zl!343))) (t!375102 (exprs!5077 (h!68204 zl!343)))))))) (h!68202 s!2326))))))

(declare-fun b!5412764 () Bool)

(assert (=> b!5412764 (= e!3355235 call!387316)))

(declare-fun bm!387311 () Bool)

(assert (=> bm!387311 (= call!387316 (derivationStepZipperDown!641 (h!68203 (exprs!5077 (Context!9155 (Cons!61755 (h!68203 (exprs!5077 (h!68204 zl!343))) (t!375102 (exprs!5077 (h!68204 zl!343))))))) (Context!9155 (t!375102 (exprs!5077 (Context!9155 (Cons!61755 (h!68203 (exprs!5077 (h!68204 zl!343))) (t!375102 (exprs!5077 (h!68204 zl!343)))))))) (h!68202 s!2326)))))

(assert (= (and d!1727398 res!2302334) b!5412762))

(assert (= (and d!1727398 c!943675) b!5412763))

(assert (= (and d!1727398 (not c!943675)) b!5412760))

(assert (= (and b!5412760 c!943674) b!5412764))

(assert (= (and b!5412760 (not c!943674)) b!5412761))

(assert (= (or b!5412763 b!5412764) bm!387311))

(declare-fun m!6436902 () Bool)

(assert (=> b!5412762 m!6436902))

(declare-fun m!6436904 () Bool)

(assert (=> b!5412763 m!6436904))

(declare-fun m!6436906 () Bool)

(assert (=> bm!387311 m!6436906))

(assert (=> b!5412258 d!1727398))

(declare-fun b!5412817 () Bool)

(declare-fun e!3355268 () (InoxSet Context!9154))

(declare-fun call!387333 () (InoxSet Context!9154))

(declare-fun call!387330 () (InoxSet Context!9154))

(assert (=> b!5412817 (= e!3355268 ((_ map or) call!387333 call!387330))))

(declare-fun bm!387325 () Bool)

(declare-fun call!387332 () List!61879)

(declare-fun c!943693 () Bool)

(declare-fun c!943697 () Bool)

(declare-fun $colon$colon!1495 (List!61879 Regex!15193) List!61879)

(assert (=> bm!387325 (= call!387332 ($colon$colon!1495 (exprs!5077 lt!2207336) (ite (or c!943697 c!943693) (regTwo!30898 (h!68203 (exprs!5077 (h!68204 zl!343)))) (h!68203 (exprs!5077 (h!68204 zl!343))))))))

(declare-fun d!1727400 () Bool)

(declare-fun c!943696 () Bool)

(assert (=> d!1727400 (= c!943696 (and ((_ is ElementMatch!15193) (h!68203 (exprs!5077 (h!68204 zl!343)))) (= (c!943557 (h!68203 (exprs!5077 (h!68204 zl!343)))) (h!68202 s!2326))))))

(declare-fun e!3355270 () (InoxSet Context!9154))

(assert (=> d!1727400 (= (derivationStepZipperDown!641 (h!68203 (exprs!5077 (h!68204 zl!343))) lt!2207336 (h!68202 s!2326)) e!3355270)))

(declare-fun b!5412818 () Bool)

(declare-fun e!3355265 () (InoxSet Context!9154))

(assert (=> b!5412818 (= e!3355270 e!3355265)))

(declare-fun c!943695 () Bool)

(assert (=> b!5412818 (= c!943695 ((_ is Union!15193) (h!68203 (exprs!5077 (h!68204 zl!343)))))))

(declare-fun call!387331 () List!61879)

(declare-fun bm!387326 () Bool)

(declare-fun call!387334 () (InoxSet Context!9154))

(assert (=> bm!387326 (= call!387334 (derivationStepZipperDown!641 (ite c!943695 (regOne!30899 (h!68203 (exprs!5077 (h!68204 zl!343)))) (ite c!943697 (regTwo!30898 (h!68203 (exprs!5077 (h!68204 zl!343)))) (ite c!943693 (regOne!30898 (h!68203 (exprs!5077 (h!68204 zl!343)))) (reg!15522 (h!68203 (exprs!5077 (h!68204 zl!343))))))) (ite (or c!943695 c!943697) lt!2207336 (Context!9155 call!387331)) (h!68202 s!2326)))))

(declare-fun b!5412819 () Bool)

(declare-fun e!3355266 () (InoxSet Context!9154))

(assert (=> b!5412819 (= e!3355268 e!3355266)))

(assert (=> b!5412819 (= c!943693 ((_ is Concat!24038) (h!68203 (exprs!5077 (h!68204 zl!343)))))))

(declare-fun b!5412820 () Bool)

(declare-fun c!943694 () Bool)

(assert (=> b!5412820 (= c!943694 ((_ is Star!15193) (h!68203 (exprs!5077 (h!68204 zl!343)))))))

(declare-fun e!3355269 () (InoxSet Context!9154))

(assert (=> b!5412820 (= e!3355266 e!3355269)))

(declare-fun b!5412821 () Bool)

(declare-fun call!387335 () (InoxSet Context!9154))

(assert (=> b!5412821 (= e!3355266 call!387335)))

(declare-fun b!5412822 () Bool)

(assert (=> b!5412822 (= e!3355269 ((as const (Array Context!9154 Bool)) false))))

(declare-fun b!5412823 () Bool)

(declare-fun e!3355267 () Bool)

(assert (=> b!5412823 (= c!943697 e!3355267)))

(declare-fun res!2302353 () Bool)

(assert (=> b!5412823 (=> (not res!2302353) (not e!3355267))))

(assert (=> b!5412823 (= res!2302353 ((_ is Concat!24038) (h!68203 (exprs!5077 (h!68204 zl!343)))))))

(assert (=> b!5412823 (= e!3355265 e!3355268)))

(declare-fun bm!387327 () Bool)

(assert (=> bm!387327 (= call!387330 call!387334)))

(declare-fun b!5412824 () Bool)

(assert (=> b!5412824 (= e!3355270 (store ((as const (Array Context!9154 Bool)) false) lt!2207336 true))))

(declare-fun b!5412825 () Bool)

(assert (=> b!5412825 (= e!3355265 ((_ map or) call!387334 call!387333))))

(declare-fun bm!387328 () Bool)

(assert (=> bm!387328 (= call!387333 (derivationStepZipperDown!641 (ite c!943695 (regTwo!30899 (h!68203 (exprs!5077 (h!68204 zl!343)))) (regOne!30898 (h!68203 (exprs!5077 (h!68204 zl!343))))) (ite c!943695 lt!2207336 (Context!9155 call!387332)) (h!68202 s!2326)))))

(declare-fun bm!387329 () Bool)

(assert (=> bm!387329 (= call!387335 call!387330)))

(declare-fun b!5412826 () Bool)

(assert (=> b!5412826 (= e!3355269 call!387335)))

(declare-fun b!5412827 () Bool)

(assert (=> b!5412827 (= e!3355267 (nullable!5362 (regOne!30898 (h!68203 (exprs!5077 (h!68204 zl!343))))))))

(declare-fun bm!387330 () Bool)

(assert (=> bm!387330 (= call!387331 call!387332)))

(assert (= (and d!1727400 c!943696) b!5412824))

(assert (= (and d!1727400 (not c!943696)) b!5412818))

(assert (= (and b!5412818 c!943695) b!5412825))

(assert (= (and b!5412818 (not c!943695)) b!5412823))

(assert (= (and b!5412823 res!2302353) b!5412827))

(assert (= (and b!5412823 c!943697) b!5412817))

(assert (= (and b!5412823 (not c!943697)) b!5412819))

(assert (= (and b!5412819 c!943693) b!5412821))

(assert (= (and b!5412819 (not c!943693)) b!5412820))

(assert (= (and b!5412820 c!943694) b!5412826))

(assert (= (and b!5412820 (not c!943694)) b!5412822))

(assert (= (or b!5412821 b!5412826) bm!387330))

(assert (= (or b!5412821 b!5412826) bm!387329))

(assert (= (or b!5412817 bm!387330) bm!387325))

(assert (= (or b!5412817 bm!387329) bm!387327))

(assert (= (or b!5412825 b!5412817) bm!387328))

(assert (= (or b!5412825 bm!387327) bm!387326))

(declare-fun m!6436964 () Bool)

(assert (=> bm!387325 m!6436964))

(declare-fun m!6436966 () Bool)

(assert (=> bm!387326 m!6436966))

(declare-fun m!6436968 () Bool)

(assert (=> b!5412827 m!6436968))

(declare-fun m!6436970 () Bool)

(assert (=> b!5412824 m!6436970))

(declare-fun m!6436972 () Bool)

(assert (=> bm!387328 m!6436972))

(assert (=> b!5412258 d!1727400))

(declare-fun b!5412828 () Bool)

(declare-fun e!3355271 () (InoxSet Context!9154))

(declare-fun e!3355273 () (InoxSet Context!9154))

(assert (=> b!5412828 (= e!3355271 e!3355273)))

(declare-fun c!943698 () Bool)

(assert (=> b!5412828 (= c!943698 ((_ is Cons!61755) (exprs!5077 (h!68204 zl!343))))))

(declare-fun b!5412829 () Bool)

(assert (=> b!5412829 (= e!3355273 ((as const (Array Context!9154 Bool)) false))))

(declare-fun b!5412830 () Bool)

(declare-fun e!3355272 () Bool)

(assert (=> b!5412830 (= e!3355272 (nullable!5362 (h!68203 (exprs!5077 (h!68204 zl!343)))))))

(declare-fun d!1727422 () Bool)

(declare-fun c!943699 () Bool)

(assert (=> d!1727422 (= c!943699 e!3355272)))

(declare-fun res!2302354 () Bool)

(assert (=> d!1727422 (=> (not res!2302354) (not e!3355272))))

(assert (=> d!1727422 (= res!2302354 ((_ is Cons!61755) (exprs!5077 (h!68204 zl!343))))))

(assert (=> d!1727422 (= (derivationStepZipperUp!565 (h!68204 zl!343) (h!68202 s!2326)) e!3355271)))

(declare-fun call!387336 () (InoxSet Context!9154))

(declare-fun b!5412831 () Bool)

(assert (=> b!5412831 (= e!3355271 ((_ map or) call!387336 (derivationStepZipperUp!565 (Context!9155 (t!375102 (exprs!5077 (h!68204 zl!343)))) (h!68202 s!2326))))))

(declare-fun b!5412832 () Bool)

(assert (=> b!5412832 (= e!3355273 call!387336)))

(declare-fun bm!387331 () Bool)

(assert (=> bm!387331 (= call!387336 (derivationStepZipperDown!641 (h!68203 (exprs!5077 (h!68204 zl!343))) (Context!9155 (t!375102 (exprs!5077 (h!68204 zl!343)))) (h!68202 s!2326)))))

(assert (= (and d!1727422 res!2302354) b!5412830))

(assert (= (and d!1727422 c!943699) b!5412831))

(assert (= (and d!1727422 (not c!943699)) b!5412828))

(assert (= (and b!5412828 c!943698) b!5412832))

(assert (= (and b!5412828 (not c!943698)) b!5412829))

(assert (= (or b!5412831 b!5412832) bm!387331))

(assert (=> b!5412830 m!6436358))

(declare-fun m!6436974 () Bool)

(assert (=> b!5412831 m!6436974))

(declare-fun m!6436976 () Bool)

(assert (=> bm!387331 m!6436976))

(assert (=> b!5412258 d!1727422))

(declare-fun d!1727424 () Bool)

(assert (=> d!1727424 (= (flatMap!920 z!1189 lambda!282734) (dynLambda!24329 lambda!282734 (h!68204 zl!343)))))

(declare-fun lt!2207486 () Unit!154294)

(assert (=> d!1727424 (= lt!2207486 (choose!40895 z!1189 (h!68204 zl!343) lambda!282734))))

(assert (=> d!1727424 (= z!1189 (store ((as const (Array Context!9154 Bool)) false) (h!68204 zl!343) true))))

(assert (=> d!1727424 (= (lemmaFlatMapOnSingletonSet!452 z!1189 (h!68204 zl!343) lambda!282734) lt!2207486)))

(declare-fun b_lambda!206721 () Bool)

(assert (=> (not b_lambda!206721) (not d!1727424)))

(declare-fun bs!1250223 () Bool)

(assert (= bs!1250223 d!1727424))

(assert (=> bs!1250223 m!6436360))

(declare-fun m!6436978 () Bool)

(assert (=> bs!1250223 m!6436978))

(declare-fun m!6436980 () Bool)

(assert (=> bs!1250223 m!6436980))

(declare-fun m!6436982 () Bool)

(assert (=> bs!1250223 m!6436982))

(assert (=> b!5412258 d!1727424))

(declare-fun b!5412833 () Bool)

(declare-fun e!3355274 () (InoxSet Context!9154))

(declare-fun e!3355276 () (InoxSet Context!9154))

(assert (=> b!5412833 (= e!3355274 e!3355276)))

(declare-fun c!943700 () Bool)

(assert (=> b!5412833 (= c!943700 ((_ is Cons!61755) (exprs!5077 lt!2207336)))))

(declare-fun b!5412834 () Bool)

(assert (=> b!5412834 (= e!3355276 ((as const (Array Context!9154 Bool)) false))))

(declare-fun b!5412835 () Bool)

(declare-fun e!3355275 () Bool)

(assert (=> b!5412835 (= e!3355275 (nullable!5362 (h!68203 (exprs!5077 lt!2207336))))))

(declare-fun d!1727426 () Bool)

(declare-fun c!943701 () Bool)

(assert (=> d!1727426 (= c!943701 e!3355275)))

(declare-fun res!2302355 () Bool)

(assert (=> d!1727426 (=> (not res!2302355) (not e!3355275))))

(assert (=> d!1727426 (= res!2302355 ((_ is Cons!61755) (exprs!5077 lt!2207336)))))

(assert (=> d!1727426 (= (derivationStepZipperUp!565 lt!2207336 (h!68202 s!2326)) e!3355274)))

(declare-fun call!387337 () (InoxSet Context!9154))

(declare-fun b!5412836 () Bool)

(assert (=> b!5412836 (= e!3355274 ((_ map or) call!387337 (derivationStepZipperUp!565 (Context!9155 (t!375102 (exprs!5077 lt!2207336))) (h!68202 s!2326))))))

(declare-fun b!5412837 () Bool)

(assert (=> b!5412837 (= e!3355276 call!387337)))

(declare-fun bm!387332 () Bool)

(assert (=> bm!387332 (= call!387337 (derivationStepZipperDown!641 (h!68203 (exprs!5077 lt!2207336)) (Context!9155 (t!375102 (exprs!5077 lt!2207336))) (h!68202 s!2326)))))

(assert (= (and d!1727426 res!2302355) b!5412835))

(assert (= (and d!1727426 c!943701) b!5412836))

(assert (= (and d!1727426 (not c!943701)) b!5412833))

(assert (= (and b!5412833 c!943700) b!5412837))

(assert (= (and b!5412833 (not c!943700)) b!5412834))

(assert (= (or b!5412836 b!5412837) bm!387332))

(declare-fun m!6436984 () Bool)

(assert (=> b!5412835 m!6436984))

(declare-fun m!6436986 () Bool)

(assert (=> b!5412836 m!6436986))

(declare-fun m!6436988 () Bool)

(assert (=> bm!387332 m!6436988))

(assert (=> b!5412258 d!1727426))

(declare-fun bs!1250237 () Bool)

(declare-fun d!1727428 () Bool)

(assert (= bs!1250237 (and d!1727428 b!5412256)))

(declare-fun lambda!282801 () Int)

(assert (=> bs!1250237 (= lambda!282801 lambda!282736)))

(declare-fun b!5412858 () Bool)

(declare-fun e!3355289 () Regex!15193)

(assert (=> b!5412858 (= e!3355289 (h!68203 (unfocusZipperList!635 zl!343)))))

(declare-fun e!3355294 () Bool)

(assert (=> d!1727428 e!3355294))

(declare-fun res!2302361 () Bool)

(assert (=> d!1727428 (=> (not res!2302361) (not e!3355294))))

(declare-fun lt!2207489 () Regex!15193)

(assert (=> d!1727428 (= res!2302361 (validRegex!6929 lt!2207489))))

(assert (=> d!1727428 (= lt!2207489 e!3355289)))

(declare-fun c!943711 () Bool)

(declare-fun e!3355290 () Bool)

(assert (=> d!1727428 (= c!943711 e!3355290)))

(declare-fun res!2302360 () Bool)

(assert (=> d!1727428 (=> (not res!2302360) (not e!3355290))))

(assert (=> d!1727428 (= res!2302360 ((_ is Cons!61755) (unfocusZipperList!635 zl!343)))))

(declare-fun forall!14539 (List!61879 Int) Bool)

(assert (=> d!1727428 (forall!14539 (unfocusZipperList!635 zl!343) lambda!282801)))

(assert (=> d!1727428 (= (generalisedUnion!1122 (unfocusZipperList!635 zl!343)) lt!2207489)))

(declare-fun b!5412859 () Bool)

(declare-fun e!3355293 () Bool)

(declare-fun e!3355291 () Bool)

(assert (=> b!5412859 (= e!3355293 e!3355291)))

(declare-fun c!943710 () Bool)

(declare-fun tail!10706 (List!61879) List!61879)

(assert (=> b!5412859 (= c!943710 (isEmpty!33744 (tail!10706 (unfocusZipperList!635 zl!343))))))

(declare-fun b!5412860 () Bool)

(declare-fun e!3355292 () Regex!15193)

(assert (=> b!5412860 (= e!3355292 EmptyLang!15193)))

(declare-fun b!5412861 () Bool)

(assert (=> b!5412861 (= e!3355294 e!3355293)))

(declare-fun c!943713 () Bool)

(assert (=> b!5412861 (= c!943713 (isEmpty!33744 (unfocusZipperList!635 zl!343)))))

(declare-fun b!5412862 () Bool)

(assert (=> b!5412862 (= e!3355289 e!3355292)))

(declare-fun c!943712 () Bool)

(assert (=> b!5412862 (= c!943712 ((_ is Cons!61755) (unfocusZipperList!635 zl!343)))))

(declare-fun b!5412863 () Bool)

(declare-fun isEmptyLang!986 (Regex!15193) Bool)

(assert (=> b!5412863 (= e!3355293 (isEmptyLang!986 lt!2207489))))

(declare-fun b!5412864 () Bool)

(declare-fun head!11609 (List!61879) Regex!15193)

(assert (=> b!5412864 (= e!3355291 (= lt!2207489 (head!11609 (unfocusZipperList!635 zl!343))))))

(declare-fun b!5412865 () Bool)

(declare-fun isUnion!418 (Regex!15193) Bool)

(assert (=> b!5412865 (= e!3355291 (isUnion!418 lt!2207489))))

(declare-fun b!5412866 () Bool)

(assert (=> b!5412866 (= e!3355292 (Union!15193 (h!68203 (unfocusZipperList!635 zl!343)) (generalisedUnion!1122 (t!375102 (unfocusZipperList!635 zl!343)))))))

(declare-fun b!5412867 () Bool)

(assert (=> b!5412867 (= e!3355290 (isEmpty!33744 (t!375102 (unfocusZipperList!635 zl!343))))))

(assert (= (and d!1727428 res!2302360) b!5412867))

(assert (= (and d!1727428 c!943711) b!5412858))

(assert (= (and d!1727428 (not c!943711)) b!5412862))

(assert (= (and b!5412862 c!943712) b!5412866))

(assert (= (and b!5412862 (not c!943712)) b!5412860))

(assert (= (and d!1727428 res!2302361) b!5412861))

(assert (= (and b!5412861 c!943713) b!5412863))

(assert (= (and b!5412861 (not c!943713)) b!5412859))

(assert (= (and b!5412859 c!943710) b!5412864))

(assert (= (and b!5412859 (not c!943710)) b!5412865))

(declare-fun m!6436998 () Bool)

(assert (=> b!5412866 m!6436998))

(declare-fun m!6437000 () Bool)

(assert (=> d!1727428 m!6437000))

(assert (=> d!1727428 m!6436286))

(declare-fun m!6437002 () Bool)

(assert (=> d!1727428 m!6437002))

(assert (=> b!5412864 m!6436286))

(declare-fun m!6437004 () Bool)

(assert (=> b!5412864 m!6437004))

(declare-fun m!6437006 () Bool)

(assert (=> b!5412867 m!6437006))

(declare-fun m!6437008 () Bool)

(assert (=> b!5412863 m!6437008))

(assert (=> b!5412861 m!6436286))

(declare-fun m!6437010 () Bool)

(assert (=> b!5412861 m!6437010))

(assert (=> b!5412859 m!6436286))

(declare-fun m!6437012 () Bool)

(assert (=> b!5412859 m!6437012))

(assert (=> b!5412859 m!6437012))

(declare-fun m!6437014 () Bool)

(assert (=> b!5412859 m!6437014))

(declare-fun m!6437016 () Bool)

(assert (=> b!5412865 m!6437016))

(assert (=> b!5412277 d!1727428))

(declare-fun bs!1250238 () Bool)

(declare-fun d!1727434 () Bool)

(assert (= bs!1250238 (and d!1727434 b!5412256)))

(declare-fun lambda!282804 () Int)

(assert (=> bs!1250238 (= lambda!282804 lambda!282736)))

(declare-fun bs!1250239 () Bool)

(assert (= bs!1250239 (and d!1727434 d!1727428)))

(assert (=> bs!1250239 (= lambda!282804 lambda!282801)))

(declare-fun lt!2207492 () List!61879)

(assert (=> d!1727434 (forall!14539 lt!2207492 lambda!282804)))

(declare-fun e!3355309 () List!61879)

(assert (=> d!1727434 (= lt!2207492 e!3355309)))

(declare-fun c!943726 () Bool)

(assert (=> d!1727434 (= c!943726 ((_ is Cons!61756) zl!343))))

(assert (=> d!1727434 (= (unfocusZipperList!635 zl!343) lt!2207492)))

(declare-fun b!5412894 () Bool)

(assert (=> b!5412894 (= e!3355309 (Cons!61755 (generalisedConcat!862 (exprs!5077 (h!68204 zl!343))) (unfocusZipperList!635 (t!375103 zl!343))))))

(declare-fun b!5412895 () Bool)

(assert (=> b!5412895 (= e!3355309 Nil!61755)))

(assert (= (and d!1727434 c!943726) b!5412894))

(assert (= (and d!1727434 (not c!943726)) b!5412895))

(declare-fun m!6437018 () Bool)

(assert (=> d!1727434 m!6437018))

(assert (=> b!5412894 m!6436284))

(declare-fun m!6437020 () Bool)

(assert (=> b!5412894 m!6437020))

(assert (=> b!5412277 d!1727434))

(declare-fun b!5412975 () Bool)

(declare-fun e!3355355 () Bool)

(declare-fun lt!2207504 () Option!15304)

(assert (=> b!5412975 (= e!3355355 (= (++!13559 (_1!35695 (get!21292 lt!2207504)) (_2!35695 (get!21292 lt!2207504))) s!2326))))

(declare-fun b!5412976 () Bool)

(declare-fun res!2302383 () Bool)

(assert (=> b!5412976 (=> (not res!2302383) (not e!3355355))))

(assert (=> b!5412976 (= res!2302383 (matchZipper!1437 lt!2207353 (_1!35695 (get!21292 lt!2207504))))))

(declare-fun d!1727436 () Bool)

(declare-fun e!3355356 () Bool)

(assert (=> d!1727436 e!3355356))

(declare-fun res!2302384 () Bool)

(assert (=> d!1727436 (=> res!2302384 e!3355356)))

(assert (=> d!1727436 (= res!2302384 e!3355355)))

(declare-fun res!2302387 () Bool)

(assert (=> d!1727436 (=> (not res!2302387) (not e!3355355))))

(assert (=> d!1727436 (= res!2302387 (isDefined!12007 lt!2207504))))

(declare-fun e!3355357 () Option!15304)

(assert (=> d!1727436 (= lt!2207504 e!3355357)))

(declare-fun c!943758 () Bool)

(declare-fun e!3355359 () Bool)

(assert (=> d!1727436 (= c!943758 e!3355359)))

(declare-fun res!2302385 () Bool)

(assert (=> d!1727436 (=> (not res!2302385) (not e!3355359))))

(assert (=> d!1727436 (= res!2302385 (matchZipper!1437 lt!2207353 Nil!61754))))

(assert (=> d!1727436 (= (++!13559 Nil!61754 s!2326) s!2326)))

(assert (=> d!1727436 (= (findConcatSeparationZippers!50 lt!2207353 lt!2207335 Nil!61754 s!2326 s!2326) lt!2207504)))

(declare-fun b!5412977 () Bool)

(declare-fun res!2302386 () Bool)

(assert (=> b!5412977 (=> (not res!2302386) (not e!3355355))))

(assert (=> b!5412977 (= res!2302386 (matchZipper!1437 lt!2207335 (_2!35695 (get!21292 lt!2207504))))))

(declare-fun b!5412978 () Bool)

(declare-fun lt!2207502 () Unit!154294)

(declare-fun lt!2207503 () Unit!154294)

(assert (=> b!5412978 (= lt!2207502 lt!2207503)))

(assert (=> b!5412978 (= (++!13559 (++!13559 Nil!61754 (Cons!61754 (h!68202 s!2326) Nil!61754)) (t!375101 s!2326)) s!2326)))

(assert (=> b!5412978 (= lt!2207503 (lemmaMoveElementToOtherListKeepsConcatEq!1841 Nil!61754 (h!68202 s!2326) (t!375101 s!2326) s!2326))))

(declare-fun e!3355358 () Option!15304)

(assert (=> b!5412978 (= e!3355358 (findConcatSeparationZippers!50 lt!2207353 lt!2207335 (++!13559 Nil!61754 (Cons!61754 (h!68202 s!2326) Nil!61754)) (t!375101 s!2326) s!2326))))

(declare-fun b!5412979 () Bool)

(assert (=> b!5412979 (= e!3355358 None!15303)))

(declare-fun b!5412980 () Bool)

(assert (=> b!5412980 (= e!3355357 e!3355358)))

(declare-fun c!943757 () Bool)

(assert (=> b!5412980 (= c!943757 ((_ is Nil!61754) s!2326))))

(declare-fun b!5412981 () Bool)

(assert (=> b!5412981 (= e!3355356 (not (isDefined!12007 lt!2207504)))))

(declare-fun b!5412982 () Bool)

(assert (=> b!5412982 (= e!3355357 (Some!15303 (tuple2!64785 Nil!61754 s!2326)))))

(declare-fun b!5412983 () Bool)

(assert (=> b!5412983 (= e!3355359 (matchZipper!1437 lt!2207335 s!2326))))

(assert (= (and d!1727436 res!2302385) b!5412983))

(assert (= (and d!1727436 c!943758) b!5412982))

(assert (= (and d!1727436 (not c!943758)) b!5412980))

(assert (= (and b!5412980 c!943757) b!5412979))

(assert (= (and b!5412980 (not c!943757)) b!5412978))

(assert (= (and d!1727436 res!2302387) b!5412976))

(assert (= (and b!5412976 res!2302383) b!5412977))

(assert (= (and b!5412977 res!2302386) b!5412975))

(assert (= (and d!1727436 (not res!2302384)) b!5412981))

(declare-fun m!6437076 () Bool)

(assert (=> b!5412981 m!6437076))

(declare-fun m!6437078 () Bool)

(assert (=> b!5412976 m!6437078))

(declare-fun m!6437080 () Bool)

(assert (=> b!5412976 m!6437080))

(assert (=> b!5412977 m!6437078))

(declare-fun m!6437084 () Bool)

(assert (=> b!5412977 m!6437084))

(assert (=> d!1727436 m!6437076))

(declare-fun m!6437090 () Bool)

(assert (=> d!1727436 m!6437090))

(declare-fun m!6437092 () Bool)

(assert (=> d!1727436 m!6437092))

(assert (=> b!5412978 m!6436716))

(assert (=> b!5412978 m!6436716))

(assert (=> b!5412978 m!6436718))

(assert (=> b!5412978 m!6436720))

(assert (=> b!5412978 m!6436716))

(declare-fun m!6437094 () Bool)

(assert (=> b!5412978 m!6437094))

(declare-fun m!6437096 () Bool)

(assert (=> b!5412983 m!6437096))

(assert (=> b!5412975 m!6437078))

(declare-fun m!6437098 () Bool)

(assert (=> b!5412975 m!6437098))

(assert (=> b!5412236 d!1727436))

(declare-fun b!5413020 () Bool)

(declare-fun e!3355385 () List!61878)

(assert (=> b!5413020 (= e!3355385 (_2!35695 lt!2207343))))

(declare-fun b!5413022 () Bool)

(declare-fun res!2302404 () Bool)

(declare-fun e!3355384 () Bool)

(assert (=> b!5413022 (=> (not res!2302404) (not e!3355384))))

(declare-fun lt!2207508 () List!61878)

(declare-fun size!39859 (List!61878) Int)

(assert (=> b!5413022 (= res!2302404 (= (size!39859 lt!2207508) (+ (size!39859 (_1!35695 lt!2207343)) (size!39859 (_2!35695 lt!2207343)))))))

(declare-fun b!5413023 () Bool)

(assert (=> b!5413023 (= e!3355384 (or (not (= (_2!35695 lt!2207343) Nil!61754)) (= lt!2207508 (_1!35695 lt!2207343))))))

(declare-fun d!1727452 () Bool)

(assert (=> d!1727452 e!3355384))

(declare-fun res!2302405 () Bool)

(assert (=> d!1727452 (=> (not res!2302405) (not e!3355384))))

(declare-fun content!11085 (List!61878) (InoxSet C!30656))

(assert (=> d!1727452 (= res!2302405 (= (content!11085 lt!2207508) ((_ map or) (content!11085 (_1!35695 lt!2207343)) (content!11085 (_2!35695 lt!2207343)))))))

(assert (=> d!1727452 (= lt!2207508 e!3355385)))

(declare-fun c!943769 () Bool)

(assert (=> d!1727452 (= c!943769 ((_ is Nil!61754) (_1!35695 lt!2207343)))))

(assert (=> d!1727452 (= (++!13559 (_1!35695 lt!2207343) (_2!35695 lt!2207343)) lt!2207508)))

(declare-fun b!5413021 () Bool)

(assert (=> b!5413021 (= e!3355385 (Cons!61754 (h!68202 (_1!35695 lt!2207343)) (++!13559 (t!375101 (_1!35695 lt!2207343)) (_2!35695 lt!2207343))))))

(assert (= (and d!1727452 c!943769) b!5413020))

(assert (= (and d!1727452 (not c!943769)) b!5413021))

(assert (= (and d!1727452 res!2302405) b!5413022))

(assert (= (and b!5413022 res!2302404) b!5413023))

(declare-fun m!6437126 () Bool)

(assert (=> b!5413022 m!6437126))

(declare-fun m!6437128 () Bool)

(assert (=> b!5413022 m!6437128))

(declare-fun m!6437130 () Bool)

(assert (=> b!5413022 m!6437130))

(declare-fun m!6437132 () Bool)

(assert (=> d!1727452 m!6437132))

(declare-fun m!6437134 () Bool)

(assert (=> d!1727452 m!6437134))

(declare-fun m!6437136 () Bool)

(assert (=> d!1727452 m!6437136))

(declare-fun m!6437138 () Bool)

(assert (=> b!5413021 m!6437138))

(assert (=> b!5412236 d!1727452))

(declare-fun d!1727466 () Bool)

(assert (=> d!1727466 (= (get!21292 lt!2207301) (v!51332 lt!2207301))))

(assert (=> b!5412236 d!1727466))

(declare-fun d!1727468 () Bool)

(assert (=> d!1727468 (= (isDefined!12007 lt!2207301) (not (isEmpty!33748 lt!2207301)))))

(declare-fun bs!1250247 () Bool)

(assert (= bs!1250247 d!1727468))

(declare-fun m!6437140 () Bool)

(assert (=> bs!1250247 m!6437140))

(assert (=> b!5412236 d!1727468))

(declare-fun d!1727470 () Bool)

(assert (=> d!1727470 (isDefined!12007 (findConcatSeparationZippers!50 lt!2207353 (store ((as const (Array Context!9154 Bool)) false) lt!2207302 true) Nil!61754 s!2326 s!2326))))

(declare-fun lt!2207514 () Unit!154294)

(declare-fun choose!40903 ((InoxSet Context!9154) Context!9154 List!61878) Unit!154294)

(assert (=> d!1727470 (= lt!2207514 (choose!40903 lt!2207353 lt!2207302 s!2326))))

(assert (=> d!1727470 (matchZipper!1437 (appendTo!52 lt!2207353 lt!2207302) s!2326)))

(assert (=> d!1727470 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!50 lt!2207353 lt!2207302 s!2326) lt!2207514)))

(declare-fun bs!1250253 () Bool)

(assert (= bs!1250253 d!1727470))

(assert (=> bs!1250253 m!6436366))

(assert (=> bs!1250253 m!6436404))

(assert (=> bs!1250253 m!6436404))

(declare-fun m!6437142 () Bool)

(assert (=> bs!1250253 m!6437142))

(declare-fun m!6437144 () Bool)

(assert (=> bs!1250253 m!6437144))

(declare-fun m!6437146 () Bool)

(assert (=> bs!1250253 m!6437146))

(assert (=> bs!1250253 m!6436366))

(assert (=> bs!1250253 m!6437144))

(declare-fun m!6437148 () Bool)

(assert (=> bs!1250253 m!6437148))

(assert (=> b!5412236 d!1727470))

(declare-fun d!1727472 () Bool)

(declare-fun c!943782 () Bool)

(assert (=> d!1727472 (= c!943782 (isEmpty!33749 s!2326))))

(declare-fun e!3355404 () Bool)

(assert (=> d!1727472 (= (matchZipper!1437 z!1189 s!2326) e!3355404)))

(declare-fun b!5413054 () Bool)

(assert (=> b!5413054 (= e!3355404 (nullableZipper!1446 z!1189))))

(declare-fun b!5413055 () Bool)

(assert (=> b!5413055 (= e!3355404 (matchZipper!1437 (derivationStepZipper!1432 z!1189 (head!11608 s!2326)) (tail!10705 s!2326)))))

(assert (= (and d!1727472 c!943782) b!5413054))

(assert (= (and d!1727472 (not c!943782)) b!5413055))

(declare-fun m!6437160 () Bool)

(assert (=> d!1727472 m!6437160))

(declare-fun m!6437164 () Bool)

(assert (=> b!5413054 m!6437164))

(declare-fun m!6437168 () Bool)

(assert (=> b!5413055 m!6437168))

(assert (=> b!5413055 m!6437168))

(declare-fun m!6437172 () Bool)

(assert (=> b!5413055 m!6437172))

(declare-fun m!6437175 () Bool)

(assert (=> b!5413055 m!6437175))

(assert (=> b!5413055 m!6437172))

(assert (=> b!5413055 m!6437175))

(declare-fun m!6437180 () Bool)

(assert (=> b!5413055 m!6437180))

(assert (=> b!5412257 d!1727472))

(declare-fun d!1727476 () Bool)

(declare-fun lt!2207515 () Regex!15193)

(assert (=> d!1727476 (validRegex!6929 lt!2207515)))

(assert (=> d!1727476 (= lt!2207515 (generalisedUnion!1122 (unfocusZipperList!635 (Cons!61756 lt!2207347 Nil!61756))))))

(assert (=> d!1727476 (= (unfocusZipper!935 (Cons!61756 lt!2207347 Nil!61756)) lt!2207515)))

(declare-fun bs!1250254 () Bool)

(assert (= bs!1250254 d!1727476))

(declare-fun m!6437182 () Bool)

(assert (=> bs!1250254 m!6437182))

(declare-fun m!6437184 () Bool)

(assert (=> bs!1250254 m!6437184))

(assert (=> bs!1250254 m!6437184))

(declare-fun m!6437186 () Bool)

(assert (=> bs!1250254 m!6437186))

(assert (=> b!5412235 d!1727476))

(declare-fun d!1727478 () Bool)

(declare-fun dynLambda!24332 (Int Context!9154) Context!9154)

(assert (=> d!1727478 (= (map!14174 lt!2207353 lambda!282735) (store ((as const (Array Context!9154 Bool)) false) (dynLambda!24332 lambda!282735 lt!2207317) true))))

(declare-fun lt!2207520 () Unit!154294)

(declare-fun choose!40904 ((InoxSet Context!9154) Context!9154 Int) Unit!154294)

(assert (=> d!1727478 (= lt!2207520 (choose!40904 lt!2207353 lt!2207317 lambda!282735))))

(assert (=> d!1727478 (= lt!2207353 (store ((as const (Array Context!9154 Bool)) false) lt!2207317 true))))

(assert (=> d!1727478 (= (lemmaMapOnSingletonSet!52 lt!2207353 lt!2207317 lambda!282735) lt!2207520)))

(declare-fun b_lambda!206725 () Bool)

(assert (=> (not b_lambda!206725) (not d!1727478)))

(declare-fun bs!1250255 () Bool)

(assert (= bs!1250255 d!1727478))

(declare-fun m!6437188 () Bool)

(assert (=> bs!1250255 m!6437188))

(declare-fun m!6437190 () Bool)

(assert (=> bs!1250255 m!6437190))

(assert (=> bs!1250255 m!6437190))

(declare-fun m!6437192 () Bool)

(assert (=> bs!1250255 m!6437192))

(assert (=> bs!1250255 m!6436402))

(assert (=> bs!1250255 m!6436372))

(assert (=> b!5412256 d!1727478))

(declare-fun d!1727480 () Bool)

(declare-fun choose!40905 ((InoxSet Context!9154) Int) (InoxSet Context!9154))

(assert (=> d!1727480 (= (map!14174 lt!2207353 lambda!282735) (choose!40905 lt!2207353 lambda!282735))))

(declare-fun bs!1250256 () Bool)

(assert (= bs!1250256 d!1727480))

(declare-fun m!6437194 () Bool)

(assert (=> bs!1250256 m!6437194))

(assert (=> b!5412256 d!1727480))

(declare-fun b!5413102 () Bool)

(declare-fun res!2302416 () Bool)

(declare-fun e!3355421 () Bool)

(assert (=> b!5413102 (=> (not res!2302416) (not e!3355421))))

(declare-fun lt!2207526 () List!61879)

(declare-fun size!39860 (List!61879) Int)

(assert (=> b!5413102 (= res!2302416 (= (size!39860 lt!2207526) (+ (size!39860 lt!2207316) (size!39860 lt!2207338))))))

(declare-fun d!1727482 () Bool)

(assert (=> d!1727482 e!3355421))

(declare-fun res!2302417 () Bool)

(assert (=> d!1727482 (=> (not res!2302417) (not e!3355421))))

(declare-fun content!11086 (List!61879) (InoxSet Regex!15193))

(assert (=> d!1727482 (= res!2302417 (= (content!11086 lt!2207526) ((_ map or) (content!11086 lt!2207316) (content!11086 lt!2207338))))))

(declare-fun e!3355422 () List!61879)

(assert (=> d!1727482 (= lt!2207526 e!3355422)))

(declare-fun c!943790 () Bool)

(assert (=> d!1727482 (= c!943790 ((_ is Nil!61755) lt!2207316))))

(assert (=> d!1727482 (= (++!13560 lt!2207316 lt!2207338) lt!2207526)))

(declare-fun b!5413101 () Bool)

(assert (=> b!5413101 (= e!3355422 (Cons!61755 (h!68203 lt!2207316) (++!13560 (t!375102 lt!2207316) lt!2207338)))))

(declare-fun b!5413103 () Bool)

(assert (=> b!5413103 (= e!3355421 (or (not (= lt!2207338 Nil!61755)) (= lt!2207526 lt!2207316)))))

(declare-fun b!5413100 () Bool)

(assert (=> b!5413100 (= e!3355422 lt!2207338)))

(assert (= (and d!1727482 c!943790) b!5413100))

(assert (= (and d!1727482 (not c!943790)) b!5413101))

(assert (= (and d!1727482 res!2302417) b!5413102))

(assert (= (and b!5413102 res!2302416) b!5413103))

(declare-fun m!6437222 () Bool)

(assert (=> b!5413102 m!6437222))

(declare-fun m!6437224 () Bool)

(assert (=> b!5413102 m!6437224))

(declare-fun m!6437226 () Bool)

(assert (=> b!5413102 m!6437226))

(declare-fun m!6437228 () Bool)

(assert (=> d!1727482 m!6437228))

(declare-fun m!6437230 () Bool)

(assert (=> d!1727482 m!6437230))

(declare-fun m!6437232 () Bool)

(assert (=> d!1727482 m!6437232))

(declare-fun m!6437234 () Bool)

(assert (=> b!5413101 m!6437234))

(assert (=> b!5412256 d!1727482))

(declare-fun d!1727494 () Bool)

(assert (=> d!1727494 (forall!14539 (++!13560 lt!2207316 lt!2207338) lambda!282736)))

(declare-fun lt!2207529 () Unit!154294)

(declare-fun choose!40906 (List!61879 List!61879 Int) Unit!154294)

(assert (=> d!1727494 (= lt!2207529 (choose!40906 lt!2207316 lt!2207338 lambda!282736))))

(assert (=> d!1727494 (forall!14539 lt!2207316 lambda!282736)))

(assert (=> d!1727494 (= (lemmaConcatPreservesForall!218 lt!2207316 lt!2207338 lambda!282736) lt!2207529)))

(declare-fun bs!1250266 () Bool)

(assert (= bs!1250266 d!1727494))

(assert (=> bs!1250266 m!6436238))

(assert (=> bs!1250266 m!6436238))

(declare-fun m!6437238 () Bool)

(assert (=> bs!1250266 m!6437238))

(declare-fun m!6437240 () Bool)

(assert (=> bs!1250266 m!6437240))

(declare-fun m!6437242 () Bool)

(assert (=> bs!1250266 m!6437242))

(assert (=> b!5412256 d!1727494))

(declare-fun bs!1250272 () Bool)

(declare-fun d!1727496 () Bool)

(assert (= bs!1250272 (and d!1727496 b!5412256)))

(declare-fun lambda!282818 () Int)

(assert (=> bs!1250272 (= (= (exprs!5077 lt!2207302) lt!2207338) (= lambda!282818 lambda!282735))))

(assert (=> d!1727496 true))

(assert (=> d!1727496 (= (appendTo!52 lt!2207353 lt!2207302) (map!14174 lt!2207353 lambda!282818))))

(declare-fun bs!1250273 () Bool)

(assert (= bs!1250273 d!1727496))

(declare-fun m!6437250 () Bool)

(assert (=> bs!1250273 m!6437250))

(assert (=> b!5412256 d!1727496))

(declare-fun b!5413134 () Bool)

(declare-fun e!3355442 () (InoxSet Context!9154))

(declare-fun call!387374 () (InoxSet Context!9154))

(declare-fun call!387371 () (InoxSet Context!9154))

(assert (=> b!5413134 (= e!3355442 ((_ map or) call!387374 call!387371))))

(declare-fun bm!387366 () Bool)

(declare-fun call!387373 () List!61879)

(declare-fun c!943792 () Bool)

(declare-fun c!943796 () Bool)

(assert (=> bm!387366 (= call!387373 ($colon$colon!1495 (exprs!5077 lt!2207302) (ite (or c!943796 c!943792) (regTwo!30898 (reg!15522 (regOne!30898 r!7292))) (reg!15522 (regOne!30898 r!7292)))))))

(declare-fun d!1727508 () Bool)

(declare-fun c!943795 () Bool)

(assert (=> d!1727508 (= c!943795 (and ((_ is ElementMatch!15193) (reg!15522 (regOne!30898 r!7292))) (= (c!943557 (reg!15522 (regOne!30898 r!7292))) (h!68202 s!2326))))))

(declare-fun e!3355444 () (InoxSet Context!9154))

(assert (=> d!1727508 (= (derivationStepZipperDown!641 (reg!15522 (regOne!30898 r!7292)) lt!2207302 (h!68202 s!2326)) e!3355444)))

(declare-fun b!5413135 () Bool)

(declare-fun e!3355439 () (InoxSet Context!9154))

(assert (=> b!5413135 (= e!3355444 e!3355439)))

(declare-fun c!943794 () Bool)

(assert (=> b!5413135 (= c!943794 ((_ is Union!15193) (reg!15522 (regOne!30898 r!7292))))))

(declare-fun call!387372 () List!61879)

(declare-fun bm!387367 () Bool)

(declare-fun call!387375 () (InoxSet Context!9154))

(assert (=> bm!387367 (= call!387375 (derivationStepZipperDown!641 (ite c!943794 (regOne!30899 (reg!15522 (regOne!30898 r!7292))) (ite c!943796 (regTwo!30898 (reg!15522 (regOne!30898 r!7292))) (ite c!943792 (regOne!30898 (reg!15522 (regOne!30898 r!7292))) (reg!15522 (reg!15522 (regOne!30898 r!7292)))))) (ite (or c!943794 c!943796) lt!2207302 (Context!9155 call!387372)) (h!68202 s!2326)))))

(declare-fun b!5413136 () Bool)

(declare-fun e!3355440 () (InoxSet Context!9154))

(assert (=> b!5413136 (= e!3355442 e!3355440)))

(assert (=> b!5413136 (= c!943792 ((_ is Concat!24038) (reg!15522 (regOne!30898 r!7292))))))

(declare-fun b!5413137 () Bool)

(declare-fun c!943793 () Bool)

(assert (=> b!5413137 (= c!943793 ((_ is Star!15193) (reg!15522 (regOne!30898 r!7292))))))

(declare-fun e!3355443 () (InoxSet Context!9154))

(assert (=> b!5413137 (= e!3355440 e!3355443)))

(declare-fun b!5413138 () Bool)

(declare-fun call!387376 () (InoxSet Context!9154))

(assert (=> b!5413138 (= e!3355440 call!387376)))

(declare-fun b!5413139 () Bool)

(assert (=> b!5413139 (= e!3355443 ((as const (Array Context!9154 Bool)) false))))

(declare-fun b!5413140 () Bool)

(declare-fun e!3355441 () Bool)

(assert (=> b!5413140 (= c!943796 e!3355441)))

(declare-fun res!2302418 () Bool)

(assert (=> b!5413140 (=> (not res!2302418) (not e!3355441))))

(assert (=> b!5413140 (= res!2302418 ((_ is Concat!24038) (reg!15522 (regOne!30898 r!7292))))))

(assert (=> b!5413140 (= e!3355439 e!3355442)))

(declare-fun bm!387368 () Bool)

(assert (=> bm!387368 (= call!387371 call!387375)))

(declare-fun b!5413141 () Bool)

(assert (=> b!5413141 (= e!3355444 (store ((as const (Array Context!9154 Bool)) false) lt!2207302 true))))

(declare-fun b!5413142 () Bool)

(assert (=> b!5413142 (= e!3355439 ((_ map or) call!387375 call!387374))))

(declare-fun bm!387369 () Bool)

(assert (=> bm!387369 (= call!387374 (derivationStepZipperDown!641 (ite c!943794 (regTwo!30899 (reg!15522 (regOne!30898 r!7292))) (regOne!30898 (reg!15522 (regOne!30898 r!7292)))) (ite c!943794 lt!2207302 (Context!9155 call!387373)) (h!68202 s!2326)))))

(declare-fun bm!387370 () Bool)

(assert (=> bm!387370 (= call!387376 call!387371)))

(declare-fun b!5413143 () Bool)

(assert (=> b!5413143 (= e!3355443 call!387376)))

(declare-fun b!5413144 () Bool)

(assert (=> b!5413144 (= e!3355441 (nullable!5362 (regOne!30898 (reg!15522 (regOne!30898 r!7292)))))))

(declare-fun bm!387371 () Bool)

(assert (=> bm!387371 (= call!387372 call!387373)))

(assert (= (and d!1727508 c!943795) b!5413141))

(assert (= (and d!1727508 (not c!943795)) b!5413135))

(assert (= (and b!5413135 c!943794) b!5413142))

(assert (= (and b!5413135 (not c!943794)) b!5413140))

(assert (= (and b!5413140 res!2302418) b!5413144))

(assert (= (and b!5413140 c!943796) b!5413134))

(assert (= (and b!5413140 (not c!943796)) b!5413136))

(assert (= (and b!5413136 c!943792) b!5413138))

(assert (= (and b!5413136 (not c!943792)) b!5413137))

(assert (= (and b!5413137 c!943793) b!5413143))

(assert (= (and b!5413137 (not c!943793)) b!5413139))

(assert (= (or b!5413138 b!5413143) bm!387371))

(assert (= (or b!5413138 b!5413143) bm!387370))

(assert (= (or b!5413134 bm!387371) bm!387366))

(assert (= (or b!5413134 bm!387370) bm!387368))

(assert (= (or b!5413142 b!5413134) bm!387369))

(assert (= (or b!5413142 bm!387368) bm!387367))

(declare-fun m!6437252 () Bool)

(assert (=> bm!387366 m!6437252))

(declare-fun m!6437254 () Bool)

(assert (=> bm!387367 m!6437254))

(declare-fun m!6437256 () Bool)

(assert (=> b!5413144 m!6437256))

(assert (=> b!5413141 m!6436366))

(declare-fun m!6437258 () Bool)

(assert (=> bm!387369 m!6437258))

(assert (=> b!5412234 d!1727508))

(declare-fun d!1727510 () Bool)

(declare-fun c!943797 () Bool)

(assert (=> d!1727510 (= c!943797 (isEmpty!33749 (t!375101 s!2326)))))

(declare-fun e!3355445 () Bool)

(assert (=> d!1727510 (= (matchZipper!1437 lt!2207332 (t!375101 s!2326)) e!3355445)))

(declare-fun b!5413145 () Bool)

(assert (=> b!5413145 (= e!3355445 (nullableZipper!1446 lt!2207332))))

(declare-fun b!5413146 () Bool)

(assert (=> b!5413146 (= e!3355445 (matchZipper!1437 (derivationStepZipper!1432 lt!2207332 (head!11608 (t!375101 s!2326))) (tail!10705 (t!375101 s!2326))))))

(assert (= (and d!1727510 c!943797) b!5413145))

(assert (= (and d!1727510 (not c!943797)) b!5413146))

(assert (=> d!1727510 m!6436872))

(declare-fun m!6437260 () Bool)

(assert (=> b!5413145 m!6437260))

(assert (=> b!5413146 m!6436876))

(assert (=> b!5413146 m!6436876))

(declare-fun m!6437262 () Bool)

(assert (=> b!5413146 m!6437262))

(assert (=> b!5413146 m!6436880))

(assert (=> b!5413146 m!6437262))

(assert (=> b!5413146 m!6436880))

(declare-fun m!6437264 () Bool)

(assert (=> b!5413146 m!6437264))

(assert (=> b!5412255 d!1727510))

(declare-fun d!1727512 () Bool)

(assert (=> d!1727512 (= (Exists!2374 lambda!282740) (choose!40891 lambda!282740))))

(declare-fun bs!1250274 () Bool)

(assert (= bs!1250274 d!1727512))

(declare-fun m!6437266 () Bool)

(assert (=> bs!1250274 m!6437266))

(assert (=> b!5412274 d!1727512))

(declare-fun b!5413147 () Bool)

(declare-fun e!3355446 () Bool)

(declare-fun e!3355449 () Bool)

(assert (=> b!5413147 (= e!3355446 e!3355449)))

(declare-fun res!2302420 () Bool)

(assert (=> b!5413147 (=> (not res!2302420) (not e!3355449))))

(declare-fun call!387379 () Bool)

(assert (=> b!5413147 (= res!2302420 call!387379)))

(declare-fun b!5413148 () Bool)

(declare-fun call!387377 () Bool)

(assert (=> b!5413148 (= e!3355449 call!387377)))

(declare-fun b!5413149 () Bool)

(declare-fun e!3355447 () Bool)

(assert (=> b!5413149 (= e!3355447 call!387377)))

(declare-fun call!387378 () Bool)

(declare-fun bm!387372 () Bool)

(declare-fun c!943798 () Bool)

(declare-fun c!943799 () Bool)

(assert (=> bm!387372 (= call!387378 (validRegex!6929 (ite c!943799 (reg!15522 (reg!15522 (regOne!30898 r!7292))) (ite c!943798 (regTwo!30899 (reg!15522 (regOne!30898 r!7292))) (regTwo!30898 (reg!15522 (regOne!30898 r!7292)))))))))

(declare-fun b!5413150 () Bool)

(declare-fun e!3355450 () Bool)

(declare-fun e!3355452 () Bool)

(assert (=> b!5413150 (= e!3355450 e!3355452)))

(assert (=> b!5413150 (= c!943799 ((_ is Star!15193) (reg!15522 (regOne!30898 r!7292))))))

(declare-fun bm!387373 () Bool)

(assert (=> bm!387373 (= call!387379 (validRegex!6929 (ite c!943798 (regOne!30899 (reg!15522 (regOne!30898 r!7292))) (regOne!30898 (reg!15522 (regOne!30898 r!7292))))))))

(declare-fun b!5413151 () Bool)

(declare-fun e!3355448 () Bool)

(assert (=> b!5413151 (= e!3355452 e!3355448)))

(declare-fun res!2302422 () Bool)

(assert (=> b!5413151 (= res!2302422 (not (nullable!5362 (reg!15522 (reg!15522 (regOne!30898 r!7292))))))))

(assert (=> b!5413151 (=> (not res!2302422) (not e!3355448))))

(declare-fun b!5413152 () Bool)

(declare-fun res!2302419 () Bool)

(assert (=> b!5413152 (=> res!2302419 e!3355446)))

(assert (=> b!5413152 (= res!2302419 (not ((_ is Concat!24038) (reg!15522 (regOne!30898 r!7292)))))))

(declare-fun e!3355451 () Bool)

(assert (=> b!5413152 (= e!3355451 e!3355446)))

(declare-fun bm!387374 () Bool)

(assert (=> bm!387374 (= call!387377 call!387378)))

(declare-fun b!5413154 () Bool)

(assert (=> b!5413154 (= e!3355452 e!3355451)))

(assert (=> b!5413154 (= c!943798 ((_ is Union!15193) (reg!15522 (regOne!30898 r!7292))))))

(declare-fun b!5413155 () Bool)

(declare-fun res!2302421 () Bool)

(assert (=> b!5413155 (=> (not res!2302421) (not e!3355447))))

(assert (=> b!5413155 (= res!2302421 call!387379)))

(assert (=> b!5413155 (= e!3355451 e!3355447)))

(declare-fun d!1727514 () Bool)

(declare-fun res!2302423 () Bool)

(assert (=> d!1727514 (=> res!2302423 e!3355450)))

(assert (=> d!1727514 (= res!2302423 ((_ is ElementMatch!15193) (reg!15522 (regOne!30898 r!7292))))))

(assert (=> d!1727514 (= (validRegex!6929 (reg!15522 (regOne!30898 r!7292))) e!3355450)))

(declare-fun b!5413153 () Bool)

(assert (=> b!5413153 (= e!3355448 call!387378)))

(assert (= (and d!1727514 (not res!2302423)) b!5413150))

(assert (= (and b!5413150 c!943799) b!5413151))

(assert (= (and b!5413150 (not c!943799)) b!5413154))

(assert (= (and b!5413151 res!2302422) b!5413153))

(assert (= (and b!5413154 c!943798) b!5413155))

(assert (= (and b!5413154 (not c!943798)) b!5413152))

(assert (= (and b!5413155 res!2302421) b!5413149))

(assert (= (and b!5413152 (not res!2302419)) b!5413147))

(assert (= (and b!5413147 res!2302420) b!5413148))

(assert (= (or b!5413149 b!5413148) bm!387374))

(assert (= (or b!5413155 b!5413147) bm!387373))

(assert (= (or b!5413153 bm!387374) bm!387372))

(declare-fun m!6437268 () Bool)

(assert (=> bm!387372 m!6437268))

(declare-fun m!6437270 () Bool)

(assert (=> bm!387373 m!6437270))

(declare-fun m!6437272 () Bool)

(assert (=> b!5413151 m!6437272))

(assert (=> b!5412274 d!1727514))

(declare-fun b!5413156 () Bool)

(declare-fun e!3355456 () Option!15304)

(declare-fun e!3355453 () Option!15304)

(assert (=> b!5413156 (= e!3355456 e!3355453)))

(declare-fun c!943801 () Bool)

(assert (=> b!5413156 (= c!943801 ((_ is Nil!61754) (_1!35695 lt!2207307)))))

(declare-fun b!5413157 () Bool)

(declare-fun lt!2207534 () Unit!154294)

(declare-fun lt!2207535 () Unit!154294)

(assert (=> b!5413157 (= lt!2207534 lt!2207535)))

(assert (=> b!5413157 (= (++!13559 (++!13559 Nil!61754 (Cons!61754 (h!68202 (_1!35695 lt!2207307)) Nil!61754)) (t!375101 (_1!35695 lt!2207307))) (_1!35695 lt!2207307))))

(assert (=> b!5413157 (= lt!2207535 (lemmaMoveElementToOtherListKeepsConcatEq!1841 Nil!61754 (h!68202 (_1!35695 lt!2207307)) (t!375101 (_1!35695 lt!2207307)) (_1!35695 lt!2207307)))))

(assert (=> b!5413157 (= e!3355453 (findConcatSeparation!1718 (reg!15522 (regOne!30898 r!7292)) lt!2207337 (++!13559 Nil!61754 (Cons!61754 (h!68202 (_1!35695 lt!2207307)) Nil!61754)) (t!375101 (_1!35695 lt!2207307)) (_1!35695 lt!2207307)))))

(declare-fun b!5413158 () Bool)

(declare-fun e!3355454 () Bool)

(assert (=> b!5413158 (= e!3355454 (matchR!7378 lt!2207337 (_1!35695 lt!2207307)))))

(declare-fun d!1727516 () Bool)

(declare-fun e!3355455 () Bool)

(assert (=> d!1727516 e!3355455))

(declare-fun res!2302428 () Bool)

(assert (=> d!1727516 (=> res!2302428 e!3355455)))

(declare-fun e!3355457 () Bool)

(assert (=> d!1727516 (= res!2302428 e!3355457)))

(declare-fun res!2302424 () Bool)

(assert (=> d!1727516 (=> (not res!2302424) (not e!3355457))))

(declare-fun lt!2207533 () Option!15304)

(assert (=> d!1727516 (= res!2302424 (isDefined!12007 lt!2207533))))

(assert (=> d!1727516 (= lt!2207533 e!3355456)))

(declare-fun c!943800 () Bool)

(assert (=> d!1727516 (= c!943800 e!3355454)))

(declare-fun res!2302427 () Bool)

(assert (=> d!1727516 (=> (not res!2302427) (not e!3355454))))

(assert (=> d!1727516 (= res!2302427 (matchR!7378 (reg!15522 (regOne!30898 r!7292)) Nil!61754))))

(assert (=> d!1727516 (validRegex!6929 (reg!15522 (regOne!30898 r!7292)))))

(assert (=> d!1727516 (= (findConcatSeparation!1718 (reg!15522 (regOne!30898 r!7292)) lt!2207337 Nil!61754 (_1!35695 lt!2207307) (_1!35695 lt!2207307)) lt!2207533)))

(declare-fun b!5413159 () Bool)

(assert (=> b!5413159 (= e!3355456 (Some!15303 (tuple2!64785 Nil!61754 (_1!35695 lt!2207307))))))

(declare-fun b!5413160 () Bool)

(assert (=> b!5413160 (= e!3355457 (= (++!13559 (_1!35695 (get!21292 lt!2207533)) (_2!35695 (get!21292 lt!2207533))) (_1!35695 lt!2207307)))))

(declare-fun b!5413161 () Bool)

(declare-fun res!2302425 () Bool)

(assert (=> b!5413161 (=> (not res!2302425) (not e!3355457))))

(assert (=> b!5413161 (= res!2302425 (matchR!7378 (reg!15522 (regOne!30898 r!7292)) (_1!35695 (get!21292 lt!2207533))))))

(declare-fun b!5413162 () Bool)

(declare-fun res!2302426 () Bool)

(assert (=> b!5413162 (=> (not res!2302426) (not e!3355457))))

(assert (=> b!5413162 (= res!2302426 (matchR!7378 lt!2207337 (_2!35695 (get!21292 lt!2207533))))))

(declare-fun b!5413163 () Bool)

(assert (=> b!5413163 (= e!3355453 None!15303)))

(declare-fun b!5413164 () Bool)

(assert (=> b!5413164 (= e!3355455 (not (isDefined!12007 lt!2207533)))))

(assert (= (and d!1727516 res!2302427) b!5413158))

(assert (= (and d!1727516 c!943800) b!5413159))

(assert (= (and d!1727516 (not c!943800)) b!5413156))

(assert (= (and b!5413156 c!943801) b!5413163))

(assert (= (and b!5413156 (not c!943801)) b!5413157))

(assert (= (and d!1727516 res!2302424) b!5413161))

(assert (= (and b!5413161 res!2302425) b!5413162))

(assert (= (and b!5413162 res!2302426) b!5413160))

(assert (= (and d!1727516 (not res!2302428)) b!5413164))

(declare-fun m!6437274 () Bool)

(assert (=> b!5413162 m!6437274))

(declare-fun m!6437276 () Bool)

(assert (=> b!5413162 m!6437276))

(assert (=> b!5413161 m!6437274))

(declare-fun m!6437278 () Bool)

(assert (=> b!5413161 m!6437278))

(assert (=> b!5413160 m!6437274))

(declare-fun m!6437280 () Bool)

(assert (=> b!5413160 m!6437280))

(declare-fun m!6437282 () Bool)

(assert (=> b!5413158 m!6437282))

(declare-fun m!6437284 () Bool)

(assert (=> b!5413164 m!6437284))

(assert (=> d!1727516 m!6437284))

(declare-fun m!6437286 () Bool)

(assert (=> d!1727516 m!6437286))

(assert (=> d!1727516 m!6436306))

(declare-fun m!6437288 () Bool)

(assert (=> b!5413157 m!6437288))

(assert (=> b!5413157 m!6437288))

(declare-fun m!6437290 () Bool)

(assert (=> b!5413157 m!6437290))

(declare-fun m!6437292 () Bool)

(assert (=> b!5413157 m!6437292))

(assert (=> b!5413157 m!6437288))

(declare-fun m!6437294 () Bool)

(assert (=> b!5413157 m!6437294))

(assert (=> b!5412274 d!1727516))

(declare-fun bs!1250275 () Bool)

(declare-fun d!1727518 () Bool)

(assert (= bs!1250275 (and d!1727518 d!1727332)))

(declare-fun lambda!282819 () Int)

(assert (=> bs!1250275 (not (= lambda!282819 lambda!282786))))

(declare-fun bs!1250276 () Bool)

(assert (= bs!1250276 (and d!1727518 b!5412247)))

(assert (=> bs!1250276 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) lt!2207321) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282819 lambda!282737))))

(assert (=> bs!1250275 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) (regOne!30898 r!7292)) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282819 lambda!282785))))

(declare-fun bs!1250277 () Bool)

(assert (= bs!1250277 (and d!1727518 b!5412241)))

(assert (=> bs!1250277 (not (= lambda!282819 lambda!282733))))

(declare-fun bs!1250278 () Bool)

(assert (= bs!1250278 (and d!1727518 b!5412274)))

(assert (=> bs!1250278 (not (= lambda!282819 lambda!282740))))

(assert (=> bs!1250278 (not (= lambda!282819 lambda!282741))))

(assert (=> bs!1250277 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) (regOne!30898 r!7292)) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282819 lambda!282732))))

(assert (=> bs!1250278 (= lambda!282819 lambda!282739)))

(declare-fun bs!1250279 () Bool)

(assert (= bs!1250279 (and d!1727518 d!1727326)))

(assert (=> bs!1250279 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) (regOne!30898 r!7292)) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282819 lambda!282779))))

(assert (=> bs!1250276 (not (= lambda!282819 lambda!282738))))

(assert (=> d!1727518 true))

(assert (=> d!1727518 true))

(assert (=> d!1727518 true))

(assert (=> d!1727518 (= (isDefined!12007 (findConcatSeparation!1718 (reg!15522 (regOne!30898 r!7292)) lt!2207337 Nil!61754 (_1!35695 lt!2207307) (_1!35695 lt!2207307))) (Exists!2374 lambda!282819))))

(declare-fun lt!2207536 () Unit!154294)

(assert (=> d!1727518 (= lt!2207536 (choose!40892 (reg!15522 (regOne!30898 r!7292)) lt!2207337 (_1!35695 lt!2207307)))))

(assert (=> d!1727518 (validRegex!6929 (reg!15522 (regOne!30898 r!7292)))))

(assert (=> d!1727518 (= (lemmaFindConcatSeparationEquivalentToExists!1482 (reg!15522 (regOne!30898 r!7292)) lt!2207337 (_1!35695 lt!2207307)) lt!2207536)))

(declare-fun bs!1250280 () Bool)

(assert (= bs!1250280 d!1727518))

(declare-fun m!6437296 () Bool)

(assert (=> bs!1250280 m!6437296))

(declare-fun m!6437298 () Bool)

(assert (=> bs!1250280 m!6437298))

(assert (=> bs!1250280 m!6436318))

(assert (=> bs!1250280 m!6436318))

(assert (=> bs!1250280 m!6436322))

(assert (=> bs!1250280 m!6436306))

(assert (=> b!5412274 d!1727518))

(declare-fun d!1727520 () Bool)

(assert (=> d!1727520 (= (isDefined!12007 (findConcatSeparation!1718 (reg!15522 (regOne!30898 r!7292)) lt!2207337 Nil!61754 (_1!35695 lt!2207307) (_1!35695 lt!2207307))) (not (isEmpty!33748 (findConcatSeparation!1718 (reg!15522 (regOne!30898 r!7292)) lt!2207337 Nil!61754 (_1!35695 lt!2207307) (_1!35695 lt!2207307)))))))

(declare-fun bs!1250281 () Bool)

(assert (= bs!1250281 d!1727520))

(assert (=> bs!1250281 m!6436318))

(declare-fun m!6437300 () Bool)

(assert (=> bs!1250281 m!6437300))

(assert (=> b!5412274 d!1727520))

(declare-fun bs!1250282 () Bool)

(declare-fun b!5413203 () Bool)

(assert (= bs!1250282 (and b!5413203 d!1727332)))

(declare-fun lambda!282824 () Int)

(assert (=> bs!1250282 (not (= lambda!282824 lambda!282786))))

(declare-fun bs!1250283 () Bool)

(assert (= bs!1250283 (and b!5413203 b!5412247)))

(assert (=> bs!1250283 (not (= lambda!282824 lambda!282737))))

(assert (=> bs!1250282 (not (= lambda!282824 lambda!282785))))

(declare-fun bs!1250284 () Bool)

(assert (= bs!1250284 (and b!5413203 b!5412241)))

(assert (=> bs!1250284 (not (= lambda!282824 lambda!282733))))

(declare-fun bs!1250285 () Bool)

(assert (= bs!1250285 (and b!5413203 d!1727518)))

(assert (=> bs!1250285 (not (= lambda!282824 lambda!282819))))

(declare-fun bs!1250286 () Bool)

(assert (= bs!1250286 (and b!5413203 b!5412274)))

(assert (=> bs!1250286 (not (= lambda!282824 lambda!282740))))

(assert (=> bs!1250286 (= (and (= (reg!15522 lt!2207321) (reg!15522 (regOne!30898 r!7292))) (= lt!2207321 lt!2207337)) (= lambda!282824 lambda!282741))))

(assert (=> bs!1250284 (not (= lambda!282824 lambda!282732))))

(assert (=> bs!1250286 (not (= lambda!282824 lambda!282739))))

(declare-fun bs!1250287 () Bool)

(assert (= bs!1250287 (and b!5413203 d!1727326)))

(assert (=> bs!1250287 (not (= lambda!282824 lambda!282779))))

(assert (=> bs!1250283 (not (= lambda!282824 lambda!282738))))

(assert (=> b!5413203 true))

(assert (=> b!5413203 true))

(declare-fun bs!1250288 () Bool)

(declare-fun b!5413200 () Bool)

(assert (= bs!1250288 (and b!5413200 d!1727332)))

(declare-fun lambda!282825 () Int)

(assert (=> bs!1250288 (= (and (= (_1!35695 lt!2207307) s!2326) (= (regOne!30898 lt!2207321) (regOne!30898 r!7292)) (= (regTwo!30898 lt!2207321) (regTwo!30898 r!7292))) (= lambda!282825 lambda!282786))))

(declare-fun bs!1250289 () Bool)

(assert (= bs!1250289 (and b!5413200 b!5412247)))

(assert (=> bs!1250289 (not (= lambda!282825 lambda!282737))))

(assert (=> bs!1250288 (not (= lambda!282825 lambda!282785))))

(declare-fun bs!1250290 () Bool)

(assert (= bs!1250290 (and b!5413200 b!5412241)))

(assert (=> bs!1250290 (= (and (= (_1!35695 lt!2207307) s!2326) (= (regOne!30898 lt!2207321) (regOne!30898 r!7292)) (= (regTwo!30898 lt!2207321) (regTwo!30898 r!7292))) (= lambda!282825 lambda!282733))))

(declare-fun bs!1250291 () Bool)

(assert (= bs!1250291 (and b!5413200 b!5413203)))

(assert (=> bs!1250291 (not (= lambda!282825 lambda!282824))))

(declare-fun bs!1250292 () Bool)

(assert (= bs!1250292 (and b!5413200 d!1727518)))

(assert (=> bs!1250292 (not (= lambda!282825 lambda!282819))))

(declare-fun bs!1250293 () Bool)

(assert (= bs!1250293 (and b!5413200 b!5412274)))

(assert (=> bs!1250293 (= (and (= (regOne!30898 lt!2207321) (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 lt!2207321) lt!2207337)) (= lambda!282825 lambda!282740))))

(assert (=> bs!1250293 (not (= lambda!282825 lambda!282741))))

(assert (=> bs!1250290 (not (= lambda!282825 lambda!282732))))

(assert (=> bs!1250293 (not (= lambda!282825 lambda!282739))))

(declare-fun bs!1250294 () Bool)

(assert (= bs!1250294 (and b!5413200 d!1727326)))

(assert (=> bs!1250294 (not (= lambda!282825 lambda!282779))))

(assert (=> bs!1250289 (= (and (= (_1!35695 lt!2207307) s!2326) (= (regOne!30898 lt!2207321) lt!2207321) (= (regTwo!30898 lt!2207321) (regTwo!30898 r!7292))) (= lambda!282825 lambda!282738))))

(assert (=> b!5413200 true))

(assert (=> b!5413200 true))

(declare-fun b!5413197 () Bool)

(declare-fun e!3355477 () Bool)

(declare-fun e!3355479 () Bool)

(assert (=> b!5413197 (= e!3355477 e!3355479)))

(declare-fun res!2302446 () Bool)

(assert (=> b!5413197 (= res!2302446 (not ((_ is EmptyLang!15193) lt!2207321)))))

(assert (=> b!5413197 (=> (not res!2302446) (not e!3355479))))

(declare-fun b!5413198 () Bool)

(declare-fun c!943811 () Bool)

(assert (=> b!5413198 (= c!943811 ((_ is Union!15193) lt!2207321))))

(declare-fun e!3355481 () Bool)

(declare-fun e!3355476 () Bool)

(assert (=> b!5413198 (= e!3355481 e!3355476)))

(declare-fun b!5413199 () Bool)

(declare-fun e!3355482 () Bool)

(assert (=> b!5413199 (= e!3355476 e!3355482)))

(declare-fun res!2302447 () Bool)

(assert (=> b!5413199 (= res!2302447 (matchRSpec!2296 (regOne!30899 lt!2207321) (_1!35695 lt!2207307)))))

(assert (=> b!5413199 (=> res!2302447 e!3355482)))

(declare-fun bm!387379 () Bool)

(declare-fun call!387385 () Bool)

(declare-fun c!943810 () Bool)

(assert (=> bm!387379 (= call!387385 (Exists!2374 (ite c!943810 lambda!282824 lambda!282825)))))

(declare-fun e!3355480 () Bool)

(assert (=> b!5413200 (= e!3355480 call!387385)))

(declare-fun b!5413201 () Bool)

(assert (=> b!5413201 (= e!3355481 (= (_1!35695 lt!2207307) (Cons!61754 (c!943557 lt!2207321) Nil!61754)))))

(declare-fun b!5413202 () Bool)

(assert (=> b!5413202 (= e!3355482 (matchRSpec!2296 (regTwo!30899 lt!2207321) (_1!35695 lt!2207307)))))

(declare-fun e!3355478 () Bool)

(assert (=> b!5413203 (= e!3355478 call!387385)))

(declare-fun b!5413204 () Bool)

(declare-fun c!943812 () Bool)

(assert (=> b!5413204 (= c!943812 ((_ is ElementMatch!15193) lt!2207321))))

(assert (=> b!5413204 (= e!3355479 e!3355481)))

(declare-fun bm!387380 () Bool)

(declare-fun call!387384 () Bool)

(assert (=> bm!387380 (= call!387384 (isEmpty!33749 (_1!35695 lt!2207307)))))

(declare-fun b!5413205 () Bool)

(assert (=> b!5413205 (= e!3355477 call!387384)))

(declare-fun d!1727522 () Bool)

(declare-fun c!943813 () Bool)

(assert (=> d!1727522 (= c!943813 ((_ is EmptyExpr!15193) lt!2207321))))

(assert (=> d!1727522 (= (matchRSpec!2296 lt!2207321 (_1!35695 lt!2207307)) e!3355477)))

(declare-fun b!5413206 () Bool)

(assert (=> b!5413206 (= e!3355476 e!3355480)))

(assert (=> b!5413206 (= c!943810 ((_ is Star!15193) lt!2207321))))

(declare-fun b!5413207 () Bool)

(declare-fun res!2302445 () Bool)

(assert (=> b!5413207 (=> res!2302445 e!3355478)))

(assert (=> b!5413207 (= res!2302445 call!387384)))

(assert (=> b!5413207 (= e!3355480 e!3355478)))

(assert (= (and d!1727522 c!943813) b!5413205))

(assert (= (and d!1727522 (not c!943813)) b!5413197))

(assert (= (and b!5413197 res!2302446) b!5413204))

(assert (= (and b!5413204 c!943812) b!5413201))

(assert (= (and b!5413204 (not c!943812)) b!5413198))

(assert (= (and b!5413198 c!943811) b!5413199))

(assert (= (and b!5413198 (not c!943811)) b!5413206))

(assert (= (and b!5413199 (not res!2302447)) b!5413202))

(assert (= (and b!5413206 c!943810) b!5413207))

(assert (= (and b!5413206 (not c!943810)) b!5413200))

(assert (= (and b!5413207 (not res!2302445)) b!5413203))

(assert (= (or b!5413203 b!5413200) bm!387379))

(assert (= (or b!5413205 b!5413207) bm!387380))

(declare-fun m!6437302 () Bool)

(assert (=> b!5413199 m!6437302))

(declare-fun m!6437304 () Bool)

(assert (=> bm!387379 m!6437304))

(declare-fun m!6437306 () Bool)

(assert (=> b!5413202 m!6437306))

(declare-fun m!6437308 () Bool)

(assert (=> bm!387380 m!6437308))

(assert (=> b!5412274 d!1727522))

(declare-fun d!1727524 () Bool)

(assert (=> d!1727524 (= (Exists!2374 lambda!282739) (choose!40891 lambda!282739))))

(declare-fun bs!1250295 () Bool)

(assert (= bs!1250295 d!1727524))

(declare-fun m!6437310 () Bool)

(assert (=> bs!1250295 m!6437310))

(assert (=> b!5412274 d!1727524))

(declare-fun d!1727526 () Bool)

(assert (=> d!1727526 (= (matchR!7378 lt!2207321 (_1!35695 lt!2207307)) (matchRSpec!2296 lt!2207321 (_1!35695 lt!2207307)))))

(declare-fun lt!2207539 () Unit!154294)

(declare-fun choose!40908 (Regex!15193 List!61878) Unit!154294)

(assert (=> d!1727526 (= lt!2207539 (choose!40908 lt!2207321 (_1!35695 lt!2207307)))))

(assert (=> d!1727526 (validRegex!6929 lt!2207321)))

(assert (=> d!1727526 (= (mainMatchTheorem!2296 lt!2207321 (_1!35695 lt!2207307)) lt!2207539)))

(declare-fun bs!1250296 () Bool)

(assert (= bs!1250296 d!1727526))

(assert (=> bs!1250296 m!6436240))

(assert (=> bs!1250296 m!6436312))

(declare-fun m!6437312 () Bool)

(assert (=> bs!1250296 m!6437312))

(declare-fun m!6437314 () Bool)

(assert (=> bs!1250296 m!6437314))

(assert (=> b!5412274 d!1727526))

(declare-fun d!1727528 () Bool)

(assert (=> d!1727528 (= (Exists!2374 lambda!282741) (choose!40891 lambda!282741))))

(declare-fun bs!1250297 () Bool)

(assert (= bs!1250297 d!1727528))

(declare-fun m!6437316 () Bool)

(assert (=> bs!1250297 m!6437316))

(assert (=> b!5412274 d!1727528))

(declare-fun bs!1250298 () Bool)

(declare-fun d!1727530 () Bool)

(assert (= bs!1250298 (and d!1727530 d!1727332)))

(declare-fun lambda!282826 () Int)

(assert (=> bs!1250298 (not (= lambda!282826 lambda!282786))))

(declare-fun bs!1250299 () Bool)

(assert (= bs!1250299 (and d!1727530 b!5412247)))

(assert (=> bs!1250299 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) lt!2207321) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282826 lambda!282737))))

(assert (=> bs!1250298 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) (regOne!30898 r!7292)) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282826 lambda!282785))))

(declare-fun bs!1250300 () Bool)

(assert (= bs!1250300 (and d!1727530 b!5412241)))

(assert (=> bs!1250300 (not (= lambda!282826 lambda!282733))))

(declare-fun bs!1250301 () Bool)

(assert (= bs!1250301 (and d!1727530 b!5413203)))

(assert (=> bs!1250301 (not (= lambda!282826 lambda!282824))))

(declare-fun bs!1250302 () Bool)

(assert (= bs!1250302 (and d!1727530 d!1727518)))

(assert (=> bs!1250302 (= lambda!282826 lambda!282819)))

(declare-fun bs!1250303 () Bool)

(assert (= bs!1250303 (and d!1727530 b!5412274)))

(assert (=> bs!1250303 (not (= lambda!282826 lambda!282740))))

(assert (=> bs!1250303 (not (= lambda!282826 lambda!282741))))

(assert (=> bs!1250300 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) (regOne!30898 r!7292)) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282826 lambda!282732))))

(declare-fun bs!1250304 () Bool)

(assert (= bs!1250304 (and d!1727530 b!5413200)))

(assert (=> bs!1250304 (not (= lambda!282826 lambda!282825))))

(assert (=> bs!1250303 (= lambda!282826 lambda!282739)))

(declare-fun bs!1250305 () Bool)

(assert (= bs!1250305 (and d!1727530 d!1727326)))

(assert (=> bs!1250305 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) (regOne!30898 r!7292)) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282826 lambda!282779))))

(assert (=> bs!1250299 (not (= lambda!282826 lambda!282738))))

(assert (=> d!1727530 true))

(assert (=> d!1727530 true))

(assert (=> d!1727530 true))

(declare-fun bs!1250306 () Bool)

(assert (= bs!1250306 d!1727530))

(declare-fun lambda!282827 () Int)

(assert (=> bs!1250306 (not (= lambda!282827 lambda!282826))))

(assert (=> bs!1250298 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) (regOne!30898 r!7292)) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282827 lambda!282786))))

(assert (=> bs!1250299 (not (= lambda!282827 lambda!282737))))

(assert (=> bs!1250298 (not (= lambda!282827 lambda!282785))))

(assert (=> bs!1250300 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) (regOne!30898 r!7292)) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282827 lambda!282733))))

(assert (=> bs!1250301 (not (= lambda!282827 lambda!282824))))

(assert (=> bs!1250302 (not (= lambda!282827 lambda!282819))))

(assert (=> bs!1250303 (= lambda!282827 lambda!282740)))

(assert (=> bs!1250303 (not (= lambda!282827 lambda!282741))))

(assert (=> bs!1250300 (not (= lambda!282827 lambda!282732))))

(assert (=> bs!1250304 (= (and (= (reg!15522 (regOne!30898 r!7292)) (regOne!30898 lt!2207321)) (= lt!2207337 (regTwo!30898 lt!2207321))) (= lambda!282827 lambda!282825))))

(assert (=> bs!1250303 (not (= lambda!282827 lambda!282739))))

(assert (=> bs!1250305 (not (= lambda!282827 lambda!282779))))

(assert (=> bs!1250299 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) lt!2207321) (= lt!2207337 (regTwo!30898 r!7292))) (= lambda!282827 lambda!282738))))

(assert (=> d!1727530 true))

(assert (=> d!1727530 true))

(assert (=> d!1727530 true))

(assert (=> d!1727530 (= (Exists!2374 lambda!282826) (Exists!2374 lambda!282827))))

(declare-fun lt!2207540 () Unit!154294)

(assert (=> d!1727530 (= lt!2207540 (choose!40894 (reg!15522 (regOne!30898 r!7292)) lt!2207337 (_1!35695 lt!2207307)))))

(assert (=> d!1727530 (validRegex!6929 (reg!15522 (regOne!30898 r!7292)))))

(assert (=> d!1727530 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1028 (reg!15522 (regOne!30898 r!7292)) lt!2207337 (_1!35695 lt!2207307)) lt!2207540)))

(declare-fun m!6437318 () Bool)

(assert (=> bs!1250306 m!6437318))

(declare-fun m!6437320 () Bool)

(assert (=> bs!1250306 m!6437320))

(declare-fun m!6437322 () Bool)

(assert (=> bs!1250306 m!6437322))

(assert (=> bs!1250306 m!6436306))

(assert (=> b!5412274 d!1727530))

(declare-fun bs!1250307 () Bool)

(declare-fun d!1727532 () Bool)

(assert (= bs!1250307 (and d!1727532 d!1727530)))

(declare-fun lambda!282832 () Int)

(assert (=> bs!1250307 (= (= (Star!15193 (reg!15522 (regOne!30898 r!7292))) lt!2207337) (= lambda!282832 lambda!282826))))

(declare-fun bs!1250308 () Bool)

(assert (= bs!1250308 (and d!1727532 d!1727332)))

(assert (=> bs!1250308 (not (= lambda!282832 lambda!282786))))

(declare-fun bs!1250309 () Bool)

(assert (= bs!1250309 (and d!1727532 b!5412247)))

(assert (=> bs!1250309 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) lt!2207321) (= (Star!15193 (reg!15522 (regOne!30898 r!7292))) (regTwo!30898 r!7292))) (= lambda!282832 lambda!282737))))

(assert (=> bs!1250308 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) (regOne!30898 r!7292)) (= (Star!15193 (reg!15522 (regOne!30898 r!7292))) (regTwo!30898 r!7292))) (= lambda!282832 lambda!282785))))

(declare-fun bs!1250310 () Bool)

(assert (= bs!1250310 (and d!1727532 b!5412241)))

(assert (=> bs!1250310 (not (= lambda!282832 lambda!282733))))

(declare-fun bs!1250311 () Bool)

(assert (= bs!1250311 (and d!1727532 b!5413203)))

(assert (=> bs!1250311 (not (= lambda!282832 lambda!282824))))

(declare-fun bs!1250312 () Bool)

(assert (= bs!1250312 (and d!1727532 d!1727518)))

(assert (=> bs!1250312 (= (= (Star!15193 (reg!15522 (regOne!30898 r!7292))) lt!2207337) (= lambda!282832 lambda!282819))))

(declare-fun bs!1250313 () Bool)

(assert (= bs!1250313 (and d!1727532 b!5412274)))

(assert (=> bs!1250313 (not (= lambda!282832 lambda!282740))))

(assert (=> bs!1250313 (not (= lambda!282832 lambda!282741))))

(assert (=> bs!1250310 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) (regOne!30898 r!7292)) (= (Star!15193 (reg!15522 (regOne!30898 r!7292))) (regTwo!30898 r!7292))) (= lambda!282832 lambda!282732))))

(assert (=> bs!1250313 (= (= (Star!15193 (reg!15522 (regOne!30898 r!7292))) lt!2207337) (= lambda!282832 lambda!282739))))

(declare-fun bs!1250314 () Bool)

(assert (= bs!1250314 (and d!1727532 d!1727326)))

(assert (=> bs!1250314 (= (and (= (_1!35695 lt!2207307) s!2326) (= (reg!15522 (regOne!30898 r!7292)) (regOne!30898 r!7292)) (= (Star!15193 (reg!15522 (regOne!30898 r!7292))) (regTwo!30898 r!7292))) (= lambda!282832 lambda!282779))))

(assert (=> bs!1250309 (not (= lambda!282832 lambda!282738))))

(assert (=> bs!1250307 (not (= lambda!282832 lambda!282827))))

(declare-fun bs!1250315 () Bool)

(assert (= bs!1250315 (and d!1727532 b!5413200)))

(assert (=> bs!1250315 (not (= lambda!282832 lambda!282825))))

(assert (=> d!1727532 true))

(assert (=> d!1727532 true))

(declare-fun lambda!282833 () Int)

(assert (=> bs!1250307 (not (= lambda!282833 lambda!282826))))

(assert (=> bs!1250308 (not (= lambda!282833 lambda!282786))))

(assert (=> bs!1250309 (not (= lambda!282833 lambda!282737))))

(assert (=> bs!1250308 (not (= lambda!282833 lambda!282785))))

(assert (=> bs!1250310 (not (= lambda!282833 lambda!282733))))

(assert (=> bs!1250311 (= (and (= (reg!15522 (regOne!30898 r!7292)) (reg!15522 lt!2207321)) (= (Star!15193 (reg!15522 (regOne!30898 r!7292))) lt!2207321)) (= lambda!282833 lambda!282824))))

(assert (=> bs!1250312 (not (= lambda!282833 lambda!282819))))

(assert (=> bs!1250313 (not (= lambda!282833 lambda!282740))))

(assert (=> bs!1250313 (= (= (Star!15193 (reg!15522 (regOne!30898 r!7292))) lt!2207337) (= lambda!282833 lambda!282741))))

(declare-fun bs!1250316 () Bool)

(assert (= bs!1250316 d!1727532))

(assert (=> bs!1250316 (not (= lambda!282833 lambda!282832))))

(assert (=> bs!1250310 (not (= lambda!282833 lambda!282732))))

(assert (=> bs!1250313 (not (= lambda!282833 lambda!282739))))

(assert (=> bs!1250314 (not (= lambda!282833 lambda!282779))))

(assert (=> bs!1250309 (not (= lambda!282833 lambda!282738))))

(assert (=> bs!1250307 (not (= lambda!282833 lambda!282827))))

(assert (=> bs!1250315 (not (= lambda!282833 lambda!282825))))

(assert (=> d!1727532 true))

(assert (=> d!1727532 true))

(assert (=> d!1727532 (= (Exists!2374 lambda!282832) (Exists!2374 lambda!282833))))

(declare-fun lt!2207543 () Unit!154294)

(declare-fun choose!40909 (Regex!15193 List!61878) Unit!154294)

(assert (=> d!1727532 (= lt!2207543 (choose!40909 (reg!15522 (regOne!30898 r!7292)) (_1!35695 lt!2207307)))))

(assert (=> d!1727532 (validRegex!6929 (reg!15522 (regOne!30898 r!7292)))))

(assert (=> d!1727532 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!404 (reg!15522 (regOne!30898 r!7292)) (_1!35695 lt!2207307)) lt!2207543)))

(declare-fun m!6437324 () Bool)

(assert (=> bs!1250316 m!6437324))

(declare-fun m!6437326 () Bool)

(assert (=> bs!1250316 m!6437326))

(declare-fun m!6437328 () Bool)

(assert (=> bs!1250316 m!6437328))

(assert (=> bs!1250316 m!6436306))

(assert (=> b!5412274 d!1727532))

(declare-fun d!1727534 () Bool)

(declare-fun lt!2207544 () Regex!15193)

(assert (=> d!1727534 (validRegex!6929 lt!2207544)))

(assert (=> d!1727534 (= lt!2207544 (generalisedUnion!1122 (unfocusZipperList!635 zl!343)))))

(assert (=> d!1727534 (= (unfocusZipper!935 zl!343) lt!2207544)))

(declare-fun bs!1250317 () Bool)

(assert (= bs!1250317 d!1727534))

(declare-fun m!6437330 () Bool)

(assert (=> bs!1250317 m!6437330))

(assert (=> bs!1250317 m!6436286))

(assert (=> bs!1250317 m!6436286))

(assert (=> bs!1250317 m!6436288))

(assert (=> b!5412233 d!1727534))

(declare-fun d!1727536 () Bool)

(declare-fun lt!2207545 () Regex!15193)

(assert (=> d!1727536 (validRegex!6929 lt!2207545)))

(assert (=> d!1727536 (= lt!2207545 (generalisedUnion!1122 (unfocusZipperList!635 lt!2207322)))))

(assert (=> d!1727536 (= (unfocusZipper!935 lt!2207322) lt!2207545)))

(declare-fun bs!1250318 () Bool)

(assert (= bs!1250318 d!1727536))

(declare-fun m!6437332 () Bool)

(assert (=> bs!1250318 m!6437332))

(declare-fun m!6437334 () Bool)

(assert (=> bs!1250318 m!6437334))

(assert (=> bs!1250318 m!6437334))

(declare-fun m!6437336 () Bool)

(assert (=> bs!1250318 m!6437336))

(assert (=> b!5412231 d!1727536))

(declare-fun d!1727538 () Bool)

(assert (=> d!1727538 (= (isEmpty!33744 (t!375102 (exprs!5077 (h!68204 zl!343)))) ((_ is Nil!61755) (t!375102 (exprs!5077 (h!68204 zl!343)))))))

(assert (=> b!5412252 d!1727538))

(declare-fun bs!1250319 () Bool)

(declare-fun d!1727540 () Bool)

(assert (= bs!1250319 (and d!1727540 b!5412256)))

(declare-fun lambda!282836 () Int)

(assert (=> bs!1250319 (= lambda!282836 lambda!282736)))

(declare-fun bs!1250320 () Bool)

(assert (= bs!1250320 (and d!1727540 d!1727428)))

(assert (=> bs!1250320 (= lambda!282836 lambda!282801)))

(declare-fun bs!1250321 () Bool)

(assert (= bs!1250321 (and d!1727540 d!1727434)))

(assert (=> bs!1250321 (= lambda!282836 lambda!282804)))

(declare-fun b!5413238 () Bool)

(declare-fun e!3355503 () Bool)

(declare-fun lt!2207548 () Regex!15193)

(declare-fun isConcat!500 (Regex!15193) Bool)

(assert (=> b!5413238 (= e!3355503 (isConcat!500 lt!2207548))))

(declare-fun b!5413239 () Bool)

(declare-fun e!3355501 () Bool)

(assert (=> b!5413239 (= e!3355501 (isEmpty!33744 (t!375102 (exprs!5077 (h!68204 zl!343)))))))

(declare-fun b!5413240 () Bool)

(declare-fun e!3355499 () Bool)

(declare-fun e!3355502 () Bool)

(assert (=> b!5413240 (= e!3355499 e!3355502)))

(declare-fun c!943824 () Bool)

(assert (=> b!5413240 (= c!943824 (isEmpty!33744 (exprs!5077 (h!68204 zl!343))))))

(declare-fun b!5413241 () Bool)

(declare-fun e!3355500 () Regex!15193)

(assert (=> b!5413241 (= e!3355500 EmptyExpr!15193)))

(assert (=> d!1727540 e!3355499))

(declare-fun res!2302462 () Bool)

(assert (=> d!1727540 (=> (not res!2302462) (not e!3355499))))

(assert (=> d!1727540 (= res!2302462 (validRegex!6929 lt!2207548))))

(declare-fun e!3355504 () Regex!15193)

(assert (=> d!1727540 (= lt!2207548 e!3355504)))

(declare-fun c!943823 () Bool)

(assert (=> d!1727540 (= c!943823 e!3355501)))

(declare-fun res!2302463 () Bool)

(assert (=> d!1727540 (=> (not res!2302463) (not e!3355501))))

(assert (=> d!1727540 (= res!2302463 ((_ is Cons!61755) (exprs!5077 (h!68204 zl!343))))))

(assert (=> d!1727540 (forall!14539 (exprs!5077 (h!68204 zl!343)) lambda!282836)))

(assert (=> d!1727540 (= (generalisedConcat!862 (exprs!5077 (h!68204 zl!343))) lt!2207548)))

(declare-fun b!5413242 () Bool)

(declare-fun isEmptyExpr!977 (Regex!15193) Bool)

(assert (=> b!5413242 (= e!3355502 (isEmptyExpr!977 lt!2207548))))

(declare-fun b!5413243 () Bool)

(assert (=> b!5413243 (= e!3355500 (Concat!24038 (h!68203 (exprs!5077 (h!68204 zl!343))) (generalisedConcat!862 (t!375102 (exprs!5077 (h!68204 zl!343))))))))

(declare-fun b!5413244 () Bool)

(assert (=> b!5413244 (= e!3355504 e!3355500)))

(declare-fun c!943822 () Bool)

(assert (=> b!5413244 (= c!943822 ((_ is Cons!61755) (exprs!5077 (h!68204 zl!343))))))

(declare-fun b!5413245 () Bool)

(assert (=> b!5413245 (= e!3355503 (= lt!2207548 (head!11609 (exprs!5077 (h!68204 zl!343)))))))

(declare-fun b!5413246 () Bool)

(assert (=> b!5413246 (= e!3355502 e!3355503)))

(declare-fun c!943825 () Bool)

(assert (=> b!5413246 (= c!943825 (isEmpty!33744 (tail!10706 (exprs!5077 (h!68204 zl!343)))))))

(declare-fun b!5413247 () Bool)

(assert (=> b!5413247 (= e!3355504 (h!68203 (exprs!5077 (h!68204 zl!343))))))

(assert (= (and d!1727540 res!2302463) b!5413239))

(assert (= (and d!1727540 c!943823) b!5413247))

(assert (= (and d!1727540 (not c!943823)) b!5413244))

(assert (= (and b!5413244 c!943822) b!5413243))

(assert (= (and b!5413244 (not c!943822)) b!5413241))

(assert (= (and d!1727540 res!2302462) b!5413240))

(assert (= (and b!5413240 c!943824) b!5413242))

(assert (= (and b!5413240 (not c!943824)) b!5413246))

(assert (= (and b!5413246 c!943825) b!5413245))

(assert (= (and b!5413246 (not c!943825)) b!5413238))

(declare-fun m!6437338 () Bool)

(assert (=> d!1727540 m!6437338))

(declare-fun m!6437340 () Bool)

(assert (=> d!1727540 m!6437340))

(declare-fun m!6437342 () Bool)

(assert (=> b!5413243 m!6437342))

(declare-fun m!6437344 () Bool)

(assert (=> b!5413240 m!6437344))

(declare-fun m!6437346 () Bool)

(assert (=> b!5413238 m!6437346))

(declare-fun m!6437348 () Bool)

(assert (=> b!5413245 m!6437348))

(declare-fun m!6437350 () Bool)

(assert (=> b!5413242 m!6437350))

(assert (=> b!5413239 m!6436270))

(declare-fun m!6437352 () Bool)

(assert (=> b!5413246 m!6437352))

(assert (=> b!5413246 m!6437352))

(declare-fun m!6437354 () Bool)

(assert (=> b!5413246 m!6437354))

(assert (=> b!5412271 d!1727540))

(declare-fun bs!1250322 () Bool)

(declare-fun b!5413254 () Bool)

(assert (= bs!1250322 (and b!5413254 d!1727530)))

(declare-fun lambda!282837 () Int)

(assert (=> bs!1250322 (not (= lambda!282837 lambda!282826))))

(declare-fun bs!1250323 () Bool)

(assert (= bs!1250323 (and b!5413254 d!1727332)))

(assert (=> bs!1250323 (not (= lambda!282837 lambda!282786))))

(declare-fun bs!1250324 () Bool)

(assert (= bs!1250324 (and b!5413254 b!5412247)))

(assert (=> bs!1250324 (not (= lambda!282837 lambda!282737))))

(assert (=> bs!1250323 (not (= lambda!282837 lambda!282785))))

(declare-fun bs!1250325 () Bool)

(assert (= bs!1250325 (and b!5413254 b!5412241)))

(assert (=> bs!1250325 (not (= lambda!282837 lambda!282733))))

(declare-fun bs!1250326 () Bool)

(assert (= bs!1250326 (and b!5413254 b!5413203)))

(assert (=> bs!1250326 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (reg!15522 r!7292) (reg!15522 lt!2207321)) (= r!7292 lt!2207321)) (= lambda!282837 lambda!282824))))

(declare-fun bs!1250327 () Bool)

(assert (= bs!1250327 (and b!5413254 d!1727518)))

(assert (=> bs!1250327 (not (= lambda!282837 lambda!282819))))

(declare-fun bs!1250328 () Bool)

(assert (= bs!1250328 (and b!5413254 d!1727532)))

(assert (=> bs!1250328 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (reg!15522 r!7292) (reg!15522 (regOne!30898 r!7292))) (= r!7292 (Star!15193 (reg!15522 (regOne!30898 r!7292))))) (= lambda!282837 lambda!282833))))

(declare-fun bs!1250329 () Bool)

(assert (= bs!1250329 (and b!5413254 b!5412274)))

(assert (=> bs!1250329 (not (= lambda!282837 lambda!282740))))

(assert (=> bs!1250329 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (reg!15522 r!7292) (reg!15522 (regOne!30898 r!7292))) (= r!7292 lt!2207337)) (= lambda!282837 lambda!282741))))

(assert (=> bs!1250328 (not (= lambda!282837 lambda!282832))))

(assert (=> bs!1250325 (not (= lambda!282837 lambda!282732))))

(assert (=> bs!1250329 (not (= lambda!282837 lambda!282739))))

(declare-fun bs!1250330 () Bool)

(assert (= bs!1250330 (and b!5413254 d!1727326)))

(assert (=> bs!1250330 (not (= lambda!282837 lambda!282779))))

(assert (=> bs!1250324 (not (= lambda!282837 lambda!282738))))

(assert (=> bs!1250322 (not (= lambda!282837 lambda!282827))))

(declare-fun bs!1250331 () Bool)

(assert (= bs!1250331 (and b!5413254 b!5413200)))

(assert (=> bs!1250331 (not (= lambda!282837 lambda!282825))))

(assert (=> b!5413254 true))

(assert (=> b!5413254 true))

(declare-fun bs!1250332 () Bool)

(declare-fun b!5413251 () Bool)

(assert (= bs!1250332 (and b!5413251 d!1727530)))

(declare-fun lambda!282838 () Int)

(assert (=> bs!1250332 (not (= lambda!282838 lambda!282826))))

(declare-fun bs!1250333 () Bool)

(assert (= bs!1250333 (and b!5413251 d!1727332)))

(assert (=> bs!1250333 (= lambda!282838 lambda!282786)))

(declare-fun bs!1250334 () Bool)

(assert (= bs!1250334 (and b!5413251 b!5413254)))

(assert (=> bs!1250334 (not (= lambda!282838 lambda!282837))))

(declare-fun bs!1250335 () Bool)

(assert (= bs!1250335 (and b!5413251 b!5412247)))

(assert (=> bs!1250335 (not (= lambda!282838 lambda!282737))))

(assert (=> bs!1250333 (not (= lambda!282838 lambda!282785))))

(declare-fun bs!1250336 () Bool)

(assert (= bs!1250336 (and b!5413251 b!5412241)))

(assert (=> bs!1250336 (= lambda!282838 lambda!282733)))

(declare-fun bs!1250337 () Bool)

(assert (= bs!1250337 (and b!5413251 b!5413203)))

(assert (=> bs!1250337 (not (= lambda!282838 lambda!282824))))

(declare-fun bs!1250338 () Bool)

(assert (= bs!1250338 (and b!5413251 d!1727518)))

(assert (=> bs!1250338 (not (= lambda!282838 lambda!282819))))

(declare-fun bs!1250339 () Bool)

(assert (= bs!1250339 (and b!5413251 d!1727532)))

(assert (=> bs!1250339 (not (= lambda!282838 lambda!282833))))

(declare-fun bs!1250340 () Bool)

(assert (= bs!1250340 (and b!5413251 b!5412274)))

(assert (=> bs!1250340 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (regOne!30898 r!7292) (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) lt!2207337)) (= lambda!282838 lambda!282740))))

(assert (=> bs!1250340 (not (= lambda!282838 lambda!282741))))

(assert (=> bs!1250339 (not (= lambda!282838 lambda!282832))))

(assert (=> bs!1250336 (not (= lambda!282838 lambda!282732))))

(assert (=> bs!1250340 (not (= lambda!282838 lambda!282739))))

(declare-fun bs!1250341 () Bool)

(assert (= bs!1250341 (and b!5413251 d!1727326)))

(assert (=> bs!1250341 (not (= lambda!282838 lambda!282779))))

(assert (=> bs!1250335 (= (= (regOne!30898 r!7292) lt!2207321) (= lambda!282838 lambda!282738))))

(assert (=> bs!1250332 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (regOne!30898 r!7292) (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) lt!2207337)) (= lambda!282838 lambda!282827))))

(declare-fun bs!1250342 () Bool)

(assert (= bs!1250342 (and b!5413251 b!5413200)))

(assert (=> bs!1250342 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (regOne!30898 r!7292) (regOne!30898 lt!2207321)) (= (regTwo!30898 r!7292) (regTwo!30898 lt!2207321))) (= lambda!282838 lambda!282825))))

(assert (=> b!5413251 true))

(assert (=> b!5413251 true))

(declare-fun b!5413248 () Bool)

(declare-fun e!3355506 () Bool)

(declare-fun e!3355508 () Bool)

(assert (=> b!5413248 (= e!3355506 e!3355508)))

(declare-fun res!2302465 () Bool)

(assert (=> b!5413248 (= res!2302465 (not ((_ is EmptyLang!15193) r!7292)))))

(assert (=> b!5413248 (=> (not res!2302465) (not e!3355508))))

(declare-fun b!5413249 () Bool)

(declare-fun c!943827 () Bool)

(assert (=> b!5413249 (= c!943827 ((_ is Union!15193) r!7292))))

(declare-fun e!3355510 () Bool)

(declare-fun e!3355505 () Bool)

(assert (=> b!5413249 (= e!3355510 e!3355505)))

(declare-fun b!5413250 () Bool)

(declare-fun e!3355511 () Bool)

(assert (=> b!5413250 (= e!3355505 e!3355511)))

(declare-fun res!2302466 () Bool)

(assert (=> b!5413250 (= res!2302466 (matchRSpec!2296 (regOne!30899 r!7292) s!2326))))

(assert (=> b!5413250 (=> res!2302466 e!3355511)))

(declare-fun call!387387 () Bool)

(declare-fun c!943826 () Bool)

(declare-fun bm!387381 () Bool)

(assert (=> bm!387381 (= call!387387 (Exists!2374 (ite c!943826 lambda!282837 lambda!282838)))))

(declare-fun e!3355509 () Bool)

(assert (=> b!5413251 (= e!3355509 call!387387)))

(declare-fun b!5413252 () Bool)

(assert (=> b!5413252 (= e!3355510 (= s!2326 (Cons!61754 (c!943557 r!7292) Nil!61754)))))

(declare-fun b!5413253 () Bool)

(assert (=> b!5413253 (= e!3355511 (matchRSpec!2296 (regTwo!30899 r!7292) s!2326))))

(declare-fun e!3355507 () Bool)

(assert (=> b!5413254 (= e!3355507 call!387387)))

(declare-fun b!5413255 () Bool)

(declare-fun c!943828 () Bool)

(assert (=> b!5413255 (= c!943828 ((_ is ElementMatch!15193) r!7292))))

(assert (=> b!5413255 (= e!3355508 e!3355510)))

(declare-fun bm!387382 () Bool)

(declare-fun call!387386 () Bool)

(assert (=> bm!387382 (= call!387386 (isEmpty!33749 s!2326))))

(declare-fun b!5413256 () Bool)

(assert (=> b!5413256 (= e!3355506 call!387386)))

(declare-fun d!1727542 () Bool)

(declare-fun c!943829 () Bool)

(assert (=> d!1727542 (= c!943829 ((_ is EmptyExpr!15193) r!7292))))

(assert (=> d!1727542 (= (matchRSpec!2296 r!7292 s!2326) e!3355506)))

(declare-fun b!5413257 () Bool)

(assert (=> b!5413257 (= e!3355505 e!3355509)))

(assert (=> b!5413257 (= c!943826 ((_ is Star!15193) r!7292))))

(declare-fun b!5413258 () Bool)

(declare-fun res!2302464 () Bool)

(assert (=> b!5413258 (=> res!2302464 e!3355507)))

(assert (=> b!5413258 (= res!2302464 call!387386)))

(assert (=> b!5413258 (= e!3355509 e!3355507)))

(assert (= (and d!1727542 c!943829) b!5413256))

(assert (= (and d!1727542 (not c!943829)) b!5413248))

(assert (= (and b!5413248 res!2302465) b!5413255))

(assert (= (and b!5413255 c!943828) b!5413252))

(assert (= (and b!5413255 (not c!943828)) b!5413249))

(assert (= (and b!5413249 c!943827) b!5413250))

(assert (= (and b!5413249 (not c!943827)) b!5413257))

(assert (= (and b!5413250 (not res!2302466)) b!5413253))

(assert (= (and b!5413257 c!943826) b!5413258))

(assert (= (and b!5413257 (not c!943826)) b!5413251))

(assert (= (and b!5413258 (not res!2302464)) b!5413254))

(assert (= (or b!5413254 b!5413251) bm!387381))

(assert (= (or b!5413256 b!5413258) bm!387382))

(declare-fun m!6437356 () Bool)

(assert (=> b!5413250 m!6437356))

(declare-fun m!6437358 () Bool)

(assert (=> bm!387381 m!6437358))

(declare-fun m!6437360 () Bool)

(assert (=> b!5413253 m!6437360))

(assert (=> bm!387382 m!6437160))

(assert (=> b!5412270 d!1727542))

(declare-fun b!5413287 () Bool)

(declare-fun res!2302484 () Bool)

(declare-fun e!3355532 () Bool)

(assert (=> b!5413287 (=> res!2302484 e!3355532)))

(assert (=> b!5413287 (= res!2302484 (not ((_ is ElementMatch!15193) r!7292)))))

(declare-fun e!3355527 () Bool)

(assert (=> b!5413287 (= e!3355527 e!3355532)))

(declare-fun d!1727544 () Bool)

(declare-fun e!3355528 () Bool)

(assert (=> d!1727544 e!3355528))

(declare-fun c!943837 () Bool)

(assert (=> d!1727544 (= c!943837 ((_ is EmptyExpr!15193) r!7292))))

(declare-fun lt!2207551 () Bool)

(declare-fun e!3355526 () Bool)

(assert (=> d!1727544 (= lt!2207551 e!3355526)))

(declare-fun c!943838 () Bool)

(assert (=> d!1727544 (= c!943838 (isEmpty!33749 s!2326))))

(assert (=> d!1727544 (validRegex!6929 r!7292)))

(assert (=> d!1727544 (= (matchR!7378 r!7292 s!2326) lt!2207551)))

(declare-fun bm!387385 () Bool)

(declare-fun call!387390 () Bool)

(assert (=> bm!387385 (= call!387390 (isEmpty!33749 s!2326))))

(declare-fun b!5413288 () Bool)

(declare-fun derivativeStep!4267 (Regex!15193 C!30656) Regex!15193)

(assert (=> b!5413288 (= e!3355526 (matchR!7378 (derivativeStep!4267 r!7292 (head!11608 s!2326)) (tail!10705 s!2326)))))

(declare-fun b!5413289 () Bool)

(assert (=> b!5413289 (= e!3355528 e!3355527)))

(declare-fun c!943836 () Bool)

(assert (=> b!5413289 (= c!943836 ((_ is EmptyLang!15193) r!7292))))

(declare-fun b!5413290 () Bool)

(assert (=> b!5413290 (= e!3355528 (= lt!2207551 call!387390))))

(declare-fun b!5413291 () Bool)

(declare-fun res!2302490 () Bool)

(declare-fun e!3355531 () Bool)

(assert (=> b!5413291 (=> res!2302490 e!3355531)))

(assert (=> b!5413291 (= res!2302490 (not (isEmpty!33749 (tail!10705 s!2326))))))

(declare-fun b!5413292 () Bool)

(assert (=> b!5413292 (= e!3355526 (nullable!5362 r!7292))))

(declare-fun b!5413293 () Bool)

(declare-fun res!2302486 () Bool)

(assert (=> b!5413293 (=> res!2302486 e!3355532)))

(declare-fun e!3355530 () Bool)

(assert (=> b!5413293 (= res!2302486 e!3355530)))

(declare-fun res!2302485 () Bool)

(assert (=> b!5413293 (=> (not res!2302485) (not e!3355530))))

(assert (=> b!5413293 (= res!2302485 lt!2207551)))

(declare-fun b!5413294 () Bool)

(declare-fun res!2302489 () Bool)

(assert (=> b!5413294 (=> (not res!2302489) (not e!3355530))))

(assert (=> b!5413294 (= res!2302489 (isEmpty!33749 (tail!10705 s!2326)))))

(declare-fun b!5413295 () Bool)

(declare-fun e!3355529 () Bool)

(assert (=> b!5413295 (= e!3355529 e!3355531)))

(declare-fun res!2302483 () Bool)

(assert (=> b!5413295 (=> res!2302483 e!3355531)))

(assert (=> b!5413295 (= res!2302483 call!387390)))

(declare-fun b!5413296 () Bool)

(assert (=> b!5413296 (= e!3355532 e!3355529)))

(declare-fun res!2302488 () Bool)

(assert (=> b!5413296 (=> (not res!2302488) (not e!3355529))))

(assert (=> b!5413296 (= res!2302488 (not lt!2207551))))

(declare-fun b!5413297 () Bool)

(assert (=> b!5413297 (= e!3355530 (= (head!11608 s!2326) (c!943557 r!7292)))))

(declare-fun b!5413298 () Bool)

(declare-fun res!2302487 () Bool)

(assert (=> b!5413298 (=> (not res!2302487) (not e!3355530))))

(assert (=> b!5413298 (= res!2302487 (not call!387390))))

(declare-fun b!5413299 () Bool)

(assert (=> b!5413299 (= e!3355531 (not (= (head!11608 s!2326) (c!943557 r!7292))))))

(declare-fun b!5413300 () Bool)

(assert (=> b!5413300 (= e!3355527 (not lt!2207551))))

(assert (= (and d!1727544 c!943838) b!5413292))

(assert (= (and d!1727544 (not c!943838)) b!5413288))

(assert (= (and d!1727544 c!943837) b!5413290))

(assert (= (and d!1727544 (not c!943837)) b!5413289))

(assert (= (and b!5413289 c!943836) b!5413300))

(assert (= (and b!5413289 (not c!943836)) b!5413287))

(assert (= (and b!5413287 (not res!2302484)) b!5413293))

(assert (= (and b!5413293 res!2302485) b!5413298))

(assert (= (and b!5413298 res!2302487) b!5413294))

(assert (= (and b!5413294 res!2302489) b!5413297))

(assert (= (and b!5413293 (not res!2302486)) b!5413296))

(assert (= (and b!5413296 res!2302488) b!5413295))

(assert (= (and b!5413295 (not res!2302483)) b!5413291))

(assert (= (and b!5413291 (not res!2302490)) b!5413299))

(assert (= (or b!5413290 b!5413295 b!5413298) bm!387385))

(assert (=> b!5413294 m!6437175))

(assert (=> b!5413294 m!6437175))

(declare-fun m!6437362 () Bool)

(assert (=> b!5413294 m!6437362))

(assert (=> b!5413291 m!6437175))

(assert (=> b!5413291 m!6437175))

(assert (=> b!5413291 m!6437362))

(assert (=> b!5413288 m!6437168))

(assert (=> b!5413288 m!6437168))

(declare-fun m!6437364 () Bool)

(assert (=> b!5413288 m!6437364))

(assert (=> b!5413288 m!6437175))

(assert (=> b!5413288 m!6437364))

(assert (=> b!5413288 m!6437175))

(declare-fun m!6437366 () Bool)

(assert (=> b!5413288 m!6437366))

(declare-fun m!6437368 () Bool)

(assert (=> b!5413292 m!6437368))

(assert (=> d!1727544 m!6437160))

(assert (=> d!1727544 m!6436280))

(assert (=> b!5413297 m!6437168))

(assert (=> bm!387385 m!6437160))

(assert (=> b!5413299 m!6437168))

(assert (=> b!5412270 d!1727544))

(declare-fun d!1727546 () Bool)

(assert (=> d!1727546 (= (matchR!7378 r!7292 s!2326) (matchRSpec!2296 r!7292 s!2326))))

(declare-fun lt!2207552 () Unit!154294)

(assert (=> d!1727546 (= lt!2207552 (choose!40908 r!7292 s!2326))))

(assert (=> d!1727546 (validRegex!6929 r!7292)))

(assert (=> d!1727546 (= (mainMatchTheorem!2296 r!7292 s!2326) lt!2207552)))

(declare-fun bs!1250343 () Bool)

(assert (= bs!1250343 d!1727546))

(assert (=> bs!1250343 m!6436276))

(assert (=> bs!1250343 m!6436274))

(declare-fun m!6437370 () Bool)

(assert (=> bs!1250343 m!6437370))

(assert (=> bs!1250343 m!6436280))

(assert (=> b!5412270 d!1727546))

(declare-fun d!1727548 () Bool)

(declare-fun c!943839 () Bool)

(assert (=> d!1727548 (= c!943839 (isEmpty!33749 (_1!35695 lt!2207343)))))

(declare-fun e!3355533 () Bool)

(assert (=> d!1727548 (= (matchZipper!1437 lt!2207353 (_1!35695 lt!2207343)) e!3355533)))

(declare-fun b!5413301 () Bool)

(assert (=> b!5413301 (= e!3355533 (nullableZipper!1446 lt!2207353))))

(declare-fun b!5413302 () Bool)

(assert (=> b!5413302 (= e!3355533 (matchZipper!1437 (derivationStepZipper!1432 lt!2207353 (head!11608 (_1!35695 lt!2207343))) (tail!10705 (_1!35695 lt!2207343))))))

(assert (= (and d!1727548 c!943839) b!5413301))

(assert (= (and d!1727548 (not c!943839)) b!5413302))

(declare-fun m!6437372 () Bool)

(assert (=> d!1727548 m!6437372))

(declare-fun m!6437374 () Bool)

(assert (=> b!5413301 m!6437374))

(declare-fun m!6437376 () Bool)

(assert (=> b!5413302 m!6437376))

(assert (=> b!5413302 m!6437376))

(declare-fun m!6437378 () Bool)

(assert (=> b!5413302 m!6437378))

(declare-fun m!6437380 () Bool)

(assert (=> b!5413302 m!6437380))

(assert (=> b!5413302 m!6437378))

(assert (=> b!5413302 m!6437380))

(declare-fun m!6437382 () Bool)

(assert (=> b!5413302 m!6437382))

(assert (=> b!5412250 d!1727548))

(declare-fun bs!1250344 () Bool)

(declare-fun d!1727550 () Bool)

(assert (= bs!1250344 (and d!1727550 b!5412256)))

(declare-fun lambda!282841 () Int)

(assert (=> bs!1250344 (= lambda!282841 lambda!282736)))

(declare-fun bs!1250345 () Bool)

(assert (= bs!1250345 (and d!1727550 d!1727428)))

(assert (=> bs!1250345 (= lambda!282841 lambda!282801)))

(declare-fun bs!1250346 () Bool)

(assert (= bs!1250346 (and d!1727550 d!1727434)))

(assert (=> bs!1250346 (= lambda!282841 lambda!282804)))

(declare-fun bs!1250347 () Bool)

(assert (= bs!1250347 (and d!1727550 d!1727540)))

(assert (=> bs!1250347 (= lambda!282841 lambda!282836)))

(assert (=> d!1727550 (= (inv!81229 (h!68204 zl!343)) (forall!14539 (exprs!5077 (h!68204 zl!343)) lambda!282841))))

(declare-fun bs!1250348 () Bool)

(assert (= bs!1250348 d!1727550))

(declare-fun m!6437384 () Bool)

(assert (=> bs!1250348 m!6437384))

(assert (=> b!5412269 d!1727550))

(declare-fun b!5413303 () Bool)

(declare-fun e!3355534 () Bool)

(declare-fun e!3355537 () Bool)

(assert (=> b!5413303 (= e!3355534 e!3355537)))

(declare-fun res!2302492 () Bool)

(assert (=> b!5413303 (=> (not res!2302492) (not e!3355537))))

(declare-fun call!387393 () Bool)

(assert (=> b!5413303 (= res!2302492 call!387393)))

(declare-fun b!5413304 () Bool)

(declare-fun call!387391 () Bool)

(assert (=> b!5413304 (= e!3355537 call!387391)))

(declare-fun b!5413305 () Bool)

(declare-fun e!3355535 () Bool)

(assert (=> b!5413305 (= e!3355535 call!387391)))

(declare-fun c!943841 () Bool)

(declare-fun bm!387386 () Bool)

(declare-fun call!387392 () Bool)

(declare-fun c!943840 () Bool)

(assert (=> bm!387386 (= call!387392 (validRegex!6929 (ite c!943841 (reg!15522 lt!2207337) (ite c!943840 (regTwo!30899 lt!2207337) (regTwo!30898 lt!2207337)))))))

(declare-fun b!5413306 () Bool)

(declare-fun e!3355538 () Bool)

(declare-fun e!3355540 () Bool)

(assert (=> b!5413306 (= e!3355538 e!3355540)))

(assert (=> b!5413306 (= c!943841 ((_ is Star!15193) lt!2207337))))

(declare-fun bm!387387 () Bool)

(assert (=> bm!387387 (= call!387393 (validRegex!6929 (ite c!943840 (regOne!30899 lt!2207337) (regOne!30898 lt!2207337))))))

(declare-fun b!5413307 () Bool)

(declare-fun e!3355536 () Bool)

(assert (=> b!5413307 (= e!3355540 e!3355536)))

(declare-fun res!2302494 () Bool)

(assert (=> b!5413307 (= res!2302494 (not (nullable!5362 (reg!15522 lt!2207337))))))

(assert (=> b!5413307 (=> (not res!2302494) (not e!3355536))))

(declare-fun b!5413308 () Bool)

(declare-fun res!2302491 () Bool)

(assert (=> b!5413308 (=> res!2302491 e!3355534)))

(assert (=> b!5413308 (= res!2302491 (not ((_ is Concat!24038) lt!2207337)))))

(declare-fun e!3355539 () Bool)

(assert (=> b!5413308 (= e!3355539 e!3355534)))

(declare-fun bm!387388 () Bool)

(assert (=> bm!387388 (= call!387391 call!387392)))

(declare-fun b!5413310 () Bool)

(assert (=> b!5413310 (= e!3355540 e!3355539)))

(assert (=> b!5413310 (= c!943840 ((_ is Union!15193) lt!2207337))))

(declare-fun b!5413311 () Bool)

(declare-fun res!2302493 () Bool)

(assert (=> b!5413311 (=> (not res!2302493) (not e!3355535))))

(assert (=> b!5413311 (= res!2302493 call!387393)))

(assert (=> b!5413311 (= e!3355539 e!3355535)))

(declare-fun d!1727552 () Bool)

(declare-fun res!2302495 () Bool)

(assert (=> d!1727552 (=> res!2302495 e!3355538)))

(assert (=> d!1727552 (= res!2302495 ((_ is ElementMatch!15193) lt!2207337))))

(assert (=> d!1727552 (= (validRegex!6929 lt!2207337) e!3355538)))

(declare-fun b!5413309 () Bool)

(assert (=> b!5413309 (= e!3355536 call!387392)))

(assert (= (and d!1727552 (not res!2302495)) b!5413306))

(assert (= (and b!5413306 c!943841) b!5413307))

(assert (= (and b!5413306 (not c!943841)) b!5413310))

(assert (= (and b!5413307 res!2302494) b!5413309))

(assert (= (and b!5413310 c!943840) b!5413311))

(assert (= (and b!5413310 (not c!943840)) b!5413308))

(assert (= (and b!5413311 res!2302493) b!5413305))

(assert (= (and b!5413308 (not res!2302491)) b!5413303))

(assert (= (and b!5413303 res!2302492) b!5413304))

(assert (= (or b!5413305 b!5413304) bm!387388))

(assert (= (or b!5413311 b!5413303) bm!387387))

(assert (= (or b!5413309 bm!387388) bm!387386))

(declare-fun m!6437386 () Bool)

(assert (=> bm!387386 m!6437386))

(declare-fun m!6437388 () Bool)

(assert (=> bm!387387 m!6437388))

(declare-fun m!6437390 () Bool)

(assert (=> b!5413307 m!6437390))

(assert (=> b!5412248 d!1727552))

(declare-fun bs!1250349 () Bool)

(declare-fun d!1727554 () Bool)

(assert (= bs!1250349 (and d!1727554 b!5412256)))

(declare-fun lambda!282842 () Int)

(assert (=> bs!1250349 (= lambda!282842 lambda!282736)))

(declare-fun bs!1250350 () Bool)

(assert (= bs!1250350 (and d!1727554 d!1727434)))

(assert (=> bs!1250350 (= lambda!282842 lambda!282804)))

(declare-fun bs!1250351 () Bool)

(assert (= bs!1250351 (and d!1727554 d!1727550)))

(assert (=> bs!1250351 (= lambda!282842 lambda!282841)))

(declare-fun bs!1250352 () Bool)

(assert (= bs!1250352 (and d!1727554 d!1727540)))

(assert (=> bs!1250352 (= lambda!282842 lambda!282836)))

(declare-fun bs!1250353 () Bool)

(assert (= bs!1250353 (and d!1727554 d!1727428)))

(assert (=> bs!1250353 (= lambda!282842 lambda!282801)))

(assert (=> d!1727554 (= (inv!81229 setElem!35261) (forall!14539 (exprs!5077 setElem!35261) lambda!282842))))

(declare-fun bs!1250354 () Bool)

(assert (= bs!1250354 d!1727554))

(declare-fun m!6437392 () Bool)

(assert (=> bs!1250354 m!6437392))

(assert (=> setNonEmpty!35261 d!1727554))

(declare-fun b!5413312 () Bool)

(declare-fun res!2302497 () Bool)

(declare-fun e!3355547 () Bool)

(assert (=> b!5413312 (=> res!2302497 e!3355547)))

(assert (=> b!5413312 (= res!2302497 (not ((_ is ElementMatch!15193) (reg!15522 (regOne!30898 r!7292)))))))

(declare-fun e!3355542 () Bool)

(assert (=> b!5413312 (= e!3355542 e!3355547)))

(declare-fun d!1727556 () Bool)

(declare-fun e!3355543 () Bool)

(assert (=> d!1727556 e!3355543))

(declare-fun c!943843 () Bool)

(assert (=> d!1727556 (= c!943843 ((_ is EmptyExpr!15193) (reg!15522 (regOne!30898 r!7292))))))

(declare-fun lt!2207553 () Bool)

(declare-fun e!3355541 () Bool)

(assert (=> d!1727556 (= lt!2207553 e!3355541)))

(declare-fun c!943844 () Bool)

(assert (=> d!1727556 (= c!943844 (isEmpty!33749 (_1!35695 lt!2207343)))))

(assert (=> d!1727556 (validRegex!6929 (reg!15522 (regOne!30898 r!7292)))))

(assert (=> d!1727556 (= (matchR!7378 (reg!15522 (regOne!30898 r!7292)) (_1!35695 lt!2207343)) lt!2207553)))

(declare-fun bm!387389 () Bool)

(declare-fun call!387394 () Bool)

(assert (=> bm!387389 (= call!387394 (isEmpty!33749 (_1!35695 lt!2207343)))))

(declare-fun b!5413313 () Bool)

(assert (=> b!5413313 (= e!3355541 (matchR!7378 (derivativeStep!4267 (reg!15522 (regOne!30898 r!7292)) (head!11608 (_1!35695 lt!2207343))) (tail!10705 (_1!35695 lt!2207343))))))

(declare-fun b!5413314 () Bool)

(assert (=> b!5413314 (= e!3355543 e!3355542)))

(declare-fun c!943842 () Bool)

(assert (=> b!5413314 (= c!943842 ((_ is EmptyLang!15193) (reg!15522 (regOne!30898 r!7292))))))

(declare-fun b!5413315 () Bool)

(assert (=> b!5413315 (= e!3355543 (= lt!2207553 call!387394))))

(declare-fun b!5413316 () Bool)

(declare-fun res!2302503 () Bool)

(declare-fun e!3355546 () Bool)

(assert (=> b!5413316 (=> res!2302503 e!3355546)))

(assert (=> b!5413316 (= res!2302503 (not (isEmpty!33749 (tail!10705 (_1!35695 lt!2207343)))))))

(declare-fun b!5413317 () Bool)

(assert (=> b!5413317 (= e!3355541 (nullable!5362 (reg!15522 (regOne!30898 r!7292))))))

(declare-fun b!5413318 () Bool)

(declare-fun res!2302499 () Bool)

(assert (=> b!5413318 (=> res!2302499 e!3355547)))

(declare-fun e!3355545 () Bool)

(assert (=> b!5413318 (= res!2302499 e!3355545)))

(declare-fun res!2302498 () Bool)

(assert (=> b!5413318 (=> (not res!2302498) (not e!3355545))))

(assert (=> b!5413318 (= res!2302498 lt!2207553)))

(declare-fun b!5413319 () Bool)

(declare-fun res!2302502 () Bool)

(assert (=> b!5413319 (=> (not res!2302502) (not e!3355545))))

(assert (=> b!5413319 (= res!2302502 (isEmpty!33749 (tail!10705 (_1!35695 lt!2207343))))))

(declare-fun b!5413320 () Bool)

(declare-fun e!3355544 () Bool)

(assert (=> b!5413320 (= e!3355544 e!3355546)))

(declare-fun res!2302496 () Bool)

(assert (=> b!5413320 (=> res!2302496 e!3355546)))

(assert (=> b!5413320 (= res!2302496 call!387394)))

(declare-fun b!5413321 () Bool)

(assert (=> b!5413321 (= e!3355547 e!3355544)))

(declare-fun res!2302501 () Bool)

(assert (=> b!5413321 (=> (not res!2302501) (not e!3355544))))

(assert (=> b!5413321 (= res!2302501 (not lt!2207553))))

(declare-fun b!5413322 () Bool)

(assert (=> b!5413322 (= e!3355545 (= (head!11608 (_1!35695 lt!2207343)) (c!943557 (reg!15522 (regOne!30898 r!7292)))))))

(declare-fun b!5413323 () Bool)

(declare-fun res!2302500 () Bool)

(assert (=> b!5413323 (=> (not res!2302500) (not e!3355545))))

(assert (=> b!5413323 (= res!2302500 (not call!387394))))

(declare-fun b!5413324 () Bool)

(assert (=> b!5413324 (= e!3355546 (not (= (head!11608 (_1!35695 lt!2207343)) (c!943557 (reg!15522 (regOne!30898 r!7292))))))))

(declare-fun b!5413325 () Bool)

(assert (=> b!5413325 (= e!3355542 (not lt!2207553))))

(assert (= (and d!1727556 c!943844) b!5413317))

(assert (= (and d!1727556 (not c!943844)) b!5413313))

(assert (= (and d!1727556 c!943843) b!5413315))

(assert (= (and d!1727556 (not c!943843)) b!5413314))

(assert (= (and b!5413314 c!943842) b!5413325))

(assert (= (and b!5413314 (not c!943842)) b!5413312))

(assert (= (and b!5413312 (not res!2302497)) b!5413318))

(assert (= (and b!5413318 res!2302498) b!5413323))

(assert (= (and b!5413323 res!2302500) b!5413319))

(assert (= (and b!5413319 res!2302502) b!5413322))

(assert (= (and b!5413318 (not res!2302499)) b!5413321))

(assert (= (and b!5413321 res!2302501) b!5413320))

(assert (= (and b!5413320 (not res!2302496)) b!5413316))

(assert (= (and b!5413316 (not res!2302503)) b!5413324))

(assert (= (or b!5413315 b!5413320 b!5413323) bm!387389))

(assert (=> b!5413319 m!6437380))

(assert (=> b!5413319 m!6437380))

(declare-fun m!6437394 () Bool)

(assert (=> b!5413319 m!6437394))

(assert (=> b!5413316 m!6437380))

(assert (=> b!5413316 m!6437380))

(assert (=> b!5413316 m!6437394))

(assert (=> b!5413313 m!6437376))

(assert (=> b!5413313 m!6437376))

(declare-fun m!6437396 () Bool)

(assert (=> b!5413313 m!6437396))

(assert (=> b!5413313 m!6437380))

(assert (=> b!5413313 m!6437396))

(assert (=> b!5413313 m!6437380))

(declare-fun m!6437398 () Bool)

(assert (=> b!5413313 m!6437398))

(declare-fun m!6437400 () Bool)

(assert (=> b!5413317 m!6437400))

(assert (=> d!1727556 m!6437372))

(assert (=> d!1727556 m!6436306))

(assert (=> b!5413322 m!6437376))

(assert (=> bm!387389 m!6437372))

(assert (=> b!5413324 m!6437376))

(assert (=> b!5412247 d!1727556))

(declare-fun bs!1250355 () Bool)

(declare-fun b!5413332 () Bool)

(assert (= bs!1250355 (and b!5413332 d!1727530)))

(declare-fun lambda!282843 () Int)

(assert (=> bs!1250355 (not (= lambda!282843 lambda!282826))))

(declare-fun bs!1250356 () Bool)

(assert (= bs!1250356 (and b!5413332 d!1727332)))

(assert (=> bs!1250356 (not (= lambda!282843 lambda!282786))))

(declare-fun bs!1250357 () Bool)

(assert (= bs!1250357 (and b!5413332 b!5413254)))

(assert (=> bs!1250357 (= (and (= (reg!15522 lt!2207325) (reg!15522 r!7292)) (= lt!2207325 r!7292)) (= lambda!282843 lambda!282837))))

(declare-fun bs!1250358 () Bool)

(assert (= bs!1250358 (and b!5413332 b!5412247)))

(assert (=> bs!1250358 (not (= lambda!282843 lambda!282737))))

(assert (=> bs!1250356 (not (= lambda!282843 lambda!282785))))

(declare-fun bs!1250359 () Bool)

(assert (= bs!1250359 (and b!5413332 b!5412241)))

(assert (=> bs!1250359 (not (= lambda!282843 lambda!282733))))

(declare-fun bs!1250360 () Bool)

(assert (= bs!1250360 (and b!5413332 b!5413203)))

(assert (=> bs!1250360 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (reg!15522 lt!2207325) (reg!15522 lt!2207321)) (= lt!2207325 lt!2207321)) (= lambda!282843 lambda!282824))))

(declare-fun bs!1250361 () Bool)

(assert (= bs!1250361 (and b!5413332 d!1727518)))

(assert (=> bs!1250361 (not (= lambda!282843 lambda!282819))))

(declare-fun bs!1250362 () Bool)

(assert (= bs!1250362 (and b!5413332 b!5412274)))

(assert (=> bs!1250362 (not (= lambda!282843 lambda!282740))))

(assert (=> bs!1250362 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (reg!15522 lt!2207325) (reg!15522 (regOne!30898 r!7292))) (= lt!2207325 lt!2207337)) (= lambda!282843 lambda!282741))))

(declare-fun bs!1250363 () Bool)

(assert (= bs!1250363 (and b!5413332 d!1727532)))

(assert (=> bs!1250363 (not (= lambda!282843 lambda!282832))))

(assert (=> bs!1250359 (not (= lambda!282843 lambda!282732))))

(assert (=> bs!1250362 (not (= lambda!282843 lambda!282739))))

(declare-fun bs!1250364 () Bool)

(assert (= bs!1250364 (and b!5413332 d!1727326)))

(assert (=> bs!1250364 (not (= lambda!282843 lambda!282779))))

(assert (=> bs!1250358 (not (= lambda!282843 lambda!282738))))

(declare-fun bs!1250365 () Bool)

(assert (= bs!1250365 (and b!5413332 b!5413251)))

(assert (=> bs!1250365 (not (= lambda!282843 lambda!282838))))

(assert (=> bs!1250363 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (reg!15522 lt!2207325) (reg!15522 (regOne!30898 r!7292))) (= lt!2207325 (Star!15193 (reg!15522 (regOne!30898 r!7292))))) (= lambda!282843 lambda!282833))))

(assert (=> bs!1250355 (not (= lambda!282843 lambda!282827))))

(declare-fun bs!1250366 () Bool)

(assert (= bs!1250366 (and b!5413332 b!5413200)))

(assert (=> bs!1250366 (not (= lambda!282843 lambda!282825))))

(assert (=> b!5413332 true))

(assert (=> b!5413332 true))

(declare-fun bs!1250367 () Bool)

(declare-fun b!5413329 () Bool)

(assert (= bs!1250367 (and b!5413329 d!1727530)))

(declare-fun lambda!282844 () Int)

(assert (=> bs!1250367 (not (= lambda!282844 lambda!282826))))

(declare-fun bs!1250368 () Bool)

(assert (= bs!1250368 (and b!5413329 d!1727332)))

(assert (=> bs!1250368 (= (and (= (regOne!30898 lt!2207325) (regOne!30898 r!7292)) (= (regTwo!30898 lt!2207325) (regTwo!30898 r!7292))) (= lambda!282844 lambda!282786))))

(declare-fun bs!1250369 () Bool)

(assert (= bs!1250369 (and b!5413329 b!5413254)))

(assert (=> bs!1250369 (not (= lambda!282844 lambda!282837))))

(declare-fun bs!1250370 () Bool)

(assert (= bs!1250370 (and b!5413329 b!5412247)))

(assert (=> bs!1250370 (not (= lambda!282844 lambda!282737))))

(assert (=> bs!1250368 (not (= lambda!282844 lambda!282785))))

(declare-fun bs!1250371 () Bool)

(assert (= bs!1250371 (and b!5413329 b!5412241)))

(assert (=> bs!1250371 (= (and (= (regOne!30898 lt!2207325) (regOne!30898 r!7292)) (= (regTwo!30898 lt!2207325) (regTwo!30898 r!7292))) (= lambda!282844 lambda!282733))))

(declare-fun bs!1250372 () Bool)

(assert (= bs!1250372 (and b!5413329 b!5413203)))

(assert (=> bs!1250372 (not (= lambda!282844 lambda!282824))))

(declare-fun bs!1250373 () Bool)

(assert (= bs!1250373 (and b!5413329 d!1727518)))

(assert (=> bs!1250373 (not (= lambda!282844 lambda!282819))))

(declare-fun bs!1250374 () Bool)

(assert (= bs!1250374 (and b!5413329 b!5413332)))

(assert (=> bs!1250374 (not (= lambda!282844 lambda!282843))))

(declare-fun bs!1250375 () Bool)

(assert (= bs!1250375 (and b!5413329 b!5412274)))

(assert (=> bs!1250375 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (regOne!30898 lt!2207325) (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 lt!2207325) lt!2207337)) (= lambda!282844 lambda!282740))))

(assert (=> bs!1250375 (not (= lambda!282844 lambda!282741))))

(declare-fun bs!1250376 () Bool)

(assert (= bs!1250376 (and b!5413329 d!1727532)))

(assert (=> bs!1250376 (not (= lambda!282844 lambda!282832))))

(assert (=> bs!1250371 (not (= lambda!282844 lambda!282732))))

(assert (=> bs!1250375 (not (= lambda!282844 lambda!282739))))

(declare-fun bs!1250377 () Bool)

(assert (= bs!1250377 (and b!5413329 d!1727326)))

(assert (=> bs!1250377 (not (= lambda!282844 lambda!282779))))

(assert (=> bs!1250370 (= (and (= (regOne!30898 lt!2207325) lt!2207321) (= (regTwo!30898 lt!2207325) (regTwo!30898 r!7292))) (= lambda!282844 lambda!282738))))

(declare-fun bs!1250378 () Bool)

(assert (= bs!1250378 (and b!5413329 b!5413251)))

(assert (=> bs!1250378 (= (and (= (regOne!30898 lt!2207325) (regOne!30898 r!7292)) (= (regTwo!30898 lt!2207325) (regTwo!30898 r!7292))) (= lambda!282844 lambda!282838))))

(assert (=> bs!1250376 (not (= lambda!282844 lambda!282833))))

(assert (=> bs!1250367 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (regOne!30898 lt!2207325) (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 lt!2207325) lt!2207337)) (= lambda!282844 lambda!282827))))

(declare-fun bs!1250379 () Bool)

(assert (= bs!1250379 (and b!5413329 b!5413200)))

(assert (=> bs!1250379 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (regOne!30898 lt!2207325) (regOne!30898 lt!2207321)) (= (regTwo!30898 lt!2207325) (regTwo!30898 lt!2207321))) (= lambda!282844 lambda!282825))))

(assert (=> b!5413329 true))

(assert (=> b!5413329 true))

(declare-fun b!5413326 () Bool)

(declare-fun e!3355549 () Bool)

(declare-fun e!3355551 () Bool)

(assert (=> b!5413326 (= e!3355549 e!3355551)))

(declare-fun res!2302505 () Bool)

(assert (=> b!5413326 (= res!2302505 (not ((_ is EmptyLang!15193) lt!2207325)))))

(assert (=> b!5413326 (=> (not res!2302505) (not e!3355551))))

(declare-fun b!5413327 () Bool)

(declare-fun c!943846 () Bool)

(assert (=> b!5413327 (= c!943846 ((_ is Union!15193) lt!2207325))))

(declare-fun e!3355553 () Bool)

(declare-fun e!3355548 () Bool)

(assert (=> b!5413327 (= e!3355553 e!3355548)))

(declare-fun b!5413328 () Bool)

(declare-fun e!3355554 () Bool)

(assert (=> b!5413328 (= e!3355548 e!3355554)))

(declare-fun res!2302506 () Bool)

(assert (=> b!5413328 (= res!2302506 (matchRSpec!2296 (regOne!30899 lt!2207325) s!2326))))

(assert (=> b!5413328 (=> res!2302506 e!3355554)))

(declare-fun call!387396 () Bool)

(declare-fun c!943845 () Bool)

(declare-fun bm!387390 () Bool)

(assert (=> bm!387390 (= call!387396 (Exists!2374 (ite c!943845 lambda!282843 lambda!282844)))))

(declare-fun e!3355552 () Bool)

(assert (=> b!5413329 (= e!3355552 call!387396)))

(declare-fun b!5413330 () Bool)

(assert (=> b!5413330 (= e!3355553 (= s!2326 (Cons!61754 (c!943557 lt!2207325) Nil!61754)))))

(declare-fun b!5413331 () Bool)

(assert (=> b!5413331 (= e!3355554 (matchRSpec!2296 (regTwo!30899 lt!2207325) s!2326))))

(declare-fun e!3355550 () Bool)

(assert (=> b!5413332 (= e!3355550 call!387396)))

(declare-fun b!5413333 () Bool)

(declare-fun c!943847 () Bool)

(assert (=> b!5413333 (= c!943847 ((_ is ElementMatch!15193) lt!2207325))))

(assert (=> b!5413333 (= e!3355551 e!3355553)))

(declare-fun bm!387391 () Bool)

(declare-fun call!387395 () Bool)

(assert (=> bm!387391 (= call!387395 (isEmpty!33749 s!2326))))

(declare-fun b!5413334 () Bool)

(assert (=> b!5413334 (= e!3355549 call!387395)))

(declare-fun d!1727558 () Bool)

(declare-fun c!943848 () Bool)

(assert (=> d!1727558 (= c!943848 ((_ is EmptyExpr!15193) lt!2207325))))

(assert (=> d!1727558 (= (matchRSpec!2296 lt!2207325 s!2326) e!3355549)))

(declare-fun b!5413335 () Bool)

(assert (=> b!5413335 (= e!3355548 e!3355552)))

(assert (=> b!5413335 (= c!943845 ((_ is Star!15193) lt!2207325))))

(declare-fun b!5413336 () Bool)

(declare-fun res!2302504 () Bool)

(assert (=> b!5413336 (=> res!2302504 e!3355550)))

(assert (=> b!5413336 (= res!2302504 call!387395)))

(assert (=> b!5413336 (= e!3355552 e!3355550)))

(assert (= (and d!1727558 c!943848) b!5413334))

(assert (= (and d!1727558 (not c!943848)) b!5413326))

(assert (= (and b!5413326 res!2302505) b!5413333))

(assert (= (and b!5413333 c!943847) b!5413330))

(assert (= (and b!5413333 (not c!943847)) b!5413327))

(assert (= (and b!5413327 c!943846) b!5413328))

(assert (= (and b!5413327 (not c!943846)) b!5413335))

(assert (= (and b!5413328 (not res!2302506)) b!5413331))

(assert (= (and b!5413335 c!943845) b!5413336))

(assert (= (and b!5413335 (not c!943845)) b!5413329))

(assert (= (and b!5413336 (not res!2302504)) b!5413332))

(assert (= (or b!5413332 b!5413329) bm!387390))

(assert (= (or b!5413334 b!5413336) bm!387391))

(declare-fun m!6437402 () Bool)

(assert (=> b!5413328 m!6437402))

(declare-fun m!6437404 () Bool)

(assert (=> bm!387390 m!6437404))

(declare-fun m!6437406 () Bool)

(assert (=> b!5413331 m!6437406))

(assert (=> bm!387391 m!6437160))

(assert (=> b!5412247 d!1727558))

(declare-fun d!1727560 () Bool)

(assert (=> d!1727560 (= (matchR!7378 lt!2207325 s!2326) (matchRSpec!2296 lt!2207325 s!2326))))

(declare-fun lt!2207554 () Unit!154294)

(assert (=> d!1727560 (= lt!2207554 (choose!40908 lt!2207325 s!2326))))

(assert (=> d!1727560 (validRegex!6929 lt!2207325)))

(assert (=> d!1727560 (= (mainMatchTheorem!2296 lt!2207325 s!2326) lt!2207554)))

(declare-fun bs!1250380 () Bool)

(assert (= bs!1250380 d!1727560))

(assert (=> bs!1250380 m!6436258))

(assert (=> bs!1250380 m!6436226))

(declare-fun m!6437408 () Bool)

(assert (=> bs!1250380 m!6437408))

(declare-fun m!6437410 () Bool)

(assert (=> bs!1250380 m!6437410))

(assert (=> b!5412247 d!1727560))

(declare-fun d!1727562 () Bool)

(assert (=> d!1727562 (= (isDefined!12007 lt!2207351) (not (isEmpty!33748 lt!2207351)))))

(declare-fun bs!1250381 () Bool)

(assert (= bs!1250381 d!1727562))

(declare-fun m!6437412 () Bool)

(assert (=> bs!1250381 m!6437412))

(assert (=> b!5412247 d!1727562))

(declare-fun bs!1250382 () Bool)

(declare-fun d!1727564 () Bool)

(assert (= bs!1250382 (and d!1727564 b!5412256)))

(declare-fun lambda!282847 () Int)

(assert (=> bs!1250382 (= lambda!282847 lambda!282736)))

(declare-fun bs!1250383 () Bool)

(assert (= bs!1250383 (and d!1727564 d!1727434)))

(assert (=> bs!1250383 (= lambda!282847 lambda!282804)))

(declare-fun bs!1250384 () Bool)

(assert (= bs!1250384 (and d!1727564 d!1727550)))

(assert (=> bs!1250384 (= lambda!282847 lambda!282841)))

(declare-fun bs!1250385 () Bool)

(assert (= bs!1250385 (and d!1727564 d!1727540)))

(assert (=> bs!1250385 (= lambda!282847 lambda!282836)))

(declare-fun bs!1250386 () Bool)

(assert (= bs!1250386 (and d!1727564 d!1727554)))

(assert (=> bs!1250386 (= lambda!282847 lambda!282842)))

(declare-fun bs!1250387 () Bool)

(assert (= bs!1250387 (and d!1727564 d!1727428)))

(assert (=> bs!1250387 (= lambda!282847 lambda!282801)))

(assert (=> d!1727564 (matchZipper!1437 (store ((as const (Array Context!9154 Bool)) false) (Context!9155 (++!13560 (exprs!5077 lt!2207317) (exprs!5077 lt!2207302))) true) (++!13559 (_1!35695 lt!2207343) (_2!35695 lt!2207343)))))

(declare-fun lt!2207560 () Unit!154294)

(assert (=> d!1727564 (= lt!2207560 (lemmaConcatPreservesForall!218 (exprs!5077 lt!2207317) (exprs!5077 lt!2207302) lambda!282847))))

(declare-fun lt!2207559 () Unit!154294)

(declare-fun choose!40910 (Context!9154 Context!9154 List!61878 List!61878) Unit!154294)

(assert (=> d!1727564 (= lt!2207559 (choose!40910 lt!2207317 lt!2207302 (_1!35695 lt!2207343) (_2!35695 lt!2207343)))))

(assert (=> d!1727564 (matchZipper!1437 (store ((as const (Array Context!9154 Bool)) false) lt!2207317 true) (_1!35695 lt!2207343))))

(assert (=> d!1727564 (= (lemmaConcatenateContextMatchesConcatOfStrings!66 lt!2207317 lt!2207302 (_1!35695 lt!2207343) (_2!35695 lt!2207343)) lt!2207559)))

(declare-fun bs!1250388 () Bool)

(assert (= bs!1250388 d!1727564))

(assert (=> bs!1250388 m!6436384))

(declare-fun m!6437414 () Bool)

(assert (=> bs!1250388 m!6437414))

(declare-fun m!6437416 () Bool)

(assert (=> bs!1250388 m!6437416))

(assert (=> bs!1250388 m!6436372))

(assert (=> bs!1250388 m!6436372))

(declare-fun m!6437418 () Bool)

(assert (=> bs!1250388 m!6437418))

(declare-fun m!6437420 () Bool)

(assert (=> bs!1250388 m!6437420))

(assert (=> bs!1250388 m!6436384))

(declare-fun m!6437422 () Bool)

(assert (=> bs!1250388 m!6437422))

(assert (=> bs!1250388 m!6437420))

(declare-fun m!6437424 () Bool)

(assert (=> bs!1250388 m!6437424))

(assert (=> b!5412247 d!1727564))

(declare-fun d!1727566 () Bool)

(assert (=> d!1727566 (= (matchR!7378 (reg!15522 (regOne!30898 r!7292)) (_1!35695 lt!2207343)) (matchZipper!1437 lt!2207353 (_1!35695 lt!2207343)))))

(declare-fun lt!2207563 () Unit!154294)

(declare-fun choose!40911 ((InoxSet Context!9154) List!61880 Regex!15193 List!61878) Unit!154294)

(assert (=> d!1727566 (= lt!2207563 (choose!40911 lt!2207353 lt!2207358 (reg!15522 (regOne!30898 r!7292)) (_1!35695 lt!2207343)))))

(assert (=> d!1727566 (validRegex!6929 (reg!15522 (regOne!30898 r!7292)))))

(assert (=> d!1727566 (= (theoremZipperRegexEquiv!507 lt!2207353 lt!2207358 (reg!15522 (regOne!30898 r!7292)) (_1!35695 lt!2207343)) lt!2207563)))

(declare-fun bs!1250389 () Bool)

(assert (= bs!1250389 d!1727566))

(assert (=> bs!1250389 m!6436256))

(assert (=> bs!1250389 m!6436398))

(declare-fun m!6437426 () Bool)

(assert (=> bs!1250389 m!6437426))

(assert (=> bs!1250389 m!6436306))

(assert (=> b!5412247 d!1727566))

(declare-fun b!5413337 () Bool)

(declare-fun res!2302508 () Bool)

(declare-fun e!3355561 () Bool)

(assert (=> b!5413337 (=> res!2302508 e!3355561)))

(assert (=> b!5413337 (= res!2302508 (not ((_ is ElementMatch!15193) lt!2207321)))))

(declare-fun e!3355556 () Bool)

(assert (=> b!5413337 (= e!3355556 e!3355561)))

(declare-fun d!1727568 () Bool)

(declare-fun e!3355557 () Bool)

(assert (=> d!1727568 e!3355557))

(declare-fun c!943850 () Bool)

(assert (=> d!1727568 (= c!943850 ((_ is EmptyExpr!15193) lt!2207321))))

(declare-fun lt!2207564 () Bool)

(declare-fun e!3355555 () Bool)

(assert (=> d!1727568 (= lt!2207564 e!3355555)))

(declare-fun c!943851 () Bool)

(assert (=> d!1727568 (= c!943851 (isEmpty!33749 (_1!35695 lt!2207307)))))

(assert (=> d!1727568 (validRegex!6929 lt!2207321)))

(assert (=> d!1727568 (= (matchR!7378 lt!2207321 (_1!35695 lt!2207307)) lt!2207564)))

(declare-fun bm!387392 () Bool)

(declare-fun call!387397 () Bool)

(assert (=> bm!387392 (= call!387397 (isEmpty!33749 (_1!35695 lt!2207307)))))

(declare-fun b!5413338 () Bool)

(assert (=> b!5413338 (= e!3355555 (matchR!7378 (derivativeStep!4267 lt!2207321 (head!11608 (_1!35695 lt!2207307))) (tail!10705 (_1!35695 lt!2207307))))))

(declare-fun b!5413339 () Bool)

(assert (=> b!5413339 (= e!3355557 e!3355556)))

(declare-fun c!943849 () Bool)

(assert (=> b!5413339 (= c!943849 ((_ is EmptyLang!15193) lt!2207321))))

(declare-fun b!5413340 () Bool)

(assert (=> b!5413340 (= e!3355557 (= lt!2207564 call!387397))))

(declare-fun b!5413341 () Bool)

(declare-fun res!2302514 () Bool)

(declare-fun e!3355560 () Bool)

(assert (=> b!5413341 (=> res!2302514 e!3355560)))

(assert (=> b!5413341 (= res!2302514 (not (isEmpty!33749 (tail!10705 (_1!35695 lt!2207307)))))))

(declare-fun b!5413342 () Bool)

(assert (=> b!5413342 (= e!3355555 (nullable!5362 lt!2207321))))

(declare-fun b!5413343 () Bool)

(declare-fun res!2302510 () Bool)

(assert (=> b!5413343 (=> res!2302510 e!3355561)))

(declare-fun e!3355559 () Bool)

(assert (=> b!5413343 (= res!2302510 e!3355559)))

(declare-fun res!2302509 () Bool)

(assert (=> b!5413343 (=> (not res!2302509) (not e!3355559))))

(assert (=> b!5413343 (= res!2302509 lt!2207564)))

(declare-fun b!5413344 () Bool)

(declare-fun res!2302513 () Bool)

(assert (=> b!5413344 (=> (not res!2302513) (not e!3355559))))

(assert (=> b!5413344 (= res!2302513 (isEmpty!33749 (tail!10705 (_1!35695 lt!2207307))))))

(declare-fun b!5413345 () Bool)

(declare-fun e!3355558 () Bool)

(assert (=> b!5413345 (= e!3355558 e!3355560)))

(declare-fun res!2302507 () Bool)

(assert (=> b!5413345 (=> res!2302507 e!3355560)))

(assert (=> b!5413345 (= res!2302507 call!387397)))

(declare-fun b!5413346 () Bool)

(assert (=> b!5413346 (= e!3355561 e!3355558)))

(declare-fun res!2302512 () Bool)

(assert (=> b!5413346 (=> (not res!2302512) (not e!3355558))))

(assert (=> b!5413346 (= res!2302512 (not lt!2207564))))

(declare-fun b!5413347 () Bool)

(assert (=> b!5413347 (= e!3355559 (= (head!11608 (_1!35695 lt!2207307)) (c!943557 lt!2207321)))))

(declare-fun b!5413348 () Bool)

(declare-fun res!2302511 () Bool)

(assert (=> b!5413348 (=> (not res!2302511) (not e!3355559))))

(assert (=> b!5413348 (= res!2302511 (not call!387397))))

(declare-fun b!5413349 () Bool)

(assert (=> b!5413349 (= e!3355560 (not (= (head!11608 (_1!35695 lt!2207307)) (c!943557 lt!2207321))))))

(declare-fun b!5413350 () Bool)

(assert (=> b!5413350 (= e!3355556 (not lt!2207564))))

(assert (= (and d!1727568 c!943851) b!5413342))

(assert (= (and d!1727568 (not c!943851)) b!5413338))

(assert (= (and d!1727568 c!943850) b!5413340))

(assert (= (and d!1727568 (not c!943850)) b!5413339))

(assert (= (and b!5413339 c!943849) b!5413350))

(assert (= (and b!5413339 (not c!943849)) b!5413337))

(assert (= (and b!5413337 (not res!2302508)) b!5413343))

(assert (= (and b!5413343 res!2302509) b!5413348))

(assert (= (and b!5413348 res!2302511) b!5413344))

(assert (= (and b!5413344 res!2302513) b!5413347))

(assert (= (and b!5413343 (not res!2302510)) b!5413346))

(assert (= (and b!5413346 res!2302512) b!5413345))

(assert (= (and b!5413345 (not res!2302507)) b!5413341))

(assert (= (and b!5413341 (not res!2302514)) b!5413349))

(assert (= (or b!5413340 b!5413345 b!5413348) bm!387392))

(declare-fun m!6437428 () Bool)

(assert (=> b!5413344 m!6437428))

(assert (=> b!5413344 m!6437428))

(declare-fun m!6437430 () Bool)

(assert (=> b!5413344 m!6437430))

(assert (=> b!5413341 m!6437428))

(assert (=> b!5413341 m!6437428))

(assert (=> b!5413341 m!6437430))

(declare-fun m!6437432 () Bool)

(assert (=> b!5413338 m!6437432))

(assert (=> b!5413338 m!6437432))

(declare-fun m!6437434 () Bool)

(assert (=> b!5413338 m!6437434))

(assert (=> b!5413338 m!6437428))

(assert (=> b!5413338 m!6437434))

(assert (=> b!5413338 m!6437428))

(declare-fun m!6437436 () Bool)

(assert (=> b!5413338 m!6437436))

(declare-fun m!6437438 () Bool)

(assert (=> b!5413342 m!6437438))

(assert (=> d!1727568 m!6437308))

(assert (=> d!1727568 m!6437314))

(assert (=> b!5413347 m!6437432))

(assert (=> bm!387392 m!6437308))

(assert (=> b!5413349 m!6437432))

(assert (=> b!5412247 d!1727568))

(declare-fun bs!1250390 () Bool)

(declare-fun d!1727570 () Bool)

(assert (= bs!1250390 (and d!1727570 d!1727530)))

(declare-fun lambda!282848 () Int)

(assert (=> bs!1250390 (= (and (= s!2326 (_1!35695 lt!2207307)) (= lt!2207321 (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) lt!2207337)) (= lambda!282848 lambda!282826))))

(declare-fun bs!1250391 () Bool)

(assert (= bs!1250391 (and d!1727570 d!1727332)))

(assert (=> bs!1250391 (not (= lambda!282848 lambda!282786))))

(declare-fun bs!1250392 () Bool)

(assert (= bs!1250392 (and d!1727570 b!5413254)))

(assert (=> bs!1250392 (not (= lambda!282848 lambda!282837))))

(declare-fun bs!1250393 () Bool)

(assert (= bs!1250393 (and d!1727570 b!5412247)))

(assert (=> bs!1250393 (= lambda!282848 lambda!282737)))

(assert (=> bs!1250391 (= (= lt!2207321 (regOne!30898 r!7292)) (= lambda!282848 lambda!282785))))

(declare-fun bs!1250394 () Bool)

(assert (= bs!1250394 (and d!1727570 b!5412241)))

(assert (=> bs!1250394 (not (= lambda!282848 lambda!282733))))

(declare-fun bs!1250395 () Bool)

(assert (= bs!1250395 (and d!1727570 b!5413203)))

(assert (=> bs!1250395 (not (= lambda!282848 lambda!282824))))

(declare-fun bs!1250396 () Bool)

(assert (= bs!1250396 (and d!1727570 d!1727518)))

(assert (=> bs!1250396 (= (and (= s!2326 (_1!35695 lt!2207307)) (= lt!2207321 (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) lt!2207337)) (= lambda!282848 lambda!282819))))

(declare-fun bs!1250397 () Bool)

(assert (= bs!1250397 (and d!1727570 b!5412274)))

(assert (=> bs!1250397 (not (= lambda!282848 lambda!282740))))

(assert (=> bs!1250397 (not (= lambda!282848 lambda!282741))))

(declare-fun bs!1250398 () Bool)

(assert (= bs!1250398 (and d!1727570 d!1727532)))

(assert (=> bs!1250398 (= (and (= s!2326 (_1!35695 lt!2207307)) (= lt!2207321 (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) (Star!15193 (reg!15522 (regOne!30898 r!7292))))) (= lambda!282848 lambda!282832))))

(assert (=> bs!1250394 (= (= lt!2207321 (regOne!30898 r!7292)) (= lambda!282848 lambda!282732))))

(assert (=> bs!1250397 (= (and (= s!2326 (_1!35695 lt!2207307)) (= lt!2207321 (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) lt!2207337)) (= lambda!282848 lambda!282739))))

(declare-fun bs!1250399 () Bool)

(assert (= bs!1250399 (and d!1727570 d!1727326)))

(assert (=> bs!1250399 (= (= lt!2207321 (regOne!30898 r!7292)) (= lambda!282848 lambda!282779))))

(assert (=> bs!1250393 (not (= lambda!282848 lambda!282738))))

(declare-fun bs!1250400 () Bool)

(assert (= bs!1250400 (and d!1727570 b!5413329)))

(assert (=> bs!1250400 (not (= lambda!282848 lambda!282844))))

(declare-fun bs!1250401 () Bool)

(assert (= bs!1250401 (and d!1727570 b!5413332)))

(assert (=> bs!1250401 (not (= lambda!282848 lambda!282843))))

(declare-fun bs!1250402 () Bool)

(assert (= bs!1250402 (and d!1727570 b!5413251)))

(assert (=> bs!1250402 (not (= lambda!282848 lambda!282838))))

(assert (=> bs!1250398 (not (= lambda!282848 lambda!282833))))

(assert (=> bs!1250390 (not (= lambda!282848 lambda!282827))))

(declare-fun bs!1250403 () Bool)

(assert (= bs!1250403 (and d!1727570 b!5413200)))

(assert (=> bs!1250403 (not (= lambda!282848 lambda!282825))))

(assert (=> d!1727570 true))

(assert (=> d!1727570 true))

(assert (=> d!1727570 true))

(declare-fun lambda!282849 () Int)

(assert (=> bs!1250391 (= (= lt!2207321 (regOne!30898 r!7292)) (= lambda!282849 lambda!282786))))

(assert (=> bs!1250392 (not (= lambda!282849 lambda!282837))))

(assert (=> bs!1250393 (not (= lambda!282849 lambda!282737))))

(assert (=> bs!1250391 (not (= lambda!282849 lambda!282785))))

(assert (=> bs!1250394 (= (= lt!2207321 (regOne!30898 r!7292)) (= lambda!282849 lambda!282733))))

(assert (=> bs!1250395 (not (= lambda!282849 lambda!282824))))

(assert (=> bs!1250396 (not (= lambda!282849 lambda!282819))))

(assert (=> bs!1250397 (= (and (= s!2326 (_1!35695 lt!2207307)) (= lt!2207321 (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) lt!2207337)) (= lambda!282849 lambda!282740))))

(assert (=> bs!1250397 (not (= lambda!282849 lambda!282741))))

(assert (=> bs!1250398 (not (= lambda!282849 lambda!282832))))

(assert (=> bs!1250394 (not (= lambda!282849 lambda!282732))))

(assert (=> bs!1250397 (not (= lambda!282849 lambda!282739))))

(assert (=> bs!1250390 (not (= lambda!282849 lambda!282826))))

(declare-fun bs!1250404 () Bool)

(assert (= bs!1250404 d!1727570))

(assert (=> bs!1250404 (not (= lambda!282849 lambda!282848))))

(assert (=> bs!1250399 (not (= lambda!282849 lambda!282779))))

(assert (=> bs!1250393 (= lambda!282849 lambda!282738)))

(assert (=> bs!1250400 (= (and (= lt!2207321 (regOne!30898 lt!2207325)) (= (regTwo!30898 r!7292) (regTwo!30898 lt!2207325))) (= lambda!282849 lambda!282844))))

(assert (=> bs!1250401 (not (= lambda!282849 lambda!282843))))

(assert (=> bs!1250402 (= (= lt!2207321 (regOne!30898 r!7292)) (= lambda!282849 lambda!282838))))

(assert (=> bs!1250398 (not (= lambda!282849 lambda!282833))))

(assert (=> bs!1250390 (= (and (= s!2326 (_1!35695 lt!2207307)) (= lt!2207321 (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) lt!2207337)) (= lambda!282849 lambda!282827))))

(assert (=> bs!1250403 (= (and (= s!2326 (_1!35695 lt!2207307)) (= lt!2207321 (regOne!30898 lt!2207321)) (= (regTwo!30898 r!7292) (regTwo!30898 lt!2207321))) (= lambda!282849 lambda!282825))))

(assert (=> d!1727570 true))

(assert (=> d!1727570 true))

(assert (=> d!1727570 true))

(assert (=> d!1727570 (= (Exists!2374 lambda!282848) (Exists!2374 lambda!282849))))

(declare-fun lt!2207565 () Unit!154294)

(assert (=> d!1727570 (= lt!2207565 (choose!40894 lt!2207321 (regTwo!30898 r!7292) s!2326))))

(assert (=> d!1727570 (validRegex!6929 lt!2207321)))

(assert (=> d!1727570 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1028 lt!2207321 (regTwo!30898 r!7292) s!2326) lt!2207565)))

(declare-fun m!6437440 () Bool)

(assert (=> bs!1250404 m!6437440))

(declare-fun m!6437442 () Bool)

(assert (=> bs!1250404 m!6437442))

(declare-fun m!6437444 () Bool)

(assert (=> bs!1250404 m!6437444))

(assert (=> bs!1250404 m!6437314))

(assert (=> b!5412247 d!1727570))

(declare-fun d!1727572 () Bool)

(assert (=> d!1727572 (= (Exists!2374 lambda!282738) (choose!40891 lambda!282738))))

(declare-fun bs!1250405 () Bool)

(assert (= bs!1250405 d!1727572))

(declare-fun m!6437446 () Bool)

(assert (=> bs!1250405 m!6437446))

(assert (=> b!5412247 d!1727572))

(declare-fun d!1727574 () Bool)

(assert (=> d!1727574 (= (matchR!7378 lt!2207299 (_2!35695 lt!2207343)) (matchZipper!1437 lt!2207335 (_2!35695 lt!2207343)))))

(declare-fun lt!2207566 () Unit!154294)

(assert (=> d!1727574 (= lt!2207566 (choose!40911 lt!2207335 lt!2207322 lt!2207299 (_2!35695 lt!2207343)))))

(assert (=> d!1727574 (validRegex!6929 lt!2207299)))

(assert (=> d!1727574 (= (theoremZipperRegexEquiv!507 lt!2207335 lt!2207322 lt!2207299 (_2!35695 lt!2207343)) lt!2207566)))

(declare-fun bs!1250406 () Bool)

(assert (= bs!1250406 d!1727574))

(assert (=> bs!1250406 m!6436230))

(assert (=> bs!1250406 m!6436328))

(declare-fun m!6437448 () Bool)

(assert (=> bs!1250406 m!6437448))

(declare-fun m!6437450 () Bool)

(assert (=> bs!1250406 m!6437450))

(assert (=> b!5412247 d!1727574))

(declare-fun b!5413351 () Bool)

(declare-fun e!3355565 () Option!15304)

(declare-fun e!3355562 () Option!15304)

(assert (=> b!5413351 (= e!3355565 e!3355562)))

(declare-fun c!943853 () Bool)

(assert (=> b!5413351 (= c!943853 ((_ is Nil!61754) s!2326))))

(declare-fun b!5413352 () Bool)

(declare-fun lt!2207568 () Unit!154294)

(declare-fun lt!2207569 () Unit!154294)

(assert (=> b!5413352 (= lt!2207568 lt!2207569)))

(assert (=> b!5413352 (= (++!13559 (++!13559 Nil!61754 (Cons!61754 (h!68202 s!2326) Nil!61754)) (t!375101 s!2326)) s!2326)))

(assert (=> b!5413352 (= lt!2207569 (lemmaMoveElementToOtherListKeepsConcatEq!1841 Nil!61754 (h!68202 s!2326) (t!375101 s!2326) s!2326))))

(assert (=> b!5413352 (= e!3355562 (findConcatSeparation!1718 lt!2207321 (regTwo!30898 r!7292) (++!13559 Nil!61754 (Cons!61754 (h!68202 s!2326) Nil!61754)) (t!375101 s!2326) s!2326))))

(declare-fun b!5413353 () Bool)

(declare-fun e!3355563 () Bool)

(assert (=> b!5413353 (= e!3355563 (matchR!7378 (regTwo!30898 r!7292) s!2326))))

(declare-fun d!1727576 () Bool)

(declare-fun e!3355564 () Bool)

(assert (=> d!1727576 e!3355564))

(declare-fun res!2302519 () Bool)

(assert (=> d!1727576 (=> res!2302519 e!3355564)))

(declare-fun e!3355566 () Bool)

(assert (=> d!1727576 (= res!2302519 e!3355566)))

(declare-fun res!2302515 () Bool)

(assert (=> d!1727576 (=> (not res!2302515) (not e!3355566))))

(declare-fun lt!2207567 () Option!15304)

(assert (=> d!1727576 (= res!2302515 (isDefined!12007 lt!2207567))))

(assert (=> d!1727576 (= lt!2207567 e!3355565)))

(declare-fun c!943852 () Bool)

(assert (=> d!1727576 (= c!943852 e!3355563)))

(declare-fun res!2302518 () Bool)

(assert (=> d!1727576 (=> (not res!2302518) (not e!3355563))))

(assert (=> d!1727576 (= res!2302518 (matchR!7378 lt!2207321 Nil!61754))))

(assert (=> d!1727576 (validRegex!6929 lt!2207321)))

(assert (=> d!1727576 (= (findConcatSeparation!1718 lt!2207321 (regTwo!30898 r!7292) Nil!61754 s!2326 s!2326) lt!2207567)))

(declare-fun b!5413354 () Bool)

(assert (=> b!5413354 (= e!3355565 (Some!15303 (tuple2!64785 Nil!61754 s!2326)))))

(declare-fun b!5413355 () Bool)

(assert (=> b!5413355 (= e!3355566 (= (++!13559 (_1!35695 (get!21292 lt!2207567)) (_2!35695 (get!21292 lt!2207567))) s!2326))))

(declare-fun b!5413356 () Bool)

(declare-fun res!2302516 () Bool)

(assert (=> b!5413356 (=> (not res!2302516) (not e!3355566))))

(assert (=> b!5413356 (= res!2302516 (matchR!7378 lt!2207321 (_1!35695 (get!21292 lt!2207567))))))

(declare-fun b!5413357 () Bool)

(declare-fun res!2302517 () Bool)

(assert (=> b!5413357 (=> (not res!2302517) (not e!3355566))))

(assert (=> b!5413357 (= res!2302517 (matchR!7378 (regTwo!30898 r!7292) (_2!35695 (get!21292 lt!2207567))))))

(declare-fun b!5413358 () Bool)

(assert (=> b!5413358 (= e!3355562 None!15303)))

(declare-fun b!5413359 () Bool)

(assert (=> b!5413359 (= e!3355564 (not (isDefined!12007 lt!2207567)))))

(assert (= (and d!1727576 res!2302518) b!5413353))

(assert (= (and d!1727576 c!943852) b!5413354))

(assert (= (and d!1727576 (not c!943852)) b!5413351))

(assert (= (and b!5413351 c!943853) b!5413358))

(assert (= (and b!5413351 (not c!943853)) b!5413352))

(assert (= (and d!1727576 res!2302515) b!5413356))

(assert (= (and b!5413356 res!2302516) b!5413357))

(assert (= (and b!5413357 res!2302517) b!5413355))

(assert (= (and d!1727576 (not res!2302519)) b!5413359))

(declare-fun m!6437452 () Bool)

(assert (=> b!5413357 m!6437452))

(declare-fun m!6437454 () Bool)

(assert (=> b!5413357 m!6437454))

(assert (=> b!5413356 m!6437452))

(declare-fun m!6437456 () Bool)

(assert (=> b!5413356 m!6437456))

(assert (=> b!5413355 m!6437452))

(declare-fun m!6437458 () Bool)

(assert (=> b!5413355 m!6437458))

(assert (=> b!5413353 m!6436708))

(declare-fun m!6437460 () Bool)

(assert (=> b!5413359 m!6437460))

(assert (=> d!1727576 m!6437460))

(declare-fun m!6437462 () Bool)

(assert (=> d!1727576 m!6437462))

(assert (=> d!1727576 m!6437314))

(assert (=> b!5413352 m!6436716))

(assert (=> b!5413352 m!6436716))

(assert (=> b!5413352 m!6436718))

(assert (=> b!5413352 m!6436720))

(assert (=> b!5413352 m!6436716))

(declare-fun m!6437464 () Bool)

(assert (=> b!5413352 m!6437464))

(assert (=> b!5412247 d!1727576))

(declare-fun b!5413360 () Bool)

(declare-fun res!2302521 () Bool)

(declare-fun e!3355573 () Bool)

(assert (=> b!5413360 (=> res!2302521 e!3355573)))

(assert (=> b!5413360 (= res!2302521 (not ((_ is ElementMatch!15193) lt!2207325)))))

(declare-fun e!3355568 () Bool)

(assert (=> b!5413360 (= e!3355568 e!3355573)))

(declare-fun d!1727578 () Bool)

(declare-fun e!3355569 () Bool)

(assert (=> d!1727578 e!3355569))

(declare-fun c!943855 () Bool)

(assert (=> d!1727578 (= c!943855 ((_ is EmptyExpr!15193) lt!2207325))))

(declare-fun lt!2207570 () Bool)

(declare-fun e!3355567 () Bool)

(assert (=> d!1727578 (= lt!2207570 e!3355567)))

(declare-fun c!943856 () Bool)

(assert (=> d!1727578 (= c!943856 (isEmpty!33749 s!2326))))

(assert (=> d!1727578 (validRegex!6929 lt!2207325)))

(assert (=> d!1727578 (= (matchR!7378 lt!2207325 s!2326) lt!2207570)))

(declare-fun bm!387393 () Bool)

(declare-fun call!387398 () Bool)

(assert (=> bm!387393 (= call!387398 (isEmpty!33749 s!2326))))

(declare-fun b!5413361 () Bool)

(assert (=> b!5413361 (= e!3355567 (matchR!7378 (derivativeStep!4267 lt!2207325 (head!11608 s!2326)) (tail!10705 s!2326)))))

(declare-fun b!5413362 () Bool)

(assert (=> b!5413362 (= e!3355569 e!3355568)))

(declare-fun c!943854 () Bool)

(assert (=> b!5413362 (= c!943854 ((_ is EmptyLang!15193) lt!2207325))))

(declare-fun b!5413363 () Bool)

(assert (=> b!5413363 (= e!3355569 (= lt!2207570 call!387398))))

(declare-fun b!5413364 () Bool)

(declare-fun res!2302527 () Bool)

(declare-fun e!3355572 () Bool)

(assert (=> b!5413364 (=> res!2302527 e!3355572)))

(assert (=> b!5413364 (= res!2302527 (not (isEmpty!33749 (tail!10705 s!2326))))))

(declare-fun b!5413365 () Bool)

(assert (=> b!5413365 (= e!3355567 (nullable!5362 lt!2207325))))

(declare-fun b!5413366 () Bool)

(declare-fun res!2302523 () Bool)

(assert (=> b!5413366 (=> res!2302523 e!3355573)))

(declare-fun e!3355571 () Bool)

(assert (=> b!5413366 (= res!2302523 e!3355571)))

(declare-fun res!2302522 () Bool)

(assert (=> b!5413366 (=> (not res!2302522) (not e!3355571))))

(assert (=> b!5413366 (= res!2302522 lt!2207570)))

(declare-fun b!5413367 () Bool)

(declare-fun res!2302526 () Bool)

(assert (=> b!5413367 (=> (not res!2302526) (not e!3355571))))

(assert (=> b!5413367 (= res!2302526 (isEmpty!33749 (tail!10705 s!2326)))))

(declare-fun b!5413368 () Bool)

(declare-fun e!3355570 () Bool)

(assert (=> b!5413368 (= e!3355570 e!3355572)))

(declare-fun res!2302520 () Bool)

(assert (=> b!5413368 (=> res!2302520 e!3355572)))

(assert (=> b!5413368 (= res!2302520 call!387398)))

(declare-fun b!5413369 () Bool)

(assert (=> b!5413369 (= e!3355573 e!3355570)))

(declare-fun res!2302525 () Bool)

(assert (=> b!5413369 (=> (not res!2302525) (not e!3355570))))

(assert (=> b!5413369 (= res!2302525 (not lt!2207570))))

(declare-fun b!5413370 () Bool)

(assert (=> b!5413370 (= e!3355571 (= (head!11608 s!2326) (c!943557 lt!2207325)))))

(declare-fun b!5413371 () Bool)

(declare-fun res!2302524 () Bool)

(assert (=> b!5413371 (=> (not res!2302524) (not e!3355571))))

(assert (=> b!5413371 (= res!2302524 (not call!387398))))

(declare-fun b!5413372 () Bool)

(assert (=> b!5413372 (= e!3355572 (not (= (head!11608 s!2326) (c!943557 lt!2207325))))))

(declare-fun b!5413373 () Bool)

(assert (=> b!5413373 (= e!3355568 (not lt!2207570))))

(assert (= (and d!1727578 c!943856) b!5413365))

(assert (= (and d!1727578 (not c!943856)) b!5413361))

(assert (= (and d!1727578 c!943855) b!5413363))

(assert (= (and d!1727578 (not c!943855)) b!5413362))

(assert (= (and b!5413362 c!943854) b!5413373))

(assert (= (and b!5413362 (not c!943854)) b!5413360))

(assert (= (and b!5413360 (not res!2302521)) b!5413366))

(assert (= (and b!5413366 res!2302522) b!5413371))

(assert (= (and b!5413371 res!2302524) b!5413367))

(assert (= (and b!5413367 res!2302526) b!5413370))

(assert (= (and b!5413366 (not res!2302523)) b!5413369))

(assert (= (and b!5413369 res!2302525) b!5413368))

(assert (= (and b!5413368 (not res!2302520)) b!5413364))

(assert (= (and b!5413364 (not res!2302527)) b!5413372))

(assert (= (or b!5413363 b!5413368 b!5413371) bm!387393))

(assert (=> b!5413367 m!6437175))

(assert (=> b!5413367 m!6437175))

(assert (=> b!5413367 m!6437362))

(assert (=> b!5413364 m!6437175))

(assert (=> b!5413364 m!6437175))

(assert (=> b!5413364 m!6437362))

(assert (=> b!5413361 m!6437168))

(assert (=> b!5413361 m!6437168))

(declare-fun m!6437466 () Bool)

(assert (=> b!5413361 m!6437466))

(assert (=> b!5413361 m!6437175))

(assert (=> b!5413361 m!6437466))

(assert (=> b!5413361 m!6437175))

(declare-fun m!6437468 () Bool)

(assert (=> b!5413361 m!6437468))

(declare-fun m!6437470 () Bool)

(assert (=> b!5413365 m!6437470))

(assert (=> d!1727578 m!6437160))

(assert (=> d!1727578 m!6437410))

(assert (=> b!5413370 m!6437168))

(assert (=> bm!387393 m!6437160))

(assert (=> b!5413372 m!6437168))

(assert (=> b!5412247 d!1727578))

(declare-fun d!1727580 () Bool)

(assert (=> d!1727580 (matchR!7378 (Concat!24038 (reg!15522 (regOne!30898 r!7292)) lt!2207299) (++!13559 (_1!35695 lt!2207343) (_2!35695 lt!2207343)))))

(declare-fun lt!2207573 () Unit!154294)

(declare-fun choose!40912 (Regex!15193 Regex!15193 List!61878 List!61878) Unit!154294)

(assert (=> d!1727580 (= lt!2207573 (choose!40912 (reg!15522 (regOne!30898 r!7292)) lt!2207299 (_1!35695 lt!2207343) (_2!35695 lt!2207343)))))

(declare-fun e!3355576 () Bool)

(assert (=> d!1727580 e!3355576))

(declare-fun res!2302530 () Bool)

(assert (=> d!1727580 (=> (not res!2302530) (not e!3355576))))

(assert (=> d!1727580 (= res!2302530 (validRegex!6929 (reg!15522 (regOne!30898 r!7292))))))

(assert (=> d!1727580 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!216 (reg!15522 (regOne!30898 r!7292)) lt!2207299 (_1!35695 lt!2207343) (_2!35695 lt!2207343)) lt!2207573)))

(declare-fun b!5413376 () Bool)

(assert (=> b!5413376 (= e!3355576 (validRegex!6929 lt!2207299))))

(assert (= (and d!1727580 res!2302530) b!5413376))

(assert (=> d!1727580 m!6436384))

(assert (=> d!1727580 m!6436384))

(declare-fun m!6437472 () Bool)

(assert (=> d!1727580 m!6437472))

(declare-fun m!6437474 () Bool)

(assert (=> d!1727580 m!6437474))

(assert (=> d!1727580 m!6436306))

(assert (=> b!5413376 m!6437450))

(assert (=> b!5412247 d!1727580))

(declare-fun d!1727582 () Bool)

(assert (=> d!1727582 (= (Exists!2374 lambda!282737) (choose!40891 lambda!282737))))

(declare-fun bs!1250407 () Bool)

(assert (= bs!1250407 d!1727582))

(declare-fun m!6437476 () Bool)

(assert (=> bs!1250407 m!6437476))

(assert (=> b!5412247 d!1727582))

(declare-fun d!1727584 () Bool)

(assert (=> d!1727584 (= (get!21292 lt!2207351) (v!51332 lt!2207351))))

(assert (=> b!5412247 d!1727584))

(declare-fun b!5413377 () Bool)

(declare-fun res!2302532 () Bool)

(declare-fun e!3355583 () Bool)

(assert (=> b!5413377 (=> res!2302532 e!3355583)))

(assert (=> b!5413377 (= res!2302532 (not ((_ is ElementMatch!15193) lt!2207299)))))

(declare-fun e!3355578 () Bool)

(assert (=> b!5413377 (= e!3355578 e!3355583)))

(declare-fun d!1727586 () Bool)

(declare-fun e!3355579 () Bool)

(assert (=> d!1727586 e!3355579))

(declare-fun c!943858 () Bool)

(assert (=> d!1727586 (= c!943858 ((_ is EmptyExpr!15193) lt!2207299))))

(declare-fun lt!2207574 () Bool)

(declare-fun e!3355577 () Bool)

(assert (=> d!1727586 (= lt!2207574 e!3355577)))

(declare-fun c!943859 () Bool)

(assert (=> d!1727586 (= c!943859 (isEmpty!33749 (_2!35695 lt!2207343)))))

(assert (=> d!1727586 (validRegex!6929 lt!2207299)))

(assert (=> d!1727586 (= (matchR!7378 lt!2207299 (_2!35695 lt!2207343)) lt!2207574)))

(declare-fun bm!387394 () Bool)

(declare-fun call!387399 () Bool)

(assert (=> bm!387394 (= call!387399 (isEmpty!33749 (_2!35695 lt!2207343)))))

(declare-fun b!5413378 () Bool)

(assert (=> b!5413378 (= e!3355577 (matchR!7378 (derivativeStep!4267 lt!2207299 (head!11608 (_2!35695 lt!2207343))) (tail!10705 (_2!35695 lt!2207343))))))

(declare-fun b!5413379 () Bool)

(assert (=> b!5413379 (= e!3355579 e!3355578)))

(declare-fun c!943857 () Bool)

(assert (=> b!5413379 (= c!943857 ((_ is EmptyLang!15193) lt!2207299))))

(declare-fun b!5413380 () Bool)

(assert (=> b!5413380 (= e!3355579 (= lt!2207574 call!387399))))

(declare-fun b!5413381 () Bool)

(declare-fun res!2302538 () Bool)

(declare-fun e!3355582 () Bool)

(assert (=> b!5413381 (=> res!2302538 e!3355582)))

(assert (=> b!5413381 (= res!2302538 (not (isEmpty!33749 (tail!10705 (_2!35695 lt!2207343)))))))

(declare-fun b!5413382 () Bool)

(assert (=> b!5413382 (= e!3355577 (nullable!5362 lt!2207299))))

(declare-fun b!5413383 () Bool)

(declare-fun res!2302534 () Bool)

(assert (=> b!5413383 (=> res!2302534 e!3355583)))

(declare-fun e!3355581 () Bool)

(assert (=> b!5413383 (= res!2302534 e!3355581)))

(declare-fun res!2302533 () Bool)

(assert (=> b!5413383 (=> (not res!2302533) (not e!3355581))))

(assert (=> b!5413383 (= res!2302533 lt!2207574)))

(declare-fun b!5413384 () Bool)

(declare-fun res!2302537 () Bool)

(assert (=> b!5413384 (=> (not res!2302537) (not e!3355581))))

(assert (=> b!5413384 (= res!2302537 (isEmpty!33749 (tail!10705 (_2!35695 lt!2207343))))))

(declare-fun b!5413385 () Bool)

(declare-fun e!3355580 () Bool)

(assert (=> b!5413385 (= e!3355580 e!3355582)))

(declare-fun res!2302531 () Bool)

(assert (=> b!5413385 (=> res!2302531 e!3355582)))

(assert (=> b!5413385 (= res!2302531 call!387399)))

(declare-fun b!5413386 () Bool)

(assert (=> b!5413386 (= e!3355583 e!3355580)))

(declare-fun res!2302536 () Bool)

(assert (=> b!5413386 (=> (not res!2302536) (not e!3355580))))

(assert (=> b!5413386 (= res!2302536 (not lt!2207574))))

(declare-fun b!5413387 () Bool)

(assert (=> b!5413387 (= e!3355581 (= (head!11608 (_2!35695 lt!2207343)) (c!943557 lt!2207299)))))

(declare-fun b!5413388 () Bool)

(declare-fun res!2302535 () Bool)

(assert (=> b!5413388 (=> (not res!2302535) (not e!3355581))))

(assert (=> b!5413388 (= res!2302535 (not call!387399))))

(declare-fun b!5413389 () Bool)

(assert (=> b!5413389 (= e!3355582 (not (= (head!11608 (_2!35695 lt!2207343)) (c!943557 lt!2207299))))))

(declare-fun b!5413390 () Bool)

(assert (=> b!5413390 (= e!3355578 (not lt!2207574))))

(assert (= (and d!1727586 c!943859) b!5413382))

(assert (= (and d!1727586 (not c!943859)) b!5413378))

(assert (= (and d!1727586 c!943858) b!5413380))

(assert (= (and d!1727586 (not c!943858)) b!5413379))

(assert (= (and b!5413379 c!943857) b!5413390))

(assert (= (and b!5413379 (not c!943857)) b!5413377))

(assert (= (and b!5413377 (not res!2302532)) b!5413383))

(assert (= (and b!5413383 res!2302533) b!5413388))

(assert (= (and b!5413388 res!2302535) b!5413384))

(assert (= (and b!5413384 res!2302537) b!5413387))

(assert (= (and b!5413383 (not res!2302534)) b!5413386))

(assert (= (and b!5413386 res!2302536) b!5413385))

(assert (= (and b!5413385 (not res!2302531)) b!5413381))

(assert (= (and b!5413381 (not res!2302538)) b!5413389))

(assert (= (or b!5413380 b!5413385 b!5413388) bm!387394))

(assert (=> b!5413384 m!6436894))

(assert (=> b!5413384 m!6436894))

(declare-fun m!6437478 () Bool)

(assert (=> b!5413384 m!6437478))

(assert (=> b!5413381 m!6436894))

(assert (=> b!5413381 m!6436894))

(assert (=> b!5413381 m!6437478))

(assert (=> b!5413378 m!6436890))

(assert (=> b!5413378 m!6436890))

(declare-fun m!6437480 () Bool)

(assert (=> b!5413378 m!6437480))

(assert (=> b!5413378 m!6436894))

(assert (=> b!5413378 m!6437480))

(assert (=> b!5413378 m!6436894))

(declare-fun m!6437482 () Bool)

(assert (=> b!5413378 m!6437482))

(declare-fun m!6437484 () Bool)

(assert (=> b!5413382 m!6437484))

(assert (=> d!1727586 m!6436886))

(assert (=> d!1727586 m!6437450))

(assert (=> b!5413387 m!6436890))

(assert (=> bm!387394 m!6436886))

(assert (=> b!5413389 m!6436890))

(assert (=> b!5412247 d!1727586))

(assert (=> b!5412247 d!1727482))

(declare-fun d!1727588 () Bool)

(assert (=> d!1727588 (= (matchR!7378 (Concat!24038 (Concat!24038 (reg!15522 (regOne!30898 r!7292)) lt!2207337) (regTwo!30898 r!7292)) s!2326) (matchR!7378 (Concat!24038 (reg!15522 (regOne!30898 r!7292)) (Concat!24038 lt!2207337 (regTwo!30898 r!7292))) s!2326))))

(declare-fun lt!2207577 () Unit!154294)

(declare-fun choose!40913 (Regex!15193 Regex!15193 Regex!15193 List!61878) Unit!154294)

(assert (=> d!1727588 (= lt!2207577 (choose!40913 (reg!15522 (regOne!30898 r!7292)) lt!2207337 (regTwo!30898 r!7292) s!2326))))

(declare-fun e!3355586 () Bool)

(assert (=> d!1727588 e!3355586))

(declare-fun res!2302543 () Bool)

(assert (=> d!1727588 (=> (not res!2302543) (not e!3355586))))

(assert (=> d!1727588 (= res!2302543 (validRegex!6929 (reg!15522 (regOne!30898 r!7292))))))

(assert (=> d!1727588 (= (lemmaConcatAssociative!46 (reg!15522 (regOne!30898 r!7292)) lt!2207337 (regTwo!30898 r!7292) s!2326) lt!2207577)))

(declare-fun b!5413395 () Bool)

(declare-fun res!2302544 () Bool)

(assert (=> b!5413395 (=> (not res!2302544) (not e!3355586))))

(assert (=> b!5413395 (= res!2302544 (validRegex!6929 lt!2207337))))

(declare-fun b!5413396 () Bool)

(assert (=> b!5413396 (= e!3355586 (validRegex!6929 (regTwo!30898 r!7292)))))

(assert (= (and d!1727588 res!2302543) b!5413395))

(assert (= (and b!5413395 res!2302544) b!5413396))

(declare-fun m!6437486 () Bool)

(assert (=> d!1727588 m!6437486))

(declare-fun m!6437488 () Bool)

(assert (=> d!1727588 m!6437488))

(declare-fun m!6437490 () Bool)

(assert (=> d!1727588 m!6437490))

(assert (=> d!1727588 m!6436306))

(assert (=> b!5413395 m!6436330))

(declare-fun m!6437492 () Bool)

(assert (=> b!5413396 m!6437492))

(assert (=> b!5412247 d!1727588))

(assert (=> b!5412247 d!1727494))

(declare-fun d!1727590 () Bool)

(declare-fun c!943860 () Bool)

(assert (=> d!1727590 (= c!943860 (isEmpty!33749 lt!2207305))))

(declare-fun e!3355587 () Bool)

(assert (=> d!1727590 (= (matchZipper!1437 (store ((as const (Array Context!9154 Bool)) false) (Context!9155 (++!13560 lt!2207316 lt!2207338)) true) lt!2207305) e!3355587)))

(declare-fun b!5413397 () Bool)

(assert (=> b!5413397 (= e!3355587 (nullableZipper!1446 (store ((as const (Array Context!9154 Bool)) false) (Context!9155 (++!13560 lt!2207316 lt!2207338)) true)))))

(declare-fun b!5413398 () Bool)

(assert (=> b!5413398 (= e!3355587 (matchZipper!1437 (derivationStepZipper!1432 (store ((as const (Array Context!9154 Bool)) false) (Context!9155 (++!13560 lt!2207316 lt!2207338)) true) (head!11608 lt!2207305)) (tail!10705 lt!2207305)))))

(assert (= (and d!1727590 c!943860) b!5413397))

(assert (= (and d!1727590 (not c!943860)) b!5413398))

(declare-fun m!6437494 () Bool)

(assert (=> d!1727590 m!6437494))

(assert (=> b!5413397 m!6436220))

(declare-fun m!6437496 () Bool)

(assert (=> b!5413397 m!6437496))

(declare-fun m!6437498 () Bool)

(assert (=> b!5413398 m!6437498))

(assert (=> b!5413398 m!6436220))

(assert (=> b!5413398 m!6437498))

(declare-fun m!6437500 () Bool)

(assert (=> b!5413398 m!6437500))

(declare-fun m!6437502 () Bool)

(assert (=> b!5413398 m!6437502))

(assert (=> b!5413398 m!6437500))

(assert (=> b!5413398 m!6437502))

(declare-fun m!6437504 () Bool)

(assert (=> b!5413398 m!6437504))

(assert (=> b!5412247 d!1727590))

(declare-fun b!5413399 () Bool)

(declare-fun res!2302546 () Bool)

(declare-fun e!3355594 () Bool)

(assert (=> b!5413399 (=> res!2302546 e!3355594)))

(assert (=> b!5413399 (= res!2302546 (not ((_ is ElementMatch!15193) lt!2207349)))))

(declare-fun e!3355589 () Bool)

(assert (=> b!5413399 (= e!3355589 e!3355594)))

(declare-fun d!1727592 () Bool)

(declare-fun e!3355590 () Bool)

(assert (=> d!1727592 e!3355590))

(declare-fun c!943862 () Bool)

(assert (=> d!1727592 (= c!943862 ((_ is EmptyExpr!15193) lt!2207349))))

(declare-fun lt!2207578 () Bool)

(declare-fun e!3355588 () Bool)

(assert (=> d!1727592 (= lt!2207578 e!3355588)))

(declare-fun c!943863 () Bool)

(assert (=> d!1727592 (= c!943863 (isEmpty!33749 lt!2207305))))

(assert (=> d!1727592 (validRegex!6929 lt!2207349)))

(assert (=> d!1727592 (= (matchR!7378 lt!2207349 lt!2207305) lt!2207578)))

(declare-fun bm!387395 () Bool)

(declare-fun call!387400 () Bool)

(assert (=> bm!387395 (= call!387400 (isEmpty!33749 lt!2207305))))

(declare-fun b!5413400 () Bool)

(assert (=> b!5413400 (= e!3355588 (matchR!7378 (derivativeStep!4267 lt!2207349 (head!11608 lt!2207305)) (tail!10705 lt!2207305)))))

(declare-fun b!5413401 () Bool)

(assert (=> b!5413401 (= e!3355590 e!3355589)))

(declare-fun c!943861 () Bool)

(assert (=> b!5413401 (= c!943861 ((_ is EmptyLang!15193) lt!2207349))))

(declare-fun b!5413402 () Bool)

(assert (=> b!5413402 (= e!3355590 (= lt!2207578 call!387400))))

(declare-fun b!5413403 () Bool)

(declare-fun res!2302552 () Bool)

(declare-fun e!3355593 () Bool)

(assert (=> b!5413403 (=> res!2302552 e!3355593)))

(assert (=> b!5413403 (= res!2302552 (not (isEmpty!33749 (tail!10705 lt!2207305))))))

(declare-fun b!5413404 () Bool)

(assert (=> b!5413404 (= e!3355588 (nullable!5362 lt!2207349))))

(declare-fun b!5413405 () Bool)

(declare-fun res!2302548 () Bool)

(assert (=> b!5413405 (=> res!2302548 e!3355594)))

(declare-fun e!3355592 () Bool)

(assert (=> b!5413405 (= res!2302548 e!3355592)))

(declare-fun res!2302547 () Bool)

(assert (=> b!5413405 (=> (not res!2302547) (not e!3355592))))

(assert (=> b!5413405 (= res!2302547 lt!2207578)))

(declare-fun b!5413406 () Bool)

(declare-fun res!2302551 () Bool)

(assert (=> b!5413406 (=> (not res!2302551) (not e!3355592))))

(assert (=> b!5413406 (= res!2302551 (isEmpty!33749 (tail!10705 lt!2207305)))))

(declare-fun b!5413407 () Bool)

(declare-fun e!3355591 () Bool)

(assert (=> b!5413407 (= e!3355591 e!3355593)))

(declare-fun res!2302545 () Bool)

(assert (=> b!5413407 (=> res!2302545 e!3355593)))

(assert (=> b!5413407 (= res!2302545 call!387400)))

(declare-fun b!5413408 () Bool)

(assert (=> b!5413408 (= e!3355594 e!3355591)))

(declare-fun res!2302550 () Bool)

(assert (=> b!5413408 (=> (not res!2302550) (not e!3355591))))

(assert (=> b!5413408 (= res!2302550 (not lt!2207578))))

(declare-fun b!5413409 () Bool)

(assert (=> b!5413409 (= e!3355592 (= (head!11608 lt!2207305) (c!943557 lt!2207349)))))

(declare-fun b!5413410 () Bool)

(declare-fun res!2302549 () Bool)

(assert (=> b!5413410 (=> (not res!2302549) (not e!3355592))))

(assert (=> b!5413410 (= res!2302549 (not call!387400))))

(declare-fun b!5413411 () Bool)

(assert (=> b!5413411 (= e!3355593 (not (= (head!11608 lt!2207305) (c!943557 lt!2207349))))))

(declare-fun b!5413412 () Bool)

(assert (=> b!5413412 (= e!3355589 (not lt!2207578))))

(assert (= (and d!1727592 c!943863) b!5413404))

(assert (= (and d!1727592 (not c!943863)) b!5413400))

(assert (= (and d!1727592 c!943862) b!5413402))

(assert (= (and d!1727592 (not c!943862)) b!5413401))

(assert (= (and b!5413401 c!943861) b!5413412))

(assert (= (and b!5413401 (not c!943861)) b!5413399))

(assert (= (and b!5413399 (not res!2302546)) b!5413405))

(assert (= (and b!5413405 res!2302547) b!5413410))

(assert (= (and b!5413410 res!2302549) b!5413406))

(assert (= (and b!5413406 res!2302551) b!5413409))

(assert (= (and b!5413405 (not res!2302548)) b!5413408))

(assert (= (and b!5413408 res!2302550) b!5413407))

(assert (= (and b!5413407 (not res!2302545)) b!5413403))

(assert (= (and b!5413403 (not res!2302552)) b!5413411))

(assert (= (or b!5413402 b!5413407 b!5413410) bm!387395))

(assert (=> b!5413406 m!6437502))

(assert (=> b!5413406 m!6437502))

(declare-fun m!6437506 () Bool)

(assert (=> b!5413406 m!6437506))

(assert (=> b!5413403 m!6437502))

(assert (=> b!5413403 m!6437502))

(assert (=> b!5413403 m!6437506))

(assert (=> b!5413400 m!6437498))

(assert (=> b!5413400 m!6437498))

(declare-fun m!6437508 () Bool)

(assert (=> b!5413400 m!6437508))

(assert (=> b!5413400 m!6437502))

(assert (=> b!5413400 m!6437508))

(assert (=> b!5413400 m!6437502))

(declare-fun m!6437510 () Bool)

(assert (=> b!5413400 m!6437510))

(declare-fun m!6437512 () Bool)

(assert (=> b!5413404 m!6437512))

(assert (=> d!1727592 m!6437494))

(declare-fun m!6437514 () Bool)

(assert (=> d!1727592 m!6437514))

(assert (=> b!5413409 m!6437498))

(assert (=> bm!387395 m!6437494))

(assert (=> b!5413411 m!6437498))

(assert (=> b!5412247 d!1727592))

(declare-fun bs!1250408 () Bool)

(declare-fun d!1727594 () Bool)

(assert (= bs!1250408 (and d!1727594 d!1727332)))

(declare-fun lambda!282850 () Int)

(assert (=> bs!1250408 (not (= lambda!282850 lambda!282786))))

(declare-fun bs!1250409 () Bool)

(assert (= bs!1250409 (and d!1727594 b!5413254)))

(assert (=> bs!1250409 (not (= lambda!282850 lambda!282837))))

(declare-fun bs!1250410 () Bool)

(assert (= bs!1250410 (and d!1727594 b!5412247)))

(assert (=> bs!1250410 (= lambda!282850 lambda!282737)))

(assert (=> bs!1250408 (= (= lt!2207321 (regOne!30898 r!7292)) (= lambda!282850 lambda!282785))))

(declare-fun bs!1250411 () Bool)

(assert (= bs!1250411 (and d!1727594 b!5412241)))

(assert (=> bs!1250411 (not (= lambda!282850 lambda!282733))))

(declare-fun bs!1250412 () Bool)

(assert (= bs!1250412 (and d!1727594 b!5413203)))

(assert (=> bs!1250412 (not (= lambda!282850 lambda!282824))))

(declare-fun bs!1250413 () Bool)

(assert (= bs!1250413 (and d!1727594 d!1727518)))

(assert (=> bs!1250413 (= (and (= s!2326 (_1!35695 lt!2207307)) (= lt!2207321 (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) lt!2207337)) (= lambda!282850 lambda!282819))))

(declare-fun bs!1250414 () Bool)

(assert (= bs!1250414 (and d!1727594 b!5412274)))

(assert (=> bs!1250414 (not (= lambda!282850 lambda!282740))))

(assert (=> bs!1250414 (not (= lambda!282850 lambda!282741))))

(declare-fun bs!1250415 () Bool)

(assert (= bs!1250415 (and d!1727594 d!1727532)))

(assert (=> bs!1250415 (= (and (= s!2326 (_1!35695 lt!2207307)) (= lt!2207321 (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) (Star!15193 (reg!15522 (regOne!30898 r!7292))))) (= lambda!282850 lambda!282832))))

(assert (=> bs!1250411 (= (= lt!2207321 (regOne!30898 r!7292)) (= lambda!282850 lambda!282732))))

(assert (=> bs!1250414 (= (and (= s!2326 (_1!35695 lt!2207307)) (= lt!2207321 (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) lt!2207337)) (= lambda!282850 lambda!282739))))

(declare-fun bs!1250416 () Bool)

(assert (= bs!1250416 (and d!1727594 d!1727530)))

(assert (=> bs!1250416 (= (and (= s!2326 (_1!35695 lt!2207307)) (= lt!2207321 (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 r!7292) lt!2207337)) (= lambda!282850 lambda!282826))))

(declare-fun bs!1250417 () Bool)

(assert (= bs!1250417 (and d!1727594 d!1727570)))

(assert (=> bs!1250417 (= lambda!282850 lambda!282848)))

(declare-fun bs!1250418 () Bool)

(assert (= bs!1250418 (and d!1727594 d!1727326)))

(assert (=> bs!1250418 (= (= lt!2207321 (regOne!30898 r!7292)) (= lambda!282850 lambda!282779))))

(assert (=> bs!1250410 (not (= lambda!282850 lambda!282738))))

(assert (=> bs!1250417 (not (= lambda!282850 lambda!282849))))

(declare-fun bs!1250419 () Bool)

(assert (= bs!1250419 (and d!1727594 b!5413329)))

(assert (=> bs!1250419 (not (= lambda!282850 lambda!282844))))

(declare-fun bs!1250420 () Bool)

(assert (= bs!1250420 (and d!1727594 b!5413332)))

(assert (=> bs!1250420 (not (= lambda!282850 lambda!282843))))

(declare-fun bs!1250421 () Bool)

(assert (= bs!1250421 (and d!1727594 b!5413251)))

(assert (=> bs!1250421 (not (= lambda!282850 lambda!282838))))

(assert (=> bs!1250415 (not (= lambda!282850 lambda!282833))))

(assert (=> bs!1250416 (not (= lambda!282850 lambda!282827))))

(declare-fun bs!1250422 () Bool)

(assert (= bs!1250422 (and d!1727594 b!5413200)))

(assert (=> bs!1250422 (not (= lambda!282850 lambda!282825))))

(assert (=> d!1727594 true))

(assert (=> d!1727594 true))

(assert (=> d!1727594 true))

(assert (=> d!1727594 (= (isDefined!12007 (findConcatSeparation!1718 lt!2207321 (regTwo!30898 r!7292) Nil!61754 s!2326 s!2326)) (Exists!2374 lambda!282850))))

(declare-fun lt!2207579 () Unit!154294)

(assert (=> d!1727594 (= lt!2207579 (choose!40892 lt!2207321 (regTwo!30898 r!7292) s!2326))))

(assert (=> d!1727594 (validRegex!6929 lt!2207321)))

(assert (=> d!1727594 (= (lemmaFindConcatSeparationEquivalentToExists!1482 lt!2207321 (regTwo!30898 r!7292) s!2326) lt!2207579)))

(declare-fun bs!1250423 () Bool)

(assert (= bs!1250423 d!1727594))

(declare-fun m!6437516 () Bool)

(assert (=> bs!1250423 m!6437516))

(declare-fun m!6437518 () Bool)

(assert (=> bs!1250423 m!6437518))

(assert (=> bs!1250423 m!6436234))

(assert (=> bs!1250423 m!6436234))

(declare-fun m!6437520 () Bool)

(assert (=> bs!1250423 m!6437520))

(assert (=> bs!1250423 m!6437314))

(assert (=> b!5412247 d!1727594))

(declare-fun d!1727596 () Bool)

(assert (=> d!1727596 (= (flatMap!920 lt!2207328 lambda!282734) (choose!40896 lt!2207328 lambda!282734))))

(declare-fun bs!1250424 () Bool)

(assert (= bs!1250424 d!1727596))

(declare-fun m!6437522 () Bool)

(assert (=> bs!1250424 m!6437522))

(assert (=> b!5412267 d!1727596))

(declare-fun b!5413413 () Bool)

(declare-fun e!3355595 () (InoxSet Context!9154))

(declare-fun e!3355597 () (InoxSet Context!9154))

(assert (=> b!5413413 (= e!3355595 e!3355597)))

(declare-fun c!943864 () Bool)

(assert (=> b!5413413 (= c!943864 ((_ is Cons!61755) (exprs!5077 lt!2207347)))))

(declare-fun b!5413414 () Bool)

(assert (=> b!5413414 (= e!3355597 ((as const (Array Context!9154 Bool)) false))))

(declare-fun b!5413415 () Bool)

(declare-fun e!3355596 () Bool)

(assert (=> b!5413415 (= e!3355596 (nullable!5362 (h!68203 (exprs!5077 lt!2207347))))))

(declare-fun d!1727598 () Bool)

(declare-fun c!943865 () Bool)

(assert (=> d!1727598 (= c!943865 e!3355596)))

(declare-fun res!2302553 () Bool)

(assert (=> d!1727598 (=> (not res!2302553) (not e!3355596))))

(assert (=> d!1727598 (= res!2302553 ((_ is Cons!61755) (exprs!5077 lt!2207347)))))

(assert (=> d!1727598 (= (derivationStepZipperUp!565 lt!2207347 (h!68202 s!2326)) e!3355595)))

(declare-fun b!5413416 () Bool)

(declare-fun call!387401 () (InoxSet Context!9154))

(assert (=> b!5413416 (= e!3355595 ((_ map or) call!387401 (derivationStepZipperUp!565 (Context!9155 (t!375102 (exprs!5077 lt!2207347))) (h!68202 s!2326))))))

(declare-fun b!5413417 () Bool)

(assert (=> b!5413417 (= e!3355597 call!387401)))

(declare-fun bm!387396 () Bool)

(assert (=> bm!387396 (= call!387401 (derivationStepZipperDown!641 (h!68203 (exprs!5077 lt!2207347)) (Context!9155 (t!375102 (exprs!5077 lt!2207347))) (h!68202 s!2326)))))

(assert (= (and d!1727598 res!2302553) b!5413415))

(assert (= (and d!1727598 c!943865) b!5413416))

(assert (= (and d!1727598 (not c!943865)) b!5413413))

(assert (= (and b!5413413 c!943864) b!5413417))

(assert (= (and b!5413413 (not c!943864)) b!5413414))

(assert (= (or b!5413416 b!5413417) bm!387396))

(declare-fun m!6437524 () Bool)

(assert (=> b!5413415 m!6437524))

(declare-fun m!6437526 () Bool)

(assert (=> b!5413416 m!6437526))

(declare-fun m!6437528 () Bool)

(assert (=> bm!387396 m!6437528))

(assert (=> b!5412267 d!1727598))

(declare-fun d!1727600 () Bool)

(assert (=> d!1727600 (= (flatMap!920 lt!2207328 lambda!282734) (dynLambda!24329 lambda!282734 lt!2207347))))

(declare-fun lt!2207580 () Unit!154294)

(assert (=> d!1727600 (= lt!2207580 (choose!40895 lt!2207328 lt!2207347 lambda!282734))))

(assert (=> d!1727600 (= lt!2207328 (store ((as const (Array Context!9154 Bool)) false) lt!2207347 true))))

(assert (=> d!1727600 (= (lemmaFlatMapOnSingletonSet!452 lt!2207328 lt!2207347 lambda!282734) lt!2207580)))

(declare-fun b_lambda!206737 () Bool)

(assert (=> (not b_lambda!206737) (not d!1727600)))

(declare-fun bs!1250425 () Bool)

(assert (= bs!1250425 d!1727600))

(assert (=> bs!1250425 m!6436348))

(declare-fun m!6437530 () Bool)

(assert (=> bs!1250425 m!6437530))

(declare-fun m!6437532 () Bool)

(assert (=> bs!1250425 m!6437532))

(assert (=> bs!1250425 m!6436344))

(assert (=> b!5412267 d!1727600))

(declare-fun bs!1250426 () Bool)

(declare-fun d!1727602 () Bool)

(assert (= bs!1250426 (and d!1727602 b!5412258)))

(declare-fun lambda!282853 () Int)

(assert (=> bs!1250426 (= lambda!282853 lambda!282734)))

(assert (=> d!1727602 true))

(assert (=> d!1727602 (= (derivationStepZipper!1432 lt!2207328 (h!68202 s!2326)) (flatMap!920 lt!2207328 lambda!282853))))

(declare-fun bs!1250427 () Bool)

(assert (= bs!1250427 d!1727602))

(declare-fun m!6437534 () Bool)

(assert (=> bs!1250427 m!6437534))

(assert (=> b!5412267 d!1727602))

(declare-fun e!3355600 () Bool)

(declare-fun d!1727604 () Bool)

(assert (=> d!1727604 (= (matchZipper!1437 ((_ map or) lt!2207334 lt!2207332) (t!375101 s!2326)) e!3355600)))

(declare-fun res!2302556 () Bool)

(assert (=> d!1727604 (=> res!2302556 e!3355600)))

(assert (=> d!1727604 (= res!2302556 (matchZipper!1437 lt!2207334 (t!375101 s!2326)))))

(declare-fun lt!2207583 () Unit!154294)

(declare-fun choose!40914 ((InoxSet Context!9154) (InoxSet Context!9154) List!61878) Unit!154294)

(assert (=> d!1727604 (= lt!2207583 (choose!40914 lt!2207334 lt!2207332 (t!375101 s!2326)))))

(assert (=> d!1727604 (= (lemmaZipperConcatMatchesSameAsBothZippers!430 lt!2207334 lt!2207332 (t!375101 s!2326)) lt!2207583)))

(declare-fun b!5413422 () Bool)

(assert (=> b!5413422 (= e!3355600 (matchZipper!1437 lt!2207332 (t!375101 s!2326)))))

(assert (= (and d!1727604 (not res!2302556)) b!5413422))

(assert (=> d!1727604 m!6436218))

(assert (=> d!1727604 m!6436216))

(declare-fun m!6437536 () Bool)

(assert (=> d!1727604 m!6437536))

(assert (=> b!5413422 m!6436302))

(assert (=> b!5412246 d!1727604))

(assert (=> b!5412246 d!1727382))

(declare-fun d!1727606 () Bool)

(declare-fun c!943868 () Bool)

(assert (=> d!1727606 (= c!943868 (isEmpty!33749 (t!375101 s!2326)))))

(declare-fun e!3355601 () Bool)

(assert (=> d!1727606 (= (matchZipper!1437 ((_ map or) lt!2207334 lt!2207332) (t!375101 s!2326)) e!3355601)))

(declare-fun b!5413423 () Bool)

(assert (=> b!5413423 (= e!3355601 (nullableZipper!1446 ((_ map or) lt!2207334 lt!2207332)))))

(declare-fun b!5413424 () Bool)

(assert (=> b!5413424 (= e!3355601 (matchZipper!1437 (derivationStepZipper!1432 ((_ map or) lt!2207334 lt!2207332) (head!11608 (t!375101 s!2326))) (tail!10705 (t!375101 s!2326))))))

(assert (= (and d!1727606 c!943868) b!5413423))

(assert (= (and d!1727606 (not c!943868)) b!5413424))

(assert (=> d!1727606 m!6436872))

(declare-fun m!6437538 () Bool)

(assert (=> b!5413423 m!6437538))

(assert (=> b!5413424 m!6436876))

(assert (=> b!5413424 m!6436876))

(declare-fun m!6437540 () Bool)

(assert (=> b!5413424 m!6437540))

(assert (=> b!5413424 m!6436880))

(assert (=> b!5413424 m!6437540))

(assert (=> b!5413424 m!6436880))

(declare-fun m!6437542 () Bool)

(assert (=> b!5413424 m!6437542))

(assert (=> b!5412246 d!1727606))

(declare-fun bs!1250428 () Bool)

(declare-fun b!5413431 () Bool)

(assert (= bs!1250428 (and b!5413431 d!1727332)))

(declare-fun lambda!282854 () Int)

(assert (=> bs!1250428 (not (= lambda!282854 lambda!282786))))

(declare-fun bs!1250429 () Bool)

(assert (= bs!1250429 (and b!5413431 b!5413254)))

(assert (=> bs!1250429 (= (and (= (reg!15522 lt!2207349) (reg!15522 r!7292)) (= lt!2207349 r!7292)) (= lambda!282854 lambda!282837))))

(declare-fun bs!1250430 () Bool)

(assert (= bs!1250430 (and b!5413431 b!5412247)))

(assert (=> bs!1250430 (not (= lambda!282854 lambda!282737))))

(assert (=> bs!1250428 (not (= lambda!282854 lambda!282785))))

(declare-fun bs!1250431 () Bool)

(assert (= bs!1250431 (and b!5413431 b!5412241)))

(assert (=> bs!1250431 (not (= lambda!282854 lambda!282733))))

(declare-fun bs!1250432 () Bool)

(assert (= bs!1250432 (and b!5413431 b!5413203)))

(assert (=> bs!1250432 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (reg!15522 lt!2207349) (reg!15522 lt!2207321)) (= lt!2207349 lt!2207321)) (= lambda!282854 lambda!282824))))

(declare-fun bs!1250433 () Bool)

(assert (= bs!1250433 (and b!5413431 d!1727518)))

(assert (=> bs!1250433 (not (= lambda!282854 lambda!282819))))

(declare-fun bs!1250434 () Bool)

(assert (= bs!1250434 (and b!5413431 d!1727594)))

(assert (=> bs!1250434 (not (= lambda!282854 lambda!282850))))

(declare-fun bs!1250435 () Bool)

(assert (= bs!1250435 (and b!5413431 b!5412274)))

(assert (=> bs!1250435 (not (= lambda!282854 lambda!282740))))

(assert (=> bs!1250435 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (reg!15522 lt!2207349) (reg!15522 (regOne!30898 r!7292))) (= lt!2207349 lt!2207337)) (= lambda!282854 lambda!282741))))

(declare-fun bs!1250436 () Bool)

(assert (= bs!1250436 (and b!5413431 d!1727532)))

(assert (=> bs!1250436 (not (= lambda!282854 lambda!282832))))

(assert (=> bs!1250431 (not (= lambda!282854 lambda!282732))))

(assert (=> bs!1250435 (not (= lambda!282854 lambda!282739))))

(declare-fun bs!1250437 () Bool)

(assert (= bs!1250437 (and b!5413431 d!1727530)))

(assert (=> bs!1250437 (not (= lambda!282854 lambda!282826))))

(declare-fun bs!1250438 () Bool)

(assert (= bs!1250438 (and b!5413431 d!1727570)))

(assert (=> bs!1250438 (not (= lambda!282854 lambda!282848))))

(declare-fun bs!1250439 () Bool)

(assert (= bs!1250439 (and b!5413431 d!1727326)))

(assert (=> bs!1250439 (not (= lambda!282854 lambda!282779))))

(assert (=> bs!1250430 (not (= lambda!282854 lambda!282738))))

(assert (=> bs!1250438 (not (= lambda!282854 lambda!282849))))

(declare-fun bs!1250440 () Bool)

(assert (= bs!1250440 (and b!5413431 b!5413329)))

(assert (=> bs!1250440 (not (= lambda!282854 lambda!282844))))

(declare-fun bs!1250441 () Bool)

(assert (= bs!1250441 (and b!5413431 b!5413332)))

(assert (=> bs!1250441 (= (and (= (reg!15522 lt!2207349) (reg!15522 lt!2207325)) (= lt!2207349 lt!2207325)) (= lambda!282854 lambda!282843))))

(declare-fun bs!1250442 () Bool)

(assert (= bs!1250442 (and b!5413431 b!5413251)))

(assert (=> bs!1250442 (not (= lambda!282854 lambda!282838))))

(assert (=> bs!1250436 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (reg!15522 lt!2207349) (reg!15522 (regOne!30898 r!7292))) (= lt!2207349 (Star!15193 (reg!15522 (regOne!30898 r!7292))))) (= lambda!282854 lambda!282833))))

(assert (=> bs!1250437 (not (= lambda!282854 lambda!282827))))

(declare-fun bs!1250443 () Bool)

(assert (= bs!1250443 (and b!5413431 b!5413200)))

(assert (=> bs!1250443 (not (= lambda!282854 lambda!282825))))

(assert (=> b!5413431 true))

(assert (=> b!5413431 true))

(declare-fun bs!1250444 () Bool)

(declare-fun b!5413428 () Bool)

(assert (= bs!1250444 (and b!5413428 d!1727332)))

(declare-fun lambda!282855 () Int)

(assert (=> bs!1250444 (= (and (= (regOne!30898 lt!2207349) (regOne!30898 r!7292)) (= (regTwo!30898 lt!2207349) (regTwo!30898 r!7292))) (= lambda!282855 lambda!282786))))

(declare-fun bs!1250445 () Bool)

(assert (= bs!1250445 (and b!5413428 b!5413254)))

(assert (=> bs!1250445 (not (= lambda!282855 lambda!282837))))

(declare-fun bs!1250446 () Bool)

(assert (= bs!1250446 (and b!5413428 b!5412247)))

(assert (=> bs!1250446 (not (= lambda!282855 lambda!282737))))

(assert (=> bs!1250444 (not (= lambda!282855 lambda!282785))))

(declare-fun bs!1250447 () Bool)

(assert (= bs!1250447 (and b!5413428 b!5412241)))

(assert (=> bs!1250447 (= (and (= (regOne!30898 lt!2207349) (regOne!30898 r!7292)) (= (regTwo!30898 lt!2207349) (regTwo!30898 r!7292))) (= lambda!282855 lambda!282733))))

(declare-fun bs!1250448 () Bool)

(assert (= bs!1250448 (and b!5413428 b!5413203)))

(assert (=> bs!1250448 (not (= lambda!282855 lambda!282824))))

(declare-fun bs!1250449 () Bool)

(assert (= bs!1250449 (and b!5413428 d!1727518)))

(assert (=> bs!1250449 (not (= lambda!282855 lambda!282819))))

(declare-fun bs!1250450 () Bool)

(assert (= bs!1250450 (and b!5413428 d!1727594)))

(assert (=> bs!1250450 (not (= lambda!282855 lambda!282850))))

(declare-fun bs!1250451 () Bool)

(assert (= bs!1250451 (and b!5413428 b!5412274)))

(assert (=> bs!1250451 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (regOne!30898 lt!2207349) (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 lt!2207349) lt!2207337)) (= lambda!282855 lambda!282740))))

(assert (=> bs!1250451 (not (= lambda!282855 lambda!282741))))

(declare-fun bs!1250452 () Bool)

(assert (= bs!1250452 (and b!5413428 d!1727532)))

(assert (=> bs!1250452 (not (= lambda!282855 lambda!282832))))

(assert (=> bs!1250447 (not (= lambda!282855 lambda!282732))))

(assert (=> bs!1250451 (not (= lambda!282855 lambda!282739))))

(declare-fun bs!1250453 () Bool)

(assert (= bs!1250453 (and b!5413428 d!1727530)))

(assert (=> bs!1250453 (not (= lambda!282855 lambda!282826))))

(declare-fun bs!1250454 () Bool)

(assert (= bs!1250454 (and b!5413428 d!1727570)))

(assert (=> bs!1250454 (not (= lambda!282855 lambda!282848))))

(declare-fun bs!1250455 () Bool)

(assert (= bs!1250455 (and b!5413428 d!1727326)))

(assert (=> bs!1250455 (not (= lambda!282855 lambda!282779))))

(assert (=> bs!1250446 (= (and (= (regOne!30898 lt!2207349) lt!2207321) (= (regTwo!30898 lt!2207349) (regTwo!30898 r!7292))) (= lambda!282855 lambda!282738))))

(assert (=> bs!1250454 (= (and (= (regOne!30898 lt!2207349) lt!2207321) (= (regTwo!30898 lt!2207349) (regTwo!30898 r!7292))) (= lambda!282855 lambda!282849))))

(declare-fun bs!1250456 () Bool)

(assert (= bs!1250456 (and b!5413428 b!5413431)))

(assert (=> bs!1250456 (not (= lambda!282855 lambda!282854))))

(declare-fun bs!1250457 () Bool)

(assert (= bs!1250457 (and b!5413428 b!5413329)))

(assert (=> bs!1250457 (= (and (= (regOne!30898 lt!2207349) (regOne!30898 lt!2207325)) (= (regTwo!30898 lt!2207349) (regTwo!30898 lt!2207325))) (= lambda!282855 lambda!282844))))

(declare-fun bs!1250458 () Bool)

(assert (= bs!1250458 (and b!5413428 b!5413332)))

(assert (=> bs!1250458 (not (= lambda!282855 lambda!282843))))

(declare-fun bs!1250459 () Bool)

(assert (= bs!1250459 (and b!5413428 b!5413251)))

(assert (=> bs!1250459 (= (and (= (regOne!30898 lt!2207349) (regOne!30898 r!7292)) (= (regTwo!30898 lt!2207349) (regTwo!30898 r!7292))) (= lambda!282855 lambda!282838))))

(assert (=> bs!1250452 (not (= lambda!282855 lambda!282833))))

(assert (=> bs!1250453 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (regOne!30898 lt!2207349) (reg!15522 (regOne!30898 r!7292))) (= (regTwo!30898 lt!2207349) lt!2207337)) (= lambda!282855 lambda!282827))))

(declare-fun bs!1250460 () Bool)

(assert (= bs!1250460 (and b!5413428 b!5413200)))

(assert (=> bs!1250460 (= (and (= s!2326 (_1!35695 lt!2207307)) (= (regOne!30898 lt!2207349) (regOne!30898 lt!2207321)) (= (regTwo!30898 lt!2207349) (regTwo!30898 lt!2207321))) (= lambda!282855 lambda!282825))))

(assert (=> b!5413428 true))

(assert (=> b!5413428 true))

(declare-fun b!5413425 () Bool)

(declare-fun e!3355603 () Bool)

(declare-fun e!3355605 () Bool)

(assert (=> b!5413425 (= e!3355603 e!3355605)))

(declare-fun res!2302558 () Bool)

(assert (=> b!5413425 (= res!2302558 (not ((_ is EmptyLang!15193) lt!2207349)))))

(assert (=> b!5413425 (=> (not res!2302558) (not e!3355605))))

(declare-fun b!5413426 () Bool)

(declare-fun c!943870 () Bool)

(assert (=> b!5413426 (= c!943870 ((_ is Union!15193) lt!2207349))))

(declare-fun e!3355607 () Bool)

(declare-fun e!3355602 () Bool)

(assert (=> b!5413426 (= e!3355607 e!3355602)))

(declare-fun b!5413427 () Bool)

(declare-fun e!3355608 () Bool)

(assert (=> b!5413427 (= e!3355602 e!3355608)))

(declare-fun res!2302559 () Bool)

(assert (=> b!5413427 (= res!2302559 (matchRSpec!2296 (regOne!30899 lt!2207349) s!2326))))

(assert (=> b!5413427 (=> res!2302559 e!3355608)))

(declare-fun bm!387397 () Bool)

(declare-fun c!943869 () Bool)

(declare-fun call!387403 () Bool)

(assert (=> bm!387397 (= call!387403 (Exists!2374 (ite c!943869 lambda!282854 lambda!282855)))))

(declare-fun e!3355606 () Bool)

(assert (=> b!5413428 (= e!3355606 call!387403)))

(declare-fun b!5413429 () Bool)

(assert (=> b!5413429 (= e!3355607 (= s!2326 (Cons!61754 (c!943557 lt!2207349) Nil!61754)))))

(declare-fun b!5413430 () Bool)

(assert (=> b!5413430 (= e!3355608 (matchRSpec!2296 (regTwo!30899 lt!2207349) s!2326))))

(declare-fun e!3355604 () Bool)

(assert (=> b!5413431 (= e!3355604 call!387403)))

(declare-fun b!5413432 () Bool)

(declare-fun c!943871 () Bool)

(assert (=> b!5413432 (= c!943871 ((_ is ElementMatch!15193) lt!2207349))))

(assert (=> b!5413432 (= e!3355605 e!3355607)))

(declare-fun bm!387398 () Bool)

(declare-fun call!387402 () Bool)

(assert (=> bm!387398 (= call!387402 (isEmpty!33749 s!2326))))

(declare-fun b!5413433 () Bool)

(assert (=> b!5413433 (= e!3355603 call!387402)))

(declare-fun d!1727608 () Bool)

(declare-fun c!943872 () Bool)

(assert (=> d!1727608 (= c!943872 ((_ is EmptyExpr!15193) lt!2207349))))

(assert (=> d!1727608 (= (matchRSpec!2296 lt!2207349 s!2326) e!3355603)))

(declare-fun b!5413434 () Bool)

(assert (=> b!5413434 (= e!3355602 e!3355606)))

(assert (=> b!5413434 (= c!943869 ((_ is Star!15193) lt!2207349))))

(declare-fun b!5413435 () Bool)

(declare-fun res!2302557 () Bool)

(assert (=> b!5413435 (=> res!2302557 e!3355604)))

(assert (=> b!5413435 (= res!2302557 call!387402)))

(assert (=> b!5413435 (= e!3355606 e!3355604)))

(assert (= (and d!1727608 c!943872) b!5413433))

(assert (= (and d!1727608 (not c!943872)) b!5413425))

(assert (= (and b!5413425 res!2302558) b!5413432))

(assert (= (and b!5413432 c!943871) b!5413429))

(assert (= (and b!5413432 (not c!943871)) b!5413426))

(assert (= (and b!5413426 c!943870) b!5413427))

(assert (= (and b!5413426 (not c!943870)) b!5413434))

(assert (= (and b!5413427 (not res!2302559)) b!5413430))

(assert (= (and b!5413434 c!943869) b!5413435))

(assert (= (and b!5413434 (not c!943869)) b!5413428))

(assert (= (and b!5413435 (not res!2302557)) b!5413431))

(assert (= (or b!5413431 b!5413428) bm!387397))

(assert (= (or b!5413433 b!5413435) bm!387398))

(declare-fun m!6437544 () Bool)

(assert (=> b!5413427 m!6437544))

(declare-fun m!6437546 () Bool)

(assert (=> bm!387397 m!6437546))

(declare-fun m!6437548 () Bool)

(assert (=> b!5413430 m!6437548))

(assert (=> bm!387398 m!6437160))

(assert (=> b!5412266 d!1727608))

(declare-fun b!5413436 () Bool)

(declare-fun res!2302561 () Bool)

(declare-fun e!3355615 () Bool)

(assert (=> b!5413436 (=> res!2302561 e!3355615)))

(assert (=> b!5413436 (= res!2302561 (not ((_ is ElementMatch!15193) lt!2207349)))))

(declare-fun e!3355610 () Bool)

(assert (=> b!5413436 (= e!3355610 e!3355615)))

(declare-fun d!1727610 () Bool)

(declare-fun e!3355611 () Bool)

(assert (=> d!1727610 e!3355611))

(declare-fun c!943874 () Bool)

(assert (=> d!1727610 (= c!943874 ((_ is EmptyExpr!15193) lt!2207349))))

(declare-fun lt!2207584 () Bool)

(declare-fun e!3355609 () Bool)

(assert (=> d!1727610 (= lt!2207584 e!3355609)))

(declare-fun c!943875 () Bool)

(assert (=> d!1727610 (= c!943875 (isEmpty!33749 s!2326))))

(assert (=> d!1727610 (validRegex!6929 lt!2207349)))

(assert (=> d!1727610 (= (matchR!7378 lt!2207349 s!2326) lt!2207584)))

(declare-fun bm!387399 () Bool)

(declare-fun call!387404 () Bool)

(assert (=> bm!387399 (= call!387404 (isEmpty!33749 s!2326))))

(declare-fun b!5413437 () Bool)

(assert (=> b!5413437 (= e!3355609 (matchR!7378 (derivativeStep!4267 lt!2207349 (head!11608 s!2326)) (tail!10705 s!2326)))))

(declare-fun b!5413438 () Bool)

(assert (=> b!5413438 (= e!3355611 e!3355610)))

(declare-fun c!943873 () Bool)

(assert (=> b!5413438 (= c!943873 ((_ is EmptyLang!15193) lt!2207349))))

(declare-fun b!5413439 () Bool)

(assert (=> b!5413439 (= e!3355611 (= lt!2207584 call!387404))))

(declare-fun b!5413440 () Bool)

(declare-fun res!2302567 () Bool)

(declare-fun e!3355614 () Bool)

(assert (=> b!5413440 (=> res!2302567 e!3355614)))

(assert (=> b!5413440 (= res!2302567 (not (isEmpty!33749 (tail!10705 s!2326))))))

(declare-fun b!5413441 () Bool)

(assert (=> b!5413441 (= e!3355609 (nullable!5362 lt!2207349))))

(declare-fun b!5413442 () Bool)

(declare-fun res!2302563 () Bool)

(assert (=> b!5413442 (=> res!2302563 e!3355615)))

(declare-fun e!3355613 () Bool)

(assert (=> b!5413442 (= res!2302563 e!3355613)))

(declare-fun res!2302562 () Bool)

(assert (=> b!5413442 (=> (not res!2302562) (not e!3355613))))

(assert (=> b!5413442 (= res!2302562 lt!2207584)))

(declare-fun b!5413443 () Bool)

(declare-fun res!2302566 () Bool)

(assert (=> b!5413443 (=> (not res!2302566) (not e!3355613))))

(assert (=> b!5413443 (= res!2302566 (isEmpty!33749 (tail!10705 s!2326)))))

(declare-fun b!5413444 () Bool)

(declare-fun e!3355612 () Bool)

(assert (=> b!5413444 (= e!3355612 e!3355614)))

(declare-fun res!2302560 () Bool)

(assert (=> b!5413444 (=> res!2302560 e!3355614)))

(assert (=> b!5413444 (= res!2302560 call!387404)))

(declare-fun b!5413445 () Bool)

(assert (=> b!5413445 (= e!3355615 e!3355612)))

(declare-fun res!2302565 () Bool)

(assert (=> b!5413445 (=> (not res!2302565) (not e!3355612))))

(assert (=> b!5413445 (= res!2302565 (not lt!2207584))))

(declare-fun b!5413446 () Bool)

(assert (=> b!5413446 (= e!3355613 (= (head!11608 s!2326) (c!943557 lt!2207349)))))

(declare-fun b!5413447 () Bool)

(declare-fun res!2302564 () Bool)

(assert (=> b!5413447 (=> (not res!2302564) (not e!3355613))))

(assert (=> b!5413447 (= res!2302564 (not call!387404))))

(declare-fun b!5413448 () Bool)

(assert (=> b!5413448 (= e!3355614 (not (= (head!11608 s!2326) (c!943557 lt!2207349))))))

(declare-fun b!5413449 () Bool)

(assert (=> b!5413449 (= e!3355610 (not lt!2207584))))

(assert (= (and d!1727610 c!943875) b!5413441))

(assert (= (and d!1727610 (not c!943875)) b!5413437))

(assert (= (and d!1727610 c!943874) b!5413439))

(assert (= (and d!1727610 (not c!943874)) b!5413438))

(assert (= (and b!5413438 c!943873) b!5413449))

(assert (= (and b!5413438 (not c!943873)) b!5413436))

(assert (= (and b!5413436 (not res!2302561)) b!5413442))

(assert (= (and b!5413442 res!2302562) b!5413447))

(assert (= (and b!5413447 res!2302564) b!5413443))

(assert (= (and b!5413443 res!2302566) b!5413446))

(assert (= (and b!5413442 (not res!2302563)) b!5413445))

(assert (= (and b!5413445 res!2302565) b!5413444))

(assert (= (and b!5413444 (not res!2302560)) b!5413440))

(assert (= (and b!5413440 (not res!2302567)) b!5413448))

(assert (= (or b!5413439 b!5413444 b!5413447) bm!387399))

(assert (=> b!5413443 m!6437175))

(assert (=> b!5413443 m!6437175))

(assert (=> b!5413443 m!6437362))

(assert (=> b!5413440 m!6437175))

(assert (=> b!5413440 m!6437175))

(assert (=> b!5413440 m!6437362))

(assert (=> b!5413437 m!6437168))

(assert (=> b!5413437 m!6437168))

(declare-fun m!6437550 () Bool)

(assert (=> b!5413437 m!6437550))

(assert (=> b!5413437 m!6437175))

(assert (=> b!5413437 m!6437550))

(assert (=> b!5413437 m!6437175))

(declare-fun m!6437552 () Bool)

(assert (=> b!5413437 m!6437552))

(assert (=> b!5413441 m!6437512))

(assert (=> d!1727610 m!6437160))

(assert (=> d!1727610 m!6437514))

(assert (=> b!5413446 m!6437168))

(assert (=> bm!387399 m!6437160))

(assert (=> b!5413448 m!6437168))

(assert (=> b!5412266 d!1727610))

(declare-fun d!1727612 () Bool)

(assert (=> d!1727612 (= (matchR!7378 lt!2207349 s!2326) (matchRSpec!2296 lt!2207349 s!2326))))

(declare-fun lt!2207585 () Unit!154294)

(assert (=> d!1727612 (= lt!2207585 (choose!40908 lt!2207349 s!2326))))

(assert (=> d!1727612 (validRegex!6929 lt!2207349)))

(assert (=> d!1727612 (= (mainMatchTheorem!2296 lt!2207349 s!2326) lt!2207585)))

(declare-fun bs!1250461 () Bool)

(assert (= bs!1250461 d!1727612))

(assert (=> bs!1250461 m!6436408))

(assert (=> bs!1250461 m!6436406))

(declare-fun m!6437554 () Bool)

(assert (=> bs!1250461 m!6437554))

(assert (=> bs!1250461 m!6437514))

(assert (=> b!5412266 d!1727612))

(declare-fun d!1727614 () Bool)

(declare-fun c!943876 () Bool)

(assert (=> d!1727614 (= c!943876 (isEmpty!33749 (t!375101 s!2326)))))

(declare-fun e!3355616 () Bool)

(assert (=> d!1727614 (= (matchZipper!1437 lt!2207333 (t!375101 s!2326)) e!3355616)))

(declare-fun b!5413450 () Bool)

(assert (=> b!5413450 (= e!3355616 (nullableZipper!1446 lt!2207333))))

(declare-fun b!5413451 () Bool)

(assert (=> b!5413451 (= e!3355616 (matchZipper!1437 (derivationStepZipper!1432 lt!2207333 (head!11608 (t!375101 s!2326))) (tail!10705 (t!375101 s!2326))))))

(assert (= (and d!1727614 c!943876) b!5413450))

(assert (= (and d!1727614 (not c!943876)) b!5413451))

(assert (=> d!1727614 m!6436872))

(declare-fun m!6437556 () Bool)

(assert (=> b!5413450 m!6437556))

(assert (=> b!5413451 m!6436876))

(assert (=> b!5413451 m!6436876))

(declare-fun m!6437558 () Bool)

(assert (=> b!5413451 m!6437558))

(assert (=> b!5413451 m!6436880))

(assert (=> b!5413451 m!6437558))

(assert (=> b!5413451 m!6436880))

(declare-fun m!6437560 () Bool)

(assert (=> b!5413451 m!6437560))

(assert (=> b!5412265 d!1727614))

(declare-fun d!1727616 () Bool)

(declare-fun c!943877 () Bool)

(assert (=> d!1727616 (= c!943877 (isEmpty!33749 s!2326))))

(declare-fun e!3355617 () Bool)

(assert (=> d!1727616 (= (matchZipper!1437 lt!2207328 s!2326) e!3355617)))

(declare-fun b!5413452 () Bool)

(assert (=> b!5413452 (= e!3355617 (nullableZipper!1446 lt!2207328))))

(declare-fun b!5413453 () Bool)

(assert (=> b!5413453 (= e!3355617 (matchZipper!1437 (derivationStepZipper!1432 lt!2207328 (head!11608 s!2326)) (tail!10705 s!2326)))))

(assert (= (and d!1727616 c!943877) b!5413452))

(assert (= (and d!1727616 (not c!943877)) b!5413453))

(assert (=> d!1727616 m!6437160))

(declare-fun m!6437562 () Bool)

(assert (=> b!5413452 m!6437562))

(assert (=> b!5413453 m!6437168))

(assert (=> b!5413453 m!6437168))

(declare-fun m!6437564 () Bool)

(assert (=> b!5413453 m!6437564))

(assert (=> b!5413453 m!6437175))

(assert (=> b!5413453 m!6437564))

(assert (=> b!5413453 m!6437175))

(declare-fun m!6437566 () Bool)

(assert (=> b!5413453 m!6437566))

(assert (=> b!5412265 d!1727616))

(assert (=> b!5412244 d!1727510))

(declare-fun condSetEmpty!35267 () Bool)

(assert (=> setNonEmpty!35261 (= condSetEmpty!35267 (= setRest!35261 ((as const (Array Context!9154 Bool)) false)))))

(declare-fun setRes!35267 () Bool)

(assert (=> setNonEmpty!35261 (= tp!1495846 setRes!35267)))

(declare-fun setIsEmpty!35267 () Bool)

(assert (=> setIsEmpty!35267 setRes!35267))

(declare-fun setNonEmpty!35267 () Bool)

(declare-fun tp!1495912 () Bool)

(declare-fun setElem!35267 () Context!9154)

(declare-fun e!3355620 () Bool)

(assert (=> setNonEmpty!35267 (= setRes!35267 (and tp!1495912 (inv!81229 setElem!35267) e!3355620))))

(declare-fun setRest!35267 () (InoxSet Context!9154))

(assert (=> setNonEmpty!35267 (= setRest!35261 ((_ map or) (store ((as const (Array Context!9154 Bool)) false) setElem!35267 true) setRest!35267))))

(declare-fun b!5413458 () Bool)

(declare-fun tp!1495913 () Bool)

(assert (=> b!5413458 (= e!3355620 tp!1495913)))

(assert (= (and setNonEmpty!35261 condSetEmpty!35267) setIsEmpty!35267))

(assert (= (and setNonEmpty!35261 (not condSetEmpty!35267)) setNonEmpty!35267))

(assert (= setNonEmpty!35267 b!5413458))

(declare-fun m!6437568 () Bool)

(assert (=> setNonEmpty!35267 m!6437568))

(declare-fun b!5413472 () Bool)

(declare-fun e!3355623 () Bool)

(declare-fun tp!1495924 () Bool)

(declare-fun tp!1495927 () Bool)

(assert (=> b!5413472 (= e!3355623 (and tp!1495924 tp!1495927))))

(assert (=> b!5412272 (= tp!1495841 e!3355623)))

(declare-fun b!5413471 () Bool)

(declare-fun tp!1495928 () Bool)

(assert (=> b!5413471 (= e!3355623 tp!1495928)))

(declare-fun b!5413470 () Bool)

(declare-fun tp!1495926 () Bool)

(declare-fun tp!1495925 () Bool)

(assert (=> b!5413470 (= e!3355623 (and tp!1495926 tp!1495925))))

(declare-fun b!5413469 () Bool)

(assert (=> b!5413469 (= e!3355623 tp_is_empty!39639)))

(assert (= (and b!5412272 ((_ is ElementMatch!15193) (reg!15522 r!7292))) b!5413469))

(assert (= (and b!5412272 ((_ is Concat!24038) (reg!15522 r!7292))) b!5413470))

(assert (= (and b!5412272 ((_ is Star!15193) (reg!15522 r!7292))) b!5413471))

(assert (= (and b!5412272 ((_ is Union!15193) (reg!15522 r!7292))) b!5413472))

(declare-fun b!5413477 () Bool)

(declare-fun e!3355626 () Bool)

(declare-fun tp!1495933 () Bool)

(declare-fun tp!1495934 () Bool)

(assert (=> b!5413477 (= e!3355626 (and tp!1495933 tp!1495934))))

(assert (=> b!5412242 (= tp!1495847 e!3355626)))

(assert (= (and b!5412242 ((_ is Cons!61755) (exprs!5077 (h!68204 zl!343)))) b!5413477))

(declare-fun b!5413482 () Bool)

(declare-fun e!3355629 () Bool)

(declare-fun tp!1495937 () Bool)

(assert (=> b!5413482 (= e!3355629 (and tp_is_empty!39639 tp!1495937))))

(assert (=> b!5412251 (= tp!1495844 e!3355629)))

(assert (= (and b!5412251 ((_ is Cons!61754) (t!375101 s!2326))) b!5413482))

(declare-fun b!5413486 () Bool)

(declare-fun e!3355630 () Bool)

(declare-fun tp!1495938 () Bool)

(declare-fun tp!1495941 () Bool)

(assert (=> b!5413486 (= e!3355630 (and tp!1495938 tp!1495941))))

(assert (=> b!5412261 (= tp!1495845 e!3355630)))

(declare-fun b!5413485 () Bool)

(declare-fun tp!1495942 () Bool)

(assert (=> b!5413485 (= e!3355630 tp!1495942)))

(declare-fun b!5413484 () Bool)

(declare-fun tp!1495940 () Bool)

(declare-fun tp!1495939 () Bool)

(assert (=> b!5413484 (= e!3355630 (and tp!1495940 tp!1495939))))

(declare-fun b!5413483 () Bool)

(assert (=> b!5413483 (= e!3355630 tp_is_empty!39639)))

(assert (= (and b!5412261 ((_ is ElementMatch!15193) (regOne!30899 r!7292))) b!5413483))

(assert (= (and b!5412261 ((_ is Concat!24038) (regOne!30899 r!7292))) b!5413484))

(assert (= (and b!5412261 ((_ is Star!15193) (regOne!30899 r!7292))) b!5413485))

(assert (= (and b!5412261 ((_ is Union!15193) (regOne!30899 r!7292))) b!5413486))

(declare-fun b!5413490 () Bool)

(declare-fun e!3355631 () Bool)

(declare-fun tp!1495943 () Bool)

(declare-fun tp!1495946 () Bool)

(assert (=> b!5413490 (= e!3355631 (and tp!1495943 tp!1495946))))

(assert (=> b!5412261 (= tp!1495848 e!3355631)))

(declare-fun b!5413489 () Bool)

(declare-fun tp!1495947 () Bool)

(assert (=> b!5413489 (= e!3355631 tp!1495947)))

(declare-fun b!5413488 () Bool)

(declare-fun tp!1495945 () Bool)

(declare-fun tp!1495944 () Bool)

(assert (=> b!5413488 (= e!3355631 (and tp!1495945 tp!1495944))))

(declare-fun b!5413487 () Bool)

(assert (=> b!5413487 (= e!3355631 tp_is_empty!39639)))

(assert (= (and b!5412261 ((_ is ElementMatch!15193) (regTwo!30899 r!7292))) b!5413487))

(assert (= (and b!5412261 ((_ is Concat!24038) (regTwo!30899 r!7292))) b!5413488))

(assert (= (and b!5412261 ((_ is Star!15193) (regTwo!30899 r!7292))) b!5413489))

(assert (= (and b!5412261 ((_ is Union!15193) (regTwo!30899 r!7292))) b!5413490))

(declare-fun b!5413498 () Bool)

(declare-fun e!3355637 () Bool)

(declare-fun tp!1495952 () Bool)

(assert (=> b!5413498 (= e!3355637 tp!1495952)))

(declare-fun e!3355636 () Bool)

(declare-fun tp!1495953 () Bool)

(declare-fun b!5413497 () Bool)

(assert (=> b!5413497 (= e!3355636 (and (inv!81229 (h!68204 (t!375103 zl!343))) e!3355637 tp!1495953))))

(assert (=> b!5412269 (= tp!1495849 e!3355636)))

(assert (= b!5413497 b!5413498))

(assert (= (and b!5412269 ((_ is Cons!61756) (t!375103 zl!343))) b!5413497))

(declare-fun m!6437570 () Bool)

(assert (=> b!5413497 m!6437570))

(declare-fun b!5413502 () Bool)

(declare-fun e!3355638 () Bool)

(declare-fun tp!1495954 () Bool)

(declare-fun tp!1495957 () Bool)

(assert (=> b!5413502 (= e!3355638 (and tp!1495954 tp!1495957))))

(assert (=> b!5412273 (= tp!1495842 e!3355638)))

(declare-fun b!5413501 () Bool)

(declare-fun tp!1495958 () Bool)

(assert (=> b!5413501 (= e!3355638 tp!1495958)))

(declare-fun b!5413500 () Bool)

(declare-fun tp!1495956 () Bool)

(declare-fun tp!1495955 () Bool)

(assert (=> b!5413500 (= e!3355638 (and tp!1495956 tp!1495955))))

(declare-fun b!5413499 () Bool)

(assert (=> b!5413499 (= e!3355638 tp_is_empty!39639)))

(assert (= (and b!5412273 ((_ is ElementMatch!15193) (regOne!30898 r!7292))) b!5413499))

(assert (= (and b!5412273 ((_ is Concat!24038) (regOne!30898 r!7292))) b!5413500))

(assert (= (and b!5412273 ((_ is Star!15193) (regOne!30898 r!7292))) b!5413501))

(assert (= (and b!5412273 ((_ is Union!15193) (regOne!30898 r!7292))) b!5413502))

(declare-fun b!5413506 () Bool)

(declare-fun e!3355639 () Bool)

(declare-fun tp!1495959 () Bool)

(declare-fun tp!1495962 () Bool)

(assert (=> b!5413506 (= e!3355639 (and tp!1495959 tp!1495962))))

(assert (=> b!5412273 (= tp!1495843 e!3355639)))

(declare-fun b!5413505 () Bool)

(declare-fun tp!1495963 () Bool)

(assert (=> b!5413505 (= e!3355639 tp!1495963)))

(declare-fun b!5413504 () Bool)

(declare-fun tp!1495961 () Bool)

(declare-fun tp!1495960 () Bool)

(assert (=> b!5413504 (= e!3355639 (and tp!1495961 tp!1495960))))

(declare-fun b!5413503 () Bool)

(assert (=> b!5413503 (= e!3355639 tp_is_empty!39639)))

(assert (= (and b!5412273 ((_ is ElementMatch!15193) (regTwo!30898 r!7292))) b!5413503))

(assert (= (and b!5412273 ((_ is Concat!24038) (regTwo!30898 r!7292))) b!5413504))

(assert (= (and b!5412273 ((_ is Star!15193) (regTwo!30898 r!7292))) b!5413505))

(assert (= (and b!5412273 ((_ is Union!15193) (regTwo!30898 r!7292))) b!5413506))

(declare-fun b!5413507 () Bool)

(declare-fun e!3355640 () Bool)

(declare-fun tp!1495964 () Bool)

(declare-fun tp!1495965 () Bool)

(assert (=> b!5413507 (= e!3355640 (and tp!1495964 tp!1495965))))

(assert (=> b!5412243 (= tp!1495840 e!3355640)))

(assert (= (and b!5412243 ((_ is Cons!61755) (exprs!5077 setElem!35261))) b!5413507))

(declare-fun b_lambda!206739 () Bool)

(assert (= b_lambda!206721 (or b!5412258 b_lambda!206739)))

(declare-fun bs!1250462 () Bool)

(declare-fun d!1727618 () Bool)

(assert (= bs!1250462 (and d!1727618 b!5412258)))

(assert (=> bs!1250462 (= (dynLambda!24329 lambda!282734 (h!68204 zl!343)) (derivationStepZipperUp!565 (h!68204 zl!343) (h!68202 s!2326)))))

(assert (=> bs!1250462 m!6436356))

(assert (=> d!1727424 d!1727618))

(declare-fun b_lambda!206741 () Bool)

(assert (= b_lambda!206725 (or b!5412256 b_lambda!206741)))

(declare-fun bs!1250463 () Bool)

(declare-fun d!1727620 () Bool)

(assert (= bs!1250463 (and d!1727620 b!5412256)))

(declare-fun lt!2207586 () Unit!154294)

(assert (=> bs!1250463 (= lt!2207586 (lemmaConcatPreservesForall!218 (exprs!5077 lt!2207317) lt!2207338 lambda!282736))))

(assert (=> bs!1250463 (= (dynLambda!24332 lambda!282735 lt!2207317) (Context!9155 (++!13560 (exprs!5077 lt!2207317) lt!2207338)))))

(declare-fun m!6437572 () Bool)

(assert (=> bs!1250463 m!6437572))

(declare-fun m!6437574 () Bool)

(assert (=> bs!1250463 m!6437574))

(assert (=> d!1727478 d!1727620))

(declare-fun b_lambda!206743 () Bool)

(assert (= b_lambda!206737 (or b!5412258 b_lambda!206743)))

(declare-fun bs!1250464 () Bool)

(declare-fun d!1727622 () Bool)

(assert (= bs!1250464 (and d!1727622 b!5412258)))

(assert (=> bs!1250464 (= (dynLambda!24329 lambda!282734 lt!2207347) (derivationStepZipperUp!565 lt!2207347 (h!68202 s!2326)))))

(assert (=> bs!1250464 m!6436346))

(assert (=> d!1727600 d!1727622))

(declare-fun b_lambda!206745 () Bool)

(assert (= b_lambda!206719 (or b!5412258 b_lambda!206745)))

(declare-fun bs!1250465 () Bool)

(declare-fun d!1727624 () Bool)

(assert (= bs!1250465 (and d!1727624 b!5412258)))

(assert (=> bs!1250465 (= (dynLambda!24329 lambda!282734 lt!2207317) (derivationStepZipperUp!565 lt!2207317 (h!68202 s!2326)))))

(assert (=> bs!1250465 m!6436374))

(assert (=> d!1727372 d!1727624))

(declare-fun b_lambda!206747 () Bool)

(assert (= b_lambda!206717 (or b!5412258 b_lambda!206747)))

(declare-fun bs!1250466 () Bool)

(declare-fun d!1727626 () Bool)

(assert (= bs!1250466 (and d!1727626 b!5412258)))

(assert (=> bs!1250466 (= (dynLambda!24329 lambda!282734 lt!2207302) (derivationStepZipperUp!565 lt!2207302 (h!68202 s!2326)))))

(assert (=> bs!1250466 m!6436376))

(assert (=> d!1727368 d!1727626))

(check-sat (not b!5413500) (not d!1727312) (not b!5413452) (not b!5412983) (not d!1727582) (not bm!387390) (not b!5412756) (not b!5413055) (not b!5413331) (not b!5413415) (not b!5412762) (not b!5413349) (not bm!387394) (not d!1727616) (not b!5413238) (not b!5413364) (not b!5413424) (not b!5413161) (not d!1727562) (not b!5413489) (not d!1727478) (not b!5412981) (not d!1727512) (not d!1727468) (not b!5413299) (not b!5413490) (not b!5413382) (not d!1727476) (not b!5413297) (not d!1727572) (not b!5413423) (not bm!387325) (not bm!387395) (not b!5413301) (not b!5412827) (not bm!387396) (not b!5413448) (not d!1727570) (not d!1727564) (not b!5413505) (not b!5412865) (not b!5412831) (not bm!387398) (not b_lambda!206743) (not b!5412866) (not d!1727374) (not d!1727590) (not d!1727588) (not d!1727594) (not b!5413288) (not d!1727550) tp_is_empty!39639 (not b!5413502) (not bm!387311) (not b!5413367) (not b!5413355) (not b!5413389) (not d!1727472) (not b!5413352) (not d!1727600) (not b!5413291) (not b!5413427) (not bs!1250466) (not b!5412646) (not b!5413357) (not d!1727612) (not b!5413313) (not b!5413458) (not b!5413441) (not bm!387399) (not d!1727576) (not d!1727428) (not b!5413403) (not b!5413302) (not d!1727524) (not d!1727510) (not b!5413160) (not d!1727578) (not d!1727606) (not bm!387306) (not d!1727528) (not d!1727394) (not bm!387382) (not d!1727536) (not b!5412724) (not b!5413328) (not d!1727610) (not b!5413102) (not b!5413498) (not bs!1250462) (not bm!387392) (not d!1727368) (not bm!387326) (not b!5413202) (not b!5413361) (not b!5413342) (not b!5413387) (not d!1727390) (not b!5412861) (not b!5413353) (not d!1727554) (not bm!387385) (not b!5413372) (not b!5413341) (not b!5413022) (not b!5413292) (not b!5413144) (not b!5413504) (not b!5413437) (not b!5413242) (not b!5413157) (not d!1727482) (not b!5413470) (not bm!387372) (not b!5412643) (not d!1727346) (not b!5412978) (not b!5413324) (not d!1727556) (not setNonEmpty!35267) (not d!1727424) (not b!5413416) (not b_lambda!206747) (not b!5413164) (not b!5413395) (not b!5413250) (not b!5412977) (not b!5413054) (not b!5413158) (not d!1727496) (not bs!1250464) (not d!1727534) (not d!1727574) (not b!5413501) (not d!1727580) (not b!5413450) (not d!1727532) (not b!5413151) (not b!5413378) (not d!1727288) (not d!1727382) (not b!5412863) (not bm!387369) (not b!5413404) (not d!1727434) (not d!1727586) (not d!1727544) (not b!5412763) (not b!5413245) (not d!1727324) (not b!5413294) (not b!5413409) (not b_lambda!206741) (not b!5412859) (not b!5413316) (not b!5412836) (not b!5413453) (not d!1727376) (not b!5413381) (not d!1727372) (not b!5413253) (not b!5413319) (not d!1727560) (not b!5413400) (not b!5413482) (not d!1727614) (not b!5413440) (not b!5413322) (not d!1727592) (not b!5413472) (not bm!387367) (not b!5412830) (not bs!1250465) (not b!5413422) (not d!1727540) (not bm!387381) (not b!5413199) (not b!5413471) (not b!5413397) (not d!1727436) (not b!5413488) (not b!5413101) (not bm!387387) (not bm!387380) (not b!5412894) (not b!5413365) (not b!5413359) (not bm!387391) (not b!5412647) (not b!5412975) (not b!5413344) (not d!1727494) (not b!5413477) (not b!5413507) (not bm!387397) (not b!5412864) (not b!5413430) (not b!5412835) (not b!5413451) (not d!1727526) (not d!1727602) (not bm!387298) (not d!1727326) (not d!1727546) (not bm!387373) (not d!1727452) (not b!5413338) (not b!5413240) (not b!5413246) (not d!1727566) (not b!5413356) (not d!1727516) (not b!5413239) (not b!5412758) (not bm!387393) (not d!1727518) (not d!1727548) (not b!5412720) (not d!1727388) (not b!5413485) (not d!1727604) (not b!5412644) (not b!5412725) (not b!5413396) (not b!5413347) (not b!5412650) (not d!1727530) (not b!5413376) (not bm!387328) (not d!1727520) (not b!5413243) (not bm!387332) (not b!5412719) (not b!5412554) (not b!5412867) (not bm!387331) (not bm!387297) (not bm!387307) (not b!5412759) (not b!5413443) (not b_lambda!206745) (not d!1727470) (not d!1727568) (not b!5412648) (not b!5413497) (not d!1727332) (not b!5412757) (not d!1727480) (not b!5413446) (not b!5413317) (not bs!1250463) (not b!5413145) (not bm!387379) (not b!5412594) (not d!1727322) (not b!5413146) (not d!1727370) (not b!5412976) (not b!5413370) (not bm!387366) (not b!5413162) (not d!1727596) (not bm!387389) (not bm!387386) (not d!1727396) (not b!5413406) (not b!5413398) (not b_lambda!206739) (not b!5413484) (not b!5413384) (not b!5413506) (not b!5413486) (not b!5413411) (not b!5413021) (not b!5413307))
(check-sat)
