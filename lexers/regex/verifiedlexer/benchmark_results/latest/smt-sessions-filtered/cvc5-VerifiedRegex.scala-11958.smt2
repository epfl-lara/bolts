; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!669222 () Bool)

(assert start!669222)

(declare-fun b!6978505 () Bool)

(assert (=> b!6978505 true))

(declare-fun b!6978504 () Bool)

(assert (=> b!6978504 true))

(declare-fun b!6978499 () Bool)

(assert (=> b!6978499 true))

(declare-fun b!6978497 () Bool)

(declare-fun e!4194106 () Bool)

(declare-fun tp!1927738 () Bool)

(assert (=> b!6978497 (= e!4194106 tp!1927738)))

(declare-fun b!6978498 () Bool)

(declare-fun res!2845649 () Bool)

(declare-fun e!4194102 () Bool)

(assert (=> b!6978498 (=> (not res!2845649) (not e!4194102))))

(declare-datatypes ((C!34594 0))(
  ( (C!34595 (val!26999 Int)) )
))
(declare-datatypes ((List!67031 0))(
  ( (Nil!66907) (Cons!66907 (h!73355 C!34594) (t!380774 List!67031)) )
))
(declare-fun s!7408 () List!67031)

(assert (=> b!6978498 (= res!2845649 (is-Cons!66907 s!7408))))

(declare-fun e!4194107 () Bool)

(declare-fun e!4194103 () Bool)

(assert (=> b!6978499 (= e!4194107 e!4194103)))

(declare-fun res!2845655 () Bool)

(assert (=> b!6978499 (=> res!2845655 e!4194103)))

(declare-datatypes ((Regex!17162 0))(
  ( (ElementMatch!17162 (c!1293477 C!34594)) (Concat!26007 (regOne!34836 Regex!17162) (regTwo!34836 Regex!17162)) (EmptyExpr!17162) (Star!17162 (reg!17491 Regex!17162)) (EmptyLang!17162) (Union!17162 (regOne!34837 Regex!17162) (regTwo!34837 Regex!17162)) )
))
(declare-datatypes ((List!67032 0))(
  ( (Nil!66908) (Cons!66908 (h!73356 Regex!17162) (t!380775 List!67032)) )
))
(declare-datatypes ((Context!12316 0))(
  ( (Context!12317 (exprs!6658 List!67032)) )
))
(declare-fun lt!2480818 () (Set Context!12316))

(declare-fun lt!2480820 () (Set Context!12316))

(declare-fun derivationStepZipper!2642 ((Set Context!12316) C!34594) (Set Context!12316))

(assert (=> b!6978499 (= res!2845655 (not (= (derivationStepZipper!2642 lt!2480818 (h!73355 s!7408)) lt!2480820)))))

(declare-fun lt!2480824 () Context!12316)

(declare-fun lambda!398613 () Int)

(declare-fun flatMap!2148 ((Set Context!12316) Int) (Set Context!12316))

(declare-fun derivationStepZipperUp!1812 (Context!12316 C!34594) (Set Context!12316))

(assert (=> b!6978499 (= (flatMap!2148 lt!2480818 lambda!398613) (derivationStepZipperUp!1812 lt!2480824 (h!73355 s!7408)))))

(declare-datatypes ((Unit!160973 0))(
  ( (Unit!160974) )
))
(declare-fun lt!2480819 () Unit!160973)

(declare-fun lemmaFlatMapOnSingletonSet!1663 ((Set Context!12316) Context!12316 Int) Unit!160973)

(assert (=> b!6978499 (= lt!2480819 (lemmaFlatMapOnSingletonSet!1663 lt!2480818 lt!2480824 lambda!398613))))

(assert (=> b!6978499 (= lt!2480820 (derivationStepZipperUp!1812 lt!2480824 (h!73355 s!7408)))))

(declare-fun lt!2480813 () Context!12316)

(declare-fun lt!2480812 () Unit!160973)

(declare-fun lambda!398612 () Int)

(declare-fun ct2!306 () Context!12316)

(declare-fun lemmaConcatPreservesForall!498 (List!67032 List!67032 Int) Unit!160973)

(assert (=> b!6978499 (= lt!2480812 (lemmaConcatPreservesForall!498 (exprs!6658 lt!2480813) (exprs!6658 ct2!306) lambda!398612))))

(declare-fun b!6978500 () Bool)

(declare-fun res!2845653 () Bool)

(declare-fun e!4194101 () Bool)

(assert (=> b!6978500 (=> res!2845653 e!4194101)))

(declare-fun lt!2480816 () Context!12316)

(declare-fun lt!2480823 () (Set Context!12316))

(assert (=> b!6978500 (= res!2845653 (not (set.member lt!2480816 lt!2480823)))))

(declare-fun setIsEmpty!47446 () Bool)

(declare-fun setRes!47446 () Bool)

(assert (=> setIsEmpty!47446 setRes!47446))

(declare-fun b!6978501 () Bool)

(declare-fun res!2845656 () Bool)

(assert (=> b!6978501 (=> res!2845656 e!4194103)))

(assert (=> b!6978501 (= res!2845656 (not (is-Cons!66908 (exprs!6658 lt!2480813))))))

(declare-fun b!6978502 () Bool)

(declare-fun forall!16039 (List!67032 Int) Bool)

(declare-fun tail!13128 (List!67032) List!67032)

(assert (=> b!6978502 (= e!4194103 (forall!16039 (tail!13128 (exprs!6658 lt!2480813)) lambda!398612))))

(declare-fun b!6978503 () Bool)

(declare-fun res!2845652 () Bool)

(assert (=> b!6978503 (=> res!2845652 e!4194103)))

(declare-fun nullable!6922 (Regex!17162) Bool)

(assert (=> b!6978503 (= res!2845652 (not (nullable!6922 (h!73356 (exprs!6658 lt!2480813)))))))

(declare-fun res!2845650 () Bool)

(assert (=> start!669222 (=> (not res!2845650) (not e!4194102))))

(declare-fun matchZipper!2702 ((Set Context!12316) List!67031) Bool)

(assert (=> start!669222 (= res!2845650 (matchZipper!2702 lt!2480823 s!7408))))

(declare-fun z1!570 () (Set Context!12316))

(declare-fun appendTo!283 ((Set Context!12316) Context!12316) (Set Context!12316))

(assert (=> start!669222 (= lt!2480823 (appendTo!283 z1!570 ct2!306))))

(assert (=> start!669222 e!4194102))

(declare-fun condSetEmpty!47446 () Bool)

(assert (=> start!669222 (= condSetEmpty!47446 (= z1!570 (as set.empty (Set Context!12316))))))

(assert (=> start!669222 setRes!47446))

(declare-fun e!4194105 () Bool)

(declare-fun inv!85765 (Context!12316) Bool)

(assert (=> start!669222 (and (inv!85765 ct2!306) e!4194105)))

(declare-fun e!4194100 () Bool)

(assert (=> start!669222 e!4194100))

(declare-fun e!4194104 () Bool)

(assert (=> b!6978504 (= e!4194101 e!4194104)))

(declare-fun res!2845654 () Bool)

(assert (=> b!6978504 (=> res!2845654 e!4194104)))

(assert (=> b!6978504 (= res!2845654 (or (not (= lt!2480824 lt!2480816)) (not (set.member lt!2480813 z1!570))))))

(declare-fun ++!15107 (List!67032 List!67032) List!67032)

(assert (=> b!6978504 (= lt!2480824 (Context!12317 (++!15107 (exprs!6658 lt!2480813) (exprs!6658 ct2!306))))))

(declare-fun lt!2480817 () Unit!160973)

(assert (=> b!6978504 (= lt!2480817 (lemmaConcatPreservesForall!498 (exprs!6658 lt!2480813) (exprs!6658 ct2!306) lambda!398612))))

(declare-fun lambda!398611 () Int)

(declare-fun mapPost2!17 ((Set Context!12316) Int Context!12316) Context!12316)

(assert (=> b!6978504 (= lt!2480813 (mapPost2!17 z1!570 lambda!398611 lt!2480816))))

(assert (=> b!6978505 (= e!4194102 (not e!4194101))))

(declare-fun res!2845651 () Bool)

(assert (=> b!6978505 (=> res!2845651 e!4194101)))

(declare-fun lt!2480822 () (Set Context!12316))

(assert (=> b!6978505 (= res!2845651 (not (matchZipper!2702 lt!2480822 s!7408)))))

(assert (=> b!6978505 (= lt!2480822 (set.insert lt!2480816 (as set.empty (Set Context!12316))))))

(declare-fun lambda!398610 () Int)

(declare-fun getWitness!1021 ((Set Context!12316) Int) Context!12316)

(assert (=> b!6978505 (= lt!2480816 (getWitness!1021 lt!2480823 lambda!398610))))

(declare-datatypes ((List!67033 0))(
  ( (Nil!66909) (Cons!66909 (h!73357 Context!12316) (t!380776 List!67033)) )
))
(declare-fun lt!2480821 () List!67033)

(declare-fun exists!2910 (List!67033 Int) Bool)

(assert (=> b!6978505 (exists!2910 lt!2480821 lambda!398610)))

(declare-fun lt!2480814 () Unit!160973)

(declare-fun lemmaZipperMatchesExistsMatchingContext!131 (List!67033 List!67031) Unit!160973)

(assert (=> b!6978505 (= lt!2480814 (lemmaZipperMatchesExistsMatchingContext!131 lt!2480821 s!7408))))

(declare-fun toList!10522 ((Set Context!12316)) List!67033)

(assert (=> b!6978505 (= lt!2480821 (toList!10522 lt!2480823))))

(declare-fun b!6978506 () Bool)

(declare-fun tp!1927737 () Bool)

(assert (=> b!6978506 (= e!4194105 tp!1927737)))

(declare-fun b!6978507 () Bool)

(assert (=> b!6978507 (= e!4194104 e!4194107)))

(declare-fun res!2845648 () Bool)

(assert (=> b!6978507 (=> res!2845648 e!4194107)))

(assert (=> b!6978507 (= res!2845648 (not (= lt!2480818 lt!2480822)))))

(assert (=> b!6978507 (= lt!2480818 (set.insert lt!2480824 (as set.empty (Set Context!12316))))))

(declare-fun lt!2480815 () Unit!160973)

(assert (=> b!6978507 (= lt!2480815 (lemmaConcatPreservesForall!498 (exprs!6658 lt!2480813) (exprs!6658 ct2!306) lambda!398612))))

(declare-fun b!6978508 () Bool)

(declare-fun tp_is_empty!43549 () Bool)

(declare-fun tp!1927735 () Bool)

(assert (=> b!6978508 (= e!4194100 (and tp_is_empty!43549 tp!1927735))))

(declare-fun b!6978509 () Bool)

(declare-fun res!2845647 () Bool)

(assert (=> b!6978509 (=> res!2845647 e!4194103)))

(declare-fun isEmpty!39052 (List!67032) Bool)

(assert (=> b!6978509 (= res!2845647 (isEmpty!39052 (exprs!6658 lt!2480813)))))

(declare-fun setElem!47446 () Context!12316)

(declare-fun setNonEmpty!47446 () Bool)

(declare-fun tp!1927736 () Bool)

(assert (=> setNonEmpty!47446 (= setRes!47446 (and tp!1927736 (inv!85765 setElem!47446) e!4194106))))

(declare-fun setRest!47446 () (Set Context!12316))

(assert (=> setNonEmpty!47446 (= z1!570 (set.union (set.insert setElem!47446 (as set.empty (Set Context!12316))) setRest!47446))))

(assert (= (and start!669222 res!2845650) b!6978498))

(assert (= (and b!6978498 res!2845649) b!6978505))

(assert (= (and b!6978505 (not res!2845651)) b!6978500))

(assert (= (and b!6978500 (not res!2845653)) b!6978504))

(assert (= (and b!6978504 (not res!2845654)) b!6978507))

(assert (= (and b!6978507 (not res!2845648)) b!6978499))

(assert (= (and b!6978499 (not res!2845655)) b!6978501))

(assert (= (and b!6978501 (not res!2845656)) b!6978509))

(assert (= (and b!6978509 (not res!2845647)) b!6978503))

(assert (= (and b!6978503 (not res!2845652)) b!6978502))

(assert (= (and start!669222 condSetEmpty!47446) setIsEmpty!47446))

(assert (= (and start!669222 (not condSetEmpty!47446)) setNonEmpty!47446))

(assert (= setNonEmpty!47446 b!6978497))

(assert (= start!669222 b!6978506))

(assert (= (and start!669222 (is-Cons!66907 s!7408)) b!6978508))

(declare-fun m!7664338 () Bool)

(assert (=> b!6978502 m!7664338))

(assert (=> b!6978502 m!7664338))

(declare-fun m!7664340 () Bool)

(assert (=> b!6978502 m!7664340))

(declare-fun m!7664342 () Bool)

(assert (=> setNonEmpty!47446 m!7664342))

(declare-fun m!7664344 () Bool)

(assert (=> b!6978500 m!7664344))

(declare-fun m!7664346 () Bool)

(assert (=> start!669222 m!7664346))

(declare-fun m!7664348 () Bool)

(assert (=> start!669222 m!7664348))

(declare-fun m!7664350 () Bool)

(assert (=> start!669222 m!7664350))

(declare-fun m!7664352 () Bool)

(assert (=> b!6978504 m!7664352))

(declare-fun m!7664354 () Bool)

(assert (=> b!6978504 m!7664354))

(declare-fun m!7664356 () Bool)

(assert (=> b!6978504 m!7664356))

(declare-fun m!7664358 () Bool)

(assert (=> b!6978504 m!7664358))

(declare-fun m!7664360 () Bool)

(assert (=> b!6978499 m!7664360))

(declare-fun m!7664362 () Bool)

(assert (=> b!6978499 m!7664362))

(declare-fun m!7664364 () Bool)

(assert (=> b!6978499 m!7664364))

(declare-fun m!7664366 () Bool)

(assert (=> b!6978499 m!7664366))

(assert (=> b!6978499 m!7664356))

(declare-fun m!7664368 () Bool)

(assert (=> b!6978509 m!7664368))

(declare-fun m!7664370 () Bool)

(assert (=> b!6978505 m!7664370))

(declare-fun m!7664372 () Bool)

(assert (=> b!6978505 m!7664372))

(declare-fun m!7664374 () Bool)

(assert (=> b!6978505 m!7664374))

(declare-fun m!7664376 () Bool)

(assert (=> b!6978505 m!7664376))

(declare-fun m!7664378 () Bool)

(assert (=> b!6978505 m!7664378))

(declare-fun m!7664380 () Bool)

(assert (=> b!6978505 m!7664380))

(declare-fun m!7664382 () Bool)

(assert (=> b!6978503 m!7664382))

(declare-fun m!7664384 () Bool)

(assert (=> b!6978507 m!7664384))

(assert (=> b!6978507 m!7664356))

(push 1)

(assert (not b!6978506))

(assert (not b!6978502))

(assert (not b!6978504))

(assert (not b!6978499))

(assert (not b!6978508))

(assert (not b!6978497))

(assert tp_is_empty!43549)

(assert (not b!6978509))

(assert (not b!6978505))

(assert (not start!669222))

(assert (not b!6978507))

(assert (not setNonEmpty!47446))

(assert (not b!6978503))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6978570 () Bool)

(declare-fun e!4194137 () List!67032)

(assert (=> b!6978570 (= e!4194137 (Cons!66908 (h!73356 (exprs!6658 lt!2480813)) (++!15107 (t!380775 (exprs!6658 lt!2480813)) (exprs!6658 ct2!306))))))

(declare-fun b!6978569 () Bool)

(assert (=> b!6978569 (= e!4194137 (exprs!6658 ct2!306))))

(declare-fun b!6978571 () Bool)

(declare-fun res!2845693 () Bool)

(declare-fun e!4194136 () Bool)

(assert (=> b!6978571 (=> (not res!2845693) (not e!4194136))))

(declare-fun lt!2480868 () List!67032)

(declare-fun size!40865 (List!67032) Int)

(assert (=> b!6978571 (= res!2845693 (= (size!40865 lt!2480868) (+ (size!40865 (exprs!6658 lt!2480813)) (size!40865 (exprs!6658 ct2!306)))))))

(declare-fun d!2172817 () Bool)

(assert (=> d!2172817 e!4194136))

(declare-fun res!2845692 () Bool)

(assert (=> d!2172817 (=> (not res!2845692) (not e!4194136))))

(declare-fun content!13181 (List!67032) (Set Regex!17162))

(assert (=> d!2172817 (= res!2845692 (= (content!13181 lt!2480868) (set.union (content!13181 (exprs!6658 lt!2480813)) (content!13181 (exprs!6658 ct2!306)))))))

(assert (=> d!2172817 (= lt!2480868 e!4194137)))

(declare-fun c!1293489 () Bool)

(assert (=> d!2172817 (= c!1293489 (is-Nil!66908 (exprs!6658 lt!2480813)))))

(assert (=> d!2172817 (= (++!15107 (exprs!6658 lt!2480813) (exprs!6658 ct2!306)) lt!2480868)))

(declare-fun b!6978572 () Bool)

(assert (=> b!6978572 (= e!4194136 (or (not (= (exprs!6658 ct2!306) Nil!66908)) (= lt!2480868 (exprs!6658 lt!2480813))))))

(assert (= (and d!2172817 c!1293489) b!6978569))

(assert (= (and d!2172817 (not c!1293489)) b!6978570))

(assert (= (and d!2172817 res!2845692) b!6978571))

(assert (= (and b!6978571 res!2845693) b!6978572))

(declare-fun m!7664434 () Bool)

