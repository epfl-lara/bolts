; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!674894 () Bool)

(assert start!674894)

(declare-fun b!7008600 () Bool)

(assert (=> b!7008600 true))

(declare-fun b!7008599 () Bool)

(assert (=> b!7008599 true))

(declare-fun b!7008602 () Bool)

(assert (=> b!7008602 true))

(declare-fun b!7008592 () Bool)

(declare-fun e!4212843 () Bool)

(declare-fun tp!1932108 () Bool)

(assert (=> b!7008592 (= e!4212843 tp!1932108)))

(declare-fun b!7008593 () Bool)

(declare-fun res!2859606 () Bool)

(declare-fun e!4212856 () Bool)

(assert (=> b!7008593 (=> (not res!2859606) (not e!4212856))))

(declare-datatypes ((C!34882 0))(
  ( (C!34883 (val!27143 Int)) )
))
(declare-datatypes ((List!67463 0))(
  ( (Nil!67339) (Cons!67339 (h!73787 C!34882) (t!381218 List!67463)) )
))
(declare-fun s!7408 () List!67463)

(assert (=> b!7008593 (= res!2859606 (is-Cons!67339 s!7408))))

(declare-fun b!7008595 () Bool)

(declare-fun e!4212844 () Bool)

(declare-fun tp_is_empty!43837 () Bool)

(declare-fun tp!1932107 () Bool)

(assert (=> b!7008595 (= e!4212844 (and tp_is_empty!43837 tp!1932107))))

(declare-fun b!7008596 () Bool)

(declare-fun res!2859622 () Bool)

(declare-fun e!4212847 () Bool)

(assert (=> b!7008596 (=> res!2859622 e!4212847)))

(declare-fun lt!2502488 () Bool)

(assert (=> b!7008596 (= res!2859622 (not lt!2502488))))

(declare-fun b!7008597 () Bool)

(declare-fun res!2859614 () Bool)

(declare-fun e!4212857 () Bool)

(assert (=> b!7008597 (=> res!2859614 e!4212857)))

(declare-datatypes ((Regex!17306 0))(
  ( (ElementMatch!17306 (c!1301736 C!34882)) (Concat!26151 (regOne!35124 Regex!17306) (regTwo!35124 Regex!17306)) (EmptyExpr!17306) (Star!17306 (reg!17635 Regex!17306)) (EmptyLang!17306) (Union!17306 (regOne!35125 Regex!17306) (regTwo!35125 Regex!17306)) )
))
(declare-datatypes ((List!67464 0))(
  ( (Nil!67340) (Cons!67340 (h!73788 Regex!17306) (t!381219 List!67464)) )
))
(declare-datatypes ((Context!12604 0))(
  ( (Context!12605 (exprs!6802 List!67464)) )
))
(declare-fun lt!2502482 () Context!12604)

(assert (=> b!7008597 (= res!2859614 (not (is-Cons!67340 (exprs!6802 lt!2502482))))))

(declare-fun b!7008598 () Bool)

(declare-fun e!4212845 () Bool)

(declare-fun e!4212849 () Bool)

(assert (=> b!7008598 (= e!4212845 e!4212849)))

(declare-fun res!2859618 () Bool)

(assert (=> b!7008598 (=> res!2859618 e!4212849)))

(declare-fun lt!2502485 () (Set Context!12604))

(declare-fun lt!2502493 () (Set Context!12604))

(assert (=> b!7008598 (= res!2859618 (not (= lt!2502485 lt!2502493)))))

(declare-fun lt!2502473 () Context!12604)

(assert (=> b!7008598 (= lt!2502485 (set.insert lt!2502473 (as set.empty (Set Context!12604))))))

(declare-fun lambda!407800 () Int)

(declare-datatypes ((Unit!161290 0))(
  ( (Unit!161291) )
))
(declare-fun lt!2502490 () Unit!161290)

(declare-fun ct2!306 () Context!12604)

(declare-fun lemmaConcatPreservesForall!642 (List!67464 List!67464 Int) Unit!161290)

(assert (=> b!7008598 (= lt!2502490 (lemmaConcatPreservesForall!642 (exprs!6802 lt!2502482) (exprs!6802 ct2!306) lambda!407800))))

(declare-fun e!4212848 () Bool)

(assert (=> b!7008599 (= e!4212848 e!4212845)))

(declare-fun res!2859611 () Bool)

(assert (=> b!7008599 (=> res!2859611 e!4212845)))

(declare-fun lt!2502470 () Context!12604)

(declare-fun z1!570 () (Set Context!12604))

(assert (=> b!7008599 (= res!2859611 (or (not (= lt!2502473 lt!2502470)) (not (set.member lt!2502482 z1!570))))))

(declare-fun ++!15297 (List!67464 List!67464) List!67464)

(assert (=> b!7008599 (= lt!2502473 (Context!12605 (++!15297 (exprs!6802 lt!2502482) (exprs!6802 ct2!306))))))

(declare-fun lt!2502471 () Unit!161290)

(assert (=> b!7008599 (= lt!2502471 (lemmaConcatPreservesForall!642 (exprs!6802 lt!2502482) (exprs!6802 ct2!306) lambda!407800))))

(declare-fun lambda!407799 () Int)

(declare-fun mapPost2!161 ((Set Context!12604) Int Context!12604) Context!12604)

(assert (=> b!7008599 (= lt!2502482 (mapPost2!161 z1!570 lambda!407799 lt!2502470))))

(declare-fun setElem!48302 () Context!12604)

(declare-fun tp!1932110 () Bool)

(declare-fun setNonEmpty!48302 () Bool)

(declare-fun setRes!48302 () Bool)

(declare-fun inv!86125 (Context!12604) Bool)

(assert (=> setNonEmpty!48302 (= setRes!48302 (and tp!1932110 (inv!86125 setElem!48302) e!4212843))))

(declare-fun setRest!48302 () (Set Context!12604))

(assert (=> setNonEmpty!48302 (= z1!570 (set.union (set.insert setElem!48302 (as set.empty (Set Context!12604))) setRest!48302))))

(assert (=> b!7008600 (= e!4212856 (not e!4212848))))

(declare-fun res!2859613 () Bool)

(assert (=> b!7008600 (=> res!2859613 e!4212848)))

(declare-fun matchZipper!2846 ((Set Context!12604) List!67463) Bool)

(assert (=> b!7008600 (= res!2859613 (not (matchZipper!2846 lt!2502493 s!7408)))))

(assert (=> b!7008600 (= lt!2502493 (set.insert lt!2502470 (as set.empty (Set Context!12604))))))

(declare-fun lt!2502478 () (Set Context!12604))

(declare-fun lambda!407798 () Int)

(declare-fun getWitness!1243 ((Set Context!12604) Int) Context!12604)

(assert (=> b!7008600 (= lt!2502470 (getWitness!1243 lt!2502478 lambda!407798))))

(declare-datatypes ((List!67465 0))(
  ( (Nil!67341) (Cons!67341 (h!73789 Context!12604) (t!381220 List!67465)) )
))
(declare-fun lt!2502480 () List!67465)

(declare-fun exists!3145 (List!67465 Int) Bool)

(assert (=> b!7008600 (exists!3145 lt!2502480 lambda!407798)))

(declare-fun lt!2502487 () Unit!161290)

(declare-fun lemmaZipperMatchesExistsMatchingContext!275 (List!67465 List!67463) Unit!161290)

(assert (=> b!7008600 (= lt!2502487 (lemmaZipperMatchesExistsMatchingContext!275 lt!2502480 s!7408))))

(declare-fun toList!10666 ((Set Context!12604)) List!67465)

(assert (=> b!7008600 (= lt!2502480 (toList!10666 lt!2502478))))

(declare-fun b!7008601 () Bool)

(declare-fun e!4212846 () Bool)

(declare-fun e!4212850 () Bool)

(assert (=> b!7008601 (= e!4212846 e!4212850)))

(declare-fun res!2859607 () Bool)

(assert (=> b!7008601 (=> res!2859607 e!4212850)))

(declare-fun lt!2502495 () (Set Context!12604))

(declare-fun lt!2502486 () (Set Context!12604))

(assert (=> b!7008601 (= res!2859607 (not (= lt!2502495 lt!2502486)))))

(declare-fun lt!2502492 () (Set Context!12604))

(declare-fun lt!2502489 () (Set Context!12604))

(assert (=> b!7008601 (= lt!2502486 (set.union lt!2502492 lt!2502489))))

(declare-fun lt!2502476 () Context!12604)

(declare-fun derivationStepZipperUp!1956 (Context!12604 C!34882) (Set Context!12604))

(assert (=> b!7008601 (= lt!2502489 (derivationStepZipperUp!1956 lt!2502476 (h!73787 s!7408)))))

(declare-fun derivationStepZipperDown!2024 (Regex!17306 Context!12604 C!34882) (Set Context!12604))

(assert (=> b!7008601 (= lt!2502492 (derivationStepZipperDown!2024 (h!73788 (exprs!6802 lt!2502482)) lt!2502476 (h!73787 s!7408)))))

(declare-fun lt!2502499 () List!67464)

(assert (=> b!7008601 (= lt!2502476 (Context!12605 (++!15297 lt!2502499 (exprs!6802 ct2!306))))))

(declare-fun lt!2502498 () Unit!161290)

(assert (=> b!7008601 (= lt!2502498 (lemmaConcatPreservesForall!642 lt!2502499 (exprs!6802 ct2!306) lambda!407800))))

(declare-fun lt!2502496 () Unit!161290)

(assert (=> b!7008601 (= lt!2502496 (lemmaConcatPreservesForall!642 lt!2502499 (exprs!6802 ct2!306) lambda!407800))))

(assert (=> b!7008602 (= e!4212849 e!4212857)))

(declare-fun res!2859615 () Bool)

(assert (=> b!7008602 (=> res!2859615 e!4212857)))

(declare-fun derivationStepZipper!2786 ((Set Context!12604) C!34882) (Set Context!12604))

(assert (=> b!7008602 (= res!2859615 (not (= (derivationStepZipper!2786 lt!2502485 (h!73787 s!7408)) lt!2502495)))))

(declare-fun lambda!407801 () Int)

(declare-fun flatMap!2292 ((Set Context!12604) Int) (Set Context!12604))

(assert (=> b!7008602 (= (flatMap!2292 lt!2502485 lambda!407801) (derivationStepZipperUp!1956 lt!2502473 (h!73787 s!7408)))))

(declare-fun lt!2502477 () Unit!161290)

(declare-fun lemmaFlatMapOnSingletonSet!1807 ((Set Context!12604) Context!12604 Int) Unit!161290)

(assert (=> b!7008602 (= lt!2502477 (lemmaFlatMapOnSingletonSet!1807 lt!2502485 lt!2502473 lambda!407801))))

(assert (=> b!7008602 (= lt!2502495 (derivationStepZipperUp!1956 lt!2502473 (h!73787 s!7408)))))

(declare-fun lt!2502494 () Unit!161290)

(assert (=> b!7008602 (= lt!2502494 (lemmaConcatPreservesForall!642 (exprs!6802 lt!2502482) (exprs!6802 ct2!306) lambda!407800))))

(declare-fun setIsEmpty!48302 () Bool)

(assert (=> setIsEmpty!48302 setRes!48302))

(declare-fun b!7008603 () Bool)

(declare-fun e!4212855 () Bool)

(assert (=> b!7008603 (= e!4212855 (not (matchZipper!2846 lt!2502489 (t!381218 s!7408))))))

(declare-fun lt!2502479 () Unit!161290)

(assert (=> b!7008603 (= lt!2502479 (lemmaConcatPreservesForall!642 lt!2502499 (exprs!6802 ct2!306) lambda!407800))))

(declare-fun b!7008604 () Bool)

