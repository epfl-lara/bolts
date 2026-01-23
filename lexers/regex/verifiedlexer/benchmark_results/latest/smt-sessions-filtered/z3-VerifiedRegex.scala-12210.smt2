; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!687828 () Bool)

(assert start!687828)

(declare-fun b!7076404 () Bool)

(assert (=> b!7076404 true))

(declare-fun b!7076406 () Bool)

(assert (=> b!7076406 true))

(declare-fun b!7076388 () Bool)

(assert (=> b!7076388 true))

(declare-fun e!4254379 () Bool)

(declare-fun e!4254383 () Bool)

(assert (=> b!7076388 (= e!4254379 e!4254383)))

(declare-fun res!2890400 () Bool)

(assert (=> b!7076388 (=> res!2890400 e!4254383)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35604 0))(
  ( (C!35605 (val!27504 Int)) )
))
(declare-datatypes ((Regex!17667 0))(
  ( (ElementMatch!17667 (c!1320312 C!35604)) (Concat!26512 (regOne!35846 Regex!17667) (regTwo!35846 Regex!17667)) (EmptyExpr!17667) (Star!17667 (reg!17996 Regex!17667)) (EmptyLang!17667) (Union!17667 (regOne!35847 Regex!17667) (regTwo!35847 Regex!17667)) )
))
(declare-datatypes ((List!68527 0))(
  ( (Nil!68403) (Cons!68403 (h!74851 Regex!17667) (t!382312 List!68527)) )
))
(declare-datatypes ((Context!13326 0))(
  ( (Context!13327 (exprs!7163 List!68527)) )
))
(declare-fun lt!2549297 () (InoxSet Context!13326))

(declare-fun lt!2549295 () (InoxSet Context!13326))

(declare-datatypes ((List!68528 0))(
  ( (Nil!68404) (Cons!68404 (h!74852 C!35604) (t!382313 List!68528)) )
))
(declare-fun s!7408 () List!68528)

(declare-fun derivationStepZipper!3117 ((InoxSet Context!13326) C!35604) (InoxSet Context!13326))

(assert (=> b!7076388 (= res!2890400 (not (= (derivationStepZipper!3117 lt!2549297 (h!74852 s!7408)) lt!2549295)))))

(declare-fun lambda!426755 () Int)

(declare-fun lt!2549279 () Context!13326)

(declare-fun flatMap!2593 ((InoxSet Context!13326) Int) (InoxSet Context!13326))

(declare-fun derivationStepZipperUp!2251 (Context!13326 C!35604) (InoxSet Context!13326))

(assert (=> b!7076388 (= (flatMap!2593 lt!2549297 lambda!426755) (derivationStepZipperUp!2251 lt!2549279 (h!74852 s!7408)))))

(declare-datatypes ((Unit!162045 0))(
  ( (Unit!162046) )
))
(declare-fun lt!2549283 () Unit!162045)

(declare-fun lemmaFlatMapOnSingletonSet!2102 ((InoxSet Context!13326) Context!13326 Int) Unit!162045)

(assert (=> b!7076388 (= lt!2549283 (lemmaFlatMapOnSingletonSet!2102 lt!2549297 lt!2549279 lambda!426755))))

(assert (=> b!7076388 (= lt!2549295 (derivationStepZipperUp!2251 lt!2549279 (h!74852 s!7408)))))

(declare-fun lambda!426754 () Int)

(declare-fun lt!2549286 () Unit!162045)

(declare-fun ct2!306 () Context!13326)

(declare-fun lt!2549281 () Context!13326)

(declare-fun lemmaConcatPreservesForall!978 (List!68527 List!68527 Int) Unit!162045)

(assert (=> b!7076388 (= lt!2549286 (lemmaConcatPreservesForall!978 (exprs!7163 lt!2549281) (exprs!7163 ct2!306) lambda!426754))))

(declare-fun b!7076389 () Bool)

(declare-fun e!4254380 () Bool)

(declare-fun e!4254386 () Bool)

(assert (=> b!7076389 (= e!4254380 e!4254386)))

(declare-fun res!2890397 () Bool)

(assert (=> b!7076389 (=> res!2890397 e!4254386)))

(declare-fun lt!2549296 () (InoxSet Context!13326))

(declare-fun matchZipper!3207 ((InoxSet Context!13326) List!68528) Bool)

(assert (=> b!7076389 (= res!2890397 (not (matchZipper!3207 lt!2549296 (t!382313 s!7408))))))

(declare-fun lt!2549303 () List!68527)

(declare-fun derivationStepZipperDown!2301 (Regex!17667 Context!13326 C!35604) (InoxSet Context!13326))

(declare-fun ++!15809 (List!68527 List!68527) List!68527)

(assert (=> b!7076389 (= lt!2549296 (derivationStepZipperDown!2301 (h!74851 (exprs!7163 lt!2549281)) (Context!13327 (++!15809 lt!2549303 (exprs!7163 ct2!306))) (h!74852 s!7408)))))

(declare-fun lt!2549299 () Unit!162045)

(assert (=> b!7076389 (= lt!2549299 (lemmaConcatPreservesForall!978 lt!2549303 (exprs!7163 ct2!306) lambda!426754))))

(declare-fun setRes!50377 () Bool)

(declare-fun e!4254385 () Bool)

(declare-fun setNonEmpty!50377 () Bool)

(declare-fun setElem!50377 () Context!13326)

(declare-fun tp!1942918 () Bool)

(declare-fun inv!87026 (Context!13326) Bool)

(assert (=> setNonEmpty!50377 (= setRes!50377 (and tp!1942918 (inv!87026 setElem!50377) e!4254385))))

(declare-fun z1!570 () (InoxSet Context!13326))

(declare-fun setRest!50377 () (InoxSet Context!13326))

(assert (=> setNonEmpty!50377 (= z1!570 ((_ map or) (store ((as const (Array Context!13326 Bool)) false) setElem!50377 true) setRest!50377))))

(declare-fun b!7076390 () Bool)

(declare-fun res!2890405 () Bool)

(assert (=> b!7076390 (=> res!2890405 e!4254383)))

(get-info :version)

(assert (=> b!7076390 (= res!2890405 (not ((_ is Cons!68403) (exprs!7163 lt!2549281))))))

(declare-fun res!2890399 () Bool)

(declare-fun e!4254376 () Bool)

(assert (=> start!687828 (=> (not res!2890399) (not e!4254376))))

(declare-fun lt!2549305 () (InoxSet Context!13326))

(assert (=> start!687828 (= res!2890399 (matchZipper!3207 lt!2549305 s!7408))))

(declare-fun appendTo!788 ((InoxSet Context!13326) Context!13326) (InoxSet Context!13326))

(assert (=> start!687828 (= lt!2549305 (appendTo!788 z1!570 ct2!306))))

(assert (=> start!687828 e!4254376))

(declare-fun condSetEmpty!50377 () Bool)

(assert (=> start!687828 (= condSetEmpty!50377 (= z1!570 ((as const (Array Context!13326 Bool)) false)))))

(assert (=> start!687828 setRes!50377))

(declare-fun e!4254375 () Bool)

(assert (=> start!687828 (and (inv!87026 ct2!306) e!4254375)))

(declare-fun e!4254381 () Bool)

(assert (=> start!687828 e!4254381))

(declare-fun b!7076391 () Bool)

(declare-fun res!2890404 () Bool)

(assert (=> b!7076391 (=> res!2890404 e!4254383)))

(declare-fun isEmpty!39922 (List!68527) Bool)

(assert (=> b!7076391 (= res!2890404 (isEmpty!39922 (exprs!7163 lt!2549281)))))

(declare-fun b!7076392 () Bool)

(declare-fun res!2890407 () Bool)

(declare-fun e!4254374 () Bool)

(assert (=> b!7076392 (=> res!2890407 e!4254374)))

(declare-datatypes ((tuple2!68292 0))(
  ( (tuple2!68293 (_1!37449 List!68528) (_2!37449 List!68528)) )
))
(declare-fun lt!2549301 () tuple2!68292)

(declare-fun ++!15810 (List!68528 List!68528) List!68528)

(assert (=> b!7076392 (= res!2890407 (not (= (++!15810 (_1!37449 lt!2549301) (_2!37449 lt!2549301)) (t!382313 s!7408))))))

(declare-fun b!7076393 () Bool)

(declare-fun res!2890408 () Bool)

(assert (=> b!7076393 (=> res!2890408 e!4254374)))

(declare-fun lt!2549284 () (InoxSet Context!13326))

(assert (=> b!7076393 (= res!2890408 (not (matchZipper!3207 lt!2549284 (_2!37449 lt!2549301))))))

(declare-fun b!7076394 () Bool)

(assert (=> b!7076394 (= e!4254383 e!4254380)))

(declare-fun res!2890401 () Bool)

(assert (=> b!7076394 (=> res!2890401 e!4254380)))

(declare-fun nullable!7350 (Regex!17667) Bool)

(assert (=> b!7076394 (= res!2890401 (nullable!7350 (h!74851 (exprs!7163 lt!2549281))))))

(declare-fun lt!2549289 () Context!13326)

(assert (=> b!7076394 (= lt!2549289 (Context!13327 lt!2549303))))

(declare-fun tail!13863 (List!68527) List!68527)

(assert (=> b!7076394 (= lt!2549303 (tail!13863 (exprs!7163 lt!2549281)))))

(declare-fun b!7076395 () Bool)

(declare-fun e!4254384 () Bool)

(declare-fun e!4254378 () Bool)

(assert (=> b!7076395 (= e!4254384 e!4254378)))

(declare-fun res!2890410 () Bool)

(assert (=> b!7076395 (=> res!2890410 e!4254378)))

(declare-fun lt!2549282 () (InoxSet Context!13326))

(declare-fun lt!2549294 () List!68528)

(assert (=> b!7076395 (= res!2890410 (not (matchZipper!3207 lt!2549282 lt!2549294)))))

(assert (=> b!7076395 (= lt!2549294 (Cons!68404 (h!74852 s!7408) (_1!37449 lt!2549301)))))

(declare-fun b!7076396 () Bool)

(declare-fun res!2890403 () Bool)

(declare-fun e!4254377 () Bool)

(assert (=> b!7076396 (=> res!2890403 e!4254377)))

(declare-fun lt!2549293 () Context!13326)

(assert (=> b!7076396 (= res!2890403 (not (select lt!2549305 lt!2549293)))))

(declare-fun b!7076397 () Bool)

(declare-fun tp!1942915 () Bool)

(assert (=> b!7076397 (= e!4254385 tp!1942915)))

(declare-fun b!7076398 () Bool)

(declare-fun res!2890396 () Bool)

(assert (=> b!7076398 (=> (not res!2890396) (not e!4254376))))

(assert (=> b!7076398 (= res!2890396 ((_ is Cons!68404) s!7408))))

(declare-fun b!7076399 () Bool)

(declare-fun tp!1942916 () Bool)

(assert (=> b!7076399 (= e!4254375 tp!1942916)))

(declare-fun b!7076400 () Bool)

(assert (=> b!7076400 (= e!4254378 (= (++!15810 lt!2549294 (_2!37449 lt!2549301)) s!7408))))

(declare-fun b!7076401 () Bool)

(assert (=> b!7076401 (= e!4254374 e!4254384)))

(declare-fun res!2890406 () Bool)

(assert (=> b!7076401 (=> res!2890406 e!4254384)))

(declare-fun lt!2549300 () (InoxSet Context!13326))

(declare-fun lt!2549302 () (InoxSet Context!13326))

(declare-fun lt!2549287 () (InoxSet Context!13326))

(assert (=> b!7076401 (= res!2890406 (or (not (= lt!2549300 lt!2549302)) (not (= lt!2549300 lt!2549287))))))

(assert (=> b!7076401 (= (flatMap!2593 lt!2549282 lambda!426755) (derivationStepZipperUp!2251 lt!2549281 (h!74852 s!7408)))))

(declare-fun lt!2549298 () Unit!162045)

(assert (=> b!7076401 (= lt!2549298 (lemmaFlatMapOnSingletonSet!2102 lt!2549282 lt!2549281 lambda!426755))))

(assert (=> b!7076401 (= lt!2549302 (derivationStepZipperUp!2251 lt!2549281 (h!74852 s!7408)))))

(assert (=> b!7076401 (= lt!2549300 (derivationStepZipper!3117 lt!2549282 (h!74852 s!7408)))))

(assert (=> b!7076401 (= lt!2549282 (store ((as const (Array Context!13326 Bool)) false) lt!2549281 true))))

(declare-fun b!7076402 () Bool)

(declare-fun tp_is_empty!44559 () Bool)

(declare-fun tp!1942917 () Bool)

(assert (=> b!7076402 (= e!4254381 (and tp_is_empty!44559 tp!1942917))))

(declare-fun b!7076403 () Bool)

(declare-fun e!4254382 () Bool)

(assert (=> b!7076403 (= e!4254382 e!4254379)))

(declare-fun res!2890409 () Bool)

(assert (=> b!7076403 (=> res!2890409 e!4254379)))

(declare-fun lt!2549306 () (InoxSet Context!13326))