(assert (=> b!6978570 m!7664434))

(declare-fun m!7664436 () Bool)

(assert (=> b!6978571 m!7664436))

(declare-fun m!7664438 () Bool)

(assert (=> b!6978571 m!7664438))

(declare-fun m!7664440 () Bool)

(assert (=> b!6978571 m!7664440))

(declare-fun m!7664442 () Bool)

(assert (=> d!2172817 m!7664442))

(declare-fun m!7664444 () Bool)

(assert (=> d!2172817 m!7664444))

(declare-fun m!7664446 () Bool)

(assert (=> d!2172817 m!7664446))

(assert (=> b!6978504 d!2172817))

(declare-fun d!2172819 () Bool)

(assert (=> d!2172819 (forall!16039 (++!15107 (exprs!6658 lt!2480813) (exprs!6658 ct2!306)) lambda!398612)))

(declare-fun lt!2480871 () Unit!160973)

(declare-fun choose!51973 (List!67032 List!67032 Int) Unit!160973)

(assert (=> d!2172819 (= lt!2480871 (choose!51973 (exprs!6658 lt!2480813) (exprs!6658 ct2!306) lambda!398612))))

(assert (=> d!2172819 (forall!16039 (exprs!6658 lt!2480813) lambda!398612)))

(assert (=> d!2172819 (= (lemmaConcatPreservesForall!498 (exprs!6658 lt!2480813) (exprs!6658 ct2!306) lambda!398612) lt!2480871)))

(declare-fun bs!1860355 () Bool)

(assert (= bs!1860355 d!2172819))

(assert (=> bs!1860355 m!7664354))

(assert (=> bs!1860355 m!7664354))

(declare-fun m!7664448 () Bool)

(assert (=> bs!1860355 m!7664448))

(declare-fun m!7664450 () Bool)

(assert (=> bs!1860355 m!7664450))

(declare-fun m!7664452 () Bool)

(assert (=> bs!1860355 m!7664452))

(assert (=> b!6978504 d!2172819))

(declare-fun d!2172821 () Bool)

(declare-fun e!4194140 () Bool)

(assert (=> d!2172821 e!4194140))

(declare-fun res!2845696 () Bool)

(assert (=> d!2172821 (=> (not res!2845696) (not e!4194140))))

(declare-fun lt!2480874 () Context!12316)

(declare-fun dynLambda!26702 (Int Context!12316) Context!12316)

(assert (=> d!2172821 (= res!2845696 (= lt!2480816 (dynLambda!26702 lambda!398611 lt!2480874)))))

(declare-fun choose!51974 ((Set Context!12316) Int Context!12316) Context!12316)

(assert (=> d!2172821 (= lt!2480874 (choose!51974 z1!570 lambda!398611 lt!2480816))))

(declare-fun map!15412 ((Set Context!12316) Int) (Set Context!12316))

(assert (=> d!2172821 (set.member lt!2480816 (map!15412 z1!570 lambda!398611))))

(assert (=> d!2172821 (= (mapPost2!17 z1!570 lambda!398611 lt!2480816) lt!2480874)))

(declare-fun b!6978576 () Bool)

(assert (=> b!6978576 (= e!4194140 (set.member lt!2480874 z1!570))))

(assert (= (and d!2172821 res!2845696) b!6978576))

(declare-fun b_lambda!261263 () Bool)

(assert (=> (not b_lambda!261263) (not d!2172821)))

(declare-fun m!7664454 () Bool)

(assert (=> d!2172821 m!7664454))

(declare-fun m!7664456 () Bool)

(assert (=> d!2172821 m!7664456))

(declare-fun m!7664458 () Bool)

(assert (=> d!2172821 m!7664458))

(declare-fun m!7664460 () Bool)

(assert (=> d!2172821 m!7664460))

(declare-fun m!7664462 () Bool)

(assert (=> b!6978576 m!7664462))

(assert (=> b!6978504 d!2172821))

(declare-fun bs!1860356 () Bool)

(declare-fun d!2172823 () Bool)

(assert (= bs!1860356 (and d!2172823 b!6978504)))

(declare-fun lambda!398638 () Int)

(assert (=> bs!1860356 (= lambda!398638 lambda!398612)))

(assert (=> d!2172823 (= (inv!85765 setElem!47446) (forall!16039 (exprs!6658 setElem!47446) lambda!398638))))

(declare-fun bs!1860357 () Bool)

(assert (= bs!1860357 d!2172823))

(declare-fun m!7664464 () Bool)

(assert (=> bs!1860357 m!7664464))

(assert (=> setNonEmpty!47446 d!2172823))

(declare-fun d!2172825 () Bool)

(declare-fun e!4194143 () Bool)

(assert (=> d!2172825 e!4194143))

(declare-fun res!2845700 () Bool)

(assert (=> d!2172825 (=> (not res!2845700) (not e!4194143))))

(declare-fun lt!2480877 () Context!12316)

(declare-fun dynLambda!26703 (Int Context!12316) Bool)

(assert (=> d!2172825 (= res!2845700 (dynLambda!26703 lambda!398610 lt!2480877))))

(declare-fun getWitness!1023 (List!67033 Int) Context!12316)

(assert (=> d!2172825 (= lt!2480877 (getWitness!1023 (toList!10522 lt!2480823) lambda!398610))))

(declare-fun exists!2912 ((Set Context!12316) Int) Bool)

(assert (=> d!2172825 (exists!2912 lt!2480823 lambda!398610)))

(assert (=> d!2172825 (= (getWitness!1021 lt!2480823 lambda!398610) lt!2480877)))

(declare-fun b!6978579 () Bool)

(assert (=> b!6978579 (= e!4194143 (set.member lt!2480877 lt!2480823))))

(assert (= (and d!2172825 res!2845700) b!6978579))

(declare-fun b_lambda!261265 () Bool)

(assert (=> (not b_lambda!261265) (not d!2172825)))

(declare-fun m!7664466 () Bool)

(assert (=> d!2172825 m!7664466))

(assert (=> d!2172825 m!7664370))

(assert (=> d!2172825 m!7664370))

(declare-fun m!7664468 () Bool)

(assert (=> d!2172825 m!7664468))

(declare-fun m!7664470 () Bool)

(assert (=> d!2172825 m!7664470))

(declare-fun m!7664472 () Bool)

(assert (=> b!6978579 m!7664472))

(assert (=> b!6978505 d!2172825))

(declare-fun d!2172827 () Bool)

(declare-fun c!1293492 () Bool)

(declare-fun isEmpty!39054 (List!67031) Bool)

(assert (=> d!2172827 (= c!1293492 (isEmpty!39054 s!7408))))

(declare-fun e!4194146 () Bool)

(assert (=> d!2172827 (= (matchZipper!2702 lt!2480822 s!7408) e!4194146)))

(declare-fun b!6978584 () Bool)

(declare-fun nullableZipper!2393 ((Set Context!12316)) Bool)

(assert (=> b!6978584 (= e!4194146 (nullableZipper!2393 lt!2480822))))

(declare-fun b!6978585 () Bool)

(declare-fun head!14062 (List!67031) C!34594)

(declare-fun tail!13130 (List!67031) List!67031)

(assert (=> b!6978585 (= e!4194146 (matchZipper!2702 (derivationStepZipper!2642 lt!2480822 (head!14062 s!7408)) (tail!13130 s!7408)))))

(assert (= (and d!2172827 c!1293492) b!6978584))

(assert (= (and d!2172827 (not c!1293492)) b!6978585))

(declare-fun m!7664474 () Bool)

(assert (=> d!2172827 m!7664474))

(declare-fun m!7664476 () Bool)

(assert (=> b!6978584 m!7664476))

(declare-fun m!7664478 () Bool)

(assert (=> b!6978585 m!7664478))

(assert (=> b!6978585 m!7664478))

(declare-fun m!7664480 () Bool)

(assert (=> b!6978585 m!7664480))

(declare-fun m!7664482 () Bool)

(assert (=> b!6978585 m!7664482))

(assert (=> b!6978585 m!7664480))

(assert (=> b!6978585 m!7664482))

(declare-fun m!7664484 () Bool)

(assert (=> b!6978585 m!7664484))

(assert (=> b!6978505 d!2172827))

(declare-fun bs!1860358 () Bool)

(declare-fun d!2172829 () Bool)

(assert (= bs!1860358 (and d!2172829 b!6978505)))

(declare-fun lambda!398641 () Int)

(assert (=> bs!1860358 (not (= lambda!398641 lambda!398610))))

(assert (=> d!2172829 true))

(declare-fun order!27821 () Int)

(declare-fun dynLambda!26704 (Int Int) Int)

(assert (=> d!2172829 (< (dynLambda!26704 order!27821 lambda!398610) (dynLambda!26704 order!27821 lambda!398641))))

(declare-fun forall!16041 (List!67033 Int) Bool)

(assert (=> d!2172829 (= (exists!2910 lt!2480821 lambda!398610) (not (forall!16041 lt!2480821 lambda!398641)))))

(declare-fun bs!1860359 () Bool)

(assert (= bs!1860359 d!2172829))

(declare-fun m!7664486 () Bool)

(assert (=> bs!1860359 m!7664486))

(assert (=> b!6978505 d!2172829))

(declare-fun bs!1860360 () Bool)

(declare-fun d!2172831 () Bool)

(assert (= bs!1860360 (and d!2172831 b!6978505)))

(declare-fun lambda!398644 () Int)

(assert (=> bs!1860360 (= lambda!398644 lambda!398610)))

(declare-fun bs!1860361 () Bool)

(assert (= bs!1860361 (and d!2172831 d!2172829)))

(assert (=> bs!1860361 (not (= lambda!398644 lambda!398641))))

(assert (=> d!2172831 true))

(assert (=> d!2172831 (exists!2910 lt!2480821 lambda!398644)))

(declare-fun lt!2480880 () Unit!160973)

(declare-fun choose!51975 (List!67033 List!67031) Unit!160973)

(assert (=> d!2172831 (= lt!2480880 (choose!51975 lt!2480821 s!7408))))

(declare-fun content!13182 (List!67033) (Set Context!12316))

(assert (=> d!2172831 (matchZipper!2702 (content!13182 lt!2480821) s!7408)))

(assert (=> d!2172831 (= (lemmaZipperMatchesExistsMatchingContext!131 lt!2480821 s!7408) lt!2480880)))

(declare-fun bs!1860362 () Bool)

(assert (= bs!1860362 d!2172831))

(declare-fun m!7664488 () Bool)

(assert (=> bs!1860362 m!7664488))

(declare-fun m!7664490 () Bool)

(assert (=> bs!1860362 m!7664490))

(declare-fun m!7664492 () Bool)

(assert (=> bs!1860362 m!7664492))

(assert (=> bs!1860362 m!7664492))

(declare-fun m!7664494 () Bool)

(assert (=> bs!1860362 m!7664494))

(assert (=> b!6978505 d!2172831))

(declare-fun d!2172833 () Bool)

(declare-fun e!4194149 () Bool)

(assert (=> d!2172833 e!4194149))

(declare-fun res!2845703 () Bool)

(assert (=> d!2172833 (=> (not res!2845703) (not e!4194149))))

(declare-fun lt!2480883 () List!67033)

(declare-fun noDuplicate!2483 (List!67033) Bool)

(assert (=> d!2172833 (= res!2845703 (noDuplicate!2483 lt!2480883))))

(declare-fun choose!51976 ((Set Context!12316)) List!67033)

(assert (=> d!2172833 (= lt!2480883 (choose!51976 lt!2480823))))

(assert (=> d!2172833 (= (toList!10522 lt!2480823) lt!2480883)))

(declare-fun b!6978590 () Bool)

(assert (=> b!6978590 (= e!4194149 (= (content!13182 lt!2480883) lt!2480823))))

(assert (= (and d!2172833 res!2845703) b!6978590))

(declare-fun m!7664496 () Bool)

(assert (=> d!2172833 m!7664496))

(declare-fun m!7664498 () Bool)

(assert (=> d!2172833 m!7664498))

(declare-fun m!7664500 () Bool)

(assert (=> b!6978590 m!7664500))

(assert (=> b!6978505 d!2172833))

(declare-fun d!2172835 () Bool)

(declare-fun c!1293495 () Bool)

(assert (=> d!2172835 (= c!1293495 (isEmpty!39054 s!7408))))

(declare-fun e!4194150 () Bool)

(assert (=> d!2172835 (= (matchZipper!2702 lt!2480823 s!7408) e!4194150)))

(declare-fun b!6978591 () Bool)

(assert (=> b!6978591 (= e!4194150 (nullableZipper!2393 lt!2480823))))

(declare-fun b!6978592 () Bool)

(assert (=> b!6978592 (= e!4194150 (matchZipper!2702 (derivationStepZipper!2642 lt!2480823 (head!14062 s!7408)) (tail!13130 s!7408)))))

(assert (= (and d!2172835 c!1293495) b!6978591))

(assert (= (and d!2172835 (not c!1293495)) b!6978592))

(assert (=> d!2172835 m!7664474))

(declare-fun m!7664502 () Bool)

(assert (=> b!6978591 m!7664502))

(assert (=> b!6978592 m!7664478))

(assert (=> b!6978592 m!7664478))

(declare-fun m!7664504 () Bool)

(assert (=> b!6978592 m!7664504))

(assert (=> b!6978592 m!7664482))

(assert (=> b!6978592 m!7664504))

(assert (=> b!6978592 m!7664482))

(declare-fun m!7664506 () Bool)

(assert (=> b!6978592 m!7664506))

(assert (=> start!669222 d!2172835))

(declare-fun bs!1860365 () Bool)

(declare-fun d!2172839 () Bool)

(assert (= bs!1860365 (and d!2172839 b!6978504)))

(declare-fun lambda!398652 () Int)

(assert (=> bs!1860365 (= lambda!398652 lambda!398611)))

(assert (=> d!2172839 true))

(assert (=> d!2172839 (= (appendTo!283 z1!570 ct2!306) (map!15412 z1!570 lambda!398652))))

(declare-fun bs!1860366 () Bool)

(assert (= bs!1860366 d!2172839))

(declare-fun m!7664510 () Bool)

(assert (=> bs!1860366 m!7664510))

(assert (=> start!669222 d!2172839))

(declare-fun bs!1860367 () Bool)

(declare-fun d!2172843 () Bool)

(assert (= bs!1860367 (and d!2172843 b!6978504)))

(declare-fun lambda!398653 () Int)

(assert (=> bs!1860367 (= lambda!398653 lambda!398612)))

(declare-fun bs!1860368 () Bool)

(assert (= bs!1860368 (and d!2172843 d!2172823)))

(assert (=> bs!1860368 (= lambda!398653 lambda!398638)))

(assert (=> d!2172843 (= (inv!85765 ct2!306) (forall!16039 (exprs!6658 ct2!306) lambda!398653))))

(declare-fun bs!1860369 () Bool)

(assert (= bs!1860369 d!2172843))

(declare-fun m!7664512 () Bool)

(assert (=> bs!1860369 m!7664512))

(assert (=> start!669222 d!2172843))

(assert (=> b!6978507 d!2172819))

(declare-fun d!2172845 () Bool)

(declare-fun res!2845708 () Bool)

(declare-fun e!4194155 () Bool)

(assert (=> d!2172845 (=> res!2845708 e!4194155)))

(assert (=> d!2172845 (= res!2845708 (is-Nil!66908 (tail!13128 (exprs!6658 lt!2480813))))))

(assert (=> d!2172845 (= (forall!16039 (tail!13128 (exprs!6658 lt!2480813)) lambda!398612) e!4194155)))

(declare-fun b!6978597 () Bool)

(declare-fun e!4194156 () Bool)

(assert (=> b!6978597 (= e!4194155 e!4194156)))

(declare-fun res!2845709 () Bool)

(assert (=> b!6978597 (=> (not res!2845709) (not e!4194156))))

(declare-fun dynLambda!26705 (Int Regex!17162) Bool)

(assert (=> b!6978597 (= res!2845709 (dynLambda!26705 lambda!398612 (h!73356 (tail!13128 (exprs!6658 lt!2480813)))))))

(declare-fun b!6978598 () Bool)

(assert (=> b!6978598 (= e!4194156 (forall!16039 (t!380775 (tail!13128 (exprs!6658 lt!2480813))) lambda!398612))))

(assert (= (and d!2172845 (not res!2845708)) b!6978597))

(assert (= (and b!6978597 res!2845709) b!6978598))

(declare-fun b_lambda!261267 () Bool)

(assert (=> (not b_lambda!261267) (not b!6978597)))

(declare-fun m!7664514 () Bool)

(assert (=> b!6978597 m!7664514))

(declare-fun m!7664516 () Bool)

(assert (=> b!6978598 m!7664516))

(assert (=> b!6978502 d!2172845))

(declare-fun d!2172847 () Bool)

(assert (=> d!2172847 (= (tail!13128 (exprs!6658 lt!2480813)) (t!380775 (exprs!6658 lt!2480813)))))

(assert (=> b!6978502 d!2172847))

(declare-fun d!2172849 () Bool)

(declare-fun nullableFct!2597 (Regex!17162) Bool)

(assert (=> d!2172849 (= (nullable!6922 (h!73356 (exprs!6658 lt!2480813))) (nullableFct!2597 (h!73356 (exprs!6658 lt!2480813))))))

(declare-fun bs!1860370 () Bool)

(assert (= bs!1860370 d!2172849))

(declare-fun m!7664518 () Bool)

(assert (=> bs!1860370 m!7664518))

(assert (=> b!6978503 d!2172849))

(declare-fun b!6978609 () Bool)

