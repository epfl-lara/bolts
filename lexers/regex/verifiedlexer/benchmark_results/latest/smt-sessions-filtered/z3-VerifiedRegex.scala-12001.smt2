; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!672462 () Bool)

(assert start!672462)

(declare-fun b!6994002 () Bool)

(assert (=> b!6994002 true))

(declare-fun b!6993993 () Bool)

(assert (=> b!6993993 true))

(declare-fun b!6993987 () Bool)

(assert (=> b!6993987 true))

(declare-fun bs!1862756 () Bool)

(declare-fun b!6993990 () Bool)

(assert (= bs!1862756 (and b!6993990 b!6994002)))

(declare-fun lambda!403606 () Int)

(declare-fun lambda!403602 () Int)

(assert (=> bs!1862756 (not (= lambda!403606 lambda!403602))))

(declare-fun b!6993980 () Bool)

(declare-fun e!4203901 () Bool)

(declare-fun e!4203888 () Bool)

(assert (=> b!6993980 (= e!4203901 e!4203888)))

(declare-fun res!2852792 () Bool)

(assert (=> b!6993980 (=> res!2852792 e!4203888)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!34768 0))(
  ( (C!34769 (val!27086 Int)) )
))
(declare-datatypes ((Regex!17249 0))(
  ( (ElementMatch!17249 (c!1297540 C!34768)) (Concat!26094 (regOne!35010 Regex!17249) (regTwo!35010 Regex!17249)) (EmptyExpr!17249) (Star!17249 (reg!17578 Regex!17249)) (EmptyLang!17249) (Union!17249 (regOne!35011 Regex!17249) (regTwo!35011 Regex!17249)) )
))
(declare-datatypes ((List!67292 0))(
  ( (Nil!67168) (Cons!67168 (h!73616 Regex!17249) (t!381039 List!67292)) )
))
(declare-datatypes ((Context!12490 0))(
  ( (Context!12491 (exprs!6745 List!67292)) )
))
(declare-fun lt!2491328 () (InoxSet Context!12490))

(declare-datatypes ((List!67293 0))(
  ( (Nil!67169) (Cons!67169 (h!73617 C!34768) (t!381040 List!67293)) )
))
(declare-fun s!7408 () List!67293)

(declare-fun matchZipper!2789 ((InoxSet Context!12490) List!67293) Bool)

(assert (=> b!6993980 (= res!2852792 (not (matchZipper!2789 lt!2491328 s!7408)))))

(declare-fun lambda!403604 () Int)

(declare-fun lt!2491362 () List!67292)

(declare-datatypes ((Unit!161153 0))(
  ( (Unit!161154) )
))
(declare-fun lt!2491339 () Unit!161153)

(declare-fun ct2!306 () Context!12490)

(declare-fun lemmaConcatPreservesForall!585 (List!67292 List!67292 Int) Unit!161153)

