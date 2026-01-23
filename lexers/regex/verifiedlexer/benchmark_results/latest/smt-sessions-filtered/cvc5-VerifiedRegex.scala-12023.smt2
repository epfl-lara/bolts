; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!674308 () Bool)

(assert start!674308)

(declare-fun b!7005655 () Bool)

(assert (=> b!7005655 true))

(declare-fun b!7005639 () Bool)

(assert (=> b!7005639 true))

(declare-fun b!7005645 () Bool)

(assert (=> b!7005645 true))

(declare-fun b!7005638 () Bool)

(declare-fun res!2858307 () Bool)

(declare-fun e!4210970 () Bool)

(assert (=> b!7005638 (=> res!2858307 e!4210970)))

(declare-datatypes ((C!34854 0))(
  ( (C!34855 (val!27129 Int)) )
))
(declare-datatypes ((Regex!17292 0))(
  ( (ElementMatch!17292 (c!1300971 C!34854)) (Concat!26137 (regOne!35096 Regex!17292) (regTwo!35096 Regex!17292)) (EmptyExpr!17292) (Star!17292 (reg!17621 Regex!17292)) (EmptyLang!17292) (Union!17292 (regOne!35097 Regex!17292) (regTwo!35097 Regex!17292)) )
))
(declare-datatypes ((List!67421 0))(
  ( (Nil!67297) (Cons!67297 (h!73745 Regex!17292) (t!381174 List!67421)) )
))
(declare-datatypes ((Context!12576 0))(
  ( (Context!12577 (exprs!6788 List!67421)) )
))
(declare-fun lt!2500753 () Context!12576)

(assert (=> b!7005638 (= res!2858307 (not (is-Cons!67297 (exprs!6788 lt!2500753))))))

(declare-fun e!4210976 () Bool)

(declare-fun e!4210969 () Bool)

(assert (=> b!7005639 (= e!4210976 e!4210969)))

(declare-fun res!2858300 () Bool)

(assert (=> b!7005639 (=> res!2858300 e!4210969)))

(declare-fun lt!2500760 () Context!12576)

(declare-fun lt!2500764 () Context!12576)

(declare-fun z1!570 () (Set Context!12576))

(assert (=> b!7005639 (= res!2858300 (or (not (= lt!2500760 lt!2500764)) (not (set.member lt!2500753 z1!570))))))

(declare-fun ct2!306 () Context!12576)

(declare-fun ++!15283 (List!67421 List!67421) List!67421)

(assert (=> b!7005639 (= lt!2500760 (Context!12577 (++!15283 (exprs!6788 lt!2500753) (exprs!6788 ct2!306))))))

(declare-datatypes ((Unit!161260 0))(
  ( (Unit!161261) )
))
(declare-fun lt!2500758 () Unit!161260)

(declare-fun lambda!406989 () Int)

(declare-fun lemmaConcatPreservesForall!628 (List!67421 List!67421 Int) Unit!161260)

(assert (=> b!7005639 (= lt!2500758 (lemmaConcatPreservesForall!628 (exprs!6788 lt!2500753) (exprs!6788 ct2!306) lambda!406989))))

(declare-fun lambda!406988 () Int)

(declare-fun mapPost2!147 ((Set Context!12576) Int Context!12576) Context!12576)

(assert (=> b!7005639 (= lt!2500753 (mapPost2!147 z1!570 lambda!406988 lt!2500764))))

(declare-fun b!7005640 () Bool)

(declare-fun e!4210968 () Bool)

(declare-fun forall!16204 (List!67421 Int) Bool)

(assert (=> b!7005640 (= e!4210968 (forall!16204 (exprs!6788 ct2!306) lambda!406989))))

(declare-fun b!7005641 () Bool)

(declare-fun res!2858302 () Bool)

(assert (=> b!7005641 (=> res!2858302 e!4210976)))

(declare-fun lt!2500754 () (Set Context!12576))

(assert (=> b!7005641 (= res!2858302 (not (set.member lt!2500764 lt!2500754)))))

(declare-fun b!7005642 () Bool)

(declare-fun e!4210974 () Bool)

(declare-fun tp_is_empty!43809 () Bool)

(declare-fun tp!1931649 () Bool)

(assert (=> b!7005642 (= e!4210974 (and tp_is_empty!43809 tp!1931649))))

(declare-fun b!7005643 () Bool)

(declare-fun e!4210979 () Bool)

(declare-fun e!4210967 () Bool)

(assert (=> b!7005643 (= e!4210979 e!4210967)))

(declare-fun res!2858311 () Bool)

(assert (=> b!7005643 (=> res!2858311 e!4210967)))

(declare-fun lt!2500773 () (Set Context!12576))

(declare-datatypes ((List!67422 0))(
  ( (Nil!67298) (Cons!67298 (h!73746 C!34854) (t!381175 List!67422)) )
))
(declare-fun s!7408 () List!67422)

(declare-fun matchZipper!2832 ((Set Context!12576) List!67422) Bool)

(assert (=> b!7005643 (= res!2858311 (matchZipper!2832 lt!2500773 (t!381175 s!7408)))))

(declare-fun lt!2500771 () List!67421)

(declare-fun lt!2500779 () Unit!161260)

(assert (=> b!7005643 (= lt!2500779 (lemmaConcatPreservesForall!628 lt!2500771 (exprs!6788 ct2!306) lambda!406989))))

(declare-fun b!7005644 () Bool)

(declare-fun e!4210975 () Bool)

(assert (=> b!7005644 (= e!4210975 e!4210979)))

(declare-fun res!2858310 () Bool)

(assert (=> b!7005644 (=> res!2858310 e!4210979)))

(declare-fun e!4210973 () Bool)

(assert (=> b!7005644 (= res!2858310 e!4210973)))

(declare-fun res!2858306 () Bool)

(assert (=> b!7005644 (=> (not res!2858306) (not e!4210973))))

(declare-fun lt!2500762 () Bool)

(declare-fun lt!2500775 () Bool)

(assert (=> b!7005644 (= res!2858306 (not (= lt!2500762 lt!2500775)))))

(declare-fun lt!2500765 () (Set Context!12576))

(assert (=> b!7005644 (= lt!2500762 (matchZipper!2832 lt!2500765 (t!381175 s!7408)))))

(declare-fun lt!2500766 () Unit!161260)

(assert (=> b!7005644 (= lt!2500766 (lemmaConcatPreservesForall!628 lt!2500771 (exprs!6788 ct2!306) lambda!406989))))

(declare-fun lt!2500770 () (Set Context!12576))

(declare-fun e!4210972 () Bool)

(assert (=> b!7005644 (= (matchZipper!2832 lt!2500770 (t!381175 s!7408)) e!4210972)))

(declare-fun res!2858313 () Bool)

(assert (=> b!7005644 (=> res!2858313 e!4210972)))

(assert (=> b!7005644 (= res!2858313 lt!2500775)))

(declare-fun lt!2500757 () (Set Context!12576))

(assert (=> b!7005644 (= lt!2500775 (matchZipper!2832 lt!2500757 (t!381175 s!7408)))))

(declare-fun lt!2500774 () Unit!161260)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1465 ((Set Context!12576) (Set Context!12576) List!67422) Unit!161260)

(assert (=> b!7005644 (= lt!2500774 (lemmaZipperConcatMatchesSameAsBothZippers!1465 lt!2500757 lt!2500773 (t!381175 s!7408)))))

(declare-fun lt!2500768 () Unit!161260)

(assert (=> b!7005644 (= lt!2500768 (lemmaConcatPreservesForall!628 lt!2500771 (exprs!6788 ct2!306) lambda!406989))))

(declare-fun lt!2500776 () Unit!161260)

(assert (=> b!7005644 (= lt!2500776 (lemmaConcatPreservesForall!628 lt!2500771 (exprs!6788 ct2!306) lambda!406989))))

(declare-fun e!4210977 () Bool)

(assert (=> b!7005645 (= e!4210977 e!4210970)))

(declare-fun res!2858305 () Bool)

(assert (=> b!7005645 (=> res!2858305 e!4210970)))

(declare-fun lt!2500777 () (Set Context!12576))

(declare-fun derivationStepZipper!2772 ((Set Context!12576) C!34854) (Set Context!12576))

(assert (=> b!7005645 (= res!2858305 (not (= (derivationStepZipper!2772 lt!2500777 (h!73746 s!7408)) lt!2500765)))))

(declare-fun lambda!406990 () Int)

(declare-fun flatMap!2278 ((Set Context!12576) Int) (Set Context!12576))

(declare-fun derivationStepZipperUp!1942 (Context!12576 C!34854) (Set Context!12576))

(assert (=> b!7005645 (= (flatMap!2278 lt!2500777 lambda!406990) (derivationStepZipperUp!1942 lt!2500760 (h!73746 s!7408)))))

(declare-fun lt!2500769 () Unit!161260)

(declare-fun lemmaFlatMapOnSingletonSet!1793 ((Set Context!12576) Context!12576 Int) Unit!161260)

(assert (=> b!7005645 (= lt!2500769 (lemmaFlatMapOnSingletonSet!1793 lt!2500777 lt!2500760 lambda!406990))))

(assert (=> b!7005645 (= lt!2500765 (derivationStepZipperUp!1942 lt!2500760 (h!73746 s!7408)))))

(declare-fun lt!2500780 () Unit!161260)

(assert (=> b!7005645 (= lt!2500780 (lemmaConcatPreservesForall!628 (exprs!6788 lt!2500753) (exprs!6788 ct2!306) lambda!406989))))

(declare-fun b!7005646 () Bool)

(declare-fun e!4210965 () Bool)

(declare-fun tp!1931648 () Bool)

(assert (=> b!7005646 (= e!4210965 tp!1931648)))

(declare-fun b!7005647 () Bool)

(declare-fun e!4210978 () Bool)

(declare-fun tp!1931650 () Bool)

(assert (=> b!7005647 (= e!4210978 tp!1931650)))

(declare-fun b!7005648 () Bool)

(declare-fun res!2858301 () Bool)

(declare-fun e!4210971 () Bool)