(declare-fun e!4194165 () (Set Context!12316))

(declare-fun call!633243 () (Set Context!12316))

(assert (=> b!6978609 (= e!4194165 (set.union call!633243 (derivationStepZipperUp!1812 (Context!12317 (t!380775 (exprs!6658 lt!2480824))) (h!73355 s!7408))))))

(declare-fun bm!633238 () Bool)

(declare-fun derivationStepZipperDown!1882 (Regex!17162 Context!12316 C!34594) (Set Context!12316))

(assert (=> bm!633238 (= call!633243 (derivationStepZipperDown!1882 (h!73356 (exprs!6658 lt!2480824)) (Context!12317 (t!380775 (exprs!6658 lt!2480824))) (h!73355 s!7408)))))

(declare-fun b!6978611 () Bool)

(declare-fun e!4194163 () (Set Context!12316))

(assert (=> b!6978611 (= e!4194163 call!633243)))

(declare-fun b!6978612 () Bool)

(declare-fun e!4194164 () Bool)

(assert (=> b!6978612 (= e!4194164 (nullable!6922 (h!73356 (exprs!6658 lt!2480824))))))

(declare-fun b!6978613 () Bool)

(assert (=> b!6978613 (= e!4194165 e!4194163)))

(declare-fun c!1293502 () Bool)

(assert (=> b!6978613 (= c!1293502 (is-Cons!66908 (exprs!6658 lt!2480824)))))

(declare-fun b!6978610 () Bool)

(assert (=> b!6978610 (= e!4194163 (as set.empty (Set Context!12316)))))

(declare-fun d!2172851 () Bool)

(declare-fun c!1293501 () Bool)

(assert (=> d!2172851 (= c!1293501 e!4194164)))

(declare-fun res!2845712 () Bool)

(assert (=> d!2172851 (=> (not res!2845712) (not e!4194164))))

(assert (=> d!2172851 (= res!2845712 (is-Cons!66908 (exprs!6658 lt!2480824)))))

(assert (=> d!2172851 (= (derivationStepZipperUp!1812 lt!2480824 (h!73355 s!7408)) e!4194165)))

(assert (= (and d!2172851 res!2845712) b!6978612))

(assert (= (and d!2172851 c!1293501) b!6978609))

(assert (= (and d!2172851 (not c!1293501)) b!6978613))

(assert (= (and b!6978613 c!1293502) b!6978611))

(assert (= (and b!6978613 (not c!1293502)) b!6978610))

(assert (= (or b!6978609 b!6978611) bm!633238))

(declare-fun m!7664526 () Bool)

(assert (=> b!6978609 m!7664526))

(declare-fun m!7664528 () Bool)

(assert (=> bm!633238 m!7664528))

(declare-fun m!7664530 () Bool)

(assert (=> b!6978612 m!7664530))

(assert (=> b!6978499 d!2172851))

(declare-fun d!2172855 () Bool)

(declare-fun choose!51977 ((Set Context!12316) Int) (Set Context!12316))

(assert (=> d!2172855 (= (flatMap!2148 lt!2480818 lambda!398613) (choose!51977 lt!2480818 lambda!398613))))

(declare-fun bs!1860372 () Bool)

(assert (= bs!1860372 d!2172855))

(declare-fun m!7664532 () Bool)

(assert (=> bs!1860372 m!7664532))

(assert (=> b!6978499 d!2172855))

(declare-fun d!2172857 () Bool)

(declare-fun dynLambda!26706 (Int Context!12316) (Set Context!12316))

(assert (=> d!2172857 (= (flatMap!2148 lt!2480818 lambda!398613) (dynLambda!26706 lambda!398613 lt!2480824))))

(declare-fun lt!2480891 () Unit!160973)

(declare-fun choose!51978 ((Set Context!12316) Context!12316 Int) Unit!160973)

(assert (=> d!2172857 (= lt!2480891 (choose!51978 lt!2480818 lt!2480824 lambda!398613))))

(assert (=> d!2172857 (= lt!2480818 (set.insert lt!2480824 (as set.empty (Set Context!12316))))))

(assert (=> d!2172857 (= (lemmaFlatMapOnSingletonSet!1663 lt!2480818 lt!2480824 lambda!398613) lt!2480891)))

(declare-fun b_lambda!261269 () Bool)

(assert (=> (not b_lambda!261269) (not d!2172857)))

(declare-fun bs!1860373 () Bool)

(assert (= bs!1860373 d!2172857))

(assert (=> bs!1860373 m!7664364))

(declare-fun m!7664534 () Bool)

(assert (=> bs!1860373 m!7664534))

(declare-fun m!7664536 () Bool)

(assert (=> bs!1860373 m!7664536))

(assert (=> bs!1860373 m!7664384))

(assert (=> b!6978499 d!2172857))

(declare-fun bs!1860374 () Bool)

(declare-fun d!2172859 () Bool)

(assert (= bs!1860374 (and d!2172859 b!6978499)))

(declare-fun lambda!398656 () Int)

(assert (=> bs!1860374 (= lambda!398656 lambda!398613)))

(assert (=> d!2172859 true))

(assert (=> d!2172859 (= (derivationStepZipper!2642 lt!2480818 (h!73355 s!7408)) (flatMap!2148 lt!2480818 lambda!398656))))

(declare-fun bs!1860375 () Bool)

(assert (= bs!1860375 d!2172859))

(declare-fun m!7664538 () Bool)

(assert (=> bs!1860375 m!7664538))

(assert (=> b!6978499 d!2172859))

(assert (=> b!6978499 d!2172819))

(declare-fun d!2172861 () Bool)

(assert (=> d!2172861 (= (isEmpty!39052 (exprs!6658 lt!2480813)) (is-Nil!66908 (exprs!6658 lt!2480813)))))

(assert (=> b!6978509 d!2172861))

(declare-fun condSetEmpty!47452 () Bool)

(assert (=> setNonEmpty!47446 (= condSetEmpty!47452 (= setRest!47446 (as set.empty (Set Context!12316))))))

(declare-fun setRes!47452 () Bool)

(assert (=> setNonEmpty!47446 (= tp!1927736 setRes!47452)))

(declare-fun setIsEmpty!47452 () Bool)

(assert (=> setIsEmpty!47452 setRes!47452))

(declare-fun e!4194171 () Bool)

(declare-fun setNonEmpty!47452 () Bool)

(declare-fun setElem!47452 () Context!12316)

(declare-fun tp!1927755 () Bool)

(assert (=> setNonEmpty!47452 (= setRes!47452 (and tp!1927755 (inv!85765 setElem!47452) e!4194171))))

(declare-fun setRest!47452 () (Set Context!12316))

(assert (=> setNonEmpty!47452 (= setRest!47446 (set.union (set.insert setElem!47452 (as set.empty (Set Context!12316))) setRest!47452))))

(declare-fun b!6978626 () Bool)

(declare-fun tp!1927756 () Bool)

(assert (=> b!6978626 (= e!4194171 tp!1927756)))

(assert (= (and setNonEmpty!47446 condSetEmpty!47452) setIsEmpty!47452))

(assert (= (and setNonEmpty!47446 (not condSetEmpty!47452)) setNonEmpty!47452))

(assert (= setNonEmpty!47452 b!6978626))

(declare-fun m!7664552 () Bool)

(assert (=> setNonEmpty!47452 m!7664552))

(declare-fun b!6978631 () Bool)

(declare-fun e!4194174 () Bool)

(declare-fun tp!1927761 () Bool)

(declare-fun tp!1927762 () Bool)

(assert (=> b!6978631 (= e!4194174 (and tp!1927761 tp!1927762))))

(assert (=> b!6978506 (= tp!1927737 e!4194174)))

(assert (= (and b!6978506 (is-Cons!66908 (exprs!6658 ct2!306))) b!6978631))

(declare-fun b!6978632 () Bool)

(declare-fun e!4194175 () Bool)

(declare-fun tp!1927763 () Bool)

(declare-fun tp!1927764 () Bool)

(assert (=> b!6978632 (= e!4194175 (and tp!1927763 tp!1927764))))

(assert (=> b!6978497 (= tp!1927738 e!4194175)))

(assert (= (and b!6978497 (is-Cons!66908 (exprs!6658 setElem!47446))) b!6978632))

(declare-fun b!6978637 () Bool)

(declare-fun e!4194178 () Bool)

(declare-fun tp!1927767 () Bool)

(assert (=> b!6978637 (= e!4194178 (and tp_is_empty!43549 tp!1927767))))

(assert (=> b!6978508 (= tp!1927735 e!4194178)))

(assert (= (and b!6978508 (is-Cons!66907 (t!380774 s!7408))) b!6978637))

(declare-fun b_lambda!261271 () Bool)

(assert (= b_lambda!261269 (or b!6978499 b_lambda!261271)))

(declare-fun bs!1860376 () Bool)

(declare-fun d!2172865 () Bool)

(assert (= bs!1860376 (and d!2172865 b!6978499)))

(assert (=> bs!1860376 (= (dynLambda!26706 lambda!398613 lt!2480824) (derivationStepZipperUp!1812 lt!2480824 (h!73355 s!7408)))))

(assert (=> bs!1860376 m!7664362))

(assert (=> d!2172857 d!2172865))

(declare-fun b_lambda!261273 () Bool)

(assert (= b_lambda!261265 (or b!6978505 b_lambda!261273)))

(declare-fun bs!1860377 () Bool)

(declare-fun d!2172867 () Bool)

(assert (= bs!1860377 (and d!2172867 b!6978505)))

(assert (=> bs!1860377 (= (dynLambda!26703 lambda!398610 lt!2480877) (matchZipper!2702 (set.insert lt!2480877 (as set.empty (Set Context!12316))) s!7408))))

(declare-fun m!7664554 () Bool)

(assert (=> bs!1860377 m!7664554))

(assert (=> bs!1860377 m!7664554))

(declare-fun m!7664556 () Bool)

(assert (=> bs!1860377 m!7664556))

(assert (=> d!2172825 d!2172867))

(declare-fun b_lambda!261275 () Bool)

(assert (= b_lambda!261267 (or b!6978504 b_lambda!261275)))

(declare-fun bs!1860378 () Bool)

(declare-fun d!2172869 () Bool)

(assert (= bs!1860378 (and d!2172869 b!6978504)))

(declare-fun validRegex!8829 (Regex!17162) Bool)

(assert (=> bs!1860378 (= (dynLambda!26705 lambda!398612 (h!73356 (tail!13128 (exprs!6658 lt!2480813)))) (validRegex!8829 (h!73356 (tail!13128 (exprs!6658 lt!2480813)))))))

(declare-fun m!7664558 () Bool)

(assert (=> bs!1860378 m!7664558))

(assert (=> b!6978597 d!2172869))

(declare-fun b_lambda!261277 () Bool)

(assert (= b_lambda!261263 (or b!6978504 b_lambda!261277)))

(declare-fun bs!1860379 () Bool)

(declare-fun d!2172871 () Bool)

(assert (= bs!1860379 (and d!2172871 b!6978504)))

(declare-fun lt!2480892 () Unit!160973)

(assert (=> bs!1860379 (= lt!2480892 (lemmaConcatPreservesForall!498 (exprs!6658 lt!2480874) (exprs!6658 ct2!306) lambda!398612))))

(assert (=> bs!1860379 (= (dynLambda!26702 lambda!398611 lt!2480874) (Context!12317 (++!15107 (exprs!6658 lt!2480874) (exprs!6658 ct2!306))))))

(declare-fun m!7664560 () Bool)

(assert (=> bs!1860379 m!7664560))

(declare-fun m!7664562 () Bool)

(assert (=> bs!1860379 m!7664562))

(assert (=> d!2172821 d!2172871))

(push 1)

(assert (not b!6978631))

(assert (not b!6978585))

(assert (not d!2172835))

(assert (not d!2172833))

(assert (not d!2172831))

(assert (not bs!1860378))

(assert (not d!2172821))

(assert (not d!2172843))

(assert (not b_lambda!261271))

(assert (not setNonEmpty!47452))

(assert tp_is_empty!43549)

(assert (not bs!1860379))

(assert (not b!6978626))

(assert (not b!6978590))

(assert (not d!2172839))

(assert (not b!6978570))

(assert (not b_lambda!261273))

(assert (not d!2172857))

(assert (not bm!633238))

(assert (not d!2172823))

(assert (not b!6978637))

(assert (not b!6978592))

(assert (not d!2172855))

(assert (not bs!1860376))

(assert (not d!2172829))

(assert (not b!6978584))

(assert (not b!6978598))

(assert (not b!6978632))

(assert (not b_lambda!261275))

(assert (not b!6978591))

(assert (not b_lambda!261277))

(assert (not bs!1860377))

(assert (not b!6978571))

(assert (not b!6978609))

(assert (not b!6978612))

(assert (not d!2172827))

(assert (not d!2172819))

(assert (not d!2172817))

(assert (not d!2172859))

(assert (not d!2172825))

(assert (not d!2172849))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2172913 () Bool)

(declare-fun lt!2480916 () Int)

(assert (=> d!2172913 (>= lt!2480916 0)))

(declare-fun e!4194222 () Int)

(assert (=> d!2172913 (= lt!2480916 e!4194222)))

(declare-fun c!1293525 () Bool)

(assert (=> d!2172913 (= c!1293525 (is-Nil!66908 lt!2480868))))

(assert (=> d!2172913 (= (size!40865 lt!2480868) lt!2480916)))

(declare-fun b!6978707 () Bool)

(assert (=> b!6978707 (= e!4194222 0)))

(declare-fun b!6978708 () Bool)

(assert (=> b!6978708 (= e!4194222 (+ 1 (size!40865 (t!380775 lt!2480868))))))

(assert (= (and d!2172913 c!1293525) b!6978707))

(assert (= (and d!2172913 (not c!1293525)) b!6978708))

(declare-fun m!7664654 () Bool)

(assert (=> b!6978708 m!7664654))

(assert (=> b!6978571 d!2172913))

(declare-fun d!2172915 () Bool)

(declare-fun lt!2480917 () Int)

(assert (=> d!2172915 (>= lt!2480917 0)))

(declare-fun e!4194223 () Int)

(assert (=> d!2172915 (= lt!2480917 e!4194223)))

(declare-fun c!1293526 () Bool)

(assert (=> d!2172915 (= c!1293526 (is-Nil!66908 (exprs!6658 lt!2480813)))))

(assert (=> d!2172915 (= (size!40865 (exprs!6658 lt!2480813)) lt!2480917)))

(declare-fun b!6978709 () Bool)

(assert (=> b!6978709 (= e!4194223 0)))

(declare-fun b!6978710 () Bool)

(assert (=> b!6978710 (= e!4194223 (+ 1 (size!40865 (t!380775 (exprs!6658 lt!2480813)))))))

(assert (= (and d!2172915 c!1293526) b!6978709))

(assert (= (and d!2172915 (not c!1293526)) b!6978710))

(declare-fun m!7664656 () Bool)

(assert (=> b!6978710 m!7664656))

(assert (=> b!6978571 d!2172915))

(declare-fun d!2172917 () Bool)

(declare-fun lt!2480918 () Int)

(assert (=> d!2172917 (>= lt!2480918 0)))

(declare-fun e!4194224 () Int)

(assert (=> d!2172917 (= lt!2480918 e!4194224)))

(declare-fun c!1293527 () Bool)

(assert (=> d!2172917 (= c!1293527 (is-Nil!66908 (exprs!6658 ct2!306)))))

(assert (=> d!2172917 (= (size!40865 (exprs!6658 ct2!306)) lt!2480918)))

(declare-fun b!6978711 () Bool)

(assert (=> b!6978711 (= e!4194224 0)))

(declare-fun b!6978712 () Bool)

(assert (=> b!6978712 (= e!4194224 (+ 1 (size!40865 (t!380775 (exprs!6658 ct2!306)))))))

(assert (= (and d!2172917 c!1293527) b!6978711))

(assert (= (and d!2172917 (not c!1293527)) b!6978712))

(declare-fun m!7664658 () Bool)

(assert (=> b!6978712 m!7664658))

(assert (=> b!6978571 d!2172917))

(declare-fun b!6978731 () Bool)

(declare-fun e!4194245 () Bool)

(declare-fun call!633254 () Bool)

(assert (=> b!6978731 (= e!4194245 call!633254)))

(declare-fun b!6978732 () Bool)

(declare-fun e!4194240 () Bool)

(declare-fun e!4194239 () Bool)

(assert (=> b!6978732 (= e!4194240 e!4194239)))

(declare-fun c!1293532 () Bool)

(assert (=> b!6978732 (= c!1293532 (is-Star!17162 (h!73356 (tail!13128 (exprs!6658 lt!2480813)))))))

(declare-fun b!6978733 () Bool)

(declare-fun e!4194242 () Bool)

(assert (=> b!6978733 (= e!4194242 call!633254)))

(declare-fun bm!633248 () Bool)

(declare-fun c!1293533 () Bool)

(assert (=> bm!633248 (= call!633254 (validRegex!8829 (ite c!1293533 (regTwo!34837 (h!73356 (tail!13128 (exprs!6658 lt!2480813)))) (regTwo!34836 (h!73356 (tail!13128 (exprs!6658 lt!2480813)))))))))

(declare-fun bm!633249 () Bool)

(declare-fun call!633255 () Bool)

(declare-fun call!633253 () Bool)

(assert (=> bm!633249 (= call!633255 call!633253)))

(declare-fun d!2172919 () Bool)

(declare-fun res!2845750 () Bool)

(assert (=> d!2172919 (=> res!2845750 e!4194240)))

