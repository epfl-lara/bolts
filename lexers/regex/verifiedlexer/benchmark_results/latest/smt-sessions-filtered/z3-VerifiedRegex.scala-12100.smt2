; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!678424 () Bool)

(assert start!678424)

(declare-fun b!7026639 () Bool)

(assert (=> b!7026639 true))

(declare-fun b!7026631 () Bool)

(assert (=> b!7026631 true))

(declare-fun b!7026626 () Bool)

(assert (=> b!7026626 true))

(declare-fun b!7026621 () Bool)

(declare-fun e!4224064 () Bool)

(declare-fun e!4224059 () Bool)

(assert (=> b!7026621 (= e!4224064 e!4224059)))

(declare-fun res!2868466 () Bool)

(assert (=> b!7026621 (=> res!2868466 e!4224059)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35164 0))(
  ( (C!35165 (val!27284 Int)) )
))
(declare-datatypes ((Regex!17447 0))(
  ( (ElementMatch!17447 (c!1306220 C!35164)) (Concat!26292 (regOne!35406 Regex!17447) (regTwo!35406 Regex!17447)) (EmptyExpr!17447) (Star!17447 (reg!17776 Regex!17447)) (EmptyLang!17447) (Union!17447 (regOne!35407 Regex!17447) (regTwo!35407 Regex!17447)) )
))
(declare-datatypes ((List!67869 0))(
  ( (Nil!67745) (Cons!67745 (h!74193 Regex!17447) (t!381628 List!67869)) )
))
(declare-datatypes ((Context!12886 0))(
  ( (Context!12887 (exprs!6943 List!67869)) )
))
(declare-fun lt!2515120 () (InoxSet Context!12886))

(declare-datatypes ((List!67870 0))(
  ( (Nil!67746) (Cons!67746 (h!74194 C!35164) (t!381629 List!67870)) )
))
(declare-fun s!7408 () List!67870)

(declare-fun matchZipper!2987 ((InoxSet Context!12886) List!67870) Bool)

(assert (=> b!7026621 (= res!2868466 (not (matchZipper!2987 lt!2515120 s!7408)))))

(declare-fun lt!2515127 () List!67869)

(declare-fun lambda!413272 () Int)

(declare-fun ct2!306 () Context!12886)

(declare-datatypes ((Unit!161559 0))(
  ( (Unit!161560) )
))
(declare-fun lt!2515140 () Unit!161559)

(declare-fun lemmaConcatPreservesForall!768 (List!67869 List!67869 Int) Unit!161559)

