; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!554810 () Bool)

(assert start!554810)

(declare-fun b!5250253 () Bool)

(assert (=> b!5250253 true))

(assert (=> b!5250253 true))

(declare-fun lambda!264356 () Int)

(declare-fun lambda!264355 () Int)

(assert (=> b!5250253 (not (= lambda!264356 lambda!264355))))

(assert (=> b!5250253 true))

(assert (=> b!5250253 true))

(declare-fun b!5250283 () Bool)

(assert (=> b!5250283 true))

(declare-fun e!3266407 () Bool)

(declare-fun e!3266389 () Bool)

(assert (=> b!5250253 (= e!3266407 e!3266389)))

(declare-fun res!2227912 () Bool)

(assert (=> b!5250253 (=> res!2227912 e!3266389)))

(declare-datatypes ((C!29980 0))(
  ( (C!29981 (val!24692 Int)) )
))
(declare-datatypes ((List!60864 0))(
  ( (Nil!60740) (Cons!60740 (h!67188 C!29980) (t!374047 List!60864)) )
))
(declare-fun s!2326 () List!60864)

(declare-fun lt!2151202 () Bool)

(declare-fun lt!2151201 () Bool)

(get-info :version)

(assert (=> b!5250253 (= res!2227912 (or (not (= lt!2151202 lt!2151201)) ((_ is Nil!60740) s!2326)))))

(declare-fun Exists!2036 (Int) Bool)

(assert (=> b!5250253 (= (Exists!2036 lambda!264355) (Exists!2036 lambda!264356))))

(declare-datatypes ((Unit!152854 0))(
  ( (Unit!152855) )
))
(declare-fun lt!2151199 () Unit!152854)

(declare-datatypes ((Regex!14855 0))(
  ( (ElementMatch!14855 (c!908217 C!29980)) (Concat!23700 (regOne!30222 Regex!14855) (regTwo!30222 Regex!14855)) (EmptyExpr!14855) (Star!14855 (reg!15184 Regex!14855)) (EmptyLang!14855) (Union!14855 (regOne!30223 Regex!14855) (regTwo!30223 Regex!14855)) )
))
(declare-fun r!7292 () Regex!14855)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!690 (Regex!14855 Regex!14855 List!60864) Unit!152854)

(assert (=> b!5250253 (= lt!2151199 (lemmaExistCutMatchRandMatchRSpecEquivalent!690 (regOne!30222 r!7292) (regTwo!30222 r!7292) s!2326))))

(assert (=> b!5250253 (= lt!2151201 (Exists!2036 lambda!264355))))

(declare-datatypes ((tuple2!64108 0))(
  ( (tuple2!64109 (_1!35357 List!60864) (_2!35357 List!60864)) )
))
(declare-datatypes ((Option!14966 0))(
  ( (None!14965) (Some!14965 (v!50994 tuple2!64108)) )
))
(declare-fun isDefined!11669 (Option!14966) Bool)

(declare-fun findConcatSeparation!1380 (Regex!14855 Regex!14855 List!60864 List!60864 List!60864) Option!14966)

(assert (=> b!5250253 (= lt!2151201 (isDefined!11669 (findConcatSeparation!1380 (regOne!30222 r!7292) (regTwo!30222 r!7292) Nil!60740 s!2326 s!2326)))))

(declare-fun lt!2151196 () Unit!152854)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1144 (Regex!14855 Regex!14855 List!60864) Unit!152854)

(assert (=> b!5250253 (= lt!2151196 (lemmaFindConcatSeparationEquivalentToExists!1144 (regOne!30222 r!7292) (regTwo!30222 r!7292) s!2326))))

(declare-fun b!5250254 () Bool)

(declare-fun res!2227924 () Bool)

(assert (=> b!5250254 (=> res!2227924 e!3266389)))

(declare-datatypes ((List!60865 0))(
  ( (Nil!60741) (Cons!60741 (h!67189 Regex!14855) (t!374048 List!60865)) )
))
(declare-datatypes ((Context!8478 0))(
  ( (Context!8479 (exprs!4739 List!60865)) )
))
(declare-datatypes ((List!60866 0))(
  ( (Nil!60742) (Cons!60742 (h!67190 Context!8478) (t!374049 List!60866)) )
))
(declare-fun zl!343 () List!60866)

(declare-fun isEmpty!32683 (List!60865) Bool)

(assert (=> b!5250254 (= res!2227924 (isEmpty!32683 (t!374048 (exprs!4739 (h!67190 zl!343)))))))

(declare-fun b!5250255 () Bool)

(declare-fun e!3266392 () Bool)

(declare-fun e!3266400 () Bool)

(assert (=> b!5250255 (= e!3266392 e!3266400)))

(declare-fun res!2227914 () Bool)

(assert (=> b!5250255 (=> res!2227914 e!3266400)))

(declare-fun lt!2151213 () Int)

(declare-fun lt!2151193 () Int)

(assert (=> b!5250255 (= res!2227914 (>= lt!2151213 lt!2151193))))

(declare-fun zipperDepthTotal!36 (List!60866) Int)

