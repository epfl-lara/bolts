; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572818 () Bool)

(assert start!572818)

(declare-fun b!5474361 () Bool)

(assert (=> b!5474361 true))

(assert (=> b!5474361 true))

(declare-fun lambda!291621 () Int)

(declare-fun lambda!291620 () Int)

(assert (=> b!5474361 (not (= lambda!291621 lambda!291620))))

(assert (=> b!5474361 true))

(assert (=> b!5474361 true))

(declare-fun lambda!291622 () Int)

(assert (=> b!5474361 (not (= lambda!291622 lambda!291620))))

(assert (=> b!5474361 (not (= lambda!291622 lambda!291621))))

(assert (=> b!5474361 true))

(assert (=> b!5474361 true))

(declare-fun b!5474357 () Bool)

(assert (=> b!5474357 true))

(declare-fun b!5474340 () Bool)

(declare-fun e!3388555 () Bool)

(declare-fun lt!2236200 () Bool)

(assert (=> b!5474340 (= e!3388555 lt!2236200)))

(declare-fun b!5474341 () Bool)

(declare-fun e!3388553 () Bool)

(declare-fun e!3388573 () Bool)

(assert (=> b!5474341 (= e!3388553 e!3388573)))

(declare-fun res!2333289 () Bool)

(assert (=> b!5474341 (=> res!2333289 e!3388573)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30964 0))(
  ( (C!30965 (val!25184 Int)) )
))
(declare-datatypes ((Regex!15347 0))(
  ( (ElementMatch!15347 (c!956419 C!30964)) (Concat!24192 (regOne!31206 Regex!15347) (regTwo!31206 Regex!15347)) (EmptyExpr!15347) (Star!15347 (reg!15676 Regex!15347)) (EmptyLang!15347) (Union!15347 (regOne!31207 Regex!15347) (regTwo!31207 Regex!15347)) )
))
(declare-datatypes ((List!62340 0))(
  ( (Nil!62216) (Cons!62216 (h!68664 Regex!15347) (t!375569 List!62340)) )
))
(declare-datatypes ((Context!9462 0))(
  ( (Context!9463 (exprs!5231 List!62340)) )
))
(declare-fun lt!2236202 () (InoxSet Context!9462))

(declare-fun lt!2236204 () (InoxSet Context!9462))

(assert (=> b!5474341 (= res!2333289 (not (= lt!2236202 lt!2236204)))))

(declare-fun r!7292 () Regex!15347)

(declare-datatypes ((List!62341 0))(
  ( (Nil!62217) (Cons!62217 (h!68665 C!30964) (t!375570 List!62341)) )
))
(declare-fun s!2326 () List!62341)

(declare-fun derivationStepZipperDown!773 (Regex!15347 Context!9462 C!30964) (InoxSet Context!9462))

(assert (=> b!5474341 (= lt!2236204 (derivationStepZipperDown!773 r!7292 (Context!9463 Nil!62216) (h!68665 s!2326)))))

(declare-fun derivationStepZipperUp!699 (Context!9462 C!30964) (InoxSet Context!9462))

(assert (=> b!5474341 (= lt!2236202 (derivationStepZipperUp!699 (Context!9463 (Cons!62216 r!7292 Nil!62216)) (h!68665 s!2326)))))

(declare-fun lt!2236226 () (InoxSet Context!9462))

(declare-fun z!1189 () (InoxSet Context!9462))

(declare-fun derivationStepZipper!1542 ((InoxSet Context!9462) C!30964) (InoxSet Context!9462))

(assert (=> b!5474341 (= lt!2236226 (derivationStepZipper!1542 z!1189 (h!68665 s!2326)))))

(declare-fun b!5474342 () Bool)

(declare-fun e!3388574 () Bool)

(declare-fun tp!1504952 () Bool)

(assert (=> b!5474342 (= e!3388574 tp!1504952)))

(declare-fun b!5474343 () Bool)

(declare-fun e!3388569 () Bool)

(declare-fun e!3388559 () Bool)

(assert (=> b!5474343 (= e!3388569 (not e!3388559))))

(declare-fun res!2333304 () Bool)

(assert (=> b!5474343 (=> res!2333304 e!3388559)))

(declare-datatypes ((List!62342 0))(
  ( (Nil!62218) (Cons!62218 (h!68666 Context!9462) (t!375571 List!62342)) )
))
(declare-fun zl!343 () List!62342)

(get-info :version)