(declare-fun e!4212852 () Bool)

(assert (=> b!7008604 (= e!4212852 (matchZipper!2846 lt!2502489 (t!381218 s!7408)))))

(declare-fun b!7008594 () Bool)

(declare-fun e!4212853 () Bool)

(declare-fun validRegex!8883 (Regex!17306) Bool)

(assert (=> b!7008594 (= e!4212853 (validRegex!8883 (h!73788 (exprs!6802 lt!2502482))))))

(declare-fun lt!2502491 () Unit!161290)

(assert (=> b!7008594 (= lt!2502491 (lemmaConcatPreservesForall!642 lt!2502499 (exprs!6802 ct2!306) lambda!407800))))

(declare-fun lt!2502483 () Context!12604)

(declare-fun appendTo!427 ((Set Context!12604) Context!12604) (Set Context!12604))

(assert (=> b!7008594 (= lt!2502492 (appendTo!427 (derivationStepZipperDown!2024 (h!73788 (exprs!6802 lt!2502482)) lt!2502483 (h!73787 s!7408)) ct2!306))))

(declare-fun lt!2502467 () Unit!161290)

(assert (=> b!7008594 (= lt!2502467 (lemmaConcatPreservesForall!642 lt!2502499 (exprs!6802 ct2!306) lambda!407800))))

(declare-fun lt!2502472 () Unit!161290)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!5 (Context!12604 Regex!17306 C!34882 Context!12604) Unit!161290)

(assert (=> b!7008594 (= lt!2502472 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!5 lt!2502483 (h!73788 (exprs!6802 lt!2502482)) (h!73787 s!7408) ct2!306))))

(declare-fun res!2859610 () Bool)

(assert (=> start!674894 (=> (not res!2859610) (not e!4212856))))

(assert (=> start!674894 (= res!2859610 (matchZipper!2846 lt!2502478 s!7408))))

(assert (=> start!674894 (= lt!2502478 (appendTo!427 z1!570 ct2!306))))

(assert (=> start!674894 e!4212856))

(declare-fun condSetEmpty!48302 () Bool)

(assert (=> start!674894 (= condSetEmpty!48302 (= z1!570 (as set.empty (Set Context!12604))))))

(assert (=> start!674894 setRes!48302))

(declare-fun e!4212851 () Bool)

(assert (=> start!674894 (and (inv!86125 ct2!306) e!4212851)))

(assert (=> start!674894 e!4212844))

(declare-fun b!7008605 () Bool)

(declare-fun res!2859617 () Bool)

(assert (=> b!7008605 (=> res!2859617 e!4212857)))

(declare-fun isEmpty!39328 (List!67464) Bool)

(assert (=> b!7008605 (= res!2859617 (isEmpty!39328 (exprs!6802 lt!2502482)))))

(declare-fun b!7008606 () Bool)

(declare-fun e!4212854 () Bool)

(assert (=> b!7008606 (= e!4212847 e!4212854)))

(declare-fun res!2859612 () Bool)

(assert (=> b!7008606 (=> res!2859612 e!4212854)))

(assert (=> b!7008606 (= res!2859612 (matchZipper!2846 lt!2502489 (t!381218 s!7408)))))

(declare-fun lt!2502484 () Unit!161290)

(assert (=> b!7008606 (= lt!2502484 (lemmaConcatPreservesForall!642 lt!2502499 (exprs!6802 ct2!306) lambda!407800))))

(declare-fun b!7008607 () Bool)

(declare-fun res!2859619 () Bool)

(assert (=> b!7008607 (=> res!2859619 e!4212848)))

(assert (=> b!7008607 (= res!2859619 (not (set.member lt!2502470 lt!2502478)))))

(declare-fun b!7008608 () Bool)

(declare-fun tp!1932109 () Bool)

(assert (=> b!7008608 (= e!4212851 tp!1932109)))

(declare-fun b!7008609 () Bool)

(assert (=> b!7008609 (= e!4212857 e!4212846)))

(declare-fun res!2859608 () Bool)

(assert (=> b!7008609 (=> res!2859608 e!4212846)))

(declare-fun nullable!7066 (Regex!17306) Bool)

(assert (=> b!7008609 (= res!2859608 (not (nullable!7066 (h!73788 (exprs!6802 lt!2502482)))))))

(assert (=> b!7008609 (= lt!2502483 (Context!12605 lt!2502499))))

(declare-fun tail!13375 (List!67464) List!67464)

(assert (=> b!7008609 (= lt!2502499 (tail!13375 (exprs!6802 lt!2502482)))))

(declare-fun b!7008610 () Bool)

(assert (=> b!7008610 (= e!4212850 e!4212847)))

(declare-fun res!2859620 () Bool)

(assert (=> b!7008610 (=> res!2859620 e!4212847)))

(assert (=> b!7008610 (= res!2859620 e!4212855)))

(declare-fun res!2859609 () Bool)

(assert (=> b!7008610 (=> (not res!2859609) (not e!4212855))))

(declare-fun lt!2502475 () Bool)

(assert (=> b!7008610 (= res!2859609 (not (= lt!2502488 lt!2502475)))))

(assert (=> b!7008610 (= lt!2502488 (matchZipper!2846 lt!2502495 (t!381218 s!7408)))))

(declare-fun lt!2502469 () Unit!161290)

(assert (=> b!7008610 (= lt!2502469 (lemmaConcatPreservesForall!642 lt!2502499 (exprs!6802 ct2!306) lambda!407800))))

(assert (=> b!7008610 (= (matchZipper!2846 lt!2502486 (t!381218 s!7408)) e!4212852)))

(declare-fun res!2859616 () Bool)

(assert (=> b!7008610 (=> res!2859616 e!4212852)))

(assert (=> b!7008610 (= res!2859616 lt!2502475)))

(assert (=> b!7008610 (= lt!2502475 (matchZipper!2846 lt!2502492 (t!381218 s!7408)))))

(declare-fun lt!2502500 () Unit!161290)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1479 ((Set Context!12604) (Set Context!12604) List!67463) Unit!161290)

(assert (=> b!7008610 (= lt!2502500 (lemmaZipperConcatMatchesSameAsBothZippers!1479 lt!2502492 lt!2502489 (t!381218 s!7408)))))

(declare-fun lt!2502481 () Unit!161290)

(assert (=> b!7008610 (= lt!2502481 (lemmaConcatPreservesForall!642 lt!2502499 (exprs!6802 ct2!306) lambda!407800))))

(declare-fun lt!2502497 () Unit!161290)

(assert (=> b!7008610 (= lt!2502497 (lemmaConcatPreservesForall!642 lt!2502499 (exprs!6802 ct2!306) lambda!407800))))

(declare-fun b!7008611 () Bool)

(assert (=> b!7008611 (= e!4212854 e!4212853)))

(declare-fun res!2859621 () Bool)

(assert (=> b!7008611 (=> res!2859621 e!4212853)))

(assert (=> b!7008611 (= res!2859621 (not lt!2502475))))

(declare-fun lt!2502468 () Unit!161290)

(assert (=> b!7008611 (= lt!2502468 (lemmaConcatPreservesForall!642 lt!2502499 (exprs!6802 ct2!306) lambda!407800))))

(declare-fun lt!2502474 () Unit!161290)

(assert (=> b!7008611 (= lt!2502474 (lemmaConcatPreservesForall!642 lt!2502499 (exprs!6802 ct2!306) lambda!407800))))

(assert (= (and start!674894 res!2859610) b!7008593))

(assert (= (and b!7008593 res!2859606) b!7008600))

(assert (= (and b!7008600 (not res!2859613)) b!7008607))

(assert (= (and b!7008607 (not res!2859619)) b!7008599))

(assert (= (and b!7008599 (not res!2859611)) b!7008598))

(assert (= (and b!7008598 (not res!2859618)) b!7008602))

(assert (= (and b!7008602 (not res!2859615)) b!7008597))

(assert (= (and b!7008597 (not res!2859614)) b!7008605))

(assert (= (and b!7008605 (not res!2859617)) b!7008609))

(assert (= (and b!7008609 (not res!2859608)) b!7008601))

(assert (= (and b!7008601 (not res!2859607)) b!7008610))

(assert (= (and b!7008610 (not res!2859616)) b!7008604))

(assert (= (and b!7008610 res!2859609) b!7008603))

(assert (= (and b!7008610 (not res!2859620)) b!7008596))

(assert (= (and b!7008596 (not res!2859622)) b!7008606))

(assert (= (and b!7008606 (not res!2859612)) b!7008611))

(assert (= (and b!7008611 (not res!2859621)) b!7008594))

(assert (= (and start!674894 condSetEmpty!48302) setIsEmpty!48302))

(assert (= (and start!674894 (not condSetEmpty!48302)) setNonEmpty!48302))

(assert (= setNonEmpty!48302 b!7008592))

(assert (= start!674894 b!7008608))

(assert (= (and start!674894 (is-Cons!67339 s!7408)) b!7008595))

(declare-fun m!7706034 () Bool)

(assert (=> b!7008594 m!7706034))

(declare-fun m!7706036 () Bool)

(assert (=> b!7008594 m!7706036))

(declare-fun m!7706038 () Bool)

(assert (=> b!7008594 m!7706038))

(assert (=> b!7008594 m!7706038))

(declare-fun m!7706040 () Bool)

(assert (=> b!7008594 m!7706040))

(declare-fun m!7706042 () Bool)

(assert (=> b!7008594 m!7706042))

(assert (=> b!7008594 m!7706034))

(declare-fun m!7706044 () Bool)

(assert (=> b!7008607 m!7706044))

(declare-fun m!7706046 () Bool)

(assert (=> start!674894 m!7706046))

(declare-fun m!7706048 () Bool)

(assert (=> start!674894 m!7706048))

(declare-fun m!7706050 () Bool)

(assert (=> start!674894 m!7706050))

(assert (=> b!7008611 m!7706034))

(assert (=> b!7008611 m!7706034))

(declare-fun m!7706052 () Bool)

(assert (=> b!7008600 m!7706052))

(declare-fun m!7706054 () Bool)

(assert (=> b!7008600 m!7706054))

(declare-fun m!7706056 () Bool)

(assert (=> b!7008600 m!7706056))

(declare-fun m!7706058 () Bool)

(assert (=> b!7008600 m!7706058))

(declare-fun m!7706060 () Bool)

(assert (=> b!7008600 m!7706060))

(declare-fun m!7706062 () Bool)

(assert (=> b!7008600 m!7706062))

(declare-fun m!7706064 () Bool)

(assert (=> b!7008610 m!7706064))

(declare-fun m!7706066 () Bool)

(assert (=> b!7008610 m!7706066))

(declare-fun m!7706068 () Bool)

(assert (=> b!7008610 m!7706068))

(declare-fun m!7706070 () Bool)

(assert (=> b!7008610 m!7706070))

(assert (=> b!7008610 m!7706034))

(assert (=> b!7008610 m!7706034))

(assert (=> b!7008610 m!7706034))

(declare-fun m!7706072 () Bool)

(assert (=> b!7008604 m!7706072))

(declare-fun m!7706074 () Bool)

(assert (=> b!7008605 m!7706074))

(declare-fun m!7706076 () Bool)

(assert (=> b!7008601 m!7706076))

(assert (=> b!7008601 m!7706034))

(assert (=> b!7008601 m!7706034))

(declare-fun m!7706078 () Bool)

(assert (=> b!7008601 m!7706078))

(declare-fun m!7706080 () Bool)

(assert (=> b!7008601 m!7706080))

(declare-fun m!7706082 () Bool)

(assert (=> b!7008602 m!7706082))

(declare-fun m!7706084 () Bool)

(assert (=> b!7008602 m!7706084))

(declare-fun m!7706086 () Bool)