(assert (=> b!5250255 (= lt!2151193 (zipperDepthTotal!36 zl!343))))

(declare-fun lt!2151211 () List!60866)

(assert (=> b!5250255 (= lt!2151213 (zipperDepthTotal!36 lt!2151211))))

(declare-fun lt!2151189 () Context!8478)

(assert (=> b!5250255 (= lt!2151211 (Cons!60742 lt!2151189 Nil!60742))))

(declare-fun b!5250256 () Bool)

(declare-fun e!3266399 () Bool)

(declare-fun e!3266397 () Bool)

(assert (=> b!5250256 (= e!3266399 e!3266397)))

(declare-fun res!2227929 () Bool)

(assert (=> b!5250256 (=> res!2227929 e!3266397)))

(declare-fun e!3266406 () Bool)

(assert (=> b!5250256 (= res!2227929 e!3266406)))

(declare-fun res!2227919 () Bool)

(assert (=> b!5250256 (=> (not res!2227919) (not e!3266406))))

(declare-fun lt!2151200 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2151209 () (InoxSet Context!8478))

(declare-fun matchZipper!1099 ((InoxSet Context!8478) List!60864) Bool)

(assert (=> b!5250256 (= res!2227919 (not (= (matchZipper!1099 lt!2151209 (t!374047 s!2326)) lt!2151200)))))

(declare-fun lt!2151194 () (InoxSet Context!8478))

(declare-fun e!3266410 () Bool)

(assert (=> b!5250256 (= (matchZipper!1099 lt!2151194 (t!374047 s!2326)) e!3266410)))

(declare-fun res!2227907 () Bool)

(assert (=> b!5250256 (=> res!2227907 e!3266410)))

(assert (=> b!5250256 (= res!2227907 lt!2151200)))

(declare-fun lt!2151177 () (InoxSet Context!8478))

(assert (=> b!5250256 (= lt!2151200 (matchZipper!1099 lt!2151177 (t!374047 s!2326)))))

(declare-fun lt!2151190 () (InoxSet Context!8478))

(declare-fun lt!2151210 () Unit!152854)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!92 ((InoxSet Context!8478) (InoxSet Context!8478) List!60864) Unit!152854)

(assert (=> b!5250256 (= lt!2151210 (lemmaZipperConcatMatchesSameAsBothZippers!92 lt!2151177 lt!2151190 (t!374047 s!2326)))))

(declare-fun b!5250257 () Bool)

(declare-fun e!3266388 () Bool)

(declare-fun tp!1468990 () Bool)

(declare-fun tp!1468989 () Bool)

(assert (=> b!5250257 (= e!3266388 (and tp!1468990 tp!1468989))))

(declare-fun b!5250258 () Bool)

(declare-fun e!3266391 () Bool)

(declare-fun lt!2151215 () (InoxSet Context!8478))

(assert (=> b!5250258 (= e!3266391 (matchZipper!1099 lt!2151215 (t!374047 s!2326)))))

(declare-fun b!5250260 () Bool)

(declare-fun e!3266393 () Bool)

(declare-fun lt!2151176 () (InoxSet Context!8478))

(assert (=> b!5250260 (= e!3266393 (matchZipper!1099 lt!2151176 s!2326))))

(declare-fun b!5250261 () Bool)

(declare-fun e!3266403 () Bool)

(assert (=> b!5250261 (= e!3266400 e!3266403)))

(declare-fun res!2227908 () Bool)

(assert (=> b!5250261 (=> res!2227908 e!3266403)))

(declare-fun lt!2151197 () List!60866)

(assert (=> b!5250261 (= res!2227908 (>= (zipperDepthTotal!36 lt!2151197) lt!2151193))))

(declare-fun lt!2151182 () Context!8478)

(assert (=> b!5250261 (= lt!2151197 (Cons!60742 lt!2151182 Nil!60742))))

(declare-fun setIsEmpty!33515 () Bool)

(declare-fun setRes!33515 () Bool)

(assert (=> setIsEmpty!33515 setRes!33515))

(declare-fun b!5250262 () Bool)

(declare-fun e!3266398 () Bool)

(assert (=> b!5250262 (= e!3266398 (matchZipper!1099 lt!2151215 (t!374047 s!2326)))))

(declare-fun b!5250263 () Bool)

(declare-fun e!3266405 () Unit!152854)

(declare-fun Unit!152856 () Unit!152854)

(assert (=> b!5250263 (= e!3266405 Unit!152856)))

(declare-fun lt!2151218 () Unit!152854)

(assert (=> b!5250263 (= lt!2151218 (lemmaZipperConcatMatchesSameAsBothZippers!92 lt!2151177 lt!2151215 (t!374047 s!2326)))))

(declare-fun res!2227928 () Bool)

(assert (=> b!5250263 (= res!2227928 lt!2151200)))

(assert (=> b!5250263 (=> res!2227928 e!3266391)))

(assert (=> b!5250263 (= (matchZipper!1099 ((_ map or) lt!2151177 lt!2151215) (t!374047 s!2326)) e!3266391)))

(declare-fun b!5250264 () Bool)

(declare-fun tp!1468986 () Bool)

(declare-fun tp!1468985 () Bool)