(assert (=> b!7076403 (= res!2890409 (not (= lt!2549297 lt!2549306)))))

(assert (=> b!7076403 (= lt!2549297 (store ((as const (Array Context!13326 Bool)) false) lt!2549279 true))))

(declare-fun lt!2549290 () Unit!162045)

(assert (=> b!7076403 (= lt!2549290 (lemmaConcatPreservesForall!978 (exprs!7163 lt!2549281) (exprs!7163 ct2!306) lambda!426754))))

(assert (=> b!7076404 (= e!4254376 (not e!4254377))))

(declare-fun res!2890398 () Bool)

(assert (=> b!7076404 (=> res!2890398 e!4254377)))

(assert (=> b!7076404 (= res!2890398 (not (matchZipper!3207 lt!2549306 s!7408)))))

(assert (=> b!7076404 (= lt!2549306 (store ((as const (Array Context!13326 Bool)) false) lt!2549293 true))))

(declare-fun lambda!426752 () Int)

(declare-fun getWitness!1781 ((InoxSet Context!13326) Int) Context!13326)

(assert (=> b!7076404 (= lt!2549293 (getWitness!1781 lt!2549305 lambda!426752))))

(declare-datatypes ((List!68529 0))(
  ( (Nil!68405) (Cons!68405 (h!74853 Context!13326) (t!382314 List!68529)) )
))
(declare-fun lt!2549304 () List!68529)

(declare-fun exists!3731 (List!68529 Int) Bool)

(assert (=> b!7076404 (exists!3731 lt!2549304 lambda!426752)))

(declare-fun lt!2549280 () Unit!162045)

(declare-fun lemmaZipperMatchesExistsMatchingContext!588 (List!68529 List!68528) Unit!162045)

(assert (=> b!7076404 (= lt!2549280 (lemmaZipperMatchesExistsMatchingContext!588 lt!2549304 s!7408))))

(declare-fun toList!11008 ((InoxSet Context!13326)) List!68529)

(assert (=> b!7076404 (= lt!2549304 (toList!11008 lt!2549305))))

(declare-fun setIsEmpty!50377 () Bool)

(assert (=> setIsEmpty!50377 setRes!50377))

(declare-fun b!7076405 () Bool)

(assert (=> b!7076405 (= e!4254386 e!4254374)))

(declare-fun res!2890402 () Bool)

(assert (=> b!7076405 (=> res!2890402 e!4254374)))

(assert (=> b!7076405 (= res!2890402 (not (matchZipper!3207 lt!2549287 (_1!37449 lt!2549301))))))

(declare-datatypes ((Option!16978 0))(
  ( (None!16977) (Some!16977 (v!53271 tuple2!68292)) )
))
(declare-fun lt!2549285 () Option!16978)

(declare-fun get!23962 (Option!16978) tuple2!68292)

(assert (=> b!7076405 (= lt!2549301 (get!23962 lt!2549285))))

(declare-fun isDefined!13679 (Option!16978) Bool)

(assert (=> b!7076405 (isDefined!13679 lt!2549285)))

(declare-fun findConcatSeparationZippers!494 ((InoxSet Context!13326) (InoxSet Context!13326) List!68528 List!68528 List!68528) Option!16978)

(assert (=> b!7076405 (= lt!2549285 (findConcatSeparationZippers!494 lt!2549287 lt!2549284 Nil!68404 (t!382313 s!7408) (t!382313 s!7408)))))

(assert (=> b!7076405 (= lt!2549284 (store ((as const (Array Context!13326 Bool)) false) ct2!306 true))))

(declare-fun lt!2549291 () Unit!162045)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!482 ((InoxSet Context!13326) Context!13326 List!68528) Unit!162045)

(assert (=> b!7076405 (= lt!2549291 (lemmaConcatZipperMatchesStringThenFindConcatDefined!482 lt!2549287 ct2!306 (t!382313 s!7408)))))

(assert (=> b!7076405 (= lt!2549296 (appendTo!788 lt!2549287 ct2!306))))

(assert (=> b!7076405 (= lt!2549287 (derivationStepZipperDown!2301 (h!74851 (exprs!7163 lt!2549281)) lt!2549289 (h!74852 s!7408)))))

(declare-fun lt!2549292 () Unit!162045)

(assert (=> b!7076405 (= lt!2549292 (lemmaConcatPreservesForall!978 lt!2549303 (exprs!7163 ct2!306) lambda!426754))))

(declare-fun lt!2549278 () Unit!162045)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!134 (Context!13326 Regex!17667 C!35604 Context!13326) Unit!162045)

(assert (=> b!7076405 (= lt!2549278 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!134 lt!2549289 (h!74851 (exprs!7163 lt!2549281)) (h!74852 s!7408) ct2!306))))

(assert (=> b!7076406 (= e!4254377 e!4254382)))

(declare-fun res!2890395 () Bool)

(assert (=> b!7076406 (=> res!2890395 e!4254382)))

(assert (=> b!7076406 (= res!2890395 (or (not (= lt!2549279 lt!2549293)) (not (select z1!570 lt!2549281))))))

(assert (=> b!7076406 (= lt!2549279 (Context!13327 (++!15809 (exprs!7163 lt!2549281) (exprs!7163 ct2!306))))))

(declare-fun lt!2549288 () Unit!162045)

(assert (=> b!7076406 (= lt!2549288 (lemmaConcatPreservesForall!978 (exprs!7163 lt!2549281) (exprs!7163 ct2!306) lambda!426754))))

(declare-fun lambda!426753 () Int)

(declare-fun mapPost2!496 ((InoxSet Context!13326) Int Context!13326) Context!13326)

(assert (=> b!7076406 (= lt!2549281 (mapPost2!496 z1!570 lambda!426753 lt!2549293))))

(assert (= (and start!687828 res!2890399) b!7076398))

(assert (= (and b!7076398 res!2890396) b!7076404))

(assert (= (and b!7076404 (not res!2890398)) b!7076396))

(assert (= (and b!7076396 (not res!2890403)) b!7076406))

(assert (= (and b!7076406 (not res!2890395)) b!7076403))

(assert (= (and b!7076403 (not res!2890409)) b!7076388))

(assert (= (and b!7076388 (not res!2890400)) b!7076390))

(assert (= (and b!7076390 (not res!2890405)) b!7076391))

(assert (= (and b!7076391 (not res!2890404)) b!7076394))

(assert (= (and b!7076394 (not res!2890401)) b!7076389))

(assert (= (and b!7076389 (not res!2890397)) b!7076405))

(assert (= (and b!7076405 (not res!2890402)) b!7076393))

(assert (= (and b!7076393 (not res!2890408)) b!7076392))

(assert (= (and b!7076392 (not res!2890407)) b!7076401))

(assert (= (and b!7076401 (not res!2890406)) b!7076395))

(assert (= (and b!7076395 (not res!2890410)) b!7076400))

(assert (= (and start!687828 condSetEmpty!50377) setIsEmpty!50377))

(assert (= (and start!687828 (not condSetEmpty!50377)) setNonEmpty!50377))

(assert (= setNonEmpty!50377 b!7076397))

(assert (= start!687828 b!7076399))

(assert (= (and start!687828 ((_ is Cons!68404) s!7408)) b!7076402))

(declare-fun m!7804446 () Bool)

(assert (=> b!7076405 m!7804446))

(declare-fun m!7804448 () Bool)

(assert (=> b!7076405 m!7804448))

(declare-fun m!7804450 () Bool)

(assert (=> b!7076405 m!7804450))

(declare-fun m!7804452 () Bool)

(assert (=> b!7076405 m!7804452))

(declare-fun m!7804454 () Bool)

(assert (=> b!7076405 m!7804454))

(declare-fun m!7804456 () Bool)

(assert (=> b!7076405 m!7804456))

(declare-fun m!7804458 () Bool)

(assert (=> b!7076405 m!7804458))

(declare-fun m!7804460 () Bool)

(assert (=> b!7076405 m!7804460))

(declare-fun m!7804462 () Bool)

(assert (=> b!7076405 m!7804462))

(declare-fun m!7804464 () Bool)

(assert (=> b!7076405 m!7804464))

(declare-fun m!7804466 () Bool)

(assert (=> b!7076406 m!7804466))

(declare-fun m!7804468 () Bool)

(assert (=> b!7076406 m!7804468))

(declare-fun m!7804470 () Bool)

(assert (=> b!7076406 m!7804470))

(declare-fun m!7804472 () Bool)

(assert (=> b!7076406 m!7804472))

(declare-fun m!7804474 () Bool)

(assert (=> b!7076389 m!7804474))

(declare-fun m!7804476 () Bool)

(assert (=> b!7076389 m!7804476))

(declare-fun m!7804478 () Bool)

(assert (=> b!7076389 m!7804478))

(assert (=> b!7076389 m!7804456))

(declare-fun m!7804480 () Bool)

(assert (=> b!7076403 m!7804480))

(assert (=> b!7076403 m!7804470))

(declare-fun m!7804482 () Bool)

(assert (=> setNonEmpty!50377 m!7804482))

(declare-fun m!7804484 () Bool)

(assert (=> b!7076394 m!7804484))

(declare-fun m!7804486 () Bool)

(assert (=> b!7076394 m!7804486))

(declare-fun m!7804488 () Bool)

(assert (=> b!7076392 m!7804488))

(declare-fun m!7804490 () Bool)

(assert (=> b!7076396 m!7804490))

(declare-fun m!7804492 () Bool)

(assert (=> b!7076388 m!7804492))

(declare-fun m!7804494 () Bool)

(assert (=> b!7076388 m!7804494))

(assert (=> b!7076388 m!7804470))

(declare-fun m!7804496 () Bool)

(assert (=> b!7076388 m!7804496))

(declare-fun m!7804498 () Bool)

(assert (=> b!7076388 m!7804498))

(declare-fun m!7804500 () Bool)

(assert (=> b!7076391 m!7804500))

(declare-fun m!7804502 () Bool)

(assert (=> b!7076401 m!7804502))

(declare-fun m!7804504 () Bool)

(assert (=> b!7076401 m!7804504))

(declare-fun m!7804506 () Bool)

(assert (=> b!7076401 m!7804506))

(declare-fun m!7804508 () Bool)

(assert (=> b!7076401 m!7804508))

(declare-fun m!7804510 () Bool)

(assert (=> b!7076401 m!7804510))

(declare-fun m!7804512 () Bool)

(assert (=> b!7076404 m!7804512))

(declare-fun m!7804514 () Bool)

(assert (=> b!7076404 m!7804514))

(declare-fun m!7804516 () Bool)

(assert (=> b!7076404 m!7804516))

(declare-fun m!7804518 () Bool)

(assert (=> b!7076404 m!7804518))

(declare-fun m!7804520 () Bool)

(assert (=> b!7076404 m!7804520))

(declare-fun m!7804522 () Bool)

(assert (=> b!7076404 m!7804522))

(declare-fun m!7804524 () Bool)

(assert (=> start!687828 m!7804524))

(declare-fun m!7804526 () Bool)

(assert (=> start!687828 m!7804526))

(declare-fun m!7804528 () Bool)

(assert (=> start!687828 m!7804528))

(declare-fun m!7804530 () Bool)

(assert (=> b!7076400 m!7804530))

(declare-fun m!7804532 () Bool)

(assert (=> b!7076393 m!7804532))

(declare-fun m!7804534 () Bool)

(assert (=> b!7076395 m!7804534))

(check-sat (not b!7076404) (not b!7076400) (not b!7076405) (not b!7076403) (not b!7076402) (not b!7076401) (not b!7076389) (not b!7076393) (not b!7076392) (not b!7076394) (not setNonEmpty!50377) (not b!7076388) (not b!7076399) (not b!7076395) tp_is_empty!44559 (not start!687828) (not b!7076391) (not b!7076397) (not b!7076406))
(check-sat)
(get-model)

(declare-fun d!2213125 () Bool)

(assert (=> d!2213125 (= (isEmpty!39922 (exprs!7163 lt!2549281)) ((_ is Nil!68403) (exprs!7163 lt!2549281)))))

(assert (=> b!7076391 d!2213125))

(declare-fun d!2213127 () Bool)

(declare-fun c!1320315 () Bool)

(declare-fun isEmpty!39924 (List!68528) Bool)

(assert (=> d!2213127 (= c!1320315 (isEmpty!39924 s!7408))))

(declare-fun e!4254389 () Bool)

(assert (=> d!2213127 (= (matchZipper!3207 lt!2549305 s!7408) e!4254389)))

(declare-fun b!7076417 () Bool)

(declare-fun nullableZipper!2713 ((InoxSet Context!13326)) Bool)

(assert (=> b!7076417 (= e!4254389 (nullableZipper!2713 lt!2549305))))

(declare-fun b!7076418 () Bool)

(declare-fun head!14422 (List!68528) C!35604)

(declare-fun tail!13865 (List!68528) List!68528)

(assert (=> b!7076418 (= e!4254389 (matchZipper!3207 (derivationStepZipper!3117 lt!2549305 (head!14422 s!7408)) (tail!13865 s!7408)))))

(assert (= (and d!2213127 c!1320315) b!7076417))