(assert (=> d!2172919 (= res!2845750 (is-ElementMatch!17162 (h!73356 (tail!13128 (exprs!6658 lt!2480813)))))))

(assert (=> d!2172919 (= (validRegex!8829 (h!73356 (tail!13128 (exprs!6658 lt!2480813)))) e!4194240)))

(declare-fun bm!633250 () Bool)

(assert (=> bm!633250 (= call!633253 (validRegex!8829 (ite c!1293532 (reg!17491 (h!73356 (tail!13128 (exprs!6658 lt!2480813)))) (ite c!1293533 (regOne!34837 (h!73356 (tail!13128 (exprs!6658 lt!2480813)))) (regOne!34836 (h!73356 (tail!13128 (exprs!6658 lt!2480813))))))))))

(declare-fun b!6978734 () Bool)

(declare-fun res!2845749 () Bool)

(assert (=> b!6978734 (=> (not res!2845749) (not e!4194242))))

(assert (=> b!6978734 (= res!2845749 call!633255)))

(declare-fun e!4194243 () Bool)

(assert (=> b!6978734 (= e!4194243 e!4194242)))

(declare-fun b!6978735 () Bool)

(declare-fun res!2845751 () Bool)

(declare-fun e!4194241 () Bool)

(assert (=> b!6978735 (=> res!2845751 e!4194241)))

(assert (=> b!6978735 (= res!2845751 (not (is-Concat!26007 (h!73356 (tail!13128 (exprs!6658 lt!2480813))))))))

(assert (=> b!6978735 (= e!4194243 e!4194241)))

(declare-fun b!6978736 () Bool)

(assert (=> b!6978736 (= e!4194239 e!4194243)))

(assert (=> b!6978736 (= c!1293533 (is-Union!17162 (h!73356 (tail!13128 (exprs!6658 lt!2480813)))))))

(declare-fun b!6978737 () Bool)

(declare-fun e!4194244 () Bool)

(assert (=> b!6978737 (= e!4194239 e!4194244)))

(declare-fun res!2845747 () Bool)

(assert (=> b!6978737 (= res!2845747 (not (nullable!6922 (reg!17491 (h!73356 (tail!13128 (exprs!6658 lt!2480813)))))))))

(assert (=> b!6978737 (=> (not res!2845747) (not e!4194244))))

(declare-fun b!6978738 () Bool)

(assert (=> b!6978738 (= e!4194244 call!633253)))

(declare-fun b!6978739 () Bool)

(assert (=> b!6978739 (= e!4194241 e!4194245)))

(declare-fun res!2845748 () Bool)

(assert (=> b!6978739 (=> (not res!2845748) (not e!4194245))))

(assert (=> b!6978739 (= res!2845748 call!633255)))

(assert (= (and d!2172919 (not res!2845750)) b!6978732))

(assert (= (and b!6978732 c!1293532) b!6978737))

(assert (= (and b!6978732 (not c!1293532)) b!6978736))

(assert (= (and b!6978737 res!2845747) b!6978738))

(assert (= (and b!6978736 c!1293533) b!6978734))

(assert (= (and b!6978736 (not c!1293533)) b!6978735))

(assert (= (and b!6978734 res!2845749) b!6978733))

(assert (= (and b!6978735 (not res!2845751)) b!6978739))

(assert (= (and b!6978739 res!2845748) b!6978731))

(assert (= (or b!6978733 b!6978731) bm!633248))

(assert (= (or b!6978734 b!6978739) bm!633249))

(assert (= (or b!6978738 bm!633249) bm!633250))

(declare-fun m!7664660 () Bool)

(assert (=> bm!633248 m!7664660))

(declare-fun m!7664662 () Bool)

(assert (=> bm!633250 m!7664662))

(declare-fun m!7664664 () Bool)

(assert (=> b!6978737 m!7664664))

(assert (=> bs!1860378 d!2172919))

(declare-fun d!2172921 () Bool)

(declare-fun res!2845752 () Bool)

(declare-fun e!4194246 () Bool)

(assert (=> d!2172921 (=> res!2845752 e!4194246)))

(assert (=> d!2172921 (= res!2845752 (is-Nil!66908 (exprs!6658 ct2!306)))))

(assert (=> d!2172921 (= (forall!16039 (exprs!6658 ct2!306) lambda!398653) e!4194246)))

(declare-fun b!6978740 () Bool)

(declare-fun e!4194247 () Bool)

(assert (=> b!6978740 (= e!4194246 e!4194247)))

(declare-fun res!2845753 () Bool)

(assert (=> b!6978740 (=> (not res!2845753) (not e!4194247))))

(assert (=> b!6978740 (= res!2845753 (dynLambda!26705 lambda!398653 (h!73356 (exprs!6658 ct2!306))))))

(declare-fun b!6978741 () Bool)

(assert (=> b!6978741 (= e!4194247 (forall!16039 (t!380775 (exprs!6658 ct2!306)) lambda!398653))))

(assert (= (and d!2172921 (not res!2845752)) b!6978740))

(assert (= (and b!6978740 res!2845753) b!6978741))

(declare-fun b_lambda!261295 () Bool)

(assert (=> (not b_lambda!261295) (not b!6978740)))

(declare-fun m!7664666 () Bool)

(assert (=> b!6978740 m!7664666))

(declare-fun m!7664668 () Bool)

(assert (=> b!6978741 m!7664668))

(assert (=> d!2172843 d!2172921))

(declare-fun d!2172923 () Bool)

(declare-fun c!1293536 () Bool)

(assert (=> d!2172923 (= c!1293536 (is-Nil!66909 lt!2480883))))

(declare-fun e!4194250 () (Set Context!12316))

(assert (=> d!2172923 (= (content!13182 lt!2480883) e!4194250)))

(declare-fun b!6978746 () Bool)

(assert (=> b!6978746 (= e!4194250 (as set.empty (Set Context!12316)))))

(declare-fun b!6978747 () Bool)

(assert (=> b!6978747 (= e!4194250 (set.union (set.insert (h!73357 lt!2480883) (as set.empty (Set Context!12316))) (content!13182 (t!380776 lt!2480883))))))

(assert (= (and d!2172923 c!1293536) b!6978746))

(assert (= (and d!2172923 (not c!1293536)) b!6978747))

(declare-fun m!7664670 () Bool)

(assert (=> b!6978747 m!7664670))

(declare-fun m!7664672 () Bool)

(assert (=> b!6978747 m!7664672))

(assert (=> b!6978590 d!2172923))

(declare-fun d!2172925 () Bool)

(declare-fun choose!51985 ((Set Context!12316) Int) (Set Context!12316))

(assert (=> d!2172925 (= (map!15412 z1!570 lambda!398652) (choose!51985 z1!570 lambda!398652))))

(declare-fun bs!1860399 () Bool)

(assert (= bs!1860399 d!2172925))

(declare-fun m!7664674 () Bool)

(assert (=> bs!1860399 m!7664674))

(assert (=> d!2172839 d!2172925))

(declare-fun d!2172927 () Bool)

(declare-fun c!1293537 () Bool)

(assert (=> d!2172927 (= c!1293537 (isEmpty!39054 (tail!13130 s!7408)))))

(declare-fun e!4194251 () Bool)

(assert (=> d!2172927 (= (matchZipper!2702 (derivationStepZipper!2642 lt!2480823 (head!14062 s!7408)) (tail!13130 s!7408)) e!4194251)))

(declare-fun b!6978748 () Bool)

(assert (=> b!6978748 (= e!4194251 (nullableZipper!2393 (derivationStepZipper!2642 lt!2480823 (head!14062 s!7408))))))

(declare-fun b!6978749 () Bool)

(assert (=> b!6978749 (= e!4194251 (matchZipper!2702 (derivationStepZipper!2642 (derivationStepZipper!2642 lt!2480823 (head!14062 s!7408)) (head!14062 (tail!13130 s!7408))) (tail!13130 (tail!13130 s!7408))))))

(assert (= (and d!2172927 c!1293537) b!6978748))

(assert (= (and d!2172927 (not c!1293537)) b!6978749))

(assert (=> d!2172927 m!7664482))

(declare-fun m!7664676 () Bool)

(assert (=> d!2172927 m!7664676))

(assert (=> b!6978748 m!7664504))

(declare-fun m!7664678 () Bool)

(assert (=> b!6978748 m!7664678))

(assert (=> b!6978749 m!7664482))

(declare-fun m!7664680 () Bool)

(assert (=> b!6978749 m!7664680))

(assert (=> b!6978749 m!7664504))

(assert (=> b!6978749 m!7664680))

(declare-fun m!7664682 () Bool)

(assert (=> b!6978749 m!7664682))

(assert (=> b!6978749 m!7664482))

(declare-fun m!7664684 () Bool)

(assert (=> b!6978749 m!7664684))

(assert (=> b!6978749 m!7664682))

(assert (=> b!6978749 m!7664684))

(declare-fun m!7664686 () Bool)

(assert (=> b!6978749 m!7664686))

(assert (=> b!6978592 d!2172927))

(declare-fun bs!1860400 () Bool)

(declare-fun d!2172929 () Bool)

(assert (= bs!1860400 (and d!2172929 b!6978499)))

(declare-fun lambda!398672 () Int)

(assert (=> bs!1860400 (= (= (head!14062 s!7408) (h!73355 s!7408)) (= lambda!398672 lambda!398613))))

(declare-fun bs!1860401 () Bool)

(assert (= bs!1860401 (and d!2172929 d!2172859)))

(assert (=> bs!1860401 (= (= (head!14062 s!7408) (h!73355 s!7408)) (= lambda!398672 lambda!398656))))

(assert (=> d!2172929 true))

(assert (=> d!2172929 (= (derivationStepZipper!2642 lt!2480823 (head!14062 s!7408)) (flatMap!2148 lt!2480823 lambda!398672))))

(declare-fun bs!1860402 () Bool)

(assert (= bs!1860402 d!2172929))

(declare-fun m!7664688 () Bool)

(assert (=> bs!1860402 m!7664688))

(assert (=> b!6978592 d!2172929))

(declare-fun d!2172931 () Bool)

(assert (=> d!2172931 (= (head!14062 s!7408) (h!73355 s!7408))))

(assert (=> b!6978592 d!2172931))

(declare-fun d!2172933 () Bool)

(assert (=> d!2172933 (= (tail!13130 s!7408) (t!380774 s!7408))))

(assert (=> b!6978592 d!2172933))

(declare-fun d!2172935 () Bool)

(assert (=> d!2172935 (= (nullable!6922 (h!73356 (exprs!6658 lt!2480824))) (nullableFct!2597 (h!73356 (exprs!6658 lt!2480824))))))

(declare-fun bs!1860403 () Bool)

(assert (= bs!1860403 d!2172935))

(declare-fun m!7664690 () Bool)

(assert (=> bs!1860403 m!7664690))

(assert (=> b!6978612 d!2172935))

(declare-fun d!2172937 () Bool)

(declare-fun e!4194256 () Bool)

(assert (=> d!2172937 e!4194256))

(declare-fun res!2845756 () Bool)

(assert (=> d!2172937 (=> (not res!2845756) (not e!4194256))))

(declare-fun a!12579 () Context!12316)

(assert (=> d!2172937 (= res!2845756 (= lt!2480816 (dynLambda!26702 lambda!398611 a!12579)))))

(declare-fun e!4194257 () Bool)

(assert (=> d!2172937 (and (inv!85765 a!12579) e!4194257)))

(assert (=> d!2172937 (= (choose!51974 z1!570 lambda!398611 lt!2480816) a!12579)))

(declare-fun b!6978755 () Bool)

(declare-fun tp!1927787 () Bool)

(assert (=> b!6978755 (= e!4194257 tp!1927787)))

(declare-fun b!6978756 () Bool)

(assert (=> b!6978756 (= e!4194256 (set.member a!12579 z1!570))))

(assert (= d!2172937 b!6978755))

(assert (= (and d!2172937 res!2845756) b!6978756))

(declare-fun b_lambda!261297 () Bool)

(assert (=> (not b_lambda!261297) (not d!2172937)))

(declare-fun m!7664692 () Bool)

(assert (=> d!2172937 m!7664692))

(declare-fun m!7664694 () Bool)

(assert (=> d!2172937 m!7664694))

(declare-fun m!7664696 () Bool)

(assert (=> b!6978756 m!7664696))

(assert (=> d!2172821 d!2172937))

(declare-fun d!2172939 () Bool)

(assert (=> d!2172939 (= (map!15412 z1!570 lambda!398611) (choose!51985 z1!570 lambda!398611))))

(declare-fun bs!1860404 () Bool)

(assert (= bs!1860404 d!2172939))

(declare-fun m!7664698 () Bool)

(assert (=> bs!1860404 m!7664698))

(assert (=> d!2172821 d!2172939))

(declare-fun d!2172941 () Bool)

(declare-fun res!2845757 () Bool)

(declare-fun e!4194258 () Bool)

(assert (=> d!2172941 (=> res!2845757 e!4194258)))

(assert (=> d!2172941 (= res!2845757 (is-Nil!66908 (++!15107 (exprs!6658 lt!2480813) (exprs!6658 ct2!306))))))

(assert (=> d!2172941 (= (forall!16039 (++!15107 (exprs!6658 lt!2480813) (exprs!6658 ct2!306)) lambda!398612) e!4194258)))

(declare-fun b!6978757 () Bool)

(declare-fun e!4194259 () Bool)

(assert (=> b!6978757 (= e!4194258 e!4194259)))

(declare-fun res!2845758 () Bool)

(assert (=> b!6978757 (=> (not res!2845758) (not e!4194259))))

(assert (=> b!6978757 (= res!2845758 (dynLambda!26705 lambda!398612 (h!73356 (++!15107 (exprs!6658 lt!2480813) (exprs!6658 ct2!306)))))))

(declare-fun b!6978758 () Bool)

(assert (=> b!6978758 (= e!4194259 (forall!16039 (t!380775 (++!15107 (exprs!6658 lt!2480813) (exprs!6658 ct2!306))) lambda!398612))))

(assert (= (and d!2172941 (not res!2845757)) b!6978757))

(assert (= (and b!6978757 res!2845758) b!6978758))

(declare-fun b_lambda!261299 () Bool)

(assert (=> (not b_lambda!261299) (not b!6978757)))

(declare-fun m!7664700 () Bool)

(assert (=> b!6978757 m!7664700))

(declare-fun m!7664702 () Bool)

(assert (=> b!6978758 m!7664702))

(assert (=> d!2172819 d!2172941))

(assert (=> d!2172819 d!2172817))

(declare-fun d!2172943 () Bool)

(assert (=> d!2172943 (forall!16039 (++!15107 (exprs!6658 lt!2480813) (exprs!6658 ct2!306)) lambda!398612)))

(assert (=> d!2172943 true))

(declare-fun _$78!465 () Unit!160973)

(assert (=> d!2172943 (= (choose!51973 (exprs!6658 lt!2480813) (exprs!6658 ct2!306) lambda!398612) _$78!465)))

(declare-fun bs!1860405 () Bool)

(assert (= bs!1860405 d!2172943))

(assert (=> bs!1860405 m!7664354))

(assert (=> bs!1860405 m!7664354))

(assert (=> bs!1860405 m!7664448))

(assert (=> d!2172819 d!2172943))

(declare-fun d!2172945 () Bool)

(declare-fun res!2845759 () Bool)

(declare-fun e!4194260 () Bool)

(assert (=> d!2172945 (=> res!2845759 e!4194260)))

(assert (=> d!2172945 (= res!2845759 (is-Nil!66908 (exprs!6658 lt!2480813)))))

(assert (=> d!2172945 (= (forall!16039 (exprs!6658 lt!2480813) lambda!398612) e!4194260)))

(declare-fun b!6978759 () Bool)

(declare-fun e!4194261 () Bool)

(assert (=> b!6978759 (= e!4194260 e!4194261)))

(declare-fun res!2845760 () Bool)

(assert (=> b!6978759 (=> (not res!2845760) (not e!4194261))))

(assert (=> b!6978759 (= res!2845760 (dynLambda!26705 lambda!398612 (h!73356 (exprs!6658 lt!2480813))))))

(declare-fun b!6978760 () Bool)

(assert (=> b!6978760 (= e!4194261 (forall!16039 (t!380775 (exprs!6658 lt!2480813)) lambda!398612))))

(assert (= (and d!2172945 (not res!2845759)) b!6978759))

(assert (= (and b!6978759 res!2845760) b!6978760))

(declare-fun b_lambda!261301 () Bool)

(assert (=> (not b_lambda!261301) (not b!6978759)))

(declare-fun m!7664704 () Bool)

(assert (=> b!6978759 m!7664704))

(declare-fun m!7664706 () Bool)

(assert (=> b!6978760 m!7664706))

(assert (=> d!2172819 d!2172945))

(declare-fun d!2172947 () Bool)

(assert (=> d!2172947 (forall!16039 (++!15107 (exprs!6658 lt!2480874) (exprs!6658 ct2!306)) lambda!398612)))

(declare-fun lt!2480919 () Unit!160973)

(assert (=> d!2172947 (= lt!2480919 (choose!51973 (exprs!6658 lt!2480874) (exprs!6658 ct2!306) lambda!398612))))

(assert (=> d!2172947 (forall!16039 (exprs!6658 lt!2480874) lambda!398612)))

(assert (=> d!2172947 (= (lemmaConcatPreservesForall!498 (exprs!6658 lt!2480874) (exprs!6658 ct2!306) lambda!398612) lt!2480919)))

(declare-fun bs!1860406 () Bool)

(assert (= bs!1860406 d!2172947))

(assert (=> bs!1860406 m!7664562))

(assert (=> bs!1860406 m!7664562))