(assert (=> b!5250264 (= e!3266388 (and tp!1468986 tp!1468985))))

(declare-fun b!5250265 () Bool)

(declare-fun e!3266395 () Bool)

(assert (=> b!5250265 (= e!3266395 e!3266399)))

(declare-fun res!2227910 () Bool)

(assert (=> b!5250265 (=> res!2227910 e!3266399)))

(assert (=> b!5250265 (= res!2227910 (not (= lt!2151209 lt!2151194)))))

(assert (=> b!5250265 (= lt!2151194 ((_ map or) lt!2151177 lt!2151190))))

(declare-fun lt!2151180 () Context!8478)

(declare-fun derivationStepZipperDown!303 (Regex!14855 Context!8478 C!29980) (InoxSet Context!8478))

(assert (=> b!5250265 (= lt!2151190 (derivationStepZipperDown!303 (regTwo!30223 (regOne!30222 r!7292)) lt!2151180 (h!67188 s!2326)))))

(assert (=> b!5250265 (= lt!2151177 (derivationStepZipperDown!303 (regOne!30223 (regOne!30222 r!7292)) lt!2151180 (h!67188 s!2326)))))

(declare-fun b!5250266 () Bool)

(declare-fun e!3266408 () Unit!152854)

(declare-fun Unit!152857 () Unit!152854)

(assert (=> b!5250266 (= e!3266408 Unit!152857)))

(declare-fun b!5250267 () Bool)

(declare-fun e!3266409 () Bool)

(assert (=> b!5250267 (= e!3266403 e!3266409)))

(declare-fun res!2227916 () Bool)

(assert (=> b!5250267 (=> res!2227916 e!3266409)))

(declare-fun lt!2151174 () Bool)

(declare-fun lt!2151178 () Bool)

(declare-fun lt!2151212 () Bool)

(assert (=> b!5250267 (= res!2227916 (or (and (not (= lt!2151212 lt!2151174)) (not lt!2151178)) (not (= r!7292 (Concat!23700 (Union!14855 (regOne!30223 (regOne!30222 r!7292)) (regTwo!30223 (regOne!30222 r!7292))) (regTwo!30222 r!7292))))))))

(declare-fun lt!2151191 () Regex!14855)

(declare-fun matchRSpec!1958 (Regex!14855 List!60864) Bool)

(assert (=> b!5250267 (= lt!2151178 (matchRSpec!1958 lt!2151191 s!2326))))

(declare-fun lt!2151219 () Unit!152854)

(declare-fun mainMatchTheorem!1958 (Regex!14855 List!60864) Unit!152854)

(assert (=> b!5250267 (= lt!2151219 (mainMatchTheorem!1958 lt!2151191 s!2326))))

(declare-fun lt!2151195 () Regex!14855)

(assert (=> b!5250267 (= lt!2151174 (matchRSpec!1958 lt!2151195 s!2326))))

(declare-fun lt!2151204 () Unit!152854)

(assert (=> b!5250267 (= lt!2151204 (mainMatchTheorem!1958 lt!2151195 s!2326))))

(assert (=> b!5250267 (= lt!2151178 (matchZipper!1099 lt!2151176 s!2326))))

(declare-fun matchR!7040 (Regex!14855 List!60864) Bool)

(assert (=> b!5250267 (= lt!2151178 (matchR!7040 lt!2151191 s!2326))))

(declare-fun lt!2151208 () Unit!152854)

(declare-fun theoremZipperRegexEquiv!289 ((InoxSet Context!8478) List!60866 Regex!14855 List!60864) Unit!152854)

(assert (=> b!5250267 (= lt!2151208 (theoremZipperRegexEquiv!289 lt!2151176 lt!2151197 lt!2151191 s!2326))))

(declare-fun lt!2151181 () List!60865)

(declare-fun generalisedConcat!524 (List!60865) Regex!14855)

(assert (=> b!5250267 (= lt!2151191 (generalisedConcat!524 lt!2151181))))

(declare-fun lt!2151206 () Bool)

(assert (=> b!5250267 (= lt!2151174 lt!2151206)))

(assert (=> b!5250267 (= lt!2151174 (matchR!7040 lt!2151195 s!2326))))

(declare-fun lt!2151216 () Unit!152854)

(declare-fun lt!2151198 () (InoxSet Context!8478))

(assert (=> b!5250267 (= lt!2151216 (theoremZipperRegexEquiv!289 lt!2151198 lt!2151211 lt!2151195 s!2326))))

(declare-fun lt!2151184 () List!60865)

(assert (=> b!5250267 (= lt!2151195 (generalisedConcat!524 lt!2151184))))

(declare-fun b!5250268 () Bool)

(declare-fun e!3266396 () Bool)

(declare-fun tp_is_empty!38963 () Bool)

(declare-fun tp!1468992 () Bool)

(assert (=> b!5250268 (= e!3266396 (and tp_is_empty!38963 tp!1468992))))

(declare-fun b!5250269 () Bool)

(declare-fun e!3266404 () Bool)

(declare-fun e!3266401 () Bool)

(assert (=> b!5250269 (= e!3266404 e!3266401)))