(assert (= (and d!2213127 (not c!1320315)) b!7076418))

(declare-fun m!7804536 () Bool)

(assert (=> d!2213127 m!7804536))

(declare-fun m!7804538 () Bool)

(assert (=> b!7076417 m!7804538))

(declare-fun m!7804540 () Bool)

(assert (=> b!7076418 m!7804540))

(assert (=> b!7076418 m!7804540))

(declare-fun m!7804542 () Bool)

(assert (=> b!7076418 m!7804542))

(declare-fun m!7804544 () Bool)

(assert (=> b!7076418 m!7804544))

(assert (=> b!7076418 m!7804542))

(assert (=> b!7076418 m!7804544))

(declare-fun m!7804546 () Bool)

(assert (=> b!7076418 m!7804546))

(assert (=> start!687828 d!2213127))

(declare-fun bs!1881355 () Bool)

(declare-fun d!2213131 () Bool)

(assert (= bs!1881355 (and d!2213131 b!7076406)))

(declare-fun lambda!426760 () Int)

(assert (=> bs!1881355 (= lambda!426760 lambda!426753)))

(assert (=> d!2213131 true))

(declare-fun map!16015 ((InoxSet Context!13326) Int) (InoxSet Context!13326))

(assert (=> d!2213131 (= (appendTo!788 z1!570 ct2!306) (map!16015 z1!570 lambda!426760))))

(declare-fun bs!1881356 () Bool)

(assert (= bs!1881356 d!2213131))

(declare-fun m!7804562 () Bool)

(assert (=> bs!1881356 m!7804562))

(assert (=> start!687828 d!2213131))

(declare-fun bs!1881358 () Bool)

(declare-fun d!2213137 () Bool)

(assert (= bs!1881358 (and d!2213137 b!7076406)))

(declare-fun lambda!426763 () Int)

(assert (=> bs!1881358 (= lambda!426763 lambda!426754)))

(declare-fun forall!16623 (List!68527 Int) Bool)

(assert (=> d!2213137 (= (inv!87026 ct2!306) (forall!16623 (exprs!7163 ct2!306) lambda!426763))))

(declare-fun bs!1881359 () Bool)

(assert (= bs!1881359 d!2213137))

(declare-fun m!7804570 () Bool)

(assert (=> bs!1881359 m!7804570))

(assert (=> start!687828 d!2213137))

(declare-fun b!7076450 () Bool)

(declare-fun e!4254406 () List!68528)

(assert (=> b!7076450 (= e!4254406 (Cons!68404 (h!74852 (_1!37449 lt!2549301)) (++!15810 (t!382313 (_1!37449 lt!2549301)) (_2!37449 lt!2549301))))))

(declare-fun b!7076451 () Bool)

(declare-fun res!2890426 () Bool)

(declare-fun e!4254407 () Bool)

(assert (=> b!7076451 (=> (not res!2890426) (not e!4254407))))

(declare-fun lt!2549320 () List!68528)

(declare-fun size!41232 (List!68528) Int)

(assert (=> b!7076451 (= res!2890426 (= (size!41232 lt!2549320) (+ (size!41232 (_1!37449 lt!2549301)) (size!41232 (_2!37449 lt!2549301)))))))

(declare-fun b!7076449 () Bool)

(assert (=> b!7076449 (= e!4254406 (_2!37449 lt!2549301))))

(declare-fun d!2213141 () Bool)

(assert (=> d!2213141 e!4254407))

(declare-fun res!2890427 () Bool)

(assert (=> d!2213141 (=> (not res!2890427) (not e!4254407))))

(declare-fun content!13828 (List!68528) (InoxSet C!35604))

(assert (=> d!2213141 (= res!2890427 (= (content!13828 lt!2549320) ((_ map or) (content!13828 (_1!37449 lt!2549301)) (content!13828 (_2!37449 lt!2549301)))))))

(assert (=> d!2213141 (= lt!2549320 e!4254406)))

(declare-fun c!1320325 () Bool)

(assert (=> d!2213141 (= c!1320325 ((_ is Nil!68404) (_1!37449 lt!2549301)))))

(assert (=> d!2213141 (= (++!15810 (_1!37449 lt!2549301) (_2!37449 lt!2549301)) lt!2549320)))

(declare-fun b!7076452 () Bool)

(assert (=> b!7076452 (= e!4254407 (or (not (= (_2!37449 lt!2549301) Nil!68404)) (= lt!2549320 (_1!37449 lt!2549301))))))

(assert (= (and d!2213141 c!1320325) b!7076449))

(assert (= (and d!2213141 (not c!1320325)) b!7076450))

(assert (= (and d!2213141 res!2890427) b!7076451))

(assert (= (and b!7076451 res!2890426) b!7076452))

(declare-fun m!7804594 () Bool)

(assert (=> b!7076450 m!7804594))

(declare-fun m!7804596 () Bool)

(assert (=> b!7076451 m!7804596))

(declare-fun m!7804598 () Bool)

(assert (=> b!7076451 m!7804598))

(declare-fun m!7804600 () Bool)

(assert (=> b!7076451 m!7804600))

(declare-fun m!7804602 () Bool)

(assert (=> d!2213141 m!7804602))

(declare-fun m!7804604 () Bool)

(assert (=> d!2213141 m!7804604))

(declare-fun m!7804606 () Bool)

(assert (=> d!2213141 m!7804606))

(assert (=> b!7076392 d!2213141))

(declare-fun d!2213147 () Bool)

(assert (=> d!2213147 (forall!16623 (++!15809 (exprs!7163 lt!2549281) (exprs!7163 ct2!306)) lambda!426754)))

(declare-fun lt!2549323 () Unit!162045)

(declare-fun choose!54321 (List!68527 List!68527 Int) Unit!162045)

(assert (=> d!2213147 (= lt!2549323 (choose!54321 (exprs!7163 lt!2549281) (exprs!7163 ct2!306) lambda!426754))))

(assert (=> d!2213147 (forall!16623 (exprs!7163 lt!2549281) lambda!426754)))

(assert (=> d!2213147 (= (lemmaConcatPreservesForall!978 (exprs!7163 lt!2549281) (exprs!7163 ct2!306) lambda!426754) lt!2549323)))

(declare-fun bs!1881360 () Bool)

(assert (= bs!1881360 d!2213147))

(assert (=> bs!1881360 m!7804468))

(assert (=> bs!1881360 m!7804468))

(declare-fun m!7804608 () Bool)

(assert (=> bs!1881360 m!7804608))

(declare-fun m!7804610 () Bool)

(assert (=> bs!1881360 m!7804610))

(declare-fun m!7804612 () Bool)

(assert (=> bs!1881360 m!7804612))

(assert (=> b!7076403 d!2213147))

(declare-fun d!2213149 () Bool)

(declare-fun c!1320336 () Bool)

(assert (=> d!2213149 (= c!1320336 (isEmpty!39924 (_2!37449 lt!2549301)))))

(declare-fun e!4254420 () Bool)

(assert (=> d!2213149 (= (matchZipper!3207 lt!2549284 (_2!37449 lt!2549301)) e!4254420)))

(declare-fun b!7076475 () Bool)

(assert (=> b!7076475 (= e!4254420 (nullableZipper!2713 lt!2549284))))

(declare-fun b!7076476 () Bool)

(assert (=> b!7076476 (= e!4254420 (matchZipper!3207 (derivationStepZipper!3117 lt!2549284 (head!14422 (_2!37449 lt!2549301))) (tail!13865 (_2!37449 lt!2549301))))))

(assert (= (and d!2213149 c!1320336) b!7076475))

(assert (= (and d!2213149 (not c!1320336)) b!7076476))

(declare-fun m!7804614 () Bool)

(assert (=> d!2213149 m!7804614))

(declare-fun m!7804616 () Bool)

(assert (=> b!7076475 m!7804616))

(declare-fun m!7804618 () Bool)

(assert (=> b!7076476 m!7804618))

(assert (=> b!7076476 m!7804618))

(declare-fun m!7804620 () Bool)

(assert (=> b!7076476 m!7804620))

(declare-fun m!7804622 () Bool)

(assert (=> b!7076476 m!7804622))

(assert (=> b!7076476 m!7804620))

(assert (=> b!7076476 m!7804622))

(declare-fun m!7804624 () Bool)

(assert (=> b!7076476 m!7804624))

(assert (=> b!7076393 d!2213149))

(declare-fun d!2213151 () Bool)

(declare-fun e!4254432 () Bool)

(assert (=> d!2213151 e!4254432))

(declare-fun res!2890435 () Bool)

(assert (=> d!2213151 (=> (not res!2890435) (not e!4254432))))

(declare-fun lt!2549328 () Context!13326)

(declare-fun dynLambda!27851 (Int Context!13326) Bool)

(assert (=> d!2213151 (= res!2890435 (dynLambda!27851 lambda!426752 lt!2549328))))

(declare-fun getWitness!1783 (List!68529 Int) Context!13326)

(assert (=> d!2213151 (= lt!2549328 (getWitness!1783 (toList!11008 lt!2549305) lambda!426752))))

(declare-fun exists!3733 ((InoxSet Context!13326) Int) Bool)

(assert (=> d!2213151 (exists!3733 lt!2549305 lambda!426752)))

(assert (=> d!2213151 (= (getWitness!1781 lt!2549305 lambda!426752) lt!2549328)))

(declare-fun b!7076496 () Bool)

(assert (=> b!7076496 (= e!4254432 (select lt!2549305 lt!2549328))))

(assert (= (and d!2213151 res!2890435) b!7076496))

(declare-fun b_lambda!270283 () Bool)

(assert (=> (not b_lambda!270283) (not d!2213151)))

(declare-fun m!7804664 () Bool)

(assert (=> d!2213151 m!7804664))

(assert (=> d!2213151 m!7804514))

(assert (=> d!2213151 m!7804514))

(declare-fun m!7804666 () Bool)

(assert (=> d!2213151 m!7804666))

(declare-fun m!7804668 () Bool)

(assert (=> d!2213151 m!7804668))

(declare-fun m!7804670 () Bool)

(assert (=> b!7076496 m!7804670))

(assert (=> b!7076404 d!2213151))

(declare-fun bs!1881370 () Bool)

(declare-fun d!2213161 () Bool)

(assert (= bs!1881370 (and d!2213161 b!7076404)))

(declare-fun lambda!426775 () Int)

(assert (=> bs!1881370 (= lambda!426775 lambda!426752)))

(assert (=> d!2213161 true))

(assert (=> d!2213161 (exists!3731 lt!2549304 lambda!426775)))

(declare-fun lt!2549335 () Unit!162045)

(declare-fun choose!54323 (List!68529 List!68528) Unit!162045)

(assert (=> d!2213161 (= lt!2549335 (choose!54323 lt!2549304 s!7408))))

(declare-fun content!13830 (List!68529) (InoxSet Context!13326))

(assert (=> d!2213161 (matchZipper!3207 (content!13830 lt!2549304) s!7408)))

(assert (=> d!2213161 (= (lemmaZipperMatchesExistsMatchingContext!588 lt!2549304 s!7408) lt!2549335)))

(declare-fun bs!1881371 () Bool)

(assert (= bs!1881371 d!2213161))

(declare-fun m!7804680 () Bool)

(assert (=> bs!1881371 m!7804680))

(declare-fun m!7804682 () Bool)

(assert (=> bs!1881371 m!7804682))

(declare-fun m!7804684 () Bool)

(assert (=> bs!1881371 m!7804684))

(assert (=> bs!1881371 m!7804684))

(declare-fun m!7804686 () Bool)

(assert (=> bs!1881371 m!7804686))

(assert (=> b!7076404 d!2213161))

(declare-fun d!2213173 () Bool)

(declare-fun c!1320349 () Bool)

(assert (=> d!2213173 (= c!1320349 (isEmpty!39924 s!7408))))

(declare-fun e!4254437 () Bool)

(assert (=> d!2213173 (= (matchZipper!3207 lt!2549306 s!7408) e!4254437)))

(declare-fun b!7076505 () Bool)

(assert (=> b!7076505 (= e!4254437 (nullableZipper!2713 lt!2549306))))

(declare-fun b!7076506 () Bool)

(assert (=> b!7076506 (= e!4254437 (matchZipper!3207 (derivationStepZipper!3117 lt!2549306 (head!14422 s!7408)) (tail!13865 s!7408)))))

(assert (= (and d!2213173 c!1320349) b!7076505))

(assert (= (and d!2213173 (not c!1320349)) b!7076506))

(assert (=> d!2213173 m!7804536))

(declare-fun m!7804688 () Bool)

(assert (=> b!7076505 m!7804688))

(assert (=> b!7076506 m!7804540))

(assert (=> b!7076506 m!7804540))

(declare-fun m!7804690 () Bool)

(assert (=> b!7076506 m!7804690))

(assert (=> b!7076506 m!7804544))

(assert (=> b!7076506 m!7804690))

(assert (=> b!7076506 m!7804544))

(declare-fun m!7804705 () Bool)

(assert (=> b!7076506 m!7804705))

(assert (=> b!7076404 d!2213173))

