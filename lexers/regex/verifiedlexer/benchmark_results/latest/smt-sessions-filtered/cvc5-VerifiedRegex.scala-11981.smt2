; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!671272 () Bool)

(assert start!671272)

(declare-fun b!6987597 () Bool)

(assert (=> b!6987597 true))

(declare-fun b!6987615 () Bool)

(assert (=> b!6987615 true))

(declare-fun b!6987609 () Bool)

(assert (=> b!6987609 true))

(declare-fun b!6987596 () Bool)

(declare-fun res!2849535 () Bool)

(declare-fun e!4199838 () Bool)

(assert (=> b!6987596 (=> (not res!2849535) (not e!4199838))))

(declare-datatypes ((C!34686 0))(
  ( (C!34687 (val!27045 Int)) )
))
(declare-datatypes ((List!67169 0))(
  ( (Nil!67045) (Cons!67045 (h!73493 C!34686) (t!380916 List!67169)) )
))
(declare-fun s!7408 () List!67169)

(assert (=> b!6987596 (= res!2849535 (is-Cons!67045 s!7408))))

(declare-fun e!4199830 () Bool)

(assert (=> b!6987597 (= e!4199838 (not e!4199830))))

(declare-fun res!2849524 () Bool)

(assert (=> b!6987597 (=> res!2849524 e!4199830)))

(declare-datatypes ((Regex!17208 0))(
  ( (ElementMatch!17208 (c!1295854 C!34686)) (Concat!26053 (regOne!34928 Regex!17208) (regTwo!34928 Regex!17208)) (EmptyExpr!17208) (Star!17208 (reg!17537 Regex!17208)) (EmptyLang!17208) (Union!17208 (regOne!34929 Regex!17208) (regTwo!34929 Regex!17208)) )
))
(declare-datatypes ((List!67170 0))(
  ( (Nil!67046) (Cons!67046 (h!73494 Regex!17208) (t!380917 List!67170)) )
))
(declare-datatypes ((Context!12408 0))(
  ( (Context!12409 (exprs!6704 List!67170)) )
))
(declare-fun lt!2485350 () (Set Context!12408))

(declare-fun matchZipper!2748 ((Set Context!12408) List!67169) Bool)

(assert (=> b!6987597 (= res!2849524 (not (matchZipper!2748 lt!2485350 s!7408)))))

(declare-fun lt!2485326 () Context!12408)

(assert (=> b!6987597 (= lt!2485350 (set.insert lt!2485326 (as set.empty (Set Context!12408))))))

(declare-fun lt!2485333 () (Set Context!12408))

(declare-fun lambda!400886 () Int)

(declare-fun getWitness!1100 ((Set Context!12408) Int) Context!12408)

(assert (=> b!6987597 (= lt!2485326 (getWitness!1100 lt!2485333 lambda!400886))))

(declare-datatypes ((List!67171 0))(
  ( (Nil!67047) (Cons!67047 (h!73495 Context!12408) (t!380918 List!67171)) )
))
(declare-fun lt!2485336 () List!67171)

(declare-fun exists!2989 (List!67171 Int) Bool)

(assert (=> b!6987597 (exists!2989 lt!2485336 lambda!400886)))

(declare-datatypes ((Unit!161071 0))(
  ( (Unit!161072) )
))
(declare-fun lt!2485347 () Unit!161071)

(declare-fun lemmaZipperMatchesExistsMatchingContext!177 (List!67171 List!67169) Unit!161071)

(assert (=> b!6987597 (= lt!2485347 (lemmaZipperMatchesExistsMatchingContext!177 lt!2485336 s!7408))))

(declare-fun toList!10568 ((Set Context!12408)) List!67171)

(assert (=> b!6987597 (= lt!2485336 (toList!10568 lt!2485333))))

(declare-fun b!6987598 () Bool)

(declare-fun e!4199835 () Bool)

(declare-fun e!4199836 () Bool)

(assert (=> b!6987598 (= e!4199835 e!4199836)))

(declare-fun res!2849530 () Bool)

(assert (=> b!6987598 (=> res!2849530 e!4199836)))

(declare-fun lt!2485334 () (Set Context!12408))

(assert (=> b!6987598 (= res!2849530 (not (matchZipper!2748 lt!2485334 (t!380916 s!7408))))))

(declare-fun lt!2485338 () List!67170)

(declare-fun lambda!400888 () Int)

(declare-fun lt!2485332 () Unit!161071)

(declare-fun ct2!306 () Context!12408)

(declare-fun lemmaConcatPreservesForall!544 (List!67170 List!67170 Int) Unit!161071)

(assert (=> b!6987598 (= lt!2485332 (lemmaConcatPreservesForall!544 lt!2485338 (exprs!6704 ct2!306) lambda!400888))))

(declare-fun setIsEmpty!47748 () Bool)

(declare-fun setRes!47748 () Bool)

(assert (=> setIsEmpty!47748 setRes!47748))

(declare-fun b!6987599 () Bool)

(declare-fun e!4199829 () Bool)

(assert (=> b!6987599 (= e!4199836 e!4199829)))

(declare-fun res!2849532 () Bool)

(assert (=> b!6987599 (=> res!2849532 e!4199829)))

(declare-fun forall!16117 (List!67170 Int) Bool)

(assert (=> b!6987599 (= res!2849532 (not (forall!16117 lt!2485338 lambda!400888)))))

(declare-fun lt!2485330 () (Set Context!12408))

(declare-fun lt!2485323 () Context!12408)

(declare-fun lambda!400889 () Int)

(declare-fun flatMap!2194 ((Set Context!12408) Int) (Set Context!12408))

(declare-fun derivationStepZipperUp!1858 (Context!12408 C!34686) (Set Context!12408))

(assert (=> b!6987599 (= (flatMap!2194 lt!2485330 lambda!400889) (derivationStepZipperUp!1858 lt!2485323 (h!73493 s!7408)))))

(declare-fun lt!2485343 () Unit!161071)

(declare-fun lemmaFlatMapOnSingletonSet!1709 ((Set Context!12408) Context!12408 Int) Unit!161071)

(assert (=> b!6987599 (= lt!2485343 (lemmaFlatMapOnSingletonSet!1709 lt!2485330 lt!2485323 lambda!400889))))

(assert (=> b!6987599 (= lt!2485330 (set.insert lt!2485323 (as set.empty (Set Context!12408))))))

(declare-fun lt!2485335 () Unit!161071)

(assert (=> b!6987599 (= lt!2485335 (lemmaConcatPreservesForall!544 lt!2485338 (exprs!6704 ct2!306) lambda!400888))))

(declare-fun lt!2485329 () Unit!161071)

(assert (=> b!6987599 (= lt!2485329 (lemmaConcatPreservesForall!544 lt!2485338 (exprs!6704 ct2!306) lambda!400888))))

(declare-fun b!6987600 () Bool)

(declare-fun e!4199827 () Bool)

(declare-fun e!4199831 () Bool)

(assert (=> b!6987600 (= e!4199827 e!4199831)))

(declare-fun res!2849537 () Bool)

(assert (=> b!6987600 (=> res!2849537 e!4199831)))

(declare-fun lt!2485331 () Context!12408)

(declare-fun nullable!6968 (Regex!17208) Bool)

(assert (=> b!6987600 (= res!2849537 (not (nullable!6968 (h!73494 (exprs!6704 lt!2485331)))))))

(declare-fun tail!13209 (List!67170) List!67170)

(assert (=> b!6987600 (= lt!2485338 (tail!13209 (exprs!6704 lt!2485331)))))

(declare-fun b!6987601 () Bool)

(declare-fun e!4199832 () Bool)

(assert (=> b!6987601 (= e!4199831 e!4199832)))

(declare-fun res!2849529 () Bool)

(assert (=> b!6987601 (=> res!2849529 e!4199832)))

(declare-fun lt!2485351 () (Set Context!12408))

(declare-fun lt!2485328 () (Set Context!12408))

(assert (=> b!6987601 (= res!2849529 (not (= lt!2485351 lt!2485328)))))

(declare-fun lt!2485348 () (Set Context!12408))

(assert (=> b!6987601 (= lt!2485328 (set.union lt!2485348 lt!2485334))))

(assert (=> b!6987601 (= lt!2485334 (derivationStepZipperUp!1858 lt!2485323 (h!73493 s!7408)))))

(declare-fun derivationStepZipperDown!1926 (Regex!17208 Context!12408 C!34686) (Set Context!12408))

(assert (=> b!6987601 (= lt!2485348 (derivationStepZipperDown!1926 (h!73494 (exprs!6704 lt!2485331)) lt!2485323 (h!73493 s!7408)))))

(declare-fun ++!15153 (List!67170 List!67170) List!67170)

(assert (=> b!6987601 (= lt!2485323 (Context!12409 (++!15153 lt!2485338 (exprs!6704 ct2!306))))))

(declare-fun lt!2485342 () Unit!161071)

(assert (=> b!6987601 (= lt!2485342 (lemmaConcatPreservesForall!544 lt!2485338 (exprs!6704 ct2!306) lambda!400888))))

(declare-fun lt!2485322 () Unit!161071)

(assert (=> b!6987601 (= lt!2485322 (lemmaConcatPreservesForall!544 lt!2485338 (exprs!6704 ct2!306) lambda!400888))))

(declare-fun b!6987602 () Bool)

(declare-fun e!4199840 () Bool)

(assert (=> b!6987602 (= e!4199840 (not (matchZipper!2748 lt!2485334 (t!380916 s!7408))))))

(declare-fun lt!2485337 () Unit!161071)

(assert (=> b!6987602 (= lt!2485337 (lemmaConcatPreservesForall!544 lt!2485338 (exprs!6704 ct2!306) lambda!400888))))

(declare-fun b!6987603 () Bool)

(declare-fun res!2849526 () Bool)

(assert (=> b!6987603 (=> res!2849526 e!4199830)))

(assert (=> b!6987603 (= res!2849526 (not (set.member lt!2485326 lt!2485333)))))

(declare-fun b!6987604 () Bool)

(declare-fun e!4199834 () Bool)

(assert (=> b!6987604 (= e!4199834 (matchZipper!2748 lt!2485334 (t!380916 s!7408)))))

(declare-fun b!6987605 () Bool)

(declare-fun res!2849525 () Bool)

(assert (=> b!6987605 (=> res!2849525 e!4199827)))

(declare-fun isEmpty!39133 (List!67170) Bool)

(assert (=> b!6987605 (= res!2849525 (isEmpty!39133 (exprs!6704 lt!2485331)))))

(declare-fun res!2849523 () Bool)