(assert (=> b!7008602 m!7706086))

(declare-fun m!7706088 () Bool)

(assert (=> b!7008602 m!7706088))

(declare-fun m!7706090 () Bool)

(assert (=> b!7008602 m!7706090))

(assert (=> b!7008603 m!7706072))

(assert (=> b!7008603 m!7706034))

(declare-fun m!7706092 () Bool)

(assert (=> b!7008609 m!7706092))

(declare-fun m!7706094 () Bool)

(assert (=> b!7008609 m!7706094))

(declare-fun m!7706096 () Bool)

(assert (=> b!7008599 m!7706096))

(declare-fun m!7706098 () Bool)

(assert (=> b!7008599 m!7706098))

(assert (=> b!7008599 m!7706090))

(declare-fun m!7706100 () Bool)

(assert (=> b!7008599 m!7706100))

(declare-fun m!7706102 () Bool)

(assert (=> setNonEmpty!48302 m!7706102))

(declare-fun m!7706104 () Bool)

(assert (=> b!7008598 m!7706104))

(assert (=> b!7008598 m!7706090))

(assert (=> b!7008606 m!7706072))

(assert (=> b!7008606 m!7706034))

(push 1)

(assert (not b!7008603))

(assert (not b!7008608))

(assert (not b!7008604))

(assert tp_is_empty!43837)

(assert (not b!7008600))

(assert (not b!7008610))

(assert (not b!7008601))

(assert (not b!7008605))

(assert (not b!7008611))

(assert (not b!7008602))

(assert (not b!7008598))

(assert (not b!7008609))

(assert (not b!7008606))

(assert (not setNonEmpty!48302))

(assert (not b!7008592))

(assert (not b!7008594))

(assert (not start!674894))

(assert (not b!7008595))

(assert (not b!7008599))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2184863 () Bool)

(assert (=> d!2184863 (= (isEmpty!39328 (exprs!6802 lt!2502482)) (is-Nil!67340 (exprs!6802 lt!2502482)))))

(assert (=> b!7008605 d!2184863))

(declare-fun d!2184865 () Bool)

(declare-fun c!1301748 () Bool)

(declare-fun isEmpty!39330 (List!67463) Bool)

(assert (=> d!2184865 (= c!1301748 (isEmpty!39330 (t!381218 s!7408)))))

(declare-fun e!4212905 () Bool)

(assert (=> d!2184865 (= (matchZipper!2846 lt!2502489 (t!381218 s!7408)) e!4212905)))

(declare-fun b!7008688 () Bool)

(declare-fun nullableZipper!2482 ((Set Context!12604)) Bool)

(assert (=> b!7008688 (= e!4212905 (nullableZipper!2482 lt!2502489))))

(declare-fun b!7008689 () Bool)

(declare-fun head!14168 (List!67463) C!34882)

(declare-fun tail!13377 (List!67463) List!67463)

(assert (=> b!7008689 (= e!4212905 (matchZipper!2846 (derivationStepZipper!2786 lt!2502489 (head!14168 (t!381218 s!7408))) (tail!13377 (t!381218 s!7408))))))

(assert (= (and d!2184865 c!1301748) b!7008688))

(assert (= (and d!2184865 (not c!1301748)) b!7008689))

(declare-fun m!7706178 () Bool)

(assert (=> d!2184865 m!7706178))

(declare-fun m!7706180 () Bool)

(assert (=> b!7008688 m!7706180))

(declare-fun m!7706182 () Bool)

(assert (=> b!7008689 m!7706182))

(assert (=> b!7008689 m!7706182))

(declare-fun m!7706184 () Bool)

(assert (=> b!7008689 m!7706184))

(declare-fun m!7706186 () Bool)

(assert (=> b!7008689 m!7706186))

(assert (=> b!7008689 m!7706184))

(assert (=> b!7008689 m!7706186))

(declare-fun m!7706188 () Bool)

(assert (=> b!7008689 m!7706188))

(assert (=> b!7008606 d!2184865))

(declare-fun d!2184867 () Bool)

(declare-fun forall!16224 (List!67464 Int) Bool)

(assert (=> d!2184867 (forall!16224 (++!15297 lt!2502499 (exprs!6802 ct2!306)) lambda!407800)))

(declare-fun lt!2502607 () Unit!161290)

(declare-fun choose!52657 (List!67464 List!67464 Int) Unit!161290)

(assert (=> d!2184867 (= lt!2502607 (choose!52657 lt!2502499 (exprs!6802 ct2!306) lambda!407800))))

(assert (=> d!2184867 (forall!16224 lt!2502499 lambda!407800)))

(assert (=> d!2184867 (= (lemmaConcatPreservesForall!642 lt!2502499 (exprs!6802 ct2!306) lambda!407800) lt!2502607)))

(declare-fun bs!1865909 () Bool)

(assert (= bs!1865909 d!2184867))

(assert (=> bs!1865909 m!7706076))

(assert (=> bs!1865909 m!7706076))

(declare-fun m!7706190 () Bool)

(assert (=> bs!1865909 m!7706190))

(declare-fun m!7706192 () Bool)

(assert (=> bs!1865909 m!7706192))

(declare-fun m!7706194 () Bool)

(assert (=> bs!1865909 m!7706194))

(assert (=> b!7008606 d!2184867))

(declare-fun d!2184869 () Bool)

(assert (=> d!2184869 (forall!16224 (++!15297 (exprs!6802 lt!2502482) (exprs!6802 ct2!306)) lambda!407800)))

(declare-fun lt!2502608 () Unit!161290)

(assert (=> d!2184869 (= lt!2502608 (choose!52657 (exprs!6802 lt!2502482) (exprs!6802 ct2!306) lambda!407800))))

(assert (=> d!2184869 (forall!16224 (exprs!6802 lt!2502482) lambda!407800)))

(assert (=> d!2184869 (= (lemmaConcatPreservesForall!642 (exprs!6802 lt!2502482) (exprs!6802 ct2!306) lambda!407800) lt!2502608)))

(declare-fun bs!1865910 () Bool)

(assert (= bs!1865910 d!2184869))

(assert (=> bs!1865910 m!7706098))

(assert (=> bs!1865910 m!7706098))

(declare-fun m!7706196 () Bool)

(assert (=> bs!1865910 m!7706196))

(declare-fun m!7706198 () Bool)

(assert (=> bs!1865910 m!7706198))

(declare-fun m!7706200 () Bool)

(assert (=> bs!1865910 m!7706200))

(assert (=> b!7008598 d!2184869))

(declare-fun d!2184871 () Bool)

(declare-fun c!1301749 () Bool)

(assert (=> d!2184871 (= c!1301749 (isEmpty!39330 s!7408))))

(declare-fun e!4212906 () Bool)

(assert (=> d!2184871 (= (matchZipper!2846 lt!2502478 s!7408) e!4212906)))

(declare-fun b!7008690 () Bool)

(assert (=> b!7008690 (= e!4212906 (nullableZipper!2482 lt!2502478))))

(declare-fun b!7008691 () Bool)

(assert (=> b!7008691 (= e!4212906 (matchZipper!2846 (derivationStepZipper!2786 lt!2502478 (head!14168 s!7408)) (tail!13377 s!7408)))))

(assert (= (and d!2184871 c!1301749) b!7008690))

(assert (= (and d!2184871 (not c!1301749)) b!7008691))

(declare-fun m!7706202 () Bool)

(assert (=> d!2184871 m!7706202))

(declare-fun m!7706204 () Bool)

(assert (=> b!7008690 m!7706204))

(declare-fun m!7706206 () Bool)

(assert (=> b!7008691 m!7706206))

(assert (=> b!7008691 m!7706206))

(declare-fun m!7706208 () Bool)

(assert (=> b!7008691 m!7706208))

(declare-fun m!7706210 () Bool)

(assert (=> b!7008691 m!7706210))

(assert (=> b!7008691 m!7706208))

(assert (=> b!7008691 m!7706210))

(declare-fun m!7706212 () Bool)

(assert (=> b!7008691 m!7706212))

(assert (=> start!674894 d!2184871))

(declare-fun bs!1865911 () Bool)

(declare-fun d!2184873 () Bool)

(assert (= bs!1865911 (and d!2184873 b!7008599)))

(declare-fun lambda!407848 () Int)

(assert (=> bs!1865911 (= lambda!407848 lambda!407799)))

(assert (=> d!2184873 true))

(declare-fun map!15600 ((Set Context!12604) Int) (Set Context!12604))

(assert (=> d!2184873 (= (appendTo!427 z1!570 ct2!306) (map!15600 z1!570 lambda!407848))))

(declare-fun bs!1865912 () Bool)

(assert (= bs!1865912 d!2184873))

(declare-fun m!7706214 () Bool)

(assert (=> bs!1865912 m!7706214))

(assert (=> start!674894 d!2184873))

(declare-fun bs!1865913 () Bool)

(declare-fun d!2184875 () Bool)

(assert (= bs!1865913 (and d!2184875 b!7008599)))

(declare-fun lambda!407851 () Int)

(assert (=> bs!1865913 (= lambda!407851 lambda!407800)))

(assert (=> d!2184875 (= (inv!86125 ct2!306) (forall!16224 (exprs!6802 ct2!306) lambda!407851))))

(declare-fun bs!1865914 () Bool)

(assert (= bs!1865914 d!2184875))

(declare-fun m!7706216 () Bool)

(assert (=> bs!1865914 m!7706216))

(assert (=> start!674894 d!2184875))

(assert (=> b!7008594 d!2184867))

(declare-fun bs!1865915 () Bool)

(declare-fun d!2184877 () Bool)

(assert (= bs!1865915 (and d!2184877 b!7008599)))

(declare-fun lambda!407854 () Int)

(assert (=> bs!1865915 (= lambda!407854 lambda!407800)))

(declare-fun bs!1865916 () Bool)

(assert (= bs!1865916 (and d!2184877 d!2184875)))

(assert (=> bs!1865916 (= lambda!407854 lambda!407851)))

(assert (=> d!2184877 (= (derivationStepZipperDown!2024 (h!73788 (exprs!6802 lt!2502482)) (Context!12605 (++!15297 (exprs!6802 lt!2502483) (exprs!6802 ct2!306))) (h!73787 s!7408)) (appendTo!427 (derivationStepZipperDown!2024 (h!73788 (exprs!6802 lt!2502482)) lt!2502483 (h!73787 s!7408)) ct2!306))))

(declare-fun lt!2502616 () Unit!161290)

(assert (=> d!2184877 (= lt!2502616 (lemmaConcatPreservesForall!642 (exprs!6802 lt!2502483) (exprs!6802 ct2!306) lambda!407854))))

(declare-fun lt!2502615 () Unit!161290)

(declare-fun choose!52658 (Context!12604 Regex!17306 C!34882 Context!12604) Unit!161290)

(assert (=> d!2184877 (= lt!2502615 (choose!52658 lt!2502483 (h!73788 (exprs!6802 lt!2502482)) (h!73787 s!7408) ct2!306))))

(assert (=> d!2184877 (validRegex!8883 (h!73788 (exprs!6802 lt!2502482)))))

(assert (=> d!2184877 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!5 lt!2502483 (h!73788 (exprs!6802 lt!2502482)) (h!73787 s!7408) ct2!306) lt!2502615)))

(declare-fun bs!1865917 () Bool)

(assert (= bs!1865917 d!2184877))

(declare-fun m!7706218 () Bool)

(assert (=> bs!1865917 m!7706218))

(assert (=> bs!1865917 m!7706036))

(declare-fun m!7706220 () Bool)

(assert (=> bs!1865917 m!7706220))

(declare-fun m!7706222 () Bool)

(assert (=> bs!1865917 m!7706222))

(assert (=> bs!1865917 m!7706038))