(declare-fun res!2227911 () Bool)

(assert (=> b!5250269 (=> (not res!2227911) (not e!3266401))))

(declare-fun lt!2151187 () Regex!14855)

(assert (=> b!5250269 (= res!2227911 (= r!7292 lt!2151187))))

(declare-fun unfocusZipper!597 (List!60866) Regex!14855)

(assert (=> b!5250269 (= lt!2151187 (unfocusZipper!597 zl!343))))

(declare-fun b!5250270 () Bool)

(declare-fun e!3266402 () Unit!152854)

(declare-fun Unit!152858 () Unit!152854)

(assert (=> b!5250270 (= e!3266402 Unit!152858)))

(declare-fun lt!2151207 () Unit!152854)

(assert (=> b!5250270 (= lt!2151207 (lemmaZipperConcatMatchesSameAsBothZippers!92 lt!2151209 lt!2151215 (t!374047 s!2326)))))

(declare-fun res!2227925 () Bool)

(assert (=> b!5250270 (= res!2227925 (matchZipper!1099 lt!2151209 (t!374047 s!2326)))))

(assert (=> b!5250270 (=> res!2227925 e!3266398)))

(assert (=> b!5250270 (= (matchZipper!1099 ((_ map or) lt!2151209 lt!2151215) (t!374047 s!2326)) e!3266398)))

(declare-fun b!5250271 () Bool)

(assert (=> b!5250271 (= e!3266397 e!3266392)))

(declare-fun res!2227913 () Bool)

(assert (=> b!5250271 (=> res!2227913 e!3266392)))

(assert (=> b!5250271 (= res!2227913 (not (= lt!2151212 e!3266393)))))

(declare-fun res!2227909 () Bool)

(assert (=> b!5250271 (=> res!2227909 e!3266393)))

(assert (=> b!5250271 (= res!2227909 lt!2151206)))

(declare-fun z!1189 () (InoxSet Context!8478))

(assert (=> b!5250271 (= lt!2151212 (matchZipper!1099 z!1189 s!2326))))

(assert (=> b!5250271 (= lt!2151206 (matchZipper!1099 lt!2151198 s!2326))))

(declare-fun lt!2151185 () Unit!152854)

(assert (=> b!5250271 (= lt!2151185 e!3266408)))

(declare-fun c!908215 () Bool)

(declare-fun nullable!5024 (Regex!14855) Bool)

(assert (=> b!5250271 (= c!908215 (nullable!5024 (regTwo!30223 (regOne!30222 r!7292))))))

(declare-fun lambda!264357 () Int)

(declare-fun flatMap!582 ((InoxSet Context!8478) Int) (InoxSet Context!8478))

(declare-fun derivationStepZipperUp!227 (Context!8478 C!29980) (InoxSet Context!8478))

(assert (=> b!5250271 (= (flatMap!582 lt!2151176 lambda!264357) (derivationStepZipperUp!227 lt!2151182 (h!67188 s!2326)))))

(declare-fun lt!2151203 () Unit!152854)

(declare-fun lemmaFlatMapOnSingletonSet!114 ((InoxSet Context!8478) Context!8478 Int) Unit!152854)

(assert (=> b!5250271 (= lt!2151203 (lemmaFlatMapOnSingletonSet!114 lt!2151176 lt!2151182 lambda!264357))))

(declare-fun lt!2151217 () (InoxSet Context!8478))

(assert (=> b!5250271 (= lt!2151217 (derivationStepZipperUp!227 lt!2151182 (h!67188 s!2326)))))

(declare-fun lt!2151188 () Unit!152854)

(assert (=> b!5250271 (= lt!2151188 e!3266405)))

(declare-fun c!908214 () Bool)

(assert (=> b!5250271 (= c!908214 (nullable!5024 (regOne!30223 (regOne!30222 r!7292))))))

(assert (=> b!5250271 (= (flatMap!582 lt!2151198 lambda!264357) (derivationStepZipperUp!227 lt!2151189 (h!67188 s!2326)))))

(declare-fun lt!2151183 () Unit!152854)

(assert (=> b!5250271 (= lt!2151183 (lemmaFlatMapOnSingletonSet!114 lt!2151198 lt!2151189 lambda!264357))))

(declare-fun lt!2151179 () (InoxSet Context!8478))

(assert (=> b!5250271 (= lt!2151179 (derivationStepZipperUp!227 lt!2151189 (h!67188 s!2326)))))

(assert (=> b!5250271 (= lt!2151176 (store ((as const (Array Context!8478 Bool)) false) lt!2151182 true))))

(assert (=> b!5250271 (= lt!2151182 (Context!8479 lt!2151181))))

(assert (=> b!5250271 (= lt!2151181 (Cons!60741 (regTwo!30223 (regOne!30222 r!7292)) (t!374048 (exprs!4739 (h!67190 zl!343)))))))

(assert (=> b!5250271 (= lt!2151198 (store ((as const (Array Context!8478 Bool)) false) lt!2151189 true))))

(assert (=> b!5250271 (= lt!2151189 (Context!8479 lt!2151184))))

