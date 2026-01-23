; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!684976 () Bool)

(assert start!684976)

(declare-fun b!7060485 () Bool)

(assert (=> b!7060485 true))

(declare-fun b!7060508 () Bool)

(assert (=> b!7060508 true))

(declare-fun b!7060490 () Bool)

(assert (=> b!7060490 true))

(declare-fun bs!1878995 () Bool)

(declare-fun b!7060492 () Bool)

(assert (= bs!1878995 (and b!7060492 b!7060485)))

(declare-fun lambda!421810 () Int)

(declare-fun lambda!421806 () Int)

(assert (=> bs!1878995 (not (= lambda!421810 lambda!421806))))

(declare-fun b!7060481 () Bool)

(declare-fun e!4244697 () Bool)

(declare-fun tp!1941011 () Bool)

(assert (=> b!7060481 (= e!4244697 tp!1941011)))

(declare-fun b!7060482 () Bool)

(declare-fun e!4244703 () Bool)

(declare-fun tp!1941014 () Bool)

(assert (=> b!7060482 (= e!4244703 tp!1941014)))

(declare-fun b!7060483 () Bool)

(declare-fun res!2882448 () Bool)

(declare-fun e!4244686 () Bool)

(assert (=> b!7060483 (=> res!2882448 e!4244686)))

(declare-datatypes ((C!35452 0))(
  ( (C!35453 (val!27428 Int)) )
))
(declare-datatypes ((List!68299 0))(
  ( (Nil!68175) (Cons!68175 (h!74623 C!35452) (t!382080 List!68299)) )
))
(declare-datatypes ((tuple2!68184 0))(
  ( (tuple2!68185 (_1!37395 List!68299) (_2!37395 List!68299)) )
))
(declare-fun lt!2535371 () tuple2!68184)

(declare-fun s!7408 () List!68299)

(declare-fun ++!15679 (List!68299 List!68299) List!68299)

(assert (=> b!7060483 (= res!2882448 (not (= (++!15679 (_1!37395 lt!2535371) (_2!37395 lt!2535371)) s!7408)))))

(declare-fun setRes!49989 () Bool)

(declare-datatypes ((Regex!17591 0))(
  ( (ElementMatch!17591 (c!1315928 C!35452)) (Concat!26436 (regOne!35694 Regex!17591) (regTwo!35694 Regex!17591)) (EmptyExpr!17591) (Star!17591 (reg!17920 Regex!17591)) (EmptyLang!17591) (Union!17591 (regOne!35695 Regex!17591) (regTwo!35695 Regex!17591)) )
))
(declare-datatypes ((List!68300 0))(
  ( (Nil!68176) (Cons!68176 (h!74624 Regex!17591) (t!382081 List!68300)) )
))
(declare-datatypes ((Context!13174 0))(
  ( (Context!13175 (exprs!7087 List!68300)) )
))
(declare-fun setElem!49989 () Context!13174)

(declare-fun tp!1941013 () Bool)

(declare-fun setNonEmpty!49989 () Bool)

(declare-fun inv!86836 (Context!13174) Bool)

(assert (=> setNonEmpty!49989 (= setRes!49989 (and tp!1941013 (inv!86836 setElem!49989) e!4244697))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!13174))

(declare-fun setRest!49989 () (InoxSet Context!13174))

(assert (=> setNonEmpty!49989 (= z1!570 ((_ map or) (store ((as const (Array Context!13174 Bool)) false) setElem!49989 true) setRest!49989))))

(declare-fun b!7060484 () Bool)

(declare-fun res!2882428 () Bool)

(declare-fun e!4244691 () Bool)

(assert (=> b!7060484 (=> res!2882428 e!4244691)))

(declare-fun lt!2535351 () Context!13174)

(declare-fun lt!2535375 () (InoxSet Context!13174))

(assert (=> b!7060484 (= res!2882428 (not (select lt!2535375 lt!2535351)))))

(declare-fun e!4244694 () Bool)

(assert (=> b!7060485 (= e!4244694 (not e!4244691))))

(declare-fun res!2882449 () Bool)

(assert (=> b!7060485 (=> res!2882449 e!4244691)))

(declare-fun lt!2535346 () (InoxSet Context!13174))

(declare-fun matchZipper!3131 ((InoxSet Context!13174) List!68299) Bool)

(assert (=> b!7060485 (= res!2882449 (not (matchZipper!3131 lt!2535346 s!7408)))))

(assert (=> b!7060485 (= lt!2535346 (store ((as const (Array Context!13174 Bool)) false) lt!2535351 true))))

(declare-fun getWitness!1665 ((InoxSet Context!13174) Int) Context!13174)

(assert (=> b!7060485 (= lt!2535351 (getWitness!1665 lt!2535375 lambda!421806))))