(assert (=> bs!1865917 m!7706040))

(declare-fun m!7706224 () Bool)

(assert (=> bs!1865917 m!7706224))

(assert (=> bs!1865917 m!7706038))

(assert (=> b!7008594 d!2184877))

(declare-fun b!7008714 () Bool)

(declare-fun c!1301764 () Bool)

(declare-fun e!4212919 () Bool)

(assert (=> b!7008714 (= c!1301764 e!4212919)))

(declare-fun res!2859678 () Bool)

(assert (=> b!7008714 (=> (not res!2859678) (not e!4212919))))

(assert (=> b!7008714 (= res!2859678 (is-Concat!26151 (h!73788 (exprs!6802 lt!2502482))))))

(declare-fun e!4212922 () (Set Context!12604))

(declare-fun e!4212924 () (Set Context!12604))

(assert (=> b!7008714 (= e!4212922 e!4212924)))

(declare-fun bm!636523 () Bool)

(declare-fun call!636533 () List!67464)

(declare-fun c!1301763 () Bool)

(declare-fun $colon$colon!2524 (List!67464 Regex!17306) List!67464)

(assert (=> bm!636523 (= call!636533 ($colon$colon!2524 (exprs!6802 lt!2502483) (ite (or c!1301764 c!1301763) (regTwo!35124 (h!73788 (exprs!6802 lt!2502482))) (h!73788 (exprs!6802 lt!2502482)))))))

(declare-fun b!7008715 () Bool)

(declare-fun c!1301766 () Bool)

(assert (=> b!7008715 (= c!1301766 (is-Star!17306 (h!73788 (exprs!6802 lt!2502482))))))

(declare-fun e!4212923 () (Set Context!12604))

(declare-fun e!4212921 () (Set Context!12604))

(assert (=> b!7008715 (= e!4212923 e!4212921)))

(declare-fun b!7008716 () Bool)

(declare-fun call!636529 () (Set Context!12604))

(assert (=> b!7008716 (= e!4212921 call!636529)))

(declare-fun c!1301765 () Bool)

(declare-fun bm!636524 () Bool)

(declare-fun call!636532 () List!67464)

(declare-fun call!636531 () (Set Context!12604))

(assert (=> bm!636524 (= call!636531 (derivationStepZipperDown!2024 (ite c!1301765 (regOne!35125 (h!73788 (exprs!6802 lt!2502482))) (ite c!1301764 (regTwo!35124 (h!73788 (exprs!6802 lt!2502482))) (ite c!1301763 (regOne!35124 (h!73788 (exprs!6802 lt!2502482))) (reg!17635 (h!73788 (exprs!6802 lt!2502482)))))) (ite (or c!1301765 c!1301764) lt!2502483 (Context!12605 call!636532)) (h!73787 s!7408)))))

(declare-fun b!7008717 () Bool)

(declare-fun call!636530 () (Set Context!12604))

(assert (=> b!7008717 (= e!4212922 (set.union call!636531 call!636530))))

(declare-fun bm!636525 () Bool)

(assert (=> bm!636525 (= call!636530 (derivationStepZipperDown!2024 (ite c!1301765 (regTwo!35125 (h!73788 (exprs!6802 lt!2502482))) (regOne!35124 (h!73788 (exprs!6802 lt!2502482)))) (ite c!1301765 lt!2502483 (Context!12605 call!636533)) (h!73787 s!7408)))))

(declare-fun b!7008718 () Bool)

(assert (=> b!7008718 (= e!4212921 (as set.empty (Set Context!12604)))))

(declare-fun bm!636526 () Bool)

(declare-fun call!636528 () (Set Context!12604))

(assert (=> bm!636526 (= call!636528 call!636531)))

(declare-fun b!7008719 () Bool)

(declare-fun e!4212920 () (Set Context!12604))

(assert (=> b!7008719 (= e!4212920 e!4212922)))

(assert (=> b!7008719 (= c!1301765 (is-Union!17306 (h!73788 (exprs!6802 lt!2502482))))))

(declare-fun b!7008720 () Bool)

(assert (=> b!7008720 (= e!4212923 call!636529)))

(declare-fun b!7008721 () Bool)

(assert (=> b!7008721 (= e!4212919 (nullable!7066 (regOne!35124 (h!73788 (exprs!6802 lt!2502482)))))))

(declare-fun b!7008722 () Bool)

(assert (=> b!7008722 (= e!4212924 (set.union call!636530 call!636528))))

(declare-fun d!2184879 () Bool)

(declare-fun c!1301762 () Bool)

(assert (=> d!2184879 (= c!1301762 (and (is-ElementMatch!17306 (h!73788 (exprs!6802 lt!2502482))) (= (c!1301736 (h!73788 (exprs!6802 lt!2502482))) (h!73787 s!7408))))))

(assert (=> d!2184879 (= (derivationStepZipperDown!2024 (h!73788 (exprs!6802 lt!2502482)) lt!2502483 (h!73787 s!7408)) e!4212920)))

(declare-fun b!7008723 () Bool)

(assert (=> b!7008723 (= e!4212924 e!4212923)))

(assert (=> b!7008723 (= c!1301763 (is-Concat!26151 (h!73788 (exprs!6802 lt!2502482))))))

(declare-fun b!7008724 () Bool)

(assert (=> b!7008724 (= e!4212920 (set.insert lt!2502483 (as set.empty (Set Context!12604))))))

(declare-fun bm!636527 () Bool)

(assert (=> bm!636527 (= call!636529 call!636528)))

(declare-fun bm!636528 () Bool)

(assert (=> bm!636528 (= call!636532 call!636533)))

(assert (= (and d!2184879 c!1301762) b!7008724))

(assert (= (and d!2184879 (not c!1301762)) b!7008719))

(assert (= (and b!7008719 c!1301765) b!7008717))

(assert (= (and b!7008719 (not c!1301765)) b!7008714))

(assert (= (and b!7008714 res!2859678) b!7008721))

(assert (= (and b!7008714 c!1301764) b!7008722))

(assert (= (and b!7008714 (not c!1301764)) b!7008723))

(assert (= (and b!7008723 c!1301763) b!7008720))

(assert (= (and b!7008723 (not c!1301763)) b!7008715))

(assert (= (and b!7008715 c!1301766) b!7008716))

(assert (= (and b!7008715 (not c!1301766)) b!7008718))

(assert (= (or b!7008720 b!7008716) bm!636528))

(assert (= (or b!7008720 b!7008716) bm!636527))

(assert (= (or b!7008722 bm!636527) bm!636526))

(assert (= (or b!7008722 bm!636528) bm!636523))

(assert (= (or b!7008717 bm!636526) bm!636524))

(assert (= (or b!7008717 b!7008722) bm!636525))

(declare-fun m!7706226 () Bool)

(assert (=> b!7008724 m!7706226))

(declare-fun m!7706228 () Bool)

(assert (=> bm!636524 m!7706228))

(declare-fun m!7706230 () Bool)

(assert (=> b!7008721 m!7706230))

(declare-fun m!7706232 () Bool)

(assert (=> bm!636523 m!7706232))

(declare-fun m!7706234 () Bool)

(assert (=> bm!636525 m!7706234))

(assert (=> b!7008594 d!2184879))

(declare-fun b!7008743 () Bool)

(declare-fun e!4212939 () Bool)

(declare-fun call!636541 () Bool)

(assert (=> b!7008743 (= e!4212939 call!636541)))

(declare-fun c!1301772 () Bool)

(declare-fun c!1301771 () Bool)

(declare-fun bm!636535 () Bool)

(assert (=> bm!636535 (= call!636541 (validRegex!8883 (ite c!1301772 (reg!17635 (h!73788 (exprs!6802 lt!2502482))) (ite c!1301771 (regTwo!35125 (h!73788 (exprs!6802 lt!2502482))) (regTwo!35124 (h!73788 (exprs!6802 lt!2502482)))))))))

(declare-fun bm!636536 () Bool)

(declare-fun call!636540 () Bool)

(assert (=> bm!636536 (= call!636540 call!636541)))

(declare-fun b!7008744 () Bool)

(declare-fun e!4212942 () Bool)

(declare-fun e!4212944 () Bool)

(assert (=> b!7008744 (= e!4212942 e!4212944)))

(declare-fun res!2859689 () Bool)

(assert (=> b!7008744 (=> (not res!2859689) (not e!4212944))))

(declare-fun call!636542 () Bool)

(assert (=> b!7008744 (= res!2859689 call!636542)))

(declare-fun b!7008746 () Bool)

(declare-fun e!4212940 () Bool)

(declare-fun e!4212943 () Bool)

(assert (=> b!7008746 (= e!4212940 e!4212943)))

(assert (=> b!7008746 (= c!1301772 (is-Star!17306 (h!73788 (exprs!6802 lt!2502482))))))

(declare-fun bm!636537 () Bool)

(assert (=> bm!636537 (= call!636542 (validRegex!8883 (ite c!1301771 (regOne!35125 (h!73788 (exprs!6802 lt!2502482))) (regOne!35124 (h!73788 (exprs!6802 lt!2502482))))))))

(declare-fun b!7008747 () Bool)

(declare-fun res!2859692 () Bool)

(assert (=> b!7008747 (=> res!2859692 e!4212942)))

(assert (=> b!7008747 (= res!2859692 (not (is-Concat!26151 (h!73788 (exprs!6802 lt!2502482)))))))

(declare-fun e!4212941 () Bool)

(assert (=> b!7008747 (= e!4212941 e!4212942)))

(declare-fun b!7008748 () Bool)

(assert (=> b!7008748 (= e!4212943 e!4212941)))

(assert (=> b!7008748 (= c!1301771 (is-Union!17306 (h!73788 (exprs!6802 lt!2502482))))))

(declare-fun b!7008749 () Bool)

(assert (=> b!7008749 (= e!4212943 e!4212939)))

(declare-fun res!2859693 () Bool)

(assert (=> b!7008749 (= res!2859693 (not (nullable!7066 (reg!17635 (h!73788 (exprs!6802 lt!2502482))))))))

(assert (=> b!7008749 (=> (not res!2859693) (not e!4212939))))

(declare-fun d!2184881 () Bool)

(declare-fun res!2859690 () Bool)

(assert (=> d!2184881 (=> res!2859690 e!4212940)))

(assert (=> d!2184881 (= res!2859690 (is-ElementMatch!17306 (h!73788 (exprs!6802 lt!2502482))))))

(assert (=> d!2184881 (= (validRegex!8883 (h!73788 (exprs!6802 lt!2502482))) e!4212940)))

(declare-fun b!7008745 () Bool)

(declare-fun e!4212945 () Bool)

(assert (=> b!7008745 (= e!4212945 call!636540)))

(declare-fun b!7008750 () Bool)

(declare-fun res!2859691 () Bool)

(assert (=> b!7008750 (=> (not res!2859691) (not e!4212945))))

(assert (=> b!7008750 (= res!2859691 call!636542)))

(assert (=> b!7008750 (= e!4212941 e!4212945)))

(declare-fun b!7008751 () Bool)

(assert (=> b!7008751 (= e!4212944 call!636540)))

(assert (= (and d!2184881 (not res!2859690)) b!7008746))

(assert (= (and b!7008746 c!1301772) b!7008749))

(assert (= (and b!7008746 (not c!1301772)) b!7008748))

(assert (= (and b!7008749 res!2859693) b!7008743))

(assert (= (and b!7008748 c!1301771) b!7008750))

(assert (= (and b!7008748 (not c!1301771)) b!7008747))

(assert (= (and b!7008750 res!2859691) b!7008745))

(assert (= (and b!7008747 (not res!2859692)) b!7008744))

(assert (= (and b!7008744 res!2859689) b!7008751))

(assert (= (or b!7008745 b!7008751) bm!636536))

