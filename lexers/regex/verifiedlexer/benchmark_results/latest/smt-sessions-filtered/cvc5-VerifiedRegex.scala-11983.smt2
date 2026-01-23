; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!671440 () Bool)

(assert start!671440)

(declare-fun b!6988357 () Bool)

(assert (=> b!6988357 true))

(declare-fun b!6988359 () Bool)

(assert (=> b!6988359 true))

(declare-fun b!6988362 () Bool)

(assert (=> b!6988362 true))

(declare-fun res!2849859 () Bool)

(declare-fun e!4200314 () Bool)

(assert (=> start!671440 (=> (not res!2849859) (not e!4200314))))

(declare-datatypes ((C!34694 0))(
  ( (C!34695 (val!27049 Int)) )
))
(declare-datatypes ((Regex!17212 0))(
  ( (ElementMatch!17212 (c!1296058 C!34694)) (Concat!26057 (regOne!34936 Regex!17212) (regTwo!34936 Regex!17212)) (EmptyExpr!17212) (Star!17212 (reg!17541 Regex!17212)) (EmptyLang!17212) (Union!17212 (regOne!34937 Regex!17212) (regTwo!34937 Regex!17212)) )
))
(declare-datatypes ((List!67181 0))(
  ( (Nil!67057) (Cons!67057 (h!73505 Regex!17212) (t!380928 List!67181)) )
))
(declare-datatypes ((Context!12416 0))(
  ( (Context!12417 (exprs!6708 List!67181)) )
))
(declare-fun lt!2485853 () (Set Context!12416))

(declare-datatypes ((List!67182 0))(
  ( (Nil!67058) (Cons!67058 (h!73506 C!34694) (t!380929 List!67182)) )
))
(declare-fun s!7408 () List!67182)

(declare-fun matchZipper!2752 ((Set Context!12416) List!67182) Bool)

(assert (=> start!671440 (= res!2849859 (matchZipper!2752 lt!2485853 s!7408))))

(declare-fun z1!570 () (Set Context!12416))

(declare-fun ct2!306 () Context!12416)

(declare-fun appendTo!333 ((Set Context!12416) Context!12416) (Set Context!12416))

(assert (=> start!671440 (= lt!2485853 (appendTo!333 z1!570 ct2!306))))

(assert (=> start!671440 e!4200314))

(declare-fun condSetEmpty!47772 () Bool)

(assert (=> start!671440 (= condSetEmpty!47772 (= z1!570 (as set.empty (Set Context!12416))))))

(declare-fun setRes!47772 () Bool)

(assert (=> start!671440 setRes!47772))

(declare-fun e!4200313 () Bool)

(declare-fun inv!85890 (Context!12416) Bool)

(assert (=> start!671440 (and (inv!85890 ct2!306) e!4200313)))

(declare-fun e!4200301 () Bool)

(assert (=> start!671440 e!4200301))

(declare-fun b!6988354 () Bool)

(declare-fun e!4200307 () Bool)

(declare-fun e!4200302 () Bool)

(assert (=> b!6988354 (= e!4200307 e!4200302)))

(declare-fun res!2849868 () Bool)

(assert (=> b!6988354 (=> res!2849868 e!4200302)))

(declare-fun lt!2485870 () List!67181)

(declare-fun lambda!401134 () Int)

(declare-fun forall!16124 (List!67181 Int) Bool)

(assert (=> b!6988354 (= res!2849868 (not (forall!16124 lt!2485870 lambda!401134)))))

(declare-datatypes ((Unit!161079 0))(
  ( (Unit!161080) )
))
(declare-fun lt!2485860 () Unit!161079)

(declare-fun lemmaConcatPreservesForall!548 (List!67181 List!67181 Int) Unit!161079)

(assert (=> b!6988354 (= lt!2485860 (lemmaConcatPreservesForall!548 lt!2485870 (exprs!6708 ct2!306) lambda!401134))))

(declare-fun lt!2485855 () (Set Context!12416))

(declare-fun lambda!401135 () Int)

(declare-fun lt!2485854 () Context!12416)

(declare-fun flatMap!2198 ((Set Context!12416) Int) (Set Context!12416))

(declare-fun derivationStepZipperUp!1862 (Context!12416 C!34694) (Set Context!12416))

(assert (=> b!6988354 (= (flatMap!2198 lt!2485855 lambda!401135) (derivationStepZipperUp!1862 lt!2485854 (h!73506 s!7408)))))

(declare-fun lt!2485844 () Unit!161079)

(declare-fun lemmaFlatMapOnSingletonSet!1713 ((Set Context!12416) Context!12416 Int) Unit!161079)

(assert (=> b!6988354 (= lt!2485844 (lemmaFlatMapOnSingletonSet!1713 lt!2485855 lt!2485854 lambda!401135))))

(assert (=> b!6988354 (= lt!2485855 (set.insert lt!2485854 (as set.empty (Set Context!12416))))))

(declare-fun lt!2485847 () Unit!161079)

(assert (=> b!6988354 (= lt!2485847 (lemmaConcatPreservesForall!548 lt!2485870 (exprs!6708 ct2!306) lambda!401134))))

(declare-fun lt!2485862 () Unit!161079)

(assert (=> b!6988354 (= lt!2485862 (lemmaConcatPreservesForall!548 lt!2485870 (exprs!6708 ct2!306) lambda!401134))))

(declare-fun b!6988355 () Bool)

(declare-fun e!4200306 () Bool)

(declare-fun e!4200308 () Bool)

(assert (=> b!6988355 (= e!4200306 e!4200308)))

(declare-fun res!2849861 () Bool)

(assert (=> b!6988355 (=> res!2849861 e!4200308)))

(declare-fun lt!2485867 () Context!12416)

(declare-fun nullable!6972 (Regex!17212) Bool)

(assert (=> b!6988355 (= res!2849861 (not (nullable!6972 (h!73505 (exprs!6708 lt!2485867)))))))

(declare-fun tail!13217 (List!67181) List!67181)

(assert (=> b!6988355 (= lt!2485870 (tail!13217 (exprs!6708 lt!2485867)))))

(declare-fun b!6988356 () Bool)

(declare-fun res!2849863 () Bool)

(declare-fun e!4200315 () Bool)

(assert (=> b!6988356 (=> res!2849863 e!4200315)))

(declare-fun lt!2485857 () Context!12416)

(assert (=> b!6988356 (= res!2849863 (not (set.member lt!2485857 lt!2485853)))))

(assert (=> b!6988357 (= e!4200314 (not e!4200315))))

(declare-fun res!2849867 () Bool)

(assert (=> b!6988357 (=> res!2849867 e!4200315)))

(declare-fun lt!2485850 () (Set Context!12416))

(assert (=> b!6988357 (= res!2849867 (not (matchZipper!2752 lt!2485850 s!7408)))))

(assert (=> b!6988357 (= lt!2485850 (set.insert lt!2485857 (as set.empty (Set Context!12416))))))

(declare-fun lambda!401132 () Int)

(declare-fun getWitness!1107 ((Set Context!12416) Int) Context!12416)

(assert (=> b!6988357 (= lt!2485857 (getWitness!1107 lt!2485853 lambda!401132))))

(declare-datatypes ((List!67183 0))(
  ( (Nil!67059) (Cons!67059 (h!73507 Context!12416) (t!380930 List!67183)) )
))
(declare-fun lt!2485861 () List!67183)

(declare-fun exists!2996 (List!67183 Int) Bool)

(assert (=> b!6988357 (exists!2996 lt!2485861 lambda!401132)))

(declare-fun lt!2485863 () Unit!161079)

(declare-fun lemmaZipperMatchesExistsMatchingContext!181 (List!67183 List!67182) Unit!161079)

(assert (=> b!6988357 (= lt!2485863 (lemmaZipperMatchesExistsMatchingContext!181 lt!2485861 s!7408))))

(declare-fun toList!10572 ((Set Context!12416)) List!67183)

(assert (=> b!6988357 (= lt!2485861 (toList!10572 lt!2485853))))

(declare-fun b!6988358 () Bool)

(declare-fun res!2849864 () Bool)

(declare-fun e!4200303 () Bool)

(assert (=> b!6988358 (=> res!2849864 e!4200303)))

(declare-fun lt!2485851 () Bool)

(assert (=> b!6988358 (= res!2849864 (not lt!2485851))))

(declare-fun e!4200311 () Bool)

(assert (=> b!6988359 (= e!4200315 e!4200311)))

(declare-fun res!2849870 () Bool)

(assert (=> b!6988359 (=> res!2849870 e!4200311)))

(declare-fun lt!2485852 () Context!12416)

(assert (=> b!6988359 (= res!2849870 (or (not (= lt!2485852 lt!2485857)) (not (set.member lt!2485867 z1!570))))))

(declare-fun ++!15157 (List!67181 List!67181) List!67181)

(assert (=> b!6988359 (= lt!2485852 (Context!12417 (++!15157 (exprs!6708 lt!2485867) (exprs!6708 ct2!306))))))

(declare-fun lt!2485869 () Unit!161079)

(assert (=> b!6988359 (= lt!2485869 (lemmaConcatPreservesForall!548 (exprs!6708 lt!2485867) (exprs!6708 ct2!306) lambda!401134))))

(declare-fun lambda!401133 () Int)

(declare-fun mapPost2!67 ((Set Context!12416) Int Context!12416) Context!12416)

(assert (=> b!6988359 (= lt!2485867 (mapPost2!67 z1!570 lambda!401133 lt!2485857))))

(declare-fun b!6988360 () Bool)

(declare-fun res!2849874 () Bool)

(assert (=> b!6988360 (=> (not res!2849874) (not e!4200314))))

(assert (=> b!6988360 (= res!2849874 (is-Cons!67058 s!7408))))

(declare-fun b!6988361 () Bool)

(declare-fun e!4200305 () Bool)

(declare-fun lt!2485868 () (Set Context!12416))

(assert (=> b!6988361 (= e!4200305 (not (matchZipper!2752 lt!2485868 (t!380929 s!7408))))))

(declare-fun lt!2485871 () Unit!161079)

(assert (=> b!6988361 (= lt!2485871 (lemmaConcatPreservesForall!548 lt!2485870 (exprs!6708 ct2!306) lambda!401134))))

(declare-fun e!4200310 () Bool)

(assert (=> b!6988362 (= e!4200310 e!4200306)))

(declare-fun res!2849873 () Bool)

(assert (=> b!6988362 (=> res!2849873 e!4200306)))

(declare-fun lt!2485841 () (Set Context!12416))

(declare-fun lt!2485866 () (Set Context!12416))

