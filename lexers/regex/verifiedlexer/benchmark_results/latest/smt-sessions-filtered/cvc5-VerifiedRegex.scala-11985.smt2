; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!671564 () Bool)

(assert start!671564)

(declare-fun b!6989012 () Bool)

(assert (=> b!6989012 true))

(declare-fun b!6989007 () Bool)

(assert (=> b!6989007 true))

(declare-fun b!6989001 () Bool)

(assert (=> b!6989001 true))

(declare-fun b!6988997 () Bool)

(declare-fun e!4200722 () Bool)

(declare-fun e!4200710 () Bool)

(assert (=> b!6988997 (= e!4200722 e!4200710)))

(declare-fun res!2850174 () Bool)

(assert (=> b!6988997 (=> res!2850174 e!4200710)))

(declare-datatypes ((C!34702 0))(
  ( (C!34703 (val!27053 Int)) )
))
(declare-datatypes ((Regex!17216 0))(
  ( (ElementMatch!17216 (c!1296222 C!34702)) (Concat!26061 (regOne!34944 Regex!17216) (regTwo!34944 Regex!17216)) (EmptyExpr!17216) (Star!17216 (reg!17545 Regex!17216)) (EmptyLang!17216) (Union!17216 (regOne!34945 Regex!17216) (regTwo!34945 Regex!17216)) )
))
(declare-datatypes ((List!67193 0))(
  ( (Nil!67069) (Cons!67069 (h!73517 Regex!17216) (t!380940 List!67193)) )
))
(declare-fun lt!2486357 () List!67193)

(declare-fun lambda!401371 () Int)

(declare-fun forall!16130 (List!67193 Int) Bool)

(assert (=> b!6988997 (= res!2850174 (not (forall!16130 lt!2486357 lambda!401371)))))

(declare-fun b!6988998 () Bool)

(declare-fun e!4200712 () Bool)

(declare-fun e!4200723 () Bool)

(assert (=> b!6988998 (= e!4200712 e!4200723)))

(declare-fun res!2850179 () Bool)

(assert (=> b!6988998 (=> res!2850179 e!4200723)))

(declare-datatypes ((Context!12424 0))(
  ( (Context!12425 (exprs!6712 List!67193)) )
))
(declare-fun lt!2486342 () (Set Context!12424))

(declare-fun lt!2486344 () (Set Context!12424))

(assert (=> b!6988998 (= res!2850179 (not (= lt!2486342 lt!2486344)))))

(declare-fun lt!2486354 () Context!12424)

(assert (=> b!6988998 (= lt!2486342 (set.insert lt!2486354 (as set.empty (Set Context!12424))))))

(declare-datatypes ((Unit!161087 0))(
  ( (Unit!161088) )
))
(declare-fun lt!2486369 () Unit!161087)

(declare-fun ct2!306 () Context!12424)

(declare-fun lt!2486352 () Context!12424)

(declare-fun lemmaConcatPreservesForall!552 (List!67193 List!67193 Int) Unit!161087)

(assert (=> b!6988998 (= lt!2486369 (lemmaConcatPreservesForall!552 (exprs!6712 lt!2486352) (exprs!6712 ct2!306) lambda!401371))))

(declare-fun b!6988999 () Bool)

(declare-fun e!4200717 () Bool)

(declare-fun tp!1929604 () Bool)

(assert (=> b!6988999 (= e!4200717 tp!1929604)))

(declare-fun b!6989000 () Bool)

(declare-fun res!2850185 () Bool)

(declare-fun e!4200718 () Bool)

(assert (=> b!6989000 (=> res!2850185 e!4200718)))

(declare-fun lt!2486373 () Context!12424)

(declare-fun lt!2486370 () (Set Context!12424))

(assert (=> b!6989000 (= res!2850185 (not (set.member lt!2486373 lt!2486370)))))

(declare-fun e!4200713 () Bool)

(assert (=> b!6989001 (= e!4200723 e!4200713)))

(declare-fun res!2850187 () Bool)

(assert (=> b!6989001 (=> res!2850187 e!4200713)))

(declare-datatypes ((List!67194 0))(
  ( (Nil!67070) (Cons!67070 (h!73518 C!34702) (t!380941 List!67194)) )
))
(declare-fun s!7408 () List!67194)

(declare-fun lt!2486368 () (Set Context!12424))

(declare-fun derivationStepZipper!2696 ((Set Context!12424) C!34702) (Set Context!12424))

(assert (=> b!6989001 (= res!2850187 (not (= (derivationStepZipper!2696 lt!2486342 (h!73518 s!7408)) lt!2486368)))))

(declare-fun lambda!401372 () Int)

(declare-fun flatMap!2202 ((Set Context!12424) Int) (Set Context!12424))

(declare-fun derivationStepZipperUp!1866 (Context!12424 C!34702) (Set Context!12424))

(assert (=> b!6989001 (= (flatMap!2202 lt!2486342 lambda!401372) (derivationStepZipperUp!1866 lt!2486354 (h!73518 s!7408)))))

(declare-fun lt!2486347 () Unit!161087)

(declare-fun lemmaFlatMapOnSingletonSet!1717 ((Set Context!12424) Context!12424 Int) Unit!161087)

(assert (=> b!6989001 (= lt!2486347 (lemmaFlatMapOnSingletonSet!1717 lt!2486342 lt!2486354 lambda!401372))))

(assert (=> b!6989001 (= lt!2486368 (derivationStepZipperUp!1866 lt!2486354 (h!73518 s!7408)))))

(declare-fun lt!2486356 () Unit!161087)

(assert (=> b!6989001 (= lt!2486356 (lemmaConcatPreservesForall!552 (exprs!6712 lt!2486352) (exprs!6712 ct2!306) lambda!401371))))

(declare-fun b!6989002 () Bool)

(declare-fun res!2850177 () Bool)

(assert (=> b!6989002 (=> res!2850177 e!4200713)))

(declare-fun isEmpty!39147 (List!67193) Bool)

(assert (=> b!6989002 (= res!2850177 (isEmpty!39147 (exprs!6712 lt!2486352)))))

(declare-fun setIsEmpty!47793 () Bool)

(declare-fun setRes!47793 () Bool)

(assert (=> setIsEmpty!47793 setRes!47793))

(declare-fun b!6989003 () Bool)

(declare-fun e!4200709 () Bool)

(declare-fun e!4200714 () Bool)

(assert (=> b!6989003 (= e!4200709 e!4200714)))

(declare-fun res!2850176 () Bool)

(assert (=> b!6989003 (=> res!2850176 e!4200714)))

(declare-fun e!4200711 () Bool)

(assert (=> b!6989003 (= res!2850176 e!4200711)))

(declare-fun res!2850181 () Bool)

(assert (=> b!6989003 (=> (not res!2850181) (not e!4200711))))

(declare-fun lt!2486375 () Bool)

(declare-fun lt!2486364 () Bool)

(assert (=> b!6989003 (= res!2850181 (not (= lt!2486375 lt!2486364)))))

(declare-fun matchZipper!2756 ((Set Context!12424) List!67194) Bool)

(assert (=> b!6989003 (= lt!2486375 (matchZipper!2756 lt!2486368 (t!380941 s!7408)))))

(declare-fun lt!2486365 () Unit!161087)

(assert (=> b!6989003 (= lt!2486365 (lemmaConcatPreservesForall!552 lt!2486357 (exprs!6712 ct2!306) lambda!401371))))

(declare-fun lt!2486345 () (Set Context!12424))

(declare-fun e!4200721 () Bool)

(assert (=> b!6989003 (= (matchZipper!2756 lt!2486345 (t!380941 s!7408)) e!4200721)))

(declare-fun res!2850183 () Bool)

(assert (=> b!6989003 (=> res!2850183 e!4200721)))

(assert (=> b!6989003 (= res!2850183 lt!2486364)))

(declare-fun lt!2486362 () (Set Context!12424))

(assert (=> b!6989003 (= lt!2486364 (matchZipper!2756 lt!2486362 (t!380941 s!7408)))))

(declare-fun lt!2486366 () (Set Context!12424))

(declare-fun lt!2486367 () Unit!161087)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1389 ((Set Context!12424) (Set Context!12424) List!67194) Unit!161087)

(assert (=> b!6989003 (= lt!2486367 (lemmaZipperConcatMatchesSameAsBothZippers!1389 lt!2486362 lt!2486366 (t!380941 s!7408)))))

(declare-fun lt!2486374 () Unit!161087)

(assert (=> b!6989003 (= lt!2486374 (lemmaConcatPreservesForall!552 lt!2486357 (exprs!6712 ct2!306) lambda!401371))))

(declare-fun lt!2486372 () Unit!161087)

(assert (=> b!6989003 (= lt!2486372 (lemmaConcatPreservesForall!552 lt!2486357 (exprs!6712 ct2!306) lambda!401371))))

(declare-fun b!6989004 () Bool)

(declare-fun e!4200715 () Bool)

(assert (=> b!6989004 (= e!4200715 e!4200722)))

(declare-fun res!2850182 () Bool)

(assert (=> b!6989004 (=> res!2850182 e!4200722)))

(declare-fun lt!2486351 () (Set Context!12424))

(assert (=> b!6989004 (= res!2850182 (not (= (derivationStepZipper!2696 lt!2486351 (h!73518 s!7408)) lt!2486366)))))

(declare-fun lt!2486371 () Unit!161087)

(assert (=> b!6989004 (= lt!2486371 (lemmaConcatPreservesForall!552 lt!2486357 (exprs!6712 ct2!306) lambda!401371))))

(declare-fun lt!2486358 () Unit!161087)

(assert (=> b!6989004 (= lt!2486358 (lemmaConcatPreservesForall!552 lt!2486357 (exprs!6712 ct2!306) lambda!401371))))

(declare-fun lt!2486361 () Context!12424)

(assert (=> b!6989004 (= (flatMap!2202 lt!2486351 lambda!401372) (derivationStepZipperUp!1866 lt!2486361 (h!73518 s!7408)))))

(declare-fun lt!2486355 () Unit!161087)

(assert (=> b!6989004 (= lt!2486355 (lemmaFlatMapOnSingletonSet!1717 lt!2486351 lt!2486361 lambda!401372))))

(assert (=> b!6989004 (= lt!2486351 (set.insert lt!2486361 (as set.empty (Set Context!12424))))))

(declare-fun lt!2486359 () Unit!161087)

(assert (=> b!6989004 (= lt!2486359 (lemmaConcatPreservesForall!552 lt!2486357 (exprs!6712 ct2!306) lambda!401371))))

(declare-fun lt!2486360 () Unit!161087)

(assert (=> b!6989004 (= lt!2486360 (lemmaConcatPreservesForall!552 lt!2486357 (exprs!6712 ct2!306) lambda!401371))))

(declare-fun b!6989005 () Bool)