(assert (=> b!7005648 (=> (not res!2858301) (not e!4210971))))

(assert (=> b!7005648 (= res!2858301 (is-Cons!67298 s!7408))))

(declare-fun b!7005650 () Bool)

(assert (=> b!7005650 (= e!4210969 e!4210977)))

(declare-fun res!2858316 () Bool)

(assert (=> b!7005650 (=> res!2858316 e!4210977)))

(declare-fun lt!2500772 () (Set Context!12576))

(assert (=> b!7005650 (= res!2858316 (not (= lt!2500777 lt!2500772)))))

(assert (=> b!7005650 (= lt!2500777 (set.insert lt!2500760 (as set.empty (Set Context!12576))))))

(declare-fun lt!2500778 () Unit!161260)

(assert (=> b!7005650 (= lt!2500778 (lemmaConcatPreservesForall!628 (exprs!6788 lt!2500753) (exprs!6788 ct2!306) lambda!406989))))

(declare-fun b!7005651 () Bool)

(declare-fun res!2858309 () Bool)

(assert (=> b!7005651 (=> res!2858309 e!4210970)))

(declare-fun isEmpty!39304 (List!67421) Bool)

(assert (=> b!7005651 (= res!2858309 (isEmpty!39304 (exprs!6788 lt!2500753)))))

(declare-fun setRes!48216 () Bool)

(declare-fun setNonEmpty!48216 () Bool)

(declare-fun tp!1931647 () Bool)

(declare-fun setElem!48216 () Context!12576)

(declare-fun inv!86090 (Context!12576) Bool)

(assert (=> setNonEmpty!48216 (= setRes!48216 (and tp!1931647 (inv!86090 setElem!48216) e!4210965))))

(declare-fun setRest!48216 () (Set Context!12576))

(assert (=> setNonEmpty!48216 (= z1!570 (set.union (set.insert setElem!48216 (as set.empty (Set Context!12576))) setRest!48216))))

(declare-fun b!7005652 () Bool)

(declare-fun e!4210966 () Bool)

(assert (=> b!7005652 (= e!4210966 e!4210975)))

(declare-fun res!2858314 () Bool)

(assert (=> b!7005652 (=> res!2858314 e!4210975)))

(assert (=> b!7005652 (= res!2858314 (not (= lt!2500765 lt!2500770)))))

(assert (=> b!7005652 (= lt!2500770 (set.union lt!2500757 lt!2500773))))

(declare-fun lt!2500767 () Context!12576)

(assert (=> b!7005652 (= lt!2500773 (derivationStepZipperUp!1942 lt!2500767 (h!73746 s!7408)))))

(declare-fun derivationStepZipperDown!2010 (Regex!17292 Context!12576 C!34854) (Set Context!12576))

(assert (=> b!7005652 (= lt!2500757 (derivationStepZipperDown!2010 (h!73745 (exprs!6788 lt!2500753)) lt!2500767 (h!73746 s!7408)))))

(assert (=> b!7005652 (= lt!2500767 (Context!12577 (++!15283 lt!2500771 (exprs!6788 ct2!306))))))

(declare-fun lt!2500761 () Unit!161260)

(assert (=> b!7005652 (= lt!2500761 (lemmaConcatPreservesForall!628 lt!2500771 (exprs!6788 ct2!306) lambda!406989))))

(declare-fun lt!2500756 () Unit!161260)

(assert (=> b!7005652 (= lt!2500756 (lemmaConcatPreservesForall!628 lt!2500771 (exprs!6788 ct2!306) lambda!406989))))

(declare-fun b!7005653 () Bool)

(assert (=> b!7005653 (= e!4210972 (matchZipper!2832 lt!2500773 (t!381175 s!7408)))))

(declare-fun b!7005654 () Bool)

(assert (=> b!7005654 (= e!4210970 e!4210966)))

(declare-fun res!2858312 () Bool)

(assert (=> b!7005654 (=> res!2858312 e!4210966)))

(declare-fun nullable!7052 (Regex!17292) Bool)

(assert (=> b!7005654 (= res!2858312 (not (nullable!7052 (h!73745 (exprs!6788 lt!2500753)))))))

(declare-fun tail!13351 (List!67421) List!67421)

(assert (=> b!7005654 (= lt!2500771 (tail!13351 (exprs!6788 lt!2500753)))))

(assert (=> b!7005655 (= e!4210971 (not e!4210976))))

(declare-fun res!2858303 () Bool)

(assert (=> b!7005655 (=> res!2858303 e!4210976)))

(assert (=> b!7005655 (= res!2858303 (not (matchZipper!2832 lt!2500772 s!7408)))))

(assert (=> b!7005655 (= lt!2500772 (set.insert lt!2500764 (as set.empty (Set Context!12576))))))

(declare-fun lambda!406987 () Int)

(declare-fun getWitness!1221 ((Set Context!12576) Int) Context!12576)

(assert (=> b!7005655 (= lt!2500764 (getWitness!1221 lt!2500754 lambda!406987))))

(declare-datatypes ((List!67423 0))(
  ( (Nil!67299) (Cons!67299 (h!73747 Context!12576) (t!381176 List!67423)) )
))
(declare-fun lt!2500755 () List!67423)

(declare-fun exists!3123 (List!67423 Int) Bool)

(assert (=> b!7005655 (exists!3123 lt!2500755 lambda!406987)))

(declare-fun lt!2500759 () Unit!161260)

(declare-fun lemmaZipperMatchesExistsMatchingContext!261 (List!67423 List!67422) Unit!161260)

(assert (=> b!7005655 (= lt!2500759 (lemmaZipperMatchesExistsMatchingContext!261 lt!2500755 s!7408))))

(declare-fun toList!10652 ((Set Context!12576)) List!67423)

(assert (=> b!7005655 (= lt!2500755 (toList!10652 lt!2500754))))

(declare-fun setIsEmpty!48216 () Bool)

(assert (=> setIsEmpty!48216 setRes!48216))

(declare-fun b!7005656 () Bool)

(assert (=> b!7005656 (= e!4210967 e!4210968)))

(declare-fun res!2858304 () Bool)

(assert (=> b!7005656 (=> res!2858304 e!4210968)))

(assert (=> b!7005656 (= res!2858304 (not (forall!16204 lt!2500771 lambda!406989)))))

(declare-fun b!7005657 () Bool)

(assert (=> b!7005657 (= e!4210973 (not (matchZipper!2832 lt!2500773 (t!381175 s!7408))))))

(declare-fun lt!2500763 () Unit!161260)

(assert (=> b!7005657 (= lt!2500763 (lemmaConcatPreservesForall!628 lt!2500771 (exprs!6788 ct2!306) lambda!406989))))

(declare-fun b!7005649 () Bool)

(declare-fun res!2858308 () Bool)

(assert (=> b!7005649 (=> res!2858308 e!4210979)))

(assert (=> b!7005649 (= res!2858308 (not lt!2500762))))

(declare-fun res!2858315 () Bool)

(assert (=> start!674308 (=> (not res!2858315) (not e!4210971))))

(assert (=> start!674308 (= res!2858315 (matchZipper!2832 lt!2500754 s!7408))))

(declare-fun appendTo!413 ((Set Context!12576) Context!12576) (Set Context!12576))

(assert (=> start!674308 (= lt!2500754 (appendTo!413 z1!570 ct2!306))))

(assert (=> start!674308 e!4210971))

(declare-fun condSetEmpty!48216 () Bool)

(assert (=> start!674308 (= condSetEmpty!48216 (= z1!570 (as set.empty (Set Context!12576))))))

(assert (=> start!674308 setRes!48216))

(assert (=> start!674308 (and (inv!86090 ct2!306) e!4210978)))

(assert (=> start!674308 e!4210974))

(assert (= (and start!674308 res!2858315) b!7005648))

(assert (= (and b!7005648 res!2858301) b!7005655))

(assert (= (and b!7005655 (not res!2858303)) b!7005641))

(assert (= (and b!7005641 (not res!2858302)) b!7005639))

(assert (= (and b!7005639 (not res!2858300)) b!7005650))

(assert (= (and b!7005650 (not res!2858316)) b!7005645))

(assert (= (and b!7005645 (not res!2858305)) b!7005638))

(assert (= (and b!7005638 (not res!2858307)) b!7005651))

(assert (= (and b!7005651 (not res!2858309)) b!7005654))

(assert (= (and b!7005654 (not res!2858312)) b!7005652))

(assert (= (and b!7005652 (not res!2858314)) b!7005644))

(assert (= (and b!7005644 (not res!2858313)) b!7005653))

(assert (= (and b!7005644 res!2858306) b!7005657))

(assert (= (and b!7005644 (not res!2858310)) b!7005649))

(assert (= (and b!7005649 (not res!2858308)) b!7005643))

(assert (= (and b!7005643 (not res!2858311)) b!7005656))

(assert (= (and b!7005656 (not res!2858304)) b!7005640))

(assert (= (and start!674308 condSetEmpty!48216) setIsEmpty!48216))

(assert (= (and start!674308 (not condSetEmpty!48216)) setNonEmpty!48216))

(assert (= setNonEmpty!48216 b!7005646))

(assert (= start!674308 b!7005647))

(assert (= (and start!674308 (is-Cons!67298 s!7408)) b!7005642))

(declare-fun m!7702316 () Bool)

(assert (=> b!7005644 m!7702316))

(declare-fun m!7702318 () Bool)

(assert (=> b!7005644 m!7702318))

(declare-fun m!7702320 () Bool)

(assert (=> b!7005644 m!7702320))

(assert (=> b!7005644 m!7702318))

(declare-fun m!7702322 () Bool)

(assert (=> b!7005644 m!7702322))

(declare-fun m!7702324 () Bool)

(assert (=> b!7005644 m!7702324))

(assert (=> b!7005644 m!7702318))

(declare-fun m!7702326 () Bool)

(assert (=> b!7005651 m!7702326))

(declare-fun m!7702328 () Bool)

(assert (=> b!7005654 m!7702328))

(declare-fun m!7702330 () Bool)

(assert (=> b!7005654 m!7702330))

(declare-fun m!7702332 () Bool)