(assert (=> b!5474343 (= res!2333304 (not ((_ is Cons!62218) zl!343)))))

(declare-fun lt!2236212 () Bool)

(declare-fun matchRSpec!2450 (Regex!15347 List!62341) Bool)

(assert (=> b!5474343 (= lt!2236212 (matchRSpec!2450 r!7292 s!2326))))

(declare-fun matchR!7532 (Regex!15347 List!62341) Bool)

(assert (=> b!5474343 (= lt!2236212 (matchR!7532 r!7292 s!2326))))

(declare-datatypes ((Unit!155144 0))(
  ( (Unit!155145) )
))
(declare-fun lt!2236218 () Unit!155144)

(declare-fun mainMatchTheorem!2450 (Regex!15347 List!62341) Unit!155144)

(assert (=> b!5474343 (= lt!2236218 (mainMatchTheorem!2450 r!7292 s!2326))))

(declare-fun res!2333301 () Bool)

(declare-fun e!3388565 () Bool)

(assert (=> start!572818 (=> (not res!2333301) (not e!3388565))))

(declare-fun validRegex!7083 (Regex!15347) Bool)

(assert (=> start!572818 (= res!2333301 (validRegex!7083 r!7292))))

(assert (=> start!572818 e!3388565))

(declare-fun e!3388556 () Bool)

(assert (=> start!572818 e!3388556))

(declare-fun condSetEmpty!35953 () Bool)

(assert (=> start!572818 (= condSetEmpty!35953 (= z!1189 ((as const (Array Context!9462 Bool)) false)))))

(declare-fun setRes!35953 () Bool)

(assert (=> start!572818 setRes!35953))

(declare-fun e!3388557 () Bool)

(assert (=> start!572818 e!3388557))

(declare-fun e!3388560 () Bool)

(assert (=> start!572818 e!3388560))

(declare-fun b!5474344 () Bool)

(declare-fun res!2333293 () Bool)

(assert (=> b!5474344 (=> res!2333293 e!3388559)))

(declare-fun isEmpty!34174 (List!62342) Bool)

(assert (=> b!5474344 (= res!2333293 (not (isEmpty!34174 (t!375571 zl!343))))))

(declare-fun b!5474345 () Bool)

(declare-fun tp!1504961 () Bool)

(declare-fun tp!1504953 () Bool)

(assert (=> b!5474345 (= e!3388556 (and tp!1504961 tp!1504953))))

(declare-fun b!5474346 () Bool)

(declare-fun e!3388567 () Bool)

(declare-fun e!3388571 () Bool)

(assert (=> b!5474346 (= e!3388567 e!3388571)))

(declare-fun res!2333291 () Bool)

(assert (=> b!5474346 (=> res!2333291 e!3388571)))

(declare-fun lt!2236216 () List!62342)

(declare-fun unfocusZipper!1089 (List!62342) Regex!15347)

(assert (=> b!5474346 (= res!2333291 (not (= (unfocusZipper!1089 lt!2236216) (reg!15676 r!7292))))))

(declare-fun lt!2236199 () Context!9462)

(assert (=> b!5474346 (= lt!2236216 (Cons!62218 lt!2236199 Nil!62218))))

(declare-fun b!5474347 () Bool)

(declare-fun res!2333290 () Bool)

(assert (=> b!5474347 (=> res!2333290 e!3388559)))

(declare-fun generalisedUnion!1276 (List!62340) Regex!15347)

(declare-fun unfocusZipperList!789 (List!62342) List!62340)

(assert (=> b!5474347 (= res!2333290 (not (= r!7292 (generalisedUnion!1276 (unfocusZipperList!789 zl!343)))))))

(declare-fun b!5474348 () Bool)

(declare-fun res!2333292 () Bool)

(assert (=> b!5474348 (=> res!2333292 e!3388559)))

(assert (=> b!5474348 (= res!2333292 (or ((_ is EmptyExpr!15347) r!7292) ((_ is EmptyLang!15347) r!7292) ((_ is ElementMatch!15347) r!7292) ((_ is Union!15347) r!7292) ((_ is Concat!24192) r!7292)))))

(declare-fun b!5474349 () Bool)

(declare-fun res!2333283 () Bool)

(declare-fun e!3388561 () Bool)

(assert (=> b!5474349 (=> res!2333283 e!3388561)))

(declare-datatypes ((tuple2!65088 0))(
  ( (tuple2!65089 (_1!35847 List!62341) (_2!35847 List!62341)) )
))
(declare-fun lt!2236211 () tuple2!65088)