(declare-fun d!2213175 () Bool)

(declare-fun e!4254443 () Bool)

(assert (=> d!2213175 e!4254443))

(declare-fun res!2890444 () Bool)

(assert (=> d!2213175 (=> (not res!2890444) (not e!4254443))))

(declare-fun lt!2549339 () List!68529)

(declare-fun noDuplicate!2741 (List!68529) Bool)

(assert (=> d!2213175 (= res!2890444 (noDuplicate!2741 lt!2549339))))

(declare-fun choose!54325 ((InoxSet Context!13326)) List!68529)

(assert (=> d!2213175 (= lt!2549339 (choose!54325 lt!2549305))))

(assert (=> d!2213175 (= (toList!11008 lt!2549305) lt!2549339)))

(declare-fun b!7076515 () Bool)

(assert (=> b!7076515 (= e!4254443 (= (content!13830 lt!2549339) lt!2549305))))

(assert (= (and d!2213175 res!2890444) b!7076515))

(declare-fun m!7804714 () Bool)

(assert (=> d!2213175 m!7804714))

(declare-fun m!7804716 () Bool)

(assert (=> d!2213175 m!7804716))

(declare-fun m!7804718 () Bool)

(assert (=> b!7076515 m!7804718))

(assert (=> b!7076404 d!2213175))

(declare-fun bs!1881374 () Bool)

(declare-fun d!2213181 () Bool)

(assert (= bs!1881374 (and d!2213181 b!7076404)))

(declare-fun lambda!426781 () Int)

(assert (=> bs!1881374 (not (= lambda!426781 lambda!426752))))

(declare-fun bs!1881375 () Bool)

(assert (= bs!1881375 (and d!2213181 d!2213161)))

(assert (=> bs!1881375 (not (= lambda!426781 lambda!426775))))

(assert (=> d!2213181 true))

(declare-fun order!28435 () Int)

(declare-fun dynLambda!27852 (Int Int) Int)

(assert (=> d!2213181 (< (dynLambda!27852 order!28435 lambda!426752) (dynLambda!27852 order!28435 lambda!426781))))

(declare-fun forall!16625 (List!68529 Int) Bool)

(assert (=> d!2213181 (= (exists!3731 lt!2549304 lambda!426752) (not (forall!16625 lt!2549304 lambda!426781)))))

(declare-fun bs!1881376 () Bool)

(assert (= bs!1881376 d!2213181))

(declare-fun m!7804728 () Bool)

(assert (=> bs!1881376 m!7804728))

(assert (=> b!7076404 d!2213181))

(declare-fun d!2213185 () Bool)

(declare-fun nullableFct!2825 (Regex!17667) Bool)

(assert (=> d!2213185 (= (nullable!7350 (h!74851 (exprs!7163 lt!2549281))) (nullableFct!2825 (h!74851 (exprs!7163 lt!2549281))))))

(declare-fun bs!1881377 () Bool)

(assert (= bs!1881377 d!2213185))

(declare-fun m!7804730 () Bool)

(assert (=> bs!1881377 m!7804730))

(assert (=> b!7076394 d!2213185))

(declare-fun d!2213187 () Bool)

(assert (=> d!2213187 (= (tail!13863 (exprs!7163 lt!2549281)) (t!382312 (exprs!7163 lt!2549281)))))

(assert (=> b!7076394 d!2213187))

(declare-fun d!2213189 () Bool)

(declare-fun c!1320354 () Bool)

(assert (=> d!2213189 (= c!1320354 (isEmpty!39924 lt!2549294))))

(declare-fun e!4254446 () Bool)

(assert (=> d!2213189 (= (matchZipper!3207 lt!2549282 lt!2549294) e!4254446)))

(declare-fun b!7076520 () Bool)

(assert (=> b!7076520 (= e!4254446 (nullableZipper!2713 lt!2549282))))

(declare-fun b!7076521 () Bool)

(assert (=> b!7076521 (= e!4254446 (matchZipper!3207 (derivationStepZipper!3117 lt!2549282 (head!14422 lt!2549294)) (tail!13865 lt!2549294)))))

(assert (= (and d!2213189 c!1320354) b!7076520))

(assert (= (and d!2213189 (not c!1320354)) b!7076521))

(declare-fun m!7804734 () Bool)

(assert (=> d!2213189 m!7804734))

(declare-fun m!7804738 () Bool)

(assert (=> b!7076520 m!7804738))

(declare-fun m!7804742 () Bool)

(assert (=> b!7076521 m!7804742))

(assert (=> b!7076521 m!7804742))

(declare-fun m!7804746 () Bool)

(assert (=> b!7076521 m!7804746))

(declare-fun m!7804748 () Bool)

(assert (=> b!7076521 m!7804748))

(assert (=> b!7076521 m!7804746))

(assert (=> b!7076521 m!7804748))

(declare-fun m!7804750 () Bool)

(assert (=> b!7076521 m!7804750))

(assert (=> b!7076395 d!2213189))

(declare-fun b!7076583 () Bool)

(declare-fun e!4254480 () (InoxSet Context!13326))

(assert (=> b!7076583 (= e!4254480 ((as const (Array Context!13326 Bool)) false))))

(declare-fun b!7076584 () Bool)

(declare-fun e!4254482 () (InoxSet Context!13326))

(declare-fun call!643182 () (InoxSet Context!13326))

(assert (=> b!7076584 (= e!4254482 call!643182)))

(declare-fun c!1320382 () Bool)

(declare-fun bm!643176 () Bool)

(declare-fun c!1320380 () Bool)

(declare-fun call!643185 () List!68527)

(declare-fun $colon$colon!2670 (List!68527 Regex!17667) List!68527)

(assert (=> bm!643176 (= call!643185 ($colon$colon!2670 (exprs!7163 lt!2549289) (ite (or c!1320380 c!1320382) (regTwo!35846 (h!74851 (exprs!7163 lt!2549281))) (h!74851 (exprs!7163 lt!2549281)))))))

(declare-fun b!7076585 () Bool)

(declare-fun e!4254483 () Bool)

(assert (=> b!7076585 (= c!1320380 e!4254483)))

(declare-fun res!2890457 () Bool)

(assert (=> b!7076585 (=> (not res!2890457) (not e!4254483))))

(assert (=> b!7076585 (= res!2890457 ((_ is Concat!26512) (h!74851 (exprs!7163 lt!2549281))))))

(declare-fun e!4254481 () (InoxSet Context!13326))

(declare-fun e!4254485 () (InoxSet Context!13326))

(assert (=> b!7076585 (= e!4254481 e!4254485)))

(declare-fun b!7076586 () Bool)

(declare-fun call!643183 () (InoxSet Context!13326))

(declare-fun call!643181 () (InoxSet Context!13326))

(assert (=> b!7076586 (= e!4254481 ((_ map or) call!643183 call!643181))))

(declare-fun bm!643177 () Bool)

(declare-fun call!643186 () List!68527)

(assert (=> bm!643177 (= call!643186 call!643185)))

(declare-fun b!7076587 () Bool)

(declare-fun e!4254484 () (InoxSet Context!13326))

(assert (=> b!7076587 (= e!4254484 (store ((as const (Array Context!13326 Bool)) false) lt!2549289 true))))

(declare-fun bm!643178 () Bool)

(declare-fun call!643184 () (InoxSet Context!13326))

(assert (=> bm!643178 (= call!643184 call!643181)))

(declare-fun d!2213193 () Bool)

(declare-fun c!1320383 () Bool)

(assert (=> d!2213193 (= c!1320383 (and ((_ is ElementMatch!17667) (h!74851 (exprs!7163 lt!2549281))) (= (c!1320312 (h!74851 (exprs!7163 lt!2549281))) (h!74852 s!7408))))))

(assert (=> d!2213193 (= (derivationStepZipperDown!2301 (h!74851 (exprs!7163 lt!2549281)) lt!2549289 (h!74852 s!7408)) e!4254484)))

(declare-fun b!7076582 () Bool)

(declare-fun c!1320384 () Bool)

(assert (=> b!7076582 (= c!1320384 ((_ is Star!17667) (h!74851 (exprs!7163 lt!2549281))))))

(assert (=> b!7076582 (= e!4254482 e!4254480)))

(declare-fun b!7076588 () Bool)

(assert (=> b!7076588 (= e!4254484 e!4254481)))

(declare-fun c!1320381 () Bool)

(assert (=> b!7076588 (= c!1320381 ((_ is Union!17667) (h!74851 (exprs!7163 lt!2549281))))))

(declare-fun b!7076589 () Bool)

(assert (=> b!7076589 (= e!4254480 call!643182)))

(declare-fun b!7076590 () Bool)

(assert (=> b!7076590 (= e!4254485 e!4254482)))

(assert (=> b!7076590 (= c!1320382 ((_ is Concat!26512) (h!74851 (exprs!7163 lt!2549281))))))

(declare-fun b!7076591 () Bool)

(assert (=> b!7076591 (= e!4254485 ((_ map or) call!643183 call!643184))))

(declare-fun b!7076592 () Bool)

(assert (=> b!7076592 (= e!4254483 (nullable!7350 (regOne!35846 (h!74851 (exprs!7163 lt!2549281)))))))

(declare-fun bm!643179 () Bool)

(assert (=> bm!643179 (= call!643183 (derivationStepZipperDown!2301 (ite c!1320381 (regOne!35847 (h!74851 (exprs!7163 lt!2549281))) (regOne!35846 (h!74851 (exprs!7163 lt!2549281)))) (ite c!1320381 lt!2549289 (Context!13327 call!643185)) (h!74852 s!7408)))))

(declare-fun bm!643180 () Bool)

(assert (=> bm!643180 (= call!643181 (derivationStepZipperDown!2301 (ite c!1320381 (regTwo!35847 (h!74851 (exprs!7163 lt!2549281))) (ite c!1320380 (regTwo!35846 (h!74851 (exprs!7163 lt!2549281))) (ite c!1320382 (regOne!35846 (h!74851 (exprs!7163 lt!2549281))) (reg!17996 (h!74851 (exprs!7163 lt!2549281)))))) (ite (or c!1320381 c!1320380) lt!2549289 (Context!13327 call!643186)) (h!74852 s!7408)))))

(declare-fun bm!643181 () Bool)

(assert (=> bm!643181 (= call!643182 call!643184)))

(assert (= (and d!2213193 c!1320383) b!7076587))

(assert (= (and d!2213193 (not c!1320383)) b!7076588))

(assert (= (and b!7076588 c!1320381) b!7076586))

(assert (= (and b!7076588 (not c!1320381)) b!7076585))

(assert (= (and b!7076585 res!2890457) b!7076592))

(assert (= (and b!7076585 c!1320380) b!7076591))

(assert (= (and b!7076585 (not c!1320380)) b!7076590))

(assert (= (and b!7076590 c!1320382) b!7076584))

(assert (= (and b!7076590 (not c!1320382)) b!7076582))

(assert (= (and b!7076582 c!1320384) b!7076589))

(assert (= (and b!7076582 (not c!1320384)) b!7076583))

(assert (= (or b!7076584 b!7076589) bm!643177))

(assert (= (or b!7076584 b!7076589) bm!643181))

(assert (= (or b!7076591 bm!643181) bm!643178))

(assert (= (or b!7076591 bm!643177) bm!643176))

(assert (= (or b!7076586 b!7076591) bm!643179))

(assert (= (or b!7076586 bm!643178) bm!643180))

(declare-fun m!7804804 () Bool)

(assert (=> b!7076587 m!7804804))

(declare-fun m!7804806 () Bool)

(assert (=> bm!643176 m!7804806))

(declare-fun m!7804808 () Bool)

(assert (=> bm!643179 m!7804808))

(declare-fun m!7804810 () Bool)

(assert (=> bm!643180 m!7804810))

(declare-fun m!7804812 () Bool)

(assert (=> b!7076592 m!7804812))

(assert (=> b!7076405 d!2213193))

(declare-fun d!2213215 () Bool)

(assert (=> d!2213215 (= (get!23962 lt!2549285) (v!53271 lt!2549285))))

(assert (=> b!7076405 d!2213215))

(declare-fun d!2213217 () Bool)

(assert (=> d!2213217 (forall!16623 (++!15809 lt!2549303 (exprs!7163 ct2!306)) lambda!426754)))

(declare-fun lt!2549355 () Unit!162045)

(assert (=> d!2213217 (= lt!2549355 (choose!54321 lt!2549303 (exprs!7163 ct2!306) lambda!426754))))

(assert (=> d!2213217 (forall!16623 lt!2549303 lambda!426754)))

(assert (=> d!2213217 (= (lemmaConcatPreservesForall!978 lt!2549303 (exprs!7163 ct2!306) lambda!426754) lt!2549355)))

(declare-fun bs!1881386 () Bool)

(assert (= bs!1881386 d!2213217))

(assert (=> bs!1881386 m!7804476))

(assert (=> bs!1881386 m!7804476))

(declare-fun m!7804822 () Bool)

(assert (=> bs!1881386 m!7804822))

(declare-fun m!7804824 () Bool)

(assert (=> bs!1881386 m!7804824))