(declare-fun m!7664708 () Bool)

(assert (=> bs!1860406 m!7664708))

(declare-fun m!7664710 () Bool)

(assert (=> bs!1860406 m!7664710))

(declare-fun m!7664712 () Bool)

(assert (=> bs!1860406 m!7664712))

(assert (=> bs!1860379 d!2172947))

(declare-fun b!6978762 () Bool)

(declare-fun e!4194263 () List!67032)

(assert (=> b!6978762 (= e!4194263 (Cons!66908 (h!73356 (exprs!6658 lt!2480874)) (++!15107 (t!380775 (exprs!6658 lt!2480874)) (exprs!6658 ct2!306))))))

(declare-fun b!6978761 () Bool)

(assert (=> b!6978761 (= e!4194263 (exprs!6658 ct2!306))))

(declare-fun b!6978763 () Bool)

(declare-fun res!2845762 () Bool)

(declare-fun e!4194262 () Bool)

(assert (=> b!6978763 (=> (not res!2845762) (not e!4194262))))

(declare-fun lt!2480920 () List!67032)

(assert (=> b!6978763 (= res!2845762 (= (size!40865 lt!2480920) (+ (size!40865 (exprs!6658 lt!2480874)) (size!40865 (exprs!6658 ct2!306)))))))

(declare-fun d!2172949 () Bool)

(assert (=> d!2172949 e!4194262))

(declare-fun res!2845761 () Bool)

(assert (=> d!2172949 (=> (not res!2845761) (not e!4194262))))

(assert (=> d!2172949 (= res!2845761 (= (content!13181 lt!2480920) (set.union (content!13181 (exprs!6658 lt!2480874)) (content!13181 (exprs!6658 ct2!306)))))))

(assert (=> d!2172949 (= lt!2480920 e!4194263)))

(declare-fun c!1293538 () Bool)

(assert (=> d!2172949 (= c!1293538 (is-Nil!66908 (exprs!6658 lt!2480874)))))

(assert (=> d!2172949 (= (++!15107 (exprs!6658 lt!2480874) (exprs!6658 ct2!306)) lt!2480920)))

(declare-fun b!6978764 () Bool)

(assert (=> b!6978764 (= e!4194262 (or (not (= (exprs!6658 ct2!306) Nil!66908)) (= lt!2480920 (exprs!6658 lt!2480874))))))

(assert (= (and d!2172949 c!1293538) b!6978761))

(assert (= (and d!2172949 (not c!1293538)) b!6978762))

(assert (= (and d!2172949 res!2845761) b!6978763))

(assert (= (and b!6978763 res!2845762) b!6978764))

(declare-fun m!7664714 () Bool)

(assert (=> b!6978762 m!7664714))

(declare-fun m!7664716 () Bool)

(assert (=> b!6978763 m!7664716))

(declare-fun m!7664718 () Bool)

(assert (=> b!6978763 m!7664718))

(assert (=> b!6978763 m!7664440))

(declare-fun m!7664720 () Bool)

(assert (=> d!2172949 m!7664720))

(declare-fun m!7664722 () Bool)

(assert (=> d!2172949 m!7664722))

(assert (=> d!2172949 m!7664446))

(assert (=> bs!1860379 d!2172949))

(declare-fun bs!1860407 () Bool)

(declare-fun d!2172951 () Bool)

(assert (= bs!1860407 (and d!2172951 b!6978505)))

(declare-fun lambda!398675 () Int)

(assert (=> bs!1860407 (not (= lambda!398675 lambda!398610))))

(declare-fun bs!1860408 () Bool)

(assert (= bs!1860408 (and d!2172951 d!2172829)))

(assert (=> bs!1860408 (not (= lambda!398675 lambda!398641))))

(declare-fun bs!1860409 () Bool)

(assert (= bs!1860409 (and d!2172951 d!2172831)))

(assert (=> bs!1860409 (not (= lambda!398675 lambda!398644))))

(assert (=> d!2172951 (= (nullableZipper!2393 lt!2480822) (exists!2912 lt!2480822 lambda!398675))))

(declare-fun bs!1860410 () Bool)

(assert (= bs!1860410 d!2172951))

(declare-fun m!7664724 () Bool)

(assert (=> bs!1860410 m!7664724))

(assert (=> b!6978584 d!2172951))

(declare-fun d!2172953 () Bool)

(assert (=> d!2172953 (= (isEmpty!39054 s!7408) (is-Nil!66907 s!7408))))

(assert (=> d!2172827 d!2172953))

(declare-fun bs!1860411 () Bool)

(declare-fun d!2172955 () Bool)

(assert (= bs!1860411 (and d!2172955 b!6978505)))

(declare-fun lambda!398676 () Int)

(assert (=> bs!1860411 (not (= lambda!398676 lambda!398610))))

(declare-fun bs!1860412 () Bool)

(assert (= bs!1860412 (and d!2172955 d!2172829)))

(assert (=> bs!1860412 (= (= lambda!398644 lambda!398610) (= lambda!398676 lambda!398641))))

(declare-fun bs!1860413 () Bool)

(assert (= bs!1860413 (and d!2172955 d!2172831)))

(assert (=> bs!1860413 (not (= lambda!398676 lambda!398644))))

(declare-fun bs!1860414 () Bool)

(assert (= bs!1860414 (and d!2172955 d!2172951)))

(assert (=> bs!1860414 (not (= lambda!398676 lambda!398675))))

(assert (=> d!2172955 true))

(assert (=> d!2172955 (< (dynLambda!26704 order!27821 lambda!398644) (dynLambda!26704 order!27821 lambda!398676))))

(assert (=> d!2172955 (= (exists!2910 lt!2480821 lambda!398644) (not (forall!16041 lt!2480821 lambda!398676)))))

(declare-fun bs!1860415 () Bool)

(assert (= bs!1860415 d!2172955))

(declare-fun m!7664726 () Bool)

(assert (=> bs!1860415 m!7664726))

(assert (=> d!2172831 d!2172955))

(declare-fun bs!1860416 () Bool)

(declare-fun d!2172957 () Bool)

(assert (= bs!1860416 (and d!2172957 b!6978505)))

(declare-fun lambda!398679 () Int)

(assert (=> bs!1860416 (= lambda!398679 lambda!398610)))

(declare-fun bs!1860417 () Bool)

(assert (= bs!1860417 (and d!2172957 d!2172831)))

(assert (=> bs!1860417 (= lambda!398679 lambda!398644)))

(declare-fun bs!1860418 () Bool)

(assert (= bs!1860418 (and d!2172957 d!2172829)))

(assert (=> bs!1860418 (not (= lambda!398679 lambda!398641))))

(declare-fun bs!1860419 () Bool)

(assert (= bs!1860419 (and d!2172957 d!2172951)))

(assert (=> bs!1860419 (not (= lambda!398679 lambda!398675))))

(declare-fun bs!1860420 () Bool)

(assert (= bs!1860420 (and d!2172957 d!2172955)))

(assert (=> bs!1860420 (not (= lambda!398679 lambda!398676))))

(assert (=> d!2172957 true))

(assert (=> d!2172957 (exists!2910 lt!2480821 lambda!398679)))

(assert (=> d!2172957 true))

(declare-fun _$60!1033 () Unit!160973)

(assert (=> d!2172957 (= (choose!51975 lt!2480821 s!7408) _$60!1033)))

(declare-fun bs!1860421 () Bool)

(assert (= bs!1860421 d!2172957))

(declare-fun m!7664728 () Bool)

(assert (=> bs!1860421 m!7664728))

(assert (=> d!2172831 d!2172957))

(declare-fun d!2172959 () Bool)

(declare-fun c!1293543 () Bool)

(assert (=> d!2172959 (= c!1293543 (isEmpty!39054 s!7408))))

(declare-fun e!4194264 () Bool)

(assert (=> d!2172959 (= (matchZipper!2702 (content!13182 lt!2480821) s!7408) e!4194264)))

(declare-fun b!6978765 () Bool)

(assert (=> b!6978765 (= e!4194264 (nullableZipper!2393 (content!13182 lt!2480821)))))

(declare-fun b!6978766 () Bool)

(assert (=> b!6978766 (= e!4194264 (matchZipper!2702 (derivationStepZipper!2642 (content!13182 lt!2480821) (head!14062 s!7408)) (tail!13130 s!7408)))))

(assert (= (and d!2172959 c!1293543) b!6978765))

(assert (= (and d!2172959 (not c!1293543)) b!6978766))

(assert (=> d!2172959 m!7664474))

(assert (=> b!6978765 m!7664492))

(declare-fun m!7664730 () Bool)

(assert (=> b!6978765 m!7664730))

(assert (=> b!6978766 m!7664478))

(assert (=> b!6978766 m!7664492))

(assert (=> b!6978766 m!7664478))

(declare-fun m!7664732 () Bool)

(assert (=> b!6978766 m!7664732))

(assert (=> b!6978766 m!7664482))

(assert (=> b!6978766 m!7664732))

(assert (=> b!6978766 m!7664482))

(declare-fun m!7664734 () Bool)

(assert (=> b!6978766 m!7664734))

(assert (=> d!2172831 d!2172959))

(declare-fun d!2172961 () Bool)

(declare-fun c!1293544 () Bool)

(assert (=> d!2172961 (= c!1293544 (is-Nil!66909 lt!2480821))))

(declare-fun e!4194265 () (Set Context!12316))

(assert (=> d!2172961 (= (content!13182 lt!2480821) e!4194265)))

(declare-fun b!6978767 () Bool)

(assert (=> b!6978767 (= e!4194265 (as set.empty (Set Context!12316)))))

(declare-fun b!6978768 () Bool)

(assert (=> b!6978768 (= e!4194265 (set.union (set.insert (h!73357 lt!2480821) (as set.empty (Set Context!12316))) (content!13182 (t!380776 lt!2480821))))))

(assert (= (and d!2172961 c!1293544) b!6978767))

(assert (= (and d!2172961 (not c!1293544)) b!6978768))

(declare-fun m!7664736 () Bool)

(assert (=> b!6978768 m!7664736))

(declare-fun m!7664738 () Bool)

(assert (=> b!6978768 m!7664738))

(assert (=> d!2172831 d!2172961))

(declare-fun d!2172963 () Bool)

(declare-fun c!1293545 () Bool)

(assert (=> d!2172963 (= c!1293545 (isEmpty!39054 (tail!13130 s!7408)))))

(declare-fun e!4194266 () Bool)

(assert (=> d!2172963 (= (matchZipper!2702 (derivationStepZipper!2642 lt!2480822 (head!14062 s!7408)) (tail!13130 s!7408)) e!4194266)))

(declare-fun b!6978769 () Bool)

(assert (=> b!6978769 (= e!4194266 (nullableZipper!2393 (derivationStepZipper!2642 lt!2480822 (head!14062 s!7408))))))

(declare-fun b!6978770 () Bool)

(assert (=> b!6978770 (= e!4194266 (matchZipper!2702 (derivationStepZipper!2642 (derivationStepZipper!2642 lt!2480822 (head!14062 s!7408)) (head!14062 (tail!13130 s!7408))) (tail!13130 (tail!13130 s!7408))))))

(assert (= (and d!2172963 c!1293545) b!6978769))

(assert (= (and d!2172963 (not c!1293545)) b!6978770))

(assert (=> d!2172963 m!7664482))

(assert (=> d!2172963 m!7664676))

(assert (=> b!6978769 m!7664480))

(declare-fun m!7664740 () Bool)

(assert (=> b!6978769 m!7664740))

(assert (=> b!6978770 m!7664482))

(assert (=> b!6978770 m!7664680))

(assert (=> b!6978770 m!7664480))

(assert (=> b!6978770 m!7664680))

(declare-fun m!7664742 () Bool)

(assert (=> b!6978770 m!7664742))

(assert (=> b!6978770 m!7664482))

(assert (=> b!6978770 m!7664684))

(assert (=> b!6978770 m!7664742))

(assert (=> b!6978770 m!7664684))

(declare-fun m!7664744 () Bool)

(assert (=> b!6978770 m!7664744))

(assert (=> b!6978585 d!2172963))

(declare-fun bs!1860422 () Bool)

(declare-fun d!2172965 () Bool)

(assert (= bs!1860422 (and d!2172965 b!6978499)))

(declare-fun lambda!398680 () Int)

(assert (=> bs!1860422 (= (= (head!14062 s!7408) (h!73355 s!7408)) (= lambda!398680 lambda!398613))))

(declare-fun bs!1860423 () Bool)

(assert (= bs!1860423 (and d!2172965 d!2172859)))

(assert (=> bs!1860423 (= (= (head!14062 s!7408) (h!73355 s!7408)) (= lambda!398680 lambda!398656))))

(declare-fun bs!1860424 () Bool)

(assert (= bs!1860424 (and d!2172965 d!2172929)))

(assert (=> bs!1860424 (= lambda!398680 lambda!398672)))

(assert (=> d!2172965 true))

(assert (=> d!2172965 (= (derivationStepZipper!2642 lt!2480822 (head!14062 s!7408)) (flatMap!2148 lt!2480822 lambda!398680))))

(declare-fun bs!1860425 () Bool)

(assert (= bs!1860425 d!2172965))

(declare-fun m!7664746 () Bool)

(assert (=> bs!1860425 m!7664746))

(assert (=> b!6978585 d!2172965))

(assert (=> b!6978585 d!2172931))

(assert (=> b!6978585 d!2172933))

(declare-fun bm!633255 () Bool)

(declare-fun call!633261 () Bool)

(declare-fun c!1293548 () Bool)

(assert (=> bm!633255 (= call!633261 (nullable!6922 (ite c!1293548 (regOne!34837 (h!73356 (exprs!6658 lt!2480813))) (regTwo!34836 (h!73356 (exprs!6658 lt!2480813))))))))

(declare-fun b!6978785 () Bool)

(declare-fun e!4194283 () Bool)

(declare-fun call!633260 () Bool)

(assert (=> b!6978785 (= e!4194283 call!633260)))

(declare-fun b!6978786 () Bool)

(declare-fun e!4194284 () Bool)

(declare-fun e!4194279 () Bool)

(assert (=> b!6978786 (= e!4194284 e!4194279)))

(assert (=> b!6978786 (= c!1293548 (is-Union!17162 (h!73356 (exprs!6658 lt!2480813))))))

(declare-fun b!6978787 () Bool)

(declare-fun e!4194280 () Bool)

(assert (=> b!6978787 (= e!4194280 call!633261)))

(declare-fun b!6978788 () Bool)

(assert (=> b!6978788 (= e!4194279 e!4194283)))

(declare-fun res!2845773 () Bool)

(assert (=> b!6978788 (= res!2845773 call!633261)))

(assert (=> b!6978788 (=> res!2845773 e!4194283)))

(declare-fun b!6978789 () Bool)

(declare-fun e!4194281 () Bool)

(assert (=> b!6978789 (= e!4194281 e!4194284)))

(declare-fun res!2845774 () Bool)

(assert (=> b!6978789 (=> res!2845774 e!4194284)))

(assert (=> b!6978789 (= res!2845774 (is-Star!17162 (h!73356 (exprs!6658 lt!2480813))))))

(declare-fun bm!633256 () Bool)

(assert (=> bm!633256 (= call!633260 (nullable!6922 (ite c!1293548 (regTwo!34837 (h!73356 (exprs!6658 lt!2480813))) (regOne!34836 (h!73356 (exprs!6658 lt!2480813))))))))

(declare-fun d!2172967 () Bool)

(declare-fun res!2845776 () Bool)

(declare-fun e!4194282 () Bool)

(assert (=> d!2172967 (=> res!2845776 e!4194282)))

(assert (=> d!2172967 (= res!2845776 (is-EmptyExpr!17162 (h!73356 (exprs!6658 lt!2480813))))))

(assert (=> d!2172967 (= (nullableFct!2597 (h!73356 (exprs!6658 lt!2480813))) e!4194282)))

(declare-fun b!6978790 () Bool)

(assert (=> b!6978790 (= e!4194279 e!4194280)))

(declare-fun res!2845777 () Bool)

(assert (=> b!6978790 (= res!2845777 call!633260)))

(assert (=> b!6978790 (=> (not res!2845777) (not e!4194280))))

(declare-fun b!6978791 () Bool)

(assert (=> b!6978791 (= e!4194282 e!4194281)))

(declare-fun res!2845775 () Bool)

(assert (=> b!6978791 (=> (not res!2845775) (not e!4194281))))

(assert (=> b!6978791 (= res!2845775 (and (not (is-EmptyLang!17162 (h!73356 (exprs!6658 lt!2480813)))) (not (is-ElementMatch!17162 (h!73356 (exprs!6658 lt!2480813))))))))

(assert (= (and d!2172967 (not res!2845776)) b!6978791))

(assert (= (and b!6978791 res!2845775) b!6978789))

(assert (= (and b!6978789 (not res!2845774)) b!6978786))

(assert (= (and b!6978786 c!1293548) b!6978788))

(assert (= (and b!6978786 (not c!1293548)) b!6978790))

(assert (= (and b!6978788 (not res!2845773)) b!6978785))

(assert (= (and b!6978790 res!2845777) b!6978787))

(assert (= (or b!6978785 b!6978790) bm!633256))

(assert (= (or b!6978788 b!6978787) bm!633255))

(declare-fun m!7664748 () Bool)

(assert (=> bm!633255 m!7664748))

(declare-fun m!7664750 () Bool)

(assert (=> bm!633256 m!7664750))

(assert (=> d!2172849 d!2172967))

(declare-fun b!6978814 () Bool)

(declare-fun e!4194302 () (Set Context!12316))