(declare-datatypes ((List!68301 0))(
  ( (Nil!68177) (Cons!68177 (h!74625 Context!13174) (t!382082 List!68301)) )
))
(declare-fun lt!2535380 () List!68301)

(declare-fun exists!3596 (List!68301 Int) Bool)

(assert (=> b!7060485 (exists!3596 lt!2535380 lambda!421806)))

(declare-datatypes ((Unit!161858 0))(
  ( (Unit!161859) )
))
(declare-fun lt!2535354 () Unit!161858)

(declare-fun lemmaZipperMatchesExistsMatchingContext!512 (List!68301 List!68299) Unit!161858)

(assert (=> b!7060485 (= lt!2535354 (lemmaZipperMatchesExistsMatchingContext!512 lt!2535380 s!7408))))

(declare-fun toList!10932 ((InoxSet Context!13174)) List!68301)

(assert (=> b!7060485 (= lt!2535380 (toList!10932 lt!2535375))))

(declare-fun b!7060486 () Bool)

(declare-fun e!4244700 () Bool)

(declare-fun e!4244692 () Bool)

(assert (=> b!7060486 (= e!4244700 e!4244692)))

(declare-fun res!2882444 () Bool)

(assert (=> b!7060486 (=> res!2882444 e!4244692)))

(declare-fun e!4244701 () Bool)

(assert (=> b!7060486 (= res!2882444 e!4244701)))

(declare-fun res!2882427 () Bool)

(assert (=> b!7060486 (=> (not res!2882427) (not e!4244701))))

(declare-fun lt!2535356 () Bool)

(declare-fun lt!2535348 () Bool)

(assert (=> b!7060486 (= res!2882427 (not (= lt!2535356 lt!2535348)))))

(declare-fun lt!2535343 () (InoxSet Context!13174))

(assert (=> b!7060486 (= lt!2535356 (matchZipper!3131 lt!2535343 (t!382080 s!7408)))))

(declare-fun lt!2535359 () Unit!161858)

(declare-fun lambda!421808 () Int)

(declare-fun ct2!306 () Context!13174)

(declare-fun lt!2535364 () List!68300)

(declare-fun lemmaConcatPreservesForall!902 (List!68300 List!68300 Int) Unit!161858)