(assert (=> b!6989005 (= e!4200721 (matchZipper!2756 lt!2486366 (t!380941 s!7408)))))

(declare-fun b!6989006 () Bool)

(assert (=> b!6989006 (= e!4200714 e!4200715)))

(declare-fun res!2850188 () Bool)

(assert (=> b!6989006 (=> res!2850188 e!4200715)))

(assert (=> b!6989006 (= res!2850188 (not (matchZipper!2756 lt!2486366 (t!380941 s!7408))))))

(declare-fun lt!2486343 () Unit!161087)

(assert (=> b!6989006 (= lt!2486343 (lemmaConcatPreservesForall!552 lt!2486357 (exprs!6712 ct2!306) lambda!401371))))

(assert (=> b!6989007 (= e!4200718 e!4200712)))

(declare-fun res!2850175 () Bool)

(assert (=> b!6989007 (=> res!2850175 e!4200712)))

(declare-fun z1!570 () (Set Context!12424))

(assert (=> b!6989007 (= res!2850175 (or (not (= lt!2486354 lt!2486373)) (not (set.member lt!2486352 z1!570))))))

(declare-fun ++!15161 (List!67193 List!67193) List!67193)

(assert (=> b!6989007 (= lt!2486354 (Context!12425 (++!15161 (exprs!6712 lt!2486352) (exprs!6712 ct2!306))))))

(declare-fun lt!2486348 () Unit!161087)

(assert (=> b!6989007 (= lt!2486348 (lemmaConcatPreservesForall!552 (exprs!6712 lt!2486352) (exprs!6712 ct2!306) lambda!401371))))

(declare-fun lambda!401370 () Int)

(declare-fun mapPost2!71 ((Set Context!12424) Int Context!12424) Context!12424)

(assert (=> b!6989007 (= lt!2486352 (mapPost2!71 z1!570 lambda!401370 lt!2486373))))

(declare-fun b!6988996 () Bool)

(declare-fun e!4200720 () Bool)

(assert (=> b!6988996 (= e!4200713 e!4200720)))

(declare-fun res!2850186 () Bool)

(assert (=> b!6988996 (=> res!2850186 e!4200720)))

(declare-fun nullable!6976 (Regex!17216) Bool)

(assert (=> b!6988996 (= res!2850186 (not (nullable!6976 (h!73517 (exprs!6712 lt!2486352)))))))

(declare-fun tail!13223 (List!67193) List!67193)

(assert (=> b!6988996 (= lt!2486357 (tail!13223 (exprs!6712 lt!2486352)))))

(declare-fun res!2850180 () Bool)

(declare-fun e!4200716 () Bool)

(assert (=> start!671564 (=> (not res!2850180) (not e!4200716))))

(assert (=> start!671564 (= res!2850180 (matchZipper!2756 lt!2486370 s!7408))))

(declare-fun appendTo!337 ((Set Context!12424) Context!12424) (Set Context!12424))

(assert (=> start!671564 (= lt!2486370 (appendTo!337 z1!570 ct2!306))))

(assert (=> start!671564 e!4200716))

(declare-fun condSetEmpty!47793 () Bool)

(assert (=> start!671564 (= condSetEmpty!47793 (= z1!570 (as set.empty (Set Context!12424))))))

(assert (=> start!671564 setRes!47793))

(declare-fun e!4200724 () Bool)

(declare-fun inv!85900 (Context!12424) Bool)

(assert (=> start!671564 (and (inv!85900 ct2!306) e!4200724)))

(declare-fun e!4200719 () Bool)

(assert (=> start!671564 e!4200719))

(declare-fun b!6989008 () Bool)

(declare-fun res!2850189 () Bool)

(assert (=> b!6989008 (=> res!2850189 e!4200713)))

(assert (=> b!6989008 (= res!2850189 (not (is-Cons!67069 (exprs!6712 lt!2486352))))))

(declare-fun b!6989009 () Bool)

(declare-fun tp_is_empty!43657 () Bool)

(declare-fun tp!1929605 () Bool)

(assert (=> b!6989009 (= e!4200719 (and tp_is_empty!43657 tp!1929605))))

(declare-fun b!6989010 () Bool)

(declare-fun tp!1929603 () Bool)

(assert (=> b!6989010 (= e!4200724 tp!1929603)))

(declare-fun b!6989011 () Bool)

(declare-fun res!2850178 () Bool)

(assert (=> b!6989011 (=> (not res!2850178) (not e!4200716))))

(assert (=> b!6989011 (= res!2850178 (is-Cons!67070 s!7408))))

(declare-fun setElem!47793 () Context!12424)

(declare-fun tp!1929602 () Bool)

(declare-fun setNonEmpty!47793 () Bool)

(assert (=> setNonEmpty!47793 (= setRes!47793 (and tp!1929602 (inv!85900 setElem!47793) e!4200717))))

(declare-fun setRest!47793 () (Set Context!12424))

(assert (=> setNonEmpty!47793 (= z1!570 (set.union (set.insert setElem!47793 (as set.empty (Set Context!12424))) setRest!47793))))

(assert (=> b!6989012 (= e!4200716 (not e!4200718))))

(declare-fun res!2850184 () Bool)

(assert (=> b!6989012 (=> res!2850184 e!4200718)))

(assert (=> b!6989012 (= res!2850184 (not (matchZipper!2756 lt!2486344 s!7408)))))

(assert (=> b!6989012 (= lt!2486344 (set.insert lt!2486373 (as set.empty (Set Context!12424))))))

(declare-fun lambda!401369 () Int)

(declare-fun getWitness!1113 ((Set Context!12424) Int) Context!12424)

(assert (=> b!6989012 (= lt!2486373 (getWitness!1113 lt!2486370 lambda!401369))))

(declare-datatypes ((List!67195 0))(
  ( (Nil!67071) (Cons!67071 (h!73519 Context!12424) (t!380942 List!67195)) )
))
(declare-fun lt!2486346 () List!67195)

(declare-fun exists!3002 (List!67195 Int) Bool)

(assert (=> b!6989012 (exists!3002 lt!2486346 lambda!401369)))

(declare-fun lt!2486349 () Unit!161087)

(declare-fun lemmaZipperMatchesExistsMatchingContext!185 (List!67195 List!67194) Unit!161087)

(assert (=> b!6989012 (= lt!2486349 (lemmaZipperMatchesExistsMatchingContext!185 lt!2486346 s!7408))))

(declare-fun toList!10576 ((Set Context!12424)) List!67195)

(assert (=> b!6989012 (= lt!2486346 (toList!10576 lt!2486370))))

(declare-fun b!6989013 () Bool)

(assert (=> b!6989013 (= e!4200710 (forall!16130 (exprs!6712 ct2!306) lambda!401371))))

(declare-fun b!6989014 () Bool)

(assert (=> b!6989014 (= e!4200711 (not (matchZipper!2756 lt!2486366 (t!380941 s!7408))))))

(declare-fun lt!2486363 () Unit!161087)

(assert (=> b!6989014 (= lt!2486363 (lemmaConcatPreservesForall!552 lt!2486357 (exprs!6712 ct2!306) lambda!401371))))

(declare-fun b!6989015 () Bool)

(declare-fun res!2850172 () Bool)

(assert (=> b!6989015 (=> res!2850172 e!4200714)))

(assert (=> b!6989015 (= res!2850172 (not lt!2486375))))

(declare-fun b!6989016 () Bool)

(assert (=> b!6989016 (= e!4200720 e!4200709)))

(declare-fun res!2850173 () Bool)

(assert (=> b!6989016 (=> res!2850173 e!4200709)))

(assert (=> b!6989016 (= res!2850173 (not (= lt!2486368 lt!2486345)))))

(assert (=> b!6989016 (= lt!2486345 (set.union lt!2486362 lt!2486366))))

(assert (=> b!6989016 (= lt!2486366 (derivationStepZipperUp!1866 lt!2486361 (h!73518 s!7408)))))

(declare-fun derivationStepZipperDown!1934 (Regex!17216 Context!12424 C!34702) (Set Context!12424))

(assert (=> b!6989016 (= lt!2486362 (derivationStepZipperDown!1934 (h!73517 (exprs!6712 lt!2486352)) lt!2486361 (h!73518 s!7408)))))

(assert (=> b!6989016 (= lt!2486361 (Context!12425 (++!15161 lt!2486357 (exprs!6712 ct2!306))))))

(declare-fun lt!2486353 () Unit!161087)

(assert (=> b!6989016 (= lt!2486353 (lemmaConcatPreservesForall!552 lt!2486357 (exprs!6712 ct2!306) lambda!401371))))

(declare-fun lt!2486350 () Unit!161087)

(assert (=> b!6989016 (= lt!2486350 (lemmaConcatPreservesForall!552 lt!2486357 (exprs!6712 ct2!306) lambda!401371))))

(assert (= (and start!671564 res!2850180) b!6989011))

(assert (= (and b!6989011 res!2850178) b!6989012))

(assert (= (and b!6989012 (not res!2850184)) b!6989000))

(assert (= (and b!6989000 (not res!2850185)) b!6989007))

(assert (= (and b!6989007 (not res!2850175)) b!6988998))

(assert (= (and b!6988998 (not res!2850179)) b!6989001))

(assert (= (and b!6989001 (not res!2850187)) b!6989008))

(assert (= (and b!6989008 (not res!2850189)) b!6989002))

(assert (= (and b!6989002 (not res!2850177)) b!6988996))

(assert (= (and b!6988996 (not res!2850186)) b!6989016))

(assert (= (and b!6989016 (not res!2850173)) b!6989003))

(assert (= (and b!6989003 (not res!2850183)) b!6989005))

(assert (= (and b!6989003 res!2850181) b!6989014))

(assert (= (and b!6989003 (not res!2850176)) b!6989015))

(assert (= (and b!6989015 (not res!2850172)) b!6989006))

(assert (= (and b!6989006 (not res!2850188)) b!6989004))

(assert (= (and b!6989004 (not res!2850182)) b!6988997))

(assert (= (and b!6988997 (not res!2850174)) b!6989013))

(assert (= (and start!671564 condSetEmpty!47793) setIsEmpty!47793))

(assert (= (and start!671564 (not condSetEmpty!47793)) setNonEmpty!47793))

(assert (= setNonEmpty!47793 b!6988999))

(assert (= start!671564 b!6989010))

(assert (= (and start!671564 (is-Cons!67070 s!7408)) b!6989009))

(declare-fun m!7677432 () Bool)

(assert (=> b!6989014 m!7677432))

(declare-fun m!7677434 () Bool)

(assert (=> b!6989014 m!7677434))

(declare-fun m!7677436 () Bool)

(assert (=> setNonEmpty!47793 m!7677436))

(declare-fun m!7677438 () Bool)

(assert (=> b!6989004 m!7677438))

(declare-fun m!7677440 () Bool)

