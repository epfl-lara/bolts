; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566694 () Bool)

(assert start!566694)

(declare-fun b!5393361 () Bool)

(assert (=> b!5393361 true))

(assert (=> b!5393361 true))

(declare-fun lambda!280274 () Int)

(declare-fun lambda!280273 () Int)

(assert (=> b!5393361 (not (= lambda!280274 lambda!280273))))

(assert (=> b!5393361 true))

(assert (=> b!5393361 true))

(declare-fun b!5393355 () Bool)

(assert (=> b!5393355 true))

(declare-fun b!5393369 () Bool)

(assert (=> b!5393369 true))

(declare-fun b!5393349 () Bool)

(declare-fun res!2291890 () Bool)

(declare-fun e!3344614 () Bool)

(assert (=> b!5393349 (=> res!2291890 e!3344614)))

(declare-datatypes ((C!30556 0))(
  ( (C!30557 (val!24980 Int)) )
))
(declare-datatypes ((Regex!15143 0))(
  ( (ElementMatch!15143 (c!939915 C!30556)) (Concat!23988 (regOne!30798 Regex!15143) (regTwo!30798 Regex!15143)) (EmptyExpr!15143) (Star!15143 (reg!15472 Regex!15143)) (EmptyLang!15143) (Union!15143 (regOne!30799 Regex!15143) (regTwo!30799 Regex!15143)) )
))
(declare-fun r!7292 () Regex!15143)

(get-info :version)

(assert (=> b!5393349 (= res!2291890 (or ((_ is EmptyExpr!15143) r!7292) ((_ is EmptyLang!15143) r!7292) ((_ is ElementMatch!15143) r!7292) ((_ is Union!15143) r!7292) (not ((_ is Concat!23988) r!7292))))))

(declare-fun b!5393350 () Bool)

(declare-fun e!3344615 () Bool)

(assert (=> b!5393350 (= e!3344615 (not e!3344614))))

(declare-fun res!2291896 () Bool)

(assert (=> b!5393350 (=> res!2291896 e!3344614)))

(declare-datatypes ((List!61728 0))(
  ( (Nil!61604) (Cons!61604 (h!68052 Regex!15143) (t!374951 List!61728)) )
))
(declare-datatypes ((Context!9054 0))(
  ( (Context!9055 (exprs!5027 List!61728)) )
))
(declare-datatypes ((List!61729 0))(
  ( (Nil!61605) (Cons!61605 (h!68053 Context!9054) (t!374952 List!61729)) )
))
(declare-fun zl!343 () List!61729)

(assert (=> b!5393350 (= res!2291896 (not ((_ is Cons!61605) zl!343)))))

(declare-fun lt!2197467 () Bool)

(declare-datatypes ((List!61730 0))(
  ( (Nil!61606) (Cons!61606 (h!68054 C!30556) (t!374953 List!61730)) )
))
(declare-fun s!2326 () List!61730)

(declare-fun matchRSpec!2246 (Regex!15143 List!61730) Bool)

(assert (=> b!5393350 (= lt!2197467 (matchRSpec!2246 r!7292 s!2326))))

(declare-fun matchR!7328 (Regex!15143 List!61730) Bool)

(assert (=> b!5393350 (= lt!2197467 (matchR!7328 r!7292 s!2326))))

(declare-datatypes ((Unit!154094 0))(
  ( (Unit!154095) )
))
(declare-fun lt!2197499 () Unit!154094)

(declare-fun mainMatchTheorem!2246 (Regex!15143 List!61730) Unit!154094)

(assert (=> b!5393350 (= lt!2197499 (mainMatchTheorem!2246 r!7292 s!2326))))

(declare-fun b!5393351 () Bool)

(declare-fun e!3344616 () Bool)

(declare-fun tp!1493186 () Bool)

(declare-fun tp!1493189 () Bool)

(assert (=> b!5393351 (= e!3344616 (and tp!1493186 tp!1493189))))

(declare-fun b!5393352 () Bool)

(declare-fun e!3344624 () Unit!154094)

(declare-fun Unit!154096 () Unit!154094)

(assert (=> b!5393352 (= e!3344624 Unit!154096)))

(declare-fun b!5393353 () Bool)

(declare-fun res!2291893 () Bool)

(declare-fun e!3344618 () Bool)

(assert (=> b!5393353 (=> res!2291893 e!3344618)))

(declare-fun e!3344625 () Bool)

(assert (=> b!5393353 (= res!2291893 e!3344625)))

(declare-fun res!2291889 () Bool)

(assert (=> b!5393353 (=> (not res!2291889) (not e!3344625))))

(assert (=> b!5393353 (= res!2291889 ((_ is Concat!23988) (regOne!30798 r!7292)))))

(declare-fun e!3344619 () Bool)

(declare-fun e!3344623 () Bool)

(declare-fun b!5393354 () Bool)

(declare-fun tp!1493184 () Bool)

(declare-fun inv!81104 (Context!9054) Bool)