(declare-fun derivationStepZipper!2692 ((Set Context!12416) C!34694) (Set Context!12416))

(assert (=> b!6988362 (= res!2849873 (not (= (derivationStepZipper!2692 lt!2485841 (h!73506 s!7408)) lt!2485866)))))

(assert (=> b!6988362 (= (flatMap!2198 lt!2485841 lambda!401135) (derivationStepZipperUp!1862 lt!2485852 (h!73506 s!7408)))))

(declare-fun lt!2485859 () Unit!161079)

(assert (=> b!6988362 (= lt!2485859 (lemmaFlatMapOnSingletonSet!1713 lt!2485841 lt!2485852 lambda!401135))))

(assert (=> b!6988362 (= lt!2485866 (derivationStepZipperUp!1862 lt!2485852 (h!73506 s!7408)))))

(declare-fun lt!2485858 () Unit!161079)

(assert (=> b!6988362 (= lt!2485858 (lemmaConcatPreservesForall!548 (exprs!6708 lt!2485867) (exprs!6708 ct2!306) lambda!401134))))

(declare-fun b!6988363 () Bool)

(declare-fun e!4200312 () Bool)

(assert (=> b!6988363 (= e!4200308 e!4200312)))

(declare-fun res!2849862 () Bool)

(assert (=> b!6988363 (=> res!2849862 e!4200312)))

(declare-fun lt!2485843 () (Set Context!12416))

(assert (=> b!6988363 (= res!2849862 (not (= lt!2485866 lt!2485843)))))

(declare-fun lt!2485842 () (Set Context!12416))

(assert (=> b!6988363 (= lt!2485843 (set.union lt!2485842 lt!2485868))))

(assert (=> b!6988363 (= lt!2485868 (derivationStepZipperUp!1862 lt!2485854 (h!73506 s!7408)))))

(declare-fun derivationStepZipperDown!1930 (Regex!17212 Context!12416 C!34694) (Set Context!12416))

(assert (=> b!6988363 (= lt!2485842 (derivationStepZipperDown!1930 (h!73505 (exprs!6708 lt!2485867)) lt!2485854 (h!73506 s!7408)))))

(assert (=> b!6988363 (= lt!2485854 (Context!12417 (++!15157 lt!2485870 (exprs!6708 ct2!306))))))

(declare-fun lt!2485845 () Unit!161079)

(assert (=> b!6988363 (= lt!2485845 (lemmaConcatPreservesForall!548 lt!2485870 (exprs!6708 ct2!306) lambda!401134))))

(declare-fun lt!2485872 () Unit!161079)

(assert (=> b!6988363 (= lt!2485872 (lemmaConcatPreservesForall!548 lt!2485870 (exprs!6708 ct2!306) lambda!401134))))

(declare-fun b!6988364 () Bool)

(declare-fun tp!1929506 () Bool)

(assert (=> b!6988364 (= e!4200313 tp!1929506)))

(declare-fun b!6988365 () Bool)

(assert (=> b!6988365 (= e!4200302 (forall!16124 (exprs!6708 ct2!306) lambda!401134))))

(declare-fun b!6988366 () Bool)

(declare-fun res!2849871 () Bool)

(assert (=> b!6988366 (=> res!2849871 e!4200306)))

(assert (=> b!6988366 (= res!2849871 (not (is-Cons!67057 (exprs!6708 lt!2485867))))))

(declare-fun b!6988367 () Bool)

(declare-fun e!4200304 () Bool)

(assert (=> b!6988367 (= e!4200304 (matchZipper!2752 lt!2485868 (t!380929 s!7408)))))

(declare-fun b!6988368 () Bool)

(declare-fun e!4200309 () Bool)

(declare-fun tp!1929505 () Bool)

(assert (=> b!6988368 (= e!4200309 tp!1929505)))

(declare-fun b!6988369 () Bool)

(assert (=> b!6988369 (= e!4200311 e!4200310)))

(declare-fun res!2849872 () Bool)

(assert (=> b!6988369 (=> res!2849872 e!4200310)))

(assert (=> b!6988369 (= res!2849872 (not (= lt!2485841 lt!2485850)))))

(assert (=> b!6988369 (= lt!2485841 (set.insert lt!2485852 (as set.empty (Set Context!12416))))))

(declare-fun lt!2485846 () Unit!161079)

(assert (=> b!6988369 (= lt!2485846 (lemmaConcatPreservesForall!548 (exprs!6708 lt!2485867) (exprs!6708 ct2!306) lambda!401134))))

(declare-fun b!6988370 () Bool)

(assert (=> b!6988370 (= e!4200312 e!4200303)))

(declare-fun res!2849860 () Bool)

(assert (=> b!6988370 (=> res!2849860 e!4200303)))

(assert (=> b!6988370 (= res!2849860 e!4200305)))

(declare-fun res!2849869 () Bool)

(assert (=> b!6988370 (=> (not res!2849869) (not e!4200305))))

(declare-fun lt!2485864 () Bool)

(assert (=> b!6988370 (= res!2849869 (not (= lt!2485851 lt!2485864)))))

(assert (=> b!6988370 (= lt!2485851 (matchZipper!2752 lt!2485866 (t!380929 s!7408)))))

(declare-fun lt!2485849 () Unit!161079)

(assert (=> b!6988370 (= lt!2485849 (lemmaConcatPreservesForall!548 lt!2485870 (exprs!6708 ct2!306) lambda!401134))))

(assert (=> b!6988370 (= (matchZipper!2752 lt!2485843 (t!380929 s!7408)) e!4200304)))

(declare-fun res!2849866 () Bool)

(assert (=> b!6988370 (=> res!2849866 e!4200304)))

(assert (=> b!6988370 (= res!2849866 lt!2485864)))

(assert (=> b!6988370 (= lt!2485864 (matchZipper!2752 lt!2485842 (t!380929 s!7408)))))

(declare-fun lt!2485848 () Unit!161079)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1385 ((Set Context!12416) (Set Context!12416) List!67182) Unit!161079)

(assert (=> b!6988370 (= lt!2485848 (lemmaZipperConcatMatchesSameAsBothZippers!1385 lt!2485842 lt!2485868 (t!380929 s!7408)))))

(declare-fun lt!2485873 () Unit!161079)

(assert (=> b!6988370 (= lt!2485873 (lemmaConcatPreservesForall!548 lt!2485870 (exprs!6708 ct2!306) lambda!401134))))

(declare-fun lt!2485865 () Unit!161079)

(assert (=> b!6988370 (= lt!2485865 (lemmaConcatPreservesForall!548 lt!2485870 (exprs!6708 ct2!306) lambda!401134))))

(declare-fun b!6988371 () Bool)

(declare-fun tp_is_empty!43649 () Bool)

(declare-fun tp!1929504 () Bool)

(assert (=> b!6988371 (= e!4200301 (and tp_is_empty!43649 tp!1929504))))

(declare-fun b!6988372 () Bool)

(assert (=> b!6988372 (= e!4200303 e!4200307)))

(declare-fun res!2849865 () Bool)

(assert (=> b!6988372 (=> res!2849865 e!4200307)))

(assert (=> b!6988372 (= res!2849865 (not (matchZipper!2752 lt!2485868 (t!380929 s!7408))))))

(declare-fun lt!2485856 () Unit!161079)

(assert (=> b!6988372 (= lt!2485856 (lemmaConcatPreservesForall!548 lt!2485870 (exprs!6708 ct2!306) lambda!401134))))

(declare-fun b!6988373 () Bool)

(declare-fun res!2849875 () Bool)

(assert (=> b!6988373 (=> res!2849875 e!4200306)))

(declare-fun isEmpty!39141 (List!67181) Bool)

(assert (=> b!6988373 (= res!2849875 (isEmpty!39141 (exprs!6708 lt!2485867)))))

(declare-fun setElem!47772 () Context!12416)

(declare-fun setNonEmpty!47772 () Bool)

(declare-fun tp!1929503 () Bool)

(assert (=> setNonEmpty!47772 (= setRes!47772 (and tp!1929503 (inv!85890 setElem!47772) e!4200309))))

(declare-fun setRest!47772 () (Set Context!12416))

(assert (=> setNonEmpty!47772 (= z1!570 (set.union (set.insert setElem!47772 (as set.empty (Set Context!12416))) setRest!47772))))

(declare-fun setIsEmpty!47772 () Bool)

(assert (=> setIsEmpty!47772 setRes!47772))

(assert (= (and start!671440 res!2849859) b!6988360))

(assert (= (and b!6988360 res!2849874) b!6988357))

(assert (= (and b!6988357 (not res!2849867)) b!6988356))

(assert (= (and b!6988356 (not res!2849863)) b!6988359))

(assert (= (and b!6988359 (not res!2849870)) b!6988369))

(assert (= (and b!6988369 (not res!2849872)) b!6988362))

(assert (= (and b!6988362 (not res!2849873)) b!6988366))

(assert (= (and b!6988366 (not res!2849871)) b!6988373))

(assert (= (and b!6988373 (not res!2849875)) b!6988355))

(assert (= (and b!6988355 (not res!2849861)) b!6988363))

(assert (= (and b!6988363 (not res!2849862)) b!6988370))

(assert (= (and b!6988370 (not res!2849866)) b!6988367))

(assert (= (and b!6988370 res!2849869) b!6988361))

(assert (= (and b!6988370 (not res!2849860)) b!6988358))

(assert (= (and b!6988358 (not res!2849864)) b!6988372))

(assert (= (and b!6988372 (not res!2849865)) b!6988354))

(assert (= (and b!6988354 (not res!2849868)) b!6988365))

(assert (= (and start!671440 condSetEmpty!47772) setIsEmpty!47772))

(assert (= (and start!671440 (not condSetEmpty!47772)) setNonEmpty!47772))

(assert (= setNonEmpty!47772 b!6988368))

(assert (= start!671440 b!6988364))

(assert (= (and start!671440 (is-Cons!67058 s!7408)) b!6988371))

(declare-fun m!7676602 () Bool)

(assert (=> b!6988367 m!7676602))

(declare-fun m!7676604 () Bool)

(assert (=> b!6988369 m!7676604))

(declare-fun m!7676606 () Bool)

(assert (=> b!6988369 m!7676606))

(declare-fun m!7676608 () Bool)

(assert (=> start!671440 m!7676608))

(declare-fun m!7676610 () Bool)

(assert (=> start!671440 m!7676610))

(declare-fun m!7676612 () Bool)

(assert (=> start!671440 m!7676612))

(declare-fun m!7676614 () Bool)

(assert (=> b!6988370 m!7676614))

(declare-fun m!7676616 () Bool)