(declare-fun call!633276 () (Set Context!12316))

(assert (=> b!6978814 (= e!4194302 call!633276)))

(declare-fun b!6978815 () Bool)

(declare-fun e!4194297 () Bool)

(assert (=> b!6978815 (= e!4194297 (nullable!6922 (regOne!34836 (h!73356 (exprs!6658 lt!2480824)))))))

(declare-fun b!6978816 () Bool)

(declare-fun e!4194299 () (Set Context!12316))

(declare-fun call!633275 () (Set Context!12316))

(declare-fun call!633274 () (Set Context!12316))

(assert (=> b!6978816 (= e!4194299 (set.union call!633275 call!633274))))

(declare-fun d!2172969 () Bool)

(declare-fun c!1293563 () Bool)

(assert (=> d!2172969 (= c!1293563 (and (is-ElementMatch!17162 (h!73356 (exprs!6658 lt!2480824))) (= (c!1293477 (h!73356 (exprs!6658 lt!2480824))) (h!73355 s!7408))))))

(declare-fun e!4194300 () (Set Context!12316))

(assert (=> d!2172969 (= (derivationStepZipperDown!1882 (h!73356 (exprs!6658 lt!2480824)) (Context!12317 (t!380775 (exprs!6658 lt!2480824))) (h!73355 s!7408)) e!4194300)))

(declare-fun bm!633269 () Bool)

(assert (=> bm!633269 (= call!633276 call!633274)))

(declare-fun c!1293560 () Bool)

(declare-fun bm!633270 () Bool)

(declare-fun call!633278 () List!67032)

(declare-fun c!1293562 () Bool)

(declare-fun $colon$colon!2451 (List!67032 Regex!17162) List!67032)

(assert (=> bm!633270 (= call!633278 ($colon$colon!2451 (exprs!6658 (Context!12317 (t!380775 (exprs!6658 lt!2480824)))) (ite (or c!1293562 c!1293560) (regTwo!34836 (h!73356 (exprs!6658 lt!2480824))) (h!73356 (exprs!6658 lt!2480824)))))))

(declare-fun bm!633271 () Bool)

(declare-fun call!633277 () List!67032)

(assert (=> bm!633271 (= call!633277 call!633278)))

(declare-fun bm!633272 () Bool)

(declare-fun call!633279 () (Set Context!12316))

(assert (=> bm!633272 (= call!633274 call!633279)))

(declare-fun b!6978817 () Bool)

(assert (=> b!6978817 (= e!4194300 (set.insert (Context!12317 (t!380775 (exprs!6658 lt!2480824))) (as set.empty (Set Context!12316))))))

(declare-fun bm!633273 () Bool)

(declare-fun c!1293561 () Bool)

(assert (=> bm!633273 (= call!633275 (derivationStepZipperDown!1882 (ite c!1293561 (regOne!34837 (h!73356 (exprs!6658 lt!2480824))) (regOne!34836 (h!73356 (exprs!6658 lt!2480824)))) (ite c!1293561 (Context!12317 (t!380775 (exprs!6658 lt!2480824))) (Context!12317 call!633278)) (h!73355 s!7408)))))

(declare-fun b!6978818 () Bool)

(declare-fun c!1293559 () Bool)

(assert (=> b!6978818 (= c!1293559 (is-Star!17162 (h!73356 (exprs!6658 lt!2480824))))))

(declare-fun e!4194298 () (Set Context!12316))

(assert (=> b!6978818 (= e!4194298 e!4194302)))

(declare-fun b!6978819 () Bool)

(assert (=> b!6978819 (= e!4194302 (as set.empty (Set Context!12316)))))

(declare-fun bm!633274 () Bool)

(assert (=> bm!633274 (= call!633279 (derivationStepZipperDown!1882 (ite c!1293561 (regTwo!34837 (h!73356 (exprs!6658 lt!2480824))) (ite c!1293562 (regTwo!34836 (h!73356 (exprs!6658 lt!2480824))) (ite c!1293560 (regOne!34836 (h!73356 (exprs!6658 lt!2480824))) (reg!17491 (h!73356 (exprs!6658 lt!2480824)))))) (ite (or c!1293561 c!1293562) (Context!12317 (t!380775 (exprs!6658 lt!2480824))) (Context!12317 call!633277)) (h!73355 s!7408)))))

(declare-fun b!6978820 () Bool)

(assert (=> b!6978820 (= c!1293562 e!4194297)))

(declare-fun res!2845780 () Bool)

(assert (=> b!6978820 (=> (not res!2845780) (not e!4194297))))

(assert (=> b!6978820 (= res!2845780 (is-Concat!26007 (h!73356 (exprs!6658 lt!2480824))))))

(declare-fun e!4194301 () (Set Context!12316))

(assert (=> b!6978820 (= e!4194301 e!4194299)))

(declare-fun b!6978821 () Bool)

(assert (=> b!6978821 (= e!4194300 e!4194301)))

(assert (=> b!6978821 (= c!1293561 (is-Union!17162 (h!73356 (exprs!6658 lt!2480824))))))

(declare-fun b!6978822 () Bool)

(assert (=> b!6978822 (= e!4194298 call!633276)))

(declare-fun b!6978823 () Bool)

(assert (=> b!6978823 (= e!4194301 (set.union call!633275 call!633279))))

(declare-fun b!6978824 () Bool)

(assert (=> b!6978824 (= e!4194299 e!4194298)))

(assert (=> b!6978824 (= c!1293560 (is-Concat!26007 (h!73356 (exprs!6658 lt!2480824))))))

(assert (= (and d!2172969 c!1293563) b!6978817))

(assert (= (and d!2172969 (not c!1293563)) b!6978821))

(assert (= (and b!6978821 c!1293561) b!6978823))

(assert (= (and b!6978821 (not c!1293561)) b!6978820))

(assert (= (and b!6978820 res!2845780) b!6978815))

(assert (= (and b!6978820 c!1293562) b!6978816))

(assert (= (and b!6978820 (not c!1293562)) b!6978824))

(assert (= (and b!6978824 c!1293560) b!6978822))

(assert (= (and b!6978824 (not c!1293560)) b!6978818))

(assert (= (and b!6978818 c!1293559) b!6978814))

(assert (= (and b!6978818 (not c!1293559)) b!6978819))

(assert (= (or b!6978822 b!6978814) bm!633271))

(assert (= (or b!6978822 b!6978814) bm!633269))

(assert (= (or b!6978816 bm!633269) bm!633272))

(assert (= (or b!6978816 bm!633271) bm!633270))

(assert (= (or b!6978823 b!6978816) bm!633273))

(assert (= (or b!6978823 bm!633272) bm!633274))

(declare-fun m!7664752 () Bool)

(assert (=> b!6978815 m!7664752))

(declare-fun m!7664754 () Bool)

(assert (=> bm!633274 m!7664754))

(declare-fun m!7664756 () Bool)

(assert (=> b!6978817 m!7664756))

(declare-fun m!7664758 () Bool)

(assert (=> bm!633270 m!7664758))

(declare-fun m!7664760 () Bool)

(assert (=> bm!633273 m!7664760))

(assert (=> bm!633238 d!2172969))

(declare-fun bs!1860426 () Bool)

(declare-fun d!2172971 () Bool)

(assert (= bs!1860426 (and d!2172971 b!6978504)))

(declare-fun lambda!398681 () Int)

(assert (=> bs!1860426 (= lambda!398681 lambda!398612)))

(declare-fun bs!1860427 () Bool)

(assert (= bs!1860427 (and d!2172971 d!2172823)))

(assert (=> bs!1860427 (= lambda!398681 lambda!398638)))

(declare-fun bs!1860428 () Bool)

(assert (= bs!1860428 (and d!2172971 d!2172843)))

(assert (=> bs!1860428 (= lambda!398681 lambda!398653)))

(assert (=> d!2172971 (= (inv!85765 setElem!47452) (forall!16039 (exprs!6658 setElem!47452) lambda!398681))))

(declare-fun bs!1860429 () Bool)

(assert (= bs!1860429 d!2172971))

(declare-fun m!7664762 () Bool)

(assert (=> bs!1860429 m!7664762))

(assert (=> setNonEmpty!47452 d!2172971))

(assert (=> d!2172857 d!2172855))

(declare-fun d!2172973 () Bool)

(assert (=> d!2172973 (= (flatMap!2148 lt!2480818 lambda!398613) (dynLambda!26706 lambda!398613 lt!2480824))))

(assert (=> d!2172973 true))

(declare-fun _$13!4352 () Unit!160973)

(assert (=> d!2172973 (= (choose!51978 lt!2480818 lt!2480824 lambda!398613) _$13!4352)))

(declare-fun b_lambda!261303 () Bool)

(assert (=> (not b_lambda!261303) (not d!2172973)))

(declare-fun bs!1860430 () Bool)

(assert (= bs!1860430 d!2172973))

(assert (=> bs!1860430 m!7664364))

(assert (=> bs!1860430 m!7664534))

(assert (=> d!2172857 d!2172973))

(declare-fun b!6978826 () Bool)

(declare-fun e!4194304 () List!67032)

(assert (=> b!6978826 (= e!4194304 (Cons!66908 (h!73356 (t!380775 (exprs!6658 lt!2480813))) (++!15107 (t!380775 (t!380775 (exprs!6658 lt!2480813))) (exprs!6658 ct2!306))))))

(declare-fun b!6978825 () Bool)

(assert (=> b!6978825 (= e!4194304 (exprs!6658 ct2!306))))

(declare-fun b!6978827 () Bool)

(declare-fun res!2845782 () Bool)

(declare-fun e!4194303 () Bool)

(assert (=> b!6978827 (=> (not res!2845782) (not e!4194303))))

(declare-fun lt!2480921 () List!67032)

(assert (=> b!6978827 (= res!2845782 (= (size!40865 lt!2480921) (+ (size!40865 (t!380775 (exprs!6658 lt!2480813))) (size!40865 (exprs!6658 ct2!306)))))))

(declare-fun d!2172975 () Bool)

(assert (=> d!2172975 e!4194303))

(declare-fun res!2845781 () Bool)

(assert (=> d!2172975 (=> (not res!2845781) (not e!4194303))))

(assert (=> d!2172975 (= res!2845781 (= (content!13181 lt!2480921) (set.union (content!13181 (t!380775 (exprs!6658 lt!2480813))) (content!13181 (exprs!6658 ct2!306)))))))

(assert (=> d!2172975 (= lt!2480921 e!4194304)))

(declare-fun c!1293564 () Bool)

(assert (=> d!2172975 (= c!1293564 (is-Nil!66908 (t!380775 (exprs!6658 lt!2480813))))))

(assert (=> d!2172975 (= (++!15107 (t!380775 (exprs!6658 lt!2480813)) (exprs!6658 ct2!306)) lt!2480921)))

(declare-fun b!6978828 () Bool)

(assert (=> b!6978828 (= e!4194303 (or (not (= (exprs!6658 ct2!306) Nil!66908)) (= lt!2480921 (t!380775 (exprs!6658 lt!2480813)))))))

(assert (= (and d!2172975 c!1293564) b!6978825))

(assert (= (and d!2172975 (not c!1293564)) b!6978826))

(assert (= (and d!2172975 res!2845781) b!6978827))

(assert (= (and b!6978827 res!2845782) b!6978828))

(declare-fun m!7664764 () Bool)

(assert (=> b!6978826 m!7664764))

(declare-fun m!7664766 () Bool)

(assert (=> b!6978827 m!7664766))

(assert (=> b!6978827 m!7664656))

(assert (=> b!6978827 m!7664440))

(declare-fun m!7664768 () Bool)

(assert (=> d!2172975 m!7664768))

(declare-fun m!7664770 () Bool)

(assert (=> d!2172975 m!7664770))

(assert (=> d!2172975 m!7664446))

(assert (=> b!6978570 d!2172975))

(declare-fun call!633280 () (Set Context!12316))

(declare-fun b!6978829 () Bool)

(declare-fun e!4194307 () (Set Context!12316))

(assert (=> b!6978829 (= e!4194307 (set.union call!633280 (derivationStepZipperUp!1812 (Context!12317 (t!380775 (exprs!6658 (Context!12317 (t!380775 (exprs!6658 lt!2480824)))))) (h!73355 s!7408))))))

(declare-fun bm!633275 () Bool)

(assert (=> bm!633275 (= call!633280 (derivationStepZipperDown!1882 (h!73356 (exprs!6658 (Context!12317 (t!380775 (exprs!6658 lt!2480824))))) (Context!12317 (t!380775 (exprs!6658 (Context!12317 (t!380775 (exprs!6658 lt!2480824)))))) (h!73355 s!7408)))))

(declare-fun b!6978831 () Bool)

(declare-fun e!4194305 () (Set Context!12316))

(assert (=> b!6978831 (= e!4194305 call!633280)))

(declare-fun b!6978832 () Bool)

(declare-fun e!4194306 () Bool)

(assert (=> b!6978832 (= e!4194306 (nullable!6922 (h!73356 (exprs!6658 (Context!12317 (t!380775 (exprs!6658 lt!2480824)))))))))

(declare-fun b!6978833 () Bool)

(assert (=> b!6978833 (= e!4194307 e!4194305)))

(declare-fun c!1293566 () Bool)

(assert (=> b!6978833 (= c!1293566 (is-Cons!66908 (exprs!6658 (Context!12317 (t!380775 (exprs!6658 lt!2480824))))))))

(declare-fun b!6978830 () Bool)

(assert (=> b!6978830 (= e!4194305 (as set.empty (Set Context!12316)))))

(declare-fun d!2172977 () Bool)

(declare-fun c!1293565 () Bool)

(assert (=> d!2172977 (= c!1293565 e!4194306)))

(declare-fun res!2845783 () Bool)

(assert (=> d!2172977 (=> (not res!2845783) (not e!4194306))))

(assert (=> d!2172977 (= res!2845783 (is-Cons!66908 (exprs!6658 (Context!12317 (t!380775 (exprs!6658 lt!2480824))))))))

(assert (=> d!2172977 (= (derivationStepZipperUp!1812 (Context!12317 (t!380775 (exprs!6658 lt!2480824))) (h!73355 s!7408)) e!4194307)))

(assert (= (and d!2172977 res!2845783) b!6978832))

(assert (= (and d!2172977 c!1293565) b!6978829))

(assert (= (and d!2172977 (not c!1293565)) b!6978833))

(assert (= (and b!6978833 c!1293566) b!6978831))

(assert (= (and b!6978833 (not c!1293566)) b!6978830))

(assert (= (or b!6978829 b!6978831) bm!633275))

(declare-fun m!7664772 () Bool)

(assert (=> b!6978829 m!7664772))

(declare-fun m!7664774 () Bool)

(assert (=> bm!633275 m!7664774))

(declare-fun m!7664776 () Bool)

(assert (=> b!6978832 m!7664776))

(assert (=> b!6978609 d!2172977))

(declare-fun d!2172979 () Bool)

(declare-fun res!2845784 () Bool)

(declare-fun e!4194308 () Bool)

(assert (=> d!2172979 (=> res!2845784 e!4194308)))

(assert (=> d!2172979 (= res!2845784 (is-Nil!66908 (exprs!6658 setElem!47446)))))

(assert (=> d!2172979 (= (forall!16039 (exprs!6658 setElem!47446) lambda!398638) e!4194308)))

(declare-fun b!6978834 () Bool)

(declare-fun e!4194309 () Bool)

(assert (=> b!6978834 (= e!4194308 e!4194309)))

(declare-fun res!2845785 () Bool)

(assert (=> b!6978834 (=> (not res!2845785) (not e!4194309))))

(assert (=> b!6978834 (= res!2845785 (dynLambda!26705 lambda!398638 (h!73356 (exprs!6658 setElem!47446))))))

(declare-fun b!6978835 () Bool)

(assert (=> b!6978835 (= e!4194309 (forall!16039 (t!380775 (exprs!6658 setElem!47446)) lambda!398638))))

(assert (= (and d!2172979 (not res!2845784)) b!6978834))

(assert (= (and b!6978834 res!2845785) b!6978835))

(declare-fun b_lambda!261305 () Bool)

(assert (=> (not b_lambda!261305) (not b!6978834)))

(declare-fun m!7664778 () Bool)

(assert (=> b!6978834 m!7664778))

(declare-fun m!7664780 () Bool)

(assert (=> b!6978835 m!7664780))

(assert (=> d!2172823 d!2172979))

(declare-fun d!2172981 () Bool)

(declare-fun res!2845786 () Bool)

(declare-fun e!4194310 () Bool)

(assert (=> d!2172981 (=> res!2845786 e!4194310)))

(assert (=> d!2172981 (= res!2845786 (is-Nil!66908 (t!380775 (tail!13128 (exprs!6658 lt!2480813)))))))

(assert (=> d!2172981 (= (forall!16039 (t!380775 (tail!13128 (exprs!6658 lt!2480813))) lambda!398612) e!4194310)))

(declare-fun b!6978836 () Bool)

(declare-fun e!4194311 () Bool)

(assert (=> b!6978836 (= e!4194310 e!4194311)))

(declare-fun res!2845787 () Bool)

(assert (=> b!6978836 (=> (not res!2845787) (not e!4194311))))

(assert (=> b!6978836 (= res!2845787 (dynLambda!26705 lambda!398612 (h!73356 (t!380775 (tail!13128 (exprs!6658 lt!2480813))))))))

(declare-fun b!6978837 () Bool)

(assert (=> b!6978837 (= e!4194311 (forall!16039 (t!380775 (t!380775 (tail!13128 (exprs!6658 lt!2480813)))) lambda!398612))))

(assert (= (and d!2172981 (not res!2845786)) b!6978836))