(declare-fun m!7804826 () Bool)

(assert (=> bs!1881386 m!7804826))

(assert (=> b!7076405 d!2213217))

(declare-fun bs!1881395 () Bool)

(declare-fun d!2213221 () Bool)

(assert (= bs!1881395 (and d!2213221 b!7076406)))

(declare-fun lambda!426794 () Int)

(assert (=> bs!1881395 (= lambda!426794 lambda!426754)))

(declare-fun bs!1881396 () Bool)

(assert (= bs!1881396 (and d!2213221 d!2213137)))

(assert (=> bs!1881396 (= lambda!426794 lambda!426763)))

(assert (=> d!2213221 (= (derivationStepZipperDown!2301 (h!74851 (exprs!7163 lt!2549281)) (Context!13327 (++!15809 (exprs!7163 lt!2549289) (exprs!7163 ct2!306))) (h!74852 s!7408)) (appendTo!788 (derivationStepZipperDown!2301 (h!74851 (exprs!7163 lt!2549281)) lt!2549289 (h!74852 s!7408)) ct2!306))))

(declare-fun lt!2549367 () Unit!162045)

(assert (=> d!2213221 (= lt!2549367 (lemmaConcatPreservesForall!978 (exprs!7163 lt!2549289) (exprs!7163 ct2!306) lambda!426794))))

(declare-fun lt!2549366 () Unit!162045)

(declare-fun choose!54328 (Context!13326 Regex!17667 C!35604 Context!13326) Unit!162045)

(assert (=> d!2213221 (= lt!2549366 (choose!54328 lt!2549289 (h!74851 (exprs!7163 lt!2549281)) (h!74852 s!7408) ct2!306))))

(declare-fun validRegex!8980 (Regex!17667) Bool)

(assert (=> d!2213221 (validRegex!8980 (h!74851 (exprs!7163 lt!2549281)))))

(assert (=> d!2213221 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!134 lt!2549289 (h!74851 (exprs!7163 lt!2549281)) (h!74852 s!7408) ct2!306) lt!2549366)))

(declare-fun bs!1881397 () Bool)

(assert (= bs!1881397 d!2213221))

(declare-fun m!7804844 () Bool)

(assert (=> bs!1881397 m!7804844))

(declare-fun m!7804846 () Bool)

(assert (=> bs!1881397 m!7804846))

(declare-fun m!7804848 () Bool)

(assert (=> bs!1881397 m!7804848))

(assert (=> bs!1881397 m!7804452))

(declare-fun m!7804850 () Bool)

(assert (=> bs!1881397 m!7804850))

(declare-fun m!7804852 () Bool)

(assert (=> bs!1881397 m!7804852))

(assert (=> bs!1881397 m!7804452))

(declare-fun m!7804854 () Bool)

(assert (=> bs!1881397 m!7804854))

(assert (=> b!7076405 d!2213221))

(declare-fun bs!1881398 () Bool)

(declare-fun d!2213229 () Bool)

(assert (= bs!1881398 (and d!2213229 b!7076406)))

(declare-fun lambda!426795 () Int)

(assert (=> bs!1881398 (= lambda!426795 lambda!426753)))

(declare-fun bs!1881399 () Bool)

(assert (= bs!1881399 (and d!2213229 d!2213131)))

(assert (=> bs!1881399 (= lambda!426795 lambda!426760)))

(assert (=> d!2213229 true))

(assert (=> d!2213229 (= (appendTo!788 lt!2549287 ct2!306) (map!16015 lt!2549287 lambda!426795))))

(declare-fun bs!1881400 () Bool)

(assert (= bs!1881400 d!2213229))

(declare-fun m!7804856 () Bool)

(assert (=> bs!1881400 m!7804856))

(assert (=> b!7076405 d!2213229))

(declare-fun d!2213231 () Bool)

(declare-fun isEmpty!39925 (Option!16978) Bool)

(assert (=> d!2213231 (= (isDefined!13679 lt!2549285) (not (isEmpty!39925 lt!2549285)))))

(declare-fun bs!1881401 () Bool)

(assert (= bs!1881401 d!2213231))

(declare-fun m!7804858 () Bool)

(assert (=> bs!1881401 m!7804858))

(assert (=> b!7076405 d!2213231))

(declare-fun d!2213233 () Bool)

(assert (=> d!2213233 (isDefined!13679 (findConcatSeparationZippers!494 lt!2549287 (store ((as const (Array Context!13326 Bool)) false) ct2!306 true) Nil!68404 (t!382313 s!7408) (t!382313 s!7408)))))

(declare-fun lt!2549379 () Unit!162045)

(declare-fun choose!54330 ((InoxSet Context!13326) Context!13326 List!68528) Unit!162045)

(assert (=> d!2213233 (= lt!2549379 (choose!54330 lt!2549287 ct2!306 (t!382313 s!7408)))))

(assert (=> d!2213233 (matchZipper!3207 (appendTo!788 lt!2549287 ct2!306) (t!382313 s!7408))))

(assert (=> d!2213233 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!482 lt!2549287 ct2!306 (t!382313 s!7408)) lt!2549379)))

(declare-fun bs!1881404 () Bool)

(assert (= bs!1881404 d!2213233))

(assert (=> bs!1881404 m!7804462))

(assert (=> bs!1881404 m!7804462))

(declare-fun m!7804892 () Bool)

(assert (=> bs!1881404 m!7804892))

(declare-fun m!7804894 () Bool)

(assert (=> bs!1881404 m!7804894))

(assert (=> bs!1881404 m!7804450))

(declare-fun m!7804896 () Bool)

(assert (=> bs!1881404 m!7804896))

(assert (=> bs!1881404 m!7804450))

(assert (=> bs!1881404 m!7804896))

(declare-fun m!7804898 () Bool)

(assert (=> bs!1881404 m!7804898))

(assert (=> b!7076405 d!2213233))

(declare-fun d!2213241 () Bool)

(declare-fun c!1320395 () Bool)

(assert (=> d!2213241 (= c!1320395 (isEmpty!39924 (_1!37449 lt!2549301)))))

(declare-fun e!4254504 () Bool)

(assert (=> d!2213241 (= (matchZipper!3207 lt!2549287 (_1!37449 lt!2549301)) e!4254504)))

(declare-fun b!7076625 () Bool)

(assert (=> b!7076625 (= e!4254504 (nullableZipper!2713 lt!2549287))))

(declare-fun b!7076626 () Bool)

(assert (=> b!7076626 (= e!4254504 (matchZipper!3207 (derivationStepZipper!3117 lt!2549287 (head!14422 (_1!37449 lt!2549301))) (tail!13865 (_1!37449 lt!2549301))))))

(assert (= (and d!2213241 c!1320395) b!7076625))

(assert (= (and d!2213241 (not c!1320395)) b!7076626))

(declare-fun m!7804906 () Bool)

(assert (=> d!2213241 m!7804906))

(declare-fun m!7804908 () Bool)

(assert (=> b!7076625 m!7804908))

(declare-fun m!7804910 () Bool)

(assert (=> b!7076626 m!7804910))

(assert (=> b!7076626 m!7804910))

(declare-fun m!7804912 () Bool)

(assert (=> b!7076626 m!7804912))

(declare-fun m!7804914 () Bool)

(assert (=> b!7076626 m!7804914))

(assert (=> b!7076626 m!7804912))

(assert (=> b!7076626 m!7804914))

(declare-fun m!7804922 () Bool)

(assert (=> b!7076626 m!7804922))

(assert (=> b!7076405 d!2213241))

(declare-fun d!2213247 () Bool)

(declare-fun e!4254531 () Bool)

(assert (=> d!2213247 e!4254531))

(declare-fun res!2890487 () Bool)

(assert (=> d!2213247 (=> res!2890487 e!4254531)))

(declare-fun e!4254530 () Bool)

(assert (=> d!2213247 (= res!2890487 e!4254530)))

(declare-fun res!2890488 () Bool)

(assert (=> d!2213247 (=> (not res!2890488) (not e!4254530))))

(declare-fun lt!2549391 () Option!16978)

(assert (=> d!2213247 (= res!2890488 (isDefined!13679 lt!2549391))))

(declare-fun e!4254529 () Option!16978)

(assert (=> d!2213247 (= lt!2549391 e!4254529)))

(declare-fun c!1320402 () Bool)

(declare-fun e!4254532 () Bool)

(assert (=> d!2213247 (= c!1320402 e!4254532)))

(declare-fun res!2890489 () Bool)

(assert (=> d!2213247 (=> (not res!2890489) (not e!4254532))))

(assert (=> d!2213247 (= res!2890489 (matchZipper!3207 lt!2549287 Nil!68404))))

(assert (=> d!2213247 (= (++!15810 Nil!68404 (t!382313 s!7408)) (t!382313 s!7408))))

(assert (=> d!2213247 (= (findConcatSeparationZippers!494 lt!2549287 lt!2549284 Nil!68404 (t!382313 s!7408) (t!382313 s!7408)) lt!2549391)))

(declare-fun b!7076667 () Bool)

(assert (=> b!7076667 (= e!4254532 (matchZipper!3207 lt!2549284 (t!382313 s!7408)))))

(declare-fun b!7076668 () Bool)

(assert (=> b!7076668 (= e!4254529 (Some!16977 (tuple2!68293 Nil!68404 (t!382313 s!7408))))))

(declare-fun b!7076669 () Bool)

(assert (=> b!7076669 (= e!4254530 (= (++!15810 (_1!37449 (get!23962 lt!2549391)) (_2!37449 (get!23962 lt!2549391))) (t!382313 s!7408)))))

(declare-fun b!7076670 () Bool)

(declare-fun e!4254528 () Option!16978)

(assert (=> b!7076670 (= e!4254529 e!4254528)))

(declare-fun c!1320403 () Bool)

(assert (=> b!7076670 (= c!1320403 ((_ is Nil!68404) (t!382313 s!7408)))))

(declare-fun b!7076671 () Bool)

(declare-fun lt!2549390 () Unit!162045)

(declare-fun lt!2549389 () Unit!162045)

(assert (=> b!7076671 (= lt!2549390 lt!2549389)))