(assert (=> b!6988370 m!7676616))

(assert (=> b!6988370 m!7676614))

(declare-fun m!7676618 () Bool)

(assert (=> b!6988370 m!7676618))

(assert (=> b!6988370 m!7676614))

(declare-fun m!7676620 () Bool)

(assert (=> b!6988370 m!7676620))

(declare-fun m!7676622 () Bool)

(assert (=> b!6988370 m!7676622))

(declare-fun m!7676624 () Bool)

(assert (=> b!6988356 m!7676624))

(declare-fun m!7676626 () Bool)

(assert (=> b!6988359 m!7676626))

(declare-fun m!7676628 () Bool)

(assert (=> b!6988359 m!7676628))

(assert (=> b!6988359 m!7676606))

(declare-fun m!7676630 () Bool)

(assert (=> b!6988359 m!7676630))

(declare-fun m!7676632 () Bool)

(assert (=> b!6988355 m!7676632))

(declare-fun m!7676634 () Bool)

(assert (=> b!6988355 m!7676634))

(assert (=> b!6988372 m!7676602))

(assert (=> b!6988372 m!7676614))

(declare-fun m!7676636 () Bool)

(assert (=> b!6988365 m!7676636))

(declare-fun m!7676638 () Bool)

(assert (=> b!6988373 m!7676638))

(assert (=> b!6988361 m!7676602))

(assert (=> b!6988361 m!7676614))

(declare-fun m!7676640 () Bool)

(assert (=> b!6988357 m!7676640))

(declare-fun m!7676642 () Bool)

(assert (=> b!6988357 m!7676642))

(declare-fun m!7676644 () Bool)

(assert (=> b!6988357 m!7676644))

(declare-fun m!7676646 () Bool)

(assert (=> b!6988357 m!7676646))

(declare-fun m!7676648 () Bool)

(assert (=> b!6988357 m!7676648))

(declare-fun m!7676650 () Bool)

(assert (=> b!6988357 m!7676650))

(assert (=> b!6988362 m!7676606))

(declare-fun m!7676652 () Bool)

(assert (=> b!6988362 m!7676652))

(declare-fun m!7676654 () Bool)

(assert (=> b!6988362 m!7676654))

(declare-fun m!7676656 () Bool)

(assert (=> b!6988362 m!7676656))

(declare-fun m!7676658 () Bool)

(assert (=> b!6988362 m!7676658))

(assert (=> b!6988354 m!7676614))

(declare-fun m!7676660 () Bool)

(assert (=> b!6988354 m!7676660))

(declare-fun m!7676662 () Bool)

(assert (=> b!6988354 m!7676662))

(declare-fun m!7676664 () Bool)

(assert (=> b!6988354 m!7676664))

(assert (=> b!6988354 m!7676614))

(declare-fun m!7676666 () Bool)

(assert (=> b!6988354 m!7676666))

(assert (=> b!6988354 m!7676614))

(declare-fun m!7676668 () Bool)

(assert (=> b!6988354 m!7676668))

(declare-fun m!7676670 () Bool)

(assert (=> setNonEmpty!47772 m!7676670))

(assert (=> b!6988363 m!7676614))

(assert (=> b!6988363 m!7676662))

(declare-fun m!7676672 () Bool)

(assert (=> b!6988363 m!7676672))

(assert (=> b!6988363 m!7676614))

(declare-fun m!7676674 () Bool)

(assert (=> b!6988363 m!7676674))

(push 1)

(assert (not b!6988369))

(assert (not start!671440))

(assert (not b!6988355))

(assert (not b!6988357))

(assert (not b!6988365))

(assert (not b!6988361))

(assert (not setNonEmpty!47772))

(assert (not b!6988364))

(assert (not b!6988372))

(assert tp_is_empty!43649)

(assert (not b!6988367))

(assert (not b!6988370))

(assert (not b!6988371))

(assert (not b!6988368))

(assert (not b!6988362))

(assert (not b!6988354))

(assert (not b!6988359))

(assert (not b!6988363))