(assert (= (and b!6978836 res!2845787) b!6978837))

(declare-fun b_lambda!261307 () Bool)

(assert (=> (not b_lambda!261307) (not b!6978836)))

(declare-fun m!7664782 () Bool)

(assert (=> b!6978836 m!7664782))

(declare-fun m!7664784 () Bool)

(assert (=> b!6978837 m!7664784))

(assert (=> b!6978598 d!2172981))

(assert (=> bs!1860376 d!2172851))

(declare-fun d!2172983 () Bool)

(declare-fun res!2845792 () Bool)

(declare-fun e!4194316 () Bool)

(assert (=> d!2172983 (=> res!2845792 e!4194316)))

(assert (=> d!2172983 (= res!2845792 (is-Nil!66909 lt!2480821))))

(assert (=> d!2172983 (= (forall!16041 lt!2480821 lambda!398641) e!4194316)))

(declare-fun b!6978842 () Bool)

(declare-fun e!4194317 () Bool)

(assert (=> b!6978842 (= e!4194316 e!4194317)))

(declare-fun res!2845793 () Bool)

(assert (=> b!6978842 (=> (not res!2845793) (not e!4194317))))

(assert (=> b!6978842 (= res!2845793 (dynLambda!26703 lambda!398641 (h!73357 lt!2480821)))))

(declare-fun b!6978843 () Bool)

(assert (=> b!6978843 (= e!4194317 (forall!16041 (t!380776 lt!2480821) lambda!398641))))

(assert (= (and d!2172983 (not res!2845792)) b!6978842))

(assert (= (and b!6978842 res!2845793) b!6978843))

(declare-fun b_lambda!261309 () Bool)

(assert (=> (not b_lambda!261309) (not b!6978842)))

(declare-fun m!7664786 () Bool)

(assert (=> b!6978842 m!7664786))

(declare-fun m!7664788 () Bool)

(assert (=> b!6978843 m!7664788))

(assert (=> d!2172829 d!2172983))

(declare-fun d!2172985 () Bool)

(assert (=> d!2172985 (= (flatMap!2148 lt!2480818 lambda!398656) (choose!51977 lt!2480818 lambda!398656))))

(declare-fun bs!1860431 () Bool)

(assert (= bs!1860431 d!2172985))

(declare-fun m!7664790 () Bool)

(assert (=> bs!1860431 m!7664790))

(assert (=> d!2172859 d!2172985))

(assert (=> d!2172835 d!2172953))

(declare-fun bs!1860432 () Bool)

(declare-fun d!2172987 () Bool)

(assert (= bs!1860432 (and d!2172987 b!6978505)))

(declare-fun lambda!398682 () Int)

(assert (=> bs!1860432 (not (= lambda!398682 lambda!398610))))

(declare-fun bs!1860433 () Bool)

(assert (= bs!1860433 (and d!2172987 d!2172831)))

(assert (=> bs!1860433 (not (= lambda!398682 lambda!398644))))

(declare-fun bs!1860434 () Bool)

(assert (= bs!1860434 (and d!2172987 d!2172957)))

(assert (=> bs!1860434 (not (= lambda!398682 lambda!398679))))

(declare-fun bs!1860435 () Bool)

(assert (= bs!1860435 (and d!2172987 d!2172829)))

(assert (=> bs!1860435 (not (= lambda!398682 lambda!398641))))

(declare-fun bs!1860436 () Bool)

(assert (= bs!1860436 (and d!2172987 d!2172951)))

(assert (=> bs!1860436 (= lambda!398682 lambda!398675)))

(declare-fun bs!1860437 () Bool)

(assert (= bs!1860437 (and d!2172987 d!2172955)))

(assert (=> bs!1860437 (not (= lambda!398682 lambda!398676))))

(assert (=> d!2172987 (= (nullableZipper!2393 lt!2480823) (exists!2912 lt!2480823 lambda!398682))))

(declare-fun bs!1860438 () Bool)

(assert (= bs!1860438 d!2172987))

(declare-fun m!7664792 () Bool)

(assert (=> bs!1860438 m!7664792))

(assert (=> b!6978591 d!2172987))

(declare-fun d!2172989 () Bool)

(assert (=> d!2172989 true))

(declare-fun setRes!47458 () Bool)

(assert (=> d!2172989 setRes!47458))

(declare-fun condSetEmpty!47458 () Bool)

(declare-fun res!2845796 () (Set Context!12316))

(assert (=> d!2172989 (= condSetEmpty!47458 (= res!2845796 (as set.empty (Set Context!12316))))))

(assert (=> d!2172989 (= (choose!51977 lt!2480818 lambda!398613) res!2845796)))

(declare-fun setIsEmpty!47458 () Bool)

(assert (=> setIsEmpty!47458 setRes!47458))

(declare-fun setNonEmpty!47458 () Bool)

(declare-fun e!4194320 () Bool)

(declare-fun tp!1927792 () Bool)

(declare-fun setElem!47458 () Context!12316)

(assert (=> setNonEmpty!47458 (= setRes!47458 (and tp!1927792 (inv!85765 setElem!47458) e!4194320))))

(declare-fun setRest!47458 () (Set Context!12316))

(assert (=> setNonEmpty!47458 (= res!2845796 (set.union (set.insert setElem!47458 (as set.empty (Set Context!12316))) setRest!47458))))

(declare-fun b!6978846 () Bool)

(declare-fun tp!1927793 () Bool)

(assert (=> b!6978846 (= e!4194320 tp!1927793)))

(assert (= (and d!2172989 condSetEmpty!47458) setIsEmpty!47458))

(assert (= (and d!2172989 (not condSetEmpty!47458)) setNonEmpty!47458))

(assert (= setNonEmpty!47458 b!6978846))

(declare-fun m!7664794 () Bool)

(assert (=> setNonEmpty!47458 m!7664794))

(assert (=> d!2172855 d!2172989))

(declare-fun b!6978859 () Bool)

(declare-fun lt!2480927 () Unit!160973)

(declare-fun Unit!160977 () Unit!160973)

(assert (=> b!6978859 (= lt!2480927 Unit!160977)))

(assert (=> b!6978859 false))

(declare-fun e!4194329 () Context!12316)

(declare-fun head!14064 (List!67033) Context!12316)

(assert (=> b!6978859 (= e!4194329 (head!14064 (toList!10522 lt!2480823)))))

(declare-fun b!6978860 () Bool)

(declare-fun e!4194332 () Bool)

(assert (=> b!6978860 (= e!4194332 (dynLambda!26703 lambda!398610 (h!73357 (toList!10522 lt!2480823))))))

(declare-fun d!2172991 () Bool)

(declare-fun e!4194331 () Bool)

(assert (=> d!2172991 e!4194331))

(declare-fun res!2845802 () Bool)

(assert (=> d!2172991 (=> (not res!2845802) (not e!4194331))))

(declare-fun lt!2480926 () Context!12316)

(assert (=> d!2172991 (= res!2845802 (dynLambda!26703 lambda!398610 lt!2480926))))

(declare-fun e!4194330 () Context!12316)

(assert (=> d!2172991 (= lt!2480926 e!4194330)))

(declare-fun c!1293572 () Bool)

(assert (=> d!2172991 (= c!1293572 e!4194332)))

(declare-fun res!2845801 () Bool)

(assert (=> d!2172991 (=> (not res!2845801) (not e!4194332))))

(assert (=> d!2172991 (= res!2845801 (is-Cons!66909 (toList!10522 lt!2480823)))))

(assert (=> d!2172991 (exists!2910 (toList!10522 lt!2480823) lambda!398610)))

(assert (=> d!2172991 (= (getWitness!1023 (toList!10522 lt!2480823) lambda!398610) lt!2480926)))

(declare-fun b!6978861 () Bool)

(assert (=> b!6978861 (= e!4194329 (getWitness!1023 (t!380776 (toList!10522 lt!2480823)) lambda!398610))))

(declare-fun b!6978862 () Bool)

(declare-fun contains!20405 (List!67033 Context!12316) Bool)

(assert (=> b!6978862 (= e!4194331 (contains!20405 (toList!10522 lt!2480823) lt!2480926))))

(declare-fun b!6978863 () Bool)

(assert (=> b!6978863 (= e!4194330 e!4194329)))

(declare-fun c!1293571 () Bool)

(assert (=> b!6978863 (= c!1293571 (is-Cons!66909 (toList!10522 lt!2480823)))))

(declare-fun b!6978864 () Bool)

(assert (=> b!6978864 (= e!4194330 (h!73357 (toList!10522 lt!2480823)))))

(assert (= (and d!2172991 res!2845801) b!6978860))

(assert (= (and d!2172991 c!1293572) b!6978864))

(assert (= (and d!2172991 (not c!1293572)) b!6978863))

(assert (= (and b!6978863 c!1293571) b!6978861))

(assert (= (and b!6978863 (not c!1293571)) b!6978859))

(assert (= (and d!2172991 res!2845802) b!6978862))

(declare-fun b_lambda!261311 () Bool)

(assert (=> (not b_lambda!261311) (not b!6978860)))

(declare-fun b_lambda!261313 () Bool)

(assert (=> (not b_lambda!261313) (not d!2172991)))

(assert (=> b!6978859 m!7664370))

(declare-fun m!7664796 () Bool)

(assert (=> b!6978859 m!7664796))

(declare-fun m!7664798 () Bool)

(assert (=> d!2172991 m!7664798))

(assert (=> d!2172991 m!7664370))

(declare-fun m!7664800 () Bool)

(assert (=> d!2172991 m!7664800))

(assert (=> b!6978862 m!7664370))

(declare-fun m!7664802 () Bool)

(assert (=> b!6978862 m!7664802))

(declare-fun m!7664804 () Bool)

(assert (=> b!6978860 m!7664804))

(declare-fun m!7664806 () Bool)

(assert (=> b!6978861 m!7664806))

(assert (=> d!2172825 d!2172991))

(assert (=> d!2172825 d!2172833))

(declare-fun d!2172993 () Bool)

(declare-fun lt!2480930 () Bool)

(assert (=> d!2172993 (= lt!2480930 (exists!2910 (toList!10522 lt!2480823) lambda!398610))))

(declare-fun choose!51986 ((Set Context!12316) Int) Bool)

(assert (=> d!2172993 (= lt!2480930 (choose!51986 lt!2480823 lambda!398610))))

(assert (=> d!2172993 (= (exists!2912 lt!2480823 lambda!398610) lt!2480930)))

(declare-fun bs!1860439 () Bool)

(assert (= bs!1860439 d!2172993))

(assert (=> bs!1860439 m!7664370))

(assert (=> bs!1860439 m!7664370))

(assert (=> bs!1860439 m!7664800))

(declare-fun m!7664808 () Bool)

(assert (=> bs!1860439 m!7664808))

(assert (=> d!2172825 d!2172993))

(declare-fun d!2172995 () Bool)

(declare-fun c!1293573 () Bool)

(assert (=> d!2172995 (= c!1293573 (isEmpty!39054 s!7408))))

(declare-fun e!4194333 () Bool)

(assert (=> d!2172995 (= (matchZipper!2702 (set.insert lt!2480877 (as set.empty (Set Context!12316))) s!7408) e!4194333)))

(declare-fun b!6978865 () Bool)

(assert (=> b!6978865 (= e!4194333 (nullableZipper!2393 (set.insert lt!2480877 (as set.empty (Set Context!12316)))))))

(declare-fun b!6978866 () Bool)

(assert (=> b!6978866 (= e!4194333 (matchZipper!2702 (derivationStepZipper!2642 (set.insert lt!2480877 (as set.empty (Set Context!12316))) (head!14062 s!7408)) (tail!13130 s!7408)))))

(assert (= (and d!2172995 c!1293573) b!6978865))

(assert (= (and d!2172995 (not c!1293573)) b!6978866))

(assert (=> d!2172995 m!7664474))

(assert (=> b!6978865 m!7664554))

(declare-fun m!7664810 () Bool)

(assert (=> b!6978865 m!7664810))

(assert (=> b!6978866 m!7664478))

(assert (=> b!6978866 m!7664554))

(assert (=> b!6978866 m!7664478))

(declare-fun m!7664812 () Bool)

(assert (=> b!6978866 m!7664812))

(assert (=> b!6978866 m!7664482))

(assert (=> b!6978866 m!7664812))

(assert (=> b!6978866 m!7664482))

(declare-fun m!7664814 () Bool)

(assert (=> b!6978866 m!7664814))

(assert (=> bs!1860377 d!2172995))

(declare-fun d!2172997 () Bool)

(declare-fun res!2845807 () Bool)

(declare-fun e!4194338 () Bool)

(assert (=> d!2172997 (=> res!2845807 e!4194338)))

(assert (=> d!2172997 (= res!2845807 (is-Nil!66909 lt!2480883))))

(assert (=> d!2172997 (= (noDuplicate!2483 lt!2480883) e!4194338)))

(declare-fun b!6978871 () Bool)

(declare-fun e!4194339 () Bool)

(assert (=> b!6978871 (= e!4194338 e!4194339)))

(declare-fun res!2845808 () Bool)

(assert (=> b!6978871 (=> (not res!2845808) (not e!4194339))))

(assert (=> b!6978871 (= res!2845808 (not (contains!20405 (t!380776 lt!2480883) (h!73357 lt!2480883))))))

(declare-fun b!6978872 () Bool)

(assert (=> b!6978872 (= e!4194339 (noDuplicate!2483 (t!380776 lt!2480883)))))

(assert (= (and d!2172997 (not res!2845807)) b!6978871))

(assert (= (and b!6978871 res!2845808) b!6978872))

(declare-fun m!7664816 () Bool)

(assert (=> b!6978871 m!7664816))

(declare-fun m!7664818 () Bool)

(assert (=> b!6978872 m!7664818))

(assert (=> d!2172833 d!2172997))

(declare-fun d!2172999 () Bool)

(declare-fun e!4194347 () Bool)

(assert (=> d!2172999 e!4194347))

(declare-fun res!2845814 () Bool)

(assert (=> d!2172999 (=> (not res!2845814) (not e!4194347))))

(declare-fun res!2845813 () List!67033)

(assert (=> d!2172999 (= res!2845814 (noDuplicate!2483 res!2845813))))

(declare-fun e!4194348 () Bool)

(assert (=> d!2172999 e!4194348))

(assert (=> d!2172999 (= (choose!51976 lt!2480823) res!2845813)))

(declare-fun b!6978880 () Bool)

(declare-fun e!4194346 () Bool)

(declare-fun tp!1927799 () Bool)

(assert (=> b!6978880 (= e!4194346 tp!1927799)))

(declare-fun tp!1927798 () Bool)

(declare-fun b!6978879 () Bool)

(assert (=> b!6978879 (= e!4194348 (and (inv!85765 (h!73357 res!2845813)) e!4194346 tp!1927798))))

(declare-fun b!6978881 () Bool)

(assert (=> b!6978881 (= e!4194347 (= (content!13182 res!2845813) lt!2480823))))

(assert (= b!6978879 b!6978880))

(assert (= (and d!2172999 (is-Cons!66909 res!2845813)) b!6978879))

(assert (= (and d!2172999 res!2845814) b!6978881))

(declare-fun m!7664820 () Bool)

(assert (=> d!2172999 m!7664820))

(declare-fun m!7664822 () Bool)

(assert (=> b!6978879 m!7664822))

(declare-fun m!7664824 () Bool)

(assert (=> b!6978881 m!7664824))

(assert (=> d!2172833 d!2172999))

(declare-fun d!2173001 () Bool)

(declare-fun c!1293576 () Bool)

(assert (=> d!2173001 (= c!1293576 (is-Nil!66908 lt!2480868))))

(declare-fun e!4194351 () (Set Regex!17162))

(assert (=> d!2173001 (= (content!13181 lt!2480868) e!4194351)))

(declare-fun b!6978886 () Bool)

(assert (=> b!6978886 (= e!4194351 (as set.empty (Set Regex!17162)))))

(declare-fun b!6978887 () Bool)

(assert (=> b!6978887 (= e!4194351 (set.union (set.insert (h!73356 lt!2480868) (as set.empty (Set Regex!17162))) (content!13181 (t!380775 lt!2480868))))))

(assert (= (and d!2173001 c!1293576) b!6978886))

(assert (= (and d!2173001 (not c!1293576)) b!6978887))

(declare-fun m!7664826 () Bool)

(assert (=> b!6978887 m!7664826))

(declare-fun m!7664828 () Bool)

(assert (=> b!6978887 m!7664828))

(assert (=> d!2172817 d!2173001))

(declare-fun d!2173003 () Bool)

(declare-fun c!1293577 () Bool)

(assert (=> d!2173003 (= c!1293577 (is-Nil!66908 (exprs!6658 lt!2480813)))))

(declare-fun e!4194352 () (Set Regex!17162))

(assert (=> d!2173003 (= (content!13181 (exprs!6658 lt!2480813)) e!4194352)))

(declare-fun b!6978888 () Bool)

(assert (=> b!6978888 (= e!4194352 (as set.empty (Set Regex!17162)))))

(declare-fun b!6978889 () Bool)

(assert (=> b!6978889 (= e!4194352 (set.union (set.insert (h!73356 (exprs!6658 lt!2480813)) (as set.empty (Set Regex!17162))) (content!13181 (t!380775 (exprs!6658 lt!2480813)))))))

(assert (= (and d!2173003 c!1293577) b!6978888))

(assert (= (and d!2173003 (not c!1293577)) b!6978889))

(declare-fun m!7664830 () Bool)

(assert (=> b!6978889 m!7664830))

(assert (=> b!6978889 m!7664770))