(assert (=> b!5393354 (= e!3344619 (and (inv!81104 (h!68053 zl!343)) e!3344623 tp!1493184))))

(declare-fun e!3344620 () Bool)

(assert (=> b!5393355 (= e!3344620 e!3344618)))

(declare-fun res!2291919 () Bool)

(assert (=> b!5393355 (=> res!2291919 e!3344618)))

(assert (=> b!5393355 (= res!2291919 (or (and ((_ is ElementMatch!15143) (regOne!30798 r!7292)) (= (c!939915 (regOne!30798 r!7292)) (h!68054 s!2326))) ((_ is Union!15143) (regOne!30798 r!7292))))))

(declare-fun lt!2197480 () Unit!154094)

(assert (=> b!5393355 (= lt!2197480 e!3344624)))

(declare-fun c!939914 () Bool)

(declare-fun lt!2197465 () Bool)

(assert (=> b!5393355 (= c!939914 lt!2197465)))

(declare-fun nullable!5312 (Regex!15143) Bool)

(assert (=> b!5393355 (= lt!2197465 (nullable!5312 (h!68052 (exprs!5027 (h!68053 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9054))

(declare-fun lambda!280275 () Int)

(declare-fun flatMap!870 ((InoxSet Context!9054) Int) (InoxSet Context!9054))

(declare-fun derivationStepZipperUp!515 (Context!9054 C!30556) (InoxSet Context!9054))

(assert (=> b!5393355 (= (flatMap!870 z!1189 lambda!280275) (derivationStepZipperUp!515 (h!68053 zl!343) (h!68054 s!2326)))))

(declare-fun lt!2197496 () Unit!154094)

(declare-fun lemmaFlatMapOnSingletonSet!402 ((InoxSet Context!9054) Context!9054 Int) Unit!154094)

(assert (=> b!5393355 (= lt!2197496 (lemmaFlatMapOnSingletonSet!402 z!1189 (h!68053 zl!343) lambda!280275))))

(declare-fun lt!2197488 () (InoxSet Context!9054))

(declare-fun lt!2197478 () Context!9054)

(assert (=> b!5393355 (= lt!2197488 (derivationStepZipperUp!515 lt!2197478 (h!68054 s!2326)))))

(declare-fun lt!2197472 () (InoxSet Context!9054))

(declare-fun derivationStepZipperDown!591 (Regex!15143 Context!9054 C!30556) (InoxSet Context!9054))

(assert (=> b!5393355 (= lt!2197472 (derivationStepZipperDown!591 (h!68052 (exprs!5027 (h!68053 zl!343))) lt!2197478 (h!68054 s!2326)))))

(assert (=> b!5393355 (= lt!2197478 (Context!9055 (t!374951 (exprs!5027 (h!68053 zl!343)))))))

(declare-fun lt!2197494 () (InoxSet Context!9054))

(assert (=> b!5393355 (= lt!2197494 (derivationStepZipperUp!515 (Context!9055 (Cons!61604 (h!68052 (exprs!5027 (h!68053 zl!343))) (t!374951 (exprs!5027 (h!68053 zl!343))))) (h!68054 s!2326)))))

(declare-fun b!5393356 () Bool)

(declare-fun e!3344636 () Bool)

(declare-fun e!3344617 () Bool)

(assert (=> b!5393356 (= e!3344636 e!3344617)))

(declare-fun res!2291909 () Bool)

(assert (=> b!5393356 (=> res!2291909 e!3344617)))

(declare-fun e!3344622 () Bool)

(assert (=> b!5393356 (= res!2291909 e!3344622)))

(declare-fun res!2291899 () Bool)

(assert (=> b!5393356 (=> (not res!2291899) (not e!3344622))))

(declare-fun lt!2197469 () Bool)

(assert (=> b!5393356 (= res!2291899 (not lt!2197469))))

(declare-fun matchZipper!1387 ((InoxSet Context!9054) List!61730) Bool)

(assert (=> b!5393356 (= lt!2197469 (matchZipper!1387 lt!2197472 (t!374953 s!2326)))))

(declare-fun b!5393357 () Bool)

(assert (=> b!5393357 (= e!3344625 (nullable!5312 (regOne!30798 (regOne!30798 r!7292))))))

(declare-fun b!5393358 () Bool)

(declare-fun e!3344633 () Bool)

(declare-fun tp!1493185 () Bool)

(assert (=> b!5393358 (= e!3344633 tp!1493185)))

(declare-fun b!5393359 () Bool)

(declare-fun res!2291916 () Bool)

(assert (=> b!5393359 (=> res!2291916 e!3344636)))

(assert (=> b!5393359 (= res!2291916 (not lt!2197465))))

(declare-fun b!5393360 () Bool)

(declare-fun res!2291908 () Bool)

(assert (=> b!5393360 (=> res!2291908 e!3344614)))

(assert (=> b!5393360 (= res!2291908 (not ((_ is Cons!61604) (exprs!5027 (h!68053 zl!343)))))))

(assert (=> b!5393361 (= e!3344614 e!3344620)))

(declare-fun res!2291904 () Bool)

(assert (=> b!5393361 (=> res!2291904 e!3344620)))

(declare-fun lt!2197464 () Bool)

(assert (=> b!5393361 (= res!2291904 (or (not (= lt!2197467 lt!2197464)) ((_ is Nil!61606) s!2326)))))

(declare-fun Exists!2324 (Int) Bool)

(assert (=> b!5393361 (= (Exists!2324 lambda!280273) (Exists!2324 lambda!280274))))

(declare-fun lt!2197484 () Unit!154094)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!978 (Regex!15143 Regex!15143 List!61730) Unit!154094)

(assert (=> b!5393361 (= lt!2197484 (lemmaExistCutMatchRandMatchRSpecEquivalent!978 (regOne!30798 r!7292) (regTwo!30798 r!7292) s!2326))))

(assert (=> b!5393361 (= lt!2197464 (Exists!2324 lambda!280273))))

(declare-datatypes ((tuple2!64684 0))(
  ( (tuple2!64685 (_1!35645 List!61730) (_2!35645 List!61730)) )
))
(declare-datatypes ((Option!15254 0))(
  ( (None!15253) (Some!15253 (v!51282 tuple2!64684)) )
))
(declare-fun isDefined!11957 (Option!15254) Bool)

(declare-fun findConcatSeparation!1668 (Regex!15143 Regex!15143 List!61730 List!61730 List!61730) Option!15254)

(assert (=> b!5393361 (= lt!2197464 (isDefined!11957 (findConcatSeparation!1668 (regOne!30798 r!7292) (regTwo!30798 r!7292) Nil!61606 s!2326 s!2326)))))

(declare-fun lt!2197470 () Unit!154094)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1432 (Regex!15143 Regex!15143 List!61730) Unit!154094)

(assert (=> b!5393361 (= lt!2197470 (lemmaFindConcatSeparationEquivalentToExists!1432 (regOne!30798 r!7292) (regTwo!30798 r!7292) s!2326))))

(declare-fun b!5393362 () Bool)

(declare-fun res!2291907 () Bool)

(assert (=> b!5393362 (=> res!2291907 e!3344618)))

(assert (=> b!5393362 (= res!2291907 (or ((_ is Concat!23988) (regOne!30798 r!7292)) (not ((_ is Star!15143) (regOne!30798 r!7292)))))))

(declare-fun res!2291894 () Bool)

(declare-fun e!3344634 () Bool)

(assert (=> start!566694 (=> (not res!2291894) (not e!3344634))))

(declare-fun validRegex!6879 (Regex!15143) Bool)

(assert (=> start!566694 (= res!2291894 (validRegex!6879 r!7292))))

(assert (=> start!566694 e!3344634))

(assert (=> start!566694 e!3344616))

(declare-fun condSetEmpty!35051 () Bool)

(assert (=> start!566694 (= condSetEmpty!35051 (= z!1189 ((as const (Array Context!9054 Bool)) false)))))

(declare-fun setRes!35051 () Bool)

(assert (=> start!566694 setRes!35051))

(assert (=> start!566694 e!3344619))

(declare-fun e!3344635 () Bool)

(assert (=> start!566694 e!3344635))

(declare-fun b!5393363 () Bool)

(assert (=> b!5393363 (= e!3344622 (not (matchZipper!1387 lt!2197488 (t!374953 s!2326))))))

(declare-fun b!5393364 () Bool)

(declare-fun Unit!154097 () Unit!154094)

(assert (=> b!5393364 (= e!3344624 Unit!154097)))

(declare-fun lt!2197471 () Unit!154094)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!380 ((InoxSet Context!9054) (InoxSet Context!9054) List!61730) Unit!154094)

(assert (=> b!5393364 (= lt!2197471 (lemmaZipperConcatMatchesSameAsBothZippers!380 lt!2197472 lt!2197488 (t!374953 s!2326)))))

(declare-fun res!2291902 () Bool)

(assert (=> b!5393364 (= res!2291902 (matchZipper!1387 lt!2197472 (t!374953 s!2326)))))

(declare-fun e!3344626 () Bool)

(assert (=> b!5393364 (=> res!2291902 e!3344626)))

(assert (=> b!5393364 (= (matchZipper!1387 ((_ map or) lt!2197472 lt!2197488) (t!374953 s!2326)) e!3344626)))

(declare-fun setElem!35051 () Context!9054)

(declare-fun setNonEmpty!35051 () Bool)

(declare-fun tp!1493181 () Bool)

(assert (=> setNonEmpty!35051 (= setRes!35051 (and tp!1493181 (inv!81104 setElem!35051) e!3344633))))

(declare-fun setRest!35051 () (InoxSet Context!9054))

(assert (=> setNonEmpty!35051 (= z!1189 ((_ map or) (store ((as const (Array Context!9054 Bool)) false) setElem!35051 true) setRest!35051))))

(declare-fun b!5393365 () Bool)

(declare-fun tp!1493183 () Bool)

(declare-fun tp!1493180 () Bool)

(assert (=> b!5393365 (= e!3344616 (and tp!1493183 tp!1493180))))

(declare-fun b!5393366 () Bool)

(declare-fun tp!1493188 () Bool)

(assert (=> b!5393366 (= e!3344623 tp!1493188)))

(declare-fun b!5393367 () Bool)

(declare-fun e!3344621 () Bool)

(assert (=> b!5393367 (= e!3344621 e!3344636)))

(declare-fun res!2291897 () Bool)

(assert (=> b!5393367 (=> res!2291897 e!3344636)))

(assert (=> b!5393367 (= res!2291897 lt!2197467)))

(declare-fun lt!2197491 () Regex!15143)

(assert (=> b!5393367 (= (matchR!7328 lt!2197491 s!2326) (matchRSpec!2246 lt!2197491 s!2326))))

(declare-fun lt!2197497 () Unit!154094)

(assert (=> b!5393367 (= lt!2197497 (mainMatchTheorem!2246 lt!2197491 s!2326))))

(declare-fun b!5393368 () Bool)

(declare-fun e!3344628 () Bool)

(declare-fun e!3344630 () Bool)

(assert (=> b!5393368 (= e!3344628 e!3344630)))

(declare-fun res!2291900 () Bool)

(assert (=> b!5393368 (=> res!2291900 e!3344630)))

(declare-fun lt!2197473 () (InoxSet Context!9054))

(declare-fun lt!2197485 () Bool)

(assert (=> b!5393368 (= res!2291900 (not (= lt!2197485 (matchZipper!1387 lt!2197473 (t!374953 s!2326)))))))

(declare-fun lt!2197481 () (InoxSet Context!9054))

(assert (=> b!5393368 (= lt!2197485 (matchZipper!1387 lt!2197481 s!2326))))

(declare-fun e!3344631 () Bool)

(assert (=> b!5393369 (= e!3344617 e!3344631)))

(declare-fun res!2291905 () Bool)

(assert (=> b!5393369 (=> res!2291905 e!3344631)))

(declare-fun lt!2197489 () (InoxSet Context!9054))

(assert (=> b!5393369 (= res!2291905 (not (= lt!2197489 lt!2197481)))))

(declare-fun lt!2197476 () (InoxSet Context!9054))

(declare-fun lt!2197474 () Context!9054)

(declare-fun appendTo!2 ((InoxSet Context!9054) Context!9054) (InoxSet Context!9054))

(assert (=> b!5393369 (= lt!2197489 (appendTo!2 lt!2197476 lt!2197474))))

(declare-fun lt!2197486 () List!61728)

(declare-fun lambda!280276 () Int)

(declare-fun map!14099 ((InoxSet Context!9054) Int) (InoxSet Context!9054))

(declare-fun ++!13462 (List!61728 List!61728) List!61728)

(assert (=> b!5393369 (= (map!14099 lt!2197476 lambda!280276) (store ((as const (Array Context!9054 Bool)) false) (Context!9055 (++!13462 (Cons!61604 (reg!15472 (regOne!30798 r!7292)) Nil!61604) lt!2197486)) true))))

(declare-fun lt!2197495 () Unit!154094)

(declare-fun lambda!280277 () Int)

(declare-fun lemmaConcatPreservesForall!168 (List!61728 List!61728 Int) Unit!154094)

(assert (=> b!5393369 (= lt!2197495 (lemmaConcatPreservesForall!168 (Cons!61604 (reg!15472 (regOne!30798 r!7292)) Nil!61604) lt!2197486 lambda!280277))))

(declare-fun lt!2197498 () Context!9054)

(declare-fun lt!2197487 () Unit!154094)

(declare-fun lemmaMapOnSingletonSet!2 ((InoxSet Context!9054) Context!9054 Int) Unit!154094)

(assert (=> b!5393369 (= lt!2197487 (lemmaMapOnSingletonSet!2 lt!2197476 lt!2197498 lambda!280276))))

(declare-fun b!5393370 () Bool)

(assert (=> b!5393370 (= e!3344631 true)))

(declare-fun lt!2197483 () Bool)

(assert (=> b!5393370 (= lt!2197483 (matchZipper!1387 lt!2197489 s!2326))))

(declare-fun setIsEmpty!35051 () Bool)

(assert (=> setIsEmpty!35051 setRes!35051))

(declare-fun b!5393371 () Bool)

(declare-fun res!2291903 () Bool)

(assert (=> b!5393371 (=> res!2291903 e!3344620)))

(declare-fun isEmpty!33605 (List!61728) Bool)

(assert (=> b!5393371 (= res!2291903 (isEmpty!33605 (t!374951 (exprs!5027 (h!68053 zl!343)))))))

(declare-fun b!5393372 () Bool)

(assert (=> b!5393372 (= e!3344626 (matchZipper!1387 lt!2197488 (t!374953 s!2326)))))

(declare-fun b!5393373 () Bool)

(declare-fun res!2291898 () Bool)

(assert (=> b!5393373 (=> res!2291898 e!3344630)))

(declare-fun lt!2197501 () Regex!15143)

(assert (=> b!5393373 (= res!2291898 (not (= lt!2197501 r!7292)))))

(declare-fun b!5393374 () Bool)

(declare-fun res!2291915 () Bool)

(assert (=> b!5393374 (=> res!2291915 e!3344614)))

(declare-fun generalisedUnion!1072 (List!61728) Regex!15143)

(declare-fun unfocusZipperList!585 (List!61729) List!61728)

(assert (=> b!5393374 (= res!2291915 (not (= r!7292 (generalisedUnion!1072 (unfocusZipperList!585 zl!343)))))))

(declare-fun b!5393375 () Bool)

(declare-fun tp_is_empty!39539 () Bool)

(declare-fun tp!1493182 () Bool)

(assert (=> b!5393375 (= e!3344635 (and tp_is_empty!39539 tp!1493182))))

(declare-fun b!5393376 () Bool)

(declare-fun res!2291891 () Bool)

(assert (=> b!5393376 (=> res!2291891 e!3344617)))

(assert (=> b!5393376 (= res!2291891 (or (not lt!2197469) (not lt!2197485)))))

(declare-fun b!5393377 () Bool)

(declare-fun tp!1493187 () Bool)

(assert (=> b!5393377 (= e!3344616 tp!1493187)))

(declare-fun b!5393378 () Bool)

(declare-fun e!3344627 () Bool)

(declare-fun e!3344632 () Bool)

(assert (=> b!5393378 (= e!3344627 e!3344632)))

(declare-fun res!2291892 () Bool)

(assert (=> b!5393378 (=> res!2291892 e!3344632)))

(declare-fun lt!2197479 () Context!9054)

(declare-fun unfocusZipper!885 (List!61729) Regex!15143)

(assert (=> b!5393378 (= res!2291892 (not (= (unfocusZipper!885 (Cons!61605 lt!2197479 Nil!61605)) lt!2197491)))))

(declare-fun lt!2197475 () Regex!15143)

(assert (=> b!5393378 (= lt!2197491 (Concat!23988 (reg!15472 (regOne!30798 r!7292)) lt!2197475))))

(declare-fun b!5393379 () Bool)

(assert (=> b!5393379 (= e!3344634 e!3344615)))

(declare-fun res!2291910 () Bool)

(assert (=> b!5393379 (=> (not res!2291910) (not e!3344615))))

(assert (=> b!5393379 (= res!2291910 (= r!7292 lt!2197501))))

(assert (=> b!5393379 (= lt!2197501 (unfocusZipper!885 zl!343))))

(declare-fun b!5393380 () Bool)

(declare-fun e!3344629 () Bool)

(assert (=> b!5393380 (= e!3344629 e!3344628)))

(declare-fun res!2291895 () Bool)

(assert (=> b!5393380 (=> res!2291895 e!3344628)))

(declare-fun lt!2197466 () (InoxSet Context!9054))

(assert (=> b!5393380 (= res!2291895 (not (= lt!2197473 lt!2197466)))))

(assert (=> b!5393380 (= (flatMap!870 lt!2197481 lambda!280275) (derivationStepZipperUp!515 lt!2197479 (h!68054 s!2326)))))

(declare-fun lt!2197502 () Unit!154094)

(assert (=> b!5393380 (= lt!2197502 (lemmaFlatMapOnSingletonSet!402 lt!2197481 lt!2197479 lambda!280275))))

(declare-fun lt!2197490 () (InoxSet Context!9054))

(assert (=> b!5393380 (= lt!2197490 (derivationStepZipperUp!515 lt!2197479 (h!68054 s!2326)))))

(declare-fun derivationStepZipper!1382 ((InoxSet Context!9054) C!30556) (InoxSet Context!9054))

(assert (=> b!5393380 (= lt!2197473 (derivationStepZipper!1382 lt!2197481 (h!68054 s!2326)))))

(assert (=> b!5393380 (= lt!2197481 (store ((as const (Array Context!9054 Bool)) false) lt!2197479 true))))

(assert (=> b!5393380 (= lt!2197479 (Context!9055 (Cons!61604 (reg!15472 (regOne!30798 r!7292)) lt!2197486)))))

(declare-fun b!5393381 () Bool)

(assert (=> b!5393381 (= e!3344632 e!3344621)))

(declare-fun res!2291901 () Bool)

(assert (=> b!5393381 (=> res!2291901 e!3344621)))

(assert (=> b!5393381 (= res!2291901 (not (= (unfocusZipper!885 (Cons!61605 lt!2197498 Nil!61605)) (reg!15472 (regOne!30798 r!7292)))))))

(declare-fun lt!2197500 () (InoxSet Context!9054))

(assert (=> b!5393381 (= (flatMap!870 lt!2197500 lambda!280275) (derivationStepZipperUp!515 lt!2197474 (h!68054 s!2326)))))

(declare-fun lt!2197468 () Unit!154094)

(assert (=> b!5393381 (= lt!2197468 (lemmaFlatMapOnSingletonSet!402 lt!2197500 lt!2197474 lambda!280275))))

(assert (=> b!5393381 (= (flatMap!870 lt!2197476 lambda!280275) (derivationStepZipperUp!515 lt!2197498 (h!68054 s!2326)))))

(declare-fun lt!2197482 () Unit!154094)

(assert (=> b!5393381 (= lt!2197482 (lemmaFlatMapOnSingletonSet!402 lt!2197476 lt!2197498 lambda!280275))))

(declare-fun lt!2197477 () (InoxSet Context!9054))

(assert (=> b!5393381 (= lt!2197477 (derivationStepZipperUp!515 lt!2197474 (h!68054 s!2326)))))

(declare-fun lt!2197493 () (InoxSet Context!9054))

(assert (=> b!5393381 (= lt!2197493 (derivationStepZipperUp!515 lt!2197498 (h!68054 s!2326)))))

(assert (=> b!5393381 (= lt!2197500 (store ((as const (Array Context!9054 Bool)) false) lt!2197474 true))))

(assert (=> b!5393381 (= lt!2197476 (store ((as const (Array Context!9054 Bool)) false) lt!2197498 true))))

(assert (=> b!5393381 (= lt!2197498 (Context!9055 (Cons!61604 (reg!15472 (regOne!30798 r!7292)) Nil!61604)))))

(declare-fun b!5393382 () Bool)

(declare-fun res!2291914 () Bool)

(assert (=> b!5393382 (=> res!2291914 e!3344614)))

(declare-fun isEmpty!33606 (List!61729) Bool)

(assert (=> b!5393382 (= res!2291914 (not (isEmpty!33606 (t!374952 zl!343))))))

(declare-fun b!5393383 () Bool)

(assert (=> b!5393383 (= e!3344618 e!3344629)))

(declare-fun res!2291913 () Bool)

(assert (=> b!5393383 (=> res!2291913 e!3344629)))

(assert (=> b!5393383 (= res!2291913 (not (= lt!2197472 lt!2197466)))))

(assert (=> b!5393383 (= lt!2197466 (derivationStepZipperDown!591 (reg!15472 (regOne!30798 r!7292)) lt!2197474 (h!68054 s!2326)))))

(assert (=> b!5393383 (= lt!2197474 (Context!9055 lt!2197486))))

(declare-fun lt!2197492 () Regex!15143)

(assert (=> b!5393383 (= lt!2197486 (Cons!61604 lt!2197492 (t!374951 (exprs!5027 (h!68053 zl!343)))))))

(assert (=> b!5393383 (= lt!2197492 (Star!15143 (reg!15472 (regOne!30798 r!7292))))))

(declare-fun b!5393384 () Bool)

(assert (=> b!5393384 (= e!3344616 tp_is_empty!39539)))

(declare-fun b!5393385 () Bool)

(declare-fun res!2291906 () Bool)

(assert (=> b!5393385 (=> (not res!2291906) (not e!3344634))))

(declare-fun toList!8927 ((InoxSet Context!9054)) List!61729)

(assert (=> b!5393385 (= res!2291906 (= (toList!8927 z!1189) zl!343))))

(declare-fun b!5393386 () Bool)

(declare-fun res!2291911 () Bool)

(assert (=> b!5393386 (=> res!2291911 e!3344614)))

(declare-fun generalisedConcat!812 (List!61728) Regex!15143)

(assert (=> b!5393386 (= res!2291911 (not (= r!7292 (generalisedConcat!812 (exprs!5027 (h!68053 zl!343))))))))

(declare-fun b!5393387 () Bool)

(assert (=> b!5393387 (= e!3344630 e!3344627)))

(declare-fun res!2291918 () Bool)

(assert (=> b!5393387 (=> res!2291918 e!3344627)))

(assert (=> b!5393387 (= res!2291918 (not (= r!7292 lt!2197475)))))

(assert (=> b!5393387 (= lt!2197475 (Concat!23988 lt!2197492 (regTwo!30798 r!7292)))))

(declare-fun b!5393388 () Bool)

(declare-fun res!2291912 () Bool)

(assert (=> b!5393388 (=> res!2291912 e!3344621)))

(assert (=> b!5393388 (= res!2291912 (not (= (unfocusZipper!885 (Cons!61605 lt!2197474 Nil!61605)) lt!2197475)))))

(declare-fun b!5393389 () Bool)

(declare-fun res!2291917 () Bool)

(assert (=> b!5393389 (=> res!2291917 e!3344636)))

(assert (=> b!5393389 (= res!2291917 (not (matchZipper!1387 z!1189 s!2326)))))

(assert (= (and start!566694 res!2291894) b!5393385))

(assert (= (and b!5393385 res!2291906) b!5393379))

(assert (= (and b!5393379 res!2291910) b!5393350))

(assert (= (and b!5393350 (not res!2291896)) b!5393382))

(assert (= (and b!5393382 (not res!2291914)) b!5393386))

(assert (= (and b!5393386 (not res!2291911)) b!5393360))

(assert (= (and b!5393360 (not res!2291908)) b!5393374))

(assert (= (and b!5393374 (not res!2291915)) b!5393349))

(assert (= (and b!5393349 (not res!2291890)) b!5393361))

(assert (= (and b!5393361 (not res!2291904)) b!5393371))

(assert (= (and b!5393371 (not res!2291903)) b!5393355))

(assert (= (and b!5393355 c!939914) b!5393364))

(assert (= (and b!5393355 (not c!939914)) b!5393352))

(assert (= (and b!5393364 (not res!2291902)) b!5393372))

(assert (= (and b!5393355 (not res!2291919)) b!5393353))

(assert (= (and b!5393353 res!2291889) b!5393357))

(assert (= (and b!5393353 (not res!2291893)) b!5393362))

(assert (= (and b!5393362 (not res!2291907)) b!5393383))

(assert (= (and b!5393383 (not res!2291913)) b!5393380))

(assert (= (and b!5393380 (not res!2291895)) b!5393368))

(assert (= (and b!5393368 (not res!2291900)) b!5393373))

(assert (= (and b!5393373 (not res!2291898)) b!5393387))

(assert (= (and b!5393387 (not res!2291918)) b!5393378))

(assert (= (and b!5393378 (not res!2291892)) b!5393381))

(assert (= (and b!5393381 (not res!2291901)) b!5393388))

(assert (= (and b!5393388 (not res!2291912)) b!5393367))

(assert (= (and b!5393367 (not res!2291897)) b!5393389))

(assert (= (and b!5393389 (not res!2291917)) b!5393359))

(assert (= (and b!5393359 (not res!2291916)) b!5393356))

(assert (= (and b!5393356 res!2291899) b!5393363))

(assert (= (and b!5393356 (not res!2291909)) b!5393376))

(assert (= (and b!5393376 (not res!2291891)) b!5393369))

(assert (= (and b!5393369 (not res!2291905)) b!5393370))

(assert (= (and start!566694 ((_ is ElementMatch!15143) r!7292)) b!5393384))

(assert (= (and start!566694 ((_ is Concat!23988) r!7292)) b!5393365))

(assert (= (and start!566694 ((_ is Star!15143) r!7292)) b!5393377))

(assert (= (and start!566694 ((_ is Union!15143) r!7292)) b!5393351))

(assert (= (and start!566694 condSetEmpty!35051) setIsEmpty!35051))

(assert (= (and start!566694 (not condSetEmpty!35051)) setNonEmpty!35051))

(assert (= setNonEmpty!35051 b!5393358))

(assert (= b!5393354 b!5393366))

(assert (= (and start!566694 ((_ is Cons!61605) zl!343)) b!5393354))

(assert (= (and start!566694 ((_ is Cons!61606) s!2326)) b!5393375))

(declare-fun m!6418618 () Bool)

(assert (=> b!5393380 m!6418618))

(declare-fun m!6418620 () Bool)

(assert (=> b!5393380 m!6418620))

(declare-fun m!6418622 () Bool)

(assert (=> b!5393380 m!6418622))

(declare-fun m!6418624 () Bool)

(assert (=> b!5393380 m!6418624))

(declare-fun m!6418626 () Bool)

(assert (=> b!5393380 m!6418626))

(declare-fun m!6418628 () Bool)

(assert (=> b!5393372 m!6418628))

(declare-fun m!6418630 () Bool)

(assert (=> b!5393364 m!6418630))

(declare-fun m!6418632 () Bool)

(assert (=> b!5393364 m!6418632))

(declare-fun m!6418634 () Bool)

(assert (=> b!5393364 m!6418634))

(declare-fun m!6418636 () Bool)

(assert (=> b!5393385 m!6418636))

(assert (=> b!5393363 m!6418628))

(declare-fun m!6418638 () Bool)

(assert (=> b!5393379 m!6418638))

(declare-fun m!6418640 () Bool)

(assert (=> setNonEmpty!35051 m!6418640))

(declare-fun m!6418642 () Bool)

(assert (=> b!5393355 m!6418642))

(declare-fun m!6418644 () Bool)

(assert (=> b!5393355 m!6418644))

(declare-fun m!6418646 () Bool)

(assert (=> b!5393355 m!6418646))

(declare-fun m!6418648 () Bool)

(assert (=> b!5393355 m!6418648))

(declare-fun m!6418650 () Bool)

(assert (=> b!5393355 m!6418650))

(declare-fun m!6418652 () Bool)

(assert (=> b!5393355 m!6418652))

(declare-fun m!6418654 () Bool)

(assert (=> b!5393355 m!6418654))

(declare-fun m!6418656 () Bool)

(assert (=> b!5393368 m!6418656))

(declare-fun m!6418658 () Bool)

(assert (=> b!5393368 m!6418658))

(declare-fun m!6418660 () Bool)

(assert (=> b!5393378 m!6418660))

(declare-fun m!6418662 () Bool)

(assert (=> b!5393381 m!6418662))

(declare-fun m!6418664 () Bool)

(assert (=> b!5393381 m!6418664))

(declare-fun m!6418666 () Bool)

(assert (=> b!5393381 m!6418666))

(declare-fun m!6418668 () Bool)

(assert (=> b!5393381 m!6418668))

(declare-fun m!6418670 () Bool)

(assert (=> b!5393381 m!6418670))

(declare-fun m!6418672 () Bool)

(assert (=> b!5393381 m!6418672))

(declare-fun m!6418674 () Bool)

(assert (=> b!5393381 m!6418674))

(declare-fun m!6418676 () Bool)

(assert (=> b!5393381 m!6418676))

(declare-fun m!6418678 () Bool)

(assert (=> b!5393381 m!6418678))

(declare-fun m!6418680 () Bool)

(assert (=> b!5393388 m!6418680))

(declare-fun m!6418682 () Bool)

(assert (=> b!5393370 m!6418682))

(declare-fun m!6418684 () Bool)

(assert (=> b!5393382 m!6418684))

(declare-fun m!6418686 () Bool)

(assert (=> b!5393386 m!6418686))

(declare-fun m!6418688 () Bool)

(assert (=> b!5393350 m!6418688))

(declare-fun m!6418690 () Bool)

(assert (=> b!5393350 m!6418690))

(declare-fun m!6418692 () Bool)

(assert (=> b!5393350 m!6418692))

(declare-fun m!6418694 () Bool)

(assert (=> b!5393383 m!6418694))

(declare-fun m!6418696 () Bool)

(assert (=> b!5393374 m!6418696))

(assert (=> b!5393374 m!6418696))

(declare-fun m!6418698 () Bool)

(assert (=> b!5393374 m!6418698))

(declare-fun m!6418700 () Bool)

(assert (=> b!5393371 m!6418700))

(declare-fun m!6418702 () Bool)

(assert (=> b!5393369 m!6418702))

(declare-fun m!6418704 () Bool)

(assert (=> b!5393369 m!6418704))

(declare-fun m!6418706 () Bool)

(assert (=> b!5393369 m!6418706))

(declare-fun m!6418708 () Bool)

(assert (=> b!5393369 m!6418708))

(declare-fun m!6418710 () Bool)

(assert (=> b!5393369 m!6418710))

(declare-fun m!6418712 () Bool)

(assert (=> b!5393369 m!6418712))

(declare-fun m!6418714 () Bool)

(assert (=> b!5393389 m!6418714))

(declare-fun m!6418716 () Bool)

(assert (=> b!5393367 m!6418716))

(declare-fun m!6418718 () Bool)

(assert (=> b!5393367 m!6418718))

(declare-fun m!6418720 () Bool)

(assert (=> b!5393367 m!6418720))

(declare-fun m!6418722 () Bool)

(assert (=> b!5393354 m!6418722))

(declare-fun m!6418724 () Bool)

(assert (=> b!5393357 m!6418724))

(assert (=> b!5393356 m!6418632))

(declare-fun m!6418726 () Bool)

(assert (=> b!5393361 m!6418726))

(assert (=> b!5393361 m!6418726))

(declare-fun m!6418728 () Bool)

(assert (=> b!5393361 m!6418728))

(declare-fun m!6418730 () Bool)

(assert (=> b!5393361 m!6418730))

(declare-fun m!6418732 () Bool)

(assert (=> b!5393361 m!6418732))

(declare-fun m!6418734 () Bool)

(assert (=> b!5393361 m!6418734))

(assert (=> b!5393361 m!6418728))

(declare-fun m!6418736 () Bool)

(assert (=> b!5393361 m!6418736))

(declare-fun m!6418738 () Bool)

(assert (=> start!566694 m!6418738))

(check-sat (not b!5393354) (not b!5393389) (not b!5393363) (not b!5393356) (not b!5393377) (not b!5393382) (not b!5393351) (not b!5393350) (not b!5393372) (not b!5393386) (not b!5393371) (not b!5393364) (not b!5393366) (not b!5393385) (not b!5393374) (not b!5393361) (not setNonEmpty!35051) (not b!5393383) (not b!5393365) (not b!5393357) (not b!5393367) (not b!5393368) tp_is_empty!39539 (not b!5393369) (not b!5393381) (not b!5393358) (not b!5393380) (not b!5393379) (not start!566694) (not b!5393355) (not b!5393388) (not b!5393378) (not b!5393370) (not b!5393375))
(check-sat)