(assert (=> b!7005643 m!7702332))

(assert (=> b!7005643 m!7702318))

(assert (=> b!7005653 m!7702332))

(declare-fun m!7702334 () Bool)

(assert (=> setNonEmpty!48216 m!7702334))

(declare-fun m!7702336 () Bool)

(assert (=> b!7005655 m!7702336))

(declare-fun m!7702338 () Bool)

(assert (=> b!7005655 m!7702338))

(declare-fun m!7702340 () Bool)

(assert (=> b!7005655 m!7702340))

(declare-fun m!7702342 () Bool)

(assert (=> b!7005655 m!7702342))

(declare-fun m!7702344 () Bool)

(assert (=> b!7005655 m!7702344))

(declare-fun m!7702346 () Bool)

(assert (=> b!7005655 m!7702346))

(declare-fun m!7702348 () Bool)

(assert (=> b!7005652 m!7702348))

(declare-fun m!7702350 () Bool)

(assert (=> b!7005652 m!7702350))

(declare-fun m!7702352 () Bool)

(assert (=> b!7005652 m!7702352))

(assert (=> b!7005652 m!7702318))

(assert (=> b!7005652 m!7702318))

(declare-fun m!7702354 () Bool)

(assert (=> b!7005650 m!7702354))

(declare-fun m!7702356 () Bool)

(assert (=> b!7005650 m!7702356))

(assert (=> b!7005645 m!7702356))

(declare-fun m!7702358 () Bool)

(assert (=> b!7005645 m!7702358))

(declare-fun m!7702360 () Bool)

(assert (=> b!7005645 m!7702360))

(declare-fun m!7702362 () Bool)

(assert (=> b!7005645 m!7702362))

(declare-fun m!7702364 () Bool)

(assert (=> b!7005645 m!7702364))

(declare-fun m!7702366 () Bool)

(assert (=> b!7005640 m!7702366))

(assert (=> b!7005657 m!7702332))

(assert (=> b!7005657 m!7702318))

(declare-fun m!7702368 () Bool)

(assert (=> b!7005656 m!7702368))

(declare-fun m!7702370 () Bool)

(assert (=> start!674308 m!7702370))

(declare-fun m!7702372 () Bool)

(assert (=> start!674308 m!7702372))

(declare-fun m!7702374 () Bool)

(assert (=> start!674308 m!7702374))

(declare-fun m!7702376 () Bool)

(assert (=> b!7005639 m!7702376))

(declare-fun m!7702378 () Bool)

(assert (=> b!7005639 m!7702378))

(assert (=> b!7005639 m!7702356))

(declare-fun m!7702380 () Bool)

(assert (=> b!7005639 m!7702380))

(declare-fun m!7702382 () Bool)

(assert (=> b!7005641 m!7702382))

(push 1)

(assert (not b!7005646))

(assert (not b!7005643))

(assert (not b!7005647))

(assert (not start!674308))

(assert (not b!7005656))

(assert (not b!7005655))

(assert (not b!7005657))

(assert (not b!7005644))

(assert (not b!7005654))

(assert (not b!7005653))

(assert (not b!7005642))

(assert (not b!7005640))

(assert tp_is_empty!43809)

(assert (not b!7005651))

(assert (not setNonEmpty!48216))

(assert (not b!7005652))

(assert (not b!7005639))

(assert (not b!7005645))