(assert (= (or b!7008750 b!7008744) bm!636537))

(assert (= (or b!7008743 bm!636536) bm!636535))

(declare-fun m!7706236 () Bool)

(assert (=> bm!636535 m!7706236))

(declare-fun m!7706238 () Bool)

(assert (=> bm!636537 m!7706238))

(declare-fun m!7706240 () Bool)

(assert (=> b!7008749 m!7706240))

(assert (=> b!7008594 d!2184881))

(declare-fun bs!1865918 () Bool)

(declare-fun d!2184883 () Bool)

(assert (= bs!1865918 (and d!2184883 b!7008599)))

(declare-fun lambda!407855 () Int)

(assert (=> bs!1865918 (= lambda!407855 lambda!407799)))

(declare-fun bs!1865919 () Bool)

(assert (= bs!1865919 (and d!2184883 d!2184873)))

(assert (=> bs!1865919 (= lambda!407855 lambda!407848)))

(assert (=> d!2184883 true))

(assert (=> d!2184883 (= (appendTo!427 (derivationStepZipperDown!2024 (h!73788 (exprs!6802 lt!2502482)) lt!2502483 (h!73787 s!7408)) ct2!306) (map!15600 (derivationStepZipperDown!2024 (h!73788 (exprs!6802 lt!2502482)) lt!2502483 (h!73787 s!7408)) lambda!407855))))

(declare-fun bs!1865920 () Bool)

(assert (= bs!1865920 d!2184883))

(assert (=> bs!1865920 m!7706038))

(declare-fun m!7706242 () Bool)

(assert (=> bs!1865920 m!7706242))

(assert (=> b!7008594 d!2184883))

(assert (=> b!7008603 d!2184865))

(assert (=> b!7008603 d!2184867))

(assert (=> b!7008604 d!2184865))

(assert (=> b!7008610 d!2184867))

(declare-fun d!2184885 () Bool)

(declare-fun c!1301773 () Bool)

(assert (=> d!2184885 (= c!1301773 (isEmpty!39330 (t!381218 s!7408)))))

(declare-fun e!4212946 () Bool)

(assert (=> d!2184885 (= (matchZipper!2846 lt!2502486 (t!381218 s!7408)) e!4212946)))

(declare-fun b!7008752 () Bool)

(assert (=> b!7008752 (= e!4212946 (nullableZipper!2482 lt!2502486))))

(declare-fun b!7008753 () Bool)

(assert (=> b!7008753 (= e!4212946 (matchZipper!2846 (derivationStepZipper!2786 lt!2502486 (head!14168 (t!381218 s!7408))) (tail!13377 (t!381218 s!7408))))))

(assert (= (and d!2184885 c!1301773) b!7008752))

(assert (= (and d!2184885 (not c!1301773)) b!7008753))

(assert (=> d!2184885 m!7706178))

(declare-fun m!7706244 () Bool)

(assert (=> b!7008752 m!7706244))

(assert (=> b!7008753 m!7706182))

(assert (=> b!7008753 m!7706182))

(declare-fun m!7706246 () Bool)

(assert (=> b!7008753 m!7706246))

(assert (=> b!7008753 m!7706186))

(assert (=> b!7008753 m!7706246))

(assert (=> b!7008753 m!7706186))

(declare-fun m!7706248 () Bool)

(assert (=> b!7008753 m!7706248))

(assert (=> b!7008610 d!2184885))

(declare-fun d!2184887 () Bool)

(declare-fun c!1301774 () Bool)

(assert (=> d!2184887 (= c!1301774 (isEmpty!39330 (t!381218 s!7408)))))

(declare-fun e!4212947 () Bool)

(assert (=> d!2184887 (= (matchZipper!2846 lt!2502495 (t!381218 s!7408)) e!4212947)))

(declare-fun b!7008754 () Bool)

(assert (=> b!7008754 (= e!4212947 (nullableZipper!2482 lt!2502495))))

(declare-fun b!7008755 () Bool)

(assert (=> b!7008755 (= e!4212947 (matchZipper!2846 (derivationStepZipper!2786 lt!2502495 (head!14168 (t!381218 s!7408))) (tail!13377 (t!381218 s!7408))))))

(assert (= (and d!2184887 c!1301774) b!7008754))

(assert (= (and d!2184887 (not c!1301774)) b!7008755))

(assert (=> d!2184887 m!7706178))

(declare-fun m!7706250 () Bool)

(assert (=> b!7008754 m!7706250))

(assert (=> b!7008755 m!7706182))

(assert (=> b!7008755 m!7706182))

(declare-fun m!7706252 () Bool)

(assert (=> b!7008755 m!7706252))

(assert (=> b!7008755 m!7706186))

(assert (=> b!7008755 m!7706252))

(assert (=> b!7008755 m!7706186))

(declare-fun m!7706254 () Bool)

(assert (=> b!7008755 m!7706254))

(assert (=> b!7008610 d!2184887))

(declare-fun d!2184889 () Bool)

(declare-fun c!1301775 () Bool)

(assert (=> d!2184889 (= c!1301775 (isEmpty!39330 (t!381218 s!7408)))))

(declare-fun e!4212948 () Bool)

(assert (=> d!2184889 (= (matchZipper!2846 lt!2502492 (t!381218 s!7408)) e!4212948)))

(declare-fun b!7008756 () Bool)

(assert (=> b!7008756 (= e!4212948 (nullableZipper!2482 lt!2502492))))

(declare-fun b!7008757 () Bool)

(assert (=> b!7008757 (= e!4212948 (matchZipper!2846 (derivationStepZipper!2786 lt!2502492 (head!14168 (t!381218 s!7408))) (tail!13377 (t!381218 s!7408))))))

(assert (= (and d!2184889 c!1301775) b!7008756))

(assert (= (and d!2184889 (not c!1301775)) b!7008757))

(assert (=> d!2184889 m!7706178))

(declare-fun m!7706256 () Bool)

(assert (=> b!7008756 m!7706256))

(assert (=> b!7008757 m!7706182))

(assert (=> b!7008757 m!7706182))

(declare-fun m!7706258 () Bool)

(assert (=> b!7008757 m!7706258))

(assert (=> b!7008757 m!7706186))

(assert (=> b!7008757 m!7706258))

(assert (=> b!7008757 m!7706186))

(declare-fun m!7706260 () Bool)

(assert (=> b!7008757 m!7706260))

(assert (=> b!7008610 d!2184889))

(declare-fun e!4212951 () Bool)

(declare-fun d!2184891 () Bool)

(assert (=> d!2184891 (= (matchZipper!2846 (set.union lt!2502492 lt!2502489) (t!381218 s!7408)) e!4212951)))

(declare-fun res!2859696 () Bool)

(assert (=> d!2184891 (=> res!2859696 e!4212951)))

(assert (=> d!2184891 (= res!2859696 (matchZipper!2846 lt!2502492 (t!381218 s!7408)))))

(declare-fun lt!2502619 () Unit!161290)

(declare-fun choose!52659 ((Set Context!12604) (Set Context!12604) List!67463) Unit!161290)

(assert (=> d!2184891 (= lt!2502619 (choose!52659 lt!2502492 lt!2502489 (t!381218 s!7408)))))

(assert (=> d!2184891 (= (lemmaZipperConcatMatchesSameAsBothZippers!1479 lt!2502492 lt!2502489 (t!381218 s!7408)) lt!2502619)))

(declare-fun b!7008760 () Bool)

(assert (=> b!7008760 (= e!4212951 (matchZipper!2846 lt!2502489 (t!381218 s!7408)))))

(assert (= (and d!2184891 (not res!2859696)) b!7008760))

(declare-fun m!7706262 () Bool)

(assert (=> d!2184891 m!7706262))

(assert (=> d!2184891 m!7706066))

(declare-fun m!7706264 () Bool)

(assert (=> d!2184891 m!7706264))

(assert (=> b!7008760 m!7706072))

(assert (=> b!7008610 d!2184891))

(declare-fun bs!1865921 () Bool)

(declare-fun d!2184893 () Bool)

(assert (= bs!1865921 (and d!2184893 b!7008600)))

(declare-fun lambda!407858 () Int)

(assert (=> bs!1865921 (not (= lambda!407858 lambda!407798))))

(assert (=> d!2184893 true))

(declare-fun order!28019 () Int)

(declare-fun dynLambda!27082 (Int Int) Int)

(assert (=> d!2184893 (< (dynLambda!27082 order!28019 lambda!407798) (dynLambda!27082 order!28019 lambda!407858))))

(declare-fun forall!16225 (List!67465 Int) Bool)

(assert (=> d!2184893 (= (exists!3145 lt!2502480 lambda!407798) (not (forall!16225 lt!2502480 lambda!407858)))))

(declare-fun bs!1865922 () Bool)

(assert (= bs!1865922 d!2184893))

(declare-fun m!7706266 () Bool)

(assert (=> bs!1865922 m!7706266))

(assert (=> b!7008600 d!2184893))

(declare-fun d!2184895 () Bool)

(declare-fun e!4212954 () Bool)

(assert (=> d!2184895 e!4212954))

(declare-fun res!2859699 () Bool)

(assert (=> d!2184895 (=> (not res!2859699) (not e!4212954))))

(declare-fun lt!2502622 () List!67465)

(declare-fun noDuplicate!2561 (List!67465) Bool)

(assert (=> d!2184895 (= res!2859699 (noDuplicate!2561 lt!2502622))))

(declare-fun choose!52660 ((Set Context!12604)) List!67465)

(assert (=> d!2184895 (= lt!2502622 (choose!52660 lt!2502478))))

(assert (=> d!2184895 (= (toList!10666 lt!2502478) lt!2502622)))

(declare-fun b!7008765 () Bool)

(declare-fun content!13361 (List!67465) (Set Context!12604))

(assert (=> b!7008765 (= e!4212954 (= (content!13361 lt!2502622) lt!2502478))))

(assert (= (and d!2184895 res!2859699) b!7008765))

(declare-fun m!7706268 () Bool)

(assert (=> d!2184895 m!7706268))

(declare-fun m!7706270 () Bool)

(assert (=> d!2184895 m!7706270))

(declare-fun m!7706272 () Bool)

(assert (=> b!7008765 m!7706272))

(assert (=> b!7008600 d!2184895))

(declare-fun bs!1865923 () Bool)

(declare-fun d!2184897 () Bool)

(assert (= bs!1865923 (and d!2184897 b!7008600)))

(declare-fun lambda!407861 () Int)

(assert (=> bs!1865923 (= lambda!407861 lambda!407798)))

(declare-fun bs!1865924 () Bool)

(assert (= bs!1865924 (and d!2184897 d!2184893)))

(assert (=> bs!1865924 (not (= lambda!407861 lambda!407858))))

(assert (=> d!2184897 true))

(assert (=> d!2184897 (exists!3145 lt!2502480 lambda!407861)))

(declare-fun lt!2502625 () Unit!161290)

(declare-fun choose!52661 (List!67465 List!67463) Unit!161290)

(assert (=> d!2184897 (= lt!2502625 (choose!52661 lt!2502480 s!7408))))

(assert (=> d!2184897 (matchZipper!2846 (content!13361 lt!2502480) s!7408)))

(assert (=> d!2184897 (= (lemmaZipperMatchesExistsMatchingContext!275 lt!2502480 s!7408) lt!2502625)))

(declare-fun bs!1865925 () Bool)

(assert (= bs!1865925 d!2184897))

(declare-fun m!7706274 () Bool)

(assert (=> bs!1865925 m!7706274))

(declare-fun m!7706276 () Bool)

(assert (=> bs!1865925 m!7706276))

(declare-fun m!7706278 () Bool)

(assert (=> bs!1865925 m!7706278))

