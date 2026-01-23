; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!581548 () Bool)

(assert start!581548)

(declare-fun b!5600260 () Bool)

(assert (=> b!5600260 true))

(assert (=> b!5600260 true))

(declare-fun lambda!300803 () Int)

(declare-fun lambda!300802 () Int)

(assert (=> b!5600260 (not (= lambda!300803 lambda!300802))))

(assert (=> b!5600260 true))

(assert (=> b!5600260 true))

(declare-fun b!5600242 () Bool)

(assert (=> b!5600242 true))

(declare-fun b!5600237 () Bool)

(declare-fun e!3454481 () Bool)

(declare-fun tp!1548462 () Bool)

(assert (=> b!5600237 (= e!3454481 tp!1548462)))

(declare-fun b!5600238 () Bool)

(declare-fun res!2375411 () Bool)

(declare-fun e!3454479 () Bool)

(assert (=> b!5600238 (=> res!2375411 e!3454479)))

(declare-datatypes ((C!31452 0))(
  ( (C!31453 (val!25428 Int)) )
))
(declare-datatypes ((Regex!15591 0))(
  ( (ElementMatch!15591 (c!981970 C!31452)) (Concat!24436 (regOne!31694 Regex!15591) (regTwo!31694 Regex!15591)) (EmptyExpr!15591) (Star!15591 (reg!15920 Regex!15591)) (EmptyLang!15591) (Union!15591 (regOne!31695 Regex!15591) (regTwo!31695 Regex!15591)) )
))
(declare-datatypes ((List!63072 0))(
  ( (Nil!62948) (Cons!62948 (h!69396 Regex!15591) (t!376358 List!63072)) )
))
(declare-datatypes ((Context!9950 0))(
  ( (Context!9951 (exprs!5475 List!63072)) )
))
(declare-datatypes ((List!63073 0))(
  ( (Nil!62949) (Cons!62949 (h!69397 Context!9950) (t!376359 List!63073)) )
))
(declare-fun zl!343 () List!63073)

(get-info :version)

(assert (=> b!5600238 (= res!2375411 (not ((_ is Cons!62948) (exprs!5475 (h!69397 zl!343)))))))

(declare-fun b!5600239 () Bool)

(declare-datatypes ((Unit!155820 0))(
  ( (Unit!155821) )
))
(declare-fun e!3454470 () Unit!155820)

(declare-fun Unit!155822 () Unit!155820)

(assert (=> b!5600239 (= e!3454470 Unit!155822)))

(declare-datatypes ((List!63074 0))(
  ( (Nil!62950) (Cons!62950 (h!69398 C!31452) (t!376360 List!63074)) )
))
(declare-fun s!2326 () List!63074)

(declare-fun lt!2257202 () Unit!155820)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2257193 () (InoxSet Context!9950))

(declare-fun lt!2257207 () (InoxSet Context!9950))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!616 ((InoxSet Context!9950) (InoxSet Context!9950) List!63074) Unit!155820)

(assert (=> b!5600239 (= lt!2257202 (lemmaZipperConcatMatchesSameAsBothZippers!616 lt!2257193 lt!2257207 (t!376360 s!2326)))))

(declare-fun res!2375402 () Bool)

(declare-fun lt!2257208 () Bool)

(assert (=> b!5600239 (= res!2375402 lt!2257208)))

(declare-fun e!3454471 () Bool)

(assert (=> b!5600239 (=> res!2375402 e!3454471)))

(declare-fun matchZipper!1729 ((InoxSet Context!9950) List!63074) Bool)

(assert (=> b!5600239 (= (matchZipper!1729 ((_ map or) lt!2257193 lt!2257207) (t!376360 s!2326)) e!3454471)))

(declare-fun b!5600241 () Bool)

(declare-fun e!3454484 () Bool)

(declare-fun tp_is_empty!40435 () Bool)

(declare-fun tp!1548459 () Bool)

(assert (=> b!5600241 (= e!3454484 (and tp_is_empty!40435 tp!1548459))))

(declare-fun e!3454482 () Bool)

(declare-fun e!3454475 () Bool)

(assert (=> b!5600242 (= e!3454482 e!3454475)))

(declare-fun res!2375412 () Bool)

(assert (=> b!5600242 (=> res!2375412 e!3454475)))

(declare-fun r!7292 () Regex!15591)

(assert (=> b!5600242 (= res!2375412 (or (and ((_ is ElementMatch!15591) (regOne!31694 r!7292)) (= (c!981970 (regOne!31694 r!7292)) (h!69398 s!2326))) (not ((_ is Union!15591) (regOne!31694 r!7292)))))))

(declare-fun lt!2257211 () Unit!155820)

(declare-fun e!3454477 () Unit!155820)

(assert (=> b!5600242 (= lt!2257211 e!3454477)))

(declare-fun c!981967 () Bool)

(declare-fun nullable!5623 (Regex!15591) Bool)