(assert (=> b!6989004 m!7677440))

(assert (=> b!6989004 m!7677434))

(assert (=> b!6989004 m!7677434))

(declare-fun m!7677442 () Bool)

(assert (=> b!6989004 m!7677442))

(assert (=> b!6989004 m!7677434))

(assert (=> b!6989004 m!7677434))

(declare-fun m!7677444 () Bool)

(assert (=> b!6989004 m!7677444))

(declare-fun m!7677446 () Bool)

(assert (=> b!6989004 m!7677446))

(declare-fun m!7677448 () Bool)

(assert (=> b!6989013 m!7677448))

(declare-fun m!7677450 () Bool)

(assert (=> b!6989000 m!7677450))

(declare-fun m!7677452 () Bool)

(assert (=> b!6989016 m!7677452))

(declare-fun m!7677454 () Bool)

(assert (=> b!6989016 m!7677454))

(assert (=> b!6989016 m!7677442))

(assert (=> b!6989016 m!7677434))

(assert (=> b!6989016 m!7677434))

(declare-fun m!7677456 () Bool)

(assert (=> b!6989002 m!7677456))

(declare-fun m!7677458 () Bool)

(assert (=> b!6988998 m!7677458))

(declare-fun m!7677460 () Bool)

(assert (=> b!6988998 m!7677460))

(declare-fun m!7677462 () Bool)

(assert (=> b!6988996 m!7677462))

(declare-fun m!7677464 () Bool)

(assert (=> b!6988996 m!7677464))

(declare-fun m!7677466 () Bool)

(assert (=> start!671564 m!7677466))

(declare-fun m!7677468 () Bool)

(assert (=> start!671564 m!7677468))

(declare-fun m!7677470 () Bool)

(assert (=> start!671564 m!7677470))

(assert (=> b!6989005 m!7677432))

(declare-fun m!7677472 () Bool)

(assert (=> b!6989001 m!7677472))

(declare-fun m!7677474 () Bool)

(assert (=> b!6989001 m!7677474))

(declare-fun m!7677476 () Bool)

(assert (=> b!6989001 m!7677476))

(assert (=> b!6989001 m!7677460))

(declare-fun m!7677478 () Bool)

(assert (=> b!6989001 m!7677478))

(declare-fun m!7677480 () Bool)

(assert (=> b!6988997 m!7677480))

(declare-fun m!7677482 () Bool)

(assert (=> b!6989012 m!7677482))

(declare-fun m!7677484 () Bool)

(assert (=> b!6989012 m!7677484))

(declare-fun m!7677486 () Bool)

(assert (=> b!6989012 m!7677486))

(declare-fun m!7677488 () Bool)

(assert (=> b!6989012 m!7677488))

(declare-fun m!7677490 () Bool)

(assert (=> b!6989012 m!7677490))

(declare-fun m!7677492 () Bool)

(assert (=> b!6989012 m!7677492))

(assert (=> b!6989006 m!7677432))

(assert (=> b!6989006 m!7677434))

(declare-fun m!7677494 () Bool)

(assert (=> b!6989007 m!7677494))

(declare-fun m!7677496 () Bool)

(assert (=> b!6989007 m!7677496))

(assert (=> b!6989007 m!7677460))

(declare-fun m!7677498 () Bool)

(assert (=> b!6989007 m!7677498))

(assert (=> b!6989003 m!7677434))

(assert (=> b!6989003 m!7677434))

(declare-fun m!7677500 () Bool)

(assert (=> b!6989003 m!7677500))

(assert (=> b!6989003 m!7677434))

(declare-fun m!7677502 () Bool)

(assert (=> b!6989003 m!7677502))

(declare-fun m!7677504 () Bool)

(assert (=> b!6989003 m!7677504))

(declare-fun m!7677506 () Bool)

(assert (=> b!6989003 m!7677506))

(push 1)

(assert (not b!6989016))

(assert (not b!6988997))

(assert (not b!6989009))

(assert (not b!6989010))

(assert (not b!6989002))

(assert (not b!6989004))

(assert tp_is_empty!43657)

(assert (not b!6989005))

(assert (not b!6989006))

(assert (not b!6988998))

(assert (not b!6988999))

(assert (not b!6989014))

(assert (not setNonEmpty!47793))

(assert (not start!671564))

(assert (not b!6989007))

(assert (not b!6989001))

(assert (not b!6989012))

(assert (not b!6989003))

(assert (not b!6988996))

(assert (not b!6989013))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1862066 () Bool)

(declare-fun d!2176998 () Bool)

(assert (= bs!1862066 (and d!2176998 b!6989007)))

(declare-fun lambda!401421 () Int)

(assert (=> bs!1862066 (= lambda!401421 lambda!401371)))

(assert (=> d!2176998 (= (inv!85900 setElem!47793) (forall!16130 (exprs!6712 setElem!47793) lambda!401421))))

(declare-fun bs!1862067 () Bool)

(assert (= bs!1862067 d!2176998))

(declare-fun m!7677584 () Bool)

(assert (=> bs!1862067 m!7677584))

(assert (=> setNonEmpty!47793 d!2176998))

(declare-fun bs!1862068 () Bool)

(declare-fun d!2177000 () Bool)

(assert (= bs!1862068 (and d!2177000 b!6989012)))

(declare-fun lambda!401424 () Int)

(assert (=> bs!1862068 (= lambda!401424 lambda!401369)))

(assert (=> d!2177000 true))

(assert (=> d!2177000 (exists!3002 lt!2486346 lambda!401424)))

(declare-fun lt!2486482 () Unit!161087)

(declare-fun choose!52239 (List!67195 List!67194) Unit!161087)

(assert (=> d!2177000 (= lt!2486482 (choose!52239 lt!2486346 s!7408))))

(declare-fun content!13254 (List!67195) (Set Context!12424))

(assert (=> d!2177000 (matchZipper!2756 (content!13254 lt!2486346) s!7408)))

(assert (=> d!2177000 (= (lemmaZipperMatchesExistsMatchingContext!185 lt!2486346 s!7408) lt!2486482)))

(declare-fun bs!1862069 () Bool)

(assert (= bs!1862069 d!2177000))

(declare-fun m!7677586 () Bool)

(assert (=> bs!1862069 m!7677586))

(declare-fun m!7677588 () Bool)

(assert (=> bs!1862069 m!7677588))

(declare-fun m!7677590 () Bool)

(assert (=> bs!1862069 m!7677590))

(assert (=> bs!1862069 m!7677590))

(declare-fun m!7677592 () Bool)

(assert (=> bs!1862069 m!7677592))

(assert (=> b!6989012 d!2177000))

(declare-fun d!2177002 () Bool)

(declare-fun c!1296238 () Bool)

(declare-fun isEmpty!39149 (List!67194) Bool)

(assert (=> d!2177002 (= c!1296238 (isEmpty!39149 s!7408))))

(declare-fun e!4200775 () Bool)

(assert (=> d!2177002 (= (matchZipper!2756 lt!2486344 s!7408) e!4200775)))

(declare-fun b!6989096 () Bool)

(declare-fun nullableZipper!2434 ((Set Context!12424)) Bool)

(assert (=> b!6989096 (= e!4200775 (nullableZipper!2434 lt!2486344))))

(declare-fun b!6989097 () Bool)

(declare-fun head!14109 (List!67194) C!34702)

(declare-fun tail!13225 (List!67194) List!67194)

(assert (=> b!6989097 (= e!4200775 (matchZipper!2756 (derivationStepZipper!2696 lt!2486344 (head!14109 s!7408)) (tail!13225 s!7408)))))

(assert (= (and d!2177002 c!1296238) b!6989096))

(assert (= (and d!2177002 (not c!1296238)) b!6989097))

(declare-fun m!7677594 () Bool)

(assert (=> d!2177002 m!7677594))

(declare-fun m!7677596 () Bool)

(assert (=> b!6989096 m!7677596))

(declare-fun m!7677598 () Bool)

(assert (=> b!6989097 m!7677598))

(assert (=> b!6989097 m!7677598))

(declare-fun m!7677600 () Bool)

(assert (=> b!6989097 m!7677600))

(declare-fun m!7677602 () Bool)

(assert (=> b!6989097 m!7677602))

(assert (=> b!6989097 m!7677600))

(assert (=> b!6989097 m!7677602))

(declare-fun m!7677604 () Bool)

(assert (=> b!6989097 m!7677604))

(assert (=> b!6989012 d!2177002))

(declare-fun d!2177004 () Bool)

(declare-fun e!4200778 () Bool)

(assert (=> d!2177004 e!4200778))

(declare-fun res!2850247 () Bool)

(assert (=> d!2177004 (=> (not res!2850247) (not e!4200778))))

(declare-fun lt!2486485 () List!67195)

(declare-fun noDuplicate!2521 (List!67195) Bool)

(assert (=> d!2177004 (= res!2850247 (noDuplicate!2521 lt!2486485))))

(declare-fun choose!52240 ((Set Context!12424)) List!67195)

(assert (=> d!2177004 (= lt!2486485 (choose!52240 lt!2486370))))

(assert (=> d!2177004 (= (toList!10576 lt!2486370) lt!2486485)))

(declare-fun b!6989100 () Bool)

(assert (=> b!6989100 (= e!4200778 (= (content!13254 lt!2486485) lt!2486370))))

(assert (= (and d!2177004 res!2850247) b!6989100))

(declare-fun m!7677606 () Bool)

(assert (=> d!2177004 m!7677606))

(declare-fun m!7677608 () Bool)

(assert (=> d!2177004 m!7677608))

(declare-fun m!7677610 () Bool)

(assert (=> b!6989100 m!7677610))

(assert (=> b!6989012 d!2177004))

(declare-fun bs!1862070 () Bool)

(declare-fun d!2177006 () Bool)

(assert (= bs!1862070 (and d!2177006 b!6989012)))

(declare-fun lambda!401427 () Int)

(assert (=> bs!1862070 (not (= lambda!401427 lambda!401369))))

(declare-fun bs!1862071 () Bool)

(assert (= bs!1862071 (and d!2177006 d!2177000)))

(assert (=> bs!1862071 (not (= lambda!401427 lambda!401424))))

(assert (=> d!2177006 true))

(declare-fun order!27915 () Int)

(declare-fun dynLambda!26889 (Int Int) Int)

(assert (=> d!2177006 (< (dynLambda!26889 order!27915 lambda!401369) (dynLambda!26889 order!27915 lambda!401427))))

(declare-fun forall!16132 (List!67195 Int) Bool)

(assert (=> d!2177006 (= (exists!3002 lt!2486346 lambda!401369) (not (forall!16132 lt!2486346 lambda!401427)))))

(declare-fun bs!1862072 () Bool)

(assert (= bs!1862072 d!2177006))

(declare-fun m!7677612 () Bool)

(assert (=> bs!1862072 m!7677612))

