; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!670254 () Bool)

(assert start!670254)

(declare-fun b!6982751 () Bool)

(assert (=> b!6982751 true))

(declare-fun b!6982754 () Bool)

(assert (=> b!6982754 true))

(declare-fun b!6982748 () Bool)

(assert (=> b!6982748 true))

(declare-fun b!6982743 () Bool)

(declare-fun e!4196778 () Bool)

(declare-datatypes ((C!34634 0))(
  ( (C!34635 (val!27019 Int)) )
))
(declare-datatypes ((Regex!17182 0))(
  ( (ElementMatch!17182 (c!1294585 C!34634)) (Concat!26027 (regOne!34876 Regex!17182) (regTwo!34876 Regex!17182)) (EmptyExpr!17182) (Star!17182 (reg!17511 Regex!17182)) (EmptyLang!17182) (Union!17182 (regOne!34877 Regex!17182) (regTwo!34877 Regex!17182)) )
))
(declare-datatypes ((List!67091 0))(
  ( (Nil!66967) (Cons!66967 (h!73415 Regex!17182) (t!380836 List!67091)) )
))
(declare-datatypes ((Context!12356 0))(
  ( (Context!12357 (exprs!6678 List!67091)) )
))
(declare-fun lt!2482476 () (Set Context!12356))

(declare-datatypes ((List!67092 0))(
  ( (Nil!66968) (Cons!66968 (h!73416 C!34634) (t!380837 List!67092)) )
))
(declare-fun s!7408 () List!67092)

(declare-fun matchZipper!2722 ((Set Context!12356) List!67092) Bool)

(assert (=> b!6982743 (= e!4196778 (matchZipper!2722 lt!2482476 (t!380837 s!7408)))))

(declare-fun b!6982744 () Bool)

(declare-fun e!4196774 () Bool)

(declare-fun e!4196782 () Bool)

(assert (=> b!6982744 (= e!4196774 e!4196782)))

(declare-fun res!2847414 () Bool)

(assert (=> b!6982744 (=> res!2847414 e!4196782)))

(declare-fun lt!2482482 () (Set Context!12356))

(declare-fun lt!2482475 () (Set Context!12356))

(assert (=> b!6982744 (= res!2847414 (not (= lt!2482482 lt!2482475)))))

(declare-fun lt!2482478 () (Set Context!12356))

(assert (=> b!6982744 (= lt!2482475 (set.union lt!2482478 lt!2482476))))

(declare-fun lt!2482488 () Context!12356)

(declare-fun derivationStepZipperUp!1832 (Context!12356 C!34634) (Set Context!12356))

(assert (=> b!6982744 (= lt!2482476 (derivationStepZipperUp!1832 lt!2482488 (h!73416 s!7408)))))

(declare-fun lt!2482491 () Context!12356)

(declare-fun derivationStepZipperDown!1900 (Regex!17182 Context!12356 C!34634) (Set Context!12356))

(assert (=> b!6982744 (= lt!2482478 (derivationStepZipperDown!1900 (h!73415 (exprs!6678 lt!2482491)) lt!2482488 (h!73416 s!7408)))))

(declare-fun lt!2482486 () List!67091)

(declare-fun ct2!306 () Context!12356)

(declare-fun ++!15127 (List!67091 List!67091) List!67091)

(assert (=> b!6982744 (= lt!2482488 (Context!12357 (++!15127 lt!2482486 (exprs!6678 ct2!306))))))

(declare-fun lambda!399550 () Int)

(declare-datatypes ((Unit!161018 0))(
  ( (Unit!161019) )
))
(declare-fun lt!2482489 () Unit!161018)

(declare-fun lemmaConcatPreservesForall!518 (List!67091 List!67091 Int) Unit!161018)

(assert (=> b!6982744 (= lt!2482489 (lemmaConcatPreservesForall!518 lt!2482486 (exprs!6678 ct2!306) lambda!399550))))

(declare-fun lt!2482480 () Unit!161018)

(assert (=> b!6982744 (= lt!2482480 (lemmaConcatPreservesForall!518 lt!2482486 (exprs!6678 ct2!306) lambda!399550))))

(declare-fun res!2847411 () Bool)

(declare-fun e!4196780 () Bool)

(assert (=> start!670254 (=> (not res!2847411) (not e!4196780))))

(declare-fun lt!2482474 () (Set Context!12356))

(assert (=> start!670254 (= res!2847411 (matchZipper!2722 lt!2482474 s!7408))))

(declare-fun z1!570 () (Set Context!12356))

(declare-fun appendTo!303 ((Set Context!12356) Context!12356) (Set Context!12356))

(assert (=> start!670254 (= lt!2482474 (appendTo!303 z1!570 ct2!306))))

(assert (=> start!670254 e!4196780))

(declare-fun condSetEmpty!47590 () Bool)

(assert (=> start!670254 (= condSetEmpty!47590 (= z1!570 (as set.empty (Set Context!12356))))))

(declare-fun setRes!47590 () Bool)

(assert (=> start!670254 setRes!47590))

(declare-fun e!4196784 () Bool)

(declare-fun inv!85815 (Context!12356) Bool)

(assert (=> start!670254 (and (inv!85815 ct2!306) e!4196784)))

(declare-fun e!4196777 () Bool)

(assert (=> start!670254 e!4196777))

(declare-fun b!6982745 () Bool)

(declare-fun tp_is_empty!43589 () Bool)

(declare-fun tp!1928581 () Bool)

(assert (=> b!6982745 (= e!4196777 (and tp_is_empty!43589 tp!1928581))))

(declare-fun b!6982746 () Bool)

(declare-fun e!4196776 () Bool)

(declare-fun e!4196783 () Bool)

(assert (=> b!6982746 (= e!4196776 e!4196783)))

(declare-fun res!2847405 () Bool)

(assert (=> b!6982746 (=> res!2847405 e!4196783)))

(declare-fun lt!2482493 () (Set Context!12356))

(declare-fun lt!2482473 () (Set Context!12356))

(assert (=> b!6982746 (= res!2847405 (not (= lt!2482493 lt!2482473)))))

(declare-fun lt!2482487 () Context!12356)

(assert (=> b!6982746 (= lt!2482493 (set.insert lt!2482487 (as set.empty (Set Context!12356))))))

(declare-fun lt!2482494 () Unit!161018)

(assert (=> b!6982746 (= lt!2482494 (lemmaConcatPreservesForall!518 (exprs!6678 lt!2482491) (exprs!6678 ct2!306) lambda!399550))))

(declare-fun b!6982747 () Bool)

(declare-fun res!2847410 () Bool)

(assert (=> b!6982747 (=> (not res!2847410) (not e!4196780))))

(assert (=> b!6982747 (= res!2847410 (is-Cons!66968 s!7408))))

(declare-fun e!4196775 () Bool)

(assert (=> b!6982748 (= e!4196783 e!4196775)))

(declare-fun res!2847406 () Bool)

(assert (=> b!6982748 (=> res!2847406 e!4196775)))

(declare-fun derivationStepZipper!2662 ((Set Context!12356) C!34634) (Set Context!12356))

(assert (=> b!6982748 (= res!2847406 (not (= (derivationStepZipper!2662 lt!2482493 (h!73416 s!7408)) lt!2482482)))))

(declare-fun lambda!399551 () Int)

(declare-fun flatMap!2168 ((Set Context!12356) Int) (Set Context!12356))

(assert (=> b!6982748 (= (flatMap!2168 lt!2482493 lambda!399551) (derivationStepZipperUp!1832 lt!2482487 (h!73416 s!7408)))))

(declare-fun lt!2482484 () Unit!161018)

(declare-fun lemmaFlatMapOnSingletonSet!1683 ((Set Context!12356) Context!12356 Int) Unit!161018)

(assert (=> b!6982748 (= lt!2482484 (lemmaFlatMapOnSingletonSet!1683 lt!2482493 lt!2482487 lambda!399551))))

(assert (=> b!6982748 (= lt!2482482 (derivationStepZipperUp!1832 lt!2482487 (h!73416 s!7408)))))

(declare-fun lt!2482481 () Unit!161018)

(assert (=> b!6982748 (= lt!2482481 (lemmaConcatPreservesForall!518 (exprs!6678 lt!2482491) (exprs!6678 ct2!306) lambda!399550))))

(declare-fun b!6982749 () Bool)

(declare-fun e!4196779 () Bool)

(declare-fun tp!1928582 () Bool)

(assert (=> b!6982749 (= e!4196779 tp!1928582)))

(declare-fun b!6982750 () Bool)

(declare-fun tp!1928580 () Bool)

(assert (=> b!6982750 (= e!4196784 tp!1928580)))

(declare-fun e!4196781 () Bool)

(assert (=> b!6982751 (= e!4196780 (not e!4196781))))

(declare-fun res!2847413 () Bool)

(assert (=> b!6982751 (=> res!2847413 e!4196781)))

(assert (=> b!6982751 (= res!2847413 (not (matchZipper!2722 lt!2482473 s!7408)))))

(declare-fun lt!2482472 () Context!12356)

(assert (=> b!6982751 (= lt!2482473 (set.insert lt!2482472 (as set.empty (Set Context!12356))))))