(assert (=> start!671272 (=> (not res!2849523) (not e!4199838))))

(assert (=> start!671272 (= res!2849523 (matchZipper!2748 lt!2485333 s!7408))))

(declare-fun z1!570 () (Set Context!12408))

(declare-fun appendTo!329 ((Set Context!12408) Context!12408) (Set Context!12408))

(assert (=> start!671272 (= lt!2485333 (appendTo!329 z1!570 ct2!306))))

(assert (=> start!671272 e!4199838))

(declare-fun condSetEmpty!47748 () Bool)

(assert (=> start!671272 (= condSetEmpty!47748 (= z1!570 (as set.empty (Set Context!12408))))))

(assert (=> start!671272 setRes!47748))

(declare-fun e!4199837 () Bool)

(declare-fun inv!85880 (Context!12408) Bool)

(assert (=> start!671272 (and (inv!85880 ct2!306) e!4199837)))

(declare-fun e!4199841 () Bool)

(assert (=> start!671272 e!4199841))

(declare-fun b!6987606 () Bool)

(declare-fun tp!1929390 () Bool)

(assert (=> b!6987606 (= e!4199837 tp!1929390)))

(declare-fun b!6987607 () Bool)

(declare-fun res!2849531 () Bool)

(assert (=> b!6987607 (=> res!2849531 e!4199827)))

(assert (=> b!6987607 (= res!2849531 (not (is-Cons!67046 (exprs!6704 lt!2485331))))))

(declare-fun b!6987608 () Bool)

(assert (=> b!6987608 (= e!4199832 e!4199835)))

(declare-fun res!2849522 () Bool)

(assert (=> b!6987608 (=> res!2849522 e!4199835)))

(assert (=> b!6987608 (= res!2849522 e!4199840)))

(declare-fun res!2849536 () Bool)

(assert (=> b!6987608 (=> (not res!2849536) (not e!4199840))))

(declare-fun lt!2485321 () Bool)

(declare-fun lt!2485344 () Bool)

(assert (=> b!6987608 (= res!2849536 (not (= lt!2485321 lt!2485344)))))

(assert (=> b!6987608 (= lt!2485321 (matchZipper!2748 lt!2485351 (t!380916 s!7408)))))

(declare-fun lt!2485340 () Unit!161071)

(assert (=> b!6987608 (= lt!2485340 (lemmaConcatPreservesForall!544 lt!2485338 (exprs!6704 ct2!306) lambda!400888))))

(assert (=> b!6987608 (= (matchZipper!2748 lt!2485328 (t!380916 s!7408)) e!4199834)))

(declare-fun res!2849528 () Bool)

(assert (=> b!6987608 (=> res!2849528 e!4199834)))

(assert (=> b!6987608 (= res!2849528 lt!2485344)))

(assert (=> b!6987608 (= lt!2485344 (matchZipper!2748 lt!2485348 (t!380916 s!7408)))))

(declare-fun lt!2485346 () Unit!161071)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1381 ((Set Context!12408) (Set Context!12408) List!67169) Unit!161071)

(assert (=> b!6987608 (= lt!2485346 (lemmaZipperConcatMatchesSameAsBothZippers!1381 lt!2485348 lt!2485334 (t!380916 s!7408)))))

(declare-fun lt!2485324 () Unit!161071)

(assert (=> b!6987608 (= lt!2485324 (lemmaConcatPreservesForall!544 lt!2485338 (exprs!6704 ct2!306) lambda!400888))))

(declare-fun lt!2485327 () Unit!161071)

(assert (=> b!6987608 (= lt!2485327 (lemmaConcatPreservesForall!544 lt!2485338 (exprs!6704 ct2!306) lambda!400888))))

(declare-fun e!4199828 () Bool)

(assert (=> b!6987609 (= e!4199828 e!4199827)))

(declare-fun res!2849534 () Bool)

(assert (=> b!6987609 (=> res!2849534 e!4199827)))

(declare-fun lt!2485349 () (Set Context!12408))

(declare-fun derivationStepZipper!2688 ((Set Context!12408) C!34686) (Set Context!12408))

(assert (=> b!6987609 (= res!2849534 (not (= (derivationStepZipper!2688 lt!2485349 (h!73493 s!7408)) lt!2485351)))))

(declare-fun lt!2485341 () Context!12408)

(assert (=> b!6987609 (= (flatMap!2194 lt!2485349 lambda!400889) (derivationStepZipperUp!1858 lt!2485341 (h!73493 s!7408)))))

(declare-fun lt!2485339 () Unit!161071)

(assert (=> b!6987609 (= lt!2485339 (lemmaFlatMapOnSingletonSet!1709 lt!2485349 lt!2485341 lambda!400889))))

(assert (=> b!6987609 (= lt!2485351 (derivationStepZipperUp!1858 lt!2485341 (h!73493 s!7408)))))

(declare-fun lt!2485345 () Unit!161071)

(assert (=> b!6987609 (= lt!2485345 (lemmaConcatPreservesForall!544 (exprs!6704 lt!2485331) (exprs!6704 ct2!306) lambda!400888))))

(declare-fun b!6987610 () Bool)

(declare-fun res!2849533 () Bool)

(assert (=> b!6987610 (=> res!2849533 e!4199835)))

(assert (=> b!6987610 (= res!2849533 (not lt!2485321))))

(declare-fun b!6987611 () Bool)

(declare-fun e!4199833 () Bool)

(assert (=> b!6987611 (= e!4199833 e!4199828)))

(declare-fun res!2849521 () Bool)

(assert (=> b!6987611 (=> res!2849521 e!4199828)))

(assert (=> b!6987611 (= res!2849521 (not (= lt!2485349 lt!2485350)))))

(assert (=> b!6987611 (= lt!2485349 (set.insert lt!2485341 (as set.empty (Set Context!12408))))))

(declare-fun lt!2485352 () Unit!161071)

(assert (=> b!6987611 (= lt!2485352 (lemmaConcatPreservesForall!544 (exprs!6704 lt!2485331) (exprs!6704 ct2!306) lambda!400888))))

(declare-fun b!6987612 () Bool)

(declare-fun tp_is_empty!43641 () Bool)

(declare-fun tp!1929387 () Bool)

(assert (=> b!6987612 (= e!4199841 (and tp_is_empty!43641 tp!1929387))))

(declare-fun b!6987613 () Bool)

(assert (=> b!6987613 (= e!4199829 (forall!16117 (exprs!6704 ct2!306) lambda!400888))))

(declare-fun b!6987614 () Bool)

(declare-fun e!4199839 () Bool)

(declare-fun tp!1929389 () Bool)

(assert (=> b!6987614 (= e!4199839 tp!1929389)))

(assert (=> b!6987615 (= e!4199830 e!4199833)))

(declare-fun res!2849527 () Bool)

(assert (=> b!6987615 (=> res!2849527 e!4199833)))

(assert (=> b!6987615 (= res!2849527 (or (not (= lt!2485341 lt!2485326)) (not (set.member lt!2485331 z1!570))))))

(assert (=> b!6987615 (= lt!2485341 (Context!12409 (++!15153 (exprs!6704 lt!2485331) (exprs!6704 ct2!306))))))

(declare-fun lt!2485325 () Unit!161071)

(assert (=> b!6987615 (= lt!2485325 (lemmaConcatPreservesForall!544 (exprs!6704 lt!2485331) (exprs!6704 ct2!306) lambda!400888))))

(declare-fun lambda!400887 () Int)

(declare-fun mapPost2!63 ((Set Context!12408) Int Context!12408) Context!12408)

(assert (=> b!6987615 (= lt!2485331 (mapPost2!63 z1!570 lambda!400887 lt!2485326))))

(declare-fun setNonEmpty!47748 () Bool)

(declare-fun setElem!47748 () Context!12408)

(declare-fun tp!1929388 () Bool)

(assert (=> setNonEmpty!47748 (= setRes!47748 (and tp!1929388 (inv!85880 setElem!47748) e!4199839))))

(declare-fun setRest!47748 () (Set Context!12408))

(assert (=> setNonEmpty!47748 (= z1!570 (set.union (set.insert setElem!47748 (as set.empty (Set Context!12408))) setRest!47748))))

(assert (= (and start!671272 res!2849523) b!6987596))

(assert (= (and b!6987596 res!2849535) b!6987597))

(assert (= (and b!6987597 (not res!2849524)) b!6987603))

(assert (= (and b!6987603 (not res!2849526)) b!6987615))

(assert (= (and b!6987615 (not res!2849527)) b!6987611))

(assert (= (and b!6987611 (not res!2849521)) b!6987609))

(assert (= (and b!6987609 (not res!2849534)) b!6987607))

(assert (= (and b!6987607 (not res!2849531)) b!6987605))

(assert (= (and b!6987605 (not res!2849525)) b!6987600))

(assert (= (and b!6987600 (not res!2849537)) b!6987601))

(assert (= (and b!6987601 (not res!2849529)) b!6987608))

(assert (= (and b!6987608 (not res!2849528)) b!6987604))

(assert (= (and b!6987608 res!2849536) b!6987602))

(assert (= (and b!6987608 (not res!2849522)) b!6987610))

(assert (= (and b!6987610 (not res!2849533)) b!6987598))

(assert (= (and b!6987598 (not res!2849530)) b!6987599))

(assert (= (and b!6987599 (not res!2849532)) b!6987613))

(assert (= (and start!671272 condSetEmpty!47748) setIsEmpty!47748))

(assert (= (and start!671272 (not condSetEmpty!47748)) setNonEmpty!47748))

(assert (= setNonEmpty!47748 b!6987614))

(assert (= start!671272 b!6987606))

(assert (= (and start!671272 (is-Cons!67045 s!7408)) b!6987612))

(declare-fun m!7675586 () Bool)

(assert (=> b!6987599 m!7675586))

(declare-fun m!7675588 () Bool)

(assert (=> b!6987599 m!7675588))

(declare-fun m!7675590 () Bool)

(assert (=> b!6987599 m!7675590))

(declare-fun m!7675592 () Bool)

(assert (=> b!6987599 m!7675592))

(declare-fun m!7675594 () Bool)

(assert (=> b!6987599 m!7675594))

(declare-fun m!7675596 () Bool)

(assert (=> b!6987599 m!7675596))

(assert (=> b!6987599 m!7675590))

(declare-fun m!7675598 () Bool)

(assert (=> start!671272 m!7675598))

(declare-fun m!7675600 () Bool)

(assert (=> start!671272 m!7675600))

(declare-fun m!7675602 () Bool)

(assert (=> start!671272 m!7675602))