(assert (=> b!6989012 d!2177006))

(declare-fun d!2177008 () Bool)

(declare-fun e!4200781 () Bool)

(assert (=> d!2177008 e!4200781))

(declare-fun res!2850250 () Bool)

(assert (=> d!2177008 (=> (not res!2850250) (not e!4200781))))

(declare-fun lt!2486488 () Context!12424)

(declare-fun dynLambda!26890 (Int Context!12424) Bool)

(assert (=> d!2177008 (= res!2850250 (dynLambda!26890 lambda!401369 lt!2486488))))

(declare-fun getWitness!1115 (List!67195 Int) Context!12424)

(assert (=> d!2177008 (= lt!2486488 (getWitness!1115 (toList!10576 lt!2486370) lambda!401369))))

(declare-fun exists!3004 ((Set Context!12424) Int) Bool)

(assert (=> d!2177008 (exists!3004 lt!2486370 lambda!401369)))

(assert (=> d!2177008 (= (getWitness!1113 lt!2486370 lambda!401369) lt!2486488)))

(declare-fun b!6989105 () Bool)

(assert (=> b!6989105 (= e!4200781 (set.member lt!2486488 lt!2486370))))

(assert (= (and d!2177008 res!2850250) b!6989105))

(declare-fun b_lambda!262491 () Bool)

(assert (=> (not b_lambda!262491) (not d!2177008)))

(declare-fun m!7677614 () Bool)

(assert (=> d!2177008 m!7677614))

(assert (=> d!2177008 m!7677490))

(assert (=> d!2177008 m!7677490))

(declare-fun m!7677616 () Bool)

(assert (=> d!2177008 m!7677616))

(declare-fun m!7677618 () Bool)

(assert (=> d!2177008 m!7677618))

(declare-fun m!7677620 () Bool)

(assert (=> b!6989105 m!7677620))

(assert (=> b!6989012 d!2177008))

(declare-fun d!2177010 () Bool)

(declare-fun e!4200784 () Bool)

(assert (=> d!2177010 (= (matchZipper!2756 (set.union lt!2486362 lt!2486366) (t!380941 s!7408)) e!4200784)))

(declare-fun res!2850253 () Bool)

(assert (=> d!2177010 (=> res!2850253 e!4200784)))

(assert (=> d!2177010 (= res!2850253 (matchZipper!2756 lt!2486362 (t!380941 s!7408)))))

(declare-fun lt!2486491 () Unit!161087)

(declare-fun choose!52241 ((Set Context!12424) (Set Context!12424) List!67194) Unit!161087)

(assert (=> d!2177010 (= lt!2486491 (choose!52241 lt!2486362 lt!2486366 (t!380941 s!7408)))))

(assert (=> d!2177010 (= (lemmaZipperConcatMatchesSameAsBothZippers!1389 lt!2486362 lt!2486366 (t!380941 s!7408)) lt!2486491)))

(declare-fun b!6989108 () Bool)

(assert (=> b!6989108 (= e!4200784 (matchZipper!2756 lt!2486366 (t!380941 s!7408)))))

(assert (= (and d!2177010 (not res!2850253)) b!6989108))

(declare-fun m!7677622 () Bool)

(assert (=> d!2177010 m!7677622))

(assert (=> d!2177010 m!7677506))

(declare-fun m!7677624 () Bool)

(assert (=> d!2177010 m!7677624))

(assert (=> b!6989108 m!7677432))

(assert (=> b!6989003 d!2177010))

(declare-fun d!2177012 () Bool)

(assert (=> d!2177012 (forall!16130 (++!15161 lt!2486357 (exprs!6712 ct2!306)) lambda!401371)))

(declare-fun lt!2486494 () Unit!161087)

(declare-fun choose!52242 (List!67193 List!67193 Int) Unit!161087)

(assert (=> d!2177012 (= lt!2486494 (choose!52242 lt!2486357 (exprs!6712 ct2!306) lambda!401371))))

(assert (=> d!2177012 (forall!16130 lt!2486357 lambda!401371)))

(assert (=> d!2177012 (= (lemmaConcatPreservesForall!552 lt!2486357 (exprs!6712 ct2!306) lambda!401371) lt!2486494)))

(declare-fun bs!1862073 () Bool)

(assert (= bs!1862073 d!2177012))

(assert (=> bs!1862073 m!7677452))

(assert (=> bs!1862073 m!7677452))

(declare-fun m!7677626 () Bool)

(assert (=> bs!1862073 m!7677626))

(declare-fun m!7677628 () Bool)

(assert (=> bs!1862073 m!7677628))

(assert (=> bs!1862073 m!7677480))

(assert (=> b!6989003 d!2177012))

(declare-fun d!2177014 () Bool)

(declare-fun c!1296239 () Bool)

(assert (=> d!2177014 (= c!1296239 (isEmpty!39149 (t!380941 s!7408)))))

(declare-fun e!4200785 () Bool)

(assert (=> d!2177014 (= (matchZipper!2756 lt!2486345 (t!380941 s!7408)) e!4200785)))

(declare-fun b!6989109 () Bool)

(assert (=> b!6989109 (= e!4200785 (nullableZipper!2434 lt!2486345))))

(declare-fun b!6989110 () Bool)

(assert (=> b!6989110 (= e!4200785 (matchZipper!2756 (derivationStepZipper!2696 lt!2486345 (head!14109 (t!380941 s!7408))) (tail!13225 (t!380941 s!7408))))))

(assert (= (and d!2177014 c!1296239) b!6989109))

(assert (= (and d!2177014 (not c!1296239)) b!6989110))

(declare-fun m!7677630 () Bool)

(assert (=> d!2177014 m!7677630))

(declare-fun m!7677632 () Bool)

(assert (=> b!6989109 m!7677632))

(declare-fun m!7677634 () Bool)

(assert (=> b!6989110 m!7677634))

(assert (=> b!6989110 m!7677634))

(declare-fun m!7677636 () Bool)

(assert (=> b!6989110 m!7677636))

(declare-fun m!7677638 () Bool)

(assert (=> b!6989110 m!7677638))

(assert (=> b!6989110 m!7677636))

(assert (=> b!6989110 m!7677638))

(declare-fun m!7677640 () Bool)

(assert (=> b!6989110 m!7677640))

(assert (=> b!6989003 d!2177014))

(declare-fun d!2177016 () Bool)

(declare-fun c!1296240 () Bool)

(assert (=> d!2177016 (= c!1296240 (isEmpty!39149 (t!380941 s!7408)))))

(declare-fun e!4200786 () Bool)

(assert (=> d!2177016 (= (matchZipper!2756 lt!2486368 (t!380941 s!7408)) e!4200786)))

(declare-fun b!6989111 () Bool)

(assert (=> b!6989111 (= e!4200786 (nullableZipper!2434 lt!2486368))))

(declare-fun b!6989112 () Bool)

(assert (=> b!6989112 (= e!4200786 (matchZipper!2756 (derivationStepZipper!2696 lt!2486368 (head!14109 (t!380941 s!7408))) (tail!13225 (t!380941 s!7408))))))

(assert (= (and d!2177016 c!1296240) b!6989111))

(assert (= (and d!2177016 (not c!1296240)) b!6989112))

(assert (=> d!2177016 m!7677630))

(declare-fun m!7677642 () Bool)

(assert (=> b!6989111 m!7677642))

(assert (=> b!6989112 m!7677634))

(assert (=> b!6989112 m!7677634))

(declare-fun m!7677644 () Bool)

(assert (=> b!6989112 m!7677644))

(assert (=> b!6989112 m!7677638))

(assert (=> b!6989112 m!7677644))

(assert (=> b!6989112 m!7677638))

(declare-fun m!7677646 () Bool)

(assert (=> b!6989112 m!7677646))

(assert (=> b!6989003 d!2177016))

(declare-fun d!2177018 () Bool)

(declare-fun c!1296241 () Bool)

(assert (=> d!2177018 (= c!1296241 (isEmpty!39149 (t!380941 s!7408)))))

(declare-fun e!4200787 () Bool)

(assert (=> d!2177018 (= (matchZipper!2756 lt!2486362 (t!380941 s!7408)) e!4200787)))

(declare-fun b!6989113 () Bool)

(assert (=> b!6989113 (= e!4200787 (nullableZipper!2434 lt!2486362))))

(declare-fun b!6989114 () Bool)

(assert (=> b!6989114 (= e!4200787 (matchZipper!2756 (derivationStepZipper!2696 lt!2486362 (head!14109 (t!380941 s!7408))) (tail!13225 (t!380941 s!7408))))))

(assert (= (and d!2177018 c!1296241) b!6989113))

(assert (= (and d!2177018 (not c!1296241)) b!6989114))

(assert (=> d!2177018 m!7677630))

(declare-fun m!7677648 () Bool)

(assert (=> b!6989113 m!7677648))

(assert (=> b!6989114 m!7677634))

(assert (=> b!6989114 m!7677634))

(declare-fun m!7677650 () Bool)

(assert (=> b!6989114 m!7677650))

(assert (=> b!6989114 m!7677638))

(assert (=> b!6989114 m!7677650))

(assert (=> b!6989114 m!7677638))

(declare-fun m!7677652 () Bool)

(assert (=> b!6989114 m!7677652))

(assert (=> b!6989003 d!2177018))

(declare-fun d!2177020 () Bool)

(declare-fun res!2850258 () Bool)

(declare-fun e!4200792 () Bool)

(assert (=> d!2177020 (=> res!2850258 e!4200792)))

(assert (=> d!2177020 (= res!2850258 (is-Nil!67069 (exprs!6712 ct2!306)))))

(assert (=> d!2177020 (= (forall!16130 (exprs!6712 ct2!306) lambda!401371) e!4200792)))

(declare-fun b!6989119 () Bool)

(declare-fun e!4200793 () Bool)

(assert (=> b!6989119 (= e!4200792 e!4200793)))

(declare-fun res!2850259 () Bool)

(assert (=> b!6989119 (=> (not res!2850259) (not e!4200793))))

(declare-fun dynLambda!26891 (Int Regex!17216) Bool)

(assert (=> b!6989119 (= res!2850259 (dynLambda!26891 lambda!401371 (h!73517 (exprs!6712 ct2!306))))))

(declare-fun b!6989120 () Bool)

(assert (=> b!6989120 (= e!4200793 (forall!16130 (t!380940 (exprs!6712 ct2!306)) lambda!401371))))

(assert (= (and d!2177020 (not res!2850258)) b!6989119))

(assert (= (and b!6989119 res!2850259) b!6989120))

(declare-fun b_lambda!262493 () Bool)

(assert (=> (not b_lambda!262493) (not b!6989119)))

(declare-fun m!7677654 () Bool)

(assert (=> b!6989119 m!7677654))

(declare-fun m!7677656 () Bool)