(declare-fun lambda!399548 () Int)

(declare-fun getWitness!1059 ((Set Context!12356) Int) Context!12356)

(assert (=> b!6982751 (= lt!2482472 (getWitness!1059 lt!2482474 lambda!399548))))

(declare-datatypes ((List!67093 0))(
  ( (Nil!66969) (Cons!66969 (h!73417 Context!12356) (t!380838 List!67093)) )
))
(declare-fun lt!2482490 () List!67093)

(declare-fun exists!2948 (List!67093 Int) Bool)

(assert (=> b!6982751 (exists!2948 lt!2482490 lambda!399548)))

(declare-fun lt!2482492 () Unit!161018)

(declare-fun lemmaZipperMatchesExistsMatchingContext!151 (List!67093 List!67092) Unit!161018)

(assert (=> b!6982751 (= lt!2482492 (lemmaZipperMatchesExistsMatchingContext!151 lt!2482490 s!7408))))

(declare-fun toList!10542 ((Set Context!12356)) List!67093)

(assert (=> b!6982751 (= lt!2482490 (toList!10542 lt!2482474))))

(declare-fun setNonEmpty!47590 () Bool)

(declare-fun setElem!47590 () Context!12356)

(declare-fun tp!1928579 () Bool)

(assert (=> setNonEmpty!47590 (= setRes!47590 (and tp!1928579 (inv!85815 setElem!47590) e!4196779))))

(declare-fun setRest!47590 () (Set Context!12356))

(assert (=> setNonEmpty!47590 (= z1!570 (set.union (set.insert setElem!47590 (as set.empty (Set Context!12356))) setRest!47590))))

(declare-fun b!6982752 () Bool)

(declare-fun forall!16078 (List!67091 Int) Bool)

(assert (=> b!6982752 (= e!4196782 (forall!16078 lt!2482486 lambda!399550))))

(assert (=> b!6982752 (= (matchZipper!2722 lt!2482475 (t!380837 s!7408)) e!4196778)))

(declare-fun res!2847409 () Bool)

(assert (=> b!6982752 (=> res!2847409 e!4196778)))

(assert (=> b!6982752 (= res!2847409 (matchZipper!2722 lt!2482478 (t!380837 s!7408)))))

(declare-fun lt!2482483 () Unit!161018)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1355 ((Set Context!12356) (Set Context!12356) List!67092) Unit!161018)

(assert (=> b!6982752 (= lt!2482483 (lemmaZipperConcatMatchesSameAsBothZippers!1355 lt!2482478 lt!2482476 (t!380837 s!7408)))))

(declare-fun lt!2482477 () Unit!161018)

(assert (=> b!6982752 (= lt!2482477 (lemmaConcatPreservesForall!518 lt!2482486 (exprs!6678 ct2!306) lambda!399550))))

(declare-fun lt!2482479 () Unit!161018)

(assert (=> b!6982752 (= lt!2482479 (lemmaConcatPreservesForall!518 lt!2482486 (exprs!6678 ct2!306) lambda!399550))))

(declare-fun setIsEmpty!47590 () Bool)

(assert (=> setIsEmpty!47590 setRes!47590))

(declare-fun b!6982753 () Bool)

(assert (=> b!6982753 (= e!4196775 e!4196774)))

(declare-fun res!2847408 () Bool)

(assert (=> b!6982753 (=> res!2847408 e!4196774)))

(declare-fun nullable!6942 (Regex!17182) Bool)

(assert (=> b!6982753 (= res!2847408 (not (nullable!6942 (h!73415 (exprs!6678 lt!2482491)))))))

(declare-fun tail!13166 (List!67091) List!67091)

(assert (=> b!6982753 (= lt!2482486 (tail!13166 (exprs!6678 lt!2482491)))))

(assert (=> b!6982754 (= e!4196781 e!4196776)))

(declare-fun res!2847412 () Bool)

(assert (=> b!6982754 (=> res!2847412 e!4196776)))

(assert (=> b!6982754 (= res!2847412 (or (not (= lt!2482487 lt!2482472)) (not (set.member lt!2482491 z1!570))))))

(assert (=> b!6982754 (= lt!2482487 (Context!12357 (++!15127 (exprs!6678 lt!2482491) (exprs!6678 ct2!306))))))

(declare-fun lt!2482485 () Unit!161018)

(assert (=> b!6982754 (= lt!2482485 (lemmaConcatPreservesForall!518 (exprs!6678 lt!2482491) (exprs!6678 ct2!306) lambda!399550))))

(declare-fun lambda!399549 () Int)

(declare-fun mapPost2!37 ((Set Context!12356) Int Context!12356) Context!12356)

(assert (=> b!6982754 (= lt!2482491 (mapPost2!37 z1!570 lambda!399549 lt!2482472))))

(declare-fun b!6982755 () Bool)

(declare-fun res!2847415 () Bool)

(assert (=> b!6982755 (=> res!2847415 e!4196775)))

(assert (=> b!6982755 (= res!2847415 (not (is-Cons!66967 (exprs!6678 lt!2482491))))))

(declare-fun b!6982756 () Bool)

(declare-fun res!2847416 () Bool)

(assert (=> b!6982756 (=> res!2847416 e!4196775)))

(declare-fun isEmpty!39090 (List!67091) Bool)

(assert (=> b!6982756 (= res!2847416 (isEmpty!39090 (exprs!6678 lt!2482491)))))

(declare-fun b!6982757 () Bool)

(declare-fun res!2847407 () Bool)

(assert (=> b!6982757 (=> res!2847407 e!4196781)))

(assert (=> b!6982757 (= res!2847407 (not (set.member lt!2482472 lt!2482474)))))

(assert (= (and start!670254 res!2847411) b!6982747))

(assert (= (and b!6982747 res!2847410) b!6982751))

(assert (= (and b!6982751 (not res!2847413)) b!6982757))

(assert (= (and b!6982757 (not res!2847407)) b!6982754))

(assert (= (and b!6982754 (not res!2847412)) b!6982746))

(assert (= (and b!6982746 (not res!2847405)) b!6982748))

(assert (= (and b!6982748 (not res!2847406)) b!6982755))

(assert (= (and b!6982755 (not res!2847415)) b!6982756))

(assert (= (and b!6982756 (not res!2847416)) b!6982753))

(assert (= (and b!6982753 (not res!2847408)) b!6982744))

(assert (= (and b!6982744 (not res!2847414)) b!6982752))

(assert (= (and b!6982752 (not res!2847409)) b!6982743))

(assert (= (and start!670254 condSetEmpty!47590) setIsEmpty!47590))

(assert (= (and start!670254 (not condSetEmpty!47590)) setNonEmpty!47590))

(assert (= setNonEmpty!47590 b!6982749))

(assert (= start!670254 b!6982750))

(assert (= (and start!670254 (is-Cons!66968 s!7408)) b!6982745))

(declare-fun m!7669466 () Bool)

(assert (=> start!670254 m!7669466))

(declare-fun m!7669468 () Bool)

(assert (=> start!670254 m!7669468))

(declare-fun m!7669470 () Bool)

(assert (=> start!670254 m!7669470))

(declare-fun m!7669472 () Bool)

(assert (=> b!6982744 m!7669472))

(declare-fun m!7669474 () Bool)

(assert (=> b!6982744 m!7669474))

(declare-fun m!7669476 () Bool)

(assert (=> b!6982744 m!7669476))

(declare-fun m!7669478 () Bool)

(assert (=> b!6982744 m!7669478))

(assert (=> b!6982744 m!7669478))

(declare-fun m!7669480 () Bool)

(assert (=> b!6982756 m!7669480))

(declare-fun m!7669482 () Bool)

(assert (=> b!6982752 m!7669482))

(declare-fun m!7669484 () Bool)

(assert (=> b!6982752 m!7669484))

(assert (=> b!6982752 m!7669478))

(declare-fun m!7669486 () Bool)

(assert (=> b!6982752 m!7669486))

(assert (=> b!6982752 m!7669478))

(declare-fun m!7669488 () Bool)

(assert (=> b!6982752 m!7669488))

(declare-fun m!7669490 () Bool)

(assert (=> b!6982754 m!7669490))

(declare-fun m!7669492 () Bool)

(assert (=> b!6982754 m!7669492))

(declare-fun m!7669494 () Bool)

(assert (=> b!6982754 m!7669494))

(declare-fun m!7669496 () Bool)

(assert (=> b!6982754 m!7669496))

(declare-fun m!7669498 () Bool)

(assert (=> b!6982748 m!7669498))

(declare-fun m!7669500 () Bool)

(assert (=> b!6982748 m!7669500))

(declare-fun m!7669502 () Bool)

(assert (=> b!6982748 m!7669502))

(assert (=> b!6982748 m!7669494))

(declare-fun m!7669504 () Bool)

(assert (=> b!6982748 m!7669504))

(declare-fun m!7669506 () Bool)

(assert (=> b!6982757 m!7669506))

(declare-fun m!7669508 () Bool)

(assert (=> b!6982743 m!7669508))

(declare-fun m!7669510 () Bool)