(assert (=> b!5250271 (= lt!2151184 (Cons!60741 (regOne!30223 (regOne!30222 r!7292)) (t!374048 (exprs!4739 (h!67190 zl!343)))))))

(declare-fun b!5250272 () Bool)

(declare-fun res!2227922 () Bool)

(assert (=> b!5250272 (=> res!2227922 e!3266407)))

(assert (=> b!5250272 (= res!2227922 (or ((_ is EmptyExpr!14855) r!7292) ((_ is EmptyLang!14855) r!7292) ((_ is ElementMatch!14855) r!7292) ((_ is Union!14855) r!7292) (not ((_ is Concat!23700) r!7292))))))

(declare-fun b!5250273 () Bool)

(declare-fun e!3266387 () Bool)

(declare-fun tp!1468993 () Bool)

(declare-fun e!3266386 () Bool)

(declare-fun inv!80384 (Context!8478) Bool)

(assert (=> b!5250273 (= e!3266387 (and (inv!80384 (h!67190 zl!343)) e!3266386 tp!1468993))))

(declare-fun b!5250274 () Bool)

(assert (=> b!5250274 (= e!3266406 (not (matchZipper!1099 lt!2151190 (t!374047 s!2326))))))

(declare-fun b!5250275 () Bool)

(declare-fun e!3266390 () Bool)

(declare-fun tp!1468991 () Bool)

(assert (=> b!5250275 (= e!3266390 tp!1468991)))

(declare-fun b!5250276 () Bool)

(declare-fun tp!1468987 () Bool)

(assert (=> b!5250276 (= e!3266386 tp!1468987)))

(declare-fun b!5250277 () Bool)

(declare-fun res!2227923 () Bool)

(assert (=> b!5250277 (=> res!2227923 e!3266407)))

(assert (=> b!5250277 (= res!2227923 (not (= r!7292 (generalisedConcat!524 (exprs!4739 (h!67190 zl!343))))))))

(declare-fun b!5250278 () Bool)

(declare-fun Unit!152859 () Unit!152854)

(assert (=> b!5250278 (= e!3266402 Unit!152859)))

(declare-fun b!5250279 () Bool)

(declare-fun Unit!152860 () Unit!152854)

(assert (=> b!5250279 (= e!3266405 Unit!152860)))

(declare-fun b!5250280 () Bool)

(declare-fun Unit!152861 () Unit!152854)

(assert (=> b!5250280 (= e!3266408 Unit!152861)))

(declare-fun lt!2151186 () Unit!152854)

(assert (=> b!5250280 (= lt!2151186 (lemmaZipperConcatMatchesSameAsBothZippers!92 lt!2151190 lt!2151215 (t!374047 s!2326)))))

(declare-fun res!2227926 () Bool)

(assert (=> b!5250280 (= res!2227926 (matchZipper!1099 lt!2151190 (t!374047 s!2326)))))

(declare-fun e!3266394 () Bool)

(assert (=> b!5250280 (=> res!2227926 e!3266394)))

(assert (=> b!5250280 (= (matchZipper!1099 ((_ map or) lt!2151190 lt!2151215) (t!374047 s!2326)) e!3266394)))

(declare-fun res!2227920 () Bool)

(assert (=> start!554810 (=> (not res!2227920) (not e!3266404))))

(declare-fun validRegex!6591 (Regex!14855) Bool)

(assert (=> start!554810 (= res!2227920 (validRegex!6591 r!7292))))

(assert (=> start!554810 e!3266404))

(assert (=> start!554810 e!3266388))

(declare-fun condSetEmpty!33515 () Bool)

(assert (=> start!554810 (= condSetEmpty!33515 (= z!1189 ((as const (Array Context!8478 Bool)) false)))))

(assert (=> start!554810 setRes!33515))

(assert (=> start!554810 e!3266387))

(assert (=> start!554810 e!3266396))

(declare-fun b!5250259 () Bool)

(declare-fun res!2227931 () Bool)

(assert (=> b!5250259 (=> res!2227931 e!3266407)))

(assert (=> b!5250259 (= res!2227931 (not ((_ is Cons!60741) (exprs!4739 (h!67190 zl!343)))))))

(declare-fun b!5250281 () Bool)

(assert (=> b!5250281 (= e!3266409 true)))

(declare-fun lt!2151175 () Regex!14855)

(assert (=> b!5250281 (= lt!2151175 (generalisedConcat!524 (t!374048 (exprs!4739 (h!67190 zl!343)))))))

(declare-fun b!5250282 () Bool)

(assert (=> b!5250282 (= e!3266401 (not e!3266407))))

(declare-fun res!2227930 () Bool)

(assert (=> b!5250282 (=> res!2227930 e!3266407)))

(assert (=> b!5250282 (= res!2227930 (not ((_ is Cons!60742) zl!343)))))

(assert (=> b!5250282 (= lt!2151202 (matchRSpec!1958 r!7292 s!2326))))

(assert (=> b!5250282 (= lt!2151202 (matchR!7040 r!7292 s!2326))))

(declare-fun lt!2151192 () Unit!152854)