(assert (=> b!5474349 (= res!2333283 (not (matchR!7532 (reg!15676 r!7292) (_1!35847 lt!2236211))))))

(declare-fun b!5474350 () Bool)

(declare-fun e!3388562 () Bool)

(declare-fun tp!1504959 () Bool)

(assert (=> b!5474350 (= e!3388562 tp!1504959)))

(declare-fun b!5474351 () Bool)

(declare-fun tp!1504954 () Bool)

(declare-fun tp!1504955 () Bool)

(assert (=> b!5474351 (= e!3388556 (and tp!1504954 tp!1504955))))

(declare-fun b!5474352 () Bool)

(declare-fun e!3388566 () Bool)

(assert (=> b!5474352 (= e!3388561 e!3388566)))

(declare-fun res!2333306 () Bool)

(assert (=> b!5474352 (=> res!2333306 e!3388566)))

(assert (=> b!5474352 (= res!2333306 (not (validRegex!7083 r!7292)))))

(declare-fun lt!2236221 () (InoxSet Context!9462))

(declare-fun matchZipper!1565 ((InoxSet Context!9462) List!62341) Bool)

(assert (=> b!5474352 (matchZipper!1565 lt!2236221 (_1!35847 lt!2236211))))

(declare-fun lt!2236206 () Unit!155144)

(declare-fun theoremZipperRegexEquiv!573 ((InoxSet Context!9462) List!62342 Regex!15347 List!62341) Unit!155144)

(assert (=> b!5474352 (= lt!2236206 (theoremZipperRegexEquiv!573 lt!2236221 lt!2236216 (reg!15676 r!7292) (_1!35847 lt!2236211)))))

(declare-fun b!5474353 () Bool)

(declare-fun e!3388564 () Bool)

(assert (=> b!5474353 (= e!3388564 e!3388561)))

(declare-fun res!2333288 () Bool)

(assert (=> b!5474353 (=> res!2333288 e!3388561)))

(declare-fun ++!13684 (List!62341 List!62341) List!62341)

(assert (=> b!5474353 (= res!2333288 (not (= s!2326 (++!13684 (_1!35847 lt!2236211) (_2!35847 lt!2236211)))))))

(declare-datatypes ((Option!15456 0))(
  ( (None!15455) (Some!15455 (v!51484 tuple2!65088)) )
))
(declare-fun lt!2236220 () Option!15456)

(declare-fun get!21451 (Option!15456) tuple2!65088)

(assert (=> b!5474353 (= lt!2236211 (get!21451 lt!2236220))))

(declare-fun b!5474354 () Bool)

(declare-fun e!3388558 () Bool)

(declare-fun e!3388568 () Bool)

(assert (=> b!5474354 (= e!3388558 e!3388568)))

(declare-fun res!2333295 () Bool)

(assert (=> b!5474354 (=> res!2333295 e!3388568)))

(declare-fun lt!2236225 () Bool)

(assert (=> b!5474354 (= res!2333295 (not lt!2236225))))

(declare-fun b!5474355 () Bool)

(declare-fun res!2333282 () Bool)

(assert (=> b!5474355 (=> res!2333282 e!3388571)))

(declare-fun lt!2236208 () Context!9462)

(assert (=> b!5474355 (= res!2333282 (not (= (unfocusZipper!1089 (Cons!62218 lt!2236208 Nil!62218)) r!7292)))))

(declare-fun b!5474356 () Bool)

(declare-fun e!3388570 () Bool)

(assert (=> b!5474356 (= e!3388570 e!3388567)))

(declare-fun res!2333296 () Bool)

(assert (=> b!5474356 (=> res!2333296 e!3388567)))

(declare-fun lt!2236197 () (InoxSet Context!9462))

(assert (=> b!5474356 (= res!2333296 (not (= lt!2236226 (derivationStepZipper!1542 lt!2236197 (h!68665 s!2326)))))))

(declare-fun lambda!291623 () Int)

(declare-fun flatMap!1050 ((InoxSet Context!9462) Int) (InoxSet Context!9462))

(assert (=> b!5474356 (= (flatMap!1050 lt!2236197 lambda!291623) (derivationStepZipperUp!699 lt!2236208 (h!68665 s!2326)))))

(declare-fun lt!2236210 () Unit!155144)

(declare-fun lemmaFlatMapOnSingletonSet!582 ((InoxSet Context!9462) Context!9462 Int) Unit!155144)