(assert (=> b!6989120 m!7677656))

(assert (=> b!6989013 d!2177020))

(declare-fun d!2177022 () Bool)

(declare-fun choose!52243 ((Set Context!12424) Int) (Set Context!12424))

(assert (=> d!2177022 (= (flatMap!2202 lt!2486342 lambda!401372) (choose!52243 lt!2486342 lambda!401372))))

(declare-fun bs!1862074 () Bool)

(assert (= bs!1862074 d!2177022))

(declare-fun m!7677658 () Bool)

(assert (=> bs!1862074 m!7677658))

(assert (=> b!6989001 d!2177022))

(declare-fun bs!1862075 () Bool)

(declare-fun d!2177024 () Bool)

(assert (= bs!1862075 (and d!2177024 b!6989001)))

(declare-fun lambda!401430 () Int)

(assert (=> bs!1862075 (= lambda!401430 lambda!401372)))

(assert (=> d!2177024 true))

(assert (=> d!2177024 (= (derivationStepZipper!2696 lt!2486342 (h!73518 s!7408)) (flatMap!2202 lt!2486342 lambda!401430))))

(declare-fun bs!1862076 () Bool)

(assert (= bs!1862076 d!2177024))

(declare-fun m!7677660 () Bool)

(assert (=> bs!1862076 m!7677660))

(assert (=> b!6989001 d!2177024))

(declare-fun d!2177026 () Bool)

(assert (=> d!2177026 (forall!16130 (++!15161 (exprs!6712 lt!2486352) (exprs!6712 ct2!306)) lambda!401371)))

(declare-fun lt!2486495 () Unit!161087)

(assert (=> d!2177026 (= lt!2486495 (choose!52242 (exprs!6712 lt!2486352) (exprs!6712 ct2!306) lambda!401371))))

(assert (=> d!2177026 (forall!16130 (exprs!6712 lt!2486352) lambda!401371)))

(assert (=> d!2177026 (= (lemmaConcatPreservesForall!552 (exprs!6712 lt!2486352) (exprs!6712 ct2!306) lambda!401371) lt!2486495)))

(declare-fun bs!1862077 () Bool)

(assert (= bs!1862077 d!2177026))

(assert (=> bs!1862077 m!7677496))

(assert (=> bs!1862077 m!7677496))

(declare-fun m!7677662 () Bool)

(assert (=> bs!1862077 m!7677662))

(declare-fun m!7677664 () Bool)

(assert (=> bs!1862077 m!7677664))

(declare-fun m!7677666 () Bool)

(assert (=> bs!1862077 m!7677666))

(assert (=> b!6989001 d!2177026))

(declare-fun b!6989133 () Bool)

(declare-fun e!4200802 () (Set Context!12424))

(assert (=> b!6989133 (= e!4200802 (as set.empty (Set Context!12424)))))

(declare-fun b!6989134 () Bool)

(declare-fun e!4200800 () (Set Context!12424))

(assert (=> b!6989134 (= e!4200800 e!4200802)))

(declare-fun c!1296248 () Bool)

(assert (=> b!6989134 (= c!1296248 (is-Cons!67069 (exprs!6712 lt!2486354)))))

(declare-fun bm!634463 () Bool)

(declare-fun call!634468 () (Set Context!12424))

(assert (=> bm!634463 (= call!634468 (derivationStepZipperDown!1934 (h!73517 (exprs!6712 lt!2486354)) (Context!12425 (t!380940 (exprs!6712 lt!2486354))) (h!73518 s!7408)))))

(declare-fun b!6989135 () Bool)

(declare-fun e!4200801 () Bool)

(assert (=> b!6989135 (= e!4200801 (nullable!6976 (h!73517 (exprs!6712 lt!2486354))))))

(declare-fun d!2177028 () Bool)

(declare-fun c!1296249 () Bool)

(assert (=> d!2177028 (= c!1296249 e!4200801)))

(declare-fun res!2850262 () Bool)

(assert (=> d!2177028 (=> (not res!2850262) (not e!4200801))))

(assert (=> d!2177028 (= res!2850262 (is-Cons!67069 (exprs!6712 lt!2486354)))))

(assert (=> d!2177028 (= (derivationStepZipperUp!1866 lt!2486354 (h!73518 s!7408)) e!4200800)))

(declare-fun b!6989136 () Bool)

(assert (=> b!6989136 (= e!4200802 call!634468)))

(declare-fun b!6989137 () Bool)

(assert (=> b!6989137 (= e!4200800 (set.union call!634468 (derivationStepZipperUp!1866 (Context!12425 (t!380940 (exprs!6712 lt!2486354))) (h!73518 s!7408))))))

(assert (= (and d!2177028 res!2850262) b!6989135))

(assert (= (and d!2177028 c!1296249) b!6989137))

(assert (= (and d!2177028 (not c!1296249)) b!6989134))

(assert (= (and b!6989134 c!1296248) b!6989136))

(assert (= (and b!6989134 (not c!1296248)) b!6989133))

(assert (= (or b!6989137 b!6989136) bm!634463))

(declare-fun m!7677668 () Bool)

(assert (=> bm!634463 m!7677668))

(declare-fun m!7677670 () Bool)

(assert (=> b!6989135 m!7677670))

(declare-fun m!7677672 () Bool)

(assert (=> b!6989137 m!7677672))

(assert (=> b!6989001 d!2177028))

(declare-fun d!2177030 () Bool)

(declare-fun dynLambda!26892 (Int Context!12424) (Set Context!12424))

(assert (=> d!2177030 (= (flatMap!2202 lt!2486342 lambda!401372) (dynLambda!26892 lambda!401372 lt!2486354))))

(declare-fun lt!2486498 () Unit!161087)

(declare-fun choose!52244 ((Set Context!12424) Context!12424 Int) Unit!161087)

(assert (=> d!2177030 (= lt!2486498 (choose!52244 lt!2486342 lt!2486354 lambda!401372))))

(assert (=> d!2177030 (= lt!2486342 (set.insert lt!2486354 (as set.empty (Set Context!12424))))))

(assert (=> d!2177030 (= (lemmaFlatMapOnSingletonSet!1717 lt!2486342 lt!2486354 lambda!401372) lt!2486498)))

(declare-fun b_lambda!262495 () Bool)

(assert (=> (not b_lambda!262495) (not d!2177030)))

(declare-fun bs!1862078 () Bool)

(assert (= bs!1862078 d!2177030))

(assert (=> bs!1862078 m!7677476))

(declare-fun m!7677674 () Bool)

(assert (=> bs!1862078 m!7677674))

(declare-fun m!7677676 () Bool)

(assert (=> bs!1862078 m!7677676))

(assert (=> bs!1862078 m!7677458))

(assert (=> b!6989001 d!2177030))

(declare-fun d!2177032 () Bool)

(declare-fun c!1296250 () Bool)

(assert (=> d!2177032 (= c!1296250 (isEmpty!39149 s!7408))))

(declare-fun e!4200803 () Bool)

(assert (=> d!2177032 (= (matchZipper!2756 lt!2486370 s!7408) e!4200803)))

(declare-fun b!6989138 () Bool)

(assert (=> b!6989138 (= e!4200803 (nullableZipper!2434 lt!2486370))))

(declare-fun b!6989139 () Bool)

(assert (=> b!6989139 (= e!4200803 (matchZipper!2756 (derivationStepZipper!2696 lt!2486370 (head!14109 s!7408)) (tail!13225 s!7408)))))

(assert (= (and d!2177032 c!1296250) b!6989138))

(assert (= (and d!2177032 (not c!1296250)) b!6989139))

(assert (=> d!2177032 m!7677594))

(declare-fun m!7677678 () Bool)

(assert (=> b!6989138 m!7677678))

(assert (=> b!6989139 m!7677598))

(assert (=> b!6989139 m!7677598))

(declare-fun m!7677680 () Bool)

(assert (=> b!6989139 m!7677680))

(assert (=> b!6989139 m!7677602))

(assert (=> b!6989139 m!7677680))

(assert (=> b!6989139 m!7677602))

(declare-fun m!7677682 () Bool)

(assert (=> b!6989139 m!7677682))

(assert (=> start!671564 d!2177032))

(declare-fun bs!1862079 () Bool)

(declare-fun d!2177034 () Bool)

(assert (= bs!1862079 (and d!2177034 b!6989007)))

(declare-fun lambda!401435 () Int)

(assert (=> bs!1862079 (= lambda!401435 lambda!401370)))

(assert (=> d!2177034 true))

(declare-fun map!15476 ((Set Context!12424) Int) (Set Context!12424))

(assert (=> d!2177034 (= (appendTo!337 z1!570 ct2!306) (map!15476 z1!570 lambda!401435))))

(declare-fun bs!1862080 () Bool)

(assert (= bs!1862080 d!2177034))

(declare-fun m!7677684 () Bool)

(assert (=> bs!1862080 m!7677684))

(assert (=> start!671564 d!2177034))

(declare-fun bs!1862081 () Bool)

(declare-fun d!2177036 () Bool)

(assert (= bs!1862081 (and d!2177036 b!6989007)))

(declare-fun lambda!401436 () Int)

(assert (=> bs!1862081 (= lambda!401436 lambda!401371)))

(declare-fun bs!1862082 () Bool)

(assert (= bs!1862082 (and d!2177036 d!2176998)))

(assert (=> bs!1862082 (= lambda!401436 lambda!401421)))

(assert (=> d!2177036 (= (inv!85900 ct2!306) (forall!16130 (exprs!6712 ct2!306) lambda!401436))))

(declare-fun bs!1862083 () Bool)

(assert (= bs!1862083 d!2177036))

(declare-fun m!7677686 () Bool)

(assert (=> bs!1862083 m!7677686))

(assert (=> start!671564 d!2177036))

(declare-fun d!2177038 () Bool)

(assert (=> d!2177038 (= (isEmpty!39147 (exprs!6712 lt!2486352)) (is-Nil!67069 (exprs!6712 lt!2486352)))))

(assert (=> b!6989002 d!2177038))

(declare-fun d!2177040 () Bool)

(declare-fun res!2850263 () Bool)

(declare-fun e!4200804 () Bool)

(assert (=> d!2177040 (=> res!2850263 e!4200804)))

(assert (=> d!2177040 (= res!2850263 (is-Nil!67069 lt!2486357))))

(assert (=> d!2177040 (= (forall!16130 lt!2486357 lambda!401371) e!4200804)))

(declare-fun b!6989140 () Bool)

(declare-fun e!4200805 () Bool)

(assert (=> b!6989140 (= e!4200804 e!4200805)))

(declare-fun res!2850264 () Bool)

(assert (=> b!6989140 (=> (not res!2850264) (not e!4200805))))

(assert (=> b!6989140 (= res!2850264 (dynLambda!26891 lambda!401371 (h!73517 lt!2486357)))))