(assert (=> b!5250282 (= lt!2151192 (mainMatchTheorem!1958 r!7292 s!2326))))

(assert (=> b!5250283 (= e!3266389 e!3266395)))

(declare-fun res!2227927 () Bool)

(assert (=> b!5250283 (=> res!2227927 e!3266395)))

(assert (=> b!5250283 (= res!2227927 (or (and ((_ is ElementMatch!14855) (regOne!30222 r!7292)) (= (c!908217 (regOne!30222 r!7292)) (h!67188 s!2326))) (not ((_ is Union!14855) (regOne!30222 r!7292)))))))

(declare-fun lt!2151205 () Unit!152854)

(assert (=> b!5250283 (= lt!2151205 e!3266402)))

(declare-fun c!908216 () Bool)

(assert (=> b!5250283 (= c!908216 (nullable!5024 (h!67189 (exprs!4739 (h!67190 zl!343)))))))

(assert (=> b!5250283 (= (flatMap!582 z!1189 lambda!264357) (derivationStepZipperUp!227 (h!67190 zl!343) (h!67188 s!2326)))))

(declare-fun lt!2151220 () Unit!152854)

(assert (=> b!5250283 (= lt!2151220 (lemmaFlatMapOnSingletonSet!114 z!1189 (h!67190 zl!343) lambda!264357))))

(assert (=> b!5250283 (= lt!2151215 (derivationStepZipperUp!227 lt!2151180 (h!67188 s!2326)))))

(assert (=> b!5250283 (= lt!2151209 (derivationStepZipperDown!303 (h!67189 (exprs!4739 (h!67190 zl!343))) lt!2151180 (h!67188 s!2326)))))

(assert (=> b!5250283 (= lt!2151180 (Context!8479 (t!374048 (exprs!4739 (h!67190 zl!343)))))))

(declare-fun lt!2151214 () (InoxSet Context!8478))

(assert (=> b!5250283 (= lt!2151214 (derivationStepZipperUp!227 (Context!8479 (Cons!60741 (h!67189 (exprs!4739 (h!67190 zl!343))) (t!374048 (exprs!4739 (h!67190 zl!343))))) (h!67188 s!2326)))))

(declare-fun b!5250284 () Bool)

(assert (=> b!5250284 (= e!3266410 (matchZipper!1099 lt!2151190 (t!374047 s!2326)))))

(declare-fun b!5250285 () Bool)

(assert (=> b!5250285 (= e!3266394 (matchZipper!1099 lt!2151215 (t!374047 s!2326)))))

(declare-fun b!5250286 () Bool)

(declare-fun res!2227918 () Bool)

(assert (=> b!5250286 (=> res!2227918 e!3266392)))

(assert (=> b!5250286 (= res!2227918 (or (not (= lt!2151187 r!7292)) (not (= (exprs!4739 (h!67190 zl!343)) (Cons!60741 (regOne!30222 r!7292) (t!374048 (exprs!4739 (h!67190 zl!343))))))))))

(declare-fun b!5250287 () Bool)

(declare-fun res!2227921 () Bool)

(assert (=> b!5250287 (=> res!2227921 e!3266407)))

(declare-fun generalisedUnion!784 (List!60865) Regex!14855)

(declare-fun unfocusZipperList!297 (List!60866) List!60865)

(assert (=> b!5250287 (= res!2227921 (not (= r!7292 (generalisedUnion!784 (unfocusZipperList!297 zl!343)))))))

(declare-fun b!5250288 () Bool)

(declare-fun tp!1468984 () Bool)

(assert (=> b!5250288 (= e!3266388 tp!1468984)))

(declare-fun b!5250289 () Bool)

(assert (=> b!5250289 (= e!3266388 tp_is_empty!38963)))

(declare-fun tp!1468988 () Bool)

(declare-fun setNonEmpty!33515 () Bool)

(declare-fun setElem!33515 () Context!8478)

(assert (=> setNonEmpty!33515 (= setRes!33515 (and tp!1468988 (inv!80384 setElem!33515) e!3266390))))

(declare-fun setRest!33515 () (InoxSet Context!8478))

(assert (=> setNonEmpty!33515 (= z!1189 ((_ map or) (store ((as const (Array Context!8478 Bool)) false) setElem!33515 true) setRest!33515))))

(declare-fun b!5250290 () Bool)

(declare-fun res!2227917 () Bool)

(assert (=> b!5250290 (=> res!2227917 e!3266407)))

(declare-fun isEmpty!32684 (List!60866) Bool)

(assert (=> b!5250290 (= res!2227917 (not (isEmpty!32684 (t!374049 zl!343))))))

(declare-fun b!5250291 () Bool)

(declare-fun res!2227915 () Bool)

(assert (=> b!5250291 (=> (not res!2227915) (not e!3266404))))

(declare-fun toList!8639 ((InoxSet Context!8478)) List!60866)

(assert (=> b!5250291 (= res!2227915 (= (toList!8639 z!1189) zl!343))))

(assert (= (and start!554810 res!2227920) b!5250291))

(assert (= (and b!5250291 res!2227915) b!5250269))

(assert (= (and b!5250269 res!2227911) b!5250282))