(assert (=> b!6993980 (= lt!2491339 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(declare-fun b!6993981 () Bool)

(declare-fun e!4203887 () Bool)

(declare-fun e!4203896 () Bool)

(assert (=> b!6993981 (= e!4203887 e!4203896)))

(declare-fun res!2852796 () Bool)

(assert (=> b!6993981 (=> res!2852796 e!4203896)))

(declare-fun e!4203886 () Bool)

(assert (=> b!6993981 (= res!2852796 e!4203886)))

(declare-fun res!2852794 () Bool)

(assert (=> b!6993981 (=> (not res!2852794) (not e!4203886))))

(declare-fun lt!2491334 () Bool)

(declare-fun lt!2491348 () Bool)

(assert (=> b!6993981 (= res!2852794 (not (= lt!2491334 lt!2491348)))))

(declare-fun lt!2491370 () (InoxSet Context!12490))

(assert (=> b!6993981 (= lt!2491334 (matchZipper!2789 lt!2491370 (t!381040 s!7408)))))

(declare-fun lt!2491376 () Unit!161153)

(assert (=> b!6993981 (= lt!2491376 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(declare-fun lt!2491349 () (InoxSet Context!12490))

(declare-fun e!4203902 () Bool)

(assert (=> b!6993981 (= (matchZipper!2789 lt!2491349 (t!381040 s!7408)) e!4203902)))

(declare-fun res!2852811 () Bool)

(assert (=> b!6993981 (=> res!2852811 e!4203902)))

(assert (=> b!6993981 (= res!2852811 lt!2491348)))

(declare-fun lt!2491357 () (InoxSet Context!12490))

(assert (=> b!6993981 (= lt!2491348 (matchZipper!2789 lt!2491357 (t!381040 s!7408)))))

(declare-fun lt!2491378 () (InoxSet Context!12490))

(declare-fun lt!2491379 () Unit!161153)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1422 ((InoxSet Context!12490) (InoxSet Context!12490) List!67293) Unit!161153)

(assert (=> b!6993981 (= lt!2491379 (lemmaZipperConcatMatchesSameAsBothZippers!1422 lt!2491357 lt!2491378 (t!381040 s!7408)))))

(declare-fun lt!2491358 () Unit!161153)

(assert (=> b!6993981 (= lt!2491358 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(declare-fun lt!2491350 () Unit!161153)

(assert (=> b!6993981 (= lt!2491350 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(declare-fun b!6993982 () Bool)

(declare-fun e!4203900 () Bool)

(declare-fun tp!1930343 () Bool)

(assert (=> b!6993982 (= e!4203900 tp!1930343)))

(declare-fun b!6993984 () Bool)

(declare-fun res!2852790 () Bool)

(declare-fun e!4203899 () Bool)

(assert (=> b!6993984 (=> res!2852790 e!4203899)))

(declare-fun lt!2491342 () Context!12490)

(declare-fun lt!2491344 () (InoxSet Context!12490))

(assert (=> b!6993984 (= res!2852790 (not (select lt!2491344 lt!2491342)))))

(declare-fun b!6993985 () Bool)

(declare-fun e!4203893 () Bool)

(declare-fun e!4203890 () Bool)

(assert (=> b!6993985 (= e!4203893 e!4203890)))

(declare-fun res!2852795 () Bool)

(assert (=> b!6993985 (=> res!2852795 e!4203890)))

(declare-fun lt!2491333 () (InoxSet Context!12490))

(declare-datatypes ((tuple2!67844 0))(
  ( (tuple2!67845 (_1!37225 List!67293) (_2!37225 List!67293)) )
))
(declare-fun lt!2491352 () tuple2!67844)

(assert (=> b!6993985 (= res!2852795 (not (matchZipper!2789 lt!2491333 (_1!37225 lt!2491352))))))

(declare-datatypes ((Option!16754 0))(
  ( (None!16753) (Some!16753 (v!53025 tuple2!67844)) )
))
(declare-fun lt!2491359 () Option!16754)

(declare-fun get!23543 (Option!16754) tuple2!67844)

(assert (=> b!6993985 (= lt!2491352 (get!23543 lt!2491359))))

(declare-fun isDefined!13455 (Option!16754) Bool)

(assert (=> b!6993985 (isDefined!13455 lt!2491359)))

(declare-fun lt!2491336 () (InoxSet Context!12490))

(declare-fun findConcatSeparationZippers!270 ((InoxSet Context!12490) (InoxSet Context!12490) List!67293 List!67293 List!67293) Option!16754)

(assert (=> b!6993985 (= lt!2491359 (findConcatSeparationZippers!270 lt!2491333 lt!2491336 Nil!67169 s!7408 s!7408))))

(assert (=> b!6993985 (= lt!2491336 (store ((as const (Array Context!12490 Bool)) false) ct2!306 true))))

(declare-fun lt!2491375 () Unit!161153)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!270 ((InoxSet Context!12490) Context!12490 List!67293) Unit!161153)

(assert (=> b!6993985 (= lt!2491375 (lemmaConcatZipperMatchesStringThenFindConcatDefined!270 lt!2491333 ct2!306 s!7408))))

(declare-fun b!6993986 () Bool)

(declare-fun e!4203891 () Bool)

(assert (=> b!6993986 (= e!4203896 e!4203891)))

(declare-fun res!2852801 () Bool)

(assert (=> b!6993986 (=> res!2852801 e!4203891)))

(assert (=> b!6993986 (= res!2852801 (not (matchZipper!2789 lt!2491378 (t!381040 s!7408))))))

(declare-fun lt!2491327 () Unit!161153)

(assert (=> b!6993986 (= lt!2491327 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(declare-fun e!4203892 () Bool)

(declare-fun e!4203903 () Bool)

(assert (=> b!6993987 (= e!4203892 e!4203903)))

(declare-fun res!2852799 () Bool)

(assert (=> b!6993987 (=> res!2852799 e!4203903)))

(declare-fun lt!2491364 () (InoxSet Context!12490))

(declare-fun derivationStepZipper!2729 ((InoxSet Context!12490) C!34768) (InoxSet Context!12490))

(assert (=> b!6993987 (= res!2852799 (not (= (derivationStepZipper!2729 lt!2491364 (h!73617 s!7408)) lt!2491370)))))

(declare-fun lambda!403605 () Int)

(declare-fun lt!2491332 () Context!12490)

(declare-fun flatMap!2235 ((InoxSet Context!12490) Int) (InoxSet Context!12490))

(declare-fun derivationStepZipperUp!1899 (Context!12490 C!34768) (InoxSet Context!12490))

(assert (=> b!6993987 (= (flatMap!2235 lt!2491364 lambda!403605) (derivationStepZipperUp!1899 lt!2491332 (h!73617 s!7408)))))

(declare-fun lt!2491354 () Unit!161153)

(declare-fun lemmaFlatMapOnSingletonSet!1750 ((InoxSet Context!12490) Context!12490 Int) Unit!161153)

(assert (=> b!6993987 (= lt!2491354 (lemmaFlatMapOnSingletonSet!1750 lt!2491364 lt!2491332 lambda!403605))))

(assert (=> b!6993987 (= lt!2491370 (derivationStepZipperUp!1899 lt!2491332 (h!73617 s!7408)))))

(declare-fun lt!2491331 () Unit!161153)

(declare-fun lt!2491372 () Context!12490)

(assert (=> b!6993987 (= lt!2491331 (lemmaConcatPreservesForall!585 (exprs!6745 lt!2491372) (exprs!6745 ct2!306) lambda!403604))))

(declare-fun b!6993988 () Bool)

(declare-fun e!4203895 () Bool)

(assert (=> b!6993988 (= e!4203890 e!4203895)))

(declare-fun res!2852798 () Bool)

(assert (=> b!6993988 (=> res!2852798 e!4203895)))

(declare-fun lt!2491355 () Context!12490)

(declare-fun nullableContext!46 (Context!12490) Bool)

(assert (=> b!6993988 (= res!2852798 (not (nullableContext!46 lt!2491355)))))

(declare-fun lt!2491366 () Context!12490)

(declare-fun getWitness!1158 ((InoxSet Context!12490) Int) Context!12490)

(assert (=> b!6993988 (= lt!2491366 (getWitness!1158 lt!2491333 lambda!403606))))

(declare-fun b!6993989 () Bool)

(declare-fun e!4203897 () Bool)

(assert (=> b!6993989 (= e!4203903 e!4203897)))

(declare-fun res!2852789 () Bool)

(assert (=> b!6993989 (=> res!2852789 e!4203897)))

(declare-fun nullable!7009 (Regex!17249) Bool)

(assert (=> b!6993989 (= res!2852789 (not (nullable!7009 (h!73616 (exprs!6745 lt!2491372)))))))

(assert (=> b!6993989 (= lt!2491355 (Context!12491 lt!2491362))))

(declare-fun tail!13273 (List!67292) List!67292)

(assert (=> b!6993989 (= lt!2491362 (tail!13273 (exprs!6745 lt!2491372)))))

(declare-fun res!2852803 () Bool)

(assert (=> b!6993990 (=> res!2852803 e!4203890)))

(declare-fun exists!3049 ((InoxSet Context!12490) Int) Bool)

(assert (=> b!6993990 (= res!2852803 (not (exists!3049 lt!2491333 lambda!403606)))))

(declare-fun b!6993991 () Bool)

(assert (=> b!6993991 (= e!4203891 e!4203901)))

(declare-fun res!2852807 () Bool)

(assert (=> b!6993991 (=> res!2852807 e!4203901)))

(assert (=> b!6993991 (= res!2852807 (not (= (derivationStepZipper!2729 lt!2491328 (h!73617 s!7408)) lt!2491378)))))

(declare-fun lt!2491335 () Unit!161153)

(assert (=> b!6993991 (= lt!2491335 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(declare-fun lt!2491363 () Unit!161153)

(assert (=> b!6993991 (= lt!2491363 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(declare-fun lt!2491337 () Context!12490)

(assert (=> b!6993991 (= (flatMap!2235 lt!2491328 lambda!403605) (derivationStepZipperUp!1899 lt!2491337 (h!73617 s!7408)))))

(declare-fun lt!2491365 () Unit!161153)

(assert (=> b!6993991 (= lt!2491365 (lemmaFlatMapOnSingletonSet!1750 lt!2491328 lt!2491337 lambda!403605))))

(assert (=> b!6993991 (= lt!2491328 (store ((as const (Array Context!12490 Bool)) false) lt!2491337 true))))

(declare-fun lt!2491343 () Unit!161153)

(assert (=> b!6993991 (= lt!2491343 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(declare-fun lt!2491371 () Unit!161153)

(assert (=> b!6993991 (= lt!2491371 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(declare-fun b!6993992 () Bool)

(assert (=> b!6993992 (= e!4203888 e!4203893)))

(declare-fun res!2852809 () Bool)

(assert (=> b!6993992 (=> res!2852809 e!4203893)))

(declare-fun lt!2491351 () Int)

(declare-fun contextDepthTotal!442 (Context!12490) Int)

(assert (=> b!6993992 (= res!2852809 (<= lt!2491351 (contextDepthTotal!442 lt!2491355)))))

(declare-fun lt!2491377 () Int)

(assert (=> b!6993992 (<= lt!2491351 lt!2491377)))

(declare-datatypes ((List!67294 0))(
  ( (Nil!67170) (Cons!67170 (h!73618 Context!12490) (t!381041 List!67294)) )
))
(declare-fun lt!2491338 () List!67294)

(declare-fun zipperDepthTotal!470 (List!67294) Int)

(assert (=> b!6993992 (= lt!2491377 (zipperDepthTotal!470 lt!2491338))))

(assert (=> b!6993992 (= lt!2491351 (contextDepthTotal!442 lt!2491372))))

(declare-fun lt!2491368 () Unit!161153)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!10 (List!67294 Context!12490) Unit!161153)

(assert (=> b!6993992 (= lt!2491368 (lemmaTotalDepthZipperLargerThanOfAnyContext!10 lt!2491338 lt!2491372))))

(declare-fun z1!570 () (InoxSet Context!12490))

(declare-fun toList!10609 ((InoxSet Context!12490)) List!67294)

(assert (=> b!6993992 (= lt!2491338 (toList!10609 z1!570))))

(declare-fun lt!2491361 () Unit!161153)

(assert (=> b!6993992 (= lt!2491361 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(declare-fun lt!2491346 () Unit!161153)

(assert (=> b!6993992 (= lt!2491346 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(declare-fun lt!2491353 () Unit!161153)

(assert (=> b!6993992 (= lt!2491353 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(assert (=> b!6993992 (= (flatMap!2235 lt!2491333 lambda!403605) (derivationStepZipperUp!1899 lt!2491355 (h!73617 s!7408)))))

(declare-fun lt!2491373 () Unit!161153)

(assert (=> b!6993992 (= lt!2491373 (lemmaFlatMapOnSingletonSet!1750 lt!2491333 lt!2491355 lambda!403605))))

(declare-fun lambda!403603 () Int)

(declare-fun map!15520 ((InoxSet Context!12490) Int) (InoxSet Context!12490))

(declare-fun ++!15199 (List!67292 List!67292) List!67292)

(assert (=> b!6993992 (= (map!15520 lt!2491333 lambda!403603) (store ((as const (Array Context!12490 Bool)) false) (Context!12491 (++!15199 lt!2491362 (exprs!6745 ct2!306))) true))))

(declare-fun lt!2491345 () Unit!161153)

(assert (=> b!6993992 (= lt!2491345 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(declare-fun lt!2491330 () Unit!161153)

(declare-fun lemmaMapOnSingletonSet!314 ((InoxSet Context!12490) Context!12490 Int) Unit!161153)

(assert (=> b!6993992 (= lt!2491330 (lemmaMapOnSingletonSet!314 lt!2491333 lt!2491355 lambda!403603))))

(assert (=> b!6993992 (= lt!2491333 (store ((as const (Array Context!12490 Bool)) false) lt!2491355 true))))

(declare-fun e!4203898 () Bool)

(assert (=> b!6993993 (= e!4203899 e!4203898)))

(declare-fun res!2852812 () Bool)

(assert (=> b!6993993 (=> res!2852812 e!4203898)))

(assert (=> b!6993993 (= res!2852812 (or (not (= lt!2491332 lt!2491342)) (not (select z1!570 lt!2491372))))))

(assert (=> b!6993993 (= lt!2491332 (Context!12491 (++!15199 (exprs!6745 lt!2491372) (exprs!6745 ct2!306))))))

(declare-fun lt!2491347 () Unit!161153)

(assert (=> b!6993993 (= lt!2491347 (lemmaConcatPreservesForall!585 (exprs!6745 lt!2491372) (exprs!6745 ct2!306) lambda!403604))))

(declare-fun mapPost2!104 ((InoxSet Context!12490) Int Context!12490) Context!12490)

(assert (=> b!6993993 (= lt!2491372 (mapPost2!104 z1!570 lambda!403603 lt!2491342))))

(declare-fun b!6993994 () Bool)

(assert (=> b!6993994 (= e!4203898 e!4203892)))

(declare-fun res!2852806 () Bool)

(assert (=> b!6993994 (=> res!2852806 e!4203892)))

(declare-fun lt!2491340 () (InoxSet Context!12490))

(assert (=> b!6993994 (= res!2852806 (not (= lt!2491364 lt!2491340)))))

(assert (=> b!6993994 (= lt!2491364 (store ((as const (Array Context!12490 Bool)) false) lt!2491332 true))))

(declare-fun lt!2491367 () Unit!161153)

(assert (=> b!6993994 (= lt!2491367 (lemmaConcatPreservesForall!585 (exprs!6745 lt!2491372) (exprs!6745 ct2!306) lambda!403604))))

(declare-fun b!6993983 () Bool)

(declare-fun e!4203894 () Bool)

(declare-fun tp!1930341 () Bool)

(assert (=> b!6993983 (= e!4203894 tp!1930341)))

(declare-fun res!2852810 () Bool)

(declare-fun e!4203889 () Bool)

(assert (=> start!672462 (=> (not res!2852810) (not e!4203889))))

(assert (=> start!672462 (= res!2852810 (matchZipper!2789 lt!2491344 s!7408))))

(declare-fun appendTo!370 ((InoxSet Context!12490) Context!12490) (InoxSet Context!12490))

(assert (=> start!672462 (= lt!2491344 (appendTo!370 z1!570 ct2!306))))

(assert (=> start!672462 e!4203889))

(declare-fun condSetEmpty!47949 () Bool)

(assert (=> start!672462 (= condSetEmpty!47949 (= z1!570 ((as const (Array Context!12490 Bool)) false)))))

(declare-fun setRes!47949 () Bool)

(assert (=> start!672462 setRes!47949))

(declare-fun inv!85981 (Context!12490) Bool)

(assert (=> start!672462 (and (inv!85981 ct2!306) e!4203894)))

(declare-fun e!4203904 () Bool)

(assert (=> start!672462 e!4203904))

(declare-fun b!6993995 () Bool)

(declare-fun res!2852797 () Bool)

(assert (=> b!6993995 (=> res!2852797 e!4203896)))

(assert (=> b!6993995 (= res!2852797 (not lt!2491334))))

(declare-fun b!6993996 () Bool)

(declare-fun res!2852800 () Bool)

(assert (=> b!6993996 (=> (not res!2852800) (not e!4203889))))

(get-info :version)

(assert (=> b!6993996 (= res!2852800 ((_ is Cons!67169) s!7408))))

(declare-fun b!6993997 () Bool)

(assert (=> b!6993997 (= e!4203902 (matchZipper!2789 lt!2491378 (t!381040 s!7408)))))

(declare-fun b!6993998 () Bool)

(declare-fun tp_is_empty!43723 () Bool)

(declare-fun tp!1930342 () Bool)

(assert (=> b!6993998 (= e!4203904 (and tp_is_empty!43723 tp!1930342))))

(declare-fun b!6993999 () Bool)

(assert (=> b!6993999 (= e!4203886 (not (matchZipper!2789 lt!2491378 (t!381040 s!7408))))))

(declare-fun lt!2491356 () Unit!161153)

(assert (=> b!6993999 (= lt!2491356 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(declare-fun setElem!47949 () Context!12490)

(declare-fun tp!1930344 () Bool)

(declare-fun setNonEmpty!47949 () Bool)

(assert (=> setNonEmpty!47949 (= setRes!47949 (and tp!1930344 (inv!85981 setElem!47949) e!4203900))))

(declare-fun setRest!47949 () (InoxSet Context!12490))

(assert (=> setNonEmpty!47949 (= z1!570 ((_ map or) (store ((as const (Array Context!12490 Bool)) false) setElem!47949 true) setRest!47949))))

(declare-fun b!6994000 () Bool)

(declare-fun res!2852788 () Bool)

(assert (=> b!6994000 (=> res!2852788 e!4203890)))

(declare-fun isEmpty!39201 (List!67293) Bool)

(assert (=> b!6994000 (= res!2852788 (not (isEmpty!39201 (_1!37225 lt!2491352))))))

(declare-fun b!6994001 () Bool)

(declare-fun res!2852805 () Bool)

(assert (=> b!6994001 (=> res!2852805 e!4203903)))

(declare-fun isEmpty!39202 (List!67292) Bool)

(assert (=> b!6994001 (= res!2852805 (isEmpty!39202 (exprs!6745 lt!2491372)))))

(assert (=> b!6994002 (= e!4203889 (not e!4203899))))

(declare-fun res!2852808 () Bool)

(assert (=> b!6994002 (=> res!2852808 e!4203899)))

(assert (=> b!6994002 (= res!2852808 (not (matchZipper!2789 lt!2491340 s!7408)))))

(assert (=> b!6994002 (= lt!2491340 (store ((as const (Array Context!12490 Bool)) false) lt!2491342 true))))

(assert (=> b!6994002 (= lt!2491342 (getWitness!1158 lt!2491344 lambda!403602))))

(declare-fun lt!2491360 () List!67294)

(declare-fun exists!3050 (List!67294 Int) Bool)

(assert (=> b!6994002 (exists!3050 lt!2491360 lambda!403602)))

(declare-fun lt!2491329 () Unit!161153)

(declare-fun lemmaZipperMatchesExistsMatchingContext!218 (List!67294 List!67293) Unit!161153)

(assert (=> b!6994002 (= lt!2491329 (lemmaZipperMatchesExistsMatchingContext!218 lt!2491360 s!7408))))

(assert (=> b!6994002 (= lt!2491360 (toList!10609 lt!2491344))))

(declare-fun b!6994003 () Bool)

(assert (=> b!6994003 (= e!4203895 true)))

(declare-fun lt!2491341 () Bool)

(assert (=> b!6994003 (= lt!2491341 (nullableContext!46 lt!2491372))))

(declare-fun setIsEmpty!47949 () Bool)

(assert (=> setIsEmpty!47949 setRes!47949))

(declare-fun b!6994004 () Bool)

(declare-fun res!2852793 () Bool)

(assert (=> b!6994004 (=> res!2852793 e!4203903)))

(assert (=> b!6994004 (= res!2852793 (not ((_ is Cons!67168) (exprs!6745 lt!2491372))))))

(declare-fun b!6994005 () Bool)

(declare-fun res!2852787 () Bool)

(assert (=> b!6994005 (=> res!2852787 e!4203893)))

(assert (=> b!6994005 (= res!2852787 (>= (zipperDepthTotal!470 (Cons!67170 lt!2491355 Nil!67170)) lt!2491377))))

(declare-fun b!6994006 () Bool)

(declare-fun res!2852802 () Bool)

(assert (=> b!6994006 (=> res!2852802 e!4203890)))

(declare-fun ++!15200 (List!67293 List!67293) List!67293)

(assert (=> b!6994006 (= res!2852802 (not (= (++!15200 (_1!37225 lt!2491352) (_2!37225 lt!2491352)) s!7408)))))

(declare-fun b!6994007 () Bool)

(declare-fun res!2852804 () Bool)

(assert (=> b!6994007 (=> res!2852804 e!4203890)))

(assert (=> b!6994007 (= res!2852804 (not (matchZipper!2789 lt!2491336 (_2!37225 lt!2491352))))))

(declare-fun b!6994008 () Bool)

(assert (=> b!6994008 (= e!4203897 e!4203887)))

(declare-fun res!2852791 () Bool)

(assert (=> b!6994008 (=> res!2852791 e!4203887)))

(assert (=> b!6994008 (= res!2852791 (not (= lt!2491370 lt!2491349)))))

(assert (=> b!6994008 (= lt!2491349 ((_ map or) lt!2491357 lt!2491378))))

(assert (=> b!6994008 (= lt!2491378 (derivationStepZipperUp!1899 lt!2491337 (h!73617 s!7408)))))

(declare-fun derivationStepZipperDown!1967 (Regex!17249 Context!12490 C!34768) (InoxSet Context!12490))

(assert (=> b!6994008 (= lt!2491357 (derivationStepZipperDown!1967 (h!73616 (exprs!6745 lt!2491372)) lt!2491337 (h!73617 s!7408)))))

(assert (=> b!6994008 (= lt!2491337 (Context!12491 (++!15199 lt!2491362 (exprs!6745 ct2!306))))))

(declare-fun lt!2491374 () Unit!161153)

(assert (=> b!6994008 (= lt!2491374 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(declare-fun lt!2491369 () Unit!161153)

(assert (=> b!6994008 (= lt!2491369 (lemmaConcatPreservesForall!585 lt!2491362 (exprs!6745 ct2!306) lambda!403604))))

(assert (= (and start!672462 res!2852810) b!6993996))

(assert (= (and b!6993996 res!2852800) b!6994002))

(assert (= (and b!6994002 (not res!2852808)) b!6993984))

(assert (= (and b!6993984 (not res!2852790)) b!6993993))

(assert (= (and b!6993993 (not res!2852812)) b!6993994))

(assert (= (and b!6993994 (not res!2852806)) b!6993987))

(assert (= (and b!6993987 (not res!2852799)) b!6994004))

(assert (= (and b!6994004 (not res!2852793)) b!6994001))

(assert (= (and b!6994001 (not res!2852805)) b!6993989))

(assert (= (and b!6993989 (not res!2852789)) b!6994008))

(assert (= (and b!6994008 (not res!2852791)) b!6993981))

(assert (= (and b!6993981 (not res!2852811)) b!6993997))

(assert (= (and b!6993981 res!2852794) b!6993999))

(assert (= (and b!6993981 (not res!2852796)) b!6993995))

(assert (= (and b!6993995 (not res!2852797)) b!6993986))

(assert (= (and b!6993986 (not res!2852801)) b!6993991))

(assert (= (and b!6993991 (not res!2852807)) b!6993980))

(assert (= (and b!6993980 (not res!2852792)) b!6993992))

(assert (= (and b!6993992 (not res!2852809)) b!6994005))

(assert (= (and b!6994005 (not res!2852787)) b!6993985))

(assert (= (and b!6993985 (not res!2852795)) b!6994007))

(assert (= (and b!6994007 (not res!2852804)) b!6994006))

(assert (= (and b!6994006 (not res!2852802)) b!6994000))

(assert (= (and b!6994000 (not res!2852788)) b!6993990))

(assert (= (and b!6993990 (not res!2852803)) b!6993988))

(assert (= (and b!6993988 (not res!2852798)) b!6994003))

(assert (= (and start!672462 condSetEmpty!47949) setIsEmpty!47949))

(assert (= (and start!672462 (not condSetEmpty!47949)) setNonEmpty!47949))

(assert (= setNonEmpty!47949 b!6993982))

(assert (= start!672462 b!6993983))

(assert (= (and start!672462 ((_ is Cons!67169) s!7408)) b!6993998))

(declare-fun m!7684490 () Bool)

(assert (=> b!6993986 m!7684490))

(declare-fun m!7684492 () Bool)

(assert (=> b!6993986 m!7684492))

(assert (=> b!6993981 m!7684492))

(declare-fun m!7684494 () Bool)

(assert (=> b!6993981 m!7684494))

(declare-fun m!7684496 () Bool)

(assert (=> b!6993981 m!7684496))

(assert (=> b!6993981 m!7684492))

(assert (=> b!6993981 m!7684492))

(declare-fun m!7684498 () Bool)

(assert (=> b!6993981 m!7684498))

(declare-fun m!7684500 () Bool)

(assert (=> b!6993981 m!7684500))

(declare-fun m!7684502 () Bool)

(assert (=> b!6994000 m!7684502))

(declare-fun m!7684504 () Bool)

(assert (=> b!6993984 m!7684504))

(assert (=> b!6993992 m!7684492))

(declare-fun m!7684506 () Bool)

(assert (=> b!6993992 m!7684506))

(declare-fun m!7684508 () Bool)

(assert (=> b!6993992 m!7684508))

(declare-fun m!7684510 () Bool)

(assert (=> b!6993992 m!7684510))

(declare-fun m!7684512 () Bool)

(assert (=> b!6993992 m!7684512))

(assert (=> b!6993992 m!7684492))

(declare-fun m!7684514 () Bool)

(assert (=> b!6993992 m!7684514))

(declare-fun m!7684516 () Bool)

(assert (=> b!6993992 m!7684516))

(assert (=> b!6993992 m!7684492))

(assert (=> b!6993992 m!7684492))

(declare-fun m!7684518 () Bool)

(assert (=> b!6993992 m!7684518))

(declare-fun m!7684520 () Bool)

(assert (=> b!6993992 m!7684520))

(declare-fun m!7684522 () Bool)

(assert (=> b!6993992 m!7684522))

(declare-fun m!7684524 () Bool)

(assert (=> b!6993992 m!7684524))

(declare-fun m!7684526 () Bool)

(assert (=> b!6993992 m!7684526))

(declare-fun m!7684528 () Bool)

(assert (=> b!6993992 m!7684528))

(declare-fun m!7684530 () Bool)

(assert (=> b!6993992 m!7684530))

(declare-fun m!7684532 () Bool)

(assert (=> b!6994005 m!7684532))

(declare-fun m!7684534 () Bool)

(assert (=> b!6993987 m!7684534))

(declare-fun m!7684536 () Bool)

(assert (=> b!6993987 m!7684536))

(declare-fun m!7684538 () Bool)

(assert (=> b!6993987 m!7684538))

(declare-fun m!7684540 () Bool)

(assert (=> b!6993987 m!7684540))

(declare-fun m!7684542 () Bool)

(assert (=> b!6993987 m!7684542))

(declare-fun m!7684544 () Bool)

(assert (=> start!672462 m!7684544))

(declare-fun m!7684546 () Bool)

(assert (=> start!672462 m!7684546))

(declare-fun m!7684548 () Bool)

(assert (=> start!672462 m!7684548))

(declare-fun m!7684550 () Bool)

(assert (=> b!6993989 m!7684550))

(declare-fun m!7684552 () Bool)

(assert (=> b!6993989 m!7684552))

(declare-fun m!7684554 () Bool)

(assert (=> b!6993985 m!7684554))

(declare-fun m!7684556 () Bool)

(assert (=> b!6993985 m!7684556))

(declare-fun m!7684558 () Bool)

(assert (=> b!6993985 m!7684558))

(declare-fun m!7684560 () Bool)

(assert (=> b!6993985 m!7684560))

(declare-fun m!7684562 () Bool)

(assert (=> b!6993985 m!7684562))

(declare-fun m!7684564 () Bool)

(assert (=> b!6993985 m!7684564))

(declare-fun m!7684566 () Bool)

(assert (=> b!6994006 m!7684566))

(assert (=> b!6993999 m!7684490))

(assert (=> b!6993999 m!7684492))

(declare-fun m!7684568 () Bool)

(assert (=> b!6993980 m!7684568))

(assert (=> b!6993980 m!7684492))

(declare-fun m!7684570 () Bool)

(assert (=> setNonEmpty!47949 m!7684570))

(declare-fun m!7684572 () Bool)

(assert (=> b!6994002 m!7684572))

(declare-fun m!7684574 () Bool)

(assert (=> b!6994002 m!7684574))

(declare-fun m!7684576 () Bool)

(assert (=> b!6994002 m!7684576))

(declare-fun m!7684578 () Bool)

(assert (=> b!6994002 m!7684578))

(declare-fun m!7684580 () Bool)

(assert (=> b!6994002 m!7684580))

(declare-fun m!7684582 () Bool)

(assert (=> b!6994002 m!7684582))

(assert (=> b!6994008 m!7684492))

(declare-fun m!7684584 () Bool)

(assert (=> b!6994008 m!7684584))

(declare-fun m!7684586 () Bool)

(assert (=> b!6994008 m!7684586))

(assert (=> b!6994008 m!7684524))

(assert (=> b!6994008 m!7684492))

(declare-fun m!7684588 () Bool)

(assert (=> b!6993991 m!7684588))

(assert (=> b!6993991 m!7684492))

(declare-fun m!7684590 () Bool)

(assert (=> b!6993991 m!7684590))

(assert (=> b!6993991 m!7684584))

(assert (=> b!6993991 m!7684492))

(assert (=> b!6993991 m!7684492))

(declare-fun m!7684592 () Bool)

(assert (=> b!6993991 m!7684592))

(assert (=> b!6993991 m!7684492))

(declare-fun m!7684594 () Bool)

(assert (=> b!6993991 m!7684594))

(declare-fun m!7684596 () Bool)

(assert (=> b!6993990 m!7684596))

(declare-fun m!7684598 () Bool)

(assert (=> b!6993994 m!7684598))

(assert (=> b!6993994 m!7684542))

(declare-fun m!7684600 () Bool)

(assert (=> b!6993988 m!7684600))

(declare-fun m!7684602 () Bool)

(assert (=> b!6993988 m!7684602))

(declare-fun m!7684604 () Bool)

(assert (=> b!6994001 m!7684604))

(declare-fun m!7684606 () Bool)

(assert (=> b!6994007 m!7684606))

(declare-fun m!7684608 () Bool)

(assert (=> b!6993993 m!7684608))

(declare-fun m!7684610 () Bool)

(assert (=> b!6993993 m!7684610))

(assert (=> b!6993993 m!7684542))

(declare-fun m!7684612 () Bool)

(assert (=> b!6993993 m!7684612))

(assert (=> b!6993997 m!7684490))

(declare-fun m!7684614 () Bool)

(assert (=> b!6994003 m!7684614))

(check-sat (not b!6993985) (not b!6994007) (not b!6993982) (not b!6994000) (not b!6993993) (not start!672462) (not b!6994002) (not setNonEmpty!47949) tp_is_empty!43723 (not b!6993990) (not b!6993981) (not b!6993988) (not b!6993986) (not b!6993980) (not b!6994003) (not b!6993992) (not b!6994006) (not b!6993991) (not b!6994005) (not b!6994001) (not b!6994008) (not b!6993999) (not b!6993994) (not b!6993983) (not b!6993998) (not b!6993987) (not b!6993989) (not b!6993997))
(check-sat)
