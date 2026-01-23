; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!685398 () Bool)

(assert start!685398)

(declare-fun b!7062700 () Bool)

(assert (=> b!7062700 true))

(declare-fun b!7062694 () Bool)

(assert (=> b!7062694 true))

(declare-fun b!7062688 () Bool)

(assert (=> b!7062688 true))

(declare-fun b!7062677 () Bool)

(declare-fun res!2883620 () Bool)

(declare-fun e!4246004 () Bool)

(assert (=> b!7062677 (=> (not res!2883620) (not e!4246004))))

(declare-datatypes ((C!35470 0))(
  ( (C!35471 (val!27437 Int)) )
))
(declare-datatypes ((List!68326 0))(
  ( (Nil!68202) (Cons!68202 (h!74650 C!35470) (t!382107 List!68326)) )
))
(declare-fun s!7408 () List!68326)

(assert (=> b!7062677 (= res!2883620 (is-Cons!68202 s!7408))))

(declare-fun b!7062678 () Bool)

(declare-fun e!4245998 () Bool)

(declare-datatypes ((Regex!17600 0))(
  ( (ElementMatch!17600 (c!1316545 C!35470)) (Concat!26445 (regOne!35712 Regex!17600) (regTwo!35712 Regex!17600)) (EmptyExpr!17600) (Star!17600 (reg!17929 Regex!17600)) (EmptyLang!17600) (Union!17600 (regOne!35713 Regex!17600) (regTwo!35713 Regex!17600)) )
))
(declare-datatypes ((List!68327 0))(
  ( (Nil!68203) (Cons!68203 (h!74651 Regex!17600) (t!382108 List!68327)) )
))
(declare-datatypes ((Context!13192 0))(
  ( (Context!13193 (exprs!7096 List!68327)) )
))
(declare-fun lt!2537371 () (Set Context!13192))

(declare-fun matchZipper!3140 ((Set Context!13192) List!68326) Bool)

(assert (=> b!7062678 (= e!4245998 (not (matchZipper!3140 lt!2537371 (t!382107 s!7408))))))

(declare-fun lt!2537376 () List!68327)

(declare-fun ct2!306 () Context!13192)

(declare-fun lambda!422549 () Int)

(declare-datatypes ((Unit!161876 0))(
  ( (Unit!161877) )
))
(declare-fun lt!2537366 () Unit!161876)

(declare-fun lemmaConcatPreservesForall!911 (List!68327 List!68327 Int) Unit!161876)