(assert (= (and b!5250282 (not res!2227930)) b!5250290))

(assert (= (and b!5250290 (not res!2227917)) b!5250277))

(assert (= (and b!5250277 (not res!2227923)) b!5250259))

(assert (= (and b!5250259 (not res!2227931)) b!5250287))

(assert (= (and b!5250287 (not res!2227921)) b!5250272))

(assert (= (and b!5250272 (not res!2227922)) b!5250253))

(assert (= (and b!5250253 (not res!2227912)) b!5250254))

(assert (= (and b!5250254 (not res!2227924)) b!5250283))

(assert (= (and b!5250283 c!908216) b!5250270))

(assert (= (and b!5250283 (not c!908216)) b!5250278))

(assert (= (and b!5250270 (not res!2227925)) b!5250262))

(assert (= (and b!5250283 (not res!2227927)) b!5250265))

(assert (= (and b!5250265 (not res!2227910)) b!5250256))

(assert (= (and b!5250256 (not res!2227907)) b!5250284))

(assert (= (and b!5250256 res!2227919) b!5250274))

(assert (= (and b!5250256 (not res!2227929)) b!5250271))

(assert (= (and b!5250271 c!908214) b!5250263))

(assert (= (and b!5250271 (not c!908214)) b!5250279))

(assert (= (and b!5250263 (not res!2227928)) b!5250258))

(assert (= (and b!5250271 c!908215) b!5250280))

(assert (= (and b!5250271 (not c!908215)) b!5250266))

(assert (= (and b!5250280 (not res!2227926)) b!5250285))

(assert (= (and b!5250271 (not res!2227909)) b!5250260))

(assert (= (and b!5250271 (not res!2227913)) b!5250286))

(assert (= (and b!5250286 (not res!2227918)) b!5250255))

(assert (= (and b!5250255 (not res!2227914)) b!5250261))

(assert (= (and b!5250261 (not res!2227908)) b!5250267))

(assert (= (and b!5250267 (not res!2227916)) b!5250281))

(assert (= (and start!554810 ((_ is ElementMatch!14855) r!7292)) b!5250289))

(assert (= (and start!554810 ((_ is Concat!23700) r!7292)) b!5250264))

(assert (= (and start!554810 ((_ is Star!14855) r!7292)) b!5250288))

(assert (= (and start!554810 ((_ is Union!14855) r!7292)) b!5250257))

(assert (= (and start!554810 condSetEmpty!33515) setIsEmpty!33515))

(assert (= (and start!554810 (not condSetEmpty!33515)) setNonEmpty!33515))

(assert (= setNonEmpty!33515 b!5250275))

(assert (= b!5250273 b!5250276))

(assert (= (and start!554810 ((_ is Cons!60742) zl!343)) b!5250273))

(assert (= (and start!554810 ((_ is Cons!60740) s!2326)) b!5250268))

(declare-fun m!6293454 () Bool)

(assert (=> b!5250285 m!6293454))

(declare-fun m!6293456 () Bool)

(assert (=> b!5250263 m!6293456))

(declare-fun m!6293458 () Bool)

(assert (=> b!5250263 m!6293458))

(declare-fun m!6293460 () Bool)

(assert (=> b!5250273 m!6293460))

(assert (=> b!5250262 m!6293454))

(declare-fun m!6293462 () Bool)

(assert (=> b!5250267 m!6293462))

(declare-fun m!6293464 () Bool)

(assert (=> b!5250267 m!6293464))

(declare-fun m!6293466 () Bool)

(assert (=> b!5250267 m!6293466))

(declare-fun m!6293468 () Bool)

(assert (=> b!5250267 m!6293468))

(declare-fun m!6293470 () Bool)

(assert (=> b!5250267 m!6293470))

(declare-fun m!6293472 () Bool)

(assert (=> b!5250267 m!6293472))

(declare-fun m!6293474 () Bool)

(assert (=> b!5250267 m!6293474))

(declare-fun m!6293476 () Bool)

(assert (=> b!5250267 m!6293476))

(declare-fun m!6293478 () Bool)

(assert (=> b!5250267 m!6293478))

(declare-fun m!6293480 () Bool)

(assert (=> b!5250267 m!6293480))

(declare-fun m!6293482 () Bool)

(assert (=> b!5250267 m!6293482))

(declare-fun m!6293484 () Bool)

(assert (=> setNonEmpty!33515 m!6293484))

(declare-fun m!6293486 () Bool)

(assert (=> b!5250290 m!6293486))

(declare-fun m!6293488 () Bool)

(assert (=> b!5250283 m!6293488))

(declare-fun m!6293490 () Bool)

(assert (=> b!5250283 m!6293490))

(declare-fun m!6293492 () Bool)

(assert (=> b!5250283 m!6293492))

(declare-fun m!6293494 () Bool)

(assert (=> b!5250283 m!6293494))

(declare-fun m!6293496 () Bool)

(assert (=> b!5250283 m!6293496))

(declare-fun m!6293498 () Bool)

(assert (=> b!5250283 m!6293498))

(declare-fun m!6293500 () Bool)

(assert (=> b!5250283 m!6293500))