(assert (=> b!7076671 (= (++!15810 (++!15810 Nil!68404 (Cons!68404 (h!74852 (t!382313 s!7408)) Nil!68404)) (t!382313 (t!382313 s!7408))) (t!382313 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2981 (List!68528 C!35604 List!68528 List!68528) Unit!162045)

(assert (=> b!7076671 (= lt!2549389 (lemmaMoveElementToOtherListKeepsConcatEq!2981 Nil!68404 (h!74852 (t!382313 s!7408)) (t!382313 (t!382313 s!7408)) (t!382313 s!7408)))))

(assert (=> b!7076671 (= e!4254528 (findConcatSeparationZippers!494 lt!2549287 lt!2549284 (++!15810 Nil!68404 (Cons!68404 (h!74852 (t!382313 s!7408)) Nil!68404)) (t!382313 (t!382313 s!7408)) (t!382313 s!7408)))))

(declare-fun b!7076672 () Bool)

(declare-fun res!2890486 () Bool)

(assert (=> b!7076672 (=> (not res!2890486) (not e!4254530))))

(assert (=> b!7076672 (= res!2890486 (matchZipper!3207 lt!2549284 (_2!37449 (get!23962 lt!2549391))))))

(declare-fun b!7076673 () Bool)

(assert (=> b!7076673 (= e!4254528 None!16977)))

(declare-fun b!7076674 () Bool)

(assert (=> b!7076674 (= e!4254531 (not (isDefined!13679 lt!2549391)))))

(declare-fun b!7076675 () Bool)

(declare-fun res!2890490 () Bool)

(assert (=> b!7076675 (=> (not res!2890490) (not e!4254530))))

(assert (=> b!7076675 (= res!2890490 (matchZipper!3207 lt!2549287 (_1!37449 (get!23962 lt!2549391))))))

(assert (= (and d!2213247 res!2890489) b!7076667))

(assert (= (and d!2213247 c!1320402) b!7076668))

(assert (= (and d!2213247 (not c!1320402)) b!7076670))

(assert (= (and b!7076670 c!1320403) b!7076673))

(assert (= (and b!7076670 (not c!1320403)) b!7076671))

(assert (= (and d!2213247 res!2890488) b!7076675))

(assert (= (and b!7076675 res!2890490) b!7076672))

(assert (= (and b!7076672 res!2890486) b!7076669))

(assert (= (and d!2213247 (not res!2890487)) b!7076674))

(declare-fun m!7804950 () Bool)

(assert (=> b!7076669 m!7804950))

(declare-fun m!7804952 () Bool)

(assert (=> b!7076669 m!7804952))

(declare-fun m!7804954 () Bool)

(assert (=> b!7076674 m!7804954))

(assert (=> d!2213247 m!7804954))

(declare-fun m!7804956 () Bool)

(assert (=> d!2213247 m!7804956))

(declare-fun m!7804958 () Bool)

(assert (=> d!2213247 m!7804958))

(assert (=> b!7076675 m!7804950))

(declare-fun m!7804960 () Bool)

(assert (=> b!7076675 m!7804960))

(declare-fun m!7804962 () Bool)

(assert (=> b!7076671 m!7804962))

(assert (=> b!7076671 m!7804962))

(declare-fun m!7804964 () Bool)

(assert (=> b!7076671 m!7804964))

(declare-fun m!7804966 () Bool)

(assert (=> b!7076671 m!7804966))

(assert (=> b!7076671 m!7804962))

(declare-fun m!7804968 () Bool)

(assert (=> b!7076671 m!7804968))

(assert (=> b!7076672 m!7804950))

(declare-fun m!7804970 () Bool)

(assert (=> b!7076672 m!7804970))

(declare-fun m!7804972 () Bool)

(assert (=> b!7076667 m!7804972))

(assert (=> b!7076405 d!2213247))

(declare-fun lt!2549394 () List!68527)

(declare-fun e!4254538 () Bool)

(declare-fun b!7076687 () Bool)

(assert (=> b!7076687 (= e!4254538 (or (not (= (exprs!7163 ct2!306) Nil!68403)) (= lt!2549394 (exprs!7163 lt!2549281))))))

(declare-fun b!7076684 () Bool)

(declare-fun e!4254537 () List!68527)

(assert (=> b!7076684 (= e!4254537 (exprs!7163 ct2!306))))

(declare-fun b!7076686 () Bool)

(declare-fun res!2890495 () Bool)

(assert (=> b!7076686 (=> (not res!2890495) (not e!4254538))))

(declare-fun size!41233 (List!68527) Int)

(assert (=> b!7076686 (= res!2890495 (= (size!41233 lt!2549394) (+ (size!41233 (exprs!7163 lt!2549281)) (size!41233 (exprs!7163 ct2!306)))))))

(declare-fun d!2213259 () Bool)

(assert (=> d!2213259 e!4254538))

(declare-fun res!2890496 () Bool)

(assert (=> d!2213259 (=> (not res!2890496) (not e!4254538))))

(declare-fun content!13831 (List!68527) (InoxSet Regex!17667))

(assert (=> d!2213259 (= res!2890496 (= (content!13831 lt!2549394) ((_ map or) (content!13831 (exprs!7163 lt!2549281)) (content!13831 (exprs!7163 ct2!306)))))))

(assert (=> d!2213259 (= lt!2549394 e!4254537)))

(declare-fun c!1320406 () Bool)

(assert (=> d!2213259 (= c!1320406 ((_ is Nil!68403) (exprs!7163 lt!2549281)))))

(assert (=> d!2213259 (= (++!15809 (exprs!7163 lt!2549281) (exprs!7163 ct2!306)) lt!2549394)))

(declare-fun b!7076685 () Bool)

(assert (=> b!7076685 (= e!4254537 (Cons!68403 (h!74851 (exprs!7163 lt!2549281)) (++!15809 (t!382312 (exprs!7163 lt!2549281)) (exprs!7163 ct2!306))))))

(assert (= (and d!2213259 c!1320406) b!7076684))

(assert (= (and d!2213259 (not c!1320406)) b!7076685))

(assert (= (and d!2213259 res!2890496) b!7076686))

(assert (= (and b!7076686 res!2890495) b!7076687))

(declare-fun m!7804974 () Bool)

(assert (=> b!7076686 m!7804974))

(declare-fun m!7804976 () Bool)

(assert (=> b!7076686 m!7804976))

(declare-fun m!7804978 () Bool)

(assert (=> b!7076686 m!7804978))

(declare-fun m!7804980 () Bool)

(assert (=> d!2213259 m!7804980))

(declare-fun m!7804982 () Bool)

(assert (=> d!2213259 m!7804982))

(declare-fun m!7804984 () Bool)

(assert (=> d!2213259 m!7804984))

(declare-fun m!7804986 () Bool)

(assert (=> b!7076685 m!7804986))

(assert (=> b!7076406 d!2213259))

(assert (=> b!7076406 d!2213147))

(declare-fun d!2213261 () Bool)

(declare-fun e!4254541 () Bool)

(assert (=> d!2213261 e!4254541))

(declare-fun res!2890499 () Bool)

(assert (=> d!2213261 (=> (not res!2890499) (not e!4254541))))

(declare-fun lt!2549397 () Context!13326)

(declare-fun dynLambda!27854 (Int Context!13326) Context!13326)

(assert (=> d!2213261 (= res!2890499 (= lt!2549293 (dynLambda!27854 lambda!426753 lt!2549397)))))

(declare-fun choose!54331 ((InoxSet Context!13326) Int Context!13326) Context!13326)

(assert (=> d!2213261 (= lt!2549397 (choose!54331 z1!570 lambda!426753 lt!2549293))))

(assert (=> d!2213261 (select (map!16015 z1!570 lambda!426753) lt!2549293)))

(assert (=> d!2213261 (= (mapPost2!496 z1!570 lambda!426753 lt!2549293) lt!2549397)))

(declare-fun b!7076691 () Bool)

(assert (=> b!7076691 (= e!4254541 (select z1!570 lt!2549397))))

(assert (= (and d!2213261 res!2890499) b!7076691))

(declare-fun b_lambda!270299 () Bool)

(assert (=> (not b_lambda!270299) (not d!2213261)))

(declare-fun m!7804988 () Bool)

(assert (=> d!2213261 m!7804988))

(declare-fun m!7804990 () Bool)

(assert (=> d!2213261 m!7804990))

(declare-fun m!7804992 () Bool)

(assert (=> d!2213261 m!7804992))

(declare-fun m!7804994 () Bool)

(assert (=> d!2213261 m!7804994))

(declare-fun m!7804996 () Bool)

(assert (=> b!7076691 m!7804996))

(assert (=> b!7076406 d!2213261))

(declare-fun bs!1881412 () Bool)

(declare-fun d!2213263 () Bool)

(assert (= bs!1881412 (and d!2213263 b!7076388)))

(declare-fun lambda!426799 () Int)

(assert (=> bs!1881412 (= lambda!426799 lambda!426755)))

(assert (=> d!2213263 true))

(assert (=> d!2213263 (= (derivationStepZipper!3117 lt!2549297 (h!74852 s!7408)) (flatMap!2593 lt!2549297 lambda!426799))))

(declare-fun bs!1881413 () Bool)

(assert (= bs!1881413 d!2213263))

(declare-fun m!7804998 () Bool)

(assert (=> bs!1881413 m!7804998))

(assert (=> b!7076388 d!2213263))

(assert (=> b!7076388 d!2213147))

(declare-fun b!7076704 () Bool)

(declare-fun e!4254549 () Bool)

(assert (=> b!7076704 (= e!4254549 (nullable!7350 (h!74851 (exprs!7163 lt!2549279))))))

(declare-fun bm!643185 () Bool)

(declare-fun call!643190 () (InoxSet Context!13326))

(assert (=> bm!643185 (= call!643190 (derivationStepZipperDown!2301 (h!74851 (exprs!7163 lt!2549279)) (Context!13327 (t!382312 (exprs!7163 lt!2549279))) (h!74852 s!7408)))))

(declare-fun b!7076705 () Bool)

(declare-fun e!4254550 () (InoxSet Context!13326))

(assert (=> b!7076705 (= e!4254550 ((_ map or) call!643190 (derivationStepZipperUp!2251 (Context!13327 (t!382312 (exprs!7163 lt!2549279))) (h!74852 s!7408))))))

(declare-fun d!2213265 () Bool)

(declare-fun c!1320413 () Bool)

(assert (=> d!2213265 (= c!1320413 e!4254549)))

(declare-fun res!2890502 () Bool)

(assert (=> d!2213265 (=> (not res!2890502) (not e!4254549))))

(assert (=> d!2213265 (= res!2890502 ((_ is Cons!68403) (exprs!7163 lt!2549279)))))

(assert (=> d!2213265 (= (derivationStepZipperUp!2251 lt!2549279 (h!74852 s!7408)) e!4254550)))

(declare-fun b!7076706 () Bool)

(declare-fun e!4254548 () (InoxSet Context!13326))

(assert (=> b!7076706 (= e!4254548 ((as const (Array Context!13326 Bool)) false))))

(declare-fun b!7076707 () Bool)

(assert (=> b!7076707 (= e!4254548 call!643190)))

(declare-fun b!7076708 () Bool)

(assert (=> b!7076708 (= e!4254550 e!4254548)))

(declare-fun c!1320414 () Bool)

(assert (=> b!7076708 (= c!1320414 ((_ is Cons!68403) (exprs!7163 lt!2549279)))))

(assert (= (and d!2213265 res!2890502) b!7076704))

(assert (= (and d!2213265 c!1320413) b!7076705))

(assert (= (and d!2213265 (not c!1320413)) b!7076708))

(assert (= (and b!7076708 c!1320414) b!7076707))

(assert (= (and b!7076708 (not c!1320414)) b!7076706))

(assert (= (or b!7076705 b!7076707) bm!643185))

(declare-fun m!7805000 () Bool)

(assert (=> b!7076704 m!7805000))

(declare-fun m!7805002 () Bool)

(assert (=> bm!643185 m!7805002))

(declare-fun m!7805004 () Bool)

(assert (=> b!7076705 m!7805004))

(assert (=> b!7076388 d!2213265))

(declare-fun d!2213267 () Bool)

(declare-fun dynLambda!27855 (Int Context!13326) (InoxSet Context!13326))

(assert (=> d!2213267 (= (flatMap!2593 lt!2549297 lambda!426755) (dynLambda!27855 lambda!426755 lt!2549279))))

(declare-fun lt!2549400 () Unit!162045)

(declare-fun choose!54332 ((InoxSet Context!13326) Context!13326 Int) Unit!162045)

(assert (=> d!2213267 (= lt!2549400 (choose!54332 lt!2549297 lt!2549279 lambda!426755))))

(assert (=> d!2213267 (= lt!2549297 (store ((as const (Array Context!13326 Bool)) false) lt!2549279 true))))

(assert (=> d!2213267 (= (lemmaFlatMapOnSingletonSet!2102 lt!2549297 lt!2549279 lambda!426755) lt!2549400)))

(declare-fun b_lambda!270301 () Bool)

(assert (=> (not b_lambda!270301) (not d!2213267)))

(declare-fun bs!1881414 () Bool)

(assert (= bs!1881414 d!2213267))

(assert (=> bs!1881414 m!7804496))

(declare-fun m!7805006 () Bool)

(assert (=> bs!1881414 m!7805006))

(declare-fun m!7805008 () Bool)

(assert (=> bs!1881414 m!7805008))

(assert (=> bs!1881414 m!7804480))

(assert (=> b!7076388 d!2213267))

(declare-fun d!2213269 () Bool)

(declare-fun choose!54333 ((InoxSet Context!13326) Int) (InoxSet Context!13326))

(assert (=> d!2213269 (= (flatMap!2593 lt!2549297 lambda!426755) (choose!54333 lt!2549297 lambda!426755))))

(declare-fun bs!1881415 () Bool)

(assert (= bs!1881415 d!2213269))

(declare-fun m!7805010 () Bool)

(assert (=> bs!1881415 m!7805010))

(assert (=> b!7076388 d!2213269))

(declare-fun d!2213271 () Bool)

(declare-fun c!1320415 () Bool)

(assert (=> d!2213271 (= c!1320415 (isEmpty!39924 (t!382313 s!7408)))))

(declare-fun e!4254551 () Bool)

(assert (=> d!2213271 (= (matchZipper!3207 lt!2549296 (t!382313 s!7408)) e!4254551)))

(declare-fun b!7076709 () Bool)

(assert (=> b!7076709 (= e!4254551 (nullableZipper!2713 lt!2549296))))

(declare-fun b!7076710 () Bool)

(assert (=> b!7076710 (= e!4254551 (matchZipper!3207 (derivationStepZipper!3117 lt!2549296 (head!14422 (t!382313 s!7408))) (tail!13865 (t!382313 s!7408))))))

(assert (= (and d!2213271 c!1320415) b!7076709))

(assert (= (and d!2213271 (not c!1320415)) b!7076710))

(declare-fun m!7805012 () Bool)

(assert (=> d!2213271 m!7805012))

(declare-fun m!7805014 () Bool)

(assert (=> b!7076709 m!7805014))

(declare-fun m!7805016 () Bool)

(assert (=> b!7076710 m!7805016))

(assert (=> b!7076710 m!7805016))

(declare-fun m!7805018 () Bool)

(assert (=> b!7076710 m!7805018))

(declare-fun m!7805020 () Bool)

(assert (=> b!7076710 m!7805020))

(assert (=> b!7076710 m!7805018))

(assert (=> b!7076710 m!7805020))

(declare-fun m!7805022 () Bool)

(assert (=> b!7076710 m!7805022))

(assert (=> b!7076389 d!2213271))

(declare-fun b!7076712 () Bool)

(declare-fun e!4254552 () (InoxSet Context!13326))

(assert (=> b!7076712 (= e!4254552 ((as const (Array Context!13326 Bool)) false))))

(declare-fun b!7076713 () Bool)

(declare-fun e!4254554 () (InoxSet Context!13326))

(declare-fun call!643192 () (InoxSet Context!13326))

(assert (=> b!7076713 (= e!4254554 call!643192)))

(declare-fun bm!643186 () Bool)

(declare-fun call!643195 () List!68527)

(declare-fun c!1320416 () Bool)

(declare-fun c!1320418 () Bool)

(assert (=> bm!643186 (= call!643195 ($colon$colon!2670 (exprs!7163 (Context!13327 (++!15809 lt!2549303 (exprs!7163 ct2!306)))) (ite (or c!1320416 c!1320418) (regTwo!35846 (h!74851 (exprs!7163 lt!2549281))) (h!74851 (exprs!7163 lt!2549281)))))))

(declare-fun b!7076714 () Bool)

(declare-fun e!4254555 () Bool)

(assert (=> b!7076714 (= c!1320416 e!4254555)))

(declare-fun res!2890503 () Bool)

(assert (=> b!7076714 (=> (not res!2890503) (not e!4254555))))

(assert (=> b!7076714 (= res!2890503 ((_ is Concat!26512) (h!74851 (exprs!7163 lt!2549281))))))

(declare-fun e!4254553 () (InoxSet Context!13326))

(declare-fun e!4254557 () (InoxSet Context!13326))

(assert (=> b!7076714 (= e!4254553 e!4254557)))

(declare-fun b!7076715 () Bool)

(declare-fun call!643193 () (InoxSet Context!13326))

(declare-fun call!643191 () (InoxSet Context!13326))

(assert (=> b!7076715 (= e!4254553 ((_ map or) call!643193 call!643191))))

(declare-fun bm!643187 () Bool)

(declare-fun call!643196 () List!68527)

(assert (=> bm!643187 (= call!643196 call!643195)))

(declare-fun b!7076716 () Bool)

(declare-fun e!4254556 () (InoxSet Context!13326))

(assert (=> b!7076716 (= e!4254556 (store ((as const (Array Context!13326 Bool)) false) (Context!13327 (++!15809 lt!2549303 (exprs!7163 ct2!306))) true))))

(declare-fun bm!643188 () Bool)

(declare-fun call!643194 () (InoxSet Context!13326))

(assert (=> bm!643188 (= call!643194 call!643191)))

(declare-fun d!2213273 () Bool)

(declare-fun c!1320419 () Bool)

(assert (=> d!2213273 (= c!1320419 (and ((_ is ElementMatch!17667) (h!74851 (exprs!7163 lt!2549281))) (= (c!1320312 (h!74851 (exprs!7163 lt!2549281))) (h!74852 s!7408))))))

(assert (=> d!2213273 (= (derivationStepZipperDown!2301 (h!74851 (exprs!7163 lt!2549281)) (Context!13327 (++!15809 lt!2549303 (exprs!7163 ct2!306))) (h!74852 s!7408)) e!4254556)))

(declare-fun b!7076711 () Bool)

(declare-fun c!1320420 () Bool)

(assert (=> b!7076711 (= c!1320420 ((_ is Star!17667) (h!74851 (exprs!7163 lt!2549281))))))

(assert (=> b!7076711 (= e!4254554 e!4254552)))

(declare-fun b!7076717 () Bool)

(assert (=> b!7076717 (= e!4254556 e!4254553)))

(declare-fun c!1320417 () Bool)

(assert (=> b!7076717 (= c!1320417 ((_ is Union!17667) (h!74851 (exprs!7163 lt!2549281))))))

(declare-fun b!7076718 () Bool)

(assert (=> b!7076718 (= e!4254552 call!643192)))

(declare-fun b!7076719 () Bool)

(assert (=> b!7076719 (= e!4254557 e!4254554)))

(assert (=> b!7076719 (= c!1320418 ((_ is Concat!26512) (h!74851 (exprs!7163 lt!2549281))))))

(declare-fun b!7076720 () Bool)

(assert (=> b!7076720 (= e!4254557 ((_ map or) call!643193 call!643194))))

(declare-fun b!7076721 () Bool)

(assert (=> b!7076721 (= e!4254555 (nullable!7350 (regOne!35846 (h!74851 (exprs!7163 lt!2549281)))))))

(declare-fun bm!643189 () Bool)

(assert (=> bm!643189 (= call!643193 (derivationStepZipperDown!2301 (ite c!1320417 (regOne!35847 (h!74851 (exprs!7163 lt!2549281))) (regOne!35846 (h!74851 (exprs!7163 lt!2549281)))) (ite c!1320417 (Context!13327 (++!15809 lt!2549303 (exprs!7163 ct2!306))) (Context!13327 call!643195)) (h!74852 s!7408)))))

(declare-fun bm!643190 () Bool)

(assert (=> bm!643190 (= call!643191 (derivationStepZipperDown!2301 (ite c!1320417 (regTwo!35847 (h!74851 (exprs!7163 lt!2549281))) (ite c!1320416 (regTwo!35846 (h!74851 (exprs!7163 lt!2549281))) (ite c!1320418 (regOne!35846 (h!74851 (exprs!7163 lt!2549281))) (reg!17996 (h!74851 (exprs!7163 lt!2549281)))))) (ite (or c!1320417 c!1320416) (Context!13327 (++!15809 lt!2549303 (exprs!7163 ct2!306))) (Context!13327 call!643196)) (h!74852 s!7408)))))

(declare-fun bm!643191 () Bool)

(assert (=> bm!643191 (= call!643192 call!643194)))

(assert (= (and d!2213273 c!1320419) b!7076716))

(assert (= (and d!2213273 (not c!1320419)) b!7076717))

(assert (= (and b!7076717 c!1320417) b!7076715))

(assert (= (and b!7076717 (not c!1320417)) b!7076714))

(assert (= (and b!7076714 res!2890503) b!7076721))

(assert (= (and b!7076714 c!1320416) b!7076720))

(assert (= (and b!7076714 (not c!1320416)) b!7076719))

(assert (= (and b!7076719 c!1320418) b!7076713))

(assert (= (and b!7076719 (not c!1320418)) b!7076711))

(assert (= (and b!7076711 c!1320420) b!7076718))

(assert (= (and b!7076711 (not c!1320420)) b!7076712))

(assert (= (or b!7076713 b!7076718) bm!643187))

(assert (= (or b!7076713 b!7076718) bm!643191))

(assert (= (or b!7076720 bm!643191) bm!643188))

(assert (= (or b!7076720 bm!643187) bm!643186))

(assert (= (or b!7076715 b!7076720) bm!643189))

(assert (= (or b!7076715 bm!643188) bm!643190))

(declare-fun m!7805024 () Bool)

(assert (=> b!7076716 m!7805024))

(declare-fun m!7805026 () Bool)

(assert (=> bm!643186 m!7805026))

(declare-fun m!7805028 () Bool)

(assert (=> bm!643189 m!7805028))

(declare-fun m!7805030 () Bool)

(assert (=> bm!643190 m!7805030))

(assert (=> b!7076721 m!7804812))

(assert (=> b!7076389 d!2213273))

(declare-fun lt!2549401 () List!68527)

(declare-fun e!4254559 () Bool)

(declare-fun b!7076725 () Bool)

(assert (=> b!7076725 (= e!4254559 (or (not (= (exprs!7163 ct2!306) Nil!68403)) (= lt!2549401 lt!2549303)))))

(declare-fun b!7076722 () Bool)

(declare-fun e!4254558 () List!68527)

(assert (=> b!7076722 (= e!4254558 (exprs!7163 ct2!306))))

(declare-fun b!7076724 () Bool)

(declare-fun res!2890504 () Bool)

(assert (=> b!7076724 (=> (not res!2890504) (not e!4254559))))

(assert (=> b!7076724 (= res!2890504 (= (size!41233 lt!2549401) (+ (size!41233 lt!2549303) (size!41233 (exprs!7163 ct2!306)))))))

(declare-fun d!2213275 () Bool)

(assert (=> d!2213275 e!4254559))

(declare-fun res!2890505 () Bool)

(assert (=> d!2213275 (=> (not res!2890505) (not e!4254559))))

(assert (=> d!2213275 (= res!2890505 (= (content!13831 lt!2549401) ((_ map or) (content!13831 lt!2549303) (content!13831 (exprs!7163 ct2!306)))))))

(assert (=> d!2213275 (= lt!2549401 e!4254558)))

(declare-fun c!1320421 () Bool)

(assert (=> d!2213275 (= c!1320421 ((_ is Nil!68403) lt!2549303))))

(assert (=> d!2213275 (= (++!15809 lt!2549303 (exprs!7163 ct2!306)) lt!2549401)))

(declare-fun b!7076723 () Bool)

(assert (=> b!7076723 (= e!4254558 (Cons!68403 (h!74851 lt!2549303) (++!15809 (t!382312 lt!2549303) (exprs!7163 ct2!306))))))

(assert (= (and d!2213275 c!1320421) b!7076722))

(assert (= (and d!2213275 (not c!1320421)) b!7076723))

(assert (= (and d!2213275 res!2890505) b!7076724))

(assert (= (and b!7076724 res!2890504) b!7076725))

(declare-fun m!7805032 () Bool)

(assert (=> b!7076724 m!7805032))

(declare-fun m!7805034 () Bool)

(assert (=> b!7076724 m!7805034))

(assert (=> b!7076724 m!7804978))

(declare-fun m!7805036 () Bool)

(assert (=> d!2213275 m!7805036))

(declare-fun m!7805038 () Bool)

(assert (=> d!2213275 m!7805038))

(assert (=> d!2213275 m!7804984))

(declare-fun m!7805040 () Bool)

(assert (=> b!7076723 m!7805040))

(assert (=> b!7076389 d!2213275))

(assert (=> b!7076389 d!2213217))

(declare-fun bs!1881416 () Bool)

(declare-fun d!2213277 () Bool)

(assert (= bs!1881416 (and d!2213277 b!7076406)))

(declare-fun lambda!426800 () Int)

(assert (=> bs!1881416 (= lambda!426800 lambda!426754)))

(declare-fun bs!1881417 () Bool)

(assert (= bs!1881417 (and d!2213277 d!2213137)))

(assert (=> bs!1881417 (= lambda!426800 lambda!426763)))

(declare-fun bs!1881418 () Bool)

(assert (= bs!1881418 (and d!2213277 d!2213221)))

(assert (=> bs!1881418 (= lambda!426800 lambda!426794)))

(assert (=> d!2213277 (= (inv!87026 setElem!50377) (forall!16623 (exprs!7163 setElem!50377) lambda!426800))))

(declare-fun bs!1881419 () Bool)

(assert (= bs!1881419 d!2213277))

(declare-fun m!7805042 () Bool)

(assert (=> bs!1881419 m!7805042))

(assert (=> setNonEmpty!50377 d!2213277))

(declare-fun b!7076727 () Bool)

(declare-fun e!4254560 () List!68528)

(assert (=> b!7076727 (= e!4254560 (Cons!68404 (h!74852 lt!2549294) (++!15810 (t!382313 lt!2549294) (_2!37449 lt!2549301))))))

(declare-fun b!7076728 () Bool)

(declare-fun res!2890506 () Bool)

(declare-fun e!4254561 () Bool)

(assert (=> b!7076728 (=> (not res!2890506) (not e!4254561))))

(declare-fun lt!2549402 () List!68528)

(assert (=> b!7076728 (= res!2890506 (= (size!41232 lt!2549402) (+ (size!41232 lt!2549294) (size!41232 (_2!37449 lt!2549301)))))))

(declare-fun b!7076726 () Bool)

(assert (=> b!7076726 (= e!4254560 (_2!37449 lt!2549301))))

(declare-fun d!2213279 () Bool)

(assert (=> d!2213279 e!4254561))

(declare-fun res!2890507 () Bool)

(assert (=> d!2213279 (=> (not res!2890507) (not e!4254561))))

(assert (=> d!2213279 (= res!2890507 (= (content!13828 lt!2549402) ((_ map or) (content!13828 lt!2549294) (content!13828 (_2!37449 lt!2549301)))))))

(assert (=> d!2213279 (= lt!2549402 e!4254560)))

(declare-fun c!1320422 () Bool)

(assert (=> d!2213279 (= c!1320422 ((_ is Nil!68404) lt!2549294))))

(assert (=> d!2213279 (= (++!15810 lt!2549294 (_2!37449 lt!2549301)) lt!2549402)))

(declare-fun b!7076729 () Bool)

(assert (=> b!7076729 (= e!4254561 (or (not (= (_2!37449 lt!2549301) Nil!68404)) (= lt!2549402 lt!2549294)))))

(assert (= (and d!2213279 c!1320422) b!7076726))

(assert (= (and d!2213279 (not c!1320422)) b!7076727))

(assert (= (and d!2213279 res!2890507) b!7076728))

(assert (= (and b!7076728 res!2890506) b!7076729))

(declare-fun m!7805044 () Bool)

(assert (=> b!7076727 m!7805044))

(declare-fun m!7805046 () Bool)

(assert (=> b!7076728 m!7805046))

(declare-fun m!7805048 () Bool)

(assert (=> b!7076728 m!7805048))

(assert (=> b!7076728 m!7804600))

(declare-fun m!7805050 () Bool)

(assert (=> d!2213279 m!7805050))

(declare-fun m!7805052 () Bool)

(assert (=> d!2213279 m!7805052))

(assert (=> d!2213279 m!7804606))

(assert (=> b!7076400 d!2213279))

(declare-fun d!2213281 () Bool)

(assert (=> d!2213281 (= (flatMap!2593 lt!2549282 lambda!426755) (choose!54333 lt!2549282 lambda!426755))))

(declare-fun bs!1881420 () Bool)

(assert (= bs!1881420 d!2213281))

(declare-fun m!7805054 () Bool)

(assert (=> bs!1881420 m!7805054))

(assert (=> b!7076401 d!2213281))

(declare-fun b!7076730 () Bool)

(declare-fun e!4254563 () Bool)

(assert (=> b!7076730 (= e!4254563 (nullable!7350 (h!74851 (exprs!7163 lt!2549281))))))

(declare-fun bm!643192 () Bool)

(declare-fun call!643197 () (InoxSet Context!13326))

(assert (=> bm!643192 (= call!643197 (derivationStepZipperDown!2301 (h!74851 (exprs!7163 lt!2549281)) (Context!13327 (t!382312 (exprs!7163 lt!2549281))) (h!74852 s!7408)))))

(declare-fun e!4254564 () (InoxSet Context!13326))

(declare-fun b!7076731 () Bool)

(assert (=> b!7076731 (= e!4254564 ((_ map or) call!643197 (derivationStepZipperUp!2251 (Context!13327 (t!382312 (exprs!7163 lt!2549281))) (h!74852 s!7408))))))

(declare-fun d!2213283 () Bool)

(declare-fun c!1320423 () Bool)

(assert (=> d!2213283 (= c!1320423 e!4254563)))

(declare-fun res!2890508 () Bool)

(assert (=> d!2213283 (=> (not res!2890508) (not e!4254563))))

(assert (=> d!2213283 (= res!2890508 ((_ is Cons!68403) (exprs!7163 lt!2549281)))))

(assert (=> d!2213283 (= (derivationStepZipperUp!2251 lt!2549281 (h!74852 s!7408)) e!4254564)))

(declare-fun b!7076732 () Bool)

(declare-fun e!4254562 () (InoxSet Context!13326))

(assert (=> b!7076732 (= e!4254562 ((as const (Array Context!13326 Bool)) false))))

(declare-fun b!7076733 () Bool)

(assert (=> b!7076733 (= e!4254562 call!643197)))

(declare-fun b!7076734 () Bool)

(assert (=> b!7076734 (= e!4254564 e!4254562)))

(declare-fun c!1320424 () Bool)

(assert (=> b!7076734 (= c!1320424 ((_ is Cons!68403) (exprs!7163 lt!2549281)))))

(assert (= (and d!2213283 res!2890508) b!7076730))

(assert (= (and d!2213283 c!1320423) b!7076731))

(assert (= (and d!2213283 (not c!1320423)) b!7076734))

(assert (= (and b!7076734 c!1320424) b!7076733))

(assert (= (and b!7076734 (not c!1320424)) b!7076732))

(assert (= (or b!7076731 b!7076733) bm!643192))

(assert (=> b!7076730 m!7804484))

(declare-fun m!7805056 () Bool)

(assert (=> bm!643192 m!7805056))

(declare-fun m!7805058 () Bool)

(assert (=> b!7076731 m!7805058))

(assert (=> b!7076401 d!2213283))

(declare-fun d!2213285 () Bool)

(assert (=> d!2213285 (= (flatMap!2593 lt!2549282 lambda!426755) (dynLambda!27855 lambda!426755 lt!2549281))))

(declare-fun lt!2549403 () Unit!162045)

(assert (=> d!2213285 (= lt!2549403 (choose!54332 lt!2549282 lt!2549281 lambda!426755))))

(assert (=> d!2213285 (= lt!2549282 (store ((as const (Array Context!13326 Bool)) false) lt!2549281 true))))

(assert (=> d!2213285 (= (lemmaFlatMapOnSingletonSet!2102 lt!2549282 lt!2549281 lambda!426755) lt!2549403)))

(declare-fun b_lambda!270303 () Bool)

(assert (=> (not b_lambda!270303) (not d!2213285)))

(declare-fun bs!1881421 () Bool)

(assert (= bs!1881421 d!2213285))

(assert (=> bs!1881421 m!7804508))

(declare-fun m!7805060 () Bool)

(assert (=> bs!1881421 m!7805060))

(declare-fun m!7805062 () Bool)

(assert (=> bs!1881421 m!7805062))

(assert (=> bs!1881421 m!7804502))

(assert (=> b!7076401 d!2213285))

(declare-fun bs!1881422 () Bool)

(declare-fun d!2213287 () Bool)

(assert (= bs!1881422 (and d!2213287 b!7076388)))

(declare-fun lambda!426801 () Int)

(assert (=> bs!1881422 (= lambda!426801 lambda!426755)))

(declare-fun bs!1881423 () Bool)

(assert (= bs!1881423 (and d!2213287 d!2213263)))

(assert (=> bs!1881423 (= lambda!426801 lambda!426799)))

(assert (=> d!2213287 true))

(assert (=> d!2213287 (= (derivationStepZipper!3117 lt!2549282 (h!74852 s!7408)) (flatMap!2593 lt!2549282 lambda!426801))))

(declare-fun bs!1881424 () Bool)

(assert (= bs!1881424 d!2213287))

(declare-fun m!7805064 () Bool)

(assert (=> bs!1881424 m!7805064))

(assert (=> b!7076401 d!2213287))

(declare-fun b!7076739 () Bool)

(declare-fun e!4254567 () Bool)

(declare-fun tp!1942938 () Bool)

(assert (=> b!7076739 (= e!4254567 (and tp_is_empty!44559 tp!1942938))))

(assert (=> b!7076402 (= tp!1942917 e!4254567)))

(assert (= (and b!7076402 ((_ is Cons!68404) (t!382313 s!7408))) b!7076739))

(declare-fun b!7076744 () Bool)

(declare-fun e!4254570 () Bool)

(declare-fun tp!1942943 () Bool)

(declare-fun tp!1942944 () Bool)

(assert (=> b!7076744 (= e!4254570 (and tp!1942943 tp!1942944))))

(assert (=> b!7076397 (= tp!1942915 e!4254570)))

(assert (= (and b!7076397 ((_ is Cons!68403) (exprs!7163 setElem!50377))) b!7076744))

(declare-fun b!7076745 () Bool)

(declare-fun e!4254571 () Bool)

(declare-fun tp!1942945 () Bool)

(declare-fun tp!1942946 () Bool)

(assert (=> b!7076745 (= e!4254571 (and tp!1942945 tp!1942946))))

(assert (=> b!7076399 (= tp!1942916 e!4254571)))

(assert (= (and b!7076399 ((_ is Cons!68403) (exprs!7163 ct2!306))) b!7076745))

(declare-fun condSetEmpty!50383 () Bool)

(assert (=> setNonEmpty!50377 (= condSetEmpty!50383 (= setRest!50377 ((as const (Array Context!13326 Bool)) false)))))

(declare-fun setRes!50383 () Bool)

(assert (=> setNonEmpty!50377 (= tp!1942918 setRes!50383)))

(declare-fun setIsEmpty!50383 () Bool)

(assert (=> setIsEmpty!50383 setRes!50383))

(declare-fun e!4254574 () Bool)

(declare-fun setNonEmpty!50383 () Bool)

(declare-fun setElem!50383 () Context!13326)

(declare-fun tp!1942952 () Bool)

(assert (=> setNonEmpty!50383 (= setRes!50383 (and tp!1942952 (inv!87026 setElem!50383) e!4254574))))

(declare-fun setRest!50383 () (InoxSet Context!13326))

(assert (=> setNonEmpty!50383 (= setRest!50377 ((_ map or) (store ((as const (Array Context!13326 Bool)) false) setElem!50383 true) setRest!50383))))

(declare-fun b!7076750 () Bool)

(declare-fun tp!1942951 () Bool)

(assert (=> b!7076750 (= e!4254574 tp!1942951)))

(assert (= (and setNonEmpty!50377 condSetEmpty!50383) setIsEmpty!50383))

(assert (= (and setNonEmpty!50377 (not condSetEmpty!50383)) setNonEmpty!50383))

(assert (= setNonEmpty!50383 b!7076750))

(declare-fun m!7805066 () Bool)

(assert (=> setNonEmpty!50383 m!7805066))

(declare-fun b_lambda!270305 () Bool)

(assert (= b_lambda!270303 (or b!7076388 b_lambda!270305)))

(declare-fun bs!1881425 () Bool)

(declare-fun d!2213289 () Bool)

(assert (= bs!1881425 (and d!2213289 b!7076388)))

(assert (=> bs!1881425 (= (dynLambda!27855 lambda!426755 lt!2549281) (derivationStepZipperUp!2251 lt!2549281 (h!74852 s!7408)))))

(assert (=> bs!1881425 m!7804506))

(assert (=> d!2213285 d!2213289))

(declare-fun b_lambda!270307 () Bool)

(assert (= b_lambda!270283 (or b!7076404 b_lambda!270307)))

(declare-fun bs!1881426 () Bool)

(declare-fun d!2213291 () Bool)

(assert (= bs!1881426 (and d!2213291 b!7076404)))

(assert (=> bs!1881426 (= (dynLambda!27851 lambda!426752 lt!2549328) (matchZipper!3207 (store ((as const (Array Context!13326 Bool)) false) lt!2549328 true) s!7408))))

(declare-fun m!7805068 () Bool)

(assert (=> bs!1881426 m!7805068))

(assert (=> bs!1881426 m!7805068))

(declare-fun m!7805070 () Bool)

(assert (=> bs!1881426 m!7805070))

(assert (=> d!2213151 d!2213291))

(declare-fun b_lambda!270309 () Bool)

(assert (= b_lambda!270299 (or b!7076406 b_lambda!270309)))

(declare-fun bs!1881427 () Bool)

(declare-fun d!2213293 () Bool)

(assert (= bs!1881427 (and d!2213293 b!7076406)))

(declare-fun lt!2549404 () Unit!162045)

(assert (=> bs!1881427 (= lt!2549404 (lemmaConcatPreservesForall!978 (exprs!7163 lt!2549397) (exprs!7163 ct2!306) lambda!426754))))

(assert (=> bs!1881427 (= (dynLambda!27854 lambda!426753 lt!2549397) (Context!13327 (++!15809 (exprs!7163 lt!2549397) (exprs!7163 ct2!306))))))

(declare-fun m!7805072 () Bool)

(assert (=> bs!1881427 m!7805072))

(declare-fun m!7805074 () Bool)

(assert (=> bs!1881427 m!7805074))

(assert (=> d!2213261 d!2213293))

(declare-fun b_lambda!270311 () Bool)

(assert (= b_lambda!270301 (or b!7076388 b_lambda!270311)))

(declare-fun bs!1881428 () Bool)

(declare-fun d!2213295 () Bool)

(assert (= bs!1881428 (and d!2213295 b!7076388)))

(assert (=> bs!1881428 (= (dynLambda!27855 lambda!426755 lt!2549279) (derivationStepZipperUp!2251 lt!2549279 (h!74852 s!7408)))))

(assert (=> bs!1881428 m!7804498))

(assert (=> d!2213267 d!2213295))

(check-sat (not d!2213131) (not d!2213231) (not b_lambda!270307) (not d!2213271) (not b!7076505) (not b!7076704) (not b!7076674) (not b!7076730) (not d!2213285) (not d!2213269) (not b!7076672) (not b!7076592) (not b!7076475) tp_is_empty!44559 (not d!2213161) (not b!7076744) (not b!7076417) (not b!7076727) (not d!2213247) (not d!2213263) (not b!7076450) (not setNonEmpty!50383) (not bm!643180) (not d!2213181) (not b!7076521) (not d!2213149) (not d!2213241) (not b!7076723) (not b!7076667) (not bm!643185) (not bm!643186) (not b!7076721) (not d!2213173) (not d!2213233) (not b!7076728) (not b!7076669) (not d!2213189) (not b_lambda!270305) (not b_lambda!270311) (not d!2213279) (not bs!1881428) (not b!7076671) (not d!2213151) (not b!7076626) (not d!2213267) (not d!2213147) (not b!7076675) (not bm!643179) (not b!7076750) (not d!2213175) (not d!2213217) (not b!7076515) (not d!2213287) (not b!7076476) (not d!2213221) (not b!7076739) (not b!7076724) (not d!2213259) (not d!2213185) (not b!7076745) (not b!7076710) (not bm!643189) (not bm!643192) (not d!2213141) (not d!2213137) (not b!7076705) (not bs!1881427) (not b!7076506) (not d!2213229) (not b!7076685) (not b!7076451) (not b!7076731) (not d!2213261) (not bm!643176) (not d!2213275) (not d!2213127) (not b!7076520) (not bs!1881425) (not b!7076418) (not b!7076625) (not b!7076686) (not bs!1881426) (not d!2213281) (not bm!643190) (not b_lambda!270309) (not d!2213277) (not b!7076709))
(check-sat)