(assert (=> bs!1865925 m!7706278))

(declare-fun m!7706280 () Bool)

(assert (=> bs!1865925 m!7706280))

(assert (=> b!7008600 d!2184897))

(declare-fun d!2184899 () Bool)

(declare-fun c!1301778 () Bool)

(assert (=> d!2184899 (= c!1301778 (isEmpty!39330 s!7408))))

(declare-fun e!4212955 () Bool)

(assert (=> d!2184899 (= (matchZipper!2846 lt!2502493 s!7408) e!4212955)))

(declare-fun b!7008766 () Bool)

(assert (=> b!7008766 (= e!4212955 (nullableZipper!2482 lt!2502493))))

(declare-fun b!7008767 () Bool)

(assert (=> b!7008767 (= e!4212955 (matchZipper!2846 (derivationStepZipper!2786 lt!2502493 (head!14168 s!7408)) (tail!13377 s!7408)))))

(assert (= (and d!2184899 c!1301778) b!7008766))

(assert (= (and d!2184899 (not c!1301778)) b!7008767))

(assert (=> d!2184899 m!7706202))

(declare-fun m!7706282 () Bool)

(assert (=> b!7008766 m!7706282))

(assert (=> b!7008767 m!7706206))

(assert (=> b!7008767 m!7706206))

(declare-fun m!7706284 () Bool)

(assert (=> b!7008767 m!7706284))

(assert (=> b!7008767 m!7706210))

(assert (=> b!7008767 m!7706284))

(assert (=> b!7008767 m!7706210))

(declare-fun m!7706286 () Bool)

(assert (=> b!7008767 m!7706286))

(assert (=> b!7008600 d!2184899))

(declare-fun d!2184901 () Bool)

(declare-fun e!4212958 () Bool)

(assert (=> d!2184901 e!4212958))

(declare-fun res!2859702 () Bool)

(assert (=> d!2184901 (=> (not res!2859702) (not e!4212958))))

(declare-fun lt!2502628 () Context!12604)

(declare-fun dynLambda!27083 (Int Context!12604) Bool)

(assert (=> d!2184901 (= res!2859702 (dynLambda!27083 lambda!407798 lt!2502628))))

(declare-fun getWitness!1245 (List!67465 Int) Context!12604)

(assert (=> d!2184901 (= lt!2502628 (getWitness!1245 (toList!10666 lt!2502478) lambda!407798))))

(declare-fun exists!3147 ((Set Context!12604) Int) Bool)

(assert (=> d!2184901 (exists!3147 lt!2502478 lambda!407798)))

(assert (=> d!2184901 (= (getWitness!1243 lt!2502478 lambda!407798) lt!2502628)))

(declare-fun b!7008770 () Bool)

(assert (=> b!7008770 (= e!4212958 (set.member lt!2502628 lt!2502478))))

(assert (= (and d!2184901 res!2859702) b!7008770))

(declare-fun b_lambda!264283 () Bool)

(assert (=> (not b_lambda!264283) (not d!2184901)))

(declare-fun m!7706288 () Bool)

(assert (=> d!2184901 m!7706288))

(assert (=> d!2184901 m!7706054))

(assert (=> d!2184901 m!7706054))

(declare-fun m!7706290 () Bool)

(assert (=> d!2184901 m!7706290))

(declare-fun m!7706292 () Bool)

(assert (=> d!2184901 m!7706292))

(declare-fun m!7706294 () Bool)

(assert (=> b!7008770 m!7706294))

(assert (=> b!7008600 d!2184901))

(declare-fun b!7008782 () Bool)

(declare-fun e!4212963 () Bool)

(declare-fun lt!2502631 () List!67464)

(assert (=> b!7008782 (= e!4212963 (or (not (= (exprs!6802 ct2!306) Nil!67340)) (= lt!2502631 lt!2502499)))))

(declare-fun d!2184903 () Bool)

(assert (=> d!2184903 e!4212963))

(declare-fun res!2859708 () Bool)

(assert (=> d!2184903 (=> (not res!2859708) (not e!4212963))))

(declare-fun content!13362 (List!67464) (Set Regex!17306))

(assert (=> d!2184903 (= res!2859708 (= (content!13362 lt!2502631) (set.union (content!13362 lt!2502499) (content!13362 (exprs!6802 ct2!306)))))))

(declare-fun e!4212964 () List!67464)

(assert (=> d!2184903 (= lt!2502631 e!4212964)))

(declare-fun c!1301781 () Bool)

(assert (=> d!2184903 (= c!1301781 (is-Nil!67340 lt!2502499))))

(assert (=> d!2184903 (= (++!15297 lt!2502499 (exprs!6802 ct2!306)) lt!2502631)))

(declare-fun b!7008780 () Bool)

(assert (=> b!7008780 (= e!4212964 (Cons!67340 (h!73788 lt!2502499) (++!15297 (t!381219 lt!2502499) (exprs!6802 ct2!306))))))

(declare-fun b!7008779 () Bool)

(assert (=> b!7008779 (= e!4212964 (exprs!6802 ct2!306))))

(declare-fun b!7008781 () Bool)

(declare-fun res!2859707 () Bool)

(assert (=> b!7008781 (=> (not res!2859707) (not e!4212963))))

(declare-fun size!40966 (List!67464) Int)

(assert (=> b!7008781 (= res!2859707 (= (size!40966 lt!2502631) (+ (size!40966 lt!2502499) (size!40966 (exprs!6802 ct2!306)))))))

(assert (= (and d!2184903 c!1301781) b!7008779))

(assert (= (and d!2184903 (not c!1301781)) b!7008780))

(assert (= (and d!2184903 res!2859708) b!7008781))

(assert (= (and b!7008781 res!2859707) b!7008782))

(declare-fun m!7706296 () Bool)

(assert (=> d!2184903 m!7706296))

(declare-fun m!7706298 () Bool)

(assert (=> d!2184903 m!7706298))

(declare-fun m!7706300 () Bool)

(assert (=> d!2184903 m!7706300))

(declare-fun m!7706302 () Bool)

(assert (=> b!7008780 m!7706302))

(declare-fun m!7706304 () Bool)

(assert (=> b!7008781 m!7706304))

(declare-fun m!7706306 () Bool)

(assert (=> b!7008781 m!7706306))

(declare-fun m!7706308 () Bool)

(assert (=> b!7008781 m!7706308))

(assert (=> b!7008601 d!2184903))

(declare-fun d!2184905 () Bool)

(declare-fun c!1301787 () Bool)

(declare-fun e!4212971 () Bool)

(assert (=> d!2184905 (= c!1301787 e!4212971)))

(declare-fun res!2859711 () Bool)

(assert (=> d!2184905 (=> (not res!2859711) (not e!4212971))))

(assert (=> d!2184905 (= res!2859711 (is-Cons!67340 (exprs!6802 lt!2502476)))))

(declare-fun e!4212972 () (Set Context!12604))

(assert (=> d!2184905 (= (derivationStepZipperUp!1956 lt!2502476 (h!73787 s!7408)) e!4212972)))

(declare-fun b!7008793 () Bool)

(declare-fun e!4212973 () (Set Context!12604))

(assert (=> b!7008793 (= e!4212972 e!4212973)))

(declare-fun c!1301786 () Bool)

(assert (=> b!7008793 (= c!1301786 (is-Cons!67340 (exprs!6802 lt!2502476)))))

(declare-fun b!7008794 () Bool)

(assert (=> b!7008794 (= e!4212971 (nullable!7066 (h!73788 (exprs!6802 lt!2502476))))))

(declare-fun bm!636540 () Bool)

(declare-fun call!636545 () (Set Context!12604))

(assert (=> bm!636540 (= call!636545 (derivationStepZipperDown!2024 (h!73788 (exprs!6802 lt!2502476)) (Context!12605 (t!381219 (exprs!6802 lt!2502476))) (h!73787 s!7408)))))

(declare-fun b!7008795 () Bool)

(assert (=> b!7008795 (= e!4212973 (as set.empty (Set Context!12604)))))

(declare-fun b!7008796 () Bool)

(assert (=> b!7008796 (= e!4212973 call!636545)))

(declare-fun b!7008797 () Bool)

(assert (=> b!7008797 (= e!4212972 (set.union call!636545 (derivationStepZipperUp!1956 (Context!12605 (t!381219 (exprs!6802 lt!2502476))) (h!73787 s!7408))))))

(assert (= (and d!2184905 res!2859711) b!7008794))

(assert (= (and d!2184905 c!1301787) b!7008797))

(assert (= (and d!2184905 (not c!1301787)) b!7008793))

(assert (= (and b!7008793 c!1301786) b!7008796))

(assert (= (and b!7008793 (not c!1301786)) b!7008795))

(assert (= (or b!7008797 b!7008796) bm!636540))

(declare-fun m!7706310 () Bool)

(assert (=> b!7008794 m!7706310))

(declare-fun m!7706312 () Bool)

(assert (=> bm!636540 m!7706312))

(declare-fun m!7706314 () Bool)

(assert (=> b!7008797 m!7706314))

(assert (=> b!7008601 d!2184905))

(assert (=> b!7008601 d!2184867))

(declare-fun b!7008798 () Bool)

(declare-fun c!1301790 () Bool)

(declare-fun e!4212974 () Bool)

(assert (=> b!7008798 (= c!1301790 e!4212974)))

(declare-fun res!2859712 () Bool)

(assert (=> b!7008798 (=> (not res!2859712) (not e!4212974))))

(assert (=> b!7008798 (= res!2859712 (is-Concat!26151 (h!73788 (exprs!6802 lt!2502482))))))

(declare-fun e!4212977 () (Set Context!12604))

(declare-fun e!4212979 () (Set Context!12604))

(assert (=> b!7008798 (= e!4212977 e!4212979)))

(declare-fun c!1301789 () Bool)

(declare-fun bm!636541 () Bool)

(declare-fun call!636551 () List!67464)

(assert (=> bm!636541 (= call!636551 ($colon$colon!2524 (exprs!6802 lt!2502476) (ite (or c!1301790 c!1301789) (regTwo!35124 (h!73788 (exprs!6802 lt!2502482))) (h!73788 (exprs!6802 lt!2502482)))))))

(declare-fun b!7008799 () Bool)

(declare-fun c!1301792 () Bool)

(assert (=> b!7008799 (= c!1301792 (is-Star!17306 (h!73788 (exprs!6802 lt!2502482))))))

(declare-fun e!4212978 () (Set Context!12604))

(declare-fun e!4212976 () (Set Context!12604))

(assert (=> b!7008799 (= e!4212978 e!4212976)))

(declare-fun b!7008800 () Bool)

(declare-fun call!636547 () (Set Context!12604))

(assert (=> b!7008800 (= e!4212976 call!636547)))

(declare-fun c!1301791 () Bool)

(declare-fun bm!636542 () Bool)

(declare-fun call!636549 () (Set Context!12604))

(declare-fun call!636550 () List!67464)

(assert (=> bm!636542 (= call!636549 (derivationStepZipperDown!2024 (ite c!1301791 (regOne!35125 (h!73788 (exprs!6802 lt!2502482))) (ite c!1301790 (regTwo!35124 (h!73788 (exprs!6802 lt!2502482))) (ite c!1301789 (regOne!35124 (h!73788 (exprs!6802 lt!2502482))) (reg!17635 (h!73788 (exprs!6802 lt!2502482)))))) (ite (or c!1301791 c!1301790) lt!2502476 (Context!12605 call!636550)) (h!73787 s!7408)))))

(declare-fun b!7008801 () Bool)

(declare-fun call!636548 () (Set Context!12604))

(assert (=> b!7008801 (= e!4212977 (set.union call!636549 call!636548))))

(declare-fun bm!636543 () Bool)