(assert (not b!6988373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2176786 () Bool)

(declare-fun c!1296072 () Bool)

(declare-fun isEmpty!39143 (List!67182) Bool)

(assert (=> d!2176786 (= c!1296072 (isEmpty!39143 (t!380929 s!7408)))))

(declare-fun e!4200363 () Bool)

(assert (=> d!2176786 (= (matchZipper!2752 lt!2485868 (t!380929 s!7408)) e!4200363)))

(declare-fun b!6988450 () Bool)

(declare-fun nullableZipper!2432 ((Set Context!12416)) Bool)

(assert (=> b!6988450 (= e!4200363 (nullableZipper!2432 lt!2485868))))

(declare-fun b!6988451 () Bool)

(declare-fun head!14107 (List!67182) C!34694)

(declare-fun tail!13219 (List!67182) List!67182)

(assert (=> b!6988451 (= e!4200363 (matchZipper!2752 (derivationStepZipper!2692 lt!2485868 (head!14107 (t!380929 s!7408))) (tail!13219 (t!380929 s!7408))))))

(assert (= (and d!2176786 c!1296072) b!6988450))

(assert (= (and d!2176786 (not c!1296072)) b!6988451))

(declare-fun m!7676750 () Bool)

(assert (=> d!2176786 m!7676750))

(declare-fun m!7676752 () Bool)

(assert (=> b!6988450 m!7676752))

(declare-fun m!7676754 () Bool)

(assert (=> b!6988451 m!7676754))

(assert (=> b!6988451 m!7676754))

(declare-fun m!7676756 () Bool)

(assert (=> b!6988451 m!7676756))

(declare-fun m!7676758 () Bool)

(assert (=> b!6988451 m!7676758))

(assert (=> b!6988451 m!7676756))

(assert (=> b!6988451 m!7676758))

(declare-fun m!7676760 () Bool)

(assert (=> b!6988451 m!7676760))

(assert (=> b!6988367 d!2176786))

(declare-fun bs!1861985 () Bool)

(declare-fun d!2176788 () Bool)

(assert (= bs!1861985 (and d!2176788 b!6988357)))

(declare-fun lambda!401182 () Int)

(assert (=> bs!1861985 (not (= lambda!401182 lambda!401132))))

(assert (=> d!2176788 true))

(declare-fun order!27909 () Int)

(declare-fun dynLambda!26879 (Int Int) Int)

(assert (=> d!2176788 (< (dynLambda!26879 order!27909 lambda!401132) (dynLambda!26879 order!27909 lambda!401182))))

(declare-fun forall!16126 (List!67183 Int) Bool)

(assert (=> d!2176788 (= (exists!2996 lt!2485861 lambda!401132) (not (forall!16126 lt!2485861 lambda!401182)))))

(declare-fun bs!1861986 () Bool)

(assert (= bs!1861986 d!2176788))

(declare-fun m!7676762 () Bool)

(assert (=> bs!1861986 m!7676762))

(assert (=> b!6988357 d!2176788))

(declare-fun d!2176790 () Bool)

(declare-fun c!1296073 () Bool)

(assert (=> d!2176790 (= c!1296073 (isEmpty!39143 s!7408))))

(declare-fun e!4200364 () Bool)

(assert (=> d!2176790 (= (matchZipper!2752 lt!2485850 s!7408) e!4200364)))

(declare-fun b!6988454 () Bool)

(assert (=> b!6988454 (= e!4200364 (nullableZipper!2432 lt!2485850))))

(declare-fun b!6988455 () Bool)

(assert (=> b!6988455 (= e!4200364 (matchZipper!2752 (derivationStepZipper!2692 lt!2485850 (head!14107 s!7408)) (tail!13219 s!7408)))))

(assert (= (and d!2176790 c!1296073) b!6988454))

(assert (= (and d!2176790 (not c!1296073)) b!6988455))

(declare-fun m!7676764 () Bool)

(assert (=> d!2176790 m!7676764))

(declare-fun m!7676766 () Bool)

(assert (=> b!6988454 m!7676766))

(declare-fun m!7676768 () Bool)

(assert (=> b!6988455 m!7676768))

(assert (=> b!6988455 m!7676768))

(declare-fun m!7676770 () Bool)

(assert (=> b!6988455 m!7676770))

(declare-fun m!7676772 () Bool)

(assert (=> b!6988455 m!7676772))

(assert (=> b!6988455 m!7676770))

(assert (=> b!6988455 m!7676772))

(declare-fun m!7676774 () Bool)

(assert (=> b!6988455 m!7676774))

(assert (=> b!6988357 d!2176790))

(declare-fun bs!1861987 () Bool)

(declare-fun d!2176792 () Bool)

(assert (= bs!1861987 (and d!2176792 b!6988357)))

(declare-fun lambda!401185 () Int)

(assert (=> bs!1861987 (= lambda!401185 lambda!401132)))

(declare-fun bs!1861988 () Bool)

(assert (= bs!1861988 (and d!2176792 d!2176788)))

(assert (=> bs!1861988 (not (= lambda!401185 lambda!401182))))

(assert (=> d!2176792 true))

(assert (=> d!2176792 (exists!2996 lt!2485861 lambda!401185)))

(declare-fun lt!2485977 () Unit!161079)

(declare-fun choose!52225 (List!67183 List!67182) Unit!161079)

(assert (=> d!2176792 (= lt!2485977 (choose!52225 lt!2485861 s!7408))))

(declare-fun content!13250 (List!67183) (Set Context!12416))

(assert (=> d!2176792 (matchZipper!2752 (content!13250 lt!2485861) s!7408)))

(assert (=> d!2176792 (= (lemmaZipperMatchesExistsMatchingContext!181 lt!2485861 s!7408) lt!2485977)))

(declare-fun bs!1861989 () Bool)

(assert (= bs!1861989 d!2176792))

(declare-fun m!7676776 () Bool)

(assert (=> bs!1861989 m!7676776))

(declare-fun m!7676778 () Bool)

(assert (=> bs!1861989 m!7676778))

(declare-fun m!7676780 () Bool)

(assert (=> bs!1861989 m!7676780))

(assert (=> bs!1861989 m!7676780))

(declare-fun m!7676782 () Bool)

(assert (=> bs!1861989 m!7676782))

(assert (=> b!6988357 d!2176792))

(declare-fun d!2176794 () Bool)

(declare-fun e!4200367 () Bool)

(assert (=> d!2176794 e!4200367))

(declare-fun res!2849931 () Bool)

(assert (=> d!2176794 (=> (not res!2849931) (not e!4200367))))

(declare-fun lt!2485980 () List!67183)

(declare-fun noDuplicate!2519 (List!67183) Bool)

(assert (=> d!2176794 (= res!2849931 (noDuplicate!2519 lt!2485980))))

(declare-fun choose!52226 ((Set Context!12416)) List!67183)

(assert (=> d!2176794 (= lt!2485980 (choose!52226 lt!2485853))))

(assert (=> d!2176794 (= (toList!10572 lt!2485853) lt!2485980)))

(declare-fun b!6988458 () Bool)

(assert (=> b!6988458 (= e!4200367 (= (content!13250 lt!2485980) lt!2485853))))

(assert (= (and d!2176794 res!2849931) b!6988458))

(declare-fun m!7676784 () Bool)

(assert (=> d!2176794 m!7676784))

(declare-fun m!7676786 () Bool)

(assert (=> d!2176794 m!7676786))

(declare-fun m!7676788 () Bool)

(assert (=> b!6988458 m!7676788))

(assert (=> b!6988357 d!2176794))

(declare-fun d!2176796 () Bool)

(declare-fun e!4200370 () Bool)

(assert (=> d!2176796 e!4200370))

(declare-fun res!2849934 () Bool)

(assert (=> d!2176796 (=> (not res!2849934) (not e!4200370))))

(declare-fun lt!2485983 () Context!12416)

(declare-fun dynLambda!26880 (Int Context!12416) Bool)

(assert (=> d!2176796 (= res!2849934 (dynLambda!26880 lambda!401132 lt!2485983))))

(declare-fun getWitness!1109 (List!67183 Int) Context!12416)

(assert (=> d!2176796 (= lt!2485983 (getWitness!1109 (toList!10572 lt!2485853) lambda!401132))))

(declare-fun exists!2998 ((Set Context!12416) Int) Bool)

(assert (=> d!2176796 (exists!2998 lt!2485853 lambda!401132)))

(assert (=> d!2176796 (= (getWitness!1107 lt!2485853 lambda!401132) lt!2485983)))

(declare-fun b!6988461 () Bool)

(assert (=> b!6988461 (= e!4200370 (set.member lt!2485983 lt!2485853))))

(assert (= (and d!2176796 res!2849934) b!6988461))

(declare-fun b_lambda!262423 () Bool)

(assert (=> (not b_lambda!262423) (not d!2176796)))

(declare-fun m!7676790 () Bool)

(assert (=> d!2176796 m!7676790))

(assert (=> d!2176796 m!7676648))

(assert (=> d!2176796 m!7676648))

(declare-fun m!7676792 () Bool)

(assert (=> d!2176796 m!7676792))

(declare-fun m!7676794 () Bool)

(assert (=> d!2176796 m!7676794))

(declare-fun m!7676796 () Bool)

(assert (=> b!6988461 m!7676796))

(assert (=> b!6988357 d!2176796))

(declare-fun d!2176798 () Bool)

(declare-fun nullableFct!2633 (Regex!17212) Bool)

(assert (=> d!2176798 (= (nullable!6972 (h!73505 (exprs!6708 lt!2485867))) (nullableFct!2633 (h!73505 (exprs!6708 lt!2485867))))))

(declare-fun bs!1861990 () Bool)

(assert (= bs!1861990 d!2176798))

(declare-fun m!7676798 () Bool)

(assert (=> bs!1861990 m!7676798))

(assert (=> b!6988355 d!2176798))

(declare-fun d!2176800 () Bool)

(assert (=> d!2176800 (= (tail!13217 (exprs!6708 lt!2485867)) (t!380928 (exprs!6708 lt!2485867)))))

(assert (=> b!6988355 d!2176800))

(declare-fun d!2176802 () Bool)

(declare-fun c!1296076 () Bool)

(assert (=> d!2176802 (= c!1296076 (isEmpty!39143 s!7408))))

(declare-fun e!4200371 () Bool)

(assert (=> d!2176802 (= (matchZipper!2752 lt!2485853 s!7408) e!4200371)))

(declare-fun b!6988462 () Bool)

(assert (=> b!6988462 (= e!4200371 (nullableZipper!2432 lt!2485853))))

(declare-fun b!6988463 () Bool)

(assert (=> b!6988463 (= e!4200371 (matchZipper!2752 (derivationStepZipper!2692 lt!2485853 (head!14107 s!7408)) (tail!13219 s!7408)))))

(assert (= (and d!2176802 c!1296076) b!6988462))

(assert (= (and d!2176802 (not c!1296076)) b!6988463))

(assert (=> d!2176802 m!7676764))

(declare-fun m!7676800 () Bool)

(assert (=> b!6988462 m!7676800))

(assert (=> b!6988463 m!7676768))

(assert (=> b!6988463 m!7676768))

(declare-fun m!7676802 () Bool)

(assert (=> b!6988463 m!7676802))

(assert (=> b!6988463 m!7676772))

(assert (=> b!6988463 m!7676802))

(assert (=> b!6988463 m!7676772))

(declare-fun m!7676804 () Bool)

(assert (=> b!6988463 m!7676804))

(assert (=> start!671440 d!2176802))

(declare-fun bs!1861991 () Bool)

(declare-fun d!2176804 () Bool)

(assert (= bs!1861991 (and d!2176804 b!6988359)))

(declare-fun lambda!401190 () Int)

(assert (=> bs!1861991 (= lambda!401190 lambda!401133)))

(assert (=> d!2176804 true))

(declare-fun map!15472 ((Set Context!12416) Int) (Set Context!12416))

(assert (=> d!2176804 (= (appendTo!333 z1!570 ct2!306) (map!15472 z1!570 lambda!401190))))

(declare-fun bs!1861992 () Bool)

(assert (= bs!1861992 d!2176804))

(declare-fun m!7676806 () Bool)

(assert (=> bs!1861992 m!7676806))

(assert (=> start!671440 d!2176804))

(declare-fun bs!1861993 () Bool)

(declare-fun d!2176806 () Bool)

(assert (= bs!1861993 (and d!2176806 b!6988359)))

(declare-fun lambda!401193 () Int)

(assert (=> bs!1861993 (= lambda!401193 lambda!401134)))

(assert (=> d!2176806 (= (inv!85890 ct2!306) (forall!16124 (exprs!6708 ct2!306) lambda!401193))))

(declare-fun bs!1861994 () Bool)

(assert (= bs!1861994 d!2176806))

(declare-fun m!7676808 () Bool)

(assert (=> bs!1861994 m!7676808))

(assert (=> start!671440 d!2176806))

(declare-fun d!2176808 () Bool)

(declare-fun res!2849939 () Bool)

(declare-fun e!4200376 () Bool)

(assert (=> d!2176808 (=> res!2849939 e!4200376)))

(assert (=> d!2176808 (= res!2849939 (is-Nil!67057 (exprs!6708 ct2!306)))))

(assert (=> d!2176808 (= (forall!16124 (exprs!6708 ct2!306) lambda!401134) e!4200376)))

(declare-fun b!6988468 () Bool)

(declare-fun e!4200377 () Bool)

(assert (=> b!6988468 (= e!4200376 e!4200377)))

(declare-fun res!2849940 () Bool)

(assert (=> b!6988468 (=> (not res!2849940) (not e!4200377))))

(declare-fun dynLambda!26881 (Int Regex!17212) Bool)

(assert (=> b!6988468 (= res!2849940 (dynLambda!26881 lambda!401134 (h!73505 (exprs!6708 ct2!306))))))

(declare-fun b!6988469 () Bool)

(assert (=> b!6988469 (= e!4200377 (forall!16124 (t!380928 (exprs!6708 ct2!306)) lambda!401134))))

(assert (= (and d!2176808 (not res!2849939)) b!6988468))

(assert (= (and b!6988468 res!2849940) b!6988469))

(declare-fun b_lambda!262425 () Bool)

(assert (=> (not b_lambda!262425) (not b!6988468)))

(declare-fun m!7676810 () Bool)

(assert (=> b!6988468 m!7676810))

(declare-fun m!7676812 () Bool)

(assert (=> b!6988469 m!7676812))

(assert (=> b!6988365 d!2176808))

(declare-fun e!4200385 () (Set Context!12416))

(declare-fun call!634402 () (Set Context!12416))

(declare-fun b!6988480 () Bool)

(assert (=> b!6988480 (= e!4200385 (set.union call!634402 (derivationStepZipperUp!1862 (Context!12417 (t!380928 (exprs!6708 lt!2485854))) (h!73506 s!7408))))))

(declare-fun d!2176810 () Bool)

(declare-fun c!1296083 () Bool)

(declare-fun e!4200384 () Bool)

(assert (=> d!2176810 (= c!1296083 e!4200384)))

(declare-fun res!2849943 () Bool)

(assert (=> d!2176810 (=> (not res!2849943) (not e!4200384))))

(assert (=> d!2176810 (= res!2849943 (is-Cons!67057 (exprs!6708 lt!2485854)))))

(assert (=> d!2176810 (= (derivationStepZipperUp!1862 lt!2485854 (h!73506 s!7408)) e!4200385)))

(declare-fun bm!634397 () Bool)

(assert (=> bm!634397 (= call!634402 (derivationStepZipperDown!1930 (h!73505 (exprs!6708 lt!2485854)) (Context!12417 (t!380928 (exprs!6708 lt!2485854))) (h!73506 s!7408)))))

(declare-fun b!6988481 () Bool)

(declare-fun e!4200386 () (Set Context!12416))

(assert (=> b!6988481 (= e!4200386 call!634402)))

(declare-fun b!6988482 () Bool)

(assert (=> b!6988482 (= e!4200385 e!4200386)))

(declare-fun c!1296082 () Bool)

(assert (=> b!6988482 (= c!1296082 (is-Cons!67057 (exprs!6708 lt!2485854)))))

(declare-fun b!6988483 () Bool)

(assert (=> b!6988483 (= e!4200386 (as set.empty (Set Context!12416)))))

(declare-fun b!6988484 () Bool)

(assert (=> b!6988484 (= e!4200384 (nullable!6972 (h!73505 (exprs!6708 lt!2485854))))))

(assert (= (and d!2176810 res!2849943) b!6988484))

(assert (= (and d!2176810 c!1296083) b!6988480))

(assert (= (and d!2176810 (not c!1296083)) b!6988482))

(assert (= (and b!6988482 c!1296082) b!6988481))

(assert (= (and b!6988482 (not c!1296082)) b!6988483))

(assert (= (or b!6988480 b!6988481) bm!634397))

(declare-fun m!7676814 () Bool)

(assert (=> b!6988480 m!7676814))

(declare-fun m!7676816 () Bool)

(assert (=> bm!634397 m!7676816))

(declare-fun m!7676818 () Bool)

(assert (=> b!6988484 m!7676818))

(assert (=> b!6988354 d!2176810))

(declare-fun d!2176812 () Bool)

(declare-fun res!2849944 () Bool)

(declare-fun e!4200387 () Bool)

(assert (=> d!2176812 (=> res!2849944 e!4200387)))

(assert (=> d!2176812 (= res!2849944 (is-Nil!67057 lt!2485870))))

(assert (=> d!2176812 (= (forall!16124 lt!2485870 lambda!401134) e!4200387)))

(declare-fun b!6988485 () Bool)

(declare-fun e!4200388 () Bool)

(assert (=> b!6988485 (= e!4200387 e!4200388)))

(declare-fun res!2849945 () Bool)

(assert (=> b!6988485 (=> (not res!2849945) (not e!4200388))))

(assert (=> b!6988485 (= res!2849945 (dynLambda!26881 lambda!401134 (h!73505 lt!2485870)))))

(declare-fun b!6988486 () Bool)

(assert (=> b!6988486 (= e!4200388 (forall!16124 (t!380928 lt!2485870) lambda!401134))))

(assert (= (and d!2176812 (not res!2849944)) b!6988485))

(assert (= (and b!6988485 res!2849945) b!6988486))

(declare-fun b_lambda!262427 () Bool)

(assert (=> (not b_lambda!262427) (not b!6988485)))

(declare-fun m!7676820 () Bool)

(assert (=> b!6988485 m!7676820))

(declare-fun m!7676822 () Bool)

(assert (=> b!6988486 m!7676822))

(assert (=> b!6988354 d!2176812))

(declare-fun d!2176814 () Bool)

(declare-fun choose!52227 ((Set Context!12416) Int) (Set Context!12416))

(assert (=> d!2176814 (= (flatMap!2198 lt!2485855 lambda!401135) (choose!52227 lt!2485855 lambda!401135))))

(declare-fun bs!1861995 () Bool)

(assert (= bs!1861995 d!2176814))

(declare-fun m!7676824 () Bool)

(assert (=> bs!1861995 m!7676824))

(assert (=> b!6988354 d!2176814))

(declare-fun d!2176816 () Bool)

(assert (=> d!2176816 (forall!16124 (++!15157 lt!2485870 (exprs!6708 ct2!306)) lambda!401134)))

(declare-fun lt!2485988 () Unit!161079)

(declare-fun choose!52228 (List!67181 List!67181 Int) Unit!161079)

(assert (=> d!2176816 (= lt!2485988 (choose!52228 lt!2485870 (exprs!6708 ct2!306) lambda!401134))))

(assert (=> d!2176816 (forall!16124 lt!2485870 lambda!401134)))

(assert (=> d!2176816 (= (lemmaConcatPreservesForall!548 lt!2485870 (exprs!6708 ct2!306) lambda!401134) lt!2485988)))

(declare-fun bs!1861996 () Bool)

(assert (= bs!1861996 d!2176816))

(assert (=> bs!1861996 m!7676672))

(assert (=> bs!1861996 m!7676672))

(declare-fun m!7676826 () Bool)

(assert (=> bs!1861996 m!7676826))

(declare-fun m!7676828 () Bool)

(assert (=> bs!1861996 m!7676828))

(assert (=> bs!1861996 m!7676660))

(assert (=> b!6988354 d!2176816))

(declare-fun d!2176818 () Bool)

(declare-fun dynLambda!26882 (Int Context!12416) (Set Context!12416))

(assert (=> d!2176818 (= (flatMap!2198 lt!2485855 lambda!401135) (dynLambda!26882 lambda!401135 lt!2485854))))

(declare-fun lt!2485991 () Unit!161079)

(declare-fun choose!52229 ((Set Context!12416) Context!12416 Int) Unit!161079)

(assert (=> d!2176818 (= lt!2485991 (choose!52229 lt!2485855 lt!2485854 lambda!401135))))

(assert (=> d!2176818 (= lt!2485855 (set.insert lt!2485854 (as set.empty (Set Context!12416))))))

(assert (=> d!2176818 (= (lemmaFlatMapOnSingletonSet!1713 lt!2485855 lt!2485854 lambda!401135) lt!2485991)))

(declare-fun b_lambda!262429 () Bool)

(assert (=> (not b_lambda!262429) (not d!2176818)))

(declare-fun bs!1861997 () Bool)

(assert (= bs!1861997 d!2176818))

(assert (=> bs!1861997 m!7676668))

(declare-fun m!7676830 () Bool)

(assert (=> bs!1861997 m!7676830))

(declare-fun m!7676832 () Bool)

(assert (=> bs!1861997 m!7676832))

(assert (=> bs!1861997 m!7676666))

(assert (=> b!6988354 d!2176818))

(assert (=> b!6988363 d!2176810))

(assert (=> b!6988363 d!2176816))

(declare-fun b!6988495 () Bool)

(declare-fun e!4200394 () List!67181)

(assert (=> b!6988495 (= e!4200394 (exprs!6708 ct2!306))))

(declare-fun b!6988497 () Bool)

(declare-fun res!2849951 () Bool)

(declare-fun e!4200393 () Bool)

(assert (=> b!6988497 (=> (not res!2849951) (not e!4200393))))

(declare-fun lt!2485994 () List!67181)

(declare-fun size!40900 (List!67181) Int)

(assert (=> b!6988497 (= res!2849951 (= (size!40900 lt!2485994) (+ (size!40900 lt!2485870) (size!40900 (exprs!6708 ct2!306)))))))

(declare-fun b!6988496 () Bool)

(assert (=> b!6988496 (= e!4200394 (Cons!67057 (h!73505 lt!2485870) (++!15157 (t!380928 lt!2485870) (exprs!6708 ct2!306))))))

(declare-fun b!6988498 () Bool)

(assert (=> b!6988498 (= e!4200393 (or (not (= (exprs!6708 ct2!306) Nil!67057)) (= lt!2485994 lt!2485870)))))

(declare-fun d!2176820 () Bool)

(assert (=> d!2176820 e!4200393))

(declare-fun res!2849950 () Bool)

(assert (=> d!2176820 (=> (not res!2849950) (not e!4200393))))

(declare-fun content!13251 (List!67181) (Set Regex!17212))

(assert (=> d!2176820 (= res!2849950 (= (content!13251 lt!2485994) (set.union (content!13251 lt!2485870) (content!13251 (exprs!6708 ct2!306)))))))

(assert (=> d!2176820 (= lt!2485994 e!4200394)))

(declare-fun c!1296086 () Bool)

(assert (=> d!2176820 (= c!1296086 (is-Nil!67057 lt!2485870))))

(assert (=> d!2176820 (= (++!15157 lt!2485870 (exprs!6708 ct2!306)) lt!2485994)))

(assert (= (and d!2176820 c!1296086) b!6988495))

(assert (= (and d!2176820 (not c!1296086)) b!6988496))

(assert (= (and d!2176820 res!2849950) b!6988497))

(assert (= (and b!6988497 res!2849951) b!6988498))

(declare-fun m!7676834 () Bool)

(assert (=> b!6988497 m!7676834))

(declare-fun m!7676836 () Bool)

(assert (=> b!6988497 m!7676836))

(declare-fun m!7676838 () Bool)

(assert (=> b!6988497 m!7676838))

(declare-fun m!7676840 () Bool)

(assert (=> b!6988496 m!7676840))

(declare-fun m!7676842 () Bool)

(assert (=> d!2176820 m!7676842))

(declare-fun m!7676844 () Bool)

(assert (=> d!2176820 m!7676844))

(declare-fun m!7676846 () Bool)

(assert (=> d!2176820 m!7676846))

(assert (=> b!6988363 d!2176820))

(declare-fun b!6988521 () Bool)

(declare-fun e!4200412 () Bool)

(assert (=> b!6988521 (= e!4200412 (nullable!6972 (regOne!34936 (h!73505 (exprs!6708 lt!2485867)))))))

(declare-fun b!6988522 () Bool)

(declare-fun e!4200408 () (Set Context!12416))

(declare-fun call!634415 () (Set Context!12416))

(assert (=> b!6988522 (= e!4200408 call!634415)))

(declare-fun bm!634410 () Bool)

(declare-fun call!634416 () (Set Context!12416))

(declare-fun call!634417 () (Set Context!12416))

(assert (=> bm!634410 (= call!634416 call!634417)))

(declare-fun b!6988523 () Bool)

(declare-fun e!4200411 () (Set Context!12416))

(assert (=> b!6988523 (= e!4200411 call!634415)))

(declare-fun b!6988524 () Bool)

(declare-fun e!4200407 () (Set Context!12416))

(declare-fun e!4200409 () (Set Context!12416))

(assert (=> b!6988524 (= e!4200407 e!4200409)))

(declare-fun c!1296098 () Bool)

(assert (=> b!6988524 (= c!1296098 (is-Union!17212 (h!73505 (exprs!6708 lt!2485867))))))

(declare-fun b!6988525 () Bool)

(declare-fun c!1296100 () Bool)

(assert (=> b!6988525 (= c!1296100 e!4200412)))

(declare-fun res!2849954 () Bool)

(assert (=> b!6988525 (=> (not res!2849954) (not e!4200412))))

(assert (=> b!6988525 (= res!2849954 (is-Concat!26057 (h!73505 (exprs!6708 lt!2485867))))))

(declare-fun e!4200410 () (Set Context!12416))

(assert (=> b!6988525 (= e!4200409 e!4200410)))

(declare-fun b!6988526 () Bool)

(assert (=> b!6988526 (= e!4200408 (as set.empty (Set Context!12416)))))

(declare-fun b!6988527 () Bool)

(assert (=> b!6988527 (= e!4200410 e!4200411)))

(declare-fun c!1296099 () Bool)

(assert (=> b!6988527 (= c!1296099 (is-Concat!26057 (h!73505 (exprs!6708 lt!2485867))))))

(declare-fun b!6988528 () Bool)

(declare-fun call!634420 () (Set Context!12416))

(assert (=> b!6988528 (= e!4200410 (set.union call!634420 call!634416))))

(declare-fun bm!634412 () Bool)

(declare-fun call!634419 () List!67181)

(declare-fun $colon$colon!2480 (List!67181 Regex!17212) List!67181)

(assert (=> bm!634412 (= call!634419 ($colon$colon!2480 (exprs!6708 lt!2485854) (ite (or c!1296100 c!1296099) (regTwo!34936 (h!73505 (exprs!6708 lt!2485867))) (h!73505 (exprs!6708 lt!2485867)))))))

(declare-fun bm!634413 () Bool)

(assert (=> bm!634413 (= call!634415 call!634416)))

(declare-fun bm!634414 () Bool)

(declare-fun call!634418 () List!67181)

(assert (=> bm!634414 (= call!634418 call!634419)))

(declare-fun b!6988529 () Bool)

(declare-fun c!1296097 () Bool)

(assert (=> b!6988529 (= c!1296097 (is-Star!17212 (h!73505 (exprs!6708 lt!2485867))))))

(assert (=> b!6988529 (= e!4200411 e!4200408)))

(declare-fun b!6988530 () Bool)

(assert (=> b!6988530 (= e!4200409 (set.union call!634420 call!634417))))

(declare-fun bm!634415 () Bool)

(assert (=> bm!634415 (= call!634417 (derivationStepZipperDown!1930 (ite c!1296098 (regTwo!34937 (h!73505 (exprs!6708 lt!2485867))) (ite c!1296100 (regTwo!34936 (h!73505 (exprs!6708 lt!2485867))) (ite c!1296099 (regOne!34936 (h!73505 (exprs!6708 lt!2485867))) (reg!17541 (h!73505 (exprs!6708 lt!2485867)))))) (ite (or c!1296098 c!1296100) lt!2485854 (Context!12417 call!634418)) (h!73506 s!7408)))))

(declare-fun b!6988531 () Bool)

(assert (=> b!6988531 (= e!4200407 (set.insert lt!2485854 (as set.empty (Set Context!12416))))))

(declare-fun bm!634411 () Bool)

(assert (=> bm!634411 (= call!634420 (derivationStepZipperDown!1930 (ite c!1296098 (regOne!34937 (h!73505 (exprs!6708 lt!2485867))) (regOne!34936 (h!73505 (exprs!6708 lt!2485867)))) (ite c!1296098 lt!2485854 (Context!12417 call!634419)) (h!73506 s!7408)))))

(declare-fun d!2176822 () Bool)

(declare-fun c!1296101 () Bool)

(assert (=> d!2176822 (= c!1296101 (and (is-ElementMatch!17212 (h!73505 (exprs!6708 lt!2485867))) (= (c!1296058 (h!73505 (exprs!6708 lt!2485867))) (h!73506 s!7408))))))

(assert (=> d!2176822 (= (derivationStepZipperDown!1930 (h!73505 (exprs!6708 lt!2485867)) lt!2485854 (h!73506 s!7408)) e!4200407)))

(assert (= (and d!2176822 c!1296101) b!6988531))

(assert (= (and d!2176822 (not c!1296101)) b!6988524))

(assert (= (and b!6988524 c!1296098) b!6988530))

(assert (= (and b!6988524 (not c!1296098)) b!6988525))

(assert (= (and b!6988525 res!2849954) b!6988521))

(assert (= (and b!6988525 c!1296100) b!6988528))

(assert (= (and b!6988525 (not c!1296100)) b!6988527))

(assert (= (and b!6988527 c!1296099) b!6988523))

(assert (= (and b!6988527 (not c!1296099)) b!6988529))

(assert (= (and b!6988529 c!1296097) b!6988522))

(assert (= (and b!6988529 (not c!1296097)) b!6988526))

(assert (= (or b!6988523 b!6988522) bm!634414))

(assert (= (or b!6988523 b!6988522) bm!634413))

(assert (= (or b!6988528 bm!634413) bm!634410))

(assert (= (or b!6988528 bm!634414) bm!634412))

(assert (= (or b!6988530 b!6988528) bm!634411))

(assert (= (or b!6988530 bm!634410) bm!634415))

(assert (=> b!6988531 m!7676666))

(declare-fun m!7676850 () Bool)

(assert (=> b!6988521 m!7676850))

(declare-fun m!7676852 () Bool)

(assert (=> bm!634411 m!7676852))

(declare-fun m!7676854 () Bool)

(assert (=> bm!634412 m!7676854))

(declare-fun m!7676856 () Bool)

(assert (=> bm!634415 m!7676856))

(assert (=> b!6988363 d!2176822))

(declare-fun bs!1861999 () Bool)

(declare-fun d!2176828 () Bool)

(assert (= bs!1861999 (and d!2176828 b!6988359)))

(declare-fun lambda!401194 () Int)

(assert (=> bs!1861999 (= lambda!401194 lambda!401134)))

(declare-fun bs!1862000 () Bool)

(assert (= bs!1862000 (and d!2176828 d!2176806)))

(assert (=> bs!1862000 (= lambda!401194 lambda!401193)))

(assert (=> d!2176828 (= (inv!85890 setElem!47772) (forall!16124 (exprs!6708 setElem!47772) lambda!401194))))

(declare-fun bs!1862001 () Bool)

(assert (= bs!1862001 d!2176828))

(declare-fun m!7676858 () Bool)

(assert (=> bs!1862001 m!7676858))

(assert (=> setNonEmpty!47772 d!2176828))

(assert (=> b!6988372 d!2176786))

(assert (=> b!6988372 d!2176816))

(declare-fun d!2176830 () Bool)

(assert (=> d!2176830 (= (isEmpty!39141 (exprs!6708 lt!2485867)) (is-Nil!67057 (exprs!6708 lt!2485867)))))

(assert (=> b!6988373 d!2176830))

(declare-fun d!2176832 () Bool)

(assert (=> d!2176832 (= (flatMap!2198 lt!2485841 lambda!401135) (dynLambda!26882 lambda!401135 lt!2485852))))

(declare-fun lt!2485995 () Unit!161079)

(assert (=> d!2176832 (= lt!2485995 (choose!52229 lt!2485841 lt!2485852 lambda!401135))))

(assert (=> d!2176832 (= lt!2485841 (set.insert lt!2485852 (as set.empty (Set Context!12416))))))

(assert (=> d!2176832 (= (lemmaFlatMapOnSingletonSet!1713 lt!2485841 lt!2485852 lambda!401135) lt!2485995)))

(declare-fun b_lambda!262431 () Bool)

(assert (=> (not b_lambda!262431) (not d!2176832)))

(declare-fun bs!1862002 () Bool)

(assert (= bs!1862002 d!2176832))

(assert (=> bs!1862002 m!7676658))

(declare-fun m!7676860 () Bool)

(assert (=> bs!1862002 m!7676860))

(declare-fun m!7676862 () Bool)

(assert (=> bs!1862002 m!7676862))

(assert (=> bs!1862002 m!7676604))

(assert (=> b!6988362 d!2176832))

(declare-fun d!2176834 () Bool)

(assert (=> d!2176834 (forall!16124 (++!15157 (exprs!6708 lt!2485867) (exprs!6708 ct2!306)) lambda!401134)))

(declare-fun lt!2485996 () Unit!161079)

(assert (=> d!2176834 (= lt!2485996 (choose!52228 (exprs!6708 lt!2485867) (exprs!6708 ct2!306) lambda!401134))))

(assert (=> d!2176834 (forall!16124 (exprs!6708 lt!2485867) lambda!401134)))

(assert (=> d!2176834 (= (lemmaConcatPreservesForall!548 (exprs!6708 lt!2485867) (exprs!6708 ct2!306) lambda!401134) lt!2485996)))

(declare-fun bs!1862003 () Bool)

(assert (= bs!1862003 d!2176834))

(assert (=> bs!1862003 m!7676628))

(assert (=> bs!1862003 m!7676628))

(declare-fun m!7676864 () Bool)

(assert (=> bs!1862003 m!7676864))

(declare-fun m!7676866 () Bool)

(assert (=> bs!1862003 m!7676866))

(declare-fun m!7676868 () Bool)

(assert (=> bs!1862003 m!7676868))

(assert (=> b!6988362 d!2176834))

(declare-fun b!6988532 () Bool)

(declare-fun e!4200414 () (Set Context!12416))

(declare-fun call!634421 () (Set Context!12416))

(assert (=> b!6988532 (= e!4200414 (set.union call!634421 (derivationStepZipperUp!1862 (Context!12417 (t!380928 (exprs!6708 lt!2485852))) (h!73506 s!7408))))))

(declare-fun d!2176836 () Bool)

(declare-fun c!1296103 () Bool)

(declare-fun e!4200413 () Bool)

(assert (=> d!2176836 (= c!1296103 e!4200413)))

(declare-fun res!2849955 () Bool)

(assert (=> d!2176836 (=> (not res!2849955) (not e!4200413))))

(assert (=> d!2176836 (= res!2849955 (is-Cons!67057 (exprs!6708 lt!2485852)))))

(assert (=> d!2176836 (= (derivationStepZipperUp!1862 lt!2485852 (h!73506 s!7408)) e!4200414)))

(declare-fun bm!634416 () Bool)

(assert (=> bm!634416 (= call!634421 (derivationStepZipperDown!1930 (h!73505 (exprs!6708 lt!2485852)) (Context!12417 (t!380928 (exprs!6708 lt!2485852))) (h!73506 s!7408)))))

(declare-fun b!6988533 () Bool)

(declare-fun e!4200415 () (Set Context!12416))

(assert (=> b!6988533 (= e!4200415 call!634421)))

(declare-fun b!6988534 () Bool)

(assert (=> b!6988534 (= e!4200414 e!4200415)))

(declare-fun c!1296102 () Bool)

(assert (=> b!6988534 (= c!1296102 (is-Cons!67057 (exprs!6708 lt!2485852)))))

(declare-fun b!6988535 () Bool)

(assert (=> b!6988535 (= e!4200415 (as set.empty (Set Context!12416)))))

(declare-fun b!6988536 () Bool)

(assert (=> b!6988536 (= e!4200413 (nullable!6972 (h!73505 (exprs!6708 lt!2485852))))))

(assert (= (and d!2176836 res!2849955) b!6988536))

(assert (= (and d!2176836 c!1296103) b!6988532))

(assert (= (and d!2176836 (not c!1296103)) b!6988534))

(assert (= (and b!6988534 c!1296102) b!6988533))

(assert (= (and b!6988534 (not c!1296102)) b!6988535))

(assert (= (or b!6988532 b!6988533) bm!634416))

(declare-fun m!7676870 () Bool)

(assert (=> b!6988532 m!7676870))

(declare-fun m!7676872 () Bool)

(assert (=> bm!634416 m!7676872))

(declare-fun m!7676874 () Bool)

(assert (=> b!6988536 m!7676874))

(assert (=> b!6988362 d!2176836))

(declare-fun bs!1862004 () Bool)

(declare-fun d!2176838 () Bool)

(assert (= bs!1862004 (and d!2176838 b!6988362)))

(declare-fun lambda!401197 () Int)

(assert (=> bs!1862004 (= lambda!401197 lambda!401135)))

(assert (=> d!2176838 true))

(assert (=> d!2176838 (= (derivationStepZipper!2692 lt!2485841 (h!73506 s!7408)) (flatMap!2198 lt!2485841 lambda!401197))))

(declare-fun bs!1862005 () Bool)

(assert (= bs!1862005 d!2176838))

(declare-fun m!7676876 () Bool)

(assert (=> bs!1862005 m!7676876))

(assert (=> b!6988362 d!2176838))

(declare-fun d!2176840 () Bool)

(assert (=> d!2176840 (= (flatMap!2198 lt!2485841 lambda!401135) (choose!52227 lt!2485841 lambda!401135))))

(declare-fun bs!1862006 () Bool)

(assert (= bs!1862006 d!2176840))

(declare-fun m!7676878 () Bool)

(assert (=> bs!1862006 m!7676878))

(assert (=> b!6988362 d!2176840))

(assert (=> b!6988361 d!2176786))

(assert (=> b!6988361 d!2176816))

(declare-fun b!6988539 () Bool)

(declare-fun e!4200417 () List!67181)

(assert (=> b!6988539 (= e!4200417 (exprs!6708 ct2!306))))

(declare-fun b!6988541 () Bool)

(declare-fun res!2849957 () Bool)

(declare-fun e!4200416 () Bool)

(assert (=> b!6988541 (=> (not res!2849957) (not e!4200416))))

(declare-fun lt!2486000 () List!67181)

(assert (=> b!6988541 (= res!2849957 (= (size!40900 lt!2486000) (+ (size!40900 (exprs!6708 lt!2485867)) (size!40900 (exprs!6708 ct2!306)))))))

(declare-fun b!6988540 () Bool)

(assert (=> b!6988540 (= e!4200417 (Cons!67057 (h!73505 (exprs!6708 lt!2485867)) (++!15157 (t!380928 (exprs!6708 lt!2485867)) (exprs!6708 ct2!306))))))

(declare-fun b!6988542 () Bool)

(assert (=> b!6988542 (= e!4200416 (or (not (= (exprs!6708 ct2!306) Nil!67057)) (= lt!2486000 (exprs!6708 lt!2485867))))))

(declare-fun d!2176842 () Bool)

(assert (=> d!2176842 e!4200416))

(declare-fun res!2849956 () Bool)

(assert (=> d!2176842 (=> (not res!2849956) (not e!4200416))))

(assert (=> d!2176842 (= res!2849956 (= (content!13251 lt!2486000) (set.union (content!13251 (exprs!6708 lt!2485867)) (content!13251 (exprs!6708 ct2!306)))))))

(assert (=> d!2176842 (= lt!2486000 e!4200417)))

(declare-fun c!1296106 () Bool)

(assert (=> d!2176842 (= c!1296106 (is-Nil!67057 (exprs!6708 lt!2485867)))))

(assert (=> d!2176842 (= (++!15157 (exprs!6708 lt!2485867) (exprs!6708 ct2!306)) lt!2486000)))

(assert (= (and d!2176842 c!1296106) b!6988539))

(assert (= (and d!2176842 (not c!1296106)) b!6988540))

(assert (= (and d!2176842 res!2849956) b!6988541))

(assert (= (and b!6988541 res!2849957) b!6988542))

(declare-fun m!7676880 () Bool)

(assert (=> b!6988541 m!7676880))

(declare-fun m!7676882 () Bool)

(assert (=> b!6988541 m!7676882))

(assert (=> b!6988541 m!7676838))

(declare-fun m!7676884 () Bool)

(assert (=> b!6988540 m!7676884))

(declare-fun m!7676886 () Bool)

(assert (=> d!2176842 m!7676886))

(declare-fun m!7676888 () Bool)

(assert (=> d!2176842 m!7676888))

(assert (=> d!2176842 m!7676846))

(assert (=> b!6988359 d!2176842))

(assert (=> b!6988359 d!2176834))

(declare-fun d!2176844 () Bool)

(declare-fun e!4200424 () Bool)

(assert (=> d!2176844 e!4200424))

(declare-fun res!2849964 () Bool)

(assert (=> d!2176844 (=> (not res!2849964) (not e!4200424))))

(declare-fun lt!2486003 () Context!12416)

(declare-fun dynLambda!26883 (Int Context!12416) Context!12416)

(assert (=> d!2176844 (= res!2849964 (= lt!2485857 (dynLambda!26883 lambda!401133 lt!2486003)))))

(declare-fun choose!52230 ((Set Context!12416) Int Context!12416) Context!12416)

(assert (=> d!2176844 (= lt!2486003 (choose!52230 z1!570 lambda!401133 lt!2485857))))

(assert (=> d!2176844 (set.member lt!2485857 (map!15472 z1!570 lambda!401133))))

(assert (=> d!2176844 (= (mapPost2!67 z1!570 lambda!401133 lt!2485857) lt!2486003)))

(declare-fun b!6988550 () Bool)

(assert (=> b!6988550 (= e!4200424 (set.member lt!2486003 z1!570))))

(assert (= (and d!2176844 res!2849964) b!6988550))

(declare-fun b_lambda!262433 () Bool)

(assert (=> (not b_lambda!262433) (not d!2176844)))

(declare-fun m!7676894 () Bool)

(assert (=> d!2176844 m!7676894))

(declare-fun m!7676896 () Bool)

(assert (=> d!2176844 m!7676896))

(declare-fun m!7676898 () Bool)

(assert (=> d!2176844 m!7676898))

(declare-fun m!7676900 () Bool)

(assert (=> d!2176844 m!7676900))

(declare-fun m!7676902 () Bool)

(assert (=> b!6988550 m!7676902))

(assert (=> b!6988359 d!2176844))

(assert (=> b!6988370 d!2176816))

(declare-fun d!2176848 () Bool)

(declare-fun c!1296107 () Bool)

(assert (=> d!2176848 (= c!1296107 (isEmpty!39143 (t!380929 s!7408)))))

(declare-fun e!4200425 () Bool)

(assert (=> d!2176848 (= (matchZipper!2752 lt!2485842 (t!380929 s!7408)) e!4200425)))

(declare-fun b!6988551 () Bool)

(assert (=> b!6988551 (= e!4200425 (nullableZipper!2432 lt!2485842))))

(declare-fun b!6988552 () Bool)

(assert (=> b!6988552 (= e!4200425 (matchZipper!2752 (derivationStepZipper!2692 lt!2485842 (head!14107 (t!380929 s!7408))) (tail!13219 (t!380929 s!7408))))))

(assert (= (and d!2176848 c!1296107) b!6988551))

(assert (= (and d!2176848 (not c!1296107)) b!6988552))

(assert (=> d!2176848 m!7676750))

(declare-fun m!7676904 () Bool)

(assert (=> b!6988551 m!7676904))

(assert (=> b!6988552 m!7676754))

(assert (=> b!6988552 m!7676754))

(declare-fun m!7676906 () Bool)

(assert (=> b!6988552 m!7676906))

(assert (=> b!6988552 m!7676758))

(assert (=> b!6988552 m!7676906))

(assert (=> b!6988552 m!7676758))

(declare-fun m!7676908 () Bool)

(assert (=> b!6988552 m!7676908))

(assert (=> b!6988370 d!2176848))

(declare-fun d!2176850 () Bool)

(declare-fun c!1296108 () Bool)

(assert (=> d!2176850 (= c!1296108 (isEmpty!39143 (t!380929 s!7408)))))

(declare-fun e!4200426 () Bool)

(assert (=> d!2176850 (= (matchZipper!2752 lt!2485843 (t!380929 s!7408)) e!4200426)))

(declare-fun b!6988553 () Bool)

(assert (=> b!6988553 (= e!4200426 (nullableZipper!2432 lt!2485843))))

(declare-fun b!6988554 () Bool)

(assert (=> b!6988554 (= e!4200426 (matchZipper!2752 (derivationStepZipper!2692 lt!2485843 (head!14107 (t!380929 s!7408))) (tail!13219 (t!380929 s!7408))))))

(assert (= (and d!2176850 c!1296108) b!6988553))

(assert (= (and d!2176850 (not c!1296108)) b!6988554))

(assert (=> d!2176850 m!7676750))

(declare-fun m!7676910 () Bool)

(assert (=> b!6988553 m!7676910))

(assert (=> b!6988554 m!7676754))

(assert (=> b!6988554 m!7676754))

(declare-fun m!7676912 () Bool)

(assert (=> b!6988554 m!7676912))

(assert (=> b!6988554 m!7676758))

(assert (=> b!6988554 m!7676912))

(assert (=> b!6988554 m!7676758))

(declare-fun m!7676914 () Bool)

(assert (=> b!6988554 m!7676914))

(assert (=> b!6988370 d!2176850))

(declare-fun d!2176852 () Bool)

(declare-fun e!4200431 () Bool)

(assert (=> d!2176852 (= (matchZipper!2752 (set.union lt!2485842 lt!2485868) (t!380929 s!7408)) e!4200431)))

(declare-fun res!2849969 () Bool)

(assert (=> d!2176852 (=> res!2849969 e!4200431)))

(assert (=> d!2176852 (= res!2849969 (matchZipper!2752 lt!2485842 (t!380929 s!7408)))))

(declare-fun lt!2486006 () Unit!161079)

(declare-fun choose!52231 ((Set Context!12416) (Set Context!12416) List!67182) Unit!161079)

(assert (=> d!2176852 (= lt!2486006 (choose!52231 lt!2485842 lt!2485868 (t!380929 s!7408)))))

(assert (=> d!2176852 (= (lemmaZipperConcatMatchesSameAsBothZippers!1385 lt!2485842 lt!2485868 (t!380929 s!7408)) lt!2486006)))

(declare-fun b!6988559 () Bool)

(assert (=> b!6988559 (= e!4200431 (matchZipper!2752 lt!2485868 (t!380929 s!7408)))))

(assert (= (and d!2176852 (not res!2849969)) b!6988559))

(declare-fun m!7676920 () Bool)

(assert (=> d!2176852 m!7676920))

(assert (=> d!2176852 m!7676620))

(declare-fun m!7676922 () Bool)

(assert (=> d!2176852 m!7676922))

(assert (=> b!6988559 m!7676602))

(assert (=> b!6988370 d!2176852))

(declare-fun d!2176856 () Bool)

(declare-fun c!1296109 () Bool)

(assert (=> d!2176856 (= c!1296109 (isEmpty!39143 (t!380929 s!7408)))))

(declare-fun e!4200432 () Bool)

(assert (=> d!2176856 (= (matchZipper!2752 lt!2485866 (t!380929 s!7408)) e!4200432)))

(declare-fun b!6988560 () Bool)

(assert (=> b!6988560 (= e!4200432 (nullableZipper!2432 lt!2485866))))

(declare-fun b!6988561 () Bool)

(assert (=> b!6988561 (= e!4200432 (matchZipper!2752 (derivationStepZipper!2692 lt!2485866 (head!14107 (t!380929 s!7408))) (tail!13219 (t!380929 s!7408))))))

(assert (= (and d!2176856 c!1296109) b!6988560))

(assert (= (and d!2176856 (not c!1296109)) b!6988561))

(assert (=> d!2176856 m!7676750))

(declare-fun m!7676924 () Bool)

(assert (=> b!6988560 m!7676924))

(assert (=> b!6988561 m!7676754))

(assert (=> b!6988561 m!7676754))

(declare-fun m!7676926 () Bool)

(assert (=> b!6988561 m!7676926))

(assert (=> b!6988561 m!7676758))

(assert (=> b!6988561 m!7676926))

(assert (=> b!6988561 m!7676758))

(declare-fun m!7676928 () Bool)

(assert (=> b!6988561 m!7676928))

(assert (=> b!6988370 d!2176856))

(assert (=> b!6988369 d!2176834))

(declare-fun b!6988566 () Bool)

(declare-fun e!4200435 () Bool)

(declare-fun tp!1929521 () Bool)

(assert (=> b!6988566 (= e!4200435 (and tp_is_empty!43649 tp!1929521))))

(assert (=> b!6988371 (= tp!1929504 e!4200435)))

(assert (= (and b!6988371 (is-Cons!67058 (t!380929 s!7408))) b!6988566))

(declare-fun b!6988571 () Bool)

(declare-fun e!4200438 () Bool)

(declare-fun tp!1929526 () Bool)

(declare-fun tp!1929527 () Bool)

(assert (=> b!6988571 (= e!4200438 (and tp!1929526 tp!1929527))))

(assert (=> b!6988364 (= tp!1929506 e!4200438)))

(assert (= (and b!6988364 (is-Cons!67057 (exprs!6708 ct2!306))) b!6988571))

(declare-fun b!6988572 () Bool)

(declare-fun e!4200439 () Bool)

(declare-fun tp!1929528 () Bool)

(declare-fun tp!1929529 () Bool)

(assert (=> b!6988572 (= e!4200439 (and tp!1929528 tp!1929529))))

(assert (=> b!6988368 (= tp!1929505 e!4200439)))

(assert (= (and b!6988368 (is-Cons!67057 (exprs!6708 setElem!47772))) b!6988572))

(declare-fun condSetEmpty!47778 () Bool)

(assert (=> setNonEmpty!47772 (= condSetEmpty!47778 (= setRest!47772 (as set.empty (Set Context!12416))))))

(declare-fun setRes!47778 () Bool)

(assert (=> setNonEmpty!47772 (= tp!1929503 setRes!47778)))

(declare-fun setIsEmpty!47778 () Bool)

(assert (=> setIsEmpty!47778 setRes!47778))

(declare-fun tp!1929534 () Bool)

(declare-fun setNonEmpty!47778 () Bool)

(declare-fun e!4200442 () Bool)

(declare-fun setElem!47778 () Context!12416)

(assert (=> setNonEmpty!47778 (= setRes!47778 (and tp!1929534 (inv!85890 setElem!47778) e!4200442))))

(declare-fun setRest!47778 () (Set Context!12416))

(assert (=> setNonEmpty!47778 (= setRest!47772 (set.union (set.insert setElem!47778 (as set.empty (Set Context!12416))) setRest!47778))))

(declare-fun b!6988577 () Bool)

(declare-fun tp!1929535 () Bool)

(assert (=> b!6988577 (= e!4200442 tp!1929535)))

(assert (= (and setNonEmpty!47772 condSetEmpty!47778) setIsEmpty!47778))

(assert (= (and setNonEmpty!47772 (not condSetEmpty!47778)) setNonEmpty!47778))

(assert (= setNonEmpty!47778 b!6988577))

(declare-fun m!7676930 () Bool)

(assert (=> setNonEmpty!47778 m!7676930))

(declare-fun b_lambda!262437 () Bool)

(assert (= b_lambda!262433 (or b!6988359 b_lambda!262437)))

(declare-fun bs!1862008 () Bool)

(declare-fun d!2176858 () Bool)

(assert (= bs!1862008 (and d!2176858 b!6988359)))

(declare-fun lt!2486010 () Unit!161079)

(assert (=> bs!1862008 (= lt!2486010 (lemmaConcatPreservesForall!548 (exprs!6708 lt!2486003) (exprs!6708 ct2!306) lambda!401134))))

(assert (=> bs!1862008 (= (dynLambda!26883 lambda!401133 lt!2486003) (Context!12417 (++!15157 (exprs!6708 lt!2486003) (exprs!6708 ct2!306))))))

(declare-fun m!7676936 () Bool)

(assert (=> bs!1862008 m!7676936))

(declare-fun m!7676938 () Bool)

(assert (=> bs!1862008 m!7676938))

(assert (=> d!2176844 d!2176858))

(declare-fun b_lambda!262439 () Bool)

(assert (= b_lambda!262425 (or b!6988359 b_lambda!262439)))

(declare-fun bs!1862010 () Bool)

(declare-fun d!2176862 () Bool)

(assert (= bs!1862010 (and d!2176862 b!6988359)))

(declare-fun validRegex!8857 (Regex!17212) Bool)

(assert (=> bs!1862010 (= (dynLambda!26881 lambda!401134 (h!73505 (exprs!6708 ct2!306))) (validRegex!8857 (h!73505 (exprs!6708 ct2!306))))))

(declare-fun m!7676940 () Bool)

(assert (=> bs!1862010 m!7676940))

(assert (=> b!6988468 d!2176862))

(declare-fun b_lambda!262441 () Bool)

(assert (= b_lambda!262429 (or b!6988362 b_lambda!262441)))

(declare-fun bs!1862011 () Bool)

(declare-fun d!2176864 () Bool)

(assert (= bs!1862011 (and d!2176864 b!6988362)))

(assert (=> bs!1862011 (= (dynLambda!26882 lambda!401135 lt!2485854) (derivationStepZipperUp!1862 lt!2485854 (h!73506 s!7408)))))

(assert (=> bs!1862011 m!7676662))

(assert (=> d!2176818 d!2176864))

(declare-fun b_lambda!262443 () Bool)

(assert (= b_lambda!262431 (or b!6988362 b_lambda!262443)))

(declare-fun bs!1862012 () Bool)

(declare-fun d!2176866 () Bool)

(assert (= bs!1862012 (and d!2176866 b!6988362)))

(assert (=> bs!1862012 (= (dynLambda!26882 lambda!401135 lt!2485852) (derivationStepZipperUp!1862 lt!2485852 (h!73506 s!7408)))))

(assert (=> bs!1862012 m!7676656))

(assert (=> d!2176832 d!2176866))

(declare-fun b_lambda!262445 () Bool)

(assert (= b_lambda!262427 (or b!6988359 b_lambda!262445)))

(declare-fun bs!1862013 () Bool)

(declare-fun d!2176868 () Bool)

(assert (= bs!1862013 (and d!2176868 b!6988359)))

(assert (=> bs!1862013 (= (dynLambda!26881 lambda!401134 (h!73505 lt!2485870)) (validRegex!8857 (h!73505 lt!2485870)))))

(declare-fun m!7676942 () Bool)

(assert (=> bs!1862013 m!7676942))

(assert (=> b!6988485 d!2176868))

(declare-fun b_lambda!262447 () Bool)

(assert (= b_lambda!262423 (or b!6988357 b_lambda!262447)))

(declare-fun bs!1862014 () Bool)

(declare-fun d!2176870 () Bool)

(assert (= bs!1862014 (and d!2176870 b!6988357)))

(assert (=> bs!1862014 (= (dynLambda!26880 lambda!401132 lt!2485983) (matchZipper!2752 (set.insert lt!2485983 (as set.empty (Set Context!12416))) s!7408))))

(declare-fun m!7676944 () Bool)

(assert (=> bs!1862014 m!7676944))

(assert (=> bs!1862014 m!7676944))

(declare-fun m!7676946 () Bool)

(assert (=> bs!1862014 m!7676946))

(assert (=> d!2176796 d!2176870))

(push 1)

(assert (not d!2176804))

(assert (not b!6988497))

(assert (not b!6988484))

(assert (not d!2176832))

(assert (not b!6988462))

(assert (not b!6988469))

(assert (not d!2176834))

(assert (not b_lambda!262443))

(assert (not bs!1862010))

(assert (not b!6988540))

(assert (not d!2176814))

(assert (not d!2176816))

(assert (not b_lambda!262445))

(assert (not b!6988521))

(assert (not b!6988532))

(assert (not d!2176806))

(assert (not d!2176786))

(assert (not d!2176840))

(assert (not d!2176818))

(assert (not d!2176820))

(assert (not b!6988559))

(assert (not d!2176838))

(assert (not b!6988536))

(assert (not bs!1862008))

(assert (not bm!634415))

(assert (not b_lambda!262437))

(assert (not b!6988554))

(assert (not b!6988577))

(assert (not b!6988560))

(assert (not b!6988572))

(assert (not d!2176792))

(assert (not b!6988496))

(assert (not b!6988571))

(assert (not bs!1862012))

(assert (not bs!1862014))

(assert (not bm!634397))

(assert (not d!2176844))

(assert (not d!2176850))

(assert (not d!2176788))

(assert (not bm!634411))

(assert (not b!6988454))

(assert tp_is_empty!43649)

(assert (not d!2176848))

(assert (not b!6988553))

(assert (not d!2176798))

(assert (not b!6988451))

(assert (not bm!634416))

(assert (not d!2176828))

(assert (not setNonEmpty!47778))

(assert (not b!6988480))

(assert (not b_lambda!262447))

(assert (not d!2176796))

(assert (not b!6988551))

(assert (not d!2176842))

(assert (not bm!634412))

(assert (not d!2176856))

(assert (not b_lambda!262439))

(assert (not b!6988463))

(assert (not bs!1862011))

(assert (not d!2176802))

(assert (not b!6988455))

(assert (not b!6988541))

(assert (not b!6988561))

(assert (not b!6988486))

(assert (not d!2176852))

(assert (not d!2176794))

(assert (not b!6988450))

(assert (not b!6988552))

(assert (not b_lambda!262441))

(assert (not b!6988566))

(assert (not bs!1862013))

(assert (not d!2176790))

(assert (not b!6988458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