(assert (=> b!7026621 (= lt!2515140 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(declare-fun b!7026622 () Bool)

(declare-fun e!4224058 () Bool)

(declare-fun e!4224060 () Bool)

(assert (=> b!7026622 (= e!4224058 e!4224060)))

(declare-fun res!2868454 () Bool)

(assert (=> b!7026622 (=> res!2868454 e!4224060)))

(declare-fun lt!2515129 () Context!12886)

(declare-fun nullable!7158 (Regex!17447) Bool)

(assert (=> b!7026622 (= res!2868454 (not (nullable!7158 (h!74193 (exprs!6943 lt!2515129)))))))

(declare-fun lt!2515114 () Context!12886)

(assert (=> b!7026622 (= lt!2515114 (Context!12887 lt!2515127))))

(declare-fun tail!13520 (List!67869) List!67869)

(assert (=> b!7026622 (= lt!2515127 (tail!13520 (exprs!6943 lt!2515129)))))

(declare-fun b!7026623 () Bool)

(declare-fun e!4224067 () Bool)

(declare-fun lt!2515118 () (InoxSet Context!12886))

(assert (=> b!7026623 (= e!4224067 (matchZipper!2987 lt!2515118 (t!381629 s!7408)))))

(declare-fun b!7026624 () Bool)

(declare-fun e!4224063 () Bool)

(declare-fun e!4224065 () Bool)

(assert (=> b!7026624 (= e!4224063 e!4224065)))

(declare-fun res!2868459 () Bool)

(assert (=> b!7026624 (=> res!2868459 e!4224065)))

(declare-fun lt!2515139 () (InoxSet Context!12886))

(declare-fun lt!2515109 () (InoxSet Context!12886))

(assert (=> b!7026624 (= res!2868459 (not (= lt!2515139 lt!2515109)))))

(declare-fun lt!2515108 () Context!12886)

(assert (=> b!7026624 (= lt!2515139 (store ((as const (Array Context!12886 Bool)) false) lt!2515108 true))))

(declare-fun lt!2515101 () Unit!161559)

(assert (=> b!7026624 (= lt!2515101 (lemmaConcatPreservesForall!768 (exprs!6943 lt!2515129) (exprs!6943 ct2!306) lambda!413272))))

(declare-fun b!7026625 () Bool)

(declare-fun res!2868455 () Bool)

(assert (=> b!7026625 (=> res!2868455 e!4224058)))

(get-info :version)

(assert (=> b!7026625 (= res!2868455 (not ((_ is Cons!67745) (exprs!6943 lt!2515129))))))

(assert (=> b!7026626 (= e!4224065 e!4224058)))

(declare-fun res!2868460 () Bool)

(assert (=> b!7026626 (=> res!2868460 e!4224058)))

(declare-fun lt!2515106 () (InoxSet Context!12886))

(declare-fun derivationStepZipper!2903 ((InoxSet Context!12886) C!35164) (InoxSet Context!12886))

(assert (=> b!7026626 (= res!2868460 (not (= (derivationStepZipper!2903 lt!2515139 (h!74194 s!7408)) lt!2515106)))))

(declare-fun lambda!413273 () Int)

(declare-fun flatMap!2394 ((InoxSet Context!12886) Int) (InoxSet Context!12886))

(declare-fun derivationStepZipperUp!2057 (Context!12886 C!35164) (InoxSet Context!12886))

(assert (=> b!7026626 (= (flatMap!2394 lt!2515139 lambda!413273) (derivationStepZipperUp!2057 lt!2515108 (h!74194 s!7408)))))

(declare-fun lt!2515132 () Unit!161559)

(declare-fun lemmaFlatMapOnSingletonSet!1908 ((InoxSet Context!12886) Context!12886 Int) Unit!161559)

(assert (=> b!7026626 (= lt!2515132 (lemmaFlatMapOnSingletonSet!1908 lt!2515139 lt!2515108 lambda!413273))))

(assert (=> b!7026626 (= lt!2515106 (derivationStepZipperUp!2057 lt!2515108 (h!74194 s!7408)))))

(declare-fun lt!2515123 () Unit!161559)

(assert (=> b!7026626 (= lt!2515123 (lemmaConcatPreservesForall!768 (exprs!6943 lt!2515129) (exprs!6943 ct2!306) lambda!413272))))

(declare-fun b!7026627 () Bool)

(declare-fun e!4224069 () Bool)

(declare-fun e!4224068 () Bool)

(assert (=> b!7026627 (= e!4224069 e!4224068)))

(declare-fun res!2868464 () Bool)

(assert (=> b!7026627 (=> res!2868464 e!4224068)))

(assert (=> b!7026627 (= res!2868464 (not (matchZipper!2987 lt!2515118 (t!381629 s!7408))))))

(declare-fun lt!2515126 () Unit!161559)

(assert (=> b!7026627 (= lt!2515126 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(declare-fun b!7026628 () Bool)

(declare-fun e!4224056 () Bool)

(declare-fun tp!1935616 () Bool)

(assert (=> b!7026628 (= e!4224056 tp!1935616)))

(declare-fun res!2868461 () Bool)

(declare-fun e!4224062 () Bool)

(assert (=> start!678424 (=> (not res!2868461) (not e!4224062))))

(declare-fun lt!2515099 () (InoxSet Context!12886))

(assert (=> start!678424 (= res!2868461 (matchZipper!2987 lt!2515099 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12886))

(declare-fun appendTo!568 ((InoxSet Context!12886) Context!12886) (InoxSet Context!12886))

(assert (=> start!678424 (= lt!2515099 (appendTo!568 z1!570 ct2!306))))

(assert (=> start!678424 e!4224062))

(declare-fun condSetEmpty!49004 () Bool)

(assert (=> start!678424 (= condSetEmpty!49004 (= z1!570 ((as const (Array Context!12886 Bool)) false)))))

(declare-fun setRes!49004 () Bool)

(assert (=> start!678424 setRes!49004))

(declare-fun e!4224061 () Bool)

(declare-fun inv!86476 (Context!12886) Bool)

(assert (=> start!678424 (and (inv!86476 ct2!306) e!4224061)))

(declare-fun e!4224071 () Bool)

(assert (=> start!678424 e!4224071))

(declare-fun b!7026629 () Bool)

(declare-fun tp!1935618 () Bool)

(assert (=> b!7026629 (= e!4224061 tp!1935618)))

(declare-fun b!7026630 () Bool)

(declare-fun res!2868462 () Bool)

(assert (=> b!7026630 (=> res!2868462 e!4224069)))

(declare-fun lt!2515107 () Bool)

(assert (=> b!7026630 (= res!2868462 (not lt!2515107))))

(declare-fun e!4224066 () Bool)

(assert (=> b!7026631 (= e!4224066 e!4224063)))

(declare-fun res!2868453 () Bool)

(assert (=> b!7026631 (=> res!2868453 e!4224063)))

(declare-fun lt!2515110 () Context!12886)

(assert (=> b!7026631 (= res!2868453 (or (not (= lt!2515108 lt!2515110)) (not (select z1!570 lt!2515129))))))

(declare-fun ++!15480 (List!67869 List!67869) List!67869)

(assert (=> b!7026631 (= lt!2515108 (Context!12887 (++!15480 (exprs!6943 lt!2515129) (exprs!6943 ct2!306))))))

(declare-fun lt!2515104 () Unit!161559)

(assert (=> b!7026631 (= lt!2515104 (lemmaConcatPreservesForall!768 (exprs!6943 lt!2515129) (exprs!6943 ct2!306) lambda!413272))))

(declare-fun lambda!413271 () Int)

(declare-fun mapPost2!288 ((InoxSet Context!12886) Int Context!12886) Context!12886)

(assert (=> b!7026631 (= lt!2515129 (mapPost2!288 z1!570 lambda!413271 lt!2515110))))

(declare-fun setIsEmpty!49004 () Bool)

(assert (=> setIsEmpty!49004 setRes!49004))

(declare-fun b!7026632 () Bool)

(declare-fun tp_is_empty!44119 () Bool)

(declare-fun tp!1935619 () Bool)

(assert (=> b!7026632 (= e!4224071 (and tp_is_empty!44119 tp!1935619))))

(declare-fun b!7026633 () Bool)

(declare-fun res!2868449 () Bool)

(assert (=> b!7026633 (=> (not res!2868449) (not e!4224062))))

(assert (=> b!7026633 (= res!2868449 ((_ is Cons!67746) s!7408))))

(declare-fun tp!1935617 () Bool)

(declare-fun setElem!49004 () Context!12886)

(declare-fun setNonEmpty!49004 () Bool)

(assert (=> setNonEmpty!49004 (= setRes!49004 (and tp!1935617 (inv!86476 setElem!49004) e!4224056))))

(declare-fun setRest!49004 () (InoxSet Context!12886))

(assert (=> setNonEmpty!49004 (= z1!570 ((_ map or) (store ((as const (Array Context!12886 Bool)) false) setElem!49004 true) setRest!49004))))

(declare-fun b!7026634 () Bool)

(declare-fun e!4224070 () Bool)

(assert (=> b!7026634 (= e!4224070 (not (matchZipper!2987 lt!2515118 (t!381629 s!7408))))))

(declare-fun lt!2515121 () Unit!161559)

(assert (=> b!7026634 (= lt!2515121 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(declare-fun b!7026635 () Bool)

(assert (=> b!7026635 (= e!4224059 true)))

(declare-fun lt!2515130 () Unit!161559)

(assert (=> b!7026635 (= lt!2515130 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(declare-fun lt!2515111 () Unit!161559)

(assert (=> b!7026635 (= lt!2515111 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(declare-fun lt!2515100 () Unit!161559)

(assert (=> b!7026635 (= lt!2515100 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(declare-fun lt!2515103 () (InoxSet Context!12886))

(assert (=> b!7026635 (= (flatMap!2394 lt!2515103 lambda!413273) (derivationStepZipperUp!2057 lt!2515114 (h!74194 s!7408)))))

(declare-fun lt!2515115 () Unit!161559)

(assert (=> b!7026635 (= lt!2515115 (lemmaFlatMapOnSingletonSet!1908 lt!2515103 lt!2515114 lambda!413273))))

(declare-fun map!15738 ((InoxSet Context!12886) Int) (InoxSet Context!12886))

(assert (=> b!7026635 (= (map!15738 lt!2515103 lambda!413271) (store ((as const (Array Context!12886 Bool)) false) (Context!12887 (++!15480 lt!2515127 (exprs!6943 ct2!306))) true))))

(declare-fun lt!2515112 () Unit!161559)

(assert (=> b!7026635 (= lt!2515112 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(declare-fun lt!2515122 () Unit!161559)

(declare-fun lemmaMapOnSingletonSet!358 ((InoxSet Context!12886) Context!12886 Int) Unit!161559)

(assert (=> b!7026635 (= lt!2515122 (lemmaMapOnSingletonSet!358 lt!2515103 lt!2515114 lambda!413271))))

(assert (=> b!7026635 (= lt!2515103 (store ((as const (Array Context!12886 Bool)) false) lt!2515114 true))))

(declare-fun b!7026636 () Bool)

(declare-fun res!2868450 () Bool)

(assert (=> b!7026636 (=> res!2868450 e!4224066)))

(assert (=> b!7026636 (= res!2868450 (not (select lt!2515099 lt!2515110)))))

(declare-fun b!7026637 () Bool)

(declare-fun e!4224057 () Bool)

(assert (=> b!7026637 (= e!4224060 e!4224057)))

(declare-fun res!2868451 () Bool)

(assert (=> b!7026637 (=> res!2868451 e!4224057)))

(declare-fun lt!2515128 () (InoxSet Context!12886))

(assert (=> b!7026637 (= res!2868451 (not (= lt!2515106 lt!2515128)))))

(declare-fun lt!2515141 () (InoxSet Context!12886))

(assert (=> b!7026637 (= lt!2515128 ((_ map or) lt!2515141 lt!2515118))))

(declare-fun lt!2515105 () Context!12886)

(assert (=> b!7026637 (= lt!2515118 (derivationStepZipperUp!2057 lt!2515105 (h!74194 s!7408)))))

(declare-fun derivationStepZipperDown!2111 (Regex!17447 Context!12886 C!35164) (InoxSet Context!12886))

(assert (=> b!7026637 (= lt!2515141 (derivationStepZipperDown!2111 (h!74193 (exprs!6943 lt!2515129)) lt!2515105 (h!74194 s!7408)))))

(assert (=> b!7026637 (= lt!2515105 (Context!12887 (++!15480 lt!2515127 (exprs!6943 ct2!306))))))

(declare-fun lt!2515117 () Unit!161559)

(assert (=> b!7026637 (= lt!2515117 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(declare-fun lt!2515119 () Unit!161559)

(assert (=> b!7026637 (= lt!2515119 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(declare-fun b!7026638 () Bool)

(assert (=> b!7026638 (= e!4224057 e!4224069)))

(declare-fun res!2868457 () Bool)

(assert (=> b!7026638 (=> res!2868457 e!4224069)))

(assert (=> b!7026638 (= res!2868457 e!4224070)))

(declare-fun res!2868465 () Bool)

(assert (=> b!7026638 (=> (not res!2868465) (not e!4224070))))

(declare-fun lt!2515124 () Bool)

(assert (=> b!7026638 (= res!2868465 (not (= lt!2515107 lt!2515124)))))

(assert (=> b!7026638 (= lt!2515107 (matchZipper!2987 lt!2515106 (t!381629 s!7408)))))

(declare-fun lt!2515136 () Unit!161559)

(assert (=> b!7026638 (= lt!2515136 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(assert (=> b!7026638 (= (matchZipper!2987 lt!2515128 (t!381629 s!7408)) e!4224067)))

(declare-fun res!2868452 () Bool)

(assert (=> b!7026638 (=> res!2868452 e!4224067)))

(assert (=> b!7026638 (= res!2868452 lt!2515124)))

(assert (=> b!7026638 (= lt!2515124 (matchZipper!2987 lt!2515141 (t!381629 s!7408)))))

(declare-fun lt!2515113 () Unit!161559)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1520 ((InoxSet Context!12886) (InoxSet Context!12886) List!67870) Unit!161559)

(assert (=> b!7026638 (= lt!2515113 (lemmaZipperConcatMatchesSameAsBothZippers!1520 lt!2515141 lt!2515118 (t!381629 s!7408)))))

(declare-fun lt!2515102 () Unit!161559)

(assert (=> b!7026638 (= lt!2515102 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(declare-fun lt!2515116 () Unit!161559)

(assert (=> b!7026638 (= lt!2515116 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(assert (=> b!7026639 (= e!4224062 (not e!4224066))))

(declare-fun res!2868456 () Bool)

(assert (=> b!7026639 (=> res!2868456 e!4224066)))

(assert (=> b!7026639 (= res!2868456 (not (matchZipper!2987 lt!2515109 s!7408)))))

(assert (=> b!7026639 (= lt!2515109 (store ((as const (Array Context!12886 Bool)) false) lt!2515110 true))))

(declare-fun lambda!413270 () Int)

(declare-fun getWitness!1440 ((InoxSet Context!12886) Int) Context!12886)

(assert (=> b!7026639 (= lt!2515110 (getWitness!1440 lt!2515099 lambda!413270))))

(declare-datatypes ((List!67871 0))(
  ( (Nil!67747) (Cons!67747 (h!74195 Context!12886) (t!381630 List!67871)) )
))
(declare-fun lt!2515138 () List!67871)

(declare-fun exists!3359 (List!67871 Int) Bool)

(assert (=> b!7026639 (exists!3359 lt!2515138 lambda!413270)))

(declare-fun lt!2515135 () Unit!161559)

(declare-fun lemmaZipperMatchesExistsMatchingContext!386 (List!67871 List!67870) Unit!161559)

(assert (=> b!7026639 (= lt!2515135 (lemmaZipperMatchesExistsMatchingContext!386 lt!2515138 s!7408))))

(declare-fun toList!10790 ((InoxSet Context!12886)) List!67871)

(assert (=> b!7026639 (= lt!2515138 (toList!10790 lt!2515099))))

(declare-fun b!7026640 () Bool)

(declare-fun res!2868458 () Bool)

(assert (=> b!7026640 (=> res!2868458 e!4224058)))

(declare-fun isEmpty!39499 (List!67869) Bool)

(assert (=> b!7026640 (= res!2868458 (isEmpty!39499 (exprs!6943 lt!2515129)))))

(declare-fun b!7026641 () Bool)

(assert (=> b!7026641 (= e!4224068 e!4224064)))

(declare-fun res!2868463 () Bool)

(assert (=> b!7026641 (=> res!2868463 e!4224064)))

(assert (=> b!7026641 (= res!2868463 (not (= (derivationStepZipper!2903 lt!2515120 (h!74194 s!7408)) lt!2515118)))))

(declare-fun lt!2515131 () Unit!161559)

(assert (=> b!7026641 (= lt!2515131 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(declare-fun lt!2515137 () Unit!161559)

(assert (=> b!7026641 (= lt!2515137 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(assert (=> b!7026641 (= (flatMap!2394 lt!2515120 lambda!413273) (derivationStepZipperUp!2057 lt!2515105 (h!74194 s!7408)))))

(declare-fun lt!2515133 () Unit!161559)

(assert (=> b!7026641 (= lt!2515133 (lemmaFlatMapOnSingletonSet!1908 lt!2515120 lt!2515105 lambda!413273))))

(assert (=> b!7026641 (= lt!2515120 (store ((as const (Array Context!12886 Bool)) false) lt!2515105 true))))

(declare-fun lt!2515134 () Unit!161559)

(assert (=> b!7026641 (= lt!2515134 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(declare-fun lt!2515125 () Unit!161559)

(assert (=> b!7026641 (= lt!2515125 (lemmaConcatPreservesForall!768 lt!2515127 (exprs!6943 ct2!306) lambda!413272))))

(assert (= (and start!678424 res!2868461) b!7026633))

(assert (= (and b!7026633 res!2868449) b!7026639))

(assert (= (and b!7026639 (not res!2868456)) b!7026636))

(assert (= (and b!7026636 (not res!2868450)) b!7026631))

(assert (= (and b!7026631 (not res!2868453)) b!7026624))

(assert (= (and b!7026624 (not res!2868459)) b!7026626))

(assert (= (and b!7026626 (not res!2868460)) b!7026625))

(assert (= (and b!7026625 (not res!2868455)) b!7026640))

(assert (= (and b!7026640 (not res!2868458)) b!7026622))

(assert (= (and b!7026622 (not res!2868454)) b!7026637))

(assert (= (and b!7026637 (not res!2868451)) b!7026638))

(assert (= (and b!7026638 (not res!2868452)) b!7026623))

(assert (= (and b!7026638 res!2868465) b!7026634))

(assert (= (and b!7026638 (not res!2868457)) b!7026630))

(assert (= (and b!7026630 (not res!2868462)) b!7026627))

(assert (= (and b!7026627 (not res!2868464)) b!7026641))

(assert (= (and b!7026641 (not res!2868463)) b!7026621))

(assert (= (and b!7026621 (not res!2868466)) b!7026635))

(assert (= (and start!678424 condSetEmpty!49004) setIsEmpty!49004))

(assert (= (and start!678424 (not condSetEmpty!49004)) setNonEmpty!49004))

(assert (= setNonEmpty!49004 b!7026628))

(assert (= start!678424 b!7026629))

(assert (= (and start!678424 ((_ is Cons!67746) s!7408)) b!7026632))

(declare-fun m!7730164 () Bool)

(assert (=> b!7026627 m!7730164))

(declare-fun m!7730166 () Bool)

(assert (=> b!7026627 m!7730166))

(declare-fun m!7730168 () Bool)

(assert (=> setNonEmpty!49004 m!7730168))

(declare-fun m!7730170 () Bool)

(assert (=> b!7026639 m!7730170))

(declare-fun m!7730172 () Bool)

(assert (=> b!7026639 m!7730172))

(declare-fun m!7730174 () Bool)

(assert (=> b!7026639 m!7730174))

(declare-fun m!7730176 () Bool)

(assert (=> b!7026639 m!7730176))

(declare-fun m!7730178 () Bool)

(assert (=> b!7026639 m!7730178))

(declare-fun m!7730180 () Bool)

(assert (=> b!7026639 m!7730180))

(declare-fun m!7730182 () Bool)

(assert (=> b!7026636 m!7730182))

(declare-fun m!7730184 () Bool)

(assert (=> b!7026621 m!7730184))

(assert (=> b!7026621 m!7730166))

(declare-fun m!7730186 () Bool)

(assert (=> b!7026626 m!7730186))

(declare-fun m!7730188 () Bool)

(assert (=> b!7026626 m!7730188))

(declare-fun m!7730190 () Bool)

(assert (=> b!7026626 m!7730190))

(declare-fun m!7730192 () Bool)

(assert (=> b!7026626 m!7730192))

(declare-fun m!7730194 () Bool)

(assert (=> b!7026626 m!7730194))

(declare-fun m!7730196 () Bool)

(assert (=> b!7026622 m!7730196))

(declare-fun m!7730198 () Bool)

(assert (=> b!7026622 m!7730198))

(declare-fun m!7730200 () Bool)

(assert (=> b!7026631 m!7730200))

(declare-fun m!7730202 () Bool)

(assert (=> b!7026631 m!7730202))

(assert (=> b!7026631 m!7730194))

(declare-fun m!7730204 () Bool)

(assert (=> b!7026631 m!7730204))

(assert (=> b!7026634 m!7730164))

(assert (=> b!7026634 m!7730166))

(assert (=> b!7026623 m!7730164))

(declare-fun m!7730206 () Bool)

(assert (=> b!7026635 m!7730206))

(assert (=> b!7026635 m!7730166))

(assert (=> b!7026635 m!7730166))

(assert (=> b!7026635 m!7730166))

(declare-fun m!7730208 () Bool)

(assert (=> b!7026635 m!7730208))

(declare-fun m!7730210 () Bool)

(assert (=> b!7026635 m!7730210))

(declare-fun m!7730212 () Bool)

(assert (=> b!7026635 m!7730212))

(declare-fun m!7730214 () Bool)

(assert (=> b!7026635 m!7730214))

(declare-fun m!7730216 () Bool)

(assert (=> b!7026635 m!7730216))

(declare-fun m!7730218 () Bool)

(assert (=> b!7026635 m!7730218))

(declare-fun m!7730220 () Bool)

(assert (=> b!7026635 m!7730220))

(assert (=> b!7026635 m!7730166))

(assert (=> b!7026641 m!7730166))

(assert (=> b!7026641 m!7730166))

(assert (=> b!7026641 m!7730166))

(declare-fun m!7730222 () Bool)

(assert (=> b!7026641 m!7730222))

(declare-fun m!7730224 () Bool)

(assert (=> b!7026641 m!7730224))

(declare-fun m!7730226 () Bool)

(assert (=> b!7026641 m!7730226))

(assert (=> b!7026641 m!7730166))

(declare-fun m!7730228 () Bool)

(assert (=> b!7026641 m!7730228))

(declare-fun m!7730230 () Bool)

(assert (=> b!7026641 m!7730230))

(declare-fun m!7730232 () Bool)

(assert (=> b!7026640 m!7730232))

(declare-fun m!7730234 () Bool)

(assert (=> start!678424 m!7730234))

(declare-fun m!7730236 () Bool)

(assert (=> start!678424 m!7730236))

(declare-fun m!7730238 () Bool)

(assert (=> start!678424 m!7730238))

(assert (=> b!7026638 m!7730166))

(declare-fun m!7730240 () Bool)

(assert (=> b!7026638 m!7730240))

(declare-fun m!7730242 () Bool)

(assert (=> b!7026638 m!7730242))

(assert (=> b!7026638 m!7730166))

(declare-fun m!7730244 () Bool)

(assert (=> b!7026638 m!7730244))

(declare-fun m!7730246 () Bool)

(assert (=> b!7026638 m!7730246))

(assert (=> b!7026638 m!7730166))

(assert (=> b!7026637 m!7730166))

(assert (=> b!7026637 m!7730166))

(assert (=> b!7026637 m!7730226))

(declare-fun m!7730248 () Bool)

(assert (=> b!7026637 m!7730248))

(assert (=> b!7026637 m!7730212))

(declare-fun m!7730250 () Bool)

(assert (=> b!7026624 m!7730250))

(assert (=> b!7026624 m!7730194))

(check-sat (not b!7026634) (not b!7026621) (not b!7026632) (not b!7026638) (not b!7026623) (not b!7026639) (not b!7026626) (not b!7026627) (not b!7026631) (not setNonEmpty!49004) (not b!7026640) (not start!678424) (not b!7026635) (not b!7026624) (not b!7026628) (not b!7026637) tp_is_empty!44119 (not b!7026629) (not b!7026622) (not b!7026641))
(check-sat)