(assert (=> bm!636543 (= call!636548 (derivationStepZipperDown!2024 (ite c!1301791 (regTwo!35125 (h!73788 (exprs!6802 lt!2502482))) (regOne!35124 (h!73788 (exprs!6802 lt!2502482)))) (ite c!1301791 lt!2502476 (Context!12605 call!636551)) (h!73787 s!7408)))))

(declare-fun b!7008802 () Bool)

(assert (=> b!7008802 (= e!4212976 (as set.empty (Set Context!12604)))))

(declare-fun bm!636544 () Bool)

(declare-fun call!636546 () (Set Context!12604))

(assert (=> bm!636544 (= call!636546 call!636549)))

(declare-fun b!7008803 () Bool)

(declare-fun e!4212975 () (Set Context!12604))

(assert (=> b!7008803 (= e!4212975 e!4212977)))

(assert (=> b!7008803 (= c!1301791 (is-Union!17306 (h!73788 (exprs!6802 lt!2502482))))))

(declare-fun b!7008804 () Bool)

(assert (=> b!7008804 (= e!4212978 call!636547)))

(declare-fun b!7008805 () Bool)

(assert (=> b!7008805 (= e!4212974 (nullable!7066 (regOne!35124 (h!73788 (exprs!6802 lt!2502482)))))))

(declare-fun b!7008806 () Bool)

(assert (=> b!7008806 (= e!4212979 (set.union call!636548 call!636546))))

(declare-fun d!2184907 () Bool)

(declare-fun c!1301788 () Bool)

(assert (=> d!2184907 (= c!1301788 (and (is-ElementMatch!17306 (h!73788 (exprs!6802 lt!2502482))) (= (c!1301736 (h!73788 (exprs!6802 lt!2502482))) (h!73787 s!7408))))))

(assert (=> d!2184907 (= (derivationStepZipperDown!2024 (h!73788 (exprs!6802 lt!2502482)) lt!2502476 (h!73787 s!7408)) e!4212975)))

(declare-fun b!7008807 () Bool)

(assert (=> b!7008807 (= e!4212979 e!4212978)))

(assert (=> b!7008807 (= c!1301789 (is-Concat!26151 (h!73788 (exprs!6802 lt!2502482))))))

(declare-fun b!7008808 () Bool)

(assert (=> b!7008808 (= e!4212975 (set.insert lt!2502476 (as set.empty (Set Context!12604))))))

(declare-fun bm!636545 () Bool)

(assert (=> bm!636545 (= call!636547 call!636546)))

(declare-fun bm!636546 () Bool)

(assert (=> bm!636546 (= call!636550 call!636551)))

(assert (= (and d!2184907 c!1301788) b!7008808))

(assert (= (and d!2184907 (not c!1301788)) b!7008803))

(assert (= (and b!7008803 c!1301791) b!7008801))

(assert (= (and b!7008803 (not c!1301791)) b!7008798))

(assert (= (and b!7008798 res!2859712) b!7008805))

(assert (= (and b!7008798 c!1301790) b!7008806))

(assert (= (and b!7008798 (not c!1301790)) b!7008807))

(assert (= (and b!7008807 c!1301789) b!7008804))

(assert (= (and b!7008807 (not c!1301789)) b!7008799))

(assert (= (and b!7008799 c!1301792) b!7008800))

(assert (= (and b!7008799 (not c!1301792)) b!7008802))

(assert (= (or b!7008804 b!7008800) bm!636546))

(assert (= (or b!7008804 b!7008800) bm!636545))

(assert (= (or b!7008806 bm!636545) bm!636544))

(assert (= (or b!7008806 bm!636546) bm!636541))

(assert (= (or b!7008801 bm!636544) bm!636542))

(assert (= (or b!7008801 b!7008806) bm!636543))

(declare-fun m!7706316 () Bool)

(assert (=> b!7008808 m!7706316))

(declare-fun m!7706318 () Bool)

(assert (=> bm!636542 m!7706318))

(assert (=> b!7008805 m!7706230))

(declare-fun m!7706320 () Bool)

(assert (=> bm!636541 m!7706320))

(declare-fun m!7706322 () Bool)

(assert (=> bm!636543 m!7706322))

(assert (=> b!7008601 d!2184907))

(assert (=> b!7008611 d!2184867))

(declare-fun d!2184909 () Bool)

(declare-fun choose!52662 ((Set Context!12604) Int) (Set Context!12604))

(assert (=> d!2184909 (= (flatMap!2292 lt!2502485 lambda!407801) (choose!52662 lt!2502485 lambda!407801))))

(declare-fun bs!1865926 () Bool)

(assert (= bs!1865926 d!2184909))

(declare-fun m!7706324 () Bool)

(assert (=> bs!1865926 m!7706324))

(assert (=> b!7008602 d!2184909))

(declare-fun d!2184911 () Bool)

(declare-fun c!1301794 () Bool)

(declare-fun e!4212980 () Bool)

(assert (=> d!2184911 (= c!1301794 e!4212980)))

(declare-fun res!2859713 () Bool)

(assert (=> d!2184911 (=> (not res!2859713) (not e!4212980))))

(assert (=> d!2184911 (= res!2859713 (is-Cons!67340 (exprs!6802 lt!2502473)))))

(declare-fun e!4212981 () (Set Context!12604))

(assert (=> d!2184911 (= (derivationStepZipperUp!1956 lt!2502473 (h!73787 s!7408)) e!4212981)))

(declare-fun b!7008809 () Bool)

(declare-fun e!4212982 () (Set Context!12604))

(assert (=> b!7008809 (= e!4212981 e!4212982)))

(declare-fun c!1301793 () Bool)

(assert (=> b!7008809 (= c!1301793 (is-Cons!67340 (exprs!6802 lt!2502473)))))

(declare-fun b!7008810 () Bool)

(assert (=> b!7008810 (= e!4212980 (nullable!7066 (h!73788 (exprs!6802 lt!2502473))))))

(declare-fun bm!636547 () Bool)

(declare-fun call!636552 () (Set Context!12604))

(assert (=> bm!636547 (= call!636552 (derivationStepZipperDown!2024 (h!73788 (exprs!6802 lt!2502473)) (Context!12605 (t!381219 (exprs!6802 lt!2502473))) (h!73787 s!7408)))))

(declare-fun b!7008811 () Bool)

(assert (=> b!7008811 (= e!4212982 (as set.empty (Set Context!12604)))))

(declare-fun b!7008812 () Bool)

(assert (=> b!7008812 (= e!4212982 call!636552)))

(declare-fun b!7008813 () Bool)

(assert (=> b!7008813 (= e!4212981 (set.union call!636552 (derivationStepZipperUp!1956 (Context!12605 (t!381219 (exprs!6802 lt!2502473))) (h!73787 s!7408))))))

(assert (= (and d!2184911 res!2859713) b!7008810))

(assert (= (and d!2184911 c!1301794) b!7008813))

(assert (= (and d!2184911 (not c!1301794)) b!7008809))

(assert (= (and b!7008809 c!1301793) b!7008812))

(assert (= (and b!7008809 (not c!1301793)) b!7008811))

(assert (= (or b!7008813 b!7008812) bm!636547))

(declare-fun m!7706326 () Bool)

(assert (=> b!7008810 m!7706326))

(declare-fun m!7706328 () Bool)

(assert (=> bm!636547 m!7706328))

(declare-fun m!7706330 () Bool)

(assert (=> b!7008813 m!7706330))

(assert (=> b!7008602 d!2184911))

(assert (=> b!7008602 d!2184869))

(declare-fun bs!1865927 () Bool)

(declare-fun d!2184913 () Bool)

(assert (= bs!1865927 (and d!2184913 b!7008602)))

(declare-fun lambda!407864 () Int)

(assert (=> bs!1865927 (= lambda!407864 lambda!407801)))

(assert (=> d!2184913 true))

(assert (=> d!2184913 (= (derivationStepZipper!2786 lt!2502485 (h!73787 s!7408)) (flatMap!2292 lt!2502485 lambda!407864))))

(declare-fun bs!1865928 () Bool)

(assert (= bs!1865928 d!2184913))

(declare-fun m!7706332 () Bool)

(assert (=> bs!1865928 m!7706332))

(assert (=> b!7008602 d!2184913))

(declare-fun d!2184915 () Bool)

(declare-fun dynLambda!27084 (Int Context!12604) (Set Context!12604))

(assert (=> d!2184915 (= (flatMap!2292 lt!2502485 lambda!407801) (dynLambda!27084 lambda!407801 lt!2502473))))

(declare-fun lt!2502634 () Unit!161290)

(declare-fun choose!52663 ((Set Context!12604) Context!12604 Int) Unit!161290)

(assert (=> d!2184915 (= lt!2502634 (choose!52663 lt!2502485 lt!2502473 lambda!407801))))

(assert (=> d!2184915 (= lt!2502485 (set.insert lt!2502473 (as set.empty (Set Context!12604))))))

(assert (=> d!2184915 (= (lemmaFlatMapOnSingletonSet!1807 lt!2502485 lt!2502473 lambda!407801) lt!2502634)))

(declare-fun b_lambda!264285 () Bool)

(assert (=> (not b_lambda!264285) (not d!2184915)))

(declare-fun bs!1865929 () Bool)

(assert (= bs!1865929 d!2184915))

(assert (=> bs!1865929 m!7706086))

(declare-fun m!7706334 () Bool)

(assert (=> bs!1865929 m!7706334))

(declare-fun m!7706336 () Bool)

(assert (=> bs!1865929 m!7706336))

(assert (=> bs!1865929 m!7706104))

(assert (=> b!7008602 d!2184915))

(declare-fun b!7008819 () Bool)

(declare-fun e!4212983 () Bool)

(declare-fun lt!2502635 () List!67464)

(assert (=> b!7008819 (= e!4212983 (or (not (= (exprs!6802 ct2!306) Nil!67340)) (= lt!2502635 (exprs!6802 lt!2502482))))))

(declare-fun d!2184917 () Bool)

(assert (=> d!2184917 e!4212983))

(declare-fun res!2859715 () Bool)

(assert (=> d!2184917 (=> (not res!2859715) (not e!4212983))))

(assert (=> d!2184917 (= res!2859715 (= (content!13362 lt!2502635) (set.union (content!13362 (exprs!6802 lt!2502482)) (content!13362 (exprs!6802 ct2!306)))))))

(declare-fun e!4212984 () List!67464)

(assert (=> d!2184917 (= lt!2502635 e!4212984)))

(declare-fun c!1301797 () Bool)

(assert (=> d!2184917 (= c!1301797 (is-Nil!67340 (exprs!6802 lt!2502482)))))

(assert (=> d!2184917 (= (++!15297 (exprs!6802 lt!2502482) (exprs!6802 ct2!306)) lt!2502635)))

(declare-fun b!7008817 () Bool)

(assert (=> b!7008817 (= e!4212984 (Cons!67340 (h!73788 (exprs!6802 lt!2502482)) (++!15297 (t!381219 (exprs!6802 lt!2502482)) (exprs!6802 ct2!306))))))

(declare-fun b!7008816 () Bool)

(assert (=> b!7008816 (= e!4212984 (exprs!6802 ct2!306))))

(declare-fun b!7008818 () Bool)

(declare-fun res!2859714 () Bool)

(assert (=> b!7008818 (=> (not res!2859714) (not e!4212983))))

(assert (=> b!7008818 (= res!2859714 (= (size!40966 lt!2502635) (+ (size!40966 (exprs!6802 lt!2502482)) (size!40966 (exprs!6802 ct2!306)))))))

(assert (= (and d!2184917 c!1301797) b!7008816))

(assert (= (and d!2184917 (not c!1301797)) b!7008817))

(assert (= (and d!2184917 res!2859715) b!7008818))

