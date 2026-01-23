; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!680524 () Bool)

(assert start!680524)

(declare-fun b!7037639 () Bool)

(assert (=> b!7037639 true))

(declare-fun b!7037637 () Bool)

(assert (=> b!7037637 true))

(declare-fun b!7037649 () Bool)

(assert (=> b!7037649 true))

(declare-fun b!7037624 () Bool)

(declare-fun res!2872827 () Bool)

(declare-fun e!4230734 () Bool)

(assert (=> b!7037624 (=> res!2872827 e!4230734)))

(declare-datatypes ((C!35218 0))(
  ( (C!35219 (val!27311 Int)) )
))
(declare-datatypes ((Regex!17474 0))(
  ( (ElementMatch!17474 (c!1309630 C!35218)) (Concat!26319 (regOne!35460 Regex!17474) (regTwo!35460 Regex!17474)) (EmptyExpr!17474) (Star!17474 (reg!17803 Regex!17474)) (EmptyLang!17474) (Union!17474 (regOne!35461 Regex!17474) (regTwo!35461 Regex!17474)) )
))
(declare-datatypes ((List!67950 0))(
  ( (Nil!67826) (Cons!67826 (h!74274 Regex!17474) (t!381721 List!67950)) )
))
(declare-datatypes ((Context!12940 0))(
  ( (Context!12941 (exprs!6970 List!67950)) )
))
(declare-fun lt!2521434 () Context!12940)

(declare-fun isEmpty!39569 (List!67950) Bool)

(assert (=> b!7037624 (= res!2872827 (isEmpty!39569 (exprs!6970 lt!2521434)))))

(declare-fun b!7037625 () Bool)

(declare-fun e!4230733 () Bool)

(declare-fun e!4230740 () Bool)

(assert (=> b!7037625 (= e!4230733 e!4230740)))

(declare-fun res!2872805 () Bool)

(assert (=> b!7037625 (=> res!2872805 e!4230740)))

(declare-fun lt!2521451 () Int)

(declare-fun lt!2521418 () Context!12940)

(declare-fun contextDepthTotal!509 (Context!12940) Int)

(assert (=> b!7037625 (= res!2872805 (<= lt!2521451 (contextDepthTotal!509 lt!2521418)))))

(declare-fun lt!2521436 () Int)

(assert (=> b!7037625 (<= lt!2521451 lt!2521436)))

(declare-datatypes ((List!67951 0))(
  ( (Nil!67827) (Cons!67827 (h!74275 Context!12940) (t!381722 List!67951)) )
))
(declare-fun lt!2521426 () List!67951)

(declare-fun zipperDepthTotal!537 (List!67951) Int)

(assert (=> b!7037625 (= lt!2521436 (zipperDepthTotal!537 lt!2521426))))

(assert (=> b!7037625 (= lt!2521451 (contextDepthTotal!509 lt!2521434))))

(declare-datatypes ((Unit!161628 0))(
  ( (Unit!161629) )
))
(declare-fun lt!2521409 () Unit!161628)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!77 (List!67951 Context!12940) Unit!161628)

(assert (=> b!7037625 (= lt!2521409 (lemmaTotalDepthZipperLargerThanOfAnyContext!77 lt!2521426 lt!2521434))))

(declare-fun z1!570 () (Set Context!12940))

(declare-fun toList!10817 ((Set Context!12940)) List!67951)

(assert (=> b!7037625 (= lt!2521426 (toList!10817 z1!570))))

(declare-fun lt!2521435 () List!67950)

(declare-fun lt!2521425 () Unit!161628)

(declare-fun ct2!306 () Context!12940)

(declare-fun lambda!415755 () Int)

(declare-fun lemmaConcatPreservesForall!795 (List!67950 List!67950 Int) Unit!161628)