(assert (=> b!5600242 (= c!981967 (nullable!5623 (h!69396 (exprs!5475 (h!69397 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!9950))

(declare-fun lambda!300804 () Int)

(declare-fun flatMap!1204 ((InoxSet Context!9950) Int) (InoxSet Context!9950))

(declare-fun derivationStepZipperUp!859 (Context!9950 C!31452) (InoxSet Context!9950))

(assert (=> b!5600242 (= (flatMap!1204 z!1189 lambda!300804) (derivationStepZipperUp!859 (h!69397 zl!343) (h!69398 s!2326)))))

(declare-fun lt!2257190 () Unit!155820)

(declare-fun lemmaFlatMapOnSingletonSet!736 ((InoxSet Context!9950) Context!9950 Int) Unit!155820)

(assert (=> b!5600242 (= lt!2257190 (lemmaFlatMapOnSingletonSet!736 z!1189 (h!69397 zl!343) lambda!300804))))

(declare-fun lt!2257206 () Context!9950)

(assert (=> b!5600242 (= lt!2257207 (derivationStepZipperUp!859 lt!2257206 (h!69398 s!2326)))))

(declare-fun lt!2257196 () (InoxSet Context!9950))

(declare-fun derivationStepZipperDown!933 (Regex!15591 Context!9950 C!31452) (InoxSet Context!9950))

(assert (=> b!5600242 (= lt!2257196 (derivationStepZipperDown!933 (h!69396 (exprs!5475 (h!69397 zl!343))) lt!2257206 (h!69398 s!2326)))))

(assert (=> b!5600242 (= lt!2257206 (Context!9951 (t!376358 (exprs!5475 (h!69397 zl!343)))))))

(declare-fun lt!2257210 () (InoxSet Context!9950))

(assert (=> b!5600242 (= lt!2257210 (derivationStepZipperUp!859 (Context!9951 (Cons!62948 (h!69396 (exprs!5475 (h!69397 zl!343))) (t!376358 (exprs!5475 (h!69397 zl!343))))) (h!69398 s!2326)))))

(declare-fun b!5600243 () Bool)

(assert (=> b!5600243 (= e!3454471 (matchZipper!1729 lt!2257207 (t!376360 s!2326)))))

(declare-fun b!5600244 () Bool)

(declare-fun e!3454476 () Bool)

(assert (=> b!5600244 (= e!3454476 (matchZipper!1729 lt!2257207 (t!376360 s!2326)))))

(declare-fun b!5600245 () Bool)

(declare-fun e!3454466 () Bool)

(assert (=> b!5600245 (= e!3454475 e!3454466)))

(declare-fun res!2375404 () Bool)

(assert (=> b!5600245 (=> res!2375404 e!3454466)))

(declare-fun lt!2257184 () (InoxSet Context!9950))

(assert (=> b!5600245 (= res!2375404 (not (= lt!2257196 lt!2257184)))))

(declare-fun lt!2257212 () (InoxSet Context!9950))

(assert (=> b!5600245 (= lt!2257184 ((_ map or) lt!2257193 lt!2257212))))

(assert (=> b!5600245 (= lt!2257212 (derivationStepZipperDown!933 (regTwo!31695 (regOne!31694 r!7292)) lt!2257206 (h!69398 s!2326)))))

(assert (=> b!5600245 (= lt!2257193 (derivationStepZipperDown!933 (regOne!31695 (regOne!31694 r!7292)) lt!2257206 (h!69398 s!2326)))))

(declare-fun b!5600246 () Bool)

(declare-fun res!2375403 () Bool)

(assert (=> b!5600246 (=> res!2375403 e!3454479)))

(assert (=> b!5600246 (= res!2375403 (or ((_ is EmptyExpr!15591) r!7292) ((_ is EmptyLang!15591) r!7292) ((_ is ElementMatch!15591) r!7292) ((_ is Union!15591) r!7292) (not ((_ is Concat!24436) r!7292))))))

(declare-fun b!5600247 () Bool)

(declare-fun res!2375413 () Bool)

(declare-fun e!3454468 () Bool)

(assert (=> b!5600247 (=> (not res!2375413) (not e!3454468))))

(declare-fun toList!9375 ((InoxSet Context!9950)) List!63073)

(assert (=> b!5600247 (= res!2375413 (= (toList!9375 z!1189) zl!343))))

(declare-fun b!5600248 () Bool)

(assert (=> b!5600248 (= e!3454481 tp_is_empty!40435)))

(declare-fun b!5600249 () Bool)

(declare-fun e!3454478 () Unit!155820)

(declare-fun Unit!155823 () Unit!155820)

(assert (=> b!5600249 (= e!3454478 Unit!155823)))

(declare-fun lt!2257195 () Unit!155820)

(assert (=> b!5600249 (= lt!2257195 (lemmaZipperConcatMatchesSameAsBothZippers!616 lt!2257212 lt!2257207 (t!376360 s!2326)))))

(declare-fun res!2375398 () Bool)

(assert (=> b!5600249 (= res!2375398 (matchZipper!1729 lt!2257212 (t!376360 s!2326)))))

(assert (=> b!5600249 (=> res!2375398 e!3454476)))

(assert (=> b!5600249 (= (matchZipper!1729 ((_ map or) lt!2257212 lt!2257207) (t!376360 s!2326)) e!3454476)))

(declare-fun b!5600250 () Bool)

(declare-fun tp!1548466 () Bool)

(declare-fun tp!1548465 () Bool)

(assert (=> b!5600250 (= e!3454481 (and tp!1548466 tp!1548465))))

(declare-fun e!3454480 () Bool)

(declare-fun b!5600251 () Bool)

(declare-fun tp!1548464 () Bool)

(declare-fun e!3454467 () Bool)

(declare-fun inv!82224 (Context!9950) Bool)

(assert (=> b!5600251 (= e!3454480 (and (inv!82224 (h!69397 zl!343)) e!3454467 tp!1548464))))

(declare-fun b!5600252 () Bool)

(declare-fun tp!1548460 () Bool)

(declare-fun tp!1548463 () Bool)

(assert (=> b!5600252 (= e!3454481 (and tp!1548460 tp!1548463))))

(declare-fun b!5600253 () Bool)

(declare-fun e!3454473 () Bool)

(declare-fun e!3454472 () Bool)

(assert (=> b!5600253 (= e!3454473 e!3454472)))

(declare-fun res!2375397 () Bool)

(assert (=> b!5600253 (=> res!2375397 e!3454472)))

(declare-fun e!3454486 () Bool)

(assert (=> b!5600253 (= res!2375397 (not (= (matchZipper!1729 z!1189 s!2326) e!3454486)))))

(declare-fun res!2375409 () Bool)

(assert (=> b!5600253 (=> res!2375409 e!3454486)))

(declare-fun lt!2257191 () (InoxSet Context!9950))

(assert (=> b!5600253 (= res!2375409 (matchZipper!1729 lt!2257191 s!2326))))

(declare-fun lt!2257189 () Unit!155820)

(assert (=> b!5600253 (= lt!2257189 e!3454478)))

(declare-fun c!981969 () Bool)

(assert (=> b!5600253 (= c!981969 (nullable!5623 (regTwo!31695 (regOne!31694 r!7292))))))

(declare-fun lt!2257185 () (InoxSet Context!9950))

(declare-fun lt!2257203 () Context!9950)

(assert (=> b!5600253 (= (flatMap!1204 lt!2257185 lambda!300804) (derivationStepZipperUp!859 lt!2257203 (h!69398 s!2326)))))

(declare-fun lt!2257187 () Unit!155820)

(assert (=> b!5600253 (= lt!2257187 (lemmaFlatMapOnSingletonSet!736 lt!2257185 lt!2257203 lambda!300804))))

(declare-fun lt!2257192 () (InoxSet Context!9950))

(assert (=> b!5600253 (= lt!2257192 (derivationStepZipperUp!859 lt!2257203 (h!69398 s!2326)))))

(declare-fun lt!2257188 () Unit!155820)

(assert (=> b!5600253 (= lt!2257188 e!3454470)))

(declare-fun c!981968 () Bool)

(assert (=> b!5600253 (= c!981968 (nullable!5623 (regOne!31695 (regOne!31694 r!7292))))))

(declare-fun lt!2257200 () Context!9950)

(assert (=> b!5600253 (= (flatMap!1204 lt!2257191 lambda!300804) (derivationStepZipperUp!859 lt!2257200 (h!69398 s!2326)))))

(declare-fun lt!2257194 () Unit!155820)

(assert (=> b!5600253 (= lt!2257194 (lemmaFlatMapOnSingletonSet!736 lt!2257191 lt!2257200 lambda!300804))))

(declare-fun lt!2257209 () (InoxSet Context!9950))

(assert (=> b!5600253 (= lt!2257209 (derivationStepZipperUp!859 lt!2257200 (h!69398 s!2326)))))

(assert (=> b!5600253 (= lt!2257185 (store ((as const (Array Context!9950 Bool)) false) lt!2257203 true))))

(assert (=> b!5600253 (= lt!2257203 (Context!9951 (Cons!62948 (regTwo!31695 (regOne!31694 r!7292)) (t!376358 (exprs!5475 (h!69397 zl!343))))))))

(assert (=> b!5600253 (= lt!2257191 (store ((as const (Array Context!9950 Bool)) false) lt!2257200 true))))

(assert (=> b!5600253 (= lt!2257200 (Context!9951 (Cons!62948 (regOne!31695 (regOne!31694 r!7292)) (t!376358 (exprs!5475 (h!69397 zl!343))))))))

(declare-fun b!5600254 () Bool)

(declare-fun res!2375407 () Bool)

(assert (=> b!5600254 (=> res!2375407 e!3454479)))

(declare-fun isEmpty!34770 (List!63073) Bool)

(assert (=> b!5600254 (= res!2375407 (not (isEmpty!34770 (t!376359 zl!343))))))

(declare-fun b!5600255 () Bool)

(declare-fun res!2375405 () Bool)

(assert (=> b!5600255 (=> res!2375405 e!3454482)))

(declare-fun isEmpty!34771 (List!63072) Bool)

(assert (=> b!5600255 (= res!2375405 (isEmpty!34771 (t!376358 (exprs!5475 (h!69397 zl!343)))))))

(declare-fun b!5600256 () Bool)

(declare-fun Unit!155824 () Unit!155820)

(assert (=> b!5600256 (= e!3454477 Unit!155824)))

(declare-fun b!5600257 () Bool)

(declare-fun e!3454474 () Bool)

(declare-fun tp!1548461 () Bool)

(assert (=> b!5600257 (= e!3454474 tp!1548461)))

(declare-fun res!2375400 () Bool)

(assert (=> start!581548 (=> (not res!2375400) (not e!3454468))))

(declare-fun validRegex!7327 (Regex!15591) Bool)

(assert (=> start!581548 (= res!2375400 (validRegex!7327 r!7292))))

(assert (=> start!581548 e!3454468))

(assert (=> start!581548 e!3454481))

(declare-fun condSetEmpty!37369 () Bool)

(assert (=> start!581548 (= condSetEmpty!37369 (= z!1189 ((as const (Array Context!9950 Bool)) false)))))

(declare-fun setRes!37369 () Bool)

(assert (=> start!581548 setRes!37369))

(assert (=> start!581548 e!3454480))

(assert (=> start!581548 e!3454484))

(declare-fun b!5600240 () Bool)

(assert (=> b!5600240 (= e!3454466 e!3454473)))

(declare-fun res!2375401 () Bool)

(assert (=> b!5600240 (=> res!2375401 e!3454473)))

(declare-fun e!3454465 () Bool)

(assert (=> b!5600240 (= res!2375401 e!3454465)))

(declare-fun res!2375406 () Bool)

(assert (=> b!5600240 (=> (not res!2375406) (not e!3454465))))

(assert (=> b!5600240 (= res!2375406 (not (= (matchZipper!1729 lt!2257196 (t!376360 s!2326)) lt!2257208)))))

(declare-fun e!3454483 () Bool)

(assert (=> b!5600240 (= (matchZipper!1729 lt!2257184 (t!376360 s!2326)) e!3454483)))

(declare-fun res!2375396 () Bool)

(assert (=> b!5600240 (=> res!2375396 e!3454483)))

(assert (=> b!5600240 (= res!2375396 lt!2257208)))

(assert (=> b!5600240 (= lt!2257208 (matchZipper!1729 lt!2257193 (t!376360 s!2326)))))

(declare-fun lt!2257201 () Unit!155820)

(assert (=> b!5600240 (= lt!2257201 (lemmaZipperConcatMatchesSameAsBothZippers!616 lt!2257193 lt!2257212 (t!376360 s!2326)))))

(declare-fun lt!2257186 () Regex!15591)

(declare-fun b!5600258 () Bool)

(assert (=> b!5600258 (= e!3454472 (or (not (= lt!2257186 r!7292)) (= (exprs!5475 (h!69397 zl!343)) (Cons!62948 (regOne!31694 r!7292) (t!376358 (exprs!5475 (h!69397 zl!343)))))))))

(declare-fun b!5600259 () Bool)

(declare-fun e!3454469 () Bool)

(assert (=> b!5600259 (= e!3454468 e!3454469)))

(declare-fun res!2375399 () Bool)

(assert (=> b!5600259 (=> (not res!2375399) (not e!3454469))))

(assert (=> b!5600259 (= res!2375399 (= r!7292 lt!2257186))))

(declare-fun unfocusZipper!1333 (List!63073) Regex!15591)

(assert (=> b!5600259 (= lt!2257186 (unfocusZipper!1333 zl!343))))

(assert (=> b!5600260 (= e!3454479 e!3454482)))

(declare-fun res!2375416 () Bool)

(assert (=> b!5600260 (=> res!2375416 e!3454482)))

(declare-fun lt!2257183 () Bool)

(declare-fun lt!2257199 () Bool)

(assert (=> b!5600260 (= res!2375416 (or (not (= lt!2257183 lt!2257199)) ((_ is Nil!62950) s!2326)))))

(declare-fun Exists!2691 (Int) Bool)

(assert (=> b!5600260 (= (Exists!2691 lambda!300802) (Exists!2691 lambda!300803))))

(declare-fun lt!2257205 () Unit!155820)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1320 (Regex!15591 Regex!15591 List!63074) Unit!155820)

(assert (=> b!5600260 (= lt!2257205 (lemmaExistCutMatchRandMatchRSpecEquivalent!1320 (regOne!31694 r!7292) (regTwo!31694 r!7292) s!2326))))

(assert (=> b!5600260 (= lt!2257199 (Exists!2691 lambda!300802))))

(declare-datatypes ((tuple2!65376 0))(
  ( (tuple2!65377 (_1!35991 List!63074) (_2!35991 List!63074)) )
))
(declare-datatypes ((Option!15600 0))(
  ( (None!15599) (Some!15599 (v!51640 tuple2!65376)) )
))
(declare-fun isDefined!12303 (Option!15600) Bool)

(declare-fun findConcatSeparation!2014 (Regex!15591 Regex!15591 List!63074 List!63074 List!63074) Option!15600)

(assert (=> b!5600260 (= lt!2257199 (isDefined!12303 (findConcatSeparation!2014 (regOne!31694 r!7292) (regTwo!31694 r!7292) Nil!62950 s!2326 s!2326)))))

(declare-fun lt!2257204 () Unit!155820)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1778 (Regex!15591 Regex!15591 List!63074) Unit!155820)

(assert (=> b!5600260 (= lt!2257204 (lemmaFindConcatSeparationEquivalentToExists!1778 (regOne!31694 r!7292) (regTwo!31694 r!7292) s!2326))))

(declare-fun b!5600261 () Bool)

(declare-fun Unit!155825 () Unit!155820)

(assert (=> b!5600261 (= e!3454477 Unit!155825)))

(declare-fun lt!2257197 () Unit!155820)

(assert (=> b!5600261 (= lt!2257197 (lemmaZipperConcatMatchesSameAsBothZippers!616 lt!2257196 lt!2257207 (t!376360 s!2326)))))

(declare-fun res!2375408 () Bool)

(assert (=> b!5600261 (= res!2375408 (matchZipper!1729 lt!2257196 (t!376360 s!2326)))))

(declare-fun e!3454485 () Bool)

(assert (=> b!5600261 (=> res!2375408 e!3454485)))

(assert (=> b!5600261 (= (matchZipper!1729 ((_ map or) lt!2257196 lt!2257207) (t!376360 s!2326)) e!3454485)))

(declare-fun b!5600262 () Bool)

(assert (=> b!5600262 (= e!3454486 (matchZipper!1729 lt!2257185 s!2326))))

(declare-fun b!5600263 () Bool)

(assert (=> b!5600263 (= e!3454465 (not (matchZipper!1729 lt!2257212 (t!376360 s!2326))))))

(declare-fun b!5600264 () Bool)

(assert (=> b!5600264 (= e!3454485 (matchZipper!1729 lt!2257207 (t!376360 s!2326)))))

(declare-fun b!5600265 () Bool)

(declare-fun Unit!155826 () Unit!155820)

(assert (=> b!5600265 (= e!3454478 Unit!155826)))

(declare-fun b!5600266 () Bool)

(declare-fun res!2375410 () Bool)

(assert (=> b!5600266 (=> res!2375410 e!3454479)))

(declare-fun generalisedUnion!1454 (List!63072) Regex!15591)

(declare-fun unfocusZipperList!1019 (List!63073) List!63072)

(assert (=> b!5600266 (= res!2375410 (not (= r!7292 (generalisedUnion!1454 (unfocusZipperList!1019 zl!343)))))))

(declare-fun b!5600267 () Bool)

(assert (=> b!5600267 (= e!3454483 (matchZipper!1729 lt!2257212 (t!376360 s!2326)))))

(declare-fun b!5600268 () Bool)

(declare-fun Unit!155827 () Unit!155820)

(assert (=> b!5600268 (= e!3454470 Unit!155827)))

(declare-fun setNonEmpty!37369 () Bool)

(declare-fun tp!1548467 () Bool)

(declare-fun setElem!37369 () Context!9950)

(assert (=> setNonEmpty!37369 (= setRes!37369 (and tp!1548467 (inv!82224 setElem!37369) e!3454474))))

(declare-fun setRest!37369 () (InoxSet Context!9950))

(assert (=> setNonEmpty!37369 (= z!1189 ((_ map or) (store ((as const (Array Context!9950 Bool)) false) setElem!37369 true) setRest!37369))))

(declare-fun setIsEmpty!37369 () Bool)

(assert (=> setIsEmpty!37369 setRes!37369))

(declare-fun b!5600269 () Bool)

(declare-fun res!2375414 () Bool)

(assert (=> b!5600269 (=> res!2375414 e!3454479)))

(declare-fun generalisedConcat!1206 (List!63072) Regex!15591)

(assert (=> b!5600269 (= res!2375414 (not (= r!7292 (generalisedConcat!1206 (exprs!5475 (h!69397 zl!343))))))))

(declare-fun b!5600270 () Bool)

(declare-fun tp!1548458 () Bool)

(assert (=> b!5600270 (= e!3454467 tp!1548458)))

(declare-fun b!5600271 () Bool)

(assert (=> b!5600271 (= e!3454469 (not e!3454479))))

(declare-fun res!2375415 () Bool)

(assert (=> b!5600271 (=> res!2375415 e!3454479)))

(assert (=> b!5600271 (= res!2375415 (not ((_ is Cons!62949) zl!343)))))

(declare-fun matchRSpec!2694 (Regex!15591 List!63074) Bool)

(assert (=> b!5600271 (= lt!2257183 (matchRSpec!2694 r!7292 s!2326))))

(declare-fun matchR!7776 (Regex!15591 List!63074) Bool)

(assert (=> b!5600271 (= lt!2257183 (matchR!7776 r!7292 s!2326))))

(declare-fun lt!2257198 () Unit!155820)

(declare-fun mainMatchTheorem!2694 (Regex!15591 List!63074) Unit!155820)

(assert (=> b!5600271 (= lt!2257198 (mainMatchTheorem!2694 r!7292 s!2326))))

(assert (= (and start!581548 res!2375400) b!5600247))

(assert (= (and b!5600247 res!2375413) b!5600259))

(assert (= (and b!5600259 res!2375399) b!5600271))

(assert (= (and b!5600271 (not res!2375415)) b!5600254))

(assert (= (and b!5600254 (not res!2375407)) b!5600269))

(assert (= (and b!5600269 (not res!2375414)) b!5600238))

(assert (= (and b!5600238 (not res!2375411)) b!5600266))

(assert (= (and b!5600266 (not res!2375410)) b!5600246))

(assert (= (and b!5600246 (not res!2375403)) b!5600260))

(assert (= (and b!5600260 (not res!2375416)) b!5600255))

(assert (= (and b!5600255 (not res!2375405)) b!5600242))

(assert (= (and b!5600242 c!981967) b!5600261))

(assert (= (and b!5600242 (not c!981967)) b!5600256))

(assert (= (and b!5600261 (not res!2375408)) b!5600264))

(assert (= (and b!5600242 (not res!2375412)) b!5600245))

(assert (= (and b!5600245 (not res!2375404)) b!5600240))

(assert (= (and b!5600240 (not res!2375396)) b!5600267))

(assert (= (and b!5600240 res!2375406) b!5600263))

(assert (= (and b!5600240 (not res!2375401)) b!5600253))

(assert (= (and b!5600253 c!981968) b!5600239))

(assert (= (and b!5600253 (not c!981968)) b!5600268))

(assert (= (and b!5600239 (not res!2375402)) b!5600243))

(assert (= (and b!5600253 c!981969) b!5600249))

(assert (= (and b!5600253 (not c!981969)) b!5600265))

(assert (= (and b!5600249 (not res!2375398)) b!5600244))

(assert (= (and b!5600253 (not res!2375409)) b!5600262))

(assert (= (and b!5600253 (not res!2375397)) b!5600258))

(assert (= (and start!581548 ((_ is ElementMatch!15591) r!7292)) b!5600248))

(assert (= (and start!581548 ((_ is Concat!24436) r!7292)) b!5600250))

(assert (= (and start!581548 ((_ is Star!15591) r!7292)) b!5600237))

(assert (= (and start!581548 ((_ is Union!15591) r!7292)) b!5600252))

(assert (= (and start!581548 condSetEmpty!37369) setIsEmpty!37369))

(assert (= (and start!581548 (not condSetEmpty!37369)) setNonEmpty!37369))

(assert (= setNonEmpty!37369 b!5600257))

(assert (= b!5600251 b!5600270))

(assert (= (and start!581548 ((_ is Cons!62949) zl!343)) b!5600251))

(assert (= (and start!581548 ((_ is Cons!62950) s!2326)) b!5600241))

(declare-fun m!6578836 () Bool)

(assert (=> b!5600260 m!6578836))

(declare-fun m!6578838 () Bool)

(assert (=> b!5600260 m!6578838))

(declare-fun m!6578840 () Bool)

(assert (=> b!5600260 m!6578840))

(declare-fun m!6578842 () Bool)

(assert (=> b!5600260 m!6578842))

(assert (=> b!5600260 m!6578838))

(declare-fun m!6578844 () Bool)

(assert (=> b!5600260 m!6578844))

(assert (=> b!5600260 m!6578840))

(declare-fun m!6578846 () Bool)

(assert (=> b!5600260 m!6578846))

(declare-fun m!6578848 () Bool)

(assert (=> b!5600255 m!6578848))

(declare-fun m!6578850 () Bool)

(assert (=> b!5600259 m!6578850))

(declare-fun m!6578852 () Bool)

(assert (=> b!5600264 m!6578852))

(declare-fun m!6578854 () Bool)

(assert (=> b!5600261 m!6578854))

(declare-fun m!6578856 () Bool)

(assert (=> b!5600261 m!6578856))

(declare-fun m!6578858 () Bool)

(assert (=> b!5600261 m!6578858))

(declare-fun m!6578860 () Bool)

(assert (=> b!5600247 m!6578860))

(declare-fun m!6578862 () Bool)

(assert (=> b!5600254 m!6578862))

(declare-fun m!6578864 () Bool)

(assert (=> b!5600269 m!6578864))

(assert (=> b!5600244 m!6578852))

(declare-fun m!6578866 () Bool)

(assert (=> setNonEmpty!37369 m!6578866))

(declare-fun m!6578868 () Bool)

(assert (=> b!5600267 m!6578868))

(declare-fun m!6578870 () Bool)

(assert (=> b!5600249 m!6578870))

(assert (=> b!5600249 m!6578868))

(declare-fun m!6578872 () Bool)

(assert (=> b!5600249 m!6578872))

(declare-fun m!6578874 () Bool)

(assert (=> b!5600251 m!6578874))

(assert (=> b!5600240 m!6578856))

(declare-fun m!6578876 () Bool)

(assert (=> b!5600240 m!6578876))

(declare-fun m!6578878 () Bool)

(assert (=> b!5600240 m!6578878))

(declare-fun m!6578880 () Bool)

(assert (=> b!5600240 m!6578880))

(declare-fun m!6578882 () Bool)

(assert (=> b!5600242 m!6578882))

(declare-fun m!6578884 () Bool)

(assert (=> b!5600242 m!6578884))

(declare-fun m!6578886 () Bool)

(assert (=> b!5600242 m!6578886))

(declare-fun m!6578888 () Bool)

(assert (=> b!5600242 m!6578888))

(declare-fun m!6578890 () Bool)

(assert (=> b!5600242 m!6578890))

(declare-fun m!6578892 () Bool)

(assert (=> b!5600242 m!6578892))

(declare-fun m!6578894 () Bool)

(assert (=> b!5600242 m!6578894))

(assert (=> b!5600263 m!6578868))

(declare-fun m!6578896 () Bool)

(assert (=> b!5600266 m!6578896))

(assert (=> b!5600266 m!6578896))

(declare-fun m!6578898 () Bool)

(assert (=> b!5600266 m!6578898))

(declare-fun m!6578900 () Bool)

(assert (=> b!5600245 m!6578900))

(declare-fun m!6578902 () Bool)

(assert (=> b!5600245 m!6578902))

(assert (=> b!5600243 m!6578852))

(declare-fun m!6578904 () Bool)

(assert (=> b!5600239 m!6578904))

(declare-fun m!6578906 () Bool)

(assert (=> b!5600239 m!6578906))

(declare-fun m!6578908 () Bool)

(assert (=> b!5600253 m!6578908))

(declare-fun m!6578910 () Bool)

(assert (=> b!5600253 m!6578910))

(declare-fun m!6578912 () Bool)

(assert (=> b!5600253 m!6578912))

(declare-fun m!6578914 () Bool)

(assert (=> b!5600253 m!6578914))

(declare-fun m!6578916 () Bool)

(assert (=> b!5600253 m!6578916))

(declare-fun m!6578918 () Bool)

(assert (=> b!5600253 m!6578918))

(declare-fun m!6578920 () Bool)

(assert (=> b!5600253 m!6578920))

(declare-fun m!6578922 () Bool)

(assert (=> b!5600253 m!6578922))

(declare-fun m!6578924 () Bool)

(assert (=> b!5600253 m!6578924))

(declare-fun m!6578926 () Bool)

(assert (=> b!5600253 m!6578926))

(declare-fun m!6578928 () Bool)

(assert (=> b!5600253 m!6578928))

(declare-fun m!6578930 () Bool)

(assert (=> b!5600253 m!6578930))

(declare-fun m!6578932 () Bool)

(assert (=> b!5600271 m!6578932))

(declare-fun m!6578934 () Bool)

(assert (=> b!5600271 m!6578934))

(declare-fun m!6578936 () Bool)

(assert (=> b!5600271 m!6578936))

(declare-fun m!6578938 () Bool)

(assert (=> start!581548 m!6578938))

(declare-fun m!6578940 () Bool)

(assert (=> b!5600262 m!6578940))

(check-sat (not b!5600240) (not b!5600242) (not b!5600264) (not b!5600254) (not b!5600241) (not b!5600252) (not b!5600245) (not b!5600253) (not b!5600259) (not b!5600269) (not b!5600271) (not b!5600266) (not b!5600249) (not b!5600263) (not b!5600250) (not b!5600260) (not b!5600237) (not b!5600261) (not b!5600262) (not b!5600251) (not start!581548) (not b!5600270) tp_is_empty!40435 (not b!5600244) (not b!5600255) (not b!5600243) (not b!5600239) (not setNonEmpty!37369) (not b!5600267) (not b!5600247) (not b!5600257))
(check-sat)
(get-model)

(declare-fun d!1770197 () Bool)

(declare-fun lt!2257243 () Regex!15591)

(assert (=> d!1770197 (validRegex!7327 lt!2257243)))

(assert (=> d!1770197 (= lt!2257243 (generalisedUnion!1454 (unfocusZipperList!1019 zl!343)))))

(assert (=> d!1770197 (= (unfocusZipper!1333 zl!343) lt!2257243)))

(declare-fun bs!1294811 () Bool)

(assert (= bs!1294811 d!1770197))

(declare-fun m!6579152 () Bool)

(assert (=> bs!1294811 m!6579152))

(assert (=> bs!1294811 m!6578896))

(assert (=> bs!1294811 m!6578896))

(assert (=> bs!1294811 m!6578898))

(assert (=> b!5600259 d!1770197))

(declare-fun d!1770199 () Bool)

(declare-fun e!3454630 () Bool)

(assert (=> d!1770199 (= (matchZipper!1729 ((_ map or) lt!2257196 lt!2257207) (t!376360 s!2326)) e!3454630)))

(declare-fun res!2375501 () Bool)

(assert (=> d!1770199 (=> res!2375501 e!3454630)))

(assert (=> d!1770199 (= res!2375501 (matchZipper!1729 lt!2257196 (t!376360 s!2326)))))

(declare-fun lt!2257246 () Unit!155820)

(declare-fun choose!42470 ((InoxSet Context!9950) (InoxSet Context!9950) List!63074) Unit!155820)

(assert (=> d!1770199 (= lt!2257246 (choose!42470 lt!2257196 lt!2257207 (t!376360 s!2326)))))

(assert (=> d!1770199 (= (lemmaZipperConcatMatchesSameAsBothZippers!616 lt!2257196 lt!2257207 (t!376360 s!2326)) lt!2257246)))

(declare-fun b!5600516 () Bool)

(assert (=> b!5600516 (= e!3454630 (matchZipper!1729 lt!2257207 (t!376360 s!2326)))))

(assert (= (and d!1770199 (not res!2375501)) b!5600516))

(assert (=> d!1770199 m!6578858))

(assert (=> d!1770199 m!6578856))

(declare-fun m!6579160 () Bool)

(assert (=> d!1770199 m!6579160))

(assert (=> b!5600516 m!6578852))

(assert (=> b!5600261 d!1770199))

(declare-fun d!1770203 () Bool)

(declare-fun c!982056 () Bool)

(declare-fun isEmpty!34774 (List!63074) Bool)

(assert (=> d!1770203 (= c!982056 (isEmpty!34774 (t!376360 s!2326)))))

(declare-fun e!3454647 () Bool)

(assert (=> d!1770203 (= (matchZipper!1729 lt!2257196 (t!376360 s!2326)) e!3454647)))

(declare-fun b!5600549 () Bool)

(declare-fun nullableZipper!1582 ((InoxSet Context!9950)) Bool)

(assert (=> b!5600549 (= e!3454647 (nullableZipper!1582 lt!2257196))))

(declare-fun b!5600550 () Bool)

(declare-fun derivationStepZipper!1686 ((InoxSet Context!9950) C!31452) (InoxSet Context!9950))

(declare-fun head!11943 (List!63074) C!31452)

(declare-fun tail!11038 (List!63074) List!63074)

(assert (=> b!5600550 (= e!3454647 (matchZipper!1729 (derivationStepZipper!1686 lt!2257196 (head!11943 (t!376360 s!2326))) (tail!11038 (t!376360 s!2326))))))

(assert (= (and d!1770203 c!982056) b!5600549))

(assert (= (and d!1770203 (not c!982056)) b!5600550))

(declare-fun m!6579162 () Bool)

(assert (=> d!1770203 m!6579162))

(declare-fun m!6579164 () Bool)

(assert (=> b!5600549 m!6579164))

(declare-fun m!6579166 () Bool)

(assert (=> b!5600550 m!6579166))

(assert (=> b!5600550 m!6579166))

(declare-fun m!6579168 () Bool)

(assert (=> b!5600550 m!6579168))

(declare-fun m!6579170 () Bool)

(assert (=> b!5600550 m!6579170))

(assert (=> b!5600550 m!6579168))

(assert (=> b!5600550 m!6579170))

(declare-fun m!6579172 () Bool)

(assert (=> b!5600550 m!6579172))

(assert (=> b!5600261 d!1770203))

(declare-fun d!1770205 () Bool)

(declare-fun c!982057 () Bool)

(assert (=> d!1770205 (= c!982057 (isEmpty!34774 (t!376360 s!2326)))))

(declare-fun e!3454650 () Bool)

(assert (=> d!1770205 (= (matchZipper!1729 ((_ map or) lt!2257196 lt!2257207) (t!376360 s!2326)) e!3454650)))

(declare-fun b!5600551 () Bool)

(assert (=> b!5600551 (= e!3454650 (nullableZipper!1582 ((_ map or) lt!2257196 lt!2257207)))))

(declare-fun b!5600552 () Bool)

(assert (=> b!5600552 (= e!3454650 (matchZipper!1729 (derivationStepZipper!1686 ((_ map or) lt!2257196 lt!2257207) (head!11943 (t!376360 s!2326))) (tail!11038 (t!376360 s!2326))))))

(assert (= (and d!1770205 c!982057) b!5600551))

(assert (= (and d!1770205 (not c!982057)) b!5600552))

(assert (=> d!1770205 m!6579162))

(declare-fun m!6579174 () Bool)

(assert (=> b!5600551 m!6579174))

(assert (=> b!5600552 m!6579166))

(assert (=> b!5600552 m!6579166))

(declare-fun m!6579176 () Bool)

(assert (=> b!5600552 m!6579176))

(assert (=> b!5600552 m!6579170))

(assert (=> b!5600552 m!6579176))

(assert (=> b!5600552 m!6579170))

(declare-fun m!6579178 () Bool)

(assert (=> b!5600552 m!6579178))

(assert (=> b!5600261 d!1770205))

(declare-fun b!5600666 () Bool)

(declare-fun lt!2257274 () Unit!155820)

(declare-fun lt!2257272 () Unit!155820)

(assert (=> b!5600666 (= lt!2257274 lt!2257272)))

(declare-fun ++!13816 (List!63074 List!63074) List!63074)

(assert (=> b!5600666 (= (++!13816 (++!13816 Nil!62950 (Cons!62950 (h!69398 s!2326) Nil!62950)) (t!376360 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1985 (List!63074 C!31452 List!63074 List!63074) Unit!155820)

(assert (=> b!5600666 (= lt!2257272 (lemmaMoveElementToOtherListKeepsConcatEq!1985 Nil!62950 (h!69398 s!2326) (t!376360 s!2326) s!2326))))

(declare-fun e!3454719 () Option!15600)

(assert (=> b!5600666 (= e!3454719 (findConcatSeparation!2014 (regOne!31694 r!7292) (regTwo!31694 r!7292) (++!13816 Nil!62950 (Cons!62950 (h!69398 s!2326) Nil!62950)) (t!376360 s!2326) s!2326))))

(declare-fun b!5600667 () Bool)

(declare-fun e!3454715 () Bool)

(assert (=> b!5600667 (= e!3454715 (matchR!7776 (regTwo!31694 r!7292) s!2326))))

(declare-fun b!5600669 () Bool)

(declare-fun res!2375550 () Bool)

(declare-fun e!3454714 () Bool)

(assert (=> b!5600669 (=> (not res!2375550) (not e!3454714))))

(declare-fun lt!2257273 () Option!15600)

(declare-fun get!21679 (Option!15600) tuple2!65376)

(assert (=> b!5600669 (= res!2375550 (matchR!7776 (regOne!31694 r!7292) (_1!35991 (get!21679 lt!2257273))))))

(declare-fun b!5600670 () Bool)

(declare-fun e!3454713 () Option!15600)

(assert (=> b!5600670 (= e!3454713 (Some!15599 (tuple2!65377 Nil!62950 s!2326)))))

(declare-fun b!5600671 () Bool)

(declare-fun res!2375552 () Bool)

(assert (=> b!5600671 (=> (not res!2375552) (not e!3454714))))

(assert (=> b!5600671 (= res!2375552 (matchR!7776 (regTwo!31694 r!7292) (_2!35991 (get!21679 lt!2257273))))))

(declare-fun b!5600672 () Bool)

(assert (=> b!5600672 (= e!3454719 None!15599)))

(declare-fun b!5600673 () Bool)

(assert (=> b!5600673 (= e!3454713 e!3454719)))

(declare-fun c!982092 () Bool)

(assert (=> b!5600673 (= c!982092 ((_ is Nil!62950) s!2326))))

(declare-fun b!5600674 () Bool)

(declare-fun e!3454716 () Bool)

(assert (=> b!5600674 (= e!3454716 (not (isDefined!12303 lt!2257273)))))

(declare-fun b!5600668 () Bool)

(assert (=> b!5600668 (= e!3454714 (= (++!13816 (_1!35991 (get!21679 lt!2257273)) (_2!35991 (get!21679 lt!2257273))) s!2326))))

(declare-fun d!1770207 () Bool)

(assert (=> d!1770207 e!3454716))

(declare-fun res!2375548 () Bool)

(assert (=> d!1770207 (=> res!2375548 e!3454716)))

(assert (=> d!1770207 (= res!2375548 e!3454714)))

(declare-fun res!2375549 () Bool)

(assert (=> d!1770207 (=> (not res!2375549) (not e!3454714))))

(assert (=> d!1770207 (= res!2375549 (isDefined!12303 lt!2257273))))

(assert (=> d!1770207 (= lt!2257273 e!3454713)))

(declare-fun c!982091 () Bool)

(assert (=> d!1770207 (= c!982091 e!3454715)))

(declare-fun res!2375551 () Bool)

(assert (=> d!1770207 (=> (not res!2375551) (not e!3454715))))

(assert (=> d!1770207 (= res!2375551 (matchR!7776 (regOne!31694 r!7292) Nil!62950))))

(assert (=> d!1770207 (validRegex!7327 (regOne!31694 r!7292))))

(assert (=> d!1770207 (= (findConcatSeparation!2014 (regOne!31694 r!7292) (regTwo!31694 r!7292) Nil!62950 s!2326 s!2326) lt!2257273)))

(assert (= (and d!1770207 res!2375551) b!5600667))

(assert (= (and d!1770207 c!982091) b!5600670))

(assert (= (and d!1770207 (not c!982091)) b!5600673))

(assert (= (and b!5600673 c!982092) b!5600672))

(assert (= (and b!5600673 (not c!982092)) b!5600666))

(assert (= (and d!1770207 res!2375549) b!5600669))

(assert (= (and b!5600669 res!2375550) b!5600671))

(assert (= (and b!5600671 res!2375552) b!5600668))

(assert (= (and d!1770207 (not res!2375548)) b!5600674))

(declare-fun m!6579252 () Bool)

(assert (=> d!1770207 m!6579252))

(declare-fun m!6579254 () Bool)

(assert (=> d!1770207 m!6579254))

(declare-fun m!6579256 () Bool)

(assert (=> d!1770207 m!6579256))

(declare-fun m!6579258 () Bool)

(assert (=> b!5600669 m!6579258))

(declare-fun m!6579260 () Bool)

(assert (=> b!5600669 m!6579260))

(assert (=> b!5600668 m!6579258))

(declare-fun m!6579262 () Bool)

(assert (=> b!5600668 m!6579262))

(assert (=> b!5600674 m!6579252))

(declare-fun m!6579264 () Bool)

(assert (=> b!5600666 m!6579264))

(assert (=> b!5600666 m!6579264))

(declare-fun m!6579266 () Bool)

(assert (=> b!5600666 m!6579266))

(declare-fun m!6579268 () Bool)

(assert (=> b!5600666 m!6579268))

(assert (=> b!5600666 m!6579264))

(declare-fun m!6579270 () Bool)

(assert (=> b!5600666 m!6579270))

(assert (=> b!5600671 m!6579258))

(declare-fun m!6579272 () Bool)

(assert (=> b!5600671 m!6579272))

(declare-fun m!6579274 () Bool)

(assert (=> b!5600667 m!6579274))

(assert (=> b!5600260 d!1770207))

(declare-fun d!1770229 () Bool)

(declare-fun choose!42471 (Int) Bool)

(assert (=> d!1770229 (= (Exists!2691 lambda!300803) (choose!42471 lambda!300803))))

(declare-fun bs!1294834 () Bool)

(assert (= bs!1294834 d!1770229))

(declare-fun m!6579276 () Bool)

(assert (=> bs!1294834 m!6579276))

(assert (=> b!5600260 d!1770229))

(declare-fun d!1770237 () Bool)

(assert (=> d!1770237 (= (Exists!2691 lambda!300802) (choose!42471 lambda!300802))))

(declare-fun bs!1294835 () Bool)

(assert (= bs!1294835 d!1770237))

(declare-fun m!6579278 () Bool)

(assert (=> bs!1294835 m!6579278))

(assert (=> b!5600260 d!1770237))

(declare-fun bs!1294836 () Bool)

(declare-fun d!1770239 () Bool)

(assert (= bs!1294836 (and d!1770239 b!5600260)))

(declare-fun lambda!300835 () Int)

(assert (=> bs!1294836 (= lambda!300835 lambda!300802)))

(assert (=> bs!1294836 (not (= lambda!300835 lambda!300803))))

(assert (=> d!1770239 true))

(assert (=> d!1770239 true))

(assert (=> d!1770239 true))

(assert (=> d!1770239 (= (isDefined!12303 (findConcatSeparation!2014 (regOne!31694 r!7292) (regTwo!31694 r!7292) Nil!62950 s!2326 s!2326)) (Exists!2691 lambda!300835))))

(declare-fun lt!2257277 () Unit!155820)

(declare-fun choose!42472 (Regex!15591 Regex!15591 List!63074) Unit!155820)

(assert (=> d!1770239 (= lt!2257277 (choose!42472 (regOne!31694 r!7292) (regTwo!31694 r!7292) s!2326))))

(assert (=> d!1770239 (validRegex!7327 (regOne!31694 r!7292))))

(assert (=> d!1770239 (= (lemmaFindConcatSeparationEquivalentToExists!1778 (regOne!31694 r!7292) (regTwo!31694 r!7292) s!2326) lt!2257277)))

(declare-fun bs!1294837 () Bool)

(assert (= bs!1294837 d!1770239))

(assert (=> bs!1294837 m!6578840))

(declare-fun m!6579280 () Bool)

(assert (=> bs!1294837 m!6579280))

(assert (=> bs!1294837 m!6578840))

(assert (=> bs!1294837 m!6578842))

(declare-fun m!6579282 () Bool)

(assert (=> bs!1294837 m!6579282))

(assert (=> bs!1294837 m!6579256))

(assert (=> b!5600260 d!1770239))

(declare-fun bs!1294838 () Bool)

(declare-fun d!1770241 () Bool)

(assert (= bs!1294838 (and d!1770241 b!5600260)))

(declare-fun lambda!300840 () Int)

(assert (=> bs!1294838 (= lambda!300840 lambda!300802)))

(assert (=> bs!1294838 (not (= lambda!300840 lambda!300803))))

(declare-fun bs!1294839 () Bool)

(assert (= bs!1294839 (and d!1770241 d!1770239)))

(assert (=> bs!1294839 (= lambda!300840 lambda!300835)))

(assert (=> d!1770241 true))

(assert (=> d!1770241 true))

(assert (=> d!1770241 true))

(declare-fun lambda!300841 () Int)

(assert (=> bs!1294838 (not (= lambda!300841 lambda!300802))))

(assert (=> bs!1294838 (= lambda!300841 lambda!300803)))

(assert (=> bs!1294839 (not (= lambda!300841 lambda!300835))))

(declare-fun bs!1294840 () Bool)

(assert (= bs!1294840 d!1770241))

(assert (=> bs!1294840 (not (= lambda!300841 lambda!300840))))

(assert (=> d!1770241 true))

(assert (=> d!1770241 true))

(assert (=> d!1770241 true))

(assert (=> d!1770241 (= (Exists!2691 lambda!300840) (Exists!2691 lambda!300841))))

(declare-fun lt!2257280 () Unit!155820)

(declare-fun choose!42473 (Regex!15591 Regex!15591 List!63074) Unit!155820)

(assert (=> d!1770241 (= lt!2257280 (choose!42473 (regOne!31694 r!7292) (regTwo!31694 r!7292) s!2326))))

(assert (=> d!1770241 (validRegex!7327 (regOne!31694 r!7292))))

(assert (=> d!1770241 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1320 (regOne!31694 r!7292) (regTwo!31694 r!7292) s!2326) lt!2257280)))

(declare-fun m!6579284 () Bool)

(assert (=> bs!1294840 m!6579284))

(declare-fun m!6579286 () Bool)

(assert (=> bs!1294840 m!6579286))

(declare-fun m!6579288 () Bool)

(assert (=> bs!1294840 m!6579288))

(assert (=> bs!1294840 m!6579256))

(assert (=> b!5600260 d!1770241))

(declare-fun d!1770243 () Bool)

(declare-fun isEmpty!34775 (Option!15600) Bool)

(assert (=> d!1770243 (= (isDefined!12303 (findConcatSeparation!2014 (regOne!31694 r!7292) (regTwo!31694 r!7292) Nil!62950 s!2326 s!2326)) (not (isEmpty!34775 (findConcatSeparation!2014 (regOne!31694 r!7292) (regTwo!31694 r!7292) Nil!62950 s!2326 s!2326))))))

(declare-fun bs!1294841 () Bool)

(assert (= bs!1294841 d!1770243))

(assert (=> bs!1294841 m!6578840))

(declare-fun m!6579290 () Bool)

(assert (=> bs!1294841 m!6579290))

(assert (=> b!5600260 d!1770243))

(declare-fun e!3454738 () Bool)

(declare-fun d!1770245 () Bool)

(assert (=> d!1770245 (= (matchZipper!1729 ((_ map or) lt!2257193 lt!2257207) (t!376360 s!2326)) e!3454738)))

(declare-fun res!2375565 () Bool)

(assert (=> d!1770245 (=> res!2375565 e!3454738)))

(assert (=> d!1770245 (= res!2375565 (matchZipper!1729 lt!2257193 (t!376360 s!2326)))))

(declare-fun lt!2257281 () Unit!155820)

(assert (=> d!1770245 (= lt!2257281 (choose!42470 lt!2257193 lt!2257207 (t!376360 s!2326)))))

(assert (=> d!1770245 (= (lemmaZipperConcatMatchesSameAsBothZippers!616 lt!2257193 lt!2257207 (t!376360 s!2326)) lt!2257281)))

(declare-fun b!5600724 () Bool)

(assert (=> b!5600724 (= e!3454738 (matchZipper!1729 lt!2257207 (t!376360 s!2326)))))

(assert (= (and d!1770245 (not res!2375565)) b!5600724))

(assert (=> d!1770245 m!6578906))

(assert (=> d!1770245 m!6578878))

(declare-fun m!6579292 () Bool)

(assert (=> d!1770245 m!6579292))

(assert (=> b!5600724 m!6578852))

(assert (=> b!5600239 d!1770245))

(declare-fun d!1770247 () Bool)

(declare-fun c!982093 () Bool)

(assert (=> d!1770247 (= c!982093 (isEmpty!34774 (t!376360 s!2326)))))

(declare-fun e!3454739 () Bool)

(assert (=> d!1770247 (= (matchZipper!1729 ((_ map or) lt!2257193 lt!2257207) (t!376360 s!2326)) e!3454739)))

(declare-fun b!5600725 () Bool)

(assert (=> b!5600725 (= e!3454739 (nullableZipper!1582 ((_ map or) lt!2257193 lt!2257207)))))

(declare-fun b!5600726 () Bool)

(assert (=> b!5600726 (= e!3454739 (matchZipper!1729 (derivationStepZipper!1686 ((_ map or) lt!2257193 lt!2257207) (head!11943 (t!376360 s!2326))) (tail!11038 (t!376360 s!2326))))))

(assert (= (and d!1770247 c!982093) b!5600725))

(assert (= (and d!1770247 (not c!982093)) b!5600726))

(assert (=> d!1770247 m!6579162))

(declare-fun m!6579294 () Bool)

(assert (=> b!5600725 m!6579294))

(assert (=> b!5600726 m!6579166))

(assert (=> b!5600726 m!6579166))

(declare-fun m!6579296 () Bool)

(assert (=> b!5600726 m!6579296))

(assert (=> b!5600726 m!6579170))

(assert (=> b!5600726 m!6579296))

(assert (=> b!5600726 m!6579170))

(declare-fun m!6579298 () Bool)

(assert (=> b!5600726 m!6579298))

(assert (=> b!5600239 d!1770247))

(declare-fun d!1770249 () Bool)

(declare-fun c!982094 () Bool)

(assert (=> d!1770249 (= c!982094 (isEmpty!34774 s!2326))))

(declare-fun e!3454740 () Bool)

(assert (=> d!1770249 (= (matchZipper!1729 lt!2257185 s!2326) e!3454740)))

(declare-fun b!5600727 () Bool)

(assert (=> b!5600727 (= e!3454740 (nullableZipper!1582 lt!2257185))))

(declare-fun b!5600728 () Bool)

(assert (=> b!5600728 (= e!3454740 (matchZipper!1729 (derivationStepZipper!1686 lt!2257185 (head!11943 s!2326)) (tail!11038 s!2326)))))

(assert (= (and d!1770249 c!982094) b!5600727))

(assert (= (and d!1770249 (not c!982094)) b!5600728))

(declare-fun m!6579300 () Bool)

(assert (=> d!1770249 m!6579300))

(declare-fun m!6579302 () Bool)

(assert (=> b!5600727 m!6579302))

(declare-fun m!6579304 () Bool)

(assert (=> b!5600728 m!6579304))

(assert (=> b!5600728 m!6579304))

(declare-fun m!6579306 () Bool)

(assert (=> b!5600728 m!6579306))

(declare-fun m!6579308 () Bool)

(assert (=> b!5600728 m!6579308))

(assert (=> b!5600728 m!6579306))

(assert (=> b!5600728 m!6579308))

(declare-fun m!6579310 () Bool)

(assert (=> b!5600728 m!6579310))

(assert (=> b!5600262 d!1770249))

(assert (=> b!5600240 d!1770203))

(declare-fun d!1770251 () Bool)

(declare-fun c!982095 () Bool)

(assert (=> d!1770251 (= c!982095 (isEmpty!34774 (t!376360 s!2326)))))

(declare-fun e!3454741 () Bool)

(assert (=> d!1770251 (= (matchZipper!1729 lt!2257184 (t!376360 s!2326)) e!3454741)))

(declare-fun b!5600729 () Bool)

(assert (=> b!5600729 (= e!3454741 (nullableZipper!1582 lt!2257184))))

(declare-fun b!5600730 () Bool)

(assert (=> b!5600730 (= e!3454741 (matchZipper!1729 (derivationStepZipper!1686 lt!2257184 (head!11943 (t!376360 s!2326))) (tail!11038 (t!376360 s!2326))))))

(assert (= (and d!1770251 c!982095) b!5600729))

(assert (= (and d!1770251 (not c!982095)) b!5600730))

(assert (=> d!1770251 m!6579162))

(declare-fun m!6579312 () Bool)

(assert (=> b!5600729 m!6579312))

(assert (=> b!5600730 m!6579166))

(assert (=> b!5600730 m!6579166))

(declare-fun m!6579314 () Bool)

(assert (=> b!5600730 m!6579314))

(assert (=> b!5600730 m!6579170))

(assert (=> b!5600730 m!6579314))

(assert (=> b!5600730 m!6579170))

(declare-fun m!6579316 () Bool)

(assert (=> b!5600730 m!6579316))

(assert (=> b!5600240 d!1770251))

(declare-fun d!1770253 () Bool)

(declare-fun c!982096 () Bool)

(assert (=> d!1770253 (= c!982096 (isEmpty!34774 (t!376360 s!2326)))))

(declare-fun e!3454742 () Bool)

(assert (=> d!1770253 (= (matchZipper!1729 lt!2257193 (t!376360 s!2326)) e!3454742)))

(declare-fun b!5600731 () Bool)

(assert (=> b!5600731 (= e!3454742 (nullableZipper!1582 lt!2257193))))

(declare-fun b!5600732 () Bool)

(assert (=> b!5600732 (= e!3454742 (matchZipper!1729 (derivationStepZipper!1686 lt!2257193 (head!11943 (t!376360 s!2326))) (tail!11038 (t!376360 s!2326))))))

(assert (= (and d!1770253 c!982096) b!5600731))

(assert (= (and d!1770253 (not c!982096)) b!5600732))

(assert (=> d!1770253 m!6579162))

(declare-fun m!6579318 () Bool)

(assert (=> b!5600731 m!6579318))

(assert (=> b!5600732 m!6579166))

(assert (=> b!5600732 m!6579166))

(declare-fun m!6579320 () Bool)

(assert (=> b!5600732 m!6579320))

(assert (=> b!5600732 m!6579170))

(assert (=> b!5600732 m!6579320))

(assert (=> b!5600732 m!6579170))

(declare-fun m!6579322 () Bool)

(assert (=> b!5600732 m!6579322))

(assert (=> b!5600240 d!1770253))

(declare-fun e!3454743 () Bool)

(declare-fun d!1770255 () Bool)

(assert (=> d!1770255 (= (matchZipper!1729 ((_ map or) lt!2257193 lt!2257212) (t!376360 s!2326)) e!3454743)))

(declare-fun res!2375566 () Bool)

(assert (=> d!1770255 (=> res!2375566 e!3454743)))

(assert (=> d!1770255 (= res!2375566 (matchZipper!1729 lt!2257193 (t!376360 s!2326)))))

(declare-fun lt!2257282 () Unit!155820)

(assert (=> d!1770255 (= lt!2257282 (choose!42470 lt!2257193 lt!2257212 (t!376360 s!2326)))))

(assert (=> d!1770255 (= (lemmaZipperConcatMatchesSameAsBothZippers!616 lt!2257193 lt!2257212 (t!376360 s!2326)) lt!2257282)))

(declare-fun b!5600733 () Bool)

(assert (=> b!5600733 (= e!3454743 (matchZipper!1729 lt!2257212 (t!376360 s!2326)))))

(assert (= (and d!1770255 (not res!2375566)) b!5600733))

(declare-fun m!6579324 () Bool)

(assert (=> d!1770255 m!6579324))

(assert (=> d!1770255 m!6578878))

(declare-fun m!6579326 () Bool)

(assert (=> d!1770255 m!6579326))

(assert (=> b!5600733 m!6578868))

(assert (=> b!5600240 d!1770255))

(declare-fun b!5600756 () Bool)

(declare-fun e!3454759 () (InoxSet Context!9950))

(assert (=> b!5600756 (= e!3454759 ((as const (Array Context!9950 Bool)) false))))

(declare-fun b!5600757 () Bool)

(declare-fun c!982111 () Bool)

(assert (=> b!5600757 (= c!982111 ((_ is Star!15591) (h!69396 (exprs!5475 (h!69397 zl!343)))))))

(declare-fun e!3454761 () (InoxSet Context!9950))

(assert (=> b!5600757 (= e!3454761 e!3454759)))

(declare-fun c!982109 () Bool)

(declare-fun c!982107 () Bool)

(declare-fun call!420228 () List!63072)

(declare-fun call!420233 () (InoxSet Context!9950))

(declare-fun bm!420223 () Bool)

(declare-fun c!982110 () Bool)

(assert (=> bm!420223 (= call!420233 (derivationStepZipperDown!933 (ite c!982107 (regOne!31695 (h!69396 (exprs!5475 (h!69397 zl!343)))) (ite c!982110 (regTwo!31694 (h!69396 (exprs!5475 (h!69397 zl!343)))) (ite c!982109 (regOne!31694 (h!69396 (exprs!5475 (h!69397 zl!343)))) (reg!15920 (h!69396 (exprs!5475 (h!69397 zl!343))))))) (ite (or c!982107 c!982110) lt!2257206 (Context!9951 call!420228)) (h!69398 s!2326)))))

(declare-fun b!5600758 () Bool)

(declare-fun e!3454757 () (InoxSet Context!9950))

(assert (=> b!5600758 (= e!3454757 e!3454761)))

(assert (=> b!5600758 (= c!982109 ((_ is Concat!24436) (h!69396 (exprs!5475 (h!69397 zl!343)))))))

(declare-fun b!5600759 () Bool)

(declare-fun call!420232 () (InoxSet Context!9950))

(assert (=> b!5600759 (= e!3454761 call!420232)))

(declare-fun b!5600760 () Bool)

(declare-fun e!3454756 () (InoxSet Context!9950))

(assert (=> b!5600760 (= e!3454756 (store ((as const (Array Context!9950 Bool)) false) lt!2257206 true))))

(declare-fun b!5600761 () Bool)

(declare-fun call!420231 () (InoxSet Context!9950))

(declare-fun call!420230 () (InoxSet Context!9950))

(assert (=> b!5600761 (= e!3454757 ((_ map or) call!420231 call!420230))))

(declare-fun b!5600762 () Bool)

(declare-fun e!3454758 () Bool)

(assert (=> b!5600762 (= c!982110 e!3454758)))

(declare-fun res!2375569 () Bool)

(assert (=> b!5600762 (=> (not res!2375569) (not e!3454758))))

(assert (=> b!5600762 (= res!2375569 ((_ is Concat!24436) (h!69396 (exprs!5475 (h!69397 zl!343)))))))

(declare-fun e!3454760 () (InoxSet Context!9950))

(assert (=> b!5600762 (= e!3454760 e!3454757)))

(declare-fun call!420229 () List!63072)

(declare-fun bm!420225 () Bool)

(declare-fun $colon$colon!1650 (List!63072 Regex!15591) List!63072)

(assert (=> bm!420225 (= call!420229 ($colon$colon!1650 (exprs!5475 lt!2257206) (ite (or c!982110 c!982109) (regTwo!31694 (h!69396 (exprs!5475 (h!69397 zl!343)))) (h!69396 (exprs!5475 (h!69397 zl!343))))))))

(declare-fun b!5600763 () Bool)

(assert (=> b!5600763 (= e!3454760 ((_ map or) call!420233 call!420231))))

(declare-fun b!5600764 () Bool)

(assert (=> b!5600764 (= e!3454759 call!420232)))

(declare-fun b!5600765 () Bool)

(assert (=> b!5600765 (= e!3454758 (nullable!5623 (regOne!31694 (h!69396 (exprs!5475 (h!69397 zl!343))))))))

(declare-fun d!1770257 () Bool)

(declare-fun c!982108 () Bool)

(assert (=> d!1770257 (= c!982108 (and ((_ is ElementMatch!15591) (h!69396 (exprs!5475 (h!69397 zl!343)))) (= (c!981970 (h!69396 (exprs!5475 (h!69397 zl!343)))) (h!69398 s!2326))))))

(assert (=> d!1770257 (= (derivationStepZipperDown!933 (h!69396 (exprs!5475 (h!69397 zl!343))) lt!2257206 (h!69398 s!2326)) e!3454756)))

(declare-fun bm!420224 () Bool)

(assert (=> bm!420224 (= call!420231 (derivationStepZipperDown!933 (ite c!982107 (regTwo!31695 (h!69396 (exprs!5475 (h!69397 zl!343)))) (regOne!31694 (h!69396 (exprs!5475 (h!69397 zl!343))))) (ite c!982107 lt!2257206 (Context!9951 call!420229)) (h!69398 s!2326)))))

(declare-fun bm!420226 () Bool)

(assert (=> bm!420226 (= call!420228 call!420229)))

(declare-fun bm!420227 () Bool)

(assert (=> bm!420227 (= call!420230 call!420233)))

(declare-fun bm!420228 () Bool)

(assert (=> bm!420228 (= call!420232 call!420230)))

(declare-fun b!5600766 () Bool)

(assert (=> b!5600766 (= e!3454756 e!3454760)))

(assert (=> b!5600766 (= c!982107 ((_ is Union!15591) (h!69396 (exprs!5475 (h!69397 zl!343)))))))

(assert (= (and d!1770257 c!982108) b!5600760))

(assert (= (and d!1770257 (not c!982108)) b!5600766))

(assert (= (and b!5600766 c!982107) b!5600763))

(assert (= (and b!5600766 (not c!982107)) b!5600762))

(assert (= (and b!5600762 res!2375569) b!5600765))

(assert (= (and b!5600762 c!982110) b!5600761))

(assert (= (and b!5600762 (not c!982110)) b!5600758))

(assert (= (and b!5600758 c!982109) b!5600759))

(assert (= (and b!5600758 (not c!982109)) b!5600757))

(assert (= (and b!5600757 c!982111) b!5600764))

(assert (= (and b!5600757 (not c!982111)) b!5600756))

(assert (= (or b!5600759 b!5600764) bm!420226))

(assert (= (or b!5600759 b!5600764) bm!420228))

(assert (= (or b!5600761 bm!420226) bm!420225))

(assert (= (or b!5600761 bm!420228) bm!420227))

(assert (= (or b!5600763 b!5600761) bm!420224))

(assert (= (or b!5600763 bm!420227) bm!420223))

(declare-fun m!6579328 () Bool)

(assert (=> bm!420223 m!6579328))

(declare-fun m!6579330 () Bool)

(assert (=> bm!420224 m!6579330))

(declare-fun m!6579332 () Bool)

(assert (=> b!5600765 m!6579332))

(declare-fun m!6579334 () Bool)

(assert (=> b!5600760 m!6579334))

(declare-fun m!6579336 () Bool)

(assert (=> bm!420225 m!6579336))

(assert (=> b!5600242 d!1770257))

(declare-fun d!1770259 () Bool)

(declare-fun dynLambda!24621 (Int Context!9950) (InoxSet Context!9950))

(assert (=> d!1770259 (= (flatMap!1204 z!1189 lambda!300804) (dynLambda!24621 lambda!300804 (h!69397 zl!343)))))

(declare-fun lt!2257285 () Unit!155820)

(declare-fun choose!42476 ((InoxSet Context!9950) Context!9950 Int) Unit!155820)

(assert (=> d!1770259 (= lt!2257285 (choose!42476 z!1189 (h!69397 zl!343) lambda!300804))))

(assert (=> d!1770259 (= z!1189 (store ((as const (Array Context!9950 Bool)) false) (h!69397 zl!343) true))))

(assert (=> d!1770259 (= (lemmaFlatMapOnSingletonSet!736 z!1189 (h!69397 zl!343) lambda!300804) lt!2257285)))

(declare-fun b_lambda!212215 () Bool)

(assert (=> (not b_lambda!212215) (not d!1770259)))

(declare-fun bs!1294842 () Bool)

(assert (= bs!1294842 d!1770259))

(assert (=> bs!1294842 m!6578888))

(declare-fun m!6579338 () Bool)

(assert (=> bs!1294842 m!6579338))

(declare-fun m!6579340 () Bool)

(assert (=> bs!1294842 m!6579340))

(declare-fun m!6579342 () Bool)

(assert (=> bs!1294842 m!6579342))

(assert (=> b!5600242 d!1770259))

(declare-fun d!1770261 () Bool)

(declare-fun nullableFct!1728 (Regex!15591) Bool)

(assert (=> d!1770261 (= (nullable!5623 (h!69396 (exprs!5475 (h!69397 zl!343)))) (nullableFct!1728 (h!69396 (exprs!5475 (h!69397 zl!343)))))))

(declare-fun bs!1294843 () Bool)

(assert (= bs!1294843 d!1770261))

(declare-fun m!6579344 () Bool)

(assert (=> bs!1294843 m!6579344))

(assert (=> b!5600242 d!1770261))

(declare-fun d!1770263 () Bool)

(declare-fun c!982117 () Bool)

(declare-fun e!3454769 () Bool)

(assert (=> d!1770263 (= c!982117 e!3454769)))

(declare-fun res!2375572 () Bool)

(assert (=> d!1770263 (=> (not res!2375572) (not e!3454769))))

(assert (=> d!1770263 (= res!2375572 ((_ is Cons!62948) (exprs!5475 (Context!9951 (Cons!62948 (h!69396 (exprs!5475 (h!69397 zl!343))) (t!376358 (exprs!5475 (h!69397 zl!343))))))))))

(declare-fun e!3454768 () (InoxSet Context!9950))

(assert (=> d!1770263 (= (derivationStepZipperUp!859 (Context!9951 (Cons!62948 (h!69396 (exprs!5475 (h!69397 zl!343))) (t!376358 (exprs!5475 (h!69397 zl!343))))) (h!69398 s!2326)) e!3454768)))

(declare-fun b!5600777 () Bool)

(declare-fun e!3454770 () (InoxSet Context!9950))

(assert (=> b!5600777 (= e!3454770 ((as const (Array Context!9950 Bool)) false))))

(declare-fun bm!420231 () Bool)

(declare-fun call!420236 () (InoxSet Context!9950))

(assert (=> bm!420231 (= call!420236 (derivationStepZipperDown!933 (h!69396 (exprs!5475 (Context!9951 (Cons!62948 (h!69396 (exprs!5475 (h!69397 zl!343))) (t!376358 (exprs!5475 (h!69397 zl!343))))))) (Context!9951 (t!376358 (exprs!5475 (Context!9951 (Cons!62948 (h!69396 (exprs!5475 (h!69397 zl!343))) (t!376358 (exprs!5475 (h!69397 zl!343)))))))) (h!69398 s!2326)))))

(declare-fun b!5600778 () Bool)

(assert (=> b!5600778 (= e!3454769 (nullable!5623 (h!69396 (exprs!5475 (Context!9951 (Cons!62948 (h!69396 (exprs!5475 (h!69397 zl!343))) (t!376358 (exprs!5475 (h!69397 zl!343)))))))))))

(declare-fun b!5600779 () Bool)

(assert (=> b!5600779 (= e!3454768 ((_ map or) call!420236 (derivationStepZipperUp!859 (Context!9951 (t!376358 (exprs!5475 (Context!9951 (Cons!62948 (h!69396 (exprs!5475 (h!69397 zl!343))) (t!376358 (exprs!5475 (h!69397 zl!343)))))))) (h!69398 s!2326))))))

(declare-fun b!5600780 () Bool)

(assert (=> b!5600780 (= e!3454768 e!3454770)))

(declare-fun c!982116 () Bool)

(assert (=> b!5600780 (= c!982116 ((_ is Cons!62948) (exprs!5475 (Context!9951 (Cons!62948 (h!69396 (exprs!5475 (h!69397 zl!343))) (t!376358 (exprs!5475 (h!69397 zl!343))))))))))

(declare-fun b!5600781 () Bool)

(assert (=> b!5600781 (= e!3454770 call!420236)))

(assert (= (and d!1770263 res!2375572) b!5600778))

(assert (= (and d!1770263 c!982117) b!5600779))

(assert (= (and d!1770263 (not c!982117)) b!5600780))

(assert (= (and b!5600780 c!982116) b!5600781))

(assert (= (and b!5600780 (not c!982116)) b!5600777))

(assert (= (or b!5600779 b!5600781) bm!420231))

(declare-fun m!6579346 () Bool)

(assert (=> bm!420231 m!6579346))

(declare-fun m!6579348 () Bool)

(assert (=> b!5600778 m!6579348))

(declare-fun m!6579350 () Bool)

(assert (=> b!5600779 m!6579350))

(assert (=> b!5600242 d!1770263))

(declare-fun d!1770265 () Bool)

(declare-fun c!982119 () Bool)

(declare-fun e!3454772 () Bool)

(assert (=> d!1770265 (= c!982119 e!3454772)))

(declare-fun res!2375573 () Bool)

(assert (=> d!1770265 (=> (not res!2375573) (not e!3454772))))

(assert (=> d!1770265 (= res!2375573 ((_ is Cons!62948) (exprs!5475 lt!2257206)))))

(declare-fun e!3454771 () (InoxSet Context!9950))

(assert (=> d!1770265 (= (derivationStepZipperUp!859 lt!2257206 (h!69398 s!2326)) e!3454771)))

(declare-fun b!5600782 () Bool)

(declare-fun e!3454773 () (InoxSet Context!9950))

(assert (=> b!5600782 (= e!3454773 ((as const (Array Context!9950 Bool)) false))))

(declare-fun bm!420232 () Bool)

(declare-fun call!420237 () (InoxSet Context!9950))

(assert (=> bm!420232 (= call!420237 (derivationStepZipperDown!933 (h!69396 (exprs!5475 lt!2257206)) (Context!9951 (t!376358 (exprs!5475 lt!2257206))) (h!69398 s!2326)))))

(declare-fun b!5600783 () Bool)

(assert (=> b!5600783 (= e!3454772 (nullable!5623 (h!69396 (exprs!5475 lt!2257206))))))

(declare-fun b!5600784 () Bool)

(assert (=> b!5600784 (= e!3454771 ((_ map or) call!420237 (derivationStepZipperUp!859 (Context!9951 (t!376358 (exprs!5475 lt!2257206))) (h!69398 s!2326))))))

(declare-fun b!5600785 () Bool)

(assert (=> b!5600785 (= e!3454771 e!3454773)))

(declare-fun c!982118 () Bool)

(assert (=> b!5600785 (= c!982118 ((_ is Cons!62948) (exprs!5475 lt!2257206)))))

(declare-fun b!5600786 () Bool)

(assert (=> b!5600786 (= e!3454773 call!420237)))

(assert (= (and d!1770265 res!2375573) b!5600783))

(assert (= (and d!1770265 c!982119) b!5600784))

(assert (= (and d!1770265 (not c!982119)) b!5600785))

(assert (= (and b!5600785 c!982118) b!5600786))

(assert (= (and b!5600785 (not c!982118)) b!5600782))

(assert (= (or b!5600784 b!5600786) bm!420232))

(declare-fun m!6579352 () Bool)

(assert (=> bm!420232 m!6579352))

(declare-fun m!6579354 () Bool)

(assert (=> b!5600783 m!6579354))

(declare-fun m!6579356 () Bool)

(assert (=> b!5600784 m!6579356))

(assert (=> b!5600242 d!1770265))

(declare-fun d!1770267 () Bool)

(declare-fun c!982121 () Bool)

(declare-fun e!3454775 () Bool)

(assert (=> d!1770267 (= c!982121 e!3454775)))

(declare-fun res!2375574 () Bool)

(assert (=> d!1770267 (=> (not res!2375574) (not e!3454775))))

(assert (=> d!1770267 (= res!2375574 ((_ is Cons!62948) (exprs!5475 (h!69397 zl!343))))))

(declare-fun e!3454774 () (InoxSet Context!9950))

(assert (=> d!1770267 (= (derivationStepZipperUp!859 (h!69397 zl!343) (h!69398 s!2326)) e!3454774)))

(declare-fun b!5600787 () Bool)

(declare-fun e!3454776 () (InoxSet Context!9950))

(assert (=> b!5600787 (= e!3454776 ((as const (Array Context!9950 Bool)) false))))

(declare-fun bm!420233 () Bool)

(declare-fun call!420238 () (InoxSet Context!9950))

(assert (=> bm!420233 (= call!420238 (derivationStepZipperDown!933 (h!69396 (exprs!5475 (h!69397 zl!343))) (Context!9951 (t!376358 (exprs!5475 (h!69397 zl!343)))) (h!69398 s!2326)))))

(declare-fun b!5600788 () Bool)

(assert (=> b!5600788 (= e!3454775 (nullable!5623 (h!69396 (exprs!5475 (h!69397 zl!343)))))))

(declare-fun b!5600789 () Bool)

(assert (=> b!5600789 (= e!3454774 ((_ map or) call!420238 (derivationStepZipperUp!859 (Context!9951 (t!376358 (exprs!5475 (h!69397 zl!343)))) (h!69398 s!2326))))))

(declare-fun b!5600790 () Bool)

(assert (=> b!5600790 (= e!3454774 e!3454776)))

(declare-fun c!982120 () Bool)

(assert (=> b!5600790 (= c!982120 ((_ is Cons!62948) (exprs!5475 (h!69397 zl!343))))))

(declare-fun b!5600791 () Bool)

(assert (=> b!5600791 (= e!3454776 call!420238)))

(assert (= (and d!1770267 res!2375574) b!5600788))

(assert (= (and d!1770267 c!982121) b!5600789))

(assert (= (and d!1770267 (not c!982121)) b!5600790))

(assert (= (and b!5600790 c!982120) b!5600791))

(assert (= (and b!5600790 (not c!982120)) b!5600787))

(assert (= (or b!5600789 b!5600791) bm!420233))

(declare-fun m!6579358 () Bool)

(assert (=> bm!420233 m!6579358))

(assert (=> b!5600788 m!6578890))

(declare-fun m!6579360 () Bool)

(assert (=> b!5600789 m!6579360))

(assert (=> b!5600242 d!1770267))

(declare-fun d!1770269 () Bool)

(declare-fun choose!42477 ((InoxSet Context!9950) Int) (InoxSet Context!9950))

(assert (=> d!1770269 (= (flatMap!1204 z!1189 lambda!300804) (choose!42477 z!1189 lambda!300804))))

(declare-fun bs!1294844 () Bool)

(assert (= bs!1294844 d!1770269))

(declare-fun m!6579362 () Bool)

(assert (=> bs!1294844 m!6579362))

(assert (=> b!5600242 d!1770269))

(declare-fun d!1770271 () Bool)

(declare-fun c!982122 () Bool)

(assert (=> d!1770271 (= c!982122 (isEmpty!34774 (t!376360 s!2326)))))

(declare-fun e!3454777 () Bool)

(assert (=> d!1770271 (= (matchZipper!1729 lt!2257212 (t!376360 s!2326)) e!3454777)))

(declare-fun b!5600792 () Bool)

(assert (=> b!5600792 (= e!3454777 (nullableZipper!1582 lt!2257212))))

(declare-fun b!5600793 () Bool)

(assert (=> b!5600793 (= e!3454777 (matchZipper!1729 (derivationStepZipper!1686 lt!2257212 (head!11943 (t!376360 s!2326))) (tail!11038 (t!376360 s!2326))))))

(assert (= (and d!1770271 c!982122) b!5600792))

(assert (= (and d!1770271 (not c!982122)) b!5600793))

(assert (=> d!1770271 m!6579162))

(declare-fun m!6579364 () Bool)

(assert (=> b!5600792 m!6579364))

(assert (=> b!5600793 m!6579166))

(assert (=> b!5600793 m!6579166))

(declare-fun m!6579366 () Bool)

(assert (=> b!5600793 m!6579366))

(assert (=> b!5600793 m!6579170))

(assert (=> b!5600793 m!6579366))

(assert (=> b!5600793 m!6579170))

(declare-fun m!6579368 () Bool)

(assert (=> b!5600793 m!6579368))

(assert (=> b!5600263 d!1770271))

(declare-fun b!5600812 () Bool)

(declare-fun res!2375589 () Bool)

(declare-fun e!3454793 () Bool)

(assert (=> b!5600812 (=> res!2375589 e!3454793)))

(assert (=> b!5600812 (= res!2375589 (not ((_ is Concat!24436) r!7292)))))

(declare-fun e!3454794 () Bool)

(assert (=> b!5600812 (= e!3454794 e!3454793)))

(declare-fun bm!420240 () Bool)

(declare-fun c!982127 () Bool)

(declare-fun c!982128 () Bool)

(declare-fun call!420246 () Bool)

(assert (=> bm!420240 (= call!420246 (validRegex!7327 (ite c!982127 (reg!15920 r!7292) (ite c!982128 (regTwo!31695 r!7292) (regTwo!31694 r!7292)))))))

(declare-fun b!5600813 () Bool)

(declare-fun e!3454796 () Bool)

(declare-fun e!3454795 () Bool)

(assert (=> b!5600813 (= e!3454796 e!3454795)))

(assert (=> b!5600813 (= c!982127 ((_ is Star!15591) r!7292))))

(declare-fun b!5600814 () Bool)

(declare-fun e!3454792 () Bool)

(assert (=> b!5600814 (= e!3454793 e!3454792)))

(declare-fun res!2375586 () Bool)

(assert (=> b!5600814 (=> (not res!2375586) (not e!3454792))))

(declare-fun call!420247 () Bool)

(assert (=> b!5600814 (= res!2375586 call!420247)))

(declare-fun d!1770273 () Bool)

(declare-fun res!2375588 () Bool)

(assert (=> d!1770273 (=> res!2375588 e!3454796)))

(assert (=> d!1770273 (= res!2375588 ((_ is ElementMatch!15591) r!7292))))

(assert (=> d!1770273 (= (validRegex!7327 r!7292) e!3454796)))

(declare-fun b!5600815 () Bool)

(declare-fun e!3454797 () Bool)

(assert (=> b!5600815 (= e!3454797 call!420246)))

(declare-fun b!5600816 () Bool)

(declare-fun e!3454798 () Bool)

(declare-fun call!420245 () Bool)

(assert (=> b!5600816 (= e!3454798 call!420245)))

(declare-fun b!5600817 () Bool)

(assert (=> b!5600817 (= e!3454792 call!420245)))

(declare-fun bm!420241 () Bool)

(assert (=> bm!420241 (= call!420247 (validRegex!7327 (ite c!982128 (regOne!31695 r!7292) (regOne!31694 r!7292))))))

(declare-fun bm!420242 () Bool)

(assert (=> bm!420242 (= call!420245 call!420246)))

(declare-fun b!5600818 () Bool)

(assert (=> b!5600818 (= e!3454795 e!3454797)))

(declare-fun res!2375587 () Bool)

(assert (=> b!5600818 (= res!2375587 (not (nullable!5623 (reg!15920 r!7292))))))

(assert (=> b!5600818 (=> (not res!2375587) (not e!3454797))))

(declare-fun b!5600819 () Bool)

(assert (=> b!5600819 (= e!3454795 e!3454794)))

(assert (=> b!5600819 (= c!982128 ((_ is Union!15591) r!7292))))

(declare-fun b!5600820 () Bool)

(declare-fun res!2375585 () Bool)

(assert (=> b!5600820 (=> (not res!2375585) (not e!3454798))))

(assert (=> b!5600820 (= res!2375585 call!420247)))

(assert (=> b!5600820 (= e!3454794 e!3454798)))

(assert (= (and d!1770273 (not res!2375588)) b!5600813))

(assert (= (and b!5600813 c!982127) b!5600818))

(assert (= (and b!5600813 (not c!982127)) b!5600819))

(assert (= (and b!5600818 res!2375587) b!5600815))

(assert (= (and b!5600819 c!982128) b!5600820))

(assert (= (and b!5600819 (not c!982128)) b!5600812))

(assert (= (and b!5600820 res!2375585) b!5600816))

(assert (= (and b!5600812 (not res!2375589)) b!5600814))

(assert (= (and b!5600814 res!2375586) b!5600817))

(assert (= (or b!5600816 b!5600817) bm!420242))

(assert (= (or b!5600820 b!5600814) bm!420241))

(assert (= (or b!5600815 bm!420242) bm!420240))

(declare-fun m!6579370 () Bool)

(assert (=> bm!420240 m!6579370))

(declare-fun m!6579372 () Bool)

(assert (=> bm!420241 m!6579372))

(declare-fun m!6579374 () Bool)

(assert (=> b!5600818 m!6579374))

(assert (=> start!581548 d!1770273))

(declare-fun d!1770275 () Bool)

(declare-fun c!982129 () Bool)

(assert (=> d!1770275 (= c!982129 (isEmpty!34774 (t!376360 s!2326)))))

(declare-fun e!3454799 () Bool)

(assert (=> d!1770275 (= (matchZipper!1729 lt!2257207 (t!376360 s!2326)) e!3454799)))

(declare-fun b!5600821 () Bool)

(assert (=> b!5600821 (= e!3454799 (nullableZipper!1582 lt!2257207))))

(declare-fun b!5600822 () Bool)

(assert (=> b!5600822 (= e!3454799 (matchZipper!1729 (derivationStepZipper!1686 lt!2257207 (head!11943 (t!376360 s!2326))) (tail!11038 (t!376360 s!2326))))))

(assert (= (and d!1770275 c!982129) b!5600821))

(assert (= (and d!1770275 (not c!982129)) b!5600822))

(assert (=> d!1770275 m!6579162))

(declare-fun m!6579376 () Bool)

(assert (=> b!5600821 m!6579376))

(assert (=> b!5600822 m!6579166))

(assert (=> b!5600822 m!6579166))

(declare-fun m!6579378 () Bool)

(assert (=> b!5600822 m!6579378))

(assert (=> b!5600822 m!6579170))

(assert (=> b!5600822 m!6579378))

(assert (=> b!5600822 m!6579170))

(declare-fun m!6579380 () Bool)

(assert (=> b!5600822 m!6579380))

(assert (=> b!5600264 d!1770275))

(assert (=> b!5600243 d!1770275))

(declare-fun b!5600843 () Bool)

(declare-fun e!3454814 () Bool)

(assert (=> b!5600843 (= e!3454814 (isEmpty!34771 (t!376358 (unfocusZipperList!1019 zl!343))))))

(declare-fun b!5600844 () Bool)

(declare-fun e!3454812 () Regex!15591)

(assert (=> b!5600844 (= e!3454812 EmptyLang!15591)))

(declare-fun b!5600845 () Bool)

(declare-fun e!3454815 () Bool)

(declare-fun lt!2257288 () Regex!15591)

(declare-fun head!11944 (List!63072) Regex!15591)

(assert (=> b!5600845 (= e!3454815 (= lt!2257288 (head!11944 (unfocusZipperList!1019 zl!343))))))

(declare-fun b!5600846 () Bool)

(declare-fun e!3454816 () Regex!15591)

(assert (=> b!5600846 (= e!3454816 (h!69396 (unfocusZipperList!1019 zl!343)))))

(declare-fun b!5600847 () Bool)

(declare-fun e!3454817 () Bool)

(declare-fun isEmptyLang!1150 (Regex!15591) Bool)

(assert (=> b!5600847 (= e!3454817 (isEmptyLang!1150 lt!2257288))))

(declare-fun d!1770277 () Bool)

(declare-fun e!3454813 () Bool)

(assert (=> d!1770277 e!3454813))

(declare-fun res!2375595 () Bool)

(assert (=> d!1770277 (=> (not res!2375595) (not e!3454813))))

(assert (=> d!1770277 (= res!2375595 (validRegex!7327 lt!2257288))))

(assert (=> d!1770277 (= lt!2257288 e!3454816)))

(declare-fun c!982140 () Bool)

(assert (=> d!1770277 (= c!982140 e!3454814)))

(declare-fun res!2375594 () Bool)

(assert (=> d!1770277 (=> (not res!2375594) (not e!3454814))))

(assert (=> d!1770277 (= res!2375594 ((_ is Cons!62948) (unfocusZipperList!1019 zl!343)))))

(declare-fun lambda!300844 () Int)

(declare-fun forall!14753 (List!63072 Int) Bool)

(assert (=> d!1770277 (forall!14753 (unfocusZipperList!1019 zl!343) lambda!300844)))

(assert (=> d!1770277 (= (generalisedUnion!1454 (unfocusZipperList!1019 zl!343)) lt!2257288)))

(declare-fun b!5600848 () Bool)

(assert (=> b!5600848 (= e!3454816 e!3454812)))

(declare-fun c!982141 () Bool)

(assert (=> b!5600848 (= c!982141 ((_ is Cons!62948) (unfocusZipperList!1019 zl!343)))))

(declare-fun b!5600849 () Bool)

(declare-fun isUnion!580 (Regex!15591) Bool)

(assert (=> b!5600849 (= e!3454815 (isUnion!580 lt!2257288))))

(declare-fun b!5600850 () Bool)

(assert (=> b!5600850 (= e!3454817 e!3454815)))

(declare-fun c!982138 () Bool)

(declare-fun tail!11039 (List!63072) List!63072)

(assert (=> b!5600850 (= c!982138 (isEmpty!34771 (tail!11039 (unfocusZipperList!1019 zl!343))))))

(declare-fun b!5600851 () Bool)

(assert (=> b!5600851 (= e!3454813 e!3454817)))

(declare-fun c!982139 () Bool)

(assert (=> b!5600851 (= c!982139 (isEmpty!34771 (unfocusZipperList!1019 zl!343)))))

(declare-fun b!5600852 () Bool)

(assert (=> b!5600852 (= e!3454812 (Union!15591 (h!69396 (unfocusZipperList!1019 zl!343)) (generalisedUnion!1454 (t!376358 (unfocusZipperList!1019 zl!343)))))))

(assert (= (and d!1770277 res!2375594) b!5600843))

(assert (= (and d!1770277 c!982140) b!5600846))

(assert (= (and d!1770277 (not c!982140)) b!5600848))

(assert (= (and b!5600848 c!982141) b!5600852))

(assert (= (and b!5600848 (not c!982141)) b!5600844))

(assert (= (and d!1770277 res!2375595) b!5600851))

(assert (= (and b!5600851 c!982139) b!5600847))

(assert (= (and b!5600851 (not c!982139)) b!5600850))

(assert (= (and b!5600850 c!982138) b!5600845))

(assert (= (and b!5600850 (not c!982138)) b!5600849))

(declare-fun m!6579382 () Bool)

(assert (=> b!5600849 m!6579382))

(declare-fun m!6579384 () Bool)

(assert (=> b!5600852 m!6579384))

(declare-fun m!6579386 () Bool)

(assert (=> d!1770277 m!6579386))

(assert (=> d!1770277 m!6578896))

(declare-fun m!6579388 () Bool)

(assert (=> d!1770277 m!6579388))

(assert (=> b!5600851 m!6578896))

(declare-fun m!6579390 () Bool)

(assert (=> b!5600851 m!6579390))

(declare-fun m!6579392 () Bool)

(assert (=> b!5600847 m!6579392))

(declare-fun m!6579394 () Bool)

(assert (=> b!5600843 m!6579394))

(assert (=> b!5600845 m!6578896))

(declare-fun m!6579396 () Bool)

(assert (=> b!5600845 m!6579396))

(assert (=> b!5600850 m!6578896))

(declare-fun m!6579398 () Bool)

(assert (=> b!5600850 m!6579398))

(assert (=> b!5600850 m!6579398))

(declare-fun m!6579400 () Bool)

(assert (=> b!5600850 m!6579400))

(assert (=> b!5600266 d!1770277))

(declare-fun bs!1294845 () Bool)

(declare-fun d!1770279 () Bool)

(assert (= bs!1294845 (and d!1770279 d!1770277)))

(declare-fun lambda!300847 () Int)

(assert (=> bs!1294845 (= lambda!300847 lambda!300844)))

(declare-fun lt!2257291 () List!63072)

(assert (=> d!1770279 (forall!14753 lt!2257291 lambda!300847)))

(declare-fun e!3454820 () List!63072)

(assert (=> d!1770279 (= lt!2257291 e!3454820)))

(declare-fun c!982144 () Bool)

(assert (=> d!1770279 (= c!982144 ((_ is Cons!62949) zl!343))))

(assert (=> d!1770279 (= (unfocusZipperList!1019 zl!343) lt!2257291)))

(declare-fun b!5600857 () Bool)

(assert (=> b!5600857 (= e!3454820 (Cons!62948 (generalisedConcat!1206 (exprs!5475 (h!69397 zl!343))) (unfocusZipperList!1019 (t!376359 zl!343))))))

(declare-fun b!5600858 () Bool)

(assert (=> b!5600858 (= e!3454820 Nil!62948)))

(assert (= (and d!1770279 c!982144) b!5600857))

(assert (= (and d!1770279 (not c!982144)) b!5600858))

(declare-fun m!6579402 () Bool)

(assert (=> d!1770279 m!6579402))

(assert (=> b!5600857 m!6578864))

(declare-fun m!6579404 () Bool)

(assert (=> b!5600857 m!6579404))

(assert (=> b!5600266 d!1770279))

(declare-fun b!5600859 () Bool)

(declare-fun e!3454824 () (InoxSet Context!9950))

(assert (=> b!5600859 (= e!3454824 ((as const (Array Context!9950 Bool)) false))))

(declare-fun b!5600860 () Bool)

(declare-fun c!982149 () Bool)

(assert (=> b!5600860 (= c!982149 ((_ is Star!15591) (regTwo!31695 (regOne!31694 r!7292))))))

(declare-fun e!3454826 () (InoxSet Context!9950))

(assert (=> b!5600860 (= e!3454826 e!3454824)))

(declare-fun bm!420243 () Bool)

(declare-fun c!982147 () Bool)

(declare-fun call!420248 () List!63072)

(declare-fun c!982145 () Bool)

(declare-fun c!982148 () Bool)

(declare-fun call!420253 () (InoxSet Context!9950))

(assert (=> bm!420243 (= call!420253 (derivationStepZipperDown!933 (ite c!982145 (regOne!31695 (regTwo!31695 (regOne!31694 r!7292))) (ite c!982148 (regTwo!31694 (regTwo!31695 (regOne!31694 r!7292))) (ite c!982147 (regOne!31694 (regTwo!31695 (regOne!31694 r!7292))) (reg!15920 (regTwo!31695 (regOne!31694 r!7292)))))) (ite (or c!982145 c!982148) lt!2257206 (Context!9951 call!420248)) (h!69398 s!2326)))))

(declare-fun b!5600861 () Bool)

(declare-fun e!3454822 () (InoxSet Context!9950))

(assert (=> b!5600861 (= e!3454822 e!3454826)))

(assert (=> b!5600861 (= c!982147 ((_ is Concat!24436) (regTwo!31695 (regOne!31694 r!7292))))))

(declare-fun b!5600862 () Bool)

(declare-fun call!420252 () (InoxSet Context!9950))

(assert (=> b!5600862 (= e!3454826 call!420252)))

(declare-fun b!5600863 () Bool)

(declare-fun e!3454821 () (InoxSet Context!9950))

(assert (=> b!5600863 (= e!3454821 (store ((as const (Array Context!9950 Bool)) false) lt!2257206 true))))

(declare-fun b!5600864 () Bool)

(declare-fun call!420251 () (InoxSet Context!9950))

(declare-fun call!420250 () (InoxSet Context!9950))

(assert (=> b!5600864 (= e!3454822 ((_ map or) call!420251 call!420250))))

(declare-fun b!5600865 () Bool)

(declare-fun e!3454823 () Bool)

(assert (=> b!5600865 (= c!982148 e!3454823)))

(declare-fun res!2375596 () Bool)

(assert (=> b!5600865 (=> (not res!2375596) (not e!3454823))))

(assert (=> b!5600865 (= res!2375596 ((_ is Concat!24436) (regTwo!31695 (regOne!31694 r!7292))))))

(declare-fun e!3454825 () (InoxSet Context!9950))

(assert (=> b!5600865 (= e!3454825 e!3454822)))

(declare-fun bm!420245 () Bool)

(declare-fun call!420249 () List!63072)

(assert (=> bm!420245 (= call!420249 ($colon$colon!1650 (exprs!5475 lt!2257206) (ite (or c!982148 c!982147) (regTwo!31694 (regTwo!31695 (regOne!31694 r!7292))) (regTwo!31695 (regOne!31694 r!7292)))))))

(declare-fun b!5600866 () Bool)

(assert (=> b!5600866 (= e!3454825 ((_ map or) call!420253 call!420251))))

(declare-fun b!5600867 () Bool)

(assert (=> b!5600867 (= e!3454824 call!420252)))

(declare-fun b!5600868 () Bool)

(assert (=> b!5600868 (= e!3454823 (nullable!5623 (regOne!31694 (regTwo!31695 (regOne!31694 r!7292)))))))

(declare-fun d!1770281 () Bool)

(declare-fun c!982146 () Bool)

(assert (=> d!1770281 (= c!982146 (and ((_ is ElementMatch!15591) (regTwo!31695 (regOne!31694 r!7292))) (= (c!981970 (regTwo!31695 (regOne!31694 r!7292))) (h!69398 s!2326))))))

(assert (=> d!1770281 (= (derivationStepZipperDown!933 (regTwo!31695 (regOne!31694 r!7292)) lt!2257206 (h!69398 s!2326)) e!3454821)))

(declare-fun bm!420244 () Bool)

(assert (=> bm!420244 (= call!420251 (derivationStepZipperDown!933 (ite c!982145 (regTwo!31695 (regTwo!31695 (regOne!31694 r!7292))) (regOne!31694 (regTwo!31695 (regOne!31694 r!7292)))) (ite c!982145 lt!2257206 (Context!9951 call!420249)) (h!69398 s!2326)))))

(declare-fun bm!420246 () Bool)

(assert (=> bm!420246 (= call!420248 call!420249)))

(declare-fun bm!420247 () Bool)

(assert (=> bm!420247 (= call!420250 call!420253)))

(declare-fun bm!420248 () Bool)

(assert (=> bm!420248 (= call!420252 call!420250)))

(declare-fun b!5600869 () Bool)

(assert (=> b!5600869 (= e!3454821 e!3454825)))

(assert (=> b!5600869 (= c!982145 ((_ is Union!15591) (regTwo!31695 (regOne!31694 r!7292))))))

(assert (= (and d!1770281 c!982146) b!5600863))

(assert (= (and d!1770281 (not c!982146)) b!5600869))

(assert (= (and b!5600869 c!982145) b!5600866))

(assert (= (and b!5600869 (not c!982145)) b!5600865))

(assert (= (and b!5600865 res!2375596) b!5600868))

(assert (= (and b!5600865 c!982148) b!5600864))

(assert (= (and b!5600865 (not c!982148)) b!5600861))

(assert (= (and b!5600861 c!982147) b!5600862))

(assert (= (and b!5600861 (not c!982147)) b!5600860))

(assert (= (and b!5600860 c!982149) b!5600867))

(assert (= (and b!5600860 (not c!982149)) b!5600859))

(assert (= (or b!5600862 b!5600867) bm!420246))

(assert (= (or b!5600862 b!5600867) bm!420248))

(assert (= (or b!5600864 bm!420246) bm!420245))

(assert (= (or b!5600864 bm!420248) bm!420247))

(assert (= (or b!5600866 b!5600864) bm!420244))

(assert (= (or b!5600866 bm!420247) bm!420243))

(declare-fun m!6579406 () Bool)

(assert (=> bm!420243 m!6579406))

(declare-fun m!6579408 () Bool)

(assert (=> bm!420244 m!6579408))

(declare-fun m!6579410 () Bool)

(assert (=> b!5600868 m!6579410))

(assert (=> b!5600863 m!6579334))

(declare-fun m!6579412 () Bool)

(assert (=> bm!420245 m!6579412))

(assert (=> b!5600245 d!1770281))

(declare-fun b!5600870 () Bool)

(declare-fun e!3454830 () (InoxSet Context!9950))

(assert (=> b!5600870 (= e!3454830 ((as const (Array Context!9950 Bool)) false))))

(declare-fun b!5600871 () Bool)

(declare-fun c!982154 () Bool)

(assert (=> b!5600871 (= c!982154 ((_ is Star!15591) (regOne!31695 (regOne!31694 r!7292))))))

(declare-fun e!3454832 () (InoxSet Context!9950))

(assert (=> b!5600871 (= e!3454832 e!3454830)))

(declare-fun call!420254 () List!63072)

(declare-fun c!982150 () Bool)

(declare-fun bm!420249 () Bool)

(declare-fun c!982152 () Bool)

(declare-fun call!420259 () (InoxSet Context!9950))

(declare-fun c!982153 () Bool)

(assert (=> bm!420249 (= call!420259 (derivationStepZipperDown!933 (ite c!982150 (regOne!31695 (regOne!31695 (regOne!31694 r!7292))) (ite c!982153 (regTwo!31694 (regOne!31695 (regOne!31694 r!7292))) (ite c!982152 (regOne!31694 (regOne!31695 (regOne!31694 r!7292))) (reg!15920 (regOne!31695 (regOne!31694 r!7292)))))) (ite (or c!982150 c!982153) lt!2257206 (Context!9951 call!420254)) (h!69398 s!2326)))))

(declare-fun b!5600872 () Bool)

(declare-fun e!3454828 () (InoxSet Context!9950))

(assert (=> b!5600872 (= e!3454828 e!3454832)))

(assert (=> b!5600872 (= c!982152 ((_ is Concat!24436) (regOne!31695 (regOne!31694 r!7292))))))

(declare-fun b!5600873 () Bool)

(declare-fun call!420258 () (InoxSet Context!9950))

(assert (=> b!5600873 (= e!3454832 call!420258)))

(declare-fun b!5600874 () Bool)

(declare-fun e!3454827 () (InoxSet Context!9950))

(assert (=> b!5600874 (= e!3454827 (store ((as const (Array Context!9950 Bool)) false) lt!2257206 true))))

(declare-fun b!5600875 () Bool)

(declare-fun call!420257 () (InoxSet Context!9950))

(declare-fun call!420256 () (InoxSet Context!9950))

(assert (=> b!5600875 (= e!3454828 ((_ map or) call!420257 call!420256))))

(declare-fun b!5600876 () Bool)

(declare-fun e!3454829 () Bool)

(assert (=> b!5600876 (= c!982153 e!3454829)))

(declare-fun res!2375597 () Bool)

(assert (=> b!5600876 (=> (not res!2375597) (not e!3454829))))

(assert (=> b!5600876 (= res!2375597 ((_ is Concat!24436) (regOne!31695 (regOne!31694 r!7292))))))

(declare-fun e!3454831 () (InoxSet Context!9950))

(assert (=> b!5600876 (= e!3454831 e!3454828)))

(declare-fun bm!420251 () Bool)

(declare-fun call!420255 () List!63072)

(assert (=> bm!420251 (= call!420255 ($colon$colon!1650 (exprs!5475 lt!2257206) (ite (or c!982153 c!982152) (regTwo!31694 (regOne!31695 (regOne!31694 r!7292))) (regOne!31695 (regOne!31694 r!7292)))))))

(declare-fun b!5600877 () Bool)

(assert (=> b!5600877 (= e!3454831 ((_ map or) call!420259 call!420257))))

(declare-fun b!5600878 () Bool)

(assert (=> b!5600878 (= e!3454830 call!420258)))

(declare-fun b!5600879 () Bool)

(assert (=> b!5600879 (= e!3454829 (nullable!5623 (regOne!31694 (regOne!31695 (regOne!31694 r!7292)))))))

(declare-fun d!1770283 () Bool)

(declare-fun c!982151 () Bool)

(assert (=> d!1770283 (= c!982151 (and ((_ is ElementMatch!15591) (regOne!31695 (regOne!31694 r!7292))) (= (c!981970 (regOne!31695 (regOne!31694 r!7292))) (h!69398 s!2326))))))

(assert (=> d!1770283 (= (derivationStepZipperDown!933 (regOne!31695 (regOne!31694 r!7292)) lt!2257206 (h!69398 s!2326)) e!3454827)))

(declare-fun bm!420250 () Bool)

(assert (=> bm!420250 (= call!420257 (derivationStepZipperDown!933 (ite c!982150 (regTwo!31695 (regOne!31695 (regOne!31694 r!7292))) (regOne!31694 (regOne!31695 (regOne!31694 r!7292)))) (ite c!982150 lt!2257206 (Context!9951 call!420255)) (h!69398 s!2326)))))

(declare-fun bm!420252 () Bool)

(assert (=> bm!420252 (= call!420254 call!420255)))

(declare-fun bm!420253 () Bool)

(assert (=> bm!420253 (= call!420256 call!420259)))

(declare-fun bm!420254 () Bool)

(assert (=> bm!420254 (= call!420258 call!420256)))

(declare-fun b!5600880 () Bool)

(assert (=> b!5600880 (= e!3454827 e!3454831)))

(assert (=> b!5600880 (= c!982150 ((_ is Union!15591) (regOne!31695 (regOne!31694 r!7292))))))

(assert (= (and d!1770283 c!982151) b!5600874))

(assert (= (and d!1770283 (not c!982151)) b!5600880))

(assert (= (and b!5600880 c!982150) b!5600877))

(assert (= (and b!5600880 (not c!982150)) b!5600876))

(assert (= (and b!5600876 res!2375597) b!5600879))

(assert (= (and b!5600876 c!982153) b!5600875))

(assert (= (and b!5600876 (not c!982153)) b!5600872))

(assert (= (and b!5600872 c!982152) b!5600873))

(assert (= (and b!5600872 (not c!982152)) b!5600871))

(assert (= (and b!5600871 c!982154) b!5600878))

(assert (= (and b!5600871 (not c!982154)) b!5600870))

(assert (= (or b!5600873 b!5600878) bm!420252))

(assert (= (or b!5600873 b!5600878) bm!420254))

(assert (= (or b!5600875 bm!420252) bm!420251))

(assert (= (or b!5600875 bm!420254) bm!420253))

(assert (= (or b!5600877 b!5600875) bm!420250))

(assert (= (or b!5600877 bm!420253) bm!420249))

(declare-fun m!6579414 () Bool)

(assert (=> bm!420249 m!6579414))

(declare-fun m!6579416 () Bool)

(assert (=> bm!420250 m!6579416))

(declare-fun m!6579418 () Bool)

(assert (=> b!5600879 m!6579418))

(assert (=> b!5600874 m!6579334))

(declare-fun m!6579420 () Bool)

(assert (=> bm!420251 m!6579420))

(assert (=> b!5600245 d!1770283))

(assert (=> b!5600244 d!1770275))

(assert (=> b!5600267 d!1770271))

(declare-fun bs!1294846 () Bool)

(declare-fun d!1770285 () Bool)

(assert (= bs!1294846 (and d!1770285 d!1770277)))

(declare-fun lambda!300850 () Int)

(assert (=> bs!1294846 (= lambda!300850 lambda!300844)))

(declare-fun bs!1294847 () Bool)

(assert (= bs!1294847 (and d!1770285 d!1770279)))

(assert (=> bs!1294847 (= lambda!300850 lambda!300847)))

(assert (=> d!1770285 (= (inv!82224 setElem!37369) (forall!14753 (exprs!5475 setElem!37369) lambda!300850))))

(declare-fun bs!1294848 () Bool)

(assert (= bs!1294848 d!1770285))

(declare-fun m!6579422 () Bool)

(assert (=> bs!1294848 m!6579422))

(assert (=> setNonEmpty!37369 d!1770285))

(declare-fun d!1770287 () Bool)

(declare-fun e!3454835 () Bool)

(assert (=> d!1770287 e!3454835))

(declare-fun res!2375600 () Bool)

(assert (=> d!1770287 (=> (not res!2375600) (not e!3454835))))

(declare-fun lt!2257294 () List!63073)

(declare-fun noDuplicate!1563 (List!63073) Bool)

(assert (=> d!1770287 (= res!2375600 (noDuplicate!1563 lt!2257294))))

(declare-fun choose!42478 ((InoxSet Context!9950)) List!63073)

(assert (=> d!1770287 (= lt!2257294 (choose!42478 z!1189))))

(assert (=> d!1770287 (= (toList!9375 z!1189) lt!2257294)))

(declare-fun b!5600883 () Bool)

(declare-fun content!11368 (List!63073) (InoxSet Context!9950))

(assert (=> b!5600883 (= e!3454835 (= (content!11368 lt!2257294) z!1189))))

(assert (= (and d!1770287 res!2375600) b!5600883))

(declare-fun m!6579424 () Bool)

(assert (=> d!1770287 m!6579424))

(declare-fun m!6579426 () Bool)

(assert (=> d!1770287 m!6579426))

(declare-fun m!6579428 () Bool)

(assert (=> b!5600883 m!6579428))

(assert (=> b!5600247 d!1770287))

(declare-fun e!3454836 () Bool)

(declare-fun d!1770289 () Bool)

(assert (=> d!1770289 (= (matchZipper!1729 ((_ map or) lt!2257212 lt!2257207) (t!376360 s!2326)) e!3454836)))

(declare-fun res!2375601 () Bool)

(assert (=> d!1770289 (=> res!2375601 e!3454836)))

(assert (=> d!1770289 (= res!2375601 (matchZipper!1729 lt!2257212 (t!376360 s!2326)))))

(declare-fun lt!2257295 () Unit!155820)

(assert (=> d!1770289 (= lt!2257295 (choose!42470 lt!2257212 lt!2257207 (t!376360 s!2326)))))

(assert (=> d!1770289 (= (lemmaZipperConcatMatchesSameAsBothZippers!616 lt!2257212 lt!2257207 (t!376360 s!2326)) lt!2257295)))

(declare-fun b!5600884 () Bool)

(assert (=> b!5600884 (= e!3454836 (matchZipper!1729 lt!2257207 (t!376360 s!2326)))))

(assert (= (and d!1770289 (not res!2375601)) b!5600884))

(assert (=> d!1770289 m!6578872))

(assert (=> d!1770289 m!6578868))

(declare-fun m!6579430 () Bool)

(assert (=> d!1770289 m!6579430))

(assert (=> b!5600884 m!6578852))

(assert (=> b!5600249 d!1770289))

(assert (=> b!5600249 d!1770271))

(declare-fun d!1770291 () Bool)

(declare-fun c!982155 () Bool)

(assert (=> d!1770291 (= c!982155 (isEmpty!34774 (t!376360 s!2326)))))

(declare-fun e!3454837 () Bool)

(assert (=> d!1770291 (= (matchZipper!1729 ((_ map or) lt!2257212 lt!2257207) (t!376360 s!2326)) e!3454837)))

(declare-fun b!5600885 () Bool)

(assert (=> b!5600885 (= e!3454837 (nullableZipper!1582 ((_ map or) lt!2257212 lt!2257207)))))

(declare-fun b!5600886 () Bool)

(assert (=> b!5600886 (= e!3454837 (matchZipper!1729 (derivationStepZipper!1686 ((_ map or) lt!2257212 lt!2257207) (head!11943 (t!376360 s!2326))) (tail!11038 (t!376360 s!2326))))))

(assert (= (and d!1770291 c!982155) b!5600885))

(assert (= (and d!1770291 (not c!982155)) b!5600886))

(assert (=> d!1770291 m!6579162))

(declare-fun m!6579432 () Bool)

(assert (=> b!5600885 m!6579432))

(assert (=> b!5600886 m!6579166))

(assert (=> b!5600886 m!6579166))

(declare-fun m!6579434 () Bool)

(assert (=> b!5600886 m!6579434))

(assert (=> b!5600886 m!6579170))

(assert (=> b!5600886 m!6579434))

(assert (=> b!5600886 m!6579170))

(declare-fun m!6579436 () Bool)

(assert (=> b!5600886 m!6579436))

(assert (=> b!5600249 d!1770291))

(declare-fun bs!1294849 () Bool)

(declare-fun d!1770293 () Bool)

(assert (= bs!1294849 (and d!1770293 d!1770277)))

(declare-fun lambda!300853 () Int)

(assert (=> bs!1294849 (= lambda!300853 lambda!300844)))

(declare-fun bs!1294850 () Bool)

(assert (= bs!1294850 (and d!1770293 d!1770279)))

(assert (=> bs!1294850 (= lambda!300853 lambda!300847)))

(declare-fun bs!1294851 () Bool)

(assert (= bs!1294851 (and d!1770293 d!1770285)))

(assert (=> bs!1294851 (= lambda!300853 lambda!300850)))

(declare-fun b!5600908 () Bool)

(declare-fun e!3454855 () Bool)

(declare-fun lt!2257298 () Regex!15591)

(declare-fun isEmptyExpr!1141 (Regex!15591) Bool)

(assert (=> b!5600908 (= e!3454855 (isEmptyExpr!1141 lt!2257298))))

(declare-fun b!5600909 () Bool)

(declare-fun e!3454853 () Bool)

(assert (=> b!5600909 (= e!3454853 e!3454855)))

(declare-fun c!982167 () Bool)

(assert (=> b!5600909 (= c!982167 (isEmpty!34771 (exprs!5475 (h!69397 zl!343))))))

(declare-fun b!5600910 () Bool)

(declare-fun e!3454850 () Bool)

(assert (=> b!5600910 (= e!3454855 e!3454850)))

(declare-fun c!982165 () Bool)

(assert (=> b!5600910 (= c!982165 (isEmpty!34771 (tail!11039 (exprs!5475 (h!69397 zl!343)))))))

(declare-fun b!5600911 () Bool)

(declare-fun isConcat!664 (Regex!15591) Bool)

(assert (=> b!5600911 (= e!3454850 (isConcat!664 lt!2257298))))

(declare-fun b!5600912 () Bool)

(assert (=> b!5600912 (= e!3454850 (= lt!2257298 (head!11944 (exprs!5475 (h!69397 zl!343)))))))

(declare-fun b!5600913 () Bool)

(declare-fun e!3454854 () Regex!15591)

(assert (=> b!5600913 (= e!3454854 (h!69396 (exprs!5475 (h!69397 zl!343))))))

(declare-fun b!5600914 () Bool)

(declare-fun e!3454852 () Regex!15591)

(assert (=> b!5600914 (= e!3454852 EmptyExpr!15591)))

(assert (=> d!1770293 e!3454853))

(declare-fun res!2375606 () Bool)

(assert (=> d!1770293 (=> (not res!2375606) (not e!3454853))))

(assert (=> d!1770293 (= res!2375606 (validRegex!7327 lt!2257298))))

(assert (=> d!1770293 (= lt!2257298 e!3454854)))

(declare-fun c!982164 () Bool)

(declare-fun e!3454851 () Bool)

(assert (=> d!1770293 (= c!982164 e!3454851)))

(declare-fun res!2375607 () Bool)

(assert (=> d!1770293 (=> (not res!2375607) (not e!3454851))))

(assert (=> d!1770293 (= res!2375607 ((_ is Cons!62948) (exprs!5475 (h!69397 zl!343))))))

(assert (=> d!1770293 (forall!14753 (exprs!5475 (h!69397 zl!343)) lambda!300853)))

(assert (=> d!1770293 (= (generalisedConcat!1206 (exprs!5475 (h!69397 zl!343))) lt!2257298)))

(declare-fun b!5600907 () Bool)

(assert (=> b!5600907 (= e!3454851 (isEmpty!34771 (t!376358 (exprs!5475 (h!69397 zl!343)))))))

(declare-fun b!5600915 () Bool)

(assert (=> b!5600915 (= e!3454854 e!3454852)))

(declare-fun c!982166 () Bool)

(assert (=> b!5600915 (= c!982166 ((_ is Cons!62948) (exprs!5475 (h!69397 zl!343))))))

(declare-fun b!5600916 () Bool)

(assert (=> b!5600916 (= e!3454852 (Concat!24436 (h!69396 (exprs!5475 (h!69397 zl!343))) (generalisedConcat!1206 (t!376358 (exprs!5475 (h!69397 zl!343))))))))

(assert (= (and d!1770293 res!2375607) b!5600907))

(assert (= (and d!1770293 c!982164) b!5600913))

(assert (= (and d!1770293 (not c!982164)) b!5600915))

(assert (= (and b!5600915 c!982166) b!5600916))

(assert (= (and b!5600915 (not c!982166)) b!5600914))

(assert (= (and d!1770293 res!2375606) b!5600909))

(assert (= (and b!5600909 c!982167) b!5600908))

(assert (= (and b!5600909 (not c!982167)) b!5600910))

(assert (= (and b!5600910 c!982165) b!5600912))

(assert (= (and b!5600910 (not c!982165)) b!5600911))

(declare-fun m!6579438 () Bool)

(assert (=> b!5600910 m!6579438))

(assert (=> b!5600910 m!6579438))

(declare-fun m!6579440 () Bool)

(assert (=> b!5600910 m!6579440))

(declare-fun m!6579442 () Bool)

(assert (=> b!5600916 m!6579442))

(declare-fun m!6579444 () Bool)

(assert (=> b!5600912 m!6579444))

(declare-fun m!6579446 () Bool)

(assert (=> b!5600911 m!6579446))

(declare-fun m!6579448 () Bool)

(assert (=> b!5600908 m!6579448))

(assert (=> b!5600907 m!6578848))

(declare-fun m!6579450 () Bool)

(assert (=> d!1770293 m!6579450))

(declare-fun m!6579452 () Bool)

(assert (=> d!1770293 m!6579452))

(declare-fun m!6579454 () Bool)

(assert (=> b!5600909 m!6579454))

(assert (=> b!5600269 d!1770293))

(declare-fun bs!1294852 () Bool)

(declare-fun b!5600955 () Bool)

(assert (= bs!1294852 (and b!5600955 b!5600260)))

(declare-fun lambda!300858 () Int)

(assert (=> bs!1294852 (not (= lambda!300858 lambda!300802))))

(declare-fun bs!1294853 () Bool)

(assert (= bs!1294853 (and b!5600955 d!1770239)))

(assert (=> bs!1294853 (not (= lambda!300858 lambda!300835))))

(declare-fun bs!1294854 () Bool)

(assert (= bs!1294854 (and b!5600955 d!1770241)))

(assert (=> bs!1294854 (not (= lambda!300858 lambda!300840))))

(assert (=> bs!1294852 (not (= lambda!300858 lambda!300803))))

(assert (=> bs!1294854 (not (= lambda!300858 lambda!300841))))

(assert (=> b!5600955 true))

(assert (=> b!5600955 true))

(declare-fun bs!1294855 () Bool)

(declare-fun b!5600956 () Bool)

(assert (= bs!1294855 (and b!5600956 b!5600260)))

(declare-fun lambda!300859 () Int)

(assert (=> bs!1294855 (not (= lambda!300859 lambda!300802))))

(declare-fun bs!1294856 () Bool)

(assert (= bs!1294856 (and b!5600956 d!1770239)))

(assert (=> bs!1294856 (not (= lambda!300859 lambda!300835))))

(declare-fun bs!1294857 () Bool)

(assert (= bs!1294857 (and b!5600956 d!1770241)))

(assert (=> bs!1294857 (not (= lambda!300859 lambda!300840))))

(assert (=> bs!1294855 (= lambda!300859 lambda!300803)))

(declare-fun bs!1294858 () Bool)

(assert (= bs!1294858 (and b!5600956 b!5600955)))

(assert (=> bs!1294858 (not (= lambda!300859 lambda!300858))))

(assert (=> bs!1294857 (= lambda!300859 lambda!300841)))

(assert (=> b!5600956 true))

(assert (=> b!5600956 true))

(declare-fun b!5600949 () Bool)

(declare-fun c!982179 () Bool)

(assert (=> b!5600949 (= c!982179 ((_ is ElementMatch!15591) r!7292))))

(declare-fun e!3454876 () Bool)

(declare-fun e!3454875 () Bool)

(assert (=> b!5600949 (= e!3454876 e!3454875)))

(declare-fun b!5600950 () Bool)

(declare-fun c!982176 () Bool)

(assert (=> b!5600950 (= c!982176 ((_ is Union!15591) r!7292))))

(declare-fun e!3454877 () Bool)

(assert (=> b!5600950 (= e!3454875 e!3454877)))

(declare-fun d!1770295 () Bool)

(declare-fun c!982178 () Bool)

(assert (=> d!1770295 (= c!982178 ((_ is EmptyExpr!15591) r!7292))))

(declare-fun e!3454879 () Bool)

(assert (=> d!1770295 (= (matchRSpec!2694 r!7292 s!2326) e!3454879)))

(declare-fun bm!420259 () Bool)

(declare-fun call!420264 () Bool)

(assert (=> bm!420259 (= call!420264 (isEmpty!34774 s!2326))))

(declare-fun b!5600951 () Bool)

(assert (=> b!5600951 (= e!3454879 e!3454876)))

(declare-fun res!2375626 () Bool)

(assert (=> b!5600951 (= res!2375626 (not ((_ is EmptyLang!15591) r!7292)))))

(assert (=> b!5600951 (=> (not res!2375626) (not e!3454876))))

(declare-fun b!5600952 () Bool)

(declare-fun e!3454878 () Bool)

(assert (=> b!5600952 (= e!3454878 (matchRSpec!2694 (regTwo!31695 r!7292) s!2326))))

(declare-fun b!5600953 () Bool)

(assert (=> b!5600953 (= e!3454879 call!420264)))

(declare-fun b!5600954 () Bool)

(assert (=> b!5600954 (= e!3454875 (= s!2326 (Cons!62950 (c!981970 r!7292) Nil!62950)))))

(declare-fun e!3454874 () Bool)

(declare-fun call!420265 () Bool)

(assert (=> b!5600955 (= e!3454874 call!420265)))

(declare-fun e!3454880 () Bool)

(assert (=> b!5600956 (= e!3454880 call!420265)))

(declare-fun b!5600957 () Bool)

(assert (=> b!5600957 (= e!3454877 e!3454880)))

(declare-fun c!982177 () Bool)

(assert (=> b!5600957 (= c!982177 ((_ is Star!15591) r!7292))))

(declare-fun b!5600958 () Bool)

(declare-fun res!2375625 () Bool)

(assert (=> b!5600958 (=> res!2375625 e!3454874)))

(assert (=> b!5600958 (= res!2375625 call!420264)))

(assert (=> b!5600958 (= e!3454880 e!3454874)))

(declare-fun bm!420260 () Bool)

(assert (=> bm!420260 (= call!420265 (Exists!2691 (ite c!982177 lambda!300858 lambda!300859)))))

(declare-fun b!5600959 () Bool)

(assert (=> b!5600959 (= e!3454877 e!3454878)))

(declare-fun res!2375624 () Bool)

(assert (=> b!5600959 (= res!2375624 (matchRSpec!2694 (regOne!31695 r!7292) s!2326))))

(assert (=> b!5600959 (=> res!2375624 e!3454878)))

(assert (= (and d!1770295 c!982178) b!5600953))

(assert (= (and d!1770295 (not c!982178)) b!5600951))

(assert (= (and b!5600951 res!2375626) b!5600949))

(assert (= (and b!5600949 c!982179) b!5600954))

(assert (= (and b!5600949 (not c!982179)) b!5600950))

(assert (= (and b!5600950 c!982176) b!5600959))

(assert (= (and b!5600950 (not c!982176)) b!5600957))

(assert (= (and b!5600959 (not res!2375624)) b!5600952))

(assert (= (and b!5600957 c!982177) b!5600958))

(assert (= (and b!5600957 (not c!982177)) b!5600956))

(assert (= (and b!5600958 (not res!2375625)) b!5600955))

(assert (= (or b!5600955 b!5600956) bm!420260))

(assert (= (or b!5600953 b!5600958) bm!420259))

(assert (=> bm!420259 m!6579300))

(declare-fun m!6579456 () Bool)

(assert (=> b!5600952 m!6579456))

(declare-fun m!6579458 () Bool)

(assert (=> bm!420260 m!6579458))

(declare-fun m!6579460 () Bool)

(assert (=> b!5600959 m!6579460))

(assert (=> b!5600271 d!1770295))

(declare-fun b!5600988 () Bool)

(declare-fun e!3454898 () Bool)

(declare-fun e!3454899 () Bool)

(assert (=> b!5600988 (= e!3454898 e!3454899)))

(declare-fun c!982187 () Bool)

(assert (=> b!5600988 (= c!982187 ((_ is EmptyLang!15591) r!7292))))

(declare-fun b!5600989 () Bool)

(declare-fun res!2375644 () Bool)

(declare-fun e!3454896 () Bool)

(assert (=> b!5600989 (=> (not res!2375644) (not e!3454896))))

(declare-fun call!420268 () Bool)

(assert (=> b!5600989 (= res!2375644 (not call!420268))))

(declare-fun b!5600990 () Bool)

(declare-fun e!3454900 () Bool)

(declare-fun e!3454895 () Bool)

(assert (=> b!5600990 (= e!3454900 e!3454895)))

(declare-fun res!2375648 () Bool)

(assert (=> b!5600990 (=> res!2375648 e!3454895)))

(assert (=> b!5600990 (= res!2375648 call!420268)))

(declare-fun bm!420263 () Bool)

(assert (=> bm!420263 (= call!420268 (isEmpty!34774 s!2326))))

(declare-fun b!5600991 () Bool)

(declare-fun lt!2257301 () Bool)

(assert (=> b!5600991 (= e!3454899 (not lt!2257301))))

(declare-fun b!5600992 () Bool)

(assert (=> b!5600992 (= e!3454895 (not (= (head!11943 s!2326) (c!981970 r!7292))))))

(declare-fun b!5600993 () Bool)

(declare-fun res!2375646 () Bool)

(assert (=> b!5600993 (=> (not res!2375646) (not e!3454896))))

(assert (=> b!5600993 (= res!2375646 (isEmpty!34774 (tail!11038 s!2326)))))

(declare-fun b!5600994 () Bool)

(declare-fun res!2375649 () Bool)

(declare-fun e!3454901 () Bool)

(assert (=> b!5600994 (=> res!2375649 e!3454901)))

(assert (=> b!5600994 (= res!2375649 (not ((_ is ElementMatch!15591) r!7292)))))

(assert (=> b!5600994 (= e!3454899 e!3454901)))

(declare-fun b!5600995 () Bool)

(declare-fun res!2375650 () Bool)

(assert (=> b!5600995 (=> res!2375650 e!3454895)))

(assert (=> b!5600995 (= res!2375650 (not (isEmpty!34774 (tail!11038 s!2326))))))

(declare-fun b!5600996 () Bool)

(assert (=> b!5600996 (= e!3454898 (= lt!2257301 call!420268))))

(declare-fun b!5600997 () Bool)

(declare-fun res!2375643 () Bool)

(assert (=> b!5600997 (=> res!2375643 e!3454901)))

(assert (=> b!5600997 (= res!2375643 e!3454896)))

(declare-fun res!2375645 () Bool)

(assert (=> b!5600997 (=> (not res!2375645) (not e!3454896))))

(assert (=> b!5600997 (= res!2375645 lt!2257301)))

(declare-fun b!5600998 () Bool)

(assert (=> b!5600998 (= e!3454896 (= (head!11943 s!2326) (c!981970 r!7292)))))

(declare-fun d!1770297 () Bool)

(assert (=> d!1770297 e!3454898))

(declare-fun c!982186 () Bool)

(assert (=> d!1770297 (= c!982186 ((_ is EmptyExpr!15591) r!7292))))

(declare-fun e!3454897 () Bool)

(assert (=> d!1770297 (= lt!2257301 e!3454897)))

(declare-fun c!982188 () Bool)

(assert (=> d!1770297 (= c!982188 (isEmpty!34774 s!2326))))

(assert (=> d!1770297 (validRegex!7327 r!7292)))

(assert (=> d!1770297 (= (matchR!7776 r!7292 s!2326) lt!2257301)))

(declare-fun b!5600999 () Bool)

(assert (=> b!5600999 (= e!3454901 e!3454900)))

(declare-fun res!2375647 () Bool)

(assert (=> b!5600999 (=> (not res!2375647) (not e!3454900))))

(assert (=> b!5600999 (= res!2375647 (not lt!2257301))))

(declare-fun b!5601000 () Bool)

(declare-fun derivativeStep!4435 (Regex!15591 C!31452) Regex!15591)

(assert (=> b!5601000 (= e!3454897 (matchR!7776 (derivativeStep!4435 r!7292 (head!11943 s!2326)) (tail!11038 s!2326)))))

(declare-fun b!5601001 () Bool)

(assert (=> b!5601001 (= e!3454897 (nullable!5623 r!7292))))

(assert (= (and d!1770297 c!982188) b!5601001))

(assert (= (and d!1770297 (not c!982188)) b!5601000))

(assert (= (and d!1770297 c!982186) b!5600996))

(assert (= (and d!1770297 (not c!982186)) b!5600988))

(assert (= (and b!5600988 c!982187) b!5600991))

(assert (= (and b!5600988 (not c!982187)) b!5600994))

(assert (= (and b!5600994 (not res!2375649)) b!5600997))

(assert (= (and b!5600997 res!2375645) b!5600989))

(assert (= (and b!5600989 res!2375644) b!5600993))

(assert (= (and b!5600993 res!2375646) b!5600998))

(assert (= (and b!5600997 (not res!2375643)) b!5600999))

(assert (= (and b!5600999 res!2375647) b!5600990))

(assert (= (and b!5600990 (not res!2375648)) b!5600995))

(assert (= (and b!5600995 (not res!2375650)) b!5600992))

(assert (= (or b!5600996 b!5600989 b!5600990) bm!420263))

(assert (=> b!5601000 m!6579304))

(assert (=> b!5601000 m!6579304))

(declare-fun m!6579462 () Bool)

(assert (=> b!5601000 m!6579462))

(assert (=> b!5601000 m!6579308))

(assert (=> b!5601000 m!6579462))

(assert (=> b!5601000 m!6579308))

(declare-fun m!6579464 () Bool)

(assert (=> b!5601000 m!6579464))

(assert (=> b!5600992 m!6579304))

(assert (=> b!5600995 m!6579308))

(assert (=> b!5600995 m!6579308))

(declare-fun m!6579466 () Bool)

(assert (=> b!5600995 m!6579466))

(assert (=> bm!420263 m!6579300))

(declare-fun m!6579468 () Bool)

(assert (=> b!5601001 m!6579468))

(assert (=> d!1770297 m!6579300))

(assert (=> d!1770297 m!6578938))

(assert (=> b!5600998 m!6579304))

(assert (=> b!5600993 m!6579308))

(assert (=> b!5600993 m!6579308))

(assert (=> b!5600993 m!6579466))

(assert (=> b!5600271 d!1770297))

(declare-fun d!1770299 () Bool)

(assert (=> d!1770299 (= (matchR!7776 r!7292 s!2326) (matchRSpec!2694 r!7292 s!2326))))

(declare-fun lt!2257304 () Unit!155820)

(declare-fun choose!42479 (Regex!15591 List!63074) Unit!155820)

(assert (=> d!1770299 (= lt!2257304 (choose!42479 r!7292 s!2326))))

(assert (=> d!1770299 (validRegex!7327 r!7292)))

(assert (=> d!1770299 (= (mainMatchTheorem!2694 r!7292 s!2326) lt!2257304)))

(declare-fun bs!1294859 () Bool)

(assert (= bs!1294859 d!1770299))

(assert (=> bs!1294859 m!6578934))

(assert (=> bs!1294859 m!6578932))

(declare-fun m!6579470 () Bool)

(assert (=> bs!1294859 m!6579470))

(assert (=> bs!1294859 m!6578938))

(assert (=> b!5600271 d!1770299))

(declare-fun bs!1294860 () Bool)

(declare-fun d!1770301 () Bool)

(assert (= bs!1294860 (and d!1770301 d!1770277)))

(declare-fun lambda!300860 () Int)

(assert (=> bs!1294860 (= lambda!300860 lambda!300844)))

(declare-fun bs!1294861 () Bool)

(assert (= bs!1294861 (and d!1770301 d!1770279)))

(assert (=> bs!1294861 (= lambda!300860 lambda!300847)))

(declare-fun bs!1294862 () Bool)

(assert (= bs!1294862 (and d!1770301 d!1770285)))

(assert (=> bs!1294862 (= lambda!300860 lambda!300850)))

(declare-fun bs!1294863 () Bool)

(assert (= bs!1294863 (and d!1770301 d!1770293)))

(assert (=> bs!1294863 (= lambda!300860 lambda!300853)))

(assert (=> d!1770301 (= (inv!82224 (h!69397 zl!343)) (forall!14753 (exprs!5475 (h!69397 zl!343)) lambda!300860))))

(declare-fun bs!1294864 () Bool)

(assert (= bs!1294864 d!1770301))

(declare-fun m!6579472 () Bool)

(assert (=> bs!1294864 m!6579472))

(assert (=> b!5600251 d!1770301))

(declare-fun d!1770303 () Bool)

(declare-fun c!982189 () Bool)

(assert (=> d!1770303 (= c!982189 (isEmpty!34774 s!2326))))

(declare-fun e!3454902 () Bool)

(assert (=> d!1770303 (= (matchZipper!1729 lt!2257191 s!2326) e!3454902)))

(declare-fun b!5601002 () Bool)

(assert (=> b!5601002 (= e!3454902 (nullableZipper!1582 lt!2257191))))

(declare-fun b!5601003 () Bool)

(assert (=> b!5601003 (= e!3454902 (matchZipper!1729 (derivationStepZipper!1686 lt!2257191 (head!11943 s!2326)) (tail!11038 s!2326)))))

(assert (= (and d!1770303 c!982189) b!5601002))

(assert (= (and d!1770303 (not c!982189)) b!5601003))

(assert (=> d!1770303 m!6579300))

(declare-fun m!6579474 () Bool)

(assert (=> b!5601002 m!6579474))

(assert (=> b!5601003 m!6579304))

(assert (=> b!5601003 m!6579304))

(declare-fun m!6579476 () Bool)

(assert (=> b!5601003 m!6579476))

(assert (=> b!5601003 m!6579308))

(assert (=> b!5601003 m!6579476))

(assert (=> b!5601003 m!6579308))

(declare-fun m!6579478 () Bool)

(assert (=> b!5601003 m!6579478))

(assert (=> b!5600253 d!1770303))

(declare-fun d!1770305 () Bool)

(declare-fun c!982190 () Bool)

(assert (=> d!1770305 (= c!982190 (isEmpty!34774 s!2326))))

(declare-fun e!3454903 () Bool)

(assert (=> d!1770305 (= (matchZipper!1729 z!1189 s!2326) e!3454903)))

(declare-fun b!5601004 () Bool)

(assert (=> b!5601004 (= e!3454903 (nullableZipper!1582 z!1189))))

(declare-fun b!5601005 () Bool)

(assert (=> b!5601005 (= e!3454903 (matchZipper!1729 (derivationStepZipper!1686 z!1189 (head!11943 s!2326)) (tail!11038 s!2326)))))

(assert (= (and d!1770305 c!982190) b!5601004))

(assert (= (and d!1770305 (not c!982190)) b!5601005))

(assert (=> d!1770305 m!6579300))

(declare-fun m!6579480 () Bool)

(assert (=> b!5601004 m!6579480))

(assert (=> b!5601005 m!6579304))

(assert (=> b!5601005 m!6579304))

(declare-fun m!6579482 () Bool)

(assert (=> b!5601005 m!6579482))

(assert (=> b!5601005 m!6579308))

(assert (=> b!5601005 m!6579482))

(assert (=> b!5601005 m!6579308))

(declare-fun m!6579484 () Bool)

(assert (=> b!5601005 m!6579484))

(assert (=> b!5600253 d!1770305))

(declare-fun d!1770307 () Bool)

(assert (=> d!1770307 (= (flatMap!1204 lt!2257185 lambda!300804) (choose!42477 lt!2257185 lambda!300804))))

(declare-fun bs!1294865 () Bool)

(assert (= bs!1294865 d!1770307))

(declare-fun m!6579486 () Bool)

(assert (=> bs!1294865 m!6579486))

(assert (=> b!5600253 d!1770307))

(declare-fun d!1770309 () Bool)

(assert (=> d!1770309 (= (flatMap!1204 lt!2257191 lambda!300804) (dynLambda!24621 lambda!300804 lt!2257200))))

(declare-fun lt!2257305 () Unit!155820)

(assert (=> d!1770309 (= lt!2257305 (choose!42476 lt!2257191 lt!2257200 lambda!300804))))

(assert (=> d!1770309 (= lt!2257191 (store ((as const (Array Context!9950 Bool)) false) lt!2257200 true))))

(assert (=> d!1770309 (= (lemmaFlatMapOnSingletonSet!736 lt!2257191 lt!2257200 lambda!300804) lt!2257305)))

(declare-fun b_lambda!212217 () Bool)

(assert (=> (not b_lambda!212217) (not d!1770309)))

(declare-fun bs!1294866 () Bool)

(assert (= bs!1294866 d!1770309))

(assert (=> bs!1294866 m!6578920))

(declare-fun m!6579488 () Bool)

(assert (=> bs!1294866 m!6579488))

(declare-fun m!6579490 () Bool)

(assert (=> bs!1294866 m!6579490))

(assert (=> bs!1294866 m!6578928))

(assert (=> b!5600253 d!1770309))

(declare-fun d!1770311 () Bool)

(declare-fun c!982192 () Bool)

(declare-fun e!3454905 () Bool)

(assert (=> d!1770311 (= c!982192 e!3454905)))

(declare-fun res!2375651 () Bool)

(assert (=> d!1770311 (=> (not res!2375651) (not e!3454905))))

(assert (=> d!1770311 (= res!2375651 ((_ is Cons!62948) (exprs!5475 lt!2257200)))))

(declare-fun e!3454904 () (InoxSet Context!9950))

(assert (=> d!1770311 (= (derivationStepZipperUp!859 lt!2257200 (h!69398 s!2326)) e!3454904)))

(declare-fun b!5601006 () Bool)

(declare-fun e!3454906 () (InoxSet Context!9950))

(assert (=> b!5601006 (= e!3454906 ((as const (Array Context!9950 Bool)) false))))

(declare-fun bm!420264 () Bool)

(declare-fun call!420269 () (InoxSet Context!9950))

(assert (=> bm!420264 (= call!420269 (derivationStepZipperDown!933 (h!69396 (exprs!5475 lt!2257200)) (Context!9951 (t!376358 (exprs!5475 lt!2257200))) (h!69398 s!2326)))))

(declare-fun b!5601007 () Bool)

(assert (=> b!5601007 (= e!3454905 (nullable!5623 (h!69396 (exprs!5475 lt!2257200))))))

(declare-fun b!5601008 () Bool)

(assert (=> b!5601008 (= e!3454904 ((_ map or) call!420269 (derivationStepZipperUp!859 (Context!9951 (t!376358 (exprs!5475 lt!2257200))) (h!69398 s!2326))))))

(declare-fun b!5601009 () Bool)

(assert (=> b!5601009 (= e!3454904 e!3454906)))

(declare-fun c!982191 () Bool)

(assert (=> b!5601009 (= c!982191 ((_ is Cons!62948) (exprs!5475 lt!2257200)))))

(declare-fun b!5601010 () Bool)

(assert (=> b!5601010 (= e!3454906 call!420269)))

(assert (= (and d!1770311 res!2375651) b!5601007))

(assert (= (and d!1770311 c!982192) b!5601008))

(assert (= (and d!1770311 (not c!982192)) b!5601009))

(assert (= (and b!5601009 c!982191) b!5601010))

(assert (= (and b!5601009 (not c!982191)) b!5601006))

(assert (= (or b!5601008 b!5601010) bm!420264))

(declare-fun m!6579492 () Bool)

(assert (=> bm!420264 m!6579492))

(declare-fun m!6579494 () Bool)

(assert (=> b!5601007 m!6579494))

(declare-fun m!6579496 () Bool)

(assert (=> b!5601008 m!6579496))

(assert (=> b!5600253 d!1770311))

(declare-fun d!1770313 () Bool)

(assert (=> d!1770313 (= (nullable!5623 (regTwo!31695 (regOne!31694 r!7292))) (nullableFct!1728 (regTwo!31695 (regOne!31694 r!7292))))))

(declare-fun bs!1294867 () Bool)

(assert (= bs!1294867 d!1770313))

(declare-fun m!6579498 () Bool)

(assert (=> bs!1294867 m!6579498))

(assert (=> b!5600253 d!1770313))

(declare-fun d!1770315 () Bool)

(assert (=> d!1770315 (= (flatMap!1204 lt!2257191 lambda!300804) (choose!42477 lt!2257191 lambda!300804))))

(declare-fun bs!1294868 () Bool)

(assert (= bs!1294868 d!1770315))

(declare-fun m!6579500 () Bool)

(assert (=> bs!1294868 m!6579500))

(assert (=> b!5600253 d!1770315))

(declare-fun d!1770317 () Bool)

(declare-fun c!982194 () Bool)

(declare-fun e!3454908 () Bool)

(assert (=> d!1770317 (= c!982194 e!3454908)))

(declare-fun res!2375652 () Bool)

(assert (=> d!1770317 (=> (not res!2375652) (not e!3454908))))

(assert (=> d!1770317 (= res!2375652 ((_ is Cons!62948) (exprs!5475 lt!2257203)))))

(declare-fun e!3454907 () (InoxSet Context!9950))

(assert (=> d!1770317 (= (derivationStepZipperUp!859 lt!2257203 (h!69398 s!2326)) e!3454907)))

(declare-fun b!5601011 () Bool)

(declare-fun e!3454909 () (InoxSet Context!9950))

(assert (=> b!5601011 (= e!3454909 ((as const (Array Context!9950 Bool)) false))))

(declare-fun bm!420265 () Bool)

(declare-fun call!420270 () (InoxSet Context!9950))

(assert (=> bm!420265 (= call!420270 (derivationStepZipperDown!933 (h!69396 (exprs!5475 lt!2257203)) (Context!9951 (t!376358 (exprs!5475 lt!2257203))) (h!69398 s!2326)))))

(declare-fun b!5601012 () Bool)

(assert (=> b!5601012 (= e!3454908 (nullable!5623 (h!69396 (exprs!5475 lt!2257203))))))

(declare-fun b!5601013 () Bool)

(assert (=> b!5601013 (= e!3454907 ((_ map or) call!420270 (derivationStepZipperUp!859 (Context!9951 (t!376358 (exprs!5475 lt!2257203))) (h!69398 s!2326))))))

(declare-fun b!5601014 () Bool)

(assert (=> b!5601014 (= e!3454907 e!3454909)))

(declare-fun c!982193 () Bool)

(assert (=> b!5601014 (= c!982193 ((_ is Cons!62948) (exprs!5475 lt!2257203)))))

(declare-fun b!5601015 () Bool)

(assert (=> b!5601015 (= e!3454909 call!420270)))

(assert (= (and d!1770317 res!2375652) b!5601012))

(assert (= (and d!1770317 c!982194) b!5601013))

(assert (= (and d!1770317 (not c!982194)) b!5601014))

(assert (= (and b!5601014 c!982193) b!5601015))

(assert (= (and b!5601014 (not c!982193)) b!5601011))

(assert (= (or b!5601013 b!5601015) bm!420265))

(declare-fun m!6579502 () Bool)

(assert (=> bm!420265 m!6579502))

(declare-fun m!6579504 () Bool)

(assert (=> b!5601012 m!6579504))

(declare-fun m!6579506 () Bool)

(assert (=> b!5601013 m!6579506))

(assert (=> b!5600253 d!1770317))

(declare-fun d!1770319 () Bool)

(assert (=> d!1770319 (= (nullable!5623 (regOne!31695 (regOne!31694 r!7292))) (nullableFct!1728 (regOne!31695 (regOne!31694 r!7292))))))

(declare-fun bs!1294869 () Bool)

(assert (= bs!1294869 d!1770319))

(declare-fun m!6579508 () Bool)

(assert (=> bs!1294869 m!6579508))

(assert (=> b!5600253 d!1770319))

(declare-fun d!1770321 () Bool)

(assert (=> d!1770321 (= (flatMap!1204 lt!2257185 lambda!300804) (dynLambda!24621 lambda!300804 lt!2257203))))

(declare-fun lt!2257306 () Unit!155820)

(assert (=> d!1770321 (= lt!2257306 (choose!42476 lt!2257185 lt!2257203 lambda!300804))))

(assert (=> d!1770321 (= lt!2257185 (store ((as const (Array Context!9950 Bool)) false) lt!2257203 true))))

(assert (=> d!1770321 (= (lemmaFlatMapOnSingletonSet!736 lt!2257185 lt!2257203 lambda!300804) lt!2257306)))

(declare-fun b_lambda!212219 () Bool)

(assert (=> (not b_lambda!212219) (not d!1770321)))

(declare-fun bs!1294870 () Bool)

(assert (= bs!1294870 d!1770321))

(assert (=> bs!1294870 m!6578924))

(declare-fun m!6579510 () Bool)

(assert (=> bs!1294870 m!6579510))

(declare-fun m!6579512 () Bool)

(assert (=> bs!1294870 m!6579512))

(assert (=> bs!1294870 m!6578922))

(assert (=> b!5600253 d!1770321))

(declare-fun d!1770323 () Bool)

(assert (=> d!1770323 (= (isEmpty!34770 (t!376359 zl!343)) ((_ is Nil!62949) (t!376359 zl!343)))))

(assert (=> b!5600254 d!1770323))

(declare-fun d!1770325 () Bool)

(assert (=> d!1770325 (= (isEmpty!34771 (t!376358 (exprs!5475 (h!69397 zl!343)))) ((_ is Nil!62948) (t!376358 (exprs!5475 (h!69397 zl!343)))))))

(assert (=> b!5600255 d!1770325))

(declare-fun b!5601020 () Bool)

(declare-fun e!3454912 () Bool)

(declare-fun tp!1548530 () Bool)

(declare-fun tp!1548531 () Bool)

(assert (=> b!5601020 (= e!3454912 (and tp!1548530 tp!1548531))))

(assert (=> b!5600257 (= tp!1548461 e!3454912)))

(assert (= (and b!5600257 ((_ is Cons!62948) (exprs!5475 setElem!37369))) b!5601020))

(declare-fun b!5601025 () Bool)

(declare-fun e!3454915 () Bool)

(declare-fun tp!1548534 () Bool)

(assert (=> b!5601025 (= e!3454915 (and tp_is_empty!40435 tp!1548534))))

(assert (=> b!5600241 (= tp!1548459 e!3454915)))

(assert (= (and b!5600241 ((_ is Cons!62950) (t!376360 s!2326))) b!5601025))

(declare-fun b!5601026 () Bool)

(declare-fun e!3454916 () Bool)

(declare-fun tp!1548535 () Bool)

(declare-fun tp!1548536 () Bool)

(assert (=> b!5601026 (= e!3454916 (and tp!1548535 tp!1548536))))

(assert (=> b!5600270 (= tp!1548458 e!3454916)))

(assert (= (and b!5600270 ((_ is Cons!62948) (exprs!5475 (h!69397 zl!343)))) b!5601026))

(declare-fun b!5601034 () Bool)

(declare-fun e!3454922 () Bool)

(declare-fun tp!1548541 () Bool)

(assert (=> b!5601034 (= e!3454922 tp!1548541)))

(declare-fun b!5601033 () Bool)

(declare-fun e!3454921 () Bool)

(declare-fun tp!1548542 () Bool)

(assert (=> b!5601033 (= e!3454921 (and (inv!82224 (h!69397 (t!376359 zl!343))) e!3454922 tp!1548542))))

(assert (=> b!5600251 (= tp!1548464 e!3454921)))

(assert (= b!5601033 b!5601034))

(assert (= (and b!5600251 ((_ is Cons!62949) (t!376359 zl!343))) b!5601033))

(declare-fun m!6579514 () Bool)

(assert (=> b!5601033 m!6579514))

(declare-fun b!5601046 () Bool)

(declare-fun e!3454925 () Bool)

(declare-fun tp!1548553 () Bool)

(declare-fun tp!1548556 () Bool)

(assert (=> b!5601046 (= e!3454925 (and tp!1548553 tp!1548556))))

(assert (=> b!5600237 (= tp!1548462 e!3454925)))

(declare-fun b!5601048 () Bool)

(declare-fun tp!1548557 () Bool)

(declare-fun tp!1548554 () Bool)

(assert (=> b!5601048 (= e!3454925 (and tp!1548557 tp!1548554))))

(declare-fun b!5601045 () Bool)

(assert (=> b!5601045 (= e!3454925 tp_is_empty!40435)))

(declare-fun b!5601047 () Bool)

(declare-fun tp!1548555 () Bool)

(assert (=> b!5601047 (= e!3454925 tp!1548555)))

(assert (= (and b!5600237 ((_ is ElementMatch!15591) (reg!15920 r!7292))) b!5601045))

(assert (= (and b!5600237 ((_ is Concat!24436) (reg!15920 r!7292))) b!5601046))

(assert (= (and b!5600237 ((_ is Star!15591) (reg!15920 r!7292))) b!5601047))

(assert (= (and b!5600237 ((_ is Union!15591) (reg!15920 r!7292))) b!5601048))

(declare-fun condSetEmpty!37375 () Bool)

(assert (=> setNonEmpty!37369 (= condSetEmpty!37375 (= setRest!37369 ((as const (Array Context!9950 Bool)) false)))))

(declare-fun setRes!37375 () Bool)

(assert (=> setNonEmpty!37369 (= tp!1548467 setRes!37375)))

(declare-fun setIsEmpty!37375 () Bool)

(assert (=> setIsEmpty!37375 setRes!37375))

(declare-fun setNonEmpty!37375 () Bool)

(declare-fun setElem!37375 () Context!9950)

(declare-fun tp!1548562 () Bool)

(declare-fun e!3454928 () Bool)

(assert (=> setNonEmpty!37375 (= setRes!37375 (and tp!1548562 (inv!82224 setElem!37375) e!3454928))))

(declare-fun setRest!37375 () (InoxSet Context!9950))

(assert (=> setNonEmpty!37375 (= setRest!37369 ((_ map or) (store ((as const (Array Context!9950 Bool)) false) setElem!37375 true) setRest!37375))))

(declare-fun b!5601053 () Bool)

(declare-fun tp!1548563 () Bool)

(assert (=> b!5601053 (= e!3454928 tp!1548563)))

(assert (= (and setNonEmpty!37369 condSetEmpty!37375) setIsEmpty!37375))

(assert (= (and setNonEmpty!37369 (not condSetEmpty!37375)) setNonEmpty!37375))

(assert (= setNonEmpty!37375 b!5601053))

(declare-fun m!6579516 () Bool)

(assert (=> setNonEmpty!37375 m!6579516))

(declare-fun b!5601055 () Bool)

(declare-fun e!3454929 () Bool)

(declare-fun tp!1548564 () Bool)

(declare-fun tp!1548567 () Bool)

(assert (=> b!5601055 (= e!3454929 (and tp!1548564 tp!1548567))))

(assert (=> b!5600252 (= tp!1548460 e!3454929)))

(declare-fun b!5601057 () Bool)

(declare-fun tp!1548568 () Bool)

(declare-fun tp!1548565 () Bool)

(assert (=> b!5601057 (= e!3454929 (and tp!1548568 tp!1548565))))

(declare-fun b!5601054 () Bool)

(assert (=> b!5601054 (= e!3454929 tp_is_empty!40435)))

(declare-fun b!5601056 () Bool)

(declare-fun tp!1548566 () Bool)

(assert (=> b!5601056 (= e!3454929 tp!1548566)))

(assert (= (and b!5600252 ((_ is ElementMatch!15591) (regOne!31695 r!7292))) b!5601054))

(assert (= (and b!5600252 ((_ is Concat!24436) (regOne!31695 r!7292))) b!5601055))

(assert (= (and b!5600252 ((_ is Star!15591) (regOne!31695 r!7292))) b!5601056))

(assert (= (and b!5600252 ((_ is Union!15591) (regOne!31695 r!7292))) b!5601057))

(declare-fun b!5601059 () Bool)

(declare-fun e!3454930 () Bool)

(declare-fun tp!1548569 () Bool)

(declare-fun tp!1548572 () Bool)

(assert (=> b!5601059 (= e!3454930 (and tp!1548569 tp!1548572))))

(assert (=> b!5600252 (= tp!1548463 e!3454930)))

(declare-fun b!5601061 () Bool)

(declare-fun tp!1548573 () Bool)

(declare-fun tp!1548570 () Bool)

(assert (=> b!5601061 (= e!3454930 (and tp!1548573 tp!1548570))))

(declare-fun b!5601058 () Bool)

(assert (=> b!5601058 (= e!3454930 tp_is_empty!40435)))

(declare-fun b!5601060 () Bool)

(declare-fun tp!1548571 () Bool)

(assert (=> b!5601060 (= e!3454930 tp!1548571)))

(assert (= (and b!5600252 ((_ is ElementMatch!15591) (regTwo!31695 r!7292))) b!5601058))

(assert (= (and b!5600252 ((_ is Concat!24436) (regTwo!31695 r!7292))) b!5601059))

(assert (= (and b!5600252 ((_ is Star!15591) (regTwo!31695 r!7292))) b!5601060))

(assert (= (and b!5600252 ((_ is Union!15591) (regTwo!31695 r!7292))) b!5601061))

(declare-fun b!5601063 () Bool)

(declare-fun e!3454931 () Bool)

(declare-fun tp!1548574 () Bool)

(declare-fun tp!1548577 () Bool)

(assert (=> b!5601063 (= e!3454931 (and tp!1548574 tp!1548577))))

(assert (=> b!5600250 (= tp!1548466 e!3454931)))

(declare-fun b!5601065 () Bool)

(declare-fun tp!1548578 () Bool)

(declare-fun tp!1548575 () Bool)

(assert (=> b!5601065 (= e!3454931 (and tp!1548578 tp!1548575))))

(declare-fun b!5601062 () Bool)

(assert (=> b!5601062 (= e!3454931 tp_is_empty!40435)))

(declare-fun b!5601064 () Bool)

(declare-fun tp!1548576 () Bool)

(assert (=> b!5601064 (= e!3454931 tp!1548576)))

(assert (= (and b!5600250 ((_ is ElementMatch!15591) (regOne!31694 r!7292))) b!5601062))

(assert (= (and b!5600250 ((_ is Concat!24436) (regOne!31694 r!7292))) b!5601063))

(assert (= (and b!5600250 ((_ is Star!15591) (regOne!31694 r!7292))) b!5601064))

(assert (= (and b!5600250 ((_ is Union!15591) (regOne!31694 r!7292))) b!5601065))

(declare-fun b!5601067 () Bool)

(declare-fun e!3454932 () Bool)

(declare-fun tp!1548579 () Bool)

(declare-fun tp!1548582 () Bool)

(assert (=> b!5601067 (= e!3454932 (and tp!1548579 tp!1548582))))

(assert (=> b!5600250 (= tp!1548465 e!3454932)))

(declare-fun b!5601069 () Bool)

(declare-fun tp!1548583 () Bool)

(declare-fun tp!1548580 () Bool)

(assert (=> b!5601069 (= e!3454932 (and tp!1548583 tp!1548580))))

(declare-fun b!5601066 () Bool)

(assert (=> b!5601066 (= e!3454932 tp_is_empty!40435)))

(declare-fun b!5601068 () Bool)

(declare-fun tp!1548581 () Bool)

(assert (=> b!5601068 (= e!3454932 tp!1548581)))

(assert (= (and b!5600250 ((_ is ElementMatch!15591) (regTwo!31694 r!7292))) b!5601066))

(assert (= (and b!5600250 ((_ is Concat!24436) (regTwo!31694 r!7292))) b!5601067))

(assert (= (and b!5600250 ((_ is Star!15591) (regTwo!31694 r!7292))) b!5601068))

(assert (= (and b!5600250 ((_ is Union!15591) (regTwo!31694 r!7292))) b!5601069))

(declare-fun b_lambda!212221 () Bool)

(assert (= b_lambda!212219 (or b!5600242 b_lambda!212221)))

(declare-fun bs!1294871 () Bool)

(declare-fun d!1770327 () Bool)

(assert (= bs!1294871 (and d!1770327 b!5600242)))

(assert (=> bs!1294871 (= (dynLambda!24621 lambda!300804 lt!2257203) (derivationStepZipperUp!859 lt!2257203 (h!69398 s!2326)))))

(assert (=> bs!1294871 m!6578908))

(assert (=> d!1770321 d!1770327))

(declare-fun b_lambda!212223 () Bool)

(assert (= b_lambda!212215 (or b!5600242 b_lambda!212223)))

(declare-fun bs!1294872 () Bool)

(declare-fun d!1770329 () Bool)

(assert (= bs!1294872 (and d!1770329 b!5600242)))

(assert (=> bs!1294872 (= (dynLambda!24621 lambda!300804 (h!69397 zl!343)) (derivationStepZipperUp!859 (h!69397 zl!343) (h!69398 s!2326)))))

(assert (=> bs!1294872 m!6578886))

(assert (=> d!1770259 d!1770329))

(declare-fun b_lambda!212225 () Bool)

(assert (= b_lambda!212217 (or b!5600242 b_lambda!212225)))

(declare-fun bs!1294873 () Bool)

(declare-fun d!1770331 () Bool)

(assert (= bs!1294873 (and d!1770331 b!5600242)))

(assert (=> bs!1294873 (= (dynLambda!24621 lambda!300804 lt!2257200) (derivationStepZipperUp!859 lt!2257200 (h!69398 s!2326)))))

(assert (=> bs!1294873 m!6578918))

(assert (=> d!1770309 d!1770331))

(check-sat (not b!5601056) (not b_lambda!212221) (not d!1770239) (not d!1770255) (not b!5600993) (not b!5600784) (not b!5601026) (not b!5600843) (not bs!1294872) (not b!5601007) (not d!1770197) (not d!1770289) (not b!5600821) (not bm!420251) (not d!1770305) (not d!1770279) (not b!5600868) (not d!1770275) (not bm!420259) (not bm!420265) (not d!1770241) (not bm!420232) (not b!5600551) (not b!5600668) (not d!1770313) (not d!1770253) (not b!5601048) (not b!5601001) (not b!5600550) (not b!5600911) (not bm!420225) tp_is_empty!40435 (not b!5600674) (not b_lambda!212223) (not b!5600995) (not b!5600666) (not d!1770315) (not b!5601002) (not b!5600793) (not d!1770251) (not b!5600910) (not b!5601020) (not b!5600992) (not bm!420244) (not b!5601012) (not b!5600727) (not d!1770271) (not d!1770207) (not b!5600909) (not b!5601061) (not b!5601034) (not d!1770237) (not b!5600883) (not b!5600879) (not d!1770285) (not d!1770293) (not d!1770199) (not bm!420243) (not d!1770291) (not bm!420240) (not d!1770261) (not d!1770309) (not b!5600822) (not bm!420264) (not b!5600912) (not b!5601000) (not bs!1294873) (not b!5601068) (not b!5601003) (not bm!420224) (not b!5600779) (not b!5601063) (not b!5601004) (not b!5600725) (not setNonEmpty!37375) (not b!5601053) (not b!5600765) (not b!5600516) (not b!5601057) (not d!1770319) (not b!5601067) (not b_lambda!212225) (not d!1770245) (not b!5601005) (not d!1770301) (not b!5600852) (not d!1770229) (not b!5601047) (not bm!420241) (not b!5601046) (not b!5600549) (not d!1770297) (not d!1770243) (not bm!420223) (not b!5600724) (not d!1770307) (not b!5600733) (not b!5600728) (not b!5600998) (not b!5601025) (not b!5600778) (not d!1770303) (not b!5600907) (not b!5600851) (not b!5600847) (not b!5600729) (not b!5600857) (not d!1770321) (not b!5601065) (not b!5600730) (not b!5600908) (not b!5600671) (not d!1770249) (not b!5600732) (not bm!420249) (not b!5600726) (not d!1770259) (not d!1770287) (not d!1770203) (not b!5600667) (not b!5600789) (not d!1770269) (not b!5600884) (not bm!420231) (not bs!1294871) (not b!5600818) (not bm!420260) (not b!5600792) (not b!5601008) (not b!5600959) (not d!1770299) (not d!1770205) (not b!5601013) (not b!5601033) (not b!5600952) (not bm!420263) (not b!5601069) (not b!5601064) (not b!5600552) (not d!1770277) (not d!1770247) (not b!5601060) (not b!5600885) (not b!5600849) (not b!5600783) (not b!5600669) (not bm!420250) (not bm!420245) (not b!5601055) (not b!5600845) (not b!5600788) (not b!5600916) (not b!5600850) (not b!5600886) (not b!5600731) (not bm!420233) (not b!5601059))
(check-sat)