(declare-fun m!7675604 () Bool)

(assert (=> b!6987605 m!7675604))

(declare-fun m!7675606 () Bool)

(assert (=> b!6987611 m!7675606))

(declare-fun m!7675608 () Bool)

(assert (=> b!6987611 m!7675608))

(declare-fun m!7675610 () Bool)

(assert (=> b!6987609 m!7675610))

(declare-fun m!7675612 () Bool)

(assert (=> b!6987609 m!7675612))

(declare-fun m!7675614 () Bool)

(assert (=> b!6987609 m!7675614))

(assert (=> b!6987609 m!7675608))

(declare-fun m!7675616 () Bool)

(assert (=> b!6987609 m!7675616))

(declare-fun m!7675618 () Bool)

(assert (=> b!6987603 m!7675618))

(declare-fun m!7675620 () Bool)

(assert (=> b!6987604 m!7675620))

(declare-fun m!7675622 () Bool)

(assert (=> b!6987597 m!7675622))

(declare-fun m!7675624 () Bool)

(assert (=> b!6987597 m!7675624))

(declare-fun m!7675626 () Bool)

(assert (=> b!6987597 m!7675626))

(declare-fun m!7675628 () Bool)

(assert (=> b!6987597 m!7675628))

(declare-fun m!7675630 () Bool)

(assert (=> b!6987597 m!7675630))

(declare-fun m!7675632 () Bool)

(assert (=> b!6987597 m!7675632))

(declare-fun m!7675634 () Bool)

(assert (=> b!6987613 m!7675634))

(declare-fun m!7675636 () Bool)

(assert (=> b!6987600 m!7675636))

(declare-fun m!7675638 () Bool)

(assert (=> b!6987600 m!7675638))

(declare-fun m!7675640 () Bool)

(assert (=> setNonEmpty!47748 m!7675640))

(assert (=> b!6987598 m!7675620))

(assert (=> b!6987598 m!7675590))

(declare-fun m!7675642 () Bool)

(assert (=> b!6987615 m!7675642))

(declare-fun m!7675644 () Bool)

(assert (=> b!6987615 m!7675644))

(assert (=> b!6987615 m!7675608))

(declare-fun m!7675646 () Bool)

(assert (=> b!6987615 m!7675646))

(assert (=> b!6987608 m!7675590))

(declare-fun m!7675648 () Bool)

(assert (=> b!6987608 m!7675648))

(assert (=> b!6987608 m!7675590))

(declare-fun m!7675650 () Bool)

(assert (=> b!6987608 m!7675650))

(assert (=> b!6987608 m!7675590))

(declare-fun m!7675652 () Bool)

(assert (=> b!6987608 m!7675652))

(declare-fun m!7675654 () Bool)

(assert (=> b!6987608 m!7675654))

(assert (=> b!6987602 m!7675620))

(assert (=> b!6987602 m!7675590))

(assert (=> b!6987601 m!7675590))

(declare-fun m!7675656 () Bool)

(assert (=> b!6987601 m!7675656))

(assert (=> b!6987601 m!7675596))

(assert (=> b!6987601 m!7675590))

(declare-fun m!7675658 () Bool)

(assert (=> b!6987601 m!7675658))

(push 1)

(assert (not start!671272))

(assert (not b!6987600))

(assert (not b!6987613))

(assert (not b!6987598))

(assert (not b!6987611))

(assert (not b!6987602))

(assert (not b!6987615))

(assert (not b!6987612))

(assert (not b!6987601))

(assert tp_is_empty!43641)

(assert (not b!6987599))

(assert (not b!6987608))

(assert (not b!6987609))

(assert (not b!6987614))

(assert (not setNonEmpty!47748))

(assert (not b!6987597))

(assert (not b!6987606))

(assert (not b!6987604))