(assert (=> b!7060486 (= lt!2535359 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun lt!2535361 () (InoxSet Context!13174))

(declare-fun e!4244702 () Bool)

(assert (=> b!7060486 (= (matchZipper!3131 lt!2535361 (t!382080 s!7408)) e!4244702)))

(declare-fun res!2882432 () Bool)

(assert (=> b!7060486 (=> res!2882432 e!4244702)))

(assert (=> b!7060486 (= res!2882432 lt!2535348)))

(declare-fun lt!2535358 () (InoxSet Context!13174))

(assert (=> b!7060486 (= lt!2535348 (matchZipper!3131 lt!2535358 (t!382080 s!7408)))))

(declare-fun lt!2535379 () Unit!161858)

(declare-fun lt!2535342 () (InoxSet Context!13174))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1604 ((InoxSet Context!13174) (InoxSet Context!13174) List!68299) Unit!161858)

(assert (=> b!7060486 (= lt!2535379 (lemmaZipperConcatMatchesSameAsBothZippers!1604 lt!2535358 lt!2535342 (t!382080 s!7408)))))

(declare-fun lt!2535362 () Unit!161858)

(assert (=> b!7060486 (= lt!2535362 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun lt!2535386 () Unit!161858)

(assert (=> b!7060486 (= lt!2535386 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun b!7060487 () Bool)

(declare-fun e!4244704 () Bool)

(declare-fun e!4244699 () Bool)

(assert (=> b!7060487 (= e!4244704 e!4244699)))

(declare-fun res!2882430 () Bool)

(assert (=> b!7060487 (=> res!2882430 e!4244699)))

(declare-fun lt!2535370 () (InoxSet Context!13174))

(declare-fun derivationStepZipper!3041 ((InoxSet Context!13174) C!35452) (InoxSet Context!13174))

(assert (=> b!7060487 (= res!2882430 (not (= (derivationStepZipper!3041 lt!2535370 (h!74623 s!7408)) lt!2535342)))))

(declare-fun lt!2535353 () Unit!161858)

(assert (=> b!7060487 (= lt!2535353 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun lt!2535335 () Unit!161858)

(assert (=> b!7060487 (= lt!2535335 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun lt!2535360 () Context!13174)

(declare-fun lambda!421809 () Int)

(declare-fun flatMap!2517 ((InoxSet Context!13174) Int) (InoxSet Context!13174))

(declare-fun derivationStepZipperUp!2175 (Context!13174 C!35452) (InoxSet Context!13174))

(assert (=> b!7060487 (= (flatMap!2517 lt!2535370 lambda!421809) (derivationStepZipperUp!2175 lt!2535360 (h!74623 s!7408)))))

(declare-fun lt!2535345 () Unit!161858)

(declare-fun lemmaFlatMapOnSingletonSet!2026 ((InoxSet Context!13174) Context!13174 Int) Unit!161858)

(assert (=> b!7060487 (= lt!2535345 (lemmaFlatMapOnSingletonSet!2026 lt!2535370 lt!2535360 lambda!421809))))

(assert (=> b!7060487 (= lt!2535370 (store ((as const (Array Context!13174 Bool)) false) lt!2535360 true))))

(declare-fun lt!2535365 () Unit!161858)

(assert (=> b!7060487 (= lt!2535365 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun lt!2535363 () Unit!161858)

(assert (=> b!7060487 (= lt!2535363 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun b!7060488 () Bool)

(declare-fun e!4244695 () Bool)

(declare-fun e!4244689 () Bool)

(assert (=> b!7060488 (= e!4244695 e!4244689)))

(declare-fun res!2882436 () Bool)

(assert (=> b!7060488 (=> res!2882436 e!4244689)))

(declare-fun lt!2535367 () Int)

(declare-fun lt!2535381 () Context!13174)

(declare-fun contextDepthTotal!527 (Context!13174) Int)

(assert (=> b!7060488 (= res!2882436 (<= lt!2535367 (contextDepthTotal!527 lt!2535381)))))

(declare-fun lt!2535341 () Int)

(assert (=> b!7060488 (<= lt!2535367 lt!2535341)))

(declare-fun lt!2535333 () List!68301)

(declare-fun zipperDepthTotal!556 (List!68301) Int)

(assert (=> b!7060488 (= lt!2535341 (zipperDepthTotal!556 lt!2535333))))

(declare-fun lt!2535384 () Context!13174)

(assert (=> b!7060488 (= lt!2535367 (contextDepthTotal!527 lt!2535384))))

(declare-fun lt!2535374 () Unit!161858)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!94 (List!68301 Context!13174) Unit!161858)

(assert (=> b!7060488 (= lt!2535374 (lemmaTotalDepthZipperLargerThanOfAnyContext!94 lt!2535333 lt!2535384))))

(assert (=> b!7060488 (= lt!2535333 (toList!10932 z1!570))))

(declare-fun lt!2535332 () Unit!161858)

(assert (=> b!7060488 (= lt!2535332 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun lt!2535352 () Unit!161858)

(assert (=> b!7060488 (= lt!2535352 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun lt!2535382 () Unit!161858)

(assert (=> b!7060488 (= lt!2535382 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun lt!2535357 () (InoxSet Context!13174))

(assert (=> b!7060488 (= (flatMap!2517 lt!2535357 lambda!421809) (derivationStepZipperUp!2175 lt!2535381 (h!74623 s!7408)))))

(declare-fun lt!2535347 () Unit!161858)

(assert (=> b!7060488 (= lt!2535347 (lemmaFlatMapOnSingletonSet!2026 lt!2535357 lt!2535381 lambda!421809))))

(declare-fun lambda!421807 () Int)

(declare-fun map!15919 ((InoxSet Context!13174) Int) (InoxSet Context!13174))

(declare-fun ++!15680 (List!68300 List!68300) List!68300)

(assert (=> b!7060488 (= (map!15919 lt!2535357 lambda!421807) (store ((as const (Array Context!13174 Bool)) false) (Context!13175 (++!15680 lt!2535364 (exprs!7087 ct2!306))) true))))

(declare-fun lt!2535339 () Unit!161858)

(assert (=> b!7060488 (= lt!2535339 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun lt!2535334 () Unit!161858)

(declare-fun lemmaMapOnSingletonSet!408 ((InoxSet Context!13174) Context!13174 Int) Unit!161858)

(assert (=> b!7060488 (= lt!2535334 (lemmaMapOnSingletonSet!408 lt!2535357 lt!2535381 lambda!421807))))

(assert (=> b!7060488 (= lt!2535357 (store ((as const (Array Context!13174 Bool)) false) lt!2535381 true))))

(declare-fun b!7060489 () Bool)

(declare-fun res!2882450 () Bool)

(declare-fun e!4244698 () Bool)

(assert (=> b!7060489 (=> res!2882450 e!4244698)))

(declare-fun isEmpty!39766 (List!68300) Bool)

(assert (=> b!7060489 (= res!2882450 (isEmpty!39766 (exprs!7087 lt!2535384)))))

(declare-fun e!4244693 () Bool)

(assert (=> b!7060490 (= e!4244693 e!4244698)))

(declare-fun res!2882440 () Bool)

(assert (=> b!7060490 (=> res!2882440 e!4244698)))

(declare-fun lt!2535378 () (InoxSet Context!13174))

(assert (=> b!7060490 (= res!2882440 (not (= (derivationStepZipper!3041 lt!2535378 (h!74623 s!7408)) lt!2535343)))))

(declare-fun lt!2535377 () Context!13174)

(assert (=> b!7060490 (= (flatMap!2517 lt!2535378 lambda!421809) (derivationStepZipperUp!2175 lt!2535377 (h!74623 s!7408)))))

(declare-fun lt!2535336 () Unit!161858)

(assert (=> b!7060490 (= lt!2535336 (lemmaFlatMapOnSingletonSet!2026 lt!2535378 lt!2535377 lambda!421809))))

(assert (=> b!7060490 (= lt!2535343 (derivationStepZipperUp!2175 lt!2535377 (h!74623 s!7408)))))

(declare-fun lt!2535376 () Unit!161858)

(assert (=> b!7060490 (= lt!2535376 (lemmaConcatPreservesForall!902 (exprs!7087 lt!2535384) (exprs!7087 ct2!306) lambda!421808))))

(declare-fun b!7060491 () Bool)

(declare-fun res!2882431 () Bool)

(assert (=> b!7060491 (=> res!2882431 e!4244686)))

(declare-fun lt!2535337 () (InoxSet Context!13174))

(assert (=> b!7060491 (= res!2882431 (not (matchZipper!3131 lt!2535337 (_2!37395 lt!2535371))))))

(declare-fun res!2882446 () Bool)

(assert (=> b!7060492 (=> res!2882446 e!4244686)))

(declare-fun exists!3597 ((InoxSet Context!13174) Int) Bool)

(assert (=> b!7060492 (= res!2882446 (not (exists!3597 lt!2535357 lambda!421810)))))

(declare-fun res!2882433 () Bool)

(assert (=> start!684976 (=> (not res!2882433) (not e!4244694))))

(assert (=> start!684976 (= res!2882433 (matchZipper!3131 lt!2535375 s!7408))))

(declare-fun appendTo!712 ((InoxSet Context!13174) Context!13174) (InoxSet Context!13174))

(assert (=> start!684976 (= lt!2535375 (appendTo!712 z1!570 ct2!306))))

(assert (=> start!684976 e!4244694))

(declare-fun condSetEmpty!49989 () Bool)

(assert (=> start!684976 (= condSetEmpty!49989 (= z1!570 ((as const (Array Context!13174 Bool)) false)))))

(assert (=> start!684976 setRes!49989))

(assert (=> start!684976 (and (inv!86836 ct2!306) e!4244703)))

(declare-fun e!4244690 () Bool)

(assert (=> start!684976 e!4244690))

(declare-fun b!7060493 () Bool)

(declare-fun e!4244687 () Bool)

(assert (=> b!7060493 (= e!4244686 e!4244687)))

(declare-fun res!2882442 () Bool)

(assert (=> b!7060493 (=> res!2882442 e!4244687)))

(declare-fun nullableContext!103 (Context!13174) Bool)

(assert (=> b!7060493 (= res!2882442 (not (nullableContext!103 lt!2535381)))))

(declare-fun lt!2535385 () Context!13174)

(assert (=> b!7060493 (= lt!2535385 (getWitness!1665 lt!2535357 lambda!421810))))

(declare-fun b!7060494 () Bool)

(declare-fun res!2882452 () Bool)

(assert (=> b!7060494 (=> (not res!2882452) (not e!4244694))))

(get-info :version)

(assert (=> b!7060494 (= res!2882452 ((_ is Cons!68175) s!7408))))

(declare-fun setIsEmpty!49989 () Bool)

(assert (=> setIsEmpty!49989 setRes!49989))

(declare-fun b!7060495 () Bool)

(assert (=> b!7060495 (= e!4244701 (not (matchZipper!3131 lt!2535342 (t!382080 s!7408))))))

(declare-fun lt!2535369 () Unit!161858)

(assert (=> b!7060495 (= lt!2535369 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun b!7060496 () Bool)

(assert (=> b!7060496 (= e!4244689 e!4244686)))

(declare-fun res!2882445 () Bool)

(assert (=> b!7060496 (=> res!2882445 e!4244686)))

(assert (=> b!7060496 (= res!2882445 (not (matchZipper!3131 lt!2535357 (_1!37395 lt!2535371))))))

(declare-datatypes ((Option!16924 0))(
  ( (None!16923) (Some!16923 (v!53217 tuple2!68184)) )
))
(declare-fun lt!2535355 () Option!16924)

(declare-fun get!23870 (Option!16924) tuple2!68184)

(assert (=> b!7060496 (= lt!2535371 (get!23870 lt!2535355))))

(declare-fun isDefined!13625 (Option!16924) Bool)

(assert (=> b!7060496 (isDefined!13625 lt!2535355)))

(declare-fun findConcatSeparationZippers!440 ((InoxSet Context!13174) (InoxSet Context!13174) List!68299 List!68299 List!68299) Option!16924)

(assert (=> b!7060496 (= lt!2535355 (findConcatSeparationZippers!440 lt!2535357 lt!2535337 Nil!68175 s!7408 s!7408))))

(assert (=> b!7060496 (= lt!2535337 (store ((as const (Array Context!13174 Bool)) false) ct2!306 true))))

(declare-fun lt!2535338 () Unit!161858)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!428 ((InoxSet Context!13174) Context!13174 List!68299) Unit!161858)

(assert (=> b!7060496 (= lt!2535338 (lemmaConcatZipperMatchesStringThenFindConcatDefined!428 lt!2535357 ct2!306 s!7408))))

(declare-fun b!7060497 () Bool)

(assert (=> b!7060497 (= e!4244692 e!4244704)))

(declare-fun res!2882447 () Bool)

(assert (=> b!7060497 (=> res!2882447 e!4244704)))

(assert (=> b!7060497 (= res!2882447 (not (matchZipper!3131 lt!2535342 (t!382080 s!7408))))))

(declare-fun lt!2535372 () Unit!161858)

(assert (=> b!7060497 (= lt!2535372 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun b!7060498 () Bool)

(declare-fun e!4244696 () Bool)

(assert (=> b!7060498 (= e!4244698 e!4244696)))

(declare-fun res!2882435 () Bool)

(assert (=> b!7060498 (=> res!2882435 e!4244696)))

(declare-fun nullable!7274 (Regex!17591) Bool)

(assert (=> b!7060498 (= res!2882435 (not (nullable!7274 (h!74624 (exprs!7087 lt!2535384)))))))

(assert (=> b!7060498 (= lt!2535381 (Context!13175 lt!2535364))))

(declare-fun tail!13733 (List!68300) List!68300)

(assert (=> b!7060498 (= lt!2535364 (tail!13733 (exprs!7087 lt!2535384)))))

(declare-fun b!7060499 () Bool)

(assert (=> b!7060499 (= e!4244687 true)))

(declare-fun lt!2535350 () Bool)

(declare-fun lt!2535366 () (InoxSet Context!13174))

(assert (=> b!7060499 (= lt!2535350 (matchZipper!3131 lt!2535366 (_1!37395 lt!2535371)))))

(assert (=> b!7060499 (exists!3597 lt!2535366 lambda!421810)))

(declare-fun lt!2535387 () Unit!161858)

(declare-fun lemmaContainsThenExists!129 ((InoxSet Context!13174) Context!13174 Int) Unit!161858)

(assert (=> b!7060499 (= lt!2535387 (lemmaContainsThenExists!129 lt!2535366 lt!2535384 lambda!421810))))

(assert (=> b!7060499 (= lt!2535366 (store ((as const (Array Context!13174 Bool)) false) lt!2535384 true))))

(assert (=> b!7060499 (exists!3597 lt!2535357 lambda!421810)))

(declare-fun lt!2535368 () Unit!161858)

(assert (=> b!7060499 (= lt!2535368 (lemmaContainsThenExists!129 lt!2535357 lt!2535381 lambda!421810))))

(declare-fun b!7060500 () Bool)

(assert (=> b!7060500 (= e!4244699 e!4244695)))

(declare-fun res!2882441 () Bool)

(assert (=> b!7060500 (=> res!2882441 e!4244695)))

(assert (=> b!7060500 (= res!2882441 (not (matchZipper!3131 lt!2535370 s!7408)))))

(declare-fun lt!2535340 () Unit!161858)

(assert (=> b!7060500 (= lt!2535340 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun b!7060501 () Bool)

(declare-fun res!2882434 () Bool)

(assert (=> b!7060501 (=> res!2882434 e!4244692)))

(assert (=> b!7060501 (= res!2882434 (not lt!2535356))))

(declare-fun b!7060502 () Bool)

(assert (=> b!7060502 (= e!4244702 (matchZipper!3131 lt!2535342 (t!382080 s!7408)))))

(declare-fun b!7060503 () Bool)

(declare-fun tp_is_empty!44407 () Bool)

(declare-fun tp!1941012 () Bool)

(assert (=> b!7060503 (= e!4244690 (and tp_is_empty!44407 tp!1941012))))

(declare-fun b!7060504 () Bool)

(declare-fun res!2882443 () Bool)

(assert (=> b!7060504 (=> res!2882443 e!4244689)))

(assert (=> b!7060504 (= res!2882443 (>= (zipperDepthTotal!556 (Cons!68177 lt!2535381 Nil!68177)) lt!2535341))))

(declare-fun b!7060505 () Bool)

(declare-fun res!2882429 () Bool)

(assert (=> b!7060505 (=> res!2882429 e!4244686)))

(declare-fun isEmpty!39767 (List!68299) Bool)

(assert (=> b!7060505 (= res!2882429 (not (isEmpty!39767 (_1!37395 lt!2535371))))))

(declare-fun b!7060506 () Bool)

(declare-fun e!4244688 () Bool)

(assert (=> b!7060506 (= e!4244688 e!4244693)))

(declare-fun res!2882451 () Bool)

(assert (=> b!7060506 (=> res!2882451 e!4244693)))

(assert (=> b!7060506 (= res!2882451 (not (= lt!2535378 lt!2535346)))))

(assert (=> b!7060506 (= lt!2535378 (store ((as const (Array Context!13174 Bool)) false) lt!2535377 true))))

(declare-fun lt!2535349 () Unit!161858)

(assert (=> b!7060506 (= lt!2535349 (lemmaConcatPreservesForall!902 (exprs!7087 lt!2535384) (exprs!7087 ct2!306) lambda!421808))))

(declare-fun b!7060507 () Bool)

(declare-fun res!2882439 () Bool)

(assert (=> b!7060507 (=> res!2882439 e!4244698)))

(assert (=> b!7060507 (= res!2882439 (not ((_ is Cons!68176) (exprs!7087 lt!2535384))))))

(assert (=> b!7060508 (= e!4244691 e!4244688)))

(declare-fun res!2882426 () Bool)

(assert (=> b!7060508 (=> res!2882426 e!4244688)))

(assert (=> b!7060508 (= res!2882426 (or (not (= lt!2535377 lt!2535351)) (not (select z1!570 lt!2535384))))))

(assert (=> b!7060508 (= lt!2535377 (Context!13175 (++!15680 (exprs!7087 lt!2535384) (exprs!7087 ct2!306))))))

(declare-fun lt!2535373 () Unit!161858)

(assert (=> b!7060508 (= lt!2535373 (lemmaConcatPreservesForall!902 (exprs!7087 lt!2535384) (exprs!7087 ct2!306) lambda!421808))))

(declare-fun mapPost2!420 ((InoxSet Context!13174) Int Context!13174) Context!13174)

(assert (=> b!7060508 (= lt!2535384 (mapPost2!420 z1!570 lambda!421807 lt!2535351))))

(declare-fun b!7060509 () Bool)

(declare-fun res!2882437 () Bool)

(assert (=> b!7060509 (=> res!2882437 e!4244687)))

(assert (=> b!7060509 (= res!2882437 (not (nullableContext!103 lt!2535384)))))

(declare-fun b!7060510 () Bool)

(assert (=> b!7060510 (= e!4244696 e!4244700)))

(declare-fun res!2882438 () Bool)

(assert (=> b!7060510 (=> res!2882438 e!4244700)))

(assert (=> b!7060510 (= res!2882438 (not (= lt!2535343 lt!2535361)))))

(assert (=> b!7060510 (= lt!2535361 ((_ map or) lt!2535358 lt!2535342))))

(assert (=> b!7060510 (= lt!2535342 (derivationStepZipperUp!2175 lt!2535360 (h!74623 s!7408)))))

(declare-fun derivationStepZipperDown!2225 (Regex!17591 Context!13174 C!35452) (InoxSet Context!13174))

(assert (=> b!7060510 (= lt!2535358 (derivationStepZipperDown!2225 (h!74624 (exprs!7087 lt!2535384)) lt!2535360 (h!74623 s!7408)))))

(assert (=> b!7060510 (= lt!2535360 (Context!13175 (++!15680 lt!2535364 (exprs!7087 ct2!306))))))

(declare-fun lt!2535383 () Unit!161858)

(assert (=> b!7060510 (= lt!2535383 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(declare-fun lt!2535344 () Unit!161858)

(assert (=> b!7060510 (= lt!2535344 (lemmaConcatPreservesForall!902 lt!2535364 (exprs!7087 ct2!306) lambda!421808))))

(assert (= (and start!684976 res!2882433) b!7060494))

(assert (= (and b!7060494 res!2882452) b!7060485))

(assert (= (and b!7060485 (not res!2882449)) b!7060484))

(assert (= (and b!7060484 (not res!2882428)) b!7060508))

(assert (= (and b!7060508 (not res!2882426)) b!7060506))

(assert (= (and b!7060506 (not res!2882451)) b!7060490))

(assert (= (and b!7060490 (not res!2882440)) b!7060507))

(assert (= (and b!7060507 (not res!2882439)) b!7060489))

(assert (= (and b!7060489 (not res!2882450)) b!7060498))

(assert (= (and b!7060498 (not res!2882435)) b!7060510))

(assert (= (and b!7060510 (not res!2882438)) b!7060486))

(assert (= (and b!7060486 (not res!2882432)) b!7060502))

(assert (= (and b!7060486 res!2882427) b!7060495))

(assert (= (and b!7060486 (not res!2882444)) b!7060501))

(assert (= (and b!7060501 (not res!2882434)) b!7060497))

(assert (= (and b!7060497 (not res!2882447)) b!7060487))

(assert (= (and b!7060487 (not res!2882430)) b!7060500))

(assert (= (and b!7060500 (not res!2882441)) b!7060488))

(assert (= (and b!7060488 (not res!2882436)) b!7060504))

(assert (= (and b!7060504 (not res!2882443)) b!7060496))

(assert (= (and b!7060496 (not res!2882445)) b!7060491))

(assert (= (and b!7060491 (not res!2882431)) b!7060483))

(assert (= (and b!7060483 (not res!2882448)) b!7060505))

(assert (= (and b!7060505 (not res!2882429)) b!7060492))

(assert (= (and b!7060492 (not res!2882446)) b!7060493))

(assert (= (and b!7060493 (not res!2882442)) b!7060509))

(assert (= (and b!7060509 (not res!2882437)) b!7060499))

(assert (= (and start!684976 condSetEmpty!49989) setIsEmpty!49989))

(assert (= (and start!684976 (not condSetEmpty!49989)) setNonEmpty!49989))

(assert (= setNonEmpty!49989 b!7060481))

(assert (= start!684976 b!7060482))

(assert (= (and start!684976 ((_ is Cons!68175) s!7408)) b!7060503))

(declare-fun m!7780346 () Bool)

(assert (=> b!7060493 m!7780346))

(declare-fun m!7780348 () Bool)

(assert (=> b!7060493 m!7780348))

(declare-fun m!7780350 () Bool)

(assert (=> b!7060510 m!7780350))

(declare-fun m!7780352 () Bool)

(assert (=> b!7060510 m!7780352))

(declare-fun m!7780354 () Bool)

(assert (=> b!7060510 m!7780354))

(declare-fun m!7780356 () Bool)

(assert (=> b!7060510 m!7780356))

(assert (=> b!7060510 m!7780352))

(declare-fun m!7780358 () Bool)

(assert (=> b!7060491 m!7780358))

(declare-fun m!7780360 () Bool)

(assert (=> b!7060509 m!7780360))

(declare-fun m!7780362 () Bool)

(assert (=> b!7060486 m!7780362))

(declare-fun m!7780364 () Bool)

(assert (=> b!7060486 m!7780364))

(declare-fun m!7780366 () Bool)

(assert (=> b!7060486 m!7780366))

(declare-fun m!7780368 () Bool)

(assert (=> b!7060486 m!7780368))

(assert (=> b!7060486 m!7780352))

(assert (=> b!7060486 m!7780352))

(assert (=> b!7060486 m!7780352))

(declare-fun m!7780370 () Bool)

(assert (=> b!7060497 m!7780370))

(assert (=> b!7060497 m!7780352))

(declare-fun m!7780372 () Bool)

(assert (=> b!7060484 m!7780372))

(declare-fun m!7780374 () Bool)

(assert (=> b!7060488 m!7780374))

(assert (=> b!7060488 m!7780352))

(declare-fun m!7780376 () Bool)

(assert (=> b!7060488 m!7780376))

(declare-fun m!7780378 () Bool)

(assert (=> b!7060488 m!7780378))

(declare-fun m!7780380 () Bool)

(assert (=> b!7060488 m!7780380))

(declare-fun m!7780382 () Bool)

(assert (=> b!7060488 m!7780382))

(declare-fun m!7780384 () Bool)

(assert (=> b!7060488 m!7780384))

(assert (=> b!7060488 m!7780352))

(declare-fun m!7780386 () Bool)

(assert (=> b!7060488 m!7780386))

(declare-fun m!7780388 () Bool)

(assert (=> b!7060488 m!7780388))

(assert (=> b!7060488 m!7780352))

(declare-fun m!7780390 () Bool)

(assert (=> b!7060488 m!7780390))

(assert (=> b!7060488 m!7780354))

(declare-fun m!7780392 () Bool)

(assert (=> b!7060488 m!7780392))

(assert (=> b!7060488 m!7780352))

(declare-fun m!7780394 () Bool)

(assert (=> b!7060488 m!7780394))

(declare-fun m!7780396 () Bool)

(assert (=> b!7060488 m!7780396))

(declare-fun m!7780398 () Bool)

(assert (=> start!684976 m!7780398))

(declare-fun m!7780400 () Bool)

(assert (=> start!684976 m!7780400))

(declare-fun m!7780402 () Bool)

(assert (=> start!684976 m!7780402))

(assert (=> b!7060495 m!7780370))

(assert (=> b!7060495 m!7780352))

(declare-fun m!7780404 () Bool)

(assert (=> b!7060504 m!7780404))

(declare-fun m!7780406 () Bool)

(assert (=> b!7060487 m!7780406))

(declare-fun m!7780408 () Bool)

(assert (=> b!7060487 m!7780408))

(declare-fun m!7780410 () Bool)

(assert (=> b!7060487 m!7780410))

(assert (=> b!7060487 m!7780352))

(assert (=> b!7060487 m!7780350))

(assert (=> b!7060487 m!7780352))

(assert (=> b!7060487 m!7780352))

(assert (=> b!7060487 m!7780352))

(declare-fun m!7780412 () Bool)

(assert (=> b!7060487 m!7780412))

(declare-fun m!7780414 () Bool)

(assert (=> b!7060490 m!7780414))

(declare-fun m!7780416 () Bool)

(assert (=> b!7060490 m!7780416))

(declare-fun m!7780418 () Bool)

(assert (=> b!7060490 m!7780418))

(declare-fun m!7780420 () Bool)

(assert (=> b!7060490 m!7780420))

(declare-fun m!7780422 () Bool)

(assert (=> b!7060490 m!7780422))

(declare-fun m!7780424 () Bool)

(assert (=> b!7060489 m!7780424))

(declare-fun m!7780426 () Bool)

(assert (=> b!7060496 m!7780426))

(declare-fun m!7780428 () Bool)

(assert (=> b!7060496 m!7780428))

(declare-fun m!7780430 () Bool)

(assert (=> b!7060496 m!7780430))

(declare-fun m!7780432 () Bool)

(assert (=> b!7060496 m!7780432))

(declare-fun m!7780434 () Bool)

(assert (=> b!7060496 m!7780434))

(declare-fun m!7780436 () Bool)

(assert (=> b!7060496 m!7780436))

(declare-fun m!7780438 () Bool)

(assert (=> b!7060498 m!7780438))

(declare-fun m!7780440 () Bool)

(assert (=> b!7060498 m!7780440))

(declare-fun m!7780442 () Bool)

(assert (=> b!7060499 m!7780442))

(declare-fun m!7780444 () Bool)

(assert (=> b!7060499 m!7780444))

(declare-fun m!7780446 () Bool)

(assert (=> b!7060499 m!7780446))

(declare-fun m!7780448 () Bool)

(assert (=> b!7060499 m!7780448))

(declare-fun m!7780450 () Bool)

(assert (=> b!7060499 m!7780450))

(declare-fun m!7780452 () Bool)

(assert (=> b!7060499 m!7780452))

(assert (=> b!7060502 m!7780370))

(declare-fun m!7780454 () Bool)

(assert (=> setNonEmpty!49989 m!7780454))

(assert (=> b!7060492 m!7780444))

(declare-fun m!7780456 () Bool)

(assert (=> b!7060485 m!7780456))

(declare-fun m!7780458 () Bool)

(assert (=> b!7060485 m!7780458))

(declare-fun m!7780460 () Bool)

(assert (=> b!7060485 m!7780460))

(declare-fun m!7780462 () Bool)

(assert (=> b!7060485 m!7780462))

(declare-fun m!7780464 () Bool)

(assert (=> b!7060485 m!7780464))

(declare-fun m!7780466 () Bool)

(assert (=> b!7060485 m!7780466))

(declare-fun m!7780468 () Bool)

(assert (=> b!7060483 m!7780468))

(declare-fun m!7780470 () Bool)

(assert (=> b!7060500 m!7780470))

(assert (=> b!7060500 m!7780352))

(declare-fun m!7780472 () Bool)

(assert (=> b!7060506 m!7780472))

(assert (=> b!7060506 m!7780416))

(declare-fun m!7780474 () Bool)

(assert (=> b!7060508 m!7780474))

(declare-fun m!7780476 () Bool)

(assert (=> b!7060508 m!7780476))

(assert (=> b!7060508 m!7780416))

(declare-fun m!7780478 () Bool)

(assert (=> b!7060508 m!7780478))

(declare-fun m!7780480 () Bool)

(assert (=> b!7060505 m!7780480))

(check-sat (not b!7060503) (not b!7060487) (not b!7060489) (not b!7060502) (not b!7060491) (not b!7060500) (not b!7060505) (not b!7060509) (not b!7060510) (not b!7060498) (not b!7060506) (not b!7060499) (not b!7060504) (not b!7060496) tp_is_empty!44407 (not b!7060493) (not b!7060490) (not b!7060492) (not b!7060485) (not b!7060495) (not b!7060481) (not b!7060488) (not b!7060483) (not setNonEmpty!49989) (not b!7060508) (not b!7060497) (not start!684976) (not b!7060482) (not b!7060486))
(check-sat)