(declare-fun b!6989141 () Bool)

(assert (=> b!6989141 (= e!4200805 (forall!16130 (t!380940 lt!2486357) lambda!401371))))

(assert (= (and d!2177040 (not res!2850263)) b!6989140))

(assert (= (and b!6989140 res!2850264) b!6989141))

(declare-fun b_lambda!262497 () Bool)

(assert (=> (not b_lambda!262497) (not b!6989140)))

(declare-fun m!7677688 () Bool)

(assert (=> b!6989140 m!7677688))

(declare-fun m!7677690 () Bool)

(assert (=> b!6989141 m!7677690))

(assert (=> b!6988997 d!2177040))

(declare-fun b!6989152 () Bool)

(declare-fun res!2850270 () Bool)

(declare-fun e!4200811 () Bool)

(assert (=> b!6989152 (=> (not res!2850270) (not e!4200811))))

(declare-fun lt!2486503 () List!67193)

(declare-fun size!40902 (List!67193) Int)

(assert (=> b!6989152 (= res!2850270 (= (size!40902 lt!2486503) (+ (size!40902 (exprs!6712 lt!2486352)) (size!40902 (exprs!6712 ct2!306)))))))

(declare-fun b!6989150 () Bool)

(declare-fun e!4200810 () List!67193)

(assert (=> b!6989150 (= e!4200810 (exprs!6712 ct2!306))))

(declare-fun d!2177042 () Bool)

(assert (=> d!2177042 e!4200811))

(declare-fun res!2850269 () Bool)

(assert (=> d!2177042 (=> (not res!2850269) (not e!4200811))))

(declare-fun content!13255 (List!67193) (Set Regex!17216))

(assert (=> d!2177042 (= res!2850269 (= (content!13255 lt!2486503) (set.union (content!13255 (exprs!6712 lt!2486352)) (content!13255 (exprs!6712 ct2!306)))))))

(assert (=> d!2177042 (= lt!2486503 e!4200810)))

(declare-fun c!1296254 () Bool)

(assert (=> d!2177042 (= c!1296254 (is-Nil!67069 (exprs!6712 lt!2486352)))))

(assert (=> d!2177042 (= (++!15161 (exprs!6712 lt!2486352) (exprs!6712 ct2!306)) lt!2486503)))

(declare-fun b!6989153 () Bool)

(assert (=> b!6989153 (= e!4200811 (or (not (= (exprs!6712 ct2!306) Nil!67069)) (= lt!2486503 (exprs!6712 lt!2486352))))))

(declare-fun b!6989151 () Bool)

(assert (=> b!6989151 (= e!4200810 (Cons!67069 (h!73517 (exprs!6712 lt!2486352)) (++!15161 (t!380940 (exprs!6712 lt!2486352)) (exprs!6712 ct2!306))))))

(assert (= (and d!2177042 c!1296254) b!6989150))

(assert (= (and d!2177042 (not c!1296254)) b!6989151))

(assert (= (and d!2177042 res!2850269) b!6989152))

(assert (= (and b!6989152 res!2850270) b!6989153))

(declare-fun m!7677692 () Bool)

(assert (=> b!6989152 m!7677692))

(declare-fun m!7677694 () Bool)

(assert (=> b!6989152 m!7677694))

(declare-fun m!7677696 () Bool)

(assert (=> b!6989152 m!7677696))

(declare-fun m!7677698 () Bool)

(assert (=> d!2177042 m!7677698))

(declare-fun m!7677700 () Bool)

(assert (=> d!2177042 m!7677700))

(declare-fun m!7677702 () Bool)

(assert (=> d!2177042 m!7677702))

(declare-fun m!7677704 () Bool)

(assert (=> b!6989151 m!7677704))

(assert (=> b!6989007 d!2177042))

(assert (=> b!6989007 d!2177026))

(declare-fun d!2177044 () Bool)

(declare-fun e!4200814 () Bool)

(assert (=> d!2177044 e!4200814))

(declare-fun res!2850273 () Bool)

(assert (=> d!2177044 (=> (not res!2850273) (not e!4200814))))

(declare-fun lt!2486506 () Context!12424)

(declare-fun dynLambda!26893 (Int Context!12424) Context!12424)

(assert (=> d!2177044 (= res!2850273 (= lt!2486373 (dynLambda!26893 lambda!401370 lt!2486506)))))

(declare-fun choose!52245 ((Set Context!12424) Int Context!12424) Context!12424)

(assert (=> d!2177044 (= lt!2486506 (choose!52245 z1!570 lambda!401370 lt!2486373))))

(assert (=> d!2177044 (set.member lt!2486373 (map!15476 z1!570 lambda!401370))))

(assert (=> d!2177044 (= (mapPost2!71 z1!570 lambda!401370 lt!2486373) lt!2486506)))

(declare-fun b!6989157 () Bool)

(assert (=> b!6989157 (= e!4200814 (set.member lt!2486506 z1!570))))

(assert (= (and d!2177044 res!2850273) b!6989157))

(declare-fun b_lambda!262499 () Bool)

(assert (=> (not b_lambda!262499) (not d!2177044)))

(declare-fun m!7677706 () Bool)

(assert (=> d!2177044 m!7677706))

(declare-fun m!7677708 () Bool)

(assert (=> d!2177044 m!7677708))

(declare-fun m!7677710 () Bool)

(assert (=> d!2177044 m!7677710))

(declare-fun m!7677712 () Bool)

(assert (=> d!2177044 m!7677712))

(declare-fun m!7677714 () Bool)

(assert (=> b!6989157 m!7677714))

(assert (=> b!6989007 d!2177044))

(assert (=> b!6988998 d!2177026))

(declare-fun bs!1862084 () Bool)

(declare-fun d!2177046 () Bool)

(assert (= bs!1862084 (and d!2177046 b!6989001)))

(declare-fun lambda!401437 () Int)

(assert (=> bs!1862084 (= lambda!401437 lambda!401372)))

(declare-fun bs!1862085 () Bool)

(assert (= bs!1862085 (and d!2177046 d!2177024)))

(assert (=> bs!1862085 (= lambda!401437 lambda!401430)))

(assert (=> d!2177046 true))

(assert (=> d!2177046 (= (derivationStepZipper!2696 lt!2486351 (h!73518 s!7408)) (flatMap!2202 lt!2486351 lambda!401437))))

(declare-fun bs!1862086 () Bool)

(assert (= bs!1862086 d!2177046))

(declare-fun m!7677716 () Bool)

(assert (=> bs!1862086 m!7677716))

(assert (=> b!6989004 d!2177046))

(assert (=> b!6989004 d!2177012))

(declare-fun d!2177048 () Bool)

(assert (=> d!2177048 (= (flatMap!2202 lt!2486351 lambda!401372) (choose!52243 lt!2486351 lambda!401372))))

(declare-fun bs!1862087 () Bool)

(assert (= bs!1862087 d!2177048))

(declare-fun m!7677718 () Bool)

(assert (=> bs!1862087 m!7677718))

(assert (=> b!6989004 d!2177048))

(declare-fun b!6989158 () Bool)

(declare-fun e!4200817 () (Set Context!12424))

(assert (=> b!6989158 (= e!4200817 (as set.empty (Set Context!12424)))))

(declare-fun b!6989159 () Bool)

(declare-fun e!4200815 () (Set Context!12424))

(assert (=> b!6989159 (= e!4200815 e!4200817)))

(declare-fun c!1296255 () Bool)

(assert (=> b!6989159 (= c!1296255 (is-Cons!67069 (exprs!6712 lt!2486361)))))

(declare-fun bm!634464 () Bool)

(declare-fun call!634469 () (Set Context!12424))

(assert (=> bm!634464 (= call!634469 (derivationStepZipperDown!1934 (h!73517 (exprs!6712 lt!2486361)) (Context!12425 (t!380940 (exprs!6712 lt!2486361))) (h!73518 s!7408)))))

(declare-fun b!6989160 () Bool)

(declare-fun e!4200816 () Bool)

(assert (=> b!6989160 (= e!4200816 (nullable!6976 (h!73517 (exprs!6712 lt!2486361))))))

(declare-fun d!2177050 () Bool)

(declare-fun c!1296256 () Bool)

(assert (=> d!2177050 (= c!1296256 e!4200816)))

(declare-fun res!2850274 () Bool)

(assert (=> d!2177050 (=> (not res!2850274) (not e!4200816))))

(assert (=> d!2177050 (= res!2850274 (is-Cons!67069 (exprs!6712 lt!2486361)))))

(assert (=> d!2177050 (= (derivationStepZipperUp!1866 lt!2486361 (h!73518 s!7408)) e!4200815)))

(declare-fun b!6989161 () Bool)

(assert (=> b!6989161 (= e!4200817 call!634469)))

(declare-fun b!6989162 () Bool)

(assert (=> b!6989162 (= e!4200815 (set.union call!634469 (derivationStepZipperUp!1866 (Context!12425 (t!380940 (exprs!6712 lt!2486361))) (h!73518 s!7408))))))

(assert (= (and d!2177050 res!2850274) b!6989160))

(assert (= (and d!2177050 c!1296256) b!6989162))

(assert (= (and d!2177050 (not c!1296256)) b!6989159))

(assert (= (and b!6989159 c!1296255) b!6989161))

(assert (= (and b!6989159 (not c!1296255)) b!6989158))

(assert (= (or b!6989162 b!6989161) bm!634464))

(declare-fun m!7677720 () Bool)

(assert (=> bm!634464 m!7677720))

(declare-fun m!7677722 () Bool)

(assert (=> b!6989160 m!7677722))

(declare-fun m!7677724 () Bool)

(assert (=> b!6989162 m!7677724))

(assert (=> b!6989004 d!2177050))

(declare-fun d!2177052 () Bool)

(assert (=> d!2177052 (= (flatMap!2202 lt!2486351 lambda!401372) (dynLambda!26892 lambda!401372 lt!2486361))))

(declare-fun lt!2486507 () Unit!161087)

(assert (=> d!2177052 (= lt!2486507 (choose!52244 lt!2486351 lt!2486361 lambda!401372))))

(assert (=> d!2177052 (= lt!2486351 (set.insert lt!2486361 (as set.empty (Set Context!12424))))))

(assert (=> d!2177052 (= (lemmaFlatMapOnSingletonSet!1717 lt!2486351 lt!2486361 lambda!401372) lt!2486507)))

(declare-fun b_lambda!262501 () Bool)

(assert (=> (not b_lambda!262501) (not d!2177052)))

(declare-fun bs!1862088 () Bool)

(assert (= bs!1862088 d!2177052))

(assert (=> bs!1862088 m!7677444))

(declare-fun m!7677726 () Bool)

(assert (=> bs!1862088 m!7677726))

(declare-fun m!7677728 () Bool)

(assert (=> bs!1862088 m!7677728))