(assert (not b!6987605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6987697 () Bool)

(declare-fun e!4199891 () List!67170)

(assert (=> b!6987697 (= e!4199891 (Cons!67046 (h!73494 lt!2485338) (++!15153 (t!380917 lt!2485338) (exprs!6704 ct2!306))))))

(declare-fun b!6987696 () Bool)

(assert (=> b!6987696 (= e!4199891 (exprs!6704 ct2!306))))

(declare-fun b!6987698 () Bool)

(declare-fun res!2849594 () Bool)

(declare-fun e!4199892 () Bool)

(assert (=> b!6987698 (=> (not res!2849594) (not e!4199892))))

(declare-fun lt!2485453 () List!67170)

(declare-fun size!40898 (List!67170) Int)

(assert (=> b!6987698 (= res!2849594 (= (size!40898 lt!2485453) (+ (size!40898 lt!2485338) (size!40898 (exprs!6704 ct2!306)))))))

(declare-fun b!6987699 () Bool)

(assert (=> b!6987699 (= e!4199892 (or (not (= (exprs!6704 ct2!306) Nil!67046)) (= lt!2485453 lt!2485338)))))

(declare-fun d!2176488 () Bool)

(assert (=> d!2176488 e!4199892))

(declare-fun res!2849595 () Bool)

(assert (=> d!2176488 (=> (not res!2849595) (not e!4199892))))

(declare-fun content!13245 (List!67170) (Set Regex!17208))

(assert (=> d!2176488 (= res!2849595 (= (content!13245 lt!2485453) (set.union (content!13245 lt!2485338) (content!13245 (exprs!6704 ct2!306)))))))

(assert (=> d!2176488 (= lt!2485453 e!4199891)))

(declare-fun c!1295868 () Bool)

(assert (=> d!2176488 (= c!1295868 (is-Nil!67046 lt!2485338))))

(assert (=> d!2176488 (= (++!15153 lt!2485338 (exprs!6704 ct2!306)) lt!2485453)))

(assert (= (and d!2176488 c!1295868) b!6987696))

(assert (= (and d!2176488 (not c!1295868)) b!6987697))

(assert (= (and d!2176488 res!2849595) b!6987698))

(assert (= (and b!6987698 res!2849594) b!6987699))

(declare-fun m!7675734 () Bool)

(assert (=> b!6987697 m!7675734))

(declare-fun m!7675736 () Bool)

(assert (=> b!6987698 m!7675736))

(declare-fun m!7675738 () Bool)

(assert (=> b!6987698 m!7675738))

(declare-fun m!7675740 () Bool)

(assert (=> b!6987698 m!7675740))

(declare-fun m!7675742 () Bool)

(assert (=> d!2176488 m!7675742))

(declare-fun m!7675744 () Bool)

(assert (=> d!2176488 m!7675744))

(declare-fun m!7675746 () Bool)

(assert (=> d!2176488 m!7675746))

(assert (=> b!6987601 d!2176488))

(declare-fun d!2176490 () Bool)

(assert (=> d!2176490 (forall!16117 (++!15153 lt!2485338 (exprs!6704 ct2!306)) lambda!400888)))

(declare-fun lt!2485456 () Unit!161071)

(declare-fun choose!52203 (List!67170 List!67170 Int) Unit!161071)

(assert (=> d!2176490 (= lt!2485456 (choose!52203 lt!2485338 (exprs!6704 ct2!306) lambda!400888))))

(assert (=> d!2176490 (forall!16117 lt!2485338 lambda!400888)))

(assert (=> d!2176490 (= (lemmaConcatPreservesForall!544 lt!2485338 (exprs!6704 ct2!306) lambda!400888) lt!2485456)))

(declare-fun bs!1861875 () Bool)

(assert (= bs!1861875 d!2176490))

(assert (=> bs!1861875 m!7675658))

(assert (=> bs!1861875 m!7675658))

(declare-fun m!7675748 () Bool)

(assert (=> bs!1861875 m!7675748))

(declare-fun m!7675750 () Bool)

(assert (=> bs!1861875 m!7675750))

(assert (=> bs!1861875 m!7675586))

(assert (=> b!6987601 d!2176490))

(declare-fun b!6987710 () Bool)

(declare-fun e!4199900 () Bool)

(assert (=> b!6987710 (= e!4199900 (nullable!6968 (h!73494 (exprs!6704 lt!2485323))))))

(declare-fun b!6987711 () Bool)

(declare-fun e!4199901 () (Set Context!12408))

(declare-fun call!634314 () (Set Context!12408))

(assert (=> b!6987711 (= e!4199901 call!634314)))

(declare-fun e!4199899 () (Set Context!12408))

(declare-fun b!6987712 () Bool)

(assert (=> b!6987712 (= e!4199899 (set.union call!634314 (derivationStepZipperUp!1858 (Context!12409 (t!380917 (exprs!6704 lt!2485323))) (h!73493 s!7408))))))

(declare-fun b!6987713 () Bool)

(assert (=> b!6987713 (= e!4199899 e!4199901)))

(declare-fun c!1295874 () Bool)

(assert (=> b!6987713 (= c!1295874 (is-Cons!67046 (exprs!6704 lt!2485323)))))

(declare-fun d!2176492 () Bool)

(declare-fun c!1295873 () Bool)

(assert (=> d!2176492 (= c!1295873 e!4199900)))

(declare-fun res!2849599 () Bool)

(assert (=> d!2176492 (=> (not res!2849599) (not e!4199900))))

(assert (=> d!2176492 (= res!2849599 (is-Cons!67046 (exprs!6704 lt!2485323)))))

(assert (=> d!2176492 (= (derivationStepZipperUp!1858 lt!2485323 (h!73493 s!7408)) e!4199899)))

(declare-fun bm!634309 () Bool)

(assert (=> bm!634309 (= call!634314 (derivationStepZipperDown!1926 (h!73494 (exprs!6704 lt!2485323)) (Context!12409 (t!380917 (exprs!6704 lt!2485323))) (h!73493 s!7408)))))

(declare-fun b!6987714 () Bool)

(assert (=> b!6987714 (= e!4199901 (as set.empty (Set Context!12408)))))

(assert (= (and d!2176492 res!2849599) b!6987710))

(assert (= (and d!2176492 c!1295873) b!6987712))

(assert (= (and d!2176492 (not c!1295873)) b!6987713))

(assert (= (and b!6987713 c!1295874) b!6987711))

(assert (= (and b!6987713 (not c!1295874)) b!6987714))

(assert (= (or b!6987712 b!6987711) bm!634309))

(declare-fun m!7675752 () Bool)

(assert (=> b!6987710 m!7675752))

(declare-fun m!7675754 () Bool)

(assert (=> b!6987712 m!7675754))

(declare-fun m!7675756 () Bool)

(assert (=> bm!634309 m!7675756))

(assert (=> b!6987601 d!2176492))

(declare-fun bm!634322 () Bool)

(declare-fun call!634328 () List!67170)

(declare-fun call!634332 () List!67170)

(assert (=> bm!634322 (= call!634328 call!634332)))

(declare-fun bm!634323 () Bool)

(declare-fun call!634327 () (Set Context!12408))

(declare-fun call!634331 () (Set Context!12408))

(assert (=> bm!634323 (= call!634327 call!634331)))

(declare-fun c!1295889 () Bool)

(declare-fun c!1295888 () Bool)

(declare-fun bm!634324 () Bool)

(declare-fun $colon$colon!2477 (List!67170 Regex!17208) List!67170)

(assert (=> bm!634324 (= call!634332 ($colon$colon!2477 (exprs!6704 lt!2485323) (ite (or c!1295889 c!1295888) (regTwo!34928 (h!73494 (exprs!6704 lt!2485331))) (h!73494 (exprs!6704 lt!2485331)))))))

(declare-fun b!6987737 () Bool)

(declare-fun e!4199917 () (Set Context!12408))

(declare-fun call!634330 () (Set Context!12408))

(assert (=> b!6987737 (= e!4199917 (set.union call!634330 call!634331))))

(declare-fun b!6987738 () Bool)

(declare-fun e!4199918 () Bool)

(assert (=> b!6987738 (= e!4199918 (nullable!6968 (regOne!34928 (h!73494 (exprs!6704 lt!2485331)))))))

(declare-fun b!6987739 () Bool)

(assert (=> b!6987739 (= c!1295889 e!4199918)))

(declare-fun res!2849602 () Bool)

(assert (=> b!6987739 (=> (not res!2849602) (not e!4199918))))

(assert (=> b!6987739 (= res!2849602 (is-Concat!26053 (h!73494 (exprs!6704 lt!2485331))))))

(declare-fun e!4199915 () (Set Context!12408))

(assert (=> b!6987739 (= e!4199915 e!4199917)))

(declare-fun bm!634325 () Bool)

(declare-fun c!1295886 () Bool)

(assert (=> bm!634325 (= call!634330 (derivationStepZipperDown!1926 (ite c!1295886 (regOne!34929 (h!73494 (exprs!6704 lt!2485331))) (regOne!34928 (h!73494 (exprs!6704 lt!2485331)))) (ite c!1295886 lt!2485323 (Context!12409 call!634332)) (h!73493 s!7408)))))

(declare-fun b!6987740 () Bool)

(declare-fun call!634329 () (Set Context!12408))

(assert (=> b!6987740 (= e!4199915 (set.union call!634330 call!634329))))

(declare-fun b!6987742 () Bool)

(declare-fun e!4199919 () (Set Context!12408))

(assert (=> b!6987742 (= e!4199919 e!4199915)))

(assert (=> b!6987742 (= c!1295886 (is-Union!17208 (h!73494 (exprs!6704 lt!2485331))))))

(declare-fun bm!634326 () Bool)

(assert (=> bm!634326 (= call!634329 (derivationStepZipperDown!1926 (ite c!1295886 (regTwo!34929 (h!73494 (exprs!6704 lt!2485331))) (ite c!1295889 (regTwo!34928 (h!73494 (exprs!6704 lt!2485331))) (ite c!1295888 (regOne!34928 (h!73494 (exprs!6704 lt!2485331))) (reg!17537 (h!73494 (exprs!6704 lt!2485331)))))) (ite (or c!1295886 c!1295889) lt!2485323 (Context!12409 call!634328)) (h!73493 s!7408)))))

(declare-fun b!6987743 () Bool)

(declare-fun e!4199914 () (Set Context!12408))

(assert (=> b!6987743 (= e!4199914 (as set.empty (Set Context!12408)))))

(declare-fun b!6987744 () Bool)

(declare-fun c!1295885 () Bool)

(assert (=> b!6987744 (= c!1295885 (is-Star!17208 (h!73494 (exprs!6704 lt!2485331))))))

(declare-fun e!4199916 () (Set Context!12408))

(assert (=> b!6987744 (= e!4199916 e!4199914)))

(declare-fun bm!634327 () Bool)

(assert (=> bm!634327 (= call!634331 call!634329)))

(declare-fun b!6987745 () Bool)

(assert (=> b!6987745 (= e!4199914 call!634327)))

(declare-fun b!6987746 () Bool)

(assert (=> b!6987746 (= e!4199919 (set.insert lt!2485323 (as set.empty (Set Context!12408))))))

(declare-fun b!6987747 () Bool)

(assert (=> b!6987747 (= e!4199917 e!4199916)))

(assert (=> b!6987747 (= c!1295888 (is-Concat!26053 (h!73494 (exprs!6704 lt!2485331))))))

(declare-fun d!2176494 () Bool)

(declare-fun c!1295887 () Bool)

(assert (=> d!2176494 (= c!1295887 (and (is-ElementMatch!17208 (h!73494 (exprs!6704 lt!2485331))) (= (c!1295854 (h!73494 (exprs!6704 lt!2485331))) (h!73493 s!7408))))))

(assert (=> d!2176494 (= (derivationStepZipperDown!1926 (h!73494 (exprs!6704 lt!2485331)) lt!2485323 (h!73493 s!7408)) e!4199919)))

(declare-fun b!6987741 () Bool)

(assert (=> b!6987741 (= e!4199916 call!634327)))

(assert (= (and d!2176494 c!1295887) b!6987746))

(assert (= (and d!2176494 (not c!1295887)) b!6987742))

(assert (= (and b!6987742 c!1295886) b!6987740))

(assert (= (and b!6987742 (not c!1295886)) b!6987739))

(assert (= (and b!6987739 res!2849602) b!6987738))

(assert (= (and b!6987739 c!1295889) b!6987737))

(assert (= (and b!6987739 (not c!1295889)) b!6987747))

(assert (= (and b!6987747 c!1295888) b!6987741))

(assert (= (and b!6987747 (not c!1295888)) b!6987744))

(assert (= (and b!6987744 c!1295885) b!6987745))

(assert (= (and b!6987744 (not c!1295885)) b!6987743))

(assert (= (or b!6987741 b!6987745) bm!634322))

(assert (= (or b!6987741 b!6987745) bm!634323))

(assert (= (or b!6987737 bm!634323) bm!634327))

(assert (= (or b!6987737 bm!634322) bm!634324))

(assert (= (or b!6987740 b!6987737) bm!634325))

(assert (= (or b!6987740 bm!634327) bm!634326))

(declare-fun m!7675758 () Bool)

(assert (=> bm!634324 m!7675758))

(declare-fun m!7675760 () Bool)

(assert (=> bm!634325 m!7675760))

(declare-fun m!7675762 () Bool)

(assert (=> b!6987738 m!7675762))

(declare-fun m!7675764 () Bool)

(assert (=> bm!634326 m!7675764))

(assert (=> b!6987746 m!7675588))

(assert (=> b!6987601 d!2176494))

(declare-fun d!2176496 () Bool)

(declare-fun nullableFct!2629 (Regex!17208) Bool)

(assert (=> d!2176496 (= (nullable!6968 (h!73494 (exprs!6704 lt!2485331))) (nullableFct!2629 (h!73494 (exprs!6704 lt!2485331))))))

(declare-fun bs!1861876 () Bool)

(assert (= bs!1861876 d!2176496))

(declare-fun m!7675766 () Bool)

(assert (=> bs!1861876 m!7675766))

(assert (=> b!6987600 d!2176496))

(declare-fun d!2176498 () Bool)

(assert (=> d!2176498 (= (tail!13209 (exprs!6704 lt!2485331)) (t!380917 (exprs!6704 lt!2485331)))))

(assert (=> b!6987600 d!2176498))

(declare-fun d!2176500 () Bool)

(assert (=> d!2176500 (forall!16117 (++!15153 (exprs!6704 lt!2485331) (exprs!6704 ct2!306)) lambda!400888)))

(declare-fun lt!2485457 () Unit!161071)

(assert (=> d!2176500 (= lt!2485457 (choose!52203 (exprs!6704 lt!2485331) (exprs!6704 ct2!306) lambda!400888))))

(assert (=> d!2176500 (forall!16117 (exprs!6704 lt!2485331) lambda!400888)))

(assert (=> d!2176500 (= (lemmaConcatPreservesForall!544 (exprs!6704 lt!2485331) (exprs!6704 ct2!306) lambda!400888) lt!2485457)))

(declare-fun bs!1861877 () Bool)

(assert (= bs!1861877 d!2176500))

(assert (=> bs!1861877 m!7675644))

(assert (=> bs!1861877 m!7675644))

(declare-fun m!7675768 () Bool)

(assert (=> bs!1861877 m!7675768))

(declare-fun m!7675770 () Bool)

(assert (=> bs!1861877 m!7675770))

(declare-fun m!7675772 () Bool)

(assert (=> bs!1861877 m!7675772))

(assert (=> b!6987611 d!2176500))

(declare-fun d!2176502 () Bool)

(declare-fun c!1295892 () Bool)

(declare-fun isEmpty!39135 (List!67169) Bool)

(assert (=> d!2176502 (= c!1295892 (isEmpty!39135 (t!380916 s!7408)))))

(declare-fun e!4199922 () Bool)

(assert (=> d!2176502 (= (matchZipper!2748 lt!2485334 (t!380916 s!7408)) e!4199922)))

(declare-fun b!6987752 () Bool)

(declare-fun nullableZipper!2428 ((Set Context!12408)) Bool)

(assert (=> b!6987752 (= e!4199922 (nullableZipper!2428 lt!2485334))))

(declare-fun b!6987753 () Bool)

(declare-fun head!14103 (List!67169) C!34686)

(declare-fun tail!13211 (List!67169) List!67169)

(assert (=> b!6987753 (= e!4199922 (matchZipper!2748 (derivationStepZipper!2688 lt!2485334 (head!14103 (t!380916 s!7408))) (tail!13211 (t!380916 s!7408))))))

(assert (= (and d!2176502 c!1295892) b!6987752))

(assert (= (and d!2176502 (not c!1295892)) b!6987753))

(declare-fun m!7675774 () Bool)

(assert (=> d!2176502 m!7675774))

(declare-fun m!7675776 () Bool)

(assert (=> b!6987752 m!7675776))

(declare-fun m!7675778 () Bool)

(assert (=> b!6987753 m!7675778))

(assert (=> b!6987753 m!7675778))

(declare-fun m!7675780 () Bool)

(assert (=> b!6987753 m!7675780))

(declare-fun m!7675782 () Bool)

(assert (=> b!6987753 m!7675782))

(assert (=> b!6987753 m!7675780))

(assert (=> b!6987753 m!7675782))

(declare-fun m!7675784 () Bool)

(assert (=> b!6987753 m!7675784))

(assert (=> b!6987602 d!2176502))

(assert (=> b!6987602 d!2176490))

(declare-fun d!2176504 () Bool)

(declare-fun res!2849607 () Bool)

(declare-fun e!4199927 () Bool)

(assert (=> d!2176504 (=> res!2849607 e!4199927)))

(assert (=> d!2176504 (= res!2849607 (is-Nil!67046 (exprs!6704 ct2!306)))))

(assert (=> d!2176504 (= (forall!16117 (exprs!6704 ct2!306) lambda!400888) e!4199927)))

(declare-fun b!6987758 () Bool)

(declare-fun e!4199928 () Bool)

(assert (=> b!6987758 (= e!4199927 e!4199928)))

(declare-fun res!2849608 () Bool)

(assert (=> b!6987758 (=> (not res!2849608) (not e!4199928))))

(declare-fun dynLambda!26864 (Int Regex!17208) Bool)

(assert (=> b!6987758 (= res!2849608 (dynLambda!26864 lambda!400888 (h!73494 (exprs!6704 ct2!306))))))

(declare-fun b!6987759 () Bool)

(assert (=> b!6987759 (= e!4199928 (forall!16117 (t!380917 (exprs!6704 ct2!306)) lambda!400888))))

(assert (= (and d!2176504 (not res!2849607)) b!6987758))

(assert (= (and b!6987758 res!2849608) b!6987759))

(declare-fun b_lambda!262335 () Bool)

(assert (=> (not b_lambda!262335) (not b!6987758)))

(declare-fun m!7675786 () Bool)

(assert (=> b!6987758 m!7675786))

(declare-fun m!7675788 () Bool)

(assert (=> b!6987759 m!7675788))

(assert (=> b!6987613 d!2176504))

(declare-fun d!2176506 () Bool)

(declare-fun c!1295893 () Bool)

(assert (=> d!2176506 (= c!1295893 (isEmpty!39135 s!7408))))

(declare-fun e!4199929 () Bool)

(assert (=> d!2176506 (= (matchZipper!2748 lt!2485333 s!7408) e!4199929)))

(declare-fun b!6987760 () Bool)

(assert (=> b!6987760 (= e!4199929 (nullableZipper!2428 lt!2485333))))

(declare-fun b!6987761 () Bool)

(assert (=> b!6987761 (= e!4199929 (matchZipper!2748 (derivationStepZipper!2688 lt!2485333 (head!14103 s!7408)) (tail!13211 s!7408)))))

(assert (= (and d!2176506 c!1295893) b!6987760))

(assert (= (and d!2176506 (not c!1295893)) b!6987761))

(declare-fun m!7675790 () Bool)

(assert (=> d!2176506 m!7675790))

(declare-fun m!7675792 () Bool)

(assert (=> b!6987760 m!7675792))

(declare-fun m!7675794 () Bool)

(assert (=> b!6987761 m!7675794))

(assert (=> b!6987761 m!7675794))

(declare-fun m!7675796 () Bool)

(assert (=> b!6987761 m!7675796))

(declare-fun m!7675798 () Bool)

(assert (=> b!6987761 m!7675798))

(assert (=> b!6987761 m!7675796))

(assert (=> b!6987761 m!7675798))

(declare-fun m!7675800 () Bool)

(assert (=> b!6987761 m!7675800))

(assert (=> start!671272 d!2176506))

(declare-fun bs!1861878 () Bool)

(declare-fun d!2176508 () Bool)

(assert (= bs!1861878 (and d!2176508 b!6987615)))

(declare-fun lambda!400936 () Int)

(assert (=> bs!1861878 (= lambda!400936 lambda!400887)))

(assert (=> d!2176508 true))

(declare-fun map!15466 ((Set Context!12408) Int) (Set Context!12408))

(assert (=> d!2176508 (= (appendTo!329 z1!570 ct2!306) (map!15466 z1!570 lambda!400936))))

(declare-fun bs!1861879 () Bool)

(assert (= bs!1861879 d!2176508))

(declare-fun m!7675802 () Bool)

(assert (=> bs!1861879 m!7675802))

(assert (=> start!671272 d!2176508))

(declare-fun bs!1861880 () Bool)

(declare-fun d!2176510 () Bool)

(assert (= bs!1861880 (and d!2176510 b!6987615)))

(declare-fun lambda!400939 () Int)

(assert (=> bs!1861880 (= lambda!400939 lambda!400888)))

(assert (=> d!2176510 (= (inv!85880 ct2!306) (forall!16117 (exprs!6704 ct2!306) lambda!400939))))

(declare-fun bs!1861881 () Bool)

(assert (= bs!1861881 d!2176510))

(declare-fun m!7675804 () Bool)

(assert (=> bs!1861881 m!7675804))

(assert (=> start!671272 d!2176510))

(declare-fun d!2176512 () Bool)

(assert (=> d!2176512 (= (isEmpty!39133 (exprs!6704 lt!2485331)) (is-Nil!67046 (exprs!6704 lt!2485331)))))

(assert (=> b!6987605 d!2176512))

(assert (=> b!6987604 d!2176502))

(declare-fun b!6987763 () Bool)

(declare-fun e!4199930 () List!67170)

(assert (=> b!6987763 (= e!4199930 (Cons!67046 (h!73494 (exprs!6704 lt!2485331)) (++!15153 (t!380917 (exprs!6704 lt!2485331)) (exprs!6704 ct2!306))))))

(declare-fun b!6987762 () Bool)

(assert (=> b!6987762 (= e!4199930 (exprs!6704 ct2!306))))

(declare-fun b!6987764 () Bool)

(declare-fun res!2849609 () Bool)

(declare-fun e!4199931 () Bool)

(assert (=> b!6987764 (=> (not res!2849609) (not e!4199931))))

(declare-fun lt!2485460 () List!67170)

(assert (=> b!6987764 (= res!2849609 (= (size!40898 lt!2485460) (+ (size!40898 (exprs!6704 lt!2485331)) (size!40898 (exprs!6704 ct2!306)))))))

(declare-fun b!6987765 () Bool)

(assert (=> b!6987765 (= e!4199931 (or (not (= (exprs!6704 ct2!306) Nil!67046)) (= lt!2485460 (exprs!6704 lt!2485331))))))

(declare-fun d!2176514 () Bool)

(assert (=> d!2176514 e!4199931))

(declare-fun res!2849610 () Bool)

(assert (=> d!2176514 (=> (not res!2849610) (not e!4199931))))

(assert (=> d!2176514 (= res!2849610 (= (content!13245 lt!2485460) (set.union (content!13245 (exprs!6704 lt!2485331)) (content!13245 (exprs!6704 ct2!306)))))))

(assert (=> d!2176514 (= lt!2485460 e!4199930)))

(declare-fun c!1295895 () Bool)

(assert (=> d!2176514 (= c!1295895 (is-Nil!67046 (exprs!6704 lt!2485331)))))

(assert (=> d!2176514 (= (++!15153 (exprs!6704 lt!2485331) (exprs!6704 ct2!306)) lt!2485460)))

(assert (= (and d!2176514 c!1295895) b!6987762))

(assert (= (and d!2176514 (not c!1295895)) b!6987763))

(assert (= (and d!2176514 res!2849610) b!6987764))

(assert (= (and b!6987764 res!2849609) b!6987765))

(declare-fun m!7675806 () Bool)

(assert (=> b!6987763 m!7675806))

(declare-fun m!7675808 () Bool)

(assert (=> b!6987764 m!7675808))

(declare-fun m!7675810 () Bool)

(assert (=> b!6987764 m!7675810))

(assert (=> b!6987764 m!7675740))

(declare-fun m!7675812 () Bool)

(assert (=> d!2176514 m!7675812))

(declare-fun m!7675814 () Bool)

(assert (=> d!2176514 m!7675814))

(assert (=> d!2176514 m!7675746))

(assert (=> b!6987615 d!2176514))

(assert (=> b!6987615 d!2176500))

(declare-fun d!2176516 () Bool)

(declare-fun e!4199934 () Bool)

(assert (=> d!2176516 e!4199934))

(declare-fun res!2849613 () Bool)

(assert (=> d!2176516 (=> (not res!2849613) (not e!4199934))))

(declare-fun lt!2485463 () Context!12408)

(declare-fun dynLambda!26865 (Int Context!12408) Context!12408)

(assert (=> d!2176516 (= res!2849613 (= lt!2485326 (dynLambda!26865 lambda!400887 lt!2485463)))))

(declare-fun choose!52204 ((Set Context!12408) Int Context!12408) Context!12408)

(assert (=> d!2176516 (= lt!2485463 (choose!52204 z1!570 lambda!400887 lt!2485326))))

(assert (=> d!2176516 (set.member lt!2485326 (map!15466 z1!570 lambda!400887))))

(assert (=> d!2176516 (= (mapPost2!63 z1!570 lambda!400887 lt!2485326) lt!2485463)))

(declare-fun b!6987769 () Bool)

(assert (=> b!6987769 (= e!4199934 (set.member lt!2485463 z1!570))))

(assert (= (and d!2176516 res!2849613) b!6987769))

(declare-fun b_lambda!262337 () Bool)

(assert (=> (not b_lambda!262337) (not d!2176516)))

(declare-fun m!7675816 () Bool)

(assert (=> d!2176516 m!7675816))

(declare-fun m!7675818 () Bool)

(assert (=> d!2176516 m!7675818))

(declare-fun m!7675820 () Bool)

(assert (=> d!2176516 m!7675820))

(declare-fun m!7675822 () Bool)

(assert (=> d!2176516 m!7675822))

(declare-fun m!7675824 () Bool)

(assert (=> b!6987769 m!7675824))

(assert (=> b!6987615 d!2176516))

(declare-fun bs!1861882 () Bool)

(declare-fun d!2176518 () Bool)

(assert (= bs!1861882 (and d!2176518 b!6987615)))

(declare-fun lambda!400940 () Int)

(assert (=> bs!1861882 (= lambda!400940 lambda!400888)))

(declare-fun bs!1861883 () Bool)

(assert (= bs!1861883 (and d!2176518 d!2176510)))

(assert (=> bs!1861883 (= lambda!400940 lambda!400939)))

(assert (=> d!2176518 (= (inv!85880 setElem!47748) (forall!16117 (exprs!6704 setElem!47748) lambda!400940))))

(declare-fun bs!1861884 () Bool)

(assert (= bs!1861884 d!2176518))

(declare-fun m!7675826 () Bool)

(assert (=> bs!1861884 m!7675826))

(assert (=> setNonEmpty!47748 d!2176518))

(assert (=> b!6987598 d!2176502))

(assert (=> b!6987598 d!2176490))

(declare-fun d!2176520 () Bool)

(declare-fun e!4199937 () Bool)

(assert (=> d!2176520 e!4199937))

(declare-fun res!2849616 () Bool)

(assert (=> d!2176520 (=> (not res!2849616) (not e!4199937))))

(declare-fun lt!2485466 () List!67171)

(declare-fun noDuplicate!2516 (List!67171) Bool)

(assert (=> d!2176520 (= res!2849616 (noDuplicate!2516 lt!2485466))))

(declare-fun choose!52205 ((Set Context!12408)) List!67171)

(assert (=> d!2176520 (= lt!2485466 (choose!52205 lt!2485333))))

(assert (=> d!2176520 (= (toList!10568 lt!2485333) lt!2485466)))

(declare-fun b!6987772 () Bool)

(declare-fun content!13246 (List!67171) (Set Context!12408))

(assert (=> b!6987772 (= e!4199937 (= (content!13246 lt!2485466) lt!2485333))))

(assert (= (and d!2176520 res!2849616) b!6987772))

(declare-fun m!7675828 () Bool)

(assert (=> d!2176520 m!7675828))

(declare-fun m!7675830 () Bool)

(assert (=> d!2176520 m!7675830))

(declare-fun m!7675832 () Bool)

(assert (=> b!6987772 m!7675832))

(assert (=> b!6987597 d!2176520))

(declare-fun d!2176522 () Bool)

(declare-fun c!1295896 () Bool)

(assert (=> d!2176522 (= c!1295896 (isEmpty!39135 s!7408))))

(declare-fun e!4199938 () Bool)

(assert (=> d!2176522 (= (matchZipper!2748 lt!2485350 s!7408) e!4199938)))

(declare-fun b!6987773 () Bool)

(assert (=> b!6987773 (= e!4199938 (nullableZipper!2428 lt!2485350))))

(declare-fun b!6987774 () Bool)

(assert (=> b!6987774 (= e!4199938 (matchZipper!2748 (derivationStepZipper!2688 lt!2485350 (head!14103 s!7408)) (tail!13211 s!7408)))))

(assert (= (and d!2176522 c!1295896) b!6987773))

(assert (= (and d!2176522 (not c!1295896)) b!6987774))

(assert (=> d!2176522 m!7675790))

(declare-fun m!7675834 () Bool)

(assert (=> b!6987773 m!7675834))

(assert (=> b!6987774 m!7675794))

(assert (=> b!6987774 m!7675794))

(declare-fun m!7675836 () Bool)

(assert (=> b!6987774 m!7675836))

(assert (=> b!6987774 m!7675798))

(assert (=> b!6987774 m!7675836))

(assert (=> b!6987774 m!7675798))

(declare-fun m!7675838 () Bool)

(assert (=> b!6987774 m!7675838))

(assert (=> b!6987597 d!2176522))

(declare-fun d!2176524 () Bool)

(declare-fun e!4199941 () Bool)

(assert (=> d!2176524 e!4199941))

(declare-fun res!2849619 () Bool)

(assert (=> d!2176524 (=> (not res!2849619) (not e!4199941))))

(declare-fun lt!2485469 () Context!12408)

(declare-fun dynLambda!26866 (Int Context!12408) Bool)

(assert (=> d!2176524 (= res!2849619 (dynLambda!26866 lambda!400886 lt!2485469))))

(declare-fun getWitness!1102 (List!67171 Int) Context!12408)

(assert (=> d!2176524 (= lt!2485469 (getWitness!1102 (toList!10568 lt!2485333) lambda!400886))))

(declare-fun exists!2991 ((Set Context!12408) Int) Bool)

(assert (=> d!2176524 (exists!2991 lt!2485333 lambda!400886)))

(assert (=> d!2176524 (= (getWitness!1100 lt!2485333 lambda!400886) lt!2485469)))

(declare-fun b!6987777 () Bool)

(assert (=> b!6987777 (= e!4199941 (set.member lt!2485469 lt!2485333))))

(assert (= (and d!2176524 res!2849619) b!6987777))

(declare-fun b_lambda!262339 () Bool)

(assert (=> (not b_lambda!262339) (not d!2176524)))

(declare-fun m!7675840 () Bool)

(assert (=> d!2176524 m!7675840))

(assert (=> d!2176524 m!7675622))

(assert (=> d!2176524 m!7675622))

(declare-fun m!7675842 () Bool)

(assert (=> d!2176524 m!7675842))

(declare-fun m!7675844 () Bool)

(assert (=> d!2176524 m!7675844))

(declare-fun m!7675846 () Bool)

(assert (=> b!6987777 m!7675846))

(assert (=> b!6987597 d!2176524))

(declare-fun bs!1861885 () Bool)

(declare-fun d!2176526 () Bool)

(assert (= bs!1861885 (and d!2176526 b!6987597)))

(declare-fun lambda!400943 () Int)

(assert (=> bs!1861885 (= lambda!400943 lambda!400886)))

(assert (=> d!2176526 true))

(assert (=> d!2176526 (exists!2989 lt!2485336 lambda!400943)))

(declare-fun lt!2485472 () Unit!161071)

(declare-fun choose!52206 (List!67171 List!67169) Unit!161071)

(assert (=> d!2176526 (= lt!2485472 (choose!52206 lt!2485336 s!7408))))

(assert (=> d!2176526 (matchZipper!2748 (content!13246 lt!2485336) s!7408)))

(assert (=> d!2176526 (= (lemmaZipperMatchesExistsMatchingContext!177 lt!2485336 s!7408) lt!2485472)))

(declare-fun bs!1861886 () Bool)

(assert (= bs!1861886 d!2176526))

(declare-fun m!7675848 () Bool)

(assert (=> bs!1861886 m!7675848))

(declare-fun m!7675850 () Bool)

(assert (=> bs!1861886 m!7675850))

(declare-fun m!7675852 () Bool)

(assert (=> bs!1861886 m!7675852))

(assert (=> bs!1861886 m!7675852))

(declare-fun m!7675854 () Bool)

(assert (=> bs!1861886 m!7675854))

(assert (=> b!6987597 d!2176526))

(declare-fun bs!1861887 () Bool)

(declare-fun d!2176528 () Bool)

(assert (= bs!1861887 (and d!2176528 b!6987597)))

(declare-fun lambda!400946 () Int)

(assert (=> bs!1861887 (not (= lambda!400946 lambda!400886))))

(declare-fun bs!1861888 () Bool)

(assert (= bs!1861888 (and d!2176528 d!2176526)))

(assert (=> bs!1861888 (not (= lambda!400946 lambda!400943))))

(assert (=> d!2176528 true))

(declare-fun order!27901 () Int)

(declare-fun dynLambda!26867 (Int Int) Int)

(assert (=> d!2176528 (< (dynLambda!26867 order!27901 lambda!400886) (dynLambda!26867 order!27901 lambda!400946))))

(declare-fun forall!16119 (List!67171 Int) Bool)

(assert (=> d!2176528 (= (exists!2989 lt!2485336 lambda!400886) (not (forall!16119 lt!2485336 lambda!400946)))))

(declare-fun bs!1861889 () Bool)

(assert (= bs!1861889 d!2176528))

(declare-fun m!7675856 () Bool)

(assert (=> bs!1861889 m!7675856))

(assert (=> b!6987597 d!2176528))

(declare-fun d!2176530 () Bool)

(declare-fun dynLambda!26868 (Int Context!12408) (Set Context!12408))

(assert (=> d!2176530 (= (flatMap!2194 lt!2485349 lambda!400889) (dynLambda!26868 lambda!400889 lt!2485341))))

(declare-fun lt!2485475 () Unit!161071)

(declare-fun choose!52207 ((Set Context!12408) Context!12408 Int) Unit!161071)

(assert (=> d!2176530 (= lt!2485475 (choose!52207 lt!2485349 lt!2485341 lambda!400889))))

(assert (=> d!2176530 (= lt!2485349 (set.insert lt!2485341 (as set.empty (Set Context!12408))))))

(assert (=> d!2176530 (= (lemmaFlatMapOnSingletonSet!1709 lt!2485349 lt!2485341 lambda!400889) lt!2485475)))

(declare-fun b_lambda!262341 () Bool)

(assert (=> (not b_lambda!262341) (not d!2176530)))

(declare-fun bs!1861890 () Bool)

(assert (= bs!1861890 d!2176530))

(assert (=> bs!1861890 m!7675614))

(declare-fun m!7675858 () Bool)

(assert (=> bs!1861890 m!7675858))

(declare-fun m!7675860 () Bool)

(assert (=> bs!1861890 m!7675860))

(assert (=> bs!1861890 m!7675606))

(assert (=> b!6987609 d!2176530))

(declare-fun bs!1861891 () Bool)

(declare-fun d!2176532 () Bool)

(assert (= bs!1861891 (and d!2176532 b!6987609)))

(declare-fun lambda!400949 () Int)

(assert (=> bs!1861891 (= lambda!400949 lambda!400889)))

(assert (=> d!2176532 true))

(assert (=> d!2176532 (= (derivationStepZipper!2688 lt!2485349 (h!73493 s!7408)) (flatMap!2194 lt!2485349 lambda!400949))))

(declare-fun bs!1861892 () Bool)

(assert (= bs!1861892 d!2176532))

(declare-fun m!7675862 () Bool)

(assert (=> bs!1861892 m!7675862))

(assert (=> b!6987609 d!2176532))

(declare-fun b!6987782 () Bool)

(declare-fun e!4199943 () Bool)

(assert (=> b!6987782 (= e!4199943 (nullable!6968 (h!73494 (exprs!6704 lt!2485341))))))

(declare-fun b!6987783 () Bool)

(declare-fun e!4199944 () (Set Context!12408))

(declare-fun call!634333 () (Set Context!12408))

(assert (=> b!6987783 (= e!4199944 call!634333)))

(declare-fun e!4199942 () (Set Context!12408))

(declare-fun b!6987784 () Bool)

(assert (=> b!6987784 (= e!4199942 (set.union call!634333 (derivationStepZipperUp!1858 (Context!12409 (t!380917 (exprs!6704 lt!2485341))) (h!73493 s!7408))))))

(declare-fun b!6987785 () Bool)

(assert (=> b!6987785 (= e!4199942 e!4199944)))

(declare-fun c!1295902 () Bool)

(assert (=> b!6987785 (= c!1295902 (is-Cons!67046 (exprs!6704 lt!2485341)))))

(declare-fun d!2176534 () Bool)

(declare-fun c!1295901 () Bool)

(assert (=> d!2176534 (= c!1295901 e!4199943)))

(declare-fun res!2849620 () Bool)

(assert (=> d!2176534 (=> (not res!2849620) (not e!4199943))))

(assert (=> d!2176534 (= res!2849620 (is-Cons!67046 (exprs!6704 lt!2485341)))))

(assert (=> d!2176534 (= (derivationStepZipperUp!1858 lt!2485341 (h!73493 s!7408)) e!4199942)))

(declare-fun bm!634328 () Bool)

(assert (=> bm!634328 (= call!634333 (derivationStepZipperDown!1926 (h!73494 (exprs!6704 lt!2485341)) (Context!12409 (t!380917 (exprs!6704 lt!2485341))) (h!73493 s!7408)))))

(declare-fun b!6987786 () Bool)

(assert (=> b!6987786 (= e!4199944 (as set.empty (Set Context!12408)))))

(assert (= (and d!2176534 res!2849620) b!6987782))

(assert (= (and d!2176534 c!1295901) b!6987784))

(assert (= (and d!2176534 (not c!1295901)) b!6987785))

(assert (= (and b!6987785 c!1295902) b!6987783))

(assert (= (and b!6987785 (not c!1295902)) b!6987786))

(assert (= (or b!6987784 b!6987783) bm!634328))

(declare-fun m!7675864 () Bool)

(assert (=> b!6987782 m!7675864))

(declare-fun m!7675866 () Bool)

(assert (=> b!6987784 m!7675866))

(declare-fun m!7675868 () Bool)

(assert (=> bm!634328 m!7675868))

(assert (=> b!6987609 d!2176534))

(declare-fun d!2176536 () Bool)

(declare-fun choose!52208 ((Set Context!12408) Int) (Set Context!12408))

(assert (=> d!2176536 (= (flatMap!2194 lt!2485349 lambda!400889) (choose!52208 lt!2485349 lambda!400889))))

(declare-fun bs!1861893 () Bool)

(assert (= bs!1861893 d!2176536))

(declare-fun m!7675870 () Bool)

(assert (=> bs!1861893 m!7675870))

(assert (=> b!6987609 d!2176536))

(assert (=> b!6987609 d!2176500))

(declare-fun d!2176538 () Bool)

(declare-fun c!1295903 () Bool)

(assert (=> d!2176538 (= c!1295903 (isEmpty!39135 (t!380916 s!7408)))))

(declare-fun e!4199945 () Bool)

(assert (=> d!2176538 (= (matchZipper!2748 lt!2485328 (t!380916 s!7408)) e!4199945)))

(declare-fun b!6987787 () Bool)

(assert (=> b!6987787 (= e!4199945 (nullableZipper!2428 lt!2485328))))

(declare-fun b!6987788 () Bool)

(assert (=> b!6987788 (= e!4199945 (matchZipper!2748 (derivationStepZipper!2688 lt!2485328 (head!14103 (t!380916 s!7408))) (tail!13211 (t!380916 s!7408))))))

(assert (= (and d!2176538 c!1295903) b!6987787))

(assert (= (and d!2176538 (not c!1295903)) b!6987788))

(assert (=> d!2176538 m!7675774))

(declare-fun m!7675872 () Bool)

(assert (=> b!6987787 m!7675872))

(assert (=> b!6987788 m!7675778))

(assert (=> b!6987788 m!7675778))

(declare-fun m!7675874 () Bool)

(assert (=> b!6987788 m!7675874))

(assert (=> b!6987788 m!7675782))

(assert (=> b!6987788 m!7675874))

(assert (=> b!6987788 m!7675782))

(declare-fun m!7675876 () Bool)

(assert (=> b!6987788 m!7675876))

(assert (=> b!6987608 d!2176538))

(declare-fun d!2176540 () Bool)

(declare-fun c!1295904 () Bool)

(assert (=> d!2176540 (= c!1295904 (isEmpty!39135 (t!380916 s!7408)))))

(declare-fun e!4199946 () Bool)

(assert (=> d!2176540 (= (matchZipper!2748 lt!2485351 (t!380916 s!7408)) e!4199946)))

(declare-fun b!6987789 () Bool)

(assert (=> b!6987789 (= e!4199946 (nullableZipper!2428 lt!2485351))))

(declare-fun b!6987790 () Bool)

(assert (=> b!6987790 (= e!4199946 (matchZipper!2748 (derivationStepZipper!2688 lt!2485351 (head!14103 (t!380916 s!7408))) (tail!13211 (t!380916 s!7408))))))

(assert (= (and d!2176540 c!1295904) b!6987789))

(assert (= (and d!2176540 (not c!1295904)) b!6987790))

(assert (=> d!2176540 m!7675774))

(declare-fun m!7675878 () Bool)

(assert (=> b!6987789 m!7675878))

(assert (=> b!6987790 m!7675778))

(assert (=> b!6987790 m!7675778))

(declare-fun m!7675880 () Bool)

(assert (=> b!6987790 m!7675880))

(assert (=> b!6987790 m!7675782))

(assert (=> b!6987790 m!7675880))

(assert (=> b!6987790 m!7675782))

(declare-fun m!7675882 () Bool)

(assert (=> b!6987790 m!7675882))

(assert (=> b!6987608 d!2176540))

(declare-fun d!2176542 () Bool)

(declare-fun c!1295905 () Bool)

(assert (=> d!2176542 (= c!1295905 (isEmpty!39135 (t!380916 s!7408)))))

(declare-fun e!4199947 () Bool)

(assert (=> d!2176542 (= (matchZipper!2748 lt!2485348 (t!380916 s!7408)) e!4199947)))

(declare-fun b!6987791 () Bool)

(assert (=> b!6987791 (= e!4199947 (nullableZipper!2428 lt!2485348))))

(declare-fun b!6987792 () Bool)

(assert (=> b!6987792 (= e!4199947 (matchZipper!2748 (derivationStepZipper!2688 lt!2485348 (head!14103 (t!380916 s!7408))) (tail!13211 (t!380916 s!7408))))))

(assert (= (and d!2176542 c!1295905) b!6987791))

(assert (= (and d!2176542 (not c!1295905)) b!6987792))

(assert (=> d!2176542 m!7675774))

(declare-fun m!7675884 () Bool)

(assert (=> b!6987791 m!7675884))

(assert (=> b!6987792 m!7675778))

(assert (=> b!6987792 m!7675778))

(declare-fun m!7675886 () Bool)

(assert (=> b!6987792 m!7675886))

(assert (=> b!6987792 m!7675782))

(assert (=> b!6987792 m!7675886))

(assert (=> b!6987792 m!7675782))

(declare-fun m!7675888 () Bool)

(assert (=> b!6987792 m!7675888))

(assert (=> b!6987608 d!2176542))

(declare-fun e!4199950 () Bool)

(declare-fun d!2176544 () Bool)

(assert (=> d!2176544 (= (matchZipper!2748 (set.union lt!2485348 lt!2485334) (t!380916 s!7408)) e!4199950)))

(declare-fun res!2849623 () Bool)

(assert (=> d!2176544 (=> res!2849623 e!4199950)))

(assert (=> d!2176544 (= res!2849623 (matchZipper!2748 lt!2485348 (t!380916 s!7408)))))

(declare-fun lt!2485478 () Unit!161071)

(declare-fun choose!52209 ((Set Context!12408) (Set Context!12408) List!67169) Unit!161071)

(assert (=> d!2176544 (= lt!2485478 (choose!52209 lt!2485348 lt!2485334 (t!380916 s!7408)))))

(assert (=> d!2176544 (= (lemmaZipperConcatMatchesSameAsBothZippers!1381 lt!2485348 lt!2485334 (t!380916 s!7408)) lt!2485478)))

(declare-fun b!6987795 () Bool)

(assert (=> b!6987795 (= e!4199950 (matchZipper!2748 lt!2485334 (t!380916 s!7408)))))

(assert (= (and d!2176544 (not res!2849623)) b!6987795))

(declare-fun m!7675890 () Bool)

(assert (=> d!2176544 m!7675890))

(assert (=> d!2176544 m!7675650))

(declare-fun m!7675892 () Bool)

(assert (=> d!2176544 m!7675892))

(assert (=> b!6987795 m!7675620))

(assert (=> b!6987608 d!2176544))

(assert (=> b!6987608 d!2176490))

(declare-fun d!2176546 () Bool)

(assert (=> d!2176546 (= (flatMap!2194 lt!2485330 lambda!400889) (choose!52208 lt!2485330 lambda!400889))))

(declare-fun bs!1861894 () Bool)

(assert (= bs!1861894 d!2176546))

(declare-fun m!7675894 () Bool)

(assert (=> bs!1861894 m!7675894))

(assert (=> b!6987599 d!2176546))

(declare-fun d!2176548 () Bool)

(assert (=> d!2176548 (= (flatMap!2194 lt!2485330 lambda!400889) (dynLambda!26868 lambda!400889 lt!2485323))))

(declare-fun lt!2485479 () Unit!161071)

(assert (=> d!2176548 (= lt!2485479 (choose!52207 lt!2485330 lt!2485323 lambda!400889))))

(assert (=> d!2176548 (= lt!2485330 (set.insert lt!2485323 (as set.empty (Set Context!12408))))))

(assert (=> d!2176548 (= (lemmaFlatMapOnSingletonSet!1709 lt!2485330 lt!2485323 lambda!400889) lt!2485479)))

(declare-fun b_lambda!262343 () Bool)

(assert (=> (not b_lambda!262343) (not d!2176548)))

(declare-fun bs!1861895 () Bool)

(assert (= bs!1861895 d!2176548))

(assert (=> bs!1861895 m!7675592))

(declare-fun m!7675896 () Bool)

(assert (=> bs!1861895 m!7675896))

(declare-fun m!7675898 () Bool)

(assert (=> bs!1861895 m!7675898))

(assert (=> bs!1861895 m!7675588))

(assert (=> b!6987599 d!2176548))

(declare-fun d!2176550 () Bool)

(declare-fun res!2849624 () Bool)

(declare-fun e!4199951 () Bool)

(assert (=> d!2176550 (=> res!2849624 e!4199951)))

(assert (=> d!2176550 (= res!2849624 (is-Nil!67046 lt!2485338))))

(assert (=> d!2176550 (= (forall!16117 lt!2485338 lambda!400888) e!4199951)))

(declare-fun b!6987796 () Bool)

(declare-fun e!4199952 () Bool)

(assert (=> b!6987796 (= e!4199951 e!4199952)))

(declare-fun res!2849625 () Bool)

(assert (=> b!6987796 (=> (not res!2849625) (not e!4199952))))

(assert (=> b!6987796 (= res!2849625 (dynLambda!26864 lambda!400888 (h!73494 lt!2485338)))))

(declare-fun b!6987797 () Bool)

(assert (=> b!6987797 (= e!4199952 (forall!16117 (t!380917 lt!2485338) lambda!400888))))

(assert (= (and d!2176550 (not res!2849624)) b!6987796))

(assert (= (and b!6987796 res!2849625) b!6987797))

(declare-fun b_lambda!262345 () Bool)

(assert (=> (not b_lambda!262345) (not b!6987796)))

(declare-fun m!7675900 () Bool)

(assert (=> b!6987796 m!7675900))

(declare-fun m!7675902 () Bool)

(assert (=> b!6987797 m!7675902))

(assert (=> b!6987599 d!2176550))

(assert (=> b!6987599 d!2176492))

(assert (=> b!6987599 d!2176490))

(declare-fun b!6987802 () Bool)

(declare-fun e!4199955 () Bool)

(declare-fun tp!1929407 () Bool)

(declare-fun tp!1929408 () Bool)

(assert (=> b!6987802 (= e!4199955 (and tp!1929407 tp!1929408))))

(assert (=> b!6987606 (= tp!1929390 e!4199955)))

(assert (= (and b!6987606 (is-Cons!67046 (exprs!6704 ct2!306))) b!6987802))

(declare-fun condSetEmpty!47754 () Bool)

(assert (=> setNonEmpty!47748 (= condSetEmpty!47754 (= setRest!47748 (as set.empty (Set Context!12408))))))

(declare-fun setRes!47754 () Bool)

(assert (=> setNonEmpty!47748 (= tp!1929388 setRes!47754)))

(declare-fun setIsEmpty!47754 () Bool)

(assert (=> setIsEmpty!47754 setRes!47754))

(declare-fun tp!1929414 () Bool)

(declare-fun e!4199958 () Bool)

(declare-fun setElem!47754 () Context!12408)

(declare-fun setNonEmpty!47754 () Bool)

(assert (=> setNonEmpty!47754 (= setRes!47754 (and tp!1929414 (inv!85880 setElem!47754) e!4199958))))

(declare-fun setRest!47754 () (Set Context!12408))

(assert (=> setNonEmpty!47754 (= setRest!47748 (set.union (set.insert setElem!47754 (as set.empty (Set Context!12408))) setRest!47754))))

(declare-fun b!6987807 () Bool)

(declare-fun tp!1929413 () Bool)

(assert (=> b!6987807 (= e!4199958 tp!1929413)))

(assert (= (and setNonEmpty!47748 condSetEmpty!47754) setIsEmpty!47754))

(assert (= (and setNonEmpty!47748 (not condSetEmpty!47754)) setNonEmpty!47754))

(assert (= setNonEmpty!47754 b!6987807))

(declare-fun m!7675904 () Bool)

(assert (=> setNonEmpty!47754 m!7675904))

(declare-fun b!6987812 () Bool)

(declare-fun e!4199961 () Bool)

(declare-fun tp!1929417 () Bool)

(assert (=> b!6987812 (= e!4199961 (and tp_is_empty!43641 tp!1929417))))

(assert (=> b!6987612 (= tp!1929387 e!4199961)))

(assert (= (and b!6987612 (is-Cons!67045 (t!380916 s!7408))) b!6987812))

(declare-fun b!6987813 () Bool)

(declare-fun e!4199962 () Bool)

(declare-fun tp!1929418 () Bool)

(declare-fun tp!1929419 () Bool)

(assert (=> b!6987813 (= e!4199962 (and tp!1929418 tp!1929419))))

(assert (=> b!6987614 (= tp!1929389 e!4199962)))

(assert (= (and b!6987614 (is-Cons!67046 (exprs!6704 setElem!47748))) b!6987813))

(declare-fun b_lambda!262347 () Bool)

(assert (= b_lambda!262335 (or b!6987615 b_lambda!262347)))

(declare-fun bs!1861896 () Bool)

(declare-fun d!2176552 () Bool)

(assert (= bs!1861896 (and d!2176552 b!6987615)))

(declare-fun validRegex!8855 (Regex!17208) Bool)

(assert (=> bs!1861896 (= (dynLambda!26864 lambda!400888 (h!73494 (exprs!6704 ct2!306))) (validRegex!8855 (h!73494 (exprs!6704 ct2!306))))))

(declare-fun m!7675906 () Bool)

(assert (=> bs!1861896 m!7675906))

(assert (=> b!6987758 d!2176552))

(declare-fun b_lambda!262349 () Bool)

(assert (= b_lambda!262337 (or b!6987615 b_lambda!262349)))

(declare-fun bs!1861897 () Bool)

(declare-fun d!2176554 () Bool)

(assert (= bs!1861897 (and d!2176554 b!6987615)))

(declare-fun lt!2485480 () Unit!161071)

(assert (=> bs!1861897 (= lt!2485480 (lemmaConcatPreservesForall!544 (exprs!6704 lt!2485463) (exprs!6704 ct2!306) lambda!400888))))

(assert (=> bs!1861897 (= (dynLambda!26865 lambda!400887 lt!2485463) (Context!12409 (++!15153 (exprs!6704 lt!2485463) (exprs!6704 ct2!306))))))

(declare-fun m!7675908 () Bool)

(assert (=> bs!1861897 m!7675908))

(declare-fun m!7675910 () Bool)

(assert (=> bs!1861897 m!7675910))

(assert (=> d!2176516 d!2176554))

(declare-fun b_lambda!262351 () Bool)

(assert (= b_lambda!262345 (or b!6987615 b_lambda!262351)))

(declare-fun bs!1861898 () Bool)

(declare-fun d!2176558 () Bool)

(assert (= bs!1861898 (and d!2176558 b!6987615)))

(assert (=> bs!1861898 (= (dynLambda!26864 lambda!400888 (h!73494 lt!2485338)) (validRegex!8855 (h!73494 lt!2485338)))))

(declare-fun m!7675912 () Bool)

(assert (=> bs!1861898 m!7675912))

(assert (=> b!6987796 d!2176558))

(declare-fun b_lambda!262353 () Bool)

(assert (= b_lambda!262341 (or b!6987609 b_lambda!262353)))

(declare-fun bs!1861899 () Bool)

(declare-fun d!2176560 () Bool)

(assert (= bs!1861899 (and d!2176560 b!6987609)))

(assert (=> bs!1861899 (= (dynLambda!26868 lambda!400889 lt!2485341) (derivationStepZipperUp!1858 lt!2485341 (h!73493 s!7408)))))

(assert (=> bs!1861899 m!7675610))

(assert (=> d!2176530 d!2176560))

(declare-fun b_lambda!262355 () Bool)

(assert (= b_lambda!262339 (or b!6987597 b_lambda!262355)))

(declare-fun bs!1861900 () Bool)

(declare-fun d!2176562 () Bool)

(assert (= bs!1861900 (and d!2176562 b!6987597)))

(assert (=> bs!1861900 (= (dynLambda!26866 lambda!400886 lt!2485469) (matchZipper!2748 (set.insert lt!2485469 (as set.empty (Set Context!12408))) s!7408))))

(declare-fun m!7675914 () Bool)

(assert (=> bs!1861900 m!7675914))

(assert (=> bs!1861900 m!7675914))

(declare-fun m!7675916 () Bool)

(assert (=> bs!1861900 m!7675916))

(assert (=> d!2176524 d!2176562))

(declare-fun b_lambda!262357 () Bool)

(assert (= b_lambda!262343 (or b!6987609 b_lambda!262357)))

(declare-fun bs!1861901 () Bool)

(declare-fun d!2176564 () Bool)

(assert (= bs!1861901 (and d!2176564 b!6987609)))

(assert (=> bs!1861901 (= (dynLambda!26868 lambda!400889 lt!2485323) (derivationStepZipperUp!1858 lt!2485323 (h!73493 s!7408)))))

(assert (=> bs!1861901 m!7675596))

(assert (=> d!2176548 d!2176564))

(push 1)

(assert (not d!2176532))

(assert (not b_lambda!262347))

(assert (not bm!634325))

(assert (not bm!634309))

(assert (not b!6987772))

(assert (not b!6987773))

(assert (not d!2176544))

(assert (not d!2176528))

(assert tp_is_empty!43641)

(assert (not b!6987787))

(assert (not d!2176520))

(assert (not b!6987790))

(assert (not bs!1861897))

(assert (not b!6987797))

(assert (not b!6987738))

(assert (not b!6987812))

(assert (not bm!634324))

(assert (not b!6987782))

(assert (not b!6987802))

(assert (not b!6987760))

(assert (not b_lambda!262349))

(assert (not b!6987752))

(assert (not b_lambda!262353))

(assert (not setNonEmpty!47754))

(assert (not d!2176506))

(assert (not d!2176526))

(assert (not b!6987759))

(assert (not b!6987710))

(assert (not b!6987788))

(assert (not b!6987698))

(assert (not bs!1861899))

(assert (not b!6987807))

(assert (not b!6987753))

(assert (not d!2176542))

(assert (not d!2176546))

(assert (not b!6987795))

(assert (not d!2176538))

(assert (not d!2176524))

(assert (not d!2176496))

(assert (not d!2176500))

(assert (not b!6987697))

(assert (not b_lambda!262357))

(assert (not b!6987791))

(assert (not d!2176518))

(assert (not bs!1861901))

(assert (not b_lambda!262351))

(assert (not b!6987792))

(assert (not b!6987813))

(assert (not d!2176502))

(assert (not b!6987712))

(assert (not d!2176540))

(assert (not d!2176488))

(assert (not bm!634326))

(assert (not d!2176510))

(assert (not b!6987761))

(assert (not b!6987774))

(assert (not b!6987764))

(assert (not d!2176548))

(assert (not b!6987763))

(assert (not bs!1861896))

(assert (not d!2176516))

(assert (not bs!1861898))

(assert (not d!2176508))

(assert (not d!2176536))

(assert (not d!2176514))

(assert (not d!2176522))

(assert (not bs!1861900))

(assert (not b_lambda!262355))

(assert (not d!2176490))

(assert (not b!6987784))

(assert (not b!6987789))

(assert (not bm!634328))

(assert (not d!2176530))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