(assert (=> b!5474356 (= lt!2236210 (lemmaFlatMapOnSingletonSet!582 lt!2236197 lt!2236208 lambda!291623))))

(assert (=> b!5474356 (= (flatMap!1050 lt!2236221 lambda!291623) (derivationStepZipperUp!699 lt!2236199 (h!68665 s!2326)))))

(declare-fun lt!2236214 () Unit!155144)

(assert (=> b!5474356 (= lt!2236214 (lemmaFlatMapOnSingletonSet!582 lt!2236221 lt!2236199 lambda!291623))))

(declare-fun lt!2236196 () (InoxSet Context!9462))

(assert (=> b!5474356 (= lt!2236196 (derivationStepZipperUp!699 lt!2236208 (h!68665 s!2326)))))

(declare-fun lt!2236207 () (InoxSet Context!9462))

(assert (=> b!5474356 (= lt!2236207 (derivationStepZipperUp!699 lt!2236199 (h!68665 s!2326)))))

(assert (=> b!5474356 (= lt!2236197 (store ((as const (Array Context!9462 Bool)) false) lt!2236208 true))))

(assert (=> b!5474356 (= lt!2236221 (store ((as const (Array Context!9462 Bool)) false) lt!2236199 true))))

(assert (=> b!5474356 (= lt!2236199 (Context!9463 (Cons!62216 (reg!15676 r!7292) Nil!62216)))))

(declare-fun e!3388572 () Bool)

(assert (=> b!5474357 (= e!3388573 e!3388572)))

(declare-fun res!2333309 () Bool)

(assert (=> b!5474357 (=> res!2333309 e!3388572)))

(assert (=> b!5474357 (= res!2333309 (not (= lt!2236226 lt!2236204)))))

(assert (=> b!5474357 (= (flatMap!1050 z!1189 lambda!291623) (derivationStepZipperUp!699 (h!68666 zl!343) (h!68665 s!2326)))))

(declare-fun lt!2236223 () Unit!155144)

(assert (=> b!5474357 (= lt!2236223 (lemmaFlatMapOnSingletonSet!582 z!1189 (h!68666 zl!343) lambda!291623))))

(declare-fun b!5474358 () Bool)

(declare-fun res!2333285 () Bool)

(declare-fun e!3388554 () Bool)

(assert (=> b!5474358 (=> res!2333285 e!3388554)))

(declare-fun lt!2236222 () Regex!15347)