(assert (=> bs!1862088 m!7677446))

(assert (=> b!6989004 d!2177052))

(declare-fun d!2177054 () Bool)

(declare-fun c!1296257 () Bool)

(assert (=> d!2177054 (= c!1296257 (isEmpty!39149 (t!380941 s!7408)))))

(declare-fun e!4200818 () Bool)

(assert (=> d!2177054 (= (matchZipper!2756 lt!2486366 (t!380941 s!7408)) e!4200818)))

(declare-fun b!6989163 () Bool)

(assert (=> b!6989163 (= e!4200818 (nullableZipper!2434 lt!2486366))))

(declare-fun b!6989164 () Bool)

(assert (=> b!6989164 (= e!4200818 (matchZipper!2756 (derivationStepZipper!2696 lt!2486366 (head!14109 (t!380941 s!7408))) (tail!13225 (t!380941 s!7408))))))

(assert (= (and d!2177054 c!1296257) b!6989163))

(assert (= (and d!2177054 (not c!1296257)) b!6989164))

(assert (=> d!2177054 m!7677630))

(declare-fun m!7677730 () Bool)

(assert (=> b!6989163 m!7677730))

(assert (=> b!6989164 m!7677634))

(assert (=> b!6989164 m!7677634))

(declare-fun m!7677732 () Bool)

(assert (=> b!6989164 m!7677732))

(assert (=> b!6989164 m!7677638))

(assert (=> b!6989164 m!7677732))

(assert (=> b!6989164 m!7677638))

(declare-fun m!7677734 () Bool)

(assert (=> b!6989164 m!7677734))

(assert (=> b!6989014 d!2177054))

(assert (=> b!6989014 d!2177012))

(assert (=> b!6989005 d!2177054))

(declare-fun d!2177056 () Bool)

(declare-fun nullableFct!2635 (Regex!17216) Bool)

(assert (=> d!2177056 (= (nullable!6976 (h!73517 (exprs!6712 lt!2486352))) (nullableFct!2635 (h!73517 (exprs!6712 lt!2486352))))))

(declare-fun bs!1862089 () Bool)

(assert (= bs!1862089 d!2177056))

(declare-fun m!7677736 () Bool)

(assert (=> bs!1862089 m!7677736))

(assert (=> b!6988996 d!2177056))

(declare-fun d!2177058 () Bool)

(assert (=> d!2177058 (= (tail!13223 (exprs!6712 lt!2486352)) (t!380940 (exprs!6712 lt!2486352)))))

(assert (=> b!6988996 d!2177058))

(assert (=> b!6989006 d!2177054))

(assert (=> b!6989006 d!2177012))

(assert (=> b!6989016 d!2177012))

(assert (=> b!6989016 d!2177050))

(declare-fun b!6989167 () Bool)

(declare-fun res!2850276 () Bool)

(declare-fun e!4200820 () Bool)

(assert (=> b!6989167 (=> (not res!2850276) (not e!4200820))))

(declare-fun lt!2486508 () List!67193)

(assert (=> b!6989167 (= res!2850276 (= (size!40902 lt!2486508) (+ (size!40902 lt!2486357) (size!40902 (exprs!6712 ct2!306)))))))

(declare-fun b!6989165 () Bool)

(declare-fun e!4200819 () List!67193)

(assert (=> b!6989165 (= e!4200819 (exprs!6712 ct2!306))))

(declare-fun d!2177060 () Bool)

(assert (=> d!2177060 e!4200820))

(declare-fun res!2850275 () Bool)

(assert (=> d!2177060 (=> (not res!2850275) (not e!4200820))))

(assert (=> d!2177060 (= res!2850275 (= (content!13255 lt!2486508) (set.union (content!13255 lt!2486357) (content!13255 (exprs!6712 ct2!306)))))))

(assert (=> d!2177060 (= lt!2486508 e!4200819)))

(declare-fun c!1296258 () Bool)

(assert (=> d!2177060 (= c!1296258 (is-Nil!67069 lt!2486357))))

(assert (=> d!2177060 (= (++!15161 lt!2486357 (exprs!6712 ct2!306)) lt!2486508)))

(declare-fun b!6989168 () Bool)

(assert (=> b!6989168 (= e!4200820 (or (not (= (exprs!6712 ct2!306) Nil!67069)) (= lt!2486508 lt!2486357)))))

(declare-fun b!6989166 () Bool)

(assert (=> b!6989166 (= e!4200819 (Cons!67069 (h!73517 lt!2486357) (++!15161 (t!380940 lt!2486357) (exprs!6712 ct2!306))))))

(assert (= (and d!2177060 c!1296258) b!6989165))

(assert (= (and d!2177060 (not c!1296258)) b!6989166))

(assert (= (and d!2177060 res!2850275) b!6989167))

(assert (= (and b!6989167 res!2850276) b!6989168))

(declare-fun m!7677738 () Bool)

(assert (=> b!6989167 m!7677738))

(declare-fun m!7677740 () Bool)

(assert (=> b!6989167 m!7677740))

(assert (=> b!6989167 m!7677696))

(declare-fun m!7677742 () Bool)

(assert (=> d!2177060 m!7677742))

(declare-fun m!7677744 () Bool)

(assert (=> d!2177060 m!7677744))

(assert (=> d!2177060 m!7677702))

(declare-fun m!7677746 () Bool)

(assert (=> b!6989166 m!7677746))

(assert (=> b!6989016 d!2177060))

(declare-fun bm!634477 () Bool)

(declare-fun call!634485 () (Set Context!12424))

(declare-fun call!634484 () (Set Context!12424))

(assert (=> bm!634477 (= call!634485 call!634484)))

(declare-fun call!634486 () (Set Context!12424))

(declare-fun c!1296272 () Bool)

(declare-fun bm!634478 () Bool)

(declare-fun call!634482 () List!67193)

(assert (=> bm!634478 (= call!634486 (derivationStepZipperDown!1934 (ite c!1296272 (regTwo!34945 (h!73517 (exprs!6712 lt!2486352))) (regOne!34944 (h!73517 (exprs!6712 lt!2486352)))) (ite c!1296272 lt!2486361 (Context!12425 call!634482)) (h!73518 s!7408)))))

(declare-fun b!6989191 () Bool)

(declare-fun e!4200835 () (Set Context!12424))

(assert (=> b!6989191 (= e!4200835 call!634485)))

(declare-fun d!2177062 () Bool)

(declare-fun c!1296269 () Bool)

(assert (=> d!2177062 (= c!1296269 (and (is-ElementMatch!17216 (h!73517 (exprs!6712 lt!2486352))) (= (c!1296222 (h!73517 (exprs!6712 lt!2486352))) (h!73518 s!7408))))))

(declare-fun e!4200837 () (Set Context!12424))

(assert (=> d!2177062 (= (derivationStepZipperDown!1934 (h!73517 (exprs!6712 lt!2486352)) lt!2486361 (h!73518 s!7408)) e!4200837)))

(declare-fun bm!634479 () Bool)

(declare-fun call!634483 () (Set Context!12424))

(assert (=> bm!634479 (= call!634484 call!634483)))

(declare-fun b!6989192 () Bool)

(declare-fun e!4200836 () (Set Context!12424))

(assert (=> b!6989192 (= e!4200836 e!4200835)))

(declare-fun c!1296273 () Bool)

(assert (=> b!6989192 (= c!1296273 (is-Concat!26061 (h!73517 (exprs!6712 lt!2486352))))))

(declare-fun b!6989193 () Bool)

(declare-fun e!4200838 () Bool)

(assert (=> b!6989193 (= e!4200838 (nullable!6976 (regOne!34944 (h!73517 (exprs!6712 lt!2486352)))))))

(declare-fun c!1296271 () Bool)

(declare-fun bm!634480 () Bool)

(declare-fun $colon$colon!2482 (List!67193 Regex!17216) List!67193)

(assert (=> bm!634480 (= call!634482 ($colon$colon!2482 (exprs!6712 lt!2486361) (ite (or c!1296271 c!1296273) (regTwo!34944 (h!73517 (exprs!6712 lt!2486352))) (h!73517 (exprs!6712 lt!2486352)))))))

(declare-fun b!6989194 () Bool)

(assert (=> b!6989194 (= c!1296271 e!4200838)))

(declare-fun res!2850279 () Bool)

(assert (=> b!6989194 (=> (not res!2850279) (not e!4200838))))

(assert (=> b!6989194 (= res!2850279 (is-Concat!26061 (h!73517 (exprs!6712 lt!2486352))))))

(declare-fun e!4200833 () (Set Context!12424))

(assert (=> b!6989194 (= e!4200833 e!4200836)))

(declare-fun bm!634481 () Bool)

(declare-fun call!634487 () List!67193)

(assert (=> bm!634481 (= call!634483 (derivationStepZipperDown!1934 (ite c!1296272 (regOne!34945 (h!73517 (exprs!6712 lt!2486352))) (ite c!1296271 (regTwo!34944 (h!73517 (exprs!6712 lt!2486352))) (ite c!1296273 (regOne!34944 (h!73517 (exprs!6712 lt!2486352))) (reg!17545 (h!73517 (exprs!6712 lt!2486352)))))) (ite (or c!1296272 c!1296271) lt!2486361 (Context!12425 call!634487)) (h!73518 s!7408)))))

(declare-fun b!6989195 () Bool)

(assert (=> b!6989195 (= e!4200836 (set.union call!634486 call!634484))))

(declare-fun b!6989196 () Bool)

(declare-fun e!4200834 () (Set Context!12424))

(assert (=> b!6989196 (= e!4200834 (as set.empty (Set Context!12424)))))

(declare-fun bm!634482 () Bool)

(assert (=> bm!634482 (= call!634487 call!634482)))

(declare-fun b!6989197 () Bool)

(assert (=> b!6989197 (= e!4200834 call!634485)))

(declare-fun b!6989198 () Bool)

(assert (=> b!6989198 (= e!4200833 (set.union call!634483 call!634486))))

(declare-fun b!6989199 () Bool)

(declare-fun c!1296270 () Bool)

(assert (=> b!6989199 (= c!1296270 (is-Star!17216 (h!73517 (exprs!6712 lt!2486352))))))

(assert (=> b!6989199 (= e!4200835 e!4200834)))

(declare-fun b!6989200 () Bool)

(assert (=> b!6989200 (= e!4200837 (set.insert lt!2486361 (as set.empty (Set Context!12424))))))

(declare-fun b!6989201 () Bool)

(assert (=> b!6989201 (= e!4200837 e!4200833)))

(assert (=> b!6989201 (= c!1296272 (is-Union!17216 (h!73517 (exprs!6712 lt!2486352))))))

(assert (= (and d!2177062 c!1296269) b!6989200))

(assert (= (and d!2177062 (not c!1296269)) b!6989201))

(assert (= (and b!6989201 c!1296272) b!6989198))