(assert (= (and b!7008818 res!2859714) b!7008819))

(declare-fun m!7706338 () Bool)

(assert (=> d!2184917 m!7706338))

(declare-fun m!7706340 () Bool)

(assert (=> d!2184917 m!7706340))

(assert (=> d!2184917 m!7706300))

(declare-fun m!7706342 () Bool)

(assert (=> b!7008817 m!7706342))

(declare-fun m!7706344 () Bool)

(assert (=> b!7008818 m!7706344))

(declare-fun m!7706346 () Bool)

(assert (=> b!7008818 m!7706346))

(assert (=> b!7008818 m!7706308))

(assert (=> b!7008599 d!2184917))

(assert (=> b!7008599 d!2184869))

(declare-fun d!2184919 () Bool)

(declare-fun e!4212987 () Bool)

(assert (=> d!2184919 e!4212987))

(declare-fun res!2859718 () Bool)

(assert (=> d!2184919 (=> (not res!2859718) (not e!4212987))))

(declare-fun lt!2502638 () Context!12604)

(declare-fun dynLambda!27085 (Int Context!12604) Context!12604)

(assert (=> d!2184919 (= res!2859718 (= lt!2502470 (dynLambda!27085 lambda!407799 lt!2502638)))))

(declare-fun choose!52664 ((Set Context!12604) Int Context!12604) Context!12604)

(assert (=> d!2184919 (= lt!2502638 (choose!52664 z1!570 lambda!407799 lt!2502470))))

(assert (=> d!2184919 (set.member lt!2502470 (map!15600 z1!570 lambda!407799))))

(assert (=> d!2184919 (= (mapPost2!161 z1!570 lambda!407799 lt!2502470) lt!2502638)))

(declare-fun b!7008823 () Bool)

(assert (=> b!7008823 (= e!4212987 (set.member lt!2502638 z1!570))))

(assert (= (and d!2184919 res!2859718) b!7008823))

(declare-fun b_lambda!264287 () Bool)

(assert (=> (not b_lambda!264287) (not d!2184919)))

(declare-fun m!7706348 () Bool)

(assert (=> d!2184919 m!7706348))

(declare-fun m!7706350 () Bool)

(assert (=> d!2184919 m!7706350))

(declare-fun m!7706352 () Bool)

(assert (=> d!2184919 m!7706352))

(declare-fun m!7706354 () Bool)

(assert (=> d!2184919 m!7706354))

(declare-fun m!7706356 () Bool)

(assert (=> b!7008823 m!7706356))

(assert (=> b!7008599 d!2184919))

(declare-fun bs!1865930 () Bool)

(declare-fun d!2184923 () Bool)

(assert (= bs!1865930 (and d!2184923 b!7008599)))

(declare-fun lambda!407865 () Int)

(assert (=> bs!1865930 (= lambda!407865 lambda!407800)))

(declare-fun bs!1865931 () Bool)

(assert (= bs!1865931 (and d!2184923 d!2184875)))

(assert (=> bs!1865931 (= lambda!407865 lambda!407851)))

(declare-fun bs!1865932 () Bool)

(assert (= bs!1865932 (and d!2184923 d!2184877)))

(assert (=> bs!1865932 (= lambda!407865 lambda!407854)))

(assert (=> d!2184923 (= (inv!86125 setElem!48302) (forall!16224 (exprs!6802 setElem!48302) lambda!407865))))

(declare-fun bs!1865933 () Bool)

(assert (= bs!1865933 d!2184923))

(declare-fun m!7706358 () Bool)

(assert (=> bs!1865933 m!7706358))

(assert (=> setNonEmpty!48302 d!2184923))

(declare-fun d!2184925 () Bool)

(declare-fun nullableFct!2677 (Regex!17306) Bool)

(assert (=> d!2184925 (= (nullable!7066 (h!73788 (exprs!6802 lt!2502482))) (nullableFct!2677 (h!73788 (exprs!6802 lt!2502482))))))

(declare-fun bs!1865934 () Bool)

(assert (= bs!1865934 d!2184925))

(declare-fun m!7706360 () Bool)

(assert (=> bs!1865934 m!7706360))

(assert (=> b!7008609 d!2184925))

(declare-fun d!2184927 () Bool)

(assert (=> d!2184927 (= (tail!13375 (exprs!6802 lt!2502482)) (t!381219 (exprs!6802 lt!2502482)))))

(assert (=> b!7008609 d!2184927))

(declare-fun b!7008828 () Bool)

(declare-fun e!4212990 () Bool)

(declare-fun tp!1932127 () Bool)

(declare-fun tp!1932128 () Bool)

(assert (=> b!7008828 (= e!4212990 (and tp!1932127 tp!1932128))))

(assert (=> b!7008592 (= tp!1932108 e!4212990)))

(assert (= (and b!7008592 (is-Cons!67340 (exprs!6802 setElem!48302))) b!7008828))

(declare-fun b!7008829 () Bool)

(declare-fun e!4212991 () Bool)

(declare-fun tp!1932129 () Bool)

(declare-fun tp!1932130 () Bool)

(assert (=> b!7008829 (= e!4212991 (and tp!1932129 tp!1932130))))

(assert (=> b!7008608 (= tp!1932109 e!4212991)))

(assert (= (and b!7008608 (is-Cons!67340 (exprs!6802 ct2!306))) b!7008829))

(declare-fun condSetEmpty!48308 () Bool)

(assert (=> setNonEmpty!48302 (= condSetEmpty!48308 (= setRest!48302 (as set.empty (Set Context!12604))))))

(declare-fun setRes!48308 () Bool)

(assert (=> setNonEmpty!48302 (= tp!1932110 setRes!48308)))

(declare-fun setIsEmpty!48308 () Bool)

(assert (=> setIsEmpty!48308 setRes!48308))

(declare-fun setNonEmpty!48308 () Bool)

(declare-fun tp!1932135 () Bool)

(declare-fun setElem!48308 () Context!12604)

(declare-fun e!4212994 () Bool)

(assert (=> setNonEmpty!48308 (= setRes!48308 (and tp!1932135 (inv!86125 setElem!48308) e!4212994))))

(declare-fun setRest!48308 () (Set Context!12604))

(assert (=> setNonEmpty!48308 (= setRest!48302 (set.union (set.insert setElem!48308 (as set.empty (Set Context!12604))) setRest!48308))))

(declare-fun b!7008834 () Bool)

(declare-fun tp!1932136 () Bool)

(assert (=> b!7008834 (= e!4212994 tp!1932136)))

(assert (= (and setNonEmpty!48302 condSetEmpty!48308) setIsEmpty!48308))

(assert (= (and setNonEmpty!48302 (not condSetEmpty!48308)) setNonEmpty!48308))

(assert (= setNonEmpty!48308 b!7008834))

(declare-fun m!7706362 () Bool)

(assert (=> setNonEmpty!48308 m!7706362))

(declare-fun b!7008839 () Bool)

(declare-fun e!4212997 () Bool)

(declare-fun tp!1932139 () Bool)

(assert (=> b!7008839 (= e!4212997 (and tp_is_empty!43837 tp!1932139))))

(assert (=> b!7008595 (= tp!1932107 e!4212997)))

(assert (= (and b!7008595 (is-Cons!67339 (t!381218 s!7408))) b!7008839))

(declare-fun b_lambda!264289 () Bool)

(assert (= b_lambda!264283 (or b!7008600 b_lambda!264289)))

(declare-fun bs!1865935 () Bool)

(declare-fun d!2184929 () Bool)

(assert (= bs!1865935 (and d!2184929 b!7008600)))

(assert (=> bs!1865935 (= (dynLambda!27083 lambda!407798 lt!2502628) (matchZipper!2846 (set.insert lt!2502628 (as set.empty (Set Context!12604))) s!7408))))

(declare-fun m!7706364 () Bool)

(assert (=> bs!1865935 m!7706364))

(assert (=> bs!1865935 m!7706364))

(declare-fun m!7706366 () Bool)

(assert (=> bs!1865935 m!7706366))

(assert (=> d!2184901 d!2184929))

(declare-fun b_lambda!264291 () Bool)

(assert (= b_lambda!264287 (or b!7008599 b_lambda!264291)))

(declare-fun bs!1865936 () Bool)

(declare-fun d!2184931 () Bool)

(assert (= bs!1865936 (and d!2184931 b!7008599)))

(declare-fun lt!2502641 () Unit!161290)

(assert (=> bs!1865936 (= lt!2502641 (lemmaConcatPreservesForall!642 (exprs!6802 lt!2502638) (exprs!6802 ct2!306) lambda!407800))))

(assert (=> bs!1865936 (= (dynLambda!27085 lambda!407799 lt!2502638) (Context!12605 (++!15297 (exprs!6802 lt!2502638) (exprs!6802 ct2!306))))))

(declare-fun m!7706368 () Bool)

(assert (=> bs!1865936 m!7706368))

(declare-fun m!7706370 () Bool)

(assert (=> bs!1865936 m!7706370))

(assert (=> d!2184919 d!2184931))

(declare-fun b_lambda!264293 () Bool)

(assert (= b_lambda!264285 (or b!7008602 b_lambda!264293)))

(declare-fun bs!1865937 () Bool)

(declare-fun d!2184933 () Bool)

(assert (= bs!1865937 (and d!2184933 b!7008602)))

(assert (=> bs!1865937 (= (dynLambda!27084 lambda!407801 lt!2502473) (derivationStepZipperUp!1956 lt!2502473 (h!73787 s!7408)))))

(assert (=> bs!1865937 m!7706084))

(assert (=> d!2184915 d!2184933))

(push 1)

(assert (not b!7008818))

(assert (not b!7008794))

(assert (not b!7008839))

(assert (not b!7008691))

(assert (not bs!1865936))

(assert (not bm!636524))

(assert (not b!7008817))

(assert (not d!2184889))

(assert (not bm!636542))

(assert (not b!7008828))

(assert (not b_lambda!264289))

(assert (not b!7008688))

(assert (not b!7008754))

(assert (not b!7008760))

(assert (not b!7008689))

(assert (not d!2184873))

(assert (not d!2184867))

(assert (not b!7008690))

(assert (not b!7008753))

(assert (not d!2184903))

(assert (not d!2184875))

(assert (not d!2184885))

(assert (not b!7008749))

(assert (not d!2184909))

(assert (not b_lambda!264291))

(assert (not b!7008834))

(assert (not d!2184897))

(assert tp_is_empty!43837)

(assert (not d!2184883))

(assert (not bm!636543))

(assert (not d!2184915))

(assert (not b!7008752))

(assert (not d!2184899))

(assert (not b!7008829))

(assert (not bs!1865935))

(assert (not b!7008780))

(assert (not d!2184877))

(assert (not bm!636540))

(assert (not b!7008797))

(assert (not d!2184887))

(assert (not d!2184871))

(assert (not bs!1865937))

(assert (not b!7008756))

(assert (not b!7008805))

(assert (not b_lambda!264293))

(assert (not d!2184923))

(assert (not b!7008765))

(assert (not b!7008810))

(assert (not bm!636541))

(assert (not b!7008767))

(assert (not b!7008757))

(assert (not d!2184891))

(assert (not d!2184917))

(assert (not bm!636535))

(assert (not bm!636523))

(assert (not b!7008781))

(assert (not d!2184919))

(assert (not d!2184913))

(assert (not d!2184895))

(assert (not b!7008755))

(assert (not d!2184893))

(assert (not bm!636537))

(assert (not d!2184869))

(assert (not d!2184925))

(assert (not bm!636547))

(assert (not d!2184901))

(assert (not b!7008721))

(assert (not setNonEmpty!48308))

(assert (not bm!636525))

(assert (not d!2184865))

(assert (not b!7008813))

(assert (not b!7008766))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