(assert (=> b!5474358 (= res!2333285 (or (not (= lt!2236222 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5474359 () Bool)

(assert (=> b!5474359 (= e!3388554 e!3388570)))

(declare-fun res!2333303 () Bool)

(assert (=> b!5474359 (=> res!2333303 e!3388570)))

(declare-fun lt!2236219 () Context!9462)

(declare-fun lt!2236205 () Regex!15347)

(assert (=> b!5474359 (= res!2333303 (not (= (unfocusZipper!1089 (Cons!62218 lt!2236219 Nil!62218)) lt!2236205)))))

(assert (=> b!5474359 (= lt!2236205 (Concat!24192 (reg!15676 r!7292) r!7292))))

(declare-fun setIsEmpty!35953 () Bool)

(assert (=> setIsEmpty!35953 setRes!35953))

(declare-fun b!5474360 () Bool)

(declare-fun res!2333308 () Bool)

(assert (=> b!5474360 (=> res!2333308 e!3388561)))

(assert (=> b!5474360 (= res!2333308 (not (matchR!7532 r!7292 (_2!35847 lt!2236211))))))

(assert (=> b!5474361 (= e!3388559 e!3388553)))

(declare-fun res!2333302 () Bool)

(assert (=> b!5474361 (=> res!2333302 e!3388553)))

(assert (=> b!5474361 (= res!2333302 (not (= lt!2236212 e!3388555)))))

(declare-fun res!2333299 () Bool)

(assert (=> b!5474361 (=> res!2333299 e!3388555)))

(declare-fun isEmpty!34175 (List!62341) Bool)

(assert (=> b!5474361 (= res!2333299 (isEmpty!34175 s!2326))))

(declare-fun Exists!2526 (Int) Bool)

(assert (=> b!5474361 (= (Exists!2526 lambda!291620) (Exists!2526 lambda!291622))))

(declare-fun lt!2236209 () Unit!155144)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1176 (Regex!15347 Regex!15347 List!62341) Unit!155144)

(assert (=> b!5474361 (= lt!2236209 (lemmaExistCutMatchRandMatchRSpecEquivalent!1176 (reg!15676 r!7292) r!7292 s!2326))))

(assert (=> b!5474361 (= (Exists!2526 lambda!291620) (Exists!2526 lambda!291621))))

(declare-fun lt!2236215 () Unit!155144)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!500 (Regex!15347 List!62341) Unit!155144)

(assert (=> b!5474361 (= lt!2236215 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!500 (reg!15676 r!7292) s!2326))))

(assert (=> b!5474361 (= lt!2236200 (Exists!2526 lambda!291620))))

(declare-fun isDefined!12159 (Option!15456) Bool)

(assert (=> b!5474361 (= lt!2236200 (isDefined!12159 lt!2236220))))

(declare-fun findConcatSeparation!1870 (Regex!15347 Regex!15347 List!62341 List!62341 List!62341) Option!15456)

(assert (=> b!5474361 (= lt!2236220 (findConcatSeparation!1870 (reg!15676 r!7292) r!7292 Nil!62217 s!2326 s!2326))))

(declare-fun lt!2236213 () Unit!155144)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1634 (Regex!15347 Regex!15347 List!62341) Unit!155144)

(assert (=> b!5474361 (= lt!2236213 (lemmaFindConcatSeparationEquivalentToExists!1634 (reg!15676 r!7292) r!7292 s!2326))))

(declare-fun b!5474362 () Bool)

(declare-fun res!2333286 () Bool)

(assert (=> b!5474362 (=> res!2333286 e!3388559)))

(declare-fun generalisedConcat!1016 (List!62340) Regex!15347)

(assert (=> b!5474362 (= res!2333286 (not (= r!7292 (generalisedConcat!1016 (exprs!5231 (h!68666 zl!343))))))))

(declare-fun b!5474363 () Bool)

(declare-fun e!3388563 () Bool)

(assert (=> b!5474363 (= e!3388568 e!3388563)))

(declare-fun res!2333298 () Bool)

(assert (=> b!5474363 (=> (not res!2333298) (not e!3388563))))

(assert (=> b!5474363 (= res!2333298 (= (Exists!2526 lambda!291620) (Exists!2526 lambda!291621)))))

(declare-fun tp!1504956 () Bool)

(declare-fun b!5474364 () Bool)

(declare-fun inv!81614 (Context!9462) Bool)

(assert (=> b!5474364 (= e!3388557 (and (inv!81614 (h!68666 zl!343)) e!3388574 tp!1504956))))

(declare-fun b!5474365 () Bool)

(assert (=> b!5474365 (= e!3388565 e!3388569)))

(declare-fun res!2333284 () Bool)

(assert (=> b!5474365 (=> (not res!2333284) (not e!3388569))))

(assert (=> b!5474365 (= res!2333284 (= r!7292 lt!2236222))))

(assert (=> b!5474365 (= lt!2236222 (unfocusZipper!1089 zl!343))))

(declare-fun tp!1504958 () Bool)

(declare-fun setElem!35953 () Context!9462)

(declare-fun setNonEmpty!35953 () Bool)

(assert (=> setNonEmpty!35953 (= setRes!35953 (and tp!1504958 (inv!81614 setElem!35953) e!3388562))))

(declare-fun setRest!35953 () (InoxSet Context!9462))

(assert (=> setNonEmpty!35953 (= z!1189 ((_ map or) (store ((as const (Array Context!9462 Bool)) false) setElem!35953 true) setRest!35953))))

(declare-fun b!5474366 () Bool)

(declare-fun res!2333287 () Bool)

(assert (=> b!5474366 (=> res!2333287 e!3388553)))

(assert (=> b!5474366 (= res!2333287 ((_ is Nil!62217) s!2326))))

(declare-fun b!5474367 () Bool)

(declare-fun res!2333300 () Bool)

(assert (=> b!5474367 (=> res!2333300 e!3388559)))

(assert (=> b!5474367 (= res!2333300 (not ((_ is Cons!62216) (exprs!5231 (h!68666 zl!343)))))))

(declare-fun b!5474368 () Bool)

(assert (=> b!5474368 (= e!3388563 (= lt!2236200 (Exists!2526 lambda!291620)))))

(declare-fun b!5474369 () Bool)

(assert (=> b!5474369 (= e!3388572 e!3388554)))

(declare-fun res!2333297 () Bool)

(assert (=> b!5474369 (=> res!2333297 e!3388554)))

(assert (=> b!5474369 (= res!2333297 (not (= lt!2236226 (derivationStepZipperDown!773 (reg!15676 r!7292) lt!2236208 (h!68665 s!2326)))))))

(declare-fun lt!2236198 () List!62340)

(assert (=> b!5474369 (= lt!2236208 (Context!9463 lt!2236198))))

(declare-fun lt!2236227 () (InoxSet Context!9462))

(assert (=> b!5474369 (= (flatMap!1050 lt!2236227 lambda!291623) (derivationStepZipperUp!699 lt!2236219 (h!68665 s!2326)))))

(declare-fun lt!2236224 () Unit!155144)

(assert (=> b!5474369 (= lt!2236224 (lemmaFlatMapOnSingletonSet!582 lt!2236227 lt!2236219 lambda!291623))))

(declare-fun lt!2236203 () (InoxSet Context!9462))

(assert (=> b!5474369 (= lt!2236203 (derivationStepZipperUp!699 lt!2236219 (h!68665 s!2326)))))

(assert (=> b!5474369 (= lt!2236227 (store ((as const (Array Context!9462 Bool)) false) lt!2236219 true))))

(assert (=> b!5474369 (= lt!2236219 (Context!9463 (Cons!62216 (reg!15676 r!7292) lt!2236198)))))

(assert (=> b!5474369 (= lt!2236198 (Cons!62216 r!7292 Nil!62216))))

(declare-fun b!5474370 () Bool)

(declare-fun tp_is_empty!39947 () Bool)

(assert (=> b!5474370 (= e!3388556 tp_is_empty!39947)))

(declare-fun b!5474371 () Bool)

(declare-fun res!2333307 () Bool)

(assert (=> b!5474371 (=> (not res!2333307) (not e!3388565))))

(declare-fun toList!9131 ((InoxSet Context!9462)) List!62342)

(assert (=> b!5474371 (= res!2333307 (= (toList!9131 z!1189) zl!343))))

(declare-fun b!5474372 () Bool)

(assert (=> b!5474372 (= e!3388571 e!3388564)))

(declare-fun res!2333305 () Bool)

(assert (=> b!5474372 (=> res!2333305 e!3388564)))

(assert (=> b!5474372 (= res!2333305 (not lt!2236225))))

(assert (=> b!5474372 e!3388558))

(declare-fun res!2333294 () Bool)

(assert (=> b!5474372 (=> (not res!2333294) (not e!3388558))))

(assert (=> b!5474372 (= res!2333294 (= lt!2236225 (matchRSpec!2450 lt!2236205 s!2326)))))

(assert (=> b!5474372 (= lt!2236225 (matchR!7532 lt!2236205 s!2326))))

(declare-fun lt!2236201 () Unit!155144)

(assert (=> b!5474372 (= lt!2236201 (mainMatchTheorem!2450 lt!2236205 s!2326))))

(declare-fun b!5474373 () Bool)

(declare-fun tp!1504960 () Bool)

(assert (=> b!5474373 (= e!3388556 tp!1504960)))

(declare-fun b!5474374 () Bool)

(assert (=> b!5474374 (= e!3388566 true)))

(declare-fun lt!2236217 () List!62342)

(assert (=> b!5474374 (= lt!2236217 (toList!9131 lt!2236197))))

(declare-fun b!5474375 () Bool)

(declare-fun tp!1504957 () Bool)

(assert (=> b!5474375 (= e!3388560 (and tp_is_empty!39947 tp!1504957))))

(declare-fun b!5474376 () Bool)

(declare-fun res!2333310 () Bool)

(assert (=> b!5474376 (=> res!2333310 e!3388554)))

(assert (=> b!5474376 (= res!2333310 (not (= (matchZipper!1565 lt!2236227 s!2326) (matchZipper!1565 (derivationStepZipper!1542 lt!2236227 (h!68665 s!2326)) (t!375570 s!2326)))))))

(assert (= (and start!572818 res!2333301) b!5474371))

(assert (= (and b!5474371 res!2333307) b!5474365))

(assert (= (and b!5474365 res!2333284) b!5474343))

(assert (= (and b!5474343 (not res!2333304)) b!5474344))

(assert (= (and b!5474344 (not res!2333293)) b!5474362))

(assert (= (and b!5474362 (not res!2333286)) b!5474367))

(assert (= (and b!5474367 (not res!2333300)) b!5474347))

(assert (= (and b!5474347 (not res!2333290)) b!5474348))

(assert (= (and b!5474348 (not res!2333292)) b!5474361))

(assert (= (and b!5474361 (not res!2333299)) b!5474340))

(assert (= (and b!5474361 (not res!2333302)) b!5474366))

(assert (= (and b!5474366 (not res!2333287)) b!5474341))

(assert (= (and b!5474341 (not res!2333289)) b!5474357))

(assert (= (and b!5474357 (not res!2333309)) b!5474369))

(assert (= (and b!5474369 (not res!2333297)) b!5474376))

(assert (= (and b!5474376 (not res!2333310)) b!5474358))

(assert (= (and b!5474358 (not res!2333285)) b!5474359))

(assert (= (and b!5474359 (not res!2333303)) b!5474356))

(assert (= (and b!5474356 (not res!2333296)) b!5474346))

(assert (= (and b!5474346 (not res!2333291)) b!5474355))

(assert (= (and b!5474355 (not res!2333282)) b!5474372))

(assert (= (and b!5474372 res!2333294) b!5474354))

(assert (= (and b!5474354 (not res!2333295)) b!5474363))

(assert (= (and b!5474363 res!2333298) b!5474368))

(assert (= (and b!5474372 (not res!2333305)) b!5474353))

(assert (= (and b!5474353 (not res!2333288)) b!5474349))

(assert (= (and b!5474349 (not res!2333283)) b!5474360))

(assert (= (and b!5474360 (not res!2333308)) b!5474352))

(assert (= (and b!5474352 (not res!2333306)) b!5474374))

(assert (= (and start!572818 ((_ is ElementMatch!15347) r!7292)) b!5474370))

(assert (= (and start!572818 ((_ is Concat!24192) r!7292)) b!5474351))

(assert (= (and start!572818 ((_ is Star!15347) r!7292)) b!5474373))

(assert (= (and start!572818 ((_ is Union!15347) r!7292)) b!5474345))

(assert (= (and start!572818 condSetEmpty!35953) setIsEmpty!35953))

(assert (= (and start!572818 (not condSetEmpty!35953)) setNonEmpty!35953))

(assert (= setNonEmpty!35953 b!5474350))

(assert (= b!5474364 b!5474342))

(assert (= (and start!572818 ((_ is Cons!62218) zl!343)) b!5474364))

(assert (= (and start!572818 ((_ is Cons!62217) s!2326)) b!5474375))

(declare-fun m!6491362 () Bool)

(assert (=> b!5474352 m!6491362))

(declare-fun m!6491364 () Bool)

(assert (=> b!5474352 m!6491364))

(declare-fun m!6491366 () Bool)

(assert (=> b!5474352 m!6491366))

(declare-fun m!6491368 () Bool)

(assert (=> b!5474362 m!6491368))

(declare-fun m!6491370 () Bool)

(assert (=> b!5474346 m!6491370))

(declare-fun m!6491372 () Bool)

(assert (=> b!5474360 m!6491372))

(declare-fun m!6491374 () Bool)

(assert (=> b!5474372 m!6491374))

(declare-fun m!6491376 () Bool)

(assert (=> b!5474372 m!6491376))

(declare-fun m!6491378 () Bool)

(assert (=> b!5474372 m!6491378))

(declare-fun m!6491380 () Bool)

(assert (=> b!5474365 m!6491380))

(declare-fun m!6491382 () Bool)

(assert (=> b!5474356 m!6491382))

(declare-fun m!6491384 () Bool)

(assert (=> b!5474356 m!6491384))

(declare-fun m!6491386 () Bool)

(assert (=> b!5474356 m!6491386))

(declare-fun m!6491388 () Bool)

(assert (=> b!5474356 m!6491388))

(declare-fun m!6491390 () Bool)

(assert (=> b!5474356 m!6491390))

(declare-fun m!6491392 () Bool)

(assert (=> b!5474356 m!6491392))

(declare-fun m!6491394 () Bool)

(assert (=> b!5474356 m!6491394))

(declare-fun m!6491396 () Bool)

(assert (=> b!5474356 m!6491396))

(declare-fun m!6491398 () Bool)

(assert (=> b!5474356 m!6491398))

(declare-fun m!6491400 () Bool)

(assert (=> b!5474369 m!6491400))

(declare-fun m!6491402 () Bool)

(assert (=> b!5474369 m!6491402))

(declare-fun m!6491404 () Bool)

(assert (=> b!5474369 m!6491404))

(declare-fun m!6491406 () Bool)

(assert (=> b!5474369 m!6491406))

(declare-fun m!6491408 () Bool)

(assert (=> b!5474369 m!6491408))

(declare-fun m!6491410 () Bool)

(assert (=> b!5474371 m!6491410))

(declare-fun m!6491412 () Bool)

(assert (=> b!5474349 m!6491412))

(declare-fun m!6491414 () Bool)

(assert (=> b!5474368 m!6491414))

(declare-fun m!6491416 () Bool)

(assert (=> b!5474344 m!6491416))

(assert (=> b!5474361 m!6491414))

(declare-fun m!6491418 () Bool)

(assert (=> b!5474361 m!6491418))

(declare-fun m!6491420 () Bool)

(assert (=> b!5474361 m!6491420))

(declare-fun m!6491422 () Bool)

(assert (=> b!5474361 m!6491422))

(assert (=> b!5474361 m!6491414))

(declare-fun m!6491424 () Bool)

(assert (=> b!5474361 m!6491424))

(declare-fun m!6491426 () Bool)

(assert (=> b!5474361 m!6491426))

(declare-fun m!6491428 () Bool)

(assert (=> b!5474361 m!6491428))

(declare-fun m!6491430 () Bool)

(assert (=> b!5474361 m!6491430))

(declare-fun m!6491432 () Bool)

(assert (=> b!5474361 m!6491432))

(assert (=> b!5474361 m!6491414))

(declare-fun m!6491434 () Bool)

(assert (=> b!5474359 m!6491434))

(declare-fun m!6491436 () Bool)

(assert (=> b!5474343 m!6491436))

(declare-fun m!6491438 () Bool)

(assert (=> b!5474343 m!6491438))

(declare-fun m!6491440 () Bool)

(assert (=> b!5474343 m!6491440))

(assert (=> start!572818 m!6491362))

(declare-fun m!6491442 () Bool)

(assert (=> b!5474374 m!6491442))

(declare-fun m!6491444 () Bool)

(assert (=> b!5474364 m!6491444))

(declare-fun m!6491446 () Bool)

(assert (=> b!5474353 m!6491446))

(declare-fun m!6491448 () Bool)

(assert (=> b!5474353 m!6491448))

(declare-fun m!6491450 () Bool)

(assert (=> b!5474376 m!6491450))

(declare-fun m!6491452 () Bool)

(assert (=> b!5474376 m!6491452))

(assert (=> b!5474376 m!6491452))

(declare-fun m!6491454 () Bool)

(assert (=> b!5474376 m!6491454))

(assert (=> b!5474363 m!6491414))

(assert (=> b!5474363 m!6491422))

(declare-fun m!6491456 () Bool)

(assert (=> setNonEmpty!35953 m!6491456))

(declare-fun m!6491458 () Bool)

(assert (=> b!5474355 m!6491458))

(declare-fun m!6491460 () Bool)

(assert (=> b!5474347 m!6491460))

(assert (=> b!5474347 m!6491460))

(declare-fun m!6491462 () Bool)

(assert (=> b!5474347 m!6491462))

(declare-fun m!6491464 () Bool)

(assert (=> b!5474341 m!6491464))

(declare-fun m!6491466 () Bool)

(assert (=> b!5474341 m!6491466))

(declare-fun m!6491468 () Bool)

(assert (=> b!5474341 m!6491468))

(declare-fun m!6491470 () Bool)

(assert (=> b!5474357 m!6491470))

(declare-fun m!6491472 () Bool)

(assert (=> b!5474357 m!6491472))

(declare-fun m!6491474 () Bool)

(assert (=> b!5474357 m!6491474))

(check-sat (not b!5474362) (not b!5474346) (not start!572818) (not b!5474364) (not b!5474368) (not b!5474344) (not b!5474356) (not b!5474374) (not b!5474359) (not b!5474341) (not b!5474372) (not b!5474373) (not b!5474343) (not setNonEmpty!35953) tp_is_empty!39947 (not b!5474349) (not b!5474365) (not b!5474355) (not b!5474350) (not b!5474345) (not b!5474352) (not b!5474369) (not b!5474371) (not b!5474342) (not b!5474360) (not b!5474351) (not b!5474347) (not b!5474361) (not b!5474375) (not b!5474376) (not b!5474353) (not b!5474363) (not b!5474357))
(check-sat)