(assert (= (and b!6989201 (not c!1296272)) b!6989194))

(assert (= (and b!6989194 res!2850279) b!6989193))

(assert (= (and b!6989194 c!1296271) b!6989195))

(assert (= (and b!6989194 (not c!1296271)) b!6989192))

(assert (= (and b!6989192 c!1296273) b!6989191))

(assert (= (and b!6989192 (not c!1296273)) b!6989199))

(assert (= (and b!6989199 c!1296270) b!6989197))

(assert (= (and b!6989199 (not c!1296270)) b!6989196))

(assert (= (or b!6989191 b!6989197) bm!634482))

(assert (= (or b!6989191 b!6989197) bm!634477))

(assert (= (or b!6989195 bm!634477) bm!634479))

(assert (= (or b!6989195 bm!634482) bm!634480))

(assert (= (or b!6989198 bm!634479) bm!634481))

(assert (= (or b!6989198 b!6989195) bm!634478))

(assert (=> b!6989200 m!7677446))

(declare-fun m!7677748 () Bool)

(assert (=> b!6989193 m!7677748))

(declare-fun m!7677750 () Bool)

(assert (=> bm!634481 m!7677750))

(declare-fun m!7677752 () Bool)

(assert (=> bm!634478 m!7677752))

(declare-fun m!7677754 () Bool)

(assert (=> bm!634480 m!7677754))

(assert (=> b!6989016 d!2177062))

(declare-fun condSetEmpty!47799 () Bool)

(assert (=> setNonEmpty!47793 (= condSetEmpty!47799 (= setRest!47793 (as set.empty (Set Context!12424))))))

(declare-fun setRes!47799 () Bool)

(assert (=> setNonEmpty!47793 (= tp!1929602 setRes!47799)))

(declare-fun setIsEmpty!47799 () Bool)

(assert (=> setIsEmpty!47799 setRes!47799))

(declare-fun e!4200841 () Bool)

(declare-fun setElem!47799 () Context!12424)

(declare-fun setNonEmpty!47799 () Bool)

(declare-fun tp!1929623 () Bool)

(assert (=> setNonEmpty!47799 (= setRes!47799 (and tp!1929623 (inv!85900 setElem!47799) e!4200841))))

(declare-fun setRest!47799 () (Set Context!12424))

(assert (=> setNonEmpty!47799 (= setRest!47793 (set.union (set.insert setElem!47799 (as set.empty (Set Context!12424))) setRest!47799))))

(declare-fun b!6989206 () Bool)

(declare-fun tp!1929622 () Bool)

(assert (=> b!6989206 (= e!4200841 tp!1929622)))

(assert (= (and setNonEmpty!47793 condSetEmpty!47799) setIsEmpty!47799))

(assert (= (and setNonEmpty!47793 (not condSetEmpty!47799)) setNonEmpty!47799))

(assert (= setNonEmpty!47799 b!6989206))

(declare-fun m!7677756 () Bool)

(assert (=> setNonEmpty!47799 m!7677756))

(declare-fun b!6989211 () Bool)

(declare-fun e!4200844 () Bool)

(declare-fun tp!1929628 () Bool)

(declare-fun tp!1929629 () Bool)

(assert (=> b!6989211 (= e!4200844 (and tp!1929628 tp!1929629))))

(assert (=> b!6988999 (= tp!1929604 e!4200844)))

(assert (= (and b!6988999 (is-Cons!67069 (exprs!6712 setElem!47793))) b!6989211))

(declare-fun b!6989216 () Bool)

(declare-fun e!4200847 () Bool)

(declare-fun tp!1929632 () Bool)

(assert (=> b!6989216 (= e!4200847 (and tp_is_empty!43657 tp!1929632))))

(assert (=> b!6989009 (= tp!1929605 e!4200847)))

(assert (= (and b!6989009 (is-Cons!67070 (t!380941 s!7408))) b!6989216))

(declare-fun b!6989217 () Bool)

(declare-fun e!4200848 () Bool)

(declare-fun tp!1929633 () Bool)

(declare-fun tp!1929634 () Bool)

(assert (=> b!6989217 (= e!4200848 (and tp!1929633 tp!1929634))))

(assert (=> b!6989010 (= tp!1929603 e!4200848)))

(assert (= (and b!6989010 (is-Cons!67069 (exprs!6712 ct2!306))) b!6989217))

(declare-fun b_lambda!262503 () Bool)

(assert (= b_lambda!262501 (or b!6989001 b_lambda!262503)))

(declare-fun bs!1862090 () Bool)

(declare-fun d!2177064 () Bool)

(assert (= bs!1862090 (and d!2177064 b!6989001)))

(assert (=> bs!1862090 (= (dynLambda!26892 lambda!401372 lt!2486361) (derivationStepZipperUp!1866 lt!2486361 (h!73518 s!7408)))))

(assert (=> bs!1862090 m!7677442))

(assert (=> d!2177052 d!2177064))

(declare-fun b_lambda!262505 () Bool)

(assert (= b_lambda!262491 (or b!6989012 b_lambda!262505)))

(declare-fun bs!1862091 () Bool)

(declare-fun d!2177066 () Bool)

(assert (= bs!1862091 (and d!2177066 b!6989012)))

(assert (=> bs!1862091 (= (dynLambda!26890 lambda!401369 lt!2486488) (matchZipper!2756 (set.insert lt!2486488 (as set.empty (Set Context!12424))) s!7408))))

(declare-fun m!7677758 () Bool)

(assert (=> bs!1862091 m!7677758))

(assert (=> bs!1862091 m!7677758))

(declare-fun m!7677760 () Bool)

(assert (=> bs!1862091 m!7677760))

(assert (=> d!2177008 d!2177066))

(declare-fun b_lambda!262507 () Bool)

(assert (= b_lambda!262493 (or b!6989007 b_lambda!262507)))

(declare-fun bs!1862092 () Bool)

(declare-fun d!2177068 () Bool)

(assert (= bs!1862092 (and d!2177068 b!6989007)))

(declare-fun validRegex!8859 (Regex!17216) Bool)

(assert (=> bs!1862092 (= (dynLambda!26891 lambda!401371 (h!73517 (exprs!6712 ct2!306))) (validRegex!8859 (h!73517 (exprs!6712 ct2!306))))))

(declare-fun m!7677762 () Bool)

(assert (=> bs!1862092 m!7677762))

(assert (=> b!6989119 d!2177068))

(declare-fun b_lambda!262509 () Bool)

(assert (= b_lambda!262497 (or b!6989007 b_lambda!262509)))

(declare-fun bs!1862093 () Bool)

(declare-fun d!2177070 () Bool)

(assert (= bs!1862093 (and d!2177070 b!6989007)))

(assert (=> bs!1862093 (= (dynLambda!26891 lambda!401371 (h!73517 lt!2486357)) (validRegex!8859 (h!73517 lt!2486357)))))

(declare-fun m!7677764 () Bool)

(assert (=> bs!1862093 m!7677764))

(assert (=> b!6989140 d!2177070))

(declare-fun b_lambda!262511 () Bool)

(assert (= b_lambda!262495 (or b!6989001 b_lambda!262511)))

(declare-fun bs!1862094 () Bool)

(declare-fun d!2177072 () Bool)

(assert (= bs!1862094 (and d!2177072 b!6989001)))

(assert (=> bs!1862094 (= (dynLambda!26892 lambda!401372 lt!2486354) (derivationStepZipperUp!1866 lt!2486354 (h!73518 s!7408)))))

(assert (=> bs!1862094 m!7677474))

(assert (=> d!2177030 d!2177072))

(declare-fun b_lambda!262513 () Bool)

(assert (= b_lambda!262499 (or b!6989007 b_lambda!262513)))

(declare-fun bs!1862095 () Bool)

(declare-fun d!2177074 () Bool)

(assert (= bs!1862095 (and d!2177074 b!6989007)))

(declare-fun lt!2486509 () Unit!161087)

(assert (=> bs!1862095 (= lt!2486509 (lemmaConcatPreservesForall!552 (exprs!6712 lt!2486506) (exprs!6712 ct2!306) lambda!401371))))

(assert (=> bs!1862095 (= (dynLambda!26893 lambda!401370 lt!2486506) (Context!12425 (++!15161 (exprs!6712 lt!2486506) (exprs!6712 ct2!306))))))

(declare-fun m!7677766 () Bool)

(assert (=> bs!1862095 m!7677766))

(declare-fun m!7677768 () Bool)

(assert (=> bs!1862095 m!7677768))

(assert (=> d!2177044 d!2177074))

(push 1)

(assert (not b!6989120))

(assert (not b_lambda!262503))

(assert (not b!6989137))

(assert (not d!2177010))

(assert (not d!2177014))

(assert (not d!2177032))

(assert (not b!6989217))

(assert (not b!6989141))

(assert (not b!6989151))

(assert (not b!6989112))

(assert (not bs!1862090))

(assert (not b!6989166))

(assert (not setNonEmpty!47799))

(assert (not d!2177042))

(assert (not d!2177044))

(assert (not b!6989100))

(assert (not d!2177056))

(assert (not d!2177026))

(assert (not d!2177046))

(assert (not d!2177000))

(assert (not d!2177036))

(assert (not b_lambda!262511))

(assert (not b_lambda!262513))

(assert (not b!6989216))

(assert (not b!6989111))

(assert (not bm!634480))

(assert (not d!2177054))

(assert (not b!6989160))

(assert (not b_lambda!262505))

(assert (not b!6989135))

(assert (not bm!634463))

(assert (not bm!634464))

(assert (not b!6989164))

(assert (not bs!1862095))

(assert (not b!6989096))

(assert (not bs!1862093))

(assert (not d!2177034))

(assert (not b!6989162))

(assert (not b!6989138))

(assert tp_is_empty!43657)

(assert (not bs!1862092))

(assert (not b!6989110))

(assert (not b_lambda!262509))

(assert (not d!2177048))

(assert (not b!6989108))

(assert (not d!2177024))

(assert (not b!6989211))

(assert (not b_lambda!262507))

(assert (not b!6989163))

(assert (not b!6989114))

(assert (not b!6989193))

(assert (not bs!1862094))

(assert (not b!6989206))

(assert (not bm!634481))

(assert (not d!2177016))

(assert (not b!6989113))

(assert (not d!2177060))

(assert (not d!2177052))

(assert (not d!2177012))

(assert (not bs!1862091))

(assert (not b!6989109))

(assert (not bm!634478))

(assert (not d!2177002))

(assert (not d!2177004))

(assert (not d!2176998))

(assert (not d!2177018))

(assert (not b!6989152))

(assert (not d!2177022))

(assert (not d!2177006))

(assert (not d!2177008))

(assert (not b!6989097))

(assert (not d!2177030))

(assert (not b!6989139))

(assert (not b!6989167))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