(assert (not b!7005650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2183704 () Bool)

(declare-fun res!2858374 () Bool)

(declare-fun e!4211029 () Bool)

(assert (=> d!2183704 (=> res!2858374 e!4211029)))

(assert (=> d!2183704 (= res!2858374 (is-Nil!67297 lt!2500771))))

(assert (=> d!2183704 (= (forall!16204 lt!2500771 lambda!406989) e!4211029)))

(declare-fun b!7005734 () Bool)

(declare-fun e!4211030 () Bool)

(assert (=> b!7005734 (= e!4211029 e!4211030)))

(declare-fun res!2858375 () Bool)

(assert (=> b!7005734 (=> (not res!2858375) (not e!4211030))))

(declare-fun dynLambda!27039 (Int Regex!17292) Bool)

(assert (=> b!7005734 (= res!2858375 (dynLambda!27039 lambda!406989 (h!73745 lt!2500771)))))

(declare-fun b!7005735 () Bool)

(assert (=> b!7005735 (= e!4211030 (forall!16204 (t!381174 lt!2500771) lambda!406989))))

(assert (= (and d!2183704 (not res!2858374)) b!7005734))

(assert (= (and b!7005734 res!2858375) b!7005735))

(declare-fun b_lambda!263991 () Bool)

(assert (=> (not b_lambda!263991) (not b!7005734)))

(declare-fun m!7702452 () Bool)

(assert (=> b!7005734 m!7702452))

(declare-fun m!7702454 () Bool)

(assert (=> b!7005735 m!7702454))

(assert (=> b!7005656 d!2183704))

(declare-fun d!2183706 () Bool)

(declare-fun c!1300983 () Bool)

(declare-fun isEmpty!39306 (List!67422) Bool)

(assert (=> d!2183706 (= c!1300983 (isEmpty!39306 s!7408))))

(declare-fun e!4211033 () Bool)

(assert (=> d!2183706 (= (matchZipper!2832 lt!2500772 s!7408) e!4211033)))

(declare-fun b!7005740 () Bool)

(declare-fun nullableZipper!2472 ((Set Context!12576)) Bool)

(assert (=> b!7005740 (= e!4211033 (nullableZipper!2472 lt!2500772))))

(declare-fun b!7005741 () Bool)

(declare-fun head!14156 (List!67422) C!34854)

(declare-fun tail!13353 (List!67422) List!67422)

(assert (=> b!7005741 (= e!4211033 (matchZipper!2832 (derivationStepZipper!2772 lt!2500772 (head!14156 s!7408)) (tail!13353 s!7408)))))

(assert (= (and d!2183706 c!1300983) b!7005740))

(assert (= (and d!2183706 (not c!1300983)) b!7005741))

(declare-fun m!7702456 () Bool)

(assert (=> d!2183706 m!7702456))

(declare-fun m!7702458 () Bool)

(assert (=> b!7005740 m!7702458))

(declare-fun m!7702460 () Bool)

(assert (=> b!7005741 m!7702460))

(assert (=> b!7005741 m!7702460))

(declare-fun m!7702462 () Bool)

(assert (=> b!7005741 m!7702462))

(declare-fun m!7702464 () Bool)

(assert (=> b!7005741 m!7702464))

(assert (=> b!7005741 m!7702462))

(assert (=> b!7005741 m!7702464))

(declare-fun m!7702466 () Bool)

(assert (=> b!7005741 m!7702466))

(assert (=> b!7005655 d!2183706))

(declare-fun bs!1865368 () Bool)

(declare-fun d!2183708 () Bool)

(assert (= bs!1865368 (and d!2183708 b!7005655)))

(declare-fun lambda!407029 () Int)

(assert (=> bs!1865368 (= lambda!407029 lambda!406987)))

(assert (=> d!2183708 true))

(assert (=> d!2183708 (exists!3123 lt!2500755 lambda!407029)))

(declare-fun lt!2500869 () Unit!161260)

(declare-fun choose!52588 (List!67423 List!67422) Unit!161260)

(assert (=> d!2183708 (= lt!2500869 (choose!52588 lt!2500755 s!7408))))

(declare-fun content!13343 (List!67423) (Set Context!12576))

(assert (=> d!2183708 (matchZipper!2832 (content!13343 lt!2500755) s!7408)))

(assert (=> d!2183708 (= (lemmaZipperMatchesExistsMatchingContext!261 lt!2500755 s!7408) lt!2500869)))

(declare-fun bs!1865369 () Bool)

(assert (= bs!1865369 d!2183708))

(declare-fun m!7702468 () Bool)

(assert (=> bs!1865369 m!7702468))

(declare-fun m!7702470 () Bool)

(assert (=> bs!1865369 m!7702470))

(declare-fun m!7702472 () Bool)

(assert (=> bs!1865369 m!7702472))

(assert (=> bs!1865369 m!7702472))

(declare-fun m!7702474 () Bool)

(assert (=> bs!1865369 m!7702474))

(assert (=> b!7005655 d!2183708))

(declare-fun d!2183710 () Bool)

(declare-fun e!4211036 () Bool)

(assert (=> d!2183710 e!4211036))

(declare-fun res!2858378 () Bool)

(assert (=> d!2183710 (=> (not res!2858378) (not e!4211036))))

(declare-fun lt!2500872 () Context!12576)

(declare-fun dynLambda!27040 (Int Context!12576) Bool)

(assert (=> d!2183710 (= res!2858378 (dynLambda!27040 lambda!406987 lt!2500872))))

(declare-fun getWitness!1223 (List!67423 Int) Context!12576)

(assert (=> d!2183710 (= lt!2500872 (getWitness!1223 (toList!10652 lt!2500754) lambda!406987))))

(declare-fun exists!3125 ((Set Context!12576) Int) Bool)

(assert (=> d!2183710 (exists!3125 lt!2500754 lambda!406987)))

(assert (=> d!2183710 (= (getWitness!1221 lt!2500754 lambda!406987) lt!2500872)))

(declare-fun b!7005744 () Bool)

(assert (=> b!7005744 (= e!4211036 (set.member lt!2500872 lt!2500754))))

(assert (= (and d!2183710 res!2858378) b!7005744))

(declare-fun b_lambda!263993 () Bool)

(assert (=> (not b_lambda!263993) (not d!2183710)))

(declare-fun m!7702476 () Bool)

(assert (=> d!2183710 m!7702476))

(assert (=> d!2183710 m!7702346))

(assert (=> d!2183710 m!7702346))

(declare-fun m!7702478 () Bool)

(assert (=> d!2183710 m!7702478))

(declare-fun m!7702480 () Bool)

(assert (=> d!2183710 m!7702480))

(declare-fun m!7702482 () Bool)

(assert (=> b!7005744 m!7702482))

(assert (=> b!7005655 d!2183710))

(declare-fun bs!1865370 () Bool)

(declare-fun d!2183712 () Bool)

(assert (= bs!1865370 (and d!2183712 b!7005655)))

(declare-fun lambda!407032 () Int)

(assert (=> bs!1865370 (not (= lambda!407032 lambda!406987))))

(declare-fun bs!1865371 () Bool)

(assert (= bs!1865371 (and d!2183712 d!2183708)))

(assert (=> bs!1865371 (not (= lambda!407032 lambda!407029))))

(assert (=> d!2183712 true))

(declare-fun order!27997 () Int)

(declare-fun dynLambda!27041 (Int Int) Int)

(assert (=> d!2183712 (< (dynLambda!27041 order!27997 lambda!406987) (dynLambda!27041 order!27997 lambda!407032))))

(declare-fun forall!16206 (List!67423 Int) Bool)

(assert (=> d!2183712 (= (exists!3123 lt!2500755 lambda!406987) (not (forall!16206 lt!2500755 lambda!407032)))))

(declare-fun bs!1865372 () Bool)

(assert (= bs!1865372 d!2183712))

(declare-fun m!7702484 () Bool)

(assert (=> bs!1865372 m!7702484))

(assert (=> b!7005655 d!2183712))

(declare-fun d!2183714 () Bool)

(declare-fun e!4211039 () Bool)

(assert (=> d!2183714 e!4211039))

(declare-fun res!2858381 () Bool)

(assert (=> d!2183714 (=> (not res!2858381) (not e!4211039))))

(declare-fun lt!2500875 () List!67423)

(declare-fun noDuplicate!2553 (List!67423) Bool)

(assert (=> d!2183714 (= res!2858381 (noDuplicate!2553 lt!2500875))))

(declare-fun choose!52589 ((Set Context!12576)) List!67423)

(assert (=> d!2183714 (= lt!2500875 (choose!52589 lt!2500754))))

(assert (=> d!2183714 (= (toList!10652 lt!2500754) lt!2500875)))

(declare-fun b!7005749 () Bool)

(assert (=> b!7005749 (= e!4211039 (= (content!13343 lt!2500875) lt!2500754))))

(assert (= (and d!2183714 res!2858381) b!7005749))

(declare-fun m!7702486 () Bool)

(assert (=> d!2183714 m!7702486))

(declare-fun m!7702488 () Bool)

(assert (=> d!2183714 m!7702488))

(declare-fun m!7702490 () Bool)

(assert (=> b!7005749 m!7702490))

(assert (=> b!7005655 d!2183714))

(declare-fun bs!1865373 () Bool)

(declare-fun d!2183716 () Bool)

(assert (= bs!1865373 (and d!2183716 b!7005645)))

(declare-fun lambda!407035 () Int)

(assert (=> bs!1865373 (= lambda!407035 lambda!406990)))

(assert (=> d!2183716 true))

(assert (=> d!2183716 (= (derivationStepZipper!2772 lt!2500777 (h!73746 s!7408)) (flatMap!2278 lt!2500777 lambda!407035))))

(declare-fun bs!1865374 () Bool)

(assert (= bs!1865374 d!2183716))

(declare-fun m!7702492 () Bool)

(assert (=> bs!1865374 m!7702492))

(assert (=> b!7005645 d!2183716))

(declare-fun d!2183718 () Bool)

(assert (=> d!2183718 (forall!16204 (++!15283 (exprs!6788 lt!2500753) (exprs!6788 ct2!306)) lambda!406989)))

(declare-fun lt!2500878 () Unit!161260)

(declare-fun choose!52590 (List!67421 List!67421 Int) Unit!161260)

(assert (=> d!2183718 (= lt!2500878 (choose!52590 (exprs!6788 lt!2500753) (exprs!6788 ct2!306) lambda!406989))))

(assert (=> d!2183718 (forall!16204 (exprs!6788 lt!2500753) lambda!406989)))

(assert (=> d!2183718 (= (lemmaConcatPreservesForall!628 (exprs!6788 lt!2500753) (exprs!6788 ct2!306) lambda!406989) lt!2500878)))

(declare-fun bs!1865375 () Bool)

(assert (= bs!1865375 d!2183718))

(assert (=> bs!1865375 m!7702378))

(assert (=> bs!1865375 m!7702378))

(declare-fun m!7702494 () Bool)

(assert (=> bs!1865375 m!7702494))

(declare-fun m!7702496 () Bool)

(assert (=> bs!1865375 m!7702496))

(declare-fun m!7702498 () Bool)

(assert (=> bs!1865375 m!7702498))

(assert (=> b!7005645 d!2183718))

(declare-fun d!2183720 () Bool)

(declare-fun choose!52591 ((Set Context!12576) Int) (Set Context!12576))

(assert (=> d!2183720 (= (flatMap!2278 lt!2500777 lambda!406990) (choose!52591 lt!2500777 lambda!406990))))

(declare-fun bs!1865376 () Bool)

(assert (= bs!1865376 d!2183720))

(declare-fun m!7702500 () Bool)

(assert (=> bs!1865376 m!7702500))

(assert (=> b!7005645 d!2183720))

(declare-fun call!636146 () (Set Context!12576))

(declare-fun b!7005762 () Bool)

(declare-fun e!4211048 () (Set Context!12576))

(assert (=> b!7005762 (= e!4211048 (set.union call!636146 (derivationStepZipperUp!1942 (Context!12577 (t!381174 (exprs!6788 lt!2500760))) (h!73746 s!7408))))))

(declare-fun b!7005763 () Bool)

(declare-fun e!4211047 () (Set Context!12576))

(assert (=> b!7005763 (= e!4211047 (as set.empty (Set Context!12576)))))

(declare-fun b!7005764 () Bool)

(assert (=> b!7005764 (= e!4211048 e!4211047)))

(declare-fun c!1300993 () Bool)

(assert (=> b!7005764 (= c!1300993 (is-Cons!67297 (exprs!6788 lt!2500760)))))

(declare-fun d!2183722 () Bool)

(declare-fun c!1300992 () Bool)

(declare-fun e!4211046 () Bool)

(assert (=> d!2183722 (= c!1300992 e!4211046)))

(declare-fun res!2858384 () Bool)

(assert (=> d!2183722 (=> (not res!2858384) (not e!4211046))))

(assert (=> d!2183722 (= res!2858384 (is-Cons!67297 (exprs!6788 lt!2500760)))))

(assert (=> d!2183722 (= (derivationStepZipperUp!1942 lt!2500760 (h!73746 s!7408)) e!4211048)))

(declare-fun bm!636141 () Bool)

(assert (=> bm!636141 (= call!636146 (derivationStepZipperDown!2010 (h!73745 (exprs!6788 lt!2500760)) (Context!12577 (t!381174 (exprs!6788 lt!2500760))) (h!73746 s!7408)))))

(declare-fun b!7005765 () Bool)

(assert (=> b!7005765 (= e!4211046 (nullable!7052 (h!73745 (exprs!6788 lt!2500760))))))

(declare-fun b!7005766 () Bool)

(assert (=> b!7005766 (= e!4211047 call!636146)))

(assert (= (and d!2183722 res!2858384) b!7005765))

(assert (= (and d!2183722 c!1300992) b!7005762))

(assert (= (and d!2183722 (not c!1300992)) b!7005764))

(assert (= (and b!7005764 c!1300993) b!7005766))

(assert (= (and b!7005764 (not c!1300993)) b!7005763))

(assert (= (or b!7005762 b!7005766) bm!636141))

(declare-fun m!7702502 () Bool)

(assert (=> b!7005762 m!7702502))

(declare-fun m!7702504 () Bool)

(assert (=> bm!636141 m!7702504))

(declare-fun m!7702506 () Bool)

(assert (=> b!7005765 m!7702506))

(assert (=> b!7005645 d!2183722))

(declare-fun d!2183724 () Bool)

(declare-fun dynLambda!27042 (Int Context!12576) (Set Context!12576))

(assert (=> d!2183724 (= (flatMap!2278 lt!2500777 lambda!406990) (dynLambda!27042 lambda!406990 lt!2500760))))

(declare-fun lt!2500881 () Unit!161260)

(declare-fun choose!52592 ((Set Context!12576) Context!12576 Int) Unit!161260)

(assert (=> d!2183724 (= lt!2500881 (choose!52592 lt!2500777 lt!2500760 lambda!406990))))

(assert (=> d!2183724 (= lt!2500777 (set.insert lt!2500760 (as set.empty (Set Context!12576))))))

(assert (=> d!2183724 (= (lemmaFlatMapOnSingletonSet!1793 lt!2500777 lt!2500760 lambda!406990) lt!2500881)))

(declare-fun b_lambda!263995 () Bool)

(assert (=> (not b_lambda!263995) (not d!2183724)))

(declare-fun bs!1865377 () Bool)

(assert (= bs!1865377 d!2183724))

(assert (=> bs!1865377 m!7702362))

(declare-fun m!7702508 () Bool)

(assert (=> bs!1865377 m!7702508))

(declare-fun m!7702510 () Bool)

(assert (=> bs!1865377 m!7702510))

(assert (=> bs!1865377 m!7702354))

(assert (=> b!7005645 d!2183724))

(declare-fun d!2183726 () Bool)

(declare-fun c!1300994 () Bool)

(assert (=> d!2183726 (= c!1300994 (isEmpty!39306 (t!381175 s!7408)))))

(declare-fun e!4211049 () Bool)

(assert (=> d!2183726 (= (matchZipper!2832 lt!2500770 (t!381175 s!7408)) e!4211049)))

(declare-fun b!7005767 () Bool)

(assert (=> b!7005767 (= e!4211049 (nullableZipper!2472 lt!2500770))))

(declare-fun b!7005768 () Bool)

(assert (=> b!7005768 (= e!4211049 (matchZipper!2832 (derivationStepZipper!2772 lt!2500770 (head!14156 (t!381175 s!7408))) (tail!13353 (t!381175 s!7408))))))

(assert (= (and d!2183726 c!1300994) b!7005767))

(assert (= (and d!2183726 (not c!1300994)) b!7005768))

(declare-fun m!7702512 () Bool)

(assert (=> d!2183726 m!7702512))

(declare-fun m!7702514 () Bool)

(assert (=> b!7005767 m!7702514))

(declare-fun m!7702516 () Bool)

(assert (=> b!7005768 m!7702516))

(assert (=> b!7005768 m!7702516))

(declare-fun m!7702518 () Bool)

(assert (=> b!7005768 m!7702518))

(declare-fun m!7702520 () Bool)

(assert (=> b!7005768 m!7702520))

(assert (=> b!7005768 m!7702518))

(assert (=> b!7005768 m!7702520))

(declare-fun m!7702522 () Bool)

(assert (=> b!7005768 m!7702522))

(assert (=> b!7005644 d!2183726))

(declare-fun d!2183728 () Bool)

(declare-fun c!1300995 () Bool)

(assert (=> d!2183728 (= c!1300995 (isEmpty!39306 (t!381175 s!7408)))))

(declare-fun e!4211050 () Bool)

(assert (=> d!2183728 (= (matchZipper!2832 lt!2500757 (t!381175 s!7408)) e!4211050)))

(declare-fun b!7005769 () Bool)

(assert (=> b!7005769 (= e!4211050 (nullableZipper!2472 lt!2500757))))

(declare-fun b!7005770 () Bool)

(assert (=> b!7005770 (= e!4211050 (matchZipper!2832 (derivationStepZipper!2772 lt!2500757 (head!14156 (t!381175 s!7408))) (tail!13353 (t!381175 s!7408))))))

(assert (= (and d!2183728 c!1300995) b!7005769))

(assert (= (and d!2183728 (not c!1300995)) b!7005770))

(assert (=> d!2183728 m!7702512))

(declare-fun m!7702524 () Bool)

(assert (=> b!7005769 m!7702524))

(assert (=> b!7005770 m!7702516))

(assert (=> b!7005770 m!7702516))

(declare-fun m!7702526 () Bool)

(assert (=> b!7005770 m!7702526))

(assert (=> b!7005770 m!7702520))

(assert (=> b!7005770 m!7702526))

(assert (=> b!7005770 m!7702520))

(declare-fun m!7702528 () Bool)

(assert (=> b!7005770 m!7702528))

(assert (=> b!7005644 d!2183728))

(declare-fun d!2183730 () Bool)

(assert (=> d!2183730 (forall!16204 (++!15283 lt!2500771 (exprs!6788 ct2!306)) lambda!406989)))

(declare-fun lt!2500882 () Unit!161260)

(assert (=> d!2183730 (= lt!2500882 (choose!52590 lt!2500771 (exprs!6788 ct2!306) lambda!406989))))

(assert (=> d!2183730 (forall!16204 lt!2500771 lambda!406989)))

(assert (=> d!2183730 (= (lemmaConcatPreservesForall!628 lt!2500771 (exprs!6788 ct2!306) lambda!406989) lt!2500882)))

(declare-fun bs!1865378 () Bool)

(assert (= bs!1865378 d!2183730))

(assert (=> bs!1865378 m!7702350))

(assert (=> bs!1865378 m!7702350))

(declare-fun m!7702530 () Bool)

(assert (=> bs!1865378 m!7702530))

(declare-fun m!7702532 () Bool)

(assert (=> bs!1865378 m!7702532))

(assert (=> bs!1865378 m!7702368))

(assert (=> b!7005644 d!2183730))

(declare-fun d!2183732 () Bool)

(declare-fun e!4211053 () Bool)

(assert (=> d!2183732 (= (matchZipper!2832 (set.union lt!2500757 lt!2500773) (t!381175 s!7408)) e!4211053)))

(declare-fun res!2858387 () Bool)

(assert (=> d!2183732 (=> res!2858387 e!4211053)))

(assert (=> d!2183732 (= res!2858387 (matchZipper!2832 lt!2500757 (t!381175 s!7408)))))

(declare-fun lt!2500885 () Unit!161260)

(declare-fun choose!52593 ((Set Context!12576) (Set Context!12576) List!67422) Unit!161260)

(assert (=> d!2183732 (= lt!2500885 (choose!52593 lt!2500757 lt!2500773 (t!381175 s!7408)))))

(assert (=> d!2183732 (= (lemmaZipperConcatMatchesSameAsBothZippers!1465 lt!2500757 lt!2500773 (t!381175 s!7408)) lt!2500885)))

(declare-fun b!7005773 () Bool)

(assert (=> b!7005773 (= e!4211053 (matchZipper!2832 lt!2500773 (t!381175 s!7408)))))

(assert (= (and d!2183732 (not res!2858387)) b!7005773))

(declare-fun m!7702534 () Bool)

(assert (=> d!2183732 m!7702534))

(assert (=> d!2183732 m!7702322))

(declare-fun m!7702536 () Bool)

(assert (=> d!2183732 m!7702536))

(assert (=> b!7005773 m!7702332))

(assert (=> b!7005644 d!2183732))

(declare-fun d!2183734 () Bool)

(declare-fun c!1300996 () Bool)

(assert (=> d!2183734 (= c!1300996 (isEmpty!39306 (t!381175 s!7408)))))

(declare-fun e!4211054 () Bool)

(assert (=> d!2183734 (= (matchZipper!2832 lt!2500765 (t!381175 s!7408)) e!4211054)))

(declare-fun b!7005774 () Bool)

(assert (=> b!7005774 (= e!4211054 (nullableZipper!2472 lt!2500765))))

(declare-fun b!7005775 () Bool)

(assert (=> b!7005775 (= e!4211054 (matchZipper!2832 (derivationStepZipper!2772 lt!2500765 (head!14156 (t!381175 s!7408))) (tail!13353 (t!381175 s!7408))))))

(assert (= (and d!2183734 c!1300996) b!7005774))

(assert (= (and d!2183734 (not c!1300996)) b!7005775))

(assert (=> d!2183734 m!7702512))

(declare-fun m!7702538 () Bool)

(assert (=> b!7005774 m!7702538))

(assert (=> b!7005775 m!7702516))

(assert (=> b!7005775 m!7702516))

(declare-fun m!7702540 () Bool)

(assert (=> b!7005775 m!7702540))

(assert (=> b!7005775 m!7702520))

(assert (=> b!7005775 m!7702540))

(assert (=> b!7005775 m!7702520))

(declare-fun m!7702542 () Bool)

(assert (=> b!7005775 m!7702542))

(assert (=> b!7005644 d!2183734))

(declare-fun d!2183736 () Bool)

(declare-fun nullableFct!2668 (Regex!17292) Bool)

(assert (=> d!2183736 (= (nullable!7052 (h!73745 (exprs!6788 lt!2500753))) (nullableFct!2668 (h!73745 (exprs!6788 lt!2500753))))))

(declare-fun bs!1865379 () Bool)

(assert (= bs!1865379 d!2183736))

(declare-fun m!7702544 () Bool)

(assert (=> bs!1865379 m!7702544))

(assert (=> b!7005654 d!2183736))

(declare-fun d!2183738 () Bool)

(assert (=> d!2183738 (= (tail!13351 (exprs!6788 lt!2500753)) (t!381174 (exprs!6788 lt!2500753)))))

(assert (=> b!7005654 d!2183738))

(declare-fun b!7005786 () Bool)

(declare-fun res!2858393 () Bool)

(declare-fun e!4211060 () Bool)

(assert (=> b!7005786 (=> (not res!2858393) (not e!4211060))))

(declare-fun lt!2500888 () List!67421)

(declare-fun size!40956 (List!67421) Int)

(assert (=> b!7005786 (= res!2858393 (= (size!40956 lt!2500888) (+ (size!40956 lt!2500771) (size!40956 (exprs!6788 ct2!306)))))))

(declare-fun b!7005787 () Bool)

(assert (=> b!7005787 (= e!4211060 (or (not (= (exprs!6788 ct2!306) Nil!67297)) (= lt!2500888 lt!2500771)))))

(declare-fun b!7005785 () Bool)

(declare-fun e!4211059 () List!67421)

(assert (=> b!7005785 (= e!4211059 (Cons!67297 (h!73745 lt!2500771) (++!15283 (t!381174 lt!2500771) (exprs!6788 ct2!306))))))

(declare-fun b!7005784 () Bool)

(assert (=> b!7005784 (= e!4211059 (exprs!6788 ct2!306))))

(declare-fun d!2183740 () Bool)

(assert (=> d!2183740 e!4211060))

(declare-fun res!2858392 () Bool)

(assert (=> d!2183740 (=> (not res!2858392) (not e!4211060))))

(declare-fun content!13344 (List!67421) (Set Regex!17292))

(assert (=> d!2183740 (= res!2858392 (= (content!13344 lt!2500888) (set.union (content!13344 lt!2500771) (content!13344 (exprs!6788 ct2!306)))))))

(assert (=> d!2183740 (= lt!2500888 e!4211059)))

(declare-fun c!1300999 () Bool)

(assert (=> d!2183740 (= c!1300999 (is-Nil!67297 lt!2500771))))

(assert (=> d!2183740 (= (++!15283 lt!2500771 (exprs!6788 ct2!306)) lt!2500888)))

(assert (= (and d!2183740 c!1300999) b!7005784))

(assert (= (and d!2183740 (not c!1300999)) b!7005785))

(assert (= (and d!2183740 res!2858392) b!7005786))

(assert (= (and b!7005786 res!2858393) b!7005787))

(declare-fun m!7702546 () Bool)

(assert (=> b!7005786 m!7702546))

(declare-fun m!7702548 () Bool)

(assert (=> b!7005786 m!7702548))

(declare-fun m!7702550 () Bool)

(assert (=> b!7005786 m!7702550))

(declare-fun m!7702552 () Bool)

(assert (=> b!7005785 m!7702552))

(declare-fun m!7702554 () Bool)

(assert (=> d!2183740 m!7702554))

(declare-fun m!7702556 () Bool)

(assert (=> d!2183740 m!7702556))

(declare-fun m!7702558 () Bool)

(assert (=> d!2183740 m!7702558))

(assert (=> b!7005652 d!2183740))

(declare-fun e!4211063 () (Set Context!12576))

(declare-fun call!636147 () (Set Context!12576))

(declare-fun b!7005788 () Bool)

(assert (=> b!7005788 (= e!4211063 (set.union call!636147 (derivationStepZipperUp!1942 (Context!12577 (t!381174 (exprs!6788 lt!2500767))) (h!73746 s!7408))))))

(declare-fun b!7005789 () Bool)

(declare-fun e!4211062 () (Set Context!12576))

(assert (=> b!7005789 (= e!4211062 (as set.empty (Set Context!12576)))))

(declare-fun b!7005790 () Bool)

(assert (=> b!7005790 (= e!4211063 e!4211062)))

(declare-fun c!1301001 () Bool)

(assert (=> b!7005790 (= c!1301001 (is-Cons!67297 (exprs!6788 lt!2500767)))))

(declare-fun d!2183742 () Bool)

(declare-fun c!1301000 () Bool)

(declare-fun e!4211061 () Bool)

(assert (=> d!2183742 (= c!1301000 e!4211061)))

(declare-fun res!2858394 () Bool)

(assert (=> d!2183742 (=> (not res!2858394) (not e!4211061))))

(assert (=> d!2183742 (= res!2858394 (is-Cons!67297 (exprs!6788 lt!2500767)))))

(assert (=> d!2183742 (= (derivationStepZipperUp!1942 lt!2500767 (h!73746 s!7408)) e!4211063)))

(declare-fun bm!636142 () Bool)

(assert (=> bm!636142 (= call!636147 (derivationStepZipperDown!2010 (h!73745 (exprs!6788 lt!2500767)) (Context!12577 (t!381174 (exprs!6788 lt!2500767))) (h!73746 s!7408)))))

(declare-fun b!7005791 () Bool)

(assert (=> b!7005791 (= e!4211061 (nullable!7052 (h!73745 (exprs!6788 lt!2500767))))))

(declare-fun b!7005792 () Bool)

(assert (=> b!7005792 (= e!4211062 call!636147)))

(assert (= (and d!2183742 res!2858394) b!7005791))

(assert (= (and d!2183742 c!1301000) b!7005788))

(assert (= (and d!2183742 (not c!1301000)) b!7005790))

(assert (= (and b!7005790 c!1301001) b!7005792))

(assert (= (and b!7005790 (not c!1301001)) b!7005789))

(assert (= (or b!7005788 b!7005792) bm!636142))

(declare-fun m!7702560 () Bool)

(assert (=> b!7005788 m!7702560))

(declare-fun m!7702562 () Bool)

(assert (=> bm!636142 m!7702562))

(declare-fun m!7702564 () Bool)

(assert (=> b!7005791 m!7702564))

(assert (=> b!7005652 d!2183742))

(declare-fun bm!636155 () Bool)

(declare-fun call!636160 () List!67421)

(declare-fun call!636162 () List!67421)

(assert (=> bm!636155 (= call!636160 call!636162)))

(declare-fun b!7005815 () Bool)

(declare-fun e!4211079 () (Set Context!12576))

(declare-fun call!636163 () (Set Context!12576))

(assert (=> b!7005815 (= e!4211079 call!636163)))

(declare-fun b!7005816 () Bool)

(declare-fun e!4211076 () (Set Context!12576))

(declare-fun call!636161 () (Set Context!12576))

(declare-fun call!636165 () (Set Context!12576))

(assert (=> b!7005816 (= e!4211076 (set.union call!636161 call!636165))))

(declare-fun bm!636156 () Bool)

(declare-fun c!1301015 () Bool)

(assert (=> bm!636156 (= call!636161 (derivationStepZipperDown!2010 (ite c!1301015 (regTwo!35097 (h!73745 (exprs!6788 lt!2500753))) (regOne!35096 (h!73745 (exprs!6788 lt!2500753)))) (ite c!1301015 lt!2500767 (Context!12577 call!636162)) (h!73746 s!7408)))))

(declare-fun c!1301016 () Bool)

(declare-fun bm!636157 () Bool)

(declare-fun c!1301013 () Bool)

(declare-fun $colon$colon!2515 (List!67421 Regex!17292) List!67421)

(assert (=> bm!636157 (= call!636162 ($colon$colon!2515 (exprs!6788 lt!2500767) (ite (or c!1301016 c!1301013) (regTwo!35096 (h!73745 (exprs!6788 lt!2500753))) (h!73745 (exprs!6788 lt!2500753)))))))

(declare-fun b!7005818 () Bool)

(declare-fun c!1301014 () Bool)

(assert (=> b!7005818 (= c!1301014 (is-Star!17292 (h!73745 (exprs!6788 lt!2500753))))))

(declare-fun e!4211080 () (Set Context!12576))

(assert (=> b!7005818 (= e!4211080 e!4211079)))

(declare-fun b!7005819 () Bool)

(declare-fun e!4211077 () (Set Context!12576))

(declare-fun call!636164 () (Set Context!12576))

(assert (=> b!7005819 (= e!4211077 (set.union call!636164 call!636161))))

(declare-fun b!7005820 () Bool)

(assert (=> b!7005820 (= e!4211080 call!636163)))

(declare-fun b!7005821 () Bool)

(declare-fun e!4211081 () (Set Context!12576))

(assert (=> b!7005821 (= e!4211081 e!4211077)))

(assert (=> b!7005821 (= c!1301015 (is-Union!17292 (h!73745 (exprs!6788 lt!2500753))))))

(declare-fun b!7005822 () Bool)

(declare-fun e!4211078 () Bool)

(assert (=> b!7005822 (= e!4211078 (nullable!7052 (regOne!35096 (h!73745 (exprs!6788 lt!2500753)))))))

(declare-fun b!7005823 () Bool)

(assert (=> b!7005823 (= e!4211079 (as set.empty (Set Context!12576)))))

(declare-fun b!7005824 () Bool)

(assert (=> b!7005824 (= c!1301016 e!4211078)))

(declare-fun res!2858397 () Bool)

(assert (=> b!7005824 (=> (not res!2858397) (not e!4211078))))

(assert (=> b!7005824 (= res!2858397 (is-Concat!26137 (h!73745 (exprs!6788 lt!2500753))))))

(assert (=> b!7005824 (= e!4211077 e!4211076)))

(declare-fun b!7005825 () Bool)

(assert (=> b!7005825 (= e!4211081 (set.insert lt!2500767 (as set.empty (Set Context!12576))))))

(declare-fun bm!636158 () Bool)

(assert (=> bm!636158 (= call!636164 (derivationStepZipperDown!2010 (ite c!1301015 (regOne!35097 (h!73745 (exprs!6788 lt!2500753))) (ite c!1301016 (regTwo!35096 (h!73745 (exprs!6788 lt!2500753))) (ite c!1301013 (regOne!35096 (h!73745 (exprs!6788 lt!2500753))) (reg!17621 (h!73745 (exprs!6788 lt!2500753)))))) (ite (or c!1301015 c!1301016) lt!2500767 (Context!12577 call!636160)) (h!73746 s!7408)))))

(declare-fun bm!636159 () Bool)

(assert (=> bm!636159 (= call!636165 call!636164)))

(declare-fun bm!636160 () Bool)

(assert (=> bm!636160 (= call!636163 call!636165)))

(declare-fun d!2183744 () Bool)

(declare-fun c!1301012 () Bool)

(assert (=> d!2183744 (= c!1301012 (and (is-ElementMatch!17292 (h!73745 (exprs!6788 lt!2500753))) (= (c!1300971 (h!73745 (exprs!6788 lt!2500753))) (h!73746 s!7408))))))

(assert (=> d!2183744 (= (derivationStepZipperDown!2010 (h!73745 (exprs!6788 lt!2500753)) lt!2500767 (h!73746 s!7408)) e!4211081)))

(declare-fun b!7005817 () Bool)

(assert (=> b!7005817 (= e!4211076 e!4211080)))

(assert (=> b!7005817 (= c!1301013 (is-Concat!26137 (h!73745 (exprs!6788 lt!2500753))))))

(assert (= (and d!2183744 c!1301012) b!7005825))

(assert (= (and d!2183744 (not c!1301012)) b!7005821))

(assert (= (and b!7005821 c!1301015) b!7005819))

(assert (= (and b!7005821 (not c!1301015)) b!7005824))

(assert (= (and b!7005824 res!2858397) b!7005822))

(assert (= (and b!7005824 c!1301016) b!7005816))

(assert (= (and b!7005824 (not c!1301016)) b!7005817))

(assert (= (and b!7005817 c!1301013) b!7005820))

(assert (= (and b!7005817 (not c!1301013)) b!7005818))

(assert (= (and b!7005818 c!1301014) b!7005815))

(assert (= (and b!7005818 (not c!1301014)) b!7005823))

(assert (= (or b!7005820 b!7005815) bm!636155))

(assert (= (or b!7005820 b!7005815) bm!636160))

(assert (= (or b!7005816 bm!636160) bm!636159))

(assert (= (or b!7005816 bm!636155) bm!636157))

(assert (= (or b!7005819 bm!636159) bm!636158))

(assert (= (or b!7005819 b!7005816) bm!636156))

(declare-fun m!7702566 () Bool)

(assert (=> bm!636158 m!7702566))

(declare-fun m!7702568 () Bool)

(assert (=> bm!636157 m!7702568))

(declare-fun m!7702570 () Bool)

(assert (=> bm!636156 m!7702570))

(declare-fun m!7702572 () Bool)

(assert (=> b!7005822 m!7702572))

(declare-fun m!7702574 () Bool)

(assert (=> b!7005825 m!7702574))

(assert (=> b!7005652 d!2183744))

(assert (=> b!7005652 d!2183730))

(declare-fun d!2183746 () Bool)

(declare-fun c!1301017 () Bool)

(assert (=> d!2183746 (= c!1301017 (isEmpty!39306 (t!381175 s!7408)))))

(declare-fun e!4211082 () Bool)

(assert (=> d!2183746 (= (matchZipper!2832 lt!2500773 (t!381175 s!7408)) e!4211082)))

(declare-fun b!7005826 () Bool)

(assert (=> b!7005826 (= e!4211082 (nullableZipper!2472 lt!2500773))))

(declare-fun b!7005827 () Bool)

(assert (=> b!7005827 (= e!4211082 (matchZipper!2832 (derivationStepZipper!2772 lt!2500773 (head!14156 (t!381175 s!7408))) (tail!13353 (t!381175 s!7408))))))

(assert (= (and d!2183746 c!1301017) b!7005826))

(assert (= (and d!2183746 (not c!1301017)) b!7005827))

(assert (=> d!2183746 m!7702512))

(declare-fun m!7702576 () Bool)

(assert (=> b!7005826 m!7702576))

(assert (=> b!7005827 m!7702516))

(assert (=> b!7005827 m!7702516))

(declare-fun m!7702578 () Bool)

(assert (=> b!7005827 m!7702578))

(assert (=> b!7005827 m!7702520))

(assert (=> b!7005827 m!7702578))

(assert (=> b!7005827 m!7702520))

(declare-fun m!7702580 () Bool)

(assert (=> b!7005827 m!7702580))

(assert (=> b!7005653 d!2183746))

(assert (=> b!7005643 d!2183746))

(assert (=> b!7005643 d!2183730))

(declare-fun bs!1865380 () Bool)

(declare-fun d!2183748 () Bool)

(assert (= bs!1865380 (and d!2183748 b!7005639)))

(declare-fun lambda!407038 () Int)

(assert (=> bs!1865380 (= lambda!407038 lambda!406989)))

(assert (=> d!2183748 (= (inv!86090 setElem!48216) (forall!16204 (exprs!6788 setElem!48216) lambda!407038))))

(declare-fun bs!1865381 () Bool)

(assert (= bs!1865381 d!2183748))

(declare-fun m!7702582 () Bool)

(assert (=> bs!1865381 m!7702582))

(assert (=> setNonEmpty!48216 d!2183748))

(declare-fun d!2183750 () Bool)

(declare-fun res!2858398 () Bool)

(declare-fun e!4211083 () Bool)

(assert (=> d!2183750 (=> res!2858398 e!4211083)))

(assert (=> d!2183750 (= res!2858398 (is-Nil!67297 (exprs!6788 ct2!306)))))

(assert (=> d!2183750 (= (forall!16204 (exprs!6788 ct2!306) lambda!406989) e!4211083)))

(declare-fun b!7005828 () Bool)

(declare-fun e!4211084 () Bool)

(assert (=> b!7005828 (= e!4211083 e!4211084)))

(declare-fun res!2858399 () Bool)

(assert (=> b!7005828 (=> (not res!2858399) (not e!4211084))))

(assert (=> b!7005828 (= res!2858399 (dynLambda!27039 lambda!406989 (h!73745 (exprs!6788 ct2!306))))))

(declare-fun b!7005829 () Bool)

(assert (=> b!7005829 (= e!4211084 (forall!16204 (t!381174 (exprs!6788 ct2!306)) lambda!406989))))

(assert (= (and d!2183750 (not res!2858398)) b!7005828))

(assert (= (and b!7005828 res!2858399) b!7005829))

(declare-fun b_lambda!263997 () Bool)

(assert (=> (not b_lambda!263997) (not b!7005828)))

(declare-fun m!7702584 () Bool)

(assert (=> b!7005828 m!7702584))

(declare-fun m!7702586 () Bool)

(assert (=> b!7005829 m!7702586))

(assert (=> b!7005640 d!2183750))

(declare-fun d!2183752 () Bool)

(assert (=> d!2183752 (= (isEmpty!39304 (exprs!6788 lt!2500753)) (is-Nil!67297 (exprs!6788 lt!2500753)))))

(assert (=> b!7005651 d!2183752))

(assert (=> b!7005650 d!2183718))

(declare-fun b!7005832 () Bool)

(declare-fun res!2858401 () Bool)

(declare-fun e!4211086 () Bool)

(assert (=> b!7005832 (=> (not res!2858401) (not e!4211086))))

(declare-fun lt!2500889 () List!67421)

(assert (=> b!7005832 (= res!2858401 (= (size!40956 lt!2500889) (+ (size!40956 (exprs!6788 lt!2500753)) (size!40956 (exprs!6788 ct2!306)))))))

(declare-fun b!7005833 () Bool)

(assert (=> b!7005833 (= e!4211086 (or (not (= (exprs!6788 ct2!306) Nil!67297)) (= lt!2500889 (exprs!6788 lt!2500753))))))

(declare-fun b!7005831 () Bool)

(declare-fun e!4211085 () List!67421)

(assert (=> b!7005831 (= e!4211085 (Cons!67297 (h!73745 (exprs!6788 lt!2500753)) (++!15283 (t!381174 (exprs!6788 lt!2500753)) (exprs!6788 ct2!306))))))

(declare-fun b!7005830 () Bool)

(assert (=> b!7005830 (= e!4211085 (exprs!6788 ct2!306))))

(declare-fun d!2183754 () Bool)

(assert (=> d!2183754 e!4211086))

(declare-fun res!2858400 () Bool)

(assert (=> d!2183754 (=> (not res!2858400) (not e!4211086))))

(assert (=> d!2183754 (= res!2858400 (= (content!13344 lt!2500889) (set.union (content!13344 (exprs!6788 lt!2500753)) (content!13344 (exprs!6788 ct2!306)))))))

(assert (=> d!2183754 (= lt!2500889 e!4211085)))

(declare-fun c!1301018 () Bool)

(assert (=> d!2183754 (= c!1301018 (is-Nil!67297 (exprs!6788 lt!2500753)))))

(assert (=> d!2183754 (= (++!15283 (exprs!6788 lt!2500753) (exprs!6788 ct2!306)) lt!2500889)))

(assert (= (and d!2183754 c!1301018) b!7005830))

(assert (= (and d!2183754 (not c!1301018)) b!7005831))

(assert (= (and d!2183754 res!2858400) b!7005832))

(assert (= (and b!7005832 res!2858401) b!7005833))

(declare-fun m!7702588 () Bool)

(assert (=> b!7005832 m!7702588))

(declare-fun m!7702590 () Bool)

(assert (=> b!7005832 m!7702590))

(assert (=> b!7005832 m!7702550))

(declare-fun m!7702592 () Bool)

(assert (=> b!7005831 m!7702592))

(declare-fun m!7702594 () Bool)

(assert (=> d!2183754 m!7702594))

(declare-fun m!7702596 () Bool)

(assert (=> d!2183754 m!7702596))

(assert (=> d!2183754 m!7702558))

(assert (=> b!7005639 d!2183754))

(assert (=> b!7005639 d!2183718))

(declare-fun d!2183756 () Bool)

(declare-fun e!4211089 () Bool)

(assert (=> d!2183756 e!4211089))

(declare-fun res!2858404 () Bool)

(assert (=> d!2183756 (=> (not res!2858404) (not e!4211089))))

(declare-fun lt!2500892 () Context!12576)

(declare-fun dynLambda!27043 (Int Context!12576) Context!12576)

(assert (=> d!2183756 (= res!2858404 (= lt!2500764 (dynLambda!27043 lambda!406988 lt!2500892)))))

(declare-fun choose!52594 ((Set Context!12576) Int Context!12576) Context!12576)

(assert (=> d!2183756 (= lt!2500892 (choose!52594 z1!570 lambda!406988 lt!2500764))))

(declare-fun map!15584 ((Set Context!12576) Int) (Set Context!12576))

(assert (=> d!2183756 (set.member lt!2500764 (map!15584 z1!570 lambda!406988))))

(assert (=> d!2183756 (= (mapPost2!147 z1!570 lambda!406988 lt!2500764) lt!2500892)))

(declare-fun b!7005837 () Bool)

(assert (=> b!7005837 (= e!4211089 (set.member lt!2500892 z1!570))))

(assert (= (and d!2183756 res!2858404) b!7005837))

(declare-fun b_lambda!263999 () Bool)

(assert (=> (not b_lambda!263999) (not d!2183756)))

(declare-fun m!7702598 () Bool)

(assert (=> d!2183756 m!7702598))

(declare-fun m!7702600 () Bool)

(assert (=> d!2183756 m!7702600))

(declare-fun m!7702602 () Bool)

(assert (=> d!2183756 m!7702602))

(declare-fun m!7702604 () Bool)

(assert (=> d!2183756 m!7702604))

(declare-fun m!7702606 () Bool)

(assert (=> b!7005837 m!7702606))

(assert (=> b!7005639 d!2183756))

(declare-fun d!2183758 () Bool)

(declare-fun c!1301019 () Bool)

(assert (=> d!2183758 (= c!1301019 (isEmpty!39306 s!7408))))

(declare-fun e!4211090 () Bool)

(assert (=> d!2183758 (= (matchZipper!2832 lt!2500754 s!7408) e!4211090)))

(declare-fun b!7005838 () Bool)

(assert (=> b!7005838 (= e!4211090 (nullableZipper!2472 lt!2500754))))

(declare-fun b!7005839 () Bool)

(assert (=> b!7005839 (= e!4211090 (matchZipper!2832 (derivationStepZipper!2772 lt!2500754 (head!14156 s!7408)) (tail!13353 s!7408)))))

(assert (= (and d!2183758 c!1301019) b!7005838))

(assert (= (and d!2183758 (not c!1301019)) b!7005839))

(assert (=> d!2183758 m!7702456))

(declare-fun m!7702608 () Bool)

(assert (=> b!7005838 m!7702608))

(assert (=> b!7005839 m!7702460))

(assert (=> b!7005839 m!7702460))

(declare-fun m!7702610 () Bool)

(assert (=> b!7005839 m!7702610))

(assert (=> b!7005839 m!7702464))

(assert (=> b!7005839 m!7702610))

(assert (=> b!7005839 m!7702464))

(declare-fun m!7702612 () Bool)

(assert (=> b!7005839 m!7702612))

(assert (=> start!674308 d!2183758))

(declare-fun bs!1865382 () Bool)

(declare-fun d!2183760 () Bool)

(assert (= bs!1865382 (and d!2183760 b!7005639)))

(declare-fun lambda!407043 () Int)

(assert (=> bs!1865382 (= lambda!407043 lambda!406988)))

(assert (=> d!2183760 true))

(assert (=> d!2183760 (= (appendTo!413 z1!570 ct2!306) (map!15584 z1!570 lambda!407043))))

(declare-fun bs!1865383 () Bool)

(assert (= bs!1865383 d!2183760))

(declare-fun m!7702614 () Bool)

(assert (=> bs!1865383 m!7702614))

(assert (=> start!674308 d!2183760))

(declare-fun bs!1865384 () Bool)

(declare-fun d!2183762 () Bool)

(assert (= bs!1865384 (and d!2183762 b!7005639)))

(declare-fun lambda!407044 () Int)

(assert (=> bs!1865384 (= lambda!407044 lambda!406989)))

(declare-fun bs!1865385 () Bool)

(assert (= bs!1865385 (and d!2183762 d!2183748)))

(assert (=> bs!1865385 (= lambda!407044 lambda!407038)))

(assert (=> d!2183762 (= (inv!86090 ct2!306) (forall!16204 (exprs!6788 ct2!306) lambda!407044))))

(declare-fun bs!1865386 () Bool)

(assert (= bs!1865386 d!2183762))

(declare-fun m!7702616 () Bool)

(assert (=> bs!1865386 m!7702616))

(assert (=> start!674308 d!2183762))

(assert (=> b!7005657 d!2183746))

(assert (=> b!7005657 d!2183730))

(declare-fun condSetEmpty!48222 () Bool)

(assert (=> setNonEmpty!48216 (= condSetEmpty!48222 (= setRest!48216 (as set.empty (Set Context!12576))))))

(declare-fun setRes!48222 () Bool)

(assert (=> setNonEmpty!48216 (= tp!1931647 setRes!48222)))

(declare-fun setIsEmpty!48222 () Bool)

(assert (=> setIsEmpty!48222 setRes!48222))

(declare-fun e!4211093 () Bool)

(declare-fun setNonEmpty!48222 () Bool)

(declare-fun setElem!48222 () Context!12576)

(declare-fun tp!1931668 () Bool)

(assert (=> setNonEmpty!48222 (= setRes!48222 (and tp!1931668 (inv!86090 setElem!48222) e!4211093))))

(declare-fun setRest!48222 () (Set Context!12576))

(assert (=> setNonEmpty!48222 (= setRest!48216 (set.union (set.insert setElem!48222 (as set.empty (Set Context!12576))) setRest!48222))))

(declare-fun b!7005844 () Bool)

(declare-fun tp!1931667 () Bool)

(assert (=> b!7005844 (= e!4211093 tp!1931667)))

(assert (= (and setNonEmpty!48216 condSetEmpty!48222) setIsEmpty!48222))

(assert (= (and setNonEmpty!48216 (not condSetEmpty!48222)) setNonEmpty!48222))

(assert (= setNonEmpty!48222 b!7005844))

(declare-fun m!7702618 () Bool)

(assert (=> setNonEmpty!48222 m!7702618))

(declare-fun b!7005849 () Bool)

(declare-fun e!4211096 () Bool)

(declare-fun tp!1931671 () Bool)

(assert (=> b!7005849 (= e!4211096 (and tp_is_empty!43809 tp!1931671))))

(assert (=> b!7005642 (= tp!1931649 e!4211096)))

(assert (= (and b!7005642 (is-Cons!67298 (t!381175 s!7408))) b!7005849))

(declare-fun b!7005854 () Bool)

(declare-fun e!4211099 () Bool)

(declare-fun tp!1931676 () Bool)

(declare-fun tp!1931677 () Bool)

(assert (=> b!7005854 (= e!4211099 (and tp!1931676 tp!1931677))))

(assert (=> b!7005647 (= tp!1931650 e!4211099)))

(assert (= (and b!7005647 (is-Cons!67297 (exprs!6788 ct2!306))) b!7005854))

(declare-fun b!7005855 () Bool)

(declare-fun e!4211100 () Bool)

(declare-fun tp!1931678 () Bool)

(declare-fun tp!1931679 () Bool)

(assert (=> b!7005855 (= e!4211100 (and tp!1931678 tp!1931679))))

(assert (=> b!7005646 (= tp!1931648 e!4211100)))

(assert (= (and b!7005646 (is-Cons!67297 (exprs!6788 setElem!48216))) b!7005855))

(declare-fun b_lambda!264001 () Bool)

(assert (= b_lambda!263993 (or b!7005655 b_lambda!264001)))

(declare-fun bs!1865387 () Bool)

(declare-fun d!2183764 () Bool)

(assert (= bs!1865387 (and d!2183764 b!7005655)))

(assert (=> bs!1865387 (= (dynLambda!27040 lambda!406987 lt!2500872) (matchZipper!2832 (set.insert lt!2500872 (as set.empty (Set Context!12576))) s!7408))))

(declare-fun m!7702620 () Bool)

(assert (=> bs!1865387 m!7702620))

(assert (=> bs!1865387 m!7702620))

(declare-fun m!7702622 () Bool)

(assert (=> bs!1865387 m!7702622))

(assert (=> d!2183710 d!2183764))

(declare-fun b_lambda!264003 () Bool)

(assert (= b_lambda!263997 (or b!7005639 b_lambda!264003)))

(declare-fun bs!1865388 () Bool)

(declare-fun d!2183766 () Bool)

(assert (= bs!1865388 (and d!2183766 b!7005639)))

(declare-fun validRegex!8875 (Regex!17292) Bool)

(assert (=> bs!1865388 (= (dynLambda!27039 lambda!406989 (h!73745 (exprs!6788 ct2!306))) (validRegex!8875 (h!73745 (exprs!6788 ct2!306))))))

(declare-fun m!7702624 () Bool)

(assert (=> bs!1865388 m!7702624))

(assert (=> b!7005828 d!2183766))

(declare-fun b_lambda!264005 () Bool)

(assert (= b_lambda!263991 (or b!7005639 b_lambda!264005)))

(declare-fun bs!1865389 () Bool)

(declare-fun d!2183768 () Bool)

(assert (= bs!1865389 (and d!2183768 b!7005639)))

(assert (=> bs!1865389 (= (dynLambda!27039 lambda!406989 (h!73745 lt!2500771)) (validRegex!8875 (h!73745 lt!2500771)))))

(declare-fun m!7702626 () Bool)

(assert (=> bs!1865389 m!7702626))

(assert (=> b!7005734 d!2183768))

(declare-fun b_lambda!264007 () Bool)

(assert (= b_lambda!263999 (or b!7005639 b_lambda!264007)))

(declare-fun bs!1865390 () Bool)

(declare-fun d!2183770 () Bool)

(assert (= bs!1865390 (and d!2183770 b!7005639)))

(declare-fun lt!2500895 () Unit!161260)

(assert (=> bs!1865390 (= lt!2500895 (lemmaConcatPreservesForall!628 (exprs!6788 lt!2500892) (exprs!6788 ct2!306) lambda!406989))))

(assert (=> bs!1865390 (= (dynLambda!27043 lambda!406988 lt!2500892) (Context!12577 (++!15283 (exprs!6788 lt!2500892) (exprs!6788 ct2!306))))))

(declare-fun m!7702628 () Bool)

(assert (=> bs!1865390 m!7702628))

(declare-fun m!7702630 () Bool)

(assert (=> bs!1865390 m!7702630))

(assert (=> d!2183756 d!2183770))

(declare-fun b_lambda!264009 () Bool)

(assert (= b_lambda!263995 (or b!7005645 b_lambda!264009)))

(declare-fun bs!1865391 () Bool)

(declare-fun d!2183772 () Bool)

(assert (= bs!1865391 (and d!2183772 b!7005645)))

(assert (=> bs!1865391 (= (dynLambda!27042 lambda!406990 lt!2500760) (derivationStepZipperUp!1942 lt!2500760 (h!73746 s!7408)))))

(assert (=> bs!1865391 m!7702360))

(assert (=> d!2183724 d!2183772))

(push 1)

(assert (not b!7005767))

(assert (not d!2183746))

(assert (not d!2183740))

(assert (not b!7005765))

(assert (not b!7005791))

(assert (not d!2183748))

(assert (not d!2183736))

(assert (not b!7005849))

(assert (not d!2183730))

(assert (not b!7005762))

(assert (not b!7005735))

(assert (not b!7005769))

(assert (not d!2183728))

(assert (not d!2183712))

(assert (not bs!1865391))

(assert (not b!7005788))

(assert (not b!7005773))

(assert (not bm!636141))

(assert tp_is_empty!43809)

(assert (not b!7005827))

(assert (not bm!636142))

(assert (not b_lambda!264001))

(assert (not b!7005740))

(assert (not b_lambda!264003))

(assert (not b!7005741))

(assert (not b!7005855))

(assert (not b!7005844))

(assert (not b!7005786))

(assert (not b!7005829))

(assert (not d!2183734))

(assert (not d!2183754))

(assert (not d!2183758))

(assert (not b!7005854))

(assert (not d!2183762))

(assert (not b!7005822))

(assert (not d!2183710))

(assert (not d!2183716))

(assert (not bm!636157))

(assert (not b_lambda!264005))

(assert (not d!2183714))

(assert (not b!7005770))

(assert (not d!2183726))

(assert (not b_lambda!264007))

(assert (not b!7005775))

(assert (not b!7005785))

(assert (not bs!1865388))

(assert (not b!7005838))

(assert (not b!7005832))

(assert (not b!7005831))

(assert (not b_lambda!264009))

(assert (not d!2183732))

(assert (not d!2183718))

(assert (not b!7005774))

(assert (not d!2183724))

(assert (not bm!636158))

(assert (not d!2183756))

(assert (not d!2183706))

(assert (not b!7005768))

(assert (not bs!1865387))

(assert (not b!7005826))

(assert (not b!7005749))

(assert (not bs!1865390))

(assert (not setNonEmpty!48222))

(assert (not bs!1865389))

(assert (not d!2183720))

(assert (not d!2183708))

(assert (not d!2183760))

(assert (not b!7005839))

(assert (not bm!636156))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