(assert (=> b!7062678 (= lt!2537366 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(declare-fun b!7062679 () Bool)

(declare-fun e!4246000 () Bool)

(declare-fun lt!2537390 () (Set Context!13192))

(declare-fun lt!2537418 () List!68326)

(assert (=> b!7062679 (= e!4246000 (matchZipper!3140 lt!2537390 lt!2537418))))

(declare-fun b!7062680 () Bool)

(declare-fun e!4246005 () Bool)

(declare-fun e!4245995 () Bool)

(assert (=> b!7062680 (= e!4246005 e!4245995)))

(declare-fun res!2883634 () Bool)

(assert (=> b!7062680 (=> res!2883634 e!4245995)))

(assert (=> b!7062680 (= res!2883634 e!4245998)))

(declare-fun res!2883625 () Bool)

(assert (=> b!7062680 (=> (not res!2883625) (not e!4245998))))

(declare-fun lt!2537413 () Bool)

(declare-fun lt!2537379 () Bool)

(assert (=> b!7062680 (= res!2883625 (not (= lt!2537413 lt!2537379)))))

(declare-fun lt!2537404 () (Set Context!13192))

(assert (=> b!7062680 (= lt!2537413 (matchZipper!3140 lt!2537404 (t!382107 s!7408)))))

(declare-fun lt!2537374 () Unit!161876)

(assert (=> b!7062680 (= lt!2537374 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(declare-fun lt!2537377 () (Set Context!13192))

(declare-fun e!4246001 () Bool)

(assert (=> b!7062680 (= (matchZipper!3140 lt!2537377 (t!382107 s!7408)) e!4246001)))

(declare-fun res!2883636 () Bool)

(assert (=> b!7062680 (=> res!2883636 e!4246001)))

(assert (=> b!7062680 (= res!2883636 lt!2537379)))

(declare-fun lt!2537407 () (Set Context!13192))

(assert (=> b!7062680 (= lt!2537379 (matchZipper!3140 lt!2537407 (t!382107 s!7408)))))

(declare-fun lt!2537427 () Unit!161876)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1613 ((Set Context!13192) (Set Context!13192) List!68326) Unit!161876)

(assert (=> b!7062680 (= lt!2537427 (lemmaZipperConcatMatchesSameAsBothZippers!1613 lt!2537407 lt!2537371 (t!382107 s!7408)))))

(declare-fun lt!2537396 () Unit!161876)

(assert (=> b!7062680 (= lt!2537396 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(declare-fun lt!2537369 () Unit!161876)

(assert (=> b!7062680 (= lt!2537369 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(declare-fun b!7062681 () Bool)

(declare-fun res!2883635 () Bool)

(declare-fun e!4246010 () Bool)

(assert (=> b!7062681 (=> res!2883635 e!4246010)))

(declare-fun lt!2537399 () Context!13192)

(declare-fun lt!2537403 () (Set Context!13192))

(assert (=> b!7062681 (= res!2883635 (not (set.member lt!2537399 lt!2537403)))))

(declare-fun b!7062682 () Bool)

(declare-fun res!2883645 () Bool)

(declare-fun e!4246002 () Bool)

(assert (=> b!7062682 (=> res!2883645 e!4246002)))

(declare-datatypes ((tuple2!68202 0))(
  ( (tuple2!68203 (_1!37404 List!68326) (_2!37404 List!68326)) )
))
(declare-fun lt!2537372 () tuple2!68202)

(declare-fun isPrefix!5845 (List!68326 List!68326) Bool)

(assert (=> b!7062682 (= res!2883645 (not (isPrefix!5845 Nil!68202 (_1!37404 lt!2537372))))))

(declare-fun b!7062683 () Bool)

(declare-fun res!2883618 () Bool)

(declare-fun e!4245987 () Bool)

(assert (=> b!7062683 (=> res!2883618 e!4245987)))

(declare-fun lt!2537380 () Context!13192)

(declare-fun isEmpty!39789 (List!68327) Bool)

(assert (=> b!7062683 (= res!2883618 (isEmpty!39789 (exprs!7096 lt!2537380)))))

(declare-fun res!2883617 () Bool)

(assert (=> start!685398 (=> (not res!2883617) (not e!4246004))))

(assert (=> start!685398 (= res!2883617 (matchZipper!3140 lt!2537403 s!7408))))

(declare-fun z1!570 () (Set Context!13192))

(declare-fun appendTo!721 ((Set Context!13192) Context!13192) (Set Context!13192))

(assert (=> start!685398 (= lt!2537403 (appendTo!721 z1!570 ct2!306))))

(assert (=> start!685398 e!4246004))

(declare-fun condSetEmpty!50034 () Bool)

(assert (=> start!685398 (= condSetEmpty!50034 (= z1!570 (as set.empty (Set Context!13192))))))

(declare-fun setRes!50034 () Bool)

(assert (=> start!685398 setRes!50034))

(declare-fun e!4245990 () Bool)

(declare-fun inv!86860 (Context!13192) Bool)

(assert (=> start!685398 (and (inv!86860 ct2!306) e!4245990)))

(declare-fun e!4245994 () Bool)

(assert (=> start!685398 e!4245994))

(declare-fun b!7062684 () Bool)

(declare-fun e!4245997 () Bool)

(declare-fun tp!1941222 () Bool)

(assert (=> b!7062684 (= e!4245997 tp!1941222)))

(declare-fun b!7062685 () Bool)

(declare-fun e!4246009 () Bool)

(assert (=> b!7062685 (= e!4246009 e!4246002)))

(declare-fun res!2883637 () Bool)

(assert (=> b!7062685 (=> res!2883637 e!4246002)))

(declare-fun lt!2537414 () (Set Context!13192))

(declare-fun lt!2537386 () C!35470)

(declare-fun lt!2537406 () (Set Context!13192))

(declare-fun derivationStepZipper!3050 ((Set Context!13192) C!35470) (Set Context!13192))

(assert (=> b!7062685 (= res!2883637 (not (= (derivationStepZipper!3050 lt!2537406 lt!2537386) lt!2537414)))))

(declare-fun lt!2537417 () Context!13192)

(declare-fun derivationStepZipperUp!2184 (Context!13192 C!35470) (Set Context!13192))

(assert (=> b!7062685 (= lt!2537414 (derivationStepZipperUp!2184 lt!2537417 lt!2537386))))

(declare-fun head!14378 (List!68326) C!35470)

(assert (=> b!7062685 (= lt!2537386 (head!14378 (_1!37404 lt!2537372)))))

(declare-fun lambda!422550 () Int)

(declare-fun flatMap!2526 ((Set Context!13192) Int) (Set Context!13192))

(assert (=> b!7062685 (= (flatMap!2526 lt!2537406 lambda!422550) (derivationStepZipperUp!2184 lt!2537417 (h!74650 s!7408)))))

(declare-fun lt!2537426 () Unit!161876)

(declare-fun lemmaFlatMapOnSingletonSet!2035 ((Set Context!13192) Context!13192 Int) Unit!161876)

(assert (=> b!7062685 (= lt!2537426 (lemmaFlatMapOnSingletonSet!2035 lt!2537406 lt!2537417 lambda!422550))))

(declare-fun setIsEmpty!50034 () Bool)

(assert (=> setIsEmpty!50034 setRes!50034))

(declare-fun b!7062686 () Bool)

(declare-fun e!4246007 () Bool)

(assert (=> b!7062686 (= e!4245995 e!4246007)))

(declare-fun res!2883647 () Bool)

(assert (=> b!7062686 (=> res!2883647 e!4246007)))

(assert (=> b!7062686 (= res!2883647 (not (matchZipper!3140 lt!2537371 (t!382107 s!7408))))))

(declare-fun lt!2537381 () Unit!161876)

(assert (=> b!7062686 (= lt!2537381 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(declare-fun b!7062687 () Bool)

(declare-fun e!4245989 () Bool)

(assert (=> b!7062687 (= e!4245989 e!4246005)))

(declare-fun res!2883646 () Bool)

(assert (=> b!7062687 (=> res!2883646 e!4246005)))

(assert (=> b!7062687 (= res!2883646 (not (= lt!2537404 lt!2537377)))))

(assert (=> b!7062687 (= lt!2537377 (set.union lt!2537407 lt!2537371))))

(declare-fun lt!2537422 () Context!13192)

(assert (=> b!7062687 (= lt!2537371 (derivationStepZipperUp!2184 lt!2537422 (h!74650 s!7408)))))

(declare-fun derivationStepZipperDown!2234 (Regex!17600 Context!13192 C!35470) (Set Context!13192))

(assert (=> b!7062687 (= lt!2537407 (derivationStepZipperDown!2234 (h!74651 (exprs!7096 lt!2537380)) lt!2537422 (h!74650 s!7408)))))

(declare-fun ++!15697 (List!68327 List!68327) List!68327)

(assert (=> b!7062687 (= lt!2537422 (Context!13193 (++!15697 lt!2537376 (exprs!7096 ct2!306))))))

(declare-fun lt!2537393 () Unit!161876)

(assert (=> b!7062687 (= lt!2537393 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(declare-fun lt!2537382 () Unit!161876)

(assert (=> b!7062687 (= lt!2537382 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(declare-fun e!4245988 () Bool)

(assert (=> b!7062688 (= e!4245988 e!4245987)))

(declare-fun res!2883638 () Bool)

(assert (=> b!7062688 (=> res!2883638 e!4245987)))

(declare-fun lt!2537410 () (Set Context!13192))

(assert (=> b!7062688 (= res!2883638 (not (= (derivationStepZipper!3050 lt!2537410 (h!74650 s!7408)) lt!2537404)))))

(declare-fun lt!2537373 () Context!13192)

(assert (=> b!7062688 (= (flatMap!2526 lt!2537410 lambda!422550) (derivationStepZipperUp!2184 lt!2537373 (h!74650 s!7408)))))

(declare-fun lt!2537370 () Unit!161876)

(assert (=> b!7062688 (= lt!2537370 (lemmaFlatMapOnSingletonSet!2035 lt!2537410 lt!2537373 lambda!422550))))

(assert (=> b!7062688 (= lt!2537404 (derivationStepZipperUp!2184 lt!2537373 (h!74650 s!7408)))))

(declare-fun lt!2537420 () Unit!161876)

(assert (=> b!7062688 (= lt!2537420 (lemmaConcatPreservesForall!911 (exprs!7096 lt!2537380) (exprs!7096 ct2!306) lambda!422549))))

(declare-fun b!7062689 () Bool)

(declare-fun res!2883615 () Bool)

(assert (=> b!7062689 (=> res!2883615 e!4245995)))

(assert (=> b!7062689 (= res!2883615 (not lt!2537413))))

(declare-fun b!7062690 () Bool)

(declare-fun e!4246003 () Bool)

(assert (=> b!7062690 (= e!4246007 e!4246003)))

(declare-fun res!2883627 () Bool)

(assert (=> b!7062690 (=> res!2883627 e!4246003)))

(declare-fun lt!2537401 () (Set Context!13192))

(assert (=> b!7062690 (= res!2883627 (not (= (derivationStepZipper!3050 lt!2537401 (h!74650 s!7408)) lt!2537371)))))

(declare-fun lt!2537368 () Unit!161876)

(assert (=> b!7062690 (= lt!2537368 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(declare-fun lt!2537411 () Unit!161876)

(assert (=> b!7062690 (= lt!2537411 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(assert (=> b!7062690 (= (flatMap!2526 lt!2537401 lambda!422550) (derivationStepZipperUp!2184 lt!2537422 (h!74650 s!7408)))))

(declare-fun lt!2537402 () Unit!161876)

(assert (=> b!7062690 (= lt!2537402 (lemmaFlatMapOnSingletonSet!2035 lt!2537401 lt!2537422 lambda!422550))))

(assert (=> b!7062690 (= lt!2537401 (set.insert lt!2537422 (as set.empty (Set Context!13192))))))

(declare-fun lt!2537365 () Unit!161876)

(assert (=> b!7062690 (= lt!2537365 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(declare-fun lt!2537383 () Unit!161876)

(assert (=> b!7062690 (= lt!2537383 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(declare-fun b!7062691 () Bool)

(declare-fun e!4245999 () Bool)

(declare-fun e!4246008 () Bool)

(assert (=> b!7062691 (= e!4245999 e!4246008)))

(declare-fun res!2883628 () Bool)

(assert (=> b!7062691 (=> res!2883628 e!4246008)))

(declare-fun lt!2537415 () Int)

(declare-fun contextDepthTotal!536 (Context!13192) Int)

(assert (=> b!7062691 (= res!2883628 (<= lt!2537415 (contextDepthTotal!536 lt!2537417)))))

(declare-fun lt!2537391 () Int)

(assert (=> b!7062691 (<= lt!2537415 lt!2537391)))

(declare-datatypes ((List!68328 0))(
  ( (Nil!68204) (Cons!68204 (h!74652 Context!13192) (t!382109 List!68328)) )
))
(declare-fun lt!2537423 () List!68328)

(declare-fun zipperDepthTotal!565 (List!68328) Int)

(assert (=> b!7062691 (= lt!2537391 (zipperDepthTotal!565 lt!2537423))))

(assert (=> b!7062691 (= lt!2537415 (contextDepthTotal!536 lt!2537380))))

(declare-fun lt!2537385 () Unit!161876)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!103 (List!68328 Context!13192) Unit!161876)

(assert (=> b!7062691 (= lt!2537385 (lemmaTotalDepthZipperLargerThanOfAnyContext!103 lt!2537423 lt!2537380))))

(declare-fun toList!10941 ((Set Context!13192)) List!68328)

(assert (=> b!7062691 (= lt!2537423 (toList!10941 z1!570))))

(declare-fun lt!2537378 () Unit!161876)

(assert (=> b!7062691 (= lt!2537378 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(declare-fun lt!2537375 () Unit!161876)

(assert (=> b!7062691 (= lt!2537375 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(declare-fun lt!2537392 () Unit!161876)

(assert (=> b!7062691 (= lt!2537392 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(assert (=> b!7062691 (= (flatMap!2526 lt!2537406 lambda!422550) (derivationStepZipperUp!2184 lt!2537417 (h!74650 s!7408)))))

(declare-fun lt!2537367 () Unit!161876)

(assert (=> b!7062691 (= lt!2537367 (lemmaFlatMapOnSingletonSet!2035 lt!2537406 lt!2537417 lambda!422550))))

(declare-fun lambda!422548 () Int)

(declare-fun map!15933 ((Set Context!13192) Int) (Set Context!13192))

(assert (=> b!7062691 (= (map!15933 lt!2537406 lambda!422548) (set.insert (Context!13193 (++!15697 lt!2537376 (exprs!7096 ct2!306))) (as set.empty (Set Context!13192))))))

(declare-fun lt!2537388 () Unit!161876)

(assert (=> b!7062691 (= lt!2537388 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(declare-fun lt!2537405 () Unit!161876)

(declare-fun lemmaMapOnSingletonSet!417 ((Set Context!13192) Context!13192 Int) Unit!161876)

(assert (=> b!7062691 (= lt!2537405 (lemmaMapOnSingletonSet!417 lt!2537406 lt!2537417 lambda!422548))))

(assert (=> b!7062691 (= lt!2537406 (set.insert lt!2537417 (as set.empty (Set Context!13192))))))

(declare-fun b!7062692 () Bool)

(assert (=> b!7062692 (= e!4245987 e!4245989)))

(declare-fun res!2883630 () Bool)

(assert (=> b!7062692 (=> res!2883630 e!4245989)))

(declare-fun nullable!7283 (Regex!17600) Bool)

(assert (=> b!7062692 (= res!2883630 (not (nullable!7283 (h!74651 (exprs!7096 lt!2537380)))))))

(assert (=> b!7062692 (= lt!2537417 (Context!13193 lt!2537376))))

(declare-fun tail!13748 (List!68327) List!68327)

(assert (=> b!7062692 (= lt!2537376 (tail!13748 (exprs!7096 lt!2537380)))))

(declare-fun b!7062693 () Bool)

(declare-fun e!4245992 () Bool)

(declare-fun e!4246006 () Bool)

(assert (=> b!7062693 (= e!4245992 e!4246006)))

(declare-fun res!2883639 () Bool)

(assert (=> b!7062693 (=> res!2883639 e!4246006)))

(declare-fun lt!2537384 () (Set Context!13192))

(declare-fun lt!2537409 () (Set Context!13192))

(assert (=> b!7062693 (= res!2883639 (not (= (derivationStepZipper!3050 lt!2537384 (h!74650 s!7408)) lt!2537409)))))

(assert (=> b!7062693 (= lt!2537409 (derivationStepZipperUp!2184 lt!2537380 (h!74650 s!7408)))))

(assert (=> b!7062693 (= (flatMap!2526 lt!2537384 lambda!422550) (derivationStepZipperUp!2184 lt!2537380 (h!74650 s!7408)))))

(declare-fun lt!2537416 () Unit!161876)

(assert (=> b!7062693 (= lt!2537416 (lemmaFlatMapOnSingletonSet!2035 lt!2537384 lt!2537380 lambda!422550))))

(assert (=> b!7062693 (= lt!2537384 (set.insert lt!2537380 (as set.empty (Set Context!13192))))))

(declare-fun setElem!50034 () Context!13192)

(declare-fun tp!1941224 () Bool)

(declare-fun setNonEmpty!50034 () Bool)

(assert (=> setNonEmpty!50034 (= setRes!50034 (and tp!1941224 (inv!86860 setElem!50034) e!4245997))))

(declare-fun setRest!50034 () (Set Context!13192))

(assert (=> setNonEmpty!50034 (= z1!570 (set.union (set.insert setElem!50034 (as set.empty (Set Context!13192))) setRest!50034))))

(declare-fun e!4245991 () Bool)

(assert (=> b!7062694 (= e!4246010 e!4245991)))

(declare-fun res!2883629 () Bool)

(assert (=> b!7062694 (=> res!2883629 e!4245991)))

(assert (=> b!7062694 (= res!2883629 (or (not (= lt!2537373 lt!2537399)) (not (set.member lt!2537380 z1!570))))))

(assert (=> b!7062694 (= lt!2537373 (Context!13193 (++!15697 (exprs!7096 lt!2537380) (exprs!7096 ct2!306))))))

(declare-fun lt!2537387 () Unit!161876)

(assert (=> b!7062694 (= lt!2537387 (lemmaConcatPreservesForall!911 (exprs!7096 lt!2537380) (exprs!7096 ct2!306) lambda!422549))))

(declare-fun mapPost2!429 ((Set Context!13192) Int Context!13192) Context!13192)

(assert (=> b!7062694 (= lt!2537380 (mapPost2!429 z1!570 lambda!422548 lt!2537399))))

(declare-fun b!7062695 () Bool)

(declare-fun e!4245996 () Bool)

(assert (=> b!7062695 (= e!4246006 e!4245996)))

(declare-fun res!2883616 () Bool)

(assert (=> b!7062695 (=> res!2883616 e!4245996)))

(declare-fun lt!2537421 () (Set Context!13192))

(assert (=> b!7062695 (= res!2883616 (not (= lt!2537409 lt!2537421)))))

(declare-fun lt!2537419 () (Set Context!13192))

(assert (=> b!7062695 (= lt!2537421 (set.union lt!2537419 lt!2537390))))

(assert (=> b!7062695 (= lt!2537390 (derivationStepZipperUp!2184 lt!2537417 (h!74650 s!7408)))))

(assert (=> b!7062695 (= lt!2537419 (derivationStepZipperDown!2234 (h!74651 (exprs!7096 lt!2537380)) lt!2537417 (h!74650 s!7408)))))

(declare-fun b!7062696 () Bool)

(declare-fun res!2883642 () Bool)

(assert (=> b!7062696 (=> res!2883642 e!4245992)))

(declare-fun lt!2537389 () (Set Context!13192))

(assert (=> b!7062696 (= res!2883642 (not (matchZipper!3140 lt!2537389 (_2!37404 lt!2537372))))))

(declare-fun b!7062697 () Bool)

(assert (=> b!7062697 (= e!4245996 e!4246009)))

(declare-fun res!2883644 () Bool)

(assert (=> b!7062697 (=> res!2883644 e!4246009)))

(declare-fun e!4245993 () Bool)

(assert (=> b!7062697 (= res!2883644 e!4245993)))

(declare-fun res!2883643 () Bool)

(assert (=> b!7062697 (=> (not res!2883643) (not e!4245993))))

(declare-fun lt!2537395 () Bool)

(declare-fun lt!2537425 () Bool)

(assert (=> b!7062697 (= res!2883643 (not (= lt!2537395 lt!2537425)))))

(assert (=> b!7062697 (= lt!2537395 (matchZipper!3140 lt!2537384 (_1!37404 lt!2537372)))))

(assert (=> b!7062697 (= (matchZipper!3140 lt!2537421 lt!2537418) e!4246000)))

(declare-fun res!2883631 () Bool)

(assert (=> b!7062697 (=> res!2883631 e!4246000)))

(assert (=> b!7062697 (= res!2883631 lt!2537425)))

(assert (=> b!7062697 (= lt!2537425 (matchZipper!3140 lt!2537419 lt!2537418))))

(declare-fun lt!2537412 () Unit!161876)

(assert (=> b!7062697 (= lt!2537412 (lemmaZipperConcatMatchesSameAsBothZippers!1613 lt!2537419 lt!2537390 lt!2537418))))

(declare-fun tail!13749 (List!68326) List!68326)

(assert (=> b!7062697 (= lt!2537418 (tail!13749 (_1!37404 lt!2537372)))))

(declare-fun b!7062698 () Bool)

(declare-fun tp_is_empty!44425 () Bool)

(declare-fun tp!1941221 () Bool)

(assert (=> b!7062698 (= e!4245994 (and tp_is_empty!44425 tp!1941221))))

(declare-fun b!7062699 () Bool)

(assert (=> b!7062699 (= e!4246001 (matchZipper!3140 lt!2537371 (t!382107 s!7408)))))

(assert (=> b!7062700 (= e!4246004 (not e!4246010))))

(declare-fun res!2883622 () Bool)

(assert (=> b!7062700 (=> res!2883622 e!4246010)))

(declare-fun lt!2537397 () (Set Context!13192))

(assert (=> b!7062700 (= res!2883622 (not (matchZipper!3140 lt!2537397 s!7408)))))

(assert (=> b!7062700 (= lt!2537397 (set.insert lt!2537399 (as set.empty (Set Context!13192))))))

(declare-fun lambda!422547 () Int)

(declare-fun getWitness!1678 ((Set Context!13192) Int) Context!13192)

(assert (=> b!7062700 (= lt!2537399 (getWitness!1678 lt!2537403 lambda!422547))))

(declare-fun lt!2537424 () List!68328)

(declare-fun exists!3613 (List!68328 Int) Bool)

(assert (=> b!7062700 (exists!3613 lt!2537424 lambda!422547)))

(declare-fun lt!2537394 () Unit!161876)

(declare-fun lemmaZipperMatchesExistsMatchingContext!521 (List!68328 List!68326) Unit!161876)

(assert (=> b!7062700 (= lt!2537394 (lemmaZipperMatchesExistsMatchingContext!521 lt!2537424 s!7408))))

(assert (=> b!7062700 (= lt!2537424 (toList!10941 lt!2537403))))

(declare-fun b!7062701 () Bool)

(declare-fun ++!15698 (List!68326 List!68326) List!68326)

(assert (=> b!7062701 (= e!4246002 (= (++!15698 Nil!68202 s!7408) s!7408))))

(declare-fun b!7062702 () Bool)

(assert (=> b!7062702 (= e!4246003 e!4245999)))

(declare-fun res!2883626 () Bool)

(assert (=> b!7062702 (=> res!2883626 e!4245999)))

(assert (=> b!7062702 (= res!2883626 (not (matchZipper!3140 lt!2537401 s!7408)))))

(declare-fun lt!2537364 () Unit!161876)

(assert (=> b!7062702 (= lt!2537364 (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(declare-fun b!7062703 () Bool)

(declare-fun res!2883623 () Bool)

(assert (=> b!7062703 (=> res!2883623 e!4245992)))

(assert (=> b!7062703 (= res!2883623 (not (= (++!15698 (_1!37404 lt!2537372) (_2!37404 lt!2537372)) s!7408)))))

(declare-fun b!7062704 () Bool)

(declare-fun res!2883633 () Bool)

(assert (=> b!7062704 (=> res!2883633 e!4246002)))

(assert (=> b!7062704 (= res!2883633 (not lt!2537395))))

(declare-fun b!7062705 () Bool)

(declare-fun res!2883624 () Bool)

(assert (=> b!7062705 (=> res!2883624 e!4246002)))

(assert (=> b!7062705 (= res!2883624 (not (matchZipper!3140 lt!2537414 lt!2537418)))))

(declare-fun b!7062706 () Bool)

(declare-fun tp!1941223 () Bool)

(assert (=> b!7062706 (= e!4245990 tp!1941223)))

(declare-fun b!7062707 () Bool)

(declare-fun res!2883632 () Bool)

(assert (=> b!7062707 (=> res!2883632 e!4246008)))

(assert (=> b!7062707 (= res!2883632 (>= (zipperDepthTotal!565 (Cons!68204 lt!2537417 Nil!68204)) lt!2537391))))

(declare-fun b!7062708 () Bool)

(declare-fun res!2883640 () Bool)

(assert (=> b!7062708 (=> res!2883640 e!4245987)))

(assert (=> b!7062708 (= res!2883640 (not (is-Cons!68203 (exprs!7096 lt!2537380))))))

(declare-fun b!7062709 () Bool)

(declare-fun res!2883641 () Bool)

(assert (=> b!7062709 (=> res!2883641 e!4245992)))

(declare-fun isEmpty!39790 (List!68326) Bool)

(assert (=> b!7062709 (= res!2883641 (isEmpty!39790 (_1!37404 lt!2537372)))))

(declare-fun b!7062710 () Bool)

(assert (=> b!7062710 (= e!4245993 (not (matchZipper!3140 lt!2537390 lt!2537418)))))

(declare-fun b!7062711 () Bool)

(assert (=> b!7062711 (= e!4245991 e!4245988)))

(declare-fun res!2883621 () Bool)

(assert (=> b!7062711 (=> res!2883621 e!4245988)))

(assert (=> b!7062711 (= res!2883621 (not (= lt!2537410 lt!2537397)))))

(assert (=> b!7062711 (= lt!2537410 (set.insert lt!2537373 (as set.empty (Set Context!13192))))))

(declare-fun lt!2537408 () Unit!161876)

(assert (=> b!7062711 (= lt!2537408 (lemmaConcatPreservesForall!911 (exprs!7096 lt!2537380) (exprs!7096 ct2!306) lambda!422549))))

(declare-fun b!7062712 () Bool)

(assert (=> b!7062712 (= e!4246008 e!4245992)))

(declare-fun res!2883619 () Bool)

(assert (=> b!7062712 (=> res!2883619 e!4245992)))

(assert (=> b!7062712 (= res!2883619 (not (matchZipper!3140 lt!2537406 (_1!37404 lt!2537372))))))

(declare-datatypes ((Option!16933 0))(
  ( (None!16932) (Some!16932 (v!53226 tuple2!68202)) )
))
(declare-fun lt!2537400 () Option!16933)

(declare-fun get!23884 (Option!16933) tuple2!68202)

(assert (=> b!7062712 (= lt!2537372 (get!23884 lt!2537400))))

(declare-fun isDefined!13634 (Option!16933) Bool)

(assert (=> b!7062712 (isDefined!13634 lt!2537400)))

(declare-fun findConcatSeparationZippers!449 ((Set Context!13192) (Set Context!13192) List!68326 List!68326 List!68326) Option!16933)

(assert (=> b!7062712 (= lt!2537400 (findConcatSeparationZippers!449 lt!2537406 lt!2537389 Nil!68202 s!7408 s!7408))))

(assert (=> b!7062712 (= lt!2537389 (set.insert ct2!306 (as set.empty (Set Context!13192))))))

(declare-fun lt!2537398 () Unit!161876)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!437 ((Set Context!13192) Context!13192 List!68326) Unit!161876)

(assert (=> b!7062712 (= lt!2537398 (lemmaConcatZipperMatchesStringThenFindConcatDefined!437 lt!2537406 ct2!306 s!7408))))

(assert (= (and start!685398 res!2883617) b!7062677))

(assert (= (and b!7062677 res!2883620) b!7062700))

(assert (= (and b!7062700 (not res!2883622)) b!7062681))

(assert (= (and b!7062681 (not res!2883635)) b!7062694))

(assert (= (and b!7062694 (not res!2883629)) b!7062711))

(assert (= (and b!7062711 (not res!2883621)) b!7062688))

(assert (= (and b!7062688 (not res!2883638)) b!7062708))

(assert (= (and b!7062708 (not res!2883640)) b!7062683))

(assert (= (and b!7062683 (not res!2883618)) b!7062692))

(assert (= (and b!7062692 (not res!2883630)) b!7062687))

(assert (= (and b!7062687 (not res!2883646)) b!7062680))

(assert (= (and b!7062680 (not res!2883636)) b!7062699))

(assert (= (and b!7062680 res!2883625) b!7062678))

(assert (= (and b!7062680 (not res!2883634)) b!7062689))

(assert (= (and b!7062689 (not res!2883615)) b!7062686))

(assert (= (and b!7062686 (not res!2883647)) b!7062690))

(assert (= (and b!7062690 (not res!2883627)) b!7062702))

(assert (= (and b!7062702 (not res!2883626)) b!7062691))

(assert (= (and b!7062691 (not res!2883628)) b!7062707))

(assert (= (and b!7062707 (not res!2883632)) b!7062712))

(assert (= (and b!7062712 (not res!2883619)) b!7062696))

(assert (= (and b!7062696 (not res!2883642)) b!7062703))

(assert (= (and b!7062703 (not res!2883623)) b!7062709))

(assert (= (and b!7062709 (not res!2883641)) b!7062693))

(assert (= (and b!7062693 (not res!2883639)) b!7062695))

(assert (= (and b!7062695 (not res!2883616)) b!7062697))

(assert (= (and b!7062697 (not res!2883631)) b!7062679))

(assert (= (and b!7062697 res!2883643) b!7062710))

(assert (= (and b!7062697 (not res!2883644)) b!7062685))

(assert (= (and b!7062685 (not res!2883637)) b!7062705))

(assert (= (and b!7062705 (not res!2883624)) b!7062704))

(assert (= (and b!7062704 (not res!2883633)) b!7062682))

(assert (= (and b!7062682 (not res!2883645)) b!7062701))

(assert (= (and start!685398 condSetEmpty!50034) setIsEmpty!50034))

(assert (= (and start!685398 (not condSetEmpty!50034)) setNonEmpty!50034))

(assert (= setNonEmpty!50034 b!7062684))

(assert (= start!685398 b!7062706))

(assert (= (and start!685398 (is-Cons!68202 s!7408)) b!7062698))

(declare-fun m!7783790 () Bool)

(assert (=> b!7062685 m!7783790))

(declare-fun m!7783792 () Bool)

(assert (=> b!7062685 m!7783792))

(declare-fun m!7783794 () Bool)

(assert (=> b!7062685 m!7783794))

(declare-fun m!7783796 () Bool)

(assert (=> b!7062685 m!7783796))

(declare-fun m!7783798 () Bool)

(assert (=> b!7062685 m!7783798))

(declare-fun m!7783800 () Bool)

(assert (=> b!7062685 m!7783800))

(declare-fun m!7783802 () Bool)

(assert (=> b!7062697 m!7783802))

(declare-fun m!7783804 () Bool)

(assert (=> b!7062697 m!7783804))

(declare-fun m!7783806 () Bool)

(assert (=> b!7062697 m!7783806))

(declare-fun m!7783808 () Bool)

(assert (=> b!7062697 m!7783808))

(declare-fun m!7783810 () Bool)

(assert (=> b!7062697 m!7783810))

(declare-fun m!7783812 () Bool)

(assert (=> b!7062687 m!7783812))

(declare-fun m!7783814 () Bool)

(assert (=> b!7062687 m!7783814))

(assert (=> b!7062687 m!7783814))

(declare-fun m!7783816 () Bool)

(assert (=> b!7062687 m!7783816))

(declare-fun m!7783818 () Bool)

(assert (=> b!7062687 m!7783818))

(declare-fun m!7783820 () Bool)

(assert (=> b!7062711 m!7783820))

(declare-fun m!7783822 () Bool)

(assert (=> b!7062711 m!7783822))

(declare-fun m!7783824 () Bool)

(assert (=> b!7062692 m!7783824))

(declare-fun m!7783826 () Bool)

(assert (=> b!7062692 m!7783826))

(declare-fun m!7783828 () Bool)

(assert (=> b!7062707 m!7783828))

(declare-fun m!7783830 () Bool)

(assert (=> b!7062694 m!7783830))

(declare-fun m!7783832 () Bool)

(assert (=> b!7062694 m!7783832))

(assert (=> b!7062694 m!7783822))

(declare-fun m!7783834 () Bool)

(assert (=> b!7062694 m!7783834))

(declare-fun m!7783836 () Bool)

(assert (=> b!7062702 m!7783836))

(assert (=> b!7062702 m!7783814))

(declare-fun m!7783838 () Bool)

(assert (=> b!7062686 m!7783838))

(assert (=> b!7062686 m!7783814))

(declare-fun m!7783840 () Bool)

(assert (=> b!7062709 m!7783840))

(declare-fun m!7783842 () Bool)

(assert (=> b!7062705 m!7783842))

(assert (=> b!7062678 m!7783838))

(assert (=> b!7062678 m!7783814))

(declare-fun m!7783844 () Bool)

(assert (=> b!7062701 m!7783844))

(declare-fun m!7783846 () Bool)

(assert (=> b!7062683 m!7783846))

(declare-fun m!7783848 () Bool)

(assert (=> b!7062679 m!7783848))

(declare-fun m!7783850 () Bool)

(assert (=> b!7062682 m!7783850))

(declare-fun m!7783852 () Bool)

(assert (=> setNonEmpty!50034 m!7783852))

(declare-fun m!7783854 () Bool)

(assert (=> b!7062712 m!7783854))

(declare-fun m!7783856 () Bool)

(assert (=> b!7062712 m!7783856))

(declare-fun m!7783858 () Bool)

(assert (=> b!7062712 m!7783858))

(declare-fun m!7783860 () Bool)

(assert (=> b!7062712 m!7783860))

(declare-fun m!7783862 () Bool)

(assert (=> b!7062712 m!7783862))

(declare-fun m!7783864 () Bool)

(assert (=> b!7062712 m!7783864))

(assert (=> b!7062691 m!7783790))

(declare-fun m!7783866 () Bool)

(assert (=> b!7062691 m!7783866))

(assert (=> b!7062691 m!7783814))

(assert (=> b!7062691 m!7783796))

(declare-fun m!7783868 () Bool)

(assert (=> b!7062691 m!7783868))

(declare-fun m!7783870 () Bool)

(assert (=> b!7062691 m!7783870))

(assert (=> b!7062691 m!7783818))

(declare-fun m!7783872 () Bool)

(assert (=> b!7062691 m!7783872))

(declare-fun m!7783874 () Bool)

(assert (=> b!7062691 m!7783874))

(declare-fun m!7783876 () Bool)

(assert (=> b!7062691 m!7783876))

(assert (=> b!7062691 m!7783792))

(declare-fun m!7783878 () Bool)

(assert (=> b!7062691 m!7783878))

(declare-fun m!7783880 () Bool)

(assert (=> b!7062691 m!7783880))

(assert (=> b!7062691 m!7783814))

(assert (=> b!7062691 m!7783814))

(declare-fun m!7783882 () Bool)

(assert (=> b!7062691 m!7783882))

(assert (=> b!7062691 m!7783814))

(declare-fun m!7783884 () Bool)

(assert (=> b!7062703 m!7783884))

(declare-fun m!7783886 () Bool)

(assert (=> start!685398 m!7783886))

(declare-fun m!7783888 () Bool)

(assert (=> start!685398 m!7783888))

(declare-fun m!7783890 () Bool)

(assert (=> start!685398 m!7783890))

(declare-fun m!7783892 () Bool)

(assert (=> b!7062700 m!7783892))

(declare-fun m!7783894 () Bool)

(assert (=> b!7062700 m!7783894))

(declare-fun m!7783896 () Bool)

(assert (=> b!7062700 m!7783896))

(declare-fun m!7783898 () Bool)

(assert (=> b!7062700 m!7783898))

(declare-fun m!7783900 () Bool)

(assert (=> b!7062700 m!7783900))

(declare-fun m!7783902 () Bool)

(assert (=> b!7062700 m!7783902))

(assert (=> b!7062690 m!7783812))

(declare-fun m!7783904 () Bool)

(assert (=> b!7062690 m!7783904))

(assert (=> b!7062690 m!7783814))

(assert (=> b!7062690 m!7783814))

(assert (=> b!7062690 m!7783814))

(assert (=> b!7062690 m!7783814))

(declare-fun m!7783906 () Bool)

(assert (=> b!7062690 m!7783906))

(declare-fun m!7783908 () Bool)

(assert (=> b!7062690 m!7783908))

(declare-fun m!7783910 () Bool)

(assert (=> b!7062690 m!7783910))

(declare-fun m!7783912 () Bool)

(assert (=> b!7062681 m!7783912))

(declare-fun m!7783914 () Bool)

(assert (=> b!7062688 m!7783914))

(declare-fun m!7783916 () Bool)

(assert (=> b!7062688 m!7783916))

(assert (=> b!7062688 m!7783822))

(declare-fun m!7783918 () Bool)

(assert (=> b!7062688 m!7783918))

(declare-fun m!7783920 () Bool)

(assert (=> b!7062688 m!7783920))

(assert (=> b!7062710 m!7783848))

(declare-fun m!7783922 () Bool)

(assert (=> b!7062693 m!7783922))

(declare-fun m!7783924 () Bool)

(assert (=> b!7062693 m!7783924))

(declare-fun m!7783926 () Bool)

(assert (=> b!7062693 m!7783926))

(declare-fun m!7783928 () Bool)

(assert (=> b!7062693 m!7783928))

(declare-fun m!7783930 () Bool)

(assert (=> b!7062693 m!7783930))

(assert (=> b!7062695 m!7783790))

(declare-fun m!7783932 () Bool)

(assert (=> b!7062695 m!7783932))

(assert (=> b!7062699 m!7783838))

(declare-fun m!7783934 () Bool)

(assert (=> b!7062680 m!7783934))

(declare-fun m!7783936 () Bool)

(assert (=> b!7062680 m!7783936))

(assert (=> b!7062680 m!7783814))

(declare-fun m!7783938 () Bool)

(assert (=> b!7062680 m!7783938))

(assert (=> b!7062680 m!7783814))

(assert (=> b!7062680 m!7783814))

(declare-fun m!7783940 () Bool)

(assert (=> b!7062680 m!7783940))

(declare-fun m!7783942 () Bool)

(assert (=> b!7062696 m!7783942))

(push 1)

(assert (not b!7062683))

(assert (not b!7062702))

(assert (not b!7062706))

(assert (not b!7062687))

(assert (not b!7062690))

(assert (not b!7062692))

(assert (not b!7062705))

(assert (not b!7062696))

(assert (not b!7062694))

(assert (not setNonEmpty!50034))

(assert (not b!7062686))

(assert (not b!7062679))

(assert (not b!7062684))

(assert (not start!685398))

(assert (not b!7062685))

(assert (not b!7062703))

(assert (not b!7062697))

(assert (not b!7062693))

(assert (not b!7062701))

(assert (not b!7062691))

(assert (not b!7062709))

(assert (not b!7062711))

(assert (not b!7062699))

(assert (not b!7062707))

(assert tp_is_empty!44425)

(assert (not b!7062698))

(assert (not b!7062695))

(assert (not b!7062710))

(assert (not b!7062682))

(assert (not b!7062700))

(assert (not b!7062680))

(assert (not b!7062712))

(assert (not b!7062688))

(assert (not b!7062678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7062843 () Bool)

(declare-fun res!2883753 () Bool)

(declare-fun e!4246087 () Bool)

(assert (=> b!7062843 (=> (not res!2883753) (not e!4246087))))

(declare-fun lt!2537626 () List!68327)

(declare-fun size!41175 (List!68327) Int)

(assert (=> b!7062843 (= res!2883753 (= (size!41175 lt!2537626) (+ (size!41175 lt!2537376) (size!41175 (exprs!7096 ct2!306)))))))

(declare-fun b!7062842 () Bool)

(declare-fun e!4246088 () List!68327)

(assert (=> b!7062842 (= e!4246088 (Cons!68203 (h!74651 lt!2537376) (++!15697 (t!382108 lt!2537376) (exprs!7096 ct2!306))))))

(declare-fun b!7062841 () Bool)

(assert (=> b!7062841 (= e!4246088 (exprs!7096 ct2!306))))

(declare-fun b!7062844 () Bool)

(assert (=> b!7062844 (= e!4246087 (or (not (= (exprs!7096 ct2!306) Nil!68203)) (= lt!2537626 lt!2537376)))))

(declare-fun d!2208254 () Bool)

(assert (=> d!2208254 e!4246087))

(declare-fun res!2883752 () Bool)

(assert (=> d!2208254 (=> (not res!2883752) (not e!4246087))))

(declare-fun content!13723 (List!68327) (Set Regex!17600))

(assert (=> d!2208254 (= res!2883752 (= (content!13723 lt!2537626) (set.union (content!13723 lt!2537376) (content!13723 (exprs!7096 ct2!306)))))))

(assert (=> d!2208254 (= lt!2537626 e!4246088)))

(declare-fun c!1316567 () Bool)

(assert (=> d!2208254 (= c!1316567 (is-Nil!68203 lt!2537376))))

(assert (=> d!2208254 (= (++!15697 lt!2537376 (exprs!7096 ct2!306)) lt!2537626)))

(assert (= (and d!2208254 c!1316567) b!7062841))

(assert (= (and d!2208254 (not c!1316567)) b!7062842))

(assert (= (and d!2208254 res!2883752) b!7062843))

(assert (= (and b!7062843 res!2883753) b!7062844))

(declare-fun m!7784098 () Bool)

(assert (=> b!7062843 m!7784098))

(declare-fun m!7784100 () Bool)

(assert (=> b!7062843 m!7784100))

(declare-fun m!7784102 () Bool)

(assert (=> b!7062843 m!7784102))

(declare-fun m!7784104 () Bool)

(assert (=> b!7062842 m!7784104))

(declare-fun m!7784106 () Bool)

(assert (=> d!2208254 m!7784106))

(declare-fun m!7784108 () Bool)

(assert (=> d!2208254 m!7784108))

(declare-fun m!7784110 () Bool)

(assert (=> d!2208254 m!7784110))

(assert (=> b!7062687 d!2208254))

(declare-fun call!641783 () List!68327)

(declare-fun c!1316582 () Bool)

(declare-fun bm!641774 () Bool)

(declare-fun c!1316581 () Bool)

(declare-fun $colon$colon!2636 (List!68327 Regex!17600) List!68327)

(assert (=> bm!641774 (= call!641783 ($colon$colon!2636 (exprs!7096 lt!2537422) (ite (or c!1316582 c!1316581) (regTwo!35712 (h!74651 (exprs!7096 lt!2537380))) (h!74651 (exprs!7096 lt!2537380)))))))

(declare-fun b!7062867 () Bool)

(declare-fun e!4246103 () Bool)

(assert (=> b!7062867 (= c!1316582 e!4246103)))

(declare-fun res!2883756 () Bool)

(assert (=> b!7062867 (=> (not res!2883756) (not e!4246103))))

(assert (=> b!7062867 (= res!2883756 (is-Concat!26445 (h!74651 (exprs!7096 lt!2537380))))))

(declare-fun e!4246104 () (Set Context!13192))

(declare-fun e!4246106 () (Set Context!13192))

(assert (=> b!7062867 (= e!4246104 e!4246106)))

(declare-fun b!7062868 () Bool)

(declare-fun e!4246101 () (Set Context!13192))

(declare-fun call!641779 () (Set Context!13192))

(assert (=> b!7062868 (= e!4246101 call!641779)))

(declare-fun b!7062869 () Bool)

(declare-fun e!4246105 () (Set Context!13192))

(assert (=> b!7062869 (= e!4246105 (set.insert lt!2537422 (as set.empty (Set Context!13192))))))

(declare-fun b!7062870 () Bool)

(declare-fun e!4246102 () (Set Context!13192))

(assert (=> b!7062870 (= e!4246102 call!641779)))

(declare-fun d!2208256 () Bool)

(declare-fun c!1316579 () Bool)

(assert (=> d!2208256 (= c!1316579 (and (is-ElementMatch!17600 (h!74651 (exprs!7096 lt!2537380))) (= (c!1316545 (h!74651 (exprs!7096 lt!2537380))) (h!74650 s!7408))))))

(assert (=> d!2208256 (= (derivationStepZipperDown!2234 (h!74651 (exprs!7096 lt!2537380)) lt!2537422 (h!74650 s!7408)) e!4246105)))

(declare-fun b!7062871 () Bool)

(assert (=> b!7062871 (= e!4246101 (as set.empty (Set Context!13192)))))

(declare-fun b!7062872 () Bool)

(declare-fun call!641781 () (Set Context!13192))

(declare-fun call!641782 () (Set Context!13192))

(assert (=> b!7062872 (= e!4246106 (set.union call!641781 call!641782))))

(declare-fun b!7062873 () Bool)

(declare-fun call!641780 () (Set Context!13192))

(assert (=> b!7062873 (= e!4246104 (set.union call!641781 call!641780))))

(declare-fun b!7062874 () Bool)

(assert (=> b!7062874 (= e!4246106 e!4246102)))

(assert (=> b!7062874 (= c!1316581 (is-Concat!26445 (h!74651 (exprs!7096 lt!2537380))))))

(declare-fun bm!641775 () Bool)

(declare-fun call!641784 () List!68327)

(assert (=> bm!641775 (= call!641784 call!641783)))

(declare-fun bm!641776 () Bool)

(assert (=> bm!641776 (= call!641782 call!641780)))

(declare-fun b!7062875 () Bool)

(assert (=> b!7062875 (= e!4246105 e!4246104)))

(declare-fun c!1316580 () Bool)

(assert (=> b!7062875 (= c!1316580 (is-Union!17600 (h!74651 (exprs!7096 lt!2537380))))))

(declare-fun bm!641777 () Bool)

(assert (=> bm!641777 (= call!641779 call!641782)))

(declare-fun b!7062876 () Bool)

(assert (=> b!7062876 (= e!4246103 (nullable!7283 (regOne!35712 (h!74651 (exprs!7096 lt!2537380)))))))

(declare-fun bm!641778 () Bool)

(assert (=> bm!641778 (= call!641781 (derivationStepZipperDown!2234 (ite c!1316580 (regOne!35713 (h!74651 (exprs!7096 lt!2537380))) (regOne!35712 (h!74651 (exprs!7096 lt!2537380)))) (ite c!1316580 lt!2537422 (Context!13193 call!641783)) (h!74650 s!7408)))))

(declare-fun bm!641779 () Bool)

(assert (=> bm!641779 (= call!641780 (derivationStepZipperDown!2234 (ite c!1316580 (regTwo!35713 (h!74651 (exprs!7096 lt!2537380))) (ite c!1316582 (regTwo!35712 (h!74651 (exprs!7096 lt!2537380))) (ite c!1316581 (regOne!35712 (h!74651 (exprs!7096 lt!2537380))) (reg!17929 (h!74651 (exprs!7096 lt!2537380)))))) (ite (or c!1316580 c!1316582) lt!2537422 (Context!13193 call!641784)) (h!74650 s!7408)))))

(declare-fun b!7062877 () Bool)

(declare-fun c!1316578 () Bool)

(assert (=> b!7062877 (= c!1316578 (is-Star!17600 (h!74651 (exprs!7096 lt!2537380))))))

(assert (=> b!7062877 (= e!4246102 e!4246101)))

(assert (= (and d!2208256 c!1316579) b!7062869))

(assert (= (and d!2208256 (not c!1316579)) b!7062875))

(assert (= (and b!7062875 c!1316580) b!7062873))

(assert (= (and b!7062875 (not c!1316580)) b!7062867))

(assert (= (and b!7062867 res!2883756) b!7062876))

(assert (= (and b!7062867 c!1316582) b!7062872))

(assert (= (and b!7062867 (not c!1316582)) b!7062874))

(assert (= (and b!7062874 c!1316581) b!7062870))

(assert (= (and b!7062874 (not c!1316581)) b!7062877))

(assert (= (and b!7062877 c!1316578) b!7062868))

(assert (= (and b!7062877 (not c!1316578)) b!7062871))

(assert (= (or b!7062870 b!7062868) bm!641775))

(assert (= (or b!7062870 b!7062868) bm!641777))

(assert (= (or b!7062872 bm!641777) bm!641776))

(assert (= (or b!7062872 bm!641775) bm!641774))

(assert (= (or b!7062873 b!7062872) bm!641778))

(assert (= (or b!7062873 bm!641776) bm!641779))

(declare-fun m!7784112 () Bool)

(assert (=> bm!641779 m!7784112))

(declare-fun m!7784114 () Bool)

(assert (=> bm!641778 m!7784114))

(assert (=> b!7062869 m!7783908))

(declare-fun m!7784116 () Bool)

(assert (=> bm!641774 m!7784116))

(declare-fun m!7784118 () Bool)

(assert (=> b!7062876 m!7784118))

(assert (=> b!7062687 d!2208256))

(declare-fun d!2208258 () Bool)

(declare-fun forall!16550 (List!68327 Int) Bool)

(assert (=> d!2208258 (forall!16550 (++!15697 lt!2537376 (exprs!7096 ct2!306)) lambda!422549)))

(declare-fun lt!2537629 () Unit!161876)

(declare-fun choose!53961 (List!68327 List!68327 Int) Unit!161876)

(assert (=> d!2208258 (= lt!2537629 (choose!53961 lt!2537376 (exprs!7096 ct2!306) lambda!422549))))

(assert (=> d!2208258 (forall!16550 lt!2537376 lambda!422549)))

(assert (=> d!2208258 (= (lemmaConcatPreservesForall!911 lt!2537376 (exprs!7096 ct2!306) lambda!422549) lt!2537629)))

(declare-fun bs!1879322 () Bool)

(assert (= bs!1879322 d!2208258))

(assert (=> bs!1879322 m!7783818))

(assert (=> bs!1879322 m!7783818))

(declare-fun m!7784120 () Bool)

(assert (=> bs!1879322 m!7784120))

(declare-fun m!7784122 () Bool)

(assert (=> bs!1879322 m!7784122))

(declare-fun m!7784124 () Bool)

(assert (=> bs!1879322 m!7784124))

(assert (=> b!7062687 d!2208258))

(declare-fun d!2208260 () Bool)

(declare-fun c!1316588 () Bool)

(declare-fun e!4246113 () Bool)

(assert (=> d!2208260 (= c!1316588 e!4246113)))

(declare-fun res!2883759 () Bool)

(assert (=> d!2208260 (=> (not res!2883759) (not e!4246113))))

(assert (=> d!2208260 (= res!2883759 (is-Cons!68203 (exprs!7096 lt!2537422)))))

(declare-fun e!4246114 () (Set Context!13192))

(assert (=> d!2208260 (= (derivationStepZipperUp!2184 lt!2537422 (h!74650 s!7408)) e!4246114)))

(declare-fun call!641787 () (Set Context!13192))

(declare-fun b!7062888 () Bool)

(assert (=> b!7062888 (= e!4246114 (set.union call!641787 (derivationStepZipperUp!2184 (Context!13193 (t!382108 (exprs!7096 lt!2537422))) (h!74650 s!7408))))))

(declare-fun b!7062889 () Bool)

(declare-fun e!4246115 () (Set Context!13192))

(assert (=> b!7062889 (= e!4246115 (as set.empty (Set Context!13192)))))

(declare-fun b!7062890 () Bool)

(assert (=> b!7062890 (= e!4246115 call!641787)))

(declare-fun b!7062891 () Bool)

(assert (=> b!7062891 (= e!4246113 (nullable!7283 (h!74651 (exprs!7096 lt!2537422))))))

(declare-fun bm!641782 () Bool)

(assert (=> bm!641782 (= call!641787 (derivationStepZipperDown!2234 (h!74651 (exprs!7096 lt!2537422)) (Context!13193 (t!382108 (exprs!7096 lt!2537422))) (h!74650 s!7408)))))

(declare-fun b!7062892 () Bool)

(assert (=> b!7062892 (= e!4246114 e!4246115)))

(declare-fun c!1316587 () Bool)

(assert (=> b!7062892 (= c!1316587 (is-Cons!68203 (exprs!7096 lt!2537422)))))

(assert (= (and d!2208260 res!2883759) b!7062891))

(assert (= (and d!2208260 c!1316588) b!7062888))

(assert (= (and d!2208260 (not c!1316588)) b!7062892))

(assert (= (and b!7062892 c!1316587) b!7062890))

(assert (= (and b!7062892 (not c!1316587)) b!7062889))

(assert (= (or b!7062888 b!7062890) bm!641782))

(declare-fun m!7784126 () Bool)

(assert (=> b!7062888 m!7784126))

(declare-fun m!7784128 () Bool)

(assert (=> b!7062891 m!7784128))

(declare-fun m!7784130 () Bool)

(assert (=> bm!641782 m!7784130))

(assert (=> b!7062687 d!2208260))

(declare-fun d!2208262 () Bool)

(declare-fun lt!2537632 () Int)

(assert (=> d!2208262 (>= lt!2537632 0)))

(declare-fun e!4246118 () Int)

(assert (=> d!2208262 (= lt!2537632 e!4246118)))

(declare-fun c!1316591 () Bool)

(assert (=> d!2208262 (= c!1316591 (is-Cons!68204 (Cons!68204 lt!2537417 Nil!68204)))))

(assert (=> d!2208262 (= (zipperDepthTotal!565 (Cons!68204 lt!2537417 Nil!68204)) lt!2537632)))

(declare-fun b!7062897 () Bool)

(assert (=> b!7062897 (= e!4246118 (+ (contextDepthTotal!536 (h!74652 (Cons!68204 lt!2537417 Nil!68204))) (zipperDepthTotal!565 (t!382109 (Cons!68204 lt!2537417 Nil!68204)))))))

(declare-fun b!7062898 () Bool)

(assert (=> b!7062898 (= e!4246118 0)))

(assert (= (and d!2208262 c!1316591) b!7062897))

(assert (= (and d!2208262 (not c!1316591)) b!7062898))

(declare-fun m!7784132 () Bool)

(assert (=> b!7062897 m!7784132))

(declare-fun m!7784134 () Bool)

(assert (=> b!7062897 m!7784134))

(assert (=> b!7062707 d!2208262))

(declare-fun d!2208264 () Bool)

(declare-fun c!1316594 () Bool)

(assert (=> d!2208264 (= c!1316594 (isEmpty!39790 (t!382107 s!7408)))))

(declare-fun e!4246121 () Bool)

(assert (=> d!2208264 (= (matchZipper!3140 lt!2537371 (t!382107 s!7408)) e!4246121)))

(declare-fun b!7062903 () Bool)

(declare-fun nullableZipper!2675 ((Set Context!13192)) Bool)

(assert (=> b!7062903 (= e!4246121 (nullableZipper!2675 lt!2537371))))

(declare-fun b!7062904 () Bool)

(assert (=> b!7062904 (= e!4246121 (matchZipper!3140 (derivationStepZipper!3050 lt!2537371 (head!14378 (t!382107 s!7408))) (tail!13749 (t!382107 s!7408))))))

(assert (= (and d!2208264 c!1316594) b!7062903))

(assert (= (and d!2208264 (not c!1316594)) b!7062904))

(declare-fun m!7784136 () Bool)

(assert (=> d!2208264 m!7784136))

(declare-fun m!7784138 () Bool)

(assert (=> b!7062903 m!7784138))

(declare-fun m!7784140 () Bool)

(assert (=> b!7062904 m!7784140))

(assert (=> b!7062904 m!7784140))

(declare-fun m!7784142 () Bool)

(assert (=> b!7062904 m!7784142))

(declare-fun m!7784144 () Bool)

(assert (=> b!7062904 m!7784144))

(assert (=> b!7062904 m!7784142))

(assert (=> b!7062904 m!7784144))

(declare-fun m!7784146 () Bool)

(assert (=> b!7062904 m!7784146))

(assert (=> b!7062686 d!2208264))

(assert (=> b!7062686 d!2208258))

(declare-fun bs!1879323 () Bool)

(declare-fun d!2208266 () Bool)

(assert (= bs!1879323 (and d!2208266 b!7062688)))

(declare-fun lambda!422617 () Int)

(assert (=> bs!1879323 (= lambda!422617 lambda!422550)))

(assert (=> d!2208266 true))

(assert (=> d!2208266 (= (derivationStepZipper!3050 lt!2537410 (h!74650 s!7408)) (flatMap!2526 lt!2537410 lambda!422617))))

(declare-fun bs!1879324 () Bool)

(assert (= bs!1879324 d!2208266))

(declare-fun m!7784148 () Bool)

(assert (=> bs!1879324 m!7784148))

(assert (=> b!7062688 d!2208266))

(declare-fun d!2208268 () Bool)

(declare-fun dynLambda!27702 (Int Context!13192) (Set Context!13192))

(assert (=> d!2208268 (= (flatMap!2526 lt!2537410 lambda!422550) (dynLambda!27702 lambda!422550 lt!2537373))))

(declare-fun lt!2537635 () Unit!161876)

(declare-fun choose!53962 ((Set Context!13192) Context!13192 Int) Unit!161876)

(assert (=> d!2208268 (= lt!2537635 (choose!53962 lt!2537410 lt!2537373 lambda!422550))))

(assert (=> d!2208268 (= lt!2537410 (set.insert lt!2537373 (as set.empty (Set Context!13192))))))

(assert (=> d!2208268 (= (lemmaFlatMapOnSingletonSet!2035 lt!2537410 lt!2537373 lambda!422550) lt!2537635)))

(declare-fun b_lambda!269379 () Bool)

(assert (=> (not b_lambda!269379) (not d!2208268)))

(declare-fun bs!1879325 () Bool)

(assert (= bs!1879325 d!2208268))

(assert (=> bs!1879325 m!7783918))

(declare-fun m!7784150 () Bool)

(assert (=> bs!1879325 m!7784150))

(declare-fun m!7784152 () Bool)

(assert (=> bs!1879325 m!7784152))

(assert (=> bs!1879325 m!7783820))

(assert (=> b!7062688 d!2208268))

(declare-fun d!2208270 () Bool)

(declare-fun choose!53963 ((Set Context!13192) Int) (Set Context!13192))

(assert (=> d!2208270 (= (flatMap!2526 lt!2537410 lambda!422550) (choose!53963 lt!2537410 lambda!422550))))

(declare-fun bs!1879326 () Bool)

(assert (= bs!1879326 d!2208270))

(declare-fun m!7784154 () Bool)

(assert (=> bs!1879326 m!7784154))

(assert (=> b!7062688 d!2208270))

(declare-fun d!2208272 () Bool)

(assert (=> d!2208272 (forall!16550 (++!15697 (exprs!7096 lt!2537380) (exprs!7096 ct2!306)) lambda!422549)))

(declare-fun lt!2537636 () Unit!161876)

(assert (=> d!2208272 (= lt!2537636 (choose!53961 (exprs!7096 lt!2537380) (exprs!7096 ct2!306) lambda!422549))))

(assert (=> d!2208272 (forall!16550 (exprs!7096 lt!2537380) lambda!422549)))

(assert (=> d!2208272 (= (lemmaConcatPreservesForall!911 (exprs!7096 lt!2537380) (exprs!7096 ct2!306) lambda!422549) lt!2537636)))

(declare-fun bs!1879327 () Bool)

(assert (= bs!1879327 d!2208272))

(assert (=> bs!1879327 m!7783832))

(assert (=> bs!1879327 m!7783832))

(declare-fun m!7784156 () Bool)

(assert (=> bs!1879327 m!7784156))

(declare-fun m!7784158 () Bool)

(assert (=> bs!1879327 m!7784158))

(declare-fun m!7784160 () Bool)

(assert (=> bs!1879327 m!7784160))

(assert (=> b!7062688 d!2208272))

(declare-fun d!2208274 () Bool)

(declare-fun c!1316598 () Bool)

(declare-fun e!4246122 () Bool)

(assert (=> d!2208274 (= c!1316598 e!4246122)))

(declare-fun res!2883760 () Bool)

(assert (=> d!2208274 (=> (not res!2883760) (not e!4246122))))

(assert (=> d!2208274 (= res!2883760 (is-Cons!68203 (exprs!7096 lt!2537373)))))

(declare-fun e!4246123 () (Set Context!13192))

(assert (=> d!2208274 (= (derivationStepZipperUp!2184 lt!2537373 (h!74650 s!7408)) e!4246123)))

(declare-fun b!7062907 () Bool)

(declare-fun call!641788 () (Set Context!13192))

(assert (=> b!7062907 (= e!4246123 (set.union call!641788 (derivationStepZipperUp!2184 (Context!13193 (t!382108 (exprs!7096 lt!2537373))) (h!74650 s!7408))))))

(declare-fun b!7062908 () Bool)

(declare-fun e!4246124 () (Set Context!13192))

(assert (=> b!7062908 (= e!4246124 (as set.empty (Set Context!13192)))))

(declare-fun b!7062909 () Bool)

(assert (=> b!7062909 (= e!4246124 call!641788)))

(declare-fun b!7062910 () Bool)

(assert (=> b!7062910 (= e!4246122 (nullable!7283 (h!74651 (exprs!7096 lt!2537373))))))

(declare-fun bm!641783 () Bool)

(assert (=> bm!641783 (= call!641788 (derivationStepZipperDown!2234 (h!74651 (exprs!7096 lt!2537373)) (Context!13193 (t!382108 (exprs!7096 lt!2537373))) (h!74650 s!7408)))))

(declare-fun b!7062911 () Bool)

(assert (=> b!7062911 (= e!4246123 e!4246124)))

(declare-fun c!1316597 () Bool)

(assert (=> b!7062911 (= c!1316597 (is-Cons!68203 (exprs!7096 lt!2537373)))))

(assert (= (and d!2208274 res!2883760) b!7062910))

(assert (= (and d!2208274 c!1316598) b!7062907))

(assert (= (and d!2208274 (not c!1316598)) b!7062911))

(assert (= (and b!7062911 c!1316597) b!7062909))

(assert (= (and b!7062911 (not c!1316597)) b!7062908))

(assert (= (or b!7062907 b!7062909) bm!641783))

(declare-fun m!7784162 () Bool)

(assert (=> b!7062907 m!7784162))

(declare-fun m!7784164 () Bool)

(assert (=> b!7062910 m!7784164))

(declare-fun m!7784166 () Bool)

(assert (=> bm!641783 m!7784166))

(assert (=> b!7062688 d!2208274))

(declare-fun d!2208276 () Bool)

(declare-fun c!1316599 () Bool)

(assert (=> d!2208276 (= c!1316599 (isEmpty!39790 lt!2537418))))

(declare-fun e!4246125 () Bool)

(assert (=> d!2208276 (= (matchZipper!3140 lt!2537390 lt!2537418) e!4246125)))

(declare-fun b!7062912 () Bool)

(assert (=> b!7062912 (= e!4246125 (nullableZipper!2675 lt!2537390))))

(declare-fun b!7062913 () Bool)

(assert (=> b!7062913 (= e!4246125 (matchZipper!3140 (derivationStepZipper!3050 lt!2537390 (head!14378 lt!2537418)) (tail!13749 lt!2537418)))))

(assert (= (and d!2208276 c!1316599) b!7062912))

(assert (= (and d!2208276 (not c!1316599)) b!7062913))

(declare-fun m!7784168 () Bool)

(assert (=> d!2208276 m!7784168))

(declare-fun m!7784170 () Bool)

(assert (=> b!7062912 m!7784170))

(declare-fun m!7784172 () Bool)

(assert (=> b!7062913 m!7784172))

(assert (=> b!7062913 m!7784172))

(declare-fun m!7784174 () Bool)

(assert (=> b!7062913 m!7784174))

(declare-fun m!7784176 () Bool)

(assert (=> b!7062913 m!7784176))

(assert (=> b!7062913 m!7784174))

(assert (=> b!7062913 m!7784176))

(declare-fun m!7784178 () Bool)

(assert (=> b!7062913 m!7784178))

(assert (=> b!7062710 d!2208276))

(declare-fun d!2208278 () Bool)

(assert (=> d!2208278 (= (isEmpty!39790 (_1!37404 lt!2537372)) (is-Nil!68202 (_1!37404 lt!2537372)))))

(assert (=> b!7062709 d!2208278))

(declare-fun d!2208280 () Bool)

(assert (=> d!2208280 (= (flatMap!2526 lt!2537406 lambda!422550) (dynLambda!27702 lambda!422550 lt!2537417))))

(declare-fun lt!2537637 () Unit!161876)

(assert (=> d!2208280 (= lt!2537637 (choose!53962 lt!2537406 lt!2537417 lambda!422550))))

(assert (=> d!2208280 (= lt!2537406 (set.insert lt!2537417 (as set.empty (Set Context!13192))))))

(assert (=> d!2208280 (= (lemmaFlatMapOnSingletonSet!2035 lt!2537406 lt!2537417 lambda!422550) lt!2537637)))

(declare-fun b_lambda!269381 () Bool)

(assert (=> (not b_lambda!269381) (not d!2208280)))

(declare-fun bs!1879328 () Bool)

(assert (= bs!1879328 d!2208280))

(assert (=> bs!1879328 m!7783792))

(declare-fun m!7784180 () Bool)

(assert (=> bs!1879328 m!7784180))

(declare-fun m!7784182 () Bool)

(assert (=> bs!1879328 m!7784182))

(assert (=> bs!1879328 m!7783870))

(assert (=> b!7062691 d!2208280))

(declare-fun d!2208282 () Bool)

(declare-fun lt!2537640 () Int)

(assert (=> d!2208282 (>= lt!2537640 0)))

(declare-fun e!4246128 () Int)

(assert (=> d!2208282 (= lt!2537640 e!4246128)))

(declare-fun c!1316603 () Bool)

(assert (=> d!2208282 (= c!1316603 (is-Cons!68203 (exprs!7096 lt!2537417)))))

(assert (=> d!2208282 (= (contextDepthTotal!536 lt!2537417) lt!2537640)))

(declare-fun b!7062918 () Bool)

(declare-fun regexDepthTotal!322 (Regex!17600) Int)

(assert (=> b!7062918 (= e!4246128 (+ (regexDepthTotal!322 (h!74651 (exprs!7096 lt!2537417))) (contextDepthTotal!536 (Context!13193 (t!382108 (exprs!7096 lt!2537417))))))))

(declare-fun b!7062919 () Bool)

(assert (=> b!7062919 (= e!4246128 1)))

(assert (= (and d!2208282 c!1316603) b!7062918))

(assert (= (and d!2208282 (not c!1316603)) b!7062919))

(declare-fun m!7784184 () Bool)

(assert (=> b!7062918 m!7784184))

(declare-fun m!7784186 () Bool)

(assert (=> b!7062918 m!7784186))

(assert (=> b!7062691 d!2208282))

(declare-fun d!2208284 () Bool)

(declare-fun lt!2537641 () Int)

(assert (=> d!2208284 (>= lt!2537641 0)))

(declare-fun e!4246129 () Int)

(assert (=> d!2208284 (= lt!2537641 e!4246129)))

(declare-fun c!1316604 () Bool)

(assert (=> d!2208284 (= c!1316604 (is-Cons!68204 lt!2537423))))

(assert (=> d!2208284 (= (zipperDepthTotal!565 lt!2537423) lt!2537641)))

(declare-fun b!7062920 () Bool)

(assert (=> b!7062920 (= e!4246129 (+ (contextDepthTotal!536 (h!74652 lt!2537423)) (zipperDepthTotal!565 (t!382109 lt!2537423))))))

(declare-fun b!7062921 () Bool)

(assert (=> b!7062921 (= e!4246129 0)))

(assert (= (and d!2208284 c!1316604) b!7062920))

(assert (= (and d!2208284 (not c!1316604)) b!7062921))

(declare-fun m!7784188 () Bool)

(assert (=> b!7062920 m!7784188))

(declare-fun m!7784190 () Bool)

(assert (=> b!7062920 m!7784190))

(assert (=> b!7062691 d!2208284))

(declare-fun d!2208286 () Bool)

(declare-fun e!4246132 () Bool)

(assert (=> d!2208286 e!4246132))

(declare-fun res!2883763 () Bool)

(assert (=> d!2208286 (=> (not res!2883763) (not e!4246132))))

(declare-fun lt!2537644 () List!68328)

(declare-fun noDuplicate!2704 (List!68328) Bool)

(assert (=> d!2208286 (= res!2883763 (noDuplicate!2704 lt!2537644))))

(declare-fun choose!53964 ((Set Context!13192)) List!68328)

(assert (=> d!2208286 (= lt!2537644 (choose!53964 z1!570))))

(assert (=> d!2208286 (= (toList!10941 z1!570) lt!2537644)))

(declare-fun b!7062924 () Bool)

(declare-fun content!13724 (List!68328) (Set Context!13192))

(assert (=> b!7062924 (= e!4246132 (= (content!13724 lt!2537644) z1!570))))

(assert (= (and d!2208286 res!2883763) b!7062924))

(declare-fun m!7784192 () Bool)

(assert (=> d!2208286 m!7784192))

(declare-fun m!7784194 () Bool)

(assert (=> d!2208286 m!7784194))

(declare-fun m!7784196 () Bool)

(assert (=> b!7062924 m!7784196))

(assert (=> b!7062691 d!2208286))

(declare-fun d!2208288 () Bool)

(declare-fun choose!53965 ((Set Context!13192) Int) (Set Context!13192))

(assert (=> d!2208288 (= (map!15933 lt!2537406 lambda!422548) (choose!53965 lt!2537406 lambda!422548))))

(declare-fun bs!1879329 () Bool)

(assert (= bs!1879329 d!2208288))

(declare-fun m!7784198 () Bool)

(assert (=> bs!1879329 m!7784198))

(assert (=> b!7062691 d!2208288))

(assert (=> b!7062691 d!2208258))

(declare-fun d!2208290 () Bool)

(declare-fun lt!2537645 () Int)

(assert (=> d!2208290 (>= lt!2537645 0)))

(declare-fun e!4246133 () Int)

(assert (=> d!2208290 (= lt!2537645 e!4246133)))

(declare-fun c!1316605 () Bool)

(assert (=> d!2208290 (= c!1316605 (is-Cons!68203 (exprs!7096 lt!2537380)))))

(assert (=> d!2208290 (= (contextDepthTotal!536 lt!2537380) lt!2537645)))

(declare-fun b!7062925 () Bool)

(assert (=> b!7062925 (= e!4246133 (+ (regexDepthTotal!322 (h!74651 (exprs!7096 lt!2537380))) (contextDepthTotal!536 (Context!13193 (t!382108 (exprs!7096 lt!2537380))))))))

(declare-fun b!7062926 () Bool)

(assert (=> b!7062926 (= e!4246133 1)))

(assert (= (and d!2208290 c!1316605) b!7062925))

(assert (= (and d!2208290 (not c!1316605)) b!7062926))

(declare-fun m!7784200 () Bool)

(assert (=> b!7062925 m!7784200))

(declare-fun m!7784202 () Bool)

(assert (=> b!7062925 m!7784202))

(assert (=> b!7062691 d!2208290))

(declare-fun d!2208292 () Bool)

(assert (=> d!2208292 (= (flatMap!2526 lt!2537406 lambda!422550) (choose!53963 lt!2537406 lambda!422550))))

(declare-fun bs!1879330 () Bool)

(assert (= bs!1879330 d!2208292))

(declare-fun m!7784204 () Bool)

(assert (=> bs!1879330 m!7784204))

(assert (=> b!7062691 d!2208292))

(declare-fun d!2208294 () Bool)

(assert (=> d!2208294 (<= (contextDepthTotal!536 lt!2537380) (zipperDepthTotal!565 lt!2537423))))

(declare-fun lt!2537648 () Unit!161876)

(declare-fun choose!53966 (List!68328 Context!13192) Unit!161876)

(assert (=> d!2208294 (= lt!2537648 (choose!53966 lt!2537423 lt!2537380))))

(declare-fun contains!20492 (List!68328 Context!13192) Bool)

(assert (=> d!2208294 (contains!20492 lt!2537423 lt!2537380)))

(assert (=> d!2208294 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!103 lt!2537423 lt!2537380) lt!2537648)))

(declare-fun bs!1879331 () Bool)

(assert (= bs!1879331 d!2208294))

(assert (=> bs!1879331 m!7783872))

(assert (=> bs!1879331 m!7783876))

(declare-fun m!7784206 () Bool)

(assert (=> bs!1879331 m!7784206))

(declare-fun m!7784208 () Bool)

(assert (=> bs!1879331 m!7784208))

(assert (=> b!7062691 d!2208294))

(declare-fun d!2208296 () Bool)

(declare-fun c!1316608 () Bool)

(declare-fun e!4246134 () Bool)

(assert (=> d!2208296 (= c!1316608 e!4246134)))

(declare-fun res!2883764 () Bool)

(assert (=> d!2208296 (=> (not res!2883764) (not e!4246134))))

(assert (=> d!2208296 (= res!2883764 (is-Cons!68203 (exprs!7096 lt!2537417)))))

(declare-fun e!4246135 () (Set Context!13192))

(assert (=> d!2208296 (= (derivationStepZipperUp!2184 lt!2537417 (h!74650 s!7408)) e!4246135)))

(declare-fun call!641789 () (Set Context!13192))

(declare-fun b!7062927 () Bool)

(assert (=> b!7062927 (= e!4246135 (set.union call!641789 (derivationStepZipperUp!2184 (Context!13193 (t!382108 (exprs!7096 lt!2537417))) (h!74650 s!7408))))))

(declare-fun b!7062928 () Bool)

(declare-fun e!4246136 () (Set Context!13192))

(assert (=> b!7062928 (= e!4246136 (as set.empty (Set Context!13192)))))

(declare-fun b!7062929 () Bool)

(assert (=> b!7062929 (= e!4246136 call!641789)))

(declare-fun b!7062930 () Bool)

(assert (=> b!7062930 (= e!4246134 (nullable!7283 (h!74651 (exprs!7096 lt!2537417))))))

(declare-fun bm!641784 () Bool)

(assert (=> bm!641784 (= call!641789 (derivationStepZipperDown!2234 (h!74651 (exprs!7096 lt!2537417)) (Context!13193 (t!382108 (exprs!7096 lt!2537417))) (h!74650 s!7408)))))

(declare-fun b!7062931 () Bool)

(assert (=> b!7062931 (= e!4246135 e!4246136)))

(declare-fun c!1316607 () Bool)

(assert (=> b!7062931 (= c!1316607 (is-Cons!68203 (exprs!7096 lt!2537417)))))

(assert (= (and d!2208296 res!2883764) b!7062930))

(assert (= (and d!2208296 c!1316608) b!7062927))

(assert (= (and d!2208296 (not c!1316608)) b!7062931))

(assert (= (and b!7062931 c!1316607) b!7062929))

(assert (= (and b!7062931 (not c!1316607)) b!7062928))

(assert (= (or b!7062927 b!7062929) bm!641784))

(declare-fun m!7784210 () Bool)

(assert (=> b!7062927 m!7784210))

(declare-fun m!7784212 () Bool)

(assert (=> b!7062930 m!7784212))

(declare-fun m!7784214 () Bool)

(assert (=> bm!641784 m!7784214))

(assert (=> b!7062691 d!2208296))

(assert (=> b!7062691 d!2208254))

(declare-fun d!2208298 () Bool)

(declare-fun dynLambda!27703 (Int Context!13192) Context!13192)

(assert (=> d!2208298 (= (map!15933 lt!2537406 lambda!422548) (set.insert (dynLambda!27703 lambda!422548 lt!2537417) (as set.empty (Set Context!13192))))))

(declare-fun lt!2537651 () Unit!161876)

(declare-fun choose!53967 ((Set Context!13192) Context!13192 Int) Unit!161876)

(assert (=> d!2208298 (= lt!2537651 (choose!53967 lt!2537406 lt!2537417 lambda!422548))))

(assert (=> d!2208298 (= lt!2537406 (set.insert lt!2537417 (as set.empty (Set Context!13192))))))

(assert (=> d!2208298 (= (lemmaMapOnSingletonSet!417 lt!2537406 lt!2537417 lambda!422548) lt!2537651)))

(declare-fun b_lambda!269383 () Bool)

(assert (=> (not b_lambda!269383) (not d!2208298)))

(declare-fun bs!1879332 () Bool)

(assert (= bs!1879332 d!2208298))

(declare-fun m!7784216 () Bool)

(assert (=> bs!1879332 m!7784216))

(declare-fun m!7784218 () Bool)

(assert (=> bs!1879332 m!7784218))

(assert (=> bs!1879332 m!7784216))

(declare-fun m!7784220 () Bool)

(assert (=> bs!1879332 m!7784220))

(assert (=> bs!1879332 m!7783880))

(assert (=> bs!1879332 m!7783870))

(assert (=> b!7062691 d!2208298))

(assert (=> b!7062711 d!2208272))

(declare-fun d!2208300 () Bool)

(assert (=> d!2208300 (= (flatMap!2526 lt!2537401 lambda!422550) (dynLambda!27702 lambda!422550 lt!2537422))))

(declare-fun lt!2537652 () Unit!161876)

(assert (=> d!2208300 (= lt!2537652 (choose!53962 lt!2537401 lt!2537422 lambda!422550))))

(assert (=> d!2208300 (= lt!2537401 (set.insert lt!2537422 (as set.empty (Set Context!13192))))))

(assert (=> d!2208300 (= (lemmaFlatMapOnSingletonSet!2035 lt!2537401 lt!2537422 lambda!422550) lt!2537652)))

(declare-fun b_lambda!269385 () Bool)

(assert (=> (not b_lambda!269385) (not d!2208300)))

(declare-fun bs!1879333 () Bool)

(assert (= bs!1879333 d!2208300))

(assert (=> bs!1879333 m!7783910))

(declare-fun m!7784222 () Bool)

(assert (=> bs!1879333 m!7784222))

(declare-fun m!7784224 () Bool)

(assert (=> bs!1879333 m!7784224))

(assert (=> bs!1879333 m!7783908))

(assert (=> b!7062690 d!2208300))

(assert (=> b!7062690 d!2208260))

(assert (=> b!7062690 d!2208258))

(declare-fun d!2208302 () Bool)

(assert (=> d!2208302 (= (flatMap!2526 lt!2537401 lambda!422550) (choose!53963 lt!2537401 lambda!422550))))

(declare-fun bs!1879334 () Bool)

(assert (= bs!1879334 d!2208302))

(declare-fun m!7784226 () Bool)

(assert (=> bs!1879334 m!7784226))

(assert (=> b!7062690 d!2208302))

(declare-fun bs!1879335 () Bool)

(declare-fun d!2208304 () Bool)

(assert (= bs!1879335 (and d!2208304 b!7062688)))

(declare-fun lambda!422618 () Int)

(assert (=> bs!1879335 (= lambda!422618 lambda!422550)))

(declare-fun bs!1879336 () Bool)

(assert (= bs!1879336 (and d!2208304 d!2208266)))

(assert (=> bs!1879336 (= lambda!422618 lambda!422617)))

(assert (=> d!2208304 true))

(assert (=> d!2208304 (= (derivationStepZipper!3050 lt!2537401 (h!74650 s!7408)) (flatMap!2526 lt!2537401 lambda!422618))))

(declare-fun bs!1879337 () Bool)

(assert (= bs!1879337 d!2208304))

(declare-fun m!7784228 () Bool)

(assert (=> bs!1879337 m!7784228))

(assert (=> b!7062690 d!2208304))

(declare-fun d!2208306 () Bool)

(declare-fun c!1316609 () Bool)

(assert (=> d!2208306 (= c!1316609 (isEmpty!39790 s!7408))))

(declare-fun e!4246137 () Bool)

(assert (=> d!2208306 (= (matchZipper!3140 lt!2537401 s!7408) e!4246137)))

(declare-fun b!7062932 () Bool)

(assert (=> b!7062932 (= e!4246137 (nullableZipper!2675 lt!2537401))))

(declare-fun b!7062933 () Bool)

(assert (=> b!7062933 (= e!4246137 (matchZipper!3140 (derivationStepZipper!3050 lt!2537401 (head!14378 s!7408)) (tail!13749 s!7408)))))

(assert (= (and d!2208306 c!1316609) b!7062932))

(assert (= (and d!2208306 (not c!1316609)) b!7062933))

(declare-fun m!7784230 () Bool)

(assert (=> d!2208306 m!7784230))

(declare-fun m!7784232 () Bool)

(assert (=> b!7062932 m!7784232))

(declare-fun m!7784234 () Bool)

(assert (=> b!7062933 m!7784234))

(assert (=> b!7062933 m!7784234))

(declare-fun m!7784236 () Bool)

(assert (=> b!7062933 m!7784236))

(declare-fun m!7784238 () Bool)

(assert (=> b!7062933 m!7784238))

(assert (=> b!7062933 m!7784236))

(assert (=> b!7062933 m!7784238))

(declare-fun m!7784240 () Bool)

(assert (=> b!7062933 m!7784240))

(assert (=> b!7062702 d!2208306))

(assert (=> b!7062702 d!2208258))

(declare-fun b!7062945 () Bool)

(declare-fun e!4246144 () Bool)

(declare-fun size!41176 (List!68326) Int)

(assert (=> b!7062945 (= e!4246144 (>= (size!41176 (_1!37404 lt!2537372)) (size!41176 Nil!68202)))))

(declare-fun d!2208308 () Bool)

(assert (=> d!2208308 e!4246144))

(declare-fun res!2883776 () Bool)

(assert (=> d!2208308 (=> res!2883776 e!4246144)))

(declare-fun lt!2537655 () Bool)

(assert (=> d!2208308 (= res!2883776 (not lt!2537655))))

(declare-fun e!4246145 () Bool)

(assert (=> d!2208308 (= lt!2537655 e!4246145)))

(declare-fun res!2883774 () Bool)

(assert (=> d!2208308 (=> res!2883774 e!4246145)))

(assert (=> d!2208308 (= res!2883774 (is-Nil!68202 Nil!68202))))

(assert (=> d!2208308 (= (isPrefix!5845 Nil!68202 (_1!37404 lt!2537372)) lt!2537655)))

(declare-fun b!7062944 () Bool)

(declare-fun e!4246146 () Bool)

(assert (=> b!7062944 (= e!4246146 (isPrefix!5845 (tail!13749 Nil!68202) (tail!13749 (_1!37404 lt!2537372))))))

(declare-fun b!7062942 () Bool)

(assert (=> b!7062942 (= e!4246145 e!4246146)))

(declare-fun res!2883773 () Bool)

(assert (=> b!7062942 (=> (not res!2883773) (not e!4246146))))

(assert (=> b!7062942 (= res!2883773 (not (is-Nil!68202 (_1!37404 lt!2537372))))))

(declare-fun b!7062943 () Bool)

(declare-fun res!2883775 () Bool)

(assert (=> b!7062943 (=> (not res!2883775) (not e!4246146))))

(assert (=> b!7062943 (= res!2883775 (= (head!14378 Nil!68202) (head!14378 (_1!37404 lt!2537372))))))

(assert (= (and d!2208308 (not res!2883774)) b!7062942))

(assert (= (and b!7062942 res!2883773) b!7062943))

(assert (= (and b!7062943 res!2883775) b!7062944))

(assert (= (and d!2208308 (not res!2883776)) b!7062945))

(declare-fun m!7784242 () Bool)

(assert (=> b!7062945 m!7784242))

(declare-fun m!7784244 () Bool)

(assert (=> b!7062945 m!7784244))

(declare-fun m!7784246 () Bool)

(assert (=> b!7062944 m!7784246))

(assert (=> b!7062944 m!7783802))

(assert (=> b!7062944 m!7784246))

(assert (=> b!7062944 m!7783802))

(declare-fun m!7784248 () Bool)

(assert (=> b!7062944 m!7784248))

(declare-fun m!7784250 () Bool)

(assert (=> b!7062943 m!7784250))

(assert (=> b!7062943 m!7783800))

(assert (=> b!7062682 d!2208308))

(declare-fun b!7062956 () Bool)

(declare-fun res!2883781 () Bool)

(declare-fun e!4246152 () Bool)

(assert (=> b!7062956 (=> (not res!2883781) (not e!4246152))))

(declare-fun lt!2537658 () List!68326)

(assert (=> b!7062956 (= res!2883781 (= (size!41176 lt!2537658) (+ (size!41176 Nil!68202) (size!41176 s!7408))))))

(declare-fun b!7062955 () Bool)

(declare-fun e!4246151 () List!68326)

(assert (=> b!7062955 (= e!4246151 (Cons!68202 (h!74650 Nil!68202) (++!15698 (t!382107 Nil!68202) s!7408)))))

(declare-fun d!2208310 () Bool)

(assert (=> d!2208310 e!4246152))

(declare-fun res!2883782 () Bool)

(assert (=> d!2208310 (=> (not res!2883782) (not e!4246152))))

(declare-fun content!13725 (List!68326) (Set C!35470))

(assert (=> d!2208310 (= res!2883782 (= (content!13725 lt!2537658) (set.union (content!13725 Nil!68202) (content!13725 s!7408))))))

(assert (=> d!2208310 (= lt!2537658 e!4246151)))

(declare-fun c!1316612 () Bool)

(assert (=> d!2208310 (= c!1316612 (is-Nil!68202 Nil!68202))))

(assert (=> d!2208310 (= (++!15698 Nil!68202 s!7408) lt!2537658)))

(declare-fun b!7062957 () Bool)

(assert (=> b!7062957 (= e!4246152 (or (not (= s!7408 Nil!68202)) (= lt!2537658 Nil!68202)))))

(declare-fun b!7062954 () Bool)

(assert (=> b!7062954 (= e!4246151 s!7408)))

(assert (= (and d!2208310 c!1316612) b!7062954))

(assert (= (and d!2208310 (not c!1316612)) b!7062955))

(assert (= (and d!2208310 res!2883782) b!7062956))

(assert (= (and b!7062956 res!2883781) b!7062957))

(declare-fun m!7784252 () Bool)

(assert (=> b!7062956 m!7784252))

(assert (=> b!7062956 m!7784244))

(declare-fun m!7784254 () Bool)

(assert (=> b!7062956 m!7784254))

(declare-fun m!7784256 () Bool)

(assert (=> b!7062955 m!7784256))

(declare-fun m!7784258 () Bool)

(assert (=> d!2208310 m!7784258))

(declare-fun m!7784260 () Bool)

(assert (=> d!2208310 m!7784260))

(declare-fun m!7784262 () Bool)

(assert (=> d!2208310 m!7784262))

(assert (=> b!7062701 d!2208310))

(declare-fun b!7062960 () Bool)

(declare-fun res!2883783 () Bool)

(declare-fun e!4246154 () Bool)

(assert (=> b!7062960 (=> (not res!2883783) (not e!4246154))))

(declare-fun lt!2537659 () List!68326)

(assert (=> b!7062960 (= res!2883783 (= (size!41176 lt!2537659) (+ (size!41176 (_1!37404 lt!2537372)) (size!41176 (_2!37404 lt!2537372)))))))

(declare-fun b!7062959 () Bool)

(declare-fun e!4246153 () List!68326)

(assert (=> b!7062959 (= e!4246153 (Cons!68202 (h!74650 (_1!37404 lt!2537372)) (++!15698 (t!382107 (_1!37404 lt!2537372)) (_2!37404 lt!2537372))))))

(declare-fun d!2208312 () Bool)

(assert (=> d!2208312 e!4246154))

(declare-fun res!2883784 () Bool)

(assert (=> d!2208312 (=> (not res!2883784) (not e!4246154))))

(assert (=> d!2208312 (= res!2883784 (= (content!13725 lt!2537659) (set.union (content!13725 (_1!37404 lt!2537372)) (content!13725 (_2!37404 lt!2537372)))))))

(assert (=> d!2208312 (= lt!2537659 e!4246153)))

(declare-fun c!1316613 () Bool)

(assert (=> d!2208312 (= c!1316613 (is-Nil!68202 (_1!37404 lt!2537372)))))

(assert (=> d!2208312 (= (++!15698 (_1!37404 lt!2537372) (_2!37404 lt!2537372)) lt!2537659)))

(declare-fun b!7062961 () Bool)

(assert (=> b!7062961 (= e!4246154 (or (not (= (_2!37404 lt!2537372) Nil!68202)) (= lt!2537659 (_1!37404 lt!2537372))))))

(declare-fun b!7062958 () Bool)

(assert (=> b!7062958 (= e!4246153 (_2!37404 lt!2537372))))

(assert (= (and d!2208312 c!1316613) b!7062958))

(assert (= (and d!2208312 (not c!1316613)) b!7062959))

(assert (= (and d!2208312 res!2883784) b!7062960))

(assert (= (and b!7062960 res!2883783) b!7062961))

(declare-fun m!7784264 () Bool)

(assert (=> b!7062960 m!7784264))

(assert (=> b!7062960 m!7784242))

(declare-fun m!7784266 () Bool)

(assert (=> b!7062960 m!7784266))

(declare-fun m!7784268 () Bool)

(assert (=> b!7062959 m!7784268))

(declare-fun m!7784270 () Bool)

(assert (=> d!2208312 m!7784270))

(declare-fun m!7784272 () Bool)

(assert (=> d!2208312 m!7784272))

(declare-fun m!7784274 () Bool)

(assert (=> d!2208312 m!7784274))

(assert (=> b!7062703 d!2208312))

(declare-fun d!2208314 () Bool)

(assert (=> d!2208314 (= (isEmpty!39789 (exprs!7096 lt!2537380)) (is-Nil!68203 (exprs!7096 lt!2537380)))))

(assert (=> b!7062683 d!2208314))

(assert (=> b!7062685 d!2208280))

(assert (=> b!7062685 d!2208296))

(declare-fun d!2208316 () Bool)

(assert (=> d!2208316 (= (head!14378 (_1!37404 lt!2537372)) (h!74650 (_1!37404 lt!2537372)))))

(assert (=> b!7062685 d!2208316))

(declare-fun d!2208318 () Bool)

(declare-fun c!1316615 () Bool)

(declare-fun e!4246155 () Bool)

(assert (=> d!2208318 (= c!1316615 e!4246155)))

(declare-fun res!2883785 () Bool)

(assert (=> d!2208318 (=> (not res!2883785) (not e!4246155))))

(assert (=> d!2208318 (= res!2883785 (is-Cons!68203 (exprs!7096 lt!2537417)))))

(declare-fun e!4246156 () (Set Context!13192))

(assert (=> d!2208318 (= (derivationStepZipperUp!2184 lt!2537417 lt!2537386) e!4246156)))

(declare-fun b!7062962 () Bool)

(declare-fun call!641790 () (Set Context!13192))

(assert (=> b!7062962 (= e!4246156 (set.union call!641790 (derivationStepZipperUp!2184 (Context!13193 (t!382108 (exprs!7096 lt!2537417))) lt!2537386)))))

(declare-fun b!7062963 () Bool)

(declare-fun e!4246157 () (Set Context!13192))

(assert (=> b!7062963 (= e!4246157 (as set.empty (Set Context!13192)))))

(declare-fun b!7062964 () Bool)

(assert (=> b!7062964 (= e!4246157 call!641790)))

(declare-fun b!7062965 () Bool)

(assert (=> b!7062965 (= e!4246155 (nullable!7283 (h!74651 (exprs!7096 lt!2537417))))))

(declare-fun bm!641785 () Bool)

(assert (=> bm!641785 (= call!641790 (derivationStepZipperDown!2234 (h!74651 (exprs!7096 lt!2537417)) (Context!13193 (t!382108 (exprs!7096 lt!2537417))) lt!2537386))))

(declare-fun b!7062966 () Bool)

(assert (=> b!7062966 (= e!4246156 e!4246157)))

(declare-fun c!1316614 () Bool)

(assert (=> b!7062966 (= c!1316614 (is-Cons!68203 (exprs!7096 lt!2537417)))))

(assert (= (and d!2208318 res!2883785) b!7062965))

(assert (= (and d!2208318 c!1316615) b!7062962))

(assert (= (and d!2208318 (not c!1316615)) b!7062966))

(assert (= (and b!7062966 c!1316614) b!7062964))

(assert (= (and b!7062966 (not c!1316614)) b!7062963))

(assert (= (or b!7062962 b!7062964) bm!641785))

(declare-fun m!7784276 () Bool)

(assert (=> b!7062962 m!7784276))

(assert (=> b!7062965 m!7784212))

(declare-fun m!7784278 () Bool)

(assert (=> bm!641785 m!7784278))

(assert (=> b!7062685 d!2208318))

(declare-fun bs!1879338 () Bool)

(declare-fun d!2208320 () Bool)

(assert (= bs!1879338 (and d!2208320 b!7062688)))

(declare-fun lambda!422619 () Int)

(assert (=> bs!1879338 (= (= lt!2537386 (h!74650 s!7408)) (= lambda!422619 lambda!422550))))

(declare-fun bs!1879339 () Bool)

(assert (= bs!1879339 (and d!2208320 d!2208266)))

(assert (=> bs!1879339 (= (= lt!2537386 (h!74650 s!7408)) (= lambda!422619 lambda!422617))))

(declare-fun bs!1879340 () Bool)

(assert (= bs!1879340 (and d!2208320 d!2208304)))

(assert (=> bs!1879340 (= (= lt!2537386 (h!74650 s!7408)) (= lambda!422619 lambda!422618))))

(assert (=> d!2208320 true))

(assert (=> d!2208320 (= (derivationStepZipper!3050 lt!2537406 lt!2537386) (flatMap!2526 lt!2537406 lambda!422619))))

(declare-fun bs!1879341 () Bool)

(assert (= bs!1879341 d!2208320))

(declare-fun m!7784280 () Bool)

(assert (=> bs!1879341 m!7784280))

(assert (=> b!7062685 d!2208320))

(assert (=> b!7062685 d!2208292))

(declare-fun d!2208322 () Bool)

(declare-fun c!1316616 () Bool)

(assert (=> d!2208322 (= c!1316616 (isEmpty!39790 lt!2537418))))

(declare-fun e!4246158 () Bool)

(assert (=> d!2208322 (= (matchZipper!3140 lt!2537414 lt!2537418) e!4246158)))

(declare-fun b!7062967 () Bool)

(assert (=> b!7062967 (= e!4246158 (nullableZipper!2675 lt!2537414))))

(declare-fun b!7062968 () Bool)

(assert (=> b!7062968 (= e!4246158 (matchZipper!3140 (derivationStepZipper!3050 lt!2537414 (head!14378 lt!2537418)) (tail!13749 lt!2537418)))))

(assert (= (and d!2208322 c!1316616) b!7062967))

(assert (= (and d!2208322 (not c!1316616)) b!7062968))

(assert (=> d!2208322 m!7784168))

(declare-fun m!7784282 () Bool)

(assert (=> b!7062967 m!7784282))

(assert (=> b!7062968 m!7784172))

(assert (=> b!7062968 m!7784172))

(declare-fun m!7784284 () Bool)

(assert (=> b!7062968 m!7784284))

(assert (=> b!7062968 m!7784176))

(assert (=> b!7062968 m!7784284))

(assert (=> b!7062968 m!7784176))

(declare-fun m!7784286 () Bool)

(assert (=> b!7062968 m!7784286))

(assert (=> b!7062705 d!2208322))

(declare-fun d!2208324 () Bool)

(declare-fun c!1316617 () Bool)

(assert (=> d!2208324 (= c!1316617 (isEmpty!39790 (_2!37404 lt!2537372)))))

(declare-fun e!4246159 () Bool)

(assert (=> d!2208324 (= (matchZipper!3140 lt!2537389 (_2!37404 lt!2537372)) e!4246159)))

(declare-fun b!7062969 () Bool)

(assert (=> b!7062969 (= e!4246159 (nullableZipper!2675 lt!2537389))))

(declare-fun b!7062970 () Bool)

(assert (=> b!7062970 (= e!4246159 (matchZipper!3140 (derivationStepZipper!3050 lt!2537389 (head!14378 (_2!37404 lt!2537372))) (tail!13749 (_2!37404 lt!2537372))))))

(assert (= (and d!2208324 c!1316617) b!7062969))

(assert (= (and d!2208324 (not c!1316617)) b!7062970))

(declare-fun m!7784288 () Bool)

(assert (=> d!2208324 m!7784288))

(declare-fun m!7784290 () Bool)

(assert (=> b!7062969 m!7784290))

(declare-fun m!7784292 () Bool)

(assert (=> b!7062970 m!7784292))

(assert (=> b!7062970 m!7784292))

(declare-fun m!7784294 () Bool)

(assert (=> b!7062970 m!7784294))

(declare-fun m!7784296 () Bool)

(assert (=> b!7062970 m!7784296))

(assert (=> b!7062970 m!7784294))

(assert (=> b!7062970 m!7784296))

(declare-fun m!7784298 () Bool)

(assert (=> b!7062970 m!7784298))

(assert (=> b!7062696 d!2208324))

(assert (=> b!7062678 d!2208264))

(assert (=> b!7062678 d!2208258))

(declare-fun d!2208326 () Bool)

(assert (=> d!2208326 (= (tail!13749 (_1!37404 lt!2537372)) (t!382107 (_1!37404 lt!2537372)))))

(assert (=> b!7062697 d!2208326))

(declare-fun e!4246162 () Bool)

(declare-fun d!2208328 () Bool)

(assert (=> d!2208328 (= (matchZipper!3140 (set.union lt!2537419 lt!2537390) lt!2537418) e!4246162)))

(declare-fun res!2883788 () Bool)

(assert (=> d!2208328 (=> res!2883788 e!4246162)))

(assert (=> d!2208328 (= res!2883788 (matchZipper!3140 lt!2537419 lt!2537418))))

(declare-fun lt!2537662 () Unit!161876)

(declare-fun choose!53968 ((Set Context!13192) (Set Context!13192) List!68326) Unit!161876)

(assert (=> d!2208328 (= lt!2537662 (choose!53968 lt!2537419 lt!2537390 lt!2537418))))

(assert (=> d!2208328 (= (lemmaZipperConcatMatchesSameAsBothZippers!1613 lt!2537419 lt!2537390 lt!2537418) lt!2537662)))

(declare-fun b!7062973 () Bool)

(assert (=> b!7062973 (= e!4246162 (matchZipper!3140 lt!2537390 lt!2537418))))

(assert (= (and d!2208328 (not res!2883788)) b!7062973))

(declare-fun m!7784300 () Bool)

(assert (=> d!2208328 m!7784300))

(assert (=> d!2208328 m!7783806))

(declare-fun m!7784302 () Bool)

(assert (=> d!2208328 m!7784302))

(assert (=> b!7062973 m!7783848))

(assert (=> b!7062697 d!2208328))

(declare-fun d!2208330 () Bool)

(declare-fun c!1316618 () Bool)

(assert (=> d!2208330 (= c!1316618 (isEmpty!39790 lt!2537418))))

(declare-fun e!4246163 () Bool)

(assert (=> d!2208330 (= (matchZipper!3140 lt!2537419 lt!2537418) e!4246163)))

(declare-fun b!7062974 () Bool)

(assert (=> b!7062974 (= e!4246163 (nullableZipper!2675 lt!2537419))))

(declare-fun b!7062975 () Bool)

(assert (=> b!7062975 (= e!4246163 (matchZipper!3140 (derivationStepZipper!3050 lt!2537419 (head!14378 lt!2537418)) (tail!13749 lt!2537418)))))

(assert (= (and d!2208330 c!1316618) b!7062974))

(assert (= (and d!2208330 (not c!1316618)) b!7062975))

(assert (=> d!2208330 m!7784168))

(declare-fun m!7784304 () Bool)

(assert (=> b!7062974 m!7784304))

(assert (=> b!7062975 m!7784172))

(assert (=> b!7062975 m!7784172))

(declare-fun m!7784306 () Bool)

(assert (=> b!7062975 m!7784306))

(assert (=> b!7062975 m!7784176))

(assert (=> b!7062975 m!7784306))

(assert (=> b!7062975 m!7784176))

(declare-fun m!7784308 () Bool)

(assert (=> b!7062975 m!7784308))

(assert (=> b!7062697 d!2208330))

(declare-fun d!2208332 () Bool)

(declare-fun c!1316619 () Bool)

(assert (=> d!2208332 (= c!1316619 (isEmpty!39790 (_1!37404 lt!2537372)))))

(declare-fun e!4246164 () Bool)

(assert (=> d!2208332 (= (matchZipper!3140 lt!2537384 (_1!37404 lt!2537372)) e!4246164)))

(declare-fun b!7062976 () Bool)

(assert (=> b!7062976 (= e!4246164 (nullableZipper!2675 lt!2537384))))

(declare-fun b!7062977 () Bool)

(assert (=> b!7062977 (= e!4246164 (matchZipper!3140 (derivationStepZipper!3050 lt!2537384 (head!14378 (_1!37404 lt!2537372))) (tail!13749 (_1!37404 lt!2537372))))))

(assert (= (and d!2208332 c!1316619) b!7062976))

(assert (= (and d!2208332 (not c!1316619)) b!7062977))

(assert (=> d!2208332 m!7783840))

(declare-fun m!7784310 () Bool)

(assert (=> b!7062976 m!7784310))

(assert (=> b!7062977 m!7783800))

(assert (=> b!7062977 m!7783800))

(declare-fun m!7784312 () Bool)

(assert (=> b!7062977 m!7784312))

(assert (=> b!7062977 m!7783802))

(assert (=> b!7062977 m!7784312))

(assert (=> b!7062977 m!7783802))

(declare-fun m!7784314 () Bool)

(assert (=> b!7062977 m!7784314))

(assert (=> b!7062697 d!2208332))

(declare-fun d!2208334 () Bool)

(declare-fun c!1316620 () Bool)

(assert (=> d!2208334 (= c!1316620 (isEmpty!39790 lt!2537418))))

(declare-fun e!4246165 () Bool)

(assert (=> d!2208334 (= (matchZipper!3140 lt!2537421 lt!2537418) e!4246165)))

(declare-fun b!7062978 () Bool)

(assert (=> b!7062978 (= e!4246165 (nullableZipper!2675 lt!2537421))))

(declare-fun b!7062979 () Bool)

(assert (=> b!7062979 (= e!4246165 (matchZipper!3140 (derivationStepZipper!3050 lt!2537421 (head!14378 lt!2537418)) (tail!13749 lt!2537418)))))

(assert (= (and d!2208334 c!1316620) b!7062978))

(assert (= (and d!2208334 (not c!1316620)) b!7062979))

(assert (=> d!2208334 m!7784168))

(declare-fun m!7784316 () Bool)

(assert (=> b!7062978 m!7784316))

(assert (=> b!7062979 m!7784172))

(assert (=> b!7062979 m!7784172))

(declare-fun m!7784318 () Bool)

(assert (=> b!7062979 m!7784318))

(assert (=> b!7062979 m!7784176))

(assert (=> b!7062979 m!7784318))

(assert (=> b!7062979 m!7784176))

(declare-fun m!7784320 () Bool)

(assert (=> b!7062979 m!7784320))

(assert (=> b!7062697 d!2208334))

(declare-fun d!2208336 () Bool)

(declare-fun e!4246166 () Bool)

(assert (=> d!2208336 (= (matchZipper!3140 (set.union lt!2537407 lt!2537371) (t!382107 s!7408)) e!4246166)))

(declare-fun res!2883789 () Bool)

(assert (=> d!2208336 (=> res!2883789 e!4246166)))

(assert (=> d!2208336 (= res!2883789 (matchZipper!3140 lt!2537407 (t!382107 s!7408)))))

(declare-fun lt!2537663 () Unit!161876)

(assert (=> d!2208336 (= lt!2537663 (choose!53968 lt!2537407 lt!2537371 (t!382107 s!7408)))))

(assert (=> d!2208336 (= (lemmaZipperConcatMatchesSameAsBothZippers!1613 lt!2537407 lt!2537371 (t!382107 s!7408)) lt!2537663)))

(declare-fun b!7062980 () Bool)

(assert (=> b!7062980 (= e!4246166 (matchZipper!3140 lt!2537371 (t!382107 s!7408)))))

(assert (= (and d!2208336 (not res!2883789)) b!7062980))

(declare-fun m!7784322 () Bool)

(assert (=> d!2208336 m!7784322))

(assert (=> d!2208336 m!7783938))

(declare-fun m!7784324 () Bool)

(assert (=> d!2208336 m!7784324))

(assert (=> b!7062980 m!7783838))

(assert (=> b!7062680 d!2208336))

(assert (=> b!7062680 d!2208258))

(declare-fun d!2208338 () Bool)

(declare-fun c!1316621 () Bool)

(assert (=> d!2208338 (= c!1316621 (isEmpty!39790 (t!382107 s!7408)))))

(declare-fun e!4246167 () Bool)

(assert (=> d!2208338 (= (matchZipper!3140 lt!2537404 (t!382107 s!7408)) e!4246167)))

(declare-fun b!7062981 () Bool)

(assert (=> b!7062981 (= e!4246167 (nullableZipper!2675 lt!2537404))))

(declare-fun b!7062982 () Bool)

(assert (=> b!7062982 (= e!4246167 (matchZipper!3140 (derivationStepZipper!3050 lt!2537404 (head!14378 (t!382107 s!7408))) (tail!13749 (t!382107 s!7408))))))

(assert (= (and d!2208338 c!1316621) b!7062981))

(assert (= (and d!2208338 (not c!1316621)) b!7062982))

(assert (=> d!2208338 m!7784136))

(declare-fun m!7784326 () Bool)

(assert (=> b!7062981 m!7784326))

(assert (=> b!7062982 m!7784140))

(assert (=> b!7062982 m!7784140))

(declare-fun m!7784328 () Bool)

(assert (=> b!7062982 m!7784328))

(assert (=> b!7062982 m!7784144))

(assert (=> b!7062982 m!7784328))

(assert (=> b!7062982 m!7784144))

(declare-fun m!7784330 () Bool)

(assert (=> b!7062982 m!7784330))

(assert (=> b!7062680 d!2208338))

(declare-fun d!2208340 () Bool)

(declare-fun c!1316622 () Bool)

(assert (=> d!2208340 (= c!1316622 (isEmpty!39790 (t!382107 s!7408)))))

(declare-fun e!4246168 () Bool)

(assert (=> d!2208340 (= (matchZipper!3140 lt!2537377 (t!382107 s!7408)) e!4246168)))

(declare-fun b!7062983 () Bool)

(assert (=> b!7062983 (= e!4246168 (nullableZipper!2675 lt!2537377))))

(declare-fun b!7062984 () Bool)

(assert (=> b!7062984 (= e!4246168 (matchZipper!3140 (derivationStepZipper!3050 lt!2537377 (head!14378 (t!382107 s!7408))) (tail!13749 (t!382107 s!7408))))))

(assert (= (and d!2208340 c!1316622) b!7062983))

(assert (= (and d!2208340 (not c!1316622)) b!7062984))

(assert (=> d!2208340 m!7784136))

(declare-fun m!7784332 () Bool)

(assert (=> b!7062983 m!7784332))

(assert (=> b!7062984 m!7784140))

(assert (=> b!7062984 m!7784140))

(declare-fun m!7784334 () Bool)

(assert (=> b!7062984 m!7784334))

(assert (=> b!7062984 m!7784144))

(assert (=> b!7062984 m!7784334))

(assert (=> b!7062984 m!7784144))

(declare-fun m!7784336 () Bool)

(assert (=> b!7062984 m!7784336))

(assert (=> b!7062680 d!2208340))

(declare-fun d!2208342 () Bool)

(declare-fun c!1316623 () Bool)

(assert (=> d!2208342 (= c!1316623 (isEmpty!39790 (t!382107 s!7408)))))

(declare-fun e!4246169 () Bool)

(assert (=> d!2208342 (= (matchZipper!3140 lt!2537407 (t!382107 s!7408)) e!4246169)))

(declare-fun b!7062985 () Bool)

(assert (=> b!7062985 (= e!4246169 (nullableZipper!2675 lt!2537407))))

(declare-fun b!7062986 () Bool)

(assert (=> b!7062986 (= e!4246169 (matchZipper!3140 (derivationStepZipper!3050 lt!2537407 (head!14378 (t!382107 s!7408))) (tail!13749 (t!382107 s!7408))))))

(assert (= (and d!2208342 c!1316623) b!7062985))

(assert (= (and d!2208342 (not c!1316623)) b!7062986))

(assert (=> d!2208342 m!7784136))

(declare-fun m!7784338 () Bool)

(assert (=> b!7062985 m!7784338))

(assert (=> b!7062986 m!7784140))

(assert (=> b!7062986 m!7784140))

(declare-fun m!7784340 () Bool)

(assert (=> b!7062986 m!7784340))

(assert (=> b!7062986 m!7784144))

(assert (=> b!7062986 m!7784340))

(assert (=> b!7062986 m!7784144))

(declare-fun m!7784342 () Bool)

(assert (=> b!7062986 m!7784342))

(assert (=> b!7062680 d!2208342))

(assert (=> b!7062699 d!2208264))

(assert (=> b!7062679 d!2208276))

(declare-fun bs!1879342 () Bool)

(declare-fun d!2208344 () Bool)

(assert (= bs!1879342 (and d!2208344 b!7062700)))

(declare-fun lambda!422622 () Int)

(assert (=> bs!1879342 (not (= lambda!422622 lambda!422547))))

(assert (=> d!2208344 true))

(declare-fun order!28357 () Int)

(declare-fun dynLambda!27704 (Int Int) Int)

(assert (=> d!2208344 (< (dynLambda!27704 order!28357 lambda!422547) (dynLambda!27704 order!28357 lambda!422622))))

(declare-fun forall!16551 (List!68328 Int) Bool)

(assert (=> d!2208344 (= (exists!3613 lt!2537424 lambda!422547) (not (forall!16551 lt!2537424 lambda!422622)))))

(declare-fun bs!1879343 () Bool)

(assert (= bs!1879343 d!2208344))

(declare-fun m!7784344 () Bool)

(assert (=> bs!1879343 m!7784344))

(assert (=> b!7062700 d!2208344))

(declare-fun d!2208346 () Bool)

(declare-fun e!4246170 () Bool)

(assert (=> d!2208346 e!4246170))

(declare-fun res!2883790 () Bool)

(assert (=> d!2208346 (=> (not res!2883790) (not e!4246170))))

(declare-fun lt!2537664 () List!68328)

(assert (=> d!2208346 (= res!2883790 (noDuplicate!2704 lt!2537664))))

(assert (=> d!2208346 (= lt!2537664 (choose!53964 lt!2537403))))

(assert (=> d!2208346 (= (toList!10941 lt!2537403) lt!2537664)))

(declare-fun b!7062989 () Bool)

(assert (=> b!7062989 (= e!4246170 (= (content!13724 lt!2537664) lt!2537403))))

(assert (= (and d!2208346 res!2883790) b!7062989))

(declare-fun m!7784346 () Bool)

(assert (=> d!2208346 m!7784346))

(declare-fun m!7784348 () Bool)

(assert (=> d!2208346 m!7784348))

(declare-fun m!7784350 () Bool)

(assert (=> b!7062989 m!7784350))

(assert (=> b!7062700 d!2208346))

(declare-fun d!2208348 () Bool)

(declare-fun e!4246173 () Bool)

(assert (=> d!2208348 e!4246173))

(declare-fun res!2883793 () Bool)

(assert (=> d!2208348 (=> (not res!2883793) (not e!4246173))))

(declare-fun lt!2537667 () Context!13192)

(declare-fun dynLambda!27705 (Int Context!13192) Bool)

(assert (=> d!2208348 (= res!2883793 (dynLambda!27705 lambda!422547 lt!2537667))))

(declare-fun getWitness!1680 (List!68328 Int) Context!13192)

(assert (=> d!2208348 (= lt!2537667 (getWitness!1680 (toList!10941 lt!2537403) lambda!422547))))

(declare-fun exists!3615 ((Set Context!13192) Int) Bool)

(assert (=> d!2208348 (exists!3615 lt!2537403 lambda!422547)))

(assert (=> d!2208348 (= (getWitness!1678 lt!2537403 lambda!422547) lt!2537667)))

(declare-fun b!7062992 () Bool)

(assert (=> b!7062992 (= e!4246173 (set.member lt!2537667 lt!2537403))))

(assert (= (and d!2208348 res!2883793) b!7062992))

(declare-fun b_lambda!269387 () Bool)

(assert (=> (not b_lambda!269387) (not d!2208348)))

(declare-fun m!7784352 () Bool)

(assert (=> d!2208348 m!7784352))

(assert (=> d!2208348 m!7783900))

(assert (=> d!2208348 m!7783900))

(declare-fun m!7784354 () Bool)

(assert (=> d!2208348 m!7784354))

(declare-fun m!7784356 () Bool)

(assert (=> d!2208348 m!7784356))

(declare-fun m!7784358 () Bool)

(assert (=> b!7062992 m!7784358))

(assert (=> b!7062700 d!2208348))

(declare-fun bs!1879344 () Bool)

(declare-fun d!2208350 () Bool)

(assert (= bs!1879344 (and d!2208350 b!7062700)))

(declare-fun lambda!422625 () Int)

(assert (=> bs!1879344 (= lambda!422625 lambda!422547)))

(declare-fun bs!1879345 () Bool)

(assert (= bs!1879345 (and d!2208350 d!2208344)))

(assert (=> bs!1879345 (not (= lambda!422625 lambda!422622))))

(assert (=> d!2208350 true))

(assert (=> d!2208350 (exists!3613 lt!2537424 lambda!422625)))

(declare-fun lt!2537670 () Unit!161876)

(declare-fun choose!53969 (List!68328 List!68326) Unit!161876)

(assert (=> d!2208350 (= lt!2537670 (choose!53969 lt!2537424 s!7408))))

(assert (=> d!2208350 (matchZipper!3140 (content!13724 lt!2537424) s!7408)))

(assert (=> d!2208350 (= (lemmaZipperMatchesExistsMatchingContext!521 lt!2537424 s!7408) lt!2537670)))

(declare-fun bs!1879346 () Bool)

(assert (= bs!1879346 d!2208350))

(declare-fun m!7784360 () Bool)

(assert (=> bs!1879346 m!7784360))

(declare-fun m!7784362 () Bool)

(assert (=> bs!1879346 m!7784362))

(declare-fun m!7784364 () Bool)

(assert (=> bs!1879346 m!7784364))

(assert (=> bs!1879346 m!7784364))

(declare-fun m!7784366 () Bool)

(assert (=> bs!1879346 m!7784366))

(assert (=> b!7062700 d!2208350))

(declare-fun d!2208352 () Bool)

(declare-fun c!1316626 () Bool)

(assert (=> d!2208352 (= c!1316626 (isEmpty!39790 s!7408))))

(declare-fun e!4246174 () Bool)

(assert (=> d!2208352 (= (matchZipper!3140 lt!2537397 s!7408) e!4246174)))

(declare-fun b!7062993 () Bool)

(assert (=> b!7062993 (= e!4246174 (nullableZipper!2675 lt!2537397))))

(declare-fun b!7062994 () Bool)

(assert (=> b!7062994 (= e!4246174 (matchZipper!3140 (derivationStepZipper!3050 lt!2537397 (head!14378 s!7408)) (tail!13749 s!7408)))))

(assert (= (and d!2208352 c!1316626) b!7062993))

(assert (= (and d!2208352 (not c!1316626)) b!7062994))

(assert (=> d!2208352 m!7784230))

(declare-fun m!7784368 () Bool)

(assert (=> b!7062993 m!7784368))

(assert (=> b!7062994 m!7784234))

(assert (=> b!7062994 m!7784234))

(declare-fun m!7784370 () Bool)

(assert (=> b!7062994 m!7784370))

(assert (=> b!7062994 m!7784238))

(assert (=> b!7062994 m!7784370))

(assert (=> b!7062994 m!7784238))

(declare-fun m!7784372 () Bool)

(assert (=> b!7062994 m!7784372))

(assert (=> b!7062700 d!2208352))

(declare-fun d!2208354 () Bool)

(declare-fun c!1316627 () Bool)

(assert (=> d!2208354 (= c!1316627 (isEmpty!39790 s!7408))))

(declare-fun e!4246175 () Bool)

(assert (=> d!2208354 (= (matchZipper!3140 lt!2537403 s!7408) e!4246175)))

(declare-fun b!7062995 () Bool)

(assert (=> b!7062995 (= e!4246175 (nullableZipper!2675 lt!2537403))))

(declare-fun b!7062996 () Bool)

(assert (=> b!7062996 (= e!4246175 (matchZipper!3140 (derivationStepZipper!3050 lt!2537403 (head!14378 s!7408)) (tail!13749 s!7408)))))

(assert (= (and d!2208354 c!1316627) b!7062995))

(assert (= (and d!2208354 (not c!1316627)) b!7062996))

(assert (=> d!2208354 m!7784230))

(declare-fun m!7784374 () Bool)

(assert (=> b!7062995 m!7784374))

(assert (=> b!7062996 m!7784234))

(assert (=> b!7062996 m!7784234))

(declare-fun m!7784376 () Bool)

(assert (=> b!7062996 m!7784376))

(assert (=> b!7062996 m!7784238))

(assert (=> b!7062996 m!7784376))

(assert (=> b!7062996 m!7784238))

(declare-fun m!7784378 () Bool)

(assert (=> b!7062996 m!7784378))

(assert (=> start!685398 d!2208354))

(declare-fun bs!1879347 () Bool)

(declare-fun d!2208356 () Bool)

(assert (= bs!1879347 (and d!2208356 b!7062694)))

(declare-fun lambda!422630 () Int)

(assert (=> bs!1879347 (= lambda!422630 lambda!422548)))

(assert (=> d!2208356 true))

(assert (=> d!2208356 (= (appendTo!721 z1!570 ct2!306) (map!15933 z1!570 lambda!422630))))

(declare-fun bs!1879348 () Bool)

(assert (= bs!1879348 d!2208356))

(declare-fun m!7784380 () Bool)

(assert (=> bs!1879348 m!7784380))

(assert (=> start!685398 d!2208356))

(declare-fun bs!1879349 () Bool)

(declare-fun d!2208358 () Bool)

(assert (= bs!1879349 (and d!2208358 b!7062694)))

(declare-fun lambda!422633 () Int)

(assert (=> bs!1879349 (= lambda!422633 lambda!422549)))

(assert (=> d!2208358 (= (inv!86860 ct2!306) (forall!16550 (exprs!7096 ct2!306) lambda!422633))))

(declare-fun bs!1879350 () Bool)

(assert (= bs!1879350 d!2208358))

(declare-fun m!7784382 () Bool)

(assert (=> bs!1879350 m!7784382))

(assert (=> start!685398 d!2208358))

(declare-fun d!2208360 () Bool)

(declare-fun nullableFct!2790 (Regex!17600) Bool)

(assert (=> d!2208360 (= (nullable!7283 (h!74651 (exprs!7096 lt!2537380))) (nullableFct!2790 (h!74651 (exprs!7096 lt!2537380))))))

(declare-fun bs!1879351 () Bool)

(assert (= bs!1879351 d!2208360))

(declare-fun m!7784384 () Bool)

(assert (=> bs!1879351 m!7784384))

(assert (=> b!7062692 d!2208360))

(declare-fun d!2208362 () Bool)

(assert (=> d!2208362 (= (tail!13748 (exprs!7096 lt!2537380)) (t!382108 (exprs!7096 lt!2537380)))))

(assert (=> b!7062692 d!2208362))

(declare-fun d!2208364 () Bool)

(assert (=> d!2208364 (isDefined!13634 (findConcatSeparationZippers!449 lt!2537406 (set.insert ct2!306 (as set.empty (Set Context!13192))) Nil!68202 s!7408 s!7408))))

(declare-fun lt!2537675 () Unit!161876)

(declare-fun choose!53970 ((Set Context!13192) Context!13192 List!68326) Unit!161876)

(assert (=> d!2208364 (= lt!2537675 (choose!53970 lt!2537406 ct2!306 s!7408))))

(assert (=> d!2208364 (matchZipper!3140 (appendTo!721 lt!2537406 ct2!306) s!7408)))

(assert (=> d!2208364 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!437 lt!2537406 ct2!306 s!7408) lt!2537675)))

(declare-fun bs!1879352 () Bool)

(assert (= bs!1879352 d!2208364))

(assert (=> bs!1879352 m!7783856))

(declare-fun m!7784386 () Bool)

(assert (=> bs!1879352 m!7784386))

(declare-fun m!7784388 () Bool)

(assert (=> bs!1879352 m!7784388))

(declare-fun m!7784390 () Bool)

(assert (=> bs!1879352 m!7784390))

(declare-fun m!7784392 () Bool)

(assert (=> bs!1879352 m!7784392))

(assert (=> bs!1879352 m!7784392))

(declare-fun m!7784394 () Bool)

(assert (=> bs!1879352 m!7784394))

(assert (=> bs!1879352 m!7783856))

(assert (=> bs!1879352 m!7784388))

(assert (=> b!7062712 d!2208364))

(declare-fun d!2208366 () Bool)

(declare-fun e!4246189 () Bool)

(assert (=> d!2208366 e!4246189))

(declare-fun res!2883805 () Bool)

(assert (=> d!2208366 (=> res!2883805 e!4246189)))

(declare-fun e!4246188 () Bool)

(assert (=> d!2208366 (= res!2883805 e!4246188)))

(declare-fun res!2883806 () Bool)

(assert (=> d!2208366 (=> (not res!2883806) (not e!4246188))))

(declare-fun lt!2537682 () Option!16933)

(assert (=> d!2208366 (= res!2883806 (isDefined!13634 lt!2537682))))

(declare-fun e!4246187 () Option!16933)

(assert (=> d!2208366 (= lt!2537682 e!4246187)))

(declare-fun c!1316634 () Bool)

(declare-fun e!4246190 () Bool)

(assert (=> d!2208366 (= c!1316634 e!4246190)))

(declare-fun res!2883807 () Bool)

(assert (=> d!2208366 (=> (not res!2883807) (not e!4246190))))

(assert (=> d!2208366 (= res!2883807 (matchZipper!3140 lt!2537406 Nil!68202))))

(assert (=> d!2208366 (= (++!15698 Nil!68202 s!7408) s!7408)))

(assert (=> d!2208366 (= (findConcatSeparationZippers!449 lt!2537406 lt!2537389 Nil!68202 s!7408 s!7408) lt!2537682)))

(declare-fun b!7063015 () Bool)

(assert (=> b!7063015 (= e!4246187 (Some!16932 (tuple2!68203 Nil!68202 s!7408)))))

(declare-fun b!7063016 () Bool)

(declare-fun e!4246186 () Option!16933)

(assert (=> b!7063016 (= e!4246187 e!4246186)))

(declare-fun c!1316633 () Bool)

(assert (=> b!7063016 (= c!1316633 (is-Nil!68202 s!7408))))

(declare-fun b!7063017 () Bool)

(declare-fun lt!2537683 () Unit!161876)

(declare-fun lt!2537684 () Unit!161876)

(assert (=> b!7063017 (= lt!2537683 lt!2537684)))

(assert (=> b!7063017 (= (++!15698 (++!15698 Nil!68202 (Cons!68202 (h!74650 s!7408) Nil!68202)) (t!382107 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2961 (List!68326 C!35470 List!68326 List!68326) Unit!161876)

(assert (=> b!7063017 (= lt!2537684 (lemmaMoveElementToOtherListKeepsConcatEq!2961 Nil!68202 (h!74650 s!7408) (t!382107 s!7408) s!7408))))

(assert (=> b!7063017 (= e!4246186 (findConcatSeparationZippers!449 lt!2537406 lt!2537389 (++!15698 Nil!68202 (Cons!68202 (h!74650 s!7408) Nil!68202)) (t!382107 s!7408) s!7408))))

(declare-fun b!7063018 () Bool)

(assert (=> b!7063018 (= e!4246190 (matchZipper!3140 lt!2537389 s!7408))))

(declare-fun b!7063019 () Bool)

(assert (=> b!7063019 (= e!4246188 (= (++!15698 (_1!37404 (get!23884 lt!2537682)) (_2!37404 (get!23884 lt!2537682))) s!7408))))

(declare-fun b!7063020 () Bool)

(assert (=> b!7063020 (= e!4246186 None!16932)))

(declare-fun b!7063021 () Bool)

(declare-fun res!2883808 () Bool)

(assert (=> b!7063021 (=> (not res!2883808) (not e!4246188))))

(assert (=> b!7063021 (= res!2883808 (matchZipper!3140 lt!2537389 (_2!37404 (get!23884 lt!2537682))))))

(declare-fun b!7063022 () Bool)

(declare-fun res!2883804 () Bool)

(assert (=> b!7063022 (=> (not res!2883804) (not e!4246188))))

(assert (=> b!7063022 (= res!2883804 (matchZipper!3140 lt!2537406 (_1!37404 (get!23884 lt!2537682))))))

(declare-fun b!7063023 () Bool)

(assert (=> b!7063023 (= e!4246189 (not (isDefined!13634 lt!2537682)))))

(assert (= (and d!2208366 res!2883807) b!7063018))

(assert (= (and d!2208366 c!1316634) b!7063015))

(assert (= (and d!2208366 (not c!1316634)) b!7063016))

(assert (= (and b!7063016 c!1316633) b!7063020))

(assert (= (and b!7063016 (not c!1316633)) b!7063017))

(assert (= (and d!2208366 res!2883806) b!7063022))

(assert (= (and b!7063022 res!2883804) b!7063021))

(assert (= (and b!7063021 res!2883808) b!7063019))

(assert (= (and d!2208366 (not res!2883805)) b!7063023))

(declare-fun m!7784396 () Bool)

(assert (=> b!7063023 m!7784396))

(declare-fun m!7784398 () Bool)

(assert (=> b!7063022 m!7784398))

(declare-fun m!7784400 () Bool)

(assert (=> b!7063022 m!7784400))

(declare-fun m!7784402 () Bool)

(assert (=> b!7063018 m!7784402))

(declare-fun m!7784404 () Bool)

(assert (=> b!7063017 m!7784404))

(assert (=> b!7063017 m!7784404))

(declare-fun m!7784406 () Bool)

(assert (=> b!7063017 m!7784406))

(declare-fun m!7784408 () Bool)

(assert (=> b!7063017 m!7784408))

(assert (=> b!7063017 m!7784404))

(declare-fun m!7784410 () Bool)

(assert (=> b!7063017 m!7784410))

(assert (=> b!7063019 m!7784398))

(declare-fun m!7784412 () Bool)

(assert (=> b!7063019 m!7784412))

(assert (=> b!7063021 m!7784398))

(declare-fun m!7784414 () Bool)

(assert (=> b!7063021 m!7784414))

(assert (=> d!2208366 m!7784396))

(declare-fun m!7784416 () Bool)

(assert (=> d!2208366 m!7784416))

(assert (=> d!2208366 m!7783844))

(assert (=> b!7062712 d!2208366))

(declare-fun d!2208368 () Bool)

(assert (=> d!2208368 (= (get!23884 lt!2537400) (v!53226 lt!2537400))))

(assert (=> b!7062712 d!2208368))

(declare-fun d!2208370 () Bool)

(declare-fun isEmpty!39793 (Option!16933) Bool)

(assert (=> d!2208370 (= (isDefined!13634 lt!2537400) (not (isEmpty!39793 lt!2537400)))))

(declare-fun bs!1879353 () Bool)

(assert (= bs!1879353 d!2208370))

(declare-fun m!7784418 () Bool)

(assert (=> bs!1879353 m!7784418))

(assert (=> b!7062712 d!2208370))

(declare-fun d!2208372 () Bool)

(declare-fun c!1316635 () Bool)

(assert (=> d!2208372 (= c!1316635 (isEmpty!39790 (_1!37404 lt!2537372)))))

(declare-fun e!4246191 () Bool)

(assert (=> d!2208372 (= (matchZipper!3140 lt!2537406 (_1!37404 lt!2537372)) e!4246191)))

(declare-fun b!7063024 () Bool)

(assert (=> b!7063024 (= e!4246191 (nullableZipper!2675 lt!2537406))))

(declare-fun b!7063025 () Bool)

(assert (=> b!7063025 (= e!4246191 (matchZipper!3140 (derivationStepZipper!3050 lt!2537406 (head!14378 (_1!37404 lt!2537372))) (tail!13749 (_1!37404 lt!2537372))))))

(assert (= (and d!2208372 c!1316635) b!7063024))

(assert (= (and d!2208372 (not c!1316635)) b!7063025))

(assert (=> d!2208372 m!7783840))

(declare-fun m!7784420 () Bool)

(assert (=> b!7063024 m!7784420))

(assert (=> b!7063025 m!7783800))

(assert (=> b!7063025 m!7783800))

(declare-fun m!7784422 () Bool)

(assert (=> b!7063025 m!7784422))

(assert (=> b!7063025 m!7783802))

(assert (=> b!7063025 m!7784422))

(assert (=> b!7063025 m!7783802))

(declare-fun m!7784424 () Bool)

(assert (=> b!7063025 m!7784424))

(assert (=> b!7062712 d!2208372))

(declare-fun bs!1879354 () Bool)

(declare-fun d!2208374 () Bool)

(assert (= bs!1879354 (and d!2208374 b!7062688)))

(declare-fun lambda!422634 () Int)

(assert (=> bs!1879354 (= lambda!422634 lambda!422550)))

(declare-fun bs!1879355 () Bool)

(assert (= bs!1879355 (and d!2208374 d!2208266)))

(assert (=> bs!1879355 (= lambda!422634 lambda!422617)))

(declare-fun bs!1879356 () Bool)

(assert (= bs!1879356 (and d!2208374 d!2208304)))

(assert (=> bs!1879356 (= lambda!422634 lambda!422618)))

(declare-fun bs!1879357 () Bool)

(assert (= bs!1879357 (and d!2208374 d!2208320)))

(assert (=> bs!1879357 (= (= (h!74650 s!7408) lt!2537386) (= lambda!422634 lambda!422619))))

(assert (=> d!2208374 true))

(assert (=> d!2208374 (= (derivationStepZipper!3050 lt!2537384 (h!74650 s!7408)) (flatMap!2526 lt!2537384 lambda!422634))))

(declare-fun bs!1879358 () Bool)

(assert (= bs!1879358 d!2208374))

(declare-fun m!7784426 () Bool)

(assert (=> bs!1879358 m!7784426))

(assert (=> b!7062693 d!2208374))

(declare-fun d!2208376 () Bool)

(declare-fun c!1316637 () Bool)

(declare-fun e!4246192 () Bool)

(assert (=> d!2208376 (= c!1316637 e!4246192)))

(declare-fun res!2883809 () Bool)

(assert (=> d!2208376 (=> (not res!2883809) (not e!4246192))))

(assert (=> d!2208376 (= res!2883809 (is-Cons!68203 (exprs!7096 lt!2537380)))))

(declare-fun e!4246193 () (Set Context!13192))

(assert (=> d!2208376 (= (derivationStepZipperUp!2184 lt!2537380 (h!74650 s!7408)) e!4246193)))

(declare-fun call!641791 () (Set Context!13192))

(declare-fun b!7063026 () Bool)

(assert (=> b!7063026 (= e!4246193 (set.union call!641791 (derivationStepZipperUp!2184 (Context!13193 (t!382108 (exprs!7096 lt!2537380))) (h!74650 s!7408))))))

(declare-fun b!7063027 () Bool)

(declare-fun e!4246194 () (Set Context!13192))

(assert (=> b!7063027 (= e!4246194 (as set.empty (Set Context!13192)))))

(declare-fun b!7063028 () Bool)

(assert (=> b!7063028 (= e!4246194 call!641791)))

(declare-fun b!7063029 () Bool)

(assert (=> b!7063029 (= e!4246192 (nullable!7283 (h!74651 (exprs!7096 lt!2537380))))))

(declare-fun bm!641786 () Bool)

(assert (=> bm!641786 (= call!641791 (derivationStepZipperDown!2234 (h!74651 (exprs!7096 lt!2537380)) (Context!13193 (t!382108 (exprs!7096 lt!2537380))) (h!74650 s!7408)))))

(declare-fun b!7063030 () Bool)

(assert (=> b!7063030 (= e!4246193 e!4246194)))

(declare-fun c!1316636 () Bool)

(assert (=> b!7063030 (= c!1316636 (is-Cons!68203 (exprs!7096 lt!2537380)))))

(assert (= (and d!2208376 res!2883809) b!7063029))

(assert (= (and d!2208376 c!1316637) b!7063026))

(assert (= (and d!2208376 (not c!1316637)) b!7063030))

(assert (= (and b!7063030 c!1316636) b!7063028))

(assert (= (and b!7063030 (not c!1316636)) b!7063027))

(assert (= (or b!7063026 b!7063028) bm!641786))

(declare-fun m!7784428 () Bool)

(assert (=> b!7063026 m!7784428))

(assert (=> b!7063029 m!7783824))

(declare-fun m!7784430 () Bool)

(assert (=> bm!641786 m!7784430))

(assert (=> b!7062693 d!2208376))

(declare-fun d!2208378 () Bool)

(assert (=> d!2208378 (= (flatMap!2526 lt!2537384 lambda!422550) (choose!53963 lt!2537384 lambda!422550))))

(declare-fun bs!1879359 () Bool)

(assert (= bs!1879359 d!2208378))

(declare-fun m!7784432 () Bool)

(assert (=> bs!1879359 m!7784432))

(assert (=> b!7062693 d!2208378))

(declare-fun d!2208380 () Bool)

(assert (=> d!2208380 (= (flatMap!2526 lt!2537384 lambda!422550) (dynLambda!27702 lambda!422550 lt!2537380))))

(declare-fun lt!2537685 () Unit!161876)

(assert (=> d!2208380 (= lt!2537685 (choose!53962 lt!2537384 lt!2537380 lambda!422550))))

(assert (=> d!2208380 (= lt!2537384 (set.insert lt!2537380 (as set.empty (Set Context!13192))))))

(assert (=> d!2208380 (= (lemmaFlatMapOnSingletonSet!2035 lt!2537384 lt!2537380 lambda!422550) lt!2537685)))

(declare-fun b_lambda!269389 () Bool)

(assert (=> (not b_lambda!269389) (not d!2208380)))

(declare-fun bs!1879360 () Bool)

(assert (= bs!1879360 d!2208380))

(assert (=> bs!1879360 m!7783924))

(declare-fun m!7784434 () Bool)

(assert (=> bs!1879360 m!7784434))

(declare-fun m!7784436 () Bool)

(assert (=> bs!1879360 m!7784436))

(assert (=> bs!1879360 m!7783922))

(assert (=> b!7062693 d!2208380))

(declare-fun b!7063033 () Bool)

(declare-fun res!2883811 () Bool)

(declare-fun e!4246195 () Bool)

(assert (=> b!7063033 (=> (not res!2883811) (not e!4246195))))

(declare-fun lt!2537686 () List!68327)

(assert (=> b!7063033 (= res!2883811 (= (size!41175 lt!2537686) (+ (size!41175 (exprs!7096 lt!2537380)) (size!41175 (exprs!7096 ct2!306)))))))

(declare-fun b!7063032 () Bool)

(declare-fun e!4246196 () List!68327)

(assert (=> b!7063032 (= e!4246196 (Cons!68203 (h!74651 (exprs!7096 lt!2537380)) (++!15697 (t!382108 (exprs!7096 lt!2537380)) (exprs!7096 ct2!306))))))

(declare-fun b!7063031 () Bool)

(assert (=> b!7063031 (= e!4246196 (exprs!7096 ct2!306))))

(declare-fun b!7063034 () Bool)

(assert (=> b!7063034 (= e!4246195 (or (not (= (exprs!7096 ct2!306) Nil!68203)) (= lt!2537686 (exprs!7096 lt!2537380))))))

(declare-fun d!2208382 () Bool)

(assert (=> d!2208382 e!4246195))

(declare-fun res!2883810 () Bool)

(assert (=> d!2208382 (=> (not res!2883810) (not e!4246195))))

(assert (=> d!2208382 (= res!2883810 (= (content!13723 lt!2537686) (set.union (content!13723 (exprs!7096 lt!2537380)) (content!13723 (exprs!7096 ct2!306)))))))

(assert (=> d!2208382 (= lt!2537686 e!4246196)))

(declare-fun c!1316638 () Bool)

(assert (=> d!2208382 (= c!1316638 (is-Nil!68203 (exprs!7096 lt!2537380)))))

(assert (=> d!2208382 (= (++!15697 (exprs!7096 lt!2537380) (exprs!7096 ct2!306)) lt!2537686)))

(assert (= (and d!2208382 c!1316638) b!7063031))

(assert (= (and d!2208382 (not c!1316638)) b!7063032))

(assert (= (and d!2208382 res!2883810) b!7063033))

(assert (= (and b!7063033 res!2883811) b!7063034))

(declare-fun m!7784438 () Bool)

(assert (=> b!7063033 m!7784438))

(declare-fun m!7784440 () Bool)

(assert (=> b!7063033 m!7784440))

(assert (=> b!7063033 m!7784102))

(declare-fun m!7784442 () Bool)

(assert (=> b!7063032 m!7784442))

(declare-fun m!7784444 () Bool)

(assert (=> d!2208382 m!7784444))

(declare-fun m!7784446 () Bool)

(assert (=> d!2208382 m!7784446))

(assert (=> d!2208382 m!7784110))

(assert (=> b!7062694 d!2208382))

(assert (=> b!7062694 d!2208272))

(declare-fun d!2208384 () Bool)

(declare-fun e!4246199 () Bool)

(assert (=> d!2208384 e!4246199))

(declare-fun res!2883814 () Bool)

(assert (=> d!2208384 (=> (not res!2883814) (not e!4246199))))

(declare-fun lt!2537689 () Context!13192)

(assert (=> d!2208384 (= res!2883814 (= lt!2537399 (dynLambda!27703 lambda!422548 lt!2537689)))))

(declare-fun choose!53971 ((Set Context!13192) Int Context!13192) Context!13192)

(assert (=> d!2208384 (= lt!2537689 (choose!53971 z1!570 lambda!422548 lt!2537399))))

(assert (=> d!2208384 (set.member lt!2537399 (map!15933 z1!570 lambda!422548))))

(assert (=> d!2208384 (= (mapPost2!429 z1!570 lambda!422548 lt!2537399) lt!2537689)))

(declare-fun b!7063038 () Bool)

(assert (=> b!7063038 (= e!4246199 (set.member lt!2537689 z1!570))))

(assert (= (and d!2208384 res!2883814) b!7063038))

(declare-fun b_lambda!269391 () Bool)

(assert (=> (not b_lambda!269391) (not d!2208384)))

(declare-fun m!7784448 () Bool)

(assert (=> d!2208384 m!7784448))

(declare-fun m!7784450 () Bool)

(assert (=> d!2208384 m!7784450))

(declare-fun m!7784452 () Bool)

(assert (=> d!2208384 m!7784452))

(declare-fun m!7784454 () Bool)

(assert (=> d!2208384 m!7784454))

(declare-fun m!7784456 () Bool)

(assert (=> b!7063038 m!7784456))

(assert (=> b!7062694 d!2208384))

(declare-fun bs!1879361 () Bool)

(declare-fun d!2208386 () Bool)

(assert (= bs!1879361 (and d!2208386 b!7062694)))

(declare-fun lambda!422635 () Int)

(assert (=> bs!1879361 (= lambda!422635 lambda!422549)))

(declare-fun bs!1879362 () Bool)

(assert (= bs!1879362 (and d!2208386 d!2208358)))

(assert (=> bs!1879362 (= lambda!422635 lambda!422633)))

(assert (=> d!2208386 (= (inv!86860 setElem!50034) (forall!16550 (exprs!7096 setElem!50034) lambda!422635))))

(declare-fun bs!1879363 () Bool)

(assert (= bs!1879363 d!2208386))

(declare-fun m!7784458 () Bool)

(assert (=> bs!1879363 m!7784458))

(assert (=> setNonEmpty!50034 d!2208386))

(assert (=> b!7062695 d!2208296))

(declare-fun c!1316643 () Bool)

(declare-fun bm!641787 () Bool)

(declare-fun c!1316642 () Bool)

(declare-fun call!641796 () List!68327)

(assert (=> bm!641787 (= call!641796 ($colon$colon!2636 (exprs!7096 lt!2537417) (ite (or c!1316643 c!1316642) (regTwo!35712 (h!74651 (exprs!7096 lt!2537380))) (h!74651 (exprs!7096 lt!2537380)))))))

(declare-fun b!7063039 () Bool)

(declare-fun e!4246202 () Bool)

(assert (=> b!7063039 (= c!1316643 e!4246202)))

(declare-fun res!2883815 () Bool)

(assert (=> b!7063039 (=> (not res!2883815) (not e!4246202))))

(assert (=> b!7063039 (= res!2883815 (is-Concat!26445 (h!74651 (exprs!7096 lt!2537380))))))

(declare-fun e!4246203 () (Set Context!13192))

(declare-fun e!4246205 () (Set Context!13192))

(assert (=> b!7063039 (= e!4246203 e!4246205)))

(declare-fun b!7063040 () Bool)

(declare-fun e!4246200 () (Set Context!13192))

(declare-fun call!641792 () (Set Context!13192))

(assert (=> b!7063040 (= e!4246200 call!641792)))

(declare-fun b!7063041 () Bool)

(declare-fun e!4246204 () (Set Context!13192))

(assert (=> b!7063041 (= e!4246204 (set.insert lt!2537417 (as set.empty (Set Context!13192))))))

(declare-fun b!7063042 () Bool)

(declare-fun e!4246201 () (Set Context!13192))

(assert (=> b!7063042 (= e!4246201 call!641792)))

(declare-fun d!2208388 () Bool)

(declare-fun c!1316640 () Bool)

(assert (=> d!2208388 (= c!1316640 (and (is-ElementMatch!17600 (h!74651 (exprs!7096 lt!2537380))) (= (c!1316545 (h!74651 (exprs!7096 lt!2537380))) (h!74650 s!7408))))))

(assert (=> d!2208388 (= (derivationStepZipperDown!2234 (h!74651 (exprs!7096 lt!2537380)) lt!2537417 (h!74650 s!7408)) e!4246204)))

(declare-fun b!7063043 () Bool)

(assert (=> b!7063043 (= e!4246200 (as set.empty (Set Context!13192)))))

(declare-fun b!7063044 () Bool)

(declare-fun call!641794 () (Set Context!13192))

(declare-fun call!641795 () (Set Context!13192))

(assert (=> b!7063044 (= e!4246205 (set.union call!641794 call!641795))))

(declare-fun b!7063045 () Bool)

(declare-fun call!641793 () (Set Context!13192))

(assert (=> b!7063045 (= e!4246203 (set.union call!641794 call!641793))))

(declare-fun b!7063046 () Bool)

(assert (=> b!7063046 (= e!4246205 e!4246201)))

(assert (=> b!7063046 (= c!1316642 (is-Concat!26445 (h!74651 (exprs!7096 lt!2537380))))))

(declare-fun bm!641788 () Bool)

(declare-fun call!641797 () List!68327)

(assert (=> bm!641788 (= call!641797 call!641796)))

(declare-fun bm!641789 () Bool)

(assert (=> bm!641789 (= call!641795 call!641793)))

(declare-fun b!7063047 () Bool)

(assert (=> b!7063047 (= e!4246204 e!4246203)))

(declare-fun c!1316641 () Bool)

(assert (=> b!7063047 (= c!1316641 (is-Union!17600 (h!74651 (exprs!7096 lt!2537380))))))

(declare-fun bm!641790 () Bool)

(assert (=> bm!641790 (= call!641792 call!641795)))

(declare-fun b!7063048 () Bool)

(assert (=> b!7063048 (= e!4246202 (nullable!7283 (regOne!35712 (h!74651 (exprs!7096 lt!2537380)))))))

(declare-fun bm!641791 () Bool)

(assert (=> bm!641791 (= call!641794 (derivationStepZipperDown!2234 (ite c!1316641 (regOne!35713 (h!74651 (exprs!7096 lt!2537380))) (regOne!35712 (h!74651 (exprs!7096 lt!2537380)))) (ite c!1316641 lt!2537417 (Context!13193 call!641796)) (h!74650 s!7408)))))

(declare-fun bm!641792 () Bool)

(assert (=> bm!641792 (= call!641793 (derivationStepZipperDown!2234 (ite c!1316641 (regTwo!35713 (h!74651 (exprs!7096 lt!2537380))) (ite c!1316643 (regTwo!35712 (h!74651 (exprs!7096 lt!2537380))) (ite c!1316642 (regOne!35712 (h!74651 (exprs!7096 lt!2537380))) (reg!17929 (h!74651 (exprs!7096 lt!2537380)))))) (ite (or c!1316641 c!1316643) lt!2537417 (Context!13193 call!641797)) (h!74650 s!7408)))))

(declare-fun b!7063049 () Bool)

(declare-fun c!1316639 () Bool)

(assert (=> b!7063049 (= c!1316639 (is-Star!17600 (h!74651 (exprs!7096 lt!2537380))))))

(assert (=> b!7063049 (= e!4246201 e!4246200)))

(assert (= (and d!2208388 c!1316640) b!7063041))

(assert (= (and d!2208388 (not c!1316640)) b!7063047))

(assert (= (and b!7063047 c!1316641) b!7063045))

(assert (= (and b!7063047 (not c!1316641)) b!7063039))

(assert (= (and b!7063039 res!2883815) b!7063048))

(assert (= (and b!7063039 c!1316643) b!7063044))

(assert (= (and b!7063039 (not c!1316643)) b!7063046))

(assert (= (and b!7063046 c!1316642) b!7063042))

(assert (= (and b!7063046 (not c!1316642)) b!7063049))

(assert (= (and b!7063049 c!1316639) b!7063040))

(assert (= (and b!7063049 (not c!1316639)) b!7063043))

(assert (= (or b!7063042 b!7063040) bm!641788))

(assert (= (or b!7063042 b!7063040) bm!641790))

(assert (= (or b!7063044 bm!641790) bm!641789))

(assert (= (or b!7063044 bm!641788) bm!641787))

(assert (= (or b!7063045 b!7063044) bm!641791))

(assert (= (or b!7063045 bm!641789) bm!641792))

(declare-fun m!7784460 () Bool)

(assert (=> bm!641792 m!7784460))

(declare-fun m!7784462 () Bool)

(assert (=> bm!641791 m!7784462))

(assert (=> b!7063041 m!7783870))

(declare-fun m!7784464 () Bool)

(assert (=> bm!641787 m!7784464))

(assert (=> b!7063048 m!7784118))

(assert (=> b!7062695 d!2208388))

(declare-fun b!7063054 () Bool)

(declare-fun e!4246208 () Bool)

(declare-fun tp!1941241 () Bool)

(declare-fun tp!1941242 () Bool)

(assert (=> b!7063054 (= e!4246208 (and tp!1941241 tp!1941242))))

(assert (=> b!7062684 (= tp!1941222 e!4246208)))

(assert (= (and b!7062684 (is-Cons!68203 (exprs!7096 setElem!50034))) b!7063054))

(declare-fun b!7063059 () Bool)

(declare-fun e!4246211 () Bool)

(declare-fun tp!1941245 () Bool)

(assert (=> b!7063059 (= e!4246211 (and tp_is_empty!44425 tp!1941245))))

(assert (=> b!7062698 (= tp!1941221 e!4246211)))

(assert (= (and b!7062698 (is-Cons!68202 (t!382107 s!7408))) b!7063059))

(declare-fun condSetEmpty!50040 () Bool)

(assert (=> setNonEmpty!50034 (= condSetEmpty!50040 (= setRest!50034 (as set.empty (Set Context!13192))))))

(declare-fun setRes!50040 () Bool)

(assert (=> setNonEmpty!50034 (= tp!1941224 setRes!50040)))

(declare-fun setIsEmpty!50040 () Bool)

(assert (=> setIsEmpty!50040 setRes!50040))

(declare-fun e!4246214 () Bool)

(declare-fun setElem!50040 () Context!13192)

(declare-fun tp!1941250 () Bool)

(declare-fun setNonEmpty!50040 () Bool)

(assert (=> setNonEmpty!50040 (= setRes!50040 (and tp!1941250 (inv!86860 setElem!50040) e!4246214))))

(declare-fun setRest!50040 () (Set Context!13192))

(assert (=> setNonEmpty!50040 (= setRest!50034 (set.union (set.insert setElem!50040 (as set.empty (Set Context!13192))) setRest!50040))))

(declare-fun b!7063064 () Bool)

(declare-fun tp!1941251 () Bool)

(assert (=> b!7063064 (= e!4246214 tp!1941251)))

(assert (= (and setNonEmpty!50034 condSetEmpty!50040) setIsEmpty!50040))

(assert (= (and setNonEmpty!50034 (not condSetEmpty!50040)) setNonEmpty!50040))

(assert (= setNonEmpty!50040 b!7063064))

(declare-fun m!7784466 () Bool)

(assert (=> setNonEmpty!50040 m!7784466))

(declare-fun b!7063065 () Bool)

(declare-fun e!4246215 () Bool)

(declare-fun tp!1941252 () Bool)

(declare-fun tp!1941253 () Bool)

(assert (=> b!7063065 (= e!4246215 (and tp!1941252 tp!1941253))))

(assert (=> b!7062706 (= tp!1941223 e!4246215)))

(assert (= (and b!7062706 (is-Cons!68203 (exprs!7096 ct2!306))) b!7063065))

(declare-fun b_lambda!269393 () Bool)

(assert (= b_lambda!269383 (or b!7062694 b_lambda!269393)))

(declare-fun bs!1879364 () Bool)

(declare-fun d!2208390 () Bool)

(assert (= bs!1879364 (and d!2208390 b!7062694)))

(declare-fun lt!2537690 () Unit!161876)

(assert (=> bs!1879364 (= lt!2537690 (lemmaConcatPreservesForall!911 (exprs!7096 lt!2537417) (exprs!7096 ct2!306) lambda!422549))))

(assert (=> bs!1879364 (= (dynLambda!27703 lambda!422548 lt!2537417) (Context!13193 (++!15697 (exprs!7096 lt!2537417) (exprs!7096 ct2!306))))))

(declare-fun m!7784468 () Bool)

(assert (=> bs!1879364 m!7784468))

(declare-fun m!7784470 () Bool)

(assert (=> bs!1879364 m!7784470))

(assert (=> d!2208298 d!2208390))

(declare-fun b_lambda!269395 () Bool)

(assert (= b_lambda!269391 (or b!7062694 b_lambda!269395)))

(declare-fun bs!1879365 () Bool)

(declare-fun d!2208392 () Bool)

(assert (= bs!1879365 (and d!2208392 b!7062694)))

(declare-fun lt!2537691 () Unit!161876)

(assert (=> bs!1879365 (= lt!2537691 (lemmaConcatPreservesForall!911 (exprs!7096 lt!2537689) (exprs!7096 ct2!306) lambda!422549))))

(assert (=> bs!1879365 (= (dynLambda!27703 lambda!422548 lt!2537689) (Context!13193 (++!15697 (exprs!7096 lt!2537689) (exprs!7096 ct2!306))))))

(declare-fun m!7784472 () Bool)

(assert (=> bs!1879365 m!7784472))

(declare-fun m!7784474 () Bool)

(assert (=> bs!1879365 m!7784474))

(assert (=> d!2208384 d!2208392))

(declare-fun b_lambda!269397 () Bool)

(assert (= b_lambda!269389 (or b!7062688 b_lambda!269397)))

(declare-fun bs!1879366 () Bool)

(declare-fun d!2208394 () Bool)

(assert (= bs!1879366 (and d!2208394 b!7062688)))

(assert (=> bs!1879366 (= (dynLambda!27702 lambda!422550 lt!2537380) (derivationStepZipperUp!2184 lt!2537380 (h!74650 s!7408)))))

(assert (=> bs!1879366 m!7783930))

(assert (=> d!2208380 d!2208394))

(declare-fun b_lambda!269399 () Bool)

(assert (= b_lambda!269381 (or b!7062688 b_lambda!269399)))

(declare-fun bs!1879367 () Bool)

(declare-fun d!2208396 () Bool)

(assert (= bs!1879367 (and d!2208396 b!7062688)))

(assert (=> bs!1879367 (= (dynLambda!27702 lambda!422550 lt!2537417) (derivationStepZipperUp!2184 lt!2537417 (h!74650 s!7408)))))

(assert (=> bs!1879367 m!7783790))

(assert (=> d!2208280 d!2208396))

(declare-fun b_lambda!269401 () Bool)

(assert (= b_lambda!269385 (or b!7062688 b_lambda!269401)))

(declare-fun bs!1879368 () Bool)

(declare-fun d!2208398 () Bool)

(assert (= bs!1879368 (and d!2208398 b!7062688)))

(assert (=> bs!1879368 (= (dynLambda!27702 lambda!422550 lt!2537422) (derivationStepZipperUp!2184 lt!2537422 (h!74650 s!7408)))))

(assert (=> bs!1879368 m!7783812))

(assert (=> d!2208300 d!2208398))

(declare-fun b_lambda!269403 () Bool)

(assert (= b_lambda!269379 (or b!7062688 b_lambda!269403)))

(declare-fun bs!1879369 () Bool)

(declare-fun d!2208400 () Bool)

(assert (= bs!1879369 (and d!2208400 b!7062688)))

(assert (=> bs!1879369 (= (dynLambda!27702 lambda!422550 lt!2537373) (derivationStepZipperUp!2184 lt!2537373 (h!74650 s!7408)))))

(assert (=> bs!1879369 m!7783920))

(assert (=> d!2208268 d!2208400))

(declare-fun b_lambda!269405 () Bool)

(assert (= b_lambda!269387 (or b!7062700 b_lambda!269405)))

(declare-fun bs!1879370 () Bool)

(declare-fun d!2208402 () Bool)

(assert (= bs!1879370 (and d!2208402 b!7062700)))

(assert (=> bs!1879370 (= (dynLambda!27705 lambda!422547 lt!2537667) (matchZipper!3140 (set.insert lt!2537667 (as set.empty (Set Context!13192))) s!7408))))

(declare-fun m!7784476 () Bool)

(assert (=> bs!1879370 m!7784476))

(assert (=> bs!1879370 m!7784476))

(declare-fun m!7784478 () Bool)

(assert (=> bs!1879370 m!7784478))

(assert (=> d!2208348 d!2208402))

(push 1)

(assert (not b!7062913))

(assert (not d!2208292))

(assert (not b!7062903))

(assert (not b!7062907))

(assert (not b!7062959))

(assert (not b!7063026))

(assert (not b!7062888))

(assert (not b!7063048))

(assert (not b!7062970))

(assert (not b!7062996))

(assert (not d!2208264))

(assert (not b!7062989))

(assert (not d!2208324))

(assert (not d!2208266))

(assert (not b!7062904))

(assert (not b!7063019))

(assert (not b!7062843))

(assert (not b!7062910))

(assert (not bm!641786))

(assert (not b!7063033))

(assert (not b!7062918))

(assert (not d!2208340))

(assert (not b!7063025))

(assert (not bs!1879370))

(assert (not b!7062978))

(assert (not b!7062982))

(assert (not d!2208270))

(assert (not d!2208294))

(assert (not b!7062891))

(assert (not b!7063054))

(assert (not d!2208360))

(assert (not b!7063021))

(assert (not b!7062967))

(assert (not b!7062979))

(assert (not b!7062995))

(assert (not d!2208320))

(assert (not b!7062986))

(assert (not d!2208328))

(assert (not b!7062969))

(assert (not bs!1879365))

(assert (not d!2208338))

(assert (not bm!641778))

(assert (not d!2208374))

(assert (not d!2208384))

(assert (not bs!1879368))

(assert (not d!2208334))

(assert (not b!7063032))

(assert (not b!7062985))

(assert (not b_lambda!269405))

(assert (not b!7062876))

(assert (not b_lambda!269401))

(assert (not bm!641779))

(assert (not b!7062956))

(assert (not d!2208258))

(assert (not d!2208298))

(assert (not b!7062984))

(assert (not b!7063017))

(assert (not b!7063029))

(assert (not bs!1879366))

(assert (not bm!641792))

(assert (not b!7062930))

(assert (not b!7063064))

(assert (not d!2208382))

(assert (not b!7062924))

(assert (not d!2208268))

(assert (not d!2208380))

(assert (not b!7062974))

(assert (not d!2208346))

(assert (not b!7063059))

(assert (not b!7062981))

(assert (not b_lambda!269393))

(assert (not b!7062897))

(assert (not setNonEmpty!50040))

(assert (not d!2208330))

(assert (not b!7063022))

(assert (not b!7063065))

(assert (not d!2208304))

(assert (not d!2208306))

(assert (not d!2208332))

(assert (not d!2208310))

(assert (not b!7062842))

(assert (not b!7062993))

(assert (not b_lambda!269397))

(assert (not bm!641791))

(assert (not b!7062965))

(assert (not b!7062933))

(assert (not b!7062955))

(assert (not b!7062960))

(assert (not b!7063023))

(assert (not b!7062912))

(assert (not d!2208370))

(assert (not d!2208272))

(assert (not b!7062920))

(assert (not d!2208372))

(assert (not d!2208342))

(assert tp_is_empty!44425)

(assert (not d!2208348))

(assert (not b_lambda!269395))

(assert (not b!7062968))

(assert (not bs!1879367))

(assert (not d!2208300))

(assert (not b!7062976))

(assert (not b_lambda!269399))

(assert (not b!7062945))

(assert (not bs!1879364))

(assert (not d!2208358))

(assert (not d!2208254))

(assert (not bm!641782))

(assert (not b!7062944))

(assert (not d!2208378))

(assert (not b!7063024))

(assert (not d!2208276))

(assert (not b_lambda!269403))

(assert (not b!7062977))

(assert (not d!2208322))

(assert (not bm!641783))

(assert (not d!2208354))

(assert (not d!2208288))

(assert (not b!7062927))

(assert (not d!2208302))

(assert (not d!2208280))

(assert (not b!7062973))

(assert (not b!7062932))

(assert (not d!2208366))

(assert (not b!7062975))

(assert (not bm!641785))

(assert (not b!7062983))

(assert (not d!2208386))

(assert (not d!2208344))

(assert (not b!7062925))

(assert (not b!7062962))

(assert (not d!2208312))

(assert (not b!7062943))

(assert (not b!7062980))

(assert (not bm!641784))

(assert (not d!2208364))

(assert (not d!2208350))

(assert (not bm!641787))

(assert (not bs!1879369))

(assert (not d!2208352))

(assert (not b!7063018))

(assert (not d!2208336))

(assert (not bm!641774))

(assert (not d!2208286))

(assert (not d!2208356))

(assert (not b!7062994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