(assert (=> b!6982746 m!7669510))

(assert (=> b!6982746 m!7669494))

(declare-fun m!7669512 () Bool)

(assert (=> setNonEmpty!47590 m!7669512))

(declare-fun m!7669514 () Bool)

(assert (=> b!6982751 m!7669514))

(declare-fun m!7669516 () Bool)

(assert (=> b!6982751 m!7669516))

(declare-fun m!7669518 () Bool)

(assert (=> b!6982751 m!7669518))

(declare-fun m!7669520 () Bool)

(assert (=> b!6982751 m!7669520))

(declare-fun m!7669522 () Bool)

(assert (=> b!6982751 m!7669522))

(declare-fun m!7669524 () Bool)

(assert (=> b!6982751 m!7669524))

(declare-fun m!7669526 () Bool)

(assert (=> b!6982753 m!7669526))

(declare-fun m!7669528 () Bool)

(assert (=> b!6982753 m!7669528))

(push 1)

(assert (not b!6982746))

(assert (not b!6982754))

(assert tp_is_empty!43589)

(assert (not b!6982749))

(assert (not b!6982744))

(assert (not b!6982753))

(assert (not b!6982745))

(assert (not setNonEmpty!47590))

(assert (not b!6982750))

(assert (not b!6982751))

(assert (not b!6982748))

(assert (not b!6982756))

(assert (not b!6982743))

(assert (not start!670254))