(declare-fun m!6293502 () Bool)

(assert (=> b!5250284 m!6293502))

(declare-fun m!6293504 () Bool)

(assert (=> start!554810 m!6293504))

(assert (=> b!5250274 m!6293502))

(declare-fun m!6293506 () Bool)

(assert (=> b!5250254 m!6293506))

(assert (=> b!5250258 m!6293454))

(declare-fun m!6293508 () Bool)

(assert (=> b!5250261 m!6293508))

(declare-fun m!6293510 () Bool)

(assert (=> b!5250269 m!6293510))

(declare-fun m!6293512 () Bool)

(assert (=> b!5250256 m!6293512))

(declare-fun m!6293514 () Bool)

(assert (=> b!5250256 m!6293514))

(declare-fun m!6293516 () Bool)

(assert (=> b!5250256 m!6293516))

(declare-fun m!6293518 () Bool)

(assert (=> b!5250256 m!6293518))

(declare-fun m!6293520 () Bool)

(assert (=> b!5250265 m!6293520))

(declare-fun m!6293522 () Bool)

(assert (=> b!5250265 m!6293522))

(declare-fun m!6293524 () Bool)

(assert (=> b!5250282 m!6293524))

(declare-fun m!6293526 () Bool)

(assert (=> b!5250282 m!6293526))

(declare-fun m!6293528 () Bool)

(assert (=> b!5250282 m!6293528))

(declare-fun m!6293530 () Bool)

(assert (=> b!5250281 m!6293530))

(declare-fun m!6293532 () Bool)

(assert (=> b!5250255 m!6293532))

(declare-fun m!6293534 () Bool)

(assert (=> b!5250255 m!6293534))

(declare-fun m!6293536 () Bool)

(assert (=> b!5250287 m!6293536))

(assert (=> b!5250287 m!6293536))

(declare-fun m!6293538 () Bool)

(assert (=> b!5250287 m!6293538))

(declare-fun m!6293540 () Bool)

(assert (=> b!5250253 m!6293540))

(declare-fun m!6293542 () Bool)

(assert (=> b!5250253 m!6293542))

(declare-fun m!6293544 () Bool)

(assert (=> b!5250253 m!6293544))

(declare-fun m!6293546 () Bool)

(assert (=> b!5250253 m!6293546))

(declare-fun m!6293548 () Bool)

(assert (=> b!5250253 m!6293548))

(assert (=> b!5250253 m!6293544))

(assert (=> b!5250253 m!6293540))

(declare-fun m!6293550 () Bool)

(assert (=> b!5250253 m!6293550))

(declare-fun m!6293552 () Bool)

(assert (=> b!5250271 m!6293552))

(declare-fun m!6293554 () Bool)

(assert (=> b!5250271 m!6293554))

(declare-fun m!6293556 () Bool)

(assert (=> b!5250271 m!6293556))

(declare-fun m!6293558 () Bool)

(assert (=> b!5250271 m!6293558))

(declare-fun m!6293560 () Bool)

(assert (=> b!5250271 m!6293560))

(declare-fun m!6293562 () Bool)

(assert (=> b!5250271 m!6293562))

(declare-fun m!6293564 () Bool)

(assert (=> b!5250271 m!6293564))

(declare-fun m!6293566 () Bool)

(assert (=> b!5250271 m!6293566))

(declare-fun m!6293568 () Bool)

(assert (=> b!5250271 m!6293568))

(declare-fun m!6293570 () Bool)

(assert (=> b!5250271 m!6293570))

(declare-fun m!6293572 () Bool)

(assert (=> b!5250271 m!6293572))

(declare-fun m!6293574 () Bool)

(assert (=> b!5250271 m!6293574))

(declare-fun m!6293576 () Bool)

(assert (=> b!5250291 m!6293576))

(assert (=> b!5250260 m!6293480))

(declare-fun m!6293578 () Bool)

(assert (=> b!5250270 m!6293578))

(assert (=> b!5250270 m!6293512))

(declare-fun m!6293580 () Bool)

(assert (=> b!5250270 m!6293580))

(declare-fun m!6293582 () Bool)

(assert (=> b!5250280 m!6293582))

(assert (=> b!5250280 m!6293502))

(declare-fun m!6293584 () Bool)

(assert (=> b!5250280 m!6293584))

(declare-fun m!6293586 () Bool)

(assert (=> b!5250277 m!6293586))

(check-sat (not b!5250275) tp_is_empty!38963 (not b!5250273) (not b!5250288) (not b!5250284) (not b!5250268) (not setNonEmpty!33515) (not b!5250280) (not b!5250257) (not start!554810) (not b!5250281) (not b!5250274) (not b!5250285) (not b!5250271) (not b!5250283) (not b!5250269) (not b!5250282) (not b!5250261) (not b!5250264) (not b!5250254) (not b!5250270) (not b!5250290) (not b!5250277) (not b!5250265) (not b!5250287) (not b!5250262) (not b!5250258) (not b!5250260) (not b!5250263) (not b!5250267) (not b!5250276) (not b!5250256) (not b!5250291) (not b!5250253) (not b!5250255))
(check-sat)