(assert (=> b!7037625 (= lt!2521425 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun lt!2521413 () Unit!161628)

(assert (=> b!7037625 (= lt!2521413 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun lt!2521459 () Unit!161628)

(assert (=> b!7037625 (= lt!2521459 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun lambda!415756 () Int)

(declare-datatypes ((List!67952 0))(
  ( (Nil!67828) (Cons!67828 (h!74276 C!35218) (t!381723 List!67952)) )
))
(declare-fun s!7408 () List!67952)

(declare-fun lt!2521446 () (Set Context!12940))

(declare-fun flatMap!2421 ((Set Context!12940) Int) (Set Context!12940))

(declare-fun derivationStepZipperUp!2084 (Context!12940 C!35218) (Set Context!12940))

(assert (=> b!7037625 (= (flatMap!2421 lt!2521446 lambda!415756) (derivationStepZipperUp!2084 lt!2521418 (h!74276 s!7408)))))

(declare-fun lt!2521428 () Unit!161628)

(declare-fun lemmaFlatMapOnSingletonSet!1935 ((Set Context!12940) Context!12940 Int) Unit!161628)

(assert (=> b!7037625 (= lt!2521428 (lemmaFlatMapOnSingletonSet!1935 lt!2521446 lt!2521418 lambda!415756))))

(declare-fun lambda!415754 () Int)

(declare-fun map!15779 ((Set Context!12940) Int) (Set Context!12940))

(declare-fun ++!15528 (List!67950 List!67950) List!67950)

(assert (=> b!7037625 (= (map!15779 lt!2521446 lambda!415754) (set.insert (Context!12941 (++!15528 lt!2521435 (exprs!6970 ct2!306))) (as set.empty (Set Context!12940))))))

(declare-fun lt!2521422 () Unit!161628)

(assert (=> b!7037625 (= lt!2521422 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun lt!2521405 () Unit!161628)

(declare-fun lemmaMapOnSingletonSet!385 ((Set Context!12940) Context!12940 Int) Unit!161628)

(assert (=> b!7037625 (= lt!2521405 (lemmaMapOnSingletonSet!385 lt!2521446 lt!2521418 lambda!415754))))

(assert (=> b!7037625 (= lt!2521446 (set.insert lt!2521418 (as set.empty (Set Context!12940))))))

(declare-fun b!7037626 () Bool)

(declare-fun e!4230723 () Bool)

(declare-fun e!4230725 () Bool)

(assert (=> b!7037626 (= e!4230723 e!4230725)))

(declare-fun res!2872800 () Bool)

(assert (=> b!7037626 (=> res!2872800 e!4230725)))

(declare-fun lt!2521463 () (Set Context!12940))

(declare-fun lt!2521423 () (Set Context!12940))

(declare-fun derivationStepZipper!2930 ((Set Context!12940) C!35218) (Set Context!12940))

(assert (=> b!7037626 (= res!2872800 (not (= (derivationStepZipper!2930 lt!2521423 (h!74276 s!7408)) lt!2521463)))))

(assert (=> b!7037626 (= lt!2521463 (derivationStepZipperUp!2084 lt!2521434 (h!74276 s!7408)))))

(assert (=> b!7037626 (= (flatMap!2421 lt!2521423 lambda!415756) (derivationStepZipperUp!2084 lt!2521434 (h!74276 s!7408)))))

(declare-fun lt!2521433 () Unit!161628)

(assert (=> b!7037626 (= lt!2521433 (lemmaFlatMapOnSingletonSet!1935 lt!2521423 lt!2521434 lambda!415756))))

(assert (=> b!7037626 (= lt!2521423 (set.insert lt!2521434 (as set.empty (Set Context!12940))))))

(declare-fun b!7037627 () Bool)

(declare-fun e!4230731 () Bool)

(declare-fun tp!1937024 () Bool)

(assert (=> b!7037627 (= e!4230731 tp!1937024)))

(declare-fun b!7037628 () Bool)

(declare-fun e!4230722 () Bool)

(assert (=> b!7037628 (= e!4230734 e!4230722)))

(declare-fun res!2872810 () Bool)

(assert (=> b!7037628 (=> res!2872810 e!4230722)))

(declare-fun nullable!7185 (Regex!17474) Bool)

(assert (=> b!7037628 (= res!2872810 (not (nullable!7185 (h!74274 (exprs!6970 lt!2521434)))))))

(assert (=> b!7037628 (= lt!2521418 (Context!12941 lt!2521435))))

(declare-fun tail!13569 (List!67950) List!67950)

(assert (=> b!7037628 (= lt!2521435 (tail!13569 (exprs!6970 lt!2521434)))))

(declare-fun b!7037629 () Bool)

(declare-fun res!2872816 () Bool)

(assert (=> b!7037629 (=> res!2872816 e!4230734)))

(assert (=> b!7037629 (= res!2872816 (not (is-Cons!67826 (exprs!6970 lt!2521434))))))

(declare-fun b!7037630 () Bool)

(declare-fun e!4230728 () Bool)

(declare-fun lt!2521430 () (Set Context!12940))

(declare-fun matchZipper!3014 ((Set Context!12940) List!67952) Bool)

(assert (=> b!7037630 (= e!4230728 (matchZipper!3014 lt!2521430 (t!381723 s!7408)))))

(declare-fun b!7037631 () Bool)

(declare-fun e!4230727 () Bool)

(declare-fun lt!2521445 () (Set Context!12940))

(declare-fun lt!2521417 () List!67952)

(assert (=> b!7037631 (= e!4230727 (matchZipper!3014 lt!2521445 lt!2521417))))

(declare-fun b!7037632 () Bool)

(declare-fun e!4230721 () Bool)

(declare-fun tp_is_empty!44173 () Bool)

(declare-fun tp!1937026 () Bool)

(assert (=> b!7037632 (= e!4230721 (and tp_is_empty!44173 tp!1937026))))

(declare-fun b!7037633 () Bool)

(declare-fun e!4230724 () Bool)

(assert (=> b!7037633 (= e!4230724 (not (matchZipper!3014 lt!2521430 (t!381723 s!7408))))))

(declare-fun lt!2521444 () Unit!161628)

(assert (=> b!7037633 (= lt!2521444 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun setIsEmpty!49267 () Bool)

(declare-fun setRes!49267 () Bool)

(assert (=> setIsEmpty!49267 setRes!49267))

(declare-fun b!7037634 () Bool)

(declare-fun res!2872813 () Bool)

(declare-fun e!4230743 () Bool)

(assert (=> b!7037634 (=> (not res!2872813) (not e!4230743))))

(assert (=> b!7037634 (= res!2872813 (is-Cons!67828 s!7408))))

(declare-fun b!7037635 () Bool)

(declare-fun e!4230739 () Bool)

(declare-fun e!4230736 () Bool)

(assert (=> b!7037635 (= e!4230739 e!4230736)))

(declare-fun res!2872819 () Bool)

(assert (=> b!7037635 (=> res!2872819 e!4230736)))

(declare-fun lt!2521414 () (Set Context!12940))

(declare-fun lt!2521447 () (Set Context!12940))

(assert (=> b!7037635 (= res!2872819 (not (= lt!2521414 lt!2521447)))))

(declare-fun lt!2521419 () Context!12940)

(assert (=> b!7037635 (= lt!2521414 (set.insert lt!2521419 (as set.empty (Set Context!12940))))))

(declare-fun lt!2521407 () Unit!161628)

(assert (=> b!7037635 (= lt!2521407 (lemmaConcatPreservesForall!795 (exprs!6970 lt!2521434) (exprs!6970 ct2!306) lambda!415755))))

(declare-fun b!7037636 () Bool)

(declare-fun e!4230730 () Bool)

(assert (=> b!7037636 (= e!4230730 e!4230733)))

(declare-fun res!2872807 () Bool)

(assert (=> b!7037636 (=> res!2872807 e!4230733)))

(declare-fun lt!2521406 () (Set Context!12940))

(assert (=> b!7037636 (= res!2872807 (not (matchZipper!3014 lt!2521406 s!7408)))))

(declare-fun lt!2521439 () Unit!161628)

(assert (=> b!7037636 (= lt!2521439 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun e!4230742 () Bool)

(assert (=> b!7037637 (= e!4230742 e!4230739)))

(declare-fun res!2872814 () Bool)

(assert (=> b!7037637 (=> res!2872814 e!4230739)))

(declare-fun lt!2521455 () Context!12940)

(assert (=> b!7037637 (= res!2872814 (or (not (= lt!2521419 lt!2521455)) (not (set.member lt!2521434 z1!570))))))

(assert (=> b!7037637 (= lt!2521419 (Context!12941 (++!15528 (exprs!6970 lt!2521434) (exprs!6970 ct2!306))))))

(declare-fun lt!2521431 () Unit!161628)

(assert (=> b!7037637 (= lt!2521431 (lemmaConcatPreservesForall!795 (exprs!6970 lt!2521434) (exprs!6970 ct2!306) lambda!415755))))

(declare-fun mapPost2!315 ((Set Context!12940) Int Context!12940) Context!12940)

(assert (=> b!7037637 (= lt!2521434 (mapPost2!315 z1!570 lambda!415754 lt!2521455))))

(declare-fun b!7037638 () Bool)

(declare-fun res!2872799 () Bool)

(declare-fun e!4230726 () Bool)

(assert (=> b!7037638 (=> res!2872799 e!4230726)))

(declare-fun lt!2521437 () Bool)

(assert (=> b!7037638 (= res!2872799 (not lt!2521437))))

(assert (=> b!7037639 (= e!4230743 (not e!4230742))))

(declare-fun res!2872823 () Bool)

(assert (=> b!7037639 (=> res!2872823 e!4230742)))

(assert (=> b!7037639 (= res!2872823 (not (matchZipper!3014 lt!2521447 s!7408)))))

(assert (=> b!7037639 (= lt!2521447 (set.insert lt!2521455 (as set.empty (Set Context!12940))))))

(declare-fun lt!2521442 () (Set Context!12940))

(declare-fun lambda!415753 () Int)

(declare-fun getWitness!1488 ((Set Context!12940) Int) Context!12940)

(assert (=> b!7037639 (= lt!2521455 (getWitness!1488 lt!2521442 lambda!415753))))

(declare-fun lt!2521438 () List!67951)

(declare-fun exists!3409 (List!67951 Int) Bool)

(assert (=> b!7037639 (exists!3409 lt!2521438 lambda!415753)))

(declare-fun lt!2521464 () Unit!161628)

(declare-fun lemmaZipperMatchesExistsMatchingContext!413 (List!67951 List!67952) Unit!161628)

(assert (=> b!7037639 (= lt!2521464 (lemmaZipperMatchesExistsMatchingContext!413 lt!2521438 s!7408))))

(assert (=> b!7037639 (= lt!2521438 (toList!10817 lt!2521442))))

(declare-fun b!7037640 () Bool)

(declare-fun e!4230741 () Bool)

(assert (=> b!7037640 (= e!4230725 e!4230741)))

(declare-fun res!2872801 () Bool)

(assert (=> b!7037640 (=> res!2872801 e!4230741)))

(declare-fun lt!2521443 () (Set Context!12940))

(assert (=> b!7037640 (= res!2872801 (not (= lt!2521463 lt!2521443)))))

(declare-fun lt!2521429 () (Set Context!12940))

(assert (=> b!7037640 (= lt!2521443 (set.union lt!2521429 lt!2521445))))

(assert (=> b!7037640 (= lt!2521445 (derivationStepZipperUp!2084 lt!2521418 (h!74276 s!7408)))))

(declare-fun derivationStepZipperDown!2138 (Regex!17474 Context!12940 C!35218) (Set Context!12940))

(assert (=> b!7037640 (= lt!2521429 (derivationStepZipperDown!2138 (h!74274 (exprs!6970 lt!2521434)) lt!2521418 (h!74276 s!7408)))))

(declare-fun b!7037641 () Bool)

(declare-fun res!2872822 () Bool)

(assert (=> b!7037641 (=> res!2872822 e!4230723)))

(declare-datatypes ((tuple2!68094 0))(
  ( (tuple2!68095 (_1!37350 List!67952) (_2!37350 List!67952)) )
))
(declare-fun lt!2521427 () tuple2!68094)

(declare-fun ++!15529 (List!67952 List!67952) List!67952)

(assert (=> b!7037641 (= res!2872822 (not (= (++!15529 (_1!37350 lt!2521427) (_2!37350 lt!2521427)) s!7408)))))

(declare-fun res!2872811 () Bool)

(assert (=> start!680524 (=> (not res!2872811) (not e!4230743))))

(assert (=> start!680524 (= res!2872811 (matchZipper!3014 lt!2521442 s!7408))))

(declare-fun appendTo!595 ((Set Context!12940) Context!12940) (Set Context!12940))

(assert (=> start!680524 (= lt!2521442 (appendTo!595 z1!570 ct2!306))))

(assert (=> start!680524 e!4230743))

(declare-fun condSetEmpty!49267 () Bool)

(assert (=> start!680524 (= condSetEmpty!49267 (= z1!570 (as set.empty (Set Context!12940))))))

(assert (=> start!680524 setRes!49267))

(declare-fun e!4230729 () Bool)

(declare-fun inv!86545 (Context!12940) Bool)

(assert (=> start!680524 (and (inv!86545 ct2!306) e!4230729)))

(assert (=> start!680524 e!4230721))

(declare-fun b!7037642 () Bool)

(declare-fun e!4230737 () Bool)

(assert (=> b!7037642 (= e!4230737 (not (matchZipper!3014 lt!2521445 lt!2521417)))))

(declare-fun b!7037643 () Bool)

(declare-fun res!2872824 () Bool)

(assert (=> b!7037643 (=> res!2872824 e!4230740)))

(assert (=> b!7037643 (= res!2872824 (>= (zipperDepthTotal!537 (Cons!67827 lt!2521418 Nil!67827)) lt!2521436))))

(declare-fun b!7037644 () Bool)

(assert (=> b!7037644 (= e!4230740 e!4230723)))

(declare-fun res!2872818 () Bool)

(assert (=> b!7037644 (=> res!2872818 e!4230723)))

(assert (=> b!7037644 (= res!2872818 (not (matchZipper!3014 lt!2521446 (_1!37350 lt!2521427))))))

(declare-datatypes ((Option!16879 0))(
  ( (None!16878) (Some!16878 (v!53168 tuple2!68094)) )
))
(declare-fun lt!2521440 () Option!16879)

(declare-fun get!23767 (Option!16879) tuple2!68094)

(assert (=> b!7037644 (= lt!2521427 (get!23767 lt!2521440))))

(declare-fun isDefined!13580 (Option!16879) Bool)

(assert (=> b!7037644 (isDefined!13580 lt!2521440)))

(declare-fun lt!2521415 () (Set Context!12940))

(declare-fun findConcatSeparationZippers!395 ((Set Context!12940) (Set Context!12940) List!67952 List!67952 List!67952) Option!16879)

(assert (=> b!7037644 (= lt!2521440 (findConcatSeparationZippers!395 lt!2521446 lt!2521415 Nil!67828 s!7408 s!7408))))

(assert (=> b!7037644 (= lt!2521415 (set.insert ct2!306 (as set.empty (Set Context!12940))))))

(declare-fun lt!2521404 () Unit!161628)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!383 ((Set Context!12940) Context!12940 List!67952) Unit!161628)

(assert (=> b!7037644 (= lt!2521404 (lemmaConcatZipperMatchesStringThenFindConcatDefined!383 lt!2521446 ct2!306 s!7408))))

(declare-fun b!7037645 () Bool)

(declare-fun e!4230735 () Bool)

(assert (=> b!7037645 (= e!4230726 e!4230735)))

(declare-fun res!2872803 () Bool)

(assert (=> b!7037645 (=> res!2872803 e!4230735)))

(assert (=> b!7037645 (= res!2872803 (not (matchZipper!3014 lt!2521430 (t!381723 s!7408))))))

(declare-fun lt!2521452 () Unit!161628)

(assert (=> b!7037645 (= lt!2521452 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun e!4230738 () Bool)

(declare-fun b!7037646 () Bool)

(declare-fun lt!2521441 () C!35218)

(assert (=> b!7037646 (= e!4230738 (= (derivationStepZipper!2930 lt!2521446 lt!2521441) (derivationStepZipperUp!2084 lt!2521418 lt!2521441)))))

(declare-fun head!14276 (List!67952) C!35218)

(assert (=> b!7037646 (= lt!2521441 (head!14276 (_1!37350 lt!2521427)))))

(assert (=> b!7037646 (= (flatMap!2421 lt!2521446 lambda!415756) (derivationStepZipperUp!2084 lt!2521418 (h!74276 s!7408)))))

(declare-fun lt!2521456 () Unit!161628)

(assert (=> b!7037646 (= lt!2521456 (lemmaFlatMapOnSingletonSet!1935 lt!2521446 lt!2521418 lambda!415756))))

(declare-fun b!7037647 () Bool)

(assert (=> b!7037647 (= e!4230735 e!4230730)))

(declare-fun res!2872825 () Bool)

(assert (=> b!7037647 (=> res!2872825 e!4230730)))

(assert (=> b!7037647 (= res!2872825 (not (= (derivationStepZipper!2930 lt!2521406 (h!74276 s!7408)) lt!2521430)))))

(declare-fun lt!2521424 () Unit!161628)

(assert (=> b!7037647 (= lt!2521424 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun lt!2521420 () Unit!161628)

(assert (=> b!7037647 (= lt!2521420 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun lt!2521454 () Context!12940)

(assert (=> b!7037647 (= (flatMap!2421 lt!2521406 lambda!415756) (derivationStepZipperUp!2084 lt!2521454 (h!74276 s!7408)))))

(declare-fun lt!2521453 () Unit!161628)

(assert (=> b!7037647 (= lt!2521453 (lemmaFlatMapOnSingletonSet!1935 lt!2521406 lt!2521454 lambda!415756))))

(assert (=> b!7037647 (= lt!2521406 (set.insert lt!2521454 (as set.empty (Set Context!12940))))))

(declare-fun lt!2521449 () Unit!161628)

(assert (=> b!7037647 (= lt!2521449 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun lt!2521457 () Unit!161628)

(assert (=> b!7037647 (= lt!2521457 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun b!7037648 () Bool)

(declare-fun e!4230732 () Bool)

(assert (=> b!7037648 (= e!4230732 e!4230726)))

(declare-fun res!2872806 () Bool)

(assert (=> b!7037648 (=> res!2872806 e!4230726)))

(assert (=> b!7037648 (= res!2872806 e!4230724)))

(declare-fun res!2872809 () Bool)

(assert (=> b!7037648 (=> (not res!2872809) (not e!4230724))))

(declare-fun lt!2521458 () Bool)

(assert (=> b!7037648 (= res!2872809 (not (= lt!2521437 lt!2521458)))))

(declare-fun lt!2521450 () (Set Context!12940))

(assert (=> b!7037648 (= lt!2521437 (matchZipper!3014 lt!2521450 (t!381723 s!7408)))))

(declare-fun lt!2521403 () Unit!161628)

(assert (=> b!7037648 (= lt!2521403 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun lt!2521460 () (Set Context!12940))

(assert (=> b!7037648 (= (matchZipper!3014 lt!2521460 (t!381723 s!7408)) e!4230728)))

(declare-fun res!2872804 () Bool)

(assert (=> b!7037648 (=> res!2872804 e!4230728)))

(assert (=> b!7037648 (= res!2872804 lt!2521458)))

(declare-fun lt!2521412 () (Set Context!12940))

(assert (=> b!7037648 (= lt!2521458 (matchZipper!3014 lt!2521412 (t!381723 s!7408)))))

(declare-fun lt!2521410 () Unit!161628)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1547 ((Set Context!12940) (Set Context!12940) List!67952) Unit!161628)

(assert (=> b!7037648 (= lt!2521410 (lemmaZipperConcatMatchesSameAsBothZippers!1547 lt!2521412 lt!2521430 (t!381723 s!7408)))))

(declare-fun lt!2521421 () Unit!161628)

(assert (=> b!7037648 (= lt!2521421 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun lt!2521448 () Unit!161628)

(assert (=> b!7037648 (= lt!2521448 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(assert (=> b!7037649 (= e!4230736 e!4230734)))

(declare-fun res!2872820 () Bool)

(assert (=> b!7037649 (=> res!2872820 e!4230734)))

(assert (=> b!7037649 (= res!2872820 (not (= (derivationStepZipper!2930 lt!2521414 (h!74276 s!7408)) lt!2521450)))))

(assert (=> b!7037649 (= (flatMap!2421 lt!2521414 lambda!415756) (derivationStepZipperUp!2084 lt!2521419 (h!74276 s!7408)))))

(declare-fun lt!2521411 () Unit!161628)

(assert (=> b!7037649 (= lt!2521411 (lemmaFlatMapOnSingletonSet!1935 lt!2521414 lt!2521419 lambda!415756))))

(assert (=> b!7037649 (= lt!2521450 (derivationStepZipperUp!2084 lt!2521419 (h!74276 s!7408)))))

(declare-fun lt!2521416 () Unit!161628)

(assert (=> b!7037649 (= lt!2521416 (lemmaConcatPreservesForall!795 (exprs!6970 lt!2521434) (exprs!6970 ct2!306) lambda!415755))))

(declare-fun b!7037650 () Bool)

(assert (=> b!7037650 (= e!4230722 e!4230732)))

(declare-fun res!2872821 () Bool)

(assert (=> b!7037650 (=> res!2872821 e!4230732)))

(assert (=> b!7037650 (= res!2872821 (not (= lt!2521450 lt!2521460)))))

(assert (=> b!7037650 (= lt!2521460 (set.union lt!2521412 lt!2521430))))

(assert (=> b!7037650 (= lt!2521430 (derivationStepZipperUp!2084 lt!2521454 (h!74276 s!7408)))))

(assert (=> b!7037650 (= lt!2521412 (derivationStepZipperDown!2138 (h!74274 (exprs!6970 lt!2521434)) lt!2521454 (h!74276 s!7408)))))

(assert (=> b!7037650 (= lt!2521454 (Context!12941 (++!15528 lt!2521435 (exprs!6970 ct2!306))))))

(declare-fun lt!2521432 () Unit!161628)

(assert (=> b!7037650 (= lt!2521432 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun lt!2521408 () Unit!161628)

(assert (=> b!7037650 (= lt!2521408 (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(declare-fun b!7037651 () Bool)

(assert (=> b!7037651 (= e!4230741 e!4230738)))

(declare-fun res!2872826 () Bool)

(assert (=> b!7037651 (=> res!2872826 e!4230738)))

(assert (=> b!7037651 (= res!2872826 e!4230737)))

(declare-fun res!2872802 () Bool)

(assert (=> b!7037651 (=> (not res!2872802) (not e!4230737))))

(declare-fun lt!2521462 () Bool)

(assert (=> b!7037651 (= res!2872802 (not (= (matchZipper!3014 lt!2521423 (_1!37350 lt!2521427)) lt!2521462)))))

(assert (=> b!7037651 (= (matchZipper!3014 lt!2521443 lt!2521417) e!4230727)))

(declare-fun res!2872817 () Bool)

(assert (=> b!7037651 (=> res!2872817 e!4230727)))

(assert (=> b!7037651 (= res!2872817 lt!2521462)))

(assert (=> b!7037651 (= lt!2521462 (matchZipper!3014 lt!2521429 lt!2521417))))

(declare-fun lt!2521461 () Unit!161628)

(assert (=> b!7037651 (= lt!2521461 (lemmaZipperConcatMatchesSameAsBothZippers!1547 lt!2521429 lt!2521445 lt!2521417))))

(declare-fun tail!13570 (List!67952) List!67952)

(assert (=> b!7037651 (= lt!2521417 (tail!13570 (_1!37350 lt!2521427)))))

(declare-fun b!7037652 () Bool)

(declare-fun tp!1937027 () Bool)

(assert (=> b!7037652 (= e!4230729 tp!1937027)))

(declare-fun b!7037653 () Bool)

(declare-fun res!2872812 () Bool)

(assert (=> b!7037653 (=> res!2872812 e!4230723)))

(declare-fun isEmpty!39570 (List!67952) Bool)

(assert (=> b!7037653 (= res!2872812 (isEmpty!39570 (_1!37350 lt!2521427)))))

(declare-fun b!7037654 () Bool)

(declare-fun res!2872808 () Bool)

(assert (=> b!7037654 (=> res!2872808 e!4230742)))

(assert (=> b!7037654 (= res!2872808 (not (set.member lt!2521455 lt!2521442)))))

(declare-fun b!7037655 () Bool)

(declare-fun res!2872815 () Bool)

(assert (=> b!7037655 (=> res!2872815 e!4230723)))

(assert (=> b!7037655 (= res!2872815 (not (matchZipper!3014 lt!2521415 (_2!37350 lt!2521427))))))

(declare-fun setNonEmpty!49267 () Bool)

(declare-fun setElem!49267 () Context!12940)

(declare-fun tp!1937025 () Bool)

(assert (=> setNonEmpty!49267 (= setRes!49267 (and tp!1937025 (inv!86545 setElem!49267) e!4230731))))

(declare-fun setRest!49267 () (Set Context!12940))

(assert (=> setNonEmpty!49267 (= z1!570 (set.union (set.insert setElem!49267 (as set.empty (Set Context!12940))) setRest!49267))))

(assert (= (and start!680524 res!2872811) b!7037634))

(assert (= (and b!7037634 res!2872813) b!7037639))

(assert (= (and b!7037639 (not res!2872823)) b!7037654))

(assert (= (and b!7037654 (not res!2872808)) b!7037637))

(assert (= (and b!7037637 (not res!2872814)) b!7037635))

(assert (= (and b!7037635 (not res!2872819)) b!7037649))

(assert (= (and b!7037649 (not res!2872820)) b!7037629))

(assert (= (and b!7037629 (not res!2872816)) b!7037624))

(assert (= (and b!7037624 (not res!2872827)) b!7037628))

(assert (= (and b!7037628 (not res!2872810)) b!7037650))

(assert (= (and b!7037650 (not res!2872821)) b!7037648))

(assert (= (and b!7037648 (not res!2872804)) b!7037630))

(assert (= (and b!7037648 res!2872809) b!7037633))

(assert (= (and b!7037648 (not res!2872806)) b!7037638))

(assert (= (and b!7037638 (not res!2872799)) b!7037645))

(assert (= (and b!7037645 (not res!2872803)) b!7037647))

(assert (= (and b!7037647 (not res!2872825)) b!7037636))

(assert (= (and b!7037636 (not res!2872807)) b!7037625))

(assert (= (and b!7037625 (not res!2872805)) b!7037643))

(assert (= (and b!7037643 (not res!2872824)) b!7037644))

(assert (= (and b!7037644 (not res!2872818)) b!7037655))

(assert (= (and b!7037655 (not res!2872815)) b!7037641))

(assert (= (and b!7037641 (not res!2872822)) b!7037653))

(assert (= (and b!7037653 (not res!2872812)) b!7037626))

(assert (= (and b!7037626 (not res!2872800)) b!7037640))

(assert (= (and b!7037640 (not res!2872801)) b!7037651))

(assert (= (and b!7037651 (not res!2872817)) b!7037631))

(assert (= (and b!7037651 res!2872802) b!7037642))

(assert (= (and b!7037651 (not res!2872826)) b!7037646))

(assert (= (and start!680524 condSetEmpty!49267) setIsEmpty!49267))

(assert (= (and start!680524 (not condSetEmpty!49267)) setNonEmpty!49267))

(assert (= setNonEmpty!49267 b!7037627))

(assert (= start!680524 b!7037652))

(assert (= (and start!680524 (is-Cons!67828 s!7408)) b!7037632))

(declare-fun m!7747270 () Bool)

(assert (=> b!7037650 m!7747270))

(declare-fun m!7747272 () Bool)

(assert (=> b!7037650 m!7747272))

(declare-fun m!7747274 () Bool)

(assert (=> b!7037650 m!7747274))

(assert (=> b!7037650 m!7747274))

(declare-fun m!7747276 () Bool)

(assert (=> b!7037650 m!7747276))

(assert (=> b!7037625 m!7747274))

(declare-fun m!7747278 () Bool)

(assert (=> b!7037625 m!7747278))

(declare-fun m!7747280 () Bool)

(assert (=> b!7037625 m!7747280))

(assert (=> b!7037625 m!7747270))

(declare-fun m!7747282 () Bool)

(assert (=> b!7037625 m!7747282))

(assert (=> b!7037625 m!7747274))

(declare-fun m!7747284 () Bool)

(assert (=> b!7037625 m!7747284))

(assert (=> b!7037625 m!7747274))

(declare-fun m!7747286 () Bool)

(assert (=> b!7037625 m!7747286))

(declare-fun m!7747288 () Bool)

(assert (=> b!7037625 m!7747288))

(declare-fun m!7747290 () Bool)

(assert (=> b!7037625 m!7747290))

(declare-fun m!7747292 () Bool)

(assert (=> b!7037625 m!7747292))

(assert (=> b!7037625 m!7747274))

(declare-fun m!7747294 () Bool)

(assert (=> b!7037625 m!7747294))

(declare-fun m!7747296 () Bool)

(assert (=> b!7037625 m!7747296))

(declare-fun m!7747298 () Bool)

(assert (=> b!7037625 m!7747298))

(declare-fun m!7747300 () Bool)

(assert (=> b!7037625 m!7747300))

(declare-fun m!7747302 () Bool)

(assert (=> b!7037654 m!7747302))

(declare-fun m!7747304 () Bool)

(assert (=> b!7037628 m!7747304))

(declare-fun m!7747306 () Bool)

(assert (=> b!7037628 m!7747306))

(declare-fun m!7747308 () Bool)

(assert (=> b!7037637 m!7747308))

(declare-fun m!7747310 () Bool)

(assert (=> b!7037637 m!7747310))

(declare-fun m!7747312 () Bool)

(assert (=> b!7037637 m!7747312))

(declare-fun m!7747314 () Bool)

(assert (=> b!7037637 m!7747314))

(assert (=> b!7037649 m!7747312))

(declare-fun m!7747316 () Bool)

(assert (=> b!7037649 m!7747316))

(declare-fun m!7747318 () Bool)

(assert (=> b!7037649 m!7747318))

(declare-fun m!7747320 () Bool)

(assert (=> b!7037649 m!7747320))

(declare-fun m!7747322 () Bool)

(assert (=> b!7037649 m!7747322))

(declare-fun m!7747324 () Bool)

(assert (=> b!7037624 m!7747324))

(declare-fun m!7747326 () Bool)

(assert (=> b!7037645 m!7747326))

(assert (=> b!7037645 m!7747274))

(declare-fun m!7747328 () Bool)

(assert (=> b!7037647 m!7747328))

(declare-fun m!7747330 () Bool)

(assert (=> b!7037647 m!7747330))

(declare-fun m!7747332 () Bool)

(assert (=> b!7037647 m!7747332))

(assert (=> b!7037647 m!7747274))

(assert (=> b!7037647 m!7747274))

(assert (=> b!7037647 m!7747274))

(assert (=> b!7037647 m!7747276))

(assert (=> b!7037647 m!7747274))

(declare-fun m!7747334 () Bool)

(assert (=> b!7037647 m!7747334))

(declare-fun m!7747336 () Bool)

(assert (=> b!7037644 m!7747336))

(declare-fun m!7747338 () Bool)

(assert (=> b!7037644 m!7747338))

(declare-fun m!7747340 () Bool)

(assert (=> b!7037644 m!7747340))

(declare-fun m!7747342 () Bool)

(assert (=> b!7037644 m!7747342))

(declare-fun m!7747344 () Bool)

(assert (=> b!7037644 m!7747344))

(declare-fun m!7747346 () Bool)

(assert (=> b!7037644 m!7747346))

(declare-fun m!7747348 () Bool)

(assert (=> b!7037641 m!7747348))

(declare-fun m!7747350 () Bool)

(assert (=> b!7037631 m!7747350))

(assert (=> b!7037633 m!7747326))

(assert (=> b!7037633 m!7747274))

(assert (=> b!7037646 m!7747292))

(declare-fun m!7747352 () Bool)

(assert (=> b!7037646 m!7747352))

(assert (=> b!7037646 m!7747282))

(declare-fun m!7747354 () Bool)

(assert (=> b!7037646 m!7747354))

(assert (=> b!7037646 m!7747280))

(declare-fun m!7747356 () Bool)

(assert (=> b!7037646 m!7747356))

(declare-fun m!7747358 () Bool)

(assert (=> b!7037626 m!7747358))

(declare-fun m!7747360 () Bool)

(assert (=> b!7037626 m!7747360))

(declare-fun m!7747362 () Bool)

(assert (=> b!7037626 m!7747362))

(declare-fun m!7747364 () Bool)

(assert (=> b!7037626 m!7747364))

(declare-fun m!7747366 () Bool)

(assert (=> b!7037626 m!7747366))

(declare-fun m!7747368 () Bool)

(assert (=> b!7037643 m!7747368))

(declare-fun m!7747370 () Bool)

(assert (=> b!7037653 m!7747370))

(assert (=> b!7037648 m!7747274))

(declare-fun m!7747372 () Bool)

(assert (=> b!7037648 m!7747372))

(declare-fun m!7747374 () Bool)

(assert (=> b!7037648 m!7747374))

(assert (=> b!7037648 m!7747274))

(declare-fun m!7747376 () Bool)

(assert (=> b!7037648 m!7747376))

(declare-fun m!7747378 () Bool)

(assert (=> b!7037648 m!7747378))

(assert (=> b!7037648 m!7747274))

(declare-fun m!7747380 () Bool)

(assert (=> b!7037636 m!7747380))

(assert (=> b!7037636 m!7747274))

(declare-fun m!7747382 () Bool)

(assert (=> b!7037655 m!7747382))

(assert (=> b!7037630 m!7747326))

(declare-fun m!7747384 () Bool)

(assert (=> b!7037635 m!7747384))

(assert (=> b!7037635 m!7747312))

(declare-fun m!7747386 () Bool)

(assert (=> b!7037639 m!7747386))

(declare-fun m!7747388 () Bool)

(assert (=> b!7037639 m!7747388))

(declare-fun m!7747390 () Bool)

(assert (=> b!7037639 m!7747390))

(declare-fun m!7747392 () Bool)

(assert (=> b!7037639 m!7747392))

(declare-fun m!7747394 () Bool)

(assert (=> b!7037639 m!7747394))

(declare-fun m!7747396 () Bool)

(assert (=> b!7037639 m!7747396))

(declare-fun m!7747398 () Bool)

(assert (=> start!680524 m!7747398))

(declare-fun m!7747400 () Bool)

(assert (=> start!680524 m!7747400))

(declare-fun m!7747402 () Bool)

(assert (=> start!680524 m!7747402))

(declare-fun m!7747404 () Bool)

(assert (=> setNonEmpty!49267 m!7747404))

(assert (=> b!7037640 m!7747292))

(declare-fun m!7747406 () Bool)

(assert (=> b!7037640 m!7747406))

(declare-fun m!7747408 () Bool)

(assert (=> b!7037651 m!7747408))

(declare-fun m!7747410 () Bool)

(assert (=> b!7037651 m!7747410))

(declare-fun m!7747412 () Bool)

(assert (=> b!7037651 m!7747412))

(declare-fun m!7747414 () Bool)

(assert (=> b!7037651 m!7747414))

(declare-fun m!7747416 () Bool)

(assert (=> b!7037651 m!7747416))

(assert (=> b!7037642 m!7747350))

(push 1)

(assert (not b!7037641))

(assert tp_is_empty!44173)

(assert (not b!7037632))

(assert (not b!7037655))

(assert (not setNonEmpty!49267))

(assert (not b!7037624))

(assert (not b!7037649))

(assert (not b!7037630))

(assert (not b!7037643))

(assert (not b!7037625))

(assert (not b!7037648))

(assert (not b!7037627))

(assert (not b!7037636))

(assert (not b!7037628))

(assert (not start!680524))

(assert (not b!7037642))

(assert (not b!7037651))

(assert (not b!7037639))

(assert (not b!7037647))

(assert (not b!7037644))

(assert (not b!7037652))

(assert (not b!7037646))

(assert (not b!7037626))

(assert (not b!7037650))

(assert (not b!7037653))

(assert (not b!7037645))

(assert (not b!7037631))

(assert (not b!7037637))

(assert (not b!7037633))

(assert (not b!7037635))

(assert (not b!7037640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2197029 () Bool)

(declare-fun c!1309652 () Bool)

(assert (=> d!2197029 (= c!1309652 (isEmpty!39570 (t!381723 s!7408)))))

(declare-fun e!4230815 () Bool)

(assert (=> d!2197029 (= (matchZipper!3014 lt!2521430 (t!381723 s!7408)) e!4230815)))

(declare-fun b!7037768 () Bool)

(declare-fun nullableZipper!2587 ((Set Context!12940)) Bool)

(assert (=> b!7037768 (= e!4230815 (nullableZipper!2587 lt!2521430))))

(declare-fun b!7037769 () Bool)

(assert (=> b!7037769 (= e!4230815 (matchZipper!3014 (derivationStepZipper!2930 lt!2521430 (head!14276 (t!381723 s!7408))) (tail!13570 (t!381723 s!7408))))))

(assert (= (and d!2197029 c!1309652) b!7037768))

(assert (= (and d!2197029 (not c!1309652)) b!7037769))

(declare-fun m!7747566 () Bool)

(assert (=> d!2197029 m!7747566))

(declare-fun m!7747568 () Bool)

(assert (=> b!7037768 m!7747568))

(declare-fun m!7747570 () Bool)

(assert (=> b!7037769 m!7747570))

(assert (=> b!7037769 m!7747570))

(declare-fun m!7747572 () Bool)

(assert (=> b!7037769 m!7747572))

(declare-fun m!7747574 () Bool)

(assert (=> b!7037769 m!7747574))

(assert (=> b!7037769 m!7747572))

(assert (=> b!7037769 m!7747574))

(declare-fun m!7747576 () Bool)

(assert (=> b!7037769 m!7747576))

(assert (=> b!7037633 d!2197029))

(declare-fun d!2197031 () Bool)

(declare-fun forall!16393 (List!67950 Int) Bool)

(assert (=> d!2197031 (forall!16393 (++!15528 lt!2521435 (exprs!6970 ct2!306)) lambda!415755)))

(declare-fun lt!2521657 () Unit!161628)

(declare-fun choose!53352 (List!67950 List!67950 Int) Unit!161628)

(assert (=> d!2197031 (= lt!2521657 (choose!53352 lt!2521435 (exprs!6970 ct2!306) lambda!415755))))

(assert (=> d!2197031 (forall!16393 lt!2521435 lambda!415755)))

(assert (=> d!2197031 (= (lemmaConcatPreservesForall!795 lt!2521435 (exprs!6970 ct2!306) lambda!415755) lt!2521657)))

(declare-fun bs!1872818 () Bool)

(assert (= bs!1872818 d!2197031))

(assert (=> bs!1872818 m!7747270))

(assert (=> bs!1872818 m!7747270))

(declare-fun m!7747578 () Bool)

(assert (=> bs!1872818 m!7747578))

(declare-fun m!7747580 () Bool)

(assert (=> bs!1872818 m!7747580))

(declare-fun m!7747582 () Bool)

(assert (=> bs!1872818 m!7747582))

(assert (=> b!7037633 d!2197031))

(declare-fun d!2197033 () Bool)

(assert (=> d!2197033 (= (isEmpty!39570 (_1!37350 lt!2521427)) (is-Nil!67828 (_1!37350 lt!2521427)))))

(assert (=> b!7037653 d!2197033))

(declare-fun d!2197035 () Bool)

(declare-fun c!1309653 () Bool)

(assert (=> d!2197035 (= c!1309653 (isEmpty!39570 lt!2521417))))

(declare-fun e!4230816 () Bool)

(assert (=> d!2197035 (= (matchZipper!3014 lt!2521445 lt!2521417) e!4230816)))

(declare-fun b!7037770 () Bool)

(assert (=> b!7037770 (= e!4230816 (nullableZipper!2587 lt!2521445))))

(declare-fun b!7037771 () Bool)

(assert (=> b!7037771 (= e!4230816 (matchZipper!3014 (derivationStepZipper!2930 lt!2521445 (head!14276 lt!2521417)) (tail!13570 lt!2521417)))))

(assert (= (and d!2197035 c!1309653) b!7037770))

(assert (= (and d!2197035 (not c!1309653)) b!7037771))

(declare-fun m!7747584 () Bool)

(assert (=> d!2197035 m!7747584))

(declare-fun m!7747586 () Bool)

(assert (=> b!7037770 m!7747586))

(declare-fun m!7747588 () Bool)

(assert (=> b!7037771 m!7747588))

(assert (=> b!7037771 m!7747588))

(declare-fun m!7747590 () Bool)

(assert (=> b!7037771 m!7747590))

(declare-fun m!7747592 () Bool)

(assert (=> b!7037771 m!7747592))

(assert (=> b!7037771 m!7747590))

(assert (=> b!7037771 m!7747592))

(declare-fun m!7747594 () Bool)

(assert (=> b!7037771 m!7747594))

(assert (=> b!7037631 d!2197035))

(declare-fun d!2197037 () Bool)

(assert (=> d!2197037 (forall!16393 (++!15528 (exprs!6970 lt!2521434) (exprs!6970 ct2!306)) lambda!415755)))

(declare-fun lt!2521658 () Unit!161628)

(assert (=> d!2197037 (= lt!2521658 (choose!53352 (exprs!6970 lt!2521434) (exprs!6970 ct2!306) lambda!415755))))

(assert (=> d!2197037 (forall!16393 (exprs!6970 lt!2521434) lambda!415755)))

(assert (=> d!2197037 (= (lemmaConcatPreservesForall!795 (exprs!6970 lt!2521434) (exprs!6970 ct2!306) lambda!415755) lt!2521658)))

(declare-fun bs!1872819 () Bool)

(assert (= bs!1872819 d!2197037))

(assert (=> bs!1872819 m!7747310))

(assert (=> bs!1872819 m!7747310))

(declare-fun m!7747596 () Bool)

(assert (=> bs!1872819 m!7747596))

(declare-fun m!7747598 () Bool)

(assert (=> bs!1872819 m!7747598))

(declare-fun m!7747600 () Bool)

(assert (=> bs!1872819 m!7747600))

(assert (=> b!7037635 d!2197037))

(declare-fun bs!1872820 () Bool)

(declare-fun d!2197039 () Bool)

(assert (= bs!1872820 (and d!2197039 b!7037637)))

(declare-fun lambda!415823 () Int)

(assert (=> bs!1872820 (= lambda!415823 lambda!415755)))

(assert (=> d!2197039 (= (inv!86545 setElem!49267) (forall!16393 (exprs!6970 setElem!49267) lambda!415823))))

(declare-fun bs!1872821 () Bool)

(assert (= bs!1872821 d!2197039))

(declare-fun m!7747602 () Bool)

(assert (=> bs!1872821 m!7747602))

(assert (=> setNonEmpty!49267 d!2197039))

(declare-fun d!2197041 () Bool)

(declare-fun c!1309654 () Bool)

(assert (=> d!2197041 (= c!1309654 (isEmpty!39570 (_2!37350 lt!2521427)))))

(declare-fun e!4230817 () Bool)

(assert (=> d!2197041 (= (matchZipper!3014 lt!2521415 (_2!37350 lt!2521427)) e!4230817)))

(declare-fun b!7037772 () Bool)

(assert (=> b!7037772 (= e!4230817 (nullableZipper!2587 lt!2521415))))

(declare-fun b!7037773 () Bool)

(assert (=> b!7037773 (= e!4230817 (matchZipper!3014 (derivationStepZipper!2930 lt!2521415 (head!14276 (_2!37350 lt!2521427))) (tail!13570 (_2!37350 lt!2521427))))))

(assert (= (and d!2197041 c!1309654) b!7037772))

(assert (= (and d!2197041 (not c!1309654)) b!7037773))

(declare-fun m!7747604 () Bool)

(assert (=> d!2197041 m!7747604))

(declare-fun m!7747606 () Bool)

(assert (=> b!7037772 m!7747606))

(declare-fun m!7747608 () Bool)

(assert (=> b!7037773 m!7747608))

(assert (=> b!7037773 m!7747608))

(declare-fun m!7747610 () Bool)

(assert (=> b!7037773 m!7747610))

(declare-fun m!7747612 () Bool)

(assert (=> b!7037773 m!7747612))

(assert (=> b!7037773 m!7747610))

(assert (=> b!7037773 m!7747612))

(declare-fun m!7747614 () Bool)

(assert (=> b!7037773 m!7747614))

(assert (=> b!7037655 d!2197041))

(declare-fun b!7037782 () Bool)

(declare-fun e!4230823 () List!67950)

(assert (=> b!7037782 (= e!4230823 (exprs!6970 ct2!306))))

(declare-fun d!2197043 () Bool)

(declare-fun e!4230822 () Bool)

(assert (=> d!2197043 e!4230822))

(declare-fun res!2872921 () Bool)

(assert (=> d!2197043 (=> (not res!2872921) (not e!4230822))))

(declare-fun lt!2521661 () List!67950)

(declare-fun content!13556 (List!67950) (Set Regex!17474))

(assert (=> d!2197043 (= res!2872921 (= (content!13556 lt!2521661) (set.union (content!13556 (exprs!6970 lt!2521434)) (content!13556 (exprs!6970 ct2!306)))))))

(assert (=> d!2197043 (= lt!2521661 e!4230823)))

(declare-fun c!1309657 () Bool)

(assert (=> d!2197043 (= c!1309657 (is-Nil!67826 (exprs!6970 lt!2521434)))))

(assert (=> d!2197043 (= (++!15528 (exprs!6970 lt!2521434) (exprs!6970 ct2!306)) lt!2521661)))

(declare-fun b!7037783 () Bool)

(assert (=> b!7037783 (= e!4230823 (Cons!67826 (h!74274 (exprs!6970 lt!2521434)) (++!15528 (t!381721 (exprs!6970 lt!2521434)) (exprs!6970 ct2!306))))))

(declare-fun b!7037785 () Bool)

(assert (=> b!7037785 (= e!4230822 (or (not (= (exprs!6970 ct2!306) Nil!67826)) (= lt!2521661 (exprs!6970 lt!2521434))))))

(declare-fun b!7037784 () Bool)

(declare-fun res!2872920 () Bool)

(assert (=> b!7037784 (=> (not res!2872920) (not e!4230822))))

(declare-fun size!41078 (List!67950) Int)

(assert (=> b!7037784 (= res!2872920 (= (size!41078 lt!2521661) (+ (size!41078 (exprs!6970 lt!2521434)) (size!41078 (exprs!6970 ct2!306)))))))

(assert (= (and d!2197043 c!1309657) b!7037782))

(assert (= (and d!2197043 (not c!1309657)) b!7037783))

(assert (= (and d!2197043 res!2872921) b!7037784))

(assert (= (and b!7037784 res!2872920) b!7037785))

(declare-fun m!7747616 () Bool)

(assert (=> d!2197043 m!7747616))

(declare-fun m!7747618 () Bool)

(assert (=> d!2197043 m!7747618))

(declare-fun m!7747620 () Bool)

(assert (=> d!2197043 m!7747620))

(declare-fun m!7747622 () Bool)

(assert (=> b!7037783 m!7747622))

(declare-fun m!7747624 () Bool)

(assert (=> b!7037784 m!7747624))

(declare-fun m!7747626 () Bool)

(assert (=> b!7037784 m!7747626))

(declare-fun m!7747628 () Bool)

(assert (=> b!7037784 m!7747628))

(assert (=> b!7037637 d!2197043))

(assert (=> b!7037637 d!2197037))

(declare-fun d!2197045 () Bool)

(declare-fun e!4230826 () Bool)

(assert (=> d!2197045 e!4230826))

(declare-fun res!2872924 () Bool)

(assert (=> d!2197045 (=> (not res!2872924) (not e!4230826))))

(declare-fun lt!2521664 () Context!12940)

(declare-fun dynLambda!27415 (Int Context!12940) Context!12940)

(assert (=> d!2197045 (= res!2872924 (= lt!2521455 (dynLambda!27415 lambda!415754 lt!2521664)))))

(declare-fun choose!53353 ((Set Context!12940) Int Context!12940) Context!12940)

(assert (=> d!2197045 (= lt!2521664 (choose!53353 z1!570 lambda!415754 lt!2521455))))

(assert (=> d!2197045 (set.member lt!2521455 (map!15779 z1!570 lambda!415754))))

(assert (=> d!2197045 (= (mapPost2!315 z1!570 lambda!415754 lt!2521455) lt!2521664)))

(declare-fun b!7037789 () Bool)

(assert (=> b!7037789 (= e!4230826 (set.member lt!2521664 z1!570))))

(assert (= (and d!2197045 res!2872924) b!7037789))

(declare-fun b_lambda!267071 () Bool)

(assert (=> (not b_lambda!267071) (not d!2197045)))

(declare-fun m!7747630 () Bool)

(assert (=> d!2197045 m!7747630))

(declare-fun m!7747632 () Bool)

(assert (=> d!2197045 m!7747632))

(declare-fun m!7747634 () Bool)

(assert (=> d!2197045 m!7747634))

(declare-fun m!7747636 () Bool)

(assert (=> d!2197045 m!7747636))

(declare-fun m!7747638 () Bool)

(assert (=> b!7037789 m!7747638))

(assert (=> b!7037637 d!2197045))

(declare-fun d!2197047 () Bool)

(declare-fun c!1309658 () Bool)

(assert (=> d!2197047 (= c!1309658 (isEmpty!39570 s!7408))))

(declare-fun e!4230827 () Bool)

(assert (=> d!2197047 (= (matchZipper!3014 lt!2521406 s!7408) e!4230827)))

(declare-fun b!7037790 () Bool)

(assert (=> b!7037790 (= e!4230827 (nullableZipper!2587 lt!2521406))))

(declare-fun b!7037791 () Bool)

(assert (=> b!7037791 (= e!4230827 (matchZipper!3014 (derivationStepZipper!2930 lt!2521406 (head!14276 s!7408)) (tail!13570 s!7408)))))

(assert (= (and d!2197047 c!1309658) b!7037790))

(assert (= (and d!2197047 (not c!1309658)) b!7037791))

(declare-fun m!7747640 () Bool)

(assert (=> d!2197047 m!7747640))

(declare-fun m!7747642 () Bool)

(assert (=> b!7037790 m!7747642))

(declare-fun m!7747644 () Bool)

(assert (=> b!7037791 m!7747644))

(assert (=> b!7037791 m!7747644))

(declare-fun m!7747646 () Bool)

(assert (=> b!7037791 m!7747646))

(declare-fun m!7747648 () Bool)

(assert (=> b!7037791 m!7747648))

(assert (=> b!7037791 m!7747646))

(assert (=> b!7037791 m!7747648))

(declare-fun m!7747650 () Bool)

(assert (=> b!7037791 m!7747650))

(assert (=> b!7037636 d!2197047))

(assert (=> b!7037636 d!2197031))

(declare-fun b!7037802 () Bool)

(declare-fun e!4230835 () (Set Context!12940))

(declare-fun e!4230834 () (Set Context!12940))

(assert (=> b!7037802 (= e!4230835 e!4230834)))

(declare-fun c!1309664 () Bool)

(assert (=> b!7037802 (= c!1309664 (is-Cons!67826 (exprs!6970 lt!2521418)))))

(declare-fun d!2197049 () Bool)

(declare-fun c!1309663 () Bool)

(declare-fun e!4230836 () Bool)

(assert (=> d!2197049 (= c!1309663 e!4230836)))

(declare-fun res!2872927 () Bool)

(assert (=> d!2197049 (=> (not res!2872927) (not e!4230836))))

(assert (=> d!2197049 (= res!2872927 (is-Cons!67826 (exprs!6970 lt!2521418)))))

(assert (=> d!2197049 (= (derivationStepZipperUp!2084 lt!2521418 (h!74276 s!7408)) e!4230835)))

(declare-fun b!7037803 () Bool)

(declare-fun call!639188 () (Set Context!12940))

(assert (=> b!7037803 (= e!4230834 call!639188)))

(declare-fun b!7037804 () Bool)

(assert (=> b!7037804 (= e!4230834 (as set.empty (Set Context!12940)))))

(declare-fun bm!639183 () Bool)

(assert (=> bm!639183 (= call!639188 (derivationStepZipperDown!2138 (h!74274 (exprs!6970 lt!2521418)) (Context!12941 (t!381721 (exprs!6970 lt!2521418))) (h!74276 s!7408)))))

(declare-fun b!7037805 () Bool)

(assert (=> b!7037805 (= e!4230835 (set.union call!639188 (derivationStepZipperUp!2084 (Context!12941 (t!381721 (exprs!6970 lt!2521418))) (h!74276 s!7408))))))

(declare-fun b!7037806 () Bool)

(assert (=> b!7037806 (= e!4230836 (nullable!7185 (h!74274 (exprs!6970 lt!2521418))))))

(assert (= (and d!2197049 res!2872927) b!7037806))

(assert (= (and d!2197049 c!1309663) b!7037805))

(assert (= (and d!2197049 (not c!1309663)) b!7037802))

(assert (= (and b!7037802 c!1309664) b!7037803))

(assert (= (and b!7037802 (not c!1309664)) b!7037804))

(assert (= (or b!7037805 b!7037803) bm!639183))

(declare-fun m!7747652 () Bool)

(assert (=> bm!639183 m!7747652))

(declare-fun m!7747654 () Bool)

(assert (=> b!7037805 m!7747654))

(declare-fun m!7747656 () Bool)

(assert (=> b!7037806 m!7747656))

(assert (=> b!7037640 d!2197049))

(declare-fun b!7037829 () Bool)

(declare-fun c!1309675 () Bool)

(assert (=> b!7037829 (= c!1309675 (is-Star!17474 (h!74274 (exprs!6970 lt!2521434))))))

(declare-fun e!4230849 () (Set Context!12940))

(declare-fun e!4230854 () (Set Context!12940))

(assert (=> b!7037829 (= e!4230849 e!4230854)))

(declare-fun b!7037830 () Bool)

(declare-fun call!639206 () (Set Context!12940))

(assert (=> b!7037830 (= e!4230854 call!639206)))

(declare-fun b!7037831 () Bool)

(declare-fun e!4230850 () (Set Context!12940))

(assert (=> b!7037831 (= e!4230850 (set.insert lt!2521418 (as set.empty (Set Context!12940))))))

(declare-fun bm!639196 () Bool)

(declare-fun call!639205 () (Set Context!12940))

(assert (=> bm!639196 (= call!639206 call!639205)))

(declare-fun call!639203 () List!67950)

(declare-fun bm!639197 () Bool)

(declare-fun c!1309676 () Bool)

(declare-fun call!639201 () (Set Context!12940))

(assert (=> bm!639197 (= call!639201 (derivationStepZipperDown!2138 (ite c!1309676 (regTwo!35461 (h!74274 (exprs!6970 lt!2521434))) (regOne!35460 (h!74274 (exprs!6970 lt!2521434)))) (ite c!1309676 lt!2521418 (Context!12941 call!639203)) (h!74276 s!7408)))))

(declare-fun b!7037832 () Bool)

(declare-fun e!4230851 () (Set Context!12940))

(declare-fun call!639204 () (Set Context!12940))

(assert (=> b!7037832 (= e!4230851 (set.union call!639204 call!639201))))

(declare-fun b!7037833 () Bool)

(declare-fun e!4230852 () (Set Context!12940))

(assert (=> b!7037833 (= e!4230852 e!4230849)))

(declare-fun c!1309679 () Bool)

(assert (=> b!7037833 (= c!1309679 (is-Concat!26319 (h!74274 (exprs!6970 lt!2521434))))))

(declare-fun c!1309678 () Bool)

(declare-fun bm!639198 () Bool)

(declare-fun $colon$colon!2581 (List!67950 Regex!17474) List!67950)

(assert (=> bm!639198 (= call!639203 ($colon$colon!2581 (exprs!6970 lt!2521418) (ite (or c!1309678 c!1309679) (regTwo!35460 (h!74274 (exprs!6970 lt!2521434))) (h!74274 (exprs!6970 lt!2521434)))))))

(declare-fun d!2197051 () Bool)

(declare-fun c!1309677 () Bool)

(assert (=> d!2197051 (= c!1309677 (and (is-ElementMatch!17474 (h!74274 (exprs!6970 lt!2521434))) (= (c!1309630 (h!74274 (exprs!6970 lt!2521434))) (h!74276 s!7408))))))

(assert (=> d!2197051 (= (derivationStepZipperDown!2138 (h!74274 (exprs!6970 lt!2521434)) lt!2521418 (h!74276 s!7408)) e!4230850)))

(declare-fun b!7037834 () Bool)

(assert (=> b!7037834 (= e!4230850 e!4230851)))

(assert (=> b!7037834 (= c!1309676 (is-Union!17474 (h!74274 (exprs!6970 lt!2521434))))))

(declare-fun b!7037835 () Bool)

(assert (=> b!7037835 (= e!4230849 call!639206)))

(declare-fun bm!639199 () Bool)

(assert (=> bm!639199 (= call!639205 call!639204)))

(declare-fun b!7037836 () Bool)

(declare-fun e!4230853 () Bool)

(assert (=> b!7037836 (= c!1309678 e!4230853)))

(declare-fun res!2872930 () Bool)

(assert (=> b!7037836 (=> (not res!2872930) (not e!4230853))))

(assert (=> b!7037836 (= res!2872930 (is-Concat!26319 (h!74274 (exprs!6970 lt!2521434))))))

(assert (=> b!7037836 (= e!4230851 e!4230852)))

(declare-fun bm!639200 () Bool)

(declare-fun call!639202 () List!67950)

(assert (=> bm!639200 (= call!639204 (derivationStepZipperDown!2138 (ite c!1309676 (regOne!35461 (h!74274 (exprs!6970 lt!2521434))) (ite c!1309678 (regTwo!35460 (h!74274 (exprs!6970 lt!2521434))) (ite c!1309679 (regOne!35460 (h!74274 (exprs!6970 lt!2521434))) (reg!17803 (h!74274 (exprs!6970 lt!2521434)))))) (ite (or c!1309676 c!1309678) lt!2521418 (Context!12941 call!639202)) (h!74276 s!7408)))))

(declare-fun b!7037837 () Bool)

(assert (=> b!7037837 (= e!4230852 (set.union call!639201 call!639205))))

(declare-fun bm!639201 () Bool)

(assert (=> bm!639201 (= call!639202 call!639203)))

(declare-fun b!7037838 () Bool)

(assert (=> b!7037838 (= e!4230854 (as set.empty (Set Context!12940)))))

(declare-fun b!7037839 () Bool)

(assert (=> b!7037839 (= e!4230853 (nullable!7185 (regOne!35460 (h!74274 (exprs!6970 lt!2521434)))))))

(assert (= (and d!2197051 c!1309677) b!7037831))

(assert (= (and d!2197051 (not c!1309677)) b!7037834))

(assert (= (and b!7037834 c!1309676) b!7037832))

(assert (= (and b!7037834 (not c!1309676)) b!7037836))

(assert (= (and b!7037836 res!2872930) b!7037839))

(assert (= (and b!7037836 c!1309678) b!7037837))

(assert (= (and b!7037836 (not c!1309678)) b!7037833))

(assert (= (and b!7037833 c!1309679) b!7037835))

(assert (= (and b!7037833 (not c!1309679)) b!7037829))

(assert (= (and b!7037829 c!1309675) b!7037830))

(assert (= (and b!7037829 (not c!1309675)) b!7037838))

(assert (= (or b!7037835 b!7037830) bm!639201))

(assert (= (or b!7037835 b!7037830) bm!639196))

(assert (= (or b!7037837 bm!639196) bm!639199))

(assert (= (or b!7037837 bm!639201) bm!639198))

(assert (= (or b!7037832 bm!639199) bm!639200))

(assert (= (or b!7037832 b!7037837) bm!639197))

(declare-fun m!7747658 () Bool)

(assert (=> bm!639198 m!7747658))

(declare-fun m!7747660 () Bool)

(assert (=> bm!639197 m!7747660))

(assert (=> b!7037831 m!7747288))

(declare-fun m!7747662 () Bool)

(assert (=> b!7037839 m!7747662))

(declare-fun m!7747664 () Bool)

(assert (=> bm!639200 m!7747664))

(assert (=> b!7037640 d!2197051))

(declare-fun d!2197053 () Bool)

(declare-fun c!1309680 () Bool)

(assert (=> d!2197053 (= c!1309680 (isEmpty!39570 s!7408))))

(declare-fun e!4230855 () Bool)

(assert (=> d!2197053 (= (matchZipper!3014 lt!2521447 s!7408) e!4230855)))

(declare-fun b!7037840 () Bool)

(assert (=> b!7037840 (= e!4230855 (nullableZipper!2587 lt!2521447))))

(declare-fun b!7037841 () Bool)

(assert (=> b!7037841 (= e!4230855 (matchZipper!3014 (derivationStepZipper!2930 lt!2521447 (head!14276 s!7408)) (tail!13570 s!7408)))))

(assert (= (and d!2197053 c!1309680) b!7037840))

(assert (= (and d!2197053 (not c!1309680)) b!7037841))

(assert (=> d!2197053 m!7747640))

(declare-fun m!7747666 () Bool)

(assert (=> b!7037840 m!7747666))

(assert (=> b!7037841 m!7747644))

(assert (=> b!7037841 m!7747644))

(declare-fun m!7747668 () Bool)

(assert (=> b!7037841 m!7747668))

(assert (=> b!7037841 m!7747648))

(assert (=> b!7037841 m!7747668))

(assert (=> b!7037841 m!7747648))

(declare-fun m!7747670 () Bool)

(assert (=> b!7037841 m!7747670))

(assert (=> b!7037639 d!2197053))

(declare-fun bs!1872822 () Bool)

(declare-fun d!2197055 () Bool)

(assert (= bs!1872822 (and d!2197055 b!7037639)))

(declare-fun lambda!415826 () Int)

(assert (=> bs!1872822 (= lambda!415826 lambda!415753)))

(assert (=> d!2197055 true))

(assert (=> d!2197055 (exists!3409 lt!2521438 lambda!415826)))

(declare-fun lt!2521667 () Unit!161628)

(declare-fun choose!53354 (List!67951 List!67952) Unit!161628)

(assert (=> d!2197055 (= lt!2521667 (choose!53354 lt!2521438 s!7408))))

(declare-fun content!13557 (List!67951) (Set Context!12940))

(assert (=> d!2197055 (matchZipper!3014 (content!13557 lt!2521438) s!7408)))

(assert (=> d!2197055 (= (lemmaZipperMatchesExistsMatchingContext!413 lt!2521438 s!7408) lt!2521667)))

(declare-fun bs!1872823 () Bool)

(assert (= bs!1872823 d!2197055))

(declare-fun m!7747672 () Bool)

(assert (=> bs!1872823 m!7747672))

(declare-fun m!7747674 () Bool)

(assert (=> bs!1872823 m!7747674))

(declare-fun m!7747676 () Bool)

(assert (=> bs!1872823 m!7747676))

(assert (=> bs!1872823 m!7747676))

(declare-fun m!7747678 () Bool)

(assert (=> bs!1872823 m!7747678))

(assert (=> b!7037639 d!2197055))

(declare-fun d!2197057 () Bool)

(declare-fun e!4230858 () Bool)

(assert (=> d!2197057 e!4230858))

(declare-fun res!2872933 () Bool)

(assert (=> d!2197057 (=> (not res!2872933) (not e!4230858))))

(declare-fun lt!2521670 () List!67951)

(declare-fun noDuplicate!2635 (List!67951) Bool)

(assert (=> d!2197057 (= res!2872933 (noDuplicate!2635 lt!2521670))))

(declare-fun choose!53355 ((Set Context!12940)) List!67951)

(assert (=> d!2197057 (= lt!2521670 (choose!53355 lt!2521442))))

(assert (=> d!2197057 (= (toList!10817 lt!2521442) lt!2521670)))

(declare-fun b!7037844 () Bool)

(assert (=> b!7037844 (= e!4230858 (= (content!13557 lt!2521670) lt!2521442))))

(assert (= (and d!2197057 res!2872933) b!7037844))

(declare-fun m!7747680 () Bool)

(assert (=> d!2197057 m!7747680))

(declare-fun m!7747682 () Bool)

(assert (=> d!2197057 m!7747682))

(declare-fun m!7747684 () Bool)

(assert (=> b!7037844 m!7747684))

(assert (=> b!7037639 d!2197057))

(declare-fun bs!1872824 () Bool)

(declare-fun d!2197059 () Bool)

(assert (= bs!1872824 (and d!2197059 b!7037639)))

(declare-fun lambda!415829 () Int)

(assert (=> bs!1872824 (not (= lambda!415829 lambda!415753))))

(declare-fun bs!1872825 () Bool)

(assert (= bs!1872825 (and d!2197059 d!2197055)))

(assert (=> bs!1872825 (not (= lambda!415829 lambda!415826))))

(assert (=> d!2197059 true))

(declare-fun order!28189 () Int)

(declare-fun dynLambda!27416 (Int Int) Int)

(assert (=> d!2197059 (< (dynLambda!27416 order!28189 lambda!415753) (dynLambda!27416 order!28189 lambda!415829))))

(declare-fun forall!16394 (List!67951 Int) Bool)

(assert (=> d!2197059 (= (exists!3409 lt!2521438 lambda!415753) (not (forall!16394 lt!2521438 lambda!415829)))))

(declare-fun bs!1872826 () Bool)

(assert (= bs!1872826 d!2197059))

(declare-fun m!7747686 () Bool)

(assert (=> bs!1872826 m!7747686))

(assert (=> b!7037639 d!2197059))

(declare-fun d!2197061 () Bool)

(declare-fun e!4230861 () Bool)

(assert (=> d!2197061 e!4230861))

(declare-fun res!2872936 () Bool)

(assert (=> d!2197061 (=> (not res!2872936) (not e!4230861))))

(declare-fun lt!2521673 () Context!12940)

(declare-fun dynLambda!27417 (Int Context!12940) Bool)

(assert (=> d!2197061 (= res!2872936 (dynLambda!27417 lambda!415753 lt!2521673))))

(declare-fun getWitness!1490 (List!67951 Int) Context!12940)

(assert (=> d!2197061 (= lt!2521673 (getWitness!1490 (toList!10817 lt!2521442) lambda!415753))))

(declare-fun exists!3411 ((Set Context!12940) Int) Bool)

(assert (=> d!2197061 (exists!3411 lt!2521442 lambda!415753)))

(assert (=> d!2197061 (= (getWitness!1488 lt!2521442 lambda!415753) lt!2521673)))

(declare-fun b!7037849 () Bool)

(assert (=> b!7037849 (= e!4230861 (set.member lt!2521673 lt!2521442))))

(assert (= (and d!2197061 res!2872936) b!7037849))

(declare-fun b_lambda!267073 () Bool)

(assert (=> (not b_lambda!267073) (not d!2197061)))

(declare-fun m!7747688 () Bool)

(assert (=> d!2197061 m!7747688))

(assert (=> d!2197061 m!7747394))

(assert (=> d!2197061 m!7747394))

(declare-fun m!7747690 () Bool)

(assert (=> d!2197061 m!7747690))

(declare-fun m!7747692 () Bool)

(assert (=> d!2197061 m!7747692))

(declare-fun m!7747694 () Bool)

(assert (=> b!7037849 m!7747694))

(assert (=> b!7037639 d!2197061))

(declare-fun d!2197063 () Bool)

(declare-fun lt!2521676 () Int)

(assert (=> d!2197063 (>= lt!2521676 0)))

(declare-fun e!4230864 () Int)

(assert (=> d!2197063 (= lt!2521676 e!4230864)))

(declare-fun c!1309685 () Bool)

(assert (=> d!2197063 (= c!1309685 (is-Cons!67827 (Cons!67827 lt!2521418 Nil!67827)))))

(assert (=> d!2197063 (= (zipperDepthTotal!537 (Cons!67827 lt!2521418 Nil!67827)) lt!2521676)))

(declare-fun b!7037854 () Bool)

(assert (=> b!7037854 (= e!4230864 (+ (contextDepthTotal!509 (h!74275 (Cons!67827 lt!2521418 Nil!67827))) (zipperDepthTotal!537 (t!381722 (Cons!67827 lt!2521418 Nil!67827)))))))

(declare-fun b!7037855 () Bool)

(assert (=> b!7037855 (= e!4230864 0)))

(assert (= (and d!2197063 c!1309685) b!7037854))

(assert (= (and d!2197063 (not c!1309685)) b!7037855))

(declare-fun m!7747696 () Bool)

(assert (=> b!7037854 m!7747696))

(declare-fun m!7747698 () Bool)

(assert (=> b!7037854 m!7747698))

(assert (=> b!7037643 d!2197063))

(assert (=> b!7037642 d!2197035))

(declare-fun d!2197065 () Bool)

(declare-fun e!4230870 () Bool)

(assert (=> d!2197065 e!4230870))

(declare-fun res!2872942 () Bool)

(assert (=> d!2197065 (=> (not res!2872942) (not e!4230870))))

(declare-fun lt!2521679 () List!67952)

(declare-fun content!13558 (List!67952) (Set C!35218))

(assert (=> d!2197065 (= res!2872942 (= (content!13558 lt!2521679) (set.union (content!13558 (_1!37350 lt!2521427)) (content!13558 (_2!37350 lt!2521427)))))))

(declare-fun e!4230869 () List!67952)

(assert (=> d!2197065 (= lt!2521679 e!4230869)))

(declare-fun c!1309688 () Bool)

(assert (=> d!2197065 (= c!1309688 (is-Nil!67828 (_1!37350 lt!2521427)))))

(assert (=> d!2197065 (= (++!15529 (_1!37350 lt!2521427) (_2!37350 lt!2521427)) lt!2521679)))

(declare-fun b!7037867 () Bool)

(assert (=> b!7037867 (= e!4230870 (or (not (= (_2!37350 lt!2521427) Nil!67828)) (= lt!2521679 (_1!37350 lt!2521427))))))

(declare-fun b!7037866 () Bool)

(declare-fun res!2872941 () Bool)

(assert (=> b!7037866 (=> (not res!2872941) (not e!4230870))))

(declare-fun size!41079 (List!67952) Int)

(assert (=> b!7037866 (= res!2872941 (= (size!41079 lt!2521679) (+ (size!41079 (_1!37350 lt!2521427)) (size!41079 (_2!37350 lt!2521427)))))))

(declare-fun b!7037865 () Bool)

(assert (=> b!7037865 (= e!4230869 (Cons!67828 (h!74276 (_1!37350 lt!2521427)) (++!15529 (t!381723 (_1!37350 lt!2521427)) (_2!37350 lt!2521427))))))

(declare-fun b!7037864 () Bool)

(assert (=> b!7037864 (= e!4230869 (_2!37350 lt!2521427))))

(assert (= (and d!2197065 c!1309688) b!7037864))

(assert (= (and d!2197065 (not c!1309688)) b!7037865))

(assert (= (and d!2197065 res!2872942) b!7037866))

(assert (= (and b!7037866 res!2872941) b!7037867))

(declare-fun m!7747700 () Bool)

(assert (=> d!2197065 m!7747700))

(declare-fun m!7747702 () Bool)

(assert (=> d!2197065 m!7747702))

(declare-fun m!7747704 () Bool)

(assert (=> d!2197065 m!7747704))

(declare-fun m!7747706 () Bool)

(assert (=> b!7037866 m!7747706))

(declare-fun m!7747708 () Bool)

(assert (=> b!7037866 m!7747708))

(declare-fun m!7747710 () Bool)

(assert (=> b!7037866 m!7747710))

(declare-fun m!7747712 () Bool)

(assert (=> b!7037865 m!7747712))

(assert (=> b!7037641 d!2197065))

(declare-fun d!2197067 () Bool)

(assert (=> d!2197067 (<= (contextDepthTotal!509 lt!2521434) (zipperDepthTotal!537 lt!2521426))))

(declare-fun lt!2521682 () Unit!161628)

(declare-fun choose!53356 (List!67951 Context!12940) Unit!161628)

(assert (=> d!2197067 (= lt!2521682 (choose!53356 lt!2521426 lt!2521434))))

(declare-fun contains!20464 (List!67951 Context!12940) Bool)

(assert (=> d!2197067 (contains!20464 lt!2521426 lt!2521434)))

(assert (=> d!2197067 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!77 lt!2521426 lt!2521434) lt!2521682)))

(declare-fun bs!1872827 () Bool)

(assert (= bs!1872827 d!2197067))

(assert (=> bs!1872827 m!7747300))

(assert (=> bs!1872827 m!7747294))

(declare-fun m!7747714 () Bool)

(assert (=> bs!1872827 m!7747714))

(declare-fun m!7747716 () Bool)

(assert (=> bs!1872827 m!7747716))

(assert (=> b!7037625 d!2197067))

(declare-fun d!2197069 () Bool)

(declare-fun choose!53357 ((Set Context!12940) Int) (Set Context!12940))

(assert (=> d!2197069 (= (map!15779 lt!2521446 lambda!415754) (choose!53357 lt!2521446 lambda!415754))))

(declare-fun bs!1872828 () Bool)

(assert (= bs!1872828 d!2197069))

(declare-fun m!7747718 () Bool)

(assert (=> bs!1872828 m!7747718))

(assert (=> b!7037625 d!2197069))

(declare-fun d!2197071 () Bool)

(declare-fun lt!2521685 () Int)

(assert (=> d!2197071 (>= lt!2521685 0)))

(declare-fun e!4230873 () Int)

(assert (=> d!2197071 (= lt!2521685 e!4230873)))

(declare-fun c!1309693 () Bool)

(assert (=> d!2197071 (= c!1309693 (is-Cons!67826 (exprs!6970 lt!2521434)))))

(assert (=> d!2197071 (= (contextDepthTotal!509 lt!2521434) lt!2521685)))

(declare-fun b!7037872 () Bool)

(declare-fun regexDepthTotal!310 (Regex!17474) Int)

(assert (=> b!7037872 (= e!4230873 (+ (regexDepthTotal!310 (h!74274 (exprs!6970 lt!2521434))) (contextDepthTotal!509 (Context!12941 (t!381721 (exprs!6970 lt!2521434))))))))

(declare-fun b!7037873 () Bool)

(assert (=> b!7037873 (= e!4230873 1)))

(assert (= (and d!2197071 c!1309693) b!7037872))

(assert (= (and d!2197071 (not c!1309693)) b!7037873))

(declare-fun m!7747720 () Bool)

(assert (=> b!7037872 m!7747720))

(declare-fun m!7747722 () Bool)

(assert (=> b!7037872 m!7747722))

(assert (=> b!7037625 d!2197071))

(assert (=> b!7037625 d!2197049))

(declare-fun b!7037874 () Bool)

(declare-fun e!4230875 () List!67950)

(assert (=> b!7037874 (= e!4230875 (exprs!6970 ct2!306))))

(declare-fun d!2197073 () Bool)

(declare-fun e!4230874 () Bool)

(assert (=> d!2197073 e!4230874))

(declare-fun res!2872944 () Bool)

(assert (=> d!2197073 (=> (not res!2872944) (not e!4230874))))

(declare-fun lt!2521686 () List!67950)

(assert (=> d!2197073 (= res!2872944 (= (content!13556 lt!2521686) (set.union (content!13556 lt!2521435) (content!13556 (exprs!6970 ct2!306)))))))

(assert (=> d!2197073 (= lt!2521686 e!4230875)))

(declare-fun c!1309694 () Bool)

(assert (=> d!2197073 (= c!1309694 (is-Nil!67826 lt!2521435))))

(assert (=> d!2197073 (= (++!15528 lt!2521435 (exprs!6970 ct2!306)) lt!2521686)))

(declare-fun b!7037875 () Bool)

(assert (=> b!7037875 (= e!4230875 (Cons!67826 (h!74274 lt!2521435) (++!15528 (t!381721 lt!2521435) (exprs!6970 ct2!306))))))

(declare-fun b!7037877 () Bool)

(assert (=> b!7037877 (= e!4230874 (or (not (= (exprs!6970 ct2!306) Nil!67826)) (= lt!2521686 lt!2521435)))))

(declare-fun b!7037876 () Bool)

(declare-fun res!2872943 () Bool)

(assert (=> b!7037876 (=> (not res!2872943) (not e!4230874))))

(assert (=> b!7037876 (= res!2872943 (= (size!41078 lt!2521686) (+ (size!41078 lt!2521435) (size!41078 (exprs!6970 ct2!306)))))))

(assert (= (and d!2197073 c!1309694) b!7037874))

(assert (= (and d!2197073 (not c!1309694)) b!7037875))

(assert (= (and d!2197073 res!2872944) b!7037876))

(assert (= (and b!7037876 res!2872943) b!7037877))

(declare-fun m!7747724 () Bool)

(assert (=> d!2197073 m!7747724))

(declare-fun m!7747726 () Bool)

(assert (=> d!2197073 m!7747726))

(assert (=> d!2197073 m!7747620))

(declare-fun m!7747728 () Bool)

(assert (=> b!7037875 m!7747728))

(declare-fun m!7747730 () Bool)

(assert (=> b!7037876 m!7747730))

(declare-fun m!7747732 () Bool)

(assert (=> b!7037876 m!7747732))

(assert (=> b!7037876 m!7747628))

(assert (=> b!7037625 d!2197073))

(declare-fun d!2197075 () Bool)

(assert (=> d!2197075 (= (map!15779 lt!2521446 lambda!415754) (set.insert (dynLambda!27415 lambda!415754 lt!2521418) (as set.empty (Set Context!12940))))))

(declare-fun lt!2521689 () Unit!161628)

(declare-fun choose!53358 ((Set Context!12940) Context!12940 Int) Unit!161628)

(assert (=> d!2197075 (= lt!2521689 (choose!53358 lt!2521446 lt!2521418 lambda!415754))))

(assert (=> d!2197075 (= lt!2521446 (set.insert lt!2521418 (as set.empty (Set Context!12940))))))

(assert (=> d!2197075 (= (lemmaMapOnSingletonSet!385 lt!2521446 lt!2521418 lambda!415754) lt!2521689)))

(declare-fun b_lambda!267075 () Bool)

(assert (=> (not b_lambda!267075) (not d!2197075)))

(declare-fun bs!1872829 () Bool)

(assert (= bs!1872829 d!2197075))

(declare-fun m!7747734 () Bool)

(assert (=> bs!1872829 m!7747734))

(assert (=> bs!1872829 m!7747290))

(declare-fun m!7747736 () Bool)

(assert (=> bs!1872829 m!7747736))

(declare-fun m!7747738 () Bool)

(assert (=> bs!1872829 m!7747738))

(assert (=> bs!1872829 m!7747736))

(assert (=> bs!1872829 m!7747288))

(assert (=> b!7037625 d!2197075))

(declare-fun d!2197077 () Bool)

(declare-fun lt!2521690 () Int)

(assert (=> d!2197077 (>= lt!2521690 0)))

(declare-fun e!4230876 () Int)

(assert (=> d!2197077 (= lt!2521690 e!4230876)))

(declare-fun c!1309695 () Bool)

(assert (=> d!2197077 (= c!1309695 (is-Cons!67826 (exprs!6970 lt!2521418)))))

(assert (=> d!2197077 (= (contextDepthTotal!509 lt!2521418) lt!2521690)))

(declare-fun b!7037878 () Bool)

(assert (=> b!7037878 (= e!4230876 (+ (regexDepthTotal!310 (h!74274 (exprs!6970 lt!2521418))) (contextDepthTotal!509 (Context!12941 (t!381721 (exprs!6970 lt!2521418))))))))

(declare-fun b!7037879 () Bool)

(assert (=> b!7037879 (= e!4230876 1)))

(assert (= (and d!2197077 c!1309695) b!7037878))

(assert (= (and d!2197077 (not c!1309695)) b!7037879))

(declare-fun m!7747740 () Bool)

(assert (=> b!7037878 m!7747740))

(declare-fun m!7747742 () Bool)

(assert (=> b!7037878 m!7747742))

(assert (=> b!7037625 d!2197077))

(declare-fun d!2197079 () Bool)

(declare-fun dynLambda!27418 (Int Context!12940) (Set Context!12940))

(assert (=> d!2197079 (= (flatMap!2421 lt!2521446 lambda!415756) (dynLambda!27418 lambda!415756 lt!2521418))))

(declare-fun lt!2521693 () Unit!161628)

(declare-fun choose!53359 ((Set Context!12940) Context!12940 Int) Unit!161628)

(assert (=> d!2197079 (= lt!2521693 (choose!53359 lt!2521446 lt!2521418 lambda!415756))))

(assert (=> d!2197079 (= lt!2521446 (set.insert lt!2521418 (as set.empty (Set Context!12940))))))

(assert (=> d!2197079 (= (lemmaFlatMapOnSingletonSet!1935 lt!2521446 lt!2521418 lambda!415756) lt!2521693)))

(declare-fun b_lambda!267077 () Bool)

(assert (=> (not b_lambda!267077) (not d!2197079)))

(declare-fun bs!1872830 () Bool)

(assert (= bs!1872830 d!2197079))

(assert (=> bs!1872830 m!7747282))

(declare-fun m!7747744 () Bool)

(assert (=> bs!1872830 m!7747744))

(declare-fun m!7747746 () Bool)

(assert (=> bs!1872830 m!7747746))

(assert (=> bs!1872830 m!7747288))

(assert (=> b!7037625 d!2197079))

(declare-fun d!2197081 () Bool)

(declare-fun e!4230877 () Bool)

(assert (=> d!2197081 e!4230877))

(declare-fun res!2872945 () Bool)

(assert (=> d!2197081 (=> (not res!2872945) (not e!4230877))))

(declare-fun lt!2521694 () List!67951)

(assert (=> d!2197081 (= res!2872945 (noDuplicate!2635 lt!2521694))))

(assert (=> d!2197081 (= lt!2521694 (choose!53355 z1!570))))

(assert (=> d!2197081 (= (toList!10817 z1!570) lt!2521694)))

(declare-fun b!7037880 () Bool)

(assert (=> b!7037880 (= e!4230877 (= (content!13557 lt!2521694) z1!570))))

(assert (= (and d!2197081 res!2872945) b!7037880))

(declare-fun m!7747748 () Bool)

(assert (=> d!2197081 m!7747748))

(declare-fun m!7747750 () Bool)

(assert (=> d!2197081 m!7747750))

(declare-fun m!7747752 () Bool)

(assert (=> b!7037880 m!7747752))

(assert (=> b!7037625 d!2197081))

(declare-fun d!2197083 () Bool)

(declare-fun lt!2521695 () Int)

(assert (=> d!2197083 (>= lt!2521695 0)))

(declare-fun e!4230878 () Int)

(assert (=> d!2197083 (= lt!2521695 e!4230878)))

(declare-fun c!1309696 () Bool)

(assert (=> d!2197083 (= c!1309696 (is-Cons!67827 lt!2521426))))

(assert (=> d!2197083 (= (zipperDepthTotal!537 lt!2521426) lt!2521695)))

(declare-fun b!7037881 () Bool)

(assert (=> b!7037881 (= e!4230878 (+ (contextDepthTotal!509 (h!74275 lt!2521426)) (zipperDepthTotal!537 (t!381722 lt!2521426))))))

(declare-fun b!7037882 () Bool)

(assert (=> b!7037882 (= e!4230878 0)))

(assert (= (and d!2197083 c!1309696) b!7037881))

(assert (= (and d!2197083 (not c!1309696)) b!7037882))

(declare-fun m!7747754 () Bool)

(assert (=> b!7037881 m!7747754))

(declare-fun m!7747756 () Bool)

(assert (=> b!7037881 m!7747756))

(assert (=> b!7037625 d!2197083))

(declare-fun d!2197085 () Bool)

(declare-fun choose!53360 ((Set Context!12940) Int) (Set Context!12940))

(assert (=> d!2197085 (= (flatMap!2421 lt!2521446 lambda!415756) (choose!53360 lt!2521446 lambda!415756))))

(declare-fun bs!1872831 () Bool)

(assert (= bs!1872831 d!2197085))

(declare-fun m!7747758 () Bool)

(assert (=> bs!1872831 m!7747758))

(assert (=> b!7037625 d!2197085))

(assert (=> b!7037625 d!2197031))

(assert (=> b!7037645 d!2197029))

(assert (=> b!7037645 d!2197031))

(declare-fun d!2197087 () Bool)

(assert (=> d!2197087 (= (isEmpty!39569 (exprs!6970 lt!2521434)) (is-Nil!67826 (exprs!6970 lt!2521434)))))

(assert (=> b!7037624 d!2197087))

(declare-fun d!2197089 () Bool)

(assert (=> d!2197089 (isDefined!13580 (findConcatSeparationZippers!395 lt!2521446 (set.insert ct2!306 (as set.empty (Set Context!12940))) Nil!67828 s!7408 s!7408))))

(declare-fun lt!2521698 () Unit!161628)

(declare-fun choose!53361 ((Set Context!12940) Context!12940 List!67952) Unit!161628)

(assert (=> d!2197089 (= lt!2521698 (choose!53361 lt!2521446 ct2!306 s!7408))))

(assert (=> d!2197089 (matchZipper!3014 (appendTo!595 lt!2521446 ct2!306) s!7408)))

(assert (=> d!2197089 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!383 lt!2521446 ct2!306 s!7408) lt!2521698)))

(declare-fun bs!1872832 () Bool)

(assert (= bs!1872832 d!2197089))

(assert (=> bs!1872832 m!7747340))

(declare-fun m!7747760 () Bool)

(assert (=> bs!1872832 m!7747760))

(declare-fun m!7747762 () Bool)

(assert (=> bs!1872832 m!7747762))

(assert (=> bs!1872832 m!7747760))

(declare-fun m!7747764 () Bool)

(assert (=> bs!1872832 m!7747764))

(declare-fun m!7747766 () Bool)

(assert (=> bs!1872832 m!7747766))

(declare-fun m!7747768 () Bool)

(assert (=> bs!1872832 m!7747768))

(assert (=> bs!1872832 m!7747340))

(assert (=> bs!1872832 m!7747766))

(assert (=> b!7037644 d!2197089))

(declare-fun d!2197091 () Bool)

(assert (=> d!2197091 (= (get!23767 lt!2521440) (v!53168 lt!2521440))))

(assert (=> b!7037644 d!2197091))

(declare-fun d!2197093 () Bool)

(declare-fun c!1309697 () Bool)

(assert (=> d!2197093 (= c!1309697 (isEmpty!39570 (_1!37350 lt!2521427)))))

(declare-fun e!4230879 () Bool)

(assert (=> d!2197093 (= (matchZipper!3014 lt!2521446 (_1!37350 lt!2521427)) e!4230879)))

(declare-fun b!7037883 () Bool)

(assert (=> b!7037883 (= e!4230879 (nullableZipper!2587 lt!2521446))))

(declare-fun b!7037884 () Bool)

(assert (=> b!7037884 (= e!4230879 (matchZipper!3014 (derivationStepZipper!2930 lt!2521446 (head!14276 (_1!37350 lt!2521427))) (tail!13570 (_1!37350 lt!2521427))))))

(assert (= (and d!2197093 c!1309697) b!7037883))

(assert (= (and d!2197093 (not c!1309697)) b!7037884))

(assert (=> d!2197093 m!7747370))

(declare-fun m!7747770 () Bool)

(assert (=> b!7037883 m!7747770))

(assert (=> b!7037884 m!7747354))

(assert (=> b!7037884 m!7747354))

(declare-fun m!7747772 () Bool)

(assert (=> b!7037884 m!7747772))

(assert (=> b!7037884 m!7747410))

(assert (=> b!7037884 m!7747772))

(assert (=> b!7037884 m!7747410))

(declare-fun m!7747774 () Bool)

(assert (=> b!7037884 m!7747774))

(assert (=> b!7037644 d!2197093))

(declare-fun b!7037903 () Bool)

(declare-fun e!4230890 () Option!16879)

(assert (=> b!7037903 (= e!4230890 (Some!16878 (tuple2!68095 Nil!67828 s!7408)))))

(declare-fun b!7037904 () Bool)

(declare-fun e!4230892 () Bool)

(declare-fun lt!2521707 () Option!16879)

(assert (=> b!7037904 (= e!4230892 (not (isDefined!13580 lt!2521707)))))

(declare-fun b!7037905 () Bool)

(declare-fun e!4230894 () Bool)

(assert (=> b!7037905 (= e!4230894 (matchZipper!3014 lt!2521415 s!7408))))

(declare-fun b!7037906 () Bool)

(declare-fun res!2872956 () Bool)

(declare-fun e!4230893 () Bool)

(assert (=> b!7037906 (=> (not res!2872956) (not e!4230893))))

(assert (=> b!7037906 (= res!2872956 (matchZipper!3014 lt!2521415 (_2!37350 (get!23767 lt!2521707))))))

(declare-fun d!2197095 () Bool)

(assert (=> d!2197095 e!4230892))

(declare-fun res!2872959 () Bool)

(assert (=> d!2197095 (=> res!2872959 e!4230892)))

(assert (=> d!2197095 (= res!2872959 e!4230893)))

(declare-fun res!2872958 () Bool)

(assert (=> d!2197095 (=> (not res!2872958) (not e!4230893))))

(assert (=> d!2197095 (= res!2872958 (isDefined!13580 lt!2521707))))

(assert (=> d!2197095 (= lt!2521707 e!4230890)))

(declare-fun c!1309703 () Bool)

(assert (=> d!2197095 (= c!1309703 e!4230894)))

(declare-fun res!2872960 () Bool)

(assert (=> d!2197095 (=> (not res!2872960) (not e!4230894))))

(assert (=> d!2197095 (= res!2872960 (matchZipper!3014 lt!2521446 Nil!67828))))

(assert (=> d!2197095 (= (++!15529 Nil!67828 s!7408) s!7408)))

(assert (=> d!2197095 (= (findConcatSeparationZippers!395 lt!2521446 lt!2521415 Nil!67828 s!7408 s!7408) lt!2521707)))

(declare-fun b!7037907 () Bool)

(declare-fun e!4230891 () Option!16879)

(assert (=> b!7037907 (= e!4230890 e!4230891)))

(declare-fun c!1309702 () Bool)

(assert (=> b!7037907 (= c!1309702 (is-Nil!67828 s!7408))))

(declare-fun b!7037908 () Bool)

(declare-fun lt!2521705 () Unit!161628)

(declare-fun lt!2521706 () Unit!161628)

(assert (=> b!7037908 (= lt!2521705 lt!2521706)))

(assert (=> b!7037908 (= (++!15529 (++!15529 Nil!67828 (Cons!67828 (h!74276 s!7408) Nil!67828)) (t!381723 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2931 (List!67952 C!35218 List!67952 List!67952) Unit!161628)

(assert (=> b!7037908 (= lt!2521706 (lemmaMoveElementToOtherListKeepsConcatEq!2931 Nil!67828 (h!74276 s!7408) (t!381723 s!7408) s!7408))))

(assert (=> b!7037908 (= e!4230891 (findConcatSeparationZippers!395 lt!2521446 lt!2521415 (++!15529 Nil!67828 (Cons!67828 (h!74276 s!7408) Nil!67828)) (t!381723 s!7408) s!7408))))

(declare-fun b!7037909 () Bool)

(assert (=> b!7037909 (= e!4230893 (= (++!15529 (_1!37350 (get!23767 lt!2521707)) (_2!37350 (get!23767 lt!2521707))) s!7408))))

(declare-fun b!7037910 () Bool)

(assert (=> b!7037910 (= e!4230891 None!16878)))

(declare-fun b!7037911 () Bool)

(declare-fun res!2872957 () Bool)

(assert (=> b!7037911 (=> (not res!2872957) (not e!4230893))))

(assert (=> b!7037911 (= res!2872957 (matchZipper!3014 lt!2521446 (_1!37350 (get!23767 lt!2521707))))))

(assert (= (and d!2197095 res!2872960) b!7037905))

(assert (= (and d!2197095 c!1309703) b!7037903))

(assert (= (and d!2197095 (not c!1309703)) b!7037907))

(assert (= (and b!7037907 c!1309702) b!7037910))

(assert (= (and b!7037907 (not c!1309702)) b!7037908))

(assert (= (and d!2197095 res!2872958) b!7037911))

(assert (= (and b!7037911 res!2872957) b!7037906))

(assert (= (and b!7037906 res!2872956) b!7037909))

(assert (= (and d!2197095 (not res!2872959)) b!7037904))

(declare-fun m!7747776 () Bool)

(assert (=> b!7037905 m!7747776))

(declare-fun m!7747778 () Bool)

(assert (=> b!7037908 m!7747778))

(assert (=> b!7037908 m!7747778))

(declare-fun m!7747780 () Bool)

(assert (=> b!7037908 m!7747780))

(declare-fun m!7747782 () Bool)

(assert (=> b!7037908 m!7747782))

(assert (=> b!7037908 m!7747778))

(declare-fun m!7747784 () Bool)

(assert (=> b!7037908 m!7747784))

(declare-fun m!7747786 () Bool)

(assert (=> b!7037911 m!7747786))

(declare-fun m!7747788 () Bool)

(assert (=> b!7037911 m!7747788))

(declare-fun m!7747790 () Bool)

(assert (=> b!7037904 m!7747790))

(assert (=> b!7037906 m!7747786))

(declare-fun m!7747792 () Bool)

(assert (=> b!7037906 m!7747792))

(assert (=> b!7037909 m!7747786))

(declare-fun m!7747794 () Bool)

(assert (=> b!7037909 m!7747794))

(assert (=> d!2197095 m!7747790))

(declare-fun m!7747796 () Bool)

(assert (=> d!2197095 m!7747796))

(declare-fun m!7747798 () Bool)

(assert (=> d!2197095 m!7747798))

(assert (=> b!7037644 d!2197095))

(declare-fun d!2197097 () Bool)

(declare-fun isEmpty!39573 (Option!16879) Bool)

(assert (=> d!2197097 (= (isDefined!13580 lt!2521440) (not (isEmpty!39573 lt!2521440)))))

(declare-fun bs!1872833 () Bool)

(assert (= bs!1872833 d!2197097))

(declare-fun m!7747800 () Bool)

(assert (=> bs!1872833 m!7747800))

(assert (=> b!7037644 d!2197097))

(declare-fun d!2197099 () Bool)

(declare-fun nullableFct!2735 (Regex!17474) Bool)

(assert (=> d!2197099 (= (nullable!7185 (h!74274 (exprs!6970 lt!2521434))) (nullableFct!2735 (h!74274 (exprs!6970 lt!2521434))))))

(declare-fun bs!1872834 () Bool)

(assert (= bs!1872834 d!2197099))

(declare-fun m!7747802 () Bool)

(assert (=> bs!1872834 m!7747802))

(assert (=> b!7037628 d!2197099))

(declare-fun d!2197101 () Bool)

(assert (=> d!2197101 (= (tail!13569 (exprs!6970 lt!2521434)) (t!381721 (exprs!6970 lt!2521434)))))

(assert (=> b!7037628 d!2197101))

(declare-fun d!2197103 () Bool)

(declare-fun c!1309704 () Bool)

(assert (=> d!2197103 (= c!1309704 (isEmpty!39570 (t!381723 s!7408)))))

(declare-fun e!4230895 () Bool)

(assert (=> d!2197103 (= (matchZipper!3014 lt!2521460 (t!381723 s!7408)) e!4230895)))

(declare-fun b!7037912 () Bool)

(assert (=> b!7037912 (= e!4230895 (nullableZipper!2587 lt!2521460))))

(declare-fun b!7037913 () Bool)

(assert (=> b!7037913 (= e!4230895 (matchZipper!3014 (derivationStepZipper!2930 lt!2521460 (head!14276 (t!381723 s!7408))) (tail!13570 (t!381723 s!7408))))))

(assert (= (and d!2197103 c!1309704) b!7037912))

(assert (= (and d!2197103 (not c!1309704)) b!7037913))

(assert (=> d!2197103 m!7747566))

(declare-fun m!7747804 () Bool)

(assert (=> b!7037912 m!7747804))

(assert (=> b!7037913 m!7747570))

(assert (=> b!7037913 m!7747570))

(declare-fun m!7747806 () Bool)

(assert (=> b!7037913 m!7747806))

(assert (=> b!7037913 m!7747574))

(assert (=> b!7037913 m!7747806))

(assert (=> b!7037913 m!7747574))

(declare-fun m!7747808 () Bool)

(assert (=> b!7037913 m!7747808))

(assert (=> b!7037648 d!2197103))

(declare-fun d!2197105 () Bool)

(declare-fun c!1309705 () Bool)

(assert (=> d!2197105 (= c!1309705 (isEmpty!39570 (t!381723 s!7408)))))

(declare-fun e!4230896 () Bool)

(assert (=> d!2197105 (= (matchZipper!3014 lt!2521450 (t!381723 s!7408)) e!4230896)))

(declare-fun b!7037914 () Bool)

(assert (=> b!7037914 (= e!4230896 (nullableZipper!2587 lt!2521450))))

(declare-fun b!7037915 () Bool)

(assert (=> b!7037915 (= e!4230896 (matchZipper!3014 (derivationStepZipper!2930 lt!2521450 (head!14276 (t!381723 s!7408))) (tail!13570 (t!381723 s!7408))))))

(assert (= (and d!2197105 c!1309705) b!7037914))

(assert (= (and d!2197105 (not c!1309705)) b!7037915))

(assert (=> d!2197105 m!7747566))

(declare-fun m!7747810 () Bool)

(assert (=> b!7037914 m!7747810))

(assert (=> b!7037915 m!7747570))

(assert (=> b!7037915 m!7747570))

(declare-fun m!7747812 () Bool)

(assert (=> b!7037915 m!7747812))

(assert (=> b!7037915 m!7747574))

(assert (=> b!7037915 m!7747812))

(assert (=> b!7037915 m!7747574))

(declare-fun m!7747814 () Bool)

(assert (=> b!7037915 m!7747814))

(assert (=> b!7037648 d!2197105))

(declare-fun e!4230899 () Bool)

(declare-fun d!2197107 () Bool)

(assert (=> d!2197107 (= (matchZipper!3014 (set.union lt!2521412 lt!2521430) (t!381723 s!7408)) e!4230899)))

(declare-fun res!2872963 () Bool)

(assert (=> d!2197107 (=> res!2872963 e!4230899)))

(assert (=> d!2197107 (= res!2872963 (matchZipper!3014 lt!2521412 (t!381723 s!7408)))))

(declare-fun lt!2521710 () Unit!161628)

(declare-fun choose!53362 ((Set Context!12940) (Set Context!12940) List!67952) Unit!161628)

(assert (=> d!2197107 (= lt!2521710 (choose!53362 lt!2521412 lt!2521430 (t!381723 s!7408)))))

(assert (=> d!2197107 (= (lemmaZipperConcatMatchesSameAsBothZippers!1547 lt!2521412 lt!2521430 (t!381723 s!7408)) lt!2521710)))

(declare-fun b!7037918 () Bool)

(assert (=> b!7037918 (= e!4230899 (matchZipper!3014 lt!2521430 (t!381723 s!7408)))))

(assert (= (and d!2197107 (not res!2872963)) b!7037918))

(declare-fun m!7747816 () Bool)

(assert (=> d!2197107 m!7747816))

(assert (=> d!2197107 m!7747372))

(declare-fun m!7747818 () Bool)

(assert (=> d!2197107 m!7747818))

(assert (=> b!7037918 m!7747326))

(assert (=> b!7037648 d!2197107))

(declare-fun d!2197109 () Bool)

(declare-fun c!1309706 () Bool)

(assert (=> d!2197109 (= c!1309706 (isEmpty!39570 (t!381723 s!7408)))))

(declare-fun e!4230900 () Bool)

(assert (=> d!2197109 (= (matchZipper!3014 lt!2521412 (t!381723 s!7408)) e!4230900)))

(declare-fun b!7037919 () Bool)

(assert (=> b!7037919 (= e!4230900 (nullableZipper!2587 lt!2521412))))

(declare-fun b!7037920 () Bool)

(assert (=> b!7037920 (= e!4230900 (matchZipper!3014 (derivationStepZipper!2930 lt!2521412 (head!14276 (t!381723 s!7408))) (tail!13570 (t!381723 s!7408))))))

(assert (= (and d!2197109 c!1309706) b!7037919))

(assert (= (and d!2197109 (not c!1309706)) b!7037920))

(assert (=> d!2197109 m!7747566))

(declare-fun m!7747820 () Bool)

(assert (=> b!7037919 m!7747820))

(assert (=> b!7037920 m!7747570))

(assert (=> b!7037920 m!7747570))

(declare-fun m!7747822 () Bool)

(assert (=> b!7037920 m!7747822))

(assert (=> b!7037920 m!7747574))

(assert (=> b!7037920 m!7747822))

(assert (=> b!7037920 m!7747574))

(declare-fun m!7747824 () Bool)

(assert (=> b!7037920 m!7747824))

(assert (=> b!7037648 d!2197109))

(assert (=> b!7037648 d!2197031))

(declare-fun bs!1872835 () Bool)

(declare-fun d!2197111 () Bool)

(assert (= bs!1872835 (and d!2197111 b!7037649)))

(declare-fun lambda!415832 () Int)

(assert (=> bs!1872835 (= lambda!415832 lambda!415756)))

(assert (=> d!2197111 true))

(assert (=> d!2197111 (= (derivationStepZipper!2930 lt!2521406 (h!74276 s!7408)) (flatMap!2421 lt!2521406 lambda!415832))))

(declare-fun bs!1872836 () Bool)

(assert (= bs!1872836 d!2197111))

(declare-fun m!7747826 () Bool)

(assert (=> bs!1872836 m!7747826))

(assert (=> b!7037647 d!2197111))

(declare-fun b!7037923 () Bool)

(declare-fun e!4230902 () (Set Context!12940))

(declare-fun e!4230901 () (Set Context!12940))

(assert (=> b!7037923 (= e!4230902 e!4230901)))

(declare-fun c!1309710 () Bool)

(assert (=> b!7037923 (= c!1309710 (is-Cons!67826 (exprs!6970 lt!2521454)))))

(declare-fun d!2197113 () Bool)

(declare-fun c!1309709 () Bool)

(declare-fun e!4230903 () Bool)

(assert (=> d!2197113 (= c!1309709 e!4230903)))

(declare-fun res!2872964 () Bool)

(assert (=> d!2197113 (=> (not res!2872964) (not e!4230903))))

(assert (=> d!2197113 (= res!2872964 (is-Cons!67826 (exprs!6970 lt!2521454)))))

(assert (=> d!2197113 (= (derivationStepZipperUp!2084 lt!2521454 (h!74276 s!7408)) e!4230902)))

(declare-fun b!7037924 () Bool)

(declare-fun call!639207 () (Set Context!12940))

(assert (=> b!7037924 (= e!4230901 call!639207)))

(declare-fun b!7037925 () Bool)

(assert (=> b!7037925 (= e!4230901 (as set.empty (Set Context!12940)))))

(declare-fun bm!639202 () Bool)

(assert (=> bm!639202 (= call!639207 (derivationStepZipperDown!2138 (h!74274 (exprs!6970 lt!2521454)) (Context!12941 (t!381721 (exprs!6970 lt!2521454))) (h!74276 s!7408)))))

(declare-fun b!7037926 () Bool)

(assert (=> b!7037926 (= e!4230902 (set.union call!639207 (derivationStepZipperUp!2084 (Context!12941 (t!381721 (exprs!6970 lt!2521454))) (h!74276 s!7408))))))

(declare-fun b!7037927 () Bool)

(assert (=> b!7037927 (= e!4230903 (nullable!7185 (h!74274 (exprs!6970 lt!2521454))))))

(assert (= (and d!2197113 res!2872964) b!7037927))

(assert (= (and d!2197113 c!1309709) b!7037926))

(assert (= (and d!2197113 (not c!1309709)) b!7037923))

(assert (= (and b!7037923 c!1309710) b!7037924))

(assert (= (and b!7037923 (not c!1309710)) b!7037925))

(assert (= (or b!7037926 b!7037924) bm!639202))

(declare-fun m!7747828 () Bool)

(assert (=> bm!639202 m!7747828))

(declare-fun m!7747830 () Bool)

(assert (=> b!7037926 m!7747830))

(declare-fun m!7747832 () Bool)

(assert (=> b!7037927 m!7747832))

(assert (=> b!7037647 d!2197113))

(declare-fun d!2197115 () Bool)

(assert (=> d!2197115 (= (flatMap!2421 lt!2521406 lambda!415756) (choose!53360 lt!2521406 lambda!415756))))

(declare-fun bs!1872837 () Bool)

(assert (= bs!1872837 d!2197115))

(declare-fun m!7747834 () Bool)

(assert (=> bs!1872837 m!7747834))

(assert (=> b!7037647 d!2197115))

(declare-fun d!2197117 () Bool)

(assert (=> d!2197117 (= (flatMap!2421 lt!2521406 lambda!415756) (dynLambda!27418 lambda!415756 lt!2521454))))

(declare-fun lt!2521711 () Unit!161628)

(assert (=> d!2197117 (= lt!2521711 (choose!53359 lt!2521406 lt!2521454 lambda!415756))))

(assert (=> d!2197117 (= lt!2521406 (set.insert lt!2521454 (as set.empty (Set Context!12940))))))

(assert (=> d!2197117 (= (lemmaFlatMapOnSingletonSet!1935 lt!2521406 lt!2521454 lambda!415756) lt!2521711)))

(declare-fun b_lambda!267079 () Bool)

(assert (=> (not b_lambda!267079) (not d!2197117)))

(declare-fun bs!1872838 () Bool)

(assert (= bs!1872838 d!2197117))

(assert (=> bs!1872838 m!7747328))

(declare-fun m!7747836 () Bool)

(assert (=> bs!1872838 m!7747836))

(declare-fun m!7747838 () Bool)

(assert (=> bs!1872838 m!7747838))

(assert (=> bs!1872838 m!7747334))

(assert (=> b!7037647 d!2197117))

(assert (=> b!7037647 d!2197031))

(declare-fun bs!1872839 () Bool)

(declare-fun d!2197119 () Bool)

(assert (= bs!1872839 (and d!2197119 b!7037649)))

(declare-fun lambda!415833 () Int)

(assert (=> bs!1872839 (= lambda!415833 lambda!415756)))

(declare-fun bs!1872840 () Bool)

(assert (= bs!1872840 (and d!2197119 d!2197111)))

(assert (=> bs!1872840 (= lambda!415833 lambda!415832)))

(assert (=> d!2197119 true))

(assert (=> d!2197119 (= (derivationStepZipper!2930 lt!2521423 (h!74276 s!7408)) (flatMap!2421 lt!2521423 lambda!415833))))

(declare-fun bs!1872841 () Bool)

(assert (= bs!1872841 d!2197119))

(declare-fun m!7747840 () Bool)

(assert (=> bs!1872841 m!7747840))

(assert (=> b!7037626 d!2197119))

(declare-fun b!7037928 () Bool)

(declare-fun e!4230905 () (Set Context!12940))

(declare-fun e!4230904 () (Set Context!12940))

(assert (=> b!7037928 (= e!4230905 e!4230904)))

(declare-fun c!1309712 () Bool)

(assert (=> b!7037928 (= c!1309712 (is-Cons!67826 (exprs!6970 lt!2521434)))))

(declare-fun d!2197121 () Bool)

(declare-fun c!1309711 () Bool)

(declare-fun e!4230906 () Bool)

(assert (=> d!2197121 (= c!1309711 e!4230906)))

(declare-fun res!2872965 () Bool)

(assert (=> d!2197121 (=> (not res!2872965) (not e!4230906))))

(assert (=> d!2197121 (= res!2872965 (is-Cons!67826 (exprs!6970 lt!2521434)))))

(assert (=> d!2197121 (= (derivationStepZipperUp!2084 lt!2521434 (h!74276 s!7408)) e!4230905)))

(declare-fun b!7037929 () Bool)

(declare-fun call!639208 () (Set Context!12940))

(assert (=> b!7037929 (= e!4230904 call!639208)))

(declare-fun b!7037930 () Bool)

(assert (=> b!7037930 (= e!4230904 (as set.empty (Set Context!12940)))))

(declare-fun bm!639203 () Bool)

(assert (=> bm!639203 (= call!639208 (derivationStepZipperDown!2138 (h!74274 (exprs!6970 lt!2521434)) (Context!12941 (t!381721 (exprs!6970 lt!2521434))) (h!74276 s!7408)))))

(declare-fun b!7037931 () Bool)

(assert (=> b!7037931 (= e!4230905 (set.union call!639208 (derivationStepZipperUp!2084 (Context!12941 (t!381721 (exprs!6970 lt!2521434))) (h!74276 s!7408))))))

(declare-fun b!7037932 () Bool)

(assert (=> b!7037932 (= e!4230906 (nullable!7185 (h!74274 (exprs!6970 lt!2521434))))))

(assert (= (and d!2197121 res!2872965) b!7037932))

(assert (= (and d!2197121 c!1309711) b!7037931))

(assert (= (and d!2197121 (not c!1309711)) b!7037928))

(assert (= (and b!7037928 c!1309712) b!7037929))

(assert (= (and b!7037928 (not c!1309712)) b!7037930))

(assert (= (or b!7037931 b!7037929) bm!639203))

(declare-fun m!7747842 () Bool)

(assert (=> bm!639203 m!7747842))

(declare-fun m!7747844 () Bool)

(assert (=> b!7037931 m!7747844))

(assert (=> b!7037932 m!7747304))

(assert (=> b!7037626 d!2197121))

(declare-fun d!2197123 () Bool)

(assert (=> d!2197123 (= (flatMap!2421 lt!2521423 lambda!415756) (choose!53360 lt!2521423 lambda!415756))))

(declare-fun bs!1872842 () Bool)

(assert (= bs!1872842 d!2197123))

(declare-fun m!7747846 () Bool)

(assert (=> bs!1872842 m!7747846))

(assert (=> b!7037626 d!2197123))

(declare-fun d!2197125 () Bool)

(assert (=> d!2197125 (= (flatMap!2421 lt!2521423 lambda!415756) (dynLambda!27418 lambda!415756 lt!2521434))))

(declare-fun lt!2521712 () Unit!161628)

(assert (=> d!2197125 (= lt!2521712 (choose!53359 lt!2521423 lt!2521434 lambda!415756))))

(assert (=> d!2197125 (= lt!2521423 (set.insert lt!2521434 (as set.empty (Set Context!12940))))))

(assert (=> d!2197125 (= (lemmaFlatMapOnSingletonSet!1935 lt!2521423 lt!2521434 lambda!415756) lt!2521712)))

(declare-fun b_lambda!267081 () Bool)

(assert (=> (not b_lambda!267081) (not d!2197125)))

(declare-fun bs!1872843 () Bool)

(assert (= bs!1872843 d!2197125))

(assert (=> bs!1872843 m!7747364))

(declare-fun m!7747848 () Bool)

(assert (=> bs!1872843 m!7747848))

(declare-fun m!7747850 () Bool)

(assert (=> bs!1872843 m!7747850))

(assert (=> bs!1872843 m!7747360))

(assert (=> b!7037626 d!2197125))

(assert (=> b!7037646 d!2197079))

(declare-fun d!2197127 () Bool)

(assert (=> d!2197127 (= (head!14276 (_1!37350 lt!2521427)) (h!74276 (_1!37350 lt!2521427)))))

(assert (=> b!7037646 d!2197127))

(declare-fun b!7037933 () Bool)

(declare-fun e!4230908 () (Set Context!12940))

(declare-fun e!4230907 () (Set Context!12940))

(assert (=> b!7037933 (= e!4230908 e!4230907)))

(declare-fun c!1309714 () Bool)

(assert (=> b!7037933 (= c!1309714 (is-Cons!67826 (exprs!6970 lt!2521418)))))

(declare-fun d!2197129 () Bool)

(declare-fun c!1309713 () Bool)

(declare-fun e!4230909 () Bool)

(assert (=> d!2197129 (= c!1309713 e!4230909)))

(declare-fun res!2872966 () Bool)

(assert (=> d!2197129 (=> (not res!2872966) (not e!4230909))))

(assert (=> d!2197129 (= res!2872966 (is-Cons!67826 (exprs!6970 lt!2521418)))))

(assert (=> d!2197129 (= (derivationStepZipperUp!2084 lt!2521418 lt!2521441) e!4230908)))

(declare-fun b!7037934 () Bool)

(declare-fun call!639209 () (Set Context!12940))

(assert (=> b!7037934 (= e!4230907 call!639209)))

(declare-fun b!7037935 () Bool)

(assert (=> b!7037935 (= e!4230907 (as set.empty (Set Context!12940)))))

(declare-fun bm!639204 () Bool)

(assert (=> bm!639204 (= call!639209 (derivationStepZipperDown!2138 (h!74274 (exprs!6970 lt!2521418)) (Context!12941 (t!381721 (exprs!6970 lt!2521418))) lt!2521441))))

(declare-fun b!7037936 () Bool)

(assert (=> b!7037936 (= e!4230908 (set.union call!639209 (derivationStepZipperUp!2084 (Context!12941 (t!381721 (exprs!6970 lt!2521418))) lt!2521441)))))

(declare-fun b!7037937 () Bool)

(assert (=> b!7037937 (= e!4230909 (nullable!7185 (h!74274 (exprs!6970 lt!2521418))))))

(assert (= (and d!2197129 res!2872966) b!7037937))

(assert (= (and d!2197129 c!1309713) b!7037936))

(assert (= (and d!2197129 (not c!1309713)) b!7037933))

(assert (= (and b!7037933 c!1309714) b!7037934))

(assert (= (and b!7037933 (not c!1309714)) b!7037935))

(assert (= (or b!7037936 b!7037934) bm!639204))

(declare-fun m!7747852 () Bool)

(assert (=> bm!639204 m!7747852))

(declare-fun m!7747854 () Bool)

(assert (=> b!7037936 m!7747854))

(assert (=> b!7037937 m!7747656))

(assert (=> b!7037646 d!2197129))

(assert (=> b!7037646 d!2197049))

(declare-fun bs!1872844 () Bool)

(declare-fun d!2197131 () Bool)

(assert (= bs!1872844 (and d!2197131 b!7037649)))

(declare-fun lambda!415834 () Int)

(assert (=> bs!1872844 (= (= lt!2521441 (h!74276 s!7408)) (= lambda!415834 lambda!415756))))

(declare-fun bs!1872845 () Bool)

(assert (= bs!1872845 (and d!2197131 d!2197111)))

(assert (=> bs!1872845 (= (= lt!2521441 (h!74276 s!7408)) (= lambda!415834 lambda!415832))))

(declare-fun bs!1872846 () Bool)

(assert (= bs!1872846 (and d!2197131 d!2197119)))

(assert (=> bs!1872846 (= (= lt!2521441 (h!74276 s!7408)) (= lambda!415834 lambda!415833))))

(assert (=> d!2197131 true))

(assert (=> d!2197131 (= (derivationStepZipper!2930 lt!2521446 lt!2521441) (flatMap!2421 lt!2521446 lambda!415834))))

(declare-fun bs!1872847 () Bool)

(assert (= bs!1872847 d!2197131))

(declare-fun m!7747856 () Bool)

(assert (=> bs!1872847 m!7747856))

(assert (=> b!7037646 d!2197131))

(assert (=> b!7037646 d!2197085))

(declare-fun d!2197133 () Bool)

(declare-fun c!1309715 () Bool)

(assert (=> d!2197133 (= c!1309715 (isEmpty!39570 lt!2521417))))

(declare-fun e!4230910 () Bool)

(assert (=> d!2197133 (= (matchZipper!3014 lt!2521429 lt!2521417) e!4230910)))

(declare-fun b!7037938 () Bool)

(assert (=> b!7037938 (= e!4230910 (nullableZipper!2587 lt!2521429))))

(declare-fun b!7037939 () Bool)

(assert (=> b!7037939 (= e!4230910 (matchZipper!3014 (derivationStepZipper!2930 lt!2521429 (head!14276 lt!2521417)) (tail!13570 lt!2521417)))))

(assert (= (and d!2197133 c!1309715) b!7037938))

(assert (= (and d!2197133 (not c!1309715)) b!7037939))

(assert (=> d!2197133 m!7747584))

(declare-fun m!7747858 () Bool)

(assert (=> b!7037938 m!7747858))

(assert (=> b!7037939 m!7747588))

(assert (=> b!7037939 m!7747588))

(declare-fun m!7747860 () Bool)

(assert (=> b!7037939 m!7747860))

(assert (=> b!7037939 m!7747592))

(assert (=> b!7037939 m!7747860))

(assert (=> b!7037939 m!7747592))

(declare-fun m!7747862 () Bool)

(assert (=> b!7037939 m!7747862))

(assert (=> b!7037651 d!2197133))

(declare-fun d!2197135 () Bool)

(declare-fun c!1309716 () Bool)

(assert (=> d!2197135 (= c!1309716 (isEmpty!39570 lt!2521417))))

(declare-fun e!4230911 () Bool)

(assert (=> d!2197135 (= (matchZipper!3014 lt!2521443 lt!2521417) e!4230911)))

(declare-fun b!7037940 () Bool)

(assert (=> b!7037940 (= e!4230911 (nullableZipper!2587 lt!2521443))))

(declare-fun b!7037941 () Bool)

(assert (=> b!7037941 (= e!4230911 (matchZipper!3014 (derivationStepZipper!2930 lt!2521443 (head!14276 lt!2521417)) (tail!13570 lt!2521417)))))

(assert (= (and d!2197135 c!1309716) b!7037940))

(assert (= (and d!2197135 (not c!1309716)) b!7037941))

(assert (=> d!2197135 m!7747584))

(declare-fun m!7747864 () Bool)

(assert (=> b!7037940 m!7747864))

(assert (=> b!7037941 m!7747588))

(assert (=> b!7037941 m!7747588))

(declare-fun m!7747866 () Bool)

(assert (=> b!7037941 m!7747866))

(assert (=> b!7037941 m!7747592))

(assert (=> b!7037941 m!7747866))

(assert (=> b!7037941 m!7747592))

(declare-fun m!7747868 () Bool)

(assert (=> b!7037941 m!7747868))

(assert (=> b!7037651 d!2197135))

(declare-fun d!2197137 () Bool)

(declare-fun c!1309717 () Bool)

(assert (=> d!2197137 (= c!1309717 (isEmpty!39570 (_1!37350 lt!2521427)))))

(declare-fun e!4230912 () Bool)

(assert (=> d!2197137 (= (matchZipper!3014 lt!2521423 (_1!37350 lt!2521427)) e!4230912)))

(declare-fun b!7037942 () Bool)

(assert (=> b!7037942 (= e!4230912 (nullableZipper!2587 lt!2521423))))

(declare-fun b!7037943 () Bool)

(assert (=> b!7037943 (= e!4230912 (matchZipper!3014 (derivationStepZipper!2930 lt!2521423 (head!14276 (_1!37350 lt!2521427))) (tail!13570 (_1!37350 lt!2521427))))))

(assert (= (and d!2197137 c!1309717) b!7037942))

(assert (= (and d!2197137 (not c!1309717)) b!7037943))

(assert (=> d!2197137 m!7747370))

(declare-fun m!7747870 () Bool)

(assert (=> b!7037942 m!7747870))

(assert (=> b!7037943 m!7747354))

(assert (=> b!7037943 m!7747354))

(declare-fun m!7747872 () Bool)

(assert (=> b!7037943 m!7747872))

(assert (=> b!7037943 m!7747410))

(assert (=> b!7037943 m!7747872))

(assert (=> b!7037943 m!7747410))

(declare-fun m!7747874 () Bool)

(assert (=> b!7037943 m!7747874))

(assert (=> b!7037651 d!2197137))

(declare-fun e!4230913 () Bool)

(declare-fun d!2197139 () Bool)

(assert (=> d!2197139 (= (matchZipper!3014 (set.union lt!2521429 lt!2521445) lt!2521417) e!4230913)))

(declare-fun res!2872967 () Bool)

(assert (=> d!2197139 (=> res!2872967 e!4230913)))

(assert (=> d!2197139 (= res!2872967 (matchZipper!3014 lt!2521429 lt!2521417))))

(declare-fun lt!2521713 () Unit!161628)

(assert (=> d!2197139 (= lt!2521713 (choose!53362 lt!2521429 lt!2521445 lt!2521417))))

(assert (=> d!2197139 (= (lemmaZipperConcatMatchesSameAsBothZippers!1547 lt!2521429 lt!2521445 lt!2521417) lt!2521713)))

(declare-fun b!7037944 () Bool)

(assert (=> b!7037944 (= e!4230913 (matchZipper!3014 lt!2521445 lt!2521417))))

(assert (= (and d!2197139 (not res!2872967)) b!7037944))

(declare-fun m!7747876 () Bool)

(assert (=> d!2197139 m!7747876))

(assert (=> d!2197139 m!7747408))

(declare-fun m!7747878 () Bool)

(assert (=> d!2197139 m!7747878))

(assert (=> b!7037944 m!7747350))

(assert (=> b!7037651 d!2197139))

(declare-fun d!2197141 () Bool)

(assert (=> d!2197141 (= (tail!13570 (_1!37350 lt!2521427)) (t!381723 (_1!37350 lt!2521427)))))

(assert (=> b!7037651 d!2197141))

(assert (=> b!7037630 d!2197029))

(assert (=> b!7037650 d!2197031))

(assert (=> b!7037650 d!2197113))

(assert (=> b!7037650 d!2197073))

(declare-fun b!7037945 () Bool)

(declare-fun c!1309718 () Bool)

(assert (=> b!7037945 (= c!1309718 (is-Star!17474 (h!74274 (exprs!6970 lt!2521434))))))

(declare-fun e!4230914 () (Set Context!12940))

(declare-fun e!4230919 () (Set Context!12940))

(assert (=> b!7037945 (= e!4230914 e!4230919)))

(declare-fun b!7037946 () Bool)

(declare-fun call!639215 () (Set Context!12940))

(assert (=> b!7037946 (= e!4230919 call!639215)))

(declare-fun b!7037947 () Bool)

(declare-fun e!4230915 () (Set Context!12940))

(assert (=> b!7037947 (= e!4230915 (set.insert lt!2521454 (as set.empty (Set Context!12940))))))

(declare-fun bm!639205 () Bool)

(declare-fun call!639214 () (Set Context!12940))

(assert (=> bm!639205 (= call!639215 call!639214)))

(declare-fun call!639212 () List!67950)

(declare-fun c!1309719 () Bool)

(declare-fun bm!639206 () Bool)

(declare-fun call!639210 () (Set Context!12940))

(assert (=> bm!639206 (= call!639210 (derivationStepZipperDown!2138 (ite c!1309719 (regTwo!35461 (h!74274 (exprs!6970 lt!2521434))) (regOne!35460 (h!74274 (exprs!6970 lt!2521434)))) (ite c!1309719 lt!2521454 (Context!12941 call!639212)) (h!74276 s!7408)))))

(declare-fun b!7037948 () Bool)

(declare-fun e!4230916 () (Set Context!12940))

(declare-fun call!639213 () (Set Context!12940))

(assert (=> b!7037948 (= e!4230916 (set.union call!639213 call!639210))))

(declare-fun b!7037949 () Bool)

(declare-fun e!4230917 () (Set Context!12940))

(assert (=> b!7037949 (= e!4230917 e!4230914)))

(declare-fun c!1309722 () Bool)

(assert (=> b!7037949 (= c!1309722 (is-Concat!26319 (h!74274 (exprs!6970 lt!2521434))))))

(declare-fun bm!639207 () Bool)

(declare-fun c!1309721 () Bool)

(assert (=> bm!639207 (= call!639212 ($colon$colon!2581 (exprs!6970 lt!2521454) (ite (or c!1309721 c!1309722) (regTwo!35460 (h!74274 (exprs!6970 lt!2521434))) (h!74274 (exprs!6970 lt!2521434)))))))

(declare-fun d!2197143 () Bool)

(declare-fun c!1309720 () Bool)

(assert (=> d!2197143 (= c!1309720 (and (is-ElementMatch!17474 (h!74274 (exprs!6970 lt!2521434))) (= (c!1309630 (h!74274 (exprs!6970 lt!2521434))) (h!74276 s!7408))))))

(assert (=> d!2197143 (= (derivationStepZipperDown!2138 (h!74274 (exprs!6970 lt!2521434)) lt!2521454 (h!74276 s!7408)) e!4230915)))

(declare-fun b!7037950 () Bool)

(assert (=> b!7037950 (= e!4230915 e!4230916)))

(assert (=> b!7037950 (= c!1309719 (is-Union!17474 (h!74274 (exprs!6970 lt!2521434))))))

(declare-fun b!7037951 () Bool)

(assert (=> b!7037951 (= e!4230914 call!639215)))

(declare-fun bm!639208 () Bool)

(assert (=> bm!639208 (= call!639214 call!639213)))

(declare-fun b!7037952 () Bool)

(declare-fun e!4230918 () Bool)

(assert (=> b!7037952 (= c!1309721 e!4230918)))

(declare-fun res!2872968 () Bool)

(assert (=> b!7037952 (=> (not res!2872968) (not e!4230918))))

(assert (=> b!7037952 (= res!2872968 (is-Concat!26319 (h!74274 (exprs!6970 lt!2521434))))))

(assert (=> b!7037952 (= e!4230916 e!4230917)))

(declare-fun bm!639209 () Bool)

(declare-fun call!639211 () List!67950)

(assert (=> bm!639209 (= call!639213 (derivationStepZipperDown!2138 (ite c!1309719 (regOne!35461 (h!74274 (exprs!6970 lt!2521434))) (ite c!1309721 (regTwo!35460 (h!74274 (exprs!6970 lt!2521434))) (ite c!1309722 (regOne!35460 (h!74274 (exprs!6970 lt!2521434))) (reg!17803 (h!74274 (exprs!6970 lt!2521434)))))) (ite (or c!1309719 c!1309721) lt!2521454 (Context!12941 call!639211)) (h!74276 s!7408)))))

(declare-fun b!7037953 () Bool)

(assert (=> b!7037953 (= e!4230917 (set.union call!639210 call!639214))))

(declare-fun bm!639210 () Bool)

(assert (=> bm!639210 (= call!639211 call!639212)))

(declare-fun b!7037954 () Bool)

(assert (=> b!7037954 (= e!4230919 (as set.empty (Set Context!12940)))))

(declare-fun b!7037955 () Bool)

(assert (=> b!7037955 (= e!4230918 (nullable!7185 (regOne!35460 (h!74274 (exprs!6970 lt!2521434)))))))

(assert (= (and d!2197143 c!1309720) b!7037947))

(assert (= (and d!2197143 (not c!1309720)) b!7037950))

(assert (= (and b!7037950 c!1309719) b!7037948))

(assert (= (and b!7037950 (not c!1309719)) b!7037952))

(assert (= (and b!7037952 res!2872968) b!7037955))

(assert (= (and b!7037952 c!1309721) b!7037953))

(assert (= (and b!7037952 (not c!1309721)) b!7037949))

(assert (= (and b!7037949 c!1309722) b!7037951))

(assert (= (and b!7037949 (not c!1309722)) b!7037945))

(assert (= (and b!7037945 c!1309718) b!7037946))

(assert (= (and b!7037945 (not c!1309718)) b!7037954))

(assert (= (or b!7037951 b!7037946) bm!639210))

(assert (= (or b!7037951 b!7037946) bm!639205))

(assert (= (or b!7037953 bm!639205) bm!639208))

(assert (= (or b!7037953 bm!639210) bm!639207))

(assert (= (or b!7037948 bm!639208) bm!639209))

(assert (= (or b!7037948 b!7037953) bm!639206))

(declare-fun m!7747880 () Bool)

(assert (=> bm!639207 m!7747880))

(declare-fun m!7747882 () Bool)

(assert (=> bm!639206 m!7747882))

(assert (=> b!7037947 m!7747334))

(assert (=> b!7037955 m!7747662))

(declare-fun m!7747884 () Bool)

(assert (=> bm!639209 m!7747884))

(assert (=> b!7037650 d!2197143))

(declare-fun d!2197145 () Bool)

(declare-fun c!1309723 () Bool)

(assert (=> d!2197145 (= c!1309723 (isEmpty!39570 s!7408))))

(declare-fun e!4230920 () Bool)

(assert (=> d!2197145 (= (matchZipper!3014 lt!2521442 s!7408) e!4230920)))

(declare-fun b!7037956 () Bool)

(assert (=> b!7037956 (= e!4230920 (nullableZipper!2587 lt!2521442))))

(declare-fun b!7037957 () Bool)

(assert (=> b!7037957 (= e!4230920 (matchZipper!3014 (derivationStepZipper!2930 lt!2521442 (head!14276 s!7408)) (tail!13570 s!7408)))))

(assert (= (and d!2197145 c!1309723) b!7037956))

(assert (= (and d!2197145 (not c!1309723)) b!7037957))

(assert (=> d!2197145 m!7747640))

(declare-fun m!7747886 () Bool)

(assert (=> b!7037956 m!7747886))

(assert (=> b!7037957 m!7747644))

(assert (=> b!7037957 m!7747644))

(declare-fun m!7747888 () Bool)

(assert (=> b!7037957 m!7747888))

(assert (=> b!7037957 m!7747648))

(assert (=> b!7037957 m!7747888))

(assert (=> b!7037957 m!7747648))

(declare-fun m!7747890 () Bool)

(assert (=> b!7037957 m!7747890))

(assert (=> start!680524 d!2197145))

(declare-fun bs!1872848 () Bool)

(declare-fun d!2197147 () Bool)

(assert (= bs!1872848 (and d!2197147 b!7037637)))

(declare-fun lambda!415839 () Int)

(assert (=> bs!1872848 (= lambda!415839 lambda!415754)))

(assert (=> d!2197147 true))

(assert (=> d!2197147 (= (appendTo!595 z1!570 ct2!306) (map!15779 z1!570 lambda!415839))))

(declare-fun bs!1872849 () Bool)

(assert (= bs!1872849 d!2197147))

(declare-fun m!7747892 () Bool)

(assert (=> bs!1872849 m!7747892))

(assert (=> start!680524 d!2197147))

(declare-fun bs!1872850 () Bool)

(declare-fun d!2197149 () Bool)

(assert (= bs!1872850 (and d!2197149 b!7037637)))

(declare-fun lambda!415840 () Int)

(assert (=> bs!1872850 (= lambda!415840 lambda!415755)))

(declare-fun bs!1872851 () Bool)

(assert (= bs!1872851 (and d!2197149 d!2197039)))

(assert (=> bs!1872851 (= lambda!415840 lambda!415823)))

(assert (=> d!2197149 (= (inv!86545 ct2!306) (forall!16393 (exprs!6970 ct2!306) lambda!415840))))

(declare-fun bs!1872852 () Bool)

(assert (= bs!1872852 d!2197149))

(declare-fun m!7747894 () Bool)

(assert (=> bs!1872852 m!7747894))

(assert (=> start!680524 d!2197149))

(declare-fun bs!1872853 () Bool)

(declare-fun d!2197151 () Bool)

(assert (= bs!1872853 (and d!2197151 b!7037649)))

(declare-fun lambda!415841 () Int)

(assert (=> bs!1872853 (= lambda!415841 lambda!415756)))

(declare-fun bs!1872854 () Bool)

(assert (= bs!1872854 (and d!2197151 d!2197111)))

(assert (=> bs!1872854 (= lambda!415841 lambda!415832)))

(declare-fun bs!1872855 () Bool)

(assert (= bs!1872855 (and d!2197151 d!2197119)))

(assert (=> bs!1872855 (= lambda!415841 lambda!415833)))

(declare-fun bs!1872856 () Bool)

(assert (= bs!1872856 (and d!2197151 d!2197131)))

(assert (=> bs!1872856 (= (= (h!74276 s!7408) lt!2521441) (= lambda!415841 lambda!415834))))

(assert (=> d!2197151 true))

(assert (=> d!2197151 (= (derivationStepZipper!2930 lt!2521414 (h!74276 s!7408)) (flatMap!2421 lt!2521414 lambda!415841))))

(declare-fun bs!1872857 () Bool)

(assert (= bs!1872857 d!2197151))

(declare-fun m!7747896 () Bool)

(assert (=> bs!1872857 m!7747896))

(assert (=> b!7037649 d!2197151))

(assert (=> b!7037649 d!2197037))

(declare-fun d!2197153 () Bool)

(assert (=> d!2197153 (= (flatMap!2421 lt!2521414 lambda!415756) (dynLambda!27418 lambda!415756 lt!2521419))))

(declare-fun lt!2521716 () Unit!161628)

(assert (=> d!2197153 (= lt!2521716 (choose!53359 lt!2521414 lt!2521419 lambda!415756))))

(assert (=> d!2197153 (= lt!2521414 (set.insert lt!2521419 (as set.empty (Set Context!12940))))))

(assert (=> d!2197153 (= (lemmaFlatMapOnSingletonSet!1935 lt!2521414 lt!2521419 lambda!415756) lt!2521716)))

(declare-fun b_lambda!267083 () Bool)

(assert (=> (not b_lambda!267083) (not d!2197153)))

(declare-fun bs!1872858 () Bool)

(assert (= bs!1872858 d!2197153))

(assert (=> bs!1872858 m!7747318))

(declare-fun m!7747898 () Bool)

(assert (=> bs!1872858 m!7747898))

(declare-fun m!7747900 () Bool)

(assert (=> bs!1872858 m!7747900))

(assert (=> bs!1872858 m!7747384))

(assert (=> b!7037649 d!2197153))

(declare-fun b!7037958 () Bool)

(declare-fun e!4230922 () (Set Context!12940))

(declare-fun e!4230921 () (Set Context!12940))

(assert (=> b!7037958 (= e!4230922 e!4230921)))

(declare-fun c!1309726 () Bool)

(assert (=> b!7037958 (= c!1309726 (is-Cons!67826 (exprs!6970 lt!2521419)))))

(declare-fun d!2197155 () Bool)

(declare-fun c!1309725 () Bool)

(declare-fun e!4230923 () Bool)

(assert (=> d!2197155 (= c!1309725 e!4230923)))

(declare-fun res!2872969 () Bool)

(assert (=> d!2197155 (=> (not res!2872969) (not e!4230923))))

(assert (=> d!2197155 (= res!2872969 (is-Cons!67826 (exprs!6970 lt!2521419)))))

(assert (=> d!2197155 (= (derivationStepZipperUp!2084 lt!2521419 (h!74276 s!7408)) e!4230922)))

(declare-fun b!7037959 () Bool)

(declare-fun call!639216 () (Set Context!12940))

(assert (=> b!7037959 (= e!4230921 call!639216)))

(declare-fun b!7037960 () Bool)

(assert (=> b!7037960 (= e!4230921 (as set.empty (Set Context!12940)))))

(declare-fun bm!639211 () Bool)

(assert (=> bm!639211 (= call!639216 (derivationStepZipperDown!2138 (h!74274 (exprs!6970 lt!2521419)) (Context!12941 (t!381721 (exprs!6970 lt!2521419))) (h!74276 s!7408)))))

(declare-fun b!7037961 () Bool)

(assert (=> b!7037961 (= e!4230922 (set.union call!639216 (derivationStepZipperUp!2084 (Context!12941 (t!381721 (exprs!6970 lt!2521419))) (h!74276 s!7408))))))

(declare-fun b!7037962 () Bool)

(assert (=> b!7037962 (= e!4230923 (nullable!7185 (h!74274 (exprs!6970 lt!2521419))))))

(assert (= (and d!2197155 res!2872969) b!7037962))

(assert (= (and d!2197155 c!1309725) b!7037961))

(assert (= (and d!2197155 (not c!1309725)) b!7037958))

(assert (= (and b!7037958 c!1309726) b!7037959))

(assert (= (and b!7037958 (not c!1309726)) b!7037960))

(assert (= (or b!7037961 b!7037959) bm!639211))

(declare-fun m!7747902 () Bool)

(assert (=> bm!639211 m!7747902))

(declare-fun m!7747904 () Bool)

(assert (=> b!7037961 m!7747904))

(declare-fun m!7747906 () Bool)

(assert (=> b!7037962 m!7747906))

(assert (=> b!7037649 d!2197155))

(declare-fun d!2197157 () Bool)

(assert (=> d!2197157 (= (flatMap!2421 lt!2521414 lambda!415756) (choose!53360 lt!2521414 lambda!415756))))

(declare-fun bs!1872859 () Bool)

(assert (= bs!1872859 d!2197157))

(declare-fun m!7747908 () Bool)

(assert (=> bs!1872859 m!7747908))

(assert (=> b!7037649 d!2197157))

(declare-fun b!7037967 () Bool)

(declare-fun e!4230926 () Bool)

(declare-fun tp!1937044 () Bool)

(declare-fun tp!1937045 () Bool)

(assert (=> b!7037967 (= e!4230926 (and tp!1937044 tp!1937045))))

(assert (=> b!7037627 (= tp!1937024 e!4230926)))

(assert (= (and b!7037627 (is-Cons!67826 (exprs!6970 setElem!49267))) b!7037967))

(declare-fun b!7037972 () Bool)

(declare-fun e!4230929 () Bool)

(declare-fun tp!1937048 () Bool)

(assert (=> b!7037972 (= e!4230929 (and tp_is_empty!44173 tp!1937048))))

(assert (=> b!7037632 (= tp!1937026 e!4230929)))

(assert (= (and b!7037632 (is-Cons!67828 (t!381723 s!7408))) b!7037972))

(declare-fun b!7037973 () Bool)

(declare-fun e!4230930 () Bool)

(declare-fun tp!1937049 () Bool)

(declare-fun tp!1937050 () Bool)

(assert (=> b!7037973 (= e!4230930 (and tp!1937049 tp!1937050))))

(assert (=> b!7037652 (= tp!1937027 e!4230930)))

(assert (= (and b!7037652 (is-Cons!67826 (exprs!6970 ct2!306))) b!7037973))

(declare-fun condSetEmpty!49273 () Bool)

(assert (=> setNonEmpty!49267 (= condSetEmpty!49273 (= setRest!49267 (as set.empty (Set Context!12940))))))

(declare-fun setRes!49273 () Bool)

(assert (=> setNonEmpty!49267 (= tp!1937025 setRes!49273)))

(declare-fun setIsEmpty!49273 () Bool)

(assert (=> setIsEmpty!49273 setRes!49273))

(declare-fun tp!1937056 () Bool)

(declare-fun e!4230933 () Bool)

(declare-fun setNonEmpty!49273 () Bool)

(declare-fun setElem!49273 () Context!12940)

(assert (=> setNonEmpty!49273 (= setRes!49273 (and tp!1937056 (inv!86545 setElem!49273) e!4230933))))

(declare-fun setRest!49273 () (Set Context!12940))

(assert (=> setNonEmpty!49273 (= setRest!49267 (set.union (set.insert setElem!49273 (as set.empty (Set Context!12940))) setRest!49273))))

(declare-fun b!7037978 () Bool)

(declare-fun tp!1937055 () Bool)

(assert (=> b!7037978 (= e!4230933 tp!1937055)))

(assert (= (and setNonEmpty!49267 condSetEmpty!49273) setIsEmpty!49273))

(assert (= (and setNonEmpty!49267 (not condSetEmpty!49273)) setNonEmpty!49273))

(assert (= setNonEmpty!49273 b!7037978))

(declare-fun m!7747910 () Bool)

(assert (=> setNonEmpty!49273 m!7747910))

(declare-fun b_lambda!267085 () Bool)

(assert (= b_lambda!267079 (or b!7037649 b_lambda!267085)))

(declare-fun bs!1872860 () Bool)

(declare-fun d!2197159 () Bool)

(assert (= bs!1872860 (and d!2197159 b!7037649)))

(assert (=> bs!1872860 (= (dynLambda!27418 lambda!415756 lt!2521454) (derivationStepZipperUp!2084 lt!2521454 (h!74276 s!7408)))))

(assert (=> bs!1872860 m!7747276))

(assert (=> d!2197117 d!2197159))

(declare-fun b_lambda!267087 () Bool)

(assert (= b_lambda!267077 (or b!7037649 b_lambda!267087)))

(declare-fun bs!1872861 () Bool)

(declare-fun d!2197161 () Bool)

(assert (= bs!1872861 (and d!2197161 b!7037649)))

(assert (=> bs!1872861 (= (dynLambda!27418 lambda!415756 lt!2521418) (derivationStepZipperUp!2084 lt!2521418 (h!74276 s!7408)))))

(assert (=> bs!1872861 m!7747292))

(assert (=> d!2197079 d!2197161))

(declare-fun b_lambda!267089 () Bool)

(assert (= b_lambda!267075 (or b!7037637 b_lambda!267089)))

(declare-fun bs!1872862 () Bool)

(declare-fun d!2197163 () Bool)

(assert (= bs!1872862 (and d!2197163 b!7037637)))

(declare-fun lt!2521717 () Unit!161628)

(assert (=> bs!1872862 (= lt!2521717 (lemmaConcatPreservesForall!795 (exprs!6970 lt!2521418) (exprs!6970 ct2!306) lambda!415755))))

(assert (=> bs!1872862 (= (dynLambda!27415 lambda!415754 lt!2521418) (Context!12941 (++!15528 (exprs!6970 lt!2521418) (exprs!6970 ct2!306))))))

(declare-fun m!7747912 () Bool)

(assert (=> bs!1872862 m!7747912))

(declare-fun m!7747914 () Bool)

(assert (=> bs!1872862 m!7747914))

(assert (=> d!2197075 d!2197163))

(declare-fun b_lambda!267091 () Bool)

(assert (= b_lambda!267073 (or b!7037639 b_lambda!267091)))

(declare-fun bs!1872863 () Bool)

(declare-fun d!2197165 () Bool)

(assert (= bs!1872863 (and d!2197165 b!7037639)))

(assert (=> bs!1872863 (= (dynLambda!27417 lambda!415753 lt!2521673) (matchZipper!3014 (set.insert lt!2521673 (as set.empty (Set Context!12940))) s!7408))))

(declare-fun m!7747916 () Bool)

(assert (=> bs!1872863 m!7747916))

(assert (=> bs!1872863 m!7747916))

(declare-fun m!7747918 () Bool)

(assert (=> bs!1872863 m!7747918))

(assert (=> d!2197061 d!2197165))

(declare-fun b_lambda!267093 () Bool)

(assert (= b_lambda!267071 (or b!7037637 b_lambda!267093)))

(declare-fun bs!1872864 () Bool)

(declare-fun d!2197167 () Bool)

(assert (= bs!1872864 (and d!2197167 b!7037637)))

(declare-fun lt!2521718 () Unit!161628)

(assert (=> bs!1872864 (= lt!2521718 (lemmaConcatPreservesForall!795 (exprs!6970 lt!2521664) (exprs!6970 ct2!306) lambda!415755))))

(assert (=> bs!1872864 (= (dynLambda!27415 lambda!415754 lt!2521664) (Context!12941 (++!15528 (exprs!6970 lt!2521664) (exprs!6970 ct2!306))))))

(declare-fun m!7747920 () Bool)

(assert (=> bs!1872864 m!7747920))

(declare-fun m!7747922 () Bool)

(assert (=> bs!1872864 m!7747922))

(assert (=> d!2197045 d!2197167))

(declare-fun b_lambda!267095 () Bool)

(assert (= b_lambda!267083 (or b!7037649 b_lambda!267095)))

(declare-fun bs!1872865 () Bool)

(declare-fun d!2197169 () Bool)

(assert (= bs!1872865 (and d!2197169 b!7037649)))

(assert (=> bs!1872865 (= (dynLambda!27418 lambda!415756 lt!2521419) (derivationStepZipperUp!2084 lt!2521419 (h!74276 s!7408)))))

(assert (=> bs!1872865 m!7747322))

(assert (=> d!2197153 d!2197169))

(declare-fun b_lambda!267097 () Bool)

(assert (= b_lambda!267081 (or b!7037649 b_lambda!267097)))

(declare-fun bs!1872866 () Bool)

(declare-fun d!2197171 () Bool)

(assert (= bs!1872866 (and d!2197171 b!7037649)))

(assert (=> bs!1872866 (= (dynLambda!27418 lambda!415756 lt!2521434) (derivationStepZipperUp!2084 lt!2521434 (h!74276 s!7408)))))

(assert (=> bs!1872866 m!7747366))

(assert (=> d!2197125 d!2197171))

(push 1)

(assert (not d!2197103))

(assert (not d!2197109))

(assert (not d!2197117))

(assert (not b!7037806))

(assert (not b!7037768))

(assert (not b!7037938))

(assert (not b_lambda!267089))

(assert (not b!7037865))

(assert (not b!7037920))

(assert (not b!7037918))

(assert (not b!7037927))

(assert (not b_lambda!267095))

(assert (not d!2197123))

(assert (not b!7037770))

(assert (not b_lambda!267087))

(assert (not b!7037943))

(assert (not bm!639200))

(assert (not d!2197059))

(assert (not d!2197107))

(assert (not d!2197079))

(assert (not bm!639207))

(assert (not b!7037913))

(assert (not d!2197039))

(assert (not d!2197099))

(assert (not b!7037944))

(assert (not d!2197145))

(assert (not d!2197137))

(assert (not d!2197085))

(assert (not b!7037915))

(assert (not d!2197075))

(assert (not b!7037941))

(assert (not bs!1872862))

(assert (not d!2197069))

(assert (not bm!639209))

(assert tp_is_empty!44173)

(assert (not bs!1872866))

(assert (not b!7037911))

(assert (not b!7037914))

(assert (not d!2197037))

(assert (not d!2197139))

(assert (not b_lambda!267093))

(assert (not d!2197157))

(assert (not d!2197149))

(assert (not d!2197093))

(assert (not b!7037904))

(assert (not bs!1872864))

(assert (not d!2197061))

(assert (not b!7037957))

(assert (not b!7037937))

(assert (not d!2197043))

(assert (not d!2197097))

(assert (not bm!639183))

(assert (not b!7037790))

(assert (not b!7037880))

(assert (not d!2197105))

(assert (not b!7037942))

(assert (not b_lambda!267097))

(assert (not b!7037881))

(assert (not b!7037783))

(assert (not b!7037844))

(assert (not b!7037909))

(assert (not d!2197053))

(assert (not d!2197119))

(assert (not b!7037772))

(assert (not d!2197125))

(assert (not d!2197151))

(assert (not b!7037771))

(assert (not b!7037905))

(assert (not d!2197115))

(assert (not bm!639198))

(assert (not setNonEmpty!49273))

(assert (not b!7037962))

(assert (not d!2197055))

(assert (not d!2197135))

(assert (not d!2197095))

(assert (not bs!1872861))

(assert (not d!2197057))

(assert (not d!2197147))

(assert (not b!7037912))

(assert (not d!2197031))

(assert (not d!2197081))

(assert (not b!7037875))

(assert (not b!7037955))

(assert (not b!7037805))

(assert (not b!7037784))

(assert (not b!7037876))

(assert (not b!7037961))

(assert (not b!7037956))

(assert (not d!2197035))

(assert (not bm!639202))

(assert (not bs!1872860))

(assert (not b!7037940))

(assert (not bm!639206))

(assert (not d!2197041))

(assert (not b!7037906))

(assert (not bs!1872863))

(assert (not b!7037978))

(assert (not b_lambda!267091))

(assert (not d!2197029))

(assert (not b!7037931))

(assert (not b!7037926))

(assert (not d!2197111))

(assert (not b!7037769))

(assert (not b!7037932))

(assert (not d!2197073))

(assert (not b!7037854))

(assert (not d!2197065))

(assert (not d!2197045))

(assert (not b!7037841))

(assert (not bm!639197))

(assert (not b!7037967))

(assert (not b!7037973))

(assert (not d!2197133))

(assert (not bs!1872865))

(assert (not b!7037939))

(assert (not b!7037919))

(assert (not bm!639203))

(assert (not b!7037791))

(assert (not d!2197153))

(assert (not b!7037936))

(assert (not b!7037884))

(assert (not b!7037872))

(assert (not bm!639211))

(assert (not d!2197047))

(assert (not b_lambda!267085))

(assert (not bm!639204))

(assert (not b!7037908))

(assert (not d!2197089))

(assert (not b!7037883))

(assert (not b!7037878))

(assert (not b!7037866))

(assert (not d!2197131))

(assert (not d!2197067))

(assert (not b!7037773))

(assert (not b!7037839))

(assert (not b!7037972))

(assert (not b!7037840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