(assert (=> d!2172817 d!2173003))

(declare-fun d!2173005 () Bool)

(declare-fun c!1293578 () Bool)

(assert (=> d!2173005 (= c!1293578 (is-Nil!66908 (exprs!6658 ct2!306)))))

(declare-fun e!4194353 () (Set Regex!17162))

(assert (=> d!2173005 (= (content!13181 (exprs!6658 ct2!306)) e!4194353)))

(declare-fun b!6978890 () Bool)

(assert (=> b!6978890 (= e!4194353 (as set.empty (Set Regex!17162)))))

(declare-fun b!6978891 () Bool)

(assert (=> b!6978891 (= e!4194353 (set.union (set.insert (h!73356 (exprs!6658 ct2!306)) (as set.empty (Set Regex!17162))) (content!13181 (t!380775 (exprs!6658 ct2!306)))))))

(assert (= (and d!2173005 c!1293578) b!6978890))

(assert (= (and d!2173005 (not c!1293578)) b!6978891))

(declare-fun m!7664832 () Bool)

(assert (=> b!6978891 m!7664832))

(declare-fun m!7664834 () Bool)

(assert (=> b!6978891 m!7664834))

(assert (=> d!2172817 d!2173005))

(declare-fun b!6978892 () Bool)

(declare-fun e!4194354 () Bool)

(declare-fun tp!1927800 () Bool)

(assert (=> b!6978892 (= e!4194354 (and tp_is_empty!43549 tp!1927800))))

(assert (=> b!6978637 (= tp!1927767 e!4194354)))

(assert (= (and b!6978637 (is-Cons!66907 (t!380774 (t!380774 s!7408)))) b!6978892))

(declare-fun b!6978893 () Bool)

(declare-fun e!4194355 () Bool)

(declare-fun tp!1927801 () Bool)

(declare-fun tp!1927802 () Bool)

(assert (=> b!6978893 (= e!4194355 (and tp!1927801 tp!1927802))))

(assert (=> b!6978626 (= tp!1927756 e!4194355)))

(assert (= (and b!6978626 (is-Cons!66908 (exprs!6658 setElem!47452))) b!6978893))

(declare-fun condSetEmpty!47459 () Bool)

(assert (=> setNonEmpty!47452 (= condSetEmpty!47459 (= setRest!47452 (as set.empty (Set Context!12316))))))

(declare-fun setRes!47459 () Bool)

(assert (=> setNonEmpty!47452 (= tp!1927755 setRes!47459)))

(declare-fun setIsEmpty!47459 () Bool)

(assert (=> setIsEmpty!47459 setRes!47459))

(declare-fun setElem!47459 () Context!12316)

(declare-fun tp!1927803 () Bool)

(declare-fun e!4194356 () Bool)

(declare-fun setNonEmpty!47459 () Bool)

(assert (=> setNonEmpty!47459 (= setRes!47459 (and tp!1927803 (inv!85765 setElem!47459) e!4194356))))

(declare-fun setRest!47459 () (Set Context!12316))

(assert (=> setNonEmpty!47459 (= setRest!47452 (set.union (set.insert setElem!47459 (as set.empty (Set Context!12316))) setRest!47459))))

(declare-fun b!6978894 () Bool)

(declare-fun tp!1927804 () Bool)

(assert (=> b!6978894 (= e!4194356 tp!1927804)))

(assert (= (and setNonEmpty!47452 condSetEmpty!47459) setIsEmpty!47459))

(assert (= (and setNonEmpty!47452 (not condSetEmpty!47459)) setNonEmpty!47459))

(assert (= setNonEmpty!47459 b!6978894))

(declare-fun m!7664836 () Bool)

(assert (=> setNonEmpty!47459 m!7664836))

(declare-fun b!6978906 () Bool)

(declare-fun e!4194359 () Bool)

(declare-fun tp!1927816 () Bool)

(declare-fun tp!1927815 () Bool)

(assert (=> b!6978906 (= e!4194359 (and tp!1927816 tp!1927815))))

(declare-fun b!6978905 () Bool)

(assert (=> b!6978905 (= e!4194359 tp_is_empty!43549)))

(declare-fun b!6978908 () Bool)

(declare-fun tp!1927818 () Bool)

(declare-fun tp!1927817 () Bool)

(assert (=> b!6978908 (= e!4194359 (and tp!1927818 tp!1927817))))

(assert (=> b!6978631 (= tp!1927761 e!4194359)))

(declare-fun b!6978907 () Bool)

(declare-fun tp!1927819 () Bool)

(assert (=> b!6978907 (= e!4194359 tp!1927819)))

(assert (= (and b!6978631 (is-ElementMatch!17162 (h!73356 (exprs!6658 ct2!306)))) b!6978905))

(assert (= (and b!6978631 (is-Concat!26007 (h!73356 (exprs!6658 ct2!306)))) b!6978906))

(assert (= (and b!6978631 (is-Star!17162 (h!73356 (exprs!6658 ct2!306)))) b!6978907))

(assert (= (and b!6978631 (is-Union!17162 (h!73356 (exprs!6658 ct2!306)))) b!6978908))

(declare-fun b!6978909 () Bool)

(declare-fun e!4194360 () Bool)

(declare-fun tp!1927820 () Bool)

(declare-fun tp!1927821 () Bool)

(assert (=> b!6978909 (= e!4194360 (and tp!1927820 tp!1927821))))

(assert (=> b!6978631 (= tp!1927762 e!4194360)))

(assert (= (and b!6978631 (is-Cons!66908 (t!380775 (exprs!6658 ct2!306)))) b!6978909))

(declare-fun b!6978911 () Bool)

(declare-fun e!4194361 () Bool)

(declare-fun tp!1927823 () Bool)

(declare-fun tp!1927822 () Bool)

(assert (=> b!6978911 (= e!4194361 (and tp!1927823 tp!1927822))))

(declare-fun b!6978910 () Bool)

(assert (=> b!6978910 (= e!4194361 tp_is_empty!43549)))

(declare-fun b!6978913 () Bool)

(declare-fun tp!1927825 () Bool)

(declare-fun tp!1927824 () Bool)

(assert (=> b!6978913 (= e!4194361 (and tp!1927825 tp!1927824))))

(assert (=> b!6978632 (= tp!1927763 e!4194361)))

(declare-fun b!6978912 () Bool)

(declare-fun tp!1927826 () Bool)

(assert (=> b!6978912 (= e!4194361 tp!1927826)))

(assert (= (and b!6978632 (is-ElementMatch!17162 (h!73356 (exprs!6658 setElem!47446)))) b!6978910))

(assert (= (and b!6978632 (is-Concat!26007 (h!73356 (exprs!6658 setElem!47446)))) b!6978911))

(assert (= (and b!6978632 (is-Star!17162 (h!73356 (exprs!6658 setElem!47446)))) b!6978912))

(assert (= (and b!6978632 (is-Union!17162 (h!73356 (exprs!6658 setElem!47446)))) b!6978913))

(declare-fun b!6978914 () Bool)

(declare-fun e!4194362 () Bool)

(declare-fun tp!1927827 () Bool)

(declare-fun tp!1927828 () Bool)

(assert (=> b!6978914 (= e!4194362 (and tp!1927827 tp!1927828))))

(assert (=> b!6978632 (= tp!1927764 e!4194362)))

(assert (= (and b!6978632 (is-Cons!66908 (t!380775 (exprs!6658 setElem!47446)))) b!6978914))

(declare-fun b_lambda!261315 () Bool)

(assert (= b_lambda!261313 (or b!6978505 b_lambda!261315)))

(declare-fun bs!1860440 () Bool)

(declare-fun d!2173007 () Bool)

(assert (= bs!1860440 (and d!2173007 b!6978505)))

(assert (=> bs!1860440 (= (dynLambda!26703 lambda!398610 lt!2480926) (matchZipper!2702 (set.insert lt!2480926 (as set.empty (Set Context!12316))) s!7408))))

(declare-fun m!7664838 () Bool)

(assert (=> bs!1860440 m!7664838))

(assert (=> bs!1860440 m!7664838))

(declare-fun m!7664840 () Bool)

(assert (=> bs!1860440 m!7664840))

(assert (=> d!2172991 d!2173007))

(declare-fun b_lambda!261317 () Bool)

(assert (= b_lambda!261301 (or b!6978504 b_lambda!261317)))

(declare-fun bs!1860441 () Bool)

(declare-fun d!2173009 () Bool)

(assert (= bs!1860441 (and d!2173009 b!6978504)))

(assert (=> bs!1860441 (= (dynLambda!26705 lambda!398612 (h!73356 (exprs!6658 lt!2480813))) (validRegex!8829 (h!73356 (exprs!6658 lt!2480813))))))

(declare-fun m!7664842 () Bool)

(assert (=> bs!1860441 m!7664842))

(assert (=> b!6978759 d!2173009))

(declare-fun b_lambda!261319 () Bool)

(assert (= b_lambda!261311 (or b!6978505 b_lambda!261319)))

(declare-fun bs!1860442 () Bool)

(declare-fun d!2173011 () Bool)

(assert (= bs!1860442 (and d!2173011 b!6978505)))

(assert (=> bs!1860442 (= (dynLambda!26703 lambda!398610 (h!73357 (toList!10522 lt!2480823))) (matchZipper!2702 (set.insert (h!73357 (toList!10522 lt!2480823)) (as set.empty (Set Context!12316))) s!7408))))

(declare-fun m!7664844 () Bool)

(assert (=> bs!1860442 m!7664844))

(assert (=> bs!1860442 m!7664844))

(declare-fun m!7664846 () Bool)

(assert (=> bs!1860442 m!7664846))

(assert (=> b!6978860 d!2173011))

(declare-fun b_lambda!261321 () Bool)

(assert (= b_lambda!261305 (or d!2172823 b_lambda!261321)))

(declare-fun bs!1860443 () Bool)

(declare-fun d!2173013 () Bool)

(assert (= bs!1860443 (and d!2173013 d!2172823)))

(assert (=> bs!1860443 (= (dynLambda!26705 lambda!398638 (h!73356 (exprs!6658 setElem!47446))) (validRegex!8829 (h!73356 (exprs!6658 setElem!47446))))))

(declare-fun m!7664848 () Bool)

(assert (=> bs!1860443 m!7664848))

(assert (=> b!6978834 d!2173013))

(declare-fun b_lambda!261323 () Bool)

(assert (= b_lambda!261307 (or b!6978504 b_lambda!261323)))

(declare-fun bs!1860444 () Bool)

(declare-fun d!2173015 () Bool)

(assert (= bs!1860444 (and d!2173015 b!6978504)))

(assert (=> bs!1860444 (= (dynLambda!26705 lambda!398612 (h!73356 (t!380775 (tail!13128 (exprs!6658 lt!2480813))))) (validRegex!8829 (h!73356 (t!380775 (tail!13128 (exprs!6658 lt!2480813))))))))

(declare-fun m!7664850 () Bool)

(assert (=> bs!1860444 m!7664850))

(assert (=> b!6978836 d!2173015))

(declare-fun b_lambda!261325 () Bool)

(assert (= b_lambda!261297 (or b!6978504 b_lambda!261325)))

(declare-fun bs!1860445 () Bool)

(declare-fun d!2173017 () Bool)

(assert (= bs!1860445 (and d!2173017 b!6978504)))

(declare-fun lt!2480931 () Unit!160973)

(assert (=> bs!1860445 (= lt!2480931 (lemmaConcatPreservesForall!498 (exprs!6658 a!12579) (exprs!6658 ct2!306) lambda!398612))))

(assert (=> bs!1860445 (= (dynLambda!26702 lambda!398611 a!12579) (Context!12317 (++!15107 (exprs!6658 a!12579) (exprs!6658 ct2!306))))))

(declare-fun m!7664852 () Bool)

(assert (=> bs!1860445 m!7664852))

(declare-fun m!7664854 () Bool)

(assert (=> bs!1860445 m!7664854))

(assert (=> d!2172937 d!2173017))

(declare-fun b_lambda!261327 () Bool)

(assert (= b_lambda!261309 (or d!2172829 b_lambda!261327)))

(declare-fun bs!1860446 () Bool)

(declare-fun d!2173019 () Bool)

(assert (= bs!1860446 (and d!2173019 d!2172829)))

(assert (=> bs!1860446 (= (dynLambda!26703 lambda!398641 (h!73357 lt!2480821)) (not (dynLambda!26703 lambda!398610 (h!73357 lt!2480821))))))

(declare-fun b_lambda!261335 () Bool)

(assert (=> (not b_lambda!261335) (not bs!1860446)))

(declare-fun m!7664856 () Bool)

(assert (=> bs!1860446 m!7664856))

(assert (=> b!6978842 d!2173019))

(declare-fun b_lambda!261329 () Bool)

(assert (= b_lambda!261299 (or b!6978504 b_lambda!261329)))

(declare-fun bs!1860447 () Bool)

(declare-fun d!2173021 () Bool)

(assert (= bs!1860447 (and d!2173021 b!6978504)))

(assert (=> bs!1860447 (= (dynLambda!26705 lambda!398612 (h!73356 (++!15107 (exprs!6658 lt!2480813) (exprs!6658 ct2!306)))) (validRegex!8829 (h!73356 (++!15107 (exprs!6658 lt!2480813) (exprs!6658 ct2!306)))))))

(declare-fun m!7664858 () Bool)

(assert (=> bs!1860447 m!7664858))

(assert (=> b!6978757 d!2173021))

(declare-fun b_lambda!261331 () Bool)

(assert (= b_lambda!261295 (or d!2172843 b_lambda!261331)))

(declare-fun bs!1860448 () Bool)

(declare-fun d!2173023 () Bool)

(assert (= bs!1860448 (and d!2173023 d!2172843)))

(assert (=> bs!1860448 (= (dynLambda!26705 lambda!398653 (h!73356 (exprs!6658 ct2!306))) (validRegex!8829 (h!73356 (exprs!6658 ct2!306))))))

(declare-fun m!7664860 () Bool)

(assert (=> bs!1860448 m!7664860))

(assert (=> b!6978740 d!2173023))

(declare-fun b_lambda!261333 () Bool)

(assert (= b_lambda!261303 (or b!6978499 b_lambda!261333)))

(assert (=> d!2172973 d!2172865))

(push 1)

(assert (not d!2172947))

(assert (not bm!633248))

(assert (not b!6978908))

(assert (not b!6978862))

(assert (not bm!633270))

(assert (not b!6978879))

(assert (not b_lambda!261331))

(assert (not b_lambda!261323))

(assert (not d!2172965))

(assert (not bs!1860440))

(assert (not b_lambda!261315))

(assert (not b!6978880))

(assert (not b!6978763))

(assert (not b!6978769))

(assert (not bs!1860447))

(assert (not b_lambda!261319))

(assert (not b_lambda!261273))

(assert (not b!6978914))

(assert (not d!2172929))

(assert (not b!6978758))

(assert (not b!6978766))

(assert (not bs!1860442))

(assert (not b!6978843))

(assert (not b_lambda!261333))

(assert (not b!6978872))

(assert (not b!6978893))

(assert (not b!6978907))

(assert (not b!6978712))

(assert (not d!2172935))

(assert (not d!2172993))

(assert (not b!6978749))

(assert (not b!6978835))

(assert (not d!2172937))

(assert (not b!6978889))

(assert (not b!6978748))

(assert (not bm!633256))

(assert (not bs!1860443))

(assert (not b!6978911))

(assert (not setNonEmpty!47459))

(assert (not b!6978892))

(assert (not b!6978741))

(assert (not d!2172951))

(assert (not b!6978859))

(assert (not b!6978737))

(assert (not b!6978906))

(assert (not b!6978865))

(assert (not b_lambda!261325))

(assert (not b!6978755))

(assert (not d!2172959))

(assert (not b!6978768))

(assert (not d!2172925))

(assert (not b!6978866))

(assert (not b!6978894))

(assert (not d!2172957))

(assert (not b_lambda!261271))

(assert (not b!6978871))

(assert (not d!2172985))

(assert (not bm!633255))

(assert (not b!6978881))

(assert (not bm!633273))

(assert (not bm!633275))

(assert (not b!6978827))

(assert (not b!6978832))

(assert (not d!2172927))

(assert (not b!6978829))

(assert (not b!6978837))

(assert (not b!6978846))

(assert (not b_lambda!261275))

(assert (not d!2172995))

(assert (not b_lambda!261327))

(assert (not b!6978861))

(assert (not b!6978710))

(assert (not b!6978815))

(assert tp_is_empty!43549)

(assert (not b_lambda!261277))

(assert (not b!6978765))

(assert (not b!6978912))

(assert (not b!6978708))

(assert (not b!6978762))

(assert (not b!6978770))

(assert (not d!2172999))

(assert (not d!2172963))

(assert (not bs!1860444))

(assert (not bs!1860445))

(assert (not setNonEmpty!47458))

(assert (not bm!633274))

(assert (not d!2172939))

(assert (not d!2172991))

(assert (not b!6978891))

(assert (not b!6978887))

(assert (not b_lambda!261317))

(assert (not b!6978909))

(assert (not b!6978747))

(assert (not d!2172949))

(assert (not d!2172955))

(assert (not bm!633250))

(assert (not b!6978760))

(assert (not b_lambda!261321))

(assert (not d!2172943))

(assert (not bs!1860441))

(assert (not b_lambda!261335))

(assert (not b!6978826))

(assert (not bs!1860448))

(assert (not b_lambda!261329))

(assert (not d!2172987))

(assert (not b!6978913))

(assert (not d!2172973))

(assert (not d!2172971))

(assert (not d!2172975))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