(assert (not b!6982752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2174687 () Bool)

(declare-fun e!4196822 () Bool)

(assert (=> d!2174687 e!4196822))

(declare-fun res!2847459 () Bool)

(assert (=> d!2174687 (=> (not res!2847459) (not e!4196822))))

(declare-fun lt!2482568 () List!67091)

(declare-fun content!13215 (List!67091) (Set Regex!17182))

(assert (=> d!2174687 (= res!2847459 (= (content!13215 lt!2482568) (set.union (content!13215 (exprs!6678 lt!2482491)) (content!13215 (exprs!6678 ct2!306)))))))

(declare-fun e!4196823 () List!67091)

(assert (=> d!2174687 (= lt!2482568 e!4196823)))

(declare-fun c!1294597 () Bool)

(assert (=> d!2174687 (= c!1294597 (is-Nil!66967 (exprs!6678 lt!2482491)))))

(assert (=> d!2174687 (= (++!15127 (exprs!6678 lt!2482491) (exprs!6678 ct2!306)) lt!2482568)))

(declare-fun b!6982826 () Bool)

(assert (=> b!6982826 (= e!4196822 (or (not (= (exprs!6678 ct2!306) Nil!66967)) (= lt!2482568 (exprs!6678 lt!2482491))))))

(declare-fun b!6982823 () Bool)

(assert (=> b!6982823 (= e!4196823 (exprs!6678 ct2!306))))

(declare-fun b!6982824 () Bool)

(assert (=> b!6982824 (= e!4196823 (Cons!66967 (h!73415 (exprs!6678 lt!2482491)) (++!15127 (t!380836 (exprs!6678 lt!2482491)) (exprs!6678 ct2!306))))))

(declare-fun b!6982825 () Bool)

(declare-fun res!2847458 () Bool)

(assert (=> b!6982825 (=> (not res!2847458) (not e!4196822))))

(declare-fun size!40882 (List!67091) Int)

(assert (=> b!6982825 (= res!2847458 (= (size!40882 lt!2482568) (+ (size!40882 (exprs!6678 lt!2482491)) (size!40882 (exprs!6678 ct2!306)))))))

(assert (= (and d!2174687 c!1294597) b!6982823))

(assert (= (and d!2174687 (not c!1294597)) b!6982824))

(assert (= (and d!2174687 res!2847459) b!6982825))

(assert (= (and b!6982825 res!2847458) b!6982826))

(declare-fun m!7669594 () Bool)

(assert (=> d!2174687 m!7669594))

(declare-fun m!7669596 () Bool)

(assert (=> d!2174687 m!7669596))

(declare-fun m!7669598 () Bool)

(assert (=> d!2174687 m!7669598))

(declare-fun m!7669600 () Bool)

(assert (=> b!6982824 m!7669600))

(declare-fun m!7669602 () Bool)

(assert (=> b!6982825 m!7669602))

(declare-fun m!7669604 () Bool)

(assert (=> b!6982825 m!7669604))

(declare-fun m!7669606 () Bool)

(assert (=> b!6982825 m!7669606))

(assert (=> b!6982754 d!2174687))

(declare-fun d!2174689 () Bool)

(assert (=> d!2174689 (forall!16078 (++!15127 (exprs!6678 lt!2482491) (exprs!6678 ct2!306)) lambda!399550)))

(declare-fun lt!2482571 () Unit!161018)

(declare-fun choose!52092 (List!67091 List!67091 Int) Unit!161018)

(assert (=> d!2174689 (= lt!2482571 (choose!52092 (exprs!6678 lt!2482491) (exprs!6678 ct2!306) lambda!399550))))

(assert (=> d!2174689 (forall!16078 (exprs!6678 lt!2482491) lambda!399550)))

(assert (=> d!2174689 (= (lemmaConcatPreservesForall!518 (exprs!6678 lt!2482491) (exprs!6678 ct2!306) lambda!399550) lt!2482571)))

(declare-fun bs!1861151 () Bool)

(assert (= bs!1861151 d!2174689))

(assert (=> bs!1861151 m!7669492))

(assert (=> bs!1861151 m!7669492))

(declare-fun m!7669608 () Bool)

(assert (=> bs!1861151 m!7669608))

(declare-fun m!7669610 () Bool)

(assert (=> bs!1861151 m!7669610))

(declare-fun m!7669612 () Bool)

(assert (=> bs!1861151 m!7669612))

(assert (=> b!6982754 d!2174689))

(declare-fun d!2174691 () Bool)

(declare-fun e!4196826 () Bool)

(assert (=> d!2174691 e!4196826))

(declare-fun res!2847462 () Bool)

(assert (=> d!2174691 (=> (not res!2847462) (not e!4196826))))

(declare-fun lt!2482574 () Context!12356)

(declare-fun dynLambda!26792 (Int Context!12356) Context!12356)

(assert (=> d!2174691 (= res!2847462 (= lt!2482472 (dynLambda!26792 lambda!399549 lt!2482574)))))

(declare-fun choose!52093 ((Set Context!12356) Int Context!12356) Context!12356)

(assert (=> d!2174691 (= lt!2482574 (choose!52093 z1!570 lambda!399549 lt!2482472))))

(declare-fun map!15439 ((Set Context!12356) Int) (Set Context!12356))

(assert (=> d!2174691 (set.member lt!2482472 (map!15439 z1!570 lambda!399549))))

(assert (=> d!2174691 (= (mapPost2!37 z1!570 lambda!399549 lt!2482472) lt!2482574)))

(declare-fun b!6982830 () Bool)

(assert (=> b!6982830 (= e!4196826 (set.member lt!2482574 z1!570))))

(assert (= (and d!2174691 res!2847462) b!6982830))

(declare-fun b_lambda!261867 () Bool)

(assert (=> (not b_lambda!261867) (not d!2174691)))

(declare-fun m!7669614 () Bool)

(assert (=> d!2174691 m!7669614))

(declare-fun m!7669616 () Bool)

(assert (=> d!2174691 m!7669616))

(declare-fun m!7669618 () Bool)

(assert (=> d!2174691 m!7669618))

(declare-fun m!7669620 () Bool)

(assert (=> d!2174691 m!7669620))

(declare-fun m!7669622 () Bool)

(assert (=> b!6982830 m!7669622))

(assert (=> b!6982754 d!2174691))

(declare-fun d!2174693 () Bool)

(assert (=> d!2174693 (forall!16078 (++!15127 lt!2482486 (exprs!6678 ct2!306)) lambda!399550)))

(declare-fun lt!2482575 () Unit!161018)

(assert (=> d!2174693 (= lt!2482575 (choose!52092 lt!2482486 (exprs!6678 ct2!306) lambda!399550))))

(assert (=> d!2174693 (forall!16078 lt!2482486 lambda!399550)))

(assert (=> d!2174693 (= (lemmaConcatPreservesForall!518 lt!2482486 (exprs!6678 ct2!306) lambda!399550) lt!2482575)))

(declare-fun bs!1861152 () Bool)

(assert (= bs!1861152 d!2174693))

(assert (=> bs!1861152 m!7669472))

(assert (=> bs!1861152 m!7669472))

(declare-fun m!7669624 () Bool)

(assert (=> bs!1861152 m!7669624))

(declare-fun m!7669626 () Bool)

(assert (=> bs!1861152 m!7669626))

(assert (=> bs!1861152 m!7669482))

(assert (=> b!6982744 d!2174693))

(declare-fun d!2174695 () Bool)

(declare-fun e!4196827 () Bool)

(assert (=> d!2174695 e!4196827))

(declare-fun res!2847464 () Bool)

(assert (=> d!2174695 (=> (not res!2847464) (not e!4196827))))

(declare-fun lt!2482576 () List!67091)

(assert (=> d!2174695 (= res!2847464 (= (content!13215 lt!2482576) (set.union (content!13215 lt!2482486) (content!13215 (exprs!6678 ct2!306)))))))

(declare-fun e!4196828 () List!67091)

(assert (=> d!2174695 (= lt!2482576 e!4196828)))

(declare-fun c!1294598 () Bool)

(assert (=> d!2174695 (= c!1294598 (is-Nil!66967 lt!2482486))))

(assert (=> d!2174695 (= (++!15127 lt!2482486 (exprs!6678 ct2!306)) lt!2482576)))

(declare-fun b!6982834 () Bool)

(assert (=> b!6982834 (= e!4196827 (or (not (= (exprs!6678 ct2!306) Nil!66967)) (= lt!2482576 lt!2482486)))))

(declare-fun b!6982831 () Bool)

(assert (=> b!6982831 (= e!4196828 (exprs!6678 ct2!306))))

(declare-fun b!6982832 () Bool)

(assert (=> b!6982832 (= e!4196828 (Cons!66967 (h!73415 lt!2482486) (++!15127 (t!380836 lt!2482486) (exprs!6678 ct2!306))))))

(declare-fun b!6982833 () Bool)

(declare-fun res!2847463 () Bool)

(assert (=> b!6982833 (=> (not res!2847463) (not e!4196827))))

(assert (=> b!6982833 (= res!2847463 (= (size!40882 lt!2482576) (+ (size!40882 lt!2482486) (size!40882 (exprs!6678 ct2!306)))))))

(assert (= (and d!2174695 c!1294598) b!6982831))

(assert (= (and d!2174695 (not c!1294598)) b!6982832))

(assert (= (and d!2174695 res!2847464) b!6982833))

(assert (= (and b!6982833 res!2847463) b!6982834))

(declare-fun m!7669628 () Bool)

(assert (=> d!2174695 m!7669628))

(declare-fun m!7669630 () Bool)

(assert (=> d!2174695 m!7669630))

(assert (=> d!2174695 m!7669598))

(declare-fun m!7669632 () Bool)

(assert (=> b!6982832 m!7669632))

(declare-fun m!7669634 () Bool)

(assert (=> b!6982833 m!7669634))

(declare-fun m!7669636 () Bool)

(assert (=> b!6982833 m!7669636))

(assert (=> b!6982833 m!7669606))

(assert (=> b!6982744 d!2174695))

(declare-fun b!6982845 () Bool)

(declare-fun e!4196837 () (Set Context!12356))

(assert (=> b!6982845 (= e!4196837 (as set.empty (Set Context!12356)))))

(declare-fun bm!633730 () Bool)

(declare-fun call!633735 () (Set Context!12356))

(assert (=> bm!633730 (= call!633735 (derivationStepZipperDown!1900 (h!73415 (exprs!6678 lt!2482488)) (Context!12357 (t!380836 (exprs!6678 lt!2482488))) (h!73416 s!7408)))))

(declare-fun d!2174697 () Bool)

(declare-fun c!1294603 () Bool)

(declare-fun e!4196835 () Bool)

(assert (=> d!2174697 (= c!1294603 e!4196835)))

(declare-fun res!2847468 () Bool)

(assert (=> d!2174697 (=> (not res!2847468) (not e!4196835))))

(assert (=> d!2174697 (= res!2847468 (is-Cons!66967 (exprs!6678 lt!2482488)))))

(declare-fun e!4196836 () (Set Context!12356))

(assert (=> d!2174697 (= (derivationStepZipperUp!1832 lt!2482488 (h!73416 s!7408)) e!4196836)))

(declare-fun b!6982846 () Bool)

(assert (=> b!6982846 (= e!4196837 call!633735)))

(declare-fun b!6982847 () Bool)

(assert (=> b!6982847 (= e!4196835 (nullable!6942 (h!73415 (exprs!6678 lt!2482488))))))

(declare-fun b!6982848 () Bool)

(assert (=> b!6982848 (= e!4196836 e!4196837)))

(declare-fun c!1294604 () Bool)

(assert (=> b!6982848 (= c!1294604 (is-Cons!66967 (exprs!6678 lt!2482488)))))

(declare-fun b!6982849 () Bool)

(assert (=> b!6982849 (= e!4196836 (set.union call!633735 (derivationStepZipperUp!1832 (Context!12357 (t!380836 (exprs!6678 lt!2482488))) (h!73416 s!7408))))))

(assert (= (and d!2174697 res!2847468) b!6982847))

(assert (= (and d!2174697 c!1294603) b!6982849))

(assert (= (and d!2174697 (not c!1294603)) b!6982848))

(assert (= (and b!6982848 c!1294604) b!6982846))

(assert (= (and b!6982848 (not c!1294604)) b!6982845))

(assert (= (or b!6982849 b!6982846) bm!633730))

(declare-fun m!7669638 () Bool)

(assert (=> bm!633730 m!7669638))

(declare-fun m!7669640 () Bool)

(assert (=> b!6982847 m!7669640))

(declare-fun m!7669642 () Bool)

(assert (=> b!6982849 m!7669642))

(assert (=> b!6982744 d!2174697))

(declare-fun c!1294619 () Bool)

(declare-fun call!633752 () List!67091)

(declare-fun call!633751 () (Set Context!12356))

(declare-fun bm!633743 () Bool)

(assert (=> bm!633743 (= call!633751 (derivationStepZipperDown!1900 (ite c!1294619 (regTwo!34877 (h!73415 (exprs!6678 lt!2482491))) (regOne!34876 (h!73415 (exprs!6678 lt!2482491)))) (ite c!1294619 lt!2482488 (Context!12357 call!633752)) (h!73416 s!7408)))))

(declare-fun c!1294616 () Bool)

(declare-fun c!1294615 () Bool)

(declare-fun bm!633744 () Bool)

(declare-fun $colon$colon!2462 (List!67091 Regex!17182) List!67091)

(assert (=> bm!633744 (= call!633752 ($colon$colon!2462 (exprs!6678 lt!2482488) (ite (or c!1294615 c!1294616) (regTwo!34876 (h!73415 (exprs!6678 lt!2482491))) (h!73415 (exprs!6678 lt!2482491)))))))

(declare-fun b!6982872 () Bool)

(declare-fun e!4196855 () (Set Context!12356))

(declare-fun call!633750 () (Set Context!12356))

(assert (=> b!6982872 (= e!4196855 call!633750)))

(declare-fun b!6982873 () Bool)

(declare-fun e!4196851 () (Set Context!12356))

(declare-fun call!633748 () (Set Context!12356))

(assert (=> b!6982873 (= e!4196851 (set.union call!633751 call!633748))))

(declare-fun d!2174699 () Bool)

(declare-fun c!1294618 () Bool)

(assert (=> d!2174699 (= c!1294618 (and (is-ElementMatch!17182 (h!73415 (exprs!6678 lt!2482491))) (= (c!1294585 (h!73415 (exprs!6678 lt!2482491))) (h!73416 s!7408))))))

(declare-fun e!4196850 () (Set Context!12356))

(assert (=> d!2174699 (= (derivationStepZipperDown!1900 (h!73415 (exprs!6678 lt!2482491)) lt!2482488 (h!73416 s!7408)) e!4196850)))

(declare-fun b!6982874 () Bool)

(declare-fun e!4196852 () (Set Context!12356))

(declare-fun call!633753 () (Set Context!12356))

(assert (=> b!6982874 (= e!4196852 (set.union call!633753 call!633751))))

(declare-fun bm!633745 () Bool)

(assert (=> bm!633745 (= call!633750 call!633748)))

(declare-fun b!6982875 () Bool)

(declare-fun e!4196853 () (Set Context!12356))

(assert (=> b!6982875 (= e!4196853 (as set.empty (Set Context!12356)))))

(declare-fun b!6982876 () Bool)

(declare-fun e!4196854 () Bool)

(assert (=> b!6982876 (= e!4196854 (nullable!6942 (regOne!34876 (h!73415 (exprs!6678 lt!2482491)))))))

(declare-fun b!6982877 () Bool)

(assert (=> b!6982877 (= e!4196853 call!633750)))

(declare-fun b!6982878 () Bool)

(assert (=> b!6982878 (= e!4196851 e!4196855)))

(assert (=> b!6982878 (= c!1294616 (is-Concat!26027 (h!73415 (exprs!6678 lt!2482491))))))

(declare-fun b!6982879 () Bool)

(assert (=> b!6982879 (= c!1294615 e!4196854)))

(declare-fun res!2847471 () Bool)

(assert (=> b!6982879 (=> (not res!2847471) (not e!4196854))))

(assert (=> b!6982879 (= res!2847471 (is-Concat!26027 (h!73415 (exprs!6678 lt!2482491))))))

(assert (=> b!6982879 (= e!4196852 e!4196851)))

(declare-fun bm!633746 () Bool)

(declare-fun call!633749 () List!67091)

(assert (=> bm!633746 (= call!633749 call!633752)))

(declare-fun bm!633747 () Bool)

(assert (=> bm!633747 (= call!633753 (derivationStepZipperDown!1900 (ite c!1294619 (regOne!34877 (h!73415 (exprs!6678 lt!2482491))) (ite c!1294615 (regTwo!34876 (h!73415 (exprs!6678 lt!2482491))) (ite c!1294616 (regOne!34876 (h!73415 (exprs!6678 lt!2482491))) (reg!17511 (h!73415 (exprs!6678 lt!2482491)))))) (ite (or c!1294619 c!1294615) lt!2482488 (Context!12357 call!633749)) (h!73416 s!7408)))))

(declare-fun b!6982880 () Bool)

(assert (=> b!6982880 (= e!4196850 e!4196852)))

(assert (=> b!6982880 (= c!1294619 (is-Union!17182 (h!73415 (exprs!6678 lt!2482491))))))

(declare-fun b!6982881 () Bool)

(assert (=> b!6982881 (= e!4196850 (set.insert lt!2482488 (as set.empty (Set Context!12356))))))

(declare-fun b!6982882 () Bool)

(declare-fun c!1294617 () Bool)

(assert (=> b!6982882 (= c!1294617 (is-Star!17182 (h!73415 (exprs!6678 lt!2482491))))))

(assert (=> b!6982882 (= e!4196855 e!4196853)))

(declare-fun bm!633748 () Bool)

(assert (=> bm!633748 (= call!633748 call!633753)))

(assert (= (and d!2174699 c!1294618) b!6982881))

(assert (= (and d!2174699 (not c!1294618)) b!6982880))

(assert (= (and b!6982880 c!1294619) b!6982874))

(assert (= (and b!6982880 (not c!1294619)) b!6982879))

(assert (= (and b!6982879 res!2847471) b!6982876))

(assert (= (and b!6982879 c!1294615) b!6982873))

(assert (= (and b!6982879 (not c!1294615)) b!6982878))

(assert (= (and b!6982878 c!1294616) b!6982872))

(assert (= (and b!6982878 (not c!1294616)) b!6982882))

(assert (= (and b!6982882 c!1294617) b!6982877))

(assert (= (and b!6982882 (not c!1294617)) b!6982875))

(assert (= (or b!6982872 b!6982877) bm!633746))

(assert (= (or b!6982872 b!6982877) bm!633745))

(assert (= (or b!6982873 bm!633745) bm!633748))

(assert (= (or b!6982873 bm!633746) bm!633744))

(assert (= (or b!6982874 bm!633748) bm!633747))

(assert (= (or b!6982874 b!6982873) bm!633743))

(declare-fun m!7669644 () Bool)

(assert (=> bm!633743 m!7669644))

(declare-fun m!7669646 () Bool)

(assert (=> bm!633744 m!7669646))

(declare-fun m!7669648 () Bool)

(assert (=> b!6982881 m!7669648))

(declare-fun m!7669650 () Bool)

(assert (=> bm!633747 m!7669650))

(declare-fun m!7669652 () Bool)

(assert (=> b!6982876 m!7669652))

(assert (=> b!6982744 d!2174699))

(declare-fun d!2174701 () Bool)

(declare-fun nullableFct!2614 (Regex!17182) Bool)

(assert (=> d!2174701 (= (nullable!6942 (h!73415 (exprs!6678 lt!2482491))) (nullableFct!2614 (h!73415 (exprs!6678 lt!2482491))))))

(declare-fun bs!1861153 () Bool)

(assert (= bs!1861153 d!2174701))

(declare-fun m!7669654 () Bool)

(assert (=> bs!1861153 m!7669654))

(assert (=> b!6982753 d!2174701))

(declare-fun d!2174703 () Bool)

(assert (=> d!2174703 (= (tail!13166 (exprs!6678 lt!2482491)) (t!380836 (exprs!6678 lt!2482491)))))

(assert (=> b!6982753 d!2174703))

(declare-fun d!2174705 () Bool)

(assert (=> d!2174705 (= (isEmpty!39090 (exprs!6678 lt!2482491)) (is-Nil!66967 (exprs!6678 lt!2482491)))))

(assert (=> b!6982756 d!2174705))

(assert (=> b!6982748 d!2174689))

(declare-fun d!2174707 () Bool)

(declare-fun choose!52094 ((Set Context!12356) Int) (Set Context!12356))

(assert (=> d!2174707 (= (flatMap!2168 lt!2482493 lambda!399551) (choose!52094 lt!2482493 lambda!399551))))

(declare-fun bs!1861154 () Bool)

(assert (= bs!1861154 d!2174707))

(declare-fun m!7669656 () Bool)

(assert (=> bs!1861154 m!7669656))

(assert (=> b!6982748 d!2174707))

(declare-fun d!2174709 () Bool)

(declare-fun dynLambda!26793 (Int Context!12356) (Set Context!12356))

(assert (=> d!2174709 (= (flatMap!2168 lt!2482493 lambda!399551) (dynLambda!26793 lambda!399551 lt!2482487))))

(declare-fun lt!2482579 () Unit!161018)

(declare-fun choose!52095 ((Set Context!12356) Context!12356 Int) Unit!161018)

(assert (=> d!2174709 (= lt!2482579 (choose!52095 lt!2482493 lt!2482487 lambda!399551))))

(assert (=> d!2174709 (= lt!2482493 (set.insert lt!2482487 (as set.empty (Set Context!12356))))))

(assert (=> d!2174709 (= (lemmaFlatMapOnSingletonSet!1683 lt!2482493 lt!2482487 lambda!399551) lt!2482579)))

(declare-fun b_lambda!261869 () Bool)

(assert (=> (not b_lambda!261869) (not d!2174709)))

(declare-fun bs!1861155 () Bool)

(assert (= bs!1861155 d!2174709))

(assert (=> bs!1861155 m!7669504))

(declare-fun m!7669658 () Bool)

(assert (=> bs!1861155 m!7669658))

(declare-fun m!7669660 () Bool)

(assert (=> bs!1861155 m!7669660))

(assert (=> bs!1861155 m!7669510))

(assert (=> b!6982748 d!2174709))

(declare-fun bs!1861156 () Bool)

(declare-fun d!2174711 () Bool)

(assert (= bs!1861156 (and d!2174711 b!6982748)))

(declare-fun lambda!399584 () Int)

(assert (=> bs!1861156 (= lambda!399584 lambda!399551)))

(assert (=> d!2174711 true))

(assert (=> d!2174711 (= (derivationStepZipper!2662 lt!2482493 (h!73416 s!7408)) (flatMap!2168 lt!2482493 lambda!399584))))

(declare-fun bs!1861157 () Bool)

(assert (= bs!1861157 d!2174711))

(declare-fun m!7669662 () Bool)

(assert (=> bs!1861157 m!7669662))

(assert (=> b!6982748 d!2174711))

(declare-fun b!6982885 () Bool)

(declare-fun e!4196858 () (Set Context!12356))

(assert (=> b!6982885 (= e!4196858 (as set.empty (Set Context!12356)))))

(declare-fun bm!633749 () Bool)

(declare-fun call!633754 () (Set Context!12356))

(assert (=> bm!633749 (= call!633754 (derivationStepZipperDown!1900 (h!73415 (exprs!6678 lt!2482487)) (Context!12357 (t!380836 (exprs!6678 lt!2482487))) (h!73416 s!7408)))))

(declare-fun d!2174713 () Bool)

(declare-fun c!1294622 () Bool)

(declare-fun e!4196856 () Bool)

(assert (=> d!2174713 (= c!1294622 e!4196856)))

(declare-fun res!2847472 () Bool)

(assert (=> d!2174713 (=> (not res!2847472) (not e!4196856))))

(assert (=> d!2174713 (= res!2847472 (is-Cons!66967 (exprs!6678 lt!2482487)))))

(declare-fun e!4196857 () (Set Context!12356))

(assert (=> d!2174713 (= (derivationStepZipperUp!1832 lt!2482487 (h!73416 s!7408)) e!4196857)))

(declare-fun b!6982886 () Bool)

(assert (=> b!6982886 (= e!4196858 call!633754)))

(declare-fun b!6982887 () Bool)

(assert (=> b!6982887 (= e!4196856 (nullable!6942 (h!73415 (exprs!6678 lt!2482487))))))

(declare-fun b!6982888 () Bool)

(assert (=> b!6982888 (= e!4196857 e!4196858)))

(declare-fun c!1294623 () Bool)

(assert (=> b!6982888 (= c!1294623 (is-Cons!66967 (exprs!6678 lt!2482487)))))

(declare-fun b!6982889 () Bool)

(assert (=> b!6982889 (= e!4196857 (set.union call!633754 (derivationStepZipperUp!1832 (Context!12357 (t!380836 (exprs!6678 lt!2482487))) (h!73416 s!7408))))))

(assert (= (and d!2174713 res!2847472) b!6982887))

(assert (= (and d!2174713 c!1294622) b!6982889))

(assert (= (and d!2174713 (not c!1294622)) b!6982888))

(assert (= (and b!6982888 c!1294623) b!6982886))

(assert (= (and b!6982888 (not c!1294623)) b!6982885))

(assert (= (or b!6982889 b!6982886) bm!633749))

(declare-fun m!7669664 () Bool)

(assert (=> bm!633749 m!7669664))

(declare-fun m!7669666 () Bool)

(assert (=> b!6982887 m!7669666))

(declare-fun m!7669668 () Bool)

(assert (=> b!6982889 m!7669668))

(assert (=> b!6982748 d!2174713))

(assert (=> b!6982746 d!2174689))

(declare-fun d!2174715 () Bool)

(declare-fun c!1294626 () Bool)

(declare-fun isEmpty!39092 (List!67092) Bool)

(assert (=> d!2174715 (= c!1294626 (isEmpty!39092 s!7408))))

(declare-fun e!4196861 () Bool)

(assert (=> d!2174715 (= (matchZipper!2722 lt!2482473 s!7408) e!4196861)))

(declare-fun b!6982894 () Bool)

(declare-fun nullableZipper!2411 ((Set Context!12356)) Bool)

(assert (=> b!6982894 (= e!4196861 (nullableZipper!2411 lt!2482473))))

(declare-fun b!6982895 () Bool)

(declare-fun head!14085 (List!67092) C!34634)

(declare-fun tail!13168 (List!67092) List!67092)

(assert (=> b!6982895 (= e!4196861 (matchZipper!2722 (derivationStepZipper!2662 lt!2482473 (head!14085 s!7408)) (tail!13168 s!7408)))))

(assert (= (and d!2174715 c!1294626) b!6982894))

(assert (= (and d!2174715 (not c!1294626)) b!6982895))

(declare-fun m!7669670 () Bool)

(assert (=> d!2174715 m!7669670))

(declare-fun m!7669672 () Bool)

(assert (=> b!6982894 m!7669672))

(declare-fun m!7669674 () Bool)

(assert (=> b!6982895 m!7669674))

(assert (=> b!6982895 m!7669674))

(declare-fun m!7669676 () Bool)

(assert (=> b!6982895 m!7669676))

(declare-fun m!7669678 () Bool)

(assert (=> b!6982895 m!7669678))

(assert (=> b!6982895 m!7669676))

(assert (=> b!6982895 m!7669678))

(declare-fun m!7669680 () Bool)

(assert (=> b!6982895 m!7669680))

(assert (=> b!6982751 d!2174715))

(declare-fun bs!1861158 () Bool)

(declare-fun d!2174717 () Bool)

(assert (= bs!1861158 (and d!2174717 b!6982751)))

(declare-fun lambda!399587 () Int)

(assert (=> bs!1861158 (not (= lambda!399587 lambda!399548))))

(assert (=> d!2174717 true))

(declare-fun order!27861 () Int)

(declare-fun dynLambda!26794 (Int Int) Int)

(assert (=> d!2174717 (< (dynLambda!26794 order!27861 lambda!399548) (dynLambda!26794 order!27861 lambda!399587))))

(declare-fun forall!16080 (List!67093 Int) Bool)

(assert (=> d!2174717 (= (exists!2948 lt!2482490 lambda!399548) (not (forall!16080 lt!2482490 lambda!399587)))))

(declare-fun bs!1861159 () Bool)

(assert (= bs!1861159 d!2174717))

(declare-fun m!7669682 () Bool)

(assert (=> bs!1861159 m!7669682))

(assert (=> b!6982751 d!2174717))

(declare-fun bs!1861160 () Bool)

(declare-fun d!2174719 () Bool)

(assert (= bs!1861160 (and d!2174719 b!6982751)))

(declare-fun lambda!399590 () Int)

(assert (=> bs!1861160 (= lambda!399590 lambda!399548)))

(declare-fun bs!1861161 () Bool)

(assert (= bs!1861161 (and d!2174719 d!2174717)))

(assert (=> bs!1861161 (not (= lambda!399590 lambda!399587))))

(assert (=> d!2174719 true))

(assert (=> d!2174719 (exists!2948 lt!2482490 lambda!399590)))

(declare-fun lt!2482582 () Unit!161018)

(declare-fun choose!52096 (List!67093 List!67092) Unit!161018)

(assert (=> d!2174719 (= lt!2482582 (choose!52096 lt!2482490 s!7408))))

(declare-fun content!13216 (List!67093) (Set Context!12356))

(assert (=> d!2174719 (matchZipper!2722 (content!13216 lt!2482490) s!7408)))

(assert (=> d!2174719 (= (lemmaZipperMatchesExistsMatchingContext!151 lt!2482490 s!7408) lt!2482582)))

(declare-fun bs!1861162 () Bool)

(assert (= bs!1861162 d!2174719))

(declare-fun m!7669684 () Bool)

(assert (=> bs!1861162 m!7669684))

(declare-fun m!7669686 () Bool)

(assert (=> bs!1861162 m!7669686))

(declare-fun m!7669688 () Bool)

(assert (=> bs!1861162 m!7669688))

(assert (=> bs!1861162 m!7669688))

(declare-fun m!7669690 () Bool)

(assert (=> bs!1861162 m!7669690))

(assert (=> b!6982751 d!2174719))

(declare-fun d!2174721 () Bool)

(declare-fun e!4196864 () Bool)

(assert (=> d!2174721 e!4196864))

(declare-fun res!2847475 () Bool)

(assert (=> d!2174721 (=> (not res!2847475) (not e!4196864))))

(declare-fun lt!2482585 () Context!12356)

(declare-fun dynLambda!26795 (Int Context!12356) Bool)

(assert (=> d!2174721 (= res!2847475 (dynLambda!26795 lambda!399548 lt!2482585))))

(declare-fun getWitness!1061 (List!67093 Int) Context!12356)

(assert (=> d!2174721 (= lt!2482585 (getWitness!1061 (toList!10542 lt!2482474) lambda!399548))))

(declare-fun exists!2950 ((Set Context!12356) Int) Bool)

(assert (=> d!2174721 (exists!2950 lt!2482474 lambda!399548)))

(assert (=> d!2174721 (= (getWitness!1059 lt!2482474 lambda!399548) lt!2482585)))

(declare-fun b!6982900 () Bool)

(assert (=> b!6982900 (= e!4196864 (set.member lt!2482585 lt!2482474))))

(assert (= (and d!2174721 res!2847475) b!6982900))

(declare-fun b_lambda!261871 () Bool)

(assert (=> (not b_lambda!261871) (not d!2174721)))

(declare-fun m!7669692 () Bool)

(assert (=> d!2174721 m!7669692))

(assert (=> d!2174721 m!7669516))

(assert (=> d!2174721 m!7669516))

(declare-fun m!7669694 () Bool)

(assert (=> d!2174721 m!7669694))

(declare-fun m!7669696 () Bool)

(assert (=> d!2174721 m!7669696))

(declare-fun m!7669698 () Bool)

(assert (=> b!6982900 m!7669698))

(assert (=> b!6982751 d!2174721))

(declare-fun d!2174723 () Bool)

(declare-fun e!4196867 () Bool)

(assert (=> d!2174723 e!4196867))

(declare-fun res!2847478 () Bool)

(assert (=> d!2174723 (=> (not res!2847478) (not e!4196867))))

(declare-fun lt!2482588 () List!67093)

(declare-fun noDuplicate!2501 (List!67093) Bool)

(assert (=> d!2174723 (= res!2847478 (noDuplicate!2501 lt!2482588))))

(declare-fun choose!52097 ((Set Context!12356)) List!67093)

(assert (=> d!2174723 (= lt!2482588 (choose!52097 lt!2482474))))

(assert (=> d!2174723 (= (toList!10542 lt!2482474) lt!2482588)))

(declare-fun b!6982903 () Bool)

(assert (=> b!6982903 (= e!4196867 (= (content!13216 lt!2482588) lt!2482474))))

(assert (= (and d!2174723 res!2847478) b!6982903))

(declare-fun m!7669700 () Bool)

(assert (=> d!2174723 m!7669700))

(declare-fun m!7669702 () Bool)

(assert (=> d!2174723 m!7669702))

(declare-fun m!7669704 () Bool)

(assert (=> b!6982903 m!7669704))

(assert (=> b!6982751 d!2174723))

(declare-fun d!2174725 () Bool)

(declare-fun c!1294629 () Bool)

(assert (=> d!2174725 (= c!1294629 (isEmpty!39092 s!7408))))

(declare-fun e!4196868 () Bool)

(assert (=> d!2174725 (= (matchZipper!2722 lt!2482474 s!7408) e!4196868)))

(declare-fun b!6982904 () Bool)

(assert (=> b!6982904 (= e!4196868 (nullableZipper!2411 lt!2482474))))

(declare-fun b!6982905 () Bool)

(assert (=> b!6982905 (= e!4196868 (matchZipper!2722 (derivationStepZipper!2662 lt!2482474 (head!14085 s!7408)) (tail!13168 s!7408)))))

(assert (= (and d!2174725 c!1294629) b!6982904))

(assert (= (and d!2174725 (not c!1294629)) b!6982905))

(assert (=> d!2174725 m!7669670))

(declare-fun m!7669706 () Bool)

(assert (=> b!6982904 m!7669706))

(assert (=> b!6982905 m!7669674))

(assert (=> b!6982905 m!7669674))

(declare-fun m!7669708 () Bool)

(assert (=> b!6982905 m!7669708))

(assert (=> b!6982905 m!7669678))

(assert (=> b!6982905 m!7669708))

(assert (=> b!6982905 m!7669678))

(declare-fun m!7669710 () Bool)

(assert (=> b!6982905 m!7669710))

(assert (=> start!670254 d!2174725))

(declare-fun bs!1861163 () Bool)

(declare-fun d!2174727 () Bool)

(assert (= bs!1861163 (and d!2174727 b!6982754)))

(declare-fun lambda!399595 () Int)

(assert (=> bs!1861163 (= lambda!399595 lambda!399549)))

(assert (=> d!2174727 true))

(assert (=> d!2174727 (= (appendTo!303 z1!570 ct2!306) (map!15439 z1!570 lambda!399595))))

(declare-fun bs!1861164 () Bool)

(assert (= bs!1861164 d!2174727))

(declare-fun m!7669712 () Bool)

(assert (=> bs!1861164 m!7669712))

(assert (=> start!670254 d!2174727))

(declare-fun bs!1861165 () Bool)

(declare-fun d!2174729 () Bool)

(assert (= bs!1861165 (and d!2174729 b!6982754)))

(declare-fun lambda!399598 () Int)

(assert (=> bs!1861165 (= lambda!399598 lambda!399550)))

(assert (=> d!2174729 (= (inv!85815 ct2!306) (forall!16078 (exprs!6678 ct2!306) lambda!399598))))

(declare-fun bs!1861166 () Bool)

(assert (= bs!1861166 d!2174729))

(declare-fun m!7669714 () Bool)

(assert (=> bs!1861166 m!7669714))

(assert (=> start!670254 d!2174729))

(assert (=> b!6982752 d!2174693))

(declare-fun d!2174731 () Bool)

(declare-fun c!1294631 () Bool)

(assert (=> d!2174731 (= c!1294631 (isEmpty!39092 (t!380837 s!7408)))))

(declare-fun e!4196869 () Bool)

(assert (=> d!2174731 (= (matchZipper!2722 lt!2482478 (t!380837 s!7408)) e!4196869)))

(declare-fun b!6982906 () Bool)

(assert (=> b!6982906 (= e!4196869 (nullableZipper!2411 lt!2482478))))

(declare-fun b!6982907 () Bool)

(assert (=> b!6982907 (= e!4196869 (matchZipper!2722 (derivationStepZipper!2662 lt!2482478 (head!14085 (t!380837 s!7408))) (tail!13168 (t!380837 s!7408))))))

(assert (= (and d!2174731 c!1294631) b!6982906))

(assert (= (and d!2174731 (not c!1294631)) b!6982907))

(declare-fun m!7669716 () Bool)

(assert (=> d!2174731 m!7669716))

(declare-fun m!7669718 () Bool)

(assert (=> b!6982906 m!7669718))

(declare-fun m!7669720 () Bool)

(assert (=> b!6982907 m!7669720))

(assert (=> b!6982907 m!7669720))

(declare-fun m!7669722 () Bool)

(assert (=> b!6982907 m!7669722))

(declare-fun m!7669724 () Bool)

(assert (=> b!6982907 m!7669724))

(assert (=> b!6982907 m!7669722))

(assert (=> b!6982907 m!7669724))

(declare-fun m!7669726 () Bool)

(assert (=> b!6982907 m!7669726))

(assert (=> b!6982752 d!2174731))

(declare-fun d!2174733 () Bool)

(declare-fun res!2847483 () Bool)

(declare-fun e!4196874 () Bool)

(assert (=> d!2174733 (=> res!2847483 e!4196874)))

(assert (=> d!2174733 (= res!2847483 (is-Nil!66967 lt!2482486))))

(assert (=> d!2174733 (= (forall!16078 lt!2482486 lambda!399550) e!4196874)))

(declare-fun b!6982912 () Bool)

(declare-fun e!4196875 () Bool)

(assert (=> b!6982912 (= e!4196874 e!4196875)))

(declare-fun res!2847484 () Bool)

(assert (=> b!6982912 (=> (not res!2847484) (not e!4196875))))

(declare-fun dynLambda!26796 (Int Regex!17182) Bool)

(assert (=> b!6982912 (= res!2847484 (dynLambda!26796 lambda!399550 (h!73415 lt!2482486)))))

(declare-fun b!6982913 () Bool)

(assert (=> b!6982913 (= e!4196875 (forall!16078 (t!380836 lt!2482486) lambda!399550))))

(assert (= (and d!2174733 (not res!2847483)) b!6982912))

(assert (= (and b!6982912 res!2847484) b!6982913))

(declare-fun b_lambda!261873 () Bool)

(assert (=> (not b_lambda!261873) (not b!6982912)))

(declare-fun m!7669728 () Bool)

(assert (=> b!6982912 m!7669728))

(declare-fun m!7669730 () Bool)

(assert (=> b!6982913 m!7669730))

(assert (=> b!6982752 d!2174733))

(declare-fun d!2174735 () Bool)

(declare-fun c!1294632 () Bool)

(assert (=> d!2174735 (= c!1294632 (isEmpty!39092 (t!380837 s!7408)))))

(declare-fun e!4196876 () Bool)

(assert (=> d!2174735 (= (matchZipper!2722 lt!2482475 (t!380837 s!7408)) e!4196876)))

(declare-fun b!6982914 () Bool)

(assert (=> b!6982914 (= e!4196876 (nullableZipper!2411 lt!2482475))))

(declare-fun b!6982915 () Bool)

(assert (=> b!6982915 (= e!4196876 (matchZipper!2722 (derivationStepZipper!2662 lt!2482475 (head!14085 (t!380837 s!7408))) (tail!13168 (t!380837 s!7408))))))

(assert (= (and d!2174735 c!1294632) b!6982914))

(assert (= (and d!2174735 (not c!1294632)) b!6982915))

(assert (=> d!2174735 m!7669716))

(declare-fun m!7669732 () Bool)

(assert (=> b!6982914 m!7669732))

(assert (=> b!6982915 m!7669720))

(assert (=> b!6982915 m!7669720))

(declare-fun m!7669734 () Bool)

(assert (=> b!6982915 m!7669734))

(assert (=> b!6982915 m!7669724))

(assert (=> b!6982915 m!7669734))

(assert (=> b!6982915 m!7669724))

(declare-fun m!7669736 () Bool)

(assert (=> b!6982915 m!7669736))

(assert (=> b!6982752 d!2174735))

(declare-fun d!2174737 () Bool)

(declare-fun e!4196879 () Bool)

(assert (=> d!2174737 (= (matchZipper!2722 (set.union lt!2482478 lt!2482476) (t!380837 s!7408)) e!4196879)))

(declare-fun res!2847487 () Bool)

(assert (=> d!2174737 (=> res!2847487 e!4196879)))

(assert (=> d!2174737 (= res!2847487 (matchZipper!2722 lt!2482478 (t!380837 s!7408)))))

(declare-fun lt!2482593 () Unit!161018)

(declare-fun choose!52098 ((Set Context!12356) (Set Context!12356) List!67092) Unit!161018)

(assert (=> d!2174737 (= lt!2482593 (choose!52098 lt!2482478 lt!2482476 (t!380837 s!7408)))))

(assert (=> d!2174737 (= (lemmaZipperConcatMatchesSameAsBothZippers!1355 lt!2482478 lt!2482476 (t!380837 s!7408)) lt!2482593)))

(declare-fun b!6982918 () Bool)

(assert (=> b!6982918 (= e!4196879 (matchZipper!2722 lt!2482476 (t!380837 s!7408)))))

(assert (= (and d!2174737 (not res!2847487)) b!6982918))

(declare-fun m!7669738 () Bool)

(assert (=> d!2174737 m!7669738))

(assert (=> d!2174737 m!7669486))

(declare-fun m!7669740 () Bool)

(assert (=> d!2174737 m!7669740))

(assert (=> b!6982918 m!7669508))

(assert (=> b!6982752 d!2174737))

(declare-fun d!2174739 () Bool)

(declare-fun c!1294633 () Bool)

(assert (=> d!2174739 (= c!1294633 (isEmpty!39092 (t!380837 s!7408)))))

(declare-fun e!4196880 () Bool)

(assert (=> d!2174739 (= (matchZipper!2722 lt!2482476 (t!380837 s!7408)) e!4196880)))

(declare-fun b!6982919 () Bool)

(assert (=> b!6982919 (= e!4196880 (nullableZipper!2411 lt!2482476))))

(declare-fun b!6982920 () Bool)

(assert (=> b!6982920 (= e!4196880 (matchZipper!2722 (derivationStepZipper!2662 lt!2482476 (head!14085 (t!380837 s!7408))) (tail!13168 (t!380837 s!7408))))))

(assert (= (and d!2174739 c!1294633) b!6982919))

(assert (= (and d!2174739 (not c!1294633)) b!6982920))

(assert (=> d!2174739 m!7669716))

(declare-fun m!7669742 () Bool)

(assert (=> b!6982919 m!7669742))

(assert (=> b!6982920 m!7669720))

(assert (=> b!6982920 m!7669720))

(declare-fun m!7669744 () Bool)

(assert (=> b!6982920 m!7669744))

(assert (=> b!6982920 m!7669724))

(assert (=> b!6982920 m!7669744))

(assert (=> b!6982920 m!7669724))

(declare-fun m!7669746 () Bool)

(assert (=> b!6982920 m!7669746))

(assert (=> b!6982743 d!2174739))

(declare-fun bs!1861167 () Bool)

(declare-fun d!2174741 () Bool)

(assert (= bs!1861167 (and d!2174741 b!6982754)))

(declare-fun lambda!399599 () Int)

(assert (=> bs!1861167 (= lambda!399599 lambda!399550)))

(declare-fun bs!1861168 () Bool)

(assert (= bs!1861168 (and d!2174741 d!2174729)))

(assert (=> bs!1861168 (= lambda!399599 lambda!399598)))

(assert (=> d!2174741 (= (inv!85815 setElem!47590) (forall!16078 (exprs!6678 setElem!47590) lambda!399599))))

(declare-fun bs!1861169 () Bool)

(assert (= bs!1861169 d!2174741))

(declare-fun m!7669748 () Bool)

(assert (=> bs!1861169 m!7669748))

(assert (=> setNonEmpty!47590 d!2174741))

(declare-fun b!6982925 () Bool)

(declare-fun e!4196883 () Bool)

(declare-fun tp!1928599 () Bool)

(declare-fun tp!1928600 () Bool)

(assert (=> b!6982925 (= e!4196883 (and tp!1928599 tp!1928600))))

(assert (=> b!6982750 (= tp!1928580 e!4196883)))

(assert (= (and b!6982750 (is-Cons!66967 (exprs!6678 ct2!306))) b!6982925))

(declare-fun b!6982930 () Bool)

(declare-fun e!4196886 () Bool)

(declare-fun tp!1928603 () Bool)

(assert (=> b!6982930 (= e!4196886 (and tp_is_empty!43589 tp!1928603))))

(assert (=> b!6982745 (= tp!1928581 e!4196886)))

(assert (= (and b!6982745 (is-Cons!66968 (t!380837 s!7408))) b!6982930))

(declare-fun b!6982931 () Bool)

(declare-fun e!4196887 () Bool)

(declare-fun tp!1928604 () Bool)

(declare-fun tp!1928605 () Bool)

(assert (=> b!6982931 (= e!4196887 (and tp!1928604 tp!1928605))))

(assert (=> b!6982749 (= tp!1928582 e!4196887)))

(assert (= (and b!6982749 (is-Cons!66967 (exprs!6678 setElem!47590))) b!6982931))

(declare-fun condSetEmpty!47596 () Bool)

(assert (=> setNonEmpty!47590 (= condSetEmpty!47596 (= setRest!47590 (as set.empty (Set Context!12356))))))

(declare-fun setRes!47596 () Bool)

(assert (=> setNonEmpty!47590 (= tp!1928579 setRes!47596)))

(declare-fun setIsEmpty!47596 () Bool)

(assert (=> setIsEmpty!47596 setRes!47596))

(declare-fun setNonEmpty!47596 () Bool)

(declare-fun tp!1928610 () Bool)

(declare-fun e!4196890 () Bool)

(declare-fun setElem!47596 () Context!12356)

(assert (=> setNonEmpty!47596 (= setRes!47596 (and tp!1928610 (inv!85815 setElem!47596) e!4196890))))

(declare-fun setRest!47596 () (Set Context!12356))

(assert (=> setNonEmpty!47596 (= setRest!47590 (set.union (set.insert setElem!47596 (as set.empty (Set Context!12356))) setRest!47596))))

(declare-fun b!6982936 () Bool)

(declare-fun tp!1928611 () Bool)

(assert (=> b!6982936 (= e!4196890 tp!1928611)))

(assert (= (and setNonEmpty!47590 condSetEmpty!47596) setIsEmpty!47596))

(assert (= (and setNonEmpty!47590 (not condSetEmpty!47596)) setNonEmpty!47596))

(assert (= setNonEmpty!47596 b!6982936))

(declare-fun m!7669750 () Bool)

(assert (=> setNonEmpty!47596 m!7669750))

(declare-fun b_lambda!261875 () Bool)

(assert (= b_lambda!261873 (or b!6982754 b_lambda!261875)))

(declare-fun bs!1861170 () Bool)

(declare-fun d!2174743 () Bool)

(assert (= bs!1861170 (and d!2174743 b!6982754)))

(declare-fun validRegex!8842 (Regex!17182) Bool)

(assert (=> bs!1861170 (= (dynLambda!26796 lambda!399550 (h!73415 lt!2482486)) (validRegex!8842 (h!73415 lt!2482486)))))

(declare-fun m!7669752 () Bool)

(assert (=> bs!1861170 m!7669752))

(assert (=> b!6982912 d!2174743))

(declare-fun b_lambda!261877 () Bool)

(assert (= b_lambda!261869 (or b!6982748 b_lambda!261877)))

(declare-fun bs!1861171 () Bool)

(declare-fun d!2174745 () Bool)

(assert (= bs!1861171 (and d!2174745 b!6982748)))

(assert (=> bs!1861171 (= (dynLambda!26793 lambda!399551 lt!2482487) (derivationStepZipperUp!1832 lt!2482487 (h!73416 s!7408)))))

(assert (=> bs!1861171 m!7669502))

(assert (=> d!2174709 d!2174745))

(declare-fun b_lambda!261879 () Bool)

(assert (= b_lambda!261871 (or b!6982751 b_lambda!261879)))

(declare-fun bs!1861172 () Bool)

(declare-fun d!2174747 () Bool)

(assert (= bs!1861172 (and d!2174747 b!6982751)))

(assert (=> bs!1861172 (= (dynLambda!26795 lambda!399548 lt!2482585) (matchZipper!2722 (set.insert lt!2482585 (as set.empty (Set Context!12356))) s!7408))))

(declare-fun m!7669754 () Bool)

(assert (=> bs!1861172 m!7669754))

(assert (=> bs!1861172 m!7669754))

(declare-fun m!7669756 () Bool)

(assert (=> bs!1861172 m!7669756))

(assert (=> d!2174721 d!2174747))

(declare-fun b_lambda!261881 () Bool)

(assert (= b_lambda!261867 (or b!6982754 b_lambda!261881)))

(declare-fun bs!1861173 () Bool)

(declare-fun d!2174749 () Bool)

(assert (= bs!1861173 (and d!2174749 b!6982754)))

(declare-fun lt!2482594 () Unit!161018)

(assert (=> bs!1861173 (= lt!2482594 (lemmaConcatPreservesForall!518 (exprs!6678 lt!2482574) (exprs!6678 ct2!306) lambda!399550))))

(assert (=> bs!1861173 (= (dynLambda!26792 lambda!399549 lt!2482574) (Context!12357 (++!15127 (exprs!6678 lt!2482574) (exprs!6678 ct2!306))))))

(declare-fun m!7669758 () Bool)

(assert (=> bs!1861173 m!7669758))

(declare-fun m!7669760 () Bool)

(assert (=> bs!1861173 m!7669760))

(assert (=> d!2174691 d!2174749))

(push 1)

(assert (not d!2174687))

(assert (not b!6982825))

(assert (not d!2174717))

(assert (not b!6982906))

(assert (not d!2174695))

(assert (not b!6982889))

(assert (not b!6982904))

(assert (not bs!1861173))

(assert (not d!2174725))

(assert (not d!2174721))

(assert (not bm!633747))

(assert (not d!2174731))

(assert (not bs!1861171))

(assert (not b!6982833))

(assert (not b!6982895))

(assert (not b!6982903))

(assert (not d!2174709))

(assert (not bm!633744))

(assert tp_is_empty!43589)

(assert (not b_lambda!261877))

(assert (not bs!1861170))

(assert (not b!6982876))

(assert (not d!2174723))

(assert (not b!6982849))

(assert (not bm!633730))

(assert (not b!6982931))

(assert (not b!6982905))

(assert (not bm!633749))

(assert (not b!6982887))

(assert (not b!6982832))

(assert (not d!2174741))

(assert (not d!2174727))

(assert (not setNonEmpty!47596))

(assert (not b!6982894))

(assert (not d!2174707))

(assert (not b!6982936))

(assert (not bm!633743))

(assert (not d!2174701))

(assert (not d!2174719))

(assert (not b!6982920))

(assert (not d!2174739))

(assert (not d!2174715))

(assert (not bs!1861172))

(assert (not b!6982918))

(assert (not b!6982919))

(assert (not b!6982915))

(assert (not b_lambda!261879))

(assert (not b!6982913))

(assert (not b!6982824))

(assert (not d!2174691))

(assert (not b_lambda!261875))

(assert (not d!2174711))

(assert (not d!2174735))

(assert (not d!2174689))

(assert (not b!6982925))

(assert (not b!6982847))

(assert (not b!6982907))

(assert (not d!2174737))

(assert (not b!6982930))

(assert (not b!6982914))

(assert (not d!2174693))

(assert (not d!2174729))

(assert (not b_lambda!261881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

